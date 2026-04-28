VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsingreso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40A084
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40A093
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40A0A2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EC9BC
  'Data Table: 409E84
  loc_9EC994: FLdRfVar var_88
  loc_9EC997: FLdPr Me
  loc_9EC99A: MemLdPr RsFrm
  loc_9EC99D:  = Me.RecordCount
  loc_9EC9A2: ILdRf var_88
  loc_9EC9A5: LitI4 0
  loc_9EC9AA: GtI4
  loc_9EC9AB: BranchF loc_9EC9B9
  loc_9EC9AE: FLdPr Me
  loc_9EC9B1: MemLdPr RsFrm
  loc_9EC9B4: Me.MoveFirst
  loc_9EC9B9: ExitProcHresult
  loc_9EC9BA: ImpAdLdFPR4 MemVar_3D660000
End Sub

Public Sub MoveLast() '9EC85C
  'Data Table: 409E84
  loc_9EC834: FLdRfVar var_88
  loc_9EC837: FLdPr Me
  loc_9EC83A: MemLdPr RsFrm
  loc_9EC83D:  = Me.RecordCount
  loc_9EC842: ILdRf var_88
  loc_9EC845: LitI4 0
  loc_9EC84A: GtI4
  loc_9EC84B: BranchF loc_9EC859
  loc_9EC84E: FLdPr Me
  loc_9EC851: MemLdPr RsFrm
  loc_9EC854: Me.MoveLast
  loc_9EC859: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6B5D8
  'Data Table: 409E84
  loc_A6B560: FLdRfVar var_86
  loc_A6B563: FLdPr Me
  loc_A6B566: MemLdPr RsFrm
  loc_A6B569:  = Me.EOF
  loc_A6B56E: FLdI2 var_86
  loc_A6B571: NotI4
  loc_A6B572: FLdRfVar var_8C
  loc_A6B575: FLdPr Me
  loc_A6B578: MemLdPr RsFrm
  loc_A6B57B:  = Me.RecordCount
  loc_A6B580: ILdRf var_8C
  loc_A6B583: LitI4 0
  loc_A6B588: GtI4
  loc_A6B589: AndI4
  loc_A6B58A: BranchF loc_A6B598
  loc_A6B58D: FLdPr Me
  loc_A6B590: MemLdPr RsFrm
  loc_A6B593: Me.MoveNext
  loc_A6B598: FLdRfVar var_86
  loc_A6B59B: FLdPr Me
  loc_A6B59E: MemLdPr RsFrm
  loc_A6B5A1:  = Me.EOF
  loc_A6B5A6: FLdI2 var_86
  loc_A6B5A9: FLdRfVar var_8C
  loc_A6B5AC: FLdPr Me
  loc_A6B5AF: MemLdPr RsFrm
  loc_A6B5B2:  = Me.RecordCount
  loc_A6B5B7: ILdRf var_8C
  loc_A6B5BA: LitI4 0
  loc_A6B5BF: GtI4
  loc_A6B5C0: AndI4
  loc_A6B5C1: BranchF loc_A6B5D4
  loc_A6B5C4: ImpAdCallFPR4 Beep()
  loc_A6B5C9: FLdPr Me
  loc_A6B5CC: MemLdPr RsFrm
  loc_A6B5CF: Me.MoveLast
  loc_A6B5D4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0F48
  'Data Table: 409E84
  loc_9B0F3C: FLdPr Me
  loc_9B0F3F: MemLdPr RsFrm
  loc_9B0F42: Me.MoveNext
  loc_9B0F47: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B966C
  'Data Table: 409E84
  loc_9B9658: LitVar_Missing var_94
  loc_9B965B: PopAdLdVar
  loc_9B965C: ILdI2 iValor
  loc_9B965F: CI4UI1
  loc_9B9660: FLdPr Me
  loc_9B9663: MemLdPr RsFrm
  loc_9B9666: Me.Move from_stack_1, from_stack_2
  loc_9B966B: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A699A0
  'Data Table: 409E84
  loc_A69928: FLdRfVar var_86
  loc_A6992B: FLdPr Me
  loc_A6992E: MemLdPr RsFrm
  loc_A69931:  = Me.BOF
  loc_A69936: FLdI2 var_86
  loc_A69939: NotI4
  loc_A6993A: FLdRfVar var_8C
  loc_A6993D: FLdPr Me
  loc_A69940: MemLdPr RsFrm
  loc_A69943:  = Me.RecordCount
  loc_A69948: ILdRf var_8C
  loc_A6994B: LitI4 0
  loc_A69950: GtI4
  loc_A69951: AndI4
  loc_A69952: BranchF loc_A69960
  loc_A69955: FLdPr Me
  loc_A69958: MemLdPr RsFrm
  loc_A6995B: Me.MovePrevious
  loc_A69960: FLdRfVar var_86
  loc_A69963: FLdPr Me
  loc_A69966: MemLdPr RsFrm
  loc_A69969:  = Me.BOF
  loc_A6996E: FLdI2 var_86
  loc_A69971: FLdRfVar var_8C
  loc_A69974: FLdPr Me
  loc_A69977: MemLdPr RsFrm
  loc_A6997A:  = Me.RecordCount
  loc_A6997F: ILdRf var_8C
  loc_A69982: LitI4 0
  loc_A69987: GtI4
  loc_A69988: AndI4
  loc_A69989: BranchF loc_A6999C
  loc_A6998C: ImpAdCallFPR4 Beep()
  loc_A69991: FLdPr Me
  loc_A69994: MemLdPr RsFrm
  loc_A69997: Me.MoveFirst
  loc_A6999C: ExitProcHresult
