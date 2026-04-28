VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsbanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40E8F8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40E907
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40E916
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E864
  'Data Table: 40E704
  loc_96E83C: FLdRfVar var_88
  loc_96E83F: FLdPr Me
  loc_96E842: MemLdPr RsFrm
  loc_96E845:  = Me.RecordCount
  loc_96E84A: ILdRf var_88
  loc_96E84D: LitI4 0
  loc_96E852: GtI4
  loc_96E853: BranchF loc_96E861
  loc_96E856: FLdPr Me
  loc_96E859: MemLdPr RsFrm
  loc_96E85C: Me.MoveFirst
  loc_96E861: ExitProcHresult
End Sub

Public Sub MoveLast() '96E9C4
  'Data Table: 40E704
  loc_96E99C: FLdRfVar var_88
  loc_96E99F: FLdPr Me
  loc_96E9A2: MemLdPr RsFrm
  loc_96E9A5:  = Me.RecordCount
  loc_96E9AA: ILdRf var_88
  loc_96E9AD: LitI4 0
  loc_96E9B2: GtI4
  loc_96E9B3: BranchF loc_96E9C1
  loc_96E9B6: FLdPr Me
  loc_96E9B9: MemLdPr RsFrm
  loc_96E9BC: Me.MoveLast
  loc_96E9C1: ExitProcHresult
End Sub

Public Sub MoveNext() '994370
  'Data Table: 40E704
  loc_994310: FLdRfVar var_86
  loc_994313: FLdPr Me
  loc_994316: MemLdPr RsFrm
  loc_994319:  = Me.EOF
  loc_99431E: FLdI2 var_86
  loc_994321: NotI4
  loc_994322: BranchF loc_994330
  loc_994325: FLdPr Me
  loc_994328: MemLdPr RsFrm
  loc_99432B: Me.MoveNext
  loc_994330: FLdRfVar var_86
  loc_994333: FLdPr Me
  loc_994336: MemLdPr RsFrm
  loc_994339:  = Me.EOF
  loc_99433E: FLdI2 var_86
  loc_994341: FLdRfVar var_8C
  loc_994344: FLdPr Me
  loc_994347: MemLdPr RsFrm
  loc_99434A:  = Me.RecordCount
  loc_99434F: ILdRf var_8C
  loc_994352: LitI4 0
  loc_994357: GtI4
  loc_994358: AndI4
  loc_994359: BranchF loc_99436C
  loc_99435C: ImpAdCallFPR4 Beep()
  loc_994361: FLdPr Me
  loc_994364: MemLdPr RsFrm
  loc_994367: Me.MoveLast
  loc_99436C: ExitProcHresult
  loc_99436D: CI2I4
  loc_99436E: LtCyR8
End Sub

Public Sub Move(iValor) '9493C4
  'Data Table: 40E704
  loc_9493B0: LitVar_Missing var_94
  loc_9493B3: PopAdLdVar
  loc_9493B4: FLdI2 iValor
  loc_9493B7: CI4UI1
  loc_9493B8: FLdPr Me
  loc_9493BB: MemLdPr RsFrm
  loc_9493BE: Me.Move from_stack_1, from_stack_2
  loc_9493C3: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '96C7B8
  'Data Table: 40E704
  loc_96C794: FLdRfVar var_86
  loc_96C797: FLdPr Me
  loc_96C79A: MemLdPr RsFrm
  loc_96C79D:  = Me.EOF
  loc_96C7A2: FLdI2 var_86
  loc_96C7A5: NotI4
  loc_96C7A6: BranchF loc_96C7B4
  loc_96C7A9: FLdPr Me
  loc_96C7AC: MemLdPr RsFrm
  loc_96C7AF: Me.MoveNext
  loc_96C7B4: ExitProcHresult
  loc_96C7B5: ImpAdLdFPR4 MemVar_4012D8
End Sub

