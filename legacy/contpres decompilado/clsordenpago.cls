VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsordenpago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '437928
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '437937
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '437946
  RsFrm = Value
End Sub

Public Sub MoveFirst() '970B1C
  'Data Table: 4371F4
  loc_970AF4: FLdRfVar var_88
  loc_970AF7: FLdPr Me
  loc_970AFA: MemLdPr RsFrm
  loc_970AFD:  = Me.RecordCount
  loc_970B02: ILdRf var_88
  loc_970B05: LitI4 0
  loc_970B0A: GtI4
  loc_970B0B: BranchF loc_970B19
  loc_970B0E: FLdPr Me
  loc_970B11: MemLdPr RsFrm
  loc_970B14: Me.MoveFirst
  loc_970B19: ExitProcHresult
  loc_970B1A: LdPrVar
End Sub

Public Sub MoveLast() '970AC4
  'Data Table: 4371F4
  loc_970A9C: FLdRfVar var_88
  loc_970A9F: FLdPr Me
  loc_970AA2: MemLdPr RsFrm
  loc_970AA5:  = Me.RecordCount
  loc_970AAA: ILdRf var_88
  loc_970AAD: LitI4 0
  loc_970AB2: GtI4
  loc_970AB3: BranchF loc_970AC1
  loc_970AB6: FLdPr Me
  loc_970AB9: MemLdPr RsFrm
  loc_970ABC: Me.MoveLast
  loc_970AC1: ExitProcHresult
End Sub

Public Sub MoveNext() '9941C0
  'Data Table: 4371F4
  loc_994160: FLdRfVar var_86
  loc_994163: FLdPr Me
  loc_994166: MemLdPr RsFrm
  loc_994169:  = Me.EOF
  loc_99416E: FLdI2 var_86
  loc_994171: NotI4
  loc_994172: BranchF loc_994180
  loc_994175: FLdPr Me
  loc_994178: MemLdPr RsFrm
  loc_99417B: Me.MoveNext
  loc_994180: FLdRfVar var_86
  loc_994183: FLdPr Me
  loc_994186: MemLdPr RsFrm
  loc_994189:  = Me.EOF
  loc_99418E: FLdI2 var_86
  loc_994191: FLdRfVar var_8C
  loc_994194: FLdPr Me
  loc_994197: MemLdPr RsFrm
  loc_99419A:  = Me.RecordCount
  loc_99419F: ILdRf var_8C
  loc_9941A2: LitI4 0
  loc_9941A7: GtI4
  loc_9941A8: AndI4
  loc_9941A9: BranchF loc_9941BC
  loc_9941AC: ImpAdCallFPR4 Beep()
  loc_9941B1: FLdPr Me
  loc_9941B4: MemLdPr RsFrm
  loc_9941B7: Me.MoveLast
  loc_9941BC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '94151C
  'Data Table: 4371F4
  loc_941510: FLdPr Me
  loc_941513: MemLdPr RsFrm
  loc_941516: Me.MoveNext
  loc_94151B: ExitProcHresult
End Sub

Public Sub MovePrevious() '993F80
  'Data Table: 4371F4
  loc_993F20: FLdRfVar var_86
  loc_993F23: FLdPr Me
  loc_993F26: MemLdPr RsFrm
  loc_993F29:  = Me.BOF
  loc_993F2E: FLdI2 var_86
  loc_993F31: NotI4
  loc_993F32: BranchF loc_993F40
  loc_993F35: FLdPr Me
  loc_993F38: MemLdPr RsFrm
  loc_993F3B: Me.MovePrevious
  loc_993F40: FLdRfVar var_86
  loc_993F43: FLdPr Me
  loc_993F46: MemLdPr RsFrm
  loc_993F49:  = Me.BOF
  loc_993F4E: FLdI2 var_86
  loc_993F51: FLdRfVar var_8C
  loc_993F54: FLdPr Me
  loc_993F57: MemLdPr RsFrm
  loc_993F5A:  = Me.RecordCount
  loc_993F5F: ILdRf var_8C
  loc_993F62: LitI4 0
  loc_993F67: GtI4
  loc_993F68: AndI4
  loc_993F69: BranchF loc_993F7C
  loc_993F6C: ImpAdCallFPR4 Beep()
  loc_993F71: FLdPr Me
  loc_993F74: MemLdPr RsFrm
  loc_993F77: Me.MoveFirst
  loc_993F7C: ExitProcHresult
End Sub

Public Property Get EOF() '95AA18
  'Data Table: 4371F4
  loc_95A9FC: FLdRfVar var_88
  loc_95A9FF: FLdPr Me
  loc_95AA02: MemLdPr RsFrm
  loc_95AA05:  = Me.EOF
  loc_95AA0A: FLdI2 var_88
  loc_95AA0D: FStI2 var_86
  loc_95AA10: ExitProcCbHresult
  loc_95AA16: FLdRfVar arg_7C26
End Sub

Public Property Get BOF() '95A980
  'Data Table: 4371F4
  loc_95A964: FLdRfVar var_88
  loc_95A967: FLdPr Me
  loc_95A96A: MemLdPr RsFrm
  loc_95A96D:  = Me.BOF
  loc_95A972: FLdI2 var_88
  loc_95A975: FStI2 var_86
  loc_95A978: ExitProcCbHresult
  loc_95A97E: BranchF loc_96256B
End Sub

Public Sub Sort(sOrden) '9466C4
  'Data Table: 4371F4
  loc_9466B4: ILdI4 sOrden
  loc_9466B7: FLdPr Me
  loc_9466BA: MemLdPr RsFrm
  loc_9466BD: Me.Sort = from_stack_1
  loc_9466C2: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '968FC0
  'Data Table: 4371F4
  loc_968FA0: LitVar_Missing var_94
  loc_968FA3: PopAdLdVar
  loc_968FA4: LitI4 1
  loc_968FA9: LitI4 0
  loc_968FAE: ILdI4 sCriterio
  loc_968FB1: FLdPr Me
  loc_968FB4: MemLdPr RsFrm
  loc_968FB7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968FBC: ExitProcHresult
  loc_968FBD: ConcatStr
  loc_968FBE: FStStrNoPop arg_7C6C
End Sub

Public Sub Filter(sCriterio) '980D6C
  'Data Table: 4371F4
  loc_980D30: OnErrorGoto loc_980D6A
  loc_980D33: LitI4 0
  loc_980D38: LitI4 -1
  loc_980D3D: LitI4 1
  loc_980D42: LitStr " "
  loc_980D45: LitStr "*"
  loc_980D48: ILdI4 sCriterio
  loc_980D4B: ImpAdCallI2 Replace(, , , , , )
  loc_980D50: IStStr
  loc_980D54: ILdI4 sCriterio
  loc_980D57: CVarStr var_94
  loc_980D5A: PopAdLdVar
  loc_980D5B: FLdPr Me
  loc_980D5E: MemLdPr RsFrm
  loc_980D61: Me.Filter = from_stack_1
  loc_980D66: On Error GoTo 0
  loc_980D69: ExitProcHresult
  loc_980D6A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '95A850
  'Data Table: 4371F4
  loc_95A834: FLdRfVar var_8C
  loc_95A837: FLdPr Me
  loc_95A83A: MemLdPr RsFrm
  loc_95A83D:  = Me.AbsolutePosition
  loc_95A842: ILdRf var_8C
  loc_95A845: FStR4 var_88
  loc_95A848: ExitProcCbHresult
  loc_95A84E: VCallAd Control_ID_
End Sub

Public Property Get RecordCount() '95A7B8
  'Data Table: 4371F4
  loc_95A79C: FLdRfVar var_8C
  loc_95A79F: FLdPr Me
  loc_95A7A2: MemLdPr RsFrm
  loc_95A7A5:  = Me.RecordCount
  loc_95A7AA: ILdRf var_8C
  loc_95A7AD: FStR4 var_88
  loc_95A7B0: ExitProcCbHresult
  loc_95A7B6: FStAdFunc arg_7C74
End Sub

Public Property Get Bookmark() '970644
  'Data Table: 4371F4
  loc_970624: ZeroRetValVar
  loc_970626: FLdRfVar var_A4
  loc_970629: FLdPr Me
  loc_97062C: MemLdPr RsFrm
  loc_97062F:  = Me.Bookmark
  loc_970634: FLdRfVar var_A4
  loc_970637: FStVar Bookmark
  loc_97063B: ExitProcCbHresult
End Sub

Public Property Let Bookmark(Marca) '95A768
  'Data Table: 4371F4
  loc_95A750: FDupVar
  loc_95A756: FLdVar var_94
  loc_95A75A: FLdPr Me
  loc_95A75D: MemLdPr RsFrm
  loc_95A760: Me.Bookmark = from_stack_1
  loc_95A765: ExitProcHresult
End Sub

Public Function AddNew(ExpeImpu, NumeLiqu, FechOrpa, DetaOrpa, TipoOrpa, LiquidaNetoFlex, iNumeOrpa) 'AA9E44
  'Data Table: 4371F4
  loc_AA997C: ILdRf ExpeImpu
  loc_AA997F: FStStrCopy var_8C
  loc_AA9982: ILdRf NumeLiqu
  loc_AA9985: FStStrCopy var_90
  loc_AA9988: ILdRf FechOrpa
  loc_AA998B: FStStrCopy AddNew
  loc_AA998E: ILdRf DetaOrpa
  loc_AA9991: FStStrCopy var_98
  loc_AA9994: ILdRf TipoOrpa
  loc_AA9997: FStStrCopy var_9C
  loc_AA999A: OnErrorGoto loc_AA9E2D
  loc_AA999D: LitStr "START TRANSACTION;"
  loc_AA99A0: FStStrCopy var_A0
  loc_AA99A3: ILdI4 iNumeOrpa
  loc_AA99A6: LitI4 0
  loc_AA99AB: EqI4
  loc_AA99AC: BranchF loc_AA99D8
  loc_AA99AF: ILdRf var_A0
  loc_AA99B2: LitStr "SELECT @orpa:=IFNULL(Max(NumeOrpa),0)+1 FROM ordenpago WHERE PeriInfo = "
  loc_AA99B5: ConcatStr
  loc_AA99B6: FStStrNoPop var_A8
  loc_AA99B9: ImpAdLdI2 MemVar_C3D064
  loc_AA99BC: CStrUI1
  loc_AA99BE: FStStrNoPop var_AC
  loc_AA99C1: ConcatStr
  loc_AA99C2: FStStrNoPop var_B0
  loc_AA99C5: LitStr " LIMIT 1;"
  loc_AA99C8: ConcatStr
  loc_AA99C9: FStStr var_A0
  loc_AA99CC: FFreeStr var_A8 = "": var_AC = ""
  loc_AA99D5: Branch loc_AA9A24
  loc_AA99D8: ILdRf var_A0
  loc_AA99DB: LitStr "SELECT @orpa:="
  loc_AA99DE: ConcatStr
  loc_AA99DF: FStStrNoPop var_A8
  loc_AA99E2: ILdI4 iNumeOrpa
  loc_AA99E5: CStrI4
  loc_AA99E7: FStStrNoPop var_AC
  loc_AA99EA: ConcatStr
  loc_AA99EB: FStStrNoPop var_B0
  loc_AA99EE: LitStr ";"
  loc_AA99F1: ConcatStr
  loc_AA99F2: FStStr var_A0
  loc_AA99F5: FFreeStr var_A8 = "": var_AC = ""
  loc_AA99FE: ILdRf var_A0
  loc_AA9A01: LitStr "DELETE FROM ordenpago WHERE PeriInfo = "
  loc_AA9A04: ConcatStr
  loc_AA9A05: FStStrNoPop var_A8
  loc_AA9A08: ImpAdLdI2 MemVar_C3D064
  loc_AA9A0B: CStrUI1
  loc_AA9A0D: FStStrNoPop var_AC
  loc_AA9A10: ConcatStr
  loc_AA9A11: FStStrNoPop var_B0
  loc_AA9A14: LitStr " AND NumeOrpa = @orpa;"
  loc_AA9A17: ConcatStr
  loc_AA9A18: FStStr var_A0
  loc_AA9A1B: FFreeStr var_A8 = "": var_AC = ""
  loc_AA9A24: ILdRf var_A0
  loc_AA9A27: LitStr "INSERT INTO ordenpago (PeriInfo,NumeOrpa,ExpeImpu,NumeLiqu,FechOrpa,DetaOrpa,TipoOrpa,AltaUsua)"
  loc_AA9A2A: ConcatStr
  loc_AA9A2B: FStStrNoPop var_A8
  loc_AA9A2E: LitStr " VALUES ("
  loc_AA9A31: ConcatStr
  loc_AA9A32: FStStrNoPop var_AC
  loc_AA9A35: ImpAdLdI2 MemVar_C3D064
  loc_AA9A38: CStrUI1
  loc_AA9A3A: FStStrNoPop var_B0
  loc_AA9A3D: ConcatStr
  loc_AA9A3E: FStStrNoPop var_B4
  loc_AA9A41: LitStr ",@orpa,'"
  loc_AA9A44: ConcatStr
  loc_AA9A45: FStStrNoPop var_B8
  loc_AA9A48: ILdRf var_8C
  loc_AA9A4B: ConcatStr
  loc_AA9A4C: FStStrNoPop var_BC
  loc_AA9A4F: LitStr "',"
  loc_AA9A52: ConcatStr
  loc_AA9A53: FStStrNoPop var_C0
  loc_AA9A56: ILdRf var_90
  loc_AA9A59: ConcatStr
  loc_AA9A5A: FStStrNoPop var_C4
  loc_AA9A5D: LitStr ","
  loc_AA9A60: ConcatStr
  loc_AA9A61: FStStrNoPop var_F8
  loc_AA9A64: LitI4 1
  loc_AA9A69: LitI4 1
  loc_AA9A6E: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_AA9A73: FStVarCopyObj var_F4
  loc_AA9A76: FLdRfVar var_F4
  loc_AA9A79: FLdRfVar AddNew
  loc_AA9A7C: CVarRef
  loc_AA9A81: ImpAdCallI2 Format$(, )
  loc_AA9A86: FStStrNoPop var_FC
  loc_AA9A89: ConcatStr
  loc_AA9A8A: FStStrNoPop var_100
  loc_AA9A8D: LitStr ",'"
  loc_AA9A90: ConcatStr
  loc_AA9A91: FStStrNoPop var_104
  loc_AA9A94: ILdRf var_98
  loc_AA9A97: ConcatStr
  loc_AA9A98: FStStrNoPop var_108
  loc_AA9A9B: LitStr "','"
  loc_AA9A9E: ConcatStr
  loc_AA9A9F: FStStrNoPop var_10C
  loc_AA9AA2: ILdRf var_9C
  loc_AA9AA5: ConcatStr
  loc_AA9AA6: FStStrNoPop var_110
  loc_AA9AA9: LitStr "','"
  loc_AA9AAC: ConcatStr
  loc_AA9AAD: FStStrNoPop var_114
  loc_AA9AB0: ImpAdLdI4 MemVar_C3D03C
  loc_AA9AB3: ConcatStr
  loc_AA9AB4: FStStrNoPop var_118
  loc_AA9AB7: LitStr "');"
  loc_AA9ABA: ConcatStr
  loc_AA9ABB: FStStr var_A0
  loc_AA9ABE: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AA9AE3: FFree1Var var_F4 = ""
  loc_AA9AE6: ILdRf var_9C
  loc_AA9AE9: LitStr "Devengado"
  loc_AA9AEC: EqStr
  loc_AA9AEE: BranchF loc_AA9BE1
  loc_AA9AF1: ILdRf var_A0
  loc_AA9AF4: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_AA9AF7: ConcatStr
  loc_AA9AF8: FStStrNoPop var_A8
  loc_AA9AFB: ImpAdLdI2 MemVar_C3D064
  loc_AA9AFE: CStrUI1
  loc_AA9B00: FStStrNoPop var_AC
  loc_AA9B03: ConcatStr
  loc_AA9B04: FStStrNoPop var_B0
  loc_AA9B07: LitStr "; "
  loc_AA9B0A: ConcatStr
  loc_AA9B0B: FStStrNoPop var_B4
  loc_AA9B0E: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_AA9B11: ConcatStr
  loc_AA9B12: FStStrNoPop var_B8
  loc_AA9B15: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_AA9B18: ConcatStr
  loc_AA9B19: FStStrNoPop var_BC
  loc_AA9B1C: LitI4 1
  loc_AA9B21: LitI4 1
  loc_AA9B26: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_AA9B2B: FStVarCopyObj var_F4
  loc_AA9B2E: FLdRfVar var_F4
  loc_AA9B31: FLdRfVar AddNew
  loc_AA9B34: CVarRef
  loc_AA9B39: ImpAdCallI2 Format$(, )
  loc_AA9B3E: FStStrNoPop var_C0
  loc_AA9B41: ConcatStr
  loc_AA9B42: FStStrNoPop var_C4
  loc_AA9B45: LitStr " FechImpu, ExorImpu, ExpeImpu, NumeLiqu, @orpa, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_AA9B48: ConcatStr
  loc_AA9B49: FStStrNoPop var_F8
  loc_AA9B4C: ImpAdLdI4 MemVar_C3D03C
  loc_AA9B4F: ConcatStr
  loc_AA9B50: FStStrNoPop var_FC
  loc_AA9B53: LitStr "' AltaUsua"
  loc_AA9B56: ConcatStr
  loc_AA9B57: FStStrNoPop var_100
  loc_AA9B5A: LitStr " FROM ("
  loc_AA9B5D: ConcatStr
  loc_AA9B5E: FStStrNoPop var_104
  loc_AA9B61: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_AA9B64: ConcatStr
  loc_AA9B65: FStStrNoPop var_108
  loc_AA9B68: LitStr " FROM imputacion"
  loc_AA9B6B: ConcatStr
  loc_AA9B6C: FStStrNoPop var_10C
  loc_AA9B6F: LitStr " WHERE PeriInfo = "
  loc_AA9B72: ConcatStr
  loc_AA9B73: FStStrNoPop var_110
  loc_AA9B76: ImpAdLdI2 MemVar_C3D064
  loc_AA9B79: CStrUI1
  loc_AA9B7B: FStStrNoPop var_114
  loc_AA9B7E: ConcatStr
  loc_AA9B7F: FStStrNoPop var_118
  loc_AA9B82: LitStr " AND LiquImpu != 0 AND ExpeImpu = '"
  loc_AA9B85: ConcatStr
  loc_AA9B86: FStStrNoPop var_11C
  loc_AA9B89: ILdRf var_8C
  loc_AA9B8C: ConcatStr
  loc_AA9B8D: FStStrNoPop var_120
  loc_AA9B90: LitStr "' AND NumeLiqu = "
  loc_AA9B93: ConcatStr
  loc_AA9B94: FStStrNoPop var_124
  loc_AA9B97: ILdRf var_90
  loc_AA9B9A: ConcatStr
  loc_AA9B9B: FStStrNoPop var_128
  loc_AA9B9E: LitStr " AND AjusImpu = 0"
  loc_AA9BA1: ConcatStr
  loc_AA9BA2: FStStrNoPop var_12C
  loc_AA9BA5: LitStr " ) AS tbl;"
  loc_AA9BA8: ConcatStr
  loc_AA9BA9: FStStr var_A0
  loc_AA9BAC: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_AA9BDB: FFree1Var var_F4 = ""
  loc_AA9BDE: Branch loc_AA9BEC
  loc_AA9BE1: ILdRf var_9C
  loc_AA9BE4: LitStr "Debito"
  loc_AA9BE7: EqStr
  loc_AA9BE9: BranchF loc_AA9BEC
  loc_AA9BEC: ILdRf var_A0
  loc_AA9BEF: LitStr "UPDATE liquidacion"
  loc_AA9BF2: ConcatStr
  loc_AA9BF3: FStStrNoPop var_A8
  loc_AA9BF6: LitStr " SET NumeOrpa=@orpa"
  loc_AA9BF9: ConcatStr
  loc_AA9BFA: FStStrNoPop var_AC
  loc_AA9BFD: LitStr " WHERE PeriInfo = "
  loc_AA9C00: ConcatStr
  loc_AA9C01: FStStrNoPop var_B0
  loc_AA9C04: ImpAdLdI2 MemVar_C3D064
  loc_AA9C07: CStrUI1
  loc_AA9C09: FStStrNoPop var_B4
  loc_AA9C0C: ConcatStr
  loc_AA9C0D: FStStrNoPop var_B8
  loc_AA9C10: LitStr " AND ExpeImpu='"
  loc_AA9C13: ConcatStr
  loc_AA9C14: FStStrNoPop var_BC
  loc_AA9C17: ILdRf var_8C
  loc_AA9C1A: ConcatStr
  loc_AA9C1B: FStStrNoPop var_C0
  loc_AA9C1E: LitStr "' AND NumeLiqu = "
  loc_AA9C21: ConcatStr
  loc_AA9C22: FStStrNoPop var_C4
  loc_AA9C25: ILdRf var_90
  loc_AA9C28: ConcatStr
  loc_AA9C29: FStStrNoPop var_F8
  loc_AA9C2C: LitStr ";"
  loc_AA9C2F: ConcatStr
  loc_AA9C30: FStStr var_A0
  loc_AA9C33: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_AA9C48: LitStr "Municipalidad de Guaymallén"
  loc_AA9C4B: LitStr "Municipalidad de Maipú"
  loc_AA9C4E: EqStr
  loc_AA9C50: BranchF loc_AA9D0F
  loc_AA9C53: ILdRf var_A0
  loc_AA9C56: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,SecuCheq,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua)"
  loc_AA9C59: ConcatStr
  loc_AA9C5A: FStStrNoPop var_A8
  loc_AA9C5D: LitStr " SELECT ExpeImpu, NumeLiqu, CucuPers, 0 CodiBanc, 0 NumeMoba, 1 SecuCheq, ImpoLine ImpoCheq, PeriInfo, @orpa NumeOrpa, "
  loc_AA9C60: ConcatStr
  loc_AA9C61: FStStrNoPop var_AC
  loc_AA9C64: LitI4 1
  loc_AA9C69: LitI4 1
  loc_AA9C6E: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_AA9C73: FStVarCopyObj var_F4
  loc_AA9C76: FLdRfVar var_F4
  loc_AA9C79: FLdRfVar AddNew
  loc_AA9C7C: CVarRef
  loc_AA9C81: ImpAdCallI2 Format$(, )
  loc_AA9C86: FStStrNoPop var_B0
  loc_AA9C89: ConcatStr
  loc_AA9C8A: FStStrNoPop var_B4
  loc_AA9C8D: LitStr " FechCheq, '' OrdeCheq, 0 DetaCheq, 3 AutoCheq, '"
  loc_AA9C90: ConcatStr
  loc_AA9C91: FStStrNoPop var_B8
  loc_AA9C94: ImpAdLdI4 MemVar_C3D03C
  loc_AA9C97: ConcatStr
  loc_AA9C98: FStStrNoPop var_BC
  loc_AA9C9B: LitStr "'"
  loc_AA9C9E: ConcatStr
  loc_AA9C9F: FStStrNoPop var_C0
  loc_AA9CA2: LitStr " FROM liquidaneto"
  loc_AA9CA5: ConcatStr
  loc_AA9CA6: FStStrNoPop var_C4
  loc_AA9CA9: LitStr " WHERE PeriInfo = "
  loc_AA9CAC: ConcatStr
  loc_AA9CAD: FStStrNoPop var_F8
  loc_AA9CB0: ImpAdLdI2 MemVar_C3D064
  loc_AA9CB3: CStrUI1
  loc_AA9CB5: FStStrNoPop var_FC
  loc_AA9CB8: ConcatStr
  loc_AA9CB9: FStStrNoPop var_100
  loc_AA9CBC: LitStr " AND ExpeImpu = '"
  loc_AA9CBF: ConcatStr
  loc_AA9CC0: FStStrNoPop var_104
  loc_AA9CC3: ILdRf var_8C
  loc_AA9CC6: ConcatStr
  loc_AA9CC7: FStStrNoPop var_108
  loc_AA9CCA: LitStr "'"
  loc_AA9CCD: ConcatStr
  loc_AA9CCE: FStStrNoPop var_10C
  loc_AA9CD1: LitStr " AND NumeLiqu = "
  loc_AA9CD4: ConcatStr
  loc_AA9CD5: FStStrNoPop var_110
  loc_AA9CD8: ILdRf var_90
  loc_AA9CDB: ConcatStr
  loc_AA9CDC: FStStrNoPop var_114
  loc_AA9CDF: LitStr " AND CodiRete = 0;"
  loc_AA9CE2: ConcatStr
  loc_AA9CE3: FStStr var_A0
  loc_AA9CE6: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_AA9D09: FFree1Var var_F4 = ""
  loc_AA9D0C: Branch loc_AA9DD1
  loc_AA9D0F: ILdRf var_A0
  loc_AA9D12: LitStr "INSERT INTO cheque (ExpeImpu,NumeLiqu,CucuPers,CodiBanc,NumeMoba,SecuCheq,ImpoCheq,PeriInfo,NumeOrpa,FechCheq,OrdeCheq,DetaCheq,AutoCheq,AltaUsua)"
  loc_AA9D15: ConcatStr
  loc_AA9D16: FStStrNoPop var_A8
  loc_AA9D19: LitStr " SELECT lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers, 0 CodiBanc, 0 NumeMoba, 1 SecuCheq, ImpoLine ImpoCheq, lqn.PeriInfo, @orpa NumeOrpa, "
  loc_AA9D1C: ConcatStr
  loc_AA9D1D: FStStrNoPop var_AC
  loc_AA9D20: LitI4 1
  loc_AA9D25: LitI4 1
  loc_AA9D2A: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_AA9D2F: FStVarCopyObj var_F4
  loc_AA9D32: FLdRfVar var_F4
  loc_AA9D35: FLdRfVar AddNew
  loc_AA9D38: CVarRef
  loc_AA9D3D: ImpAdCallI2 Format$(, )
  loc_AA9D42: FStStrNoPop var_B0
  loc_AA9D45: ConcatStr
  loc_AA9D46: FStStrNoPop var_B4
  loc_AA9D49: LitStr " FechCheq, '' OrdeCheq, 0 DetaCheq, IF(LENGTH(p.CubaProv)=22,3,0) AutoCheq, '"
  loc_AA9D4C: ConcatStr
  loc_AA9D4D: FStStrNoPop var_B8
  loc_AA9D50: ImpAdLdI4 MemVar_C3D03C
  loc_AA9D53: ConcatStr
  loc_AA9D54: FStStrNoPop var_BC
  loc_AA9D57: LitStr "'"
  loc_AA9D5A: ConcatStr
  loc_AA9D5B: FStStrNoPop var_C0
  loc_AA9D5E: LitStr " FROM liquidaneto lqn"
  loc_AA9D61: ConcatStr
  loc_AA9D62: FStStrNoPop var_C4
  loc_AA9D65: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_AA9D68: ConcatStr
  loc_AA9D69: FStStrNoPop var_F8
  loc_AA9D6C: LitStr " WHERE lqn.PeriInfo = "
  loc_AA9D6F: ConcatStr
  loc_AA9D70: FStStrNoPop var_FC
  loc_AA9D73: ImpAdLdI2 MemVar_C3D064
  loc_AA9D76: CStrUI1
  loc_AA9D78: FStStrNoPop var_100
  loc_AA9D7B: ConcatStr
  loc_AA9D7C: FStStrNoPop var_104
  loc_AA9D7F: LitStr " AND lqn.ExpeImpu = '"
  loc_AA9D82: ConcatStr
  loc_AA9D83: FStStrNoPop var_108
  loc_AA9D86: ILdRf var_8C
  loc_AA9D89: ConcatStr
  loc_AA9D8A: FStStrNoPop var_10C
  loc_AA9D8D: LitStr "'"
  loc_AA9D90: ConcatStr
  loc_AA9D91: FStStrNoPop var_110
  loc_AA9D94: LitStr " AND lqn.NumeLiqu = "
  loc_AA9D97: ConcatStr
  loc_AA9D98: FStStrNoPop var_114
  loc_AA9D9B: ILdRf var_90
  loc_AA9D9E: ConcatStr
  loc_AA9D9F: FStStrNoPop var_118
  loc_AA9DA2: LitStr " AND lqn.CodiRete = 0;"
  loc_AA9DA5: ConcatStr
  loc_AA9DA6: FStStr var_A0
  loc_AA9DA9: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AA9DCE: FFree1Var var_F4 = ""
  loc_AA9DD1: ILdRf var_A0
  loc_AA9DD4: LitStr "COMMIT;"
  loc_AA9DD7: ConcatStr
  loc_AA9DD8: FStStr var_A0
  loc_AA9DDB: ILdRf var_A0
  loc_AA9DDE: Call EjecutarRsCls(from_stack_1v)
  loc_AA9DE3: LitStr "SELECT Cast(@orpa AS UNSIGNED) Orpa;"
  loc_AA9DE6: Call EjecutarRsCls(from_stack_1v)
  loc_AA9DEB: FLdRfVar var_F4
  loc_AA9DEE: FLdRfVar var_134
  loc_AA9DF1: LitVarStr var_D4, "Orpa"
  loc_AA9DF6: PopAdLdVar
  loc_AA9DF7: FLdRfVar var_130
  loc_AA9DFA: FLdPr Me
  loc_AA9DFD: MemLdPr global_56
  loc_AA9E00:  = Me.Fields
  loc_AA9E05: FLdPr var_130
  loc_AA9E08: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9E0D: FLdPr var_134
  loc_AA9E10:  = Me.Value
  loc_AA9E15: FLdRfVar var_F4
  loc_AA9E18: CI4Var
  loc_AA9E1A: FStR4 var_88
  loc_AA9E1D: FFreeAd var_130 = ""
  loc_AA9E24: FFree1Var var_F4 = ""
  loc_AA9E27: ExitProcCbHresult
  loc_AA9E2D: LitStr "ROLLBACK;"
  loc_AA9E30: Call EjecutarRsCls(from_stack_1v)
  loc_AA9E35: LitI4 0
  loc_AA9E3A: FStR4 var_88
  loc_AA9E3D: ExitProcCbHresult
End Function

