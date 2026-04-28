VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsordencompra"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '431BB8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '431BC7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '431BD6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9703E4
  'Data Table: 4314BC
  loc_9703BC: FLdRfVar var_88
  loc_9703BF: FLdPr Me
  loc_9703C2: MemLdPr RsFrm
  loc_9703C5:  = Me.RecordCount
  loc_9703CA: ILdRf var_88
  loc_9703CD: LitI4 0
  loc_9703D2: GtI4
  loc_9703D3: BranchF loc_9703E1
  loc_9703D6: FLdPr Me
  loc_9703D9: MemLdPr RsFrm
  loc_9703DC: Me.MoveFirst
  loc_9703E1: ExitProcHresult
  loc_9703E2: LdPrVar
End Sub

Public Sub MoveLast() '96E704
  'Data Table: 4314BC
  loc_96E6DC: FLdRfVar var_88
  loc_96E6DF: FLdPr Me
  loc_96E6E2: MemLdPr RsFrm
  loc_96E6E5:  = Me.RecordCount
  loc_96E6EA: ILdRf var_88
  loc_96E6ED: LitI4 0
  loc_96E6F2: GtI4
  loc_96E6F3: BranchF loc_96E701
  loc_96E6F6: FLdPr Me
  loc_96E6F9: MemLdPr RsFrm
  loc_96E6FC: Me.MoveLast
  loc_96E701: ExitProcHresult
  loc_96E702: MemLdPr global_17663
End Sub

Public Sub MoveNext() '99D940
  'Data Table: 4314BC
  loc_99D8C8: FLdRfVar var_86
  loc_99D8CB: FLdPr Me
  loc_99D8CE: MemLdPr RsFrm
  loc_99D8D1:  = Me.EOF
  loc_99D8D6: FLdI2 var_86
  loc_99D8D9: NotI4
  loc_99D8DA: FLdRfVar var_8C
  loc_99D8DD: FLdPr Me
  loc_99D8E0: MemLdPr RsFrm
  loc_99D8E3:  = Me.RecordCount
  loc_99D8E8: ILdRf var_8C
  loc_99D8EB: LitI4 0
  loc_99D8F0: GtI4
  loc_99D8F1: AndI4
  loc_99D8F2: BranchF loc_99D900
  loc_99D8F5: FLdPr Me
  loc_99D8F8: MemLdPr RsFrm
  loc_99D8FB: Me.MoveNext
  loc_99D900: FLdRfVar var_86
  loc_99D903: FLdPr Me
  loc_99D906: MemLdPr RsFrm
  loc_99D909:  = Me.EOF
  loc_99D90E: FLdI2 var_86
  loc_99D911: FLdRfVar var_8C
  loc_99D914: FLdPr Me
  loc_99D917: MemLdPr RsFrm
  loc_99D91A:  = Me.RecordCount
  loc_99D91F: ILdRf var_8C
  loc_99D922: LitI4 0
  loc_99D927: GtI4
  loc_99D928: AndI4
  loc_99D929: BranchF loc_99D93C
  loc_99D92C: ImpAdCallFPR4 Beep()
  loc_99D931: FLdPr Me
  loc_99D934: MemLdPr RsFrm
  loc_99D937: Me.MoveLast
  loc_99D93C: ExitProcHresult
  loc_99D93D: ExitProcR4
End Sub

Public Sub MoveSiguiente() '9414A4
  'Data Table: 4314BC
  loc_941498: FLdPr Me
  loc_94149B: MemLdPr RsFrm
  loc_94149E: Me.MoveNext
  loc_9414A3: ExitProcHresult
End Sub

Public Sub Move(iValor) '948FC8
  'Data Table: 4314BC
  loc_948FB4: LitVar_Missing var_94
  loc_948FB7: PopAdLdVar
  loc_948FB8: ILdI2 iValor
  loc_948FBB: CI4UI1
  loc_948FBC: FLdPr Me
  loc_948FBF: MemLdPr RsFrm
  loc_948FC2: Me.Move from_stack_1, from_stack_2
  loc_948FC7: ExitProcHresult
End Sub

Public Sub MovePrevious() '99DB38
  'Data Table: 4314BC
  loc_99DAC0: FLdRfVar var_86
  loc_99DAC3: FLdPr Me
  loc_99DAC6: MemLdPr RsFrm
  loc_99DAC9:  = Me.BOF
  loc_99DACE: FLdI2 var_86
  loc_99DAD1: NotI4
  loc_99DAD2: FLdRfVar var_8C
  loc_99DAD5: FLdPr Me
  loc_99DAD8: MemLdPr RsFrm
  loc_99DADB:  = Me.RecordCount
  loc_99DAE0: ILdRf var_8C
  loc_99DAE3: LitI4 0
  loc_99DAE8: GtI4
  loc_99DAE9: AndI4
  loc_99DAEA: BranchF loc_99DAF8
  loc_99DAED: FLdPr Me
  loc_99DAF0: MemLdPr RsFrm
  loc_99DAF3: Me.MovePrevious
  loc_99DAF8: FLdRfVar var_86
  loc_99DAFB: FLdPr Me
  loc_99DAFE: MemLdPr RsFrm
  loc_99DB01:  = Me.BOF
  loc_99DB06: FLdI2 var_86
  loc_99DB09: FLdRfVar var_8C
  loc_99DB0C: FLdPr Me
  loc_99DB0F: MemLdPr RsFrm
  loc_99DB12:  = Me.RecordCount
  loc_99DB17: ILdRf var_8C
  loc_99DB1A: LitI4 0
  loc_99DB1F: GtI4
  loc_99DB20: AndI4
  loc_99DB21: BranchF loc_99DB34
  loc_99DB24: ImpAdCallFPR4 Beep()
  loc_99DB29: FLdPr Me
  loc_99DB2C: MemLdPr RsFrm
  loc_99DB2F: Me.MoveFirst
  loc_99DB34: ExitProcHresult
End Sub

Public Property Get EOF() '95B300
  'Data Table: 4314BC
  loc_95B2E4: FLdRfVar var_88
  loc_95B2E7: FLdPr Me
  loc_95B2EA: MemLdPr RsFrm
  loc_95B2ED:  = Me.EOF
  loc_95B2F2: FLdI2 var_88
  loc_95B2F5: FStI2 var_86
  loc_95B2F8: ExitProcCbHresult
End Sub

Public Property Get BOF() '95B268
  'Data Table: 4314BC
  loc_95B24C: FLdRfVar var_88
  loc_95B24F: FLdPr Me
  loc_95B252: MemLdPr RsFrm
  loc_95B255:  = Me.BOF
  loc_95B25A: FLdI2 var_88
  loc_95B25D: FStI2 var_86
  loc_95B260: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '946284
  'Data Table: 4314BC
  loc_946274: ILdI4 sOrden
  loc_946277: FLdPr Me
  loc_94627A: MemLdPr RsFrm
  loc_94627D: Me.Sort = from_stack_1
  loc_946282: ExitProcHresult
  loc_946283: ExitProc
End Sub

Public Sub Find(sFind) '968E80
  'Data Table: 4314BC
  loc_968E60: LitVar_Missing var_94
  loc_968E63: PopAdLdVar
  loc_968E64: LitI4 1
  loc_968E69: LitI4 0
  loc_968E6E: ILdI4 sFind
  loc_968E71: FLdPr Me
  loc_968E74: MemLdPr RsFrm
  loc_968E77: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968E7C: ExitProcHresult
  loc_968E7D: Ary1LdPr
End Sub

Public Sub Filter(sCriterio) '948418
  'Data Table: 4314BC
  loc_948404: ILdI4 sCriterio
  loc_948407: CVarStr var_94
  loc_94840A: PopAdLdVar
  loc_94840B: FLdPr Me
  loc_94840E: MemLdPr RsFrm
  loc_948411: Me.Filter = from_stack_1
  loc_948416: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95B0A0
  'Data Table: 4314BC
  loc_95B084: FLdRfVar var_8C
  loc_95B087: FLdPr Me
  loc_95B08A: MemLdPr RsFrm
  loc_95B08D:  = Me.AbsolutePosition
  loc_95B092: ILdRf var_8C
  loc_95B095: FStR4 var_88
  loc_95B098: ExitProcCbHresult
  loc_95B09E: ImpAdLdFPR4 MemVar_C3004012
End Sub

Public Property Get RecordCount() '95B008
  'Data Table: 4314BC
  loc_95AFEC: FLdRfVar var_8C
  loc_95AFEF: FLdPr Me
  loc_95AFF2: MemLdPr RsFrm
  loc_95AFF5:  = Me.RecordCount
  loc_95AFFA: ILdRf var_8C
  loc_95AFFD: FStR4 var_88
  loc_95B000: ExitProcCbHresult
  loc_95B006: Ary1StI2
End Sub

Public Property Get Recordset() '952A10
  'Data Table: 4314BC
  loc_9529FC: ZeroRetVal
  loc_9529FE: FLdPr Me
  loc_952A01: MemLdStr RsFrm
  loc_952A04: FStAd var_88 
  loc_952A08: ExitProcCbHresult
  loc_952A0E: CStrUI1
End Sub

Public Property Get Bookmark() '96E804
  'Data Table: 4314BC
  loc_96E7E4: ZeroRetValVar
  loc_96E7E6: FLdRfVar var_A4
  loc_96E7E9: FLdPr Me
  loc_96E7EC: MemLdPr RsFrm
  loc_96E7EF:  = Me.Bookmark
  loc_96E7F4: FLdRfVar var_A4
  loc_96E7F7: FStVar Bookmark
  loc_96E7FB: ExitProcCbHresult
End Sub

Public Property Let Bookmark(Marca) '95AED4
  'Data Table: 4314BC
  loc_95AEBC: FDupVar
  loc_95AEC2: FLdVar var_94
  loc_95AEC6: FLdPr Me
  loc_95AEC9: MemLdPr RsFrm
  loc_95AECC: Me.Bookmark = from_stack_1
  loc_95AED1: ExitProcHresult
End Sub