Public Sub MovePrevious() '994400
  'Data Table: 40E704
  loc_9943A0: FLdRfVar var_86
  loc_9943A3: FLdPr Me
  loc_9943A6: MemLdPr RsFrm
  loc_9943A9:  = Me.BOF
  loc_9943AE: FLdI2 var_86
  loc_9943B1: NotI4
  loc_9943B2: BranchF loc_9943C0
  loc_9943B5: FLdPr Me
  loc_9943B8: MemLdPr RsFrm
  loc_9943BB: Me.MovePrevious
  loc_9943C0: FLdRfVar var_86
  loc_9943C3: FLdPr Me
  loc_9943C6: MemLdPr RsFrm
  loc_9943C9:  = Me.BOF
  loc_9943CE: FLdI2 var_86
  loc_9943D1: FLdRfVar var_8C
  loc_9943D4: FLdPr Me
  loc_9943D7: MemLdPr RsFrm
  loc_9943DA:  = Me.RecordCount
  loc_9943DF: ILdRf var_8C
  loc_9943E2: LitI4 0
  loc_9943E7: GtI4
  loc_9943E8: AndI4
  loc_9943E9: BranchF loc_9943FC
  loc_9943EC: ImpAdCallFPR4 Beep()
  loc_9943F1: FLdPr Me
  loc_9943F4: MemLdPr RsFrm
  loc_9943F7: Me.MoveFirst
  loc_9943FC: ExitProcHresult
  loc_9943FD: PopAdLdVar
End Sub

Public Property Get EOF() '964854
  'Data Table: 40E704
  loc_964838: FLdRfVar var_88
  loc_96483B: FLdPr Me
  loc_96483E: MemLdPr RsFrm
  loc_964841:  = Me.EOF
  loc_964846: FLdI2 var_88
  loc_964849: FStI2 var_86
  loc_96484C: ExitProcCbHresult
End Sub

Public Property Get BOF() '9647BC
  'Data Table: 40E704
  loc_9647A0: FLdRfVar var_88
  loc_9647A3: FLdPr Me
  loc_9647A6: MemLdPr RsFrm
  loc_9647A9:  = Me.BOF
  loc_9647AE: FLdI2 var_88
  loc_9647B1: FStI2 var_86
  loc_9647B4: ExitProcCbHresult
  loc_9647BA: CRec2Uni var_7400
End Sub

Public Sub Sort(sOrden) '944B04
  'Data Table: 40E704
  loc_944AF4: ILdI4 sOrden
  loc_944AF7: FLdPr Me
  loc_944AFA: MemLdPr RsFrm
  loc_944AFD: Me.Sort = from_stack_1
  loc_944B02: ExitProcHresult
End Sub

Public Sub Find(sFind) '9672B0
  'Data Table: 40E704
  loc_967290: LitVar_Missing var_94
  loc_967293: PopAdLdVar
  loc_967294: LitI4 1
  loc_967299: LitI4 0
  loc_96729E: ILdI4 sFind
  loc_9672A1: FLdPr Me
  loc_9672A4: MemLdPr RsFrm
  loc_9672A7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9672AC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '949408
  'Data Table: 40E704
  loc_9493F4: ILdI4 sCriterio
  loc_9493F7: CVarStr var_94
  loc_9493FA: PopAdLdVar
  loc_9493FB: FLdPr Me
  loc_9493FE: MemLdPr RsFrm
  loc_949401: Me.Filter = from_stack_1
  loc_949406: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9645F4
  'Data Table: 40E704
  loc_9645D8: FLdRfVar var_8C
  loc_9645DB: FLdPr Me
  loc_9645DE: MemLdPr RsFrm
  loc_9645E1:  = Me.AbsolutePosition
  loc_9645E6: ILdRf var_8C
  loc_9645E9: FStR4 var_88
  loc_9645EC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '96455C
  'Data Table: 40E704
  loc_964540: FLdRfVar var_8C
  loc_964543: FLdPr Me
  loc_964546: MemLdPr RsFrm
  loc_964549:  = Me.RecordCount
  loc_96454E: ILdRf var_8C
  loc_964551: FStR4 var_88
  loc_964554: ExitProcCbHresult
  loc_96455A: CopyBytes
End Sub