Public Sub ModificarFearOrpa(PeriInfo, NumeOrpa, FearOrpa) '9C52F8
  'Data Table: 4371F4
  loc_9C5254: ILdRf FearOrpa
  loc_9C5257: FStStrCopy var_88
  loc_9C525A: LitStr "UPDATE ordenpago"
  loc_9C525D: LitStr " SET FearOrpa="
  loc_9C5260: ConcatStr
  loc_9C5261: FStStrNoPop var_BC
  loc_9C5264: LitI4 1
  loc_9C5269: LitI4 1
  loc_9C526E: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9C5273: FStVarCopyObj var_B8
  loc_9C5276: FLdRfVar var_B8
  loc_9C5279: FLdRfVar var_88
  loc_9C527C: CVarRef
  loc_9C5281: ImpAdCallI2 Format$(, )
  loc_9C5286: FStStrNoPop var_C0
  loc_9C5289: ConcatStr
  loc_9C528A: FStStrNoPop var_C4
  loc_9C528D: LitStr ", ModiUsua='"
  loc_9C5290: ConcatStr
  loc_9C5291: FStStrNoPop var_C8
  loc_9C5294: ImpAdLdI4 MemVar_C3D03C
  loc_9C5297: ConcatStr
  loc_9C5298: FStStrNoPop var_CC
  loc_9C529B: LitStr "', ModiFeho = Now()"
  loc_9C529E: ConcatStr
  loc_9C529F: FStStrNoPop var_D0
  loc_9C52A2: LitStr " WHERE PeriInfo="
  loc_9C52A5: ConcatStr
  loc_9C52A6: FStStrNoPop var_D4
  loc_9C52A9: FLdI2 PeriInfo
  loc_9C52AC: CStrUI1
  loc_9C52AE: FStStrNoPop var_D8
  loc_9C52B1: ConcatStr
  loc_9C52B2: FStStrNoPop var_DC
  loc_9C52B5: LitStr " AND NumeOrpa="
  loc_9C52B8: ConcatStr
  loc_9C52B9: FStStrNoPop var_E0
  loc_9C52BC: ILdRf NumeOrpa
  loc_9C52BF: CStrI4
  loc_9C52C1: FStStrNoPop var_E4
  loc_9C52C4: ConcatStr
  loc_9C52C5: FStStrNoPop var_E8
  loc_9C52C8: LitStr ";"
  loc_9C52CB: ConcatStr
  loc_9C52CC: FStStrNoPop var_EC
  loc_9C52CF: Call EjecutarRsCls(from_stack_1v)
  loc_9C52D4: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_9C52F1: FFree1Var var_B8 = ""
  loc_9C52F4: ExitProcHresult
End Sub

Public Sub ModificarFeanOrpa(PeriInfo, NumeOrpa, FeanOrpa) '9BE958
  'Data Table: 4371F4
  loc_9BE8C0: ILdRf FeanOrpa
  loc_9BE8C3: FStStrCopy var_88
  loc_9BE8C6: LitStr "UPDATE ordenpago"
  loc_9BE8C9: LitStr " SET FeanOrpa="
  loc_9BE8CC: ConcatStr
  loc_9BE8CD: FStStrNoPop var_BC
  loc_9BE8D0: LitI4 1
  loc_9BE8D5: LitI4 1
  loc_9BE8DA: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9BE8DF: FStVarCopyObj var_B8
  loc_9BE8E2: FLdRfVar var_B8
  loc_9BE8E5: FLdRfVar var_88
  loc_9BE8E8: CVarRef
  loc_9BE8ED: ImpAdCallI2 Format$(, )
  loc_9BE8F2: FStStrNoPop var_C0
  loc_9BE8F5: ConcatStr
  loc_9BE8F6: FStStrNoPop var_C4
  loc_9BE8F9: LitStr ", BajaUsua='"
  loc_9BE8FC: ConcatStr
  loc_9BE8FD: FStStrNoPop var_C8
  loc_9BE900: ImpAdLdI4 MemVar_C3D03C
  loc_9BE903: ConcatStr
  loc_9BE904: FStStrNoPop var_CC
  loc_9BE907: LitStr "', BajaFeho = Now()"
  loc_9BE90A: ConcatStr
  loc_9BE90B: FStStrNoPop var_D0
  loc_9BE90E: LitStr " WHERE PeriInfo="
  loc_9BE911: ConcatStr
  loc_9BE912: FStStrNoPop var_D4
  loc_9BE915: FLdI2 PeriInfo
  loc_9BE918: CStrUI1
  loc_9BE91A: FStStrNoPop var_D8
  loc_9BE91D: ConcatStr
  loc_9BE91E: FStStrNoPop var_DC
  loc_9BE921: LitStr " AND NumeOrpa="
  loc_9BE924: ConcatStr
  loc_9BE925: FStStrNoPop var_E0
  loc_9BE928: ILdRf NumeOrpa
  loc_9BE92B: CStrI4
  loc_9BE92D: FStStrNoPop var_E4
  loc_9BE930: ConcatStr
  loc_9BE931: FStStrNoPop var_E8
  loc_9BE934: Call EjecutarRsCls(from_stack_1v)
  loc_9BE939: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_9BE954: FFree1Var var_B8 = ""
  loc_9BE957: ExitProcHresult
End Sub

Public Sub ModificarDetaOrpa(PeriInfo, NumeOrpa, DetaOrpa) '9A6740
  'Data Table: 4371F4
  loc_9A66D8: ILdRf DetaOrpa
  loc_9A66DB: FStStrCopy var_88
  loc_9A66DE: LitStr "UPDATE liquidacion"
  loc_9A66E1: LitStr " SET DetaLiqu = '"
  loc_9A66E4: ConcatStr
  loc_9A66E5: FStStrNoPop var_8C
  loc_9A66E8: ILdRf var_88
  loc_9A66EB: ConcatStr
  loc_9A66EC: FStStrNoPop var_90
  loc_9A66EF: LitStr "'"
  loc_9A66F2: ConcatStr
  loc_9A66F3: FStStrNoPop var_94
  loc_9A66F6: LitStr " WHERE PeriInfo = "
  loc_9A66F9: ConcatStr
  loc_9A66FA: FStStrNoPop var_98
  loc_9A66FD: FLdI2 PeriInfo
  loc_9A6700: CStrUI1
  loc_9A6702: FStStrNoPop var_9C
  loc_9A6705: ConcatStr
  loc_9A6706: FStStrNoPop var_A0
  loc_9A6709: LitStr " AND NumeOrpa = "
  loc_9A670C: ConcatStr
  loc_9A670D: FStStrNoPop var_A4
  loc_9A6710: ILdRf NumeOrpa
  loc_9A6713: CStrI4
  loc_9A6715: FStStrNoPop var_A8
  loc_9A6718: ConcatStr
  loc_9A6719: FStStrNoPop var_AC
  loc_9A671C: LitStr ";"
  loc_9A671F: ConcatStr
  loc_9A6720: FStStrNoPop var_B0
  loc_9A6723: Call EjecutarRsCls(from_stack_1v)
  loc_9A6728: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9A673F: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, NumeOrpa) '9EA240
  'Data Table: 4371F4
  loc_9EA120: On Error Resume Next
  loc_9EA125: FLdI2 PeriInfo
  loc_9EA128: LitI2_Byte 0
  loc_9EA12A: EqI2
  loc_9EA12B: ILdRf NumeOrpa
  loc_9EA12E: LitI4 0
  loc_9EA133: EqI4
  loc_9EA134: AndI4
  loc_9EA135: FLdRfVar var_88
  loc_9EA138: FLdPr Me
  loc_9EA13B: MemLdPr RsFrm
  loc_9EA13E:  = Me.RecordCount
  loc_9EA143: ILdRf var_88
  loc_9EA146: LitI4 0
  loc_9EA14B: GtI4
  loc_9EA14C: AndI4
  loc_9EA14D: FLdRfVar var_8C
  loc_9EA150: FLdPr Me
  loc_9EA153: MemLdPr RsFrm
  loc_9EA156:  = Me.AbsolutePosition
  loc_9EA15B: ILdRf var_8C
  loc_9EA15E: LitI4 -3
  loc_9EA163: NeI4
  loc_9EA164: AndI4
  loc_9EA165: BranchF loc_9EA1E3
  loc_9EA16A: FLdRfVar var_B4
  loc_9EA16D: FLdRfVar var_A4
  loc_9EA170: LitVarStr var_A0, "PeriInfo"
  loc_9EA175: PopAdLdVar
  loc_9EA176: FLdRfVar var_90
  loc_9EA179: FLdPr Me
  loc_9EA17C: MemLdPr RsFrm
  loc_9EA17F:  = Me.Fields
  loc_9EA184: FLdPr var_90
  loc_9EA187: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA18C: FLdPr var_A4
  loc_9EA18F:  = Me.Value
  loc_9EA194: FLdRfVar var_B4
  loc_9EA197: CI2Var
  loc_9EA198: FStI2 PeriInfo
  loc_9EA19B: FFreeAd var_90 = ""
  loc_9EA1A2: FFree1Var var_B4 = ""
  loc_9EA1A7: FLdRfVar var_B4
  loc_9EA1AA: FLdRfVar var_A4
  loc_9EA1AD: LitVarStr var_A0, "NumeOrpa"
  loc_9EA1B2: PopAdLdVar
  loc_9EA1B3: FLdRfVar var_90
  loc_9EA1B6: FLdPr Me
  loc_9EA1B9: MemLdPr RsFrm
  loc_9EA1BC:  = Me.Fields
  loc_9EA1C1: FLdPr var_90
  loc_9EA1C4: from_stack_2 = Me.Item(from_stack_1)
  loc_9EA1C9: FLdPr var_A4
  loc_9EA1CC:  = Me.Value
  loc_9EA1D1: FLdRfVar var_B4
  loc_9EA1D4: CI4Var
  loc_9EA1D6: FStR4 NumeOrpa
  loc_9EA1D9: FFreeAd var_90 = ""
  loc_9EA1E0: FFree1Var var_B4 = ""
  loc_9EA1E7: Call Requery()
  loc_9EA1EE: LitStr "PeriInfo = '"
  loc_9EA1F1: FLdI2 PeriInfo
  loc_9EA1F4: CStrUI1
  loc_9EA1F6: FStStrNoPop var_B8
  loc_9EA1F9: ConcatStr
  loc_9EA1FA: FStStrNoPop var_BC
  loc_9EA1FD: LitStr "'"
  loc_9EA200: ConcatStr
  loc_9EA201: PopTmpLdAdStr
  loc_9EA205: Call Find(from_stack_1v)
  loc_9EA20A: FFreeStr var_B8 = "": var_BC = ""
  loc_9EA215: LitStr "NumeOrpa = '"
  loc_9EA218: ILdRf NumeOrpa
  loc_9EA21B: CStrI4
  loc_9EA21D: FStStrNoPop var_B8
  loc_9EA220: ConcatStr
  loc_9EA221: FStStrNoPop var_BC
  loc_9EA224: LitStr "'"
  loc_9EA227: ConcatStr
  loc_9EA228: PopTmpLdAdStr
  loc_9EA22C: Call Find(from_stack_1v)
  loc_9EA231: FFreeStr var_B8 = "": var_BC = ""
  loc_9EA23C: ExitProcHresult
  loc_9EA23D: ThisVCall 0
End Sub

Public Sub RedefineRS(sSelect) '973778
  'Data Table: 4371F4
  loc_973750: ILdRf sSelect
  loc_973753: FStStrCopy var_88
  loc_973756: FLdPr Me
  loc_973759: MemLdRfVar from_stack_1.RsFrm
  loc_97375C: ILdRf var_88
  loc_97375F: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_973764: LitVarStr var_98, "Primary"
  loc_973769: PopAdLdVar
  loc_97376A: FLdPr Me
  loc_97376D: LateIdCall
  loc_973775: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95A71C
  'Data Table: 4371F4
  loc_95A704: ILdRf sSelect
  loc_95A707: FStStrCopy var_88
  loc_95A70A: FLdPr Me
  loc_95A70D: MemLdRfVar from_stack_1.global_56
  loc_95A710: ILdRf var_88
  loc_95A713: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95A718: ExitProcHresult
  loc_95A719: ThisVCallAd
End Sub

Public Sub Requery() '969010
  'Data Table: 4371F4
  loc_968FF0: FLdPr Me
  loc_968FF3: MemLdRfVar from_stack_1.RsFrm
  loc_968FF6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_968FFB: LitVarStr var_94, "Primary"
  loc_969000: PopAdLdVar
  loc_969001: FLdPr Me
  loc_969004: LateIdCall
  loc_96900C: ExitProcHresult
  loc_96900D: LitI2_Byte &HFF
End Sub

Public Property Get DataSource() '97468C
  'Data Table: 4371F4
  loc_974668: ZeroRetVal
  loc_97466A: FLdRfVar var_8C
  loc_97466D: FLdPr Me
  loc_974670: MemLdPr RsFrm
  loc_974673:  = Me.DataSource
  loc_974678: ILdRf var_8C
  loc_97467B: CastAd
  loc_97467E: FStAdFunc var_88
  loc_974681: FFree1Ad var_8C
  loc_974684: ExitProcCbHresult
  loc_97468A: CRec2Uni arg_7C00
End Sub

Public Function FaltanDatosImputacionDebito(PeriInfo, NumeOrpa, TipoOrpa) 'A201DC
  'Data Table: 4371F4
  loc_A20050: ILdRf TipoOrpa
  loc_A20053: FStStrCopy var_8C
  loc_A20056: ILdRf var_8C
  loc_A20059: LitStr "Devengado"
  loc_A2005C: EqStr
  loc_A2005E: BranchF loc_A20112
  loc_A20061: LitStr "SELECT IFNULL(Sum(MapaImpu),0) SumMapaImpu"
  loc_A20064: LitStr " FROM imputacion"
  loc_A20067: ConcatStr
  loc_A20068: FStStrNoPop var_90
  loc_A2006B: LitStr " WHERE PeriInfo = "
  loc_A2006E: ConcatStr
  loc_A2006F: FStStrNoPop FaltanDatosImputacionDebito
  loc_A20072: FLdI2 PeriInfo
  loc_A20075: CStrUI1
  loc_A20077: FStStrNoPop var_98
  loc_A2007A: ConcatStr
  loc_A2007B: FStStrNoPop var_9C
  loc_A2007E: LitStr " AND NumeOrpa = "
  loc_A20081: ConcatStr
  loc_A20082: FStStrNoPop var_A0
  loc_A20085: ILdRf NumeOrpa
  loc_A20088: CStrI4
  loc_A2008A: FStStrNoPop var_A4
  loc_A2008D: ConcatStr
  loc_A2008E: FStStrNoPop var_A8
  loc_A20091: LitStr ";"
  loc_A20094: ConcatStr
  loc_A20095: FStStrNoPop var_AC
  loc_A20098: Call EjecutarRsCls(from_stack_1v)
  loc_A2009D: FFreeStr var_90 = "": FaltanDatosImputacionDebito = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A200B0: FLdRfVar var_B0
  loc_A200B3: FLdPr Me
  loc_A200B6: MemLdPr global_56
  loc_A200B9:  = Me.RecordCount
  loc_A200BE: ILdRf var_B0
  loc_A200C1: LitI4 0
  loc_A200C6: GtI4
  loc_A200C7: BranchF loc_A2010F
  loc_A200CA: FLdRfVar var_D8
  loc_A200CD: FLdRfVar var_C8
  loc_A200D0: LitVarStr var_C4, "SumMapaImpu"
  loc_A200D5: PopAdLdVar
  loc_A200D6: FLdRfVar var_B4
  loc_A200D9: FLdPr Me
  loc_A200DC: MemLdPr global_56
  loc_A200DF:  = Me.Fields
  loc_A200E4: FLdPr var_B4
  loc_A200E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A200EC: FLdPr var_C8
  loc_A200EF:  = Me.Value
  loc_A200F4: FLdRfVar var_D8
  loc_A200F7: FnCDblVar
  loc_A200F9: LitI2_Byte 0
  loc_A200FB: CR8I2
  loc_A200FC: EqR4
  loc_A200FD: FFreeAd var_B4 = ""
  loc_A20104: FFree1Var var_D8 = ""
  loc_A20107: BranchF loc_A2010F
  loc_A2010A: LitI2_Byte &HFF
  loc_A2010C: FStI2 var_86
  loc_A2010F: Branch loc_A201D4
  loc_A20112: ILdRf var_8C
  loc_A20115: LitStr "Debito"
  loc_A20118: EqStr
  loc_A2011A: BranchF loc_A201D4
  loc_A2011D: LitStr "SELECT IFNULL(SUM(ImpoImpu),0) SumImpoImpu"
  loc_A20120: LitStr " FROM ordenpago op"
  loc_A20123: ConcatStr
  loc_A20124: FStStrNoPop var_90
  loc_A20127: LitStr " INNER JOIN liquidadeta lqd ON lqd.PeriInfo = op.PeriInfo AND lqd.ExpeImpu = op.ExpeImpu AND lqd.NumeLiqu = op.NumeLiqu"
  loc_A2012A: ConcatStr
  loc_A2012B: FStStrNoPop FaltanDatosImputacionDebito
  loc_A2012E: LitStr " WHERE op.PeriInfo = "
  loc_A20131: ConcatStr
  loc_A20132: FStStrNoPop var_98
  loc_A20135: FLdI2 PeriInfo
  loc_A20138: CStrUI1
  loc_A2013A: FStStrNoPop var_9C
  loc_A2013D: ConcatStr
  loc_A2013E: FStStrNoPop var_A0
  loc_A20141: LitStr " AND op.NumeOrpa = "
  loc_A20144: ConcatStr
  loc_A20145: FStStrNoPop var_A4
  loc_A20148: ILdRf NumeOrpa
  loc_A2014B: CStrI4
  loc_A2014D: FStStrNoPop var_A8
  loc_A20150: ConcatStr
  loc_A20151: FStStrNoPop var_AC
  loc_A20154: LitStr ";"
  loc_A20157: ConcatStr
  loc_A20158: FStStrNoPop var_DC
  loc_A2015B: Call EjecutarRsCls(from_stack_1v)
  loc_A20160: FFreeStr var_90 = "": FaltanDatosImputacionDebito = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A20175: FLdRfVar var_B0
  loc_A20178: FLdPr Me
  loc_A2017B: MemLdPr global_56
  loc_A2017E:  = Me.RecordCount
  loc_A20183: ILdRf var_B0
  loc_A20186: LitI4 0
  loc_A2018B: GtI4
  loc_A2018C: BranchF loc_A201D4
  loc_A2018F: FLdRfVar var_D8
  loc_A20192: FLdRfVar var_C8
  loc_A20195: LitVarStr var_C4, "SumImpoImpu"
  loc_A2019A: PopAdLdVar
  loc_A2019B: FLdRfVar var_B4
  loc_A2019E: FLdPr Me
  loc_A201A1: MemLdPr global_56
  loc_A201A4:  = Me.Fields
  loc_A201A9: FLdPr var_B4
  loc_A201AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A201B1: FLdPr var_C8
  loc_A201B4:  = Me.Value
  loc_A201B9: FLdRfVar var_D8
  loc_A201BC: FnCDblVar
  loc_A201BE: LitI2_Byte 0
  loc_A201C0: CR8I2
  loc_A201C1: EqR4
  loc_A201C2: FFreeAd var_B4 = ""
  loc_A201C9: FFree1Var var_D8 = ""
  loc_A201CC: BranchF loc_A201D4
  loc_A201CF: LitI2_Byte &HFF
  loc_A201D1: FStI2 var_86
  loc_A201D4: ExitProcCbHresult
End Function

Public Function FaltanDatosCheque(PeriInfo, NumeOrpa) '9A5EE0
  'Data Table: 4371F4
  loc_9A5E6C: LitStr "SELECT *"
  loc_9A5E6F: LitStr " FROM cheque"
  loc_9A5E72: ConcatStr
  loc_9A5E73: FStStrNoPop var_8C
  loc_9A5E76: LitStr " WHERE PeriInfo = "
  loc_9A5E79: ConcatStr
  loc_9A5E7A: FStStrNoPop var_90
  loc_9A5E7D: FLdI2 PeriInfo
  loc_9A5E80: CStrUI1
  loc_9A5E82: FStStrNoPop FaltanDatosCheque
  loc_9A5E85: ConcatStr
  loc_9A5E86: FStStrNoPop var_98
  loc_9A5E89: LitStr " AND NumeOrpa = "
  loc_9A5E8C: ConcatStr
  loc_9A5E8D: FStStrNoPop var_9C
  loc_9A5E90: ILdRf NumeOrpa
  loc_9A5E93: CStrI4
  loc_9A5E95: FStStrNoPop var_A0
  loc_9A5E98: ConcatStr
  loc_9A5E99: FStStrNoPop var_A4
  loc_9A5E9C: LitStr " AND FeanCheq IS NULL AND (AutoCheq IN (1,2,4) AND NumeMoba = 0);"
  loc_9A5E9F: ConcatStr
  loc_9A5EA0: FStStrNoPop var_A8
  loc_9A5EA3: Call EjecutarRsCls(from_stack_1v)
  loc_9A5EA8: FFreeStr var_8C = "": var_90 = "": FaltanDatosCheque = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A5EBB: FLdRfVar var_AC
  loc_9A5EBE: FLdPr Me
  loc_9A5EC1: MemLdPr global_56
  loc_9A5EC4:  = Me.RecordCount
  loc_9A5EC9: ILdRf var_AC
  loc_9A5ECC: LitI4 0
  loc_9A5ED1: GtI4
  loc_9A5ED2: BranchF loc_9A5EDA
  loc_9A5ED5: LitI2_Byte &HFF
  loc_9A5ED7: FStI2 var_86
  loc_9A5EDA: ExitProcCbHresult
End Function

Public Function FaltanDatosTransferencia(PeriInfo, NumeOrpa) '9A65C4
  'Data Table: 4371F4
  loc_9A6550: LitStr "SELECT *"
  loc_9A6553: LitStr " FROM cheque"
  loc_9A6556: ConcatStr
  loc_9A6557: FStStrNoPop var_8C
  loc_9A655A: LitStr " WHERE PeriInfo = "
  loc_9A655D: ConcatStr
  loc_9A655E: FStStrNoPop var_90
  loc_9A6561: FLdI2 PeriInfo
  loc_9A6564: CStrUI1
  loc_9A6566: FStStrNoPop FaltanDatosTransferencia
  loc_9A6569: ConcatStr
  loc_9A656A: FStStrNoPop var_98
  loc_9A656D: LitStr " AND NumeOrpa = "
  loc_9A6570: ConcatStr
  loc_9A6571: FStStrNoPop var_9C
  loc_9A6574: ILdRf NumeOrpa
  loc_9A6577: CStrI4
  loc_9A6579: FStStrNoPop var_A0
  loc_9A657C: ConcatStr
  loc_9A657D: FStStrNoPop var_A4
  loc_9A6580: LitStr " AND FeanCheq IS NULL AND (AutoCheq = 0 OR (AutoCheq=3 AND CodiBanc=0) );"
  loc_9A6583: ConcatStr
  loc_9A6584: FStStrNoPop var_A8
  loc_9A6587: Call EjecutarRsCls(from_stack_1v)
  loc_9A658C: FFreeStr var_8C = "": var_90 = "": FaltanDatosTransferencia = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A659F: FLdRfVar var_AC
  loc_9A65A2: FLdPr Me
  loc_9A65A5: MemLdPr global_56
  loc_9A65A8:  = Me.RecordCount
  loc_9A65AD: ILdRf var_AC
  loc_9A65B0: LitI4 0
  loc_9A65B5: GtI4
  loc_9A65B6: BranchF loc_9A65BE
  loc_9A65B9: LitI2_Byte &HFF
  loc_9A65BB: FStI2 var_86
  loc_9A65BE: ExitProcCbHresult
End Function

Public Sub ActualizaFere(PeriInfo, NumeOrpa, Fere, Cargo) 'A2A6BC
  'Data Table: 4371F4
  loc_A2A550: ILdRf Fere
  loc_A2A553: FStStrCopy var_88
  loc_A2A556: LitStr "SET @secu = (SELECT IFNULL(MAX(SecureOrpa),0)+1 FROM ordenpago o WHERE o.PeriInfo = "
  loc_A2A559: FLdI2 PeriInfo
  loc_A2A55C: CStrUI1
  loc_A2A55E: FStStrNoPop var_8C
  loc_A2A561: ConcatStr
  loc_A2A562: FStStrNoPop var_90
  loc_A2A565: LitStr " AND o.FereOrpa = "
  loc_A2A568: ConcatStr
  loc_A2A569: FStStrNoPop var_C4
  loc_A2A56C: LitI4 1
  loc_A2A571: LitI4 1
  loc_A2A576: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A2A57B: FStVarCopyObj var_C0
  loc_A2A57E: FLdRfVar var_C0
  loc_A2A581: FLdRfVar var_88
  loc_A2A584: CVarRef
  loc_A2A589: ImpAdCallI2 Format$(, )
  loc_A2A58E: FStStrNoPop var_C8
  loc_A2A591: ConcatStr
  loc_A2A592: FStStrNoPop var_CC
  loc_A2A595: LitStr ");"
  loc_A2A598: ConcatStr
  loc_A2A599: FStStrNoPop var_D0
  loc_A2A59C: LitStr " UPDATE ordenpago o"
  loc_A2A59F: ConcatStr
  loc_A2A5A0: FStStrNoPop var_D4
  loc_A2A5A3: LitStr " LEFT JOIN cheque ch ON ch.PeriInfo = o.PeriInfo AND ch.NumeOrpa = o.NumeOrpa"
  loc_A2A5A6: ConcatStr
  loc_A2A5A7: FStStrNoPop var_D8
  loc_A2A5AA: LitStr " AND FeanCheq IS NULL /*AND NumeMoba > 0 AND CodiBanc > 0*/"
  loc_A2A5AD: ConcatStr
  loc_A2A5AE: FStStrNoPop var_DC
  loc_A2A5B1: LitStr " SET FereOrpa = "
  loc_A2A5B4: ConcatStr
  loc_A2A5B5: FStStrNoPop var_110
  loc_A2A5B8: LitI4 1
  loc_A2A5BD: LitI4 1
  loc_A2A5C2: LitVarStr var_FC, "'yyyy-mm-dd'"
  loc_A2A5C7: FStVarCopyObj var_10C
  loc_A2A5CA: FLdRfVar var_10C
  loc_A2A5CD: FLdRfVar var_88
  loc_A2A5D0: CVarRef
  loc_A2A5D5: ImpAdCallI2 Format$(, )
  loc_A2A5DA: FStStrNoPop var_114
  loc_A2A5DD: ConcatStr
  loc_A2A5DE: FStStrNoPop var_118
  loc_A2A5E1: LitStr ", FereCheq = "
  loc_A2A5E4: ConcatStr
  loc_A2A5E5: FStStrNoPop var_14C
  loc_A2A5E8: LitI4 1
  loc_A2A5ED: LitI4 1
  loc_A2A5F2: LitVarStr var_138, "'yyyy-mm-dd'"
  loc_A2A5F7: FStVarCopyObj var_148
  loc_A2A5FA: FLdRfVar var_148
  loc_A2A5FD: FLdRfVar var_88
  loc_A2A600: CVarRef
  loc_A2A605: ImpAdCallI2 Format$(, )
  loc_A2A60A: FStStrNoPop var_150
  loc_A2A60D: ConcatStr
  loc_A2A60E: FStStrNoPop var_154
  loc_A2A611: LitStr ", SecureOrpa = @secu"
  loc_A2A614: ConcatStr
  loc_A2A615: FStStrNoPop var_158
  loc_A2A618: LitStr ", CargoOrpa = "
  loc_A2A61B: ConcatStr
  loc_A2A61C: FStStrNoPop var_15C
  loc_A2A61F: FLdUI1
  loc_A2A623: CStrI2
  loc_A2A625: FStStrNoPop var_160
  loc_A2A628: ConcatStr
  loc_A2A629: FStStrNoPop var_164
  loc_A2A62C: LitStr ", o.ModiUsua = '"
  loc_A2A62F: ConcatStr
  loc_A2A630: FStStrNoPop var_168
  loc_A2A633: ImpAdLdI4 MemVar_C3D03C
  loc_A2A636: ConcatStr
  loc_A2A637: FStStrNoPop var_16C
  loc_A2A63A: LitStr "', o.ModiFeho = Now()"
  loc_A2A63D: ConcatStr
  loc_A2A63E: FStStrNoPop var_170
  loc_A2A641: LitStr " WHERE o.PeriInfo = "
  loc_A2A644: ConcatStr
  loc_A2A645: FStStrNoPop var_174
  loc_A2A648: FLdI2 PeriInfo
  loc_A2A64B: CStrUI1
  loc_A2A64D: FStStrNoPop var_178
  loc_A2A650: ConcatStr
  loc_A2A651: FStStrNoPop var_17C
  loc_A2A654: LitStr " AND o.NumeOrpa = "
  loc_A2A657: ConcatStr
  loc_A2A658: FStStrNoPop var_180
  loc_A2A65B: ILdRf NumeOrpa
  loc_A2A65E: CStrI4
  loc_A2A660: FStStrNoPop var_184
  loc_A2A663: ConcatStr
  loc_A2A664: FStStrNoPop var_188
  loc_A2A667: LitStr ";"
  loc_A2A66A: ConcatStr
  loc_A2A66B: FStStrNoPop var_18C
  loc_A2A66E: Call EjecutarRsCls(from_stack_1v)
  loc_A2A673: FFreeStr var_8C = "": var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_A2A6B0: FFreeVar var_C0 = "": var_10C = ""
  loc_A2A6B9: ExitProcHresult
  loc_A2A6BA: ModI4
End Sub

Public Sub ActualizaFereOrpaFearOrpa(PeriInfo, NumeOrpa, Fere) '9E4528
  'Data Table: 4371F4
  loc_9E444C: ILdRf Fere
  loc_9E444F: FStStrCopy var_88
  loc_9E4452: LitStr "UPDATE ordenpago"
  loc_9E4455: LitStr " SET FereOrpa="
  loc_9E4458: ConcatStr
  loc_9E4459: FStStrNoPop var_BC
  loc_9E445C: LitI4 1
  loc_9E4461: LitI4 1
  loc_9E4466: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_9E446B: FStVarCopyObj var_B8
  loc_9E446E: FLdRfVar var_B8
  loc_9E4471: FLdRfVar var_88
  loc_9E4474: CVarRef
  loc_9E4479: ImpAdCallI2 Format$(, )
  loc_9E447E: FStStrNoPop var_C0
  loc_9E4481: ConcatStr
  loc_9E4482: FStStrNoPop var_C4
  loc_9E4485: LitStr ", FearOrpa="
  loc_9E4488: ConcatStr
  loc_9E4489: FStStrNoPop var_F8
  loc_9E448C: LitI4 1
  loc_9E4491: LitI4 1
  loc_9E4496: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_9E449B: FStVarCopyObj var_F4
  loc_9E449E: FLdRfVar var_F4
  loc_9E44A1: FLdRfVar var_88
  loc_9E44A4: CVarRef
  loc_9E44A9: ImpAdCallI2 Format$(, )
  loc_9E44AE: FStStrNoPop var_FC
  loc_9E44B1: ConcatStr
  loc_9E44B2: FStStrNoPop var_100
  loc_9E44B5: LitStr ", ModiUsua = '"
  loc_9E44B8: ConcatStr
  loc_9E44B9: FStStrNoPop var_104
  loc_9E44BC: ImpAdLdI4 MemVar_C3D03C
  loc_9E44BF: ConcatStr
  loc_9E44C0: FStStrNoPop var_108
  loc_9E44C3: LitStr "', ModiFeho = Now()"
  loc_9E44C6: ConcatStr
  loc_9E44C7: FStStrNoPop var_10C
  loc_9E44CA: LitStr " WHERE ordenpago.PeriInfo = "
  loc_9E44CD: ConcatStr
  loc_9E44CE: FStStrNoPop var_110
  loc_9E44D1: FLdI2 PeriInfo
  loc_9E44D4: CStrUI1
  loc_9E44D6: FStStrNoPop var_114
  loc_9E44D9: ConcatStr
  loc_9E44DA: FStStrNoPop var_118
  loc_9E44DD: LitStr " AND ordenpago.NumeOrpa = "
  loc_9E44E0: ConcatStr
  loc_9E44E1: FStStrNoPop var_11C
  loc_9E44E4: ILdRf NumeOrpa
  loc_9E44E7: CStrI4
  loc_9E44E9: FStStrNoPop var_120
  loc_9E44EC: ConcatStr
  loc_9E44ED: FStStrNoPop var_124
  loc_9E44F0: LitStr ";"
  loc_9E44F3: ConcatStr
  loc_9E44F4: FStStrNoPop var_128
  loc_9E44F7: Call EjecutarRsCls(from_stack_1v)
  loc_9E44FC: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_9E451F: FFreeVar var_B8 = ""
  loc_9E4526: ExitProcHresult
