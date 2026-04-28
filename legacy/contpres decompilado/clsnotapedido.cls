VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsnotapedido"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '42EFD8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '42EFE7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '42EFF6
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '9753FC
  'Data Table: 42E90C
  loc_9753CC: FLdRfVar var_88
  loc_9753CF: FLdPr Me
  loc_9753D2: MemLdPr RsFrm
  loc_9753D5:  = Me.RecordCount
  loc_9753DA: ILdRf var_88
  loc_9753DD: LitI4 0
  loc_9753E2: GtI4
  loc_9753E3: BranchF loc_9753F8
  loc_9753E6: LitVar_Missing var_98
  loc_9753E9: PopAdLdVar
  loc_9753EA: ILdI4 iCantidad
  loc_9753ED: FLdPr Me
  loc_9753F0: MemLdPr RsFrm
  loc_9753F3: Me.Move from_stack_1, from_stack_2
  loc_9753F8: ExitProcHresult
End Sub

Public Sub MoveFirst() '96E28C
  'Data Table: 42E90C
  loc_96E264: FLdRfVar var_88
  loc_96E267: FLdPr Me
  loc_96E26A: MemLdPr RsFrm
  loc_96E26D:  = Me.RecordCount
  loc_96E272: ILdRf var_88
  loc_96E275: LitI4 0
  loc_96E27A: GtI4
  loc_96E27B: BranchF loc_96E289
  loc_96E27E: FLdPr Me
  loc_96E281: MemLdPr RsFrm
  loc_96E284: Me.MoveFirst
  loc_96E289: ExitProcHresult
End Sub

Public Sub MoveLast() '970334
  'Data Table: 42E90C
  loc_97030C: FLdRfVar var_88
  loc_97030F: FLdPr Me
  loc_970312: MemLdPr RsFrm
  loc_970315:  = Me.RecordCount
  loc_97031A: ILdRf var_88
  loc_97031D: LitI4 0
  loc_970322: GtI4
  loc_970323: BranchF loc_970331
  loc_970326: FLdPr Me
  loc_970329: MemLdPr RsFrm
  loc_97032C: Me.MoveLast
  loc_970331: ExitProcHresult
End Sub

Public Sub MoveNext() '99D4A8
  'Data Table: 42E90C
  loc_99D430: FLdRfVar var_86
  loc_99D433: FLdPr Me
  loc_99D436: MemLdPr RsFrm
  loc_99D439:  = Me.EOF
  loc_99D43E: FLdI2 var_86
  loc_99D441: NotI4
  loc_99D442: FLdRfVar var_8C
  loc_99D445: FLdPr Me
  loc_99D448: MemLdPr RsFrm
  loc_99D44B:  = Me.RecordCount
  loc_99D450: ILdRf var_8C
  loc_99D453: LitI4 0
  loc_99D458: GtI4
  loc_99D459: AndI4
  loc_99D45A: BranchF loc_99D468
  loc_99D45D: FLdPr Me
  loc_99D460: MemLdPr RsFrm
  loc_99D463: Me.MoveNext
  loc_99D468: FLdRfVar var_86
  loc_99D46B: FLdPr Me
  loc_99D46E: MemLdPr RsFrm
  loc_99D471:  = Me.EOF
  loc_99D476: FLdI2 var_86
  loc_99D479: FLdRfVar var_8C
  loc_99D47C: FLdPr Me
  loc_99D47F: MemLdPr RsFrm
  loc_99D482:  = Me.RecordCount
  loc_99D487: ILdRf var_8C
  loc_99D48A: LitI4 0
  loc_99D48F: GtI4
  loc_99D490: AndI4
  loc_99D491: BranchF loc_99D4A4
  loc_99D494: ImpAdCallFPR4 Beep()
  loc_99D499: FLdPr Me
  loc_99D49C: MemLdPr RsFrm
  loc_99D49F: Me.MoveLast
  loc_99D4A4: ExitProcHresult
  loc_99D4A5: CBoolCy
  loc_99D4A6: MulR8
End Sub

Public Sub MoveSiguiente() '941CD8
  'Data Table: 42E90C
  loc_941CCC: FLdPr Me
  loc_941CCF: MemLdPr RsFrm
  loc_941CD2: Me.MoveNext
  loc_941CD7: ExitProcHresult
End Sub

Public Sub Move(iValor) '94922C
  'Data Table: 42E90C
  loc_949218: LitVar_Missing var_94
  loc_94921B: PopAdLdVar
  loc_94921C: ILdI2 iValor
  loc_94921F: CI4UI1
  loc_949220: FLdPr Me
  loc_949223: MemLdPr RsFrm
  loc_949226: Me.Move from_stack_1, from_stack_2
  loc_94922B: ExitProcHresult
End Sub

Public Sub MovePrevious() '99D6A0
  'Data Table: 42E90C
  loc_99D628: FLdRfVar var_86
  loc_99D62B: FLdPr Me
  loc_99D62E: MemLdPr RsFrm
  loc_99D631:  = Me.BOF
  loc_99D636: FLdI2 var_86
  loc_99D639: NotI4
  loc_99D63A: FLdRfVar var_8C
  loc_99D63D: FLdPr Me
  loc_99D640: MemLdPr RsFrm
  loc_99D643:  = Me.RecordCount
  loc_99D648: ILdRf var_8C
  loc_99D64B: LitI4 0
  loc_99D650: GtI4
  loc_99D651: AndI4
  loc_99D652: BranchF loc_99D660
  loc_99D655: FLdPr Me
  loc_99D658: MemLdPr RsFrm
  loc_99D65B: Me.MovePrevious
  loc_99D660: FLdRfVar var_86
  loc_99D663: FLdPr Me
  loc_99D666: MemLdPr RsFrm
  loc_99D669:  = Me.BOF
  loc_99D66E: FLdI2 var_86
  loc_99D671: FLdRfVar var_8C
  loc_99D674: FLdPr Me
  loc_99D677: MemLdPr RsFrm
  loc_99D67A:  = Me.RecordCount
  loc_99D67F: ILdRf var_8C
  loc_99D682: LitI4 0
  loc_99D687: GtI4
  loc_99D688: AndI4
  loc_99D689: BranchF loc_99D69C
  loc_99D68C: ImpAdCallFPR4 Beep()
  loc_99D691: FLdPr Me
  loc_99D694: MemLdPr RsFrm
  loc_99D697: Me.MoveFirst
  loc_99D69C: ExitProcHresult
End Sub

Public Property Get EOF() '95B9D4
  'Data Table: 42E90C
  loc_95B9B8: FLdRfVar var_88
  loc_95B9BB: FLdPr Me
  loc_95B9BE: MemLdPr RsFrm
  loc_95B9C1:  = Me.EOF
  loc_95B9C6: FLdI2 var_88
  loc_95B9C9: FStI2 var_86
  loc_95B9CC: ExitProcCbHresult
End Sub

Public Property Get BOF() '95B93C
  'Data Table: 42E90C
  loc_95B920: FLdRfVar var_88
  loc_95B923: FLdPr Me
  loc_95B926: MemLdPr RsFrm
  loc_95B929:  = Me.BOF
  loc_95B92E: FLdI2 var_88
  loc_95B931: FStI2 var_86
  loc_95B934: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '945944
  'Data Table: 42E90C
  loc_945934: ILdI4 sOrden
  loc_945937: FLdPr Me
  loc_94593A: MemLdPr RsFrm
  loc_94593D: Me.Sort = from_stack_1
  loc_945942: ExitProcHresult
End Sub

Public Sub Find(sFind) '968D40
  'Data Table: 42E90C
  loc_968D20: LitVar_Missing var_94
  loc_968D23: PopAdLdVar
  loc_968D24: LitI4 1
  loc_968D29: LitI4 0
  loc_968D2E: ILdI4 sFind
  loc_968D31: FLdPr Me
  loc_968D34: MemLdPr RsFrm
  loc_968D37: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968D3C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '97C110
  'Data Table: 42E90C
  loc_97C0DC: LitI4 0
  loc_97C0E1: LitI4 -1
  loc_97C0E6: LitI4 1
  loc_97C0EB: LitStr " "
  loc_97C0EE: LitStr "*"
  loc_97C0F1: ILdI4 sCriterio
  loc_97C0F4: ImpAdCallI2 Replace(, , , , , )
  loc_97C0F9: IStStr
  loc_97C0FD: ILdI4 sCriterio
  loc_97C100: CVarStr var_94
  loc_97C103: PopAdLdVar
  loc_97C104: FLdPr Me
  loc_97C107: MemLdPr RsFrm
  loc_97C10A: Me.Filter = from_stack_1
  loc_97C10F: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95B80C
  'Data Table: 42E90C
  loc_95B7F0: FLdRfVar var_8C
  loc_95B7F3: FLdPr Me
  loc_95B7F6: MemLdPr RsFrm
  loc_95B7F9:  = Me.AbsolutePosition
  loc_95B7FE: ILdRf var_8C
  loc_95B801: FStR4 var_88
  loc_95B804: ExitProcCbHresult
  loc_95B80A: LeI2
End Sub

Public Property Get RecordCount() '95B7C0
  'Data Table: 42E90C
  loc_95B7A4: FLdRfVar var_8C
  loc_95B7A7: FLdPr Me
  loc_95B7AA: MemLdPr RsFrm
  loc_95B7AD:  = Me.RecordCount
  loc_95B7B2: ILdRf var_8C
  loc_95B7B5: FStR4 var_88
  loc_95B7B8: ExitProcCbHresult
  loc_95B7BE: FStR8 var_6C00
End Sub

Public Property Get Bookmark() '96E2DC
  'Data Table: 42E90C
  loc_96E2BC: ZeroRetValVar
  loc_96E2BE: FLdRfVar var_A4
  loc_96E2C1: FLdPr Me
  loc_96E2C4: MemLdPr RsFrm
  loc_96E2C7:  = Me.Bookmark
  loc_96E2CC: FLdRfVar var_A4
  loc_96E2CF: FStVar Bookmark
  loc_96E2D3: ExitProcCbHresult
End Sub

Public Property Let Bookmark(Marca) '95B770
  'Data Table: 42E90C
  loc_95B758: FDupVar
  loc_95B75E: FLdVar var_94
  loc_95B762: FLdPr Me
  loc_95B765: MemLdPr RsFrm
  loc_95B768: Me.Bookmark = from_stack_1
  loc_95B76D: ExitProcHresult
  loc_95B76E: AryLock
End Sub

Public Function ValidaClave(CodiNope) '99B41C
  'Data Table: 42E90C
  loc_99B3C0: ZeroRetVal
  loc_99B3C2: LitStr "SELECT PeriInfo FROM notapedido WHERE PeriInfo = "
  loc_99B3C5: ImpAdLdI2 MemVar_C3D064
  loc_99B3C8: CStrUI1
  loc_99B3CA: FStStrNoPop var_8C
  loc_99B3CD: ConcatStr
  loc_99B3CE: FStStrNoPop var_90
  loc_99B3D1: LitStr " AND CodiNope = "
  loc_99B3D4: ConcatStr
  loc_99B3D5: FStStrNoPop ValidaClave
  loc_99B3D8: ILdRf CodiNope
  loc_99B3DB: CStrI4
  loc_99B3DD: FStStrNoPop var_98
  loc_99B3E0: ConcatStr
  loc_99B3E1: FStStrNoPop var_9C
  loc_99B3E4: Call EjecutarRsCls(from_stack_1v)
  loc_99B3E9: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_99B3F6: FLdRfVar var_A0
  loc_99B3F9: FLdPr Me
  loc_99B3FC: MemLdPr global_56
  loc_99B3FF:  = Me.RecordCount
  loc_99B404: ILdRf var_A0
  loc_99B407: LitI4 0
  loc_99B40C: GtI4
  loc_99B40D: BranchF loc_99B416
  loc_99B410: LitStr "La Nota de Pedido YA EXISTE. Reintente..."
  loc_99B413: FStStrCopy var_88
  loc_99B416: ExitProcCbHresult
End Function

Public Sub Encontrar(CodiNope) '9BE478
  'Data Table: 42E90C
  loc_9BE3C4: On Error Resume Next
  loc_9BE3C9: ILdRf CodiNope
  loc_9BE3CC: LitI4 0
  loc_9BE3D1: EqI4
  loc_9BE3D2: FLdRfVar var_88
  loc_9BE3D5: FLdPr Me
  loc_9BE3D8: MemLdPr RsFrm
  loc_9BE3DB:  = Me.RecordCount
  loc_9BE3E0: ILdRf var_88
  loc_9BE3E3: LitI4 0
  loc_9BE3E8: GtI4
  loc_9BE3E9: AndI4
  loc_9BE3EA: FLdRfVar var_8C
  loc_9BE3ED: FLdPr Me
  loc_9BE3F0: MemLdPr RsFrm
  loc_9BE3F3:  = Me.AbsolutePosition
  loc_9BE3F8: ILdRf var_8C
  loc_9BE3FB: LitI4 -3
  loc_9BE400: NeI4
  loc_9BE401: AndI4
  loc_9BE402: BranchF loc_9BE443
  loc_9BE407: FLdRfVar var_B4
  loc_9BE40A: FLdRfVar var_A4
  loc_9BE40D: LitVarStr var_A0, "CodiNope"
  loc_9BE412: PopAdLdVar
  loc_9BE413: FLdRfVar var_90
  loc_9BE416: FLdPr Me
  loc_9BE419: MemLdPr RsFrm
  loc_9BE41C:  = Me.Fields
  loc_9BE421: FLdPr var_90
  loc_9BE424: from_stack_2 = Me.Item(from_stack_1)
  loc_9BE429: FLdPr var_A4
  loc_9BE42C:  = Me.Value
  loc_9BE431: FLdRfVar var_B4
  loc_9BE434: CI4Var
  loc_9BE436: FStR4 CodiNope
  loc_9BE439: FFreeAd var_90 = ""
  loc_9BE440: FFree1Var var_B4 = ""
  loc_9BE447: Call Requery()
  loc_9BE44E: LitStr "CodiNope = '"
  loc_9BE451: ILdRf CodiNope
  loc_9BE454: CStrI4
  loc_9BE456: FStStrNoPop var_B8
  loc_9BE459: ConcatStr
  loc_9BE45A: FStStrNoPop var_BC
  loc_9BE45D: LitStr "'"
  loc_9BE460: ConcatStr
  loc_9BE461: PopTmpLdAdStr
  loc_9BE465: Call Find(from_stack_1v)
  loc_9BE46A: FFreeStr var_B8 = "": var_BC = ""
  loc_9BE475: ExitProcHresult
End Sub