Public Sub AddNew(PeriInfo, DetaBanc, NumeBanc, CodiCuco, DescBanc) 'A0D6EC
  'Data Table: 40E704
  loc_A0D5CC: ILdRf DetaBanc
  loc_A0D5CF: FStStrCopy var_88
  loc_A0D5D2: ILdRf NumeBanc
  loc_A0D5D5: FStStrCopy var_8C
  loc_A0D5D8: ILdRf CodiCuco
  loc_A0D5DB: FStStrCopy var_90
  loc_A0D5DE: LitStr "SELECT IFNULL(Max(CodiBanc),0) + 1 AS CodiBanc FROM banco"
  loc_A0D5E1: Call EjecutarRsCls(from_stack_1v)
  loc_A0D5E6: FLdRfVar var_BC
  loc_A0D5E9: FLdRfVar var_AC
  loc_A0D5EC: LitVarStr var_A8, "CodiBanc"
  loc_A0D5F1: PopAdLdVar
  loc_A0D5F2: FLdRfVar var_98
  loc_A0D5F5: FLdPr Me
  loc_A0D5F8: MemLdPr global_56
  loc_A0D5FB:  = Me.Fields
  loc_A0D600: FLdPr var_98
  loc_A0D603: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D608: FLdPr var_AC
  loc_A0D60B:  = Me.Value
  loc_A0D610: FLdRfVar var_BC
  loc_A0D613: CI4Var
  loc_A0D615: FStR4 var_94
  loc_A0D618: FFreeAd var_98 = ""
  loc_A0D61F: FFree1Var var_BC = ""
  loc_A0D622: LitStr "INSERT INTO banco (PeriInfo,CodiBanc,DetaBanc,NumeBanc,CodiCuco,UlchBanc,EmauCheq,DescBanc,CodiUsua) VALUES ("
  loc_A0D625: FLdI2 PeriInfo
  loc_A0D628: CStrUI1
  loc_A0D62A: FStStrNoPop var_C0
  loc_A0D62D: ConcatStr
  loc_A0D62E: FStStrNoPop var_C4
  loc_A0D631: LitStr ","
  loc_A0D634: ConcatStr
  loc_A0D635: FStStrNoPop var_C8
  loc_A0D638: ILdRf var_94
  loc_A0D63B: CStrI4
  loc_A0D63D: FStStrNoPop var_CC
  loc_A0D640: ConcatStr
  loc_A0D641: FStStrNoPop var_D0
  loc_A0D644: LitStr ",'"
  loc_A0D647: ConcatStr
  loc_A0D648: FStStrNoPop var_D4
  loc_A0D64B: ILdRf var_88
  loc_A0D64E: ConcatStr
  loc_A0D64F: FStStrNoPop var_D8
  loc_A0D652: LitStr "','"
  loc_A0D655: ConcatStr
  loc_A0D656: FStStrNoPop var_DC
  loc_A0D659: ILdRf var_8C
  loc_A0D65C: ConcatStr
  loc_A0D65D: FStStrNoPop var_E0
  loc_A0D660: LitStr "','"
  loc_A0D663: ConcatStr
  loc_A0D664: FStStrNoPop var_E4
  loc_A0D667: ILdRf var_90
  loc_A0D66A: ConcatStr
  loc_A0D66B: FStStrNoPop var_E8
  loc_A0D66E: LitStr "',0,0,"
  loc_A0D671: ConcatStr
  loc_A0D672: FStStrNoPop var_F0
  loc_A0D675: LitI4 0
  loc_A0D67A: LitI4 -1
  loc_A0D67F: LitI4 1
  loc_A0D684: LitStr "."
  loc_A0D687: LitStr ","
  loc_A0D68A: FLdFPR8 DescBanc
  loc_A0D68D: CStrR8
  loc_A0D68F: FStStrNoPop var_EC
  loc_A0D692: ImpAdCallI2 Replace(, , , , , )
  loc_A0D697: FStStrNoPop var_F4
  loc_A0D69A: ConcatStr
  loc_A0D69B: FStStrNoPop var_F8
  loc_A0D69E: LitStr ",'"
  loc_A0D6A1: ConcatStr
  loc_A0D6A2: FStStrNoPop var_FC
  loc_A0D6A5: ImpAdLdI4 MemVar_C3D03C
  loc_A0D6A8: ConcatStr
  loc_A0D6A9: FStStrNoPop var_100
  loc_A0D6AC: LitStr "')"
  loc_A0D6AF: ConcatStr
  loc_A0D6B0: FStStrNoPop var_104
  loc_A0D6B3: Call EjecutarRsCls(from_stack_1v)
  loc_A0D6B8: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_A0D6DF: ILdRf var_94
  loc_A0D6E2: FLdI2 PeriInfo
  loc_A0D6E5: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A0D6EA: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiBanc, DetaBanc, NumeBanc, CodiCuco, DescBanc) '9DC768
  'Data Table: 40E704
  loc_9DC69C: ILdRf DetaBanc
  loc_9DC69F: FStStrCopy var_88
  loc_9DC6A2: ILdRf NumeBanc
  loc_9DC6A5: FStStrCopy var_8C
  loc_9DC6A8: ILdRf CodiCuco
  loc_9DC6AB: FStStrCopy var_90
  loc_9DC6AE: LitStr "UPDATE banco"
  loc_9DC6B1: LitStr " SET DetaBanc='"
  loc_9DC6B4: ConcatStr
  loc_9DC6B5: FStStrNoPop var_94
  loc_9DC6B8: ILdRf var_88
  loc_9DC6BB: ConcatStr
  loc_9DC6BC: FStStrNoPop var_98
  loc_9DC6BF: LitStr "',NumeBanc='"
  loc_9DC6C2: ConcatStr
  loc_9DC6C3: FStStrNoPop var_9C
  loc_9DC6C6: ILdRf var_8C
  loc_9DC6C9: ConcatStr
  loc_9DC6CA: FStStrNoPop var_A0
  loc_9DC6CD: LitStr "',CodiCuco='"
  loc_9DC6D0: ConcatStr
  loc_9DC6D1: FStStrNoPop var_A4
  loc_9DC6D4: ILdRf var_90
  loc_9DC6D7: ConcatStr
  loc_9DC6D8: FStStrNoPop var_A8
  loc_9DC6DB: LitStr "',DescBanc="
  loc_9DC6DE: ConcatStr
  loc_9DC6DF: FStStrNoPop var_B0
  loc_9DC6E2: LitI4 0
  loc_9DC6E7: LitI4 -1
  loc_9DC6EC: LitI4 1
  loc_9DC6F1: LitStr "."
  loc_9DC6F4: LitStr ","
  loc_9DC6F7: FLdFPR8 DescBanc
  loc_9DC6FA: CStrR8
  loc_9DC6FC: FStStrNoPop var_AC
  loc_9DC6FF: ImpAdCallI2 Replace(, , , , , )
  loc_9DC704: FStStrNoPop var_B4
  loc_9DC707: ConcatStr
  loc_9DC708: FStStrNoPop var_B8
  loc_9DC70B: LitStr " WHERE PeriInfo="
  loc_9DC70E: ConcatStr
  loc_9DC70F: FStStrNoPop var_BC
  loc_9DC712: FLdI2 PeriInfo
  loc_9DC715: CStrUI1
  loc_9DC717: FStStrNoPop var_C0
  loc_9DC71A: ConcatStr
  loc_9DC71B: FStStrNoPop var_C4
  loc_9DC71E: LitStr " AND CodiBanc="
  loc_9DC721: ConcatStr
  loc_9DC722: FStStrNoPop var_C8
  loc_9DC725: ILdRf CodiBanc
  loc_9DC728: CStrI4
  loc_9DC72A: FStStrNoPop var_CC
  loc_9DC72D: ConcatStr
  loc_9DC72E: FStStrNoPop var_D0
  loc_9DC731: Call EjecutarRsCls(from_stack_1v)
  loc_9DC736: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_9DC759: ILdRf CodiBanc
  loc_9DC75C: FLdI2 PeriInfo
  loc_9DC75F: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9DC764: ExitProcHresult
