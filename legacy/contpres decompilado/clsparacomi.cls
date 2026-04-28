VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsparacomi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '407E20
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '407E2F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '407E3E
  RsFrm = Value
End Sub

Public Sub MoveFirst() '970BCC
  'Data Table: 407C90
  loc_970BA4: FLdRfVar var_88
  loc_970BA7: FLdPr Me
  loc_970BAA: MemLdPr RsFrm
  loc_970BAD:  = Me.RecordCount
  loc_970BB2: ILdRf var_88
  loc_970BB5: LitI4 0
  loc_970BBA: GtI4
  loc_970BBB: BranchF loc_970BC9
  loc_970BBE: FLdPr Me
  loc_970BC1: MemLdPr RsFrm
  loc_970BC4: Me.MoveFirst
  loc_970BC9: ExitProcHresult
End Sub

Public Sub MoveLast() '970D2C
  'Data Table: 407C90
  loc_970D04: FLdRfVar var_88
  loc_970D07: FLdPr Me
  loc_970D0A: MemLdPr RsFrm
  loc_970D0D:  = Me.RecordCount
  loc_970D12: ILdRf var_88
  loc_970D15: LitI4 0
  loc_970D1A: GtI4
  loc_970D1B: BranchF loc_970D29
  loc_970D1E: FLdPr Me
  loc_970D21: MemLdPr RsFrm
  loc_970D24: Me.MoveLast
  loc_970D29: ExitProcHresult
End Sub

Public Sub MoveNext() '99C398
  'Data Table: 407C90
  loc_99C320: FLdRfVar var_86
  loc_99C323: FLdPr Me
  loc_99C326: MemLdPr RsFrm
  loc_99C329:  = Me.EOF
  loc_99C32E: FLdI2 var_86
  loc_99C331: NotI4
  loc_99C332: FLdRfVar var_8C
  loc_99C335: FLdPr Me
  loc_99C338: MemLdPr RsFrm
  loc_99C33B:  = Me.RecordCount
  loc_99C340: ILdRf var_8C
  loc_99C343: LitI4 0
  loc_99C348: GtI4
  loc_99C349: AndI4
  loc_99C34A: BranchF loc_99C358
  loc_99C34D: FLdPr Me
  loc_99C350: MemLdPr RsFrm
  loc_99C353: Me.MoveNext
  loc_99C358: FLdRfVar var_86
  loc_99C35B: FLdPr Me
  loc_99C35E: MemLdPr RsFrm
  loc_99C361:  = Me.EOF
  loc_99C366: FLdI2 var_86
  loc_99C369: FLdRfVar var_8C
  loc_99C36C: FLdPr Me
  loc_99C36F: MemLdPr RsFrm
  loc_99C372:  = Me.RecordCount
  loc_99C377: ILdRf var_8C
  loc_99C37A: LitI4 0
  loc_99C37F: GtI4
  loc_99C380: AndI4
  loc_99C381: BranchF loc_99C394
  loc_99C384: ImpAdCallFPR4 Beep()
  loc_99C389: FLdPr Me
  loc_99C38C: MemLdPr RsFrm
  loc_99C38F: Me.MoveLast
  loc_99C394: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941990
  'Data Table: 407C90
  loc_941984: FLdPr Me
  loc_941987: MemLdPr RsFrm
  loc_94198A: Me.MoveNext
  loc_94198F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99C788
  'Data Table: 407C90
  loc_99C710: FLdRfVar var_86
  loc_99C713: FLdPr Me
  loc_99C716: MemLdPr RsFrm
  loc_99C719:  = Me.BOF
  loc_99C71E: FLdI2 var_86
  loc_99C721: NotI4
  loc_99C722: FLdRfVar var_8C
  loc_99C725: FLdPr Me
  loc_99C728: MemLdPr RsFrm
  loc_99C72B:  = Me.RecordCount
  loc_99C730: ILdRf var_8C
  loc_99C733: LitI4 0
  loc_99C738: GtI4
  loc_99C739: AndI4
  loc_99C73A: BranchF loc_99C748
  loc_99C73D: FLdPr Me
  loc_99C740: MemLdPr RsFrm
  loc_99C743: Me.MovePrevious
  loc_99C748: FLdRfVar var_86
  loc_99C74B: FLdPr Me
  loc_99C74E: MemLdPr RsFrm
  loc_99C751:  = Me.BOF
  loc_99C756: FLdI2 var_86
  loc_99C759: FLdRfVar var_8C
  loc_99C75C: FLdPr Me
  loc_99C75F: MemLdPr RsFrm
  loc_99C762:  = Me.RecordCount
  loc_99C767: ILdRf var_8C
  loc_99C76A: LitI4 0
  loc_99C76F: GtI4
  loc_99C770: AndI4
  loc_99C771: BranchF loc_99C784
  loc_99C774: ImpAdCallFPR4 Beep()
  loc_99C779: FLdPr Me
  loc_99C77C: MemLdPr RsFrm
  loc_99C77F: Me.MoveFirst
  loc_99C784: ExitProcHresult
