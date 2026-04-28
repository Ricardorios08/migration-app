VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clspartida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '413C34
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '413C43
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '413C52
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96ECDC
  'Data Table: 413990
  loc_96ECB4: FLdRfVar var_88
  loc_96ECB7: FLdPr Me
  loc_96ECBA: MemLdPr RsFrm
  loc_96ECBD:  = Me.RecordCount
  loc_96ECC2: ILdRf var_88
  loc_96ECC5: LitI4 0
  loc_96ECCA: GtI4
  loc_96ECCB: BranchF loc_96ECD9
  loc_96ECCE: FLdPr Me
  loc_96ECD1: MemLdPr RsFrm
  loc_96ECD4: Me.MoveFirst
  loc_96ECD9: ExitProcHresult
End Sub

Public Sub MoveLast() '96EBD4
  'Data Table: 413990
  loc_96EBAC: FLdRfVar var_88
  loc_96EBAF: FLdPr Me
  loc_96EBB2: MemLdPr RsFrm
  loc_96EBB5:  = Me.RecordCount
  loc_96EBBA: ILdRf var_88
  loc_96EBBD: LitI4 0
  loc_96EBC2: GtI4
  loc_96EBC3: BranchF loc_96EBD1
  loc_96EBC6: FLdPr Me
  loc_96EBC9: MemLdPr RsFrm
  loc_96EBCC: Me.MoveLast
  loc_96EBD1: ExitProcHresult
  loc_96EBD2: GeI2
End Sub

Public Sub MoveNext() '99CD70
  'Data Table: 413990
  loc_99CCF8: FLdRfVar var_86
  loc_99CCFB: FLdPr Me
  loc_99CCFE: MemLdPr RsFrm
  loc_99CD01:  = Me.EOF
  loc_99CD06: FLdI2 var_86
  loc_99CD09: NotI4
  loc_99CD0A: FLdRfVar var_8C
  loc_99CD0D: FLdPr Me
  loc_99CD10: MemLdPr RsFrm
  loc_99CD13:  = Me.RecordCount
  loc_99CD18: ILdRf var_8C
  loc_99CD1B: LitI4 0
  loc_99CD20: GtI4
  loc_99CD21: AndI4
  loc_99CD22: BranchF loc_99CD30
  loc_99CD25: FLdPr Me
  loc_99CD28: MemLdPr RsFrm
  loc_99CD2B: Me.MoveNext
  loc_99CD30: FLdRfVar var_86
  loc_99CD33: FLdPr Me
  loc_99CD36: MemLdPr RsFrm
  loc_99CD39:  = Me.EOF
  loc_99CD3E: FLdI2 var_86
  loc_99CD41: FLdRfVar var_8C
  loc_99CD44: FLdPr Me
  loc_99CD47: MemLdPr RsFrm
  loc_99CD4A:  = Me.RecordCount
  loc_99CD4F: ILdRf var_8C
  loc_99CD52: LitI4 0
  loc_99CD57: GtI4
  loc_99CD58: AndI4
  loc_99CD59: BranchF loc_99CD6C
  loc_99CD5C: ImpAdCallFPR4 Beep()
  loc_99CD61: FLdPr Me
  loc_99CD64: MemLdPr RsFrm
  loc_99CD67: Me.MoveLast
  loc_99CD6C: ExitProcHresult
  loc_99CD6D: FLdRfVar var_C98
End Sub

Public Sub MoveSiguiente() '94205C
  'Data Table: 413990
  loc_942050: FLdPr Me
  loc_942053: MemLdPr RsFrm
  loc_942056: Me.MoveNext
  loc_94205B: ExitProcHresult
End Sub

Public Sub MovePrevious() '99CE18
  'Data Table: 413990
  loc_99CDA0: FLdRfVar var_86
  loc_99CDA3: FLdPr Me
  loc_99CDA6: MemLdPr RsFrm
  loc_99CDA9:  = Me.BOF
  loc_99CDAE: FLdI2 var_86
  loc_99CDB1: NotI4
  loc_99CDB2: FLdRfVar var_8C
  loc_99CDB5: FLdPr Me
  loc_99CDB8: MemLdPr RsFrm
  loc_99CDBB:  = Me.RecordCount
  loc_99CDC0: ILdRf var_8C
  loc_99CDC3: LitI4 0
  loc_99CDC8: GtI4
  loc_99CDC9: AndI4
  loc_99CDCA: BranchF loc_99CDD8
  loc_99CDCD: FLdPr Me
  loc_99CDD0: MemLdPr RsFrm
  loc_99CDD3: Me.MovePrevious
  loc_99CDD8: FLdRfVar var_86
  loc_99CDDB: FLdPr Me
  loc_99CDDE: MemLdPr RsFrm
  loc_99CDE1:  = Me.BOF
  loc_99CDE6: FLdI2 var_86
  loc_99CDE9: FLdRfVar var_8C
  loc_99CDEC: FLdPr Me
  loc_99CDEF: MemLdPr RsFrm
  loc_99CDF2:  = Me.RecordCount
  loc_99CDF7: ILdRf var_8C
  loc_99CDFA: LitI4 0
  loc_99CDFF: GtI4
  loc_99CE00: AndI4
  loc_99CE01: BranchF loc_99CE14
  loc_99CE04: ImpAdCallFPR4 Beep()
  loc_99CE09: FLdPr Me
  loc_99CE0C: MemLdPr RsFrm
  loc_99CE0F: Me.MoveFirst
  loc_99CE14: ExitProcHresult
End Sub

Public Property Get EOF() '96669C
  'Data Table: 413990
  loc_966680: FLdRfVar var_88
  loc_966683: FLdPr Me
  loc_966686: MemLdPr RsFrm
  loc_966689:  = Me.EOF
  loc_96668E: FLdI2 var_88
  loc_966691: FStI2 var_86
  loc_966694: ExitProcCbHresult
  loc_96669A: VCallAd Control_ID_
End Sub

Public Property Get BOF() '96643C
  'Data Table: 413990
  loc_966420: FLdRfVar var_88
  loc_966423: FLdPr Me
  loc_966426: MemLdPr RsFrm
  loc_966429:  = Me.BOF
  loc_96642E: FLdI2 var_88
  loc_966431: FStI2 var_86
  loc_966434: ExitProcCbHresult
  loc_96643A: MemStI2 global_6212
End Sub

Public Sub Sort(sOrden) '946C84
  'Data Table: 413990
  loc_946C74: ILdI4 sOrden
  loc_946C77: FLdPr Me
  loc_946C7A: MemLdPr RsFrm
  loc_946C7D: Me.Sort = from_stack_1
  loc_946C82: ExitProcHresult
End Sub

Public Sub Find(sFind) '969290
  'Data Table: 413990
  loc_969270: LitVar_Missing var_94
  loc_969273: PopAdLdVar
  loc_969274: LitI4 1
  loc_969279: LitI4 0
  loc_96927E: ILdI4 sFind
  loc_969281: FLdPr Me
  loc_969284: MemLdPr RsFrm
  loc_969287: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96928C: ExitProcHresult
  loc_96928D: PopFPR4
  loc_96928E: LitStr "StrFormMemory_0"
End Sub

Public Sub Filter(sCriterio) '948968
  'Data Table: 413990
  loc_948954: ILdI4 sCriterio
  loc_948957: CVarStr var_94
  loc_94895A: PopAdLdVar
  loc_94895B: FLdPr Me
  loc_94895E: MemLdPr RsFrm
  loc_948961: Me.Filter = from_stack_1
  loc_948966: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95992C
  'Data Table: 413990
  loc_959910: FLdRfVar var_8C
  loc_959913: FLdPr Me
  loc_959916: MemLdPr RsFrm
  loc_959919:  = Me.AbsolutePosition
  loc_95991E: ILdRf var_8C
  loc_959921: FStR4 var_88
  loc_959924: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9661DC
  'Data Table: 413990
  loc_9661C0: FLdRfVar var_8C
  loc_9661C3: FLdPr Me
  loc_9661C6: MemLdPr RsFrm
  loc_9661C9:  = Me.RecordCount
  loc_9661CE: ILdRf var_8C
  loc_9661D1: FStR4 var_88
  loc_9661D4: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiPart, DetaPart, CoauPart, InvePart, CoesPart, CodiCuco, PatrCuco) 'A61714
  'Data Table: 413990
  loc_A61488: ILdRf CodiPart
  loc_A6148B: FStStrCopy var_88
  loc_A6148E: ILdRf DetaPart
  loc_A61491: FStStrCopy var_8C
  loc_A61494: ILdRf CoesPart
  loc_A61497: FStStrCopy var_90
  loc_A6149A: ILdRf CodiCuco
  loc_A6149D: FStStrCopy var_94
  loc_A614A0: ILdRf PatrCuco
  loc_A614A3: FStStrCopy var_98
  loc_A614A6: FLdRfVar var_A0
  loc_A614A9: ILdRf var_88
  loc_A614AC: FLdI2 PeriInfo
  loc_A614AF: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A614B4: FLdZeroAd var_A0
  loc_A614B7: FStStr var_9C
  loc_A614BA: ILdRf var_9C
  loc_A614BD: LitStr vbNullString
  loc_A614C0: NeStr
  loc_A614C2: BranchF loc_A614D5
  loc_A614C5: LitI4 0
  loc_A614CA: ILdRf var_9C
  loc_A614CD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A614D2: Branch loc_A61711
  loc_A614D5: LitStr "Municipalidad de Guaymallén"
  loc_A614D8: LitStr "Municipalidad de Rivadavia"
  loc_A614DB: EqStr
  loc_A614DD: BranchF loc_A61615
  loc_A614E0: LitStr "INSERT INTO partida (PeriInfo,CodiPart,DetaPart,CoauPart,ImpuPart,InvePart,CredPart,CredPartG,CoesPart,CodiCuco,PatrCuco,AltaUsua)"
  loc_A614E3: LitStr " VALUES ("
  loc_A614E6: ConcatStr
  loc_A614E7: FStStrNoPop var_A0
  loc_A614EA: FLdI2 PeriInfo
  loc_A614ED: CStrUI1
  loc_A614EF: FStStrNoPop var_A4
  loc_A614F2: ConcatStr
  loc_A614F3: FStStrNoPop var_A8
  loc_A614F6: LitStr ",'"
  loc_A614F9: ConcatStr
  loc_A614FA: FStStrNoPop var_AC
  loc_A614FD: ILdRf var_88
  loc_A61500: ConcatStr
  loc_A61501: FStStrNoPop var_B0
  loc_A61504: LitStr "','"
  loc_A61507: ConcatStr
  loc_A61508: FStStrNoPop var_B4
  loc_A6150B: ILdRf var_8C
  loc_A6150E: ConcatStr
  loc_A6150F: FStStrNoPop var_B8
  loc_A61512: LitStr "',"
  loc_A61515: ConcatStr
  loc_A61516: FStStrNoPop var_BC
  loc_A61519: FLdUI1
  loc_A6151D: CStrI2
  loc_A6151F: FStStrNoPop var_C0
  loc_A61522: ConcatStr
  loc_A61523: FStStrNoPop var_C4
  loc_A61526: LitStr ",1,'"
  loc_A61529: ConcatStr
  loc_A6152A: FStStrNoPop var_C8
  loc_A6152D: FLdUI1
  loc_A61531: CStrI2
  loc_A61533: FStStrNoPop var_CC
  loc_A61536: ConcatStr
  loc_A61537: FStStrNoPop var_D0
  loc_A6153A: LitStr "','"
  loc_A6153D: ConcatStr
  loc_A6153E: FStStrNoPop var_D4
  loc_A61541: ILdRf var_88
  loc_A61544: ConcatStr
  loc_A61545: FStStrNoPop var_D8
  loc_A61548: LitStr "','"
  loc_A6154B: ConcatStr
  loc_A6154C: CVarStr var_108
  loc_A6154F: LitI4 3
  loc_A61554: FLdRfVar var_88
  loc_A61557: CVarRef
  loc_A6155C: FLdRfVar var_F8
  loc_A6155F: ImpAdCallFPR4  = Left(, )
  loc_A61564: FLdRfVar var_F8
  loc_A61567: ConcatVar var_118
  loc_A6156B: LitVarStr var_128, "00000"
  loc_A61570: ConcatVar var_138
  loc_A61574: LitVarStr var_148, "','"
  loc_A61579: ConcatVar var_158
  loc_A6157D: ILdRf var_90
  loc_A61580: CVarStr var_168
  loc_A61583: ConcatVar var_178
  loc_A61587: LitVarStr var_188, "','"
  loc_A6158C: ConcatVar var_198
  loc_A61590: ILdRf var_94
  loc_A61593: CVarStr var_1A8
  loc_A61596: ConcatVar var_1B8
  loc_A6159A: LitVarStr var_1C8, "','"
  loc_A6159F: ConcatVar var_1D8
  loc_A615A3: ILdRf var_98
  loc_A615A6: CVarStr var_1E8
  loc_A615A9: ConcatVar var_1F8
  loc_A615AD: LitVarStr var_208, "','"
  loc_A615B2: ConcatVar var_218
  loc_A615B6: ImpAdLdI4 MemVar_C3D03C
  loc_A615B9: CVarStr var_228
  loc_A615BC: ConcatVar var_238
  loc_A615C0: LitVarStr var_248, "')"
  loc_A615C5: ConcatVar var_258
  loc_A615C9: CStrVarVal var_25C
  loc_A615CD: Call EjecutarRsCls(from_stack_1v)
  loc_A615D2: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A615F5: FFreeVar var_108 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = ""
  loc_A61612: Branch loc_A61706
  loc_A61615: LitStr "INSERT INTO partida (PeriInfo,CodiPart,DetaPart,CoauPart,ImpuPart,InvePart,CredPart,CredPartG,CoesPart,CodiCuco,PatrCuco,AltaUsua)"
  loc_A61618: LitStr " VALUES ("
  loc_A6161B: ConcatStr
  loc_A6161C: FStStrNoPop var_A0
  loc_A6161F: FLdI2 PeriInfo
  loc_A61622: CStrUI1
  loc_A61624: FStStrNoPop var_A4
  loc_A61627: ConcatStr
  loc_A61628: FStStrNoPop var_A8
  loc_A6162B: LitStr ",'"
  loc_A6162E: ConcatStr
  loc_A6162F: FStStrNoPop var_AC
  loc_A61632: ILdRf var_88
  loc_A61635: ConcatStr
  loc_A61636: FStStrNoPop var_B0
  loc_A61639: LitStr "','"
  loc_A6163C: ConcatStr
  loc_A6163D: FStStrNoPop var_B4
  loc_A61640: ILdRf var_8C
  loc_A61643: ConcatStr
  loc_A61644: FStStrNoPop var_B8
  loc_A61647: LitStr "',"
  loc_A6164A: ConcatStr
  loc_A6164B: FStStrNoPop var_BC
  loc_A6164E: FLdUI1
  loc_A61652: CStrI2
  loc_A61654: FStStrNoPop var_C0
  loc_A61657: ConcatStr
  loc_A61658: FStStrNoPop var_C4
  loc_A6165B: LitStr ",1,'"
  loc_A6165E: ConcatStr
  loc_A6165F: FStStrNoPop var_C8
  loc_A61662: FLdUI1
  loc_A61666: CStrI2
  loc_A61668: FStStrNoPop var_CC
  loc_A6166B: ConcatStr
  loc_A6166C: FStStrNoPop var_D0
  loc_A6166F: LitStr "','"
  loc_A61672: ConcatStr
  loc_A61673: FStStrNoPop var_D4
  loc_A61676: ILdRf var_88
  loc_A61679: ConcatStr
  loc_A6167A: FStStrNoPop var_D8
  loc_A6167D: LitStr "','"
  loc_A61680: ConcatStr
  loc_A61681: FStStrNoPop var_25C
  loc_A61684: ILdRf var_88
  loc_A61687: ConcatStr
  loc_A61688: FStStrNoPop var_260
  loc_A6168B: LitStr "','"
  loc_A6168E: ConcatStr
  loc_A6168F: FStStrNoPop var_264
  loc_A61692: ILdRf var_90
  loc_A61695: ConcatStr
  loc_A61696: FStStrNoPop var_268
  loc_A61699: LitStr "','"
  loc_A6169C: ConcatStr
  loc_A6169D: FStStrNoPop var_26C
  loc_A616A0: ILdRf var_94
  loc_A616A3: ConcatStr
  loc_A616A4: FStStrNoPop var_270
  loc_A616A7: LitStr "','"
  loc_A616AA: ConcatStr
  loc_A616AB: FStStrNoPop var_274
  loc_A616AE: ILdRf var_98
  loc_A616B1: ConcatStr
  loc_A616B2: FStStrNoPop var_278
  loc_A616B5: LitStr "','"
  loc_A616B8: ConcatStr
  loc_A616B9: FStStrNoPop var_27C
  loc_A616BC: ImpAdLdI4 MemVar_C3D03C
  loc_A616BF: ConcatStr
  loc_A616C0: FStStrNoPop var_280
  loc_A616C3: LitStr "')"
  loc_A616C6: ConcatStr
  loc_A616C7: FStStrNoPop var_284
  loc_A616CA: Call EjecutarRsCls(from_stack_1v)
  loc_A616CF: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_274 = "": var_278 = "": var_27C = "": var_280 = ""
  loc_A61706: ILdRf var_88
  loc_A61709: ImpAdLdI2 MemVar_C3D064
  loc_A6170C: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A61711: ExitProcHresult