End Sub

Public Sub ModificarCodiCuco(PeriInfo, CodiBanc, CodiCuco) '99CC00
  'Data Table: 40E704
  loc_99CBA8: ILdRf CodiCuco
  loc_99CBAB: FStStrCopy var_88
  loc_99CBAE: LitStr "UPDATE banco SET CodiCuco='"
  loc_99CBB1: ILdRf var_88
  loc_99CBB4: ConcatStr
  loc_99CBB5: FStStrNoPop var_8C
  loc_99CBB8: LitStr "' WHERE PeriInfo="
  loc_99CBBB: ConcatStr
  loc_99CBBC: FStStrNoPop var_90
  loc_99CBBF: FLdI2 PeriInfo
  loc_99CBC2: CStrUI1
  loc_99CBC4: FStStrNoPop var_94
  loc_99CBC7: ConcatStr
  loc_99CBC8: FStStrNoPop var_98
  loc_99CBCB: LitStr " AND CodiBanc="
  loc_99CBCE: ConcatStr
  loc_99CBCF: FStStrNoPop var_9C
  loc_99CBD2: ILdRf CodiBanc
  loc_99CBD5: CStrI4
  loc_99CBD7: FStStrNoPop var_A0
  loc_99CBDA: ConcatStr
  loc_99CBDB: FStStrNoPop var_A4
  loc_99CBDE: Call EjecutarRsCls(from_stack_1v)
  loc_99CBE3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99CBF4: ILdRf CodiBanc
  loc_99CBF7: FLdI2 PeriInfo
  loc_99CBFA: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_99CBFF: ExitProcHresult
