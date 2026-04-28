VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipocompra"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40B2B4
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40B2C3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40B2D2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96D944
  'Data Table: 40B100
  loc_96D91C: FLdRfVar var_88
  loc_96D91F: FLdPr Me
  loc_96D922: MemLdPr RsFrm
  loc_96D925:  = Me.RecordCount
  loc_96D92A: ILdRf var_88
  loc_96D92D: LitI4 0
  loc_96D932: GtI4
  loc_96D933: BranchF loc_96D941
  loc_96D936: FLdPr Me
  loc_96D939: MemLdPr RsFrm
  loc_96D93C: Me.MoveFirst
  loc_96D941: ExitProcHresult
End Sub

Public Sub MoveLast() '96D894
  'Data Table: 40B100
  loc_96D86C: FLdRfVar var_88
  loc_96D86F: FLdPr Me
  loc_96D872: MemLdPr RsFrm
  loc_96D875:  = Me.RecordCount
  loc_96D87A: ILdRf var_88
  loc_96D87D: LitI4 0
  loc_96D882: GtI4
  loc_96D883: BranchF loc_96D891
  loc_96D886: FLdPr Me
  loc_96D889: MemLdPr RsFrm
  loc_96D88C: Me.MoveLast
  loc_96D891: ExitProcHresult
  loc_96D892: FStFPR8 var_7701
End Sub

Public Sub MoveNext() '99E5B8
  'Data Table: 40B100
  loc_99E540: FLdRfVar var_86
  loc_99E543: FLdPr Me
  loc_99E546: MemLdPr RsFrm
  loc_99E549:  = Me.EOF
  loc_99E54E: FLdI2 var_86
  loc_99E551: NotI4
  loc_99E552: FLdRfVar var_8C
  loc_99E555: FLdPr Me
  loc_99E558: MemLdPr RsFrm
  loc_99E55B:  = Me.RecordCount
  loc_99E560: ILdRf var_8C
  loc_99E563: LitI4 0
  loc_99E568: GtI4
  loc_99E569: AndI4
  loc_99E56A: BranchF loc_99E578
  loc_99E56D: FLdPr Me
  loc_99E570: MemLdPr RsFrm
  loc_99E573: Me.MoveNext
  loc_99E578: FLdRfVar var_86
  loc_99E57B: FLdPr Me
  loc_99E57E: MemLdPr RsFrm
  loc_99E581:  = Me.EOF
  loc_99E586: FLdI2 var_86
  loc_99E589: FLdRfVar var_8C
  loc_99E58C: FLdPr Me
  loc_99E58F: MemLdPr RsFrm
  loc_99E592:  = Me.RecordCount
  loc_99E597: ILdRf var_8C
  loc_99E59A: LitI4 0
  loc_99E59F: GtI4
  loc_99E5A0: AndI4
  loc_99E5A1: BranchF loc_99E5B4
  loc_99E5A4: ImpAdCallFPR4 Beep()
  loc_99E5A9: FLdPr Me
  loc_99E5AC: MemLdPr RsFrm
  loc_99E5AF: Me.MoveLast
  loc_99E5B4: ExitProcHresult
  loc_99E5B5: VCallFPR8 unk_40C101
End Sub