Public Function AddNew(PeriInfo, DetaOrco, CodiNope, IdCoti, CodiTico, CucuPers, CodiOrga, ExpeImpu, FechOrco, ItemCotizacionFlex, AlivaOrco, SelloOrco) 'B6D930
  'Data Table: 4314BC
  loc_B6CE50: ILdRf DetaOrco
  loc_B6CE53: FStStrCopy var_8C
  loc_B6CE56: ILdRf CucuPers
  loc_B6CE59: FStStrCopy var_90
  loc_B6CE5C: ILdRf CodiOrga
  loc_B6CE5F: FStStrCopy AddNew
  loc_B6CE62: ILdRf ExpeImpu
  loc_B6CE65: FStStrCopy var_98
  loc_B6CE68: ILdRf FechOrco
  loc_B6CE6B: FStStrCopy var_9C
  loc_B6CE6E: ILdRf AlivaOrco
  loc_B6CE71: FStStrCopy var_A0
  loc_B6CE74: ILdRf SelloOrco
  loc_B6CE77: FStStrCopy var_A4
  loc_B6CE7A: ILdRf var_98
  loc_B6CE7D: ImpAdCallI2 Trim$()
  loc_B6CE82: FStStr var_98
  loc_B6CE85: ILdRf var_98
  loc_B6CE88: LitStr vbNullString
  loc_B6CE8B: EqStr
  loc_B6CE8D: BranchF loc_B6CEA3
  loc_B6CE90: LitI4 0
  loc_B6CE95: LitStr "Falta el número de Expediente. Verifique..."
  loc_B6CE98: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6CE9D: ExitProcCbHresult
  loc_B6CEA3: OnErrorGoto loc_B6D918
  loc_B6CEA6: LitStr "SELECT LimiTico, ColiTico FROM tipocompra WHERE CodiTico = "
  loc_B6CEA9: FLdUI1
  loc_B6CEAD: CStrI2
  loc_B6CEAF: FStStrNoPop var_C4
  loc_B6CEB2: ConcatStr
  loc_B6CEB3: FStStrNoPop var_C8
  loc_B6CEB6: Call EjecutarRsCls(from_stack_1v)
  loc_B6CEBB: FFreeStr var_C4 = ""
  loc_B6CEC2: FLdRfVar var_F0
  loc_B6CEC5: FLdRfVar var_E0
  loc_B6CEC8: LitVarStr var_DC, "ColiTico"
  loc_B6CECD: PopAdLdVar
  loc_B6CECE: FLdRfVar var_CC
  loc_B6CED1: FLdPr Me
  loc_B6CED4: MemLdPr global_56
  loc_B6CED7:  = Me.Fields
  loc_B6CEDC: FLdPr var_CC
  loc_B6CEDF: from_stack_2 = Me.Item(from_stack_1)
  loc_B6CEE4: FLdPr var_E0
  loc_B6CEE7:  = Me.Value
  loc_B6CEEC: FLdRfVar var_F0
  loc_B6CEEF: LitVarI2 var_100, 1
  loc_B6CEF4: HardType
  loc_B6CEF5: EqVarBool
  loc_B6CEF7: FFreeAd var_CC = ""
  loc_B6CEFE: FFree1Var var_F0 = ""
  loc_B6CF01: BranchF loc_B6D1EE
  loc_B6CF04: FLdRfVar var_F0
  loc_B6CF07: FLdRfVar var_E0
  loc_B6CF0A: LitVarStr var_DC, "LimiTico"
  loc_B6CF0F: PopAdLdVar
  loc_B6CF10: FLdRfVar var_CC
  loc_B6CF13: FLdPr Me
  loc_B6CF16: MemLdPr global_56
  loc_B6CF19:  = Me.Fields
  loc_B6CF1E: FLdPr var_CC
  loc_B6CF21: from_stack_2 = Me.Item(from_stack_1)
  loc_B6CF26: FLdPr var_E0
  loc_B6CF29:  = Me.Value
  loc_B6CF2E: FLdRfVar var_F0
  loc_B6CF31: FnCDblVar
  loc_B6CF33: FStFPR8 var_AC
  loc_B6CF36: FFreeAd var_CC = ""
  loc_B6CF3D: FFree1Var var_F0 = ""
  loc_B6CF40: LitStr "SELECT IFNULL(Sum(CantItco*ImunItco),0) TotalAcum"
  loc_B6CF43: LitStr " FROM ordencompra oc"
  loc_B6CF46: ConcatStr
  loc_B6CF47: FStStrNoPop var_C4
  loc_B6CF4A: LitStr " INNER JOIN itemcompra ic ON ic.PeriInfo = oc.PeriInfo AND ic.CodiOrco = oc.CodiOrco"
  loc_B6CF4D: ConcatStr
  loc_B6CF4E: FStStrNoPop var_C8
  loc_B6CF51: LitStr " WHERE oc.PeriInfo = "
  loc_B6CF54: ConcatStr
  loc_B6CF55: FStStrNoPop var_114
  loc_B6CF58: FLdI2 PeriInfo
  loc_B6CF5B: CStrUI1
  loc_B6CF5D: FStStrNoPop var_118
  loc_B6CF60: ConcatStr
  loc_B6CF61: FStStrNoPop var_11C
  loc_B6CF64: LitStr " AND Month(FechOrco) = "
  loc_B6CF67: ConcatStr
  loc_B6CF68: CVarStr var_110
  loc_B6CF6B: FLdRfVar var_9C
  loc_B6CF6E: CVarRef
  loc_B6CF73: FLdRfVar var_F0
  loc_B6CF76: ImpAdCallFPR4  = Month()
  loc_B6CF7B: FLdRfVar var_F0
  loc_B6CF7E: ConcatVar var_12C
  loc_B6CF82: LitVarStr var_100, vbNullString
  loc_B6CF87: ConcatVar var_13C
  loc_B6CF8B: LitVarStr var_14C, " AND FeanOrco IS NULL"
  loc_B6CF90: ConcatVar var_15C
  loc_B6CF94: LitVarStr var_16C, " AND CodiTico = "
  loc_B6CF99: ConcatVar var_17C
  loc_B6CF9D: FLdUI1
  loc_B6CFA1: CVarUI1
  loc_B6CFA5: ConcatVar var_19C
  loc_B6CFA9: LitVarStr var_1AC, " AND CucuPers = '"
  loc_B6CFAE: ConcatVar var_1BC
  loc_B6CFB2: ILdRf var_90
  loc_B6CFB5: CVarStr var_1CC
  loc_B6CFB8: ConcatVar var_1DC
  loc_B6CFBC: LitVarStr var_1EC, "'"
  loc_B6CFC1: ConcatVar var_1FC
  loc_B6CFC5: LitVarStr var_20C, " AND Left(oc.CodiOrga,1) = '"
  loc_B6CFCA: ConcatVar var_21C
  loc_B6CFCE: LitI4 1
  loc_B6CFD3: ILdRf AddNew
  loc_B6CFD6: ImpAdCallI2 Left$(, )
  loc_B6CFDB: CVarStr var_22C
  loc_B6CFDE: ConcatVar var_23C
  loc_B6CFE2: LitVarStr var_24C, "'"
  loc_B6CFE7: ConcatVar var_25C
  loc_B6CFEB: CStrVarVal var_260
  loc_B6CFEF: Call EjecutarRsCls(from_stack_1v)
  loc_B6CFF4: FFreeStr var_C4 = "": var_C8 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_B6D003: FFreeVar var_110 = "": var_F0 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = ""
  loc_B6D022: FLdRfVar var_F0
  loc_B6D025: FLdRfVar var_E0
  loc_B6D028: LitVarStr var_DC, "TotalAcum"
  loc_B6D02D: PopAdLdVar
  loc_B6D02E: FLdRfVar var_CC
  loc_B6D031: FLdPr Me
  loc_B6D034: MemLdPr global_56
  loc_B6D037:  = Me.Fields
  loc_B6D03C: FLdPr var_CC
  loc_B6D03F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6D044: FLdPr var_E0
  loc_B6D047:  = Me.Value
  loc_B6D04C: FLdRfVar var_F0
  loc_B6D04F: FnCDblVar
  loc_B6D051: FStFPR8 var_B4
  loc_B6D054: FFreeAd var_CC = ""
  loc_B6D05B: FFree1Var var_F0 = ""
  loc_B6D05E: LitI2_Byte 0
  loc_B6D060: CR8I2
  loc_B6D061: FStFPR8 var_BC
  loc_B6D064: LitI2_Byte 1
  loc_B6D066: FLdRfVar var_BE
  loc_B6D069: ILdPr
  loc_B6D06C: LateIdLdVar var_F0 DispID_4 0
  loc_B6D073: CI4Var
  loc_B6D075: LitI4 1
  loc_B6D07A: SubI4
  loc_B6D07B: CI2I4
  loc_B6D07C: FFree1Var var_F0 = ""
  loc_B6D07F: ForI2 var_264
  loc_B6D085: FLdI2 var_BE
  loc_B6D088: CI4UI1
  loc_B6D089: CVarI4
  loc_B6D08D: PopAdLdVar
  loc_B6D08E: LitVarI4
  loc_B6D096: PopAdLdVar
  loc_B6D097: ILdPr
  loc_B6D09A: LateIdCallLdVar
  loc_B6D0A4: PopAd
  loc_B6D0A6: FLdFPR8 var_BC
  loc_B6D0A9: FLdRfVar var_F0
  loc_B6D0AC: CStrVarTmp
  loc_B6D0AD: FStStrNoPop var_C4
  loc_B6D0B0: CR8Str
  loc_B6D0B2: AddR8
  loc_B6D0B3: FStFPR8 var_BC
  loc_B6D0B6: FFree1Str var_C4
  loc_B6D0B9: FFree1Var var_F0 = ""
  loc_B6D0BC: FLdRfVar var_BE
  loc_B6D0BF: NextI2 var_264, loc_B6D085
  loc_B6D0C4: FLdFPR8 var_B4
  loc_B6D0C7: FLdFPR8 var_BC
  loc_B6D0CA: AddR8
  loc_B6D0CB: CR8R8
  loc_B6D0CC: FLdFPR8 var_AC
  loc_B6D0CF: GtR4
  loc_B6D0D0: BranchF loc_B6D1EE
  loc_B6D0D3: LitStr "Municipalidad de Guaymallén"
  loc_B6D0D6: LitStr "Municipalidad de Maipú"
  loc_B6D0D9: EqStr
  loc_B6D0DB: ImpAdLdI4 MemVar_C3D03C
  loc_B6D0DE: LitStr "ptieppo"
  loc_B6D0E1: EqStr
  loc_B6D0E3: ImpAdLdI4 MemVar_C3D03C
  loc_B6D0E6: LitStr "JorgeM"
  loc_B6D0E9: EqStr
  loc_B6D0EB: OrI4
  loc_B6D0EC: ImpAdLdI4 MemVar_C3D03C
  loc_B6D0EF: LitStr "Nati"
  loc_B6D0F2: EqStr
  loc_B6D0F4: OrI4
  loc_B6D0F5: ImpAdLdI4 MemVar_C3D03C
  loc_B6D0F8: LitStr "Fabi"
  loc_B6D0FB: EqStr
  loc_B6D0FD: OrI4
  loc_B6D0FE: AndI4
  loc_B6D0FF: BranchF loc_B6D112
  loc_B6D102: LitI4 0
  loc_B6D107: LitStr "Advertencia: La Orden de Compra supera el monto permitido de Compra Directa para el Proveedor en el mes. Verifique..."
  loc_B6D10A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6D10F: Branch loc_B6D1EE
  loc_B6D112: LitI4 1
  loc_B6D117: LitI4 1
  loc_B6D11C: LitVarStr var_100, "currency"
  loc_B6D121: FStVarCopyObj var_F0
  loc_B6D124: FLdRfVar var_F0
  loc_B6D127: FLdRfVar var_BC
  loc_B6D12A: CVarRef
  loc_B6D12F: ImpAdCallI2 Format$(, )
  loc_B6D134: FStStr var_268
  loc_B6D137: LitI4 1
  loc_B6D13C: LitI4 1
  loc_B6D141: LitVarStr var_16C, "currency"
  loc_B6D146: FStVarCopyObj var_110
  loc_B6D149: FLdRfVar var_110
  loc_B6D14C: FLdRfVar var_AC
  loc_B6D14F: CVarRef
  loc_B6D154: ImpAdCallI2 Format$(, )
  loc_B6D159: FStStr var_26C
  loc_B6D15C: LitI4 1
  loc_B6D161: LitI4 1
  loc_B6D166: LitVarStr var_1AC, "currency"
  loc_B6D16B: FStVarCopyObj var_12C
  loc_B6D16E: FLdRfVar var_12C
  loc_B6D171: FLdRfVar var_B4
  loc_B6D174: CVarRef
  loc_B6D179: FLdRfVar var_13C
  loc_B6D17C: ImpAdCallFPR4  = Format(, )
  loc_B6D181: LitI4 0
  loc_B6D186: LitStr "La Orden de Compra ("
  loc_B6D189: FLdZeroAd var_268
  loc_B6D18C: FStStrNoPop var_C4
  loc_B6D18F: ConcatStr
  loc_B6D190: FStStrNoPop var_C8
  loc_B6D193: LitStr ") supera el monto Mensual permitido ("
  loc_B6D196: ConcatStr
  loc_B6D197: FStStrNoPop var_114
  loc_B6D19A: FLdZeroAd var_26C
  loc_B6D19D: FStStrNoPop var_118
  loc_B6D1A0: ConcatStr
  loc_B6D1A1: FStStrNoPop var_11C
  loc_B6D1A4: LitStr ") para éste Proveedor ("
  loc_B6D1A7: ConcatStr
  loc_B6D1A8: CVarStr var_15C
  loc_B6D1AB: FLdRfVar var_13C
  loc_B6D1AE: ConcatVar var_17C
  loc_B6D1B2: LitVarStr var_1CC, "). Verifique..."
  loc_B6D1B7: ConcatVar var_19C
  loc_B6D1BB: CStrVarVal var_260
  loc_B6D1BF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6D1C4: FFreeStr var_C4 = "": var_C8 = "": var_114 = "": var_118 = "": var_11C = "": var_260 = "": var_268 = ""
  loc_B6D1D7: FFreeVar var_F0 = "": var_110 = "": var_12C = "": var_15C = "": var_13C = "": var_17C = ""
  loc_B6D1E8: ExitProcCbHresult
  loc_B6D1EE: FLdRfVar var_270
  loc_B6D1F1: FLdI2 PeriInfo
  loc_B6D1F4: Call Proc_21_47_9ACE98()
  loc_B6D1F9: ILdRf var_270
  loc_B6D1FC: FStR4 var_88
  loc_B6D1FF: LitStr "START TRANSACTION;"
  loc_B6D202: Call EjecutarRsCls(from_stack_1v)
  loc_B6D207: LitStr "INSERT INTO ordencompra (PeriInfo,CodiOrco,CodiOrga,DetaOrco,CodiNope,IdCoti,CodiTico,CucuPers,ExpeImpu,FechOrco,FenoOrco,AlivaOrco,SelloOrco,AltaUsua)"
  loc_B6D20A: LitStr " VALUES ("
  loc_B6D20D: ConcatStr
  loc_B6D20E: FStStrNoPop var_C4
  loc_B6D211: FLdI2 PeriInfo
  loc_B6D214: CStrUI1
  loc_B6D216: FStStrNoPop var_C8
  loc_B6D219: ConcatStr
  loc_B6D21A: FStStrNoPop var_114
  loc_B6D21D: LitStr ","
  loc_B6D220: ConcatStr
  loc_B6D221: FStStrNoPop var_118
  loc_B6D224: ILdRf var_88
  loc_B6D227: CStrI4
  loc_B6D229: FStStrNoPop var_11C
  loc_B6D22C: ConcatStr
  loc_B6D22D: FStStrNoPop var_260
  loc_B6D230: LitStr ",'"
  loc_B6D233: ConcatStr
  loc_B6D234: FStStrNoPop var_268
  loc_B6D237: ILdRf AddNew
  loc_B6D23A: ConcatStr
  loc_B6D23B: FStStrNoPop var_26C
  loc_B6D23E: LitStr "','"
  loc_B6D241: ConcatStr
  loc_B6D242: FStStrNoPop var_274
  loc_B6D245: ILdRf var_8C
  loc_B6D248: ConcatStr
  loc_B6D249: FStStrNoPop var_278
  loc_B6D24C: LitStr "',"
  loc_B6D24F: ConcatStr
  loc_B6D250: FStStrNoPop var_27C
  loc_B6D253: ILdRf CodiNope
  loc_B6D256: CStrI4
  loc_B6D258: FStStrNoPop var_280
  loc_B6D25B: ConcatStr
  loc_B6D25C: FStStrNoPop var_284
  loc_B6D25F: LitStr ","
  loc_B6D262: ConcatStr
  loc_B6D263: FStStrNoPop var_288
  loc_B6D266: ILdRf IdCoti
  loc_B6D269: CStrI4
  loc_B6D26B: FStStrNoPop var_28C
  loc_B6D26E: ConcatStr
  loc_B6D26F: FStStrNoPop var_290
  loc_B6D272: LitStr ","
  loc_B6D275: ConcatStr
  loc_B6D276: FStStrNoPop var_294
  loc_B6D279: FLdUI1
  loc_B6D27D: CStrI2
  loc_B6D27F: FStStrNoPop var_298
  loc_B6D282: ConcatStr
  loc_B6D283: FStStrNoPop var_29C
  loc_B6D286: LitStr ","
  loc_B6D289: ConcatStr
  loc_B6D28A: FStStrNoPop var_2A0
  loc_B6D28D: ILdRf var_90
  loc_B6D290: ConcatStr
  loc_B6D291: FStStrNoPop var_2A4
  loc_B6D294: LitStr ",'"
  loc_B6D297: ConcatStr
  loc_B6D298: FStStrNoPop var_2A8
  loc_B6D29B: ILdRf var_98
  loc_B6D29E: ConcatStr
  loc_B6D29F: FStStrNoPop var_2AC
  loc_B6D2A2: LitStr "',"
  loc_B6D2A5: ConcatStr
  loc_B6D2A6: FStStrNoPop var_2B0
  loc_B6D2A9: LitI4 1
  loc_B6D2AE: LitI4 1
  loc_B6D2B3: LitVarStr var_100, "'yyyy-mm-dd'"
  loc_B6D2B8: FStVarCopyObj var_F0
  loc_B6D2BB: FLdRfVar var_F0
  loc_B6D2BE: FLdRfVar var_9C
  loc_B6D2C1: CVarRef
  loc_B6D2C6: ImpAdCallI2 Format$(, )
  loc_B6D2CB: FStStrNoPop var_2B4
  loc_B6D2CE: ConcatStr
  loc_B6D2CF: FStStrNoPop var_2B8
  loc_B6D2D2: LitStr ","
  loc_B6D2D5: ConcatStr
  loc_B6D2D6: FStStrNoPop var_2BC
  loc_B6D2D9: LitI4 1
  loc_B6D2DE: LitI4 1
  loc_B6D2E3: LitVarStr var_16C, "'yyyy-mm-dd'"
  loc_B6D2E8: FStVarCopyObj var_110
  loc_B6D2EB: FLdRfVar var_110
  loc_B6D2EE: FLdRfVar var_9C
  loc_B6D2F1: CVarRef
  loc_B6D2F6: ImpAdCallI2 Format$(, )
  loc_B6D2FB: FStStrNoPop var_2C0
  loc_B6D2FE: ConcatStr
  loc_B6D2FF: FStStrNoPop var_2C4
  loc_B6D302: LitStr ","
  loc_B6D305: ConcatStr
  loc_B6D306: FStStrNoPop var_2C8
  loc_B6D309: ILdRf var_A0
  loc_B6D30C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6D311: FStStrNoPop var_2CC
  loc_B6D314: ConcatStr
  loc_B6D315: FStStrNoPop var_2D0
  loc_B6D318: LitStr ","
  loc_B6D31B: ConcatStr
  loc_B6D31C: FStStrNoPop var_2D4
  loc_B6D31F: ILdRf var_A4
  loc_B6D322: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B6D327: FStStrNoPop var_2D8
  loc_B6D32A: ConcatStr
  loc_B6D32B: FStStrNoPop var_2DC
  loc_B6D32E: LitStr ",'"
  loc_B6D331: ConcatStr
  loc_B6D332: FStStrNoPop var_2E0
  loc_B6D335: ImpAdLdI4 MemVar_C3D03C
  loc_B6D338: ConcatStr
  loc_B6D339: FStStrNoPop var_2E4
  loc_B6D33C: LitStr "');"
  loc_B6D33F: ConcatStr
  loc_B6D340: FStStrNoPop var_2E8
  loc_B6D343: Call EjecutarRsCls(from_stack_1v)
  loc_B6D348: FFreeStr var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_C4 = "": var_C8 = "": var_114 = "": var_118 = "": var_11C = "": var_260 = "": var_268 = "": var_26C = "": var_274 = "": var_278 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = ""
  loc_B6D397: FFreeVar var_F0 = ""
  loc_B6D39E: LitI2_Byte 1
  loc_B6D3A0: FLdRfVar var_BE
  loc_B6D3A3: ILdPr
  loc_B6D3A6: LateIdLdVar var_F0 DispID_4 0
  loc_B6D3AD: CI4Var
  loc_B6D3AF: LitI4 1
  loc_B6D3B4: SubI4
  loc_B6D3B5: CI2I4
  loc_B6D3B6: FFree1Var var_F0 = ""
  loc_B6D3B9: ForI2 var_2EC
  loc_B6D3BF: FLdI2 var_BE
  loc_B6D3C2: CI4UI1
  loc_B6D3C3: CVarI4
  loc_B6D3C7: PopAdLdVar
  loc_B6D3C8: LitVarI4
  loc_B6D3D0: PopAdLdVar
  loc_B6D3D1: ILdPr
  loc_B6D3D4: LateIdCallLdVar
  loc_B6D3DE: PopAd
  loc_B6D3E0: FLdI2 var_BE
  loc_B6D3E3: CI4UI1
  loc_B6D3E4: CVarI4
  loc_B6D3E8: PopAdLdVar
  loc_B6D3E9: LitVarI4
  loc_B6D3F1: PopAdLdVar
  loc_B6D3F2: ILdPr
  loc_B6D3F5: LateIdCallLdVar
  loc_B6D3FF: PopAd
  loc_B6D401: FLdI2 var_BE
  loc_B6D404: CI4UI1
  loc_B6D405: CVarI4
  loc_B6D409: PopAdLdVar
  loc_B6D40A: LitVarI4
  loc_B6D412: PopAdLdVar
  loc_B6D413: ILdPr
  loc_B6D416: LateIdCallLdVar
  loc_B6D420: PopAd
  loc_B6D422: LitStr "INSERT INTO itemcompra (PeriInfo,CodiOrco,CodiItco,AlteItco,DetaItco,MarcaItco,CaraItco,CodiInsu,CantItco,ImunItco,CodiPart,CodiOrga,CodiUnga,CodiFifu,IdImpu)"
  loc_B6D425: LitStr " VALUES ("
  loc_B6D428: ConcatStr
  loc_B6D429: FStStrNoPop var_C4
  loc_B6D42C: FLdI2 PeriInfo
  loc_B6D42F: CStrUI1
  loc_B6D431: FStStrNoPop var_C8
  loc_B6D434: ConcatStr
  loc_B6D435: FStStrNoPop var_114
  loc_B6D438: LitStr ","
  loc_B6D43B: ConcatStr
  loc_B6D43C: FStStrNoPop var_118
  loc_B6D43F: ILdRf var_88
  loc_B6D442: CStrI4
  loc_B6D444: FStStrNoPop var_11C
  loc_B6D447: ConcatStr
  loc_B6D448: FStStrNoPop var_260
  loc_B6D44B: LitStr ","
  loc_B6D44E: ConcatStr
  loc_B6D44F: FStStrNoPop var_268
  loc_B6D452: FLdI2 var_BE
  loc_B6D455: CI4UI1
  loc_B6D456: CVarI4
  loc_B6D45A: PopAdLdVar
  loc_B6D45B: LitVarI4
  loc_B6D463: PopAdLdVar
  loc_B6D464: ILdPr
  loc_B6D467: LateIdCallLdVar
  loc_B6D471: CStrVarTmp
  loc_B6D472: FStStrNoPop var_26C
  loc_B6D475: ConcatStr
  loc_B6D476: FStStrNoPop var_274
  loc_B6D479: LitStr ","
  loc_B6D47C: ConcatStr
  loc_B6D47D: FStStrNoPop var_278
  loc_B6D480: FLdI2 var_BE
  loc_B6D483: CI4UI1
  loc_B6D484: CVarI4
  loc_B6D488: PopAdLdVar
  loc_B6D489: LitVarI4
  loc_B6D491: PopAdLdVar
  loc_B6D492: ILdPr
  loc_B6D495: LateIdCallLdVar
  loc_B6D49F: CStrVarTmp
  loc_B6D4A0: FStStrNoPop var_27C
  loc_B6D4A3: ConcatStr
  loc_B6D4A4: FStStrNoPop var_280
  loc_B6D4A7: LitStr ",'"
  loc_B6D4AA: ConcatStr
  loc_B6D4AB: FStStrNoPop var_288
  loc_B6D4AE: FLdI2 var_BE
  loc_B6D4B1: CI4UI1
  loc_B6D4B2: CVarI4
  loc_B6D4B6: PopAdLdVar
  loc_B6D4B7: LitVarI4
  loc_B6D4BF: PopAdLdVar
  loc_B6D4C0: ILdPr
  loc_B6D4C3: LateIdCallLdVar
  loc_B6D4CD: CStrVarTmp
  loc_B6D4CE: FStStrNoPop var_284
  loc_B6D4D1: ImpAdCallI2 Trim$()
  loc_B6D4D6: FStStrNoPop var_28C
  loc_B6D4D9: ConcatStr
  loc_B6D4DA: FStStrNoPop var_290
  loc_B6D4DD: LitStr "','"
  loc_B6D4E0: ConcatStr
  loc_B6D4E1: FStStrNoPop var_298
  loc_B6D4E4: FLdI2 var_BE
  loc_B6D4E7: CI4UI1
  loc_B6D4E8: CVarI4
  loc_B6D4EC: PopAdLdVar
  loc_B6D4ED: LitVarI4
  loc_B6D4F5: PopAdLdVar
  loc_B6D4F6: ILdPr
  loc_B6D4F9: LateIdCallLdVar
  loc_B6D503: CStrVarTmp
  loc_B6D504: FStStrNoPop var_294
  loc_B6D507: ImpAdCallI2 Trim$()
  loc_B6D50C: FStStrNoPop var_29C
  loc_B6D50F: ConcatStr
  loc_B6D510: FStStrNoPop var_2A0
  loc_B6D513: LitStr "','"
  loc_B6D516: ConcatStr
  loc_B6D517: FStStrNoPop var_2A8
  loc_B6D51A: FLdI2 var_BE
  loc_B6D51D: CI4UI1
  loc_B6D51E: CVarI4
  loc_B6D522: PopAdLdVar
  loc_B6D523: LitVarI4
  loc_B6D52B: PopAdLdVar
  loc_B6D52C: ILdPr
  loc_B6D52F: LateIdCallLdVar
  loc_B6D539: CStrVarTmp
  loc_B6D53A: FStStrNoPop var_2A4
  loc_B6D53D: ImpAdCallI2 Trim$()
  loc_B6D542: FStStrNoPop var_2AC
  loc_B6D545: ConcatStr
  loc_B6D546: FStStrNoPop var_2B0
  loc_B6D549: LitStr "',"
  loc_B6D54C: ConcatStr
  loc_B6D54D: FStStrNoPop var_2B8
  loc_B6D550: LitI4 0
  loc_B6D555: LitI4 -1
  loc_B6D55A: LitI4 1
  loc_B6D55F: LitStr "."
  loc_B6D562: LitStr ","
  loc_B6D565: FLdRfVar var_17C
  loc_B6D568: CStrVarTmp
  loc_B6D569: FStStrNoPop var_2B4
  loc_B6D56C: ImpAdCallI2 Replace(, , , , , )
  loc_B6D571: FStStrNoPop var_2BC
  loc_B6D574: ConcatStr
  loc_B6D575: FStStrNoPop var_2C0
  loc_B6D578: LitStr ","
  loc_B6D57B: ConcatStr
  loc_B6D57C: FStStrNoPop var_2C8
  loc_B6D57F: LitI4 0
  loc_B6D584: LitI4 -1
  loc_B6D589: LitI4 1
  loc_B6D58E: LitStr "."
  loc_B6D591: LitStr ","
  loc_B6D594: FLdRfVar var_19C
  loc_B6D597: CStrVarTmp
  loc_B6D598: FStStrNoPop var_2C4
  loc_B6D59B: ImpAdCallI2 Replace(, , , , , )
  loc_B6D5A0: FStStrNoPop var_2CC
  loc_B6D5A3: ConcatStr
  loc_B6D5A4: FStStrNoPop var_2D0
  loc_B6D5A7: LitStr ",'"
  loc_B6D5AA: ConcatStr
  loc_B6D5AB: FStStrNoPop var_2D8
  loc_B6D5AE: LitI4 0
  loc_B6D5B3: LitI4 -1
  loc_B6D5B8: LitI4 1
  loc_B6D5BD: LitStr "."
  loc_B6D5C0: LitStr ","
  loc_B6D5C3: FLdRfVar var_1BC
  loc_B6D5C6: CStrVarTmp
  loc_B6D5C7: FStStrNoPop var_2D4
  loc_B6D5CA: ImpAdCallI2 Replace(, , , , , )
  loc_B6D5CF: FStStrNoPop var_2DC
  loc_B6D5D2: ConcatStr
  loc_B6D5D3: FStStrNoPop var_2E0
  loc_B6D5D6: LitStr "','"
  loc_B6D5D9: ConcatStr
  loc_B6D5DA: FStStrNoPop var_2E4
  loc_B6D5DD: FLdI2 var_BE
  loc_B6D5E0: CI4UI1
  loc_B6D5E1: CVarI4
  loc_B6D5E5: PopAdLdVar
  loc_B6D5E6: LitVarI4
  loc_B6D5EE: PopAdLdVar
  loc_B6D5EF: ILdPr
  loc_B6D5F2: LateIdCallLdVar
  loc_B6D5FC: CStrVarTmp
  loc_B6D5FD: FStStrNoPop var_2E8
  loc_B6D600: ConcatStr
  loc_B6D601: FStStrNoPop var_490
  loc_B6D604: LitStr "','"
  loc_B6D607: ConcatStr
  loc_B6D608: FStStrNoPop var_4D4
  loc_B6D60B: FLdI2 var_BE
  loc_B6D60E: CI4UI1
  loc_B6D60F: CVarI4
  loc_B6D613: PopAdLdVar
  loc_B6D614: LitVarI4
  loc_B6D61C: PopAdLdVar
  loc_B6D61D: ILdPr
  loc_B6D620: LateIdCallLdVar
  loc_B6D62A: CStrVarTmp
  loc_B6D62B: FStStrNoPop var_4D8
  loc_B6D62E: ConcatStr
  loc_B6D62F: FStStrNoPop var_4DC
  loc_B6D632: LitStr "',"
  loc_B6D635: ConcatStr
  loc_B6D636: FStStrNoPop var_520
  loc_B6D639: FLdI2 var_BE
  loc_B6D63C: CI4UI1
  loc_B6D63D: CVarI4
  loc_B6D641: PopAdLdVar
  loc_B6D642: LitVarI4
  loc_B6D64A: PopAdLdVar
  loc_B6D64B: ILdPr
  loc_B6D64E: LateIdCallLdVar
  loc_B6D658: CStrVarTmp
  loc_B6D659: FStStrNoPop var_524
  loc_B6D65C: ConcatStr
  loc_B6D65D: FStStrNoPop var_528
  loc_B6D660: LitStr ",'"
  loc_B6D663: ConcatStr
  loc_B6D664: FStStrNoPop var_56C
  loc_B6D667: FLdI2 var_BE
  loc_B6D66A: CI4UI1
  loc_B6D66B: CVarI4
  loc_B6D66F: PopAdLdVar
  loc_B6D670: LitVarI4
  loc_B6D678: PopAdLdVar
  loc_B6D679: ILdPr
  loc_B6D67C: LateIdCallLdVar
  loc_B6D686: CStrVarTmp
  loc_B6D687: FStStrNoPop var_570
  loc_B6D68A: ConcatStr
  loc_B6D68B: FStStrNoPop var_574
  loc_B6D68E: LitStr "',0);"
  loc_B6D691: ConcatStr
  loc_B6D692: FStStrNoPop var_578
  loc_B6D695: Call EjecutarRsCls(from_stack_1v)
  loc_B6D69A: FFreeStr var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_2E0 = "": var_2E4 = "": var_2E8 = "": var_490 = "": var_4D4 = "": var_4D8 = "": var_4DC = "": var_520 = "": var_524 = "": var_528 = "": var_56C = "": var_570 = "": var_574 = "": var_578 = "": var_C4 = "": var_C8 = "": var_114 = "": var_118 = "": var_11C = "": var_260 = "": var_268 = "": var_26C = "": var_274 = "": var_278 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_290 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_2C4 = ""
  loc_B6D6FF: FFreeVar var_F0 = "": var_110 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = ""
  loc_B6D71A: FLdRfVar var_BE
  loc_B6D71D: NextI2 var_2EC, loc_B6D3BF
  loc_B6D722: LitStr "COMMIT;"
  loc_B6D725: Call EjecutarRsCls(from_stack_1v)
  loc_B6D72A: LitStr "Municipalidad de Guaymallén"
  loc_B6D72D: LitStr "Municipalidad de General Alvear"
  loc_B6D730: EqStr
  loc_B6D732: ILdRf var_98
  loc_B6D735: LitStr vbNullString
  loc_B6D738: NeStr
  loc_B6D73A: AndI4
  loc_B6D73B: BranchF loc_B6D912
  loc_B6D73E: LitVarStr var_100, "EX-"
  loc_B6D743: ILdRf var_98
  loc_B6D746: FnLenStr
  loc_B6D747: LitI4 2
  loc_B6D74C: SubI4
  loc_B6D74D: FLdRfVar var_98
  loc_B6D750: CVarRef
  loc_B6D755: FLdRfVar var_F0
  loc_B6D758: ImpAdCallFPR4  = Left(, )
  loc_B6D75D: FLdRfVar var_F0
  loc_B6D760: ConcatVar var_110
  loc_B6D764: LitVarStr var_14C, "-   -GDEMZA-"
  loc_B6D769: ConcatVar var_12C
  loc_B6D76D: CStrVarTmp
  loc_B6D76E: FStStr var_57C
  loc_B6D771: FFreeVar var_F0 = "": var_110 = ""
  loc_B6D77A: LitI4 1
  loc_B6D77F: FLdRfVar var_98
  loc_B6D782: CVarRef
  loc_B6D787: FLdRfVar var_F0
  loc_B6D78A: ImpAdCallFPR4  = Right(, )
  loc_B6D78F: FLdRfVar var_F0
  loc_B6D792: FStVar var_58C
  loc_B6D796: FLdRfVar var_58C
  loc_B6D799: LitVarStr var_DC, "H"
  loc_B6D79E: HardType
  loc_B6D79F: EqVarBool
  loc_B6D7A1: BranchT loc_B6D7B2
  loc_B6D7A4: FLdRfVar var_58C
  loc_B6D7A7: LitVarStr var_100, "h"
  loc_B6D7AC: HardType
  loc_B6D7AD: EqVarBool
  loc_B6D7AF: BranchF loc_B6D7BF
  loc_B6D7B2: ILdRf var_57C
  loc_B6D7B5: LitStr "SECHAC#ALVEAR"
  loc_B6D7B8: ConcatStr
  loc_B6D7B9: FStStr var_57C
  loc_B6D7BC: Branch loc_B6D8BF
  loc_B6D7BF: FLdRfVar var_58C
  loc_B6D7C2: LitVarStr var_DC, "G"
  loc_B6D7C7: HardType
  loc_B6D7C8: EqVarBool
  loc_B6D7CA: BranchT loc_B6D7DB
  loc_B6D7CD: FLdRfVar var_58C
  loc_B6D7D0: LitVarStr var_100, "g"
  loc_B6D7D5: HardType
  loc_B6D7D6: EqVarBool
  loc_B6D7D8: BranchF loc_B6D7E8
  loc_B6D7DB: ILdRf var_57C
  loc_B6D7DE: LitStr "SECGOB#ALVEAR"
  loc_B6D7E1: ConcatStr
  loc_B6D7E2: FStStr var_57C
  loc_B6D7E5: Branch loc_B6D8BF
  loc_B6D7E8: FLdRfVar var_58C
  loc_B6D7EB: LitVarStr var_DC, "D"
  loc_B6D7F0: HardType
  loc_B6D7F1: EqVarBool
  loc_B6D7F3: BranchT loc_B6D804
  loc_B6D7F6: FLdRfVar var_58C
  loc_B6D7F9: LitVarStr var_100, "d"
  loc_B6D7FE: HardType
  loc_B6D7FF: EqVarBool
  loc_B6D801: BranchF loc_B6D811
  loc_B6D804: ILdRf var_57C
  loc_B6D807: LitStr "SECDESARR#ALVEAR"
  loc_B6D80A: ConcatStr
  loc_B6D80B: FStStr var_57C
  loc_B6D80E: Branch loc_B6D8BF
  loc_B6D811: FLdRfVar var_58C
  loc_B6D814: LitVarStr var_DC, "P"
  loc_B6D819: HardType
  loc_B6D81A: EqVarBool
  loc_B6D81C: BranchT loc_B6D82D
  loc_B6D81F: FLdRfVar var_58C
  loc_B6D822: LitVarStr var_100, "p"
  loc_B6D827: HardType
  loc_B6D828: EqVarBool
  loc_B6D82A: BranchF loc_B6D83A
  loc_B6D82D: ILdRf var_57C
  loc_B6D830: LitStr "SECOBYSERV#ALVEAR"
  loc_B6D833: ConcatStr
  loc_B6D834: FStStr var_57C
  loc_B6D837: Branch loc_B6D8BF
  loc_B6D83A: FLdRfVar var_58C
  loc_B6D83D: LitVarStr var_DC, "I"
  loc_B6D842: HardType
  loc_B6D843: EqVarBool
  loc_B6D845: BranchT loc_B6D856
  loc_B6D848: FLdRfVar var_58C
  loc_B6D84B: LitVarStr var_100, "i"
  loc_B6D850: HardType
  loc_B6D851: EqVarBool
  loc_B6D853: BranchF loc_B6D863
  loc_B6D856: ILdRf var_57C
  loc_B6D859: LitStr "MUNI#ALVEAR"
  loc_B6D85C: ConcatStr
  loc_B6D85D: FStStr var_57C
  loc_B6D860: Branch loc_B6D8BF
  loc_B6D863: FLdRfVar var_58C
  loc_B6D866: LitVarStr var_DC, "V"
  loc_B6D86B: HardType
  loc_B6D86C: EqVarBool
  loc_B6D86E: BranchT loc_B6D87F
  loc_B6D871: FLdRfVar var_58C
  loc_B6D874: LitVarStr var_100, "v"
  loc_B6D879: HardType
  loc_B6D87A: EqVarBool
  loc_B6D87C: BranchF loc_B6D88C
  loc_B6D87F: ILdRf var_57C
  loc_B6D882: LitStr "VIAL#ALVEAR"
  loc_B6D885: ConcatStr
  loc_B6D886: FStStr var_57C
  loc_B6D889: Branch loc_B6D8BF
  loc_B6D88C: FLdRfVar var_58C
  loc_B6D88F: LitVarStr var_DC, "C"
  loc_B6D894: HardType
  loc_B6D895: EqVarBool
  loc_B6D897: BranchT loc_B6D8A8
  loc_B6D89A: FLdRfVar var_58C
  loc_B6D89D: LitVarStr var_100, "c"
  loc_B6D8A2: HardType
  loc_B6D8A3: EqVarBool
  loc_B6D8A5: BranchF loc_B6D8B5
  loc_B6D8A8: ILdRf var_57C
  loc_B6D8AB: LitStr "HCD#ALVEAR"
  loc_B6D8AE: ConcatStr
  loc_B6D8AF: FStStr var_57C
  loc_B6D8B2: Branch loc_B6D8BF
  loc_B6D8B5: ILdRf var_57C
  loc_B6D8B8: LitStr "ERROR EN LA LETRA"
  loc_B6D8BB: ConcatStr
  loc_B6D8BC: FStStr var_57C
  loc_B6D8BF: LitStr "INSERT IGNORE INTO expediente (ExpeInfo, ExpeGDE, AltaUsua, AltaUsuaGDE) VALUE ('"
  loc_B6D8C2: ILdRf var_98
  loc_B6D8C5: ConcatStr
  loc_B6D8C6: FStStrNoPop var_C4
  loc_B6D8C9: LitStr "','"
  loc_B6D8CC: ConcatStr
  loc_B6D8CD: FStStrNoPop var_C8
  loc_B6D8D0: ILdRf var_57C
  loc_B6D8D3: ConcatStr
  loc_B6D8D4: FStStrNoPop var_114
  loc_B6D8D7: LitStr "','"
  loc_B6D8DA: ConcatStr
  loc_B6D8DB: FStStrNoPop var_118
  loc_B6D8DE: ImpAdLdI4 MemVar_C3D03C
  loc_B6D8E1: ConcatStr
  loc_B6D8E2: FStStrNoPop var_11C
  loc_B6D8E5: LitStr "','"
  loc_B6D8E8: ConcatStr
  loc_B6D8E9: FStStrNoPop var_260
  loc_B6D8EC: ImpAdLdI4 MemVar_C3D040
  loc_B6D8EF: ConcatStr
  loc_B6D8F0: FStStrNoPop var_268
  loc_B6D8F3: LitStr "');"
  loc_B6D8F6: ConcatStr
  loc_B6D8F7: FStStrNoPop var_26C
  loc_B6D8FA: Call EjecutarRsCls(from_stack_1v)
  loc_B6D8FF: FFreeStr var_C4 = "": var_C8 = "": var_114 = "": var_118 = "": var_11C = "": var_260 = "": var_268 = ""
  loc_B6D912: ExitProcCbHresult
  loc_B6D918: LitStr "ROLLBACK;"
  loc_B6D91B: Call EjecutarRsCls(from_stack_1v)
  loc_B6D920: LitI4 0
  loc_B6D925: FStR4 var_88
  loc_B6D928: ExitProcCbHresult
End Function