Public Function AddNew(IdRubro, IdUbfi, DienNope, CoinNope, CodiOrga, DetaNope, DetaNope2, CodiTico, ExpeImpu, FechNope, FecoNope, FecoHora, PubliNope, FeliNope, HoliNope, FeleNope, HoleNope, ItemNotaFlex) 'BB5BDC
  'Data Table: 42E90C
  loc_BB4CB0: ILdRf IdRubro
  loc_BB4CB3: FStStrCopy var_8C
  loc_BB4CB6: ILdRf IdUbfi
  loc_BB4CB9: FStStrCopy var_90
  loc_BB4CBC: ILdRf DienNope
  loc_BB4CBF: FStStrCopy AddNew
  loc_BB4CC2: ILdRf CoinNope
  loc_BB4CC5: FStStrCopy var_98
  loc_BB4CC8: ILdRf CodiOrga
  loc_BB4CCB: FStStrCopy var_9C
  loc_BB4CCE: ILdRf DetaNope
  loc_BB4CD1: FStStrCopy var_A0
  loc_BB4CD4: ILdRf DetaNope2
  loc_BB4CD7: FStStrCopy var_A4
  loc_BB4CDA: ILdRf ExpeImpu
  loc_BB4CDD: FStStrCopy var_A8
  loc_BB4CE0: ILdRf FechNope
  loc_BB4CE3: FStStrCopy var_AC
  loc_BB4CE6: ILdRf FecoNope
  loc_BB4CE9: FStStrCopy var_B0
  loc_BB4CEC: ILdRf FecoHora
  loc_BB4CEF: FStStrCopy var_B4
  loc_BB4CF2: ILdRf AddNew0
  loc_BB4CF5: FStStrCopy var_B8
  loc_BB4CF8: ILdRf AddNew4
  loc_BB4CFB: FStStrCopy var_BC
  loc_BB4CFE: ILdRf AddNew8
  loc_BB4D01: FStStrCopy var_C0
  loc_BB4D04: ILdRf AddNewC
  loc_BB4D07: FStStrCopy var_C4
  loc_BB4D0A: LitStr "SELECT IFNULL(Max(CodiNope),0) + 1 CodiNope"
  loc_BB4D0D: LitStr " FROM notapedido"
  loc_BB4D10: ConcatStr
  loc_BB4D11: FStStrNoPop var_E8
  loc_BB4D14: LitStr " WHERE PeriInfo = "
  loc_BB4D17: ConcatStr
  loc_BB4D18: FStStrNoPop var_EC
  loc_BB4D1B: ImpAdLdI2 MemVar_C3D064
  loc_BB4D1E: CStrUI1
  loc_BB4D20: FStStrNoPop var_F0
  loc_BB4D23: ConcatStr
  loc_BB4D24: FStStrNoPop var_F4
  loc_BB4D27: LitStr ";"
  loc_BB4D2A: ConcatStr
  loc_BB4D2B: FStStrNoPop var_F8
  loc_BB4D2E: Call EjecutarRsCls(from_stack_1v)
  loc_BB4D33: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BB4D40: FLdRfVar var_120
  loc_BB4D43: FLdRfVar var_110
  loc_BB4D46: LitVarStr var_10C, "CodiNope"
  loc_BB4D4B: PopAdLdVar
  loc_BB4D4C: FLdRfVar var_FC
  loc_BB4D4F: FLdPr Me
  loc_BB4D52: MemLdPr global_56
  loc_BB4D55:  = Me.Fields
  loc_BB4D5A: FLdPr var_FC
  loc_BB4D5D: from_stack_2 = Me.Item(from_stack_1)
  loc_BB4D62: FLdPr var_110
  loc_BB4D65:  = Me.Value
  loc_BB4D6A: FLdRfVar var_120
  loc_BB4D6D: CI4Var
  loc_BB4D6F: FStR4 var_88
  loc_BB4D72: FFreeAd var_FC = ""
  loc_BB4D79: FFree1Var var_120 = ""
  loc_BB4D7C: LitStr "START TRANSACTION; "
  loc_BB4D7F: FStStrCopy var_DC
  loc_BB4D82: OnErrorGoto loc_BB5BB8
  loc_BB4D85: ILdRf var_A4
  loc_BB4D88: LitStr vbNullString
  loc_BB4D8B: NeStr
  loc_BB4D8D: BranchF loc_BB50A7
  loc_BB4D90: FLdRfVar var_B0
  loc_BB4D93: CVarRef
  loc_BB4D98: ImpAdCallI2 IsDate()
  loc_BB4D9D: FStI2 var_4F2
  loc_BB4DA0: LitI4 1
  loc_BB4DA5: LitI4 1
  loc_BB4DAA: LitVarStr var_1C4, "'yyyy-mm-dd"
  loc_BB4DAF: FStVarCopyObj var_1D4
  loc_BB4DB2: FLdRfVar var_1D4
  loc_BB4DB5: FLdRfVar var_B0
  loc_BB4DB8: CVarRef
  loc_BB4DBD: ImpAdCallI2 Format$(, )
  loc_BB4DC2: FStStr var_4F8
  loc_BB4DC5: FLdRfVar var_B8
  loc_BB4DC8: CVarRef
  loc_BB4DCD: ImpAdCallI2 IsDate()
  loc_BB4DD2: FStI2 var_4FA
  loc_BB4DD5: LitI4 1
  loc_BB4DDA: LitI4 1
  loc_BB4DDF: LitVarStr var_2E0, " 'yyyy-mm-dd'"
  loc_BB4DE4: FStVarCopyObj var_2F0
  loc_BB4DE7: FLdRfVar var_2F0
  loc_BB4DEA: FLdRfVar var_B8
  loc_BB4DED: CVarRef
  loc_BB4DF2: ImpAdCallI2 Format$(, )
  loc_BB4DF7: FStStr var_500
  loc_BB4DFA: FLdRfVar var_C0
  loc_BB4DFD: CVarRef
  loc_BB4E02: ImpAdCallI2 IsDate()
  loc_BB4E07: FStI2 var_502
  loc_BB4E0A: LitI4 1
  loc_BB4E0F: LitI4 1
  loc_BB4E14: LitVarStr var_3E0, "'yyyy-mm-dd'"
  loc_BB4E19: FStVarCopyObj var_3F0
  loc_BB4E1C: FLdRfVar var_3F0
  loc_BB4E1F: FLdRfVar var_C0
  loc_BB4E22: CVarRef
  loc_BB4E27: ImpAdCallI2 Format$(, )
  loc_BB4E2C: FStStr var_508
  loc_BB4E2F: ILdRf var_DC
  loc_BB4E32: LitStr "INSERT INTO notapedido (PeriInfo,CodiNope,IdRubro,IdUbfi,DienNope,CoinNope,CodiOrga,DetaNope,DetaNope2,CodiTico,ExpeImpu,FechNope,FecoNope,PubliNope,FeliNope,HoliNope,FeleNope,HoleNope,AltaUsua)"
  loc_BB4E35: ConcatStr
  loc_BB4E36: FStStrNoPop var_E8
  loc_BB4E39: LitStr " VALUES ("
  loc_BB4E3C: ConcatStr
  loc_BB4E3D: FStStrNoPop var_EC
  loc_BB4E40: ImpAdLdI2 MemVar_C3D064
  loc_BB4E43: CStrUI1
  loc_BB4E45: FStStrNoPop var_F0
  loc_BB4E48: ConcatStr
  loc_BB4E49: FStStrNoPop var_F4
  loc_BB4E4C: LitStr ","
  loc_BB4E4F: ConcatStr
  loc_BB4E50: FStStrNoPop var_F8
  loc_BB4E53: ILdRf var_88
  loc_BB4E56: CStrI4
  loc_BB4E58: FStStrNoPop var_124
  loc_BB4E5B: ConcatStr
  loc_BB4E5C: FStStrNoPop var_128
  loc_BB4E5F: LitStr ","
  loc_BB4E62: ConcatStr
  loc_BB4E63: FStStrNoPop var_12C
  loc_BB4E66: ILdRf var_8C
  loc_BB4E69: ConcatStr
  loc_BB4E6A: FStStrNoPop var_130
  loc_BB4E6D: LitStr ","
  loc_BB4E70: ConcatStr
  loc_BB4E71: FStStrNoPop var_134
  loc_BB4E74: ILdRf var_90
  loc_BB4E77: ConcatStr
  loc_BB4E78: FStStrNoPop var_138
  loc_BB4E7B: LitStr ",'"
  loc_BB4E7E: ConcatStr
  loc_BB4E7F: FStStrNoPop var_13C
  loc_BB4E82: ILdRf AddNew
  loc_BB4E85: ConcatStr
  loc_BB4E86: FStStrNoPop var_140
  loc_BB4E89: LitStr "',"
  loc_BB4E8C: ConcatStr
  loc_BB4E8D: FStStrNoPop var_144
  loc_BB4E90: ILdRf var_98
  loc_BB4E93: ConcatStr
  loc_BB4E94: FStStrNoPop var_148
  loc_BB4E97: LitStr ",'"
  loc_BB4E9A: ConcatStr
  loc_BB4E9B: FStStrNoPop var_14C
  loc_BB4E9E: ILdRf var_9C
  loc_BB4EA1: ConcatStr
  loc_BB4EA2: FStStrNoPop var_150
  loc_BB4EA5: LitStr "','"
  loc_BB4EA8: ConcatStr
  loc_BB4EA9: FStStrNoPop var_154
  loc_BB4EAC: ILdRf var_A0
  loc_BB4EAF: ConcatStr
  loc_BB4EB0: FStStrNoPop var_158
  loc_BB4EB3: LitStr "','"
  loc_BB4EB6: ConcatStr
  loc_BB4EB7: FStStrNoPop var_15C
  loc_BB4EBA: ILdRf var_A4
  loc_BB4EBD: ConcatStr
  loc_BB4EBE: FStStrNoPop var_160
  loc_BB4EC1: LitStr "',"
  loc_BB4EC4: ConcatStr
  loc_BB4EC5: FStStrNoPop var_164
  loc_BB4EC8: FLdI2 CodiTico
  loc_BB4ECB: CStrUI1
  loc_BB4ECD: FStStrNoPop var_168
  loc_BB4ED0: ConcatStr
  loc_BB4ED1: FStStrNoPop var_16C
  loc_BB4ED4: LitStr ",'"
  loc_BB4ED7: ConcatStr
  loc_BB4ED8: FStStrNoPop var_170
  loc_BB4EDB: ILdRf var_A8
  loc_BB4EDE: ImpAdCallI2 Trim$()
  loc_BB4EE3: FStStrNoPop var_174
  loc_BB4EE6: ConcatStr
  loc_BB4EE7: FStStrNoPop var_178
  loc_BB4EEA: LitStr "',"
  loc_BB4EED: ConcatStr
  loc_BB4EEE: FStStrNoPop var_18C
  loc_BB4EF1: LitI4 1
  loc_BB4EF6: LitI4 1
  loc_BB4EFB: LitVarStr var_188, "'yyyy-mm-dd'"
  loc_BB4F00: FStVarCopyObj var_120
  loc_BB4F03: FLdRfVar var_120
  loc_BB4F06: FLdRfVar var_AC
  loc_BB4F09: CVarRef
  loc_BB4F0E: ImpAdCallI2 Format$(, )
  loc_BB4F13: FStStrNoPop var_190
  loc_BB4F16: ConcatStr
  loc_BB4F17: FStStrNoPop var_194
  loc_BB4F1A: LitStr ","
  loc_BB4F1D: ConcatStr
  loc_BB4F1E: CVarStr var_240
  loc_BB4F21: LitVarStr var_210, "Null"
  loc_BB4F26: FStVarCopyObj var_220
  loc_BB4F29: FLdRfVar var_220
  loc_BB4F2C: FLdZeroAd var_4F8
  loc_BB4F2F: FStStrNoPop var_1D8
  loc_BB4F32: LitStr " "
  loc_BB4F35: ConcatStr
  loc_BB4F36: FStStrNoPop var_1DC
  loc_BB4F39: ILdRf var_B4
  loc_BB4F3C: ConcatStr
  loc_BB4F3D: FStStrNoPop var_1E0
  loc_BB4F40: LitStr ":00'"
  loc_BB4F43: ConcatStr
  loc_BB4F44: CVarStr var_200
  loc_BB4F47: FLdI2 var_4F2
  loc_BB4F4A: CVarBoolI2 var_1F0
  loc_BB4F4E: FLdRfVar var_230
  loc_BB4F51: ImpAdCallFPR4  = IIf(, , )
  loc_BB4F56: FLdRfVar var_230
  loc_BB4F59: ConcatVar var_250
  loc_BB4F5D: LitVarStr var_260, ", "
  loc_BB4F62: ConcatVar var_270
  loc_BB4F66: FLdUI1
  loc_BB4F6A: CVarUI1
  loc_BB4F6E: ConcatVar var_290
  loc_BB4F72: LitVarStr var_2A0, ", "
  loc_BB4F77: ConcatVar var_2B0
  loc_BB4F7B: LitVarStr var_320, "Null"
  loc_BB4F80: FStVarCopyObj var_330
  loc_BB4F83: FLdRfVar var_330
  loc_BB4F86: FLdZeroAd var_500
  loc_BB4F89: CVarStr var_310
  loc_BB4F8C: FLdI2 var_4FA
  loc_BB4F8F: CVarBoolI2 var_300
  loc_BB4F93: FLdRfVar var_340
  loc_BB4F96: ImpAdCallFPR4  = IIf(, , )
  loc_BB4F9B: FLdRfVar var_340
  loc_BB4F9E: ConcatVar var_350
  loc_BB4FA2: LitVarStr var_360, ",'"
  loc_BB4FA7: ConcatVar var_370
  loc_BB4FAB: ILdRf var_BC
  loc_BB4FAE: CVarStr var_380
  loc_BB4FB1: ConcatVar var_390
  loc_BB4FB5: LitVarStr var_3A0, "',"
  loc_BB4FBA: ConcatVar var_3B0
  loc_BB4FBE: LitVarStr var_420, "Null"
  loc_BB4FC3: FStVarCopyObj var_430
  loc_BB4FC6: FLdRfVar var_430
  loc_BB4FC9: FLdZeroAd var_508
  loc_BB4FCC: CVarStr var_410
  loc_BB4FCF: FLdI2 var_502
  loc_BB4FD2: CVarBoolI2 var_400
  loc_BB4FD6: FLdRfVar var_440
  loc_BB4FD9: ImpAdCallFPR4  = IIf(, , )
  loc_BB4FDE: FLdRfVar var_440
  loc_BB4FE1: ConcatVar var_450
  loc_BB4FE5: LitVarStr var_460, ",'"
  loc_BB4FEA: ConcatVar var_470
  loc_BB4FEE: ILdRf var_C4
  loc_BB4FF1: CVarStr var_480
  loc_BB4FF4: ConcatVar var_490
  loc_BB4FF8: LitVarStr var_4A0, "','"
  loc_BB4FFD: ConcatVar var_4B0
  loc_BB5001: ImpAdLdI4 MemVar_C3D03C
  loc_BB5004: CVarStr var_4C0
  loc_BB5007: ConcatVar var_4D0
  loc_BB500B: LitVarStr var_4E0, "');"
  loc_BB5010: ConcatVar var_4F0
  loc_BB5014: CStrVarTmp
  loc_BB5015: FStStr var_DC
  loc_BB5018: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_4F8 = "": var_500 = "": var_508 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_18C = "": var_190 = ""
  loc_BB5063: FFreeVar var_4F0 = "": var_120 = "": var_1D4 = "": var_1F0 = "": var_200 = "": var_220 = "": var_240 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2F0 = "": var_300 = "": var_310 = "": var_330 = "": var_2B0 = "": var_340 = "": var_350 = "": var_370 = "": var_390 = "": var_3F0 = "": var_400 = "": var_410 = "": var_430 = "": var_3B0 = "": var_440 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = ""
  loc_BB50A4: Branch loc_BB53A9
  loc_BB50A7: FLdRfVar var_B0
  loc_BB50AA: CVarRef
  loc_BB50AF: ImpAdCallI2 IsDate()
  loc_BB50B4: FStI2 var_4F2
  loc_BB50B7: LitI4 1
  loc_BB50BC: LitI4 1
  loc_BB50C1: LitVarStr var_1C4, "'yyyy-mm-dd"
  loc_BB50C6: FStVarCopyObj var_1D4
  loc_BB50C9: FLdRfVar var_1D4
  loc_BB50CC: FLdRfVar var_B0
  loc_BB50CF: CVarRef
  loc_BB50D4: ImpAdCallI2 Format$(, )
  loc_BB50D9: FStStr var_1DC
  loc_BB50DC: FLdRfVar var_B8
  loc_BB50DF: CVarRef
  loc_BB50E4: ImpAdCallI2 IsDate()
  loc_BB50E9: FStI2 var_4FA
  loc_BB50EC: LitI4 1
  loc_BB50F1: LitI4 1
  loc_BB50F6: LitVarStr var_2E0, " 'yyyy-mm-dd'"
  loc_BB50FB: FStVarCopyObj var_2F0
  loc_BB50FE: FLdRfVar var_2F0
  loc_BB5101: FLdRfVar var_B8
  loc_BB5104: CVarRef
  loc_BB5109: ImpAdCallI2 Format$(, )
  loc_BB510E: FStStr var_1E0
  loc_BB5111: FLdRfVar var_C0
  loc_BB5114: CVarRef
  loc_BB5119: ImpAdCallI2 IsDate()
  loc_BB511E: FStI2 var_502
  loc_BB5121: LitI4 1
  loc_BB5126: LitI4 1
  loc_BB512B: LitVarStr var_3E0, "'yyyy-mm-dd'"
  loc_BB5130: FStVarCopyObj var_3F0
  loc_BB5133: FLdRfVar var_3F0
  loc_BB5136: FLdRfVar var_C0
  loc_BB5139: CVarRef
  loc_BB513E: ImpAdCallI2 Format$(, )
  loc_BB5143: FStStr var_4F8
  loc_BB5146: ILdRf var_DC
  loc_BB5149: LitStr "INSERT INTO notapedido (PeriInfo,CodiNope,IdRubro,IdUbfi,DienNope,CoinNope,CodiOrga,DetaNope,CodiTico,ExpeImpu,FechNope,FecoNope,PubliNope,FeliNope,HoliNope,FeleNope,HoleNope,AltaUsua)"
  loc_BB514C: ConcatStr
  loc_BB514D: FStStrNoPop var_E8
  loc_BB5150: LitStr " VALUES ("
  loc_BB5153: ConcatStr
  loc_BB5154: FStStrNoPop var_EC
  loc_BB5157: ImpAdLdI2 MemVar_C3D064
  loc_BB515A: CStrUI1
  loc_BB515C: FStStrNoPop var_F0
  loc_BB515F: ConcatStr
  loc_BB5160: FStStrNoPop var_F4
  loc_BB5163: LitStr ","
  loc_BB5166: ConcatStr
  loc_BB5167: FStStrNoPop var_F8
  loc_BB516A: ILdRf var_88
  loc_BB516D: CStrI4
  loc_BB516F: FStStrNoPop var_124
  loc_BB5172: ConcatStr
  loc_BB5173: FStStrNoPop var_128
  loc_BB5176: LitStr ","
  loc_BB5179: ConcatStr
  loc_BB517A: FStStrNoPop var_12C
  loc_BB517D: ILdRf var_8C
  loc_BB5180: ConcatStr
  loc_BB5181: FStStrNoPop var_130
  loc_BB5184: LitStr ","
  loc_BB5187: ConcatStr
  loc_BB5188: FStStrNoPop var_134
  loc_BB518B: ILdRf var_90
  loc_BB518E: ConcatStr
  loc_BB518F: FStStrNoPop var_138
  loc_BB5192: LitStr ",'"
  loc_BB5195: ConcatStr
  loc_BB5196: FStStrNoPop var_13C
  loc_BB5199: ILdRf AddNew
  loc_BB519C: ConcatStr
  loc_BB519D: FStStrNoPop var_140
  loc_BB51A0: LitStr "',"
  loc_BB51A3: ConcatStr
  loc_BB51A4: FStStrNoPop var_144
  loc_BB51A7: ILdRf var_98
  loc_BB51AA: ConcatStr
  loc_BB51AB: FStStrNoPop var_148
  loc_BB51AE: LitStr ",'"
  loc_BB51B1: ConcatStr
  loc_BB51B2: FStStrNoPop var_14C
  loc_BB51B5: ILdRf var_9C
  loc_BB51B8: ConcatStr
  loc_BB51B9: FStStrNoPop var_150
  loc_BB51BC: LitStr "','"
  loc_BB51BF: ConcatStr
  loc_BB51C0: FStStrNoPop var_154
  loc_BB51C3: ILdRf var_A0
  loc_BB51C6: ConcatStr
  loc_BB51C7: FStStrNoPop var_158
  loc_BB51CA: LitStr "',"
  loc_BB51CD: ConcatStr
  loc_BB51CE: FStStrNoPop var_15C
  loc_BB51D1: FLdI2 CodiTico
  loc_BB51D4: CStrUI1
  loc_BB51D6: FStStrNoPop var_160
  loc_BB51D9: ConcatStr
  loc_BB51DA: FStStrNoPop var_164
  loc_BB51DD: LitStr ",'"
  loc_BB51E0: ConcatStr
  loc_BB51E1: FStStrNoPop var_168
  loc_BB51E4: ILdRf var_A8
  loc_BB51E7: ImpAdCallI2 Trim$()
  loc_BB51EC: FStStrNoPop var_16C
  loc_BB51EF: ConcatStr
  loc_BB51F0: FStStrNoPop var_170
  loc_BB51F3: LitStr "',"
  loc_BB51F6: ConcatStr
  loc_BB51F7: FStStrNoPop var_174
  loc_BB51FA: LitI4 1
  loc_BB51FF: LitI4 1
  loc_BB5204: LitVarStr var_188, "'yyyy-mm-dd'"
  loc_BB5209: FStVarCopyObj var_120
  loc_BB520C: FLdRfVar var_120
  loc_BB520F: FLdRfVar var_AC
  loc_BB5212: CVarRef
  loc_BB5217: ImpAdCallI2 Format$(, )
  loc_BB521C: FStStrNoPop var_178
  loc_BB521F: ConcatStr
  loc_BB5220: FStStrNoPop var_18C
  loc_BB5223: LitStr ","
  loc_BB5226: ConcatStr
  loc_BB5227: CVarStr var_240
  loc_BB522A: LitVarStr var_210, "Null"
  loc_BB522F: FStVarCopyObj var_220
  loc_BB5232: FLdRfVar var_220
  loc_BB5235: FLdZeroAd var_1DC
  loc_BB5238: FStStrNoPop var_190
  loc_BB523B: LitStr " "
  loc_BB523E: ConcatStr
  loc_BB523F: FStStrNoPop var_194
  loc_BB5242: ILdRf var_B4
  loc_BB5245: ConcatStr
  loc_BB5246: FStStrNoPop var_1D8
  loc_BB5249: LitStr ":00'"
  loc_BB524C: ConcatStr
  loc_BB524D: CVarStr var_200
  loc_BB5250: FLdI2 var_4F2
  loc_BB5253: CVarBoolI2 var_1F0
  loc_BB5257: FLdRfVar var_230
  loc_BB525A: ImpAdCallFPR4  = IIf(, , )
  loc_BB525F: FLdRfVar var_230
  loc_BB5262: ConcatVar var_250
  loc_BB5266: LitVarStr var_260, ", "
  loc_BB526B: ConcatVar var_270
  loc_BB526F: FLdUI1
  loc_BB5273: CVarUI1
  loc_BB5277: ConcatVar var_290
  loc_BB527B: LitVarStr var_2A0, ", "
  loc_BB5280: ConcatVar var_2B0
  loc_BB5284: LitVarStr var_320, "Null"
  loc_BB5289: FStVarCopyObj var_330
  loc_BB528C: FLdRfVar var_330
  loc_BB528F: FLdZeroAd var_1E0
  loc_BB5292: CVarStr var_310
  loc_BB5295: FLdI2 var_4FA
  loc_BB5298: CVarBoolI2 var_300
  loc_BB529C: FLdRfVar var_340
  loc_BB529F: ImpAdCallFPR4  = IIf(, , )
  loc_BB52A4: FLdRfVar var_340
  loc_BB52A7: ConcatVar var_350
  loc_BB52AB: LitVarStr var_360, ",'"
  loc_BB52B0: ConcatVar var_370
  loc_BB52B4: ILdRf var_BC
  loc_BB52B7: CVarStr var_380
  loc_BB52BA: ConcatVar var_390
  loc_BB52BE: LitVarStr var_3A0, "',"
  loc_BB52C3: ConcatVar var_3B0
  loc_BB52C7: LitVarStr var_420, "Null"
  loc_BB52CC: FStVarCopyObj var_430
  loc_BB52CF: FLdRfVar var_430
  loc_BB52D2: FLdZeroAd var_4F8
  loc_BB52D5: CVarStr var_410
  loc_BB52D8: FLdI2 var_502
  loc_BB52DB: CVarBoolI2 var_400
  loc_BB52DF: FLdRfVar var_440
  loc_BB52E2: ImpAdCallFPR4  = IIf(, , )
  loc_BB52E7: FLdRfVar var_440
  loc_BB52EA: ConcatVar var_450
  loc_BB52EE: LitVarStr var_460, ",'"
  loc_BB52F3: ConcatVar var_470
  loc_BB52F7: ILdRf var_C4
  loc_BB52FA: CVarStr var_480
  loc_BB52FD: ConcatVar var_490
  loc_BB5301: LitVarStr var_4A0, "','"
  loc_BB5306: ConcatVar var_4B0
  loc_BB530A: ImpAdLdI4 MemVar_C3D03C
  loc_BB530D: CVarStr var_4C0
  loc_BB5310: ConcatVar var_4D0
  loc_BB5314: LitVarStr var_4E0, "');"
  loc_BB5319: ConcatVar var_4F0
  loc_BB531D: CStrVarTmp
  loc_BB531E: FStStr var_DC
  loc_BB5321: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_4F8 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_18C = "": var_190 = ""
  loc_BB5368: FFreeVar var_4F0 = "": var_120 = "": var_1D4 = "": var_1F0 = "": var_200 = "": var_220 = "": var_240 = "": var_230 = "": var_250 = "": var_270 = "": var_290 = "": var_2F0 = "": var_300 = "": var_310 = "": var_330 = "": var_2B0 = "": var_340 = "": var_350 = "": var_370 = "": var_390 = "": var_3F0 = "": var_400 = "": var_410 = "": var_430 = "": var_3B0 = "": var_440 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = ""
  loc_BB53A9: LitI2_Byte 0
  loc_BB53AB: CR8I2
  loc_BB53AC: FStFPR8 var_D0
  loc_BB53AF: ILdRf var_DC
  loc_BB53B2: LitStr "INSERT INTO itemnota (PeriInfo,CodiNope,CodiItno,CodiInsu,DetaItno,CaraItno,CantItno,ImunItno,CodiPart,CodiOrga,CodiUnga,CodiFifu) VALUES "
  loc_BB53B5: ConcatStr
  loc_BB53B6: FStStr var_DC
  loc_BB53B9: LitI2_Byte 1
  loc_BB53BB: FLdRfVar var_C6
  loc_BB53BE: ILdPr
  loc_BB53C1: LateIdLdVar var_120 DispID_4 0
  loc_BB53C8: CI4Var
  loc_BB53CA: LitI4 1
  loc_BB53CF: SubI4
  loc_BB53D0: CI2I4
  loc_BB53D1: FFree1Var var_120 = ""
  loc_BB53D4: ForI2 var_50C
  loc_BB53DA: FLdI2 var_C6
  loc_BB53DD: CI4UI1
  loc_BB53DE: CVarI4
  loc_BB53E2: PopAdLdVar
  loc_BB53E3: LitVarI4
  loc_BB53EB: PopAdLdVar
  loc_BB53EC: ILdPr
  loc_BB53EF: LateIdCallLdVar
  loc_BB53F9: CStrVarTmp
  loc_BB53FA: FStStrNoPop var_E8
  loc_BB53FD: LitStr vbNullString
  loc_BB5400: NeStr
  loc_BB5402: FFree1Str var_E8
  loc_BB5405: FFree1Var var_120 = ""
  loc_BB5408: BranchF loc_BB585F
  loc_BB540B: FLdI2 var_C6
  loc_BB540E: CI4UI1
  loc_BB540F: CVarI4
  loc_BB5413: PopAdLdVar
  loc_BB5414: LitVarI4
  loc_BB541C: PopAdLdVar
  loc_BB541D: ILdPr
  loc_BB5420: LateIdCallLdVar
  loc_BB542A: CStrVarTmp
  loc_BB542B: FStStrNoPop var_E8
  loc_BB542E: ImpAdCallI2 Trim$()
  loc_BB5433: FStStr var_E0
  loc_BB5436: FFree1Str var_E8
  loc_BB5439: FFree1Var var_120 = ""
  loc_BB543C: LitI4 &H22
  loc_BB5441: FLdRfVar var_120
  loc_BB5444: ImpAdCallFPR4  = Chr()
  loc_BB5449: LitI4 0
  loc_BB544E: LitI4 -1
  loc_BB5453: LitI4 1
  loc_BB5458: LitStr vbNullString
  loc_BB545B: FLdRfVar var_120
  loc_BB545E: CStrVarVal var_E8
  loc_BB5462: ILdRf var_E0
  loc_BB5465: ImpAdCallI2 Replace(, , , , , )
  loc_BB546A: FStStr var_E0
  loc_BB546D: FFree1Str var_E8
  loc_BB5470: FFree1Var var_120 = ""
  loc_BB5473: LitI4 &H27
  loc_BB5478: FLdRfVar var_120
  loc_BB547B: ImpAdCallFPR4  = Chr()
  loc_BB5480: LitI4 0
  loc_BB5485: LitI4 -1
  loc_BB548A: LitI4 1
  loc_BB548F: LitStr vbNullString
  loc_BB5492: FLdRfVar var_120
  loc_BB5495: CStrVarVal var_E8
  loc_BB5499: ILdRf var_E0
  loc_BB549C: ImpAdCallI2 Replace(, , , , , )
  loc_BB54A1: FStStr var_E0
  loc_BB54A4: FFree1Str var_E8
  loc_BB54A7: FFree1Var var_120 = ""
  loc_BB54AA: FLdI2 var_C6
  loc_BB54AD: CI4UI1
  loc_BB54AE: CVarI4
  loc_BB54B2: PopAdLdVar
  loc_BB54B3: LitVarI4
  loc_BB54BB: PopAdLdVar
  loc_BB54BC: ILdPr
  loc_BB54BF: LateIdCallLdVar
  loc_BB54C9: CStrVarTmp
  loc_BB54CA: FStStrNoPop var_E8
  loc_BB54CD: ImpAdCallI2 Trim$()
  loc_BB54D2: FStStr var_E4
  loc_BB54D5: FFree1Str var_E8
  loc_BB54D8: FFree1Var var_120 = ""
  loc_BB54DB: LitI4 9
  loc_BB54E0: FLdRfVar var_120
  loc_BB54E3: ImpAdCallFPR4  = Chr()
  loc_BB54E8: LitI4 0
  loc_BB54ED: LitI4 -1
  loc_BB54F2: LitI4 1
  loc_BB54F7: LitStr vbNullString
  loc_BB54FA: FLdRfVar var_120
  loc_BB54FD: CStrVarVal var_E8
  loc_BB5501: ILdRf var_E4
  loc_BB5504: ImpAdCallI2 Replace(, , , , , )
  loc_BB5509: FStStr var_E4
  loc_BB550C: FFree1Str var_E8
  loc_BB550F: FFree1Var var_120 = ""
  loc_BB5512: LitI4 &H22
  loc_BB5517: FLdRfVar var_120
  loc_BB551A: ImpAdCallFPR4  = Chr()
  loc_BB551F: LitI4 0
  loc_BB5524: LitI4 -1
  loc_BB5529: LitI4 1
  loc_BB552E: LitStr vbNullString
  loc_BB5531: FLdRfVar var_120
  loc_BB5534: CStrVarVal var_E8
  loc_BB5538: ILdRf var_E4
  loc_BB553B: ImpAdCallI2 Replace(, , , , , )
  loc_BB5540: FStStr var_E4
  loc_BB5543: FFree1Str var_E8
  loc_BB5546: FFree1Var var_120 = ""
  loc_BB5549: LitI4 &H27
  loc_BB554E: FLdRfVar var_120
  loc_BB5551: ImpAdCallFPR4  = Chr()
  loc_BB5556: LitI4 0
  loc_BB555B: LitI4 -1
  loc_BB5560: LitI4 1
  loc_BB5565: LitStr vbNullString
  loc_BB5568: FLdRfVar var_120
  loc_BB556B: CStrVarVal var_E8
  loc_BB556F: ILdRf var_E4
  loc_BB5572: ImpAdCallI2 Replace(, , , , , )
  loc_BB5577: FStStr var_E4
  loc_BB557A: FFree1Str var_E8
  loc_BB557D: FFree1Var var_120 = ""
  loc_BB5580: FLdI2 var_C6
  loc_BB5583: CI4UI1
  loc_BB5584: CVarI4
  loc_BB5588: PopAdLdVar
  loc_BB5589: LitVarI4
  loc_BB5591: PopAdLdVar
  loc_BB5592: ILdPr
  loc_BB5595: LateIdCallLdVar
  loc_BB559F: PopAd
  loc_BB55A1: FLdI2 var_C6
  loc_BB55A4: CI4UI1
  loc_BB55A5: CVarI4
  loc_BB55A9: PopAdLdVar
  loc_BB55AA: LitVarI4
  loc_BB55B2: PopAdLdVar
  loc_BB55B3: ILdPr
  loc_BB55B6: LateIdCallLdVar
  loc_BB55C0: PopAd
  loc_BB55C2: ILdRf var_DC
  loc_BB55C5: LitStr "('"
  loc_BB55C8: ConcatStr
  loc_BB55C9: FStStrNoPop var_E8
  loc_BB55CC: ImpAdLdI2 MemVar_C3D064
  loc_BB55CF: CStrUI1
  loc_BB55D1: FStStrNoPop var_EC
  loc_BB55D4: ConcatStr
  loc_BB55D5: FStStrNoPop var_F0
  loc_BB55D8: LitStr "', '"
  loc_BB55DB: ConcatStr
  loc_BB55DC: FStStrNoPop var_F4
  loc_BB55DF: ILdRf var_88
  loc_BB55E2: CStrI4
  loc_BB55E4: FStStrNoPop var_F8
  loc_BB55E7: ConcatStr
  loc_BB55E8: FStStrNoPop var_124
  loc_BB55EB: LitStr "', '"
  loc_BB55EE: ConcatStr
  loc_BB55EF: FStStrNoPop var_128
  loc_BB55F2: FLdI2 var_C6
  loc_BB55F5: CStrUI1
  loc_BB55F7: FStStrNoPop var_12C
  loc_BB55FA: ConcatStr
  loc_BB55FB: FStStrNoPop var_130
  loc_BB55FE: LitStr "', '"
  loc_BB5601: ConcatStr
  loc_BB5602: FStStrNoPop var_134
  loc_BB5605: FLdI2 var_C6
  loc_BB5608: CI4UI1
  loc_BB5609: CVarI4
  loc_BB560D: PopAdLdVar
  loc_BB560E: LitVarI4
  loc_BB5616: PopAdLdVar
  loc_BB5617: ILdPr
  loc_BB561A: LateIdCallLdVar
  loc_BB5624: CStrVarTmp
  loc_BB5625: FStStrNoPop var_138
  loc_BB5628: ConcatStr
  loc_BB5629: FStStrNoPop var_13C
  loc_BB562C: LitStr "', '"
  loc_BB562F: ConcatStr
  loc_BB5630: FStStrNoPop var_140
  loc_BB5633: ILdRf var_E0
  loc_BB5636: ConcatStr
  loc_BB5637: FStStrNoPop var_144
  loc_BB563A: LitStr "', '"
  loc_BB563D: ConcatStr
  loc_BB563E: FStStrNoPop var_148
  loc_BB5641: ILdRf var_E4
  loc_BB5644: ConcatStr
  loc_BB5645: FStStrNoPop var_14C
  loc_BB5648: LitStr "',"
  loc_BB564B: ConcatStr
  loc_BB564C: FStStrNoPop var_154
  loc_BB564F: LitI4 0
  loc_BB5654: LitI4 -1
  loc_BB5659: LitI4 1
  loc_BB565E: LitStr "."
  loc_BB5661: LitStr ","
  loc_BB5664: FLdRfVar var_1D4
  loc_BB5667: CStrVarTmp
  loc_BB5668: FStStrNoPop var_150
  loc_BB566B: ImpAdCallI2 Replace(, , , , , )
  loc_BB5670: FStStrNoPop var_158
  loc_BB5673: ConcatStr
  loc_BB5674: FStStrNoPop var_15C
  loc_BB5677: LitStr ","
  loc_BB567A: ConcatStr
  loc_BB567B: FStStrNoPop var_164
  loc_BB567E: LitI4 0
  loc_BB5683: LitI4 -1
  loc_BB5688: LitI4 1
  loc_BB568D: LitStr "."
  loc_BB5690: LitStr ","
  loc_BB5693: FLdRfVar var_200
  loc_BB5696: CStrVarTmp
  loc_BB5697: FStStrNoPop var_160
  loc_BB569A: ImpAdCallI2 Replace(, , , , , )
  loc_BB569F: FStStrNoPop var_168
  loc_BB56A2: ConcatStr
  loc_BB56A3: FStStrNoPop var_16C
  loc_BB56A6: LitStr ", '"
  loc_BB56A9: ConcatStr
  loc_BB56AA: FStStrNoPop var_170
  loc_BB56AD: FLdI2 var_C6
  loc_BB56B0: CI4UI1
  loc_BB56B1: CVarI4
  loc_BB56B5: PopAdLdVar
  loc_BB56B6: LitVarI4
  loc_BB56BE: PopAdLdVar
  loc_BB56BF: ILdPr
  loc_BB56C2: LateIdCallLdVar
  loc_BB56CC: CStrVarTmp
  loc_BB56CD: FStStrNoPop var_174
  loc_BB56D0: ConcatStr
  loc_BB56D1: FStStrNoPop var_178
  loc_BB56D4: LitStr "', '"
  loc_BB56D7: ConcatStr
  loc_BB56D8: FStStrNoPop var_18C
  loc_BB56DB: FLdI2 var_C6
  loc_BB56DE: CI4UI1
  loc_BB56DF: CVarI4
  loc_BB56E3: PopAdLdVar
  loc_BB56E4: LitVarI4
  loc_BB56EC: PopAdLdVar
  loc_BB56ED: ILdPr
  loc_BB56F0: LateIdCallLdVar
  loc_BB56FA: CStrVarTmp
  loc_BB56FB: FStStrNoPop var_190
  loc_BB56FE: ConcatStr
  loc_BB56FF: FStStrNoPop var_194
  loc_BB5702: LitStr "', '"
  loc_BB5705: ConcatStr
  loc_BB5706: FStStrNoPop var_1D8
  loc_BB5709: FLdI2 var_C6
  loc_BB570C: CI4UI1
  loc_BB570D: CVarI4
  loc_BB5711: PopAdLdVar
  loc_BB5712: LitVarI4
  loc_BB571A: PopAdLdVar
  loc_BB571B: ILdPr
  loc_BB571E: LateIdCallLdVar
  loc_BB5728: CStrVarTmp
  loc_BB5729: FStStrNoPop var_1DC
  loc_BB572C: ConcatStr
  loc_BB572D: FStStrNoPop var_1E0
  loc_BB5730: LitStr "', '"
  loc_BB5733: ConcatStr
  loc_BB5734: FStStrNoPop var_4F8
  loc_BB5737: FLdI2 var_C6
  loc_BB573A: CI4UI1
  loc_BB573B: CVarI4
  loc_BB573F: PopAdLdVar
  loc_BB5740: LitVarI4
  loc_BB5748: PopAdLdVar
  loc_BB5749: ILdPr
  loc_BB574C: LateIdCallLdVar
  loc_BB5756: CStrVarTmp
  loc_BB5757: FStStrNoPop var_500
  loc_BB575A: ConcatStr
  loc_BB575B: FStStrNoPop var_508
  loc_BB575E: LitStr "')"
  loc_BB5761: ConcatStr
  loc_BB5762: FStStr var_DC
  loc_BB5765: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_4F8 = "": var_500 = "": var_508 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_18C = "": var_190 = ""
  loc_BB57B0: FFreeVar var_120 = "": var_1D4 = "": var_200 = "": var_220 = "": var_230 = "": var_240 = ""
  loc_BB57C1: FLdI2 var_C6
  loc_BB57C4: CI4UI1
  loc_BB57C5: ILdPr
  loc_BB57C8: LateIdLdVar var_120 DispID_4 0
  loc_BB57CF: CI4Var
  loc_BB57D1: LitI4 1
  loc_BB57D6: SubI4
  loc_BB57D7: LtI4
  loc_BB57D8: FFree1Var var_120 = ""
  loc_BB57DB: BranchF loc_BB57EB
  loc_BB57DE: ILdRf var_DC
  loc_BB57E1: LitStr ","
  loc_BB57E4: ConcatStr
  loc_BB57E5: FStStr var_DC
  loc_BB57E8: Branch loc_BB57F5
  loc_BB57EB: ILdRf var_DC
  loc_BB57EE: LitStr ";"
  loc_BB57F1: ConcatStr
  loc_BB57F2: FStStr var_DC
  loc_BB57F5: FLdI2 var_C6
  loc_BB57F8: CI4UI1
  loc_BB57F9: CVarI4
  loc_BB57FD: PopAdLdVar
  loc_BB57FE: LitVarI4
  loc_BB5806: PopAdLdVar
  loc_BB5807: ILdPr
  loc_BB580A: LateIdCallLdVar
  loc_BB5814: PopAd
  loc_BB5816: FLdI2 var_C6
  loc_BB5819: CI4UI1
  loc_BB581A: CVarI4
  loc_BB581E: PopAdLdVar
  loc_BB581F: LitVarI4
  loc_BB5827: PopAdLdVar
  loc_BB5828: ILdPr
  loc_BB582B: LateIdCallLdVar
  loc_BB5835: PopAd
  loc_BB5837: FLdFPR8 var_D0
  loc_BB583A: FLdRfVar var_120
  loc_BB583D: CStrVarTmp
  loc_BB583E: FStStrNoPop var_E8
  loc_BB5841: CR8Str
  loc_BB5843: FLdRfVar var_1D4
  loc_BB5846: CStrVarTmp
  loc_BB5847: FStStrNoPop var_EC
  loc_BB584A: CR8Str
  loc_BB584C: MulR8
  loc_BB584D: AddR8
  loc_BB584E: FStFPR8 var_D0
  loc_BB5851: FFreeStr var_E8 = ""
  loc_BB5858: FFreeVar var_120 = ""
  loc_BB585F: FLdRfVar var_C6
  loc_BB5862: NextI2 var_50C, loc_BB53DA
  loc_BB5867: LitStr "Municipalidad de Guaymallén"
  loc_BB586A: LitStr "Municipalidad de Guaymallén"
  loc_BB586D: EqStr
  loc_BB586F: BranchF loc_BB5925
  loc_BB5872: LitStr "SELECT * FROM tipocompra WHERE CodiTico = "
  loc_BB5875: FLdI2 CodiTico
  loc_BB5878: CStrUI1
  loc_BB587A: FStStrNoPop var_E8
  loc_BB587D: ConcatStr
  loc_BB587E: FStStrNoPop var_EC
  loc_BB5881: LitStr " AND DetaTico LIKE '" & Chr(37) & "licita" & Chr(37) & "';"
  loc_BB5884: ConcatStr
  loc_BB5885: FStStrNoPop var_F0
  loc_BB5888: Call EjecutarRsCls(from_stack_1v)
  loc_BB588D: FFreeStr var_E8 = "": var_EC = ""
  loc_BB5896: FLdRfVar var_510
  loc_BB5899: FLdPr Me
  loc_BB589C: MemLdPr global_56
  loc_BB589F:  = Me.RecordCount
  loc_BB58A4: ILdRf var_510
  loc_BB58A7: LitI4 0
  loc_BB58AC: GtI4
  loc_BB58AD: BranchF loc_BB5922
  loc_BB58B0: FLdFPR8 var_D0
  loc_BB58B3: LitDate 0.001
  loc_BB58BC: MulR8
  loc_BB58BD: FStFPR8 var_D8
  loc_BB58C0: ILdRf var_DC
  loc_BB58C3: LitStr "UPDATE notapedido SET PlieNope = TRUNCATE("
  loc_BB58C6: ConcatStr
  loc_BB58C7: FStStrNoPop var_EC
  loc_BB58CA: FLdFPR8 var_D8
  loc_BB58CD: CStrR8
  loc_BB58CF: FStStrNoPop var_E8
  loc_BB58D2: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB58D7: FStStrNoPop var_F0
  loc_BB58DA: ConcatStr
  loc_BB58DB: FStStrNoPop var_F4
  loc_BB58DE: LitStr ",-2) WHERE PeriInfo = "
  loc_BB58E1: ConcatStr
  loc_BB58E2: FStStrNoPop var_F8
  loc_BB58E5: ImpAdLdI2 MemVar_C3D064
  loc_BB58E8: CStrUI1
  loc_BB58EA: FStStrNoPop var_124
  loc_BB58ED: ConcatStr
  loc_BB58EE: FStStrNoPop var_128
  loc_BB58F1: LitStr " AND CodiNope = "
  loc_BB58F4: ConcatStr
  loc_BB58F5: FStStrNoPop var_12C
  loc_BB58F8: ILdRf var_88
  loc_BB58FB: CStrI4
  loc_BB58FD: FStStrNoPop var_130
  loc_BB5900: ConcatStr
  loc_BB5901: FStStrNoPop var_134
  loc_BB5904: LitStr ";"
  loc_BB5907: ConcatStr
  loc_BB5908: FStStr var_DC
  loc_BB590B: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BB5922: Branch loc_BB59B2
  loc_BB5925: LitStr "Municipalidad de Guaymallén"
  loc_BB5928: LitStr "Municipalidad de General Alvear"
  loc_BB592B: EqStr
  loc_BB592D: BranchF loc_BB59B2
  loc_BB5930: FLdI2 CodiTico
  loc_BB5933: LitI2_Byte 5
  loc_BB5935: EqI2
  loc_BB5936: FLdI2 CodiTico
  loc_BB5939: LitI2_Byte &H1C
  loc_BB593B: EqI2
  loc_BB593C: OrI4
  loc_BB593D: BranchF loc_BB59B2
  loc_BB5940: FLdFPR8 var_D0
  loc_BB5943: LitDate 0.001
  loc_BB594C: MulR8
  loc_BB594D: FStFPR8 var_D8
  loc_BB5950: ILdRf var_DC
  loc_BB5953: LitStr "UPDATE notapedido SET PlieNope = TRUNCATE("
  loc_BB5956: ConcatStr
  loc_BB5957: FStStrNoPop var_EC
  loc_BB595A: FLdFPR8 var_D8
  loc_BB595D: CStrR8
  loc_BB595F: FStStrNoPop var_E8
  loc_BB5962: ImpAdCallI2 Proc_261_58_9952BC()
  loc_BB5967: FStStrNoPop var_F0
  loc_BB596A: ConcatStr
  loc_BB596B: FStStrNoPop var_F4
  loc_BB596E: LitStr ",-2) WHERE PeriInfo = "
  loc_BB5971: ConcatStr
  loc_BB5972: FStStrNoPop var_F8
  loc_BB5975: ImpAdLdI2 MemVar_C3D064
  loc_BB5978: CStrUI1
  loc_BB597A: FStStrNoPop var_124
  loc_BB597D: ConcatStr
  loc_BB597E: FStStrNoPop var_128
  loc_BB5981: LitStr " AND CodiNope = "
  loc_BB5984: ConcatStr
  loc_BB5985: FStStrNoPop var_12C
  loc_BB5988: ILdRf var_88
  loc_BB598B: CStrI4
  loc_BB598D: FStStrNoPop var_130
  loc_BB5990: ConcatStr
  loc_BB5991: FStStrNoPop var_134
  loc_BB5994: LitStr ";"
  loc_BB5997: ConcatStr
  loc_BB5998: FStStr var_DC
  loc_BB599B: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BB59B2: ILdRf var_DC
  loc_BB59B5: Call EjecutarRsCls(from_stack_1v)
  loc_BB59BA: LitStr "COMMIT;"
  loc_BB59BD: Call EjecutarRsCls(from_stack_1v)
  loc_BB59C2: LitStr "Municipalidad de Guaymallén"
  loc_BB59C5: LitStr "Municipalidad de General Alvear"
  loc_BB59C8: EqStr
  loc_BB59CA: ILdRf var_A8
  loc_BB59CD: LitStr vbNullString
  loc_BB59D0: NeStr
  loc_BB59D2: AndI4
  loc_BB59D3: BranchF loc_BB5BAA
  loc_BB59D6: LitVarStr var_188, "EX-"
  loc_BB59DB: ILdRf var_A8
  loc_BB59DE: FnLenStr
  loc_BB59DF: LitI4 2
  loc_BB59E4: SubI4
  loc_BB59E5: FLdRfVar var_A8
  loc_BB59E8: CVarRef
  loc_BB59ED: FLdRfVar var_120
  loc_BB59F0: ImpAdCallFPR4  = Left(, )
  loc_BB59F5: FLdRfVar var_120
  loc_BB59F8: ConcatVar var_1D4
  loc_BB59FC: LitVarStr var_1A4, "-   -GDEMZA-"
  loc_BB5A01: ConcatVar var_200
  loc_BB5A05: CStrVarTmp
  loc_BB5A06: FStStr var_514
  loc_BB5A09: FFreeVar var_120 = "": var_1D4 = ""
  loc_BB5A12: LitI4 1
  loc_BB5A17: FLdRfVar var_A8
  loc_BB5A1A: CVarRef
  loc_BB5A1F: FLdRfVar var_120
  loc_BB5A22: ImpAdCallFPR4  = Right(, )
  loc_BB5A27: FLdRfVar var_120
  loc_BB5A2A: FStVar var_524
  loc_BB5A2E: FLdRfVar var_524
  loc_BB5A31: LitVarStr var_10C, "H"
  loc_BB5A36: HardType
  loc_BB5A37: EqVarBool
  loc_BB5A39: BranchT loc_BB5A4A
  loc_BB5A3C: FLdRfVar var_524
  loc_BB5A3F: LitVarStr var_188, "h"
  loc_BB5A44: HardType
  loc_BB5A45: EqVarBool
  loc_BB5A47: BranchF loc_BB5A57
  loc_BB5A4A: ILdRf var_514
  loc_BB5A4D: LitStr "SECHAC#ALVEAR"
  loc_BB5A50: ConcatStr
  loc_BB5A51: FStStr var_514
  loc_BB5A54: Branch loc_BB5B57
  loc_BB5A57: FLdRfVar var_524
  loc_BB5A5A: LitVarStr var_10C, "G"
  loc_BB5A5F: HardType
  loc_BB5A60: EqVarBool
  loc_BB5A62: BranchT loc_BB5A73
  loc_BB5A65: FLdRfVar var_524
  loc_BB5A68: LitVarStr var_188, "g"
  loc_BB5A6D: HardType
  loc_BB5A6E: EqVarBool
  loc_BB5A70: BranchF loc_BB5A80
  loc_BB5A73: ILdRf var_514
  loc_BB5A76: LitStr "SECGOB#ALVEAR"
  loc_BB5A79: ConcatStr
  loc_BB5A7A: FStStr var_514
  loc_BB5A7D: Branch loc_BB5B57
  loc_BB5A80: FLdRfVar var_524
  loc_BB5A83: LitVarStr var_10C, "D"
  loc_BB5A88: HardType
  loc_BB5A89: EqVarBool
  loc_BB5A8B: BranchT loc_BB5A9C
  loc_BB5A8E: FLdRfVar var_524
  loc_BB5A91: LitVarStr var_188, "d"
  loc_BB5A96: HardType
  loc_BB5A97: EqVarBool
  loc_BB5A99: BranchF loc_BB5AA9
  loc_BB5A9C: ILdRf var_514
  loc_BB5A9F: LitStr "SECDESARR#ALVEAR"
  loc_BB5AA2: ConcatStr
  loc_BB5AA3: FStStr var_514
  loc_BB5AA6: Branch loc_BB5B57
  loc_BB5AA9: FLdRfVar var_524
  loc_BB5AAC: LitVarStr var_10C, "P"
  loc_BB5AB1: HardType
  loc_BB5AB2: EqVarBool
  loc_BB5AB4: BranchT loc_BB5AC5
  loc_BB5AB7: FLdRfVar var_524
  loc_BB5ABA: LitVarStr var_188, "p"
  loc_BB5ABF: HardType
  loc_BB5AC0: EqVarBool
  loc_BB5AC2: BranchF loc_BB5AD2
  loc_BB5AC5: ILdRf var_514
  loc_BB5AC8: LitStr "SECOBYSERV#ALVEAR"
  loc_BB5ACB: ConcatStr
  loc_BB5ACC: FStStr var_514
  loc_BB5ACF: Branch loc_BB5B57
  loc_BB5AD2: FLdRfVar var_524
  loc_BB5AD5: LitVarStr var_10C, "I"
  loc_BB5ADA: HardType
  loc_BB5ADB: EqVarBool
  loc_BB5ADD: BranchT loc_BB5AEE
  loc_BB5AE0: FLdRfVar var_524
  loc_BB5AE3: LitVarStr var_188, "i"
  loc_BB5AE8: HardType
  loc_BB5AE9: EqVarBool
  loc_BB5AEB: BranchF loc_BB5AFB
  loc_BB5AEE: ILdRf var_514
  loc_BB5AF1: LitStr "MUNI#ALVEAR"
  loc_BB5AF4: ConcatStr
  loc_BB5AF5: FStStr var_514
  loc_BB5AF8: Branch loc_BB5B57
  loc_BB5AFB: FLdRfVar var_524
  loc_BB5AFE: LitVarStr var_10C, "V"
  loc_BB5B03: HardType
  loc_BB5B04: EqVarBool
  loc_BB5B06: BranchT loc_BB5B17
  loc_BB5B09: FLdRfVar var_524
  loc_BB5B0C: LitVarStr var_188, "v"
  loc_BB5B11: HardType
  loc_BB5B12: EqVarBool
  loc_BB5B14: BranchF loc_BB5B24
  loc_BB5B17: ILdRf var_514
  loc_BB5B1A: LitStr "VIAL#ALVEAR"
  loc_BB5B1D: ConcatStr
  loc_BB5B1E: FStStr var_514
  loc_BB5B21: Branch loc_BB5B57
  loc_BB5B24: FLdRfVar var_524
  loc_BB5B27: LitVarStr var_10C, "C"
  loc_BB5B2C: HardType
  loc_BB5B2D: EqVarBool
  loc_BB5B2F: BranchT loc_BB5B40
  loc_BB5B32: FLdRfVar var_524
  loc_BB5B35: LitVarStr var_188, "c"
  loc_BB5B3A: HardType
  loc_BB5B3B: EqVarBool
  loc_BB5B3D: BranchF loc_BB5B4D
  loc_BB5B40: ILdRf var_514
  loc_BB5B43: LitStr "HCD#ALVEAR"
  loc_BB5B46: ConcatStr
  loc_BB5B47: FStStr var_514
  loc_BB5B4A: Branch loc_BB5B57
  loc_BB5B4D: ILdRf var_514
  loc_BB5B50: LitStr "ERROR EN LA LETRA"
  loc_BB5B53: ConcatStr
  loc_BB5B54: FStStr var_514
  loc_BB5B57: LitStr "INSERT IGNORE INTO expediente (ExpeInfo, ExpeGDE, AltaUsua, AltaUsuaGDE) VALUE ('"
  loc_BB5B5A: ILdRf var_A8
  loc_BB5B5D: ConcatStr
  loc_BB5B5E: FStStrNoPop var_E8
  loc_BB5B61: LitStr "','"
  loc_BB5B64: ConcatStr
  loc_BB5B65: FStStrNoPop var_EC
  loc_BB5B68: ILdRf var_514
  loc_BB5B6B: ConcatStr
  loc_BB5B6C: FStStrNoPop var_F0
  loc_BB5B6F: LitStr "','"
  loc_BB5B72: ConcatStr
  loc_BB5B73: FStStrNoPop var_F4
  loc_BB5B76: ImpAdLdI4 MemVar_C3D03C
  loc_BB5B79: ConcatStr
  loc_BB5B7A: FStStrNoPop var_F8
  loc_BB5B7D: LitStr "','"
  loc_BB5B80: ConcatStr
  loc_BB5B81: FStStrNoPop var_124
  loc_BB5B84: ImpAdLdI4 MemVar_C3D040
  loc_BB5B87: ConcatStr
  loc_BB5B88: FStStrNoPop var_128
  loc_BB5B8B: LitStr "');"
  loc_BB5B8E: ConcatStr
  loc_BB5B8F: FStStrNoPop var_12C
  loc_BB5B92: Call EjecutarRsCls(from_stack_1v)
  loc_BB5B97: FFreeStr var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_124 = "": var_128 = ""
  loc_BB5BAA: ILdRf var_88
  loc_BB5BAD: Call Encontrar(from_stack_1v)
  loc_BB5BB2: ExitProcCbHresult
  loc_BB5BB8: LitStr "ROLLBACK;"
  loc_BB5BBB: Call EjecutarRsCls(from_stack_1v)
  loc_BB5BC0: LitI4 0
  loc_BB5BC5: FStR4 var_88
  loc_BB5BC8: LitI4 0
  loc_BB5BCD: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_BB5BD0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB5BD5: ExitProcCbHresult