End Sub

Public Sub ActualizaLNFechCaja(PeriInfo, ExpeImpu, NumeLiqu, Fecha) '9D52E4
  'Data Table: 4371F4
  loc_9D5228: ILdRf ExpeImpu
  loc_9D522B: FStStrCopy var_88
  loc_9D522E: ILdRf Fecha
  loc_9D5231: FStStrCopy var_8C
  loc_9D5234: LitStr "UPDATE liquidaneto"
  loc_9D5237: LitStr " SET FechCaja="
  loc_9D523A: ConcatStr
  loc_9D523B: FStStrNoPop var_C0
  loc_9D523E: LitI4 1
  loc_9D5243: LitI4 1
  loc_9D5248: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_9D524D: FStVarCopyObj var_BC
  loc_9D5250: FLdRfVar var_BC
  loc_9D5253: FLdRfVar var_8C
  loc_9D5256: CVarRef
  loc_9D525B: ImpAdCallI2 Format$(, )
  loc_9D5260: FStStrNoPop var_C4
  loc_9D5263: ConcatStr
  loc_9D5264: FStStrNoPop var_C8
  loc_9D5267: LitStr ", FepaLine = Now()"
  loc_9D526A: ConcatStr
  loc_9D526B: FStStrNoPop var_CC
  loc_9D526E: LitStr " WHERE PeriInfo = "
  loc_9D5271: ConcatStr
  loc_9D5272: FStStrNoPop var_D0
  loc_9D5275: FLdI2 PeriInfo
  loc_9D5278: CStrUI1
  loc_9D527A: FStStrNoPop var_D4
  loc_9D527D: ConcatStr
  loc_9D527E: FStStrNoPop var_D8
  loc_9D5281: LitStr " AND ExpeImpu = '"
  loc_9D5284: ConcatStr
  loc_9D5285: FStStrNoPop var_DC
  loc_9D5288: ILdRf var_88
  loc_9D528B: ConcatStr
  loc_9D528C: FStStrNoPop var_E0
  loc_9D528F: LitStr "'"
  loc_9D5292: ConcatStr
  loc_9D5293: FStStrNoPop var_E4
  loc_9D5296: LitStr " AND NumeLiqu = "
  loc_9D5299: ConcatStr
  loc_9D529A: FStStrNoPop var_E8
  loc_9D529D: FLdI2 NumeLiqu
  loc_9D52A0: CStrUI1
  loc_9D52A2: FStStrNoPop var_EC
  loc_9D52A5: ConcatStr
  loc_9D52A6: FStStrNoPop var_F0
  loc_9D52A9: LitStr " AND FechCaja IS NULL"
  loc_9D52AC: ConcatStr
  loc_9D52AD: FStStrNoPop var_F4
  loc_9D52B0: LitStr " AND FeanLine IS NULL;"
  loc_9D52B3: ConcatStr
  loc_9D52B4: FStStrNoPop var_F8
  loc_9D52B7: Call EjecutarRsCls(from_stack_1v)
  loc_9D52BC: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_9D52DD: FFree1Var var_BC = ""
  loc_9D52E0: ExitProcHresult
End Sub

Public Sub ActualizaLNFechCajaxCuit(PeriInfo, ExpeImpu, NumeLiqu, CucuPers, Fecha) '9E4270
  'Data Table: 4371F4
  loc_9E419C: ILdRf ExpeImpu
  loc_9E419F: FStStrCopy var_88
  loc_9E41A2: ILdRf CucuPers
  loc_9E41A5: FStStrCopy var_8C
  loc_9E41A8: ILdRf Fecha
  loc_9E41AB: FStStrCopy var_90
  loc_9E41AE: LitStr "UPDATE liquidaneto"
  loc_9E41B1: LitStr " SET FechCaja="
  loc_9E41B4: ConcatStr
  loc_9E41B5: FStStrNoPop var_C4
  loc_9E41B8: LitI4 1
  loc_9E41BD: LitI4 1
  loc_9E41C2: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_9E41C7: FStVarCopyObj var_C0
  loc_9E41CA: FLdRfVar var_C0
  loc_9E41CD: FLdRfVar var_90
  loc_9E41D0: CVarRef
  loc_9E41D5: ImpAdCallI2 Format$(, )
  loc_9E41DA: FStStrNoPop var_C8
  loc_9E41DD: ConcatStr
  loc_9E41DE: FStStrNoPop var_CC
  loc_9E41E1: LitStr ", FepaLine = Now()"
  loc_9E41E4: ConcatStr
  loc_9E41E5: FStStrNoPop var_D0
  loc_9E41E8: LitStr " WHERE PeriInfo = "
  loc_9E41EB: ConcatStr
  loc_9E41EC: FStStrNoPop var_D4
  loc_9E41EF: FLdI2 PeriInfo
  loc_9E41F2: CStrUI1
  loc_9E41F4: FStStrNoPop var_D8
  loc_9E41F7: ConcatStr
  loc_9E41F8: FStStrNoPop var_DC
  loc_9E41FB: LitStr " AND ExpeImpu = '"
  loc_9E41FE: ConcatStr
  loc_9E41FF: FStStrNoPop var_E0
  loc_9E4202: ILdRf var_88
  loc_9E4205: ConcatStr
  loc_9E4206: FStStrNoPop var_E4
  loc_9E4209: LitStr "'"
  loc_9E420C: ConcatStr
  loc_9E420D: FStStrNoPop var_E8
  loc_9E4210: LitStr " AND NumeLiqu = "
  loc_9E4213: ConcatStr
  loc_9E4214: FStStrNoPop var_EC
  loc_9E4217: FLdI2 NumeLiqu
  loc_9E421A: CStrUI1
  loc_9E421C: FStStrNoPop var_F0
  loc_9E421F: ConcatStr
  loc_9E4220: FStStrNoPop var_F4
  loc_9E4223: LitStr " AND CucuPers = "
  loc_9E4226: ConcatStr
  loc_9E4227: FStStrNoPop var_F8
  loc_9E422A: ILdRf var_8C
  loc_9E422D: ConcatStr
  loc_9E422E: FStStrNoPop var_FC
  loc_9E4231: LitStr " AND FechCaja IS NULL"
  loc_9E4234: ConcatStr
  loc_9E4235: FStStrNoPop var_100
  loc_9E4238: LitStr " AND FeanLine IS NULL;"
  loc_9E423B: ConcatStr
  loc_9E423C: FStStrNoPop var_104
  loc_9E423F: Call EjecutarRsCls(from_stack_1v)
  loc_9E4244: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_9E4269: FFree1Var var_C0 = ""
  loc_9E426C: ExitProcHresult
  loc_9E426D: DOC
End Sub

Public Sub InsertCargo(PeriInfo, NumeOrpa, ExpeImpu, NumeLiqu, FechCargo, DetaCargo, CucuPers, ImpoCargo, CodiBanc, NumeMoba, DiasRendCargo) 'A3A5E0
  'Data Table: 4371F4
  loc_A3A448: ILdRf ExpeImpu
  loc_A3A44B: FStStrCopy var_88
  loc_A3A44E: ILdRf FechCargo
  loc_A3A451: FStStrCopy var_8C
  loc_A3A454: ILdRf DetaCargo
  loc_A3A457: FStStrCopy var_90
  loc_A3A45A: ILdRf CucuPers
  loc_A3A45D: FStStrCopy var_94
  loc_A3A460: LitStr "INSERT INTO cargo (IdCargo, PeriInfo, CodiTica, NumeOrpa, ExpeImpu, NumeLiqu, FechCargo, DetaCargo, CucuPers, ImpoCargo, CodiBanc, NumeMoba, DireCargo, AltaUsua)"
  loc_A3A463: LitStr " Values( (Select IFNULL(Max(IdCargo),0)+1 FROM cargo c), "
  loc_A3A466: ConcatStr
  loc_A3A467: FStStrNoPop var_98
  loc_A3A46A: FLdI2 PeriInfo
  loc_A3A46D: CStrUI1
  loc_A3A46F: FStStrNoPop var_9C
  loc_A3A472: ConcatStr
  loc_A3A473: FStStrNoPop var_A0
  loc_A3A476: LitStr ", (Select Max(CodiTica) FROM tipocargo WHERE PeriInfo = "
  loc_A3A479: ConcatStr
  loc_A3A47A: FStStrNoPop var_A4
  loc_A3A47D: FLdI2 PeriInfo
  loc_A3A480: CStrUI1
  loc_A3A482: FStStrNoPop var_A8
  loc_A3A485: ConcatStr
  loc_A3A486: FStStrNoPop var_AC
  loc_A3A489: LitStr "), "
  loc_A3A48C: ConcatStr
  loc_A3A48D: FStStrNoPop var_B0
  loc_A3A490: ILdRf NumeOrpa
  loc_A3A493: CStrI4
  loc_A3A495: FStStrNoPop var_B4
  loc_A3A498: ConcatStr
  loc_A3A499: FStStrNoPop var_B8
  loc_A3A49C: LitStr ", '"
  loc_A3A49F: ConcatStr
  loc_A3A4A0: FStStrNoPop var_BC
  loc_A3A4A3: ILdRf var_88
  loc_A3A4A6: ConcatStr
  loc_A3A4A7: FStStrNoPop var_C0
  loc_A3A4AA: LitStr "', "
  loc_A3A4AD: ConcatStr
  loc_A3A4AE: FStStrNoPop var_C4
  loc_A3A4B1: FLdI2 NumeLiqu
  loc_A3A4B4: CStrUI1
  loc_A3A4B6: FStStrNoPop var_C8
  loc_A3A4B9: ConcatStr
  loc_A3A4BA: FStStrNoPop var_CC
  loc_A3A4BD: LitStr ", "
  loc_A3A4C0: ConcatStr
  loc_A3A4C1: FStStrNoPop var_100
  loc_A3A4C4: LitI4 1
  loc_A3A4C9: LitI4 1
  loc_A3A4CE: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_A3A4D3: FStVarCopyObj var_FC
  loc_A3A4D6: FLdRfVar var_FC
  loc_A3A4D9: FLdRfVar var_8C
  loc_A3A4DC: CVarRef
  loc_A3A4E1: ImpAdCallI2 Format$(, )
  loc_A3A4E6: FStStrNoPop var_104
  loc_A3A4E9: ConcatStr
  loc_A3A4EA: FStStrNoPop var_108
  loc_A3A4ED: LitStr ", '"
  loc_A3A4F0: ConcatStr
  loc_A3A4F1: FStStrNoPop var_10C
  loc_A3A4F4: ILdRf var_90
  loc_A3A4F7: ConcatStr
  loc_A3A4F8: FStStrNoPop var_110
  loc_A3A4FB: LitStr "', "
  loc_A3A4FE: ConcatStr
  loc_A3A4FF: FStStrNoPop var_114
  loc_A3A502: ILdRf var_94
  loc_A3A505: ConcatStr
  loc_A3A506: FStStrNoPop var_118
  loc_A3A509: LitStr ", "
  loc_A3A50C: ConcatStr
  loc_A3A50D: FStStrNoPop var_120
  loc_A3A510: LitI4 0
  loc_A3A515: LitI4 -1
  loc_A3A51A: LitI4 1
  loc_A3A51F: LitStr "."
  loc_A3A522: LitStr ","
  loc_A3A525: FLdFPR8 ImpoCargo
  loc_A3A528: CStrR8
  loc_A3A52A: FStStrNoPop var_11C
  loc_A3A52D: ImpAdCallI2 Replace(, , , , , )
  loc_A3A532: FStStrNoPop var_124
  loc_A3A535: ConcatStr
  loc_A3A536: FStStrNoPop var_128
  loc_A3A539: LitStr ", "
  loc_A3A53C: ConcatStr
  loc_A3A53D: FStStrNoPop var_12C
  loc_A3A540: FLdI2 NumeMoba
  loc_A3A543: CStrUI1
  loc_A3A545: FStStrNoPop var_130
  loc_A3A548: ConcatStr
  loc_A3A549: FStStrNoPop var_134
  loc_A3A54C: LitStr ", "
  loc_A3A54F: ConcatStr
  loc_A3A550: FStStrNoPop var_138
  loc_A3A553: ILdRf DiasRendCargo
  loc_A3A556: CStrI4
  loc_A3A558: FStStrNoPop var_13C
  loc_A3A55B: ConcatStr
  loc_A3A55C: FStStrNoPop var_140
  loc_A3A55F: LitStr ","
  loc_A3A562: ConcatStr
  loc_A3A563: FStStrNoPop var_144
  loc_A3A566: FLdUI1
  loc_A3A56A: CStrI2
  loc_A3A56C: FStStrNoPop var_148
  loc_A3A56F: ConcatStr
  loc_A3A570: FStStrNoPop var_14C
  loc_A3A573: LitStr ", '"
  loc_A3A576: ConcatStr
  loc_A3A577: FStStrNoPop var_150
  loc_A3A57A: ImpAdLdI4 MemVar_C3D03C
  loc_A3A57D: ConcatStr
  loc_A3A57E: FStStrNoPop var_154
  loc_A3A581: LitStr "')"
  loc_A3A584: ConcatStr
  loc_A3A585: FStStrNoPop var_158
  loc_A3A588: Call EjecutarRsCls(from_stack_1v)
  loc_A3A58D: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_A3A5DA: FFree1Var var_FC = ""
  loc_A3A5DD: ExitProcHresult
  loc_A3A5DE: NewIfNullPr Me
End Sub

Public Sub InsertCargo_frmArchivo(PeriInfo, NumeOrpa, DiasRendCargo) '9E6450
  'Data Table: 4371F4
  loc_9E637C: LitStr "SET @id = (SELECT MAX(IdCargo) FROM cargo);"
  loc_9E637F: LitStr " INSERT INTO cargo (IdCargo, PeriInfo, CodiTica, NumeOrpa, ExpeImpu, NumeLiqu, FechCargo, DetaCargo, CucuPers, ImpoCargo, CodiBanc, NumeMoba, DireCargo, AltaUsua)"
  loc_9E6382: ConcatStr
  loc_9E6383: FStStrNoPop var_88
  loc_9E6386: LitStr " SELECT @id:=@id+1 IdCargo, o.PeriInfo, (SELECT MAX(tc.CodiTica) FROM tipocargo tc WHERE tc.PeriInfo = "
  loc_9E6389: ConcatStr
  loc_9E638A: FStStrNoPop var_8C
  loc_9E638D: FLdI2 PeriInfo
  loc_9E6390: CStrUI1
  loc_9E6392: FStStrNoPop var_90
  loc_9E6395: ConcatStr
  loc_9E6396: FStStrNoPop var_94
  loc_9E6399: LitStr ") CodiTica, o.NumeOrpa, o.ExpeImpu, o.NumeLiqu"
  loc_9E639C: ConcatStr
  loc_9E639D: FStStrNoPop var_98
  loc_9E63A0: LitStr " , o.FearOrpa FechCargo, o.DetaOrpa DetaCargo, CucuPers, ImpoCheq ImpoCargo, CodiBanc, NumeMoba"
  loc_9E63A3: ConcatStr
  loc_9E63A4: FStStrNoPop var_9C
  loc_9E63A7: LitStr " , "
  loc_9E63AA: ConcatStr
  loc_9E63AB: FStStrNoPop var_A0
  loc_9E63AE: FLdUI1
  loc_9E63B2: CStrI2
  loc_9E63B4: FStStrNoPop var_A4
  loc_9E63B7: ConcatStr
  loc_9E63B8: FStStrNoPop var_A8
  loc_9E63BB: LitStr " DireCargo, '"
  loc_9E63BE: ConcatStr
  loc_9E63BF: FStStrNoPop var_AC
  loc_9E63C2: ImpAdLdI4 MemVar_C3D03C
  loc_9E63C5: ConcatStr
  loc_9E63C6: FStStrNoPop var_B0
  loc_9E63C9: LitStr "' AltaUsua"
  loc_9E63CC: ConcatStr
  loc_9E63CD: FStStrNoPop var_B4
  loc_9E63D0: LitStr " FROM ordenpago o"
  loc_9E63D3: ConcatStr
  loc_9E63D4: FStStrNoPop var_B8
  loc_9E63D7: LitStr " INNER JOIN cheque ch ON ch.PeriInfo = o.PeriInfo AND ch.NumeOrpa = o.NumeOrpa"
  loc_9E63DA: ConcatStr
  loc_9E63DB: FStStrNoPop var_BC
  loc_9E63DE: LitStr " AND ch.FeanCheq IS NULL"
  loc_9E63E1: ConcatStr
  loc_9E63E2: FStStrNoPop var_C0
  loc_9E63E5: LitStr " WHERE o.PeriInfo = "
  loc_9E63E8: ConcatStr
  loc_9E63E9: FStStrNoPop var_C4
  loc_9E63EC: FLdI2 PeriInfo
  loc_9E63EF: CStrUI1
  loc_9E63F1: FStStrNoPop var_C8
  loc_9E63F4: ConcatStr
  loc_9E63F5: FStStrNoPop var_CC
  loc_9E63F8: LitStr vbNullString
  loc_9E63FB: ConcatStr
  loc_9E63FC: FStStrNoPop var_D0
  loc_9E63FF: LitStr " AND o.NumeOrpa = "
  loc_9E6402: ConcatStr
  loc_9E6403: FStStrNoPop var_D4
  loc_9E6406: ILdRf NumeOrpa
  loc_9E6409: CStrI4
  loc_9E640B: FStStrNoPop var_D8
  loc_9E640E: ConcatStr
  loc_9E640F: FStStrNoPop var_DC
  loc_9E6412: LitStr ";"
  loc_9E6415: ConcatStr
  loc_9E6416: FStStrNoPop var_E0
  loc_9E6419: Call EjecutarRsCls(from_stack_1v)
  loc_9E641E: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_9E644F: ExitProcHresult
End Sub

Public Sub ActualizaFereNULL() '9E6728
  'Data Table: 4371F4
  loc_9E6640: LitStr "UPDATE ordenpago o"
  loc_9E6643: LitStr " LEFT JOIN cheque ch ON ch.PeriInfo = o.PeriInfo AND ch.NumeOrpa = o.NumeOrpa"
  loc_9E6646: ConcatStr
  loc_9E6647: FStStrNoPop var_88
  loc_9E664A: LitStr " AND FeanCheq IS NULL /* AND NumeMoba > 0 AND CodiBanc > 0 */"
  loc_9E664D: ConcatStr
  loc_9E664E: FStStrNoPop var_8C
  loc_9E6651: LitStr " SET FereOrpa = NULL, FereCheq = NULL, SecureOrpa = 0"
  loc_9E6654: ConcatStr
  loc_9E6655: FStStrNoPop var_90
  loc_9E6658: LitStr ", CargoOrpa = 0"
  loc_9E665B: ConcatStr
  loc_9E665C: FStStrNoPop var_94
  loc_9E665F: LitStr ", o.ModiUsua = '"
  loc_9E6662: ConcatStr
  loc_9E6663: FStStrNoPop var_98
  loc_9E6666: ImpAdLdI4 MemVar_C3D03C
  loc_9E6669: ConcatStr
  loc_9E666A: FStStrNoPop var_9C
  loc_9E666D: LitStr "', o.ModiFeho = Now()"
  loc_9E6670: ConcatStr
  loc_9E6671: FStStrNoPop var_A0
  loc_9E6674: LitStr " WHERE o.PeriInfo = "
  loc_9E6677: ConcatStr
  loc_9E6678: CVarStr var_D8
  loc_9E667B: FLdRfVar var_C8
  loc_9E667E: FLdRfVar var_B8
  loc_9E6681: LitVarStr var_B4, "PeriInfo"
  loc_9E6686: PopAdLdVar
  loc_9E6687: FLdRfVar var_A4
  loc_9E668A: FLdPr Me
  loc_9E668D: MemLdPr RsFrm
  loc_9E6690:  = Me.Fields
  loc_9E6695: FLdPr var_A4
  loc_9E6698: from_stack_2 = Me.Item(from_stack_1)
  loc_9E669D: FLdPr var_B8
  loc_9E66A0:  = Me.Value
  loc_9E66A5: FLdRfVar var_C8
  loc_9E66A8: ConcatVar var_E8
  loc_9E66AC: LitVarStr var_F8, " AND o.NumeOrpa = "
  loc_9E66B1: ConcatVar var_108
  loc_9E66B5: FLdRfVar var_130
  loc_9E66B8: FLdRfVar var_120
  loc_9E66BB: LitVarStr var_11C, "NumeOrpa"
  loc_9E66C0: PopAdLdVar
  loc_9E66C1: FLdRfVar var_10C
  loc_9E66C4: FLdPr Me
  loc_9E66C7: MemLdPr RsFrm
  loc_9E66CA:  = Me.Fields
  loc_9E66CF: FLdPr var_10C
  loc_9E66D2: from_stack_2 = Me.Item(from_stack_1)
  loc_9E66D7: FLdPr var_120
  loc_9E66DA:  = Me.Value
  loc_9E66DF: FLdRfVar var_130
  loc_9E66E2: ConcatVar var_140
  loc_9E66E6: LitVarStr var_150, ";"
  loc_9E66EB: ConcatVar var_160
  loc_9E66EF: CStrVarVal var_164
  loc_9E66F3: Call EjecutarRsCls(from_stack_1v)
  loc_9E66F8: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9E670B: FFreeAd var_A4 = "": var_B8 = "": var_10C = ""
  loc_9E6716: FFreeVar var_D8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_130 = "": var_140 = ""
  loc_9E6727: ExitProcHresult
End Sub

Public Sub ActualizaFearArchFojaOrpa(FearOrpa, ArchOrpa, FojaOrpa) 'A195F4
  'Data Table: 4371F4
  loc_A194B8: ILdRf FearOrpa
  loc_A194BB: FStStrCopy var_88
  loc_A194BE: ILdRf ArchOrpa
  loc_A194C1: FStStrCopy var_8C
  loc_A194C4: ILdRf FojaOrpa
  loc_A194C7: FStStrCopy var_90
  loc_A194CA: LitStr "UPDATE ordenpago"
  loc_A194CD: LitStr " SET FearOrpa="
  loc_A194D0: ConcatStr
  loc_A194D1: FStStrNoPop var_C4
  loc_A194D4: LitI4 1
  loc_A194D9: LitI4 1
  loc_A194DE: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_A194E3: FStVarCopyObj var_C0
  loc_A194E6: FLdRfVar var_C0
  loc_A194E9: FLdRfVar var_88
  loc_A194EC: CVarRef
  loc_A194F1: ImpAdCallI2 Format$(, )
  loc_A194F6: FStStrNoPop var_C8
  loc_A194F9: ConcatStr
  loc_A194FA: FStStrNoPop var_CC
  loc_A194FD: LitStr ", ArchOrpa='"
  loc_A19500: ConcatStr
  loc_A19501: FStStrNoPop var_D0
  loc_A19504: ILdRf var_8C
  loc_A19507: ConcatStr
  loc_A19508: FStStrNoPop var_D4
  loc_A1950B: LitStr "', FojaOrpa='"
  loc_A1950E: ConcatStr
  loc_A1950F: FStStrNoPop var_D8
  loc_A19512: ILdRf var_90
  loc_A19515: ConcatStr
  loc_A19516: FStStrNoPop var_DC
  loc_A19519: LitStr "'"
  loc_A1951C: ConcatStr
  loc_A1951D: FStStrNoPop var_E0
  loc_A19520: LitStr ", ModiUsua = '"
  loc_A19523: ConcatStr
  loc_A19524: FStStrNoPop var_E4
  loc_A19527: ImpAdLdI4 MemVar_C3D03C
  loc_A1952A: ConcatStr
  loc_A1952B: FStStrNoPop var_E8
  loc_A1952E: LitStr "', ModiFeho = Now()"
  loc_A19531: ConcatStr
  loc_A19532: FStStrNoPop var_EC
  loc_A19535: LitStr " WHERE PeriInfo = "
  loc_A19538: ConcatStr
  loc_A19539: CVarStr var_124
  loc_A1953C: FLdRfVar var_114
  loc_A1953F: FLdRfVar var_104
  loc_A19542: LitVarStr var_100, "PeriInfo"
  loc_A19547: PopAdLdVar
  loc_A19548: FLdRfVar var_F0
  loc_A1954B: FLdPr Me
  loc_A1954E: MemLdPr RsFrm
  loc_A19551:  = Me.Fields
  loc_A19556: FLdPr var_F0
  loc_A19559: from_stack_2 = Me.Item(from_stack_1)
  loc_A1955E: FLdPr var_104
  loc_A19561:  = Me.Value
  loc_A19566: FLdRfVar var_114
  loc_A19569: ConcatVar var_134
  loc_A1956D: LitVarStr var_144, " AND NumeOrpa = "
  loc_A19572: ConcatVar var_154
  loc_A19576: FLdRfVar var_17C
  loc_A19579: FLdRfVar var_16C
  loc_A1957C: LitVarStr var_168, "NumeOrpa"
  loc_A19581: PopAdLdVar
  loc_A19582: FLdRfVar var_158
  loc_A19585: FLdPr Me
  loc_A19588: MemLdPr RsFrm
  loc_A1958B:  = Me.Fields
  loc_A19590: FLdPr var_158
  loc_A19593: from_stack_2 = Me.Item(from_stack_1)
  loc_A19598: FLdPr var_16C
  loc_A1959B:  = Me.Value
  loc_A195A0: FLdRfVar var_17C
  loc_A195A3: ConcatVar var_18C
  loc_A195A7: LitVarStr var_19C, ";"
  loc_A195AC: ConcatVar var_1AC
  loc_A195B0: CStrVarVal var_1B0
  loc_A195B4: Call EjecutarRsCls(from_stack_1v)
  loc_A195B9: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A195D4: FFreeAd var_F0 = "": var_104 = "": var_158 = ""
  loc_A195DF: FFreeVar var_C0 = "": var_124 = "": var_114 = "": var_134 = "": var_154 = "": var_17C = "": var_18C = ""
  loc_A195F2: ExitProcHresult
End Sub

Public Function ValidaUsarOpReservada() '9C2F14
  'Data Table: 4371F4
  loc_9C2E54: ZeroRetVal
  loc_9C2E56: LitStr "SELECT NumeOrpa"
  loc_9C2E59: LitStr " FROM ordenpago"
  loc_9C2E5C: ConcatStr
  loc_9C2E5D: FStStrNoPop var_8C
  loc_9C2E60: LitStr " WHERE PeriInfo = "
  loc_9C2E63: ConcatStr
  loc_9C2E64: FStStrNoPop var_90
  loc_9C2E67: ImpAdLdI2 MemVar_C3D064
  loc_9C2E6A: CStrUI1
  loc_9C2E6C: FStStrNoPop ValidaUsarOpReservada
  loc_9C2E6F: ConcatStr
  loc_9C2E70: FStStrNoPop var_98
  loc_9C2E73: LitStr " AND TipoOrpa <> 'Reservada'"
  loc_9C2E76: ConcatStr
  loc_9C2E77: FStStrNoPop var_9C
  loc_9C2E7A: LitStr " ORDER BY NumeOrpa DESC LIMIT 1;"
  loc_9C2E7D: ConcatStr
  loc_9C2E7E: FStStrNoPop var_A0
  loc_9C2E81: Call EjecutarRsCls(from_stack_1v)
  loc_9C2E86: FFreeStr var_8C = "": var_90 = "": ValidaUsarOpReservada = "": var_98 = "": var_9C = ""
  loc_9C2E95: FLdRfVar var_A4
  loc_9C2E98: FLdPr Me
  loc_9C2E9B: MemLdPr global_56
  loc_9C2E9E:  = Me.RecordCount
  loc_9C2EA3: ILdRf var_A4
  loc_9C2EA6: LitI4 0
  loc_9C2EAB: GtI4
  loc_9C2EAC: BranchF loc_9C2EAF
  loc_9C2EAF: LitStr "SELECT NumeOrpa"
  loc_9C2EB2: LitStr " FROM ordenpago"
  loc_9C2EB5: ConcatStr
  loc_9C2EB6: FStStrNoPop var_8C
  loc_9C2EB9: LitStr " WHERE PeriInfo = "
  loc_9C2EBC: ConcatStr
  loc_9C2EBD: FStStrNoPop var_90
  loc_9C2EC0: ImpAdLdI2 MemVar_C3D064
  loc_9C2EC3: CStrUI1
  loc_9C2EC5: FStStrNoPop ValidaUsarOpReservada
  loc_9C2EC8: ConcatStr
  loc_9C2EC9: FStStrNoPop var_98
  loc_9C2ECC: LitStr " AND TipoOrpa = 'Reservada';"
  loc_9C2ECF: ConcatStr
  loc_9C2ED0: FStStrNoPop var_9C
  loc_9C2ED3: Call EjecutarRsCls(from_stack_1v)
  loc_9C2ED8: FFreeStr var_8C = "": var_90 = "": ValidaUsarOpReservada = "": var_98 = ""
  loc_9C2EE5: FLdRfVar var_A4
  loc_9C2EE8: FLdPr Me
  loc_9C2EEB: MemLdPr global_56
  loc_9C2EEE:  = Me.RecordCount
  loc_9C2EF3: ILdRf var_A4
  loc_9C2EF6: LitI4 0
  loc_9C2EFB: EqI4
  loc_9C2EFC: BranchF loc_9C2F0B
  loc_9C2EFF: LitStr "No existen Ordenes de Pago Reservadas. Verifique..."
  loc_9C2F02: FStStrCopy var_88
  loc_9C2F05: ExitProcCbHresult
  loc_9C2F0B: ExitProcCbHresult
End Function