Public Sub MoveSiguiente() '940F40
  'Data Table: 40B100
  loc_940F34: FLdPr Me
  loc_940F37: MemLdPr RsFrm
  loc_940F3A: Me.MoveNext
  loc_940F3F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9486C0
  'Data Table: 40B100
  loc_9486AC: LitVar_Missing var_94
  loc_9486AF: PopAdLdVar
  loc_9486B0: ILdI2 iValor
  loc_9486B3: CI4UI1
  loc_9486B4: FLdPr Me
  loc_9486B7: MemLdPr RsFrm
  loc_9486BA: Me.Move from_stack_1, from_stack_2
  loc_9486BF: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E660
  'Data Table: 40B100
  loc_99E5E8: FLdRfVar var_86
  loc_99E5EB: FLdPr Me
  loc_99E5EE: MemLdPr RsFrm
  loc_99E5F1:  = Me.BOF
  loc_99E5F6: FLdI2 var_86
  loc_99E5F9: NotI4
  loc_99E5FA: FLdRfVar var_8C
  loc_99E5FD: FLdPr Me
  loc_99E600: MemLdPr RsFrm
  loc_99E603:  = Me.RecordCount
  loc_99E608: ILdRf var_8C
  loc_99E60B: LitI4 0
  loc_99E610: GtI4
  loc_99E611: AndI4
  loc_99E612: BranchF loc_99E620
  loc_99E615: FLdPr Me
  loc_99E618: MemLdPr RsFrm
  loc_99E61B: Me.MovePrevious
  loc_99E620: FLdRfVar var_86
  loc_99E623: FLdPr Me
  loc_99E626: MemLdPr RsFrm
  loc_99E629:  = Me.BOF
  loc_99E62E: FLdI2 var_86
  loc_99E631: FLdRfVar var_8C
  loc_99E634: FLdPr Me
  loc_99E637: MemLdPr RsFrm
  loc_99E63A:  = Me.RecordCount
  loc_99E63F: ILdRf var_8C
  loc_99E642: LitI4 0
  loc_99E647: GtI4
  loc_99E648: AndI4
  loc_99E649: BranchF loc_99E65C
  loc_99E64C: ImpAdCallFPR4 Beep()
  loc_99E651: FLdPr Me
  loc_99E654: MemLdPr RsFrm
  loc_99E657: Me.MoveFirst
  loc_99E65C: ExitProcHresult
End Sub

Public Property Get EOF() '958088
  'Data Table: 40B100
  loc_95806C: FLdRfVar var_88
  loc_95806F: FLdPr Me
  loc_958072: MemLdPr RsFrm
  loc_958075:  = Me.EOF
  loc_95807A: FLdI2 var_88
  loc_95807D: FStI2 var_86
  loc_958080: ExitProcCbHresult
End Sub

Public Property Get BOF() '95803C
  'Data Table: 40B100
  loc_958020: FLdRfVar var_88
  loc_958023: FLdPr Me
  loc_958026: MemLdPr RsFrm
  loc_958029:  = Me.BOF
  loc_95802E: FLdI2 var_88
  loc_958031: FStI2 var_86
  loc_958034: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9471C4
  'Data Table: 40B100
  loc_9471B4: ILdI4 sOrden
  loc_9471B7: FLdPr Me
  loc_9471BA: MemLdPr RsFrm
  loc_9471BD: Me.Sort = from_stack_1
  loc_9471C2: ExitProcHresult
End Sub

Public Sub Find(sFind) '969D80
  'Data Table: 40B100
  loc_969D60: LitVar_Missing var_94
  loc_969D63: PopAdLdVar
  loc_969D64: LitI4 1
  loc_969D69: LitI4 0
  loc_969D6E: ILdI4 sFind
  loc_969D71: FLdPr Me
  loc_969D74: MemLdPr RsFrm
  loc_969D77: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_969D7C: ExitProcHresult
  loc_969D7D: Ary1LdRf
End Sub

Public Sub Filter(sCriterio) '948748
  'Data Table: 40B100
  loc_948734: ILdI4 sCriterio
  loc_948737: CVarStr var_94
  loc_94873A: PopAdLdVar
  loc_94873B: FLdPr Me
  loc_94873E: MemLdPr RsFrm
  loc_948741: Me.Filter = from_stack_1
  loc_948746: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '961920
  'Data Table: 40B100
  loc_961904: FLdRfVar var_8C
  loc_961907: FLdPr Me
  loc_96190A: MemLdPr RsFrm
  loc_96190D:  = Me.AbsolutePosition
  loc_961912: ILdRf var_8C
  loc_961915: FStR4 var_88
  loc_961918: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '957EC0
  'Data Table: 40B100
  loc_957EA4: FLdRfVar var_8C
  loc_957EA7: FLdPr Me
  loc_957EAA: MemLdPr RsFrm
  loc_957EAD:  = Me.RecordCount
  loc_957EB2: ILdRf var_8C
  loc_957EB5: FStR4 var_88
  loc_957EB8: ExitProcCbHresult
End Sub