End Sub

Public Function ValidaModificar(PeriInfo, CodiPart) '9AB4F4
  'Data Table: 413990
  loc_9AB470: ILdRf CodiPart
  loc_9AB473: FStStrCopy var_8C
  loc_9AB476: ZeroRetVal
  loc_9AB478: LitStr "SELECT CodiPart"
  loc_9AB47B: LitStr " FROM partida"
  loc_9AB47E: ConcatStr
  loc_9AB47F: FStStrNoPop var_90
  loc_9AB482: LitStr " WHERE PeriInfo = "
  loc_9AB485: ConcatStr
  loc_9AB486: FStStrNoPop ValidaModificar
  loc_9AB489: FLdI2 PeriInfo
  loc_9AB48C: CStrUI1
  loc_9AB48E: FStStrNoPop var_98
  loc_9AB491: ConcatStr
  loc_9AB492: FStStrNoPop var_9C
  loc_9AB495: LitStr " AND CodiPart = '"
  loc_9AB498: ConcatStr
  loc_9AB499: FStStrNoPop var_A0
  loc_9AB49C: ILdRf var_8C
  loc_9AB49F: ConcatStr
  loc_9AB4A0: FStStrNoPop var_A4
  loc_9AB4A3: LitStr "' AND ImpuPart = 0"
  loc_9AB4A6: ConcatStr
  loc_9AB4A7: FStStrNoPop var_A8
  loc_9AB4AA: Call EjecutarRsCls(from_stack_1v)
  loc_9AB4AF: FFreeStr var_90 = "": ValidaModificar = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9AB4C0: FLdRfVar var_AC
  loc_9AB4C3: FLdPr Me
  loc_9AB4C6: MemLdPr global_56
  loc_9AB4C9:  = Me.RecordCount
  loc_9AB4CE: ILdRf var_AC
  loc_9AB4D1: LitI4 0
  loc_9AB4D6: GtI4
  loc_9AB4D7: BranchF loc_9AB4ED
  loc_9AB4DA: LitStr "La Partida NO es Imputable. Verifique..."
  loc_9AB4DD: FStStrCopy var_88
  loc_9AB4E0: LitI4 0
  loc_9AB4E5: ILdRf var_88
  loc_9AB4E8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9AB4ED: ExitProcCbHresult
End Function

Public Sub Modificar(DetaPart, CoauPart, InvePart, CredPart, CoesPart, CodiCuco, PatrCuco) 'A41544
  'Data Table: 413990
  loc_A41364: ILdRf DetaPart
  loc_A41367: FStStrCopy var_88
  loc_A4136A: ILdRf CredPart
  loc_A4136D: FStStrCopy var_8C
  loc_A41370: ILdRf CoesPart
  loc_A41373: FStStrCopy var_90
  loc_A41376: ILdRf CodiCuco
  loc_A41379: FStStrCopy var_94
  loc_A4137C: ILdRf PatrCuco
  loc_A4137F: FStStrCopy var_98
  loc_A41382: LitStr "UPDATE partida"
  loc_A41385: LitStr " SET DetaPart='"
  loc_A41388: ConcatStr
  loc_A41389: FStStrNoPop var_9C
  loc_A4138C: ILdRf var_88
  loc_A4138F: ConcatStr
  loc_A41390: FStStrNoPop var_A0
  loc_A41393: LitStr "',CoauPart="
  loc_A41396: ConcatStr
  loc_A41397: FStStrNoPop var_A4
  loc_A4139A: FLdUI1
  loc_A4139E: CStrI2
  loc_A413A0: FStStrNoPop var_A8
  loc_A413A3: ConcatStr
  loc_A413A4: FStStrNoPop var_AC
  loc_A413A7: LitStr ",InvePart="
  loc_A413AA: ConcatStr
  loc_A413AB: FStStrNoPop var_B0
  loc_A413AE: FLdUI1
  loc_A413B2: CStrI2
  loc_A413B4: FStStrNoPop var_B4
  loc_A413B7: ConcatStr
  loc_A413B8: FStStrNoPop var_B8
  loc_A413BB: LitStr ",CredPart='"
  loc_A413BE: ConcatStr
  loc_A413BF: FStStrNoPop var_BC
  loc_A413C2: ILdRf var_8C
  loc_A413C5: ConcatStr
  loc_A413C6: FStStrNoPop var_C0
  loc_A413C9: LitStr "',CoesPart='"
  loc_A413CC: ConcatStr
  loc_A413CD: FStStrNoPop var_C4
  loc_A413D0: ILdRf var_90
  loc_A413D3: ConcatStr
  loc_A413D4: FStStrNoPop var_C8
  loc_A413D7: LitStr "',CodiCuco='"
  loc_A413DA: ConcatStr
  loc_A413DB: FStStrNoPop var_CC
  loc_A413DE: ILdRf var_94
  loc_A413E1: ConcatStr
  loc_A413E2: FStStrNoPop var_D0
  loc_A413E5: LitStr "',PatrCuco='"
  loc_A413E8: ConcatStr
  loc_A413E9: FStStrNoPop var_D4
  loc_A413EC: ILdRf var_98
  loc_A413EF: ConcatStr
  loc_A413F0: FStStrNoPop var_D8
  loc_A413F3: LitStr "',ModiUsua='"
  loc_A413F6: ConcatStr
  loc_A413F7: FStStrNoPop var_DC
  loc_A413FA: ImpAdLdI4 MemVar_C3D03C
  loc_A413FD: ConcatStr
  loc_A413FE: FStStrNoPop var_E0
  loc_A41401: LitStr "',ModiFeho=now() WHERE PeriInfo="
  loc_A41404: ConcatStr
  loc_A41405: CVarStr var_118
  loc_A41408: FLdRfVar var_108
  loc_A4140B: FLdRfVar var_F8
  loc_A4140E: LitVarStr var_F4, "PeriInfo"
  loc_A41413: PopAdLdVar
  loc_A41414: FLdRfVar var_E4
  loc_A41417: FLdPr Me
  loc_A4141A: MemLdPr RsFrm
  loc_A4141D:  = Me.Fields
  loc_A41422: FLdPr var_E4
  loc_A41425: from_stack_2 = Me.Item(from_stack_1)
  loc_A4142A: FLdPr var_F8
  loc_A4142D:  = Me.Value
  loc_A41432: FLdRfVar var_108
  loc_A41435: ConcatVar var_128
  loc_A41439: LitVarStr var_138, " AND CodiPart='"
  loc_A4143E: ConcatVar var_148
  loc_A41442: FLdRfVar var_170
  loc_A41445: FLdRfVar var_160
  loc_A41448: LitVarStr var_15C, "CodiPart"
  loc_A4144D: PopAdLdVar
  loc_A4144E: FLdRfVar var_14C
  loc_A41451: FLdPr Me
  loc_A41454: MemLdPr RsFrm
  loc_A41457:  = Me.Fields
  loc_A4145C: FLdPr var_14C
  loc_A4145F: from_stack_2 = Me.Item(from_stack_1)
  loc_A41464: FLdPr var_160
  loc_A41467:  = Me.Value
  loc_A4146C: FLdRfVar var_170
  loc_A4146F: ConcatVar var_180
  loc_A41473: LitVarStr var_190, "'"
  loc_A41478: ConcatVar var_1A0
  loc_A4147C: CStrVarVal var_1A4
  loc_A41480: Call EjecutarRsCls(from_stack_1v)
  loc_A41485: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A414AE: FFreeAd var_E4 = "": var_F8 = "": var_14C = ""
  loc_A414B9: FFreeVar var_118 = "": var_108 = "": var_128 = "": var_148 = "": var_170 = "": var_180 = ""
  loc_A414CA: FLdRfVar var_108
  loc_A414CD: FLdRfVar var_F8
  loc_A414D0: LitVarStr var_F4, "PeriInfo"
  loc_A414D5: PopAdLdVar
  loc_A414D6: FLdRfVar var_E4
  loc_A414D9: FLdPr Me
  loc_A414DC: MemLdPr RsFrm
  loc_A414DF:  = Me.Fields
  loc_A414E4: FLdPr var_E4
  loc_A414E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A414EC: FLdPr var_F8
  loc_A414EF:  = Me.Value
  loc_A414F4: FLdRfVar var_118
  loc_A414F7: FLdRfVar var_160
  loc_A414FA: LitVarStr var_138, "CodiPart"
  loc_A414FF: PopAdLdVar
  loc_A41500: FLdRfVar var_14C
  loc_A41503: FLdPr Me
  loc_A41506: MemLdPr RsFrm
  loc_A41509:  = Me.Fields
  loc_A4150E: FLdPr var_14C
  loc_A41511: from_stack_2 = Me.Item(from_stack_1)
  loc_A41516: FLdPr var_160
  loc_A41519:  = Me.Value
  loc_A4151E: FLdRfVar var_118
  loc_A41521: CStrVarTmp
  loc_A41522: FStStrNoPop var_9C
  loc_A41525: FLdRfVar var_108
  loc_A41528: CI2Var
  loc_A41529: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A4152E: FFree1Str var_9C
  loc_A41531: FFreeAd var_E4 = "": var_14C = "": var_F8 = ""
  loc_A4153C: FFreeVar var_108 = ""
  loc_A41543: ExitProcHresult