Public Function ValidaEliminar() 'A47F3C
  'Data Table: 4371F4
  loc_A47CDC: ZeroRetVal
  loc_A47CDE: LitStr "SELECT *"
  loc_A47CE1: LitStr " FROM ordenpago"
  loc_A47CE4: ConcatStr
  loc_A47CE5: FStStrNoPop var_8C
  loc_A47CE8: LitStr " WHERE PeriInfo = "
  loc_A47CEB: ConcatStr
  loc_A47CEC: CVarStr var_C4
  loc_A47CEF: FLdRfVar var_B4
  loc_A47CF2: FLdRfVar var_A4
  loc_A47CF5: LitVarStr var_A0, "PeriInfo"
  loc_A47CFA: PopAdLdVar
  loc_A47CFB: FLdRfVar var_90
  loc_A47CFE: FLdPr Me
  loc_A47D01: MemLdPr RsFrm
  loc_A47D04:  = Me.Fields
  loc_A47D09: FLdPr var_90
  loc_A47D0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A47D11: FLdPr var_A4
  loc_A47D14:  = Me.Value
  loc_A47D19: FLdRfVar var_B4
  loc_A47D1C: ConcatVar var_D4
  loc_A47D20: LitVarStr var_E4, " AND NumeOrpa = "
  loc_A47D25: ConcatVar var_F4
  loc_A47D29: FLdRfVar var_11C
  loc_A47D2C: FLdRfVar var_10C
  loc_A47D2F: LitVarStr var_108, "NumeOrpa"
  loc_A47D34: PopAdLdVar
  loc_A47D35: FLdRfVar var_F8
  loc_A47D38: FLdPr Me
  loc_A47D3B: MemLdPr RsFrm
  loc_A47D3E:  = Me.Fields
  loc_A47D43: FLdPr var_F8
  loc_A47D46: from_stack_2 = Me.Item(from_stack_1)
  loc_A47D4B: FLdPr var_10C
  loc_A47D4E:  = Me.Value
  loc_A47D53: FLdRfVar var_11C
  loc_A47D56: ConcatVar var_12C
  loc_A47D5A: LitVarStr var_13C, ";"
  loc_A47D5F: ConcatVar var_14C
  loc_A47D63: CStrVarVal var_150
  loc_A47D67: Call EjecutarRsCls(from_stack_1v)
  loc_A47D6C: FFreeStr var_8C = ""
  loc_A47D73: FFreeAd var_90 = "": var_A4 = "": var_F8 = ""
  loc_A47D7E: FFreeVar var_C4 = "": var_B4 = "": var_D4 = "": var_F4 = "": var_11C = "": var_12C = ""
  loc_A47D8F: FLdRfVar var_154
  loc_A47D92: FLdPr Me
  loc_A47D95: MemLdPr global_56
  loc_A47D98:  = Me.RecordCount
  loc_A47D9D: ILdRf var_154
  loc_A47DA0: LitI4 0
  loc_A47DA5: GtI4
  loc_A47DA6: BranchF loc_A47E5F
  loc_A47DA9: FLdRfVar var_B4
  loc_A47DAC: FLdRfVar var_A4
  loc_A47DAF: LitVarStr var_A0, "FearOrpa"
  loc_A47DB4: PopAdLdVar
  loc_A47DB5: FLdRfVar var_90
  loc_A47DB8: FLdPr Me
  loc_A47DBB: MemLdPr global_56
  loc_A47DBE:  = Me.Fields
  loc_A47DC3: FLdPr var_90
  loc_A47DC6: from_stack_2 = Me.Item(from_stack_1)
  loc_A47DCB: FLdPr var_A4
  loc_A47DCE:  = Me.Value
  loc_A47DD3: FLdRfVar var_B4
  loc_A47DD6: LitVarStr var_E4, vbNullString
  loc_A47DDB: HardType
  loc_A47DDC: NeVarBool
  loc_A47DDE: FFreeAd var_90 = ""
  loc_A47DE5: FFree1Var var_B4 = ""
  loc_A47DE8: BranchF loc_A47DF7
  loc_A47DEB: LitStr "La Orden de Pago está archivada. Verifique..."
  loc_A47DEE: FStStrCopy var_88
  loc_A47DF1: ExitProcCbHresult
  loc_A47DF7: FLdRfVar var_B4
  loc_A47DFA: FLdRfVar var_A4
  loc_A47DFD: LitVarStr var_A0, "TipoOrpa"
  loc_A47E02: PopAdLdVar
  loc_A47E03: FLdRfVar var_90
  loc_A47E06: FLdPr Me
  loc_A47E09: MemLdPr global_56
  loc_A47E0C:  = Me.Fields
  loc_A47E11: FLdPr var_90
  loc_A47E14: from_stack_2 = Me.Item(from_stack_1)
  loc_A47E19: FLdPr var_A4
  loc_A47E1C:  = Me.Value
  loc_A47E21: FLdRfVar var_B4
  loc_A47E24: LitVarStr var_E4, "Reservada"
  loc_A47E29: HardType
  loc_A47E2A: EqVarBool
  loc_A47E2C: FFreeAd var_90 = ""
  loc_A47E33: FFree1Var var_B4 = ""
  loc_A47E36: BranchF loc_A47E5F
  loc_A47E39: LitStr "Municipalidad de Guaymallén"
  loc_A47E3C: LitStr "Municipalidad de General Alvear"
  loc_A47E3F: EqStr
  loc_A47E41: BranchF loc_A47E53
  loc_A47E44: LitStr "Advertencia: La Orden de Pago es Reservada. Verifique..."
  loc_A47E47: FStStrCopy var_88
  loc_A47E4A: ExitProcCbHresult
  loc_A47E50: Branch loc_A47E5F
  loc_A47E53: LitStr "La Orden de Pago es Reservada. Verifique..."
  loc_A47E56: FStStrCopy var_88
  loc_A47E59: ExitProcCbHresult
  loc_A47E5F: LitStr "SELECT *"
  loc_A47E62: LitStr " FROM movibanco"
  loc_A47E65: ConcatStr
  loc_A47E66: FStStrNoPop var_8C
  loc_A47E69: LitStr " WHERE PeriInfo = "
  loc_A47E6C: ConcatStr
  loc_A47E6D: CVarStr var_C4
  loc_A47E70: FLdRfVar var_B4
  loc_A47E73: FLdRfVar var_A4
  loc_A47E76: LitVarStr var_A0, "PeriInfo"
  loc_A47E7B: PopAdLdVar
  loc_A47E7C: FLdRfVar var_90
  loc_A47E7F: FLdPr Me
  loc_A47E82: MemLdPr RsFrm
  loc_A47E85:  = Me.Fields
  loc_A47E8A: FLdPr var_90
  loc_A47E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_A47E92: FLdPr var_A4
  loc_A47E95:  = Me.Value
  loc_A47E9A: FLdRfVar var_B4
  loc_A47E9D: ConcatVar var_D4
  loc_A47EA1: LitVarStr var_E4, " AND NumeOrpa = "
  loc_A47EA6: ConcatVar var_F4
  loc_A47EAA: FLdRfVar var_11C
  loc_A47EAD: FLdRfVar var_10C
  loc_A47EB0: LitVarStr var_108, "NumeOrpa"
  loc_A47EB5: PopAdLdVar
  loc_A47EB6: FLdRfVar var_F8
  loc_A47EB9: FLdPr Me
  loc_A47EBC: MemLdPr RsFrm
  loc_A47EBF:  = Me.Fields
  loc_A47EC4: FLdPr var_F8
  loc_A47EC7: from_stack_2 = Me.Item(from_stack_1)
  loc_A47ECC: FLdPr var_10C
  loc_A47ECF:  = Me.Value
  loc_A47ED4: FLdRfVar var_11C
  loc_A47ED7: ConcatVar var_12C
  loc_A47EDB: LitVarStr var_13C, " AND FecoMoba IS NOT NULL;"
  loc_A47EE0: ConcatVar var_14C
  loc_A47EE4: CStrVarVal var_150
  loc_A47EE8: Call EjecutarRsCls(from_stack_1v)
  loc_A47EED: FFreeStr var_8C = ""
  loc_A47EF4: FFreeAd var_90 = "": var_A4 = "": var_F8 = ""
  loc_A47EFF: FFreeVar var_C4 = "": var_B4 = "": var_D4 = "": var_F4 = "": var_11C = "": var_12C = ""
  loc_A47F10: FLdRfVar var_154
  loc_A47F13: FLdPr Me
  loc_A47F16: MemLdPr global_56
  loc_A47F19:  = Me.RecordCount
  loc_A47F1E: ILdRf var_154
  loc_A47F21: LitI4 0
  loc_A47F26: GtI4
  loc_A47F27: BranchF loc_A47F36
  loc_A47F2A: LitStr "La Orden de Pago tiene cheque/transferencia CONCILIADOS. Verifique..."
  loc_A47F2D: FStStrCopy var_88
  loc_A47F30: ExitProcCbHresult
  loc_A47F36: ExitProcCbHresult
End Function

Public Function AnularPagado(PeriInfo, NumeOrpa, TipoOrpa) 'A21D1C
  'Data Table: 4371F4
  loc_A21B80: ILdRf TipoOrpa
  loc_A21B83: FStStrCopy var_8C
  loc_A21B86: ZeroRetVal
  loc_A21B88: OnErrorGoto loc_A21CC2
  loc_A21B8B: LitStr "START TRANSACTION;"
  loc_A21B8E: Call EjecutarRsCls(from_stack_1v)
  loc_A21B93: LitStr "SET @peri="
  loc_A21B96: FLdI2 PeriInfo
  loc_A21B99: CStrUI1
  loc_A21B9B: FStStrNoPop var_90
  loc_A21B9E: ConcatStr
  loc_A21B9F: FStStrNoPop AnularPagado
  loc_A21BA2: LitStr ", @orpa="
  loc_A21BA5: ConcatStr
  loc_A21BA6: FStStrNoPop var_98
  loc_A21BA9: ILdRf NumeOrpa
  loc_A21BAC: CStrI4
  loc_A21BAE: FStStrNoPop var_9C
  loc_A21BB1: ConcatStr
  loc_A21BB2: FStStrNoPop var_A0
  loc_A21BB5: LitStr ";"
  loc_A21BB8: ConcatStr
  loc_A21BB9: FStStrNoPop var_A4
  loc_A21BBC: Call EjecutarRsCls(from_stack_1v)
  loc_A21BC1: FFreeStr var_90 = "": AnularPagado = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A21BD0: LitStr "UPDATE ordenpago"
  loc_A21BD3: LitStr " SET FearOrpa= NULL"
  loc_A21BD6: ConcatStr
  loc_A21BD7: FStStrNoPop var_90
  loc_A21BDA: LitStr " WHERE PeriInfo = @peri AND NumeOrpa = @orpa;"
  loc_A21BDD: ConcatStr
  loc_A21BDE: FStStrNoPop AnularPagado
  loc_A21BE1: Call EjecutarRsCls(from_stack_1v)
  loc_A21BE6: FFreeStr var_90 = ""
  loc_A21BED: LitStr "UPDATE cheque"
  loc_A21BF0: LitStr " SET FepaCheq= NULL, PagaUsua='', PagaFeho=NULL"
  loc_A21BF3: ConcatStr
  loc_A21BF4: FStStrNoPop var_90
  loc_A21BF7: LitStr " WHERE PeriInfo = @peri AND NumeOrpa = @orpa;"
  loc_A21BFA: ConcatStr
  loc_A21BFB: FStStrNoPop AnularPagado
  loc_A21BFE: Call EjecutarRsCls(from_stack_1v)
  loc_A21C03: FFreeStr var_90 = ""
  loc_A21C0A: LitStr "UPDATE cheque"
  loc_A21C0D: LitStr " SET NumeMoba = 0"
  loc_A21C10: ConcatStr
  loc_A21C11: FStStrNoPop var_90
  loc_A21C14: LitStr " WHERE PeriInfo = @peri AND NumeOrpa = @orpa AND AutoCheq = 3;"
  loc_A21C17: ConcatStr
  loc_A21C18: FStStrNoPop AnularPagado
  loc_A21C1B: Call EjecutarRsCls(from_stack_1v)
  loc_A21C20: FFreeStr var_90 = ""
  loc_A21C27: LitStr "DELETE FROM movibanco"
  loc_A21C2A: LitStr " WHERE PeriInfo = @peri AND NumeOrpa = @orpa AND CodiTimb = 3;"
  loc_A21C2D: ConcatStr
  loc_A21C2E: FStStrNoPop var_90
  loc_A21C31: Call EjecutarRsCls(from_stack_1v)
  loc_A21C36: FFree1Str var_90
  loc_A21C39: LitStr "UPDATE liquidacion l"
  loc_A21C3C: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu"
  loc_A21C3F: ConcatStr
  loc_A21C40: FStStrNoPop var_90
  loc_A21C43: LitStr " SET FechCaja=NULL, FepaLine=NULL"
  loc_A21C46: ConcatStr
  loc_A21C47: FStStrNoPop AnularPagado
  loc_A21C4A: LitStr " WHERE l.PeriInfo = @peri AND l.NumeOrpa = @orpa;"
  loc_A21C4D: ConcatStr
  loc_A21C4E: FStStrNoPop var_98
  loc_A21C51: Call EjecutarRsCls(from_stack_1v)
  loc_A21C56: FFreeStr var_90 = "": AnularPagado = ""
  loc_A21C5F: ILdRf var_8C
  loc_A21C62: LitStr "Devengado"
  loc_A21C65: EqStr
  loc_A21C67: BranchF loc_A21CA9
  loc_A21C6A: LitStr "DELETE i"
  loc_A21C6D: LitStr " FROM imputacion i"
  loc_A21C70: ConcatStr
  loc_A21C71: FStStrNoPop var_90
  loc_A21C74: LitStr " WHERE i.PeriInfo = @peri"
  loc_A21C77: ConcatStr
  loc_A21C78: FStStrNoPop AnularPagado
  loc_A21C7B: LitStr " AND i.NumeOrpa = @orpa"
  loc_A21C7E: ConcatStr
  loc_A21C7F: FStStrNoPop var_98
  loc_A21C82: LitStr " AND PagaImpu != 0;"
  loc_A21C85: ConcatStr
  loc_A21C86: FStStrNoPop var_9C
  loc_A21C89: Call EjecutarRsCls(from_stack_1v)
  loc_A21C8E: FFreeStr var_90 = "": AnularPagado = "": var_98 = ""
  loc_A21C99: LitI2_Byte &HFF
  loc_A21C9B: BranchF loc_A21CA6
  loc_A21C9E: LitStr "DELETE FROM cargo WHERE PeriInfo = @peri AND NumeOrpa = @orpa;"
  loc_A21CA1: Call EjecutarRsCls(from_stack_1v)
  loc_A21CA6: Branch loc_A21CB4
  loc_A21CA9: ILdRf var_8C
  loc_A21CAC: LitStr "Debito"
  loc_A21CAF: EqStr
  loc_A21CB1: BranchF loc_A21CB4
  loc_A21CB4: LitStr "COMMIT;"
  loc_A21CB7: Call EjecutarRsCls(from_stack_1v)
  loc_A21CBC: ExitProcCbHresult
  loc_A21CC2: LitStr "ROLLBACK;"
  loc_A21CC5: Call EjecutarRsCls(from_stack_1v)
  loc_A21CCA: FLdRfVar var_AC
  loc_A21CCD: ImpAdCallI2 Err 'rtcErrObj
  loc_A21CD2: FStAdFunc var_A8
  loc_A21CD5: FLdPr var_A8
  loc_A21CD8:  = Err.Number
  loc_A21CDD: ILdRf var_AC
  loc_A21CE0: CStrI4
  loc_A21CE2: FStStrNoPop var_90
  loc_A21CE5: LitStr ": "
  loc_A21CE8: ConcatStr
  loc_A21CE9: FStStrNoPop var_98
  loc_A21CEC: FLdRfVar AnularPagado
  loc_A21CEF: ImpAdCallI2 Err 'rtcErrObj
  loc_A21CF4: FStAdFunc var_B0
  loc_A21CF7: FLdPr var_B0
  loc_A21CFA:  = Err.Description
  loc_A21CFF: ILdRf AnularPagado
  loc_A21D02: ConcatStr
  loc_A21D03: FStStr var_88
  loc_A21D06: FFreeStr var_90 = "": var_98 = ""
  loc_A21D0F: FFreeAd var_A8 = ""
  loc_A21D16: ExitProcCbHresult
End Function

Public Function AnularOPyLiquidacion(PeriInfo, NumeOrpa, TipoOrpa, Fecha) 'A78BB0
  'Data Table: 4371F4
  loc_A78834: ILdRf TipoOrpa
  loc_A78837: FStStrCopy var_8C
  loc_A7883A: ZeroRetVal
  loc_A7883C: OnErrorGoto loc_A78B56
  loc_A7883F: LitStr "START TRANSACTION;"
  loc_A78842: FStStrCopy var_90
  loc_A78845: ILdRf var_90
  loc_A78848: LitStr "SET @peri="
  loc_A7884B: ConcatStr
  loc_A7884C: FStStrNoPop AnularOPyLiquidacion
  loc_A7884F: FLdI2 PeriInfo
  loc_A78852: CStrUI1
  loc_A78854: FStStrNoPop var_98
  loc_A78857: ConcatStr
  loc_A78858: FStStrNoPop var_9C
  loc_A7885B: LitStr ", @orpa="
  loc_A7885E: ConcatStr
  loc_A7885F: FStStrNoPop var_A0
  loc_A78862: ILdRf NumeOrpa
  loc_A78865: CStrI4
  loc_A78867: FStStrNoPop var_A4
  loc_A7886A: ConcatStr
  loc_A7886B: FStStrNoPop var_A8
  loc_A7886E: LitStr ", @fecha="
  loc_A78871: ConcatStr
  loc_A78872: CVarStr var_F8
  loc_A78875: LitI4 1
  loc_A7887A: LitI4 1
  loc_A7887F: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_A78884: FStVarCopyObj var_D8
  loc_A78887: FLdRfVar var_D8
  loc_A7888A: FLdRfVar Fecha
  loc_A7888D: CVarRef
  loc_A78892: FLdRfVar var_E8
  loc_A78895: ImpAdCallFPR4  = Format(, )
  loc_A7889A: FLdRfVar var_E8
  loc_A7889D: ConcatVar var_108
  loc_A788A1: LitVarStr var_118, ";"
  loc_A788A6: ConcatVar var_128
  loc_A788AA: CStrVarTmp
  loc_A788AB: FStStr var_90
  loc_A788AE: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A788BD: FFreeVar var_D8 = "": var_F8 = "": var_E8 = "": var_108 = ""
  loc_A788CA: ILdRf var_90
  loc_A788CD: LitStr "UPDATE ordenpago"
  loc_A788D0: ConcatStr
  loc_A788D1: FStStrNoPop AnularOPyLiquidacion
  loc_A788D4: LitStr " SET FearOrpa= NULL, FereOrpa= NULL, FeanOrpa = @fecha, BajaUsua='"
  loc_A788D7: ConcatStr
  loc_A788D8: FStStrNoPop var_98
  loc_A788DB: ImpAdLdI4 MemVar_C3D03C
  loc_A788DE: ConcatStr
  loc_A788DF: FStStrNoPop var_9C
  loc_A788E2: LitStr "', BajaFeho=Now(), BajaMoti='por error'"
  loc_A788E5: ConcatStr
  loc_A788E6: FStStrNoPop var_A0
  loc_A788E9: LitStr " WHERE PeriInfo = @peri AND NumeOrpa = @orpa;"
  loc_A788EC: ConcatStr
  loc_A788ED: FStStr var_90
  loc_A788F0: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = ""
  loc_A788FB: ILdRf var_90
  loc_A788FE: LitStr "UPDATE liquidacion l"
  loc_A78901: ConcatStr
  loc_A78902: FStStrNoPop AnularOPyLiquidacion
  loc_A78905: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu"
  loc_A78908: ConcatStr
  loc_A78909: FStStrNoPop var_98
  loc_A7890C: LitStr " SET FeanLiqu=@fecha, MoanLiqu='sin pago', NumeOrpa=0, FechCaja=NULL, FepaLine=NULL, l.BajaUsua='"
  loc_A7890F: ConcatStr
  loc_A78910: FStStrNoPop var_9C
  loc_A78913: ImpAdLdI4 MemVar_C3D03C
  loc_A78916: ConcatStr
  loc_A78917: FStStrNoPop var_A0
  loc_A7891A: LitStr "', l.BajaFeho=Now(), l.BajaMoti='por error'"
  loc_A7891D: ConcatStr
  loc_A7891E: FStStrNoPop var_A4
  loc_A78921: LitStr " WHERE l.PeriInfo = @peri AND l.NumeOrpa = @orpa;"
  loc_A78924: ConcatStr
  loc_A78925: FStStr var_90
  loc_A78928: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A78935: ILdRf var_8C
  loc_A78938: LitStr "Devengado"
  loc_A7893B: EqStr
  loc_A7893D: BranchF loc_A78B35
  loc_A78940: ILdRf var_90
  loc_A78943: LitStr "DELETE i"
  loc_A78946: ConcatStr
  loc_A78947: FStStrNoPop AnularOPyLiquidacion
  loc_A7894A: LitStr " FROM imputacion i"
  loc_A7894D: ConcatStr
  loc_A7894E: FStStrNoPop var_98
  loc_A78951: LitStr " WHERE i.PeriInfo = @peri"
  loc_A78954: ConcatStr
  loc_A78955: FStStrNoPop var_9C
  loc_A78958: LitStr " AND i.NumeOrpa = @orpa"
  loc_A7895B: ConcatStr
  loc_A7895C: FStStrNoPop var_A0
  loc_A7895F: LitStr " AND PagaImpu != 0;"
  loc_A78962: ConcatStr
  loc_A78963: FStStr var_90
  loc_A78966: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = ""
  loc_A78971: ILdRf var_90
  loc_A78974: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_A78977: ConcatStr
  loc_A78978: FStStrNoPop AnularOPyLiquidacion
  loc_A7897B: FLdI2 PeriInfo
  loc_A7897E: CStrUI1
  loc_A78980: FStStrNoPop var_98
  loc_A78983: ConcatStr
  loc_A78984: FStStrNoPop var_9C
  loc_A78987: LitStr "; "
  loc_A7898A: ConcatStr
  loc_A7898B: FStStrNoPop var_A0
  loc_A7898E: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_A78991: ConcatStr
  loc_A78992: FStStrNoPop var_A4
  loc_A78995: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_A78998: ConcatStr
  loc_A78999: FStStrNoPop var_A8
  loc_A7899C: LitI4 1
  loc_A789A1: LitI4 1
  loc_A789A6: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_A789AB: FStVarCopyObj var_D8
  loc_A789AE: FLdRfVar var_D8
  loc_A789B1: FLdRfVar Fecha
  loc_A789B4: CVarRef
  loc_A789B9: ImpAdCallI2 Format$(, )
  loc_A789BE: FStStrNoPop var_12C
  loc_A789C1: ConcatStr
  loc_A789C2: FStStrNoPop var_130
  loc_A789C5: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu*-1, MapaImpu*-1, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_A789C8: ConcatStr
  loc_A789C9: FStStrNoPop var_134
  loc_A789CC: ImpAdLdI4 MemVar_C3D03C
  loc_A789CF: ConcatStr
  loc_A789D0: FStStrNoPop var_138
  loc_A789D3: LitStr "'"
  loc_A789D6: ConcatStr
  loc_A789D7: FStStrNoPop var_13C
  loc_A789DA: LitStr " FROM ("
  loc_A789DD: ConcatStr
  loc_A789DE: FStStrNoPop var_140
  loc_A789E1: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_A789E4: ConcatStr
  loc_A789E5: FStStrNoPop var_144
  loc_A789E8: LitStr " FROM imputacion"
  loc_A789EB: ConcatStr
  loc_A789EC: FStStrNoPop var_148
  loc_A789EF: LitStr " WHERE PeriInfo = "
  loc_A789F2: ConcatStr
  loc_A789F3: FStStrNoPop var_14C
  loc_A789F6: FLdI2 PeriInfo
  loc_A789F9: CStrUI1
  loc_A789FB: FStStrNoPop var_150
  loc_A789FE: ConcatStr
  loc_A789FF: FStStrNoPop var_154
  loc_A78A02: LitStr " AND NumeOrpa = "
  loc_A78A05: ConcatStr
  loc_A78A06: FStStrNoPop var_158
  loc_A78A09: ILdRf NumeOrpa
  loc_A78A0C: CStrI4
  loc_A78A0E: FStStrNoPop var_15C
  loc_A78A11: ConcatStr
  loc_A78A12: FStStrNoPop var_160
  loc_A78A15: LitStr " AND MapaImpu != 0 ) AS tbl;"
  loc_A78A18: ConcatStr
  loc_A78A19: FStStr var_90
  loc_A78A1C: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_A78A47: FFree1Var var_D8 = ""
  loc_A78A4A: ILdRf var_90
  loc_A78A4D: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_A78A50: ConcatStr
  loc_A78A51: FStStrNoPop AnularOPyLiquidacion
  loc_A78A54: FLdI2 PeriInfo
  loc_A78A57: CStrUI1
  loc_A78A59: FStStrNoPop var_98
  loc_A78A5C: ConcatStr
  loc_A78A5D: FStStrNoPop var_9C
  loc_A78A60: LitStr "; "
  loc_A78A63: ConcatStr
  loc_A78A64: FStStrNoPop var_A0
  loc_A78A67: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_A78A6A: ConcatStr
  loc_A78A6B: FStStrNoPop var_A4
  loc_A78A6E: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_A78A71: ConcatStr
  loc_A78A72: FStStrNoPop var_A8
  loc_A78A75: LitI4 1
  loc_A78A7A: LitI4 1
  loc_A78A7F: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_A78A84: FStVarCopyObj var_D8
  loc_A78A87: FLdRfVar var_D8
  loc_A78A8A: FLdRfVar Fecha
  loc_A78A8D: CVarRef
  loc_A78A92: ImpAdCallI2 Format$(, )
  loc_A78A97: FStStrNoPop var_12C
  loc_A78A9A: ConcatStr
  loc_A78A9B: FStStrNoPop var_130
  loc_A78A9E: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu*-1, LiquImpu*-1, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_A78AA1: ConcatStr
  loc_A78AA2: FStStrNoPop var_134
  loc_A78AA5: ImpAdLdI4 MemVar_C3D03C
  loc_A78AA8: ConcatStr
  loc_A78AA9: FStStrNoPop var_138
  loc_A78AAC: LitStr "'"
  loc_A78AAF: ConcatStr
  loc_A78AB0: FStStrNoPop var_13C
  loc_A78AB3: LitStr " FROM ("
  loc_A78AB6: ConcatStr
  loc_A78AB7: FStStrNoPop var_140
  loc_A78ABA: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu AS LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_A78ABD: ConcatStr
  loc_A78ABE: FStStrNoPop var_144
  loc_A78AC1: LitStr " FROM imputacion"
  loc_A78AC4: ConcatStr
  loc_A78AC5: FStStrNoPop var_148
  loc_A78AC8: LitStr " WHERE PeriInfo = "
  loc_A78ACB: ConcatStr
  loc_A78ACC: FStStrNoPop var_14C
  loc_A78ACF: FLdI2 PeriInfo
  loc_A78AD2: CStrUI1
  loc_A78AD4: FStStrNoPop var_150
  loc_A78AD7: ConcatStr
  loc_A78AD8: FStStrNoPop var_154
  loc_A78ADB: LitStr " AND NumeOrpa = "
  loc_A78ADE: ConcatStr
  loc_A78ADF: FStStrNoPop var_158
  loc_A78AE2: ILdRf NumeOrpa
  loc_A78AE5: CStrI4
  loc_A78AE7: FStStrNoPop var_15C
  loc_A78AEA: ConcatStr
  loc_A78AEB: FStStrNoPop var_160
  loc_A78AEE: LitStr " AND MapaImpu > 0) AS tbl;"
  loc_A78AF1: ConcatStr
  loc_A78AF2: FStStr var_90
  loc_A78AF5: FFreeStr AnularOPyLiquidacion = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_A78B20: FFree1Var var_D8 = ""
  loc_A78B23: LitI2_Byte &HFF
  loc_A78B25: BranchF loc_A78B32
  loc_A78B28: ILdRf var_90
  loc_A78B2B: LitStr "DELETE FROM cargo WHERE PeriInfo = @peri AND NumeOrpa = @orpa;"
  loc_A78B2E: ConcatStr
  loc_A78B2F: FStStr var_90
  loc_A78B32: Branch loc_A78B40
  loc_A78B35: ILdRf var_8C
  loc_A78B38: LitStr "Debito"
  loc_A78B3B: EqStr
  loc_A78B3D: BranchF loc_A78B40
  loc_A78B40: ILdRf var_90
  loc_A78B43: Call EjecutarRsCls(from_stack_1v)
  loc_A78B48: LitStr "COMMIT;"
  loc_A78B4B: Call EjecutarRsCls(from_stack_1v)
  loc_A78B50: ExitProcCbHresult
  loc_A78B56: LitStr "ROLLBACK;"
  loc_A78B59: Call EjecutarRsCls(from_stack_1v)
  loc_A78B5E: FLdRfVar var_168
  loc_A78B61: ImpAdCallI2 Err 'rtcErrObj
  loc_A78B66: FStAdFunc var_164
  loc_A78B69: FLdPr var_164
  loc_A78B6C:  = Err.Number
  loc_A78B71: ILdRf var_168
  loc_A78B74: CStrI4
  loc_A78B76: FStStrNoPop AnularOPyLiquidacion
  loc_A78B79: LitStr ": "
  loc_A78B7C: ConcatStr
  loc_A78B7D: FStStrNoPop var_9C
  loc_A78B80: FLdRfVar var_98
  loc_A78B83: ImpAdCallI2 Err 'rtcErrObj
  loc_A78B88: FStAdFunc var_16C
  loc_A78B8B: FLdPr var_16C
  loc_A78B8E:  = Err.Description
  loc_A78B93: ILdRf var_98
  loc_A78B96: ConcatStr
  loc_A78B97: FStStr var_88
  loc_A78B9A: FFreeStr AnularOPyLiquidacion = "": var_9C = ""
  loc_A78BA3: FFreeAd var_164 = ""
  loc_A78BAA: ExitProcCbHresult
End Function