Public Function AddNew(DetaTico, LimiTico, CucuPers, MareTico, DipaTico) 'A17AA4
  'Data Table: 40B100
  loc_A17968: ILdRf DetaTico
  loc_A1796B: FStStrCopy var_8C
  loc_A1796E: ILdRf MareTico
  loc_A17971: FStStrCopy var_90
  loc_A17974: ILdRf DipaTico
  loc_A17977: FStStrCopy AddNew
  loc_A1797A: LitStr "SELECT IFNULL(Max(CodiTico),0)+1 CodiTico"
  loc_A1797D: LitStr " FROM tipocompra"
  loc_A17980: ConcatStr
  loc_A17981: FStStrNoPop var_98
  loc_A17984: Call EjecutarRsCls(from_stack_1v)
  loc_A17989: FFree1Str var_98
  loc_A1798C: FLdRfVar var_C0
  loc_A1798F: FLdRfVar var_B0
  loc_A17992: LitVarStr var_AC, "CodiTico"
  loc_A17997: PopAdLdVar
  loc_A17998: FLdRfVar var_9C
  loc_A1799B: FLdPr Me
  loc_A1799E: MemLdPr global_56
  loc_A179A1:  = Me.Fields
  loc_A179A6: FLdPr var_9C
  loc_A179A9: from_stack_2 = Me.Item(from_stack_1)
  loc_A179AE: FLdPr var_B0
  loc_A179B1:  = Me.Value
  loc_A179B6: FLdRfVar var_C0
  loc_A179B9: CUI1Var
  loc_A179BB: FStUI1 var_86
  loc_A179BF: FFreeAd var_9C = ""
  loc_A179C6: FFree1Var var_C0 = ""
  loc_A179C9: LitStr "INSERT INTO tipocompra (CodiTico,DetaTico,LimiTico,ColiTico,CucuPers,MareTico,DipaTico,AltaUsua)"
  loc_A179CC: LitStr " VALUES ("
  loc_A179CF: ConcatStr
  loc_A179D0: FStStrNoPop var_98
  loc_A179D3: FLdUI1
  loc_A179D7: CStrI2
  loc_A179D9: FStStrNoPop var_C4
  loc_A179DC: ConcatStr
  loc_A179DD: FStStrNoPop var_C8
  loc_A179E0: LitStr ",'"
  loc_A179E3: ConcatStr
  loc_A179E4: FStStrNoPop var_CC
  loc_A179E7: ILdRf var_8C
  loc_A179EA: ConcatStr
  loc_A179EB: FStStrNoPop var_D0
  loc_A179EE: LitStr "',"
  loc_A179F1: ConcatStr
  loc_A179F2: FStStrNoPop var_D8
  loc_A179F5: LitI4 0
  loc_A179FA: LitI4 -1
  loc_A179FF: LitI4 1
  loc_A17A04: LitStr "."
  loc_A17A07: LitStr ","
  loc_A17A0A: FLdFPR8 LimiTico
  loc_A17A0D: CStrR8
  loc_A17A0F: FStStrNoPop var_D4
  loc_A17A12: ImpAdCallI2 Replace(, , , , , )
  loc_A17A17: FStStrNoPop var_DC
  loc_A17A1A: ConcatStr
  loc_A17A1B: FStStrNoPop var_E0
  loc_A17A1E: LitStr ",0,"
  loc_A17A21: ConcatStr
  loc_A17A22: FStStrNoPop var_E4
  loc_A17A25: ILdRf var_90
  loc_A17A28: ConcatStr
  loc_A17A29: FStStrNoPop var_E8
  loc_A17A2C: LitStr ",'"
  loc_A17A2F: ConcatStr
  loc_A17A30: FStStrNoPop var_EC
  loc_A17A33: ILdRf AddNew
  loc_A17A36: ConcatStr
  loc_A17A37: FStStrNoPop var_F0
  loc_A17A3A: LitStr "',"
  loc_A17A3D: ConcatStr
  loc_A17A3E: FStStrNoPop var_F4
  loc_A17A41: FLdI2 arg_20
  loc_A17A44: CStrUI1
  loc_A17A46: FStStrNoPop var_F8
  loc_A17A49: ConcatStr
  loc_A17A4A: FStStrNoPop var_FC
  loc_A17A4D: LitStr ",'"
  loc_A17A50: ConcatStr
  loc_A17A51: FStStrNoPop var_100
  loc_A17A54: ImpAdLdI4 MemVar_C3D03C
  loc_A17A57: ConcatStr
  loc_A17A58: FStStrNoPop var_104
  loc_A17A5B: LitStr "')"
  loc_A17A5E: ConcatStr
  loc_A17A5F: FStStrNoPop var_108
  loc_A17A62: Call EjecutarRsCls(from_stack_1v)
  loc_A17A67: FFreeStr var_98 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_A17A90: FLdUI1
  loc_A17A94: CI2UI1
  loc_A17A96: Call Encontrar(from_stack_1v)
  loc_A17A9B: ExitProcCbHresult
