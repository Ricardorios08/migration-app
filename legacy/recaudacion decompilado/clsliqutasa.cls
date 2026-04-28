VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliqutasa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() '9EE014
  'Data Table: 4BE97C
  loc_9EDFEC: FLdRfVar var_88
  loc_9EDFEF: FLdPr Me
  loc_9EDFF2: MemLdPr global_52
  loc_9EDFF5:  = Me.RecordCount
  loc_9EDFFA: ILdRf var_88
  loc_9EDFFD: LitI4 0
  loc_9EE002: GtI4
  loc_9EE003: BranchF loc_9EE011
  loc_9EE006: FLdPr Me
  loc_9EE009: MemLdPr global_52
  loc_9EE00C: Me.MoveFirst
  loc_9EE011: ExitProcHresult
End Sub

Public Sub MoveLast() '9EDF0C
  'Data Table: 4BE97C
  loc_9EDEE4: FLdRfVar var_88
  loc_9EDEE7: FLdPr Me
  loc_9EDEEA: MemLdPr global_52
  loc_9EDEED:  = Me.RecordCount
  loc_9EDEF2: ILdRf var_88
  loc_9EDEF5: LitI4 0
  loc_9EDEFA: GtI4
  loc_9EDEFB: BranchF loc_9EDF09
  loc_9EDEFE: FLdPr Me
  loc_9EDF01: MemLdPr global_52
  loc_9EDF04: Me.MoveLast
  loc_9EDF09: ExitProcHresult
  loc_9EDF0A: PopAdLdVar
End Sub

Public Sub MoveNext() 'A6A810
  'Data Table: 4BE97C
  loc_A6A798: FLdRfVar var_86
  loc_A6A79B: FLdPr Me
  loc_A6A79E: MemLdPr global_52
  loc_A6A7A1:  = Me.EOF
  loc_A6A7A6: FLdI2 var_86
  loc_A6A7A9: NotI4
  loc_A6A7AA: FLdRfVar var_8C
  loc_A6A7AD: FLdPr Me
  loc_A6A7B0: MemLdPr global_52
  loc_A6A7B3:  = Me.RecordCount
  loc_A6A7B8: ILdRf var_8C
  loc_A6A7BB: LitI4 0
  loc_A6A7C0: GtI4
  loc_A6A7C1: AndI4
  loc_A6A7C2: BranchF loc_A6A7D0
  loc_A6A7C5: FLdPr Me
  loc_A6A7C8: MemLdPr global_52
  loc_A6A7CB: Me.MoveNext
  loc_A6A7D0: FLdRfVar var_86
  loc_A6A7D3: FLdPr Me
  loc_A6A7D6: MemLdPr global_52
  loc_A6A7D9:  = Me.EOF
  loc_A6A7DE: FLdI2 var_86
  loc_A6A7E1: FLdRfVar var_8C
  loc_A6A7E4: FLdPr Me
  loc_A6A7E7: MemLdPr global_52
  loc_A6A7EA:  = Me.RecordCount
  loc_A6A7EF: ILdRf var_8C
  loc_A6A7F2: LitI4 0
  loc_A6A7F7: GtI4
  loc_A6A7F8: AndI4
  loc_A6A7F9: BranchF loc_A6A80C
  loc_A6A7FC: ImpAdCallFPR4 Beep()
  loc_A6A801: FLdPr Me
  loc_A6A804: MemLdPr global_52
  loc_A6A807: Me.MoveLast
  loc_A6A80C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1F38
  'Data Table: 4BE97C
  loc_9B1F2C: FLdPr Me
  loc_9B1F2F: MemLdPr global_52
  loc_9B1F32: Me.MoveNext
  loc_9B1F37: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9E20
  'Data Table: 4BE97C
  loc_9B9E0C: LitVar_Missing var_94
  loc_9B9E0F: PopAdLdVar
  loc_9B9E10: ILdI2 iValor
  loc_9B9E13: CI4UI1
  loc_9B9E14: FLdPr Me
  loc_9B9E17: MemLdPr global_52
  loc_9B9E1A: Me.Move from_stack_1, from_stack_2
  loc_9B9E1F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6A8B8
  'Data Table: 4BE97C
  loc_A6A840: FLdRfVar var_86
  loc_A6A843: FLdPr Me
  loc_A6A846: MemLdPr global_52
  loc_A6A849:  = Me.BOF
  loc_A6A84E: FLdI2 var_86
  loc_A6A851: NotI4
  loc_A6A852: FLdRfVar var_8C
  loc_A6A855: FLdPr Me
  loc_A6A858: MemLdPr global_52
  loc_A6A85B:  = Me.RecordCount
  loc_A6A860: ILdRf var_8C
  loc_A6A863: LitI4 0
  loc_A6A868: GtI4
  loc_A6A869: AndI4
  loc_A6A86A: BranchF loc_A6A878
  loc_A6A86D: FLdPr Me
  loc_A6A870: MemLdPr global_52
  loc_A6A873: Me.MovePrevious
  loc_A6A878: FLdRfVar var_86
  loc_A6A87B: FLdPr Me
  loc_A6A87E: MemLdPr global_52
  loc_A6A881:  = Me.BOF
  loc_A6A886: FLdI2 var_86
  loc_A6A889: FLdRfVar var_8C
  loc_A6A88C: FLdPr Me
  loc_A6A88F: MemLdPr global_52
  loc_A6A892:  = Me.RecordCount
  loc_A6A897: ILdRf var_8C
  loc_A6A89A: LitI4 0
  loc_A6A89F: GtI4
  loc_A6A8A0: AndI4
  loc_A6A8A1: BranchF loc_A6A8B4
  loc_A6A8A4: ImpAdCallFPR4 Beep()
  loc_A6A8A9: FLdPr Me
  loc_A6A8AC: MemLdPr global_52
  loc_A6A8AF: Me.MoveFirst
  loc_A6A8B4: ExitProcHresult
  loc_A6A8B5: FnStrComp3Var
End Sub

Public Property Get EOF() '9CA858
  'Data Table: 4BE97C
  loc_9CA83C: FLdRfVar var_88
  loc_9CA83F: FLdPr Me
  loc_9CA842: MemLdPr global_52
  loc_9CA845:  = Me.EOF
  loc_9CA84A: FLdI2 var_88
  loc_9CA84D: FStI2 var_86
  loc_9CA850: ExitProcCbHresult
End Sub

Public Property Get BOF() '9CA80C
  'Data Table: 4BE97C
  loc_9CA7F0: FLdRfVar var_88
  loc_9CA7F3: FLdPr Me
  loc_9CA7F6: MemLdPr global_52
  loc_9CA7F9:  = Me.BOF
  loc_9CA7FE: FLdI2 var_88
  loc_9CA801: FStI2 var_86
  loc_9CA804: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B67F8
  'Data Table: 4BE97C
  loc_9B67E8: ILdI4 sOrden
  loc_9B67EB: FLdPr Me
  loc_9B67EE: MemLdPr global_52
  loc_9B67F1: Me.Sort = from_stack_1
  loc_9B67F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD900
  'Data Table: 4BE97C
  loc_9DD8E0: LitVar_Missing var_94
  loc_9DD8E3: PopAdLdVar
  loc_9DD8E4: LitI4 1
  loc_9DD8E9: LitI4 0
  loc_9DD8EE: ILdI4 sFind
  loc_9DD8F1: FLdPr Me
  loc_9DD8F4: MemLdPr global_52
  loc_9DD8F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD8FC: ExitProcHresult
  loc_9DD8FD: FFree1Ad var_A8
End Sub

Public Sub Filter(sCriterio) '9B9AF0
  'Data Table: 4BE97C
  loc_9B9ADC: ILdI4 sCriterio
  loc_9B9ADF: CVarStr var_94
  loc_9B9AE2: PopAdLdVar
  loc_9B9AE3: FLdPr Me
  loc_9B9AE6: MemLdPr global_52
  loc_9B9AE9: Me.Filter = from_stack_1
  loc_9B9AEE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CA6DC
  'Data Table: 4BE97C
  loc_9CA6C0: FLdRfVar var_8C
  loc_9CA6C3: FLdPr Me
  loc_9CA6C6: MemLdPr global_52
  loc_9CA6C9:  = Me.AbsolutePosition
  loc_9CA6CE: ILdRf var_8C
  loc_9CA6D1: FStR4 var_88
  loc_9CA6D4: ExitProcCbHresult
  loc_9CA6DA: IDvI2
End Sub

Public Property Get RecordCount() '9CA690
  'Data Table: 4BE97C
  loc_9CA674: FLdRfVar var_8C
  loc_9CA677: FLdPr Me
  loc_9CA67A: MemLdPr global_52
  loc_9CA67D:  = Me.RecordCount
  loc_9CA682: ILdRf var_8C
  loc_9CA685: FStR4 var_88
  loc_9CA688: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc, TipoLita, FeveLita, DeudLita, PodeLita, ImpoLita, CrafLita, ExenLita, DescLita, GastLita, TotaLita, CucuPers, DetaPers) 'D4339C
  'Data Table: 4BE97C
  loc_D3E6C8: ILdRf CodiConc
  loc_D3E6CB: FStStrCopy var_88
  loc_D3E6CE: ILdRf TipoLita
  loc_D3E6D1: FStStrCopy var_8C
  loc_D3E6D4: ILdRf FeveLita
  loc_D3E6D7: FStStrCopy var_90
  loc_D3E6DA: ILdRf arg_70
  loc_D3E6DD: FStStrCopy var_94
  loc_D3E6E0: ILdRf arg_74
  loc_D3E6E3: FStStrCopy var_98
  loc_D3E6E6: ILdRf arg_7C
  loc_D3E6E9: FStStrCopy var_9C
  loc_D3E6EC: ILdRf Me8
  loc_D3E6EF: FStStrCopy var_A0
  loc_D3E6F2: ILdRf MeC
  loc_D3E6F5: FStStrCopy var_A4
  loc_D3E6F8: ILdRf arg_90
  loc_D3E6FB: FStStrCopy var_A8
  loc_D3E6FE: ILdRf arg_94
  loc_D3E701: FStStrCopy var_AC
  loc_D3E704: ILdRf arg_9C
  loc_D3E707: FStStrCopy var_B0
  loc_D3E70A: ILdRf arg_A0
  loc_D3E70D: FStStrCopy var_B4
  loc_D3E710: ILdRf arg_110
  loc_D3E713: FStStrCopy var_B8
  loc_D3E716: ILdRf arg_128
  loc_D3E719: FStStrCopy var_BC
  loc_D3E71C: LitI2_Byte 0
  loc_D3E71E: FStI2 var_CE
  loc_D3E721: LitI2_Byte 0
  loc_D3E723: CR8I2
  loc_D3E724: FStFPR8 var_F8
  loc_D3E727: LitI2_Byte 0
  loc_D3E729: CR8I2
  loc_D3E72A: FStFPR8 var_100
  loc_D3E72D: LitI2_Byte 0
  loc_D3E72F: CR8I2
  loc_D3E730: FStFPR8 var_D8
  loc_D3E733: OnErrorGoto loc_D43375
  loc_D3E736: FLdUI1
  loc_D3E73A: CI2UI1
  loc_D3E73C: LitI2_Byte 1
  loc_D3E73E: EqI2
  loc_D3E73F: FLdUI1
  loc_D3E743: CI2UI1
  loc_D3E745: LitI2_Byte 2
  loc_D3E747: EqI2
  loc_D3E748: AndI4
  loc_D3E749: BranchF loc_D402A6
  loc_D3E74C: LitI2_Byte 0
  loc_D3E74E: CR8I2
  loc_D3E74F: FStFPR8 var_148
  loc_D3E752: LitStr "START TRANSACTION;"
  loc_D3E755: FStStrCopy var_13C
  loc_D3E758: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc, TipoLita, DeudLita, ImpoLita, GastLita, SUM(CrafLita) as CrafLita, ExenLita, DescLita, TotaLita "
  loc_D3E75B: LitStr " FROM liqutasa USE INDEX (idxliqutasa02) WHERE PeriLiqu = "
  loc_D3E75E: ConcatStr
  loc_D3E75F: FStStrNoPop var_190
  loc_D3E762: FLdI2 PeriLiqu
  loc_D3E765: CStrUI1
  loc_D3E767: FStStrNoPop var_194
  loc_D3E76A: ConcatStr
  loc_D3E76B: FStStrNoPop var_198
  loc_D3E76E: LitStr " AND CodiTili = "
  loc_D3E771: ConcatStr
  loc_D3E772: FStStrNoPop var_19C
  loc_D3E775: FLdUI1
  loc_D3E779: CStrI2
  loc_D3E77B: FStStrNoPop var_1A0
  loc_D3E77E: ConcatStr
  loc_D3E77F: FStStrNoPop var_1A4
  loc_D3E782: LitStr " AND NumeLiqu = "
  loc_D3E785: ConcatStr
  loc_D3E786: FStStrNoPop var_1A8
  loc_D3E789: FLdUI1
  loc_D3E78D: CStrI2
  loc_D3E78F: FStStrNoPop var_1AC
  loc_D3E792: ConcatStr
  loc_D3E793: FStStrNoPop var_1B0
  loc_D3E796: LitStr " AND CodiInmu = "
  loc_D3E799: ConcatStr
  loc_D3E79A: FStStrNoPop var_1B4
  loc_D3E79D: ILdRf CodiInmu
  loc_D3E7A0: CStrI4
  loc_D3E7A2: FStStrNoPop var_1B8
  loc_D3E7A5: ConcatStr
  loc_D3E7A6: FStStrNoPop var_1BC
  loc_D3E7A9: LitStr " GROUP BY PeriLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc"
  loc_D3E7AC: ConcatStr
  loc_D3E7AD: FStStrNoPop var_1C0
  loc_D3E7B0: LitStr " HAVING TotaLita > 0"
  loc_D3E7B3: ConcatStr
  loc_D3E7B4: FStStrNoPop var_1C4
  loc_D3E7B7: Call EjecutarRsCls2(from_stack_1v)
  loc_D3E7BC: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_D3E7DB: FLdRfVar var_1C8
  loc_D3E7DE: FLdPr Me
  loc_D3E7E1: MemLdPr global_64
  loc_D3E7E4:  = Me.RecordCount
  loc_D3E7E9: ILdRf var_1C8
  loc_D3E7EC: LitI4 0
  loc_D3E7F1: GtI4
  loc_D3E7F2: BranchF loc_D4029B
  loc_D3E7F5: FLdPr Me
  loc_D3E7F8: MemLdPr global_64
  loc_D3E7FB: Me.MoveFirst
  loc_D3E800: FLdRfVar var_1CA
  loc_D3E803: FLdPr Me
  loc_D3E806: MemLdPr global_64
  loc_D3E809:  = Me.EOF
  loc_D3E80E: FLdI2 var_1CA
  loc_D3E811: NotI4
  loc_D3E812: BranchF loc_D4029B
  loc_D3E815: FLdRfVar var_1F4
  loc_D3E818: FLdRfVar var_1E4
  loc_D3E81B: LitVarStr var_1E0, "CodiConc"
  loc_D3E820: PopAdLdVar
  loc_D3E821: FLdRfVar var_1D0
  loc_D3E824: FLdPr Me
  loc_D3E827: MemLdPr global_64
  loc_D3E82A:  = Me.Fields
  loc_D3E82F: FLdPr var_1D0
  loc_D3E832: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E837: FLdPr var_1E4
  loc_D3E83A:  = Me.Value
  loc_D3E83F: FLdRfVar var_1F4
  loc_D3E842: LitVarStr var_204, "13020101"
  loc_D3E847: HardType
  loc_D3E848: EqVarBool
  loc_D3E84A: FFreeAd var_1D0 = ""
  loc_D3E851: FFree1Var var_1F4 = ""
  loc_D3E854: BranchF loc_D3F8BA
  loc_D3E857: LitI2_Byte 0
  loc_D3E859: CR8I2
  loc_D3E85A: FStFPR8 var_148
  loc_D3E85D: LitStr "SELECT * FROM litadeta "
  loc_D3E860: LitStr " USE INDEX (idxlitadeta02)"
  loc_D3E863: ConcatStr
  loc_D3E864: FStStrNoPop var_190
  loc_D3E867: LitStr " WHERE PeriLiqu = "
  loc_D3E86A: ConcatStr
  loc_D3E86B: CVarStr var_214
  loc_D3E86E: FLdRfVar var_1F4
  loc_D3E871: FLdRfVar var_1E4
  loc_D3E874: LitVarStr var_1E0, "PeriLiqu"
  loc_D3E879: PopAdLdVar
  loc_D3E87A: FLdRfVar var_1D0
  loc_D3E87D: FLdPr Me
  loc_D3E880: MemLdPr global_64
  loc_D3E883:  = Me.Fields
  loc_D3E888: FLdPr var_1D0
  loc_D3E88B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E890: FLdPr var_1E4
  loc_D3E893:  = Me.Value
  loc_D3E898: FLdRfVar var_1F4
  loc_D3E89B: ConcatVar var_224
  loc_D3E89F: LitVarStr var_204, " AND BimeLiqu = 1"
  loc_D3E8A4: ConcatVar var_234
  loc_D3E8A8: LitVarStr var_244, " AND CodiTili = "
  loc_D3E8AD: ConcatVar var_254
  loc_D3E8B1: FLdRfVar var_27C
  loc_D3E8B4: FLdRfVar var_26C
  loc_D3E8B7: LitVarStr var_268, "CodiTili"
  loc_D3E8BC: PopAdLdVar
  loc_D3E8BD: FLdRfVar var_258
  loc_D3E8C0: FLdPr Me
  loc_D3E8C3: MemLdPr global_64
  loc_D3E8C6:  = Me.Fields
  loc_D3E8CB: FLdPr var_258
  loc_D3E8CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E8D3: FLdPr var_26C
  loc_D3E8D6:  = Me.Value
  loc_D3E8DB: FLdRfVar var_27C
  loc_D3E8DE: ConcatVar var_28C
  loc_D3E8E2: LitVarStr var_29C, " AND NumeLiqu = "
  loc_D3E8E7: ConcatVar var_2AC
  loc_D3E8EB: FLdRfVar var_2D4
  loc_D3E8EE: FLdRfVar var_2C4
  loc_D3E8F1: LitVarStr var_2C0, "NumeLiqu"
  loc_D3E8F6: PopAdLdVar
  loc_D3E8F7: FLdRfVar var_2B0
  loc_D3E8FA: FLdPr Me
  loc_D3E8FD: MemLdPr global_64
  loc_D3E900:  = Me.Fields
  loc_D3E905: FLdPr var_2B0
  loc_D3E908: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E90D: FLdPr var_2C4
  loc_D3E910:  = Me.Value
  loc_D3E915: FLdRfVar var_2D4
  loc_D3E918: ConcatVar var_2E4
  loc_D3E91C: LitVarStr var_2F4, " AND CodiInmu = "
  loc_D3E921: ConcatVar var_304
  loc_D3E925: FLdRfVar var_32C
  loc_D3E928: FLdRfVar var_31C
  loc_D3E92B: LitVarStr var_318, "CodiInmu"
  loc_D3E930: PopAdLdVar
  loc_D3E931: FLdRfVar var_308
  loc_D3E934: FLdPr Me
  loc_D3E937: MemLdPr global_64
  loc_D3E93A:  = Me.Fields
  loc_D3E93F: FLdPr var_308
  loc_D3E942: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E947: FLdPr var_31C
  loc_D3E94A:  = Me.Value
  loc_D3E94F: FLdRfVar var_32C
  loc_D3E952: ConcatVar var_33C
  loc_D3E956: LitVarStr var_34C, " AND CodiConc = '"
  loc_D3E95B: ConcatVar var_35C
  loc_D3E95F: FLdRfVar var_384
  loc_D3E962: FLdRfVar var_374
  loc_D3E965: LitVarStr var_370, "CodiConc"
  loc_D3E96A: PopAdLdVar
  loc_D3E96B: FLdRfVar var_360
  loc_D3E96E: FLdPr Me
  loc_D3E971: MemLdPr global_64
  loc_D3E974:  = Me.Fields
  loc_D3E979: FLdPr var_360
  loc_D3E97C: from_stack_2 = Me.Item(from_stack_1)
  loc_D3E981: FLdPr var_374
  loc_D3E984:  = Me.Value
  loc_D3E989: FLdRfVar var_384
  loc_D3E98C: ConcatVar var_394
  loc_D3E990: LitVarStr var_3A4, "'"
  loc_D3E995: ConcatVar var_3B4
  loc_D3E999: LitVarStr var_3C4, " AND TipoVenc = 1"
  loc_D3E99E: ConcatVar var_3D4
  loc_D3E9A2: LitVarStr var_3E4, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc, PeriOrde, CodiSeca"
  loc_D3E9A7: ConcatVar var_3F4
  loc_D3E9AB: CStrVarVal var_194
  loc_D3E9AF: Call EjecutarRsCls3(from_stack_1v)
  loc_D3E9B4: FFreeStr var_190 = ""
  loc_D3E9BB: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = ""
  loc_D3E9D2: FFreeVar var_214 = "": var_1F4 = "": var_224 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = ""
  loc_D3E9FB: FLdRfVar var_1C8
  loc_D3E9FE: FLdPr Me
  loc_D3EA01: MemLdPr global_68
  loc_D3EA04:  = Me.RecordCount
  loc_D3EA09: ILdRf var_1C8
  loc_D3EA0C: LitI4 0
  loc_D3EA11: GtI4
  loc_D3EA12: BranchF loc_D3EFFD
  loc_D3EA15: FLdPr Me
  loc_D3EA18: MemLdPr global_68
  loc_D3EA1B: Me.MoveFirst
  loc_D3EA20: FLdRfVar var_1CA
  loc_D3EA23: FLdPr Me
  loc_D3EA26: MemLdPr global_68
  loc_D3EA29:  = Me.EOF
  loc_D3EA2E: FLdI2 var_1CA
  loc_D3EA31: NotI4
  loc_D3EA32: BranchF loc_D3EFFD
  loc_D3EA35: LitI2_Byte 1
  loc_D3EA37: CUI1I2
  loc_D3EA39: FLdRfVar var_13E
  loc_D3EA3C: LitI2_Byte 6
  loc_D3EA3E: CUI1I2
  loc_D3EA40: ForUI1 var_3F8
  loc_D3EA46: LitI2_Byte 0
  loc_D3EA48: CR8I2
  loc_D3EA49: FStFPR8 var_E8
  loc_D3EA4C: LitI2_Byte 0
  loc_D3EA4E: CR8I2
  loc_D3EA4F: FStFPR8 var_F8
  loc_D3EA52: LitI2_Byte 0
  loc_D3EA54: CR8I2
  loc_D3EA55: FStFPR8 var_100
  loc_D3EA58: LitI2_Byte 0
  loc_D3EA5A: CR8I2
  loc_D3EA5B: FStFPR8 var_108
  loc_D3EA5E: FLdUI1
  loc_D3EA62: CI2UI1
  loc_D3EA64: LitI2_Byte 2
  loc_D3EA66: LeI2
  loc_D3EA67: BranchF loc_D3EA79
  loc_D3EA6A: LitI2_Byte 0
  loc_D3EA6C: CR8I2
  loc_D3EA6D: FStFPR8 var_F8
  loc_D3EA70: LitI2_Byte 0
  loc_D3EA72: CR8I2
  loc_D3EA73: FStFPR8 var_100
  loc_D3EA76: Branch loc_D3EAF1
  loc_D3EA79: FLdRfVar var_1F4
  loc_D3EA7C: FLdRfVar var_1E4
  loc_D3EA7F: LitVarStr var_1E0, "DecaLtde"
  loc_D3EA84: PopAdLdVar
  loc_D3EA85: FLdRfVar var_1D0
  loc_D3EA88: FLdPr Me
  loc_D3EA8B: MemLdPr global_68
  loc_D3EA8E:  = Me.Fields
  loc_D3EA93: FLdPr var_1D0
  loc_D3EA96: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EA9B: FLdPr var_1E4
  loc_D3EA9E:  = Me.Value
  loc_D3EAA3: FLdRfVar var_1F4
  loc_D3EAA6: FnCDblVar
  loc_D3EAA8: FStFPR8 var_F8
  loc_D3EAAB: FFreeAd var_1D0 = ""
  loc_D3EAB2: FFree1Var var_1F4 = ""
  loc_D3EAB5: FLdRfVar var_1F4
  loc_D3EAB8: FLdRfVar var_1E4
  loc_D3EABB: LitVarStr var_1E0, "ExenLtde"
  loc_D3EAC0: PopAdLdVar
  loc_D3EAC1: FLdRfVar var_1D0
  loc_D3EAC4: FLdPr Me
  loc_D3EAC7: MemLdPr global_68
  loc_D3EACA:  = Me.Fields
  loc_D3EACF: FLdPr var_1D0
  loc_D3EAD2: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EAD7: FLdPr var_1E4
  loc_D3EADA:  = Me.Value
  loc_D3EADF: FLdRfVar var_1F4
  loc_D3EAE2: FnCDblVar
  loc_D3EAE4: FStFPR8 var_100
  loc_D3EAE7: FFreeAd var_1D0 = ""
  loc_D3EAEE: FFree1Var var_1F4 = ""
  loc_D3EAF1: FLdRfVar var_1F4
  loc_D3EAF4: FLdRfVar var_1E4
  loc_D3EAF7: LitVarStr var_1E0, "ImpoLtde"
  loc_D3EAFC: PopAdLdVar
  loc_D3EAFD: FLdRfVar var_1D0
  loc_D3EB00: FLdPr Me
  loc_D3EB03: MemLdPr global_68
  loc_D3EB06:  = Me.Fields
  loc_D3EB0B: FLdPr var_1D0
  loc_D3EB0E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EB13: FLdPr var_1E4
  loc_D3EB16:  = Me.Value
  loc_D3EB1B: FLdRfVar var_1F4
  loc_D3EB1E: FnCDblVar
  loc_D3EB20: FStFPR8 var_E8
  loc_D3EB23: FFreeAd var_1D0 = ""
  loc_D3EB2A: FFree1Var var_1F4 = ""
  loc_D3EB2D: FLdRfVar var_1F4
  loc_D3EB30: FLdRfVar var_1E4
  loc_D3EB33: LitVarStr var_1E0, "CodiSeca"
  loc_D3EB38: PopAdLdVar
  loc_D3EB39: FLdRfVar var_1D0
  loc_D3EB3C: FLdPr Me
  loc_D3EB3F: MemLdPr global_68
  loc_D3EB42:  = Me.Fields
  loc_D3EB47: FLdPr var_1D0
  loc_D3EB4A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EB4F: FLdPr var_1E4
  loc_D3EB52:  = Me.Value
  loc_D3EB57: FLdRfVar var_1F4
  loc_D3EB5A: FnCIntVar
  loc_D3EB5C: LitI2_Byte 1
  loc_D3EB5E: EqI2
  loc_D3EB5F: FFreeAd var_1D0 = ""
  loc_D3EB66: FFree1Var var_1F4 = ""
  loc_D3EB69: BranchF loc_D3EC21
  loc_D3EB6C: FLdRfVar var_1F4
  loc_D3EB6F: FLdRfVar var_1E4
  loc_D3EB72: LitVarStr var_1E0, "ImpoLtde"
  loc_D3EB77: PopAdLdVar
  loc_D3EB78: FLdRfVar var_1D0
  loc_D3EB7B: FLdPr Me
  loc_D3EB7E: MemLdPr global_68
  loc_D3EB81:  = Me.Fields
  loc_D3EB86: FLdPr var_1D0
  loc_D3EB89: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EB8E: FLdPr var_1E4
  loc_D3EB91:  = Me.Value
  loc_D3EB96: FLdRfVar var_214
  loc_D3EB99: FLdRfVar var_26C
  loc_D3EB9C: LitVarStr var_204, "ExenLtde"
  loc_D3EBA1: PopAdLdVar
  loc_D3EBA2: FLdRfVar var_258
  loc_D3EBA5: FLdPr Me
  loc_D3EBA8: MemLdPr global_68
  loc_D3EBAB:  = Me.Fields
  loc_D3EBB0: FLdPr var_258
  loc_D3EBB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EBB8: FLdPr var_26C
  loc_D3EBBB:  = Me.Value
  loc_D3EBC0: LitI4 2
  loc_D3EBC5: FLdFPR8 var_F8
  loc_D3EBC8: FLdRfVar var_1F4
  loc_D3EBCB: FnCDblVar
  loc_D3EBCD: FLdRfVar var_214
  loc_D3EBD0: FnCDblVar
  loc_D3EBD2: SubR4
  loc_D3EBD3: LitI2 2860
  loc_D3EBD6: CR8I2
  loc_D3EBD7: SubR4
  loc_D3EBD8: FLdFPR8 arg_120
  loc_D3EBDB: MulR8
  loc_D3EBDC: LitI2_Byte &H64
  loc_D3EBDE: CR8I2
  loc_D3EBDF: DivR8
  loc_D3EBE0: AddR8
  loc_D3EBE1: CVarR8
  loc_D3EBE5: FLdRfVar var_234
  loc_D3EBE8: ImpAdCallFPR4  = Round(, )
  loc_D3EBED: FLdRfVar var_234
  loc_D3EBF0: CR4Var
  loc_D3EBF1: FStFPR8 var_F8
  loc_D3EBF4: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = ""
  loc_D3EBFF: FFreeVar var_1F4 = "": var_214 = "": var_224 = ""
  loc_D3EC0A: FLdUI1
  loc_D3EC0E: CI2UI1
  loc_D3EC10: LitI2_Byte 1
  loc_D3EC12: GtI2
  loc_D3EC13: BranchF loc_D3EC21
  loc_D3EC16: FLdFPR8 var_F8
  loc_D3EC19: LitI2 2860
  loc_D3EC1C: CR8I2
  loc_D3EC1D: AddR8
  loc_D3EC1E: FStFPR8 var_F8
  loc_D3EC21: FLdRfVar var_1F4
  loc_D3EC24: FLdRfVar var_1E4
  loc_D3EC27: LitVarStr var_1E0, "CodiSeca"
  loc_D3EC2C: PopAdLdVar
  loc_D3EC2D: FLdRfVar var_1D0
  loc_D3EC30: FLdPr Me
  loc_D3EC33: MemLdPr global_68
  loc_D3EC36:  = Me.Fields
  loc_D3EC3B: FLdPr var_1D0
  loc_D3EC3E: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EC43: FLdPr var_1E4
  loc_D3EC46:  = Me.Value
  loc_D3EC4B: FLdRfVar var_1F4
  loc_D3EC4E: FnCIntVar
  loc_D3EC50: LitI2 999
  loc_D3EC53: EqI2
  loc_D3EC54: FFreeAd var_1D0 = ""
  loc_D3EC5B: FFree1Var var_1F4 = ""
  loc_D3EC5E: BranchF loc_D3ECAD
  loc_D3EC61: FLdUI1
  loc_D3EC65: CI2UI1
  loc_D3EC67: LitI2_Byte 1
  loc_D3EC69: GtI2
  loc_D3EC6A: BranchF loc_D3ECAD
  loc_D3EC6D: FLdRfVar var_1F4
  loc_D3EC70: FLdRfVar var_1E4
  loc_D3EC73: LitVarStr var_1E0, "ImpoLtde"
  loc_D3EC78: PopAdLdVar
  loc_D3EC79: FLdRfVar var_1D0
  loc_D3EC7C: FLdPr Me
  loc_D3EC7F: MemLdPr global_68
  loc_D3EC82:  = Me.Fields
  loc_D3EC87: FLdPr var_1D0
  loc_D3EC8A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EC8F: FLdPr var_1E4
  loc_D3EC92:  = Me.Value
  loc_D3EC97: FLdFPR8 var_F8
  loc_D3EC9A: FLdRfVar var_1F4
  loc_D3EC9D: FnCDblVar
  loc_D3EC9F: AddR8
  loc_D3ECA0: FStFPR8 var_F8
  loc_D3ECA3: FFreeAd var_1D0 = ""
  loc_D3ECAA: FFree1Var var_1F4 = ""
  loc_D3ECAD: FLdFPR8 var_E8
  loc_D3ECB0: FLdFPR8 var_F8
  loc_D3ECB3: SubR4
  loc_D3ECB4: FLdFPR8 var_100
  loc_D3ECB7: SubR4
  loc_D3ECB8: FStFPR8 var_108
  loc_D3ECBB: FLdFPR8 var_148
  loc_D3ECBE: FLdFPR8 var_E8
  loc_D3ECC1: AddR8
  loc_D3ECC2: FStFPR8 var_148
  loc_D3ECC5: FLdFPR8 var_150
  loc_D3ECC8: FLdFPR8 var_F8
  loc_D3ECCB: AddR8
  loc_D3ECCC: FStFPR8 var_150
  loc_D3ECCF: FLdFPR8 var_158
  loc_D3ECD2: FLdFPR8 var_100
  loc_D3ECD5: AddR8
  loc_D3ECD6: FStFPR8 var_158
  loc_D3ECD9: LitI2_Byte 0
  loc_D3ECDB: CR8I2
  loc_D3ECDC: FStFPR8 var_160
  loc_D3ECDF: LitI2_Byte 1
  loc_D3ECE1: FStI2 var_CE
  loc_D3ECE4: ILdRf var_13C
  loc_D3ECE7: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D3ECEA: ConcatStr
  loc_D3ECEB: FStStrNoPop var_190
  loc_D3ECEE: LitStr " VALUES ("
  loc_D3ECF1: ConcatStr
  loc_D3ECF2: CVarStr var_214
  loc_D3ECF5: FLdRfVar var_1F4
  loc_D3ECF8: FLdRfVar var_1E4
  loc_D3ECFB: LitVarStr var_1E0, "PeriLiqu"
  loc_D3ED00: PopAdLdVar
  loc_D3ED01: FLdRfVar var_1D0
  loc_D3ED04: FLdPr Me
  loc_D3ED07: MemLdPr global_68
  loc_D3ED0A:  = Me.Fields
  loc_D3ED0F: FLdPr var_1D0
  loc_D3ED12: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ED17: FLdPr var_1E4
  loc_D3ED1A:  = Me.Value
  loc_D3ED1F: FLdRfVar var_1F4
  loc_D3ED22: ConcatVar var_224
  loc_D3ED26: LitVarStr var_204, ","
  loc_D3ED2B: ConcatVar var_234
  loc_D3ED2F: FLdUI1
  loc_D3ED33: CVarUI1
  loc_D3ED37: ConcatVar var_254
  loc_D3ED3B: LitVarStr var_268, ","
  loc_D3ED40: ConcatVar var_27C
  loc_D3ED44: FLdRfVar var_28C
  loc_D3ED47: FLdRfVar var_26C
  loc_D3ED4A: LitVarStr var_29C, "CodiTili"
  loc_D3ED4F: PopAdLdVar
  loc_D3ED50: FLdRfVar var_258
  loc_D3ED53: FLdPr Me
  loc_D3ED56: MemLdPr global_68
  loc_D3ED59:  = Me.Fields
  loc_D3ED5E: FLdPr var_258
  loc_D3ED61: from_stack_2 = Me.Item(from_stack_1)
  loc_D3ED66: FLdPr var_26C
  loc_D3ED69:  = Me.Value
  loc_D3ED6E: FLdRfVar var_28C
  loc_D3ED71: ConcatVar var_2AC
  loc_D3ED75: LitVarStr var_2C0, ","
  loc_D3ED7A: ConcatVar var_2D4
  loc_D3ED7E: FLdRfVar var_2E4
  loc_D3ED81: FLdRfVar var_2C4
  loc_D3ED84: LitVarStr var_2F4, "NumeLiqu"
  loc_D3ED89: PopAdLdVar
  loc_D3ED8A: FLdRfVar var_2B0
  loc_D3ED8D: FLdPr Me
  loc_D3ED90: MemLdPr global_68
  loc_D3ED93:  = Me.Fields
  loc_D3ED98: FLdPr var_2B0
  loc_D3ED9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EDA0: FLdPr var_2C4
  loc_D3EDA3:  = Me.Value
  loc_D3EDA8: FLdRfVar var_2E4
  loc_D3EDAB: ConcatVar var_304
  loc_D3EDAF: LitVarStr var_318, ","
  loc_D3EDB4: ConcatVar var_32C
  loc_D3EDB8: FLdRfVar var_33C
  loc_D3EDBB: FLdRfVar var_31C
  loc_D3EDBE: LitVarStr var_34C, "CodiInmu"
  loc_D3EDC3: PopAdLdVar
  loc_D3EDC4: FLdRfVar var_308
  loc_D3EDC7: FLdPr Me
  loc_D3EDCA: MemLdPr global_68
  loc_D3EDCD:  = Me.Fields
  loc_D3EDD2: FLdPr var_308
  loc_D3EDD5: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EDDA: FLdPr var_31C
  loc_D3EDDD:  = Me.Value
  loc_D3EDE2: FLdRfVar var_33C
  loc_D3EDE5: ConcatVar var_35C
  loc_D3EDE9: LitVarStr var_370, ",'"
  loc_D3EDEE: ConcatVar var_384
  loc_D3EDF2: FLdRfVar var_394
  loc_D3EDF5: FLdRfVar var_374
  loc_D3EDF8: LitVarStr var_3A4, "CodiConc"
  loc_D3EDFD: PopAdLdVar
  loc_D3EDFE: FLdRfVar var_360
  loc_D3EE01: FLdPr Me
  loc_D3EE04: MemLdPr global_68
  loc_D3EE07:  = Me.Fields
  loc_D3EE0C: FLdPr var_360
  loc_D3EE0F: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EE14: FLdPr var_374
  loc_D3EE17:  = Me.Value
  loc_D3EE1C: FLdRfVar var_394
  loc_D3EE1F: ConcatVar var_3B4
  loc_D3EE23: LitVarStr var_3C4, "',"
  loc_D3EE28: ConcatVar var_3D4
  loc_D3EE2C: FLdUI1
  loc_D3EE30: CVarUI1
  loc_D3EE34: ConcatVar var_3F4
  loc_D3EE38: LitVarStr var_408, ","
  loc_D3EE3D: ConcatVar var_418
  loc_D3EE41: ImpAdLdI2 MemVar_D93036
  loc_D3EE44: CVarI2 var_428
  loc_D3EE47: ConcatVar var_438
  loc_D3EE4B: LitVarStr var_448, ","
  loc_D3EE50: ConcatVar var_458
  loc_D3EE54: FLdRfVar var_480
  loc_D3EE57: FLdRfVar var_470
  loc_D3EE5A: LitVarStr var_46C, "CodiSeca"
  loc_D3EE5F: PopAdLdVar
  loc_D3EE60: FLdRfVar var_45C
  loc_D3EE63: FLdPr Me
  loc_D3EE66: MemLdPr global_68
  loc_D3EE69:  = Me.Fields
  loc_D3EE6E: FLdPr var_45C
  loc_D3EE71: from_stack_2 = Me.Item(from_stack_1)
  loc_D3EE76: FLdPr var_470
  loc_D3EE79:  = Me.Value
  loc_D3EE7E: FLdRfVar var_480
  loc_D3EE81: ConcatVar var_490
  loc_D3EE85: LitVarStr var_4A0, ","
  loc_D3EE8A: ConcatVar var_4B0
  loc_D3EE8E: FLdI2 var_CE
  loc_D3EE91: CVarI2 var_4C0
  loc_D3EE94: ConcatVar var_4D0
  loc_D3EE98: LitVarStr var_4E0, ","
  loc_D3EE9D: ConcatVar var_4F0
  loc_D3EEA1: LitI4 0
  loc_D3EEA6: LitI4 -1
  loc_D3EEAB: LitI4 1
  loc_D3EEB0: LitStr "."
  loc_D3EEB3: LitStr ","
  loc_D3EEB6: FLdFPR8 var_E8
  loc_D3EEB9: CStrR8
  loc_D3EEBB: FStStrNoPop var_194
  loc_D3EEBE: ImpAdCallI2 Replace(, , , , , )
  loc_D3EEC3: CVarStr var_500
  loc_D3EEC6: ConcatVar var_510
  loc_D3EECA: LitVarStr var_520, ","
  loc_D3EECF: ConcatVar var_530
  loc_D3EED3: LitI4 0
  loc_D3EED8: LitI4 -1
  loc_D3EEDD: LitI4 1
  loc_D3EEE2: LitStr "."
  loc_D3EEE5: LitStr ","
  loc_D3EEE8: FLdFPR8 var_F8
  loc_D3EEEB: CStrR8
  loc_D3EEED: FStStrNoPop var_198
  loc_D3EEF0: ImpAdCallI2 Replace(, , , , , )
  loc_D3EEF5: CVarStr var_540
  loc_D3EEF8: ConcatVar var_550
  loc_D3EEFC: LitVarStr var_560, ","
  loc_D3EF01: ConcatVar var_570
  loc_D3EF05: LitI4 0
  loc_D3EF0A: LitI4 -1
  loc_D3EF0F: LitI4 1
  loc_D3EF14: LitStr "."
  loc_D3EF17: LitStr ","
  loc_D3EF1A: FLdFPR8 var_100
  loc_D3EF1D: CStrR8
  loc_D3EF1F: FStStrNoPop var_19C
  loc_D3EF22: ImpAdCallI2 Replace(, , , , , )
  loc_D3EF27: CVarStr var_580
  loc_D3EF2A: ConcatVar var_590
  loc_D3EF2E: LitVarStr var_5A0, ","
  loc_D3EF33: ConcatVar var_5B0
  loc_D3EF37: LitI4 0
  loc_D3EF3C: LitI4 -1
  loc_D3EF41: LitI4 1
  loc_D3EF46: LitStr "."
  loc_D3EF49: LitStr ","
  loc_D3EF4C: FLdFPR8 var_108
  loc_D3EF4F: CStrR8
  loc_D3EF51: FStStrNoPop var_1A0
  loc_D3EF54: ImpAdCallI2 Replace(, , , , , )
  loc_D3EF59: CVarStr var_5C0
  loc_D3EF5C: ConcatVar var_5D0
  loc_D3EF60: LitVarStr var_5E0, ");"
  loc_D3EF65: ConcatVar var_5F0
  loc_D3EF69: CStrVarTmp
  loc_D3EF6A: FStStr var_13C
  loc_D3EF6D: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_D3EF7A: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = "": var_374 = "": var_45C = ""
  loc_D3EF95: FFreeVar var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_214 = "": var_1F4 = "": var_224 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D3EFE6: FLdRfVar var_13E
  loc_D3EFE9: NextUI1
  loc_D3EFEF: FLdPr Me
  loc_D3EFF2: MemLdPr global_68
  loc_D3EFF5: Me.MoveNext
  loc_D3EFFA: Branch loc_D3EA20
  loc_D3EFFD: FLdFPR8 var_148
  loc_D3F000: FLdFPR8 var_150
  loc_D3F003: SubR4
  loc_D3F004: FLdFPR8 var_158
  loc_D3F007: SubR4
  loc_D3F008: FLdFPR8 var_160
  loc_D3F00B: SubR4
  loc_D3F00C: FStFPR8 arg_68
  loc_D3F00F: FLdRfVar var_94
  loc_D3F012: CVarRef
  loc_D3F017: ImpAdCallI2 IsNumeric()
  loc_D3F01C: FStI2 var_1CA
  loc_D3F01F: ILdRf var_13C
  loc_D3F022: LitStr " INSERT INTO liqutasa (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,ActuLita,TipoLita,FealLita,FeveLita,DeudLita,PodeLita,DecaLita,ImpoLita,CrafLita,ExenLita,DescLita,GastLita,TotaLita,CucuPers,DetaPers,CodiRyB,DetaRyB,AvalInmu,CodiCall,CallLita,NucaLita,CodiBarr,BarrLita,ManzLita,CasaLita,UbicLita,CodiLoca,LocaLita,CopoLita,CodiCallReal,CallLitaReal,NucaLitaReal,CodiBarrReal,BarrLitaReal,ManzLitaReal,CasaLitaReal,UbicLitaReal,CodiLocaReal,LocaLitaReal,CopoLitaReal,EmitLita,DptoLita,DistLita,SeccLita,MansLita,ParcLita,SubpLita,DigiLita,Vinculo) "
  loc_D3F025: ConcatStr
  loc_D3F026: FStStrNoPop var_190
  loc_D3F029: LitStr " VALUES ("
  loc_D3F02C: ConcatStr
  loc_D3F02D: FStStrNoPop var_194
  loc_D3F030: FLdI2 PeriLiqu
  loc_D3F033: CStrUI1
  loc_D3F035: FStStrNoPop var_198
  loc_D3F038: ConcatStr
  loc_D3F039: FStStrNoPop var_19C
  loc_D3F03C: LitStr ","
  loc_D3F03F: ConcatStr
  loc_D3F040: FStStrNoPop var_1A0
  loc_D3F043: FLdUI1
  loc_D3F047: CStrI2
  loc_D3F049: FStStrNoPop var_1A4
  loc_D3F04C: ConcatStr
  loc_D3F04D: FStStrNoPop var_1A8
  loc_D3F050: LitStr ","
  loc_D3F053: ConcatStr
  loc_D3F054: CVarStr var_214
  loc_D3F057: FLdRfVar var_1F4
  loc_D3F05A: FLdRfVar var_1E4
  loc_D3F05D: LitVarStr var_1E0, "CodiTili"
  loc_D3F062: PopAdLdVar
  loc_D3F063: FLdRfVar var_1D0
  loc_D3F066: FLdPr Me
  loc_D3F069: MemLdPr global_64
  loc_D3F06C:  = Me.Fields
  loc_D3F071: FLdPr var_1D0
  loc_D3F074: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F079: FLdPr var_1E4
  loc_D3F07C:  = Me.Value
  loc_D3F081: FLdRfVar var_1F4
  loc_D3F084: ConcatVar var_224
  loc_D3F088: LitVarStr var_204, ","
  loc_D3F08D: ConcatVar var_234
  loc_D3F091: FLdRfVar var_254
  loc_D3F094: FLdRfVar var_26C
  loc_D3F097: LitVarStr var_244, "NumeLiqu"
  loc_D3F09C: PopAdLdVar
  loc_D3F09D: FLdRfVar var_258
  loc_D3F0A0: FLdPr Me
  loc_D3F0A3: MemLdPr global_64
  loc_D3F0A6:  = Me.Fields
  loc_D3F0AB: FLdPr var_258
  loc_D3F0AE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F0B3: FLdPr var_26C
  loc_D3F0B6:  = Me.Value
  loc_D3F0BB: FLdRfVar var_254
  loc_D3F0BE: ConcatVar var_27C
  loc_D3F0C2: LitVarStr var_268, ","
  loc_D3F0C7: ConcatVar var_28C
  loc_D3F0CB: FLdRfVar var_2AC
  loc_D3F0CE: FLdRfVar var_2C4
  loc_D3F0D1: LitVarStr var_29C, "CodiInmu"
  loc_D3F0D6: PopAdLdVar
  loc_D3F0D7: FLdRfVar var_2B0
  loc_D3F0DA: FLdPr Me
  loc_D3F0DD: MemLdPr global_64
  loc_D3F0E0:  = Me.Fields
  loc_D3F0E5: FLdPr var_2B0
  loc_D3F0E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F0ED: FLdPr var_2C4
  loc_D3F0F0:  = Me.Value
  loc_D3F0F5: FLdRfVar var_2AC
  loc_D3F0F8: ConcatVar var_2D4
  loc_D3F0FC: LitVarStr var_2C0, ",'"
  loc_D3F101: ConcatVar var_2E4
  loc_D3F105: FLdRfVar var_304
  loc_D3F108: FLdRfVar var_31C
  loc_D3F10B: LitVarStr var_2F4, "CodiConc"
  loc_D3F110: PopAdLdVar
  loc_D3F111: FLdRfVar var_308
  loc_D3F114: FLdPr Me
  loc_D3F117: MemLdPr global_64
  loc_D3F11A:  = Me.Fields
  loc_D3F11F: FLdPr var_308
  loc_D3F122: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F127: FLdPr var_31C
  loc_D3F12A:  = Me.Value
  loc_D3F12F: FLdRfVar var_304
  loc_D3F132: ConcatVar var_32C
  loc_D3F136: LitVarStr var_318, "',"
  loc_D3F13B: ConcatVar var_33C
  loc_D3F13F: FLdUI1
  loc_D3F143: CVarUI1
  loc_D3F147: ConcatVar var_35C
  loc_D3F14B: LitVarStr var_370, ",'No','"
  loc_D3F150: ConcatVar var_384
  loc_D3F154: FLdRfVar var_394
  loc_D3F157: FLdRfVar var_374
  loc_D3F15A: LitVarStr var_3A4, "TipoLita"
  loc_D3F15F: PopAdLdVar
  loc_D3F160: FLdRfVar var_360
  loc_D3F163: FLdPr Me
  loc_D3F166: MemLdPr global_64
  loc_D3F169:  = Me.Fields
  loc_D3F16E: FLdPr var_360
  loc_D3F171: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F176: FLdPr var_374
  loc_D3F179:  = Me.Value
  loc_D3F17E: FLdRfVar var_394
  loc_D3F181: ConcatVar var_3B4
  loc_D3F185: LitVarStr var_3C4, "','"
  loc_D3F18A: ConcatVar var_3D4
  loc_D3F18E: LitI4 1
  loc_D3F193: LitI4 1
  loc_D3F198: LitVarStr var_408, "yyyy-mm-dd"
  loc_D3F19D: FStVarCopyObj var_3F4
  loc_D3F1A0: FLdRfVar var_3F4
  loc_D3F1A3: FLdRfVar arg_118
  loc_D3F1A6: CVarRef
  loc_D3F1AB: ImpAdCallI2 Format$(, )
  loc_D3F1B0: CVarStr var_418
  loc_D3F1B3: ConcatVar var_438
  loc_D3F1B7: LitVarStr var_428, "','"
  loc_D3F1BC: ConcatVar var_458
  loc_D3F1C0: LitI4 1
  loc_D3F1C5: LitI4 1
  loc_D3F1CA: LitVarStr var_46C, "yyyy-mm-dd"
  loc_D3F1CF: FStVarCopyObj var_480
  loc_D3F1D2: FLdRfVar var_480
  loc_D3F1D5: FLdRfVar var_90
  loc_D3F1D8: CVarRef
  loc_D3F1DD: ImpAdCallI2 Format$(, )
  loc_D3F1E2: CVarStr var_490
  loc_D3F1E5: ConcatVar var_4B0
  loc_D3F1E9: LitVarStr var_4A0, "',"
  loc_D3F1EE: ConcatVar var_4D0
  loc_D3F1F2: LitI4 0
  loc_D3F1F7: LitI4 -1
  loc_D3F1FC: LitI4 1
  loc_D3F201: LitStr "."
  loc_D3F204: LitStr ","
  loc_D3F207: FLdFPR8 DeudLita
  loc_D3F20A: CStrR8
  loc_D3F20C: FStStrNoPop var_1AC
  loc_D3F20F: ImpAdCallI2 Replace(, , , , , )
  loc_D3F214: CVarStr var_4F0
  loc_D3F217: ConcatVar var_500
  loc_D3F21B: LitVarStr var_4C0, ","
  loc_D3F220: ConcatVar var_510
  loc_D3F224: LitI4 0
  loc_D3F229: LitI4 -1
  loc_D3F22E: LitI4 1
  loc_D3F233: LitStr "."
  loc_D3F236: LitStr ","
  loc_D3F239: FLdFPR8 arg_120
  loc_D3F23C: CStrR8
  loc_D3F23E: FStStrNoPop var_1B0
  loc_D3F241: ImpAdCallI2 Replace(, , , , , )
  loc_D3F246: CVarStr var_530
  loc_D3F249: ConcatVar var_540
  loc_D3F24D: LitVarStr var_4E0, ","
  loc_D3F252: ConcatVar var_550
  loc_D3F256: LitI4 0
  loc_D3F25B: LitI4 -1
  loc_D3F260: LitI4 1
  loc_D3F265: LitStr "."
  loc_D3F268: LitStr ","
  loc_D3F26B: FLdFPR8 ImpoLita
  loc_D3F26E: CStrR8
  loc_D3F270: FStStrNoPop var_1B4
  loc_D3F273: ImpAdCallI2 Replace(, , , , , )
  loc_D3F278: CVarStr var_570
  loc_D3F27B: ConcatVar var_580
  loc_D3F27F: LitVarStr var_520, ","
  loc_D3F284: ConcatVar var_590
  loc_D3F288: LitI4 0
  loc_D3F28D: LitI4 -1
  loc_D3F292: LitI4 1
  loc_D3F297: LitStr "."
  loc_D3F29A: LitStr ","
  loc_D3F29D: FLdFPR8 var_148
  loc_D3F2A0: CStrR8
  loc_D3F2A2: FStStrNoPop var_1B8
  loc_D3F2A5: ImpAdCallI2 Replace(, , , , , )
  loc_D3F2AA: CVarStr var_5B0
  loc_D3F2AD: ConcatVar var_5C0
  loc_D3F2B1: LitVarStr var_560, ","
  loc_D3F2B6: ConcatVar var_5D0
  loc_D3F2BA: LitI4 0
  loc_D3F2BF: LitI4 -1
  loc_D3F2C4: LitI4 1
  loc_D3F2C9: LitStr "."
  loc_D3F2CC: LitStr ","
  loc_D3F2CF: FLdFPR8 var_160
  loc_D3F2D2: CStrR8
  loc_D3F2D4: FStStrNoPop var_1BC
  loc_D3F2D7: ImpAdCallI2 Replace(, , , , , )
  loc_D3F2DC: CVarStr var_5F0
  loc_D3F2DF: ConcatVar var_600
  loc_D3F2E3: LitVarStr var_5A0, ","
  loc_D3F2E8: ConcatVar var_610
  loc_D3F2EC: LitI4 0
  loc_D3F2F1: LitI4 -1
  loc_D3F2F6: LitI4 1
  loc_D3F2FB: LitStr "."
  loc_D3F2FE: LitStr ","
  loc_D3F301: FLdFPR8 var_158
  loc_D3F304: CStrR8
  loc_D3F306: FStStrNoPop var_1C0
  loc_D3F309: ImpAdCallI2 Replace(, , , , , )
  loc_D3F30E: CVarStr var_620
  loc_D3F311: ConcatVar var_630
  loc_D3F315: LitVarStr var_5E0, ","
  loc_D3F31A: ConcatVar var_640
  loc_D3F31E: LitI4 0
  loc_D3F323: LitI4 -1
  loc_D3F328: LitI4 1
  loc_D3F32D: LitStr "."
  loc_D3F330: LitStr ","
  loc_D3F333: FLdFPR8 var_150
  loc_D3F336: CStrR8
  loc_D3F338: FStStrNoPop var_1C4
  loc_D3F33B: ImpAdCallI2 Replace(, , , , , )
  loc_D3F340: CVarStr var_650
  loc_D3F343: ConcatVar var_660
  loc_D3F347: LitVarStr var_670, ",0,"
  loc_D3F34C: ConcatVar var_680
  loc_D3F350: LitI4 0
  loc_D3F355: LitI4 -1
  loc_D3F35A: LitI4 1
  loc_D3F35F: LitStr "."
  loc_D3F362: LitStr ","
  loc_D3F365: FLdFPR8 arg_68
  loc_D3F368: CStrR8
  loc_D3F36A: FStStrNoPop var_684
  loc_D3F36D: ImpAdCallI2 Replace(, , , , , )
  loc_D3F372: CVarStr var_694
  loc_D3F375: ConcatVar var_6A4
  loc_D3F379: LitVarStr var_6B4, ",'"
  loc_D3F37E: ConcatVar var_6C4
  loc_D3F382: LitVarI2 var_714, 0
  loc_D3F387: FLdRfVar var_94
  loc_D3F38A: CVarRef
  loc_D3F38F: FLdI2 var_1CA
  loc_D3F392: CVarBoolI2 var_6E4
  loc_D3F396: FLdRfVar var_724
  loc_D3F399: ImpAdCallFPR4  = IIf(, , )
  loc_D3F39E: FLdRfVar var_724
  loc_D3F3A1: ConcatVar var_734
  loc_D3F3A5: LitVarStr var_744, "','"
  loc_D3F3AA: ConcatVar var_754
  loc_D3F3AE: LitI4 0
  loc_D3F3B3: LitI4 -1
  loc_D3F3B8: LitI4 1
  loc_D3F3BD: LitStr " "
  loc_D3F3C0: LitStr "'"
  loc_D3F3C3: ILdRf var_98
  loc_D3F3C6: ImpAdCallI2 Replace(, , , , , )
  loc_D3F3CB: CVarStr var_764
  loc_D3F3CE: ConcatVar var_774
  loc_D3F3D2: LitVarStr var_784, "',"
  loc_D3F3D7: ConcatVar var_794
  loc_D3F3DB: FLdI2 arg_AC
  loc_D3F3DE: CVarI2 var_7A4
  loc_D3F3E1: ConcatVar var_7B4
  loc_D3F3E5: LitVarStr var_7C4, ",'"
  loc_D3F3EA: ConcatVar var_7D4
  loc_D3F3EE: LitI4 &HB
  loc_D3F3F3: ILdI4 arg_A4
  loc_D3F3F6: Ary1LdRfVar
  loc_D3F3F8: ConcatVar var_7E4
  loc_D3F3FC: LitVarStr var_7F4, "',"
  loc_D3F401: ConcatVar var_804
  loc_D3F405: LitI4 0
  loc_D3F40A: LitI4 -1
  loc_D3F40F: LitI4 1
  loc_D3F414: LitStr "."
  loc_D3F417: LitStr ","
  loc_D3F41A: FLdFPR8 arg_B0
  loc_D3F41D: CStrR8
  loc_D3F41F: FStStrNoPop var_808
  loc_D3F422: ImpAdCallI2 Replace(, , , , , )
  loc_D3F427: CVarStr var_818
  loc_D3F42A: ConcatVar var_828
  loc_D3F42E: LitVarStr var_838, ","
  loc_D3F433: ConcatVar var_848
  loc_D3F437: ILdRf arg_78
  loc_D3F43A: CVarI4
  loc_D3F43E: ConcatVar var_868
  loc_D3F442: LitVarStr var_878, ",'"
  loc_D3F447: ConcatVar var_888
  loc_D3F44B: LitI4 0
  loc_D3F450: LitI4 -1
  loc_D3F455: LitI4 1
  loc_D3F45A: LitStr " "
  loc_D3F45D: LitStr "'"
  loc_D3F460: ILdRf var_9C
  loc_D3F463: ImpAdCallI2 Replace(, , , , , )
  loc_D3F468: CVarStr var_898
  loc_D3F46B: ConcatVar var_8A8
  loc_D3F46F: LitVarStr var_8B8, "',"
  loc_D3F474: ConcatVar var_8C8
  loc_D3F478: ILdRf Me0
  loc_D3F47B: CVarI4
  loc_D3F47F: ConcatVar var_8E8
  loc_D3F483: LitVarStr var_8F8, ","
  loc_D3F488: ConcatVar var_908
  loc_D3F48C: FLdI2 Me4
  loc_D3F48F: CVarI2 var_918
  loc_D3F492: ConcatVar var_928
  loc_D3F496: LitVarStr var_938, ",'"
  loc_D3F49B: ConcatVar var_948
  loc_D3F49F: ILdRf var_A0
  loc_D3F4A2: CVarStr var_958
  loc_D3F4A5: ConcatVar var_968
  loc_D3F4A9: LitVarStr var_978, "','"
  loc_D3F4AE: ConcatVar var_988
  loc_D3F4B2: LitI4 0
  loc_D3F4B7: LitI4 -1
  loc_D3F4BC: LitI4 1
  loc_D3F4C1: LitStr " "
  loc_D3F4C4: LitStr "'"
  loc_D3F4C7: ILdRf var_A4
  loc_D3F4CA: ImpAdCallI2 Replace(, , , , , )
  loc_D3F4CF: CVarStr var_998
  loc_D3F4D2: ConcatVar var_9A8
  loc_D3F4D6: LitVarStr var_9B8, "','"
  loc_D3F4DB: ConcatVar var_9C8
  loc_D3F4DF: LitI4 0
  loc_D3F4E4: LitI4 -1
  loc_D3F4E9: LitI4 1
  loc_D3F4EE: LitStr " "
  loc_D3F4F1: LitStr "'"
  loc_D3F4F4: ILdRf var_A8
  loc_D3F4F7: ImpAdCallI2 Replace(, , , , , )
  loc_D3F4FC: CVarStr var_9D8
  loc_D3F4FF: ConcatVar var_9E8
  loc_D3F503: LitVarStr var_9F8, "','"
  loc_D3F508: ConcatVar var_A08
  loc_D3F50C: ILdRf var_AC
  loc_D3F50F: CVarStr var_A18
  loc_D3F512: ConcatVar var_A28
  loc_D3F516: LitVarStr var_A38, "',"
  loc_D3F51B: ConcatVar var_A48
  loc_D3F51F: FLdI2 arg_98
  loc_D3F522: CVarI2 var_A58
  loc_D3F525: ConcatVar var_A68
  loc_D3F529: LitVarStr var_A78, ",'"
  loc_D3F52E: ConcatVar var_A88
  loc_D3F532: ILdRf var_B0
  loc_D3F535: CVarStr var_A98
  loc_D3F538: ConcatVar var_AA8
  loc_D3F53C: LitVarStr var_AB8, "','"
  loc_D3F541: ConcatVar var_AC8
  loc_D3F545: ILdRf var_B4
  loc_D3F548: CVarStr var_AD8
  loc_D3F54B: ConcatVar var_AE8
  loc_D3F54F: LitVarStr var_AF8, "',"
  loc_D3F554: ConcatVar var_B08
  loc_D3F558: LitI4 0
  loc_D3F55D: ILdI4 arg_A4
  loc_D3F560: Ary1LdRfVar
  loc_D3F562: ConcatVar var_B18
  loc_D3F566: LitVarStr var_B28, ",'"
  loc_D3F56B: ConcatVar var_B38
  loc_D3F56F: LitI4 0
  loc_D3F574: LitI4 -1
  loc_D3F579: LitI4 1
  loc_D3F57E: LitStr " "
  loc_D3F581: LitStr "'"
  loc_D3F584: LitI4 1
  loc_D3F589: ILdI4 arg_A4
  loc_D3F58C: Ary1LdRfVar
  loc_D3F58E: CStrVarVal var_B3C
  loc_D3F592: ImpAdCallI2 Replace(, , , , , )
  loc_D3F597: CVarStr var_B4C
  loc_D3F59A: ConcatVar var_B5C
  loc_D3F59E: LitVarStr var_B6C, "',"
  loc_D3F5A3: ConcatVar var_B7C
  loc_D3F5A7: LitI4 2
  loc_D3F5AC: ILdI4 arg_A4
  loc_D3F5AF: Ary1LdRfVar
  loc_D3F5B1: ConcatVar var_B8C
  loc_D3F5B5: LitVarStr var_B9C, ","
  loc_D3F5BA: ConcatVar var_BAC
  loc_D3F5BE: LitI4 3
  loc_D3F5C3: ILdI4 arg_A4
  loc_D3F5C6: Ary1LdRfVar
  loc_D3F5C8: ConcatVar var_BBC
  loc_D3F5CC: LitVarStr var_BCC, ",'"
  loc_D3F5D1: ConcatVar var_BDC
  loc_D3F5D5: LitI4 4
  loc_D3F5DA: ILdI4 arg_A4
  loc_D3F5DD: Ary1LdRfVar
  loc_D3F5DF: ConcatVar var_BEC
  loc_D3F5E3: LitVarStr var_BFC, "','"
  loc_D3F5E8: ConcatVar var_C0C
  loc_D3F5EC: LitI4 0
  loc_D3F5F1: LitI4 -1
  loc_D3F5F6: LitI4 1
  loc_D3F5FB: LitStr " "
  loc_D3F5FE: LitStr "'"
  loc_D3F601: LitI4 5
  loc_D3F606: ILdI4 arg_A4
  loc_D3F609: Ary1LdRfVar
  loc_D3F60B: CStrVarVal var_C10
  loc_D3F60F: ImpAdCallI2 Replace(, , , , , )
  loc_D3F614: CVarStr var_C20
  loc_D3F617: ConcatVar var_C30
  loc_D3F61B: LitVarStr var_C40, "','"
  loc_D3F620: ConcatVar var_C50
  loc_D3F624: LitI4 0
  loc_D3F629: LitI4 -1
  loc_D3F62E: LitI4 1
  loc_D3F633: LitStr " "
  loc_D3F636: LitStr "'"
  loc_D3F639: LitI4 6
  loc_D3F63E: ILdI4 arg_A4
  loc_D3F641: Ary1LdRfVar
  loc_D3F643: CStrVarVal var_C54
  loc_D3F647: ImpAdCallI2 Replace(, , , , , )
  loc_D3F64C: CVarStr var_C64
  loc_D3F64F: ConcatVar var_C74
  loc_D3F653: LitVarStr var_C84, "','"
  loc_D3F658: ConcatVar var_C94
  loc_D3F65C: LitI4 7
  loc_D3F661: ILdI4 arg_A4
  loc_D3F664: Ary1LdRfVar
  loc_D3F666: ConcatVar var_CA4
  loc_D3F66A: LitVarStr var_CB4, "',"
  loc_D3F66F: ConcatVar var_CC4
  loc_D3F673: LitI4 8
  loc_D3F678: ILdI4 arg_A4
  loc_D3F67B: Ary1LdRfVar
  loc_D3F67D: ConcatVar var_CD4
  loc_D3F681: LitVarStr var_CE4, ",'"
  loc_D3F686: ConcatVar var_CF4
  loc_D3F68A: LitI4 9
  loc_D3F68F: ILdI4 arg_A4
  loc_D3F692: Ary1LdRfVar
  loc_D3F694: ConcatVar var_D04
  loc_D3F698: LitVarStr var_D14, "','"
  loc_D3F69D: ConcatVar var_D24
  loc_D3F6A1: LitI4 &HA
  loc_D3F6A6: ILdI4 arg_A4
  loc_D3F6A9: Ary1LdRfVar
  loc_D3F6AB: ConcatVar var_D34
  loc_D3F6AF: LitVarStr var_D44, "',"
  loc_D3F6B4: ConcatVar var_D54
  loc_D3F6B8: FLdUI1
  loc_D3F6BC: CVarUI1
  loc_D3F6C0: ConcatVar var_D74
  loc_D3F6C4: LitVarStr var_D84, ","
  loc_D3F6C9: ConcatVar var_D94
  loc_D3F6CD: FLdI2 arg_F8
  loc_D3F6D0: CVarI2 var_DA4
  loc_D3F6D3: ConcatVar var_DB4
  loc_D3F6D7: LitVarStr var_DC4, ","
  loc_D3F6DC: ConcatVar var_DD4
  loc_D3F6E0: FLdI2 arg_FC
  loc_D3F6E3: CVarI2 var_DE4
  loc_D3F6E6: ConcatVar var_DF4
  loc_D3F6EA: LitVarStr var_E04, ","
  loc_D3F6EF: ConcatVar var_E14
  loc_D3F6F3: FLdI2 BimeLiqu0
  loc_D3F6F6: CVarI2 var_E24
  loc_D3F6F9: ConcatVar var_E34
  loc_D3F6FD: LitVarStr var_E44, ","
  loc_D3F702: ConcatVar var_E54
  loc_D3F706: FLdI2 BimeLiqu4
  loc_D3F709: CVarI2 var_E64
  loc_D3F70C: ConcatVar var_E74
  loc_D3F710: LitVarStr var_E84, ","
  loc_D3F715: ConcatVar var_E94
  loc_D3F719: ILdRf BimeLiqu8
  loc_D3F71C: CVarI4
  loc_D3F720: ConcatVar var_EB4
  loc_D3F724: LitVarStr var_EC4, ","
  loc_D3F729: ConcatVar var_ED4
  loc_D3F72D: FLdI2 BimeLiquC
  loc_D3F730: CVarI2 var_EE4
  loc_D3F733: ConcatVar var_EF4
  loc_D3F737: LitVarStr var_F04, ",'"
  loc_D3F73C: ConcatVar var_F14
  loc_D3F740: ILdRf var_B8
  loc_D3F743: CVarStr var_F24
  loc_D3F746: ConcatVar var_F34
  loc_D3F74A: LitVarStr var_F44, "','"
  loc_D3F74F: ConcatVar var_F54
  loc_D3F753: ILdRf var_BC
  loc_D3F756: CVarStr var_F64
  loc_D3F759: ConcatVar var_F74
  loc_D3F75D: LitVarStr var_F84, "');"
  loc_D3F762: ConcatVar var_F94
  loc_D3F766: CStrVarTmp
  loc_D3F767: FStStr var_13C
  loc_D3F76A: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = ""
  loc_D3F793: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = ""
  loc_D3F7AA: FFreeVar var_E14 = "": var_E34 = "": var_E54 = "": var_E74 = "": var_E94 = "": var_EB4 = "": var_ED4 = "": var_EF4 = "": var_F14 = "": var_F34 = "": var_F54 = "": var_F74 = "": var_F94 = "": var_B18 = "": var_B38 = "": var_B4C = "": var_B5C = "": var_B7C = "": var_B8C = "": var_BAC = "": var_BBC = "": var_BDC = "": var_BEC = "": var_C0C = "": var_C20 = "": var_C30 = "": var_C50 = "": var_C64 = "": var_C74 = "": var_C94 = "": var_CA4 = "": var_CC4 = "": var_CD4 = "": var_CF4 = "": var_D04 = "": var_D24 = "": var_D34 = "": var_D54 = "": var_D74 = "": var_D94 = "": var_DB4 = "": var_DD4 = "": var_DF4 = "": var_7E4 = "": var_804 = "": var_818 = "": var_828 = "": var_848 = "": var_868 = "": var_888 = "": var_898 = "": var_8A8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_928 = "": var_948 = "": var_968 = "": var_988 = "": var_998 = "": var_9A8 = "": var_9C8 = "": var_9D8 = "": var_9E8 = "": var_A08 = "": var_A28 = "": var_A48 = "": var_A68 = "": var_A88 = "": var_AA8 = "": var_AC8 = "": var_AE8 = "": var_B08 = "": var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_630 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_694 = "": var_6A4 = "": var_6E4 = "": var_714 = "": var_6C4 = "": var_724 = "": var_734 = "": var_754 = "": var_764 = "": var_774 = "": var_794 = "": var_7B4 = "": var_7D4 = "": var_214 = "": var_1F4 = "": var_224 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_3D4 = "": var_418 = "": var_438 = "": var_480 = "": var_458 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D3F8B7: Branch loc_D4028D
  loc_D3F8BA: LitI2_Byte 0
  loc_D3F8BC: CR8I2
  loc_D3F8BD: FStFPR8 var_150
  loc_D3F8C0: LitI2_Byte 0
  loc_D3F8C2: CR8I2
  loc_D3F8C3: FStFPR8 var_158
  loc_D3F8C6: LitI2_Byte 0
  loc_D3F8C8: CR8I2
  loc_D3F8C9: FStFPR8 var_160
  loc_D3F8CC: FLdRfVar var_1F4
  loc_D3F8CF: FLdRfVar var_1E4
  loc_D3F8D2: LitVarStr var_1E0, "CodiConc"
  loc_D3F8D7: PopAdLdVar
  loc_D3F8D8: FLdRfVar var_1D0
  loc_D3F8DB: FLdPr Me
  loc_D3F8DE: MemLdPr global_64
  loc_D3F8E1:  = Me.Fields
  loc_D3F8E6: FLdPr var_1D0
  loc_D3F8E9: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F8EE: FLdPr var_1E4
  loc_D3F8F1:  = Me.Value
  loc_D3F8F6: FLdRfVar var_1F4
  loc_D3F8F9: LitVarStr var_204, "13030202"
  loc_D3F8FE: HardType
  loc_D3F8FF: EqVarBool
  loc_D3F901: FFreeAd var_1D0 = ""
  loc_D3F908: FFree1Var var_1F4 = ""
  loc_D3F90B: BranchF loc_D3F94D
  loc_D3F90E: FLdRfVar var_1F4
  loc_D3F911: FLdRfVar var_1E4
  loc_D3F914: LitVarStr var_1E0, "ImpoLita"
  loc_D3F919: PopAdLdVar
  loc_D3F91A: FLdRfVar var_1D0
  loc_D3F91D: FLdPr Me
  loc_D3F920: MemLdPr global_64
  loc_D3F923:  = Me.Fields
  loc_D3F928: FLdPr var_1D0
  loc_D3F92B: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F930: FLdPr var_1E4
  loc_D3F933:  = Me.Value
  loc_D3F938: FLdRfVar var_1F4
  loc_D3F93B: FnCDblVar
  loc_D3F93D: FStFPR8 var_148
  loc_D3F940: FFreeAd var_1D0 = ""
  loc_D3F947: FFree1Var var_1F4 = ""
  loc_D3F94A: Branch loc_D3F98D
  loc_D3F94D: FLdRfVar var_1F4
  loc_D3F950: FLdRfVar var_1E4
  loc_D3F953: LitVarStr var_1E0, "ImpoLita"
  loc_D3F958: PopAdLdVar
  loc_D3F959: FLdRfVar var_1D0
  loc_D3F95C: FLdPr Me
  loc_D3F95F: MemLdPr global_64
  loc_D3F962:  = Me.Fields
  loc_D3F967: FLdPr var_1D0
  loc_D3F96A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3F96F: FLdPr var_1E4
  loc_D3F972:  = Me.Value
  loc_D3F977: FLdRfVar var_1F4
  loc_D3F97A: FnCDblVar
  loc_D3F97C: LitI2_Byte 6
  loc_D3F97E: CR8I2
  loc_D3F97F: MulR8
  loc_D3F980: FStFPR8 var_148
  loc_D3F983: FFreeAd var_1D0 = ""
  loc_D3F98A: FFree1Var var_1F4 = ""
  loc_D3F98D: LitI2_Byte 0
  loc_D3F98F: CR8I2
  loc_D3F990: FStFPR8 var_158
  loc_D3F993: LitI2_Byte 0
  loc_D3F995: CR8I2
  loc_D3F996: FStFPR8 var_160
  loc_D3F999: FLdFPR8 var_148
  loc_D3F99C: FLdFPR8 var_150
  loc_D3F99F: SubR4
  loc_D3F9A0: FLdFPR8 var_160
  loc_D3F9A3: SubR4
  loc_D3F9A4: FLdFPR8 var_158
  loc_D3F9A7: SubR4
  loc_D3F9A8: FStFPR8 arg_68
  loc_D3F9AB: FLdRfVar var_94
  loc_D3F9AE: CVarRef
  loc_D3F9B3: ImpAdCallI2 IsNumeric()
  loc_D3F9B8: FStI2 var_1CA
  loc_D3F9BB: ILdRf var_13C
  loc_D3F9BE: LitStr " INSERT INTO liqutasa (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,ActuLita,TipoLita,FealLita,FeveLita,DeudLita,PodeLita,DecaLita,ImpoLita,CrafLita,ExenLita,DescLita,GastLita,TotaLita,CucuPers,DetaPers,CodiRyB,DetaRyB,AvalInmu,CodiCall,CallLita,NucaLita,CodiBarr,BarrLita,ManzLita,CasaLita,UbicLita,CodiLoca,LocaLita,CopoLita,CodiCallReal,CallLitaReal,NucaLitaReal,CodiBarrReal,BarrLitaReal,ManzLitaReal,CasaLitaReal,UbicLitaReal,CodiLocaReal,LocaLitaReal,CopoLitaReal,EmitLita,DptoLita,DistLita,SeccLita,MansLita,ParcLita,SubpLita,DigiLita,Vinculo) "
  loc_D3F9C1: ConcatStr
  loc_D3F9C2: FStStrNoPop var_190
  loc_D3F9C5: LitStr " VALUES ("
  loc_D3F9C8: ConcatStr
  loc_D3F9C9: FStStrNoPop var_194
  loc_D3F9CC: FLdI2 PeriLiqu
  loc_D3F9CF: CStrUI1
  loc_D3F9D1: FStStrNoPop var_198
  loc_D3F9D4: ConcatStr
  loc_D3F9D5: FStStrNoPop var_19C
  loc_D3F9D8: LitStr ","
  loc_D3F9DB: ConcatStr
  loc_D3F9DC: FStStrNoPop var_1A0
  loc_D3F9DF: FLdUI1
  loc_D3F9E3: CStrI2
  loc_D3F9E5: FStStrNoPop var_1A4
  loc_D3F9E8: ConcatStr
  loc_D3F9E9: FStStrNoPop var_1A8
  loc_D3F9EC: LitStr ","
  loc_D3F9EF: ConcatStr
  loc_D3F9F0: CVarStr var_214
  loc_D3F9F3: FLdRfVar var_1F4
  loc_D3F9F6: FLdRfVar var_1E4
  loc_D3F9F9: LitVarStr var_1E0, "CodiTili"
  loc_D3F9FE: PopAdLdVar
  loc_D3F9FF: FLdRfVar var_1D0
  loc_D3FA02: FLdPr Me
  loc_D3FA05: MemLdPr global_64
  loc_D3FA08:  = Me.Fields
  loc_D3FA0D: FLdPr var_1D0
  loc_D3FA10: from_stack_2 = Me.Item(from_stack_1)
  loc_D3FA15: FLdPr var_1E4
  loc_D3FA18:  = Me.Value
  loc_D3FA1D: FLdRfVar var_1F4
  loc_D3FA20: ConcatVar var_224
  loc_D3FA24: LitVarStr var_204, ","
  loc_D3FA29: ConcatVar var_234
  loc_D3FA2D: FLdRfVar var_254
  loc_D3FA30: FLdRfVar var_26C
  loc_D3FA33: LitVarStr var_244, "NumeLiqu"
  loc_D3FA38: PopAdLdVar
  loc_D3FA39: FLdRfVar var_258
  loc_D3FA3C: FLdPr Me
  loc_D3FA3F: MemLdPr global_64
  loc_D3FA42:  = Me.Fields
  loc_D3FA47: FLdPr var_258
  loc_D3FA4A: from_stack_2 = Me.Item(from_stack_1)
  loc_D3FA4F: FLdPr var_26C
  loc_D3FA52:  = Me.Value
  loc_D3FA57: FLdRfVar var_254
  loc_D3FA5A: ConcatVar var_27C
  loc_D3FA5E: LitVarStr var_268, ","
  loc_D3FA63: ConcatVar var_28C
  loc_D3FA67: FLdRfVar var_2AC
  loc_D3FA6A: FLdRfVar var_2C4
  loc_D3FA6D: LitVarStr var_29C, "CodiInmu"
  loc_D3FA72: PopAdLdVar
  loc_D3FA73: FLdRfVar var_2B0
  loc_D3FA76: FLdPr Me
  loc_D3FA79: MemLdPr global_64
  loc_D3FA7C:  = Me.Fields
  loc_D3FA81: FLdPr var_2B0
  loc_D3FA84: from_stack_2 = Me.Item(from_stack_1)
  loc_D3FA89: FLdPr var_2C4
  loc_D3FA8C:  = Me.Value
  loc_D3FA91: FLdRfVar var_2AC
  loc_D3FA94: ConcatVar var_2D4
  loc_D3FA98: LitVarStr var_2C0, ",'"
  loc_D3FA9D: ConcatVar var_2E4
  loc_D3FAA1: FLdRfVar var_304
  loc_D3FAA4: FLdRfVar var_31C
  loc_D3FAA7: LitVarStr var_2F4, "CodiConc"
  loc_D3FAAC: PopAdLdVar
  loc_D3FAAD: FLdRfVar var_308
  loc_D3FAB0: FLdPr Me
  loc_D3FAB3: MemLdPr global_64
  loc_D3FAB6:  = Me.Fields
  loc_D3FABB: FLdPr var_308
  loc_D3FABE: from_stack_2 = Me.Item(from_stack_1)
  loc_D3FAC3: FLdPr var_31C
  loc_D3FAC6:  = Me.Value
  loc_D3FACB: FLdRfVar var_304
  loc_D3FACE: ConcatVar var_32C
  loc_D3FAD2: LitVarStr var_318, "',"
  loc_D3FAD7: ConcatVar var_33C
  loc_D3FADB: FLdUI1
  loc_D3FADF: CVarUI1
  loc_D3FAE3: ConcatVar var_35C
  loc_D3FAE7: LitVarStr var_370, ",'No','"
  loc_D3FAEC: ConcatVar var_384
  loc_D3FAF0: FLdRfVar var_394
  loc_D3FAF3: FLdRfVar var_374
  loc_D3FAF6: LitVarStr var_3A4, "TipoLita"
  loc_D3FAFB: PopAdLdVar
  loc_D3FAFC: FLdRfVar var_360
  loc_D3FAFF: FLdPr Me
  loc_D3FB02: MemLdPr global_64
  loc_D3FB05:  = Me.Fields
  loc_D3FB0A: FLdPr var_360
  loc_D3FB0D: from_stack_2 = Me.Item(from_stack_1)
  loc_D3FB12: FLdPr var_374
  loc_D3FB15:  = Me.Value
  loc_D3FB1A: FLdRfVar var_394
  loc_D3FB1D: ConcatVar var_3B4
  loc_D3FB21: LitVarStr var_3C4, "','"
  loc_D3FB26: ConcatVar var_3D4
  loc_D3FB2A: LitI4 1
  loc_D3FB2F: LitI4 1
  loc_D3FB34: LitVarStr var_408, "yyyy-mm-dd"
  loc_D3FB39: FStVarCopyObj var_3F4
  loc_D3FB3C: FLdRfVar var_3F4
  loc_D3FB3F: FLdRfVar arg_118
  loc_D3FB42: CVarRef
  loc_D3FB47: ImpAdCallI2 Format$(, )
  loc_D3FB4C: CVarStr var_418
  loc_D3FB4F: ConcatVar var_438
  loc_D3FB53: LitVarStr var_428, "','"
  loc_D3FB58: ConcatVar var_458
  loc_D3FB5C: LitI4 1
  loc_D3FB61: LitI4 1
  loc_D3FB66: LitVarStr var_46C, "yyyy-mm-dd"
  loc_D3FB6B: FStVarCopyObj var_480
  loc_D3FB6E: FLdRfVar var_480
  loc_D3FB71: FLdRfVar var_90
  loc_D3FB74: CVarRef
  loc_D3FB79: ImpAdCallI2 Format$(, )
  loc_D3FB7E: CVarStr var_490
  loc_D3FB81: ConcatVar var_4B0
  loc_D3FB85: LitVarStr var_4A0, "',"
  loc_D3FB8A: ConcatVar var_4D0
  loc_D3FB8E: LitI4 0
  loc_D3FB93: LitI4 -1
  loc_D3FB98: LitI4 1
  loc_D3FB9D: LitStr "."
  loc_D3FBA0: LitStr ","
  loc_D3FBA3: FLdFPR8 DeudLita
  loc_D3FBA6: CStrR8
  loc_D3FBA8: FStStrNoPop var_1AC
  loc_D3FBAB: ImpAdCallI2 Replace(, , , , , )
  loc_D3FBB0: CVarStr var_4F0
  loc_D3FBB3: ConcatVar var_500
  loc_D3FBB7: LitVarStr var_4C0, ","
  loc_D3FBBC: ConcatVar var_510
  loc_D3FBC0: LitI4 0
  loc_D3FBC5: LitI4 -1
  loc_D3FBCA: LitI4 1
  loc_D3FBCF: LitStr "."
  loc_D3FBD2: LitStr ","
  loc_D3FBD5: FLdFPR8 arg_120
  loc_D3FBD8: CStrR8
  loc_D3FBDA: FStStrNoPop var_1B0
  loc_D3FBDD: ImpAdCallI2 Replace(, , , , , )
  loc_D3FBE2: CVarStr var_530
  loc_D3FBE5: ConcatVar var_540
  loc_D3FBE9: LitVarStr var_4E0, ","
  loc_D3FBEE: ConcatVar var_550
  loc_D3FBF2: LitI4 0
  loc_D3FBF7: LitI4 -1
  loc_D3FBFC: LitI4 1
  loc_D3FC01: LitStr "."
  loc_D3FC04: LitStr ","
  loc_D3FC07: FLdFPR8 ImpoLita
  loc_D3FC0A: CStrR8
  loc_D3FC0C: FStStrNoPop var_1B4
  loc_D3FC0F: ImpAdCallI2 Replace(, , , , , )
  loc_D3FC14: CVarStr var_570
  loc_D3FC17: ConcatVar var_580
  loc_D3FC1B: LitVarStr var_520, ","
  loc_D3FC20: ConcatVar var_590
  loc_D3FC24: LitI4 0
  loc_D3FC29: LitI4 -1
  loc_D3FC2E: LitI4 1
  loc_D3FC33: LitStr "."
  loc_D3FC36: LitStr ","
  loc_D3FC39: FLdFPR8 var_148
  loc_D3FC3C: CStrR8
  loc_D3FC3E: FStStrNoPop var_1B8
  loc_D3FC41: ImpAdCallI2 Replace(, , , , , )
  loc_D3FC46: CVarStr var_5B0
  loc_D3FC49: ConcatVar var_5C0
  loc_D3FC4D: LitVarStr var_560, ","
  loc_D3FC52: ConcatVar var_5D0
  loc_D3FC56: LitI4 0
  loc_D3FC5B: LitI4 -1
  loc_D3FC60: LitI4 1
  loc_D3FC65: LitStr "."
  loc_D3FC68: LitStr ","
  loc_D3FC6B: FLdFPR8 var_160
  loc_D3FC6E: CStrR8
  loc_D3FC70: FStStrNoPop var_1BC
  loc_D3FC73: ImpAdCallI2 Replace(, , , , , )
  loc_D3FC78: CVarStr var_5F0
  loc_D3FC7B: ConcatVar var_600
  loc_D3FC7F: LitVarStr var_5A0, ","
  loc_D3FC84: ConcatVar var_610
  loc_D3FC88: LitI4 0
  loc_D3FC8D: LitI4 -1
  loc_D3FC92: LitI4 1
  loc_D3FC97: LitStr "."
  loc_D3FC9A: LitStr ","
  loc_D3FC9D: FLdFPR8 var_158
  loc_D3FCA0: CStrR8
  loc_D3FCA2: FStStrNoPop var_1C0
  loc_D3FCA5: ImpAdCallI2 Replace(, , , , , )
  loc_D3FCAA: CVarStr var_620
  loc_D3FCAD: ConcatVar var_630
  loc_D3FCB1: LitVarStr var_5E0, ","
  loc_D3FCB6: ConcatVar var_640
  loc_D3FCBA: LitI4 0
  loc_D3FCBF: LitI4 -1
  loc_D3FCC4: LitI4 1
  loc_D3FCC9: LitStr "."
  loc_D3FCCC: LitStr ","
  loc_D3FCCF: FLdFPR8 var_150
  loc_D3FCD2: CStrR8
  loc_D3FCD4: FStStrNoPop var_1C4
  loc_D3FCD7: ImpAdCallI2 Replace(, , , , , )
  loc_D3FCDC: CVarStr var_650
  loc_D3FCDF: ConcatVar var_660
  loc_D3FCE3: LitVarStr var_670, ","
  loc_D3FCE8: ConcatVar var_680
  loc_D3FCEC: LitI4 0
  loc_D3FCF1: LitI4 -1
  loc_D3FCF6: LitI4 1
  loc_D3FCFB: LitStr "."
  loc_D3FCFE: LitStr ","
  loc_D3FD01: FLdFPR8 arg_60
  loc_D3FD04: CStrR8
  loc_D3FD06: FStStrNoPop var_684
  loc_D3FD09: ImpAdCallI2 Replace(, , , , , )
  loc_D3FD0E: CVarStr var_694
  loc_D3FD11: ConcatVar var_6A4
  loc_D3FD15: LitVarStr var_6B4, ","
  loc_D3FD1A: ConcatVar var_6C4
  loc_D3FD1E: LitI4 0
  loc_D3FD23: LitI4 -1
  loc_D3FD28: LitI4 1
  loc_D3FD2D: LitStr "."
  loc_D3FD30: LitStr ","
  loc_D3FD33: FLdFPR8 arg_68
  loc_D3FD36: CStrR8
  loc_D3FD38: FStStrNoPop var_808
  loc_D3FD3B: ImpAdCallI2 Replace(, , , , , )
  loc_D3FD40: CVarStr var_714
  loc_D3FD43: ConcatVar var_724
  loc_D3FD47: LitVarStr var_6D4, ",'"
  loc_D3FD4C: ConcatVar var_734
  loc_D3FD50: LitVarI2 var_754, 0
  loc_D3FD55: FLdRfVar var_94
  loc_D3FD58: CVarRef
  loc_D3FD5D: FLdI2 var_1CA
  loc_D3FD60: CVarBoolI2 var_6F4
  loc_D3FD64: FLdRfVar var_764
  loc_D3FD67: ImpAdCallFPR4  = IIf(, , )
  loc_D3FD6C: FLdRfVar var_764
  loc_D3FD6F: ConcatVar var_774
  loc_D3FD73: LitVarStr var_784, "','"
  loc_D3FD78: ConcatVar var_794
  loc_D3FD7C: LitI4 0
  loc_D3FD81: LitI4 -1
  loc_D3FD86: LitI4 1
  loc_D3FD8B: LitStr " "
  loc_D3FD8E: LitStr "'"
  loc_D3FD91: ILdRf var_98
  loc_D3FD94: ImpAdCallI2 Replace(, , , , , )
  loc_D3FD99: CVarStr var_7B4
  loc_D3FD9C: ConcatVar var_7D4
  loc_D3FDA0: LitVarStr var_7A4, "',"
  loc_D3FDA5: ConcatVar var_7E4
  loc_D3FDA9: FLdI2 arg_AC
  loc_D3FDAC: CVarI2 var_7C4
  loc_D3FDAF: ConcatVar var_804
  loc_D3FDB3: LitVarStr var_7F4, ",'"
  loc_D3FDB8: ConcatVar var_818
  loc_D3FDBC: LitI4 &HB
  loc_D3FDC1: ILdI4 arg_A4
  loc_D3FDC4: Ary1LdRfVar
  loc_D3FDC6: ConcatVar var_828
  loc_D3FDCA: LitVarStr var_838, "',"
  loc_D3FDCF: ConcatVar var_848
  loc_D3FDD3: LitI4 0
  loc_D3FDD8: LitI4 -1
  loc_D3FDDD: LitI4 1
  loc_D3FDE2: LitStr "."
  loc_D3FDE5: LitStr ","
  loc_D3FDE8: FLdFPR8 arg_B0
  loc_D3FDEB: CStrR8
  loc_D3FDED: FStStrNoPop var_B3C
  loc_D3FDF0: ImpAdCallI2 Replace(, , , , , )
  loc_D3FDF5: CVarStr var_868
  loc_D3FDF8: ConcatVar var_888
  loc_D3FDFC: LitVarStr var_858, ","
  loc_D3FE01: ConcatVar var_898
  loc_D3FE05: ILdRf arg_78
  loc_D3FE08: CVarI4
  loc_D3FE0C: ConcatVar var_8A8
  loc_D3FE10: LitVarStr var_8B8, ",'"
  loc_D3FE15: ConcatVar var_8C8
  loc_D3FE19: LitI4 0
  loc_D3FE1E: LitI4 -1
  loc_D3FE23: LitI4 1
  loc_D3FE28: LitStr " "
  loc_D3FE2B: LitStr "'"
  loc_D3FE2E: ILdRf var_9C
  loc_D3FE31: ImpAdCallI2 Replace(, , , , , )
  loc_D3FE36: CVarStr var_8E8
  loc_D3FE39: ConcatVar var_908
  loc_D3FE3D: LitVarStr var_8D8, "',"
  loc_D3FE42: ConcatVar var_928
  loc_D3FE46: ILdRf Me0
  loc_D3FE49: CVarI4
  loc_D3FE4D: ConcatVar var_948
  loc_D3FE51: LitVarStr var_918, ","
  loc_D3FE56: ConcatVar var_968
  loc_D3FE5A: FLdI2 Me4
  loc_D3FE5D: CVarI2 var_938
  loc_D3FE60: ConcatVar var_988
  loc_D3FE64: LitVarStr var_958, ",'"
  loc_D3FE69: ConcatVar var_998
  loc_D3FE6D: ILdRf var_A0
  loc_D3FE70: CVarStr var_978
  loc_D3FE73: ConcatVar var_9A8
  loc_D3FE77: LitVarStr var_9B8, "','"
  loc_D3FE7C: ConcatVar var_9C8
  loc_D3FE80: LitI4 0
  loc_D3FE85: LitI4 -1
  loc_D3FE8A: LitI4 1
  loc_D3FE8F: LitStr " "
  loc_D3FE92: LitStr "'"
  loc_D3FE95: ILdRf var_A4
  loc_D3FE98: ImpAdCallI2 Replace(, , , , , )
  loc_D3FE9D: CVarStr var_9D8
  loc_D3FEA0: ConcatVar var_9E8
  loc_D3FEA4: LitVarStr var_9F8, "','"
  loc_D3FEA9: ConcatVar var_A08
  loc_D3FEAD: LitI4 0
  loc_D3FEB2: LitI4 -1
  loc_D3FEB7: LitI4 1
  loc_D3FEBC: LitStr " "
  loc_D3FEBF: LitStr "'"
  loc_D3FEC2: ILdRf var_A8
  loc_D3FEC5: ImpAdCallI2 Replace(, , , , , )
  loc_D3FECA: CVarStr var_A28
  loc_D3FECD: ConcatVar var_A48
  loc_D3FED1: LitVarStr var_A18, "','"
  loc_D3FED6: ConcatVar var_A68
  loc_D3FEDA: ILdRf var_AC
  loc_D3FEDD: CVarStr var_A38
  loc_D3FEE0: ConcatVar var_A88
  loc_D3FEE4: LitVarStr var_A58, "',"
  loc_D3FEE9: ConcatVar var_AA8
  loc_D3FEED: FLdI2 arg_98
  loc_D3FEF0: CVarI2 var_A78
  loc_D3FEF3: ConcatVar var_AC8
  loc_D3FEF7: LitVarStr var_A98, ",'"
  loc_D3FEFC: ConcatVar var_AE8
  loc_D3FF00: ILdRf var_B0
  loc_D3FF03: CVarStr var_AB8
  loc_D3FF06: ConcatVar var_B08
  loc_D3FF0A: LitVarStr var_AD8, "','"
  loc_D3FF0F: ConcatVar var_B18
  loc_D3FF13: ILdRf var_B4
  loc_D3FF16: CVarStr var_AF8
  loc_D3FF19: ConcatVar var_B38
  loc_D3FF1D: LitVarStr var_B28, "',"
  loc_D3FF22: ConcatVar var_B4C
  loc_D3FF26: LitI4 0
  loc_D3FF2B: ILdI4 arg_A4
  loc_D3FF2E: Ary1LdRfVar
  loc_D3FF30: ConcatVar var_B5C
  loc_D3FF34: LitVarStr var_B6C, ",'"
  loc_D3FF39: ConcatVar var_B7C
  loc_D3FF3D: LitI4 0
  loc_D3FF42: LitI4 -1
  loc_D3FF47: LitI4 1
  loc_D3FF4C: LitStr " "
  loc_D3FF4F: LitStr "'"
  loc_D3FF52: LitI4 1
  loc_D3FF57: ILdI4 arg_A4
  loc_D3FF5A: Ary1LdRfVar
  loc_D3FF5C: CStrVarVal var_C10
  loc_D3FF60: ImpAdCallI2 Replace(, , , , , )
  loc_D3FF65: CVarStr var_B8C
  loc_D3FF68: ConcatVar var_BAC
  loc_D3FF6C: LitVarStr var_B9C, "',"
  loc_D3FF71: ConcatVar var_BBC
  loc_D3FF75: LitI4 2
  loc_D3FF7A: ILdI4 arg_A4
  loc_D3FF7D: Ary1LdRfVar
  loc_D3FF7F: ConcatVar var_BDC
  loc_D3FF83: LitVarStr var_BCC, ","
  loc_D3FF88: ConcatVar var_BEC
  loc_D3FF8C: LitI4 3
  loc_D3FF91: ILdI4 arg_A4
  loc_D3FF94: Ary1LdRfVar
  loc_D3FF96: ConcatVar var_C0C
  loc_D3FF9A: LitVarStr var_BFC, ",'"
  loc_D3FF9F: ConcatVar var_C20
  loc_D3FFA3: LitI4 4
  loc_D3FFA8: ILdI4 arg_A4
  loc_D3FFAB: Ary1LdRfVar
  loc_D3FFAD: ConcatVar var_C30
  loc_D3FFB1: LitVarStr var_C40, "','"
  loc_D3FFB6: ConcatVar var_C50
  loc_D3FFBA: LitI4 0
  loc_D3FFBF: LitI4 -1
  loc_D3FFC4: LitI4 1
  loc_D3FFC9: LitStr " "
  loc_D3FFCC: LitStr "'"
  loc_D3FFCF: LitI4 5
  loc_D3FFD4: ILdI4 arg_A4
  loc_D3FFD7: Ary1LdRfVar
  loc_D3FFD9: CStrVarVal var_C54
  loc_D3FFDD: ImpAdCallI2 Replace(, , , , , )
  loc_D3FFE2: CVarStr var_C64
  loc_D3FFE5: ConcatVar var_C74
  loc_D3FFE9: LitVarStr var_C84, "','"
  loc_D3FFEE: ConcatVar var_C94
  loc_D3FFF2: LitI4 0
  loc_D3FFF7: LitI4 -1
  loc_D3FFFC: LitI4 1
  loc_D40001: LitStr " "
  loc_D40004: LitStr "'"
  loc_D40007: LitI4 6
  loc_D4000C: ILdI4 arg_A4
  loc_D4000F: Ary1LdRfVar
  loc_D40011: CStrVarVal var_F98
  loc_D40015: ImpAdCallI2 Replace(, , , , , )
  loc_D4001A: CVarStr var_CA4
  loc_D4001D: ConcatVar var_CC4
  loc_D40021: LitVarStr var_CB4, "','"
  loc_D40026: ConcatVar var_CD4
  loc_D4002A: LitI4 7
  loc_D4002F: ILdI4 arg_A4
  loc_D40032: Ary1LdRfVar
  loc_D40034: ConcatVar var_CF4
  loc_D40038: LitVarStr var_CE4, "',"
  loc_D4003D: ConcatVar var_D04
  loc_D40041: LitI4 8
  loc_D40046: ILdI4 arg_A4
  loc_D40049: Ary1LdRfVar
  loc_D4004B: ConcatVar var_D24
  loc_D4004F: LitVarStr var_D14, ",'"
  loc_D40054: ConcatVar var_D34
  loc_D40058: LitI4 9
  loc_D4005D: ILdI4 arg_A4
  loc_D40060: Ary1LdRfVar
  loc_D40062: ConcatVar var_D54
  loc_D40066: LitVarStr var_D44, "','"
  loc_D4006B: ConcatVar var_D74
  loc_D4006F: LitI4 &HA
  loc_D40074: ILdI4 arg_A4
  loc_D40077: Ary1LdRfVar
  loc_D40079: ConcatVar var_D94
  loc_D4007D: LitVarStr var_D64, "',"
  loc_D40082: ConcatVar var_DB4
  loc_D40086: FLdUI1
  loc_D4008A: CVarUI1
  loc_D4008E: ConcatVar var_DD4
  loc_D40092: LitVarStr var_DA4, ","
  loc_D40097: ConcatVar var_DF4
  loc_D4009B: FLdI2 arg_F8
  loc_D4009E: CVarI2 var_DC4
  loc_D400A1: ConcatVar var_E14
  loc_D400A5: LitVarStr var_DE4, ","
  loc_D400AA: ConcatVar var_E34
  loc_D400AE: FLdI2 arg_FC
  loc_D400B1: CVarI2 var_E04
  loc_D400B4: ConcatVar var_E54
  loc_D400B8: LitVarStr var_E24, ","
  loc_D400BD: ConcatVar var_E74
  loc_D400C1: FLdI2 BimeLiqu0
  loc_D400C4: CVarI2 var_E44
  loc_D400C7: ConcatVar var_E94
  loc_D400CB: LitVarStr var_E64, ","
  loc_D400D0: ConcatVar var_EB4
  loc_D400D4: FLdI2 BimeLiqu4
  loc_D400D7: CVarI2 var_E84
  loc_D400DA: ConcatVar var_ED4
  loc_D400DE: LitVarStr var_EA4, ","
  loc_D400E3: ConcatVar var_EF4
  loc_D400E7: ILdRf BimeLiqu8
  loc_D400EA: CVarI4
  loc_D400EE: ConcatVar var_F14
  loc_D400F2: LitVarStr var_EE4, ","
  loc_D400F7: ConcatVar var_F34
  loc_D400FB: FLdI2 BimeLiquC
  loc_D400FE: CVarI2 var_F04
  loc_D40101: ConcatVar var_F54
  loc_D40105: LitVarStr var_F24, ",'"
  loc_D4010A: ConcatVar var_F74
  loc_D4010E: ILdRf var_B8
  loc_D40111: CVarStr var_F44
  loc_D40114: ConcatVar var_F94
  loc_D40118: LitVarStr var_F64, "','"
  loc_D4011D: ConcatVar var_FA8
  loc_D40121: ILdRf var_BC
  loc_D40124: CVarStr var_F84
  loc_D40127: ConcatVar var_FB8
  loc_D4012B: LitVarStr var_FC8, "');"
  loc_D40130: ConcatVar var_FD8
  loc_D40134: CStrVarTmp
  loc_D40135: FStStr var_13C
  loc_D40138: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = ""
  loc_D40163: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = ""
  loc_D4017A: FFreeVar var_E14 = "": var_E34 = "": var_E54 = "": var_E74 = "": var_E94 = "": var_EB4 = "": var_ED4 = "": var_EF4 = "": var_F14 = "": var_F34 = "": var_F54 = "": var_F74 = "": var_F94 = "": var_FA8 = "": var_FB8 = "": var_FD8 = "": var_B18 = "": var_B38 = "": var_B4C = "": var_B5C = "": var_B7C = "": var_B8C = "": var_BAC = "": var_BBC = "": var_BDC = "": var_BEC = "": var_C0C = "": var_C20 = "": var_C30 = "": var_C50 = "": var_C64 = "": var_C74 = "": var_C94 = "": var_CA4 = "": var_CC4 = "": var_CD4 = "": var_CF4 = "": var_D04 = "": var_D24 = "": var_D34 = "": var_D54 = "": var_D74 = "": var_D94 = "": var_DB4 = "": var_DD4 = "": var_DF4 = "": var_7E4 = "": var_804 = "": var_818 = "": var_828 = "": var_848 = "": var_868 = "": var_888 = "": var_898 = "": var_8A8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_928 = "": var_948 = "": var_968 = "": var_988 = "": var_998 = "": var_9A8 = "": var_9C8 = "": var_9D8 = "": var_9E8 = "": var_A08 = "": var_A28 = "": var_A48 = "": var_A68 = "": var_A88 = "": var_AA8 = "": var_AC8 = "": var_AE8 = "": var_B08 = "": var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_630 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_694 = "": var_6A4 = "": var_6C4 = "": var_714 = "": var_724 = "": var_6F4 = "": var_754 = "": var_734 = "": var_764 = "": var_774 = "": var_794 = "": var_7B4 = "": var_7D4 = "": var_214 = "": var_1F4 = "": var_224 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3F4 = "": var_3D4 = "": var_418 = "": var_438 = "": var_480 = "": var_458 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D4028D: FLdPr Me
  loc_D40290: MemLdPr global_64
  loc_D40293: Me.MoveNext
  loc_D40298: Branch loc_D3E800
  loc_D4029B: ILdRf var_13C
  loc_D4029E: Call EjecutarRsCls(from_stack_1v)
  loc_D402A3: Branch loc_D4336C
  loc_D402A6: FLdRfVar var_94
  loc_D402A9: CVarRef
  loc_D402AE: ImpAdCallI2 IsNumeric()
  loc_D402B3: FStI2 var_1CA
  loc_D402B6: LitStr "START TRANSACTION; INSERT INTO liqutasa (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,ActuLita,TipoLita,FealLita,FeveLita,DeudLita,PodeLita,DecaLita,ImpoLita,CrafLita,ExenLita,DescLita,GastLita,TotaLita,CucuPers,DetaPers,CodiRyB,DetaRyB,AvalInmu,CodiCall,CallLita,NucaLita,CodiBarr,BarrLita,ManzLita,CasaLita,UbicLita,CodiLoca,LocaLita,CopoLita,CodiCallReal,CallLitaReal,NucaLitaReal,CodiBarrReal,BarrLitaReal,ManzLitaReal,CasaLitaReal,UbicLitaReal,CodiLocaReal,LocaLitaReal,CopoLitaReal,EmitLita,DptoLita,DistLita,SeccLita,MansLita,ParcLita,SubpLita,DigiLita,Vinculo) "
  loc_D402B9: LitStr " VALUES ("
  loc_D402BC: ConcatStr
  loc_D402BD: FStStrNoPop var_190
  loc_D402C0: FLdI2 PeriLiqu
  loc_D402C3: CStrUI1
  loc_D402C5: FStStrNoPop var_194
  loc_D402C8: ConcatStr
  loc_D402C9: FStStrNoPop var_198
  loc_D402CC: LitStr ","
  loc_D402CF: ConcatStr
  loc_D402D0: FStStrNoPop var_19C
  loc_D402D3: FLdUI1
  loc_D402D7: CStrI2
  loc_D402D9: FStStrNoPop var_1A0
  loc_D402DC: ConcatStr
  loc_D402DD: FStStrNoPop var_1A4
  loc_D402E0: LitStr ","
  loc_D402E3: ConcatStr
  loc_D402E4: FStStrNoPop var_1A8
  loc_D402E7: FLdUI1
  loc_D402EB: CStrI2
  loc_D402ED: FStStrNoPop var_1AC
  loc_D402F0: ConcatStr
  loc_D402F1: FStStrNoPop var_1B0
  loc_D402F4: LitStr ","
  loc_D402F7: ConcatStr
  loc_D402F8: FStStrNoPop var_1B4
  loc_D402FB: FLdUI1
  loc_D402FF: CStrI2
  loc_D40301: FStStrNoPop var_1B8
  loc_D40304: ConcatStr
  loc_D40305: FStStrNoPop var_1BC
  loc_D40308: LitStr ","
  loc_D4030B: ConcatStr
  loc_D4030C: FStStrNoPop var_1C0
  loc_D4030F: ILdRf CodiInmu
  loc_D40312: CStrI4
  loc_D40314: FStStrNoPop var_1C4
  loc_D40317: ConcatStr
  loc_D40318: FStStrNoPop var_684
  loc_D4031B: LitStr ",'"
  loc_D4031E: ConcatStr
  loc_D4031F: FStStrNoPop var_808
  loc_D40322: ILdRf var_88
  loc_D40325: ConcatStr
  loc_D40326: FStStrNoPop var_B3C
  loc_D40329: LitStr "',"
  loc_D4032C: ConcatStr
  loc_D4032D: FStStrNoPop var_C10
  loc_D40330: FLdUI1
  loc_D40334: CStrI2
  loc_D40336: FStStrNoPop var_C54
  loc_D40339: ConcatStr
  loc_D4033A: FStStrNoPop var_F98
  loc_D4033D: LitStr ",'No','"
  loc_D40340: ConcatStr
  loc_D40341: FStStrNoPop var_FDC
  loc_D40344: ILdRf var_8C
  loc_D40347: ConcatStr
  loc_D40348: FStStrNoPop var_FE0
  loc_D4034B: LitStr "','"
  loc_D4034E: ConcatStr
  loc_D4034F: FStStrNoPop var_FE4
  loc_D40352: LitI4 1
  loc_D40357: LitI4 1
  loc_D4035C: LitVarStr var_204, "yyyy-mm-dd"
  loc_D40361: FStVarCopyObj var_1F4
  loc_D40364: FLdRfVar var_1F4
  loc_D40367: FLdRfVar arg_118
  loc_D4036A: CVarRef
  loc_D4036F: ImpAdCallI2 Format$(, )
  loc_D40374: FStStrNoPop var_FE8
  loc_D40377: ConcatStr
  loc_D40378: FStStrNoPop var_FEC
  loc_D4037B: LitStr "','"
  loc_D4037E: ConcatStr
  loc_D4037F: FStStrNoPop var_FF0
  loc_D40382: LitI4 1
  loc_D40387: LitI4 1
  loc_D4038C: LitVarStr var_268, "yyyy-mm-dd"
  loc_D40391: FStVarCopyObj var_214
  loc_D40394: FLdRfVar var_214
  loc_D40397: FLdRfVar var_90
  loc_D4039A: CVarRef
  loc_D4039F: ImpAdCallI2 Format$(, )
  loc_D403A4: FStStrNoPop var_FF4
  loc_D403A7: ConcatStr
  loc_D403A8: FStStrNoPop var_FF8
  loc_D403AB: LitStr "',"
  loc_D403AE: ConcatStr
  loc_D403AF: FStStrNoPop var_1000
  loc_D403B2: LitI4 0
  loc_D403B7: LitI4 -1
  loc_D403BC: LitI4 1
  loc_D403C1: LitStr "."
  loc_D403C4: LitStr ","
  loc_D403C7: FLdFPR8 DeudLita
  loc_D403CA: CStrR8
  loc_D403CC: FStStrNoPop var_FFC
  loc_D403CF: ImpAdCallI2 Replace(, , , , , )
  loc_D403D4: FStStrNoPop var_1004
  loc_D403D7: ConcatStr
  loc_D403D8: FStStrNoPop var_1008
  loc_D403DB: LitStr ","
  loc_D403DE: ConcatStr
  loc_D403DF: FStStrNoPop var_1010
  loc_D403E2: LitI4 0
  loc_D403E7: LitI4 -1
  loc_D403EC: LitI4 1
  loc_D403F1: LitStr "."
  loc_D403F4: LitStr ","
  loc_D403F7: FLdFPR8 arg_120
  loc_D403FA: CStrR8
  loc_D403FC: FStStrNoPop var_100C
  loc_D403FF: ImpAdCallI2 Replace(, , , , , )
  loc_D40404: FStStrNoPop var_1014
  loc_D40407: ConcatStr
  loc_D40408: FStStrNoPop var_1018
  loc_D4040B: LitStr ","
  loc_D4040E: ConcatStr
  loc_D4040F: FStStrNoPop var_1020
  loc_D40412: LitI4 0
  loc_D40417: LitI4 -1
  loc_D4041C: LitI4 1
  loc_D40421: LitStr "."
  loc_D40424: LitStr ","
  loc_D40427: FLdFPR8 ImpoLita
  loc_D4042A: CStrR8
  loc_D4042C: FStStrNoPop var_101C
  loc_D4042F: ImpAdCallI2 Replace(, , , , , )
  loc_D40434: FStStrNoPop var_1024
  loc_D40437: ConcatStr
  loc_D40438: FStStrNoPop var_1028
  loc_D4043B: LitStr ","
  loc_D4043E: ConcatStr
  loc_D4043F: FStStrNoPop var_1030
  loc_D40442: LitI4 0
  loc_D40447: LitI4 -1
  loc_D4044C: LitI4 1
  loc_D40451: LitStr "."
  loc_D40454: LitStr ","
  loc_D40457: FLdFPR8 AddNew0
  loc_D4045A: CStrR8
  loc_D4045C: FStStrNoPop var_102C
  loc_D4045F: ImpAdCallI2 Replace(, , , , , )
  loc_D40464: FStStrNoPop var_1034
  loc_D40467: ConcatStr
  loc_D40468: FStStrNoPop var_1038
  loc_D4046B: LitStr ","
  loc_D4046E: ConcatStr
  loc_D4046F: FStStrNoPop var_1040
  loc_D40472: LitI4 0
  loc_D40477: LitI4 -1
  loc_D4047C: LitI4 1
  loc_D40481: LitStr "."
  loc_D40484: LitStr ","
  loc_D40487: FLdFPR8 AddNew8
  loc_D4048A: CStrR8
  loc_D4048C: FStStrNoPop var_103C
  loc_D4048F: ImpAdCallI2 Replace(, , , , , )
  loc_D40494: FStStrNoPop var_1044
  loc_D40497: ConcatStr
  loc_D40498: FStStrNoPop var_1048
  loc_D4049B: LitStr ","
  loc_D4049E: ConcatStr
  loc_D4049F: FStStrNoPop var_1050
  loc_D404A2: LitI4 0
  loc_D404A7: LitI4 -1
  loc_D404AC: LitI4 1
  loc_D404B1: LitStr "."
  loc_D404B4: LitStr ","
  loc_D404B7: FLdFPR8 CucuPers
  loc_D404BA: CStrR8
  loc_D404BC: FStStrNoPop var_104C
  loc_D404BF: ImpAdCallI2 Replace(, , , , , )
  loc_D404C4: FStStrNoPop var_1054
  loc_D404C7: ConcatStr
  loc_D404C8: FStStrNoPop var_1058
  loc_D404CB: LitStr ","
  loc_D404CE: ConcatStr
  loc_D404CF: FStStrNoPop var_1060
  loc_D404D2: LitI4 0
  loc_D404D7: LitI4 -1
  loc_D404DC: LitI4 1
  loc_D404E1: LitStr "."
  loc_D404E4: LitStr ","
  loc_D404E7: FLdFPR8 arg_58
  loc_D404EA: CStrR8
  loc_D404EC: FStStrNoPop var_105C
  loc_D404EF: ImpAdCallI2 Replace(, , , , , )
  loc_D404F4: FStStrNoPop var_1064
  loc_D404F7: ConcatStr
  loc_D404F8: FStStrNoPop var_1068
  loc_D404FB: LitStr ","
  loc_D404FE: ConcatStr
  loc_D404FF: FStStrNoPop var_1070
  loc_D40502: LitI4 0
  loc_D40507: LitI4 -1
  loc_D4050C: LitI4 1
  loc_D40511: LitStr "."
  loc_D40514: LitStr ","
  loc_D40517: FLdFPR8 arg_60
  loc_D4051A: CStrR8
  loc_D4051C: FStStrNoPop var_106C
  loc_D4051F: ImpAdCallI2 Replace(, , , , , )
  loc_D40524: FStStrNoPop var_1074
  loc_D40527: ConcatStr
  loc_D40528: FStStrNoPop var_1078
  loc_D4052B: LitStr ","
  loc_D4052E: ConcatStr
  loc_D4052F: FStStrNoPop var_1080
  loc_D40532: LitI4 0
  loc_D40537: LitI4 -1
  loc_D4053C: LitI4 1
  loc_D40541: LitStr "."
  loc_D40544: LitStr ","
  loc_D40547: FLdFPR8 arg_68
  loc_D4054A: CStrR8
  loc_D4054C: FStStrNoPop var_107C
  loc_D4054F: ImpAdCallI2 Replace(, , , , , )
  loc_D40554: FStStrNoPop var_1084
  loc_D40557: ConcatStr
  loc_D40558: FStStrNoPop var_1088
  loc_D4055B: LitStr ",'"
  loc_D4055E: ConcatStr
  loc_D4055F: CVarStr var_254
  loc_D40562: LitVarI2 var_224, 0
  loc_D40567: FLdRfVar var_94
  loc_D4056A: CVarRef
  loc_D4056F: FLdI2 var_1CA
  loc_D40572: CVarBoolI2 var_2C0
  loc_D40576: FLdRfVar var_234
  loc_D40579: ImpAdCallFPR4  = IIf(, , )
  loc_D4057E: FLdRfVar var_234
  loc_D40581: ConcatVar var_27C
  loc_D40585: LitVarStr var_34C, "','"
  loc_D4058A: ConcatVar var_28C
  loc_D4058E: LitI4 0
  loc_D40593: LitI4 -1
  loc_D40598: LitI4 1
  loc_D4059D: LitStr " "
  loc_D405A0: LitStr "'"
  loc_D405A3: ILdRf var_98
  loc_D405A6: ImpAdCallI2 Replace(, , , , , )
  loc_D405AB: CVarStr var_2AC
  loc_D405AE: ConcatVar var_2D4
  loc_D405B2: LitVarStr var_370, "',"
  loc_D405B7: ConcatVar var_2E4
  loc_D405BB: FLdI2 arg_AC
  loc_D405BE: CVarI2 var_3A4
  loc_D405C1: ConcatVar var_304
  loc_D405C5: LitVarStr var_3C4, ",'"
  loc_D405CA: ConcatVar var_32C
  loc_D405CE: LitI4 &HB
  loc_D405D3: ILdI4 arg_A4
  loc_D405D6: Ary1LdRfVar
  loc_D405D8: ConcatVar var_33C
  loc_D405DC: LitVarStr var_3E4, "',"
  loc_D405E1: ConcatVar var_35C
  loc_D405E5: LitI4 0
  loc_D405EA: LitI4 -1
  loc_D405EF: LitI4 1
  loc_D405F4: LitStr "."
  loc_D405F7: LitStr ","
  loc_D405FA: FLdFPR8 arg_B0
  loc_D405FD: CStrR8
  loc_D405FF: FStStrNoPop var_108C
  loc_D40602: ImpAdCallI2 Replace(, , , , , )
  loc_D40607: CVarStr var_384
  loc_D4060A: ConcatVar var_394
  loc_D4060E: LitVarStr var_408, ","
  loc_D40613: ConcatVar var_3B4
  loc_D40617: ILdRf arg_78
  loc_D4061A: CVarI4
  loc_D4061E: ConcatVar var_3D4
  loc_D40622: LitVarStr var_448, ",'"
  loc_D40627: ConcatVar var_3F4
  loc_D4062B: LitI4 0
  loc_D40630: LitI4 -1
  loc_D40635: LitI4 1
  loc_D4063A: LitStr " "
  loc_D4063D: LitStr "'"
  loc_D40640: ILdRf var_9C
  loc_D40643: ImpAdCallI2 Replace(, , , , , )
  loc_D40648: CVarStr var_418
  loc_D4064B: ConcatVar var_438
  loc_D4064F: LitVarStr var_46C, "',"
  loc_D40654: ConcatVar var_458
  loc_D40658: ILdRf Me0
  loc_D4065B: CVarI4
  loc_D4065F: ConcatVar var_480
  loc_D40663: LitVarStr var_4C0, ","
  loc_D40668: ConcatVar var_490
  loc_D4066C: FLdI2 Me4
  loc_D4066F: CVarI2 var_4E0
  loc_D40672: ConcatVar var_4B0
  loc_D40676: LitVarStr var_520, ",'"
  loc_D4067B: ConcatVar var_4D0
  loc_D4067F: ILdRf var_A0
  loc_D40682: CVarStr var_560
  loc_D40685: ConcatVar var_4F0
  loc_D40689: LitVarStr var_5A0, "','"
  loc_D4068E: ConcatVar var_500
  loc_D40692: LitI4 0
  loc_D40697: LitI4 -1
  loc_D4069C: LitI4 1
  loc_D406A1: LitStr " "
  loc_D406A4: LitStr "'"
  loc_D406A7: ILdRf var_A4
  loc_D406AA: ImpAdCallI2 Replace(, , , , , )
  loc_D406AF: CVarStr var_510
  loc_D406B2: ConcatVar var_530
  loc_D406B6: LitVarStr var_5E0, "','"
  loc_D406BB: ConcatVar var_540
  loc_D406BF: LitI4 0
  loc_D406C4: LitI4 -1
  loc_D406C9: LitI4 1
  loc_D406CE: LitStr " "
  loc_D406D1: LitStr "'"
  loc_D406D4: ILdRf var_A8
  loc_D406D7: ImpAdCallI2 Replace(, , , , , )
  loc_D406DC: CVarStr var_550
  loc_D406DF: ConcatVar var_570
  loc_D406E3: LitVarStr var_670, "','"
  loc_D406E8: ConcatVar var_580
  loc_D406EC: ILdRf var_AC
  loc_D406EF: CVarStr var_6B4
  loc_D406F2: ConcatVar var_590
  loc_D406F6: LitVarStr var_6D4, "',"
  loc_D406FB: ConcatVar var_5B0
  loc_D406FF: FLdI2 arg_98
  loc_D40702: CVarI2 var_6E4
  loc_D40705: ConcatVar var_5C0
  loc_D40709: LitVarStr var_6F4, ",'"
  loc_D4070E: ConcatVar var_5D0
  loc_D40712: ILdRf var_B0
  loc_D40715: CVarStr var_704
  loc_D40718: ConcatVar var_5F0
  loc_D4071C: LitVarStr var_744, "','"
  loc_D40721: ConcatVar var_600
  loc_D40725: ILdRf var_B4
  loc_D40728: CVarStr var_784
  loc_D4072B: ConcatVar var_610
  loc_D4072F: LitVarStr var_7A4, "',"
  loc_D40734: ConcatVar var_620
  loc_D40738: LitI4 0
  loc_D4073D: ILdI4 arg_A4
  loc_D40740: Ary1LdRfVar
  loc_D40742: ConcatVar var_630
  loc_D40746: LitVarStr var_7C4, ",'"
  loc_D4074B: ConcatVar var_640
  loc_D4074F: LitI4 0
  loc_D40754: LitI4 -1
  loc_D40759: LitI4 1
  loc_D4075E: LitStr " "
  loc_D40761: LitStr "'"
  loc_D40764: LitI4 1
  loc_D40769: ILdI4 arg_A4
  loc_D4076C: Ary1LdRfVar
  loc_D4076E: CStrVarVal var_1090
  loc_D40772: ImpAdCallI2 Replace(, , , , , )
  loc_D40777: CVarStr var_650
  loc_D4077A: ConcatVar var_660
  loc_D4077E: LitVarStr var_7F4, "',"
  loc_D40783: ConcatVar var_680
  loc_D40787: LitI4 2
  loc_D4078C: ILdI4 arg_A4
  loc_D4078F: Ary1LdRfVar
  loc_D40791: ConcatVar var_694
  loc_D40795: LitVarStr var_838, ","
  loc_D4079A: ConcatVar var_6A4
  loc_D4079E: LitI4 3
  loc_D407A3: ILdI4 arg_A4
  loc_D407A6: Ary1LdRfVar
  loc_D407A8: ConcatVar var_6C4
  loc_D407AC: LitVarStr var_858, ",'"
  loc_D407B1: ConcatVar var_714
  loc_D407B5: LitI4 4
  loc_D407BA: ILdI4 arg_A4
  loc_D407BD: Ary1LdRfVar
  loc_D407BF: ConcatVar var_724
  loc_D407C3: LitVarStr var_878, "','"
  loc_D407C8: ConcatVar var_734
  loc_D407CC: LitI4 0
  loc_D407D1: LitI4 -1
  loc_D407D6: LitI4 1
  loc_D407DB: LitStr " "
  loc_D407DE: LitStr "'"
  loc_D407E1: LitI4 5
  loc_D407E6: ILdI4 arg_A4
  loc_D407E9: Ary1LdRfVar
  loc_D407EB: CStrVarVal var_1094
  loc_D407EF: ImpAdCallI2 Replace(, , , , , )
  loc_D407F4: CVarStr var_754
  loc_D407F7: ConcatVar var_764
  loc_D407FB: LitVarStr var_8B8, "','"
  loc_D40800: ConcatVar var_774
  loc_D40804: LitI4 0
  loc_D40809: LitI4 -1
  loc_D4080E: LitI4 1
  loc_D40813: LitStr " "
  loc_D40816: LitStr "'"
  loc_D40819: LitI4 6
  loc_D4081E: ILdI4 arg_A4
  loc_D40821: Ary1LdRfVar
  loc_D40823: CStrVarVal var_1098
  loc_D40827: ImpAdCallI2 Replace(, , , , , )
  loc_D4082C: CVarStr var_794
  loc_D4082F: ConcatVar var_7B4
  loc_D40833: LitVarStr var_8D8, "','"
  loc_D40838: ConcatVar var_7D4
  loc_D4083C: LitI4 7
  loc_D40841: ILdI4 arg_A4
  loc_D40844: Ary1LdRfVar
  loc_D40846: ConcatVar var_7E4
  loc_D4084A: LitVarStr var_8F8, "',"
  loc_D4084F: ConcatVar var_804
  loc_D40853: LitI4 8
  loc_D40858: ILdI4 arg_A4
  loc_D4085B: Ary1LdRfVar
  loc_D4085D: ConcatVar var_818
  loc_D40861: LitVarStr var_918, ",'"
  loc_D40866: ConcatVar var_828
  loc_D4086A: LitI4 9
  loc_D4086F: ILdI4 arg_A4
  loc_D40872: Ary1LdRfVar
  loc_D40874: ConcatVar var_848
  loc_D40878: LitVarStr var_938, "','"
  loc_D4087D: ConcatVar var_868
  loc_D40881: LitI4 &HA
  loc_D40886: ILdI4 arg_A4
  loc_D40889: Ary1LdRfVar
  loc_D4088B: ConcatVar var_888
  loc_D4088F: LitVarStr var_958, "',"
  loc_D40894: ConcatVar var_898
  loc_D40898: FLdUI1
  loc_D4089C: CVarUI1
  loc_D408A0: ConcatVar var_8A8
  loc_D408A4: LitVarStr var_9B8, ","
  loc_D408A9: ConcatVar var_8C8
  loc_D408AD: FLdI2 arg_F8
  loc_D408B0: CVarI2 var_9F8
  loc_D408B3: ConcatVar var_8E8
  loc_D408B7: LitVarStr var_A18, ","
  loc_D408BC: ConcatVar var_908
  loc_D408C0: FLdI2 arg_FC
  loc_D408C3: CVarI2 var_A38
  loc_D408C6: ConcatVar var_928
  loc_D408CA: LitVarStr var_A58, ","
  loc_D408CF: ConcatVar var_948
  loc_D408D3: FLdI2 BimeLiqu0
  loc_D408D6: CVarI2 var_A78
  loc_D408D9: ConcatVar var_968
  loc_D408DD: LitVarStr var_A98, ","
  loc_D408E2: ConcatVar var_988
  loc_D408E6: FLdI2 BimeLiqu4
  loc_D408E9: CVarI2 var_AB8
  loc_D408EC: ConcatVar var_998
  loc_D408F0: LitVarStr var_AD8, ","
  loc_D408F5: ConcatVar var_9A8
  loc_D408F9: ILdRf BimeLiqu8
  loc_D408FC: CVarI4
  loc_D40900: ConcatVar var_9C8
  loc_D40904: LitVarStr var_B28, ","
  loc_D40909: ConcatVar var_9D8
  loc_D4090D: FLdI2 BimeLiquC
  loc_D40910: CVarI2 var_B6C
  loc_D40913: ConcatVar var_9E8
  loc_D40917: LitVarStr var_B9C, ",'"
  loc_D4091C: ConcatVar var_A08
  loc_D40920: ILdRf var_B8
  loc_D40923: CVarStr var_BCC
  loc_D40926: ConcatVar var_A28
  loc_D4092A: LitVarStr var_BFC, "','"
  loc_D4092F: ConcatVar var_A48
  loc_D40933: ILdRf var_BC
  loc_D40936: CVarStr var_C40
  loc_D40939: ConcatVar var_A68
  loc_D4093D: LitVarStr var_C84, "');"
  loc_D40942: ConcatVar var_A88
  loc_D40946: CStrVarTmp
  loc_D40947: FStStr var_13C
  loc_D4094A: FFreeStr var_107C = "": var_1080 = "": var_1084 = "": var_1088 = "": var_108C = "": var_1090 = "": var_1094 = "": var_1098 = "": var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_102C = "": var_1030 = "": var_1034 = "": var_1038 = "": var_103C = "": var_1040 = "": var_1044 = "": var_1048 = "": var_104C = "": var_1050 = "": var_1054 = "": var_1058 = "": var_105C = "": var_1060 = "": var_1064 = "": var_1068 = "": var_106C = "": var_1070 = "": var_1074 = "": var_1078 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D409D5: FFreeVar var_7E4 = "": var_804 = "": var_818 = "": var_828 = "": var_848 = "": var_868 = "": var_888 = "": var_898 = "": var_8A8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_928 = "": var_948 = "": var_968 = "": var_988 = "": var_998 = "": var_9A8 = "": var_9C8 = "": var_9D8 = "": var_9E8 = "": var_A08 = "": var_A28 = "": var_A48 = "": var_A68 = "": var_A88 = "": var_530 = "": var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_630 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_694 = "": var_6A4 = "": var_6C4 = "": var_714 = "": var_724 = "": var_734 = "": var_754 = "": var_764 = "": var_774 = "": var_794 = "": var_7B4 = "": var_7D4 = "": var_1F4 = "": var_214 = "": var_2C0 = "": var_224 = "": var_254 = "": var_234 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = ""
  loc_D40A84: FLdFPR8 arg_68
  loc_D40A87: LitI2_Byte 0
  loc_D40A89: CR8I2
  loc_D40A8A: GtR4
  loc_D40A8B: BranchF loc_D411B4
  loc_D40A8E: ILdRf var_88
  loc_D40A91: LitStr "13020101"
  loc_D40A94: EqStr
  loc_D40A96: BranchF loc_D411B4
  loc_D40A99: LitI4 2
  loc_D40A9E: ImpAdLdFPR8 MemVar_D93084
  loc_D40AA1: LitI2_Byte 3
  loc_D40AA3: CR8I2
  loc_D40AA4: MulR8
  loc_D40AA5: CVarR8
  loc_D40AA9: FLdRfVar var_214
  loc_D40AAC: ImpAdCallFPR4  = Round(, )
  loc_D40AB1: FLdRfVar var_214
  loc_D40AB4: CR4Var
  loc_D40AB5: FStFPR8 var_138
  loc_D40AB8: FFreeVar var_1F4 = ""
  loc_D40ABF: FLdRfVar var_94
  loc_D40AC2: CVarRef
  loc_D40AC7: ImpAdCallI2 IsNumeric()
  loc_D40ACC: FStI2 var_1CA
  loc_D40ACF: ILdRf var_13C
  loc_D40AD2: LitStr " INSERT INTO liqutasa (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,ActuLita,TipoLita,FealLita,FeveLita,DeudLita,PodeLita,DecaLita,ImpoLita,CrafLita,ExenLita,DescLita,GastLita,TotaLita,CucuPers,DetaPers,CodiRyB,DetaRyB,AvalInmu,CodiCall,CallLita,NucaLita,CodiBarr,BarrLita,ManzLita,CasaLita,UbicLita,CodiLoca,LocaLita,CopoLita,CodiCallReal,CallLitaReal,NucaLitaReal,CodiBarrReal,BarrLitaReal,ManzLitaReal,CasaLitaReal,UbicLitaReal,CodiLocaReal,LocaLitaReal,CopoLitaReal,EmitLita,DptoLita,DistLita,SeccLita,MansLita,ParcLita,SubpLita,DigiLita,Vinculo) "
  loc_D40AD5: ConcatStr
  loc_D40AD6: FStStrNoPop var_190
  loc_D40AD9: LitStr " VALUES ("
  loc_D40ADC: ConcatStr
  loc_D40ADD: FStStrNoPop var_194
  loc_D40AE0: FLdI2 PeriLiqu
  loc_D40AE3: CStrUI1
  loc_D40AE5: FStStrNoPop var_198
  loc_D40AE8: ConcatStr
  loc_D40AE9: FStStrNoPop var_19C
  loc_D40AEC: LitStr ","
  loc_D40AEF: ConcatStr
  loc_D40AF0: FStStrNoPop var_1A0
  loc_D40AF3: FLdUI1
  loc_D40AF7: CStrI2
  loc_D40AF9: FStStrNoPop var_1A4
  loc_D40AFC: ConcatStr
  loc_D40AFD: FStStrNoPop var_1A8
  loc_D40B00: LitStr ","
  loc_D40B03: ConcatStr
  loc_D40B04: FStStrNoPop var_1AC
  loc_D40B07: FLdUI1
  loc_D40B0B: CStrI2
  loc_D40B0D: FStStrNoPop var_1B0
  loc_D40B10: ConcatStr
  loc_D40B11: FStStrNoPop var_1B4
  loc_D40B14: LitStr ","
  loc_D40B17: ConcatStr
  loc_D40B18: FStStrNoPop var_1B8
  loc_D40B1B: FLdUI1
  loc_D40B1F: CStrI2
  loc_D40B21: FStStrNoPop var_1BC
  loc_D40B24: ConcatStr
  loc_D40B25: FStStrNoPop var_1C0
  loc_D40B28: LitStr ","
  loc_D40B2B: ConcatStr
  loc_D40B2C: FStStrNoPop var_1C4
  loc_D40B2F: ILdRf CodiInmu
  loc_D40B32: CStrI4
  loc_D40B34: FStStrNoPop var_684
  loc_D40B37: ConcatStr
  loc_D40B38: FStStrNoPop var_808
  loc_D40B3B: LitStr ",'13031500',"
  loc_D40B3E: ConcatStr
  loc_D40B3F: FStStrNoPop var_B3C
  loc_D40B42: FLdUI1
  loc_D40B46: CStrI2
  loc_D40B48: FStStrNoPop var_C10
  loc_D40B4B: ConcatStr
  loc_D40B4C: FStStrNoPop var_C54
  loc_D40B4F: LitStr ",'No','"
  loc_D40B52: ConcatStr
  loc_D40B53: FStStrNoPop var_F98
  loc_D40B56: ILdRf var_8C
  loc_D40B59: ConcatStr
  loc_D40B5A: FStStrNoPop var_FDC
  loc_D40B5D: LitStr "','"
  loc_D40B60: ConcatStr
  loc_D40B61: FStStrNoPop var_FE0
  loc_D40B64: LitI4 1
  loc_D40B69: LitI4 1
  loc_D40B6E: LitVarStr var_204, "yyyy-mm-dd"
  loc_D40B73: FStVarCopyObj var_1F4
  loc_D40B76: FLdRfVar var_1F4
  loc_D40B79: FLdRfVar arg_118
  loc_D40B7C: CVarRef
  loc_D40B81: ImpAdCallI2 Format$(, )
  loc_D40B86: FStStrNoPop var_FE4
  loc_D40B89: ConcatStr
  loc_D40B8A: FStStrNoPop var_FE8
  loc_D40B8D: LitStr "','"
  loc_D40B90: ConcatStr
  loc_D40B91: FStStrNoPop var_FEC
  loc_D40B94: LitI4 1
  loc_D40B99: LitI4 1
  loc_D40B9E: LitVarStr var_268, "yyyy-mm-dd"
  loc_D40BA3: FStVarCopyObj var_214
  loc_D40BA6: FLdRfVar var_214
  loc_D40BA9: FLdRfVar var_90
  loc_D40BAC: CVarRef
  loc_D40BB1: ImpAdCallI2 Format$(, )
  loc_D40BB6: FStStrNoPop var_FF0
  loc_D40BB9: ConcatStr
  loc_D40BBA: FStStrNoPop var_FF4
  loc_D40BBD: LitStr "',"
  loc_D40BC0: ConcatStr
  loc_D40BC1: FStStrNoPop var_FFC
  loc_D40BC4: LitI4 0
  loc_D40BC9: LitI4 -1
  loc_D40BCE: LitI4 1
  loc_D40BD3: LitStr "."
  loc_D40BD6: LitStr ","
  loc_D40BD9: FLdFPR8 DeudLita
  loc_D40BDC: CStrR8
  loc_D40BDE: FStStrNoPop var_FF8
  loc_D40BE1: ImpAdCallI2 Replace(, , , , , )
  loc_D40BE6: FStStrNoPop var_1000
  loc_D40BE9: ConcatStr
  loc_D40BEA: FStStrNoPop var_1004
  loc_D40BED: LitStr ","
  loc_D40BF0: ConcatStr
  loc_D40BF1: FStStrNoPop var_100C
  loc_D40BF4: LitI4 0
  loc_D40BF9: LitI4 -1
  loc_D40BFE: LitI4 1
  loc_D40C03: LitStr "."
  loc_D40C06: LitStr ","
  loc_D40C09: FLdFPR8 arg_120
  loc_D40C0C: CStrR8
  loc_D40C0E: FStStrNoPop var_1008
  loc_D40C11: ImpAdCallI2 Replace(, , , , , )
  loc_D40C16: FStStrNoPop var_1010
  loc_D40C19: ConcatStr
  loc_D40C1A: FStStrNoPop var_1014
  loc_D40C1D: LitStr ","
  loc_D40C20: ConcatStr
  loc_D40C21: FStStrNoPop var_101C
  loc_D40C24: LitI4 0
  loc_D40C29: LitI4 -1
  loc_D40C2E: LitI4 1
  loc_D40C33: LitStr "."
  loc_D40C36: LitStr ","
  loc_D40C39: FLdFPR8 ImpoLita
  loc_D40C3C: CStrR8
  loc_D40C3E: FStStrNoPop var_1018
  loc_D40C41: ImpAdCallI2 Replace(, , , , , )
  loc_D40C46: FStStrNoPop var_1020
  loc_D40C49: ConcatStr
  loc_D40C4A: FStStrNoPop var_1024
  loc_D40C4D: LitStr ","
  loc_D40C50: ConcatStr
  loc_D40C51: FStStrNoPop var_102C
  loc_D40C54: LitI4 0
  loc_D40C59: LitI4 -1
  loc_D40C5E: LitI4 1
  loc_D40C63: LitStr "."
  loc_D40C66: LitStr ","
  loc_D40C69: FLdFPR8 var_138
  loc_D40C6C: CStrR8
  loc_D40C6E: FStStrNoPop var_1028
  loc_D40C71: ImpAdCallI2 Replace(, , , , , )
  loc_D40C76: FStStrNoPop var_1030
  loc_D40C79: ConcatStr
  loc_D40C7A: FStStrNoPop var_1034
  loc_D40C7D: LitStr ",0,0,0,0,"
  loc_D40C80: ConcatStr
  loc_D40C81: FStStrNoPop var_103C
  loc_D40C84: LitI4 0
  loc_D40C89: LitI4 -1
  loc_D40C8E: LitI4 1
  loc_D40C93: LitStr "."
  loc_D40C96: LitStr ","
  loc_D40C99: FLdFPR8 var_138
  loc_D40C9C: CStrR8
  loc_D40C9E: FStStrNoPop var_1038
  loc_D40CA1: ImpAdCallI2 Replace(, , , , , )
  loc_D40CA6: FStStrNoPop var_1040
  loc_D40CA9: ConcatStr
  loc_D40CAA: FStStrNoPop var_1044
  loc_D40CAD: LitStr ",'"
  loc_D40CB0: ConcatStr
  loc_D40CB1: CVarStr var_254
  loc_D40CB4: LitVarI2 var_224, 0
  loc_D40CB9: FLdRfVar var_94
  loc_D40CBC: CVarRef
  loc_D40CC1: FLdI2 var_1CA
  loc_D40CC4: CVarBoolI2 var_2C0
  loc_D40CC8: FLdRfVar var_234
  loc_D40CCB: ImpAdCallFPR4  = IIf(, , )
  loc_D40CD0: FLdRfVar var_234
  loc_D40CD3: ConcatVar var_27C
  loc_D40CD7: LitVarStr var_34C, "','"
  loc_D40CDC: ConcatVar var_28C
  loc_D40CE0: LitI4 0
  loc_D40CE5: LitI4 -1
  loc_D40CEA: LitI4 1
  loc_D40CEF: LitStr " "
  loc_D40CF2: LitStr "'"
  loc_D40CF5: ILdRf var_98
  loc_D40CF8: ImpAdCallI2 Replace(, , , , , )
  loc_D40CFD: CVarStr var_2AC
  loc_D40D00: ConcatVar var_2D4
  loc_D40D04: LitVarStr var_370, "',"
  loc_D40D09: ConcatVar var_2E4
  loc_D40D0D: FLdI2 arg_AC
  loc_D40D10: CVarI2 var_3A4
  loc_D40D13: ConcatVar var_304
  loc_D40D17: LitVarStr var_3C4, ",'"
  loc_D40D1C: ConcatVar var_32C
  loc_D40D20: LitI4 &HB
  loc_D40D25: ILdI4 arg_A4
  loc_D40D28: Ary1LdRfVar
  loc_D40D2A: ConcatVar var_33C
  loc_D40D2E: LitVarStr var_3E4, "',"
  loc_D40D33: ConcatVar var_35C
  loc_D40D37: LitI4 0
  loc_D40D3C: LitI4 -1
  loc_D40D41: LitI4 1
  loc_D40D46: LitStr "."
  loc_D40D49: LitStr ","
  loc_D40D4C: FLdFPR8 arg_B0
  loc_D40D4F: CStrR8
  loc_D40D51: FStStrNoPop var_1048
  loc_D40D54: ImpAdCallI2 Replace(, , , , , )
  loc_D40D59: CVarStr var_384
  loc_D40D5C: ConcatVar var_394
  loc_D40D60: LitVarStr var_408, ","
  loc_D40D65: ConcatVar var_3B4
  loc_D40D69: ILdRf arg_78
  loc_D40D6C: CVarI4
  loc_D40D70: ConcatVar var_3D4
  loc_D40D74: LitVarStr var_448, ",'"
  loc_D40D79: ConcatVar var_3F4
  loc_D40D7D: LitI4 0
  loc_D40D82: LitI4 -1
  loc_D40D87: LitI4 1
  loc_D40D8C: LitStr " "
  loc_D40D8F: LitStr "'"
  loc_D40D92: ILdRf var_9C
  loc_D40D95: ImpAdCallI2 Replace(, , , , , )
  loc_D40D9A: CVarStr var_418
  loc_D40D9D: ConcatVar var_438
  loc_D40DA1: LitVarStr var_46C, "',"
  loc_D40DA6: ConcatVar var_458
  loc_D40DAA: ILdRf Me0
  loc_D40DAD: CVarI4
  loc_D40DB1: ConcatVar var_480
  loc_D40DB5: LitVarStr var_4C0, ","
  loc_D40DBA: ConcatVar var_490
  loc_D40DBE: FLdI2 Me4
  loc_D40DC1: CVarI2 var_4E0
  loc_D40DC4: ConcatVar var_4B0
  loc_D40DC8: LitVarStr var_520, ",'"
  loc_D40DCD: ConcatVar var_4D0
  loc_D40DD1: ILdRf var_A0
  loc_D40DD4: CVarStr var_560
  loc_D40DD7: ConcatVar var_4F0
  loc_D40DDB: LitVarStr var_5A0, "','"
  loc_D40DE0: ConcatVar var_500
  loc_D40DE4: LitI4 0
  loc_D40DE9: LitI4 -1
  loc_D40DEE: LitI4 1
  loc_D40DF3: LitStr " "
  loc_D40DF6: LitStr "'"
  loc_D40DF9: ILdRf var_A4
  loc_D40DFC: ImpAdCallI2 Replace(, , , , , )
  loc_D40E01: CVarStr var_510
  loc_D40E04: ConcatVar var_530
  loc_D40E08: LitVarStr var_5E0, "','"
  loc_D40E0D: ConcatVar var_540
  loc_D40E11: LitI4 0
  loc_D40E16: LitI4 -1
  loc_D40E1B: LitI4 1
  loc_D40E20: LitStr " "
  loc_D40E23: LitStr "'"
  loc_D40E26: ILdRf var_A8
  loc_D40E29: ImpAdCallI2 Replace(, , , , , )
  loc_D40E2E: CVarStr var_550
  loc_D40E31: ConcatVar var_570
  loc_D40E35: LitVarStr var_670, "','"
  loc_D40E3A: ConcatVar var_580
  loc_D40E3E: ILdRf var_AC
  loc_D40E41: CVarStr var_6B4
  loc_D40E44: ConcatVar var_590
  loc_D40E48: LitVarStr var_6D4, "',"
  loc_D40E4D: ConcatVar var_5B0
  loc_D40E51: FLdI2 arg_98
  loc_D40E54: CVarI2 var_6E4
  loc_D40E57: ConcatVar var_5C0
  loc_D40E5B: LitVarStr var_6F4, ",'"
  loc_D40E60: ConcatVar var_5D0
  loc_D40E64: ILdRf var_B0
  loc_D40E67: CVarStr var_704
  loc_D40E6A: ConcatVar var_5F0
  loc_D40E6E: LitVarStr var_744, "','"
  loc_D40E73: ConcatVar var_600
  loc_D40E77: ILdRf var_B4
  loc_D40E7A: CVarStr var_784
  loc_D40E7D: ConcatVar var_610
  loc_D40E81: LitVarStr var_7A4, "',"
  loc_D40E86: ConcatVar var_620
  loc_D40E8A: LitI4 0
  loc_D40E8F: ILdI4 arg_A4
  loc_D40E92: Ary1LdRfVar
  loc_D40E94: ConcatVar var_630
  loc_D40E98: LitVarStr var_7C4, ",'"
  loc_D40E9D: ConcatVar var_640
  loc_D40EA1: LitI4 0
  loc_D40EA6: LitI4 -1
  loc_D40EAB: LitI4 1
  loc_D40EB0: LitStr " "
  loc_D40EB3: LitStr "'"
  loc_D40EB6: LitI4 1
  loc_D40EBB: ILdI4 arg_A4
  loc_D40EBE: Ary1LdRfVar
  loc_D40EC0: CStrVarVal var_104C
  loc_D40EC4: ImpAdCallI2 Replace(, , , , , )
  loc_D40EC9: CVarStr var_650
  loc_D40ECC: ConcatVar var_660
  loc_D40ED0: LitVarStr var_7F4, "',"
  loc_D40ED5: ConcatVar var_680
  loc_D40ED9: LitI4 2
  loc_D40EDE: ILdI4 arg_A4
  loc_D40EE1: Ary1LdRfVar
  loc_D40EE3: ConcatVar var_694
  loc_D40EE7: LitVarStr var_838, ","
  loc_D40EEC: ConcatVar var_6A4
  loc_D40EF0: LitI4 3
  loc_D40EF5: ILdI4 arg_A4
  loc_D40EF8: Ary1LdRfVar
  loc_D40EFA: ConcatVar var_6C4
  loc_D40EFE: LitVarStr var_858, ",'"
  loc_D40F03: ConcatVar var_714
  loc_D40F07: LitI4 4
  loc_D40F0C: ILdI4 arg_A4
  loc_D40F0F: Ary1LdRfVar
  loc_D40F11: ConcatVar var_724
  loc_D40F15: LitVarStr var_878, "','"
  loc_D40F1A: ConcatVar var_734
  loc_D40F1E: LitI4 0
  loc_D40F23: LitI4 -1
  loc_D40F28: LitI4 1
  loc_D40F2D: LitStr " "
  loc_D40F30: LitStr "'"
  loc_D40F33: LitI4 5
  loc_D40F38: ILdI4 arg_A4
  loc_D40F3B: Ary1LdRfVar
  loc_D40F3D: CStrVarVal var_1050
  loc_D40F41: ImpAdCallI2 Replace(, , , , , )
  loc_D40F46: CVarStr var_754
  loc_D40F49: ConcatVar var_764
  loc_D40F4D: LitVarStr var_8B8, "','"
  loc_D40F52: ConcatVar var_774
  loc_D40F56: LitI4 0
  loc_D40F5B: LitI4 -1
  loc_D40F60: LitI4 1
  loc_D40F65: LitStr " "
  loc_D40F68: LitStr "'"
  loc_D40F6B: LitI4 6
  loc_D40F70: ILdI4 arg_A4
  loc_D40F73: Ary1LdRfVar
  loc_D40F75: CStrVarVal var_1054
  loc_D40F79: ImpAdCallI2 Replace(, , , , , )
  loc_D40F7E: CVarStr var_794
  loc_D40F81: ConcatVar var_7B4
  loc_D40F85: LitVarStr var_8D8, "','"
  loc_D40F8A: ConcatVar var_7D4
  loc_D40F8E: LitI4 7
  loc_D40F93: ILdI4 arg_A4
  loc_D40F96: Ary1LdRfVar
  loc_D40F98: ConcatVar var_7E4
  loc_D40F9C: LitVarStr var_8F8, "',"
  loc_D40FA1: ConcatVar var_804
  loc_D40FA5: LitI4 8
  loc_D40FAA: ILdI4 arg_A4
  loc_D40FAD: Ary1LdRfVar
  loc_D40FAF: ConcatVar var_818
  loc_D40FB3: LitVarStr var_918, ",'"
  loc_D40FB8: ConcatVar var_828
  loc_D40FBC: LitI4 9
  loc_D40FC1: ILdI4 arg_A4
  loc_D40FC4: Ary1LdRfVar
  loc_D40FC6: ConcatVar var_848
  loc_D40FCA: LitVarStr var_938, "','"
  loc_D40FCF: ConcatVar var_868
  loc_D40FD3: LitI4 &HA
  loc_D40FD8: ILdI4 arg_A4
  loc_D40FDB: Ary1LdRfVar
  loc_D40FDD: ConcatVar var_888
  loc_D40FE1: LitVarStr var_958, "',"
  loc_D40FE6: ConcatVar var_898
  loc_D40FEA: FLdUI1
  loc_D40FEE: CVarUI1
  loc_D40FF2: ConcatVar var_8A8
  loc_D40FF6: LitVarStr var_9B8, ","
  loc_D40FFB: ConcatVar var_8C8
  loc_D40FFF: FLdI2 arg_F8
  loc_D41002: CVarI2 var_9F8
  loc_D41005: ConcatVar var_8E8
  loc_D41009: LitVarStr var_A18, ","
  loc_D4100E: ConcatVar var_908
  loc_D41012: FLdI2 arg_FC
  loc_D41015: CVarI2 var_A38
  loc_D41018: ConcatVar var_928
  loc_D4101C: LitVarStr var_A58, ","
  loc_D41021: ConcatVar var_948
  loc_D41025: FLdI2 BimeLiqu0
  loc_D41028: CVarI2 var_A78
  loc_D4102B: ConcatVar var_968
  loc_D4102F: LitVarStr var_A98, ","
  loc_D41034: ConcatVar var_988
  loc_D41038: FLdI2 BimeLiqu4
  loc_D4103B: CVarI2 var_AB8
  loc_D4103E: ConcatVar var_998
  loc_D41042: LitVarStr var_AD8, ","
  loc_D41047: ConcatVar var_9A8
  loc_D4104B: ILdRf BimeLiqu8
  loc_D4104E: CVarI4
  loc_D41052: ConcatVar var_9C8
  loc_D41056: LitVarStr var_B28, ","
  loc_D4105B: ConcatVar var_9D8
  loc_D4105F: FLdI2 BimeLiquC
  loc_D41062: CVarI2 var_B6C
  loc_D41065: ConcatVar var_9E8
  loc_D41069: LitVarStr var_B9C, ",'"
  loc_D4106E: ConcatVar var_A08
  loc_D41072: ILdRf var_B8
  loc_D41075: CVarStr var_BCC
  loc_D41078: ConcatVar var_A28
  loc_D4107C: LitVarStr var_BFC, "','"
  loc_D41081: ConcatVar var_A48
  loc_D41085: ILdRf var_BC
  loc_D41088: CVarStr var_C40
  loc_D4108B: ConcatVar var_A68
  loc_D4108F: LitVarStr var_C84, "');"
  loc_D41094: ConcatVar var_A88
  loc_D41098: CStrVarTmp
  loc_D41099: FStStr var_13C
  loc_D4109C: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_102C = "": var_1030 = "": var_1034 = "": var_1038 = "": var_103C = "": var_1040 = "": var_1044 = "": var_1048 = "": var_104C = "": var_1050 = "": var_1054 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D41105: FFreeVar var_7E4 = "": var_804 = "": var_818 = "": var_828 = "": var_848 = "": var_868 = "": var_888 = "": var_898 = "": var_8A8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_928 = "": var_948 = "": var_968 = "": var_988 = "": var_998 = "": var_9A8 = "": var_9C8 = "": var_9D8 = "": var_9E8 = "": var_A08 = "": var_A28 = "": var_A48 = "": var_A68 = "": var_A88 = "": var_530 = "": var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_590 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_630 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_694 = "": var_6A4 = "": var_6C4 = "": var_714 = "": var_724 = "": var_734 = "": var_754 = "": var_764 = "": var_774 = "": var_794 = "": var_7B4 = "": var_7D4 = "": var_1F4 = "": var_214 = "": var_2C0 = "": var_224 = "": var_254 = "": var_234 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = ""
  loc_D411B4: FLdI2 arg_A8
  loc_D411B7: LitI2_Byte &HFF
  loc_D411B9: EqI2
  loc_D411BA: BranchF loc_D42052
  loc_D411BD: FLdFPR8 PeriLiqu4
  loc_D411C0: LitI2_Byte 0
  loc_D411C2: CR8I2
  loc_D411C3: GtR4
  loc_D411C4: BranchF loc_D413BF
  loc_D411C7: FLdI2 arg_EC
  loc_D411CA: LitI2_Byte &HFF
  loc_D411CC: EqI2
  loc_D411CD: BranchF loc_D411D6
  loc_D411D0: FLdFPR8 PeriLiqu4
  loc_D411D3: FStFPR8 arg_DC
  loc_D411D6: FLdFPR8 arg_D4
  loc_D411D9: FStFPR8 var_F8
  loc_D411DC: FLdFPR8 arg_DC
  loc_D411DF: FStFPR8 var_100
  loc_D411E2: LitI4 2
  loc_D411E7: FLdFPR8 PeriLiqu4
  loc_D411EA: FLdFPR8 var_F8
  loc_D411ED: SubR4
  loc_D411EE: FLdFPR8 var_100
  loc_D411F1: SubR4
  loc_D411F2: CVarR8
  loc_D411F6: FLdRfVar var_214
  loc_D411F9: ImpAdCallFPR4  = Round(, )
  loc_D411FE: ILdRf var_13C
  loc_D41201: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D41204: ConcatStr
  loc_D41205: FStStrNoPop var_190
  loc_D41208: LitStr " VALUES ("
  loc_D4120B: ConcatStr
  loc_D4120C: FStStrNoPop var_194
  loc_D4120F: FLdI2 PeriLiqu
  loc_D41212: CStrUI1
  loc_D41214: FStStrNoPop var_198
  loc_D41217: ConcatStr
  loc_D41218: FStStrNoPop var_19C
  loc_D4121B: LitStr ","
  loc_D4121E: ConcatStr
  loc_D4121F: FStStrNoPop var_1A0
  loc_D41222: FLdUI1
  loc_D41226: CStrI2
  loc_D41228: FStStrNoPop var_1A4
  loc_D4122B: ConcatStr
  loc_D4122C: FStStrNoPop var_1A8
  loc_D4122F: LitStr ","
  loc_D41232: ConcatStr
  loc_D41233: FStStrNoPop var_1AC
  loc_D41236: FLdUI1
  loc_D4123A: CStrI2
  loc_D4123C: FStStrNoPop var_1B0
  loc_D4123F: ConcatStr
  loc_D41240: FStStrNoPop var_1B4
  loc_D41243: LitStr ","
  loc_D41246: ConcatStr
  loc_D41247: FStStrNoPop var_1B8
  loc_D4124A: FLdUI1
  loc_D4124E: CStrI2
  loc_D41250: FStStrNoPop var_1BC
  loc_D41253: ConcatStr
  loc_D41254: FStStrNoPop var_1C0
  loc_D41257: LitStr ","
  loc_D4125A: ConcatStr
  loc_D4125B: FStStrNoPop var_1C4
  loc_D4125E: ILdRf CodiInmu
  loc_D41261: CStrI4
  loc_D41263: FStStrNoPop var_684
  loc_D41266: ConcatStr
  loc_D41267: FStStrNoPop var_808
  loc_D4126A: LitStr ",'"
  loc_D4126D: ConcatStr
  loc_D4126E: FStStrNoPop var_B3C
  loc_D41271: ILdRf var_88
  loc_D41274: ConcatStr
  loc_D41275: FStStrNoPop var_C10
  loc_D41278: LitStr "',"
  loc_D4127B: ConcatStr
  loc_D4127C: FStStrNoPop var_C54
  loc_D4127F: FLdUI1
  loc_D41283: CStrI2
  loc_D41285: FStStrNoPop var_F98
  loc_D41288: ConcatStr
  loc_D41289: FStStrNoPop var_FDC
  loc_D4128C: LitStr ","
  loc_D4128F: ConcatStr
  loc_D41290: FStStrNoPop var_FE0
  loc_D41293: ImpAdLdI2 MemVar_D93036
  loc_D41296: CStrUI1
  loc_D41298: FStStrNoPop var_FE4
  loc_D4129B: ConcatStr
  loc_D4129C: FStStrNoPop var_FE8
  loc_D4129F: LitStr ",1,1,"
  loc_D412A2: ConcatStr
  loc_D412A3: FStStrNoPop var_FF0
  loc_D412A6: LitI4 0
  loc_D412AB: LitI4 -1
  loc_D412B0: LitI4 1
  loc_D412B5: LitStr "."
  loc_D412B8: LitStr ","
  loc_D412BB: FLdFPR8 PeriLiqu4
  loc_D412BE: CStrR8
  loc_D412C0: FStStrNoPop var_FEC
  loc_D412C3: ImpAdCallI2 Replace(, , , , , )
  loc_D412C8: FStStrNoPop var_FF4
  loc_D412CB: ConcatStr
  loc_D412CC: FStStrNoPop var_FF8
  loc_D412CF: LitStr ","
  loc_D412D2: ConcatStr
  loc_D412D3: FStStrNoPop var_1000
  loc_D412D6: LitI4 0
  loc_D412DB: LitI4 -1
  loc_D412E0: LitI4 1
  loc_D412E5: LitStr "."
  loc_D412E8: LitStr ","
  loc_D412EB: FLdFPR8 var_F8
  loc_D412EE: CStrR8
  loc_D412F0: FStStrNoPop var_FFC
  loc_D412F3: ImpAdCallI2 Replace(, , , , , )
  loc_D412F8: FStStrNoPop var_1004
  loc_D412FB: ConcatStr
  loc_D412FC: FStStrNoPop var_1008
  loc_D412FF: LitStr ","
  loc_D41302: ConcatStr
  loc_D41303: FStStrNoPop var_1010
  loc_D41306: LitI4 0
  loc_D4130B: LitI4 -1
  loc_D41310: LitI4 1
  loc_D41315: LitStr "."
  loc_D41318: LitStr ","
  loc_D4131B: FLdFPR8 var_100
  loc_D4131E: CStrR8
  loc_D41320: FStStrNoPop var_100C
  loc_D41323: ImpAdCallI2 Replace(, , , , , )
  loc_D41328: FStStrNoPop var_1014
  loc_D4132B: ConcatStr
  loc_D4132C: FStStrNoPop var_1018
  loc_D4132F: LitStr ","
  loc_D41332: ConcatStr
  loc_D41333: FStStrNoPop var_1020
  loc_D41336: LitI4 0
  loc_D4133B: LitI4 -1
  loc_D41340: LitI4 1
  loc_D41345: LitStr "."
  loc_D41348: LitStr ","
  loc_D4134B: FLdRfVar var_214
  loc_D4134E: CStrVarVal var_101C
  loc_D41352: ImpAdCallI2 Replace(, , , , , )
  loc_D41357: FStStrNoPop var_1024
  loc_D4135A: ConcatStr
  loc_D4135B: FStStrNoPop var_1028
  loc_D4135E: LitStr ");"
  loc_D41361: ConcatStr
  loc_D41362: FStStr var_13C
  loc_D41365: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D413B8: FFreeVar var_1F4 = ""
  loc_D413BF: FLdFPR8 PeriLiquC
  loc_D413C2: LitI2_Byte 0
  loc_D413C4: CR8I2
  loc_D413C5: GtR4
  loc_D413C6: BranchF loc_D415B0
  loc_D413C9: LitI2_Byte 0
  loc_D413CB: CR8I2
  loc_D413CC: FStFPR8 var_F8
  loc_D413CF: FLdI2 arg_EC
  loc_D413D2: LitI2_Byte &HFF
  loc_D413D4: EqI2
  loc_D413D5: BranchF loc_D413E7
  loc_D413D8: FLdFPR8 PeriLiquC
  loc_D413DB: FStFPR8 arg_DC
  loc_D413DE: FLdFPR8 arg_DC
  loc_D413E1: FStFPR8 var_100
  loc_D413E4: Branch loc_D413ED
  loc_D413E7: LitI2_Byte 0
  loc_D413E9: CR8I2
  loc_D413EA: FStFPR8 var_100
  loc_D413ED: ILdRf var_13C
  loc_D413F0: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D413F3: ConcatStr
  loc_D413F4: FStStrNoPop var_190
  loc_D413F7: LitStr " VALUES ("
  loc_D413FA: ConcatStr
  loc_D413FB: FStStrNoPop var_194
  loc_D413FE: FLdI2 PeriLiqu
  loc_D41401: CStrUI1
  loc_D41403: FStStrNoPop var_198
  loc_D41406: ConcatStr
  loc_D41407: FStStrNoPop var_19C
  loc_D4140A: LitStr ","
  loc_D4140D: ConcatStr
  loc_D4140E: FStStrNoPop var_1A0
  loc_D41411: FLdUI1
  loc_D41415: CStrI2
  loc_D41417: FStStrNoPop var_1A4
  loc_D4141A: ConcatStr
  loc_D4141B: FStStrNoPop var_1A8
  loc_D4141E: LitStr ","
  loc_D41421: ConcatStr
  loc_D41422: FStStrNoPop var_1AC
  loc_D41425: FLdUI1
  loc_D41429: CStrI2
  loc_D4142B: FStStrNoPop var_1B0
  loc_D4142E: ConcatStr
  loc_D4142F: FStStrNoPop var_1B4
  loc_D41432: LitStr ","
  loc_D41435: ConcatStr
  loc_D41436: FStStrNoPop var_1B8
  loc_D41439: FLdUI1
  loc_D4143D: CStrI2
  loc_D4143F: FStStrNoPop var_1BC
  loc_D41442: ConcatStr
  loc_D41443: FStStrNoPop var_1C0
  loc_D41446: LitStr ","
  loc_D41449: ConcatStr
  loc_D4144A: FStStrNoPop var_1C4
  loc_D4144D: ILdRf CodiInmu
  loc_D41450: CStrI4
  loc_D41452: FStStrNoPop var_684
  loc_D41455: ConcatStr
  loc_D41456: FStStrNoPop var_808
  loc_D41459: LitStr ",'"
  loc_D4145C: ConcatStr
  loc_D4145D: FStStrNoPop var_B3C
  loc_D41460: ILdRf var_88
  loc_D41463: ConcatStr
  loc_D41464: FStStrNoPop var_C10
  loc_D41467: LitStr "',"
  loc_D4146A: ConcatStr
  loc_D4146B: FStStrNoPop var_C54
  loc_D4146E: FLdUI1
  loc_D41472: CStrI2
  loc_D41474: FStStrNoPop var_F98
  loc_D41477: ConcatStr
  loc_D41478: FStStrNoPop var_FDC
  loc_D4147B: LitStr ","
  loc_D4147E: ConcatStr
  loc_D4147F: FStStrNoPop var_FE0
  loc_D41482: ImpAdLdI2 MemVar_D93036
  loc_D41485: CStrUI1
  loc_D41487: FStStrNoPop var_FE4
  loc_D4148A: ConcatStr
  loc_D4148B: FStStrNoPop var_FE8
  loc_D4148E: LitStr ",2,1,"
  loc_D41491: ConcatStr
  loc_D41492: FStStrNoPop var_FF0
  loc_D41495: LitI4 0
  loc_D4149A: LitI4 -1
  loc_D4149F: LitI4 1
  loc_D414A4: LitStr "."
  loc_D414A7: LitStr ","
  loc_D414AA: FLdFPR8 PeriLiquC
  loc_D414AD: CStrR8
  loc_D414AF: FStStrNoPop var_FEC
  loc_D414B2: ImpAdCallI2 Replace(, , , , , )
  loc_D414B7: FStStrNoPop var_FF4
  loc_D414BA: ConcatStr
  loc_D414BB: FStStrNoPop var_FF8
  loc_D414BE: LitStr ","
  loc_D414C1: ConcatStr
  loc_D414C2: FStStrNoPop var_1000
  loc_D414C5: LitI4 0
  loc_D414CA: LitI4 -1
  loc_D414CF: LitI4 1
  loc_D414D4: LitStr "."
  loc_D414D7: LitStr ","
  loc_D414DA: FLdFPR8 var_F8
  loc_D414DD: CStrR8
  loc_D414DF: FStStrNoPop var_FFC
  loc_D414E2: ImpAdCallI2 Replace(, , , , , )
  loc_D414E7: FStStrNoPop var_1004
  loc_D414EA: ConcatStr
  loc_D414EB: FStStrNoPop var_1008
  loc_D414EE: LitStr ","
  loc_D414F1: ConcatStr
  loc_D414F2: FStStrNoPop var_1010
  loc_D414F5: LitI4 0
  loc_D414FA: LitI4 -1
  loc_D414FF: LitI4 1
  loc_D41504: LitStr "."
  loc_D41507: LitStr ","
  loc_D4150A: FLdFPR8 var_100
  loc_D4150D: CStrR8
  loc_D4150F: FStStrNoPop var_100C
  loc_D41512: ImpAdCallI2 Replace(, , , , , )
  loc_D41517: FStStrNoPop var_1014
  loc_D4151A: ConcatStr
  loc_D4151B: FStStrNoPop var_1018
  loc_D4151E: LitStr ","
  loc_D41521: ConcatStr
  loc_D41522: FStStrNoPop var_1020
  loc_D41525: LitI4 0
  loc_D4152A: LitI4 -1
  loc_D4152F: LitI4 1
  loc_D41534: LitStr "."
  loc_D41537: LitStr ","
  loc_D4153A: FLdFPR8 PeriLiquC
  loc_D4153D: FLdFPR8 var_F8
  loc_D41540: SubR4
  loc_D41541: FLdFPR8 var_100
  loc_D41544: SubR4
  loc_D41545: CStrR8
  loc_D41547: FStStrNoPop var_101C
  loc_D4154A: ImpAdCallI2 Replace(, , , , , )
  loc_D4154F: FStStrNoPop var_1024
  loc_D41552: ConcatStr
  loc_D41553: FStStrNoPop var_1028
  loc_D41556: LitStr ");"
  loc_D41559: ConcatStr
  loc_D4155A: FStStr var_13C
  loc_D4155D: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D415B0: FLdFPR8 arg_E4
  loc_D415B3: LitI2_Byte 0
  loc_D415B5: CR8I2
  loc_D415B6: GtR4
  loc_D415B7: BranchF loc_D417A1
  loc_D415BA: LitI2_Byte 0
  loc_D415BC: CR8I2
  loc_D415BD: FStFPR8 var_F8
  loc_D415C0: FLdI2 arg_EC
  loc_D415C3: LitI2_Byte &HFF
  loc_D415C5: EqI2
  loc_D415C6: BranchF loc_D415D8
  loc_D415C9: FLdFPR8 arg_E4
  loc_D415CC: FStFPR8 arg_DC
  loc_D415CF: FLdFPR8 arg_DC
  loc_D415D2: FStFPR8 var_100
  loc_D415D5: Branch loc_D415DE
  loc_D415D8: LitI2_Byte 0
  loc_D415DA: CR8I2
  loc_D415DB: FStFPR8 var_100
  loc_D415DE: ILdRf var_13C
  loc_D415E1: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D415E4: ConcatStr
  loc_D415E5: FStStrNoPop var_190
  loc_D415E8: LitStr " VALUES ("
  loc_D415EB: ConcatStr
  loc_D415EC: FStStrNoPop var_194
  loc_D415EF: FLdI2 PeriLiqu
  loc_D415F2: CStrUI1
  loc_D415F4: FStStrNoPop var_198
  loc_D415F7: ConcatStr
  loc_D415F8: FStStrNoPop var_19C
  loc_D415FB: LitStr ","
  loc_D415FE: ConcatStr
  loc_D415FF: FStStrNoPop var_1A0
  loc_D41602: FLdUI1
  loc_D41606: CStrI2
  loc_D41608: FStStrNoPop var_1A4
  loc_D4160B: ConcatStr
  loc_D4160C: FStStrNoPop var_1A8
  loc_D4160F: LitStr ","
  loc_D41612: ConcatStr
  loc_D41613: FStStrNoPop var_1AC
  loc_D41616: FLdUI1
  loc_D4161A: CStrI2
  loc_D4161C: FStStrNoPop var_1B0
  loc_D4161F: ConcatStr
  loc_D41620: FStStrNoPop var_1B4
  loc_D41623: LitStr ","
  loc_D41626: ConcatStr
  loc_D41627: FStStrNoPop var_1B8
  loc_D4162A: FLdUI1
  loc_D4162E: CStrI2
  loc_D41630: FStStrNoPop var_1BC
  loc_D41633: ConcatStr
  loc_D41634: FStStrNoPop var_1C0
  loc_D41637: LitStr ","
  loc_D4163A: ConcatStr
  loc_D4163B: FStStrNoPop var_1C4
  loc_D4163E: ILdRf CodiInmu
  loc_D41641: CStrI4
  loc_D41643: FStStrNoPop var_684
  loc_D41646: ConcatStr
  loc_D41647: FStStrNoPop var_808
  loc_D4164A: LitStr ",'"
  loc_D4164D: ConcatStr
  loc_D4164E: FStStrNoPop var_B3C
  loc_D41651: ILdRf var_88
  loc_D41654: ConcatStr
  loc_D41655: FStStrNoPop var_C10
  loc_D41658: LitStr "',"
  loc_D4165B: ConcatStr
  loc_D4165C: FStStrNoPop var_C54
  loc_D4165F: FLdUI1
  loc_D41663: CStrI2
  loc_D41665: FStStrNoPop var_F98
  loc_D41668: ConcatStr
  loc_D41669: FStStrNoPop var_FDC
  loc_D4166C: LitStr ","
  loc_D4166F: ConcatStr
  loc_D41670: FStStrNoPop var_FE0
  loc_D41673: ImpAdLdI2 MemVar_D93036
  loc_D41676: CStrUI1
  loc_D41678: FStStrNoPop var_FE4
  loc_D4167B: ConcatStr
  loc_D4167C: FStStrNoPop var_FE8
  loc_D4167F: LitStr ",3,1,"
  loc_D41682: ConcatStr
  loc_D41683: FStStrNoPop var_FF0
  loc_D41686: LitI4 0
  loc_D4168B: LitI4 -1
  loc_D41690: LitI4 1
  loc_D41695: LitStr "."
  loc_D41698: LitStr ","
  loc_D4169B: FLdFPR8 arg_E4
  loc_D4169E: CStrR8
  loc_D416A0: FStStrNoPop var_FEC
  loc_D416A3: ImpAdCallI2 Replace(, , , , , )
  loc_D416A8: FStStrNoPop var_FF4
  loc_D416AB: ConcatStr
  loc_D416AC: FStStrNoPop var_FF8
  loc_D416AF: LitStr ","
  loc_D416B2: ConcatStr
  loc_D416B3: FStStrNoPop var_1000
  loc_D416B6: LitI4 0
  loc_D416BB: LitI4 -1
  loc_D416C0: LitI4 1
  loc_D416C5: LitStr "."
  loc_D416C8: LitStr ","
  loc_D416CB: FLdFPR8 var_F8
  loc_D416CE: CStrR8
  loc_D416D0: FStStrNoPop var_FFC
  loc_D416D3: ImpAdCallI2 Replace(, , , , , )
  loc_D416D8: FStStrNoPop var_1004
  loc_D416DB: ConcatStr
  loc_D416DC: FStStrNoPop var_1008
  loc_D416DF: LitStr ","
  loc_D416E2: ConcatStr
  loc_D416E3: FStStrNoPop var_1010
  loc_D416E6: LitI4 0
  loc_D416EB: LitI4 -1
  loc_D416F0: LitI4 1
  loc_D416F5: LitStr "."
  loc_D416F8: LitStr ","
  loc_D416FB: FLdFPR8 var_100
  loc_D416FE: CStrR8
  loc_D41700: FStStrNoPop var_100C
  loc_D41703: ImpAdCallI2 Replace(, , , , , )
  loc_D41708: FStStrNoPop var_1014
  loc_D4170B: ConcatStr
  loc_D4170C: FStStrNoPop var_1018
  loc_D4170F: LitStr ","
  loc_D41712: ConcatStr
  loc_D41713: FStStrNoPop var_1020
  loc_D41716: LitI4 0
  loc_D4171B: LitI4 -1
  loc_D41720: LitI4 1
  loc_D41725: LitStr "."
  loc_D41728: LitStr ","
  loc_D4172B: FLdFPR8 arg_E4
  loc_D4172E: FLdFPR8 var_F8
  loc_D41731: SubR4
  loc_D41732: FLdFPR8 var_100
  loc_D41735: SubR4
  loc_D41736: CStrR8
  loc_D41738: FStStrNoPop var_101C
  loc_D4173B: ImpAdCallI2 Replace(, , , , , )
  loc_D41740: FStStrNoPop var_1024
  loc_D41743: ConcatStr
  loc_D41744: FStStrNoPop var_1028
  loc_D41747: LitStr ");"
  loc_D4174A: ConcatStr
  loc_D4174B: FStStr var_13C
  loc_D4174E: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D417A1: FLdFPR8 arg_F0
  loc_D417A4: LitI2_Byte 0
  loc_D417A6: CR8I2
  loc_D417A7: GtR4
  loc_D417A8: BranchF loc_D41992
  loc_D417AB: LitI2_Byte 0
  loc_D417AD: CR8I2
  loc_D417AE: FStFPR8 var_F8
  loc_D417B1: FLdI2 arg_EC
  loc_D417B4: LitI2_Byte &HFF
  loc_D417B6: EqI2
  loc_D417B7: BranchF loc_D417C9
  loc_D417BA: FLdFPR8 arg_F0
  loc_D417BD: FStFPR8 arg_DC
  loc_D417C0: FLdFPR8 arg_DC
  loc_D417C3: FStFPR8 var_100
  loc_D417C6: Branch loc_D417CF
  loc_D417C9: LitI2_Byte 0
  loc_D417CB: CR8I2
  loc_D417CC: FStFPR8 var_100
  loc_D417CF: ILdRf var_13C
  loc_D417D2: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D417D5: ConcatStr
  loc_D417D6: FStStrNoPop var_190
  loc_D417D9: LitStr " VALUES ("
  loc_D417DC: ConcatStr
  loc_D417DD: FStStrNoPop var_194
  loc_D417E0: FLdI2 PeriLiqu
  loc_D417E3: CStrUI1
  loc_D417E5: FStStrNoPop var_198
  loc_D417E8: ConcatStr
  loc_D417E9: FStStrNoPop var_19C
  loc_D417EC: LitStr ","
  loc_D417EF: ConcatStr
  loc_D417F0: FStStrNoPop var_1A0
  loc_D417F3: FLdUI1
  loc_D417F7: CStrI2
  loc_D417F9: FStStrNoPop var_1A4
  loc_D417FC: ConcatStr
  loc_D417FD: FStStrNoPop var_1A8
  loc_D41800: LitStr ","
  loc_D41803: ConcatStr
  loc_D41804: FStStrNoPop var_1AC
  loc_D41807: FLdUI1
  loc_D4180B: CStrI2
  loc_D4180D: FStStrNoPop var_1B0
  loc_D41810: ConcatStr
  loc_D41811: FStStrNoPop var_1B4
  loc_D41814: LitStr ","
  loc_D41817: ConcatStr
  loc_D41818: FStStrNoPop var_1B8
  loc_D4181B: FLdUI1
  loc_D4181F: CStrI2
  loc_D41821: FStStrNoPop var_1BC
  loc_D41824: ConcatStr
  loc_D41825: FStStrNoPop var_1C0
  loc_D41828: LitStr ","
  loc_D4182B: ConcatStr
  loc_D4182C: FStStrNoPop var_1C4
  loc_D4182F: ILdRf CodiInmu
  loc_D41832: CStrI4
  loc_D41834: FStStrNoPop var_684
  loc_D41837: ConcatStr
  loc_D41838: FStStrNoPop var_808
  loc_D4183B: LitStr ",'"
  loc_D4183E: ConcatStr
  loc_D4183F: FStStrNoPop var_B3C
  loc_D41842: ILdRf var_88
  loc_D41845: ConcatStr
  loc_D41846: FStStrNoPop var_C10
  loc_D41849: LitStr "',"
  loc_D4184C: ConcatStr
  loc_D4184D: FStStrNoPop var_C54
  loc_D41850: FLdUI1
  loc_D41854: CStrI2
  loc_D41856: FStStrNoPop var_F98
  loc_D41859: ConcatStr
  loc_D4185A: FStStrNoPop var_FDC
  loc_D4185D: LitStr ","
  loc_D41860: ConcatStr
  loc_D41861: FStStrNoPop var_FE0
  loc_D41864: ImpAdLdI2 MemVar_D93036
  loc_D41867: CStrUI1
  loc_D41869: FStStrNoPop var_FE4
  loc_D4186C: ConcatStr
  loc_D4186D: FStStrNoPop var_FE8
  loc_D41870: LitStr ",4,1,"
  loc_D41873: ConcatStr
  loc_D41874: FStStrNoPop var_FF0
  loc_D41877: LitI4 0
  loc_D4187C: LitI4 -1
  loc_D41881: LitI4 1
  loc_D41886: LitStr "."
  loc_D41889: LitStr ","
  loc_D4188C: FLdFPR8 arg_F0
  loc_D4188F: CStrR8
  loc_D41891: FStStrNoPop var_FEC
  loc_D41894: ImpAdCallI2 Replace(, , , , , )
  loc_D41899: FStStrNoPop var_FF4
  loc_D4189C: ConcatStr
  loc_D4189D: FStStrNoPop var_FF8
  loc_D418A0: LitStr ","
  loc_D418A3: ConcatStr
  loc_D418A4: FStStrNoPop var_1000
  loc_D418A7: LitI4 0
  loc_D418AC: LitI4 -1
  loc_D418B1: LitI4 1
  loc_D418B6: LitStr "."
  loc_D418B9: LitStr ","
  loc_D418BC: FLdFPR8 var_F8
  loc_D418BF: CStrR8
  loc_D418C1: FStStrNoPop var_FFC
  loc_D418C4: ImpAdCallI2 Replace(, , , , , )
  loc_D418C9: FStStrNoPop var_1004
  loc_D418CC: ConcatStr
  loc_D418CD: FStStrNoPop var_1008
  loc_D418D0: LitStr ","
  loc_D418D3: ConcatStr
  loc_D418D4: FStStrNoPop var_1010
  loc_D418D7: LitI4 0
  loc_D418DC: LitI4 -1
  loc_D418E1: LitI4 1
  loc_D418E6: LitStr "."
  loc_D418E9: LitStr ","
  loc_D418EC: FLdFPR8 var_100
  loc_D418EF: CStrR8
  loc_D418F1: FStStrNoPop var_100C
  loc_D418F4: ImpAdCallI2 Replace(, , , , , )
  loc_D418F9: FStStrNoPop var_1014
  loc_D418FC: ConcatStr
  loc_D418FD: FStStrNoPop var_1018
  loc_D41900: LitStr ","
  loc_D41903: ConcatStr
  loc_D41904: FStStrNoPop var_1020
  loc_D41907: LitI4 0
  loc_D4190C: LitI4 -1
  loc_D41911: LitI4 1
  loc_D41916: LitStr "."
  loc_D41919: LitStr ","
  loc_D4191C: FLdFPR8 arg_F0
  loc_D4191F: FLdFPR8 var_F8
  loc_D41922: SubR4
  loc_D41923: FLdFPR8 var_100
  loc_D41926: SubR4
  loc_D41927: CStrR8
  loc_D41929: FStStrNoPop var_101C
  loc_D4192C: ImpAdCallI2 Replace(, , , , , )
  loc_D41931: FStStrNoPop var_1024
  loc_D41934: ConcatStr
  loc_D41935: FStStrNoPop var_1028
  loc_D41938: LitStr ");"
  loc_D4193B: ConcatStr
  loc_D4193C: FStStr var_13C
  loc_D4193F: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_1018 = "": var_101C = "": var_1020 = "": var_1024 = "": var_1028 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D41992: LitStr " SELECT servinmu.CodiSeca, ROUND(servcata.ImpoSeca * "
  loc_D41995: LitI4 0
  loc_D4199A: LitI4 -1
  loc_D4199F: LitI4 1
  loc_D419A4: LitStr "."
  loc_D419A7: LitStr ","
  loc_D419AA: ImpAdLdFPR8 MemVar_D93084
  loc_D419AD: CStrR8
  loc_D419AF: FStStrNoPop var_190
  loc_D419B2: ImpAdCallI2 Replace(, , , , , )
  loc_D419B7: FStStrNoPop var_194
  loc_D419BA: ConcatStr
  loc_D419BB: FStStrNoPop var_198
  loc_D419BE: LitStr ",2) Importe, servcata.ImpoSeca PorcSeca "
  loc_D419C1: ConcatStr
  loc_D419C2: FStStrNoPop var_19C
  loc_D419C5: LitStr " FROM  servinmu"
  loc_D419C8: ConcatStr
  loc_D419C9: FStStrNoPop var_1A0
  loc_D419CC: LitStr " INNER JOIN servcata ON servcata.PeriOrde = "
  loc_D419CF: ConcatStr
  loc_D419D0: FStStrNoPop var_1A4
  loc_D419D3: ImpAdLdI2 MemVar_D93036
  loc_D419D6: CStrUI1
  loc_D419D8: FStStrNoPop var_1A8
  loc_D419DB: ConcatStr
  loc_D419DC: FStStrNoPop var_1AC
  loc_D419DF: LitStr " AND servinmu.CodiSeca = servcata.CodiSeca "
  loc_D419E2: ConcatStr
  loc_D419E3: FStStrNoPop var_1B0
  loc_D419E6: LitStr " WHERE servinmu.CodiInmu = "
  loc_D419E9: ConcatStr
  loc_D419EA: FStStrNoPop var_1B4
  loc_D419ED: ILdRf CodiInmu
  loc_D419F0: CStrI4
  loc_D419F2: FStStrNoPop var_1B8
  loc_D419F5: ConcatStr
  loc_D419F6: FStStrNoPop var_1BC
  loc_D419F9: LitStr " AND FedeSein <= '"
  loc_D419FC: ConcatStr
  loc_D419FD: FStStrNoPop var_1C0
  loc_D41A00: LitI4 1
  loc_D41A05: LitI4 1
  loc_D41A0A: LitVarStr var_204, "yyyy-mm-dd"
  loc_D41A0F: FStVarCopyObj var_1F4
  loc_D41A12: FLdRfVar var_1F4
  loc_D41A15: FLdRfVar arg_118
  loc_D41A18: CVarRef
  loc_D41A1D: ImpAdCallI2 Format$(, )
  loc_D41A22: FStStrNoPop var_1C4
  loc_D41A25: ConcatStr
  loc_D41A26: FStStrNoPop var_684
  loc_D41A29: LitStr "'"
  loc_D41A2C: ConcatStr
  loc_D41A2D: FStStrNoPop var_808
  loc_D41A30: LitStr " AND (FehaSein > '"
  loc_D41A33: ConcatStr
  loc_D41A34: FStStrNoPop var_B3C
  loc_D41A37: LitI4 1
  loc_D41A3C: LitI4 1
  loc_D41A41: LitVarStr var_268, "yyyy-mm-dd"
  loc_D41A46: FStVarCopyObj var_214
  loc_D41A49: FLdRfVar var_214
  loc_D41A4C: FLdRfVar arg_118
  loc_D41A4F: CVarRef
  loc_D41A54: ImpAdCallI2 Format$(, )
  loc_D41A59: FStStrNoPop var_C10
  loc_D41A5C: ConcatStr
  loc_D41A5D: FStStrNoPop var_C54
  loc_D41A60: LitStr "'"
  loc_D41A63: ConcatStr
  loc_D41A64: FStStrNoPop var_F98
  loc_D41A67: LitStr " OR FehaSein IS NULL) "
  loc_D41A6A: ConcatStr
  loc_D41A6B: FStStrNoPop var_FDC
  loc_D41A6E: LitStr " ORDER BY servinmu.NumeFrin, servinmu.CodiSeca"
  loc_D41A71: ConcatStr
  loc_D41A72: FStStrNoPop var_FE0
  loc_D41A75: Call EjecutarRsCls2(from_stack_1v)
  loc_D41A7A: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = ""
  loc_D41AA9: FFreeVar var_1F4 = ""
  loc_D41AB0: FLdRfVar var_1C8
  loc_D41AB3: FLdPr Me
  loc_D41AB6: MemLdPr global_64
  loc_D41AB9:  = Me.RecordCount
  loc_D41ABE: ILdRf var_1C8
  loc_D41AC1: LitI4 0
  loc_D41AC6: GtI4
  loc_D41AC7: BranchF loc_D41EE2
  loc_D41ACA: FLdPr Me
  loc_D41ACD: MemLdPr global_64
  loc_D41AD0: Me.MoveFirst
  loc_D41AD5: FLdRfVar var_1CA
  loc_D41AD8: FLdPr Me
  loc_D41ADB: MemLdPr global_64
  loc_D41ADE:  = Me.EOF
  loc_D41AE3: FLdI2 var_1CA
  loc_D41AE6: NotI4
  loc_D41AE7: BranchF loc_D41EE2
  loc_D41AEA: LitI2_Byte 0
  loc_D41AEC: CR8I2
  loc_D41AED: FStFPR8 var_F8
  loc_D41AF0: FLdRfVar var_1F4
  loc_D41AF3: FLdRfVar var_1E4
  loc_D41AF6: LitVarStr var_1E0, "CodiSeca"
  loc_D41AFB: PopAdLdVar
  loc_D41AFC: FLdRfVar var_1D0
  loc_D41AFF: FLdPr Me
  loc_D41B02: MemLdPr global_64
  loc_D41B05:  = Me.Fields
  loc_D41B0A: FLdPr var_1D0
  loc_D41B0D: from_stack_2 = Me.Item(from_stack_1)
  loc_D41B12: FLdPr var_1E4
  loc_D41B15:  = Me.Value
  loc_D41B1A: FLdRfVar var_1F4
  loc_D41B1D: FnCIntVar
  loc_D41B1F: LitI2_Byte &HF
  loc_D41B21: EqI2
  loc_D41B22: FFreeAd var_1D0 = ""
  loc_D41B29: FFree1Var var_1F4 = ""
  loc_D41B2C: BranchF loc_D41B41
  loc_D41B2F: FLdFPR8 PeriLiqu4
  loc_D41B32: LitI2 2860
  loc_D41B35: CR8I2
  loc_D41B36: SubR4
  loc_D41B37: FLdFPR8 arg_12C
  loc_D41B3A: SubR4
  loc_D41B3B: FStFPR8 var_E8
  loc_D41B3E: Branch loc_D41C9B
  loc_D41B41: FLdRfVar var_1F4
  loc_D41B44: FLdRfVar var_1E4
  loc_D41B47: LitVarStr var_1E0, "CodiSeca"
  loc_D41B4C: PopAdLdVar
  loc_D41B4D: FLdRfVar var_1D0
  loc_D41B50: FLdPr Me
  loc_D41B53: MemLdPr global_64
  loc_D41B56:  = Me.Fields
  loc_D41B5B: FLdPr var_1D0
  loc_D41B5E: from_stack_2 = Me.Item(from_stack_1)
  loc_D41B63: FLdPr var_1E4
  loc_D41B66:  = Me.Value
  loc_D41B6B: FLdRfVar var_1F4
  loc_D41B6E: FnCIntVar
  loc_D41B70: LitI2_Byte &H1E
  loc_D41B72: EqI2
  loc_D41B73: FFreeAd var_1D0 = ""
  loc_D41B7A: FFree1Var var_1F4 = ""
  loc_D41B7D: BranchF loc_D41BD0
  loc_D41B80: FLdRfVar var_1F4
  loc_D41B83: FLdRfVar var_1E4
  loc_D41B86: LitVarStr var_1E0, "PorcSeca"
  loc_D41B8B: PopAdLdVar
  loc_D41B8C: FLdRfVar var_1D0
  loc_D41B8F: FLdPr Me
  loc_D41B92: MemLdPr global_64
  loc_D41B95:  = Me.Fields
  loc_D41B9A: FLdPr var_1D0
  loc_D41B9D: from_stack_2 = Me.Item(from_stack_1)
  loc_D41BA2: FLdPr var_1E4
  loc_D41BA5:  = Me.Value
  loc_D41BAA: FLdFPR8 PeriLiqu4
  loc_D41BAD: LitI2 2860
  loc_D41BB0: CR8I2
  loc_D41BB1: SubR4
  loc_D41BB2: FLdFPR8 arg_12C
  loc_D41BB5: SubR4
  loc_D41BB6: FLdRfVar var_1F4
  loc_D41BB9: FnCDblVar
  loc_D41BBB: MulR8
  loc_D41BBC: LitI2_Byte &H64
  loc_D41BBE: CR8I2
  loc_D41BBF: DivR8
  loc_D41BC0: FStFPR8 var_E8
  loc_D41BC3: FFreeAd var_1D0 = ""
  loc_D41BCA: FFree1Var var_1F4 = ""
  loc_D41BCD: Branch loc_D41C9B
  loc_D41BD0: FLdRfVar var_1F4
  loc_D41BD3: FLdRfVar var_1E4
  loc_D41BD6: LitVarStr var_1E0, "CodiSeca"
  loc_D41BDB: PopAdLdVar
  loc_D41BDC: FLdRfVar var_1D0
  loc_D41BDF: FLdPr Me
  loc_D41BE2: MemLdPr global_64
  loc_D41BE5:  = Me.Fields
  loc_D41BEA: FLdPr var_1D0
  loc_D41BED: from_stack_2 = Me.Item(from_stack_1)
  loc_D41BF2: FLdPr var_1E4
  loc_D41BF5:  = Me.Value
  loc_D41BFA: FLdRfVar var_1F4
  loc_D41BFD: FnCIntVar
  loc_D41BFF: LitI2_Byte &H1F
  loc_D41C01: EqI2
  loc_D41C02: FFreeAd var_1D0 = ""
  loc_D41C09: FFree1Var var_1F4 = ""
  loc_D41C0C: BranchF loc_D41C5F
  loc_D41C0F: FLdRfVar var_1F4
  loc_D41C12: FLdRfVar var_1E4
  loc_D41C15: LitVarStr var_1E0, "PorcSeca"
  loc_D41C1A: PopAdLdVar
  loc_D41C1B: FLdRfVar var_1D0
  loc_D41C1E: FLdPr Me
  loc_D41C21: MemLdPr global_64
  loc_D41C24:  = Me.Fields
  loc_D41C29: FLdPr var_1D0
  loc_D41C2C: from_stack_2 = Me.Item(from_stack_1)
  loc_D41C31: FLdPr var_1E4
  loc_D41C34:  = Me.Value
  loc_D41C39: FLdFPR8 PeriLiqu4
  loc_D41C3C: LitI2 2860
  loc_D41C3F: CR8I2
  loc_D41C40: SubR4
  loc_D41C41: FLdFPR8 arg_12C
  loc_D41C44: SubR4
  loc_D41C45: FLdRfVar var_1F4
  loc_D41C48: FnCDblVar
  loc_D41C4A: MulR8
  loc_D41C4B: LitI2_Byte &H64
  loc_D41C4D: CR8I2
  loc_D41C4E: DivR8
  loc_D41C4F: FStFPR8 var_E8
  loc_D41C52: FFreeAd var_1D0 = ""
  loc_D41C59: FFree1Var var_1F4 = ""
  loc_D41C5C: Branch loc_D41C9B
  loc_D41C5F: FLdRfVar var_1F4
  loc_D41C62: FLdRfVar var_1E4
  loc_D41C65: LitVarStr var_1E0, "Importe"
  loc_D41C6A: PopAdLdVar
  loc_D41C6B: FLdRfVar var_1D0
  loc_D41C6E: FLdPr Me
  loc_D41C71: MemLdPr global_64
  loc_D41C74:  = Me.Fields
  loc_D41C79: FLdPr var_1D0
  loc_D41C7C: from_stack_2 = Me.Item(from_stack_1)
  loc_D41C81: FLdPr var_1E4
  loc_D41C84:  = Me.Value
  loc_D41C89: FLdRfVar var_1F4
  loc_D41C8C: FnCDblVar
  loc_D41C8E: FStFPR8 var_E8
  loc_D41C91: FFreeAd var_1D0 = ""
  loc_D41C98: FFree1Var var_1F4 = ""
  loc_D41C9B: FLdI2 arg_EC
  loc_D41C9E: LitI2_Byte &HFF
  loc_D41CA0: EqI2
  loc_D41CA1: BranchF loc_D41CB3
  loc_D41CA4: FLdFPR8 var_E8
  loc_D41CA7: FStFPR8 arg_DC
  loc_D41CAA: FLdFPR8 arg_DC
  loc_D41CAD: FStFPR8 var_100
  loc_D41CB0: Branch loc_D41CB9
  loc_D41CB3: LitI2_Byte 0
  loc_D41CB5: CR8I2
  loc_D41CB6: FStFPR8 var_100
  loc_D41CB9: ILdRf var_13C
  loc_D41CBC: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde, DecaLtde, ExenLtde, TotaLtde) "
  loc_D41CBF: ConcatStr
  loc_D41CC0: FStStrNoPop var_190
  loc_D41CC3: LitStr " VALUES ("
  loc_D41CC6: ConcatStr
  loc_D41CC7: FStStrNoPop var_194
  loc_D41CCA: FLdI2 PeriLiqu
  loc_D41CCD: CStrUI1
  loc_D41CCF: FStStrNoPop var_198
  loc_D41CD2: ConcatStr
  loc_D41CD3: FStStrNoPop var_19C
  loc_D41CD6: LitStr ","
  loc_D41CD9: ConcatStr
  loc_D41CDA: FStStrNoPop var_1A0
  loc_D41CDD: FLdUI1
  loc_D41CE1: CStrI2
  loc_D41CE3: FStStrNoPop var_1A4
  loc_D41CE6: ConcatStr
  loc_D41CE7: FStStrNoPop var_1A8
  loc_D41CEA: LitStr ","
  loc_D41CED: ConcatStr
  loc_D41CEE: FStStrNoPop var_1AC
  loc_D41CF1: FLdUI1
  loc_D41CF5: CStrI2
  loc_D41CF7: FStStrNoPop var_1B0
  loc_D41CFA: ConcatStr
  loc_D41CFB: FStStrNoPop var_1B4
  loc_D41CFE: LitStr ","
  loc_D41D01: ConcatStr
  loc_D41D02: FStStrNoPop var_1B8
  loc_D41D05: FLdUI1
  loc_D41D09: CStrI2
  loc_D41D0B: FStStrNoPop var_1BC
  loc_D41D0E: ConcatStr
  loc_D41D0F: FStStrNoPop var_1C0
  loc_D41D12: LitStr ","
  loc_D41D15: ConcatStr
  loc_D41D16: FStStrNoPop var_1C4
  loc_D41D19: ILdRf CodiInmu
  loc_D41D1C: CStrI4
  loc_D41D1E: FStStrNoPop var_684
  loc_D41D21: ConcatStr
  loc_D41D22: FStStrNoPop var_808
  loc_D41D25: LitStr ",'"
  loc_D41D28: ConcatStr
  loc_D41D29: FStStrNoPop var_B3C
  loc_D41D2C: ILdRf var_88
  loc_D41D2F: ConcatStr
  loc_D41D30: FStStrNoPop var_C10
  loc_D41D33: LitStr "',"
  loc_D41D36: ConcatStr
  loc_D41D37: FStStrNoPop var_C54
  loc_D41D3A: FLdUI1
  loc_D41D3E: CStrI2
  loc_D41D40: FStStrNoPop var_F98
  loc_D41D43: ConcatStr
  loc_D41D44: FStStrNoPop var_FDC
  loc_D41D47: LitStr ","
  loc_D41D4A: ConcatStr
  loc_D41D4B: FStStrNoPop var_FE0
  loc_D41D4E: ImpAdLdI2 MemVar_D93036
  loc_D41D51: CStrUI1
  loc_D41D53: FStStrNoPop var_FE4
  loc_D41D56: ConcatStr
  loc_D41D57: FStStrNoPop var_FE8
  loc_D41D5A: LitStr ","
  loc_D41D5D: ConcatStr
  loc_D41D5E: CVarStr var_214
  loc_D41D61: FLdRfVar var_1F4
  loc_D41D64: FLdRfVar var_1E4
  loc_D41D67: LitVarStr var_1E0, "CodiSeca"
  loc_D41D6C: PopAdLdVar
  loc_D41D6D: FLdRfVar var_1D0
  loc_D41D70: FLdPr Me
  loc_D41D73: MemLdPr global_64
  loc_D41D76:  = Me.Fields
  loc_D41D7B: FLdPr var_1D0
  loc_D41D7E: from_stack_2 = Me.Item(from_stack_1)
  loc_D41D83: FLdPr var_1E4
  loc_D41D86:  = Me.Value
  loc_D41D8B: FLdRfVar var_1F4
  loc_D41D8E: ConcatVar var_224
  loc_D41D92: LitVarStr var_204, ",1,"
  loc_D41D97: ConcatVar var_234
  loc_D41D9B: LitI4 0
  loc_D41DA0: LitI4 -1
  loc_D41DA5: LitI4 1
  loc_D41DAA: LitStr "."
  loc_D41DAD: LitStr ","
  loc_D41DB0: FLdFPR8 var_E8
  loc_D41DB3: CStrR8
  loc_D41DB5: FStStrNoPop var_FEC
  loc_D41DB8: ImpAdCallI2 Replace(, , , , , )
  loc_D41DBD: CVarStr var_254
  loc_D41DC0: ConcatVar var_27C
  loc_D41DC4: LitVarStr var_244, ","
  loc_D41DC9: ConcatVar var_28C
  loc_D41DCD: LitI4 0
  loc_D41DD2: LitI4 -1
  loc_D41DD7: LitI4 1
  loc_D41DDC: LitStr "."
  loc_D41DDF: LitStr ","
  loc_D41DE2: FLdFPR8 var_F8
  loc_D41DE5: CStrR8
  loc_D41DE7: FStStrNoPop var_FF0
  loc_D41DEA: ImpAdCallI2 Replace(, , , , , )
  loc_D41DEF: CVarStr var_2AC
  loc_D41DF2: ConcatVar var_2D4
  loc_D41DF6: LitVarStr var_268, ","
  loc_D41DFB: ConcatVar var_2E4
  loc_D41DFF: LitI4 0
  loc_D41E04: LitI4 -1
  loc_D41E09: LitI4 1
  loc_D41E0E: LitStr "."
  loc_D41E11: LitStr ","
  loc_D41E14: FLdFPR8 var_100
  loc_D41E17: CStrR8
  loc_D41E19: FStStrNoPop var_FF4
  loc_D41E1C: ImpAdCallI2 Replace(, , , , , )
  loc_D41E21: CVarStr var_304
  loc_D41E24: ConcatVar var_32C
  loc_D41E28: LitVarStr var_29C, ","
  loc_D41E2D: ConcatVar var_33C
  loc_D41E31: LitI4 0
  loc_D41E36: LitI4 -1
  loc_D41E3B: LitI4 1
  loc_D41E40: LitStr "."
  loc_D41E43: LitStr ","
  loc_D41E46: FLdFPR8 var_E8
  loc_D41E49: FLdFPR8 var_F8
  loc_D41E4C: SubR4
  loc_D41E4D: FLdFPR8 var_100
  loc_D41E50: SubR4
  loc_D41E51: CStrR8
  loc_D41E53: FStStrNoPop var_FF8
  loc_D41E56: ImpAdCallI2 Replace(, , , , , )
  loc_D41E5B: CVarStr var_35C
  loc_D41E5E: ConcatVar var_384
  loc_D41E62: LitVarStr var_2C0, ");"
  loc_D41E67: ConcatVar var_394
  loc_D41E6B: CStrVarTmp
  loc_D41E6C: FStStr var_13C
  loc_D41E6F: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = ""
  loc_D41EAA: FFreeAd var_1D0 = ""
  loc_D41EB1: FFreeVar var_214 = "": var_1F4 = "": var_224 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = ""
  loc_D41ED4: FLdPr Me
  loc_D41ED7: MemLdPr global_64
  loc_D41EDA: Me.MoveNext
  loc_D41EDF: Branch loc_D41AD5
  loc_D41EE2: FLdFPR8 arg_B8
  loc_D41EE5: FnCDblR8
  loc_D41EE7: LitI2_Byte 0
  loc_D41EE9: CR8I2
  loc_D41EEA: GtR4
  loc_D41EEB: BranchF loc_D42052
  loc_D41EEE: ILdRf var_13C
  loc_D41EF1: LitStr " INSERT INTO litadeta (PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde,ImpoLtde,DecaLtde,TotaLtde) "
  loc_D41EF4: ConcatStr
  loc_D41EF5: FStStrNoPop var_190
  loc_D41EF8: LitStr "  VALUES ("
  loc_D41EFB: ConcatStr
  loc_D41EFC: FStStrNoPop var_194
  loc_D41EFF: FLdI2 PeriLiqu
  loc_D41F02: CStrUI1
  loc_D41F04: FStStrNoPop var_198
  loc_D41F07: ConcatStr
  loc_D41F08: FStStrNoPop var_19C
  loc_D41F0B: LitStr ","
  loc_D41F0E: ConcatStr
  loc_D41F0F: FStStrNoPop var_1A0
  loc_D41F12: FLdUI1
  loc_D41F16: CStrI2
  loc_D41F18: FStStrNoPop var_1A4
  loc_D41F1B: ConcatStr
  loc_D41F1C: FStStrNoPop var_1A8
  loc_D41F1F: LitStr ","
  loc_D41F22: ConcatStr
  loc_D41F23: FStStrNoPop var_1AC
  loc_D41F26: FLdUI1
  loc_D41F2A: CStrI2
  loc_D41F2C: FStStrNoPop var_1B0
  loc_D41F2F: ConcatStr
  loc_D41F30: FStStrNoPop var_1B4
  loc_D41F33: LitStr ","
  loc_D41F36: ConcatStr
  loc_D41F37: FStStrNoPop var_1B8
  loc_D41F3A: FLdUI1
  loc_D41F3E: CStrI2
  loc_D41F40: FStStrNoPop var_1BC
  loc_D41F43: ConcatStr
  loc_D41F44: FStStrNoPop var_1C0
  loc_D41F47: LitStr ","
  loc_D41F4A: ConcatStr
  loc_D41F4B: FStStrNoPop var_1C4
  loc_D41F4E: ILdRf CodiInmu
  loc_D41F51: CStrI4
  loc_D41F53: FStStrNoPop var_684
  loc_D41F56: ConcatStr
  loc_D41F57: FStStrNoPop var_808
  loc_D41F5A: LitStr ",'"
  loc_D41F5D: ConcatStr
  loc_D41F5E: FStStrNoPop var_B3C
  loc_D41F61: ILdRf var_88
  loc_D41F64: ConcatStr
  loc_D41F65: FStStrNoPop var_C10
  loc_D41F68: LitStr "','"
  loc_D41F6B: ConcatStr
  loc_D41F6C: FStStrNoPop var_C54
  loc_D41F6F: FLdUI1
  loc_D41F73: CStrI2
  loc_D41F75: FStStrNoPop var_F98
  loc_D41F78: ConcatStr
  loc_D41F79: FStStrNoPop var_FDC
  loc_D41F7C: LitStr "',"
  loc_D41F7F: ConcatStr
  loc_D41F80: FStStrNoPop var_FE0
  loc_D41F83: ImpAdLdI2 MemVar_D93036
  loc_D41F86: CStrUI1
  loc_D41F88: FStStrNoPop var_FE4
  loc_D41F8B: ConcatStr
  loc_D41F8C: FStStrNoPop var_FE8
  loc_D41F8F: LitStr ","
  loc_D41F92: ConcatStr
  loc_D41F93: FStStrNoPop var_FEC
  loc_D41F96: FLdI2 PeriLiqu0
  loc_D41F99: CStrUI1
  loc_D41F9B: FStStrNoPop var_FF0
  loc_D41F9E: ConcatStr
  loc_D41F9F: FStStrNoPop var_FF4
  loc_D41FA2: LitStr ",1,"
  loc_D41FA5: ConcatStr
  loc_D41FA6: FStStrNoPop var_FFC
  loc_D41FA9: LitI4 0
  loc_D41FAE: LitI4 -1
  loc_D41FB3: LitI4 1
  loc_D41FB8: LitStr "."
  loc_D41FBB: LitStr ","
  loc_D41FBE: FLdFPR8 arg_B8
  loc_D41FC1: CStrR8
  loc_D41FC3: FStStrNoPop var_FF8
  loc_D41FC6: ImpAdCallI2 Replace(, , , , , )
  loc_D41FCB: FStStrNoPop var_1000
  loc_D41FCE: ConcatStr
  loc_D41FCF: FStStrNoPop var_1004
  loc_D41FD2: LitStr ",0,"
  loc_D41FD5: ConcatStr
  loc_D41FD6: FStStrNoPop var_100C
  loc_D41FD9: LitI4 0
  loc_D41FDE: LitI4 -1
  loc_D41FE3: LitI4 1
  loc_D41FE8: LitStr "."
  loc_D41FEB: LitStr ","
  loc_D41FEE: FLdFPR8 arg_B8
  loc_D41FF1: CStrR8
  loc_D41FF3: FStStrNoPop var_1008
  loc_D41FF6: ImpAdCallI2 Replace(, , , , , )
  loc_D41FFB: FStStrNoPop var_1010
  loc_D41FFE: ConcatStr
  loc_D41FFF: FStStrNoPop var_1014
  loc_D42002: LitStr ");"
  loc_D42005: ConcatStr
  loc_D42006: FStStr var_13C
  loc_D42009: FFreeStr var_1004 = "": var_1008 = "": var_100C = "": var_1010 = "": var_1014 = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = "": var_FE4 = "": var_FE8 = "": var_FEC = "": var_FF0 = "": var_FF4 = "": var_FF8 = "": var_FFC = ""
  loc_D42052: ILdRf var_13C
  loc_D42055: Call EjecutarRsCls(from_stack_1v)
  loc_D4205A: FLdI2 arg_A8
  loc_D4205D: LitI2_Byte &HFF
  loc_D4205F: EqI2
  loc_D42060: BranchF loc_D4336C
  loc_D42063: FLdUI1
  loc_D42067: CI2UI1
  loc_D42069: LitI2_Byte 1
  loc_D4206B: EqI2
  loc_D4206C: BranchF loc_D4336C
  loc_D4206F: LitStr "SELECT SUM(ImpoLtde) as ImpoLtde, SUM(DecaLtde) as DecaLtde, SUM(TotaLtde) as TotaLtde "
  loc_D42072: LitStr " FROM litadeta "
  loc_D42075: ConcatStr
  loc_D42076: FStStrNoPop var_190
  loc_D42079: LitStr " USE INDEX (idxlitadeta01)"
  loc_D4207C: ConcatStr
  loc_D4207D: FStStrNoPop var_194
  loc_D42080: LitStr " WHERE PeriLiqu = "
  loc_D42083: ConcatStr
  loc_D42084: FStStrNoPop var_198
  loc_D42087: FLdI2 PeriLiqu
  loc_D4208A: CStrUI1
  loc_D4208C: FStStrNoPop var_19C
  loc_D4208F: ConcatStr
  loc_D42090: FStStrNoPop var_1A0
  loc_D42093: LitStr " AND Bimeliqu = "
  loc_D42096: ConcatStr
  loc_D42097: FStStrNoPop var_1A4
  loc_D4209A: FLdUI1
  loc_D4209E: CStrI2
  loc_D420A0: FStStrNoPop var_1A8
  loc_D420A3: ConcatStr
  loc_D420A4: FStStrNoPop var_1AC
  loc_D420A7: LitStr " AND CodiTili = "
  loc_D420AA: ConcatStr
  loc_D420AB: FStStrNoPop var_1B0
  loc_D420AE: FLdUI1
  loc_D420B2: CStrI2
  loc_D420B4: FStStrNoPop var_1B4
  loc_D420B7: ConcatStr
  loc_D420B8: FStStrNoPop var_1B8
  loc_D420BB: LitStr " AND NumeLiqu = "
  loc_D420BE: ConcatStr
  loc_D420BF: FStStrNoPop var_1BC
  loc_D420C2: FLdUI1
  loc_D420C6: CStrI2
  loc_D420C8: FStStrNoPop var_1C0
  loc_D420CB: ConcatStr
  loc_D420CC: FStStrNoPop var_1C4
  loc_D420CF: LitStr " AND CodiInmu = "
  loc_D420D2: ConcatStr
  loc_D420D3: FStStrNoPop var_684
  loc_D420D6: ILdRf CodiInmu
  loc_D420D9: CStrI4
  loc_D420DB: FStStrNoPop var_808
  loc_D420DE: ConcatStr
  loc_D420DF: FStStrNoPop var_B3C
  loc_D420E2: LitStr " AND CodiConc = '"
  loc_D420E5: ConcatStr
  loc_D420E6: FStStrNoPop var_C10
  loc_D420E9: ILdRf var_88
  loc_D420EC: ConcatStr
  loc_D420ED: FStStrNoPop var_C54
  loc_D420F0: LitStr "'"
  loc_D420F3: ConcatStr
  loc_D420F4: FStStrNoPop var_F98
  loc_D420F7: LitStr " AND TipoVenc = "
  loc_D420FA: ConcatStr
  loc_D420FB: FStStrNoPop var_FDC
  loc_D420FE: FLdUI1
  loc_D42102: CStrI2
  loc_D42104: FStStrNoPop var_FE0
  loc_D42107: ConcatStr
  loc_D42108: FStStrNoPop var_FE4
  loc_D4210B: Call EjecutarRsCls2(from_stack_1v)
  loc_D42110: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = "": var_FDC = "": var_FE0 = ""
  loc_D42141: FLdRfVar var_1C8
  loc_D42144: FLdPr Me
  loc_D42147: MemLdPr global_64
  loc_D4214A:  = Me.RecordCount
  loc_D4214F: ILdRf var_1C8
  loc_D42152: LitI4 0
  loc_D42157: GtI4
  loc_D42158: BranchF loc_D4336C
  loc_D4215B: FLdFPR8 AddNew0
  loc_D4215E: CVarR8
  loc_D42162: HardType
  loc_D42163: FLdRfVar var_1F4
  loc_D42166: FLdRfVar var_1E4
  loc_D42169: LitVarStr var_1E0, "ImpoLtde"
  loc_D4216E: PopAdLdVar
  loc_D4216F: FLdRfVar var_1D0
  loc_D42172: FLdPr Me
  loc_D42175: MemLdPr global_64
  loc_D42178:  = Me.Fields
  loc_D4217D: FLdPr var_1D0
  loc_D42180: from_stack_2 = Me.Item(from_stack_1)
  loc_D42185: FLdPr var_1E4
  loc_D42188:  = Me.Value
  loc_D4218D: FLdRfVar var_1F4
  loc_D42190: NeVarBool
  loc_D42192: FFreeAd var_1D0 = ""
  loc_D42199: FFree1Var var_1F4 = ""
  loc_D4219C: BranchF loc_D42A6F
  loc_D4219F: FLdRfVar var_1F4
  loc_D421A2: FLdRfVar var_1E4
  loc_D421A5: LitVarStr var_1E0, "ImpoLtde"
  loc_D421AA: PopAdLdVar
  loc_D421AB: FLdRfVar var_1D0
  loc_D421AE: FLdPr Me
  loc_D421B1: MemLdPr global_64
  loc_D421B4:  = Me.Fields
  loc_D421B9: FLdPr var_1D0
  loc_D421BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D421C1: FLdPr var_1E4
  loc_D421C4:  = Me.Value
  loc_D421C9: FLdFPR8 AddNew0
  loc_D421CC: FLdRfVar var_1F4
  loc_D421CF: FnCDblVar
  loc_D421D1: GtR4
  loc_D421D2: FFreeAd var_1D0 = ""
  loc_D421D9: FFree1Var var_1F4 = ""
  loc_D421DC: BranchF loc_D425FD
  loc_D421DF: LitStr "SELECT * FROM litadeta WHERE PeriLiqu = "
  loc_D421E2: FLdI2 PeriLiqu
  loc_D421E5: CStrUI1
  loc_D421E7: FStStrNoPop var_190
  loc_D421EA: ConcatStr
  loc_D421EB: FStStrNoPop var_194
  loc_D421EE: LitStr " AND Bimeliqu = "
  loc_D421F1: ConcatStr
  loc_D421F2: FStStrNoPop var_198
  loc_D421F5: FLdUI1
  loc_D421F9: CStrI2
  loc_D421FB: FStStrNoPop var_19C
  loc_D421FE: ConcatStr
  loc_D421FF: FStStrNoPop var_1A0
  loc_D42202: LitStr " AND CodiTili = "
  loc_D42205: ConcatStr
  loc_D42206: FStStrNoPop var_1A4
  loc_D42209: FLdUI1
  loc_D4220D: CStrI2
  loc_D4220F: FStStrNoPop var_1A8
  loc_D42212: ConcatStr
  loc_D42213: FStStrNoPop var_1AC
  loc_D42216: LitStr " AND NumeLiqu = "
  loc_D42219: ConcatStr
  loc_D4221A: FStStrNoPop var_1B0
  loc_D4221D: FLdUI1
  loc_D42221: CStrI2
  loc_D42223: FStStrNoPop var_1B4
  loc_D42226: ConcatStr
  loc_D42227: FStStrNoPop var_1B8
  loc_D4222A: LitStr " AND CodiInmu = "
  loc_D4222D: ConcatStr
  loc_D4222E: FStStrNoPop var_1BC
  loc_D42231: ILdRf CodiInmu
  loc_D42234: CStrI4
  loc_D42236: FStStrNoPop var_1C0
  loc_D42239: ConcatStr
  loc_D4223A: FStStrNoPop var_1C4
  loc_D4223D: LitStr " AND CodiConc = '"
  loc_D42240: ConcatStr
  loc_D42241: FStStrNoPop var_684
  loc_D42244: ILdRf var_88
  loc_D42247: ConcatStr
  loc_D42248: FStStrNoPop var_808
  loc_D4224B: LitStr "'"
  loc_D4224E: ConcatStr
  loc_D4224F: FStStrNoPop var_B3C
  loc_D42252: LitStr " AND TipoVenc = "
  loc_D42255: ConcatStr
  loc_D42256: FStStrNoPop var_C10
  loc_D42259: FLdUI1
  loc_D4225D: CStrI2
  loc_D4225F: FStStrNoPop var_C54
  loc_D42262: ConcatStr
  loc_D42263: FStStrNoPop var_F98
  loc_D42266: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde"
  loc_D42269: ConcatStr
  loc_D4226A: FStStrNoPop var_FDC
  loc_D4226D: Call EjecutarRsCls1(from_stack_1v)
  loc_D42272: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = ""
  loc_D4229F: FLdRfVar var_1C8
  loc_D422A2: FLdPr Me
  loc_D422A5: MemLdPr global_60
  loc_D422A8:  = Me.RecordCount
  loc_D422AD: ILdRf var_1C8
  loc_D422B0: LitI4 0
  loc_D422B5: GtI4
  loc_D422B6: BranchF loc_D425FA
  loc_D422B9: FLdPr Me
  loc_D422BC: MemLdPr global_60
  loc_D422BF: Me.MoveFirst
  loc_D422C4: FLdRfVar var_1F4
  loc_D422C7: FLdRfVar var_1E4
  loc_D422CA: LitVarStr var_1E0, "ImpoLtde"
  loc_D422CF: PopAdLdVar
  loc_D422D0: FLdRfVar var_1D0
  loc_D422D3: FLdPr Me
  loc_D422D6: MemLdPr global_64
  loc_D422D9:  = Me.Fields
  loc_D422DE: FLdPr var_1D0
  loc_D422E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D422E6: FLdPr var_1E4
  loc_D422E9:  = Me.Value
  loc_D422EE: LitStr " UPDATE litadeta SET ImpoLtde = ImpoLtde + "
  loc_D422F1: LitI4 0
  loc_D422F6: LitI4 -1
  loc_D422FB: LitI4 1
  loc_D42300: LitStr "."
  loc_D42303: LitStr ","
  loc_D42306: FLdFPR8 AddNew0
  loc_D42309: FLdRfVar var_1F4
  loc_D4230C: FnCDblVar
  loc_D4230E: SubR4
  loc_D4230F: CStrR8
  loc_D42311: FStStrNoPop var_190
  loc_D42314: ImpAdCallI2 Replace(, , , , , )
  loc_D42319: FStStrNoPop var_194
  loc_D4231C: ConcatStr
  loc_D4231D: FStStrNoPop var_198
  loc_D42320: LitStr ", TotaLtde = ImpoLtde - DecaLtde"
  loc_D42323: ConcatStr
  loc_D42324: FStStrNoPop var_19C
  loc_D42327: LitStr " WHERE PeriLiqu = "
  loc_D4232A: ConcatStr
  loc_D4232B: CVarStr var_224
  loc_D4232E: FLdRfVar var_214
  loc_D42331: FLdRfVar var_26C
  loc_D42334: LitVarStr var_204, "PeriLiqu"
  loc_D42339: PopAdLdVar
  loc_D4233A: FLdRfVar var_258
  loc_D4233D: FLdPr Me
  loc_D42340: MemLdPr global_60
  loc_D42343:  = Me.Fields
  loc_D42348: FLdPr var_258
  loc_D4234B: from_stack_2 = Me.Item(from_stack_1)
  loc_D42350: FLdPr var_26C
  loc_D42353:  = Me.Value
  loc_D42358: FLdRfVar var_214
  loc_D4235B: ConcatVar var_234
  loc_D4235F: LitVarStr var_244, " AND Bimeliqu = "
  loc_D42364: ConcatVar var_254
  loc_D42368: FLdRfVar var_27C
  loc_D4236B: FLdRfVar var_2C4
  loc_D4236E: LitVarStr var_268, "BimeLiqu"
  loc_D42373: PopAdLdVar
  loc_D42374: FLdRfVar var_2B0
  loc_D42377: FLdPr Me
  loc_D4237A: MemLdPr global_60
  loc_D4237D:  = Me.Fields
  loc_D42382: FLdPr var_2B0
  loc_D42385: from_stack_2 = Me.Item(from_stack_1)
  loc_D4238A: FLdPr var_2C4
  loc_D4238D:  = Me.Value
  loc_D42392: FLdRfVar var_27C
  loc_D42395: ConcatVar var_28C
  loc_D42399: LitVarStr var_29C, " AND CodiTili = "
  loc_D4239E: ConcatVar var_2AC
  loc_D423A2: FLdRfVar var_2D4
  loc_D423A5: FLdRfVar var_31C
  loc_D423A8: LitVarStr var_2C0, "CodiTili"
  loc_D423AD: PopAdLdVar
  loc_D423AE: FLdRfVar var_308
  loc_D423B1: FLdPr Me
  loc_D423B4: MemLdPr global_60
  loc_D423B7:  = Me.Fields
  loc_D423BC: FLdPr var_308
  loc_D423BF: from_stack_2 = Me.Item(from_stack_1)
  loc_D423C4: FLdPr var_31C
  loc_D423C7:  = Me.Value
  loc_D423CC: FLdRfVar var_2D4
  loc_D423CF: ConcatVar var_2E4
  loc_D423D3: LitVarStr var_2F4, " AND NumeLiqu = "
  loc_D423D8: ConcatVar var_304
  loc_D423DC: FLdRfVar var_32C
  loc_D423DF: FLdRfVar var_374
  loc_D423E2: LitVarStr var_318, "NumeLiqu"
  loc_D423E7: PopAdLdVar
  loc_D423E8: FLdRfVar var_360
  loc_D423EB: FLdPr Me
  loc_D423EE: MemLdPr global_60
  loc_D423F1:  = Me.Fields
  loc_D423F6: FLdPr var_360
  loc_D423F9: from_stack_2 = Me.Item(from_stack_1)
  loc_D423FE: FLdPr var_374
  loc_D42401:  = Me.Value
  loc_D42406: FLdRfVar var_32C
  loc_D42409: ConcatVar var_33C
  loc_D4240D: LitVarStr var_34C, " AND CodiInmu = "
  loc_D42412: ConcatVar var_35C
  loc_D42416: FLdRfVar var_384
  loc_D42419: FLdRfVar var_470
  loc_D4241C: LitVarStr var_370, "CodiInmu"
  loc_D42421: PopAdLdVar
  loc_D42422: FLdRfVar var_45C
  loc_D42425: FLdPr Me
  loc_D42428: MemLdPr global_60
  loc_D4242B:  = Me.Fields
  loc_D42430: FLdPr var_45C
  loc_D42433: from_stack_2 = Me.Item(from_stack_1)
  loc_D42438: FLdPr var_470
  loc_D4243B:  = Me.Value
  loc_D42440: FLdRfVar var_384
  loc_D42443: ConcatVar var_394
  loc_D42447: LitVarStr var_3A4, " AND CodiConc = '"
  loc_D4244C: ConcatVar var_3B4
  loc_D42450: FLdRfVar var_3D4
  loc_D42453: FLdRfVar var_10A0
  loc_D42456: LitVarStr var_3C4, "CodiConc"
  loc_D4245B: PopAdLdVar
  loc_D4245C: FLdRfVar var_109C
  loc_D4245F: FLdPr Me
  loc_D42462: MemLdPr global_60
  loc_D42465:  = Me.Fields
  loc_D4246A: FLdPr var_109C
  loc_D4246D: from_stack_2 = Me.Item(from_stack_1)
  loc_D42472: FLdPr var_10A0
  loc_D42475:  = Me.Value
  loc_D4247A: FLdRfVar var_3D4
  loc_D4247D: ConcatVar var_3F4
  loc_D42481: LitVarStr var_3E4, "'"
  loc_D42486: ConcatVar var_418
  loc_D4248A: LitVarStr var_408, " AND TipoVenc = "
  loc_D4248F: ConcatVar var_438
  loc_D42493: FLdRfVar var_458
  loc_D42496: FLdRfVar var_10A8
  loc_D42499: LitVarStr var_428, "TipoVenc"
  loc_D4249E: PopAdLdVar
  loc_D4249F: FLdRfVar var_10A4
  loc_D424A2: FLdPr Me
  loc_D424A5: MemLdPr global_60
  loc_D424A8:  = Me.Fields
  loc_D424AD: FLdPr var_10A4
  loc_D424B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D424B5: FLdPr var_10A8
  loc_D424B8:  = Me.Value
  loc_D424BD: FLdRfVar var_458
  loc_D424C0: ConcatVar var_480
  loc_D424C4: LitVarStr var_448, " AND PeriOrde = "
  loc_D424C9: ConcatVar var_490
  loc_D424CD: FLdRfVar var_4B0
  loc_D424D0: FLdRfVar var_10B0
  loc_D424D3: LitVarStr var_46C, "PeriOrde"
  loc_D424D8: PopAdLdVar
  loc_D424D9: FLdRfVar var_10AC
  loc_D424DC: FLdPr Me
  loc_D424DF: MemLdPr global_60
  loc_D424E2:  = Me.Fields
  loc_D424E7: FLdPr var_10AC
  loc_D424EA: from_stack_2 = Me.Item(from_stack_1)
  loc_D424EF: FLdPr var_10B0
  loc_D424F2:  = Me.Value
  loc_D424F7: FLdRfVar var_4B0
  loc_D424FA: ConcatVar var_4D0
  loc_D424FE: LitVarStr var_4A0, " AND CodiSeca = "
  loc_D42503: ConcatVar var_4F0
  loc_D42507: FLdRfVar var_500
  loc_D4250A: FLdRfVar var_10B8
  loc_D4250D: LitVarStr var_4C0, "CodiSeca"
  loc_D42512: PopAdLdVar
  loc_D42513: FLdRfVar var_10B4
  loc_D42516: FLdPr Me
  loc_D42519: MemLdPr global_60
  loc_D4251C:  = Me.Fields
  loc_D42521: FLdPr var_10B4
  loc_D42524: from_stack_2 = Me.Item(from_stack_1)
  loc_D42529: FLdPr var_10B8
  loc_D4252C:  = Me.Value
  loc_D42531: FLdRfVar var_500
  loc_D42534: ConcatVar var_510
  loc_D42538: LitVarStr var_4E0, " AND NumeLtde = "
  loc_D4253D: ConcatVar var_530
  loc_D42541: FLdRfVar var_540
  loc_D42544: FLdRfVar var_10C0
  loc_D42547: LitVarStr var_520, "NumeLtde"
  loc_D4254C: PopAdLdVar
  loc_D4254D: FLdRfVar var_10BC
  loc_D42550: FLdPr Me
  loc_D42553: MemLdPr global_60
  loc_D42556:  = Me.Fields
  loc_D4255B: FLdPr var_10BC
  loc_D4255E: from_stack_2 = Me.Item(from_stack_1)
  loc_D42563: FLdPr var_10C0
  loc_D42566:  = Me.Value
  loc_D4256B: FLdRfVar var_540
  loc_D4256E: ConcatVar var_550
  loc_D42572: CStrVarVal var_1A0
  loc_D42576: Call EjecutarRsCls(from_stack_1v)
  loc_D4257B: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_D42588: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = "": var_374 = "": var_45C = "": var_470 = "": var_109C = "": var_10A0 = "": var_10A4 = "": var_10A8 = "": var_10AC = "": var_10B0 = "": var_10B4 = "": var_10B8 = "": var_10BC = ""
  loc_D425B7: FFreeVar var_540 = "": var_550 = "": var_1F4 = "": var_224 = "": var_214 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D425FA: Branch loc_D42A6F
  loc_D425FD: FLdRfVar var_1F4
  loc_D42600: FLdRfVar var_1E4
  loc_D42603: LitVarStr var_1E0, "ImpoLtde"
  loc_D42608: PopAdLdVar
  loc_D42609: FLdRfVar var_1D0
  loc_D4260C: FLdPr Me
  loc_D4260F: MemLdPr global_64
  loc_D42612:  = Me.Fields
  loc_D42617: FLdPr var_1D0
  loc_D4261A: from_stack_2 = Me.Item(from_stack_1)
  loc_D4261F: FLdPr var_1E4
  loc_D42622:  = Me.Value
  loc_D42627: FLdFPR8 AddNew0
  loc_D4262A: FLdRfVar var_1F4
  loc_D4262D: FnCDblVar
  loc_D4262F: LtR8
  loc_D42630: FFreeAd var_1D0 = ""
  loc_D42637: FFree1Var var_1F4 = ""
  loc_D4263A: BranchF loc_D42A6F
  loc_D4263D: LitStr "SELECT * FROM litadeta WHERE PeriLiqu = "
  loc_D42640: FLdI2 PeriLiqu
  loc_D42643: CStrUI1
  loc_D42645: FStStrNoPop var_190
  loc_D42648: ConcatStr
  loc_D42649: FStStrNoPop var_194
  loc_D4264C: LitStr " AND Bimeliqu = "
  loc_D4264F: ConcatStr
  loc_D42650: FStStrNoPop var_198
  loc_D42653: FLdUI1
  loc_D42657: CStrI2
  loc_D42659: FStStrNoPop var_19C
  loc_D4265C: ConcatStr
  loc_D4265D: FStStrNoPop var_1A0
  loc_D42660: LitStr " AND CodiTili = "
  loc_D42663: ConcatStr
  loc_D42664: FStStrNoPop var_1A4
  loc_D42667: FLdUI1
  loc_D4266B: CStrI2
  loc_D4266D: FStStrNoPop var_1A8
  loc_D42670: ConcatStr
  loc_D42671: FStStrNoPop var_1AC
  loc_D42674: LitStr " AND NumeLiqu = "
  loc_D42677: ConcatStr
  loc_D42678: FStStrNoPop var_1B0
  loc_D4267B: FLdUI1
  loc_D4267F: CStrI2
  loc_D42681: FStStrNoPop var_1B4
  loc_D42684: ConcatStr
  loc_D42685: FStStrNoPop var_1B8
  loc_D42688: LitStr " AND CodiInmu = "
  loc_D4268B: ConcatStr
  loc_D4268C: FStStrNoPop var_1BC
  loc_D4268F: ILdRf CodiInmu
  loc_D42692: CStrI4
  loc_D42694: FStStrNoPop var_1C0
  loc_D42697: ConcatStr
  loc_D42698: FStStrNoPop var_1C4
  loc_D4269B: LitStr " AND CodiConc = '"
  loc_D4269E: ConcatStr
  loc_D4269F: FStStrNoPop var_684
  loc_D426A2: ILdRf var_88
  loc_D426A5: ConcatStr
  loc_D426A6: FStStrNoPop var_808
  loc_D426A9: LitStr "'"
  loc_D426AC: ConcatStr
  loc_D426AD: FStStrNoPop var_B3C
  loc_D426B0: LitStr " AND TipoVenc = "
  loc_D426B3: ConcatStr
  loc_D426B4: FStStrNoPop var_C10
  loc_D426B7: FLdUI1
  loc_D426BB: CStrI2
  loc_D426BD: FStStrNoPop var_C54
  loc_D426C0: ConcatStr
  loc_D426C1: FStStrNoPop var_F98
  loc_D426C4: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde"
  loc_D426C7: ConcatStr
  loc_D426C8: FStStrNoPop var_FDC
  loc_D426CB: Call EjecutarRsCls1(from_stack_1v)
  loc_D426D0: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = ""
  loc_D426FD: FLdRfVar var_1C8
  loc_D42700: FLdPr Me
  loc_D42703: MemLdPr global_60
  loc_D42706:  = Me.RecordCount
  loc_D4270B: ILdRf var_1C8
  loc_D4270E: LitI4 0
  loc_D42713: GtI4
  loc_D42714: BranchF loc_D42A6F
  loc_D42717: FLdPr Me
  loc_D4271A: MemLdPr global_60
  loc_D4271D: Me.MoveFirst
  loc_D42722: FLdRfVar var_1F4
  loc_D42725: FLdRfVar var_1E4
  loc_D42728: LitVarStr var_1E0, "ImpoLtde"
  loc_D4272D: PopAdLdVar
  loc_D4272E: FLdRfVar var_1D0
  loc_D42731: FLdPr Me
  loc_D42734: MemLdPr global_64
  loc_D42737:  = Me.Fields
  loc_D4273C: FLdPr var_1D0
  loc_D4273F: from_stack_2 = Me.Item(from_stack_1)
  loc_D42744: FLdPr var_1E4
  loc_D42747:  = Me.Value
  loc_D4274C: LitI4 2
  loc_D42751: FLdRfVar var_1F4
  loc_D42754: FnCDblVar
  loc_D42756: FLdFPR8 AddNew0
  loc_D42759: SubR4
  loc_D4275A: CVarR8
  loc_D4275E: FLdRfVar var_224
  loc_D42761: ImpAdCallFPR4  = Round(, )
  loc_D42766: LitStr " UPDATE litadeta SET ImpoLtde = ImpoLtde - "
  loc_D42769: LitI4 0
  loc_D4276E: LitI4 -1
  loc_D42773: LitI4 1
  loc_D42778: LitStr "."
  loc_D4277B: LitStr ","
  loc_D4277E: FLdRfVar var_224
  loc_D42781: CStrVarVal var_190
  loc_D42785: ImpAdCallI2 Replace(, , , , , )
  loc_D4278A: FStStrNoPop var_194
  loc_D4278D: ConcatStr
  loc_D4278E: FStStrNoPop var_198
  loc_D42791: LitStr ", TotaLtde = ImpoLtde - DecaLtde"
  loc_D42794: ConcatStr
  loc_D42795: FStStrNoPop var_19C
  loc_D42798: LitStr " WHERE PeriLiqu = "
  loc_D4279B: ConcatStr
  loc_D4279C: CVarStr var_254
  loc_D4279F: FLdRfVar var_234
  loc_D427A2: FLdRfVar var_26C
  loc_D427A5: LitVarStr var_244, "PeriLiqu"
  loc_D427AA: PopAdLdVar
  loc_D427AB: FLdRfVar var_258
  loc_D427AE: FLdPr Me
  loc_D427B1: MemLdPr global_60
  loc_D427B4:  = Me.Fields
  loc_D427B9: FLdPr var_258
  loc_D427BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D427C1: FLdPr var_26C
  loc_D427C4:  = Me.Value
  loc_D427C9: FLdRfVar var_234
  loc_D427CC: ConcatVar var_27C
  loc_D427D0: LitVarStr var_268, " AND Bimeliqu = "
  loc_D427D5: ConcatVar var_28C
  loc_D427D9: FLdRfVar var_2AC
  loc_D427DC: FLdRfVar var_2C4
  loc_D427DF: LitVarStr var_29C, "BimeLiqu"
  loc_D427E4: PopAdLdVar
  loc_D427E5: FLdRfVar var_2B0
  loc_D427E8: FLdPr Me
  loc_D427EB: MemLdPr global_60
  loc_D427EE:  = Me.Fields
  loc_D427F3: FLdPr var_2B0
  loc_D427F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D427FB: FLdPr var_2C4
  loc_D427FE:  = Me.Value
  loc_D42803: FLdRfVar var_2AC
  loc_D42806: ConcatVar var_2D4
  loc_D4280A: LitVarStr var_2C0, " AND CodiTili = "
  loc_D4280F: ConcatVar var_2E4
  loc_D42813: FLdRfVar var_304
  loc_D42816: FLdRfVar var_31C
  loc_D42819: LitVarStr var_2F4, "CodiTili"
  loc_D4281E: PopAdLdVar
  loc_D4281F: FLdRfVar var_308
  loc_D42822: FLdPr Me
  loc_D42825: MemLdPr global_60
  loc_D42828:  = Me.Fields
  loc_D4282D: FLdPr var_308
  loc_D42830: from_stack_2 = Me.Item(from_stack_1)
  loc_D42835: FLdPr var_31C
  loc_D42838:  = Me.Value
  loc_D4283D: FLdRfVar var_304
  loc_D42840: ConcatVar var_32C
  loc_D42844: LitVarStr var_318, " AND NumeLiqu = "
  loc_D42849: ConcatVar var_33C
  loc_D4284D: FLdRfVar var_35C
  loc_D42850: FLdRfVar var_374
  loc_D42853: LitVarStr var_34C, "NumeLiqu"
  loc_D42858: PopAdLdVar
  loc_D42859: FLdRfVar var_360
  loc_D4285C: FLdPr Me
  loc_D4285F: MemLdPr global_60
  loc_D42862:  = Me.Fields
  loc_D42867: FLdPr var_360
  loc_D4286A: from_stack_2 = Me.Item(from_stack_1)
  loc_D4286F: FLdPr var_374
  loc_D42872:  = Me.Value
  loc_D42877: FLdRfVar var_35C
  loc_D4287A: ConcatVar var_384
  loc_D4287E: LitVarStr var_370, " AND CodiInmu = "
  loc_D42883: ConcatVar var_394
  loc_D42887: FLdRfVar var_3B4
  loc_D4288A: FLdRfVar var_470
  loc_D4288D: LitVarStr var_3A4, "CodiInmu"
  loc_D42892: PopAdLdVar
  loc_D42893: FLdRfVar var_45C
  loc_D42896: FLdPr Me
  loc_D42899: MemLdPr global_60
  loc_D4289C:  = Me.Fields
  loc_D428A1: FLdPr var_45C
  loc_D428A4: from_stack_2 = Me.Item(from_stack_1)
  loc_D428A9: FLdPr var_470
  loc_D428AC:  = Me.Value
  loc_D428B1: FLdRfVar var_3B4
  loc_D428B4: ConcatVar var_3D4
  loc_D428B8: LitVarStr var_3C4, " AND CodiConc = '"
  loc_D428BD: ConcatVar var_3F4
  loc_D428C1: FLdRfVar var_418
  loc_D428C4: FLdRfVar var_10A0
  loc_D428C7: LitVarStr var_3E4, "CodiConc"
  loc_D428CC: PopAdLdVar
  loc_D428CD: FLdRfVar var_109C
  loc_D428D0: FLdPr Me
  loc_D428D3: MemLdPr global_60
  loc_D428D6:  = Me.Fields
  loc_D428DB: FLdPr var_109C
  loc_D428DE: from_stack_2 = Me.Item(from_stack_1)
  loc_D428E3: FLdPr var_10A0
  loc_D428E6:  = Me.Value
  loc_D428EB: FLdRfVar var_418
  loc_D428EE: ConcatVar var_438
  loc_D428F2: LitVarStr var_408, "'"
  loc_D428F7: ConcatVar var_458
  loc_D428FB: LitVarStr var_428, " AND TipoVenc = "
  loc_D42900: ConcatVar var_480
  loc_D42904: FLdRfVar var_490
  loc_D42907: FLdRfVar var_10A8
  loc_D4290A: LitVarStr var_448, "TipoVenc"
  loc_D4290F: PopAdLdVar
  loc_D42910: FLdRfVar var_10A4
  loc_D42913: FLdPr Me
  loc_D42916: MemLdPr global_60
  loc_D42919:  = Me.Fields
  loc_D4291E: FLdPr var_10A4
  loc_D42921: from_stack_2 = Me.Item(from_stack_1)
  loc_D42926: FLdPr var_10A8
  loc_D42929:  = Me.Value
  loc_D4292E: FLdRfVar var_490
  loc_D42931: ConcatVar var_4B0
  loc_D42935: LitVarStr var_46C, " AND PeriOrde = "
  loc_D4293A: ConcatVar var_4D0
  loc_D4293E: FLdRfVar var_4F0
  loc_D42941: FLdRfVar var_10B0
  loc_D42944: LitVarStr var_4A0, "PeriOrde"
  loc_D42949: PopAdLdVar
  loc_D4294A: FLdRfVar var_10AC
  loc_D4294D: FLdPr Me
  loc_D42950: MemLdPr global_60
  loc_D42953:  = Me.Fields
  loc_D42958: FLdPr var_10AC
  loc_D4295B: from_stack_2 = Me.Item(from_stack_1)
  loc_D42960: FLdPr var_10B0
  loc_D42963:  = Me.Value
  loc_D42968: FLdRfVar var_4F0
  loc_D4296B: ConcatVar var_500
  loc_D4296F: LitVarStr var_4C0, " AND CodiSeca = "
  loc_D42974: ConcatVar var_510
  loc_D42978: FLdRfVar var_530
  loc_D4297B: FLdRfVar var_10B8
  loc_D4297E: LitVarStr var_4E0, "CodiSeca"
  loc_D42983: PopAdLdVar
  loc_D42984: FLdRfVar var_10B4
  loc_D42987: FLdPr Me
  loc_D4298A: MemLdPr global_60
  loc_D4298D:  = Me.Fields
  loc_D42992: FLdPr var_10B4
  loc_D42995: from_stack_2 = Me.Item(from_stack_1)
  loc_D4299A: FLdPr var_10B8
  loc_D4299D:  = Me.Value
  loc_D429A2: FLdRfVar var_530
  loc_D429A5: ConcatVar var_540
  loc_D429A9: LitVarStr var_520, " AND NumeLtde = "
  loc_D429AE: ConcatVar var_550
  loc_D429B2: FLdRfVar var_570
  loc_D429B5: FLdRfVar var_10C0
  loc_D429B8: LitVarStr var_560, "NumeLtde"
  loc_D429BD: PopAdLdVar
  loc_D429BE: FLdRfVar var_10BC
  loc_D429C1: FLdPr Me
  loc_D429C4: MemLdPr global_60
  loc_D429C7:  = Me.Fields
  loc_D429CC: FLdPr var_10BC
  loc_D429CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D429D4: FLdPr var_10C0
  loc_D429D7:  = Me.Value
  loc_D429DC: FLdRfVar var_570
  loc_D429DF: ConcatVar var_580
  loc_D429E3: CStrVarVal var_1A0
  loc_D429E7: Call EjecutarRsCls(from_stack_1v)
  loc_D429EC: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_D429F9: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = "": var_374 = "": var_45C = "": var_470 = "": var_109C = "": var_10A0 = "": var_10A4 = "": var_10A8 = "": var_10AC = "": var_10B0 = "": var_10B4 = "": var_10B8 = "": var_10BC = ""
  loc_D42A28: FFreeVar var_540 = "": var_550 = "": var_570 = "": var_580 = "": var_1F4 = "": var_214 = "": var_224 = "": var_254 = "": var_234 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D42A6F: FLdFPR8 arg_58
  loc_D42A72: CVarR8
  loc_D42A76: HardType
  loc_D42A77: FLdRfVar var_1F4
  loc_D42A7A: FLdRfVar var_1E4
  loc_D42A7D: LitVarStr var_1E0, "DecaLtde"
  loc_D42A82: PopAdLdVar
  loc_D42A83: FLdRfVar var_1D0
  loc_D42A86: FLdPr Me
  loc_D42A89: MemLdPr global_64
  loc_D42A8C:  = Me.Fields
  loc_D42A91: FLdPr var_1D0
  loc_D42A94: from_stack_2 = Me.Item(from_stack_1)
  loc_D42A99: FLdPr var_1E4
  loc_D42A9C:  = Me.Value
  loc_D42AA1: FLdRfVar var_1F4
  loc_D42AA4: NeVarBool
  loc_D42AA6: FFreeAd var_1D0 = ""
  loc_D42AAD: FFree1Var var_1F4 = ""
  loc_D42AB0: BranchF loc_D4336C
  loc_D42AB3: FLdRfVar var_1F4
  loc_D42AB6: FLdRfVar var_1E4
  loc_D42AB9: LitVarStr var_1E0, "DecaLtde"
  loc_D42ABE: PopAdLdVar
  loc_D42ABF: FLdRfVar var_1D0
  loc_D42AC2: FLdPr Me
  loc_D42AC5: MemLdPr global_64
  loc_D42AC8:  = Me.Fields
  loc_D42ACD: FLdPr var_1D0
  loc_D42AD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D42AD5: FLdPr var_1E4
  loc_D42AD8:  = Me.Value
  loc_D42ADD: FLdFPR8 arg_58
  loc_D42AE0: FLdRfVar var_1F4
  loc_D42AE3: FnCDblVar
  loc_D42AE5: GtR4
  loc_D42AE6: FFreeAd var_1D0 = ""
  loc_D42AED: FFree1Var var_1F4 = ""
  loc_D42AF0: BranchF loc_D42F11
  loc_D42AF3: LitStr "SELECT * FROM litadeta WHERE PeriLiqu = "
  loc_D42AF6: FLdI2 PeriLiqu
  loc_D42AF9: CStrUI1
  loc_D42AFB: FStStrNoPop var_190
  loc_D42AFE: ConcatStr
  loc_D42AFF: FStStrNoPop var_194
  loc_D42B02: LitStr " AND Bimeliqu = "
  loc_D42B05: ConcatStr
  loc_D42B06: FStStrNoPop var_198
  loc_D42B09: FLdUI1
  loc_D42B0D: CStrI2
  loc_D42B0F: FStStrNoPop var_19C
  loc_D42B12: ConcatStr
  loc_D42B13: FStStrNoPop var_1A0
  loc_D42B16: LitStr " AND CodiTili = "
  loc_D42B19: ConcatStr
  loc_D42B1A: FStStrNoPop var_1A4
  loc_D42B1D: FLdUI1
  loc_D42B21: CStrI2
  loc_D42B23: FStStrNoPop var_1A8
  loc_D42B26: ConcatStr
  loc_D42B27: FStStrNoPop var_1AC
  loc_D42B2A: LitStr " AND NumeLiqu = "
  loc_D42B2D: ConcatStr
  loc_D42B2E: FStStrNoPop var_1B0
  loc_D42B31: FLdUI1
  loc_D42B35: CStrI2
  loc_D42B37: FStStrNoPop var_1B4
  loc_D42B3A: ConcatStr
  loc_D42B3B: FStStrNoPop var_1B8
  loc_D42B3E: LitStr " AND CodiInmu = "
  loc_D42B41: ConcatStr
  loc_D42B42: FStStrNoPop var_1BC
  loc_D42B45: ILdRf CodiInmu
  loc_D42B48: CStrI4
  loc_D42B4A: FStStrNoPop var_1C0
  loc_D42B4D: ConcatStr
  loc_D42B4E: FStStrNoPop var_1C4
  loc_D42B51: LitStr " AND CodiConc = '"
  loc_D42B54: ConcatStr
  loc_D42B55: FStStrNoPop var_684
  loc_D42B58: ILdRf var_88
  loc_D42B5B: ConcatStr
  loc_D42B5C: FStStrNoPop var_808
  loc_D42B5F: LitStr "'"
  loc_D42B62: ConcatStr
  loc_D42B63: FStStrNoPop var_B3C
  loc_D42B66: LitStr " AND TipoVenc = "
  loc_D42B69: ConcatStr
  loc_D42B6A: FStStrNoPop var_C10
  loc_D42B6D: FLdUI1
  loc_D42B71: CStrI2
  loc_D42B73: FStStrNoPop var_C54
  loc_D42B76: ConcatStr
  loc_D42B77: FStStrNoPop var_F98
  loc_D42B7A: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde"
  loc_D42B7D: ConcatStr
  loc_D42B7E: FStStrNoPop var_FDC
  loc_D42B81: Call EjecutarRsCls1(from_stack_1v)
  loc_D42B86: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = ""
  loc_D42BB3: FLdRfVar var_1C8
  loc_D42BB6: FLdPr Me
  loc_D42BB9: MemLdPr global_60
  loc_D42BBC:  = Me.RecordCount
  loc_D42BC1: ILdRf var_1C8
  loc_D42BC4: LitI4 0
  loc_D42BC9: GtI4
  loc_D42BCA: BranchF loc_D42F0E
  loc_D42BCD: FLdPr Me
  loc_D42BD0: MemLdPr global_60
  loc_D42BD3: Me.MoveFirst
  loc_D42BD8: FLdRfVar var_1F4
  loc_D42BDB: FLdRfVar var_1E4
  loc_D42BDE: LitVarStr var_1E0, "DecaLtde"
  loc_D42BE3: PopAdLdVar
  loc_D42BE4: FLdRfVar var_1D0
  loc_D42BE7: FLdPr Me
  loc_D42BEA: MemLdPr global_64
  loc_D42BED:  = Me.Fields
  loc_D42BF2: FLdPr var_1D0
  loc_D42BF5: from_stack_2 = Me.Item(from_stack_1)
  loc_D42BFA: FLdPr var_1E4
  loc_D42BFD:  = Me.Value
  loc_D42C02: LitStr " UPDATE litadeta SET DecaLtde = DecaLtde + "
  loc_D42C05: LitI4 0
  loc_D42C0A: LitI4 -1
  loc_D42C0F: LitI4 1
  loc_D42C14: LitStr "."
  loc_D42C17: LitStr ","
  loc_D42C1A: FLdFPR8 arg_58
  loc_D42C1D: FLdRfVar var_1F4
  loc_D42C20: FnCDblVar
  loc_D42C22: SubR4
  loc_D42C23: CStrR8
  loc_D42C25: FStStrNoPop var_190
  loc_D42C28: ImpAdCallI2 Replace(, , , , , )
  loc_D42C2D: FStStrNoPop var_194
  loc_D42C30: ConcatStr
  loc_D42C31: FStStrNoPop var_198
  loc_D42C34: LitStr ", TotaLtde = ImpoLtde - DecaLtde "
  loc_D42C37: ConcatStr
  loc_D42C38: FStStrNoPop var_19C
  loc_D42C3B: LitStr " WHERE PeriLiqu = "
  loc_D42C3E: ConcatStr
  loc_D42C3F: CVarStr var_224
  loc_D42C42: FLdRfVar var_214
  loc_D42C45: FLdRfVar var_26C
  loc_D42C48: LitVarStr var_204, "PeriLiqu"
  loc_D42C4D: PopAdLdVar
  loc_D42C4E: FLdRfVar var_258
  loc_D42C51: FLdPr Me
  loc_D42C54: MemLdPr global_60
  loc_D42C57:  = Me.Fields
  loc_D42C5C: FLdPr var_258
  loc_D42C5F: from_stack_2 = Me.Item(from_stack_1)
  loc_D42C64: FLdPr var_26C
  loc_D42C67:  = Me.Value
  loc_D42C6C: FLdRfVar var_214
  loc_D42C6F: ConcatVar var_234
  loc_D42C73: LitVarStr var_244, " AND Bimeliqu = "
  loc_D42C78: ConcatVar var_254
  loc_D42C7C: FLdRfVar var_27C
  loc_D42C7F: FLdRfVar var_2C4
  loc_D42C82: LitVarStr var_268, "BimeLiqu"
  loc_D42C87: PopAdLdVar
  loc_D42C88: FLdRfVar var_2B0
  loc_D42C8B: FLdPr Me
  loc_D42C8E: MemLdPr global_60
  loc_D42C91:  = Me.Fields
  loc_D42C96: FLdPr var_2B0
  loc_D42C99: from_stack_2 = Me.Item(from_stack_1)
  loc_D42C9E: FLdPr var_2C4
  loc_D42CA1:  = Me.Value
  loc_D42CA6: FLdRfVar var_27C
  loc_D42CA9: ConcatVar var_28C
  loc_D42CAD: LitVarStr var_29C, " AND CodiTili = "
  loc_D42CB2: ConcatVar var_2AC
  loc_D42CB6: FLdRfVar var_2D4
  loc_D42CB9: FLdRfVar var_31C
  loc_D42CBC: LitVarStr var_2C0, "CodiTili"
  loc_D42CC1: PopAdLdVar
  loc_D42CC2: FLdRfVar var_308
  loc_D42CC5: FLdPr Me
  loc_D42CC8: MemLdPr global_60
  loc_D42CCB:  = Me.Fields
  loc_D42CD0: FLdPr var_308
  loc_D42CD3: from_stack_2 = Me.Item(from_stack_1)
  loc_D42CD8: FLdPr var_31C
  loc_D42CDB:  = Me.Value
  loc_D42CE0: FLdRfVar var_2D4
  loc_D42CE3: ConcatVar var_2E4
  loc_D42CE7: LitVarStr var_2F4, " AND NumeLiqu = "
  loc_D42CEC: ConcatVar var_304
  loc_D42CF0: FLdRfVar var_32C
  loc_D42CF3: FLdRfVar var_374
  loc_D42CF6: LitVarStr var_318, "NumeLiqu"
  loc_D42CFB: PopAdLdVar
  loc_D42CFC: FLdRfVar var_360
  loc_D42CFF: FLdPr Me
  loc_D42D02: MemLdPr global_60
  loc_D42D05:  = Me.Fields
  loc_D42D0A: FLdPr var_360
  loc_D42D0D: from_stack_2 = Me.Item(from_stack_1)
  loc_D42D12: FLdPr var_374
  loc_D42D15:  = Me.Value
  loc_D42D1A: FLdRfVar var_32C
  loc_D42D1D: ConcatVar var_33C
  loc_D42D21: LitVarStr var_34C, " AND CodiInmu = "
  loc_D42D26: ConcatVar var_35C
  loc_D42D2A: FLdRfVar var_384
  loc_D42D2D: FLdRfVar var_470
  loc_D42D30: LitVarStr var_370, "CodiInmu"
  loc_D42D35: PopAdLdVar
  loc_D42D36: FLdRfVar var_45C
  loc_D42D39: FLdPr Me
  loc_D42D3C: MemLdPr global_60
  loc_D42D3F:  = Me.Fields
  loc_D42D44: FLdPr var_45C
  loc_D42D47: from_stack_2 = Me.Item(from_stack_1)
  loc_D42D4C: FLdPr var_470
  loc_D42D4F:  = Me.Value
  loc_D42D54: FLdRfVar var_384
  loc_D42D57: ConcatVar var_394
  loc_D42D5B: LitVarStr var_3A4, " AND CodiConc = '"
  loc_D42D60: ConcatVar var_3B4
  loc_D42D64: FLdRfVar var_3D4
  loc_D42D67: FLdRfVar var_10A0
  loc_D42D6A: LitVarStr var_3C4, "CodiConc"
  loc_D42D6F: PopAdLdVar
  loc_D42D70: FLdRfVar var_109C
  loc_D42D73: FLdPr Me
  loc_D42D76: MemLdPr global_60
  loc_D42D79:  = Me.Fields
  loc_D42D7E: FLdPr var_109C
  loc_D42D81: from_stack_2 = Me.Item(from_stack_1)
  loc_D42D86: FLdPr var_10A0
  loc_D42D89:  = Me.Value
  loc_D42D8E: FLdRfVar var_3D4
  loc_D42D91: ConcatVar var_3F4
  loc_D42D95: LitVarStr var_3E4, "'"
  loc_D42D9A: ConcatVar var_418
  loc_D42D9E: LitVarStr var_408, " AND TipoVenc = "
  loc_D42DA3: ConcatVar var_438
  loc_D42DA7: FLdRfVar var_458
  loc_D42DAA: FLdRfVar var_10A8
  loc_D42DAD: LitVarStr var_428, "TipoVenc"
  loc_D42DB2: PopAdLdVar
  loc_D42DB3: FLdRfVar var_10A4
  loc_D42DB6: FLdPr Me
  loc_D42DB9: MemLdPr global_60
  loc_D42DBC:  = Me.Fields
  loc_D42DC1: FLdPr var_10A4
  loc_D42DC4: from_stack_2 = Me.Item(from_stack_1)
  loc_D42DC9: FLdPr var_10A8
  loc_D42DCC:  = Me.Value
  loc_D42DD1: FLdRfVar var_458
  loc_D42DD4: ConcatVar var_480
  loc_D42DD8: LitVarStr var_448, " AND PeriOrde = "
  loc_D42DDD: ConcatVar var_490
  loc_D42DE1: FLdRfVar var_4B0
  loc_D42DE4: FLdRfVar var_10B0
  loc_D42DE7: LitVarStr var_46C, "PeriOrde"
  loc_D42DEC: PopAdLdVar
  loc_D42DED: FLdRfVar var_10AC
  loc_D42DF0: FLdPr Me
  loc_D42DF3: MemLdPr global_60
  loc_D42DF6:  = Me.Fields
  loc_D42DFB: FLdPr var_10AC
  loc_D42DFE: from_stack_2 = Me.Item(from_stack_1)
  loc_D42E03: FLdPr var_10B0
  loc_D42E06:  = Me.Value
  loc_D42E0B: FLdRfVar var_4B0
  loc_D42E0E: ConcatVar var_4D0
  loc_D42E12: LitVarStr var_4A0, " AND CodiSeca = "
  loc_D42E17: ConcatVar var_4F0
  loc_D42E1B: FLdRfVar var_500
  loc_D42E1E: FLdRfVar var_10B8
  loc_D42E21: LitVarStr var_4C0, "CodiSeca"
  loc_D42E26: PopAdLdVar
  loc_D42E27: FLdRfVar var_10B4
  loc_D42E2A: FLdPr Me
  loc_D42E2D: MemLdPr global_60
  loc_D42E30:  = Me.Fields
  loc_D42E35: FLdPr var_10B4
  loc_D42E38: from_stack_2 = Me.Item(from_stack_1)
  loc_D42E3D: FLdPr var_10B8
  loc_D42E40:  = Me.Value
  loc_D42E45: FLdRfVar var_500
  loc_D42E48: ConcatVar var_510
  loc_D42E4C: LitVarStr var_4E0, " AND NumeLtde = "
  loc_D42E51: ConcatVar var_530
  loc_D42E55: FLdRfVar var_540
  loc_D42E58: FLdRfVar var_10C0
  loc_D42E5B: LitVarStr var_520, "NumeLtde"
  loc_D42E60: PopAdLdVar
  loc_D42E61: FLdRfVar var_10BC
  loc_D42E64: FLdPr Me
  loc_D42E67: MemLdPr global_60
  loc_D42E6A:  = Me.Fields
  loc_D42E6F: FLdPr var_10BC
  loc_D42E72: from_stack_2 = Me.Item(from_stack_1)
  loc_D42E77: FLdPr var_10C0
  loc_D42E7A:  = Me.Value
  loc_D42E7F: FLdRfVar var_540
  loc_D42E82: ConcatVar var_550
  loc_D42E86: CStrVarVal var_1A0
  loc_D42E8A: Call EjecutarRsCls(from_stack_1v)
  loc_D42E8F: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_D42E9C: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = "": var_374 = "": var_45C = "": var_470 = "": var_109C = "": var_10A0 = "": var_10A4 = "": var_10A8 = "": var_10AC = "": var_10B0 = "": var_10B4 = "": var_10B8 = "": var_10BC = ""
  loc_D42ECB: FFreeVar var_540 = "": var_550 = "": var_1F4 = "": var_224 = "": var_214 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D42F0E: Branch loc_D4336C
  loc_D42F11: FLdRfVar var_1F4
  loc_D42F14: FLdRfVar var_1E4
  loc_D42F17: LitVarStr var_1E0, "DecaLtde"
  loc_D42F1C: PopAdLdVar
  loc_D42F1D: FLdRfVar var_1D0
  loc_D42F20: FLdPr Me
  loc_D42F23: MemLdPr global_64
  loc_D42F26:  = Me.Fields
  loc_D42F2B: FLdPr var_1D0
  loc_D42F2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D42F33: FLdPr var_1E4
  loc_D42F36:  = Me.Value
  loc_D42F3B: FLdFPR8 arg_58
  loc_D42F3E: FLdRfVar var_1F4
  loc_D42F41: FnCDblVar
  loc_D42F43: LtR8
  loc_D42F44: FFreeAd var_1D0 = ""
  loc_D42F4B: FFree1Var var_1F4 = ""
  loc_D42F4E: BranchF loc_D4336C
  loc_D42F51: LitStr "SELECT * FROM litadeta WHERE PeriLiqu = "
  loc_D42F54: FLdI2 PeriLiqu
  loc_D42F57: CStrUI1
  loc_D42F59: FStStrNoPop var_190
  loc_D42F5C: ConcatStr
  loc_D42F5D: FStStrNoPop var_194
  loc_D42F60: LitStr " AND Bimeliqu = "
  loc_D42F63: ConcatStr
  loc_D42F64: FStStrNoPop var_198
  loc_D42F67: FLdUI1
  loc_D42F6B: CStrI2
  loc_D42F6D: FStStrNoPop var_19C
  loc_D42F70: ConcatStr
  loc_D42F71: FStStrNoPop var_1A0
  loc_D42F74: LitStr " AND CodiTili = "
  loc_D42F77: ConcatStr
  loc_D42F78: FStStrNoPop var_1A4
  loc_D42F7B: FLdUI1
  loc_D42F7F: CStrI2
  loc_D42F81: FStStrNoPop var_1A8
  loc_D42F84: ConcatStr
  loc_D42F85: FStStrNoPop var_1AC
  loc_D42F88: LitStr " AND NumeLiqu = "
  loc_D42F8B: ConcatStr
  loc_D42F8C: FStStrNoPop var_1B0
  loc_D42F8F: FLdUI1
  loc_D42F93: CStrI2
  loc_D42F95: FStStrNoPop var_1B4
  loc_D42F98: ConcatStr
  loc_D42F99: FStStrNoPop var_1B8
  loc_D42F9C: LitStr " AND CodiInmu = "
  loc_D42F9F: ConcatStr
  loc_D42FA0: FStStrNoPop var_1BC
  loc_D42FA3: ILdRf CodiInmu
  loc_D42FA6: CStrI4
  loc_D42FA8: FStStrNoPop var_1C0
  loc_D42FAB: ConcatStr
  loc_D42FAC: FStStrNoPop var_1C4
  loc_D42FAF: LitStr " AND CodiConc = '"
  loc_D42FB2: ConcatStr
  loc_D42FB3: FStStrNoPop var_684
  loc_D42FB6: ILdRf var_88
  loc_D42FB9: ConcatStr
  loc_D42FBA: FStStrNoPop var_808
  loc_D42FBD: LitStr "'"
  loc_D42FC0: ConcatStr
  loc_D42FC1: FStStrNoPop var_B3C
  loc_D42FC4: LitStr " AND TipoVenc = "
  loc_D42FC7: ConcatStr
  loc_D42FC8: FStStrNoPop var_C10
  loc_D42FCB: FLdUI1
  loc_D42FCF: CStrI2
  loc_D42FD1: FStStrNoPop var_C54
  loc_D42FD4: ConcatStr
  loc_D42FD5: FStStrNoPop var_F98
  loc_D42FD8: LitStr " ORDER BY PeriLiqu,BimeLiqu,CodiTili,NumeLiqu,CodiInmu,CodiConc,TipoVenc,PeriOrde,CodiSeca,NumeLtde"
  loc_D42FDB: ConcatStr
  loc_D42FDC: FStStrNoPop var_FDC
  loc_D42FDF: Call EjecutarRsCls1(from_stack_1v)
  loc_D42FE4: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_684 = "": var_808 = "": var_B3C = "": var_C10 = "": var_C54 = "": var_F98 = ""
  loc_D43011: FLdRfVar var_1C8
  loc_D43014: FLdPr Me
  loc_D43017: MemLdPr global_60
  loc_D4301A:  = Me.RecordCount
  loc_D4301F: ILdRf var_1C8
  loc_D43022: LitI4 0
  loc_D43027: GtI4
  loc_D43028: BranchF loc_D4336C
  loc_D4302B: FLdPr Me
  loc_D4302E: MemLdPr global_60
  loc_D43031: Me.MoveFirst
  loc_D43036: FLdRfVar var_1F4
  loc_D43039: FLdRfVar var_1E4
  loc_D4303C: LitVarStr var_1E0, "DecaLtde"
  loc_D43041: PopAdLdVar
  loc_D43042: FLdRfVar var_1D0
  loc_D43045: FLdPr Me
  loc_D43048: MemLdPr global_64
  loc_D4304B:  = Me.Fields
  loc_D43050: FLdPr var_1D0
  loc_D43053: from_stack_2 = Me.Item(from_stack_1)
  loc_D43058: FLdPr var_1E4
  loc_D4305B:  = Me.Value
  loc_D43060: LitStr " UPDATE litadeta SET DecaLtde = DecaLtde - "
  loc_D43063: LitI4 0
  loc_D43068: LitI4 -1
  loc_D4306D: LitI4 1
  loc_D43072: LitStr "."
  loc_D43075: LitStr ","
  loc_D43078: FLdRfVar var_1F4
  loc_D4307B: FnCDblVar
  loc_D4307D: FLdFPR8 arg_58
  loc_D43080: SubR4
  loc_D43081: CStrR8
  loc_D43083: FStStrNoPop var_190
  loc_D43086: ImpAdCallI2 Replace(, , , , , )
  loc_D4308B: FStStrNoPop var_194
  loc_D4308E: ConcatStr
  loc_D4308F: FStStrNoPop var_198
  loc_D43092: LitStr ", TotaLtde = ImpoLtde - DecaLtde "
  loc_D43095: ConcatStr
  loc_D43096: FStStrNoPop var_19C
  loc_D43099: LitStr " WHERE PeriLiqu = "
  loc_D4309C: ConcatStr
  loc_D4309D: CVarStr var_224
  loc_D430A0: FLdRfVar var_214
  loc_D430A3: FLdRfVar var_26C
  loc_D430A6: LitVarStr var_204, "PeriLiqu"
  loc_D430AB: PopAdLdVar
  loc_D430AC: FLdRfVar var_258
  loc_D430AF: FLdPr Me
  loc_D430B2: MemLdPr global_60
  loc_D430B5:  = Me.Fields
  loc_D430BA: FLdPr var_258
  loc_D430BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D430C2: FLdPr var_26C
  loc_D430C5:  = Me.Value
  loc_D430CA: FLdRfVar var_214
  loc_D430CD: ConcatVar var_234
  loc_D430D1: LitVarStr var_244, " AND Bimeliqu = "
  loc_D430D6: ConcatVar var_254
  loc_D430DA: FLdRfVar var_27C
  loc_D430DD: FLdRfVar var_2C4
  loc_D430E0: LitVarStr var_268, "BimeLiqu"
  loc_D430E5: PopAdLdVar
  loc_D430E6: FLdRfVar var_2B0
  loc_D430E9: FLdPr Me
  loc_D430EC: MemLdPr global_60
  loc_D430EF:  = Me.Fields
  loc_D430F4: FLdPr var_2B0
  loc_D430F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D430FC: FLdPr var_2C4
  loc_D430FF:  = Me.Value
  loc_D43104: FLdRfVar var_27C
  loc_D43107: ConcatVar var_28C
  loc_D4310B: LitVarStr var_29C, " AND CodiTili = "
  loc_D43110: ConcatVar var_2AC
  loc_D43114: FLdRfVar var_2D4
  loc_D43117: FLdRfVar var_31C
  loc_D4311A: LitVarStr var_2C0, "CodiTili"
  loc_D4311F: PopAdLdVar
  loc_D43120: FLdRfVar var_308
  loc_D43123: FLdPr Me
  loc_D43126: MemLdPr global_60
  loc_D43129:  = Me.Fields
  loc_D4312E: FLdPr var_308
  loc_D43131: from_stack_2 = Me.Item(from_stack_1)
  loc_D43136: FLdPr var_31C
  loc_D43139:  = Me.Value
  loc_D4313E: FLdRfVar var_2D4
  loc_D43141: ConcatVar var_2E4
  loc_D43145: LitVarStr var_2F4, " AND NumeLiqu = "
  loc_D4314A: ConcatVar var_304
  loc_D4314E: FLdRfVar var_32C
  loc_D43151: FLdRfVar var_374
  loc_D43154: LitVarStr var_318, "NumeLiqu"
  loc_D43159: PopAdLdVar
  loc_D4315A: FLdRfVar var_360
  loc_D4315D: FLdPr Me
  loc_D43160: MemLdPr global_60
  loc_D43163:  = Me.Fields
  loc_D43168: FLdPr var_360
  loc_D4316B: from_stack_2 = Me.Item(from_stack_1)
  loc_D43170: FLdPr var_374
  loc_D43173:  = Me.Value
  loc_D43178: FLdRfVar var_32C
  loc_D4317B: ConcatVar var_33C
  loc_D4317F: LitVarStr var_34C, " AND CodiInmu = "
  loc_D43184: ConcatVar var_35C
  loc_D43188: FLdRfVar var_384
  loc_D4318B: FLdRfVar var_470
  loc_D4318E: LitVarStr var_370, "CodiInmu"
  loc_D43193: PopAdLdVar
  loc_D43194: FLdRfVar var_45C
  loc_D43197: FLdPr Me
  loc_D4319A: MemLdPr global_60
  loc_D4319D:  = Me.Fields
  loc_D431A2: FLdPr var_45C
  loc_D431A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D431AA: FLdPr var_470
  loc_D431AD:  = Me.Value
  loc_D431B2: FLdRfVar var_384
  loc_D431B5: ConcatVar var_394
  loc_D431B9: LitVarStr var_3A4, " AND CodiConc = '"
  loc_D431BE: ConcatVar var_3B4
  loc_D431C2: FLdRfVar var_3D4
  loc_D431C5: FLdRfVar var_10A0
  loc_D431C8: LitVarStr var_3C4, "CodiConc"
  loc_D431CD: PopAdLdVar
  loc_D431CE: FLdRfVar var_109C
  loc_D431D1: FLdPr Me
  loc_D431D4: MemLdPr global_60
  loc_D431D7:  = Me.Fields
  loc_D431DC: FLdPr var_109C
  loc_D431DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D431E4: FLdPr var_10A0
  loc_D431E7:  = Me.Value
  loc_D431EC: FLdRfVar var_3D4
  loc_D431EF: ConcatVar var_3F4
  loc_D431F3: LitVarStr var_3E4, "'"
  loc_D431F8: ConcatVar var_418
  loc_D431FC: LitVarStr var_408, " AND TipoVenc = "
  loc_D43201: ConcatVar var_438
  loc_D43205: FLdRfVar var_458
  loc_D43208: FLdRfVar var_10A8
  loc_D4320B: LitVarStr var_428, "TipoVenc"
  loc_D43210: PopAdLdVar
  loc_D43211: FLdRfVar var_10A4
  loc_D43214: FLdPr Me
  loc_D43217: MemLdPr global_60
  loc_D4321A:  = Me.Fields
  loc_D4321F: FLdPr var_10A4
  loc_D43222: from_stack_2 = Me.Item(from_stack_1)
  loc_D43227: FLdPr var_10A8
  loc_D4322A:  = Me.Value
  loc_D4322F: FLdRfVar var_458
  loc_D43232: ConcatVar var_480
  loc_D43236: LitVarStr var_448, " AND PeriOrde = "
  loc_D4323B: ConcatVar var_490
  loc_D4323F: FLdRfVar var_4B0
  loc_D43242: FLdRfVar var_10B0
  loc_D43245: LitVarStr var_46C, "PeriOrde"
  loc_D4324A: PopAdLdVar
  loc_D4324B: FLdRfVar var_10AC
  loc_D4324E: FLdPr Me
  loc_D43251: MemLdPr global_60
  loc_D43254:  = Me.Fields
  loc_D43259: FLdPr var_10AC
  loc_D4325C: from_stack_2 = Me.Item(from_stack_1)
  loc_D43261: FLdPr var_10B0
  loc_D43264:  = Me.Value
  loc_D43269: FLdRfVar var_4B0
  loc_D4326C: ConcatVar var_4D0
  loc_D43270: LitVarStr var_4A0, " AND CodiSeca = "
  loc_D43275: ConcatVar var_4F0
  loc_D43279: FLdRfVar var_500
  loc_D4327C: FLdRfVar var_10B8
  loc_D4327F: LitVarStr var_4C0, "CodiSeca"
  loc_D43284: PopAdLdVar
  loc_D43285: FLdRfVar var_10B4
  loc_D43288: FLdPr Me
  loc_D4328B: MemLdPr global_60
  loc_D4328E:  = Me.Fields
  loc_D43293: FLdPr var_10B4
  loc_D43296: from_stack_2 = Me.Item(from_stack_1)
  loc_D4329B: FLdPr var_10B8
  loc_D4329E:  = Me.Value
  loc_D432A3: FLdRfVar var_500
  loc_D432A6: ConcatVar var_510
  loc_D432AA: LitVarStr var_4E0, " AND NumeLtde = "
  loc_D432AF: ConcatVar var_530
  loc_D432B3: FLdRfVar var_540
  loc_D432B6: FLdRfVar var_10C0
  loc_D432B9: LitVarStr var_520, "NumeLtde"
  loc_D432BE: PopAdLdVar
  loc_D432BF: FLdRfVar var_10BC
  loc_D432C2: FLdPr Me
  loc_D432C5: MemLdPr global_60
  loc_D432C8:  = Me.Fields
  loc_D432CD: FLdPr var_10BC
  loc_D432D0: from_stack_2 = Me.Item(from_stack_1)
  loc_D432D5: FLdPr var_10C0
  loc_D432D8:  = Me.Value
  loc_D432DD: FLdRfVar var_540
  loc_D432E0: ConcatVar var_550
  loc_D432E4: CStrVarVal var_1A0
  loc_D432E8: Call EjecutarRsCls(from_stack_1v)
  loc_D432ED: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_D432FA: FFreeAd var_1D0 = "": var_1E4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_308 = "": var_31C = "": var_360 = "": var_374 = "": var_45C = "": var_470 = "": var_109C = "": var_10A0 = "": var_10A4 = "": var_10A8 = "": var_10AC = "": var_10B0 = "": var_10B4 = "": var_10B8 = "": var_10BC = ""
  loc_D43329: FFreeVar var_540 = "": var_550 = "": var_1F4 = "": var_224 = "": var_214 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_35C = "": var_384 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = "": var_418 = "": var_438 = "": var_458 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_500 = "": var_510 = ""
  loc_D4336C: LitStr "COMMIT;"
  loc_D4336F: Call EjecutarRsCls(from_stack_1v)
  loc_D43374: ExitProcHresult
  loc_D43375: LitStr "ROLLBACK;"
  loc_D43378: Call EjecutarRsCls(from_stack_1v)
  loc_D4337D: LitStr "Error cuando se quiere calcular la cuenta: "
  loc_D43380: ILdRf CodiInmu
  loc_D43383: CStrI4
  loc_D43385: FStStrNoPop var_190
  loc_D43388: ConcatStr
  loc_D43389: FStStrNoPop var_194
  loc_D4338C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D43391: FFreeStr var_190 = ""
  loc_D43398: ExitProcHresult
End Sub

Public Sub Requery() '9E717C
  'Data Table: 4BE97C
  loc_9E7158: LitI4 -1
  loc_9E715D: FLdPr Me
  loc_9E7160: MemLdPr global_52
  loc_9E7163: Me.Requery from_stack_1
  loc_9E7168: LitVarStr var_94, "Primary"
  loc_9E716D: PopAdLdVar
  loc_9E716E: FLdPr Me
  loc_9E7171: LateIdCall
  loc_9E7179: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5E2C0
  'Data Table: 4BE97C
  loc_A5E25C: ILdRf sSelect
  loc_A5E25F: FStStrCopy var_88
  loc_A5E262: LitNothing
  loc_A5E264: CastAd
  loc_A5E267: FStAdFuncNoPop
  loc_A5E26A: FLdPr Me
  loc_A5E26D: MemStAd
  loc_A5E271: FFree1Ad var_8C
  loc_A5E274: New Recordset
  loc_A5E278: FStAdFuncNoPop
  loc_A5E27B: FLdPr Me
  loc_A5E27E: MemStAd
  loc_A5E282: FFree1Ad var_8C
  loc_A5E285: LitI4 -1
  loc_A5E28A: LitI4 3
  loc_A5E28F: LitI4 3
  loc_A5E294: ImpAdLdI4 MemVar_D9301C
  loc_A5E297: CVarAd
  loc_A5E29B: PopAdLdVar
  loc_A5E29C: ILdRf var_88
  loc_A5E29F: CVarStr var_9C
  loc_A5E2A2: PopAdLdVar
  loc_A5E2A3: FLdPr Me
  loc_A5E2A6: MemLdPr global_52
  loc_A5E2A9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5E2AE: LitVarStr var_9C, "Primary"
  loc_A5E2B3: PopAdLdVar
  loc_A5E2B4: FLdPr Me
  loc_A5E2B7: LateIdCall
  loc_A5E2BF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4FC24
  'Data Table: 4BE97C
  loc_A4FBD0: ILdRf sSelect
  loc_A4FBD3: FStStrCopy var_88
  loc_A4FBD6: LitNothing
  loc_A4FBD8: CastAd
  loc_A4FBDB: FStAdFuncNoPop
  loc_A4FBDE: FLdPr Me
  loc_A4FBE1: MemStAd
  loc_A4FBE5: FFree1Ad var_8C
  loc_A4FBE8: New Recordset
  loc_A4FBEC: FStAdFuncNoPop
  loc_A4FBEF: FLdPr Me
  loc_A4FBF2: MemStAd
  loc_A4FBF6: FFree1Ad var_8C
  loc_A4FBF9: LitI4 -1
  loc_A4FBFE: LitI4 3
  loc_A4FC03: LitI4 3
  loc_A4FC08: ImpAdLdI4 MemVar_D9301C
  loc_A4FC0B: CVarAd
  loc_A4FC0F: PopAdLdVar
  loc_A4FC10: ILdRf var_88
  loc_A4FC13: CVarStr var_9C
  loc_A4FC16: PopAdLdVar
  loc_A4FC17: FLdPr Me
  loc_A4FC1A: MemLdPr global_56
  loc_A4FC1D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4FC22: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A50DA4
  'Data Table: 4BE97C
  loc_A50D50: ILdRf sSelect
  loc_A50D53: FStStrCopy var_88
  loc_A50D56: LitNothing
  loc_A50D58: CastAd
  loc_A50D5B: FStAdFuncNoPop
  loc_A50D5E: FLdPr Me
  loc_A50D61: MemStAd
  loc_A50D65: FFree1Ad var_8C
  loc_A50D68: New Recordset
  loc_A50D6C: FStAdFuncNoPop
  loc_A50D6F: FLdPr Me
  loc_A50D72: MemStAd
  loc_A50D76: FFree1Ad var_8C
  loc_A50D79: LitI4 -1
  loc_A50D7E: LitI4 3
  loc_A50D83: LitI4 3
  loc_A50D88: ImpAdLdI4 MemVar_D9301C
  loc_A50D8B: CVarAd
  loc_A50D8F: PopAdLdVar
  loc_A50D90: ILdRf var_88
  loc_A50D93: CVarStr var_9C
  loc_A50D96: PopAdLdVar
  loc_A50D97: FLdPr Me
  loc_A50D9A: MemLdPr global_60
  loc_A50D9D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50DA2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A50D18
  'Data Table: 4BE97C
  loc_A50CC4: ILdRf sSelect
  loc_A50CC7: FStStrCopy var_88
  loc_A50CCA: LitNothing
  loc_A50CCC: CastAd
  loc_A50CCF: FStAdFuncNoPop
  loc_A50CD2: FLdPr Me
  loc_A50CD5: MemStAd
  loc_A50CD9: FFree1Ad var_8C
  loc_A50CDC: New Recordset
  loc_A50CE0: FStAdFuncNoPop
  loc_A50CE3: FLdPr Me
  loc_A50CE6: MemStAd
  loc_A50CEA: FFree1Ad var_8C
  loc_A50CED: LitI4 -1
  loc_A50CF2: LitI4 3
  loc_A50CF7: LitI4 3
  loc_A50CFC: ImpAdLdI4 MemVar_D9301C
  loc_A50CFF: CVarAd
  loc_A50D03: PopAdLdVar
  loc_A50D04: ILdRf var_88
  loc_A50D07: CVarStr var_9C
  loc_A50D0A: PopAdLdVar
  loc_A50D0B: FLdPr Me
  loc_A50D0E: MemLdPr global_64
  loc_A50D11: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50D16: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A510EC
  'Data Table: 4BE97C
  loc_A51098: ILdRf sSelect
  loc_A5109B: FStStrCopy var_88
  loc_A5109E: LitNothing
  loc_A510A0: CastAd
  loc_A510A3: FStAdFuncNoPop
  loc_A510A6: FLdPr Me
  loc_A510A9: MemStAd
  loc_A510AD: FFree1Ad var_8C
  loc_A510B0: New Recordset
  loc_A510B4: FStAdFuncNoPop
  loc_A510B7: FLdPr Me
  loc_A510BA: MemStAd
  loc_A510BE: FFree1Ad var_8C
  loc_A510C1: LitI4 -1
  loc_A510C6: LitI4 3
  loc_A510CB: LitI4 3
  loc_A510D0: ImpAdLdI4 MemVar_D9301C
  loc_A510D3: CVarAd
  loc_A510D7: PopAdLdVar
  loc_A510D8: ILdRf var_88
  loc_A510DB: CVarStr var_9C
  loc_A510DE: PopAdLdVar
  loc_A510DF: FLdPr Me
  loc_A510E2: MemLdPr global_68
  loc_A510E5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A510EA: ExitProcHresult
  loc_A510EB: UMiI4
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A50FD4
  'Data Table: 4BE97C
  loc_A50F80: ILdRf sSelect
  loc_A50F83: FStStrCopy var_88
  loc_A50F86: LitNothing
  loc_A50F88: CastAd
  loc_A50F8B: FStAdFuncNoPop
  loc_A50F8E: FLdPr Me
  loc_A50F91: MemStAd
  loc_A50F95: FFree1Ad var_8C
  loc_A50F98: New Recordset
  loc_A50F9C: FStAdFuncNoPop
  loc_A50F9F: FLdPr Me
  loc_A50FA2: MemStAd
  loc_A50FA6: FFree1Ad var_8C
  loc_A50FA9: LitI4 -1
  loc_A50FAE: LitI4 3
  loc_A50FB3: LitI4 3
  loc_A50FB8: ImpAdLdI4 MemVar_D9301C
  loc_A50FBB: CVarAd
  loc_A50FBF: PopAdLdVar
  loc_A50FC0: ILdRf var_88
  loc_A50FC3: CVarStr var_9C
  loc_A50FC6: PopAdLdVar
  loc_A50FC7: FLdPr Me
  loc_A50FCA: MemLdPr global_72
  loc_A50FCD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A50FD2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A51664
  'Data Table: 4BE97C
  loc_A51610: ILdRf sSelect
  loc_A51613: FStStrCopy var_88
  loc_A51616: LitNothing
  loc_A51618: CastAd
  loc_A5161B: FStAdFuncNoPop
  loc_A5161E: FLdPr Me
  loc_A51621: MemStAd
  loc_A51625: FFree1Ad var_8C
  loc_A51628: New Recordset
  loc_A5162C: FStAdFuncNoPop
  loc_A5162F: FLdPr Me
  loc_A51632: MemStAd
  loc_A51636: FFree1Ad var_8C
  loc_A51639: LitI4 -1
  loc_A5163E: LitI4 3
  loc_A51643: LitI4 3
  loc_A51648: ImpAdLdI4 MemVar_D9301C
  loc_A5164B: CVarAd
  loc_A5164F: PopAdLdVar
  loc_A51650: ILdRf var_88
  loc_A51653: CVarStr var_9C
  loc_A51656: PopAdLdVar
  loc_A51657: FLdPr Me
  loc_A5165A: MemLdPr global_76
  loc_A5165D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A51662: ExitProcHresult
End Sub

Public Property Get DataSource() '9F2E3C
  'Data Table: 4BE97C
  loc_9F2E18: ZeroRetVal
  loc_9F2E1A: FLdRfVar var_8C
  loc_9F2E1D: FLdPr Me
  loc_9F2E20: MemLdPr global_52
  loc_9F2E23:  = Me.DataSource
  loc_9F2E28: ILdRf var_8C
  loc_9F2E2B: CastAd
  loc_9F2E2E: FStAdFunc var_88
  loc_9F2E31: FFree1Ad var_8C
  loc_9F2E34: ExitProcCbHresult
  loc_9F2E3A: LitI2_Byte 0
End Sub

Public Property Get NomeLita() 'B3E360
  'Data Table: 4BE97C
  loc_B3E0C4: ZeroRetValVar
  loc_B3E0C6: FLdPr Me
  loc_B3E0C9: MemLdStr global_52
  loc_B3E0CC: FStAd var_98 
  loc_B3E0D0: FLdRfVar var_B0
  loc_B3E0D3: LitVarStr var_AC, "DptoLita"
  loc_B3E0D8: PopAdLdVar
  loc_B3E0D9: FLdRfVar var_9C
  loc_B3E0DC: FLdPr var_98
  loc_B3E0DF:  = Me.Fields
  loc_B3E0E4: FLdPr var_9C
  loc_B3E0E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E0EC: FLdRfVar var_FC
  loc_B3E0EF: LitVarStr var_F8, "DistLita"
  loc_B3E0F4: PopAdLdVar
  loc_B3E0F5: FLdRfVar var_E8
  loc_B3E0F8: FLdPr var_98
  loc_B3E0FB:  = Me.Fields
  loc_B3E100: FLdPr var_E8
  loc_B3E103: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E108: FLdRfVar var_150
  loc_B3E10B: LitVarStr var_14C, "SeccLita"
  loc_B3E110: PopAdLdVar
  loc_B3E111: FLdRfVar var_13C
  loc_B3E114: FLdPr var_98
  loc_B3E117:  = Me.Fields
  loc_B3E11C: FLdPr var_13C
  loc_B3E11F: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E124: FLdRfVar var_1A4
  loc_B3E127: LitVarStr var_1A0, "MansLita"
  loc_B3E12C: PopAdLdVar
  loc_B3E12D: FLdRfVar var_190
  loc_B3E130: FLdPr var_98
  loc_B3E133:  = Me.Fields
  loc_B3E138: FLdPr var_190
  loc_B3E13B: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E140: FLdRfVar var_1F8
  loc_B3E143: LitVarStr var_1F4, "ParcLita"
  loc_B3E148: PopAdLdVar
  loc_B3E149: FLdRfVar var_1E4
  loc_B3E14C: FLdPr var_98
  loc_B3E14F:  = Me.Fields
  loc_B3E154: FLdPr var_1E4
  loc_B3E157: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E15C: FLdRfVar var_24C
  loc_B3E15F: LitVarStr var_248, "SubpLita"
  loc_B3E164: PopAdLdVar
  loc_B3E165: FLdRfVar var_238
  loc_B3E168: FLdPr var_98
  loc_B3E16B:  = Me.Fields
  loc_B3E170: FLdPr var_238
  loc_B3E173: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E178: LitI4 1
  loc_B3E17D: LitI4 1
  loc_B3E182: LitVarStr var_D0, "00"
  loc_B3E187: FStVarCopyObj var_E0
  loc_B3E18A: FLdRfVar var_E0
  loc_B3E18D: FLdZeroAd var_B0
  loc_B3E190: CVarAd
  loc_B3E194: ImpAdCallI2 Format$(, )
  loc_B3E199: FStStrNoPop var_E4
  loc_B3E19C: LitStr "-"
  loc_B3E19F: ConcatStr
  loc_B3E1A0: FStStrNoPop var_130
  loc_B3E1A3: LitI4 1
  loc_B3E1A8: LitI4 1
  loc_B3E1AD: LitVarStr var_11C, "00"
  loc_B3E1B2: FStVarCopyObj var_12C
  loc_B3E1B5: FLdRfVar var_12C
  loc_B3E1B8: FLdZeroAd var_FC
  loc_B3E1BB: CVarAd
  loc_B3E1BF: ImpAdCallI2 Format$(, )
  loc_B3E1C4: FStStrNoPop var_134
  loc_B3E1C7: ConcatStr
  loc_B3E1C8: FStStrNoPop var_138
  loc_B3E1CB: LitStr "-"
  loc_B3E1CE: ConcatStr
  loc_B3E1CF: FStStrNoPop var_184
  loc_B3E1D2: LitI4 1
  loc_B3E1D7: LitI4 1
  loc_B3E1DC: LitVarStr var_170, "00"
  loc_B3E1E1: FStVarCopyObj var_180
  loc_B3E1E4: FLdRfVar var_180
  loc_B3E1E7: FLdZeroAd var_150
  loc_B3E1EA: CVarAd
  loc_B3E1EE: ImpAdCallI2 Format$(, )
  loc_B3E1F3: FStStrNoPop var_188
  loc_B3E1F6: ConcatStr
  loc_B3E1F7: FStStrNoPop var_18C
  loc_B3E1FA: LitStr "-"
  loc_B3E1FD: ConcatStr
  loc_B3E1FE: FStStrNoPop var_1D8
  loc_B3E201: LitI4 1
  loc_B3E206: LitI4 1
  loc_B3E20B: LitVarStr var_1C4, "0000"
  loc_B3E210: FStVarCopyObj var_1D4
  loc_B3E213: FLdRfVar var_1D4
  loc_B3E216: FLdZeroAd var_1A4
  loc_B3E219: CVarAd
  loc_B3E21D: ImpAdCallI2 Format$(, )
  loc_B3E222: FStStrNoPop var_1DC
  loc_B3E225: ConcatStr
  loc_B3E226: FStStrNoPop var_1E0
  loc_B3E229: LitStr "-"
  loc_B3E22C: ConcatStr
  loc_B3E22D: FStStrNoPop var_22C
  loc_B3E230: LitI4 1
  loc_B3E235: LitI4 1
  loc_B3E23A: LitVarStr var_218, "000000"
  loc_B3E23F: FStVarCopyObj var_228
  loc_B3E242: FLdRfVar var_228
  loc_B3E245: FLdZeroAd var_1F8
  loc_B3E248: CVarAd
  loc_B3E24C: ImpAdCallI2 Format$(, )
  loc_B3E251: FStStrNoPop var_230
  loc_B3E254: ConcatStr
  loc_B3E255: FStStrNoPop var_234
  loc_B3E258: LitStr "-"
  loc_B3E25B: ConcatStr
  loc_B3E25C: FStStrNoPop var_280
  loc_B3E25F: LitI4 1
  loc_B3E264: LitI4 1
  loc_B3E269: LitVarStr var_26C, "0000"
  loc_B3E26E: FStVarCopyObj var_27C
  loc_B3E271: FLdRfVar var_27C
  loc_B3E274: FLdZeroAd var_24C
  loc_B3E277: CVarAd
  loc_B3E27B: ImpAdCallI2 Format$(, )
  loc_B3E280: FStStrNoPop var_284
  loc_B3E283: ConcatStr
  loc_B3E284: CVarStr var_294
  loc_B3E287: FStVar NomeLita
  loc_B3E28B: FFreeStr var_E4 = "": var_130 = "": var_134 = "": var_138 = "": var_184 = "": var_188 = "": var_18C = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_22C = "": var_230 = "": var_234 = "": var_280 = ""
  loc_B3E2AC: FFreeAd var_9C = "": var_E8 = "": var_13C = "": var_190 = "": var_1E4 = ""
  loc_B3E2BB: FFreeVar var_C0 = "": var_E0 = "": var_10C = "": var_12C = "": var_160 = "": var_180 = "": var_1B4 = "": var_1D4 = "": var_208 = "": var_228 = "": var_25C = ""
  loc_B3E2D6: FLdRfVar var_B0
  loc_B3E2D9: LitVarStr var_AC, "DigiLita"
  loc_B3E2DE: PopAdLdVar
  loc_B3E2DF: FLdRfVar var_9C
  loc_B3E2E2: FLdPr var_98
  loc_B3E2E5:  = Me.Fields
  loc_B3E2EA: FLdPr var_9C
  loc_B3E2ED: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E2F2: FLdZeroAd var_B0
  loc_B3E2F5: CVarAd
  loc_B3E2F9: ImpAdCallI2 IsNumeric()
  loc_B3E2FE: FFree1Ad var_9C
  loc_B3E301: FFree1Var var_C0 = ""
  loc_B3E304: BranchF loc_B3E353
  loc_B3E307: FLdRfVar NomeLita
  loc_B3E30A: LitVarStr var_AC, "-"
  loc_B3E30F: ConcatVar var_C0
  loc_B3E313: FLdRfVar var_E0
  loc_B3E316: FLdRfVar var_B0
  loc_B3E319: LitVarStr var_D0, "DigiLita"
  loc_B3E31E: PopAdLdVar
  loc_B3E31F: FLdRfVar var_9C
  loc_B3E322: FLdPr var_98
  loc_B3E325:  = Me.Fields
  loc_B3E32A: FLdPr var_9C
  loc_B3E32D: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E332: FLdPr var_B0
  loc_B3E335:  = Me.Value
  loc_B3E33A: FLdRfVar var_E0
  loc_B3E33D: ConcatVar var_10C
  loc_B3E341: FStVar NomeLita
  loc_B3E345: FFreeAd var_9C = ""
  loc_B3E34C: FFreeVar var_C0 = ""
  loc_B3E353: LitNothing
  loc_B3E355: FStAd var_98 
  loc_B3E359: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A30924
  'Data Table: 4BE97C
  loc_A308E0: FLdRfVar var_B0
  loc_A308E3: FLdRfVar var_A0
  loc_A308E6: LitVarStr var_9C, "PeriLiqu"
  loc_A308EB: PopAdLdVar
  loc_A308EC: FLdRfVar var_8C
  loc_A308EF: FLdPr Me
  loc_A308F2: MemLdPr global_52
  loc_A308F5:  = Me.Fields
  loc_A308FA: FLdPr var_8C
  loc_A308FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30902: FLdPr var_A0
  loc_A30905:  = Me.Value
  loc_A3090A: FLdRfVar var_B0
  loc_A3090D: CI2Var
  loc_A3090E: FStI2 var_86
  loc_A30911: FFreeAd var_8C = ""
  loc_A30918: FFree1Var var_B0 = ""
  loc_A3091B: ExitProcCbHresult
  loc_A30921: ConcatVar PeriLiqu70
End Sub

Public Property Get BimeLiqu() 'A30824
  'Data Table: 4BE97C
  loc_A307E0: FLdRfVar var_B0
  loc_A307E3: FLdRfVar var_A0
  loc_A307E6: LitVarStr var_9C, "BimeLiqu"
  loc_A307EB: PopAdLdVar
  loc_A307EC: FLdRfVar var_8C
  loc_A307EF: FLdPr Me
  loc_A307F2: MemLdPr global_52
  loc_A307F5:  = Me.Fields
  loc_A307FA: FLdPr var_8C
  loc_A307FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30802: FLdPr var_A0
  loc_A30805:  = Me.Value
  loc_A3080A: FLdRfVar var_B0
  loc_A3080D: CUI1Var
  loc_A3080F: FStUI1 var_86
  loc_A30813: FFreeAd var_8C = ""
  loc_A3081A: FFree1Var var_B0 = ""
  loc_A3081D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A306A4
  'Data Table: 4BE97C
  loc_A30660: FLdRfVar var_B0
  loc_A30663: FLdRfVar var_A0
  loc_A30666: LitVarStr var_9C, "CodiTili"
  loc_A3066B: PopAdLdVar
  loc_A3066C: FLdRfVar var_8C
  loc_A3066F: FLdPr Me
  loc_A30672: MemLdPr global_52
  loc_A30675:  = Me.Fields
  loc_A3067A: FLdPr var_8C
  loc_A3067D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30682: FLdPr var_A0
  loc_A30685:  = Me.Value
  loc_A3068A: FLdRfVar var_B0
  loc_A3068D: CUI1Var
  loc_A3068F: FStUI1 var_86
  loc_A30693: FFreeAd var_8C = ""
  loc_A3069A: FFree1Var var_B0 = ""
  loc_A3069D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A30624
  'Data Table: 4BE97C
  loc_A305E0: FLdRfVar var_B0
  loc_A305E3: FLdRfVar var_A0
  loc_A305E6: LitVarStr var_9C, "NumeLiqu"
  loc_A305EB: PopAdLdVar
  loc_A305EC: FLdRfVar var_8C
  loc_A305EF: FLdPr Me
  loc_A305F2: MemLdPr global_52
  loc_A305F5:  = Me.Fields
  loc_A305FA: FLdPr var_8C
  loc_A305FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30602: FLdPr var_A0
  loc_A30605:  = Me.Value
  loc_A3060A: FLdRfVar var_B0
  loc_A3060D: CUI1Var
  loc_A3060F: FStUI1 var_86
  loc_A30613: FFreeAd var_8C = ""
  loc_A3061A: FFree1Var var_B0 = ""
  loc_A3061D: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A305A4
  'Data Table: 4BE97C
  loc_A30560: FLdRfVar var_B0
  loc_A30563: FLdRfVar var_A0
  loc_A30566: LitVarStr var_9C, "CodiInmu"
  loc_A3056B: PopAdLdVar
  loc_A3056C: FLdRfVar var_8C
  loc_A3056F: FLdPr Me
  loc_A30572: MemLdPr global_52
  loc_A30575:  = Me.Fields
  loc_A3057A: FLdPr var_8C
  loc_A3057D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30582: FLdPr var_A0
  loc_A30585:  = Me.Value
  loc_A3058A: FLdRfVar var_B0
  loc_A3058D: CI4Var
  loc_A3058F: FStR4 var_88
  loc_A30592: FFreeAd var_8C = ""
  loc_A30599: FFree1Var var_B0 = ""
  loc_A3059C: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3F3C4
  'Data Table: 4BE97C
  loc_A3F380: ZeroRetVal
  loc_A3F382: FLdRfVar var_B0
  loc_A3F385: FLdRfVar var_A0
  loc_A3F388: LitVarStr var_9C, "CodiConc"
  loc_A3F38D: PopAdLdVar
  loc_A3F38E: FLdRfVar var_8C
  loc_A3F391: FLdPr Me
  loc_A3F394: MemLdPr global_52
  loc_A3F397:  = Me.Fields
  loc_A3F39C: FLdPr var_8C
  loc_A3F39F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F3A4: FLdPr var_A0
  loc_A3F3A7:  = Me.Value
  loc_A3F3AC: FLdRfVar var_B0
  loc_A3F3AF: CStrVarTmp
  loc_A3F3B0: FStStr var_88
  loc_A3F3B3: FFreeAd var_8C = ""
  loc_A3F3BA: FFree1Var var_B0 = ""
  loc_A3F3BD: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A30524
  'Data Table: 4BE97C
  loc_A304E0: FLdRfVar var_B0
  loc_A304E3: FLdRfVar var_A0
  loc_A304E6: LitVarStr var_9C, "TipoVenc"
  loc_A304EB: PopAdLdVar
  loc_A304EC: FLdRfVar var_8C
  loc_A304EF: FLdPr Me
  loc_A304F2: MemLdPr global_52
  loc_A304F5:  = Me.Fields
  loc_A304FA: FLdPr var_8C
  loc_A304FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30502: FLdPr var_A0
  loc_A30505:  = Me.Value
  loc_A3050A: FLdRfVar var_B0
  loc_A3050D: CI2Var
  loc_A3050E: FStI2 var_86
  loc_A30511: FFreeAd var_8C = ""
  loc_A30518: FFree1Var var_B0 = ""
  loc_A3051B: ExitProcCbHresult
End Sub

Public Property Get OrdeLita() 'A304A4
  'Data Table: 4BE97C
  loc_A30460: FLdRfVar var_B0
  loc_A30463: FLdRfVar var_A0
  loc_A30466: LitVarStr var_9C, "OrdeLita"
  loc_A3046B: PopAdLdVar
  loc_A3046C: FLdRfVar var_8C
  loc_A3046F: FLdPr Me
  loc_A30472: MemLdPr global_52
  loc_A30475:  = Me.Fields
  loc_A3047A: FLdPr var_8C
  loc_A3047D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30482: FLdPr var_A0
  loc_A30485:  = Me.Value
  loc_A3048A: FLdRfVar var_B0
  loc_A3048D: CI4Var
  loc_A3048F: FStR4 var_88
  loc_A30492: FFreeAd var_8C = ""
  loc_A30499: FFree1Var var_B0 = ""
  loc_A3049C: ExitProcCbHresult
End Sub

Public Property Get ActuLita() 'A3F0AC
  'Data Table: 4BE97C
  loc_A3F068: ZeroRetVal
  loc_A3F06A: FLdRfVar var_B0
  loc_A3F06D: FLdRfVar var_A0
  loc_A3F070: LitVarStr var_9C, "ActuLita"
  loc_A3F075: PopAdLdVar
  loc_A3F076: FLdRfVar var_8C
  loc_A3F079: FLdPr Me
  loc_A3F07C: MemLdPr global_52
  loc_A3F07F:  = Me.Fields
  loc_A3F084: FLdPr var_8C
  loc_A3F087: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F08C: FLdPr var_A0
  loc_A3F08F:  = Me.Value
  loc_A3F094: FLdRfVar var_B0
  loc_A3F097: CStrVarTmp
  loc_A3F098: FStStr var_88
  loc_A3F09B: FFreeAd var_8C = ""
  loc_A3F0A2: FFree1Var var_B0 = ""
  loc_A3F0A5: ExitProcCbHresult
End Sub

Public Property Get FeacLita() 'A13690
  'Data Table: 4BE97C
  loc_A13658: ZeroRetValVar
  loc_A1365A: FLdRfVar var_AC
  loc_A1365D: LitVarStr var_A8, "FeacLita"
  loc_A13662: PopAdLdVar
  loc_A13663: FLdRfVar var_98
  loc_A13666: FLdPr Me
  loc_A13669: MemLdPr global_52
  loc_A1366C:  = Me.Fields
  loc_A13671: FLdPr var_98
  loc_A13674: from_stack_2 = Me.Item(from_stack_1)
  loc_A13679: FLdZeroAd var_AC
  loc_A1367C: CVarAd
  loc_A13680: FStVar FeacLita
  loc_A13684: FFree1Ad var_98
  loc_A13687: ExitProcCbHresult
End Sub

Public Property Get TipoLita() 'A3EA7C
  'Data Table: 4BE97C
  loc_A3EA38: ZeroRetVal
  loc_A3EA3A: FLdRfVar var_B0
  loc_A3EA3D: FLdRfVar var_A0
  loc_A3EA40: LitVarStr var_9C, "TipoLita"
  loc_A3EA45: PopAdLdVar
  loc_A3EA46: FLdRfVar var_8C
  loc_A3EA49: FLdPr Me
  loc_A3EA4C: MemLdPr global_52
  loc_A3EA4F:  = Me.Fields
  loc_A3EA54: FLdPr var_8C
  loc_A3EA57: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EA5C: FLdPr var_A0
  loc_A3EA5F:  = Me.Value
  loc_A3EA64: FLdRfVar var_B0
  loc_A3EA67: CStrVarTmp
  loc_A3EA68: FStStr var_88
  loc_A3EA6B: FFreeAd var_8C = ""
  loc_A3EA72: FFree1Var var_B0 = ""
  loc_A3EA75: ExitProcCbHresult
  loc_A3EA7B: CCyI2
End Sub

Public Property Get FealLita() 'A3E7E8
  'Data Table: 4BE97C
  loc_A3E7A4: ZeroRetVal
  loc_A3E7A6: FLdRfVar var_B0
  loc_A3E7A9: FLdRfVar var_A0
  loc_A3E7AC: LitVarStr var_9C, "FealLita"
  loc_A3E7B1: PopAdLdVar
  loc_A3E7B2: FLdRfVar var_8C
  loc_A3E7B5: FLdPr Me
  loc_A3E7B8: MemLdPr global_52
  loc_A3E7BB:  = Me.Fields
  loc_A3E7C0: FLdPr var_8C
  loc_A3E7C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E7C8: FLdPr var_A0
  loc_A3E7CB:  = Me.Value
  loc_A3E7D0: FLdRfVar var_B0
  loc_A3E7D3: CStrVarTmp
  loc_A3E7D4: FStStr var_88
  loc_A3E7D7: FFreeAd var_8C = ""
  loc_A3E7DE: FFree1Var var_B0 = ""
  loc_A3E7E1: ExitProcCbHresult
End Sub

Public Property Get FeveLita() 'A3F760
  'Data Table: 4BE97C
  loc_A3F71C: ZeroRetVal
  loc_A3F71E: FLdRfVar var_B0
  loc_A3F721: FLdRfVar var_A0
  loc_A3F724: LitVarStr var_9C, "FeveLita"
  loc_A3F729: PopAdLdVar
  loc_A3F72A: FLdRfVar var_8C
  loc_A3F72D: FLdPr Me
  loc_A3F730: MemLdPr global_52
  loc_A3F733:  = Me.Fields
  loc_A3F738: FLdPr var_8C
  loc_A3F73B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F740: FLdPr var_A0
  loc_A3F743:  = Me.Value
  loc_A3F748: FLdRfVar var_B0
  loc_A3F74B: CStrVarTmp
  loc_A3F74C: FStStr var_88
  loc_A3F74F: FFreeAd var_8C = ""
  loc_A3F756: FFree1Var var_B0 = ""
  loc_A3F759: ExitProcCbHresult
  loc_A3F75F: CI2I4
End Sub

Public Property Get SupeLita() 'A301A4
  'Data Table: 4BE97C
  loc_A30160: FLdRfVar var_B4
  loc_A30163: FLdRfVar var_A4
  loc_A30166: LitVarStr var_A0, "SupeLita"
  loc_A3016B: PopAdLdVar
  loc_A3016C: FLdRfVar var_90
  loc_A3016F: FLdPr Me
  loc_A30172: MemLdPr global_52
  loc_A30175:  = Me.Fields
  loc_A3017A: FLdPr var_90
  loc_A3017D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30182: FLdPr var_A4
  loc_A30185:  = Me.Value
  loc_A3018A: FLdRfVar var_B4
  loc_A3018D: CR4Var
  loc_A3018E: FStFPR8 var_8C
  loc_A30191: FFreeAd var_90 = ""
  loc_A30198: FFree1Var var_B4 = ""
  loc_A3019B: ExitProcCbHresult
  loc_A301A1: FLdI2 var_158
End Sub

Public Property Get DeudLita() 'A2FFA4
  'Data Table: 4BE97C
  loc_A2FF60: FLdRfVar var_B4
  loc_A2FF63: FLdRfVar var_A4
  loc_A2FF66: LitVarStr var_A0, "DeudLita"
  loc_A2FF6B: PopAdLdVar
  loc_A2FF6C: FLdRfVar var_90
  loc_A2FF6F: FLdPr Me
  loc_A2FF72: MemLdPr global_52
  loc_A2FF75:  = Me.Fields
  loc_A2FF7A: FLdPr var_90
  loc_A2FF7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FF82: FLdPr var_A4
  loc_A2FF85:  = Me.Value
  loc_A2FF8A: FLdRfVar var_B4
  loc_A2FF8D: CR4Var
  loc_A2FF8E: FStFPR8 var_8C
  loc_A2FF91: FFreeAd var_90 = ""
  loc_A2FF98: FFree1Var var_B4 = ""
  loc_A2FF9B: ExitProcCbHresult
  loc_A2FFA3: SubR4
End Sub

Public Property Get ImpoLita() 'A2FF24
  'Data Table: 4BE97C
  loc_A2FEE0: FLdRfVar var_B4
  loc_A2FEE3: FLdRfVar var_A4
  loc_A2FEE6: LitVarStr var_A0, "ImpoLita"
  loc_A2FEEB: PopAdLdVar
  loc_A2FEEC: FLdRfVar var_90
  loc_A2FEEF: FLdPr Me
  loc_A2FEF2: MemLdPr global_52
  loc_A2FEF5:  = Me.Fields
  loc_A2FEFA: FLdPr var_90
  loc_A2FEFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FF02: FLdPr var_A4
  loc_A2FF05:  = Me.Value
  loc_A2FF0A: FLdRfVar var_B4
  loc_A2FF0D: CR4Var
  loc_A2FF0E: FStFPR8 var_8C
  loc_A2FF11: FFreeAd var_90 = ""
  loc_A2FF18: FFree1Var var_B4 = ""
  loc_A2FF1B: ExitProcCbHresult
  loc_A2FF21: FnInStr4Var
End Sub

Public Property Get CrafLita() 'A2FEA4
  'Data Table: 4BE97C
  loc_A2FE60: FLdRfVar var_B4
  loc_A2FE63: FLdRfVar var_A4
  loc_A2FE66: LitVarStr var_A0, "CrafLita"
  loc_A2FE6B: PopAdLdVar
  loc_A2FE6C: FLdRfVar var_90
  loc_A2FE6F: FLdPr Me
  loc_A2FE72: MemLdPr global_52
  loc_A2FE75:  = Me.Fields
  loc_A2FE7A: FLdPr var_90
  loc_A2FE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FE82: FLdPr var_A4
  loc_A2FE85:  = Me.Value
  loc_A2FE8A: FLdRfVar var_B4
  loc_A2FE8D: CR4Var
  loc_A2FE8E: FStFPR8 var_8C
  loc_A2FE91: FFreeAd var_90 = ""
  loc_A2FE98: FFree1Var var_B4 = ""
  loc_A2FE9B: ExitProcCbHresult
End Sub

Public Property Get ExenLita() 'A2FCA4
  'Data Table: 4BE97C
  loc_A2FC60: FLdRfVar var_B4
  loc_A2FC63: FLdRfVar var_A4
  loc_A2FC66: LitVarStr var_A0, "ExenLita"
  loc_A2FC6B: PopAdLdVar
  loc_A2FC6C: FLdRfVar var_90
  loc_A2FC6F: FLdPr Me
  loc_A2FC72: MemLdPr global_52
  loc_A2FC75:  = Me.Fields
  loc_A2FC7A: FLdPr var_90
  loc_A2FC7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FC82: FLdPr var_A4
  loc_A2FC85:  = Me.Value
  loc_A2FC8A: FLdRfVar var_B4
  loc_A2FC8D: CR4Var
  loc_A2FC8E: FStFPR8 var_8C
  loc_A2FC91: FFreeAd var_90 = ""
  loc_A2FC98: FFree1Var var_B4 = ""
  loc_A2FC9B: ExitProcCbHresult
  loc_A2FCA1: LitStr " ORDER BY servinmu.NumeFrin, servinmu.CodiSeca"
End Sub

Public Property Get DescLita() 'A2FB24
  'Data Table: 4BE97C
  loc_A2FAE0: FLdRfVar var_B4
  loc_A2FAE3: FLdRfVar var_A4
  loc_A2FAE6: LitVarStr var_A0, "DescLita"
  loc_A2FAEB: PopAdLdVar
  loc_A2FAEC: FLdRfVar var_90
  loc_A2FAEF: FLdPr Me
  loc_A2FAF2: MemLdPr global_52
  loc_A2FAF5:  = Me.Fields
  loc_A2FAFA: FLdPr var_90
  loc_A2FAFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FB02: FLdPr var_A4
  loc_A2FB05:  = Me.Value
  loc_A2FB0A: FLdRfVar var_B4
  loc_A2FB0D: CR4Var
  loc_A2FB0E: FStFPR8 var_8C
  loc_A2FB11: FFreeAd var_90 = ""
  loc_A2FB18: FFree1Var var_B4 = ""
  loc_A2FB1B: ExitProcCbHresult
End Sub

Public Property Get GastLita() 'A2F324
  'Data Table: 4BE97C
  loc_A2F2E0: FLdRfVar var_B4
  loc_A2F2E3: FLdRfVar var_A4
  loc_A2F2E6: LitVarStr var_A0, "GastLita"
  loc_A2F2EB: PopAdLdVar
  loc_A2F2EC: FLdRfVar var_90
  loc_A2F2EF: FLdPr Me
  loc_A2F2F2: MemLdPr global_52
  loc_A2F2F5:  = Me.Fields
  loc_A2F2FA: FLdPr var_90
  loc_A2F2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F302: FLdPr var_A4
  loc_A2F305:  = Me.Value
  loc_A2F30A: FLdRfVar var_B4
  loc_A2F30D: CR4Var
  loc_A2F30E: FStFPR8 var_8C
  loc_A2F311: FFreeAd var_90 = ""
  loc_A2F318: FFree1Var var_B4 = ""
  loc_A2F31B: ExitProcCbHresult
  loc_A2F321: CStrVarTmp
  loc_A2F322: MulCyI2
End Sub

Public Property Get TotaLita() 'A2F1A4
  'Data Table: 4BE97C
  loc_A2F160: FLdRfVar var_B4
  loc_A2F163: FLdRfVar var_A4
  loc_A2F166: LitVarStr var_A0, "TotaLita"
  loc_A2F16B: PopAdLdVar
  loc_A2F16C: FLdRfVar var_90
  loc_A2F16F: FLdPr Me
  loc_A2F172: MemLdPr global_52
  loc_A2F175:  = Me.Fields
  loc_A2F17A: FLdPr var_90
  loc_A2F17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F182: FLdPr var_A4
  loc_A2F185:  = Me.Value
  loc_A2F18A: FLdRfVar var_B4
  loc_A2F18D: CR4Var
  loc_A2F18E: FStFPR8 var_8C
  loc_A2F191: FFreeAd var_90 = ""
  loc_A2F198: FFree1Var var_B4 = ""
  loc_A2F19B: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3F658
  'Data Table: 4BE97C
  loc_A3F614: ZeroRetVal
  loc_A3F616: FLdRfVar var_B0
  loc_A3F619: FLdRfVar var_A0
  loc_A3F61C: LitVarStr var_9C, "CucuPers"
  loc_A3F621: PopAdLdVar
  loc_A3F622: FLdRfVar var_8C
  loc_A3F625: FLdPr Me
  loc_A3F628: MemLdPr global_52
  loc_A3F62B:  = Me.Fields
  loc_A3F630: FLdPr var_8C
  loc_A3F633: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F638: FLdPr var_A0
  loc_A3F63B:  = Me.Value
  loc_A3F640: FLdRfVar var_B0
  loc_A3F643: CStrVarTmp
  loc_A3F644: FStStr var_88
  loc_A3F647: FFreeAd var_8C = ""
  loc_A3F64E: FFree1Var var_B0 = ""
  loc_A3F651: ExitProcCbHresult
End Sub

Public Property Get CodiCall() 'A2F024
  'Data Table: 4BE97C
  loc_A2EFE0: FLdRfVar var_B0
  loc_A2EFE3: FLdRfVar var_A0
  loc_A2EFE6: LitVarStr var_9C, "CodiCall"
  loc_A2EFEB: PopAdLdVar
  loc_A2EFEC: FLdRfVar var_8C
  loc_A2EFEF: FLdPr Me
  loc_A2EFF2: MemLdPr global_52
  loc_A2EFF5:  = Me.Fields
  loc_A2EFFA: FLdPr var_8C
  loc_A2EFFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F002: FLdPr var_A0
  loc_A2F005:  = Me.Value
  loc_A2F00A: FLdRfVar var_B0
  loc_A2F00D: CI2Var
  loc_A2F00E: FStI2 var_86
  loc_A2F011: FFreeAd var_8C = ""
  loc_A2F018: FFree1Var var_B0 = ""
  loc_A2F01B: ExitProcCbHresult
End Sub

Public Property Get CallLita() 'A3F028
  'Data Table: 4BE97C
  loc_A3EFE4: ZeroRetVal
  loc_A3EFE6: FLdRfVar var_B0
  loc_A3EFE9: FLdRfVar var_A0
  loc_A3EFEC: LitVarStr var_9C, "CallLita"
  loc_A3EFF1: PopAdLdVar
  loc_A3EFF2: FLdRfVar var_8C
  loc_A3EFF5: FLdPr Me
  loc_A3EFF8: MemLdPr global_52
  loc_A3EFFB:  = Me.Fields
  loc_A3F000: FLdPr var_8C
  loc_A3F003: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F008: FLdPr var_A0
  loc_A3F00B:  = Me.Value
  loc_A3F010: FLdRfVar var_B0
  loc_A3F013: CStrVarTmp
  loc_A3F014: FStStr var_88
  loc_A3F017: FFreeAd var_8C = ""
  loc_A3F01E: FFree1Var var_B0 = ""
  loc_A3F021: ExitProcCbHresult
End Sub

Public Property Get NucaLita() 'A2EEA4
  'Data Table: 4BE97C
  loc_A2EE60: FLdRfVar var_B0
  loc_A2EE63: FLdRfVar var_A0
  loc_A2EE66: LitVarStr var_9C, "NucaLita"
  loc_A2EE6B: PopAdLdVar
  loc_A2EE6C: FLdRfVar var_8C
  loc_A2EE6F: FLdPr Me
  loc_A2EE72: MemLdPr global_52
  loc_A2EE75:  = Me.Fields
  loc_A2EE7A: FLdPr var_8C
  loc_A2EE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2EE82: FLdPr var_A0
  loc_A2EE85:  = Me.Value
  loc_A2EE8A: FLdRfVar var_B0
  loc_A2EE8D: CI4Var
  loc_A2EE8F: FStR4 var_88
  loc_A2EE92: FFreeAd var_8C = ""
  loc_A2EE99: FFree1Var var_B0 = ""
  loc_A2EE9C: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A2EAA4
  'Data Table: 4BE97C
  loc_A2EA60: FLdRfVar var_B0
  loc_A2EA63: FLdRfVar var_A0
  loc_A2EA66: LitVarStr var_9C, "CodiBarr"
  loc_A2EA6B: PopAdLdVar
  loc_A2EA6C: FLdRfVar var_8C
  loc_A2EA6F: FLdPr Me
  loc_A2EA72: MemLdPr global_52
  loc_A2EA75:  = Me.Fields
  loc_A2EA7A: FLdPr var_8C
  loc_A2EA7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2EA82: FLdPr var_A0
  loc_A2EA85:  = Me.Value
  loc_A2EA8A: FLdRfVar var_B0
  loc_A2EA8D: CI2Var
  loc_A2EA8E: FStI2 var_86
  loc_A2EA91: FFreeAd var_8C = ""
  loc_A2EA98: FFree1Var var_B0 = ""
  loc_A2EA9B: ExitProcCbHresult
End Sub

Public Property Get BarrLita() 'A3D1BC
  'Data Table: 4BE97C
  loc_A3D178: ZeroRetVal
  loc_A3D17A: FLdRfVar var_B0
  loc_A3D17D: FLdRfVar var_A0
  loc_A3D180: LitVarStr var_9C, "BarrLita"
  loc_A3D185: PopAdLdVar
  loc_A3D186: FLdRfVar var_8C
  loc_A3D189: FLdPr Me
  loc_A3D18C: MemLdPr global_52
  loc_A3D18F:  = Me.Fields
  loc_A3D194: FLdPr var_8C
  loc_A3D197: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D19C: FLdPr var_A0
  loc_A3D19F:  = Me.Value
  loc_A3D1A4: FLdRfVar var_B0
  loc_A3D1A7: CStrVarTmp
  loc_A3D1A8: FStStr var_88
  loc_A3D1AB: FFreeAd var_8C = ""
  loc_A3D1B2: FFree1Var var_B0 = ""
  loc_A3D1B5: ExitProcCbHresult
End Sub

Public Property Get ManzLita() 'A3ED10
  'Data Table: 4BE97C
  loc_A3ECCC: ZeroRetVal
  loc_A3ECCE: FLdRfVar var_B0
  loc_A3ECD1: FLdRfVar var_A0
  loc_A3ECD4: LitVarStr var_9C, "ManzLita"
  loc_A3ECD9: PopAdLdVar
  loc_A3ECDA: FLdRfVar var_8C
  loc_A3ECDD: FLdPr Me
  loc_A3ECE0: MemLdPr global_52
  loc_A3ECE3:  = Me.Fields
  loc_A3ECE8: FLdPr var_8C
  loc_A3ECEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3ECF0: FLdPr var_A0
  loc_A3ECF3:  = Me.Value
  loc_A3ECF8: FLdRfVar var_B0
  loc_A3ECFB: CStrVarTmp
  loc_A3ECFC: FStStr var_88
  loc_A3ECFF: FFreeAd var_8C = ""
  loc_A3ED06: FFree1Var var_B0 = ""
  loc_A3ED09: ExitProcCbHresult
End Sub

Public Property Get CasaLita() 'A3CC94
  'Data Table: 4BE97C
  loc_A3CC50: ZeroRetVal
  loc_A3CC52: FLdRfVar var_B0
  loc_A3CC55: FLdRfVar var_A0
  loc_A3CC58: LitVarStr var_9C, "CasaLita"
  loc_A3CC5D: PopAdLdVar
  loc_A3CC5E: FLdRfVar var_8C
  loc_A3CC61: FLdPr Me
  loc_A3CC64: MemLdPr global_52
  loc_A3CC67:  = Me.Fields
  loc_A3CC6C: FLdPr var_8C
  loc_A3CC6F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CC74: FLdPr var_A0
  loc_A3CC77:  = Me.Value
  loc_A3CC7C: FLdRfVar var_B0
  loc_A3CC7F: CStrVarTmp
  loc_A3CC80: FStStr var_88
  loc_A3CC83: FFreeAd var_8C = ""
  loc_A3CC8A: FFree1Var var_B0 = ""
  loc_A3CC8D: ExitProcCbHresult
End Sub

Public Property Get UbicLita() 'A3E3C8
  'Data Table: 4BE97C
  loc_A3E384: ZeroRetVal
  loc_A3E386: FLdRfVar var_B0
  loc_A3E389: FLdRfVar var_A0
  loc_A3E38C: LitVarStr var_9C, "UbicLita"
  loc_A3E391: PopAdLdVar
  loc_A3E392: FLdRfVar var_8C
  loc_A3E395: FLdPr Me
  loc_A3E398: MemLdPr global_52
  loc_A3E39B:  = Me.Fields
  loc_A3E3A0: FLdPr var_8C
  loc_A3E3A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E3A8: FLdPr var_A0
  loc_A3E3AB:  = Me.Value
  loc_A3E3B0: FLdRfVar var_B0
  loc_A3E3B3: CStrVarTmp
  loc_A3E3B4: FStStr var_88
  loc_A3E3B7: FFreeAd var_8C = ""
  loc_A3E3BE: FFree1Var var_B0 = ""
  loc_A3E3C1: ExitProcCbHresult
  loc_A3E3C7: ConcatStr
End Sub

Public Property Get CodiLoca() 'A2E8A4
  'Data Table: 4BE97C
  loc_A2E860: FLdRfVar var_B0
  loc_A2E863: FLdRfVar var_A0
  loc_A2E866: LitVarStr var_9C, "CodiLoca"
  loc_A2E86B: PopAdLdVar
  loc_A2E86C: FLdRfVar var_8C
  loc_A2E86F: FLdPr Me
  loc_A2E872: MemLdPr global_52
  loc_A2E875:  = Me.Fields
  loc_A2E87A: FLdPr var_8C
  loc_A2E87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E882: FLdPr var_A0
  loc_A2E885:  = Me.Value
  loc_A2E88A: FLdRfVar var_B0
  loc_A2E88D: CI2Var
  loc_A2E88E: FStI2 var_86
  loc_A2E891: FFreeAd var_8C = ""
  loc_A2E898: FFree1Var var_B0 = ""
  loc_A2E89B: ExitProcCbHresult
  loc_A2E8A1: ConcatStr
  loc_A2E8A2: FStStrNoPop CodiLocaD0
End Sub

Public Property Get LocaLita() 'A3E344
  'Data Table: 4BE97C
  loc_A3E300: ZeroRetVal
  loc_A3E302: FLdRfVar var_B0
  loc_A3E305: FLdRfVar var_A0
  loc_A3E308: LitVarStr var_9C, "LocaLita"
  loc_A3E30D: PopAdLdVar
  loc_A3E30E: FLdRfVar var_8C
  loc_A3E311: FLdPr Me
  loc_A3E314: MemLdPr global_52
  loc_A3E317:  = Me.Fields
  loc_A3E31C: FLdPr var_8C
  loc_A3E31F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E324: FLdPr var_A0
  loc_A3E327:  = Me.Value
  loc_A3E32C: FLdRfVar var_B0
  loc_A3E32F: CStrVarTmp
  loc_A3E330: FStStr var_88
  loc_A3E333: FFreeAd var_8C = ""
  loc_A3E33A: FFree1Var var_B0 = ""
  loc_A3E33D: ExitProcCbHresult
End Sub

Public Property Get CopoLita() 'A3E23C
  'Data Table: 4BE97C
  loc_A3E1F8: ZeroRetVal
  loc_A3E1FA: FLdRfVar var_B0
  loc_A3E1FD: FLdRfVar var_A0
  loc_A3E200: LitVarStr var_9C, "CopoLita"
  loc_A3E205: PopAdLdVar
  loc_A3E206: FLdRfVar var_8C
  loc_A3E209: FLdPr Me
  loc_A3E20C: MemLdPr global_52
  loc_A3E20F:  = Me.Fields
  loc_A3E214: FLdPr var_8C
  loc_A3E217: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E21C: FLdPr var_A0
  loc_A3E21F:  = Me.Value
  loc_A3E224: FLdRfVar var_B0
  loc_A3E227: CStrVarTmp
  loc_A3E228: FStStr var_88
  loc_A3E22B: FFreeAd var_8C = ""
  loc_A3E232: FFree1Var var_B0 = ""
  loc_A3E235: ExitProcCbHresult
End Sub

Public Property Get CallLitaReal() 'A14D10
  'Data Table: 4BE97C
  loc_A14CD8: ZeroRetValVar
  loc_A14CDA: FLdRfVar var_AC
  loc_A14CDD: LitVarStr var_A8, "CallLitaReal"
  loc_A14CE2: PopAdLdVar
  loc_A14CE3: FLdRfVar var_98
  loc_A14CE6: FLdPr Me
  loc_A14CE9: MemLdPr global_52
  loc_A14CEC:  = Me.Fields
  loc_A14CF1: FLdPr var_98
  loc_A14CF4: from_stack_2 = Me.Item(from_stack_1)
  loc_A14CF9: FLdZeroAd var_AC
  loc_A14CFC: CVarAd
  loc_A14D00: FStVar CallLitaReal
  loc_A14D04: FFree1Ad var_98
  loc_A14D07: ExitProcCbHresult
  loc_A14D0D: FStStrNoPop var_F4
End Sub

Public Property Get NucaLitaReal() 'A3DB04
  'Data Table: 4BE97C
  loc_A3DAC0: ZeroRetVal
  loc_A3DAC2: FLdRfVar var_B0
  loc_A3DAC5: FLdRfVar var_A0
  loc_A3DAC8: LitVarStr var_9C, "NucaLitaReal"
  loc_A3DACD: PopAdLdVar
  loc_A3DACE: FLdRfVar var_8C
  loc_A3DAD1: FLdPr Me
  loc_A3DAD4: MemLdPr global_52
  loc_A3DAD7:  = Me.Fields
  loc_A3DADC: FLdPr var_8C
  loc_A3DADF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DAE4: FLdPr var_A0
  loc_A3DAE7:  = Me.Value
  loc_A3DAEC: FLdRfVar var_B0
  loc_A3DAEF: CStrVarTmp
  loc_A3DAF0: FStStr var_88
  loc_A3DAF3: FFreeAd var_8C = ""
  loc_A3DAFA: FFree1Var var_B0 = ""
  loc_A3DAFD: ExitProcCbHresult
End Sub

Public Property Get BarrLitaReal() 'A3D6E4
  'Data Table: 4BE97C
  loc_A3D6A0: ZeroRetVal
  loc_A3D6A2: FLdRfVar var_B0
  loc_A3D6A5: FLdRfVar var_A0
  loc_A3D6A8: LitVarStr var_9C, "BarrLitaReal"
  loc_A3D6AD: PopAdLdVar
  loc_A3D6AE: FLdRfVar var_8C
  loc_A3D6B1: FLdPr Me
  loc_A3D6B4: MemLdPr global_52
  loc_A3D6B7:  = Me.Fields
  loc_A3D6BC: FLdPr var_8C
  loc_A3D6BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D6C4: FLdPr var_A0
  loc_A3D6C7:  = Me.Value
  loc_A3D6CC: FLdRfVar var_B0
  loc_A3D6CF: CStrVarTmp
  loc_A3D6D0: FStStr var_88
  loc_A3D6D3: FFreeAd var_8C = ""
  loc_A3D6DA: FFree1Var var_B0 = ""
  loc_A3D6DD: ExitProcCbHresult
  loc_A3D6E3: GtR4
End Sub

Public Property Get ManzLitaReal() 'A3D5DC
  'Data Table: 4BE97C
  loc_A3D598: ZeroRetVal
  loc_A3D59A: FLdRfVar var_B0
  loc_A3D59D: FLdRfVar var_A0
  loc_A3D5A0: LitVarStr var_9C, "ManzLitaReal"
  loc_A3D5A5: PopAdLdVar
  loc_A3D5A6: FLdRfVar var_8C
  loc_A3D5A9: FLdPr Me
  loc_A3D5AC: MemLdPr global_52
  loc_A3D5AF:  = Me.Fields
  loc_A3D5B4: FLdPr var_8C
  loc_A3D5B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D5BC: FLdPr var_A0
  loc_A3D5BF:  = Me.Value
  loc_A3D5C4: FLdRfVar var_B0
  loc_A3D5C7: CStrVarTmp
  loc_A3D5C8: FStStr var_88
  loc_A3D5CB: FFreeAd var_8C = ""
  loc_A3D5D2: FFree1Var var_B0 = ""
  loc_A3D5D5: ExitProcCbHresult
End Sub

Public Property Get CasaLitaReal() 'A3D450
  'Data Table: 4BE97C
  loc_A3D40C: ZeroRetVal
  loc_A3D40E: FLdRfVar var_B0
  loc_A3D411: FLdRfVar var_A0
  loc_A3D414: LitVarStr var_9C, "CasaLitaReal"
  loc_A3D419: PopAdLdVar
  loc_A3D41A: FLdRfVar var_8C
  loc_A3D41D: FLdPr Me
  loc_A3D420: MemLdPr global_52
  loc_A3D423:  = Me.Fields
  loc_A3D428: FLdPr var_8C
  loc_A3D42B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D430: FLdPr var_A0
  loc_A3D433:  = Me.Value
  loc_A3D438: FLdRfVar var_B0
  loc_A3D43B: CStrVarTmp
  loc_A3D43C: FStStr var_88
  loc_A3D43F: FFreeAd var_8C = ""
  loc_A3D446: FFree1Var var_B0 = ""
  loc_A3D449: ExitProcCbHresult
End Sub

Public Property Get UbicLitaReal() 'A3D2C4
  'Data Table: 4BE97C
  loc_A3D280: ZeroRetVal
  loc_A3D282: FLdRfVar var_B0
  loc_A3D285: FLdRfVar var_A0
  loc_A3D288: LitVarStr var_9C, "UbicLitaReal"
  loc_A3D28D: PopAdLdVar
  loc_A3D28E: FLdRfVar var_8C
  loc_A3D291: FLdPr Me
  loc_A3D294: MemLdPr global_52
  loc_A3D297:  = Me.Fields
  loc_A3D29C: FLdPr var_8C
  loc_A3D29F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D2A4: FLdPr var_A0
  loc_A3D2A7:  = Me.Value
  loc_A3D2AC: FLdRfVar var_B0
  loc_A3D2AF: CStrVarTmp
  loc_A3D2B0: FStStr var_88
  loc_A3D2B3: FFreeAd var_8C = ""
  loc_A3D2BA: FFree1Var var_B0 = ""
  loc_A3D2BD: ExitProcCbHresult
End Sub

Public Property Get LocaLitaReal() 'A3D240
  'Data Table: 4BE97C
  loc_A3D1FC: ZeroRetVal
  loc_A3D1FE: FLdRfVar var_B0
  loc_A3D201: FLdRfVar var_A0
  loc_A3D204: LitVarStr var_9C, "LocaLitaReal"
  loc_A3D209: PopAdLdVar
  loc_A3D20A: FLdRfVar var_8C
  loc_A3D20D: FLdPr Me
  loc_A3D210: MemLdPr global_52
  loc_A3D213:  = Me.Fields
  loc_A3D218: FLdPr var_8C
  loc_A3D21B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D220: FLdPr var_A0
  loc_A3D223:  = Me.Value
  loc_A3D228: FLdRfVar var_B0
  loc_A3D22B: CStrVarTmp
  loc_A3D22C: FStStr var_88
  loc_A3D22F: FFreeAd var_8C = ""
  loc_A3D236: FFree1Var var_B0 = ""
  loc_A3D239: ExitProcCbHresult
End Sub

Public Property Get CopoLitaReal() 'A3CFAC
  'Data Table: 4BE97C
  loc_A3CF68: ZeroRetVal
  loc_A3CF6A: FLdRfVar var_B0
  loc_A3CF6D: FLdRfVar var_A0
  loc_A3CF70: LitVarStr var_9C, "CopoLitaReal"
  loc_A3CF75: PopAdLdVar
  loc_A3CF76: FLdRfVar var_8C
  loc_A3CF79: FLdPr Me
  loc_A3CF7C: MemLdPr global_52
  loc_A3CF7F:  = Me.Fields
  loc_A3CF84: FLdPr var_8C
  loc_A3CF87: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CF8C: FLdPr var_A0
  loc_A3CF8F:  = Me.Value
  loc_A3CF94: FLdRfVar var_B0
  loc_A3CF97: CStrVarTmp
  loc_A3CF98: FStStr var_88
  loc_A3CF9B: FFreeAd var_8C = ""
  loc_A3CFA2: FFree1Var var_B0 = ""
  loc_A3CFA5: ExitProcCbHresult
End Sub

Public Property Get CodiRyB() 'A3CF28
  'Data Table: 4BE97C
  loc_A3CEE4: ZeroRetVal
  loc_A3CEE6: FLdRfVar var_B0
  loc_A3CEE9: FLdRfVar var_A0
  loc_A3CEEC: LitVarStr var_9C, "CodiRyB"
  loc_A3CEF1: PopAdLdVar
  loc_A3CEF2: FLdRfVar var_8C
  loc_A3CEF5: FLdPr Me
  loc_A3CEF8: MemLdPr global_52
  loc_A3CEFB:  = Me.Fields
  loc_A3CF00: FLdPr var_8C
  loc_A3CF03: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CF08: FLdPr var_A0
  loc_A3CF0B:  = Me.Value
  loc_A3CF10: FLdRfVar var_B0
  loc_A3CF13: CStrVarTmp
  loc_A3CF14: FStStr var_88
  loc_A3CF17: FFreeAd var_8C = ""
  loc_A3CF1E: FFree1Var var_B0 = ""
  loc_A3CF21: ExitProcCbHresult
End Sub

Public Property Get DetaRyB() 'A3CE20
  'Data Table: 4BE97C
  loc_A3CDDC: ZeroRetVal
  loc_A3CDDE: FLdRfVar var_B0
  loc_A3CDE1: FLdRfVar var_A0
  loc_A3CDE4: LitVarStr var_9C, "DetaRyB"
  loc_A3CDE9: PopAdLdVar
  loc_A3CDEA: FLdRfVar var_8C
  loc_A3CDED: FLdPr Me
  loc_A3CDF0: MemLdPr global_52
  loc_A3CDF3:  = Me.Fields
  loc_A3CDF8: FLdPr var_8C
  loc_A3CDFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CE00: FLdPr var_A0
  loc_A3CE03:  = Me.Value
  loc_A3CE08: FLdRfVar var_B0
  loc_A3CE0B: CStrVarTmp
  loc_A3CE0C: FStStr var_88
  loc_A3CE0F: FFreeAd var_8C = ""
  loc_A3CE16: FFree1Var var_B0 = ""
  loc_A3CE19: ExitProcCbHresult
End Sub

Public Property Get AvalInmu() 'A3CC10
  'Data Table: 4BE97C
  loc_A3CBCC: ZeroRetVal
  loc_A3CBCE: FLdRfVar var_B0
  loc_A3CBD1: FLdRfVar var_A0
  loc_A3CBD4: LitVarStr var_9C, "AvalInmu"
  loc_A3CBD9: PopAdLdVar
  loc_A3CBDA: FLdRfVar var_8C
  loc_A3CBDD: FLdPr Me
  loc_A3CBE0: MemLdPr global_52
  loc_A3CBE3:  = Me.Fields
  loc_A3CBE8: FLdPr var_8C
  loc_A3CBEB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3CBF0: FLdPr var_A0
  loc_A3CBF3:  = Me.Value
  loc_A3CBF8: FLdRfVar var_B0
  loc_A3CBFB: CStrVarTmp
  loc_A3CBFC: FStStr var_88
  loc_A3CBFF: FFreeAd var_8C = ""
  loc_A3CC06: FFree1Var var_B0 = ""
  loc_A3CC09: ExitProcCbHresult
  loc_A3CC0F: NotI4
End Sub

Public Property Get PeriBole() 'A2E224
  'Data Table: 4BE97C
  loc_A2E1E0: FLdRfVar var_B0
  loc_A2E1E3: FLdRfVar var_A0
  loc_A2E1E6: LitVarStr var_9C, "PeriBole"
  loc_A2E1EB: PopAdLdVar
  loc_A2E1EC: FLdRfVar var_8C
  loc_A2E1EF: FLdPr Me
  loc_A2E1F2: MemLdPr global_52
  loc_A2E1F5:  = Me.Fields
  loc_A2E1FA: FLdPr var_8C
  loc_A2E1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E202: FLdPr var_A0
  loc_A2E205:  = Me.Value
  loc_A2E20A: FLdRfVar var_B0
  loc_A2E20D: CI2Var
  loc_A2E20E: FStI2 var_86
  loc_A2E211: FFreeAd var_8C = ""
  loc_A2E218: FFree1Var var_B0 = ""
  loc_A2E21B: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A2E1A4
  'Data Table: 4BE97C
  loc_A2E160: FLdRfVar var_B0
  loc_A2E163: FLdRfVar var_A0
  loc_A2E166: LitVarStr var_9C, "NumeBole"
  loc_A2E16B: PopAdLdVar
  loc_A2E16C: FLdRfVar var_8C
  loc_A2E16F: FLdPr Me
  loc_A2E172: MemLdPr global_52
  loc_A2E175:  = Me.Fields
  loc_A2E17A: FLdPr var_8C
  loc_A2E17D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E182: FLdPr var_A0
  loc_A2E185:  = Me.Value
  loc_A2E18A: FLdRfVar var_B0
  loc_A2E18D: CI4Var
  loc_A2E18F: FStR4 var_88
  loc_A2E192: FFreeAd var_8C = ""
  loc_A2E199: FFree1Var var_B0 = ""
  loc_A2E19C: ExitProcCbHresult
End Sub

Public Property Get EmitLita() 'A2E024
  'Data Table: 4BE97C
  loc_A2DFE0: FLdRfVar var_B0
  loc_A2DFE3: FLdRfVar var_A0
  loc_A2DFE6: LitVarStr var_9C, "EmitLita"
  loc_A2DFEB: PopAdLdVar
  loc_A2DFEC: FLdRfVar var_8C
  loc_A2DFEF: FLdPr Me
  loc_A2DFF2: MemLdPr global_52
  loc_A2DFF5:  = Me.Fields
  loc_A2DFFA: FLdPr var_8C
  loc_A2DFFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E002: FLdPr var_A0
  loc_A2E005:  = Me.Value
  loc_A2E00A: FLdRfVar var_B0
  loc_A2E00D: CUI1Var
  loc_A2E00F: FStUI1 var_86
  loc_A2E013: FFreeAd var_8C = ""
  loc_A2E01A: FFree1Var var_B0 = ""
  loc_A2E01D: ExitProcCbHresult
End Sub

Public Property Get PeriOrde() 'A2DD24
  'Data Table: 4BE97C
  loc_A2DCE0: FLdRfVar var_B0
  loc_A2DCE3: FLdRfVar var_A0
  loc_A2DCE6: LitVarStr var_9C, "PeriOrde"
  loc_A2DCEB: PopAdLdVar
  loc_A2DCEC: FLdRfVar var_8C
  loc_A2DCEF: FLdPr Me
  loc_A2DCF2: MemLdPr global_52
  loc_A2DCF5:  = Me.Fields
  loc_A2DCFA: FLdPr var_8C
  loc_A2DCFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DD02: FLdPr var_A0
  loc_A2DD05:  = Me.Value
  loc_A2DD0A: FLdRfVar var_B0
  loc_A2DD0D: CI2Var
  loc_A2DD0E: FStI2 var_86
  loc_A2DD11: FFreeAd var_8C = ""
  loc_A2DD18: FFree1Var var_B0 = ""
  loc_A2DD1B: ExitProcCbHresult
  loc_A2DD21: UMiCy
  loc_A2DD22: LtR8
End Sub

Public Property Get CodiSeca() 'A2DAA4
  'Data Table: 4BE97C
  loc_A2DA60: FLdRfVar var_B0
  loc_A2DA63: FLdRfVar var_A0
  loc_A2DA66: LitVarStr var_9C, "CodiSeca"
  loc_A2DA6B: PopAdLdVar
  loc_A2DA6C: FLdRfVar var_8C
  loc_A2DA6F: FLdPr Me
  loc_A2DA72: MemLdPr global_52
  loc_A2DA75:  = Me.Fields
  loc_A2DA7A: FLdPr var_8C
  loc_A2DA7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DA82: FLdPr var_A0
  loc_A2DA85:  = Me.Value
  loc_A2DA8A: FLdRfVar var_B0
  loc_A2DA8D: CI4Var
  loc_A2DA8F: FStR4 var_88
  loc_A2DA92: FFreeAd var_8C = ""
  loc_A2DA99: FFree1Var var_B0 = ""
  loc_A2DA9C: ExitProcCbHresult
  loc_A2DAA2: ExitProcI2
End Sub

Public Property Get NumeLtde() 'A2D924
  'Data Table: 4BE97C
  loc_A2D8E0: FLdRfVar var_B0
  loc_A2D8E3: FLdRfVar var_A0
  loc_A2D8E6: LitVarStr var_9C, "NumeLtde"
  loc_A2D8EB: PopAdLdVar
  loc_A2D8EC: FLdRfVar var_8C
  loc_A2D8EF: FLdPr Me
  loc_A2D8F2: MemLdPr global_52
  loc_A2D8F5:  = Me.Fields
  loc_A2D8FA: FLdPr var_8C
  loc_A2D8FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D902: FLdPr var_A0
  loc_A2D905:  = Me.Value
  loc_A2D90A: FLdRfVar var_B0
  loc_A2D90D: CI2Var
  loc_A2D90E: FStI2 var_86
  loc_A2D911: FFreeAd var_8C = ""
  loc_A2D918: FFree1Var var_B0 = ""
  loc_A2D91B: ExitProcCbHresult
End Sub

Public Property Get ImpoLtde() 'A2D8A4
  'Data Table: 4BE97C
  loc_A2D860: FLdRfVar var_B4
  loc_A2D863: FLdRfVar var_A4
  loc_A2D866: LitVarStr var_A0, "ImpoLtde"
  loc_A2D86B: PopAdLdVar
  loc_A2D86C: FLdRfVar var_90
  loc_A2D86F: FLdPr Me
  loc_A2D872: MemLdPr global_52
  loc_A2D875:  = Me.Fields
  loc_A2D87A: FLdPr var_90
  loc_A2D87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D882: FLdPr var_A4
  loc_A2D885:  = Me.Value
  loc_A2D88A: FLdRfVar var_B4
  loc_A2D88D: CR4Var
  loc_A2D88E: FStFPR8 var_8C
  loc_A2D891: FFreeAd var_90 = ""
  loc_A2D898: FFree1Var var_B4 = ""
  loc_A2D89B: ExitProcCbHresult
  loc_A2D8A1: UMiCy
  loc_A2D8A2: GeI4
  loc_A2D8A3: NotI4
End Sub

Public Property Get TotaBole() 'A2D6A4
  'Data Table: 4BE97C
  loc_A2D660: FLdRfVar var_B4
  loc_A2D663: FLdRfVar var_A4
  loc_A2D666: LitVarStr var_A0, "TotaBole"
  loc_A2D66B: PopAdLdVar
  loc_A2D66C: FLdRfVar var_90
  loc_A2D66F: FLdPr Me
  loc_A2D672: MemLdPr global_52
  loc_A2D675:  = Me.Fields
  loc_A2D67A: FLdPr var_90
  loc_A2D67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2D682: FLdPr var_A4
  loc_A2D685:  = Me.Value
  loc_A2D68A: FLdRfVar var_B4
  loc_A2D68D: CR4Var
  loc_A2D68E: FStFPR8 var_8C
  loc_A2D691: FFreeAd var_90 = ""
  loc_A2D698: FFree1Var var_B4 = ""
  loc_A2D69B: ExitProcCbHresult
  loc_A2D6A1: CI4Str
End Sub

Public Property Get DetaPers() 'A19540
  'Data Table: 4BE97C
  loc_A19508: ZeroRetValVar
  loc_A1950A: FLdRfVar var_AC
  loc_A1950D: LitVarStr var_A8, "DetaPers"
  loc_A19512: PopAdLdVar
  loc_A19513: FLdRfVar var_98
  loc_A19516: FLdPr Me
  loc_A19519: MemLdPr global_52
  loc_A1951C:  = Me.Fields
  loc_A19521: FLdPr var_98
  loc_A19524: from_stack_2 = Me.Item(from_stack_1)
  loc_A19529: FLdZeroAd var_AC
  loc_A1952C: CVarAd
  loc_A19530: FStVar DetaPers
  loc_A19534: FFree1Ad var_98
  loc_A19537: ExitProcCbHresult
End Sub

Public Property Get DetaEsin() 'A194C8
  'Data Table: 4BE97C
  loc_A19490: ZeroRetValVar
  loc_A19492: FLdRfVar var_AC
  loc_A19495: LitVarStr var_A8, "DetaEsin"
  loc_A1949A: PopAdLdVar
  loc_A1949B: FLdRfVar var_98
  loc_A1949E: FLdPr Me
  loc_A194A1: MemLdPr global_52
  loc_A194A4:  = Me.Fields
  loc_A194A9: FLdPr var_98
  loc_A194AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A194B1: FLdZeroAd var_AC
  loc_A194B4: CVarAd
  loc_A194B8: FStVar DetaEsin
  loc_A194BC: FFree1Ad var_98
  loc_A194BF: ExitProcCbHresult
End Sub

Public Property Get DetaExce() 'A19108
  'Data Table: 4BE97C
  loc_A190D0: ZeroRetValVar
  loc_A190D2: FLdRfVar var_AC
  loc_A190D5: LitVarStr var_A8, "DetaExce"
  loc_A190DA: PopAdLdVar
  loc_A190DB: FLdRfVar var_98
  loc_A190DE: FLdPr Me
  loc_A190E1: MemLdPr global_52
  loc_A190E4:  = Me.Fields
  loc_A190E9: FLdPr var_98
  loc_A190EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A190F1: FLdZeroAd var_AC
  loc_A190F4: CVarAd
  loc_A190F8: FStVar DetaExce
  loc_A190FC: FFree1Ad var_98
  loc_A190FF: ExitProcCbHresult
  loc_A19105: FnStrComp3Var
End Sub

Public Property Get PorcExce() 'A18E38
  'Data Table: 4BE97C
  loc_A18E00: ZeroRetValVar
  loc_A18E02: FLdRfVar var_AC
  loc_A18E05: LitVarStr var_A8, "PorcExce"
  loc_A18E0A: PopAdLdVar
  loc_A18E0B: FLdRfVar var_98
  loc_A18E0E: FLdPr Me
  loc_A18E11: MemLdPr global_52
  loc_A18E14:  = Me.Fields
  loc_A18E19: FLdPr var_98
  loc_A18E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18E21: FLdZeroAd var_AC
  loc_A18E24: CVarAd
  loc_A18E28: FStVar PorcExce
  loc_A18E2C: FFree1Ad var_98
  loc_A18E2F: ExitProcCbHresult
End Sub

Public Property Get FfexInmu() 'A16750
  'Data Table: 4BE97C
  loc_A16718: ZeroRetValVar
  loc_A1671A: FLdRfVar var_AC
  loc_A1671D: LitVarStr var_A8, "FfexInmu"
  loc_A16722: PopAdLdVar
  loc_A16723: FLdRfVar var_98
  loc_A16726: FLdPr Me
  loc_A16729: MemLdPr global_52
  loc_A1672C:  = Me.Fields
  loc_A16731: FLdPr var_98
  loc_A16734: from_stack_2 = Me.Item(from_stack_1)
  loc_A16739: FLdZeroAd var_AC
  loc_A1673C: CVarAd
  loc_A16740: FStVar FfexInmu
  loc_A16744: FFree1Ad var_98
  loc_A16747: ExitProcCbHresult
End Sub

Public Property Get CodiZoin() 'A15FD0
  'Data Table: 4BE97C
  loc_A15F98: ZeroRetValVar
  loc_A15F9A: FLdRfVar var_AC
  loc_A15F9D: LitVarStr var_A8, "CodiZoin"
  loc_A15FA2: PopAdLdVar
  loc_A15FA3: FLdRfVar var_98
  loc_A15FA6: FLdPr Me
  loc_A15FA9: MemLdPr global_52
  loc_A15FAC:  = Me.Fields
  loc_A15FB1: FLdPr var_98
  loc_A15FB4: from_stack_2 = Me.Item(from_stack_1)
  loc_A15FB9: FLdZeroAd var_AC
  loc_A15FBC: CVarAd
  loc_A15FC0: FStVar CodiZoin
  loc_A15FC4: FFree1Ad var_98
  loc_A15FC7: ExitProcCbHresult
End Sub

Public Property Get DetaZoin() 'A15EE0
  'Data Table: 4BE97C
  loc_A15EA8: ZeroRetValVar
  loc_A15EAA: FLdRfVar var_AC
  loc_A15EAD: LitVarStr var_A8, "DetaZoin"
  loc_A15EB2: PopAdLdVar
  loc_A15EB3: FLdRfVar var_98
  loc_A15EB6: FLdPr Me
  loc_A15EB9: MemLdPr global_52
  loc_A15EBC:  = Me.Fields
  loc_A15EC1: FLdPr var_98
  loc_A15EC4: from_stack_2 = Me.Item(from_stack_1)
  loc_A15EC9: FLdZeroAd var_AC
  loc_A15ECC: CVarAd
  loc_A15ED0: FStVar DetaZoin
  loc_A15ED4: FFree1Ad var_98
  loc_A15ED7: ExitProcCbHresult
End Sub

Public Property Get DetaConc() 'A15E68
  'Data Table: 4BE97C
  loc_A15E30: ZeroRetValVar
  loc_A15E32: FLdRfVar var_AC
  loc_A15E35: LitVarStr var_A8, "DetaConc"
  loc_A15E3A: PopAdLdVar
  loc_A15E3B: FLdRfVar var_98
  loc_A15E3E: FLdPr Me
  loc_A15E41: MemLdPr global_52
  loc_A15E44:  = Me.Fields
  loc_A15E49: FLdPr var_98
  loc_A15E4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15E51: FLdZeroAd var_AC
  loc_A15E54: CVarAd
  loc_A15E58: FStVar DetaConc
  loc_A15E5C: FFree1Ad var_98
  loc_A15E5F: ExitProcCbHresult
  loc_A15E65: SubCy
  loc_A15E66: LtR8
End Sub

Public Property Get DetaSeca() 'A1A710
  'Data Table: 4BE97C
  loc_A1A6D8: ZeroRetValVar
  loc_A1A6DA: FLdRfVar var_AC
  loc_A1A6DD: LitVarStr var_A8, "DetaSeca"
  loc_A1A6E2: PopAdLdVar
  loc_A1A6E3: FLdRfVar var_98
  loc_A1A6E6: FLdPr Me
  loc_A1A6E9: MemLdPr global_52
  loc_A1A6EC:  = Me.Fields
  loc_A1A6F1: FLdPr var_98
  loc_A1A6F4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A6F9: FLdZeroAd var_AC
  loc_A1A6FC: CVarAd
  loc_A1A700: FStVar DetaSeca
  loc_A1A704: FFree1Ad var_98
  loc_A1A707: ExitProcCbHresult
End Sub

Public Property Get ImpoSeca() 'A1ABC0
  'Data Table: 4BE97C
  loc_A1AB88: ZeroRetValVar
  loc_A1AB8A: FLdRfVar var_AC
  loc_A1AB8D: LitVarStr var_A8, "ImpoSeca"
  loc_A1AB92: PopAdLdVar
  loc_A1AB93: FLdRfVar var_98
  loc_A1AB96: FLdPr Me
  loc_A1AB99: MemLdPr global_52
  loc_A1AB9C:  = Me.Fields
  loc_A1ABA1: FLdPr var_98
  loc_A1ABA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1ABA9: FLdZeroAd var_AC
  loc_A1ABAC: CVarAd
  loc_A1ABB0: FStVar ImpoSeca
  loc_A1ABB4: FFree1Ad var_98
  loc_A1ABB7: ExitProcCbHresult
  loc_A1ABBD: BranchT loc_A1B059
End Sub

Public Property Get Bimestres() 'A13528
  'Data Table: 4BE97C
  loc_A134F0: ZeroRetValVar
  loc_A134F2: FLdRfVar var_AC
  loc_A134F5: LitVarStr var_A8, "Bimestres"
  loc_A134FA: PopAdLdVar
  loc_A134FB: FLdRfVar var_98
  loc_A134FE: FLdPr Me
  loc_A13501: MemLdPr global_52
  loc_A13504:  = Me.Fields
  loc_A13509: FLdPr var_98
  loc_A1350C: from_stack_2 = Me.Item(from_stack_1)
  loc_A13511: FLdZeroAd var_AC
  loc_A13514: CVarAd
  loc_A13518: FStVar Bimestres
  loc_A1351C: FFree1Ad var_98
  loc_A1351F: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A14EF0
  'Data Table: 4BE97C
  loc_A14EB8: ZeroRetValVar
  loc_A14EBA: FLdRfVar var_AC
  loc_A14EBD: LitVarStr var_A8, "Vinculo"
  loc_A14EC2: PopAdLdVar
  loc_A14EC3: FLdRfVar var_98
  loc_A14EC6: FLdPr Me
  loc_A14EC9: MemLdPr global_52
  loc_A14ECC:  = Me.Fields
  loc_A14ED1: FLdPr var_98
  loc_A14ED4: from_stack_2 = Me.Item(from_stack_1)
  loc_A14ED9: FLdZeroAd var_AC
  loc_A14EDC: CVarAd
  loc_A14EE0: FStVar Vinculo
  loc_A14EE4: FFree1Ad var_98
  loc_A14EE7: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A15D78
  'Data Table: 4BE97C
  loc_A15D40: ZeroRetValVar
  loc_A15D42: FLdRfVar var_AC
  loc_A15D45: LitVarStr var_A8, "CodiUsua"
  loc_A15D4A: PopAdLdVar
  loc_A15D4B: FLdRfVar var_98
  loc_A15D4E: FLdPr Me
  loc_A15D51: MemLdPr global_52
  loc_A15D54:  = Me.Fields
  loc_A15D59: FLdPr var_98
  loc_A15D5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15D61: FLdZeroAd var_AC
  loc_A15D64: CVarAd
  loc_A15D68: FStVar CodiUsua
  loc_A15D6C: FFree1Ad var_98
  loc_A15D6F: ExitProcCbHresult
End Sub

Public Property Get RecaBole() 'A15418
  'Data Table: 4BE97C
  loc_A153E0: ZeroRetValVar
  loc_A153E2: FLdRfVar var_AC
  loc_A153E5: LitVarStr var_A8, "RecaBole"
  loc_A153EA: PopAdLdVar
  loc_A153EB: FLdRfVar var_98
  loc_A153EE: FLdPr Me
  loc_A153F1: MemLdPr global_52
  loc_A153F4:  = Me.Fields
  loc_A153F9: FLdPr var_98
  loc_A153FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A15401: FLdZeroAd var_AC
  loc_A15404: CVarAd
  loc_A15408: FStVar RecaBole
  loc_A1540C: FFree1Ad var_98
  loc_A1540F: ExitProcCbHresult
End Sub

Public Property Get BombLita() 'A15238
  'Data Table: 4BE97C
  loc_A15200: ZeroRetValVar
  loc_A15202: FLdRfVar var_AC
  loc_A15205: LitVarStr var_A8, "BombLita"
  loc_A1520A: PopAdLdVar
  loc_A1520B: FLdRfVar var_98
  loc_A1520E: FLdPr Me
  loc_A15211: MemLdPr global_52
  loc_A15214:  = Me.Fields
  loc_A15219: FLdPr var_98
  loc_A1521C: from_stack_2 = Me.Item(from_stack_1)
  loc_A15221: FLdZeroAd var_AC
  loc_A15224: CVarAd
  loc_A15228: FStVar BombLita
  loc_A1522C: FFree1Ad var_98
  loc_A1522F: ExitProcCbHresult
End Sub

Public Property Get TasaGral() 'A13438
  'Data Table: 4BE97C
  loc_A13400: ZeroRetValVar
  loc_A13402: FLdRfVar var_AC
  loc_A13405: LitVarStr var_A8, "TasaGral"
  loc_A1340A: PopAdLdVar
  loc_A1340B: FLdRfVar var_98
  loc_A1340E: FLdPr Me
  loc_A13411: MemLdPr global_52
  loc_A13414:  = Me.Fields
  loc_A13419: FLdPr var_98
  loc_A1341C: from_stack_2 = Me.Item(from_stack_1)
  loc_A13421: FLdZeroAd var_AC
  loc_A13424: CVarAd
  loc_A13428: FStVar TasaGral
  loc_A1342C: FFree1Ad var_98
  loc_A1342F: ExitProcCbHresult
End Sub

Public Property Get InfUrbana() 'A14E78
  'Data Table: 4BE97C
  loc_A14E40: ZeroRetValVar
  loc_A14E42: FLdRfVar var_AC
  loc_A14E45: LitVarStr var_A8, "InfUrbana"
  loc_A14E4A: PopAdLdVar
  loc_A14E4B: FLdRfVar var_98
  loc_A14E4E: FLdPr Me
  loc_A14E51: MemLdPr global_52
  loc_A14E54:  = Me.Fields
  loc_A14E59: FLdPr var_98
  loc_A14E5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14E61: FLdZeroAd var_AC
  loc_A14E64: CVarAd
  loc_A14E68: FStVar InfUrbana
  loc_A14E6C: FFree1Ad var_98
  loc_A14E6F: ExitProcCbHresult
End Sub

Public Property Get AlPublico() 'A12E20
  'Data Table: 4BE97C
  loc_A12DE8: ZeroRetValVar
  loc_A12DEA: FLdRfVar var_AC
  loc_A12DED: LitVarStr var_A8, "AlPublico"
  loc_A12DF2: PopAdLdVar
  loc_A12DF3: FLdRfVar var_98
  loc_A12DF6: FLdPr Me
  loc_A12DF9: MemLdPr global_52
  loc_A12DFC:  = Me.Fields
  loc_A12E01: FLdPr var_98
  loc_A12E04: from_stack_2 = Me.Item(from_stack_1)
  loc_A12E09: FLdZeroAd var_AC
  loc_A12E0C: CVarAd
  loc_A12E10: FStVar AlPublico
  loc_A12E14: FFree1Ad var_98
  loc_A12E17: ExitProcCbHresult
End Sub

Public Property Get ServAgua() 'A140E0
  'Data Table: 4BE97C
  loc_A140A8: ZeroRetValVar
  loc_A140AA: FLdRfVar var_AC
  loc_A140AD: LitVarStr var_A8, "ServAgua"
  loc_A140B2: PopAdLdVar
  loc_A140B3: FLdRfVar var_98
  loc_A140B6: FLdPr Me
  loc_A140B9: MemLdPr global_52
  loc_A140BC:  = Me.Fields
  loc_A140C1: FLdPr var_98
  loc_A140C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A140C9: FLdZeroAd var_AC
  loc_A140CC: CVarAd
  loc_A140D0: FStVar ServAgua
  loc_A140D4: FFree1Ad var_98
  loc_A140D7: ExitProcCbHresult
  loc_A140DD: Ary1LdCy
  loc_A140DE: ImpAdLdPr unk_4BED7D
End Sub

Public Property Get SobrAntena() 'A14068
  'Data Table: 4BE97C
  loc_A14030: ZeroRetValVar
  loc_A14032: FLdRfVar var_AC
  loc_A14035: LitVarStr var_A8, "SobrAntena"
  loc_A1403A: PopAdLdVar
  loc_A1403B: FLdRfVar var_98
  loc_A1403E: FLdPr Me
  loc_A14041: MemLdPr global_52
  loc_A14044:  = Me.Fields
  loc_A14049: FLdPr var_98
  loc_A1404C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14051: FLdZeroAd var_AC
  loc_A14054: CVarAd
  loc_A14058: FStVar SobrAntena
  loc_A1405C: FFree1Ad var_98
  loc_A1405F: ExitProcCbHresult
End Sub

Public Property Get CEmision() 'A12DA8
  'Data Table: 4BE97C
  loc_A12D70: ZeroRetValVar
  loc_A12D72: FLdRfVar var_AC
  loc_A12D75: LitVarStr var_A8, "CEmision"
  loc_A12D7A: PopAdLdVar
  loc_A12D7B: FLdRfVar var_98
  loc_A12D7E: FLdPr Me
  loc_A12D81: MemLdPr global_52
  loc_A12D84:  = Me.Fields
  loc_A12D89: FLdPr var_98
  loc_A12D8C: from_stack_2 = Me.Item(from_stack_1)
  loc_A12D91: FLdZeroAd var_AC
  loc_A12D94: CVarAd
  loc_A12D98: FStVar CEmision
  loc_A12D9C: FFree1Ad var_98
  loc_A12D9F: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc) 'ACC050
  'Data Table: 4BE97C
  loc_ACBF74: ILdRf CodiConc
  loc_ACBF77: FStStrCopy var_8C
  loc_ACBF7A: ZeroRetVal
  loc_ACBF7C: LitStr "SELECT PeriLiqu FROM liqutasa WHERE PeriLiqu = "
  loc_ACBF7F: FLdI2 PeriLiqu
  loc_ACBF82: CStrUI1
  loc_ACBF84: FStStrNoPop var_90
  loc_ACBF87: ConcatStr
  loc_ACBF88: FStStrNoPop ValidaClave
  loc_ACBF8B: LitStr " AND BimeLiqu = "
  loc_ACBF8E: ConcatStr
  loc_ACBF8F: FStStrNoPop var_98
  loc_ACBF92: FLdUI1
  loc_ACBF96: CStrI2
  loc_ACBF98: FStStrNoPop var_9C
  loc_ACBF9B: ConcatStr
  loc_ACBF9C: FStStrNoPop var_A0
  loc_ACBF9F: LitStr " AND CodiTili = "
  loc_ACBFA2: ConcatStr
  loc_ACBFA3: FStStrNoPop var_A4
  loc_ACBFA6: FLdUI1
  loc_ACBFAA: CStrI2
  loc_ACBFAC: FStStrNoPop var_A8
  loc_ACBFAF: ConcatStr
  loc_ACBFB0: FStStrNoPop var_AC
  loc_ACBFB3: LitStr " AND NumeLiqu = "
  loc_ACBFB6: ConcatStr
  loc_ACBFB7: FStStrNoPop var_B0
  loc_ACBFBA: FLdUI1
  loc_ACBFBE: CStrI2
  loc_ACBFC0: FStStrNoPop var_B4
  loc_ACBFC3: ConcatStr
  loc_ACBFC4: FStStrNoPop var_B8
  loc_ACBFC7: LitStr " AND CodiInmu = "
  loc_ACBFCA: ConcatStr
  loc_ACBFCB: FStStrNoPop var_BC
  loc_ACBFCE: ILdRf CodiInmu
  loc_ACBFD1: CStrI4
  loc_ACBFD3: FStStrNoPop var_C0
  loc_ACBFD6: ConcatStr
  loc_ACBFD7: FStStrNoPop var_C4
  loc_ACBFDA: LitStr " AND CodiConc = '"
  loc_ACBFDD: ConcatStr
  loc_ACBFDE: FStStrNoPop var_C8
  loc_ACBFE1: ILdRf var_8C
  loc_ACBFE4: ConcatStr
  loc_ACBFE5: FStStrNoPop var_CC
  loc_ACBFE8: LitStr "' AND TipoVenc = "
  loc_ACBFEB: ConcatStr
  loc_ACBFEC: FStStrNoPop var_D0
  loc_ACBFEF: FLdI2 TipoVenc
  loc_ACBFF2: CStrUI1
  loc_ACBFF4: FStStrNoPop var_D4
  loc_ACBFF7: ConcatStr
  loc_ACBFF8: FStStrNoPop var_D8
  loc_ACBFFB: Call EjecutarRsCls(from_stack_1v)
  loc_ACC000: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_ACC029: FLdRfVar var_DC
  loc_ACC02C: FLdPr Me
  loc_ACC02F: MemLdPr global_56
  loc_ACC032:  = Me.RecordCount
  loc_ACC037: ILdRf var_DC
  loc_ACC03A: LitI4 0
  loc_ACC03F: GtI4
  loc_ACC040: BranchF loc_ACC049
  loc_ACC043: LitStr "LA LIQUIDACION DE INMUEBLE YA EXISTE. Reintente..."
  loc_ACC046: FStStrCopy var_88
  loc_ACC049: ExitProcCbHresult
End Function

Public Function NuevoRegistroLitaDeta(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc, PeriOrde, CodiSeca) 'AFD4F8
  'Data Table: 4BE97C
  loc_AFD384: ILdRf CodiConc
  loc_AFD387: FStStrCopy var_8C
  loc_AFD38A: LitStr "SELECT NumeLtde FROM litadeta "
  loc_AFD38D: LitStr " WHERE PeriLiqu = "
  loc_AFD390: ConcatStr
  loc_AFD391: FStStrNoPop var_90
  loc_AFD394: FLdI2 PeriLiqu
  loc_AFD397: CStrUI1
  loc_AFD399: FStStrNoPop NuevoRegistroLitaDeta
  loc_AFD39C: ConcatStr
  loc_AFD39D: FStStrNoPop var_98
  loc_AFD3A0: LitStr " AND BimeLiqu = "
  loc_AFD3A3: ConcatStr
  loc_AFD3A4: FStStrNoPop var_9C
  loc_AFD3A7: FLdI2 BimeLiqu
  loc_AFD3AA: CStrUI1
  loc_AFD3AC: FStStrNoPop var_A0
  loc_AFD3AF: ConcatStr
  loc_AFD3B0: FStStrNoPop var_A4
  loc_AFD3B3: LitStr " AND CodiTili = "
  loc_AFD3B6: ConcatStr
  loc_AFD3B7: FStStrNoPop var_A8
  loc_AFD3BA: FLdI2 CodiTili
  loc_AFD3BD: CStrUI1
  loc_AFD3BF: FStStrNoPop var_AC
  loc_AFD3C2: ConcatStr
  loc_AFD3C3: FStStrNoPop var_B0
  loc_AFD3C6: LitStr " AND NumeLiqu = "
  loc_AFD3C9: ConcatStr
  loc_AFD3CA: FStStrNoPop var_B4
  loc_AFD3CD: FLdI2 NumeLiqu
  loc_AFD3D0: CStrUI1
  loc_AFD3D2: FStStrNoPop var_B8
  loc_AFD3D5: ConcatStr
  loc_AFD3D6: FStStrNoPop var_BC
  loc_AFD3D9: LitStr " AND CodiInmu = '"
  loc_AFD3DC: ConcatStr
  loc_AFD3DD: FStStrNoPop var_C0
  loc_AFD3E0: ILdRf CodiInmu
  loc_AFD3E3: CStrI4
  loc_AFD3E5: FStStrNoPop var_C4
  loc_AFD3E8: ConcatStr
  loc_AFD3E9: FStStrNoPop var_C8
  loc_AFD3EC: LitStr "'"
  loc_AFD3EF: ConcatStr
  loc_AFD3F0: FStStrNoPop var_CC
  loc_AFD3F3: LitStr " AND CodiConc = "
  loc_AFD3F6: ConcatStr
  loc_AFD3F7: FStStrNoPop var_D0
  loc_AFD3FA: ILdRf var_8C
  loc_AFD3FD: ConcatStr
  loc_AFD3FE: FStStrNoPop var_D4
  loc_AFD401: LitStr " AND TipoVenc = "
  loc_AFD404: ConcatStr
  loc_AFD405: FStStrNoPop var_D8
  loc_AFD408: FLdI2 TipoVenc
  loc_AFD40B: CStrUI1
  loc_AFD40D: FStStrNoPop var_DC
  loc_AFD410: ConcatStr
  loc_AFD411: FStStrNoPop var_E0
  loc_AFD414: LitStr " AND PeriOrde = "
  loc_AFD417: ConcatStr
  loc_AFD418: FStStrNoPop var_E4
  loc_AFD41B: FLdI2 PeriOrde
  loc_AFD41E: CStrUI1
  loc_AFD420: FStStrNoPop var_E8
  loc_AFD423: ConcatStr
  loc_AFD424: FStStrNoPop var_EC
  loc_AFD427: LitStr " AND CodiSeca = "
  loc_AFD42A: ConcatStr
  loc_AFD42B: FStStrNoPop var_F0
  loc_AFD42E: FLdI2 CodiSeca
  loc_AFD431: CStrUI1
  loc_AFD433: FStStrNoPop var_F4
  loc_AFD436: ConcatStr
  loc_AFD437: FStStrNoPop var_F8
  loc_AFD43A: LitStr " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, CodiConc, TipoVenc, PeriOrde, CodiSeca"
  loc_AFD43D: ConcatStr
  loc_AFD43E: FStStrNoPop var_FC
  loc_AFD441: Call EjecutarRsCls(from_stack_1v)
  loc_AFD446: FFreeStr var_90 = "": NuevoRegistroLitaDeta = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_AFD481: FLdRfVar var_100
  loc_AFD484: FLdPr Me
  loc_AFD487: MemLdPr global_56
  loc_AFD48A:  = Me.RecordCount
  loc_AFD48F: ILdRf var_100
  loc_AFD492: LitI4 0
  loc_AFD497: GtI4
  loc_AFD498: BranchF loc_AFD4EA
  loc_AFD49B: FLdPr Me
  loc_AFD49E: MemLdPr global_56
  loc_AFD4A1: Me.MoveLast
  loc_AFD4A6: FLdRfVar var_128
  loc_AFD4A9: FLdRfVar var_118
  loc_AFD4AC: LitVarStr var_114, "NumeLtde"
  loc_AFD4B1: PopAdLdVar
  loc_AFD4B2: FLdRfVar var_104
  loc_AFD4B5: FLdPr Me
  loc_AFD4B8: MemLdPr global_56
  loc_AFD4BB:  = Me.Fields
  loc_AFD4C0: FLdPr var_104
  loc_AFD4C3: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD4C8: FLdPr var_118
  loc_AFD4CB:  = Me.Value
  loc_AFD4D0: FLdRfVar var_128
  loc_AFD4D3: FnCByteVar
  loc_AFD4D5: CI2UI1
  loc_AFD4D7: LitI2_Byte 1
  loc_AFD4D9: AddI2
  loc_AFD4DA: FStI2 var_86
  loc_AFD4DD: FFreeAd var_104 = ""
  loc_AFD4E4: FFree1Var var_128 = ""
  loc_AFD4E7: Branch loc_AFD4EF
  loc_AFD4EA: LitI2_Byte 1
  loc_AFD4EC: FStI2 var_86
  loc_AFD4EF: ExitProcCbHresult
End Function

Public Sub BorraLiquidacion(PeriLiqu, CodiTili) 'B68624
  'Data Table: 4BE97C
  loc_B68298: LitStr "SELECT PeriLiqu, CodiOfic, CodiTili, NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_B6829B: FLdI2 PeriLiqu
  loc_B6829E: CStrUI1
  loc_B682A0: FStStrNoPop var_88
  loc_B682A3: ConcatStr
  loc_B682A4: FStStrNoPop var_8C
  loc_B682A7: LitStr " AND CodiOfic = 1 AND CodiTili = "
  loc_B682AA: ConcatStr
  loc_B682AB: FStStrNoPop var_90
  loc_B682AE: FLdUI1
  loc_B682B2: CStrI2
  loc_B682B4: FStStrNoPop var_94
  loc_B682B7: ConcatStr
  loc_B682B8: FStStrNoPop var_98
  loc_B682BB: LitStr " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu"
  loc_B682BE: ConcatStr
  loc_B682BF: FStStrNoPop var_9C
  loc_B682C2: Call EjecutarRsCls(from_stack_1v)
  loc_B682C7: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B682D6: FLdRfVar var_A0
  loc_B682D9: FLdPr Me
  loc_B682DC: MemLdPr global_56
  loc_B682DF:  = Me.RecordCount
  loc_B682E4: ILdRf var_A0
  loc_B682E7: LitI4 0
  loc_B682EC: GtI4
  loc_B682ED: BranchF loc_B68622
  loc_B682F0: LitStr " DELETE FROM liqutasa WHERE PeriLiqu = "
  loc_B682F3: FLdI2 PeriLiqu
  loc_B682F6: CStrUI1
  loc_B682F8: FStStrNoPop var_88
  loc_B682FB: ConcatStr
  loc_B682FC: FStStrNoPop var_8C
  loc_B682FF: LitStr " AND CodiTili = "
  loc_B68302: ConcatStr
  loc_B68303: FStStrNoPop var_90
  loc_B68306: FLdUI1
  loc_B6830A: CStrI2
  loc_B6830C: FStStrNoPop var_94
  loc_B6830F: ConcatStr
  loc_B68310: FStStrNoPop var_98
  loc_B68313: LitStr " AND NumeLiqu = "
  loc_B68316: ConcatStr
  loc_B68317: CVarStr var_D8
  loc_B6831A: FLdRfVar var_C8
  loc_B6831D: FLdRfVar var_B8
  loc_B68320: LitVarStr var_B4, "NumeLiqu"
  loc_B68325: PopAdLdVar
  loc_B68326: FLdRfVar var_A4
  loc_B68329: FLdPr Me
  loc_B6832C: MemLdPr global_56
  loc_B6832F:  = Me.Fields
  loc_B68334: FLdPr var_A4
  loc_B68337: from_stack_2 = Me.Item(from_stack_1)
  loc_B6833C: FLdPr var_B8
  loc_B6833F:  = Me.Value
  loc_B68344: FLdRfVar var_C8
  loc_B68347: ConcatVar var_E8
  loc_B6834B: LitVarStr var_F8, " AND ActuLita = 'No';"
  loc_B68350: ConcatVar var_108
  loc_B68354: LitVarStr var_118, " DELETE FROM litadeta WHERE PeriLiqu = "
  loc_B68359: ConcatVar var_128
  loc_B6835D: FLdI2 PeriLiqu
  loc_B68360: CVarI2 var_138
  loc_B68363: ConcatVar var_148
  loc_B68367: LitVarStr var_158, " AND CodiTili = "
  loc_B6836C: ConcatVar var_168
  loc_B68370: FLdUI1
  loc_B68374: CVarUI1
  loc_B68378: ConcatVar var_188
  loc_B6837C: LitVarStr var_198, " AND NumeLiqu = "
  loc_B68381: ConcatVar var_1A8
  loc_B68385: FLdRfVar var_1D0
  loc_B68388: FLdRfVar var_1C0
  loc_B6838B: LitVarStr var_1BC, "NumeLiqu"
  loc_B68390: PopAdLdVar
  loc_B68391: FLdRfVar var_1AC
  loc_B68394: FLdPr Me
  loc_B68397: MemLdPr global_56
  loc_B6839A:  = Me.Fields
  loc_B6839F: FLdPr var_1AC
  loc_B683A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B683A7: FLdPr var_1C0
  loc_B683AA:  = Me.Value
  loc_B683AF: FLdRfVar var_1D0
  loc_B683B2: ConcatVar var_1E0
  loc_B683B6: LitVarStr var_1F0, ";"
  loc_B683BB: ConcatVar var_200
  loc_B683BF: LitVarStr var_210, " DELETE FROM erroliqu WHERE PeriLiqu = "
  loc_B683C4: ConcatVar var_220
  loc_B683C8: FLdI2 PeriLiqu
  loc_B683CB: CVarI2 var_230
  loc_B683CE: ConcatVar var_240
  loc_B683D2: LitVarStr var_250, " AND CodiTili = "
  loc_B683D7: ConcatVar var_260
  loc_B683DB: FLdUI1
  loc_B683DF: CVarUI1
  loc_B683E3: ConcatVar var_280
  loc_B683E7: LitVarStr var_290, " AND NumeLiqu = "
  loc_B683EC: ConcatVar var_2A0
  loc_B683F0: FLdRfVar var_2C8
  loc_B683F3: FLdRfVar var_2B8
  loc_B683F6: LitVarStr var_2B4, "NumeLiqu"
  loc_B683FB: PopAdLdVar
  loc_B683FC: FLdRfVar var_2A4
  loc_B683FF: FLdPr Me
  loc_B68402: MemLdPr global_56
  loc_B68405:  = Me.Fields
  loc_B6840A: FLdPr var_2A4
  loc_B6840D: from_stack_2 = Me.Item(from_stack_1)
  loc_B68412: FLdPr var_2B8
  loc_B68415:  = Me.Value
  loc_B6841A: FLdRfVar var_2C8
  loc_B6841D: ConcatVar var_2D8
  loc_B68421: LitVarStr var_2E8, " AND CodiOfic = "
  loc_B68426: ConcatVar var_2F8
  loc_B6842A: FLdRfVar var_320
  loc_B6842D: FLdRfVar var_310
  loc_B68430: LitVarStr var_30C, "CodiOfic"
  loc_B68435: PopAdLdVar
  loc_B68436: FLdRfVar var_2FC
  loc_B68439: FLdPr Me
  loc_B6843C: MemLdPr global_56
  loc_B6843F:  = Me.Fields
  loc_B68444: FLdPr var_2FC
  loc_B68447: from_stack_2 = Me.Item(from_stack_1)
  loc_B6844C: FLdPr var_310
  loc_B6844F:  = Me.Value
  loc_B68454: FLdRfVar var_320
  loc_B68457: ConcatVar var_330
  loc_B6845B: LitVarStr var_340, ";"
  loc_B68460: ConcatVar var_350
  loc_B68464: LitVarStr var_360, " UPDATE recabole SET PeriLiqu = 0, BimeLiqu = 0, CodiTili = 0, NumeLiqu = 0 WHERE CodiOfic = 1 AND PeriLiqu = "
  loc_B68469: ConcatVar var_370
  loc_B6846D: FLdI2 PeriLiqu
  loc_B68470: CVarI2 var_380
  loc_B68473: ConcatVar var_390
  loc_B68477: LitVarStr var_3A0, " AND CodiTili = "
  loc_B6847C: ConcatVar var_3B0
  loc_B68480: FLdUI1
  loc_B68484: CVarUI1
  loc_B68488: ConcatVar var_3D0
  loc_B6848C: LitVarStr var_3E0, " AND NumeLiqu = "
  loc_B68491: ConcatVar var_3F0
  loc_B68495: FLdRfVar var_418
  loc_B68498: FLdRfVar var_408
  loc_B6849B: LitVarStr var_404, "NumeLiqu"
  loc_B684A0: PopAdLdVar
  loc_B684A1: FLdRfVar var_3F4
  loc_B684A4: FLdPr Me
  loc_B684A7: MemLdPr global_56
  loc_B684AA:  = Me.Fields
  loc_B684AF: FLdPr var_3F4
  loc_B684B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B684B7: FLdPr var_408
  loc_B684BA:  = Me.Value
  loc_B684BF: FLdRfVar var_418
  loc_B684C2: ConcatVar var_428
  loc_B684C6: LitVarStr var_438, " AND ActuRebo = 'No';"
  loc_B684CB: ConcatVar var_448
  loc_B684CF: LitVarStr var_458, " UPDATE pagoanti SET CodiTili = 0, NumeLiqu = 0 WHERE PeriLiqu = "
  loc_B684D4: ConcatVar var_468
  loc_B684D8: FLdI2 PeriLiqu
  loc_B684DB: CVarI2 var_478
  loc_B684DE: ConcatVar var_488
  loc_B684E2: LitVarStr var_498, " AND CodiTili = "
  loc_B684E7: ConcatVar var_4A8
  loc_B684EB: FLdUI1
  loc_B684EF: CVarUI1
  loc_B684F3: ConcatVar var_4C8
  loc_B684F7: LitVarStr var_4D8, " AND NumeLiqu = "
  loc_B684FC: ConcatVar var_4E8
  loc_B68500: FLdRfVar var_510
  loc_B68503: FLdRfVar var_500
  loc_B68506: LitVarStr var_4FC, "NumeLiqu"
  loc_B6850B: PopAdLdVar
  loc_B6850C: FLdRfVar var_4EC
  loc_B6850F: FLdPr Me
  loc_B68512: MemLdPr global_56
  loc_B68515:  = Me.Fields
  loc_B6851A: FLdPr var_4EC
  loc_B6851D: from_stack_2 = Me.Item(from_stack_1)
  loc_B68522: FLdPr var_500
  loc_B68525:  = Me.Value
  loc_B6852A: FLdRfVar var_510
  loc_B6852D: ConcatVar var_520
  loc_B68531: LitVarStr var_530, " AND (EstaPaan = 'Actualizado' OR EstaPaan = 'Liquidado');"
  loc_B68536: ConcatVar var_540
  loc_B6853A: LitVarStr var_550, " DELETE FROM liquidacion WHERE PeriLiqu = "
  loc_B6853F: ConcatVar var_560
  loc_B68543: FLdI2 PeriLiqu
  loc_B68546: CVarI2 var_570
  loc_B68549: ConcatVar var_580
  loc_B6854D: LitVarStr var_590, " AND CodiOfic = 1 AND CodiTili = "
  loc_B68552: ConcatVar var_5A0
  loc_B68556: FLdUI1
  loc_B6855A: CVarUI1
  loc_B6855E: ConcatVar var_5C0
  loc_B68562: LitVarStr var_5D0, " AND ActuLiqu = 'No' ORDER BY PeriLiqu, CodiTili, NumeLiqu;"
  loc_B68567: ConcatVar var_5E0
  loc_B6856B: CStrVarTmp
  loc_B6856C: FStStrNoPop var_9C
  loc_B6856F: FLdPr Me
  loc_B68572: MemStStrCopy
  loc_B68576: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B68585: FFreeAd var_A4 = "": var_B8 = "": var_1AC = "": var_1C0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_310 = "": var_3F4 = "": var_408 = "": var_4EC = ""
  loc_B685A0: FFreeVar var_448 = "": var_468 = "": var_488 = "": var_4A8 = "": var_4C8 = "": var_4E8 = "": var_510 = "": var_520 = "": var_540 = "": var_560 = "": var_580 = "": var_5A0 = "": var_5C0 = "": var_5E0 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_220 = "": var_240 = "": var_260 = "": var_280 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_370 = "": var_390 = "": var_3B0 = "": var_3D0 = "": var_3F0 = "": var_418 = ""
  loc_B685FB: OnErrorGoto loc_B68612
  loc_B685FE: FLdPr Me
  loc_B68601: MemLdStr global_80
  loc_B68604: Call EjecutarRsCls(from_stack_1v)
  loc_B68609: LitStr "COMMIT;"
  loc_B6860C: Call EjecutarRsCls(from_stack_1v)
  loc_B68611: ExitProcHresult
  loc_B68612: LitStr "ROLLBACK;"
  loc_B68615: Call EjecutarRsCls(from_stack_1v)
  loc_B6861A: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B6861D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B68622: ExitProcHresult
End Sub

Public Sub CreaErrorLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, DetaErli) 'A76B58
  'Data Table: 4BE97C
  loc_A76AE4: ILdRf DetaErli
  loc_A76AE7: FStStrCopy var_88
  loc_A76AEA: FLdRfVar var_92
  loc_A76AED: ILdRf CodiInmu
  loc_A76AF0: CStrI4
  loc_A76AF2: FStStrNoPop var_90
  loc_A76AF5: LitI2_Byte 1
  loc_A76AF7: CUI1I2
  loc_A76AF9: FLdUI1
  loc_A76AFD: CI2UI1
  loc_A76AFF: FLdUI1
  loc_A76B03: FLdUI1
  loc_A76B07: FLdI2 PeriLiqu
  loc_A76B0A: FLdRfVar var_8C
  loc_A76B0D: NewIfNullPr clserroliqu
  loc_A76B10: from_stack_7v = clserroliqu.NuevoRegistro(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A76B15: ILdRf var_88
  loc_A76B18: FLdI2 var_92
  loc_A76B1B: CUI1I2
  loc_A76B1D: ILdRf CodiInmu
  loc_A76B20: CStrI4
  loc_A76B22: FStStrNoPop var_98
  loc_A76B25: LitI2_Byte 1
  loc_A76B27: CUI1I2
  loc_A76B29: FLdUI1
  loc_A76B2D: CI2UI1
  loc_A76B2F: FLdUI1
  loc_A76B33: FLdUI1
  loc_A76B37: FLdI2 PeriLiqu
  loc_A76B3A: FLdRfVar var_8C
  loc_A76B3D: NewIfNullPr clserroliqu
  loc_A76B40: Call clserroliqu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A76B45: FFreeStr var_90 = ""
  loc_A76B4C: LitNothing
  loc_A76B4E: CastAd
  loc_A76B51: FStAdFunc var_8C
  loc_A76B54: ExitProcHresult
End Sub

Public Function BuscaDeudaParaLibreDeuda(CodiInmu) 'A4FFF0
  'Data Table: 4BE97C
  loc_A4FFA4: FLdRfVar var_A4
  loc_A4FFA7: LitStr "31/12/"
  loc_A4FFAA: ImpAdLdI2 MemVar_D93034
  loc_A4FFAD: LitI2_Byte 1
  loc_A4FFAF: SubI2
  loc_A4FFB0: CStrUI1
  loc_A4FFB2: FStStrNoPop BuscaDeudaParaLibreDeuda
  loc_A4FFB5: ConcatStr
  loc_A4FFB6: FStStrNoPop var_9C
  loc_A4FFB9: LitI4 0
  loc_A4FFBE: FLdI2 CodiInmu
  loc_A4FFC1: CStrUI1
  loc_A4FFC3: FStStrNoPop var_98
  loc_A4FFC6: LitI2_Byte 1
  loc_A4FFC8: FLdRfVar var_90
  loc_A4FFCB: NewIfNullPr clsctacte
  loc_A4FFCE: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A4FFD3: FLdFPR8 var_A4
  loc_A4FFD6: FStFPR8 var_8C
  loc_A4FFD9: FFreeStr BuscaDeudaParaLibreDeuda = "": var_98 = ""
  loc_A4FFE2: LitNothing
  loc_A4FFE4: CastAd
  loc_A4FFE7: FStAdFunc var_90
  loc_A4FFEA: ExitProcCbHresult
End Function

Public Function ImportedelCalculodelServicio(CodiInmu, NumeFrin, CodiSeca, CodiSein, CodiTili) 'C75ABC
  'Data Table: 4BE97C
  loc_C7492C: LitI2_Byte 0
  loc_C7492E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C74933: FStFPR8 var_1BC
  loc_C74936: LitI2_Byte 0
  loc_C74938: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C7493D: FStFPR8 var_1C4
  loc_C74940: LitStr "SELECT servinmu.CodiInmu, servinmu.CodiSeca, tipoliqu.GastTili , servcata.ImpoSeca * "
  loc_C74943: LitI4 0
  loc_C74948: LitI4 -1
  loc_C7494D: LitI4 1
  loc_C74952: LitStr "."
  loc_C74955: LitStr ","
  loc_C74958: ImpAdLdFPR8 MemVar_D93084
  loc_C7495B: CStrR8
  loc_C7495D: FStStrNoPop var_98
  loc_C74960: ImpAdCallI2 Replace(, , , , , )
  loc_C74965: FStStrNoPop var_9C
  loc_C74968: ConcatStr
  loc_C74969: FStStrNoPop var_A0
  loc_C7496C: LitStr " as ImpoSeca, "
  loc_C7496F: ConcatStr
  loc_C74970: FStStrNoPop var_A4
  loc_C74973: LitStr " tipoliqu.CogaTili, tariinmu.ImmeTain, inmueble.CodiEsin, RedeTain, FormSeca, CantSein"
  loc_C74976: ConcatStr
  loc_C74977: FStStrNoPop var_A8
  loc_C7497A: LitStr " FROM servinmu"
  loc_C7497D: ConcatStr
  loc_C7497E: FStStrNoPop var_AC
  loc_C74981: LitStr " LEFT JOIN servcata ON servcata.PeriOrde = "
  loc_C74984: ConcatStr
  loc_C74985: FStStrNoPop var_B0
  loc_C74988: ImpAdLdI2 MemVar_D93036
  loc_C7498B: CStrUI1
  loc_C7498D: FStStrNoPop var_B4
  loc_C74990: ConcatStr
  loc_C74991: FStStrNoPop var_B8
  loc_C74994: LitStr " AND servinmu.CodiSeca = servcata.CodiSeca "
  loc_C74997: ConcatStr
  loc_C74998: FStStrNoPop var_BC
  loc_C7499B: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 1 AND tipoliqu.CodiTili = servcata.CodiTili "
  loc_C7499E: ConcatStr
  loc_C7499F: FStStrNoPop var_C0
  loc_C749A2: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = servinmu.CodiInmu"
  loc_C749A5: ConcatStr
  loc_C749A6: FStStrNoPop var_C4
  loc_C749A9: LitStr " LEFT JOIN tariinmu ON tariinmu.CodiEsin = inmueble.CodiEsin"
  loc_C749AC: ConcatStr
  loc_C749AD: FStStrNoPop var_C8
  loc_C749B0: LitStr " AND tariinmu.CodiZoin = inmueble.CodiZoin"
  loc_C749B3: ConcatStr
  loc_C749B4: FStStrNoPop var_CC
  loc_C749B7: LitStr " WHERE servinmu.CodiInmu = "
  loc_C749BA: ConcatStr
  loc_C749BB: FStStrNoPop var_D0
  loc_C749BE: ILdRf CodiInmu
  loc_C749C1: CStrI4
  loc_C749C3: FStStrNoPop var_D4
  loc_C749C6: ConcatStr
  loc_C749C7: FStStrNoPop var_D8
  loc_C749CA: LitStr " AND servinmu.NumeFrin = "
  loc_C749CD: ConcatStr
  loc_C749CE: FStStrNoPop var_DC
  loc_C749D1: FLdI2 NumeFrin
  loc_C749D4: CStrUI1
  loc_C749D6: FStStrNoPop var_E0
  loc_C749D9: ConcatStr
  loc_C749DA: FStStrNoPop var_E4
  loc_C749DD: LitStr " AND servinmu.CodiSeca = "
  loc_C749E0: ConcatStr
  loc_C749E1: FStStrNoPop var_E8
  loc_C749E4: FLdI2 CodiSeca
  loc_C749E7: CStrUI1
  loc_C749E9: FStStrNoPop var_EC
  loc_C749EC: ConcatStr
  loc_C749ED: FStStrNoPop var_F0
  loc_C749F0: LitStr " AND servinmu.CodiSein = "
  loc_C749F3: ConcatStr
  loc_C749F4: FStStrNoPop var_F4
  loc_C749F7: FLdI2 CodiSein
  loc_C749FA: CStrUI1
  loc_C749FC: FStStrNoPop var_F8
  loc_C749FF: ConcatStr
  loc_C74A00: FStStrNoPop var_FC
  loc_C74A03: LitStr " AND FedeSein <= '"
  loc_C74A06: ConcatStr
  loc_C74A07: FStStrNoPop var_140
  loc_C74A0A: LitI4 1
  loc_C74A0F: LitI4 1
  loc_C74A14: LitVarStr var_12C, "yyyy-mm-dd"
  loc_C74A19: FStVarCopyObj var_13C
  loc_C74A1C: FLdRfVar var_13C
  loc_C74A1F: FLdFPR8 var_1BC
  loc_C74A22: CVarDate var_11C
  loc_C74A26: ImpAdCallI2 Format$(, )
  loc_C74A2B: FStStrNoPop var_144
  loc_C74A2E: ConcatStr
  loc_C74A2F: FStStrNoPop var_148
  loc_C74A32: LitStr "'"
  loc_C74A35: ConcatStr
  loc_C74A36: FStStrNoPop var_14C
  loc_C74A39: LitStr " AND (FehaSein > '"
  loc_C74A3C: ConcatStr
  loc_C74A3D: FStStrNoPop var_190
  loc_C74A40: LitI4 1
  loc_C74A45: LitI4 1
  loc_C74A4A: LitVarStr var_17C, "yyyy-mm-dd"
  loc_C74A4F: FStVarCopyObj var_18C
  loc_C74A52: FLdRfVar var_18C
  loc_C74A55: FLdFPR8 var_1C4
  loc_C74A58: CVarDate var_16C
  loc_C74A5C: ImpAdCallI2 Format$(, )
  loc_C74A61: FStStrNoPop var_194
  loc_C74A64: ConcatStr
  loc_C74A65: FStStrNoPop var_198
  loc_C74A68: LitStr "'"
  loc_C74A6B: ConcatStr
  loc_C74A6C: FStStrNoPop var_19C
  loc_C74A6F: LitStr " OR FehaSein IS NULL) "
  loc_C74A72: ConcatStr
  loc_C74A73: FStStrNoPop var_1A0
  loc_C74A76: LitStr " AND servcata.CodiTili = "
  loc_C74A79: ConcatStr
  loc_C74A7A: FStStrNoPop var_1A4
  loc_C74A7D: FLdI2 CodiTili
  loc_C74A80: CStrUI1
  loc_C74A82: FStStrNoPop var_1A8
  loc_C74A85: ConcatStr
  loc_C74A86: FStStrNoPop var_1AC
  loc_C74A89: LitStr " GROUP BY servinmu.CodiInmu"
  loc_C74A8C: ConcatStr
  loc_C74A8D: FStStrNoPop var_1B0
  loc_C74A90: LitStr " ORDER BY servinmu.CodiInmu, servinmu.CodiSeca"
  loc_C74A93: ConcatStr
  loc_C74A94: FStStrNoPop var_1B4
  loc_C74A97: Call EjecutarRsCls2(from_stack_1v)
  loc_C74A9C: FFreeStr var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_140 = "": var_144 = "": var_148 = ""
  loc_C74AEF: FFreeVar var_11C = "": var_13C = "": var_16C = ""
  loc_C74AFA: FLdRfVar var_1C8
  loc_C74AFD: FLdPr Me
  loc_C74B00: MemLdPr global_64
  loc_C74B03:  = Me.RecordCount
  loc_C74B08: ILdRf var_1C8
  loc_C74B0B: LitI4 0
  loc_C74B10: GtI4
  loc_C74B11: BranchF loc_C75AB0
  loc_C74B14: FLdRfVar var_11C
  loc_C74B17: FLdRfVar var_1D0
  loc_C74B1A: LitVarStr var_10C, "CodiSeca"
  loc_C74B1F: PopAdLdVar
  loc_C74B20: FLdRfVar var_1CC
  loc_C74B23: FLdPr Me
  loc_C74B26: MemLdPr global_64
  loc_C74B29:  = Me.Fields
  loc_C74B2E: FLdPr var_1CC
  loc_C74B31: from_stack_2 = Me.Item(from_stack_1)
  loc_C74B36: FLdPr var_1D0
  loc_C74B39:  = Me.Value
  loc_C74B3E: FLdRfVar var_11C
  loc_C74B41: FnCIntVar
  loc_C74B43: LitI2_Byte 1
  loc_C74B45: EqI2
  loc_C74B46: FLdRfVar var_13C
  loc_C74B49: FLdRfVar var_1D8
  loc_C74B4C: LitVarStr var_12C, "CodiEsin"
  loc_C74B51: PopAdLdVar
  loc_C74B52: FLdRfVar var_1D4
  loc_C74B55: FLdPr Me
  loc_C74B58: MemLdPr global_64
  loc_C74B5B:  = Me.Fields
  loc_C74B60: FLdPr var_1D4
  loc_C74B63: from_stack_2 = Me.Item(from_stack_1)
  loc_C74B68: FLdPr var_1D8
  loc_C74B6B:  = Me.Value
  loc_C74B70: FLdRfVar var_13C
  loc_C74B73: FnCIntVar
  loc_C74B75: LitI2_Byte 5
  loc_C74B77: EqI2
  loc_C74B78: AndI4
  loc_C74B79: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C74B84: FFreeVar var_11C = ""
  loc_C74B8B: BranchF loc_C74B97
  loc_C74B8E: LitI2_Byte 0
  loc_C74B90: CR8I2
  loc_C74B91: FStFPR8 var_8C
  loc_C74B94: Branch loc_C75AAD
  loc_C74B97: FLdRfVar var_11C
  loc_C74B9A: FLdRfVar var_1D0
  loc_C74B9D: LitVarStr var_10C, "CodiEsin"
  loc_C74BA2: PopAdLdVar
  loc_C74BA3: FLdRfVar var_1CC
  loc_C74BA6: FLdPr Me
  loc_C74BA9: MemLdPr global_64
  loc_C74BAC:  = Me.Fields
  loc_C74BB1: FLdPr var_1CC
  loc_C74BB4: from_stack_2 = Me.Item(from_stack_1)
  loc_C74BB9: FLdPr var_1D0
  loc_C74BBC:  = Me.Value
  loc_C74BC1: FLdRfVar var_11C
  loc_C74BC4: FnCIntVar
  loc_C74BC6: LitI2_Byte 1
  loc_C74BC8: EqI2
  loc_C74BC9: FLdRfVar var_13C
  loc_C74BCC: FLdRfVar var_1D8
  loc_C74BCF: LitVarStr var_12C, "CodiEsin"
  loc_C74BD4: PopAdLdVar
  loc_C74BD5: FLdRfVar var_1D4
  loc_C74BD8: FLdPr Me
  loc_C74BDB: MemLdPr global_64
  loc_C74BDE:  = Me.Fields
  loc_C74BE3: FLdPr var_1D4
  loc_C74BE6: from_stack_2 = Me.Item(from_stack_1)
  loc_C74BEB: FLdPr var_1D8
  loc_C74BEE:  = Me.Value
  loc_C74BF3: FLdRfVar var_13C
  loc_C74BF6: FnCIntVar
  loc_C74BF8: LitI2_Byte 2
  loc_C74BFA: EqI2
  loc_C74BFB: OrI4
  loc_C74BFC: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C74C07: FFreeVar var_11C = ""
  loc_C74C0E: BranchF loc_C74C6F
  loc_C74C11: LitVarStr var_12C, "SELECT NumeFrin, MetrFrin FROM freninmu WHERE CodiInmu = "
  loc_C74C16: FLdRfVar var_11C
  loc_C74C19: FLdRfVar var_1D0
  loc_C74C1C: LitVarStr var_10C, "CodiInmu"
  loc_C74C21: PopAdLdVar
  loc_C74C22: FLdRfVar var_1CC
  loc_C74C25: FLdPr Me
  loc_C74C28: MemLdPr global_64
  loc_C74C2B:  = Me.Fields
  loc_C74C30: FLdPr var_1CC
  loc_C74C33: from_stack_2 = Me.Item(from_stack_1)
  loc_C74C38: FLdPr var_1D0
  loc_C74C3B:  = Me.Value
  loc_C74C40: FLdRfVar var_11C
  loc_C74C43: ConcatVar var_13C
  loc_C74C47: LitVarStr var_15C, " ORDER BY MetrFrin desc"
  loc_C74C4C: ConcatVar var_16C
  loc_C74C50: CStrVarVal var_98
  loc_C74C54: Call EjecutarRsCls3(from_stack_1v)
  loc_C74C59: FFree1Str var_98
  loc_C74C5C: FFreeAd var_1CC = ""
  loc_C74C63: FFreeVar var_11C = "": var_13C = ""
  loc_C74C6C: Branch loc_C74D97
  loc_C74C6F: FLdRfVar var_11C
  loc_C74C72: FLdRfVar var_1D0
  loc_C74C75: LitVarStr var_10C, "CodiEsin"
  loc_C74C7A: PopAdLdVar
  loc_C74C7B: FLdRfVar var_1CC
  loc_C74C7E: FLdPr Me
  loc_C74C81: MemLdPr global_64
  loc_C74C84:  = Me.Fields
  loc_C74C89: FLdPr var_1CC
  loc_C74C8C: from_stack_2 = Me.Item(from_stack_1)
  loc_C74C91: FLdPr var_1D0
  loc_C74C94:  = Me.Value
  loc_C74C99: FLdRfVar var_11C
  loc_C74C9C: FnCIntVar
  loc_C74C9E: LitI2_Byte 5
  loc_C74CA0: EqI2
  loc_C74CA1: FLdRfVar var_13C
  loc_C74CA4: FLdRfVar var_1D8
  loc_C74CA7: LitVarStr var_12C, "CodiEsin"
  loc_C74CAC: PopAdLdVar
  loc_C74CAD: FLdRfVar var_1D4
  loc_C74CB0: FLdPr Me
  loc_C74CB3: MemLdPr global_64
  loc_C74CB6:  = Me.Fields
  loc_C74CBB: FLdPr var_1D4
  loc_C74CBE: from_stack_2 = Me.Item(from_stack_1)
  loc_C74CC3: FLdPr var_1D8
  loc_C74CC6:  = Me.Value
  loc_C74CCB: FLdRfVar var_13C
  loc_C74CCE: FnCIntVar
  loc_C74CD0: LitI2_Byte 9
  loc_C74CD2: EqI2
  loc_C74CD3: OrI4
  loc_C74CD4: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C74CDF: FFreeVar var_11C = ""
  loc_C74CE6: BranchF loc_C74D3C
  loc_C74CE9: LitVarStr var_12C, "SELECT NumeFrin, SUM(MetrFrin) as MetrFrin FROM freninmu WHERE CodiInmu = "
  loc_C74CEE: FLdRfVar var_11C
  loc_C74CF1: FLdRfVar var_1D0
  loc_C74CF4: LitVarStr var_10C, "CodiInmu"
  loc_C74CF9: PopAdLdVar
  loc_C74CFA: FLdRfVar var_1CC
  loc_C74CFD: FLdPr Me
  loc_C74D00: MemLdPr global_64
  loc_C74D03:  = Me.Fields
  loc_C74D08: FLdPr var_1CC
  loc_C74D0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C74D10: FLdPr var_1D0
  loc_C74D13:  = Me.Value
  loc_C74D18: FLdRfVar var_11C
  loc_C74D1B: ConcatVar var_13C
  loc_C74D1F: CStrVarVal var_98
  loc_C74D23: Call EjecutarRsCls3(from_stack_1v)
  loc_C74D28: FFree1Str var_98
  loc_C74D2B: FFreeAd var_1CC = ""
  loc_C74D32: FFreeVar var_11C = ""
  loc_C74D39: Branch loc_C74D97
  loc_C74D3C: LitVarStr var_12C, "SELECT NumeFrin, MetrFrin FROM freninmu WHERE CodiInmu = "
  loc_C74D41: FLdRfVar var_11C
  loc_C74D44: FLdRfVar var_1D0
  loc_C74D47: LitVarStr var_10C, "CodiInmu"
  loc_C74D4C: PopAdLdVar
  loc_C74D4D: FLdRfVar var_1CC
  loc_C74D50: FLdPr Me
  loc_C74D53: MemLdPr global_64
  loc_C74D56:  = Me.Fields
  loc_C74D5B: FLdPr var_1CC
  loc_C74D5E: from_stack_2 = Me.Item(from_stack_1)
  loc_C74D63: FLdPr var_1D0
  loc_C74D66:  = Me.Value
  loc_C74D6B: FLdRfVar var_11C
  loc_C74D6E: ConcatVar var_13C
  loc_C74D72: LitVarStr var_15C, " ORDER BY MetrFrin desc"
  loc_C74D77: ConcatVar var_16C
  loc_C74D7B: CStrVarVal var_98
  loc_C74D7F: Call EjecutarRsCls3(from_stack_1v)
  loc_C74D84: FFree1Str var_98
  loc_C74D87: FFreeAd var_1CC = ""
  loc_C74D8E: FFreeVar var_11C = "": var_13C = ""
  loc_C74D97: FLdRfVar var_1C8
  loc_C74D9A: FLdPr Me
  loc_C74D9D: MemLdPr global_68
  loc_C74DA0:  = Me.RecordCount
  loc_C74DA5: ILdRf var_1C8
  loc_C74DA8: LitI4 0
  loc_C74DAD: GtI4
  loc_C74DAE: BranchF loc_C75AAD
  loc_C74DB1: FLdRfVar var_11C
  loc_C74DB4: FLdRfVar var_1D0
  loc_C74DB7: LitVarStr var_10C, "MetrFrin"
  loc_C74DBC: PopAdLdVar
  loc_C74DBD: FLdRfVar var_1CC
  loc_C74DC0: FLdPr Me
  loc_C74DC3: MemLdPr global_68
  loc_C74DC6:  = Me.Fields
  loc_C74DCB: FLdPr var_1CC
  loc_C74DCE: from_stack_2 = Me.Item(from_stack_1)
  loc_C74DD3: FLdPr var_1D0
  loc_C74DD6:  = Me.Value
  loc_C74DDB: FLdRfVar var_11C
  loc_C74DDE: CR4Var
  loc_C74DDF: FStFPR8 ImportedelCalculodelServicio
  loc_C74DE2: FFreeAd var_1CC = ""
  loc_C74DE9: FFree1Var var_11C = ""
  loc_C74DEC: FLdRfVar var_11C
  loc_C74DEF: FLdRfVar var_1D0
  loc_C74DF2: LitVarStr var_10C, "CodiSeca"
  loc_C74DF7: PopAdLdVar
  loc_C74DF8: FLdRfVar var_1CC
  loc_C74DFB: FLdPr Me
  loc_C74DFE: MemLdPr global_64
  loc_C74E01:  = Me.Fields
  loc_C74E06: FLdPr var_1CC
  loc_C74E09: from_stack_2 = Me.Item(from_stack_1)
  loc_C74E0E: FLdPr var_1D0
  loc_C74E11:  = Me.Value
  loc_C74E16: FLdRfVar var_11C
  loc_C74E19: FnCIntVar
  loc_C74E1B: LitI2_Byte 1
  loc_C74E1D: EqI2
  loc_C74E1E: CVarBoolI2 var_17C
  loc_C74E22: FLdI2 NumeFrin
  loc_C74E25: CVarI2 var_15C
  loc_C74E28: HardType
  loc_C74E29: FLdRfVar var_13C
  loc_C74E2C: FLdRfVar var_1D8
  loc_C74E2F: LitVarStr var_12C, "NumeFrin"
  loc_C74E34: PopAdLdVar
  loc_C74E35: FLdRfVar var_1D4
  loc_C74E38: FLdPr Me
  loc_C74E3B: MemLdPr global_68
  loc_C74E3E:  = Me.Fields
  loc_C74E43: FLdPr var_1D4
  loc_C74E46: from_stack_2 = Me.Item(from_stack_1)
  loc_C74E4B: FLdPr var_1D8
  loc_C74E4E:  = Me.Value
  loc_C74E53: FLdRfVar var_13C
  loc_C74E56: NeVar var_16C
  loc_C74E5A: AndVar var_18C
  loc_C74E5E: CBoolVarNull
  loc_C74E60: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C74E6B: FFreeVar var_11C = "": var_13C = ""
  loc_C74E74: BranchF loc_C74E80
  loc_C74E77: LitI2_Byte 0
  loc_C74E79: CR8I2
  loc_C74E7A: FStFPR8 var_8C
  loc_C74E7D: Branch loc_C75AAD
  loc_C74E80: FLdRfVar var_1D0
  loc_C74E83: LitVarStr var_10C, "RedeTain"
  loc_C74E88: PopAdLdVar
  loc_C74E89: FLdRfVar var_1CC
  loc_C74E8C: FLdPr Me
  loc_C74E8F: MemLdPr global_64
  loc_C74E92:  = Me.Fields
  loc_C74E97: FLdPr var_1CC
  loc_C74E9A: from_stack_2 = Me.Item(from_stack_1)
  loc_C74E9F: FLdZeroAd var_1D0
  loc_C74EA2: CVarAd
  loc_C74EA6: ImpAdCallI2 IsNull()
  loc_C74EAB: FFree1Ad var_1CC
  loc_C74EAE: FFree1Var var_11C = ""
  loc_C74EB1: BranchF loc_C7526D
  loc_C74EB4: FLdRfVar var_11C
  loc_C74EB7: FLdRfVar var_1D0
  loc_C74EBA: LitVarStr var_10C, "FormSeca"
  loc_C74EBF: PopAdLdVar
  loc_C74EC0: FLdRfVar var_1CC
  loc_C74EC3: FLdPr Me
  loc_C74EC6: MemLdPr global_64
  loc_C74EC9:  = Me.Fields
  loc_C74ECE: FLdPr var_1CC
  loc_C74ED1: from_stack_2 = Me.Item(from_stack_1)
  loc_C74ED6: FLdPr var_1D0
  loc_C74ED9:  = Me.Value
  loc_C74EDE: FLdRfVar var_11C
  loc_C74EE1: FnCByteVar
  loc_C74EE3: CI2UI1
  loc_C74EE5: LitI2_Byte 0
  loc_C74EE7: EqI2
  loc_C74EE8: FFreeAd var_1CC = ""
  loc_C74EEF: FFree1Var var_11C = ""
  loc_C74EF2: BranchF loc_C75066
  loc_C74EF5: FLdRfVar var_1D0
  loc_C74EF8: LitVarStr var_10C, "ImmeTain"
  loc_C74EFD: PopAdLdVar
  loc_C74EFE: FLdRfVar var_1CC
  loc_C74F01: FLdPr Me
  loc_C74F04: MemLdPr global_64
  loc_C74F07:  = Me.Fields
  loc_C74F0C: FLdPr var_1CC
  loc_C74F0F: from_stack_2 = Me.Item(from_stack_1)
  loc_C74F14: FLdZeroAd var_1D0
  loc_C74F17: CVarAd
  loc_C74F1B: ImpAdCallI2 IsNull()
  loc_C74F20: FFree1Ad var_1CC
  loc_C74F23: FFree1Var var_11C = ""
  loc_C74F26: BranchF loc_C74F87
  loc_C74F29: FLdRfVar var_11C
  loc_C74F2C: FLdRfVar var_1D0
  loc_C74F2F: LitVarStr var_10C, "ImpoSeca"
  loc_C74F34: PopAdLdVar
  loc_C74F35: FLdRfVar var_1CC
  loc_C74F38: FLdPr Me
  loc_C74F3B: MemLdPr global_64
  loc_C74F3E:  = Me.Fields
  loc_C74F43: FLdPr var_1CC
  loc_C74F46: from_stack_2 = Me.Item(from_stack_1)
  loc_C74F4B: FLdPr var_1D0
  loc_C74F4E:  = Me.Value
  loc_C74F53: LitI4 2
  loc_C74F58: FLdRfVar var_11C
  loc_C74F5B: FnCDblVar
  loc_C74F5D: FLdFPR8 ImportedelCalculodelServicio
  loc_C74F60: MulR8
  loc_C74F61: CVarR8
  loc_C74F65: FLdRfVar var_16C
  loc_C74F68: ImpAdCallFPR4  = Round(, )
  loc_C74F6D: FLdRfVar var_16C
  loc_C74F70: CR4Var
  loc_C74F71: FStFPR8 var_8C
  loc_C74F74: FFreeAd var_1CC = ""
  loc_C74F7B: FFreeVar var_11C = "": var_13C = ""
  loc_C74F84: Branch loc_C75063
  loc_C74F87: FLdRfVar var_11C
  loc_C74F8A: FLdRfVar var_1D0
  loc_C74F8D: LitVarStr var_10C, "ImpoSeca"
  loc_C74F92: PopAdLdVar
  loc_C74F93: FLdRfVar var_1CC
  loc_C74F96: FLdPr Me
  loc_C74F99: MemLdPr global_64
  loc_C74F9C:  = Me.Fields
  loc_C74FA1: FLdPr var_1CC
  loc_C74FA4: from_stack_2 = Me.Item(from_stack_1)
  loc_C74FA9: FLdPr var_1D0
  loc_C74FAC:  = Me.Value
  loc_C74FB1: FLdRfVar var_13C
  loc_C74FB4: FLdRfVar var_1D8
  loc_C74FB7: LitVarStr var_12C, "ImmeTain"
  loc_C74FBC: PopAdLdVar
  loc_C74FBD: FLdRfVar var_1D4
  loc_C74FC0: FLdPr Me
  loc_C74FC3: MemLdPr global_64
  loc_C74FC6:  = Me.Fields
  loc_C74FCB: FLdPr var_1D4
  loc_C74FCE: from_stack_2 = Me.Item(from_stack_1)
  loc_C74FD3: FLdPr var_1D8
  loc_C74FD6:  = Me.Value
  loc_C74FDB: FLdRfVar var_200
  loc_C74FDE: FLdRfVar var_1F0
  loc_C74FE1: LitVarStr var_1EC, "ImpoSeca"
  loc_C74FE6: PopAdLdVar
  loc_C74FE7: FLdRfVar var_1DC
  loc_C74FEA: FLdPr Me
  loc_C74FED: MemLdPr global_64
  loc_C74FF0:  = Me.Fields
  loc_C74FF5: FLdPr var_1DC
  loc_C74FF8: from_stack_2 = Me.Item(from_stack_1)
  loc_C74FFD: FLdPr var_1F0
  loc_C75000:  = Me.Value
  loc_C75005: LitI4 2
  loc_C7500A: FLdRfVar var_11C
  loc_C7500D: FnCDblVar
  loc_C7500F: FLdFPR8 ImportedelCalculodelServicio
  loc_C75012: MulR8
  loc_C75013: CVarR8
  loc_C75017: FLdRfVar var_13C
  loc_C7501A: MulVar var_16C
  loc_C7501E: LitVarI2 var_17C, 100
  loc_C75023: DivVar var_18C
  loc_C75027: FLdRfVar var_200
  loc_C7502A: FnCDblVar
  loc_C7502C: FLdFPR8 ImportedelCalculodelServicio
  loc_C7502F: MulR8
  loc_C75030: CVarR8
  loc_C75034: AddVar var_220
  loc_C75038: FLdRfVar var_230
  loc_C7503B: ImpAdCallFPR4  = Round(, )
  loc_C75040: FLdRfVar var_230
  loc_C75043: CR4Var
  loc_C75044: FStFPR8 var_8C
  loc_C75047: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_C75056: FFreeVar var_11C = "": var_13C = "": var_200 = "": var_220 = ""
  loc_C75063: Branch loc_C7526A
  loc_C75066: FLdRfVar var_1D0
  loc_C75069: LitVarStr var_10C, "ImmeTain"
  loc_C7506E: PopAdLdVar
  loc_C7506F: FLdRfVar var_1CC
  loc_C75072: FLdPr Me
  loc_C75075: MemLdPr global_64
  loc_C75078:  = Me.Fields
  loc_C7507D: FLdPr var_1CC
  loc_C75080: from_stack_2 = Me.Item(from_stack_1)
  loc_C75085: FLdZeroAd var_1D0
  loc_C75088: CVarAd
  loc_C7508C: ImpAdCallI2 IsNull()
  loc_C75091: FFree1Ad var_1CC
  loc_C75094: FFree1Var var_11C = ""
  loc_C75097: BranchF loc_C7512A
  loc_C7509A: FLdRfVar var_11C
  loc_C7509D: FLdRfVar var_1D0
  loc_C750A0: LitVarStr var_10C, "ImpoSeca"
  loc_C750A5: PopAdLdVar
  loc_C750A6: FLdRfVar var_1CC
  loc_C750A9: FLdPr Me
  loc_C750AC: MemLdPr global_64
  loc_C750AF:  = Me.Fields
  loc_C750B4: FLdPr var_1CC
  loc_C750B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C750BC: FLdPr var_1D0
  loc_C750BF:  = Me.Value
  loc_C750C4: FLdRfVar var_13C
  loc_C750C7: FLdRfVar var_1D8
  loc_C750CA: LitVarStr var_12C, "CantSein"
  loc_C750CF: PopAdLdVar
  loc_C750D0: FLdRfVar var_1D4
  loc_C750D3: FLdPr Me
  loc_C750D6: MemLdPr global_64
  loc_C750D9:  = Me.Fields
  loc_C750DE: FLdPr var_1D4
  loc_C750E1: from_stack_2 = Me.Item(from_stack_1)
  loc_C750E6: FLdPr var_1D8
  loc_C750E9:  = Me.Value
  loc_C750EE: LitI4 2
  loc_C750F3: FLdRfVar var_11C
  loc_C750F6: FnCDblVar
  loc_C750F8: FLdRfVar var_13C
  loc_C750FB: FnCDblVar
  loc_C750FD: MulR8
  loc_C750FE: CVarR8
  loc_C75102: FLdRfVar var_18C
  loc_C75105: ImpAdCallFPR4  = Round(, )
  loc_C7510A: FLdRfVar var_18C
  loc_C7510D: CR4Var
  loc_C7510E: FStFPR8 var_8C
  loc_C75111: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C7511C: FFreeVar var_11C = "": var_13C = "": var_16C = ""
  loc_C75127: Branch loc_C7526A
  loc_C7512A: FLdRfVar var_11C
  loc_C7512D: FLdRfVar var_1D0
  loc_C75130: LitVarStr var_10C, "ImpoSeca"
  loc_C75135: PopAdLdVar
  loc_C75136: FLdRfVar var_1CC
  loc_C75139: FLdPr Me
  loc_C7513C: MemLdPr global_64
  loc_C7513F:  = Me.Fields
  loc_C75144: FLdPr var_1CC
  loc_C75147: from_stack_2 = Me.Item(from_stack_1)
  loc_C7514C: FLdPr var_1D0
  loc_C7514F:  = Me.Value
  loc_C75154: FLdRfVar var_13C
  loc_C75157: FLdRfVar var_1D8
  loc_C7515A: LitVarStr var_12C, "CantSein"
  loc_C7515F: PopAdLdVar
  loc_C75160: FLdRfVar var_1D4
  loc_C75163: FLdPr Me
  loc_C75166: MemLdPr global_64
  loc_C75169:  = Me.Fields
  loc_C7516E: FLdPr var_1D4
  loc_C75171: from_stack_2 = Me.Item(from_stack_1)
  loc_C75176: FLdPr var_1D8
  loc_C75179:  = Me.Value
  loc_C7517E: FLdRfVar var_16C
  loc_C75181: FLdRfVar var_1F0
  loc_C75184: LitVarStr var_15C, "ImmeTain"
  loc_C75189: PopAdLdVar
  loc_C7518A: FLdRfVar var_1DC
  loc_C7518D: FLdPr Me
  loc_C75190: MemLdPr global_64
  loc_C75193:  = Me.Fields
  loc_C75198: FLdPr var_1DC
  loc_C7519B: from_stack_2 = Me.Item(from_stack_1)
  loc_C751A0: FLdPr var_1F0
  loc_C751A3:  = Me.Value
  loc_C751A8: FLdRfVar var_220
  loc_C751AB: FLdRfVar var_238
  loc_C751AE: LitVarStr var_210, "ImpoSeca"
  loc_C751B3: PopAdLdVar
  loc_C751B4: FLdRfVar var_234
  loc_C751B7: FLdPr Me
  loc_C751BA: MemLdPr global_64
  loc_C751BD:  = Me.Fields
  loc_C751C2: FLdPr var_234
  loc_C751C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C751CA: FLdPr var_238
  loc_C751CD:  = Me.Value
  loc_C751D2: FLdRfVar var_230
  loc_C751D5: FLdRfVar var_250
  loc_C751D8: LitVarStr var_24C, "CantSein"
  loc_C751DD: PopAdLdVar
  loc_C751DE: FLdRfVar var_23C
  loc_C751E1: FLdPr Me
  loc_C751E4: MemLdPr global_64
  loc_C751E7:  = Me.Fields
  loc_C751EC: FLdPr var_23C
  loc_C751EF: from_stack_2 = Me.Item(from_stack_1)
  loc_C751F4: FLdPr var_250
  loc_C751F7:  = Me.Value
  loc_C751FC: LitI4 2
  loc_C75201: FLdRfVar var_11C
  loc_C75204: FnCDblVar
  loc_C75206: FLdRfVar var_13C
  loc_C75209: FnCDblVar
  loc_C7520B: MulR8
  loc_C7520C: CVarR8
  loc_C75210: FLdRfVar var_16C
  loc_C75213: MulVar var_18C
  loc_C75217: LitVarI2 var_1EC, 100
  loc_C7521C: DivVar var_200
  loc_C75220: FLdRfVar var_220
  loc_C75223: FnCDblVar
  loc_C75225: FLdRfVar var_230
  loc_C75228: FnCDblVar
  loc_C7522A: MulR8
  loc_C7522B: CVarR8
  loc_C7522F: AddVar var_270
  loc_C75233: FLdRfVar var_280
  loc_C75236: ImpAdCallFPR4  = Round(, )
  loc_C7523B: FLdRfVar var_280
  loc_C7523E: CR4Var
  loc_C7523F: FStFPR8 var_8C
  loc_C75242: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1F0 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_C75259: FFreeVar var_11C = "": var_13C = "": var_16C = "": var_220 = "": var_230 = "": var_270 = ""
  loc_C7526A: Branch loc_C75AAD
  loc_C7526D: FLdRfVar var_11C
  loc_C75270: FLdRfVar var_1D0
  loc_C75273: LitVarStr var_10C, "RedeTain"
  loc_C75278: PopAdLdVar
  loc_C75279: FLdRfVar var_1CC
  loc_C7527C: FLdPr Me
  loc_C7527F: MemLdPr global_64
  loc_C75282:  = Me.Fields
  loc_C75287: FLdPr var_1CC
  loc_C7528A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7528F: FLdPr var_1D0
  loc_C75292:  = Me.Value
  loc_C75297: FLdRfVar var_11C
  loc_C7529A: FnCByteVar
  loc_C7529C: CI2UI1
  loc_C7529E: LitI2_Byte 0
  loc_C752A0: EqI2
  loc_C752A1: FFreeAd var_1CC = ""
  loc_C752A8: FFree1Var var_11C = ""
  loc_C752AB: BranchF loc_C75667
  loc_C752AE: FLdRfVar var_11C
  loc_C752B1: FLdRfVar var_1D0
  loc_C752B4: LitVarStr var_10C, "FormSeca"
  loc_C752B9: PopAdLdVar
  loc_C752BA: FLdRfVar var_1CC
  loc_C752BD: FLdPr Me
  loc_C752C0: MemLdPr global_64
  loc_C752C3:  = Me.Fields
  loc_C752C8: FLdPr var_1CC
  loc_C752CB: from_stack_2 = Me.Item(from_stack_1)
  loc_C752D0: FLdPr var_1D0
  loc_C752D3:  = Me.Value
  loc_C752D8: FLdRfVar var_11C
  loc_C752DB: FnCByteVar
  loc_C752DD: CI2UI1
  loc_C752DF: LitI2_Byte 0
  loc_C752E1: EqI2
  loc_C752E2: FFreeAd var_1CC = ""
  loc_C752E9: FFree1Var var_11C = ""
  loc_C752EC: BranchF loc_C75460
  loc_C752EF: FLdRfVar var_1D0
  loc_C752F2: LitVarStr var_10C, "ImmeTain"
  loc_C752F7: PopAdLdVar
  loc_C752F8: FLdRfVar var_1CC
  loc_C752FB: FLdPr Me
  loc_C752FE: MemLdPr global_64
  loc_C75301:  = Me.Fields
  loc_C75306: FLdPr var_1CC
  loc_C75309: from_stack_2 = Me.Item(from_stack_1)
  loc_C7530E: FLdZeroAd var_1D0
  loc_C75311: CVarAd
  loc_C75315: ImpAdCallI2 IsNull()
  loc_C7531A: FFree1Ad var_1CC
  loc_C7531D: FFree1Var var_11C = ""
  loc_C75320: BranchF loc_C75381
  loc_C75323: FLdRfVar var_11C
  loc_C75326: FLdRfVar var_1D0
  loc_C75329: LitVarStr var_10C, "ImpoSeca"
  loc_C7532E: PopAdLdVar
  loc_C7532F: FLdRfVar var_1CC
  loc_C75332: FLdPr Me
  loc_C75335: MemLdPr global_64
  loc_C75338:  = Me.Fields
  loc_C7533D: FLdPr var_1CC
  loc_C75340: from_stack_2 = Me.Item(from_stack_1)
  loc_C75345: FLdPr var_1D0
  loc_C75348:  = Me.Value
  loc_C7534D: LitI4 2
  loc_C75352: FLdRfVar var_11C
  loc_C75355: FnCDblVar
  loc_C75357: FLdFPR8 ImportedelCalculodelServicio
  loc_C7535A: MulR8
  loc_C7535B: CVarR8
  loc_C7535F: FLdRfVar var_16C
  loc_C75362: ImpAdCallFPR4  = Round(, )
  loc_C75367: FLdRfVar var_16C
  loc_C7536A: CR4Var
  loc_C7536B: FStFPR8 var_8C
  loc_C7536E: FFreeAd var_1CC = ""
  loc_C75375: FFreeVar var_11C = "": var_13C = ""
  loc_C7537E: Branch loc_C7545D
  loc_C75381: FLdRfVar var_11C
  loc_C75384: FLdRfVar var_1D0
  loc_C75387: LitVarStr var_10C, "ImpoSeca"
  loc_C7538C: PopAdLdVar
  loc_C7538D: FLdRfVar var_1CC
  loc_C75390: FLdPr Me
  loc_C75393: MemLdPr global_64
  loc_C75396:  = Me.Fields
  loc_C7539B: FLdPr var_1CC
  loc_C7539E: from_stack_2 = Me.Item(from_stack_1)
  loc_C753A3: FLdPr var_1D0
  loc_C753A6:  = Me.Value
  loc_C753AB: FLdRfVar var_13C
  loc_C753AE: FLdRfVar var_1D8
  loc_C753B1: LitVarStr var_12C, "ImmeTain"
  loc_C753B6: PopAdLdVar
  loc_C753B7: FLdRfVar var_1D4
  loc_C753BA: FLdPr Me
  loc_C753BD: MemLdPr global_64
  loc_C753C0:  = Me.Fields
  loc_C753C5: FLdPr var_1D4
  loc_C753C8: from_stack_2 = Me.Item(from_stack_1)
  loc_C753CD: FLdPr var_1D8
  loc_C753D0:  = Me.Value
  loc_C753D5: FLdRfVar var_200
  loc_C753D8: FLdRfVar var_1F0
  loc_C753DB: LitVarStr var_1EC, "ImpoSeca"
  loc_C753E0: PopAdLdVar
  loc_C753E1: FLdRfVar var_1DC
  loc_C753E4: FLdPr Me
  loc_C753E7: MemLdPr global_64
  loc_C753EA:  = Me.Fields
  loc_C753EF: FLdPr var_1DC
  loc_C753F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C753F7: FLdPr var_1F0
  loc_C753FA:  = Me.Value
  loc_C753FF: LitI4 2
  loc_C75404: FLdRfVar var_11C
  loc_C75407: FnCDblVar
  loc_C75409: FLdFPR8 ImportedelCalculodelServicio
  loc_C7540C: MulR8
  loc_C7540D: CVarR8
  loc_C75411: FLdRfVar var_13C
  loc_C75414: MulVar var_16C
  loc_C75418: LitVarI2 var_17C, 100
  loc_C7541D: DivVar var_18C
  loc_C75421: FLdRfVar var_200
  loc_C75424: FnCDblVar
  loc_C75426: FLdFPR8 ImportedelCalculodelServicio
  loc_C75429: MulR8
  loc_C7542A: CVarR8
  loc_C7542E: AddVar var_220
  loc_C75432: FLdRfVar var_230
  loc_C75435: ImpAdCallFPR4  = Round(, )
  loc_C7543A: FLdRfVar var_230
  loc_C7543D: CR4Var
  loc_C7543E: FStFPR8 var_8C
  loc_C75441: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_C75450: FFreeVar var_11C = "": var_13C = "": var_200 = "": var_220 = ""
  loc_C7545D: Branch loc_C75664
  loc_C75460: FLdRfVar var_1D0
  loc_C75463: LitVarStr var_10C, "ImmeTain"
  loc_C75468: PopAdLdVar
  loc_C75469: FLdRfVar var_1CC
  loc_C7546C: FLdPr Me
  loc_C7546F: MemLdPr global_64
  loc_C75472:  = Me.Fields
  loc_C75477: FLdPr var_1CC
  loc_C7547A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7547F: FLdZeroAd var_1D0
  loc_C75482: CVarAd
  loc_C75486: ImpAdCallI2 IsNull()
  loc_C7548B: FFree1Ad var_1CC
  loc_C7548E: FFree1Var var_11C = ""
  loc_C75491: BranchF loc_C75524
  loc_C75494: FLdRfVar var_11C
  loc_C75497: FLdRfVar var_1D0
  loc_C7549A: LitVarStr var_10C, "ImpoSeca"
  loc_C7549F: PopAdLdVar
  loc_C754A0: FLdRfVar var_1CC
  loc_C754A3: FLdPr Me
  loc_C754A6: MemLdPr global_64
  loc_C754A9:  = Me.Fields
  loc_C754AE: FLdPr var_1CC
  loc_C754B1: from_stack_2 = Me.Item(from_stack_1)
  loc_C754B6: FLdPr var_1D0
  loc_C754B9:  = Me.Value
  loc_C754BE: FLdRfVar var_13C
  loc_C754C1: FLdRfVar var_1D8
  loc_C754C4: LitVarStr var_12C, "CantSein"
  loc_C754C9: PopAdLdVar
  loc_C754CA: FLdRfVar var_1D4
  loc_C754CD: FLdPr Me
  loc_C754D0: MemLdPr global_64
  loc_C754D3:  = Me.Fields
  loc_C754D8: FLdPr var_1D4
  loc_C754DB: from_stack_2 = Me.Item(from_stack_1)
  loc_C754E0: FLdPr var_1D8
  loc_C754E3:  = Me.Value
  loc_C754E8: LitI4 2
  loc_C754ED: FLdRfVar var_11C
  loc_C754F0: FnCDblVar
  loc_C754F2: FLdRfVar var_13C
  loc_C754F5: FnCDblVar
  loc_C754F7: MulR8
  loc_C754F8: CVarR8
  loc_C754FC: FLdRfVar var_18C
  loc_C754FF: ImpAdCallFPR4  = Round(, )
  loc_C75504: FLdRfVar var_18C
  loc_C75507: CR4Var
  loc_C75508: FStFPR8 var_8C
  loc_C7550B: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C75516: FFreeVar var_11C = "": var_13C = "": var_16C = ""
  loc_C75521: Branch loc_C75664
  loc_C75524: FLdRfVar var_11C
  loc_C75527: FLdRfVar var_1D0
  loc_C7552A: LitVarStr var_10C, "ImpoSeca"
  loc_C7552F: PopAdLdVar
  loc_C75530: FLdRfVar var_1CC
  loc_C75533: FLdPr Me
  loc_C75536: MemLdPr global_64
  loc_C75539:  = Me.Fields
  loc_C7553E: FLdPr var_1CC
  loc_C75541: from_stack_2 = Me.Item(from_stack_1)
  loc_C75546: FLdPr var_1D0
  loc_C75549:  = Me.Value
  loc_C7554E: FLdRfVar var_13C
  loc_C75551: FLdRfVar var_1D8
  loc_C75554: LitVarStr var_12C, "CantSein"
  loc_C75559: PopAdLdVar
  loc_C7555A: FLdRfVar var_1D4
  loc_C7555D: FLdPr Me
  loc_C75560: MemLdPr global_64
  loc_C75563:  = Me.Fields
  loc_C75568: FLdPr var_1D4
  loc_C7556B: from_stack_2 = Me.Item(from_stack_1)
  loc_C75570: FLdPr var_1D8
  loc_C75573:  = Me.Value
  loc_C75578: FLdRfVar var_16C
  loc_C7557B: FLdRfVar var_1F0
  loc_C7557E: LitVarStr var_15C, "ImmeTain"
  loc_C75583: PopAdLdVar
  loc_C75584: FLdRfVar var_1DC
  loc_C75587: FLdPr Me
  loc_C7558A: MemLdPr global_64
  loc_C7558D:  = Me.Fields
  loc_C75592: FLdPr var_1DC
  loc_C75595: from_stack_2 = Me.Item(from_stack_1)
  loc_C7559A: FLdPr var_1F0
  loc_C7559D:  = Me.Value
  loc_C755A2: FLdRfVar var_220
  loc_C755A5: FLdRfVar var_238
  loc_C755A8: LitVarStr var_210, "ImpoSeca"
  loc_C755AD: PopAdLdVar
  loc_C755AE: FLdRfVar var_234
  loc_C755B1: FLdPr Me
  loc_C755B4: MemLdPr global_64
  loc_C755B7:  = Me.Fields
  loc_C755BC: FLdPr var_234
  loc_C755BF: from_stack_2 = Me.Item(from_stack_1)
  loc_C755C4: FLdPr var_238
  loc_C755C7:  = Me.Value
  loc_C755CC: FLdRfVar var_230
  loc_C755CF: FLdRfVar var_250
  loc_C755D2: LitVarStr var_24C, "CantSein"
  loc_C755D7: PopAdLdVar
  loc_C755D8: FLdRfVar var_23C
  loc_C755DB: FLdPr Me
  loc_C755DE: MemLdPr global_64
  loc_C755E1:  = Me.Fields
  loc_C755E6: FLdPr var_23C
  loc_C755E9: from_stack_2 = Me.Item(from_stack_1)
  loc_C755EE: FLdPr var_250
  loc_C755F1:  = Me.Value
  loc_C755F6: LitI4 2
  loc_C755FB: FLdRfVar var_11C
  loc_C755FE: FnCDblVar
  loc_C75600: FLdRfVar var_13C
  loc_C75603: FnCDblVar
  loc_C75605: MulR8
  loc_C75606: CVarR8
  loc_C7560A: FLdRfVar var_16C
  loc_C7560D: MulVar var_18C
  loc_C75611: LitVarI2 var_1EC, 100
  loc_C75616: DivVar var_200
  loc_C7561A: FLdRfVar var_220
  loc_C7561D: FnCDblVar
  loc_C7561F: FLdRfVar var_230
  loc_C75622: FnCDblVar
  loc_C75624: MulR8
  loc_C75625: CVarR8
  loc_C75629: AddVar var_270
  loc_C7562D: FLdRfVar var_280
  loc_C75630: ImpAdCallFPR4  = Round(, )
  loc_C75635: FLdRfVar var_280
  loc_C75638: CR4Var
  loc_C75639: FStFPR8 var_8C
  loc_C7563C: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1F0 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_C75653: FFreeVar var_11C = "": var_13C = "": var_16C = "": var_220 = "": var_230 = "": var_270 = ""
  loc_C75664: Branch loc_C75AAD
  loc_C75667: FLdRfVar var_11C
  loc_C7566A: FLdRfVar var_1D0
  loc_C7566D: LitVarStr var_10C, "RedeTain"
  loc_C75672: PopAdLdVar
  loc_C75673: FLdRfVar var_1CC
  loc_C75676: FLdPr Me
  loc_C75679: MemLdPr global_64
  loc_C7567C:  = Me.Fields
  loc_C75681: FLdPr var_1CC
  loc_C75684: from_stack_2 = Me.Item(from_stack_1)
  loc_C75689: FLdPr var_1D0
  loc_C7568C:  = Me.Value
  loc_C75691: FLdRfVar var_11C
  loc_C75694: FnCByteVar
  loc_C75696: CI2UI1
  loc_C75698: LitI2_Byte 1
  loc_C7569A: EqI2
  loc_C7569B: FFreeAd var_1CC = ""
  loc_C756A2: FFree1Var var_11C = ""
  loc_C756A5: BranchF loc_C75AAD
  loc_C756A8: FLdRfVar var_11C
  loc_C756AB: FLdRfVar var_1D0
  loc_C756AE: LitVarStr var_10C, "FormSeca"
  loc_C756B3: PopAdLdVar
  loc_C756B4: FLdRfVar var_1CC
  loc_C756B7: FLdPr Me
  loc_C756BA: MemLdPr global_64
  loc_C756BD:  = Me.Fields
  loc_C756C2: FLdPr var_1CC
  loc_C756C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C756CA: FLdPr var_1D0
  loc_C756CD:  = Me.Value
  loc_C756D2: FLdRfVar var_11C
  loc_C756D5: FnCByteVar
  loc_C756D7: CI2UI1
  loc_C756D9: LitI2_Byte 0
  loc_C756DB: EqI2
  loc_C756DC: FFreeAd var_1CC = ""
  loc_C756E3: FFree1Var var_11C = ""
  loc_C756E6: BranchF loc_C75861
  loc_C756E9: FLdRfVar var_1D0
  loc_C756EC: LitVarStr var_10C, "ImmeTain"
  loc_C756F1: PopAdLdVar
  loc_C756F2: FLdRfVar var_1CC
  loc_C756F5: FLdPr Me
  loc_C756F8: MemLdPr global_64
  loc_C756FB:  = Me.Fields
  loc_C75700: FLdPr var_1CC
  loc_C75703: from_stack_2 = Me.Item(from_stack_1)
  loc_C75708: FLdZeroAd var_1D0
  loc_C7570B: CVarAd
  loc_C7570F: ImpAdCallI2 IsNull()
  loc_C75714: FFree1Ad var_1CC
  loc_C75717: FFree1Var var_11C = ""
  loc_C7571A: BranchF loc_C7577B
  loc_C7571D: FLdRfVar var_11C
  loc_C75720: FLdRfVar var_1D0
  loc_C75723: LitVarStr var_10C, "ImpoSeca"
  loc_C75728: PopAdLdVar
  loc_C75729: FLdRfVar var_1CC
  loc_C7572C: FLdPr Me
  loc_C7572F: MemLdPr global_64
  loc_C75732:  = Me.Fields
  loc_C75737: FLdPr var_1CC
  loc_C7573A: from_stack_2 = Me.Item(from_stack_1)
  loc_C7573F: FLdPr var_1D0
  loc_C75742:  = Me.Value
  loc_C75747: LitI4 2
  loc_C7574C: FLdRfVar var_11C
  loc_C7574F: FnCDblVar
  loc_C75751: FLdFPR8 ImportedelCalculodelServicio
  loc_C75754: MulR8
  loc_C75755: CVarR8
  loc_C75759: FLdRfVar var_16C
  loc_C7575C: ImpAdCallFPR4  = Round(, )
  loc_C75761: FLdRfVar var_16C
  loc_C75764: CR4Var
  loc_C75765: FStFPR8 var_8C
  loc_C75768: FFreeAd var_1CC = ""
  loc_C7576F: FFreeVar var_11C = "": var_13C = ""
  loc_C75778: Branch loc_C7585E
  loc_C7577B: FLdRfVar var_11C
  loc_C7577E: FLdRfVar var_1D0
  loc_C75781: LitVarStr var_10C, "ImpoSeca"
  loc_C75786: PopAdLdVar
  loc_C75787: FLdRfVar var_1CC
  loc_C7578A: FLdPr Me
  loc_C7578D: MemLdPr global_64
  loc_C75790:  = Me.Fields
  loc_C75795: FLdPr var_1CC
  loc_C75798: from_stack_2 = Me.Item(from_stack_1)
  loc_C7579D: FLdPr var_1D0
  loc_C757A0:  = Me.Value
  loc_C757A5: FLdRfVar var_13C
  loc_C757A8: FLdRfVar var_1D8
  loc_C757AB: LitVarStr var_12C, "ImpoSeca"
  loc_C757B0: PopAdLdVar
  loc_C757B1: FLdRfVar var_1D4
  loc_C757B4: FLdPr Me
  loc_C757B7: MemLdPr global_64
  loc_C757BA:  = Me.Fields
  loc_C757BF: FLdPr var_1D4
  loc_C757C2: from_stack_2 = Me.Item(from_stack_1)
  loc_C757C7: FLdPr var_1D8
  loc_C757CA:  = Me.Value
  loc_C757CF: FLdRfVar var_16C
  loc_C757D2: FLdRfVar var_1F0
  loc_C757D5: LitVarStr var_15C, "ImmeTain"
  loc_C757DA: PopAdLdVar
  loc_C757DB: FLdRfVar var_1DC
  loc_C757DE: FLdPr Me
  loc_C757E1: MemLdPr global_64
  loc_C757E4:  = Me.Fields
  loc_C757E9: FLdPr var_1DC
  loc_C757EC: from_stack_2 = Me.Item(from_stack_1)
  loc_C757F1: FLdPr var_1F0
  loc_C757F4:  = Me.Value
  loc_C757F9: LitI4 2
  loc_C757FE: FLdRfVar var_11C
  loc_C75801: FnCDblVar
  loc_C75803: FLdFPR8 ImportedelCalculodelServicio
  loc_C75806: MulR8
  loc_C75807: CVarR8
  loc_C7580B: FLdRfVar var_13C
  loc_C7580E: FnCDblVar
  loc_C75810: FLdFPR8 ImportedelCalculodelServicio
  loc_C75813: MulR8
  loc_C75814: CVarR8
  loc_C75818: FLdRfVar var_16C
  loc_C7581B: MulVar var_18C
  loc_C7581F: LitVarI2 var_1EC, 100
  loc_C75824: DivVar var_200
  loc_C75828: SubVar var_220
  loc_C7582C: FStVar var_230
  loc_C75830: FLdRfVar var_230
  loc_C75833: FLdRfVar var_270
  loc_C75836: ImpAdCallFPR4  = Round(, )
  loc_C7583B: FLdRfVar var_270
  loc_C7583E: CR4Var
  loc_C7583F: FStFPR8 var_8C
  loc_C75842: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_C75851: FFreeVar var_11C = "": var_13C = "": var_16C = "": var_230 = ""
  loc_C7585E: Branch loc_C75AAD
  loc_C75861: FLdRfVar var_11C
  loc_C75864: FLdRfVar var_1D0
  loc_C75867: LitVarStr var_10C, "FormSeca"
  loc_C7586C: PopAdLdVar
  loc_C7586D: FLdRfVar var_1CC
  loc_C75870: FLdPr Me
  loc_C75873: MemLdPr global_64
  loc_C75876:  = Me.Fields
  loc_C7587B: FLdPr var_1CC
  loc_C7587E: from_stack_2 = Me.Item(from_stack_1)
  loc_C75883: FLdPr var_1D0
  loc_C75886:  = Me.Value
  loc_C7588B: FLdRfVar var_11C
  loc_C7588E: FnCByteVar
  loc_C75890: CI2UI1
  loc_C75892: LitI2_Byte 1
  loc_C75894: EqI2
  loc_C75895: FFreeAd var_1CC = ""
  loc_C7589C: FFree1Var var_11C = ""
  loc_C7589F: BranchF loc_C75AAD
  loc_C758A2: FLdRfVar var_1D0
  loc_C758A5: LitVarStr var_10C, "ImmeTain"
  loc_C758AA: PopAdLdVar
  loc_C758AB: FLdRfVar var_1CC
  loc_C758AE: FLdPr Me
  loc_C758B1: MemLdPr global_64
  loc_C758B4:  = Me.Fields
  loc_C758B9: FLdPr var_1CC
  loc_C758BC: from_stack_2 = Me.Item(from_stack_1)
  loc_C758C1: FLdZeroAd var_1D0
  loc_C758C4: CVarAd
  loc_C758C8: ImpAdCallI2 IsNull()
  loc_C758CD: FFree1Ad var_1CC
  loc_C758D0: FFree1Var var_11C = ""
  loc_C758D3: BranchF loc_C75966
  loc_C758D6: FLdRfVar var_11C
  loc_C758D9: FLdRfVar var_1D0
  loc_C758DC: LitVarStr var_10C, "ImpoSeca"
  loc_C758E1: PopAdLdVar
  loc_C758E2: FLdRfVar var_1CC
  loc_C758E5: FLdPr Me
  loc_C758E8: MemLdPr global_64
  loc_C758EB:  = Me.Fields
  loc_C758F0: FLdPr var_1CC
  loc_C758F3: from_stack_2 = Me.Item(from_stack_1)
  loc_C758F8: FLdPr var_1D0
  loc_C758FB:  = Me.Value
  loc_C75900: FLdRfVar var_13C
  loc_C75903: FLdRfVar var_1D8
  loc_C75906: LitVarStr var_12C, "CantSein"
  loc_C7590B: PopAdLdVar
  loc_C7590C: FLdRfVar var_1D4
  loc_C7590F: FLdPr Me
  loc_C75912: MemLdPr global_64
  loc_C75915:  = Me.Fields
  loc_C7591A: FLdPr var_1D4
  loc_C7591D: from_stack_2 = Me.Item(from_stack_1)
  loc_C75922: FLdPr var_1D8
  loc_C75925:  = Me.Value
  loc_C7592A: LitI4 2
  loc_C7592F: FLdRfVar var_11C
  loc_C75932: FnCDblVar
  loc_C75934: FLdRfVar var_13C
  loc_C75937: FnCDblVar
  loc_C75939: MulR8
  loc_C7593A: CVarR8
  loc_C7593E: FLdRfVar var_18C
  loc_C75941: ImpAdCallFPR4  = Round(, )
  loc_C75946: FLdRfVar var_18C
  loc_C75949: CR4Var
  loc_C7594A: FStFPR8 var_8C
  loc_C7594D: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = ""
  loc_C75958: FFreeVar var_11C = "": var_13C = "": var_16C = ""
  loc_C75963: Branch loc_C75AAD
  loc_C75966: FLdRfVar var_11C
  loc_C75969: FLdRfVar var_1D0
  loc_C7596C: LitVarStr var_10C, "ImpoSeca"
  loc_C75971: PopAdLdVar
  loc_C75972: FLdRfVar var_1CC
  loc_C75975: FLdPr Me
  loc_C75978: MemLdPr global_64
  loc_C7597B:  = Me.Fields
  loc_C75980: FLdPr var_1CC
  loc_C75983: from_stack_2 = Me.Item(from_stack_1)
  loc_C75988: FLdPr var_1D0
  loc_C7598B:  = Me.Value
  loc_C75990: FLdRfVar var_13C
  loc_C75993: FLdRfVar var_1D8
  loc_C75996: LitVarStr var_12C, "CantSein"
  loc_C7599B: PopAdLdVar
  loc_C7599C: FLdRfVar var_1D4
  loc_C7599F: FLdPr Me
  loc_C759A2: MemLdPr global_64
  loc_C759A5:  = Me.Fields
  loc_C759AA: FLdPr var_1D4
  loc_C759AD: from_stack_2 = Me.Item(from_stack_1)
  loc_C759B2: FLdPr var_1D8
  loc_C759B5:  = Me.Value
  loc_C759BA: FLdRfVar var_16C
  loc_C759BD: FLdRfVar var_1F0
  loc_C759C0: LitVarStr var_15C, "ImpoSeca"
  loc_C759C5: PopAdLdVar
  loc_C759C6: FLdRfVar var_1DC
  loc_C759C9: FLdPr Me
  loc_C759CC: MemLdPr global_64
  loc_C759CF:  = Me.Fields
  loc_C759D4: FLdPr var_1DC
  loc_C759D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C759DC: FLdPr var_1F0
  loc_C759DF:  = Me.Value
  loc_C759E4: FLdRfVar var_18C
  loc_C759E7: FLdRfVar var_238
  loc_C759EA: LitVarStr var_17C, "CantSein"
  loc_C759EF: PopAdLdVar
  loc_C759F0: FLdRfVar var_234
  loc_C759F3: FLdPr Me
  loc_C759F6: MemLdPr global_64
  loc_C759F9:  = Me.Fields
  loc_C759FE: FLdPr var_234
  loc_C75A01: from_stack_2 = Me.Item(from_stack_1)
  loc_C75A06: FLdPr var_238
  loc_C75A09:  = Me.Value
  loc_C75A0E: FLdRfVar var_200
  loc_C75A11: FLdRfVar var_250
  loc_C75A14: LitVarStr var_1EC, "ImmeTain"
  loc_C75A19: PopAdLdVar
  loc_C75A1A: FLdRfVar var_23C
  loc_C75A1D: FLdPr Me
  loc_C75A20: MemLdPr global_64
  loc_C75A23:  = Me.Fields
  loc_C75A28: FLdPr var_23C
  loc_C75A2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C75A30: FLdPr var_250
  loc_C75A33:  = Me.Value
  loc_C75A38: LitI4 2
  loc_C75A3D: FLdRfVar var_11C
  loc_C75A40: FnCDblVar
  loc_C75A42: FLdRfVar var_13C
  loc_C75A45: FnCDblVar
  loc_C75A47: MulR8
  loc_C75A48: CVarR8
  loc_C75A4C: FLdRfVar var_16C
  loc_C75A4F: FnCDblVar
  loc_C75A51: FLdRfVar var_18C
  loc_C75A54: FnCDblVar
  loc_C75A56: MulR8
  loc_C75A57: CVarR8
  loc_C75A5B: FLdRfVar var_200
  loc_C75A5E: MulVar var_220
  loc_C75A62: LitVarI2 var_24C, 100
  loc_C75A67: DivVar var_230
  loc_C75A6B: SubVar var_270
  loc_C75A6F: FStVar var_280
  loc_C75A73: FLdRfVar var_280
  loc_C75A76: FLdRfVar var_290
  loc_C75A79: ImpAdCallFPR4  = Round(, )
  loc_C75A7E: FLdRfVar var_290
  loc_C75A81: CR4Var
  loc_C75A82: FStFPR8 var_8C
  loc_C75A85: FFreeAd var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1F0 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_C75A9C: FFreeVar var_11C = "": var_13C = "": var_16C = "": var_18C = "": var_200 = "": var_280 = ""
  loc_C75AAD: Branch loc_C75AB6
  loc_C75AB0: LitI2_Byte 0
  loc_C75AB2: CR8I2
  loc_C75AB3: FStFPR8 var_8C
  loc_C75AB6: ExitProcCbHresult
End Function

Public Sub ActualizaLiquTasa(PeriLiqu, BimeLiqu, CodiTili, TipoVenc, NumeLiqu, CodiInmu, CodiConc, ActuLita) 'ACDED0
  'Data Table: 4BE97C
  loc_ACDDF8: ILdRf CodiConc
  loc_ACDDFB: FStStrCopy var_88
  loc_ACDDFE: ILdRf ActuLita
  loc_ACDE01: FStStrCopy var_8C
  loc_ACDE04: LitStr "UPDATE liqutasa SET ActuLita = '"
  loc_ACDE07: ILdRf var_8C
  loc_ACDE0A: ConcatStr
  loc_ACDE0B: FStStrNoPop var_90
  loc_ACDE0E: LitStr "' WHERE PeriLiqu = "
  loc_ACDE11: ConcatStr
  loc_ACDE12: FStStrNoPop var_94
  loc_ACDE15: FLdI2 PeriLiqu
  loc_ACDE18: CStrUI1
  loc_ACDE1A: FStStrNoPop var_98
  loc_ACDE1D: ConcatStr
  loc_ACDE1E: FStStrNoPop var_9C
  loc_ACDE21: LitStr " AND BimeLiqu = "
  loc_ACDE24: ConcatStr
  loc_ACDE25: FStStrNoPop var_A0
  loc_ACDE28: FLdUI1
  loc_ACDE2C: CStrI2
  loc_ACDE2E: FStStrNoPop var_A4
  loc_ACDE31: ConcatStr
  loc_ACDE32: FStStrNoPop var_A8
  loc_ACDE35: LitStr " AND CodiTili = "
  loc_ACDE38: ConcatStr
  loc_ACDE39: FStStrNoPop var_AC
  loc_ACDE3C: FLdUI1
  loc_ACDE40: CStrI2
  loc_ACDE42: FStStrNoPop var_B0
  loc_ACDE45: ConcatStr
  loc_ACDE46: FStStrNoPop var_B4
  loc_ACDE49: LitStr " AND TipoVenc = "
  loc_ACDE4C: ConcatStr
  loc_ACDE4D: FStStrNoPop var_B8
  loc_ACDE50: FLdI2 TipoVenc
  loc_ACDE53: CStrUI1
  loc_ACDE55: FStStrNoPop var_BC
  loc_ACDE58: ConcatStr
  loc_ACDE59: FStStrNoPop var_C0
  loc_ACDE5C: LitStr " AND NumeLiqu = "
  loc_ACDE5F: ConcatStr
  loc_ACDE60: FStStrNoPop var_C4
  loc_ACDE63: FLdUI1
  loc_ACDE67: CStrI2
  loc_ACDE69: FStStrNoPop var_C8
  loc_ACDE6C: ConcatStr
  loc_ACDE6D: FStStrNoPop var_CC
  loc_ACDE70: LitStr " AND CodiInmu = "
  loc_ACDE73: ConcatStr
  loc_ACDE74: FStStrNoPop var_D0
  loc_ACDE77: ILdRf CodiInmu
  loc_ACDE7A: CStrI4
  loc_ACDE7C: FStStrNoPop var_D4
  loc_ACDE7F: ConcatStr
  loc_ACDE80: FStStrNoPop var_D8
  loc_ACDE83: LitStr " AND CodiConc = '"
  loc_ACDE86: ConcatStr
  loc_ACDE87: FStStrNoPop var_DC
  loc_ACDE8A: ILdRf var_88
  loc_ACDE8D: ConcatStr
  loc_ACDE8E: FStStrNoPop var_E0
  loc_ACDE91: LitStr "'"
  loc_ACDE94: ConcatStr
  loc_ACDE95: FStStrNoPop var_E4
  loc_ACDE98: Call EjecutarRsCls(from_stack_1v)
  loc_ACDE9D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_ACDECC: ExitProcHresult
  loc_ACDECD: ILdI2 PeriLiqu
End Sub

Public Function GeneracionCuentaCorriente(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiCome, lOrden, iPeriodo, doDeanTili, daAhora) 'D2DAC4
  'Data Table: 4BE97C
  loc_D29A18: ZeroRetVal
  loc_D29A1A: LitStr "SELECT SUM(ImpoLita) - SUM(CrafLita) as CapiBole, SUM(DescLita) as  DecaBole, SUM(ExenLita) as ExenBole, SUM(TotaLita) as  TotaBole, PeriLiqu, BimeLiqu, CodiTili, TipoVenc, NumeLiqu, CodiInmu, CucuPers, ActuLita, FealLita, FeveLita, TipoLita FROM liqutasa "
  loc_D29A1D: LitStr " WHERE PeriLiqu = "
  loc_D29A20: ConcatStr
  loc_D29A21: FStStrNoPop var_150
  loc_D29A24: FLdI2 PeriLiqu
  loc_D29A27: CStrUI1
  loc_D29A29: FStStrNoPop var_154
  loc_D29A2C: ConcatStr
  loc_D29A2D: FStStrNoPop var_158
  loc_D29A30: LitStr " AND CodiTili = "
  loc_D29A33: ConcatStr
  loc_D29A34: FStStrNoPop var_15C
  loc_D29A37: FLdUI1
  loc_D29A3B: CStrI2
  loc_D29A3D: FStStrNoPop var_160
  loc_D29A40: ConcatStr
  loc_D29A41: FStStrNoPop var_164
  loc_D29A44: LitStr " AND NumeLiqu = "
  loc_D29A47: ConcatStr
  loc_D29A48: FStStrNoPop var_168
  loc_D29A4B: FLdUI1
  loc_D29A4F: CStrI2
  loc_D29A51: FStStrNoPop var_16C
  loc_D29A54: ConcatStr
  loc_D29A55: FStStrNoPop var_170
  loc_D29A58: LitStr " AND CodiInmu = "
  loc_D29A5B: ConcatStr
  loc_D29A5C: FStStrNoPop var_178
  loc_D29A5F: FLdRfVar var_174
  loc_D29A62: from_stack_1 = CodiInmu
  loc_D29A67: ILdRf var_174
  loc_D29A6A: CStrI4
  loc_D29A6C: FStStrNoPop var_17C
  loc_D29A6F: ConcatStr
  loc_D29A70: FStStrNoPop var_180
  loc_D29A73: LitStr " AND ActuLita = 'No' "
  loc_D29A76: ConcatStr
  loc_D29A77: FStStrNoPop var_184
  loc_D29A7A: LitStr " GROUP BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, TipoVenc"
  loc_D29A7D: ConcatStr
  loc_D29A7E: FStStrNoPop var_188
  loc_D29A81: LitStr " ORDER BY PeriLiqu, TipoVenc, BimeLiqu;"
  loc_D29A84: ConcatStr
  loc_D29A85: FStStrNoPop var_18C
  loc_D29A88: Call EjecutarRsCls2(from_stack_1v)
  loc_D29A8D: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_D29AAE: FLdRfVar var_174
  loc_D29AB1: FLdPr Me
  loc_D29AB4: MemLdPr global_64
  loc_D29AB7:  = Me.RecordCount
  loc_D29ABC: ILdRf var_174
  loc_D29ABF: LitI4 0
  loc_D29AC4: GtI4
  loc_D29AC5: BranchF loc_D2DA66
  loc_D29AC8: OnErrorGoto loc_D2DA6C
  loc_D29ACB: LitStr "START TRANSACTION;"
  loc_D29ACE: Call EjecutarRsCls(from_stack_1v)
  loc_D29AD3: FLdPr Me
  loc_D29AD6: MemLdPr global_64
  loc_D29AD9: Me.MoveFirst
  loc_D29ADE: FLdRfVar var_18E
  loc_D29AE1: FLdPr Me
  loc_D29AE4: MemLdPr global_64
  loc_D29AE7:  = Me.EOF
  loc_D29AEC: FLdI2 var_18E
  loc_D29AEF: NotI4
  loc_D29AF0: BranchF loc_D2DA5E
  loc_D29AF3: FLdRfVar var_1B8
  loc_D29AF6: FLdRfVar var_1A8
  loc_D29AF9: LitVarStr var_1A4, "TotaBole"
  loc_D29AFE: PopAdLdVar
  loc_D29AFF: FLdRfVar var_194
  loc_D29B02: FLdPr Me
  loc_D29B05: MemLdPr global_64
  loc_D29B08:  = Me.Fields
  loc_D29B0D: FLdPr var_194
  loc_D29B10: from_stack_2 = Me.Item(from_stack_1)
  loc_D29B15: FLdPr var_1A8
  loc_D29B18:  = Me.Value
  loc_D29B1D: FLdRfVar var_1B8
  loc_D29B20: LitVarI2 var_1C8, 0
  loc_D29B25: HardType
  loc_D29B26: GtVarBool
  loc_D29B28: FFreeAd var_194 = ""
  loc_D29B2F: FFree1Var var_1B8 = ""
  loc_D29B32: BranchF loc_D29ECE
  loc_D29B35: FLdRfVar var_1B8
  loc_D29B38: FLdRfVar var_1A8
  loc_D29B3B: LitVarStr var_1A4, "TipoVenc"
  loc_D29B40: PopAdLdVar
  loc_D29B41: FLdRfVar var_194
  loc_D29B44: FLdPr Me
  loc_D29B47: MemLdPr global_64
  loc_D29B4A:  = Me.Fields
  loc_D29B4F: FLdPr var_194
  loc_D29B52: from_stack_2 = Me.Item(from_stack_1)
  loc_D29B57: FLdPr var_1A8
  loc_D29B5A:  = Me.Value
  loc_D29B5F: FLdRfVar var_1B8
  loc_D29B62: FnCIntVar
  loc_D29B64: LitI2_Byte 1
  loc_D29B66: EqI2
  loc_D29B67: FFreeAd var_194 = ""
  loc_D29B6E: FFree1Var var_1B8 = ""
  loc_D29B71: BranchF loc_D29E78
  loc_D29B74: LitI2_Byte 0
  loc_D29B76: CR8I2
  loc_D29B77: FStFPR8 var_AC
  loc_D29B7A: LitI2_Byte 0
  loc_D29B7C: CR8I2
  loc_D29B7D: FStFPR8 var_B4
  loc_D29B80: FLdRfVar var_174
  loc_D29B83: FLdI2 iPeriodo
  loc_D29B86: FLdRfVar var_8C
  loc_D29B89: NewIfNullPr clsnumebole
  loc_D29B8C: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D29B91: ILdRf var_174
  loc_D29B94: FStR4 var_A0
  loc_D29B97: FLdRfVar var_2D8
  loc_D29B9A: LitVarStr var_2D4, "FeveLita"
  loc_D29B9F: PopAdLdVar
  loc_D29BA0: FLdRfVar var_2C4
  loc_D29BA3: FLdPr Me
  loc_D29BA6: MemLdPr global_64
  loc_D29BA9:  = Me.Fields
  loc_D29BAE: FLdPr var_2C4
  loc_D29BB1: from_stack_2 = Me.Item(from_stack_1)
  loc_D29BB6: FLdRfVar var_420
  loc_D29BB9: FLdRfVar var_410
  loc_D29BBC: LitVarStr var_40C, "TotaBole"
  loc_D29BC1: PopAdLdVar
  loc_D29BC2: FLdRfVar var_3FC
  loc_D29BC5: FLdPr Me
  loc_D29BC8: MemLdPr global_64
  loc_D29BCB:  = Me.Fields
  loc_D29BD0: FLdPr var_3FC
  loc_D29BD3: from_stack_2 = Me.Item(from_stack_1)
  loc_D29BD8: FLdPr var_410
  loc_D29BDB:  = Me.Value
  loc_D29BE0: FLdRfVar var_488
  loc_D29BE3: FLdRfVar var_478
  loc_D29BE6: LitVarStr var_474, "TotaBole"
  loc_D29BEB: PopAdLdVar
  loc_D29BEC: FLdRfVar var_464
  loc_D29BEF: FLdPr Me
  loc_D29BF2: MemLdPr global_64
  loc_D29BF5:  = Me.Fields
  loc_D29BFA: FLdPr var_464
  loc_D29BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_D29C02: FLdPr var_478
  loc_D29C05:  = Me.Value
  loc_D29C0A: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D29C0D: LitStr " VALUES ("
  loc_D29C10: ConcatStr
  loc_D29C11: FStStrNoPop var_150
  loc_D29C14: FLdI2 iPeriodo
  loc_D29C17: CStrUI1
  loc_D29C19: FStStrNoPop var_154
  loc_D29C1C: ConcatStr
  loc_D29C1D: FStStrNoPop var_158
  loc_D29C20: LitStr ","
  loc_D29C23: ConcatStr
  loc_D29C24: FStStrNoPop var_15C
  loc_D29C27: ILdRf var_A0
  loc_D29C2A: CStrI4
  loc_D29C2C: FStStrNoPop var_160
  loc_D29C2F: ConcatStr
  loc_D29C30: FStStrNoPop var_164
  loc_D29C33: LitStr ",1,'"
  loc_D29C36: ConcatStr
  loc_D29C37: CVarStr var_1D8
  loc_D29C3A: FLdRfVar var_1B8
  loc_D29C3D: FLdRfVar var_1A8
  loc_D29C40: LitVarStr var_1A4, "CodiInmu"
  loc_D29C45: PopAdLdVar
  loc_D29C46: FLdRfVar var_194
  loc_D29C49: FLdPr Me
  loc_D29C4C: MemLdPr global_64
  loc_D29C4F:  = Me.Fields
  loc_D29C54: FLdPr var_194
  loc_D29C57: from_stack_2 = Me.Item(from_stack_1)
  loc_D29C5C: FLdPr var_1A8
  loc_D29C5F:  = Me.Value
  loc_D29C64: FLdRfVar var_1B8
  loc_D29C67: ConcatVar var_1E8
  loc_D29C6B: LitVarStr var_1C8, "','"
  loc_D29C70: ConcatVar var_1F8
  loc_D29C74: FLdRfVar var_220
  loc_D29C77: FLdRfVar var_210
  loc_D29C7A: LitVarStr var_20C, "CucuPers"
  loc_D29C7F: PopAdLdVar
  loc_D29C80: FLdRfVar var_1FC
  loc_D29C83: FLdPr Me
  loc_D29C86: MemLdPr global_64
  loc_D29C89:  = Me.Fields
  loc_D29C8E: FLdPr var_1FC
  loc_D29C91: from_stack_2 = Me.Item(from_stack_1)
  loc_D29C96: FLdPr var_210
  loc_D29C99:  = Me.Value
  loc_D29C9E: FLdRfVar var_220
  loc_D29CA1: ConcatVar var_230
  loc_D29CA5: LitVarStr var_240, "','"
  loc_D29CAA: ConcatVar var_250
  loc_D29CAE: LitI4 1
  loc_D29CB3: LitI4 1
  loc_D29CB8: LitVarStr var_270, "yyyy-mm-dd"
  loc_D29CBD: FStVarCopyObj var_280
  loc_D29CC0: FLdRfVar var_280
  loc_D29CC3: FLdRfVar arg_30
  loc_D29CC6: CVarRef
  loc_D29CCB: ImpAdCallI2 Format$(, )
  loc_D29CD0: CVarStr var_290
  loc_D29CD3: ConcatVar var_2A0
  loc_D29CD7: LitVarStr var_2B0, "','"
  loc_D29CDC: ConcatVar var_2C0
  loc_D29CE0: LitI4 1
  loc_D29CE5: LitI4 1
  loc_D29CEA: LitVarStr var_2F8, "yyyy-mm-dd"
  loc_D29CEF: FStVarCopyObj var_308
  loc_D29CF2: FLdRfVar var_308
  loc_D29CF5: FLdZeroAd var_2D8
  loc_D29CF8: CVarAd
  loc_D29CFC: ImpAdCallI2 Format$(, )
  loc_D29D01: CVarStr var_318
  loc_D29D04: ConcatVar var_328
  loc_D29D08: LitVarStr var_338, "',0,'Bimestral','Emitido',"
  loc_D29D0D: ConcatVar var_348
  loc_D29D11: FLdRfVar var_370
  loc_D29D14: FLdRfVar var_360
  loc_D29D17: LitVarStr var_35C, "CodiTili"
  loc_D29D1C: PopAdLdVar
  loc_D29D1D: FLdRfVar var_34C
  loc_D29D20: FLdPr Me
  loc_D29D23: MemLdPr global_64
  loc_D29D26:  = Me.Fields
  loc_D29D2B: FLdPr var_34C
  loc_D29D2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D29D33: FLdPr var_360
  loc_D29D36:  = Me.Value
  loc_D29D3B: FLdRfVar var_370
  loc_D29D3E: ConcatVar var_380
  loc_D29D42: LitVarStr var_390, ","
  loc_D29D47: ConcatVar var_3A0
  loc_D29D4B: FLdRfVar var_3C8
  loc_D29D4E: FLdRfVar var_3B8
  loc_D29D51: LitVarStr var_3B4, "NumeLiqu"
  loc_D29D56: PopAdLdVar
  loc_D29D57: FLdRfVar var_3A4
  loc_D29D5A: FLdPr Me
  loc_D29D5D: MemLdPr global_64
  loc_D29D60:  = Me.Fields
  loc_D29D65: FLdPr var_3A4
  loc_D29D68: from_stack_2 = Me.Item(from_stack_1)
  loc_D29D6D: FLdPr var_3B8
  loc_D29D70:  = Me.Value
  loc_D29D75: FLdRfVar var_3C8
  loc_D29D78: ConcatVar var_3D8
  loc_D29D7C: LitVarStr var_3E8, ",0,0,"
  loc_D29D81: ConcatVar var_3F8
  loc_D29D85: LitI4 0
  loc_D29D8A: LitI4 -1
  loc_D29D8F: LitI4 1
  loc_D29D94: LitStr "."
  loc_D29D97: LitStr ","
  loc_D29D9A: FLdRfVar var_420
  loc_D29D9D: CStrVarTmp
  loc_D29D9E: FStStrNoPop var_168
  loc_D29DA1: ImpAdCallI2 Replace(, , , , , )
  loc_D29DA6: CVarStr var_430
  loc_D29DA9: ConcatVar var_440
  loc_D29DAD: LitVarStr var_450, ",0,0,0,0,0,0,"
  loc_D29DB2: ConcatVar var_460
  loc_D29DB6: LitI4 0
  loc_D29DBB: LitI4 -1
  loc_D29DC0: LitI4 1
  loc_D29DC5: LitStr "."
  loc_D29DC8: LitStr ","
  loc_D29DCB: FLdRfVar var_488
  loc_D29DCE: CStrVarTmp
  loc_D29DCF: FStStrNoPop var_16C
  loc_D29DD2: ImpAdCallI2 Replace(, , , , , )
  loc_D29DD7: CVarStr var_498
  loc_D29DDA: ConcatVar var_4A8
  loc_D29DDE: LitVarStr var_4B8, ",'"
  loc_D29DE3: ConcatVar var_4C8
  loc_D29DE7: ImpAdLdI4 MemVar_D9302C
  loc_D29DEA: CVarStr var_4D8
  loc_D29DED: ConcatVar var_4E8
  loc_D29DF1: LitVarStr var_4F8, "');"
  loc_D29DF6: ConcatVar var_508
  loc_D29DFA: CStrVarVal var_170
  loc_D29DFE: Call EjecutarRsCls(from_stack_1v)
  loc_D29E03: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_D29E18: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_410 = "": var_464 = ""
  loc_D29E35: FFreeVar var_4E8 = "": var_508 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_280 = "": var_250 = "": var_290 = "": var_2A0 = "": var_2E8 = "": var_308 = "": var_2C0 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_420 = "": var_3F8 = "": var_430 = "": var_440 = "": var_488 = "": var_460 = "": var_498 = "": var_4A8 = ""
  loc_D29E78: FLdRfVar var_1B8
  loc_D29E7B: FLdRfVar var_1A8
  loc_D29E7E: LitVarStr var_1A4, "TipoVenc"
  loc_D29E83: PopAdLdVar
  loc_D29E84: FLdRfVar var_194
  loc_D29E87: FLdPr Me
  loc_D29E8A: MemLdPr global_64
  loc_D29E8D:  = Me.Fields
  loc_D29E92: FLdPr var_194
  loc_D29E95: from_stack_2 = Me.Item(from_stack_1)
  loc_D29E9A: FLdPr var_1A8
  loc_D29E9D:  = Me.Value
  loc_D29EA2: FLdRfVar var_1B8
  loc_D29EA5: FnCIntVar
  loc_D29EA7: LitI2_Byte 2
  loc_D29EA9: EqI2
  loc_D29EAA: FFreeAd var_194 = ""
  loc_D29EB1: FFree1Var var_1B8 = ""
  loc_D29EB4: BranchF loc_D29ECE
  loc_D29EB7: FLdRfVar var_174
  loc_D29EBA: FLdI2 iPeriodo
  loc_D29EBD: FLdRfVar var_8C
  loc_D29EC0: NewIfNullPr clsnumebole
  loc_D29EC3: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D29EC8: ILdRf var_174
  loc_D29ECB: FStR4 var_A0
  loc_D29ECE: LitStr "SELECT PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, liqutasa.CodiConc, TipoVenc, TipoLita, FealLita, FeveLita, ImpoLita, CrafLita, ExenLita, DescLita, GastLita, TotaLita, ActuLita, concepto.TiafConc, DeudLita FROM liqutasa "
  loc_D29ED1: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_D29ED4: ConcatStr
  loc_D29ED5: FStStrNoPop var_150
  loc_D29ED8: ImpAdLdI2 MemVar_D93034
  loc_D29EDB: CStrUI1
  loc_D29EDD: FStStrNoPop var_154
  loc_D29EE0: ConcatStr
  loc_D29EE1: FStStrNoPop var_158
  loc_D29EE4: LitStr " AND concepto.CodiConc = liqutasa.CodiConc"
  loc_D29EE7: ConcatStr
  loc_D29EE8: FStStrNoPop var_15C
  loc_D29EEB: LitStr " WHERE PeriLiqu = "
  loc_D29EEE: ConcatStr
  loc_D29EEF: CVarStr var_1D8
  loc_D29EF2: FLdRfVar var_1B8
  loc_D29EF5: FLdRfVar var_1A8
  loc_D29EF8: LitVarStr var_1A4, "PeriLiqu"
  loc_D29EFD: PopAdLdVar
  loc_D29EFE: FLdRfVar var_194
  loc_D29F01: FLdPr Me
  loc_D29F04: MemLdPr global_64
  loc_D29F07:  = Me.Fields
  loc_D29F0C: FLdPr var_194
  loc_D29F0F: from_stack_2 = Me.Item(from_stack_1)
  loc_D29F14: FLdPr var_1A8
  loc_D29F17:  = Me.Value
  loc_D29F1C: FLdRfVar var_1B8
  loc_D29F1F: ConcatVar var_1E8
  loc_D29F23: LitVarStr var_1C8, " AND BimeLiqu = "
  loc_D29F28: ConcatVar var_1F8
  loc_D29F2C: FLdRfVar var_220
  loc_D29F2F: FLdRfVar var_210
  loc_D29F32: LitVarStr var_20C, "BimeLiqu"
  loc_D29F37: PopAdLdVar
  loc_D29F38: FLdRfVar var_1FC
  loc_D29F3B: FLdPr Me
  loc_D29F3E: MemLdPr global_64
  loc_D29F41:  = Me.Fields
  loc_D29F46: FLdPr var_1FC
  loc_D29F49: from_stack_2 = Me.Item(from_stack_1)
  loc_D29F4E: FLdPr var_210
  loc_D29F51:  = Me.Value
  loc_D29F56: FLdRfVar var_220
  loc_D29F59: ConcatVar var_230
  loc_D29F5D: LitVarStr var_240, " AND CodiTili = "
  loc_D29F62: ConcatVar var_250
  loc_D29F66: FLdRfVar var_280
  loc_D29F69: FLdRfVar var_2D8
  loc_D29F6C: LitVarStr var_260, "CodiTili"
  loc_D29F71: PopAdLdVar
  loc_D29F72: FLdRfVar var_2C4
  loc_D29F75: FLdPr Me
  loc_D29F78: MemLdPr global_64
  loc_D29F7B:  = Me.Fields
  loc_D29F80: FLdPr var_2C4
  loc_D29F83: from_stack_2 = Me.Item(from_stack_1)
  loc_D29F88: FLdPr var_2D8
  loc_D29F8B:  = Me.Value
  loc_D29F90: FLdRfVar var_280
  loc_D29F93: ConcatVar var_290
  loc_D29F97: LitVarStr var_270, " AND NumeLiqu = "
  loc_D29F9C: ConcatVar var_2A0
  loc_D29FA0: FLdRfVar var_2C0
  loc_D29FA3: FLdRfVar var_360
  loc_D29FA6: LitVarStr var_2B0, "NumeLiqu"
  loc_D29FAB: PopAdLdVar
  loc_D29FAC: FLdRfVar var_34C
  loc_D29FAF: FLdPr Me
  loc_D29FB2: MemLdPr global_64
  loc_D29FB5:  = Me.Fields
  loc_D29FBA: FLdPr var_34C
  loc_D29FBD: from_stack_2 = Me.Item(from_stack_1)
  loc_D29FC2: FLdPr var_360
  loc_D29FC5:  = Me.Value
  loc_D29FCA: FLdRfVar var_2C0
  loc_D29FCD: ConcatVar var_2E8
  loc_D29FD1: LitVarStr var_2D4, " AND CodiInmu = "
  loc_D29FD6: ConcatVar var_308
  loc_D29FDA: FLdRfVar var_318
  loc_D29FDD: FLdRfVar var_3B8
  loc_D29FE0: LitVarStr var_2F8, "CodiInmu"
  loc_D29FE5: PopAdLdVar
  loc_D29FE6: FLdRfVar var_3A4
  loc_D29FE9: FLdPr Me
  loc_D29FEC: MemLdPr global_64
  loc_D29FEF:  = Me.Fields
  loc_D29FF4: FLdPr var_3A4
  loc_D29FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_D29FFC: FLdPr var_3B8
  loc_D29FFF:  = Me.Value
  loc_D2A004: FLdRfVar var_318
  loc_D2A007: ConcatVar var_328
  loc_D2A00B: LitVarStr var_338, " AND TipoVenc = "
  loc_D2A010: ConcatVar var_348
  loc_D2A014: FLdRfVar var_370
  loc_D2A017: FLdRfVar var_410
  loc_D2A01A: LitVarStr var_35C, "TipoVenc"
  loc_D2A01F: PopAdLdVar
  loc_D2A020: FLdRfVar var_3FC
  loc_D2A023: FLdPr Me
  loc_D2A026: MemLdPr global_64
  loc_D2A029:  = Me.Fields
  loc_D2A02E: FLdPr var_3FC
  loc_D2A031: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A036: FLdPr var_410
  loc_D2A039:  = Me.Value
  loc_D2A03E: FLdRfVar var_370
  loc_D2A041: ConcatVar var_380
  loc_D2A045: LitVarStr var_390, " AND ActuLita = 'No' "
  loc_D2A04A: ConcatVar var_3A0
  loc_D2A04E: LitVarStr var_3B4, " ORDER BY PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiInmu, liqutasa.CodiConc, TipoVenc"
  loc_D2A053: ConcatVar var_3C8
  loc_D2A057: CStrVarVal var_160
  loc_D2A05B: Call EjecutarRsCls3(from_stack_1v)
  loc_D2A060: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_D2A06D: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = ""
  loc_D2A088: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = ""
  loc_D2A0B3: FLdRfVar var_174
  loc_D2A0B6: FLdPr Me
  loc_D2A0B9: MemLdPr global_68
  loc_D2A0BC:  = Me.RecordCount
  loc_D2A0C1: ILdRf var_174
  loc_D2A0C4: LitI4 0
  loc_D2A0C9: GtI4
  loc_D2A0CA: BranchF loc_D2DA50
  loc_D2A0CD: LitI2_Byte 0
  loc_D2A0CF: CR8I2
  loc_D2A0D0: FStFPR8 var_10C
  loc_D2A0D3: LitI2_Byte 0
  loc_D2A0D5: CR8I2
  loc_D2A0D6: FStFPR8 var_114
  loc_D2A0D9: LitI2_Byte 0
  loc_D2A0DB: CR8I2
  loc_D2A0DC: FStFPR8 var_11C
  loc_D2A0DF: LitI2_Byte 0
  loc_D2A0E1: CR8I2
  loc_D2A0E2: FStFPR8 var_124
  loc_D2A0E5: FLdPr Me
  loc_D2A0E8: MemLdPr global_68
  loc_D2A0EB: Me.MoveFirst
  loc_D2A0F0: FLdRfVar var_18E
  loc_D2A0F3: FLdPr Me
  loc_D2A0F6: MemLdPr global_68
  loc_D2A0F9:  = Me.EOF
  loc_D2A0FE: FLdI2 var_18E
  loc_D2A101: NotI4
  loc_D2A102: BranchF loc_D2D6C4
  loc_D2A105: FLdRfVar var_1B8
  loc_D2A108: FLdRfVar var_1A8
  loc_D2A10B: LitVarStr var_1A4, "TipoLita"
  loc_D2A110: PopAdLdVar
  loc_D2A111: FLdRfVar var_194
  loc_D2A114: FLdPr Me
  loc_D2A117: MemLdPr global_68
  loc_D2A11A:  = Me.Fields
  loc_D2A11F: FLdPr var_194
  loc_D2A122: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A127: FLdPr var_1A8
  loc_D2A12A:  = Me.Value
  loc_D2A12F: FLdRfVar var_1B8
  loc_D2A132: FStVar var_518
  loc_D2A136: FFreeAd var_194 = ""
  loc_D2A13D: FLdRfVar var_518
  loc_D2A140: LitVarStr var_1A4, "Aforo"
  loc_D2A145: HardType
  loc_D2A146: EqVarBool
  loc_D2A148: BranchF loc_D2D2A4
  loc_D2A14B: FLdRfVar var_1B8
  loc_D2A14E: FLdRfVar var_1A8
  loc_D2A151: LitVarStr var_1A4, "TipoVenc"
  loc_D2A156: PopAdLdVar
  loc_D2A157: FLdRfVar var_194
  loc_D2A15A: FLdPr Me
  loc_D2A15D: MemLdPr global_68
  loc_D2A160:  = Me.Fields
  loc_D2A165: FLdPr var_194
  loc_D2A168: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A16D: FLdPr var_1A8
  loc_D2A170:  = Me.Value
  loc_D2A175: FLdRfVar var_1B8
  loc_D2A178: FnCIntVar
  loc_D2A17A: LitI2_Byte 1
  loc_D2A17C: EqI2
  loc_D2A17D: FFreeAd var_194 = ""
  loc_D2A184: FFree1Var var_1B8 = ""
  loc_D2A187: BranchF loc_D2BF47
  loc_D2A18A: FLdRfVar var_174
  loc_D2A18D: FLdI2 iPeriodo
  loc_D2A190: FLdRfVar var_90
  loc_D2A193: NewIfNullPr clsctacte
  loc_D2A196: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D2A19B: ILdRf var_174
  loc_D2A19E: FStR4 var_9C
  loc_D2A1A1: FLdRfVar var_1B8
  loc_D2A1A4: FLdRfVar var_1A8
  loc_D2A1A7: LitVarStr var_1A4, "TotaBole"
  loc_D2A1AC: PopAdLdVar
  loc_D2A1AD: FLdRfVar var_194
  loc_D2A1B0: FLdPr Me
  loc_D2A1B3: MemLdPr global_64
  loc_D2A1B6:  = Me.Fields
  loc_D2A1BB: FLdPr var_194
  loc_D2A1BE: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A1C3: FLdPr var_1A8
  loc_D2A1C6:  = Me.Value
  loc_D2A1CB: FLdRfVar var_1B8
  loc_D2A1CE: LitVarI2 var_1C8, 0
  loc_D2A1D3: HardType
  loc_D2A1D4: GtVarBool
  loc_D2A1D6: FFreeAd var_194 = ""
  loc_D2A1DD: FFree1Var var_1B8 = ""
  loc_D2A1E0: BranchF loc_D2A55E
  loc_D2A1E3: FLdRfVar var_1B8
  loc_D2A1E6: FLdRfVar var_1A8
  loc_D2A1E9: LitVarStr var_1A4, "TotaLita"
  loc_D2A1EE: PopAdLdVar
  loc_D2A1EF: FLdRfVar var_194
  loc_D2A1F2: FLdPr Me
  loc_D2A1F5: MemLdPr global_68
  loc_D2A1F8:  = Me.Fields
  loc_D2A1FD: FLdPr var_194
  loc_D2A200: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A205: FLdPr var_1A8
  loc_D2A208:  = Me.Value
  loc_D2A20D: FLdRfVar var_1B8
  loc_D2A210: FnCDblVar
  loc_D2A212: LitI2_Byte 0
  loc_D2A214: CR8I2
  loc_D2A215: GtR4
  loc_D2A216: FFreeAd var_194 = ""
  loc_D2A21D: FFree1Var var_1B8 = ""
  loc_D2A220: BranchF loc_D2A55B
  loc_D2A223: FLdRfVar var_460
  loc_D2A226: FLdRfVar var_520
  loc_D2A229: LitVarStr var_474, "TotaLita"
  loc_D2A22E: PopAdLdVar
  loc_D2A22F: FLdRfVar var_51C
  loc_D2A232: FLdPr Me
  loc_D2A235: MemLdPr global_68
  loc_D2A238:  = Me.Fields
  loc_D2A23D: FLdPr var_51C
  loc_D2A240: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A245: FLdPr var_520
  loc_D2A248:  = Me.Value
  loc_D2A24D: FLdRfVar var_4C8
  loc_D2A250: FLdRfVar var_528
  loc_D2A253: LitVarStr var_4D8, "TotaLita"
  loc_D2A258: PopAdLdVar
  loc_D2A259: FLdRfVar var_524
  loc_D2A25C: FLdPr Me
  loc_D2A25F: MemLdPr global_68
  loc_D2A262:  = Me.Fields
  loc_D2A267: FLdPr var_524
  loc_D2A26A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A26F: FLdPr var_528
  loc_D2A272:  = Me.Value
  loc_D2A277: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D2A27A: LitStr " VALUES ("
  loc_D2A27D: ConcatStr
  loc_D2A27E: FStStrNoPop var_150
  loc_D2A281: FLdI2 iPeriodo
  loc_D2A284: CStrUI1
  loc_D2A286: FStStrNoPop var_154
  loc_D2A289: ConcatStr
  loc_D2A28A: FStStrNoPop var_158
  loc_D2A28D: LitStr ","
  loc_D2A290: ConcatStr
  loc_D2A291: FStStrNoPop var_15C
  loc_D2A294: ILdRf var_A0
  loc_D2A297: CStrI4
  loc_D2A299: FStStrNoPop var_160
  loc_D2A29C: ConcatStr
  loc_D2A29D: FStStrNoPop var_164
  loc_D2A2A0: LitStr ","
  loc_D2A2A3: ConcatStr
  loc_D2A2A4: FStStrNoPop var_168
  loc_D2A2A7: FLdI2 iPeriodo
  loc_D2A2AA: CStrUI1
  loc_D2A2AC: FStStrNoPop var_16C
  loc_D2A2AF: ConcatStr
  loc_D2A2B0: FStStrNoPop var_170
  loc_D2A2B3: LitStr ","
  loc_D2A2B6: ConcatStr
  loc_D2A2B7: CVarStr var_1D8
  loc_D2A2BA: FLdRfVar var_1B8
  loc_D2A2BD: FLdRfVar var_1A8
  loc_D2A2C0: LitVarStr var_1A4, "BimeLiqu"
  loc_D2A2C5: PopAdLdVar
  loc_D2A2C6: FLdRfVar var_194
  loc_D2A2C9: FLdPr Me
  loc_D2A2CC: MemLdPr global_68
  loc_D2A2CF:  = Me.Fields
  loc_D2A2D4: FLdPr var_194
  loc_D2A2D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A2DC: FLdPr var_1A8
  loc_D2A2DF:  = Me.Value
  loc_D2A2E4: FLdRfVar var_1B8
  loc_D2A2E7: ConcatVar var_1E8
  loc_D2A2EB: LitVarStr var_1C8, ","
  loc_D2A2F0: ConcatVar var_1F8
  loc_D2A2F4: ILdRf var_9C
  loc_D2A2F7: CVarI4
  loc_D2A2FB: ConcatVar var_220
  loc_D2A2FF: LitVarStr var_240, ",1,1,"
  loc_D2A304: ConcatVar var_230
  loc_D2A308: FLdRfVar var_250
  loc_D2A30B: FLdRfVar var_210
  loc_D2A30E: LitVarStr var_260, "CodiTili"
  loc_D2A313: PopAdLdVar
  loc_D2A314: FLdRfVar var_1FC
  loc_D2A317: FLdPr Me
  loc_D2A31A: MemLdPr global_68
  loc_D2A31D:  = Me.Fields
  loc_D2A322: FLdPr var_1FC
  loc_D2A325: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A32A: FLdPr var_210
  loc_D2A32D:  = Me.Value
  loc_D2A332: FLdRfVar var_250
  loc_D2A335: ConcatVar var_280
  loc_D2A339: LitVarStr var_270, ","
  loc_D2A33E: ConcatVar var_290
  loc_D2A342: FLdRfVar var_2A0
  loc_D2A345: FLdRfVar var_2D8
  loc_D2A348: LitVarStr var_2B0, "NumeLiqu"
  loc_D2A34D: PopAdLdVar
  loc_D2A34E: FLdRfVar var_2C4
  loc_D2A351: FLdPr Me
  loc_D2A354: MemLdPr global_68
  loc_D2A357:  = Me.Fields
  loc_D2A35C: FLdPr var_2C4
  loc_D2A35F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A364: FLdPr var_2D8
  loc_D2A367:  = Me.Value
  loc_D2A36C: FLdRfVar var_2A0
  loc_D2A36F: ConcatVar var_2C0
  loc_D2A373: LitVarStr var_2D4, ",1,'"
  loc_D2A378: ConcatVar var_2E8
  loc_D2A37C: FLdRfVar var_308
  loc_D2A37F: FLdRfVar var_360
  loc_D2A382: LitVarStr var_2F8, "CodiInmu"
  loc_D2A387: PopAdLdVar
  loc_D2A388: FLdRfVar var_34C
  loc_D2A38B: FLdPr Me
  loc_D2A38E: MemLdPr global_68
  loc_D2A391:  = Me.Fields
  loc_D2A396: FLdPr var_34C
  loc_D2A399: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A39E: FLdPr var_360
  loc_D2A3A1:  = Me.Value
  loc_D2A3A6: FLdRfVar var_308
  loc_D2A3A9: ConcatVar var_318
  loc_D2A3AD: LitVarStr var_338, "','Bimestral',0,0,0,"
  loc_D2A3B2: ConcatVar var_328
  loc_D2A3B6: FLdRfVar var_348
  loc_D2A3B9: FLdRfVar var_3B8
  loc_D2A3BC: LitVarStr var_35C, "TiafConc"
  loc_D2A3C1: PopAdLdVar
  loc_D2A3C2: FLdRfVar var_3A4
  loc_D2A3C5: FLdPr Me
  loc_D2A3C8: MemLdPr global_68
  loc_D2A3CB:  = Me.Fields
  loc_D2A3D0: FLdPr var_3A4
  loc_D2A3D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A3D8: FLdPr var_3B8
  loc_D2A3DB:  = Me.Value
  loc_D2A3E0: FLdRfVar var_348
  loc_D2A3E3: ConcatVar var_370
  loc_D2A3E7: LitVarStr var_390, ","
  loc_D2A3EC: ConcatVar var_380
  loc_D2A3F0: FLdRfVar var_410
  loc_D2A3F3: LitVarStr var_3B4, "FealLita"
  loc_D2A3F8: PopAdLdVar
  loc_D2A3F9: FLdRfVar var_3FC
  loc_D2A3FC: FLdPr Me
  loc_D2A3FF: MemLdPr global_68
  loc_D2A402:  = Me.Fields
  loc_D2A407: FLdPr var_3FC
  loc_D2A40A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A40F: FLdZeroAd var_410
  loc_D2A412: CVarAd
  loc_D2A416: FLdRfVar var_3C8
  loc_D2A419: ImpAdCallFPR4  = Year()
  loc_D2A41E: FLdRfVar var_3C8
  loc_D2A421: ConcatVar var_3D8
  loc_D2A425: LitVarStr var_3E8, ",'"
  loc_D2A42A: ConcatVar var_3F8
  loc_D2A42E: FLdRfVar var_420
  loc_D2A431: FLdRfVar var_478
  loc_D2A434: LitVarStr var_40C, "CodiConc"
  loc_D2A439: PopAdLdVar
  loc_D2A43A: FLdRfVar var_464
  loc_D2A43D: FLdPr Me
  loc_D2A440: MemLdPr global_68
  loc_D2A443:  = Me.Fields
  loc_D2A448: FLdPr var_464
  loc_D2A44B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A450: FLdPr var_478
  loc_D2A453:  = Me.Value
  loc_D2A458: FLdRfVar var_420
  loc_D2A45B: ConcatVar var_430
  loc_D2A45F: LitVarStr var_450, "',"
  loc_D2A464: ConcatVar var_440
  loc_D2A468: LitI4 0
  loc_D2A46D: LitI4 -1
  loc_D2A472: LitI4 1
  loc_D2A477: LitStr "."
  loc_D2A47A: LitStr ","
  loc_D2A47D: FLdRfVar var_460
  loc_D2A480: FnCDblVar
  loc_D2A482: CStrR8
  loc_D2A484: FStStrNoPop var_178
  loc_D2A487: ImpAdCallI2 Replace(, , , , , )
  loc_D2A48C: CVarStr var_488
  loc_D2A48F: ConcatVar var_498
  loc_D2A493: LitVarStr var_4B8, ",0,0,0,0,0,0,"
  loc_D2A498: ConcatVar var_4A8
  loc_D2A49C: LitI4 0
  loc_D2A4A1: LitI4 -1
  loc_D2A4A6: LitI4 1
  loc_D2A4AB: LitStr "."
  loc_D2A4AE: LitStr ","
  loc_D2A4B1: FLdRfVar var_4C8
  loc_D2A4B4: CStrVarTmp
  loc_D2A4B5: FStStrNoPop var_17C
  loc_D2A4B8: ImpAdCallI2 Replace(, , , , , )
  loc_D2A4BD: CVarStr var_4E8
  loc_D2A4C0: ConcatVar var_508
  loc_D2A4C4: LitVarStr var_4F8, ");"
  loc_D2A4C9: ConcatVar var_538
  loc_D2A4CD: CStrVarVal var_180
  loc_D2A4D1: Call EjecutarRsCls(from_stack_1v)
  loc_D2A4D6: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_178 = "": var_17C = ""
  loc_D2A4F1: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_464 = "": var_478 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_D2A516: FFreeVar var_4E8 = "": var_508 = "": var_538 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_3A0 = "": var_380 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_460 = "": var_440 = "": var_488 = "": var_498 = "": var_4C8 = ""
  loc_D2A55B: Branch loc_D2A566
  loc_D2A55E: LitI4 0
  loc_D2A563: FStR4 var_A0
  loc_D2A566: FLdRfVar var_3B8
  loc_D2A569: LitVarStr var_558, "FeveLita"
  loc_D2A56E: PopAdLdVar
  loc_D2A56F: FLdRfVar var_3A4
  loc_D2A572: FLdPr Me
  loc_D2A575: MemLdPr global_68
  loc_D2A578:  = Me.Fields
  loc_D2A57D: FLdPr var_3A4
  loc_D2A580: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A585: FLdRfVar var_688
  loc_D2A588: FLdRfVar var_528
  loc_D2A58B: LitVarStr var_678, "ImpoLita"
  loc_D2A590: PopAdLdVar
  loc_D2A591: FLdRfVar var_524
  loc_D2A594: FLdPr Me
  loc_D2A597: MemLdPr global_68
  loc_D2A59A:  = Me.Fields
  loc_D2A59F: FLdPr var_524
  loc_D2A5A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A5A7: FLdPr var_528
  loc_D2A5AA:  = Me.Value
  loc_D2A5AF: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2A5B2: LitStr " VALUES (1,'"
  loc_D2A5B5: ConcatStr
  loc_D2A5B6: CVarStr var_1D8
  loc_D2A5B9: FLdRfVar var_1B8
  loc_D2A5BC: FLdRfVar var_1A8
  loc_D2A5BF: LitVarStr var_1A4, "CodiInmu"
  loc_D2A5C4: PopAdLdVar
  loc_D2A5C5: FLdRfVar var_194
  loc_D2A5C8: FLdPr Me
  loc_D2A5CB: MemLdPr global_68
  loc_D2A5CE:  = Me.Fields
  loc_D2A5D3: FLdPr var_194
  loc_D2A5D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A5DB: FLdPr var_1A8
  loc_D2A5DE:  = Me.Value
  loc_D2A5E3: FLdRfVar var_1B8
  loc_D2A5E6: ConcatVar var_1E8
  loc_D2A5EA: LitVarStr var_1C8, "',"
  loc_D2A5EF: ConcatVar var_1F8
  loc_D2A5F3: FLdI2 iPeriodo
  loc_D2A5F6: CVarI2 var_20C
  loc_D2A5F9: ConcatVar var_220
  loc_D2A5FD: LitVarStr var_240, ","
  loc_D2A602: ConcatVar var_230
  loc_D2A606: FLdRfVar var_250
  loc_D2A609: FLdRfVar var_210
  loc_D2A60C: LitVarStr var_260, "BimeLiqu"
  loc_D2A611: PopAdLdVar
  loc_D2A612: FLdRfVar var_1FC
  loc_D2A615: FLdPr Me
  loc_D2A618: MemLdPr global_68
  loc_D2A61B:  = Me.Fields
  loc_D2A620: FLdPr var_1FC
  loc_D2A623: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A628: FLdPr var_210
  loc_D2A62B:  = Me.Value
  loc_D2A630: FLdRfVar var_250
  loc_D2A633: ConcatVar var_280
  loc_D2A637: LitVarStr var_270, ","
  loc_D2A63C: ConcatVar var_290
  loc_D2A640: ILdRf var_9C
  loc_D2A643: CVarI4
  loc_D2A647: ConcatVar var_2A0
  loc_D2A64B: LitVarStr var_2D4, ",1,"
  loc_D2A650: ConcatVar var_2C0
  loc_D2A654: FLdRfVar var_2E8
  loc_D2A657: FLdRfVar var_2D8
  loc_D2A65A: LitVarStr var_2F8, "CodiTili"
  loc_D2A65F: PopAdLdVar
  loc_D2A660: FLdRfVar var_2C4
  loc_D2A663: FLdPr Me
  loc_D2A666: MemLdPr global_68
  loc_D2A669:  = Me.Fields
  loc_D2A66E: FLdPr var_2C4
  loc_D2A671: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A676: FLdPr var_2D8
  loc_D2A679:  = Me.Value
  loc_D2A67E: FLdRfVar var_2E8
  loc_D2A681: ConcatVar var_308
  loc_D2A685: LitVarStr var_338, ","
  loc_D2A68A: ConcatVar var_318
  loc_D2A68E: FLdRfVar var_328
  loc_D2A691: FLdRfVar var_360
  loc_D2A694: LitVarStr var_35C, "NumeLiqu"
  loc_D2A699: PopAdLdVar
  loc_D2A69A: FLdRfVar var_34C
  loc_D2A69D: FLdPr Me
  loc_D2A6A0: MemLdPr global_68
  loc_D2A6A3:  = Me.Fields
  loc_D2A6A8: FLdPr var_34C
  loc_D2A6AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A6B0: FLdPr var_360
  loc_D2A6B3:  = Me.Value
  loc_D2A6B8: FLdRfVar var_328
  loc_D2A6BB: ConcatVar var_348
  loc_D2A6BF: LitVarStr var_390, ","
  loc_D2A6C4: ConcatVar var_370
  loc_D2A6C8: LitVarI2 var_380, 0
  loc_D2A6CD: FLdRfVar iPeriodo
  loc_D2A6D0: CVarRef
  loc_D2A6D5: ILdRf var_A0
  loc_D2A6D8: LitI4 0
  loc_D2A6DD: NeI4
  loc_D2A6DE: CVarBoolI2 var_3B4
  loc_D2A6E2: FLdRfVar var_3A0
  loc_D2A6E5: ImpAdCallFPR4  = IIf(, , )
  loc_D2A6EA: FLdRfVar var_3A0
  loc_D2A6ED: ConcatVar var_3C8
  loc_D2A6F1: LitVarStr var_450, ","
  loc_D2A6F6: ConcatVar var_3D8
  loc_D2A6FA: ILdRf var_A0
  loc_D2A6FD: CVarI4
  loc_D2A701: ConcatVar var_3F8
  loc_D2A705: LitVarStr var_4B8, ",'Bimestral','"
  loc_D2A70A: ConcatVar var_420
  loc_D2A70E: LitI4 1
  loc_D2A713: LitI4 1
  loc_D2A718: LitVarStr var_4F8, "yyyy-mm-dd"
  loc_D2A71D: FStVarCopyObj var_430
  loc_D2A720: FLdRfVar var_430
  loc_D2A723: FLdRfVar arg_30
  loc_D2A726: CVarRef
  loc_D2A72B: ImpAdCallI2 Format$(, )
  loc_D2A730: CVarStr var_440
  loc_D2A733: ConcatVar var_460
  loc_D2A737: LitVarStr var_548, "','"
  loc_D2A73C: ConcatVar var_488
  loc_D2A740: LitI4 1
  loc_D2A745: LitI4 1
  loc_D2A74A: LitVarStr var_568, "yyyy-mm-dd"
  loc_D2A74F: FStVarCopyObj var_4A8
  loc_D2A752: FLdRfVar var_4A8
  loc_D2A755: FLdZeroAd var_3B8
  loc_D2A758: CVarAd
  loc_D2A75C: ImpAdCallI2 Format$(, )
  loc_D2A761: CVarStr var_4C8
  loc_D2A764: ConcatVar var_4E8
  loc_D2A768: LitVarStr var_578, "',Null,0,"
  loc_D2A76D: ConcatVar var_508
  loc_D2A771: FLdRfVar var_410
  loc_D2A774: LitVarStr var_588, "FealLita"
  loc_D2A779: PopAdLdVar
  loc_D2A77A: FLdRfVar var_3FC
  loc_D2A77D: FLdPr Me
  loc_D2A780: MemLdPr global_68
  loc_D2A783:  = Me.Fields
  loc_D2A788: FLdPr var_3FC
  loc_D2A78B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A790: FLdZeroAd var_410
  loc_D2A793: CVarAd
  loc_D2A797: FLdRfVar var_598
  loc_D2A79A: ImpAdCallFPR4  = Year()
  loc_D2A79F: FLdRfVar var_598
  loc_D2A7A2: ConcatVar var_5A8
  loc_D2A7A6: LitVarStr var_5B8, ",'"
  loc_D2A7AB: ConcatVar var_5C8
  loc_D2A7AF: FLdRfVar var_5E8
  loc_D2A7B2: FLdRfVar var_478
  loc_D2A7B5: LitVarStr var_5D8, "CodiConc"
  loc_D2A7BA: PopAdLdVar
  loc_D2A7BB: FLdRfVar var_464
  loc_D2A7BE: FLdPr Me
  loc_D2A7C1: MemLdPr global_68
  loc_D2A7C4:  = Me.Fields
  loc_D2A7C9: FLdPr var_464
  loc_D2A7CC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A7D1: FLdPr var_478
  loc_D2A7D4:  = Me.Value
  loc_D2A7D9: FLdRfVar var_5E8
  loc_D2A7DC: ConcatVar var_5F8
  loc_D2A7E0: LitVarStr var_608, "',0, 0, 0,"
  loc_D2A7E5: ConcatVar var_618
  loc_D2A7E9: FLdRfVar var_638
  loc_D2A7EC: FLdRfVar var_520
  loc_D2A7EF: LitVarStr var_628, "TiafConc"
  loc_D2A7F4: PopAdLdVar
  loc_D2A7F5: FLdRfVar var_51C
  loc_D2A7F8: FLdPr Me
  loc_D2A7FB: MemLdPr global_68
  loc_D2A7FE:  = Me.Fields
  loc_D2A803: FLdPr var_51C
  loc_D2A806: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A80B: FLdPr var_520
  loc_D2A80E:  = Me.Value
  loc_D2A813: FLdRfVar var_638
  loc_D2A816: ConcatVar var_648
  loc_D2A81A: LitVarStr var_658, ", '', '', 0, 0, '',"
  loc_D2A81F: ConcatVar var_668
  loc_D2A823: LitI4 0
  loc_D2A828: LitI4 -1
  loc_D2A82D: LitI4 1
  loc_D2A832: LitStr "."
  loc_D2A835: LitStr ","
  loc_D2A838: FLdRfVar var_688
  loc_D2A83B: CStrVarTmp
  loc_D2A83C: FStStrNoPop var_150
  loc_D2A83F: ImpAdCallI2 Replace(, , , , , )
  loc_D2A844: CVarStr var_698
  loc_D2A847: ConcatVar var_6A8
  loc_D2A84B: LitVarStr var_6B8, ",0,'"
  loc_D2A850: ConcatVar var_6C8
  loc_D2A854: ImpAdLdI4 MemVar_D9302C
  loc_D2A857: CVarStr var_6D8
  loc_D2A85A: ConcatVar var_6E8
  loc_D2A85E: LitVarStr var_6F8, "');"
  loc_D2A863: ConcatVar var_708
  loc_D2A867: CStrVarVal var_154
  loc_D2A86B: Call EjecutarRsCls(from_stack_1v)
  loc_D2A870: FFreeStr var_150 = ""
  loc_D2A877: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3FC = "": var_464 = "": var_478 = "": var_51C = "": var_520 = "": var_524 = ""
  loc_D2A89A: FFreeVar var_4C8 = "": var_4E8 = "": var_538 = "": var_508 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_638 = "": var_648 = "": var_688 = "": var_668 = "": var_698 = "": var_6A8 = "": var_6C8 = "": var_6E8 = "": var_708 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_3B4 = "": var_380 = "": var_370 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_430 = "": var_420 = "": var_440 = "": var_460 = "": var_498 = "": var_4A8 = ""
  loc_D2A8FF: FLdRfVar var_1B8
  loc_D2A902: FLdRfVar var_1A8
  loc_D2A905: LitVarStr var_1A4, "DescLita"
  loc_D2A90A: PopAdLdVar
  loc_D2A90B: FLdRfVar var_194
  loc_D2A90E: FLdPr Me
  loc_D2A911: MemLdPr global_68
  loc_D2A914:  = Me.Fields
  loc_D2A919: FLdPr var_194
  loc_D2A91C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A921: FLdPr var_1A8
  loc_D2A924:  = Me.Value
  loc_D2A929: FLdRfVar var_1B8
  loc_D2A92C: LitVarI2 var_1C8, 0
  loc_D2A931: HardType
  loc_D2A932: GtVarBool
  loc_D2A934: FFreeAd var_194 = ""
  loc_D2A93B: FFree1Var var_1B8 = ""
  loc_D2A93E: BranchF loc_D2ACBE
  loc_D2A941: FLdFPR8 var_AC
  loc_D2A944: CVarR8
  loc_D2A948: FLdRfVar var_1B8
  loc_D2A94B: FLdRfVar var_1A8
  loc_D2A94E: LitVarStr var_1A4, "DescLita"
  loc_D2A953: PopAdLdVar
  loc_D2A954: FLdRfVar var_194
  loc_D2A957: FLdPr Me
  loc_D2A95A: MemLdPr global_68
  loc_D2A95D:  = Me.Fields
  loc_D2A962: FLdPr var_194
  loc_D2A965: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A96A: FLdPr var_1A8
  loc_D2A96D:  = Me.Value
  loc_D2A972: FLdRfVar var_1B8
  loc_D2A975: AddVar var_1D8
  loc_D2A979: CR4Var
  loc_D2A97A: FStFPR8 var_AC
  loc_D2A97D: FFreeAd var_194 = ""
  loc_D2A984: FFreeVar var_1B8 = ""
  loc_D2A98B: FLdRfVar var_618
  loc_D2A98E: FLdRfVar var_478
  loc_D2A991: LitVarStr var_628, "DescLita"
  loc_D2A996: PopAdLdVar
  loc_D2A997: FLdRfVar var_464
  loc_D2A99A: FLdPr Me
  loc_D2A99D: MemLdPr global_68
  loc_D2A9A0:  = Me.Fields
  loc_D2A9A5: FLdPr var_464
  loc_D2A9A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A9AD: FLdPr var_478
  loc_D2A9B0:  = Me.Value
  loc_D2A9B5: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2A9B8: LitStr " VALUES (1,'"
  loc_D2A9BB: ConcatStr
  loc_D2A9BC: CVarStr var_1D8
  loc_D2A9BF: FLdRfVar var_1B8
  loc_D2A9C2: FLdRfVar var_1A8
  loc_D2A9C5: LitVarStr var_1A4, "CodiInmu"
  loc_D2A9CA: PopAdLdVar
  loc_D2A9CB: FLdRfVar var_194
  loc_D2A9CE: FLdPr Me
  loc_D2A9D1: MemLdPr global_68
  loc_D2A9D4:  = Me.Fields
  loc_D2A9D9: FLdPr var_194
  loc_D2A9DC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2A9E1: FLdPr var_1A8
  loc_D2A9E4:  = Me.Value
  loc_D2A9E9: FLdRfVar var_1B8
  loc_D2A9EC: ConcatVar var_1E8
  loc_D2A9F0: LitVarStr var_1C8, "',"
  loc_D2A9F5: ConcatVar var_1F8
  loc_D2A9F9: FLdI2 iPeriodo
  loc_D2A9FC: CVarI2 var_20C
  loc_D2A9FF: ConcatVar var_220
  loc_D2AA03: LitVarStr var_240, ","
  loc_D2AA08: ConcatVar var_230
  loc_D2AA0C: FLdRfVar var_250
  loc_D2AA0F: FLdRfVar var_210
  loc_D2AA12: LitVarStr var_260, "BimeLiqu"
  loc_D2AA17: PopAdLdVar
  loc_D2AA18: FLdRfVar var_1FC
  loc_D2AA1B: FLdPr Me
  loc_D2AA1E: MemLdPr global_68
  loc_D2AA21:  = Me.Fields
  loc_D2AA26: FLdPr var_1FC
  loc_D2AA29: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AA2E: FLdPr var_210
  loc_D2AA31:  = Me.Value
  loc_D2AA36: FLdRfVar var_250
  loc_D2AA39: ConcatVar var_280
  loc_D2AA3D: LitVarStr var_270, ","
  loc_D2AA42: ConcatVar var_290
  loc_D2AA46: ILdRf var_9C
  loc_D2AA49: CVarI4
  loc_D2AA4D: ConcatVar var_2A0
  loc_D2AA51: LitVarStr var_2D4, ",2,"
  loc_D2AA56: ConcatVar var_2C0
  loc_D2AA5A: FLdRfVar var_2E8
  loc_D2AA5D: FLdRfVar var_2D8
  loc_D2AA60: LitVarStr var_2F8, "CodiTili"
  loc_D2AA65: PopAdLdVar
  loc_D2AA66: FLdRfVar var_2C4
  loc_D2AA69: FLdPr Me
  loc_D2AA6C: MemLdPr global_68
  loc_D2AA6F:  = Me.Fields
  loc_D2AA74: FLdPr var_2C4
  loc_D2AA77: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AA7C: FLdPr var_2D8
  loc_D2AA7F:  = Me.Value
  loc_D2AA84: FLdRfVar var_2E8
  loc_D2AA87: ConcatVar var_308
  loc_D2AA8B: LitVarStr var_338, ","
  loc_D2AA90: ConcatVar var_318
  loc_D2AA94: FLdRfVar var_328
  loc_D2AA97: FLdRfVar var_360
  loc_D2AA9A: LitVarStr var_35C, "NumeLiqu"
  loc_D2AA9F: PopAdLdVar
  loc_D2AAA0: FLdRfVar var_34C
  loc_D2AAA3: FLdPr Me
  loc_D2AAA6: MemLdPr global_68
  loc_D2AAA9:  = Me.Fields
  loc_D2AAAE: FLdPr var_34C
  loc_D2AAB1: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AAB6: FLdPr var_360
  loc_D2AAB9:  = Me.Value
  loc_D2AABE: FLdRfVar var_328
  loc_D2AAC1: ConcatVar var_348
  loc_D2AAC5: LitVarStr var_390, ","
  loc_D2AACA: ConcatVar var_370
  loc_D2AACE: LitVarI2 var_380, 0
  loc_D2AAD3: FLdRfVar iPeriodo
  loc_D2AAD6: CVarRef
  loc_D2AADB: ILdRf var_A0
  loc_D2AADE: LitI4 0
  loc_D2AAE3: NeI4
  loc_D2AAE4: CVarBoolI2 var_3B4
  loc_D2AAE8: FLdRfVar var_3A0
  loc_D2AAEB: ImpAdCallFPR4  = IIf(, , )
  loc_D2AAF0: FLdRfVar var_3A0
  loc_D2AAF3: ConcatVar var_3C8
  loc_D2AAF7: LitVarStr var_450, ","
  loc_D2AAFC: ConcatVar var_3D8
  loc_D2AB00: ILdRf var_A0
  loc_D2AB03: CVarI4
  loc_D2AB07: ConcatVar var_3F8
  loc_D2AB0B: LitVarStr var_4B8, ",'Bimestral','"
  loc_D2AB10: ConcatVar var_420
  loc_D2AB14: LitI4 1
  loc_D2AB19: LitI4 1
  loc_D2AB1E: LitVarStr var_4F8, "yyyy-mm-dd"
  loc_D2AB23: FStVarCopyObj var_430
  loc_D2AB26: FLdRfVar var_430
  loc_D2AB29: FLdRfVar arg_30
  loc_D2AB2C: CVarRef
  loc_D2AB31: ImpAdCallI2 Format$(, )
  loc_D2AB36: CVarStr var_440
  loc_D2AB39: ConcatVar var_460
  loc_D2AB3D: LitVarStr var_548, "','"
  loc_D2AB42: ConcatVar var_488
  loc_D2AB46: LitI4 1
  loc_D2AB4B: LitI4 1
  loc_D2AB50: LitVarStr var_568, "yyyy-mm-dd"
  loc_D2AB55: FStVarCopyObj var_498
  loc_D2AB58: FLdRfVar var_498
  loc_D2AB5B: FLdRfVar arg_30
  loc_D2AB5E: CVarRef
  loc_D2AB63: ImpAdCallI2 Format$(, )
  loc_D2AB68: CVarStr var_4A8
  loc_D2AB6B: ConcatVar var_4C8
  loc_D2AB6F: LitVarStr var_578, "',Null,0,"
  loc_D2AB74: ConcatVar var_4E8
  loc_D2AB78: FLdRfVar var_3B8
  loc_D2AB7B: LitVarStr var_588, "FealLita"
  loc_D2AB80: PopAdLdVar
  loc_D2AB81: FLdRfVar var_3A4
  loc_D2AB84: FLdPr Me
  loc_D2AB87: MemLdPr global_68
  loc_D2AB8A:  = Me.Fields
  loc_D2AB8F: FLdPr var_3A4
  loc_D2AB92: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AB97: FLdZeroAd var_3B8
  loc_D2AB9A: CVarAd
  loc_D2AB9E: FLdRfVar var_538
  loc_D2ABA1: ImpAdCallFPR4  = Year()
  loc_D2ABA6: FLdRfVar var_538
  loc_D2ABA9: ConcatVar var_598
  loc_D2ABAD: LitVarStr var_5B8, ",'"
  loc_D2ABB2: ConcatVar var_5A8
  loc_D2ABB6: FLdRfVar var_5C8
  loc_D2ABB9: FLdRfVar var_410
  loc_D2ABBC: LitVarStr var_5D8, "CodiConc"
  loc_D2ABC1: PopAdLdVar
  loc_D2ABC2: FLdRfVar var_3FC
  loc_D2ABC5: FLdPr Me
  loc_D2ABC8: MemLdPr global_68
  loc_D2ABCB:  = Me.Fields
  loc_D2ABD0: FLdPr var_3FC
  loc_D2ABD3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ABD8: FLdPr var_410
  loc_D2ABDB:  = Me.Value
  loc_D2ABE0: FLdRfVar var_5C8
  loc_D2ABE3: ConcatVar var_5E8
  loc_D2ABE7: LitVarStr var_608, "',0,0,0,6,'','',0,0,'',0,"
  loc_D2ABEC: ConcatVar var_5F8
  loc_D2ABF0: LitI4 0
  loc_D2ABF5: LitI4 -1
  loc_D2ABFA: LitI4 1
  loc_D2ABFF: LitStr "."
  loc_D2AC02: LitStr ","
  loc_D2AC05: FLdRfVar var_618
  loc_D2AC08: CStrVarTmp
  loc_D2AC09: FStStrNoPop var_150
  loc_D2AC0C: ImpAdCallI2 Replace(, , , , , )
  loc_D2AC11: CVarStr var_638
  loc_D2AC14: ConcatVar var_648
  loc_D2AC18: LitVarStr var_658, ",'"
  loc_D2AC1D: ConcatVar var_668
  loc_D2AC21: ImpAdLdI4 MemVar_D9302C
  loc_D2AC24: CVarStr var_678
  loc_D2AC27: ConcatVar var_688
  loc_D2AC2B: LitVarStr var_6B8, "');"
  loc_D2AC30: ConcatVar var_698
  loc_D2AC34: CStrVarVal var_154
  loc_D2AC38: Call EjecutarRsCls(from_stack_1v)
  loc_D2AC3D: FFreeStr var_150 = ""
  loc_D2AC44: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3FC = "": var_410 = "": var_464 = ""
  loc_D2AC61: FFreeVar var_4C8 = "": var_508 = "": var_4E8 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_618 = "": var_5F8 = "": var_638 = "": var_648 = "": var_668 = "": var_688 = "": var_698 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_3B4 = "": var_380 = "": var_370 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_430 = "": var_420 = "": var_440 = "": var_460 = "": var_498 = "": var_488 = ""
  loc_D2ACBE: FLdRfVar var_1B8
  loc_D2ACC1: FLdRfVar var_1A8
  loc_D2ACC4: LitVarStr var_1A4, "ExenLita"
  loc_D2ACC9: PopAdLdVar
  loc_D2ACCA: FLdRfVar var_194
  loc_D2ACCD: FLdPr Me
  loc_D2ACD0: MemLdPr global_68
  loc_D2ACD3:  = Me.Fields
  loc_D2ACD8: FLdPr var_194
  loc_D2ACDB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ACE0: FLdPr var_1A8
  loc_D2ACE3:  = Me.Value
  loc_D2ACE8: FLdRfVar var_1B8
  loc_D2ACEB: FnCDblVar
  loc_D2ACED: LitI2_Byte 0
  loc_D2ACEF: CR8I2
  loc_D2ACF0: GtR4
  loc_D2ACF1: FFreeAd var_194 = ""
  loc_D2ACF8: FFree1Var var_1B8 = ""
  loc_D2ACFB: BranchF loc_D2B07B
  loc_D2ACFE: FLdFPR8 var_B4
  loc_D2AD01: CVarR8
  loc_D2AD05: FLdRfVar var_1B8
  loc_D2AD08: FLdRfVar var_1A8
  loc_D2AD0B: LitVarStr var_1A4, "ExenLita"
  loc_D2AD10: PopAdLdVar
  loc_D2AD11: FLdRfVar var_194
  loc_D2AD14: FLdPr Me
  loc_D2AD17: MemLdPr global_68
  loc_D2AD1A:  = Me.Fields
  loc_D2AD1F: FLdPr var_194
  loc_D2AD22: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AD27: FLdPr var_1A8
  loc_D2AD2A:  = Me.Value
  loc_D2AD2F: FLdRfVar var_1B8
  loc_D2AD32: AddVar var_1D8
  loc_D2AD36: CR4Var
  loc_D2AD37: FStFPR8 var_B4
  loc_D2AD3A: FFreeAd var_194 = ""
  loc_D2AD41: FFreeVar var_1B8 = ""
  loc_D2AD48: FLdRfVar var_618
  loc_D2AD4B: FLdRfVar var_478
  loc_D2AD4E: LitVarStr var_628, "ExenLita"
  loc_D2AD53: PopAdLdVar
  loc_D2AD54: FLdRfVar var_464
  loc_D2AD57: FLdPr Me
  loc_D2AD5A: MemLdPr global_68
  loc_D2AD5D:  = Me.Fields
  loc_D2AD62: FLdPr var_464
  loc_D2AD65: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AD6A: FLdPr var_478
  loc_D2AD6D:  = Me.Value
  loc_D2AD72: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D2AD75: LitStr " VALUES (1,'"
  loc_D2AD78: ConcatStr
  loc_D2AD79: CVarStr var_1D8
  loc_D2AD7C: FLdRfVar var_1B8
  loc_D2AD7F: FLdRfVar var_1A8
  loc_D2AD82: LitVarStr var_1A4, "CodiInmu"
  loc_D2AD87: PopAdLdVar
  loc_D2AD88: FLdRfVar var_194
  loc_D2AD8B: FLdPr Me
  loc_D2AD8E: MemLdPr global_68
  loc_D2AD91:  = Me.Fields
  loc_D2AD96: FLdPr var_194
  loc_D2AD99: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AD9E: FLdPr var_1A8
  loc_D2ADA1:  = Me.Value
  loc_D2ADA6: FLdRfVar var_1B8
  loc_D2ADA9: ConcatVar var_1E8
  loc_D2ADAD: LitVarStr var_1C8, "',"
  loc_D2ADB2: ConcatVar var_1F8
  loc_D2ADB6: FLdI2 iPeriodo
  loc_D2ADB9: CVarI2 var_20C
  loc_D2ADBC: ConcatVar var_220
  loc_D2ADC0: LitVarStr var_240, ","
  loc_D2ADC5: ConcatVar var_230
  loc_D2ADC9: FLdRfVar var_250
  loc_D2ADCC: FLdRfVar var_210
  loc_D2ADCF: LitVarStr var_260, "BimeLiqu"
  loc_D2ADD4: PopAdLdVar
  loc_D2ADD5: FLdRfVar var_1FC
  loc_D2ADD8: FLdPr Me
  loc_D2ADDB: MemLdPr global_68
  loc_D2ADDE:  = Me.Fields
  loc_D2ADE3: FLdPr var_1FC
  loc_D2ADE6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2ADEB: FLdPr var_210
  loc_D2ADEE:  = Me.Value
  loc_D2ADF3: FLdRfVar var_250
  loc_D2ADF6: ConcatVar var_280
  loc_D2ADFA: LitVarStr var_270, ","
  loc_D2ADFF: ConcatVar var_290
  loc_D2AE03: ILdRf var_9C
  loc_D2AE06: CVarI4
  loc_D2AE0A: ConcatVar var_2A0
  loc_D2AE0E: LitVarStr var_2D4, ",3,"
  loc_D2AE13: ConcatVar var_2C0
  loc_D2AE17: FLdRfVar var_2E8
  loc_D2AE1A: FLdRfVar var_2D8
  loc_D2AE1D: LitVarStr var_2F8, "CodiTili"
  loc_D2AE22: PopAdLdVar
  loc_D2AE23: FLdRfVar var_2C4
  loc_D2AE26: FLdPr Me
  loc_D2AE29: MemLdPr global_68
  loc_D2AE2C:  = Me.Fields
  loc_D2AE31: FLdPr var_2C4
  loc_D2AE34: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AE39: FLdPr var_2D8
  loc_D2AE3C:  = Me.Value
  loc_D2AE41: FLdRfVar var_2E8
  loc_D2AE44: ConcatVar var_308
  loc_D2AE48: LitVarStr var_338, ","
  loc_D2AE4D: ConcatVar var_318
  loc_D2AE51: FLdRfVar var_328
  loc_D2AE54: FLdRfVar var_360
  loc_D2AE57: LitVarStr var_35C, "NumeLiqu"
  loc_D2AE5C: PopAdLdVar
  loc_D2AE5D: FLdRfVar var_34C
  loc_D2AE60: FLdPr Me
  loc_D2AE63: MemLdPr global_68
  loc_D2AE66:  = Me.Fields
  loc_D2AE6B: FLdPr var_34C
  loc_D2AE6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AE73: FLdPr var_360
  loc_D2AE76:  = Me.Value
  loc_D2AE7B: FLdRfVar var_328
  loc_D2AE7E: ConcatVar var_348
  loc_D2AE82: LitVarStr var_390, ","
  loc_D2AE87: ConcatVar var_370
  loc_D2AE8B: LitVarI2 var_380, 0
  loc_D2AE90: FLdRfVar iPeriodo
  loc_D2AE93: CVarRef
  loc_D2AE98: ILdRf var_A0
  loc_D2AE9B: LitI4 0
  loc_D2AEA0: NeI4
  loc_D2AEA1: CVarBoolI2 var_3B4
  loc_D2AEA5: FLdRfVar var_3A0
  loc_D2AEA8: ImpAdCallFPR4  = IIf(, , )
  loc_D2AEAD: FLdRfVar var_3A0
  loc_D2AEB0: ConcatVar var_3C8
  loc_D2AEB4: LitVarStr var_450, ","
  loc_D2AEB9: ConcatVar var_3D8
  loc_D2AEBD: ILdRf var_A0
  loc_D2AEC0: CVarI4
  loc_D2AEC4: ConcatVar var_3F8
  loc_D2AEC8: LitVarStr var_4B8, ",'Bimestral','"
  loc_D2AECD: ConcatVar var_420
  loc_D2AED1: LitI4 1
  loc_D2AED6: LitI4 1
  loc_D2AEDB: LitVarStr var_4F8, "yyyy-mm-dd"
  loc_D2AEE0: FStVarCopyObj var_430
  loc_D2AEE3: FLdRfVar var_430
  loc_D2AEE6: FLdRfVar arg_30
  loc_D2AEE9: CVarRef
  loc_D2AEEE: ImpAdCallI2 Format$(, )
  loc_D2AEF3: CVarStr var_440
  loc_D2AEF6: ConcatVar var_460
  loc_D2AEFA: LitVarStr var_548, "','"
  loc_D2AEFF: ConcatVar var_488
  loc_D2AF03: LitI4 1
  loc_D2AF08: LitI4 1
  loc_D2AF0D: LitVarStr var_568, "yyyy-mm-dd"
  loc_D2AF12: FStVarCopyObj var_498
  loc_D2AF15: FLdRfVar var_498
  loc_D2AF18: FLdRfVar arg_30
  loc_D2AF1B: CVarRef
  loc_D2AF20: ImpAdCallI2 Format$(, )
  loc_D2AF25: CVarStr var_4A8
  loc_D2AF28: ConcatVar var_4C8
  loc_D2AF2C: LitVarStr var_578, "',Null,0,"
  loc_D2AF31: ConcatVar var_4E8
  loc_D2AF35: FLdRfVar var_3B8
  loc_D2AF38: LitVarStr var_588, "FealLita"
  loc_D2AF3D: PopAdLdVar
  loc_D2AF3E: FLdRfVar var_3A4
  loc_D2AF41: FLdPr Me
  loc_D2AF44: MemLdPr global_68
  loc_D2AF47:  = Me.Fields
  loc_D2AF4C: FLdPr var_3A4
  loc_D2AF4F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AF54: FLdZeroAd var_3B8
  loc_D2AF57: CVarAd
  loc_D2AF5B: FLdRfVar var_538
  loc_D2AF5E: ImpAdCallFPR4  = Year()
  loc_D2AF63: FLdRfVar var_538
  loc_D2AF66: ConcatVar var_598
  loc_D2AF6A: LitVarStr var_5B8, ",'"
  loc_D2AF6F: ConcatVar var_5A8
  loc_D2AF73: FLdRfVar var_5C8
  loc_D2AF76: FLdRfVar var_410
  loc_D2AF79: LitVarStr var_5D8, "CodiConc"
  loc_D2AF7E: PopAdLdVar
  loc_D2AF7F: FLdRfVar var_3FC
  loc_D2AF82: FLdPr Me
  loc_D2AF85: MemLdPr global_68
  loc_D2AF88:  = Me.Fields
  loc_D2AF8D: FLdPr var_3FC
  loc_D2AF90: from_stack_2 = Me.Item(from_stack_1)
  loc_D2AF95: FLdPr var_410
  loc_D2AF98:  = Me.Value
  loc_D2AF9D: FLdRfVar var_5C8
  loc_D2AFA0: ConcatVar var_5E8
  loc_D2AFA4: LitVarStr var_608, "',0,0,0,15,'','',0,0,'',0,"
  loc_D2AFA9: ConcatVar var_5F8
  loc_D2AFAD: LitI4 0
  loc_D2AFB2: LitI4 -1
  loc_D2AFB7: LitI4 1
  loc_D2AFBC: LitStr "."
  loc_D2AFBF: LitStr ","
  loc_D2AFC2: FLdRfVar var_618
  loc_D2AFC5: CStrVarTmp
  loc_D2AFC6: FStStrNoPop var_150
  loc_D2AFC9: ImpAdCallI2 Replace(, , , , , )
  loc_D2AFCE: CVarStr var_638
  loc_D2AFD1: ConcatVar var_648
  loc_D2AFD5: LitVarStr var_658, ",'"
  loc_D2AFDA: ConcatVar var_668
  loc_D2AFDE: ImpAdLdI4 MemVar_D9302C
  loc_D2AFE1: CVarStr var_678
  loc_D2AFE4: ConcatVar var_688
  loc_D2AFE8: LitVarStr var_6B8, "');"
  loc_D2AFED: ConcatVar var_698
  loc_D2AFF1: CStrVarVal var_154
  loc_D2AFF5: Call EjecutarRsCls(from_stack_1v)
  loc_D2AFFA: FFreeStr var_150 = ""
  loc_D2B001: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3FC = "": var_410 = "": var_464 = ""
  loc_D2B01E: FFreeVar var_4C8 = "": var_508 = "": var_4E8 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_618 = "": var_5F8 = "": var_638 = "": var_648 = "": var_668 = "": var_688 = "": var_698 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_3B4 = "": var_380 = "": var_370 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_430 = "": var_420 = "": var_440 = "": var_460 = "": var_498 = "": var_488 = ""
  loc_D2B07B: FLdRfVar var_1B8
  loc_D2B07E: FLdRfVar var_1A8
  loc_D2B081: LitVarStr var_1A4, "CrafLita"
  loc_D2B086: PopAdLdVar
  loc_D2B087: FLdRfVar var_194
  loc_D2B08A: FLdPr Me
  loc_D2B08D: MemLdPr global_68
  loc_D2B090:  = Me.Fields
  loc_D2B095: FLdPr var_194
  loc_D2B098: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B09D: FLdPr var_1A8
  loc_D2B0A0:  = Me.Value
  loc_D2B0A5: FLdRfVar var_1B8
  loc_D2B0A8: LitVarI2 var_1C8, 0
  loc_D2B0AD: HardType
  loc_D2B0AE: GtVarBool
  loc_D2B0B0: FFreeAd var_194 = ""
  loc_D2B0B7: FFree1Var var_1B8 = ""
  loc_D2B0BA: BranchF loc_D2BDDC
  loc_D2B0BD: FLdRfVar var_618
  loc_D2B0C0: FLdRfVar var_478
  loc_D2B0C3: LitVarStr var_628, "CrafLita"
  loc_D2B0C8: PopAdLdVar
  loc_D2B0C9: FLdRfVar var_464
  loc_D2B0CC: FLdPr Me
  loc_D2B0CF: MemLdPr global_68
  loc_D2B0D2:  = Me.Fields
  loc_D2B0D7: FLdPr var_464
  loc_D2B0DA: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B0DF: FLdPr var_478
  loc_D2B0E2:  = Me.Value
  loc_D2B0E7: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, TifaCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_D2B0EA: LitStr " VALUES (1,'"
  loc_D2B0ED: ConcatStr
  loc_D2B0EE: CVarStr var_1D8
  loc_D2B0F1: FLdRfVar var_1B8
  loc_D2B0F4: FLdRfVar var_1A8
  loc_D2B0F7: LitVarStr var_1A4, "CodiInmu"
  loc_D2B0FC: PopAdLdVar
  loc_D2B0FD: FLdRfVar var_194
  loc_D2B100: FLdPr Me
  loc_D2B103: MemLdPr global_68
  loc_D2B106:  = Me.Fields
  loc_D2B10B: FLdPr var_194
  loc_D2B10E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B113: FLdPr var_1A8
  loc_D2B116:  = Me.Value
  loc_D2B11B: FLdRfVar var_1B8
  loc_D2B11E: ConcatVar var_1E8
  loc_D2B122: LitVarStr var_1C8, "',"
  loc_D2B127: ConcatVar var_1F8
  loc_D2B12B: FLdI2 iPeriodo
  loc_D2B12E: CVarI2 var_20C
  loc_D2B131: ConcatVar var_220
  loc_D2B135: LitVarStr var_240, ","
  loc_D2B13A: ConcatVar var_230
  loc_D2B13E: FLdRfVar var_250
  loc_D2B141: FLdRfVar var_210
  loc_D2B144: LitVarStr var_260, "BimeLiqu"
  loc_D2B149: PopAdLdVar
  loc_D2B14A: FLdRfVar var_1FC
  loc_D2B14D: FLdPr Me
  loc_D2B150: MemLdPr global_68
  loc_D2B153:  = Me.Fields
  loc_D2B158: FLdPr var_1FC
  loc_D2B15B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B160: FLdPr var_210
  loc_D2B163:  = Me.Value
  loc_D2B168: FLdRfVar var_250
  loc_D2B16B: ConcatVar var_280
  loc_D2B16F: LitVarStr var_270, ","
  loc_D2B174: ConcatVar var_290
  loc_D2B178: ILdRf var_9C
  loc_D2B17B: CVarI4
  loc_D2B17F: ConcatVar var_2A0
  loc_D2B183: LitVarStr var_2D4, ",4,"
  loc_D2B188: ConcatVar var_2C0
  loc_D2B18C: FLdRfVar var_2E8
  loc_D2B18F: FLdRfVar var_2D8
  loc_D2B192: LitVarStr var_2F8, "CodiTili"
  loc_D2B197: PopAdLdVar
  loc_D2B198: FLdRfVar var_2C4
  loc_D2B19B: FLdPr Me
  loc_D2B19E: MemLdPr global_68
  loc_D2B1A1:  = Me.Fields
  loc_D2B1A6: FLdPr var_2C4
  loc_D2B1A9: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B1AE: FLdPr var_2D8
  loc_D2B1B1:  = Me.Value
  loc_D2B1B6: FLdRfVar var_2E8
  loc_D2B1B9: ConcatVar var_308
  loc_D2B1BD: LitVarStr var_338, ","
  loc_D2B1C2: ConcatVar var_318
  loc_D2B1C6: FLdRfVar var_328
  loc_D2B1C9: FLdRfVar var_360
  loc_D2B1CC: LitVarStr var_35C, "NumeLiqu"
  loc_D2B1D1: PopAdLdVar
  loc_D2B1D2: FLdRfVar var_34C
  loc_D2B1D5: FLdPr Me
  loc_D2B1D8: MemLdPr global_68
  loc_D2B1DB:  = Me.Fields
  loc_D2B1E0: FLdPr var_34C
  loc_D2B1E3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B1E8: FLdPr var_360
  loc_D2B1EB:  = Me.Value
  loc_D2B1F0: FLdRfVar var_328
  loc_D2B1F3: ConcatVar var_348
  loc_D2B1F7: LitVarStr var_390, ","
  loc_D2B1FC: ConcatVar var_370
  loc_D2B200: LitVarI2 var_380, 0
  loc_D2B205: FLdRfVar iPeriodo
  loc_D2B208: CVarRef
  loc_D2B20D: ILdRf var_A0
  loc_D2B210: LitI4 0
  loc_D2B215: NeI4
  loc_D2B216: CVarBoolI2 var_3B4
  loc_D2B21A: FLdRfVar var_3A0
  loc_D2B21D: ImpAdCallFPR4  = IIf(, , )
  loc_D2B222: FLdRfVar var_3A0
  loc_D2B225: ConcatVar var_3C8
  loc_D2B229: LitVarStr var_450, ","
  loc_D2B22E: ConcatVar var_3D8
  loc_D2B232: ILdRf var_A0
  loc_D2B235: CVarI4
  loc_D2B239: ConcatVar var_3F8
  loc_D2B23D: LitVarStr var_4B8, ",'Bimestral','"
  loc_D2B242: ConcatVar var_420
  loc_D2B246: LitI4 1
  loc_D2B24B: LitI4 1
  loc_D2B250: LitVarStr var_4F8, "yyyy-mm-dd"
  loc_D2B255: FStVarCopyObj var_430
  loc_D2B258: FLdRfVar var_430
  loc_D2B25B: FLdRfVar arg_30
  loc_D2B25E: CVarRef
  loc_D2B263: ImpAdCallI2 Format$(, )
  loc_D2B268: CVarStr var_440
  loc_D2B26B: ConcatVar var_460
  loc_D2B26F: LitVarStr var_548, "','"
  loc_D2B274: ConcatVar var_488
  loc_D2B278: LitI4 1
  loc_D2B27D: LitI4 1
  loc_D2B282: LitVarStr var_568, "yyyy-mm-dd"
  loc_D2B287: FStVarCopyObj var_498
  loc_D2B28A: FLdRfVar var_498
  loc_D2B28D: FLdRfVar arg_30
  loc_D2B290: CVarRef
  loc_D2B295: ImpAdCallI2 Format$(, )
  loc_D2B29A: CVarStr var_4A8
  loc_D2B29D: ConcatVar var_4C8
  loc_D2B2A1: LitVarStr var_578, "',Null,0,"
  loc_D2B2A6: ConcatVar var_4E8
  loc_D2B2AA: FLdRfVar var_3B8
  loc_D2B2AD: LitVarStr var_588, "FealLita"
  loc_D2B2B2: PopAdLdVar
  loc_D2B2B3: FLdRfVar var_3A4
  loc_D2B2B6: FLdPr Me
  loc_D2B2B9: MemLdPr global_68
  loc_D2B2BC:  = Me.Fields
  loc_D2B2C1: FLdPr var_3A4
  loc_D2B2C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B2C9: FLdZeroAd var_3B8
  loc_D2B2CC: CVarAd
  loc_D2B2D0: FLdRfVar var_538
  loc_D2B2D3: ImpAdCallFPR4  = Year()
  loc_D2B2D8: FLdRfVar var_538
  loc_D2B2DB: ConcatVar var_598
  loc_D2B2DF: LitVarStr var_5B8, ",'"
  loc_D2B2E4: ConcatVar var_5A8
  loc_D2B2E8: FLdRfVar var_5C8
  loc_D2B2EB: FLdRfVar var_410
  loc_D2B2EE: LitVarStr var_5D8, "CodiConc"
  loc_D2B2F3: PopAdLdVar
  loc_D2B2F4: FLdRfVar var_3FC
  loc_D2B2F7: FLdPr Me
  loc_D2B2FA: MemLdPr global_68
  loc_D2B2FD:  = Me.Fields
  loc_D2B302: FLdPr var_3FC
  loc_D2B305: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B30A: FLdPr var_410
  loc_D2B30D:  = Me.Value
  loc_D2B312: FLdRfVar var_5C8
  loc_D2B315: ConcatVar var_5E8
  loc_D2B319: LitVarStr var_608, "',0,0,0,23,'','s/f',0,0,'',0,"
  loc_D2B31E: ConcatVar var_5F8
  loc_D2B322: LitI4 0
  loc_D2B327: LitI4 -1
  loc_D2B32C: LitI4 1
  loc_D2B331: LitStr "."
  loc_D2B334: LitStr ","
  loc_D2B337: FLdRfVar var_618
  loc_D2B33A: CStrVarTmp
  loc_D2B33B: FStStrNoPop var_150
  loc_D2B33E: ImpAdCallI2 Replace(, , , , , )
  loc_D2B343: CVarStr var_638
  loc_D2B346: ConcatVar var_648
  loc_D2B34A: LitVarStr var_658, ",'"
  loc_D2B34F: ConcatVar var_668
  loc_D2B353: ImpAdLdI4 MemVar_D9302C
  loc_D2B356: CVarStr var_678
  loc_D2B359: ConcatVar var_688
  loc_D2B35D: LitVarStr var_6B8, "');"
  loc_D2B362: ConcatVar var_698
  loc_D2B366: CStrVarVal var_154
  loc_D2B36A: Call EjecutarRsCls(from_stack_1v)
  loc_D2B36F: FFreeStr var_150 = ""
  loc_D2B376: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3FC = "": var_410 = "": var_464 = ""
  loc_D2B393: FFreeVar var_4C8 = "": var_508 = "": var_4E8 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_618 = "": var_5F8 = "": var_638 = "": var_648 = "": var_668 = "": var_688 = "": var_698 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_3B4 = "": var_380 = "": var_370 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_430 = "": var_420 = "": var_440 = "": var_460 = "": var_498 = "": var_488 = ""
  loc_D2B3F0: FLdRfVar var_1A8
  loc_D2B3F3: LitVarStr var_1A4, "CrafLita"
  loc_D2B3F8: PopAdLdVar
  loc_D2B3F9: FLdRfVar var_194
  loc_D2B3FC: FLdPr Me
  loc_D2B3FF: MemLdPr global_68
  loc_D2B402:  = Me.Fields
  loc_D2B407: FLdPr var_194
  loc_D2B40A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B40F: LitI4 2
  loc_D2B414: FLdZeroAd var_1A8
  loc_D2B417: CVarAd
  loc_D2B41B: FLdRfVar var_1D8
  loc_D2B41E: ImpAdCallFPR4  = Round(, )
  loc_D2B423: FLdRfVar var_1D8
  loc_D2B426: CR4Var
  loc_D2B427: FStFPR8 var_EC
  loc_D2B42A: FFree1Ad var_194
  loc_D2B42D: FFreeVar var_1B8 = ""
  loc_D2B434: FLdRfVar var_1A8
  loc_D2B437: LitVarStr var_1A4, "CrafLita"
  loc_D2B43C: PopAdLdVar
  loc_D2B43D: FLdRfVar var_194
  loc_D2B440: FLdPr Me
  loc_D2B443: MemLdPr global_68
  loc_D2B446:  = Me.Fields
  loc_D2B44B: FLdPr var_194
  loc_D2B44E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B453: LitI4 2
  loc_D2B458: FLdZeroAd var_1A8
  loc_D2B45B: CVarAd
  loc_D2B45F: FLdRfVar var_1D8
  loc_D2B462: ImpAdCallFPR4  = Round(, )
  loc_D2B467: FLdRfVar var_1D8
  loc_D2B46A: CR4Var
  loc_D2B46B: FStFPR8 var_104
  loc_D2B46E: FFree1Ad var_194
  loc_D2B471: FFreeVar var_1B8 = ""
  loc_D2B478: LitStr "SELECT CodiOfic, CuenCtct, NumeCred, SUM(DebeCred)-SUM(CredCred) as SaldCred FROM creditos WHERE CodiOfic = 1"
  loc_D2B47B: LitStr " AND CuenCtct = '"
  loc_D2B47E: ConcatStr
  loc_D2B47F: CVarStr var_1D8
  loc_D2B482: FLdRfVar var_1B8
  loc_D2B485: FLdRfVar var_1A8
  loc_D2B488: LitVarStr var_1A4, "CodiInmu"
  loc_D2B48D: PopAdLdVar
  loc_D2B48E: FLdRfVar var_194
  loc_D2B491: FLdPr Me
  loc_D2B494: MemLdPr global_68
  loc_D2B497:  = Me.Fields
  loc_D2B49C: FLdPr var_194
  loc_D2B49F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B4A4: FLdPr var_1A8
  loc_D2B4A7:  = Me.Value
  loc_D2B4AC: FLdRfVar var_1B8
  loc_D2B4AF: ConcatVar var_1E8
  loc_D2B4B3: LitVarStr var_1C8, "'"
  loc_D2B4B8: ConcatVar var_1F8
  loc_D2B4BC: LitVarStr var_20C, " GROUP BY CodiOfic, CuenCtct, NumeCred"
  loc_D2B4C1: ConcatVar var_220
  loc_D2B4C5: CStrVarVal var_150
  loc_D2B4C9: Call EjecutarRsCls4(from_stack_1v)
  loc_D2B4CE: FFree1Str var_150
  loc_D2B4D1: FFreeAd var_194 = ""
  loc_D2B4D8: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = ""
  loc_D2B4E5: FLdRfVar var_174
  loc_D2B4E8: FLdPr Me
  loc_D2B4EB: MemLdPr global_72
  loc_D2B4EE:  = Me.RecordCount
  loc_D2B4F3: ILdRf var_174
  loc_D2B4F6: LitI4 0
  loc_D2B4FB: GtI4
  loc_D2B4FC: BranchF loc_D2BDDC
  loc_D2B4FF: FLdPr Me
  loc_D2B502: MemLdPr global_72
  loc_D2B505: Me.MoveFirst
  loc_D2B50A: FLdRfVar var_18E
  loc_D2B50D: FLdPr Me
  loc_D2B510: MemLdPr global_72
  loc_D2B513:  = Me.EOF
  loc_D2B518: FLdI2 var_18E
  loc_D2B51B: NotI4
  loc_D2B51C: BranchF loc_D2BDDC
  loc_D2B51F: FLdFPR8 var_EC
  loc_D2B522: LitI2_Byte 0
  loc_D2B524: CR8I2
  loc_D2B525: GtR4
  loc_D2B526: CVarBoolI2 var_20C
  loc_D2B52A: FLdRfVar var_1B8
  loc_D2B52D: FLdRfVar var_1A8
  loc_D2B530: LitVarStr var_1A4, "SaldCred"
  loc_D2B535: PopAdLdVar
  loc_D2B536: FLdRfVar var_194
  loc_D2B539: FLdPr Me
  loc_D2B53C: MemLdPr global_72
  loc_D2B53F:  = Me.Fields
  loc_D2B544: FLdPr var_194
  loc_D2B547: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B54C: FLdPr var_1A8
  loc_D2B54F:  = Me.Value
  loc_D2B554: FLdRfVar var_1B8
  loc_D2B557: LitVarI2 var_1C8, 0
  loc_D2B55C: HardType
  loc_D2B55D: GtVar var_1D8
  loc_D2B561: AndVar var_1E8
  loc_D2B565: CBoolVarNull
  loc_D2B567: FFreeAd var_194 = ""
  loc_D2B56E: FFreeVar var_1B8 = ""
  loc_D2B575: BranchF loc_D2BDCE
  loc_D2B578: FLdRfVar var_1B8
  loc_D2B57B: FLdRfVar var_1A8
  loc_D2B57E: LitVarStr var_1A4, "SaldCred"
  loc_D2B583: PopAdLdVar
  loc_D2B584: FLdRfVar var_194
  loc_D2B587: FLdPr Me
  loc_D2B58A: MemLdPr global_72
  loc_D2B58D:  = Me.Fields
  loc_D2B592: FLdPr var_194
  loc_D2B595: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B59A: FLdPr var_1A8
  loc_D2B59D:  = Me.Value
  loc_D2B5A2: FLdRfVar var_1B8
  loc_D2B5A5: FLdFPR8 var_EC
  loc_D2B5A8: CVarR8
  loc_D2B5AC: HardType
  loc_D2B5AD: LeVarBool
  loc_D2B5AF: FFreeAd var_194 = ""
  loc_D2B5B6: FFree1Var var_1B8 = ""
  loc_D2B5B9: BranchF loc_D2B9FE
  loc_D2B5BC: FLdFPR8 var_EC
  loc_D2B5BF: CVarR8
  loc_D2B5C3: FLdRfVar var_1B8
  loc_D2B5C6: FLdRfVar var_1A8
  loc_D2B5C9: LitVarStr var_1A4, "SaldCred"
  loc_D2B5CE: PopAdLdVar
  loc_D2B5CF: FLdRfVar var_194
  loc_D2B5D2: FLdPr Me
  loc_D2B5D5: MemLdPr global_72
  loc_D2B5D8:  = Me.Fields
  loc_D2B5DD: FLdPr var_194
  loc_D2B5E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B5E5: FLdPr var_1A8
  loc_D2B5E8:  = Me.Value
  loc_D2B5ED: FLdRfVar var_1B8
  loc_D2B5F0: SubVar var_1D8
  loc_D2B5F4: CR4Var
  loc_D2B5F5: FStFPR8 var_EC
  loc_D2B5F8: FFreeAd var_194 = ""
  loc_D2B5FF: FFree1Var var_1B8 = ""
  loc_D2B602: FLdRfVar var_1B8
  loc_D2B605: FLdRfVar var_1A8
  loc_D2B608: LitVarStr var_1A4, "CodiOfic"
  loc_D2B60D: PopAdLdVar
  loc_D2B60E: FLdRfVar var_194
  loc_D2B611: FLdPr Me
  loc_D2B614: MemLdPr global_72
  loc_D2B617:  = Me.Fields
  loc_D2B61C: FLdPr var_194
  loc_D2B61F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B624: FLdPr var_1A8
  loc_D2B627:  = Me.Value
  loc_D2B62C: FLdRfVar var_1D8
  loc_D2B62F: FLdRfVar var_210
  loc_D2B632: LitVarStr var_1C8, "CuenCtct"
  loc_D2B637: PopAdLdVar
  loc_D2B638: FLdRfVar var_1FC
  loc_D2B63B: FLdPr Me
  loc_D2B63E: MemLdPr global_72
  loc_D2B641:  = Me.Fields
  loc_D2B646: FLdPr var_1FC
  loc_D2B649: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B64E: FLdPr var_210
  loc_D2B651:  = Me.Value
  loc_D2B656: FLdRfVar var_1E8
  loc_D2B659: FLdRfVar var_2D8
  loc_D2B65C: LitVarStr var_20C, "NumeCred"
  loc_D2B661: PopAdLdVar
  loc_D2B662: FLdRfVar var_2C4
  loc_D2B665: FLdPr Me
  loc_D2B668: MemLdPr global_72
  loc_D2B66B:  = Me.Fields
  loc_D2B670: FLdPr var_2C4
  loc_D2B673: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B678: FLdPr var_2D8
  loc_D2B67B:  = Me.Value
  loc_D2B680: FLdRfVar var_18E
  loc_D2B683: FLdRfVar var_1E8
  loc_D2B686: CI4Var
  loc_D2B688: FLdRfVar var_1D8
  loc_D2B68B: CStrVarTmp
  loc_D2B68C: FStStrNoPop var_150
  loc_D2B68F: FLdRfVar var_1B8
  loc_D2B692: CUI1Var
  loc_D2B694: FLdRfVar GeneracionCuentaCorriente
  loc_D2B697: NewIfNullPr clscreditos
  loc_D2B69A: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D2B69F: FLdI2 var_18E
  loc_D2B6A2: CR8I2
  loc_D2B6A3: FStFPR8 var_F4
  loc_D2B6A6: FFree1Str var_150
  loc_D2B6A9: FFreeAd var_194 = "": var_1FC = "": var_2C4 = "": var_1A8 = "": var_210 = ""
  loc_D2B6B8: FFreeVar var_1B8 = "": var_1D8 = ""
  loc_D2B6C1: FLdFPR8 var_F4
  loc_D2B6C4: LitI2_Byte 1
  loc_D2B6C6: CR8I2
  loc_D2B6C7: AddR8
  loc_D2B6C8: FStFPR8 var_F4
  loc_D2B6CB: FLdRfVar var_5F8
  loc_D2B6CE: FLdRfVar var_520
  loc_D2B6D1: LitVarStr var_608, "SaldCred"
  loc_D2B6D6: PopAdLdVar
  loc_D2B6D7: FLdRfVar var_51C
  loc_D2B6DA: FLdPr Me
  loc_D2B6DD: MemLdPr global_72
  loc_D2B6E0:  = Me.Fields
  loc_D2B6E5: FLdPr var_51C
  loc_D2B6E8: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B6ED: FLdPr var_520
  loc_D2B6F0:  = Me.Value
  loc_D2B6F5: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D2B6F8: LitStr " VALUES (1,'"
  loc_D2B6FB: ConcatStr
  loc_D2B6FC: CVarStr var_1D8
  loc_D2B6FF: FLdRfVar var_1B8
  loc_D2B702: FLdRfVar var_1A8
  loc_D2B705: LitVarStr var_1A4, "CodiInmu"
  loc_D2B70A: PopAdLdVar
  loc_D2B70B: FLdRfVar var_194
  loc_D2B70E: FLdPr Me
  loc_D2B711: MemLdPr global_68
  loc_D2B714:  = Me.Fields
  loc_D2B719: FLdPr var_194
  loc_D2B71C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B721: FLdPr var_1A8
  loc_D2B724:  = Me.Value
  loc_D2B729: FLdRfVar var_1B8
  loc_D2B72C: ConcatVar var_1E8
  loc_D2B730: LitVarStr var_1C8, "',"
  loc_D2B735: ConcatVar var_1F8
  loc_D2B739: FLdRfVar var_220
  loc_D2B73C: FLdRfVar var_210
  loc_D2B73F: LitVarStr var_20C, "NumeCred"
  loc_D2B744: PopAdLdVar
  loc_D2B745: FLdRfVar var_1FC
  loc_D2B748: FLdPr Me
  loc_D2B74B: MemLdPr global_72
  loc_D2B74E:  = Me.Fields
  loc_D2B753: FLdPr var_1FC
  loc_D2B756: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B75B: FLdPr var_210
  loc_D2B75E:  = Me.Value
  loc_D2B763: FLdRfVar var_220
  loc_D2B766: ConcatVar var_230
  loc_D2B76A: LitVarStr var_240, ","
  loc_D2B76F: ConcatVar var_250
  loc_D2B773: FLdFPR8 var_F4
  loc_D2B776: CVarR8
  loc_D2B77A: ConcatVar var_280
  loc_D2B77E: LitVarStr var_270, ","
  loc_D2B783: ConcatVar var_290
  loc_D2B787: FLdI2 iPeriodo
  loc_D2B78A: CVarI2 var_2B0
  loc_D2B78D: ConcatVar var_2A0
  loc_D2B791: LitVarStr var_2D4, ","
  loc_D2B796: ConcatVar var_2C0
  loc_D2B79A: FLdRfVar var_2E8
  loc_D2B79D: FLdRfVar var_2D8
  loc_D2B7A0: LitVarStr var_2F8, "BimeLiqu"
  loc_D2B7A5: PopAdLdVar
  loc_D2B7A6: FLdRfVar var_2C4
  loc_D2B7A9: FLdPr Me
  loc_D2B7AC: MemLdPr global_68
  loc_D2B7AF:  = Me.Fields
  loc_D2B7B4: FLdPr var_2C4
  loc_D2B7B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B7BC: FLdPr var_2D8
  loc_D2B7BF:  = Me.Value
  loc_D2B7C4: FLdRfVar var_2E8
  loc_D2B7C7: ConcatVar var_308
  loc_D2B7CB: LitVarStr var_338, ","
  loc_D2B7D0: ConcatVar var_318
  loc_D2B7D4: ILdRf var_9C
  loc_D2B7D7: CVarI4
  loc_D2B7DB: ConcatVar var_328
  loc_D2B7DF: LitVarStr var_390, ",3,"
  loc_D2B7E4: ConcatVar var_348
  loc_D2B7E8: FLdRfVar var_370
  loc_D2B7EB: FLdRfVar var_360
  loc_D2B7EE: LitVarStr var_3B4, "CodiTili"
  loc_D2B7F3: PopAdLdVar
  loc_D2B7F4: FLdRfVar var_34C
  loc_D2B7F7: FLdPr Me
  loc_D2B7FA: MemLdPr global_68
  loc_D2B7FD:  = Me.Fields
  loc_D2B802: FLdPr var_34C
  loc_D2B805: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B80A: FLdPr var_360
  loc_D2B80D:  = Me.Value
  loc_D2B812: FLdRfVar var_370
  loc_D2B815: ConcatVar var_380
  loc_D2B819: LitVarStr var_3E8, ","
  loc_D2B81E: ConcatVar var_3A0
  loc_D2B822: FLdRfVar var_3C8
  loc_D2B825: FLdRfVar var_3B8
  loc_D2B828: LitVarStr var_40C, "NumeLiqu"
  loc_D2B82D: PopAdLdVar
  loc_D2B82E: FLdRfVar var_3A4
  loc_D2B831: FLdPr Me
  loc_D2B834: MemLdPr global_68
  loc_D2B837:  = Me.Fields
  loc_D2B83C: FLdPr var_3A4
  loc_D2B83F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B844: FLdPr var_3B8
  loc_D2B847:  = Me.Value
  loc_D2B84C: FLdRfVar var_3C8
  loc_D2B84F: ConcatVar var_3D8
  loc_D2B853: LitVarStr var_450, ","
  loc_D2B858: ConcatVar var_3F8
  loc_D2B85C: FLdI2 iPeriodo
  loc_D2B85F: CVarI2 var_474
  loc_D2B862: ConcatVar var_420
  loc_D2B866: LitVarStr var_4B8, ","
  loc_D2B86B: ConcatVar var_430
  loc_D2B86F: ILdRf var_A0
  loc_D2B872: CVarI4
  loc_D2B876: ConcatVar var_440
  loc_D2B87A: LitVarStr var_4F8, ",'"
  loc_D2B87F: ConcatVar var_460
  loc_D2B883: LitI4 1
  loc_D2B888: LitI4 1
  loc_D2B88D: LitVarStr var_558, "yyyy-mm-dd"
  loc_D2B892: FStVarCopyObj var_488
  loc_D2B895: FLdRfVar var_488
  loc_D2B898: FLdRfVar arg_30
  loc_D2B89B: CVarRef
  loc_D2B8A0: ImpAdCallI2 Format$(, )
  loc_D2B8A5: CVarStr var_498
  loc_D2B8A8: ConcatVar var_4A8
  loc_D2B8AC: LitVarStr var_568, "',"
  loc_D2B8B1: ConcatVar var_4C8
  loc_D2B8B5: FLdRfVar var_410
  loc_D2B8B8: LitVarStr var_578, "FealLita"
  loc_D2B8BD: PopAdLdVar
  loc_D2B8BE: FLdRfVar var_3FC
  loc_D2B8C1: FLdPr Me
  loc_D2B8C4: MemLdPr global_68
  loc_D2B8C7:  = Me.Fields
  loc_D2B8CC: FLdPr var_3FC
  loc_D2B8CF: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B8D4: FLdZeroAd var_410
  loc_D2B8D7: CVarAd
  loc_D2B8DB: FLdRfVar var_508
  loc_D2B8DE: ImpAdCallFPR4  = Year()
  loc_D2B8E3: FLdRfVar var_508
  loc_D2B8E6: ConcatVar var_538
  loc_D2B8EA: LitVarStr var_588, ",'"
  loc_D2B8EF: ConcatVar var_598
  loc_D2B8F3: FLdRfVar var_5A8
  loc_D2B8F6: FLdRfVar var_478
  loc_D2B8F9: LitVarStr var_5B8, "CodiConc"
  loc_D2B8FE: PopAdLdVar
  loc_D2B8FF: FLdRfVar var_464
  loc_D2B902: FLdPr Me
  loc_D2B905: MemLdPr global_68
  loc_D2B908:  = Me.Fields
  loc_D2B90D: FLdPr var_464
  loc_D2B910: from_stack_2 = Me.Item(from_stack_1)
  loc_D2B915: FLdPr var_478
  loc_D2B918:  = Me.Value
  loc_D2B91D: FLdRfVar var_5A8
  loc_D2B920: ConcatVar var_5C8
  loc_D2B924: LitVarStr var_5D8, "',23,'','',0,"
  loc_D2B929: ConcatVar var_5E8
  loc_D2B92D: LitI4 0
  loc_D2B932: LitI4 -1
  loc_D2B937: LitI4 1
  loc_D2B93C: LitStr "."
  loc_D2B93F: LitStr ","
  loc_D2B942: FLdRfVar var_5F8
  loc_D2B945: CStrVarTmp
  loc_D2B946: FStStrNoPop var_150
  loc_D2B949: ImpAdCallI2 Replace(, , , , , )
  loc_D2B94E: CVarStr var_618
  loc_D2B951: ConcatVar var_638
  loc_D2B955: LitVarStr var_628, ",'"
  loc_D2B95A: ConcatVar var_648
  loc_D2B95E: ImpAdLdI4 MemVar_D9302C
  loc_D2B961: CVarStr var_658
  loc_D2B964: ConcatVar var_668
  loc_D2B968: LitVarStr var_678, "');"
  loc_D2B96D: ConcatVar var_688
  loc_D2B971: CStrVarVal var_154
  loc_D2B975: Call EjecutarRsCls(from_stack_1v)
  loc_D2B97A: FFreeStr var_150 = ""
  loc_D2B981: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_464 = "": var_478 = "": var_51C = ""
  loc_D2B9A2: FFreeVar var_4C8 = "": var_508 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5F8 = "": var_5E8 = "": var_618 = "": var_638 = "": var_648 = "": var_668 = "": var_688 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_440 = "": var_488 = "": var_460 = "": var_498 = "": var_4A8 = ""
  loc_D2B9FB: Branch loc_D2BDCE
  loc_D2B9FE: FLdRfVar var_1B8
  loc_D2BA01: FLdRfVar var_1A8
  loc_D2BA04: LitVarStr var_1A4, "CodiOfic"
  loc_D2BA09: PopAdLdVar
  loc_D2BA0A: FLdRfVar var_194
  loc_D2BA0D: FLdPr Me
  loc_D2BA10: MemLdPr global_72
  loc_D2BA13:  = Me.Fields
  loc_D2BA18: FLdPr var_194
  loc_D2BA1B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BA20: FLdPr var_1A8
  loc_D2BA23:  = Me.Value
  loc_D2BA28: FLdRfVar var_1D8
  loc_D2BA2B: FLdRfVar var_210
  loc_D2BA2E: LitVarStr var_1C8, "CuenCtct"
  loc_D2BA33: PopAdLdVar
  loc_D2BA34: FLdRfVar var_1FC
  loc_D2BA37: FLdPr Me
  loc_D2BA3A: MemLdPr global_72
  loc_D2BA3D:  = Me.Fields
  loc_D2BA42: FLdPr var_1FC
  loc_D2BA45: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BA4A: FLdPr var_210
  loc_D2BA4D:  = Me.Value
  loc_D2BA52: FLdRfVar var_1E8
  loc_D2BA55: FLdRfVar var_2D8
  loc_D2BA58: LitVarStr var_20C, "NumeCred"
  loc_D2BA5D: PopAdLdVar
  loc_D2BA5E: FLdRfVar var_2C4
  loc_D2BA61: FLdPr Me
  loc_D2BA64: MemLdPr global_72
  loc_D2BA67:  = Me.Fields
  loc_D2BA6C: FLdPr var_2C4
  loc_D2BA6F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BA74: FLdPr var_2D8
  loc_D2BA77:  = Me.Value
  loc_D2BA7C: FLdRfVar var_18E
  loc_D2BA7F: FLdRfVar var_1E8
  loc_D2BA82: CI4Var
  loc_D2BA84: FLdRfVar var_1D8
  loc_D2BA87: CStrVarTmp
  loc_D2BA88: FStStrNoPop var_150
  loc_D2BA8B: FLdRfVar var_1B8
  loc_D2BA8E: CUI1Var
  loc_D2BA90: FLdRfVar GeneracionCuentaCorriente
  loc_D2BA93: NewIfNullPr clscreditos
  loc_D2BA96: from_stack_4v = clscreditos.BuscaMoviCred(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D2BA9B: FLdI2 var_18E
  loc_D2BA9E: CR8I2
  loc_D2BA9F: FStFPR8 var_F4
  loc_D2BAA2: FFree1Str var_150
  loc_D2BAA5: FFreeAd var_194 = "": var_1FC = "": var_2C4 = "": var_1A8 = "": var_210 = ""
  loc_D2BAB4: FFreeVar var_1B8 = "": var_1D8 = ""
  loc_D2BABD: FLdFPR8 var_F4
  loc_D2BAC0: LitI2_Byte 1
  loc_D2BAC2: CR8I2
  loc_D2BAC3: AddR8
  loc_D2BAC4: FStFPR8 var_F4
  loc_D2BAC7: LitStr " INSERT INTO creditos (CodiOfic,CuenCtct,NumeCred,MoviCred,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiTili,NumeLiqu,PeriBole,NumeBole,FealCtct,PeriInfo,CodiConc,CodiTimo,ExpeCred,DetaCred,DebeCred,CredCred,CodiUsua) "
  loc_D2BACA: LitStr " VALUES (1,'"
  loc_D2BACD: ConcatStr
  loc_D2BACE: CVarStr var_1D8
  loc_D2BAD1: FLdRfVar var_1B8
  loc_D2BAD4: FLdRfVar var_1A8
  loc_D2BAD7: LitVarStr var_1A4, "CodiInmu"
  loc_D2BADC: PopAdLdVar
  loc_D2BADD: FLdRfVar var_194
  loc_D2BAE0: FLdPr Me
  loc_D2BAE3: MemLdPr global_68
  loc_D2BAE6:  = Me.Fields
  loc_D2BAEB: FLdPr var_194
  loc_D2BAEE: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BAF3: FLdPr var_1A8
  loc_D2BAF6:  = Me.Value
  loc_D2BAFB: FLdRfVar var_1B8
  loc_D2BAFE: ConcatVar var_1E8
  loc_D2BB02: LitVarStr var_1C8, "',"
  loc_D2BB07: ConcatVar var_1F8
  loc_D2BB0B: FLdRfVar var_220
  loc_D2BB0E: FLdRfVar var_210
  loc_D2BB11: LitVarStr var_20C, "NumeCred"
  loc_D2BB16: PopAdLdVar
  loc_D2BB17: FLdRfVar var_1FC
  loc_D2BB1A: FLdPr Me
  loc_D2BB1D: MemLdPr global_72
  loc_D2BB20:  = Me.Fields
  loc_D2BB25: FLdPr var_1FC
  loc_D2BB28: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BB2D: FLdPr var_210
  loc_D2BB30:  = Me.Value
  loc_D2BB35: FLdRfVar var_220
  loc_D2BB38: ConcatVar var_230
  loc_D2BB3C: LitVarStr var_240, ","
  loc_D2BB41: ConcatVar var_250
  loc_D2BB45: FLdFPR8 var_F4
  loc_D2BB48: CVarR8
  loc_D2BB4C: ConcatVar var_280
  loc_D2BB50: LitVarStr var_270, ","
  loc_D2BB55: ConcatVar var_290
  loc_D2BB59: FLdI2 iPeriodo
  loc_D2BB5C: CVarI2 var_2B0
  loc_D2BB5F: ConcatVar var_2A0
  loc_D2BB63: LitVarStr var_2D4, ","
  loc_D2BB68: ConcatVar var_2C0
  loc_D2BB6C: FLdRfVar var_2E8
  loc_D2BB6F: FLdRfVar var_2D8
  loc_D2BB72: LitVarStr var_2F8, "BimeLiqu"
  loc_D2BB77: PopAdLdVar
  loc_D2BB78: FLdRfVar var_2C4
  loc_D2BB7B: FLdPr Me
  loc_D2BB7E: MemLdPr global_68
  loc_D2BB81:  = Me.Fields
  loc_D2BB86: FLdPr var_2C4
  loc_D2BB89: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BB8E: FLdPr var_2D8
  loc_D2BB91:  = Me.Value
  loc_D2BB96: FLdRfVar var_2E8
  loc_D2BB99: ConcatVar var_308
  loc_D2BB9D: LitVarStr var_338, ","
  loc_D2BBA2: ConcatVar var_318
  loc_D2BBA6: ILdRf var_9C
  loc_D2BBA9: CVarI4
  loc_D2BBAD: ConcatVar var_328
  loc_D2BBB1: LitVarStr var_390, ",3,"
  loc_D2BBB6: ConcatVar var_348
  loc_D2BBBA: FLdRfVar var_370
  loc_D2BBBD: FLdRfVar var_360
  loc_D2BBC0: LitVarStr var_3B4, "CodiTili"
  loc_D2BBC5: PopAdLdVar
  loc_D2BBC6: FLdRfVar var_34C
  loc_D2BBC9: FLdPr Me
  loc_D2BBCC: MemLdPr global_68
  loc_D2BBCF:  = Me.Fields
  loc_D2BBD4: FLdPr var_34C
  loc_D2BBD7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BBDC: FLdPr var_360
  loc_D2BBDF:  = Me.Value
  loc_D2BBE4: FLdRfVar var_370
  loc_D2BBE7: ConcatVar var_380
  loc_D2BBEB: LitVarStr var_3E8, ","
  loc_D2BBF0: ConcatVar var_3A0
  loc_D2BBF4: FLdRfVar var_3C8
  loc_D2BBF7: FLdRfVar var_3B8
  loc_D2BBFA: LitVarStr var_40C, "NumeLiqu"
  loc_D2BBFF: PopAdLdVar
  loc_D2BC00: FLdRfVar var_3A4
  loc_D2BC03: FLdPr Me
  loc_D2BC06: MemLdPr global_68
  loc_D2BC09:  = Me.Fields
  loc_D2BC0E: FLdPr var_3A4
  loc_D2BC11: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BC16: FLdPr var_3B8
  loc_D2BC19:  = Me.Value
  loc_D2BC1E: FLdRfVar var_3C8
  loc_D2BC21: ConcatVar var_3D8
  loc_D2BC25: LitVarStr var_450, ","
  loc_D2BC2A: ConcatVar var_3F8
  loc_D2BC2E: FLdI2 iPeriodo
  loc_D2BC31: CVarI2 var_474
  loc_D2BC34: ConcatVar var_420
  loc_D2BC38: LitVarStr var_4B8, ","
  loc_D2BC3D: ConcatVar var_430
  loc_D2BC41: ILdRf var_A0
  loc_D2BC44: CVarI4
  loc_D2BC48: ConcatVar var_440
  loc_D2BC4C: LitVarStr var_4F8, ",'"
  loc_D2BC51: ConcatVar var_460
  loc_D2BC55: LitI4 1
  loc_D2BC5A: LitI4 1
  loc_D2BC5F: LitVarStr var_558, "yyyy-mm-dd"
  loc_D2BC64: FStVarCopyObj var_488
  loc_D2BC67: FLdRfVar var_488
  loc_D2BC6A: FLdRfVar arg_30
  loc_D2BC6D: CVarRef
  loc_D2BC72: ImpAdCallI2 Format$(, )
  loc_D2BC77: CVarStr var_498
  loc_D2BC7A: ConcatVar var_4A8
  loc_D2BC7E: LitVarStr var_568, "',"
  loc_D2BC83: ConcatVar var_4C8
  loc_D2BC87: FLdRfVar var_410
  loc_D2BC8A: LitVarStr var_578, "FealLita"
  loc_D2BC8F: PopAdLdVar
  loc_D2BC90: FLdRfVar var_3FC
  loc_D2BC93: FLdPr Me
  loc_D2BC96: MemLdPr global_68
  loc_D2BC99:  = Me.Fields
  loc_D2BC9E: FLdPr var_3FC
  loc_D2BCA1: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BCA6: FLdZeroAd var_410
  loc_D2BCA9: CVarAd
  loc_D2BCAD: FLdRfVar var_508
  loc_D2BCB0: ImpAdCallFPR4  = Year()
  loc_D2BCB5: FLdRfVar var_508
  loc_D2BCB8: ConcatVar var_538
  loc_D2BCBC: LitVarStr var_588, ",'"
  loc_D2BCC1: ConcatVar var_598
  loc_D2BCC5: FLdRfVar var_5A8
  loc_D2BCC8: FLdRfVar var_478
  loc_D2BCCB: LitVarStr var_5B8, "CodiConc"
  loc_D2BCD0: PopAdLdVar
  loc_D2BCD1: FLdRfVar var_464
  loc_D2BCD4: FLdPr Me
  loc_D2BCD7: MemLdPr global_68
  loc_D2BCDA:  = Me.Fields
  loc_D2BCDF: FLdPr var_464
  loc_D2BCE2: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BCE7: FLdPr var_478
  loc_D2BCEA:  = Me.Value
  loc_D2BCEF: FLdRfVar var_5A8
  loc_D2BCF2: ConcatVar var_5C8
  loc_D2BCF6: LitVarStr var_5D8, "',23,'','',0,"
  loc_D2BCFB: ConcatVar var_5E8
  loc_D2BCFF: LitI4 0
  loc_D2BD04: LitI4 -1
  loc_D2BD09: LitI4 1
  loc_D2BD0E: LitStr "."
  loc_D2BD11: LitStr ","
  loc_D2BD14: FLdFPR8 var_EC
  loc_D2BD17: CStrR8
  loc_D2BD19: FStStrNoPop var_150
  loc_D2BD1C: ImpAdCallI2 Replace(, , , , , )
  loc_D2BD21: CVarStr var_5F8
  loc_D2BD24: ConcatVar var_618
  loc_D2BD28: LitVarStr var_608, ",'"
  loc_D2BD2D: ConcatVar var_638
  loc_D2BD31: ImpAdLdI4 MemVar_D9302C
  loc_D2BD34: CVarStr var_628
  loc_D2BD37: ConcatVar var_648
  loc_D2BD3B: LitVarStr var_658, "');"
  loc_D2BD40: ConcatVar var_668
  loc_D2BD44: CStrVarVal var_154
  loc_D2BD48: Call EjecutarRsCls(from_stack_1v)
  loc_D2BD4D: FFreeStr var_150 = ""
  loc_D2BD54: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_464 = ""
  loc_D2BD71: FFreeVar var_4C8 = "": var_508 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_638 = "": var_648 = "": var_668 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_440 = "": var_488 = "": var_460 = "": var_498 = "": var_4A8 = ""
  loc_D2BDC8: LitI2_Byte 0
  loc_D2BDCA: CR8I2
  loc_D2BDCB: FStFPR8 var_EC
  loc_D2BDCE: FLdPr Me
  loc_D2BDD1: MemLdPr global_72
  loc_D2BDD4: Me.MoveNext
  loc_D2BDD9: Branch loc_D2B50A
  loc_D2BDDC: LitVarStr var_1C8, " UPDATE recabole SET ActuRebo = 'Si' WHERE PeriLiqu = "
  loc_D2BDE1: FLdRfVar var_1B8
  loc_D2BDE4: FLdRfVar var_1A8
  loc_D2BDE7: LitVarStr var_1A4, "PeriLiqu"
  loc_D2BDEC: PopAdLdVar
  loc_D2BDED: FLdRfVar var_194
  loc_D2BDF0: FLdPr Me
  loc_D2BDF3: MemLdPr global_68
  loc_D2BDF6:  = Me.Fields
  loc_D2BDFB: FLdPr var_194
  loc_D2BDFE: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BE03: FLdPr var_1A8
  loc_D2BE06:  = Me.Value
  loc_D2BE0B: FLdRfVar var_1B8
  loc_D2BE0E: ConcatVar var_1D8
  loc_D2BE12: LitVarStr var_20C, " AND BimeLiqu = "
  loc_D2BE17: ConcatVar var_1E8
  loc_D2BE1B: FLdRfVar var_1F8
  loc_D2BE1E: FLdRfVar var_210
  loc_D2BE21: LitVarStr var_240, "BimeLiqu"
  loc_D2BE26: PopAdLdVar
  loc_D2BE27: FLdRfVar var_1FC
  loc_D2BE2A: FLdPr Me
  loc_D2BE2D: MemLdPr global_68
  loc_D2BE30:  = Me.Fields
  loc_D2BE35: FLdPr var_1FC
  loc_D2BE38: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BE3D: FLdPr var_210
  loc_D2BE40:  = Me.Value
  loc_D2BE45: FLdRfVar var_1F8
  loc_D2BE48: ConcatVar var_220
  loc_D2BE4C: LitVarStr var_260, " AND CodiTili = "
  loc_D2BE51: ConcatVar var_230
  loc_D2BE55: FLdRfVar var_250
  loc_D2BE58: FLdRfVar var_2D8
  loc_D2BE5B: LitVarStr var_270, "CodiTili"
  loc_D2BE60: PopAdLdVar
  loc_D2BE61: FLdRfVar var_2C4
  loc_D2BE64: FLdPr Me
  loc_D2BE67: MemLdPr global_68
  loc_D2BE6A:  = Me.Fields
  loc_D2BE6F: FLdPr var_2C4
  loc_D2BE72: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BE77: FLdPr var_2D8
  loc_D2BE7A:  = Me.Value
  loc_D2BE7F: FLdRfVar var_250
  loc_D2BE82: ConcatVar var_280
  loc_D2BE86: LitVarStr var_2B0, " AND NumeLiqu = "
  loc_D2BE8B: ConcatVar var_290
  loc_D2BE8F: FLdRfVar var_2A0
  loc_D2BE92: FLdRfVar var_360
  loc_D2BE95: LitVarStr var_2D4, "NumeLiqu"
  loc_D2BE9A: PopAdLdVar
  loc_D2BE9B: FLdRfVar var_34C
  loc_D2BE9E: FLdPr Me
  loc_D2BEA1: MemLdPr global_68
  loc_D2BEA4:  = Me.Fields
  loc_D2BEA9: FLdPr var_34C
  loc_D2BEAC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BEB1: FLdPr var_360
  loc_D2BEB4:  = Me.Value
  loc_D2BEB9: FLdRfVar var_2A0
  loc_D2BEBC: ConcatVar var_2C0
  loc_D2BEC0: LitVarStr var_2F8, " AND CodiOfic = 1 AND CuenCtct = '"
  loc_D2BEC5: ConcatVar var_2E8
  loc_D2BEC9: FLdRfVar var_308
  loc_D2BECC: FLdRfVar var_3B8
  loc_D2BECF: LitVarStr var_338, "CodiInmu"
  loc_D2BED4: PopAdLdVar
  loc_D2BED5: FLdRfVar var_3A4
  loc_D2BED8: FLdPr Me
  loc_D2BEDB: MemLdPr global_68
  loc_D2BEDE:  = Me.Fields
  loc_D2BEE3: FLdPr var_3A4
  loc_D2BEE6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BEEB: FLdPr var_3B8
  loc_D2BEEE:  = Me.Value
  loc_D2BEF3: FLdRfVar var_308
  loc_D2BEF6: ConcatVar var_318
  loc_D2BEFA: LitVarStr var_35C, "';"
  loc_D2BEFF: ConcatVar var_328
  loc_D2BF03: CStrVarVal var_150
  loc_D2BF07: Call EjecutarRsCls(from_stack_1v)
  loc_D2BF0C: FFree1Str var_150
  loc_D2BF0F: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = ""
  loc_D2BF26: FFreeVar var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = ""
  loc_D2BF47: FLdRfVar var_1B8
  loc_D2BF4A: FLdRfVar var_1A8
  loc_D2BF4D: LitVarStr var_1A4, "TipoVenc"
  loc_D2BF52: PopAdLdVar
  loc_D2BF53: FLdRfVar var_194
  loc_D2BF56: FLdPr Me
  loc_D2BF59: MemLdPr global_68
  loc_D2BF5C:  = Me.Fields
  loc_D2BF61: FLdPr var_194
  loc_D2BF64: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BF69: FLdPr var_1A8
  loc_D2BF6C:  = Me.Value
  loc_D2BF71: FLdRfVar var_1B8
  loc_D2BF74: FnCIntVar
  loc_D2BF76: LitI2_Byte 2
  loc_D2BF78: EqI2
  loc_D2BF79: FFreeAd var_194 = ""
  loc_D2BF80: FFree1Var var_1B8 = ""
  loc_D2BF83: BranchF loc_D2D2A1
  loc_D2BF86: FLdRfVar var_1B8
  loc_D2BF89: FLdRfVar var_1A8
  loc_D2BF8C: LitVarStr var_1A4, "TotaBole"
  loc_D2BF91: PopAdLdVar
  loc_D2BF92: FLdRfVar var_194
  loc_D2BF95: FLdPr Me
  loc_D2BF98: MemLdPr global_64
  loc_D2BF9B:  = Me.Fields
  loc_D2BFA0: FLdPr var_194
  loc_D2BFA3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BFA8: FLdPr var_1A8
  loc_D2BFAB:  = Me.Value
  loc_D2BFB0: FLdRfVar var_1B8
  loc_D2BFB3: LitVarI2 var_1C8, 0
  loc_D2BFB8: HardType
  loc_D2BFB9: GtVarBool
  loc_D2BFBB: FFreeAd var_194 = ""
  loc_D2BFC2: FFree1Var var_1B8 = ""
  loc_D2BFC5: BranchF loc_D2D295
  loc_D2BFC8: FLdRfVar var_1D8
  loc_D2BFCB: FLdRfVar var_1A8
  loc_D2BFCE: LitVarStr var_1A4, "CodiConc"
  loc_D2BFD3: PopAdLdVar
  loc_D2BFD4: FLdRfVar var_194
  loc_D2BFD7: FLdPr Me
  loc_D2BFDA: MemLdPr global_68
  loc_D2BFDD:  = Me.Fields
  loc_D2BFE2: FLdPr var_194
  loc_D2BFE5: from_stack_2 = Me.Item(from_stack_1)
  loc_D2BFEA: FLdPr var_1A8
  loc_D2BFED:  = Me.Value
  loc_D2BFF2: FLdRfVar var_1D8
  loc_D2BFF5: FLdRfVar var_1B8
  loc_D2BFF8: FLdRfVar var_210
  loc_D2BFFB: LitVarStr var_1C8, "CodiTili"
  loc_D2C000: PopAdLdVar
  loc_D2C001: FLdRfVar var_1FC
  loc_D2C004: FLdPr Me
  loc_D2C007: MemLdPr global_68
  loc_D2C00A:  = Me.Fields
  loc_D2C00F: FLdPr var_1FC
  loc_D2C012: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C017: FLdPr var_210
  loc_D2C01A:  = Me.Value
  loc_D2C01F: FLdRfVar var_1B8
  loc_D2C022: CUI1Var
  loc_D2C024: LitI2_Byte 1
  loc_D2C026: CUI1I2
  loc_D2C028: ImpAdCallI2 Proc_270_71_A8F7D0(, )
  loc_D2C02D: CVarStr var_1E8
  loc_D2C030: HardType
  loc_D2C031: EqVarBool
  loc_D2C033: FFreeAd var_194 = "": var_1FC = "": var_210 = ""
  loc_D2C03E: FFreeVar var_1B8 = "": var_1D8 = ""
  loc_D2C047: BranchF loc_D2C61F
  loc_D2C04A: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct FROM detabole"
  loc_D2C04D: LitStr " WHERE PeriBole = "
  loc_D2C050: ConcatStr
  loc_D2C051: CVarStr var_1D8
  loc_D2C054: FLdRfVar var_1B8
  loc_D2C057: FLdRfVar var_1A8
  loc_D2C05A: LitVarStr var_1A4, "PeriLiqu"
  loc_D2C05F: PopAdLdVar
  loc_D2C060: FLdRfVar var_194
  loc_D2C063: FLdPr Me
  loc_D2C066: MemLdPr global_68
  loc_D2C069:  = Me.Fields
  loc_D2C06E: FLdPr var_194
  loc_D2C071: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C076: FLdPr var_1A8
  loc_D2C079:  = Me.Value
  loc_D2C07E: FLdRfVar var_1B8
  loc_D2C081: ConcatVar var_1E8
  loc_D2C085: LitVarStr var_1C8, " AND CodiOfic = 1"
  loc_D2C08A: ConcatVar var_1F8
  loc_D2C08E: LitVarStr var_20C, " AND CuenCtct = '"
  loc_D2C093: ConcatVar var_220
  loc_D2C097: FLdRfVar var_230
  loc_D2C09A: FLdRfVar var_210
  loc_D2C09D: LitVarStr var_240, "CodiInmu"
  loc_D2C0A2: PopAdLdVar
  loc_D2C0A3: FLdRfVar var_1FC
  loc_D2C0A6: FLdPr Me
  loc_D2C0A9: MemLdPr global_68
  loc_D2C0AC:  = Me.Fields
  loc_D2C0B1: FLdPr var_1FC
  loc_D2C0B4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C0B9: FLdPr var_210
  loc_D2C0BC:  = Me.Value
  loc_D2C0C1: FLdRfVar var_230
  loc_D2C0C4: ConcatVar var_250
  loc_D2C0C8: LitVarStr var_260, "'"
  loc_D2C0CD: ConcatVar var_280
  loc_D2C0D1: LitVarStr var_270, " AND PeriCtct = "
  loc_D2C0D6: ConcatVar var_290
  loc_D2C0DA: FLdRfVar var_2A0
  loc_D2C0DD: FLdRfVar var_2D8
  loc_D2C0E0: LitVarStr var_2B0, "PeriLiqu"
  loc_D2C0E5: PopAdLdVar
  loc_D2C0E6: FLdRfVar var_2C4
  loc_D2C0E9: FLdPr Me
  loc_D2C0EC: MemLdPr global_68
  loc_D2C0EF:  = Me.Fields
  loc_D2C0F4: FLdPr var_2C4
  loc_D2C0F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C0FC: FLdPr var_2D8
  loc_D2C0FF:  = Me.Value
  loc_D2C104: FLdRfVar var_2A0
  loc_D2C107: ConcatVar var_2C0
  loc_D2C10B: LitVarStr var_2D4, " AND CodiConc = '"
  loc_D2C110: ConcatVar var_2E8
  loc_D2C114: FLdRfVar var_308
  loc_D2C117: FLdRfVar var_360
  loc_D2C11A: LitVarStr var_2F8, "CodiConc"
  loc_D2C11F: PopAdLdVar
  loc_D2C120: FLdRfVar var_34C
  loc_D2C123: FLdPr Me
  loc_D2C126: MemLdPr global_68
  loc_D2C129:  = Me.Fields
  loc_D2C12E: FLdPr var_34C
  loc_D2C131: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C136: FLdPr var_360
  loc_D2C139:  = Me.Value
  loc_D2C13E: FLdRfVar var_308
  loc_D2C141: ConcatVar var_318
  loc_D2C145: LitVarStr var_338, "'"
  loc_D2C14A: ConcatVar var_328
  loc_D2C14E: LitVarStr var_35C, " AND TipoCtct = 'Bimestral'"
  loc_D2C153: ConcatVar var_348
  loc_D2C157: LitVarStr var_390, " AND CodiTili = "
  loc_D2C15C: ConcatVar var_370
  loc_D2C160: FLdRfVar var_380
  loc_D2C163: FLdRfVar var_3B8
  loc_D2C166: LitVarStr var_3B4, "CodiTili"
  loc_D2C16B: PopAdLdVar
  loc_D2C16C: FLdRfVar var_3A4
  loc_D2C16F: FLdPr Me
  loc_D2C172: MemLdPr global_68
  loc_D2C175:  = Me.Fields
  loc_D2C17A: FLdPr var_3A4
  loc_D2C17D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C182: FLdPr var_3B8
  loc_D2C185:  = Me.Value
  loc_D2C18A: FLdRfVar var_380
  loc_D2C18D: ConcatVar var_3A0
  loc_D2C191: LitVarStr var_3E8, " AND NumeLiqu = "
  loc_D2C196: ConcatVar var_3C8
  loc_D2C19A: FLdRfVar var_3D8
  loc_D2C19D: FLdRfVar var_410
  loc_D2C1A0: LitVarStr var_40C, "NumeLiqu"
  loc_D2C1A5: PopAdLdVar
  loc_D2C1A6: FLdRfVar var_3FC
  loc_D2C1A9: FLdPr Me
  loc_D2C1AC: MemLdPr global_68
  loc_D2C1AF:  = Me.Fields
  loc_D2C1B4: FLdPr var_3FC
  loc_D2C1B7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C1BC: FLdPr var_410
  loc_D2C1BF:  = Me.Value
  loc_D2C1C4: FLdRfVar var_3D8
  loc_D2C1C7: ConcatVar var_3F8
  loc_D2C1CB: LitVarStr var_450, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D2C1D0: ConcatVar var_420
  loc_D2C1D4: CStrVarVal var_150
  loc_D2C1D8: Call EjecutarRsCls4(from_stack_1v)
  loc_D2C1DD: FFree1Str var_150
  loc_D2C1E0: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = ""
  loc_D2C1FB: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = ""
  loc_D2C22C: FLdRfVar var_174
  loc_D2C22F: FLdPr Me
  loc_D2C232: MemLdPr global_72
  loc_D2C235:  = Me.RecordCount
  loc_D2C23A: ILdRf var_174
  loc_D2C23D: LitI4 0
  loc_D2C242: GtI4
  loc_D2C243: BranchF loc_D2C61C
  loc_D2C246: FLdFPR8 var_10C
  loc_D2C249: CVarR8
  loc_D2C24D: FLdRfVar var_1B8
  loc_D2C250: FLdRfVar var_1A8
  loc_D2C253: LitVarStr var_1A4, "TotaLita"
  loc_D2C258: PopAdLdVar
  loc_D2C259: FLdRfVar var_194
  loc_D2C25C: FLdPr Me
  loc_D2C25F: MemLdPr global_68
  loc_D2C262:  = Me.Fields
  loc_D2C267: FLdPr var_194
  loc_D2C26A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C26F: FLdPr var_1A8
  loc_D2C272:  = Me.Value
  loc_D2C277: FLdRfVar var_1B8
  loc_D2C27A: AddVar var_1D8
  loc_D2C27E: CR4Var
  loc_D2C27F: FStFPR8 var_10C
  loc_D2C282: FFreeAd var_194 = ""
  loc_D2C289: FFreeVar var_1B8 = ""
  loc_D2C290: FLdRfVar var_4C8
  loc_D2C293: FLdRfVar var_710
  loc_D2C296: LitVarStr var_4D8, "ImpoLita"
  loc_D2C29B: PopAdLdVar
  loc_D2C29C: FLdRfVar var_70C
  loc_D2C29F: FLdPr Me
  loc_D2C2A2: MemLdPr global_68
  loc_D2C2A5:  = Me.Fields
  loc_D2C2AA: FLdPr var_70C
  loc_D2C2AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C2B2: FLdPr var_710
  loc_D2C2B5:  = Me.Value
  loc_D2C2BA: FLdRfVar var_598
  loc_D2C2BD: FLdRfVar var_718
  loc_D2C2C0: LitVarStr var_548, "TotaLita"
  loc_D2C2C5: PopAdLdVar
  loc_D2C2C6: FLdRfVar var_714
  loc_D2C2C9: FLdPr Me
  loc_D2C2CC: MemLdPr global_68
  loc_D2C2CF:  = Me.Fields
  loc_D2C2D4: FLdPr var_714
  loc_D2C2D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C2DC: FLdPr var_718
  loc_D2C2DF:  = Me.Value
  loc_D2C2E4: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D2C2E7: LitStr "  VALUES ("
  loc_D2C2EA: ConcatStr
  loc_D2C2EB: FStStrNoPop var_150
  loc_D2C2EE: FLdI2 iPeriodo
  loc_D2C2F1: CStrUI1
  loc_D2C2F3: FStStrNoPop var_154
  loc_D2C2F6: ConcatStr
  loc_D2C2F7: FStStrNoPop var_158
  loc_D2C2FA: LitStr ","
  loc_D2C2FD: ConcatStr
  loc_D2C2FE: FStStrNoPop var_15C
  loc_D2C301: ILdRf var_A0
  loc_D2C304: CStrI4
  loc_D2C306: FStStrNoPop var_160
  loc_D2C309: ConcatStr
  loc_D2C30A: FStStrNoPop var_164
  loc_D2C30D: LitStr ","
  loc_D2C310: ConcatStr
  loc_D2C311: CVarStr var_1D8
  loc_D2C314: FLdRfVar var_1B8
  loc_D2C317: FLdRfVar var_1A8
  loc_D2C31A: LitVarStr var_1A4, "PeriCtct"
  loc_D2C31F: PopAdLdVar
  loc_D2C320: FLdRfVar var_194
  loc_D2C323: FLdPr Me
  loc_D2C326: MemLdPr global_72
  loc_D2C329:  = Me.Fields
  loc_D2C32E: FLdPr var_194
  loc_D2C331: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C336: FLdPr var_1A8
  loc_D2C339:  = Me.Value
  loc_D2C33E: FLdRfVar var_1B8
  loc_D2C341: ConcatVar var_1E8
  loc_D2C345: LitVarStr var_1C8, ","
  loc_D2C34A: ConcatVar var_1F8
  loc_D2C34E: FLdRfVar var_220
  loc_D2C351: FLdRfVar var_210
  loc_D2C354: LitVarStr var_20C, "BimeCtct"
  loc_D2C359: PopAdLdVar
  loc_D2C35A: FLdRfVar var_1FC
  loc_D2C35D: FLdPr Me
  loc_D2C360: MemLdPr global_72
  loc_D2C363:  = Me.Fields
  loc_D2C368: FLdPr var_1FC
  loc_D2C36B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C370: FLdPr var_210
  loc_D2C373:  = Me.Value
  loc_D2C378: FLdRfVar var_220
  loc_D2C37B: ConcatVar var_230
  loc_D2C37F: LitVarStr var_240, ","
  loc_D2C384: ConcatVar var_250
  loc_D2C388: FLdRfVar var_280
  loc_D2C38B: FLdRfVar var_2D8
  loc_D2C38E: LitVarStr var_260, "NumeCtct"
  loc_D2C393: PopAdLdVar
  loc_D2C394: FLdRfVar var_2C4
  loc_D2C397: FLdPr Me
  loc_D2C39A: MemLdPr global_72
  loc_D2C39D:  = Me.Fields
  loc_D2C3A2: FLdPr var_2C4
  loc_D2C3A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C3AA: FLdPr var_2D8
  loc_D2C3AD:  = Me.Value
  loc_D2C3B2: FLdRfVar var_280
  loc_D2C3B5: ConcatVar var_290
  loc_D2C3B9: LitVarStr var_270, ",1,1,"
  loc_D2C3BE: ConcatVar var_2A0
  loc_D2C3C2: FLdRfVar var_2C0
  loc_D2C3C5: FLdRfVar var_360
  loc_D2C3C8: LitVarStr var_2B0, "CodiTili"
  loc_D2C3CD: PopAdLdVar
  loc_D2C3CE: FLdRfVar var_34C
  loc_D2C3D1: FLdPr Me
  loc_D2C3D4: MemLdPr global_68
  loc_D2C3D7:  = Me.Fields
  loc_D2C3DC: FLdPr var_34C
  loc_D2C3DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C3E4: FLdPr var_360
  loc_D2C3E7:  = Me.Value
  loc_D2C3EC: FLdRfVar var_2C0
  loc_D2C3EF: ConcatVar var_2E8
  loc_D2C3F3: LitVarStr var_2D4, ","
  loc_D2C3F8: ConcatVar var_308
  loc_D2C3FC: FLdRfVar var_318
  loc_D2C3FF: FLdRfVar var_3B8
  loc_D2C402: LitVarStr var_2F8, "NumeLiqu"
  loc_D2C407: PopAdLdVar
  loc_D2C408: FLdRfVar var_3A4
  loc_D2C40B: FLdPr Me
  loc_D2C40E: MemLdPr global_68
  loc_D2C411:  = Me.Fields
  loc_D2C416: FLdPr var_3A4
  loc_D2C419: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C41E: FLdPr var_3B8
  loc_D2C421:  = Me.Value
  loc_D2C426: FLdRfVar var_318
  loc_D2C429: ConcatVar var_328
  loc_D2C42D: LitVarStr var_338, ",1,'"
  loc_D2C432: ConcatVar var_348
  loc_D2C436: FLdRfVar var_370
  loc_D2C439: FLdRfVar var_410
  loc_D2C43C: LitVarStr var_35C, "CodiInmu"
  loc_D2C441: PopAdLdVar
  loc_D2C442: FLdRfVar var_3FC
  loc_D2C445: FLdPr Me
  loc_D2C448: MemLdPr global_68
  loc_D2C44B:  = Me.Fields
  loc_D2C450: FLdPr var_3FC
  loc_D2C453: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C458: FLdPr var_410
  loc_D2C45B:  = Me.Value
  loc_D2C460: FLdRfVar var_370
  loc_D2C463: ConcatVar var_380
  loc_D2C467: LitVarStr var_390, "','Semestral1',0,0,0,"
  loc_D2C46C: ConcatVar var_3A0
  loc_D2C470: FLdRfVar var_3C8
  loc_D2C473: FLdRfVar var_478
  loc_D2C476: LitVarStr var_3B4, "TiafConc"
  loc_D2C47B: PopAdLdVar
  loc_D2C47C: FLdRfVar var_464
  loc_D2C47F: FLdPr Me
  loc_D2C482: MemLdPr global_68
  loc_D2C485:  = Me.Fields
  loc_D2C48A: FLdPr var_464
  loc_D2C48D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C492: FLdPr var_478
  loc_D2C495:  = Me.Value
  loc_D2C49A: FLdRfVar var_3C8
  loc_D2C49D: ConcatVar var_3D8
  loc_D2C4A1: LitVarStr var_3E8, ","
  loc_D2C4A6: ConcatVar var_3F8
  loc_D2C4AA: FLdRfVar var_520
  loc_D2C4AD: LitVarStr var_40C, "FealLita"
  loc_D2C4B2: PopAdLdVar
  loc_D2C4B3: FLdRfVar var_51C
  loc_D2C4B6: FLdPr Me
  loc_D2C4B9: MemLdPr global_68
  loc_D2C4BC:  = Me.Fields
  loc_D2C4C1: FLdPr var_51C
  loc_D2C4C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C4C9: FLdZeroAd var_520
  loc_D2C4CC: CVarAd
  loc_D2C4D0: FLdRfVar var_430
  loc_D2C4D3: ImpAdCallFPR4  = Year()
  loc_D2C4D8: FLdRfVar var_430
  loc_D2C4DB: ConcatVar var_440
  loc_D2C4DF: LitVarStr var_450, ",'"
  loc_D2C4E4: ConcatVar var_460
  loc_D2C4E8: FLdRfVar var_488
  loc_D2C4EB: FLdRfVar var_528
  loc_D2C4EE: LitVarStr var_474, "CodiConc"
  loc_D2C4F3: PopAdLdVar
  loc_D2C4F4: FLdRfVar var_524
  loc_D2C4F7: FLdPr Me
  loc_D2C4FA: MemLdPr global_68
  loc_D2C4FD:  = Me.Fields
  loc_D2C502: FLdPr var_524
  loc_D2C505: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C50A: FLdPr var_528
  loc_D2C50D:  = Me.Value
  loc_D2C512: FLdRfVar var_488
  loc_D2C515: ConcatVar var_498
  loc_D2C519: LitVarStr var_4B8, "',"
  loc_D2C51E: ConcatVar var_4A8
  loc_D2C522: LitI4 0
  loc_D2C527: LitI4 -1
  loc_D2C52C: LitI4 1
  loc_D2C531: LitStr "."
  loc_D2C534: LitStr ","
  loc_D2C537: FLdRfVar var_4C8
  loc_D2C53A: CStrVarTmp
  loc_D2C53B: FStStrNoPop var_168
  loc_D2C53E: ImpAdCallI2 Replace(, , , , , )
  loc_D2C543: CVarStr var_4E8
  loc_D2C546: ConcatVar var_508
  loc_D2C54A: LitVarStr var_4F8, ",0,0,0,0,0,0,"
  loc_D2C54F: ConcatVar var_538
  loc_D2C553: LitI4 0
  loc_D2C558: LitI4 -1
  loc_D2C55D: LitI4 1
  loc_D2C562: LitStr "."
  loc_D2C565: LitStr ","
  loc_D2C568: FLdRfVar var_598
  loc_D2C56B: CStrVarTmp
  loc_D2C56C: FStStrNoPop var_16C
  loc_D2C56F: ImpAdCallI2 Replace(, , , , , )
  loc_D2C574: CVarStr var_5A8
  loc_D2C577: ConcatVar var_5C8
  loc_D2C57B: LitVarStr var_558, ");"
  loc_D2C580: ConcatVar var_5E8
  loc_D2C584: CStrVarVal var_170
  loc_D2C588: Call EjecutarRsCls(from_stack_1v)
  loc_D2C58D: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_D2C5A2: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_410 = "": var_464 = "": var_478 = "": var_51C = "": var_524 = "": var_528 = "": var_70C = "": var_710 = "": var_714 = ""
  loc_D2C5CF: FFreeVar var_4E8 = "": var_508 = "": var_598 = "": var_538 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_420 = "": var_3F8 = "": var_430 = "": var_440 = "": var_460 = "": var_488 = "": var_498 = "": var_4C8 = ""
  loc_D2C61C: Branch loc_D2D295
  loc_D2C61F: FLdRfVar var_1B8
  loc_D2C622: FLdRfVar var_1A8
  loc_D2C625: LitVarStr var_1A4, "CrafLita"
  loc_D2C62A: PopAdLdVar
  loc_D2C62B: FLdRfVar var_194
  loc_D2C62E: FLdPr Me
  loc_D2C631: MemLdPr global_68
  loc_D2C634:  = Me.Fields
  loc_D2C639: FLdPr var_194
  loc_D2C63C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C641: FLdPr var_1A8
  loc_D2C644:  = Me.Value
  loc_D2C649: LitI4 2
  loc_D2C64E: FLdRfVar var_1B8
  loc_D2C651: FLdFPR8 var_104
  loc_D2C654: CVarR8
  loc_D2C658: SubVar var_1D8
  loc_D2C65C: FStVar var_1E8
  loc_D2C660: FLdRfVar var_1E8
  loc_D2C663: FLdRfVar var_1F8
  loc_D2C666: ImpAdCallFPR4  = Round(, )
  loc_D2C66B: FLdRfVar var_1F8
  loc_D2C66E: CR4Var
  loc_D2C66F: FStFPR8 var_104
  loc_D2C672: FFreeAd var_194 = ""
  loc_D2C679: FFreeVar var_1B8 = "": var_1E8 = ""
  loc_D2C682: LitStr vbNullString
  loc_D2C685: FStStrCopy var_14C
  loc_D2C688: LitI2_Byte 1
  loc_D2C68A: FLdRfVar var_B6
  loc_D2C68D: LitI2_Byte 6
  loc_D2C68F: ForI2 var_71C
  loc_D2C695: LitStr "SELECT * FROM detabole"
  loc_D2C698: LitStr " USE INDEX (idxdetabole02)"
  loc_D2C69B: ConcatStr
  loc_D2C69C: FStStrNoPop var_150
  loc_D2C69F: LitStr " WHERE PeriBole = "
  loc_D2C6A2: ConcatStr
  loc_D2C6A3: CVarStr var_1D8
  loc_D2C6A6: FLdRfVar var_1B8
  loc_D2C6A9: FLdRfVar var_1A8
  loc_D2C6AC: LitVarStr var_1A4, "PeriLiqu"
  loc_D2C6B1: PopAdLdVar
  loc_D2C6B2: FLdRfVar var_194
  loc_D2C6B5: FLdPr Me
  loc_D2C6B8: MemLdPr global_68
  loc_D2C6BB:  = Me.Fields
  loc_D2C6C0: FLdPr var_194
  loc_D2C6C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C6C8: FLdPr var_1A8
  loc_D2C6CB:  = Me.Value
  loc_D2C6D0: FLdRfVar var_1B8
  loc_D2C6D3: ConcatVar var_1E8
  loc_D2C6D7: LitVarStr var_1C8, " AND CodiOfic = 1"
  loc_D2C6DC: ConcatVar var_1F8
  loc_D2C6E0: LitVarStr var_20C, " AND CuenCtct = '"
  loc_D2C6E5: ConcatVar var_220
  loc_D2C6E9: FLdRfVar var_230
  loc_D2C6EC: FLdRfVar var_210
  loc_D2C6EF: LitVarStr var_240, "CodiInmu"
  loc_D2C6F4: PopAdLdVar
  loc_D2C6F5: FLdRfVar var_1FC
  loc_D2C6F8: FLdPr Me
  loc_D2C6FB: MemLdPr global_68
  loc_D2C6FE:  = Me.Fields
  loc_D2C703: FLdPr var_1FC
  loc_D2C706: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C70B: FLdPr var_210
  loc_D2C70E:  = Me.Value
  loc_D2C713: FLdRfVar var_230
  loc_D2C716: ConcatVar var_250
  loc_D2C71A: LitVarStr var_260, "'"
  loc_D2C71F: ConcatVar var_280
  loc_D2C723: LitVarStr var_270, " AND PeriCtct = "
  loc_D2C728: ConcatVar var_290
  loc_D2C72C: FLdRfVar var_2A0
  loc_D2C72F: FLdRfVar var_2D8
  loc_D2C732: LitVarStr var_2B0, "PeriLiqu"
  loc_D2C737: PopAdLdVar
  loc_D2C738: FLdRfVar var_2C4
  loc_D2C73B: FLdPr Me
  loc_D2C73E: MemLdPr global_68
  loc_D2C741:  = Me.Fields
  loc_D2C746: FLdPr var_2C4
  loc_D2C749: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C74E: FLdPr var_2D8
  loc_D2C751:  = Me.Value
  loc_D2C756: FLdRfVar var_2A0
  loc_D2C759: ConcatVar var_2C0
  loc_D2C75D: LitVarStr var_2D4, " AND BimeCtct = "
  loc_D2C762: ConcatVar var_2E8
  loc_D2C766: FLdI2 var_B6
  loc_D2C769: CVarI2 var_2F8
  loc_D2C76C: ConcatVar var_308
  loc_D2C770: LitVarStr var_338, " AND CodiConc = '"
  loc_D2C775: ConcatVar var_318
  loc_D2C779: FLdRfVar var_328
  loc_D2C77C: FLdRfVar var_360
  loc_D2C77F: LitVarStr var_35C, "CodiConc"
  loc_D2C784: PopAdLdVar
  loc_D2C785: FLdRfVar var_34C
  loc_D2C788: FLdPr Me
  loc_D2C78B: MemLdPr global_68
  loc_D2C78E:  = Me.Fields
  loc_D2C793: FLdPr var_34C
  loc_D2C796: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C79B: FLdPr var_360
  loc_D2C79E:  = Me.Value
  loc_D2C7A3: FLdRfVar var_328
  loc_D2C7A6: ConcatVar var_348
  loc_D2C7AA: LitVarStr var_390, "'"
  loc_D2C7AF: ConcatVar var_370
  loc_D2C7B3: LitVarStr var_3B4, " AND TipoCtct = 'Bimestral'"
  loc_D2C7B8: ConcatVar var_380
  loc_D2C7BC: LitVarStr var_3E8, " AND CodiTili = "
  loc_D2C7C1: ConcatVar var_3A0
  loc_D2C7C5: FLdRfVar var_3C8
  loc_D2C7C8: FLdRfVar var_3B8
  loc_D2C7CB: LitVarStr var_40C, "CodiTili"
  loc_D2C7D0: PopAdLdVar
  loc_D2C7D1: FLdRfVar var_3A4
  loc_D2C7D4: FLdPr Me
  loc_D2C7D7: MemLdPr global_68
  loc_D2C7DA:  = Me.Fields
  loc_D2C7DF: FLdPr var_3A4
  loc_D2C7E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C7E7: FLdPr var_3B8
  loc_D2C7EA:  = Me.Value
  loc_D2C7EF: FLdRfVar var_3C8
  loc_D2C7F2: ConcatVar var_3D8
  loc_D2C7F6: LitVarStr var_450, " AND NumeLiqu = "
  loc_D2C7FB: ConcatVar var_3F8
  loc_D2C7FF: FLdRfVar var_420
  loc_D2C802: FLdRfVar var_410
  loc_D2C805: LitVarStr var_474, "NumeLiqu"
  loc_D2C80A: PopAdLdVar
  loc_D2C80B: FLdRfVar var_3FC
  loc_D2C80E: FLdPr Me
  loc_D2C811: MemLdPr global_68
  loc_D2C814:  = Me.Fields
  loc_D2C819: FLdPr var_3FC
  loc_D2C81C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C821: FLdPr var_410
  loc_D2C824:  = Me.Value
  loc_D2C829: FLdRfVar var_420
  loc_D2C82C: ConcatVar var_430
  loc_D2C830: LitVarStr var_4B8, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D2C835: ConcatVar var_440
  loc_D2C839: CStrVarVal var_154
  loc_D2C83D: Call EjecutarRsCls4(from_stack_1v)
  loc_D2C842: FFreeStr var_150 = ""
  loc_D2C849: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = ""
  loc_D2C864: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = ""
  loc_D2C899: FLdRfVar var_174
  loc_D2C89C: FLdPr Me
  loc_D2C89F: MemLdPr global_72
  loc_D2C8A2:  = Me.RecordCount
  loc_D2C8A7: ILdRf var_174
  loc_D2C8AA: LitI4 0
  loc_D2C8AF: EqI4
  loc_D2C8B0: BranchF loc_D2CAE5
  loc_D2C8B3: LitStr "SELECT * FROM detabole"
  loc_D2C8B6: LitStr " USE INDEX (idxdetabole02)"
  loc_D2C8B9: ConcatStr
  loc_D2C8BA: FStStrNoPop var_150
  loc_D2C8BD: LitStr " WHERE PeriBole = "
  loc_D2C8C0: ConcatStr
  loc_D2C8C1: CVarStr var_1D8
  loc_D2C8C4: FLdRfVar var_1B8
  loc_D2C8C7: FLdRfVar var_1A8
  loc_D2C8CA: LitVarStr var_1A4, "PeriLiqu"
  loc_D2C8CF: PopAdLdVar
  loc_D2C8D0: FLdRfVar var_194
  loc_D2C8D3: FLdPr Me
  loc_D2C8D6: MemLdPr global_68
  loc_D2C8D9:  = Me.Fields
  loc_D2C8DE: FLdPr var_194
  loc_D2C8E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C8E6: FLdPr var_1A8
  loc_D2C8E9:  = Me.Value
  loc_D2C8EE: FLdRfVar var_1B8
  loc_D2C8F1: ConcatVar var_1E8
  loc_D2C8F5: LitVarStr var_1C8, " AND CodiOfic = 1"
  loc_D2C8FA: ConcatVar var_1F8
  loc_D2C8FE: LitVarStr var_20C, " AND CuenCtct = '"
  loc_D2C903: ConcatVar var_220
  loc_D2C907: FLdRfVar var_230
  loc_D2C90A: FLdRfVar var_210
  loc_D2C90D: LitVarStr var_240, "CodiInmu"
  loc_D2C912: PopAdLdVar
  loc_D2C913: FLdRfVar var_1FC
  loc_D2C916: FLdPr Me
  loc_D2C919: MemLdPr global_68
  loc_D2C91C:  = Me.Fields
  loc_D2C921: FLdPr var_1FC
  loc_D2C924: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C929: FLdPr var_210
  loc_D2C92C:  = Me.Value
  loc_D2C931: FLdRfVar var_230
  loc_D2C934: ConcatVar var_250
  loc_D2C938: LitVarStr var_260, "'"
  loc_D2C93D: ConcatVar var_280
  loc_D2C941: LitVarStr var_270, " AND PeriCtct = "
  loc_D2C946: ConcatVar var_290
  loc_D2C94A: FLdRfVar var_2A0
  loc_D2C94D: FLdRfVar var_2D8
  loc_D2C950: LitVarStr var_2B0, "PeriLiqu"
  loc_D2C955: PopAdLdVar
  loc_D2C956: FLdRfVar var_2C4
  loc_D2C959: FLdPr Me
  loc_D2C95C: MemLdPr global_68
  loc_D2C95F:  = Me.Fields
  loc_D2C964: FLdPr var_2C4
  loc_D2C967: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C96C: FLdPr var_2D8
  loc_D2C96F:  = Me.Value
  loc_D2C974: FLdRfVar var_2A0
  loc_D2C977: ConcatVar var_2C0
  loc_D2C97B: LitVarStr var_2D4, " AND BimeCtct = 1"
  loc_D2C980: ConcatVar var_2E8
  loc_D2C984: LitVarStr var_2F8, " AND CodiConc = '"
  loc_D2C989: ConcatVar var_308
  loc_D2C98D: FLdRfVar var_318
  loc_D2C990: FLdRfVar var_360
  loc_D2C993: LitVarStr var_338, "CodiConc"
  loc_D2C998: PopAdLdVar
  loc_D2C999: FLdRfVar var_34C
  loc_D2C99C: FLdPr Me
  loc_D2C99F: MemLdPr global_68
  loc_D2C9A2:  = Me.Fields
  loc_D2C9A7: FLdPr var_34C
  loc_D2C9AA: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C9AF: FLdPr var_360
  loc_D2C9B2:  = Me.Value
  loc_D2C9B7: FLdRfVar var_318
  loc_D2C9BA: ConcatVar var_328
  loc_D2C9BE: LitVarStr var_35C, "'"
  loc_D2C9C3: ConcatVar var_348
  loc_D2C9C7: LitVarStr var_390, " AND TipoCtct = 'Bimestral'"
  loc_D2C9CC: ConcatVar var_370
  loc_D2C9D0: LitVarStr var_3B4, " AND CodiTili = "
  loc_D2C9D5: ConcatVar var_380
  loc_D2C9D9: FLdRfVar var_3A0
  loc_D2C9DC: FLdRfVar var_3B8
  loc_D2C9DF: LitVarStr var_3E8, "CodiTili"
  loc_D2C9E4: PopAdLdVar
  loc_D2C9E5: FLdRfVar var_3A4
  loc_D2C9E8: FLdPr Me
  loc_D2C9EB: MemLdPr global_68
  loc_D2C9EE:  = Me.Fields
  loc_D2C9F3: FLdPr var_3A4
  loc_D2C9F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2C9FB: FLdPr var_3B8
  loc_D2C9FE:  = Me.Value
  loc_D2CA03: FLdRfVar var_3A0
  loc_D2CA06: ConcatVar var_3C8
  loc_D2CA0A: LitVarStr var_40C, " AND NumeLiqu = "
  loc_D2CA0F: ConcatVar var_3D8
  loc_D2CA13: FLdRfVar var_3F8
  loc_D2CA16: FLdRfVar var_410
  loc_D2CA19: LitVarStr var_450, "NumeLiqu"
  loc_D2CA1E: PopAdLdVar
  loc_D2CA1F: FLdRfVar var_3FC
  loc_D2CA22: FLdPr Me
  loc_D2CA25: MemLdPr global_68
  loc_D2CA28:  = Me.Fields
  loc_D2CA2D: FLdPr var_3FC
  loc_D2CA30: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CA35: FLdPr var_410
  loc_D2CA38:  = Me.Value
  loc_D2CA3D: FLdRfVar var_3F8
  loc_D2CA40: ConcatVar var_420
  loc_D2CA44: LitVarStr var_474, " ORDER BY PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D2CA49: ConcatVar var_430
  loc_D2CA4D: CStrVarVal var_154
  loc_D2CA51: Call EjecutarRsCls4(from_stack_1v)
  loc_D2CA56: FFreeStr var_150 = ""
  loc_D2CA5D: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = ""
  loc_D2CA78: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = ""
  loc_D2CAAB: FLdRfVar var_174
  loc_D2CAAE: FLdPr Me
  loc_D2CAB1: MemLdPr global_72
  loc_D2CAB4:  = Me.RecordCount
  loc_D2CAB9: ILdRf var_174
  loc_D2CABC: LitI4 0
  loc_D2CAC1: GtI4
  loc_D2CAC2: BranchF loc_D2CAE2
  loc_D2CAC5: FLdI2 var_B6
  loc_D2CAC8: FStI2 var_E2
  loc_D2CACB: FLdRfVar var_174
  loc_D2CACE: FLdI2 iPeriodo
  loc_D2CAD1: FLdRfVar var_90
  loc_D2CAD4: NewIfNullPr clsctacte
  loc_D2CAD7: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_D2CADC: ILdRf var_174
  loc_D2CADF: FStR4 var_9C
  loc_D2CAE2: Branch loc_D2CB5C
  loc_D2CAE5: FLdRfVar var_1B8
  loc_D2CAE8: FLdRfVar var_1A8
  loc_D2CAEB: LitVarStr var_1A4, "BimeCtct"
  loc_D2CAF0: PopAdLdVar
  loc_D2CAF1: FLdRfVar var_194
  loc_D2CAF4: FLdPr Me
  loc_D2CAF7: MemLdPr global_72
  loc_D2CAFA:  = Me.Fields
  loc_D2CAFF: FLdPr var_194
  loc_D2CB02: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CB07: FLdPr var_1A8
  loc_D2CB0A:  = Me.Value
  loc_D2CB0F: FLdRfVar var_1B8
  loc_D2CB12: CI2Var
  loc_D2CB13: FStI2 var_E2
  loc_D2CB16: FFreeAd var_194 = ""
  loc_D2CB1D: FFree1Var var_1B8 = ""
  loc_D2CB20: FLdRfVar var_1B8
  loc_D2CB23: FLdRfVar var_1A8
  loc_D2CB26: LitVarStr var_1A4, "NumeCtct"
  loc_D2CB2B: PopAdLdVar
  loc_D2CB2C: FLdRfVar var_194
  loc_D2CB2F: FLdPr Me
  loc_D2CB32: MemLdPr global_72
  loc_D2CB35:  = Me.Fields
  loc_D2CB3A: FLdPr var_194
  loc_D2CB3D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CB42: FLdPr var_1A8
  loc_D2CB45:  = Me.Value
  loc_D2CB4A: FLdRfVar var_1B8
  loc_D2CB4D: CI4Var
  loc_D2CB4F: FStR4 var_9C
  loc_D2CB52: FFreeAd var_194 = ""
  loc_D2CB59: FFree1Var var_1B8 = ""
  loc_D2CB5C: FLdRfVar var_174
  loc_D2CB5F: FLdPr Me
  loc_D2CB62: MemLdPr global_72
  loc_D2CB65:  = Me.RecordCount
  loc_D2CB6A: ILdRf var_174
  loc_D2CB6D: LitI4 0
  loc_D2CB72: GtI4
  loc_D2CB73: BranchF loc_D2D285
  loc_D2CB76: FLdPr Me
  loc_D2CB79: MemLdPr global_72
  loc_D2CB7C: Me.MoveFirst
  loc_D2CB81: FLdRfVar var_18E
  loc_D2CB84: FLdPr Me
  loc_D2CB87: MemLdPr global_72
  loc_D2CB8A:  = Me.EOF
  loc_D2CB8F: FLdI2 var_18E
  loc_D2CB92: NotI4
  loc_D2CB93: BranchF loc_D2D285
  loc_D2CB96: FLdRfVar var_1B8
  loc_D2CB99: FLdRfVar var_1A8
  loc_D2CB9C: LitVarStr var_1A4, "CodiConc"
  loc_D2CBA1: PopAdLdVar
  loc_D2CBA2: FLdRfVar var_194
  loc_D2CBA5: FLdPr Me
  loc_D2CBA8: MemLdPr global_68
  loc_D2CBAB:  = Me.Fields
  loc_D2CBB0: FLdPr var_194
  loc_D2CBB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CBB8: FLdPr var_1A8
  loc_D2CBBB:  = Me.Value
  loc_D2CBC0: FLdRfVar var_1B8
  loc_D2CBC3: LitVarStr var_1C8, "13020101"
  loc_D2CBC8: HardType
  loc_D2CBC9: EqVarBool
  loc_D2CBCB: FFreeAd var_194 = ""
  loc_D2CBD2: FFree1Var var_1B8 = ""
  loc_D2CBD5: BranchF loc_D2CE96
  loc_D2CBD8: LitStr "SELECT SUM(ImpoLtde) ImpoLtde, SUM(DecaLtde) DecaLtde, SUM(ExenLtde) ExenLtde, SUM(TotaLtde) TotaLtde FROM litadeta "
  loc_D2CBDB: LitStr " USE INDEX (idxlitadeta02)"
  loc_D2CBDE: ConcatStr
  loc_D2CBDF: FStStrNoPop var_150
  loc_D2CBE2: LitStr " WHERE PeriLiqu = "
  loc_D2CBE5: ConcatStr
  loc_D2CBE6: CVarStr var_1D8
  loc_D2CBE9: FLdRfVar var_1B8
  loc_D2CBEC: FLdRfVar var_1A8
  loc_D2CBEF: LitVarStr var_1A4, "PeriLiqu"
  loc_D2CBF4: PopAdLdVar
  loc_D2CBF5: FLdRfVar var_194
  loc_D2CBF8: FLdPr Me
  loc_D2CBFB: MemLdPr global_68
  loc_D2CBFE:  = Me.Fields
  loc_D2CC03: FLdPr var_194
  loc_D2CC06: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CC0B: FLdPr var_1A8
  loc_D2CC0E:  = Me.Value
  loc_D2CC13: FLdRfVar var_1B8
  loc_D2CC16: ConcatVar var_1E8
  loc_D2CC1A: LitVarStr var_1C8, " AND BimeLiqu = "
  loc_D2CC1F: ConcatVar var_1F8
  loc_D2CC23: FLdI2 var_B6
  loc_D2CC26: CVarI2 var_20C
  loc_D2CC29: ConcatVar var_220
  loc_D2CC2D: LitVarStr var_240, " AND CodiTili = "
  loc_D2CC32: ConcatVar var_230
  loc_D2CC36: FLdRfVar var_250
  loc_D2CC39: FLdRfVar var_210
  loc_D2CC3C: LitVarStr var_260, "CodiTili"
  loc_D2CC41: PopAdLdVar
  loc_D2CC42: FLdRfVar var_1FC
  loc_D2CC45: FLdPr Me
  loc_D2CC48: MemLdPr global_68
  loc_D2CC4B:  = Me.Fields
  loc_D2CC50: FLdPr var_1FC
  loc_D2CC53: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CC58: FLdPr var_210
  loc_D2CC5B:  = Me.Value
  loc_D2CC60: FLdRfVar var_250
  loc_D2CC63: ConcatVar var_280
  loc_D2CC67: LitVarStr var_270, " AND NumeLiqu = "
  loc_D2CC6C: ConcatVar var_290
  loc_D2CC70: FLdRfVar var_2A0
  loc_D2CC73: FLdRfVar var_2D8
  loc_D2CC76: LitVarStr var_2B0, "NumeLiqu"
  loc_D2CC7B: PopAdLdVar
  loc_D2CC7C: FLdRfVar var_2C4
  loc_D2CC7F: FLdPr Me
  loc_D2CC82: MemLdPr global_68
  loc_D2CC85:  = Me.Fields
  loc_D2CC8A: FLdPr var_2C4
  loc_D2CC8D: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CC92: FLdPr var_2D8
  loc_D2CC95:  = Me.Value
  loc_D2CC9A: FLdRfVar var_2A0
  loc_D2CC9D: ConcatVar var_2C0
  loc_D2CCA1: LitVarStr var_2D4, " AND CodiInmu = "
  loc_D2CCA6: ConcatVar var_2E8
  loc_D2CCAA: FLdRfVar var_308
  loc_D2CCAD: FLdRfVar var_360
  loc_D2CCB0: LitVarStr var_2F8, "CodiInmu"
  loc_D2CCB5: PopAdLdVar
  loc_D2CCB6: FLdRfVar var_34C
  loc_D2CCB9: FLdPr Me
  loc_D2CCBC: MemLdPr global_68
  loc_D2CCBF:  = Me.Fields
  loc_D2CCC4: FLdPr var_34C
  loc_D2CCC7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CCCC: FLdPr var_360
  loc_D2CCCF:  = Me.Value
  loc_D2CCD4: FLdRfVar var_308
  loc_D2CCD7: ConcatVar var_318
  loc_D2CCDB: LitVarStr var_338, " AND CodiConc = '"
  loc_D2CCE0: ConcatVar var_328
  loc_D2CCE4: FLdRfVar var_348
  loc_D2CCE7: FLdRfVar var_3B8
  loc_D2CCEA: LitVarStr var_35C, "CodiConc"
  loc_D2CCEF: PopAdLdVar
  loc_D2CCF0: FLdRfVar var_3A4
  loc_D2CCF3: FLdPr Me
  loc_D2CCF6: MemLdPr global_68
  loc_D2CCF9:  = Me.Fields
  loc_D2CCFE: FLdPr var_3A4
  loc_D2CD01: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CD06: FLdPr var_3B8
  loc_D2CD09:  = Me.Value
  loc_D2CD0E: FLdRfVar var_348
  loc_D2CD11: ConcatVar var_370
  loc_D2CD15: LitVarStr var_390, "'"
  loc_D2CD1A: ConcatVar var_380
  loc_D2CD1E: LitVarStr var_3B4, " AND TipoVenc = 2"
  loc_D2CD23: ConcatVar var_3A0
  loc_D2CD27: CStrVarVal var_154
  loc_D2CD2B: Call EjecutarRsCls5(from_stack_1v)
  loc_D2CD30: FFreeStr var_150 = ""
  loc_D2CD37: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = ""
  loc_D2CD4E: FFreeVar var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = ""
  loc_D2CD77: FLdRfVar var_174
  loc_D2CD7A: FLdPr Me
  loc_D2CD7D: MemLdPr global_76
  loc_D2CD80:  = Me.RecordCount
  loc_D2CD85: ILdRf var_174
  loc_D2CD88: LitI4 0
  loc_D2CD8D: GtI4
  loc_D2CD8E: BranchF loc_D2CE93
  loc_D2CD91: FLdI2 var_B6
  loc_D2CD94: LitI2_Byte 2
  loc_D2CD96: LeI2
  loc_D2CD97: BranchF loc_D2CDD9
  loc_D2CD9A: FLdRfVar var_1B8
  loc_D2CD9D: FLdRfVar var_1A8
  loc_D2CDA0: LitVarStr var_1A4, "CapiDebo"
  loc_D2CDA5: PopAdLdVar
  loc_D2CDA6: FLdRfVar var_194
  loc_D2CDA9: FLdPr Me
  loc_D2CDAC: MemLdPr global_72
  loc_D2CDAF:  = Me.Fields
  loc_D2CDB4: FLdPr var_194
  loc_D2CDB7: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CDBC: FLdPr var_1A8
  loc_D2CDBF:  = Me.Value
  loc_D2CDC4: FLdRfVar var_1B8
  loc_D2CDC7: FnCDblVar
  loc_D2CDC9: FStFPR8 var_C8
  loc_D2CDCC: FFreeAd var_194 = ""
  loc_D2CDD3: FFree1Var var_1B8 = ""
  loc_D2CDD6: Branch loc_D2CE15
  loc_D2CDD9: FLdRfVar var_1B8
  loc_D2CDDC: FLdRfVar var_1A8
  loc_D2CDDF: LitVarStr var_1A4, "ImpoLtde"
  loc_D2CDE4: PopAdLdVar
  loc_D2CDE5: FLdRfVar var_194
  loc_D2CDE8: FLdPr Me
  loc_D2CDEB: MemLdPr global_76
  loc_D2CDEE:  = Me.Fields
  loc_D2CDF3: FLdPr var_194
  loc_D2CDF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CDFB: FLdPr var_1A8
  loc_D2CDFE:  = Me.Value
  loc_D2CE03: FLdRfVar var_1B8
  loc_D2CE06: FnCDblVar
  loc_D2CE08: FStFPR8 var_C8
  loc_D2CE0B: FFreeAd var_194 = ""
  loc_D2CE12: FFree1Var var_1B8 = ""
  loc_D2CE15: FLdRfVar var_1B8
  loc_D2CE18: FLdRfVar var_1A8
  loc_D2CE1B: LitVarStr var_1A4, "DecaLtde"
  loc_D2CE20: PopAdLdVar
  loc_D2CE21: FLdRfVar var_194
  loc_D2CE24: FLdPr Me
  loc_D2CE27: MemLdPr global_76
  loc_D2CE2A:  = Me.Fields
  loc_D2CE2F: FLdPr var_194
  loc_D2CE32: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CE37: FLdPr var_1A8
  loc_D2CE3A:  = Me.Value
  loc_D2CE3F: FLdRfVar var_1B8
  loc_D2CE42: FnCDblVar
  loc_D2CE44: FStFPR8 var_D0
  loc_D2CE47: FFreeAd var_194 = ""
  loc_D2CE4E: FFree1Var var_1B8 = ""
  loc_D2CE51: FLdRfVar var_1B8
  loc_D2CE54: FLdRfVar var_1A8
  loc_D2CE57: LitVarStr var_1A4, "ExenLtde"
  loc_D2CE5C: PopAdLdVar
  loc_D2CE5D: FLdRfVar var_194
  loc_D2CE60: FLdPr Me
  loc_D2CE63: MemLdPr global_76
  loc_D2CE66:  = Me.Fields
  loc_D2CE6B: FLdPr var_194
  loc_D2CE6E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CE73: FLdPr var_1A8
  loc_D2CE76:  = Me.Value
  loc_D2CE7B: FLdRfVar var_1B8
  loc_D2CE7E: FnCDblVar
  loc_D2CE80: FStFPR8 var_D8
  loc_D2CE83: FFreeAd var_194 = ""
  loc_D2CE8A: FFree1Var var_1B8 = ""
  loc_D2CE8D: LitI2_Byte 0
  loc_D2CE8F: CR8I2
  loc_D2CE90: FStFPR8 var_FC
  loc_D2CE93: Branch loc_D2CEE4
  loc_D2CE96: FLdRfVar var_1B8
  loc_D2CE99: FLdRfVar var_1A8
  loc_D2CE9C: LitVarStr var_1A4, "CapiDebo"
  loc_D2CEA1: PopAdLdVar
  loc_D2CEA2: FLdRfVar var_194
  loc_D2CEA5: FLdPr Me
  loc_D2CEA8: MemLdPr global_72
  loc_D2CEAB:  = Me.Fields
  loc_D2CEB0: FLdPr var_194
  loc_D2CEB3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CEB8: FLdPr var_1A8
  loc_D2CEBB:  = Me.Value
  loc_D2CEC0: FLdRfVar var_1B8
  loc_D2CEC3: FnCDblVar
  loc_D2CEC5: FStFPR8 var_C8
  loc_D2CEC8: FFreeAd var_194 = ""
  loc_D2CECF: FFree1Var var_1B8 = ""
  loc_D2CED2: LitI2_Byte 0
  loc_D2CED4: CR8I2
  loc_D2CED5: FStFPR8 var_D0
  loc_D2CED8: LitI2_Byte 0
  loc_D2CEDA: CR8I2
  loc_D2CEDB: FStFPR8 var_D8
  loc_D2CEDE: LitI2_Byte 0
  loc_D2CEE0: CR8I2
  loc_D2CEE1: FStFPR8 var_FC
  loc_D2CEE4: FLdFPR8 var_C8
  loc_D2CEE7: FLdFPR8 var_D0
  loc_D2CEEA: SubR4
  loc_D2CEEB: FLdFPR8 var_D8
  loc_D2CEEE: SubR4
  loc_D2CEEF: FLdFPR8 var_FC
  loc_D2CEF2: SubR4
  loc_D2CEF3: FStFPR8 var_E0
  loc_D2CEF6: FLdFPR8 var_10C
  loc_D2CEF9: FLdFPR8 var_C8
  loc_D2CEFC: AddR8
  loc_D2CEFD: FStFPR8 var_10C
  loc_D2CF00: FLdFPR8 var_114
  loc_D2CF03: FLdFPR8 var_D0
  loc_D2CF06: AddR8
  loc_D2CF07: FStFPR8 var_114
  loc_D2CF0A: FLdFPR8 var_11C
  loc_D2CF0D: FLdFPR8 var_D8
  loc_D2CF10: AddR8
  loc_D2CF11: FStFPR8 var_11C
  loc_D2CF14: FLdFPR8 var_124
  loc_D2CF17: FLdFPR8 var_FC
  loc_D2CF1A: AddR8
  loc_D2CF1B: FStFPR8 var_124
  loc_D2CF1E: ILdRf var_14C
  loc_D2CF21: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, TotaDebo) "
  loc_D2CF24: ConcatStr
  loc_D2CF25: FStStrNoPop var_150
  loc_D2CF28: LitStr " VALUES ("
  loc_D2CF2B: ConcatStr
  loc_D2CF2C: FStStrNoPop var_154
  loc_D2CF2F: FLdI2 iPeriodo
  loc_D2CF32: CStrUI1
  loc_D2CF34: FStStrNoPop var_158
  loc_D2CF37: ConcatStr
  loc_D2CF38: FStStrNoPop var_15C
  loc_D2CF3B: LitStr ","
  loc_D2CF3E: ConcatStr
  loc_D2CF3F: FStStrNoPop var_160
  loc_D2CF42: ILdRf var_A0
  loc_D2CF45: CStrI4
  loc_D2CF47: FStStrNoPop var_164
  loc_D2CF4A: ConcatStr
  loc_D2CF4B: FStStrNoPop var_168
  loc_D2CF4E: LitStr ","
  loc_D2CF51: ConcatStr
  loc_D2CF52: FStStrNoPop var_16C
  loc_D2CF55: FLdI2 iPeriodo
  loc_D2CF58: CStrUI1
  loc_D2CF5A: FStStrNoPop var_170
  loc_D2CF5D: ConcatStr
  loc_D2CF5E: FStStrNoPop var_178
  loc_D2CF61: LitStr ","
  loc_D2CF64: ConcatStr
  loc_D2CF65: FStStrNoPop var_17C
  loc_D2CF68: FLdI2 var_E2
  loc_D2CF6B: CStrUI1
  loc_D2CF6D: FStStrNoPop var_180
  loc_D2CF70: ConcatStr
  loc_D2CF71: FStStrNoPop var_184
  loc_D2CF74: LitStr ","
  loc_D2CF77: ConcatStr
  loc_D2CF78: FStStrNoPop var_188
  loc_D2CF7B: ILdRf var_9C
  loc_D2CF7E: CStrI4
  loc_D2CF80: FStStrNoPop var_18C
  loc_D2CF83: ConcatStr
  loc_D2CF84: FStStrNoPop var_720
  loc_D2CF87: LitStr ",1,1,"
  loc_D2CF8A: ConcatStr
  loc_D2CF8B: CVarStr var_1D8
  loc_D2CF8E: FLdRfVar var_1B8
  loc_D2CF91: FLdRfVar var_1A8
  loc_D2CF94: LitVarStr var_1A4, "CodiTili"
  loc_D2CF99: PopAdLdVar
  loc_D2CF9A: FLdRfVar var_194
  loc_D2CF9D: FLdPr Me
  loc_D2CFA0: MemLdPr global_72
  loc_D2CFA3:  = Me.Fields
  loc_D2CFA8: FLdPr var_194
  loc_D2CFAB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CFB0: FLdPr var_1A8
  loc_D2CFB3:  = Me.Value
  loc_D2CFB8: FLdRfVar var_1B8
  loc_D2CFBB: ConcatVar var_1E8
  loc_D2CFBF: LitVarStr var_1C8, ","
  loc_D2CFC4: ConcatVar var_1F8
  loc_D2CFC8: FLdRfVar var_220
  loc_D2CFCB: FLdRfVar var_210
  loc_D2CFCE: LitVarStr var_20C, "NumeLiqu"
  loc_D2CFD3: PopAdLdVar
  loc_D2CFD4: FLdRfVar var_1FC
  loc_D2CFD7: FLdPr Me
  loc_D2CFDA: MemLdPr global_72
  loc_D2CFDD:  = Me.Fields
  loc_D2CFE2: FLdPr var_1FC
  loc_D2CFE5: from_stack_2 = Me.Item(from_stack_1)
  loc_D2CFEA: FLdPr var_210
  loc_D2CFED:  = Me.Value
  loc_D2CFF2: FLdRfVar var_220
  loc_D2CFF5: ConcatVar var_230
  loc_D2CFF9: LitVarStr var_240, ",1,'"
  loc_D2CFFE: ConcatVar var_250
  loc_D2D002: FLdRfVar var_280
  loc_D2D005: FLdRfVar var_2D8
  loc_D2D008: LitVarStr var_260, "CuenCtct"
  loc_D2D00D: PopAdLdVar
  loc_D2D00E: FLdRfVar var_2C4
  loc_D2D011: FLdPr Me
  loc_D2D014: MemLdPr global_72
  loc_D2D017:  = Me.Fields
  loc_D2D01C: FLdPr var_2C4
  loc_D2D01F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D024: FLdPr var_2D8
  loc_D2D027:  = Me.Value
  loc_D2D02C: FLdRfVar var_280
  loc_D2D02F: ConcatVar var_290
  loc_D2D033: LitVarStr var_270, "','Anual',0,0,0,"
  loc_D2D038: ConcatVar var_2A0
  loc_D2D03C: FLdRfVar var_2C0
  loc_D2D03F: FLdRfVar var_360
  loc_D2D042: LitVarStr var_2B0, "CodiTimo"
  loc_D2D047: PopAdLdVar
  loc_D2D048: FLdRfVar var_34C
  loc_D2D04B: FLdPr Me
  loc_D2D04E: MemLdPr global_72
  loc_D2D051:  = Me.Fields
  loc_D2D056: FLdPr var_34C
  loc_D2D059: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D05E: FLdPr var_360
  loc_D2D061:  = Me.Value
  loc_D2D066: FLdRfVar var_2C0
  loc_D2D069: ConcatVar var_2E8
  loc_D2D06D: LitVarStr var_2D4, ","
  loc_D2D072: ConcatVar var_308
  loc_D2D076: FLdRfVar var_318
  loc_D2D079: FLdRfVar var_3B8
  loc_D2D07C: LitVarStr var_2F8, "PeriInfo"
  loc_D2D081: PopAdLdVar
  loc_D2D082: FLdRfVar var_3A4
  loc_D2D085: FLdPr Me
  loc_D2D088: MemLdPr global_72
  loc_D2D08B:  = Me.Fields
  loc_D2D090: FLdPr var_3A4
  loc_D2D093: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D098: FLdPr var_3B8
  loc_D2D09B:  = Me.Value
  loc_D2D0A0: FLdRfVar var_318
  loc_D2D0A3: ConcatVar var_328
  loc_D2D0A7: LitVarStr var_338, ",'"
  loc_D2D0AC: ConcatVar var_348
  loc_D2D0B0: FLdRfVar var_370
  loc_D2D0B3: FLdRfVar var_410
  loc_D2D0B6: LitVarStr var_35C, "CodiConc"
  loc_D2D0BB: PopAdLdVar
  loc_D2D0BC: FLdRfVar var_3FC
  loc_D2D0BF: FLdPr Me
  loc_D2D0C2: MemLdPr global_72
  loc_D2D0C5:  = Me.Fields
  loc_D2D0CA: FLdPr var_3FC
  loc_D2D0CD: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D0D2: FLdPr var_410
  loc_D2D0D5:  = Me.Value
  loc_D2D0DA: FLdRfVar var_370
  loc_D2D0DD: ConcatVar var_380
  loc_D2D0E1: LitVarStr var_390, "',"
  loc_D2D0E6: ConcatVar var_3A0
  loc_D2D0EA: LitI4 0
  loc_D2D0EF: LitI4 -1
  loc_D2D0F4: LitI4 1
  loc_D2D0F9: LitStr "."
  loc_D2D0FC: LitStr ","
  loc_D2D0FF: FLdFPR8 var_C8
  loc_D2D102: CStrR8
  loc_D2D104: FStStrNoPop var_724
  loc_D2D107: ImpAdCallI2 Replace(, , , , , )
  loc_D2D10C: CVarStr var_3C8
  loc_D2D10F: ConcatVar var_3D8
  loc_D2D113: LitVarStr var_3B4, ","
  loc_D2D118: ConcatVar var_3F8
  loc_D2D11C: LitI4 0
  loc_D2D121: LitI4 -1
  loc_D2D126: LitI4 1
  loc_D2D12B: LitStr "."
  loc_D2D12E: LitStr ","
  loc_D2D131: FLdFPR8 var_D0
  loc_D2D134: CStrR8
  loc_D2D136: FStStrNoPop var_728
  loc_D2D139: ImpAdCallI2 Replace(, , , , , )
  loc_D2D13E: CVarStr var_420
  loc_D2D141: ConcatVar var_430
  loc_D2D145: LitVarStr var_3E8, ",0,0,0,"
  loc_D2D14A: ConcatVar var_440
  loc_D2D14E: LitI4 0
  loc_D2D153: LitI4 -1
  loc_D2D158: LitI4 1
  loc_D2D15D: LitStr "."
  loc_D2D160: LitStr ","
  loc_D2D163: FLdFPR8 var_D8
  loc_D2D166: CStrR8
  loc_D2D168: FStStrNoPop var_72C
  loc_D2D16B: ImpAdCallI2 Replace(, , , , , )
  loc_D2D170: CVarStr var_460
  loc_D2D173: ConcatVar var_488
  loc_D2D177: LitVarStr var_40C, ","
  loc_D2D17C: ConcatVar var_498
  loc_D2D180: LitI4 0
  loc_D2D185: LitI4 -1
  loc_D2D18A: LitI4 1
  loc_D2D18F: LitStr "."
  loc_D2D192: LitStr ","
  loc_D2D195: FLdFPR8 var_FC
  loc_D2D198: CStrR8
  loc_D2D19A: FStStrNoPop var_730
  loc_D2D19D: ImpAdCallI2 Replace(, , , , , )
  loc_D2D1A2: CVarStr var_4A8
  loc_D2D1A5: ConcatVar var_4C8
  loc_D2D1A9: LitVarStr var_450, ","
  loc_D2D1AE: ConcatVar var_4E8
  loc_D2D1B2: LitI4 0
  loc_D2D1B7: LitI4 -1
  loc_D2D1BC: LitI4 1
  loc_D2D1C1: LitStr "."
  loc_D2D1C4: LitStr ","
  loc_D2D1C7: FLdFPR8 var_E0
  loc_D2D1CA: CStrR8
  loc_D2D1CC: FStStrNoPop var_734
  loc_D2D1CF: ImpAdCallI2 Replace(, , , , , )
  loc_D2D1D4: CVarStr var_508
  loc_D2D1D7: ConcatVar var_538
  loc_D2D1DB: LitVarStr var_474, ");"
  loc_D2D1E0: ConcatVar var_598
  loc_D2D1E4: CStrVarTmp
  loc_D2D1E5: FStStr var_14C
  loc_D2D1E8: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_720 = "": var_724 = "": var_728 = "": var_72C = "": var_730 = ""
  loc_D2D215: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = ""
  loc_D2D230: FFreeVar var_4E8 = "": var_508 = "": var_538 = "": var_598 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_440 = "": var_460 = "": var_488 = "": var_498 = "": var_4A8 = ""
  loc_D2D277: FLdPr Me
  loc_D2D27A: MemLdPr global_72
  loc_D2D27D: Me.MoveNext
  loc_D2D282: Branch loc_D2CB81
  loc_D2D285: FLdRfVar var_B6
  loc_D2D288: NextI2 var_71C, loc_D2C695
  loc_D2D28D: ILdRf var_14C
  loc_D2D290: Call EjecutarRsCls(from_stack_1v)
  loc_D2D295: LitI2_Byte 0
  loc_D2D297: CR8I2
  loc_D2D298: FStFPR8 var_AC
  loc_D2D29B: LitI2_Byte 0
  loc_D2D29D: CR8I2
  loc_D2D29E: FStFPR8 var_B4
  loc_D2D2A1: Branch loc_D2D41D
  loc_D2D2A4: FLdRfVar var_518
  loc_D2D2A7: LitVarStr var_1A4, "Pago Anticipado"
  loc_D2D2AC: HardType
  loc_D2D2AD: EqVarBool
  loc_D2D2AF: BranchF loc_D2D41D
  loc_D2D2B2: LitVarStr var_1C8, " UPDATE pagoanti SET EstaPaan = 'Liquidado' WHERE CodiOfic = 1 AND CuenCtct = '"
  loc_D2D2B7: FLdRfVar var_1B8
  loc_D2D2BA: FLdRfVar var_1A8
  loc_D2D2BD: LitVarStr var_1A4, "CodiInmu"
  loc_D2D2C2: PopAdLdVar
  loc_D2D2C3: FLdRfVar var_194
  loc_D2D2C6: FLdPr Me
  loc_D2D2C9: MemLdPr global_68
  loc_D2D2CC:  = Me.Fields
  loc_D2D2D1: FLdPr var_194
  loc_D2D2D4: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D2D9: FLdPr var_1A8
  loc_D2D2DC:  = Me.Value
  loc_D2D2E1: FLdRfVar var_1B8
  loc_D2D2E4: ConcatVar var_1D8
  loc_D2D2E8: LitVarStr var_20C, "' AND PeriLiqu = "
  loc_D2D2ED: ConcatVar var_1E8
  loc_D2D2F1: FLdRfVar var_1F8
  loc_D2D2F4: FLdRfVar var_210
  loc_D2D2F7: LitVarStr var_240, "PeriLiqu"
  loc_D2D2FC: PopAdLdVar
  loc_D2D2FD: FLdRfVar var_1FC
  loc_D2D300: FLdPr Me
  loc_D2D303: MemLdPr global_68
  loc_D2D306:  = Me.Fields
  loc_D2D30B: FLdPr var_1FC
  loc_D2D30E: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D313: FLdPr var_210
  loc_D2D316:  = Me.Value
  loc_D2D31B: FLdRfVar var_1F8
  loc_D2D31E: ConcatVar var_220
  loc_D2D322: LitVarStr var_260, " AND BimeLiqu = "
  loc_D2D327: ConcatVar var_230
  loc_D2D32B: FLdRfVar var_250
  loc_D2D32E: FLdRfVar var_2D8
  loc_D2D331: LitVarStr var_270, "BimeLiqu"
  loc_D2D336: PopAdLdVar
  loc_D2D337: FLdRfVar var_2C4
  loc_D2D33A: FLdPr Me
  loc_D2D33D: MemLdPr global_68
  loc_D2D340:  = Me.Fields
  loc_D2D345: FLdPr var_2C4
  loc_D2D348: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D34D: FLdPr var_2D8
  loc_D2D350:  = Me.Value
  loc_D2D355: FLdRfVar var_250
  loc_D2D358: ConcatVar var_280
  loc_D2D35C: LitVarStr var_2B0, " AND CodiTili = "
  loc_D2D361: ConcatVar var_290
  loc_D2D365: FLdRfVar var_2A0
  loc_D2D368: FLdRfVar var_360
  loc_D2D36B: LitVarStr var_2D4, "CodiTili"
  loc_D2D370: PopAdLdVar
  loc_D2D371: FLdRfVar var_34C
  loc_D2D374: FLdPr Me
  loc_D2D377: MemLdPr global_68
  loc_D2D37A:  = Me.Fields
  loc_D2D37F: FLdPr var_34C
  loc_D2D382: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D387: FLdPr var_360
  loc_D2D38A:  = Me.Value
  loc_D2D38F: FLdRfVar var_2A0
  loc_D2D392: ConcatVar var_2C0
  loc_D2D396: LitVarStr var_2F8, " AND NumeLiqu = "
  loc_D2D39B: ConcatVar var_2E8
  loc_D2D39F: FLdRfVar var_308
  loc_D2D3A2: FLdRfVar var_3B8
  loc_D2D3A5: LitVarStr var_338, "NumeLiqu"
  loc_D2D3AA: PopAdLdVar
  loc_D2D3AB: FLdRfVar var_3A4
  loc_D2D3AE: FLdPr Me
  loc_D2D3B1: MemLdPr global_68
  loc_D2D3B4:  = Me.Fields
  loc_D2D3B9: FLdPr var_3A4
  loc_D2D3BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D3C1: FLdPr var_3B8
  loc_D2D3C4:  = Me.Value
  loc_D2D3C9: FLdRfVar var_308
  loc_D2D3CC: ConcatVar var_318
  loc_D2D3D0: LitVarStr var_35C, ";"
  loc_D2D3D5: ConcatVar var_328
  loc_D2D3D9: CStrVarVal var_150
  loc_D2D3DD: Call EjecutarRsCls(from_stack_1v)
  loc_D2D3E2: FFree1Str var_150
  loc_D2D3E5: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = ""
  loc_D2D3FC: FFreeVar var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = ""
  loc_D2D41D: LitVarStr var_240, " UPDATE liqutasa SET ActuLita = 'Si', PeriBole = "
  loc_D2D422: LitVarI2 var_1B8, 0
  loc_D2D427: FLdRfVar iPeriodo
  loc_D2D42A: CVarRef
  loc_D2D42F: ILdRf var_A0
  loc_D2D432: LitI4 0
  loc_D2D437: NeI4
  loc_D2D438: CVarBoolI2 var_1A4
  loc_D2D43C: FLdRfVar var_1D8
  loc_D2D43F: ImpAdCallFPR4  = IIf(, , )
  loc_D2D444: FLdRfVar var_1D8
  loc_D2D447: ConcatVar var_1E8
  loc_D2D44B: LitVarStr var_260, ", NumeBole = "
  loc_D2D450: ConcatVar var_1F8
  loc_D2D454: ILdRf var_A0
  loc_D2D457: CVarI4
  loc_D2D45B: ConcatVar var_220
  loc_D2D45F: LitVarStr var_2B0, ", FeacLita = '"
  loc_D2D464: ConcatVar var_230
  loc_D2D468: LitI4 1
  loc_D2D46D: LitI4 1
  loc_D2D472: LitVarStr var_2F8, "yyyy-mm-dd"
  loc_D2D477: FStVarCopyObj var_250
  loc_D2D47A: FLdRfVar var_250
  loc_D2D47D: FLdRfVar arg_30
  loc_D2D480: CVarRef
  loc_D2D485: ImpAdCallI2 Format$(, )
  loc_D2D48A: CVarStr var_280
  loc_D2D48D: ConcatVar var_290
  loc_D2D491: LitVarStr var_338, "', OrdeLita = "
  loc_D2D496: ConcatVar var_2A0
  loc_D2D49A: ILdRf lOrden
  loc_D2D49D: CVarI4
  loc_D2D4A1: ConcatVar var_2C0
  loc_D2D4A5: LitVarStr var_390, " WHERE PeriLiqu = "
  loc_D2D4AA: ConcatVar var_2E8
  loc_D2D4AE: FLdRfVar var_308
  loc_D2D4B1: FLdRfVar var_1A8
  loc_D2D4B4: LitVarStr var_3B4, "PeriLiqu"
  loc_D2D4B9: PopAdLdVar
  loc_D2D4BA: FLdRfVar var_194
  loc_D2D4BD: FLdPr Me
  loc_D2D4C0: MemLdPr global_68
  loc_D2D4C3:  = Me.Fields
  loc_D2D4C8: FLdPr var_194
  loc_D2D4CB: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D4D0: FLdPr var_1A8
  loc_D2D4D3:  = Me.Value
  loc_D2D4D8: FLdRfVar var_308
  loc_D2D4DB: ConcatVar var_318
  loc_D2D4DF: LitVarStr var_3E8, " AND BimeLiqu = "
  loc_D2D4E4: ConcatVar var_328
  loc_D2D4E8: FLdRfVar var_348
  loc_D2D4EB: FLdRfVar var_210
  loc_D2D4EE: LitVarStr var_40C, "BimeLiqu"
  loc_D2D4F3: PopAdLdVar
  loc_D2D4F4: FLdRfVar var_1FC
  loc_D2D4F7: FLdPr Me
  loc_D2D4FA: MemLdPr global_68
  loc_D2D4FD:  = Me.Fields
  loc_D2D502: FLdPr var_1FC
  loc_D2D505: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D50A: FLdPr var_210
  loc_D2D50D:  = Me.Value
  loc_D2D512: FLdRfVar var_348
  loc_D2D515: ConcatVar var_370
  loc_D2D519: LitVarStr var_450, " AND CodiTili = "
  loc_D2D51E: ConcatVar var_380
  loc_D2D522: FLdRfVar var_3A0
  loc_D2D525: FLdRfVar var_2D8
  loc_D2D528: LitVarStr var_474, "CodiTili"
  loc_D2D52D: PopAdLdVar
  loc_D2D52E: FLdRfVar var_2C4
  loc_D2D531: FLdPr Me
  loc_D2D534: MemLdPr global_68
  loc_D2D537:  = Me.Fields
  loc_D2D53C: FLdPr var_2C4
  loc_D2D53F: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D544: FLdPr var_2D8
  loc_D2D547:  = Me.Value
  loc_D2D54C: FLdRfVar var_3A0
  loc_D2D54F: ConcatVar var_3C8
  loc_D2D553: LitVarStr var_4B8, " AND NumeLiqu = "
  loc_D2D558: ConcatVar var_3D8
  loc_D2D55C: FLdRfVar var_3F8
  loc_D2D55F: FLdRfVar var_360
  loc_D2D562: LitVarStr var_4D8, "NumeLiqu"
  loc_D2D567: PopAdLdVar
  loc_D2D568: FLdRfVar var_34C
  loc_D2D56B: FLdPr Me
  loc_D2D56E: MemLdPr global_68
  loc_D2D571:  = Me.Fields
  loc_D2D576: FLdPr var_34C
  loc_D2D579: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D57E: FLdPr var_360
  loc_D2D581:  = Me.Value
  loc_D2D586: FLdRfVar var_3F8
  loc_D2D589: ConcatVar var_420
  loc_D2D58D: LitVarStr var_4F8, " AND CodiInmu = "
  loc_D2D592: ConcatVar var_430
  loc_D2D596: FLdRfVar var_440
  loc_D2D599: FLdRfVar var_3B8
  loc_D2D59C: LitVarStr var_548, "CodiInmu"
  loc_D2D5A1: PopAdLdVar
  loc_D2D5A2: FLdRfVar var_3A4
  loc_D2D5A5: FLdPr Me
  loc_D2D5A8: MemLdPr global_68
  loc_D2D5AB:  = Me.Fields
  loc_D2D5B0: FLdPr var_3A4
  loc_D2D5B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D5B8: FLdPr var_3B8
  loc_D2D5BB:  = Me.Value
  loc_D2D5C0: FLdRfVar var_440
  loc_D2D5C3: ConcatVar var_460
  loc_D2D5C7: LitVarStr var_558, " AND CodiConc = '"
  loc_D2D5CC: ConcatVar var_488
  loc_D2D5D0: FLdRfVar var_498
  loc_D2D5D3: FLdRfVar var_410
  loc_D2D5D6: LitVarStr var_568, "CodiConc"
  loc_D2D5DB: PopAdLdVar
  loc_D2D5DC: FLdRfVar var_3FC
  loc_D2D5DF: FLdPr Me
  loc_D2D5E2: MemLdPr global_68
  loc_D2D5E5:  = Me.Fields
  loc_D2D5EA: FLdPr var_3FC
  loc_D2D5ED: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D5F2: FLdPr var_410
  loc_D2D5F5:  = Me.Value
  loc_D2D5FA: FLdRfVar var_498
  loc_D2D5FD: ConcatVar var_4A8
  loc_D2D601: LitVarStr var_578, "' AND TipoVenc = "
  loc_D2D606: ConcatVar var_4C8
  loc_D2D60A: FLdRfVar var_4E8
  loc_D2D60D: FLdRfVar var_478
  loc_D2D610: LitVarStr var_588, "TipoVenc"
  loc_D2D615: PopAdLdVar
  loc_D2D616: FLdRfVar var_464
  loc_D2D619: FLdPr Me
  loc_D2D61C: MemLdPr global_68
  loc_D2D61F:  = Me.Fields
  loc_D2D624: FLdPr var_464
  loc_D2D627: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D62C: FLdPr var_478
  loc_D2D62F:  = Me.Value
  loc_D2D634: FLdRfVar var_4E8
  loc_D2D637: ConcatVar var_508
  loc_D2D63B: LitVarStr var_5B8, ";"
  loc_D2D640: ConcatVar var_538
  loc_D2D644: CStrVarVal var_150
  loc_D2D648: Call EjecutarRsCls(from_stack_1v)
  loc_D2D64D: FFree1Str var_150
  loc_D2D650: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_2D8 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3B8 = "": var_3FC = "": var_410 = "": var_464 = ""
  loc_D2D66F: FFreeVar var_4C8 = "": var_4E8 = "": var_508 = "": var_538 = "": var_1A4 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_250 = "": var_230 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_2E8 = "": var_308 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_440 = "": var_460 = "": var_488 = "": var_498 = ""
  loc_D2D6B6: FLdPr Me
  loc_D2D6B9: MemLdPr global_68
  loc_D2D6BC: Me.MoveNext
  loc_D2D6C1: Branch loc_D2A0F0
  loc_D2D6C4: FLdRfVar var_1B8
  loc_D2D6C7: FLdRfVar var_1A8
  loc_D2D6CA: LitVarStr var_1A4, "TipoVenc"
  loc_D2D6CF: PopAdLdVar
  loc_D2D6D0: FLdRfVar var_194
  loc_D2D6D3: FLdPr Me
  loc_D2D6D6: MemLdPr global_64
  loc_D2D6D9:  = Me.Fields
  loc_D2D6DE: FLdPr var_194
  loc_D2D6E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D6E6: FLdPr var_1A8
  loc_D2D6E9:  = Me.Value
  loc_D2D6EE: FLdRfVar var_1B8
  loc_D2D6F1: FnCIntVar
  loc_D2D6F3: LitI2_Byte 2
  loc_D2D6F5: EqI2
  loc_D2D6F6: FFreeAd var_194 = ""
  loc_D2D6FD: FFree1Var var_1B8 = ""
  loc_D2D700: BranchF loc_D2DA50
  loc_D2D703: FLdFPR8 var_10C
  loc_D2D706: FLdFPR8 var_114
  loc_D2D709: SubR4
  loc_D2D70A: FLdFPR8 var_11C
  loc_D2D70D: SubR4
  loc_D2D70E: FLdFPR8 var_124
  loc_D2D711: SubR4
  loc_D2D712: FStFPR8 var_C0
  loc_D2D715: FLdFPR8 var_C0
  loc_D2D718: LitI2_Byte 0
  loc_D2D71A: CR8I2
  loc_D2D71B: GtR4
  loc_D2D71C: BranchF loc_D2DA50
  loc_D2D71F: FLdRfVar var_2D8
  loc_D2D722: LitVarStr var_2D4, "FeveLita"
  loc_D2D727: PopAdLdVar
  loc_D2D728: FLdRfVar var_2C4
  loc_D2D72B: FLdPr Me
  loc_D2D72E: MemLdPr global_64
  loc_D2D731:  = Me.Fields
  loc_D2D736: FLdPr var_2C4
  loc_D2D739: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D73E: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiTili, NumeLiqu, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, TotaBole, CodiUsua) "
  loc_D2D741: LitStr " VALUES ("
  loc_D2D744: ConcatStr
  loc_D2D745: FStStrNoPop var_150
  loc_D2D748: FLdI2 iPeriodo
  loc_D2D74B: CStrUI1
  loc_D2D74D: FStStrNoPop var_154
  loc_D2D750: ConcatStr
  loc_D2D751: FStStrNoPop var_158
  loc_D2D754: LitStr ","
  loc_D2D757: ConcatStr
  loc_D2D758: FStStrNoPop var_15C
  loc_D2D75B: ILdRf var_A0
  loc_D2D75E: CStrI4
  loc_D2D760: FStStrNoPop var_160
  loc_D2D763: ConcatStr
  loc_D2D764: FStStrNoPop var_164
  loc_D2D767: LitStr ",1,'"
  loc_D2D76A: ConcatStr
  loc_D2D76B: CVarStr var_1D8
  loc_D2D76E: FLdRfVar var_1B8
  loc_D2D771: FLdRfVar var_1A8
  loc_D2D774: LitVarStr var_1A4, "CodiInmu"
  loc_D2D779: PopAdLdVar
  loc_D2D77A: FLdRfVar var_194
  loc_D2D77D: FLdPr Me
  loc_D2D780: MemLdPr global_64
  loc_D2D783:  = Me.Fields
  loc_D2D788: FLdPr var_194
  loc_D2D78B: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D790: FLdPr var_1A8
  loc_D2D793:  = Me.Value
  loc_D2D798: FLdRfVar var_1B8
  loc_D2D79B: ConcatVar var_1E8
  loc_D2D79F: LitVarStr var_1C8, "','"
  loc_D2D7A4: ConcatVar var_1F8
  loc_D2D7A8: FLdRfVar var_220
  loc_D2D7AB: FLdRfVar var_210
  loc_D2D7AE: LitVarStr var_20C, "CucuPers"
  loc_D2D7B3: PopAdLdVar
  loc_D2D7B4: FLdRfVar var_1FC
  loc_D2D7B7: FLdPr Me
  loc_D2D7BA: MemLdPr global_64
  loc_D2D7BD:  = Me.Fields
  loc_D2D7C2: FLdPr var_1FC
  loc_D2D7C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D7CA: FLdPr var_210
  loc_D2D7CD:  = Me.Value
  loc_D2D7D2: FLdRfVar var_220
  loc_D2D7D5: ConcatVar var_230
  loc_D2D7D9: LitVarStr var_240, "','"
  loc_D2D7DE: ConcatVar var_250
  loc_D2D7E2: LitI4 1
  loc_D2D7E7: LitI4 1
  loc_D2D7EC: LitVarStr var_270, "yyyy-mm-dd"
  loc_D2D7F1: FStVarCopyObj var_280
  loc_D2D7F4: FLdRfVar var_280
  loc_D2D7F7: FLdRfVar arg_30
  loc_D2D7FA: CVarRef
  loc_D2D7FF: ImpAdCallI2 Format$(, )
  loc_D2D804: CVarStr var_290
  loc_D2D807: ConcatVar var_2A0
  loc_D2D80B: LitVarStr var_2B0, "','"
  loc_D2D810: ConcatVar var_2C0
  loc_D2D814: LitI4 1
  loc_D2D819: LitI4 1
  loc_D2D81E: LitVarStr var_2F8, "yyyy-mm-dd"
  loc_D2D823: FStVarCopyObj var_308
  loc_D2D826: FLdRfVar var_308
  loc_D2D829: FLdZeroAd var_2D8
  loc_D2D82C: CVarAd
  loc_D2D830: ImpAdCallI2 Format$(, )
  loc_D2D835: CVarStr var_318
  loc_D2D838: ConcatVar var_328
  loc_D2D83C: LitVarStr var_338, "',0,'Anual','Emitido',"
  loc_D2D841: ConcatVar var_348
  loc_D2D845: FLdRfVar var_370
  loc_D2D848: FLdRfVar var_360
  loc_D2D84B: LitVarStr var_35C, "CodiTili"
  loc_D2D850: PopAdLdVar
  loc_D2D851: FLdRfVar var_34C
  loc_D2D854: FLdPr Me
  loc_D2D857: MemLdPr global_64
  loc_D2D85A:  = Me.Fields
  loc_D2D85F: FLdPr var_34C
  loc_D2D862: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D867: FLdPr var_360
  loc_D2D86A:  = Me.Value
  loc_D2D86F: FLdRfVar var_370
  loc_D2D872: ConcatVar var_380
  loc_D2D876: LitVarStr var_390, ","
  loc_D2D87B: ConcatVar var_3A0
  loc_D2D87F: FLdRfVar var_3C8
  loc_D2D882: FLdRfVar var_3B8
  loc_D2D885: LitVarStr var_3B4, "NumeLiqu"
  loc_D2D88A: PopAdLdVar
  loc_D2D88B: FLdRfVar var_3A4
  loc_D2D88E: FLdPr Me
  loc_D2D891: MemLdPr global_64
  loc_D2D894:  = Me.Fields
  loc_D2D899: FLdPr var_3A4
  loc_D2D89C: from_stack_2 = Me.Item(from_stack_1)
  loc_D2D8A1: FLdPr var_3B8
  loc_D2D8A4:  = Me.Value
  loc_D2D8A9: FLdRfVar var_3C8
  loc_D2D8AC: ConcatVar var_3D8
  loc_D2D8B0: LitVarStr var_3E8, ",0,0,"
  loc_D2D8B5: ConcatVar var_3F8
  loc_D2D8B9: LitI4 0
  loc_D2D8BE: LitI4 -1
  loc_D2D8C3: LitI4 1
  loc_D2D8C8: LitStr "."
  loc_D2D8CB: LitStr ","
  loc_D2D8CE: FLdFPR8 var_10C
  loc_D2D8D1: CStrR8
  loc_D2D8D3: FStStrNoPop var_168
  loc_D2D8D6: ImpAdCallI2 Replace(, , , , , )
  loc_D2D8DB: CVarStr var_420
  loc_D2D8DE: ConcatVar var_430
  loc_D2D8E2: LitVarStr var_40C, ",0,"
  loc_D2D8E7: ConcatVar var_440
  loc_D2D8EB: LitI4 0
  loc_D2D8F0: LitI4 -1
  loc_D2D8F5: LitI4 1
  loc_D2D8FA: LitStr "."
  loc_D2D8FD: LitStr ","
  loc_D2D900: FLdFPR8 var_114
  loc_D2D903: CStrR8
  loc_D2D905: FStStrNoPop var_16C
  loc_D2D908: ImpAdCallI2 Replace(, , , , , )
  loc_D2D90D: CVarStr var_460
  loc_D2D910: ConcatVar var_488
  loc_D2D914: LitVarStr var_450, ",0,0,"
  loc_D2D919: ConcatVar var_498
  loc_D2D91D: LitI4 0
  loc_D2D922: LitI4 -1
  loc_D2D927: LitI4 1
  loc_D2D92C: LitStr "."
  loc_D2D92F: LitStr ","
  loc_D2D932: FLdFPR8 var_11C
  loc_D2D935: CStrR8
  loc_D2D937: FStStrNoPop var_170
  loc_D2D93A: ImpAdCallI2 Replace(, , , , , )
  loc_D2D93F: CVarStr var_4A8
  loc_D2D942: ConcatVar var_4C8
  loc_D2D946: LitVarStr var_474, ","
  loc_D2D94B: ConcatVar var_4E8
  loc_D2D94F: LitI4 0
  loc_D2D954: LitI4 -1
  loc_D2D959: LitI4 1
  loc_D2D95E: LitStr "."
  loc_D2D961: LitStr ","
  loc_D2D964: FLdFPR8 var_124
  loc_D2D967: CStrR8
  loc_D2D969: FStStrNoPop var_178
  loc_D2D96C: ImpAdCallI2 Replace(, , , , , )
  loc_D2D971: CVarStr var_508
  loc_D2D974: ConcatVar var_538
  loc_D2D978: LitVarStr var_4B8, ","
  loc_D2D97D: ConcatVar var_598
  loc_D2D981: LitI4 0
  loc_D2D986: LitI4 -1
  loc_D2D98B: LitI4 1
  loc_D2D990: LitStr "."
  loc_D2D993: LitStr ","
  loc_D2D996: FLdFPR8 var_C0
  loc_D2D999: CStrR8
  loc_D2D99B: FStStrNoPop var_17C
  loc_D2D99E: ImpAdCallI2 Replace(, , , , , )
  loc_D2D9A3: CVarStr var_5A8
  loc_D2D9A6: ConcatVar var_5C8
  loc_D2D9AA: LitVarStr var_4D8, ",'"
  loc_D2D9AF: ConcatVar var_5E8
  loc_D2D9B3: ImpAdLdI4 MemVar_D9302C
  loc_D2D9B6: CVarStr var_4F8
  loc_D2D9B9: ConcatVar var_5F8
  loc_D2D9BD: LitVarStr var_548, "');"
  loc_D2D9C2: ConcatVar var_618
  loc_D2D9C6: CStrVarVal var_180
  loc_D2D9CA: Call EjecutarRsCls(from_stack_1v)
  loc_D2D9CF: FFreeStr var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_178 = "": var_17C = ""
  loc_D2D9EA: FFreeAd var_194 = "": var_1A8 = "": var_1FC = "": var_210 = "": var_2C4 = "": var_34C = "": var_360 = "": var_3A4 = ""
  loc_D2D9FF: FFreeVar var_4E8 = "": var_508 = "": var_538 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5E8 = "": var_5F8 = "": var_618 = "": var_1D8 = "": var_1B8 = "": var_1E8 = "": var_1F8 = "": var_220 = "": var_230 = "": var_280 = "": var_250 = "": var_290 = "": var_2A0 = "": var_2E8 = "": var_308 = "": var_2C0 = "": var_318 = "": var_328 = "": var_348 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3C8 = "": var_3D8 = "": var_3F8 = "": var_420 = "": var_430 = "": var_440 = "": var_460 = "": var_488 = "": var_498 = "": var_4A8 = ""
  loc_D2DA50: FLdPr Me
  loc_D2DA53: MemLdPr global_64
  loc_D2DA56: Me.MoveNext
  loc_D2DA5B: Branch loc_D29ADE
  loc_D2DA5E: LitStr "COMMIT;"
  loc_D2DA61: Call EjecutarRsCls(from_stack_1v)
  loc_D2DA66: ExitProcCbHresult
  loc_D2DA6C: LitStr "rollback"
  loc_D2DA6F: Call EjecutarRsCls(from_stack_1v)
  loc_D2DA74: LitVarStr var_1C8, " "
  loc_D2DA79: FLdRfVar var_1B8
  loc_D2DA7C: FLdRfVar var_1A8
  loc_D2DA7F: LitVarStr var_1A4, "CodiInmu"
  loc_D2DA84: PopAdLdVar
  loc_D2DA85: FLdRfVar var_194
  loc_D2DA88: FLdPr Me
  loc_D2DA8B: MemLdPr global_64
  loc_D2DA8E:  = Me.Fields
  loc_D2DA93: FLdPr var_194
  loc_D2DA96: from_stack_2 = Me.Item(from_stack_1)
  loc_D2DA9B: FLdPr var_1A8
  loc_D2DA9E:  = Me.Value
  loc_D2DAA3: FLdRfVar var_1B8
  loc_D2DAA6: ConcatVar var_1D8
  loc_D2DAAA: CStrVarTmp
  loc_D2DAAB: FStStr var_88
  loc_D2DAAE: FFreeAd var_194 = ""
  loc_D2DAB5: FFreeVar var_1B8 = ""
  loc_D2DABC: ExitProcCbHresult
End Function

Public Function ImportedelCalculodeLiquidacion(CodiInmu, daAhora, iCodiRyB, lAvalInmu, doSupeInmu, doGastTili) 'C14DB4
  'Data Table: 4BE97C
  loc_C14440: ZeroRetValVar
  loc_C14442: LitI2_Byte 0
  loc_C14444: CR8I2
  loc_C14445: FStFPR8 var_B8
  loc_C14448: LitI2_Byte 0
  loc_C1444A: CR8I2
  loc_C1444B: FStFPR8 var_C0
  loc_C1444E: LitI2_Byte 0
  loc_C14450: CR8I2
  loc_C14451: FStFPR8 var_C8
  loc_C14454: FLdI2 lAvalInmu
  loc_C14457: LitI2_Byte &H23
  loc_C14459: EqI2
  loc_C1445A: BranchF loc_C1446D
  loc_C1445D: LitI2 182
  loc_C14460: CR8I2
  loc_C14461: FStFPR8 var_C0
  loc_C14464: LitI2_Byte &H12
  loc_C14466: CR8I2
  loc_C14467: FStFPR8 var_C8
  loc_C1446A: Branch loc_C14766
  loc_C1446D: FLdI2 lAvalInmu
  loc_C14470: LitI2_Byte &H28
  loc_C14472: EqI2
  loc_C14473: BranchF loc_C14486
  loc_C14476: LitI2 180
  loc_C14479: CR8I2
  loc_C1447A: FStFPR8 var_C0
  loc_C1447D: LitI2_Byte &H14
  loc_C1447F: CR8I2
  loc_C14480: FStFPR8 var_C8
  loc_C14483: Branch loc_C14766
  loc_C14486: FLdI2 lAvalInmu
  loc_C14489: LitI2_Byte &H2D
  loc_C1448B: EqI2
  loc_C1448C: BranchF loc_C1449F
  loc_C1448F: LitI2 315
  loc_C14492: CR8I2
  loc_C14493: FStFPR8 var_C0
  loc_C14496: LitI2_Byte &H23
  loc_C14498: CR8I2
  loc_C14499: FStFPR8 var_C8
  loc_C1449C: Branch loc_C14766
  loc_C1449F: FLdI2 lAvalInmu
  loc_C144A2: LitI2_Byte &H2E
  loc_C144A4: EqI2
  loc_C144A5: BranchF loc_C144B8
  loc_C144A8: LitI2 450
  loc_C144AB: CR8I2
  loc_C144AC: FStFPR8 var_C0
  loc_C144AF: LitI2_Byte &H32
  loc_C144B1: CR8I2
  loc_C144B2: FStFPR8 var_C8
  loc_C144B5: Branch loc_C14766
  loc_C144B8: FLdI2 lAvalInmu
  loc_C144BB: LitI2_Byte &H32
  loc_C144BD: EqI2
  loc_C144BE: BranchF loc_C144D0
  loc_C144C1: LitI2_Byte &H5A
  loc_C144C3: CR8I2
  loc_C144C4: FStFPR8 var_C0
  loc_C144C7: LitI2_Byte &HA
  loc_C144C9: CR8I2
  loc_C144CA: FStFPR8 var_C8
  loc_C144CD: Branch loc_C14766
  loc_C144D0: FLdI2 lAvalInmu
  loc_C144D3: LitI2_Byte &H3C
  loc_C144D5: EqI2
  loc_C144D6: BranchF loc_C144E9
  loc_C144D9: LitI2 225
  loc_C144DC: CR8I2
  loc_C144DD: FStFPR8 var_C0
  loc_C144E0: LitI2_Byte &H19
  loc_C144E2: CR8I2
  loc_C144E3: FStFPR8 var_C8
  loc_C144E6: Branch loc_C14766
  loc_C144E9: FLdI2 lAvalInmu
  loc_C144EC: LitI2_Byte &H50
  loc_C144EE: EqI2
  loc_C144EF: BranchF loc_C14501
  loc_C144F2: LitI2_Byte &H5A
  loc_C144F4: CR8I2
  loc_C144F5: FStFPR8 var_C0
  loc_C144F8: LitI2_Byte &HA
  loc_C144FA: CR8I2
  loc_C144FB: FStFPR8 var_C8
  loc_C144FE: Branch loc_C14766
  loc_C14501: FLdI2 lAvalInmu
  loc_C14504: LitI2_Byte &H5E
  loc_C14506: EqI2
  loc_C14507: BranchF loc_C1451C
  loc_C1450A: LitI4 &H88B8
  loc_C1450F: CR8I4
  loc_C14510: FStFPR8 var_C0
  loc_C14513: LitI2_Byte 0
  loc_C14515: CR8I2
  loc_C14516: FStFPR8 var_C8
  loc_C14519: Branch loc_C14766
  loc_C1451C: FLdI2 lAvalInmu
  loc_C1451F: LitI2_Byte &H5F
  loc_C14521: EqI2
  loc_C14522: BranchF loc_C14534
  loc_C14525: LitI2_Byte &H5A
  loc_C14527: CR8I2
  loc_C14528: FStFPR8 var_C0
  loc_C1452B: LitI2_Byte &HA
  loc_C1452D: CR8I2
  loc_C1452E: FStFPR8 var_C8
  loc_C14531: Branch loc_C14766
  loc_C14534: FLdI2 lAvalInmu
  loc_C14537: LitI2_Byte &H60
  loc_C14539: EqI2
  loc_C1453A: BranchF loc_C1454F
  loc_C1453D: LitI4 &H11170
  loc_C14542: CR8I4
  loc_C14543: FStFPR8 var_C0
  loc_C14546: LitI2_Byte 0
  loc_C14548: CR8I2
  loc_C14549: FStFPR8 var_C8
  loc_C1454C: Branch loc_C14766
  loc_C1454F: FLdI2 lAvalInmu
  loc_C14552: LitI2_Byte &H63
  loc_C14554: EqI2
  loc_C14555: BranchF loc_C14567
  loc_C14558: LitI2_Byte &H5A
  loc_C1455A: CR8I2
  loc_C1455B: FStFPR8 var_C0
  loc_C1455E: LitI2_Byte &HA
  loc_C14560: CR8I2
  loc_C14561: FStFPR8 var_C8
  loc_C14564: Branch loc_C14766
  loc_C14567: LitStr "SELECT CodiRyB, DesdeAvin, HastaAvin, ImpoAvinTasa, ImpoAvinInfa, AdicTasa, AdicInfa"
  loc_C1456A: LitStr " FROM avalinmu "
  loc_C1456D: ConcatStr
  loc_C1456E: FStStrNoPop var_D8
  loc_C14571: LitStr " WHERE CodiRyB = "
  loc_C14574: ConcatStr
  loc_C14575: FStStrNoPop var_DC
  loc_C14578: FLdI2 lAvalInmu
  loc_C1457B: CStrUI1
  loc_C1457D: FStStrNoPop var_E0
  loc_C14580: ConcatStr
  loc_C14581: FStStrNoPop var_E4
  loc_C14584: LitStr " AND DesdeAvin <= "
  loc_C14587: ConcatStr
  loc_C14588: FStStrNoPop var_E8
  loc_C1458B: ILdRf doSupeInmu
  loc_C1458E: CStrI4
  loc_C14590: FStStrNoPop var_EC
  loc_C14593: ConcatStr
  loc_C14594: FStStrNoPop var_F0
  loc_C14597: LitStr " AND HastaAvin >= "
  loc_C1459A: ConcatStr
  loc_C1459B: FStStrNoPop var_F4
  loc_C1459E: ILdRf doSupeInmu
  loc_C145A1: CStrI4
  loc_C145A3: FStStrNoPop var_F8
  loc_C145A6: ConcatStr
  loc_C145A7: FStStrNoPop var_FC
  loc_C145AA: Call EjecutarRsCls2(from_stack_1v)
  loc_C145AF: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C145C6: FLdRfVar var_100
  loc_C145C9: FLdPr Me
  loc_C145CC: MemLdPr global_64
  loc_C145CF:  = Me.RecordCount
  loc_C145D4: ILdRf var_100
  loc_C145D7: LitI4 0
  loc_C145DC: GtI4
  loc_C145DD: BranchF loc_C14766
  loc_C145E0: FLdPr Me
  loc_C145E3: MemLdPr global_64
  loc_C145E6: Me.MoveFirst
  loc_C145EB: FLdRfVar var_128
  loc_C145EE: FLdRfVar var_118
  loc_C145F1: LitVarStr var_114, "ImpoAvinTasa"
  loc_C145F6: PopAdLdVar
  loc_C145F7: FLdRfVar var_104
  loc_C145FA: FLdPr Me
  loc_C145FD: MemLdPr global_64
  loc_C14600:  = Me.Fields
  loc_C14605: FLdPr var_104
  loc_C14608: from_stack_2 = Me.Item(from_stack_1)
  loc_C1460D: FLdPr var_118
  loc_C14610:  = Me.Value
  loc_C14615: FLdRfVar var_128
  loc_C14618: FnCDblVar
  loc_C1461A: FStFPR8 var_C0
  loc_C1461D: FFreeAd var_104 = ""
  loc_C14624: FFree1Var var_128 = ""
  loc_C14627: FLdRfVar var_128
  loc_C1462A: FLdRfVar var_118
  loc_C1462D: LitVarStr var_114, "ImpoAvinInfa"
  loc_C14632: PopAdLdVar
  loc_C14633: FLdRfVar var_104
  loc_C14636: FLdPr Me
  loc_C14639: MemLdPr global_64
  loc_C1463C:  = Me.Fields
  loc_C14641: FLdPr var_104
  loc_C14644: from_stack_2 = Me.Item(from_stack_1)
  loc_C14649: FLdPr var_118
  loc_C1464C:  = Me.Value
  loc_C14651: FLdRfVar var_128
  loc_C14654: FnCDblVar
  loc_C14656: FStFPR8 var_C8
  loc_C14659: FFreeAd var_104 = ""
  loc_C14660: FFree1Var var_128 = ""
  loc_C14663: FLdRfVar var_128
  loc_C14666: FLdRfVar var_118
  loc_C14669: LitVarStr var_114, "AdicTasa"
  loc_C1466E: PopAdLdVar
  loc_C1466F: FLdRfVar var_104
  loc_C14672: FLdPr Me
  loc_C14675: MemLdPr global_64
  loc_C14678:  = Me.Fields
  loc_C1467D: FLdPr var_104
  loc_C14680: from_stack_2 = Me.Item(from_stack_1)
  loc_C14685: FLdPr var_118
  loc_C14688:  = Me.Value
  loc_C1468D: FLdRfVar var_128
  loc_C14690: FnCDblVar
  loc_C14692: LitI2_Byte 0
  loc_C14694: CR8I2
  loc_C14695: GtR4
  loc_C14696: FFreeAd var_104 = ""
  loc_C1469D: FFree1Var var_128 = ""
  loc_C146A0: BranchF loc_C14766
  loc_C146A3: ILdRf doSupeInmu
  loc_C146A6: LitI4 &H30D40
  loc_C146AB: SubI4
  loc_C146AC: CR8I4
  loc_C146AD: LitI4 &H186A0
  loc_C146B2: CR8I4
  loc_C146B3: DivR8
  loc_C146B4: FnFixR8
  loc_C146B6: LitI2_Byte 1
  loc_C146B8: CR8I2
  loc_C146B9: AddR8
  loc_C146BA: CI2R8
  loc_C146BB: FStI2 var_CA
  loc_C146BE: FLdFPR8 var_C0
  loc_C146C1: CVarR8
  loc_C146C5: FLdI2 var_CA
  loc_C146C8: CVarI2 var_138
  loc_C146CB: FLdRfVar var_128
  loc_C146CE: FLdRfVar var_118
  loc_C146D1: LitVarStr var_114, "AdicTasa"
  loc_C146D6: PopAdLdVar
  loc_C146D7: FLdRfVar var_104
  loc_C146DA: FLdPr Me
  loc_C146DD: MemLdPr global_64
  loc_C146E0:  = Me.Fields
  loc_C146E5: FLdPr var_104
  loc_C146E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C146ED: FLdPr var_118
  loc_C146F0:  = Me.Value
  loc_C146F5: FLdRfVar var_128
  loc_C146F8: MulVar var_148
  loc_C146FC: AddVar var_168
  loc_C14700: CR4Var
  loc_C14701: FStFPR8 var_C0
  loc_C14704: FFreeAd var_104 = ""
  loc_C1470B: FFreeVar var_128 = ""
  loc_C14712: FLdFPR8 var_C8
  loc_C14715: CVarR8
  loc_C14719: FLdI2 var_CA
  loc_C1471C: CVarI2 var_138
  loc_C1471F: FLdRfVar var_128
  loc_C14722: FLdRfVar var_118
  loc_C14725: LitVarStr var_114, "AdicInfa"
  loc_C1472A: PopAdLdVar
  loc_C1472B: FLdRfVar var_104
  loc_C1472E: FLdPr Me
  loc_C14731: MemLdPr global_64
  loc_C14734:  = Me.Fields
  loc_C14739: FLdPr var_104
  loc_C1473C: from_stack_2 = Me.Item(from_stack_1)
  loc_C14741: FLdPr var_118
  loc_C14744:  = Me.Value
  loc_C14749: FLdRfVar var_128
  loc_C1474C: MulVar var_148
  loc_C14750: AddVar var_168
  loc_C14754: CR4Var
  loc_C14755: FStFPR8 var_C8
  loc_C14758: FFreeAd var_104 = ""
  loc_C1475F: FFreeVar var_128 = ""
  loc_C14766: FLdFPR8 var_C0
  loc_C14769: LitI2_Byte 0
  loc_C1476B: CR8I2
  loc_C1476C: GtR4
  loc_C1476D: FLdFPR8 var_C8
  loc_C14770: LitI2_Byte 0
  loc_C14772: CR8I2
  loc_C14773: GtR4
  loc_C14774: OrI4
  loc_C14775: BranchF loc_C14A27
  loc_C14778: FLdI2 lAvalInmu
  loc_C1477B: LitI2_Byte &HB
  loc_C1477D: EqI2
  loc_C1477E: BranchF loc_C14795
  loc_C14781: FLdFPR8 var_C0
  loc_C14784: LitI2_Byte 2
  loc_C14786: CR8I2
  loc_C14787: MulR8
  loc_C14788: FStFPR8 var_C0
  loc_C1478B: FLdFPR8 var_C8
  loc_C1478E: LitI2_Byte 2
  loc_C14790: CR8I2
  loc_C14791: MulR8
  loc_C14792: FStFPR8 var_C8
  loc_C14795: FLdI2 lAvalInmu
  loc_C14798: LitI2_Byte &H15
  loc_C1479A: EqI2
  loc_C1479B: FLdI2 lAvalInmu
  loc_C1479E: LitI2_Byte &H19
  loc_C147A0: EqI2
  loc_C147A1: OrI4
  loc_C147A2: BranchF loc_C149AC
  loc_C147A5: FLdFPR8 doGastTili
  loc_C147A8: LitI2_Byte 0
  loc_C147AA: CR8I2
  loc_C147AB: GeR8
  loc_C147AC: FLdFPR8 doGastTili
  loc_C147AF: LitI2 300
  loc_C147B2: CR8I2
  loc_C147B3: LeR8
  loc_C147B4: AndI4
  loc_C147B5: BranchF loc_C14829
  loc_C147B8: FLdFPR8 var_C0
  loc_C147BB: CVarR8
  loc_C147BF: LitI4 2
  loc_C147C4: FLdFPR8 var_C0
  loc_C147C7: LitI2_Byte &HF
  loc_C147C9: CR8I2
  loc_C147CA: MulR8
  loc_C147CB: LitI2_Byte &H64
  loc_C147CD: CR8I2
  loc_C147CE: DivR8
  loc_C147CF: CVarR8
  loc_C147D3: FLdRfVar var_148
  loc_C147D6: ImpAdCallFPR4  = Round(, )
  loc_C147DB: FLdRfVar var_148
  loc_C147DE: AddVar var_168
  loc_C147E2: CR4Var
  loc_C147E3: FStFPR8 var_C0
  loc_C147E6: FFreeVar var_128 = "": var_148 = ""
  loc_C147EF: FLdFPR8 var_C8
  loc_C147F2: CVarR8
  loc_C147F6: LitI4 2
  loc_C147FB: FLdFPR8 var_C8
  loc_C147FE: LitI2_Byte &HF
  loc_C14800: CR8I2
  loc_C14801: MulR8
  loc_C14802: LitI2_Byte &H64
  loc_C14804: CR8I2
  loc_C14805: DivR8
  loc_C14806: CVarR8
  loc_C1480A: FLdRfVar var_148
  loc_C1480D: ImpAdCallFPR4  = Round(, )
  loc_C14812: FLdRfVar var_148
  loc_C14815: AddVar var_168
  loc_C14819: CR4Var
  loc_C1481A: FStFPR8 var_C8
  loc_C1481D: FFreeVar var_128 = "": var_148 = ""
  loc_C14826: Branch loc_C149AC
  loc_C14829: FLdFPR8 doGastTili
  loc_C1482C: LitI2 301
  loc_C1482F: CR8I2
  loc_C14830: GeR8
  loc_C14831: FLdFPR8 doGastTili
  loc_C14834: LitI2 600
  loc_C14837: CR8I2
  loc_C14838: LeR8
  loc_C14839: AndI4
  loc_C1483A: BranchF loc_C148AE
  loc_C1483D: FLdFPR8 var_C0
  loc_C14840: CVarR8
  loc_C14844: LitI4 2
  loc_C14849: FLdFPR8 var_C0
  loc_C1484C: LitI2_Byte &H14
  loc_C1484E: CR8I2
  loc_C1484F: MulR8
  loc_C14850: LitI2_Byte &H64
  loc_C14852: CR8I2
  loc_C14853: DivR8
  loc_C14854: CVarR8
  loc_C14858: FLdRfVar var_148
  loc_C1485B: ImpAdCallFPR4  = Round(, )
  loc_C14860: FLdRfVar var_148
  loc_C14863: AddVar var_168
  loc_C14867: CR4Var
  loc_C14868: FStFPR8 var_C0
  loc_C1486B: FFreeVar var_128 = "": var_148 = ""
  loc_C14874: FLdFPR8 var_C8
  loc_C14877: CVarR8
  loc_C1487B: LitI4 2
  loc_C14880: FLdFPR8 var_C8
  loc_C14883: LitI2_Byte &H14
  loc_C14885: CR8I2
  loc_C14886: MulR8
  loc_C14887: LitI2_Byte &H64
  loc_C14889: CR8I2
  loc_C1488A: DivR8
  loc_C1488B: CVarR8
  loc_C1488F: FLdRfVar var_148
  loc_C14892: ImpAdCallFPR4  = Round(, )
  loc_C14897: FLdRfVar var_148
  loc_C1489A: AddVar var_168
  loc_C1489E: CR4Var
  loc_C1489F: FStFPR8 var_C8
  loc_C148A2: FFreeVar var_128 = "": var_148 = ""
  loc_C148AB: Branch loc_C149AC
  loc_C148AE: FLdFPR8 doGastTili
  loc_C148B1: LitI2 601
  loc_C148B4: CR8I2
  loc_C148B5: GeR8
  loc_C148B6: FLdFPR8 doGastTili
  loc_C148B9: LitI2 1000
  loc_C148BC: CR8I2
  loc_C148BD: LeR8
  loc_C148BE: AndI4
  loc_C148BF: BranchF loc_C14933
  loc_C148C2: FLdFPR8 var_C0
  loc_C148C5: CVarR8
  loc_C148C9: LitI4 2
  loc_C148CE: FLdFPR8 var_C0
  loc_C148D1: LitI2_Byte &H19
  loc_C148D3: CR8I2
  loc_C148D4: MulR8
  loc_C148D5: LitI2_Byte &H64
  loc_C148D7: CR8I2
  loc_C148D8: DivR8
  loc_C148D9: CVarR8
  loc_C148DD: FLdRfVar var_148
  loc_C148E0: ImpAdCallFPR4  = Round(, )
  loc_C148E5: FLdRfVar var_148
  loc_C148E8: AddVar var_168
  loc_C148EC: CR4Var
  loc_C148ED: FStFPR8 var_C0
  loc_C148F0: FFreeVar var_128 = "": var_148 = ""
  loc_C148F9: FLdFPR8 var_C8
  loc_C148FC: CVarR8
  loc_C14900: LitI4 2
  loc_C14905: FLdFPR8 var_C8
  loc_C14908: LitI2_Byte &H19
  loc_C1490A: CR8I2
  loc_C1490B: MulR8
  loc_C1490C: LitI2_Byte &H64
  loc_C1490E: CR8I2
  loc_C1490F: DivR8
  loc_C14910: CVarR8
  loc_C14914: FLdRfVar var_148
  loc_C14917: ImpAdCallFPR4  = Round(, )
  loc_C1491C: FLdRfVar var_148
  loc_C1491F: AddVar var_168
  loc_C14923: CR4Var
  loc_C14924: FStFPR8 var_C8
  loc_C14927: FFreeVar var_128 = "": var_148 = ""
  loc_C14930: Branch loc_C149AC
  loc_C14933: FLdFPR8 doGastTili
  loc_C14936: LitI2 1000
  loc_C14939: CR8I2
  loc_C1493A: GeR8
  loc_C1493B: BranchF loc_C149AC
  loc_C1493E: FLdFPR8 var_C0
  loc_C14941: CVarR8
  loc_C14945: LitI4 2
  loc_C1494A: FLdFPR8 var_C0
  loc_C1494D: LitI2_Byte &H1E
  loc_C1494F: CR8I2
  loc_C14950: MulR8
  loc_C14951: LitI2_Byte &H64
  loc_C14953: CR8I2
  loc_C14954: DivR8
  loc_C14955: CVarR8
  loc_C14959: FLdRfVar var_148
  loc_C1495C: ImpAdCallFPR4  = Round(, )
  loc_C14961: FLdRfVar var_148
  loc_C14964: AddVar var_168
  loc_C14968: CR4Var
  loc_C14969: FStFPR8 var_C0
  loc_C1496C: FFreeVar var_128 = "": var_148 = ""
  loc_C14975: FLdFPR8 var_C8
  loc_C14978: CVarR8
  loc_C1497C: LitI4 2
  loc_C14981: FLdFPR8 var_C8
  loc_C14984: LitI2_Byte &H1E
  loc_C14986: CR8I2
  loc_C14987: MulR8
  loc_C14988: LitI2_Byte &H64
  loc_C1498A: CR8I2
  loc_C1498B: DivR8
  loc_C1498C: CVarR8
  loc_C14990: FLdRfVar var_148
  loc_C14993: ImpAdCallFPR4  = Round(, )
  loc_C14998: FLdRfVar var_148
  loc_C1499B: AddVar var_168
  loc_C1499F: CR4Var
  loc_C149A0: FStFPR8 var_C8
  loc_C149A3: FFreeVar var_128 = "": var_148 = ""
  loc_C149AC: LitI4 2
  loc_C149B1: FLdFPR8 var_C0
  loc_C149B4: ImpAdLdFPR8 MemVar_D93084
  loc_C149B7: MulR8
  loc_C149B8: CVarR8
  loc_C149BC: FLdRfVar var_148
  loc_C149BF: ImpAdCallFPR4  = Round(, )
  loc_C149C4: FLdRfVar var_148
  loc_C149C7: CStrVarTmp
  loc_C149C8: FStStrNoPop var_D8
  loc_C149CB: LitI4 1
  loc_C149D0: FLdRfVar var_AC
  loc_C149D3: Ary1StStrCopy
  loc_C149D4: FFree1Str var_D8
  loc_C149D7: FFreeVar var_128 = ""
  loc_C149DE: LitI4 2
  loc_C149E3: FLdFPR8 var_C8
  loc_C149E6: ImpAdLdFPR8 MemVar_D93084
  loc_C149E9: MulR8
  loc_C149EA: CVarR8
  loc_C149EE: FLdRfVar var_148
  loc_C149F1: ImpAdCallFPR4  = Round(, )
  loc_C149F6: FLdRfVar var_148
  loc_C149F9: CStrVarTmp
  loc_C149FA: FStStrNoPop var_D8
  loc_C149FD: LitI4 2
  loc_C14A02: FLdRfVar var_AC
  loc_C14A05: Ary1StStrCopy
  loc_C14A06: FFree1Str var_D8
  loc_C14A09: FFreeVar var_128 = ""
  loc_C14A10: FLdFPR8 arg_28
  loc_C14A13: CStrR8
  loc_C14A15: FStStrNoPop var_D8
  loc_C14A18: LitI4 3
  loc_C14A1D: FLdRfVar var_AC
  loc_C14A20: Ary1StStrCopy
  loc_C14A21: FFree1Str var_D8
  loc_C14A24: Branch loc_C14A60
  loc_C14A27: LitI2_Byte 0
  loc_C14A29: CStrUI1
  loc_C14A2B: FStStrNoPop var_D8
  loc_C14A2E: LitI4 1
  loc_C14A33: FLdRfVar var_AC
  loc_C14A36: Ary1StStrCopy
  loc_C14A37: FFree1Str var_D8
  loc_C14A3A: LitI2_Byte 0
  loc_C14A3C: CStrUI1
  loc_C14A3E: FStStrNoPop var_D8
  loc_C14A41: LitI4 2
  loc_C14A46: FLdRfVar var_AC
  loc_C14A49: Ary1StStrCopy
  loc_C14A4A: FFree1Str var_D8
  loc_C14A4D: LitI2_Byte 0
  loc_C14A4F: CStrUI1
  loc_C14A51: FStStrNoPop var_D8
  loc_C14A54: LitI4 3
  loc_C14A59: FLdRfVar var_AC
  loc_C14A5C: Ary1StStrCopy
  loc_C14A5D: FFree1Str var_D8
  loc_C14A60: LitI2_Byte 0
  loc_C14A62: CR8I2
  loc_C14A63: FStFPR8 var_D4
  loc_C14A66: LitStr " SELECT servinmu.CodiSeca, ROUND(servcata.ImpoSeca * "
  loc_C14A69: LitI4 0
  loc_C14A6E: LitI4 -1
  loc_C14A73: LitI4 1
  loc_C14A78: LitStr "."
  loc_C14A7B: LitStr ","
  loc_C14A7E: ImpAdLdFPR8 MemVar_D93084
  loc_C14A81: CStrR8
  loc_C14A83: FStStrNoPop var_D8
  loc_C14A86: ImpAdCallI2 Replace(, , , , , )
  loc_C14A8B: FStStrNoPop var_DC
  loc_C14A8E: ConcatStr
  loc_C14A8F: FStStrNoPop var_E0
  loc_C14A92: LitStr ",2) Importe, servcata.ImpoSeca PorcSeca "
  loc_C14A95: ConcatStr
  loc_C14A96: FStStrNoPop var_E4
  loc_C14A99: LitStr " FROM  servinmu"
  loc_C14A9C: ConcatStr
  loc_C14A9D: FStStrNoPop var_E8
  loc_C14AA0: LitStr " INNER JOIN servcata ON servcata.PeriOrde = "
  loc_C14AA3: ConcatStr
  loc_C14AA4: FStStrNoPop var_EC
  loc_C14AA7: ImpAdLdI2 MemVar_D93036
  loc_C14AAA: CStrUI1
  loc_C14AAC: FStStrNoPop var_F0
  loc_C14AAF: ConcatStr
  loc_C14AB0: FStStrNoPop var_F4
  loc_C14AB3: LitStr " AND servinmu.CodiSeca = servcata.CodiSeca "
  loc_C14AB6: ConcatStr
  loc_C14AB7: FStStrNoPop var_F8
  loc_C14ABA: LitStr " WHERE servinmu.CodiInmu = "
  loc_C14ABD: ConcatStr
  loc_C14ABE: FStStrNoPop var_FC
  loc_C14AC1: ILdRf CodiInmu
  loc_C14AC4: CStrI4
  loc_C14AC6: FStStrNoPop var_16C
  loc_C14AC9: ConcatStr
  loc_C14ACA: FStStrNoPop var_170
  loc_C14ACD: LitStr " AND FedeSein <= '"
  loc_C14AD0: ConcatStr
  loc_C14AD1: FStStrNoPop var_174
  loc_C14AD4: LitI4 1
  loc_C14AD9: LitI4 1
  loc_C14ADE: LitVarStr var_138, "yyyy-mm-dd"
  loc_C14AE3: FStVarCopyObj var_128
  loc_C14AE6: FLdRfVar var_128
  loc_C14AE9: FLdRfVar daAhora
  loc_C14AEC: CVarRef
  loc_C14AF1: ImpAdCallI2 Format$(, )
  loc_C14AF6: FStStrNoPop var_178
  loc_C14AF9: ConcatStr
  loc_C14AFA: FStStrNoPop var_17C
  loc_C14AFD: LitStr "'"
  loc_C14B00: ConcatStr
  loc_C14B01: FStStrNoPop var_180
  loc_C14B04: LitStr " AND (FehaSein > '"
  loc_C14B07: ConcatStr
  loc_C14B08: FStStrNoPop var_194
  loc_C14B0B: LitI4 1
  loc_C14B10: LitI4 1
  loc_C14B15: LitVarStr var_190, "yyyy-mm-dd"
  loc_C14B1A: FStVarCopyObj var_148
  loc_C14B1D: FLdRfVar var_148
  loc_C14B20: FLdRfVar daAhora
  loc_C14B23: CVarRef
  loc_C14B28: ImpAdCallI2 Format$(, )
  loc_C14B2D: FStStrNoPop var_198
  loc_C14B30: ConcatStr
  loc_C14B31: FStStrNoPop var_19C
  loc_C14B34: LitStr "'"
  loc_C14B37: ConcatStr
  loc_C14B38: FStStrNoPop var_1A0
  loc_C14B3B: LitStr " OR FehaSein IS NULL) "
  loc_C14B3E: ConcatStr
  loc_C14B3F: FStStrNoPop var_1A4
  loc_C14B42: LitStr " ORDER BY servinmu.NumeFrin, servinmu.CodiSeca"
  loc_C14B45: ConcatStr
  loc_C14B46: FStStrNoPop var_1A8
  loc_C14B49: Call EjecutarRsCls2(from_stack_1v)
  loc_C14B4E: FFreeStr var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_C14B7D: FFreeVar var_128 = ""
  loc_C14B84: FLdRfVar var_100
  loc_C14B87: FLdPr Me
  loc_C14B8A: MemLdPr global_64
  loc_C14B8D:  = Me.RecordCount
  loc_C14B92: ILdRf var_100
  loc_C14B95: LitI4 0
  loc_C14B9A: GtI4
  loc_C14B9B: BranchF loc_C14D8E
  loc_C14B9E: FLdPr Me
  loc_C14BA1: MemLdPr global_64
  loc_C14BA4: Me.MoveFirst
  loc_C14BA9: FLdRfVar var_1AA
  loc_C14BAC: FLdPr Me
  loc_C14BAF: MemLdPr global_64
  loc_C14BB2:  = Me.EOF
  loc_C14BB7: FLdI2 var_1AA
  loc_C14BBA: NotI4
  loc_C14BBB: BranchF loc_C14D8E
  loc_C14BBE: FLdRfVar var_128
  loc_C14BC1: FLdRfVar var_118
  loc_C14BC4: LitVarStr var_114, "CodiSeca"
  loc_C14BC9: PopAdLdVar
  loc_C14BCA: FLdRfVar var_104
  loc_C14BCD: FLdPr Me
  loc_C14BD0: MemLdPr global_64
  loc_C14BD3:  = Me.Fields
  loc_C14BD8: FLdPr var_104
  loc_C14BDB: from_stack_2 = Me.Item(from_stack_1)
  loc_C14BE0: FLdPr var_118
  loc_C14BE3:  = Me.Value
  loc_C14BE8: FLdRfVar var_128
  loc_C14BEB: FnCIntVar
  loc_C14BED: LitI2_Byte &HF
  loc_C14BEF: EqI2
  loc_C14BF0: FFreeAd var_104 = ""
  loc_C14BF7: FFree1Var var_128 = ""
  loc_C14BFA: BranchF loc_C14C12
  loc_C14BFD: FLdFPR8 var_D4
  loc_C14C00: LitI4 1
  loc_C14C05: FLdRfVar var_AC
  loc_C14C08: Ary1LdI4
  loc_C14C09: CR8Str
  loc_C14C0B: AddR8
  loc_C14C0C: FStFPR8 var_D4
  loc_C14C0F: Branch loc_C14D80
  loc_C14C12: FLdRfVar var_128
  loc_C14C15: FLdRfVar var_118
  loc_C14C18: LitVarStr var_114, "CodiSeca"
  loc_C14C1D: PopAdLdVar
  loc_C14C1E: FLdRfVar var_104
  loc_C14C21: FLdPr Me
  loc_C14C24: MemLdPr global_64
  loc_C14C27:  = Me.Fields
  loc_C14C2C: FLdPr var_104
  loc_C14C2F: from_stack_2 = Me.Item(from_stack_1)
  loc_C14C34: FLdPr var_118
  loc_C14C37:  = Me.Value
  loc_C14C3C: FLdRfVar var_128
  loc_C14C3F: FnCIntVar
  loc_C14C41: LitI2_Byte &H1E
  loc_C14C43: EqI2
  loc_C14C44: FFreeAd var_104 = ""
  loc_C14C4B: FFree1Var var_128 = ""
  loc_C14C4E: BranchF loc_C14CA4
  loc_C14C51: FLdRfVar var_128
  loc_C14C54: FLdRfVar var_118
  loc_C14C57: LitVarStr var_114, "PorcSeca"
  loc_C14C5C: PopAdLdVar
  loc_C14C5D: FLdRfVar var_104
  loc_C14C60: FLdPr Me
  loc_C14C63: MemLdPr global_64
  loc_C14C66:  = Me.Fields
  loc_C14C6B: FLdPr var_104
  loc_C14C6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C14C73: FLdPr var_118
  loc_C14C76:  = Me.Value
  loc_C14C7B: FLdFPR8 var_D4
  loc_C14C7E: LitI4 1
  loc_C14C83: FLdRfVar var_AC
  loc_C14C86: Ary1LdI4
  loc_C14C87: CR8Str
  loc_C14C89: FLdRfVar var_128
  loc_C14C8C: FnCDblVar
  loc_C14C8E: MulR8
  loc_C14C8F: LitI2_Byte &H64
  loc_C14C91: CR8I2
  loc_C14C92: DivR8
  loc_C14C93: AddR8
  loc_C14C94: FStFPR8 var_D4
  loc_C14C97: FFreeAd var_104 = ""
  loc_C14C9E: FFree1Var var_128 = ""
  loc_C14CA1: Branch loc_C14D80
  loc_C14CA4: FLdRfVar var_128
  loc_C14CA7: FLdRfVar var_118
  loc_C14CAA: LitVarStr var_114, "CodiSeca"
  loc_C14CAF: PopAdLdVar
  loc_C14CB0: FLdRfVar var_104
  loc_C14CB3: FLdPr Me
  loc_C14CB6: MemLdPr global_64
  loc_C14CB9:  = Me.Fields
  loc_C14CBE: FLdPr var_104
  loc_C14CC1: from_stack_2 = Me.Item(from_stack_1)
  loc_C14CC6: FLdPr var_118
  loc_C14CC9:  = Me.Value
  loc_C14CCE: FLdRfVar var_128
  loc_C14CD1: FnCIntVar
  loc_C14CD3: LitI2_Byte &H1F
  loc_C14CD5: EqI2
  loc_C14CD6: FFreeAd var_104 = ""
  loc_C14CDD: FFree1Var var_128 = ""
  loc_C14CE0: BranchF loc_C14D36
  loc_C14CE3: FLdRfVar var_128
  loc_C14CE6: FLdRfVar var_118
  loc_C14CE9: LitVarStr var_114, "PorcSeca"
  loc_C14CEE: PopAdLdVar
  loc_C14CEF: FLdRfVar var_104
  loc_C14CF2: FLdPr Me
  loc_C14CF5: MemLdPr global_64
  loc_C14CF8:  = Me.Fields
  loc_C14CFD: FLdPr var_104
  loc_C14D00: from_stack_2 = Me.Item(from_stack_1)
  loc_C14D05: FLdPr var_118
  loc_C14D08:  = Me.Value
  loc_C14D0D: FLdFPR8 var_D4
  loc_C14D10: LitI4 1
  loc_C14D15: FLdRfVar var_AC
  loc_C14D18: Ary1LdI4
  loc_C14D19: CR8Str
  loc_C14D1B: FLdRfVar var_128
  loc_C14D1E: FnCDblVar
  loc_C14D20: MulR8
  loc_C14D21: LitI2_Byte &H64
  loc_C14D23: CR8I2
  loc_C14D24: DivR8
  loc_C14D25: AddR8
  loc_C14D26: FStFPR8 var_D4
  loc_C14D29: FFreeAd var_104 = ""
  loc_C14D30: FFree1Var var_128 = ""
  loc_C14D33: Branch loc_C14D80
  loc_C14D36: FLdFPR8 var_D4
  loc_C14D39: CVarR8
  loc_C14D3D: FLdRfVar var_128
  loc_C14D40: FLdRfVar var_118
  loc_C14D43: LitVarStr var_114, "Importe"
  loc_C14D48: PopAdLdVar
  loc_C14D49: FLdRfVar var_104
  loc_C14D4C: FLdPr Me
  loc_C14D4F: MemLdPr global_64
  loc_C14D52:  = Me.Fields
  loc_C14D57: FLdPr var_104
  loc_C14D5A: from_stack_2 = Me.Item(from_stack_1)
  loc_C14D5F: FLdPr var_118
  loc_C14D62:  = Me.Value
  loc_C14D67: FLdRfVar var_128
  loc_C14D6A: AddVar var_148
  loc_C14D6E: CR4Var
  loc_C14D6F: FStFPR8 var_D4
  loc_C14D72: FFreeAd var_104 = ""
  loc_C14D79: FFreeVar var_128 = ""
  loc_C14D80: FLdPr Me
  loc_C14D83: MemLdPr global_64
  loc_C14D86: Me.MoveNext
  loc_C14D8B: Branch loc_C14BA9
  loc_C14D8E: FLdFPR8 var_D4
  loc_C14D91: CStrR8
  loc_C14D93: FStStrNoPop var_D8
  loc_C14D96: LitI4 4
  loc_C14D9B: FLdRfVar var_AC
  loc_C14D9E: Ary1StStrCopy
  loc_C14D9F: FFree1Str var_D8
  loc_C14DA2: FLdRfVar var_AC
  loc_C14DA5: CVarRef
  loc_C14DAA: FStVarCopy
  loc_C14DAE: ExitProcCbHresult
End Function

Public Function BuscaDeudaDeBimestreParaLaEmisionMasiva(sCuenCtct, iPeriCtct, iBimeCtct) 'AD07FC
  'Data Table: 4BE97C
  loc_AD0704: ILdRf sCuenCtct
  loc_AD0707: FStStrCopy var_8C
  loc_AD070A: LitI2_Byte 0
  loc_AD070C: FStI2 var_86
  loc_AD070F: LitStr " SELECT IFNULL(SUM(CredCtct),0) CredCtct "
  loc_AD0712: LitStr " FROM  ctacte USE INDEX (idxctacte09)"
  loc_AD0715: ConcatStr
  loc_AD0716: FStStrNoPop var_90
  loc_AD0719: LitStr " WHERE ctacte.CodiOfic = 1"
  loc_AD071C: ConcatStr
  loc_AD071D: FStStrNoPop BuscaDeudaDeBimestreParaLaEmisionMasiva
  loc_AD0720: LitStr " AND ctacte.CuenCtct = '"
  loc_AD0723: ConcatStr
  loc_AD0724: FStStrNoPop var_98
  loc_AD0727: ILdRf var_8C
  loc_AD072A: ConcatStr
  loc_AD072B: FStStrNoPop var_9C
  loc_AD072E: LitStr "'"
  loc_AD0731: ConcatStr
  loc_AD0732: FStStrNoPop var_A0
  loc_AD0735: LitStr " AND ctacte.PeriCtct = "
  loc_AD0738: ConcatStr
  loc_AD0739: FStStrNoPop var_A4
  loc_AD073C: FLdI2 iPeriCtct
  loc_AD073F: CStrUI1
  loc_AD0741: FStStrNoPop var_A8
  loc_AD0744: ConcatStr
  loc_AD0745: FStStrNoPop var_AC
  loc_AD0748: LitStr " AND ctacte.BimeCtct = "
  loc_AD074B: ConcatStr
  loc_AD074C: FStStrNoPop var_B0
  loc_AD074F: FLdI2 iBimeCtct
  loc_AD0752: CStrUI1
  loc_AD0754: FStStrNoPop var_B4
  loc_AD0757: ConcatStr
  loc_AD0758: FStStrNoPop var_B8
  loc_AD075B: LitStr " ANd ctacte.CodiConc = '13020101'"
  loc_AD075E: ConcatStr
  loc_AD075F: FStStrNoPop var_BC
  loc_AD0762: Call EjecutarRsCls2(from_stack_1v)
  loc_AD0767: FFreeStr var_90 = "": BuscaDeudaDeBimestreParaLaEmisionMasiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD0782: FLdRfVar var_C0
  loc_AD0785: FLdPr Me
  loc_AD0788: MemLdPr global_64
  loc_AD078B:  = Me.RecordCount
  loc_AD0790: ILdRf var_C0
  loc_AD0793: LitI4 0
  loc_AD0798: GtI4
  loc_AD0799: BranchF loc_AD07EE
  loc_AD079C: FLdRfVar var_E8
  loc_AD079F: FLdRfVar var_D8
  loc_AD07A2: LitVarStr var_D4, "CredCtct"
  loc_AD07A7: PopAdLdVar
  loc_AD07A8: FLdRfVar var_C4
  loc_AD07AB: FLdPr Me
  loc_AD07AE: MemLdPr global_64
  loc_AD07B1:  = Me.Fields
  loc_AD07B6: FLdPr var_C4
  loc_AD07B9: from_stack_2 = Me.Item(from_stack_1)
  loc_AD07BE: FLdPr var_D8
  loc_AD07C1:  = Me.Value
  loc_AD07C6: FLdRfVar var_E8
  loc_AD07C9: LitVarI2 var_F8, 0
  loc_AD07CE: HardType
  loc_AD07CF: GtVarBool
  loc_AD07D1: FFreeAd var_C4 = ""
  loc_AD07D8: FFree1Var var_E8 = ""
  loc_AD07DB: BranchF loc_AD07E6
  loc_AD07DE: LitI2_Byte 0
  loc_AD07E0: FStI2 var_86
  loc_AD07E3: Branch loc_AD07EB
  loc_AD07E6: LitI2_Byte &HFF
  loc_AD07E8: FStI2 var_86
  loc_AD07EB: Branch loc_AD07F3
  loc_AD07EE: LitI2_Byte &HFF
  loc_AD07F0: FStI2 var_86
  loc_AD07F3: ExitProcCbHresult
End Function

Public Function DescuentoAnualMasiva2025(byCodiOfic, sCuenCtct) 'AC6068
  'Data Table: 4BE97C
  loc_AC5F78: ILdRf sCuenCtct
  loc_AC5F7B: FStStrCopy var_90
  loc_AC5F7E: LitI2_Byte &HA
  loc_AC5F80: CR8I2
  loc_AC5F81: FStFPR8 var_8C
  loc_AC5F84: LitI2_Byte 0
  loc_AC5F86: FStI2 var_92
  loc_AC5F89: LitI2 2023
  loc_AC5F8C: FLdRfVar DescuentoAnualMasiva2025
  loc_AC5F8F: LitI2 2024
  loc_AC5F92: ForI2 var_98
  loc_AC5F98: LitStr " SELECT * FROM boleto"
  loc_AC5F9B: LitStr " WHERE CodiOfic = "
  loc_AC5F9E: ConcatStr
  loc_AC5F9F: FStStrNoPop var_9C
  loc_AC5FA2: FLdUI1
  loc_AC5FA6: CStrI2
  loc_AC5FA8: FStStrNoPop var_A0
  loc_AC5FAB: ConcatStr
  loc_AC5FAC: FStStrNoPop var_A4
  loc_AC5FAF: LitStr " AND CuenCtct = '"
  loc_AC5FB2: ConcatStr
  loc_AC5FB3: FStStrNoPop var_A8
  loc_AC5FB6: ILdRf var_90
  loc_AC5FB9: ConcatStr
  loc_AC5FBA: FStStrNoPop var_AC
  loc_AC5FBD: LitStr "'"
  loc_AC5FC0: ConcatStr
  loc_AC5FC1: FStStrNoPop var_B0
  loc_AC5FC4: LitStr " AND PeriBole = "
  loc_AC5FC7: ConcatStr
  loc_AC5FC8: FStStrNoPop var_B4
  loc_AC5FCB: FLdI2 DescuentoAnualMasiva2025
  loc_AC5FCE: CStrUI1
  loc_AC5FD0: FStStrNoPop var_B8
  loc_AC5FD3: ConcatStr
  loc_AC5FD4: FStStrNoPop var_BC
  loc_AC5FD7: LitStr " AND CodiTili > 0 AND NumeLiqu > 0 AND TipoBole = 'Anual' AND EstaBole = 'Actualizado'"
  loc_AC5FDA: ConcatStr
  loc_AC5FDB: FStStrNoPop var_C0
  loc_AC5FDE: Call EjecutarRsCls(from_stack_1v)
  loc_AC5FE3: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AC5FFA: FLdRfVar var_C4
  loc_AC5FFD: FLdPr Me
  loc_AC6000: MemLdPr global_56
  loc_AC6003:  = Me.RecordCount
  loc_AC6008: ILdRf var_C4
  loc_AC600B: LitI4 1
  loc_AC6010: EqI4
  loc_AC6011: BranchF loc_AC601C
  loc_AC6014: LitI2_Byte &HFF
  loc_AC6016: FStI2 var_92
  loc_AC6019: Branch loc_AC603F
  loc_AC601C: LitI2_Byte &HFF
  loc_AC601E: FStI2 var_92
  loc_AC6021: FLdRfVar var_C6
  loc_AC6024: FLdI2 DescuentoAnualMasiva2025
  loc_AC6027: CI4UI1
  loc_AC6028: ILdRf var_90
  loc_AC602B: CI4Str
  loc_AC602C: from_stack_3v = PagoManualAnual(from_stack_1v, from_stack_2v)
  loc_AC6031: FLdI2 var_C6
  loc_AC6034: LitI2_Byte 0
  loc_AC6036: EqI2
  loc_AC6037: BranchF loc_AC603F
  loc_AC603A: LitI2_Byte 0
  loc_AC603C: FStI2 var_92
  loc_AC603F: FLdRfVar DescuentoAnualMasiva2025
  loc_AC6042: NextI2 var_98, loc_AC5F98
  loc_AC6047: FLdI2 var_92
  loc_AC604A: LitI2_Byte &HFF
  loc_AC604C: EqI2
  loc_AC604D: BranchF loc_AC6059
  loc_AC6050: LitI2_Byte &H14
  loc_AC6052: CR8I2
  loc_AC6053: FStFPR8 var_8C
  loc_AC6056: Branch loc_AC605F
  loc_AC6059: LitI2_Byte &HA
  loc_AC605B: CR8I2
  loc_AC605C: FStFPR8 var_8C
  loc_AC605F: ExitProcCbHresult
End Function

Public Function LibredeDeudaAlDiaEmisionMasiva2025(byCodiOfic, lCuenCtct, doMontoTotal) 'B04CC0
  'Data Table: 4BE97C
  loc_B04AD0: LitI2_Byte 0
  loc_B04AD2: CR8I2
  loc_B04AD3: FStFPR8 LibredeDeudaAlDiaEmisionMasiva2025
  loc_B04AD6: LitI2_Byte 0
  loc_B04AD8: CR8I2
  loc_B04AD9: FStFPR8 var_9C
  loc_B04ADC: LitStr " SELECT * FROM litadeta"
  loc_B04ADF: LitStr " WHERE PeriLiqu >= 2023 ANd PeriLiqu <=  2024 AND BimeLiqu = 1 AND CodiTili = 1 AND NumeLiqu = 1 AND CodiInmu = "
  loc_B04AE2: ConcatStr
  loc_B04AE3: FStStrNoPop var_A0
  loc_B04AE6: ILdRf lCuenCtct
  loc_B04AE9: CStrI4
  loc_B04AEB: FStStrNoPop var_A4
  loc_B04AEE: ConcatStr
  loc_B04AEF: FStStrNoPop var_A8
  loc_B04AF2: LitStr "  AND CodiConc = '13020101'"
  loc_B04AF5: ConcatStr
  loc_B04AF6: FStStrNoPop var_AC
  loc_B04AF9: LitStr " AND TipoVenc = 1 AND CodiSeca = 1"
  loc_B04AFC: ConcatStr
  loc_B04AFD: FStStrNoPop var_B0
  loc_B04B00: Call EjecutarRsCls(from_stack_1v)
  loc_B04B05: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B04B12: FLdRfVar var_B4
  loc_B04B15: FLdPr Me
  loc_B04B18: MemLdPr global_56
  loc_B04B1B:  = Me.RecordCount
  loc_B04B20: ILdRf var_B4
  loc_B04B23: LitI4 0
  loc_B04B28: GtI4
  loc_B04B29: BranchF loc_B04CB3
  loc_B04B2C: FLdPr Me
  loc_B04B2F: MemLdPr global_56
  loc_B04B32: Me.MoveFirst
  loc_B04B37: FLdRfVar var_B6
  loc_B04B3A: FLdPr Me
  loc_B04B3D: MemLdPr global_56
  loc_B04B40:  = Me.EOF
  loc_B04B45: FLdI2 var_B6
  loc_B04B48: NotI4
  loc_B04B49: BranchF loc_B04CB3
  loc_B04B4C: FLdRfVar var_E0
  loc_B04B4F: FLdRfVar var_D0
  loc_B04B52: LitVarStr var_CC, "PeriLiqu"
  loc_B04B57: PopAdLdVar
  loc_B04B58: FLdRfVar var_BC
  loc_B04B5B: FLdPr Me
  loc_B04B5E: MemLdPr global_56
  loc_B04B61:  = Me.Fields
  loc_B04B66: FLdPr var_BC
  loc_B04B69: from_stack_2 = Me.Item(from_stack_1)
  loc_B04B6E: FLdPr var_D0
  loc_B04B71:  = Me.Value
  loc_B04B76: FLdRfVar var_E0
  loc_B04B79: FnCIntVar
  loc_B04B7B: LitI2 2023
  loc_B04B7E: EqI2
  loc_B04B7F: FFreeAd var_BC = ""
  loc_B04B86: FFree1Var var_E0 = ""
  loc_B04B89: BranchF loc_B04BF2
  loc_B04B8C: FLdRfVar var_E0
  loc_B04B8F: FLdRfVar var_D0
  loc_B04B92: LitVarStr var_CC, "ImpoLtde"
  loc_B04B97: PopAdLdVar
  loc_B04B98: FLdRfVar var_BC
  loc_B04B9B: FLdPr Me
  loc_B04B9E: MemLdPr global_56
  loc_B04BA1:  = Me.Fields
  loc_B04BA6: FLdPr var_BC
  loc_B04BA9: from_stack_2 = Me.Item(from_stack_1)
  loc_B04BAE: FLdPr var_D0
  loc_B04BB1:  = Me.Value
  loc_B04BB6: LitI4 2
  loc_B04BBB: FLdRfVar var_E0
  loc_B04BBE: FnCDblVar
  loc_B04BC0: LitI2_Byte &H7E
  loc_B04BC2: CR8I2
  loc_B04BC3: SubR4
  loc_B04BC4: LitI2_Byte &HA
  loc_B04BC6: CR8I2
  loc_B04BC7: MulR8
  loc_B04BC8: LitI2_Byte &H64
  loc_B04BCA: CR8I2
  loc_B04BCB: DivR8
  loc_B04BCC: CVarR8
  loc_B04BD0: FLdRfVar var_110
  loc_B04BD3: ImpAdCallFPR4  = Round(, )
  loc_B04BD8: FLdRfVar var_110
  loc_B04BDB: CR4Var
  loc_B04BDC: FStFPR8 LibredeDeudaAlDiaEmisionMasiva2025
  loc_B04BDF: FFreeAd var_BC = ""
  loc_B04BE6: FFreeVar var_E0 = "": var_100 = ""
  loc_B04BEF: Branch loc_B04C9B
  loc_B04BF2: FLdRfVar var_E0
  loc_B04BF5: FLdRfVar var_D0
  loc_B04BF8: LitVarStr var_CC, "PeriLiqu"
  loc_B04BFD: PopAdLdVar
  loc_B04BFE: FLdRfVar var_BC
  loc_B04C01: FLdPr Me
  loc_B04C04: MemLdPr global_56
  loc_B04C07:  = Me.Fields
  loc_B04C0C: FLdPr var_BC
  loc_B04C0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B04C14: FLdPr var_D0
  loc_B04C17:  = Me.Value
  loc_B04C1C: FLdRfVar var_E0
  loc_B04C1F: FnCIntVar
  loc_B04C21: LitI2 2024
  loc_B04C24: EqI2
  loc_B04C25: FFreeAd var_BC = ""
  loc_B04C2C: FFree1Var var_E0 = ""
  loc_B04C2F: BranchF loc_B04C9B
  loc_B04C32: FLdRfVar var_E0
  loc_B04C35: FLdRfVar var_D0
  loc_B04C38: LitVarStr var_CC, "ImpoLtde"
  loc_B04C3D: PopAdLdVar
  loc_B04C3E: FLdRfVar var_BC
  loc_B04C41: FLdPr Me
  loc_B04C44: MemLdPr global_56
  loc_B04C47:  = Me.Fields
  loc_B04C4C: FLdPr var_BC
  loc_B04C4F: from_stack_2 = Me.Item(from_stack_1)
  loc_B04C54: FLdPr var_D0
  loc_B04C57:  = Me.Value
  loc_B04C5C: LitI4 2
  loc_B04C61: FLdRfVar var_E0
  loc_B04C64: FnCDblVar
  loc_B04C66: LitDate 302.4
  loc_B04C6F: SubR4
  loc_B04C70: LitI2_Byte &HA
  loc_B04C72: CR8I2
  loc_B04C73: MulR8
  loc_B04C74: LitI2_Byte &H64
  loc_B04C76: CR8I2
  loc_B04C77: DivR8
  loc_B04C78: CVarR8
  loc_B04C7C: FLdRfVar var_110
  loc_B04C7F: ImpAdCallFPR4  = Round(, )
  loc_B04C84: FLdRfVar var_110
  loc_B04C87: CR4Var
  loc_B04C88: FStFPR8 LibredeDeudaAlDiaEmisionMasiva2025
  loc_B04C8B: FFreeAd var_BC = ""
  loc_B04C92: FFreeVar var_E0 = "": var_100 = ""
  loc_B04C9B: FLdFPR8 var_9C
  loc_B04C9E: FLdFPR8 LibredeDeudaAlDiaEmisionMasiva2025
  loc_B04CA1: AddR8
  loc_B04CA2: FStFPR8 var_9C
  loc_B04CA5: FLdPr Me
  loc_B04CA8: MemLdPr global_56
  loc_B04CAB: Me.MoveNext
  loc_B04CB0: Branch loc_B04B37
  loc_B04CB3: FLdFPR8 var_9C
  loc_B04CB6: FStFPR8 var_8C
  loc_B04CB9: ExitProcCbHresult
End Function

Public Function LibredeDeudaAlDiaEmisionMasiva(byCodiOfic, sCuenCtct) 'B594DC
  'Data Table: 4BE97C
  loc_B59128: ILdRf sCuenCtct
  loc_B5912B: FStStrCopy var_8C
  loc_B5912E: LitI2_Byte &HFF
  loc_B59130: FStI2 var_8E
  loc_B59133: LitI2 2021
  loc_B59136: FLdRfVar var_90
  loc_B59139: LitI2 2022
  loc_B5913C: ForI2 LibredeDeudaAlDiaEmisionMasiva
  loc_B59142: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, COUNT(BimeCtct) as CantBime"
  loc_B59145: LitStr " FROM ctacte WHERE CodiOfic = 1"
  loc_B59148: ConcatStr
  loc_B59149: FStStrNoPop var_98
  loc_B5914C: LitStr " AND CuenCtct = '"
  loc_B5914F: ConcatStr
  loc_B59150: FStStrNoPop var_9C
  loc_B59153: ILdRf var_8C
  loc_B59156: ConcatStr
  loc_B59157: FStStrNoPop var_A0
  loc_B5915A: LitStr "'"
  loc_B5915D: ConcatStr
  loc_B5915E: FStStrNoPop var_A4
  loc_B59161: LitStr " AND Perictct = "
  loc_B59164: ConcatStr
  loc_B59165: FStStrNoPop var_A8
  loc_B59168: FLdI2 var_90
  loc_B5916B: CStrUI1
  loc_B5916D: FStStrNoPop var_AC
  loc_B59170: ConcatStr
  loc_B59171: FStStrNoPop var_B0
  loc_B59174: LitStr " AND CodiConc = '13020101' AND MoviCtct = 1"
  loc_B59177: ConcatStr
  loc_B59178: FStStrNoPop var_B4
  loc_B5917B: LitStr " GROUP BY CodiOfic, CuenCtct, PeriCtct"
  loc_B5917E: ConcatStr
  loc_B5917F: FStStrNoPop var_B8
  loc_B59182: Call EjecutarRsCls(from_stack_1v)
  loc_B59187: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B5919C: FLdRfVar var_BC
  loc_B5919F: FLdPr Me
  loc_B591A2: MemLdPr global_56
  loc_B591A5:  = Me.RecordCount
  loc_B591AA: ILdRf var_BC
  loc_B591AD: LitI4 0
  loc_B591B2: GtI4
  loc_B591B3: BranchF loc_B5920B
  loc_B591B6: FLdPr Me
  loc_B591B9: MemLdPr global_56
  loc_B591BC: Me.MoveFirst
  loc_B591C1: FLdRfVar var_E4
  loc_B591C4: FLdRfVar var_D4
  loc_B591C7: LitVarStr var_D0, "CantBime"
  loc_B591CC: PopAdLdVar
  loc_B591CD: FLdRfVar var_C0
  loc_B591D0: FLdPr Me
  loc_B591D3: MemLdPr global_56
  loc_B591D6:  = Me.Fields
  loc_B591DB: FLdPr var_C0
  loc_B591DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B591E3: FLdPr var_D4
  loc_B591E6:  = Me.Value
  loc_B591EB: FLdRfVar var_E4
  loc_B591EE: LitVarI2 var_F4, 6
  loc_B591F3: HardType
  loc_B591F4: LtVarBool
  loc_B591F6: FFreeAd var_C0 = ""
  loc_B591FD: FFree1Var var_E4 = ""
  loc_B59200: BranchF loc_B59208
  loc_B59203: LitI2_Byte 0
  loc_B59205: FStI2 var_8E
  loc_B59208: Branch loc_B59210
  loc_B5920B: LitI2_Byte 0
  loc_B5920D: FStI2 var_8E
  loc_B59210: FLdI2 var_8E
  loc_B59213: LitI2_Byte 0
  loc_B59215: EqI2
  loc_B59216: BranchF loc_B5921C
  loc_B59219: Branch loc_B59224
  loc_B5921C: FLdRfVar var_90
  loc_B5921F: NextI2 LibredeDeudaAlDiaEmisionMasiva, loc_B59142
  loc_B59224: FLdI2 var_8E
  loc_B59227: LitI2_Byte &HFF
  loc_B59229: EqI2
  loc_B5922A: BranchF loc_B594D0
  loc_B5922D: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_B59230: LitStr " CREATE TEMPORARY TABLE deta"
  loc_B59233: ConcatStr
  loc_B59234: FStStrNoPop var_98
  loc_B59237: LitStr " SELECT * FROM ctacte"
  loc_B5923A: ConcatStr
  loc_B5923B: FStStrNoPop var_9C
  loc_B5923E: LitStr " WHERE CodiOfic = "
  loc_B59241: ConcatStr
  loc_B59242: FStStrNoPop var_A0
  loc_B59245: FLdUI1
  loc_B59249: CStrI2
  loc_B5924B: FStStrNoPop var_A4
  loc_B5924E: ConcatStr
  loc_B5924F: FStStrNoPop var_A8
  loc_B59252: LitStr " AND CuenCtct = '"
  loc_B59255: ConcatStr
  loc_B59256: FStStrNoPop var_AC
  loc_B59259: ILdRf var_8C
  loc_B5925C: ConcatStr
  loc_B5925D: FStStrNoPop var_B0
  loc_B59260: LitStr "'"
  loc_B59263: ConcatStr
  loc_B59264: FStStrNoPop var_B4
  loc_B59267: LitStr " AND PeriCtct >= 2021 ANd Perictct <=  2022 AND CodiConc = '13020101'"
  loc_B5926A: ConcatStr
  loc_B5926B: FStStrNoPop var_B8
  loc_B5926E: LitStr " AND Movictct = 1 AND CodiTimo = 1"
  loc_B59271: ConcatStr
  loc_B59272: FStStrNoPop var_108
  loc_B59275: Call EjecutarRsCls(from_stack_1v)
  loc_B5927A: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B59291: LitStr "DROP TEMPORARY TABLE IF EXISTS ctacte_tmp;"
  loc_B59294: LitStr " CREATE TEMPORARY TABLE ctacte_tmp"
  loc_B59297: ConcatStr
  loc_B59298: FStStrNoPop var_98
  loc_B5929B: LitStr " SELECT deta.PeriCtct, deta.BimeCtct, deta.CodiTimo, deta.FeveCtct, ctacte.CodiTimo CodiTimoPago, ctacte.FeveCtct FeveCtctPago"
  loc_B5929E: ConcatStr
  loc_B5929F: FStStrNoPop var_9C
  loc_B592A2: LitStr " , IF(ctacte.FeveCtct<=deta.fevectct,1,0) AS Aldia"
  loc_B592A5: ConcatStr
  loc_B592A6: FStStrNoPop var_A0
  loc_B592A9: LitStr " FROM deta"
  loc_B592AC: ConcatStr
  loc_B592AD: FStStrNoPop var_A4
  loc_B592B0: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = deta.CodiOfic"
  loc_B592B3: ConcatStr
  loc_B592B4: FStStrNoPop var_A8
  loc_B592B7: LitStr " AND ctacte.CuenCtct = deta.CuenCtct"
  loc_B592BA: ConcatStr
  loc_B592BB: FStStrNoPop var_AC
  loc_B592BE: LitStr " AND ctacte.PeriCtct = deta.PeriCtct"
  loc_B592C1: ConcatStr
  loc_B592C2: FStStrNoPop var_B0
  loc_B592C5: LitStr " AND ctacte.BimeCtct = deta.BimeCtct"
  loc_B592C8: ConcatStr
  loc_B592C9: FStStrNoPop var_B4
  loc_B592CC: LitStr " AND ctacte.NumeCtct = deta.NumeCtct"
  loc_B592CF: ConcatStr
  loc_B592D0: FStStrNoPop var_B8
  loc_B592D3: LitStr " AND ctacte.CodiTimo  IN (2,5,21)"
  loc_B592D6: ConcatStr
  loc_B592D7: FStStrNoPop var_108
  loc_B592DA: LitStr " GROUP BY deta.CodiOfic, deta.CuenCtct, deta.PeriCtct, deta.BimeCtct, deta.NumeCtct"
  loc_B592DD: ConcatStr
  loc_B592DE: FStStrNoPop var_10C
  loc_B592E1: Call EjecutarRsCls(from_stack_1v)
  loc_B592E6: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_108 = ""
  loc_B592FF: LitStr "SELECT PeriCtct, SUM(Aldia) Descuento FROM ctacte_tmp GROUP BY PeriCtct"
  loc_B59302: Call EjecutarRsCls(from_stack_1v)
  loc_B59307: FLdRfVar var_BC
  loc_B5930A: FLdPr Me
  loc_B5930D: MemLdPr global_56
  loc_B59310:  = Me.RecordCount
  loc_B59315: ILdRf var_BC
  loc_B59318: LitI4 0
  loc_B5931D: GtI4
  loc_B5931E: BranchF loc_B594C8
  loc_B59321: FLdPr Me
  loc_B59324: MemLdPr global_56
  loc_B59327: Me.MoveFirst
  loc_B5932C: FLdRfVar var_10E
  loc_B5932F: FLdPr Me
  loc_B59332: MemLdPr global_56
  loc_B59335:  = Me.EOF
  loc_B5933A: FLdI2 var_10E
  loc_B5933D: NotI4
  loc_B5933E: BranchF loc_B594C5
  loc_B59341: FLdRfVar var_E4
  loc_B59344: FLdRfVar var_D4
  loc_B59347: LitVarStr var_D0, "Descuento"
  loc_B5934C: PopAdLdVar
  loc_B5934D: FLdRfVar var_C0
  loc_B59350: FLdPr Me
  loc_B59353: MemLdPr global_56
  loc_B59356:  = Me.Fields
  loc_B5935B: FLdPr var_C0
  loc_B5935E: from_stack_2 = Me.Item(from_stack_1)
  loc_B59363: FLdPr var_D4
  loc_B59366:  = Me.Value
  loc_B5936B: FLdRfVar var_E4
  loc_B5936E: LitVarI2 var_F4, 6
  loc_B59373: HardType
  loc_B59374: GeVarBool
  loc_B59376: FFreeAd var_C0 = ""
  loc_B5937D: FFree1Var var_E4 = ""
  loc_B59380: BranchF loc_B5938F
  loc_B59383: FLdI2 var_86
  loc_B59386: LitI2_Byte 5
  loc_B59388: AddI2
  loc_B59389: FStI2 var_86
  loc_B5938C: Branch loc_B594B7
  loc_B5938F: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_boleanual;"
  loc_B59392: LitStr " CREATE TEMPORARY TABLE tmp_boleanual"
  loc_B59395: ConcatStr
  loc_B59396: FStStrNoPop var_98
  loc_B59399: LitStr " SELECT IF(boleto.EstaBole = 'Actualizado' AND pago.FepaPago<=boleto.FeveBole,1,0) as Aldia FROM boleto"
  loc_B5939C: ConcatStr
  loc_B5939D: FStStrNoPop var_9C
  loc_B593A0: LitStr " LEFT JOIN pago ON pago.PeriBole = boleto.PeriBole"
  loc_B593A3: ConcatStr
  loc_B593A4: FStStrNoPop var_A0
  loc_B593A7: LitStr " AND pago.NumeBole = boleto.NumeBole"
  loc_B593AA: ConcatStr
  loc_B593AB: FStStrNoPop var_A4
  loc_B593AE: LitStr " WHERE boleto.PeriBole = "
  loc_B593B1: ConcatStr
  loc_B593B2: CVarStr var_104
  loc_B593B5: FLdRfVar var_E4
  loc_B593B8: FLdRfVar var_D4
  loc_B593BB: LitVarStr var_D0, "PeriCtct"
  loc_B593C0: PopAdLdVar
  loc_B593C1: FLdRfVar var_C0
  loc_B593C4: FLdPr Me
  loc_B593C7: MemLdPr global_56
  loc_B593CA:  = Me.Fields
  loc_B593CF: FLdPr var_C0
  loc_B593D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B593D7: FLdPr var_D4
  loc_B593DA:  = Me.Value
  loc_B593DF: FLdRfVar var_E4
  loc_B593E2: ConcatVar var_120
  loc_B593E6: LitVarStr var_F4, " AND boleto.CodiOfic =  "
  loc_B593EB: ConcatVar var_130
  loc_B593EF: FLdUI1
  loc_B593F3: CVarUI1
  loc_B593F7: ConcatVar var_150
  loc_B593FB: LitVarStr var_160, " AND boleto.CuenCtct = '"
  loc_B59400: ConcatVar var_170
  loc_B59404: ILdRf var_8C
  loc_B59407: CVarStr var_180
  loc_B5940A: ConcatVar var_190
  loc_B5940E: LitVarStr var_1A0, "'"
  loc_B59413: ConcatVar var_1B0
  loc_B59417: LitVarStr var_1C0, " AND boleto.CodiTili > 0 AND boleto.NumeLiqu > 0 AND boleto.TipoBole = 'Anual' AND boleto.EstaBole = 'Actualizado'"
  loc_B5941C: ConcatVar var_1D0
  loc_B59420: CStrVarVal var_A8
  loc_B59424: Call EjecutarRsCls2(from_stack_1v)
  loc_B59429: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B59436: FFreeAd var_C0 = ""
  loc_B5943D: FFreeVar var_104 = "": var_E4 = "": var_120 = "": var_130 = "": var_150 = "": var_170 = "": var_190 = "": var_1B0 = ""
  loc_B59452: LitStr "SELECT * FROM tmp_boleanual"
  loc_B59455: Call EjecutarRsCls2(from_stack_1v)
  loc_B5945A: FLdRfVar var_BC
  loc_B5945D: FLdPr Me
  loc_B59460: MemLdPr global_64
  loc_B59463:  = Me.RecordCount
  loc_B59468: ILdRf var_BC
  loc_B5946B: LitI4 0
  loc_B59470: GtI4
  loc_B59471: BranchF loc_B594AE
  loc_B59474: LitStr "SELECT * FROM tmp_boleanual WHERE Aldia = 0"
  loc_B59477: Call EjecutarRsCls3(from_stack_1v)
  loc_B5947C: FLdRfVar var_BC
  loc_B5947F: FLdPr Me
  loc_B59482: MemLdPr global_68
  loc_B59485:  = Me.RecordCount
  loc_B5948A: ILdRf var_BC
  loc_B5948D: LitI4 0
  loc_B59492: GtI4
  loc_B59493: BranchF loc_B594A2
  loc_B59496: FLdI2 var_86
  loc_B59499: LitI2_Byte 0
  loc_B5949B: AddI2
  loc_B5949C: FStI2 var_86
  loc_B5949F: Branch loc_B594AB
  loc_B594A2: FLdI2 var_86
  loc_B594A5: LitI2_Byte 5
  loc_B594A7: AddI2
  loc_B594A8: FStI2 var_86
  loc_B594AB: Branch loc_B594B7
  loc_B594AE: FLdI2 var_86
  loc_B594B1: LitI2_Byte 0
  loc_B594B3: AddI2
  loc_B594B4: FStI2 var_86
  loc_B594B7: FLdPr Me
  loc_B594BA: MemLdPr global_56
  loc_B594BD: Me.MoveNext
  loc_B594C2: Branch loc_B5932C
  loc_B594C5: Branch loc_B594CD
  loc_B594C8: LitI2_Byte 0
  loc_B594CA: FStI2 var_86
  loc_B594CD: Branch loc_B594D5
  loc_B594D0: LitI2_Byte 0
  loc_B594D2: FStI2 var_86
  loc_B594D5: ExitProcCbHresult
End Function

Public Function DescuentoPorEstarAlDia(iPeriliqu, lCodiInmu) 'AAC63C
  'Data Table: 4BE97C
  loc_AAC588: LitStr " SELECT PodeLita FROM liqutasa WHERE PeriLiqu = "
  loc_AAC58B: FLdI2 iPeriliqu
  loc_AAC58E: CStrUI1
  loc_AAC590: FStStrNoPop var_90
  loc_AAC593: ConcatStr
  loc_AAC594: FStStrNoPop DescuentoPorEstarAlDia
  loc_AAC597: LitStr " AND BimeLiqu = 1 AND CodiTili = 1 AND NumeLiqu = 1"
  loc_AAC59A: ConcatStr
  loc_AAC59B: FStStrNoPop var_98
  loc_AAC59E: LitStr " AND CodiInmu = "
  loc_AAC5A1: ConcatStr
  loc_AAC5A2: FStStrNoPop var_9C
  loc_AAC5A5: ILdRf lCodiInmu
  loc_AAC5A8: CStrI4
  loc_AAC5AA: FStStrNoPop var_A0
  loc_AAC5AD: ConcatStr
  loc_AAC5AE: FStStrNoPop var_A4
  loc_AAC5B1: LitStr " AND CodiConc = '13020101'"
  loc_AAC5B4: ConcatStr
  loc_AAC5B5: FStStrNoPop var_A8
  loc_AAC5B8: LitStr " AND TipoVenc = 1"
  loc_AAC5BB: ConcatStr
  loc_AAC5BC: FStStrNoPop var_AC
  loc_AAC5BF: Call EjecutarRsCls(from_stack_1v)
  loc_AAC5C4: FFreeStr var_90 = "": DescuentoPorEstarAlDia = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AAC5D7: FLdRfVar var_B0
  loc_AAC5DA: FLdPr Me
  loc_AAC5DD: MemLdPr global_56
  loc_AAC5E0:  = Me.RecordCount
  loc_AAC5E5: ILdRf var_B0
  loc_AAC5E8: LitI4 0
  loc_AAC5ED: GtI4
  loc_AAC5EE: BranchF loc_AAC630
  loc_AAC5F1: FLdRfVar var_D8
  loc_AAC5F4: FLdRfVar var_C8
  loc_AAC5F7: LitVarStr var_C4, "PodeLita"
  loc_AAC5FC: PopAdLdVar
  loc_AAC5FD: FLdRfVar var_B4
  loc_AAC600: FLdPr Me
  loc_AAC603: MemLdPr global_56
  loc_AAC606:  = Me.Fields
  loc_AAC60B: FLdPr var_B4
  loc_AAC60E: from_stack_2 = Me.Item(from_stack_1)
  loc_AAC613: FLdPr var_C8
  loc_AAC616:  = Me.Value
  loc_AAC61B: FLdRfVar var_D8
  loc_AAC61E: FnCDblVar
  loc_AAC620: FStFPR8 var_8C
  loc_AAC623: FFreeAd var_B4 = ""
  loc_AAC62A: FFree1Var var_D8 = ""
  loc_AAC62D: Branch loc_AAC636
  loc_AAC630: LitI2_Byte 0
  loc_AAC632: CR8I2
  loc_AAC633: FStFPR8 var_8C
  loc_AAC636: ExitProcCbHresult
End Function

Public Function PagoManualAnual(lCodiInmu, iPeriCtct) 'AC0E5C
  'Data Table: 4BE97C
  loc_AC0D84: LitStr " SELECT SUM(DebeCtct)-SUM(CredCtct) saldo FROM ctacte WHERE CodiOfic = 1"
  loc_AC0D87: LitStr " AND CuenCtct = '"
  loc_AC0D8A: ConcatStr
  loc_AC0D8B: FStStrNoPop var_8C
  loc_AC0D8E: ILdRf lCodiInmu
  loc_AC0D91: CStrI4
  loc_AC0D93: FStStrNoPop var_90
  loc_AC0D96: ConcatStr
  loc_AC0D97: FStStrNoPop PagoManualAnual
  loc_AC0D9A: LitStr "'"
  loc_AC0D9D: ConcatStr
  loc_AC0D9E: FStStrNoPop var_98
  loc_AC0DA1: LitStr " AND PeriCtct = "
  loc_AC0DA4: ConcatStr
  loc_AC0DA5: FStStrNoPop var_9C
  loc_AC0DA8: ILdRf iPeriCtct
  loc_AC0DAB: CStrI4
  loc_AC0DAD: FStStrNoPop var_A0
  loc_AC0DB0: ConcatStr
  loc_AC0DB1: FStStrNoPop var_A4
  loc_AC0DB4: LitStr " AND BimeCtct = 12 "
  loc_AC0DB7: ConcatStr
  loc_AC0DB8: FStStrNoPop var_A8
  loc_AC0DBB: LitStr " AND CodiConc = '13020101'"
  loc_AC0DBE: ConcatStr
  loc_AC0DBF: FStStrNoPop var_AC
  loc_AC0DC2: LitStr " GROUP BY CodiOfic, CuenCtct"
  loc_AC0DC5: ConcatStr
  loc_AC0DC6: FStStrNoPop var_B0
  loc_AC0DC9: Call EjecutarRsCls(from_stack_1v)
  loc_AC0DCE: FFreeStr var_8C = "": var_90 = "": PagoManualAnual = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AC0DE5: FLdRfVar var_B4
  loc_AC0DE8: FLdPr Me
  loc_AC0DEB: MemLdPr global_56
  loc_AC0DEE:  = Me.RecordCount
  loc_AC0DF3: ILdRf var_B4
  loc_AC0DF6: LitI4 0
  loc_AC0DFB: GtI4
  loc_AC0DFC: BranchF loc_AC0E4F
  loc_AC0DFF: FLdRfVar var_DC
  loc_AC0E02: FLdRfVar var_CC
  loc_AC0E05: LitVarStr var_C8, "Saldo"
  loc_AC0E0A: PopAdLdVar
  loc_AC0E0B: FLdRfVar var_B8
  loc_AC0E0E: FLdPr Me
  loc_AC0E11: MemLdPr global_56
  loc_AC0E14:  = Me.Fields
  loc_AC0E19: FLdPr var_B8
  loc_AC0E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_AC0E21: FLdPr var_CC
  loc_AC0E24:  = Me.Value
  loc_AC0E29: FLdRfVar var_DC
  loc_AC0E2C: FnCDblVar
  loc_AC0E2E: LitI2_Byte 0
  loc_AC0E30: CR8I2
  loc_AC0E31: EqR4
  loc_AC0E32: FFreeAd var_B8 = ""
  loc_AC0E39: FFree1Var var_DC = ""
  loc_AC0E3C: BranchF loc_AC0E47
  loc_AC0E3F: LitI2_Byte &HFF
  loc_AC0E41: FStI2 var_86
  loc_AC0E44: Branch loc_AC0E4C
  loc_AC0E47: LitI2_Byte 0
  loc_AC0E49: FStI2 var_86
  loc_AC0E4C: Branch loc_AC0E54
  loc_AC0E4F: LitI2_Byte 0
  loc_AC0E51: FStI2 var_86
  loc_AC0E54: ExitProcCbHresult
End Function

Public Function LibredeDeudaEmisionMasiva(byCodiOfic, sCuenCtct, sFeveCtct) 'B39F74
  'Data Table: 4BE97C
  loc_B39C9C: ILdRf sCuenCtct
  loc_B39C9F: FStStrCopy var_90
  loc_B39CA2: ILdRf sFeveCtct
  loc_B39CA5: FStStrCopy LibredeDeudaEmisionMasiva
  loc_B39CA8: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacte; CREATE TEMPORARY TABLE tmp_ctacte"
  loc_B39CAB: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, DebeCtct, CredCtct FROM ctacte "
  loc_B39CAE: ConcatStr
  loc_B39CAF: FStStrNoPop var_98
  loc_B39CB2: LitStr " USE INDEX (idxctacte08)"
  loc_B39CB5: ConcatStr
  loc_B39CB6: FStStrNoPop var_9C
  loc_B39CB9: LitStr " WHERE CodiOfic = "
  loc_B39CBC: ConcatStr
  loc_B39CBD: FStStrNoPop var_A0
  loc_B39CC0: FLdUI1
  loc_B39CC4: CStrI2
  loc_B39CC6: FStStrNoPop var_A4
  loc_B39CC9: ConcatStr
  loc_B39CCA: FStStrNoPop var_A8
  loc_B39CCD: LitStr " AND CuenCtct = '"
  loc_B39CD0: ConcatStr
  loc_B39CD1: FStStrNoPop var_AC
  loc_B39CD4: ILdRf var_90
  loc_B39CD7: ConcatStr
  loc_B39CD8: FStStrNoPop var_B0
  loc_B39CDB: LitStr "'"
  loc_B39CDE: ConcatStr
  loc_B39CDF: FStStrNoPop var_B4
  loc_B39CE2: LitStr " AND MoviCtct = 1 "
  loc_B39CE5: ConcatStr
  loc_B39CE6: FStStrNoPop var_B8
  loc_B39CE9: LitStr " AND FeveCtct <= '"
  loc_B39CEC: ConcatStr
  loc_B39CED: FStStrNoPop var_EC
  loc_B39CF0: LitI4 1
  loc_B39CF5: LitI4 1
  loc_B39CFA: LitVarStr var_D8, "yyyy-mm-dd"
  loc_B39CFF: FStVarCopyObj var_E8
  loc_B39D02: FLdRfVar var_E8
  loc_B39D05: FLdRfVar LibredeDeudaEmisionMasiva
  loc_B39D08: CVarRef
  loc_B39D0D: ImpAdCallI2 Format$(, )
  loc_B39D12: FStStrNoPop var_F0
  loc_B39D15: ConcatStr
  loc_B39D16: FStStrNoPop var_F4
  loc_B39D19: LitStr "'"
  loc_B39D1C: ConcatStr
  loc_B39D1D: FStStrNoPop var_F8
  loc_B39D20: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_B39D23: ConcatStr
  loc_B39D24: FStStrNoPop var_FC
  loc_B39D27: Call EjecutarRsCls(from_stack_1v)
  loc_B39D2C: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B39D4B: FFree1Var var_E8 = ""
  loc_B39D4E: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte1;"
  loc_B39D51: LitStr " CREATE TEMPORARY TABLE tmp_ctacte1"
  loc_B39D54: ConcatStr
  loc_B39D55: FStStrNoPop var_98
  loc_B39D58: LitStr " SELECT SUM(ctacte.DebeCtct)- SUM(ctacte.CredCtct) AS Saldo"
  loc_B39D5B: ConcatStr
  loc_B39D5C: FStStrNoPop var_9C
  loc_B39D5F: LitStr " FROM tmp_ctacte"
  loc_B39D62: ConcatStr
  loc_B39D63: FStStrNoPop var_A0
  loc_B39D66: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = tmp_ctacte.CodiOfic"
  loc_B39D69: ConcatStr
  loc_B39D6A: FStStrNoPop var_A4
  loc_B39D6D: LitStr " AND ctacte.CuenCtct = tmp_ctacte.CuenCtct"
  loc_B39D70: ConcatStr
  loc_B39D71: FStStrNoPop var_A8
  loc_B39D74: LitStr " AND ctacte.PeriCtct = tmp_ctacte.PeriCtct"
  loc_B39D77: ConcatStr
  loc_B39D78: FStStrNoPop var_AC
  loc_B39D7B: LitStr " AND ctacte.BimeCtct = tmp_ctacte.BimeCtct"
  loc_B39D7E: ConcatStr
  loc_B39D7F: FStStrNoPop var_B0
  loc_B39D82: LitStr " AND ctacte.NumeCtct = tmp_ctacte.NumeCtct"
  loc_B39D85: ConcatStr
  loc_B39D86: FStStrNoPop var_B4
  loc_B39D89: LitStr " AND ctacte.FeveCtct <= '"
  loc_B39D8C: ConcatStr
  loc_B39D8D: FStStrNoPop var_B8
  loc_B39D90: LitI4 1
  loc_B39D95: LitI4 1
  loc_B39D9A: LitVarStr var_D8, "yyyy-mm-dd"
  loc_B39D9F: FStVarCopyObj var_E8
  loc_B39DA2: FLdRfVar var_E8
  loc_B39DA5: FLdRfVar LibredeDeudaEmisionMasiva
  loc_B39DA8: CVarRef
  loc_B39DAD: ImpAdCallI2 Format$(, )
  loc_B39DB2: FStStrNoPop var_EC
  loc_B39DB5: ConcatStr
  loc_B39DB6: FStStrNoPop var_F0
  loc_B39DB9: LitStr "'"
  loc_B39DBC: ConcatStr
  loc_B39DBD: FStStrNoPop var_F4
  loc_B39DC0: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.NumeCtct"
  loc_B39DC3: ConcatStr
  loc_B39DC4: FStStrNoPop var_F8
  loc_B39DC7: LitStr " HAVING saldo <> 0;"
  loc_B39DCA: ConcatStr
  loc_B39DCB: FStStrNoPop var_FC
  loc_B39DCE: Call EjecutarRsCls(from_stack_1v)
  loc_B39DD3: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B39DF2: FFree1Var var_E8 = ""
  loc_B39DF5: LitStr "SELECT IFNULL(SUM(saldo),0) as Saldo FROM tmp_ctacte1"
  loc_B39DF8: Call EjecutarRsCls(from_stack_1v)
  loc_B39DFD: FLdRfVar var_100
  loc_B39E00: FLdPr Me
  loc_B39E03: MemLdPr global_56
  loc_B39E06:  = Me.RecordCount
  loc_B39E0B: ILdRf var_100
  loc_B39E0E: LitI4 0
  loc_B39E13: GtI4
  loc_B39E14: BranchF loc_B39E56
  loc_B39E17: FLdRfVar var_E8
  loc_B39E1A: FLdRfVar var_108
  loc_B39E1D: LitVarStr var_C8, "Saldo"
  loc_B39E22: PopAdLdVar
  loc_B39E23: FLdRfVar var_104
  loc_B39E26: FLdPr Me
  loc_B39E29: MemLdPr global_56
  loc_B39E2C:  = Me.Fields
  loc_B39E31: FLdPr var_104
  loc_B39E34: from_stack_2 = Me.Item(from_stack_1)
  loc_B39E39: FLdPr var_108
  loc_B39E3C:  = Me.Value
  loc_B39E41: FLdRfVar var_E8
  loc_B39E44: FnCDblVar
  loc_B39E46: FStFPR8 var_8C
  loc_B39E49: FFreeAd var_104 = ""
  loc_B39E50: FFree1Var var_E8 = ""
  loc_B39E53: Branch loc_B39E5C
  loc_B39E56: LitI2_Byte 0
  loc_B39E58: CR8I2
  loc_B39E59: FStFPR8 var_8C
  loc_B39E5C: FLdFPR8 var_8C
  loc_B39E5F: LitI2_Byte 0
  loc_B39E61: CR8I2
  loc_B39E62: EqR4
  loc_B39E63: BranchF loc_B39F6C
  loc_B39E66: LitStr "SELECT * FROM facipago WHERE CodiOfic = "
  loc_B39E69: FLdUI1
  loc_B39E6D: CStrI2
  loc_B39E6F: FStStrNoPop var_98
  loc_B39E72: ConcatStr
  loc_B39E73: FStStrNoPop var_9C
  loc_B39E76: LitStr " AND CuenCtct = '"
  loc_B39E79: ConcatStr
  loc_B39E7A: FStStrNoPop var_A0
  loc_B39E7D: ILdRf var_90
  loc_B39E80: ConcatStr
  loc_B39E81: FStStrNoPop var_A4
  loc_B39E84: LitStr "' AND NovaFapa = 1 AND EstaFapa = 'Activa'"
  loc_B39E87: ConcatStr
  loc_B39E88: FStStrNoPop var_A8
  loc_B39E8B: Call EjecutarRsCls(from_stack_1v)
  loc_B39E90: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B39E9D: FLdRfVar var_100
  loc_B39EA0: FLdPr Me
  loc_B39EA3: MemLdPr global_56
  loc_B39EA6:  = Me.RecordCount
  loc_B39EAB: ILdRf var_100
  loc_B39EAE: LitI4 0
  loc_B39EB3: GtI4
  loc_B39EB4: BranchF loc_B39F6C
  loc_B39EB7: LitVarStr var_D8, "SELECT IFNULL(SUM(TotaDefa),0) TotaDefa FROM detafapa WHERE CodiFapa = "
  loc_B39EBC: FLdRfVar var_E8
  loc_B39EBF: FLdRfVar var_108
  loc_B39EC2: LitVarStr var_C8, "CodiFapa"
  loc_B39EC7: PopAdLdVar
  loc_B39EC8: FLdRfVar var_104
  loc_B39ECB: FLdPr Me
  loc_B39ECE: MemLdPr global_56
  loc_B39ED1:  = Me.Fields
  loc_B39ED6: FLdPr var_104
  loc_B39ED9: from_stack_2 = Me.Item(from_stack_1)
  loc_B39EDE: FLdPr var_108
  loc_B39EE1:  = Me.Value
  loc_B39EE6: FLdRfVar var_E8
  loc_B39EE9: ConcatVar var_118
  loc_B39EED: LitVarStr var_128, " AND FepaDefa IS NULL"
  loc_B39EF2: ConcatVar var_138
  loc_B39EF6: CStrVarVal var_98
  loc_B39EFA: Call EjecutarRsCls(from_stack_1v)
  loc_B39EFF: FFree1Str var_98
  loc_B39F02: FFreeAd var_104 = ""
  loc_B39F09: FFreeVar var_E8 = "": var_118 = ""
  loc_B39F12: FLdRfVar var_100
  loc_B39F15: FLdPr Me
  loc_B39F18: MemLdPr global_56
  loc_B39F1B:  = Me.RecordCount
  loc_B39F20: ILdRf var_100
  loc_B39F23: LitI4 0
  loc_B39F28: GtI4
  loc_B39F29: BranchF loc_B39F6C
  loc_B39F2C: FLdRfVar var_E8
  loc_B39F2F: FLdRfVar var_108
  loc_B39F32: LitVarStr var_C8, "TotaDefa"
  loc_B39F37: PopAdLdVar
  loc_B39F38: FLdRfVar var_104
  loc_B39F3B: FLdPr Me
  loc_B39F3E: MemLdPr global_56
  loc_B39F41:  = Me.Fields
  loc_B39F46: FLdPr var_104
  loc_B39F49: from_stack_2 = Me.Item(from_stack_1)
  loc_B39F4E: FLdPr var_108
  loc_B39F51:  = Me.Value
  loc_B39F56: FLdFPR8 var_8C
  loc_B39F59: FLdRfVar var_E8
  loc_B39F5C: FnCDblVar
  loc_B39F5E: AddR8
  loc_B39F5F: FStFPR8 var_8C
  loc_B39F62: FFreeAd var_104 = ""
  loc_B39F69: FFree1Var var_E8 = ""
  loc_B39F6C: ExitProcCbHresult
  loc_B39F72: EqR4
End Function

Public Function NotificaciondeDeuda(byCodiOfic, sCuenCtct) 'A89A1C
  'Data Table: 4BE97C
  loc_A89998: ILdRf sCuenCtct
  loc_A8999B: FStStrCopy var_8C
  loc_A8999E: LitStr " SELECT * FROM campnotideta"
  loc_A899A1: LitStr " WHERE CodiOfic = "
  loc_A899A4: ConcatStr
  loc_A899A5: FStStrNoPop NotificaciondeDeuda
  loc_A899A8: FLdUI1
  loc_A899AC: CStrI2
  loc_A899AE: FStStrNoPop var_98
  loc_A899B1: ConcatStr
  loc_A899B2: FStStrNoPop var_9C
  loc_A899B5: LitStr " AND CuenCtct = '"
  loc_A899B8: ConcatStr
  loc_A899B9: FStStrNoPop var_A0
  loc_A899BC: ILdRf var_8C
  loc_A899BF: ConcatStr
  loc_A899C0: FStStrNoPop var_A4
  loc_A899C3: LitStr "'"
  loc_A899C6: ConcatStr
  loc_A899C7: FStStrNoPop var_A8
  loc_A899CA: LitStr " AND Emite = 1 GROUP BY CuenCtct"
  loc_A899CD: ConcatStr
  loc_A899CE: FStStrNoPop var_AC
  loc_A899D1: Call EjecutarRsCls(from_stack_1v)
  loc_A899D6: FFreeStr NotificaciondeDeuda = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A899E7: FLdRfVar var_B0
  loc_A899EA: FLdPr Me
  loc_A899ED: MemLdPr global_56
  loc_A899F0:  = Me.RecordCount
  loc_A899F5: ILdRf var_B0
  loc_A899F8: LitI4 1
  loc_A899FD: EqI4
  loc_A899FE: BranchF loc_A89A0C
  loc_A89A01: LitI2_Byte 1
  loc_A89A03: CUI1I2
  loc_A89A05: FStUI1 var_86
  loc_A89A09: Branch loc_A89A14
  loc_A89A0C: LitI2_Byte 0
  loc_A89A0E: CUI1I2
  loc_A89A10: FStUI1 var_86
  loc_A89A14: ExitProcCbHresult
End Function

Public Function ImportedelCalculodeLiquidacionLavalle(CodiInmu) '9AF9AC
  'Data Table: 4BE97C
  loc_9AF9A4: ExitProcCbHresult
End Function

Private Function Proc_167_115_9F3178() '9F3178
  'Data Table: 4BE97C
  loc_9F3154: LitStr "Primary"
  loc_9F3157: FLdPr Me
  loc_9F315A: LateIdLdVar var_94 DispID_4 0
  loc_9F3161: CastAdVar Me
  loc_9F3165: FStAdFunc var_98
  loc_9F3168: FLdPr var_98
  loc_9F3170: FFree1Ad var_98
  loc_9F3173: FFree1Var var_94 = ""
  loc_9F3176: ExitProcHresult
  loc_9F3177: PopAdLdVar
End Function

Private Function Proc_167_116_9DF6AC(arg_C) '9DF6AC
  'Data Table: 4BE97C
  loc_9DF690: ILdI4 arg_C
  loc_9DF693: FStStrCopy var_88
  loc_9DF696: ILdRf var_88
  loc_9DF699: LitStr "Primary"
  loc_9DF69C: EqStr
  loc_9DF69E: BranchF loc_9DF6AB
  loc_9DF6A1: FLdPr Me
  loc_9DF6A4: MemLdStr global_52
  loc_9DF6A7: IStAd
  loc_9DF6AB: ExitProcHresult
End Function