End Sub

Public Sub Anular(PeriInfo, CodiBanc, FeanBanc) '9ABE38
  'Data Table: 40E704
  loc_9ABDB8: ILdRf FeanBanc
  loc_9ABDBB: FStStrCopy var_88
  loc_9ABDBE: LitStr "UPDATE banco SET FeanBanc='"
  loc_9ABDC1: LitI4 1
  loc_9ABDC6: LitI4 1
  loc_9ABDCB: LitVarStr var_A8, "yyyy-mm-dd"
  loc_9ABDD0: FStVarCopyObj var_B8
  loc_9ABDD3: FLdRfVar var_B8
  loc_9ABDD6: FLdRfVar var_88
  loc_9ABDD9: CVarRef
  loc_9ABDDE: ImpAdCallI2 Format$(, )
  loc_9ABDE3: FStStrNoPop var_BC
  loc_9ABDE6: ConcatStr
  loc_9ABDE7: FStStrNoPop var_C0
  loc_9ABDEA: LitStr "' WHERE PeriInfo="
  loc_9ABDED: ConcatStr
  loc_9ABDEE: FStStrNoPop var_C4
  loc_9ABDF1: FLdI2 PeriInfo
  loc_9ABDF4: CStrUI1
  loc_9ABDF6: FStStrNoPop var_C8
  loc_9ABDF9: ConcatStr
  loc_9ABDFA: FStStrNoPop var_CC
  loc_9ABDFD: LitStr " AND CodiBanc="
  loc_9ABE00: ConcatStr
  loc_9ABE01: FStStrNoPop var_D0
  loc_9ABE04: ILdRf CodiBanc
  loc_9ABE07: CStrI4
  loc_9ABE09: FStStrNoPop var_D4
  loc_9ABE0C: ConcatStr
  loc_9ABE0D: FStStrNoPop var_D8
  loc_9ABE10: Call EjecutarRsCls(from_stack_1v)
  loc_9ABE15: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_9ABE28: FFree1Var var_B8 = ""
  loc_9ABE2B: ILdRf CodiBanc
  loc_9ABE2E: FLdI2 PeriInfo
  loc_9ABE31: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9ABE36: ExitProcHresult
End Sub