End Function

Public Sub Modificar(DetaTico, LimiTico, CucuPers, MareTico, DipaTico) 'A166E8
  'Data Table: 40B100
  loc_A165AC: ILdRf DetaTico
  loc_A165AF: FStStrCopy var_88
  loc_A165B2: ILdRf MareTico
  loc_A165B5: FStStrCopy var_8C
  loc_A165B8: ILdRf DipaTico
  loc_A165BB: FStStrCopy var_90
  loc_A165BE: LitStr "UPDATE tipocompra SET DetaTico='"
  loc_A165C1: ILdRf var_88
  loc_A165C4: ConcatStr
  loc_A165C5: FStStrNoPop var_94
  loc_A165C8: LitStr "',LimiTico="
  loc_A165CB: ConcatStr
  loc_A165CC: FStStrNoPop var_9C
  loc_A165CF: LitI4 0
  loc_A165D4: LitI4 -1
  loc_A165D9: LitI4 1
  loc_A165DE: LitStr "."
  loc_A165E1: LitStr ","
  loc_A165E4: FLdFPR8 LimiTico
  loc_A165E7: CStrR8
  loc_A165E9: FStStrNoPop var_98
  loc_A165EC: ImpAdCallI2 Replace(, , , , , )
  loc_A165F1: FStStrNoPop var_A0
  loc_A165F4: ConcatStr
  loc_A165F5: FStStrNoPop var_A4
  loc_A165F8: LitStr ",CucuPers='"
  loc_A165FB: ConcatStr
  loc_A165FC: FStStrNoPop var_A8
  loc_A165FF: ILdRf var_8C
  loc_A16602: ConcatStr
  loc_A16603: FStStrNoPop var_AC
  loc_A16606: LitStr "',MareTico='"
  loc_A16609: ConcatStr
  loc_A1660A: FStStrNoPop var_B0
  loc_A1660D: ILdRf var_90
  loc_A16610: ConcatStr
  loc_A16611: FStStrNoPop var_B4
  loc_A16614: LitStr "',DipaTico="
  loc_A16617: ConcatStr
  loc_A16618: FStStrNoPop var_B8
  loc_A1661B: FLdI2 arg_20
  loc_A1661E: CStrUI1
  loc_A16620: FStStrNoPop var_BC
  loc_A16623: ConcatStr
  loc_A16624: FStStrNoPop var_C0
  loc_A16627: LitStr ",ModiUsua='"
  loc_A1662A: ConcatStr
  loc_A1662B: FStStrNoPop var_C4
  loc_A1662E: ImpAdLdI4 MemVar_C3D03C
  loc_A16631: ConcatStr
  loc_A16632: FStStrNoPop var_C8
  loc_A16635: LitStr "',ModiFeho=Now() WHERE CodiTico="
  loc_A16638: ConcatStr
  loc_A16639: CVarStr var_100
  loc_A1663C: FLdRfVar var_F0
  loc_A1663F: FLdRfVar var_E0
  loc_A16642: LitVarStr var_DC, "CodiTico"
  loc_A16647: PopAdLdVar
  loc_A16648: FLdRfVar var_CC
  loc_A1664B: FLdPr Me
  loc_A1664E: MemLdPr RsFrm
  loc_A16651:  = Me.Fields
  loc_A16656: FLdPr var_CC
  loc_A16659: from_stack_2 = Me.Item(from_stack_1)
  loc_A1665E: FLdPr var_E0
  loc_A16661:  = Me.Value
  loc_A16666: FLdRfVar var_F0
  loc_A16669: ConcatVar var_110
  loc_A1666D: CStrVarVal var_114
  loc_A16671: Call EjecutarRsCls(from_stack_1v)
  loc_A16676: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A16697: FFreeAd var_CC = ""
  loc_A1669E: FFreeVar var_100 = "": var_F0 = ""
  loc_A166A7: FLdRfVar var_F0
  loc_A166AA: FLdRfVar var_E0
  loc_A166AD: LitVarStr var_DC, "CodiTico"
  loc_A166B2: PopAdLdVar
  loc_A166B3: FLdRfVar var_CC
  loc_A166B6: FLdPr Me
  loc_A166B9: MemLdPr RsFrm
  loc_A166BC:  = Me.Fields
  loc_A166C1: FLdPr var_CC
  loc_A166C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A166C9: FLdPr var_E0
  loc_A166CC:  = Me.Value
  loc_A166D1: FLdRfVar var_F0
  loc_A166D4: CI2Var
  loc_A166D5: Call Encontrar(from_stack_1v)
  loc_A166DA: FFreeAd var_CC = ""
  loc_A166E1: FFree1Var var_F0 = ""
  loc_A166E4: ExitProcHresult