Public Function Modificar(PeriInfo, CodiOrco, FenoOrco, DetaOrco, CucuPers, AlivaOrco, SelloOrco, ItemCompraFlex, sListaEliminar, ExpeImpuGDE) 'B2BF68
  'Data Table: 4314BC
  loc_B2B6C4: ILdRf FenoOrco
  loc_B2B6C7: FStStrCopy var_8C
  loc_B2B6CA: ILdRf DetaOrco
  loc_B2B6CD: FStStrCopy var_90
  loc_B2B6D0: ILdRf CucuPers
  loc_B2B6D3: FStStrCopy Modificar
  loc_B2B6D6: ILdRf AlivaOrco
  loc_B2B6D9: FStStrCopy var_98
  loc_B2B6DC: ILdRf SelloOrco
  loc_B2B6DF: FStStrCopy var_9C
  loc_B2B6E2: ILdRf sListaEliminar
  loc_B2B6E5: FStStrCopy var_A0
  loc_B2B6E8: ILdRf ExpeImpuGDE
  loc_B2B6EB: FStStrCopy var_A4
  loc_B2B6EE: LitStr "START TRANSACTION;"
  loc_B2B6F1: FStStrCopy var_AC
  loc_B2B6F4: OnErrorGoto loc_B2BF45
  loc_B2B6F7: LitStr "Municipalidad de Guaymallén"
  loc_B2B6FA: LitStr "Municipalidad de General Alvear"
  loc_B2B6FD: EqStr
  loc_B2B6FF: BranchF loc_B2B818
  loc_B2B702: ILdRf var_AC
  loc_B2B705: LitStr "UPDATE ordencompra"
  loc_B2B708: ConcatStr
  loc_B2B709: FStStrNoPop var_B0
  loc_B2B70C: LitStr " SET FenoOrco="
  loc_B2B70F: ConcatStr
  loc_B2B710: FStStrNoPop var_E4
  loc_B2B713: LitI4 1
  loc_B2B718: LitI4 1
  loc_B2B71D: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_B2B722: FStVarCopyObj var_E0
  loc_B2B725: FLdRfVar var_E0
  loc_B2B728: FLdRfVar var_8C
  loc_B2B72B: CVarRef
  loc_B2B730: ImpAdCallI2 Format$(, )
  loc_B2B735: FStStrNoPop var_E8
  loc_B2B738: ConcatStr
  loc_B2B739: FStStrNoPop var_EC
  loc_B2B73C: LitStr ", DetaOrco='"
  loc_B2B73F: ConcatStr
  loc_B2B740: FStStrNoPop var_F0
  loc_B2B743: ILdRf var_90
  loc_B2B746: ConcatStr
  loc_B2B747: FStStrNoPop var_F4
  loc_B2B74A: LitStr "', CucuPers="
  loc_B2B74D: ConcatStr
  loc_B2B74E: FStStrNoPop var_F8
  loc_B2B751: ILdRf Modificar
  loc_B2B754: ConcatStr
  loc_B2B755: FStStrNoPop var_FC
  loc_B2B758: LitStr ", AlivaOrco="
  loc_B2B75B: ConcatStr
  loc_B2B75C: FStStrNoPop var_100
  loc_B2B75F: ILdRf var_98
  loc_B2B762: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B2B767: FStStrNoPop var_104
  loc_B2B76A: ConcatStr
  loc_B2B76B: FStStrNoPop var_108
  loc_B2B76E: LitStr ", SelloOrco="
  loc_B2B771: ConcatStr
  loc_B2B772: FStStrNoPop var_10C
  loc_B2B775: ILdRf var_9C
  loc_B2B778: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B2B77D: FStStrNoPop var_110
  loc_B2B780: ConcatStr
  loc_B2B781: FStStrNoPop var_114
  loc_B2B784: LitStr ", ExpeImpuGDE = '"
  loc_B2B787: ConcatStr
  loc_B2B788: FStStrNoPop var_118
  loc_B2B78B: ILdRf var_A4
  loc_B2B78E: ConcatStr
  loc_B2B78F: FStStrNoPop var_11C
  loc_B2B792: LitStr "'"
  loc_B2B795: ConcatStr
  loc_B2B796: FStStrNoPop var_120
  loc_B2B799: LitStr ", ModiUsua='"
  loc_B2B79C: ConcatStr
  loc_B2B79D: FStStrNoPop var_124
  loc_B2B7A0: ImpAdLdI4 MemVar_C3D03C
  loc_B2B7A3: ConcatStr
  loc_B2B7A4: FStStrNoPop var_128
  loc_B2B7A7: LitStr "', ModiFeho=Now()"
  loc_B2B7AA: ConcatStr
  loc_B2B7AB: FStStrNoPop var_12C
  loc_B2B7AE: LitStr " WHERE PeriInfo = "
  loc_B2B7B1: ConcatStr
  loc_B2B7B2: FStStrNoPop var_130
  loc_B2B7B5: FLdI2 PeriInfo
  loc_B2B7B8: CStrUI1
  loc_B2B7BA: FStStrNoPop var_134
  loc_B2B7BD: ConcatStr
  loc_B2B7BE: FStStrNoPop var_138
  loc_B2B7C1: LitStr " AND CodiOrco = "
  loc_B2B7C4: ConcatStr
  loc_B2B7C5: FStStrNoPop var_13C
  loc_B2B7C8: ILdRf CodiOrco
  loc_B2B7CB: CStrI4
  loc_B2B7CD: FStStrNoPop var_140
  loc_B2B7D0: ConcatStr
  loc_B2B7D1: FStStrNoPop var_144
  loc_B2B7D4: LitStr "; "
  loc_B2B7D7: ConcatStr
  loc_B2B7D8: FStStr var_AC
  loc_B2B7DB: FFreeStr var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_B2B812: FFree1Var var_E0 = ""
  loc_B2B815: Branch loc_B2B910
  loc_B2B818: ILdRf var_AC
  loc_B2B81B: LitStr "UPDATE ordencompra"
  loc_B2B81E: ConcatStr
  loc_B2B81F: FStStrNoPop var_B0
  loc_B2B822: LitStr " SET FenoOrco="
  loc_B2B825: ConcatStr
  loc_B2B826: FStStrNoPop var_E4
  loc_B2B829: LitI4 1
  loc_B2B82E: LitI4 1
  loc_B2B833: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_B2B838: FStVarCopyObj var_E0
  loc_B2B83B: FLdRfVar var_E0
  loc_B2B83E: FLdRfVar var_8C
  loc_B2B841: CVarRef
  loc_B2B846: ImpAdCallI2 Format$(, )
  loc_B2B84B: FStStrNoPop var_E8
  loc_B2B84E: ConcatStr
  loc_B2B84F: FStStrNoPop var_EC
  loc_B2B852: LitStr ", DetaOrco='"
  loc_B2B855: ConcatStr
  loc_B2B856: FStStrNoPop var_F0
  loc_B2B859: ILdRf var_90
  loc_B2B85C: ConcatStr
  loc_B2B85D: FStStrNoPop var_F4
  loc_B2B860: LitStr "', CucuPers="
  loc_B2B863: ConcatStr
  loc_B2B864: FStStrNoPop var_F8
  loc_B2B867: ILdRf Modificar
  loc_B2B86A: ConcatStr
  loc_B2B86B: FStStrNoPop var_FC
  loc_B2B86E: LitStr ", AlivaOrco="
  loc_B2B871: ConcatStr
  loc_B2B872: FStStrNoPop var_100
  loc_B2B875: ILdRf var_98
  loc_B2B878: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B2B87D: FStStrNoPop var_104
  loc_B2B880: ConcatStr
  loc_B2B881: FStStrNoPop var_108
  loc_B2B884: LitStr ", SelloOrco="
  loc_B2B887: ConcatStr
  loc_B2B888: FStStrNoPop var_10C
  loc_B2B88B: ILdRf var_9C
  loc_B2B88E: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B2B893: FStStrNoPop var_110
  loc_B2B896: ConcatStr
  loc_B2B897: FStStrNoPop var_114
  loc_B2B89A: LitStr ", ModiUsua='"
  loc_B2B89D: ConcatStr
  loc_B2B89E: FStStrNoPop var_118
  loc_B2B8A1: ImpAdLdI4 MemVar_C3D03C
  loc_B2B8A4: ConcatStr
  loc_B2B8A5: FStStrNoPop var_11C
  loc_B2B8A8: LitStr "', ModiFeho=Now()"
  loc_B2B8AB: ConcatStr
  loc_B2B8AC: FStStrNoPop var_120
  loc_B2B8AF: LitStr " WHERE PeriInfo = "
  loc_B2B8B2: ConcatStr
  loc_B2B8B3: FStStrNoPop var_124
  loc_B2B8B6: FLdI2 PeriInfo
  loc_B2B8B9: CStrUI1
  loc_B2B8BB: FStStrNoPop var_128
  loc_B2B8BE: ConcatStr
  loc_B2B8BF: FStStrNoPop var_12C
  loc_B2B8C2: LitStr " AND CodiOrco = "
  loc_B2B8C5: ConcatStr
  loc_B2B8C6: FStStrNoPop var_130
  loc_B2B8C9: ILdRf CodiOrco
  loc_B2B8CC: CStrI4
  loc_B2B8CE: FStStrNoPop var_134
  loc_B2B8D1: ConcatStr
  loc_B2B8D2: FStStrNoPop var_138
  loc_B2B8D5: LitStr "; "
  loc_B2B8D8: ConcatStr
  loc_B2B8D9: FStStr var_AC
  loc_B2B8DC: FFreeStr var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B2B90D: FFree1Var var_E0 = ""
  loc_B2B910: ILdRf var_AC
  loc_B2B913: LitStr "REPLACE INTO cotizacion (IdCoti,PeriInfo,CodiNope,CucuPers,FechCoti,PlenCoti,MaofCoti,ObseCoti,ModiUsua,ModiFeho)"
  loc_B2B916: ConcatStr
  loc_B2B917: FStStrNoPop var_B0
  loc_B2B91A: LitStr " SELECT IdCoti, PeriInfo, CodiNope, CucuPers, FechOrco, '', '', '', '"
  loc_B2B91D: ConcatStr
  loc_B2B91E: FStStrNoPop var_E4
  loc_B2B921: ImpAdLdI4 MemVar_C3D03C
  loc_B2B924: ConcatStr
  loc_B2B925: FStStrNoPop var_E8
  loc_B2B928: LitStr "', Now()"
  loc_B2B92B: ConcatStr
  loc_B2B92C: FStStrNoPop var_EC
  loc_B2B92F: LitStr " FROM ordencompra"
  loc_B2B932: ConcatStr
  loc_B2B933: FStStrNoPop var_F0
  loc_B2B936: LitStr " WHERE ordencompra.PeriInfo = "
  loc_B2B939: ConcatStr
  loc_B2B93A: FStStrNoPop var_F4
  loc_B2B93D: FLdI2 PeriInfo
  loc_B2B940: CStrUI1
  loc_B2B942: FStStrNoPop var_F8
  loc_B2B945: ConcatStr
  loc_B2B946: FStStrNoPop var_FC
  loc_B2B949: LitStr " And ordencompra.CodiOrco = "
  loc_B2B94C: ConcatStr
  loc_B2B94D: FStStrNoPop var_100
  loc_B2B950: ILdRf CodiOrco
  loc_B2B953: CStrI4
  loc_B2B955: FStStrNoPop var_104
  loc_B2B958: ConcatStr
  loc_B2B959: FStStrNoPop var_108
  loc_B2B95C: LitStr "; "
  loc_B2B95F: ConcatStr
  loc_B2B960: FStStr var_AC
  loc_B2B963: FFreeStr var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B2B97C: ILdRf var_A0
  loc_B2B97F: LitStr vbNullString
  loc_B2B982: NeStr
  loc_B2B984: BranchF loc_B2B9D8
  loc_B2B987: ILdRf var_AC
  loc_B2B98A: LitStr "DELETE FROM itemcompra WHERE PeriInfo = "
  loc_B2B98D: ConcatStr
  loc_B2B98E: FStStrNoPop var_B0
  loc_B2B991: ImpAdLdI2 MemVar_C3D064
  loc_B2B994: CStrUI1
  loc_B2B996: FStStrNoPop var_E4
  loc_B2B999: ConcatStr
  loc_B2B99A: FStStrNoPop var_E8
  loc_B2B99D: LitStr " AND CodiOrco = "
  loc_B2B9A0: ConcatStr
  loc_B2B9A1: FStStrNoPop var_EC
  loc_B2B9A4: ILdRf CodiOrco
  loc_B2B9A7: CStrI4
  loc_B2B9A9: FStStrNoPop var_F0
  loc_B2B9AC: ConcatStr
  loc_B2B9AD: FStStrNoPop var_F4
  loc_B2B9B0: LitStr " AND CodiItco IN ("
  loc_B2B9B3: ConcatStr
  loc_B2B9B4: FStStrNoPop var_F8
  loc_B2B9B7: ILdRf var_A0
  loc_B2B9BA: ConcatStr
  loc_B2B9BB: FStStrNoPop var_FC
  loc_B2B9BE: LitStr ");"
  loc_B2B9C1: ConcatStr
  loc_B2B9C2: FStStr var_AC
  loc_B2B9C5: FFreeStr var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_B2B9D8: LitI2_Byte 1
  loc_B2B9DA: FLdRfVar var_A6
  loc_B2B9DD: ILdPr
  loc_B2B9E0: LateIdLdVar var_E0 DispID_4 0
  loc_B2B9E7: CI4Var
  loc_B2B9E9: LitI4 1
  loc_B2B9EE: SubI4
  loc_B2B9EF: CI2I4
  loc_B2B9F0: FFree1Var var_E0 = ""
  loc_B2B9F3: ForI2 var_148
  loc_B2B9F9: FLdI2 var_A6
  loc_B2B9FC: CI4UI1
  loc_B2B9FD: CVarI4
  loc_B2BA01: PopAdLdVar
  loc_B2BA02: LitVarI4
  loc_B2BA0A: PopAdLdVar
  loc_B2BA0B: ILdPr
  loc_B2BA0E: LateIdCallLdVar
  loc_B2BA18: PopAd
  loc_B2BA1A: FLdI2 var_A6
  loc_B2BA1D: CI4UI1
  loc_B2BA1E: CVarI4
  loc_B2BA22: PopAdLdVar
  loc_B2BA23: LitVarI4
  loc_B2BA2B: PopAdLdVar
  loc_B2BA2C: ILdPr
  loc_B2BA2F: LateIdCallLdVar
  loc_B2BA39: PopAd
  loc_B2BA3B: ILdRf var_AC
  loc_B2BA3E: LitStr "UPDATE itemcompra"
  loc_B2BA41: ConcatStr
  loc_B2BA42: FStStrNoPop var_B0
  loc_B2BA45: LitStr " SET DetaItco='"
  loc_B2BA48: ConcatStr
  loc_B2BA49: FStStrNoPop var_E4
  loc_B2BA4C: FLdI2 var_A6
  loc_B2BA4F: CI4UI1
  loc_B2BA50: CVarI4
  loc_B2BA54: PopAdLdVar
  loc_B2BA55: LitVarI4
  loc_B2BA5D: PopAdLdVar
  loc_B2BA5E: ILdPr
  loc_B2BA61: LateIdCallLdVar
  loc_B2BA6B: CStrVarTmp
  loc_B2BA6C: FStStrNoPop var_E8
  loc_B2BA6F: ConcatStr
  loc_B2BA70: FStStrNoPop var_EC
  loc_B2BA73: LitStr "'"
  loc_B2BA76: ConcatStr
  loc_B2BA77: FStStrNoPop var_F0
  loc_B2BA7A: LitStr ", CaraItco='"
  loc_B2BA7D: ConcatStr
  loc_B2BA7E: FStStrNoPop var_F4
  loc_B2BA81: FLdI2 var_A6
  loc_B2BA84: CI4UI1
  loc_B2BA85: CVarI4
  loc_B2BA89: PopAdLdVar
  loc_B2BA8A: LitVarI4
  loc_B2BA92: PopAdLdVar
  loc_B2BA93: ILdPr
  loc_B2BA96: LateIdCallLdVar
  loc_B2BAA0: CStrVarTmp
  loc_B2BAA1: FStStrNoPop var_F8
  loc_B2BAA4: ConcatStr
  loc_B2BAA5: FStStrNoPop var_FC
  loc_B2BAA8: LitStr "'"
  loc_B2BAAB: ConcatStr
  loc_B2BAAC: FStStrNoPop var_100
  loc_B2BAAF: LitStr ", CantItco="
  loc_B2BAB2: ConcatStr
  loc_B2BAB3: FStStrNoPop var_108
  loc_B2BAB6: LitI4 0
  loc_B2BABB: LitI4 -1
  loc_B2BAC0: LitI4 1
  loc_B2BAC5: LitStr "."
  loc_B2BAC8: LitStr ","
  loc_B2BACB: FLdRfVar var_208
  loc_B2BACE: CStrVarTmp
  loc_B2BACF: FStStrNoPop var_104
  loc_B2BAD2: ImpAdCallI2 Replace(, , , , , )
  loc_B2BAD7: FStStrNoPop var_10C
  loc_B2BADA: ConcatStr
  loc_B2BADB: FStStrNoPop var_110
  loc_B2BADE: LitStr ", ImunItco="
  loc_B2BAE1: ConcatStr
  loc_B2BAE2: FStStrNoPop var_118
  loc_B2BAE5: LitI4 0
  loc_B2BAEA: LitI4 -1
  loc_B2BAEF: LitI4 1
  loc_B2BAF4: LitStr "."
  loc_B2BAF7: LitStr ","
  loc_B2BAFA: FLdRfVar var_258
  loc_B2BAFD: CStrVarTmp
  loc_B2BAFE: FStStrNoPop var_114
  loc_B2BB01: ImpAdCallI2 Replace(, , , , , )
  loc_B2BB06: FStStrNoPop var_11C
  loc_B2BB09: ConcatStr
  loc_B2BB0A: FStStrNoPop var_120
  loc_B2BB0D: LitStr " WHERE PeriInfo = "
  loc_B2BB10: ConcatStr
  loc_B2BB11: FStStrNoPop var_124
  loc_B2BB14: FLdI2 PeriInfo
  loc_B2BB17: CStrUI1
  loc_B2BB19: FStStrNoPop var_128
  loc_B2BB1C: ConcatStr
  loc_B2BB1D: FStStrNoPop var_12C
  loc_B2BB20: LitStr " AND CodiOrco = "
  loc_B2BB23: ConcatStr
  loc_B2BB24: FStStrNoPop var_130
  loc_B2BB27: ILdRf CodiOrco
  loc_B2BB2A: CStrI4
  loc_B2BB2C: FStStrNoPop var_134
  loc_B2BB2F: ConcatStr
  loc_B2BB30: FStStrNoPop var_138
  loc_B2BB33: LitStr " AND CodiItco = "
  loc_B2BB36: ConcatStr
  loc_B2BB37: FStStrNoPop var_140
  loc_B2BB3A: FLdI2 var_A6
  loc_B2BB3D: CI4UI1
  loc_B2BB3E: CVarI4
  loc_B2BB42: PopAdLdVar
  loc_B2BB43: LitVarI4
  loc_B2BB4B: PopAdLdVar
  loc_B2BB4C: ILdPr
  loc_B2BB4F: LateIdCallLdVar
  loc_B2BB59: CStrVarTmp
  loc_B2BB5A: FStStrNoPop var_13C
  loc_B2BB5D: CI2Str
  loc_B2BB5F: CStrUI1
  loc_B2BB61: FStStrNoPop var_144
  loc_B2BB64: ConcatStr
  loc_B2BB65: FStStrNoPop var_2AC
  loc_B2BB68: LitStr " AND AlteItco = "
  loc_B2BB6B: ConcatStr
  loc_B2BB6C: FStStrNoPop var_304
  loc_B2BB6F: FLdI2 var_A6
  loc_B2BB72: CI4UI1
  loc_B2BB73: CVarI4
  loc_B2BB77: PopAdLdVar
  loc_B2BB78: LitVarI4
  loc_B2BB80: PopAdLdVar
  loc_B2BB81: ILdPr
  loc_B2BB84: LateIdCallLdVar
  loc_B2BB8E: CStrVarTmp
  loc_B2BB8F: FStStrNoPop var_300
  loc_B2BB92: CI2Str
  loc_B2BB94: CStrUI1
  loc_B2BB96: FStStrNoPop var_308
  loc_B2BB99: ConcatStr
  loc_B2BB9A: FStStrNoPop var_30C
  loc_B2BB9D: LitStr "; "
  loc_B2BBA0: ConcatStr
  loc_B2BBA1: FStStr var_AC
  loc_B2BBA4: FFreeStr var_30C = "": var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_2AC = "": var_300 = "": var_304 = ""
  loc_B2BBE5: FFreeVar var_E0 = "": var_1B8 = "": var_208 = "": var_258 = "": var_2A8 = ""
  loc_B2BBF4: FLdI2 var_A6
  loc_B2BBF7: CI4UI1
  loc_B2BBF8: CVarI4
  loc_B2BBFC: PopAdLdVar
  loc_B2BBFD: LitVarI4
  loc_B2BC05: PopAdLdVar
  loc_B2BC06: ILdPr
  loc_B2BC09: LateIdCallLdVar
  loc_B2BC13: PopAd
  loc_B2BC15: FLdI2 var_A6
  loc_B2BC18: CI4UI1
  loc_B2BC19: CVarI4
  loc_B2BC1D: PopAdLdVar
  loc_B2BC1E: LitVarI4
  loc_B2BC26: PopAdLdVar
  loc_B2BC27: ILdPr
  loc_B2BC2A: LateIdCallLdVar
  loc_B2BC34: PopAd
  loc_B2BC36: ILdRf var_AC
  loc_B2BC39: LitStr "REPLACE INTO itemcotizacion (IdCoti,PeriInfo,CodiNope,CodiItco,AlteItco,DetaItco,CaraItco,CodiInsu,CantItco,ImunItco,ModiUsua,ModiFeho)"
  loc_B2BC3C: ConcatStr
  loc_B2BC3D: FStStrNoPop var_B0
  loc_B2BC40: LitStr " SELECT ordencompra.IdCoti, itemcompra.PeriInfo, CodiNope,"
  loc_B2BC43: ConcatStr
  loc_B2BC44: FStStrNoPop var_E8
  loc_B2BC47: FLdI2 var_A6
  loc_B2BC4A: CI4UI1
  loc_B2BC4B: CVarI4
  loc_B2BC4F: PopAdLdVar
  loc_B2BC50: LitVarI4
  loc_B2BC58: PopAdLdVar
  loc_B2BC59: ILdPr
  loc_B2BC5C: LateIdCallLdVar
  loc_B2BC66: CStrVarTmp
  loc_B2BC67: FStStrNoPop var_E4
  loc_B2BC6A: CI2Str
  loc_B2BC6C: CStrUI1
  loc_B2BC6E: FStStrNoPop var_EC
  loc_B2BC71: ConcatStr
  loc_B2BC72: FStStrNoPop var_F0
  loc_B2BC75: LitStr ","
  loc_B2BC78: ConcatStr
  loc_B2BC79: FStStrNoPop var_F8
  loc_B2BC7C: FLdI2 var_A6
  loc_B2BC7F: CI4UI1
  loc_B2BC80: CVarI4
  loc_B2BC84: PopAdLdVar
  loc_B2BC85: LitVarI4
  loc_B2BC8D: PopAdLdVar
  loc_B2BC8E: ILdPr
  loc_B2BC91: LateIdCallLdVar
  loc_B2BC9B: CStrVarTmp
  loc_B2BC9C: FStStrNoPop var_F4
  loc_B2BC9F: CI2Str
  loc_B2BCA1: CStrUI1
  loc_B2BCA3: FStStrNoPop var_FC
  loc_B2BCA6: ConcatStr
  loc_B2BCA7: FStStrNoPop var_100
  loc_B2BCAA: LitStr ",'"
  loc_B2BCAD: ConcatStr
  loc_B2BCAE: FStStrNoPop var_104
  loc_B2BCB1: FLdI2 var_A6
  loc_B2BCB4: CI4UI1
  loc_B2BCB5: CVarI4
  loc_B2BCB9: PopAdLdVar
  loc_B2BCBA: LitVarI4
  loc_B2BCC2: PopAdLdVar
  loc_B2BCC3: ILdPr
  loc_B2BCC6: LateIdCallLdVar
  loc_B2BCD0: CStrVarTmp
  loc_B2BCD1: FStStrNoPop var_108
  loc_B2BCD4: ConcatStr
  loc_B2BCD5: FStStrNoPop var_10C
  loc_B2BCD8: LitStr "','"
  loc_B2BCDB: ConcatStr
  loc_B2BCDC: FStStrNoPop var_110
  loc_B2BCDF: FLdI2 var_A6
  loc_B2BCE2: CI4UI1
  loc_B2BCE3: CVarI4
  loc_B2BCE7: PopAdLdVar
  loc_B2BCE8: LitVarI4
  loc_B2BCF0: PopAdLdVar
  loc_B2BCF1: ILdPr
  loc_B2BCF4: LateIdCallLdVar
  loc_B2BCFE: CStrVarTmp
  loc_B2BCFF: FStStrNoPop var_114
  loc_B2BD02: ConcatStr
  loc_B2BD03: FStStrNoPop var_118
  loc_B2BD06: LitStr "',CodiInsu,"
  loc_B2BD09: ConcatStr
  loc_B2BD0A: FStStrNoPop var_120
  loc_B2BD0D: LitI4 0
  loc_B2BD12: LitI4 -1
  loc_B2BD17: LitI4 1
  loc_B2BD1C: LitStr "."
  loc_B2BD1F: LitStr ","
  loc_B2BD22: FLdRfVar var_2A8
  loc_B2BD25: CStrVarTmp
  loc_B2BD26: FStStrNoPop var_11C
  loc_B2BD29: ImpAdCallI2 Replace(, , , , , )
  loc_B2BD2E: FStStrNoPop var_124
  loc_B2BD31: ConcatStr
  loc_B2BD32: FStStrNoPop var_128
  loc_B2BD35: LitStr ","
  loc_B2BD38: ConcatStr
  loc_B2BD39: FStStrNoPop var_130
  loc_B2BD3C: LitI4 0
  loc_B2BD41: LitI4 -1
  loc_B2BD46: LitI4 1
  loc_B2BD4B: LitStr "."
  loc_B2BD4E: LitStr ","
  loc_B2BD51: FLdRfVar var_2FC
  loc_B2BD54: CStrVarTmp
  loc_B2BD55: FStStrNoPop var_12C
  loc_B2BD58: ImpAdCallI2 Replace(, , , , , )
  loc_B2BD5D: FStStrNoPop var_134
  loc_B2BD60: ConcatStr
  loc_B2BD61: FStStrNoPop var_138
  loc_B2BD64: LitStr ", '"
  loc_B2BD67: ConcatStr
  loc_B2BD68: FStStrNoPop var_13C
  loc_B2BD6B: ImpAdLdI4 MemVar_C3D03C
  loc_B2BD6E: ConcatStr
  loc_B2BD6F: FStStrNoPop var_140
  loc_B2BD72: LitStr "', Now()"
  loc_B2BD75: ConcatStr
  loc_B2BD76: FStStrNoPop var_144
  loc_B2BD79: LitStr " FROM itemcompra"
  loc_B2BD7C: ConcatStr
  loc_B2BD7D: FStStrNoPop var_2AC
  loc_B2BD80: LitStr " INNER JOIN ordencompra ON ordencompra.PeriInfo = itemcompra.PeriInfo AND ordencompra.CodiOrco = itemcompra.CodiOrco"
  loc_B2BD83: ConcatStr
  loc_B2BD84: FStStrNoPop var_300
  loc_B2BD87: LitStr " WHERE itemcompra.PeriInfo = "
  loc_B2BD8A: ConcatStr
  loc_B2BD8B: FStStrNoPop var_304
  loc_B2BD8E: FLdI2 PeriInfo
  loc_B2BD91: CStrUI1
  loc_B2BD93: FStStrNoPop var_308
  loc_B2BD96: ConcatStr
  loc_B2BD97: FStStrNoPop var_30C
  loc_B2BD9A: LitStr " AND itemcompra.CodiOrco = "
  loc_B2BD9D: ConcatStr
  loc_B2BD9E: FStStrNoPop var_310
  loc_B2BDA1: ILdRf CodiOrco
  loc_B2BDA4: CStrI4
  loc_B2BDA6: FStStrNoPop var_314
  loc_B2BDA9: ConcatStr
  loc_B2BDAA: FStStrNoPop var_318
  loc_B2BDAD: LitStr " AND itemcompra.CodiItco = "
  loc_B2BDB0: ConcatStr
  loc_B2BDB1: FStStrNoPop var_370
  loc_B2BDB4: FLdI2 var_A6
  loc_B2BDB7: CI4UI1
  loc_B2BDB8: CVarI4
  loc_B2BDBC: PopAdLdVar
  loc_B2BDBD: LitVarI4
  loc_B2BDC5: PopAdLdVar
  loc_B2BDC6: ILdPr
  loc_B2BDC9: LateIdCallLdVar
  loc_B2BDD3: CStrVarTmp
  loc_B2BDD4: FStStrNoPop var_36C
  loc_B2BDD7: CI2Str
  loc_B2BDD9: CStrUI1
  loc_B2BDDB: FStStrNoPop var_374
  loc_B2BDDE: ConcatStr
  loc_B2BDDF: FStStrNoPop var_378
  loc_B2BDE2: LitStr " AND itemcompra.AlteItco = "
  loc_B2BDE5: ConcatStr
  loc_B2BDE6: FStStrNoPop var_3D0
  loc_B2BDE9: FLdI2 var_A6
  loc_B2BDEC: CI4UI1
  loc_B2BDED: CVarI4
  loc_B2BDF1: PopAdLdVar
  loc_B2BDF2: LitVarI4
  loc_B2BDFA: PopAdLdVar
  loc_B2BDFB: ILdPr
  loc_B2BDFE: LateIdCallLdVar
  loc_B2BE08: CStrVarTmp
  loc_B2BE09: FStStrNoPop var_3CC
  loc_B2BE0C: CI2Str
  loc_B2BE0E: CStrUI1
  loc_B2BE10: FStStrNoPop var_3D4
  loc_B2BE13: ConcatStr
  loc_B2BE14: FStStrNoPop var_3D8
  loc_B2BE17: LitStr "; "
  loc_B2BE1A: ConcatStr
  loc_B2BE1B: FStStr var_AC
  loc_B2BE1E: FFreeStr var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_3CC = "": var_3D0 = "": var_3D4 = "": var_3D8 = "": var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_2AC = "": var_300 = "": var_304 = ""
  loc_B2BE75: FFreeVar var_E0 = "": var_1B8 = "": var_208 = "": var_258 = "": var_2A8 = "": var_2FC = "": var_368 = ""
  loc_B2BE88: FLdRfVar var_A6
  loc_B2BE8B: NextI2 var_148, loc_B2B9F9
  loc_B2BE90: ILdRf var_AC
  loc_B2BE93: LitStr "UPDATE ordencompra oc"
  loc_B2BE96: ConcatStr
  loc_B2BE97: FStStrNoPop var_B0
  loc_B2BE9A: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = oc.PeriInfo"
  loc_B2BE9D: ConcatStr
  loc_B2BE9E: FStStrNoPop var_E4
  loc_B2BEA1: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_B2BEA4: ConcatStr
  loc_B2BEA5: FStStrNoPop var_E8
  loc_B2BEA8: LitStr " INNER JOIN imputacion i ON i.PeriInfo = oc.PeriInfo AND i.CodiOrco = oc.CodiOrco AND i.Item = itc.CodiItco"
  loc_B2BEAB: ConcatStr
  loc_B2BEAC: FStStrNoPop var_EC
  loc_B2BEAF: LitStr " AND i.FechImpu > pc.FeproPaco"
  loc_B2BEB2: ConcatStr
  loc_B2BEB3: FStStrNoPop var_F0
  loc_B2BEB6: LitStr " SET i.CucuPers = "
  loc_B2BEB9: ConcatStr
  loc_B2BEBA: FStStrNoPop var_F4
  loc_B2BEBD: ILdRf Modificar
  loc_B2BEC0: ConcatStr
  loc_B2BEC1: FStStrNoPop var_F8
  loc_B2BEC4: LitStr " WHERE oc.PeriInfo = "
  loc_B2BEC7: ConcatStr
  loc_B2BEC8: FStStrNoPop var_FC
  loc_B2BECB: FLdI2 PeriInfo
  loc_B2BECE: CStrUI1
  loc_B2BED0: FStStrNoPop var_100
  loc_B2BED3: ConcatStr
  loc_B2BED4: FStStrNoPop var_104
  loc_B2BED7: LitStr " AND oc.CodiOrco = "
  loc_B2BEDA: ConcatStr
  loc_B2BEDB: FStStrNoPop var_108
  loc_B2BEDE: ILdRf CodiOrco
  loc_B2BEE1: CStrI4
  loc_B2BEE3: FStStrNoPop var_10C
  loc_B2BEE6: ConcatStr
  loc_B2BEE7: FStStrNoPop var_110
  loc_B2BEEA: LitStr "; "
  loc_B2BEED: ConcatStr
  loc_B2BEEE: FStStr var_AC
  loc_B2BEF1: FFreeStr var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_B2BF0E: ILdRf var_AC
  loc_B2BF11: Call EjecutarRsCls(from_stack_1v)
  loc_B2BF16: LitStr "COMMIT;"
  loc_B2BF19: Call EjecutarRsCls(from_stack_1v)
  loc_B2BF1E: LitI2_Byte &HFF
  loc_B2BF20: FStI2 var_86
  loc_B2BF23: ILdRf CodiOrco
  loc_B2BF26: CStrI4
  loc_B2BF28: FStStrNoPop var_E4
  loc_B2BF2B: FLdI2 PeriInfo
  loc_B2BF2E: CStrUI1
  loc_B2BF30: FStStrNoPop var_B0
  loc_B2BF33: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B2BF38: FFreeStr var_B0 = ""
  loc_B2BF3F: ExitProcCbHresult
  loc_B2BF45: LitStr "ROLLBACK;"
  loc_B2BF48: Call EjecutarRsCls(from_stack_1v)
  loc_B2BF4D: LitI4 0
  loc_B2BF52: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B2BF55: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2BF5A: LitI2_Byte 0
  loc_B2BF5C: FStI2 var_86
  loc_B2BF5F: ExitProcCbHresult
  loc_B2BF65: CI4Str
End Function

Public Function ValidaAnular(PeriInfo, CodiOrco) '9ABBBC
  'Data Table: 4314BC
  loc_9ABB30: ZeroRetVal
  loc_9ABB32: LitStr "SELECT CodiItco FROM itemcompra WHERE PeriInfo = "
  loc_9ABB35: FLdI2 PeriInfo
  loc_9ABB38: CStrUI1
  loc_9ABB3A: FStStrNoPop var_8C
  loc_9ABB3D: ConcatStr
  loc_9ABB3E: FStStrNoPop var_90
  loc_9ABB41: LitStr " AND CodiOrco = "
  loc_9ABB44: ConcatStr
  loc_9ABB45: FStStrNoPop ValidaAnular
  loc_9ABB48: ILdRf CodiOrco
  loc_9ABB4B: CStrI4
  loc_9ABB4D: FStStrNoPop var_98
  loc_9ABB50: ConcatStr
  loc_9ABB51: FStStrNoPop var_9C
  loc_9ABB54: LitStr " AND IdImpu != 0"
  loc_9ABB57: ConcatStr
  loc_9ABB58: FStStrNoPop var_A0
  loc_9ABB5B: Call EjecutarRsCls(from_stack_1v)
  loc_9ABB60: FFreeStr var_8C = "": var_90 = "": ValidaAnular = "": var_98 = "": var_9C = ""
  loc_9ABB6F: FLdRfVar var_A4
  loc_9ABB72: FLdPr Me
  loc_9ABB75: MemLdPr global_56
  loc_9ABB78:  = Me.RecordCount
  loc_9ABB7D: ILdRf var_A4
  loc_9ABB80: LitI4 0
  loc_9ABB85: GtI4
  loc_9ABB86: BranchF loc_9ABBB4
  loc_9ABB89: LitStr "La Orden de Compra tiene: "
  loc_9ABB8C: FLdRfVar var_A4
  loc_9ABB8F: FLdPr Me
  loc_9ABB92: MemLdPr global_56
  loc_9ABB95:  = Me.RecordCount
  loc_9ABB9A: ILdRf var_A4
  loc_9ABB9D: CStrI4
  loc_9ABB9F: FStStrNoPop var_8C
  loc_9ABBA2: ConcatStr
  loc_9ABBA3: FStStrNoPop var_90
  loc_9ABBA6: LitStr " item/s imputado/s y NO puede anularla. Verifique..."
  loc_9ABBA9: ConcatStr
  loc_9ABBAA: FStStr var_88
  loc_9ABBAD: FFreeStr var_8C = ""
  loc_9ABBB4: ExitProcCbHresult
  loc_9ABBBA: FStStrNoPop ValidaAnular408