End Sub

Public Property Get EOF() '9D4058
  'Data Table: 409E84
  loc_9D403C: FLdRfVar var_88
  loc_9D403F: FLdPr Me
  loc_9D4042: MemLdPr RsFrm
  loc_9D4045:  = Me.EOF
  loc_9D404A: FLdI2 var_88
  loc_9D404D: FStI2 var_86
  loc_9D4050: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D5734
  'Data Table: 409E84
  loc_9D5718: FLdRfVar var_88
  loc_9D571B: FLdPr Me
  loc_9D571E: MemLdPr RsFrm
  loc_9D5721:  = Me.BOF
  loc_9D5726: FLdI2 var_88
  loc_9D5729: FStI2 var_86
  loc_9D572C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B37B8
  'Data Table: 409E84
  loc_9B37A8: ILdI4 sOrden
  loc_9B37AB: FLdPr Me
  loc_9B37AE: MemLdPr RsFrm
  loc_9B37B1: Me.Sort = from_stack_1
  loc_9B37B6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E4700
  'Data Table: 409E84
  loc_9E46E0: LitVar_Missing var_94
  loc_9E46E3: PopAdLdVar
  loc_9E46E4: LitI4 1
  loc_9E46E9: LitI4 0
  loc_9E46EE: ILdI4 sFind
  loc_9E46F1: FLdPr Me
  loc_9E46F4: MemLdPr RsFrm
  loc_9E46F7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E46FC: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D6528
  'Data Table: 409E84
  loc_9D650C: FLdRfVar var_8C
  loc_9D650F: FLdPr Me
  loc_9D6512: MemLdPr RsFrm
  loc_9D6515:  = Me.AbsolutePosition
  loc_9D651A: ILdRf var_8C
  loc_9D651D: FStR4 var_88
  loc_9D6520: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D660C
  'Data Table: 409E84
  loc_9D65F0: FLdRfVar var_8C
  loc_9D65F3: FLdPr Me
  loc_9D65F6: MemLdPr RsFrm
  loc_9D65F9:  = Me.RecordCount
  loc_9D65FE: ILdRf var_8C
  loc_9D6601: FStR4 var_88
  loc_9D6604: ExitProcCbHresult