End Function

Public Function Modificar(CodiNope, IdRubro, IdUbfi, DienNope, CoinNope, CodiOrga, DetaNope, sDetaNope2, CodiTico, ExpeImpu, FechNope, FecoNope, FecoHora, PubliNope, FeliNope, HoliNope, FeleNope, HoleNope) 'B61A50
  'Data Table: 42E90C
  loc_B61020: ILdRf IdRubro
  loc_B61023: FStStrCopy var_8C
  loc_B61026: ILdRf IdUbfi
  loc_B61029: FStStrCopy var_90
  loc_B6102C: ILdRf DienNope
  loc_B6102F: FStStrCopy Modificar
  loc_B61032: ILdRf CoinNope
  loc_B61035: FStStrCopy var_98
  loc_B61038: ILdRf CodiOrga
  loc_B6103B: FStStrCopy var_9C
  loc_B6103E: ILdRf DetaNope
  loc_B61041: FStStrCopy var_A0
  loc_B61044: ILdRf sDetaNope2
  loc_B61047: FStStrCopy var_A4
  loc_B6104A: ILdRf ExpeImpu
  loc_B6104D: FStStrCopy var_A8
  loc_B61050: ILdRf FechNope
  loc_B61053: FStStrCopy var_AC
  loc_B61056: ILdRf FecoNope
  loc_B61059: FStStrCopy var_B0
  loc_B6105C: ILdRf FecoHora
  loc_B6105F: FStStrCopy var_B4
  loc_B61062: ILdRf Modificar4
  loc_B61065: FStStrCopy var_B8
  loc_B61068: ILdRf Modificar8
  loc_B6106B: FStStrCopy var_BC
  loc_B6106E: ILdRf ModificarC
  loc_B61071: FStStrCopy var_C0
  loc_B61074: ILdRf HoleNope
  loc_B61077: FStStrCopy var_C4
  loc_B6107A: ILdRf arg_58
  loc_B6107D: FStStrCopy var_C8
  loc_B61080: ILdRf arg_5C
  loc_B61083: FStStrCopy var_CC
  loc_B61086: FLdRfVar var_B0
  loc_B61089: CVarRef
  loc_B6108E: ImpAdCallI2 IsDate()
  loc_B61093: BranchF loc_B610E8
  loc_B61096: LitStr "'"
  loc_B61099: LitI4 1
  loc_B6109E: LitI4 1
  loc_B610A3: LitVarStr var_F8, "yyyy-mm-dd"
  loc_B610A8: FStVarCopyObj var_108
  loc_B610AB: FLdRfVar var_108
  loc_B610AE: FLdRfVar var_B0
  loc_B610B1: CVarRef
  loc_B610B6: ImpAdCallI2 Format$(, )
  loc_B610BB: FStStrNoPop var_10C
  loc_B610BE: ConcatStr
  loc_B610BF: FStStrNoPop var_110
  loc_B610C2: LitStr " "
  loc_B610C5: ConcatStr
  loc_B610C6: FStStrNoPop var_114
  loc_B610C9: ILdRf var_B4
  loc_B610CC: ConcatStr
  loc_B610CD: FStStrNoPop var_118
  loc_B610D0: LitStr ":00'"
  loc_B610D3: ConcatStr
  loc_B610D4: FStStr var_D4
  loc_B610D7: FFreeStr var_10C = "": var_110 = "": var_114 = ""
  loc_B610E2: FFree1Var var_108 = ""
  loc_B610E5: Branch loc_B610EE
  loc_B610E8: LitStr "NULL"
  loc_B610EB: FStStrCopy var_D4
  loc_B610EE: LitStr "START TRANSACTION;"
  loc_B610F1: Call EjecutarRsCls(from_stack_1v)
  loc_B610F6: OnErrorGoto loc_B61A2D
  loc_B610F9: LitI4 0
  loc_B610FE: LitI4 1
  loc_B61103: FLdRfVar var_11C
  loc_B61106: Redim
  loc_B61110: FLdRfVar var_C0
  loc_B61113: CVarRef
  loc_B61118: ParmAry1St
  loc_B6111E: FLdRfVar var_B8
  loc_B61121: CVarRef
  loc_B61126: ParmAry1St
  loc_B6112C: FLdRfVar var_11C
  loc_B6112F: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_B61134: FLdRfVar var_11C
  loc_B61137: Erase
  loc_B61138: LitStr "UPDATE notapedido"
  loc_B6113B: LitStr " SET IdRubro = "
  loc_B6113E: ConcatStr
  loc_B6113F: FStStrNoPop var_10C
  loc_B61142: ILdRf var_8C
  loc_B61145: ConcatStr
  loc_B61146: FStStrNoPop var_110
  loc_B61149: LitStr ", IdUbfi = "
  loc_B6114C: ConcatStr
  loc_B6114D: FStStrNoPop var_114
  loc_B61150: ILdRf var_90
  loc_B61153: ConcatStr
  loc_B61154: FStStrNoPop var_118
  loc_B61157: LitStr ", DienNope = '"
  loc_B6115A: ConcatStr
  loc_B6115B: FStStrNoPop var_120
  loc_B6115E: ILdRf Modificar
  loc_B61161: ConcatStr
  loc_B61162: FStStrNoPop var_124
  loc_B61165: LitStr "', CoinNope = '"
  loc_B61168: ConcatStr
  loc_B61169: FStStrNoPop var_128
  loc_B6116C: ILdRf var_98
  loc_B6116F: ConcatStr
  loc_B61170: FStStrNoPop var_12C
  loc_B61173: LitStr "', CodiOrga='"
  loc_B61176: ConcatStr
  loc_B61177: FStStrNoPop var_130
  loc_B6117A: ILdRf var_9C
  loc_B6117D: ConcatStr
  loc_B6117E: FStStrNoPop var_134
  loc_B61181: LitStr "', DetaNope='"
  loc_B61184: ConcatStr
  loc_B61185: FStStrNoPop var_138
  loc_B61188: ILdRf var_A0
  loc_B6118B: ConcatStr
  loc_B6118C: FStStrNoPop var_13C
  loc_B6118F: LitStr "', CodiTico="
  loc_B61192: ConcatStr
  loc_B61193: FStStrNoPop var_140
  loc_B61196: FLdI2 CodiTico
  loc_B61199: CStrUI1
  loc_B6119B: FStStrNoPop var_144
  loc_B6119E: ConcatStr
  loc_B6119F: FStStrNoPop var_148
  loc_B611A2: LitStr ", ExpeImpu='"
  loc_B611A5: ConcatStr
  loc_B611A6: FStStrNoPop var_14C
  loc_B611A9: ILdRf var_A8
  loc_B611AC: ConcatStr
  loc_B611AD: FStStrNoPop var_150
  loc_B611B0: LitStr "', FechNope = "
  loc_B611B3: ConcatStr
  loc_B611B4: FStStrNoPop var_154
  loc_B611B7: LitI4 1
  loc_B611BC: LitI4 1
  loc_B611C1: LitVarStr var_F8, "'yyyy-mm-dd'"
  loc_B611C6: FStVarCopyObj var_108
  loc_B611C9: FLdRfVar var_108
  loc_B611CC: FLdRfVar var_AC
  loc_B611CF: CVarRef
  loc_B611D4: ImpAdCallI2 Format$(, )
  loc_B611D9: FStStrNoPop var_158
  loc_B611DC: ConcatStr
  loc_B611DD: FStStrNoPop var_15C
  loc_B611E0: LitStr ", FecoNope = "
  loc_B611E3: ConcatStr
  loc_B611E4: FStStrNoPop var_160
  loc_B611E7: ILdRf var_D4
  loc_B611EA: ConcatStr
  loc_B611EB: FStStrNoPop var_164
  loc_B611EE: LitStr ", PubliNope = "
  loc_B611F1: ConcatStr
  loc_B611F2: FStStrNoPop var_168
  loc_B611F5: FLdUI1
  loc_B611F9: CStrI2
  loc_B611FB: FStStrNoPop var_16C
  loc_B611FE: ConcatStr
  loc_B611FF: FStStrNoPop var_170
  loc_B61202: LitStr ", FeliNope = "
  loc_B61205: ConcatStr
  loc_B61206: FStStrNoPop var_174
  loc_B61209: ILdRf var_B8
  loc_B6120C: ConcatStr
  loc_B6120D: FStStrNoPop var_178
  loc_B61210: LitStr ", HoliNope = '"
  loc_B61213: ConcatStr
  loc_B61214: FStStrNoPop var_17C
  loc_B61217: ILdRf var_BC
  loc_B6121A: ConcatStr
  loc_B6121B: FStStrNoPop var_180
  loc_B6121E: LitStr "', FeleNope="
  loc_B61221: ConcatStr
  loc_B61222: FStStrNoPop var_184
  loc_B61225: ILdRf var_C0
  loc_B61228: ConcatStr
  loc_B61229: FStStrNoPop var_188
  loc_B6122C: LitStr ", HoleNope = '"
  loc_B6122F: ConcatStr
  loc_B61230: FStStrNoPop var_18C
  loc_B61233: ILdRf var_C4
  loc_B61236: ConcatStr
  loc_B61237: FStStrNoPop var_190
  loc_B6123A: LitStr "'"
  loc_B6123D: ConcatStr
  loc_B6123E: FStStrNoPop var_194
  loc_B61241: LitStr ", PlieNope = "
  loc_B61244: ConcatStr
  loc_B61245: FStStrNoPop var_198
  loc_B61248: ILdRf var_CC
  loc_B6124B: ImpAdCallI2 Proc_261_59_995350()
  loc_B61250: FStStrNoPop var_19C
  loc_B61253: ConcatStr
  loc_B61254: FStStrNoPop var_1A0
  loc_B61257: ILdRf var_A4
  loc_B6125A: ConcatStr
  loc_B6125B: FStStrNoPop var_1A4
  loc_B6125E: LitStr ", ModiUsua = '"
  loc_B61261: ConcatStr
  loc_B61262: FStStrNoPop var_1A8
  loc_B61265: ImpAdLdI4 MemVar_C3D03C
  loc_B61268: ConcatStr
  loc_B61269: FStStrNoPop var_1AC
  loc_B6126C: LitStr "', ModiFeho = Now()"
  loc_B6126F: ConcatStr
  loc_B61270: FStStrNoPop var_1B0
  loc_B61273: LitStr " WHERE PeriInfo = "
  loc_B61276: ConcatStr
  loc_B61277: FStStrNoPop var_1B4
  loc_B6127A: ImpAdLdI2 MemVar_C3D064
  loc_B6127D: CStrUI1
  loc_B6127F: FStStrNoPop var_1B8
  loc_B61282: ConcatStr
  loc_B61283: FStStrNoPop var_1BC
  loc_B61286: LitStr " AND CodiNope = "
  loc_B61289: ConcatStr
  loc_B6128A: FStStrNoPop var_1C0
  loc_B6128D: ILdRf CodiNope
  loc_B61290: CStrI4
  loc_B61292: FStStrNoPop var_1C4
  loc_B61295: ConcatStr
  loc_B61296: FStStrNoPop var_1C8
  loc_B61299: LitStr ";"
  loc_B6129C: ConcatStr
  loc_B6129D: FStStr var_D8
  loc_B612A0: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B61301: FFree1Var var_108 = ""
  loc_B61304: ILdRf var_D8
  loc_B61307: LitStr "UPDATE ordencompra"
  loc_B6130A: ConcatStr
  loc_B6130B: FStStrNoPop var_10C
  loc_B6130E: LitStr " SET CodiOrga = '"
  loc_B61311: ConcatStr
  loc_B61312: FStStrNoPop var_110
  loc_B61315: ILdRf var_9C
  loc_B61318: ConcatStr
  loc_B61319: FStStrNoPop var_114
  loc_B6131C: LitStr "'"
  loc_B6131F: ConcatStr
  loc_B61320: FStStrNoPop var_118
  loc_B61323: LitStr " WHERE PeriInfo = "
  loc_B61326: ConcatStr
  loc_B61327: FStStrNoPop var_120
  loc_B6132A: ImpAdLdI2 MemVar_C3D064
  loc_B6132D: CStrUI1
  loc_B6132F: FStStrNoPop var_124
  loc_B61332: ConcatStr
  loc_B61333: FStStrNoPop var_128
  loc_B61336: LitStr " AND CodiNope = "
  loc_B61339: ConcatStr
  loc_B6133A: FStStrNoPop var_12C
  loc_B6133D: ILdRf CodiNope
  loc_B61340: CStrI4
  loc_B61342: FStStrNoPop var_130
  loc_B61345: ConcatStr
  loc_B61346: FStStrNoPop var_134
  loc_B61349: LitStr " AND FeanOrco IS NULL;"
  loc_B6134C: ConcatStr
  loc_B6134D: FStStr var_D8
  loc_B61350: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_B61367: ILdRf var_C8
  loc_B6136A: LitStr vbNullString
  loc_B6136D: NeStr
  loc_B6136F: BranchF loc_B613C3
  loc_B61372: ILdRf var_D8
  loc_B61375: LitStr "DELETE FROM itemnota WHERE PeriInfo = "
  loc_B61378: ConcatStr
  loc_B61379: FStStrNoPop var_10C
  loc_B6137C: ImpAdLdI2 MemVar_C3D064
  loc_B6137F: CStrUI1
  loc_B61381: FStStrNoPop var_110
  loc_B61384: ConcatStr
  loc_B61385: FStStrNoPop var_114
  loc_B61388: LitStr " AND CodiNope = "
  loc_B6138B: ConcatStr
  loc_B6138C: FStStrNoPop var_118
  loc_B6138F: ILdRf CodiNope
  loc_B61392: CStrI4
  loc_B61394: FStStrNoPop var_120
  loc_B61397: ConcatStr
  loc_B61398: FStStrNoPop var_124
  loc_B6139B: LitStr " AND CodiItno IN ("
  loc_B6139E: ConcatStr
  loc_B6139F: FStStrNoPop var_128
  loc_B613A2: ILdRf var_C8
  loc_B613A5: ConcatStr
  loc_B613A6: FStStrNoPop var_12C
  loc_B613A9: LitStr ");"
  loc_B613AC: ConcatStr
  loc_B613AD: FStStr var_D8
  loc_B613B0: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B613C3: LitI2_Byte 1
  loc_B613C5: FLdRfVar var_CE
  loc_B613C8: ILdPr
  loc_B613CB: LateIdLdVar var_108 DispID_4 0
  loc_B613D2: CI4Var
  loc_B613D4: LitI4 1
  loc_B613D9: SubI4
  loc_B613DA: CI2I4
  loc_B613DB: FFree1Var var_108 = ""
  loc_B613DE: ForI2 var_1CC
  loc_B613E4: LitStr "SELECT *"
  loc_B613E7: LitStr " FROM itemnota"
  loc_B613EA: ConcatStr
  loc_B613EB: FStStrNoPop var_10C
  loc_B613EE: LitStr " WHERE PeriInfo = "
  loc_B613F1: ConcatStr
  loc_B613F2: FStStrNoPop var_110
  loc_B613F5: ImpAdLdI2 MemVar_C3D064
  loc_B613F8: CStrUI1
  loc_B613FA: FStStrNoPop var_114
  loc_B613FD: ConcatStr
  loc_B613FE: FStStrNoPop var_118
  loc_B61401: LitStr " AND CodiNope = "
  loc_B61404: ConcatStr
  loc_B61405: FStStrNoPop var_120
  loc_B61408: ILdRf CodiNope
  loc_B6140B: CStrI4
  loc_B6140D: FStStrNoPop var_124
  loc_B61410: ConcatStr
  loc_B61411: FStStrNoPop var_128
  loc_B61414: LitStr " AND CodiItno = "
  loc_B61417: ConcatStr
  loc_B61418: FStStrNoPop var_12C
  loc_B6141B: FLdI2 var_CE
  loc_B6141E: CI4UI1
  loc_B6141F: CVarI4
  loc_B61423: PopAdLdVar
  loc_B61424: LitVarI4
  loc_B6142C: PopAdLdVar
  loc_B6142D: ILdPr
  loc_B61430: LateIdCallLdVar
  loc_B6143A: CStrVarTmp
  loc_B6143B: FStStrNoPop var_130
  loc_B6143E: ConcatStr
  loc_B6143F: FStStrNoPop var_134
  loc_B61442: LitStr " ORDER BY PeriInfo, CodiNope, CodiItno;"
  loc_B61445: ConcatStr
  loc_B61446: FStStrNoPop var_138
  loc_B61449: Call EjecutarRsCls2(from_stack_1v)
  loc_B6144E: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B61467: FFree1Var var_108 = ""
  loc_B6146A: FLdRfVar var_1F0
  loc_B6146D: FLdPr Me
  loc_B61470: MemLdPr global_60
  loc_B61473:  = Me.RecordCount
  loc_B61478: ILdRf var_1F0
  loc_B6147B: LitI4 0
  loc_B61480: EqI4
  loc_B61481: BranchF loc_B61740
  loc_B61484: FLdI2 var_CE
  loc_B61487: CI4UI1
  loc_B61488: CVarI4
  loc_B6148C: PopAdLdVar
  loc_B6148D: LitVarI4
  loc_B61495: PopAdLdVar
  loc_B61496: ILdPr
  loc_B61499: LateIdCallLdVar
  loc_B614A3: PopAd
  loc_B614A5: FLdI2 var_CE
  loc_B614A8: CI4UI1
  loc_B614A9: CVarI4
  loc_B614AD: PopAdLdVar
  loc_B614AE: LitVarI4
  loc_B614B6: PopAdLdVar
  loc_B614B7: ILdPr
  loc_B614BA: LateIdCallLdVar
  loc_B614C4: PopAd
  loc_B614C6: ILdRf var_D8
  loc_B614C9: LitStr "INSERT INTO itemnota (PeriInfo,CodiNope,CodiItno,CodiInsu,DetaItno,CaraItno,CantItno,ImunItno,CodiPart,CodiOrga,CodiUnga,CodiFifu)"
  loc_B614CC: ConcatStr
  loc_B614CD: FStStrNoPop var_10C
  loc_B614D0: LitStr " VALUES ('"
  loc_B614D3: ConcatStr
  loc_B614D4: FStStrNoPop var_110
  loc_B614D7: ImpAdLdI2 MemVar_C3D064
  loc_B614DA: CStrUI1
  loc_B614DC: FStStrNoPop var_114
  loc_B614DF: ConcatStr
  loc_B614E0: FStStrNoPop var_118
  loc_B614E3: LitStr "', '"
  loc_B614E6: ConcatStr
  loc_B614E7: FStStrNoPop var_120
  loc_B614EA: ILdRf CodiNope
  loc_B614ED: CStrI4
  loc_B614EF: FStStrNoPop var_124
  loc_B614F2: ConcatStr
  loc_B614F3: FStStrNoPop var_128
  loc_B614F6: LitStr "', '"
  loc_B614F9: ConcatStr
  loc_B614FA: FStStrNoPop var_12C
  loc_B614FD: FLdI2 var_CE
  loc_B61500: CI4UI1
  loc_B61501: CVarI4
  loc_B61505: PopAdLdVar
  loc_B61506: LitVarI4
  loc_B6150E: PopAdLdVar
  loc_B6150F: ILdPr
  loc_B61512: LateIdCallLdVar
  loc_B6151C: CStrVarTmp
  loc_B6151D: FStStrNoPop var_130
  loc_B61520: ConcatStr
  loc_B61521: FStStrNoPop var_134
  loc_B61524: LitStr "', '"
  loc_B61527: ConcatStr
  loc_B61528: FStStrNoPop var_138
  loc_B6152B: FLdI2 var_CE
  loc_B6152E: CI4UI1
  loc_B6152F: CVarI4
  loc_B61533: PopAdLdVar
  loc_B61534: LitVarI4
  loc_B6153C: PopAdLdVar
  loc_B6153D: ILdPr
  loc_B61540: LateIdCallLdVar
  loc_B6154A: CStrVarTmp
  loc_B6154B: FStStrNoPop var_13C
  loc_B6154E: ConcatStr
  loc_B6154F: FStStrNoPop var_140
  loc_B61552: LitStr "', '"
  loc_B61555: ConcatStr
  loc_B61556: FStStrNoPop var_148
  loc_B61559: FLdI2 var_CE
  loc_B6155C: CI4UI1
  loc_B6155D: CVarI4
  loc_B61561: PopAdLdVar
  loc_B61562: LitVarI4
  loc_B6156A: PopAdLdVar
  loc_B6156B: ILdPr
  loc_B6156E: LateIdCallLdVar
  loc_B61578: CStrVarTmp
  loc_B61579: FStStrNoPop var_144
  loc_B6157C: ImpAdCallI2 Trim$()
  loc_B61581: FStStrNoPop var_14C
  loc_B61584: ConcatStr
  loc_B61585: FStStrNoPop var_150
  loc_B61588: LitStr "', '"
  loc_B6158B: ConcatStr
  loc_B6158C: FStStrNoPop var_154
  loc_B6158F: FLdI2 var_CE
  loc_B61592: CI4UI1
  loc_B61593: CVarI4
  loc_B61597: PopAdLdVar
  loc_B61598: LitVarI4
  loc_B615A0: PopAdLdVar
  loc_B615A1: ILdPr
  loc_B615A4: LateIdCallLdVar
  loc_B615AE: CStrVarTmp
  loc_B615AF: FStStrNoPop var_158
  loc_B615B2: ConcatStr
  loc_B615B3: FStStrNoPop var_15C
  loc_B615B6: LitStr "',"
  loc_B615B9: ConcatStr
  loc_B615BA: FStStrNoPop var_164
  loc_B615BD: LitI4 0
  loc_B615C2: LitI4 -1
  loc_B615C7: LitI4 1
  loc_B615CC: LitStr "."
  loc_B615CF: LitStr ","
  loc_B615D2: FLdRfVar var_330
  loc_B615D5: CStrVarTmp
  loc_B615D6: FStStrNoPop var_160
  loc_B615D9: ImpAdCallI2 Replace(, , , , , )
  loc_B615DE: FStStrNoPop var_168
  loc_B615E1: ConcatStr
  loc_B615E2: FStStrNoPop var_16C
  loc_B615E5: LitStr ","
  loc_B615E8: ConcatStr
  loc_B615E9: FStStrNoPop var_174
  loc_B615EC: LitI4 0
  loc_B615F1: LitI4 -1
  loc_B615F6: LitI4 1
  loc_B615FB: LitStr "."
  loc_B615FE: LitStr ","
  loc_B61601: FLdRfVar var_380
  loc_B61604: CStrVarTmp
  loc_B61605: FStStrNoPop var_170
  loc_B61608: ImpAdCallI2 Replace(, , , , , )
  loc_B6160D: FStStrNoPop var_178
  loc_B61610: ConcatStr
  loc_B61611: FStStrNoPop var_17C
  loc_B61614: LitStr ", '"
  loc_B61617: ConcatStr
  loc_B61618: FStStrNoPop var_180
  loc_B6161B: FLdI2 var_CE
  loc_B6161E: CI4UI1
  loc_B6161F: CVarI4
  loc_B61623: PopAdLdVar
  loc_B61624: LitVarI4
  loc_B6162C: PopAdLdVar
  loc_B6162D: ILdPr
  loc_B61630: LateIdCallLdVar
  loc_B6163A: CStrVarTmp
  loc_B6163B: FStStrNoPop var_184
  loc_B6163E: ConcatStr
  loc_B6163F: FStStrNoPop var_188
  loc_B61642: LitStr "', '"
  loc_B61645: ConcatStr
  loc_B61646: FStStrNoPop var_18C
  loc_B61649: FLdI2 var_CE
  loc_B6164C: CI4UI1
  loc_B6164D: CVarI4
  loc_B61651: PopAdLdVar
  loc_B61652: LitVarI4
  loc_B6165A: PopAdLdVar
  loc_B6165B: ILdPr
  loc_B6165E: LateIdCallLdVar
  loc_B61668: CStrVarTmp
  loc_B61669: FStStrNoPop var_190
  loc_B6166C: ConcatStr
  loc_B6166D: FStStrNoPop var_194
  loc_B61670: LitStr "', '"
  loc_B61673: ConcatStr
  loc_B61674: FStStrNoPop var_198
  loc_B61677: FLdI2 var_CE
  loc_B6167A: CI4UI1
  loc_B6167B: CVarI4
  loc_B6167F: PopAdLdVar
  loc_B61680: LitVarI4
  loc_B61688: PopAdLdVar
  loc_B61689: ILdPr
  loc_B6168C: LateIdCallLdVar
  loc_B61696: CStrVarTmp
  loc_B61697: FStStrNoPop var_19C
  loc_B6169A: ConcatStr
  loc_B6169B: FStStrNoPop var_1A0
  loc_B6169E: LitStr "', '"
  loc_B616A1: ConcatStr
  loc_B616A2: FStStrNoPop var_1A4
  loc_B616A5: FLdI2 var_CE
  loc_B616A8: CI4UI1
  loc_B616A9: CVarI4
  loc_B616AD: PopAdLdVar
  loc_B616AE: LitVarI4
  loc_B616B6: PopAdLdVar
  loc_B616B7: ILdPr
  loc_B616BA: LateIdCallLdVar
  loc_B616C4: CStrVarTmp
  loc_B616C5: FStStrNoPop var_1A8
  loc_B616C8: ConcatStr
  loc_B616C9: FStStrNoPop var_1AC
  loc_B616CC: LitStr "');"
  loc_B616CF: ConcatStr
  loc_B616D0: FStStr var_D8
  loc_B616D3: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B61726: FFreeVar var_108 = "": var_240 = "": var_290 = "": var_2E0 = "": var_330 = "": var_380 = "": var_3D0 = "": var_420 = "": var_470 = ""
  loc_B6173D: Branch loc_B61A02
  loc_B61740: FLdI2 var_CE
  loc_B61743: CI4UI1
  loc_B61744: CVarI4
  loc_B61748: PopAdLdVar
  loc_B61749: LitVarI4
  loc_B61751: PopAdLdVar
  loc_B61752: ILdPr
  loc_B61755: LateIdCallLdVar
  loc_B6175F: PopAd
  loc_B61761: FLdI2 var_CE
  loc_B61764: CI4UI1
  loc_B61765: CVarI4
  loc_B61769: PopAdLdVar
  loc_B6176A: LitVarI4
  loc_B61772: PopAdLdVar
  loc_B61773: ILdPr
  loc_B61776: LateIdCallLdVar
  loc_B61780: PopAd
  loc_B61782: ILdRf var_D8
  loc_B61785: LitStr "UPDATE itemnota"
  loc_B61788: ConcatStr
  loc_B61789: FStStrNoPop var_10C
  loc_B6178C: LitStr " SET CodiInsu='"
  loc_B6178F: ConcatStr
  loc_B61790: FStStrNoPop var_110
  loc_B61793: FLdI2 var_CE
  loc_B61796: CI4UI1
  loc_B61797: CVarI4
  loc_B6179B: PopAdLdVar
  loc_B6179C: LitVarI4
  loc_B617A4: PopAdLdVar
  loc_B617A5: ILdPr
  loc_B617A8: LateIdCallLdVar
  loc_B617B2: CStrVarTmp
  loc_B617B3: FStStrNoPop var_114
  loc_B617B6: ConcatStr
  loc_B617B7: FStStrNoPop var_118
  loc_B617BA: LitStr "', DetaItno='"
  loc_B617BD: ConcatStr
  loc_B617BE: FStStrNoPop var_124
  loc_B617C1: FLdI2 var_CE
  loc_B617C4: CI4UI1
  loc_B617C5: CVarI4
  loc_B617C9: PopAdLdVar
  loc_B617CA: LitVarI4
  loc_B617D2: PopAdLdVar
  loc_B617D3: ILdPr
  loc_B617D6: LateIdCallLdVar
  loc_B617E0: CStrVarTmp
  loc_B617E1: FStStrNoPop var_120
  loc_B617E4: ImpAdCallI2 Trim$()
  loc_B617E9: FStStrNoPop var_128
  loc_B617EC: ConcatStr
  loc_B617ED: FStStrNoPop var_12C
  loc_B617F0: LitStr "', CaraItno='"
  loc_B617F3: ConcatStr
  loc_B617F4: FStStrNoPop var_130
  loc_B617F7: FLdI2 var_CE
  loc_B617FA: CI4UI1
  loc_B617FB: CVarI4
  loc_B617FF: PopAdLdVar
  loc_B61800: LitVarI4
  loc_B61808: PopAdLdVar
  loc_B61809: ILdPr
  loc_B6180C: LateIdCallLdVar
  loc_B61816: CStrVarTmp
  loc_B61817: FStStrNoPop var_134
  loc_B6181A: ConcatStr
  loc_B6181B: FStStrNoPop var_138
  loc_B6181E: LitStr "', CantItno='"
  loc_B61821: ConcatStr
  loc_B61822: FStStrNoPop var_140
  loc_B61825: LitI4 0
  loc_B6182A: LitI4 -1
  loc_B6182F: LitI4 1
  loc_B61834: LitStr "."
  loc_B61837: LitStr ","
  loc_B6183A: FLdRfVar var_2E0
  loc_B6183D: CStrVarTmp
  loc_B6183E: FStStrNoPop var_13C
  loc_B61841: ImpAdCallI2 Replace(, , , , , )
  loc_B61846: FStStrNoPop var_144
  loc_B61849: ConcatStr
  loc_B6184A: FStStrNoPop var_148
  loc_B6184D: LitStr "', ImunItno='"
  loc_B61850: ConcatStr
  loc_B61851: FStStrNoPop var_150
  loc_B61854: LitI4 0
  loc_B61859: LitI4 -1
  loc_B6185E: LitI4 1
  loc_B61863: LitStr "."
  loc_B61866: LitStr ","
  loc_B61869: FLdRfVar var_330
  loc_B6186C: CStrVarTmp
  loc_B6186D: FStStrNoPop var_14C
  loc_B61870: ImpAdCallI2 Replace(, , , , , )
  loc_B61875: FStStrNoPop var_154
  loc_B61878: ConcatStr
  loc_B61879: FStStrNoPop var_158
  loc_B6187C: LitStr "', CodiPart='"
  loc_B6187F: ConcatStr
  loc_B61880: FStStrNoPop var_15C
  loc_B61883: FLdI2 var_CE
  loc_B61886: CI4UI1
  loc_B61887: CVarI4
  loc_B6188B: PopAdLdVar
  loc_B6188C: LitVarI4
  loc_B61894: PopAdLdVar
  loc_B61895: ILdPr
  loc_B61898: LateIdCallLdVar
  loc_B618A2: CStrVarTmp
  loc_B618A3: FStStrNoPop var_160
  loc_B618A6: ConcatStr
  loc_B618A7: FStStrNoPop var_164
  loc_B618AA: LitStr "', CodiOrga='"
  loc_B618AD: ConcatStr
  loc_B618AE: FStStrNoPop var_168
  loc_B618B1: FLdI2 var_CE
  loc_B618B4: CI4UI1
  loc_B618B5: CVarI4
  loc_B618B9: PopAdLdVar
  loc_B618BA: LitVarI4
  loc_B618C2: PopAdLdVar
  loc_B618C3: ILdPr
  loc_B618C6: LateIdCallLdVar
  loc_B618D0: CStrVarTmp
  loc_B618D1: FStStrNoPop var_16C
  loc_B618D4: ConcatStr
  loc_B618D5: FStStrNoPop var_170
  loc_B618D8: LitStr "', CodiUnga='"
  loc_B618DB: ConcatStr
  loc_B618DC: FStStrNoPop var_174
  loc_B618DF: FLdI2 var_CE
  loc_B618E2: CI4UI1
  loc_B618E3: CVarI4
  loc_B618E7: PopAdLdVar
  loc_B618E8: LitVarI4
  loc_B618F0: PopAdLdVar
  loc_B618F1: ILdPr
  loc_B618F4: LateIdCallLdVar
  loc_B618FE: CStrVarTmp
  loc_B618FF: FStStrNoPop var_178
  loc_B61902: ConcatStr
  loc_B61903: FStStrNoPop var_17C
  loc_B61906: LitStr "', CodiFifu='"
  loc_B61909: ConcatStr
  loc_B6190A: FStStrNoPop var_180
  loc_B6190D: FLdI2 var_CE
  loc_B61910: CI4UI1
  loc_B61911: CVarI4
  loc_B61915: PopAdLdVar
  loc_B61916: LitVarI4
  loc_B6191E: PopAdLdVar
  loc_B6191F: ILdPr
  loc_B61922: LateIdCallLdVar
  loc_B6192C: CStrVarTmp
  loc_B6192D: FStStrNoPop var_184
  loc_B61930: ConcatStr
  loc_B61931: FStStrNoPop var_188
  loc_B61934: LitStr "'"
  loc_B61937: ConcatStr
  loc_B61938: FStStrNoPop var_18C
  loc_B6193B: LitStr " WHERE PeriInfo = "
  loc_B6193E: ConcatStr
  loc_B6193F: FStStrNoPop var_190
  loc_B61942: ImpAdLdI2 MemVar_C3D064
  loc_B61945: CStrUI1
  loc_B61947: FStStrNoPop var_194
  loc_B6194A: ConcatStr
  loc_B6194B: FStStrNoPop var_198
  loc_B6194E: LitStr " AND CodiNope = '"
  loc_B61951: ConcatStr
  loc_B61952: FStStrNoPop var_19C
  loc_B61955: ILdRf CodiNope
  loc_B61958: CStrI4
  loc_B6195A: FStStrNoPop var_1A0
  loc_B6195D: ConcatStr
  loc_B6195E: FStStrNoPop var_1A4
  loc_B61961: LitStr "' AND CodiItno = "
  loc_B61964: ConcatStr
  loc_B61965: FStStrNoPop var_1A8
  loc_B61968: FLdI2 var_CE
  loc_B6196B: CI4UI1
  loc_B6196C: CVarI4
  loc_B61970: PopAdLdVar
  loc_B61971: LitVarI4
  loc_B61979: PopAdLdVar
  loc_B6197A: ILdPr
  loc_B6197D: LateIdCallLdVar
  loc_B61987: CStrVarTmp
  loc_B61988: FStStrNoPop var_1AC
  loc_B6198B: ConcatStr
  loc_B6198C: FStStrNoPop var_1B0
  loc_B6198F: LitStr ";"
  loc_B61992: ConcatStr
  loc_B61993: FStStr var_D8
  loc_B61996: FFreeStr var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_B619EB: FFreeVar var_108 = "": var_240 = "": var_290 = "": var_2E0 = "": var_330 = "": var_380 = "": var_3D0 = "": var_420 = "": var_470 = ""
  loc_B61A02: FLdRfVar var_CE
  loc_B61A05: NextI2 var_1CC, loc_B613E4
  loc_B61A0A: ILdRf var_D8
  loc_B61A0D: Call EjecutarRsCls(from_stack_1v)
  loc_B61A12: LitStr "COMMIT;"
  loc_B61A15: Call EjecutarRsCls(from_stack_1v)
  loc_B61A1A: LitI2_Byte &HFF
  loc_B61A1C: FStI2 var_86
  loc_B61A1F: ILdRf CodiNope
  loc_B61A22: Call Encontrar(from_stack_1v)
  loc_B61A27: ExitProcCbHresult
  loc_B61A2D: LitStr "ROLLBACK;"
  loc_B61A30: Call EjecutarRsCls(from_stack_1v)
  loc_B61A35: LitI2_Byte 0
  loc_B61A37: FStI2 var_86
  loc_B61A3A: LitI4 0
  loc_B61A3F: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B61A42: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B61A47: ExitProcCbHresult