End Function

Public Function Anular(PeriInfo, CodiOrco, FeanOrco, BajaMoti) '9EDD28
  'Data Table: 4314BC
  loc_9EDC2C: ILdRf FeanOrco
  loc_9EDC2F: FStStrCopy var_8C
  loc_9EDC32: ILdRf BajaMoti
  loc_9EDC35: FStStrCopy var_90
  loc_9EDC38: OnErrorGoto loc_9EDD0E
  loc_9EDC3B: LitStr "UPDATE ordencompra"
  loc_9EDC3E: LitStr " SET FeanOrco="
  loc_9EDC41: ConcatStr
  loc_9EDC42: FStStrNoPop var_C4
  loc_9EDC45: LitI4 1
  loc_9EDC4A: LitI4 1
  loc_9EDC4F: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_9EDC54: FStVarCopyObj var_C0
  loc_9EDC57: FLdRfVar var_C0
  loc_9EDC5A: FLdRfVar var_8C
  loc_9EDC5D: CVarRef
  loc_9EDC62: ImpAdCallI2 Format$(, )
  loc_9EDC67: FStStrNoPop var_C8
  loc_9EDC6A: ConcatStr
  loc_9EDC6B: FStStrNoPop var_CC
  loc_9EDC6E: LitStr ", BajaUsua='"
  loc_9EDC71: ConcatStr
  loc_9EDC72: FStStrNoPop var_D0
  loc_9EDC75: ImpAdLdI4 MemVar_C3D03C
  loc_9EDC78: ConcatStr
  loc_9EDC79: FStStrNoPop var_D4
  loc_9EDC7C: LitStr "', BajaFeho=Now(), BajaMoti='"
  loc_9EDC7F: ConcatStr
  loc_9EDC80: FStStrNoPop var_D8
  loc_9EDC83: ILdRf var_90
  loc_9EDC86: ConcatStr
  loc_9EDC87: FStStrNoPop var_DC
  loc_9EDC8A: LitStr "'"
  loc_9EDC8D: ConcatStr
  loc_9EDC8E: FStStrNoPop var_E0
  loc_9EDC91: LitStr " WHERE PeriInfo = "
  loc_9EDC94: ConcatStr
  loc_9EDC95: FStStrNoPop var_E4
  loc_9EDC98: FLdI2 PeriInfo
  loc_9EDC9B: CStrUI1
  loc_9EDC9D: FStStrNoPop var_E8
  loc_9EDCA0: ConcatStr
  loc_9EDCA1: FStStrNoPop var_EC
  loc_9EDCA4: LitStr " AND CodiOrco = "
  loc_9EDCA7: ConcatStr
  loc_9EDCA8: FStStrNoPop var_F0
  loc_9EDCAB: FLdI2 CodiOrco
  loc_9EDCAE: CStrUI1
  loc_9EDCB0: FStStrNoPop var_F4
  loc_9EDCB3: ConcatStr
  loc_9EDCB4: FStStrNoPop var_F8
  loc_9EDCB7: LitStr ";"
  loc_9EDCBA: ConcatStr
  loc_9EDCBB: FStStrNoPop var_FC
  loc_9EDCBE: Call EjecutarRsCls(from_stack_1v)
  loc_9EDCC3: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_9EDCE4: FFree1Var var_C0 = ""
  loc_9EDCE7: LitI2_Byte &HFF
  loc_9EDCE9: FStI2 var_86
  loc_9EDCEC: FLdI2 CodiOrco
  loc_9EDCEF: CStrUI1
  loc_9EDCF1: FStStrNoPop var_C8
  loc_9EDCF4: ImpAdLdI2 MemVar_C3D064
  loc_9EDCF7: CStrUI1
  loc_9EDCF9: FStStrNoPop var_C4
  loc_9EDCFC: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9EDD01: FFreeStr var_C4 = ""
  loc_9EDD08: ExitProcCbHresult
  loc_9EDD0E: LitI4 0
  loc_9EDD13: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_9EDD16: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9EDD1B: LitI2_Byte 0
  loc_9EDD1D: FStI2 var_86
  loc_9EDD20: ExitProcCbHresult
  loc_9EDD26: ILdPr
End Function

Public Sub Eliminar() '9B7D34
  'Data Table: 4314BC
  loc_9B7C9C: LitVarStr var_BC, "DELETE FROM ordencompra WHERE PeriInfo="
  loc_9B7CA1: FLdRfVar var_AC
  loc_9B7CA4: FLdRfVar var_9C
  loc_9B7CA7: LitVarStr var_98, "PeriInfo"
  loc_9B7CAC: PopAdLdVar
  loc_9B7CAD: FLdRfVar var_88
  loc_9B7CB0: FLdPr Me
  loc_9B7CB3: MemLdPr RsFrm
  loc_9B7CB6:  = Me.Fields
  loc_9B7CBB: FLdPr var_88
  loc_9B7CBE: from_stack_2 = Me.Item(from_stack_1)
  loc_9B7CC3: FLdPr var_9C
  loc_9B7CC6:  = Me.Value
  loc_9B7CCB: FLdRfVar var_AC
  loc_9B7CCE: ConcatVar var_CC
  loc_9B7CD2: LitVarStr var_DC, " AND CodiOrco="
  loc_9B7CD7: ConcatVar var_EC
  loc_9B7CDB: FLdRfVar var_114
  loc_9B7CDE: FLdRfVar var_104
  loc_9B7CE1: LitVarStr var_100, "CodiOrco"
  loc_9B7CE6: PopAdLdVar
  loc_9B7CE7: FLdRfVar var_F0
  loc_9B7CEA: FLdPr Me
  loc_9B7CED: MemLdPr RsFrm
  loc_9B7CF0:  = Me.Fields
  loc_9B7CF5: FLdPr var_F0
  loc_9B7CF8: from_stack_2 = Me.Item(from_stack_1)
  loc_9B7CFD: FLdPr var_104
  loc_9B7D00:  = Me.Value
  loc_9B7D05: FLdRfVar var_114
  loc_9B7D08: ConcatVar var_124
  loc_9B7D0C: CStrVarVal var_128
  loc_9B7D10: Call EjecutarRsCls(from_stack_1v)
  loc_9B7D15: FFree1Str var_128
  loc_9B7D18: FFreeAd var_88 = "": var_9C = "": var_F0 = ""
  loc_9B7D23: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_114 = ""
  loc_9B7D30: ExitProcHresult
End Sub

Public Function AgregarRecepcion(FechRece, FepaRece, FefaRece, NumeFact, ExpeImpu, ExpeImpuGDE, ItemNotaFlex, HaceRequery) 'B6C0DC
  'Data Table: 4314BC
  loc_B6B5F4: FDupVar
  loc_B6B5FA: FDupVar
  loc_B6B600: FDupVar
  loc_B6B606: ILdRf arg_3C
  loc_B6B609: FStStrCopy var_BC
  loc_B6B60C: ILdRf AgregarRecepcion0
  loc_B6B60F: FStStrCopy var_C0
  loc_B6B612: ILdRf AgregarRecepcion4
  loc_B6B615: FStStrCopy var_C4
  loc_B6B618: OnErrorGoto loc_B6C0C8
  loc_B6B61B: LitStr "START TRANSACTION;"
  loc_B6B61E: Call EjecutarRsCls(from_stack_1v)
  loc_B6B623: LitVarStr var_108, "SELECT IFNULL(Max(CodiRece),0) +1 CodiRece FROM recepcion WHERE PeriInfo = "
  loc_B6B628: FLdRfVar var_F8
  loc_B6B62B: FLdRfVar var_E8
  loc_B6B62E: LitVarStr var_E4, "PeriInfo"
  loc_B6B633: PopAdLdVar
  loc_B6B634: FLdRfVar var_D4
  loc_B6B637: FLdPr Me
  loc_B6B63A: MemLdPr RsFrm
  loc_B6B63D:  = Me.Fields
  loc_B6B642: FLdPr var_D4
  loc_B6B645: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B64A: FLdPr var_E8
  loc_B6B64D:  = Me.Value
  loc_B6B652: FLdRfVar var_F8
  loc_B6B655: ConcatVar var_118
  loc_B6B659: LitVarStr var_128, " AND CodiOrco = "
  loc_B6B65E: ConcatVar var_138
  loc_B6B662: FLdRfVar var_160
  loc_B6B665: FLdRfVar var_150
  loc_B6B668: LitVarStr var_14C, "CodiOrco"
  loc_B6B66D: PopAdLdVar
  loc_B6B66E: FLdRfVar var_13C
  loc_B6B671: FLdPr Me
  loc_B6B674: MemLdPr RsFrm
  loc_B6B677:  = Me.Fields
  loc_B6B67C: FLdPr var_13C
  loc_B6B67F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B684: FLdPr var_150
  loc_B6B687:  = Me.Value
  loc_B6B68C: FLdRfVar var_160
  loc_B6B68F: ConcatVar var_170
  loc_B6B693: LitVarStr var_180, " LIMIT 1;"
  loc_B6B698: ConcatVar var_190
  loc_B6B69C: CStrVarVal var_194
  loc_B6B6A0: Call EjecutarRsCls(from_stack_1v)
  loc_B6B6A5: FFree1Str var_194
  loc_B6B6A8: FFreeAd var_D4 = "": var_E8 = "": var_13C = ""
  loc_B6B6B3: FFreeVar var_F8 = "": var_118 = "": var_138 = "": var_160 = "": var_170 = ""
  loc_B6B6C2: FLdRfVar var_F8
  loc_B6B6C5: FLdRfVar var_E8
  loc_B6B6C8: LitVarStr var_E4, "CodiRece"
  loc_B6B6CD: PopAdLdVar
  loc_B6B6CE: FLdRfVar var_D4
  loc_B6B6D1: FLdPr Me
  loc_B6B6D4: MemLdPr global_56
  loc_B6B6D7:  = Me.Fields
  loc_B6B6DC: FLdPr var_D4
  loc_B6B6DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B6E4: FLdPr var_E8
  loc_B6B6E7:  = Me.Value
  loc_B6B6EC: FLdRfVar var_F8
  loc_B6B6EF: FnCIntVar
  loc_B6B6F1: CI4UI1
  loc_B6B6F2: FStR4 var_CC
  loc_B6B6F5: FFreeAd var_D4 = ""
  loc_B6B6FC: FFree1Var var_F8 = ""
  loc_B6B6FF: LitStr "INSERT INTO recepcion (PeriInfo,CodiOrco,CodiRece,ExpeImpu,ExpeImpuGDE,FechRece,FepaRece,FefaRece,NumeFact,AltaUsua)"
  loc_B6B702: LitStr " VALUES ("
  loc_B6B705: ConcatStr
  loc_B6B706: CVarStr var_118
  loc_B6B709: FLdRfVar var_F8
  loc_B6B70C: FLdRfVar var_E8
  loc_B6B70F: LitVarStr var_E4, "PeriInfo"
  loc_B6B714: PopAdLdVar
  loc_B6B715: FLdRfVar var_D4
  loc_B6B718: FLdPr Me
  loc_B6B71B: MemLdPr RsFrm
  loc_B6B71E:  = Me.Fields
  loc_B6B723: FLdPr var_D4
  loc_B6B726: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B72B: FLdPr var_E8
  loc_B6B72E:  = Me.Value
  loc_B6B733: FLdRfVar var_F8
  loc_B6B736: ConcatVar var_138
  loc_B6B73A: LitVarStr var_108, ","
  loc_B6B73F: ConcatVar var_160
  loc_B6B743: FLdRfVar var_170
  loc_B6B746: FLdRfVar var_150
  loc_B6B749: LitVarStr var_128, "CodiOrco"
  loc_B6B74E: PopAdLdVar
  loc_B6B74F: FLdRfVar var_13C
  loc_B6B752: FLdPr Me
  loc_B6B755: MemLdPr RsFrm
  loc_B6B758:  = Me.Fields
  loc_B6B75D: FLdPr var_13C
  loc_B6B760: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B765: FLdPr var_150
  loc_B6B768:  = Me.Value
  loc_B6B76D: FLdRfVar var_170
  loc_B6B770: ConcatVar var_190
  loc_B6B774: LitVarStr var_14C, ","
  loc_B6B779: ConcatVar var_1A4
  loc_B6B77D: ILdRf var_CC
  loc_B6B780: CVarI4
  loc_B6B784: ConcatVar var_1B4
  loc_B6B788: LitVarStr var_1C4, ",'"
  loc_B6B78D: ConcatVar var_1D4
  loc_B6B791: ILdRf var_C0
  loc_B6B794: CVarStr var_1E4
  loc_B6B797: ConcatVar var_1F4
  loc_B6B79B: LitVarStr var_204, "','"
  loc_B6B7A0: ConcatVar var_214
  loc_B6B7A4: ILdRf var_C4
  loc_B6B7A7: CVarStr var_224
  loc_B6B7AA: ConcatVar var_234
  loc_B6B7AE: LitVarStr var_244, "',"
  loc_B6B7B3: ConcatVar var_254
  loc_B6B7B7: LitI4 1
  loc_B6B7BC: LitI4 1
  loc_B6B7C1: LitVarStr var_264, "'yyyy-mm-dd'"
  loc_B6B7C6: FStVarCopyObj var_274
  loc_B6B7C9: FLdRfVar var_274
  loc_B6B7CC: FLdRfVar var_98
  loc_B6B7CF: ImpAdCallI2 Format$(, )
  loc_B6B7D4: CVarStr var_284
  loc_B6B7D7: ConcatVar var_294
  loc_B6B7DB: LitVarStr var_2A4, ","
  loc_B6B7E0: ConcatVar var_2B4
  loc_B6B7E4: LitI4 1
  loc_B6B7E9: LitI4 1
  loc_B6B7EE: LitVarStr var_2C4, "'yyyy-mm-dd'"
  loc_B6B7F3: FStVarCopyObj var_2D4
  loc_B6B7F6: FLdRfVar var_2D4
  loc_B6B7F9: FLdRfVar var_A8
  loc_B6B7FC: ImpAdCallI2 Format$(, )
  loc_B6B801: CVarStr var_2E4
  loc_B6B804: ConcatVar var_2F4
  loc_B6B808: LitVarStr var_304, ","
  loc_B6B80D: ConcatVar var_314
  loc_B6B811: LitI4 1
  loc_B6B816: LitI4 1
  loc_B6B81B: LitVarStr var_324, "'yyyy-mm-dd'"
  loc_B6B820: FStVarCopyObj var_334
  loc_B6B823: FLdRfVar var_334
  loc_B6B826: FLdRfVar var_B8
  loc_B6B829: ImpAdCallI2 Format$(, )
  loc_B6B82E: CVarStr var_344
  loc_B6B831: ConcatVar var_354
  loc_B6B835: LitVarStr var_364, ",'"
  loc_B6B83A: ConcatVar var_374
  loc_B6B83E: ILdRf var_BC
  loc_B6B841: CVarStr var_384
  loc_B6B844: ConcatVar var_394
  loc_B6B848: LitVarStr var_3A4, "','"
  loc_B6B84D: ConcatVar var_3B4
  loc_B6B851: ImpAdLdI4 MemVar_C3D03C
  loc_B6B854: CVarStr var_3C4
  loc_B6B857: ConcatVar var_3D4
  loc_B6B85B: LitVarStr var_3E4, "');"
  loc_B6B860: ConcatVar var_3F4
  loc_B6B864: CStrVarVal var_194
  loc_B6B868: Call EjecutarRsCls(from_stack_1v)
  loc_B6B86D: FFree1Str var_194
  loc_B6B870: FFreeAd var_D4 = "": var_E8 = "": var_13C = ""
  loc_B6B87B: FFreeVar var_118 = "": var_F8 = "": var_138 = "": var_160 = "": var_170 = "": var_190 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_274 = "": var_254 = "": var_284 = "": var_294 = "": var_2D4 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_334 = "": var_314 = "": var_344 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = ""
  loc_B6B8B8: LitI2_Byte 1
  loc_B6B8BA: FLdRfVar var_C6
  loc_B6B8BD: ILdPr
  loc_B6B8C0: LateIdLdVar var_F8 DispID_4 0
  loc_B6B8C7: CI4Var
  loc_B6B8C9: LitI4 1
  loc_B6B8CE: SubI4
  loc_B6B8CF: CI2I4
  loc_B6B8D0: FFree1Var var_F8 = ""
  loc_B6B8D3: ForI2 var_3F8
  loc_B6B8D9: FLdI2 var_C6
  loc_B6B8DC: CI4UI1
  loc_B6B8DD: CVarI4
  loc_B6B8E1: PopAdLdVar
  loc_B6B8E2: LitVarI4
  loc_B6B8EA: PopAdLdVar
  loc_B6B8EB: ILdPr
  loc_B6B8EE: LateIdCallLdVar
  loc_B6B8F8: PopAd
  loc_B6B8FA: FLdI2 var_C6
  loc_B6B8FD: CI4UI1
  loc_B6B8FE: CVarI4
  loc_B6B902: PopAdLdVar
  loc_B6B903: LitVarI4
  loc_B6B90B: PopAdLdVar
  loc_B6B90C: ILdPr
  loc_B6B90F: LateIdCallLdVar
  loc_B6B919: PopAd
  loc_B6B91B: FLdI2 var_C6
  loc_B6B91E: CI4UI1
  loc_B6B91F: CVarI4
  loc_B6B923: PopAdLdVar
  loc_B6B924: LitVarI4
  loc_B6B92C: PopAdLdVar
  loc_B6B92D: ILdPr
  loc_B6B930: LateIdCallLdVar
  loc_B6B93A: PopAd
  loc_B6B93C: LitStr "INSERT INTO itemrecepcion (PeriInfo,CodiOrco,CodiRece,CodiItco,AlteItco,CodiInsu,CantItre,ImpoItre,AjusItre,CodiPart,CodiOrga,CodiUnga,CodiFifu,IdImpu)"
  loc_B6B93F: LitStr " VALUES ("
  loc_B6B942: ConcatStr
  loc_B6B943: CVarStr var_118
  loc_B6B946: FLdRfVar var_F8
  loc_B6B949: FLdRfVar var_E8
  loc_B6B94C: LitVarStr var_E4, "PeriInfo"
  loc_B6B951: PopAdLdVar
  loc_B6B952: FLdRfVar var_D4
  loc_B6B955: FLdPr Me
  loc_B6B958: MemLdPr RsFrm
  loc_B6B95B:  = Me.Fields
  loc_B6B960: FLdPr var_D4
  loc_B6B963: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B968: FLdPr var_E8
  loc_B6B96B:  = Me.Value
  loc_B6B970: FLdRfVar var_F8
  loc_B6B973: ConcatVar var_138
  loc_B6B977: LitVarStr var_108, ","
  loc_B6B97C: ConcatVar var_160
  loc_B6B980: FLdRfVar var_170
  loc_B6B983: FLdRfVar var_150
  loc_B6B986: LitVarStr var_128, "CodiOrco"
  loc_B6B98B: PopAdLdVar
  loc_B6B98C: FLdRfVar var_13C
  loc_B6B98F: FLdPr Me
  loc_B6B992: MemLdPr RsFrm
  loc_B6B995:  = Me.Fields
  loc_B6B99A: FLdPr var_13C
  loc_B6B99D: from_stack_2 = Me.Item(from_stack_1)
  loc_B6B9A2: FLdPr var_150
  loc_B6B9A5:  = Me.Value
  loc_B6B9AA: FLdRfVar var_170
  loc_B6B9AD: ConcatVar var_190
  loc_B6B9B1: LitVarStr var_14C, ","
  loc_B6B9B6: ConcatVar var_1A4
  loc_B6B9BA: ILdRf var_CC
  loc_B6B9BD: CVarI4
  loc_B6B9C1: ConcatVar var_1B4
  loc_B6B9C5: LitVarStr var_1C4, ","
  loc_B6B9CA: ConcatVar var_1D4
  loc_B6B9CE: FLdI2 var_C6
  loc_B6B9D1: CI4UI1
  loc_B6B9D2: CVarI4
  loc_B6B9D6: PopAdLdVar
  loc_B6B9D7: LitVarI4
  loc_B6B9DF: PopAdLdVar
  loc_B6B9E0: ILdPr
  loc_B6B9E3: LateIdCallLdVar
  loc_B6B9ED: CStrVarTmp
  loc_B6B9EE: CVarStr var_214
  loc_B6B9F1: ConcatVar var_234
  loc_B6B9F5: LitVarStr var_264, ","
  loc_B6B9FA: ConcatVar var_254
  loc_B6B9FE: FLdI2 var_C6
  loc_B6BA01: CI4UI1
  loc_B6BA02: CVarI4
  loc_B6BA06: PopAdLdVar
  loc_B6BA07: LitVarI4
  loc_B6BA0F: PopAdLdVar
  loc_B6BA10: ILdPr
  loc_B6BA13: LateIdCallLdVar
  loc_B6BA1D: CStrVarTmp
  loc_B6BA1E: CVarStr var_284
  loc_B6BA21: ConcatVar var_294
  loc_B6BA25: LitVarStr var_364, ","
  loc_B6BA2A: ConcatVar var_2B4
  loc_B6BA2E: FLdI2 var_C6
  loc_B6BA31: CI4UI1
  loc_B6BA32: CVarI4
  loc_B6BA36: PopAdLdVar
  loc_B6BA37: LitVarI4
  loc_B6BA3F: PopAdLdVar
  loc_B6BA40: ILdPr
  loc_B6BA43: LateIdCallLdVar
  loc_B6BA4D: CStrVarTmp
  loc_B6BA4E: CVarStr var_2E4
  loc_B6BA51: ConcatVar var_2F4
  loc_B6BA55: LitVarStr var_408, ","
  loc_B6BA5A: ConcatVar var_314
  loc_B6BA5E: LitI4 0
  loc_B6BA63: LitI4 -1
  loc_B6BA68: LitI4 1
  loc_B6BA6D: LitStr "."
  loc_B6BA70: LitStr ","
  loc_B6BA73: FLdRfVar var_334
  loc_B6BA76: CStrVarTmp
  loc_B6BA77: FStStrNoPop var_194
  loc_B6BA7A: ImpAdCallI2 Replace(, , , , , )
  loc_B6BA7F: CVarStr var_344
  loc_B6BA82: ConcatVar var_354
  loc_B6BA86: LitVarStr var_458, ","
  loc_B6BA8B: ConcatVar var_374
  loc_B6BA8F: LitI4 0
  loc_B6BA94: LitI4 -1
  loc_B6BA99: LitI4 1
  loc_B6BA9E: LitStr "."
  loc_B6BAA1: LitStr ","
  loc_B6BAA4: FLdRfVar var_394
  loc_B6BAA7: CStrVarTmp
  loc_B6BAA8: FStStrNoPop var_49C
  loc_B6BAAB: ImpAdCallI2 Replace(, , , , , )
  loc_B6BAB0: CVarStr var_3B4
  loc_B6BAB3: ConcatVar var_3D4
  loc_B6BAB7: LitStr ","
  loc_B6BABA: LitI4 0
  loc_B6BABF: LitI4 -1
  loc_B6BAC4: LitI4 1
  loc_B6BAC9: LitStr "."
  loc_B6BACC: LitStr ","
  loc_B6BACF: FLdRfVar var_3F4
  loc_B6BAD2: CStrVarTmp
  loc_B6BAD3: FStStrNoPop var_4E0
  loc_B6BAD6: ImpAdCallI2 Replace(, , , , , )
  loc_B6BADB: FStStrNoPop var_4E4
  loc_B6BADE: ConcatStr
  loc_B6BADF: FStStrNoPop var_4E8
  loc_B6BAE2: LitStr ",'"
  loc_B6BAE5: ConcatStr
  loc_B6BAE6: CVarStr var_4F8
  loc_B6BAE9: ConcatVar var_508
  loc_B6BAED: FLdI2 var_C6
  loc_B6BAF0: CI4UI1
  loc_B6BAF1: CVarI4
  loc_B6BAF5: PopAdLdVar
  loc_B6BAF6: LitVarI4
  loc_B6BAFE: PopAdLdVar
  loc_B6BAFF: ILdPr
  loc_B6BB02: LateIdCallLdVar
  loc_B6BB0C: CStrVarTmp
  loc_B6BB0D: CVarStr var_568
  loc_B6BB10: ConcatVar var_578
  loc_B6BB14: LitVarStr var_588, "','"
  loc_B6BB19: ConcatVar var_598
  loc_B6BB1D: FLdI2 var_C6
  loc_B6BB20: CI4UI1
  loc_B6BB21: CVarI4
  loc_B6BB25: PopAdLdVar
  loc_B6BB26: LitVarI4
  loc_B6BB2E: PopAdLdVar
  loc_B6BB2F: ILdPr
  loc_B6BB32: LateIdCallLdVar
  loc_B6BB3C: CStrVarTmp
  loc_B6BB3D: CVarStr var_5F8
  loc_B6BB40: ConcatVar var_608
  loc_B6BB44: LitVarStr var_618, "',"
  loc_B6BB49: ConcatVar var_628
  loc_B6BB4D: FLdI2 var_C6
  loc_B6BB50: CI4UI1
  loc_B6BB51: CVarI4
  loc_B6BB55: PopAdLdVar
  loc_B6BB56: LitVarI4
  loc_B6BB5E: PopAdLdVar
  loc_B6BB5F: ILdPr
  loc_B6BB62: LateIdCallLdVar
  loc_B6BB6C: CStrVarTmp
  loc_B6BB6D: CVarStr var_688
  loc_B6BB70: ConcatVar var_698
  loc_B6BB74: LitVarStr var_6A8, ",'"
  loc_B6BB79: ConcatVar var_6B8
  loc_B6BB7D: FLdI2 var_C6
  loc_B6BB80: CI4UI1
  loc_B6BB81: CVarI4
  loc_B6BB85: PopAdLdVar
  loc_B6BB86: LitVarI4
  loc_B6BB8E: PopAdLdVar
  loc_B6BB8F: ILdPr
  loc_B6BB92: LateIdCallLdVar
  loc_B6BB9C: CStrVarTmp
  loc_B6BB9D: CVarStr var_718
  loc_B6BBA0: ConcatVar var_728
  loc_B6BBA4: LitVarStr var_738, "',0);"
  loc_B6BBA9: ConcatVar var_748
  loc_B6BBAD: CStrVarVal var_74C
  loc_B6BBB1: Call EjecutarRsCls(from_stack_1v)
  loc_B6BBB6: FFreeStr var_194 = "": var_49C = "": var_4E0 = "": var_4E4 = "": var_4E8 = ""
  loc_B6BBC5: FFreeAd var_D4 = "": var_E8 = "": var_13C = ""
  loc_B6BBD0: FFreeVar var_558 = "": var_508 = "": var_568 = "": var_578 = "": var_5E8 = "": var_598 = "": var_5F8 = "": var_608 = "": var_678 = "": var_628 = "": var_688 = "": var_698 = "": var_708 = "": var_6B8 = "": var_718 = "": var_728 = "": var_748 = "": var_118 = "": var_F8 = "": var_138 = "": var_160 = "": var_170 = "": var_190 = "": var_1A4 = "": var_1B4 = "": var_1F4 = "": var_1D4 = "": var_214 = "": var_234 = "": var_274 = "": var_254 = "": var_284 = "": var_294 = "": var_2D4 = "": var_2B4 = "": var_2E4 = "": var_2F4 = "": var_334 = "": var_314 = "": var_344 = "": var_354 = "": var_394 = "": var_374 = "": var_3B4 = "": var_3F4 = "": var_3D4 = ""
  loc_B6BC31: FLdI2 var_C6
  loc_B6BC34: CI4UI1
  loc_B6BC35: CVarI4
  loc_B6BC39: PopAdLdVar
  loc_B6BC3A: LitVarI4
  loc_B6BC42: PopAdLdVar
  loc_B6BC43: ILdPr
  loc_B6BC46: LateIdCallLdVar
  loc_B6BC50: PopAd
  loc_B6BC52: FLdRfVar var_D0
  loc_B6BC55: NewIfNullRf
  loc_B6BC59: FLdRfVar var_F8
  loc_B6BC5C: CStrVarTmp
  loc_B6BC5D: FStStrNoPop var_194
  loc_B6BC60: ImpAdLdI2 MemVar_C3D064
  loc_B6BC63: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_B6BC68: FFree1Str var_194
  loc_B6BC6B: FFree1Var var_F8 = ""
  loc_B6BC6E: FLdRfVar var_194
  loc_B6BC71: FLdRfVar var_D0
  loc_B6BC74: NewIfNullPr tblpartida
  loc_B6BC77: from_stack_1v = tblpartida.InvePartGet()
  loc_B6BC7C: ILdRf var_194
  loc_B6BC7F: LitStr "Si"
  loc_B6BC82: EqStr
  loc_B6BC84: FFree1Str var_194
  loc_B6BC87: BranchF loc_B6BD13
  loc_B6BC8A: FLdI2 var_C6
  loc_B6BC8D: CI4UI1
  loc_B6BC8E: CVarI4
  loc_B6BC92: PopAdLdVar
  loc_B6BC93: LitVarI4
  loc_B6BC9B: PopAdLdVar
  loc_B6BC9C: ILdPr
  loc_B6BC9F: LateIdCallLdVar
  loc_B6BCA9: PopAd
  loc_B6BCAB: FLdI2 var_C6
  loc_B6BCAE: CI4UI1
  loc_B6BCAF: CVarI4
  loc_B6BCB3: PopAdLdVar
  loc_B6BCB4: LitVarI4
  loc_B6BCBC: PopAdLdVar
  loc_B6BCBD: ILdPr
  loc_B6BCC0: LateIdCallLdVar
  loc_B6BCCA: PopAd
  loc_B6BCCC: LitI4 0
  loc_B6BCD1: LitStr "El Item: "
  loc_B6BCD4: FLdRfVar var_F8
  loc_B6BCD7: CStrVarTmp
  loc_B6BCD8: FStStrNoPop var_194
  loc_B6BCDB: ConcatStr
  loc_B6BCDC: FStStrNoPop var_49C
  loc_B6BCDF: LitStr " - Alternativa: "
  loc_B6BCE2: ConcatStr
  loc_B6BCE3: FStStrNoPop var_4E0
  loc_B6BCE6: FLdRfVar var_118
  loc_B6BCE9: CStrVarTmp
  loc_B6BCEA: FStStrNoPop var_4E4
  loc_B6BCED: ConcatStr
  loc_B6BCEE: FStStrNoPop var_4E8
  loc_B6BCF1: LitStr " es Inventariable."
  loc_B6BCF4: ConcatStr
  loc_B6BCF5: FStStrNoPop var_74C
  loc_B6BCF8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B6BCFD: FFreeStr var_194 = "": var_49C = "": var_4E0 = "": var_4E4 = "": var_4E8 = ""
  loc_B6BD0C: FFreeVar var_F8 = ""
  loc_B6BD13: FLdRfVar var_C6
  loc_B6BD16: NextI2 var_3F8, loc_B6B8D9
  loc_B6BD1B: LitI2_Byte 0
  loc_B6BD1D: BranchF loc_B6C02D
  loc_B6BD20: LitVarStr var_108, "O.C.: "
  loc_B6BD25: FLdRfVar var_F8
  loc_B6BD28: FLdRfVar var_E8
  loc_B6BD2B: LitVarStr var_E4, "CodiOrco"
  loc_B6BD30: PopAdLdVar
  loc_B6BD31: FLdRfVar var_D4
  loc_B6BD34: FLdPr Me
  loc_B6BD37: MemLdPr RsFrm
  loc_B6BD3A:  = Me.Fields
  loc_B6BD3F: FLdPr var_D4
  loc_B6BD42: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BD47: FLdPr var_E8
  loc_B6BD4A:  = Me.Value
  loc_B6BD4F: FLdRfVar var_F8
  loc_B6BD52: ConcatVar var_118
  loc_B6BD56: LitVarStr var_128, ", Proveedor: "
  loc_B6BD5B: ConcatVar var_138
  loc_B6BD5F: FLdRfVar var_160
  loc_B6BD62: FLdRfVar var_150
  loc_B6BD65: LitVarStr var_14C, "CucuPers"
  loc_B6BD6A: PopAdLdVar
  loc_B6BD6B: FLdRfVar var_13C
  loc_B6BD6E: FLdPr Me
  loc_B6BD71: MemLdPr RsFrm
  loc_B6BD74:  = Me.Fields
  loc_B6BD79: FLdPr var_13C
  loc_B6BD7C: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BD81: FLdPr var_150
  loc_B6BD84:  = Me.Value
  loc_B6BD89: FLdRfVar var_160
  loc_B6BD8C: ConcatVar var_170
  loc_B6BD90: LitVarStr var_180, " - "
  loc_B6BD95: ConcatVar var_190
  loc_B6BD99: FLdRfVar var_1A4
  loc_B6BD9C: FLdRfVar var_758
  loc_B6BD9F: LitVarStr var_1C4, "DetaProv"
  loc_B6BDA4: PopAdLdVar
  loc_B6BDA5: FLdRfVar var_754
  loc_B6BDA8: FLdPr Me
  loc_B6BDAB: MemLdPr RsFrm
  loc_B6BDAE:  = Me.Fields
  loc_B6BDB3: FLdPr var_754
  loc_B6BDB6: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BDBB: FLdPr var_758
  loc_B6BDBE:  = Me.Value
  loc_B6BDC3: FLdRfVar var_1A4
  loc_B6BDC6: ConcatVar var_1B4
  loc_B6BDCA: LitVarStr var_1E4, ", "
  loc_B6BDCF: ConcatVar var_1D4
  loc_B6BDD3: ILdRf var_BC
  loc_B6BDD6: CVarStr var_204
  loc_B6BDD9: ConcatVar var_1F4
  loc_B6BDDD: LitVarStr var_224, " .-"
  loc_B6BDE2: ConcatVar var_214
  loc_B6BDE6: CStrVarTmp
  loc_B6BDE7: FStStr var_750
  loc_B6BDEA: FFreeAd var_D4 = "": var_E8 = "": var_13C = "": var_150 = "": var_754 = ""
  loc_B6BDF9: FFreeVar var_F8 = "": var_118 = "": var_138 = "": var_160 = "": var_170 = "": var_190 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = ""
  loc_B6BE12: LitStr "UPDATE gdoc.expediente SET ObseExpe = Left(Concat(ObseExpe,char(13),char(10),'"
  loc_B6BE15: ILdRf var_750
  loc_B6BE18: ConcatStr
  loc_B6BE19: FStStrNoPop var_194
  loc_B6BE1C: LitStr "'),10000)"
  loc_B6BE1F: ConcatStr
  loc_B6BE20: FStStrNoPop var_49C
  loc_B6BE23: LitStr " WHERE PeriInfo = "
  loc_B6BE26: ConcatStr
  loc_B6BE27: CVarStr var_118
  loc_B6BE2A: FLdRfVar var_F8
  loc_B6BE2D: FLdRfVar var_E8
  loc_B6BE30: LitVarStr var_E4, "PeriInfo"
  loc_B6BE35: PopAdLdVar
  loc_B6BE36: FLdRfVar var_D4
  loc_B6BE39: FLdPr Me
  loc_B6BE3C: MemLdPr RsFrm
  loc_B6BE3F:  = Me.Fields
  loc_B6BE44: FLdPr var_D4
  loc_B6BE47: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BE4C: FLdPr var_E8
  loc_B6BE4F:  = Me.Value
  loc_B6BE54: FLdRfVar var_F8
  loc_B6BE57: ConcatVar var_138
  loc_B6BE5B: LitVarStr var_108, " AND CodiTido = 1 AND CodiExpe = '"
  loc_B6BE60: ConcatVar var_160
  loc_B6BE64: LitI4 1
  loc_B6BE69: ILdRf var_C0
  loc_B6BE6C: LitStr "/"
  loc_B6BE6F: LitI4 0
  loc_B6BE74: FnInStr4
  loc_B6BE76: LitI4 1
  loc_B6BE7B: SubI4
  loc_B6BE7C: CVarI4
  loc_B6BE80: LitI4 1
  loc_B6BE85: ILdRf var_C0
  loc_B6BE88: ImpAdCallI2 Mid$(, , )
  loc_B6BE8D: CVarStr var_190
  loc_B6BE90: ConcatVar var_1A4
  loc_B6BE94: LitVarStr var_14C, "' AND AnexExpe = 0; "
  loc_B6BE99: ConcatVar var_1B4
  loc_B6BE9D: LitVarStr var_180, "INSERT INTO gdoc.modifexpe (PeriInfo,CodiTido,CodiExpe,AnexExpe,NumeMoex,DetaMoex,AltaUsua,AltaFeho)"
  loc_B6BEA2: ConcatVar var_1D4
  loc_B6BEA6: LitVarStr var_1C4, " VALUES ("
  loc_B6BEAB: ConcatVar var_1F4
  loc_B6BEAF: FLdRfVar var_214
  loc_B6BEB2: FLdRfVar var_150
  loc_B6BEB5: LitVarStr var_1E4, "PeriInfo"
  loc_B6BEBA: PopAdLdVar
  loc_B6BEBB: FLdRfVar var_13C
  loc_B6BEBE: FLdPr Me
  loc_B6BEC1: MemLdPr RsFrm
  loc_B6BEC4:  = Me.Fields
  loc_B6BEC9: FLdPr var_13C
  loc_B6BECC: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BED1: FLdPr var_150
  loc_B6BED4:  = Me.Value
  loc_B6BED9: FLdRfVar var_214
  loc_B6BEDC: ConcatVar var_234
  loc_B6BEE0: LitVarStr var_204, ",1,'"
  loc_B6BEE5: ConcatVar var_254
  loc_B6BEE9: LitI4 1
  loc_B6BEEE: ILdRf var_C0
  loc_B6BEF1: LitStr "/"
  loc_B6BEF4: LitI4 0
  loc_B6BEF9: FnInStr4
  loc_B6BEFB: LitI4 1
  loc_B6BF00: SubI4
  loc_B6BF01: CVarI4
  loc_B6BF05: LitI4 1
  loc_B6BF0A: ILdRf var_C0
  loc_B6BF0D: ImpAdCallI2 Mid$(, , )
  loc_B6BF12: CVarStr var_284
  loc_B6BF15: ConcatVar var_294
  loc_B6BF19: LitVarStr var_244, "',0,"
  loc_B6BF1E: ConcatVar var_2B4
  loc_B6BF22: LitVarStr var_264, " (SELECT IFNULL(Max(NumeMoex),0)+1 AS NumeMoex FROM gdoc.modifexpe AS m WHERE PeriInfo = "
  loc_B6BF27: ConcatVar var_2D4
  loc_B6BF2B: FLdRfVar var_2E4
  loc_B6BF2E: FLdRfVar var_758
  loc_B6BF31: LitVarStr var_2A4, "PeriInfo"
  loc_B6BF36: PopAdLdVar
  loc_B6BF37: FLdRfVar var_754
  loc_B6BF3A: FLdPr Me
  loc_B6BF3D: MemLdPr RsFrm
  loc_B6BF40:  = Me.Fields
  loc_B6BF45: FLdPr var_754
  loc_B6BF48: from_stack_2 = Me.Item(from_stack_1)
  loc_B6BF4D: FLdPr var_758
  loc_B6BF50:  = Me.Value
  loc_B6BF55: FLdRfVar var_2E4
  loc_B6BF58: ConcatVar var_2F4
  loc_B6BF5C: LitVarStr var_2C4, " AND CodiTido = 1 AND CodiExpe = '"
  loc_B6BF61: ConcatVar var_314
  loc_B6BF65: LitI4 1
  loc_B6BF6A: ILdRf var_C0
  loc_B6BF6D: LitStr "/"
  loc_B6BF70: LitI4 0
  loc_B6BF75: FnInStr4
  loc_B6BF77: LitI4 1
  loc_B6BF7C: SubI4
  loc_B6BF7D: CVarI4
  loc_B6BF81: LitI4 1
  loc_B6BF86: ILdRf var_C0
  loc_B6BF89: ImpAdCallI2 Mid$(, , )
  loc_B6BF8E: CVarStr var_344
  loc_B6BF91: ConcatVar var_354
  loc_B6BF95: LitVarStr var_324, "' AND AnexExpe = 0)"
  loc_B6BF9A: ConcatVar var_374
  loc_B6BF9E: LitVarStr var_364, " ,'"
  loc_B6BFA3: ConcatVar var_394
  loc_B6BFA7: ILdRf var_750
  loc_B6BFAA: CVarStr var_384
  loc_B6BFAD: ConcatVar var_3B4
  loc_B6BFB1: LitVarStr var_3A4, "','"
  loc_B6BFB6: ConcatVar var_3D4
  loc_B6BFBA: ImpAdLdI4 MemVar_C3D03C
  loc_B6BFBD: CVarStr var_3C4
  loc_B6BFC0: ConcatVar var_3F4
  loc_B6BFC4: LitVarStr var_3E4, "',now());"
  loc_B6BFC9: ConcatVar var_4F8
  loc_B6BFCD: CStrVarVal var_4E0
  loc_B6BFD1: Call EjecutarRsCls(from_stack_1v)
  loc_B6BFD6: FFreeStr var_194 = "": var_49C = ""
  loc_B6BFDF: FFreeAd var_D4 = "": var_E8 = "": var_13C = "": var_150 = "": var_754 = ""
  loc_B6BFEE: FFreeVar var_118 = "": var_F8 = "": var_138 = "": var_170 = "": var_160 = "": var_190 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_274 = "": var_254 = "": var_284 = "": var_294 = "": var_2B4 = "": var_2D4 = "": var_2E4 = "": var_2F4 = "": var_334 = "": var_314 = "": var_344 = "": var_354 = "": var_374 = "": var_394 = "": var_3B4 = "": var_3D4 = "": var_3F4 = ""
  loc_B6C02D: LitStr "COMMIT;"
  loc_B6C030: Call EjecutarRsCls(from_stack_1v)
  loc_B6C035: ILdRf var_CC
  loc_B6C038: CI2I4
  loc_B6C039: FStI2 var_86
  loc_B6C03C: FLdI2 AgregarRecepcionC
  loc_B6C03F: BranchF loc_B6C0C2
  loc_B6C042: FLdRfVar var_F8
  loc_B6C045: FLdRfVar var_E8
  loc_B6C048: LitVarStr var_E4, "PeriInfo"
  loc_B6C04D: PopAdLdVar
  loc_B6C04E: FLdRfVar var_D4
  loc_B6C051: FLdPr Me
  loc_B6C054: MemLdPr RsFrm
  loc_B6C057:  = Me.Fields
  loc_B6C05C: FLdPr var_D4
  loc_B6C05F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6C064: FLdPr var_E8
  loc_B6C067:  = Me.Value
  loc_B6C06C: FLdRfVar var_118
  loc_B6C06F: FLdRfVar var_150
  loc_B6C072: LitVarStr var_108, "CodiOrco"
  loc_B6C077: PopAdLdVar
  loc_B6C078: FLdRfVar var_13C
  loc_B6C07B: FLdPr Me
  loc_B6C07E: MemLdPr RsFrm
  loc_B6C081:  = Me.Fields
  loc_B6C086: FLdPr var_13C
  loc_B6C089: from_stack_2 = Me.Item(from_stack_1)
  loc_B6C08E: FLdPr var_150
  loc_B6C091:  = Me.Value
  loc_B6C096: FLdRfVar var_118
  loc_B6C099: CStrVarTmp
  loc_B6C09A: FStStrNoPop var_49C
  loc_B6C09D: FLdRfVar var_F8
  loc_B6C0A0: CStrVarTmp
  loc_B6C0A1: FStStrNoPop var_194
  loc_B6C0A4: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B6C0A9: FFreeStr var_194 = ""
  loc_B6C0B0: FFreeAd var_D4 = "": var_13C = "": var_E8 = ""
  loc_B6C0BB: FFreeVar var_F8 = ""
  loc_B6C0C2: ExitProcCbHresult
  loc_B6C0C8: LitStr "ROLLBACK;"
  loc_B6C0CB: Call EjecutarRsCls(from_stack_1v)
  loc_B6C0D0: LitI2_Byte 0
  loc_B6C0D2: FStI2 var_86
  loc_B6C0D5: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) '97440C
  'Data Table: 4314BC
  loc_9743E4: ILdRf sSelect
  loc_9743E7: FStStrCopy var_88
  loc_9743EA: FLdPr Me
  loc_9743ED: MemLdRfVar from_stack_1.RsFrm
  loc_9743F0: ILdRf var_88
  loc_9743F3: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9743F8: LitVarStr var_98, "Primary"
  loc_9743FD: PopAdLdVar
  loc_9743FE: FLdPr Me
  loc_974401: LateIdCall
  loc_974409: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95ADA4
  'Data Table: 4314BC
  loc_95AD8C: ILdRf sSelect
  loc_95AD8F: FStStrCopy var_88
  loc_95AD92: FLdPr Me
  loc_95AD95: MemLdRfVar from_stack_1.global_56
  loc_95AD98: ILdRf var_88
  loc_95AD9B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95ADA0: ExitProcHresult