End Sub

Public Sub Eliminar(CodiTico) '9A4228
  'Data Table: 40B100
  loc_9A41AC: LitStr "DELETE FROM tipocompra WHERE CodiTico="
  loc_9A41AF: FLdUI1
  loc_9A41B3: CStrI2
  loc_9A41B5: FStStrNoPop var_88
  loc_9A41B8: ConcatStr
  loc_9A41B9: FStStrNoPop var_8C
  loc_9A41BC: Call EjecutarRsCls(from_stack_1v)
  loc_9A41C1: FFreeStr var_88 = ""
  loc_9A41C8: FLdRfVar var_94
  loc_9A41CB: FLdPr Me
  loc_9A41CE: MemLdPr RsFrm
  loc_9A41D1:  = Me.AbsolutePosition
  loc_9A41D6: ILdRf var_94
  loc_9A41D9: FStR4 var_90
  loc_9A41DC: Call Requery()
  loc_9A41E1: FLdRfVar var_94
  loc_9A41E4: FLdPr Me
  loc_9A41E7: MemLdPr RsFrm
  loc_9A41EA:  = Me.RecordCount
  loc_9A41EF: ILdRf var_94
  loc_9A41F2: LitI4 0
  loc_9A41F7: GtI4
  loc_9A41F8: BranchF loc_9A4224
  loc_9A41FB: Call MoveFirst()
  loc_9A4200: ILdRf var_90
  loc_9A4203: LitI4 1
  loc_9A4208: GtI4
  loc_9A4209: BranchF loc_9A4224
  loc_9A420C: LitVar_Missing var_A4
  loc_9A420F: PopAdLdVar
  loc_9A4210: ILdRf var_90
  loc_9A4213: LitI4 2
  loc_9A4218: SubI4
  loc_9A4219: FLdPr Me
  loc_9A421C: MemLdPr RsFrm
  loc_9A421F: Me.Move from_stack_1, from_stack_2
  loc_9A4224: ExitProcHresult
  loc_9A4225: ILdR8 arg_1B
End Sub

Public Sub Encontrar(CodiTico) '97C7C8
  'Data Table: 40B100
  loc_97C79C: Call Requery()
  loc_97C7A1: LitStr "CodiTico = '"
  loc_97C7A4: FLdI2 CodiTico
  loc_97C7A7: CStrUI1
  loc_97C7A9: FStStrNoPop var_88
  loc_97C7AC: ConcatStr
  loc_97C7AD: FStStrNoPop var_8C
  loc_97C7B0: LitStr "'"
  loc_97C7B3: ConcatStr
  loc_97C7B4: PopTmpLdAdStr
  loc_97C7B8: Call Find(from_stack_1v)
  loc_97C7BD: FFreeStr var_88 = "": var_8C = ""
  loc_97C7C6: ExitProcHresult
  loc_97C7C7: Ary1LdPr
End Sub