Public Sub Eliminar(PeriInfo, CodiBanc) '9AB0CC
  'Data Table: 40E704
  loc_9AB038: LitStr "DELETE FROM banco WHERE PeriInfo="
  loc_9AB03B: FLdI2 PeriInfo
  loc_9AB03E: CStrUI1
  loc_9AB040: FStStrNoPop var_88
  loc_9AB043: ConcatStr
  loc_9AB044: FStStrNoPop var_8C
  loc_9AB047: LitStr " AND CodiBanc="
  loc_9AB04A: ConcatStr
  loc_9AB04B: FStStrNoPop var_90
  loc_9AB04E: ILdRf CodiBanc
  loc_9AB051: CStrI4
  loc_9AB053: FStStrNoPop var_94
  loc_9AB056: ConcatStr
  loc_9AB057: FStStrNoPop var_98
  loc_9AB05A: Call EjecutarRsCls(from_stack_1v)
  loc_9AB05F: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_9AB06C: FLdRfVar var_A0
  loc_9AB06F: FLdPr Me
  loc_9AB072: MemLdPr RsFrm
  loc_9AB075:  = Me.AbsolutePosition
  loc_9AB07A: ILdRf var_A0
  loc_9AB07D: FStR4 var_9C
  loc_9AB080: Call Requery()
  loc_9AB085: FLdRfVar var_A0
  loc_9AB088: FLdPr Me
  loc_9AB08B: MemLdPr RsFrm
  loc_9AB08E:  = Me.RecordCount
  loc_9AB093: ILdRf var_A0
  loc_9AB096: LitI4 0
  loc_9AB09B: GtI4
  loc_9AB09C: BranchF loc_9AB0C8
  loc_9AB09F: Call MoveFirst()
  loc_9AB0A4: ILdRf var_9C
  loc_9AB0A7: LitI4 1
  loc_9AB0AC: GtI4
  loc_9AB0AD: BranchF loc_9AB0C8
  loc_9AB0B0: LitVar_Missing var_B0
  loc_9AB0B3: PopAdLdVar
  loc_9AB0B4: ILdRf var_9C
  loc_9AB0B7: LitI4 2
  loc_9AB0BC: SubI4
  loc_9AB0BD: FLdPr Me
  loc_9AB0C0: MemLdPr RsFrm
  loc_9AB0C3: Me.Move from_stack_1, from_stack_2
  loc_9AB0C8: ExitProcHresult
  loc_9AB0C9: ImpAdLdFPR4 MemVar_4012CC
End Sub

Public Sub Encontrar(PeriInfo, CodiBanc) '992E40
  'Data Table: 40E704
  loc_992DF0: Call Requery()
  loc_992DF5: LitStr "PeriInfo = '"
  loc_992DF8: FLdI2 PeriInfo
  loc_992DFB: CStrUI1
  loc_992DFD: FStStrNoPop var_88
  loc_992E00: ConcatStr
  loc_992E01: FStStrNoPop var_8C
  loc_992E04: LitStr "'"
  loc_992E07: ConcatStr
  loc_992E08: PopTmpLdAdStr
  loc_992E0C: Call Find(from_stack_1v)
  loc_992E11: FFreeStr var_88 = "": var_8C = ""
  loc_992E1A: LitStr "CodiBanc = '"
  loc_992E1D: ILdRf CodiBanc
  loc_992E20: CStrI4
  loc_992E22: FStStrNoPop var_88
  loc_992E25: ConcatStr
  loc_992E26: FStStrNoPop var_8C
  loc_992E29: LitStr "'"
  loc_992E2C: ConcatStr
  loc_992E2D: PopTmpLdAdStr
  loc_992E31: Call Find(from_stack_1v)
  loc_992E36: FFreeStr var_88 = "": var_8C = ""
  loc_992E3F: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '97201C
  'Data Table: 40E704
  loc_971FF4: ILdRf sSelect
  loc_971FF7: FStStrCopy var_88
  loc_971FFA: FLdPr Me
  loc_971FFD: MemLdRfVar from_stack_1.RsFrm
  loc_972000: ILdRf var_88
  loc_972003: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_972008: LitVarStr var_98, "Primary"
  loc_97200D: PopAdLdVar
  loc_97200E: FLdPr Me
  loc_972011: LateIdCall
  loc_972019: ExitProcHresult
  loc_97201A: CBoolVarNull