End Function

Public Sub ActualizaExpeImpu(CodiNope, ExpeImpu) '997610
  'Data Table: 42E90C
  loc_9975C0: ILdRf ExpeImpu
  loc_9975C3: FStStrCopy var_88
  loc_9975C6: LitStr "UPDATE notapedido SET ExpeImpu='"
  loc_9975C9: ILdRf var_88
  loc_9975CC: ConcatStr
  loc_9975CD: FStStrNoPop var_8C
  loc_9975D0: LitStr "' WHERE PeriInfo="
  loc_9975D3: ConcatStr
  loc_9975D4: FStStrNoPop var_90
  loc_9975D7: ImpAdLdI2 MemVar_C3D064
  loc_9975DA: CStrUI1
  loc_9975DC: FStStrNoPop var_94
  loc_9975DF: ConcatStr
  loc_9975E0: FStStrNoPop var_98
  loc_9975E3: LitStr " AND CodiNope="
  loc_9975E6: ConcatStr
  loc_9975E7: FStStrNoPop var_9C
  loc_9975EA: ILdRf CodiNope
  loc_9975ED: CStrI4
  loc_9975EF: FStStrNoPop var_A0
  loc_9975F2: ConcatStr
  loc_9975F3: FStStrNoPop var_A4
  loc_9975F6: Call EjecutarRsCls(from_stack_1v)
  loc_9975FB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99760C: ExitProcHresult
  loc_99760F: FnLBound
End Sub

Public Sub Anular(CodiNope, FeanNope, BajaMoti) 'A21314
  'Data Table: 42E90C
  loc_A211C0: ILdRf FeanNope
  loc_A211C3: FStStrCopy var_88
  loc_A211C6: ILdRf BajaMoti
  loc_A211C9: FStStrCopy var_8C
  loc_A211CC: FLdRfVar var_90
  loc_A211CF: ILdRf CodiNope
  loc_A211D2: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A211D7: ILdRf var_90
  loc_A211DA: LitStr vbNullString
  loc_A211DD: EqStr
  loc_A211DF: FFree1Str var_90
  loc_A211E2: BranchF loc_A211F5
  loc_A211E5: LitI4 0
  loc_A211EA: LitStr "La Nota de Pedido NO EXISTE. Reintente..."
  loc_A211ED: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A211F2: Branch loc_A21308
  loc_A211F5: LitStr "UPDATE notapedido"
  loc_A211F8: LitStr " LEFT JOIN cotizacion ON cotizacion.PeriInfo = notapedido.PeriInfo AND cotizacion.CodiNope = notapedido.CodiNope"
  loc_A211FB: ConcatStr
  loc_A211FC: FStStrNoPop var_90
  loc_A211FF: LitStr " SET notapedido.FeanNope = "
  loc_A21202: ConcatStr
  loc_A21203: FStStrNoPop var_C4
  loc_A21206: LitI4 1
  loc_A2120B: LitI4 1
  loc_A21210: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A21215: FStVarCopyObj var_C0
  loc_A21218: FLdRfVar var_C0
  loc_A2121B: FLdRfVar var_88
  loc_A2121E: CVarRef
  loc_A21223: ImpAdCallI2 Format$(, )
  loc_A21228: FStStrNoPop var_C8
  loc_A2122B: ConcatStr
  loc_A2122C: FStStrNoPop var_CC
  loc_A2122F: LitStr ", notapedido.BajaMoti = '"
  loc_A21232: ConcatStr
  loc_A21233: FStStrNoPop var_D0
  loc_A21236: ILdRf var_8C
  loc_A21239: ConcatStr
  loc_A2123A: FStStrNoPop var_D4
  loc_A2123D: LitStr "', notapedido.BajaUsua='"
  loc_A21240: ConcatStr
  loc_A21241: FStStrNoPop var_D8
  loc_A21244: ImpAdLdI4 MemVar_C3D03C
  loc_A21247: ConcatStr
  loc_A21248: FStStrNoPop var_DC
  loc_A2124B: LitStr "', notapedido.BajaFeho=Now(),"
  loc_A2124E: ConcatStr
  loc_A2124F: FStStrNoPop var_E0
  loc_A21252: LitStr " cotizacion.FeanCoti="
  loc_A21255: ConcatStr
  loc_A21256: FStStrNoPop var_114
  loc_A21259: LitI4 1
  loc_A2125E: LitI4 1
  loc_A21263: LitVarStr var_100, "'yyyy-mm-dd'"
  loc_A21268: FStVarCopyObj var_110
  loc_A2126B: FLdRfVar var_110
  loc_A2126E: FLdRfVar var_88
  loc_A21271: CVarRef
  loc_A21276: ImpAdCallI2 Format$(, )
  loc_A2127B: FStStrNoPop var_118
  loc_A2127E: ConcatStr
  loc_A2127F: FStStrNoPop var_11C
  loc_A21282: LitStr ", cotizacion.BajaMoti='"
  loc_A21285: ConcatStr
  loc_A21286: FStStrNoPop var_120
  loc_A21289: ILdRf var_8C
  loc_A2128C: ConcatStr
  loc_A2128D: FStStrNoPop var_124
  loc_A21290: LitStr "', cotizacion.BajaUsua='"
  loc_A21293: ConcatStr
  loc_A21294: FStStrNoPop var_128
  loc_A21297: ImpAdLdI4 MemVar_C3D03C
  loc_A2129A: ConcatStr
  loc_A2129B: FStStrNoPop var_12C
  loc_A2129E: LitStr "', cotizacion.BajaFeho=Now()"
  loc_A212A1: ConcatStr
  loc_A212A2: FStStrNoPop var_130
  loc_A212A5: LitStr " WHERE notapedido.PeriInfo="
  loc_A212A8: ConcatStr
  loc_A212A9: FStStrNoPop var_134
  loc_A212AC: ImpAdLdI2 MemVar_C3D064
  loc_A212AF: CStrUI1
  loc_A212B1: FStStrNoPop var_138
  loc_A212B4: ConcatStr
  loc_A212B5: FStStrNoPop var_13C
  loc_A212B8: LitStr " AND notapedido.CodiNope="
  loc_A212BB: ConcatStr
  loc_A212BC: FStStrNoPop var_140
  loc_A212BF: ILdRf CodiNope
  loc_A212C2: CStrI4
  loc_A212C4: FStStrNoPop var_144
  loc_A212C7: ConcatStr
  loc_A212C8: FStStrNoPop var_148
  loc_A212CB: Call EjecutarRsCls(from_stack_1v)
  loc_A212D0: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_A21301: FFreeVar var_C0 = ""
  loc_A21308: ILdRf CodiNope
  loc_A2130B: Call Encontrar(from_stack_1v)
  loc_A21310: ExitProcHresult
End Sub

Public Sub ActualizaFechas(CodiNope, FeliNope, HoliNope, FeleNope, HoleNope) 'A3E6B0
  'Data Table: 42E90C
  loc_A3E4D8: ILdRf FeliNope
  loc_A3E4DB: FStStrCopy var_88
  loc_A3E4DE: ILdRf HoliNope
  loc_A3E4E1: FStStrCopy var_8C
  loc_A3E4E4: ILdRf FeleNope
  loc_A3E4E7: FStStrCopy var_90
  loc_A3E4EA: ILdRf HoleNope
  loc_A3E4ED: FStStrCopy var_94
  loc_A3E4F0: FLdRfVar var_98
  loc_A3E4F3: ILdRf CodiNope
  loc_A3E4F6: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A3E4FB: ILdRf var_98
  loc_A3E4FE: LitStr vbNullString
  loc_A3E501: EqStr
  loc_A3E503: FFree1Str var_98
  loc_A3E506: BranchF loc_A3E519
  loc_A3E509: LitI4 0
  loc_A3E50E: LitStr "La Nota de Pedido NO EXISTE. Reintente..."
  loc_A3E511: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3E516: Branch loc_A3E6A6
  loc_A3E519: FLdRfVar var_88
  loc_A3E51C: CVarRef
  loc_A3E521: ImpAdCallI2 IsDate()
  loc_A3E526: FStI2 var_35A
  loc_A3E529: LitI4 1
  loc_A3E52E: LitI4 1
  loc_A3E533: LitVarStr var_C8, "yyyy-mm-dd"
  loc_A3E538: FStVarCopyObj var_D8
  loc_A3E53B: FLdRfVar var_D8
  loc_A3E53E: FLdRfVar var_88
  loc_A3E541: CVarRef
  loc_A3E546: ImpAdCallI2 Format$(, )
  loc_A3E54B: FStStr var_360
  loc_A3E54E: FLdRfVar var_90
  loc_A3E551: CVarRef
  loc_A3E556: ImpAdCallI2 IsDate()
  loc_A3E55B: FStI2 var_362
  loc_A3E55E: LitI4 1
  loc_A3E563: LitI4 1
  loc_A3E568: LitVarStr var_1DC, "yyyy-mm-dd"
  loc_A3E56D: FStVarCopyObj var_1EC
  loc_A3E570: FLdRfVar var_1EC
  loc_A3E573: FLdRfVar var_90
  loc_A3E576: CVarRef
  loc_A3E57B: ImpAdCallI2 Format$(, )
  loc_A3E580: FStStr var_368
  loc_A3E583: LitVarStr var_13C, "UPDATE notapedido SET FeliNope="
  loc_A3E588: LitVarStr var_10C, "Null"
  loc_A3E58D: FStVarCopyObj var_11C
  loc_A3E590: FLdRfVar var_11C
  loc_A3E593: LitStr "'"
  loc_A3E596: FLdZeroAd var_360
  loc_A3E599: FStStrNoPop var_98
  loc_A3E59C: ConcatStr
  loc_A3E59D: FStStrNoPop var_DC
  loc_A3E5A0: LitStr "'"
  loc_A3E5A3: ConcatStr
  loc_A3E5A4: CVarStr var_FC
  loc_A3E5A7: FLdI2 var_35A
  loc_A3E5AA: CVarBoolI2 var_EC
  loc_A3E5AE: FLdRfVar var_12C
  loc_A3E5B1: ImpAdCallFPR4  = IIf(, , )
  loc_A3E5B6: FLdRfVar var_12C
  loc_A3E5B9: ConcatVar var_14C
  loc_A3E5BD: LitVarStr var_15C, ",HoliNope='"
  loc_A3E5C2: ConcatVar var_16C
  loc_A3E5C6: ILdRf var_8C
  loc_A3E5C9: CVarStr var_17C
  loc_A3E5CC: ConcatVar var_18C
  loc_A3E5D0: LitVarStr var_19C, "',FeleNope="
  loc_A3E5D5: ConcatVar var_1AC
  loc_A3E5D9: LitVarStr var_224, "Null"
  loc_A3E5DE: FStVarCopyObj var_234
  loc_A3E5E1: FLdRfVar var_234
  loc_A3E5E4: LitStr "'"
  loc_A3E5E7: FLdZeroAd var_368
  loc_A3E5EA: FStStrNoPop var_1F0
  loc_A3E5ED: ConcatStr
  loc_A3E5EE: FStStrNoPop var_1F4
  loc_A3E5F1: LitStr "'"
  loc_A3E5F4: ConcatStr
  loc_A3E5F5: CVarStr var_214
  loc_A3E5F8: FLdI2 var_362
  loc_A3E5FB: CVarBoolI2 var_204
  loc_A3E5FF: FLdRfVar var_244
  loc_A3E602: ImpAdCallFPR4  = IIf(, , )
  loc_A3E607: FLdRfVar var_244
  loc_A3E60A: ConcatVar var_254
  loc_A3E60E: LitVarStr var_264, ",HoleNope='"
  loc_A3E613: ConcatVar var_274
  loc_A3E617: ILdRf var_94
  loc_A3E61A: CVarStr var_284
  loc_A3E61D: ConcatVar var_294
  loc_A3E621: LitVarStr var_2A4, "',CodiUsua='"
  loc_A3E626: ConcatVar var_2B4
  loc_A3E62A: ImpAdLdI4 MemVar_C3D03C
  loc_A3E62D: CVarStr var_2C4
  loc_A3E630: ConcatVar var_2D4
  loc_A3E634: LitVarStr var_2E4, "' WHERE PeriInfo="
  loc_A3E639: ConcatVar var_2F4
  loc_A3E63D: ImpAdLdI2 MemVar_C3D064
  loc_A3E640: CVarI2 var_304
  loc_A3E643: ConcatVar var_314
  loc_A3E647: LitVarStr var_324, " AND CodiNope="
  loc_A3E64C: ConcatVar var_334
  loc_A3E650: ILdRf CodiNope
  loc_A3E653: CVarI4
  loc_A3E657: ConcatVar var_354
  loc_A3E65B: CStrVarVal var_358
  loc_A3E65F: Call EjecutarRsCls(from_stack_1v)
  loc_A3E664: FFreeStr var_98 = "": var_DC = "": var_1F0 = "": var_1F4 = "": var_358 = "": var_360 = ""
  loc_A3E675: FFreeVar var_D8 = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = "": var_1EC = "": var_204 = "": var_214 = "": var_234 = "": var_1AC = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2F4 = "": var_314 = "": var_334 = ""
  loc_A3E6A6: ILdRf CodiNope
  loc_A3E6A9: Call Encontrar(from_stack_1v)
  loc_A3E6AE: ExitProcHresult
End Sub

Public Sub Eliminar(CodiNope) '9AB5DC
  'Data Table: 42E90C
  loc_9AB548: LitStr "DELETE FROM notapedido WHERE PeriInfo="
  loc_9AB54B: ImpAdLdI2 MemVar_C3D064
  loc_9AB54E: CStrUI1
  loc_9AB550: FStStrNoPop var_88
  loc_9AB553: ConcatStr
  loc_9AB554: FStStrNoPop var_8C
  loc_9AB557: LitStr " AND CodiNope="
  loc_9AB55A: ConcatStr
  loc_9AB55B: FStStrNoPop var_90
  loc_9AB55E: ILdRf CodiNope
  loc_9AB561: CStrI4
  loc_9AB563: FStStrNoPop var_94
  loc_9AB566: ConcatStr
  loc_9AB567: FStStrNoPop var_98
  loc_9AB56A: Call EjecutarRsCls(from_stack_1v)
  loc_9AB56F: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_9AB57C: FLdRfVar var_A0
  loc_9AB57F: FLdPr Me
  loc_9AB582: MemLdPr RsFrm
  loc_9AB585:  = Me.AbsolutePosition
  loc_9AB58A: ILdRf var_A0
  loc_9AB58D: FStR4 var_9C
  loc_9AB590: Call Requery()
  loc_9AB595: FLdRfVar var_A0
  loc_9AB598: FLdPr Me
  loc_9AB59B: MemLdPr RsFrm
  loc_9AB59E:  = Me.RecordCount
  loc_9AB5A3: ILdRf var_A0
  loc_9AB5A6: LitI4 0
  loc_9AB5AB: GtI4
  loc_9AB5AC: BranchF loc_9AB5D8
  loc_9AB5AF: Call MoveFirst()
  loc_9AB5B4: ILdRf var_9C
  loc_9AB5B7: LitI4 1
  loc_9AB5BC: GtI4
  loc_9AB5BD: BranchF loc_9AB5D8
  loc_9AB5C0: LitVar_Missing var_B0
  loc_9AB5C3: PopAdLdVar
  loc_9AB5C4: ILdRf var_9C
  loc_9AB5C7: LitI4 2
  loc_9AB5CC: SubI4
  loc_9AB5CD: FLdPr Me
  loc_9AB5D0: MemLdPr RsFrm
  loc_9AB5D3: Me.Move from_stack_1, from_stack_2
  loc_9AB5D8: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '973E4C
  'Data Table: 42E90C
  loc_973E24: ILdRf sSelect
  loc_973E27: FStStrCopy var_88
  loc_973E2A: FLdPr Me
  loc_973E2D: MemLdRfVar from_stack_1.RsFrm
  loc_973E30: ILdRf var_88
  loc_973E33: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973E38: LitVarStr var_98, "Primary"
  loc_973E3D: PopAdLdVar
  loc_973E3E: FLdPr Me
  loc_973E41: LateIdCall
  loc_973E49: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95B68C
  'Data Table: 42E90C
  loc_95B674: ILdRf sSelect
  loc_95B677: FStStrCopy var_88
  loc_95B67A: FLdPr Me
  loc_95B67D: MemLdRfVar from_stack_1.global_56
  loc_95B680: ILdRf var_88
  loc_95B683: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95B688: ExitProcHresult
End Sub

Public Sub Requery() '968DE0
  'Data Table: 42E90C
  loc_968DC0: FLdPr Me
  loc_968DC3: MemLdRfVar from_stack_1.RsFrm
  loc_968DC6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_968DCB: LitVarStr var_94, "Primary"
  loc_968DD0: PopAdLdVar
  loc_968DD1: FLdPr Me
  loc_968DD4: LateIdCall
  loc_968DDC: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) '95B5A8
  'Data Table: 42E90C
  loc_95B590: ILdRf sSelect
  loc_95B593: FStStrCopy var_88
  loc_95B596: FLdPr Me
  loc_95B599: MemLdRfVar from_stack_1.global_60
  loc_95B59C: ILdRf var_88
  loc_95B59F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95B5A4: ExitProcHresult
End Sub

Public Property Get DataSource() '9740CC
  'Data Table: 42E90C
  loc_9740A8: ZeroRetVal
  loc_9740AA: FLdRfVar var_8C
  loc_9740AD: FLdPr Me
  loc_9740B0: MemLdPr RsFrm
  loc_9740B3:  = Me.DataSource
  loc_9740B8: ILdRf var_8C
  loc_9740BB: CastAd
  loc_9740BE: FStAdFunc var_88
  loc_9740C1: FFree1Ad var_8C
  loc_9740C4: ExitProcCbHresult
  loc_9740CA: Ary1StVar
End Sub