End Sub

Public Function ValidaEliminar(PeriInfo, CodiPart) 'A2B610
  'Data Table: 413990
  loc_A2B434: ILdRf CodiPart
  loc_A2B437: FStStrCopy var_8C
  loc_A2B43A: ZeroRetVal
  loc_A2B43C: LitStr "SELECT CodiPart FROM partida WHERE PeriInfo = "
  loc_A2B43F: FLdI2 PeriInfo
  loc_A2B442: CStrUI1
  loc_A2B444: FStStrNoPop var_90
  loc_A2B447: ConcatStr
  loc_A2B448: FStStrNoPop ValidaEliminar
  loc_A2B44B: LitStr " AND CodiPart = '"
  loc_A2B44E: ConcatStr
  loc_A2B44F: FStStrNoPop var_98
  loc_A2B452: ILdRf var_8C
  loc_A2B455: ConcatStr
  loc_A2B456: FStStrNoPop var_9C
  loc_A2B459: LitStr "' AND ImpuPart = 0"
  loc_A2B45C: ConcatStr
  loc_A2B45D: FStStrNoPop var_A0
  loc_A2B460: Call EjecutarRsCls(from_stack_1v)
  loc_A2B465: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A2B472: FLdRfVar var_A4
  loc_A2B475: FLdPr Me
  loc_A2B478: MemLdPr global_56
  loc_A2B47B:  = Me.RecordCount
  loc_A2B480: ILdRf var_A4
  loc_A2B483: LitI4 0
  loc_A2B488: GtI4
  loc_A2B489: BranchF loc_A2B498
  loc_A2B48C: LitStr "La Partida NO es Imputable. Reintente..."
  loc_A2B48F: FStStrCopy var_88
  loc_A2B492: ExitProcCbHresult
  loc_A2B498: LitStr "SELECT * FROM autorizado WHERE PeriInfo = "
  loc_A2B49B: FLdI2 PeriInfo
  loc_A2B49E: CStrUI1
  loc_A2B4A0: FStStrNoPop var_90
  loc_A2B4A3: ConcatStr
  loc_A2B4A4: FStStrNoPop ValidaEliminar
  loc_A2B4A7: LitStr " AND CodiPart = '"
  loc_A2B4AA: ConcatStr
  loc_A2B4AB: FStStrNoPop var_98
  loc_A2B4AE: ILdRf var_8C
  loc_A2B4B1: ConcatStr
  loc_A2B4B2: FStStrNoPop var_9C
  loc_A2B4B5: LitStr "' LIMIT 1"
  loc_A2B4B8: ConcatStr
  loc_A2B4B9: FStStrNoPop var_A0
  loc_A2B4BC: Call EjecutarRsCls(from_stack_1v)
  loc_A2B4C1: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A2B4CE: FLdRfVar var_A4
  loc_A2B4D1: FLdPr Me
  loc_A2B4D4: MemLdPr global_56
  loc_A2B4D7:  = Me.RecordCount
  loc_A2B4DC: ILdRf var_A4
  loc_A2B4DF: LitI4 0
  loc_A2B4E4: GtI4
  loc_A2B4E5: BranchF loc_A2B4F4
  loc_A2B4E8: LitStr "La Partida tiene Autorizados. Verifique..."
  loc_A2B4EB: FStStrCopy var_88
  loc_A2B4EE: ExitProcCbHresult
  loc_A2B4F4: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_A2B4F7: FLdI2 PeriInfo
  loc_A2B4FA: CStrUI1
  loc_A2B4FC: FStStrNoPop var_90
  loc_A2B4FF: ConcatStr
  loc_A2B500: FStStrNoPop ValidaEliminar
  loc_A2B503: LitStr " AND CodiPart = '"
  loc_A2B506: ConcatStr
  loc_A2B507: FStStrNoPop var_98
  loc_A2B50A: ILdRf var_8C
  loc_A2B50D: ConcatStr
  loc_A2B50E: FStStrNoPop var_9C
  loc_A2B511: LitStr "' LIMIT 1"
  loc_A2B514: ConcatStr
  loc_A2B515: FStStrNoPop var_A0
  loc_A2B518: Call EjecutarRsCls(from_stack_1v)
  loc_A2B51D: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A2B52A: FLdRfVar var_A4
  loc_A2B52D: FLdPr Me
  loc_A2B530: MemLdPr global_56
  loc_A2B533:  = Me.RecordCount
  loc_A2B538: ILdRf var_A4
  loc_A2B53B: LitI4 0
  loc_A2B540: GtI4
  loc_A2B541: BranchF loc_A2B550
  loc_A2B544: LitStr "La Partida tiene Imputaciones. Verifique..."
  loc_A2B547: FStStrCopy var_88
  loc_A2B54A: ExitProcCbHresult
  loc_A2B550: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_A2B553: FLdI2 PeriInfo
  loc_A2B556: CStrUI1
  loc_A2B558: FStStrNoPop var_90
  loc_A2B55B: ConcatStr
  loc_A2B55C: FStStrNoPop ValidaEliminar
  loc_A2B55F: LitStr " AND CodiPart = '"
  loc_A2B562: ConcatStr
  loc_A2B563: FStStrNoPop var_98
  loc_A2B566: ILdRf var_8C
  loc_A2B569: ConcatStr
  loc_A2B56A: FStStrNoPop var_9C
  loc_A2B56D: LitStr "' LIMIT 1"
  loc_A2B570: ConcatStr
  loc_A2B571: FStStrNoPop var_A0
  loc_A2B574: Call EjecutarRsCls(from_stack_1v)
  loc_A2B579: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A2B586: FLdRfVar var_A4
  loc_A2B589: FLdPr Me
  loc_A2B58C: MemLdPr global_56
  loc_A2B58F:  = Me.RecordCount
  loc_A2B594: ILdRf var_A4
  loc_A2B597: LitI4 0
  loc_A2B59C: GtI4
  loc_A2B59D: BranchF loc_A2B5AC
  loc_A2B5A0: LitStr "La Partida está incluida en una relación con Insumos y NO puede ELIMINARSE. Verifique..."
  loc_A2B5A3: FStStrCopy var_88
  loc_A2B5A6: ExitProcCbHresult
  loc_A2B5AC: LitStr "SELECT * FROM itemnota WHERE PeriInfo = "
  loc_A2B5AF: FLdI2 PeriInfo
  loc_A2B5B2: CStrUI1
  loc_A2B5B4: FStStrNoPop var_90
  loc_A2B5B7: ConcatStr
  loc_A2B5B8: FStStrNoPop ValidaEliminar
  loc_A2B5BB: LitStr " AND CodiPart = '"
  loc_A2B5BE: ConcatStr
  loc_A2B5BF: FStStrNoPop var_98
  loc_A2B5C2: ILdRf var_8C
  loc_A2B5C5: ConcatStr
  loc_A2B5C6: FStStrNoPop var_9C
  loc_A2B5C9: LitStr "' LIMIT 1"
  loc_A2B5CC: ConcatStr
  loc_A2B5CD: FStStrNoPop var_A0
  loc_A2B5D0: Call EjecutarRsCls(from_stack_1v)
  loc_A2B5D5: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A2B5E2: FLdRfVar var_A4
  loc_A2B5E5: FLdPr Me
  loc_A2B5E8: MemLdPr global_56
  loc_A2B5EB:  = Me.RecordCount
  loc_A2B5F0: ILdRf var_A4
  loc_A2B5F3: LitI4 0
  loc_A2B5F8: GtI4
  loc_A2B5F9: BranchF loc_A2B608
  loc_A2B5FC: LitStr "La Partida está incluida en un Item de Nota de Pedido y NO puede ELIMINARSE. Verifique..."
  loc_A2B5FF: FStStrCopy var_88
  loc_A2B602: ExitProcCbHresult
  loc_A2B608: ExitProcCbHresult
End Function