End Sub

Public Property Get EOF() '95EF44
  'Data Table: 407C90
  loc_95EF28: FLdRfVar var_88
  loc_95EF2B: FLdPr Me
  loc_95EF2E: MemLdPr RsFrm
  loc_95EF31:  = Me.EOF
  loc_95EF36: FLdI2 var_88
  loc_95EF39: FStI2 var_86
  loc_95EF3C: ExitProcCbHresult
End Sub

Public Property Get BOF() '95EEAC
  'Data Table: 407C90
  loc_95EE90: FLdRfVar var_88
  loc_95EE93: FLdPr Me
  loc_95EE96: MemLdPr RsFrm
  loc_95EE99:  = Me.BOF
  loc_95EE9E: FLdI2 var_88
  loc_95EEA1: FStI2 var_86
  loc_95EEA4: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946604
  'Data Table: 407C90
  loc_9465F4: ILdI4 sOrden
  loc_9465F7: FLdPr Me
  loc_9465FA: MemLdPr RsFrm
  loc_9465FD: Me.Sort = from_stack_1
  loc_946602: ExitProcHresult
End Sub

Public Sub Find(sFind) '9683E0
  'Data Table: 407C90
  loc_9683C0: LitVar_Missing var_94
  loc_9683C3: PopAdLdVar
  loc_9683C4: LitI4 1
  loc_9683C9: LitI4 0
  loc_9683CE: ILdI4 sFind
  loc_9683D1: FLdPr Me
  loc_9683D4: MemLdPr RsFrm
  loc_9683D7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9683DC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95EC00
  'Data Table: 407C90
  loc_95EBE4: FLdRfVar var_8C
  loc_95EBE7: FLdPr Me
  loc_95EBEA: MemLdPr RsFrm
  loc_95EBED:  = Me.AbsolutePosition
  loc_95EBF2: ILdRf var_8C
  loc_95EBF5: FStR4 var_88
  loc_95EBF8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95EAD0
  'Data Table: 407C90
  loc_95EAB4: FLdRfVar var_8C
  loc_95EAB7: FLdPr Me
  loc_95EABA: MemLdPr RsFrm
  loc_95EABD:  = Me.RecordCount
  loc_95EAC2: ILdRf var_8C
  loc_95EAC5: FStR4 var_88
  loc_95EAC8: ExitProcCbHresult
End Sub