Public Sub EncontrarCotizacion(PeriInfo, CodiNope, CucuPers) '9A3410
  'Data Table: 42E90C
  loc_9A339C: ILdRf CucuPers
  loc_9A339F: FStStrCopy var_88
  loc_9A33A2: Call Requery()
  loc_9A33A7: LitStr "PeriInfo = '"
  loc_9A33AA: FLdI2 PeriInfo
  loc_9A33AD: CStrUI1
  loc_9A33AF: FStStrNoPop var_8C
  loc_9A33B2: ConcatStr
  loc_9A33B3: FStStrNoPop var_90
  loc_9A33B6: LitStr "'"
  loc_9A33B9: ConcatStr
  loc_9A33BA: PopTmpLdAdStr
  loc_9A33BE: Call Find(from_stack_1v)
  loc_9A33C3: FFreeStr var_8C = "": var_90 = ""
  loc_9A33CC: LitStr "CodiNope = '"
  loc_9A33CF: ILdRf CodiNope
  loc_9A33D2: CStrI4
  loc_9A33D4: FStStrNoPop var_8C
  loc_9A33D7: ConcatStr
  loc_9A33D8: FStStrNoPop var_90
  loc_9A33DB: LitStr "'"
  loc_9A33DE: ConcatStr
  loc_9A33DF: PopTmpLdAdStr
  loc_9A33E3: Call Find(from_stack_1v)
  loc_9A33E8: FFreeStr var_8C = "": var_90 = ""
  loc_9A33F1: LitStr "CucuPers = '"
  loc_9A33F4: ILdRf var_88
  loc_9A33F7: ConcatStr
  loc_9A33F8: FStStrNoPop var_8C
  loc_9A33FB: LitStr "'"
  loc_9A33FE: ConcatStr
  loc_9A33FF: PopTmpLdAdStr
  loc_9A3403: Call Find(from_stack_1v)
  loc_9A3408: FFreeStr var_8C = ""
  loc_9A340F: ExitProcHresult
End Sub

Public Function ValidaLimiteCompra(iCodiTico, doTotaCompra) '9B77A0
  'Data Table: 42E90C
  loc_9B76FC: LitStr "SELECT LimiTico"
  loc_9B76FF: LitStr " FROM tipocompra"
  loc_9B7702: ConcatStr
  loc_9B7703: FStStrNoPop var_8C
  loc_9B7706: LitStr " WHERE CodiTico = "
  loc_9B7709: ConcatStr
  loc_9B770A: FStStrNoPop var_90
  loc_9B770D: FLdI2 iCodiTico
  loc_9B7710: CStrUI1
  loc_9B7712: FStStrNoPop ValidaLimiteCompra
  loc_9B7715: ConcatStr
  loc_9B7716: FStStrNoPop var_98
  loc_9B7719: Call EjecutarRsCls(from_stack_1v)
  loc_9B771E: FFreeStr var_8C = "": var_90 = "": ValidaLimiteCompra = ""
  loc_9B7729: FLdRfVar var_9C
  loc_9B772C: FLdPr Me
  loc_9B772F: MemLdPr global_56
  loc_9B7732:  = Me.RecordCount
  loc_9B7737: ILdRf var_9C
  loc_9B773A: LitI4 0
  loc_9B773F: GtI4
  loc_9B7740: BranchF loc_9B7793
  loc_9B7743: FLdRfVar var_C4
  loc_9B7746: FLdRfVar var_B4
  loc_9B7749: LitVarStr var_B0, "LimiTico"
  loc_9B774E: PopAdLdVar
  loc_9B774F: FLdRfVar var_A0
  loc_9B7752: FLdPr Me
  loc_9B7755: MemLdPr global_56
  loc_9B7758:  = Me.Fields
  loc_9B775D: FLdPr var_A0
  loc_9B7760: from_stack_2 = Me.Item(from_stack_1)
  loc_9B7765: FLdPr var_B4
  loc_9B7768:  = Me.Value
  loc_9B776D: FLdFPR8 doTotaCompra
  loc_9B7770: FLdRfVar var_C4
  loc_9B7773: FnCDblVar
  loc_9B7775: GtR4
  loc_9B7776: FFreeAd var_A0 = ""
  loc_9B777D: FFree1Var var_C4 = ""
  loc_9B7780: BranchF loc_9B778B
  loc_9B7783: LitI2_Byte &HFF
  loc_9B7785: FStI2 var_86
  loc_9B7788: Branch loc_9B7790
  loc_9B778B: LitI2_Byte 0
  loc_9B778D: FStI2 var_86
  loc_9B7790: Branch loc_9B7798
  loc_9B7793: LitI2_Byte &HFF
  loc_9B7795: FStI2 var_86
  loc_9B7798: ExitProcCbHresult
  loc_9B779E: FLdRfVar var_6BCC
End Function

Public Function TieneExpediente(PeriInfo, ExorImpu, CodiNope) 'A0BDB0
  'Data Table: 42E90C
  loc_A0BC7C: ILdRf PeriInfo
  loc_A0BC7F: FStStrCopy var_8C
  loc_A0BC82: ILdRf ExorImpu
  loc_A0BC85: FStStrCopy var_90
  loc_A0BC88: ZeroRetVal
  loc_A0BC8A: LitStr "SELECT IFNULL(Group_concat(Distinct CodiNope),'') sCodiNope"
  loc_A0BC8D: LitStr " FROM notapedido"
  loc_A0BC90: ConcatStr
  loc_A0BC91: FStStrNoPop TieneExpediente
  loc_A0BC94: LitStr " WHERE PeriInfo = '"
  loc_A0BC97: ConcatStr
  loc_A0BC98: FStStrNoPop var_98
  loc_A0BC9B: ILdRf var_8C
  loc_A0BC9E: ConcatStr
  loc_A0BC9F: FStStrNoPop var_9C
  loc_A0BCA2: LitStr "' AND ExpeImpu = '"
  loc_A0BCA5: ConcatStr
  loc_A0BCA6: FStStrNoPop var_A0
  loc_A0BCA9: ILdRf var_90
  loc_A0BCAC: ConcatStr
  loc_A0BCAD: FStStrNoPop var_A4
  loc_A0BCB0: LitStr "' AND FeanNope IS NULL AND CodiNope != "
  loc_A0BCB3: ConcatStr
  loc_A0BCB4: FStStrNoPop var_A8
  loc_A0BCB7: FLdI2 CodiNope
  loc_A0BCBA: CStrUI1
  loc_A0BCBC: FStStrNoPop var_AC
  loc_A0BCBF: ConcatStr
  loc_A0BCC0: FStStrNoPop var_B0
  loc_A0BCC3: LitStr ";"
  loc_A0BCC6: ConcatStr
  loc_A0BCC7: FStStrNoPop var_B4
  loc_A0BCCA: Call EjecutarRsCls(from_stack_1v)
  loc_A0BCCF: FFreeStr TieneExpediente = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0BCE4: FLdRfVar var_B8
  loc_A0BCE7: FLdPr Me
  loc_A0BCEA: MemLdPr global_56
  loc_A0BCED:  = Me.RecordCount
  loc_A0BCF2: ILdRf var_B8
  loc_A0BCF5: LitI4 0
  loc_A0BCFA: GtI4
  loc_A0BCFB: BranchF loc_A0BDAA
  loc_A0BCFE: FLdRfVar var_E0
  loc_A0BD01: FLdRfVar var_D0
  loc_A0BD04: LitVarStr var_CC, "sCodiNope"
  loc_A0BD09: PopAdLdVar
  loc_A0BD0A: FLdRfVar var_BC
  loc_A0BD0D: FLdPr Me
  loc_A0BD10: MemLdPr global_56
  loc_A0BD13:  = Me.Fields
  loc_A0BD18: FLdPr var_BC
  loc_A0BD1B: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BD20: FLdPr var_D0
  loc_A0BD23:  = Me.Value
  loc_A0BD28: FLdRfVar var_E0
  loc_A0BD2B: LitVarStr var_F0, vbNullString
  loc_A0BD30: HardType
  loc_A0BD31: NeVarBool
  loc_A0BD33: FFreeAd var_BC = ""
  loc_A0BD3A: FFree1Var var_E0 = ""
  loc_A0BD3D: BranchF loc_A0BDAA
  loc_A0BD40: LitVarStr var_F0, "Advertencia: La Nota de Pedido: "
  loc_A0BD45: FLdRfVar var_E0
  loc_A0BD48: FLdRfVar var_D0
  loc_A0BD4B: LitVarStr var_CC, "sCodiNope"
  loc_A0BD50: PopAdLdVar
  loc_A0BD51: FLdRfVar var_BC
  loc_A0BD54: FLdPr Me
  loc_A0BD57: MemLdPr global_56
  loc_A0BD5A:  = Me.Fields
  loc_A0BD5F: FLdPr var_BC
  loc_A0BD62: from_stack_2 = Me.Item(from_stack_1)
  loc_A0BD67: FLdPr var_D0
  loc_A0BD6A:  = Me.Value
  loc_A0BD6F: FLdRfVar var_E0
  loc_A0BD72: ConcatVar var_100
  loc_A0BD76: LitVarStr var_110, " tiene el mismo Expediente: "
  loc_A0BD7B: ConcatVar var_120
  loc_A0BD7F: ILdRf var_90
  loc_A0BD82: CVarStr var_130
  loc_A0BD85: ConcatVar var_140
  loc_A0BD89: LitVarStr var_150, " ..."
  loc_A0BD8E: ConcatVar var_160
  loc_A0BD92: CStrVarTmp
  loc_A0BD93: FStStr var_88
  loc_A0BD96: FFreeAd var_BC = ""
  loc_A0BD9D: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_140 = ""
  loc_A0BDAA: ExitProcCbHresult
End Function

Public Function TienePreventiva(PeriInfo, CodiNope) '9D29B4
  'Data Table: 42E90C
  loc_9D28F0: ILdRf PeriInfo
  loc_9D28F3: FStStrCopy var_8C
  loc_9D28F6: ZeroRetVal
  loc_9D28F8: LitStr "SELECT CodiItno "
  loc_9D28FB: LitStr " FROM itemnota"
  loc_9D28FE: ConcatStr
  loc_9D28FF: FStStrNoPop var_90
  loc_9D2902: LitStr " WHERE PeriInfo = '"
  loc_9D2905: ConcatStr
  loc_9D2906: FStStrNoPop TienePreventiva
  loc_9D2909: ILdRf var_8C
  loc_9D290C: ConcatStr
  loc_9D290D: FStStrNoPop var_98
  loc_9D2910: LitStr "' AND CodiNope = "
  loc_9D2913: ConcatStr
  loc_9D2914: FStStrNoPop var_9C
  loc_9D2917: ILdRf CodiNope
  loc_9D291A: CStrI4
  loc_9D291C: FStStrNoPop var_A0
  loc_9D291F: ConcatStr
  loc_9D2920: FStStrNoPop var_A4
  loc_9D2923: LitStr " AND IdImpu > 0"
  loc_9D2926: ConcatStr
  loc_9D2927: FStStrNoPop var_A8
  loc_9D292A: Call EjecutarRsCls(from_stack_1v)
  loc_9D292F: FFreeStr var_90 = "": TienePreventiva = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9D2940: FLdRfVar var_AC
  loc_9D2943: FLdPr Me
  loc_9D2946: MemLdPr global_56
  loc_9D2949:  = Me.RecordCount
  loc_9D294E: ILdRf var_AC
  loc_9D2951: LitI4 0
  loc_9D2956: GtI4
  loc_9D2957: BranchF loc_9D29AD
  loc_9D295A: LitVarStr var_E4, "El Item "
  loc_9D295F: FLdRfVar var_D4
  loc_9D2962: FLdRfVar var_C4
  loc_9D2965: LitVarStr var_C0, "CodiItno"
  loc_9D296A: PopAdLdVar
  loc_9D296B: FLdRfVar var_B0
  loc_9D296E: FLdPr Me
  loc_9D2971: MemLdPr global_56
  loc_9D2974:  = Me.Fields
  loc_9D2979: FLdPr var_B0
  loc_9D297C: from_stack_2 = Me.Item(from_stack_1)
  loc_9D2981: FLdPr var_C4
  loc_9D2984:  = Me.Value
  loc_9D2989: FLdRfVar var_D4
  loc_9D298C: ConcatVar var_F4
  loc_9D2990: LitVarStr var_104, " de la Nota de Pedido tiene Imputación Preventiva. Verifique..."
  loc_9D2995: ConcatVar var_114
  loc_9D2999: CStrVarTmp
  loc_9D299A: FStStr var_88
  loc_9D299D: FFreeAd var_B0 = ""
  loc_9D29A4: FFreeVar var_D4 = "": var_F4 = ""
  loc_9D29AD: ExitProcCbHresult
  loc_9D29B3: CI4Str
End Function

Public Function TieneCotizacion(CodiNope) '9F2C5C
  'Data Table: 42E90C
  loc_9F2B4C: ZeroRetVal
  loc_9F2B4E: LitStr "SELECT IFNULL(GROUP_CONCAT(IdCoti),'') sIdCoti"
  loc_9F2B51: LitStr " FROM notapedido np"
  loc_9F2B54: ConcatStr
  loc_9F2B55: FStStrNoPop var_8C
  loc_9F2B58: LitStr " LEFT JOIN cotizacion c ON c.PeriInfo = np.PeriInfo AND c.CodiNope = np.CodiNope AND c.FeanCoti IS NULL"
  loc_9F2B5B: ConcatStr
  loc_9F2B5C: FStStrNoPop var_90
  loc_9F2B5F: LitStr " WHERE np.PeriInfo = "
  loc_9F2B62: ConcatStr
  loc_9F2B63: FStStrNoPop TieneCotizacion
  loc_9F2B66: ImpAdLdI2 MemVar_C3D064
  loc_9F2B69: CStrUI1
  loc_9F2B6B: FStStrNoPop var_98
  loc_9F2B6E: ConcatStr
  loc_9F2B6F: FStStrNoPop var_9C
  loc_9F2B72: LitStr " AND np.CodiNope = "
  loc_9F2B75: ConcatStr
  loc_9F2B76: FStStrNoPop var_A0
  loc_9F2B79: ILdRf CodiNope
  loc_9F2B7C: CStrI4
  loc_9F2B7E: FStStrNoPop var_A4
  loc_9F2B81: ConcatStr
  loc_9F2B82: FStStrNoPop var_A8
  loc_9F2B85: LitStr " AND c.CucuPers IS NOT NULL;"
  loc_9F2B88: ConcatStr
  loc_9F2B89: FStStrNoPop var_AC
  loc_9F2B8C: Call EjecutarRsCls(from_stack_1v)
  loc_9F2B91: FFreeStr var_8C = "": var_90 = "": TieneCotizacion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9F2BA6: FLdRfVar var_B0
  loc_9F2BA9: FLdPr Me
  loc_9F2BAC: MemLdPr global_56
  loc_9F2BAF:  = Me.RecordCount
  loc_9F2BB4: ILdRf var_B0
  loc_9F2BB7: LitI4 0
  loc_9F2BBC: GtI4
  loc_9F2BBD: BranchF loc_9F2C55
  loc_9F2BC0: FLdRfVar var_D8
  loc_9F2BC3: FLdRfVar var_C8
  loc_9F2BC6: LitVarStr var_C4, "sIdCoti"
  loc_9F2BCB: PopAdLdVar
  loc_9F2BCC: FLdRfVar var_B4
  loc_9F2BCF: FLdPr Me
  loc_9F2BD2: MemLdPr global_56
  loc_9F2BD5:  = Me.Fields
  loc_9F2BDA: FLdPr var_B4
  loc_9F2BDD: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2BE2: FLdPr var_C8
  loc_9F2BE5:  = Me.Value
  loc_9F2BEA: FLdRfVar var_D8
  loc_9F2BED: LitVarStr var_E8, vbNullString
  loc_9F2BF2: HardType
  loc_9F2BF3: NeVarBool
  loc_9F2BF5: FFreeAd var_B4 = ""
  loc_9F2BFC: FFree1Var var_D8 = ""
  loc_9F2BFF: BranchF loc_9F2C55
  loc_9F2C02: LitVarStr var_E8, "Advertencia: La Nota Pedido tiene Cotización/es: "
  loc_9F2C07: FLdRfVar var_D8
  loc_9F2C0A: FLdRfVar var_C8
  loc_9F2C0D: LitVarStr var_C4, "sIdCoti"
  loc_9F2C12: PopAdLdVar
  loc_9F2C13: FLdRfVar var_B4
  loc_9F2C16: FLdPr Me
  loc_9F2C19: MemLdPr global_56
  loc_9F2C1C:  = Me.Fields
  loc_9F2C21: FLdPr var_B4
  loc_9F2C24: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2C29: FLdPr var_C8
  loc_9F2C2C:  = Me.Value
  loc_9F2C31: FLdRfVar var_D8
  loc_9F2C34: ConcatVar var_F8
  loc_9F2C38: LitVarStr var_108, "."
  loc_9F2C3D: ConcatVar var_118
  loc_9F2C41: CStrVarTmp
  loc_9F2C42: FStStr var_88
  loc_9F2C45: FFreeAd var_B4 = ""
  loc_9F2C4C: FFreeVar var_D8 = "": var_F8 = ""
  loc_9F2C55: ExitProcCbHresult
  loc_9F2C5B: PopAdLdVar
End Function

Public Function TieneOrdendeCompra(PeriInfo, CodiNope) '9E2BC8
  'Data Table: 42E90C
  loc_9E2ADC: ZeroRetVal
  loc_9E2ADE: LitStr "SELECT IFNULL(Group_concat(distinct CodiOrco),'') ordenes"
  loc_9E2AE1: LitStr " FROM ordencompra"
  loc_9E2AE4: ConcatStr
  loc_9E2AE5: FStStrNoPop var_8C
  loc_9E2AE8: LitStr " WHERE PeriInfo = "
  loc_9E2AEB: ConcatStr
  loc_9E2AEC: FStStrNoPop var_90
  loc_9E2AEF: FLdI2 PeriInfo
  loc_9E2AF2: CStrUI1
  loc_9E2AF4: FStStrNoPop TieneOrdendeCompra
  loc_9E2AF7: ConcatStr
  loc_9E2AF8: FStStrNoPop var_98
  loc_9E2AFB: LitStr " AND CodiNope = "
  loc_9E2AFE: ConcatStr
  loc_9E2AFF: FStStrNoPop var_9C
  loc_9E2B02: ILdRf CodiNope
  loc_9E2B05: CStrI4
  loc_9E2B07: FStStrNoPop var_A0
  loc_9E2B0A: ConcatStr
  loc_9E2B0B: FStStrNoPop var_A4
  loc_9E2B0E: LitStr " AND FeanOrco IS NULL"
  loc_9E2B11: ConcatStr
  loc_9E2B12: FStStrNoPop var_A8
  loc_9E2B15: Call EjecutarRsCls(from_stack_1v)
  loc_9E2B1A: FFreeStr var_8C = "": var_90 = "": TieneOrdendeCompra = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9E2B2D: FLdRfVar var_D0
  loc_9E2B30: FLdRfVar var_C0
  loc_9E2B33: LitVarStr var_BC, "ordenes"
  loc_9E2B38: PopAdLdVar
  loc_9E2B39: FLdRfVar var_AC
  loc_9E2B3C: FLdPr Me
  loc_9E2B3F: MemLdPr global_56
  loc_9E2B42:  = Me.Fields
  loc_9E2B47: FLdPr var_AC
  loc_9E2B4A: from_stack_2 = Me.Item(from_stack_1)
  loc_9E2B4F: FLdPr var_C0
  loc_9E2B52:  = Me.Value
  loc_9E2B57: FLdRfVar var_D0
  loc_9E2B5A: LitVarStr var_E0, vbNullString
  loc_9E2B5F: HardType
  loc_9E2B60: NeVarBool
  loc_9E2B62: FFreeAd var_AC = ""
  loc_9E2B69: FFree1Var var_D0 = ""
  loc_9E2B6C: BranchF loc_9E2BC2
  loc_9E2B6F: LitVarStr var_E0, "La Nota de Pedido está incluida en Orden de Compra: "
  loc_9E2B74: FLdRfVar var_D0
  loc_9E2B77: FLdRfVar var_C0
  loc_9E2B7A: LitVarStr var_BC, "ordenes"
  loc_9E2B7F: PopAdLdVar
  loc_9E2B80: FLdRfVar var_AC
  loc_9E2B83: FLdPr Me
  loc_9E2B86: MemLdPr global_56
  loc_9E2B89:  = Me.Fields
  loc_9E2B8E: FLdPr var_AC
  loc_9E2B91: from_stack_2 = Me.Item(from_stack_1)
  loc_9E2B96: FLdPr var_C0
  loc_9E2B99:  = Me.Value
  loc_9E2B9E: FLdRfVar var_D0
  loc_9E2BA1: ConcatVar var_F0
  loc_9E2BA5: LitVarStr var_100, ". Verifique..."
  loc_9E2BAA: ConcatVar var_110
  loc_9E2BAE: CStrVarTmp
  loc_9E2BAF: FStStr var_88
  loc_9E2BB2: FFreeAd var_AC = ""
  loc_9E2BB9: FFreeVar var_D0 = "": var_F0 = ""
  loc_9E2BC2: ExitProcCbHresult
End Function