End Sub

Public Sub EjecutarRsCls(sSelect) '964428
  'Data Table: 40E704
  loc_964410: ILdRf sSelect
  loc_964413: FStStrCopy var_88
  loc_964416: FLdPr Me
  loc_964419: MemLdRfVar from_stack_1.global_56
  loc_96441C: ILdRf var_88
  loc_96441F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_964424: ExitProcHresult
  loc_964425: FFreeAd var_FFFFFF74 = ""
End Sub

Public Sub Requery() '967710
  'Data Table: 40E704
  loc_9676F0: FLdPr Me
  loc_9676F3: MemLdRfVar from_stack_1.RsFrm
  loc_9676F6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9676FB: LitVarStr var_94, "Primary"
  loc_967700: PopAdLdVar
  loc_967701: FLdPr Me
  loc_967704: LateIdCall
  loc_96770C: ExitProcHresult
  loc_96770D: FnLenStr
End Sub

Public Property Get DataSource() '971FBC
  'Data Table: 40E704
  loc_971F98: ZeroRetVal
  loc_971F9A: FLdRfVar var_8C
  loc_971F9D: FLdPr Me
  loc_971FA0: MemLdPr RsFrm
  loc_971FA3:  = Me.DataSource
  loc_971FA8: ILdRf var_8C
  loc_971FAB: CastAd
  loc_971FAE: FStAdFunc var_88
  loc_971FB1: FFree1Ad var_8C
  loc_971FB4: ExitProcCbHresult
End Sub

Public Function ValidaModificar(PeriInfo, CodiBanc) '9A488C
  'Data Table: 40E704
  loc_9A4820: ZeroRetVal
  loc_9A4822: LitStr "SELECT * FROM banco WHERE PeriInfo = "
  loc_9A4825: FLdI2 PeriInfo
  loc_9A4828: CStrUI1
  loc_9A482A: FStStrNoPop var_8C
  loc_9A482D: ConcatStr
  loc_9A482E: FStStrNoPop var_90
  loc_9A4831: LitStr " AND CodiBanc = "
  loc_9A4834: ConcatStr
  loc_9A4835: FStStrNoPop ValidaModificar
  loc_9A4838: ILdRf CodiBanc
  loc_9A483B: CStrI4
  loc_9A483D: FStStrNoPop var_98
  loc_9A4840: ConcatStr
  loc_9A4841: FStStrNoPop var_9C
  loc_9A4844: LitStr " AND FeanBanc IS NOT NULL"
  loc_9A4847: ConcatStr
  loc_9A4848: FStStrNoPop var_A0
  loc_9A484B: Call EjecutarRsCls(from_stack_1v)
  loc_9A4850: FFreeStr var_8C = "": var_90 = "": ValidaModificar = "": var_98 = "": var_9C = ""
  loc_9A485F: FLdRfVar var_A4
  loc_9A4862: FLdPr Me
  loc_9A4865: MemLdPr global_56
  loc_9A4868:  = Me.RecordCount
  loc_9A486D: ILdRf var_A4
  loc_9A4870: LitI4 0
  loc_9A4875: GtI4
  loc_9A4876: BranchF loc_9A4885
  loc_9A4879: LitStr "El Banco está ANULADO. Verifique..."
  loc_9A487C: FStStrCopy var_88
  loc_9A487F: ExitProcCbHresult
  loc_9A4885: ExitProcCbHresult
End Function