Public Function AddNew(PeriInfo, MesPaco, ExorImpu, CodiPart, CodiOrga) '9C8284
  'Data Table: 407C90
  loc_9C81E0: ILdRf MesPaco
  loc_9C81E3: FStStrCopy var_8C
  loc_9C81E6: ILdRf ExorImpu
  loc_9C81E9: FStStrCopy var_90
  loc_9C81EC: ILdRf CodiPart
  loc_9C81EF: FStStrCopy AddNew
  loc_9C81F2: ILdRf CodiOrga
  loc_9C81F5: FStStrCopy var_98
  loc_9C81F8: ZeroRetVal
  loc_9C81FA: LitStr "REPLACE INTO paracomi (PeriInfo,MesPaco,ExorImpu,CodiPart,CodiOrga)"
  loc_9C81FD: LitStr " VALUES ("
  loc_9C8200: ConcatStr
  loc_9C8201: FStStrNoPop var_9C
  loc_9C8204: FLdI2 PeriInfo
  loc_9C8207: CStrUI1
  loc_9C8209: FStStrNoPop var_A0
  loc_9C820C: ConcatStr
  loc_9C820D: FStStrNoPop var_A4
  loc_9C8210: LitStr ",'"
  loc_9C8213: ConcatStr
  loc_9C8214: FStStrNoPop var_A8
  loc_9C8217: ILdRf var_8C
  loc_9C821A: ConcatStr
  loc_9C821B: FStStrNoPop var_AC
  loc_9C821E: LitStr "','"
  loc_9C8221: ConcatStr
  loc_9C8222: FStStrNoPop var_B0
  loc_9C8225: ILdRf var_90
  loc_9C8228: ConcatStr
  loc_9C8229: FStStrNoPop var_B4
  loc_9C822C: LitStr "','"
  loc_9C822F: ConcatStr
  loc_9C8230: FStStrNoPop var_B8
  loc_9C8233: ILdRf AddNew
  loc_9C8236: ConcatStr
  loc_9C8237: FStStrNoPop var_BC
  loc_9C823A: LitStr "','"
  loc_9C823D: ConcatStr
  loc_9C823E: FStStrNoPop var_C0
  loc_9C8241: ILdRf var_98
  loc_9C8244: ConcatStr
  loc_9C8245: FStStrNoPop var_C4
  loc_9C8248: LitStr "');"
  loc_9C824B: ConcatStr
  loc_9C824C: FStStrNoPop var_C8
  loc_9C824F: Call EjecutarRsCls(from_stack_1v)
  loc_9C8254: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_9C826F: ILdRf var_8C
  loc_9C8272: CUI1Str
  loc_9C8274: FLdI2 PeriInfo
  loc_9C8277: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9C827C: ExitProcCbHresult
End Function