Public Sub Eliminar(PeriInfo, CodiPart) '9F54CC
  'Data Table: 413990
  loc_9F5398: ILdRf CodiPart
  loc_9F539B: FStStrCopy var_88
  loc_9F539E: FLdRfVar var_92
  loc_9F53A1: ILdRf var_88
  loc_9F53A4: from_stack_2v = NivelPartida(from_stack_1v)
  loc_9F53A9: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_9F53AC: FLdI2 PeriInfo
  loc_9F53AF: CStrUI1
  loc_9F53B1: FStStrNoPop var_8C
  loc_9F53B4: ConcatStr
  loc_9F53B5: FStStrNoPop var_90
  loc_9F53B8: LitStr " AND CodiPart LIKE '"
  loc_9F53BB: ConcatStr
  loc_9F53BC: FStStrNoPop var_98
  loc_9F53BF: FLdRfVar var_94
  loc_9F53C2: FLdUI1
  loc_9F53C6: Call Proc_25_31_9A17C8()
  loc_9F53CB: FLdUI1
  loc_9F53CF: CI4UI1
  loc_9F53D0: ILdRf var_88
  loc_9F53D3: ImpAdCallI2 Left$(, )
  loc_9F53D8: FStStrNoPop var_9C
  loc_9F53DB: ConcatStr
  loc_9F53DC: FStStrNoPop var_A0
  loc_9F53DF: LitStr Chr(37) & "'"
  loc_9F53E2: ConcatStr
  loc_9F53E3: FStStrNoPop var_A4
  loc_9F53E6: Call EjecutarRsCls(from_stack_1v)
  loc_9F53EB: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9F53FA: FLdRfVar var_A8
  loc_9F53FD: FLdPr Me
  loc_9F5400: MemLdPr global_56
  loc_9F5403:  = Me.RecordCount
  loc_9F5408: ILdRf var_A8
  loc_9F540B: LitI4 2
  loc_9F5410: EqI4
  loc_9F5411: BranchF loc_9F5468
  loc_9F5414: FLdRfVar var_92
  loc_9F5417: ILdRf var_88
  loc_9F541A: from_stack_2v = NivelPartida(from_stack_1v)
  loc_9F541F: LitStr "UPDATE partida SET ImpuPart=1 WHERE PeriInfo = "
  loc_9F5422: FLdI2 PeriInfo
  loc_9F5425: CStrUI1
  loc_9F5427: FStStrNoPop var_8C
  loc_9F542A: ConcatStr
  loc_9F542B: FStStrNoPop var_90
  loc_9F542E: LitStr " AND CodiPart = '"
  loc_9F5431: ConcatStr
  loc_9F5432: FStStrNoPop var_9C
  loc_9F5435: FLdRfVar var_98
  loc_9F5438: FLdUI1
  loc_9F543C: CI2UI1
  loc_9F543E: ILdRf var_88
  loc_9F5441: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_9F5446: ILdRf var_98
  loc_9F5449: ConcatStr
  loc_9F544A: FStStrNoPop var_A0
  loc_9F544D: LitStr "';"
  loc_9F5450: ConcatStr
  loc_9F5451: FStStrNoPop var_A4
  loc_9F5454: Call EjecutarRsCls(from_stack_1v)
  loc_9F5459: FFreeStr var_8C = "": var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_9F5468: LitStr "DELETE FROM partida WHERE PeriInfo="
  loc_9F546B: FLdI2 PeriInfo
  loc_9F546E: CStrUI1
  loc_9F5470: FStStrNoPop var_8C
  loc_9F5473: ConcatStr
  loc_9F5474: FStStrNoPop var_90
  loc_9F5477: LitStr " AND CodiPart='"
  loc_9F547A: ConcatStr
  loc_9F547B: FStStrNoPop var_98
  loc_9F547E: ILdRf var_88
  loc_9F5481: ConcatStr
  loc_9F5482: FStStrNoPop var_9C
  loc_9F5485: LitStr "';"
  loc_9F5488: ConcatStr
  loc_9F5489: FStStrNoPop var_A0
  loc_9F548C: Call EjecutarRsCls(from_stack_1v)
  loc_9F5491: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_9C = ""
  loc_9F549E: FLdRfVar var_92
  loc_9F54A1: ILdRf var_88
  loc_9F54A4: from_stack_2v = NivelPartida(from_stack_1v)
  loc_9F54A9: FLdRfVar var_8C
  loc_9F54AC: FLdUI1
  loc_9F54B0: CI2UI1
  loc_9F54B2: ILdRf var_88
  loc_9F54B5: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_9F54BA: ILdRf var_8C
  loc_9F54BD: FLdI2 PeriInfo
  loc_9F54C0: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9F54C5: FFree1Str var_8C
  loc_9F54C8: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiPart) '9A24BC
  'Data Table: 413990
  loc_9A2458: ILdRf CodiPart
  loc_9A245B: FStStrCopy var_8C
  loc_9A245E: ZeroRetVal
  loc_9A2460: LitStr "SELECT PeriInfo, CodiPart FROM partida WHERE PeriInfo = "
  loc_9A2463: FLdI2 PeriInfo
  loc_9A2466: CStrUI1
  loc_9A2468: FStStrNoPop var_90
  loc_9A246B: ConcatStr
  loc_9A246C: FStStrNoPop ValidaClave
  loc_9A246F: LitStr " AND CodiPart = '"
  loc_9A2472: ConcatStr
  loc_9A2473: FStStrNoPop var_98
  loc_9A2476: ILdRf var_8C
  loc_9A2479: ConcatStr
  loc_9A247A: FStStrNoPop var_9C
  loc_9A247D: LitStr "'"
  loc_9A2480: ConcatStr
  loc_9A2481: FStStrNoPop var_A0
  loc_9A2484: Call EjecutarRsCls(from_stack_1v)
  loc_9A2489: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_9A2496: FLdRfVar var_A4
  loc_9A2499: FLdPr Me
  loc_9A249C: MemLdPr global_56
  loc_9A249F:  = Me.RecordCount
  loc_9A24A4: ILdRf var_A4
  loc_9A24A7: LitI4 0
  loc_9A24AC: GtI4
  loc_9A24AD: BranchF loc_9A24B6
  loc_9A24B0: LitStr "La Partida YA EXISTE. Reintente..."
  loc_9A24B3: FStStrCopy var_88
  loc_9A24B6: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiPart) '9E99B4
  'Data Table: 413990
  loc_9E9896: ILdRf CodiPart
  loc_9E9899: FStStrCopy var_88
  loc_9E989E: On Error Resume Next
  loc_9E98A3: FLdI2 PeriInfo
  loc_9E98A6: LitI2_Byte 0
  loc_9E98A8: EqI2
  loc_9E98A9: ILdRf var_88
  loc_9E98AC: LitStr vbNullString
  loc_9E98AF: EqStr
  loc_9E98B1: AndI4
  loc_9E98B2: FLdRfVar var_8C
  loc_9E98B5: FLdPr Me
  loc_9E98B8: MemLdPr RsFrm
  loc_9E98BB:  = Me.RecordCount
  loc_9E98C0: ILdRf var_8C
  loc_9E98C3: LitI4 0
  loc_9E98C8: GtI4
  loc_9E98C9: AndI4
  loc_9E98CA: FLdRfVar var_90
  loc_9E98CD: FLdPr Me
  loc_9E98D0: MemLdPr RsFrm
  loc_9E98D3:  = Me.AbsolutePosition
  loc_9E98D8: ILdRf var_90
  loc_9E98DB: LitI4 -3
  loc_9E98E0: NeI4
  loc_9E98E1: AndI4
  loc_9E98E2: BranchF loc_9E995F
  loc_9E98E7: FLdRfVar var_B8
  loc_9E98EA: FLdRfVar var_A8
  loc_9E98ED: LitVarStr var_A4, "PeriInfo"
  loc_9E98F2: PopAdLdVar
  loc_9E98F3: FLdRfVar var_94
  loc_9E98F6: FLdPr Me
  loc_9E98F9: MemLdPr RsFrm
  loc_9E98FC:  = Me.Fields
  loc_9E9901: FLdPr var_94
  loc_9E9904: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9909: FLdPr var_A8
  loc_9E990C:  = Me.Value
  loc_9E9911: FLdRfVar var_B8
  loc_9E9914: CI2Var
  loc_9E9915: FStI2 PeriInfo
  loc_9E9918: FFreeAd var_94 = ""
  loc_9E991F: FFree1Var var_B8 = ""
  loc_9E9924: FLdRfVar var_B8
  loc_9E9927: FLdRfVar var_A8
  loc_9E992A: LitVarStr var_A4, "CodiPart"
  loc_9E992F: PopAdLdVar
  loc_9E9930: FLdRfVar var_94
  loc_9E9933: FLdPr Me
  loc_9E9936: MemLdPr RsFrm
  loc_9E9939:  = Me.Fields
  loc_9E993E: FLdPr var_94
  loc_9E9941: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9946: FLdPr var_A8
  loc_9E9949:  = Me.Value
  loc_9E994E: FLdRfVar var_B8
  loc_9E9951: CStrVarTmp
  loc_9E9952: FStStr var_88
  loc_9E9955: FFreeAd var_94 = ""
  loc_9E995C: FFree1Var var_B8 = ""
  loc_9E9963: Call Requery()
  loc_9E996A: LitStr "PeriInfo = '"
  loc_9E996D: FLdI2 PeriInfo
  loc_9E9970: CStrUI1
  loc_9E9972: FStStrNoPop var_BC
  loc_9E9975: ConcatStr
  loc_9E9976: FStStrNoPop var_C0
  loc_9E9979: LitStr "'"
  loc_9E997C: ConcatStr
  loc_9E997D: PopTmpLdAdStr
  loc_9E9981: Call Find(from_stack_1v)
  loc_9E9986: FFreeStr var_BC = "": var_C0 = ""
  loc_9E9991: LitStr "CodiPart = '"
  loc_9E9994: ILdRf var_88
  loc_9E9997: ConcatStr
  loc_9E9998: FStStrNoPop var_BC
  loc_9E999B: LitStr "'"
  loc_9E999E: ConcatStr
  loc_9E999F: PopTmpLdAdStr
  loc_9E99A3: Call Find(from_stack_1v)
  loc_9E99A8: FFreeStr var_BC = ""
  loc_9E99B1: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9750FC
  'Data Table: 413990
  loc_9750D4: ILdRf sSelect
  loc_9750D7: FStStrCopy var_88
  loc_9750DA: FLdPr Me
  loc_9750DD: MemLdRfVar from_stack_1.RsFrm
  loc_9750E0: ILdRf var_88
  loc_9750E3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9750E8: LitVarStr var_98, "Primary"
  loc_9750ED: PopAdLdVar
  loc_9750EE: FLdPr Me
  loc_9750F1: LateIdCall
  loc_9750F9: ExitProcHresult
  loc_9750FA: FLdPr arg_1801
End Sub

Public Sub EjecutarRsCls(sSelect) '966224
  'Data Table: 413990
  loc_96620C: ILdRf sSelect
  loc_96620F: FStStrCopy var_88
  loc_966212: FLdPr Me
  loc_966215: MemLdRfVar from_stack_1.global_56
  loc_966218: ILdRf var_88
  loc_96621B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_966220: ExitProcHresult
End Sub

Public Sub Requery() '9692E0
  'Data Table: 413990
  loc_9692C0: FLdPr Me
  loc_9692C3: MemLdRfVar from_stack_1.RsFrm
  loc_9692C6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9692CB: LitVarStr var_94, "Primary"
  loc_9692D0: PopAdLdVar
  loc_9692D1: FLdPr Me
  loc_9692D4: LateIdCall
  loc_9692DC: ExitProcHresult
End Sub

Public Property Get DataSource(arg_18) '974F2C
  'Data Table: 413990
  loc_974F08: ZeroRetVal
  loc_974F0A: FLdRfVar var_8C
  loc_974F0D: FLdPr Me
  loc_974F10: MemLdPr RsFrm
  loc_974F13:  = Me.DataSource
  loc_974F18: ILdRf var_8C
  loc_974F1B: CastAd
  loc_974F1E: FStAdFunc var_88
  loc_974F21: FFree1Ad var_8C
  loc_974F24: ExitProcCbHresult
  loc_974F2A: FStStr arg_1800
End Sub