Public Function ValidaAnular(PeriInfo, CodiBanc) '9A45AC
  'Data Table: 40E704
  loc_9A4540: ZeroRetVal
  loc_9A4542: LitStr "SELECT * FROM banco WHERE PeriInfo = "
  loc_9A4545: FLdI2 PeriInfo
  loc_9A4548: CStrUI1
  loc_9A454A: FStStrNoPop var_8C
  loc_9A454D: ConcatStr
  loc_9A454E: FStStrNoPop var_90
  loc_9A4551: LitStr " AND CodiBanc = "
  loc_9A4554: ConcatStr
  loc_9A4555: FStStrNoPop ValidaAnular
  loc_9A4558: ILdRf CodiBanc
  loc_9A455B: CStrI4
  loc_9A455D: FStStrNoPop var_98
  loc_9A4560: ConcatStr
  loc_9A4561: FStStrNoPop var_9C
  loc_9A4564: LitStr " AND FeanBanc IS NOT NULL"
  loc_9A4567: ConcatStr
  loc_9A4568: FStStrNoPop var_A0
  loc_9A456B: Call EjecutarRsCls(from_stack_1v)
  loc_9A4570: FFreeStr var_8C = "": var_90 = "": ValidaAnular = "": var_98 = "": var_9C = ""
  loc_9A457F: FLdRfVar var_A4
  loc_9A4582: FLdPr Me
  loc_9A4585: MemLdPr global_56
  loc_9A4588:  = Me.RecordCount
  loc_9A458D: ILdRf var_A4
  loc_9A4590: LitI4 0
  loc_9A4595: GtI4
  loc_9A4596: BranchF loc_9A45A5
  loc_9A4599: LitStr "El Banco está ANULADO. Verifique..."
  loc_9A459C: FStStrCopy var_88
  loc_9A459F: ExitProcCbHresult
  loc_9A45A5: ExitProcCbHresult
End Function

Public Function ValidaEliminar(PeriInfo, CodiBanc) '9A08B0
  'Data Table: 40E704
  loc_9A084C: ZeroRetVal
  loc_9A084E: LitStr "SELECT * FROM movibanco WHERE PeriInfo = "
  loc_9A0851: FLdI2 PeriInfo
  loc_9A0854: CStrUI1
  loc_9A0856: FStStrNoPop var_8C
  loc_9A0859: ConcatStr
  loc_9A085A: FStStrNoPop var_90
  loc_9A085D: LitStr " AND CodiBanc = "
  loc_9A0860: ConcatStr
  loc_9A0861: FStStrNoPop ValidaEliminar
  loc_9A0864: ILdRf CodiBanc
  loc_9A0867: CStrI4
  loc_9A0869: FStStrNoPop var_98
  loc_9A086C: ConcatStr
  loc_9A086D: FStStrNoPop var_9C
  loc_9A0870: Call EjecutarRsCls(from_stack_1v)
  loc_9A0875: FFreeStr var_8C = "": var_90 = "": ValidaEliminar = "": var_98 = ""
  loc_9A0882: FLdRfVar var_A0
  loc_9A0885: FLdPr Me
  loc_9A0888: MemLdPr global_56
  loc_9A088B:  = Me.RecordCount
  loc_9A0890: ILdRf var_A0
  loc_9A0893: LitI4 0
  loc_9A0898: GtI4
  loc_9A0899: BranchF loc_9A08A8
  loc_9A089C: LitStr "El Banco tiene movimientos. Verifique..."
  loc_9A089F: FStStrCopy var_88
  loc_9A08A2: ExitProcCbHresult
  loc_9A08A8: ExitProcCbHresult
End Function

Private Function Proc_3_29_972074() '972074
  'Data Table: 40E704
  loc_972050: LitStr "Primary"
  loc_972053: FLdPr Me
  loc_972056: LateIdLdVar var_94 DispID_4 0
  loc_97205D: CastAdVar Me
  loc_972061: FStAdFunc var_98
  loc_972064: FLdPr var_98
  loc_97206C: FFree1Ad var_98
  loc_97206F: FFree1Var var_94 = ""
  loc_972072: ExitProcHresult
End Function

Private Function Proc_3_30_9673EC(arg_C) '9673EC
  'Data Table: 40E704
  loc_9673D0: ILdI4 arg_C
  loc_9673D3: FStStrCopy var_88
  loc_9673D6: ILdRf var_88
  loc_9673D9: LitStr "Primary"
  loc_9673DC: EqStr
  loc_9673DE: BranchF loc_9673EB
  loc_9673E1: FLdPr Me
  loc_9673E4: MemLdStr RsFrm
  loc_9673E7: IStAd
  loc_9673EB: ExitProcHresult
End Function