Public Sub Modificar(PeriInfo, MesPaco, ExorImpu, CodiPart, CodiOrga) 'A19254
  'Data Table: 407C90
  loc_A1910C: ILdRf PeriInfo
  loc_A1910F: FStStrCopy var_88
  loc_A19112: ILdRf MesPaco
  loc_A19115: FStStrCopy var_8C
  loc_A19118: ILdRf ExorImpu
  loc_A1911B: FStStrCopy var_90
  loc_A1911E: ILdRf CodiPart
  loc_A19121: FStStrCopy var_94
  loc_A19124: ILdRf CodiOrga
  loc_A19127: FStStrCopy var_98
  loc_A1912A: LitStr "UPDATE paracomi"
  loc_A1912D: LitStr " SET MesPaco='"
  loc_A19130: ConcatStr
  loc_A19131: FStStrNoPop var_9C
  loc_A19134: ILdRf var_8C
  loc_A19137: ConcatStr
  loc_A19138: FStStrNoPop var_A0
  loc_A1913B: LitStr "', ExorImpu='"
  loc_A1913E: ConcatStr
  loc_A1913F: FStStrNoPop var_A4
  loc_A19142: ILdRf var_90
  loc_A19145: ConcatStr
  loc_A19146: FStStrNoPop var_A8
  loc_A19149: LitStr "', CodiPart='"
  loc_A1914C: ConcatStr
  loc_A1914D: FStStrNoPop var_AC
  loc_A19150: ILdRf var_94
  loc_A19153: ConcatStr
  loc_A19154: FStStrNoPop var_B0
  loc_A19157: LitStr "', CodiOrga = '"
  loc_A1915A: ConcatStr
  loc_A1915B: FStStrNoPop var_B4
  loc_A1915E: ILdRf var_98
  loc_A19161: ConcatStr
  loc_A19162: FStStrNoPop var_B8
  loc_A19165: LitStr "'"
  loc_A19168: ConcatStr
  loc_A19169: FStStrNoPop var_BC
  loc_A1916C: LitStr " WHERE PeriInfo = "
  loc_A1916F: ConcatStr
  loc_A19170: CVarStr var_F4
  loc_A19173: FLdRfVar var_E4
  loc_A19176: FLdRfVar var_D4
  loc_A19179: LitVarStr var_D0, "PeriInfo"
  loc_A1917E: PopAdLdVar
  loc_A1917F: FLdRfVar var_C0
  loc_A19182: FLdPr Me
  loc_A19185: MemLdPr RsFrm
  loc_A19188:  = Me.Fields
  loc_A1918D: FLdPr var_C0
  loc_A19190: from_stack_2 = Me.Item(from_stack_1)
  loc_A19195: FLdPr var_D4
  loc_A19198:  = Me.Value
  loc_A1919D: FLdRfVar var_E4
  loc_A191A0: ConcatVar var_104
  loc_A191A4: LitVarStr var_114, ";"
  loc_A191A9: ConcatVar var_124
  loc_A191AD: CStrVarVal var_128
  loc_A191B1: Call EjecutarRsCls(from_stack_1v)
  loc_A191B6: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A191CD: FFreeAd var_C0 = ""
  loc_A191D4: FFreeVar var_F4 = "": var_E4 = "": var_104 = ""
  loc_A191DF: FLdRfVar var_E4
  loc_A191E2: FLdRfVar var_D4
  loc_A191E5: LitVarStr var_D0, "PeriInfo"
  loc_A191EA: PopAdLdVar
  loc_A191EB: FLdRfVar var_C0
  loc_A191EE: FLdPr Me
  loc_A191F1: MemLdPr RsFrm
  loc_A191F4:  = Me.Fields
  loc_A191F9: FLdPr var_C0
  loc_A191FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A19201: FLdPr var_D4
  loc_A19204:  = Me.Value
  loc_A19209: FLdRfVar var_F4
  loc_A1920C: FLdRfVar var_130
  loc_A1920F: LitVarStr var_114, "MesPaco"
  loc_A19214: PopAdLdVar
  loc_A19215: FLdRfVar var_12C
  loc_A19218: FLdPr Me
  loc_A1921B: MemLdPr RsFrm
  loc_A1921E:  = Me.Fields
  loc_A19223: FLdPr var_12C
  loc_A19226: from_stack_2 = Me.Item(from_stack_1)
  loc_A1922B: FLdPr var_130
  loc_A1922E:  = Me.Value
  loc_A19233: FLdRfVar var_F4
  loc_A19236: CUI1Var
  loc_A19238: FLdRfVar var_E4
  loc_A1923B: CI2Var
  loc_A1923C: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A19241: FFreeAd var_C0 = "": var_12C = "": var_D4 = ""
  loc_A1924C: FFreeVar var_E4 = ""
  loc_A19253: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, MesPaco) '9DEF8C
  'Data Table: 407C90
  loc_9DEE88: FLdI2 PeriInfo
  loc_9DEE8B: LitI2_Byte 0
  loc_9DEE8D: EqI2
  loc_9DEE8E: FLdRfVar var_88
  loc_9DEE91: FLdPr Me
  loc_9DEE94: MemLdPr RsFrm
  loc_9DEE97:  = Me.RecordCount
  loc_9DEE9C: ILdRf var_88
  loc_9DEE9F: LitI4 0
  loc_9DEEA4: GtI4
  loc_9DEEA5: AndI4
  loc_9DEEA6: FLdRfVar var_8C
  loc_9DEEA9: FLdPr Me
  loc_9DEEAC: MemLdPr RsFrm
  loc_9DEEAF:  = Me.AbsolutePosition
  loc_9DEEB4: ILdRf var_8C
  loc_9DEEB7: LitI4 -3
  loc_9DEEBC: NeI4
  loc_9DEEBD: AndI4
  loc_9DEEBE: BranchF loc_9DEEFC
  loc_9DEEC1: FLdRfVar var_B4
  loc_9DEEC4: FLdRfVar var_A4
  loc_9DEEC7: LitVarStr var_A0, "PeriInfo"
  loc_9DEECC: PopAdLdVar
  loc_9DEECD: FLdRfVar var_90
  loc_9DEED0: FLdPr Me
  loc_9DEED3: MemLdPr RsFrm
  loc_9DEED6:  = Me.Fields
  loc_9DEEDB: FLdPr var_90
  loc_9DEEDE: from_stack_2 = Me.Item(from_stack_1)
  loc_9DEEE3: FLdPr var_A4
  loc_9DEEE6:  = Me.Value
  loc_9DEEEB: FLdRfVar var_B4
  loc_9DEEEE: CI2Var
  loc_9DEEEF: FStI2 PeriInfo
  loc_9DEEF2: FFreeAd var_90 = ""
  loc_9DEEF9: FFree1Var var_B4 = ""
  loc_9DEEFC: Call Requery()
  loc_9DEF01: LitStr "PeriInfo = '"
  loc_9DEF04: FLdI2 PeriInfo
  loc_9DEF07: CStrUI1
  loc_9DEF09: FStStrNoPop var_B8
  loc_9DEF0C: ConcatStr
  loc_9DEF0D: FStStrNoPop var_BC
  loc_9DEF10: LitStr "'"
  loc_9DEF13: ConcatStr
  loc_9DEF14: PopTmpLdAdStr
  loc_9DEF18: Call Find(from_stack_1v)
  loc_9DEF1D: FFreeStr var_B8 = "": var_BC = ""
  loc_9DEF26: LitStr "MesPaco = '"
  loc_9DEF29: FLdUI1
  loc_9DEF2D: CStrI2
  loc_9DEF2F: FStStrNoPop var_B8
  loc_9DEF32: ConcatStr
  loc_9DEF33: FStStrNoPop var_BC
  loc_9DEF36: LitStr "'"
  loc_9DEF39: ConcatStr
  loc_9DEF3A: PopTmpLdAdStr
  loc_9DEF3E: Call Find(from_stack_1v)
  loc_9DEF43: FFreeStr var_B8 = "": var_BC = ""
  loc_9DEF4C: FLdRfVar var_88
  loc_9DEF4F: FLdPr Me
  loc_9DEF52: MemLdPr RsFrm
  loc_9DEF55:  = Me.RecordCount
  loc_9DEF5A: ILdRf var_88
  loc_9DEF5D: LitI4 0
  loc_9DEF62: GtI4
  loc_9DEF63: FLdRfVar var_8C
  loc_9DEF66: FLdPr Me
  loc_9DEF69: MemLdPr RsFrm
  loc_9DEF6C:  = Me.AbsolutePosition
  loc_9DEF71: ILdRf var_8C
  loc_9DEF74: LitI4 -3
  loc_9DEF79: EqI4
  loc_9DEF7A: AndI4
  loc_9DEF7B: BranchF loc_9DEF89
  loc_9DEF7E: FLdPr Me
  loc_9DEF81: MemLdPr RsFrm
  loc_9DEF84: Me.MoveFirst
  loc_9DEF89: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '971274
  'Data Table: 407C90
  loc_97124C: ILdRf sSelect
  loc_97124F: FStStrCopy var_88
  loc_971252: FLdPr Me
  loc_971255: MemLdRfVar from_stack_1.RsFrm
  loc_971258: ILdRf var_88
  loc_97125B: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_971260: LitVarStr var_98, "Primary"
  loc_971265: PopAdLdVar
  loc_971266: FLdPr Me
  loc_971269: LateIdCall
  loc_971271: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95E14C
  'Data Table: 407C90
  loc_95E134: ILdRf sSelect
  loc_95E137: FStStrCopy var_88
  loc_95E13A: FLdPr Me
  loc_95E13D: MemLdRfVar from_stack_1.global_56
  loc_95E140: ILdRf var_88
  loc_95E143: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_95E148: ExitProcHresult