Public Function UltimaFechaOrdenCompra(PeriInfo) 'B772F0
  'Data Table: 42E90C
  loc_B76688: LitStr "SELECT CodiOrco, FechOrco FROM ordencompra WHERE PeriInfo = "
  loc_B7668B: FLdI2 PeriInfo
  loc_B7668E: CStrUI1
  loc_B76690: FStStrNoPop var_A8
  loc_B76693: ConcatStr
  loc_B76694: FStStrNoPop var_AC
  loc_B76697: LitStr " ORDER BY CodiOrco DESC LIMIT 1;"
  loc_B7669A: ConcatStr
  loc_B7669B: FStStrNoPop var_B0
  loc_B7669E: Call EjecutarRsCls(from_stack_1v)
  loc_B766A3: FFreeStr var_A8 = "": var_AC = ""
  loc_B766AC: FLdRfVar var_B4
  loc_B766AF: FLdPr Me
  loc_B766B2: MemLdPr global_56
  loc_B766B5:  = Me.RecordCount
  loc_B766BA: ILdRf var_B4
  loc_B766BD: LitI4 0
  loc_B766C2: GtI4
  loc_B766C3: BranchF loc_B76800
  loc_B766C6: FLdRfVar var_DC
  loc_B766C9: FLdRfVar var_CC
  loc_B766CC: LitVarStr var_C8, "FechOrco"
  loc_B766D1: PopAdLdVar
  loc_B766D2: FLdRfVar var_B8
  loc_B766D5: FLdPr Me
  loc_B766D8: MemLdPr global_56
  loc_B766DB:  = Me.Fields
  loc_B766E0: FLdPr var_B8
  loc_B766E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B766E8: FLdPr var_CC
  loc_B766EB:  = Me.Value
  loc_B766F0: FLdRfVar var_DC
  loc_B766F3: FnCDateVar
  loc_B766F5: CStrDate
  loc_B766F7: FStStrNoPop var_A8
  loc_B766FA: LitI4 0
  loc_B766FF: FLdRfVar var_A0
  loc_B76702: Ary1StStrCopy
  loc_B76703: FFree1Str var_A8
  loc_B76706: FFreeAd var_B8 = ""
  loc_B7670D: FFree1Var var_DC = ""
  loc_B76710: FLdRfVar var_DC
  loc_B76713: FLdRfVar var_CC
  loc_B76716: LitVarStr var_C8, "FechOrco"
  loc_B7671B: PopAdLdVar
  loc_B7671C: FLdRfVar var_B8
  loc_B7671F: FLdPr Me
  loc_B76722: MemLdPr global_56
  loc_B76725:  = Me.Fields
  loc_B7672A: FLdPr var_B8
  loc_B7672D: from_stack_2 = Me.Item(from_stack_1)
  loc_B76732: FLdPr var_CC
  loc_B76735:  = Me.Value
  loc_B7673A: FLdRfVar var_DC
  loc_B7673D: FnCDateVar
  loc_B7673F: CStrDate
  loc_B76741: FStStrNoPop var_A8
  loc_B76744: LitI4 2
  loc_B76749: FLdRfVar var_A0
  loc_B7674C: Ary1StStrCopy
  loc_B7674D: FFree1Str var_A8
  loc_B76750: FFreeAd var_B8 = ""
  loc_B76757: FFree1Var var_DC = ""
  loc_B7675A: LitVarStr var_EC, "Ya existe OC "
  loc_B7675F: FLdRfVar var_DC
  loc_B76762: FLdRfVar var_CC
  loc_B76765: LitVarStr var_C8, "CodiOrco"
  loc_B7676A: PopAdLdVar
  loc_B7676B: FLdRfVar var_B8
  loc_B7676E: FLdPr Me
  loc_B76771: MemLdPr global_56
  loc_B76774:  = Me.Fields
  loc_B76779: FLdPr var_B8
  loc_B7677C: from_stack_2 = Me.Item(from_stack_1)
  loc_B76781: FLdPr var_CC
  loc_B76784:  = Me.Value
  loc_B76789: FLdRfVar var_DC
  loc_B7678C: ConcatVar var_FC
  loc_B76790: LitVarStr var_10C, " con Fecha "
  loc_B76795: ConcatVar var_11C
  loc_B76799: FLdRfVar var_144
  loc_B7679C: FLdRfVar var_134
  loc_B7679F: LitVarStr var_130, "FechOrco"
  loc_B767A4: PopAdLdVar
  loc_B767A5: FLdRfVar var_120
  loc_B767A8: FLdPr Me
  loc_B767AB: MemLdPr global_56
  loc_B767AE:  = Me.Fields
  loc_B767B3: FLdPr var_120
  loc_B767B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B767BB: FLdPr var_134
  loc_B767BE:  = Me.Value
  loc_B767C3: FLdRfVar var_144
  loc_B767C6: ConcatVar var_154
  loc_B767CA: LitVarStr var_164, ". Verifique..."
  loc_B767CF: ConcatVar var_174
  loc_B767D3: CStrVarTmp
  loc_B767D4: FStStrNoPop var_A8
  loc_B767D7: LitI4 1
  loc_B767DC: FLdRfVar var_A0
  loc_B767DF: Ary1StStrCopy
  loc_B767E0: FFree1Str var_A8
  loc_B767E3: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B767EE: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B767FD: Branch loc_B76834
  loc_B76800: ImpAdLdFPR8 MemVar_C3D054
  loc_B76803: CStrDate
  loc_B76805: FStStrNoPop var_A8
  loc_B76808: LitI4 0
  loc_B7680D: FLdRfVar var_A0
  loc_B76810: Ary1StStrCopy
  loc_B76811: FFree1Str var_A8
  loc_B76814: ImpAdLdFPR8 MemVar_C3D054
  loc_B76817: CStrDate
  loc_B76819: FStStrNoPop var_A8
  loc_B7681C: LitI4 2
  loc_B76821: FLdRfVar var_A0
  loc_B76824: Ary1StStrCopy
  loc_B76825: FFree1Str var_A8
  loc_B76828: LitStr "conFechaMinima"
  loc_B7682B: LitI4 1
  loc_B76830: FLdRfVar var_A0
  loc_B76833: Ary1StStrCopy
  loc_B76834: LitStr "SELECT FechNope FROM notapedido WHERE PeriInfo = "
  loc_B76837: FLdI2 PeriInfo
  loc_B7683A: CStrUI1
  loc_B7683C: FStStrNoPop var_A8
  loc_B7683F: ConcatStr
  loc_B76840: FStStrNoPop var_AC
  loc_B76843: LitStr " AND CodiNope = "
  loc_B76846: ConcatStr
  loc_B76847: CVarStr var_FC
  loc_B7684A: FLdRfVar var_DC
  loc_B7684D: FLdRfVar var_CC
  loc_B76850: LitVarStr var_C8, "CodiNope"
  loc_B76855: PopAdLdVar
  loc_B76856: FLdRfVar var_B8
  loc_B76859: FLdPr Me
  loc_B7685C: MemLdPr RsFrm
  loc_B7685F:  = Me.Fields
  loc_B76864: FLdPr var_B8
  loc_B76867: from_stack_2 = Me.Item(from_stack_1)
  loc_B7686C: FLdPr var_CC
  loc_B7686F:  = Me.Value
  loc_B76874: FLdRfVar var_DC
  loc_B76877: ConcatVar var_11C
  loc_B7687B: LitVarStr var_EC, ";"
  loc_B76880: ConcatVar var_144
  loc_B76884: CStrVarVal var_B0
  loc_B76888: Call EjecutarRsCls(from_stack_1v)
  loc_B7688D: FFreeStr var_A8 = "": var_AC = ""
  loc_B76896: FFreeAd var_B8 = ""
  loc_B7689D: FFreeVar var_FC = "": var_DC = "": var_11C = ""
  loc_B768A8: FLdRfVar var_B4
  loc_B768AB: FLdPr Me
  loc_B768AE: MemLdPr global_56
  loc_B768B1:  = Me.RecordCount
  loc_B768B6: ILdRf var_B4
  loc_B768B9: LitI4 0
  loc_B768BE: GtI4
  loc_B768BF: BranchF loc_B76A41
  loc_B768C2: FLdRfVar var_DC
  loc_B768C5: FLdRfVar var_CC
  loc_B768C8: LitVarStr var_C8, "FechNope"
  loc_B768CD: PopAdLdVar
  loc_B768CE: FLdRfVar var_B8
  loc_B768D1: FLdPr Me
  loc_B768D4: MemLdPr global_56
  loc_B768D7:  = Me.Fields
  loc_B768DC: FLdPr var_B8
  loc_B768DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B768E4: FLdPr var_CC
  loc_B768E7:  = Me.Value
  loc_B768EC: LitI4 0
  loc_B768F1: FLdRfVar var_A0
  loc_B768F4: Ary1LdI4
  loc_B768F5: CDateStr
  loc_B768F7: FLdRfVar var_DC
  loc_B768FA: FnCDateVar
  loc_B768FC: LtR8
  loc_B768FD: FFreeAd var_B8 = ""
  loc_B76904: FFree1Var var_DC = ""
  loc_B76907: BranchF loc_B76A41
  loc_B7690A: FLdRfVar var_DC
  loc_B7690D: FLdRfVar var_CC
  loc_B76910: LitVarStr var_C8, "FechNope"
  loc_B76915: PopAdLdVar
  loc_B76916: FLdRfVar var_B8
  loc_B76919: FLdPr Me
  loc_B7691C: MemLdPr global_56
  loc_B7691F:  = Me.Fields
  loc_B76924: FLdPr var_B8
  loc_B76927: from_stack_2 = Me.Item(from_stack_1)
  loc_B7692C: FLdPr var_CC
  loc_B7692F:  = Me.Value
  loc_B76934: FLdRfVar var_DC
  loc_B76937: FnCDateVar
  loc_B76939: CStrDate
  loc_B7693B: FStStrNoPop var_A8
  loc_B7693E: LitI4 0
  loc_B76943: FLdRfVar var_A0
  loc_B76946: Ary1StStrCopy
  loc_B76947: FFree1Str var_A8
  loc_B7694A: FFreeAd var_B8 = ""
  loc_B76951: FFree1Var var_DC = ""
  loc_B76954: LitVarStr var_EC, "La NP "
  loc_B76959: FLdRfVar var_DC
  loc_B7695C: FLdRfVar var_CC
  loc_B7695F: LitVarStr var_C8, "CodiNope"
  loc_B76964: PopAdLdVar
  loc_B76965: FLdRfVar var_B8
  loc_B76968: FLdPr Me
  loc_B7696B: MemLdPr RsFrm
  loc_B7696E:  = Me.Fields
  loc_B76973: FLdPr var_B8
  loc_B76976: from_stack_2 = Me.Item(from_stack_1)
  loc_B7697B: FLdPr var_CC
  loc_B7697E:  = Me.Value
  loc_B76983: FLdRfVar var_DC
  loc_B76986: ConcatVar var_FC
  loc_B7698A: LitVarStr var_10C, " tiene Fecha "
  loc_B7698F: ConcatVar var_11C
  loc_B76993: FLdRfVar var_144
  loc_B76996: FLdRfVar var_134
  loc_B76999: LitVarStr var_130, "FechNope"
  loc_B7699E: PopAdLdVar
  loc_B7699F: FLdRfVar var_120
  loc_B769A2: FLdPr Me
  loc_B769A5: MemLdPr global_56
  loc_B769A8:  = Me.Fields
  loc_B769AD: FLdPr var_120
  loc_B769B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B769B5: FLdPr var_134
  loc_B769B8:  = Me.Value
  loc_B769BD: FLdRfVar var_144
  loc_B769C0: ConcatVar var_154
  loc_B769C4: LitVarStr var_164, ". Verifique..."
  loc_B769C9: ConcatVar var_174
  loc_B769CD: CStrVarTmp
  loc_B769CE: FStStrNoPop var_A8
  loc_B769D1: LitI4 1
  loc_B769D6: FLdRfVar var_A0
  loc_B769D9: Ary1StStrCopy
  loc_B769DA: FFree1Str var_A8
  loc_B769DD: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B769E8: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B769F7: FLdRfVar var_DC
  loc_B769FA: FLdRfVar var_CC
  loc_B769FD: LitVarStr var_C8, "FechNope"
  loc_B76A02: PopAdLdVar
  loc_B76A03: FLdRfVar var_B8
  loc_B76A06: FLdPr Me
  loc_B76A09: MemLdPr global_56
  loc_B76A0C:  = Me.Fields
  loc_B76A11: FLdPr var_B8
  loc_B76A14: from_stack_2 = Me.Item(from_stack_1)
  loc_B76A19: FLdPr var_CC
  loc_B76A1C:  = Me.Value
  loc_B76A21: FLdRfVar var_DC
  loc_B76A24: FnCDateVar
  loc_B76A26: CStrDate
  loc_B76A28: FStStrNoPop var_A8
  loc_B76A2B: LitI4 2
  loc_B76A30: FLdRfVar var_A0
  loc_B76A33: Ary1StStrCopy
  loc_B76A34: FFree1Str var_A8
  loc_B76A37: FFreeAd var_B8 = ""
  loc_B76A3E: FFree1Var var_DC = ""
  loc_B76A41: LitStr "SELECT IFNULL(Max(FechCoti),'2000-01-01') FechCoti FROM cotizacion WHERE PeriInfo = "
  loc_B76A44: FLdI2 PeriInfo
  loc_B76A47: CStrUI1
  loc_B76A49: FStStrNoPop var_A8
  loc_B76A4C: ConcatStr
  loc_B76A4D: FStStrNoPop var_AC
  loc_B76A50: LitStr " AND CodiNope = "
  loc_B76A53: ConcatStr
  loc_B76A54: CVarStr var_FC
  loc_B76A57: FLdRfVar var_DC
  loc_B76A5A: FLdRfVar var_CC
  loc_B76A5D: LitVarStr var_C8, "CodiNope"
  loc_B76A62: PopAdLdVar
  loc_B76A63: FLdRfVar var_B8
  loc_B76A66: FLdPr Me
  loc_B76A69: MemLdPr RsFrm
  loc_B76A6C:  = Me.Fields
  loc_B76A71: FLdPr var_B8
  loc_B76A74: from_stack_2 = Me.Item(from_stack_1)
  loc_B76A79: FLdPr var_CC
  loc_B76A7C:  = Me.Value
  loc_B76A81: FLdRfVar var_DC
  loc_B76A84: ConcatVar var_11C
  loc_B76A88: LitVarStr var_EC, ";"
  loc_B76A8D: ConcatVar var_144
  loc_B76A91: CStrVarVal var_B0
  loc_B76A95: Call EjecutarRsCls(from_stack_1v)
  loc_B76A9A: FFreeStr var_A8 = "": var_AC = ""
  loc_B76AA3: FFreeAd var_B8 = ""
  loc_B76AAA: FFreeVar var_FC = "": var_DC = "": var_11C = ""
  loc_B76AB5: FLdRfVar var_B4
  loc_B76AB8: FLdPr Me
  loc_B76ABB: MemLdPr global_56
  loc_B76ABE:  = Me.RecordCount
  loc_B76AC3: ILdRf var_B4
  loc_B76AC6: LitI4 0
  loc_B76ACB: GtI4
  loc_B76ACC: BranchF loc_B76C4E
  loc_B76ACF: FLdRfVar var_DC
  loc_B76AD2: FLdRfVar var_CC
  loc_B76AD5: LitVarStr var_C8, "FechCoti"
  loc_B76ADA: PopAdLdVar
  loc_B76ADB: FLdRfVar var_B8
  loc_B76ADE: FLdPr Me
  loc_B76AE1: MemLdPr global_56
  loc_B76AE4:  = Me.Fields
  loc_B76AE9: FLdPr var_B8
  loc_B76AEC: from_stack_2 = Me.Item(from_stack_1)
  loc_B76AF1: FLdPr var_CC
  loc_B76AF4:  = Me.Value
  loc_B76AF9: LitI4 0
  loc_B76AFE: FLdRfVar var_A0
  loc_B76B01: Ary1LdI4
  loc_B76B02: CDateStr
  loc_B76B04: FLdRfVar var_DC
  loc_B76B07: FnCDateVar
  loc_B76B09: LtR8
  loc_B76B0A: FFreeAd var_B8 = ""
  loc_B76B11: FFree1Var var_DC = ""
  loc_B76B14: BranchF loc_B76C4E
  loc_B76B17: FLdRfVar var_DC
  loc_B76B1A: FLdRfVar var_CC
  loc_B76B1D: LitVarStr var_C8, "FechCoti"
  loc_B76B22: PopAdLdVar
  loc_B76B23: FLdRfVar var_B8
  loc_B76B26: FLdPr Me
  loc_B76B29: MemLdPr global_56
  loc_B76B2C:  = Me.Fields
  loc_B76B31: FLdPr var_B8
  loc_B76B34: from_stack_2 = Me.Item(from_stack_1)
  loc_B76B39: FLdPr var_CC
  loc_B76B3C:  = Me.Value
  loc_B76B41: FLdRfVar var_DC
  loc_B76B44: FnCDateVar
  loc_B76B46: CStrDate
  loc_B76B48: FStStrNoPop var_A8
  loc_B76B4B: LitI4 0
  loc_B76B50: FLdRfVar var_A0
  loc_B76B53: Ary1StStrCopy
  loc_B76B54: FFree1Str var_A8
  loc_B76B57: FFreeAd var_B8 = ""
  loc_B76B5E: FFree1Var var_DC = ""
  loc_B76B61: LitVarStr var_EC, "La Cotización de la NP "
  loc_B76B66: FLdRfVar var_DC
  loc_B76B69: FLdRfVar var_CC
  loc_B76B6C: LitVarStr var_C8, "CodiNope"
  loc_B76B71: PopAdLdVar
  loc_B76B72: FLdRfVar var_B8
  loc_B76B75: FLdPr Me
  loc_B76B78: MemLdPr RsFrm
  loc_B76B7B:  = Me.Fields
  loc_B76B80: FLdPr var_B8
  loc_B76B83: from_stack_2 = Me.Item(from_stack_1)
  loc_B76B88: FLdPr var_CC
  loc_B76B8B:  = Me.Value
  loc_B76B90: FLdRfVar var_DC
  loc_B76B93: ConcatVar var_FC
  loc_B76B97: LitVarStr var_10C, " tiene Fecha "
  loc_B76B9C: ConcatVar var_11C
  loc_B76BA0: FLdRfVar var_144
  loc_B76BA3: FLdRfVar var_134
  loc_B76BA6: LitVarStr var_130, "FechCoti"
  loc_B76BAB: PopAdLdVar
  loc_B76BAC: FLdRfVar var_120
  loc_B76BAF: FLdPr Me
  loc_B76BB2: MemLdPr global_56
  loc_B76BB5:  = Me.Fields
  loc_B76BBA: FLdPr var_120
  loc_B76BBD: from_stack_2 = Me.Item(from_stack_1)
  loc_B76BC2: FLdPr var_134
  loc_B76BC5:  = Me.Value
  loc_B76BCA: FLdRfVar var_144
  loc_B76BCD: ConcatVar var_154
  loc_B76BD1: LitVarStr var_164, ". Verifique..."
  loc_B76BD6: ConcatVar var_174
  loc_B76BDA: CStrVarTmp
  loc_B76BDB: FStStrNoPop var_A8
  loc_B76BDE: LitI4 1
  loc_B76BE3: FLdRfVar var_A0
  loc_B76BE6: Ary1StStrCopy
  loc_B76BE7: FFree1Str var_A8
  loc_B76BEA: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B76BF5: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B76C04: FLdRfVar var_DC
  loc_B76C07: FLdRfVar var_CC
  loc_B76C0A: LitVarStr var_C8, "FechCoti"
  loc_B76C0F: PopAdLdVar
  loc_B76C10: FLdRfVar var_B8
  loc_B76C13: FLdPr Me
  loc_B76C16: MemLdPr global_56
  loc_B76C19:  = Me.Fields
  loc_B76C1E: FLdPr var_B8
  loc_B76C21: from_stack_2 = Me.Item(from_stack_1)
  loc_B76C26: FLdPr var_CC
  loc_B76C29:  = Me.Value
  loc_B76C2E: FLdRfVar var_DC
  loc_B76C31: FnCDateVar
  loc_B76C33: CStrDate
  loc_B76C35: FStStrNoPop var_A8
  loc_B76C38: LitI4 2
  loc_B76C3D: FLdRfVar var_A0
  loc_B76C40: Ary1StStrCopy
  loc_B76C41: FFree1Str var_A8
  loc_B76C44: FFreeAd var_B8 = ""
  loc_B76C4B: FFree1Var var_DC = ""
  loc_B76C4E: LitStr "SELECT IFNULL(DATE(FecoNope), FechNope) FecoNope FROM notapedido WHERE PeriInfo = "
  loc_B76C51: FLdI2 PeriInfo
  loc_B76C54: CStrUI1
  loc_B76C56: FStStrNoPop var_A8
  loc_B76C59: ConcatStr
  loc_B76C5A: FStStrNoPop var_AC
  loc_B76C5D: LitStr " AND CodiNope = "
  loc_B76C60: ConcatStr
  loc_B76C61: CVarStr var_FC
  loc_B76C64: FLdRfVar var_DC
  loc_B76C67: FLdRfVar var_CC
  loc_B76C6A: LitVarStr var_C8, "CodiNope"
  loc_B76C6F: PopAdLdVar
  loc_B76C70: FLdRfVar var_B8
  loc_B76C73: FLdPr Me
  loc_B76C76: MemLdPr RsFrm
  loc_B76C79:  = Me.Fields
  loc_B76C7E: FLdPr var_B8
  loc_B76C81: from_stack_2 = Me.Item(from_stack_1)
  loc_B76C86: FLdPr var_CC
  loc_B76C89:  = Me.Value
  loc_B76C8E: FLdRfVar var_DC
  loc_B76C91: ConcatVar var_11C
  loc_B76C95: LitVarStr var_EC, ";"
  loc_B76C9A: ConcatVar var_144
  loc_B76C9E: CStrVarVal var_B0
  loc_B76CA2: Call EjecutarRsCls(from_stack_1v)
  loc_B76CA7: FFreeStr var_A8 = "": var_AC = ""
  loc_B76CB0: FFreeAd var_B8 = ""
  loc_B76CB7: FFreeVar var_FC = "": var_DC = "": var_11C = ""
  loc_B76CC2: FLdRfVar var_B4
  loc_B76CC5: FLdPr Me
  loc_B76CC8: MemLdPr global_56
  loc_B76CCB:  = Me.RecordCount
  loc_B76CD0: ILdRf var_B4
  loc_B76CD3: LitI4 0
  loc_B76CD8: GtI4
  loc_B76CD9: BranchF loc_B76E5B
  loc_B76CDC: FLdRfVar var_DC
  loc_B76CDF: FLdRfVar var_CC
  loc_B76CE2: LitVarStr var_C8, "FecoNope"
  loc_B76CE7: PopAdLdVar
  loc_B76CE8: FLdRfVar var_B8
  loc_B76CEB: FLdPr Me
  loc_B76CEE: MemLdPr global_56
  loc_B76CF1:  = Me.Fields
  loc_B76CF6: FLdPr var_B8
  loc_B76CF9: from_stack_2 = Me.Item(from_stack_1)
  loc_B76CFE: FLdPr var_CC
  loc_B76D01:  = Me.Value
  loc_B76D06: LitI4 0
  loc_B76D0B: FLdRfVar var_A0
  loc_B76D0E: Ary1LdI4
  loc_B76D0F: CDateStr
  loc_B76D11: FLdRfVar var_DC
  loc_B76D14: FnCDateVar
  loc_B76D16: LtR8
  loc_B76D17: FFreeAd var_B8 = ""
  loc_B76D1E: FFree1Var var_DC = ""
  loc_B76D21: BranchF loc_B76E5B
  loc_B76D24: FLdRfVar var_DC
  loc_B76D27: FLdRfVar var_CC
  loc_B76D2A: LitVarStr var_C8, "FecoNope"
  loc_B76D2F: PopAdLdVar
  loc_B76D30: FLdRfVar var_B8
  loc_B76D33: FLdPr Me
  loc_B76D36: MemLdPr global_56
  loc_B76D39:  = Me.Fields
  loc_B76D3E: FLdPr var_B8
  loc_B76D41: from_stack_2 = Me.Item(from_stack_1)
  loc_B76D46: FLdPr var_CC
  loc_B76D49:  = Me.Value
  loc_B76D4E: FLdRfVar var_DC
  loc_B76D51: FnCDateVar
  loc_B76D53: CStrDate
  loc_B76D55: FStStrNoPop var_A8
  loc_B76D58: LitI4 0
  loc_B76D5D: FLdRfVar var_A0
  loc_B76D60: Ary1StStrCopy
  loc_B76D61: FFree1Str var_A8
  loc_B76D64: FFreeAd var_B8 = ""
  loc_B76D6B: FFree1Var var_DC = ""
  loc_B76D6E: LitVarStr var_EC, "La NP "
  loc_B76D73: FLdRfVar var_DC
  loc_B76D76: FLdRfVar var_CC
  loc_B76D79: LitVarStr var_C8, "CodiNope"
  loc_B76D7E: PopAdLdVar
  loc_B76D7F: FLdRfVar var_B8
  loc_B76D82: FLdPr Me
  loc_B76D85: MemLdPr RsFrm
  loc_B76D88:  = Me.Fields
  loc_B76D8D: FLdPr var_B8
  loc_B76D90: from_stack_2 = Me.Item(from_stack_1)
  loc_B76D95: FLdPr var_CC
  loc_B76D98:  = Me.Value
  loc_B76D9D: FLdRfVar var_DC
  loc_B76DA0: ConcatVar var_FC
  loc_B76DA4: LitVarStr var_10C, " tiene Fecha Límite de PUBLICACION WEB "
  loc_B76DA9: ConcatVar var_11C
  loc_B76DAD: FLdRfVar var_144
  loc_B76DB0: FLdRfVar var_134
  loc_B76DB3: LitVarStr var_130, "FecoNope"
  loc_B76DB8: PopAdLdVar
  loc_B76DB9: FLdRfVar var_120
  loc_B76DBC: FLdPr Me
  loc_B76DBF: MemLdPr global_56
  loc_B76DC2:  = Me.Fields
  loc_B76DC7: FLdPr var_120
  loc_B76DCA: from_stack_2 = Me.Item(from_stack_1)
  loc_B76DCF: FLdPr var_134
  loc_B76DD2:  = Me.Value
  loc_B76DD7: FLdRfVar var_144
  loc_B76DDA: ConcatVar var_154
  loc_B76DDE: LitVarStr var_164, ". Verifique..."
  loc_B76DE3: ConcatVar var_174
  loc_B76DE7: CStrVarTmp
  loc_B76DE8: FStStrNoPop var_A8
  loc_B76DEB: LitI4 1
  loc_B76DF0: FLdRfVar var_A0
  loc_B76DF3: Ary1StStrCopy
  loc_B76DF4: FFree1Str var_A8
  loc_B76DF7: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B76E02: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B76E11: FLdRfVar var_DC
  loc_B76E14: FLdRfVar var_CC
  loc_B76E17: LitVarStr var_C8, "FecoNope"
  loc_B76E1C: PopAdLdVar
  loc_B76E1D: FLdRfVar var_B8
  loc_B76E20: FLdPr Me
  loc_B76E23: MemLdPr global_56
  loc_B76E26:  = Me.Fields
  loc_B76E2B: FLdPr var_B8
  loc_B76E2E: from_stack_2 = Me.Item(from_stack_1)
  loc_B76E33: FLdPr var_CC
  loc_B76E36:  = Me.Value
  loc_B76E3B: FLdRfVar var_DC
  loc_B76E3E: FnCDateVar
  loc_B76E40: CStrDate
  loc_B76E42: FStStrNoPop var_A8
  loc_B76E45: LitI4 2
  loc_B76E4A: FLdRfVar var_A0
  loc_B76E4D: Ary1StStrCopy
  loc_B76E4E: FFree1Str var_A8
  loc_B76E51: FFreeAd var_B8 = ""
  loc_B76E58: FFree1Var var_DC = ""
  loc_B76E5B: LitStr "SELECT CodiOrco, FeanOrco FROM ordencompra WHERE PeriInfo = "
  loc_B76E5E: FLdI2 PeriInfo
  loc_B76E61: CStrUI1
  loc_B76E63: FStStrNoPop var_A8
  loc_B76E66: ConcatStr
  loc_B76E67: FStStrNoPop var_AC
  loc_B76E6A: LitStr " AND CodiNope = "
  loc_B76E6D: ConcatStr
  loc_B76E6E: CVarStr var_FC
  loc_B76E71: FLdRfVar var_DC
  loc_B76E74: FLdRfVar var_CC
  loc_B76E77: LitVarStr var_C8, "CodiNope"
  loc_B76E7C: PopAdLdVar
  loc_B76E7D: FLdRfVar var_B8
  loc_B76E80: FLdPr Me
  loc_B76E83: MemLdPr RsFrm
  loc_B76E86:  = Me.Fields
  loc_B76E8B: FLdPr var_B8
  loc_B76E8E: from_stack_2 = Me.Item(from_stack_1)
  loc_B76E93: FLdPr var_CC
  loc_B76E96:  = Me.Value
  loc_B76E9B: FLdRfVar var_DC
  loc_B76E9E: ConcatVar var_11C
  loc_B76EA2: LitVarStr var_EC, " AND FeanOrco IS NOT NULL;"
  loc_B76EA7: ConcatVar var_144
  loc_B76EAB: CStrVarVal var_B0
  loc_B76EAF: Call EjecutarRsCls(from_stack_1v)
  loc_B76EB4: FFreeStr var_A8 = "": var_AC = ""
  loc_B76EBD: FFreeAd var_B8 = ""
  loc_B76EC4: FFreeVar var_FC = "": var_DC = "": var_11C = ""
  loc_B76ECF: FLdRfVar var_B4
  loc_B76ED2: FLdPr Me
  loc_B76ED5: MemLdPr global_56
  loc_B76ED8:  = Me.RecordCount
  loc_B76EDD: ILdRf var_B4
  loc_B76EE0: LitI4 0
  loc_B76EE5: GtI4
  loc_B76EE6: BranchF loc_B770AC
  loc_B76EE9: FLdRfVar var_DC
  loc_B76EEC: FLdRfVar var_CC
  loc_B76EEF: LitVarStr var_C8, "FeanOrco"
  loc_B76EF4: PopAdLdVar
  loc_B76EF5: FLdRfVar var_B8
  loc_B76EF8: FLdPr Me
  loc_B76EFB: MemLdPr global_56
  loc_B76EFE:  = Me.Fields
  loc_B76F03: FLdPr var_B8
  loc_B76F06: from_stack_2 = Me.Item(from_stack_1)
  loc_B76F0B: FLdPr var_CC
  loc_B76F0E:  = Me.Value
  loc_B76F13: LitI4 0
  loc_B76F18: FLdRfVar var_A0
  loc_B76F1B: Ary1LdI4
  loc_B76F1C: CDateStr
  loc_B76F1E: FLdRfVar var_DC
  loc_B76F21: FnCDateVar
  loc_B76F23: LtR8
  loc_B76F24: FFreeAd var_B8 = ""
  loc_B76F2B: FFree1Var var_DC = ""
  loc_B76F2E: BranchF loc_B770AC
  loc_B76F31: FLdRfVar var_DC
  loc_B76F34: FLdRfVar var_CC
  loc_B76F37: LitVarStr var_C8, "FeanOrco"
  loc_B76F3C: PopAdLdVar
  loc_B76F3D: FLdRfVar var_B8
  loc_B76F40: FLdPr Me
  loc_B76F43: MemLdPr global_56
  loc_B76F46:  = Me.Fields
  loc_B76F4B: FLdPr var_B8
  loc_B76F4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B76F53: FLdPr var_CC
  loc_B76F56:  = Me.Value
  loc_B76F5B: FLdRfVar var_DC
  loc_B76F5E: FnCDateVar
  loc_B76F60: CStrDate
  loc_B76F62: FStStrNoPop var_A8
  loc_B76F65: LitI4 0
  loc_B76F6A: FLdRfVar var_A0
  loc_B76F6D: Ary1StStrCopy
  loc_B76F6E: FFree1Str var_A8
  loc_B76F71: FFreeAd var_B8 = ""
  loc_B76F78: FFree1Var var_DC = ""
  loc_B76F7B: LitVarStr var_EC, "La OC "
  loc_B76F80: FLdRfVar var_DC
  loc_B76F83: FLdRfVar var_CC
  loc_B76F86: LitVarStr var_C8, "CodiOrco"
  loc_B76F8B: PopAdLdVar
  loc_B76F8C: FLdRfVar var_B8
  loc_B76F8F: FLdPr Me
  loc_B76F92: MemLdPr global_56
  loc_B76F95:  = Me.Fields
  loc_B76F9A: FLdPr var_B8
  loc_B76F9D: from_stack_2 = Me.Item(from_stack_1)
  loc_B76FA2: FLdPr var_CC
  loc_B76FA5:  = Me.Value
  loc_B76FAA: FLdRfVar var_DC
  loc_B76FAD: ConcatVar var_FC
  loc_B76FB1: LitVarStr var_10C, " de la NP "
  loc_B76FB6: ConcatVar var_11C
  loc_B76FBA: FLdRfVar var_144
  loc_B76FBD: FLdRfVar var_134
  loc_B76FC0: LitVarStr var_130, "CodiNope"
  loc_B76FC5: PopAdLdVar
  loc_B76FC6: FLdRfVar var_120
  loc_B76FC9: FLdPr Me
  loc_B76FCC: MemLdPr RsFrm
  loc_B76FCF:  = Me.Fields
  loc_B76FD4: FLdPr var_120
  loc_B76FD7: from_stack_2 = Me.Item(from_stack_1)
  loc_B76FDC: FLdPr var_134
  loc_B76FDF:  = Me.Value
  loc_B76FE4: FLdRfVar var_144
  loc_B76FE7: ConcatVar var_154
  loc_B76FEB: LitVarStr var_164, " tiene Fecha de ANULACIÓN "
  loc_B76FF0: ConcatVar var_174
  loc_B76FF4: FLdRfVar var_19C
  loc_B76FF7: FLdRfVar var_18C
  loc_B76FFA: LitVarStr var_188, "FeanOrco"
  loc_B76FFF: PopAdLdVar
  loc_B77000: FLdRfVar var_178
  loc_B77003: FLdPr Me
  loc_B77006: MemLdPr global_56
  loc_B77009:  = Me.Fields
  loc_B7700E: FLdPr var_178
  loc_B77011: from_stack_2 = Me.Item(from_stack_1)
  loc_B77016: FLdPr var_18C
  loc_B77019:  = Me.Value
  loc_B7701E: FLdRfVar var_19C
  loc_B77021: ConcatVar var_1AC
  loc_B77025: LitVarStr var_1BC, ". Verifique..."
  loc_B7702A: ConcatVar var_1CC
  loc_B7702E: CStrVarTmp
  loc_B7702F: FStStrNoPop var_A8
  loc_B77032: LitI4 1
  loc_B77037: FLdRfVar var_A0
  loc_B7703A: Ary1StStrCopy
  loc_B7703B: FFree1Str var_A8
  loc_B7703E: FFreeAd var_B8 = "": var_CC = "": var_120 = "": var_134 = "": var_178 = ""
  loc_B7704D: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = "": var_174 = "": var_19C = "": var_1AC = ""
  loc_B77062: FLdRfVar var_DC
  loc_B77065: FLdRfVar var_CC
  loc_B77068: LitVarStr var_C8, "FeanOrco"
  loc_B7706D: PopAdLdVar
  loc_B7706E: FLdRfVar var_B8
  loc_B77071: FLdPr Me
  loc_B77074: MemLdPr global_56
  loc_B77077:  = Me.Fields
  loc_B7707C: FLdPr var_B8
  loc_B7707F: from_stack_2 = Me.Item(from_stack_1)
  loc_B77084: FLdPr var_CC
  loc_B77087:  = Me.Value
  loc_B7708C: FLdRfVar var_DC
  loc_B7708F: FnCDateVar
  loc_B77091: CStrDate
  loc_B77093: FStStrNoPop var_A8
  loc_B77096: LitI4 2
  loc_B7709B: FLdRfVar var_A0
  loc_B7709E: Ary1StStrCopy
  loc_B7709F: FFree1Str var_A8
  loc_B770A2: FFreeAd var_B8 = ""
  loc_B770A9: FFree1Var var_DC = ""
  loc_B770AC: LitStr "SELECT IFNULL(Max(FechImpu),FeproPaco) FechImpu"
  loc_B770AF: LitStr " FROM imputacion i"
  loc_B770B2: ConcatStr
  loc_B770B3: FStStrNoPop var_A8
  loc_B770B6: LitStr " INNER JOIN paraconta p ON p.PeriInfo = i.PeriInfo"
  loc_B770B9: ConcatStr
  loc_B770BA: FStStrNoPop var_AC
  loc_B770BD: LitStr " WHERE i.PeriInfo = "
  loc_B770C0: ConcatStr
  loc_B770C1: FStStrNoPop var_B0
  loc_B770C4: FLdI2 PeriInfo
  loc_B770C7: CStrUI1
  loc_B770C9: FStStrNoPop var_1D0
  loc_B770CC: ConcatStr
  loc_B770CD: FStStrNoPop var_1D4
  loc_B770D0: LitStr " AND CodiNope = "
  loc_B770D3: ConcatStr
  loc_B770D4: CVarStr var_FC
  loc_B770D7: FLdRfVar var_DC
  loc_B770DA: FLdRfVar var_CC
  loc_B770DD: LitVarStr var_C8, "CodiNope"
  loc_B770E2: PopAdLdVar
  loc_B770E3: FLdRfVar var_B8
  loc_B770E6: FLdPr Me
  loc_B770E9: MemLdPr RsFrm
  loc_B770EC:  = Me.Fields
  loc_B770F1: FLdPr var_B8
  loc_B770F4: from_stack_2 = Me.Item(from_stack_1)
  loc_B770F9: FLdPr var_CC
  loc_B770FC:  = Me.Value
  loc_B77101: FLdRfVar var_DC
  loc_B77104: ConcatVar var_11C
  loc_B77108: LitVarStr var_EC, " AND PrevImpu != 0"
  loc_B7710D: ConcatVar var_144
  loc_B77111: LitVarStr var_10C, " ORDER BY FechImpu DESC LIMIT 1;"
  loc_B77116: ConcatVar var_154
  loc_B7711A: CStrVarVal var_1D8
  loc_B7711E: Call EjecutarRsCls(from_stack_1v)
  loc_B77123: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_1D0 = "": var_1D4 = ""
  loc_B77132: FFreeAd var_B8 = ""
  loc_B77139: FFreeVar var_FC = "": var_DC = "": var_11C = "": var_144 = ""
  loc_B77146: FLdRfVar var_B4
  loc_B77149: FLdPr Me
  loc_B7714C: MemLdPr global_56
  loc_B7714F:  = Me.RecordCount
  loc_B77154: ILdRf var_B4
  loc_B77157: LitI4 0
  loc_B7715C: GtI4
  loc_B7715D: BranchF loc_B772DF
  loc_B77160: FLdRfVar var_DC
  loc_B77163: FLdRfVar var_CC
  loc_B77166: LitVarStr var_C8, "FechImpu"
  loc_B7716B: PopAdLdVar
  loc_B7716C: FLdRfVar var_B8
  loc_B7716F: FLdPr Me
  loc_B77172: MemLdPr global_56
  loc_B77175:  = Me.Fields
  loc_B7717A: FLdPr var_B8
  loc_B7717D: from_stack_2 = Me.Item(from_stack_1)
  loc_B77182: FLdPr var_CC
  loc_B77185:  = Me.Value
  loc_B7718A: LitI4 0
  loc_B7718F: FLdRfVar var_A0
  loc_B77192: Ary1LdI4
  loc_B77193: CDateStr
  loc_B77195: FLdRfVar var_DC
  loc_B77198: FnCDateVar
  loc_B7719A: LtR8
  loc_B7719B: FFreeAd var_B8 = ""
  loc_B771A2: FFree1Var var_DC = ""
  loc_B771A5: BranchF loc_B772DF
  loc_B771A8: FLdRfVar var_DC
  loc_B771AB: FLdRfVar var_CC
  loc_B771AE: LitVarStr var_C8, "FechImpu"
  loc_B771B3: PopAdLdVar
  loc_B771B4: FLdRfVar var_B8
  loc_B771B7: FLdPr Me
  loc_B771BA: MemLdPr global_56
  loc_B771BD:  = Me.Fields
  loc_B771C2: FLdPr var_B8
  loc_B771C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B771CA: FLdPr var_CC
  loc_B771CD:  = Me.Value
  loc_B771D2: FLdRfVar var_DC
  loc_B771D5: FnCDateVar
  loc_B771D7: CStrDate
  loc_B771D9: FStStrNoPop var_A8
  loc_B771DC: LitI4 0
  loc_B771E1: FLdRfVar var_A0
  loc_B771E4: Ary1StStrCopy
  loc_B771E5: FFree1Str var_A8
  loc_B771E8: FFreeAd var_B8 = ""
  loc_B771EF: FFree1Var var_DC = ""
  loc_B771F2: LitVarStr var_EC, "La NP "
  loc_B771F7: FLdRfVar var_DC
  loc_B771FA: FLdRfVar var_CC
  loc_B771FD: LitVarStr var_C8, "CodiNope"
  loc_B77202: PopAdLdVar
  loc_B77203: FLdRfVar var_B8
  loc_B77206: FLdPr Me
  loc_B77209: MemLdPr RsFrm
  loc_B7720C:  = Me.Fields
  loc_B77211: FLdPr var_B8
  loc_B77214: from_stack_2 = Me.Item(from_stack_1)
  loc_B77219: FLdPr var_CC
  loc_B7721C:  = Me.Value
  loc_B77221: FLdRfVar var_DC
  loc_B77224: ConcatVar var_FC
  loc_B77228: LitVarStr var_10C, " tiene Imputaciones con Fecha "
  loc_B7722D: ConcatVar var_11C
  loc_B77231: FLdRfVar var_144
  loc_B77234: FLdRfVar var_134
  loc_B77237: LitVarStr var_130, "FechImpu"
  loc_B7723C: PopAdLdVar
  loc_B7723D: FLdRfVar var_120
  loc_B77240: FLdPr Me
  loc_B77243: MemLdPr global_56
  loc_B77246:  = Me.Fields
  loc_B7724B: FLdPr var_120
  loc_B7724E: from_stack_2 = Me.Item(from_stack_1)
  loc_B77253: FLdPr var_134
  loc_B77256:  = Me.Value
  loc_B7725B: FLdRfVar var_144
  loc_B7725E: ConcatVar var_154
  loc_B77262: LitVarStr var_164, ". Verifique..."
  loc_B77267: ConcatVar var_174
  loc_B7726B: CStrVarTmp
  loc_B7726C: FStStrNoPop var_A8
  loc_B7726F: LitI4 1
  loc_B77274: FLdRfVar var_A0
  loc_B77277: Ary1StStrCopy
  loc_B77278: FFree1Str var_A8
  loc_B7727B: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_B77286: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = ""
  loc_B77295: FLdRfVar var_DC
  loc_B77298: FLdRfVar var_CC
  loc_B7729B: LitVarStr var_C8, "FechImpu"
  loc_B772A0: PopAdLdVar
  loc_B772A1: FLdRfVar var_B8
  loc_B772A4: FLdPr Me
  loc_B772A7: MemLdPr global_56
  loc_B772AA:  = Me.Fields
  loc_B772AF: FLdPr var_B8
  loc_B772B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B772B7: FLdPr var_CC
  loc_B772BA:  = Me.Value
  loc_B772BF: FLdRfVar var_DC
  loc_B772C2: FnCDateVar
  loc_B772C4: CStrDate
  loc_B772C6: FStStrNoPop var_A8
  loc_B772C9: LitI4 2
  loc_B772CE: FLdRfVar var_A0
  loc_B772D1: Ary1StStrCopy
  loc_B772D2: FFree1Str var_A8
  loc_B772D5: FFreeAd var_B8 = ""
  loc_B772DC: FFree1Var var_DC = ""
  loc_B772DF: FLdRfVar var_A0
  loc_B772E2: PopTmpLdAdStr var_B4
  loc_B772E5: FLdRfVar var_88
  loc_B772E8: StAryCopy
  loc_B772EA: ExitProcCbHresult