End Sub

Public Sub Requery() '968F20
  'Data Table: 4314BC
  loc_968F00: FLdPr Me
  loc_968F03: MemLdRfVar from_stack_1.RsFrm
  loc_968F06: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_968F0B: LitVarStr var_94, "Primary"
  loc_968F10: PopAdLdVar
  loc_968F11: FLdPr Me
  loc_968F14: LateIdCall
  loc_968F1C: ExitProcHresult
End Sub

Public Property Get DataSource() '9745D4
  'Data Table: 4314BC
  loc_9745B0: ZeroRetVal
  loc_9745B2: FLdRfVar var_8C
  loc_9745B5: FLdPr Me
  loc_9745B8: MemLdPr RsFrm
  loc_9745BB:  = Me.DataSource
  loc_9745C0: ILdRf var_8C
  loc_9745C3: CastAd
  loc_9745C6: FStAdFunc var_88
  loc_9745C9: FFree1Ad var_8C
  loc_9745CC: ExitProcCbHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiOrco) '9EF1AC
  'Data Table: 4314BC
  loc_9EF086: ILdRf PeriInfo
  loc_9EF089: FStStrCopy var_88
  loc_9EF08C: ILdRf CodiOrco
  loc_9EF08F: FStStrCopy var_8C
  loc_9EF094: On Error Resume Next
  loc_9EF099: FLdPr Me
  loc_9EF09C: MemLdStr RsFrm
  loc_9EF09F: FStAd var_90 
  loc_9EF0A5: ILdRf var_88
  loc_9EF0A8: LitStr vbNullString
  loc_9EF0AB: EqStr
  loc_9EF0AD: ILdRf var_8C
  loc_9EF0B0: LitStr vbNullString
  loc_9EF0B3: EqStr
  loc_9EF0B5: AndI4
  loc_9EF0B6: FLdRfVar var_94
  loc_9EF0B9: FLdPr var_90
  loc_9EF0BC:  = Me.RecordCount
  loc_9EF0C1: ILdRf var_94
  loc_9EF0C4: LitI4 0
  loc_9EF0C9: GtI4
  loc_9EF0CA: AndI4
  loc_9EF0CB: FLdRfVar var_98
  loc_9EF0CE: FLdPr var_90
  loc_9EF0D1:  = Me.AbsolutePosition
  loc_9EF0D6: ILdRf var_98
  loc_9EF0D9: LitI4 -3
  loc_9EF0DE: NeI4
  loc_9EF0DF: AndI4
  loc_9EF0E0: BranchF loc_9EF157
  loc_9EF0E5: FLdRfVar var_C0
  loc_9EF0E8: FLdRfVar var_B0
  loc_9EF0EB: LitVarStr var_AC, "PeriInfo"
  loc_9EF0F0: PopAdLdVar
  loc_9EF0F1: FLdRfVar var_9C
  loc_9EF0F4: FLdPr var_90
  loc_9EF0F7:  = Me.Fields
  loc_9EF0FC: FLdPr var_9C
  loc_9EF0FF: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF104: FLdPr var_B0
  loc_9EF107:  = Me.Value
  loc_9EF10C: FLdRfVar var_C0
  loc_9EF10F: CStrVarTmp
  loc_9EF110: FStStr var_88
  loc_9EF113: FFreeAd var_9C = ""
  loc_9EF11A: FFree1Var var_C0 = ""
  loc_9EF11F: FLdRfVar var_C0
  loc_9EF122: FLdRfVar var_B0
  loc_9EF125: LitVarStr var_AC, "CodiOrco"
  loc_9EF12A: PopAdLdVar
  loc_9EF12B: FLdRfVar var_9C
  loc_9EF12E: FLdPr var_90
  loc_9EF131:  = Me.Fields
  loc_9EF136: FLdPr var_9C
  loc_9EF139: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF13E: FLdPr var_B0
  loc_9EF141:  = Me.Value
  loc_9EF146: FLdRfVar var_C0
  loc_9EF149: CStrVarTmp
  loc_9EF14A: FStStr var_8C
  loc_9EF14D: FFreeAd var_9C = ""
  loc_9EF154: FFree1Var var_C0 = ""
  loc_9EF15B: LitNothing
  loc_9EF15D: FStAd var_90 
  loc_9EF163: Call Requery()
  loc_9EF16A: LitStr "PeriInfo = '"
  loc_9EF16D: ILdRf var_88
  loc_9EF170: ConcatStr
  loc_9EF171: FStStrNoPop var_C4
  loc_9EF174: LitStr "'"
  loc_9EF177: ConcatStr
  loc_9EF178: PopTmpLdAdStr
  loc_9EF17C: Call Find(from_stack_1v)
  loc_9EF181: FFreeStr var_C4 = ""
  loc_9EF18A: LitStr "CodiOrco = '"
  loc_9EF18D: ILdRf var_8C
  loc_9EF190: ConcatStr
  loc_9EF191: FStStrNoPop var_C4
  loc_9EF194: LitStr "'"
  loc_9EF197: ConcatStr
  loc_9EF198: PopTmpLdAdStr
  loc_9EF19C: Call Find(from_stack_1v)
  loc_9EF1A1: FFreeStr var_C4 = ""
  loc_9EF1AA: ExitProcHresult
End Sub