Public Function ValidaCodiPart(PeriInfo, CodiPart) 'B29928
  'Data Table: 413990
  loc_B28FFC: FDupVar
  loc_B29002: ZeroRetVal
  loc_B29004: FLdRfVar var_98
  loc_B29007: FnLenVar var_A8
  loc_B2900B: LitVarI2 var_B8, 8
  loc_B29010: HardType
  loc_B29011: NeVarBool
  loc_B29013: BranchF loc_B2901F
  loc_B29016: LitStr "Debe ingresar 8 caracteres. Verifique..."
  loc_B29019: FStStrCopy var_88
  loc_B2901C: Branch loc_B2991F
  loc_B2901F: LitStr "Falta ingresar un Nivel. Verifique..."
  loc_B29022: FStStrCopy var_88
  loc_B29025: LitVarI2 var_A8, 2
  loc_B2902A: LitI4 7
  loc_B2902F: FLdRfVar var_98
  loc_B29032: CStrVarVal var_CC
  loc_B29036: ImpAdCallI2 Mid$(, , )
  loc_B2903B: FStStrNoPop var_D0
  loc_B2903E: LitStr "00"
  loc_B29041: NeStr
  loc_B29043: LitVarI2 var_C8, 2
  loc_B29048: LitI4 5
  loc_B2904D: FLdRfVar var_98
  loc_B29050: CStrVarVal var_D4
  loc_B29054: ImpAdCallI2 Mid$(, , )
  loc_B29059: FStStrNoPop var_E8
  loc_B2905C: LitStr "00"
  loc_B2905F: NeStr
  loc_B29061: AndI4
  loc_B29062: LitVarI2 var_10C, 1
  loc_B29067: LitI4 4
  loc_B2906C: FLdRfVar var_98
  loc_B2906F: CStrVarVal var_EC
  loc_B29073: ImpAdCallI2 Mid$(, , )
  loc_B29078: FStStrNoPop var_110
  loc_B2907B: LitStr "0"
  loc_B2907E: NeStr
  loc_B29080: AndI4
  loc_B29081: LitVarI2 var_134, 1
  loc_B29086: LitI4 3
  loc_B2908B: FLdRfVar var_98
  loc_B2908E: CStrVarVal var_114
  loc_B29092: ImpAdCallI2 Mid$(, , )
  loc_B29097: FStStrNoPop var_138
  loc_B2909A: LitStr "0"
  loc_B2909D: NeStr
  loc_B2909F: AndI4
  loc_B290A0: LitVarI2 var_15C, 1
  loc_B290A5: LitI4 2
  loc_B290AA: FLdRfVar var_98
  loc_B290AD: CStrVarVal var_13C
  loc_B290B1: ImpAdCallI2 Mid$(, , )
  loc_B290B6: FStStrNoPop var_160
  loc_B290B9: LitStr "0"
  loc_B290BC: NeStr
  loc_B290BE: AndI4
  loc_B290BF: LitVarI2 var_184, 1
  loc_B290C4: LitI4 1
  loc_B290C9: FLdRfVar var_98
  loc_B290CC: CStrVarVal var_164
  loc_B290D0: ImpAdCallI2 Mid$(, , )
  loc_B290D5: FStStrNoPop var_188
  loc_B290D8: LitStr "0"
  loc_B290DB: NeStr
  loc_B290DD: AndI4
  loc_B290DE: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B290F9: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B29108: BranchF loc_B29114
  loc_B2910B: LitStr vbNullString
  loc_B2910E: FStStrCopy var_88
  loc_B29111: Branch loc_B295BC
  loc_B29114: LitVarI2 var_A8, 2
  loc_B29119: LitI4 5
  loc_B2911E: FLdRfVar var_98
  loc_B29121: CStrVarVal var_CC
  loc_B29125: ImpAdCallI2 Mid$(, , )
  loc_B2912A: FStStrNoPop var_D0
  loc_B2912D: LitStr "00"
  loc_B29130: NeStr
  loc_B29132: LitVarI2 var_C8, 2
  loc_B29137: LitI4 7
  loc_B2913C: FLdRfVar var_98
  loc_B2913F: CStrVarVal var_D4
  loc_B29143: ImpAdCallI2 Mid$(, , )
  loc_B29148: FStStrNoPop var_E8
  loc_B2914B: LitStr "00"
  loc_B2914E: EqStr
  loc_B29150: AndI4
  loc_B29151: LitVarI2 var_10C, 1
  loc_B29156: LitI4 4
  loc_B2915B: FLdRfVar var_98
  loc_B2915E: CStrVarVal var_EC
  loc_B29162: ImpAdCallI2 Mid$(, , )
  loc_B29167: FStStrNoPop var_110
  loc_B2916A: LitStr "0"
  loc_B2916D: NeStr
  loc_B2916F: AndI4
  loc_B29170: LitVarI2 var_134, 1
  loc_B29175: LitI4 3
  loc_B2917A: FLdRfVar var_98
  loc_B2917D: CStrVarVal var_114
  loc_B29181: ImpAdCallI2 Mid$(, , )
  loc_B29186: FStStrNoPop var_138
  loc_B29189: LitStr "0"
  loc_B2918C: NeStr
  loc_B2918E: AndI4
  loc_B2918F: LitVarI2 var_15C, 1
  loc_B29194: LitI4 2
  loc_B29199: FLdRfVar var_98
  loc_B2919C: CStrVarVal var_13C
  loc_B291A0: ImpAdCallI2 Mid$(, , )
  loc_B291A5: FStStrNoPop var_160
  loc_B291A8: LitStr "0"
  loc_B291AB: NeStr
  loc_B291AD: AndI4
  loc_B291AE: LitVarI2 var_184, 1
  loc_B291B3: LitI4 1
  loc_B291B8: FLdRfVar var_98
  loc_B291BB: CStrVarVal var_164
  loc_B291BF: ImpAdCallI2 Mid$(, , )
  loc_B291C4: FStStrNoPop var_188
  loc_B291C7: LitStr "0"
  loc_B291CA: NeStr
  loc_B291CC: AndI4
  loc_B291CD: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B291E8: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B291F7: BranchF loc_B29203
  loc_B291FA: LitStr vbNullString
  loc_B291FD: FStStrCopy var_88
  loc_B29200: Branch loc_B295BC
  loc_B29203: LitVarI2 var_A8, 1
  loc_B29208: LitI4 4
  loc_B2920D: FLdRfVar var_98
  loc_B29210: CStrVarVal var_CC
  loc_B29214: ImpAdCallI2 Mid$(, , )
  loc_B29219: FStStrNoPop var_D0
  loc_B2921C: LitStr "0"
  loc_B2921F: NeStr
  loc_B29221: LitVarI2 var_C8, 2
  loc_B29226: LitI4 7
  loc_B2922B: FLdRfVar var_98
  loc_B2922E: CStrVarVal var_D4
  loc_B29232: ImpAdCallI2 Mid$(, , )
  loc_B29237: FStStrNoPop var_E8
  loc_B2923A: LitStr "00"
  loc_B2923D: EqStr
  loc_B2923F: AndI4
  loc_B29240: LitVarI2 var_10C, 2
  loc_B29245: LitI4 5
  loc_B2924A: FLdRfVar var_98
  loc_B2924D: CStrVarVal var_EC
  loc_B29251: ImpAdCallI2 Mid$(, , )
  loc_B29256: FStStrNoPop var_110
  loc_B29259: LitStr "00"
  loc_B2925C: EqStr
  loc_B2925E: AndI4
  loc_B2925F: LitVarI2 var_134, 1
  loc_B29264: LitI4 3
  loc_B29269: FLdRfVar var_98
  loc_B2926C: CStrVarVal var_114
  loc_B29270: ImpAdCallI2 Mid$(, , )
  loc_B29275: FStStrNoPop var_138
  loc_B29278: LitStr "0"
  loc_B2927B: NeStr
  loc_B2927D: AndI4
  loc_B2927E: LitVarI2 var_15C, 1
  loc_B29283: LitI4 2
  loc_B29288: FLdRfVar var_98
  loc_B2928B: CStrVarVal var_13C
  loc_B2928F: ImpAdCallI2 Mid$(, , )
  loc_B29294: FStStrNoPop var_160
  loc_B29297: LitStr "0"
  loc_B2929A: NeStr
  loc_B2929C: AndI4
  loc_B2929D: LitVarI2 var_184, 1
  loc_B292A2: LitI4 1
  loc_B292A7: FLdRfVar var_98
  loc_B292AA: CStrVarVal var_164
  loc_B292AE: ImpAdCallI2 Mid$(, , )
  loc_B292B3: FStStrNoPop var_188
  loc_B292B6: LitStr "0"
  loc_B292B9: NeStr
  loc_B292BB: AndI4
  loc_B292BC: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B292D7: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B292E6: BranchF loc_B292F2
  loc_B292E9: LitStr vbNullString
  loc_B292EC: FStStrCopy var_88
  loc_B292EF: Branch loc_B295BC
  loc_B292F2: LitVarI2 var_A8, 1
  loc_B292F7: LitI4 3
  loc_B292FC: FLdRfVar var_98
  loc_B292FF: CStrVarVal var_CC
  loc_B29303: ImpAdCallI2 Mid$(, , )
  loc_B29308: FStStrNoPop var_D0
  loc_B2930B: LitStr "0"
  loc_B2930E: NeStr
  loc_B29310: LitVarI2 var_C8, 2
  loc_B29315: LitI4 7
  loc_B2931A: FLdRfVar var_98
  loc_B2931D: CStrVarVal var_D4
  loc_B29321: ImpAdCallI2 Mid$(, , )
  loc_B29326: FStStrNoPop var_E8
  loc_B29329: LitStr "00"
  loc_B2932C: EqStr
  loc_B2932E: AndI4
  loc_B2932F: LitVarI2 var_10C, 2
  loc_B29334: LitI4 5
  loc_B29339: FLdRfVar var_98
  loc_B2933C: CStrVarVal var_EC
  loc_B29340: ImpAdCallI2 Mid$(, , )
  loc_B29345: FStStrNoPop var_110
  loc_B29348: LitStr "00"
  loc_B2934B: EqStr
  loc_B2934D: AndI4
  loc_B2934E: LitVarI2 var_134, 1
  loc_B29353: LitI4 4
  loc_B29358: FLdRfVar var_98
  loc_B2935B: CStrVarVal var_114
  loc_B2935F: ImpAdCallI2 Mid$(, , )
  loc_B29364: FStStrNoPop var_138
  loc_B29367: LitStr "0"
  loc_B2936A: EqStr
  loc_B2936C: AndI4
  loc_B2936D: LitVarI2 var_15C, 1
  loc_B29372: LitI4 2
  loc_B29377: FLdRfVar var_98
  loc_B2937A: CStrVarVal var_13C
  loc_B2937E: ImpAdCallI2 Mid$(, , )
  loc_B29383: FStStrNoPop var_160
  loc_B29386: LitStr "0"
  loc_B29389: NeStr
  loc_B2938B: AndI4
  loc_B2938C: LitVarI2 var_184, 1
  loc_B29391: LitI4 1
  loc_B29396: FLdRfVar var_98
  loc_B29399: CStrVarVal var_164
  loc_B2939D: ImpAdCallI2 Mid$(, , )
  loc_B293A2: FStStrNoPop var_188
  loc_B293A5: LitStr "0"
  loc_B293A8: NeStr
  loc_B293AA: AndI4
  loc_B293AB: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B293C6: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B293D5: BranchF loc_B293E1
  loc_B293D8: LitStr vbNullString
  loc_B293DB: FStStrCopy var_88
  loc_B293DE: Branch loc_B295BC
  loc_B293E1: LitVarI2 var_A8, 1
  loc_B293E6: LitI4 2
  loc_B293EB: FLdRfVar var_98
  loc_B293EE: CStrVarVal var_CC
  loc_B293F2: ImpAdCallI2 Mid$(, , )
  loc_B293F7: FStStrNoPop var_D0
  loc_B293FA: LitStr "0"
  loc_B293FD: NeStr
  loc_B293FF: LitVarI2 var_C8, 2
  loc_B29404: LitI4 7
  loc_B29409: FLdRfVar var_98
  loc_B2940C: CStrVarVal var_D4
  loc_B29410: ImpAdCallI2 Mid$(, , )
  loc_B29415: FStStrNoPop var_E8
  loc_B29418: LitStr "00"
  loc_B2941B: EqStr
  loc_B2941D: AndI4
  loc_B2941E: LitVarI2 var_10C, 2
  loc_B29423: LitI4 5
  loc_B29428: FLdRfVar var_98
  loc_B2942B: CStrVarVal var_EC
  loc_B2942F: ImpAdCallI2 Mid$(, , )
  loc_B29434: FStStrNoPop var_110
  loc_B29437: LitStr "00"
  loc_B2943A: EqStr
  loc_B2943C: AndI4
  loc_B2943D: LitVarI2 var_134, 1
  loc_B29442: LitI4 4
  loc_B29447: FLdRfVar var_98
  loc_B2944A: CStrVarVal var_114
  loc_B2944E: ImpAdCallI2 Mid$(, , )
  loc_B29453: FStStrNoPop var_138
  loc_B29456: LitStr "0"
  loc_B29459: EqStr
  loc_B2945B: AndI4
  loc_B2945C: LitVarI2 var_15C, 1
  loc_B29461: LitI4 3
  loc_B29466: FLdRfVar var_98
  loc_B29469: CStrVarVal var_13C
  loc_B2946D: ImpAdCallI2 Mid$(, , )
  loc_B29472: FStStrNoPop var_160
  loc_B29475: LitStr "0"
  loc_B29478: EqStr
  loc_B2947A: AndI4
  loc_B2947B: LitVarI2 var_184, 1
  loc_B29480: LitI4 1
  loc_B29485: FLdRfVar var_98
  loc_B29488: CStrVarVal var_164
  loc_B2948C: ImpAdCallI2 Mid$(, , )
  loc_B29491: FStStrNoPop var_188
  loc_B29494: LitStr "0"
  loc_B29497: NeStr
  loc_B29499: AndI4
  loc_B2949A: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B294B5: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B294C4: BranchF loc_B294D0
  loc_B294C7: LitStr vbNullString
  loc_B294CA: FStStrCopy var_88
  loc_B294CD: Branch loc_B295BC
  loc_B294D0: LitVarI2 var_A8, 1
  loc_B294D5: LitI4 1
  loc_B294DA: FLdRfVar var_98
  loc_B294DD: CStrVarVal var_CC
  loc_B294E1: ImpAdCallI2 Mid$(, , )
  loc_B294E6: FStStrNoPop var_D0
  loc_B294E9: LitStr "0"
  loc_B294EC: NeStr
  loc_B294EE: LitVarI2 var_C8, 2
  loc_B294F3: LitI4 7
  loc_B294F8: FLdRfVar var_98
  loc_B294FB: CStrVarVal var_D4
  loc_B294FF: ImpAdCallI2 Mid$(, , )
  loc_B29504: FStStrNoPop var_E8
  loc_B29507: LitStr "00"
  loc_B2950A: EqStr
  loc_B2950C: AndI4
  loc_B2950D: LitVarI2 var_10C, 2
  loc_B29512: LitI4 5
  loc_B29517: FLdRfVar var_98
  loc_B2951A: CStrVarVal var_EC
  loc_B2951E: ImpAdCallI2 Mid$(, , )
  loc_B29523: FStStrNoPop var_110
  loc_B29526: LitStr "00"
  loc_B29529: EqStr
  loc_B2952B: AndI4
  loc_B2952C: LitVarI2 var_134, 1
  loc_B29531: LitI4 4
  loc_B29536: FLdRfVar var_98
  loc_B29539: CStrVarVal var_114
  loc_B2953D: ImpAdCallI2 Mid$(, , )
  loc_B29542: FStStrNoPop var_138
  loc_B29545: LitStr "0"
  loc_B29548: EqStr
  loc_B2954A: AndI4
  loc_B2954B: LitVarI2 var_15C, 1
  loc_B29550: LitI4 3
  loc_B29555: FLdRfVar var_98
  loc_B29558: CStrVarVal var_13C
  loc_B2955C: ImpAdCallI2 Mid$(, , )
  loc_B29561: FStStrNoPop var_160
  loc_B29564: LitStr "0"
  loc_B29567: EqStr
  loc_B29569: AndI4
  loc_B2956A: LitVarI2 var_184, 1
  loc_B2956F: LitI4 2
  loc_B29574: FLdRfVar var_98
  loc_B29577: CStrVarVal var_164
  loc_B2957B: ImpAdCallI2 Mid$(, , )
  loc_B29580: FStStrNoPop var_188
  loc_B29583: LitStr "0"
  loc_B29586: EqStr
  loc_B29588: AndI4
  loc_B29589: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = "": var_138 = "": var_13C = "": var_160 = "": var_164 = ""
  loc_B295A4: FFreeVar var_A8 = "": var_C8 = "": var_10C = "": var_134 = "": var_15C = ""
  loc_B295B3: BranchF loc_B295BC
  loc_B295B6: LitStr vbNullString
  loc_B295B9: FStStrCopy var_88
  loc_B295BC: ILdRf var_88
  loc_B295BF: LitStr vbNullString
  loc_B295C2: NeStr
  loc_B295C4: BranchF loc_B295CD
  loc_B295C7: ExitProcCbHresult
  loc_B295CD: FLdRfVar var_18A
  loc_B295D0: FLdRfVar var_98
  loc_B295D3: CStrVarVal var_CC
  loc_B295D7: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B295DC: FLdUI1
  loc_B295E0: CI2UI1
  loc_B295E2: LitI2_Byte 1
  loc_B295E4: GtI2
  loc_B295E5: FFree1Str var_CC
  loc_B295E8: BranchF loc_B2991F
  loc_B295EB: FLdRfVar var_18A
  loc_B295EE: FLdRfVar var_98
  loc_B295F1: CStrVarVal var_D4
  loc_B295F5: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B295FA: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_B295FD: FLdI2 PeriInfo
  loc_B29600: CStrUI1
  loc_B29602: FStStrNoPop var_CC
  loc_B29605: ConcatStr
  loc_B29606: FStStrNoPop var_D0
  loc_B29609: LitStr " AND CodiPart = '"
  loc_B2960C: ConcatStr
  loc_B2960D: FStStrNoPop var_110
  loc_B29610: FLdRfVar var_EC
  loc_B29613: FLdUI1
  loc_B29617: CI2UI1
  loc_B29619: FLdRfVar var_98
  loc_B2961C: CStrVarVal var_E8
  loc_B29620: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B29625: ILdRf var_EC
  loc_B29628: ConcatStr
  loc_B29629: FStStrNoPop var_114
  loc_B2962C: LitStr "'"
  loc_B2962F: ConcatStr
  loc_B29630: FStStrNoPop var_138
  loc_B29633: Call EjecutarRsCls(from_stack_1v)
  loc_B29638: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_110 = "": var_EC = "": var_114 = ""
  loc_B2964B: FLdRfVar var_190
  loc_B2964E: FLdPr Me
  loc_B29651: MemLdPr global_56
  loc_B29654:  = Me.RecordCount
  loc_B29659: ILdRf var_190
  loc_B2965C: LitI4 0
  loc_B29661: EqI4
  loc_B29662: BranchF loc_B296D8
  loc_B29665: FLdRfVar var_18A
  loc_B29668: FLdRfVar var_98
  loc_B2966B: CStrVarVal var_CC
  loc_B2966F: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B29674: LitStr "La Partida: "
  loc_B29677: FLdRfVar var_D4
  loc_B2967A: FLdUI1
  loc_B2967E: CI2UI1
  loc_B29680: FLdRfVar var_98
  loc_B29683: CStrVarVal var_D0
  loc_B29687: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B2968C: ILdRf var_D4
  loc_B2968F: ConcatStr
  loc_B29690: FStStrNoPop var_E8
  loc_B29693: LitStr " de Nivel "
  loc_B29696: ConcatStr
  loc_B29697: FStStrNoPop var_110
  loc_B2969A: FLdRfVar var_192
  loc_B2969D: FLdRfVar var_98
  loc_B296A0: CStrVarVal var_EC
  loc_B296A4: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B296A9: FLdUI1
  loc_B296AD: CI2UI1
  loc_B296AF: LitI2_Byte 1
  loc_B296B1: SubI2
  loc_B296B2: CStrUI1
  loc_B296B4: FStStrNoPop var_114
  loc_B296B7: ConcatStr
  loc_B296B8: FStStrNoPop var_138
  loc_B296BB: LitStr " NO EXISTE. Verifique..."
  loc_B296BE: ConcatStr
  loc_B296BF: FStStr var_88
  loc_B296C2: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_EC = "": var_110 = "": var_114 = ""
  loc_B296D5: Branch loc_B2991F
  loc_B296D8: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_B296DB: FLdI2 PeriInfo
  loc_B296DE: CStrUI1
  loc_B296E0: FStStrNoPop var_CC
  loc_B296E3: ConcatStr
  loc_B296E4: FStStrNoPop var_D0
  loc_B296E7: LitStr " AND CodiPart = '"
  loc_B296EA: ConcatStr
  loc_B296EB: CVarStr var_A8
  loc_B296EE: FLdRfVar var_98
  loc_B296F1: ConcatVar var_C8
  loc_B296F5: LitVarStr var_B8, "'"
  loc_B296FA: ConcatVar var_10C
  loc_B296FE: CStrVarVal var_D4
  loc_B29702: Call EjecutarRsCls(from_stack_1v)
  loc_B29707: FFreeStr var_CC = "": var_D0 = ""
  loc_B29710: FFreeVar var_A8 = "": var_C8 = ""
  loc_B29719: FLdRfVar var_190
  loc_B2971C: FLdPr Me
  loc_B2971F: MemLdPr global_56
  loc_B29722:  = Me.RecordCount
  loc_B29727: ILdRf var_190
  loc_B2972A: LitI4 0
  loc_B2972F: GtI4
  loc_B29730: BranchF loc_B29759
  loc_B29733: LitVarStr var_B8, "La Partida "
  loc_B29738: FLdRfVar var_98
  loc_B2973B: ConcatVar var_A8
  loc_B2973F: LitVarStr var_E4, " YA EXISTE. Verifique..."
  loc_B29744: ConcatVar var_C8
  loc_B29748: CStrVarTmp
  loc_B29749: FStStr var_88
  loc_B2974C: FFreeVar var_A8 = ""
  loc_B29753: ExitProcCbHresult
  loc_B29759: FLdRfVar var_18A
  loc_B2975C: FLdRfVar var_98
  loc_B2975F: CStrVarVal var_D4
  loc_B29763: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B29768: LitStr "SELECT * FROM autorizado WHERE PeriInfo = "
  loc_B2976B: FLdI2 PeriInfo
  loc_B2976E: CStrUI1
  loc_B29770: FStStrNoPop var_CC
  loc_B29773: ConcatStr
  loc_B29774: FStStrNoPop var_D0
  loc_B29777: LitStr " AND CodiPart = '"
  loc_B2977A: ConcatStr
  loc_B2977B: FStStrNoPop var_110
  loc_B2977E: FLdRfVar var_EC
  loc_B29781: FLdUI1
  loc_B29785: CI2UI1
  loc_B29787: FLdRfVar var_98
  loc_B2978A: CStrVarVal var_E8
  loc_B2978E: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B29793: ILdRf var_EC
  loc_B29796: ConcatStr
  loc_B29797: FStStrNoPop var_114
  loc_B2979A: LitStr "' LIMIT 1"
  loc_B2979D: ConcatStr
  loc_B2979E: FStStrNoPop var_138
  loc_B297A1: Call EjecutarRsCls(from_stack_1v)
  loc_B297A6: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_110 = "": var_EC = "": var_114 = ""
  loc_B297B9: FLdRfVar var_190
  loc_B297BC: FLdPr Me
  loc_B297BF: MemLdPr global_56
  loc_B297C2:  = Me.RecordCount
  loc_B297C7: ILdRf var_190
  loc_B297CA: LitI4 0
  loc_B297CF: GtI4
  loc_B297D0: BranchF loc_B2985F
  loc_B297D3: FLdRfVar var_18A
  loc_B297D6: FLdRfVar var_98
  loc_B297D9: CStrVarVal var_CC
  loc_B297DD: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B297E2: LitStr "La Partida "
  loc_B297E5: FLdRfVar var_D4
  loc_B297E8: FLdUI1
  loc_B297EC: CI2UI1
  loc_B297EE: FLdRfVar var_98
  loc_B297F1: CStrVarVal var_D0
  loc_B297F5: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B297FA: ILdRf var_D4
  loc_B297FD: ConcatStr
  loc_B297FE: FStStrNoPop var_E8
  loc_B29801: LitStr " tiene Autorizados. Verifique..."
  loc_B29804: ConcatStr
  loc_B29805: FStStr var_88
  loc_B29808: FFreeStr var_CC = "": var_D0 = "": var_D4 = ""
  loc_B29813: LitStr "Municipalidad de Guaymallén"
  loc_B29816: LitStr "Municipalidad de La Paz"
  loc_B29819: EqStr
  loc_B2981B: CVarBoolI2 var_E4
  loc_B2981F: LitI4 4
  loc_B29824: FLdRfVar var_98
  loc_B29827: FLdRfVar var_A8
  loc_B2982A: ImpAdCallFPR4  = Left(, )
  loc_B2982F: FLdRfVar var_A8
  loc_B29832: LitVarStr var_B8, "5122"
  loc_B29837: HardType
  loc_B29838: EqVar var_C8
  loc_B2983C: AndVar var_10C
  loc_B29840: CBoolVarNull
  loc_B29842: FFreeVar var_A8 = ""
  loc_B29849: BranchF loc_B29859
  loc_B2984C: LitStr "Advertencia: "
  loc_B2984F: ILdRf var_88
  loc_B29852: ConcatStr
  loc_B29853: FStStr var_88
  loc_B29856: Branch loc_B2985F
  loc_B29859: ExitProcCbHresult
  loc_B2985F: FLdRfVar var_18A
  loc_B29862: FLdRfVar var_98
  loc_B29865: CStrVarVal var_D4
  loc_B29869: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B2986E: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_B29871: FLdI2 PeriInfo
  loc_B29874: CStrUI1
  loc_B29876: FStStrNoPop var_CC
  loc_B29879: ConcatStr
  loc_B2987A: FStStrNoPop var_D0
  loc_B2987D: LitStr " AND CodiPart = '"
  loc_B29880: ConcatStr
  loc_B29881: FStStrNoPop var_110
  loc_B29884: FLdRfVar var_EC
  loc_B29887: FLdUI1
  loc_B2988B: CI2UI1
  loc_B2988D: FLdRfVar var_98
  loc_B29890: CStrVarVal var_E8
  loc_B29894: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B29899: ILdRf var_EC
  loc_B2989C: ConcatStr
  loc_B2989D: FStStrNoPop var_114
  loc_B298A0: LitStr "' LIMIT 1"
  loc_B298A3: ConcatStr
  loc_B298A4: FStStrNoPop var_138
  loc_B298A7: Call EjecutarRsCls(from_stack_1v)
  loc_B298AC: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_E8 = "": var_110 = "": var_EC = "": var_114 = ""
  loc_B298BF: FLdRfVar var_190
  loc_B298C2: FLdPr Me
  loc_B298C5: MemLdPr global_56
  loc_B298C8:  = Me.RecordCount
  loc_B298CD: ILdRf var_190
  loc_B298D0: LitI4 0
  loc_B298D5: GtI4
  loc_B298D6: BranchF loc_B2991F
  loc_B298D9: FLdRfVar var_18A
  loc_B298DC: FLdRfVar var_98
  loc_B298DF: CStrVarVal var_CC
  loc_B298E3: from_stack_2v = NivelPartida(from_stack_1v)
  loc_B298E8: LitStr "La Partida "
  loc_B298EB: FLdRfVar var_D4
  loc_B298EE: FLdUI1
  loc_B298F2: CI2UI1
  loc_B298F4: FLdRfVar var_98
  loc_B298F7: CStrVarVal var_D0
  loc_B298FB: from_stack_3v = PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_B29900: ILdRf var_D4
  loc_B29903: ConcatStr
  loc_B29904: FStStrNoPop var_E8
  loc_B29907: LitStr " tiene Imputaciones. Verifique..."
  loc_B2990A: ConcatStr
  loc_B2990B: FStStr var_88
  loc_B2990E: FFreeStr var_CC = "": var_D0 = "": var_D4 = ""
  loc_B29919: ExitProcCbHresult
  loc_B2991F: ExitProcCbHresult