End Function

Public Function UltimaFechNope(Peri) '9DAA68
  'Data Table: 42E90C
  loc_9DA980: ILdRf Peri
  loc_9DA983: FStStrCopy var_8C
  loc_9DA986: ZeroRetVal
  loc_9DA988: LitStr "SELECT Max(FechNope) FechNope"
  loc_9DA98B: LitStr " FROM notapedido"
  loc_9DA98E: ConcatStr
  loc_9DA98F: FStStrNoPop var_90
  loc_9DA992: LitStr " WHERE PeriInfo = '"
  loc_9DA995: ConcatStr
  loc_9DA996: FStStrNoPop UltimaFechNope
  loc_9DA999: ILdRf var_8C
  loc_9DA99C: ConcatStr
  loc_9DA99D: FStStrNoPop var_98
  loc_9DA9A0: LitStr "'"
  loc_9DA9A3: ConcatStr
  loc_9DA9A4: FStStrNoPop var_9C
  loc_9DA9A7: LitStr " ORDER BY CodiNope DESC LIMIT 1;"
  loc_9DA9AA: ConcatStr
  loc_9DA9AB: FStStrNoPop var_A0
  loc_9DA9AE: Call EjecutarRsCls(from_stack_1v)
  loc_9DA9B3: FFreeStr var_90 = "": UltimaFechNope = "": var_98 = "": var_9C = ""
  loc_9DA9C0: FLdRfVar var_A4
  loc_9DA9C3: FLdPr Me
  loc_9DA9C6: MemLdPr global_56
  loc_9DA9C9:  = Me.RecordCount
  loc_9DA9CE: ILdRf var_A4
  loc_9DA9D1: LitI4 0
  loc_9DA9D6: GtI4
  loc_9DA9D7: BranchF loc_9DAA57
  loc_9DA9DA: FLdRfVar var_BC
  loc_9DA9DD: LitVarStr var_B8, "FechNope"
  loc_9DA9E2: PopAdLdVar
  loc_9DA9E3: FLdRfVar var_A8
  loc_9DA9E6: FLdPr Me
  loc_9DA9E9: MemLdPr global_56
  loc_9DA9EC:  = Me.Fields
  loc_9DA9F1: FLdPr var_A8
  loc_9DA9F4: from_stack_2 = Me.Item(from_stack_1)
  loc_9DA9F9: FLdZeroAd var_BC
  loc_9DA9FC: CVarAd
  loc_9DAA00: ImpAdCallI2 IsDate()
  loc_9DAA05: FFree1Ad var_A8
  loc_9DAA08: FFree1Var var_CC = ""
  loc_9DAA0B: BranchF loc_9DAA4C
  loc_9DAA0E: FLdRfVar var_CC
  loc_9DAA11: FLdRfVar var_BC
  loc_9DAA14: LitVarStr var_B8, "FechNope"
  loc_9DAA19: PopAdLdVar
  loc_9DAA1A: FLdRfVar var_A8
  loc_9DAA1D: FLdPr Me
  loc_9DAA20: MemLdPr global_56
  loc_9DAA23:  = Me.Fields
  loc_9DAA28: FLdPr var_A8
  loc_9DAA2B: from_stack_2 = Me.Item(from_stack_1)
  loc_9DAA30: FLdPr var_BC
  loc_9DAA33:  = Me.Value
  loc_9DAA38: FLdRfVar var_CC
  loc_9DAA3B: CStrVarTmp
  loc_9DAA3C: FStStr var_88
  loc_9DAA3F: FFreeAd var_A8 = ""
  loc_9DAA46: FFree1Var var_CC = ""
  loc_9DAA49: Branch loc_9DAA54
  loc_9DAA4C: ImpAdLdFPR8 MemVar_C3D054
  loc_9DAA4F: CStrDate
  loc_9DAA51: FStStr var_88
  loc_9DAA54: Branch loc_9DAA5F
  loc_9DAA57: ImpAdLdFPR8 MemVar_C3D054
  loc_9DAA5A: CStrDate
  loc_9DAA5C: FStStr var_88
  loc_9DAA5F: ExitProcCbHresult
  loc_9DAA65: CExtInstUnk
End Function

Public Function UltimaFeanNope(Peri, iNP) 'A766CC
  'Data Table: 42E90C
  loc_A76314: ILdRf Peri
  loc_A76317: FStStrCopy var_8C
  loc_A7631A: ZeroRetVal
  loc_A7631C: ImpAdLdFPR8 MemVar_C3D054
  loc_A7631F: CStrDate
  loc_A76321: FStStr var_88
  loc_A76324: LitStr "SELECT FechNope"
  loc_A76327: LitStr " FROM notapedido"
  loc_A7632A: ConcatStr
  loc_A7632B: FStStrNoPop var_90
  loc_A7632E: LitStr " WHERE PeriInfo = '"
  loc_A76331: ConcatStr
  loc_A76332: FStStrNoPop UltimaFeanNope
  loc_A76335: ILdRf var_8C
  loc_A76338: ConcatStr
  loc_A76339: FStStrNoPop var_98
  loc_A7633C: LitStr "'"
  loc_A7633F: ConcatStr
  loc_A76340: FStStrNoPop var_9C
  loc_A76343: LitStr " AND CodiNope = '"
  loc_A76346: ConcatStr
  loc_A76347: FStStrNoPop var_A0
  loc_A7634A: FLdI2 iNP
  loc_A7634D: CStrUI1
  loc_A7634F: FStStrNoPop var_A4
  loc_A76352: ConcatStr
  loc_A76353: FStStrNoPop var_A8
  loc_A76356: LitStr "';"
  loc_A76359: ConcatStr
  loc_A7635A: FStStrNoPop var_AC
  loc_A7635D: Call EjecutarRsCls(from_stack_1v)
  loc_A76362: FFreeStr var_90 = "": UltimaFeanNope = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A76375: FLdRfVar var_B0
  loc_A76378: FLdPr Me
  loc_A7637B: MemLdPr global_56
  loc_A7637E:  = Me.RecordCount
  loc_A76383: ILdRf var_B0
  loc_A76386: LitI4 0
  loc_A7638B: GtI4
  loc_A7638C: BranchF loc_A7640C
  loc_A7638F: FLdRfVar var_D8
  loc_A76392: FLdRfVar var_C8
  loc_A76395: LitVarStr var_C4, "FechNope"
  loc_A7639A: PopAdLdVar
  loc_A7639B: FLdRfVar var_B4
  loc_A7639E: FLdPr Me
  loc_A763A1: MemLdPr global_56
  loc_A763A4:  = Me.Fields
  loc_A763A9: FLdPr var_B4
  loc_A763AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A763B1: FLdPr var_C8
  loc_A763B4:  = Me.Value
  loc_A763B9: FLdRfVar var_D8
  loc_A763BC: FnCDateVar
  loc_A763BE: ILdRf var_88
  loc_A763C1: CDateStr
  loc_A763C3: GtR4
  loc_A763C4: FFreeAd var_B4 = ""
  loc_A763CB: FFree1Var var_D8 = ""
  loc_A763CE: BranchF loc_A7640C
  loc_A763D1: FLdRfVar var_D8
  loc_A763D4: FLdRfVar var_C8
  loc_A763D7: LitVarStr var_C4, "FechNope"
  loc_A763DC: PopAdLdVar
  loc_A763DD: FLdRfVar var_B4
  loc_A763E0: FLdPr Me
  loc_A763E3: MemLdPr global_56
  loc_A763E6:  = Me.Fields
  loc_A763EB: FLdPr var_B4
  loc_A763EE: from_stack_2 = Me.Item(from_stack_1)
  loc_A763F3: FLdPr var_C8
  loc_A763F6:  = Me.Value
  loc_A763FB: FLdRfVar var_D8
  loc_A763FE: CStrVarTmp
  loc_A763FF: FStStr var_88
  loc_A76402: FFreeAd var_B4 = ""
  loc_A76409: FFree1Var var_D8 = ""
  loc_A7640C: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_A7640F: LitStr " FROM imputacion"
  loc_A76412: ConcatStr
  loc_A76413: FStStrNoPop var_90
  loc_A76416: LitStr " WHERE PeriInfo = '"
  loc_A76419: ConcatStr
  loc_A7641A: FStStrNoPop UltimaFeanNope
  loc_A7641D: ILdRf var_8C
  loc_A76420: ConcatStr
  loc_A76421: FStStrNoPop var_98
  loc_A76424: LitStr "'"
  loc_A76427: ConcatStr
  loc_A76428: FStStrNoPop var_9C
  loc_A7642B: LitStr " AND CodiNope = '"
  loc_A7642E: ConcatStr
  loc_A7642F: FStStrNoPop var_A0
  loc_A76432: FLdI2 iNP
  loc_A76435: CStrUI1
  loc_A76437: FStStrNoPop var_A4
  loc_A7643A: ConcatStr
  loc_A7643B: FStStrNoPop var_A8
  loc_A7643E: LitStr "' AND PrevImpu != 0 HAVING FechImpu IS NOT NULL;"
  loc_A76441: ConcatStr
  loc_A76442: FStStrNoPop var_AC
  loc_A76445: Call EjecutarRsCls(from_stack_1v)
  loc_A7644A: FFreeStr var_90 = "": UltimaFeanNope = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A7645D: FLdRfVar var_B0
  loc_A76460: FLdPr Me
  loc_A76463: MemLdPr global_56
  loc_A76466:  = Me.RecordCount
  loc_A7646B: ILdRf var_B0
  loc_A7646E: LitI4 0
  loc_A76473: GtI4
  loc_A76474: BranchF loc_A764F4
  loc_A76477: FLdRfVar var_D8
  loc_A7647A: FLdRfVar var_C8
  loc_A7647D: LitVarStr var_C4, "FechImpu"
  loc_A76482: PopAdLdVar
  loc_A76483: FLdRfVar var_B4
  loc_A76486: FLdPr Me
  loc_A76489: MemLdPr global_56
  loc_A7648C:  = Me.Fields
  loc_A76491: FLdPr var_B4
  loc_A76494: from_stack_2 = Me.Item(from_stack_1)
  loc_A76499: FLdPr var_C8
  loc_A7649C:  = Me.Value
  loc_A764A1: FLdRfVar var_D8
  loc_A764A4: FnCDateVar
  loc_A764A6: ILdRf var_88
  loc_A764A9: CDateStr
  loc_A764AB: GtR4
  loc_A764AC: FFreeAd var_B4 = ""
  loc_A764B3: FFree1Var var_D8 = ""
  loc_A764B6: BranchF loc_A764F4
  loc_A764B9: FLdRfVar var_D8
  loc_A764BC: FLdRfVar var_C8
  loc_A764BF: LitVarStr var_C4, "FechImpu"
  loc_A764C4: PopAdLdVar
  loc_A764C5: FLdRfVar var_B4
  loc_A764C8: FLdPr Me
  loc_A764CB: MemLdPr global_56
  loc_A764CE:  = Me.Fields
  loc_A764D3: FLdPr var_B4
  loc_A764D6: from_stack_2 = Me.Item(from_stack_1)
  loc_A764DB: FLdPr var_C8
  loc_A764DE:  = Me.Value
  loc_A764E3: FLdRfVar var_D8
  loc_A764E6: CStrVarTmp
  loc_A764E7: FStStr var_88
  loc_A764EA: FFreeAd var_B4 = ""
  loc_A764F1: FFree1Var var_D8 = ""
  loc_A764F4: LitStr "SELECT Max(FechOrco) FechOrco"
  loc_A764F7: LitStr " FROM ordencompra"
  loc_A764FA: ConcatStr
  loc_A764FB: FStStrNoPop var_90
  loc_A764FE: LitStr " WHERE PeriInfo = '"
  loc_A76501: ConcatStr
  loc_A76502: FStStrNoPop UltimaFeanNope
  loc_A76505: ILdRf var_8C
  loc_A76508: ConcatStr
  loc_A76509: FStStrNoPop var_98
  loc_A7650C: LitStr "'"
  loc_A7650F: ConcatStr
  loc_A76510: FStStrNoPop var_9C
  loc_A76513: LitStr " AND CodiNope = '"
  loc_A76516: ConcatStr
  loc_A76517: FStStrNoPop var_A0
  loc_A7651A: FLdI2 iNP
  loc_A7651D: CStrUI1
  loc_A7651F: FStStrNoPop var_A4
  loc_A76522: ConcatStr
  loc_A76523: FStStrNoPop var_A8
  loc_A76526: LitStr "' HAVING FechOrco IS NOT NULL;"
  loc_A76529: ConcatStr
  loc_A7652A: FStStrNoPop var_AC
  loc_A7652D: Call EjecutarRsCls(from_stack_1v)
  loc_A76532: FFreeStr var_90 = "": UltimaFeanNope = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A76545: FLdRfVar var_B0
  loc_A76548: FLdPr Me
  loc_A7654B: MemLdPr global_56
  loc_A7654E:  = Me.RecordCount
  loc_A76553: ILdRf var_B0
  loc_A76556: LitI4 0
  loc_A7655B: GtI4
  loc_A7655C: BranchF loc_A765DC
  loc_A7655F: FLdRfVar var_D8
  loc_A76562: FLdRfVar var_C8
  loc_A76565: LitVarStr var_C4, "FechOrco"
  loc_A7656A: PopAdLdVar
  loc_A7656B: FLdRfVar var_B4
  loc_A7656E: FLdPr Me
  loc_A76571: MemLdPr global_56
  loc_A76574:  = Me.Fields
  loc_A76579: FLdPr var_B4
  loc_A7657C: from_stack_2 = Me.Item(from_stack_1)
  loc_A76581: FLdPr var_C8
  loc_A76584:  = Me.Value
  loc_A76589: FLdRfVar var_D8
  loc_A7658C: FnCDateVar
  loc_A7658E: ILdRf var_88
  loc_A76591: CDateStr
  loc_A76593: GtR4
  loc_A76594: FFreeAd var_B4 = ""
  loc_A7659B: FFree1Var var_D8 = ""
  loc_A7659E: BranchF loc_A765DC
  loc_A765A1: FLdRfVar var_D8
  loc_A765A4: FLdRfVar var_C8
  loc_A765A7: LitVarStr var_C4, "FechOrco"
  loc_A765AC: PopAdLdVar
  loc_A765AD: FLdRfVar var_B4
  loc_A765B0: FLdPr Me
  loc_A765B3: MemLdPr global_56
  loc_A765B6:  = Me.Fields
  loc_A765BB: FLdPr var_B4
  loc_A765BE: from_stack_2 = Me.Item(from_stack_1)
  loc_A765C3: FLdPr var_C8
  loc_A765C6:  = Me.Value
  loc_A765CB: FLdRfVar var_D8
  loc_A765CE: CStrVarTmp
  loc_A765CF: FStStr var_88
  loc_A765D2: FFreeAd var_B4 = ""
  loc_A765D9: FFree1Var var_D8 = ""
  loc_A765DC: LitStr "SELECT Max(FeanOrco) FeanOrco"
  loc_A765DF: LitStr " FROM ordencompra"
  loc_A765E2: ConcatStr
  loc_A765E3: FStStrNoPop var_90
  loc_A765E6: LitStr " WHERE PeriInfo = '"
  loc_A765E9: ConcatStr
  loc_A765EA: FStStrNoPop UltimaFeanNope
  loc_A765ED: ILdRf var_8C
  loc_A765F0: ConcatStr
  loc_A765F1: FStStrNoPop var_98
  loc_A765F4: LitStr "'"
  loc_A765F7: ConcatStr
  loc_A765F8: FStStrNoPop var_9C
  loc_A765FB: LitStr " AND CodiNope = '"
  loc_A765FE: ConcatStr
  loc_A765FF: FStStrNoPop var_A0
  loc_A76602: FLdI2 iNP
  loc_A76605: CStrUI1
  loc_A76607: FStStrNoPop var_A4
  loc_A7660A: ConcatStr
  loc_A7660B: FStStrNoPop var_A8
  loc_A7660E: LitStr "' AND FeanOrco IS NOT NULL HAVING FeanOrco IS NOT NULL;"
  loc_A76611: ConcatStr
  loc_A76612: FStStrNoPop var_AC
  loc_A76615: Call EjecutarRsCls(from_stack_1v)
  loc_A7661A: FFreeStr var_90 = "": UltimaFeanNope = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A7662D: FLdRfVar var_B0
  loc_A76630: FLdPr Me
  loc_A76633: MemLdPr global_56
  loc_A76636:  = Me.RecordCount
  loc_A7663B: ILdRf var_B0
  loc_A7663E: LitI4 0
  loc_A76643: GtI4
  loc_A76644: BranchF loc_A766C4
  loc_A76647: FLdRfVar var_D8
  loc_A7664A: FLdRfVar var_C8
  loc_A7664D: LitVarStr var_C4, "FeanOrco"
  loc_A76652: PopAdLdVar
  loc_A76653: FLdRfVar var_B4
  loc_A76656: FLdPr Me
  loc_A76659: MemLdPr global_56
  loc_A7665C:  = Me.Fields
  loc_A76661: FLdPr var_B4
  loc_A76664: from_stack_2 = Me.Item(from_stack_1)
  loc_A76669: FLdPr var_C8
  loc_A7666C:  = Me.Value
  loc_A76671: FLdRfVar var_D8
  loc_A76674: FnCDateVar
  loc_A76676: ILdRf var_88
  loc_A76679: CDateStr
  loc_A7667B: GtR4
  loc_A7667C: FFreeAd var_B4 = ""
  loc_A76683: FFree1Var var_D8 = ""
  loc_A76686: BranchF loc_A766C4
  loc_A76689: FLdRfVar var_D8
  loc_A7668C: FLdRfVar var_C8
  loc_A7668F: LitVarStr var_C4, "FeanOrco"
  loc_A76694: PopAdLdVar
  loc_A76695: FLdRfVar var_B4
  loc_A76698: FLdPr Me
  loc_A7669B: MemLdPr global_56
  loc_A7669E:  = Me.Fields
  loc_A766A3: FLdPr var_B4
  loc_A766A6: from_stack_2 = Me.Item(from_stack_1)
  loc_A766AB: FLdPr var_C8
  loc_A766AE:  = Me.Value
  loc_A766B3: FLdRfVar var_D8
  loc_A766B6: CStrVarTmp
  loc_A766B7: FStStr var_88
  loc_A766BA: FFreeAd var_B4 = ""
  loc_A766C1: FFree1Var var_D8 = ""
  loc_A766C4: ExitProcCbHresult
  loc_A766CA: SubCy
End Function

Public Function UltimaFechCoti(PeriInfo, CodiNope) 'A27930
  'Data Table: 42E90C
  loc_A27780: ZeroRetVal
  loc_A27782: LitStr "SELECT FechNope"
  loc_A27785: LitStr " FROM notapedido"
  loc_A27788: ConcatStr
  loc_A27789: FStStrNoPop var_8C
  loc_A2778C: LitStr " WHERE PeriInfo = "
  loc_A2778F: ConcatStr
  loc_A27790: FStStrNoPop var_90
  loc_A27793: FLdI2 PeriInfo
  loc_A27796: CStrUI1
  loc_A27798: FStStrNoPop UltimaFechCoti
  loc_A2779B: ConcatStr
  loc_A2779C: FStStrNoPop var_98
  loc_A2779F: LitStr " AND CodiNope = "
  loc_A277A2: ConcatStr
  loc_A277A3: FStStrNoPop var_9C
  loc_A277A6: ILdRf CodiNope
  loc_A277A9: CStrI4
  loc_A277AB: FStStrNoPop var_A0
  loc_A277AE: ConcatStr
  loc_A277AF: FStStrNoPop var_A4
  loc_A277B2: Call EjecutarRsCls(from_stack_1v)
  loc_A277B7: FFreeStr var_8C = "": var_90 = "": UltimaFechCoti = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A277C8: FLdRfVar var_A8
  loc_A277CB: FLdPr Me
  loc_A277CE: MemLdPr global_56
  loc_A277D1:  = Me.RecordCount
  loc_A277D6: ILdRf var_A8
  loc_A277D9: LitI4 0
  loc_A277DE: GtI4
  loc_A277DF: BranchF loc_A27820
  loc_A277E2: FLdRfVar var_D0
  loc_A277E5: FLdRfVar var_C0
  loc_A277E8: LitVarStr var_BC, "FechNope"
  loc_A277ED: PopAdLdVar
  loc_A277EE: FLdRfVar var_AC
  loc_A277F1: FLdPr Me
  loc_A277F4: MemLdPr global_56
  loc_A277F7:  = Me.Fields
  loc_A277FC: FLdPr var_AC
  loc_A277FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A27804: FLdPr var_C0
  loc_A27807:  = Me.Value
  loc_A2780C: FLdRfVar var_D0
  loc_A2780F: CStrVarTmp
  loc_A27810: FStStr var_88
  loc_A27813: FFreeAd var_AC = ""
  loc_A2781A: FFree1Var var_D0 = ""
  loc_A2781D: Branch loc_A27828
  loc_A27820: ImpAdLdFPR8 MemVar_C3D054
  loc_A27823: CStrDate
  loc_A27825: FStStr var_88
  loc_A27828: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_A2782B: LitStr " FROM imputacion"
  loc_A2782E: ConcatStr
  loc_A2782F: FStStrNoPop var_8C
  loc_A27832: LitStr " WHERE PeriInfo = "
  loc_A27835: ConcatStr
  loc_A27836: FStStrNoPop var_90
  loc_A27839: FLdI2 PeriInfo
  loc_A2783C: CStrUI1
  loc_A2783E: FStStrNoPop UltimaFechCoti
  loc_A27841: ConcatStr
  loc_A27842: FStStrNoPop var_98
  loc_A27845: LitStr " AND CodiNope = "
  loc_A27848: ConcatStr
  loc_A27849: FStStrNoPop var_9C
  loc_A2784C: ILdRf CodiNope
  loc_A2784F: CStrI4
  loc_A27851: FStStrNoPop var_A0
  loc_A27854: ConcatStr
  loc_A27855: FStStrNoPop var_A4
  loc_A27858: LitStr " AND PrevImpu != 0;"
  loc_A2785B: ConcatStr
  loc_A2785C: FStStrNoPop var_D4
  loc_A2785F: Call EjecutarRsCls(from_stack_1v)
  loc_A27864: FFreeStr var_8C = "": var_90 = "": UltimaFechCoti = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A27877: FLdRfVar var_C0
  loc_A2787A: LitVarStr var_BC, "FechImpu"
  loc_A2787F: PopAdLdVar
  loc_A27880: FLdRfVar var_AC
  loc_A27883: FLdPr Me
  loc_A27886: MemLdPr global_56
  loc_A27889:  = Me.Fields
  loc_A2788E: FLdPr var_AC
  loc_A27891: from_stack_2 = Me.Item(from_stack_1)
  loc_A27896: FLdZeroAd var_C0
  loc_A27899: CVarAd
  loc_A2789D: ImpAdCallI2 IsNull()
  loc_A278A2: NotI4
  loc_A278A3: FFree1Ad var_AC
  loc_A278A6: FFree1Var var_D0 = ""
  loc_A278A9: BranchF loc_A27929
  loc_A278AC: FLdRfVar var_D0
  loc_A278AF: FLdRfVar var_C0
  loc_A278B2: LitVarStr var_BC, "FechImpu"
  loc_A278B7: PopAdLdVar
  loc_A278B8: FLdRfVar var_AC
  loc_A278BB: FLdPr Me
  loc_A278BE: MemLdPr global_56
  loc_A278C1:  = Me.Fields
  loc_A278C6: FLdPr var_AC
  loc_A278C9: from_stack_2 = Me.Item(from_stack_1)
  loc_A278CE: FLdPr var_C0
  loc_A278D1:  = Me.Value
  loc_A278D6: FLdRfVar var_D0
  loc_A278D9: FnCDateVar
  loc_A278DB: ILdRf var_88
  loc_A278DE: CDateStr
  loc_A278E0: GtR4
  loc_A278E1: FFreeAd var_AC = ""
  loc_A278E8: FFree1Var var_D0 = ""
  loc_A278EB: BranchF loc_A27929
  loc_A278EE: FLdRfVar var_D0
  loc_A278F1: FLdRfVar var_C0
  loc_A278F4: LitVarStr var_BC, "FechImpu"
  loc_A278F9: PopAdLdVar
  loc_A278FA: FLdRfVar var_AC
  loc_A278FD: FLdPr Me
  loc_A27900: MemLdPr global_56
  loc_A27903:  = Me.Fields
  loc_A27908: FLdPr var_AC
  loc_A2790B: from_stack_2 = Me.Item(from_stack_1)
  loc_A27910: FLdPr var_C0
  loc_A27913:  = Me.Value
  loc_A27918: FLdRfVar var_D0
  loc_A2791B: CStrVarTmp
  loc_A2791C: FStStr var_88
  loc_A2791F: FFreeAd var_AC = ""
  loc_A27926: FFree1Var var_D0 = ""
  loc_A27929: ExitProcCbHresult
End Function

Public Sub OcultarNota() '9DD1B8
  'Data Table: 42E90C
  loc_9DD0DC: LitI2_Byte 0
  loc_9DD0DE: PopTmpLdAd2 var_86
  loc_9DD0E1: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9DD0E6: FStFPR8 var_17C
  loc_9DD0E9: LitStr "UPDATE notapedido SET FeocNope="
  loc_9DD0EC: LitI4 1
  loc_9DD0F1: LitI4 1
  loc_9DD0F6: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_9DD0FB: FStVarCopyObj var_C8
  loc_9DD0FE: FLdRfVar var_C8
  loc_9DD101: FLdFPR8 var_17C
  loc_9DD104: CVarDate var_A8
  loc_9DD108: ImpAdCallI2 Format$(, )
  loc_9DD10D: FStStrNoPop var_CC
  loc_9DD110: ConcatStr
  loc_9DD111: FStStrNoPop var_D0
  loc_9DD114: LitStr " WHERE PeriInfo = "
  loc_9DD117: ConcatStr
  loc_9DD118: CVarStr var_108
  loc_9DD11B: FLdRfVar var_F8
  loc_9DD11E: FLdRfVar var_E8
  loc_9DD121: LitVarStr var_E4, "PeriInfo"
  loc_9DD126: PopAdLdVar
  loc_9DD127: FLdRfVar var_D4
  loc_9DD12A: FLdPr Me
  loc_9DD12D: MemLdPr RsFrm
  loc_9DD130:  = Me.Fields
  loc_9DD135: FLdPr var_D4
  loc_9DD138: from_stack_2 = Me.Item(from_stack_1)
  loc_9DD13D: FLdPr var_E8
  loc_9DD140:  = Me.Value
  loc_9DD145: FLdRfVar var_F8
  loc_9DD148: ConcatVar var_118
  loc_9DD14C: LitVarStr var_128, " AND CodiNope = "
  loc_9DD151: ConcatVar var_138
  loc_9DD155: FLdRfVar var_160
  loc_9DD158: FLdRfVar var_150
  loc_9DD15B: LitVarStr var_14C, "CodiNope"
  loc_9DD160: PopAdLdVar
  loc_9DD161: FLdRfVar var_13C
  loc_9DD164: FLdPr Me
  loc_9DD167: MemLdPr RsFrm
  loc_9DD16A:  = Me.Fields
  loc_9DD16F: FLdPr var_13C
  loc_9DD172: from_stack_2 = Me.Item(from_stack_1)
  loc_9DD177: FLdPr var_150
  loc_9DD17A:  = Me.Value
  loc_9DD17F: FLdRfVar var_160
  loc_9DD182: ConcatVar var_170
  loc_9DD186: CStrVarVal var_174
  loc_9DD18A: Call EjecutarRsCls(from_stack_1v)
  loc_9DD18F: FFreeStr var_CC = "": var_D0 = ""
  loc_9DD198: FFreeAd var_D4 = "": var_E8 = "": var_13C = ""
  loc_9DD1A3: FFreeVar var_A8 = "": var_C8 = "": var_108 = "": var_F8 = "": var_118 = "": var_138 = "": var_160 = ""
  loc_9DD1B6: ExitProcHresult
End Sub