End Sub

Public Sub Requery() '968250
  'Data Table: 407C90
  loc_968230: FLdPr Me
  loc_968233: MemLdRfVar from_stack_1.RsFrm
  loc_968236: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_96823B: LitVarStr var_94, "Primary"
  loc_968240: PopAdLdVar
  loc_968241: FLdPr Me
  loc_968244: LateIdCall
  loc_96824C: ExitProcHresult
End Sub

Public Property Get DataSource() '9713E0
  'Data Table: 407C90
  loc_9713BC: ZeroRetVal
  loc_9713BE: FLdRfVar var_8C
  loc_9713C1: FLdPr Me
  loc_9713C4: MemLdPr RsFrm
  loc_9713C7:  = Me.DataSource
  loc_9713CC: ILdRf var_8C
  loc_9713CF: CastAd
  loc_9713D2: FStAdFunc var_88
  loc_9713D5: FFree1Ad var_8C
  loc_9713D8: ExitProcCbHresult
End Sub

Private Function Proc_291_21_9A90C4(arg_C, arg_10) '9A90C4
  'Data Table: 407C90
  loc_9A904C: ILdRf arg_10
  loc_9A904F: FStStrCopy var_8C
  loc_9A9052: ZeroRetVal
  loc_9A9054: LitStr "SELECT PeriInfo"
  loc_9A9057: LitStr " FROM paracomi"
  loc_9A905A: ConcatStr
  loc_9A905B: FStStrNoPop var_90
  loc_9A905E: LitStr " WHERE PeriInfo = "
  loc_9A9061: ConcatStr
  loc_9A9062: FStStrNoPop var_94
  loc_9A9065: FLdI2 arg_C
  loc_9A9068: CStrUI1
  loc_9A906A: FStStrNoPop var_98
  loc_9A906D: ConcatStr
  loc_9A906E: FStStrNoPop var_9C
  loc_9A9071: LitStr " AND MesPaco = '"
  loc_9A9074: ConcatStr
  loc_9A9075: FStStrNoPop var_A0
  loc_9A9078: ILdRf var_8C
  loc_9A907B: ConcatStr
  loc_9A907C: FStStrNoPop var_A4
  loc_9A907F: LitStr "';"
  loc_9A9082: ConcatStr
  loc_9A9083: FStStrNoPop var_A8
  loc_9A9086: Call EjecutarRsCls(from_stack_1v)
  loc_9A908B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A909C: FLdRfVar var_AC
  loc_9A909F: FLdPr Me
  loc_9A90A2: MemLdPr global_56
  loc_9A90A5:  = Me.RecordCount
  loc_9A90AA: ILdRf var_AC
  loc_9A90AD: LitI4 0
  loc_9A90B2: GtI4
  loc_9A90B3: BranchF loc_9A90BC
  loc_9A90B6: LitStr "EL Parámetro YA EXISTE. Verifique..."
  loc_9A90B9: FStStrCopy var_88
  loc_9A90BC: ExitProcCbHresult
End Function

Private Function Proc_291_22_971498() '971498
  'Data Table: 407C90
  loc_971474: LitStr "Primary"
  loc_971477: FLdPr Me
  loc_97147A: LateIdLdVar var_94 DispID_4 0
  loc_971481: CastAdVar Me
  loc_971485: FStAdFunc var_98
  loc_971488: FLdPr var_98
  loc_971490: FFree1Ad var_98
  loc_971493: FFree1Var var_94 = ""
  loc_971496: ExitProcHresult
End Function

Private Function Proc_291_23_9681FC(arg_C) '9681FC
  'Data Table: 407C90
  loc_9681E0: ILdI4 arg_C
  loc_9681E3: FStStrCopy var_88
  loc_9681E6: ILdRf var_88
  loc_9681E9: LitStr "Primary"
  loc_9681EC: EqStr
  loc_9681EE: BranchF loc_9681FB
  loc_9681F1: FLdPr Me
  loc_9681F4: MemLdStr RsFrm
  loc_9681F7: IStAd
  loc_9681FB: ExitProcHresult
End Function