Public Function UltimaFepaCheq() 'A00894
  'Data Table: 4371F4
  loc_A00758: ZeroRetVal
  loc_A0075A: LitVarStr var_C0, "SELECT * FROM cheque WHERE PeriInfo = "
  loc_A0075F: FLdRfVar var_B0
  loc_A00762: FLdRfVar var_A0
  loc_A00765: LitVarStr var_9C, "PeriInfo"
  loc_A0076A: PopAdLdVar
  loc_A0076B: FLdRfVar var_8C
  loc_A0076E: FLdPr Me
  loc_A00771: MemLdPr RsFrm
  loc_A00774:  = Me.Fields
  loc_A00779: FLdPr var_8C
  loc_A0077C: from_stack_2 = Me.Item(from_stack_1)
  loc_A00781: FLdPr var_A0
  loc_A00784:  = Me.Value
  loc_A00789: FLdRfVar var_B0
  loc_A0078C: ConcatVar var_D0
  loc_A00790: LitVarStr var_E0, " AND NumeOrpa = "
  loc_A00795: ConcatVar var_F0
  loc_A00799: FLdRfVar var_118
  loc_A0079C: FLdRfVar var_108
  loc_A0079F: LitVarStr var_104, "NumeOrpa"
  loc_A007A4: PopAdLdVar
  loc_A007A5: FLdRfVar var_F4
  loc_A007A8: FLdPr Me
  loc_A007AB: MemLdPr RsFrm
  loc_A007AE:  = Me.Fields
  loc_A007B3: FLdPr var_F4
  loc_A007B6: from_stack_2 = Me.Item(from_stack_1)
  loc_A007BB: FLdPr var_108
  loc_A007BE:  = Me.Value
  loc_A007C3: FLdRfVar var_118
  loc_A007C6: ConcatVar var_128
  loc_A007CA: LitVarStr var_138, " ORDER BY FepaCheq DESC LIMIT 1;"
  loc_A007CF: ConcatVar var_148
  loc_A007D3: CStrVarVal var_14C
  loc_A007D7: Call EjecutarRsCls(from_stack_1v)
  loc_A007DC: FFree1Str var_14C
  loc_A007DF: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A007EA: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A007F9: FLdRfVar var_150
  loc_A007FC: FLdPr Me
  loc_A007FF: MemLdPr global_56
  loc_A00802:  = Me.RecordCount
  loc_A00807: ILdRf var_150
  loc_A0080A: LitI4 0
  loc_A0080F: GtI4
  loc_A00810: BranchF loc_A00851
  loc_A00813: FLdRfVar var_B0
  loc_A00816: FLdRfVar var_A0
  loc_A00819: LitVarStr var_9C, "FepaCheq"
  loc_A0081E: PopAdLdVar
  loc_A0081F: FLdRfVar var_8C
  loc_A00822: FLdPr Me
  loc_A00825: MemLdPr global_56
  loc_A00828:  = Me.Fields
  loc_A0082D: FLdPr var_8C
  loc_A00830: from_stack_2 = Me.Item(from_stack_1)
  loc_A00835: FLdPr var_A0
  loc_A00838:  = Me.Value
  loc_A0083D: FLdRfVar var_B0
  loc_A00840: CStrVarTmp
  loc_A00841: FStStr var_88
  loc_A00844: FFreeAd var_8C = ""
  loc_A0084B: FFree1Var var_B0 = ""
  loc_A0084E: Branch loc_A0088C
  loc_A00851: FLdRfVar var_B0
  loc_A00854: FLdRfVar var_A0
  loc_A00857: LitVarStr var_9C, "FereOrpa"
  loc_A0085C: PopAdLdVar
  loc_A0085D: FLdRfVar var_8C
  loc_A00860: FLdPr Me
  loc_A00863: MemLdPr RsFrm
  loc_A00866:  = Me.Fields
  loc_A0086B: FLdPr var_8C
  loc_A0086E: from_stack_2 = Me.Item(from_stack_1)
  loc_A00873: FLdPr var_A0
  loc_A00876:  = Me.Value
  loc_A0087B: FLdRfVar var_B0
  loc_A0087E: CStrVarTmp
  loc_A0087F: FStStr var_88
  loc_A00882: FFreeAd var_8C = ""
  loc_A00889: FFree1Var var_B0 = ""
  loc_A0088C: ExitProcCbHresult
  loc_A00892: ImpAdLdFPR4 MemVar_0
End Function

Public Sub ChequeaDetaCheq(PeriInfo, NumeOrpa) '9AABA8
  'Data Table: 4371F4
  loc_9AAB34: LitStr "UPDATE ordenpago"
  loc_9AAB37: LitStr " LEFT JOIN cheque ON cheque.PeriInfo = ordenpago.PeriInfo AND cheque.NumeOrpa = ordenpago.NumeOrpa"
  loc_9AAB3A: ConcatStr
  loc_9AAB3B: FStStrNoPop var_88
  loc_9AAB3E: LitStr " SET cheque.DetaCheq = ordenpago.ChunOrpa"
  loc_9AAB41: ConcatStr
  loc_9AAB42: FStStrNoPop var_8C
  loc_9AAB45: LitStr ", ordenpago.ModiUsua = '"
  loc_9AAB48: ConcatStr
  loc_9AAB49: FStStrNoPop var_90
  loc_9AAB4C: ImpAdLdI4 MemVar_C3D03C
  loc_9AAB4F: ConcatStr
  loc_9AAB50: FStStrNoPop var_94
  loc_9AAB53: LitStr "', ordenpago.ModiFeho = Now()"
  loc_9AAB56: ConcatStr
  loc_9AAB57: FStStrNoPop var_98
  loc_9AAB5A: LitStr " WHERE ordenpago.PeriInfo = "
  loc_9AAB5D: ConcatStr
  loc_9AAB5E: FStStrNoPop var_9C
  loc_9AAB61: FLdI2 PeriInfo
  loc_9AAB64: CStrUI1
  loc_9AAB66: FStStrNoPop var_A0
  loc_9AAB69: ConcatStr
  loc_9AAB6A: FStStrNoPop var_A4
  loc_9AAB6D: LitStr " AND ordenpago.NumeOrpa = "
  loc_9AAB70: ConcatStr
  loc_9AAB71: FStStrNoPop var_A8
  loc_9AAB74: ILdRf NumeOrpa
  loc_9AAB77: CStrI4
  loc_9AAB79: FStStrNoPop var_AC
  loc_9AAB7C: ConcatStr
  loc_9AAB7D: FStStrNoPop var_B0
  loc_9AAB80: LitStr ";"
  loc_9AAB83: ConcatStr
  loc_9AAB84: FStStrNoPop var_B4
  loc_9AAB87: Call EjecutarRsCls(from_stack_1v)
  loc_9AAB8C: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9AABA7: ExitProcHresult
End Sub

Public Function ChequesEntregadosxOP(PeriInfo, NumeOrpa) '9BDD68
  'Data Table: 4371F4
  loc_9BDCC0: ZeroRetVal
  loc_9BDCC2: LitStr "SELECT CucuPers FROM ordenpago"
  loc_9BDCC5: LitStr " LEFT JOIN cheque ON cheque.PeriInfo = ordenpago.PeriInfo AND cheque.NumeOrpa = ordenpago.NumeOrpa"
  loc_9BDCC8: ConcatStr
  loc_9BDCC9: FStStrNoPop var_8C
  loc_9BDCCC: LitStr " WHERE ordenpago.PeriInfo = "
  loc_9BDCCF: ConcatStr
  loc_9BDCD0: FStStrNoPop var_90
  loc_9BDCD3: FLdI2 PeriInfo
  loc_9BDCD6: CStrUI1
  loc_9BDCD8: FStStrNoPop ChequesEntregadosxOP
  loc_9BDCDB: ConcatStr
  loc_9BDCDC: FStStrNoPop var_98
  loc_9BDCDF: LitStr " AND ordenpago.NumeOrpa = "
  loc_9BDCE2: ConcatStr
  loc_9BDCE3: FStStrNoPop var_9C
  loc_9BDCE6: ILdRf NumeOrpa
  loc_9BDCE9: CStrI4
  loc_9BDCEB: FStStrNoPop var_A0
  loc_9BDCEE: ConcatStr
  loc_9BDCEF: FStStrNoPop var_A4
  loc_9BDCF2: LitStr " AND cheque.FepaCheq IS NOT NULL"
  loc_9BDCF5: ConcatStr
  loc_9BDCF6: FStStrNoPop var_A8
  loc_9BDCF9: LitStr ";"
  loc_9BDCFC: ConcatStr
  loc_9BDCFD: FStStrNoPop var_AC
  loc_9BDD00: Call EjecutarRsCls(from_stack_1v)
  loc_9BDD05: FFreeStr var_8C = "": var_90 = "": ChequesEntregadosxOP = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9BDD1A: FLdRfVar var_B0
  loc_9BDD1D: FLdPr Me
  loc_9BDD20: MemLdPr global_56
  loc_9BDD23:  = Me.RecordCount
  loc_9BDD28: ILdRf var_B0
  loc_9BDD2B: LitI4 0
  loc_9BDD30: GtI4
  loc_9BDD31: BranchF loc_9BDD5F
  loc_9BDD34: LitStr "La OP tiene "
  loc_9BDD37: FLdRfVar var_B0
  loc_9BDD3A: FLdPr Me
  loc_9BDD3D: MemLdPr global_56
  loc_9BDD40:  = Me.RecordCount
  loc_9BDD45: ILdRf var_B0
  loc_9BDD48: CStrI4
  loc_9BDD4A: FStStrNoPop var_8C
  loc_9BDD4D: ConcatStr
  loc_9BDD4E: FStStrNoPop var_90
  loc_9BDD51: LitStr " cheque/s entregado/s"
  loc_9BDD54: ConcatStr
  loc_9BDD55: FStStr var_88
  loc_9BDD58: FFreeStr var_8C = ""
  loc_9BDD5F: ExitProcCbHresult
  loc_9BDD65: OrI4
  loc_9BDD66: ILdFPR8 arg_7C05
End Function

Public Function ChequesPendientesxOP(PeriInfo, NumeOrpa) '9DFF04
  'Data Table: 4371F4
  loc_9DFE1C: ZeroRetVal
  loc_9DFE1E: LitStr "SELECT IFNULL(CucuPers,'') CucuPers FROM ordenpago"
  loc_9DFE21: LitStr " LEFT JOIN cheque ON cheque.PeriInfo = ordenpago.PeriInfo AND cheque.NumeOrpa = ordenpago.NumeOrpa"
  loc_9DFE24: ConcatStr
  loc_9DFE25: FStStrNoPop var_8C
  loc_9DFE28: LitStr " WHERE ordenpago.PeriInfo = "
  loc_9DFE2B: ConcatStr
  loc_9DFE2C: FStStrNoPop var_90
  loc_9DFE2F: FLdI2 PeriInfo
  loc_9DFE32: CStrUI1
  loc_9DFE34: FStStrNoPop ChequesPendientesxOP
  loc_9DFE37: ConcatStr
  loc_9DFE38: FStStrNoPop var_98
  loc_9DFE3B: LitStr " AND ordenpago.NumeOrpa = "
  loc_9DFE3E: ConcatStr
  loc_9DFE3F: FStStrNoPop var_9C
  loc_9DFE42: ILdRf NumeOrpa
  loc_9DFE45: CStrI4
  loc_9DFE47: FStStrNoPop var_A0
  loc_9DFE4A: ConcatStr
  loc_9DFE4B: FStStrNoPop var_A4
  loc_9DFE4E: LitStr " AND cheque.FepaCheq IS NULL"
  loc_9DFE51: ConcatStr
  loc_9DFE52: FStStrNoPop var_A8
  loc_9DFE55: LitStr " AND cheque.FeanCheq IS NULL"
  loc_9DFE58: ConcatStr
  loc_9DFE59: FStStrNoPop var_AC
  loc_9DFE5C: Call EjecutarRsCls(from_stack_1v)
  loc_9DFE61: FFreeStr var_8C = "": var_90 = "": ChequesPendientesxOP = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9DFE76: FLdRfVar var_B0
  loc_9DFE79: FLdPr Me
  loc_9DFE7C: MemLdPr global_56
  loc_9DFE7F:  = Me.RecordCount
  loc_9DFE84: ILdRf var_B0
  loc_9DFE87: LitI4 0
  loc_9DFE8C: GtI4
  loc_9DFE8D: BranchF loc_9DFEFD
  loc_9DFE90: FLdRfVar var_D8
  loc_9DFE93: FLdRfVar var_C8
  loc_9DFE96: LitVarStr var_C4, "CucuPers"
  loc_9DFE9B: PopAdLdVar
  loc_9DFE9C: FLdRfVar var_B4
  loc_9DFE9F: FLdPr Me
  loc_9DFEA2: MemLdPr global_56
  loc_9DFEA5:  = Me.Fields
  loc_9DFEAA: FLdPr var_B4
  loc_9DFEAD: from_stack_2 = Me.Item(from_stack_1)
  loc_9DFEB2: FLdPr var_C8
  loc_9DFEB5:  = Me.Value
  loc_9DFEBA: FLdRfVar var_D8
  loc_9DFEBD: LitVarStr var_E8, vbNullString
  loc_9DFEC2: HardType
  loc_9DFEC3: NeVarBool
  loc_9DFEC5: FFreeAd var_B4 = ""
  loc_9DFECC: FFree1Var var_D8 = ""
  loc_9DFECF: BranchF loc_9DFEFD
  loc_9DFED2: LitStr "La OP tiene "
  loc_9DFED5: FLdRfVar var_B0
  loc_9DFED8: FLdPr Me
  loc_9DFEDB: MemLdPr global_56
  loc_9DFEDE:  = Me.RecordCount
  loc_9DFEE3: ILdRf var_B0
  loc_9DFEE6: CStrI4
  loc_9DFEE8: FStStrNoPop var_8C
  loc_9DFEEB: ConcatStr
  loc_9DFEEC: FStStrNoPop var_90
  loc_9DFEEF: LitStr " cheque/s pendiente/s"
  loc_9DFEF2: ConcatStr
  loc_9DFEF3: FStStr var_88
  loc_9DFEF6: FFreeStr var_8C = ""
  loc_9DFEFD: ExitProcCbHresult
End Function