End Sub

Public Sub AddNew(FechIngr, NumeIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr) 'AE60E8
  'Data Table: 409E84
  loc_AE5FCC: ILdRf FechIngr
  loc_AE5FCF: FStStrCopy var_88
  loc_AE5FD2: ILdRf CodiCuco
  loc_AE5FD5: FStStrCopy var_8C
  loc_AE5FD8: ILdRf CodiConc
  loc_AE5FDB: FStStrCopy var_90
  loc_AE5FDE: LitStr " INSERT INTO contpres.ingreso (FechIngr, NumeIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr, AltaUsua) "
  loc_AE5FE1: LitStr " VALUES ("
  loc_AE5FE4: ConcatStr
  loc_AE5FE5: FStStrNoPop var_C4
  loc_AE5FE8: LitI4 1
  loc_AE5FED: LitI4 1
  loc_AE5FF2: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_AE5FF7: FStVarCopyObj var_C0
  loc_AE5FFA: FLdRfVar var_C0
  loc_AE5FFD: FLdRfVar var_88
  loc_AE6000: CVarRef
  loc_AE6005: ImpAdCallI2 Format$(, )
  loc_AE600A: FStStrNoPop var_C8
  loc_AE600D: ConcatStr
  loc_AE600E: FStStrNoPop var_CC
  loc_AE6011: LitStr ","
  loc_AE6014: ConcatStr
  loc_AE6015: FStStrNoPop var_D0
  loc_AE6018: FLdI2 NumeIngr
  loc_AE601B: CStrUI1
  loc_AE601D: FStStrNoPop var_D4
  loc_AE6020: ConcatStr
  loc_AE6021: FStStrNoPop var_D8
  loc_AE6024: LitStr ","
  loc_AE6027: ConcatStr
  loc_AE6028: FStStrNoPop var_DC
  loc_AE602B: FLdI2 PeriInfo
  loc_AE602E: CStrUI1
  loc_AE6030: FStStrNoPop var_E0
  loc_AE6033: ConcatStr
  loc_AE6034: FStStrNoPop var_E4
  loc_AE6037: LitStr ",'"
  loc_AE603A: ConcatStr
  loc_AE603B: FStStrNoPop var_E8
  loc_AE603E: ILdRf var_8C
  loc_AE6041: ConcatStr
  loc_AE6042: FStStrNoPop var_EC
  loc_AE6045: LitStr "','"
  loc_AE6048: ConcatStr
  loc_AE6049: FStStrNoPop var_F0
  loc_AE604C: ILdRf var_90
  loc_AE604F: ConcatStr
  loc_AE6050: FStStrNoPop var_F4
  loc_AE6053: LitStr "',"
  loc_AE6056: ConcatStr
  loc_AE6057: FStStrNoPop var_F8
  loc_AE605A: FLdI2 CodiEnre
  loc_AE605D: CStrUI1
  loc_AE605F: FStStrNoPop var_FC
  loc_AE6062: ConcatStr
  loc_AE6063: FStStrNoPop var_100
  loc_AE6066: LitStr ","
  loc_AE6069: ConcatStr
  loc_AE606A: FStStrNoPop var_108
  loc_AE606D: LitI4 0
  loc_AE6072: LitI4 -1
  loc_AE6077: LitI4 1
  loc_AE607C: LitStr "."
  loc_AE607F: LitStr ","
  loc_AE6082: FLdFPR8 ImpoIngr
  loc_AE6085: CStrR8
  loc_AE6087: FStStrNoPop var_104
  loc_AE608A: ImpAdCallI2 Replace(, , , , , )
  loc_AE608F: FStStrNoPop var_10C
  loc_AE6092: ConcatStr
  loc_AE6093: FStStrNoPop var_110
  loc_AE6096: LitStr ",'"
  loc_AE6099: ConcatStr
  loc_AE609A: FStStrNoPop var_114
  loc_AE609D: ImpAdLdI4 MemVar_D9302C
  loc_AE60A0: ConcatStr
  loc_AE60A1: FStStrNoPop var_118
  loc_AE60A4: LitStr "')"
  loc_AE60A7: ConcatStr
  loc_AE60A8: FStStrNoPop var_11C
  loc_AE60AB: Call EjecutarRsCls(from_stack_1v)
  loc_AE60B0: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_AE60E1: FFree1Var var_C0 = ""
  loc_AE60E4: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A614B8
  'Data Table: 409E84
  loc_A61454: ILdRf sSelect
  loc_A61457: FStStrCopy var_88
  loc_A6145A: LitNothing
  loc_A6145C: CastAd
  loc_A6145F: FStAdFuncNoPop
  loc_A61462: FLdPr Me
  loc_A61465: MemStAd
  loc_A61469: FFree1Ad var_8C
  loc_A6146C: New Recordset
  loc_A61470: FStAdFuncNoPop
  loc_A61473: FLdPr Me
  loc_A61476: MemStAd
  loc_A6147A: FFree1Ad var_8C
  loc_A6147D: LitI4 -1
  loc_A61482: LitI4 3
  loc_A61487: LitI4 3
  loc_A6148C: ImpAdLdI4 MemVar_D9301C
  loc_A6148F: CVarAd
  loc_A61493: PopAdLdVar
  loc_A61494: ILdRf var_88
  loc_A61497: CVarStr var_9C
  loc_A6149A: PopAdLdVar
  loc_A6149B: FLdPr Me
  loc_A6149E: MemLdPr RsFrm
  loc_A614A1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A614A6: LitVarStr var_9C, "Primary"
  loc_A614AB: PopAdLdVar
  loc_A614AC: FLdPr Me
  loc_A614AF: LateIdCall
  loc_A614B7: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4713C
  'Data Table: 409E84
  loc_A470E8: ILdRf sSelect
  loc_A470EB: FStStrCopy var_88
  loc_A470EE: LitNothing
  loc_A470F0: CastAd
  loc_A470F3: FStAdFuncNoPop
  loc_A470F6: FLdPr Me
  loc_A470F9: MemStAd
  loc_A470FD: FFree1Ad var_8C
  loc_A47100: New Recordset
  loc_A47104: FStAdFuncNoPop
  loc_A47107: FLdPr Me
  loc_A4710A: MemStAd
  loc_A4710E: FFree1Ad var_8C
  loc_A47111: LitI4 -1
  loc_A47116: LitI4 3
  loc_A4711B: LitI4 3
  loc_A47120: ImpAdLdI4 MemVar_D9301C
  loc_A47123: CVarAd
  loc_A47127: PopAdLdVar
  loc_A47128: ILdRf var_88
  loc_A4712B: CVarStr var_9C
  loc_A4712E: PopAdLdVar
  loc_A4712F: FLdPr Me
  loc_A47132: MemLdPr global_64
  loc_A47135: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4713A: ExitProcHresult