Public Function BuscaDeudaComercio(CucuPers) 'AA7D80
  'Data Table: 4314BC
  loc_AA78E4: ILdRf CucuPers
  loc_AA78E7: FStStrCopy var_8C
  loc_AA78EA: ZeroRetVal
  loc_AA78EC: LitStr "Municipalidad de Guaymallén"
  loc_AA78EF: FStStrCopy var_90
  loc_AA78F2: ILdRf var_90
  loc_AA78F5: LitStr "Municipalidad de Malargüe"
  loc_AA78F8: EqStr
  loc_AA78FA: BranchF loc_AA7953
  loc_AA78FD: LitStr "SELECT CodiCome"
  loc_AA7900: LitStr " FROM recaudacion.comercio"
  loc_AA7903: ConcatStr
  loc_AA7904: FStStrNoPop BuscaDeudaComercio
  loc_AA7907: LitStr " WHERE CucuCome = '"
  loc_AA790A: ConcatStr
  loc_AA790B: FStStrNoPop var_98
  loc_AA790E: ILdRf var_8C
  loc_AA7911: ConcatStr
  loc_AA7912: FStStrNoPop var_9C
  loc_AA7915: LitStr "'"
  loc_AA7918: ConcatStr
  loc_AA7919: FStStrNoPop var_A0
  loc_AA791C: LitStr " OR CucuPers = '"
  loc_AA791F: ConcatStr
  loc_AA7920: FStStrNoPop var_A4
  loc_AA7923: ILdRf var_8C
  loc_AA7926: ConcatStr
  loc_AA7927: FStStrNoPop var_A8
  loc_AA792A: LitStr "'"
  loc_AA792D: ConcatStr
  loc_AA792E: FStStrNoPop var_AC
  loc_AA7931: LitStr " ORDER BY CodiCome;"
  loc_AA7934: ConcatStr
  loc_AA7935: FStStrNoPop var_B0
  loc_AA7938: Call Proc_21_45_95AC74()
  loc_AA793D: FFreeStr BuscaDeudaComercio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AA7950: Branch loc_AA7A3A
  loc_AA7953: ILdRf var_90
  loc_AA7956: LitStr "Municipalidad de San Carlos"
  loc_AA7959: EqStr
  loc_AA795B: BranchT loc_AA797F
  loc_AA795E: ILdRf var_90
  loc_AA7961: LitStr "Municipalidad de Lavalle"
  loc_AA7964: EqStr
  loc_AA7966: BranchT loc_AA797F
  loc_AA7969: ILdRf var_90
  loc_AA796C: LitStr "Municipalidad de Rivadavia"
  loc_AA796F: EqStr
  loc_AA7971: BranchT loc_AA797F
  loc_AA7974: ILdRf var_90
  loc_AA7977: LitStr "Municipalidad de Tunuyán"
  loc_AA797A: EqStr
  loc_AA797C: BranchF loc_AA79C3
  loc_AA797F: LitStr "SELECT CuenCtct AS CodiCome"
  loc_AA7982: LitStr " FROM recaudacion.relacion r"
  loc_AA7985: ConcatStr
  loc_AA7986: FStStrNoPop BuscaDeudaComercio
  loc_AA7989: LitStr " WHERE r.CodiOfic = 2"
  loc_AA798C: ConcatStr
  loc_AA798D: FStStrNoPop var_98
  loc_AA7990: LitStr " AND r.CucuPers = '"
  loc_AA7993: ConcatStr
  loc_AA7994: FStStrNoPop var_9C
  loc_AA7997: ILdRf var_8C
  loc_AA799A: ConcatStr
  loc_AA799B: FStStrNoPop var_A0
  loc_AA799E: LitStr "'"
  loc_AA79A1: ConcatStr
  loc_AA79A2: FStStrNoPop var_A4
  loc_AA79A5: LitStr " ORDER BY CuenCtct;"
  loc_AA79A8: ConcatStr
  loc_AA79A9: FStStrNoPop var_A8
  loc_AA79AC: Call Proc_21_45_95AC74()
  loc_AA79B1: FFreeStr BuscaDeudaComercio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AA79C0: Branch loc_AA7A3A
  loc_AA79C3: ILdRf var_90
  loc_AA79C6: LitStr "Municipalidad de General Alvear"
  loc_AA79C9: EqStr
  loc_AA79CB: BranchT loc_AA79D9
  loc_AA79CE: ILdRf var_90
  loc_AA79D1: LitStr "Municipalidad de Guaymallén"
  loc_AA79D4: EqStr
  loc_AA79D6: BranchF loc_AA7A1D
  loc_AA79D9: LitStr "SELECT CuenCtct AS CodiCome"
  loc_AA79DC: LitStr " FROM recaudacion.relacion r"
  loc_AA79DF: ConcatStr
  loc_AA79E0: FStStrNoPop BuscaDeudaComercio
  loc_AA79E3: LitStr " WHERE r.CodiOfic = 2"
  loc_AA79E6: ConcatStr
  loc_AA79E7: FStStrNoPop var_98
  loc_AA79EA: LitStr " AND r.CucuPers = '"
  loc_AA79ED: ConcatStr
  loc_AA79EE: FStStrNoPop var_9C
  loc_AA79F1: ILdRf var_8C
  loc_AA79F4: ConcatStr
  loc_AA79F5: FStStrNoPop var_A0
  loc_AA79F8: LitStr "'"
  loc_AA79FB: ConcatStr
  loc_AA79FC: FStStrNoPop var_A4
  loc_AA79FF: LitStr " ORDER BY CuenCtct;"
  loc_AA7A02: ConcatStr
  loc_AA7A03: FStStrNoPop var_A8
  loc_AA7A06: Call Proc_21_45_95AC74()
  loc_AA7A0B: FFreeStr BuscaDeudaComercio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AA7A1A: Branch loc_AA7A3A
  loc_AA7A1D: LitStr "SELECT * "
  loc_AA7A20: LitStr " FROM imputacion "
  loc_AA7A23: ConcatStr
  loc_AA7A24: FStStrNoPop BuscaDeudaComercio
  loc_AA7A27: LitStr " WHERE PeriInfo = 0"
  loc_AA7A2A: ConcatStr
  loc_AA7A2B: FStStrNoPop var_98
  loc_AA7A2E: Call Proc_21_45_95AC74()
  loc_AA7A33: FFreeStr BuscaDeudaComercio = ""
  loc_AA7A3A: FLdRfVar var_B4
  loc_AA7A3D: FLdPr Me
  loc_AA7A40: MemLdPr global_64
  loc_AA7A43:  = Me.RecordCount
  loc_AA7A48: ILdRf var_B4
  loc_AA7A4B: LitI4 0
  loc_AA7A50: GtI4
  loc_AA7A51: BranchF loc_AA7CE9
  loc_AA7A54: FLdPr Me
  loc_AA7A57: MemLdPr global_64
  loc_AA7A5A: Me.MoveFirst
  loc_AA7A5F: FLdRfVar var_B6
  loc_AA7A62: FLdPr Me
  loc_AA7A65: MemLdPr global_64
  loc_AA7A68:  = Me.EOF
  loc_AA7A6D: FLdI2 var_B6
  loc_AA7A70: NotI4
  loc_AA7A71: BranchF loc_AA7CE6
  loc_AA7A74: LitStr "Municipalidad de Guaymallén"
  loc_AA7A77: FStStrCopy var_BC
  loc_AA7A7A: ILdRf var_BC
  loc_AA7A7D: LitStr "Municipalidad de Rivadavia"
  loc_AA7A80: EqStr
  loc_AA7A82: BranchF loc_AA7CD8
  loc_AA7A85: LitStr "SET @fecha=current_date();"
  loc_AA7A88: Call EjecutarRsCls(from_stack_1v)
  loc_AA7A8D: LitStr "SELECT @porcinte:=PorcInte FROM recaudacion.interes WHERE FechInte >= @fecha ORDER BY FechInte LIMIT 1; "
  loc_AA7A90: LitStr " DROP TEMPORARY TABLE IF EXISTS tmpctacteinte;"
  loc_AA7A93: ConcatStr
  loc_AA7A94: FStStrNoPop BuscaDeudaComercio
  loc_AA7A97: LitStr " CREATE TEMPORARY TABLE tmpctacteinte "
  loc_AA7A9A: ConcatStr
  loc_AA7A9B: FStStrNoPop var_98
  loc_AA7A9E: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, "
  loc_AA7AA1: ConcatStr
  loc_AA7AA2: FStStrNoPop var_9C
  loc_AA7AA5: LitStr " if(@fecha>FeveCtCt,(@porcinte - interes.PorcInte),0) as InteCtct"
  loc_AA7AA8: ConcatStr
  loc_AA7AA9: FStStrNoPop var_A0
  loc_AA7AAC: LitStr " FROM recaudacion.ctacte"
  loc_AA7AAF: ConcatStr
  loc_AA7AB0: FStStrNoPop var_A4
  loc_AA7AB3: LitStr " LEFT JOIN recaudacion.interes ON FeveCtct <= FechInte "
  loc_AA7AB6: ConcatStr
  loc_AA7AB7: FStStrNoPop var_A8
  loc_AA7ABA: LitStr " WHERE CodiOfic = 2 AND CuenCtct = '"
  loc_AA7ABD: ConcatStr
  loc_AA7ABE: CVarStr var_F4
  loc_AA7AC1: FLdRfVar var_E4
  loc_AA7AC4: FLdRfVar var_D4
  loc_AA7AC7: LitVarStr var_D0, "CodiCome"
  loc_AA7ACC: PopAdLdVar
  loc_AA7ACD: FLdRfVar var_C0
  loc_AA7AD0: FLdPr Me
  loc_AA7AD3: MemLdPr global_64
  loc_AA7AD6:  = Me.Fields
  loc_AA7ADB: FLdPr var_C0
  loc_AA7ADE: from_stack_2 = Me.Item(from_stack_1)
  loc_AA7AE3: FLdPr var_D4
  loc_AA7AE6:  = Me.Value
  loc_AA7AEB: FLdRfVar var_E4
  loc_AA7AEE: ConcatVar var_104
  loc_AA7AF2: LitVarStr var_114, "' GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_AA7AF7: ConcatVar var_124
  loc_AA7AFB: LitVarStr var_134, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct, interes.FechInte Desc; "
  loc_AA7B00: ConcatVar var_144
  loc_AA7B04: LitVarStr var_154, " DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_AA7B09: ConcatVar var_164
  loc_AA7B0D: LitVarStr var_174, " CREATE TEMPORARY TABLE tmp"
  loc_AA7B12: ConcatVar var_184
  loc_AA7B16: LitVarStr var_194, " SELECT (sum(DebeCtct)-sum(CredCtct)) as SaldCtct, "
  loc_AA7B1B: ConcatVar var_1A4
  loc_AA7B1F: LitVarStr var_1B4, " if(((sum(DebeCtct)-sum(CredCtct))>0)and(@fecha>FeveCtCt), ROUND((sum(DebeCtct)-sum(CredCtct)) * tmpctacteinte.InteCtct,2),0) as RecaCtct, "
  loc_AA7B24: ConcatVar var_1C4
  loc_AA7B28: LitVarStr var_1D4, " ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.NumeCtct, ctacte.MoviCtct, ctacte.PeriBole, "
  loc_AA7B2D: ConcatVar var_1E4
  loc_AA7B31: LitVarStr var_1F4, " ctacte.NumeBole, ctacte.BimeCtct, ctacte.FealCtct, ctacte.FeveCtct, ctacte.FeenAcpa, ctacte.NumeAcpa, ctacte.PeriInfo, ctacte.CodiConc, "
  loc_AA7B36: ConcatVar var_204
  loc_AA7B3A: LitVarStr var_214, " ctacte.CodiFapa, ctacte.CuotDefa, ctacte.NumeApre, ctacte.CodiTimo, ctacte.ExpeCtct, ctacte.DetaCtct, ctacte.DebeCtct, ctacte.CredCtct, ctacte.CodiUsua, 'No' as SeleCtct, 'Si' as ApdeCtct "
  loc_AA7B3F: ConcatVar var_224
  loc_AA7B43: LitVarStr var_234, " FROM recaudacion.ctacte"
  loc_AA7B48: ConcatVar var_244
  loc_AA7B4C: LitVarStr var_254, " INNER JOIN tmpctacteinte  ON tmpctacteinte.CodiOfic = ctacte.CodiOfic AND tmpctacteinte.CuenCtct = ctacte.CuenCtct AND tmpctacteinte.PeriCtct = ctacte.PeriCtct AND  tmpctacteinte.BimeCtct = ctacte.BimeCtct AND tmpctacteinte.NumeCtct = ctacte.NumeCtct"
  loc_AA7B51: ConcatVar var_264
  loc_AA7B55: LitVarStr var_274, " WHERE ctacte.CodiOfic = 2 AND ctacte.CuenCtct = '"
  loc_AA7B5A: ConcatVar var_284
  loc_AA7B5E: FLdRfVar var_2AC
  loc_AA7B61: FLdRfVar var_29C
  loc_AA7B64: LitVarStr var_298, "CodiCome"
  loc_AA7B69: PopAdLdVar
  loc_AA7B6A: FLdRfVar var_288
  loc_AA7B6D: FLdPr Me
  loc_AA7B70: MemLdPr global_64
  loc_AA7B73:  = Me.Fields
  loc_AA7B78: FLdPr var_288
  loc_AA7B7B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA7B80: FLdPr var_29C
  loc_AA7B83:  = Me.Value
  loc_AA7B88: FLdRfVar var_2AC
  loc_AA7B8B: ConcatVar var_2BC
  loc_AA7B8F: LitVarStr var_2CC, "'"
  loc_AA7B94: ConcatVar var_2DC
  loc_AA7B98: LitVarStr var_2EC, " AND FeveCtct <= @fecha"
  loc_AA7B9D: ConcatVar var_2FC
  loc_AA7BA1: LitVarStr var_30C, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_AA7BA6: ConcatVar var_31C
  loc_AA7BAA: LitVarStr var_32C, " HAVING SaldCtct > 0"
  loc_AA7BAF: ConcatVar var_33C
  loc_AA7BB3: LitVarStr var_34C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct;"
  loc_AA7BB8: ConcatVar var_35C
  loc_AA7BBC: CStrVarVal var_AC
  loc_AA7BC0: Call EjecutarRsCls(from_stack_1v)
  loc_AA7BC5: FFreeStr BuscaDeudaComercio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA7BD6: FFreeAd var_C0 = "": var_D4 = "": var_288 = ""
  loc_AA7BE1: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2AC = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = ""
  loc_AA7C10: LitStr "SELECT IFNULL(SUM(SaldCtct),0) SaldCtct"
  loc_AA7C13: LitStr " FROM tmp;"
  loc_AA7C16: ConcatStr
  loc_AA7C17: FStStrNoPop BuscaDeudaComercio
  loc_AA7C1A: Call EjecutarRsCls(from_stack_1v)
  loc_AA7C1F: FFree1Str BuscaDeudaComercio
  loc_AA7C22: FLdRfVar var_B4
  loc_AA7C25: FLdPr Me
  loc_AA7C28: MemLdPr global_56
  loc_AA7C2B:  = Me.RecordCount
  loc_AA7C30: ILdRf var_B4
  loc_AA7C33: LitI4 0
  loc_AA7C38: GtI4
  loc_AA7C39: BranchF loc_AA7CD8
  loc_AA7C3C: FLdPr Me
  loc_AA7C3F: MemLdPr global_56
  loc_AA7C42: Me.MoveFirst
  loc_AA7C47: FLdRfVar var_B6
  loc_AA7C4A: FLdPr Me
  loc_AA7C4D: MemLdPr global_56
  loc_AA7C50:  = Me.EOF
  loc_AA7C55: FLdI2 var_B6
  loc_AA7C58: NotI4
  loc_AA7C59: BranchF loc_AA7CD8
  loc_AA7C5C: ILdRf var_88
  loc_AA7C5F: LitStr vbNullString
  loc_AA7C62: EqStr
  loc_AA7C64: BranchF loc_AA7C6D
  loc_AA7C67: LitStr "0"
  loc_AA7C6A: FStStrCopy var_88
  loc_AA7C6D: FLdRfVar var_E4
  loc_AA7C70: FLdRfVar var_D4
  loc_AA7C73: LitVarStr var_D0, "SaldCtct"
  loc_AA7C78: PopAdLdVar
  loc_AA7C79: FLdRfVar var_C0
  loc_AA7C7C: FLdPr Me
  loc_AA7C7F: MemLdPr global_56
  loc_AA7C82:  = Me.Fields
  loc_AA7C87: FLdPr var_C0
  loc_AA7C8A: from_stack_2 = Me.Item(from_stack_1)
  loc_AA7C8F: FLdPr var_D4
  loc_AA7C92:  = Me.Value
  loc_AA7C97: LitI4 2
  loc_AA7C9C: ILdRf var_88
  loc_AA7C9F: CR8Str
  loc_AA7CA1: FLdRfVar var_E4
  loc_AA7CA4: FnCDblVar
  loc_AA7CA6: AddR8
  loc_AA7CA7: CVarR8
  loc_AA7CAB: FLdRfVar var_104
  loc_AA7CAE: ImpAdCallFPR4  = Round(, )
  loc_AA7CB3: FLdRfVar var_104
  loc_AA7CB6: CStrVarTmp
  loc_AA7CB7: FStStr var_88
  loc_AA7CBA: FFreeAd var_C0 = ""
  loc_AA7CC1: FFreeVar var_E4 = "": var_F4 = ""
  loc_AA7CCA: FLdPr Me
  loc_AA7CCD: MemLdPr global_56
  loc_AA7CD0: Me.MoveNext
  loc_AA7CD5: Branch loc_AA7C47
  loc_AA7CD8: FLdPr Me
  loc_AA7CDB: MemLdPr global_64
  loc_AA7CDE: Me.MoveNext
  loc_AA7CE3: Branch loc_AA7A5F
  loc_AA7CE6: Branch loc_AA7D79
  loc_AA7CE9: LitStr "SELECT *"
  loc_AA7CEC: LitStr " FROM infogov.persona pe"
  loc_AA7CEF: ConcatStr
  loc_AA7CF0: FStStrNoPop BuscaDeudaComercio
  loc_AA7CF3: LitStr " INNER JOIN contpres.proveedor pro ON pro.CucuPers = pe.CucuPers"
  loc_AA7CF6: ConcatStr
  loc_AA7CF7: FStStrNoPop var_98
  loc_AA7CFA: LitStr " AND pro.LocaProv = 0"
  loc_AA7CFD: ConcatStr
  loc_AA7CFE: FStStrNoPop var_9C
  loc_AA7D01: LitStr " WHERE pe.CucuPers = '"
  loc_AA7D04: ConcatStr
  loc_AA7D05: FStStrNoPop var_A0
  loc_AA7D08: ILdRf var_8C
  loc_AA7D0B: ConcatStr
  loc_AA7D0C: FStStrNoPop var_A4
  loc_AA7D0F: LitStr "'"
  loc_AA7D12: ConcatStr
  loc_AA7D13: FStStrNoPop var_A8
  loc_AA7D16: LitStr " AND DecrPers LIKE '" & Chr(37)
  loc_AA7D19: ConcatStr
  loc_AA7D1A: FStStrNoPop var_AC
  loc_AA7D1D: LitStr "Guaymallén"
  loc_AA7D20: ConcatStr
  loc_AA7D21: FStStrNoPop var_B0
  loc_AA7D24: LitStr Chr(37) & "';"
  loc_AA7D27: ConcatStr
  loc_AA7D28: FStStrNoPop var_360
  loc_AA7D2B: Call Proc_21_45_95AC74()
  loc_AA7D30: FFreeStr BuscaDeudaComercio = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AA7D45: FLdRfVar var_B4
  loc_AA7D48: FLdPr Me
  loc_AA7D4B: MemLdPr global_64
  loc_AA7D4E:  = Me.RecordCount
  loc_AA7D53: ILdRf var_B4
  loc_AA7D56: LitI4 0
  loc_AA7D5B: GtI4
  loc_AA7D5C: BranchF loc_AA7D73
  loc_AA7D5F: FLdPr Me
  loc_AA7D62: MemLdPr global_64
  loc_AA7D65: Me.MoveFirst
  loc_AA7D6A: LitStr "SIN registro en COMERCIO..."
  loc_AA7D6D: FStStrCopy var_88
  loc_AA7D70: Branch loc_AA7D79
  loc_AA7D73: LitStr vbNullString
  loc_AA7D76: FStStrCopy var_88
  loc_AA7D79: ExitProcCbHresult
End Function

Public Function BuscaDepaTico(PeriInfo, CodiOrco) 'A171E0
  'Data Table: 4314BC
  loc_A1706C: ILdRf PeriInfo
  loc_A1706F: FStStrCopy var_98
  loc_A17072: ILdRf CodiOrco
  loc_A17075: FStStrCopy var_9C
  loc_A17078: ZeroRetValVar
  loc_A1707A: ILdRf var_98
  loc_A1707D: LitStr vbNullString
  loc_A17080: EqStr
  loc_A17082: ILdRf var_9C
  loc_A17085: LitStr vbNullString
  loc_A17088: EqStr
  loc_A1708A: AndI4
  loc_A1708B: BranchF loc_A17155
  loc_A1708E: FLdRfVar var_A0
  loc_A17091: FLdPr Me
  loc_A17094: MemLdPr RsFrm
  loc_A17097:  = Me.RecordCount
  loc_A1709C: ILdRf var_A0
  loc_A1709F: LitI4 0
  loc_A170A4: GtI4
  loc_A170A5: BranchF loc_A17146
  loc_A170A8: FLdRfVar var_A0
  loc_A170AB: FLdPr Me
  loc_A170AE: MemLdPr RsFrm
  loc_A170B1:  = Me.AbsolutePosition
  loc_A170B6: ILdRf var_A0
  loc_A170B9: LitI4 -3
  loc_A170BE: EqI4
  loc_A170BF: BranchF loc_A170CD
  loc_A170C2: FLdPr Me
  loc_A170C5: MemLdPr RsFrm
  loc_A170C8: Me.MoveFirst
  loc_A170CD: FLdRfVar var_C8
  loc_A170D0: FLdRfVar var_B8
  loc_A170D3: LitVarStr var_B4, "PeriInfo"
  loc_A170D8: PopAdLdVar
  loc_A170D9: FLdRfVar var_A4
  loc_A170DC: FLdPr Me
  loc_A170DF: MemLdPr RsFrm
  loc_A170E2:  = Me.Fields
  loc_A170E7: FLdPr var_A4
  loc_A170EA: from_stack_2 = Me.Item(from_stack_1)
  loc_A170EF: FLdPr var_B8
  loc_A170F2:  = Me.Value
  loc_A170F7: FLdRfVar var_C8
  loc_A170FA: CStrVarTmp
  loc_A170FB: FStStr var_98
  loc_A170FE: FFreeAd var_A4 = ""
  loc_A17105: FFree1Var var_C8 = ""
  loc_A17108: FLdRfVar var_C8
  loc_A1710B: FLdRfVar var_B8
  loc_A1710E: LitVarStr var_B4, "CodiOrco"
  loc_A17113: PopAdLdVar
  loc_A17114: FLdRfVar var_A4
  loc_A17117: FLdPr Me
  loc_A1711A: MemLdPr RsFrm
  loc_A1711D:  = Me.Fields
  loc_A17122: FLdPr var_A4
  loc_A17125: from_stack_2 = Me.Item(from_stack_1)
  loc_A1712A: FLdPr var_B8
  loc_A1712D:  = Me.Value
  loc_A17132: FLdRfVar var_C8
  loc_A17135: CStrVarTmp
  loc_A17136: FStStr var_9C
  loc_A17139: FFreeAd var_A4 = ""
  loc_A17140: FFree1Var var_C8 = ""
  loc_A17143: Branch loc_A17155
  loc_A17146: LitVarI2 var_B4, 0
  loc_A1714B: FStVar BuscaDepaTico
  loc_A1714F: ExitProcCbHresult
  loc_A17155: LitStr "SELECT DipaTico FROM tipocompra LEFT JOIN ordencompra ON ordencompra.CodiTico = tipocompra.CodiTico"
  loc_A17158: LitStr " WHERE PeriInfo = "
  loc_A1715B: ConcatStr
  loc_A1715C: FStStrNoPop var_CC
  loc_A1715F: ILdRf var_98
  loc_A17162: ConcatStr
  loc_A17163: FStStrNoPop var_D0
  loc_A17166: LitStr " AND CodiOrco = "
  loc_A17169: ConcatStr
  loc_A1716A: FStStrNoPop var_D4
  loc_A1716D: ILdRf var_9C
  loc_A17170: ConcatStr
  loc_A17171: FStStrNoPop var_D8
  loc_A17174: Call EjecutarRsCls(from_stack_1v)
  loc_A17179: FFreeStr var_CC = "": var_D0 = "": var_D4 = ""
  loc_A17184: FLdRfVar var_A0
  loc_A17187: FLdPr Me
  loc_A1718A: MemLdPr global_56
  loc_A1718D:  = Me.RecordCount
  loc_A17192: ILdRf var_A0
  loc_A17195: LitI4 0
  loc_A1719A: GtI4
  loc_A1719B: BranchF loc_A171CE
  loc_A1719E: FLdRfVar var_B8
  loc_A171A1: LitVarStr var_B4, "DipaTico"
  loc_A171A6: PopAdLdVar
  loc_A171A7: FLdRfVar var_A4
  loc_A171AA: FLdPr Me
  loc_A171AD: MemLdPr global_56
  loc_A171B0:  = Me.Fields
  loc_A171B5: FLdPr var_A4
  loc_A171B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A171BD: FLdZeroAd var_B8
  loc_A171C0: CVarAd
  loc_A171C4: FStVar BuscaDepaTico
  loc_A171C8: FFree1Ad var_A4
  loc_A171CB: Branch loc_A171D7
  loc_A171CE: LitVarI2 var_B4, 0
  loc_A171D3: FStVar BuscaDepaTico
  loc_A171D7: ExitProcCbHresult
End Function