Public Sub RedefineRS(sSelect) '973EA8
  'Data Table: 40B100
  loc_973E80: ILdRf sSelect
  loc_973E83: FStStrCopy var_88
  loc_973E86: FLdPr Me
  loc_973E89: MemLdRfVar from_stack_1.RsFrm
  loc_973E8C: ILdRf var_88
  loc_973E8F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973E94: LitVarStr var_98, "Primary"
  loc_973E99: PopAdLdVar
  loc_973E9A: FLdPr Me
  loc_973E9D: LateIdCall
  loc_973EA5: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9616BC
  'Data Table: 40B100
  loc_9616A4: ILdRf sSelect
  loc_9616A7: FStStrCopy var_88
  loc_9616AA: FLdPr Me
  loc_9616AD: MemLdRfVar from_stack_1.global_56
  loc_9616B0: ILdRf var_88
  loc_9616B3: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_9616B8: ExitProcHresult
  loc_9616B9: StAryMove
End Sub

Public Sub Requery() '969DD0
  'Data Table: 40B100
  loc_969DB0: FLdPr Me
  loc_969DB3: MemLdRfVar from_stack_1.RsFrm
  loc_969DB6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_969DBB: LitVarStr var_94, "Primary"
  loc_969DC0: PopAdLdVar
  loc_969DC1: FLdPr Me
  loc_969DC4: LateIdCall
  loc_969DCC: ExitProcHresult
  loc_969DCD: Ary1LdCy
End Sub

Public Property Get DataSource() '9739F8
  'Data Table: 40B100
  loc_9739D4: ZeroRetVal
  loc_9739D6: FLdRfVar var_8C
  loc_9739D9: FLdPr Me
  loc_9739DC: MemLdPr RsFrm
  loc_9739DF:  = Me.DataSource
  loc_9739E4: ILdRf var_8C
  loc_9739E7: CastAd
  loc_9739EA: FStAdFunc var_88
  loc_9739ED: FFree1Ad var_8C
  loc_9739F0: ExitProcCbHresult
  loc_9739F6: LdPrVar
End Sub

Public Function ValidaEliminar(CodiTico) '98EE2C
  'Data Table: 40B100
  loc_98EDE8: ZeroRetVal
  loc_98EDEA: LitStr "SELECT CodiTico FROM notapedido WHERE CodiTico = "
  loc_98EDED: FLdUI1
  loc_98EDF1: CStrI2
  loc_98EDF3: FStStrNoPop var_8C
  loc_98EDF6: ConcatStr
  loc_98EDF7: FStStrNoPop var_90
  loc_98EDFA: Call EjecutarRsCls(from_stack_1v)
  loc_98EDFF: FFreeStr var_8C = ""
  loc_98EE06: FLdRfVar ValidaEliminar
  loc_98EE09: FLdPr Me
  loc_98EE0C: MemLdPr global_56
  loc_98EE0F:  = Me.RecordCount
  loc_98EE14: ILdRf ValidaEliminar
  loc_98EE17: LitI4 0
  loc_98EE1C: GtI4
  loc_98EE1D: BranchF loc_98EE26
  loc_98EE20: LitStr "El Tipo de Compra está en una Nota de Pedido. Verifique..."
  loc_98EE23: FStStrCopy var_88
  loc_98EE26: ExitProcCbHresult
End Function

Private Function Proc_33_25_974014() '974014
  'Data Table: 40B100
  loc_973FF0: LitStr "Primary"
  loc_973FF3: FLdPr Me
  loc_973FF6: LateIdLdVar var_94 DispID_4 0
  loc_973FFD: CastAdVar Me
  loc_974001: FStAdFunc var_98
  loc_974004: FLdPr var_98
  loc_97400C: FFree1Ad var_98
  loc_97400F: FFree1Var var_94 = ""
  loc_974012: ExitProcHresult
End Function

Private Function Proc_33_26_969E6C(arg_C) '969E6C
  'Data Table: 40B100
  loc_969E50: ILdI4 arg_C
  loc_969E53: FStStrCopy var_88
  loc_969E56: ILdRf var_88
  loc_969E59: LitStr "Primary"
  loc_969E5C: EqStr
  loc_969E5E: BranchF loc_969E6B
  loc_969E61: FLdPr Me
  loc_969E64: MemLdStr RsFrm
  loc_969E67: IStAd
  loc_969E6B: ExitProcHresult
End Function