End Sub

Public Property Get DataSource() '9F60E8
  'Data Table: 409E84
  loc_9F60C4: ZeroRetVal
  loc_9F60C6: FLdRfVar var_8C
  loc_9F60C9: FLdPr Me
  loc_9F60CC: MemLdPr RsFrm
  loc_9F60CF:  = Me.DataSource
  loc_9F60D4: ILdRf var_8C
  loc_9F60D7: CastAd
  loc_9F60DA: FStAdFunc var_88
  loc_9F60DD: FFree1Ad var_8C
  loc_9F60E0: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D7400
  'Data Table: 409E84
  loc_9D73E4: FLdRfVar var_8C
  loc_9D73E7: FLdPr Me
  loc_9D73EA: MemLdPr RsFrm
  loc_9D73ED:  = Me.EditMode
  loc_9D73F2: ILdRf var_8C
  loc_9D73F5: FStR4 var_88
  loc_9D73F8: ExitProcCbHresult
End Sub

Public Property Get FechIngr() 'A12D30
  'Data Table: 409E84
  loc_A12CF8: ZeroRetValVar
  loc_A12CFA: FLdRfVar var_AC
  loc_A12CFD: LitVarStr var_A8, "FechIngr"
  loc_A12D02: PopAdLdVar
  loc_A12D03: FLdRfVar var_98
  loc_A12D06: FLdPr Me
  loc_A12D09: MemLdPr RsFrm
  loc_A12D0C:  = Me.Fields
  loc_A12D11: FLdPr var_98
  loc_A12D14: from_stack_2 = Me.Item(from_stack_1)
  loc_A12D19: FLdZeroAd var_AC
  loc_A12D1C: CVarAd
  loc_A12D20: FStVar FechIngr
  loc_A12D24: FFree1Ad var_98
  loc_A12D27: ExitProcCbHresult