End Function

Public Function NivelPartida(CodiPart) 'AA7318
  'Data Table: 413990
  loc_AA6E18: ILdRf CodiPart
  loc_AA6E1B: FStStrCopy var_8C
  loc_AA6E1E: LitI2_Byte 0
  loc_AA6E20: CUI1I2
  loc_AA6E22: FStUI1 var_86
  loc_AA6E26: LitVarI2 var_AC, 2
  loc_AA6E2B: LitI4 7
  loc_AA6E30: ILdRf var_8C
  loc_AA6E33: ImpAdCallI2 Mid$(, , )
  loc_AA6E38: FStStrNoPop var_B0
  loc_AA6E3B: LitStr "00"
  loc_AA6E3E: NeStr
  loc_AA6E40: LitVarI2 var_D0, 2
  loc_AA6E45: LitI4 5
  loc_AA6E4A: ILdRf var_8C
  loc_AA6E4D: ImpAdCallI2 Mid$(, , )
  loc_AA6E52: FStStrNoPop var_D4
  loc_AA6E55: LitStr "00"
  loc_AA6E58: NeStr
  loc_AA6E5A: AndI4
  loc_AA6E5B: LitVarI2 var_F4, 1
  loc_AA6E60: LitI4 4
  loc_AA6E65: ILdRf var_8C
  loc_AA6E68: ImpAdCallI2 Mid$(, , )
  loc_AA6E6D: FStStrNoPop var_F8
  loc_AA6E70: LitStr "0"
  loc_AA6E73: NeStr
  loc_AA6E75: AndI4
  loc_AA6E76: LitVarI2 var_118, 1
  loc_AA6E7B: LitI4 3
  loc_AA6E80: ILdRf var_8C
  loc_AA6E83: ImpAdCallI2 Mid$(, , )
  loc_AA6E88: FStStrNoPop var_11C
  loc_AA6E8B: LitStr "0"
  loc_AA6E8E: NeStr
  loc_AA6E90: AndI4
  loc_AA6E91: LitVarI2 var_13C, 1
  loc_AA6E96: LitI4 2
  loc_AA6E9B: ILdRf var_8C
  loc_AA6E9E: ImpAdCallI2 Mid$(, , )
  loc_AA6EA3: FStStrNoPop var_140
  loc_AA6EA6: LitStr "0"
  loc_AA6EA9: NeStr
  loc_AA6EAB: AndI4
  loc_AA6EAC: LitVarI2 var_160, 1
  loc_AA6EB1: LitI4 1
  loc_AA6EB6: ILdRf var_8C
  loc_AA6EB9: ImpAdCallI2 Mid$(, , )
  loc_AA6EBE: FStStrNoPop var_164
  loc_AA6EC1: LitStr "0"
  loc_AA6EC4: NeStr
  loc_AA6EC6: AndI4
  loc_AA6EC7: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA6ED6: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA6EE5: BranchF loc_AA6EF9
  loc_AA6EE8: LitI2_Byte 6
  loc_AA6EEA: CUI1I2
  loc_AA6EEC: FStUI1 var_86
  loc_AA6EF0: ExitProcCbHresult
  loc_AA6EF6: Branch loc_AA730F
  loc_AA6EF9: LitVarI2 var_AC, 2
  loc_AA6EFE: LitI4 5
  loc_AA6F03: ILdRf var_8C
  loc_AA6F06: ImpAdCallI2 Mid$(, , )
  loc_AA6F0B: FStStrNoPop var_B0
  loc_AA6F0E: LitStr "00"
  loc_AA6F11: NeStr
  loc_AA6F13: LitVarI2 var_D0, 2
  loc_AA6F18: LitI4 7
  loc_AA6F1D: ILdRf var_8C
  loc_AA6F20: ImpAdCallI2 Mid$(, , )
  loc_AA6F25: FStStrNoPop var_D4
  loc_AA6F28: LitStr "00"
  loc_AA6F2B: EqStr
  loc_AA6F2D: AndI4
  loc_AA6F2E: LitVarI2 var_F4, 1
  loc_AA6F33: LitI4 4
  loc_AA6F38: ILdRf var_8C
  loc_AA6F3B: ImpAdCallI2 Mid$(, , )
  loc_AA6F40: FStStrNoPop var_F8
  loc_AA6F43: LitStr "0"
  loc_AA6F46: NeStr
  loc_AA6F48: AndI4
  loc_AA6F49: LitVarI2 var_118, 1
  loc_AA6F4E: LitI4 3
  loc_AA6F53: ILdRf var_8C
  loc_AA6F56: ImpAdCallI2 Mid$(, , )
  loc_AA6F5B: FStStrNoPop var_11C
  loc_AA6F5E: LitStr "0"
  loc_AA6F61: NeStr
  loc_AA6F63: AndI4
  loc_AA6F64: LitVarI2 var_13C, 1
  loc_AA6F69: LitI4 2
  loc_AA6F6E: ILdRf var_8C
  loc_AA6F71: ImpAdCallI2 Mid$(, , )
  loc_AA6F76: FStStrNoPop var_140
  loc_AA6F79: LitStr "0"
  loc_AA6F7C: NeStr
  loc_AA6F7E: AndI4
  loc_AA6F7F: LitVarI2 var_160, 1
  loc_AA6F84: LitI4 1
  loc_AA6F89: ILdRf var_8C
  loc_AA6F8C: ImpAdCallI2 Mid$(, , )
  loc_AA6F91: FStStrNoPop var_164
  loc_AA6F94: LitStr "0"
  loc_AA6F97: NeStr
  loc_AA6F99: AndI4
  loc_AA6F9A: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA6FA9: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA6FB8: BranchF loc_AA6FCC
  loc_AA6FBB: LitI2_Byte 5
  loc_AA6FBD: CUI1I2
  loc_AA6FBF: FStUI1 var_86
  loc_AA6FC3: ExitProcCbHresult
  loc_AA6FC9: Branch loc_AA730F
  loc_AA6FCC: LitVarI2 var_AC, 1
  loc_AA6FD1: LitI4 4
  loc_AA6FD6: ILdRf var_8C
  loc_AA6FD9: ImpAdCallI2 Mid$(, , )
  loc_AA6FDE: FStStrNoPop var_B0
  loc_AA6FE1: LitStr "0"
  loc_AA6FE4: NeStr
  loc_AA6FE6: LitVarI2 var_D0, 2
  loc_AA6FEB: LitI4 7
  loc_AA6FF0: ILdRf var_8C
  loc_AA6FF3: ImpAdCallI2 Mid$(, , )
  loc_AA6FF8: FStStrNoPop var_D4
  loc_AA6FFB: LitStr "00"
  loc_AA6FFE: EqStr
  loc_AA7000: AndI4
  loc_AA7001: LitVarI2 var_F4, 2
  loc_AA7006: LitI4 5
  loc_AA700B: ILdRf var_8C
  loc_AA700E: ImpAdCallI2 Mid$(, , )
  loc_AA7013: FStStrNoPop var_F8
  loc_AA7016: LitStr "00"
  loc_AA7019: EqStr
  loc_AA701B: AndI4
  loc_AA701C: LitVarI2 var_118, 1
  loc_AA7021: LitI4 3
  loc_AA7026: ILdRf var_8C
  loc_AA7029: ImpAdCallI2 Mid$(, , )
  loc_AA702E: FStStrNoPop var_11C
  loc_AA7031: LitStr "0"
  loc_AA7034: NeStr
  loc_AA7036: AndI4
  loc_AA7037: LitVarI2 var_13C, 1
  loc_AA703C: LitI4 2
  loc_AA7041: ILdRf var_8C
  loc_AA7044: ImpAdCallI2 Mid$(, , )
  loc_AA7049: FStStrNoPop var_140
  loc_AA704C: LitStr "0"
  loc_AA704F: NeStr
  loc_AA7051: AndI4
  loc_AA7052: LitVarI2 var_160, 1
  loc_AA7057: LitI4 1
  loc_AA705C: ILdRf var_8C
  loc_AA705F: ImpAdCallI2 Mid$(, , )
  loc_AA7064: FStStrNoPop var_164
  loc_AA7067: LitStr "0"
  loc_AA706A: NeStr
  loc_AA706C: AndI4
  loc_AA706D: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA707C: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA708B: BranchF loc_AA709F
  loc_AA708E: LitI2_Byte 4
  loc_AA7090: CUI1I2
  loc_AA7092: FStUI1 var_86
  loc_AA7096: ExitProcCbHresult
  loc_AA709C: Branch loc_AA730F
  loc_AA709F: LitVarI2 var_AC, 1
  loc_AA70A4: LitI4 3
  loc_AA70A9: ILdRf var_8C
  loc_AA70AC: ImpAdCallI2 Mid$(, , )
  loc_AA70B1: FStStrNoPop var_B0
  loc_AA70B4: LitStr "0"
  loc_AA70B7: NeStr
  loc_AA70B9: LitVarI2 var_D0, 2
  loc_AA70BE: LitI4 7
  loc_AA70C3: ILdRf var_8C
  loc_AA70C6: ImpAdCallI2 Mid$(, , )
  loc_AA70CB: FStStrNoPop var_D4
  loc_AA70CE: LitStr "00"
  loc_AA70D1: EqStr
  loc_AA70D3: AndI4
  loc_AA70D4: LitVarI2 var_F4, 2
  loc_AA70D9: LitI4 5
  loc_AA70DE: ILdRf var_8C
  loc_AA70E1: ImpAdCallI2 Mid$(, , )
  loc_AA70E6: FStStrNoPop var_F8
  loc_AA70E9: LitStr "00"
  loc_AA70EC: EqStr
  loc_AA70EE: AndI4
  loc_AA70EF: LitVarI2 var_118, 1
  loc_AA70F4: LitI4 4
  loc_AA70F9: ILdRf var_8C
  loc_AA70FC: ImpAdCallI2 Mid$(, , )
  loc_AA7101: FStStrNoPop var_11C
  loc_AA7104: LitStr "0"
  loc_AA7107: EqStr
  loc_AA7109: AndI4
  loc_AA710A: LitVarI2 var_13C, 1
  loc_AA710F: LitI4 2
  loc_AA7114: ILdRf var_8C
  loc_AA7117: ImpAdCallI2 Mid$(, , )
  loc_AA711C: FStStrNoPop var_140
  loc_AA711F: LitStr "0"
  loc_AA7122: NeStr
  loc_AA7124: AndI4
  loc_AA7125: LitVarI2 var_160, 1
  loc_AA712A: LitI4 1
  loc_AA712F: ILdRf var_8C
  loc_AA7132: ImpAdCallI2 Mid$(, , )
  loc_AA7137: FStStrNoPop var_164
  loc_AA713A: LitStr "0"
  loc_AA713D: NeStr
  loc_AA713F: AndI4
  loc_AA7140: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA714F: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA715E: BranchF loc_AA7172
  loc_AA7161: LitI2_Byte 3
  loc_AA7163: CUI1I2
  loc_AA7165: FStUI1 var_86
  loc_AA7169: ExitProcCbHresult
  loc_AA716F: Branch loc_AA730F
  loc_AA7172: LitVarI2 var_AC, 1
  loc_AA7177: LitI4 2
  loc_AA717C: ILdRf var_8C
  loc_AA717F: ImpAdCallI2 Mid$(, , )
  loc_AA7184: FStStrNoPop var_B0
  loc_AA7187: LitStr "0"
  loc_AA718A: NeStr
  loc_AA718C: LitVarI2 var_D0, 2
  loc_AA7191: LitI4 7
  loc_AA7196: ILdRf var_8C
  loc_AA7199: ImpAdCallI2 Mid$(, , )
  loc_AA719E: FStStrNoPop var_D4
  loc_AA71A1: LitStr "00"
  loc_AA71A4: EqStr
  loc_AA71A6: AndI4
  loc_AA71A7: LitVarI2 var_F4, 2
  loc_AA71AC: LitI4 5
  loc_AA71B1: ILdRf var_8C
  loc_AA71B4: ImpAdCallI2 Mid$(, , )
  loc_AA71B9: FStStrNoPop var_F8
  loc_AA71BC: LitStr "00"
  loc_AA71BF: EqStr
  loc_AA71C1: AndI4
  loc_AA71C2: LitVarI2 var_118, 1
  loc_AA71C7: LitI4 4
  loc_AA71CC: ILdRf var_8C
  loc_AA71CF: ImpAdCallI2 Mid$(, , )
  loc_AA71D4: FStStrNoPop var_11C
  loc_AA71D7: LitStr "0"
  loc_AA71DA: EqStr
  loc_AA71DC: AndI4
  loc_AA71DD: LitVarI2 var_13C, 1
  loc_AA71E2: LitI4 3
  loc_AA71E7: ILdRf var_8C
  loc_AA71EA: ImpAdCallI2 Mid$(, , )
  loc_AA71EF: FStStrNoPop var_140
  loc_AA71F2: LitStr "0"
  loc_AA71F5: EqStr
  loc_AA71F7: AndI4
  loc_AA71F8: LitVarI2 var_160, 1
  loc_AA71FD: LitI4 1
  loc_AA7202: ILdRf var_8C
  loc_AA7205: ImpAdCallI2 Mid$(, , )
  loc_AA720A: FStStrNoPop var_164
  loc_AA720D: LitStr "0"
  loc_AA7210: NeStr
  loc_AA7212: AndI4
  loc_AA7213: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA7222: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA7231: BranchF loc_AA7245
  loc_AA7234: LitI2_Byte 2
  loc_AA7236: CUI1I2
  loc_AA7238: FStUI1 var_86
  loc_AA723C: ExitProcCbHresult
  loc_AA7242: Branch loc_AA730F
  loc_AA7245: LitVarI2 var_AC, 1
  loc_AA724A: LitI4 1
  loc_AA724F: ILdRf var_8C
  loc_AA7252: ImpAdCallI2 Mid$(, , )
  loc_AA7257: FStStrNoPop var_B0
  loc_AA725A: LitStr "0"
  loc_AA725D: NeStr
  loc_AA725F: LitVarI2 var_D0, 2
  loc_AA7264: LitI4 7
  loc_AA7269: ILdRf var_8C
  loc_AA726C: ImpAdCallI2 Mid$(, , )
  loc_AA7271: FStStrNoPop var_D4
  loc_AA7274: LitStr "00"
  loc_AA7277: EqStr
  loc_AA7279: AndI4
  loc_AA727A: LitVarI2 var_F4, 2
  loc_AA727F: LitI4 5
  loc_AA7284: ILdRf var_8C
  loc_AA7287: ImpAdCallI2 Mid$(, , )
  loc_AA728C: FStStrNoPop var_F8
  loc_AA728F: LitStr "00"
  loc_AA7292: EqStr
  loc_AA7294: AndI4
  loc_AA7295: LitVarI2 var_118, 1
  loc_AA729A: LitI4 4
  loc_AA729F: ILdRf var_8C
  loc_AA72A2: ImpAdCallI2 Mid$(, , )
  loc_AA72A7: FStStrNoPop var_11C
  loc_AA72AA: LitStr "0"
  loc_AA72AD: EqStr
  loc_AA72AF: AndI4
  loc_AA72B0: LitVarI2 var_13C, 1
  loc_AA72B5: LitI4 3
  loc_AA72BA: ILdRf var_8C
  loc_AA72BD: ImpAdCallI2 Mid$(, , )
  loc_AA72C2: FStStrNoPop var_140
  loc_AA72C5: LitStr "0"
  loc_AA72C8: EqStr
  loc_AA72CA: AndI4
  loc_AA72CB: LitVarI2 var_160, 1
  loc_AA72D0: LitI4 2
  loc_AA72D5: ILdRf var_8C
  loc_AA72D8: ImpAdCallI2 Mid$(, , )
  loc_AA72DD: FStStrNoPop var_164
  loc_AA72E0: LitStr "0"
  loc_AA72E3: EqStr
  loc_AA72E5: AndI4
  loc_AA72E6: FFreeStr var_B0 = "": var_D4 = "": var_F8 = "": var_11C = "": var_140 = ""
  loc_AA72F5: FFreeVar var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = ""
  loc_AA7304: BranchF loc_AA730F
  loc_AA7307: LitI2_Byte 1
  loc_AA7309: CUI1I2
  loc_AA730B: FStUI1 var_86
  loc_AA730F: ExitProcCbHresult