Public Function UltimaFechImpu(PeriInfo) 'B13224
  'Data Table: 4314BC
  loc_B129D8: ZeroRetVal
  loc_B129DA: ImpAdLdFPR8 MemVar_C3D054
  loc_B129DD: CStrDate
  loc_B129DF: FStStr var_88
  loc_B129E2: ImpAdLdI2 MemVar_C3D048
  loc_B129E5: BranchF loc_B13215
  loc_B129E8: LitStr "SELECT IFNULL(FeproPaco, CONVERT('"
  loc_B129EB: FLdI2 PeriInfo
  loc_B129EE: CStrUI1
  loc_B129F0: FStStrNoPop var_8C
  loc_B129F3: ConcatStr
  loc_B129F4: FStStrNoPop var_90
  loc_B129F7: LitStr "-01-01', DATE)) FeproPaco"
  loc_B129FA: ConcatStr
  loc_B129FB: FStStrNoPop UltimaFechImpu
  loc_B129FE: LitStr " FROM paraconta"
  loc_B12A01: ConcatStr
  loc_B12A02: FStStrNoPop var_98
  loc_B12A05: LitStr " WHERE PeriInfo = "
  loc_B12A08: ConcatStr
  loc_B12A09: FStStrNoPop var_9C
  loc_B12A0C: FLdI2 PeriInfo
  loc_B12A0F: CStrUI1
  loc_B12A11: FStStrNoPop var_A0
  loc_B12A14: ConcatStr
  loc_B12A15: FStStrNoPop var_A4
  loc_B12A18: LitStr ";"
  loc_B12A1B: ConcatStr
  loc_B12A1C: FStStrNoPop var_A8
  loc_B12A1F: Call EjecutarRsCls(from_stack_1v)
  loc_B12A24: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B12A37: FLdRfVar var_AC
  loc_B12A3A: FLdPr Me
  loc_B12A3D: MemLdPr global_56
  loc_B12A40:  = Me.RecordCount
  loc_B12A45: ILdRf var_AC
  loc_B12A48: LitI4 0
  loc_B12A4D: GtI4
  loc_B12A4E: BranchF loc_B12AF6
  loc_B12A51: FLdRfVar var_D4
  loc_B12A54: FLdRfVar var_C4
  loc_B12A57: LitVarStr var_C0, "FeproPaco"
  loc_B12A5C: PopAdLdVar
  loc_B12A5D: FLdRfVar var_B0
  loc_B12A60: FLdPr Me
  loc_B12A63: MemLdPr global_56
  loc_B12A66:  = Me.Fields
  loc_B12A6B: FLdPr var_B0
  loc_B12A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_B12A73: FLdPr var_C4
  loc_B12A76:  = Me.Value
  loc_B12A7B: FLdRfVar var_FC
  loc_B12A7E: FLdRfVar var_EC
  loc_B12A81: LitVarStr var_E8, "FeproPaco"
  loc_B12A86: PopAdLdVar
  loc_B12A87: FLdRfVar var_D8
  loc_B12A8A: FLdPr Me
  loc_B12A8D: MemLdPr global_56
  loc_B12A90:  = Me.Fields
  loc_B12A95: FLdPr var_D8
  loc_B12A98: from_stack_2 = Me.Item(from_stack_1)
  loc_B12A9D: FLdPr var_EC
  loc_B12AA0:  = Me.Value
  loc_B12AA5: FLdRfVar var_FC
  loc_B12AA8: FnCDateVar
  loc_B12AAA: LitI2_Byte 1
  loc_B12AAC: CR8I2
  loc_B12AAD: AddR8
  loc_B12AAE: CDateR8
  loc_B12AAF: CVarDate var_13C
  loc_B12AB3: FLdRfVar var_88
  loc_B12AB6: CVarRef
  loc_B12ABB: ILdRf var_88
  loc_B12ABE: CDateStr
  loc_B12AC0: FLdRfVar var_D4
  loc_B12AC3: FnCDateVar
  loc_B12AC5: LitI2_Byte 1
  loc_B12AC7: CR8I2
  loc_B12AC8: AddR8
  loc_B12AC9: CDateR8
  loc_B12ACA: GtR4
  loc_B12ACB: CVarBoolI2 var_10C
  loc_B12ACF: FLdRfVar var_14C
  loc_B12AD2: ImpAdCallFPR4  = IIf(, , )
  loc_B12AD7: FLdRfVar var_14C
  loc_B12ADA: CStrVarTmp
  loc_B12ADB: FStStr var_88
  loc_B12ADE: FFreeAd var_B0 = "": var_C4 = "": var_D8 = ""
  loc_B12AE9: FFreeVar var_D4 = "": var_FC = "": var_10C = "": var_13C = ""
  loc_B12AF6: LitStr "SELECT FechOrco"
  loc_B12AF9: LitStr " FROM ordencompra"
  loc_B12AFC: ConcatStr
  loc_B12AFD: FStStrNoPop var_8C
  loc_B12B00: LitStr " WHERE PeriInfo = "
  loc_B12B03: ConcatStr
  loc_B12B04: FStStrNoPop var_90
  loc_B12B07: FLdI2 PeriInfo
  loc_B12B0A: CStrUI1
  loc_B12B0C: FStStrNoPop UltimaFechImpu
  loc_B12B0F: ConcatStr
  loc_B12B10: FStStrNoPop var_98
  loc_B12B13: LitStr " AND CodiOrco = "
  loc_B12B16: ConcatStr
  loc_B12B17: CVarStr var_FC
  loc_B12B1A: FLdRfVar var_D4
  loc_B12B1D: FLdRfVar var_C4
  loc_B12B20: LitVarStr var_C0, "CodiOrco"
  loc_B12B25: PopAdLdVar
  loc_B12B26: FLdRfVar var_B0
  loc_B12B29: FLdPr Me
  loc_B12B2C: MemLdPr RsFrm
  loc_B12B2F:  = Me.Fields
  loc_B12B34: FLdPr var_B0
  loc_B12B37: from_stack_2 = Me.Item(from_stack_1)
  loc_B12B3C: FLdPr var_C4
  loc_B12B3F:  = Me.Value
  loc_B12B44: FLdRfVar var_D4
  loc_B12B47: ConcatVar var_13C
  loc_B12B4B: LitVarStr var_E8, ";"
  loc_B12B50: ConcatVar var_14C
  loc_B12B54: CStrVarVal var_9C
  loc_B12B58: Call EjecutarRsCls(from_stack_1v)
  loc_B12B5D: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = ""
  loc_B12B6A: FFreeAd var_B0 = ""
  loc_B12B71: FFreeVar var_FC = "": var_D4 = "": var_13C = ""
  loc_B12B7C: FLdRfVar var_AC
  loc_B12B7F: FLdPr Me
  loc_B12B82: MemLdPr global_56
  loc_B12B85:  = Me.RecordCount
  loc_B12B8A: ILdRf var_AC
  loc_B12B8D: LitI4 0
  loc_B12B92: GtI4
  loc_B12B93: BranchF loc_B1320A
  loc_B12B96: FLdRfVar var_D4
  loc_B12B99: FLdRfVar var_C4
  loc_B12B9C: LitVarStr var_C0, "FechOrco"
  loc_B12BA1: PopAdLdVar
  loc_B12BA2: FLdRfVar var_B0
  loc_B12BA5: FLdPr Me
  loc_B12BA8: MemLdPr global_56
  loc_B12BAB:  = Me.Fields
  loc_B12BB0: FLdPr var_B0
  loc_B12BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B12BB8: FLdPr var_C4
  loc_B12BBB:  = Me.Value
  loc_B12BC0: FLdRfVar var_FC
  loc_B12BC3: FLdRfVar var_EC
  loc_B12BC6: LitVarStr var_E8, "FechOrco"
  loc_B12BCB: PopAdLdVar
  loc_B12BCC: FLdRfVar var_D8
  loc_B12BCF: FLdPr Me
  loc_B12BD2: MemLdPr global_56
  loc_B12BD5:  = Me.Fields
  loc_B12BDA: FLdPr var_D8
  loc_B12BDD: from_stack_2 = Me.Item(from_stack_1)
  loc_B12BE2: FLdPr var_EC
  loc_B12BE5:  = Me.Value
  loc_B12BEA: FLdRfVar var_FC
  loc_B12BED: FnCDateVar
  loc_B12BEF: CVarDate var_13C
  loc_B12BF3: FLdRfVar var_88
  loc_B12BF6: CVarRef
  loc_B12BFB: ILdRf var_88
  loc_B12BFE: CDateStr
  loc_B12C00: FLdRfVar var_D4
  loc_B12C03: FnCDateVar
  loc_B12C05: GtR4
  loc_B12C06: CVarBoolI2 var_10C
  loc_B12C0A: FLdRfVar var_14C
  loc_B12C0D: ImpAdCallFPR4  = IIf(, , )
  loc_B12C12: FLdRfVar var_14C
  loc_B12C15: CStrVarTmp
  loc_B12C16: FStStr var_88
  loc_B12C19: FFreeAd var_B0 = "": var_C4 = "": var_D8 = ""
  loc_B12C24: FFreeVar var_D4 = "": var_FC = "": var_10C = "": var_13C = ""
  loc_B12C31: LitStr "SELECT Max(FechImpu) FechImpu"
  loc_B12C34: LitStr " FROM imputacion"
  loc_B12C37: ConcatStr
  loc_B12C38: FStStrNoPop var_8C
  loc_B12C3B: LitStr " WHERE PeriInfo = "
  loc_B12C3E: ConcatStr
  loc_B12C3F: FStStrNoPop var_90
  loc_B12C42: FLdI2 PeriInfo
  loc_B12C45: CStrUI1
  loc_B12C47: FStStrNoPop UltimaFechImpu
  loc_B12C4A: ConcatStr
  loc_B12C4B: FStStrNoPop var_98
  loc_B12C4E: LitStr " AND CodiNope = "
  loc_B12C51: ConcatStr
  loc_B12C52: CVarStr var_FC
  loc_B12C55: FLdRfVar var_D4
  loc_B12C58: FLdRfVar var_C4
  loc_B12C5B: LitVarStr var_C0, "CodiNope"
  loc_B12C60: PopAdLdVar
  loc_B12C61: FLdRfVar var_B0
  loc_B12C64: FLdPr Me
  loc_B12C67: MemLdPr RsFrm
  loc_B12C6A:  = Me.Fields
  loc_B12C6F: FLdPr var_B0
  loc_B12C72: from_stack_2 = Me.Item(from_stack_1)
  loc_B12C77: FLdPr var_C4
  loc_B12C7A:  = Me.Value
  loc_B12C7F: FLdRfVar var_D4
  loc_B12C82: ConcatVar var_13C
  loc_B12C86: LitVarStr var_E8, " AND DefiImpu != 0"
  loc_B12C8B: ConcatVar var_14C
  loc_B12C8F: LitVarStr var_10C, " ORDER BY FechImpu DESC LIMIT 1;"
  loc_B12C94: ConcatVar var_15C
  loc_B12C98: CStrVarVal var_9C
  loc_B12C9C: Call EjecutarRsCls(from_stack_1v)
  loc_B12CA1: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = ""
  loc_B12CAE: FFreeAd var_B0 = ""
  loc_B12CB5: FFreeVar var_FC = "": var_D4 = "": var_13C = "": var_14C = ""
  loc_B12CC2: FLdRfVar var_C4
  loc_B12CC5: LitVarStr var_C0, "FechImpu"
  loc_B12CCA: PopAdLdVar
  loc_B12CCB: FLdRfVar var_B0
  loc_B12CCE: FLdPr Me
  loc_B12CD1: MemLdPr global_56
  loc_B12CD4:  = Me.Fields
  loc_B12CD9: FLdPr var_B0
  loc_B12CDC: from_stack_2 = Me.Item(from_stack_1)
  loc_B12CE1: FLdZeroAd var_C4
  loc_B12CE4: CVarAd
  loc_B12CE8: ImpAdCallI2 IsNull()
  loc_B12CED: NotI4
  loc_B12CEE: FFree1Ad var_B0
  loc_B12CF1: FFree1Var var_D4 = ""
  loc_B12CF4: BranchF loc_B12D92
  loc_B12CF7: FLdRfVar var_D4
  loc_B12CFA: FLdRfVar var_C4
  loc_B12CFD: LitVarStr var_C0, "FechImpu"
  loc_B12D02: PopAdLdVar
  loc_B12D03: FLdRfVar var_B0
  loc_B12D06: FLdPr Me
  loc_B12D09: MemLdPr global_56
  loc_B12D0C:  = Me.Fields
  loc_B12D11: FLdPr var_B0
  loc_B12D14: from_stack_2 = Me.Item(from_stack_1)
  loc_B12D19: FLdPr var_C4
  loc_B12D1C:  = Me.Value
  loc_B12D21: FLdRfVar var_FC
  loc_B12D24: FLdRfVar var_EC
  loc_B12D27: LitVarStr var_E8, "FechImpu"
  loc_B12D2C: PopAdLdVar
  loc_B12D2D: FLdRfVar var_D8
  loc_B12D30: FLdPr Me
  loc_B12D33: MemLdPr global_56
  loc_B12D36:  = Me.Fields
  loc_B12D3B: FLdPr var_D8
  loc_B12D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B12D43: FLdPr var_EC
  loc_B12D46:  = Me.Value
  loc_B12D4B: FLdRfVar var_FC
  loc_B12D4E: FnCDateVar
  loc_B12D50: CVarDate var_13C
  loc_B12D54: FLdRfVar var_88
  loc_B12D57: CVarRef
  loc_B12D5C: ILdRf var_88
  loc_B12D5F: CDateStr
  loc_B12D61: FLdRfVar var_D4
  loc_B12D64: FnCDateVar
  loc_B12D66: GtR4
  loc_B12D67: CVarBoolI2 var_10C
  loc_B12D6B: FLdRfVar var_14C
  loc_B12D6E: ImpAdCallFPR4  = IIf(, , )
  loc_B12D73: FLdRfVar var_14C
  loc_B12D76: CStrVarTmp
  loc_B12D77: FStStr var_88
  loc_B12D7A: FFreeAd var_B0 = "": var_C4 = "": var_D8 = ""
  loc_B12D85: FFreeVar var_D4 = "": var_FC = "": var_10C = "": var_13C = ""
  loc_B12D92: LitStr "DROP TEMPORARY TABLE if EXISTS tmovi;"
  loc_B12D95: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_B12D98: ConcatStr
  loc_B12D99: FStStrNoPop var_8C
  loc_B12D9C: LitStr " PeriInfo year(4) NOT NULL,"
  loc_B12D9F: ConcatStr
  loc_B12DA0: FStStrNoPop var_90
  loc_B12DA3: LitStr " CodiOrco int(8) unsigned NOT NULL DEFAULT 0,"
  loc_B12DA6: ConcatStr
  loc_B12DA7: FStStrNoPop UltimaFechImpu
  loc_B12DAA: LitStr " CodiNope int(8) unsigned NOT NULL DEFAULT 0,"
  loc_B12DAD: ConcatStr
  loc_B12DAE: FStStrNoPop var_98
  loc_B12DB1: LitStr " CodiItco smallint(4) unsigned NOT NULL DEFAULT 0,"
  loc_B12DB4: ConcatStr
  loc_B12DB5: FStStrNoPop var_9C
  loc_B12DB8: LitStr " saldo decimal(14,2) DEFAULT NULL"
  loc_B12DBB: ConcatStr
  loc_B12DBC: FStStrNoPop var_A0
  loc_B12DBF: LitStr " );"
  loc_B12DC2: ConcatStr
  loc_B12DC3: FStStrNoPop var_A4
  loc_B12DC6: Call EjecutarRsCls(from_stack_1v)
  loc_B12DCB: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B12DDC: LitStr "INSERT INTO tmovi"
  loc_B12DDF: LitStr " SELECT oc.PeriInfo, oc.CodiOrco, oc.CodiNope, itc.CodiItco, SUM(itc.CantItco * itc.ImunItco) saldo"
  loc_B12DE2: ConcatStr
  loc_B12DE3: FStStrNoPop var_8C
  loc_B12DE6: LitStr " FROM ordencompra oc"
  loc_B12DE9: ConcatStr
  loc_B12DEA: FStStrNoPop var_90
  loc_B12DED: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_B12DF0: ConcatStr
  loc_B12DF1: FStStrNoPop UltimaFechImpu
  loc_B12DF4: LitStr " WHERE oc.PeriInfo = "
  loc_B12DF7: ConcatStr
  loc_B12DF8: FStStrNoPop var_98
  loc_B12DFB: FLdI2 PeriInfo
  loc_B12DFE: CStrUI1
  loc_B12E00: FStStrNoPop var_9C
  loc_B12E03: ConcatStr
  loc_B12E04: FStStrNoPop var_A0
  loc_B12E07: LitStr " And oc.CodiOrco = "
  loc_B12E0A: ConcatStr
  loc_B12E0B: CVarStr var_FC
  loc_B12E0E: FLdRfVar var_D4
  loc_B12E11: FLdRfVar var_C4
  loc_B12E14: LitVarStr var_C0, "CodiOrco"
  loc_B12E19: PopAdLdVar
  loc_B12E1A: FLdRfVar var_B0
  loc_B12E1D: FLdPr Me
  loc_B12E20: MemLdPr RsFrm
  loc_B12E23:  = Me.Fields
  loc_B12E28: FLdPr var_B0
  loc_B12E2B: from_stack_2 = Me.Item(from_stack_1)
  loc_B12E30: FLdPr var_C4
  loc_B12E33:  = Me.Value
  loc_B12E38: FLdRfVar var_D4
  loc_B12E3B: ConcatVar var_13C
  loc_B12E3F: LitVarStr var_E8, " GROUP BY oc.PeriInfo, oc.CodiOrco, oc.CodiNope, itc.CodiItco;"
  loc_B12E44: ConcatVar var_14C
  loc_B12E48: CStrVarVal var_A4
  loc_B12E4C: Call EjecutarRsCls(from_stack_1v)
  loc_B12E51: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B12E62: FFreeAd var_B0 = ""
  loc_B12E69: FFreeVar var_FC = "": var_D4 = "": var_13C = ""
  loc_B12E74: LitStr " INSERT INTO tmovi"
  loc_B12E77: LitStr " SELECT oc.PeriInfo, oc.CodiOrco, oc.CodiNope, item, SUM(PrevImpu)*-1 saldo"
  loc_B12E7A: ConcatStr
  loc_B12E7B: FStStrNoPop var_8C
  loc_B12E7E: LitStr " FROM ordencompra oc"
  loc_B12E81: ConcatStr
  loc_B12E82: FStStrNoPop var_90
  loc_B12E85: LitStr " INNER JOIN imputacion i ON i.PeriInfo = oc.PeriInfo AND i.CodiNope = oc.CodiNope"
  loc_B12E88: ConcatStr
  loc_B12E89: FStStrNoPop UltimaFechImpu
  loc_B12E8C: LitStr " WHERE oc.PeriInfo = "
  loc_B12E8F: ConcatStr
  loc_B12E90: FStStrNoPop var_98
  loc_B12E93: FLdI2 PeriInfo
  loc_B12E96: CStrUI1
  loc_B12E98: FStStrNoPop var_9C
  loc_B12E9B: ConcatStr
  loc_B12E9C: FStStrNoPop var_A0
  loc_B12E9F: LitStr " And oc.CodiOrco = "
  loc_B12EA2: ConcatStr
  loc_B12EA3: CVarStr var_FC
  loc_B12EA6: FLdRfVar var_D4
  loc_B12EA9: FLdRfVar var_C4
  loc_B12EAC: LitVarStr var_C0, "CodiOrco"
  loc_B12EB1: PopAdLdVar
  loc_B12EB2: FLdRfVar var_B0
  loc_B12EB5: FLdPr Me
  loc_B12EB8: MemLdPr RsFrm
  loc_B12EBB:  = Me.Fields
  loc_B12EC0: FLdPr var_B0
  loc_B12EC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B12EC8: FLdPr var_C4
  loc_B12ECB:  = Me.Value
  loc_B12ED0: FLdRfVar var_D4
  loc_B12ED3: ConcatVar var_13C
  loc_B12ED7: LitVarStr var_E8, " GROUP BY oc.PeriInfo, oc.CodiOrco, oc.CodiNope, Item;"
  loc_B12EDC: ConcatVar var_14C
  loc_B12EE0: CStrVarVal var_A4
  loc_B12EE4: Call EjecutarRsCls(from_stack_1v)
  loc_B12EE9: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_B12EFA: FFreeAd var_B0 = ""
  loc_B12F01: FFreeVar var_FC = "": var_D4 = "": var_13C = ""
  loc_B12F0C: LitStr "SELECT PeriInfo, CodiOrco, CodiNope, CodiItco, SUM(saldo) saldo"
  loc_B12F0F: LitStr " FROM tmovi"
  loc_B12F12: ConcatStr
  loc_B12F13: FStStrNoPop var_8C
  loc_B12F16: LitStr " GROUP BY PeriInfo, CodiOrco, CodiNope, CodiItco"
  loc_B12F19: ConcatStr
  loc_B12F1A: FStStrNoPop var_90
  loc_B12F1D: LitStr " HAVING saldo > 0;"
  loc_B12F20: ConcatStr
  loc_B12F21: FStStrNoPop UltimaFechImpu
  loc_B12F24: Call EjecutarRsCls(from_stack_1v)
  loc_B12F29: FFreeStr var_8C = "": var_90 = ""
  loc_B12F32: FLdRfVar var_AC
  loc_B12F35: FLdPr Me
  loc_B12F38: MemLdPr global_56
  loc_B12F3B:  = Me.RecordCount
  loc_B12F40: ILdRf var_AC
  loc_B12F43: LitI4 0
  loc_B12F48: GtI4
  loc_B12F49: BranchF loc_B13207
  loc_B12F4C: LitStr "SELECT *"
  loc_B12F4F: LitStr " FROM imputacion"
  loc_B12F52: ConcatStr
  loc_B12F53: FStStrNoPop var_8C
  loc_B12F56: LitStr " WHERE PeriInfo = "
  loc_B12F59: ConcatStr
  loc_B12F5A: FStStrNoPop var_90
  loc_B12F5D: FLdI2 PeriInfo
  loc_B12F60: CStrUI1
  loc_B12F62: FStStrNoPop UltimaFechImpu
  loc_B12F65: ConcatStr
  loc_B12F66: FStStrNoPop var_98
  loc_B12F69: LitStr " AND CodiNope = "
  loc_B12F6C: ConcatStr
  loc_B12F6D: CVarStr var_FC
  loc_B12F70: FLdRfVar var_D4
  loc_B12F73: FLdRfVar var_C4
  loc_B12F76: LitVarStr var_C0, "CodiNope"
  loc_B12F7B: PopAdLdVar
  loc_B12F7C: FLdRfVar var_B0
  loc_B12F7F: FLdPr Me
  loc_B12F82: MemLdPr RsFrm
  loc_B12F85:  = Me.Fields
  loc_B12F8A: FLdPr var_B0
  loc_B12F8D: from_stack_2 = Me.Item(from_stack_1)
  loc_B12F92: FLdPr var_C4
  loc_B12F95:  = Me.Value
  loc_B12F9A: FLdRfVar var_D4
  loc_B12F9D: ConcatVar var_13C
  loc_B12FA1: LitVarStr var_E8, " /*AND DefiImpu != 0*/"
  loc_B12FA6: ConcatVar var_14C
  loc_B12FAA: LitVarStr var_10C, " GROUP BY CodiPart, CodiOrga;"
  loc_B12FAF: ConcatVar var_15C
  loc_B12FB3: CStrVarVal var_9C
  loc_B12FB7: Call EjecutarRsCls(from_stack_1v)
  loc_B12FBC: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = ""
  loc_B12FC9: FFreeAd var_B0 = ""
  loc_B12FD0: FFreeVar var_FC = "": var_D4 = "": var_13C = "": var_14C = ""
  loc_B12FDD: FLdRfVar var_AC
  loc_B12FE0: FLdPr Me
  loc_B12FE3: MemLdPr global_56
  loc_B12FE6:  = Me.RecordCount
  loc_B12FEB: ILdRf var_AC
  loc_B12FEE: LitI4 0
  loc_B12FF3: GtI4
  loc_B12FF4: BranchF loc_B13207
  loc_B12FF7: FLdPr Me
  loc_B12FFA: MemLdPr global_56
  loc_B12FFD: Me.MoveFirst
  loc_B13002: FLdRfVar var_15E
  loc_B13005: FLdPr Me
  loc_B13008: MemLdPr global_56
  loc_B1300B:  = Me.EOF
  loc_B13010: FLdI2 var_15E
  loc_B13013: NotI4
  loc_B13014: BranchF loc_B13207
  loc_B13017: LitStr "SELECT IFNULL(Max(FechAuto),'') FechAuto"
  loc_B1301A: LitStr " FROM autorizado"
  loc_B1301D: ConcatStr
  loc_B1301E: FStStrNoPop var_8C
  loc_B13021: LitStr " WHERE PeriInfo = "
  loc_B13024: ConcatStr
  loc_B13025: FStStrNoPop var_90
  loc_B13028: FLdI2 PeriInfo
  loc_B1302B: CStrUI1
  loc_B1302D: FStStrNoPop UltimaFechImpu
  loc_B13030: ConcatStr
  loc_B13031: FStStrNoPop var_98
  loc_B13034: LitStr " AND CodiPart = (SELECT CredPart FROM partida WHERE PeriInfo = "
  loc_B13037: ConcatStr
  loc_B13038: FStStrNoPop var_9C
  loc_B1303B: FLdI2 PeriInfo
  loc_B1303E: CStrUI1
  loc_B13040: FStStrNoPop var_A0
  loc_B13043: ConcatStr
  loc_B13044: FStStrNoPop var_A4
  loc_B13047: LitStr " AND CodiPart = '"
  loc_B1304A: ConcatStr
  loc_B1304B: CVarStr var_FC
  loc_B1304E: FLdRfVar var_D4
  loc_B13051: FLdRfVar var_C4
  loc_B13054: LitVarStr var_C0, "CodiPart"
  loc_B13059: PopAdLdVar
  loc_B1305A: FLdRfVar var_B0
  loc_B1305D: FLdPr Me
  loc_B13060: MemLdPr global_56
  loc_B13063:  = Me.Fields
  loc_B13068: FLdPr var_B0
  loc_B1306B: from_stack_2 = Me.Item(from_stack_1)
  loc_B13070: FLdPr var_C4
  loc_B13073:  = Me.Value
  loc_B13078: FLdRfVar var_D4
  loc_B1307B: ConcatVar var_13C
  loc_B1307F: LitVarStr var_E8, "')"
  loc_B13084: ConcatVar var_14C
  loc_B13088: LitVarStr var_10C, " AND CodiOrga = (SELECT CredOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_B1308D: ConcatVar var_15C
  loc_B13091: FLdI2 PeriInfo
  loc_B13094: CVarI2 var_11C
  loc_B13097: ConcatVar var_170
  loc_B1309B: LitVarStr var_12C, " AND CodiOrga = '"
  loc_B130A0: ConcatVar var_180
  loc_B130A4: FLdRfVar var_1A0
  loc_B130A7: FLdRfVar var_EC
  loc_B130AA: LitVarStr var_190, "CodiOrga"
  loc_B130AF: PopAdLdVar
  loc_B130B0: FLdRfVar var_D8
  loc_B130B3: FLdPr Me
  loc_B130B6: MemLdPr global_56
  loc_B130B9:  = Me.Fields
  loc_B130BE: FLdPr var_D8
  loc_B130C1: from_stack_2 = Me.Item(from_stack_1)
  loc_B130C6: FLdPr var_EC
  loc_B130C9:  = Me.Value
  loc_B130CE: FLdRfVar var_1A0
  loc_B130D1: ConcatVar var_1B0
  loc_B130D5: LitVarStr var_1C0, "');"
  loc_B130DA: ConcatVar var_1D0
  loc_B130DE: CStrVarVal var_A8
  loc_B130E2: Call Proc_21_44_95AD0C()
  loc_B130E7: FFreeStr var_8C = "": var_90 = "": UltimaFechImpu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B130FA: FFreeAd var_B0 = "": var_C4 = "": var_D8 = ""
  loc_B13105: FFreeVar var_FC = "": var_D4 = "": var_13C = "": var_14C = "": var_15C = "": var_170 = "": var_180 = "": var_1A0 = "": var_1B0 = ""
  loc_B1311C: FLdRfVar var_D4
  loc_B1311F: FLdRfVar var_C4
  loc_B13122: LitVarStr var_C0, "FechAuto"
  loc_B13127: PopAdLdVar
  loc_B13128: FLdRfVar var_B0
  loc_B1312B: FLdPr Me
  loc_B1312E: MemLdPr global_60
  loc_B13131:  = Me.Fields
  loc_B13136: FLdPr var_B0
  loc_B13139: from_stack_2 = Me.Item(from_stack_1)
  loc_B1313E: FLdPr var_C4
  loc_B13141:  = Me.Value
  loc_B13146: FLdRfVar var_D4
  loc_B13149: LitVarStr var_E8, vbNullString
  loc_B1314E: HardType
  loc_B1314F: NeVarBool
  loc_B13151: FFreeAd var_B0 = ""
  loc_B13158: FFree1Var var_D4 = ""
  loc_B1315B: BranchF loc_B131F9
  loc_B1315E: FLdRfVar var_D4
  loc_B13161: FLdRfVar var_C4
  loc_B13164: LitVarStr var_C0, "FechAuto"
  loc_B13169: PopAdLdVar
  loc_B1316A: FLdRfVar var_B0
  loc_B1316D: FLdPr Me
  loc_B13170: MemLdPr global_60
  loc_B13173:  = Me.Fields
  loc_B13178: FLdPr var_B0
  loc_B1317B: from_stack_2 = Me.Item(from_stack_1)
  loc_B13180: FLdPr var_C4
  loc_B13183:  = Me.Value
  loc_B13188: FLdRfVar var_FC
  loc_B1318B: FLdRfVar var_EC
  loc_B1318E: LitVarStr var_E8, "FechAuto"
  loc_B13193: PopAdLdVar
  loc_B13194: FLdRfVar var_D8
  loc_B13197: FLdPr Me
  loc_B1319A: MemLdPr global_60
  loc_B1319D:  = Me.Fields
  loc_B131A2: FLdPr var_D8
  loc_B131A5: from_stack_2 = Me.Item(from_stack_1)
  loc_B131AA: FLdPr var_EC
  loc_B131AD:  = Me.Value
  loc_B131B2: FLdRfVar var_FC
  loc_B131B5: FnCDateVar
  loc_B131B7: CVarDate var_13C
  loc_B131BB: FLdRfVar var_88
  loc_B131BE: CVarRef
  loc_B131C3: ILdRf var_88
  loc_B131C6: CDateStr
  loc_B131C8: FLdRfVar var_D4
  loc_B131CB: FnCDateVar
  loc_B131CD: GtR4
  loc_B131CE: CVarBoolI2 var_10C
  loc_B131D2: FLdRfVar var_14C
  loc_B131D5: ImpAdCallFPR4  = IIf(, , )
  loc_B131DA: FLdRfVar var_14C
  loc_B131DD: CStrVarTmp
  loc_B131DE: FStStr var_88
  loc_B131E1: FFreeAd var_B0 = "": var_C4 = "": var_D8 = ""
  loc_B131EC: FFreeVar var_D4 = "": var_FC = "": var_10C = "": var_13C = ""
  loc_B131F9: FLdPr Me
  loc_B131FC: MemLdPr global_56
  loc_B131FF: Me.MoveNext
  loc_B13204: Branch loc_B13002
  loc_B13207: Branch loc_B13212
  loc_B1320A: ImpAdLdFPR8 MemVar_C3D04C
  loc_B1320D: CStrDate
  loc_B1320F: FStStr var_88
  loc_B13212: Branch loc_B1321D
  loc_B13215: ImpAdLdFPR8 MemVar_C3D04C
  loc_B13218: CStrDate
  loc_B1321A: FStStr var_88
  loc_B1321D: ExitProcCbHresult
End Function

Public Function BuscaSaldoItemNotaPedido(iPeriInfo, lCodiNope, iCodiItno) '9D8278
  'Data Table: 4314BC
  loc_9D81A8: LitStr "SELECT IF(AucaTico=0,fnSaldItno(itn.PeriInfo,itn.CodiNope,itn.CodiItno), ROUND(fnSaldItno(itn.PeriInfo,itn.CodiNope,itn.CodiItno) * CONCAT('1.',AucaTico),2) ) SaldItno"
  loc_9D81AB: LitStr " FROM itemnota itn"
  loc_9D81AE: ConcatStr
  loc_9D81AF: FStStrNoPop var_90
  loc_9D81B2: LitStr " INNER JOIN notapedido np ON np.PeriInfo = itn.PeriInfo AND np.CodiNope = itn.CodiNope"
  loc_9D81B5: ConcatStr
  loc_9D81B6: FStStrNoPop BuscaSaldoItemNotaPedido
  loc_9D81B9: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_9D81BC: ConcatStr
  loc_9D81BD: FStStrNoPop var_98
  loc_9D81C0: LitStr " WHERE itn.PeriInfo = "
  loc_9D81C3: ConcatStr
  loc_9D81C4: FStStrNoPop var_9C
  loc_9D81C7: FLdI2 iPeriInfo
  loc_9D81CA: CStrUI1
  loc_9D81CC: FStStrNoPop var_A0
  loc_9D81CF: ConcatStr
  loc_9D81D0: FStStrNoPop var_A4
  loc_9D81D3: LitStr " AND itn.CodiNope = "
  loc_9D81D6: ConcatStr
  loc_9D81D7: FStStrNoPop var_A8
  loc_9D81DA: ILdRf lCodiNope
  loc_9D81DD: CStrI4
  loc_9D81DF: FStStrNoPop var_AC
  loc_9D81E2: ConcatStr
  loc_9D81E3: FStStrNoPop var_B0
  loc_9D81E6: LitStr " AND CodiItno = "
  loc_9D81E9: ConcatStr
  loc_9D81EA: FStStrNoPop var_B4
  loc_9D81ED: FLdI2 iCodiItno
  loc_9D81F0: CStrUI1
  loc_9D81F2: FStStrNoPop var_B8
  loc_9D81F5: ConcatStr
  loc_9D81F6: FStStrNoPop var_BC
  loc_9D81F9: Call EjecutarRsCls(from_stack_1v)
  loc_9D81FE: FFreeStr var_90 = "": BuscaSaldoItemNotaPedido = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9D8219: FLdRfVar var_C0
  loc_9D821C: FLdPr Me
  loc_9D821F: MemLdPr global_56
  loc_9D8222:  = Me.RecordCount
  loc_9D8227: ILdRf var_C0
  loc_9D822A: LitI4 1
  loc_9D822F: EqI4
  loc_9D8230: BranchF loc_9D826F
  loc_9D8233: FLdRfVar var_E8
  loc_9D8236: FLdRfVar var_D8
  loc_9D8239: LitVarStr var_D4, "SaldItno"
  loc_9D823E: PopAdLdVar
  loc_9D823F: FLdRfVar var_C4
  loc_9D8242: FLdPr Me
  loc_9D8245: MemLdPr global_56
  loc_9D8248:  = Me.Fields
  loc_9D824D: FLdPr var_C4
  loc_9D8250: from_stack_2 = Me.Item(from_stack_1)
  loc_9D8255: FLdPr var_D8
  loc_9D8258:  = Me.Value
  loc_9D825D: FLdRfVar var_E8
  loc_9D8260: FnCDblVar
  loc_9D8262: FStFPR8 var_8C
  loc_9D8265: FFreeAd var_C4 = ""
  loc_9D826C: FFree1Var var_E8 = ""
  loc_9D826F: ExitProcCbHresult
  loc_9D8275: FLdRfVar var_FC
End Function

Public Function BuscaSaldoItemCompra(iPeriInfo, lCodiOrco, iCodiItco, iAlteItco) '9DB828
  'Data Table: 4314BC
  loc_9DB754: LitStr "SELECT fnSaldItco(PeriInfo,CodiOrco,CodiItco,AlteItco) SaldoItem"
  loc_9DB757: LitStr " FROM itemcompra"
  loc_9DB75A: ConcatStr
  loc_9DB75B: FStStrNoPop var_90
  loc_9DB75E: LitStr " WHERE PeriInfo = "
  loc_9DB761: ConcatStr
  loc_9DB762: FStStrNoPop BuscaSaldoItemCompra
  loc_9DB765: FLdI2 iPeriInfo
  loc_9DB768: CStrUI1
  loc_9DB76A: FStStrNoPop var_98
  loc_9DB76D: ConcatStr
  loc_9DB76E: FStStrNoPop var_9C
  loc_9DB771: LitStr " AND CodiOrco = "
  loc_9DB774: ConcatStr
  loc_9DB775: FStStrNoPop var_A0
  loc_9DB778: ILdRf lCodiOrco
  loc_9DB77B: CStrI4
  loc_9DB77D: FStStrNoPop var_A4
  loc_9DB780: ConcatStr
  loc_9DB781: FStStrNoPop var_A8
  loc_9DB784: LitStr " AND CodiItco = "
  loc_9DB787: ConcatStr
  loc_9DB788: FStStrNoPop var_AC
  loc_9DB78B: FLdI2 iCodiItco
  loc_9DB78E: CStrUI1
  loc_9DB790: FStStrNoPop var_B0
  loc_9DB793: ConcatStr
  loc_9DB794: FStStrNoPop var_B4
  loc_9DB797: LitStr " AND AlteItco = "
  loc_9DB79A: ConcatStr
  loc_9DB79B: FStStrNoPop var_B8
  loc_9DB79E: FLdI2 iAlteItco
  loc_9DB7A1: CStrUI1
  loc_9DB7A3: FStStrNoPop var_BC
  loc_9DB7A6: ConcatStr
  loc_9DB7A7: FStStrNoPop var_C0
  loc_9DB7AA: Call EjecutarRsCls(from_stack_1v)
  loc_9DB7AF: FFreeStr var_90 = "": BuscaSaldoItemCompra = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9DB7CC: FLdRfVar var_C4
  loc_9DB7CF: FLdPr Me
  loc_9DB7D2: MemLdPr global_56
  loc_9DB7D5:  = Me.RecordCount
  loc_9DB7DA: ILdRf var_C4
  loc_9DB7DD: LitI4 1
  loc_9DB7E2: EqI4
  loc_9DB7E3: BranchF loc_9DB822
  loc_9DB7E6: FLdRfVar var_EC
  loc_9DB7E9: FLdRfVar var_DC
  loc_9DB7EC: LitVarStr var_D8, "SaldoItem"
  loc_9DB7F1: PopAdLdVar
  loc_9DB7F2: FLdRfVar var_C8
  loc_9DB7F5: FLdPr Me
  loc_9DB7F8: MemLdPr global_56
  loc_9DB7FB:  = Me.Fields
  loc_9DB800: FLdPr var_C8
  loc_9DB803: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB808: FLdPr var_DC
  loc_9DB80B:  = Me.Value
  loc_9DB810: FLdRfVar var_EC
  loc_9DB813: FnCDblVar
  loc_9DB815: FStFPR8 var_8C
  loc_9DB818: FFreeAd var_C8 = ""
  loc_9DB81F: FFree1Var var_EC = ""
  loc_9DB822: ExitProcCbHresult
End Function