End Sub

Public Property Let FechIngr(vDato) '9E465C
  'Data Table: 409E84
  loc_9E4640: FDupVar
  loc_9E4646: FLdVar var_94
  loc_9E464A: LitVarStr var_A4, "FechIngr"
  loc_9E464F: PopAdLdVar
  loc_9E4650: FLdPr Me
  loc_9E4653: MemLdPr RsFrm
  loc_9E4656: Me.Collect = from_stack_1
  loc_9E465B: ExitProcHresult
End Sub

Public Property Get NumeIngr() 'A2C324
  'Data Table: 409E84
  loc_A2C2E0: FLdRfVar var_B0
  loc_A2C2E3: FLdRfVar var_A0
  loc_A2C2E6: LitVarStr var_9C, "NumeIngr"
  loc_A2C2EB: PopAdLdVar
  loc_A2C2EC: FLdRfVar var_8C
  loc_A2C2EF: FLdPr Me
  loc_A2C2F2: MemLdPr RsFrm
  loc_A2C2F5:  = Me.Fields
  loc_A2C2FA: FLdPr var_8C
  loc_A2C2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C302: FLdPr var_A0
  loc_A2C305:  = Me.Value
  loc_A2C30A: FLdRfVar var_B0
  loc_A2C30D: CI2Var
  loc_A2C30E: FStI2 var_86
  loc_A2C311: FFreeAd var_8C = ""
  loc_A2C318: FFree1Var var_B0 = ""
  loc_A2C31B: ExitProcCbHresult
End Sub

Public Property Let NumeIngr(vDato) '9D79A4
  'Data Table: 409E84
  loc_9D7988: FLdI2 vDato
  loc_9D798B: CVarI2 var_A4
  loc_9D798E: PopAdLdVar
  loc_9D798F: LitVarStr var_94, "NumeIngr"
  loc_9D7994: PopAdLdVar
  loc_9D7995: FLdPr Me
  loc_9D7998: MemLdPr RsFrm
  loc_9D799B: Me.Collect = from_stack_1
  loc_9D79A0: ExitProcHresult
End Sub

Public Property Get PeriInfo(arg_C) 'A2C424
  'Data Table: 409E84
  loc_A2C3E0: FLdRfVar var_B0
  loc_A2C3E3: FLdRfVar var_A0
  loc_A2C3E6: LitVarStr var_9C, "PeriInfo"
  loc_A2C3EB: PopAdLdVar
  loc_A2C3EC: FLdRfVar var_8C
  loc_A2C3EF: FLdPr Me
  loc_A2C3F2: MemLdPr RsFrm
  loc_A2C3F5:  = Me.Fields
  loc_A2C3FA: FLdPr var_8C
  loc_A2C3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C402: FLdPr var_A0
  loc_A2C405:  = Me.Value
  loc_A2C40A: FLdRfVar var_B0
  loc_A2C40D: CI2Var
  loc_A2C40E: FStI2 var_86
  loc_A2C411: FFreeAd var_8C = ""
  loc_A2C418: FFree1Var var_B0 = ""
  loc_A2C41B: ExitProcCbHresult
  loc_A2C421: ExitProc
  loc_A2C422: FLdPr arg_C08