End Function

Public Function PartidaNivelSuperior(CodiPart, Nivel) '9B7A7C
  'Data Table: 413990
  loc_9B79CC: ILdRf CodiPart
  loc_9B79CF: FStStrCopy var_8C
  loc_9B79D2: ZeroRetVal
  loc_9B79D4: FLdI2 Nivel
  loc_9B79D7: FStI2 var_96
  loc_9B79DA: FLdI2 var_96
  loc_9B79DD: LitI2_Byte 2
  loc_9B79DF: EqI2
  loc_9B79E0: BranchF loc_9B79F4
  loc_9B79E3: LitI2_Byte 1
  loc_9B79E5: CUI1I2
  loc_9B79E7: FStUI1 var_8E
  loc_9B79EB: LitStr "0000000"
  loc_9B79EE: FStStrCopy PartidaNivelSuperior
  loc_9B79F1: Branch loc_9B7A59
  loc_9B79F4: FLdI2 var_96
  loc_9B79F7: LitI2_Byte 3
  loc_9B79F9: EqI2
  loc_9B79FA: BranchF loc_9B7A0E
  loc_9B79FD: LitI2_Byte 2
  loc_9B79FF: CUI1I2
  loc_9B7A01: FStUI1 var_8E
  loc_9B7A05: LitStr "000000"
  loc_9B7A08: FStStrCopy PartidaNivelSuperior
  loc_9B7A0B: Branch loc_9B7A59
  loc_9B7A0E: FLdI2 var_96
  loc_9B7A11: LitI2_Byte 4
  loc_9B7A13: EqI2
  loc_9B7A14: BranchF loc_9B7A28
  loc_9B7A17: LitI2_Byte 3
  loc_9B7A19: CUI1I2
  loc_9B7A1B: FStUI1 var_8E
  loc_9B7A1F: LitStr "00000"
  loc_9B7A22: FStStrCopy PartidaNivelSuperior
  loc_9B7A25: Branch loc_9B7A59
  loc_9B7A28: FLdI2 var_96
  loc_9B7A2B: LitI2_Byte 5
  loc_9B7A2D: EqI2
  loc_9B7A2E: BranchF loc_9B7A42
  loc_9B7A31: LitI2_Byte 4
  loc_9B7A33: CUI1I2
  loc_9B7A35: FStUI1 var_8E
  loc_9B7A39: LitStr "0000"
  loc_9B7A3C: FStStrCopy PartidaNivelSuperior
  loc_9B7A3F: Branch loc_9B7A59
  loc_9B7A42: FLdI2 var_96
  loc_9B7A45: LitI2_Byte 6
  loc_9B7A47: EqI2
  loc_9B7A48: BranchF loc_9B7A59
  loc_9B7A4B: LitI2_Byte 6
  loc_9B7A4D: CUI1I2
  loc_9B7A4F: FStUI1 var_8E
  loc_9B7A53: LitStr "00"
  loc_9B7A56: FStStrCopy PartidaNivelSuperior
  loc_9B7A59: FLdUI1
  loc_9B7A5D: CI4UI1
  loc_9B7A5E: ILdRf var_8C
  loc_9B7A61: ImpAdCallI2 Left$(, )
  loc_9B7A66: FStStrNoPop var_9C
  loc_9B7A69: ILdRf PartidaNivelSuperior
  loc_9B7A6C: ConcatStr
  loc_9B7A6D: FStStr var_88
  loc_9B7A70: FFree1Str var_9C
  loc_9B7A73: ExitProcCbHresult