Public Function PasarNPalEjercicioSiguiente() 'AD6B18
  'Data Table: 42E90C
  loc_AD64E8: ZeroRetVal
  loc_AD64EA: LitI2 250
  loc_AD64ED: FStI2 var_96
  loc_AD64F0: LitStr "Municipalidad de Guaymallén"
  loc_AD64F3: LitStr "Municipalidad de Lavalle"
  loc_AD64F6: EqStr
  loc_AD64F8: BranchF loc_AD6501
  loc_AD64FB: LitI2 1000
  loc_AD64FE: FStI2 var_96
  loc_AD6501: FLdI2 var_96
  loc_AD6504: LitI2_Byte &HC
  loc_AD6506: SubI2
  loc_AD6507: FStI2 var_96
  loc_AD650A: LitVar_Missing var_178
  loc_AD650D: LitVar_Missing var_158
  loc_AD6510: LitVar_Missing var_138
  loc_AD6513: LitVar_Missing var_118
  loc_AD6516: LitVar_Missing var_F8
  loc_AD6519: LitVarStr var_C8, "Pasaje de Nota de Pedido"
  loc_AD651E: FStVarCopyObj var_D8
  loc_AD6521: FLdRfVar var_D8
  loc_AD6524: LitVarStr var_A8, "Ingrese la Nota de Pedido a pasar..."
  loc_AD6529: FStVarCopyObj var_B8
  loc_AD652C: FLdRfVar var_B8
  loc_AD652F: ImpAdCallI2 InputBox(, , , , , , )
  loc_AD6534: FStStr var_8C
  loc_AD6537: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_158 = ""
  loc_AD6548: FLdRfVar var_90
  loc_AD654B: NewIfNullRf
  loc_AD654F: ILdRf var_8C
  loc_AD6552: ImpAdLdI2 MemVar_C3D064
  loc_AD6555: ImpAdCallI2 Proc_259_17_B74BCC(, , )
  loc_AD655A: BranchF loc_AD65FB
  loc_AD655D: FLdRfVar var_17C
  loc_AD6560: FLdRfVar var_90
  loc_AD6563: NewIfNullPr tblnotapedido
  loc_AD6566: from_stack_1v = tblnotapedido.IncludOCGet()
  loc_AD656B: ILdRf var_17C
  loc_AD656E: LitStr "Si"
  loc_AD6571: EqStr
  loc_AD6573: FLdRfVar var_180
  loc_AD6576: FLdRfVar var_90
  loc_AD6579: NewIfNullPr tblnotapedido
  loc_AD657C: from_stack_1v = tblnotapedido.PaesNopeGet()
  loc_AD6581: ILdRf var_180
  loc_AD6584: LitStr "0"
  loc_AD6587: NeStr
  loc_AD6589: AndI4
  loc_AD658A: FFreeStr var_17C = ""
  loc_AD6591: BranchF loc_AD65F8
  loc_AD6594: FLdRfVar var_17C
  loc_AD6597: FLdRfVar var_90
  loc_AD659A: NewIfNullPr tblnotapedido
  loc_AD659D: from_stack_1v = tblnotapedido.PaesNopeGet()
  loc_AD65A2: ILdRf var_17C
  loc_AD65A5: LitStr "0"
  loc_AD65A8: NeStr
  loc_AD65AA: FFree1Str var_17C
  loc_AD65AD: BranchF loc_AD65E5
  loc_AD65B0: LitI4 0
  loc_AD65B5: LitStr "La Nota de Pedido fue pasada al número "
  loc_AD65B8: FLdRfVar var_17C
  loc_AD65BB: FLdRfVar var_90
  loc_AD65BE: NewIfNullPr tblnotapedido
  loc_AD65C1: from_stack_1v = tblnotapedido.PaesNopeGet()
  loc_AD65C6: ILdRf var_17C
  loc_AD65C9: ConcatStr
  loc_AD65CA: FStStrNoPop var_180
  loc_AD65CD: LitStr ". Verifique..."
  loc_AD65D0: ConcatStr
  loc_AD65D1: FStStrNoPop var_184
  loc_AD65D4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD65D9: FFreeStr var_17C = "": var_180 = ""
  loc_AD65E2: Branch loc_AD65F2
  loc_AD65E5: LitI4 0
  loc_AD65EA: LitStr "La Nota de Pedido se encuentra incluída en Orden de Compra. Verifique..."
  loc_AD65ED: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD65F2: ExitProcCbHresult
  loc_AD65F8: Branch loc_AD661F
  loc_AD65FB: LitI4 0
  loc_AD6600: FLdRfVar var_17C
  loc_AD6603: FLdRfVar var_90
  loc_AD6606: NewIfNullPr tblnotapedido
  loc_AD6609: from_stack_1v = tblnotapedido.MsgErrorGet()
  loc_AD660E: ILdRf var_17C
  loc_AD6611: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD6616: FFree1Str var_17C
  loc_AD6619: ExitProcCbHresult
  loc_AD661F: OnErrorGoto loc_AD6B08
  loc_AD6622: LitStr "START TRANSACTION;"
  loc_AD6625: FStStrCopy PasarNPalEjercicioSiguiente
  loc_AD6628: ILdRf PasarNPalEjercicioSiguiente
  loc_AD662B: LitStr "SET @PeriInfoViejo="
  loc_AD662E: ConcatStr
  loc_AD662F: FStStrNoPop var_17C
  loc_AD6632: ImpAdLdI2 MemVar_C3D064
  loc_AD6635: CStrUI1
  loc_AD6637: FStStrNoPop var_180
  loc_AD663A: ConcatStr
  loc_AD663B: FStStrNoPop var_184
  loc_AD663E: LitStr ", @PeriInfoNuevo="
  loc_AD6641: ConcatStr
  loc_AD6642: FStStrNoPop var_188
  loc_AD6645: ImpAdLdI2 MemVar_C3D064
  loc_AD6648: LitI2_Byte 1
  loc_AD664A: AddI2
  loc_AD664B: CStrUI1
  loc_AD664D: FStStrNoPop var_18C
  loc_AD6650: ConcatStr
  loc_AD6651: FStStrNoPop var_190
  loc_AD6654: LitStr ";"
  loc_AD6657: ConcatStr
  loc_AD6658: FStStr PasarNPalEjercicioSiguiente
  loc_AD665B: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_AD666A: ILdRf PasarNPalEjercicioSiguiente
  loc_AD666D: LitStr "SELECT @CodiNope:=IFNULL(Max(CodiNope),0), @FechNope:=IFNULL(MAX(FechNope),CONVERT(CONCAT(@PeriInfoNuevo,'-01-01'),DATE))"
  loc_AD6670: ConcatStr
  loc_AD6671: FStStrNoPop var_17C
  loc_AD6674: LitStr " FROM notapedido"
  loc_AD6677: ConcatStr
  loc_AD6678: FStStrNoPop var_180
  loc_AD667B: LitStr " WHERE PeriInfo = @PeriInfoNuevo;"
  loc_AD667E: ConcatStr
  loc_AD667F: FStStr PasarNPalEjercicioSiguiente
  loc_AD6682: FFreeStr var_17C = ""
  loc_AD6689: ILdRf PasarNPalEjercicioSiguiente
  loc_AD668C: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi; "
  loc_AD668F: ConcatStr
  loc_AD6690: FStStr PasarNPalEjercicioSiguiente
  loc_AD6693: ILdRf PasarNPalEjercicioSiguiente
  loc_AD6696: LitStr "CREATE TEMPORARY TABLE movi` ("
  loc_AD6699: ConcatStr
  loc_AD669A: FStStrNoPop var_17C
  loc_AD669D: LitStr "dCoti` int(10) NOT NULL,"
  loc_AD66A0: ConcatStr
  loc_AD66A1: FStStrNoPop var_180
  loc_AD66A4: LitStr "eriInfo` year(4) NOT NULL DEFAULT 0000,"
  loc_AD66A7: ConcatStr
  loc_AD66A8: FStStrNoPop var_184
  loc_AD66AB: LitStr "odiNope` int(8) unsigned NOT NULL DEFAULT 0,"
  loc_AD66AE: ConcatStr
  loc_AD66AF: FStStrNoPop var_188
  loc_AD66B2: LitStr "dRubro` smallint(5) unsigned NOT NULL DEFAULT 0,"
  loc_AD66B5: ConcatStr
  loc_AD66B6: FStStrNoPop var_18C
  loc_AD66B9: LitStr "dUbfi` mediumint(8) unsigned NOT NULL DEFAULT 0,"
  loc_AD66BC: ConcatStr
  loc_AD66BD: FStStrNoPop var_190
  loc_AD66C0: LitStr "ienNope` varchar(200) NOT NULL DEFAULT '' COMMENT 'DIreccion ENtrega',"
  loc_AD66C3: ConcatStr
  loc_AD66C4: FStStrNoPop var_194
  loc_AD66C7: LitStr "oinNope` int(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Codigo Interno',"
  loc_AD66CA: ConcatStr
  loc_AD66CB: FStStrNoPop var_198
  loc_AD66CE: LitStr "oesOrga` char(7) NOT NULL DEFAULT '',"
  loc_AD66D1: ConcatStr
  loc_AD66D2: FStStrNoPop var_19C
  loc_AD66D5: LitStr "odiTico` smallint(2) unsigned NOT NULL DEFAULT 0,"
  loc_AD66D8: ConcatStr
  loc_AD66D9: FStStrNoPop var_1A0
  loc_AD66DC: LitStr "etaNope` varchar(1000) NOT NULL DEFAULT '',"
  loc_AD66DF: ConcatStr
  loc_AD66E0: FStStrNoPop var_1A4
  loc_AD66E3: LitStr "xpeImpu` varchar(15) NOT NULL DEFAULT '',"
  loc_AD66E6: ConcatStr
  loc_AD66E7: FStStrNoPop var_1A8
  loc_AD66EA: LitStr "ubliNope` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'PUBLIca en la web',"
  loc_AD66ED: ConcatStr
  loc_AD66EE: FStStrNoPop var_1AC
  loc_AD66F1: LitStr "lieNope` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'Importe Pliego',"
  loc_AD66F4: ConcatStr
  loc_AD66F5: FStStrNoPop var_1B0
  loc_AD66F8: LitStr "umIdImpu` decimal(30,2) NOT NULL DEFAULT '0.00'"
  loc_AD66FB: ConcatStr
  loc_AD66FC: FStStrNoPop var_1B4
  loc_AD66FF: LitStr ") ; "
  loc_AD6702: ConcatStr
  loc_AD6703: FStStr PasarNPalEjercicioSiguiente
  loc_AD6706: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = ""
  loc_AD6727: ILdRf PasarNPalEjercicioSiguiente
  loc_AD672A: LitStr "INSERT INTO tmovi"
  loc_AD672D: ConcatStr
  loc_AD672E: FStStrNoPop var_17C
  loc_AD6731: LitStr " SELECT 0 AS IdCoti, notapedido.PeriInfo, notapedido.CodiNope, notapedido.IdRubro, notapedido.IdUbfi, notapedido.DienNope, notapedido.CoinNope, codiorganope.CoesOrga, CodiTico, notapedido.DetaNope, ExpeImpu, notapedido.PubliNope, PlieNope, Sum(IdImpu) SumIdImpu"
  loc_AD6734: ConcatStr
  loc_AD6735: FStStrNoPop var_180
  loc_AD6738: LitStr " FROM notapedido"
  loc_AD673B: ConcatStr
  loc_AD673C: FStStrNoPop var_184
  loc_AD673F: LitStr " INNER JOIN infogov.organigrama codiorganope ON codiorganope.PeriInfo = notapedido.PeriInfo AND codiorganope.CodiOrga = notapedido.CodiOrga AND codiorganope.CoesOrga <> ''"
  loc_AD6742: ConcatStr
  loc_AD6743: FStStrNoPop var_188
  loc_AD6746: LitStr " INNER JOIN itemnota ON itemnota.PeriInfo = notapedido.PeriInfo AND itemnota.CodiNope = notapedido.CodiNope"
  loc_AD6749: ConcatStr
  loc_AD674A: FStStrNoPop var_18C
  loc_AD674D: LitStr " INNER JOIN infogov.organigrama codiorgaitem ON codiorgaitem.PeriInfo = itemnota.PeriInfo AND codiorgaitem.CodiOrga = itemnota.CodiOrga AND codiorgaitem.CoesOrga <> ''"
  loc_AD6750: ConcatStr
  loc_AD6751: FStStrNoPop var_190
  loc_AD6754: LitStr " INNER JOIN finalidad ON finalidad.PeriInfo = itemnota.PeriInfo AND finalidad.CodiFifu = itemnota.CodiFifu AND CoesFifu <> ''"
  loc_AD6757: ConcatStr
  loc_AD6758: FStStrNoPop var_194
  loc_AD675B: LitStr " WHERE notapedido.PeriInfo = @PeriInfoViejo AND notapedido.CodiNope = "
  loc_AD675E: ConcatStr
  loc_AD675F: FStStrNoPop var_198
  loc_AD6762: ILdRf var_8C
  loc_AD6765: ConcatStr
  loc_AD6766: FStStrNoPop var_19C
  loc_AD6769: LitStr " AND FeanNope IS NULL AND PaesNope = 0"
  loc_AD676C: ConcatStr
  loc_AD676D: FStStrNoPop var_1A0
  loc_AD6770: LitStr " GROUP BY PeriInfo, CodiNope"
  loc_AD6773: ConcatStr
  loc_AD6774: FStStrNoPop var_1A4
  loc_AD6777: LitStr " /*HAVING SumIdImpu = 0*/; "
  loc_AD677A: ConcatStr
  loc_AD677B: FStStr PasarNPalEjercicioSiguiente
  loc_AD677E: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_AD6797: ILdRf PasarNPalEjercicioSiguiente
  loc_AD679A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_AD679D: ConcatStr
  loc_AD679E: FStStrNoPop var_17C
  loc_AD67A1: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_AD67A4: ConcatStr
  loc_AD67A5: FStStrNoPop var_180
  loc_AD67A8: LitStr " SELECT tmovi.*, @CodiNope:=@CodiNope+1 CodiNopeNuevo"
  loc_AD67AB: ConcatStr
  loc_AD67AC: FStStrNoPop var_184
  loc_AD67AF: LitStr " FROM tmovi"
  loc_AD67B2: ConcatStr
  loc_AD67B3: FStStrNoPop var_188
  loc_AD67B6: LitStr " ORDER BY CodiNope;"
  loc_AD67B9: ConcatStr
  loc_AD67BA: FStStr PasarNPalEjercicioSiguiente
  loc_AD67BD: FFreeStr var_17C = "": var_180 = "": var_184 = ""
  loc_AD67C8: ILdRf PasarNPalEjercicioSiguiente
  loc_AD67CB: LitStr "INSERT INTO notapedido (PeriInfo,CodiNope,IdRubro,IdUbfi,DienNope,CoinNope,CodiOrga,DetaNope,CodiTico,ExpeImpu,FechNope,PlieNope,AltaUsua)"
  loc_AD67CE: ConcatStr
  loc_AD67CF: FStStrNoPop var_17C
  loc_AD67D2: LitStr " SELECT @PeriInfoNuevo,tmovi2.CodiNopeNuevo,tmovi2.IdRubro,tmovi2.IdUbfi,tmovi2.DienNope,tmovi2.CoinNope,tmovi2.CoesOrga,CONCAT('N.P.:',tmovi2.CodiNope,'. ',LEFT(tmovi2.DetaNope,"
  loc_AD67D5: ConcatStr
  loc_AD67D6: FStStrNoPop var_180
  loc_AD67D9: FLdI2 var_96
  loc_AD67DC: CStrUI1
  loc_AD67DE: FStStrNoPop var_184
  loc_AD67E1: ConcatStr
  loc_AD67E2: FStStrNoPop var_188
  loc_AD67E5: LitStr ")),tmovi2.CodiTico,tmovi2.ExpeImpu,@FechNope,tmovi2.PlieNope,'"
  loc_AD67E8: ConcatStr
  loc_AD67E9: FStStrNoPop var_18C
  loc_AD67EC: ImpAdLdI4 MemVar_C3D03C
  loc_AD67EF: ConcatStr
  loc_AD67F0: FStStrNoPop var_190
  loc_AD67F3: LitStr "'"
  loc_AD67F6: ConcatStr
  loc_AD67F7: FStStrNoPop var_194
  loc_AD67FA: LitStr " FROM tmovi2"
  loc_AD67FD: ConcatStr
  loc_AD67FE: FStStrNoPop var_198
  loc_AD6801: LitStr " INNER JOIN notapedido ON notapedido.PeriInfo = tmovi2.PeriInfo AND notapedido.CodiNope = tmovi2.CodiNope; "
  loc_AD6804: ConcatStr
  loc_AD6805: FStStr PasarNPalEjercicioSiguiente
  loc_AD6808: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = ""
  loc_AD681B: ILdRf PasarNPalEjercicioSiguiente
  loc_AD681E: LitStr "INSERT INTO itemnota (PeriInfo, CodiNope, CodiItno, CodiInsu, DetaItno, CaraItno, CantItno, ImunItno, CodiPart, CodiOrga, CodiUnga, CodiFifu, IdImpu)"
  loc_AD6821: ConcatStr
  loc_AD6822: FStStrNoPop var_17C
  loc_AD6825: LitStr " SELECT @PeriInfoNuevo,tmovi2.CodiNopeNuevo,CodiItno,CodiInsu,DetaItno,CaraItno,CantItno,ImunItno,'',organigrama.CoesOrga,1,CoesFifu,0"
  loc_AD6828: ConcatStr
  loc_AD6829: FStStrNoPop var_180
  loc_AD682C: LitStr " FROM tmovi2"
  loc_AD682F: ConcatStr
  loc_AD6830: FStStrNoPop var_184
  loc_AD6833: LitStr " INNER JOIN itemnota ON itemnota.PeriInfo = tmovi2.PeriInfo AND itemnota.CodiNope = tmovi2.CodiNope"
  loc_AD6836: ConcatStr
  loc_AD6837: FStStrNoPop var_188
  loc_AD683A: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = itemnota.PeriInfo AND organigrama.CodiOrga = itemnota.CodiOrga "
  loc_AD683D: ConcatStr
  loc_AD683E: FStStrNoPop var_18C
  loc_AD6841: LitStr " INNER JOIN finalidad ON finalidad.PeriInfo = itemnota.PeriInfo AND finalidad.CodiFifu = itemnota.CodiFifu; "
  loc_AD6844: ConcatStr
  loc_AD6845: FStStr PasarNPalEjercicioSiguiente
  loc_AD6848: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_AD6855: LitStr "SELECT c.IdCoti"
  loc_AD6858: LitStr " FROM cotizacion c"
  loc_AD685B: ConcatStr
  loc_AD685C: FStStrNoPop var_17C
  loc_AD685F: LitStr " INNER JOIN notapedido np ON np.PeriInfo = c.PeriInfo AND np.CodiNope = c.CodiNope"
  loc_AD6862: ConcatStr
  loc_AD6863: FStStrNoPop var_180
  loc_AD6866: LitStr " AND np.PaesNope = 0 AND np.FeanNope IS NULL"
  loc_AD6869: ConcatStr
  loc_AD686A: FStStrNoPop var_184
  loc_AD686D: LitStr " WHERE c.PeriInfo = "
  loc_AD6870: ConcatStr
  loc_AD6871: FStStrNoPop var_188
  loc_AD6874: ImpAdLdI2 MemVar_C3D064
  loc_AD6877: CStrUI1
  loc_AD6879: FStStrNoPop var_18C
  loc_AD687C: ConcatStr
  loc_AD687D: FStStrNoPop var_190
  loc_AD6880: LitStr " AND c.CodiNope = "
  loc_AD6883: ConcatStr
  loc_AD6884: FStStrNoPop var_194
  loc_AD6887: ILdRf var_8C
  loc_AD688A: ConcatStr
  loc_AD688B: FStStrNoPop var_198
  loc_AD688E: LitStr " AND c.FeanCoti IS NULL;"
  loc_AD6891: ConcatStr
  loc_AD6892: FStStrNoPop var_19C
  loc_AD6895: Call EjecutarRsCls(from_stack_1v)
  loc_AD689A: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_AD68AF: FLdRfVar var_1B8
  loc_AD68B2: FLdPr Me
  loc_AD68B5: MemLdPr global_56
  loc_AD68B8:  = Me.RecordCount
  loc_AD68BD: ILdRf var_1B8
  loc_AD68C0: LitI4 0
  loc_AD68C5: GtI4
  loc_AD68C6: BranchF loc_AD6A0B
  loc_AD68C9: FLdPr Me
  loc_AD68CC: MemLdPr global_56
  loc_AD68CF: Me.MoveFirst
  loc_AD68D4: FLdRfVar var_1BA
  loc_AD68D7: FLdPr Me
  loc_AD68DA: MemLdPr global_56
  loc_AD68DD:  = Me.EOF
  loc_AD68E2: FLdI2 var_1BA
  loc_AD68E5: NotI4
  loc_AD68E6: BranchF loc_AD6A0B
  loc_AD68E9: ILdRf PasarNPalEjercicioSiguiente
  loc_AD68EC: LitStr "INSERT INTO cotizacion (PeriInfo,CodiNope,CucuPers,FechCoti,PlenCoti,MaofCoti, FemaofCoti,ObseCoti,AltaUsua)"
  loc_AD68EF: ConcatStr
  loc_AD68F0: FStStrNoPop var_17C
  loc_AD68F3: LitStr " SELECT @PeriInfoNuevo, @CodiNope, CucuPers, @FechNope, PlenCoti, MaofCoti, FemaofCoti, ObseCoti, '"
  loc_AD68F6: ConcatStr
  loc_AD68F7: FStStrNoPop var_180
  loc_AD68FA: ImpAdLdI4 MemVar_C3D03C
  loc_AD68FD: ConcatStr
  loc_AD68FE: FStStrNoPop var_184
  loc_AD6901: LitStr "'"
  loc_AD6904: ConcatStr
  loc_AD6905: FStStrNoPop var_188
  loc_AD6908: LitStr " FROM cotizacion"
  loc_AD690B: ConcatStr
  loc_AD690C: FStStrNoPop var_18C
  loc_AD690F: LitStr " WHERE IdCoti = "
  loc_AD6912: ConcatStr
  loc_AD6913: CVarStr var_D8
  loc_AD6916: FLdRfVar var_B8
  loc_AD6919: FLdRfVar var_1C4
  loc_AD691C: LitVarStr var_A8, "IdCoti"
  loc_AD6921: PopAdLdVar
  loc_AD6922: FLdRfVar var_1C0
  loc_AD6925: FLdPr Me
  loc_AD6928: MemLdPr global_56
  loc_AD692B:  = Me.Fields
  loc_AD6930: FLdPr var_1C0
  loc_AD6933: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6938: FLdPr var_1C4
  loc_AD693B:  = Me.Value
  loc_AD6940: FLdRfVar var_B8
  loc_AD6943: ConcatVar var_F8
  loc_AD6947: LitVarStr var_C8, ";"
  loc_AD694C: ConcatVar var_118
  loc_AD6950: CStrVarTmp
  loc_AD6951: FStStr PasarNPalEjercicioSiguiente
  loc_AD6954: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_AD6961: FFreeAd var_1C0 = ""
  loc_AD6968: FFreeVar var_D8 = "": var_B8 = "": var_F8 = ""
  loc_AD6973: ILdRf PasarNPalEjercicioSiguiente
  loc_AD6976: LitStr "INSERT INTO itemcotizacion (IdCoti,PeriInfo,CodiNope,CodiItco,AlteItco,DetaItco,MarcaItco,CaraItco,CodiInsu,CantItco,ImunItco,AltaUsua)"
  loc_AD6979: ConcatStr
  loc_AD697A: FStStrNoPop var_17C
  loc_AD697D: LitStr " SELECT (SELECT LAST_INSERT_ID()), @PeriInfoNuevo, @CodiNope, CodiItco, AlteItco, DetaItco, MarcaItco, CaraItco, CodiInsu, CantItco, ImunItco, '"
  loc_AD6980: ConcatStr
  loc_AD6981: FStStrNoPop var_180
  loc_AD6984: ImpAdLdI4 MemVar_C3D03C
  loc_AD6987: ConcatStr
  loc_AD6988: FStStrNoPop var_184
  loc_AD698B: LitStr "'"
  loc_AD698E: ConcatStr
  loc_AD698F: FStStrNoPop var_188
  loc_AD6992: LitStr " FROM itemcotizacion"
  loc_AD6995: ConcatStr
  loc_AD6996: FStStrNoPop var_18C
  loc_AD6999: LitStr " WHERE IdCoti = "
  loc_AD699C: ConcatStr
  loc_AD699D: CVarStr var_D8
  loc_AD69A0: FLdRfVar var_B8
  loc_AD69A3: FLdRfVar var_1C4
  loc_AD69A6: LitVarStr var_A8, "IdCoti"
  loc_AD69AB: PopAdLdVar
  loc_AD69AC: FLdRfVar var_1C0
  loc_AD69AF: FLdPr Me
  loc_AD69B2: MemLdPr global_56
  loc_AD69B5:  = Me.Fields
  loc_AD69BA: FLdPr var_1C0
  loc_AD69BD: from_stack_2 = Me.Item(from_stack_1)
  loc_AD69C2: FLdPr var_1C4
  loc_AD69C5:  = Me.Value
  loc_AD69CA: FLdRfVar var_B8
  loc_AD69CD: ConcatVar var_F8
  loc_AD69D1: LitVarStr var_C8, ";"
  loc_AD69D6: ConcatVar var_118
  loc_AD69DA: CStrVarTmp
  loc_AD69DB: FStStr PasarNPalEjercicioSiguiente
  loc_AD69DE: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_AD69EB: FFreeAd var_1C0 = ""
  loc_AD69F2: FFreeVar var_D8 = "": var_B8 = "": var_F8 = ""
  loc_AD69FD: FLdPr Me
  loc_AD6A00: MemLdPr global_56
  loc_AD6A03: Me.MoveNext
  loc_AD6A08: Branch loc_AD68D4
  loc_AD6A0B: ILdRf PasarNPalEjercicioSiguiente
  loc_AD6A0E: LitStr "UPDATE notapedido"
  loc_AD6A11: ConcatStr
  loc_AD6A12: FStStrNoPop var_17C
  loc_AD6A15: LitStr " INNER JOIN tmovi2 ON tmovi2.PeriInfo = notapedido.PeriInfo AND tmovi2.CodiNope = notapedido.CodiNope"
  loc_AD6A18: ConcatStr
  loc_AD6A19: FStStrNoPop var_180
  loc_AD6A1C: LitStr " SET notapedido.PaesNope = tmovi2.CodiNopeNuevo, notapedido.FeanNope = '"
  loc_AD6A1F: ConcatStr
  loc_AD6A20: FStStrNoPop var_184
  loc_AD6A23: ImpAdLdI2 MemVar_C3D064
  loc_AD6A26: CStrUI1
  loc_AD6A28: FStStrNoPop var_188
  loc_AD6A2B: ConcatStr
  loc_AD6A2C: FStStrNoPop var_18C
  loc_AD6A2F: LitStr "-12-31', notapedido.BajaUsua = '"
  loc_AD6A32: ConcatStr
  loc_AD6A33: FStStrNoPop var_190
  loc_AD6A36: ImpAdLdI4 MemVar_C3D03C
  loc_AD6A39: ConcatStr
  loc_AD6A3A: FStStrNoPop var_194
  loc_AD6A3D: LitStr "', BajaFeho = Now(), BajaMoti = Concat('copiada al ej. sgte: ',Convert(tmovi2.CodiNopeNuevo,unsigned));"
  loc_AD6A40: ConcatStr
  loc_AD6A41: FStStr PasarNPalEjercicioSiguiente
  loc_AD6A44: FFreeStr var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_AD6A55: ILdRf PasarNPalEjercicioSiguiente
  loc_AD6A58: Call EjecutarRsCls(from_stack_1v)
  loc_AD6A5D: LitStr "COMMIT;"
  loc_AD6A60: Call EjecutarRsCls(from_stack_1v)
  loc_AD6A65: LitStr "SELECT np.*"
  loc_AD6A68: LitStr " FROM notapedido np"
  loc_AD6A6B: ConcatStr
  loc_AD6A6C: FStStrNoPop var_17C
  loc_AD6A6F: LitStr " INNER JOIN tmovi2 ON tmovi2.PeriInfo = np.PeriInfo AND tmovi2.CodiNope = np.CodiNope;"
  loc_AD6A72: ConcatStr
  loc_AD6A73: FStStrNoPop var_180
  loc_AD6A76: Call EjecutarRsCls(from_stack_1v)
  loc_AD6A7B: FFreeStr var_17C = ""
  loc_AD6A82: FLdRfVar var_1B8
  loc_AD6A85: FLdPr Me
  loc_AD6A88: MemLdPr global_56
  loc_AD6A8B:  = Me.RecordCount
  loc_AD6A90: ILdRf var_1B8
  loc_AD6A93: LitI4 0
  loc_AD6A98: GtI4
  loc_AD6A99: BranchF loc_AD6AF8
  loc_AD6A9C: LitStr "Se pasó la NP: "
  loc_AD6A9F: ILdRf var_8C
  loc_AD6AA2: ConcatStr
  loc_AD6AA3: FStStrNoPop var_17C
  loc_AD6AA6: LitStr " al número: "
  loc_AD6AA9: ConcatStr
  loc_AD6AAA: CVarStr var_D8
  loc_AD6AAD: FLdRfVar var_B8
  loc_AD6AB0: FLdRfVar var_1C4
  loc_AD6AB3: LitVarStr var_A8, "PaesNope"
  loc_AD6AB8: PopAdLdVar
  loc_AD6AB9: FLdRfVar var_1C0
  loc_AD6ABC: FLdPr Me
  loc_AD6ABF: MemLdPr global_56
  loc_AD6AC2:  = Me.Fields
  loc_AD6AC7: FLdPr var_1C0
  loc_AD6ACA: from_stack_2 = Me.Item(from_stack_1)
  loc_AD6ACF: FLdPr var_1C4
  loc_AD6AD2:  = Me.Value
  loc_AD6AD7: FLdRfVar var_B8
  loc_AD6ADA: ConcatVar var_F8
  loc_AD6ADE: CStrVarTmp
  loc_AD6ADF: FStStr var_88
  loc_AD6AE2: FFree1Str var_17C
  loc_AD6AE5: FFreeAd var_1C0 = ""
  loc_AD6AEC: FFreeVar var_D8 = "": var_B8 = ""
  loc_AD6AF5: Branch loc_AD6B02
  loc_AD6AF8: LitStr "NO se pasó la NP: "
  loc_AD6AFB: ILdRf var_8C
  loc_AD6AFE: ConcatStr
  loc_AD6AFF: FStStr var_88
  loc_AD6B02: ExitProcCbHresult
  loc_AD6B08: LitStr "ROLLBACK;"
  loc_AD6B0B: Call EjecutarRsCls(from_stack_1v)
  loc_AD6B10: ExitProcCbHresult
  loc_AD6B16: PopAdLdVar
End Function

Private Function Proc_20_44_973DEC() '973DEC
  'Data Table: 42E90C
  loc_973DC8: LitStr "Primary"
  loc_973DCB: FLdPr Me
  loc_973DCE: LateIdLdVar var_94 DispID_4 0
  loc_973DD5: CastAdVar Me
  loc_973DD9: FStAdFunc var_98
  loc_973DDC: FLdPr var_98
  loc_973DE4: FFree1Ad var_98
  loc_973DE7: FFree1Var var_94 = ""
  loc_973DEA: ExitProcHresult
End Function

Private Function Proc_20_45_968E2C(arg_C) '968E2C
  'Data Table: 42E90C
  loc_968E10: ILdI4 arg_C
  loc_968E13: FStStrCopy var_88
  loc_968E16: ILdRf var_88
  loc_968E19: LitStr "Primary"
  loc_968E1C: EqStr
  loc_968E1E: BranchF loc_968E2B
  loc_968E21: FLdPr Me
  loc_968E24: MemLdStr RsFrm
  loc_968E27: IStAd
  loc_968E2B: ExitProcHresult
End Function