End Sub

Public Property Let PeriInfo(vDato) '9D7E18
  'Data Table: 409E84
  loc_9D7DFC: FLdI2 vDato
  loc_9D7DFF: CVarI2 var_A4
  loc_9D7E02: PopAdLdVar
  loc_9D7E03: LitVarStr var_94, "PeriInfo"
  loc_9D7E08: PopAdLdVar
  loc_9D7E09: FLdPr Me
  loc_9D7E0C: MemLdPr RsFrm
  loc_9D7E0F: Me.Collect = from_stack_1
  loc_9D7E14: ExitProcHresult
  loc_9D7E15: FnLBound
  loc_9D7E16: LitI2_Byte
End Sub

Public Property Get CodiCuco() 'A392D4
  'Data Table: 409E84
  loc_A39290: ZeroRetVal
  loc_A39292: FLdRfVar var_B0
  loc_A39295: FLdRfVar var_A0
  loc_A39298: LitVarStr var_9C, "CodiCuco"
  loc_A3929D: PopAdLdVar
  loc_A3929E: FLdRfVar var_8C
  loc_A392A1: FLdPr Me
  loc_A392A4: MemLdPr RsFrm
  loc_A392A7:  = Me.Fields
  loc_A392AC: FLdPr var_8C
  loc_A392AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A392B4: FLdPr var_A0
  loc_A392B7:  = Me.Value
  loc_A392BC: FLdRfVar var_B0
  loc_A392BF: CStrVarTmp
  loc_A392C0: FStStr var_88
  loc_A392C3: FFreeAd var_8C = ""
  loc_A392CA: FFree1Var var_B0 = ""
  loc_A392CD: ExitProcCbHresult
End Sub

Public Property Let CodiCuco(vDato) '9E83D8
  'Data Table: 409E84
  loc_9E83B8: ILdRf vDato
  loc_9E83BB: FStStrCopy var_88
  loc_9E83BE: ILdRf var_88
  loc_9E83C1: CVarStr var_A8
  loc_9E83C4: PopAdLdVar
  loc_9E83C5: LitVarStr var_98, "CodiCuco"
  loc_9E83CA: PopAdLdVar
  loc_9E83CB: FLdPr Me
  loc_9E83CE: MemLdPr RsFrm
  loc_9E83D1: Me.Collect = from_stack_1
  loc_9E83D6: ExitProcHresult
End Sub

Public Property Get ImpoIngr() 'A2C6A4
  'Data Table: 409E84
  loc_A2C660: FLdRfVar var_B4
  loc_A2C663: FLdRfVar var_A4
  loc_A2C666: LitVarStr var_A0, "ImpoIngr"
  loc_A2C66B: PopAdLdVar
  loc_A2C66C: FLdRfVar var_90
  loc_A2C66F: FLdPr Me
  loc_A2C672: MemLdPr RsFrm
  loc_A2C675:  = Me.Fields
  loc_A2C67A: FLdPr var_90
  loc_A2C67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C682: FLdPr var_A4
  loc_A2C685:  = Me.Value
  loc_A2C68A: FLdRfVar var_B4
  loc_A2C68D: CR4Var
  loc_A2C68E: FStFPR8 var_8C
  loc_A2C691: FFreeAd var_90 = ""
  loc_A2C698: FFree1Var var_B4 = ""
  loc_A2C69B: ExitProcCbHresult
  loc_A2C6A1: FLdPr var_300
End Sub