End Function

Private Function Proc_25_29_97509C() '97509C
  'Data Table: 413990
  loc_975078: LitStr "Primary"
  loc_97507B: FLdPr Me
  loc_97507E: LateIdLdVar var_94 DispID_4 0
  loc_975085: CastAdVar Me
  loc_975089: FStAdFunc var_98
  loc_97508C: FLdPr var_98
  loc_975094: FFree1Ad var_98
  loc_975097: FFree1Var var_94 = ""
  loc_97509A: ExitProcHresult
End Function

Private Function Proc_25_30_94D44C(arg_C) '94D44C
  'Data Table: 413990
  loc_94D434: ILdI4 arg_C
  loc_94D437: LitStr "Primary"
  loc_94D43A: EqStr
  loc_94D43C: BranchF loc_94D449
  loc_94D43F: FLdPr Me
  loc_94D442: MemLdStr RsFrm
  loc_94D445: IStAd
  loc_94D449: ExitProcHresult
End Function

Private Function Proc_25_31_9A17C8() '9A17C8
  'Data Table: 413990
  loc_9A1748: FLdUI1
  loc_9A174C: FStUI1 var_88
  loc_9A1750: FLdUI1
  loc_9A1754: LitI2_Byte 2
  loc_9A1756: CUI1I2
  loc_9A1758: EqI2
  loc_9A1759: BranchF loc_9A1767
  loc_9A175C: LitI2_Byte 1
  loc_9A175E: CUI1I2
  loc_9A1760: FStUI1 var_86
  loc_9A1764: Branch loc_9A17C0
  loc_9A1767: FLdUI1
  loc_9A176B: LitI2_Byte 3
  loc_9A176D: CUI1I2
  loc_9A176F: EqI2
  loc_9A1770: BranchF loc_9A177E
  loc_9A1773: LitI2_Byte 2
  loc_9A1775: CUI1I2
  loc_9A1777: FStUI1 var_86
  loc_9A177B: Branch loc_9A17C0
  loc_9A177E: FLdUI1
  loc_9A1782: LitI2_Byte 4
  loc_9A1784: CUI1I2
  loc_9A1786: EqI2
  loc_9A1787: BranchF loc_9A1795
  loc_9A178A: LitI2_Byte 3
  loc_9A178C: CUI1I2
  loc_9A178E: FStUI1 var_86
  loc_9A1792: Branch loc_9A17C0
  loc_9A1795: FLdUI1
  loc_9A1799: LitI2_Byte 5
  loc_9A179B: CUI1I2
  loc_9A179D: EqI2
  loc_9A179E: BranchF loc_9A17AC
  loc_9A17A1: LitI2_Byte 4
  loc_9A17A3: CUI1I2
  loc_9A17A5: FStUI1 var_86
  loc_9A17A9: Branch loc_9A17C0
  loc_9A17AC: FLdUI1
  loc_9A17B0: LitI2_Byte 6
  loc_9A17B2: CUI1I2
  loc_9A17B4: EqI2
  loc_9A17B5: BranchF loc_9A17C0
  loc_9A17B8: LitI2_Byte 6
  loc_9A17BA: CUI1I2
  loc_9A17BC: FStUI1 var_86
  loc_9A17C0: ExitProcCbHresult
  loc_9A17C6: Ary1LdRf
End Function