Public Function AnularOP(PeriInfo, NumeOrpa, TipoOrpa, FeanOrpa, CucuPers, sBajaMoti) 'B7F750
  'Data Table: 4371F4
  loc_B7EB54: ILdRf TipoOrpa
  loc_B7EB57: FStStrCopy var_8C
  loc_B7EB5A: ILdRf FeanOrpa
  loc_B7EB5D: FStStrCopy var_90
  loc_B7EB60: ILdRf CucuPers
  loc_B7EB63: FStStrCopy AnularOP
  loc_B7EB66: ILdRf sBajaMoti
  loc_B7EB69: FStStrCopy var_98
  loc_B7EB6C: ZeroRetVal
  loc_B7EB6E: OnErrorGoto loc_B7F73A
  loc_B7EB71: LitStr "START TRANSACTION;"
  loc_B7EB74: Call EjecutarRsCls(from_stack_1v)
  loc_B7EB79: ILdRf var_8C
  loc_B7EB7C: LitStr "Devengado"
  loc_B7EB7F: EqStr
  loc_B7EB81: BranchF loc_B7EE6D
  loc_B7EB84: LitStr " AND CucuPers = "
  loc_B7EB87: ILdRf AnularOP
  loc_B7EB8A: ConcatStr
  loc_B7EB8B: CVarStr var_DC
  loc_B7EB8E: LitVarStr var_BC, vbNullString
  loc_B7EB93: FStVarCopyObj var_CC
  loc_B7EB96: FLdRfVar var_CC
  loc_B7EB99: ILdRf AnularOP
  loc_B7EB9C: LitStr vbNullString
  loc_B7EB9F: EqStr
  loc_B7EBA1: CVarBoolI2 var_AC
  loc_B7EBA5: FLdRfVar var_EC
  loc_B7EBA8: ImpAdCallFPR4  = IIf(, , )
  loc_B7EBAD: FLdRfVar var_EC
  loc_B7EBB0: CStrVarTmp
  loc_B7EBB1: FStStr var_9C
  loc_B7EBB4: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_B7EBBF: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_B7EBC2: FLdI2 PeriInfo
  loc_B7EBC5: CStrUI1
  loc_B7EBC7: FStStrNoPop var_F0
  loc_B7EBCA: ConcatStr
  loc_B7EBCB: FStStrNoPop var_F4
  loc_B7EBCE: LitStr "; "
  loc_B7EBD1: ConcatStr
  loc_B7EBD2: FStStrNoPop var_F8
  loc_B7EBD5: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B7EBD8: ConcatStr
  loc_B7EBD9: FStStrNoPop var_FC
  loc_B7EBDC: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B7EBDF: ConcatStr
  loc_B7EBE0: FStStrNoPop var_100
  loc_B7EBE3: LitI4 1
  loc_B7EBE8: LitI4 1
  loc_B7EBED: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7EBF2: FStVarCopyObj var_CC
  loc_B7EBF5: FLdRfVar var_CC
  loc_B7EBF8: FLdRfVar var_90
  loc_B7EBFB: CVarRef
  loc_B7EC00: ImpAdCallI2 Format$(, )
  loc_B7EC05: FStStrNoPop var_104
  loc_B7EC08: ConcatStr
  loc_B7EC09: FStStrNoPop var_108
  loc_B7EC0C: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu*-1, MapaImpu*-1, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B7EC0F: ConcatStr
  loc_B7EC10: FStStrNoPop var_10C
  loc_B7EC13: ImpAdLdI4 MemVar_C3D03C
  loc_B7EC16: ConcatStr
  loc_B7EC17: FStStrNoPop var_110
  loc_B7EC1A: LitStr "'"
  loc_B7EC1D: ConcatStr
  loc_B7EC1E: FStStrNoPop var_114
  loc_B7EC21: LitStr " FROM ("
  loc_B7EC24: ConcatStr
  loc_B7EC25: FStStrNoPop var_118
  loc_B7EC28: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_B7EC2B: ConcatStr
  loc_B7EC2C: FStStrNoPop var_11C
  loc_B7EC2F: LitStr " FROM imputacion"
  loc_B7EC32: ConcatStr
  loc_B7EC33: FStStrNoPop var_120
  loc_B7EC36: LitStr " WHERE PeriInfo = "
  loc_B7EC39: ConcatStr
  loc_B7EC3A: FStStrNoPop var_124
  loc_B7EC3D: FLdI2 PeriInfo
  loc_B7EC40: CStrUI1
  loc_B7EC42: FStStrNoPop var_128
  loc_B7EC45: ConcatStr
  loc_B7EC46: FStStrNoPop var_12C
  loc_B7EC49: LitStr " AND NumeOrpa = "
  loc_B7EC4C: ConcatStr
  loc_B7EC4D: FStStrNoPop var_130
  loc_B7EC50: ILdRf NumeOrpa
  loc_B7EC53: CStrI4
  loc_B7EC55: FStStrNoPop var_134
  loc_B7EC58: ConcatStr
  loc_B7EC59: FStStrNoPop var_138
  loc_B7EC5C: ILdRf var_9C
  loc_B7EC5F: ConcatStr
  loc_B7EC60: FStStrNoPop var_13C
  loc_B7EC63: LitStr " ) AS tbl;"
  loc_B7EC66: ConcatStr
  loc_B7EC67: FStStrNoPop var_140
  loc_B7EC6A: Call EjecutarRsCls(from_stack_1v)
  loc_B7EC6F: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B7EC9C: FFree1Var var_CC = ""
  loc_B7EC9F: ILdRf var_9C
  loc_B7ECA2: LitStr vbNullString
  loc_B7ECA5: NeStr
  loc_B7ECA7: BranchF loc_B7ED93
  loc_B7ECAA: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_B7ECAD: FLdI2 PeriInfo
  loc_B7ECB0: CStrUI1
  loc_B7ECB2: FStStrNoPop var_F0
  loc_B7ECB5: ConcatStr
  loc_B7ECB6: FStStrNoPop var_F4
  loc_B7ECB9: LitStr "; "
  loc_B7ECBC: ConcatStr
  loc_B7ECBD: FStStrNoPop var_F8
  loc_B7ECC0: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_B7ECC3: ConcatStr
  loc_B7ECC4: FStStrNoPop var_FC
  loc_B7ECC7: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B7ECCA: ConcatStr
  loc_B7ECCB: FStStrNoPop var_100
  loc_B7ECCE: LitI4 1
  loc_B7ECD3: LitI4 1
  loc_B7ECD8: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7ECDD: FStVarCopyObj var_CC
  loc_B7ECE0: FLdRfVar var_CC
  loc_B7ECE3: FLdRfVar var_90
  loc_B7ECE6: CVarRef
  loc_B7ECEB: ImpAdCallI2 Format$(, )
  loc_B7ECF0: FStStrNoPop var_104
  loc_B7ECF3: ConcatStr
  loc_B7ECF4: FStStrNoPop var_108
  loc_B7ECF7: LitStr ", ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu*-1, MapaImpu*-1, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B7ECFA: ConcatStr
  loc_B7ECFB: FStStrNoPop var_10C
  loc_B7ECFE: ImpAdLdI4 MemVar_C3D03C
  loc_B7ED01: ConcatStr
  loc_B7ED02: FStStrNoPop var_110
  loc_B7ED05: LitStr "'"
  loc_B7ED08: ConcatStr
  loc_B7ED09: FStStrNoPop var_114
  loc_B7ED0C: LitStr " FROM ("
  loc_B7ED0F: ConcatStr
  loc_B7ED10: FStStrNoPop var_118
  loc_B7ED13: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_B7ED16: ConcatStr
  loc_B7ED17: FStStrNoPop var_11C
  loc_B7ED1A: LitStr " FROM imputacion"
  loc_B7ED1D: ConcatStr
  loc_B7ED1E: FStStrNoPop var_120
  loc_B7ED21: LitStr " WHERE PeriInfo = "
  loc_B7ED24: ConcatStr
  loc_B7ED25: FStStrNoPop var_124
  loc_B7ED28: FLdI2 PeriInfo
  loc_B7ED2B: CStrUI1
  loc_B7ED2D: FStStrNoPop var_128
  loc_B7ED30: ConcatStr
  loc_B7ED31: FStStrNoPop var_12C
  loc_B7ED34: LitStr " AND MapaImpu > 0"
  loc_B7ED37: ConcatStr
  loc_B7ED38: FStStrNoPop var_130
  loc_B7ED3B: LitStr " AND NumeOrpa = "
  loc_B7ED3E: ConcatStr
  loc_B7ED3F: FStStrNoPop var_134
  loc_B7ED42: ILdRf NumeOrpa
  loc_B7ED45: CStrI4
  loc_B7ED47: FStStrNoPop var_138
  loc_B7ED4A: ConcatStr
  loc_B7ED4B: FStStrNoPop var_13C
  loc_B7ED4E: ILdRf var_9C
  loc_B7ED51: ConcatStr
  loc_B7ED52: FStStrNoPop var_140
  loc_B7ED55: LitStr " ) AS tbl;"
  loc_B7ED58: ConcatStr
  loc_B7ED59: FStStrNoPop var_144
  loc_B7ED5C: Call EjecutarRsCls(from_stack_1v)
  loc_B7ED61: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_B7ED90: FFree1Var var_CC = ""
  loc_B7ED93: LitStr " AND lqn.CucuPers = "
  loc_B7ED96: ILdRf AnularOP
  loc_B7ED99: ConcatStr
  loc_B7ED9A: CVarStr var_DC
  loc_B7ED9D: LitVarStr var_BC, vbNullString
  loc_B7EDA2: FStVarCopyObj var_CC
  loc_B7EDA5: FLdRfVar var_CC
  loc_B7EDA8: ILdRf AnularOP
  loc_B7EDAB: LitStr vbNullString
  loc_B7EDAE: EqStr
  loc_B7EDB0: CVarBoolI2 var_AC
  loc_B7EDB4: FLdRfVar var_EC
  loc_B7EDB7: ImpAdCallFPR4  = IIf(, , )
  loc_B7EDBC: FLdRfVar var_EC
  loc_B7EDBF: CStrVarTmp
  loc_B7EDC0: FStStr var_9C
  loc_B7EDC3: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_B7EDCE: ILdRf AnularOP
  loc_B7EDD1: LitStr vbNullString
  loc_B7EDD4: NeStr
  loc_B7EDD6: BranchF loc_B7EE6A
  loc_B7EDD9: LitStr "UPDATE liquidacion l"
  loc_B7EDDC: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu"
  loc_B7EDDF: ConcatStr
  loc_B7EDE0: FStStrNoPop var_F0
  loc_B7EDE3: ILdRf var_9C
  loc_B7EDE6: ConcatStr
  loc_B7EDE7: FStStrNoPop var_F4
  loc_B7EDEA: LitStr " SET lqn.FeanLine = "
  loc_B7EDED: ConcatStr
  loc_B7EDEE: FStStrNoPop var_F8
  loc_B7EDF1: LitI4 1
  loc_B7EDF6: LitI4 1
  loc_B7EDFB: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7EE00: FStVarCopyObj var_CC
  loc_B7EE03: FLdRfVar var_CC
  loc_B7EE06: FLdRfVar var_90
  loc_B7EE09: CVarRef
  loc_B7EE0E: ImpAdCallI2 Format$(, )
  loc_B7EE13: FStStrNoPop var_FC
  loc_B7EE16: ConcatStr
  loc_B7EE17: FStStrNoPop var_100
  loc_B7EE1A: LitStr " WHERE l.PeriInfo = "
  loc_B7EE1D: ConcatStr
  loc_B7EE1E: FStStrNoPop var_104
  loc_B7EE21: FLdI2 PeriInfo
  loc_B7EE24: CStrUI1
  loc_B7EE26: FStStrNoPop var_108
  loc_B7EE29: ConcatStr
  loc_B7EE2A: FStStrNoPop var_10C
  loc_B7EE2D: LitStr " AND l.NumeOrpa = "
  loc_B7EE30: ConcatStr
  loc_B7EE31: FStStrNoPop var_110
  loc_B7EE34: ILdRf NumeOrpa
  loc_B7EE37: CStrI4
  loc_B7EE39: FStStrNoPop var_114
  loc_B7EE3C: ConcatStr
  loc_B7EE3D: FStStrNoPop var_118
  loc_B7EE40: LitStr ";"
  loc_B7EE43: ConcatStr
  loc_B7EE44: FStStrNoPop var_11C
  loc_B7EE47: Call EjecutarRsCls(from_stack_1v)
  loc_B7EE4C: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B7EE67: FFree1Var var_CC = ""
  loc_B7EE6A: Branch loc_B7EFE0
  loc_B7EE6D: ILdRf var_8C
  loc_B7EE70: LitStr "Debito"
  loc_B7EE73: EqStr
  loc_B7EE75: BranchF loc_B7EFE0
  loc_B7EE78: LitStr " AND CucuPers = "
  loc_B7EE7B: ILdRf AnularOP
  loc_B7EE7E: ConcatStr
  loc_B7EE7F: CVarStr var_DC
  loc_B7EE82: LitVarStr var_BC, vbNullString
  loc_B7EE87: FStVarCopyObj var_CC
  loc_B7EE8A: FLdRfVar var_CC
  loc_B7EE8D: ILdRf AnularOP
  loc_B7EE90: LitStr vbNullString
  loc_B7EE93: EqStr
  loc_B7EE95: CVarBoolI2 var_AC
  loc_B7EE99: FLdRfVar var_EC
  loc_B7EE9C: ImpAdCallFPR4  = IIf(, , )
  loc_B7EEA1: FLdRfVar var_EC
  loc_B7EEA4: CStrVarTmp
  loc_B7EEA5: FStStr var_9C
  loc_B7EEA8: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_B7EEB3: ILdRf AnularOP
  loc_B7EEB6: LitStr vbNullString
  loc_B7EEB9: NeStr
  loc_B7EEBB: BranchF loc_B7EFE0
  loc_B7EEBE: LitStr "UPDATE liquidacion l"
  loc_B7EEC1: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu"
  loc_B7EEC4: ConcatStr
  loc_B7EEC5: FStStrNoPop var_F0
  loc_B7EEC8: ILdRf var_9C
  loc_B7EECB: ConcatStr
  loc_B7EECC: FStStrNoPop var_F4
  loc_B7EECF: LitStr " SET ln.FeanLine = "
  loc_B7EED2: ConcatStr
  loc_B7EED3: FStStrNoPop var_F8
  loc_B7EED6: LitI4 1
  loc_B7EEDB: LitI4 1
  loc_B7EEE0: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7EEE5: FStVarCopyObj var_CC
  loc_B7EEE8: FLdRfVar var_CC
  loc_B7EEEB: FLdRfVar var_90
  loc_B7EEEE: CVarRef
  loc_B7EEF3: ImpAdCallI2 Format$(, )
  loc_B7EEF8: FStStrNoPop var_FC
  loc_B7EEFB: ConcatStr
  loc_B7EEFC: FStStrNoPop var_100
  loc_B7EEFF: LitStr " WHERE l.PeriInfo = "
  loc_B7EF02: ConcatStr
  loc_B7EF03: FStStrNoPop var_104
  loc_B7EF06: FLdI2 PeriInfo
  loc_B7EF09: CStrUI1
  loc_B7EF0B: FStStrNoPop var_108
  loc_B7EF0E: ConcatStr
  loc_B7EF0F: FStStrNoPop var_10C
  loc_B7EF12: LitStr " AND l.NumeOrpa = "
  loc_B7EF15: ConcatStr
  loc_B7EF16: FStStrNoPop var_110
  loc_B7EF19: ILdRf NumeOrpa
  loc_B7EF1C: CStrI4
  loc_B7EF1E: FStStrNoPop var_114
  loc_B7EF21: ConcatStr
  loc_B7EF22: FStStrNoPop var_118
  loc_B7EF25: LitStr ";"
  loc_B7EF28: ConcatStr
  loc_B7EF29: FStStrNoPop var_11C
  loc_B7EF2C: Call EjecutarRsCls(from_stack_1v)
  loc_B7EF31: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B7EF4C: FFree1Var var_CC = ""
  loc_B7EF4F: LitStr "UPDATE liquidacion l"
  loc_B7EF52: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = l.ExpeImpu AND ld.NumeLiqu = l.NumeLiqu"
  loc_B7EF55: ConcatStr
  loc_B7EF56: FStStrNoPop var_F0
  loc_B7EF59: ILdRf var_9C
  loc_B7EF5C: ConcatStr
  loc_B7EF5D: FStStrNoPop var_F4
  loc_B7EF60: LitStr " SET ld.FeanLide = "
  loc_B7EF63: ConcatStr
  loc_B7EF64: FStStrNoPop var_F8
  loc_B7EF67: LitI4 1
  loc_B7EF6C: LitI4 1
  loc_B7EF71: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7EF76: FStVarCopyObj var_CC
  loc_B7EF79: FLdRfVar var_CC
  loc_B7EF7C: FLdRfVar var_90
  loc_B7EF7F: CVarRef
  loc_B7EF84: ImpAdCallI2 Format$(, )
  loc_B7EF89: FStStrNoPop var_FC
  loc_B7EF8C: ConcatStr
  loc_B7EF8D: FStStrNoPop var_100
  loc_B7EF90: LitStr " WHERE l.PeriInfo = "
  loc_B7EF93: ConcatStr
  loc_B7EF94: FStStrNoPop var_104
  loc_B7EF97: FLdI2 PeriInfo
  loc_B7EF9A: CStrUI1
  loc_B7EF9C: FStStrNoPop var_108
  loc_B7EF9F: ConcatStr
  loc_B7EFA0: FStStrNoPop var_10C
  loc_B7EFA3: LitStr " AND l.NumeOrpa = "
  loc_B7EFA6: ConcatStr
  loc_B7EFA7: FStStrNoPop var_110
  loc_B7EFAA: ILdRf NumeOrpa
  loc_B7EFAD: CStrI4
  loc_B7EFAF: FStStrNoPop var_114
  loc_B7EFB2: ConcatStr
  loc_B7EFB3: FStStrNoPop var_118
  loc_B7EFB6: LitStr ";"
  loc_B7EFB9: ConcatStr
  loc_B7EFBA: FStStrNoPop var_11C
  loc_B7EFBD: Call EjecutarRsCls(from_stack_1v)
  loc_B7EFC2: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_B7EFDD: FFree1Var var_CC = ""
  loc_B7EFE0: ILdRf AnularOP
  loc_B7EFE3: LitStr vbNullString
  loc_B7EFE6: EqStr
  loc_B7EFE8: BranchF loc_B7F108
  loc_B7EFEB: LitStr "UPDATE ordenpago"
  loc_B7EFEE: LitStr " SET FeanOrpa= "
  loc_B7EFF1: ConcatStr
  loc_B7EFF2: FStStrNoPop var_F0
  loc_B7EFF5: LitI4 1
  loc_B7EFFA: LitI4 1
  loc_B7EFFF: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7F004: FStVarCopyObj var_CC
  loc_B7F007: FLdRfVar var_CC
  loc_B7F00A: FLdRfVar var_90
  loc_B7F00D: CVarRef
  loc_B7F012: ImpAdCallI2 Format$(, )
  loc_B7F017: FStStrNoPop var_F4
  loc_B7F01A: ConcatStr
  loc_B7F01B: FStStrNoPop var_F8
  loc_B7F01E: LitStr ", BajaMoti= '"
  loc_B7F021: ConcatStr
  loc_B7F022: FStStrNoPop var_FC
  loc_B7F025: ILdRf var_98
  loc_B7F028: ConcatStr
  loc_B7F029: FStStrNoPop var_100
  loc_B7F02C: LitStr " - Usuario: "
  loc_B7F02F: ConcatStr
  loc_B7F030: FStStrNoPop var_104
  loc_B7F033: ImpAdLdI4 MemVar_C3D03C
  loc_B7F036: ConcatStr
  loc_B7F037: FStStrNoPop var_108
  loc_B7F03A: LitStr "'"
  loc_B7F03D: ConcatStr
  loc_B7F03E: FStStrNoPop var_10C
  loc_B7F041: LitStr ", BajaUsua= '"
  loc_B7F044: ConcatStr
  loc_B7F045: FStStrNoPop var_110
  loc_B7F048: ImpAdLdI4 MemVar_C3D03C
  loc_B7F04B: ConcatStr
  loc_B7F04C: FStStrNoPop var_114
  loc_B7F04F: LitStr "', BajaFeho= Now()"
  loc_B7F052: ConcatStr
  loc_B7F053: FStStrNoPop var_118
  loc_B7F056: LitStr ", FearOrpa= NULL"
  loc_B7F059: ConcatStr
  loc_B7F05A: FStStrNoPop var_11C
  loc_B7F05D: LitStr " WHERE PeriInfo = "
  loc_B7F060: ConcatStr
  loc_B7F061: FStStrNoPop var_120
  loc_B7F064: FLdI2 PeriInfo
  loc_B7F067: CStrUI1
  loc_B7F069: FStStrNoPop var_124
  loc_B7F06C: ConcatStr
  loc_B7F06D: FStStrNoPop var_128
  loc_B7F070: LitStr " AND NumeOrpa = "
  loc_B7F073: ConcatStr
  loc_B7F074: FStStrNoPop var_12C
  loc_B7F077: ILdRf NumeOrpa
  loc_B7F07A: CStrI4
  loc_B7F07C: FStStrNoPop var_130
  loc_B7F07F: ConcatStr
  loc_B7F080: FStStrNoPop var_134
  loc_B7F083: LitStr ";"
  loc_B7F086: ConcatStr
  loc_B7F087: FStStrNoPop var_138
  loc_B7F08A: LitStr " UPDATE liquidacion"
  loc_B7F08D: ConcatStr
  loc_B7F08E: FStStrNoPop var_13C
  loc_B7F091: LitStr " SET NumeOrpa = 0"
  loc_B7F094: ConcatStr
  loc_B7F095: FStStrNoPop var_140
  loc_B7F098: LitStr " WHERE PeriInfo = "
  loc_B7F09B: ConcatStr
  loc_B7F09C: FStStrNoPop var_144
  loc_B7F09F: FLdI2 PeriInfo
  loc_B7F0A2: CStrUI1
  loc_B7F0A4: FStStrNoPop var_148
  loc_B7F0A7: ConcatStr
  loc_B7F0A8: FStStrNoPop var_14C
  loc_B7F0AB: LitStr " AND NumeOrpa = "
  loc_B7F0AE: ConcatStr
  loc_B7F0AF: FStStrNoPop var_150
  loc_B7F0B2: ILdRf NumeOrpa
  loc_B7F0B5: CStrI4
  loc_B7F0B7: FStStrNoPop var_154
  loc_B7F0BA: ConcatStr
  loc_B7F0BB: FStStrNoPop var_158
  loc_B7F0BE: LitStr ";"
  loc_B7F0C1: ConcatStr
  loc_B7F0C2: FStStrNoPop var_15C
  loc_B7F0C5: Call EjecutarRsCls(from_stack_1v)
  loc_B7F0CA: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_B7F105: FFree1Var var_CC = ""
  loc_B7F108: LitStr " AND ch.CucuPers = "
  loc_B7F10B: ILdRf AnularOP
  loc_B7F10E: ConcatStr
  loc_B7F10F: FStStrNoPop var_F0
  loc_B7F112: LitStr ";"
  loc_B7F115: ConcatStr
  loc_B7F116: CVarStr var_DC
  loc_B7F119: LitVarStr var_BC, vbNullString
  loc_B7F11E: FStVarCopyObj var_CC
  loc_B7F121: FLdRfVar var_CC
  loc_B7F124: ILdRf AnularOP
  loc_B7F127: LitStr vbNullString
  loc_B7F12A: EqStr
  loc_B7F12C: CVarBoolI2 var_AC
  loc_B7F130: FLdRfVar var_EC
  loc_B7F133: ImpAdCallFPR4  = IIf(, , )
  loc_B7F138: FLdRfVar var_EC
  loc_B7F13B: CStrVarTmp
  loc_B7F13C: FStStr var_9C
  loc_B7F13F: FFree1Str var_F0
  loc_B7F142: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_B7F14D: LitStr "SELECT ch.* "
  loc_B7F150: LitStr " FROM cheque ch"
  loc_B7F153: ConcatStr
  loc_B7F154: FStStrNoPop var_F0
  loc_B7F157: LitStr " WHERE ch.PeriInfo = "
  loc_B7F15A: ConcatStr
  loc_B7F15B: FStStrNoPop var_F4
  loc_B7F15E: FLdI2 PeriInfo
  loc_B7F161: CStrUI1
  loc_B7F163: FStStrNoPop var_F8
  loc_B7F166: ConcatStr
  loc_B7F167: FStStrNoPop var_FC
  loc_B7F16A: LitStr " AND NumeOrpa = "
  loc_B7F16D: ConcatStr
  loc_B7F16E: FStStrNoPop var_100
  loc_B7F171: ILdRf NumeOrpa
  loc_B7F174: CStrI4
  loc_B7F176: FStStrNoPop var_104
  loc_B7F179: ConcatStr
  loc_B7F17A: FStStrNoPop var_108
  loc_B7F17D: LitStr " AND NumeMoba > 0"
  loc_B7F180: ConcatStr
  loc_B7F181: FStStrNoPop var_10C
  loc_B7F184: LitStr " AND FeanCheq IS NULL"
  loc_B7F187: ConcatStr
  loc_B7F188: FStStrNoPop var_110
  loc_B7F18B: ILdRf var_9C
  loc_B7F18E: ConcatStr
  loc_B7F18F: FStStrNoPop var_114
  loc_B7F192: Call EjecutarRsCls(from_stack_1v)
  loc_B7F197: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B7F1AE: FLdRfVar var_160
  loc_B7F1B1: FLdPr Me
  loc_B7F1B4: MemLdPr global_56
  loc_B7F1B7:  = Me.RecordCount
  loc_B7F1BC: ILdRf var_160
  loc_B7F1BF: LitI4 0
  loc_B7F1C4: GtI4
  loc_B7F1C5: BranchF loc_B7F543
  loc_B7F1C8: FLdPr Me
  loc_B7F1CB: MemLdPr global_56
  loc_B7F1CE: Me.MoveFirst
  loc_B7F1D3: FLdRfVar var_162
  loc_B7F1D6: FLdPr Me
  loc_B7F1D9: MemLdPr global_56
  loc_B7F1DC:  = Me.EOF
  loc_B7F1E1: FLdI2 var_162
  loc_B7F1E4: NotI4
  loc_B7F1E5: BranchF loc_B7F543
  loc_B7F1E8: FLdRfVar var_1A4
  loc_B7F1EB: FLdRfVar var_194
  loc_B7F1EE: LitVarStr var_190, "AutoCheq"
  loc_B7F1F3: PopAdLdVar
  loc_B7F1F4: FLdRfVar var_180
  loc_B7F1F7: FLdPr Me
  loc_B7F1FA: MemLdPr global_56
  loc_B7F1FD:  = Me.Fields
  loc_B7F202: FLdPr var_180
  loc_B7F205: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F20A: FLdPr var_194
  loc_B7F20D:  = Me.Value
  loc_B7F212: FLdRfVar var_1EC
  loc_B7F215: FLdRfVar var_1DC
  loc_B7F218: LitVarStr var_1D8, "AutoCheq"
  loc_B7F21D: PopAdLdVar
  loc_B7F21E: FLdRfVar var_1C8
  loc_B7F221: FLdPr Me
  loc_B7F224: MemLdPr global_56
  loc_B7F227:  = Me.Fields
  loc_B7F22C: FLdPr var_1C8
  loc_B7F22F: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F234: FLdPr var_1DC
  loc_B7F237:  = Me.Value
  loc_B7F23C: FLdRfVar var_244
  loc_B7F23F: FLdRfVar var_234
  loc_B7F242: LitVarStr var_230, "AutoCheq"
  loc_B7F247: PopAdLdVar
  loc_B7F248: FLdRfVar var_220
  loc_B7F24B: FLdPr Me
  loc_B7F24E: MemLdPr global_56
  loc_B7F251:  = Me.Fields
  loc_B7F256: FLdPr var_220
  loc_B7F259: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F25E: FLdPr var_234
  loc_B7F261:  = Me.Value
  loc_B7F266: LitStr "INSERT INTO movibanco (PeriInfo,IdMoba,CodiBanc,CodiTimb,NumeMoba,FechMoba,FecoMoba,FehocoMoba,DebeMoba,DetaMoba,NumeOrpa,IdCheq,AltaUsua)"
  loc_B7F269: LitStr " VALUES ("
  loc_B7F26C: ConcatStr
  loc_B7F26D: FStStrNoPop var_F0
  loc_B7F270: FLdI2 PeriInfo
  loc_B7F273: CStrUI1
  loc_B7F275: FStStrNoPop var_F4
  loc_B7F278: ConcatStr
  loc_B7F279: FStStrNoPop var_F8
  loc_B7F27C: LitStr ",(SELECT Max(IdMoba)+1 FROM movibanco mb2 WHERE mb2.PeriInfo = "
  loc_B7F27F: ConcatStr
  loc_B7F280: FStStrNoPop var_FC
  loc_B7F283: ImpAdLdI2 MemVar_C3D064
  loc_B7F286: CStrUI1
  loc_B7F288: FStStrNoPop var_100
  loc_B7F28B: ConcatStr
  loc_B7F28C: FStStrNoPop var_104
  loc_B7F28F: LitStr "),"
  loc_B7F292: ConcatStr
  loc_B7F293: CVarStr var_DC
  loc_B7F296: FLdRfVar var_CC
  loc_B7F299: FLdRfVar var_16C
  loc_B7F29C: LitVarStr var_AC, "CodiBanc"
  loc_B7F2A1: PopAdLdVar
  loc_B7F2A2: FLdRfVar var_168
  loc_B7F2A5: FLdPr Me
  loc_B7F2A8: MemLdPr global_56
  loc_B7F2AB:  = Me.Fields
  loc_B7F2B0: FLdPr var_168
  loc_B7F2B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F2B8: FLdPr var_16C
  loc_B7F2BB:  = Me.Value
  loc_B7F2C0: FLdRfVar var_CC
  loc_B7F2C3: ConcatVar var_EC
  loc_B7F2C7: LitVarStr var_BC, ","
  loc_B7F2CC: ConcatVar var_17C
  loc_B7F2D0: LitVarI2 var_2C4, 4
  loc_B7F2D5: LitVarI2 var_2A4, 2
  loc_B7F2DA: FLdRfVar var_1A4
  loc_B7F2DD: LitVarI2 var_1B4, 1
  loc_B7F2E2: HardType
  loc_B7F2E3: EqVar var_1C4
  loc_B7F2E7: FLdRfVar var_1EC
  loc_B7F2EA: LitVarI2 var_1FC, 2
  loc_B7F2EF: HardType
  loc_B7F2F0: EqVar var_20C
  loc_B7F2F4: OrVar var_21C
  loc_B7F2F8: FLdRfVar var_244
  loc_B7F2FB: LitVarI2 var_254, 4
  loc_B7F300: HardType
  loc_B7F301: EqVar var_264
  loc_B7F305: OrVar var_274
  loc_B7F309: FStVar var_284
  loc_B7F30D: FLdRfVar var_284
  loc_B7F310: FLdRfVar var_2D4
  loc_B7F313: ImpAdCallFPR4  = IIf(, , )
  loc_B7F318: FLdRfVar var_2D4
  loc_B7F31B: ConcatVar var_2E4
  loc_B7F31F: LitVarStr var_2F4, ","
  loc_B7F324: ConcatVar var_304
  loc_B7F328: FLdRfVar var_32C
  loc_B7F32B: FLdRfVar var_31C
  loc_B7F32E: LitVarStr var_318, "NumeMoba"
  loc_B7F333: PopAdLdVar
  loc_B7F334: FLdRfVar var_308
  loc_B7F337: FLdPr Me
  loc_B7F33A: MemLdPr global_56
  loc_B7F33D:  = Me.Fields
  loc_B7F342: FLdPr var_308
  loc_B7F345: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F34A: FLdPr var_31C
  loc_B7F34D:  = Me.Value
  loc_B7F352: FLdRfVar var_32C
  loc_B7F355: ConcatVar var_33C
  loc_B7F359: LitVarStr var_34C, ","
  loc_B7F35E: ConcatVar var_35C
  loc_B7F362: LitI4 1
  loc_B7F367: LitI4 1
  loc_B7F36C: LitVarStr var_37C, "'yyyy-mm-dd'"
  loc_B7F371: FStVarCopyObj var_38C
  loc_B7F374: FLdRfVar var_38C
  loc_B7F377: FLdRfVar var_90
  loc_B7F37A: CVarRef
  loc_B7F37F: ImpAdCallI2 Format$(, )
  loc_B7F384: CVarStr var_39C
  loc_B7F387: ConcatVar var_3AC
  loc_B7F38B: LitVarStr var_3BC, ","
  loc_B7F390: ConcatVar var_3CC
  loc_B7F394: LitI4 1
  loc_B7F399: LitI4 1
  loc_B7F39E: LitVarStr var_3EC, "'yyyy-mm-dd'"
  loc_B7F3A3: FStVarCopyObj var_3FC
  loc_B7F3A6: FLdRfVar var_3FC
  loc_B7F3A9: FLdRfVar var_90
  loc_B7F3AC: CVarRef
  loc_B7F3B1: ImpAdCallI2 Format$(, )
  loc_B7F3B6: CVarStr var_40C
  loc_B7F3B9: ConcatVar var_41C
  loc_B7F3BD: LitVarStr var_42C, ", Now(),"
  loc_B7F3C2: ConcatVar var_43C
  loc_B7F3C6: FLdRfVar var_464
  loc_B7F3C9: FLdRfVar var_454
  loc_B7F3CC: LitVarStr var_450, "ImpoCheq"
  loc_B7F3D1: PopAdLdVar
  loc_B7F3D2: FLdRfVar var_440
  loc_B7F3D5: FLdPr Me
  loc_B7F3D8: MemLdPr global_56
  loc_B7F3DB:  = Me.Fields
  loc_B7F3E0: FLdPr var_440
  loc_B7F3E3: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F3E8: FLdPr var_454
  loc_B7F3EB:  = Me.Value
  loc_B7F3F0: FLdRfVar var_464
  loc_B7F3F3: CStrVarTmp
  loc_B7F3F4: FStStrNoPop var_108
  loc_B7F3F7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B7F3FC: CVarStr var_474
  loc_B7F3FF: ConcatVar var_484
  loc_B7F403: LitVarStr var_494, ",'"
  loc_B7F408: ConcatVar var_4A4
  loc_B7F40C: FLdRfVar var_4CC
  loc_B7F40F: FLdRfVar var_4BC
  loc_B7F412: LitVarStr var_4B8, "OrdeCheq"
  loc_B7F417: PopAdLdVar
  loc_B7F418: FLdRfVar var_4A8
  loc_B7F41B: FLdPr Me
  loc_B7F41E: MemLdPr global_56
  loc_B7F421:  = Me.Fields
  loc_B7F426: FLdPr var_4A8
  loc_B7F429: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F42E: FLdPr var_4BC
  loc_B7F431:  = Me.Value
  loc_B7F436: FLdRfVar var_4CC
  loc_B7F439: ConcatVar var_4DC
  loc_B7F43D: LitVarStr var_4EC, "',"
  loc_B7F442: ConcatVar var_4FC
  loc_B7F446: ILdRf NumeOrpa
  loc_B7F449: CVarI4
  loc_B7F44D: ConcatVar var_51C
  loc_B7F451: LitVarStr var_52C, ","
  loc_B7F456: ConcatVar var_53C
  loc_B7F45A: FLdRfVar var_564
  loc_B7F45D: FLdRfVar var_554
  loc_B7F460: LitVarStr var_550, "IdCheq"
  loc_B7F465: PopAdLdVar
  loc_B7F466: FLdRfVar var_540
  loc_B7F469: FLdPr Me
  loc_B7F46C: MemLdPr global_56
  loc_B7F46F:  = Me.Fields
  loc_B7F474: FLdPr var_540
  loc_B7F477: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F47C: FLdPr var_554
  loc_B7F47F:  = Me.Value
  loc_B7F484: FLdRfVar var_564
  loc_B7F487: ConcatVar var_574
  loc_B7F48B: LitVarStr var_584, ",'"
  loc_B7F490: ConcatVar var_594
  loc_B7F494: ImpAdLdI4 MemVar_C3D03C
  loc_B7F497: CVarStr var_5A4
  loc_B7F49A: ConcatVar var_5B4
  loc_B7F49E: LitVarStr var_5C4, "');"
  loc_B7F4A3: ConcatVar var_5D4
  loc_B7F4A7: CStrVarVal var_10C
  loc_B7F4AB: Call Proc_22_60_95A6D0()
  loc_B7F4B0: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B7F4C3: FFreeAd var_168 = "": var_16C = "": var_180 = "": var_194 = "": var_1C8 = "": var_1DC = "": var_220 = "": var_234 = "": var_308 = "": var_31C = "": var_440 = "": var_454 = "": var_4A8 = "": var_4BC = "": var_540 = ""
  loc_B7F4E6: FFreeVar var_4FC = "": var_51C = "": var_53C = "": var_564 = "": var_574 = "": var_594 = "": var_5B4 = "": var_5D4 = "": var_DC = "": var_CC = "": var_EC = "": var_1A4 = "": var_1EC = "": var_244 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_17C = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_32C = "": var_33C = "": var_38C = "": var_35C = "": var_39C = "": var_3AC = "": var_3FC = "": var_3CC = "": var_40C = "": var_41C = "": var_464 = "": var_43C = "": var_474 = "": var_484 = "": var_4A4 = "": var_4CC = ""
  loc_B7F535: FLdPr Me
  loc_B7F538: MemLdPr global_56
  loc_B7F53B: Me.MoveNext
  loc_B7F540: Branch loc_B7F1D3
  loc_B7F543: LitStr "UPDATE cheque ch"
  loc_B7F546: LitStr " SET ch.FeanCheq = "
  loc_B7F549: ConcatStr
  loc_B7F54A: FStStrNoPop var_F0
  loc_B7F54D: LitI4 1
  loc_B7F552: LitI4 1
  loc_B7F557: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7F55C: FStVarCopyObj var_CC
  loc_B7F55F: FLdRfVar var_CC
  loc_B7F562: FLdRfVar var_90
  loc_B7F565: CVarRef
  loc_B7F56A: ImpAdCallI2 Format$(, )
  loc_B7F56F: FStStrNoPop var_F4
  loc_B7F572: ConcatStr
  loc_B7F573: FStStrNoPop var_F8
  loc_B7F576: LitStr ", ch.BajaUsua = '"
  loc_B7F579: ConcatStr
  loc_B7F57A: FStStrNoPop var_FC
  loc_B7F57D: ImpAdLdI4 MemVar_C3D03C
  loc_B7F580: ConcatStr
  loc_B7F581: FStStrNoPop var_100
  loc_B7F584: LitStr "', ch.BajaFeho = Now(), ch.BajaMoti = '"
  loc_B7F587: ConcatStr
  loc_B7F588: FStStrNoPop var_104
  loc_B7F58B: ILdRf var_98
  loc_B7F58E: ConcatStr
  loc_B7F58F: FStStrNoPop var_108
  loc_B7F592: LitStr "'"
  loc_B7F595: ConcatStr
  loc_B7F596: FStStrNoPop var_10C
  loc_B7F599: LitStr " WHERE ch.PeriInfo = "
  loc_B7F59C: ConcatStr
  loc_B7F59D: FStStrNoPop var_110
  loc_B7F5A0: FLdI2 PeriInfo
  loc_B7F5A3: CStrUI1
  loc_B7F5A5: FStStrNoPop var_114
  loc_B7F5A8: ConcatStr
  loc_B7F5A9: FStStrNoPop var_118
  loc_B7F5AC: LitStr " AND ch.NumeOrpa = "
  loc_B7F5AF: ConcatStr
  loc_B7F5B0: FStStrNoPop var_11C
  loc_B7F5B3: ILdRf NumeOrpa
  loc_B7F5B6: CStrI4
  loc_B7F5B8: FStStrNoPop var_120
  loc_B7F5BB: ConcatStr
  loc_B7F5BC: FStStrNoPop var_124
  loc_B7F5BF: LitStr " AND ch.AutoCheq = 3"
  loc_B7F5C2: ConcatStr
  loc_B7F5C3: FStStrNoPop var_128
  loc_B7F5C6: LitStr " AND ch.FeanCheq IS NULL"
  loc_B7F5C9: ConcatStr
  loc_B7F5CA: FStStrNoPop var_12C
  loc_B7F5CD: ILdRf var_9C
  loc_B7F5D0: ConcatStr
  loc_B7F5D1: FStStrNoPop var_130
  loc_B7F5D4: Call EjecutarRsCls(from_stack_1v)
  loc_B7F5D9: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B7F5FE: FFree1Var var_CC = ""
  loc_B7F601: LitStr "UPDATE cheque ch"
  loc_B7F604: LitStr " INNER JOIN movibanco mb ON mb.IdCheq = ch.IdCheq"
  loc_B7F607: ConcatStr
  loc_B7F608: FStStrNoPop var_F0
  loc_B7F60B: LitStr " SET ch.FeanCheq = "
  loc_B7F60E: ConcatStr
  loc_B7F60F: FStStrNoPop var_F4
  loc_B7F612: LitI4 1
  loc_B7F617: LitI4 1
  loc_B7F61C: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7F621: FStVarCopyObj var_CC
  loc_B7F624: FLdRfVar var_CC
  loc_B7F627: FLdRfVar var_90
  loc_B7F62A: CVarRef
  loc_B7F62F: ImpAdCallI2 Format$(, )
  loc_B7F634: FStStrNoPop var_F8
  loc_B7F637: ConcatStr
  loc_B7F638: FStStrNoPop var_FC
  loc_B7F63B: LitStr ", ch.BajaUsua = '"
  loc_B7F63E: ConcatStr
  loc_B7F63F: FStStrNoPop var_100
  loc_B7F642: ImpAdLdI4 MemVar_C3D03C
  loc_B7F645: ConcatStr
  loc_B7F646: FStStrNoPop var_104
  loc_B7F649: LitStr "', ch.BajaFeho = Now(), ch.BajaMoti = '"
  loc_B7F64C: ConcatStr
  loc_B7F64D: FStStrNoPop var_108
  loc_B7F650: ILdRf var_98
  loc_B7F653: ConcatStr
  loc_B7F654: FStStrNoPop var_10C
  loc_B7F657: LitStr "', mb.FecoMoba = "
  loc_B7F65A: ConcatStr
  loc_B7F65B: FStStrNoPop var_110
  loc_B7F65E: LitI4 1
  loc_B7F663: LitI4 1
  loc_B7F668: LitVarStr var_1B4, "'yyyy-mm-dd'"
  loc_B7F66D: FStVarCopyObj var_DC
  loc_B7F670: FLdRfVar var_DC
  loc_B7F673: FLdRfVar var_90
  loc_B7F676: CVarRef
  loc_B7F67B: ImpAdCallI2 Format$(, )
  loc_B7F680: FStStrNoPop var_114
  loc_B7F683: ConcatStr
  loc_B7F684: FStStrNoPop var_118
  loc_B7F687: LitStr ", mb.FehocoMoba = Now()"
  loc_B7F68A: ConcatStr
  loc_B7F68B: FStStrNoPop var_11C
  loc_B7F68E: LitStr " WHERE ch.PeriInfo = "
  loc_B7F691: ConcatStr
  loc_B7F692: FStStrNoPop var_120
  loc_B7F695: FLdI2 PeriInfo
  loc_B7F698: CStrUI1
  loc_B7F69A: FStStrNoPop var_124
  loc_B7F69D: ConcatStr
  loc_B7F69E: FStStrNoPop var_128
  loc_B7F6A1: LitStr " AND ch.NumeOrpa = "
  loc_B7F6A4: ConcatStr
  loc_B7F6A5: FStStrNoPop var_12C
  loc_B7F6A8: ILdRf NumeOrpa
  loc_B7F6AB: CStrI4
  loc_B7F6AD: FStStrNoPop var_130
  loc_B7F6B0: ConcatStr
  loc_B7F6B1: FStStrNoPop var_134
  loc_B7F6B4: LitStr " AND ch.NumeMoba > 0"
  loc_B7F6B7: ConcatStr
  loc_B7F6B8: FStStrNoPop var_138
  loc_B7F6BB: LitStr " AND ch.FeanCheq IS NULL"
  loc_B7F6BE: ConcatStr
  loc_B7F6BF: FStStrNoPop var_13C
  loc_B7F6C2: ILdRf var_9C
  loc_B7F6C5: ConcatStr
  loc_B7F6C6: FStStrNoPop var_140
  loc_B7F6C9: Call EjecutarRsCls(from_stack_1v)
  loc_B7F6CE: FFreeStr var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B7F6FB: FFreeVar var_CC = ""
  loc_B7F702: ILdRf AnularOP
  loc_B7F705: LitStr vbNullString
  loc_B7F708: EqStr
  loc_B7F70A: BranchF loc_B7F722
  loc_B7F70D: LitStr "Se ANULÓ la OP: "
  loc_B7F710: ILdRf NumeOrpa
  loc_B7F713: CStrI4
  loc_B7F715: FStStrNoPop var_F0
  loc_B7F718: ConcatStr
  loc_B7F719: FStStr var_88
  loc_B7F71C: FFree1Str var_F0
  loc_B7F71F: Branch loc_B7F72C
  loc_B7F722: LitStr "Se ANULARON los cheques del proveedor (CUIT) "
  loc_B7F725: ILdRf AnularOP
  loc_B7F728: ConcatStr
  loc_B7F729: FStStr var_88
  loc_B7F72C: LitStr "COMMIT;"
  loc_B7F72F: Call EjecutarRsCls(from_stack_1v)
  loc_B7F734: ExitProcCbHresult
  loc_B7F73A: LitStr "ROLLBACK;"
  loc_B7F73D: Call EjecutarRsCls(from_stack_1v)
  loc_B7F742: LitStr "ERROR en la Anulación de la OP. Consulte con el Administrador..."
  loc_B7F745: FStStrCopy var_88
  loc_B7F748: ExitProcCbHresult
  loc_B7F74E: MemStI2 global_31828
End Function

Public Function EsChequeUnico(PeriInfo, NumeOrpa) '99DD18
  'Data Table: 4371F4
  loc_99DCB8: LitStr "SELECT * FROM ordenpago WHERE PeriInfo = "
  loc_99DCBB: FLdI2 PeriInfo
  loc_99DCBE: CStrUI1
  loc_99DCC0: FStStrNoPop var_8C
  loc_99DCC3: ConcatStr
  loc_99DCC4: FStStrNoPop var_90
  loc_99DCC7: LitStr " AND NumeOrpa = "
  loc_99DCCA: ConcatStr
  loc_99DCCB: FStStrNoPop EsChequeUnico
  loc_99DCCE: ILdRf NumeOrpa
  loc_99DCD1: CStrI4
  loc_99DCD3: FStStrNoPop var_98
  loc_99DCD6: ConcatStr
  loc_99DCD7: FStStrNoPop var_9C
  loc_99DCDA: LitStr " AND ChunOrpa = 1"
  loc_99DCDD: ConcatStr
  loc_99DCDE: FStStrNoPop var_A0
  loc_99DCE1: Call EjecutarRsCls(from_stack_1v)
  loc_99DCE6: FFreeStr var_8C = "": var_90 = "": EsChequeUnico = "": var_98 = "": var_9C = ""
  loc_99DCF5: FLdRfVar var_A4
  loc_99DCF8: FLdPr Me
  loc_99DCFB: MemLdPr global_56
  loc_99DCFE:  = Me.RecordCount
  loc_99DD03: ILdRf var_A4
  loc_99DD06: LitI4 0
  loc_99DD0B: GtI4
  loc_99DD0C: FStI2 var_86
  loc_99DD0F: ExitProcCbHresult
  loc_99DD15: FStStr var_9C
End Function