Public Property Let ImpoIngr(vDato) '9D94A8
  'Data Table: 409E84
  loc_9D948C: FLdFPR8 vDato
  loc_9D948F: CVarR8
  loc_9D9493: PopAdLdVar
  loc_9D9494: LitVarStr var_94, "ImpoIngr"
  loc_9D9499: PopAdLdVar
  loc_9D949A: FLdPr Me
  loc_9D949D: MemLdPr RsFrm
  loc_9D94A0: Me.Collect = from_stack_1
  loc_9D94A5: ExitProcHresult
  loc_9D94A6: ConcatStr
End Sub

Public Property Get DetaCuco() 'A141D0
  'Data Table: 409E84
  loc_A14198: ZeroRetValVar
  loc_A1419A: FLdRfVar var_AC
  loc_A1419D: LitVarStr var_A8, "DetaCuco"
  loc_A141A2: PopAdLdVar
  loc_A141A3: FLdRfVar var_98
  loc_A141A6: FLdPr Me
  loc_A141A9: MemLdPr RsFrm
  loc_A141AC:  = Me.Fields
  loc_A141B1: FLdPr var_98
  loc_A141B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A141B9: FLdZeroAd var_AC
  loc_A141BC: CVarAd
  loc_A141C0: FStVar DetaCuco
  loc_A141C4: FFree1Ad var_98
  loc_A141C7: ExitProcCbHresult
End Sub

Public Property Get DetaReca() 'A12E98
  'Data Table: 409E84
  loc_A12E60: ZeroRetValVar
  loc_A12E62: FLdRfVar var_AC
  loc_A12E65: LitVarStr var_A8, "DetaReca"
  loc_A12E6A: PopAdLdVar
  loc_A12E6B: FLdRfVar var_98
  loc_A12E6E: FLdPr Me
  loc_A12E71: MemLdPr RsFrm
  loc_A12E74:  = Me.Fields
  loc_A12E79: FLdPr var_98
  loc_A12E7C: from_stack_2 = Me.Item(from_stack_1)
  loc_A12E81: FLdZeroAd var_AC
  loc_A12E84: CVarAd
  loc_A12E88: FStVar DetaReca
  loc_A12E8C: FFree1Ad var_98
  loc_A12E8F: ExitProcCbHresult
  loc_A12E95: FLdPr var_7600
End Sub

Public Property Get ImpuCuco() 'A143B0
  'Data Table: 409E84
  loc_A14378: ZeroRetValVar
  loc_A1437A: FLdRfVar var_AC
  loc_A1437D: LitVarStr var_A8, "ImpuCuco"
  loc_A14382: PopAdLdVar
  loc_A14383: FLdRfVar var_98
  loc_A14386: FLdPr Me
  loc_A14389: MemLdPr RsFrm
  loc_A1438C:  = Me.Fields
  loc_A14391: FLdPr var_98
  loc_A14394: from_stack_2 = Me.Item(from_stack_1)
  loc_A14399: FLdZeroAd var_AC
  loc_A1439C: CVarAd
  loc_A143A0: FStVar ImpuCuco
  loc_A143A4: FFree1Ad var_98
  loc_A143A7: ExitProcCbHresult
End Sub