Public Function BuscaSaldoItemCompraImporte(iPeriInfo, lCodiOrco, iCodiItco, iAlteItco) '9DB1D4
  'Data Table: 4314BC
  loc_9DB100: LitStr "SELECT fnSaldItcoImpo(PeriInfo,CodiOrco,CodiItco,AlteItco) SaldoItemImpo"
  loc_9DB103: LitStr " FROM itemcompra"
  loc_9DB106: ConcatStr
  loc_9DB107: FStStrNoPop var_90
  loc_9DB10A: LitStr " WHERE PeriInfo = "
  loc_9DB10D: ConcatStr
  loc_9DB10E: FStStrNoPop BuscaSaldoItemCompraImporte
  loc_9DB111: FLdI2 iPeriInfo
  loc_9DB114: CStrUI1
  loc_9DB116: FStStrNoPop var_98
  loc_9DB119: ConcatStr
  loc_9DB11A: FStStrNoPop var_9C
  loc_9DB11D: LitStr " AND CodiOrco = "
  loc_9DB120: ConcatStr
  loc_9DB121: FStStrNoPop var_A0
  loc_9DB124: ILdRf lCodiOrco
  loc_9DB127: CStrI4
  loc_9DB129: FStStrNoPop var_A4
  loc_9DB12C: ConcatStr
  loc_9DB12D: FStStrNoPop var_A8
  loc_9DB130: LitStr " AND CodiItco = "
  loc_9DB133: ConcatStr
  loc_9DB134: FStStrNoPop var_AC
  loc_9DB137: FLdI2 iCodiItco
  loc_9DB13A: CStrUI1
  loc_9DB13C: FStStrNoPop var_B0
  loc_9DB13F: ConcatStr
  loc_9DB140: FStStrNoPop var_B4
  loc_9DB143: LitStr " AND AlteItco = "
  loc_9DB146: ConcatStr
  loc_9DB147: FStStrNoPop var_B8
  loc_9DB14A: FLdI2 iAlteItco
  loc_9DB14D: CStrUI1
  loc_9DB14F: FStStrNoPop var_BC
  loc_9DB152: ConcatStr
  loc_9DB153: FStStrNoPop var_C0
  loc_9DB156: Call EjecutarRsCls(from_stack_1v)
  loc_9DB15B: FFreeStr var_90 = "": BuscaSaldoItemCompraImporte = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9DB178: FLdRfVar var_C4
  loc_9DB17B: FLdPr Me
  loc_9DB17E: MemLdPr global_56
  loc_9DB181:  = Me.RecordCount
  loc_9DB186: ILdRf var_C4
  loc_9DB189: LitI4 1
  loc_9DB18E: EqI4
  loc_9DB18F: BranchF loc_9DB1CE
  loc_9DB192: FLdRfVar var_EC
  loc_9DB195: FLdRfVar var_DC
  loc_9DB198: LitVarStr var_D8, "SaldoItemImpo"
  loc_9DB19D: PopAdLdVar
  loc_9DB19E: FLdRfVar var_C8
  loc_9DB1A1: FLdPr Me
  loc_9DB1A4: MemLdPr global_56
  loc_9DB1A7:  = Me.Fields
  loc_9DB1AC: FLdPr var_C8
  loc_9DB1AF: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB1B4: FLdPr var_DC
  loc_9DB1B7:  = Me.Value
  loc_9DB1BC: FLdRfVar var_EC
  loc_9DB1BF: FnCDblVar
  loc_9DB1C1: FStFPR8 var_8C
  loc_9DB1C4: FFreeAd var_C8 = ""
  loc_9DB1CB: FFree1Var var_EC = ""
  loc_9DB1CE: ExitProcCbHresult
End Function

Public Function BuscaCantidadItemCompra(iPeriInfo, lCodiOrco, iCodiItco) '9C1C4C
  'Data Table: 4314BC
  loc_9C1BA0: LitStr "SELECT CantItco FROM itemcompra WHERE PeriInfo = "
  loc_9C1BA3: FLdI2 iPeriInfo
  loc_9C1BA6: CStrUI1
  loc_9C1BA8: FStStrNoPop var_90
  loc_9C1BAB: ConcatStr
  loc_9C1BAC: FStStrNoPop BuscaCantidadItemCompra
  loc_9C1BAF: LitStr " AND CodiOrco = "
  loc_9C1BB2: ConcatStr
  loc_9C1BB3: FStStrNoPop var_98
  loc_9C1BB6: ILdRf lCodiOrco
  loc_9C1BB9: CStrI4
  loc_9C1BBB: FStStrNoPop var_9C
  loc_9C1BBE: ConcatStr
  loc_9C1BBF: FStStrNoPop var_A0
  loc_9C1BC2: LitStr " AND CodiItco = "
  loc_9C1BC5: ConcatStr
  loc_9C1BC6: FStStrNoPop var_A4
  loc_9C1BC9: FLdI2 iCodiItco
  loc_9C1BCC: CStrUI1
  loc_9C1BCE: FStStrNoPop var_A8
  loc_9C1BD1: ConcatStr
  loc_9C1BD2: FStStrNoPop var_AC
  loc_9C1BD5: Call EjecutarRsCls(from_stack_1v)
  loc_9C1BDA: FFreeStr var_90 = "": BuscaCantidadItemCompra = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9C1BED: FLdRfVar var_B0
  loc_9C1BF0: FLdPr Me
  loc_9C1BF3: MemLdPr global_56
  loc_9C1BF6:  = Me.RecordCount
  loc_9C1BFB: ILdRf var_B0
  loc_9C1BFE: LitI4 1
  loc_9C1C03: EqI4
  loc_9C1C04: BranchF loc_9C1C43
  loc_9C1C07: FLdRfVar var_D8
  loc_9C1C0A: FLdRfVar var_C8
  loc_9C1C0D: LitVarStr var_C4, "CantItco"
  loc_9C1C12: PopAdLdVar
  loc_9C1C13: FLdRfVar var_B4
  loc_9C1C16: FLdPr Me
  loc_9C1C19: MemLdPr global_56
  loc_9C1C1C:  = Me.Fields
  loc_9C1C21: FLdPr var_B4
  loc_9C1C24: from_stack_2 = Me.Item(from_stack_1)
  loc_9C1C29: FLdPr var_C8
  loc_9C1C2C:  = Me.Value
  loc_9C1C31: FLdRfVar var_D8
  loc_9C1C34: FnCDblVar
  loc_9C1C36: FStFPR8 var_8C
  loc_9C1C39: FFreeAd var_B4 = ""
  loc_9C1C40: FFree1Var var_D8 = ""
  loc_9C1C43: ExitProcCbHresult
End Function

Public Sub ActualizaSaldoItemCompra(PeriInfo, CodiOrco, CodiItco, AlteItco, boModificando, doCantidad) 'A13044
  'Data Table: 4314BC
  loc_A12EF0: FLdI2 boModificando
  loc_A12EF3: LitI2_Byte &HFF
  loc_A12EF5: EqI2
  loc_A12EF6: BranchF loc_A12F9A
  loc_A12EF9: LitStr "UPDATE itemcompra SET SaldItco=CantItco-"
  loc_A12EFC: LitI4 0
  loc_A12F01: LitI4 -1
  loc_A12F06: LitI4 1
  loc_A12F0B: LitStr "."
  loc_A12F0E: LitStr ","
  loc_A12F11: FLdFPR8 doCantidad
  loc_A12F14: CStrR8
  loc_A12F16: FStStrNoPop var_88
  loc_A12F19: ImpAdCallI2 Replace(, , , , , )
  loc_A12F1E: FStStrNoPop var_8C
  loc_A12F21: ConcatStr
  loc_A12F22: FStStrNoPop var_90
  loc_A12F25: LitStr " WHERE PeriInfo = "
  loc_A12F28: ConcatStr
  loc_A12F29: FStStrNoPop var_94
  loc_A12F2C: FLdI2 PeriInfo
  loc_A12F2F: CStrUI1
  loc_A12F31: FStStrNoPop var_98
  loc_A12F34: ConcatStr
  loc_A12F35: FStStrNoPop var_9C
  loc_A12F38: LitStr " AND CodiOrco = "
  loc_A12F3B: ConcatStr
  loc_A12F3C: FStStrNoPop var_A0
  loc_A12F3F: ILdRf CodiOrco
  loc_A12F42: CStrI4
  loc_A12F44: FStStrNoPop var_A4
  loc_A12F47: ConcatStr
  loc_A12F48: FStStrNoPop var_A8
  loc_A12F4B: LitStr " AND CodiItco = "
  loc_A12F4E: ConcatStr
  loc_A12F4F: FStStrNoPop var_AC
  loc_A12F52: FLdI2 CodiItco
  loc_A12F55: CStrUI1
  loc_A12F57: FStStrNoPop var_B0
  loc_A12F5A: ConcatStr
  loc_A12F5B: FStStrNoPop var_B4
  loc_A12F5E: LitStr " AND AlteItco = "
  loc_A12F61: ConcatStr
  loc_A12F62: FStStrNoPop var_B8
  loc_A12F65: FLdI2 AlteItco
  loc_A12F68: CStrUI1
  loc_A12F6A: FStStrNoPop var_BC
  loc_A12F6D: ConcatStr
  loc_A12F6E: FStStrNoPop var_C0
  loc_A12F71: Call EjecutarRsCls(from_stack_1v)
  loc_A12F76: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A12F97: Branch loc_A13041
  loc_A12F9A: FLdI2 boModificando
  loc_A12F9D: LitI2_Byte 0
  loc_A12F9F: EqI2
  loc_A12FA0: BranchF loc_A13041
  loc_A12FA3: LitStr "UPDATE itemcompra SET SaldItco=SaldItco+"
  loc_A12FA6: LitI4 0
  loc_A12FAB: LitI4 -1
  loc_A12FB0: LitI4 1
  loc_A12FB5: LitStr "."
  loc_A12FB8: LitStr ","
  loc_A12FBB: FLdFPR8 doCantidad
  loc_A12FBE: CStrR8
  loc_A12FC0: FStStrNoPop var_88
  loc_A12FC3: ImpAdCallI2 Replace(, , , , , )
  loc_A12FC8: FStStrNoPop var_8C
  loc_A12FCB: ConcatStr
  loc_A12FCC: FStStrNoPop var_90
  loc_A12FCF: LitStr " WHERE PeriInfo = "
  loc_A12FD2: ConcatStr
  loc_A12FD3: FStStrNoPop var_94
  loc_A12FD6: FLdI2 PeriInfo
  loc_A12FD9: CStrUI1
  loc_A12FDB: FStStrNoPop var_98
  loc_A12FDE: ConcatStr
  loc_A12FDF: FStStrNoPop var_9C
  loc_A12FE2: LitStr " AND CodiOrco = "
  loc_A12FE5: ConcatStr
  loc_A12FE6: FStStrNoPop var_A0
  loc_A12FE9: ILdRf CodiOrco
  loc_A12FEC: CStrI4
  loc_A12FEE: FStStrNoPop var_A4
  loc_A12FF1: ConcatStr
  loc_A12FF2: FStStrNoPop var_A8
  loc_A12FF5: LitStr " AND CodiItco = "
  loc_A12FF8: ConcatStr
  loc_A12FF9: FStStrNoPop var_AC
  loc_A12FFC: FLdI2 CodiItco
  loc_A12FFF: CStrUI1
  loc_A13001: FStStrNoPop var_B0
  loc_A13004: ConcatStr
  loc_A13005: FStStrNoPop var_B4
  loc_A13008: LitStr " AND AlteItco = "
  loc_A1300B: ConcatStr
  loc_A1300C: FStStrNoPop var_B8
  loc_A1300F: FLdI2 AlteItco
  loc_A13012: CStrUI1
  loc_A13014: FStStrNoPop var_BC
  loc_A13017: ConcatStr
  loc_A13018: FStStrNoPop var_C0
  loc_A1301B: Call EjecutarRsCls(from_stack_1v)
  loc_A13020: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A13041: ExitProcHresult
  loc_A13042: SetLastSystemError
End Sub

Public Function TieneRecepcionValida(iPeriInfo, iCodiOrco) '9A5A48
  'Data Table: 4314BC
  loc_9A59D8: LitStr "SELECT *"
  loc_9A59DB: LitStr " FROM recepcion"
  loc_9A59DE: ConcatStr
  loc_9A59DF: FStStrNoPop var_8C
  loc_9A59E2: LitStr " WHERE PeriInfo = "
  loc_9A59E5: ConcatStr
  loc_9A59E6: FStStrNoPop var_90
  loc_9A59E9: FLdI2 iPeriInfo
  loc_9A59EC: CStrUI1
  loc_9A59EE: FStStrNoPop TieneRecepcionValida
  loc_9A59F1: ConcatStr
  loc_9A59F2: FStStrNoPop var_98
  loc_9A59F5: LitStr " AND CodiOrco = "
  loc_9A59F8: ConcatStr
  loc_9A59F9: FStStrNoPop var_9C
  loc_9A59FC: ILdRf iCodiOrco
  loc_9A59FF: CStrI4
  loc_9A5A01: FStStrNoPop var_A0
  loc_9A5A04: ConcatStr
  loc_9A5A05: FStStrNoPop var_A4
  loc_9A5A08: LitStr " AND FeanRece IS NULL;"
  loc_9A5A0B: ConcatStr
  loc_9A5A0C: FStStrNoPop var_A8
  loc_9A5A0F: Call EjecutarRsCls(from_stack_1v)
  loc_9A5A14: FFreeStr var_8C = "": var_90 = "": TieneRecepcionValida = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A5A27: FLdRfVar var_AC
  loc_9A5A2A: FLdPr Me
  loc_9A5A2D: MemLdPr global_56
  loc_9A5A30:  = Me.RecordCount
  loc_9A5A35: ILdRf var_AC
  loc_9A5A38: LitI4 0
  loc_9A5A3D: GtI4
  loc_9A5A3E: FStI2 var_86
  loc_9A5A41: ExitProcCbHresult
End Function

Public Function UsuarioEnOC(iPeriInfo, iCodiOrco) '9B10CC
  'Data Table: 4314BC
  loc_9B1040: LitStr "SELECT i.AltaUsua, SUM(if(i.DeveImpu!=0,1,0)) tieneDev"
  loc_9B1043: LitStr " FROM imputacion i"
  loc_9B1046: ConcatStr
  loc_9B1047: FStStrNoPop var_8C
  loc_9B104A: LitStr " WHERE PeriInfo = "
  loc_9B104D: ConcatStr
  loc_9B104E: FStStrNoPop var_90
  loc_9B1051: FLdI2 iPeriInfo
  loc_9B1054: CStrUI1
  loc_9B1056: FStStrNoPop UsuarioEnOC
  loc_9B1059: ConcatStr
  loc_9B105A: FStStrNoPop var_98
  loc_9B105D: LitStr " AND CodiOrco = "
  loc_9B1060: ConcatStr
  loc_9B1061: FStStrNoPop var_9C
  loc_9B1064: ILdRf iCodiOrco
  loc_9B1067: CStrI4
  loc_9B1069: FStStrNoPop var_A0
  loc_9B106C: ConcatStr
  loc_9B106D: FStStrNoPop var_A4
  loc_9B1070: LitStr " AND AltaUsua = '"
  loc_9B1073: ConcatStr
  loc_9B1074: FStStrNoPop var_A8
  loc_9B1077: ImpAdLdI4 MemVar_C3D03C
  loc_9B107A: ConcatStr
  loc_9B107B: FStStrNoPop var_AC
  loc_9B107E: LitStr "'"
  loc_9B1081: ConcatStr
  loc_9B1082: FStStrNoPop var_B0
  loc_9B1085: LitStr " HAVING tieneDev = 0;"
  loc_9B1088: ConcatStr
  loc_9B1089: FStStrNoPop var_B4
  loc_9B108C: Call EjecutarRsCls(from_stack_1v)
  loc_9B1091: FFreeStr var_8C = "": var_90 = "": UsuarioEnOC = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9B10AA: FLdRfVar var_B8
  loc_9B10AD: FLdPr Me
  loc_9B10B0: MemLdPr global_56
  loc_9B10B3:  = Me.RecordCount
  loc_9B10B8: ILdRf var_B8
  loc_9B10BB: LitI4 0
  loc_9B10C0: GtI4
  loc_9B10C1: FStI2 var_86
  loc_9B10C4: ExitProcCbHresult
  loc_9B10CA: FStAdFunc UsuarioEnOC478
End Function

Public Function GetCucupersCotizacion(iPeriInfo, iCodiNope, CucuPers) 'A006D4
  'Data Table: 4314BC
  loc_A005BC: ILdRf CucuPers
  loc_A005BF: FStStrCopy var_8C
  loc_A005C2: ZeroRetVal
  loc_A005C4: LitStr "SELECT CucuPers"
  loc_A005C7: LitStr " FROM cotizacion c"
  loc_A005CA: ConcatStr
  loc_A005CB: FStStrNoPop var_90
  loc_A005CE: LitStr " WHERE PeriInfo = "
  loc_A005D1: ConcatStr
  loc_A005D2: FStStrNoPop GetCucupersCotizacion
  loc_A005D5: FLdI2 iPeriInfo
  loc_A005D8: CStrUI1
  loc_A005DA: FStStrNoPop var_98
  loc_A005DD: ConcatStr
  loc_A005DE: FStStrNoPop var_9C
  loc_A005E1: LitStr " AND CodiNope = "
  loc_A005E4: ConcatStr
  loc_A005E5: FStStrNoPop var_A0
  loc_A005E8: ILdRf iCodiNope
  loc_A005EB: CStrI4
  loc_A005ED: FStStrNoPop var_A4
  loc_A005F0: ConcatStr
  loc_A005F1: FStStrNoPop var_A8
  loc_A005F4: LitStr " AND CucuPers = "
  loc_A005F7: ConcatStr
  loc_A005F8: FStStrNoPop var_AC
  loc_A005FB: ILdRf var_8C
  loc_A005FE: ConcatStr
  loc_A005FF: FStStrNoPop var_B0
  loc_A00602: LitStr ";"
  loc_A00605: ConcatStr
  loc_A00606: FStStrNoPop var_B4
  loc_A00609: Call EjecutarRsCls(from_stack_1v)
  loc_A0060E: FFreeStr var_90 = "": GetCucupersCotizacion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A00625: FLdRfVar var_B8
  loc_A00628: FLdPr Me
  loc_A0062B: MemLdPr global_56
  loc_A0062E:  = Me.RecordCount
  loc_A00633: ILdRf var_B8
  loc_A00636: LitI4 0
  loc_A0063B: EqI4
  loc_A0063C: BranchF loc_A006CB
  loc_A0063F: LitVarStr var_F0, "El CUIT "
  loc_A00644: FLdRfVar var_E0
  loc_A00647: FLdRfVar var_D0
  loc_A0064A: LitVarStr var_CC, "CucuPers"
  loc_A0064F: PopAdLdVar
  loc_A00650: FLdRfVar var_BC
  loc_A00653: FLdPr Me
  loc_A00656: MemLdPr global_56
  loc_A00659:  = Me.Fields
  loc_A0065E: FLdPr var_BC
  loc_A00661: from_stack_2 = Me.Item(from_stack_1)
  loc_A00666: FLdPr var_D0
  loc_A00669:  = Me.Value
  loc_A0066E: FLdRfVar var_E0
  loc_A00671: ConcatVar var_100
  loc_A00675: LitVarStr var_110, " NO tiene una Cotización para la NP "
  loc_A0067A: ConcatVar var_120
  loc_A0067E: FLdRfVar var_148
  loc_A00681: FLdRfVar var_138
  loc_A00684: LitVarStr var_134, "CodiNope"
  loc_A00689: PopAdLdVar
  loc_A0068A: FLdRfVar var_124
  loc_A0068D: FLdPr Me
  loc_A00690: MemLdPr global_56
  loc_A00693:  = Me.Fields
  loc_A00698: FLdPr var_124
  loc_A0069B: from_stack_2 = Me.Item(from_stack_1)
  loc_A006A0: FLdPr var_138
  loc_A006A3:  = Me.Value
  loc_A006A8: FLdRfVar var_148
  loc_A006AB: ConcatVar var_158
  loc_A006AF: CStrVarTmp
  loc_A006B0: FStStr var_88
  loc_A006B3: FFreeAd var_BC = "": var_D0 = "": var_124 = ""
  loc_A006BE: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_148 = ""
  loc_A006CB: ExitProcCbHresult
  loc_A006D1: StAryMove
End Function

Public Function NoTieneImpuBalCerrado(iPeriInfo, iCodiOrco) '9A8E60
  'Data Table: 4314BC
  loc_9A8DE8: LitStr "SELECT i.*"
  loc_9A8DEB: LitStr " FROM imputacion i"
  loc_9A8DEE: ConcatStr
  loc_9A8DEF: FStStrNoPop var_8C
  loc_9A8DF2: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = i.PeriInfo"
  loc_9A8DF5: ConcatStr
  loc_9A8DF6: FStStrNoPop var_90
  loc_9A8DF9: LitStr " WHERE i.PeriInfo = "
  loc_9A8DFC: ConcatStr
  loc_9A8DFD: FStStrNoPop NoTieneImpuBalCerrado
  loc_9A8E00: FLdI2 iPeriInfo
  loc_9A8E03: CStrUI1
  loc_9A8E05: FStStrNoPop var_98
  loc_9A8E08: ConcatStr
  loc_9A8E09: FStStrNoPop var_9C
  loc_9A8E0C: LitStr " AND CodiOrco = "
  loc_9A8E0F: ConcatStr
  loc_9A8E10: FStStrNoPop var_A0
  loc_9A8E13: ILdRf iCodiOrco
  loc_9A8E16: CStrI4
  loc_9A8E18: FStStrNoPop var_A4
  loc_9A8E1B: ConcatStr
  loc_9A8E1C: FStStrNoPop var_A8
  loc_9A8E1F: LitStr " AND FechImpu <= pc.FeproPaco AND i.ReapDefi = 0;"
  loc_9A8E22: ConcatStr
  loc_9A8E23: FStStrNoPop var_AC
  loc_9A8E26: Call EjecutarRsCls(from_stack_1v)
  loc_9A8E2B: FFreeStr var_8C = "": var_90 = "": NoTieneImpuBalCerrado = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9A8E40: FLdRfVar var_B0
  loc_9A8E43: FLdPr Me
  loc_9A8E46: MemLdPr global_56
  loc_9A8E49:  = Me.RecordCount
  loc_9A8E4E: ILdRf var_B0
  loc_9A8E51: LitI4 0
  loc_9A8E56: EqI4
  loc_9A8E57: FStI2 var_86
  loc_9A8E5A: ExitProcCbHresult
End Function

Public Function TieneOCdeIdCoti(iPeriInfo, iCodiOrco, IdCoti) '9EAC20
  'Data Table: 4314BC
  loc_9EAB18: ZeroRetVal
  loc_9EAB1A: LitStr "SELECT IFNULL(Group_concat(distinct CodiOrco),'') CodiOrco"
  loc_9EAB1D: LitStr " FROM ordencompra"
  loc_9EAB20: ConcatStr
  loc_9EAB21: FStStrNoPop var_8C
  loc_9EAB24: LitStr " WHERE IdCoti = "
  loc_9EAB27: ConcatStr
  loc_9EAB28: FStStrNoPop var_90
  loc_9EAB2B: ILdRf IdCoti
  loc_9EAB2E: CStrI4
  loc_9EAB30: FStStrNoPop TieneOCdeIdCoti
  loc_9EAB33: ConcatStr
  loc_9EAB34: FStStrNoPop var_98
  loc_9EAB37: LitStr " AND CodiOrco != "
  loc_9EAB3A: ConcatStr
  loc_9EAB3B: FStStrNoPop var_9C
  loc_9EAB3E: ILdRf iCodiOrco
  loc_9EAB41: CStrI4
  loc_9EAB43: FStStrNoPop var_A0
  loc_9EAB46: ConcatStr
  loc_9EAB47: FStStrNoPop var_A4
  loc_9EAB4A: LitStr " AND FeanOrco IS NULL;"
  loc_9EAB4D: ConcatStr
  loc_9EAB4E: FStStrNoPop var_A8
  loc_9EAB51: Call EjecutarRsCls(from_stack_1v)
  loc_9EAB56: FFreeStr var_8C = "": var_90 = "": TieneOCdeIdCoti = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9EAB69: FLdRfVar var_AC
  loc_9EAB6C: FLdPr Me
  loc_9EAB6F: MemLdPr global_56
  loc_9EAB72:  = Me.RecordCount
  loc_9EAB77: ILdRf var_AC
  loc_9EAB7A: LitI4 0
  loc_9EAB7F: GtI4
  loc_9EAB80: BranchF loc_9EAC18
  loc_9EAB83: FLdRfVar var_D4
  loc_9EAB86: FLdRfVar var_C4
  loc_9EAB89: LitVarStr var_C0, "CodiOrco"
  loc_9EAB8E: PopAdLdVar
  loc_9EAB8F: FLdRfVar var_B0
  loc_9EAB92: FLdPr Me
  loc_9EAB95: MemLdPr global_56
  loc_9EAB98:  = Me.Fields
  loc_9EAB9D: FLdPr var_B0
  loc_9EABA0: from_stack_2 = Me.Item(from_stack_1)
  loc_9EABA5: FLdPr var_C4
  loc_9EABA8:  = Me.Value
  loc_9EABAD: FLdRfVar var_D4
  loc_9EABB0: LitVarStr var_E4, vbNullString
  loc_9EABB5: HardType
  loc_9EABB6: NeVarBool
  loc_9EABB8: FFreeAd var_B0 = ""
  loc_9EABBF: FFree1Var var_D4 = ""
  loc_9EABC2: BranchF loc_9EAC18
  loc_9EABC5: LitVarStr var_E4, "La Cotización tiene otra/s OC "
  loc_9EABCA: FLdRfVar var_D4
  loc_9EABCD: FLdRfVar var_C4
  loc_9EABD0: LitVarStr var_C0, "CodiOrco"
  loc_9EABD5: PopAdLdVar
  loc_9EABD6: FLdRfVar var_B0
  loc_9EABD9: FLdPr Me
  loc_9EABDC: MemLdPr global_56
  loc_9EABDF:  = Me.Fields
  loc_9EABE4: FLdPr var_B0
  loc_9EABE7: from_stack_2 = Me.Item(from_stack_1)
  loc_9EABEC: FLdPr var_C4
  loc_9EABEF:  = Me.Value
  loc_9EABF4: FLdRfVar var_D4
  loc_9EABF7: ConcatVar var_F4
  loc_9EABFB: LitVarStr var_104, ". Verifique ..."
  loc_9EAC00: ConcatVar var_114
  loc_9EAC04: CStrVarTmp
  loc_9EAC05: FStStr var_88
  loc_9EAC08: FFreeAd var_B0 = ""
  loc_9EAC0F: FFreeVar var_D4 = "": var_F4 = ""
  loc_9EAC18: ExitProcCbHresult
  loc_9EAC1E: Ary1LdCy
End Function

Private Function Proc_21_43_974350() '974350
  'Data Table: 4314BC
  loc_97432C: LitStr "Primary"
  loc_97432F: FLdPr Me
  loc_974332: LateIdLdVar var_94 DispID_4 0
  loc_974339: CastAdVar Me
  loc_97433D: FStAdFunc var_98
  loc_974340: FLdPr var_98
  loc_974348: FFree1Ad var_98
  loc_97434B: FFree1Var var_94 = ""
  loc_97434E: ExitProcHresult
End Function

Private Function Proc_21_44_95AD0C(arg_C) '95AD0C
  'Data Table: 4314BC
  loc_95ACF4: ILdRf arg_C
  loc_95ACF7: FStStrCopy var_88
  loc_95ACFA: FLdPr Me
  loc_95ACFD: MemLdRfVar from_stack_1.global_60
  loc_95AD00: ILdRf var_88
  loc_95AD03: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95AD08: ExitProcHresult
End Function

Private Function Proc_21_45_95AC74(arg_C) '95AC74
  'Data Table: 4314BC
  loc_95AC5C: ILdRf arg_C
  loc_95AC5F: FStStrCopy var_88
  loc_95AC62: FLdPr Me
  loc_95AC65: MemLdRfVar from_stack_1.global_64
  loc_95AC68: ILdRf var_88
  loc_95AC6B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95AC70: ExitProcHresult
End Function

Private Function Proc_21_46_968F6C(arg_C) '968F6C
  'Data Table: 4314BC
  loc_968F50: ILdI4 arg_C
  loc_968F53: FStStrCopy var_88
  loc_968F56: ILdRf var_88
  loc_968F59: LitStr "Primary"
  loc_968F5C: EqStr
  loc_968F5E: BranchF loc_968F6B
  loc_968F61: FLdPr Me
  loc_968F64: MemLdStr RsFrm
  loc_968F67: IStAd
  loc_968F6B: ExitProcHresult
End Function

Private Function Proc_21_47_9ACE98(arg_C) '9ACE98
  'Data Table: 4314BC
  loc_9ACE04: LitStr "SELECT PeriInfo, CodiOrco FROM ordencompra WHERE PeriInfo = "
  loc_9ACE07: FLdI2 arg_C
  loc_9ACE0A: CStrUI1
  loc_9ACE0C: FStStrNoPop var_8C
  loc_9ACE0F: ConcatStr
  loc_9ACE10: FStStrNoPop var_90
  loc_9ACE13: LitStr " ORDER BY PeriInfo, CodiOrco DESC "
  loc_9ACE16: ConcatStr
  loc_9ACE17: FStStrNoPop var_94
  loc_9ACE1A: Call EjecutarRsCls(from_stack_1v)
  loc_9ACE1F: FFreeStr var_8C = "": var_90 = ""
  loc_9ACE28: FLdRfVar var_98
  loc_9ACE2B: FLdPr Me
  loc_9ACE2E: MemLdPr global_56
  loc_9ACE31:  = Me.RecordCount
  loc_9ACE36: ILdRf var_98
  loc_9ACE39: LitI4 0
  loc_9ACE3E: GtI4
  loc_9ACE3F: BranchF loc_9ACE87
  loc_9ACE42: FLdRfVar var_C0
  loc_9ACE45: FLdRfVar var_B0
  loc_9ACE48: LitVarStr var_AC, "CodiOrco"
  loc_9ACE4D: PopAdLdVar
  loc_9ACE4E: FLdRfVar var_9C
  loc_9ACE51: FLdPr Me
  loc_9ACE54: MemLdPr global_56
  loc_9ACE57:  = Me.Fields
  loc_9ACE5C: FLdPr var_9C
  loc_9ACE5F: from_stack_2 = Me.Item(from_stack_1)
  loc_9ACE64: FLdPr var_B0
  loc_9ACE67:  = Me.Value
  loc_9ACE6C: FLdRfVar var_C0
  loc_9ACE6F: FnCLngVar
  loc_9ACE71: LitI4 1
  loc_9ACE76: AddI4
  loc_9ACE77: FStR4 var_88
  loc_9ACE7A: FFreeAd var_9C = ""
  loc_9ACE81: FFree1Var var_C0 = ""
  loc_9ACE84: Branch loc_9ACE8F
  loc_9ACE87: LitI4 1
  loc_9ACE8C: FStR4 var_88
  loc_9ACE8F: ExitProcCbHresult
End Function