Public Function BuscaImporteMinimoCargo(PeriInfo) '9A8754
  'Data Table: 4371F4
  loc_9A86D4: LitStr "SELECT LimiTica FROM tipocargo WHERE PeriInfo = "
  loc_9A86D7: FLdI2 PeriInfo
  loc_9A86DA: CStrUI1
  loc_9A86DC: FStStrNoPop var_90
  loc_9A86DF: ConcatStr
  loc_9A86E0: FStStrNoPop BuscaImporteMinimoCargo
  loc_9A86E3: LitStr " ORDER BY CodiTica DESC LIMIT 1;"
  loc_9A86E6: ConcatStr
  loc_9A86E7: FStStrNoPop var_98
  loc_9A86EA: Call EjecutarRsCls(from_stack_1v)
  loc_9A86EF: FFreeStr var_90 = "": BuscaImporteMinimoCargo = ""
  loc_9A86F8: FLdRfVar var_9C
  loc_9A86FB: FLdPr Me
  loc_9A86FE: MemLdPr global_56
  loc_9A8701:  = Me.RecordCount
  loc_9A8706: ILdRf var_9C
  loc_9A8709: LitI4 0
  loc_9A870E: GtI4
  loc_9A870F: BranchF loc_9A874D
  loc_9A8712: FLdRfVar var_C4
  loc_9A8715: FLdRfVar var_B4
  loc_9A8718: LitVarStr var_B0, "LimiTica"
  loc_9A871D: PopAdLdVar
  loc_9A871E: FLdRfVar var_A0
  loc_9A8721: FLdPr Me
  loc_9A8724: MemLdPr global_56
  loc_9A8727:  = Me.Fields
  loc_9A872C: FLdPr var_A0
  loc_9A872F: from_stack_2 = Me.Item(from_stack_1)
  loc_9A8734: FLdPr var_B4
  loc_9A8737:  = Me.Value
  loc_9A873C: FLdRfVar var_C4
  loc_9A873F: CR4Var
  loc_9A8740: FStFPR8 var_8C
  loc_9A8743: FFreeAd var_A0 = ""
  loc_9A874A: FFree1Var var_C4 = ""
  loc_9A874D: ExitProcCbHresult
End Function

Public Function BuscaDiasRendicionCargo(PeriInfo, CodiTica) '9B4DA4
  'Data Table: 4371F4
  loc_9B4D0C: LitStr "SELECT DiasTica FROM tipocargo WHERE PeriInfo = "
  loc_9B4D0F: FLdI2 PeriInfo
  loc_9B4D12: CStrUI1
  loc_9B4D14: FStStrNoPop var_8C
  loc_9B4D17: ConcatStr
  loc_9B4D18: FStStrNoPop var_90
  loc_9B4D1B: LitStr " AND CodiTica = "
  loc_9B4D1E: ConcatStr
  loc_9B4D1F: FStStrNoPop BuscaDiasRendicionCargo
  loc_9B4D22: FLdI2 CodiTica
  loc_9B4D25: CStrUI1
  loc_9B4D27: FStStrNoPop var_98
  loc_9B4D2A: ConcatStr
  loc_9B4D2B: FStStrNoPop var_9C
  loc_9B4D2E: LitStr ";"
  loc_9B4D31: ConcatStr
  loc_9B4D32: FStStrNoPop var_A0
  loc_9B4D35: Call EjecutarRsCls(from_stack_1v)
  loc_9B4D3A: FFreeStr var_8C = "": var_90 = "": BuscaDiasRendicionCargo = "": var_98 = "": var_9C = ""
  loc_9B4D49: FLdRfVar var_A4
  loc_9B4D4C: FLdPr Me
  loc_9B4D4F: MemLdPr global_56
  loc_9B4D52:  = Me.RecordCount
  loc_9B4D57: ILdRf var_A4
  loc_9B4D5A: LitI4 0
  loc_9B4D5F: GtI4
  loc_9B4D60: BranchF loc_9B4D9E
  loc_9B4D63: FLdRfVar var_CC
  loc_9B4D66: FLdRfVar var_BC
  loc_9B4D69: LitVarStr var_B8, "DiasTica"
  loc_9B4D6E: PopAdLdVar
  loc_9B4D6F: FLdRfVar var_A8
  loc_9B4D72: FLdPr Me
  loc_9B4D75: MemLdPr global_56
  loc_9B4D78:  = Me.Fields
  loc_9B4D7D: FLdPr var_A8
  loc_9B4D80: from_stack_2 = Me.Item(from_stack_1)
  loc_9B4D85: FLdPr var_BC
  loc_9B4D88:  = Me.Value
  loc_9B4D8D: FLdRfVar var_CC
  loc_9B4D90: CI2Var
  loc_9B4D91: FStI2 var_86
  loc_9B4D94: FFreeAd var_A8 = ""
  loc_9B4D9B: FFree1Var var_CC = ""
  loc_9B4D9E: ExitProcCbHresult
End Function

Public Function TieneCargos(PeriInfo, NumeOrpa) '9A3570
  'Data Table: 4371F4
  loc_9A3504: LitStr "SELECT NumeOrpa FROM cargo WHERE PeriInfo = "
  loc_9A3507: FLdI2 PeriInfo
  loc_9A350A: CStrUI1
  loc_9A350C: FStStrNoPop var_8C
  loc_9A350F: ConcatStr
  loc_9A3510: FStStrNoPop var_90
  loc_9A3513: LitStr " AND NumeOrpa = "
  loc_9A3516: ConcatStr
  loc_9A3517: FStStrNoPop TieneCargos
  loc_9A351A: ILdRf NumeOrpa
  loc_9A351D: CStrI4
  loc_9A351F: FStStrNoPop var_98
  loc_9A3522: ConcatStr
  loc_9A3523: FStStrNoPop var_9C
  loc_9A3526: LitStr ";"
  loc_9A3529: ConcatStr
  loc_9A352A: FStStrNoPop var_A0
  loc_9A352D: Call EjecutarRsCls(from_stack_1v)
  loc_9A3532: FFreeStr var_8C = "": var_90 = "": TieneCargos = "": var_98 = "": var_9C = ""
  loc_9A3541: FLdRfVar var_A4
  loc_9A3544: FLdPr Me
  loc_9A3547: MemLdPr global_56
  loc_9A354A:  = Me.RecordCount
  loc_9A354F: ILdRf var_A4
  loc_9A3552: LitI4 0
  loc_9A3557: GtI4
  loc_9A3558: BranchF loc_9A3563
  loc_9A355B: LitI2_Byte &HFF
  loc_9A355D: FStI2 var_86
  loc_9A3560: Branch loc_9A3568
  loc_9A3563: LitI2_Byte 0
  loc_9A3565: FStI2 var_86
  loc_9A3568: ExitProcCbHresult
End Function

Public Function TieneDescargos(PeriInfo, NumeOrpa) '9A38F4
  'Data Table: 4371F4
  loc_9A3888: LitStr "SELECT NumeOrpa FROM cargo c INNER JOIN descargo d ON d.IdCargo = c.IdCargo WHERE c.PeriInfo = "
  loc_9A388B: FLdI2 PeriInfo
  loc_9A388E: CStrUI1
  loc_9A3890: FStStrNoPop var_8C
  loc_9A3893: ConcatStr
  loc_9A3894: FStStrNoPop var_90
  loc_9A3897: LitStr " AND c.NumeOrpa = "
  loc_9A389A: ConcatStr
  loc_9A389B: FStStrNoPop TieneDescargos
  loc_9A389E: ILdRf NumeOrpa
  loc_9A38A1: CStrI4
  loc_9A38A3: FStStrNoPop var_98
  loc_9A38A6: ConcatStr
  loc_9A38A7: FStStrNoPop var_9C
  loc_9A38AA: LitStr ";"
  loc_9A38AD: ConcatStr
  loc_9A38AE: FStStrNoPop var_A0
  loc_9A38B1: Call EjecutarRsCls(from_stack_1v)
  loc_9A38B6: FFreeStr var_8C = "": var_90 = "": TieneDescargos = "": var_98 = "": var_9C = ""
  loc_9A38C5: FLdRfVar var_A4
  loc_9A38C8: FLdPr Me
  loc_9A38CB: MemLdPr global_56
  loc_9A38CE:  = Me.RecordCount
  loc_9A38D3: ILdRf var_A4
  loc_9A38D6: LitI4 0
  loc_9A38DB: GtI4
  loc_9A38DC: BranchF loc_9A38E7
  loc_9A38DF: LitI2_Byte &HFF
  loc_9A38E1: FStI2 var_86
  loc_9A38E4: Branch loc_9A38EC
  loc_9A38E7: LitI2_Byte 0
  loc_9A38E9: FStI2 var_86
  loc_9A38EC: ExitProcCbHresult
End Function

Public Function TieneChequeConciliado(PeriInfo, NumeOrpa) '9A378C
  'Data Table: 4371F4
  loc_9A3720: LitStr "SELECT NumeOrpa FROM movibanco mb WHERE mb.PeriInfo = "
  loc_9A3723: FLdI2 PeriInfo
  loc_9A3726: CStrUI1
  loc_9A3728: FStStrNoPop var_8C
  loc_9A372B: ConcatStr
  loc_9A372C: FStStrNoPop var_90
  loc_9A372F: LitStr " AND mb.NumeOrpa = "
  loc_9A3732: ConcatStr
  loc_9A3733: FStStrNoPop TieneChequeConciliado
  loc_9A3736: ILdRf NumeOrpa
  loc_9A3739: CStrI4
  loc_9A373B: FStStrNoPop var_98
  loc_9A373E: ConcatStr
  loc_9A373F: FStStrNoPop var_9C
  loc_9A3742: LitStr " AND mb.FecoMoba is not null;"
  loc_9A3745: ConcatStr
  loc_9A3746: FStStrNoPop var_A0
  loc_9A3749: Call EjecutarRsCls(from_stack_1v)
  loc_9A374E: FFreeStr var_8C = "": var_90 = "": TieneChequeConciliado = "": var_98 = "": var_9C = ""
  loc_9A375D: FLdRfVar var_A4
  loc_9A3760: FLdPr Me
  loc_9A3763: MemLdPr global_56
  loc_9A3766:  = Me.RecordCount
  loc_9A376B: ILdRf var_A4
  loc_9A376E: LitI4 0
  loc_9A3773: GtI4
  loc_9A3774: BranchF loc_9A377F
  loc_9A3777: LitI2_Byte &HFF
  loc_9A3779: FStI2 var_86
  loc_9A377C: Branch loc_9A3784
  loc_9A377F: LitI2_Byte 0
  loc_9A3781: FStI2 var_86
  loc_9A3784: ExitProcCbHresult
End Function

Public Function TieneRetenciones(PeriInfo, NumeOrpa, CucuPers) '9D2AE0
  'Data Table: 4371F4
  loc_9D2A1C: LitStr " AND CucuPers = "
  loc_9D2A1F: ILdI4 CucuPers
  loc_9D2A22: ConcatStr
  loc_9D2A23: CVarStr var_CC
  loc_9D2A26: LitVarStr var_AC, vbNullString
  loc_9D2A2B: FStVarCopyObj var_BC
  loc_9D2A2E: FLdRfVar var_BC
  loc_9D2A31: ILdI4 CucuPers
  loc_9D2A34: LitStr vbNullString
  loc_9D2A37: EqStr
  loc_9D2A39: CVarBoolI2 var_9C
  loc_9D2A3D: FLdRfVar var_DC
  loc_9D2A40: ImpAdCallFPR4  = IIf(, , )
  loc_9D2A45: FLdRfVar var_DC
  loc_9D2A48: CStrVarTmp
  loc_9D2A49: FStStr var_8C
  loc_9D2A4C: FFreeVar var_9C = "": var_BC = "": var_CC = ""
  loc_9D2A57: LitStr "SELECT l.*"
  loc_9D2A5A: LitStr " FROM liquidacion l"
  loc_9D2A5D: ConcatStr
  loc_9D2A5E: FStStrNoPop var_E0
  loc_9D2A61: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu"
  loc_9D2A64: ConcatStr
  loc_9D2A65: FStStrNoPop var_E4
  loc_9D2A68: LitStr " AND CodiRete > 0"
  loc_9D2A6B: ConcatStr
  loc_9D2A6C: FStStrNoPop var_E8
  loc_9D2A6F: ILdRf var_8C
  loc_9D2A72: ConcatStr
  loc_9D2A73: FStStrNoPop var_EC
  loc_9D2A76: LitStr " WHERE l.PeriInfo = "
  loc_9D2A79: ConcatStr
  loc_9D2A7A: FStStrNoPop var_F0
  loc_9D2A7D: FLdI2 PeriInfo
  loc_9D2A80: CStrUI1
  loc_9D2A82: FStStrNoPop var_F4
  loc_9D2A85: ConcatStr
  loc_9D2A86: FStStrNoPop var_F8
  loc_9D2A89: LitStr " AND l.NumeOrpa = "
  loc_9D2A8C: ConcatStr
  loc_9D2A8D: FStStrNoPop var_FC
  loc_9D2A90: ILdRf NumeOrpa
  loc_9D2A93: CStrI4
  loc_9D2A95: FStStrNoPop var_100
  loc_9D2A98: ConcatStr
  loc_9D2A99: FStStrNoPop var_104
  loc_9D2A9C: Call EjecutarRsCls(from_stack_1v)
  loc_9D2AA1: FFreeStr var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_9D2AB8: FLdRfVar var_108
  loc_9D2ABB: FLdPr Me
  loc_9D2ABE: MemLdPr global_56
  loc_9D2AC1:  = Me.RecordCount
  loc_9D2AC6: ILdRf var_108
  loc_9D2AC9: LitI4 0
  loc_9D2ACE: GtI4
  loc_9D2ACF: BranchF loc_9D2AD7
  loc_9D2AD2: LitI2_Byte &HFF
  loc_9D2AD4: FStI2 var_86
  loc_9D2AD7: ExitProcCbHresult
  loc_9D2ADD: FLdPr arg_600
End Function

Public Function TieneAjusImpu(PeriInfo, NumeOrpa) '9A6068
  'Data Table: 4371F4
  loc_9A5FF4: LitStr "SELECT i.*"
  loc_9A5FF7: LitStr " FROM imputacion i"
  loc_9A5FFA: ConcatStr
  loc_9A5FFB: FStStrNoPop var_8C
  loc_9A5FFE: LitStr " WHERE i.PeriInfo = "
  loc_9A6001: ConcatStr
  loc_9A6002: FStStrNoPop var_90
  loc_9A6005: FLdI2 PeriInfo
  loc_9A6008: CStrUI1
  loc_9A600A: FStStrNoPop TieneAjusImpu
  loc_9A600D: ConcatStr
  loc_9A600E: FStStrNoPop var_98
  loc_9A6011: LitStr " AND i.NumeOrpa = "
  loc_9A6014: ConcatStr
  loc_9A6015: FStStrNoPop var_9C
  loc_9A6018: ILdRf NumeOrpa
  loc_9A601B: CStrI4
  loc_9A601D: FStStrNoPop var_A0
  loc_9A6020: ConcatStr
  loc_9A6021: FStStrNoPop var_A4
  loc_9A6024: LitStr " AND AjusImpu > 0;"
  loc_9A6027: ConcatStr
  loc_9A6028: FStStrNoPop var_A8
  loc_9A602B: Call EjecutarRsCls(from_stack_1v)
  loc_9A6030: FFreeStr var_8C = "": var_90 = "": TieneAjusImpu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_9A6043: FLdRfVar var_AC
  loc_9A6046: FLdPr Me
  loc_9A6049: MemLdPr global_56
  loc_9A604C:  = Me.RecordCount
  loc_9A6051: ILdRf var_AC
  loc_9A6054: LitI4 0
  loc_9A6059: GtI4
  loc_9A605A: BranchF loc_9A6062
  loc_9A605D: LitI2_Byte &HFF
  loc_9A605F: FStI2 var_86
  loc_9A6062: ExitProcCbHresult
End Function

Public Function SoloRetenciones(PeriInfo, NumeOrpa) '9B92F4
  'Data Table: 4371F4
  loc_9B9258: FDupVar
  loc_9B925E: LitStr "SELECT op.*"
  loc_9B9261: LitStr " FROM ordenpago op"
  loc_9B9264: ConcatStr
  loc_9B9265: FStStrNoPop var_9C
  loc_9B9268: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = op.PeriInfo AND lqn.ExpeImpu = op.ExpeImpu AND lqn.NumeLiqu = op.NumeLiqu"
  loc_9B926B: ConcatStr
  loc_9B926C: FStStrNoPop var_A0
  loc_9B926F: LitStr " AND lqn.CodiRete = 0"
  loc_9B9272: ConcatStr
  loc_9B9273: FStStrNoPop var_A4
  loc_9B9276: LitStr " WHERE op.PeriInfo = "
  loc_9B9279: ConcatStr
  loc_9B927A: CVarStr var_B4
  loc_9B927D: FLdRfVar var_98
  loc_9B9280: ConcatVar var_C4
  loc_9B9284: LitVarStr var_D4, " AND NumeOrpa = "
  loc_9B9289: ConcatVar var_E4
  loc_9B928D: ILdRf arg_1C
  loc_9B9290: CVarI4
  loc_9B9294: ConcatVar var_104
  loc_9B9298: LitVarStr var_114, ";"
  loc_9B929D: ConcatVar var_124
  loc_9B92A1: CStrVarVal var_128
  loc_9B92A5: Call EjecutarRsCls(from_stack_1v)
  loc_9B92AA: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_9B92B5: FFreeVar var_B4 = "": var_C4 = "": var_E4 = "": var_104 = ""
  loc_9B92C2: LitI2_Byte &HFF
  loc_9B92C4: FStI2 var_86
  loc_9B92C7: FLdRfVar var_12C
  loc_9B92CA: FLdPr Me
  loc_9B92CD: MemLdPr global_56
  loc_9B92D0:  = Me.RecordCount
  loc_9B92D5: ILdRf var_12C
  loc_9B92D8: LitI4 0
  loc_9B92DD: EqI4
  loc_9B92DE: BranchF loc_9B92E9
  loc_9B92E1: LitI2_Byte &HFF
  loc_9B92E3: FStI2 var_86
  loc_9B92E6: Branch loc_9B92EE
  loc_9B92E9: LitI2_Byte 0
  loc_9B92EB: FStI2 var_86
  loc_9B92EE: ExitProcCbHresult
End Function

Public Function fxTieneCheques(PeriInfo, NumeOrpa) '9A0C0C
  'Data Table: 4371F4
  loc_9A0BA8: LitStr "SELECT * FROM cheque WHERE PeriInfo = "
  loc_9A0BAB: FLdI2 PeriInfo
  loc_9A0BAE: CStrUI1
  loc_9A0BB0: FStStrNoPop var_8C
  loc_9A0BB3: ConcatStr
  loc_9A0BB4: FStStrNoPop var_90
  loc_9A0BB7: LitStr " AND NumeOrpa = "
  loc_9A0BBA: ConcatStr
  loc_9A0BBB: FStStrNoPop fxTieneCheques
  loc_9A0BBE: ILdRf NumeOrpa
  loc_9A0BC1: CStrI4
  loc_9A0BC3: FStStrNoPop var_98
  loc_9A0BC6: ConcatStr
  loc_9A0BC7: FStStrNoPop var_9C
  loc_9A0BCA: LitStr " AND FeanCheq IS NULL AND NumeMoba > 0"
  loc_9A0BCD: ConcatStr
  loc_9A0BCE: FStStrNoPop var_A0
  loc_9A0BD1: Call EjecutarRsCls(from_stack_1v)
  loc_9A0BD6: FFreeStr var_8C = "": var_90 = "": fxTieneCheques = "": var_98 = "": var_9C = ""
  loc_9A0BE5: FLdRfVar var_A4
  loc_9A0BE8: FLdPr Me
  loc_9A0BEB: MemLdPr global_56
  loc_9A0BEE:  = Me.RecordCount
  loc_9A0BF3: ILdRf var_A4
  loc_9A0BF6: LitI4 0
  loc_9A0BFB: GtI4
  loc_9A0BFC: BranchF loc_9A0C04
  loc_9A0BFF: LitI2_Byte &HFF
  loc_9A0C01: FStI2 var_86
  loc_9A0C04: ExitProcCbHresult
End Function

Public Function UltimaFechaRemision(Peri, Op) 'A7A8FC
  'Data Table: 4371F4
  loc_A7A54C: ZeroRetVal
  loc_A7A54E: ImpAdLdFPR8 MemVar_C3D054
  loc_A7A551: CStrDate
  loc_A7A553: FStStr var_88
  loc_A7A556: LitStr "SELECT FeproPaco"
  loc_A7A559: LitStr " FROM paraconta"
  loc_A7A55C: ConcatStr
  loc_A7A55D: FStStrNoPop var_8C
  loc_A7A560: LitStr " WHERE PeriInfo = "
  loc_A7A563: ConcatStr
  loc_A7A564: FStStrNoPop var_90
  loc_A7A567: ILdI2 Peri
  loc_A7A56A: CStrUI1
  loc_A7A56C: FStStrNoPop UltimaFechaRemision
  loc_A7A56F: ConcatStr
  loc_A7A570: FStStrNoPop var_98
  loc_A7A573: LitStr ";"
  loc_A7A576: ConcatStr
  loc_A7A577: FStStrNoPop var_9C
  loc_A7A57A: Call EjecutarRsCls(from_stack_1v)
  loc_A7A57F: FFreeStr var_8C = "": var_90 = "": UltimaFechaRemision = "": var_98 = ""
  loc_A7A58C: FLdRfVar var_B4
  loc_A7A58F: LitVarStr var_B0, "FeproPaco"
  loc_A7A594: PopAdLdVar
  loc_A7A595: FLdRfVar var_A0
  loc_A7A598: FLdPr Me
  loc_A7A59B: MemLdPr global_56
  loc_A7A59E:  = Me.Fields
  loc_A7A5A3: FLdPr var_A0
  loc_A7A5A6: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A5AB: FLdZeroAd var_B4
  loc_A7A5AE: CVarAd
  loc_A7A5B2: ImpAdCallI2 IsDate()
  loc_A7A5B7: FFree1Ad var_A0
  loc_A7A5BA: FFree1Var var_C4 = ""
  loc_A7A5BD: BranchF loc_A7A5FB
  loc_A7A5C0: FLdRfVar var_C4
  loc_A7A5C3: FLdRfVar var_B4
  loc_A7A5C6: LitVarStr var_B0, "FeproPaco"
  loc_A7A5CB: PopAdLdVar
  loc_A7A5CC: FLdRfVar var_A0
  loc_A7A5CF: FLdPr Me
  loc_A7A5D2: MemLdPr global_56
  loc_A7A5D5:  = Me.Fields
  loc_A7A5DA: FLdPr var_A0
  loc_A7A5DD: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A5E2: FLdPr var_B4
  loc_A7A5E5:  = Me.Value
  loc_A7A5EA: FLdRfVar var_C4
  loc_A7A5ED: CStrVarTmp
  loc_A7A5EE: FStStr var_88
  loc_A7A5F1: FFreeAd var_A0 = ""
  loc_A7A5F8: FFree1Var var_C4 = ""
  loc_A7A5FB: LitStr "SELECT FechOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A7A5FE: ILdI2 Peri
  loc_A7A601: CStrUI1
  loc_A7A603: FStStrNoPop var_8C
  loc_A7A606: ConcatStr
  loc_A7A607: FStStrNoPop var_90
  loc_A7A60A: LitStr " AND NumeOrpa = "
  loc_A7A60D: ConcatStr
  loc_A7A60E: FStStrNoPop UltimaFechaRemision
  loc_A7A611: ILdI4 Op
  loc_A7A614: CStrI4
  loc_A7A616: FStStrNoPop var_98
  loc_A7A619: ConcatStr
  loc_A7A61A: FStStrNoPop var_9C
  loc_A7A61D: LitStr ";"
  loc_A7A620: ConcatStr
  loc_A7A621: FStStrNoPop var_C8
  loc_A7A624: Call EjecutarRsCls(from_stack_1v)
  loc_A7A629: FFreeStr var_8C = "": var_90 = "": UltimaFechaRemision = "": var_98 = "": var_9C = ""
  loc_A7A638: FLdRfVar var_C4
  loc_A7A63B: FLdRfVar var_B4
  loc_A7A63E: LitVarStr var_B0, "FechOrpa"
  loc_A7A643: PopAdLdVar
  loc_A7A644: FLdRfVar var_A0
  loc_A7A647: FLdPr Me
  loc_A7A64A: MemLdPr global_56
  loc_A7A64D:  = Me.Fields
  loc_A7A652: FLdPr var_A0
  loc_A7A655: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A65A: FLdPr var_B4
  loc_A7A65D:  = Me.Value
  loc_A7A662: FLdRfVar var_C4
  loc_A7A665: FnCDateVar
  loc_A7A667: ILdRf var_88
  loc_A7A66A: CDateStr
  loc_A7A66C: GtR4
  loc_A7A66D: FFreeAd var_A0 = ""
  loc_A7A674: FFree1Var var_C4 = ""
  loc_A7A677: BranchF loc_A7A6B5
  loc_A7A67A: FLdRfVar var_C4
  loc_A7A67D: FLdRfVar var_B4
  loc_A7A680: LitVarStr var_B0, "FechOrpa"
  loc_A7A685: PopAdLdVar
  loc_A7A686: FLdRfVar var_A0
  loc_A7A689: FLdPr Me
  loc_A7A68C: MemLdPr global_56
  loc_A7A68F:  = Me.Fields
  loc_A7A694: FLdPr var_A0
  loc_A7A697: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A69C: FLdPr var_B4
  loc_A7A69F:  = Me.Value
  loc_A7A6A4: FLdRfVar var_C4
  loc_A7A6A7: CStrVarTmp
  loc_A7A6A8: FStStr var_88
  loc_A7A6AB: FFreeAd var_A0 = ""
  loc_A7A6B2: FFree1Var var_C4 = ""
  loc_A7A6B5: LitStr "SELECT IFNULL(Max(FechCheq),FechOrpa) FechCheq"
  loc_A7A6B8: LitStr " FROM cheque ch"
  loc_A7A6BB: ConcatStr
  loc_A7A6BC: FStStrNoPop var_8C
  loc_A7A6BF: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ch.PeriInfo AND o.NumeOrpa = ch.NumeOrpa"
  loc_A7A6C2: ConcatStr
  loc_A7A6C3: FStStrNoPop var_90
  loc_A7A6C6: LitStr " WHERE ch.PeriInfo = "
  loc_A7A6C9: ConcatStr
  loc_A7A6CA: FStStrNoPop UltimaFechaRemision
  loc_A7A6CD: ILdI2 Peri
  loc_A7A6D0: CStrUI1
  loc_A7A6D2: FStStrNoPop var_98
  loc_A7A6D5: ConcatStr
  loc_A7A6D6: FStStrNoPop var_9C
  loc_A7A6D9: LitStr " AND ch.NumeOrpa = "
  loc_A7A6DC: ConcatStr
  loc_A7A6DD: FStStrNoPop var_C8
  loc_A7A6E0: ILdI4 Op
  loc_A7A6E3: CStrI4
  loc_A7A6E5: FStStrNoPop var_CC
  loc_A7A6E8: ConcatStr
  loc_A7A6E9: FStStrNoPop var_D0
  loc_A7A6EC: LitStr ";"
  loc_A7A6EF: ConcatStr
  loc_A7A6F0: FStStrNoPop var_D4
  loc_A7A6F3: Call EjecutarRsCls(from_stack_1v)
  loc_A7A6F8: FFreeStr var_8C = "": var_90 = "": UltimaFechaRemision = "": var_98 = "": var_9C = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A7A70D: FLdRfVar var_D8
  loc_A7A710: FLdPr Me
  loc_A7A713: MemLdPr global_56
  loc_A7A716:  = Me.RecordCount
  loc_A7A71B: ILdRf var_D8
  loc_A7A71E: LitI4 0
  loc_A7A723: GtI4
  loc_A7A724: BranchF loc_A7A7A4
  loc_A7A727: FLdRfVar var_C4
  loc_A7A72A: FLdRfVar var_B4
  loc_A7A72D: LitVarStr var_B0, "FechCheq"
  loc_A7A732: PopAdLdVar
  loc_A7A733: FLdRfVar var_A0
  loc_A7A736: FLdPr Me
  loc_A7A739: MemLdPr global_56
  loc_A7A73C:  = Me.Fields
  loc_A7A741: FLdPr var_A0
  loc_A7A744: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A749: FLdPr var_B4
  loc_A7A74C:  = Me.Value
  loc_A7A751: FLdRfVar var_C4
  loc_A7A754: FnCDateVar
  loc_A7A756: ILdRf var_88
  loc_A7A759: CDateStr
  loc_A7A75B: GtR4
  loc_A7A75C: FFreeAd var_A0 = ""
  loc_A7A763: FFree1Var var_C4 = ""
  loc_A7A766: BranchF loc_A7A7A4
  loc_A7A769: FLdRfVar var_C4
  loc_A7A76C: FLdRfVar var_B4
  loc_A7A76F: LitVarStr var_B0, "FechCheq"
  loc_A7A774: PopAdLdVar
  loc_A7A775: FLdRfVar var_A0
  loc_A7A778: FLdPr Me
  loc_A7A77B: MemLdPr global_56
  loc_A7A77E:  = Me.Fields
  loc_A7A783: FLdPr var_A0
  loc_A7A786: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A78B: FLdPr var_B4
  loc_A7A78E:  = Me.Value
  loc_A7A793: FLdRfVar var_C4
  loc_A7A796: CStrVarTmp
  loc_A7A797: FStStr var_88
  loc_A7A79A: FFreeAd var_A0 = ""
  loc_A7A7A1: FFree1Var var_C4 = ""
  loc_A7A7A4: LitStr "SELECT IFNULL(Max(FeanCheq),FechOrpa) FeanCheq"
  loc_A7A7A7: LitStr " FROM cheque ch"
  loc_A7A7AA: ConcatStr
  loc_A7A7AB: FStStrNoPop var_8C
  loc_A7A7AE: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ch.PeriInfo AND o.NumeOrpa = ch.NumeOrpa"
  loc_A7A7B1: ConcatStr
  loc_A7A7B2: FStStrNoPop var_90
  loc_A7A7B5: LitStr " WHERE ch.PeriInfo = "
  loc_A7A7B8: ConcatStr
  loc_A7A7B9: CVarStr var_E8
  loc_A7A7BC: FLdRfVar var_C4
  loc_A7A7BF: FLdRfVar var_B4
  loc_A7A7C2: LitVarStr var_B0, "PeriInfo"
  loc_A7A7C7: PopAdLdVar
  loc_A7A7C8: FLdRfVar var_A0
  loc_A7A7CB: FLdPr Me
  loc_A7A7CE: MemLdPr RsFrm
  loc_A7A7D1:  = Me.Fields
  loc_A7A7D6: FLdPr var_A0
  loc_A7A7D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A7DE: FLdPr var_B4
  loc_A7A7E1:  = Me.Value
  loc_A7A7E6: FLdRfVar var_C4
  loc_A7A7E9: ConcatVar var_F8
  loc_A7A7ED: LitVarStr var_108, " AND ch.NumeOrpa = "
  loc_A7A7F2: ConcatVar var_118
  loc_A7A7F6: FLdRfVar var_140
  loc_A7A7F9: FLdRfVar var_130
  loc_A7A7FC: LitVarStr var_12C, "NumeOrpa"
  loc_A7A801: PopAdLdVar
  loc_A7A802: FLdRfVar var_11C
  loc_A7A805: FLdPr Me
  loc_A7A808: MemLdPr RsFrm
  loc_A7A80B:  = Me.Fields
  loc_A7A810: FLdPr var_11C
  loc_A7A813: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A818: FLdPr var_130
  loc_A7A81B:  = Me.Value
  loc_A7A820: FLdRfVar var_140
  loc_A7A823: ConcatVar var_150
  loc_A7A827: LitVarStr var_160, ";"
  loc_A7A82C: ConcatVar var_170
  loc_A7A830: CStrVarVal UltimaFechaRemision
  loc_A7A834: Call EjecutarRsCls(from_stack_1v)
  loc_A7A839: FFreeStr var_8C = "": var_90 = ""
  loc_A7A842: FFreeAd var_A0 = "": var_B4 = "": var_11C = ""
  loc_A7A84D: FFreeVar var_E8 = "": var_C4 = "": var_F8 = "": var_118 = "": var_140 = "": var_150 = ""
  loc_A7A85E: FLdRfVar var_D8
  loc_A7A861: FLdPr Me
  loc_A7A864: MemLdPr global_56
  loc_A7A867:  = Me.RecordCount
  loc_A7A86C: ILdRf var_D8
  loc_A7A86F: LitI4 0
  loc_A7A874: GtI4
  loc_A7A875: BranchF loc_A7A8F5
  loc_A7A878: FLdRfVar var_C4
  loc_A7A87B: FLdRfVar var_B4
  loc_A7A87E: LitVarStr var_B0, "FeanCheq"
  loc_A7A883: PopAdLdVar
  loc_A7A884: FLdRfVar var_A0
  loc_A7A887: FLdPr Me
  loc_A7A88A: MemLdPr global_56
  loc_A7A88D:  = Me.Fields
  loc_A7A892: FLdPr var_A0
  loc_A7A895: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A89A: FLdPr var_B4
  loc_A7A89D:  = Me.Value
  loc_A7A8A2: FLdRfVar var_C4
  loc_A7A8A5: FnCDateVar
  loc_A7A8A7: ILdRf var_88
  loc_A7A8AA: CDateStr
  loc_A7A8AC: GtR4
  loc_A7A8AD: FFreeAd var_A0 = ""
  loc_A7A8B4: FFree1Var var_C4 = ""
  loc_A7A8B7: BranchF loc_A7A8F5
  loc_A7A8BA: FLdRfVar var_C4
  loc_A7A8BD: FLdRfVar var_B4
  loc_A7A8C0: LitVarStr var_B0, "FeanCheq"
  loc_A7A8C5: PopAdLdVar
  loc_A7A8C6: FLdRfVar var_A0
  loc_A7A8C9: FLdPr Me
  loc_A7A8CC: MemLdPr global_56
  loc_A7A8CF:  = Me.Fields
  loc_A7A8D4: FLdPr var_A0
  loc_A7A8D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A7A8DC: FLdPr var_B4
  loc_A7A8DF:  = Me.Value
  loc_A7A8E4: FLdRfVar var_C4
  loc_A7A8E7: CStrVarTmp
  loc_A7A8E8: FStStr var_88
  loc_A7A8EB: FFreeAd var_A0 = ""
  loc_A7A8F2: FFree1Var var_C4 = ""
  loc_A7A8F5: ExitProcCbHresult