Public Function UltimoRegistro(FechIngr) 'AA82A0
  'Data Table: 409E84
  loc_AA81E4: ILdRf FechIngr
  loc_AA81E7: FStStrCopy var_8C
  loc_AA81EA: LitStr "SELECT FechIngr, NumeIngr FROM contpres.ingreso WHERE FechIngr = '"
  loc_AA81ED: LitI4 1
  loc_AA81F2: LitI4 1
  loc_AA81F7: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AA81FC: FStVarCopyObj var_BC
  loc_AA81FF: FLdRfVar var_BC
  loc_AA8202: FLdRfVar var_8C
  loc_AA8205: CVarRef
  loc_AA820A: ImpAdCallI2 Format$(, )
  loc_AA820F: FStStrNoPop var_C0
  loc_AA8212: ConcatStr
  loc_AA8213: FStStrNoPop var_C4
  loc_AA8216: LitStr "' ORDER BY FechIngr, NumeIngr"
  loc_AA8219: ConcatStr
  loc_AA821A: FStStrNoPop var_C8
  loc_AA821D: Call EjecutarRsCls(from_stack_1v)
  loc_AA8222: FFreeStr var_C0 = "": var_C4 = ""
  loc_AA822B: FFree1Var var_BC = ""
  loc_AA822E: FLdRfVar var_CC
  loc_AA8231: FLdPr Me
  loc_AA8234: MemLdPr global_64
  loc_AA8237:  = Me.RecordCount
  loc_AA823C: ILdRf var_CC
  loc_AA823F: LitI4 0
  loc_AA8244: GtI4
  loc_AA8245: BranchF loc_AA8295
  loc_AA8248: FLdPr Me
  loc_AA824B: MemLdPr global_64
  loc_AA824E: Me.MoveLast
  loc_AA8253: FLdRfVar var_BC
  loc_AA8256: FLdRfVar var_D4
  loc_AA8259: LitVarStr var_9C, "NumeIngr"
  loc_AA825E: PopAdLdVar
  loc_AA825F: FLdRfVar var_D0
  loc_AA8262: FLdPr Me
  loc_AA8265: MemLdPr global_64
  loc_AA8268:  = Me.Fields
  loc_AA826D: FLdPr var_D0
  loc_AA8270: from_stack_2 = Me.Item(from_stack_1)
  loc_AA8275: FLdPr var_D4
  loc_AA8278:  = Me.Value
  loc_AA827D: FLdRfVar var_BC
  loc_AA8280: FnCIntVar
  loc_AA8282: LitI2_Byte 1
  loc_AA8284: AddI2
  loc_AA8285: FStI2 var_86
  loc_AA8288: FFreeAd var_D0 = ""
  loc_AA828F: FFree1Var var_BC = ""
  loc_AA8292: Branch loc_AA829A
  loc_AA8295: LitI2_Byte 1
  loc_AA8297: FStI2 var_86
  loc_AA829A: ExitProcCbHresult
End Function

Private Function Proc_84_34_9E7FE4(arg_10) '9E7FE4
  'Data Table: 409E84
  loc_9E7FC8: ILdRf arg_10
  loc_9E7FCB: FStAd var_88 
  loc_9E7FCF: ILdRf arg_18
  loc_9E7FD2: FStAd var_8C 
  loc_9E7FD6: FLdPr Me
  loc_9E7FD9: RaiseEvent
  loc_9E7FE1: ExitProcHresult
End Function

Private Function Proc_84_35_9F9A68() '9F9A68
  'Data Table: 409E84
  loc_9F9A44: LitStr "Primary"
  loc_9F9A47: FLdPr Me
  loc_9F9A4A: LateIdLdVar var_94 DispID_4 0
  loc_9F9A51: CastAdVar Me
  loc_9F9A55: FStAdFunc var_98
  loc_9F9A58: FLdPr var_98
  loc_9F9A60: FFree1Ad var_98
  loc_9F9A63: FFree1Var var_94 = ""
  loc_9F9A66: ExitProcHresult
End Function

Private Function Proc_84_36_9E49CC(arg_C) '9E49CC
  'Data Table: 409E84
  loc_9E49B0: ILdI4 arg_C
  loc_9E49B3: FStStrCopy var_88
  loc_9E49B6: ILdRf var_88
  loc_9E49B9: LitStr "Primary"
  loc_9E49BC: EqStr
  loc_9E49BE: BranchF loc_9E49CB
  loc_9E49C1: FLdPr Me
  loc_9E49C4: MemLdStr RsFrm
  loc_9E49C7: IStAd
  loc_9E49CB: ExitProcHresult
End Function