End Function

Public Function UltimaFechaAnulacion(Peri, Op) 'A6ABE0
  'Data Table: 4371F4
  loc_A6A884: ZeroRetVal
  loc_A6A886: ImpAdLdFPR8 MemVar_C3D054
  loc_A6A889: CStrDate
  loc_A6A88B: FStStr var_88
  loc_A6A88E: LitStr "SELECT FeproPaco"
  loc_A6A891: LitStr " FROM paraconta"
  loc_A6A894: ConcatStr
  loc_A6A895: FStStrNoPop var_8C
  loc_A6A898: LitStr " WHERE PeriInfo = "
  loc_A6A89B: ConcatStr
  loc_A6A89C: FStStrNoPop var_90
  loc_A6A89F: ILdI2 Peri
  loc_A6A8A2: CStrUI1
  loc_A6A8A4: FStStrNoPop UltimaFechaAnulacion
  loc_A6A8A7: ConcatStr
  loc_A6A8A8: FStStrNoPop var_98
  loc_A6A8AB: LitStr ";"
  loc_A6A8AE: ConcatStr
  loc_A6A8AF: FStStrNoPop var_9C
  loc_A6A8B2: Call EjecutarRsCls(from_stack_1v)
  loc_A6A8B7: FFreeStr var_8C = "": var_90 = "": UltimaFechaAnulacion = "": var_98 = ""
  loc_A6A8C4: FLdRfVar var_B4
  loc_A6A8C7: LitVarStr var_B0, "FeproPaco"
  loc_A6A8CC: PopAdLdVar
  loc_A6A8CD: FLdRfVar var_A0
  loc_A6A8D0: FLdPr Me
  loc_A6A8D3: MemLdPr global_56
  loc_A6A8D6:  = Me.Fields
  loc_A6A8DB: FLdPr var_A0
  loc_A6A8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_A6A8E3: FLdZeroAd var_B4
  loc_A6A8E6: CVarAd
  loc_A6A8EA: ImpAdCallI2 IsDate()
  loc_A6A8EF: FFree1Ad var_A0
  loc_A6A8F2: FFree1Var var_C4 = ""
  loc_A6A8F5: BranchF loc_A6A942
  loc_A6A8F8: FLdRfVar var_C4
  loc_A6A8FB: FLdRfVar var_B4
  loc_A6A8FE: LitVarStr var_B0, "FeproPaco"
  loc_A6A903: PopAdLdVar
  loc_A6A904: FLdRfVar var_A0
  loc_A6A907: FLdPr Me
  loc_A6A90A: MemLdPr global_56
  loc_A6A90D:  = Me.Fields
  loc_A6A912: FLdPr var_A0
  loc_A6A915: from_stack_2 = Me.Item(from_stack_1)
  loc_A6A91A: FLdPr var_B4
  loc_A6A91D:  = Me.Value
  loc_A6A922: FLdRfVar var_C4
  loc_A6A925: CStrVarTmp
  loc_A6A926: FStStr var_88
  loc_A6A929: FFreeAd var_A0 = ""
  loc_A6A930: FFree1Var var_C4 = ""
  loc_A6A933: ILdRf var_88
  loc_A6A936: CDateStr
  loc_A6A938: LitI2_Byte 1
  loc_A6A93A: CR8I2
  loc_A6A93B: AddR8
  loc_A6A93C: CDateR8
  loc_A6A93D: CStrDate
  loc_A6A93F: FStStr var_88
  loc_A6A942: LitStr "SELECT FechOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A6A945: ILdI2 Peri
  loc_A6A948: CStrUI1
  loc_A6A94A: FStStrNoPop var_8C
  loc_A6A94D: ConcatStr
  loc_A6A94E: FStStrNoPop var_90
  loc_A6A951: LitStr " AND NumeOrpa = "
  loc_A6A954: ConcatStr
  loc_A6A955: FStStrNoPop UltimaFechaAnulacion
  loc_A6A958: ILdI4 Op
  loc_A6A95B: CStrI4
  loc_A6A95D: FStStrNoPop var_98
  loc_A6A960: ConcatStr
  loc_A6A961: FStStrNoPop var_9C
  loc_A6A964: LitStr ";"
  loc_A6A967: ConcatStr
  loc_A6A968: FStStrNoPop var_C8
  loc_A6A96B: Call EjecutarRsCls(from_stack_1v)
  loc_A6A970: FFreeStr var_8C = "": var_90 = "": UltimaFechaAnulacion = "": var_98 = "": var_9C = ""
  loc_A6A97F: FLdRfVar var_C4
  loc_A6A982: FLdRfVar var_B4
  loc_A6A985: LitVarStr var_B0, "FechOrpa"
  loc_A6A98A: PopAdLdVar
  loc_A6A98B: FLdRfVar var_A0
  loc_A6A98E: FLdPr Me
  loc_A6A991: MemLdPr global_56
  loc_A6A994:  = Me.Fields
  loc_A6A999: FLdPr var_A0
  loc_A6A99C: from_stack_2 = Me.Item(from_stack_1)
  loc_A6A9A1: FLdPr var_B4
  loc_A6A9A4:  = Me.Value
  loc_A6A9A9: FLdRfVar var_C4
  loc_A6A9AC: FnCDateVar
  loc_A6A9AE: ILdRf var_88
  loc_A6A9B1: CDateStr
  loc_A6A9B3: GtR4
  loc_A6A9B4: FFreeAd var_A0 = ""
  loc_A6A9BB: FFree1Var var_C4 = ""
  loc_A6A9BE: BranchF loc_A6A9FC
  loc_A6A9C1: FLdRfVar var_C4
  loc_A6A9C4: FLdRfVar var_B4
  loc_A6A9C7: LitVarStr var_B0, "FechOrpa"
  loc_A6A9CC: PopAdLdVar
  loc_A6A9CD: FLdRfVar var_A0
  loc_A6A9D0: FLdPr Me
  loc_A6A9D3: MemLdPr global_56
  loc_A6A9D6:  = Me.Fields
  loc_A6A9DB: FLdPr var_A0
  loc_A6A9DE: from_stack_2 = Me.Item(from_stack_1)
  loc_A6A9E3: FLdPr var_B4
  loc_A6A9E6:  = Me.Value
  loc_A6A9EB: FLdRfVar var_C4
  loc_A6A9EE: CStrVarTmp
  loc_A6A9EF: FStStr var_88
  loc_A6A9F2: FFreeAd var_A0 = ""
  loc_A6A9F9: FFree1Var var_C4 = ""
  loc_A6A9FC: LitStr "SELECT IFNULL(Max(FechCheq),FechOrpa) FechCheq"
  loc_A6A9FF: LitStr " FROM cheque ch"
  loc_A6AA02: ConcatStr
  loc_A6AA03: FStStrNoPop var_8C
  loc_A6AA06: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ch.PeriInfo AND o.NumeOrpa = ch.NumeOrpa"
  loc_A6AA09: ConcatStr
  loc_A6AA0A: FStStrNoPop var_90
  loc_A6AA0D: LitStr " WHERE ch.PeriInfo = "
  loc_A6AA10: ConcatStr
  loc_A6AA11: FStStrNoPop UltimaFechaAnulacion
  loc_A6AA14: ILdI2 Peri
  loc_A6AA17: CStrUI1
  loc_A6AA19: FStStrNoPop var_98
  loc_A6AA1C: ConcatStr
  loc_A6AA1D: FStStrNoPop var_9C
  loc_A6AA20: LitStr " AND ch.NumeOrpa = "
  loc_A6AA23: ConcatStr
  loc_A6AA24: FStStrNoPop var_C8
  loc_A6AA27: ILdI4 Op
  loc_A6AA2A: CStrI4
  loc_A6AA2C: FStStrNoPop var_CC
  loc_A6AA2F: ConcatStr
  loc_A6AA30: FStStrNoPop var_D0
  loc_A6AA33: LitStr ";"
  loc_A6AA36: ConcatStr
  loc_A6AA37: FStStrNoPop var_D4
  loc_A6AA3A: Call EjecutarRsCls(from_stack_1v)
  loc_A6AA3F: FFreeStr var_8C = "": var_90 = "": UltimaFechaAnulacion = "": var_98 = "": var_9C = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A6AA54: FLdRfVar var_D8
  loc_A6AA57: FLdPr Me
  loc_A6AA5A: MemLdPr global_56
  loc_A6AA5D:  = Me.RecordCount
  loc_A6AA62: ILdRf var_D8
  loc_A6AA65: LitI4 0
  loc_A6AA6A: GtI4
  loc_A6AA6B: BranchF loc_A6AAEB
  loc_A6AA6E: FLdRfVar var_C4
  loc_A6AA71: FLdRfVar var_B4
  loc_A6AA74: LitVarStr var_B0, "FechCheq"
  loc_A6AA79: PopAdLdVar
  loc_A6AA7A: FLdRfVar var_A0
  loc_A6AA7D: FLdPr Me
  loc_A6AA80: MemLdPr global_56
  loc_A6AA83:  = Me.Fields
  loc_A6AA88: FLdPr var_A0
  loc_A6AA8B: from_stack_2 = Me.Item(from_stack_1)
  loc_A6AA90: FLdPr var_B4
  loc_A6AA93:  = Me.Value
  loc_A6AA98: FLdRfVar var_C4
  loc_A6AA9B: FnCDateVar
  loc_A6AA9D: ILdRf var_88
  loc_A6AAA0: CDateStr
  loc_A6AAA2: GtR4
  loc_A6AAA3: FFreeAd var_A0 = ""
  loc_A6AAAA: FFree1Var var_C4 = ""
  loc_A6AAAD: BranchF loc_A6AAEB
  loc_A6AAB0: FLdRfVar var_C4
  loc_A6AAB3: FLdRfVar var_B4
  loc_A6AAB6: LitVarStr var_B0, "FechCheq"
  loc_A6AABB: PopAdLdVar
  loc_A6AABC: FLdRfVar var_A0
  loc_A6AABF: FLdPr Me
  loc_A6AAC2: MemLdPr global_56
  loc_A6AAC5:  = Me.Fields
  loc_A6AACA: FLdPr var_A0
  loc_A6AACD: from_stack_2 = Me.Item(from_stack_1)
  loc_A6AAD2: FLdPr var_B4
  loc_A6AAD5:  = Me.Value
  loc_A6AADA: FLdRfVar var_C4
  loc_A6AADD: CStrVarTmp
  loc_A6AADE: FStStr var_88
  loc_A6AAE1: FFreeAd var_A0 = ""
  loc_A6AAE8: FFree1Var var_C4 = ""
  loc_A6AAEB: LitStr "SELECT IFNULL(Max(FeanCheq),FechOrpa) FeanCheq"
  loc_A6AAEE: LitStr " FROM cheque ch"
  loc_A6AAF1: ConcatStr
  loc_A6AAF2: FStStrNoPop var_8C
  loc_A6AAF5: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ch.PeriInfo AND o.NumeOrpa = ch.NumeOrpa"
  loc_A6AAF8: ConcatStr
  loc_A6AAF9: FStStrNoPop var_90
  loc_A6AAFC: LitStr " WHERE ch.PeriInfo = "
  loc_A6AAFF: ConcatStr
  loc_A6AB00: FStStrNoPop UltimaFechaAnulacion
  loc_A6AB03: ILdI2 Peri
  loc_A6AB06: CStrUI1
  loc_A6AB08: FStStrNoPop var_98
  loc_A6AB0B: ConcatStr
  loc_A6AB0C: FStStrNoPop var_9C
  loc_A6AB0F: LitStr " AND ch.NumeOrpa = "
  loc_A6AB12: ConcatStr
  loc_A6AB13: FStStrNoPop var_C8
  loc_A6AB16: ILdI4 Op
  loc_A6AB19: CStrI4
  loc_A6AB1B: FStStrNoPop var_CC
  loc_A6AB1E: ConcatStr
  loc_A6AB1F: FStStrNoPop var_D0
  loc_A6AB22: LitStr ";"
  loc_A6AB25: ConcatStr
  loc_A6AB26: FStStrNoPop var_D4
  loc_A6AB29: Call EjecutarRsCls(from_stack_1v)
  loc_A6AB2E: FFreeStr var_8C = "": var_90 = "": UltimaFechaAnulacion = "": var_98 = "": var_9C = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A6AB43: FLdRfVar var_D8
  loc_A6AB46: FLdPr Me
  loc_A6AB49: MemLdPr global_56
  loc_A6AB4C:  = Me.RecordCount
  loc_A6AB51: ILdRf var_D8
  loc_A6AB54: LitI4 0
  loc_A6AB59: GtI4
  loc_A6AB5A: BranchF loc_A6ABDA
  loc_A6AB5D: FLdRfVar var_C4
  loc_A6AB60: FLdRfVar var_B4
  loc_A6AB63: LitVarStr var_B0, "FeanCheq"
  loc_A6AB68: PopAdLdVar
  loc_A6AB69: FLdRfVar var_A0
  loc_A6AB6C: FLdPr Me
  loc_A6AB6F: MemLdPr global_56
  loc_A6AB72:  = Me.Fields
  loc_A6AB77: FLdPr var_A0
  loc_A6AB7A: from_stack_2 = Me.Item(from_stack_1)
  loc_A6AB7F: FLdPr var_B4
  loc_A6AB82:  = Me.Value
  loc_A6AB87: FLdRfVar var_C4
  loc_A6AB8A: FnCDateVar
  loc_A6AB8C: ILdRf var_88
  loc_A6AB8F: CDateStr
  loc_A6AB91: GtR4
  loc_A6AB92: FFreeAd var_A0 = ""
  loc_A6AB99: FFree1Var var_C4 = ""
  loc_A6AB9C: BranchF loc_A6ABDA
  loc_A6AB9F: FLdRfVar var_C4
  loc_A6ABA2: FLdRfVar var_B4
  loc_A6ABA5: LitVarStr var_B0, "FeanCheq"
  loc_A6ABAA: PopAdLdVar
  loc_A6ABAB: FLdRfVar var_A0
  loc_A6ABAE: FLdPr Me
  loc_A6ABB1: MemLdPr global_56
  loc_A6ABB4:  = Me.Fields
  loc_A6ABB9: FLdPr var_A0
  loc_A6ABBC: from_stack_2 = Me.Item(from_stack_1)
  loc_A6ABC1: FLdPr var_B4
  loc_A6ABC4:  = Me.Value
  loc_A6ABC9: FLdRfVar var_C4
  loc_A6ABCC: CStrVarTmp
  loc_A6ABCD: FStStr var_88
  loc_A6ABD0: FFreeAd var_A0 = ""
  loc_A6ABD7: FFree1Var var_C4 = ""
  loc_A6ABDA: ExitProcCbHresult
End Function

Public Function UltimaFechaRetencion(PeriInfo, NumeOrpa) 'A65740
  'Data Table: 4371F4
  loc_A65420: ZeroRetVal
  loc_A65422: ImpAdLdFPR8 MemVar_C3D054
  loc_A65425: CStrDate
  loc_A65427: FStStr var_88
  loc_A6542A: LitStr "SELECT FedePaco"
  loc_A6542D: LitStr " FROM paraconta"
  loc_A65430: ConcatStr
  loc_A65431: FStStrNoPop var_8C
  loc_A65434: LitStr " WHERE PeriInfo = "
  loc_A65437: ConcatStr
  loc_A65438: FStStrNoPop var_90
  loc_A6543B: FLdI2 PeriInfo
  loc_A6543E: CStrUI1
  loc_A65440: FStStrNoPop UltimaFechaRetencion
  loc_A65443: ConcatStr
  loc_A65444: FStStrNoPop var_98
  loc_A65447: Call EjecutarRsCls(from_stack_1v)
  loc_A6544C: FFreeStr var_8C = "": var_90 = "": UltimaFechaRetencion = ""
  loc_A65457: FLdRfVar var_9C
  loc_A6545A: FLdPr Me
  loc_A6545D: MemLdPr global_56
  loc_A65460:  = Me.RecordCount
  loc_A65465: ILdRf var_9C
  loc_A65468: LitI4 0
  loc_A6546D: GtI4
  loc_A6546E: BranchF loc_A65522
  loc_A65471: FLdRfVar var_B4
  loc_A65474: LitVarStr var_B0, "FedePaco"
  loc_A65479: PopAdLdVar
  loc_A6547A: FLdRfVar var_A0
  loc_A6547D: FLdPr Me
  loc_A65480: MemLdPr global_56
  loc_A65483:  = Me.Fields
  loc_A65488: FLdPr var_A0
  loc_A6548B: from_stack_2 = Me.Item(from_stack_1)
  loc_A65490: FLdZeroAd var_B4
  loc_A65493: CVarAd
  loc_A65497: ImpAdCallI2 IsDate()
  loc_A6549C: FFree1Ad var_A0
  loc_A6549F: FFree1Var var_C4 = ""
  loc_A654A2: BranchF loc_A65522
  loc_A654A5: FLdRfVar var_C4
  loc_A654A8: FLdRfVar var_B4
  loc_A654AB: LitVarStr var_B0, "FedePaco"
  loc_A654B0: PopAdLdVar
  loc_A654B1: FLdRfVar var_A0
  loc_A654B4: FLdPr Me
  loc_A654B7: MemLdPr global_56
  loc_A654BA:  = Me.Fields
  loc_A654BF: FLdPr var_A0
  loc_A654C2: from_stack_2 = Me.Item(from_stack_1)
  loc_A654C7: FLdPr var_B4
  loc_A654CA:  = Me.Value
  loc_A654CF: FLdRfVar var_C4
  loc_A654D2: FnCDateVar
  loc_A654D4: ILdRf var_88
  loc_A654D7: CDateStr
  loc_A654D9: GtR4
  loc_A654DA: FFreeAd var_A0 = ""
  loc_A654E1: FFree1Var var_C4 = ""
  loc_A654E4: BranchF loc_A65522
  loc_A654E7: FLdRfVar var_C4
  loc_A654EA: FLdRfVar var_B4
  loc_A654ED: LitVarStr var_B0, "FedePaco"
  loc_A654F2: PopAdLdVar
  loc_A654F3: FLdRfVar var_A0
  loc_A654F6: FLdPr Me
  loc_A654F9: MemLdPr global_56
  loc_A654FC:  = Me.Fields
  loc_A65501: FLdPr var_A0
  loc_A65504: from_stack_2 = Me.Item(from_stack_1)
  loc_A65509: FLdPr var_B4
  loc_A6550C:  = Me.Value
  loc_A65511: FLdRfVar var_C4
  loc_A65514: CStrVarTmp
  loc_A65515: FStStr var_88
  loc_A65518: FFreeAd var_A0 = ""
  loc_A6551F: FFree1Var var_C4 = ""
  loc_A65522: LitStr "SELECT lqn.*"
  loc_A65525: LitStr " FROM ordenpago o"
  loc_A65528: ConcatStr
  loc_A65529: FStStrNoPop var_8C
  loc_A6552C: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = o.PeriInfo AND lqn.ExpeImpu = o.ExpeImpu AND lqn.NumeLiqu = o.NumeLiqu"
  loc_A6552F: ConcatStr
  loc_A65530: FStStrNoPop var_90
  loc_A65533: LitStr " AND lqn.CodiRete > 0"
  loc_A65536: ConcatStr
  loc_A65537: FStStrNoPop UltimaFechaRetencion
  loc_A6553A: LitStr " WHERE o.PeriInfo = "
  loc_A6553D: ConcatStr
  loc_A6553E: FStStrNoPop var_98
  loc_A65541: FLdI2 PeriInfo
  loc_A65544: CStrUI1
  loc_A65546: FStStrNoPop var_C8
  loc_A65549: ConcatStr
  loc_A6554A: FStStrNoPop var_CC
  loc_A6554D: LitStr vbNullString
  loc_A65550: ConcatStr
  loc_A65551: FStStrNoPop var_D0
  loc_A65554: LitStr " AND o.NumeOrpa = "
  loc_A65557: ConcatStr
  loc_A65558: FStStrNoPop var_D4
  loc_A6555B: FLdI2 NumeOrpa
  loc_A6555E: CStrUI1
  loc_A65560: FStStrNoPop var_D8
  loc_A65563: ConcatStr
  loc_A65564: FStStrNoPop var_DC
  loc_A65567: LitStr " GROUP BY lqn.CodiRete;"
  loc_A6556A: ConcatStr
  loc_A6556B: FStStrNoPop var_E0
  loc_A6556E: Call EjecutarRsCls(from_stack_1v)
  loc_A65573: FFreeStr var_8C = "": var_90 = "": UltimaFechaRetencion = "": var_98 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A6558C: FLdRfVar var_9C
  loc_A6558F: FLdPr Me
  loc_A65592: MemLdPr global_56
  loc_A65595:  = Me.RecordCount
  loc_A6559A: ILdRf var_9C
  loc_A6559D: LitI4 0
  loc_A655A2: GtI4
  loc_A655A3: BranchF loc_A65737
  loc_A655A6: FLdPr Me
  loc_A655A9: MemLdPr global_56
  loc_A655AC: Me.MoveFirst
  loc_A655B1: FLdRfVar var_E2
  loc_A655B4: FLdPr Me
  loc_A655B7: MemLdPr global_56
  loc_A655BA:  = Me.EOF
  loc_A655BF: FLdI2 var_E2
  loc_A655C2: NotI4
  loc_A655C3: BranchF loc_A65737
  loc_A655C6: LitStr "SELECT r.FedeclaRete"
  loc_A655C9: LitStr " FROM retenciones r"
  loc_A655CC: ConcatStr
  loc_A655CD: FStStrNoPop var_8C
  loc_A655D0: LitStr " Where r.PeriInfo = "
  loc_A655D3: ConcatStr
  loc_A655D4: FStStrNoPop var_90
  loc_A655D7: FLdI2 PeriInfo
  loc_A655DA: CStrUI1
  loc_A655DC: FStStrNoPop UltimaFechaRetencion
  loc_A655DF: ConcatStr
  loc_A655E0: FStStrNoPop var_98
  loc_A655E3: LitStr vbNullString
  loc_A655E6: ConcatStr
  loc_A655E7: FStStrNoPop var_C8
  loc_A655EA: LitStr " AND r.CodiRete = "
  loc_A655ED: ConcatStr
  loc_A655EE: CVarStr var_F4
  loc_A655F1: FLdRfVar var_C4
  loc_A655F4: FLdRfVar var_B4
  loc_A655F7: LitVarStr var_B0, "CodiRete"
  loc_A655FC: PopAdLdVar
  loc_A655FD: FLdRfVar var_A0
  loc_A65600: FLdPr Me
  loc_A65603: MemLdPr global_56
  loc_A65606:  = Me.Fields
  loc_A6560B: FLdPr var_A0
  loc_A6560E: from_stack_2 = Me.Item(from_stack_1)
  loc_A65613: FLdPr var_B4
  loc_A65616:  = Me.Value
  loc_A6561B: FLdRfVar var_C4
  loc_A6561E: ConcatVar var_104
  loc_A65622: LitVarStr var_114, ";"
  loc_A65627: ConcatVar var_124
  loc_A6562B: CStrVarVal var_CC
  loc_A6562F: Call Proc_22_60_95A6D0()
  loc_A65634: FFreeStr var_8C = "": var_90 = "": UltimaFechaRetencion = "": var_98 = "": var_C8 = ""
  loc_A65643: FFreeAd var_A0 = ""
  loc_A6564A: FFreeVar var_F4 = "": var_C4 = "": var_104 = ""
  loc_A65655: FLdRfVar var_9C
  loc_A65658: FLdPr Me
  loc_A6565B: MemLdPr global_60
  loc_A6565E:  = Me.RecordCount
  loc_A65663: ILdRf var_9C
  loc_A65666: LitI4 0
  loc_A6566B: GtI4
  loc_A6566C: BranchF loc_A65720
  loc_A6566F: FLdRfVar var_B4
  loc_A65672: LitVarStr var_B0, "FedeclaRete"
  loc_A65677: PopAdLdVar
  loc_A65678: FLdRfVar var_A0
  loc_A6567B: FLdPr Me
  loc_A6567E: MemLdPr global_60
  loc_A65681:  = Me.Fields
  loc_A65686: FLdPr var_A0
  loc_A65689: from_stack_2 = Me.Item(from_stack_1)
  loc_A6568E: FLdZeroAd var_B4
  loc_A65691: CVarAd
  loc_A65695: ImpAdCallI2 IsDate()
  loc_A6569A: FFree1Ad var_A0
  loc_A6569D: FFree1Var var_C4 = ""
  loc_A656A0: BranchF loc_A65720
  loc_A656A3: FLdRfVar var_C4
  loc_A656A6: FLdRfVar var_B4
  loc_A656A9: LitVarStr var_B0, "FedeclaRete"
  loc_A656AE: PopAdLdVar
  loc_A656AF: FLdRfVar var_A0
  loc_A656B2: FLdPr Me
  loc_A656B5: MemLdPr global_60
  loc_A656B8:  = Me.Fields
  loc_A656BD: FLdPr var_A0
  loc_A656C0: from_stack_2 = Me.Item(from_stack_1)
  loc_A656C5: FLdPr var_B4
  loc_A656C8:  = Me.Value
  loc_A656CD: FLdRfVar var_C4
  loc_A656D0: FnCDateVar
  loc_A656D2: ILdRf var_88
  loc_A656D5: CDateStr
  loc_A656D7: GtR4
  loc_A656D8: FFreeAd var_A0 = ""
  loc_A656DF: FFree1Var var_C4 = ""
  loc_A656E2: BranchF loc_A65720
  loc_A656E5: FLdRfVar var_C4
  loc_A656E8: FLdRfVar var_B4
  loc_A656EB: LitVarStr var_B0, "FedeclaRete"
  loc_A656F0: PopAdLdVar
  loc_A656F1: FLdRfVar var_A0
  loc_A656F4: FLdPr Me
  loc_A656F7: MemLdPr global_60
  loc_A656FA:  = Me.Fields
  loc_A656FF: FLdPr var_A0
  loc_A65702: from_stack_2 = Me.Item(from_stack_1)
  loc_A65707: FLdPr var_B4
  loc_A6570A:  = Me.Value
  loc_A6570F: FLdRfVar var_C4
  loc_A65712: CStrVarTmp
  loc_A65713: FStStr var_88
  loc_A65716: FFreeAd var_A0 = ""
  loc_A6571D: FFree1Var var_C4 = ""
  loc_A65720: LitVar_Missing var_B0
  loc_A65723: PopAdLdVar
  loc_A65724: LitI4 1
  loc_A65729: FLdPr Me
  loc_A6572C: MemLdPr global_56
  loc_A6572F: Me.Move from_stack_1, from_stack_2
  loc_A65734: Branch loc_A655B1
  loc_A65737: ExitProcCbHresult
End Function

Private Function Proc_22_59_9746E8() '9746E8
  'Data Table: 4371F4
  loc_9746C4: LitStr "Primary"
  loc_9746C7: FLdPr Me
  loc_9746CA: LateIdLdVar var_94 DispID_4 0
  loc_9746D1: CastAdVar Me
  loc_9746D5: FStAdFunc var_98
  loc_9746D8: FLdPr var_98
  loc_9746E0: FFree1Ad var_98
  loc_9746E3: FFree1Var var_94 = ""
  loc_9746E6: ExitProcHresult
End Function

Private Function Proc_22_60_95A6D0(arg_C) '95A6D0
  'Data Table: 4371F4
  loc_95A6B8: ILdRf arg_C
  loc_95A6BB: FStStrCopy var_88
  loc_95A6BE: FLdPr Me
  loc_95A6C1: MemLdRfVar from_stack_1.global_60
  loc_95A6C4: ILdRf var_88
  loc_95A6C7: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95A6CC: ExitProcHresult
  loc_95A6CD: DOC
End Function

Private Function Proc_22_61_9502FC(arg_C) '9502FC
  'Data Table: 4371F4
  loc_9502E4: ILdI4 arg_C
  loc_9502E7: LitStr "Primary"
  loc_9502EA: EqStr
  loc_9502EC: BranchF loc_9502F9
  loc_9502EF: FLdPr Me
  loc_9502F2: MemLdStr RsFrm
  loc_9502F5: IStAd
  loc_9502F9: ExitProcHresult
  loc_9502FA: CastAd
End Function
