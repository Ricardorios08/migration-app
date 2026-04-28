VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliquidacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject

Private Type UDT_1_00557BC0
  bStruc(52) As Byte ' String fields: 5
End Type


Public Function RsFrmGet() '42DB00
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '42DB0F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '42DB1E
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E024
  'Data Table: 42D3EC
  loc_96DFFC: FLdRfVar var_88
  loc_96DFFF: FLdPr Me
  loc_96E002: MemLdPr RsFrm
  loc_96E005:  = Me.RecordCount
  loc_96E00A: ILdRf var_88
  loc_96E00D: LitI4 0
  loc_96E012: GtI4
  loc_96E013: BranchF loc_96E021
  loc_96E016: FLdPr Me
  loc_96E019: MemLdPr RsFrm
  loc_96E01C: Me.MoveFirst
  loc_96E021: ExitProcHresult
End Sub

Public Sub MoveLast() '96DFCC
  'Data Table: 42D3EC
  loc_96DFA4: FLdRfVar var_88
  loc_96DFA7: FLdPr Me
  loc_96DFAA: MemLdPr RsFrm
  loc_96DFAD:  = Me.RecordCount
  loc_96DFB2: ILdRf var_88
  loc_96DFB5: LitI4 0
  loc_96DFBA: GtI4
  loc_96DFBB: BranchF loc_96DFC9
  loc_96DFBE: FLdPr Me
  loc_96DFC1: MemLdPr RsFrm
  loc_96DFC4: Me.MoveLast
  loc_96DFC9: ExitProcHresult
End Sub

Public Sub MoveNext() '994640
  'Data Table: 42D3EC
  loc_9945E0: FLdRfVar var_86
  loc_9945E3: FLdPr Me
  loc_9945E6: MemLdPr RsFrm
  loc_9945E9:  = Me.EOF
  loc_9945EE: FLdI2 var_86
  loc_9945F1: NotI4
  loc_9945F2: BranchF loc_994600
  loc_9945F5: FLdPr Me
  loc_9945F8: MemLdPr RsFrm
  loc_9945FB: Me.MoveNext
  loc_994600: FLdRfVar var_86
  loc_994603: FLdPr Me
  loc_994606: MemLdPr RsFrm
  loc_994609:  = Me.EOF
  loc_99460E: FLdI2 var_86
  loc_994611: FLdRfVar var_8C
  loc_994614: FLdPr Me
  loc_994617: MemLdPr RsFrm
  loc_99461A:  = Me.RecordCount
  loc_99461F: ILdRf var_8C
  loc_994622: LitI4 0
  loc_994627: GtI4
  loc_994628: AndI4
  loc_994629: BranchF loc_99463C
  loc_99462C: ImpAdCallFPR4 Beep()
  loc_994631: FLdPr Me
  loc_994634: MemLdPr RsFrm
  loc_994637: Me.MoveLast
  loc_99463C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941AF8
  'Data Table: 42D3EC
  loc_941AEC: FLdPr Me
  loc_941AEF: MemLdPr RsFrm
  loc_941AF2: Me.MoveNext
  loc_941AF7: ExitProcHresult
End Sub

Public Sub Move(iValor) '948B00
  'Data Table: 42D3EC
  loc_948AEC: LitVar_Missing var_94
  loc_948AEF: PopAdLdVar
  loc_948AF0: ILdI2 iValor
  loc_948AF3: CI4UI1
  loc_948AF4: FLdPr Me
  loc_948AF7: MemLdPr RsFrm
  loc_948AFA: Me.Move from_stack_1, from_stack_2
  loc_948AFF: ExitProcHresult
End Sub

Public Sub MovePrevious() '9945B0
  'Data Table: 42D3EC
  loc_994550: FLdRfVar var_86
  loc_994553: FLdPr Me
  loc_994556: MemLdPr RsFrm
  loc_994559:  = Me.BOF
  loc_99455E: FLdI2 var_86
  loc_994561: NotI4
  loc_994562: BranchF loc_994570
  loc_994565: FLdPr Me
  loc_994568: MemLdPr RsFrm
  loc_99456B: Me.MovePrevious
  loc_994570: FLdRfVar var_86
  loc_994573: FLdPr Me
  loc_994576: MemLdPr RsFrm
  loc_994579:  = Me.BOF
  loc_99457E: FLdI2 var_86
  loc_994581: FLdRfVar var_8C
  loc_994584: FLdPr Me
  loc_994587: MemLdPr RsFrm
  loc_99458A:  = Me.RecordCount
  loc_99458F: ILdRf var_8C
  loc_994592: LitI4 0
  loc_994597: GtI4
  loc_994598: AndI4
  loc_994599: BranchF loc_9945AC
  loc_99459C: ImpAdCallFPR4 Beep()
  loc_9945A1: FLdPr Me
  loc_9945A4: MemLdPr RsFrm
  loc_9945A7: Me.MoveFirst
  loc_9945AC: ExitProcHresult
End Sub

Public Property Get EOF() '95DBF8
  'Data Table: 42D3EC
  loc_95DBDC: FLdRfVar var_88
  loc_95DBDF: FLdPr Me
  loc_95DBE2: MemLdPr RsFrm
  loc_95DBE5:  = Me.EOF
  loc_95DBEA: FLdI2 var_88
  loc_95DBED: FStI2 var_86
  loc_95DBF0: ExitProcCbHresult
  loc_95DBF6: MemLdFPR4 global_29701
End Sub

Public Property Get BOF() '95DB60
  'Data Table: 42D3EC
  loc_95DB44: FLdRfVar var_88
  loc_95DB47: FLdPr Me
  loc_95DB4A: MemLdPr RsFrm
  loc_95DB4D:  = Me.BOF
  loc_95DB52: FLdI2 var_88
  loc_95DB55: FStI2 var_86
  loc_95DB58: ExitProcCbHresult
  loc_95DB5E: FStVarCopyObj arg_7400
End Sub

Public Sub Sort(sOrden) '9444C4
  'Data Table: 42D3EC
  loc_9444B4: ILdI4 sOrden
  loc_9444B7: FLdPr Me
  loc_9444BA: MemLdPr RsFrm
  loc_9444BD: Me.Sort = from_stack_1
  loc_9444C2: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '968890
  'Data Table: 42D3EC
  loc_968870: LitVar_Missing var_94
  loc_968873: PopAdLdVar
  loc_968874: LitI4 1
  loc_968879: LitI4 0
  loc_96887E: ILdI4 sCriterio
  loc_968881: FLdPr Me
  loc_968884: MemLdPr RsFrm
  loc_968887: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96888C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '948B44
  'Data Table: 42D3EC
  loc_948B30: ILdI4 sCriterio
  loc_948B33: CVarStr var_94
  loc_948B36: PopAdLdVar
  loc_948B37: FLdPr Me
  loc_948B3A: MemLdPr RsFrm
  loc_948B3D: Me.Filter = from_stack_1
  loc_948B42: ExitProcHresult
  loc_948B43: ExitProcR4
End Sub

Public Property Get AbsolutePosition() '95D998
  'Data Table: 42D3EC
  loc_95D97C: FLdRfVar var_8C
  loc_95D97F: FLdPr Me
  loc_95D982: MemLdPr RsFrm
  loc_95D985:  = Me.AbsolutePosition
  loc_95D98A: ILdRf var_8C
  loc_95D98D: FStR4 var_88
  loc_95D990: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '95D900
  'Data Table: 42D3EC
  loc_95D8E4: FLdRfVar var_8C
  loc_95D8E7: FLdPr Me
  loc_95D8EA: MemLdPr RsFrm
  loc_95D8ED:  = Me.RecordCount
  loc_95D8F2: ILdRf var_8C
  loc_95D8F5: FStR4 var_88
  loc_95D8F8: ExitProcCbHresult
End Sub

Public Sub Encontrar(ExpeImpu, NumeLiqu) '994510
  'Data Table: 42D3EC
  loc_9944C0: ILdRf ExpeImpu
  loc_9944C3: FStStrCopy var_88
  loc_9944C6: Call Requery()
  loc_9944CB: LitStr "ExpeImpu = '"
  loc_9944CE: ILdRf var_88
  loc_9944D1: ConcatStr
  loc_9944D2: FStStrNoPop var_8C
  loc_9944D5: LitStr "'"
  loc_9944D8: ConcatStr
  loc_9944D9: PopTmpLdAdStr
  loc_9944DD: Call Find(from_stack_1v)
  loc_9944E2: FFreeStr var_8C = ""
  loc_9944E9: LitStr "NumeLiqu = '"
  loc_9944EC: FLdI2 NumeLiqu
  loc_9944EF: CStrUI1
  loc_9944F1: FStStrNoPop var_8C
  loc_9944F4: ConcatStr
  loc_9944F5: FStStrNoPop var_90
  loc_9944F8: LitStr "'"
  loc_9944FB: ConcatStr
  loc_9944FC: PopTmpLdAdStr
  loc_994500: Call Find(from_stack_1v)
  loc_994505: FFreeStr var_8C = "": var_90 = ""
  loc_99450E: ExitProcHresult
End Sub

Public Function AddNew(ExpeImpu, FechLiqu, DetaLiqu, TipoLiqu, NombreForm, FlexDevengado) 'C2A330
  'Data Table: 42D3EC
  loc_C2206C: ILdRf ExpeImpu
  loc_C2206F: FStStrCopy var_8C
  loc_C22072: ILdRf FechLiqu
  loc_C22075: FStStrCopy var_90
  loc_C22078: ILdRf DetaLiqu
  loc_C2207B: FStStrCopy AddNew
  loc_C2207E: ILdRf TipoLiqu
  loc_C22081: FStStrCopy var_98
  loc_C22084: ILdRf NombreForm
  loc_C22087: FStStrCopy var_9C
  loc_C2208A: LitStr "START TRANSACTION;"
  loc_C2208D: FStStrCopy var_A0
  loc_C22090: OnErrorGoto loc_C2A30E
  loc_C22093: ILdRf var_A0
  loc_C22096: LitStr "SELECT @liqu:=IFNULL(Max(NumeLiqu),0)+1 NumeLiqu FROM liquidacion WHERE ExpeImpu = '"
  loc_C22099: ConcatStr
  loc_C2209A: FStStrNoPop var_114
  loc_C2209D: ILdRf var_8C
  loc_C220A0: ConcatStr
  loc_C220A1: FStStrNoPop var_118
  loc_C220A4: LitStr "' LIMIT 1;"
  loc_C220A7: ConcatStr
  loc_C220A8: FStStr var_A0
  loc_C220AB: FFreeStr var_114 = ""
  loc_C220B2: ILdRf var_98
  loc_C220B5: LitStr "Devengado"
  loc_C220B8: EqStr
  loc_C220BA: BranchF loc_C22540
  loc_C220BD: ILdRf var_A0
  loc_C220C0: LitStr "INSERT INTO liquidacion (ExpeImpu,NumeLiqu,FechLiqu,DetaLiqu,PeriInfo,TipoLiqu,AltaUsua)"
  loc_C220C3: ConcatStr
  loc_C220C4: FStStrNoPop var_114
  loc_C220C7: LitStr " VALUES ('"
  loc_C220CA: ConcatStr
  loc_C220CB: FStStrNoPop var_118
  loc_C220CE: ILdRf var_8C
  loc_C220D1: ConcatStr
  loc_C220D2: FStStrNoPop var_11C
  loc_C220D5: LitStr "',@liqu,"
  loc_C220D8: ConcatStr
  loc_C220D9: FStStrNoPop var_150
  loc_C220DC: LitI4 1
  loc_C220E1: LitI4 1
  loc_C220E6: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C220EB: FStVarCopyObj var_14C
  loc_C220EE: FLdRfVar var_14C
  loc_C220F1: FLdRfVar var_90
  loc_C220F4: CVarRef
  loc_C220F9: ImpAdCallI2 Format$(, )
  loc_C220FE: FStStrNoPop var_154
  loc_C22101: ConcatStr
  loc_C22102: FStStrNoPop var_158
  loc_C22105: LitStr ",'"
  loc_C22108: ConcatStr
  loc_C22109: FStStrNoPop var_17C
  loc_C2210C: LitVarI2 var_178, 500
  loc_C22111: LitI4 1
  loc_C22116: ILdRf AddNew
  loc_C22119: ImpAdCallI2 Mid$(, , )
  loc_C2211E: FStStrNoPop var_180
  loc_C22121: ConcatStr
  loc_C22122: FStStrNoPop var_184
  loc_C22125: LitStr "',"
  loc_C22128: ConcatStr
  loc_C22129: FStStrNoPop var_188
  loc_C2212C: ImpAdLdI2 MemVar_C3D064
  loc_C2212F: CStrUI1
  loc_C22131: FStStrNoPop var_18C
  loc_C22134: ConcatStr
  loc_C22135: FStStrNoPop var_190
  loc_C22138: LitStr ",1,@sUsuario);"
  loc_C2213B: ConcatStr
  loc_C2213C: FStStr var_A0
  loc_C2213F: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_C2215A: FFreeVar var_14C = ""
  loc_C22161: LitI2_Byte 1
  loc_C22163: FLdRfVar var_A2
  loc_C22166: ILdPr
  loc_C22169: LateIdLdVar var_14C DispID_4 0
  loc_C22170: CI4Var
  loc_C22172: LitI4 1
  loc_C22177: SubI4
  loc_C22178: CI2I4
  loc_C22179: FFree1Var var_14C = ""
  loc_C2217C: ForI2 var_194
  loc_C22182: FLdI2 var_A2
  loc_C22185: CI4UI1
  loc_C22186: CVarI4
  loc_C2218A: PopAdLdVar
  loc_C2218B: LitVarI4
  loc_C22193: PopAdLdVar
  loc_C22194: ILdPr
  loc_C22197: LateIdCallLdVar
  loc_C221A1: CStrVarTmp
  loc_C221A2: FStStrNoPop var_114
  loc_C221A5: LitStr "Si"
  loc_C221A8: EqStr
  loc_C221AA: FFree1Str var_114
  loc_C221AD: FFree1Var var_14C = ""
  loc_C221B0: BranchF loc_C22535
  loc_C221B3: FLdI2 var_A2
  loc_C221B6: CI4UI1
  loc_C221B7: CVarI4
  loc_C221BB: PopAdLdVar
  loc_C221BC: LitVarI4
  loc_C221C4: PopAdLdVar
  loc_C221C5: ILdPr
  loc_C221C8: LateIdCallLdVar
  loc_C221D2: PopAd
  loc_C221D4: FLdI2 var_A2
  loc_C221D7: CI4UI1
  loc_C221D8: CVarI4
  loc_C221DC: PopAdLdVar
  loc_C221DD: LitVarI4
  loc_C221E5: PopAdLdVar
  loc_C221E6: ILdPr
  loc_C221E9: LateIdCallLdVar
  loc_C221F3: PopAd
  loc_C221F5: ILdRf var_A0
  loc_C221F8: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_C221FB: ConcatStr
  loc_C221FC: FStStrNoPop var_114
  loc_C221FF: ImpAdLdI2 MemVar_C3D064
  loc_C22202: CStrUI1
  loc_C22204: FStStrNoPop var_118
  loc_C22207: ConcatStr
  loc_C22208: FStStrNoPop var_11C
  loc_C2220B: LitStr "; "
  loc_C2220E: ConcatStr
  loc_C2220F: FStStrNoPop var_150
  loc_C22212: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_C22215: ConcatStr
  loc_C22216: FStStrNoPop var_154
  loc_C22219: LitStr " SELECT tbl.PeriInfo, @idimpu:=@idimpu+1 IdImpu, tbl.CodiPart, tbl.CodiOrga, tbl.CodiUnga, tbl.CodiInsu, tbl.CodiFifu, "
  loc_C2221C: ConcatStr
  loc_C2221D: FStStrNoPop var_158
  loc_C22220: LitI4 1
  loc_C22225: LitI4 1
  loc_C2222A: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C2222F: FStVarCopyObj var_14C
  loc_C22232: FLdRfVar var_14C
  loc_C22235: FLdRfVar var_90
  loc_C22238: CVarRef
  loc_C2223D: ImpAdCallI2 Format$(, )
  loc_C22242: FStStrNoPop var_17C
  loc_C22245: ConcatStr
  loc_C22246: FStStrNoPop var_180
  loc_C22249: LitStr ", tbl.ExorImpu, tbl.ExpeImpu, @liqu, 1 CantImpu, "
  loc_C2224C: ConcatStr
  loc_C2224D: FStStrNoPop var_18C
  loc_C22250: LitI4 0
  loc_C22255: LitI4 -1
  loc_C2225A: LitI4 1
  loc_C2225F: LitStr "."
  loc_C22262: LitStr ","
  loc_C22265: FLdRfVar var_178
  loc_C22268: CStrVarTmp
  loc_C22269: FStStrNoPop var_184
  loc_C2226C: CR8Str
  loc_C2226E: CStrR8
  loc_C22270: FStStrNoPop var_188
  loc_C22273: ImpAdCallI2 Replace(, , , , , )
  loc_C22278: FStStrNoPop var_190
  loc_C2227B: ConcatStr
  loc_C2227C: FStStrNoPop var_1C8
  loc_C2227F: LitStr ", "
  loc_C22282: ConcatStr
  loc_C22283: FStStrNoPop var_224
  loc_C22286: LitI4 0
  loc_C2228B: LitI4 -1
  loc_C22290: LitI4 1
  loc_C22295: LitStr "."
  loc_C22298: LitStr ","
  loc_C2229B: FLdRfVar var_218
  loc_C2229E: CStrVarTmp
  loc_C2229F: FStStrNoPop var_21C
  loc_C222A2: CR8Str
  loc_C222A4: CStrR8
  loc_C222A6: FStStrNoPop var_220
  loc_C222A9: ImpAdCallI2 Replace(, , , , , )
  loc_C222AE: FStStrNoPop var_228
  loc_C222B1: ConcatStr
  loc_C222B2: FStStrNoPop var_22C
  loc_C222B5: LitStr ", DetaImpu, tbl.CucuPers, tbl.CodiNope, tbl.Item, tbl.Altern, tbl.CodiOrco, tbl.CodiRece, tbl.NumeFact, tbl.FefaDeve, '"
  loc_C222B8: ConcatStr
  loc_C222B9: FStStrNoPop var_230
  loc_C222BC: ImpAdLdI4 MemVar_C3D03C
  loc_C222BF: ConcatStr
  loc_C222C0: FStStrNoPop var_234
  loc_C222C3: LitStr "'"
  loc_C222C6: ConcatStr
  loc_C222C7: FStStrNoPop var_238
  loc_C222CA: LitStr " FROM ("
  loc_C222CD: ConcatStr
  loc_C222CE: FStStrNoPop var_23C
  loc_C222D1: LitStr " SELECT i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiUnga, i.CodiInsu, i.CodiFifu, i.ExorImpu, i.ExpeImpu, i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, i.CodiRece, i.NumeFact, i.FefaDeve, SUM(ii.DeveImpu-ii.LiquImpu) SaldDeve"
  loc_C222D4: ConcatStr
  loc_C222D5: FStStrNoPop var_240
  loc_C222D8: LitStr ", i.DetaImpu"
  loc_C222DB: ConcatStr
  loc_C222DC: FStStrNoPop var_244
  loc_C222DF: LitStr " FROM imputacion i"
  loc_C222E2: ConcatStr
  loc_C222E3: FStStrNoPop var_248
  loc_C222E6: LitStr " INNER JOIN imputacion ii ON ii.PeriInfo = i.PeriInfo AND ii.CodiPart = i.CodiPart AND ii.CodiOrga = i.CodiOrga AND ii.CodiFifu = i.CodiFifu AND ii.CodiInsu = i.CodiInsu AND ii.CodiUnga = i.CodiUnga AND ii.ExorImpu = i.ExorImpu AND ii.ExpeImpu = i.ExpeImpu AND ii.CucuPers = i.CucuPers AND ii.CodiNope = i.CodiNope AND ii.Item = i.Item AND ii.Altern = i.Altern AND ii.CodiOrco = i.CodiOrco /*AND ii.CodiRece = i.CodiRece*/ AND ii.NumeFact = i.NumeFact"
  loc_C222E9: ConcatStr
  loc_C222EA: FStStrNoPop var_24C
  loc_C222ED: LitStr " WHERE i.PeriInfo = "
  loc_C222F0: ConcatStr
  loc_C222F1: FStStrNoPop var_250
  loc_C222F4: ImpAdLdI2 MemVar_C3D064
  loc_C222F7: CStrUI1
  loc_C222F9: FStStrNoPop var_254
  loc_C222FC: ConcatStr
  loc_C222FD: FStStrNoPop var_258
  loc_C22300: LitStr " AND i.IdImpu = "
  loc_C22303: ConcatStr
  loc_C22304: FStStrNoPop var_2B0
  loc_C22307: FLdI2 var_A2
  loc_C2230A: CI4UI1
  loc_C2230B: CVarI4
  loc_C2230F: PopAdLdVar
  loc_C22310: LitVarI4
  loc_C22318: PopAdLdVar
  loc_C22319: ILdPr
  loc_C2231C: LateIdCallLdVar
  loc_C22326: CStrVarTmp
  loc_C22327: FStStrNoPop var_2AC
  loc_C2232A: CI4Str
  loc_C2232B: CStrI4
  loc_C2232D: FStStrNoPop var_2B4
  loc_C22330: ConcatStr
  loc_C22331: FStStrNoPop var_2B8
  loc_C22334: LitStr " GROUP BY i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga, i.ExorImpu, i.ExpeImpu, i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, i.CodiRece, i.NumeFact"
  loc_C22337: ConcatStr
  loc_C22338: FStStrNoPop var_2BC
  loc_C2233B: LitStr " HAVING SaldDeve > 0"
  loc_C2233E: ConcatStr
  loc_C2233F: FStStrNoPop var_2C0
  loc_C22342: LitStr " ) AS tbl;"
  loc_C22345: ConcatStr
  loc_C22346: FStStr var_A0
  loc_C22349: FFreeStr var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = ""
  loc_C22392: FFreeVar var_14C = "": var_178 = "": var_218 = ""
  loc_C2239D: ILdRf var_AC
  loc_C223A0: FLdI2 var_A2
  loc_C223A3: CI4UI1
  loc_C223A4: CVarI4
  loc_C223A8: PopAdLdVar
  loc_C223A9: LitVarI4
  loc_C223B1: PopAdLdVar
  loc_C223B2: ILdPr
  loc_C223B5: LateIdCallLdVar
  loc_C223BF: CStrVarTmp
  loc_C223C0: FStStrNoPop var_114
  loc_C223C3: NeStr
  loc_C223C5: FFree1Str var_114
  loc_C223C8: FFree1Var var_14C = ""
  loc_C223CB: BranchF loc_C224C8
  loc_C223CE: FLdI2 var_AE
  loc_C223D1: LitI2_Byte 1
  loc_C223D3: AddI2
  loc_C223D4: FStI2 var_AE
  loc_C223D7: FLdI2 var_AE
  loc_C223DA: LitI2_Byte 1
  loc_C223DC: EqI2
  loc_C223DD: BranchF loc_C223F9
  loc_C223E0: LitI4 1
  loc_C223E5: FLdI2 var_AE
  loc_C223E8: CI4UI1
  loc_C223E9: FLdRfVar var_A8
  loc_C223EC: Redim
  loc_C223F6: Branch loc_C2240F
  loc_C223F9: LitI4 1
  loc_C223FE: FLdI2 var_AE
  loc_C22401: CI4UI1
  loc_C22402: FLdRfVar var_A8
  loc_C22405: RedimPreserve
  loc_C2240F: FLdI2 var_A2
  loc_C22412: CI4UI1
  loc_C22413: CVarI4
  loc_C22417: PopAdLdVar
  loc_C22418: LitVarI4
  loc_C22420: PopAdLdVar
  loc_C22421: ILdPr
  loc_C22424: LateIdCallLdVar
  loc_C2242E: CStrVarTmp
  loc_C2242F: FStStrNoPop var_114
  loc_C22432: FLdI2 var_AE
  loc_C22435: CI4UI1
  loc_C22436: ILdRf var_A8
  loc_C22439: Ary1LdPr
  loc_C2243A: MemLdRfVar from_stack_1.global_0
  loc_C2243D: StFixedStr
  loc_C22440: FFree1Str var_114
  loc_C22443: FFree1Var var_14C = ""
  loc_C22446: FLdI2 var_A2
  loc_C22449: CI4UI1
  loc_C2244A: CVarI4
  loc_C2244E: PopAdLdVar
  loc_C2244F: LitVarI4
  loc_C22457: PopAdLdVar
  loc_C22458: ILdPr
  loc_C2245B: LateIdCallLdVar
  loc_C22465: CStrVarTmp
  loc_C22466: FStStrNoPop var_114
  loc_C22469: FLdI2 var_AE
  loc_C2246C: CI4UI1
  loc_C2246D: ILdRf var_A8
  loc_C22470: Ary1LdPr
  loc_C22471: MemStStrCopy
  loc_C22475: FFree1Str var_114
  loc_C22478: FFree1Var var_14C = ""
  loc_C2247B: FLdI2 var_A2
  loc_C2247E: CI4UI1
  loc_C2247F: CVarI4
  loc_C22483: PopAdLdVar
  loc_C22484: LitVarI4
  loc_C2248C: PopAdLdVar
  loc_C2248D: ILdPr
  loc_C22490: LateIdCallLdVar
  loc_C2249A: PopAd
  loc_C2249C: LitI4 3
  loc_C224A1: FLdRfVar var_14C
  loc_C224A4: CStrVarTmp
  loc_C224A5: FStStrNoPop var_114
  loc_C224A8: ImpAdCallI2 Left$(, )
  loc_C224AD: FStStrNoPop var_118
  loc_C224B0: FLdI2 var_AE
  loc_C224B3: CI4UI1
  loc_C224B4: ILdRf var_A8
  loc_C224B7: Ary1LdPr
  loc_C224B8: MemLdRfVar from_stack_1.global_28
  loc_C224BB: StFixedStr
  loc_C224BE: FFreeStr var_114 = ""
  loc_C224C5: FFree1Var var_14C = ""
  loc_C224C8: FLdI2 var_A2
  loc_C224CB: CI4UI1
  loc_C224CC: CVarI4
  loc_C224D0: PopAdLdVar
  loc_C224D1: LitVarI4
  loc_C224D9: PopAdLdVar
  loc_C224DA: ILdPr
  loc_C224DD: LateIdCallLdVar
  loc_C224E7: PopAd
  loc_C224E9: FLdI2 var_AE
  loc_C224EC: CI4UI1
  loc_C224ED: ILdRf var_A8
  loc_C224F0: Ary1LdPr
  loc_C224F1: MemLdFPR8 global_36
  loc_C224F4: FLdRfVar var_14C
  loc_C224F7: CStrVarTmp
  loc_C224F8: FStStrNoPop var_114
  loc_C224FB: CR8Str
  loc_C224FD: AddR8
  loc_C224FE: FLdI2 var_AE
  loc_C22501: CI4UI1
  loc_C22502: ILdRf var_A8
  loc_C22505: Ary1LdPr
  loc_C22506: MemStFPR8 global_36
  loc_C22509: FFree1Str var_114
  loc_C2250C: FFree1Var var_14C = ""
  loc_C2250F: FLdI2 var_A2
  loc_C22512: CI4UI1
  loc_C22513: CVarI4
  loc_C22517: PopAdLdVar
  loc_C22518: LitVarI4
  loc_C22520: PopAdLdVar
  loc_C22521: ILdPr
  loc_C22524: LateIdCallLdVar
  loc_C2252E: CStrVarTmp
  loc_C2252F: FStStr var_AC
  loc_C22532: FFree1Var var_14C = ""
  loc_C22535: FLdRfVar var_A2
  loc_C22538: NextI2 var_194, loc_C22182
  loc_C2253D: Branch loc_C2299E
  loc_C22540: ILdRf var_98
  loc_C22543: LitStr "Debito"
  loc_C22546: EqStr
  loc_C22548: BranchF loc_C2299E
  loc_C2254B: ILdRf var_A0
  loc_C2254E: LitStr "INSERT INTO liquidacion (ExpeImpu,NumeLiqu,FechLiqu,DetaLiqu,PeriInfo,TipoLiqu,AltaUsua)"
  loc_C22551: ConcatStr
  loc_C22552: FStStrNoPop var_114
  loc_C22555: LitStr " VALUES ('"
  loc_C22558: ConcatStr
  loc_C22559: FStStrNoPop var_118
  loc_C2255C: ILdRf var_8C
  loc_C2255F: ConcatStr
  loc_C22560: FStStrNoPop var_11C
  loc_C22563: LitStr "',@liqu,"
  loc_C22566: ConcatStr
  loc_C22567: FStStrNoPop var_150
  loc_C2256A: LitI4 1
  loc_C2256F: LitI4 1
  loc_C22574: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C22579: FStVarCopyObj var_14C
  loc_C2257C: FLdRfVar var_14C
  loc_C2257F: FLdRfVar var_90
  loc_C22582: CVarRef
  loc_C22587: ImpAdCallI2 Format$(, )
  loc_C2258C: FStStrNoPop var_154
  loc_C2258F: ConcatStr
  loc_C22590: FStStrNoPop var_158
  loc_C22593: LitStr ",'"
  loc_C22596: ConcatStr
  loc_C22597: FStStrNoPop var_17C
  loc_C2259A: LitVarI2 var_178, 500
  loc_C2259F: LitI4 1
  loc_C225A4: ILdRf AddNew
  loc_C225A7: ImpAdCallI2 Mid$(, , )
  loc_C225AC: FStStrNoPop var_180
  loc_C225AF: ConcatStr
  loc_C225B0: FStStrNoPop var_184
  loc_C225B3: LitStr "',"
  loc_C225B6: ConcatStr
  loc_C225B7: FStStrNoPop var_188
  loc_C225BA: ImpAdLdI2 MemVar_C3D064
  loc_C225BD: CStrUI1
  loc_C225BF: FStStrNoPop var_18C
  loc_C225C2: ConcatStr
  loc_C225C3: FStStrNoPop var_190
  loc_C225C6: LitStr ",2,@sUsuario);"
  loc_C225C9: ConcatStr
  loc_C225CA: FStStr var_A0
  loc_C225CD: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_C225E8: FFreeVar var_14C = ""
  loc_C225EF: LitI2_Byte 1
  loc_C225F1: FLdRfVar var_A2
  loc_C225F4: ILdPr
  loc_C225F7: LateIdLdVar var_14C DispID_4 0
  loc_C225FE: CI4Var
  loc_C22600: LitI4 1
  loc_C22605: SubI4
  loc_C22606: CI2I4
  loc_C22607: FFree1Var var_14C = ""
  loc_C2260A: ForI2 var_2C4
  loc_C22610: FLdI2 var_A2
  loc_C22613: CI4UI1
  loc_C22614: CVarI4
  loc_C22618: PopAdLdVar
  loc_C22619: LitVarI4
  loc_C22621: PopAdLdVar
  loc_C22622: ILdPr
  loc_C22625: LateIdCallLdVar
  loc_C2262F: CStrVarTmp
  loc_C22630: FStStrNoPop var_114
  loc_C22633: LitStr "Si"
  loc_C22636: EqStr
  loc_C22638: FFree1Str var_114
  loc_C2263B: FFree1Var var_14C = ""
  loc_C2263E: BranchF loc_C22996
  loc_C22641: FLdI2 var_A2
  loc_C22644: CI4UI1
  loc_C22645: CVarI4
  loc_C22649: PopAdLdVar
  loc_C2264A: LitVarI4
  loc_C22652: PopAdLdVar
  loc_C22653: ILdPr
  loc_C22656: LateIdCallLdVar
  loc_C22660: PopAd
  loc_C22662: ILdRf var_A0
  loc_C22665: LitStr "INSERT INTO liquidadeta (ExpeImpu,NumeLiqu,PeriInfo,CodiOrga,CodiCuco,NumeDebi,CucuPers,NumeFact,ImpoImpu)"
  loc_C22668: ConcatStr
  loc_C22669: FStStrNoPop var_114
  loc_C2266C: LitStr " VALUES ('"
  loc_C2266F: ConcatStr
  loc_C22670: FStStrNoPop var_118
  loc_C22673: ILdRf var_8C
  loc_C22676: ConcatStr
  loc_C22677: FStStrNoPop var_11C
  loc_C2267A: LitStr "',@liqu,"
  loc_C2267D: ConcatStr
  loc_C2267E: FStStrNoPop var_150
  loc_C22681: ImpAdLdI2 MemVar_C3D064
  loc_C22684: CStrUI1
  loc_C22686: FStStrNoPop var_154
  loc_C22689: ConcatStr
  loc_C2268A: FStStrNoPop var_158
  loc_C2268D: LitStr ",'"
  loc_C22690: ConcatStr
  loc_C22691: FStStrNoPop var_17C
  loc_C22694: FLdI2 var_A2
  loc_C22697: CI4UI1
  loc_C22698: CVarI4
  loc_C2269C: PopAdLdVar
  loc_C2269D: LitVarI4
  loc_C226A5: PopAdLdVar
  loc_C226A6: ILdPr
  loc_C226A9: LateIdCallLdVar
  loc_C226B3: CStrVarTmp
  loc_C226B4: FStStrNoPop var_180
  loc_C226B7: ConcatStr
  loc_C226B8: FStStrNoPop var_184
  loc_C226BB: LitStr "','"
  loc_C226BE: ConcatStr
  loc_C226BF: FStStrNoPop var_188
  loc_C226C2: FLdI2 var_A2
  loc_C226C5: CI4UI1
  loc_C226C6: CVarI4
  loc_C226CA: PopAdLdVar
  loc_C226CB: LitVarI4
  loc_C226D3: PopAdLdVar
  loc_C226D4: ILdPr
  loc_C226D7: LateIdCallLdVar
  loc_C226E1: CStrVarTmp
  loc_C226E2: FStStrNoPop var_18C
  loc_C226E5: ConcatStr
  loc_C226E6: FStStrNoPop var_190
  loc_C226E9: LitStr "',"
  loc_C226EC: ConcatStr
  loc_C226ED: FStStrNoPop var_21C
  loc_C226F0: FLdI2 var_A2
  loc_C226F3: CI4UI1
  loc_C226F4: CVarI4
  loc_C226F8: PopAdLdVar
  loc_C226F9: LitVarI4
  loc_C22701: PopAdLdVar
  loc_C22702: ILdPr
  loc_C22705: LateIdCallLdVar
  loc_C2270F: CStrVarTmp
  loc_C22710: FStStrNoPop var_1C8
  loc_C22713: CI4Str
  loc_C22714: CStrI4
  loc_C22716: FStStrNoPop var_220
  loc_C22719: ConcatStr
  loc_C2271A: FStStrNoPop var_224
  loc_C2271D: LitStr ",'"
  loc_C22720: ConcatStr
  loc_C22721: FStStrNoPop var_228
  loc_C22724: FLdI2 var_A2
  loc_C22727: CI4UI1
  loc_C22728: CVarI4
  loc_C2272C: PopAdLdVar
  loc_C2272D: LitVarI4
  loc_C22735: PopAdLdVar
  loc_C22736: ILdPr
  loc_C22739: LateIdCallLdVar
  loc_C22743: CStrVarTmp
  loc_C22744: FStStrNoPop var_22C
  loc_C22747: ConcatStr
  loc_C22748: FStStrNoPop var_230
  loc_C2274B: LitStr "','"
  loc_C2274E: ConcatStr
  loc_C2274F: FStStrNoPop var_234
  loc_C22752: FLdI2 var_A2
  loc_C22755: CI4UI1
  loc_C22756: CVarI4
  loc_C2275A: PopAdLdVar
  loc_C2275B: LitVarI4
  loc_C22763: PopAdLdVar
  loc_C22764: ILdPr
  loc_C22767: LateIdCallLdVar
  loc_C22771: CStrVarTmp
  loc_C22772: FStStrNoPop var_238
  loc_C22775: ConcatStr
  loc_C22776: FStStrNoPop var_23C
  loc_C22779: LitStr "',"
  loc_C2277C: ConcatStr
  loc_C2277D: FStStrNoPop var_248
  loc_C22780: LitI4 0
  loc_C22785: LitI4 -1
  loc_C2278A: LitI4 1
  loc_C2278F: LitStr "."
  loc_C22792: LitStr ","
  loc_C22795: FLdRfVar var_384
  loc_C22798: CStrVarTmp
  loc_C22799: FStStrNoPop var_240
  loc_C2279C: CR8Str
  loc_C2279E: CStrR8
  loc_C227A0: FStStrNoPop var_244
  loc_C227A3: ImpAdCallI2 Replace(, , , , , )
  loc_C227A8: FStStrNoPop var_24C
  loc_C227AB: ConcatStr
  loc_C227AC: FStStrNoPop var_250
  loc_C227AF: LitStr ");"
  loc_C227B2: ConcatStr
  loc_C227B3: FStStr var_A0
  loc_C227B6: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = ""
  loc_C227EF: FFreeVar var_14C = "": var_178 = "": var_218 = "": var_2A8 = "": var_334 = ""
  loc_C227FE: ILdRf var_AC
  loc_C22801: FLdI2 var_A2
  loc_C22804: CI4UI1
  loc_C22805: CVarI4
  loc_C22809: PopAdLdVar
  loc_C2280A: LitVarI4
  loc_C22812: PopAdLdVar
  loc_C22813: ILdPr
  loc_C22816: LateIdCallLdVar
  loc_C22820: CStrVarTmp
  loc_C22821: FStStrNoPop var_114
  loc_C22824: NeStr
  loc_C22826: FFree1Str var_114
  loc_C22829: FFree1Var var_14C = ""
  loc_C2282C: BranchF loc_C22929
  loc_C2282F: FLdI2 var_AE
  loc_C22832: LitI2_Byte 1
  loc_C22834: AddI2
  loc_C22835: FStI2 var_AE
  loc_C22838: FLdI2 var_AE
  loc_C2283B: LitI2_Byte 1
  loc_C2283D: EqI2
  loc_C2283E: BranchF loc_C2285A
  loc_C22841: LitI4 1
  loc_C22846: FLdI2 var_AE
  loc_C22849: CI4UI1
  loc_C2284A: FLdRfVar var_A8
  loc_C2284D: Redim
  loc_C22857: Branch loc_C22870
  loc_C2285A: LitI4 1
  loc_C2285F: FLdI2 var_AE
  loc_C22862: CI4UI1
  loc_C22863: FLdRfVar var_A8
  loc_C22866: RedimPreserve
  loc_C22870: FLdI2 var_A2
  loc_C22873: CI4UI1
  loc_C22874: CVarI4
  loc_C22878: PopAdLdVar
  loc_C22879: LitVarI4
  loc_C22881: PopAdLdVar
  loc_C22882: ILdPr
  loc_C22885: LateIdCallLdVar
  loc_C2288F: CStrVarTmp
  loc_C22890: FStStrNoPop var_114
  loc_C22893: FLdI2 var_AE
  loc_C22896: CI4UI1
  loc_C22897: ILdRf var_A8
  loc_C2289A: Ary1LdPr
  loc_C2289B: MemLdRfVar from_stack_1.global_0
  loc_C2289E: StFixedStr
  loc_C228A1: FFree1Str var_114
  loc_C228A4: FFree1Var var_14C = ""
  loc_C228A7: FLdI2 var_A2
  loc_C228AA: CI4UI1
  loc_C228AB: CVarI4
  loc_C228AF: PopAdLdVar
  loc_C228B0: LitVarI4
  loc_C228B8: PopAdLdVar
  loc_C228B9: ILdPr
  loc_C228BC: LateIdCallLdVar
  loc_C228C6: CStrVarTmp
  loc_C228C7: FStStrNoPop var_114
  loc_C228CA: FLdI2 var_AE
  loc_C228CD: CI4UI1
  loc_C228CE: ILdRf var_A8
  loc_C228D1: Ary1LdPr
  loc_C228D2: MemStStrCopy
  loc_C228D6: FFree1Str var_114
  loc_C228D9: FFree1Var var_14C = ""
  loc_C228DC: FLdI2 var_A2
  loc_C228DF: CI4UI1
  loc_C228E0: CVarI4
  loc_C228E4: PopAdLdVar
  loc_C228E5: LitVarI4
  loc_C228ED: PopAdLdVar
  loc_C228EE: ILdPr
  loc_C228F1: LateIdCallLdVar
  loc_C228FB: PopAd
  loc_C228FD: LitI4 3
  loc_C22902: FLdRfVar var_14C
  loc_C22905: CStrVarTmp
  loc_C22906: FStStrNoPop var_114
  loc_C22909: ImpAdCallI2 Left$(, )
  loc_C2290E: FStStrNoPop var_118
  loc_C22911: FLdI2 var_AE
  loc_C22914: CI4UI1
  loc_C22915: ILdRf var_A8
  loc_C22918: Ary1LdPr
  loc_C22919: MemLdRfVar from_stack_1.global_28
  loc_C2291C: StFixedStr
  loc_C2291F: FFreeStr var_114 = ""
  loc_C22926: FFree1Var var_14C = ""
  loc_C22929: FLdI2 var_A2
  loc_C2292C: CI4UI1
  loc_C2292D: CVarI4
  loc_C22931: PopAdLdVar
  loc_C22932: LitVarI4
  loc_C2293A: PopAdLdVar
  loc_C2293B: ILdPr
  loc_C2293E: LateIdCallLdVar
  loc_C22948: PopAd
  loc_C2294A: FLdI2 var_AE
  loc_C2294D: CI4UI1
  loc_C2294E: ILdRf var_A8
  loc_C22951: Ary1LdPr
  loc_C22952: MemLdFPR8 global_36
  loc_C22955: FLdRfVar var_14C
  loc_C22958: CStrVarTmp
  loc_C22959: FStStrNoPop var_114
  loc_C2295C: CR8Str
  loc_C2295E: AddR8
  loc_C2295F: FLdI2 var_AE
  loc_C22962: CI4UI1
  loc_C22963: ILdRf var_A8
  loc_C22966: Ary1LdPr
  loc_C22967: MemStFPR8 global_36
  loc_C2296A: FFree1Str var_114
  loc_C2296D: FFree1Var var_14C = ""
  loc_C22970: FLdI2 var_A2
  loc_C22973: CI4UI1
  loc_C22974: CVarI4
  loc_C22978: PopAdLdVar
  loc_C22979: LitVarI4
  loc_C22981: PopAdLdVar
  loc_C22982: ILdPr
  loc_C22985: LateIdCallLdVar
  loc_C2298F: CStrVarTmp
  loc_C22990: FStStr var_AC
  loc_C22993: FFree1Var var_14C = ""
  loc_C22996: FLdRfVar var_A2
  loc_C22999: NextI2 var_2C4, loc_C22610
  loc_C2299E: ILdRf var_9C
  loc_C229A1: FStStrCopy var_388
  loc_C229A4: ILdRf var_388
  loc_C229A7: LitStr "frmLiquidacion"
  loc_C229AA: EqStr
  loc_C229AC: BranchF loc_C28B6C
  loc_C229AF: LitI2_Byte 1
  loc_C229B1: FLdRfVar var_A2
  loc_C229B4: ILdRf var_A8
  loc_C229B7: LitI2_Byte 1
  loc_C229B9: FnUBound
  loc_C229BB: CI2I4
  loc_C229BC: ForI2 var_38C
  loc_C229C2: LitStr "SELECT *"
  loc_C229C5: LitStr " FROM retexprov"
  loc_C229C8: ConcatStr
  loc_C229C9: FStStrNoPop var_114
  loc_C229CC: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = retexprov.PeriInfo AND retenciones.CodiRete = retexprov.CodiRete"
  loc_C229CF: ConcatStr
  loc_C229D0: FStStrNoPop var_118
  loc_C229D3: LitStr " WHERE retexprov.CucuPers = "
  loc_C229D6: ConcatStr
  loc_C229D7: FStStrNoPop var_11C
  loc_C229DA: FLdI2 var_A2
  loc_C229DD: CI4UI1
  loc_C229DE: ILdRf var_A8
  loc_C229E1: Ary1LdPr
  loc_C229E2: MemLdRfVar from_stack_1.global_0
  loc_C229E5: LdFixedStr
  loc_C229E8: FStStrNoPop var_150
  loc_C229EB: ConcatStr
  loc_C229EC: FStStrNoPop var_154
  loc_C229EF: LitStr " AND retexprov.PeriInfo = "
  loc_C229F2: ConcatStr
  loc_C229F3: FStStrNoPop var_158
  loc_C229F6: ImpAdLdI2 MemVar_C3D064
  loc_C229F9: CStrUI1
  loc_C229FB: FStStrNoPop var_17C
  loc_C229FE: ConcatStr
  loc_C229FF: FStStrNoPop var_180
  loc_C22A02: LitStr " AND NOT (retexprov.CucuPers = 33710476409 AND retexprov.CodiRete = 1)"
  loc_C22A05: ConcatStr
  loc_C22A06: FStStrNoPop var_184
  loc_C22A09: LitStr " GROUP BY retexprov.CodiRete;"
  loc_C22A0C: ConcatStr
  loc_C22A0D: FStStrNoPop var_188
  loc_C22A10: Call EjecutarRsCls(from_stack_1v)
  loc_C22A15: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_C22A2C: FLdRfVar var_390
  loc_C22A2F: FLdPr Me
  loc_C22A32: MemLdPr global_56
  loc_C22A35:  = Me.RecordCount
  loc_C22A3A: ILdRf var_390
  loc_C22A3D: LitI4 0
  loc_C22A42: GtI4
  loc_C22A43: BranchF loc_C28B45
  loc_C22A46: FLdPr Me
  loc_C22A49: MemLdPr global_56
  loc_C22A4C: Me.MoveFirst
  loc_C22A51: FLdRfVar var_392
  loc_C22A54: FLdPr Me
  loc_C22A57: MemLdPr global_56
  loc_C22A5A:  = Me.EOF
  loc_C22A5F: FLdI2 var_392
  loc_C22A62: NotI4
  loc_C22A63: BranchF loc_C28B42
  loc_C22A66: LitI2_Byte 0
  loc_C22A68: CR8I2
  loc_C22A69: FStFPR8 var_C8
  loc_C22A6C: LitStr "SELECT rxp.*, DetaRete, UlceRete, ImnoDere"
  loc_C22A6F: LitStr ", dr.*"
  loc_C22A72: ConcatStr
  loc_C22A73: FStStrNoPop var_114
  loc_C22A76: LitStr " FROM retexprov rxp"
  loc_C22A79: ConcatStr
  loc_C22A7A: FStStrNoPop var_118
  loc_C22A7D: LitStr " INNER JOIN retenciones r ON r.PeriInfo = rxp.PeriInfo AND r.CodiRete = rxp.CodiRete"
  loc_C22A80: ConcatStr
  loc_C22A81: FStStrNoPop var_11C
  loc_C22A84: LitStr " INNER JOIN deretenciones dr ON dr.PeriInfo = rxp.PeriInfo AND dr.CodiRete = rxp.CodiRete AND dr.CodiDere = rxp.CodiDere"
  loc_C22A87: ConcatStr
  loc_C22A88: FStStrNoPop var_150
  loc_C22A8B: LitStr " WHERE rxp.CucuPers = "
  loc_C22A8E: ConcatStr
  loc_C22A8F: FStStrNoPop var_154
  loc_C22A92: FLdI2 var_A2
  loc_C22A95: CI4UI1
  loc_C22A96: ILdRf var_A8
  loc_C22A99: Ary1LdPr
  loc_C22A9A: MemLdRfVar from_stack_1.global_0
  loc_C22A9D: LdFixedStr
  loc_C22AA0: FStStrNoPop var_158
  loc_C22AA3: ConcatStr
  loc_C22AA4: FStStrNoPop var_17C
  loc_C22AA7: LitStr " AND rxp.PeriInfo = "
  loc_C22AAA: ConcatStr
  loc_C22AAB: FStStrNoPop var_180
  loc_C22AAE: ImpAdLdI2 MemVar_C3D064
  loc_C22AB1: CStrUI1
  loc_C22AB3: FStStrNoPop var_184
  loc_C22AB6: ConcatStr
  loc_C22AB7: FStStrNoPop var_188
  loc_C22ABA: LitStr " AND rxp.CodiRete = "
  loc_C22ABD: ConcatStr
  loc_C22ABE: CVarStr var_178
  loc_C22AC1: FLdRfVar var_14C
  loc_C22AC4: FLdRfVar var_39C
  loc_C22AC7: LitVarStr var_12C, "CodiRete"
  loc_C22ACC: PopAdLdVar
  loc_C22ACD: FLdRfVar var_398
  loc_C22AD0: FLdPr Me
  loc_C22AD3: MemLdPr global_56
  loc_C22AD6:  = Me.Fields
  loc_C22ADB: FLdPr var_398
  loc_C22ADE: from_stack_2 = Me.Item(from_stack_1)
  loc_C22AE3: FLdPr var_39C
  loc_C22AE6:  = Me.Value
  loc_C22AEB: FLdRfVar var_14C
  loc_C22AEE: ConcatVar var_218
  loc_C22AF2: LitVarStr var_13C, ";"
  loc_C22AF7: ConcatVar var_2A8
  loc_C22AFB: CStrVarVal var_18C
  loc_C22AFF: Call EjecutarRsCls2(from_stack_1v)
  loc_C22B04: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_C22B1D: FFreeAd var_398 = ""
  loc_C22B24: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C22B2F: FLdRfVar var_390
  loc_C22B32: FLdPr Me
  loc_C22B35: MemLdPr global_60
  loc_C22B38:  = Me.RecordCount
  loc_C22B3D: ILdRf var_390
  loc_C22B40: LitI4 1
  loc_C22B45: EqI4
  loc_C22B46: BranchF loc_C266CB
  loc_C22B49: ILdRf var_A0
  loc_C22B4C: LitStr "INSERT IGNORE INTO liquidarete VALUES ('"
  loc_C22B4F: ConcatStr
  loc_C22B50: FStStrNoPop var_114
  loc_C22B53: ILdRf var_8C
  loc_C22B56: ConcatStr
  loc_C22B57: FStStrNoPop var_118
  loc_C22B5A: LitStr "',@liqu,"
  loc_C22B5D: ConcatStr
  loc_C22B5E: FStStrNoPop var_11C
  loc_C22B61: FLdI2 var_A2
  loc_C22B64: CI4UI1
  loc_C22B65: ILdRf var_A8
  loc_C22B68: Ary1LdPr
  loc_C22B69: MemLdRfVar from_stack_1.global_0
  loc_C22B6C: LdFixedStr
  loc_C22B6F: FStStrNoPop var_150
  loc_C22B72: ConcatStr
  loc_C22B73: FStStrNoPop var_154
  loc_C22B76: LitStr ","
  loc_C22B79: ConcatStr
  loc_C22B7A: CVarStr var_178
  loc_C22B7D: FLdRfVar var_14C
  loc_C22B80: FLdRfVar var_39C
  loc_C22B83: LitVarStr var_12C, "CodiRete"
  loc_C22B88: PopAdLdVar
  loc_C22B89: FLdRfVar var_398
  loc_C22B8C: FLdPr Me
  loc_C22B8F: MemLdPr global_60
  loc_C22B92:  = Me.Fields
  loc_C22B97: FLdPr var_398
  loc_C22B9A: from_stack_2 = Me.Item(from_stack_1)
  loc_C22B9F: FLdPr var_39C
  loc_C22BA2:  = Me.Value
  loc_C22BA7: FLdRfVar var_14C
  loc_C22BAA: ConcatVar var_218
  loc_C22BAE: LitVarStr var_13C, ","
  loc_C22BB3: ConcatVar var_2A8
  loc_C22BB7: FLdRfVar var_334
  loc_C22BBA: FLdRfVar var_3A4
  loc_C22BBD: LitVarStr var_168, "CodiDere"
  loc_C22BC2: PopAdLdVar
  loc_C22BC3: FLdRfVar var_3A0
  loc_C22BC6: FLdPr Me
  loc_C22BC9: MemLdPr global_60
  loc_C22BCC:  = Me.Fields
  loc_C22BD1: FLdPr var_3A0
  loc_C22BD4: from_stack_2 = Me.Item(from_stack_1)
  loc_C22BD9: FLdPr var_3A4
  loc_C22BDC:  = Me.Value
  loc_C22BE1: FLdRfVar var_334
  loc_C22BE4: ConcatVar var_384
  loc_C22BE8: LitVarStr var_1A4, ","
  loc_C22BED: ConcatVar var_3B4
  loc_C22BF1: FLdRfVar var_3CC
  loc_C22BF4: FLdRfVar var_3BC
  loc_C22BF7: LitVarStr var_1B4, "PeriInfo"
  loc_C22BFC: PopAdLdVar
  loc_C22BFD: FLdRfVar var_3B8
  loc_C22C00: FLdPr Me
  loc_C22C03: MemLdPr global_60
  loc_C22C06:  = Me.Fields
  loc_C22C0B: FLdPr var_3B8
  loc_C22C0E: from_stack_2 = Me.Item(from_stack_1)
  loc_C22C13: FLdPr var_3BC
  loc_C22C16:  = Me.Value
  loc_C22C1B: FLdRfVar var_3CC
  loc_C22C1E: ConcatVar var_3DC
  loc_C22C22: LitVarStr var_1C4, ");"
  loc_C22C27: ConcatVar var_3EC
  loc_C22C2B: CStrVarTmp
  loc_C22C2C: FStStr var_A0
  loc_C22C2F: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = ""
  loc_C22C3C: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = ""
  loc_C22C4B: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = ""
  loc_C22C62: FLdRfVar var_392
  loc_C22C65: ImpAdLdRf MemVar_C3D250
  loc_C22C68: NewIfNullPr frmLiquidacion
  loc_C22C6B: VCallAd Control_ID_
  loc_C22C6E: FStAdFunc var_398
  loc_C22C71: FLdPr var_398
  loc_C22C74:  = frmLiquidacion.CheckBox.Value
  loc_C22C79: FLdI2 var_392
  loc_C22C7C: CI4UI1
  loc_C22C7D: LitI4 1
  loc_C22C82: EqI4
  loc_C22C83: FFree1Ad var_398
  loc_C22C86: BranchF loc_C257C7
  loc_C22C89: FLdRfVar var_14C
  loc_C22C8C: FLdRfVar var_39C
  loc_C22C8F: LitVarStr var_12C, "ImfiDere"
  loc_C22C94: PopAdLdVar
  loc_C22C95: FLdRfVar var_398
  loc_C22C98: FLdPr Me
  loc_C22C9B: MemLdPr global_60
  loc_C22C9E:  = Me.Fields
  loc_C22CA3: FLdPr var_398
  loc_C22CA6: from_stack_2 = Me.Item(from_stack_1)
  loc_C22CAB: FLdPr var_39C
  loc_C22CAE:  = Me.Value
  loc_C22CB3: FLdRfVar var_14C
  loc_C22CB6: LitVarStr var_13C, "0"
  loc_C22CBB: HardType
  loc_C22CBC: EqVarBool
  loc_C22CBE: FFreeAd var_398 = ""
  loc_C22CC5: FFree1Var var_14C = ""
  loc_C22CC8: BranchF loc_C250C9
  loc_C22CCB: FLdI2 var_A2
  loc_C22CCE: CI4UI1
  loc_C22CCF: ILdRf var_A8
  loc_C22CD2: Ary1LdPr
  loc_C22CD3: MemLdRfVar from_stack_1.global_28
  loc_C22CD6: LdFixedStr
  loc_C22CD9: FStStrNoPop var_114
  loc_C22CDC: LitStr "s/f"
  loc_C22CDF: NeStr
  loc_C22CE1: CVarBoolI2 var_168
  loc_C22CE5: FLdI2 var_A2
  loc_C22CE8: CI4UI1
  loc_C22CE9: ILdRf var_A8
  loc_C22CEC: Ary1LdPr
  loc_C22CED: MemLdRfVar from_stack_1.global_28
  loc_C22CF0: LdFixedStr
  loc_C22CF3: PopTmpLdAdStr
  loc_C22CF7: CVarRef
  loc_C22CFC: FLdRfVar var_14C
  loc_C22CFF: ImpAdCallFPR4  = Trim()
  loc_C22D04: ILdRf var_118
  loc_C22D07: FLdI2 var_A2
  loc_C22D0A: CI4UI1
  loc_C22D0B: ILdRf var_A8
  loc_C22D0E: Ary1LdPr
  loc_C22D0F: MemLdRfVar from_stack_1.global_28
  loc_C22D12: StFixedStr
  loc_C22D15: FLdRfVar var_14C
  loc_C22D18: LitVarStr var_13C, vbNullString
  loc_C22D1D: HardType
  loc_C22D1E: NeVar var_178
  loc_C22D22: AndVar var_218
  loc_C22D26: CBoolVarNull
  loc_C22D28: FFreeStr var_114 = ""
  loc_C22D2F: FFreeVar var_14C = ""
  loc_C22D36: BranchF loc_C250C6
  loc_C22D39: LitStr "SELECT *"
  loc_C22D3C: LitStr " FROM escalas"
  loc_C22D3F: ConcatStr
  loc_C22D40: FStStrNoPop var_114
  loc_C22D43: LitStr " WHERE PeriInfo = "
  loc_C22D46: ConcatStr
  loc_C22D47: CVarStr var_178
  loc_C22D4A: FLdRfVar var_14C
  loc_C22D4D: FLdRfVar var_39C
  loc_C22D50: LitVarStr var_12C, "PeriInfo"
  loc_C22D55: PopAdLdVar
  loc_C22D56: FLdRfVar var_398
  loc_C22D59: FLdPr Me
  loc_C22D5C: MemLdPr global_60
  loc_C22D5F:  = Me.Fields
  loc_C22D64: FLdPr var_398
  loc_C22D67: from_stack_2 = Me.Item(from_stack_1)
  loc_C22D6C: FLdPr var_39C
  loc_C22D6F:  = Me.Value
  loc_C22D74: FLdRfVar var_14C
  loc_C22D77: ConcatVar var_218
  loc_C22D7B: LitVarStr var_13C, " AND FechEsca = (SELECT Max(FechEsca) FROM escalas WHERE escalas.PeriInfo = "
  loc_C22D80: ConcatVar var_2A8
  loc_C22D84: FLdRfVar var_334
  loc_C22D87: FLdRfVar var_3A4
  loc_C22D8A: LitVarStr var_168, "PeriInfo"
  loc_C22D8F: PopAdLdVar
  loc_C22D90: FLdRfVar var_3A0
  loc_C22D93: FLdPr Me
  loc_C22D96: MemLdPr global_60
  loc_C22D99:  = Me.Fields
  loc_C22D9E: FLdPr var_3A0
  loc_C22DA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C22DA6: FLdPr var_3A4
  loc_C22DA9:  = Me.Value
  loc_C22DAE: FLdRfVar var_334
  loc_C22DB1: ConcatVar var_384
  loc_C22DB5: LitVarStr var_1A4, " AND escalas.CodiRete = "
  loc_C22DBA: ConcatVar var_3B4
  loc_C22DBE: FLdRfVar var_3CC
  loc_C22DC1: FLdRfVar var_3BC
  loc_C22DC4: LitVarStr var_1B4, "CodiRete"
  loc_C22DC9: PopAdLdVar
  loc_C22DCA: FLdRfVar var_3B8
  loc_C22DCD: FLdPr Me
  loc_C22DD0: MemLdPr global_60
  loc_C22DD3:  = Me.Fields
  loc_C22DD8: FLdPr var_3B8
  loc_C22DDB: from_stack_2 = Me.Item(from_stack_1)
  loc_C22DE0: FLdPr var_3BC
  loc_C22DE3:  = Me.Value
  loc_C22DE8: FLdRfVar var_3CC
  loc_C22DEB: ConcatVar var_3DC
  loc_C22DEF: LitVarStr var_1C4, " AND escalas.CodiDere = "
  loc_C22DF4: ConcatVar var_3EC
  loc_C22DF8: FLdRfVar var_404
  loc_C22DFB: FLdRfVar var_3F4
  loc_C22DFE: LitVarStr var_1D8, "CodiDere"
  loc_C22E03: PopAdLdVar
  loc_C22E04: FLdRfVar var_3F0
  loc_C22E07: FLdPr Me
  loc_C22E0A: MemLdPr global_60
  loc_C22E0D:  = Me.Fields
  loc_C22E12: FLdPr var_3F0
  loc_C22E15: from_stack_2 = Me.Item(from_stack_1)
  loc_C22E1A: FLdPr var_3F4
  loc_C22E1D:  = Me.Value
  loc_C22E22: FLdRfVar var_404
  loc_C22E25: ConcatVar var_414
  loc_C22E29: LitVarStr var_1E8, " AND FechEsca <= "
  loc_C22E2E: ConcatVar var_424
  loc_C22E32: LitI4 1
  loc_C22E37: LitI4 1
  loc_C22E3C: LitVarStr var_208, "'yyyy-mm-dd'"
  loc_C22E41: FStVarCopyObj var_434
  loc_C22E44: FLdRfVar var_434
  loc_C22E47: FLdRfVar var_90
  loc_C22E4A: CVarRef
  loc_C22E4F: FLdRfVar var_444
  loc_C22E52: ImpAdCallFPR4  = Format(, )
  loc_C22E57: FLdRfVar var_444
  loc_C22E5A: ConcatVar var_454
  loc_C22E5E: LitVarStr var_268, ")"
  loc_C22E63: ConcatVar var_464
  loc_C22E67: LitVarStr var_278, " AND CodiRete = "
  loc_C22E6C: ConcatVar var_474
  loc_C22E70: FLdRfVar var_48C
  loc_C22E73: FLdRfVar var_47C
  loc_C22E76: LitVarStr var_288, "CodiRete"
  loc_C22E7B: PopAdLdVar
  loc_C22E7C: FLdRfVar var_478
  loc_C22E7F: FLdPr Me
  loc_C22E82: MemLdPr global_60
  loc_C22E85:  = Me.Fields
  loc_C22E8A: FLdPr var_478
  loc_C22E8D: from_stack_2 = Me.Item(from_stack_1)
  loc_C22E92: FLdPr var_47C
  loc_C22E95:  = Me.Value
  loc_C22E9A: FLdRfVar var_48C
  loc_C22E9D: ConcatVar var_49C
  loc_C22EA1: LitVarStr var_298, " AND CodiDere = "
  loc_C22EA6: ConcatVar var_4AC
  loc_C22EAA: FLdRfVar var_4C4
  loc_C22EAD: FLdRfVar var_4B4
  loc_C22EB0: LitVarStr var_2D4, "CodiDere"
  loc_C22EB5: PopAdLdVar
  loc_C22EB6: FLdRfVar var_4B0
  loc_C22EB9: FLdPr Me
  loc_C22EBC: MemLdPr global_60
  loc_C22EBF:  = Me.Fields
  loc_C22EC4: FLdPr var_4B0
  loc_C22EC7: from_stack_2 = Me.Item(from_stack_1)
  loc_C22ECC: FLdPr var_4B4
  loc_C22ECF:  = Me.Value
  loc_C22ED4: FLdRfVar var_4C4
  loc_C22ED7: ConcatVar var_4D4
  loc_C22EDB: LitVarStr var_2E4, ";"
  loc_C22EE0: ConcatVar var_4E4
  loc_C22EE4: CStrVarVal var_118
  loc_C22EE8: Call EjecutarRsCls3(from_stack_1v)
  loc_C22EED: FFreeStr var_114 = ""
  loc_C22EF4: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C22F0F: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_434 = "": var_424 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = ""
  loc_C22F42: FLdRfVar var_390
  loc_C22F45: FLdPr Me
  loc_C22F48: MemLdPr global_64
  loc_C22F4B:  = Me.RecordCount
  loc_C22F50: ILdRf var_390
  loc_C22F53: LitI4 0
  loc_C22F58: GtI4
  loc_C22F59: BranchF loc_C250B6
  loc_C22F5C: FLdRfVar var_14C
  loc_C22F5F: FLdRfVar var_39C
  loc_C22F62: LitVarStr var_12C, "CodiRete"
  loc_C22F67: PopAdLdVar
  loc_C22F68: FLdRfVar var_398
  loc_C22F6B: FLdPr Me
  loc_C22F6E: MemLdPr global_60
  loc_C22F71:  = Me.Fields
  loc_C22F76: FLdPr var_398
  loc_C22F79: from_stack_2 = Me.Item(from_stack_1)
  loc_C22F7E: FLdPr var_39C
  loc_C22F81:  = Me.Value
  loc_C22F86: FLdRfVar var_178
  loc_C22F89: FLdRfVar var_3A4
  loc_C22F8C: LitVarStr var_13C, "CodiDere"
  loc_C22F91: PopAdLdVar
  loc_C22F92: FLdRfVar var_3A0
  loc_C22F95: FLdPr Me
  loc_C22F98: MemLdPr global_60
  loc_C22F9B:  = Me.Fields
  loc_C22FA0: FLdPr var_3A0
  loc_C22FA3: from_stack_2 = Me.Item(from_stack_1)
  loc_C22FA8: FLdPr var_3A4
  loc_C22FAB:  = Me.Value
  loc_C22FB0: FLdRfVar var_218
  loc_C22FB3: FLdRfVar var_3BC
  loc_C22FB6: LitVarStr var_168, "AcumDere"
  loc_C22FBB: PopAdLdVar
  loc_C22FBC: FLdRfVar var_3B8
  loc_C22FBF: FLdPr Me
  loc_C22FC2: MemLdPr global_60
  loc_C22FC5:  = Me.Fields
  loc_C22FCA: FLdPr var_3B8
  loc_C22FCD: from_stack_2 = Me.Item(from_stack_1)
  loc_C22FD2: FLdPr var_3BC
  loc_C22FD5:  = Me.Value
  loc_C22FDA: FLdRfVar var_4EC
  loc_C22FDD: FLdRfVar var_218
  loc_C22FE0: CStrVarTmp
  loc_C22FE1: FStStrNoPop var_118
  loc_C22FE4: FLdRfVar var_178
  loc_C22FE7: CUI1Var
  loc_C22FE9: FLdRfVar var_14C
  loc_C22FEC: CUI1Var
  loc_C22FEE: FLdI2 var_A2
  loc_C22FF1: CI4UI1
  loc_C22FF2: ILdRf var_A8
  loc_C22FF5: Ary1LdPr
  loc_C22FF6: MemLdRfVar from_stack_1.global_0
  loc_C22FF9: LdFixedStr
  loc_C22FFC: FStStrNoPop var_114
  loc_C22FFF: ILdRf var_90
  loc_C23002: from_stack_6v = AcumuladoBruto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C23007: ILdRf var_114
  loc_C2300A: FLdI2 var_A2
  loc_C2300D: CI4UI1
  loc_C2300E: ILdRf var_A8
  loc_C23011: Ary1LdPr
  loc_C23012: MemLdRfVar from_stack_1.global_0
  loc_C23015: StFixedStr
  loc_C23018: FLdFPR8 var_4EC
  loc_C2301B: FStFPR8 var_B8
  loc_C2301E: FFreeStr var_114 = ""
  loc_C23025: FFreeAd var_398 = "": var_3A0 = "": var_3B8 = "": var_39C = "": var_3A4 = ""
  loc_C23034: FFreeVar var_14C = "": var_178 = ""
  loc_C2303D: FLdRfVar var_14C
  loc_C23040: FLdRfVar var_39C
  loc_C23043: LitVarStr var_12C, "CodiRete"
  loc_C23048: PopAdLdVar
  loc_C23049: FLdRfVar var_398
  loc_C2304C: FLdPr Me
  loc_C2304F: MemLdPr global_60
  loc_C23052:  = Me.Fields
  loc_C23057: FLdPr var_398
  loc_C2305A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2305F: FLdPr var_39C
  loc_C23062:  = Me.Value
  loc_C23067: FLdRfVar var_178
  loc_C2306A: FLdRfVar var_3A4
  loc_C2306D: LitVarStr var_13C, "CodiDere"
  loc_C23072: PopAdLdVar
  loc_C23073: FLdRfVar var_3A0
  loc_C23076: FLdPr Me
  loc_C23079: MemLdPr global_60
  loc_C2307C:  = Me.Fields
  loc_C23081: FLdPr var_3A0
  loc_C23084: from_stack_2 = Me.Item(from_stack_1)
  loc_C23089: FLdPr var_3A4
  loc_C2308C:  = Me.Value
  loc_C23091: FLdRfVar var_218
  loc_C23094: FLdRfVar var_3BC
  loc_C23097: LitVarStr var_168, "AcumDere"
  loc_C2309C: PopAdLdVar
  loc_C2309D: FLdRfVar var_3B8
  loc_C230A0: FLdPr Me
  loc_C230A3: MemLdPr global_60
  loc_C230A6:  = Me.Fields
  loc_C230AB: FLdPr var_3B8
  loc_C230AE: from_stack_2 = Me.Item(from_stack_1)
  loc_C230B3: FLdPr var_3BC
  loc_C230B6:  = Me.Value
  loc_C230BB: FLdRfVar var_4EC
  loc_C230BE: FLdRfVar var_218
  loc_C230C1: CStrVarTmp
  loc_C230C2: FStStrNoPop var_118
  loc_C230C5: FLdRfVar var_178
  loc_C230C8: CUI1Var
  loc_C230CA: FLdRfVar var_14C
  loc_C230CD: CI2Var
  loc_C230CE: FLdI2 var_A2
  loc_C230D1: CI4UI1
  loc_C230D2: ILdRf var_A8
  loc_C230D5: Ary1LdPr
  loc_C230D6: MemLdRfVar from_stack_1.global_0
  loc_C230D9: LdFixedStr
  loc_C230DC: FStStrNoPop var_114
  loc_C230DF: ILdRf var_90
  loc_C230E2: from_stack_6v = RetencionAcumulada(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C230E7: ILdRf var_114
  loc_C230EA: FLdI2 var_A2
  loc_C230ED: CI4UI1
  loc_C230EE: ILdRf var_A8
  loc_C230F1: Ary1LdPr
  loc_C230F2: MemLdRfVar from_stack_1.global_0
  loc_C230F5: StFixedStr
  loc_C230F8: FLdFPR8 var_4EC
  loc_C230FB: FStFPR8 var_C0
  loc_C230FE: FFreeStr var_114 = ""
  loc_C23105: FFreeAd var_398 = "": var_3A0 = "": var_3B8 = "": var_39C = "": var_3A4 = ""
  loc_C23114: FFreeVar var_14C = "": var_178 = ""
  loc_C2311D: FLdPr Me
  loc_C23120: MemLdPr global_64
  loc_C23123: Me.MoveFirst
  loc_C23128: FLdRfVar var_39C
  loc_C2312B: LitVarStr var_12C, "AcubDere"
  loc_C23130: PopAdLdVar
  loc_C23131: FLdRfVar var_398
  loc_C23134: FLdPr Me
  loc_C23137: MemLdPr global_60
  loc_C2313A:  = Me.Fields
  loc_C2313F: FLdPr var_398
  loc_C23142: from_stack_2 = Me.Item(from_stack_1)
  loc_C23147: FLdZeroAd var_39C
  loc_C2314A: CVarAd
  loc_C2314E: FLdRfVar var_178
  loc_C23151: ImpAdCallFPR4  = Ucase()
  loc_C23156: FLdRfVar var_178
  loc_C23159: LitVarStr var_13C, "DEVENGADO"
  loc_C2315E: HardType
  loc_C2315F: EqVarBool
  loc_C23161: FFree1Ad var_398
  loc_C23164: FFreeVar var_14C = ""
  loc_C2316B: BranchF loc_C2317C
  loc_C2316E: FLdI2 var_A2
  loc_C23171: CI4UI1
  loc_C23172: ILdRf var_A8
  loc_C23175: Ary1LdPr
  loc_C23176: MemLdFPR8 global_36
  loc_C23179: FStFPR8 var_B8
  loc_C2317C: FLdRfVar var_39C
  loc_C2317F: LitVarStr var_12C, "AcubDere"
  loc_C23184: PopAdLdVar
  loc_C23185: FLdRfVar var_398
  loc_C23188: FLdPr Me
  loc_C2318B: MemLdPr global_60
  loc_C2318E:  = Me.Fields
  loc_C23193: FLdPr var_398
  loc_C23196: from_stack_2 = Me.Item(from_stack_1)
  loc_C2319B: FLdZeroAd var_39C
  loc_C2319E: CVarAd
  loc_C231A2: FLdRfVar var_178
  loc_C231A5: ImpAdCallFPR4  = Ucase()
  loc_C231AA: FLdRfVar var_178
  loc_C231AD: LitVarStr var_13C, "ACUMULADO BRUTO"
  loc_C231B2: HardType
  loc_C231B3: EqVarBool
  loc_C231B5: FFree1Ad var_398
  loc_C231B8: FFreeVar var_14C = ""
  loc_C231BF: BranchF loc_C231D4
  loc_C231C2: FLdFPR8 var_B8
  loc_C231C5: FLdI2 var_A2
  loc_C231C8: CI4UI1
  loc_C231C9: ILdRf var_A8
  loc_C231CC: Ary1LdPr
  loc_C231CD: MemLdFPR8 global_36
  loc_C231D0: AddR8
  loc_C231D1: FStFPR8 var_B8
  loc_C231D4: LitI2_Byte 0
  loc_C231D6: CR8I2
  loc_C231D7: FStFPR8 var_D0
  loc_C231DA: LitI2_Byte 0
  loc_C231DC: CR8I2
  loc_C231DD: FStFPR8 var_E8
  loc_C231E0: LitI2_Byte 0
  loc_C231E2: CR8I2
  loc_C231E3: FStFPR8 var_D8
  loc_C231E6: LitI2_Byte 0
  loc_C231E8: CR8I2
  loc_C231E9: FStFPR8 var_F0
  loc_C231EC: LitI2_Byte 0
  loc_C231EE: CR8I2
  loc_C231EF: FStFPR8 var_E0
  loc_C231F2: LitI2_Byte 0
  loc_C231F4: CR8I2
  loc_C231F5: FStFPR8 var_F8
  loc_C231F8: FLdRfVar var_392
  loc_C231FB: FLdPr Me
  loc_C231FE: MemLdPr global_64
  loc_C23201:  = Me.EOF
  loc_C23206: FLdI2 var_392
  loc_C23209: NotI4
  loc_C2320A: BranchF loc_C250B3
  loc_C2320D: FLdRfVar var_14C
  loc_C23210: FLdRfVar var_39C
  loc_C23213: LitVarStr var_12C, "BaseEsca"
  loc_C23218: PopAdLdVar
  loc_C23219: FLdRfVar var_398
  loc_C2321C: FLdPr Me
  loc_C2321F: MemLdPr global_64
  loc_C23222:  = Me.Fields
  loc_C23227: FLdPr var_398
  loc_C2322A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2322F: FLdPr var_39C
  loc_C23232:  = Me.Value
  loc_C23237: FLdRfVar var_218
  loc_C2323A: FLdRfVar var_3A4
  loc_C2323D: LitVarStr var_168, "ImnoDere"
  loc_C23242: PopAdLdVar
  loc_C23243: FLdRfVar var_3A0
  loc_C23246: FLdPr Me
  loc_C23249: MemLdPr global_60
  loc_C2324C:  = Me.Fields
  loc_C23251: FLdPr var_3A0
  loc_C23254: from_stack_2 = Me.Item(from_stack_1)
  loc_C23259: FLdPr var_3A4
  loc_C2325C:  = Me.Value
  loc_C23261: FLdRfVar var_3DC
  loc_C23264: FLdRfVar var_3F4
  loc_C23267: LitVarStr var_1B4, "BaseEsca"
  loc_C2326C: PopAdLdVar
  loc_C2326D: FLdRfVar var_3F0
  loc_C23270: FLdPr Me
  loc_C23273: MemLdPr global_64
  loc_C23276:  = Me.Fields
  loc_C2327B: FLdPr var_3F0
  loc_C2327E: from_stack_2 = Me.Item(from_stack_1)
  loc_C23283: FLdPr var_3F4
  loc_C23286:  = Me.Value
  loc_C2328B: FLdRfVar var_404
  loc_C2328E: FLdRfVar var_47C
  loc_C23291: LitVarStr var_1D8, "ImnoDere"
  loc_C23296: PopAdLdVar
  loc_C23297: FLdRfVar var_478
  loc_C2329A: FLdPr Me
  loc_C2329D: MemLdPr global_60
  loc_C232A0:  = Me.Fields
  loc_C232A5: FLdPr var_478
  loc_C232A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C232AD: FLdPr var_47C
  loc_C232B0:  = Me.Value
  loc_C232B5: LitI4 2
  loc_C232BA: FLdFPR8 var_B8
  loc_C232BD: CVarR8
  loc_C232C1: FLdRfVar var_14C
  loc_C232C4: DivVar var_178
  loc_C232C8: FLdRfVar var_218
  loc_C232CB: SubVar var_2A8
  loc_C232CF: FStVar var_334
  loc_C232D3: FLdRfVar var_334
  loc_C232D6: FLdRfVar var_384
  loc_C232D9: ImpAdCallFPR4  = Round(, )
  loc_C232DE: FLdRfVar var_384
  loc_C232E1: FLdRfVar var_3B4
  loc_C232E4: FLdRfVar var_3BC
  loc_C232E7: LitVarStr var_1A4, "MiniEsca"
  loc_C232EC: PopAdLdVar
  loc_C232ED: FLdRfVar var_3B8
  loc_C232F0: FLdPr Me
  loc_C232F3: MemLdPr global_64
  loc_C232F6:  = Me.Fields
  loc_C232FB: FLdPr var_3B8
  loc_C232FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C23303: FLdPr var_3BC
  loc_C23306:  = Me.Value
  loc_C2330B: FLdRfVar var_3B4
  loc_C2330E: GeVar var_3CC
  loc_C23312: LitI4 2
  loc_C23317: FLdFPR8 var_B8
  loc_C2331A: CVarR8
  loc_C2331E: FLdRfVar var_3DC
  loc_C23321: DivVar var_3EC
  loc_C23325: FLdRfVar var_404
  loc_C23328: SubVar var_414
  loc_C2332C: FStVar var_424
  loc_C23330: FLdRfVar var_424
  loc_C23333: FLdRfVar var_434
  loc_C23336: ImpAdCallFPR4  = Round(, )
  loc_C2333B: FLdRfVar var_434
  loc_C2333E: FLdRfVar var_444
  loc_C23341: FLdRfVar var_4B4
  loc_C23344: LitVarStr var_1E8, "MaxiEsca"
  loc_C23349: PopAdLdVar
  loc_C2334A: FLdRfVar var_4B0
  loc_C2334D: FLdPr Me
  loc_C23350: MemLdPr global_64
  loc_C23353:  = Me.Fields
  loc_C23358: FLdPr var_4B0
  loc_C2335B: from_stack_2 = Me.Item(from_stack_1)
  loc_C23360: FLdPr var_4B4
  loc_C23363:  = Me.Value
  loc_C23368: FLdRfVar var_444
  loc_C2336B: LeVar var_454
  loc_C2336F: AndVar var_464
  loc_C23373: CBoolVarNull
  loc_C23375: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C23390: FFreeVar var_14C = "": var_218 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_404 = "": var_424 = "": var_434 = ""
  loc_C233A7: BranchF loc_C250A5
  loc_C233AA: FLdRfVar var_178
  loc_C233AD: FLdRfVar var_39C
  loc_C233B0: LitVarStr var_12C, "PefiEsca"
  loc_C233B5: PopAdLdVar
  loc_C233B6: FLdRfVar var_398
  loc_C233B9: FLdPr Me
  loc_C233BC: MemLdPr global_64
  loc_C233BF:  = Me.Fields
  loc_C233C4: FLdPr var_398
  loc_C233C7: from_stack_2 = Me.Item(from_stack_1)
  loc_C233CC: FLdZeroAd var_39C
  loc_C233CF: CVarAd
  loc_C233D3: ImpAdCallHresult  = CDec()
  loc_C233D8: FLdRfVar var_178
  loc_C233DB: LitVarI2 var_13C, 0
  loc_C233E0: HardType
  loc_C233E1: GtVar var_218
  loc_C233E5: FLdRfVar var_2A8
  loc_C233E8: FLdRfVar var_3A4
  loc_C233EB: LitVarStr var_168, "NuinRexp"
  loc_C233F0: PopAdLdVar
  loc_C233F1: FLdRfVar var_3A0
  loc_C233F4: FLdPr Me
  loc_C233F7: MemLdPr global_60
  loc_C233FA:  = Me.Fields
  loc_C233FF: FLdPr var_3A0
  loc_C23402: from_stack_2 = Me.Item(from_stack_1)
  loc_C23407: FLdPr var_3A4
  loc_C2340A:  = Me.Value
  loc_C2340F: FLdRfVar var_2A8
  loc_C23412: LitVarStr var_1A4, vbNullString
  loc_C23417: HardType
  loc_C23418: EqVar var_334
  loc_C2341C: AndVar var_384
  loc_C23420: CBoolVarNull
  loc_C23422: FFreeAd var_398 = "": var_3A0 = ""
  loc_C2342B: FFreeVar var_14C = "": var_178 = ""
  loc_C23434: BranchF loc_C23472
  loc_C23437: FLdRfVar var_14C
  loc_C2343A: FLdRfVar var_39C
  loc_C2343D: LitVarStr var_12C, "PefiEsca"
  loc_C23442: PopAdLdVar
  loc_C23443: FLdRfVar var_398
  loc_C23446: FLdPr Me
  loc_C23449: MemLdPr global_64
  loc_C2344C:  = Me.Fields
  loc_C23451: FLdPr var_398
  loc_C23454: from_stack_2 = Me.Item(from_stack_1)
  loc_C23459: FLdPr var_39C
  loc_C2345C:  = Me.Value
  loc_C23461: FLdRfVar var_14C
  loc_C23464: CR4Var
  loc_C23465: FStFPR8 var_D0
  loc_C23468: FFreeAd var_398 = ""
  loc_C2346F: FFree1Var var_14C = ""
  loc_C23472: FLdRfVar var_39C
  loc_C23475: LitVarStr var_12C, "FedrRexp"
  loc_C2347A: PopAdLdVar
  loc_C2347B: FLdRfVar var_398
  loc_C2347E: FLdPr Me
  loc_C23481: MemLdPr global_60
  loc_C23484:  = Me.Fields
  loc_C23489: FLdPr var_398
  loc_C2348C: from_stack_2 = Me.Item(from_stack_1)
  loc_C23491: FLdZeroAd var_39C
  loc_C23494: CVarAd
  loc_C23498: ImpAdCallI2 IsNull()
  loc_C2349D: FLdRfVar var_3A4
  loc_C234A0: LitVarStr var_13C, "FehrRexp"
  loc_C234A5: PopAdLdVar
  loc_C234A6: FLdRfVar var_3A0
  loc_C234A9: FLdPr Me
  loc_C234AC: MemLdPr global_60
  loc_C234AF:  = Me.Fields
  loc_C234B4: FLdPr var_3A0
  loc_C234B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C234BC: FLdZeroAd var_3A4
  loc_C234BF: CVarAd
  loc_C234C3: ImpAdCallI2 IsNull()
  loc_C234C8: AndI4
  loc_C234C9: FFreeAd var_398 = ""
  loc_C234D0: FFreeVar var_14C = ""
  loc_C234D7: BranchF loc_C234E9
  loc_C234DA: LitStr "2000-01-01"
  loc_C234DD: FStStrCopy var_104
  loc_C234E0: LitStr "2000-01-01"
  loc_C234E3: FStStrCopy var_108
  loc_C234E6: Branch loc_C23757
  loc_C234E9: FLdRfVar var_39C
  loc_C234EC: LitVarStr var_12C, "FedrRexp"
  loc_C234F1: PopAdLdVar
  loc_C234F2: FLdRfVar var_398
  loc_C234F5: FLdPr Me
  loc_C234F8: MemLdPr global_60
  loc_C234FB:  = Me.Fields
  loc_C23500: FLdPr var_398
  loc_C23503: from_stack_2 = Me.Item(from_stack_1)
  loc_C23508: FLdZeroAd var_39C
  loc_C2350B: CVarAd
  loc_C2350F: ImpAdCallI2 IsNull()
  loc_C23514: NotI4
  loc_C23515: FLdRfVar var_3A4
  loc_C23518: LitVarStr var_13C, "FehrRexp"
  loc_C2351D: PopAdLdVar
  loc_C2351E: FLdRfVar var_3A0
  loc_C23521: FLdPr Me
  loc_C23524: MemLdPr global_60
  loc_C23527:  = Me.Fields
  loc_C2352C: FLdPr var_3A0
  loc_C2352F: from_stack_2 = Me.Item(from_stack_1)
  loc_C23534: FLdZeroAd var_3A4
  loc_C23537: CVarAd
  loc_C2353B: ImpAdCallI2 IsNull()
  loc_C23540: NotI4
  loc_C23541: AndI4
  loc_C23542: FFreeAd var_398 = ""
  loc_C23549: FFreeVar var_14C = ""
  loc_C23550: BranchF loc_C235CC
  loc_C23553: FLdRfVar var_14C
  loc_C23556: FLdRfVar var_39C
  loc_C23559: LitVarStr var_12C, "FedrRexp"
  loc_C2355E: PopAdLdVar
  loc_C2355F: FLdRfVar var_398
  loc_C23562: FLdPr Me
  loc_C23565: MemLdPr global_60
  loc_C23568:  = Me.Fields
  loc_C2356D: FLdPr var_398
  loc_C23570: from_stack_2 = Me.Item(from_stack_1)
  loc_C23575: FLdPr var_39C
  loc_C23578:  = Me.Value
  loc_C2357D: FLdRfVar var_14C
  loc_C23580: CStrVarTmp
  loc_C23581: FStStr var_104
  loc_C23584: FFreeAd var_398 = ""
  loc_C2358B: FFree1Var var_14C = ""
  loc_C2358E: FLdRfVar var_14C
  loc_C23591: FLdRfVar var_39C
  loc_C23594: LitVarStr var_12C, "FehrRexp"
  loc_C23599: PopAdLdVar
  loc_C2359A: FLdRfVar var_398
  loc_C2359D: FLdPr Me
  loc_C235A0: MemLdPr global_60
  loc_C235A3:  = Me.Fields
  loc_C235A8: FLdPr var_398
  loc_C235AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C235B0: FLdPr var_39C
  loc_C235B3:  = Me.Value
  loc_C235B8: FLdRfVar var_14C
  loc_C235BB: CStrVarTmp
  loc_C235BC: FStStr var_108
  loc_C235BF: FFreeAd var_398 = ""
  loc_C235C6: FFree1Var var_14C = ""
  loc_C235C9: Branch loc_C23757
  loc_C235CC: FLdRfVar var_39C
  loc_C235CF: LitVarStr var_12C, "FedrRexp"
  loc_C235D4: PopAdLdVar
  loc_C235D5: FLdRfVar var_398
  loc_C235D8: FLdPr Me
  loc_C235DB: MemLdPr global_60
  loc_C235DE:  = Me.Fields
  loc_C235E3: FLdPr var_398
  loc_C235E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C235EB: FLdZeroAd var_39C
  loc_C235EE: CVarAd
  loc_C235F2: ImpAdCallI2 IsNull()
  loc_C235F7: NotI4
  loc_C235F8: FLdRfVar var_3A4
  loc_C235FB: LitVarStr var_13C, "FehrRexp"
  loc_C23600: PopAdLdVar
  loc_C23601: FLdRfVar var_3A0
  loc_C23604: FLdPr Me
  loc_C23607: MemLdPr global_60
  loc_C2360A:  = Me.Fields
  loc_C2360F: FLdPr var_3A0
  loc_C23612: from_stack_2 = Me.Item(from_stack_1)
  loc_C23617: FLdZeroAd var_3A4
  loc_C2361A: CVarAd
  loc_C2361E: ImpAdCallI2 IsNull()
  loc_C23623: AndI4
  loc_C23624: FFreeAd var_398 = ""
  loc_C2362B: FFreeVar var_14C = ""
  loc_C23632: BranchF loc_C2368C
  loc_C23635: FLdRfVar var_14C
  loc_C23638: FLdRfVar var_39C
  loc_C2363B: LitVarStr var_12C, "FedrRexp"
  loc_C23640: PopAdLdVar
  loc_C23641: FLdRfVar var_398
  loc_C23644: FLdPr Me
  loc_C23647: MemLdPr global_60
  loc_C2364A:  = Me.Fields
  loc_C2364F: FLdPr var_398
  loc_C23652: from_stack_2 = Me.Item(from_stack_1)
  loc_C23657: FLdPr var_39C
  loc_C2365A:  = Me.Value
  loc_C2365F: FLdRfVar var_14C
  loc_C23662: CStrVarTmp
  loc_C23663: FStStr var_104
  loc_C23666: FFreeAd var_398 = ""
  loc_C2366D: FFree1Var var_14C = ""
  loc_C23670: LitI2_Byte &H1F
  loc_C23672: LitI2_Byte &HC
  loc_C23674: ImpAdLdI2 MemVar_C3D064
  loc_C23677: FLdRfVar var_14C
  loc_C2367A: ImpAdCallFPR4  = DateSerial(, , )
  loc_C2367F: FLdRfVar var_14C
  loc_C23682: CStrVarTmp
  loc_C23683: FStStr var_108
  loc_C23686: FFree1Var var_14C = ""
  loc_C23689: Branch loc_C23757
  loc_C2368C: FLdRfVar var_39C
  loc_C2368F: LitVarStr var_12C, "FedrRexp"
  loc_C23694: PopAdLdVar
  loc_C23695: FLdRfVar var_398
  loc_C23698: FLdPr Me
  loc_C2369B: MemLdPr global_60
  loc_C2369E:  = Me.Fields
  loc_C236A3: FLdPr var_398
  loc_C236A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C236AB: FLdZeroAd var_39C
  loc_C236AE: CVarAd
  loc_C236B2: ImpAdCallI2 IsNull()
  loc_C236B7: FLdRfVar var_3A4
  loc_C236BA: LitVarStr var_13C, "FehrRexp"
  loc_C236BF: PopAdLdVar
  loc_C236C0: FLdRfVar var_3A0
  loc_C236C3: FLdPr Me
  loc_C236C6: MemLdPr global_60
  loc_C236C9:  = Me.Fields
  loc_C236CE: FLdPr var_3A0
  loc_C236D1: from_stack_2 = Me.Item(from_stack_1)
  loc_C236D6: FLdZeroAd var_3A4
  loc_C236D9: CVarAd
  loc_C236DD: ImpAdCallI2 IsNull()
  loc_C236E2: NotI4
  loc_C236E3: AndI4
  loc_C236E4: FFreeAd var_398 = ""
  loc_C236EB: FFreeVar var_14C = ""
  loc_C236F2: BranchF loc_C2374C
  loc_C236F5: LitI2_Byte 1
  loc_C236F7: LitI2_Byte 1
  loc_C236F9: ImpAdLdI2 MemVar_C3D064
  loc_C236FC: FLdRfVar var_14C
  loc_C236FF: ImpAdCallFPR4  = DateSerial(, , )
  loc_C23704: FLdRfVar var_14C
  loc_C23707: CStrVarTmp
  loc_C23708: FStStr var_104
  loc_C2370B: FFree1Var var_14C = ""
  loc_C2370E: FLdRfVar var_14C
  loc_C23711: FLdRfVar var_39C
  loc_C23714: LitVarStr var_12C, "FehrRexp"
  loc_C23719: PopAdLdVar
  loc_C2371A: FLdRfVar var_398
  loc_C2371D: FLdPr Me
  loc_C23720: MemLdPr global_60
  loc_C23723:  = Me.Fields
  loc_C23728: FLdPr var_398
  loc_C2372B: from_stack_2 = Me.Item(from_stack_1)
  loc_C23730: FLdPr var_39C
  loc_C23733:  = Me.Value
  loc_C23738: FLdRfVar var_14C
  loc_C2373B: CStrVarTmp
  loc_C2373C: FStStr var_108
  loc_C2373F: FFreeAd var_398 = ""
  loc_C23746: FFree1Var var_14C = ""
  loc_C23749: Branch loc_C23757
  loc_C2374C: LitStr "Fecha Riesgo Fiscal"
  loc_C2374F: LitStr "Consulte con el Proveedor del Software...."
  loc_C23752: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C23757: FLdRfVar var_39C
  loc_C2375A: LitVarStr var_12C, "PerfEsca"
  loc_C2375F: PopAdLdVar
  loc_C23760: FLdRfVar var_398
  loc_C23763: FLdPr Me
  loc_C23766: MemLdPr global_64
  loc_C23769:  = Me.Fields
  loc_C2376E: FLdPr var_398
  loc_C23771: from_stack_2 = Me.Item(from_stack_1)
  loc_C23776: FLdRfVar var_178
  loc_C23779: FLdZeroAd var_39C
  loc_C2377C: CVarAd
  loc_C23780: ImpAdCallHresult  = CDec()
  loc_C23785: FLdRfVar var_178
  loc_C23788: LitVarI2 var_13C, 0
  loc_C2378D: HardType
  loc_C2378E: GtVar var_218
  loc_C23792: ILdRf var_90
  loc_C23795: CDateStr
  loc_C23797: ILdRf var_104
  loc_C2379A: CDateStr
  loc_C2379C: GtR4
  loc_C2379D: CVarBoolI2 var_168
  loc_C237A1: AndVar var_2A8
  loc_C237A5: ILdRf var_90
  loc_C237A8: CDateStr
  loc_C237AA: ILdRf var_108
  loc_C237AD: CDateStr
  loc_C237AF: LtR8
  loc_C237B0: CVarBoolI2 var_1A4
  loc_C237B4: AndVar var_334
  loc_C237B8: CBoolVarNull
  loc_C237BA: FFree1Ad var_398
  loc_C237BD: FFreeVar var_14C = "": var_178 = "": var_168 = ""
  loc_C237C8: BranchF loc_C23806
  loc_C237CB: FLdRfVar var_14C
  loc_C237CE: FLdRfVar var_39C
  loc_C237D1: LitVarStr var_12C, "PerfEsca"
  loc_C237D6: PopAdLdVar
  loc_C237D7: FLdRfVar var_398
  loc_C237DA: FLdPr Me
  loc_C237DD: MemLdPr global_64
  loc_C237E0:  = Me.Fields
  loc_C237E5: FLdPr var_398
  loc_C237E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C237ED: FLdPr var_39C
  loc_C237F0:  = Me.Value
  loc_C237F5: FLdRfVar var_14C
  loc_C237F8: CR4Var
  loc_C237F9: FStFPR8 var_D8
  loc_C237FC: FFreeAd var_398 = ""
  loc_C23803: FFree1Var var_14C = ""
  loc_C23806: FLdRfVar var_39C
  loc_C23809: LitVarStr var_12C, "FedeRexp"
  loc_C2380E: PopAdLdVar
  loc_C2380F: FLdRfVar var_398
  loc_C23812: FLdPr Me
  loc_C23815: MemLdPr global_60
  loc_C23818:  = Me.Fields
  loc_C2381D: FLdPr var_398
  loc_C23820: from_stack_2 = Me.Item(from_stack_1)
  loc_C23825: FLdZeroAd var_39C
  loc_C23828: CVarAd
  loc_C2382C: ImpAdCallI2 IsNull()
  loc_C23831: FLdRfVar var_3A4
  loc_C23834: LitVarStr var_13C, "FeheRexp"
  loc_C23839: PopAdLdVar
  loc_C2383A: FLdRfVar var_3A0
  loc_C2383D: FLdPr Me
  loc_C23840: MemLdPr global_60
  loc_C23843:  = Me.Fields
  loc_C23848: FLdPr var_3A0
  loc_C2384B: from_stack_2 = Me.Item(from_stack_1)
  loc_C23850: FLdZeroAd var_3A4
  loc_C23853: CVarAd
  loc_C23857: ImpAdCallI2 IsNull()
  loc_C2385C: AndI4
  loc_C2385D: FFreeAd var_398 = ""
  loc_C23864: FFreeVar var_14C = ""
  loc_C2386B: BranchF loc_C2387D
  loc_C2386E: LitStr "2000-01-01"
  loc_C23871: FStStrCopy var_FC
  loc_C23874: LitStr "2000-01-01"
  loc_C23877: FStStrCopy var_100
  loc_C2387A: Branch loc_C23AEB
  loc_C2387D: FLdRfVar var_39C
  loc_C23880: LitVarStr var_12C, "FedeRexp"
  loc_C23885: PopAdLdVar
  loc_C23886: FLdRfVar var_398
  loc_C23889: FLdPr Me
  loc_C2388C: MemLdPr global_60
  loc_C2388F:  = Me.Fields
  loc_C23894: FLdPr var_398
  loc_C23897: from_stack_2 = Me.Item(from_stack_1)
  loc_C2389C: FLdZeroAd var_39C
  loc_C2389F: CVarAd
  loc_C238A3: ImpAdCallI2 IsNull()
  loc_C238A8: NotI4
  loc_C238A9: FLdRfVar var_3A4
  loc_C238AC: LitVarStr var_13C, "FeheRexp"
  loc_C238B1: PopAdLdVar
  loc_C238B2: FLdRfVar var_3A0
  loc_C238B5: FLdPr Me
  loc_C238B8: MemLdPr global_60
  loc_C238BB:  = Me.Fields
  loc_C238C0: FLdPr var_3A0
  loc_C238C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C238C8: FLdZeroAd var_3A4
  loc_C238CB: CVarAd
  loc_C238CF: ImpAdCallI2 IsNull()
  loc_C238D4: NotI4
  loc_C238D5: AndI4
  loc_C238D6: FFreeAd var_398 = ""
  loc_C238DD: FFreeVar var_14C = ""
  loc_C238E4: BranchF loc_C23960
  loc_C238E7: FLdRfVar var_14C
  loc_C238EA: FLdRfVar var_39C
  loc_C238ED: LitVarStr var_12C, "FedeRexp"
  loc_C238F2: PopAdLdVar
  loc_C238F3: FLdRfVar var_398
  loc_C238F6: FLdPr Me
  loc_C238F9: MemLdPr global_60
  loc_C238FC:  = Me.Fields
  loc_C23901: FLdPr var_398
  loc_C23904: from_stack_2 = Me.Item(from_stack_1)
  loc_C23909: FLdPr var_39C
  loc_C2390C:  = Me.Value
  loc_C23911: FLdRfVar var_14C
  loc_C23914: CStrVarTmp
  loc_C23915: FStStr var_FC
  loc_C23918: FFreeAd var_398 = ""
  loc_C2391F: FFree1Var var_14C = ""
  loc_C23922: FLdRfVar var_14C
  loc_C23925: FLdRfVar var_39C
  loc_C23928: LitVarStr var_12C, "FeheRexp"
  loc_C2392D: PopAdLdVar
  loc_C2392E: FLdRfVar var_398
  loc_C23931: FLdPr Me
  loc_C23934: MemLdPr global_60
  loc_C23937:  = Me.Fields
  loc_C2393C: FLdPr var_398
  loc_C2393F: from_stack_2 = Me.Item(from_stack_1)
  loc_C23944: FLdPr var_39C
  loc_C23947:  = Me.Value
  loc_C2394C: FLdRfVar var_14C
  loc_C2394F: CStrVarTmp
  loc_C23950: FStStr var_100
  loc_C23953: FFreeAd var_398 = ""
  loc_C2395A: FFree1Var var_14C = ""
  loc_C2395D: Branch loc_C23AEB
  loc_C23960: FLdRfVar var_39C
  loc_C23963: LitVarStr var_12C, "FedeRexp"
  loc_C23968: PopAdLdVar
  loc_C23969: FLdRfVar var_398
  loc_C2396C: FLdPr Me
  loc_C2396F: MemLdPr global_60
  loc_C23972:  = Me.Fields
  loc_C23977: FLdPr var_398
  loc_C2397A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2397F: FLdZeroAd var_39C
  loc_C23982: CVarAd
  loc_C23986: ImpAdCallI2 IsNull()
  loc_C2398B: NotI4
  loc_C2398C: FLdRfVar var_3A4
  loc_C2398F: LitVarStr var_13C, "FeheRexp"
  loc_C23994: PopAdLdVar
  loc_C23995: FLdRfVar var_3A0
  loc_C23998: FLdPr Me
  loc_C2399B: MemLdPr global_60
  loc_C2399E:  = Me.Fields
  loc_C239A3: FLdPr var_3A0
  loc_C239A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C239AB: FLdZeroAd var_3A4
  loc_C239AE: CVarAd
  loc_C239B2: ImpAdCallI2 IsNull()
  loc_C239B7: AndI4
  loc_C239B8: FFreeAd var_398 = ""
  loc_C239BF: FFreeVar var_14C = ""
  loc_C239C6: BranchF loc_C23A20
  loc_C239C9: FLdRfVar var_14C
  loc_C239CC: FLdRfVar var_39C
  loc_C239CF: LitVarStr var_12C, "FedeRexp"
  loc_C239D4: PopAdLdVar
  loc_C239D5: FLdRfVar var_398
  loc_C239D8: FLdPr Me
  loc_C239DB: MemLdPr global_60
  loc_C239DE:  = Me.Fields
  loc_C239E3: FLdPr var_398
  loc_C239E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C239EB: FLdPr var_39C
  loc_C239EE:  = Me.Value
  loc_C239F3: FLdRfVar var_14C
  loc_C239F6: CStrVarTmp
  loc_C239F7: FStStr var_FC
  loc_C239FA: FFreeAd var_398 = ""
  loc_C23A01: FFree1Var var_14C = ""
  loc_C23A04: LitI2_Byte &H1F
  loc_C23A06: LitI2_Byte &HC
  loc_C23A08: ImpAdLdI2 MemVar_C3D064
  loc_C23A0B: FLdRfVar var_14C
  loc_C23A0E: ImpAdCallFPR4  = DateSerial(, , )
  loc_C23A13: FLdRfVar var_14C
  loc_C23A16: CStrVarTmp
  loc_C23A17: FStStr var_100
  loc_C23A1A: FFree1Var var_14C = ""
  loc_C23A1D: Branch loc_C23AEB
  loc_C23A20: FLdRfVar var_39C
  loc_C23A23: LitVarStr var_12C, "FedeRexp"
  loc_C23A28: PopAdLdVar
  loc_C23A29: FLdRfVar var_398
  loc_C23A2C: FLdPr Me
  loc_C23A2F: MemLdPr global_60
  loc_C23A32:  = Me.Fields
  loc_C23A37: FLdPr var_398
  loc_C23A3A: from_stack_2 = Me.Item(from_stack_1)
  loc_C23A3F: FLdZeroAd var_39C
  loc_C23A42: CVarAd
  loc_C23A46: ImpAdCallI2 IsNull()
  loc_C23A4B: FLdRfVar var_3A4
  loc_C23A4E: LitVarStr var_13C, "FeheRexp"
  loc_C23A53: PopAdLdVar
  loc_C23A54: FLdRfVar var_3A0
  loc_C23A57: FLdPr Me
  loc_C23A5A: MemLdPr global_60
  loc_C23A5D:  = Me.Fields
  loc_C23A62: FLdPr var_3A0
  loc_C23A65: from_stack_2 = Me.Item(from_stack_1)
  loc_C23A6A: FLdZeroAd var_3A4
  loc_C23A6D: CVarAd
  loc_C23A71: ImpAdCallI2 IsNull()
  loc_C23A76: NotI4
  loc_C23A77: AndI4
  loc_C23A78: FFreeAd var_398 = ""
  loc_C23A7F: FFreeVar var_14C = ""
  loc_C23A86: BranchF loc_C23AE0
  loc_C23A89: LitI2_Byte 1
  loc_C23A8B: LitI2_Byte 1
  loc_C23A8D: ImpAdLdI2 MemVar_C3D064
  loc_C23A90: FLdRfVar var_14C
  loc_C23A93: ImpAdCallFPR4  = DateSerial(, , )
  loc_C23A98: FLdRfVar var_14C
  loc_C23A9B: CStrVarTmp
  loc_C23A9C: FStStr var_FC
  loc_C23A9F: FFree1Var var_14C = ""
  loc_C23AA2: FLdRfVar var_14C
  loc_C23AA5: FLdRfVar var_39C
  loc_C23AA8: LitVarStr var_12C, "FeheRexp"
  loc_C23AAD: PopAdLdVar
  loc_C23AAE: FLdRfVar var_398
  loc_C23AB1: FLdPr Me
  loc_C23AB4: MemLdPr global_60
  loc_C23AB7:  = Me.Fields
  loc_C23ABC: FLdPr var_398
  loc_C23ABF: from_stack_2 = Me.Item(from_stack_1)
  loc_C23AC4: FLdPr var_39C
  loc_C23AC7:  = Me.Value
  loc_C23ACC: FLdRfVar var_14C
  loc_C23ACF: CStrVarTmp
  loc_C23AD0: FStStr var_100
  loc_C23AD3: FFreeAd var_398 = ""
  loc_C23ADA: FFree1Var var_14C = ""
  loc_C23ADD: Branch loc_C23AEB
  loc_C23AE0: LitStr "Fecha Exención"
  loc_C23AE3: LitStr "Consulte con el Proveedor del Software...."
  loc_C23AE6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C23AEB: ILdRf var_90
  loc_C23AEE: CDateStr
  loc_C23AF0: ILdRf var_FC
  loc_C23AF3: CDateStr
  loc_C23AF5: GeR8
  loc_C23AF6: ILdRf var_90
  loc_C23AF9: CDateStr
  loc_C23AFB: ILdRf var_100
  loc_C23AFE: CDateStr
  loc_C23B00: LeR8
  loc_C23B01: AndI4
  loc_C23B02: BranchF loc_C23B43
  loc_C23B05: FLdRfVar var_14C
  loc_C23B08: FLdRfVar var_39C
  loc_C23B0B: LitVarStr var_12C, "PoexRexp"
  loc_C23B10: PopAdLdVar
  loc_C23B11: FLdRfVar var_398
  loc_C23B14: FLdPr Me
  loc_C23B17: MemLdPr global_60
  loc_C23B1A:  = Me.Fields
  loc_C23B1F: FLdPr var_398
  loc_C23B22: from_stack_2 = Me.Item(from_stack_1)
  loc_C23B27: FLdPr var_39C
  loc_C23B2A:  = Me.Value
  loc_C23B2F: FLdRfVar var_14C
  loc_C23B32: CR4Var
  loc_C23B33: FStFPR8 var_E0
  loc_C23B36: FFreeAd var_398 = ""
  loc_C23B3D: FFree1Var var_14C = ""
  loc_C23B40: Branch loc_C23B49
  loc_C23B43: LitI2_Byte 0
  loc_C23B45: CR8I2
  loc_C23B46: FStFPR8 var_E0
  loc_C23B49: LitI2_Byte 0
  loc_C23B4B: CR8I2
  loc_C23B4C: FStFPR8 var_110
  loc_C23B4F: FLdFPR8 var_B8
  loc_C23B52: CVarR8
  loc_C23B56: FLdRfVar var_14C
  loc_C23B59: FLdRfVar var_39C
  loc_C23B5C: LitVarStr var_12C, "BaseEsca"
  loc_C23B61: PopAdLdVar
  loc_C23B62: FLdRfVar var_398
  loc_C23B65: FLdPr Me
  loc_C23B68: MemLdPr global_64
  loc_C23B6B:  = Me.Fields
  loc_C23B70: FLdPr var_398
  loc_C23B73: from_stack_2 = Me.Item(from_stack_1)
  loc_C23B78: FLdPr var_39C
  loc_C23B7B:  = Me.Value
  loc_C23B80: FLdRfVar var_14C
  loc_C23B83: DivVar var_178
  loc_C23B87: CStrVarVal var_114
  loc_C23B8B: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C23B90: FStStrNoPop var_118
  loc_C23B93: CR8Str
  loc_C23B95: FStFPR8 var_110
  loc_C23B98: FFreeStr var_114 = ""
  loc_C23B9F: FFreeAd var_398 = ""
  loc_C23BA6: FFree1Var var_14C = ""
  loc_C23BA9: FLdFPR8 var_110
  loc_C23BAC: CVarR8
  loc_C23BB0: FLdRfVar var_14C
  loc_C23BB3: FLdRfVar var_39C
  loc_C23BB6: LitVarStr var_12C, "ImnoDere"
  loc_C23BBB: PopAdLdVar
  loc_C23BBC: FLdRfVar var_398
  loc_C23BBF: FLdPr Me
  loc_C23BC2: MemLdPr global_60
  loc_C23BC5:  = Me.Fields
  loc_C23BCA: FLdPr var_398
  loc_C23BCD: from_stack_2 = Me.Item(from_stack_1)
  loc_C23BD2: FLdPr var_39C
  loc_C23BD5:  = Me.Value
  loc_C23BDA: FLdRfVar var_14C
  loc_C23BDD: SubVar var_178
  loc_C23BE1: FLdRfVar var_218
  loc_C23BE4: FLdRfVar var_3A4
  loc_C23BE7: LitVarStr var_168, "ImnoEsca"
  loc_C23BEC: PopAdLdVar
  loc_C23BED: FLdRfVar var_3A0
  loc_C23BF0: FLdPr Me
  loc_C23BF3: MemLdPr global_64
  loc_C23BF6:  = Me.Fields
  loc_C23BFB: FLdPr var_3A0
  loc_C23BFE: from_stack_2 = Me.Item(from_stack_1)
  loc_C23C03: FLdPr var_3A4
  loc_C23C06:  = Me.Value
  loc_C23C0B: FLdRfVar var_218
  loc_C23C0E: SubVar var_2A8
  loc_C23C12: FLdRfVar var_334
  loc_C23C15: FLdRfVar var_3BC
  loc_C23C18: LitVarStr var_1A4, "AlicEsca"
  loc_C23C1D: PopAdLdVar
  loc_C23C1E: FLdRfVar var_3B8
  loc_C23C21: FLdPr Me
  loc_C23C24: MemLdPr global_64
  loc_C23C27:  = Me.Fields
  loc_C23C2C: FLdPr var_3B8
  loc_C23C2F: from_stack_2 = Me.Item(from_stack_1)
  loc_C23C34: FLdPr var_3BC
  loc_C23C37:  = Me.Value
  loc_C23C3C: FLdRfVar var_334
  loc_C23C3F: LitVarI2 var_1B4, 100
  loc_C23C44: DivVar var_384
  loc_C23C48: MulVar var_3B4
  loc_C23C4C: FLdRfVar var_3CC
  loc_C23C4F: FLdRfVar var_3F4
  loc_C23C52: LitVarStr var_1C4, "ImfiEsca"
  loc_C23C57: PopAdLdVar
  loc_C23C58: FLdRfVar var_3F0
  loc_C23C5B: FLdPr Me
  loc_C23C5E: MemLdPr global_64
  loc_C23C61:  = Me.Fields
  loc_C23C66: FLdPr var_3F0
  loc_C23C69: from_stack_2 = Me.Item(from_stack_1)
  loc_C23C6E: FLdPr var_3F4
  loc_C23C71:  = Me.Value
  loc_C23C76: FLdRfVar var_3CC
  loc_C23C79: AddVar var_3DC
  loc_C23C7D: FLdFPR8 var_C0
  loc_C23C80: CVarR8
  loc_C23C84: SubVar var_3EC
  loc_C23C88: CStrVarVal var_114
  loc_C23C8C: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C23C91: FStStrNoPop var_118
  loc_C23C94: CR8Str
  loc_C23C96: FStFPR8 var_C8
  loc_C23C99: FFreeStr var_114 = ""
  loc_C23CA0: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = ""
  loc_C23CB3: FFreeVar var_14C = "": var_218 = "": var_334 = "": var_3CC = ""
  loc_C23CC0: FLdFPR8 var_D0
  loc_C23CC3: LitI2_Byte 0
  loc_C23CC5: CR8I2
  loc_C23CC6: GtR4
  loc_C23CC7: BranchF loc_C23CD4
  loc_C23CCA: FLdFPR8 var_C8
  loc_C23CCD: FLdFPR8 var_D0
  loc_C23CD0: MulR8
  loc_C23CD1: FStFPR8 var_E8
  loc_C23CD4: FLdFPR8 var_D8
  loc_C23CD7: LitI2_Byte 0
  loc_C23CD9: CR8I2
  loc_C23CDA: GtR4
  loc_C23CDB: BranchF loc_C23CE8
  loc_C23CDE: FLdFPR8 var_C8
  loc_C23CE1: FLdFPR8 var_D8
  loc_C23CE4: MulR8
  loc_C23CE5: FStFPR8 var_F0
  loc_C23CE8: FLdRfVar var_C8
  loc_C23CEB: CVarRef
  loc_C23CF0: LitVarI2 var_14C, 0
  loc_C23CF5: FLdFPR8 var_E8
  loc_C23CF8: LitI2_Byte 0
  loc_C23CFA: CR8I2
  loc_C23CFB: GtR4
  loc_C23CFC: CVarBoolI2 var_12C
  loc_C23D00: FLdRfVar var_178
  loc_C23D03: ImpAdCallFPR4  = IIf(, , )
  loc_C23D08: FLdRfVar var_178
  loc_C23D0B: FLdFPR8 var_E8
  loc_C23D0E: CVarR8
  loc_C23D12: AddVar var_218
  loc_C23D16: CR4Var
  loc_C23D17: FStFPR8 var_C8
  loc_C23D1A: FFreeVar var_12C = "": var_14C = "": var_178 = ""
  loc_C23D25: FLdRfVar var_C8
  loc_C23D28: CVarRef
  loc_C23D2D: LitVarI2 var_14C, 0
  loc_C23D32: FLdFPR8 var_F0
  loc_C23D35: LitI2_Byte 0
  loc_C23D37: CR8I2
  loc_C23D38: GtR4
  loc_C23D39: CVarBoolI2 var_12C
  loc_C23D3D: FLdRfVar var_178
  loc_C23D40: ImpAdCallFPR4  = IIf(, , )
  loc_C23D45: FLdRfVar var_178
  loc_C23D48: FLdFPR8 var_F0
  loc_C23D4B: CVarR8
  loc_C23D4F: AddVar var_218
  loc_C23D53: CR4Var
  loc_C23D54: FStFPR8 var_C8
  loc_C23D57: FFreeVar var_12C = "": var_14C = "": var_178 = ""
  loc_C23D62: FLdFPR8 var_E0
  loc_C23D65: LitI2_Byte 0
  loc_C23D67: CR8I2
  loc_C23D68: GtR4
  loc_C23D69: BranchF loc_C23DCB
  loc_C23D6C: FLdRfVar var_14C
  loc_C23D6F: FLdRfVar var_39C
  loc_C23D72: LitVarStr var_12C, "PoexRexp"
  loc_C23D77: PopAdLdVar
  loc_C23D78: FLdRfVar var_398
  loc_C23D7B: FLdPr Me
  loc_C23D7E: MemLdPr global_60
  loc_C23D81:  = Me.Fields
  loc_C23D86: FLdPr var_398
  loc_C23D89: from_stack_2 = Me.Item(from_stack_1)
  loc_C23D8E: FLdPr var_39C
  loc_C23D91:  = Me.Value
  loc_C23D96: FLdRfVar var_14C
  loc_C23D99: CStrVarTmp
  loc_C23D9A: FStStrNoPop var_114
  loc_C23D9D: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C23DA2: FStStr var_11C
  loc_C23DA5: FLdFPR8 var_C8
  loc_C23DA8: FLdZeroAd var_11C
  loc_C23DAB: FStStrNoPop var_118
  loc_C23DAE: CR8Str
  loc_C23DB0: MulR8
  loc_C23DB1: LitI2_Byte &H64
  loc_C23DB3: CR8I2
  loc_C23DB4: DivR8
  loc_C23DB5: FStFPR8 var_F8
  loc_C23DB8: FFreeStr var_114 = "": var_118 = ""
  loc_C23DC1: FFreeAd var_398 = ""
  loc_C23DC8: FFree1Var var_14C = ""
  loc_C23DCB: FLdFPR8 var_F8
  loc_C23DCE: CStrR8
  loc_C23DD0: FStStrNoPop var_118
  loc_C23DD3: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C23DD8: FStStr var_154
  loc_C23DDB: FLdFPR8 var_C8
  loc_C23DDE: CStrR8
  loc_C23DE0: FStStrNoPop var_114
  loc_C23DE3: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C23DE8: FStStrNoPop var_11C
  loc_C23DEB: CR8Str
  loc_C23DED: FLdZeroAd var_154
  loc_C23DF0: FStStrNoPop var_150
  loc_C23DF3: CR8Str
  loc_C23DF5: SubR4
  loc_C23DF6: FStFPR8 var_C8
  loc_C23DF9: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = ""
  loc_C23E06: LitI4 2
  loc_C23E0B: FLdRfVar var_C8
  loc_C23E0E: CVarRef
  loc_C23E13: FLdRfVar var_14C
  loc_C23E16: ImpAdCallFPR4  = Round(, )
  loc_C23E1B: FLdRfVar var_14C
  loc_C23E1E: CR4Var
  loc_C23E1F: FStFPR8 var_C8
  loc_C23E22: FFree1Var var_14C = ""
  loc_C23E25: FLdFPR8 var_C8
  loc_C23E28: LitI2_Byte 0
  loc_C23E2A: CR8I2
  loc_C23E2B: GtR4
  loc_C23E2C: BranchF loc_C2509B
  loc_C23E2F: FLdRfVar var_39C
  loc_C23E32: LitVarStr var_12C, "RemiEsca"
  loc_C23E37: PopAdLdVar
  loc_C23E38: FLdRfVar var_398
  loc_C23E3B: FLdPr Me
  loc_C23E3E: MemLdPr global_64
  loc_C23E41:  = Me.Fields
  loc_C23E46: FLdPr var_398
  loc_C23E49: from_stack_2 = Me.Item(from_stack_1)
  loc_C23E4E: FLdFPR8 var_C8
  loc_C23E51: CVarR8
  loc_C23E55: HardType
  loc_C23E56: LitI4 2
  loc_C23E5B: FLdZeroAd var_39C
  loc_C23E5E: CVarAd
  loc_C23E62: FLdRfVar var_178
  loc_C23E65: ImpAdCallFPR4  = Round(, )
  loc_C23E6A: FLdRfVar var_178
  loc_C23E6D: LtVarBool
  loc_C23E6F: FFree1Ad var_398
  loc_C23E72: FFreeVar var_14C = ""
  loc_C23E79: BranchF loc_C23F87
  loc_C23E7C: FLdRfVar var_14C
  loc_C23E7F: FLdRfVar var_39C
  loc_C23E82: LitVarStr var_12C, "DetaRete"
  loc_C23E87: PopAdLdVar
  loc_C23E88: FLdRfVar var_398
  loc_C23E8B: FLdPr Me
  loc_C23E8E: MemLdPr global_56
  loc_C23E91:  = Me.Fields
  loc_C23E96: FLdPr var_398
  loc_C23E99: from_stack_2 = Me.Item(from_stack_1)
  loc_C23E9E: FLdPr var_39C
  loc_C23EA1:  = Me.Value
  loc_C23EA6: LitI4 1
  loc_C23EAB: LitI4 1
  loc_C23EB0: LitVarStr var_1B4, "currency"
  loc_C23EB5: FStVarCopyObj var_2A8
  loc_C23EB8: FLdRfVar var_2A8
  loc_C23EBB: FLdRfVar var_C8
  loc_C23EBE: CVarRef
  loc_C23EC3: ImpAdCallI2 Format$(, )
  loc_C23EC8: FStStr var_118
  loc_C23ECB: FLdRfVar var_3A4
  loc_C23ECE: LitVarStr var_1D8, "RemiEsca"
  loc_C23ED3: PopAdLdVar
  loc_C23ED4: FLdRfVar var_3A0
  loc_C23ED7: FLdPr Me
  loc_C23EDA: MemLdPr global_64
  loc_C23EDD:  = Me.Fields
  loc_C23EE2: FLdPr var_3A0
  loc_C23EE5: from_stack_2 = Me.Item(from_stack_1)
  loc_C23EEA: LitI4 1
  loc_C23EEF: LitI4 1
  loc_C23EF4: LitVarStr var_1E8, "currency"
  loc_C23EF9: FStVarCopyObj var_3DC
  loc_C23EFC: FLdRfVar var_3DC
  loc_C23EFF: FLdZeroAd var_3A4
  loc_C23F02: CVarAd
  loc_C23F06: ImpAdCallI2 Format$(, )
  loc_C23F0B: FStStr var_11C
  loc_C23F0E: LitI4 0
  loc_C23F13: LitVarStr var_13C, "La retención: "
  loc_C23F18: FLdRfVar var_14C
  loc_C23F1B: ConcatVar var_178
  loc_C23F1F: LitVarStr var_168, " de "
  loc_C23F24: ConcatVar var_218
  loc_C23F28: FLdZeroAd var_118
  loc_C23F2B: CVarStr var_334
  loc_C23F2E: ConcatVar var_384
  loc_C23F32: LitVarStr var_1C4, " NO supera el mínimo a retener ("
  loc_C23F37: ConcatVar var_3B4
  loc_C23F3B: FLdZeroAd var_11C
  loc_C23F3E: CVarStr var_3EC
  loc_C23F41: ConcatVar var_404
  loc_C23F45: LitVarStr var_1F8, "). Verifique..."
  loc_C23F4A: ConcatVar var_414
  loc_C23F4E: CStrVarVal var_114
  loc_C23F52: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C23F57: FFreeStr var_114 = "": var_118 = ""
  loc_C23F60: FFreeAd var_398 = "": var_39C = ""
  loc_C23F69: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_218 = "": var_334 = "": var_384 = "": var_3CC = "": var_3DC = "": var_3B4 = "": var_3EC = "": var_404 = ""
  loc_C23F84: Branch loc_C25098
  loc_C23F87: FLdRfVar var_39C
  loc_C23F8A: LitVarStr var_12C, "RemiEsca"
  loc_C23F8F: PopAdLdVar
  loc_C23F90: FLdRfVar var_398
  loc_C23F93: FLdPr Me
  loc_C23F96: MemLdPr global_64
  loc_C23F99:  = Me.Fields
  loc_C23F9E: FLdPr var_398
  loc_C23FA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C23FA6: FLdFPR8 var_C8
  loc_C23FA9: CVarR8
  loc_C23FAD: HardType
  loc_C23FAE: LitI4 2
  loc_C23FB3: FLdZeroAd var_39C
  loc_C23FB6: CVarAd
  loc_C23FBA: FLdRfVar var_178
  loc_C23FBD: ImpAdCallFPR4  = Round(, )
  loc_C23FC2: FLdRfVar var_178
  loc_C23FC5: GtVar var_218
  loc_C23FC9: FLdFPR8 var_C8
  loc_C23FCC: CVarR8
  loc_C23FD0: HardType
  loc_C23FD1: LitI4 2
  loc_C23FD6: FLdI2 var_A2
  loc_C23FD9: CI4UI1
  loc_C23FDA: ILdRf var_A8
  loc_C23FDD: AryLock
  loc_C23FE0: Ary1LdPr
  loc_C23FE1: MemLdRfVar from_stack_1.global_36
  loc_C23FE4: CVarRef
  loc_C23FE9: FLdRfVar var_2A8
  loc_C23FEC: ImpAdCallFPR4  = Round(, )
  loc_C23FF1: AryUnlock
  loc_C23FF4: FLdRfVar var_2A8
  loc_C23FF7: GtVar var_334
  loc_C23FFB: AndVar var_384
  loc_C23FFF: CBoolVarNull
  loc_C24001: FFree1Ad var_398
  loc_C24004: FFreeVar var_14C = "": var_178 = ""
  loc_C2400D: BranchF loc_C2411E
  loc_C24010: FLdRfVar var_14C
  loc_C24013: FLdRfVar var_39C
  loc_C24016: LitVarStr var_12C, "DetaRete"
  loc_C2401B: PopAdLdVar
  loc_C2401C: FLdRfVar var_398
  loc_C2401F: FLdPr Me
  loc_C24022: MemLdPr global_56
  loc_C24025:  = Me.Fields
  loc_C2402A: FLdPr var_398
  loc_C2402D: from_stack_2 = Me.Item(from_stack_1)
  loc_C24032: FLdPr var_39C
  loc_C24035:  = Me.Value
  loc_C2403A: FLdRfVar var_2A8
  loc_C2403D: FLdRfVar var_3A4
  loc_C24040: LitVarStr var_1A4, "DetaDere"
  loc_C24045: PopAdLdVar
  loc_C24046: FLdRfVar var_3A0
  loc_C24049: FLdPr Me
  loc_C2404C: MemLdPr global_60
  loc_C2404F:  = Me.Fields
  loc_C24054: FLdPr var_3A0
  loc_C24057: from_stack_2 = Me.Item(from_stack_1)
  loc_C2405C: FLdPr var_3A4
  loc_C2405F:  = Me.Value
  loc_C24064: LitI4 2
  loc_C24069: FLdI2 var_A2
  loc_C2406C: CI4UI1
  loc_C2406D: ILdRf var_A8
  loc_C24070: AryLock
  loc_C24073: Ary1LdPr
  loc_C24074: MemLdRfVar from_stack_1.global_36
  loc_C24077: CVarRef
  loc_C2407C: FLdRfVar var_3DC
  loc_C2407F: ImpAdCallFPR4  = Round(, )
  loc_C24084: AryUnlock
  loc_C24087: LitI4 0
  loc_C2408C: LitVarStr var_13C, "La Retención: "
  loc_C24091: FLdRfVar var_14C
  loc_C24094: ConcatVar var_178
  loc_C24098: LitVarStr var_168, ", Categoría: "
  loc_C2409D: ConcatVar var_218
  loc_C240A1: FLdRfVar var_2A8
  loc_C240A4: ConcatVar var_334
  loc_C240A8: LitVarStr var_1B4, " de "
  loc_C240AD: ConcatVar var_384
  loc_C240B1: FLdFPR8 var_C8
  loc_C240B4: CVarR8
  loc_C240B8: ConcatVar var_3B4
  loc_C240BC: LitVarStr var_1D8, " es mayor al importe facturado "
  loc_C240C1: ConcatVar var_3CC
  loc_C240C5: FLdRfVar var_3DC
  loc_C240C8: ConcatVar var_3EC
  loc_C240CC: LitVarStr var_1F8, "."
  loc_C240D1: ConcatVar var_404
  loc_C240D5: LitVarStr var_208, vbCrLf
  loc_C240DA: ConcatVar var_414
  loc_C240DE: LitVarStr var_268, "No se realizará ninguna Retención. Verifique..."
  loc_C240E3: ConcatVar var_424
  loc_C240E7: CStrVarVal var_114
  loc_C240EB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C240F0: FFree1Str var_114
  loc_C240F3: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C240FE: FFreeVar var_14C = "": var_178 = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = ""
  loc_C2411B: Branch loc_C25098
  loc_C2411E: FLdRfVar var_39C
  loc_C24121: LitVarStr var_12C, "RemiEsca"
  loc_C24126: PopAdLdVar
  loc_C24127: FLdRfVar var_398
  loc_C2412A: FLdPr Me
  loc_C2412D: MemLdPr global_64
  loc_C24130:  = Me.Fields
  loc_C24135: FLdPr var_398
  loc_C24138: from_stack_2 = Me.Item(from_stack_1)
  loc_C2413D: FLdFPR8 var_C8
  loc_C24140: CVarR8
  loc_C24144: HardType
  loc_C24145: LitI4 2
  loc_C2414A: FLdZeroAd var_39C
  loc_C2414D: CVarAd
  loc_C24151: FLdRfVar var_178
  loc_C24154: ImpAdCallFPR4  = Round(, )
  loc_C24159: FLdRfVar var_178
  loc_C2415C: GtVar var_218
  loc_C24160: LitI4 2
  loc_C24165: FLdI2 var_A2
  loc_C24168: CI4UI1
  loc_C24169: ILdRf var_A8
  loc_C2416C: AryLock
  loc_C2416F: Ary1LdPr
  loc_C24170: MemLdRfVar from_stack_1.global_44
  loc_C24173: CVarRef
  loc_C24178: FLdRfVar var_2A8
  loc_C2417B: ImpAdCallFPR4  = Round(, )
  loc_C24180: AryUnlock
  loc_C24183: FLdRfVar var_2A8
  loc_C24186: FLdFPR8 var_C8
  loc_C24189: CVarR8
  loc_C2418D: AddVar var_334
  loc_C24191: LitI4 2
  loc_C24196: FLdI2 var_A2
  loc_C24199: CI4UI1
  loc_C2419A: ILdRf var_A8
  loc_C2419D: AryLock
  loc_C241A0: Ary1LdPr
  loc_C241A1: MemLdRfVar from_stack_1.global_36
  loc_C241A4: CVarRef
  loc_C241A9: FLdRfVar var_384
  loc_C241AC: ImpAdCallFPR4  = Round(, )
  loc_C241B1: AryUnlock
  loc_C241B4: FLdRfVar var_384
  loc_C241B7: GtVar var_3B4
  loc_C241BB: AndVar var_3CC
  loc_C241BF: CBoolVarNull
  loc_C241C1: FFree1Ad var_398
  loc_C241C4: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_334 = ""
  loc_C241D1: BranchF loc_C24249
  loc_C241D4: LitI4 0
  loc_C241D9: LitStr "El TOTAL de las Retenciones es mayor al importe facturado."
  loc_C241DC: LitStr vbCrLf
  loc_C241DF: ConcatStr
  loc_C241E0: FStStrNoPop var_114
  loc_C241E3: LitStr "No se realizará ninguna Retención de "
  loc_C241E6: ConcatStr
  loc_C241E7: CVarStr var_178
  loc_C241EA: FLdRfVar var_14C
  loc_C241ED: FLdRfVar var_39C
  loc_C241F0: LitVarStr var_12C, "DetaDere"
  loc_C241F5: PopAdLdVar
  loc_C241F6: FLdRfVar var_398
  loc_C241F9: FLdPr Me
  loc_C241FC: MemLdPr global_60
  loc_C241FF:  = Me.Fields
  loc_C24204: FLdPr var_398
  loc_C24207: from_stack_2 = Me.Item(from_stack_1)
  loc_C2420C: FLdPr var_39C
  loc_C2420F:  = Me.Value
  loc_C24214: FLdRfVar var_14C
  loc_C24217: ConcatVar var_218
  loc_C2421B: LitVarStr var_13C, ". Verifique..."
  loc_C24220: ConcatVar var_2A8
  loc_C24224: CStrVarVal var_118
  loc_C24228: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2422D: FFreeStr var_114 = ""
  loc_C24234: FFreeAd var_398 = ""
  loc_C2423B: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C24246: Branch loc_C25098
  loc_C24249: FLdRfVar var_39C
  loc_C2424C: LitVarStr var_12C, "RemiEsca"
  loc_C24251: PopAdLdVar
  loc_C24252: FLdRfVar var_398
  loc_C24255: FLdPr Me
  loc_C24258: MemLdPr global_64
  loc_C2425B:  = Me.Fields
  loc_C24260: FLdPr var_398
  loc_C24263: from_stack_2 = Me.Item(from_stack_1)
  loc_C24268: FLdFPR8 var_C8
  loc_C2426B: CVarR8
  loc_C2426F: HardType
  loc_C24270: LitI4 2
  loc_C24275: FLdZeroAd var_39C
  loc_C24278: CVarAd
  loc_C2427C: FLdRfVar var_178
  loc_C2427F: ImpAdCallFPR4  = Round(, )
  loc_C24284: FLdRfVar var_178
  loc_C24287: GtVar var_218
  loc_C2428B: LitI4 2
  loc_C24290: FLdI2 var_A2
  loc_C24293: CI4UI1
  loc_C24294: ILdRf var_A8
  loc_C24297: AryLock
  loc_C2429A: Ary1LdPr
  loc_C2429B: MemLdRfVar from_stack_1.global_44
  loc_C2429E: CVarRef
  loc_C242A3: FLdRfVar var_2A8
  loc_C242A6: ImpAdCallFPR4  = Round(, )
  loc_C242AB: AryUnlock
  loc_C242AE: FLdRfVar var_2A8
  loc_C242B1: FLdFPR8 var_C8
  loc_C242B4: CVarR8
  loc_C242B8: AddVar var_334
  loc_C242BC: LitI4 2
  loc_C242C1: FLdI2 var_A2
  loc_C242C4: CI4UI1
  loc_C242C5: ILdRf var_A8
  loc_C242C8: AryLock
  loc_C242CB: Ary1LdPr
  loc_C242CC: MemLdRfVar from_stack_1.global_36
  loc_C242CF: CVarRef
  loc_C242D4: FLdRfVar var_384
  loc_C242D7: ImpAdCallFPR4  = Round(, )
  loc_C242DC: AryUnlock
  loc_C242DF: FLdRfVar var_384
  loc_C242E2: LtVar var_3B4
  loc_C242E6: AndVar var_3CC
  loc_C242EA: CBoolVarNull
  loc_C242EC: FFree1Ad var_398
  loc_C242EF: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_334 = ""
  loc_C242FC: BranchF loc_C25098
  loc_C242FF: FLdRfVar var_14C
  loc_C24302: FLdRfVar var_39C
  loc_C24305: LitVarStr var_12C, "PregDere"
  loc_C2430A: PopAdLdVar
  loc_C2430B: FLdRfVar var_398
  loc_C2430E: FLdPr Me
  loc_C24311: MemLdPr global_60
  loc_C24314:  = Me.Fields
  loc_C24319: FLdPr var_398
  loc_C2431C: from_stack_2 = Me.Item(from_stack_1)
  loc_C24321: FLdPr var_39C
  loc_C24324:  = Me.Value
  loc_C24329: FLdRfVar var_14C
  loc_C2432C: FnCByteVar
  loc_C2432E: CI2UI1
  loc_C24330: LitI2_Byte 1
  loc_C24332: EqI2
  loc_C24333: FFreeAd var_398 = ""
  loc_C2433A: FFree1Var var_14C = ""
  loc_C2433D: BranchF loc_C24A1F
  loc_C24340: LitI4 1
  loc_C24345: LitI4 1
  loc_C2434A: LitVarStr var_13C, "currency"
  loc_C2434F: FStVarCopyObj var_14C
  loc_C24352: FLdRfVar var_14C
  loc_C24355: FLdRfVar var_C8
  loc_C24358: CVarRef
  loc_C2435D: ImpAdCallI2 Format$(, )
  loc_C24362: FStStr var_150
  loc_C24365: FLdRfVar var_178
  loc_C24368: FLdRfVar var_39C
  loc_C2436B: LitVarStr var_168, "DetaDere"
  loc_C24370: PopAdLdVar
  loc_C24371: FLdRfVar var_398
  loc_C24374: FLdPr Me
  loc_C24377: MemLdPr global_60
  loc_C2437A:  = Me.Fields
  loc_C2437F: FLdPr var_398
  loc_C24382: from_stack_2 = Me.Item(from_stack_1)
  loc_C24387: FLdPr var_39C
  loc_C2438A:  = Me.Value
  loc_C2438F: LitI2_Byte 0
  loc_C24391: PopTmpLdAd2 var_4F6
  loc_C24394: LitI2_Byte &HFF
  loc_C24396: PopTmpLdAd2 var_392
  loc_C24399: LitStr "Retiene "
  loc_C2439C: FLdZeroAd var_150
  loc_C2439F: FStStrNoPop var_114
  loc_C243A2: ConcatStr
  loc_C243A3: FStStrNoPop var_118
  loc_C243A6: LitStr " en concepto de "
  loc_C243A9: ConcatStr
  loc_C243AA: CVarStr var_218
  loc_C243AD: FLdRfVar var_178
  loc_C243B0: ConcatVar var_2A8
  loc_C243B4: CStrVarVal var_11C
  loc_C243B8: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C243BD: CI4UI1
  loc_C243BE: LitI4 6
  loc_C243C3: EqI4
  loc_C243C4: FFreeStr var_114 = "": var_118 = "": var_11C = ""
  loc_C243CF: FFreeAd var_398 = ""
  loc_C243D6: FFreeVar var_14C = "": var_218 = "": var_178 = ""
  loc_C243E1: BranchF loc_C24A1C
  loc_C243E4: FLdRfVar var_47C
  loc_C243E7: LitVarStr var_2E4, "FechEsca"
  loc_C243EC: PopAdLdVar
  loc_C243ED: FLdRfVar var_478
  loc_C243F0: FLdPr Me
  loc_C243F3: MemLdPr global_64
  loc_C243F6:  = Me.Fields
  loc_C243FB: FLdPr var_478
  loc_C243FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C24403: FLdRfVar var_570
  loc_C24406: FLdRfVar var_560
  loc_C24409: LitVarStr var_344, "BaseEsca"
  loc_C2440E: PopAdLdVar
  loc_C2440F: FLdRfVar var_55C
  loc_C24412: FLdPr Me
  loc_C24415: MemLdPr global_64
  loc_C24418:  = Me.Fields
  loc_C2441D: FLdPr var_55C
  loc_C24420: from_stack_2 = Me.Item(from_stack_1)
  loc_C24425: FLdPr var_560
  loc_C24428:  = Me.Value
  loc_C2442D: ILdRf var_A0
  loc_C24430: LitStr "SET @ulcerete=0;"
  loc_C24433: ConcatStr
  loc_C24434: FStStrNoPop var_114
  loc_C24437: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C2443A: ConcatStr
  loc_C2443B: FStStrNoPop var_118
  loc_C2443E: ImpAdLdI2 MemVar_C3D064
  loc_C24441: CStrUI1
  loc_C24443: FStStrNoPop var_11C
  loc_C24446: ConcatStr
  loc_C24447: FStStrNoPop var_150
  loc_C2444A: LitStr " AND retenciones.CodiRete = "
  loc_C2444D: ConcatStr
  loc_C2444E: CVarStr var_178
  loc_C24451: FLdRfVar var_14C
  loc_C24454: FLdRfVar var_39C
  loc_C24457: LitVarStr var_12C, "CodiRete"
  loc_C2445C: PopAdLdVar
  loc_C2445D: FLdRfVar var_398
  loc_C24460: FLdPr Me
  loc_C24463: MemLdPr global_60
  loc_C24466:  = Me.Fields
  loc_C2446B: FLdPr var_398
  loc_C2446E: from_stack_2 = Me.Item(from_stack_1)
  loc_C24473: FLdPr var_39C
  loc_C24476:  = Me.Value
  loc_C2447B: FLdRfVar var_14C
  loc_C2447E: ConcatVar var_218
  loc_C24482: LitVarStr var_13C, ";"
  loc_C24487: ConcatVar var_2A8
  loc_C2448B: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine,PefiLine,PerfLine,PoexLine)"
  loc_C24490: ConcatVar var_334
  loc_C24494: LitVarStr var_1A4, " VALUES ('"
  loc_C24499: ConcatVar var_384
  loc_C2449D: ILdRf var_8C
  loc_C244A0: CVarStr var_1B4
  loc_C244A3: ConcatVar var_3B4
  loc_C244A7: LitVarStr var_1C4, "',@liqu,"
  loc_C244AC: ConcatVar var_3CC
  loc_C244B0: FLdI2 var_A2
  loc_C244B3: CI4UI1
  loc_C244B4: ILdRf var_A8
  loc_C244B7: Ary1LdPr
  loc_C244B8: MemLdRfVar from_stack_1.global_0
  loc_C244BB: LdFixedStr
  loc_C244BE: CVarStr var_3DC
  loc_C244C1: ConcatVar var_3EC
  loc_C244C5: LitVarStr var_1D8, ","
  loc_C244CA: ConcatVar var_404
  loc_C244CE: ImpAdLdI2 MemVar_C3D064
  loc_C244D1: CVarI2 var_1E8
  loc_C244D4: ConcatVar var_414
  loc_C244D8: LitVarStr var_1F8, ","
  loc_C244DD: ConcatVar var_424
  loc_C244E1: FLdRfVar var_434
  loc_C244E4: FLdRfVar var_3A4
  loc_C244E7: LitVarStr var_208, "CodiRete"
  loc_C244EC: PopAdLdVar
  loc_C244ED: FLdRfVar var_3A0
  loc_C244F0: FLdPr Me
  loc_C244F3: MemLdPr global_60
  loc_C244F6:  = Me.Fields
  loc_C244FB: FLdPr var_3A0
  loc_C244FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C24503: FLdPr var_3A4
  loc_C24506:  = Me.Value
  loc_C2450B: FLdRfVar var_434
  loc_C2450E: ConcatVar var_444
  loc_C24512: LitVarStr var_268, ","
  loc_C24517: ConcatVar var_454
  loc_C2451B: FLdRfVar var_464
  loc_C2451E: FLdRfVar var_3BC
  loc_C24521: LitVarStr var_278, "CodiDere"
  loc_C24526: PopAdLdVar
  loc_C24527: FLdRfVar var_3B8
  loc_C2452A: FLdPr Me
  loc_C2452D: MemLdPr global_60
  loc_C24530:  = Me.Fields
  loc_C24535: FLdPr var_3B8
  loc_C24538: from_stack_2 = Me.Item(from_stack_1)
  loc_C2453D: FLdPr var_3BC
  loc_C24540:  = Me.Value
  loc_C24545: FLdRfVar var_464
  loc_C24548: ConcatVar var_474
  loc_C2454C: LitVarStr var_288, ","
  loc_C24551: ConcatVar var_48C
  loc_C24555: FLdRfVar var_49C
  loc_C24558: FLdRfVar var_3F4
  loc_C2455B: LitVarStr var_298, "CodiEsca"
  loc_C24560: PopAdLdVar
  loc_C24561: FLdRfVar var_3F0
  loc_C24564: FLdPr Me
  loc_C24567: MemLdPr global_64
  loc_C2456A:  = Me.Fields
  loc_C2456F: FLdPr var_3F0
  loc_C24572: from_stack_2 = Me.Item(from_stack_1)
  loc_C24577: FLdPr var_3F4
  loc_C2457A:  = Me.Value
  loc_C2457F: FLdRfVar var_49C
  loc_C24582: ConcatVar var_4AC
  loc_C24586: LitVarStr var_2D4, ","
  loc_C2458B: ConcatVar var_4C4
  loc_C2458F: LitI4 1
  loc_C24594: LitI4 1
  loc_C24599: LitVarStr var_2F4, "'yyyy-mm-dd'"
  loc_C2459E: FStVarCopyObj var_4E4
  loc_C245A1: FLdRfVar var_4E4
  loc_C245A4: FLdZeroAd var_47C
  loc_C245A7: CVarAd
  loc_C245AB: ImpAdCallI2 Format$(, )
  loc_C245B0: CVarStr var_508
  loc_C245B3: ConcatVar var_518
  loc_C245B7: LitVarStr var_304, ",'"
  loc_C245BC: ConcatVar var_528
  loc_C245C0: FLdRfVar var_538
  loc_C245C3: FLdRfVar var_4B4
  loc_C245C6: LitVarStr var_314, "CodiCuco"
  loc_C245CB: PopAdLdVar
  loc_C245CC: FLdRfVar var_4B0
  loc_C245CF: FLdPr Me
  loc_C245D2: MemLdPr global_56
  loc_C245D5:  = Me.Fields
  loc_C245DA: FLdPr var_4B0
  loc_C245DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C245E2: FLdPr var_4B4
  loc_C245E5:  = Me.Value
  loc_C245EA: FLdRfVar var_538
  loc_C245ED: ConcatVar var_548
  loc_C245F1: LitVarStr var_324, "',0,"
  loc_C245F6: ConcatVar var_558
  loc_C245FA: LitI4 2
  loc_C245FF: FLdI2 var_A2
  loc_C24602: CI4UI1
  loc_C24603: ILdRf var_A8
  loc_C24606: Ary1LdPr
  loc_C24607: MemLdFPR8 global_36
  loc_C2460A: CVarR8
  loc_C2460E: FLdRfVar var_570
  loc_C24611: DivVar var_580
  loc_C24615: FStVar var_590
  loc_C24619: FLdRfVar var_590
  loc_C2461C: FLdRfVar var_5A0
  loc_C2461F: ImpAdCallFPR4  = Round(, )
  loc_C24624: FLdRfVar var_5A0
  loc_C24627: CStrVarVal var_154
  loc_C2462B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24630: CVarStr var_5B0
  loc_C24633: ConcatVar var_5C0
  loc_C24637: LitVarStr var_364, ","
  loc_C2463C: ConcatVar var_5D0
  loc_C24640: FLdFPR8 var_C8
  loc_C24643: CStrR8
  loc_C24645: FStStrNoPop var_158
  loc_C24648: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2464D: CVarStr var_5E0
  loc_C24650: ConcatVar var_5F0
  loc_C24654: LitVarStr var_374, " ,@ulcerete,"
  loc_C24659: ConcatVar var_600
  loc_C2465D: FLdFPR8 var_B8
  loc_C24660: CStrR8
  loc_C24662: FStStrNoPop var_17C
  loc_C24665: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2466A: CVarStr var_610
  loc_C2466D: ConcatVar var_620
  loc_C24671: LitVarStr var_630, ","
  loc_C24676: ConcatVar var_640
  loc_C2467A: FLdFPR8 var_C0
  loc_C2467D: CStrR8
  loc_C2467F: FStStrNoPop var_180
  loc_C24682: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24687: CVarStr var_650
  loc_C2468A: ConcatVar var_660
  loc_C2468E: LitVarStr var_670, ","
  loc_C24693: ConcatVar var_680
  loc_C24697: FLdFPR8 var_D0
  loc_C2469A: CStrR8
  loc_C2469C: FStStrNoPop var_184
  loc_C2469F: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C246A4: CVarStr var_690
  loc_C246A7: ConcatVar var_6A0
  loc_C246AB: LitVarStr var_6B0, ","
  loc_C246B0: ConcatVar var_6C0
  loc_C246B4: FLdFPR8 var_D8
  loc_C246B7: CStrR8
  loc_C246B9: FStStrNoPop var_188
  loc_C246BC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C246C1: CVarStr var_6D0
  loc_C246C4: ConcatVar var_6E0
  loc_C246C8: LitVarStr var_6F0, ","
  loc_C246CD: ConcatVar var_700
  loc_C246D1: FLdFPR8 var_E0
  loc_C246D4: CStrR8
  loc_C246D6: FStStrNoPop var_18C
  loc_C246D9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C246DE: CVarStr var_710
  loc_C246E1: ConcatVar var_720
  loc_C246E5: LitVarStr var_730, ");"
  loc_C246EA: ConcatVar var_740
  loc_C246EE: LitVarStr var_750, " UPDATE retenciones"
  loc_C246F3: ConcatVar var_760
  loc_C246F7: LitVarStr var_770, " SET UlceRete = @ulcerete"
  loc_C246FC: ConcatVar var_780
  loc_C24700: LitVarStr var_790, " WHERE retenciones.PeriInfo = "
  loc_C24705: ConcatVar var_7A0
  loc_C24709: ImpAdLdI2 MemVar_C3D064
  loc_C2470C: CVarI2 var_7B0
  loc_C2470F: ConcatVar var_7C0
  loc_C24713: LitVarStr var_7D0, " AND retenciones.CodiRete = "
  loc_C24718: ConcatVar var_7E0
  loc_C2471C: FLdRfVar var_808
  loc_C2471F: FLdRfVar var_7F8
  loc_C24722: LitVarStr var_7F4, "CodiRete"
  loc_C24727: PopAdLdVar
  loc_C24728: FLdRfVar var_7E4
  loc_C2472B: FLdPr Me
  loc_C2472E: MemLdPr global_60
  loc_C24731:  = Me.Fields
  loc_C24736: FLdPr var_7E4
  loc_C24739: from_stack_2 = Me.Item(from_stack_1)
  loc_C2473E: FLdPr var_7F8
  loc_C24741:  = Me.Value
  loc_C24746: FLdRfVar var_808
  loc_C24749: ConcatVar var_818
  loc_C2474D: LitVarStr var_828, ";"
  loc_C24752: ConcatVar var_838
  loc_C24756: CStrVarTmp
  loc_C24757: FStStr var_A0
  loc_C2475A: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_C24773: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_4B0 = "": var_4B4 = "": var_55C = "": var_560 = "": var_7E4 = ""
  loc_C24794: FFreeVar var_818 = "": var_838 = "": var_590 = "": var_5A0 = "": var_558 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_690 = "": var_6A0 = "": var_6C0 = "": var_6D0 = "": var_6E0 = "": var_700 = "": var_710 = "": var_720 = "": var_740 = "": var_760 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_7E0 = "": var_808 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4D4 = "": var_4E4 = "": var_4C4 = "": var_508 = "": var_518 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C24813: FLdI2 var_A2
  loc_C24816: CI4UI1
  loc_C24817: ILdRf var_A8
  loc_C2481A: Ary1LdPr
  loc_C2481B: MemLdFPR8 global_44
  loc_C2481E: FLdFPR8 var_C8
  loc_C24821: AddR8
  loc_C24822: FLdI2 var_A2
  loc_C24825: CI4UI1
  loc_C24826: ILdRf var_A8
  loc_C24829: Ary1LdPr
  loc_C2482A: MemStFPR8 global_44
  loc_C2482D: FLdFPR8 var_D0
  loc_C24830: LitI2_Byte 0
  loc_C24832: CR8I2
  loc_C24833: GtR4
  loc_C24834: FLdFPR8 var_D8
  loc_C24837: LitI2_Byte 0
  loc_C24839: CR8I2
  loc_C2483A: EqR4
  loc_C2483B: AndI4
  loc_C2483C: BranchF loc_C248D3
  loc_C2483F: LitI4 1
  loc_C24844: LitI4 1
  loc_C24849: LitVarStr var_13C, "##-########-#"
  loc_C2484E: FStVarCopyObj var_14C
  loc_C24851: FLdRfVar var_14C
  loc_C24854: FLdI2 var_A2
  loc_C24857: CI4UI1
  loc_C24858: ILdRf var_A8
  loc_C2485B: Ary1LdPr
  loc_C2485C: MemLdRfVar from_stack_1.global_0
  loc_C2485F: LdFixedStr
  loc_C24862: PopTmpLdAdStr
  loc_C24866: CVarRef
  loc_C2486B: ImpAdCallI2 Format$(, )
  loc_C24870: FStStr var_150
  loc_C24873: ILdRf var_11C
  loc_C24876: FLdI2 var_A2
  loc_C24879: CI4UI1
  loc_C2487A: ILdRf var_A8
  loc_C2487D: Ary1LdPr
  loc_C2487E: MemLdRfVar from_stack_1.global_0
  loc_C24881: StFixedStr
  loc_C24884: LitI4 0
  loc_C24889: LitStr "La Retención al Proveedor: "
  loc_C2488C: FLdI2 var_A2
  loc_C2488F: CI4UI1
  loc_C24890: ILdRf var_A8
  loc_C24893: Ary1LdPr
  loc_C24894: MemLdStr global_24
  loc_C24897: ConcatStr
  loc_C24898: FStStrNoPop var_114
  loc_C2489B: LitStr vbCrLf
  loc_C2489E: ConcatStr
  loc_C2489F: FStStrNoPop var_118
  loc_C248A2: LitStr "CUIT-CUIL: "
  loc_C248A5: ConcatStr
  loc_C248A6: FStStrNoPop var_154
  loc_C248A9: ILdRf var_150
  loc_C248AC: ConcatStr
  loc_C248AD: FStStrNoPop var_158
  loc_C248B0: LitStr " se aplicará con Penalidad por Falta de inscripción. Verifique..."
  loc_C248B3: ConcatStr
  loc_C248B4: FStStrNoPop var_17C
  loc_C248B7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C248BC: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C248CD: FFree1Var var_14C = ""
  loc_C248D0: Branch loc_C24A1C
  loc_C248D3: FLdFPR8 var_D0
  loc_C248D6: LitI2_Byte 0
  loc_C248D8: CR8I2
  loc_C248D9: EqR4
  loc_C248DA: FLdFPR8 var_D8
  loc_C248DD: LitI2_Byte 0
  loc_C248DF: CR8I2
  loc_C248E0: GtR4
  loc_C248E1: AndI4
  loc_C248E2: BranchF loc_C24979
  loc_C248E5: LitI4 1
  loc_C248EA: LitI4 1
  loc_C248EF: LitVarStr var_13C, "##-########-#"
  loc_C248F4: FStVarCopyObj var_14C
  loc_C248F7: FLdRfVar var_14C
  loc_C248FA: FLdI2 var_A2
  loc_C248FD: CI4UI1
  loc_C248FE: ILdRf var_A8
  loc_C24901: Ary1LdPr
  loc_C24902: MemLdRfVar from_stack_1.global_0
  loc_C24905: LdFixedStr
  loc_C24908: PopTmpLdAdStr
  loc_C2490C: CVarRef
  loc_C24911: ImpAdCallI2 Format$(, )
  loc_C24916: FStStr var_150
  loc_C24919: ILdRf var_11C
  loc_C2491C: FLdI2 var_A2
  loc_C2491F: CI4UI1
  loc_C24920: ILdRf var_A8
  loc_C24923: Ary1LdPr
  loc_C24924: MemLdRfVar from_stack_1.global_0
  loc_C24927: StFixedStr
  loc_C2492A: LitI4 0
  loc_C2492F: LitStr "La Retención al Proveedor: "
  loc_C24932: FLdI2 var_A2
  loc_C24935: CI4UI1
  loc_C24936: ILdRf var_A8
  loc_C24939: Ary1LdPr
  loc_C2493A: MemLdStr global_24
  loc_C2493D: ConcatStr
  loc_C2493E: FStStrNoPop var_114
  loc_C24941: LitStr vbCrLf
  loc_C24944: ConcatStr
  loc_C24945: FStStrNoPop var_118
  loc_C24948: LitStr "CUIT-CUIL: "
  loc_C2494B: ConcatStr
  loc_C2494C: FStStrNoPop var_154
  loc_C2494F: ILdRf var_150
  loc_C24952: ConcatStr
  loc_C24953: FStStrNoPop var_158
  loc_C24956: LitStr " se aplicará con Penalidad por Riesgo Fiscal. Verifique..."
  loc_C24959: ConcatStr
  loc_C2495A: FStStrNoPop var_17C
  loc_C2495D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C24962: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C24973: FFree1Var var_14C = ""
  loc_C24976: Branch loc_C24A1C
  loc_C24979: FLdFPR8 var_D0
  loc_C2497C: LitI2_Byte 0
  loc_C2497E: CR8I2
  loc_C2497F: GtR4
  loc_C24980: FLdFPR8 var_D8
  loc_C24983: LitI2_Byte 0
  loc_C24985: CR8I2
  loc_C24986: GtR4
  loc_C24987: AndI4
  loc_C24988: BranchF loc_C24A1C
  loc_C2498B: LitI4 1
  loc_C24990: LitI4 1
  loc_C24995: LitVarStr var_13C, "##-########-#"
  loc_C2499A: FStVarCopyObj var_14C
  loc_C2499D: FLdRfVar var_14C
  loc_C249A0: FLdI2 var_A2
  loc_C249A3: CI4UI1
  loc_C249A4: ILdRf var_A8
  loc_C249A7: Ary1LdPr
  loc_C249A8: MemLdRfVar from_stack_1.global_0
  loc_C249AB: LdFixedStr
  loc_C249AE: PopTmpLdAdStr
  loc_C249B2: CVarRef
  loc_C249B7: ImpAdCallI2 Format$(, )
  loc_C249BC: FStStr var_150
  loc_C249BF: ILdRf var_11C
  loc_C249C2: FLdI2 var_A2
  loc_C249C5: CI4UI1
  loc_C249C6: ILdRf var_A8
  loc_C249C9: Ary1LdPr
  loc_C249CA: MemLdRfVar from_stack_1.global_0
  loc_C249CD: StFixedStr
  loc_C249D0: LitI4 0
  loc_C249D5: LitStr "La Retención al Proveedor: "
  loc_C249D8: FLdI2 var_A2
  loc_C249DB: CI4UI1
  loc_C249DC: ILdRf var_A8
  loc_C249DF: Ary1LdPr
  loc_C249E0: MemLdStr global_24
  loc_C249E3: ConcatStr
  loc_C249E4: FStStrNoPop var_114
  loc_C249E7: LitStr vbCrLf
  loc_C249EA: ConcatStr
  loc_C249EB: FStStrNoPop var_118
  loc_C249EE: LitStr "CUIT-CUIL: "
  loc_C249F1: ConcatStr
  loc_C249F2: FStStrNoPop var_154
  loc_C249F5: ILdRf var_150
  loc_C249F8: ConcatStr
  loc_C249F9: FStStrNoPop var_158
  loc_C249FC: LitStr " se aplicará con Penalidad por Falta de inscripción y Riesgo Fiscal. Verifique..."
  loc_C249FF: ConcatStr
  loc_C24A00: FStStrNoPop var_17C
  loc_C24A03: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C24A08: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C24A19: FFree1Var var_14C = ""
  loc_C24A1C: Branch loc_C25098
  loc_C24A1F: FLdRfVar var_14C
  loc_C24A22: FLdRfVar var_39C
  loc_C24A25: LitVarStr var_12C, "PregDere"
  loc_C24A2A: PopAdLdVar
  loc_C24A2B: FLdRfVar var_398
  loc_C24A2E: FLdPr Me
  loc_C24A31: MemLdPr global_60
  loc_C24A34:  = Me.Fields
  loc_C24A39: FLdPr var_398
  loc_C24A3C: from_stack_2 = Me.Item(from_stack_1)
  loc_C24A41: FLdPr var_39C
  loc_C24A44:  = Me.Value
  loc_C24A49: FLdRfVar var_14C
  loc_C24A4C: FnCByteVar
  loc_C24A4E: CI2UI1
  loc_C24A50: LitI2_Byte 0
  loc_C24A52: EqI2
  loc_C24A53: FFreeAd var_398 = ""
  loc_C24A5A: FFree1Var var_14C = ""
  loc_C24A5D: BranchF loc_C25098
  loc_C24A60: FLdRfVar var_47C
  loc_C24A63: LitVarStr var_2E4, "FechEsca"
  loc_C24A68: PopAdLdVar
  loc_C24A69: FLdRfVar var_478
  loc_C24A6C: FLdPr Me
  loc_C24A6F: MemLdPr global_64
  loc_C24A72:  = Me.Fields
  loc_C24A77: FLdPr var_478
  loc_C24A7A: from_stack_2 = Me.Item(from_stack_1)
  loc_C24A7F: FLdRfVar var_570
  loc_C24A82: FLdRfVar var_560
  loc_C24A85: LitVarStr var_344, "BaseEsca"
  loc_C24A8A: PopAdLdVar
  loc_C24A8B: FLdRfVar var_55C
  loc_C24A8E: FLdPr Me
  loc_C24A91: MemLdPr global_64
  loc_C24A94:  = Me.Fields
  loc_C24A99: FLdPr var_55C
  loc_C24A9C: from_stack_2 = Me.Item(from_stack_1)
  loc_C24AA1: FLdPr var_560
  loc_C24AA4:  = Me.Value
  loc_C24AA9: ILdRf var_A0
  loc_C24AAC: LitStr "SET @ulcerete=0;"
  loc_C24AAF: ConcatStr
  loc_C24AB0: FStStrNoPop var_114
  loc_C24AB3: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C24AB6: ConcatStr
  loc_C24AB7: FStStrNoPop var_118
  loc_C24ABA: ImpAdLdI2 MemVar_C3D064
  loc_C24ABD: CStrUI1
  loc_C24ABF: FStStrNoPop var_11C
  loc_C24AC2: ConcatStr
  loc_C24AC3: FStStrNoPop var_150
  loc_C24AC6: LitStr " AND retenciones.CodiRete = "
  loc_C24AC9: ConcatStr
  loc_C24ACA: CVarStr var_178
  loc_C24ACD: FLdRfVar var_14C
  loc_C24AD0: FLdRfVar var_39C
  loc_C24AD3: LitVarStr var_12C, "CodiRete"
  loc_C24AD8: PopAdLdVar
  loc_C24AD9: FLdRfVar var_398
  loc_C24ADC: FLdPr Me
  loc_C24ADF: MemLdPr global_60
  loc_C24AE2:  = Me.Fields
  loc_C24AE7: FLdPr var_398
  loc_C24AEA: from_stack_2 = Me.Item(from_stack_1)
  loc_C24AEF: FLdPr var_39C
  loc_C24AF2:  = Me.Value
  loc_C24AF7: FLdRfVar var_14C
  loc_C24AFA: ConcatVar var_218
  loc_C24AFE: LitVarStr var_13C, ";"
  loc_C24B03: ConcatVar var_2A8
  loc_C24B07: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine,PefiLine,PerfLine,PoexLine)"
  loc_C24B0C: ConcatVar var_334
  loc_C24B10: LitVarStr var_1A4, " VALUES ('"
  loc_C24B15: ConcatVar var_384
  loc_C24B19: ILdRf var_8C
  loc_C24B1C: CVarStr var_1B4
  loc_C24B1F: ConcatVar var_3B4
  loc_C24B23: LitVarStr var_1C4, "',@liqu,"
  loc_C24B28: ConcatVar var_3CC
  loc_C24B2C: FLdI2 var_A2
  loc_C24B2F: CI4UI1
  loc_C24B30: ILdRf var_A8
  loc_C24B33: Ary1LdPr
  loc_C24B34: MemLdRfVar from_stack_1.global_0
  loc_C24B37: LdFixedStr
  loc_C24B3A: CVarStr var_3DC
  loc_C24B3D: ConcatVar var_3EC
  loc_C24B41: LitVarStr var_1D8, ","
  loc_C24B46: ConcatVar var_404
  loc_C24B4A: ImpAdLdI2 MemVar_C3D064
  loc_C24B4D: CVarI2 var_1E8
  loc_C24B50: ConcatVar var_414
  loc_C24B54: LitVarStr var_1F8, ","
  loc_C24B59: ConcatVar var_424
  loc_C24B5D: FLdRfVar var_434
  loc_C24B60: FLdRfVar var_3A4
  loc_C24B63: LitVarStr var_208, "CodiRete"
  loc_C24B68: PopAdLdVar
  loc_C24B69: FLdRfVar var_3A0
  loc_C24B6C: FLdPr Me
  loc_C24B6F: MemLdPr global_60
  loc_C24B72:  = Me.Fields
  loc_C24B77: FLdPr var_3A0
  loc_C24B7A: from_stack_2 = Me.Item(from_stack_1)
  loc_C24B7F: FLdPr var_3A4
  loc_C24B82:  = Me.Value
  loc_C24B87: FLdRfVar var_434
  loc_C24B8A: ConcatVar var_444
  loc_C24B8E: LitVarStr var_268, ","
  loc_C24B93: ConcatVar var_454
  loc_C24B97: FLdRfVar var_464
  loc_C24B9A: FLdRfVar var_3BC
  loc_C24B9D: LitVarStr var_278, "CodiDere"
  loc_C24BA2: PopAdLdVar
  loc_C24BA3: FLdRfVar var_3B8
  loc_C24BA6: FLdPr Me
  loc_C24BA9: MemLdPr global_60
  loc_C24BAC:  = Me.Fields
  loc_C24BB1: FLdPr var_3B8
  loc_C24BB4: from_stack_2 = Me.Item(from_stack_1)
  loc_C24BB9: FLdPr var_3BC
  loc_C24BBC:  = Me.Value
  loc_C24BC1: FLdRfVar var_464
  loc_C24BC4: ConcatVar var_474
  loc_C24BC8: LitVarStr var_288, ","
  loc_C24BCD: ConcatVar var_48C
  loc_C24BD1: FLdRfVar var_49C
  loc_C24BD4: FLdRfVar var_3F4
  loc_C24BD7: LitVarStr var_298, "CodiEsca"
  loc_C24BDC: PopAdLdVar
  loc_C24BDD: FLdRfVar var_3F0
  loc_C24BE0: FLdPr Me
  loc_C24BE3: MemLdPr global_64
  loc_C24BE6:  = Me.Fields
  loc_C24BEB: FLdPr var_3F0
  loc_C24BEE: from_stack_2 = Me.Item(from_stack_1)
  loc_C24BF3: FLdPr var_3F4
  loc_C24BF6:  = Me.Value
  loc_C24BFB: FLdRfVar var_49C
  loc_C24BFE: ConcatVar var_4AC
  loc_C24C02: LitVarStr var_2D4, ","
  loc_C24C07: ConcatVar var_4C4
  loc_C24C0B: LitI4 1
  loc_C24C10: LitI4 1
  loc_C24C15: LitVarStr var_2F4, "'yyyy-mm-dd'"
  loc_C24C1A: FStVarCopyObj var_4E4
  loc_C24C1D: FLdRfVar var_4E4
  loc_C24C20: FLdZeroAd var_47C
  loc_C24C23: CVarAd
  loc_C24C27: ImpAdCallI2 Format$(, )
  loc_C24C2C: CVarStr var_508
  loc_C24C2F: ConcatVar var_518
  loc_C24C33: LitVarStr var_304, ",'"
  loc_C24C38: ConcatVar var_528
  loc_C24C3C: FLdRfVar var_538
  loc_C24C3F: FLdRfVar var_4B4
  loc_C24C42: LitVarStr var_314, "CodiCuco"
  loc_C24C47: PopAdLdVar
  loc_C24C48: FLdRfVar var_4B0
  loc_C24C4B: FLdPr Me
  loc_C24C4E: MemLdPr global_56
  loc_C24C51:  = Me.Fields
  loc_C24C56: FLdPr var_4B0
  loc_C24C59: from_stack_2 = Me.Item(from_stack_1)
  loc_C24C5E: FLdPr var_4B4
  loc_C24C61:  = Me.Value
  loc_C24C66: FLdRfVar var_538
  loc_C24C69: ConcatVar var_548
  loc_C24C6D: LitVarStr var_324, "',0,"
  loc_C24C72: ConcatVar var_558
  loc_C24C76: LitI4 2
  loc_C24C7B: FLdI2 var_A2
  loc_C24C7E: CI4UI1
  loc_C24C7F: ILdRf var_A8
  loc_C24C82: Ary1LdPr
  loc_C24C83: MemLdFPR8 global_36
  loc_C24C86: CVarR8
  loc_C24C8A: FLdRfVar var_570
  loc_C24C8D: DivVar var_580
  loc_C24C91: FStVar var_590
  loc_C24C95: FLdRfVar var_590
  loc_C24C98: FLdRfVar var_5A0
  loc_C24C9B: ImpAdCallFPR4  = Round(, )
  loc_C24CA0: FLdRfVar var_5A0
  loc_C24CA3: CStrVarVal var_154
  loc_C24CA7: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24CAC: CVarStr var_5B0
  loc_C24CAF: ConcatVar var_5C0
  loc_C24CB3: LitVarStr var_364, ","
  loc_C24CB8: ConcatVar var_5D0
  loc_C24CBC: FLdFPR8 var_C8
  loc_C24CBF: CStrR8
  loc_C24CC1: FStStrNoPop var_158
  loc_C24CC4: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24CC9: CVarStr var_5E0
  loc_C24CCC: ConcatVar var_5F0
  loc_C24CD0: LitVarStr var_374, " ,@ulcerete,"
  loc_C24CD5: ConcatVar var_600
  loc_C24CD9: FLdFPR8 var_B8
  loc_C24CDC: CStrR8
  loc_C24CDE: FStStrNoPop var_17C
  loc_C24CE1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24CE6: CVarStr var_610
  loc_C24CE9: ConcatVar var_620
  loc_C24CED: LitVarStr var_630, ","
  loc_C24CF2: ConcatVar var_640
  loc_C24CF6: FLdFPR8 var_C0
  loc_C24CF9: CStrR8
  loc_C24CFB: FStStrNoPop var_180
  loc_C24CFE: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24D03: CVarStr var_650
  loc_C24D06: ConcatVar var_660
  loc_C24D0A: LitVarStr var_670, ","
  loc_C24D0F: ConcatVar var_680
  loc_C24D13: FLdFPR8 var_D0
  loc_C24D16: CStrR8
  loc_C24D18: FStStrNoPop var_184
  loc_C24D1B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24D20: CVarStr var_690
  loc_C24D23: ConcatVar var_6A0
  loc_C24D27: LitVarStr var_6B0, ","
  loc_C24D2C: ConcatVar var_6C0
  loc_C24D30: FLdFPR8 var_D8
  loc_C24D33: CStrR8
  loc_C24D35: FStStrNoPop var_188
  loc_C24D38: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24D3D: CVarStr var_6D0
  loc_C24D40: ConcatVar var_6E0
  loc_C24D44: LitVarStr var_6F0, ","
  loc_C24D49: ConcatVar var_700
  loc_C24D4D: FLdFPR8 var_E0
  loc_C24D50: CStrR8
  loc_C24D52: FStStrNoPop var_18C
  loc_C24D55: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C24D5A: CVarStr var_710
  loc_C24D5D: ConcatVar var_720
  loc_C24D61: LitVarStr var_730, ");"
  loc_C24D66: ConcatVar var_740
  loc_C24D6A: LitVarStr var_750, " UPDATE retenciones"
  loc_C24D6F: ConcatVar var_760
  loc_C24D73: LitVarStr var_770, " SET UlceRete = @ulcerete"
  loc_C24D78: ConcatVar var_780
  loc_C24D7C: LitVarStr var_790, " WHERE retenciones.PeriInfo = "
  loc_C24D81: ConcatVar var_7A0
  loc_C24D85: ImpAdLdI2 MemVar_C3D064
  loc_C24D88: CVarI2 var_7B0
  loc_C24D8B: ConcatVar var_7C0
  loc_C24D8F: LitVarStr var_7D0, " AND retenciones.CodiRete = "
  loc_C24D94: ConcatVar var_7E0
  loc_C24D98: FLdRfVar var_808
  loc_C24D9B: FLdRfVar var_7F8
  loc_C24D9E: LitVarStr var_7F4, "CodiRete"
  loc_C24DA3: PopAdLdVar
  loc_C24DA4: FLdRfVar var_7E4
  loc_C24DA7: FLdPr Me
  loc_C24DAA: MemLdPr global_60
  loc_C24DAD:  = Me.Fields
  loc_C24DB2: FLdPr var_7E4
  loc_C24DB5: from_stack_2 = Me.Item(from_stack_1)
  loc_C24DBA: FLdPr var_7F8
  loc_C24DBD:  = Me.Value
  loc_C24DC2: FLdRfVar var_808
  loc_C24DC5: ConcatVar var_818
  loc_C24DC9: LitVarStr var_828, ";"
  loc_C24DCE: ConcatVar var_838
  loc_C24DD2: CStrVarTmp
  loc_C24DD3: FStStr var_A0
  loc_C24DD6: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_C24DEF: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_4B0 = "": var_4B4 = "": var_55C = "": var_560 = "": var_7E4 = ""
  loc_C24E10: FFreeVar var_818 = "": var_838 = "": var_590 = "": var_5A0 = "": var_558 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_690 = "": var_6A0 = "": var_6C0 = "": var_6D0 = "": var_6E0 = "": var_700 = "": var_710 = "": var_720 = "": var_740 = "": var_760 = "": var_780 = "": var_7A0 = "": var_7C0 = "": var_7E0 = "": var_808 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4D4 = "": var_4E4 = "": var_4C4 = "": var_508 = "": var_518 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C24E8F: FLdI2 var_A2
  loc_C24E92: CI4UI1
  loc_C24E93: ILdRf var_A8
  loc_C24E96: Ary1LdPr
  loc_C24E97: MemLdFPR8 global_44
  loc_C24E9A: FLdFPR8 var_C8
  loc_C24E9D: AddR8
  loc_C24E9E: FLdI2 var_A2
  loc_C24EA1: CI4UI1
  loc_C24EA2: ILdRf var_A8
  loc_C24EA5: Ary1LdPr
  loc_C24EA6: MemStFPR8 global_44
  loc_C24EA9: FLdFPR8 var_D0
  loc_C24EAC: LitI2_Byte 0
  loc_C24EAE: CR8I2
  loc_C24EAF: GtR4
  loc_C24EB0: FLdFPR8 var_D8
  loc_C24EB3: LitI2_Byte 0
  loc_C24EB5: CR8I2
  loc_C24EB6: EqR4
  loc_C24EB7: AndI4
  loc_C24EB8: BranchF loc_C24F4F
  loc_C24EBB: LitI4 1
  loc_C24EC0: LitI4 1
  loc_C24EC5: LitVarStr var_13C, "##-########-#"
  loc_C24ECA: FStVarCopyObj var_14C
  loc_C24ECD: FLdRfVar var_14C
  loc_C24ED0: FLdI2 var_A2
  loc_C24ED3: CI4UI1
  loc_C24ED4: ILdRf var_A8
  loc_C24ED7: Ary1LdPr
  loc_C24ED8: MemLdRfVar from_stack_1.global_0
  loc_C24EDB: LdFixedStr
  loc_C24EDE: PopTmpLdAdStr
  loc_C24EE2: CVarRef
  loc_C24EE7: ImpAdCallI2 Format$(, )
  loc_C24EEC: FStStr var_150
  loc_C24EEF: ILdRf var_11C
  loc_C24EF2: FLdI2 var_A2
  loc_C24EF5: CI4UI1
  loc_C24EF6: ILdRf var_A8
  loc_C24EF9: Ary1LdPr
  loc_C24EFA: MemLdRfVar from_stack_1.global_0
  loc_C24EFD: StFixedStr
  loc_C24F00: LitI4 0
  loc_C24F05: LitStr "La Retención al Proveedor: "
  loc_C24F08: FLdI2 var_A2
  loc_C24F0B: CI4UI1
  loc_C24F0C: ILdRf var_A8
  loc_C24F0F: Ary1LdPr
  loc_C24F10: MemLdStr global_24
  loc_C24F13: ConcatStr
  loc_C24F14: FStStrNoPop var_114
  loc_C24F17: LitStr vbCrLf
  loc_C24F1A: ConcatStr
  loc_C24F1B: FStStrNoPop var_118
  loc_C24F1E: LitStr "CUIT-CUIL: "
  loc_C24F21: ConcatStr
  loc_C24F22: FStStrNoPop var_154
  loc_C24F25: ILdRf var_150
  loc_C24F28: ConcatStr
  loc_C24F29: FStStrNoPop var_158
  loc_C24F2C: LitStr " se aplicará con Penalidad por Falta de inscripción. Verifique..."
  loc_C24F2F: ConcatStr
  loc_C24F30: FStStrNoPop var_17C
  loc_C24F33: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C24F38: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C24F49: FFree1Var var_14C = ""
  loc_C24F4C: Branch loc_C25098
  loc_C24F4F: FLdFPR8 var_D0
  loc_C24F52: LitI2_Byte 0
  loc_C24F54: CR8I2
  loc_C24F55: EqR4
  loc_C24F56: FLdFPR8 var_D8
  loc_C24F59: LitI2_Byte 0
  loc_C24F5B: CR8I2
  loc_C24F5C: GtR4
  loc_C24F5D: AndI4
  loc_C24F5E: BranchF loc_C24FF5
  loc_C24F61: LitI4 1
  loc_C24F66: LitI4 1
  loc_C24F6B: LitVarStr var_13C, "##-########-#"
  loc_C24F70: FStVarCopyObj var_14C
  loc_C24F73: FLdRfVar var_14C
  loc_C24F76: FLdI2 var_A2
  loc_C24F79: CI4UI1
  loc_C24F7A: ILdRf var_A8
  loc_C24F7D: Ary1LdPr
  loc_C24F7E: MemLdRfVar from_stack_1.global_0
  loc_C24F81: LdFixedStr
  loc_C24F84: PopTmpLdAdStr
  loc_C24F88: CVarRef
  loc_C24F8D: ImpAdCallI2 Format$(, )
  loc_C24F92: FStStr var_150
  loc_C24F95: ILdRf var_11C
  loc_C24F98: FLdI2 var_A2
  loc_C24F9B: CI4UI1
  loc_C24F9C: ILdRf var_A8
  loc_C24F9F: Ary1LdPr
  loc_C24FA0: MemLdRfVar from_stack_1.global_0
  loc_C24FA3: StFixedStr
  loc_C24FA6: LitI4 0
  loc_C24FAB: LitStr "La Retención al Proveedor: "
  loc_C24FAE: FLdI2 var_A2
  loc_C24FB1: CI4UI1
  loc_C24FB2: ILdRf var_A8
  loc_C24FB5: Ary1LdPr
  loc_C24FB6: MemLdStr global_24
  loc_C24FB9: ConcatStr
  loc_C24FBA: FStStrNoPop var_114
  loc_C24FBD: LitStr vbCrLf
  loc_C24FC0: ConcatStr
  loc_C24FC1: FStStrNoPop var_118
  loc_C24FC4: LitStr "CUIT-CUIL: "
  loc_C24FC7: ConcatStr
  loc_C24FC8: FStStrNoPop var_154
  loc_C24FCB: ILdRf var_150
  loc_C24FCE: ConcatStr
  loc_C24FCF: FStStrNoPop var_158
  loc_C24FD2: LitStr " se aplicará con Penalidad por Riesgo Fiscal. Verifique..."
  loc_C24FD5: ConcatStr
  loc_C24FD6: FStStrNoPop var_17C
  loc_C24FD9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C24FDE: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C24FEF: FFree1Var var_14C = ""
  loc_C24FF2: Branch loc_C25098
  loc_C24FF5: FLdFPR8 var_D0
  loc_C24FF8: LitI2_Byte 0
  loc_C24FFA: CR8I2
  loc_C24FFB: GtR4
  loc_C24FFC: FLdFPR8 var_D8
  loc_C24FFF: LitI2_Byte 0
  loc_C25001: CR8I2
  loc_C25002: GtR4
  loc_C25003: AndI4
  loc_C25004: BranchF loc_C25098
  loc_C25007: LitI4 1
  loc_C2500C: LitI4 1
  loc_C25011: LitVarStr var_13C, "##-########-#"
  loc_C25016: FStVarCopyObj var_14C
  loc_C25019: FLdRfVar var_14C
  loc_C2501C: FLdI2 var_A2
  loc_C2501F: CI4UI1
  loc_C25020: ILdRf var_A8
  loc_C25023: Ary1LdPr
  loc_C25024: MemLdRfVar from_stack_1.global_0
  loc_C25027: LdFixedStr
  loc_C2502A: PopTmpLdAdStr
  loc_C2502E: CVarRef
  loc_C25033: ImpAdCallI2 Format$(, )
  loc_C25038: FStStr var_150
  loc_C2503B: ILdRf var_11C
  loc_C2503E: FLdI2 var_A2
  loc_C25041: CI4UI1
  loc_C25042: ILdRf var_A8
  loc_C25045: Ary1LdPr
  loc_C25046: MemLdRfVar from_stack_1.global_0
  loc_C25049: StFixedStr
  loc_C2504C: LitI4 0
  loc_C25051: LitStr "La Retención al Proveedor: "
  loc_C25054: FLdI2 var_A2
  loc_C25057: CI4UI1
  loc_C25058: ILdRf var_A8
  loc_C2505B: Ary1LdPr
  loc_C2505C: MemLdStr global_24
  loc_C2505F: ConcatStr
  loc_C25060: FStStrNoPop var_114
  loc_C25063: LitStr vbCrLf
  loc_C25066: ConcatStr
  loc_C25067: FStStrNoPop var_118
  loc_C2506A: LitStr "CUIT-CUIL: "
  loc_C2506D: ConcatStr
  loc_C2506E: FStStrNoPop var_154
  loc_C25071: ILdRf var_150
  loc_C25074: ConcatStr
  loc_C25075: FStStrNoPop var_158
  loc_C25078: LitStr " se aplicará con Penalidad por Falta de inscripción y Riesgo Fiscal. Verifique..."
  loc_C2507B: ConcatStr
  loc_C2507C: FStStrNoPop var_17C
  loc_C2507F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C25084: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_C25095: FFree1Var var_14C = ""
  loc_C25098: Branch loc_C250A5
  loc_C2509B: FLdFPR8 var_C8
  loc_C2509E: LitI2_Byte 0
  loc_C250A0: CR8I2
  loc_C250A1: LtR8
  loc_C250A2: BranchF loc_C250A5
  loc_C250A5: FLdPr Me
  loc_C250A8: MemLdPr global_64
  loc_C250AB: Me.MoveNext
  loc_C250B0: Branch loc_C231F8
  loc_C250B3: Branch loc_C250C6
  loc_C250B6: LitI4 0
  loc_C250BB: LitStr "ERROR: Falta la escala para la categoría. Verifique..."
  loc_C250BE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C250C3: Branch loc_C2A30E
  loc_C250C6: Branch loc_C257C4
  loc_C250C9: ImpAdLdRf MemVar_C3D250
  loc_C250CC: NewIfNullPr frmLiquidacion
  loc_C250CF: VCallAd Control_ID_
  loc_C250D2: CVarAd
  loc_C250D6: CBoolVarNull
  loc_C250D8: FFree1Var var_14C = ""
  loc_C250DB: BranchF loc_C257C4
  loc_C250DE: LitStr "Municipalidad de Guaymallén"
  loc_C250E1: LitStr "Municipalidad de Tupungato"
  loc_C250E4: EqStr
  loc_C250E6: CVarBoolI2 var_168
  loc_C250EA: FLdRfVar var_14C
  loc_C250ED: FLdRfVar var_39C
  loc_C250F0: LitVarStr var_12C, "CodiRete"
  loc_C250F5: PopAdLdVar
  loc_C250F6: FLdRfVar var_398
  loc_C250F9: FLdPr Me
  loc_C250FC: MemLdPr global_60
  loc_C250FF:  = frmLiquidacion.Recordset15.Fields
  loc_C25104: FLdPr var_398
  loc_C25107: from_stack_2 = Me.Item(from_stack_1)
  loc_C2510C: FLdPr var_39C
  loc_C2510F:  = Me.Value
  loc_C25114: FLdRfVar var_14C
  loc_C25117: LitVarI2 var_13C, 5
  loc_C2511C: HardType
  loc_C2511D: EqVar var_178
  loc_C25121: AndVar var_218
  loc_C25125: CBoolVarNull
  loc_C25127: FFreeAd var_398 = ""
  loc_C2512E: FFreeVar var_14C = ""
  loc_C25135: BranchF loc_C2513B
  loc_C25138: Branch loc_C257C4
  loc_C2513B: FLdI2 var_A2
  loc_C2513E: CI4UI1
  loc_C2513F: ILdRf var_A8
  loc_C25142: Ary1LdPr
  loc_C25143: MemLdRfVar from_stack_1.global_0
  loc_C25146: LdFixedStr
  loc_C25149: FStStrNoPop var_114
  loc_C2514C: LitStr " - "
  loc_C2514F: ConcatStr
  loc_C25150: FStStrNoPop var_118
  loc_C25153: FLdI2 var_A2
  loc_C25156: CI4UI1
  loc_C25157: ILdRf var_A8
  loc_C2515A: Ary1LdPr
  loc_C2515B: MemLdStr global_24
  loc_C2515E: ConcatStr
  loc_C2515F: FStStrNoPop var_11C
  loc_C25162: ImpAdLdRf MemVar_C3D264
  loc_C25165: NewIfNullPr dlgImporteFijo
  loc_C25168: VCallAd Control_ID_
  loc_C2516B: FStAdFunc var_398
  loc_C2516E: FLdPr var_398
  loc_C25171: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C25176: FFreeStr var_114 = "": var_118 = ""
  loc_C2517F: FFree1Ad var_398
  loc_C25182: FLdRfVar var_14C
  loc_C25185: FLdRfVar var_39C
  loc_C25188: LitVarStr var_12C, "CodiRete"
  loc_C2518D: PopAdLdVar
  loc_C2518E: FLdRfVar var_398
  loc_C25191: FLdPr Me
  loc_C25194: MemLdPr global_60
  loc_C25197:  = Me.Fields
  loc_C2519C: FLdPr var_398
  loc_C2519F: from_stack_2 = Me.Item(from_stack_1)
  loc_C251A4: FLdPr var_39C
  loc_C251A7:  = Me.Value
  loc_C251AC: FLdRfVar var_14C
  loc_C251AF: LitVarStr var_13C, " - "
  loc_C251B4: ConcatVar var_178
  loc_C251B8: FLdRfVar var_218
  loc_C251BB: FLdRfVar var_3A4
  loc_C251BE: LitVarStr var_168, "DetaRete"
  loc_C251C3: PopAdLdVar
  loc_C251C4: FLdRfVar var_3A0
  loc_C251C7: FLdPr Me
  loc_C251CA: MemLdPr global_60
  loc_C251CD:  = Me.Fields
  loc_C251D2: FLdPr var_3A0
  loc_C251D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C251DA: FLdPr var_3A4
  loc_C251DD:  = Me.Value
  loc_C251E2: FLdRfVar var_218
  loc_C251E5: ConcatVar var_2A8
  loc_C251E9: CStrVarVal var_114
  loc_C251ED: ImpAdLdRf MemVar_C3D264
  loc_C251F0: NewIfNullPr dlgImporteFijo
  loc_C251F3: VCallAd Control_ID_
  loc_C251F6: FStAdFunc var_3B8
  loc_C251F9: FLdPr var_3B8
  loc_C251FC: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C25201: FFree1Str var_114
  loc_C25204: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_C25211: FFreeVar var_14C = "": var_178 = "": var_218 = ""
  loc_C2521C: FLdI2 var_A2
  loc_C2521F: CI4UI1
  loc_C25220: ILdRf var_A8
  loc_C25223: Ary1LdPr
  loc_C25224: MemLdR8 global_36
  loc_C25227: ImpAdLdRf MemVar_C3D264
  loc_C2522A: NewIfNullPr dlgImporteFijo
  loc_C2522D: Call dlgImporteFijo.doBaseImponiblePut(from_stack_1v)
  loc_C25232: FLdI2 var_A2
  loc_C25235: CI4UI1
  loc_C25236: ILdRf var_A8
  loc_C25239: Ary1LdPr
  loc_C2523A: MemLdFPR8 global_36
  loc_C2523D: CStrR8
  loc_C2523F: FStStrNoPop var_114
  loc_C25242: ImpAdLdRf MemVar_C3D264
  loc_C25245: NewIfNullPr dlgImporteFijo
  loc_C25248: VCallAd Control_ID_
  loc_C2524B: FStAdFunc var_398
  loc_C2524E: FLdPr var_398
  loc_C25251: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C25256: FFree1Str var_114
  loc_C25259: FFree1Ad var_398
  loc_C2525C: LitI2_Byte 0
  loc_C2525E: CR8I2
  loc_C2525F: PopFPR8
  loc_C25260: ImpAdLdRf MemVar_C3D264
  loc_C25263: NewIfNullPr dlgImporteFijo
  loc_C25266: Call dlgImporteFijo.doImporteFijoPut(from_stack_1v)
  loc_C2526B: LitStr "0"
  loc_C2526E: ImpAdLdRf MemVar_C3D264
  loc_C25271: NewIfNullPr dlgImporteFijo
  loc_C25274: VCallAd Control_ID_
  loc_C25277: FStAdFunc var_398
  loc_C2527A: FLdPr var_398
  loc_C2527D: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C25282: FFree1Ad var_398
  loc_C25285: LitVar_Missing var_13C
  loc_C25288: PopAdLdVar
  loc_C25289: LitVarI4
  loc_C25291: PopAdLdVar
  loc_C25292: ImpAdLdRf MemVar_C3D264
  loc_C25295: NewIfNullPr dlgImporteFijo
  loc_C25298: dlgImporteFijo.Show from_stack_1, from_stack_2
  loc_C2529D: FLdRfVar var_4EC
  loc_C252A0: ImpAdLdRf MemVar_C3D264
  loc_C252A3: NewIfNullPr dlgImporteFijo
  loc_C252A6: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C252AB: FLdFPR8 var_4EC
  loc_C252AE: FnCDblR8
  loc_C252B0: LitI2_Byte 0
  loc_C252B2: CR8I2
  loc_C252B3: GtR4
  loc_C252B4: BranchF loc_C257C4
  loc_C252B7: FLdRfVar var_4EC
  loc_C252BA: ImpAdLdRf MemVar_C3D264
  loc_C252BD: NewIfNullPr dlgImporteFijo
  loc_C252C0: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C252C5: FLdFPR8 var_4EC
  loc_C252C8: FStFPR8 var_C8
  loc_C252CB: FLdFPR8 var_C8
  loc_C252CE: CVarR8
  loc_C252D2: HardType
  loc_C252D3: LitI4 2
  loc_C252D8: FLdI2 var_A2
  loc_C252DB: CI4UI1
  loc_C252DC: ILdRf var_A8
  loc_C252DF: AryLock
  loc_C252E2: Ary1LdPr
  loc_C252E3: MemLdRfVar from_stack_1.global_36
  loc_C252E6: CVarRef
  loc_C252EB: FLdRfVar var_14C
  loc_C252EE: ImpAdCallFPR4  = Round(, )
  loc_C252F3: AryUnlock
  loc_C252F6: FLdRfVar var_14C
  loc_C252F9: GtVarBool
  loc_C252FB: FFree1Var var_14C = ""
  loc_C252FE: BranchF loc_C25376
  loc_C25301: LitI4 0
  loc_C25306: LitStr "La Retención es mayor al importe devengado."
  loc_C25309: LitStr vbCrLf
  loc_C2530C: ConcatStr
  loc_C2530D: FStStrNoPop var_114
  loc_C25310: LitStr "No se realizará ninguna Retención para "
  loc_C25313: ConcatStr
  loc_C25314: CVarStr var_178
  loc_C25317: FLdRfVar var_14C
  loc_C2531A: FLdRfVar var_39C
  loc_C2531D: LitVarStr var_12C, "DetaDere"
  loc_C25322: PopAdLdVar
  loc_C25323: FLdRfVar var_398
  loc_C25326: FLdPr Me
  loc_C25329: MemLdPr global_60
  loc_C2532C:  = dlgImporteFijo.Recordset15.Fields
  loc_C25331: FLdPr var_398
  loc_C25334: from_stack_2 = Me.Item(from_stack_1)
  loc_C25339: FLdPr var_39C
  loc_C2533C:  = Me.Value
  loc_C25341: FLdRfVar var_14C
  loc_C25344: ConcatVar var_218
  loc_C25348: LitVarStr var_13C, ". Verifique..."
  loc_C2534D: ConcatVar var_2A8
  loc_C25351: CStrVarVal var_118
  loc_C25355: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2535A: FFreeStr var_114 = ""
  loc_C25361: FFreeAd var_398 = ""
  loc_C25368: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C25373: Branch loc_C257C4
  loc_C25376: LitI4 2
  loc_C2537B: FLdI2 var_A2
  loc_C2537E: CI4UI1
  loc_C2537F: ILdRf var_A8
  loc_C25382: Ary1LdPr
  loc_C25383: MemLdFPR8 global_44
  loc_C25386: FLdFPR8 var_C8
  loc_C25389: AddR8
  loc_C2538A: CVarR8
  loc_C2538E: FLdRfVar var_178
  loc_C25391: ImpAdCallFPR4  = Round(, )
  loc_C25396: FLdRfVar var_178
  loc_C25399: LitI4 2
  loc_C2539E: FLdI2 var_A2
  loc_C253A1: CI4UI1
  loc_C253A2: ILdRf var_A8
  loc_C253A5: AryLock
  loc_C253A8: Ary1LdPr
  loc_C253A9: MemLdRfVar from_stack_1.global_36
  loc_C253AC: CVarRef
  loc_C253B1: FLdRfVar var_218
  loc_C253B4: ImpAdCallFPR4  = Round(, )
  loc_C253B9: AryUnlock
  loc_C253BC: FLdRfVar var_218
  loc_C253BF: GtVarBool
  loc_C253C1: FFreeVar var_14C = "": var_178 = ""
  loc_C253CA: BranchF loc_C25442
  loc_C253CD: LitI4 0
  loc_C253D2: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C253D5: LitStr vbCrLf
  loc_C253D8: ConcatStr
  loc_C253D9: FStStrNoPop var_114
  loc_C253DC: LitStr "No se realizará ninguna Retención de "
  loc_C253DF: ConcatStr
  loc_C253E0: CVarStr var_178
  loc_C253E3: FLdRfVar var_14C
  loc_C253E6: FLdRfVar var_39C
  loc_C253E9: LitVarStr var_12C, "DetaDere"
  loc_C253EE: PopAdLdVar
  loc_C253EF: FLdRfVar var_398
  loc_C253F2: FLdPr Me
  loc_C253F5: MemLdPr global_60
  loc_C253F8:  = Me.Fields
  loc_C253FD: FLdPr var_398
  loc_C25400: from_stack_2 = Me.Item(from_stack_1)
  loc_C25405: FLdPr var_39C
  loc_C25408:  = Me.Value
  loc_C2540D: FLdRfVar var_14C
  loc_C25410: ConcatVar var_218
  loc_C25414: LitVarStr var_13C, ". Verifique..."
  loc_C25419: ConcatVar var_2A8
  loc_C2541D: CStrVarVal var_118
  loc_C25421: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C25426: FFreeStr var_114 = ""
  loc_C2542D: FFreeAd var_398 = ""
  loc_C25434: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C2543F: Branch loc_C257C4
  loc_C25442: LitI4 2
  loc_C25447: FLdI2 var_A2
  loc_C2544A: CI4UI1
  loc_C2544B: ILdRf var_A8
  loc_C2544E: Ary1LdPr
  loc_C2544F: MemLdFPR8 global_44
  loc_C25452: FLdFPR8 var_C8
  loc_C25455: AddR8
  loc_C25456: CVarR8
  loc_C2545A: FLdRfVar var_178
  loc_C2545D: ImpAdCallFPR4  = Round(, )
  loc_C25462: FLdRfVar var_178
  loc_C25465: LitI4 2
  loc_C2546A: FLdI2 var_A2
  loc_C2546D: CI4UI1
  loc_C2546E: ILdRf var_A8
  loc_C25471: AryLock
  loc_C25474: Ary1LdPr
  loc_C25475: MemLdRfVar from_stack_1.global_36
  loc_C25478: CVarRef
  loc_C2547D: FLdRfVar var_218
  loc_C25480: ImpAdCallFPR4  = Round(, )
  loc_C25485: AryUnlock
  loc_C25488: FLdRfVar var_218
  loc_C2548B: LeVarBool
  loc_C2548D: FFreeVar var_14C = "": var_178 = ""
  loc_C25496: BranchF loc_C257C4
  loc_C25499: ILdRf var_A0
  loc_C2549C: LitStr "SET @ulcerete=0;"
  loc_C2549F: ConcatStr
  loc_C254A0: FStStrNoPop var_114
  loc_C254A3: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C254A6: ConcatStr
  loc_C254A7: FStStrNoPop var_118
  loc_C254AA: ImpAdLdI2 MemVar_C3D064
  loc_C254AD: CStrUI1
  loc_C254AF: FStStrNoPop var_11C
  loc_C254B2: ConcatStr
  loc_C254B3: FStStrNoPop var_150
  loc_C254B6: LitStr " AND retenciones.CodiRete = "
  loc_C254B9: ConcatStr
  loc_C254BA: CVarStr var_178
  loc_C254BD: FLdRfVar var_14C
  loc_C254C0: FLdRfVar var_39C
  loc_C254C3: LitVarStr var_12C, "CodiRete"
  loc_C254C8: PopAdLdVar
  loc_C254C9: FLdRfVar var_398
  loc_C254CC: FLdPr Me
  loc_C254CF: MemLdPr global_60
  loc_C254D2:  = Me.Fields
  loc_C254D7: FLdPr var_398
  loc_C254DA: from_stack_2 = Me.Item(from_stack_1)
  loc_C254DF: FLdPr var_39C
  loc_C254E2:  = Me.Value
  loc_C254E7: FLdRfVar var_14C
  loc_C254EA: ConcatVar var_218
  loc_C254EE: LitVarStr var_13C, ";"
  loc_C254F3: ConcatVar var_2A8
  loc_C254F7: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C254FC: ConcatVar var_334
  loc_C25500: LitVarStr var_1A4, " VALUES ('"
  loc_C25505: ConcatVar var_384
  loc_C25509: ILdRf var_8C
  loc_C2550C: CVarStr var_1B4
  loc_C2550F: ConcatVar var_3B4
  loc_C25513: LitVarStr var_1C4, "',@liqu,"
  loc_C25518: ConcatVar var_3CC
  loc_C2551C: FLdI2 var_A2
  loc_C2551F: CI4UI1
  loc_C25520: ILdRf var_A8
  loc_C25523: Ary1LdPr
  loc_C25524: MemLdRfVar from_stack_1.global_0
  loc_C25527: LdFixedStr
  loc_C2552A: CVarStr var_3DC
  loc_C2552D: ConcatVar var_3EC
  loc_C25531: LitVarStr var_1D8, ","
  loc_C25536: ConcatVar var_404
  loc_C2553A: ImpAdLdI2 MemVar_C3D064
  loc_C2553D: CVarI2 var_1E8
  loc_C25540: ConcatVar var_414
  loc_C25544: LitVarStr var_1F8, ","
  loc_C25549: ConcatVar var_424
  loc_C2554D: FLdRfVar var_434
  loc_C25550: FLdRfVar var_3A4
  loc_C25553: LitVarStr var_208, "CodiRete"
  loc_C25558: PopAdLdVar
  loc_C25559: FLdRfVar var_3A0
  loc_C2555C: FLdPr Me
  loc_C2555F: MemLdPr global_60
  loc_C25562:  = Me.Fields
  loc_C25567: FLdPr var_3A0
  loc_C2556A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2556F: FLdPr var_3A4
  loc_C25572:  = Me.Value
  loc_C25577: FLdRfVar var_434
  loc_C2557A: ConcatVar var_444
  loc_C2557E: LitVarStr var_268, ","
  loc_C25583: ConcatVar var_454
  loc_C25587: FLdRfVar var_464
  loc_C2558A: FLdRfVar var_3BC
  loc_C2558D: LitVarStr var_278, "CodiDere"
  loc_C25592: PopAdLdVar
  loc_C25593: FLdRfVar var_3B8
  loc_C25596: FLdPr Me
  loc_C25599: MemLdPr global_60
  loc_C2559C:  = Me.Fields
  loc_C255A1: FLdPr var_3B8
  loc_C255A4: from_stack_2 = Me.Item(from_stack_1)
  loc_C255A9: FLdPr var_3BC
  loc_C255AC:  = Me.Value
  loc_C255B1: FLdRfVar var_464
  loc_C255B4: ConcatVar var_474
  loc_C255B8: LitVarStr var_288, ",1,'"
  loc_C255BD: ConcatVar var_48C
  loc_C255C1: ImpAdLdI2 MemVar_C3D064
  loc_C255C4: CVarI2 var_298
  loc_C255C7: ConcatVar var_49C
  loc_C255CB: LitVarStr var_2D4, "-01-01','"
  loc_C255D0: ConcatVar var_4AC
  loc_C255D4: FLdRfVar var_4C4
  loc_C255D7: FLdRfVar var_3F4
  loc_C255DA: LitVarStr var_2E4, "CodiCuco"
  loc_C255DF: PopAdLdVar
  loc_C255E0: FLdRfVar var_3F0
  loc_C255E3: FLdPr Me
  loc_C255E6: MemLdPr global_56
  loc_C255E9:  = Me.Fields
  loc_C255EE: FLdPr var_3F0
  loc_C255F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C255F6: FLdPr var_3F4
  loc_C255F9:  = Me.Value
  loc_C255FE: FLdRfVar var_4C4
  loc_C25601: ConcatVar var_4D4
  loc_C25605: LitVarStr var_2F4, "',0,"
  loc_C2560A: ConcatVar var_4E4
  loc_C2560E: LitI4 2
  loc_C25613: FLdI2 var_A2
  loc_C25616: CI4UI1
  loc_C25617: ILdRf var_A8
  loc_C2561A: Ary1LdPr
  loc_C2561B: MemLdFPR8 global_36
  loc_C2561E: LitI2_Byte 1
  loc_C25620: CR8I2
  loc_C25621: DivR8
  loc_C25622: CVarR8
  loc_C25626: FLdRfVar var_518
  loc_C25629: ImpAdCallFPR4  = Round(, )
  loc_C2562E: FLdRfVar var_518
  loc_C25631: CStrVarVal var_154
  loc_C25635: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2563A: CVarStr var_528
  loc_C2563D: ConcatVar var_538
  loc_C25641: LitVarStr var_314, ","
  loc_C25646: ConcatVar var_548
  loc_C2564A: FLdFPR8 var_C8
  loc_C2564D: CStrR8
  loc_C2564F: FStStrNoPop var_158
  loc_C25652: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C25657: CVarStr var_558
  loc_C2565A: ConcatVar var_570
  loc_C2565E: LitVarStr var_324, " ,@ulcerete,"
  loc_C25663: ConcatVar var_580
  loc_C25667: LitI4 0
  loc_C2566C: LitI4 -1
  loc_C25671: LitI4 1
  loc_C25676: LitStr "."
  loc_C25679: LitStr ","
  loc_C2567C: FLdFPR8 var_B8
  loc_C2567F: CStrR8
  loc_C25681: FStStrNoPop var_17C
  loc_C25684: ImpAdCallI2 Replace(, , , , , )
  loc_C25689: CVarStr var_590
  loc_C2568C: ConcatVar var_5A0
  loc_C25690: LitVarStr var_344, ","
  loc_C25695: ConcatVar var_5B0
  loc_C25699: LitI4 0
  loc_C2569E: LitI4 -1
  loc_C256A3: LitI4 1
  loc_C256A8: LitStr "."
  loc_C256AB: LitStr ","
  loc_C256AE: FLdFPR8 var_C0
  loc_C256B1: CStrR8
  loc_C256B3: FStStrNoPop var_180
  loc_C256B6: ImpAdCallI2 Replace(, , , , , )
  loc_C256BB: CVarStr var_5C0
  loc_C256BE: ConcatVar var_5D0
  loc_C256C2: LitVarStr var_354, ");"
  loc_C256C7: ConcatVar var_5E0
  loc_C256CB: LitVarStr var_364, " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C256D0: ConcatVar var_5F0
  loc_C256D4: ImpAdLdI2 MemVar_C3D064
  loc_C256D7: CVarI2 var_374
  loc_C256DA: ConcatVar var_600
  loc_C256DE: LitVarStr var_630, " AND retenciones.CodiRete = "
  loc_C256E3: ConcatVar var_610
  loc_C256E7: FLdRfVar var_620
  loc_C256EA: FLdRfVar var_47C
  loc_C256ED: LitVarStr var_670, "CodiRete"
  loc_C256F2: PopAdLdVar
  loc_C256F3: FLdRfVar var_478
  loc_C256F6: FLdPr Me
  loc_C256F9: MemLdPr global_60
  loc_C256FC:  = Me.Fields
  loc_C25701: FLdPr var_478
  loc_C25704: from_stack_2 = Me.Item(from_stack_1)
  loc_C25709: FLdPr var_47C
  loc_C2570C:  = Me.Value
  loc_C25711: FLdRfVar var_620
  loc_C25714: ConcatVar var_640
  loc_C25718: LitVarStr var_6B0, ";"
  loc_C2571D: ConcatVar var_650
  loc_C25721: CStrVarTmp
  loc_C25722: FStStr var_A0
  loc_C25725: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = ""
  loc_C25738: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = ""
  loc_C2574F: FFreeVar var_570 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = "": var_508 = "": var_518 = "": var_4E4 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C257AA: FLdI2 var_A2
  loc_C257AD: CI4UI1
  loc_C257AE: ILdRf var_A8
  loc_C257B1: Ary1LdPr
  loc_C257B2: MemLdFPR8 global_44
  loc_C257B5: FLdFPR8 var_C8
  loc_C257B8: AddR8
  loc_C257B9: FLdI2 var_A2
  loc_C257BC: CI4UI1
  loc_C257BD: ILdRf var_A8
  loc_C257C0: Ary1LdPr
  loc_C257C1: MemStFPR8 global_44
  loc_C257C4: Branch loc_C266C8
  loc_C257C7: FLdRfVar var_14C
  loc_C257CA: FLdRfVar var_39C
  loc_C257CD: LitVarStr var_12C, "ImfiDere"
  loc_C257D2: PopAdLdVar
  loc_C257D3: FLdRfVar var_398
  loc_C257D6: FLdPr Me
  loc_C257D9: MemLdPr global_60
  loc_C257DC:  = Me.Fields
  loc_C257E1: FLdPr var_398
  loc_C257E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C257E9: FLdPr var_39C
  loc_C257EC:  = Me.Value
  loc_C257F1: FLdRfVar var_14C
  loc_C257F4: LitVarStr var_13C, "1"
  loc_C257F9: HardType
  loc_C257FA: EqVarBool
  loc_C257FC: FFreeAd var_398 = ""
  loc_C25803: FFree1Var var_14C = ""
  loc_C25806: BranchF loc_C266C8
  loc_C25809: ImpAdLdRf MemVar_C3D250
  loc_C2580C: NewIfNullPr frmLiquidacion
  loc_C2580F: VCallAd Control_ID_
  loc_C25812: CVarAd
  loc_C25816: CBoolVarNull
  loc_C25818: FFree1Var var_14C = ""
  loc_C2581B: BranchF loc_C266C8
  loc_C2581E: FLdI2 var_A2
  loc_C25821: CI4UI1
  loc_C25822: ILdRf var_A8
  loc_C25825: Ary1LdPr
  loc_C25826: MemLdRfVar from_stack_1.global_0
  loc_C25829: LdFixedStr
  loc_C2582C: FStStrNoPop var_114
  loc_C2582F: LitStr " - "
  loc_C25832: ConcatStr
  loc_C25833: FStStrNoPop var_118
  loc_C25836: FLdI2 var_A2
  loc_C25839: CI4UI1
  loc_C2583A: ILdRf var_A8
  loc_C2583D: Ary1LdPr
  loc_C2583E: MemLdStr global_24
  loc_C25841: ConcatStr
  loc_C25842: FStStrNoPop var_11C
  loc_C25845: ImpAdLdRf MemVar_C3D264
  loc_C25848: NewIfNullPr dlgImporteFijo
  loc_C2584B: VCallAd Control_ID_
  loc_C2584E: FStAdFunc var_398
  loc_C25851: FLdPr var_398
  loc_C25854: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C25859: FFreeStr var_114 = "": var_118 = ""
  loc_C25862: FFree1Ad var_398
  loc_C25865: FLdRfVar var_14C
  loc_C25868: FLdRfVar var_39C
  loc_C2586B: LitVarStr var_12C, "CodiRete"
  loc_C25870: PopAdLdVar
  loc_C25871: FLdRfVar var_398
  loc_C25874: FLdPr Me
  loc_C25877: MemLdPr global_60
  loc_C2587A:  = Me.Fields
  loc_C2587F: FLdPr var_398
  loc_C25882: from_stack_2 = Me.Item(from_stack_1)
  loc_C25887: FLdPr var_39C
  loc_C2588A:  = Me.Value
  loc_C2588F: FLdRfVar var_14C
  loc_C25892: LitVarStr var_13C, " - "
  loc_C25897: ConcatVar var_178
  loc_C2589B: FLdRfVar var_218
  loc_C2589E: FLdRfVar var_3A4
  loc_C258A1: LitVarStr var_168, "DetaRete"
  loc_C258A6: PopAdLdVar
  loc_C258A7: FLdRfVar var_3A0
  loc_C258AA: FLdPr Me
  loc_C258AD: MemLdPr global_60
  loc_C258B0:  = Me.Fields
  loc_C258B5: FLdPr var_3A0
  loc_C258B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C258BD: FLdPr var_3A4
  loc_C258C0:  = Me.Value
  loc_C258C5: FLdRfVar var_218
  loc_C258C8: ConcatVar var_2A8
  loc_C258CC: CStrVarVal var_114
  loc_C258D0: ImpAdLdRf MemVar_C3D264
  loc_C258D3: NewIfNullPr dlgImporteFijo
  loc_C258D6: VCallAd Control_ID_
  loc_C258D9: FStAdFunc var_3B8
  loc_C258DC: FLdPr var_3B8
  loc_C258DF: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C258E4: FFree1Str var_114
  loc_C258E7: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_C258F4: FFreeVar var_14C = "": var_178 = "": var_218 = ""
  loc_C258FF: FLdI2 var_A2
  loc_C25902: CI4UI1
  loc_C25903: ILdRf var_A8
  loc_C25906: Ary1LdPr
  loc_C25907: MemLdR8 global_36
  loc_C2590A: ImpAdLdRf MemVar_C3D264
  loc_C2590D: NewIfNullPr dlgImporteFijo
  loc_C25910: Call dlgImporteFijo.doBaseImponiblePut(from_stack_1v)
  loc_C25915: FLdI2 var_A2
  loc_C25918: CI4UI1
  loc_C25919: ILdRf var_A8
  loc_C2591C: Ary1LdPr
  loc_C2591D: MemLdFPR8 global_36
  loc_C25920: CStrR8
  loc_C25922: FStStrNoPop var_114
  loc_C25925: ImpAdLdRf MemVar_C3D264
  loc_C25928: NewIfNullPr dlgImporteFijo
  loc_C2592B: VCallAd Control_ID_
  loc_C2592E: FStAdFunc var_398
  loc_C25931: FLdPr var_398
  loc_C25934: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C25939: FFree1Str var_114
  loc_C2593C: FFree1Ad var_398
  loc_C2593F: LitI2_Byte 0
  loc_C25941: CR8I2
  loc_C25942: PopFPR8
  loc_C25943: ImpAdLdRf MemVar_C3D264
  loc_C25946: NewIfNullPr dlgImporteFijo
  loc_C25949: Call dlgImporteFijo.doImporteFijoPut(from_stack_1v)
  loc_C2594E: LitStr "0"
  loc_C25951: ImpAdLdRf MemVar_C3D264
  loc_C25954: NewIfNullPr dlgImporteFijo
  loc_C25957: VCallAd Control_ID_
  loc_C2595A: FStAdFunc var_398
  loc_C2595D: FLdPr var_398
  loc_C25960: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C25965: FFree1Ad var_398
  loc_C25968: LitVar_Missing var_13C
  loc_C2596B: PopAdLdVar
  loc_C2596C: LitVarI4
  loc_C25974: PopAdLdVar
  loc_C25975: ImpAdLdRf MemVar_C3D264
  loc_C25978: NewIfNullPr dlgImporteFijo
  loc_C2597B: dlgImporteFijo.Show from_stack_1, from_stack_2
  loc_C25980: FLdRfVar var_4EC
  loc_C25983: ImpAdLdRf MemVar_C3D264
  loc_C25986: NewIfNullPr dlgImporteFijo
  loc_C25989: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C2598E: FLdFPR8 var_4EC
  loc_C25991: FnCDblR8
  loc_C25993: LitI2_Byte 0
  loc_C25995: CR8I2
  loc_C25996: GtR4
  loc_C25997: BranchF loc_C25EAA
  loc_C2599A: FLdRfVar var_4EC
  loc_C2599D: ImpAdLdRf MemVar_C3D264
  loc_C259A0: NewIfNullPr dlgImporteFijo
  loc_C259A3: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C259A8: FLdFPR8 var_4EC
  loc_C259AB: FStFPR8 var_C8
  loc_C259AE: FLdFPR8 var_C8
  loc_C259B1: CVarR8
  loc_C259B5: HardType
  loc_C259B6: LitI4 2
  loc_C259BB: FLdI2 var_A2
  loc_C259BE: CI4UI1
  loc_C259BF: ILdRf var_A8
  loc_C259C2: AryLock
  loc_C259C5: Ary1LdPr
  loc_C259C6: MemLdRfVar from_stack_1.global_36
  loc_C259C9: CVarRef
  loc_C259CE: FLdRfVar var_14C
  loc_C259D1: ImpAdCallFPR4  = Round(, )
  loc_C259D6: AryUnlock
  loc_C259D9: FLdRfVar var_14C
  loc_C259DC: GtVarBool
  loc_C259DE: FFree1Var var_14C = ""
  loc_C259E1: BranchF loc_C25A59
  loc_C259E4: LitI4 0
  loc_C259E9: LitStr "La Retención es mayor al importe devengado."
  loc_C259EC: LitStr vbCrLf
  loc_C259EF: ConcatStr
  loc_C259F0: FStStrNoPop var_114
  loc_C259F3: LitStr "No se realizará ninguna Retención para "
  loc_C259F6: ConcatStr
  loc_C259F7: CVarStr var_178
  loc_C259FA: FLdRfVar var_14C
  loc_C259FD: FLdRfVar var_39C
  loc_C25A00: LitVarStr var_12C, "DetaDere"
  loc_C25A05: PopAdLdVar
  loc_C25A06: FLdRfVar var_398
  loc_C25A09: FLdPr Me
  loc_C25A0C: MemLdPr global_60
  loc_C25A0F:  = dlgImporteFijo.Recordset15.Fields
  loc_C25A14: FLdPr var_398
  loc_C25A17: from_stack_2 = Me.Item(from_stack_1)
  loc_C25A1C: FLdPr var_39C
  loc_C25A1F:  = Me.Value
  loc_C25A24: FLdRfVar var_14C
  loc_C25A27: ConcatVar var_218
  loc_C25A2B: LitVarStr var_13C, ". Verifique..."
  loc_C25A30: ConcatVar var_2A8
  loc_C25A34: CStrVarVal var_118
  loc_C25A38: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C25A3D: FFreeStr var_114 = ""
  loc_C25A44: FFreeAd var_398 = ""
  loc_C25A4B: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C25A56: Branch loc_C25EA7
  loc_C25A59: LitI4 2
  loc_C25A5E: FLdI2 var_A2
  loc_C25A61: CI4UI1
  loc_C25A62: ILdRf var_A8
  loc_C25A65: Ary1LdPr
  loc_C25A66: MemLdFPR8 global_44
  loc_C25A69: FLdFPR8 var_C8
  loc_C25A6C: AddR8
  loc_C25A6D: CVarR8
  loc_C25A71: FLdRfVar var_178
  loc_C25A74: ImpAdCallFPR4  = Round(, )
  loc_C25A79: FLdRfVar var_178
  loc_C25A7C: LitI4 2
  loc_C25A81: FLdI2 var_A2
  loc_C25A84: CI4UI1
  loc_C25A85: ILdRf var_A8
  loc_C25A88: AryLock
  loc_C25A8B: Ary1LdPr
  loc_C25A8C: MemLdRfVar from_stack_1.global_36
  loc_C25A8F: CVarRef
  loc_C25A94: FLdRfVar var_218
  loc_C25A97: ImpAdCallFPR4  = Round(, )
  loc_C25A9C: AryUnlock
  loc_C25A9F: FLdRfVar var_218
  loc_C25AA2: GtVarBool
  loc_C25AA4: FFreeVar var_14C = "": var_178 = ""
  loc_C25AAD: BranchF loc_C25B25
  loc_C25AB0: LitI4 0
  loc_C25AB5: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C25AB8: LitStr vbCrLf
  loc_C25ABB: ConcatStr
  loc_C25ABC: FStStrNoPop var_114
  loc_C25ABF: LitStr "No se realizará ninguna Retención de "
  loc_C25AC2: ConcatStr
  loc_C25AC3: CVarStr var_178
  loc_C25AC6: FLdRfVar var_14C
  loc_C25AC9: FLdRfVar var_39C
  loc_C25ACC: LitVarStr var_12C, "DetaDere"
  loc_C25AD1: PopAdLdVar
  loc_C25AD2: FLdRfVar var_398
  loc_C25AD5: FLdPr Me
  loc_C25AD8: MemLdPr global_60
  loc_C25ADB:  = Me.Fields
  loc_C25AE0: FLdPr var_398
  loc_C25AE3: from_stack_2 = Me.Item(from_stack_1)
  loc_C25AE8: FLdPr var_39C
  loc_C25AEB:  = Me.Value
  loc_C25AF0: FLdRfVar var_14C
  loc_C25AF3: ConcatVar var_218
  loc_C25AF7: LitVarStr var_13C, ". Verifique..."
  loc_C25AFC: ConcatVar var_2A8
  loc_C25B00: CStrVarVal var_118
  loc_C25B04: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C25B09: FFreeStr var_114 = ""
  loc_C25B10: FFreeAd var_398 = ""
  loc_C25B17: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C25B22: Branch loc_C25EA7
  loc_C25B25: LitI4 2
  loc_C25B2A: FLdI2 var_A2
  loc_C25B2D: CI4UI1
  loc_C25B2E: ILdRf var_A8
  loc_C25B31: Ary1LdPr
  loc_C25B32: MemLdFPR8 global_44
  loc_C25B35: FLdFPR8 var_C8
  loc_C25B38: AddR8
  loc_C25B39: CVarR8
  loc_C25B3D: FLdRfVar var_178
  loc_C25B40: ImpAdCallFPR4  = Round(, )
  loc_C25B45: FLdRfVar var_178
  loc_C25B48: LitI4 2
  loc_C25B4D: FLdI2 var_A2
  loc_C25B50: CI4UI1
  loc_C25B51: ILdRf var_A8
  loc_C25B54: AryLock
  loc_C25B57: Ary1LdPr
  loc_C25B58: MemLdRfVar from_stack_1.global_36
  loc_C25B5B: CVarRef
  loc_C25B60: FLdRfVar var_218
  loc_C25B63: ImpAdCallFPR4  = Round(, )
  loc_C25B68: AryUnlock
  loc_C25B6B: FLdRfVar var_218
  loc_C25B6E: LeVarBool
  loc_C25B70: FFreeVar var_14C = "": var_178 = ""
  loc_C25B79: BranchF loc_C25EA7
  loc_C25B7C: ILdRf var_A0
  loc_C25B7F: LitStr "SET @ulcerete=0;"
  loc_C25B82: ConcatStr
  loc_C25B83: FStStrNoPop var_114
  loc_C25B86: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C25B89: ConcatStr
  loc_C25B8A: FStStrNoPop var_118
  loc_C25B8D: ImpAdLdI2 MemVar_C3D064
  loc_C25B90: CStrUI1
  loc_C25B92: FStStrNoPop var_11C
  loc_C25B95: ConcatStr
  loc_C25B96: FStStrNoPop var_150
  loc_C25B99: LitStr " AND retenciones.CodiRete = "
  loc_C25B9C: ConcatStr
  loc_C25B9D: CVarStr var_178
  loc_C25BA0: FLdRfVar var_14C
  loc_C25BA3: FLdRfVar var_39C
  loc_C25BA6: LitVarStr var_12C, "CodiRete"
  loc_C25BAB: PopAdLdVar
  loc_C25BAC: FLdRfVar var_398
  loc_C25BAF: FLdPr Me
  loc_C25BB2: MemLdPr global_60
  loc_C25BB5:  = Me.Fields
  loc_C25BBA: FLdPr var_398
  loc_C25BBD: from_stack_2 = Me.Item(from_stack_1)
  loc_C25BC2: FLdPr var_39C
  loc_C25BC5:  = Me.Value
  loc_C25BCA: FLdRfVar var_14C
  loc_C25BCD: ConcatVar var_218
  loc_C25BD1: LitVarStr var_13C, ";"
  loc_C25BD6: ConcatVar var_2A8
  loc_C25BDA: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C25BDF: ConcatVar var_334
  loc_C25BE3: LitVarStr var_1A4, " VALUES ('"
  loc_C25BE8: ConcatVar var_384
  loc_C25BEC: ILdRf var_8C
  loc_C25BEF: CVarStr var_1B4
  loc_C25BF2: ConcatVar var_3B4
  loc_C25BF6: LitVarStr var_1C4, "',@liqu,"
  loc_C25BFB: ConcatVar var_3CC
  loc_C25BFF: FLdI2 var_A2
  loc_C25C02: CI4UI1
  loc_C25C03: ILdRf var_A8
  loc_C25C06: Ary1LdPr
  loc_C25C07: MemLdRfVar from_stack_1.global_0
  loc_C25C0A: LdFixedStr
  loc_C25C0D: CVarStr var_3DC
  loc_C25C10: ConcatVar var_3EC
  loc_C25C14: LitVarStr var_1D8, ","
  loc_C25C19: ConcatVar var_404
  loc_C25C1D: ImpAdLdI2 MemVar_C3D064
  loc_C25C20: CVarI2 var_1E8
  loc_C25C23: ConcatVar var_414
  loc_C25C27: LitVarStr var_1F8, ","
  loc_C25C2C: ConcatVar var_424
  loc_C25C30: FLdRfVar var_434
  loc_C25C33: FLdRfVar var_3A4
  loc_C25C36: LitVarStr var_208, "CodiRete"
  loc_C25C3B: PopAdLdVar
  loc_C25C3C: FLdRfVar var_3A0
  loc_C25C3F: FLdPr Me
  loc_C25C42: MemLdPr global_60
  loc_C25C45:  = Me.Fields
  loc_C25C4A: FLdPr var_3A0
  loc_C25C4D: from_stack_2 = Me.Item(from_stack_1)
  loc_C25C52: FLdPr var_3A4
  loc_C25C55:  = Me.Value
  loc_C25C5A: FLdRfVar var_434
  loc_C25C5D: ConcatVar var_444
  loc_C25C61: LitVarStr var_268, ","
  loc_C25C66: ConcatVar var_454
  loc_C25C6A: FLdRfVar var_464
  loc_C25C6D: FLdRfVar var_3BC
  loc_C25C70: LitVarStr var_278, "CodiDere"
  loc_C25C75: PopAdLdVar
  loc_C25C76: FLdRfVar var_3B8
  loc_C25C79: FLdPr Me
  loc_C25C7C: MemLdPr global_60
  loc_C25C7F:  = Me.Fields
  loc_C25C84: FLdPr var_3B8
  loc_C25C87: from_stack_2 = Me.Item(from_stack_1)
  loc_C25C8C: FLdPr var_3BC
  loc_C25C8F:  = Me.Value
  loc_C25C94: FLdRfVar var_464
  loc_C25C97: ConcatVar var_474
  loc_C25C9B: LitVarStr var_288, ",1,'"
  loc_C25CA0: ConcatVar var_48C
  loc_C25CA4: ImpAdLdI2 MemVar_C3D064
  loc_C25CA7: CVarI2 var_298
  loc_C25CAA: ConcatVar var_49C
  loc_C25CAE: LitVarStr var_2D4, "-01-01','"
  loc_C25CB3: ConcatVar var_4AC
  loc_C25CB7: FLdRfVar var_4C4
  loc_C25CBA: FLdRfVar var_3F4
  loc_C25CBD: LitVarStr var_2E4, "CodiCuco"
  loc_C25CC2: PopAdLdVar
  loc_C25CC3: FLdRfVar var_3F0
  loc_C25CC6: FLdPr Me
  loc_C25CC9: MemLdPr global_56
  loc_C25CCC:  = Me.Fields
  loc_C25CD1: FLdPr var_3F0
  loc_C25CD4: from_stack_2 = Me.Item(from_stack_1)
  loc_C25CD9: FLdPr var_3F4
  loc_C25CDC:  = Me.Value
  loc_C25CE1: FLdRfVar var_4C4
  loc_C25CE4: ConcatVar var_4D4
  loc_C25CE8: LitVarStr var_2F4, "',0,"
  loc_C25CED: ConcatVar var_4E4
  loc_C25CF1: LitI4 2
  loc_C25CF6: FLdI2 var_A2
  loc_C25CF9: CI4UI1
  loc_C25CFA: ILdRf var_A8
  loc_C25CFD: Ary1LdPr
  loc_C25CFE: MemLdFPR8 global_36
  loc_C25D01: LitI2_Byte 1
  loc_C25D03: CR8I2
  loc_C25D04: DivR8
  loc_C25D05: CVarR8
  loc_C25D09: FLdRfVar var_518
  loc_C25D0C: ImpAdCallFPR4  = Round(, )
  loc_C25D11: FLdRfVar var_518
  loc_C25D14: CStrVarVal var_154
  loc_C25D18: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C25D1D: CVarStr var_528
  loc_C25D20: ConcatVar var_538
  loc_C25D24: LitVarStr var_314, ","
  loc_C25D29: ConcatVar var_548
  loc_C25D2D: FLdFPR8 var_C8
  loc_C25D30: CStrR8
  loc_C25D32: FStStrNoPop var_158
  loc_C25D35: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C25D3A: CVarStr var_558
  loc_C25D3D: ConcatVar var_570
  loc_C25D41: LitVarStr var_324, " ,@ulcerete,"
  loc_C25D46: ConcatVar var_580
  loc_C25D4A: LitI4 0
  loc_C25D4F: LitI4 -1
  loc_C25D54: LitI4 1
  loc_C25D59: LitStr "."
  loc_C25D5C: LitStr ","
  loc_C25D5F: FLdFPR8 var_B8
  loc_C25D62: CStrR8
  loc_C25D64: FStStrNoPop var_17C
  loc_C25D67: ImpAdCallI2 Replace(, , , , , )
  loc_C25D6C: CVarStr var_590
  loc_C25D6F: ConcatVar var_5A0
  loc_C25D73: LitVarStr var_344, ","
  loc_C25D78: ConcatVar var_5B0
  loc_C25D7C: LitI4 0
  loc_C25D81: LitI4 -1
  loc_C25D86: LitI4 1
  loc_C25D8B: LitStr "."
  loc_C25D8E: LitStr ","
  loc_C25D91: FLdFPR8 var_C0
  loc_C25D94: CStrR8
  loc_C25D96: FStStrNoPop var_180
  loc_C25D99: ImpAdCallI2 Replace(, , , , , )
  loc_C25D9E: CVarStr var_5C0
  loc_C25DA1: ConcatVar var_5D0
  loc_C25DA5: LitVarStr var_354, ");"
  loc_C25DAA: ConcatVar var_5E0
  loc_C25DAE: LitVarStr var_364, " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C25DB3: ConcatVar var_5F0
  loc_C25DB7: ImpAdLdI2 MemVar_C3D064
  loc_C25DBA: CVarI2 var_374
  loc_C25DBD: ConcatVar var_600
  loc_C25DC1: LitVarStr var_630, " AND retenciones.CodiRete = "
  loc_C25DC6: ConcatVar var_610
  loc_C25DCA: FLdRfVar var_620
  loc_C25DCD: FLdRfVar var_47C
  loc_C25DD0: LitVarStr var_670, "CodiRete"
  loc_C25DD5: PopAdLdVar
  loc_C25DD6: FLdRfVar var_478
  loc_C25DD9: FLdPr Me
  loc_C25DDC: MemLdPr global_60
  loc_C25DDF:  = Me.Fields
  loc_C25DE4: FLdPr var_478
  loc_C25DE7: from_stack_2 = Me.Item(from_stack_1)
  loc_C25DEC: FLdPr var_47C
  loc_C25DEF:  = Me.Value
  loc_C25DF4: FLdRfVar var_620
  loc_C25DF7: ConcatVar var_640
  loc_C25DFB: LitVarStr var_6B0, ";"
  loc_C25E00: ConcatVar var_650
  loc_C25E04: CStrVarTmp
  loc_C25E05: FStStr var_A0
  loc_C25E08: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = ""
  loc_C25E1B: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = ""
  loc_C25E32: FFreeVar var_570 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = "": var_508 = "": var_518 = "": var_4E4 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C25E8D: FLdI2 var_A2
  loc_C25E90: CI4UI1
  loc_C25E91: ILdRf var_A8
  loc_C25E94: Ary1LdPr
  loc_C25E95: MemLdFPR8 global_44
  loc_C25E98: FLdFPR8 var_C8
  loc_C25E9B: AddR8
  loc_C25E9C: FLdI2 var_A2
  loc_C25E9F: CI4UI1
  loc_C25EA0: ILdRf var_A8
  loc_C25EA3: Ary1LdPr
  loc_C25EA4: MemStFPR8 global_44
  loc_C25EA7: Branch loc_C266C8
  loc_C25EAA: FLdRfVar var_4EC
  loc_C25EAD: ImpAdLdRf MemVar_C3D264
  loc_C25EB0: NewIfNullPr dlgImporteFijo
  loc_C25EB3: from_stack_1v = dlgImporteFijo.doBaseImponibleGet()
  loc_C25EB8: FLdFPR8 var_4EC
  loc_C25EBB: FnCDblR8
  loc_C25EBD: LitI2_Byte 0
  loc_C25EBF: CR8I2
  loc_C25EC0: GtR4
  loc_C25EC1: BranchF loc_C266C8
  loc_C25EC4: LitStr " SELECT *"
  loc_C25EC7: LitStr " FROM escalas"
  loc_C25ECA: ConcatStr
  loc_C25ECB: FStStrNoPop var_114
  loc_C25ECE: LitStr " WHERE PeriInfo = "
  loc_C25ED1: ConcatStr
  loc_C25ED2: CVarStr var_178
  loc_C25ED5: FLdRfVar var_14C
  loc_C25ED8: FLdRfVar var_39C
  loc_C25EDB: LitVarStr var_12C, "PeriInfo"
  loc_C25EE0: PopAdLdVar
  loc_C25EE1: FLdRfVar var_398
  loc_C25EE4: FLdPr Me
  loc_C25EE7: MemLdPr global_60
  loc_C25EEA:  = dlgImporteFijo.Recordset15.Fields
  loc_C25EEF: FLdPr var_398
  loc_C25EF2: from_stack_2 = Me.Item(from_stack_1)
  loc_C25EF7: FLdPr var_39C
  loc_C25EFA:  = Me.Value
  loc_C25EFF: FLdRfVar var_14C
  loc_C25F02: ConcatVar var_218
  loc_C25F06: LitVarStr var_13C, " AND FechEsca = ("
  loc_C25F0B: ConcatVar var_2A8
  loc_C25F0F: LitVarStr var_168, "SELECT Max(FechEsca) FROM escalas WHERE escalas.PeriInfo = "
  loc_C25F14: ConcatVar var_334
  loc_C25F18: FLdRfVar var_384
  loc_C25F1B: FLdRfVar var_3A4
  loc_C25F1E: LitVarStr var_1A4, "PeriInfo"
  loc_C25F23: PopAdLdVar
  loc_C25F24: FLdRfVar var_3A0
  loc_C25F27: FLdPr Me
  loc_C25F2A: MemLdPr global_60
  loc_C25F2D:  = Me.Fields
  loc_C25F32: FLdPr var_3A0
  loc_C25F35: from_stack_2 = Me.Item(from_stack_1)
  loc_C25F3A: FLdPr var_3A4
  loc_C25F3D:  = Me.Value
  loc_C25F42: FLdRfVar var_384
  loc_C25F45: ConcatVar var_3B4
  loc_C25F49: LitVarStr var_1B4, " AND escalas.CodiRete = "
  loc_C25F4E: ConcatVar var_3CC
  loc_C25F52: FLdRfVar var_3DC
  loc_C25F55: FLdRfVar var_3BC
  loc_C25F58: LitVarStr var_1C4, "CodiRete"
  loc_C25F5D: PopAdLdVar
  loc_C25F5E: FLdRfVar var_3B8
  loc_C25F61: FLdPr Me
  loc_C25F64: MemLdPr global_60
  loc_C25F67:  = Me.Fields
  loc_C25F6C: FLdPr var_3B8
  loc_C25F6F: from_stack_2 = Me.Item(from_stack_1)
  loc_C25F74: FLdPr var_3BC
  loc_C25F77:  = Me.Value
  loc_C25F7C: FLdRfVar var_3DC
  loc_C25F7F: ConcatVar var_3EC
  loc_C25F83: LitVarStr var_1D8, " AND escalas.CodiDere = "
  loc_C25F88: ConcatVar var_404
  loc_C25F8C: FLdRfVar var_414
  loc_C25F8F: FLdRfVar var_3F4
  loc_C25F92: LitVarStr var_1E8, "CodiDere"
  loc_C25F97: PopAdLdVar
  loc_C25F98: FLdRfVar var_3F0
  loc_C25F9B: FLdPr Me
  loc_C25F9E: MemLdPr global_60
  loc_C25FA1:  = Me.Fields
  loc_C25FA6: FLdPr var_3F0
  loc_C25FA9: from_stack_2 = Me.Item(from_stack_1)
  loc_C25FAE: FLdPr var_3F4
  loc_C25FB1:  = Me.Value
  loc_C25FB6: FLdRfVar var_414
  loc_C25FB9: ConcatVar var_424
  loc_C25FBD: LitVarStr var_1F8, " AND FechEsca <= "
  loc_C25FC2: ConcatVar var_434
  loc_C25FC6: LitI4 1
  loc_C25FCB: LitI4 1
  loc_C25FD0: LitVarStr var_268, "'yyyy-mm-dd'"
  loc_C25FD5: FStVarCopyObj var_444
  loc_C25FD8: FLdRfVar var_444
  loc_C25FDB: FLdRfVar var_90
  loc_C25FDE: CVarRef
  loc_C25FE3: FLdRfVar var_454
  loc_C25FE6: ImpAdCallFPR4  = Format(, )
  loc_C25FEB: FLdRfVar var_454
  loc_C25FEE: ConcatVar var_464
  loc_C25FF2: LitVarStr var_278, ")"
  loc_C25FF7: ConcatVar var_474
  loc_C25FFB: LitVarStr var_288, " AND CodiRete = "
  loc_C26000: ConcatVar var_48C
  loc_C26004: FLdRfVar var_49C
  loc_C26007: FLdRfVar var_47C
  loc_C2600A: LitVarStr var_298, "CodiRete"
  loc_C2600F: PopAdLdVar
  loc_C26010: FLdRfVar var_478
  loc_C26013: FLdPr Me
  loc_C26016: MemLdPr global_60
  loc_C26019:  = Me.Fields
  loc_C2601E: FLdPr var_478
  loc_C26021: from_stack_2 = Me.Item(from_stack_1)
  loc_C26026: FLdPr var_47C
  loc_C26029:  = Me.Value
  loc_C2602E: FLdRfVar var_49C
  loc_C26031: ConcatVar var_4AC
  loc_C26035: LitVarStr var_2D4, " AND CodiDere = "
  loc_C2603A: ConcatVar var_4C4
  loc_C2603E: FLdRfVar var_4D4
  loc_C26041: FLdRfVar var_4B4
  loc_C26044: LitVarStr var_2E4, "CodiDere"
  loc_C26049: PopAdLdVar
  loc_C2604A: FLdRfVar var_4B0
  loc_C2604D: FLdPr Me
  loc_C26050: MemLdPr global_60
  loc_C26053:  = Me.Fields
  loc_C26058: FLdPr var_4B0
  loc_C2605B: from_stack_2 = Me.Item(from_stack_1)
  loc_C26060: FLdPr var_4B4
  loc_C26063:  = Me.Value
  loc_C26068: FLdRfVar var_4D4
  loc_C2606B: ConcatVar var_4E4
  loc_C2606F: CStrVarVal var_118
  loc_C26073: Call EjecutarRsCls3(from_stack_1v)
  loc_C26078: FFreeStr var_114 = ""
  loc_C2607F: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C2609A: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_444 = "": var_434 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = ""
  loc_C260CD: FLdRfVar var_4EC
  loc_C260D0: ImpAdLdRf MemVar_C3D264
  loc_C260D3: NewIfNullPr dlgImporteFijo
  loc_C260D6: from_stack_1v = dlgImporteFijo.doBaseImponibleGet()
  loc_C260DB: FLdRfVar var_14C
  loc_C260DE: FLdRfVar var_39C
  loc_C260E1: LitVarStr var_12C, "BaseEsca"
  loc_C260E6: PopAdLdVar
  loc_C260E7: FLdRfVar var_398
  loc_C260EA: FLdPr Me
  loc_C260ED: MemLdPr global_64
  loc_C260F0:  = dlgImporteFijo.Recordset15.Fields
  loc_C260F5: FLdPr var_398
  loc_C260F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C260FD: FLdPr var_39C
  loc_C26100:  = Me.Value
  loc_C26105: LitI4 2
  loc_C2610A: FLdFPR8 var_4EC
  loc_C2610D: CVarR8
  loc_C26111: FLdRfVar var_14C
  loc_C26114: DivVar var_178
  loc_C26118: FStVar var_218
  loc_C2611C: FLdRfVar var_218
  loc_C2611F: FLdRfVar var_2A8
  loc_C26122: ImpAdCallFPR4  = Round(, )
  loc_C26127: FLdRfVar var_334
  loc_C2612A: FLdRfVar var_3A4
  loc_C2612D: LitVarStr var_168, "AlicEsca"
  loc_C26132: PopAdLdVar
  loc_C26133: FLdRfVar var_3A0
  loc_C26136: FLdPr Me
  loc_C26139: MemLdPr global_64
  loc_C2613C:  = Me.Fields
  loc_C26141: FLdPr var_3A0
  loc_C26144: from_stack_2 = Me.Item(from_stack_1)
  loc_C26149: FLdPr var_3A4
  loc_C2614C:  = Me.Value
  loc_C26151: LitI4 2
  loc_C26156: FLdRfVar var_2A8
  loc_C26159: FLdRfVar var_334
  loc_C2615C: MulVar var_384
  loc_C26160: LitVarI2 var_1A4, 100
  loc_C26165: DivVar var_3B4
  loc_C26169: FStVar var_3CC
  loc_C2616D: FLdRfVar var_3CC
  loc_C26170: FLdRfVar var_3DC
  loc_C26173: ImpAdCallFPR4  = Round(, )
  loc_C26178: FLdRfVar var_3DC
  loc_C2617B: CR4Var
  loc_C2617C: FStFPR8 var_C8
  loc_C2617F: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C2618A: FFreeVar var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_3CC = ""
  loc_C26199: FLdFPR8 var_C8
  loc_C2619C: CVarR8
  loc_C261A0: HardType
  loc_C261A1: LitI4 2
  loc_C261A6: FLdI2 var_A2
  loc_C261A9: CI4UI1
  loc_C261AA: ILdRf var_A8
  loc_C261AD: AryLock
  loc_C261B0: Ary1LdPr
  loc_C261B1: MemLdRfVar from_stack_1.global_36
  loc_C261B4: CVarRef
  loc_C261B9: FLdRfVar var_14C
  loc_C261BC: ImpAdCallFPR4  = Round(, )
  loc_C261C1: AryUnlock
  loc_C261C4: FLdRfVar var_14C
  loc_C261C7: GtVarBool
  loc_C261C9: FFree1Var var_14C = ""
  loc_C261CC: BranchF loc_C26244
  loc_C261CF: LitI4 0
  loc_C261D4: LitStr "La Retención es mayor al importe devengado."
  loc_C261D7: LitStr vbCrLf
  loc_C261DA: ConcatStr
  loc_C261DB: FStStrNoPop var_114
  loc_C261DE: LitStr "No se realizará ninguna Retención para "
  loc_C261E1: ConcatStr
  loc_C261E2: CVarStr var_178
  loc_C261E5: FLdRfVar var_14C
  loc_C261E8: FLdRfVar var_39C
  loc_C261EB: LitVarStr var_12C, "DetaDere"
  loc_C261F0: PopAdLdVar
  loc_C261F1: FLdRfVar var_398
  loc_C261F4: FLdPr Me
  loc_C261F7: MemLdPr global_60
  loc_C261FA:  = Me.Fields
  loc_C261FF: FLdPr var_398
  loc_C26202: from_stack_2 = Me.Item(from_stack_1)
  loc_C26207: FLdPr var_39C
  loc_C2620A:  = Me.Value
  loc_C2620F: FLdRfVar var_14C
  loc_C26212: ConcatVar var_218
  loc_C26216: LitVarStr var_13C, ". Verifique..."
  loc_C2621B: ConcatVar var_2A8
  loc_C2621F: CStrVarVal var_118
  loc_C26223: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C26228: FFreeStr var_114 = ""
  loc_C2622F: FFreeAd var_398 = ""
  loc_C26236: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C26241: Branch loc_C266C8
  loc_C26244: LitI4 2
  loc_C26249: FLdI2 var_A2
  loc_C2624C: CI4UI1
  loc_C2624D: ILdRf var_A8
  loc_C26250: Ary1LdPr
  loc_C26251: MemLdFPR8 global_44
  loc_C26254: FLdFPR8 var_C8
  loc_C26257: AddR8
  loc_C26258: CVarR8
  loc_C2625C: FLdRfVar var_178
  loc_C2625F: ImpAdCallFPR4  = Round(, )
  loc_C26264: FLdRfVar var_178
  loc_C26267: LitI4 2
  loc_C2626C: FLdI2 var_A2
  loc_C2626F: CI4UI1
  loc_C26270: ILdRf var_A8
  loc_C26273: AryLock
  loc_C26276: Ary1LdPr
  loc_C26277: MemLdRfVar from_stack_1.global_36
  loc_C2627A: CVarRef
  loc_C2627F: FLdRfVar var_218
  loc_C26282: ImpAdCallFPR4  = Round(, )
  loc_C26287: AryUnlock
  loc_C2628A: FLdRfVar var_218
  loc_C2628D: GtVarBool
  loc_C2628F: FFreeVar var_14C = "": var_178 = ""
  loc_C26298: BranchF loc_C26310
  loc_C2629B: LitI4 0
  loc_C262A0: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C262A3: LitStr vbCrLf
  loc_C262A6: ConcatStr
  loc_C262A7: FStStrNoPop var_114
  loc_C262AA: LitStr "No se realizará ninguna Retención de "
  loc_C262AD: ConcatStr
  loc_C262AE: CVarStr var_178
  loc_C262B1: FLdRfVar var_14C
  loc_C262B4: FLdRfVar var_39C
  loc_C262B7: LitVarStr var_12C, "DetaDere"
  loc_C262BC: PopAdLdVar
  loc_C262BD: FLdRfVar var_398
  loc_C262C0: FLdPr Me
  loc_C262C3: MemLdPr global_60
  loc_C262C6:  = Me.Fields
  loc_C262CB: FLdPr var_398
  loc_C262CE: from_stack_2 = Me.Item(from_stack_1)
  loc_C262D3: FLdPr var_39C
  loc_C262D6:  = Me.Value
  loc_C262DB: FLdRfVar var_14C
  loc_C262DE: ConcatVar var_218
  loc_C262E2: LitVarStr var_13C, ". Verifique..."
  loc_C262E7: ConcatVar var_2A8
  loc_C262EB: CStrVarVal var_118
  loc_C262EF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C262F4: FFreeStr var_114 = ""
  loc_C262FB: FFreeAd var_398 = ""
  loc_C26302: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C2630D: Branch loc_C266C8
  loc_C26310: LitI4 2
  loc_C26315: FLdI2 var_A2
  loc_C26318: CI4UI1
  loc_C26319: ILdRf var_A8
  loc_C2631C: Ary1LdPr
  loc_C2631D: MemLdFPR8 global_44
  loc_C26320: FLdFPR8 var_C8
  loc_C26323: AddR8
  loc_C26324: CVarR8
  loc_C26328: FLdRfVar var_178
  loc_C2632B: ImpAdCallFPR4  = Round(, )
  loc_C26330: FLdRfVar var_178
  loc_C26333: LitI4 2
  loc_C26338: FLdI2 var_A2
  loc_C2633B: CI4UI1
  loc_C2633C: ILdRf var_A8
  loc_C2633F: AryLock
  loc_C26342: Ary1LdPr
  loc_C26343: MemLdRfVar from_stack_1.global_36
  loc_C26346: CVarRef
  loc_C2634B: FLdRfVar var_218
  loc_C2634E: ImpAdCallFPR4  = Round(, )
  loc_C26353: AryUnlock
  loc_C26356: FLdRfVar var_218
  loc_C26359: LeVarBool
  loc_C2635B: FFreeVar var_14C = "": var_178 = ""
  loc_C26364: BranchF loc_C266C8
  loc_C26367: FLdFPR8 var_C8
  loc_C2636A: LitI2_Byte 0
  loc_C2636C: CR8I2
  loc_C2636D: GtR4
  loc_C2636E: BranchF loc_C266C8
  loc_C26371: FLdRfVar var_4EC
  loc_C26374: ImpAdLdRf MemVar_C3D264
  loc_C26377: NewIfNullPr dlgImporteFijo
  loc_C2637A: from_stack_1v = dlgImporteFijo.doBaseImponibleGet()
  loc_C2637F: LitI4 2
  loc_C26384: FLdFPR8 var_4EC
  loc_C26387: CVarR8
  loc_C2638B: FLdRfVar var_518
  loc_C2638E: ImpAdCallFPR4  = Round(, )
  loc_C26393: ILdRf var_A0
  loc_C26396: LitStr "SET @ulcerete=0;"
  loc_C26399: ConcatStr
  loc_C2639A: FStStrNoPop var_114
  loc_C2639D: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C263A0: ConcatStr
  loc_C263A1: FStStrNoPop var_118
  loc_C263A4: ImpAdLdI2 MemVar_C3D064
  loc_C263A7: CStrUI1
  loc_C263A9: FStStrNoPop var_11C
  loc_C263AC: ConcatStr
  loc_C263AD: FStStrNoPop var_150
  loc_C263B0: LitStr " AND retenciones.CodiRete = "
  loc_C263B3: ConcatStr
  loc_C263B4: CVarStr var_178
  loc_C263B7: FLdRfVar var_14C
  loc_C263BA: FLdRfVar var_39C
  loc_C263BD: LitVarStr var_12C, "CodiRete"
  loc_C263C2: PopAdLdVar
  loc_C263C3: FLdRfVar var_398
  loc_C263C6: FLdPr Me
  loc_C263C9: MemLdPr global_60
  loc_C263CC:  = dlgImporteFijo.Recordset15.Fields
  loc_C263D1: FLdPr var_398
  loc_C263D4: from_stack_2 = Me.Item(from_stack_1)
  loc_C263D9: FLdPr var_39C
  loc_C263DC:  = Me.Value
  loc_C263E1: FLdRfVar var_14C
  loc_C263E4: ConcatVar var_218
  loc_C263E8: LitVarStr var_13C, ";"
  loc_C263ED: ConcatVar var_2A8
  loc_C263F1: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C263F6: ConcatVar var_334
  loc_C263FA: LitVarStr var_1A4, " VALUES ('"
  loc_C263FF: ConcatVar var_384
  loc_C26403: ILdRf var_8C
  loc_C26406: CVarStr var_1B4
  loc_C26409: ConcatVar var_3B4
  loc_C2640D: LitVarStr var_1C4, "',@liqu,"
  loc_C26412: ConcatVar var_3CC
  loc_C26416: FLdI2 var_A2
  loc_C26419: CI4UI1
  loc_C2641A: ILdRf var_A8
  loc_C2641D: Ary1LdPr
  loc_C2641E: MemLdRfVar from_stack_1.global_0
  loc_C26421: LdFixedStr
  loc_C26424: CVarStr var_3DC
  loc_C26427: ConcatVar var_3EC
  loc_C2642B: LitVarStr var_1D8, ","
  loc_C26430: ConcatVar var_404
  loc_C26434: ImpAdLdI2 MemVar_C3D064
  loc_C26437: CVarI2 var_1E8
  loc_C2643A: ConcatVar var_414
  loc_C2643E: LitVarStr var_1F8, ","
  loc_C26443: ConcatVar var_424
  loc_C26447: FLdRfVar var_434
  loc_C2644A: FLdRfVar var_3A4
  loc_C2644D: LitVarStr var_208, "CodiRete"
  loc_C26452: PopAdLdVar
  loc_C26453: FLdRfVar var_3A0
  loc_C26456: FLdPr Me
  loc_C26459: MemLdPr global_60
  loc_C2645C:  = Me.Fields
  loc_C26461: FLdPr var_3A0
  loc_C26464: from_stack_2 = Me.Item(from_stack_1)
  loc_C26469: FLdPr var_3A4
  loc_C2646C:  = Me.Value
  loc_C26471: FLdRfVar var_434
  loc_C26474: ConcatVar var_444
  loc_C26478: LitVarStr var_268, ","
  loc_C2647D: ConcatVar var_454
  loc_C26481: FLdRfVar var_464
  loc_C26484: FLdRfVar var_3BC
  loc_C26487: LitVarStr var_278, "CodiDere"
  loc_C2648C: PopAdLdVar
  loc_C2648D: FLdRfVar var_3B8
  loc_C26490: FLdPr Me
  loc_C26493: MemLdPr global_60
  loc_C26496:  = Me.Fields
  loc_C2649B: FLdPr var_3B8
  loc_C2649E: from_stack_2 = Me.Item(from_stack_1)
  loc_C264A3: FLdPr var_3BC
  loc_C264A6:  = Me.Value
  loc_C264AB: FLdRfVar var_464
  loc_C264AE: ConcatVar var_474
  loc_C264B2: LitVarStr var_288, ",1,'"
  loc_C264B7: ConcatVar var_48C
  loc_C264BB: ImpAdLdI2 MemVar_C3D064
  loc_C264BE: CVarI2 var_298
  loc_C264C1: ConcatVar var_49C
  loc_C264C5: LitVarStr var_2D4, "-01-01','"
  loc_C264CA: ConcatVar var_4AC
  loc_C264CE: FLdRfVar var_4C4
  loc_C264D1: FLdRfVar var_3F4
  loc_C264D4: LitVarStr var_2E4, "CodiCuco"
  loc_C264D9: PopAdLdVar
  loc_C264DA: FLdRfVar var_3F0
  loc_C264DD: FLdPr Me
  loc_C264E0: MemLdPr global_56
  loc_C264E3:  = Me.Fields
  loc_C264E8: FLdPr var_3F0
  loc_C264EB: from_stack_2 = Me.Item(from_stack_1)
  loc_C264F0: FLdPr var_3F4
  loc_C264F3:  = Me.Value
  loc_C264F8: FLdRfVar var_4C4
  loc_C264FB: ConcatVar var_4D4
  loc_C264FF: LitVarStr var_2F4, "',0,"
  loc_C26504: ConcatVar var_4E4
  loc_C26508: LitI4 0
  loc_C2650D: LitI4 -1
  loc_C26512: LitI4 1
  loc_C26517: LitStr "."
  loc_C2651A: LitStr ","
  loc_C2651D: FLdRfVar var_518
  loc_C26520: CStrVarVal var_154
  loc_C26524: ImpAdCallI2 Replace(, , , , , )
  loc_C26529: CVarStr var_528
  loc_C2652C: ConcatVar var_538
  loc_C26530: LitVarStr var_314, ","
  loc_C26535: ConcatVar var_548
  loc_C26539: LitI4 0
  loc_C2653E: LitI4 -1
  loc_C26543: LitI4 1
  loc_C26548: LitStr "."
  loc_C2654B: LitStr ","
  loc_C2654E: FLdFPR8 var_C8
  loc_C26551: CStrR8
  loc_C26553: FStStrNoPop var_158
  loc_C26556: ImpAdCallI2 Replace(, , , , , )
  loc_C2655B: CVarStr var_558
  loc_C2655E: ConcatVar var_570
  loc_C26562: LitVarStr var_324, " ,@ulcerete,"
  loc_C26567: ConcatVar var_580
  loc_C2656B: LitI4 0
  loc_C26570: LitI4 -1
  loc_C26575: LitI4 1
  loc_C2657A: LitStr "."
  loc_C2657D: LitStr ","
  loc_C26580: FLdFPR8 var_B8
  loc_C26583: CStrR8
  loc_C26585: FStStrNoPop var_17C
  loc_C26588: ImpAdCallI2 Replace(, , , , , )
  loc_C2658D: CVarStr var_590
  loc_C26590: ConcatVar var_5A0
  loc_C26594: LitVarStr var_344, ","
  loc_C26599: ConcatVar var_5B0
  loc_C2659D: LitI4 0
  loc_C265A2: LitI4 -1
  loc_C265A7: LitI4 1
  loc_C265AC: LitStr "."
  loc_C265AF: LitStr ","
  loc_C265B2: FLdFPR8 var_C0
  loc_C265B5: CStrR8
  loc_C265B7: FStStrNoPop var_180
  loc_C265BA: ImpAdCallI2 Replace(, , , , , )
  loc_C265BF: CVarStr var_5C0
  loc_C265C2: ConcatVar var_5D0
  loc_C265C6: LitVarStr var_354, ");"
  loc_C265CB: ConcatVar var_5E0
  loc_C265CF: LitVarStr var_364, " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C265D4: ConcatVar var_5F0
  loc_C265D8: ImpAdLdI2 MemVar_C3D064
  loc_C265DB: CVarI2 var_374
  loc_C265DE: ConcatVar var_600
  loc_C265E2: LitVarStr var_630, " AND retenciones.CodiRete = "
  loc_C265E7: ConcatVar var_610
  loc_C265EB: FLdRfVar var_620
  loc_C265EE: FLdRfVar var_47C
  loc_C265F1: LitVarStr var_670, "CodiRete"
  loc_C265F6: PopAdLdVar
  loc_C265F7: FLdRfVar var_478
  loc_C265FA: FLdPr Me
  loc_C265FD: MemLdPr global_60
  loc_C26600:  = Me.Fields
  loc_C26605: FLdPr var_478
  loc_C26608: from_stack_2 = Me.Item(from_stack_1)
  loc_C2660D: FLdPr var_47C
  loc_C26610:  = Me.Value
  loc_C26615: FLdRfVar var_620
  loc_C26618: ConcatVar var_640
  loc_C2661C: LitVarStr var_6B0, ";"
  loc_C26621: ConcatVar var_650
  loc_C26625: CStrVarTmp
  loc_C26626: FStStr var_A0
  loc_C26629: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = ""
  loc_C2663C: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = ""
  loc_C26653: FFreeVar var_570 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = "": var_508 = "": var_518 = "": var_4E4 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C266AE: FLdI2 var_A2
  loc_C266B1: CI4UI1
  loc_C266B2: ILdRf var_A8
  loc_C266B5: Ary1LdPr
  loc_C266B6: MemLdFPR8 global_44
  loc_C266B9: FLdFPR8 var_C8
  loc_C266BC: AddR8
  loc_C266BD: FLdI2 var_A2
  loc_C266C0: CI4UI1
  loc_C266C1: ILdRf var_A8
  loc_C266C4: Ary1LdPr
  loc_C266C5: MemStFPR8 global_44
  loc_C266C8: Branch loc_C28B34
  loc_C266CB: FLdI2 var_A2
  loc_C266CE: CI4UI1
  loc_C266CF: ILdRf var_A8
  loc_C266D2: Ary1LdPr
  loc_C266D3: MemLdRfVar from_stack_1.global_0
  loc_C266D6: LdFixedStr
  loc_C266D9: FStStrNoPop var_114
  loc_C266DC: ImpAdLdRf MemVar_C3D278
  loc_C266DF: NewIfNullPr dlgSeleccionaCategoria
  loc_C266E2: Call dlgSeleccionaCategoria.sCucuPersPut(from_stack_1v)
  loc_C266E7: ILdRf var_114
  loc_C266EA: FLdI2 var_A2
  loc_C266ED: CI4UI1
  loc_C266EE: ILdRf var_A8
  loc_C266F1: Ary1LdPr
  loc_C266F2: MemLdRfVar from_stack_1.global_0
  loc_C266F5: StFixedStr
  loc_C266F8: FFree1Str var_114
  loc_C266FB: FLdRfVar var_14C
  loc_C266FE: FLdRfVar var_39C
  loc_C26701: LitVarStr var_12C, "CodiRete"
  loc_C26706: PopAdLdVar
  loc_C26707: FLdRfVar var_398
  loc_C2670A: FLdPr Me
  loc_C2670D: MemLdPr global_56
  loc_C26710:  = dlgSeleccionaCategoria.Recordset15.Fields
  loc_C26715: FLdPr var_398
  loc_C26718: from_stack_2 = Me.Item(from_stack_1)
  loc_C2671D: FLdPr var_39C
  loc_C26720:  = Me.Value
  loc_C26725: FLdRfVar var_14C
  loc_C26728: CUI1Var
  loc_C2672A: ImpAdLdRf MemVar_C3D278
  loc_C2672D: NewIfNullPr dlgSeleccionaCategoria
  loc_C26730: Call dlgSeleccionaCategoria.iCodiRetePut(from_stack_1v)
  loc_C26735: FFreeAd var_398 = ""
  loc_C2673C: FFree1Var var_14C = ""
  loc_C2673F: FLdI2 var_A2
  loc_C26742: CI4UI1
  loc_C26743: ILdRf var_A8
  loc_C26746: Ary1LdPr
  loc_C26747: MemLdRfVar from_stack_1.global_0
  loc_C2674A: LdFixedStr
  loc_C2674D: FStStrNoPop var_114
  loc_C26750: LitStr " - "
  loc_C26753: ConcatStr
  loc_C26754: FStStrNoPop var_118
  loc_C26757: FLdI2 var_A2
  loc_C2675A: CI4UI1
  loc_C2675B: ILdRf var_A8
  loc_C2675E: Ary1LdPr
  loc_C2675F: MemLdStr global_24
  loc_C26762: ConcatStr
  loc_C26763: FStStrNoPop var_11C
  loc_C26766: ImpAdLdRf MemVar_C3D278
  loc_C26769: NewIfNullPr dlgSeleccionaCategoria
  loc_C2676C: VCallAd Control_ID_
  loc_C2676F: FStAdFunc var_398
  loc_C26772: FLdPr var_398
  loc_C26775: dlgSeleccionaCategoria.Label.Caption = from_stack_1
  loc_C2677A: FFreeStr var_114 = "": var_118 = ""
  loc_C26783: FFree1Ad var_398
  loc_C26786: FLdRfVar var_14C
  loc_C26789: FLdRfVar var_39C
  loc_C2678C: LitVarStr var_12C, "CodiRete"
  loc_C26791: PopAdLdVar
  loc_C26792: FLdRfVar var_398
  loc_C26795: FLdPr Me
  loc_C26798: MemLdPr global_56
  loc_C2679B:  = Me.Fields
  loc_C267A0: FLdPr var_398
  loc_C267A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C267A8: FLdPr var_39C
  loc_C267AB:  = Me.Value
  loc_C267B0: FLdRfVar var_14C
  loc_C267B3: LitVarStr var_13C, " - "
  loc_C267B8: ConcatVar var_178
  loc_C267BC: FLdRfVar var_218
  loc_C267BF: FLdRfVar var_3A4
  loc_C267C2: LitVarStr var_168, "DetaRete"
  loc_C267C7: PopAdLdVar
  loc_C267C8: FLdRfVar var_3A0
  loc_C267CB: FLdPr Me
  loc_C267CE: MemLdPr global_56
  loc_C267D1:  = Me.Fields
  loc_C267D6: FLdPr var_3A0
  loc_C267D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C267DE: FLdPr var_3A4
  loc_C267E1:  = Me.Value
  loc_C267E6: FLdRfVar var_218
  loc_C267E9: ConcatVar var_2A8
  loc_C267ED: CStrVarVal var_114
  loc_C267F1: ImpAdLdRf MemVar_C3D278
  loc_C267F4: NewIfNullPr dlgSeleccionaCategoria
  loc_C267F7: VCallAd Control_ID_
  loc_C267FA: FStAdFunc var_3B8
  loc_C267FD: FLdPr var_3B8
  loc_C26800: dlgSeleccionaCategoria.Label.Caption = from_stack_1
  loc_C26805: FFree1Str var_114
  loc_C26808: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_C26815: FFreeVar var_14C = "": var_178 = "": var_218 = ""
  loc_C26820: LitVar_Missing var_13C
  loc_C26823: PopAdLdVar
  loc_C26824: LitVarI4
  loc_C2682C: PopAdLdVar
  loc_C2682D: ImpAdLdRf MemVar_C3D278
  loc_C26830: NewIfNullPr dlgSeleccionaCategoria
  loc_C26833: dlgSeleccionaCategoria.Show from_stack_1, from_stack_2
  loc_C26838: ILdRf var_A0
  loc_C2683B: LitStr "INSERT IGNORE INTO liquidarete VALUES ('"
  loc_C2683E: ConcatStr
  loc_C2683F: FStStrNoPop var_114
  loc_C26842: ILdRf var_8C
  loc_C26845: ConcatStr
  loc_C26846: FStStrNoPop var_118
  loc_C26849: LitStr "',@liqu,"
  loc_C2684C: ConcatStr
  loc_C2684D: FStStrNoPop var_11C
  loc_C26850: FLdI2 var_A2
  loc_C26853: CI4UI1
  loc_C26854: ILdRf var_A8
  loc_C26857: Ary1LdPr
  loc_C26858: MemLdRfVar from_stack_1.global_0
  loc_C2685B: LdFixedStr
  loc_C2685E: FStStrNoPop var_150
  loc_C26861: ConcatStr
  loc_C26862: FStStrNoPop var_154
  loc_C26865: LitStr ","
  loc_C26868: ConcatStr
  loc_C26869: CVarStr var_178
  loc_C2686C: FLdRfVar var_14C
  loc_C2686F: FLdRfVar var_39C
  loc_C26872: LitVarStr var_12C, "CodiRete"
  loc_C26877: PopAdLdVar
  loc_C26878: FLdRfVar var_398
  loc_C2687B: FLdPr Me
  loc_C2687E: MemLdPr global_60
  loc_C26881:  = Me.Fields
  loc_C26886: FLdPr var_398
  loc_C26889: from_stack_2 = Me.Item(from_stack_1)
  loc_C2688E: FLdPr var_39C
  loc_C26891:  = Me.Value
  loc_C26896: FLdRfVar var_14C
  loc_C26899: ConcatVar var_218
  loc_C2689D: LitVarStr var_13C, ","
  loc_C268A2: ConcatVar var_2A8
  loc_C268A6: FLdRfVar var_334
  loc_C268A9: FLdRfVar var_3BC
  loc_C268AC: LitVarStr var_168, "CodiDere"
  loc_C268B1: PopAdLdVar
  loc_C268B2: FLdRfVar var_3B8
  loc_C268B5: FLdRfVar var_3A4
  loc_C268B8: FLdRfVar var_3A0
  loc_C268BB: ImpAdLdRf MemVar_C3D278
  loc_C268BE: NewIfNullPr dlgSeleccionaCategoria
  loc_C268C1: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C268C6: FLdPr var_3A0
  loc_C268C9: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C268CE: FLdPr var_3A4
  loc_C268D1:  = Me.Fields
  loc_C268D6: FLdPr var_3B8
  loc_C268D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C268DE: FLdPr var_3BC
  loc_C268E1:  = Me.Value
  loc_C268E6: FLdRfVar var_334
  loc_C268E9: ConcatVar var_384
  loc_C268ED: LitVarStr var_1A4, ","
  loc_C268F2: ConcatVar var_3B4
  loc_C268F6: FLdRfVar var_3CC
  loc_C268F9: FLdRfVar var_3F4
  loc_C268FC: LitVarStr var_1B4, "PeriInfo"
  loc_C26901: PopAdLdVar
  loc_C26902: FLdRfVar var_3F0
  loc_C26905: FLdPr Me
  loc_C26908: MemLdPr global_60
  loc_C2690B:  = Me.Fields
  loc_C26910: FLdPr var_3F0
  loc_C26913: from_stack_2 = Me.Item(from_stack_1)
  loc_C26918: FLdPr var_3F4
  loc_C2691B:  = Me.Value
  loc_C26920: FLdRfVar var_3CC
  loc_C26923: ConcatVar var_3DC
  loc_C26927: LitVarStr var_1C4, ");"
  loc_C2692C: ConcatVar var_3EC
  loc_C26930: CStrVarTmp
  loc_C26931: FStStr var_A0
  loc_C26934: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = ""
  loc_C26941: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = ""
  loc_C26954: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = ""
  loc_C2696B: FLdRfVar var_392
  loc_C2696E: ImpAdLdRf MemVar_C3D250
  loc_C26971: NewIfNullPr frmLiquidacion
  loc_C26974: VCallAd Control_ID_
  loc_C26977: FStAdFunc var_398
  loc_C2697A: FLdPr var_398
  loc_C2697D:  = frmLiquidacion.CheckBox.Value
  loc_C26982: FLdI2 var_392
  loc_C26985: CI4UI1
  loc_C26986: LitI4 1
  loc_C2698B: EqI4
  loc_C2698C: FFree1Ad var_398
  loc_C2698F: BranchF loc_C28B34
  loc_C26992: FLdRfVar var_14C
  loc_C26995: FLdRfVar var_3A4
  loc_C26998: LitVarStr var_12C, "ImfiDere"
  loc_C2699D: PopAdLdVar
  loc_C2699E: FLdRfVar var_3A0
  loc_C269A1: FLdRfVar var_39C
  loc_C269A4: FLdRfVar var_398
  loc_C269A7: ImpAdLdRf MemVar_C3D278
  loc_C269AA: NewIfNullPr dlgSeleccionaCategoria
  loc_C269AD: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C269B2: FLdPr var_398
  loc_C269B5: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C269BA: FLdPr var_39C
  loc_C269BD:  = Me.Fields
  loc_C269C2: FLdPr var_3A0
  loc_C269C5: from_stack_2 = Me.Item(from_stack_1)
  loc_C269CA: FLdPr var_3A4
  loc_C269CD:  = Me.Value
  loc_C269D2: FLdRfVar var_14C
  loc_C269D5: LitVarI2 var_13C, 0
  loc_C269DA: HardType
  loc_C269DB: EqVarBool
  loc_C269DD: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C269E8: FFree1Var var_14C = ""
  loc_C269EB: BranchF loc_C28452
  loc_C269EE: LitStr " SELECT e.*, dr.ImnoDere"
  loc_C269F1: LitStr " FROM escalas e INNER JOIN deretenciones dr ON dr.PeriInfo = e.PeriInfo AND dr.CodiRete = e.CodiRete AND dr.CodiDere = e.CodiDere"
  loc_C269F4: ConcatStr
  loc_C269F5: FStStrNoPop var_114
  loc_C269F8: LitStr " WHERE e.PeriInfo = "
  loc_C269FB: ConcatStr
  loc_C269FC: CVarStr var_178
  loc_C269FF: FLdRfVar var_14C
  loc_C26A02: FLdRfVar var_39C
  loc_C26A05: LitVarStr var_12C, "PeriInfo"
  loc_C26A0A: PopAdLdVar
  loc_C26A0B: FLdRfVar var_398
  loc_C26A0E: FLdPr Me
  loc_C26A11: MemLdPr global_60
  loc_C26A14:  = Me.Fields
  loc_C26A19: FLdPr var_398
  loc_C26A1C: from_stack_2 = Me.Item(from_stack_1)
  loc_C26A21: FLdPr var_39C
  loc_C26A24:  = Me.Value
  loc_C26A29: FLdRfVar var_14C
  loc_C26A2C: ConcatVar var_218
  loc_C26A30: LitVarStr var_13C, " AND e.FechEsca = ("
  loc_C26A35: ConcatVar var_2A8
  loc_C26A39: LitVarStr var_168, "SELECT Max(FechEsca) FROM escalas WHERE escalas.PeriInfo = "
  loc_C26A3E: ConcatVar var_334
  loc_C26A42: FLdRfVar var_384
  loc_C26A45: FLdRfVar var_3A4
  loc_C26A48: LitVarStr var_1A4, "PeriInfo"
  loc_C26A4D: PopAdLdVar
  loc_C26A4E: FLdRfVar var_3A0
  loc_C26A51: FLdPr Me
  loc_C26A54: MemLdPr global_60
  loc_C26A57:  = Me.Fields
  loc_C26A5C: FLdPr var_3A0
  loc_C26A5F: from_stack_2 = Me.Item(from_stack_1)
  loc_C26A64: FLdPr var_3A4
  loc_C26A67:  = Me.Value
  loc_C26A6C: FLdRfVar var_384
  loc_C26A6F: ConcatVar var_3B4
  loc_C26A73: LitVarStr var_1B4, " AND escalas.CodiRete = "
  loc_C26A78: ConcatVar var_3CC
  loc_C26A7C: FLdRfVar var_3DC
  loc_C26A7F: FLdRfVar var_3BC
  loc_C26A82: LitVarStr var_1C4, "CodiRete"
  loc_C26A87: PopAdLdVar
  loc_C26A88: FLdRfVar var_3B8
  loc_C26A8B: FLdPr Me
  loc_C26A8E: MemLdPr global_60
  loc_C26A91:  = Me.Fields
  loc_C26A96: FLdPr var_3B8
  loc_C26A99: from_stack_2 = Me.Item(from_stack_1)
  loc_C26A9E: FLdPr var_3BC
  loc_C26AA1:  = Me.Value
  loc_C26AA6: FLdRfVar var_3DC
  loc_C26AA9: ConcatVar var_3EC
  loc_C26AAD: LitVarStr var_1D8, " AND escalas.CodiDere = "
  loc_C26AB2: ConcatVar var_404
  loc_C26AB6: FLdRfVar var_414
  loc_C26AB9: FLdRfVar var_47C
  loc_C26ABC: LitVarStr var_1E8, "CodiDere"
  loc_C26AC1: PopAdLdVar
  loc_C26AC2: FLdRfVar var_478
  loc_C26AC5: FLdRfVar var_3F4
  loc_C26AC8: FLdRfVar var_3F0
  loc_C26ACB: ImpAdLdRf MemVar_C3D278
  loc_C26ACE: NewIfNullPr dlgSeleccionaCategoria
  loc_C26AD1: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26AD6: FLdPr var_3F0
  loc_C26AD9: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26ADE: FLdPr var_3F4
  loc_C26AE1:  = Me.Fields
  loc_C26AE6: FLdPr var_478
  loc_C26AE9: from_stack_2 = Me.Item(from_stack_1)
  loc_C26AEE: FLdPr var_47C
  loc_C26AF1:  = Me.Value
  loc_C26AF6: FLdRfVar var_414
  loc_C26AF9: ConcatVar var_424
  loc_C26AFD: LitVarStr var_1F8, " AND FechEsca <= "
  loc_C26B02: ConcatVar var_434
  loc_C26B06: LitI4 1
  loc_C26B0B: LitI4 1
  loc_C26B10: LitVarStr var_268, "'yyyy-mm-dd'"
  loc_C26B15: FStVarCopyObj var_444
  loc_C26B18: FLdRfVar var_444
  loc_C26B1B: FLdRfVar var_90
  loc_C26B1E: CVarRef
  loc_C26B23: FLdRfVar var_454
  loc_C26B26: ImpAdCallFPR4  = Format(, )
  loc_C26B2B: FLdRfVar var_454
  loc_C26B2E: ConcatVar var_464
  loc_C26B32: LitVarStr var_278, ")"
  loc_C26B37: ConcatVar var_474
  loc_C26B3B: LitVarStr var_288, " AND e.CodiRete = "
  loc_C26B40: ConcatVar var_48C
  loc_C26B44: FLdRfVar var_49C
  loc_C26B47: FLdRfVar var_4B4
  loc_C26B4A: LitVarStr var_298, "CodiRete"
  loc_C26B4F: PopAdLdVar
  loc_C26B50: FLdRfVar var_4B0
  loc_C26B53: FLdPr Me
  loc_C26B56: MemLdPr global_60
  loc_C26B59:  = Me.Fields
  loc_C26B5E: FLdPr var_4B0
  loc_C26B61: from_stack_2 = Me.Item(from_stack_1)
  loc_C26B66: FLdPr var_4B4
  loc_C26B69:  = Me.Value
  loc_C26B6E: FLdRfVar var_49C
  loc_C26B71: ConcatVar var_4AC
  loc_C26B75: LitVarStr var_2D4, " AND e.CodiDere = "
  loc_C26B7A: ConcatVar var_4C4
  loc_C26B7E: FLdRfVar var_4D4
  loc_C26B81: FLdRfVar var_7F8
  loc_C26B84: LitVarStr var_2E4, "CodiDere"
  loc_C26B89: PopAdLdVar
  loc_C26B8A: FLdRfVar var_7E4
  loc_C26B8D: FLdRfVar var_560
  loc_C26B90: FLdRfVar var_55C
  loc_C26B93: ImpAdLdRf MemVar_C3D278
  loc_C26B96: NewIfNullPr dlgSeleccionaCategoria
  loc_C26B99: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26B9E: FLdPr var_55C
  loc_C26BA1: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26BA6: FLdPr var_560
  loc_C26BA9:  = Me.Fields
  loc_C26BAE: FLdPr var_7E4
  loc_C26BB1: from_stack_2 = Me.Item(from_stack_1)
  loc_C26BB6: FLdPr var_7F8
  loc_C26BB9:  = Me.Value
  loc_C26BBE: FLdRfVar var_4D4
  loc_C26BC1: ConcatVar var_4E4
  loc_C26BC5: CStrVarVal var_118
  loc_C26BC9: Call EjecutarRsCls3(from_stack_1v)
  loc_C26BCE: FFreeStr var_114 = ""
  loc_C26BD5: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = "": var_4B4 = "": var_55C = "": var_560 = "": var_7E4 = ""
  loc_C26BF8: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_444 = "": var_434 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = ""
  loc_C26C2B: FLdRfVar var_390
  loc_C26C2E: FLdPr Me
  loc_C26C31: MemLdPr global_64
  loc_C26C34:  = Me.RecordCount
  loc_C26C39: ILdRf var_390
  loc_C26C3C: LitI4 0
  loc_C26C41: GtI4
  loc_C26C42: BranchF loc_C2843F
  loc_C26C45: FLdRfVar var_14C
  loc_C26C48: FLdRfVar var_39C
  loc_C26C4B: LitVarStr var_12C, "CodiRete"
  loc_C26C50: PopAdLdVar
  loc_C26C51: FLdRfVar var_398
  loc_C26C54: FLdPr Me
  loc_C26C57: MemLdPr global_60
  loc_C26C5A:  = Me.Fields
  loc_C26C5F: FLdPr var_398
  loc_C26C62: from_stack_2 = Me.Item(from_stack_1)
  loc_C26C67: FLdPr var_39C
  loc_C26C6A:  = Me.Value
  loc_C26C6F: FLdRfVar var_178
  loc_C26C72: FLdRfVar var_3BC
  loc_C26C75: LitVarStr var_13C, "CodiDere"
  loc_C26C7A: PopAdLdVar
  loc_C26C7B: FLdRfVar var_3B8
  loc_C26C7E: FLdRfVar var_3A4
  loc_C26C81: FLdRfVar var_3A0
  loc_C26C84: ImpAdLdRf MemVar_C3D278
  loc_C26C87: NewIfNullPr dlgSeleccionaCategoria
  loc_C26C8A: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26C8F: FLdPr var_3A0
  loc_C26C92: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26C97: FLdPr var_3A4
  loc_C26C9A:  = Me.Fields
  loc_C26C9F: FLdPr var_3B8
  loc_C26CA2: from_stack_2 = Me.Item(from_stack_1)
  loc_C26CA7: FLdPr var_3BC
  loc_C26CAA:  = Me.Value
  loc_C26CAF: FLdRfVar var_218
  loc_C26CB2: FLdRfVar var_47C
  loc_C26CB5: LitVarStr var_168, "AcumDere"
  loc_C26CBA: PopAdLdVar
  loc_C26CBB: FLdRfVar var_478
  loc_C26CBE: FLdRfVar var_3F4
  loc_C26CC1: FLdRfVar var_3F0
  loc_C26CC4: ImpAdLdRf MemVar_C3D278
  loc_C26CC7: NewIfNullPr dlgSeleccionaCategoria
  loc_C26CCA: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26CCF: FLdPr var_3F0
  loc_C26CD2: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26CD7: FLdPr var_3F4
  loc_C26CDA:  = Me.Fields
  loc_C26CDF: FLdPr var_478
  loc_C26CE2: from_stack_2 = Me.Item(from_stack_1)
  loc_C26CE7: FLdPr var_47C
  loc_C26CEA:  = Me.Value
  loc_C26CEF: FLdRfVar var_4EC
  loc_C26CF2: FLdRfVar var_218
  loc_C26CF5: CStrVarTmp
  loc_C26CF6: FStStrNoPop var_118
  loc_C26CF9: FLdRfVar var_178
  loc_C26CFC: CUI1Var
  loc_C26CFE: FLdRfVar var_14C
  loc_C26D01: CUI1Var
  loc_C26D03: FLdI2 var_A2
  loc_C26D06: CI4UI1
  loc_C26D07: ILdRf var_A8
  loc_C26D0A: Ary1LdPr
  loc_C26D0B: MemLdRfVar from_stack_1.global_0
  loc_C26D0E: LdFixedStr
  loc_C26D11: FStStrNoPop var_114
  loc_C26D14: ILdRf var_90
  loc_C26D17: from_stack_6v = AcumuladoBruto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C26D1C: ILdRf var_114
  loc_C26D1F: FLdI2 var_A2
  loc_C26D22: CI4UI1
  loc_C26D23: ILdRf var_A8
  loc_C26D26: Ary1LdPr
  loc_C26D27: MemLdRfVar from_stack_1.global_0
  loc_C26D2A: StFixedStr
  loc_C26D2D: FLdFPR8 var_4EC
  loc_C26D30: FStFPR8 var_B8
  loc_C26D33: FFreeStr var_114 = ""
  loc_C26D3A: FFreeAd var_398 = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_39C = "": var_3BC = ""
  loc_C26D51: FFreeVar var_14C = "": var_178 = ""
  loc_C26D5A: FLdRfVar var_14C
  loc_C26D5D: FLdRfVar var_39C
  loc_C26D60: LitVarStr var_12C, "CodiRete"
  loc_C26D65: PopAdLdVar
  loc_C26D66: FLdRfVar var_398
  loc_C26D69: FLdPr Me
  loc_C26D6C: MemLdPr global_60
  loc_C26D6F:  = Me.Fields
  loc_C26D74: FLdPr var_398
  loc_C26D77: from_stack_2 = Me.Item(from_stack_1)
  loc_C26D7C: FLdPr var_39C
  loc_C26D7F:  = Me.Value
  loc_C26D84: FLdRfVar var_178
  loc_C26D87: FLdRfVar var_3BC
  loc_C26D8A: LitVarStr var_13C, "CodiDere"
  loc_C26D8F: PopAdLdVar
  loc_C26D90: FLdRfVar var_3B8
  loc_C26D93: FLdRfVar var_3A4
  loc_C26D96: FLdRfVar var_3A0
  loc_C26D99: ImpAdLdRf MemVar_C3D278
  loc_C26D9C: NewIfNullPr dlgSeleccionaCategoria
  loc_C26D9F: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26DA4: FLdPr var_3A0
  loc_C26DA7: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26DAC: FLdPr var_3A4
  loc_C26DAF:  = Me.Fields
  loc_C26DB4: FLdPr var_3B8
  loc_C26DB7: from_stack_2 = Me.Item(from_stack_1)
  loc_C26DBC: FLdPr var_3BC
  loc_C26DBF:  = Me.Value
  loc_C26DC4: FLdRfVar var_218
  loc_C26DC7: FLdRfVar var_47C
  loc_C26DCA: LitVarStr var_168, "AcumDere"
  loc_C26DCF: PopAdLdVar
  loc_C26DD0: FLdRfVar var_478
  loc_C26DD3: FLdRfVar var_3F4
  loc_C26DD6: FLdRfVar var_3F0
  loc_C26DD9: ImpAdLdRf MemVar_C3D278
  loc_C26DDC: NewIfNullPr dlgSeleccionaCategoria
  loc_C26DDF: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26DE4: FLdPr var_3F0
  loc_C26DE7: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26DEC: FLdPr var_3F4
  loc_C26DEF:  = Me.Fields
  loc_C26DF4: FLdPr var_478
  loc_C26DF7: from_stack_2 = Me.Item(from_stack_1)
  loc_C26DFC: FLdPr var_47C
  loc_C26DFF:  = Me.Value
  loc_C26E04: FLdRfVar var_4EC
  loc_C26E07: FLdRfVar var_218
  loc_C26E0A: CStrVarTmp
  loc_C26E0B: FStStrNoPop var_118
  loc_C26E0E: FLdRfVar var_178
  loc_C26E11: CUI1Var
  loc_C26E13: FLdRfVar var_14C
  loc_C26E16: CI2Var
  loc_C26E17: FLdI2 var_A2
  loc_C26E1A: CI4UI1
  loc_C26E1B: ILdRf var_A8
  loc_C26E1E: Ary1LdPr
  loc_C26E1F: MemLdRfVar from_stack_1.global_0
  loc_C26E22: LdFixedStr
  loc_C26E25: FStStrNoPop var_114
  loc_C26E28: ILdRf var_90
  loc_C26E2B: from_stack_6v = RetencionAcumulada(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C26E30: ILdRf var_114
  loc_C26E33: FLdI2 var_A2
  loc_C26E36: CI4UI1
  loc_C26E37: ILdRf var_A8
  loc_C26E3A: Ary1LdPr
  loc_C26E3B: MemLdRfVar from_stack_1.global_0
  loc_C26E3E: StFixedStr
  loc_C26E41: FLdFPR8 var_4EC
  loc_C26E44: FStFPR8 var_C0
  loc_C26E47: FFreeStr var_114 = ""
  loc_C26E4E: FFreeAd var_398 = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_39C = "": var_3BC = ""
  loc_C26E65: FFreeVar var_14C = "": var_178 = ""
  loc_C26E6E: FLdPr Me
  loc_C26E71: MemLdPr global_64
  loc_C26E74: Me.MoveFirst
  loc_C26E79: FLdRfVar var_3A4
  loc_C26E7C: LitVarStr var_12C, "AcubDere"
  loc_C26E81: PopAdLdVar
  loc_C26E82: FLdRfVar var_3A0
  loc_C26E85: FLdRfVar var_39C
  loc_C26E88: FLdRfVar var_398
  loc_C26E8B: ImpAdLdRf MemVar_C3D278
  loc_C26E8E: NewIfNullPr dlgSeleccionaCategoria
  loc_C26E91: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26E96: FLdPr var_398
  loc_C26E99: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26E9E: FLdPr var_39C
  loc_C26EA1:  = Me.Fields
  loc_C26EA6: FLdPr var_3A0
  loc_C26EA9: from_stack_2 = Me.Item(from_stack_1)
  loc_C26EAE: FLdZeroAd var_3A4
  loc_C26EB1: CVarAd
  loc_C26EB5: FLdRfVar var_178
  loc_C26EB8: ImpAdCallFPR4  = Ucase()
  loc_C26EBD: FLdRfVar var_178
  loc_C26EC0: LitVarStr var_13C, "DEVENGADO"
  loc_C26EC5: HardType
  loc_C26EC6: EqVarBool
  loc_C26EC8: FFreeAd var_398 = "": var_39C = ""
  loc_C26ED1: FFreeVar var_14C = ""
  loc_C26ED8: BranchF loc_C26EE9
  loc_C26EDB: FLdI2 var_A2
  loc_C26EDE: CI4UI1
  loc_C26EDF: ILdRf var_A8
  loc_C26EE2: Ary1LdPr
  loc_C26EE3: MemLdFPR8 global_36
  loc_C26EE6: FStFPR8 var_B8
  loc_C26EE9: FLdRfVar var_3A4
  loc_C26EEC: LitVarStr var_12C, "AcubDere"
  loc_C26EF1: PopAdLdVar
  loc_C26EF2: FLdRfVar var_3A0
  loc_C26EF5: FLdRfVar var_39C
  loc_C26EF8: FLdRfVar var_398
  loc_C26EFB: ImpAdLdRf MemVar_C3D278
  loc_C26EFE: NewIfNullPr dlgSeleccionaCategoria
  loc_C26F01: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C26F06: FLdPr var_398
  loc_C26F09: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C26F0E: FLdPr var_39C
  loc_C26F11:  = Me.Fields
  loc_C26F16: FLdPr var_3A0
  loc_C26F19: from_stack_2 = Me.Item(from_stack_1)
  loc_C26F1E: FLdZeroAd var_3A4
  loc_C26F21: CVarAd
  loc_C26F25: FLdRfVar var_178
  loc_C26F28: ImpAdCallFPR4  = Ucase()
  loc_C26F2D: FLdRfVar var_178
  loc_C26F30: LitVarStr var_13C, "ACUMULADO BRUTO"
  loc_C26F35: HardType
  loc_C26F36: EqVarBool
  loc_C26F38: FFreeAd var_398 = "": var_39C = ""
  loc_C26F41: FFreeVar var_14C = ""
  loc_C26F48: BranchF loc_C26F5D
  loc_C26F4B: FLdFPR8 var_B8
  loc_C26F4E: FLdI2 var_A2
  loc_C26F51: CI4UI1
  loc_C26F52: ILdRf var_A8
  loc_C26F55: Ary1LdPr
  loc_C26F56: MemLdFPR8 global_36
  loc_C26F59: AddR8
  loc_C26F5A: FStFPR8 var_B8
  loc_C26F5D: LitI2_Byte 0
  loc_C26F5F: CR8I2
  loc_C26F60: FStFPR8 var_D0
  loc_C26F63: LitI2_Byte 0
  loc_C26F65: CR8I2
  loc_C26F66: FStFPR8 var_E8
  loc_C26F69: LitI2_Byte 0
  loc_C26F6B: CR8I2
  loc_C26F6C: FStFPR8 var_D8
  loc_C26F6F: LitI2_Byte 0
  loc_C26F71: CR8I2
  loc_C26F72: FStFPR8 var_F0
  loc_C26F75: LitI2_Byte 0
  loc_C26F77: CR8I2
  loc_C26F78: FStFPR8 var_E0
  loc_C26F7B: LitI2_Byte 0
  loc_C26F7D: CR8I2
  loc_C26F7E: FStFPR8 var_F8
  loc_C26F81: FLdRfVar var_392
  loc_C26F84: FLdPr Me
  loc_C26F87: MemLdPr global_64
  loc_C26F8A:  = Me.EOF
  loc_C26F8F: FLdI2 var_392
  loc_C26F92: NotI4
  loc_C26F93: BranchF loc_C2843C
  loc_C26F96: FLdRfVar var_14C
  loc_C26F99: FLdRfVar var_39C
  loc_C26F9C: LitVarStr var_12C, "BaseEsca"
  loc_C26FA1: PopAdLdVar
  loc_C26FA2: FLdRfVar var_398
  loc_C26FA5: FLdPr Me
  loc_C26FA8: MemLdPr global_64
  loc_C26FAB:  = Me.Fields
  loc_C26FB0: FLdPr var_398
  loc_C26FB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C26FB8: FLdPr var_39C
  loc_C26FBB:  = Me.Value
  loc_C26FC0: FLdRfVar var_218
  loc_C26FC3: FLdRfVar var_3A4
  loc_C26FC6: LitVarStr var_168, "ImnoDere"
  loc_C26FCB: PopAdLdVar
  loc_C26FCC: FLdRfVar var_3A0
  loc_C26FCF: FLdPr Me
  loc_C26FD2: MemLdPr global_64
  loc_C26FD5:  = Me.Fields
  loc_C26FDA: FLdPr var_3A0
  loc_C26FDD: from_stack_2 = Me.Item(from_stack_1)
  loc_C26FE2: FLdPr var_3A4
  loc_C26FE5:  = Me.Value
  loc_C26FEA: FLdRfVar var_3DC
  loc_C26FED: FLdRfVar var_3F4
  loc_C26FF0: LitVarStr var_1B4, "BaseEsca"
  loc_C26FF5: PopAdLdVar
  loc_C26FF6: FLdRfVar var_3F0
  loc_C26FF9: FLdPr Me
  loc_C26FFC: MemLdPr global_64
  loc_C26FFF:  = Me.Fields
  loc_C27004: FLdPr var_3F0
  loc_C27007: from_stack_2 = Me.Item(from_stack_1)
  loc_C2700C: FLdPr var_3F4
  loc_C2700F:  = Me.Value
  loc_C27014: FLdRfVar var_404
  loc_C27017: FLdRfVar var_47C
  loc_C2701A: LitVarStr var_1D8, "ImnoDere"
  loc_C2701F: PopAdLdVar
  loc_C27020: FLdRfVar var_478
  loc_C27023: FLdPr Me
  loc_C27026: MemLdPr global_64
  loc_C27029:  = Me.Fields
  loc_C2702E: FLdPr var_478
  loc_C27031: from_stack_2 = Me.Item(from_stack_1)
  loc_C27036: FLdPr var_47C
  loc_C27039:  = Me.Value
  loc_C2703E: LitI4 2
  loc_C27043: FLdFPR8 var_B8
  loc_C27046: CVarR8
  loc_C2704A: FLdRfVar var_14C
  loc_C2704D: DivVar var_178
  loc_C27051: FLdRfVar var_218
  loc_C27054: SubVar var_2A8
  loc_C27058: FStVar var_334
  loc_C2705C: FLdRfVar var_334
  loc_C2705F: FLdRfVar var_384
  loc_C27062: ImpAdCallFPR4  = Round(, )
  loc_C27067: FLdRfVar var_384
  loc_C2706A: FLdRfVar var_3B4
  loc_C2706D: FLdRfVar var_3BC
  loc_C27070: LitVarStr var_1A4, "MiniEsca"
  loc_C27075: PopAdLdVar
  loc_C27076: FLdRfVar var_3B8
  loc_C27079: FLdPr Me
  loc_C2707C: MemLdPr global_64
  loc_C2707F:  = Me.Fields
  loc_C27084: FLdPr var_3B8
  loc_C27087: from_stack_2 = Me.Item(from_stack_1)
  loc_C2708C: FLdPr var_3BC
  loc_C2708F:  = Me.Value
  loc_C27094: FLdRfVar var_3B4
  loc_C27097: GeVar var_3CC
  loc_C2709B: LitI4 2
  loc_C270A0: FLdFPR8 var_B8
  loc_C270A3: CVarR8
  loc_C270A7: FLdRfVar var_3DC
  loc_C270AA: DivVar var_3EC
  loc_C270AE: FLdRfVar var_404
  loc_C270B1: SubVar var_414
  loc_C270B5: FStVar var_424
  loc_C270B9: FLdRfVar var_424
  loc_C270BC: FLdRfVar var_434
  loc_C270BF: ImpAdCallFPR4  = Round(, )
  loc_C270C4: FLdRfVar var_434
  loc_C270C7: FLdRfVar var_444
  loc_C270CA: FLdRfVar var_4B4
  loc_C270CD: LitVarStr var_1E8, "MaxiEsca"
  loc_C270D2: PopAdLdVar
  loc_C270D3: FLdRfVar var_4B0
  loc_C270D6: FLdPr Me
  loc_C270D9: MemLdPr global_64
  loc_C270DC:  = Me.Fields
  loc_C270E1: FLdPr var_4B0
  loc_C270E4: from_stack_2 = Me.Item(from_stack_1)
  loc_C270E9: FLdPr var_4B4
  loc_C270EC:  = Me.Value
  loc_C270F1: FLdRfVar var_444
  loc_C270F4: LtVar var_454
  loc_C270F8: AndVar var_464
  loc_C270FC: CBoolVarNull
  loc_C270FE: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C27119: FFreeVar var_14C = "": var_218 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3DC = "": var_404 = "": var_424 = "": var_434 = ""
  loc_C27130: BranchF loc_C2842E
  loc_C27133: FLdRfVar var_178
  loc_C27136: FLdRfVar var_39C
  loc_C27139: LitVarStr var_12C, "PefiEsca"
  loc_C2713E: PopAdLdVar
  loc_C2713F: FLdRfVar var_398
  loc_C27142: FLdPr Me
  loc_C27145: MemLdPr global_64
  loc_C27148:  = Me.Fields
  loc_C2714D: FLdPr var_398
  loc_C27150: from_stack_2 = Me.Item(from_stack_1)
  loc_C27155: FLdZeroAd var_39C
  loc_C27158: CVarAd
  loc_C2715C: ImpAdCallHresult  = CDec()
  loc_C27161: FLdRfVar var_178
  loc_C27164: LitVarI2 var_13C, 0
  loc_C27169: HardType
  loc_C2716A: GtVar var_218
  loc_C2716E: FLdRfVar var_2A8
  loc_C27171: FLdRfVar var_3A4
  loc_C27174: LitVarStr var_168, "NuinRexp"
  loc_C27179: PopAdLdVar
  loc_C2717A: FLdRfVar var_3A0
  loc_C2717D: FLdPr Me
  loc_C27180: MemLdPr global_60
  loc_C27183:  = Me.Fields
  loc_C27188: FLdPr var_3A0
  loc_C2718B: from_stack_2 = Me.Item(from_stack_1)
  loc_C27190: FLdPr var_3A4
  loc_C27193:  = Me.Value
  loc_C27198: FLdRfVar var_2A8
  loc_C2719B: LitVarStr var_1A4, vbNullString
  loc_C271A0: HardType
  loc_C271A1: EqVar var_334
  loc_C271A5: AndVar var_384
  loc_C271A9: CBoolVarNull
  loc_C271AB: FFreeAd var_398 = "": var_3A0 = ""
  loc_C271B4: FFreeVar var_14C = "": var_178 = ""
  loc_C271BD: BranchF loc_C271FB
  loc_C271C0: FLdRfVar var_14C
  loc_C271C3: FLdRfVar var_39C
  loc_C271C6: LitVarStr var_12C, "PefiEsca"
  loc_C271CB: PopAdLdVar
  loc_C271CC: FLdRfVar var_398
  loc_C271CF: FLdPr Me
  loc_C271D2: MemLdPr global_64
  loc_C271D5:  = Me.Fields
  loc_C271DA: FLdPr var_398
  loc_C271DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C271E2: FLdPr var_39C
  loc_C271E5:  = Me.Value
  loc_C271EA: FLdRfVar var_14C
  loc_C271ED: CR4Var
  loc_C271EE: FStFPR8 var_D0
  loc_C271F1: FFreeAd var_398 = ""
  loc_C271F8: FFree1Var var_14C = ""
  loc_C271FB: FLdRfVar var_3A4
  loc_C271FE: LitVarStr var_12C, "FedrRexp"
  loc_C27203: PopAdLdVar
  loc_C27204: FLdRfVar var_3A0
  loc_C27207: FLdRfVar var_39C
  loc_C2720A: FLdRfVar var_398
  loc_C2720D: ImpAdLdRf MemVar_C3D278
  loc_C27210: NewIfNullPr dlgSeleccionaCategoria
  loc_C27213: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27218: FLdPr var_398
  loc_C2721B: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27220: FLdPr var_39C
  loc_C27223:  = Me.Fields
  loc_C27228: FLdPr var_3A0
  loc_C2722B: from_stack_2 = Me.Item(from_stack_1)
  loc_C27230: FLdZeroAd var_3A4
  loc_C27233: CVarAd
  loc_C27237: ImpAdCallI2 IsNull()
  loc_C2723C: NotI4
  loc_C2723D: FLdRfVar var_3F4
  loc_C27240: LitVarStr var_13C, "FehrRexp"
  loc_C27245: PopAdLdVar
  loc_C27246: FLdRfVar var_3F0
  loc_C27249: FLdRfVar var_3BC
  loc_C2724C: FLdRfVar var_3B8
  loc_C2724F: ImpAdLdRf MemVar_C3D278
  loc_C27252: NewIfNullPr dlgSeleccionaCategoria
  loc_C27255: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C2725A: FLdPr var_3B8
  loc_C2725D: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27262: FLdPr var_3BC
  loc_C27265:  = Me.Fields
  loc_C2726A: FLdPr var_3F0
  loc_C2726D: from_stack_2 = Me.Item(from_stack_1)
  loc_C27272: FLdZeroAd var_3F4
  loc_C27275: CVarAd
  loc_C27279: ImpAdCallI2 IsNull()
  loc_C2727E: NotI4
  loc_C2727F: AndI4
  loc_C27280: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = ""
  loc_C2728F: FFreeVar var_14C = ""
  loc_C27296: BranchF loc_C273AD
  loc_C27299: FLdRfVar var_39C
  loc_C2729C: LitVarStr var_12C, "PerfEsca"
  loc_C272A1: PopAdLdVar
  loc_C272A2: FLdRfVar var_398
  loc_C272A5: FLdPr Me
  loc_C272A8: MemLdPr global_64
  loc_C272AB:  = Me.Fields
  loc_C272B0: FLdPr var_398
  loc_C272B3: from_stack_2 = Me.Item(from_stack_1)
  loc_C272B8: FLdRfVar var_2A8
  loc_C272BB: FLdRfVar var_3A4
  loc_C272BE: LitVarStr var_168, "FedrRexp"
  loc_C272C3: PopAdLdVar
  loc_C272C4: FLdRfVar var_3A0
  loc_C272C7: FLdPr Me
  loc_C272CA: MemLdPr global_60
  loc_C272CD:  = Me.Fields
  loc_C272D2: FLdPr var_3A0
  loc_C272D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C272DA: FLdPr var_3A4
  loc_C272DD:  = Me.Value
  loc_C272E2: FLdRfVar var_384
  loc_C272E5: FLdRfVar var_3BC
  loc_C272E8: LitVarStr var_1B4, "FehrRexp"
  loc_C272ED: PopAdLdVar
  loc_C272EE: FLdRfVar var_3B8
  loc_C272F1: FLdPr Me
  loc_C272F4: MemLdPr global_60
  loc_C272F7:  = Me.Fields
  loc_C272FC: FLdPr var_3B8
  loc_C272FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C27304: FLdPr var_3BC
  loc_C27307:  = Me.Value
  loc_C2730C: FLdRfVar var_178
  loc_C2730F: FLdZeroAd var_39C
  loc_C27312: CVarAd
  loc_C27316: ImpAdCallHresult  = CDec()
  loc_C2731B: FLdRfVar var_178
  loc_C2731E: LitVarI2 var_13C, 0
  loc_C27323: HardType
  loc_C27324: GtVar var_218
  loc_C27328: ILdRf var_90
  loc_C2732B: CDateStr
  loc_C2732D: FLdRfVar var_2A8
  loc_C27330: FnCDateVar
  loc_C27332: GtR4
  loc_C27333: CVarBoolI2 var_1A4
  loc_C27337: AndVar var_334
  loc_C2733B: ILdRf var_90
  loc_C2733E: CDateStr
  loc_C27340: FLdRfVar var_384
  loc_C27343: FnCDateVar
  loc_C27345: LtR8
  loc_C27346: CVarBoolI2 var_1C4
  loc_C2734A: AndVar var_3B4
  loc_C2734E: CBoolVarNull
  loc_C27350: FFreeAd var_398 = "": var_3A0 = "": var_3A4 = "": var_3B8 = ""
  loc_C2735D: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_1A4 = "": var_384 = ""
  loc_C2736C: BranchF loc_C273AA
  loc_C2736F: FLdRfVar var_14C
  loc_C27372: FLdRfVar var_39C
  loc_C27375: LitVarStr var_12C, "PerfEsca"
  loc_C2737A: PopAdLdVar
  loc_C2737B: FLdRfVar var_398
  loc_C2737E: FLdPr Me
  loc_C27381: MemLdPr global_64
  loc_C27384:  = Me.Fields
  loc_C27389: FLdPr var_398
  loc_C2738C: from_stack_2 = Me.Item(from_stack_1)
  loc_C27391: FLdPr var_39C
  loc_C27394:  = Me.Value
  loc_C27399: FLdRfVar var_14C
  loc_C2739C: CR4Var
  loc_C2739D: FStFPR8 var_D8
  loc_C273A0: FFreeAd var_398 = ""
  loc_C273A7: FFree1Var var_14C = ""
  loc_C273AA: Branch loc_C27516
  loc_C273AD: FLdRfVar var_3A4
  loc_C273B0: LitVarStr var_12C, "FedrRexp"
  loc_C273B5: PopAdLdVar
  loc_C273B6: FLdRfVar var_3A0
  loc_C273B9: FLdRfVar var_39C
  loc_C273BC: FLdRfVar var_398
  loc_C273BF: ImpAdLdRf MemVar_C3D278
  loc_C273C2: NewIfNullPr dlgSeleccionaCategoria
  loc_C273C5: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C273CA: FLdPr var_398
  loc_C273CD: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C273D2: FLdPr var_39C
  loc_C273D5:  = Me.Fields
  loc_C273DA: FLdPr var_3A0
  loc_C273DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C273E2: FLdZeroAd var_3A4
  loc_C273E5: CVarAd
  loc_C273E9: ImpAdCallI2 IsNull()
  loc_C273EE: NotI4
  loc_C273EF: FLdRfVar var_3F4
  loc_C273F2: LitVarStr var_13C, "FehrRexp"
  loc_C273F7: PopAdLdVar
  loc_C273F8: FLdRfVar var_3F0
  loc_C273FB: FLdRfVar var_3BC
  loc_C273FE: FLdRfVar var_3B8
  loc_C27401: ImpAdLdRf MemVar_C3D278
  loc_C27404: NewIfNullPr dlgSeleccionaCategoria
  loc_C27407: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C2740C: FLdPr var_3B8
  loc_C2740F: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27414: FLdPr var_3BC
  loc_C27417:  = Me.Fields
  loc_C2741C: FLdPr var_3F0
  loc_C2741F: from_stack_2 = Me.Item(from_stack_1)
  loc_C27424: FLdZeroAd var_3F4
  loc_C27427: CVarAd
  loc_C2742B: ImpAdCallI2 IsNull()
  loc_C27430: AndI4
  loc_C27431: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = ""
  loc_C27440: FFreeVar var_14C = ""
  loc_C27447: BranchF loc_C27516
  loc_C2744A: FLdRfVar var_39C
  loc_C2744D: LitVarStr var_12C, "PerfEsca"
  loc_C27452: PopAdLdVar
  loc_C27453: FLdRfVar var_398
  loc_C27456: FLdPr Me
  loc_C27459: MemLdPr global_64
  loc_C2745C:  = Me.Fields
  loc_C27461: FLdPr var_398
  loc_C27464: from_stack_2 = Me.Item(from_stack_1)
  loc_C27469: FLdRfVar var_2A8
  loc_C2746C: FLdRfVar var_3A4
  loc_C2746F: LitVarStr var_168, "FedrRexp"
  loc_C27474: PopAdLdVar
  loc_C27475: FLdRfVar var_3A0
  loc_C27478: FLdPr Me
  loc_C2747B: MemLdPr global_60
  loc_C2747E:  = Me.Fields
  loc_C27483: FLdPr var_3A0
  loc_C27486: from_stack_2 = Me.Item(from_stack_1)
  loc_C2748B: FLdPr var_3A4
  loc_C2748E:  = Me.Value
  loc_C27493: FLdRfVar var_178
  loc_C27496: FLdZeroAd var_39C
  loc_C27499: CVarAd
  loc_C2749D: ImpAdCallHresult  = CDec()
  loc_C274A2: FLdRfVar var_178
  loc_C274A5: LitVarI2 var_13C, 0
  loc_C274AA: HardType
  loc_C274AB: GtVar var_218
  loc_C274AF: ILdRf var_90
  loc_C274B2: CDateStr
  loc_C274B4: FLdRfVar var_2A8
  loc_C274B7: FnCDateVar
  loc_C274B9: GeR8
  loc_C274BA: CVarBoolI2 var_1A4
  loc_C274BE: AndVar var_334
  loc_C274C2: CBoolVarNull
  loc_C274C4: FFreeAd var_398 = "": var_3A0 = ""
  loc_C274CD: FFreeVar var_14C = "": var_178 = "": var_2A8 = ""
  loc_C274D8: BranchF loc_C27516
  loc_C274DB: FLdRfVar var_14C
  loc_C274DE: FLdRfVar var_39C
  loc_C274E1: LitVarStr var_12C, "PerfEsca"
  loc_C274E6: PopAdLdVar
  loc_C274E7: FLdRfVar var_398
  loc_C274EA: FLdPr Me
  loc_C274ED: MemLdPr global_64
  loc_C274F0:  = Me.Fields
  loc_C274F5: FLdPr var_398
  loc_C274F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C274FD: FLdPr var_39C
  loc_C27500:  = Me.Value
  loc_C27505: FLdRfVar var_14C
  loc_C27508: CR4Var
  loc_C27509: FStFPR8 var_D8
  loc_C2750C: FFreeAd var_398 = ""
  loc_C27513: FFree1Var var_14C = ""
  loc_C27516: FLdRfVar var_3A4
  loc_C27519: LitVarStr var_12C, "FedeRexp"
  loc_C2751E: PopAdLdVar
  loc_C2751F: FLdRfVar var_3A0
  loc_C27522: FLdRfVar var_39C
  loc_C27525: FLdRfVar var_398
  loc_C27528: ImpAdLdRf MemVar_C3D278
  loc_C2752B: NewIfNullPr dlgSeleccionaCategoria
  loc_C2752E: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27533: FLdPr var_398
  loc_C27536: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C2753B: FLdPr var_39C
  loc_C2753E:  = Me.Fields
  loc_C27543: FLdPr var_3A0
  loc_C27546: from_stack_2 = Me.Item(from_stack_1)
  loc_C2754B: FLdZeroAd var_3A4
  loc_C2754E: CVarAd
  loc_C27552: ImpAdCallI2 IsNull()
  loc_C27557: NotI4
  loc_C27558: FLdRfVar var_3F4
  loc_C2755B: LitVarStr var_13C, "FeheRexp"
  loc_C27560: PopAdLdVar
  loc_C27561: FLdRfVar var_3F0
  loc_C27564: FLdRfVar var_3BC
  loc_C27567: FLdRfVar var_3B8
  loc_C2756A: ImpAdLdRf MemVar_C3D278
  loc_C2756D: NewIfNullPr dlgSeleccionaCategoria
  loc_C27570: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27575: FLdPr var_3B8
  loc_C27578: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C2757D: FLdPr var_3BC
  loc_C27580:  = Me.Fields
  loc_C27585: FLdPr var_3F0
  loc_C27588: from_stack_2 = Me.Item(from_stack_1)
  loc_C2758D: FLdZeroAd var_3F4
  loc_C27590: CVarAd
  loc_C27594: ImpAdCallI2 IsNull()
  loc_C27599: NotI4
  loc_C2759A: AndI4
  loc_C2759B: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = ""
  loc_C275AA: FFreeVar var_14C = ""
  loc_C275B1: BranchF loc_C276C9
  loc_C275B4: FLdRfVar var_14C
  loc_C275B7: FLdRfVar var_3A4
  loc_C275BA: LitVarStr var_12C, "FedeRexp"
  loc_C275BF: PopAdLdVar
  loc_C275C0: FLdRfVar var_3A0
  loc_C275C3: FLdRfVar var_39C
  loc_C275C6: FLdRfVar var_398
  loc_C275C9: ImpAdLdRf MemVar_C3D278
  loc_C275CC: NewIfNullPr dlgSeleccionaCategoria
  loc_C275CF: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C275D4: FLdPr var_398
  loc_C275D7: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C275DC: FLdPr var_39C
  loc_C275DF:  = Me.Fields
  loc_C275E4: FLdPr var_3A0
  loc_C275E7: from_stack_2 = Me.Item(from_stack_1)
  loc_C275EC: FLdPr var_3A4
  loc_C275EF:  = Me.Value
  loc_C275F4: FLdRfVar var_178
  loc_C275F7: FLdRfVar var_3F4
  loc_C275FA: LitVarStr var_13C, "FeheRexp"
  loc_C275FF: PopAdLdVar
  loc_C27600: FLdRfVar var_3F0
  loc_C27603: FLdRfVar var_3BC
  loc_C27606: FLdRfVar var_3B8
  loc_C27609: ImpAdLdRf MemVar_C3D278
  loc_C2760C: NewIfNullPr dlgSeleccionaCategoria
  loc_C2760F: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27614: FLdPr var_3B8
  loc_C27617: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C2761C: FLdPr var_3BC
  loc_C2761F:  = Me.Fields
  loc_C27624: FLdPr var_3F0
  loc_C27627: from_stack_2 = Me.Item(from_stack_1)
  loc_C2762C: FLdPr var_3F4
  loc_C2762F:  = Me.Value
  loc_C27634: ILdRf var_90
  loc_C27637: CDateStr
  loc_C27639: FLdRfVar var_14C
  loc_C2763C: FnCDateVar
  loc_C2763E: GeR8
  loc_C2763F: ILdRf var_90
  loc_C27642: CDateStr
  loc_C27644: FLdRfVar var_178
  loc_C27647: FnCDateVar
  loc_C27649: LeR8
  loc_C2764A: AndI4
  loc_C2764B: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = ""
  loc_C2765E: FFreeVar var_14C = ""
  loc_C27665: BranchF loc_C276C0
  loc_C27668: FLdRfVar var_14C
  loc_C2766B: FLdRfVar var_3A4
  loc_C2766E: LitVarStr var_12C, "PoexRexp"
  loc_C27673: PopAdLdVar
  loc_C27674: FLdRfVar var_3A0
  loc_C27677: FLdRfVar var_39C
  loc_C2767A: FLdRfVar var_398
  loc_C2767D: ImpAdLdRf MemVar_C3D278
  loc_C27680: NewIfNullPr dlgSeleccionaCategoria
  loc_C27683: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27688: FLdPr var_398
  loc_C2768B: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27690: FLdPr var_39C
  loc_C27693:  = Me.Fields
  loc_C27698: FLdPr var_3A0
  loc_C2769B: from_stack_2 = Me.Item(from_stack_1)
  loc_C276A0: FLdPr var_3A4
  loc_C276A3:  = Me.Value
  loc_C276A8: FLdRfVar var_14C
  loc_C276AB: CR4Var
  loc_C276AC: FStFPR8 var_E0
  loc_C276AF: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C276BA: FFree1Var var_14C = ""
  loc_C276BD: Branch loc_C276C6
  loc_C276C0: LitI2_Byte 0
  loc_C276C2: CR8I2
  loc_C276C3: FStFPR8 var_E0
  loc_C276C6: Branch loc_C27820
  loc_C276C9: FLdRfVar var_3A4
  loc_C276CC: LitVarStr var_12C, "FedeRexp"
  loc_C276D1: PopAdLdVar
  loc_C276D2: FLdRfVar var_3A0
  loc_C276D5: FLdRfVar var_39C
  loc_C276D8: FLdRfVar var_398
  loc_C276DB: ImpAdLdRf MemVar_C3D278
  loc_C276DE: NewIfNullPr dlgSeleccionaCategoria
  loc_C276E1: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C276E6: FLdPr var_398
  loc_C276E9: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C276EE: FLdPr var_39C
  loc_C276F1:  = Me.Fields
  loc_C276F6: FLdPr var_3A0
  loc_C276F9: from_stack_2 = Me.Item(from_stack_1)
  loc_C276FE: FLdZeroAd var_3A4
  loc_C27701: CVarAd
  loc_C27705: ImpAdCallI2 IsNull()
  loc_C2770A: NotI4
  loc_C2770B: FLdRfVar var_3F4
  loc_C2770E: LitVarStr var_13C, "FeheRexp"
  loc_C27713: PopAdLdVar
  loc_C27714: FLdRfVar var_3F0
  loc_C27717: FLdRfVar var_3BC
  loc_C2771A: FLdRfVar var_3B8
  loc_C2771D: ImpAdLdRf MemVar_C3D278
  loc_C27720: NewIfNullPr dlgSeleccionaCategoria
  loc_C27723: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27728: FLdPr var_3B8
  loc_C2772B: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27730: FLdPr var_3BC
  loc_C27733:  = Me.Fields
  loc_C27738: FLdPr var_3F0
  loc_C2773B: from_stack_2 = Me.Item(from_stack_1)
  loc_C27740: FLdZeroAd var_3F4
  loc_C27743: CVarAd
  loc_C27747: ImpAdCallI2 IsNull()
  loc_C2774C: AndI4
  loc_C2774D: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3B8 = "": var_3BC = ""
  loc_C2775C: FFreeVar var_14C = ""
  loc_C27763: BranchF loc_C27820
  loc_C27766: FLdRfVar var_14C
  loc_C27769: FLdRfVar var_3A4
  loc_C2776C: LitVarStr var_12C, "FedeRexp"
  loc_C27771: PopAdLdVar
  loc_C27772: FLdRfVar var_3A0
  loc_C27775: FLdRfVar var_39C
  loc_C27778: FLdRfVar var_398
  loc_C2777B: ImpAdLdRf MemVar_C3D278
  loc_C2777E: NewIfNullPr dlgSeleccionaCategoria
  loc_C27781: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27786: FLdPr var_398
  loc_C27789: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C2778E: FLdPr var_39C
  loc_C27791:  = Me.Fields
  loc_C27796: FLdPr var_3A0
  loc_C27799: from_stack_2 = Me.Item(from_stack_1)
  loc_C2779E: FLdPr var_3A4
  loc_C277A1:  = Me.Value
  loc_C277A6: ILdRf var_90
  loc_C277A9: CDateStr
  loc_C277AB: FLdRfVar var_14C
  loc_C277AE: FnCDateVar
  loc_C277B0: GeR8
  loc_C277B1: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C277BC: FFree1Var var_14C = ""
  loc_C277BF: BranchF loc_C2781A
  loc_C277C2: FLdRfVar var_14C
  loc_C277C5: FLdRfVar var_3A4
  loc_C277C8: LitVarStr var_12C, "PoexRexp"
  loc_C277CD: PopAdLdVar
  loc_C277CE: FLdRfVar var_3A0
  loc_C277D1: FLdRfVar var_39C
  loc_C277D4: FLdRfVar var_398
  loc_C277D7: ImpAdLdRf MemVar_C3D278
  loc_C277DA: NewIfNullPr dlgSeleccionaCategoria
  loc_C277DD: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C277E2: FLdPr var_398
  loc_C277E5: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C277EA: FLdPr var_39C
  loc_C277ED:  = Me.Fields
  loc_C277F2: FLdPr var_3A0
  loc_C277F5: from_stack_2 = Me.Item(from_stack_1)
  loc_C277FA: FLdPr var_3A4
  loc_C277FD:  = Me.Value
  loc_C27802: FLdRfVar var_14C
  loc_C27805: CR4Var
  loc_C27806: FStFPR8 var_E0
  loc_C27809: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C27814: FFree1Var var_14C = ""
  loc_C27817: Branch loc_C27820
  loc_C2781A: LitI2_Byte 0
  loc_C2781C: CR8I2
  loc_C2781D: FStFPR8 var_E0
  loc_C27820: LitI2_Byte 0
  loc_C27822: CR8I2
  loc_C27823: FStFPR8 var_110
  loc_C27826: FLdFPR8 var_B8
  loc_C27829: CVarR8
  loc_C2782D: FLdRfVar var_14C
  loc_C27830: FLdRfVar var_39C
  loc_C27833: LitVarStr var_12C, "BaseEsca"
  loc_C27838: PopAdLdVar
  loc_C27839: FLdRfVar var_398
  loc_C2783C: FLdPr Me
  loc_C2783F: MemLdPr global_64
  loc_C27842:  = Me.Fields
  loc_C27847: FLdPr var_398
  loc_C2784A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2784F: FLdPr var_39C
  loc_C27852:  = Me.Value
  loc_C27857: FLdRfVar var_14C
  loc_C2785A: DivVar var_178
  loc_C2785E: CStrVarVal var_114
  loc_C27862: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C27867: FStStrNoPop var_118
  loc_C2786A: CR8Str
  loc_C2786C: FStFPR8 var_110
  loc_C2786F: FFreeStr var_114 = ""
  loc_C27876: FFreeAd var_398 = ""
  loc_C2787D: FFree1Var var_14C = ""
  loc_C27880: FLdFPR8 var_110
  loc_C27883: CVarR8
  loc_C27887: FLdRfVar var_14C
  loc_C2788A: FLdRfVar var_39C
  loc_C2788D: LitVarStr var_12C, "ImnoDere"
  loc_C27892: PopAdLdVar
  loc_C27893: FLdRfVar var_398
  loc_C27896: FLdPr Me
  loc_C27899: MemLdPr global_60
  loc_C2789C:  = Me.Fields
  loc_C278A1: FLdPr var_398
  loc_C278A4: from_stack_2 = Me.Item(from_stack_1)
  loc_C278A9: FLdPr var_39C
  loc_C278AC:  = Me.Value
  loc_C278B1: FLdRfVar var_14C
  loc_C278B4: SubVar var_178
  loc_C278B8: FLdRfVar var_218
  loc_C278BB: FLdRfVar var_3A4
  loc_C278BE: LitVarStr var_168, "ImnoEsca"
  loc_C278C3: PopAdLdVar
  loc_C278C4: FLdRfVar var_3A0
  loc_C278C7: FLdPr Me
  loc_C278CA: MemLdPr global_64
  loc_C278CD:  = Me.Fields
  loc_C278D2: FLdPr var_3A0
  loc_C278D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C278DA: FLdPr var_3A4
  loc_C278DD:  = Me.Value
  loc_C278E2: FLdRfVar var_218
  loc_C278E5: SubVar var_2A8
  loc_C278E9: FLdRfVar var_334
  loc_C278EC: FLdRfVar var_3BC
  loc_C278EF: LitVarStr var_1A4, "AlicEsca"
  loc_C278F4: PopAdLdVar
  loc_C278F5: FLdRfVar var_3B8
  loc_C278F8: FLdPr Me
  loc_C278FB: MemLdPr global_64
  loc_C278FE:  = Me.Fields
  loc_C27903: FLdPr var_3B8
  loc_C27906: from_stack_2 = Me.Item(from_stack_1)
  loc_C2790B: FLdPr var_3BC
  loc_C2790E:  = Me.Value
  loc_C27913: FLdRfVar var_334
  loc_C27916: LitVarI2 var_1B4, 100
  loc_C2791B: DivVar var_384
  loc_C2791F: MulVar var_3B4
  loc_C27923: FLdRfVar var_3CC
  loc_C27926: FLdRfVar var_3F4
  loc_C27929: LitVarStr var_1C4, "ImfiEsca"
  loc_C2792E: PopAdLdVar
  loc_C2792F: FLdRfVar var_3F0
  loc_C27932: FLdPr Me
  loc_C27935: MemLdPr global_64
  loc_C27938:  = Me.Fields
  loc_C2793D: FLdPr var_3F0
  loc_C27940: from_stack_2 = Me.Item(from_stack_1)
  loc_C27945: FLdPr var_3F4
  loc_C27948:  = Me.Value
  loc_C2794D: FLdRfVar var_3CC
  loc_C27950: AddVar var_3DC
  loc_C27954: FLdFPR8 var_C0
  loc_C27957: CVarR8
  loc_C2795B: SubVar var_3EC
  loc_C2795F: CStrVarVal var_114
  loc_C27963: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C27968: FStStrNoPop var_118
  loc_C2796B: CR8Str
  loc_C2796D: FStFPR8 var_C8
  loc_C27970: FFreeStr var_114 = ""
  loc_C27977: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = ""
  loc_C2798A: FFreeVar var_14C = "": var_218 = "": var_334 = "": var_3CC = ""
  loc_C27997: FLdFPR8 var_D0
  loc_C2799A: LitI2_Byte 0
  loc_C2799C: CR8I2
  loc_C2799D: GtR4
  loc_C2799E: BranchF loc_C279AB
  loc_C279A1: FLdFPR8 var_C8
  loc_C279A4: FLdFPR8 var_D0
  loc_C279A7: MulR8
  loc_C279A8: FStFPR8 var_E8
  loc_C279AB: FLdFPR8 var_D8
  loc_C279AE: LitI2_Byte 0
  loc_C279B0: CR8I2
  loc_C279B1: GtR4
  loc_C279B2: BranchF loc_C279BF
  loc_C279B5: FLdFPR8 var_C8
  loc_C279B8: FLdFPR8 var_D8
  loc_C279BB: MulR8
  loc_C279BC: FStFPR8 var_F0
  loc_C279BF: FLdRfVar var_C8
  loc_C279C2: CVarRef
  loc_C279C7: LitVarI2 var_14C, 0
  loc_C279CC: FLdFPR8 var_E8
  loc_C279CF: LitI2_Byte 0
  loc_C279D1: CR8I2
  loc_C279D2: GtR4
  loc_C279D3: CVarBoolI2 var_12C
  loc_C279D7: FLdRfVar var_178
  loc_C279DA: ImpAdCallFPR4  = IIf(, , )
  loc_C279DF: FLdRfVar var_178
  loc_C279E2: FLdFPR8 var_E8
  loc_C279E5: CVarR8
  loc_C279E9: AddVar var_218
  loc_C279ED: CR4Var
  loc_C279EE: FStFPR8 var_C8
  loc_C279F1: FFreeVar var_12C = "": var_14C = "": var_178 = ""
  loc_C279FC: FLdRfVar var_C8
  loc_C279FF: CVarRef
  loc_C27A04: LitVarI2 var_14C, 0
  loc_C27A09: FLdFPR8 var_F0
  loc_C27A0C: LitI2_Byte 0
  loc_C27A0E: CR8I2
  loc_C27A0F: GtR4
  loc_C27A10: CVarBoolI2 var_12C
  loc_C27A14: FLdRfVar var_178
  loc_C27A17: ImpAdCallFPR4  = IIf(, , )
  loc_C27A1C: FLdRfVar var_178
  loc_C27A1F: FLdFPR8 var_F0
  loc_C27A22: CVarR8
  loc_C27A26: AddVar var_218
  loc_C27A2A: CR4Var
  loc_C27A2B: FStFPR8 var_C8
  loc_C27A2E: FFreeVar var_12C = "": var_14C = "": var_178 = ""
  loc_C27A39: FLdFPR8 var_E0
  loc_C27A3C: LitI2_Byte 0
  loc_C27A3E: CR8I2
  loc_C27A3F: GtR4
  loc_C27A40: BranchF loc_C27ABC
  loc_C27A43: FLdRfVar var_14C
  loc_C27A46: FLdRfVar var_3A4
  loc_C27A49: LitVarStr var_12C, "PoexRexp"
  loc_C27A4E: PopAdLdVar
  loc_C27A4F: FLdRfVar var_3A0
  loc_C27A52: FLdRfVar var_39C
  loc_C27A55: FLdRfVar var_398
  loc_C27A58: ImpAdLdRf MemVar_C3D278
  loc_C27A5B: NewIfNullPr dlgSeleccionaCategoria
  loc_C27A5E: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27A63: FLdPr var_398
  loc_C27A66: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27A6B: FLdPr var_39C
  loc_C27A6E:  = Me.Fields
  loc_C27A73: FLdPr var_3A0
  loc_C27A76: from_stack_2 = Me.Item(from_stack_1)
  loc_C27A7B: FLdPr var_3A4
  loc_C27A7E:  = Me.Value
  loc_C27A83: FLdRfVar var_14C
  loc_C27A86: CStrVarTmp
  loc_C27A87: FStStrNoPop var_114
  loc_C27A8A: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C27A8F: FStStr var_11C
  loc_C27A92: FLdFPR8 var_C8
  loc_C27A95: FLdZeroAd var_11C
  loc_C27A98: FStStrNoPop var_118
  loc_C27A9B: CR8Str
  loc_C27A9D: MulR8
  loc_C27A9E: LitI2_Byte &H64
  loc_C27AA0: CR8I2
  loc_C27AA1: DivR8
  loc_C27AA2: FStFPR8 var_F8
  loc_C27AA5: FFreeStr var_114 = "": var_118 = ""
  loc_C27AAE: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C27AB9: FFree1Var var_14C = ""
  loc_C27ABC: FLdFPR8 var_F8
  loc_C27ABF: CStrR8
  loc_C27AC1: FStStrNoPop var_118
  loc_C27AC4: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C27AC9: FStStr var_154
  loc_C27ACC: FLdFPR8 var_C8
  loc_C27ACF: CStrR8
  loc_C27AD1: FStStrNoPop var_114
  loc_C27AD4: ImpAdCallI2 Proc_261_61_97BCB8()
  loc_C27AD9: FStStrNoPop var_11C
  loc_C27ADC: CR8Str
  loc_C27ADE: FLdZeroAd var_154
  loc_C27AE1: FStStrNoPop var_150
  loc_C27AE4: CR8Str
  loc_C27AE6: SubR4
  loc_C27AE7: FStFPR8 var_C8
  loc_C27AEA: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = ""
  loc_C27AF7: LitI4 2
  loc_C27AFC: FLdRfVar var_C8
  loc_C27AFF: CVarRef
  loc_C27B04: FLdRfVar var_14C
  loc_C27B07: ImpAdCallFPR4  = Round(, )
  loc_C27B0C: FLdRfVar var_14C
  loc_C27B0F: CR4Var
  loc_C27B10: FStFPR8 var_C8
  loc_C27B13: FFree1Var var_14C = ""
  loc_C27B16: FLdFPR8 var_C8
  loc_C27B19: LitI2_Byte 0
  loc_C27B1B: CR8I2
  loc_C27B1C: GtR4
  loc_C27B1D: BranchF loc_C2837D
  loc_C27B20: FLdRfVar var_39C
  loc_C27B23: LitVarStr var_12C, "RemiEsca"
  loc_C27B28: PopAdLdVar
  loc_C27B29: FLdRfVar var_398
  loc_C27B2C: FLdPr Me
  loc_C27B2F: MemLdPr global_64
  loc_C27B32:  = Me.Fields
  loc_C27B37: FLdPr var_398
  loc_C27B3A: from_stack_2 = Me.Item(from_stack_1)
  loc_C27B3F: FLdFPR8 var_C8
  loc_C27B42: CVarR8
  loc_C27B46: HardType
  loc_C27B47: LitI4 2
  loc_C27B4C: FLdZeroAd var_39C
  loc_C27B4F: CVarAd
  loc_C27B53: FLdRfVar var_178
  loc_C27B56: ImpAdCallFPR4  = Round(, )
  loc_C27B5B: FLdRfVar var_178
  loc_C27B5E: LtVarBool
  loc_C27B60: FFree1Ad var_398
  loc_C27B63: FFreeVar var_14C = ""
  loc_C27B6A: BranchF loc_C27BEA
  loc_C27B6D: LitI4 0
  loc_C27B72: LitVarStr var_13C, "La retención: "
  loc_C27B77: FLdRfVar var_14C
  loc_C27B7A: FLdRfVar var_3A4
  loc_C27B7D: LitVarStr var_12C, "DetaDere"
  loc_C27B82: PopAdLdVar
  loc_C27B83: FLdRfVar var_3A0
  loc_C27B86: FLdRfVar var_39C
  loc_C27B89: FLdRfVar var_398
  loc_C27B8C: ImpAdLdRf MemVar_C3D278
  loc_C27B8F: NewIfNullPr dlgSeleccionaCategoria
  loc_C27B92: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27B97: FLdPr var_398
  loc_C27B9A: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27B9F: FLdPr var_39C
  loc_C27BA2:  = Me.Fields
  loc_C27BA7: FLdPr var_3A0
  loc_C27BAA: from_stack_2 = Me.Item(from_stack_1)
  loc_C27BAF: FLdPr var_3A4
  loc_C27BB2:  = Me.Value
  loc_C27BB7: FLdRfVar var_14C
  loc_C27BBA: ConcatVar var_178
  loc_C27BBE: LitVarStr var_168, " NO supera el mínimo a retener ..."
  loc_C27BC3: ConcatVar var_218
  loc_C27BC7: CStrVarVal var_114
  loc_C27BCB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C27BD0: FFree1Str var_114
  loc_C27BD3: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C27BDE: FFreeVar var_14C = "": var_178 = ""
  loc_C27BE7: Branch loc_C2837A
  loc_C27BEA: FLdRfVar var_39C
  loc_C27BED: LitVarStr var_12C, "RemiEsca"
  loc_C27BF2: PopAdLdVar
  loc_C27BF3: FLdRfVar var_398
  loc_C27BF6: FLdPr Me
  loc_C27BF9: MemLdPr global_64
  loc_C27BFC:  = Me.Fields
  loc_C27C01: FLdPr var_398
  loc_C27C04: from_stack_2 = Me.Item(from_stack_1)
  loc_C27C09: FLdFPR8 var_C8
  loc_C27C0C: CVarR8
  loc_C27C10: HardType
  loc_C27C11: LitI4 2
  loc_C27C16: FLdZeroAd var_39C
  loc_C27C19: CVarAd
  loc_C27C1D: FLdRfVar var_178
  loc_C27C20: ImpAdCallFPR4  = Round(, )
  loc_C27C25: FLdRfVar var_178
  loc_C27C28: GtVar var_218
  loc_C27C2C: FLdFPR8 var_C8
  loc_C27C2F: CVarR8
  loc_C27C33: HardType
  loc_C27C34: LitI4 2
  loc_C27C39: FLdI2 var_A2
  loc_C27C3C: CI4UI1
  loc_C27C3D: ILdRf var_A8
  loc_C27C40: AryLock
  loc_C27C43: Ary1LdPr
  loc_C27C44: MemLdRfVar from_stack_1.global_36
  loc_C27C47: CVarRef
  loc_C27C4C: FLdRfVar var_2A8
  loc_C27C4F: ImpAdCallFPR4  = Round(, )
  loc_C27C54: AryUnlock
  loc_C27C57: FLdRfVar var_2A8
  loc_C27C5A: GtVar var_334
  loc_C27C5E: AndVar var_384
  loc_C27C62: CBoolVarNull
  loc_C27C64: FFree1Ad var_398
  loc_C27C67: FFreeVar var_14C = "": var_178 = ""
  loc_C27C70: BranchF loc_C27D57
  loc_C27C73: FLdRfVar var_14C
  loc_C27C76: FLdRfVar var_3A4
  loc_C27C79: LitVarStr var_12C, "DetaDere"
  loc_C27C7E: PopAdLdVar
  loc_C27C7F: FLdRfVar var_3A0
  loc_C27C82: FLdRfVar var_39C
  loc_C27C85: FLdRfVar var_398
  loc_C27C88: ImpAdLdRf MemVar_C3D278
  loc_C27C8B: NewIfNullPr dlgSeleccionaCategoria
  loc_C27C8E: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27C93: FLdPr var_398
  loc_C27C96: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27C9B: FLdPr var_39C
  loc_C27C9E:  = Me.Fields
  loc_C27CA3: FLdPr var_3A0
  loc_C27CA6: from_stack_2 = Me.Item(from_stack_1)
  loc_C27CAB: FLdPr var_3A4
  loc_C27CAE:  = Me.Value
  loc_C27CB3: LitI4 2
  loc_C27CB8: FLdI2 var_A2
  loc_C27CBB: CI4UI1
  loc_C27CBC: ILdRf var_A8
  loc_C27CBF: AryLock
  loc_C27CC2: Ary1LdPr
  loc_C27CC3: MemLdRfVar from_stack_1.global_36
  loc_C27CC6: CVarRef
  loc_C27CCB: FLdRfVar var_384
  loc_C27CCE: ImpAdCallFPR4  = Round(, )
  loc_C27CD3: AryUnlock
  loc_C27CD6: LitI4 0
  loc_C27CDB: LitVarStr var_13C, "La Retención: "
  loc_C27CE0: FLdRfVar var_14C
  loc_C27CE3: ConcatVar var_178
  loc_C27CE7: LitVarStr var_168, " de "
  loc_C27CEC: ConcatVar var_218
  loc_C27CF0: FLdFPR8 var_C8
  loc_C27CF3: CVarR8
  loc_C27CF7: ConcatVar var_2A8
  loc_C27CFB: LitVarStr var_1B4, " es mayor al importe facturado "
  loc_C27D00: ConcatVar var_334
  loc_C27D04: FLdRfVar var_384
  loc_C27D07: ConcatVar var_3B4
  loc_C27D0B: LitVarStr var_1D8, "."
  loc_C27D10: ConcatVar var_3CC
  loc_C27D14: LitVarStr var_1E8, vbCrLf
  loc_C27D19: ConcatVar var_3DC
  loc_C27D1D: LitVarStr var_1F8, "No se realizará ninguna retención. Verifique..."
  loc_C27D22: ConcatVar var_3EC
  loc_C27D26: CStrVarVal var_114
  loc_C27D2A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C27D2F: FFree1Str var_114
  loc_C27D32: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C27D3D: FFreeVar var_14C = "": var_178 = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = ""
  loc_C27D54: Branch loc_C2837A
  loc_C27D57: FLdRfVar var_39C
  loc_C27D5A: LitVarStr var_12C, "RemiEsca"
  loc_C27D5F: PopAdLdVar
  loc_C27D60: FLdRfVar var_398
  loc_C27D63: FLdPr Me
  loc_C27D66: MemLdPr global_64
  loc_C27D69:  = Me.Fields
  loc_C27D6E: FLdPr var_398
  loc_C27D71: from_stack_2 = Me.Item(from_stack_1)
  loc_C27D76: FLdFPR8 var_C8
  loc_C27D79: CVarR8
  loc_C27D7D: HardType
  loc_C27D7E: LitI4 2
  loc_C27D83: FLdZeroAd var_39C
  loc_C27D86: CVarAd
  loc_C27D8A: FLdRfVar var_178
  loc_C27D8D: ImpAdCallFPR4  = Round(, )
  loc_C27D92: FLdRfVar var_178
  loc_C27D95: GtVar var_218
  loc_C27D99: LitI4 2
  loc_C27D9E: FLdI2 var_A2
  loc_C27DA1: CI4UI1
  loc_C27DA2: ILdRf var_A8
  loc_C27DA5: AryLock
  loc_C27DA8: Ary1LdPr
  loc_C27DA9: MemLdRfVar from_stack_1.global_44
  loc_C27DAC: CVarRef
  loc_C27DB1: FLdRfVar var_2A8
  loc_C27DB4: ImpAdCallFPR4  = Round(, )
  loc_C27DB9: AryUnlock
  loc_C27DBC: FLdRfVar var_2A8
  loc_C27DBF: FLdFPR8 var_C8
  loc_C27DC2: CVarR8
  loc_C27DC6: AddVar var_334
  loc_C27DCA: LitI4 2
  loc_C27DCF: FLdI2 var_A2
  loc_C27DD2: CI4UI1
  loc_C27DD3: ILdRf var_A8
  loc_C27DD6: AryLock
  loc_C27DD9: Ary1LdPr
  loc_C27DDA: MemLdRfVar from_stack_1.global_36
  loc_C27DDD: CVarRef
  loc_C27DE2: FLdRfVar var_384
  loc_C27DE5: ImpAdCallFPR4  = Round(, )
  loc_C27DEA: AryUnlock
  loc_C27DED: FLdRfVar var_384
  loc_C27DF0: GtVar var_3B4
  loc_C27DF4: AndVar var_3CC
  loc_C27DF8: CBoolVarNull
  loc_C27DFA: FFree1Ad var_398
  loc_C27DFD: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_334 = ""
  loc_C27E0A: BranchF loc_C27E9C
  loc_C27E0D: LitI4 0
  loc_C27E12: LitStr "El TOTAL de las Retenciones es mayor al importe facturado."
  loc_C27E15: LitStr vbCrLf
  loc_C27E18: ConcatStr
  loc_C27E19: FStStrNoPop var_114
  loc_C27E1C: LitStr "No se realizará ninguna Retención de "
  loc_C27E1F: ConcatStr
  loc_C27E20: CVarStr var_178
  loc_C27E23: FLdRfVar var_14C
  loc_C27E26: FLdRfVar var_3A4
  loc_C27E29: LitVarStr var_12C, "DetaDere"
  loc_C27E2E: PopAdLdVar
  loc_C27E2F: FLdRfVar var_3A0
  loc_C27E32: FLdRfVar var_39C
  loc_C27E35: FLdRfVar var_398
  loc_C27E38: ImpAdLdRf MemVar_C3D278
  loc_C27E3B: NewIfNullPr dlgSeleccionaCategoria
  loc_C27E3E: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C27E43: FLdPr var_398
  loc_C27E46: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C27E4B: FLdPr var_39C
  loc_C27E4E:  = Me.Fields
  loc_C27E53: FLdPr var_3A0
  loc_C27E56: from_stack_2 = Me.Item(from_stack_1)
  loc_C27E5B: FLdPr var_3A4
  loc_C27E5E:  = Me.Value
  loc_C27E63: FLdRfVar var_14C
  loc_C27E66: ConcatVar var_218
  loc_C27E6A: LitVarStr var_13C, ". Verifique..."
  loc_C27E6F: ConcatVar var_2A8
  loc_C27E73: CStrVarVal var_118
  loc_C27E77: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C27E7C: FFreeStr var_114 = ""
  loc_C27E83: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C27E8E: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C27E99: Branch loc_C2837A
  loc_C27E9C: FLdRfVar var_39C
  loc_C27E9F: LitVarStr var_12C, "RemiEsca"
  loc_C27EA4: PopAdLdVar
  loc_C27EA5: FLdRfVar var_398
  loc_C27EA8: FLdPr Me
  loc_C27EAB: MemLdPr global_64
  loc_C27EAE:  = Me.Fields
  loc_C27EB3: FLdPr var_398
  loc_C27EB6: from_stack_2 = Me.Item(from_stack_1)
  loc_C27EBB: FLdFPR8 var_C8
  loc_C27EBE: CVarR8
  loc_C27EC2: HardType
  loc_C27EC3: LitI4 2
  loc_C27EC8: FLdZeroAd var_39C
  loc_C27ECB: CVarAd
  loc_C27ECF: FLdRfVar var_178
  loc_C27ED2: ImpAdCallFPR4  = Round(, )
  loc_C27ED7: FLdRfVar var_178
  loc_C27EDA: GtVar var_218
  loc_C27EDE: LitI4 2
  loc_C27EE3: FLdI2 var_A2
  loc_C27EE6: CI4UI1
  loc_C27EE7: ILdRf var_A8
  loc_C27EEA: AryLock
  loc_C27EED: Ary1LdPr
  loc_C27EEE: MemLdRfVar from_stack_1.global_44
  loc_C27EF1: CVarRef
  loc_C27EF6: FLdRfVar var_2A8
  loc_C27EF9: ImpAdCallFPR4  = Round(, )
  loc_C27EFE: AryUnlock
  loc_C27F01: FLdRfVar var_2A8
  loc_C27F04: FLdFPR8 var_C8
  loc_C27F07: CVarR8
  loc_C27F0B: AddVar var_334
  loc_C27F0F: LitI4 2
  loc_C27F14: FLdI2 var_A2
  loc_C27F17: CI4UI1
  loc_C27F18: ILdRf var_A8
  loc_C27F1B: AryLock
  loc_C27F1E: Ary1LdPr
  loc_C27F1F: MemLdRfVar from_stack_1.global_36
  loc_C27F22: CVarRef
  loc_C27F27: FLdRfVar var_384
  loc_C27F2A: ImpAdCallFPR4  = Round(, )
  loc_C27F2F: AryUnlock
  loc_C27F32: FLdRfVar var_384
  loc_C27F35: LtVar var_3B4
  loc_C27F39: AndVar var_3CC
  loc_C27F3D: CBoolVarNull
  loc_C27F3F: FFree1Ad var_398
  loc_C27F42: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_334 = ""
  loc_C27F4F: BranchF loc_C2837A
  loc_C27F52: FLdRfVar var_4B4
  loc_C27F55: LitVarStr var_2E4, "FechEsca"
  loc_C27F5A: PopAdLdVar
  loc_C27F5B: FLdRfVar var_4B0
  loc_C27F5E: FLdPr Me
  loc_C27F61: MemLdPr global_64
  loc_C27F64:  = Me.Fields
  loc_C27F69: FLdPr var_4B0
  loc_C27F6C: from_stack_2 = Me.Item(from_stack_1)
  loc_C27F71: FLdRfVar var_570
  loc_C27F74: FLdRfVar var_7F8
  loc_C27F77: LitVarStr var_344, "BaseEsca"
  loc_C27F7C: PopAdLdVar
  loc_C27F7D: FLdRfVar var_7E4
  loc_C27F80: FLdPr Me
  loc_C27F83: MemLdPr global_64
  loc_C27F86:  = Me.Fields
  loc_C27F8B: FLdPr var_7E4
  loc_C27F8E: from_stack_2 = Me.Item(from_stack_1)
  loc_C27F93: FLdPr var_7F8
  loc_C27F96:  = Me.Value
  loc_C27F9B: ILdRf var_A0
  loc_C27F9E: LitStr "SET @ulcerete=0;"
  loc_C27FA1: ConcatStr
  loc_C27FA2: FStStrNoPop var_114
  loc_C27FA5: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C27FA8: ConcatStr
  loc_C27FA9: FStStrNoPop var_118
  loc_C27FAC: ImpAdLdI2 MemVar_C3D064
  loc_C27FAF: CStrUI1
  loc_C27FB1: FStStrNoPop var_11C
  loc_C27FB4: ConcatStr
  loc_C27FB5: FStStrNoPop var_150
  loc_C27FB8: LitStr " AND retenciones.CodiRete = "
  loc_C27FBB: ConcatStr
  loc_C27FBC: CVarStr var_178
  loc_C27FBF: FLdRfVar var_14C
  loc_C27FC2: FLdRfVar var_39C
  loc_C27FC5: LitVarStr var_12C, "CodiRete"
  loc_C27FCA: PopAdLdVar
  loc_C27FCB: FLdRfVar var_398
  loc_C27FCE: FLdPr Me
  loc_C27FD1: MemLdPr global_60
  loc_C27FD4:  = Me.Fields
  loc_C27FD9: FLdPr var_398
  loc_C27FDC: from_stack_2 = Me.Item(from_stack_1)
  loc_C27FE1: FLdPr var_39C
  loc_C27FE4:  = Me.Value
  loc_C27FE9: FLdRfVar var_14C
  loc_C27FEC: ConcatVar var_218
  loc_C27FF0: LitVarStr var_13C, ";"
  loc_C27FF5: ConcatVar var_2A8
  loc_C27FF9: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine,PefiLine,PerfLine)"
  loc_C27FFE: ConcatVar var_334
  loc_C28002: LitVarStr var_1A4, " VALUES ('"
  loc_C28007: ConcatVar var_384
  loc_C2800B: ILdRf var_8C
  loc_C2800E: CVarStr var_1B4
  loc_C28011: ConcatVar var_3B4
  loc_C28015: LitVarStr var_1C4, "',@liqu,"
  loc_C2801A: ConcatVar var_3CC
  loc_C2801E: FLdI2 var_A2
  loc_C28021: CI4UI1
  loc_C28022: ILdRf var_A8
  loc_C28025: Ary1LdPr
  loc_C28026: MemLdRfVar from_stack_1.global_0
  loc_C28029: LdFixedStr
  loc_C2802C: CVarStr var_3DC
  loc_C2802F: ConcatVar var_3EC
  loc_C28033: LitVarStr var_1D8, ","
  loc_C28038: ConcatVar var_404
  loc_C2803C: ImpAdLdI2 MemVar_C3D064
  loc_C2803F: CVarI2 var_1E8
  loc_C28042: ConcatVar var_414
  loc_C28046: LitVarStr var_1F8, ","
  loc_C2804B: ConcatVar var_424
  loc_C2804F: FLdRfVar var_434
  loc_C28052: FLdRfVar var_3A4
  loc_C28055: LitVarStr var_208, "CodiRete"
  loc_C2805A: PopAdLdVar
  loc_C2805B: FLdRfVar var_3A0
  loc_C2805E: FLdPr Me
  loc_C28061: MemLdPr global_60
  loc_C28064:  = Me.Fields
  loc_C28069: FLdPr var_3A0
  loc_C2806C: from_stack_2 = Me.Item(from_stack_1)
  loc_C28071: FLdPr var_3A4
  loc_C28074:  = Me.Value
  loc_C28079: FLdRfVar var_434
  loc_C2807C: ConcatVar var_444
  loc_C28080: LitVarStr var_268, ","
  loc_C28085: ConcatVar var_454
  loc_C28089: FLdRfVar var_464
  loc_C2808C: FLdRfVar var_3F4
  loc_C2808F: LitVarStr var_278, "CodiDere"
  loc_C28094: PopAdLdVar
  loc_C28095: FLdRfVar var_3F0
  loc_C28098: FLdRfVar var_3BC
  loc_C2809B: FLdRfVar var_3B8
  loc_C2809E: ImpAdLdRf MemVar_C3D278
  loc_C280A1: NewIfNullPr dlgSeleccionaCategoria
  loc_C280A4: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C280A9: FLdPr var_3B8
  loc_C280AC: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C280B1: FLdPr var_3BC
  loc_C280B4:  = Me.Fields
  loc_C280B9: FLdPr var_3F0
  loc_C280BC: from_stack_2 = Me.Item(from_stack_1)
  loc_C280C1: FLdPr var_3F4
  loc_C280C4:  = Me.Value
  loc_C280C9: FLdRfVar var_464
  loc_C280CC: ConcatVar var_474
  loc_C280D0: LitVarStr var_288, ","
  loc_C280D5: ConcatVar var_48C
  loc_C280D9: FLdRfVar var_49C
  loc_C280DC: FLdRfVar var_47C
  loc_C280DF: LitVarStr var_298, "CodiEsca"
  loc_C280E4: PopAdLdVar
  loc_C280E5: FLdRfVar var_478
  loc_C280E8: FLdPr Me
  loc_C280EB: MemLdPr global_64
  loc_C280EE:  = Me.Fields
  loc_C280F3: FLdPr var_478
  loc_C280F6: from_stack_2 = Me.Item(from_stack_1)
  loc_C280FB: FLdPr var_47C
  loc_C280FE:  = Me.Value
  loc_C28103: FLdRfVar var_49C
  loc_C28106: ConcatVar var_4AC
  loc_C2810A: LitVarStr var_2D4, ","
  loc_C2810F: ConcatVar var_4C4
  loc_C28113: LitI4 1
  loc_C28118: LitI4 1
  loc_C2811D: LitVarStr var_2F4, "'yyyy-mm-dd'"
  loc_C28122: FStVarCopyObj var_4E4
  loc_C28125: FLdRfVar var_4E4
  loc_C28128: FLdZeroAd var_4B4
  loc_C2812B: CVarAd
  loc_C2812F: ImpAdCallI2 Format$(, )
  loc_C28134: CVarStr var_508
  loc_C28137: ConcatVar var_518
  loc_C2813B: LitVarStr var_304, ",'"
  loc_C28140: ConcatVar var_528
  loc_C28144: FLdRfVar var_538
  loc_C28147: FLdRfVar var_560
  loc_C2814A: LitVarStr var_314, "CodiCuco"
  loc_C2814F: PopAdLdVar
  loc_C28150: FLdRfVar var_55C
  loc_C28153: FLdPr Me
  loc_C28156: MemLdPr global_56
  loc_C28159:  = Me.Fields
  loc_C2815E: FLdPr var_55C
  loc_C28161: from_stack_2 = Me.Item(from_stack_1)
  loc_C28166: FLdPr var_560
  loc_C28169:  = Me.Value
  loc_C2816E: FLdRfVar var_538
  loc_C28171: ConcatVar var_548
  loc_C28175: LitVarStr var_324, "',0,"
  loc_C2817A: ConcatVar var_558
  loc_C2817E: LitI4 2
  loc_C28183: FLdI2 var_A2
  loc_C28186: CI4UI1
  loc_C28187: ILdRf var_A8
  loc_C2818A: Ary1LdPr
  loc_C2818B: MemLdFPR8 global_36
  loc_C2818E: CVarR8
  loc_C28192: FLdRfVar var_570
  loc_C28195: DivVar var_580
  loc_C28199: FStVar var_590
  loc_C2819D: FLdRfVar var_590
  loc_C281A0: FLdRfVar var_5A0
  loc_C281A3: ImpAdCallFPR4  = Round(, )
  loc_C281A8: FLdRfVar var_5A0
  loc_C281AB: CStrVarVal var_154
  loc_C281AF: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C281B4: CVarStr var_5B0
  loc_C281B7: ConcatVar var_5C0
  loc_C281BB: LitVarStr var_364, ","
  loc_C281C0: ConcatVar var_5D0
  loc_C281C4: FLdFPR8 var_C8
  loc_C281C7: CStrR8
  loc_C281C9: FStStrNoPop var_158
  loc_C281CC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C281D1: CVarStr var_5E0
  loc_C281D4: ConcatVar var_5F0
  loc_C281D8: LitVarStr var_374, " ,@ulcerete,"
  loc_C281DD: ConcatVar var_600
  loc_C281E1: FLdFPR8 var_B8
  loc_C281E4: CStrR8
  loc_C281E6: FStStrNoPop var_17C
  loc_C281E9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C281EE: CVarStr var_610
  loc_C281F1: ConcatVar var_620
  loc_C281F5: LitVarStr var_630, ","
  loc_C281FA: ConcatVar var_640
  loc_C281FE: FLdFPR8 var_C0
  loc_C28201: CStrR8
  loc_C28203: FStStrNoPop var_180
  loc_C28206: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2820B: CVarStr var_650
  loc_C2820E: ConcatVar var_660
  loc_C28212: LitVarStr var_670, ","
  loc_C28217: ConcatVar var_680
  loc_C2821B: FLdFPR8 var_D0
  loc_C2821E: CStrR8
  loc_C28220: FStStrNoPop var_184
  loc_C28223: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C28228: CVarStr var_690
  loc_C2822B: ConcatVar var_6A0
  loc_C2822F: LitVarStr var_6B0, ","
  loc_C28234: ConcatVar var_6C0
  loc_C28238: FLdFPR8 var_D8
  loc_C2823B: CStrR8
  loc_C2823D: FStStrNoPop var_188
  loc_C28240: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C28245: CVarStr var_6D0
  loc_C28248: ConcatVar var_6E0
  loc_C2824C: LitVarStr var_6F0, ");"
  loc_C28251: ConcatVar var_700
  loc_C28255: LitVarStr var_730, " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C2825A: ConcatVar var_710
  loc_C2825E: ImpAdLdI2 MemVar_C3D064
  loc_C28261: CVarI2 var_750
  loc_C28264: ConcatVar var_720
  loc_C28268: LitVarStr var_770, " AND retenciones.CodiRete = "
  loc_C2826D: ConcatVar var_740
  loc_C28271: FLdRfVar var_760
  loc_C28274: FLdRfVar var_840
  loc_C28277: LitVarStr var_790, "CodiRete"
  loc_C2827C: PopAdLdVar
  loc_C2827D: FLdRfVar var_83C
  loc_C28280: FLdPr Me
  loc_C28283: MemLdPr global_60
  loc_C28286:  = Me.Fields
  loc_C2828B: FLdPr var_83C
  loc_C2828E: from_stack_2 = Me.Item(from_stack_1)
  loc_C28293: FLdPr var_840
  loc_C28296:  = Me.Value
  loc_C2829B: FLdRfVar var_760
  loc_C2829E: ConcatVar var_780
  loc_C282A2: LitVarStr var_7B0, ";"
  loc_C282A7: ConcatVar var_7A0
  loc_C282AB: CStrVarTmp
  loc_C282AC: FStStr var_A0
  loc_C282AF: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_C282C6: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = "": var_55C = "": var_560 = "": var_7E4 = "": var_7F8 = "": var_83C = ""
  loc_C282EB: FFreeVar var_590 = "": var_5A0 = "": var_558 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_660 = "": var_680 = "": var_690 = "": var_6A0 = "": var_6C0 = "": var_6D0 = "": var_6E0 = "": var_700 = "": var_710 = "": var_720 = "": var_740 = "": var_760 = "": var_780 = "": var_7A0 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4D4 = "": var_4E4 = "": var_4C4 = "": var_508 = "": var_518 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C28360: FLdI2 var_A2
  loc_C28363: CI4UI1
  loc_C28364: ILdRf var_A8
  loc_C28367: Ary1LdPr
  loc_C28368: MemLdFPR8 global_44
  loc_C2836B: FLdFPR8 var_C8
  loc_C2836E: AddR8
  loc_C2836F: FLdI2 var_A2
  loc_C28372: CI4UI1
  loc_C28373: ILdRf var_A8
  loc_C28376: Ary1LdPr
  loc_C28377: MemStFPR8 global_44
  loc_C2837A: Branch loc_C2842E
  loc_C2837D: LitI4 1
  loc_C28382: LitI4 1
  loc_C28387: LitVarStr var_13C, "currency"
  loc_C2838C: FStVarCopyObj var_178
  loc_C2838F: FLdRfVar var_178
  loc_C28392: FLdFPR8 var_C8
  loc_C28395: FnAbsR4
  loc_C28396: CVarR8
  loc_C2839A: ImpAdCallI2 Format$(, )
  loc_C2839F: FStStr var_158
  loc_C283A2: FLdRfVar var_218
  loc_C283A5: FLdRfVar var_39C
  loc_C283A8: LitVarStr var_168, "DetaDere"
  loc_C283AD: PopAdLdVar
  loc_C283AE: FLdRfVar var_398
  loc_C283B1: FLdPr Me
  loc_C283B4: MemLdPr global_60
  loc_C283B7:  = Me.Fields
  loc_C283BC: FLdPr var_398
  loc_C283BF: from_stack_2 = Me.Item(from_stack_1)
  loc_C283C4: FLdPr var_39C
  loc_C283C7:  = Me.Value
  loc_C283CC: LitI4 0
  loc_C283D1: LitStr "El Proveedor "
  loc_C283D4: FLdI2 var_A2
  loc_C283D7: CI4UI1
  loc_C283D8: ILdRf var_A8
  loc_C283DB: Ary1LdPr
  loc_C283DC: MemLdStr global_24
  loc_C283DF: ConcatStr
  loc_C283E0: FStStrNoPop var_114
  loc_C283E3: LitStr " posee Crédito Fiscal a favor de "
  loc_C283E6: ConcatStr
  loc_C283E7: FStStrNoPop var_118
  loc_C283EA: FLdZeroAd var_158
  loc_C283ED: FStStrNoPop var_11C
  loc_C283F0: ConcatStr
  loc_C283F1: FStStrNoPop var_150
  loc_C283F4: LitStr " para "
  loc_C283F7: ConcatStr
  loc_C283F8: CVarStr var_2A8
  loc_C283FB: FLdRfVar var_218
  loc_C283FE: ConcatVar var_334
  loc_C28402: CStrVarVal var_154
  loc_C28406: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2840B: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = ""
  loc_C2841A: FFreeAd var_398 = ""
  loc_C28421: FFreeVar var_14C = "": var_178 = "": var_2A8 = "": var_218 = ""
  loc_C2842E: FLdPr Me
  loc_C28431: MemLdPr global_64
  loc_C28434: Me.MoveNext
  loc_C28439: Branch loc_C26F81
  loc_C2843C: Branch loc_C2844F
  loc_C2843F: LitI4 0
  loc_C28444: LitStr "ERROR: Falta la escala para la categoría. Verifique..."
  loc_C28447: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2844C: Branch loc_C2A30E
  loc_C2844F: Branch loc_C28B34
  loc_C28452: ImpAdLdRf MemVar_C3D250
  loc_C28455: NewIfNullPr frmLiquidacion
  loc_C28458: VCallAd Control_ID_
  loc_C2845B: CVarAd
  loc_C2845F: CBoolVarNull
  loc_C28461: FFree1Var var_14C = ""
  loc_C28464: BranchF loc_C28B34
  loc_C28467: FLdI2 var_A2
  loc_C2846A: CI4UI1
  loc_C2846B: ILdRf var_A8
  loc_C2846E: Ary1LdPr
  loc_C2846F: MemLdRfVar from_stack_1.global_0
  loc_C28472: LdFixedStr
  loc_C28475: FStStrNoPop var_114
  loc_C28478: LitStr " - "
  loc_C2847B: ConcatStr
  loc_C2847C: FStStrNoPop var_118
  loc_C2847F: FLdI2 var_A2
  loc_C28482: CI4UI1
  loc_C28483: ILdRf var_A8
  loc_C28486: Ary1LdPr
  loc_C28487: MemLdStr global_24
  loc_C2848A: ConcatStr
  loc_C2848B: FStStrNoPop var_11C
  loc_C2848E: ImpAdLdRf MemVar_C3D264
  loc_C28491: NewIfNullPr dlgImporteFijo
  loc_C28494: VCallAd Control_ID_
  loc_C28497: FStAdFunc var_398
  loc_C2849A: FLdPr var_398
  loc_C2849D: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C284A2: FFreeStr var_114 = "": var_118 = ""
  loc_C284AB: FFree1Ad var_398
  loc_C284AE: FLdRfVar var_14C
  loc_C284B1: FLdRfVar var_39C
  loc_C284B4: LitVarStr var_12C, "CodiRete"
  loc_C284B9: PopAdLdVar
  loc_C284BA: FLdRfVar var_398
  loc_C284BD: FLdPr Me
  loc_C284C0: MemLdPr global_60
  loc_C284C3:  = Me.Fields
  loc_C284C8: FLdPr var_398
  loc_C284CB: from_stack_2 = Me.Item(from_stack_1)
  loc_C284D0: FLdPr var_39C
  loc_C284D3:  = Me.Value
  loc_C284D8: FLdRfVar var_14C
  loc_C284DB: LitVarStr var_13C, " - "
  loc_C284E0: ConcatVar var_178
  loc_C284E4: FLdRfVar var_218
  loc_C284E7: FLdRfVar var_3A4
  loc_C284EA: LitVarStr var_168, "DetaRete"
  loc_C284EF: PopAdLdVar
  loc_C284F0: FLdRfVar var_3A0
  loc_C284F3: FLdPr Me
  loc_C284F6: MemLdPr global_60
  loc_C284F9:  = Me.Fields
  loc_C284FE: FLdPr var_3A0
  loc_C28501: from_stack_2 = Me.Item(from_stack_1)
  loc_C28506: FLdPr var_3A4
  loc_C28509:  = Me.Value
  loc_C2850E: FLdRfVar var_218
  loc_C28511: ConcatVar var_2A8
  loc_C28515: CStrVarVal var_114
  loc_C28519: ImpAdLdRf MemVar_C3D264
  loc_C2851C: NewIfNullPr dlgImporteFijo
  loc_C2851F: VCallAd Control_ID_
  loc_C28522: FStAdFunc var_3B8
  loc_C28525: FLdPr var_3B8
  loc_C28528: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C2852D: FFree1Str var_114
  loc_C28530: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = ""
  loc_C2853D: FFreeVar var_14C = "": var_178 = "": var_218 = ""
  loc_C28548: FLdI2 var_A2
  loc_C2854B: CI4UI1
  loc_C2854C: ILdRf var_A8
  loc_C2854F: Ary1LdPr
  loc_C28550: MemLdR8 global_36
  loc_C28553: ImpAdLdRf MemVar_C3D264
  loc_C28556: NewIfNullPr dlgImporteFijo
  loc_C28559: Call dlgImporteFijo.doBaseImponiblePut(from_stack_1v)
  loc_C2855E: FLdI2 var_A2
  loc_C28561: CI4UI1
  loc_C28562: ILdRf var_A8
  loc_C28565: Ary1LdPr
  loc_C28566: MemLdFPR8 global_36
  loc_C28569: CStrR8
  loc_C2856B: FStStrNoPop var_114
  loc_C2856E: ImpAdLdRf MemVar_C3D264
  loc_C28571: NewIfNullPr dlgImporteFijo
  loc_C28574: VCallAd Control_ID_
  loc_C28577: FStAdFunc var_398
  loc_C2857A: FLdPr var_398
  loc_C2857D: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C28582: FFree1Str var_114
  loc_C28585: FFree1Ad var_398
  loc_C28588: LitI2_Byte 0
  loc_C2858A: CR8I2
  loc_C2858B: PopFPR8
  loc_C2858C: ImpAdLdRf MemVar_C3D264
  loc_C2858F: NewIfNullPr dlgImporteFijo
  loc_C28592: Call dlgImporteFijo.doImporteFijoPut(from_stack_1v)
  loc_C28597: LitStr "0"
  loc_C2859A: ImpAdLdRf MemVar_C3D264
  loc_C2859D: NewIfNullPr dlgImporteFijo
  loc_C285A0: VCallAd Control_ID_
  loc_C285A3: FStAdFunc var_398
  loc_C285A6: FLdPr var_398
  loc_C285A9: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C285AE: FFree1Ad var_398
  loc_C285B1: LitVar_Missing var_13C
  loc_C285B4: PopAdLdVar
  loc_C285B5: LitVarI4
  loc_C285BD: PopAdLdVar
  loc_C285BE: ImpAdLdRf MemVar_C3D264
  loc_C285C1: NewIfNullPr dlgImporteFijo
  loc_C285C4: dlgImporteFijo.Show from_stack_1, from_stack_2
  loc_C285C9: FLdRfVar var_4EC
  loc_C285CC: ImpAdLdRf MemVar_C3D264
  loc_C285CF: NewIfNullPr dlgImporteFijo
  loc_C285D2: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C285D7: FLdFPR8 var_4EC
  loc_C285DA: FnCDblR8
  loc_C285DC: LitI2_Byte 0
  loc_C285DE: CR8I2
  loc_C285DF: GtR4
  loc_C285E0: BranchF loc_C28B34
  loc_C285E3: FLdRfVar var_4EC
  loc_C285E6: ImpAdLdRf MemVar_C3D264
  loc_C285E9: NewIfNullPr dlgImporteFijo
  loc_C285EC: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C285F1: FLdFPR8 var_4EC
  loc_C285F4: FStFPR8 var_C8
  loc_C285F7: FLdFPR8 var_C8
  loc_C285FA: CVarR8
  loc_C285FE: HardType
  loc_C285FF: LitI4 2
  loc_C28604: FLdI2 var_A2
  loc_C28607: CI4UI1
  loc_C28608: ILdRf var_A8
  loc_C2860B: AryLock
  loc_C2860E: Ary1LdPr
  loc_C2860F: MemLdRfVar from_stack_1.global_36
  loc_C28612: CVarRef
  loc_C28617: FLdRfVar var_14C
  loc_C2861A: ImpAdCallFPR4  = Round(, )
  loc_C2861F: AryUnlock
  loc_C28622: FLdRfVar var_14C
  loc_C28625: GtVarBool
  loc_C28627: FFree1Var var_14C = ""
  loc_C2862A: BranchF loc_C286A2
  loc_C2862D: LitI4 0
  loc_C28632: LitStr "La Retención es mayor al importe devengado."
  loc_C28635: LitStr vbCrLf
  loc_C28638: ConcatStr
  loc_C28639: FStStrNoPop var_114
  loc_C2863C: LitStr "No se realizará ninguna Retención para "
  loc_C2863F: ConcatStr
  loc_C28640: CVarStr var_178
  loc_C28643: FLdRfVar var_14C
  loc_C28646: FLdRfVar var_39C
  loc_C28649: LitVarStr var_12C, "DetaDere"
  loc_C2864E: PopAdLdVar
  loc_C2864F: FLdRfVar var_398
  loc_C28652: FLdPr Me
  loc_C28655: MemLdPr global_60
  loc_C28658:  = dlgImporteFijo.Recordset15.Fields
  loc_C2865D: FLdPr var_398
  loc_C28660: from_stack_2 = Me.Item(from_stack_1)
  loc_C28665: FLdPr var_39C
  loc_C28668:  = Me.Value
  loc_C2866D: FLdRfVar var_14C
  loc_C28670: ConcatVar var_218
  loc_C28674: LitVarStr var_13C, ". Verifique..."
  loc_C28679: ConcatVar var_2A8
  loc_C2867D: CStrVarVal var_118
  loc_C28681: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C28686: FFreeStr var_114 = ""
  loc_C2868D: FFreeAd var_398 = ""
  loc_C28694: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C2869F: Branch loc_C28B34
  loc_C286A2: LitI4 2
  loc_C286A7: FLdI2 var_A2
  loc_C286AA: CI4UI1
  loc_C286AB: ILdRf var_A8
  loc_C286AE: Ary1LdPr
  loc_C286AF: MemLdFPR8 global_44
  loc_C286B2: FLdFPR8 var_C8
  loc_C286B5: AddR8
  loc_C286B6: CVarR8
  loc_C286BA: FLdRfVar var_178
  loc_C286BD: ImpAdCallFPR4  = Round(, )
  loc_C286C2: FLdRfVar var_178
  loc_C286C5: LitI4 2
  loc_C286CA: FLdI2 var_A2
  loc_C286CD: CI4UI1
  loc_C286CE: ILdRf var_A8
  loc_C286D1: AryLock
  loc_C286D4: Ary1LdPr
  loc_C286D5: MemLdRfVar from_stack_1.global_36
  loc_C286D8: CVarRef
  loc_C286DD: FLdRfVar var_218
  loc_C286E0: ImpAdCallFPR4  = Round(, )
  loc_C286E5: AryUnlock
  loc_C286E8: FLdRfVar var_218
  loc_C286EB: GtVarBool
  loc_C286ED: FFreeVar var_14C = "": var_178 = ""
  loc_C286F6: BranchF loc_C2876E
  loc_C286F9: LitI4 0
  loc_C286FE: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C28701: LitStr vbCrLf
  loc_C28704: ConcatStr
  loc_C28705: FStStrNoPop var_114
  loc_C28708: LitStr "No se realizará ninguna Retención de "
  loc_C2870B: ConcatStr
  loc_C2870C: CVarStr var_178
  loc_C2870F: FLdRfVar var_14C
  loc_C28712: FLdRfVar var_39C
  loc_C28715: LitVarStr var_12C, "DetaDere"
  loc_C2871A: PopAdLdVar
  loc_C2871B: FLdRfVar var_398
  loc_C2871E: FLdPr Me
  loc_C28721: MemLdPr global_60
  loc_C28724:  = Me.Fields
  loc_C28729: FLdPr var_398
  loc_C2872C: from_stack_2 = Me.Item(from_stack_1)
  loc_C28731: FLdPr var_39C
  loc_C28734:  = Me.Value
  loc_C28739: FLdRfVar var_14C
  loc_C2873C: ConcatVar var_218
  loc_C28740: LitVarStr var_13C, ". Verifique..."
  loc_C28745: ConcatVar var_2A8
  loc_C28749: CStrVarVal var_118
  loc_C2874D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C28752: FFreeStr var_114 = ""
  loc_C28759: FFreeAd var_398 = ""
  loc_C28760: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C2876B: Branch loc_C28B34
  loc_C2876E: LitI4 2
  loc_C28773: FLdI2 var_A2
  loc_C28776: CI4UI1
  loc_C28777: ILdRf var_A8
  loc_C2877A: Ary1LdPr
  loc_C2877B: MemLdFPR8 global_44
  loc_C2877E: FLdFPR8 var_C8
  loc_C28781: AddR8
  loc_C28782: CVarR8
  loc_C28786: FLdRfVar var_178
  loc_C28789: ImpAdCallFPR4  = Round(, )
  loc_C2878E: FLdRfVar var_178
  loc_C28791: LitI4 2
  loc_C28796: FLdI2 var_A2
  loc_C28799: CI4UI1
  loc_C2879A: ILdRf var_A8
  loc_C2879D: AryLock
  loc_C287A0: Ary1LdPr
  loc_C287A1: MemLdRfVar from_stack_1.global_36
  loc_C287A4: CVarRef
  loc_C287A9: FLdRfVar var_218
  loc_C287AC: ImpAdCallFPR4  = Round(, )
  loc_C287B1: AryUnlock
  loc_C287B4: FLdRfVar var_218
  loc_C287B7: LeVarBool
  loc_C287B9: FFreeVar var_14C = "": var_178 = ""
  loc_C287C2: BranchF loc_C28B34
  loc_C287C5: LitI4 2
  loc_C287CA: FLdI2 var_A2
  loc_C287CD: CI4UI1
  loc_C287CE: ILdRf var_A8
  loc_C287D1: Ary1LdPr
  loc_C287D2: MemLdFPR8 global_36
  loc_C287D5: LitI2_Byte 1
  loc_C287D7: CR8I2
  loc_C287D8: DivR8
  loc_C287D9: CVarR8
  loc_C287DD: FLdRfVar var_518
  loc_C287E0: ImpAdCallFPR4  = Round(, )
  loc_C287E5: ILdRf var_A0
  loc_C287E8: LitStr "SET @ulcerete=0;"
  loc_C287EB: ConcatStr
  loc_C287EC: FStStrNoPop var_114
  loc_C287EF: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C287F2: ConcatStr
  loc_C287F3: FStStrNoPop var_118
  loc_C287F6: ImpAdLdI2 MemVar_C3D064
  loc_C287F9: CStrUI1
  loc_C287FB: FStStrNoPop var_11C
  loc_C287FE: ConcatStr
  loc_C287FF: FStStrNoPop var_150
  loc_C28802: LitStr " AND retenciones.CodiRete = "
  loc_C28805: ConcatStr
  loc_C28806: CVarStr var_178
  loc_C28809: FLdRfVar var_14C
  loc_C2880C: FLdRfVar var_39C
  loc_C2880F: LitVarStr var_12C, "CodiRete"
  loc_C28814: PopAdLdVar
  loc_C28815: FLdRfVar var_398
  loc_C28818: FLdPr Me
  loc_C2881B: MemLdPr global_60
  loc_C2881E:  = Me.Fields
  loc_C28823: FLdPr var_398
  loc_C28826: from_stack_2 = Me.Item(from_stack_1)
  loc_C2882B: FLdPr var_39C
  loc_C2882E:  = Me.Value
  loc_C28833: FLdRfVar var_14C
  loc_C28836: ConcatVar var_218
  loc_C2883A: LitVarStr var_13C, ";"
  loc_C2883F: ConcatVar var_2A8
  loc_C28843: LitVarStr var_168, " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C28848: ConcatVar var_334
  loc_C2884C: LitVarStr var_1A4, " VALUES ('"
  loc_C28851: ConcatVar var_384
  loc_C28855: ILdRf var_8C
  loc_C28858: CVarStr var_1B4
  loc_C2885B: ConcatVar var_3B4
  loc_C2885F: LitVarStr var_1C4, "',@liqu,"
  loc_C28864: ConcatVar var_3CC
  loc_C28868: FLdI2 var_A2
  loc_C2886B: CI4UI1
  loc_C2886C: ILdRf var_A8
  loc_C2886F: Ary1LdPr
  loc_C28870: MemLdRfVar from_stack_1.global_0
  loc_C28873: LdFixedStr
  loc_C28876: CVarStr var_3DC
  loc_C28879: ConcatVar var_3EC
  loc_C2887D: LitVarStr var_1D8, ","
  loc_C28882: ConcatVar var_404
  loc_C28886: ImpAdLdI2 MemVar_C3D064
  loc_C28889: CVarI2 var_1E8
  loc_C2888C: ConcatVar var_414
  loc_C28890: LitVarStr var_1F8, ","
  loc_C28895: ConcatVar var_424
  loc_C28899: FLdRfVar var_434
  loc_C2889C: FLdRfVar var_3A4
  loc_C2889F: LitVarStr var_208, "CodiRete"
  loc_C288A4: PopAdLdVar
  loc_C288A5: FLdRfVar var_3A0
  loc_C288A8: FLdPr Me
  loc_C288AB: MemLdPr global_60
  loc_C288AE:  = Me.Fields
  loc_C288B3: FLdPr var_3A0
  loc_C288B6: from_stack_2 = Me.Item(from_stack_1)
  loc_C288BB: FLdPr var_3A4
  loc_C288BE:  = Me.Value
  loc_C288C3: FLdRfVar var_434
  loc_C288C6: ConcatVar var_444
  loc_C288CA: LitVarStr var_268, ","
  loc_C288CF: ConcatVar var_454
  loc_C288D3: FLdRfVar var_464
  loc_C288D6: FLdRfVar var_3F4
  loc_C288D9: LitVarStr var_278, "CodiDere"
  loc_C288DE: PopAdLdVar
  loc_C288DF: FLdRfVar var_3F0
  loc_C288E2: FLdRfVar var_3BC
  loc_C288E5: FLdRfVar var_3B8
  loc_C288E8: ImpAdLdRf MemVar_C3D278
  loc_C288EB: NewIfNullPr dlgSeleccionaCategoria
  loc_C288EE: from_stack_1v = dlgSeleccionaCategoria.global_4257148Get()
  loc_C288F3: FLdPr var_3B8
  loc_C288F6: from_stack_1v = clsretenciones.RsFrmGet()
  loc_C288FB: FLdPr var_3BC
  loc_C288FE:  = Me.Fields
  loc_C28903: FLdPr var_3F0
  loc_C28906: from_stack_2 = Me.Item(from_stack_1)
  loc_C2890B: FLdPr var_3F4
  loc_C2890E:  = Me.Value
  loc_C28913: FLdRfVar var_464
  loc_C28916: ConcatVar var_474
  loc_C2891A: LitVarStr var_288, ",1,'"
  loc_C2891F: ConcatVar var_48C
  loc_C28923: ImpAdLdI2 MemVar_C3D064
  loc_C28926: CVarI2 var_298
  loc_C28929: ConcatVar var_49C
  loc_C2892D: LitVarStr var_2D4, "-01-01','"
  loc_C28932: ConcatVar var_4AC
  loc_C28936: FLdRfVar var_4C4
  loc_C28939: FLdRfVar var_47C
  loc_C2893C: LitVarStr var_2E4, "CodiCuco"
  loc_C28941: PopAdLdVar
  loc_C28942: FLdRfVar var_478
  loc_C28945: FLdPr Me
  loc_C28948: MemLdPr global_56
  loc_C2894B:  = Me.Fields
  loc_C28950: FLdPr var_478
  loc_C28953: from_stack_2 = Me.Item(from_stack_1)
  loc_C28958: FLdPr var_47C
  loc_C2895B:  = Me.Value
  loc_C28960: FLdRfVar var_4C4
  loc_C28963: ConcatVar var_4D4
  loc_C28967: LitVarStr var_2F4, "',0,"
  loc_C2896C: ConcatVar var_4E4
  loc_C28970: LitI4 0
  loc_C28975: LitI4 -1
  loc_C2897A: LitI4 1
  loc_C2897F: LitStr "."
  loc_C28982: LitStr ","
  loc_C28985: FLdRfVar var_518
  loc_C28988: CStrVarVal var_154
  loc_C2898C: ImpAdCallI2 Replace(, , , , , )
  loc_C28991: CVarStr var_528
  loc_C28994: ConcatVar var_538
  loc_C28998: LitVarStr var_314, ","
  loc_C2899D: ConcatVar var_548
  loc_C289A1: LitI4 0
  loc_C289A6: LitI4 -1
  loc_C289AB: LitI4 1
  loc_C289B0: LitStr "."
  loc_C289B3: LitStr ","
  loc_C289B6: FLdFPR8 var_C8
  loc_C289B9: CStrR8
  loc_C289BB: FStStrNoPop var_158
  loc_C289BE: ImpAdCallI2 Replace(, , , , , )
  loc_C289C3: CVarStr var_558
  loc_C289C6: ConcatVar var_570
  loc_C289CA: LitVarStr var_324, " ,@ulcerete,"
  loc_C289CF: ConcatVar var_580
  loc_C289D3: LitI4 0
  loc_C289D8: LitI4 -1
  loc_C289DD: LitI4 1
  loc_C289E2: LitStr "."
  loc_C289E5: LitStr ","
  loc_C289E8: FLdFPR8 var_B8
  loc_C289EB: CStrR8
  loc_C289ED: FStStrNoPop var_17C
  loc_C289F0: ImpAdCallI2 Replace(, , , , , )
  loc_C289F5: CVarStr var_590
  loc_C289F8: ConcatVar var_5A0
  loc_C289FC: LitVarStr var_344, ","
  loc_C28A01: ConcatVar var_5B0
  loc_C28A05: LitI4 0
  loc_C28A0A: LitI4 -1
  loc_C28A0F: LitI4 1
  loc_C28A14: LitStr "."
  loc_C28A17: LitStr ","
  loc_C28A1A: FLdFPR8 var_C0
  loc_C28A1D: CStrR8
  loc_C28A1F: FStStrNoPop var_180
  loc_C28A22: ImpAdCallI2 Replace(, , , , , )
  loc_C28A27: CVarStr var_5C0
  loc_C28A2A: ConcatVar var_5D0
  loc_C28A2E: LitVarStr var_354, ");"
  loc_C28A33: ConcatVar var_5E0
  loc_C28A37: LitVarStr var_364, " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C28A3C: ConcatVar var_5F0
  loc_C28A40: ImpAdLdI2 MemVar_C3D064
  loc_C28A43: CVarI2 var_374
  loc_C28A46: ConcatVar var_600
  loc_C28A4A: LitVarStr var_630, " AND retenciones.CodiRete = "
  loc_C28A4F: ConcatVar var_610
  loc_C28A53: FLdRfVar var_620
  loc_C28A56: FLdRfVar var_4B4
  loc_C28A59: LitVarStr var_670, "CodiRete"
  loc_C28A5E: PopAdLdVar
  loc_C28A5F: FLdRfVar var_4B0
  loc_C28A62: FLdPr Me
  loc_C28A65: MemLdPr global_60
  loc_C28A68:  = Me.Fields
  loc_C28A6D: FLdPr var_4B0
  loc_C28A70: from_stack_2 = Me.Item(from_stack_1)
  loc_C28A75: FLdPr var_4B4
  loc_C28A78:  = Me.Value
  loc_C28A7D: FLdRfVar var_620
  loc_C28A80: ConcatVar var_640
  loc_C28A84: LitVarStr var_6B0, ";"
  loc_C28A89: ConcatVar var_650
  loc_C28A8D: CStrVarTmp
  loc_C28A8E: FStStr var_A0
  loc_C28A91: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = ""
  loc_C28AA4: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C28ABF: FFreeVar var_570 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_620 = "": var_640 = "": var_650 = "": var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = "": var_508 = "": var_518 = "": var_4E4 = "": var_528 = "": var_538 = "": var_548 = ""
  loc_C28B1A: FLdI2 var_A2
  loc_C28B1D: CI4UI1
  loc_C28B1E: ILdRf var_A8
  loc_C28B21: Ary1LdPr
  loc_C28B22: MemLdFPR8 global_44
  loc_C28B25: FLdFPR8 var_C8
  loc_C28B28: AddR8
  loc_C28B29: FLdI2 var_A2
  loc_C28B2C: CI4UI1
  loc_C28B2D: ILdRf var_A8
  loc_C28B30: Ary1LdPr
  loc_C28B31: MemStFPR8 global_44
  loc_C28B34: FLdPr Me
  loc_C28B37: MemLdPr global_56
  loc_C28B3A: Me.MoveNext
  loc_C28B3F: Branch loc_C22A51
  loc_C28B42: Branch loc_C28B61
  loc_C28B45: FLdI2 var_A2
  loc_C28B48: CI4UI1
  loc_C28B49: ILdRf var_A8
  loc_C28B4C: Ary1LdPr
  loc_C28B4D: MemLdRfVar from_stack_1.global_28
  loc_C28B50: LdFixedStr
  loc_C28B53: FStStrNoPop var_114
  loc_C28B56: LitStr "s/f"
  loc_C28B59: NeStr
  loc_C28B5B: FFree1Str var_114
  loc_C28B5E: BranchF loc_C28B61
  loc_C28B61: FLdRfVar var_A2
  loc_C28B64: NextI2 var_38C, loc_C229C2
  loc_C28B69: Branch loc_C29833
  loc_C28B6C: ILdRf var_388
  loc_C28B6F: LitStr "frmLiquidaciondeFondos"
  loc_C28B72: EqStr
  loc_C28B74: BranchF loc_C28E1F
  loc_C28B77: FLdRfVar var_392
  loc_C28B7A: ImpAdLdRf MemVar_C3D28C
  loc_C28B7D: NewIfNullPr frmLiquidaciondeFondos
  loc_C28B80: VCallAd Control_ID_
  loc_C28B83: FStAdFunc var_398
  loc_C28B86: FLdPr var_398
  loc_C28B89:  = frmLiquidaciondeFondos.ComboBox.ListIndex
  loc_C28B8E: FLdRfVar var_114
  loc_C28B91: FLdI2 var_392
  loc_C28B94: ImpAdLdRf MemVar_C3D28C
  loc_C28B97: NewIfNullPr frmLiquidaciondeFondos
  loc_C28B9A: VCallAd Control_ID_
  loc_C28B9D: FStAdFunc var_39C
  loc_C28BA0: FLdPr var_39C
  loc_C28BA3: from_stack_2 = frmLiquidaciondeFondos.ComboBox.List(from_stack_1)
  loc_C28BA8: FLdRfVar var_4F6
  loc_C28BAB: ImpAdLdRf MemVar_C3D28C
  loc_C28BAE: NewIfNullPr frmLiquidaciondeFondos
  loc_C28BB1: VCallAd Control_ID_
  loc_C28BB4: FStAdFunc var_3A0
  loc_C28BB7: FLdPr var_3A0
  loc_C28BBA:  = frmLiquidaciondeFondos.ComboBox.ListIndex
  loc_C28BBF: LitI4 1
  loc_C28BC4: FLdRfVar var_118
  loc_C28BC7: FLdI2 var_4F6
  loc_C28BCA: ImpAdLdRf MemVar_C3D28C
  loc_C28BCD: NewIfNullPr frmLiquidaciondeFondos
  loc_C28BD0: VCallAd Control_ID_
  loc_C28BD3: FStAdFunc var_3A4
  loc_C28BD6: FLdPr var_3A4
  loc_C28BD9: from_stack_2 = frmLiquidaciondeFondos.ComboBox.List(from_stack_1)
  loc_C28BDE: ILdRf var_118
  loc_C28BE1: LitStr "-"
  loc_C28BE4: LitI4 0
  loc_C28BE9: FnInStr4
  loc_C28BEB: LitI4 2
  loc_C28BF0: SubI4
  loc_C28BF1: FLdZeroAd var_114
  loc_C28BF4: CVarStr var_14C
  loc_C28BF7: FLdRfVar var_178
  loc_C28BFA: ImpAdCallFPR4  = Left(, )
  loc_C28BFF: FLdRfVar var_178
  loc_C28C02: CStrVarTmp
  loc_C28C03: FStStr var_844
  loc_C28C06: FFree1Str var_118
  loc_C28C09: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C28C14: FFreeVar var_14C = ""
  loc_C28C1B: LitI2_Byte 1
  loc_C28C1D: FLdRfVar var_A2
  loc_C28C20: ILdRf var_A8
  loc_C28C23: LitI2_Byte 1
  loc_C28C25: FnUBound
  loc_C28C27: CI2I4
  loc_C28C28: ForI2 var_848
  loc_C28C2E: LitI4 2
  loc_C28C33: FLdI2 var_A2
  loc_C28C36: CI4UI1
  loc_C28C37: ILdRf var_A8
  loc_C28C3A: Ary1LdPr
  loc_C28C3B: MemLdFPR8 global_36
  loc_C28C3E: LitI2_Byte 1
  loc_C28C40: CR8I2
  loc_C28C41: DivR8
  loc_C28C42: CVarR8
  loc_C28C46: FLdRfVar var_178
  loc_C28C49: ImpAdCallFPR4  = Round(, )
  loc_C28C4E: ILdRf var_A0
  loc_C28C51: LitStr "INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C28C54: ConcatStr
  loc_C28C55: FStStrNoPop var_114
  loc_C28C58: LitStr " VALUES ('"
  loc_C28C5B: ConcatStr
  loc_C28C5C: FStStrNoPop var_118
  loc_C28C5F: ILdRf var_8C
  loc_C28C62: ConcatStr
  loc_C28C63: FStStrNoPop var_11C
  loc_C28C66: LitStr "',@liqu,"
  loc_C28C69: ConcatStr
  loc_C28C6A: FStStrNoPop var_150
  loc_C28C6D: FLdI2 var_A2
  loc_C28C70: CI4UI1
  loc_C28C71: ILdRf var_A8
  loc_C28C74: Ary1LdPr
  loc_C28C75: MemLdRfVar from_stack_1.global_0
  loc_C28C78: LdFixedStr
  loc_C28C7B: FStStrNoPop var_154
  loc_C28C7E: ConcatStr
  loc_C28C7F: FStStrNoPop var_158
  loc_C28C82: LitStr ","
  loc_C28C85: ConcatStr
  loc_C28C86: FStStrNoPop var_17C
  loc_C28C89: ImpAdLdI2 MemVar_C3D064
  loc_C28C8C: CStrUI1
  loc_C28C8E: FStStrNoPop var_180
  loc_C28C91: ConcatStr
  loc_C28C92: FStStrNoPop var_184
  loc_C28C95: LitStr ","
  loc_C28C98: ConcatStr
  loc_C28C99: FStStrNoPop var_188
  loc_C28C9C: LitI2_Byte 4
  loc_C28C9E: CStrI2
  loc_C28CA0: FStStrNoPop var_18C
  loc_C28CA3: ConcatStr
  loc_C28CA4: FStStrNoPop var_190
  loc_C28CA7: LitStr ",1,1,'"
  loc_C28CAA: ConcatStr
  loc_C28CAB: FStStrNoPop var_1C8
  loc_C28CAE: ImpAdLdI2 MemVar_C3D064
  loc_C28CB1: CStrUI1
  loc_C28CB3: FStStrNoPop var_21C
  loc_C28CB6: ConcatStr
  loc_C28CB7: FStStrNoPop var_220
  loc_C28CBA: LitStr "-01-01','"
  loc_C28CBD: ConcatStr
  loc_C28CBE: FStStrNoPop var_224
  loc_C28CC1: ILdRf var_844
  loc_C28CC4: ConcatStr
  loc_C28CC5: FStStrNoPop var_228
  loc_C28CC8: LitStr "',0,"
  loc_C28CCB: ConcatStr
  loc_C28CCC: FStStrNoPop var_230
  loc_C28CCF: LitI4 0
  loc_C28CD4: LitI4 -1
  loc_C28CD9: LitI4 1
  loc_C28CDE: LitStr "."
  loc_C28CE1: LitStr ","
  loc_C28CE4: FLdRfVar var_178
  loc_C28CE7: CStrVarVal var_22C
  loc_C28CEB: ImpAdCallI2 Replace(, , , , , )
  loc_C28CF0: FStStrNoPop var_234
  loc_C28CF3: ConcatStr
  loc_C28CF4: FStStrNoPop var_238
  loc_C28CF7: LitStr ","
  loc_C28CFA: ConcatStr
  loc_C28CFB: FStStrNoPop var_240
  loc_C28CFE: LitI4 0
  loc_C28D03: LitI4 -1
  loc_C28D08: LitI4 1
  loc_C28D0D: LitStr "."
  loc_C28D10: LitStr ","
  loc_C28D13: FLdI2 var_A2
  loc_C28D16: CI4UI1
  loc_C28D17: ILdRf var_A8
  loc_C28D1A: Ary1LdPr
  loc_C28D1B: MemLdFPR8 global_36
  loc_C28D1E: CStrR8
  loc_C28D20: FStStrNoPop var_23C
  loc_C28D23: ImpAdCallI2 Replace(, , , , , )
  loc_C28D28: FStStrNoPop var_244
  loc_C28D2B: ConcatStr
  loc_C28D2C: FStStrNoPop var_248
  loc_C28D2F: LitStr " ,1,"
  loc_C28D32: ConcatStr
  loc_C28D33: FStStrNoPop var_250
  loc_C28D36: LitI4 0
  loc_C28D3B: LitI4 -1
  loc_C28D40: LitI4 1
  loc_C28D45: LitStr "."
  loc_C28D48: LitStr ","
  loc_C28D4B: FLdI2 var_A2
  loc_C28D4E: CI4UI1
  loc_C28D4F: ILdRf var_A8
  loc_C28D52: Ary1LdPr
  loc_C28D53: MemLdFPR8 global_36
  loc_C28D56: CStrR8
  loc_C28D58: FStStrNoPop var_24C
  loc_C28D5B: ImpAdCallI2 Replace(, , , , , )
  loc_C28D60: FStStrNoPop var_254
  loc_C28D63: ConcatStr
  loc_C28D64: FStStrNoPop var_258
  loc_C28D67: LitStr ","
  loc_C28D6A: ConcatStr
  loc_C28D6B: FStStrNoPop var_2B0
  loc_C28D6E: LitI4 0
  loc_C28D73: LitI4 -1
  loc_C28D78: LitI4 1
  loc_C28D7D: LitStr "."
  loc_C28D80: LitStr ","
  loc_C28D83: FLdI2 var_A2
  loc_C28D86: CI4UI1
  loc_C28D87: ILdRf var_A8
  loc_C28D8A: Ary1LdPr
  loc_C28D8B: MemLdFPR8 global_36
  loc_C28D8E: CStrR8
  loc_C28D90: FStStrNoPop var_2AC
  loc_C28D93: ImpAdCallI2 Replace(, , , , , )
  loc_C28D98: FStStrNoPop var_2B4
  loc_C28D9B: ConcatStr
  loc_C28D9C: FStStrNoPop var_2B8
  loc_C28D9F: LitStr ");"
  loc_C28DA2: ConcatStr
  loc_C28DA3: FStStr var_A0
  loc_C28DA6: FFreeStr var_2B0 = "": var_2B4 = "": var_2B8 = "": var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = ""
  loc_C28DEB: FFreeVar var_14C = ""
  loc_C28DF2: FLdI2 var_A2
  loc_C28DF5: CI4UI1
  loc_C28DF6: ILdRf var_A8
  loc_C28DF9: Ary1LdPr
  loc_C28DFA: MemLdFPR8 global_44
  loc_C28DFD: FLdI2 var_A2
  loc_C28E00: CI4UI1
  loc_C28E01: ILdRf var_A8
  loc_C28E04: Ary1LdPr
  loc_C28E05: MemLdFPR8 global_36
  loc_C28E08: AddR8
  loc_C28E09: FLdI2 var_A2
  loc_C28E0C: CI4UI1
  loc_C28E0D: ILdRf var_A8
  loc_C28E10: Ary1LdPr
  loc_C28E11: MemStFPR8 global_44
  loc_C28E14: FLdRfVar var_A2
  loc_C28E17: NextI2 var_848, loc_C28C2E
  loc_C28E1C: Branch loc_C29833
  loc_C28E1F: ILdRf var_388
  loc_C28E22: LitStr "frmLiquidaciondeImportesFijos"
  loc_C28E25: EqStr
  loc_C28E27: BranchF loc_C29833
  loc_C28E2A: LitVar_Missing var_13C
  loc_C28E2D: PopAdLdVar
  loc_C28E2E: LitVarI4
  loc_C28E36: PopAdLdVar
  loc_C28E37: ImpAdLdRf MemVar_C3D2A0
  loc_C28E3A: NewIfNullPr dlgSelRetencionesImfi
  loc_C28E3D: dlgSelRetencionesImfi.Show from_stack_1, from_stack_2
  loc_C28E42: FLdRfVar var_390
  loc_C28E45: FLdRfVar var_398
  loc_C28E48: ImpAdLdRf MemVar_C3D2A0
  loc_C28E4B: NewIfNullPr dlgSelRetencionesImfi
  loc_C28E4E: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C28E53: FLdPr var_398
  loc_C28E56: from_stack_1 = clsbase.RecordCount
  loc_C28E5B: ILdRf var_390
  loc_C28E5E: LitI4 0
  loc_C28E63: GtI4
  loc_C28E64: FFree1Ad var_398
  loc_C28E67: BranchF loc_C29826
  loc_C28E6A: LitI2_Byte 1
  loc_C28E6C: FLdRfVar var_A2
  loc_C28E6F: ILdRf var_A8
  loc_C28E72: LitI2_Byte 1
  loc_C28E74: FnUBound
  loc_C28E76: CI2I4
  loc_C28E77: ForI2 var_84C
  loc_C28E7D: FLdRfVar var_398
  loc_C28E80: ImpAdLdRf MemVar_C3D2A0
  loc_C28E83: NewIfNullPr dlgSelRetencionesImfi
  loc_C28E86: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C28E8B: FLdPr var_398
  loc_C28E8E: Call clsbase.MoveFirst()
  loc_C28E93: FFree1Ad var_398
  loc_C28E96: FLdRfVar var_392
  loc_C28E99: FLdRfVar var_398
  loc_C28E9C: ImpAdLdRf MemVar_C3D2A0
  loc_C28E9F: NewIfNullPr dlgSelRetencionesImfi
  loc_C28EA2: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C28EA7: FLdPr var_398
  loc_C28EAA: from_stack_1 = clsbase.EOF
  loc_C28EAF: FLdI2 var_392
  loc_C28EB2: NotI4
  loc_C28EB3: FFree1Ad var_398
  loc_C28EB6: BranchF loc_C2981B
  loc_C28EB9: ILdRf var_A0
  loc_C28EBC: LitStr "INSERT IGNORE INTO liquidarete"
  loc_C28EBF: ConcatStr
  loc_C28EC0: FStStrNoPop var_114
  loc_C28EC3: LitStr " VALUES ('"
  loc_C28EC6: ConcatStr
  loc_C28EC7: FStStrNoPop var_118
  loc_C28ECA: ILdRf var_8C
  loc_C28ECD: ConcatStr
  loc_C28ECE: FStStrNoPop var_11C
  loc_C28ED1: LitStr "',@liqu,"
  loc_C28ED4: ConcatStr
  loc_C28ED5: FStStrNoPop var_150
  loc_C28ED8: FLdI2 var_A2
  loc_C28EDB: CI4UI1
  loc_C28EDC: ILdRf var_A8
  loc_C28EDF: Ary1LdPr
  loc_C28EE0: MemLdRfVar from_stack_1.global_0
  loc_C28EE3: LdFixedStr
  loc_C28EE6: FStStrNoPop var_154
  loc_C28EE9: ConcatStr
  loc_C28EEA: FStStrNoPop var_158
  loc_C28EED: LitStr ","
  loc_C28EF0: ConcatStr
  loc_C28EF1: CVarStr var_178
  loc_C28EF4: FLdRfVar var_14C
  loc_C28EF7: FLdRfVar var_3A4
  loc_C28EFA: LitVarStr var_12C, "CodiRete"
  loc_C28EFF: PopAdLdVar
  loc_C28F00: FLdRfVar var_3A0
  loc_C28F03: FLdRfVar var_39C
  loc_C28F06: FLdRfVar var_398
  loc_C28F09: ImpAdLdRf MemVar_C3D2A0
  loc_C28F0C: NewIfNullPr dlgSelRetencionesImfi
  loc_C28F0F: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C28F14: FLdPr var_398
  loc_C28F17: from_stack_1v = clsbase.RsFrmGet()
  loc_C28F1C: FLdPr var_39C
  loc_C28F1F:  = Me.Fields
  loc_C28F24: FLdPr var_3A0
  loc_C28F27: from_stack_2 = Me.Item(from_stack_1)
  loc_C28F2C: FLdPr var_3A4
  loc_C28F2F:  = Me.Value
  loc_C28F34: FLdRfVar var_14C
  loc_C28F37: ConcatVar var_218
  loc_C28F3B: LitVarStr var_13C, ","
  loc_C28F40: ConcatVar var_2A8
  loc_C28F44: FLdRfVar var_334
  loc_C28F47: FLdRfVar var_3F4
  loc_C28F4A: LitVarStr var_168, "CodiDere"
  loc_C28F4F: PopAdLdVar
  loc_C28F50: FLdRfVar var_3F0
  loc_C28F53: FLdRfVar var_3BC
  loc_C28F56: FLdRfVar var_3B8
  loc_C28F59: ImpAdLdRf MemVar_C3D2A0
  loc_C28F5C: NewIfNullPr dlgSelRetencionesImfi
  loc_C28F5F: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C28F64: FLdPr var_3B8
  loc_C28F67: from_stack_1v = clsbase.RsFrmGet()
  loc_C28F6C: FLdPr var_3BC
  loc_C28F6F:  = Me.Fields
  loc_C28F74: FLdPr var_3F0
  loc_C28F77: from_stack_2 = Me.Item(from_stack_1)
  loc_C28F7C: FLdPr var_3F4
  loc_C28F7F:  = Me.Value
  loc_C28F84: FLdRfVar var_334
  loc_C28F87: ConcatVar var_384
  loc_C28F8B: LitVarStr var_1A4, ","
  loc_C28F90: ConcatVar var_3B4
  loc_C28F94: ImpAdLdI2 MemVar_C3D064
  loc_C28F97: CVarI2 var_1B4
  loc_C28F9A: ConcatVar var_3CC
  loc_C28F9E: LitVarStr var_1C4, ");"
  loc_C28FA3: ConcatVar var_3DC
  loc_C28FA7: CStrVarTmp
  loc_C28FA8: FStStr var_A0
  loc_C28FAB: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = ""
  loc_C28FBA: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = ""
  loc_C28FCD: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = ""
  loc_C28FE2: FLdI2 var_A2
  loc_C28FE5: CI4UI1
  loc_C28FE6: ILdRf var_A8
  loc_C28FE9: Ary1LdPr
  loc_C28FEA: MemLdRfVar from_stack_1.global_0
  loc_C28FED: LdFixedStr
  loc_C28FF0: FStStrNoPop var_114
  loc_C28FF3: LitStr " - "
  loc_C28FF6: ConcatStr
  loc_C28FF7: FStStrNoPop var_118
  loc_C28FFA: FLdI2 var_A2
  loc_C28FFD: CI4UI1
  loc_C28FFE: ILdRf var_A8
  loc_C29001: Ary1LdPr
  loc_C29002: MemLdStr global_24
  loc_C29005: ConcatStr
  loc_C29006: FStStrNoPop var_11C
  loc_C29009: ImpAdLdRf MemVar_C3D264
  loc_C2900C: NewIfNullPr dlgImporteFijo
  loc_C2900F: VCallAd Control_ID_
  loc_C29012: FStAdFunc var_398
  loc_C29015: FLdPr var_398
  loc_C29018: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C2901D: FFreeStr var_114 = "": var_118 = ""
  loc_C29026: FFree1Ad var_398
  loc_C29029: FLdRfVar var_14C
  loc_C2902C: FLdRfVar var_3A4
  loc_C2902F: LitVarStr var_12C, "CodiRete"
  loc_C29034: PopAdLdVar
  loc_C29035: FLdRfVar var_3A0
  loc_C29038: FLdRfVar var_39C
  loc_C2903B: FLdRfVar var_398
  loc_C2903E: ImpAdLdRf MemVar_C3D2A0
  loc_C29041: NewIfNullPr dlgSelRetencionesImfi
  loc_C29044: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29049: FLdPr var_398
  loc_C2904C: from_stack_1v = clsbase.RsFrmGet()
  loc_C29051: FLdPr var_39C
  loc_C29054:  = Me.Fields
  loc_C29059: FLdPr var_3A0
  loc_C2905C: from_stack_2 = Me.Item(from_stack_1)
  loc_C29061: FLdPr var_3A4
  loc_C29064:  = Me.Value
  loc_C29069: FLdRfVar var_14C
  loc_C2906C: LitVarStr var_13C, " - "
  loc_C29071: ConcatVar var_178
  loc_C29075: FLdRfVar var_218
  loc_C29078: FLdRfVar var_3F4
  loc_C2907B: LitVarStr var_168, "DetaRete"
  loc_C29080: PopAdLdVar
  loc_C29081: FLdRfVar var_3F0
  loc_C29084: FLdRfVar var_3BC
  loc_C29087: FLdRfVar var_3B8
  loc_C2908A: ImpAdLdRf MemVar_C3D2A0
  loc_C2908D: NewIfNullPr dlgSelRetencionesImfi
  loc_C29090: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29095: FLdPr var_3B8
  loc_C29098: from_stack_1v = clsbase.RsFrmGet()
  loc_C2909D: FLdPr var_3BC
  loc_C290A0:  = Me.Fields
  loc_C290A5: FLdPr var_3F0
  loc_C290A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C290AD: FLdPr var_3F4
  loc_C290B0:  = Me.Value
  loc_C290B5: FLdRfVar var_218
  loc_C290B8: ConcatVar var_2A8
  loc_C290BC: LitVarStr var_1A4, " - ("
  loc_C290C1: ConcatVar var_334
  loc_C290C5: FLdRfVar var_384
  loc_C290C8: FLdRfVar var_4B4
  loc_C290CB: LitVarStr var_1B4, "CodiDere"
  loc_C290D0: PopAdLdVar
  loc_C290D1: FLdRfVar var_4B0
  loc_C290D4: FLdRfVar var_47C
  loc_C290D7: FLdRfVar var_478
  loc_C290DA: ImpAdLdRf MemVar_C3D2A0
  loc_C290DD: NewIfNullPr dlgSelRetencionesImfi
  loc_C290E0: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C290E5: FLdPr var_478
  loc_C290E8: from_stack_1v = clsbase.RsFrmGet()
  loc_C290ED: FLdPr var_47C
  loc_C290F0:  = Me.Fields
  loc_C290F5: FLdPr var_4B0
  loc_C290F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C290FD: FLdPr var_4B4
  loc_C29100:  = Me.Value
  loc_C29105: FLdRfVar var_384
  loc_C29108: ConcatVar var_3B4
  loc_C2910C: LitVarStr var_1C4, ")"
  loc_C29111: ConcatVar var_3CC
  loc_C29115: CStrVarVal var_114
  loc_C29119: ImpAdLdRf MemVar_C3D264
  loc_C2911C: NewIfNullPr dlgImporteFijo
  loc_C2911F: VCallAd Control_ID_
  loc_C29122: FStAdFunc var_55C
  loc_C29125: FLdPr var_55C
  loc_C29128: dlgImporteFijo.Label.Caption = from_stack_1
  loc_C2912D: FFree1Str var_114
  loc_C29130: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = "": var_4B4 = ""
  loc_C2914D: FFreeVar var_14C = "": var_178 = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = ""
  loc_C29160: FLdI2 var_A2
  loc_C29163: CI4UI1
  loc_C29164: ILdRf var_A8
  loc_C29167: Ary1LdPr
  loc_C29168: MemLdR8 global_36
  loc_C2916B: ImpAdLdRf MemVar_C3D264
  loc_C2916E: NewIfNullPr dlgImporteFijo
  loc_C29171: Call dlgImporteFijo.doBaseImponiblePut(from_stack_1v)
  loc_C29176: FLdI2 var_A2
  loc_C29179: CI4UI1
  loc_C2917A: ILdRf var_A8
  loc_C2917D: Ary1LdPr
  loc_C2917E: MemLdFPR8 global_36
  loc_C29181: CStrR8
  loc_C29183: FStStrNoPop var_114
  loc_C29186: ImpAdLdRf MemVar_C3D264
  loc_C29189: NewIfNullPr dlgImporteFijo
  loc_C2918C: VCallAd Control_ID_
  loc_C2918F: FStAdFunc var_398
  loc_C29192: FLdPr var_398
  loc_C29195: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C2919A: FFree1Str var_114
  loc_C2919D: FFree1Ad var_398
  loc_C291A0: LitI2_Byte 0
  loc_C291A2: CR8I2
  loc_C291A3: PopFPR8
  loc_C291A4: ImpAdLdRf MemVar_C3D264
  loc_C291A7: NewIfNullPr dlgImporteFijo
  loc_C291AA: Call dlgImporteFijo.doImporteFijoPut(from_stack_1v)
  loc_C291AF: LitStr "0"
  loc_C291B2: ImpAdLdRf MemVar_C3D264
  loc_C291B5: NewIfNullPr dlgImporteFijo
  loc_C291B8: VCallAd Control_ID_
  loc_C291BB: FStAdFunc var_398
  loc_C291BE: FLdPr var_398
  loc_C291C1: dlgImporteFijo.TextBox.Text = from_stack_1
  loc_C291C6: FFree1Ad var_398
  loc_C291C9: LitVar_Missing var_13C
  loc_C291CC: PopAdLdVar
  loc_C291CD: LitVarI4
  loc_C291D5: PopAdLdVar
  loc_C291D6: ImpAdLdRf MemVar_C3D264
  loc_C291D9: NewIfNullPr dlgImporteFijo
  loc_C291DC: dlgImporteFijo.Show from_stack_1, from_stack_2
  loc_C291E1: FLdRfVar var_4EC
  loc_C291E4: ImpAdLdRf MemVar_C3D264
  loc_C291E7: NewIfNullPr dlgImporteFijo
  loc_C291EA: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C291EF: FLdFPR8 var_4EC
  loc_C291F2: FnCDblR8
  loc_C291F4: LitI2_Byte 0
  loc_C291F6: CR8I2
  loc_C291F7: GtR4
  loc_C291F8: BranchF loc_C297FF
  loc_C291FB: FLdRfVar var_4EC
  loc_C291FE: ImpAdLdRf MemVar_C3D264
  loc_C29201: NewIfNullPr dlgImporteFijo
  loc_C29204: from_stack_1v = dlgImporteFijo.doImporteFijoGet()
  loc_C29209: FLdFPR8 var_4EC
  loc_C2920C: FStFPR8 var_C8
  loc_C2920F: FLdFPR8 var_C8
  loc_C29212: CVarR8
  loc_C29216: HardType
  loc_C29217: LitI4 2
  loc_C2921C: FLdI2 var_A2
  loc_C2921F: CI4UI1
  loc_C29220: ILdRf var_A8
  loc_C29223: AryLock
  loc_C29226: Ary1LdPr
  loc_C29227: MemLdRfVar from_stack_1.global_36
  loc_C2922A: CVarRef
  loc_C2922F: FLdRfVar var_14C
  loc_C29232: ImpAdCallFPR4  = Round(, )
  loc_C29237: AryUnlock
  loc_C2923A: FLdRfVar var_14C
  loc_C2923D: GtVarBool
  loc_C2923F: FFree1Var var_14C = ""
  loc_C29242: BranchF loc_C292D4
  loc_C29245: LitI4 0
  loc_C2924A: LitStr "La Retención es mayor al importe devengado."
  loc_C2924D: LitStr vbCrLf
  loc_C29250: ConcatStr
  loc_C29251: FStStrNoPop var_114
  loc_C29254: LitStr "No se realizará ninguna Retención para "
  loc_C29257: ConcatStr
  loc_C29258: CVarStr var_178
  loc_C2925B: FLdRfVar var_14C
  loc_C2925E: FLdRfVar var_3A4
  loc_C29261: LitVarStr var_12C, "DetaDere"
  loc_C29266: PopAdLdVar
  loc_C29267: FLdRfVar var_3A0
  loc_C2926A: FLdRfVar var_39C
  loc_C2926D: FLdRfVar var_398
  loc_C29270: ImpAdLdRf MemVar_C3D2A0
  loc_C29273: NewIfNullPr dlgSelRetencionesImfi
  loc_C29276: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C2927B: FLdPr var_398
  loc_C2927E: from_stack_1v = clsbase.RsFrmGet()
  loc_C29283: FLdPr var_39C
  loc_C29286:  = Me.Fields
  loc_C2928B: FLdPr var_3A0
  loc_C2928E: from_stack_2 = Me.Item(from_stack_1)
  loc_C29293: FLdPr var_3A4
  loc_C29296:  = Me.Value
  loc_C2929B: FLdRfVar var_14C
  loc_C2929E: ConcatVar var_218
  loc_C292A2: LitVarStr var_13C, ". Verifique..."
  loc_C292A7: ConcatVar var_2A8
  loc_C292AB: CStrVarVal var_118
  loc_C292AF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C292B4: FFreeStr var_114 = ""
  loc_C292BB: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C292C6: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C292D1: Branch loc_C297FF
  loc_C292D4: LitI4 2
  loc_C292D9: FLdI2 var_A2
  loc_C292DC: CI4UI1
  loc_C292DD: ILdRf var_A8
  loc_C292E0: Ary1LdPr
  loc_C292E1: MemLdFPR8 global_44
  loc_C292E4: FLdFPR8 var_C8
  loc_C292E7: AddR8
  loc_C292E8: CVarR8
  loc_C292EC: FLdRfVar var_178
  loc_C292EF: ImpAdCallFPR4  = Round(, )
  loc_C292F4: FLdRfVar var_178
  loc_C292F7: LitI4 2
  loc_C292FC: FLdI2 var_A2
  loc_C292FF: CI4UI1
  loc_C29300: ILdRf var_A8
  loc_C29303: AryLock
  loc_C29306: Ary1LdPr
  loc_C29307: MemLdRfVar from_stack_1.global_36
  loc_C2930A: CVarRef
  loc_C2930F: FLdRfVar var_218
  loc_C29312: ImpAdCallFPR4  = Round(, )
  loc_C29317: AryUnlock
  loc_C2931A: FLdRfVar var_218
  loc_C2931D: GtVarBool
  loc_C2931F: FFreeVar var_14C = "": var_178 = ""
  loc_C29328: BranchF loc_C293BA
  loc_C2932B: LitI4 0
  loc_C29330: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C29333: LitStr vbCrLf
  loc_C29336: ConcatStr
  loc_C29337: FStStrNoPop var_114
  loc_C2933A: LitStr "No se realizará ninguna Retención de "
  loc_C2933D: ConcatStr
  loc_C2933E: CVarStr var_178
  loc_C29341: FLdRfVar var_14C
  loc_C29344: FLdRfVar var_3A4
  loc_C29347: LitVarStr var_12C, "DetaDere"
  loc_C2934C: PopAdLdVar
  loc_C2934D: FLdRfVar var_3A0
  loc_C29350: FLdRfVar var_39C
  loc_C29353: FLdRfVar var_398
  loc_C29356: ImpAdLdRf MemVar_C3D2A0
  loc_C29359: NewIfNullPr dlgSelRetencionesImfi
  loc_C2935C: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29361: FLdPr var_398
  loc_C29364: from_stack_1v = clsbase.RsFrmGet()
  loc_C29369: FLdPr var_39C
  loc_C2936C:  = Me.Fields
  loc_C29371: FLdPr var_3A0
  loc_C29374: from_stack_2 = Me.Item(from_stack_1)
  loc_C29379: FLdPr var_3A4
  loc_C2937C:  = Me.Value
  loc_C29381: FLdRfVar var_14C
  loc_C29384: ConcatVar var_218
  loc_C29388: LitVarStr var_13C, ". Verifique..."
  loc_C2938D: ConcatVar var_2A8
  loc_C29391: CStrVarVal var_118
  loc_C29395: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2939A: FFreeStr var_114 = ""
  loc_C293A1: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C293AC: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C293B7: Branch loc_C297FF
  loc_C293BA: LitI4 2
  loc_C293BF: FLdI2 var_A2
  loc_C293C2: CI4UI1
  loc_C293C3: ILdRf var_A8
  loc_C293C6: Ary1LdPr
  loc_C293C7: MemLdFPR8 global_44
  loc_C293CA: FLdFPR8 var_C8
  loc_C293CD: AddR8
  loc_C293CE: CVarR8
  loc_C293D2: FLdRfVar var_178
  loc_C293D5: ImpAdCallFPR4  = Round(, )
  loc_C293DA: FLdRfVar var_178
  loc_C293DD: LitI4 2
  loc_C293E2: FLdI2 var_A2
  loc_C293E5: CI4UI1
  loc_C293E6: ILdRf var_A8
  loc_C293E9: AryLock
  loc_C293EC: Ary1LdPr
  loc_C293ED: MemLdRfVar from_stack_1.global_36
  loc_C293F0: CVarRef
  loc_C293F5: FLdRfVar var_218
  loc_C293F8: ImpAdCallFPR4  = Round(, )
  loc_C293FD: AryUnlock
  loc_C29400: FLdRfVar var_218
  loc_C29403: LeVarBool
  loc_C29405: FFreeVar var_14C = "": var_178 = ""
  loc_C2940E: BranchF loc_C297FF
  loc_C29411: ILdRf var_A0
  loc_C29414: LitStr "SET @ulcerete=0;"
  loc_C29417: ConcatStr
  loc_C29418: FStStrNoPop var_114
  loc_C2941B: LitStr " SELECT @ulcerete:=IFNULL(Max(UlceRete),0) + 1 UlceRete FROM retenciones WHERE retenciones.PeriInfo = "
  loc_C2941E: ConcatStr
  loc_C2941F: FStStrNoPop var_118
  loc_C29422: ImpAdLdI2 MemVar_C3D064
  loc_C29425: CStrUI1
  loc_C29427: FStStrNoPop var_11C
  loc_C2942A: ConcatStr
  loc_C2942B: FStStrNoPop var_150
  loc_C2942E: LitStr " AND retenciones.CodiRete = "
  loc_C29431: ConcatStr
  loc_C29432: CVarStr var_178
  loc_C29435: FLdRfVar var_14C
  loc_C29438: FLdRfVar var_3A4
  loc_C2943B: LitVarStr var_12C, "CodiRete"
  loc_C29440: PopAdLdVar
  loc_C29441: FLdRfVar var_3A0
  loc_C29444: FLdRfVar var_39C
  loc_C29447: FLdRfVar var_398
  loc_C2944A: ImpAdLdRf MemVar_C3D2A0
  loc_C2944D: NewIfNullPr dlgSelRetencionesImfi
  loc_C29450: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29455: FLdPr var_398
  loc_C29458: from_stack_1v = clsbase.RsFrmGet()
  loc_C2945D: FLdPr var_39C
  loc_C29460:  = Me.Fields
  loc_C29465: FLdPr var_3A0
  loc_C29468: from_stack_2 = Me.Item(from_stack_1)
  loc_C2946D: FLdPr var_3A4
  loc_C29470:  = Me.Value
  loc_C29475: FLdRfVar var_14C
  loc_C29478: ConcatVar var_218
  loc_C2947C: LitVarStr var_13C, ";"
  loc_C29481: ConcatVar var_2A8
  loc_C29485: CStrVarTmp
  loc_C29486: FStStr var_A0
  loc_C29489: FFreeStr var_114 = "": var_118 = "": var_11C = ""
  loc_C29494: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C2949F: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C294AA: LitI4 2
  loc_C294AF: FLdI2 var_A2
  loc_C294B2: CI4UI1
  loc_C294B3: ILdRf var_A8
  loc_C294B6: Ary1LdPr
  loc_C294B7: MemLdFPR8 global_36
  loc_C294BA: LitI2_Byte 1
  loc_C294BC: CR8I2
  loc_C294BD: DivR8
  loc_C294BE: CVarR8
  loc_C294C2: FLdRfVar var_434
  loc_C294C5: ImpAdCallFPR4  = Round(, )
  loc_C294CA: ILdRf var_A0
  loc_C294CD: LitStr " INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C294D0: ConcatStr
  loc_C294D1: FStStrNoPop var_114
  loc_C294D4: LitStr " VALUES ('"
  loc_C294D7: ConcatStr
  loc_C294D8: FStStrNoPop var_118
  loc_C294DB: ILdRf var_8C
  loc_C294DE: ConcatStr
  loc_C294DF: FStStrNoPop var_11C
  loc_C294E2: LitStr "',@liqu,"
  loc_C294E5: ConcatStr
  loc_C294E6: FStStrNoPop var_150
  loc_C294E9: FLdI2 var_A2
  loc_C294EC: CI4UI1
  loc_C294ED: ILdRf var_A8
  loc_C294F0: Ary1LdPr
  loc_C294F1: MemLdRfVar from_stack_1.global_0
  loc_C294F4: LdFixedStr
  loc_C294F7: FStStrNoPop var_154
  loc_C294FA: ConcatStr
  loc_C294FB: FStStrNoPop var_158
  loc_C294FE: LitStr ","
  loc_C29501: ConcatStr
  loc_C29502: FStStrNoPop var_17C
  loc_C29505: ImpAdLdI2 MemVar_C3D064
  loc_C29508: CStrUI1
  loc_C2950A: FStStrNoPop var_180
  loc_C2950D: ConcatStr
  loc_C2950E: FStStrNoPop var_184
  loc_C29511: LitStr ","
  loc_C29514: ConcatStr
  loc_C29515: CVarStr var_178
  loc_C29518: FLdRfVar var_14C
  loc_C2951B: FLdRfVar var_3A4
  loc_C2951E: LitVarStr var_12C, "CodiRete"
  loc_C29523: PopAdLdVar
  loc_C29524: FLdRfVar var_3A0
  loc_C29527: FLdRfVar var_39C
  loc_C2952A: FLdRfVar var_398
  loc_C2952D: ImpAdLdRf MemVar_C3D2A0
  loc_C29530: NewIfNullPr dlgSelRetencionesImfi
  loc_C29533: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29538: FLdPr var_398
  loc_C2953B: from_stack_1v = clsbase.RsFrmGet()
  loc_C29540: FLdPr var_39C
  loc_C29543:  = Me.Fields
  loc_C29548: FLdPr var_3A0
  loc_C2954B: from_stack_2 = Me.Item(from_stack_1)
  loc_C29550: FLdPr var_3A4
  loc_C29553:  = Me.Value
  loc_C29558: FLdRfVar var_14C
  loc_C2955B: ConcatVar var_218
  loc_C2955F: LitVarStr var_13C, ","
  loc_C29564: ConcatVar var_2A8
  loc_C29568: FLdRfVar var_334
  loc_C2956B: FLdRfVar var_3F4
  loc_C2956E: LitVarStr var_168, "CodiDere"
  loc_C29573: PopAdLdVar
  loc_C29574: FLdRfVar var_3F0
  loc_C29577: FLdRfVar var_3BC
  loc_C2957A: FLdRfVar var_3B8
  loc_C2957D: ImpAdLdRf MemVar_C3D2A0
  loc_C29580: NewIfNullPr dlgSelRetencionesImfi
  loc_C29583: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29588: FLdPr var_3B8
  loc_C2958B: from_stack_1v = clsbase.RsFrmGet()
  loc_C29590: FLdPr var_3BC
  loc_C29593:  = Me.Fields
  loc_C29598: FLdPr var_3F0
  loc_C2959B: from_stack_2 = Me.Item(from_stack_1)
  loc_C295A0: FLdPr var_3F4
  loc_C295A3:  = Me.Value
  loc_C295A8: FLdRfVar var_334
  loc_C295AB: ConcatVar var_384
  loc_C295AF: LitVarStr var_1A4, ",1,'"
  loc_C295B4: ConcatVar var_3B4
  loc_C295B8: ImpAdLdI2 MemVar_C3D064
  loc_C295BB: CVarI2 var_1B4
  loc_C295BE: ConcatVar var_3CC
  loc_C295C2: LitVarStr var_1C4, "-01-01','"
  loc_C295C7: ConcatVar var_3DC
  loc_C295CB: FLdRfVar var_3EC
  loc_C295CE: FLdRfVar var_4B4
  loc_C295D1: LitVarStr var_1D8, "CodiCuco"
  loc_C295D6: PopAdLdVar
  loc_C295D7: FLdRfVar var_4B0
  loc_C295DA: FLdRfVar var_47C
  loc_C295DD: FLdRfVar var_478
  loc_C295E0: ImpAdLdRf MemVar_C3D2A0
  loc_C295E3: NewIfNullPr dlgSelRetencionesImfi
  loc_C295E6: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C295EB: FLdPr var_478
  loc_C295EE: from_stack_1v = clsbase.RsFrmGet()
  loc_C295F3: FLdPr var_47C
  loc_C295F6:  = Me.Fields
  loc_C295FB: FLdPr var_4B0
  loc_C295FE: from_stack_2 = Me.Item(from_stack_1)
  loc_C29603: FLdPr var_4B4
  loc_C29606:  = Me.Value
  loc_C2960B: FLdRfVar var_3EC
  loc_C2960E: ConcatVar var_404
  loc_C29612: LitVarStr var_1E8, "',0,"
  loc_C29617: ConcatVar var_414
  loc_C2961B: LitI4 0
  loc_C29620: LitI4 -1
  loc_C29625: LitI4 1
  loc_C2962A: LitStr "."
  loc_C2962D: LitStr ","
  loc_C29630: FLdRfVar var_434
  loc_C29633: CStrVarVal var_188
  loc_C29637: ImpAdCallI2 Replace(, , , , , )
  loc_C2963C: CVarStr var_444
  loc_C2963F: ConcatVar var_454
  loc_C29643: LitVarStr var_208, ","
  loc_C29648: ConcatVar var_464
  loc_C2964C: LitI4 0
  loc_C29651: LitI4 -1
  loc_C29656: LitI4 1
  loc_C2965B: LitStr "."
  loc_C2965E: LitStr ","
  loc_C29661: FLdFPR8 var_C8
  loc_C29664: CStrR8
  loc_C29666: FStStrNoPop var_18C
  loc_C29669: ImpAdCallI2 Replace(, , , , , )
  loc_C2966E: CVarStr var_474
  loc_C29671: ConcatVar var_48C
  loc_C29675: LitVarStr var_268, " ,@ulcerete,"
  loc_C2967A: ConcatVar var_49C
  loc_C2967E: LitI4 0
  loc_C29683: LitI4 -1
  loc_C29688: LitI4 1
  loc_C2968D: LitStr "."
  loc_C29690: LitStr ","
  loc_C29693: FLdFPR8 var_B8
  loc_C29696: CStrR8
  loc_C29698: FStStrNoPop var_190
  loc_C2969B: ImpAdCallI2 Replace(, , , , , )
  loc_C296A0: CVarStr var_4AC
  loc_C296A3: ConcatVar var_4C4
  loc_C296A7: LitVarStr var_278, ","
  loc_C296AC: ConcatVar var_4D4
  loc_C296B0: LitI4 0
  loc_C296B5: LitI4 -1
  loc_C296BA: LitI4 1
  loc_C296BF: LitStr "."
  loc_C296C2: LitStr ","
  loc_C296C5: FLdFPR8 var_C0
  loc_C296C8: CStrR8
  loc_C296CA: FStStrNoPop var_1C8
  loc_C296CD: ImpAdCallI2 Replace(, , , , , )
  loc_C296D2: CVarStr var_4E4
  loc_C296D5: ConcatVar var_508
  loc_C296D9: LitVarStr var_288, ");"
  loc_C296DE: ConcatVar var_518
  loc_C296E2: CStrVarTmp
  loc_C296E3: FStStr var_A0
  loc_C296E6: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_C29703: FFreeAd var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3B8 = "": var_3BC = "": var_3F0 = "": var_3F4 = "": var_478 = "": var_47C = "": var_4B0 = ""
  loc_C2971E: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_2A8 = "": var_334 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_404 = "": var_424 = "": var_434 = "": var_414 = "": var_444 = "": var_454 = "": var_464 = "": var_474 = "": var_48C = "": var_49C = "": var_4AC = "": var_4C4 = "": var_4D4 = "": var_4E4 = "": var_508 = ""
  loc_C29755: ILdRf var_A0
  loc_C29758: LitStr " UPDATE retenciones SET UlceRete = @ulcerete WHERE retenciones.PeriInfo = "
  loc_C2975B: ConcatStr
  loc_C2975C: FStStrNoPop var_114
  loc_C2975F: ImpAdLdI2 MemVar_C3D064
  loc_C29762: CStrUI1
  loc_C29764: FStStrNoPop var_118
  loc_C29767: ConcatStr
  loc_C29768: FStStrNoPop var_11C
  loc_C2976B: LitStr " AND retenciones.CodiRete = "
  loc_C2976E: ConcatStr
  loc_C2976F: CVarStr var_178
  loc_C29772: FLdRfVar var_14C
  loc_C29775: FLdRfVar var_3A4
  loc_C29778: LitVarStr var_12C, "CodiRete"
  loc_C2977D: PopAdLdVar
  loc_C2977E: FLdRfVar var_3A0
  loc_C29781: FLdRfVar var_39C
  loc_C29784: FLdRfVar var_398
  loc_C29787: ImpAdLdRf MemVar_C3D2A0
  loc_C2978A: NewIfNullPr dlgSelRetencionesImfi
  loc_C2978D: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C29792: FLdPr var_398
  loc_C29795: from_stack_1v = clsbase.RsFrmGet()
  loc_C2979A: FLdPr var_39C
  loc_C2979D:  = Me.Fields
  loc_C297A2: FLdPr var_3A0
  loc_C297A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C297AA: FLdPr var_3A4
  loc_C297AD:  = Me.Value
  loc_C297B2: FLdRfVar var_14C
  loc_C297B5: ConcatVar var_218
  loc_C297B9: LitVarStr var_13C, ";"
  loc_C297BE: ConcatVar var_2A8
  loc_C297C2: CStrVarTmp
  loc_C297C3: FStStr var_A0
  loc_C297C6: FFreeStr var_114 = "": var_118 = ""
  loc_C297CF: FFreeAd var_398 = "": var_39C = "": var_3A0 = ""
  loc_C297DA: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C297E5: FLdI2 var_A2
  loc_C297E8: CI4UI1
  loc_C297E9: ILdRf var_A8
  loc_C297EC: Ary1LdPr
  loc_C297ED: MemLdFPR8 global_44
  loc_C297F0: FLdFPR8 var_C8
  loc_C297F3: AddR8
  loc_C297F4: FLdI2 var_A2
  loc_C297F7: CI4UI1
  loc_C297F8: ILdRf var_A8
  loc_C297FB: Ary1LdPr
  loc_C297FC: MemStFPR8 global_44
  loc_C297FF: FLdRfVar var_398
  loc_C29802: ImpAdLdRf MemVar_C3D2A0
  loc_C29805: NewIfNullPr dlgSelRetencionesImfi
  loc_C29808: from_stack_1v = dlgSelRetencionesImfi.global_4235380Get()
  loc_C2980D: FLdPr var_398
  loc_C29810: Call clsbase.MoveSiguiente()
  loc_C29815: FFree1Ad var_398
  loc_C29818: Branch loc_C28E96
  loc_C2981B: FLdRfVar var_A2
  loc_C2981E: NextI2 var_84C, loc_C28E7D
  loc_C29823: Branch loc_C29833
  loc_C29826: LitI4 0
  loc_C2982B: LitStr "Debe marcar una retencion para el Proveedor. Verifique..."
  loc_C2982E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C29833: LitStr "Municipalidad de Guaymallén"
  loc_C29836: LitStr "Municipalidad de Tupungato"
  loc_C29839: EqStr
  loc_C2983B: BranchF loc_C2A092
  loc_C2983E: ImpAdLdRf MemVar_C3D250
  loc_C29841: NewIfNullPr frmLiquidacion
  loc_C29844: VCallAd Control_ID_
  loc_C29847: CVarAd
  loc_C2984B: CBoolVarNull
  loc_C2984D: FFree1Var var_14C = ""
  loc_C29850: BranchF loc_C2A092
  loc_C29853: LitStr "SELECT * FROM locadores WHERE PeriInfo = "
  loc_C29856: ImpAdLdI2 MemVar_C3D064
  loc_C29859: CStrUI1
  loc_C2985B: FStStrNoPop var_114
  loc_C2985E: ConcatStr
  loc_C2985F: FStStrNoPop var_118
  loc_C29862: LitStr " AND ExpeImpu = '"
  loc_C29865: ConcatStr
  loc_C29866: FStStrNoPop var_11C
  loc_C29869: ILdRf var_8C
  loc_C2986C: ConcatStr
  loc_C2986D: FStStrNoPop var_150
  loc_C29870: LitStr "' LIMIT 1;"
  loc_C29873: ConcatStr
  loc_C29874: FStStrNoPop var_154
  loc_C29877: Call EjecutarRsCls(from_stack_1v)
  loc_C2987C: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = ""
  loc_C29889: FLdRfVar var_390
  loc_C2988C: FLdPr Me
  loc_C2988F: MemLdPr global_56
  loc_C29892:  = frmLiquidacion.Recordset15.RecordCount
  loc_C29897: ILdRf var_390
  loc_C2989A: LitI4 0
  loc_C2989F: GtI4
  loc_C298A0: BranchF loc_C2A092
  loc_C298A3: LitI2_Byte 1
  loc_C298A5: FLdRfVar var_A2
  loc_C298A8: ILdRf var_A8
  loc_C298AB: LitI2_Byte 1
  loc_C298AD: FnUBound
  loc_C298AF: CI2I4
  loc_C298B0: ForI2 var_850
  loc_C298B6: LitStr "SELECT IFNULL(SUM(ImpoRete),0) ImpoRete"
  loc_C298B9: LitStr " FROM ("
  loc_C298BC: ConcatStr
  loc_C298BD: FStStrNoPop var_114
  loc_C298C0: LitStr " SELECT IFNULL(ld.ImpoLodere,0) ImpoRete"
  loc_C298C3: ConcatStr
  loc_C298C4: FStStrNoPop var_118
  loc_C298C7: LitStr " FROM locadores l"
  loc_C298CA: ConcatStr
  loc_C298CB: FStStrNoPop var_11C
  loc_C298CE: LitStr " LEFT JOIN locadere ld ON l.IdLoca = ld.IdLoca"
  loc_C298D1: ConcatStr
  loc_C298D2: FStStrNoPop var_150
  loc_C298D5: LitStr " WHERE l.CucuPers = "
  loc_C298D8: ConcatStr
  loc_C298D9: FStStrNoPop var_154
  loc_C298DC: FLdI2 var_A2
  loc_C298DF: CI4UI1
  loc_C298E0: ILdRf var_A8
  loc_C298E3: Ary1LdPr
  loc_C298E4: MemLdRfVar from_stack_1.global_0
  loc_C298E7: LdFixedStr
  loc_C298EA: FStStrNoPop var_158
  loc_C298ED: ConcatStr
  loc_C298EE: FStStrNoPop var_17C
  loc_C298F1: LitStr " AND l.PeriInfo = "
  loc_C298F4: ConcatStr
  loc_C298F5: FStStrNoPop var_180
  loc_C298F8: ImpAdLdI2 MemVar_C3D064
  loc_C298FB: CStrUI1
  loc_C298FD: FStStrNoPop var_184
  loc_C29900: ConcatStr
  loc_C29901: FStStrNoPop var_188
  loc_C29904: LitStr " AND ExpeImpu = '"
  loc_C29907: ConcatStr
  loc_C29908: FStStrNoPop var_18C
  loc_C2990B: ILdRf var_8C
  loc_C2990E: ConcatStr
  loc_C2990F: FStStrNoPop var_190
  loc_C29912: LitStr "' AND l.BajaUsua = ''"
  loc_C29915: ConcatStr
  loc_C29916: FStStrNoPop var_1C8
  loc_C29919: LitStr " ) AS tbl;"
  loc_C2991C: ConcatStr
  loc_C2991D: FStStrNoPop var_21C
  loc_C29920: Call EjecutarRsCls(from_stack_1v)
  loc_C29925: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = ""
  loc_C29944: FLdRfVar var_390
  loc_C29947: FLdPr Me
  loc_C2994A: MemLdPr global_56
  loc_C2994D:  = Me.RecordCount
  loc_C29952: ILdRf var_390
  loc_C29955: LitI4 0
  loc_C2995A: GtI4
  loc_C2995B: BranchF loc_C29C72
  loc_C2995E: FLdRfVar var_14C
  loc_C29961: FLdRfVar var_39C
  loc_C29964: LitVarStr var_12C, "ImpoRete"
  loc_C29969: PopAdLdVar
  loc_C2996A: FLdRfVar var_398
  loc_C2996D: FLdPr Me
  loc_C29970: MemLdPr global_56
  loc_C29973:  = Me.Fields
  loc_C29978: FLdPr var_398
  loc_C2997B: from_stack_2 = Me.Item(from_stack_1)
  loc_C29980: FLdPr var_39C
  loc_C29983:  = Me.Value
  loc_C29988: FLdRfVar var_14C
  loc_C2998B: CR4Var
  loc_C2998C: FStFPR8 var_C8
  loc_C2998F: FFreeAd var_398 = ""
  loc_C29996: FFree1Var var_14C = ""
  loc_C29999: FLdFPR8 var_C8
  loc_C2999C: LitI2_Byte 0
  loc_C2999E: CR8I2
  loc_C2999F: GtR4
  loc_C299A0: BranchF loc_C29C72
  loc_C299A3: FLdFPR8 var_C8
  loc_C299A6: CVarR8
  loc_C299AA: HardType
  loc_C299AB: LitI4 2
  loc_C299B0: FLdI2 var_A2
  loc_C299B3: CI4UI1
  loc_C299B4: ILdRf var_A8
  loc_C299B7: AryLock
  loc_C299BA: Ary1LdPr
  loc_C299BB: MemLdRfVar from_stack_1.global_36
  loc_C299BE: CVarRef
  loc_C299C3: FLdRfVar var_14C
  loc_C299C6: ImpAdCallFPR4  = Round(, )
  loc_C299CB: AryUnlock
  loc_C299CE: FLdRfVar var_14C
  loc_C299D1: GtVarBool
  loc_C299D3: FFree1Var var_14C = ""
  loc_C299D6: BranchF loc_C29A4E
  loc_C299D9: LitI4 0
  loc_C299DE: LitStr "La Retención es mayor al importe devengado."
  loc_C299E1: LitStr vbCrLf
  loc_C299E4: ConcatStr
  loc_C299E5: FStStrNoPop var_114
  loc_C299E8: LitStr "No se realizará ninguna Retención para "
  loc_C299EB: ConcatStr
  loc_C299EC: CVarStr var_178
  loc_C299EF: FLdRfVar var_14C
  loc_C299F2: FLdRfVar var_39C
  loc_C299F5: LitVarStr var_12C, "DetaDere"
  loc_C299FA: PopAdLdVar
  loc_C299FB: FLdRfVar var_398
  loc_C299FE: FLdPr Me
  loc_C29A01: MemLdPr global_60
  loc_C29A04:  = Me.Fields
  loc_C29A09: FLdPr var_398
  loc_C29A0C: from_stack_2 = Me.Item(from_stack_1)
  loc_C29A11: FLdPr var_39C
  loc_C29A14:  = Me.Value
  loc_C29A19: FLdRfVar var_14C
  loc_C29A1C: ConcatVar var_218
  loc_C29A20: LitVarStr var_13C, ". Verifique..."
  loc_C29A25: ConcatVar var_2A8
  loc_C29A29: CStrVarVal var_118
  loc_C29A2D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C29A32: FFreeStr var_114 = ""
  loc_C29A39: FFreeAd var_398 = ""
  loc_C29A40: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C29A4B: Branch loc_C29C72
  loc_C29A4E: LitI4 2
  loc_C29A53: FLdI2 var_A2
  loc_C29A56: CI4UI1
  loc_C29A57: ILdRf var_A8
  loc_C29A5A: Ary1LdPr
  loc_C29A5B: MemLdFPR8 global_44
  loc_C29A5E: FLdFPR8 var_C8
  loc_C29A61: AddR8
  loc_C29A62: CVarR8
  loc_C29A66: FLdRfVar var_178
  loc_C29A69: ImpAdCallFPR4  = Round(, )
  loc_C29A6E: FLdRfVar var_178
  loc_C29A71: LitI4 2
  loc_C29A76: FLdI2 var_A2
  loc_C29A79: CI4UI1
  loc_C29A7A: ILdRf var_A8
  loc_C29A7D: AryLock
  loc_C29A80: Ary1LdPr
  loc_C29A81: MemLdRfVar from_stack_1.global_36
  loc_C29A84: CVarRef
  loc_C29A89: FLdRfVar var_218
  loc_C29A8C: ImpAdCallFPR4  = Round(, )
  loc_C29A91: AryUnlock
  loc_C29A94: FLdRfVar var_218
  loc_C29A97: GtVarBool
  loc_C29A99: FFreeVar var_14C = "": var_178 = ""
  loc_C29AA2: BranchF loc_C29B1A
  loc_C29AA5: LitI4 0
  loc_C29AAA: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C29AAD: LitStr vbCrLf
  loc_C29AB0: ConcatStr
  loc_C29AB1: FStStrNoPop var_114
  loc_C29AB4: LitStr "No se realizará ninguna Retención de "
  loc_C29AB7: ConcatStr
  loc_C29AB8: CVarStr var_178
  loc_C29ABB: FLdRfVar var_14C
  loc_C29ABE: FLdRfVar var_39C
  loc_C29AC1: LitVarStr var_12C, "DetaDere"
  loc_C29AC6: PopAdLdVar
  loc_C29AC7: FLdRfVar var_398
  loc_C29ACA: FLdPr Me
  loc_C29ACD: MemLdPr global_60
  loc_C29AD0:  = Me.Fields
  loc_C29AD5: FLdPr var_398
  loc_C29AD8: from_stack_2 = Me.Item(from_stack_1)
  loc_C29ADD: FLdPr var_39C
  loc_C29AE0:  = Me.Value
  loc_C29AE5: FLdRfVar var_14C
  loc_C29AE8: ConcatVar var_218
  loc_C29AEC: LitVarStr var_13C, ". Verifique..."
  loc_C29AF1: ConcatVar var_2A8
  loc_C29AF5: CStrVarVal var_118
  loc_C29AF9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C29AFE: FFreeStr var_114 = ""
  loc_C29B05: FFreeAd var_398 = ""
  loc_C29B0C: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C29B17: Branch loc_C29C72
  loc_C29B1A: LitI4 2
  loc_C29B1F: FLdI2 var_A2
  loc_C29B22: CI4UI1
  loc_C29B23: ILdRf var_A8
  loc_C29B26: Ary1LdPr
  loc_C29B27: MemLdFPR8 global_44
  loc_C29B2A: FLdFPR8 var_C8
  loc_C29B2D: AddR8
  loc_C29B2E: CVarR8
  loc_C29B32: FLdRfVar var_178
  loc_C29B35: ImpAdCallFPR4  = Round(, )
  loc_C29B3A: FLdRfVar var_178
  loc_C29B3D: LitI4 2
  loc_C29B42: FLdI2 var_A2
  loc_C29B45: CI4UI1
  loc_C29B46: ILdRf var_A8
  loc_C29B49: AryLock
  loc_C29B4C: Ary1LdPr
  loc_C29B4D: MemLdRfVar from_stack_1.global_36
  loc_C29B50: CVarRef
  loc_C29B55: FLdRfVar var_218
  loc_C29B58: ImpAdCallFPR4  = Round(, )
  loc_C29B5D: AryUnlock
  loc_C29B60: FLdRfVar var_218
  loc_C29B63: LeVarBool
  loc_C29B65: FFreeVar var_14C = "": var_178 = ""
  loc_C29B6E: BranchF loc_C29C72
  loc_C29B71: ILdRf var_A0
  loc_C29B74: LitStr "INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine)"
  loc_C29B77: ConcatStr
  loc_C29B78: FStStrNoPop var_114
  loc_C29B7B: LitStr " VALUES ('"
  loc_C29B7E: ConcatStr
  loc_C29B7F: FStStrNoPop var_118
  loc_C29B82: ILdRf var_8C
  loc_C29B85: ConcatStr
  loc_C29B86: FStStrNoPop var_11C
  loc_C29B89: LitStr "',@liqu,"
  loc_C29B8C: ConcatStr
  loc_C29B8D: FStStrNoPop var_150
  loc_C29B90: FLdI2 var_A2
  loc_C29B93: CI4UI1
  loc_C29B94: ILdRf var_A8
  loc_C29B97: Ary1LdPr
  loc_C29B98: MemLdRfVar from_stack_1.global_0
  loc_C29B9B: LdFixedStr
  loc_C29B9E: FStStrNoPop var_154
  loc_C29BA1: ConcatStr
  loc_C29BA2: FStStrNoPop var_158
  loc_C29BA5: LitStr ","
  loc_C29BA8: ConcatStr
  loc_C29BA9: FStStrNoPop var_17C
  loc_C29BAC: ImpAdLdI2 MemVar_C3D064
  loc_C29BAF: CStrUI1
  loc_C29BB1: FStStrNoPop var_180
  loc_C29BB4: ConcatStr
  loc_C29BB5: FStStrNoPop var_184
  loc_C29BB8: LitStr ",5,1,1,'"
  loc_C29BBB: ConcatStr
  loc_C29BBC: FStStrNoPop var_188
  loc_C29BBF: ImpAdLdI2 MemVar_C3D064
  loc_C29BC2: CStrUI1
  loc_C29BC4: FStStrNoPop var_18C
  loc_C29BC7: ConcatStr
  loc_C29BC8: FStStrNoPop var_190
  loc_C29BCB: LitStr "-01-01','114150500000',0,"
  loc_C29BCE: ConcatStr
  loc_C29BCF: FStStrNoPop var_21C
  loc_C29BD2: LitI4 2
  loc_C29BD7: FLdI2 var_A2
  loc_C29BDA: CI4UI1
  loc_C29BDB: ILdRf var_A8
  loc_C29BDE: AryLock
  loc_C29BE1: Ary1LdPr
  loc_C29BE2: MemLdRfVar from_stack_1.global_36
  loc_C29BE5: CVarRef
  loc_C29BEA: FLdRfVar var_14C
  loc_C29BED: ImpAdCallFPR4  = Round(, )
  loc_C29BF2: AryUnlock
  loc_C29BF5: FLdRfVar var_14C
  loc_C29BF8: CStrVarVal var_1C8
  loc_C29BFC: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C29C01: FStStrNoPop var_220
  loc_C29C04: ConcatStr
  loc_C29C05: FStStrNoPop var_224
  loc_C29C08: LitStr ","
  loc_C29C0B: ConcatStr
  loc_C29C0C: FStStrNoPop var_22C
  loc_C29C0F: FLdFPR8 var_C8
  loc_C29C12: CStrR8
  loc_C29C14: FStStrNoPop var_228
  loc_C29C17: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C29C1C: FStStrNoPop var_230
  loc_C29C1F: ConcatStr
  loc_C29C20: FStStrNoPop var_234
  loc_C29C23: LitStr ",1);"
  loc_C29C26: ConcatStr
  loc_C29C27: FStStr var_A0
  loc_C29C2A: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = ""
  loc_C29C55: FFree1Var var_14C = ""
  loc_C29C58: FLdI2 var_A2
  loc_C29C5B: CI4UI1
  loc_C29C5C: ILdRf var_A8
  loc_C29C5F: Ary1LdPr
  loc_C29C60: MemLdFPR8 global_44
  loc_C29C63: FLdFPR8 var_C8
  loc_C29C66: AddR8
  loc_C29C67: FLdI2 var_A2
  loc_C29C6A: CI4UI1
  loc_C29C6B: ILdRf var_A8
  loc_C29C6E: Ary1LdPr
  loc_C29C6F: MemStFPR8 global_44
  loc_C29C72: LitStr "SELECT lqd.*"
  loc_C29C75: LitStr " FROM liquidacion l"
  loc_C29C78: ConcatStr
  loc_C29C79: FStStrNoPop var_114
  loc_C29C7C: LitStr " INNER JOIN liquidadeta lqd ON lqd.ExpeImpu = l.ExpeImpu AND lqd.NumeLiqu = l.NumeLiqu AND lqd.PeriInfo = l.PeriInfo"
  loc_C29C7F: ConcatStr
  loc_C29C80: FStStrNoPop var_118
  loc_C29C83: LitStr " AND lqd.CucuPers = "
  loc_C29C86: ConcatStr
  loc_C29C87: FStStrNoPop var_11C
  loc_C29C8A: FLdI2 var_A2
  loc_C29C8D: CI4UI1
  loc_C29C8E: ILdRf var_A8
  loc_C29C91: Ary1LdPr
  loc_C29C92: MemLdRfVar from_stack_1.global_0
  loc_C29C95: LdFixedStr
  loc_C29C98: FStStrNoPop var_150
  loc_C29C9B: ConcatStr
  loc_C29C9C: FStStrNoPop var_154
  loc_C29C9F: LitStr vbNullString
  loc_C29CA2: ConcatStr
  loc_C29CA3: FStStrNoPop var_158
  loc_C29CA6: LitStr " WHERE l.PeriInfo = "
  loc_C29CA9: ConcatStr
  loc_C29CAA: FStStrNoPop var_17C
  loc_C29CAD: ImpAdLdI2 MemVar_C3D064
  loc_C29CB0: CStrUI1
  loc_C29CB2: FStStrNoPop var_180
  loc_C29CB5: ConcatStr
  loc_C29CB6: FStStrNoPop var_184
  loc_C29CB9: LitStr " AND l.ExpeImpu = '"
  loc_C29CBC: ConcatStr
  loc_C29CBD: FStStrNoPop var_188
  loc_C29CC0: ILdRf var_8C
  loc_C29CC3: ConcatStr
  loc_C29CC4: FStStrNoPop var_18C
  loc_C29CC7: LitStr "'"
  loc_C29CCA: ConcatStr
  loc_C29CCB: FStStrNoPop var_190
  loc_C29CCE: LitStr " AND l.FeanLiqu IS NULL"
  loc_C29CD1: ConcatStr
  loc_C29CD2: FStStrNoPop var_1C8
  loc_C29CD5: LitStr " AND l.TipoLiqu = 2"
  loc_C29CD8: ConcatStr
  loc_C29CD9: FStStrNoPop var_21C
  loc_C29CDC: LitStr " ;"
  loc_C29CDF: ConcatStr
  loc_C29CE0: FStStrNoPop var_220
  loc_C29CE3: Call EjecutarRsCls(from_stack_1v)
  loc_C29CE8: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = ""
  loc_C29D09: FLdRfVar var_390
  loc_C29D0C: FLdPr Me
  loc_C29D0F: MemLdPr global_56
  loc_C29D12:  = Me.RecordCount
  loc_C29D17: ILdRf var_390
  loc_C29D1A: LitI4 0
  loc_C29D1F: GtI4
  loc_C29D20: BranchF loc_C2A08A
  loc_C29D23: FLdRfVar var_14C
  loc_C29D26: FLdRfVar var_39C
  loc_C29D29: LitVarStr var_12C, "ImpoImpu"
  loc_C29D2E: PopAdLdVar
  loc_C29D2F: FLdRfVar var_398
  loc_C29D32: FLdPr Me
  loc_C29D35: MemLdPr global_56
  loc_C29D38:  = Me.Fields
  loc_C29D3D: FLdPr var_398
  loc_C29D40: from_stack_2 = Me.Item(from_stack_1)
  loc_C29D45: FLdPr var_39C
  loc_C29D48:  = Me.Value
  loc_C29D4D: FLdRfVar var_14C
  loc_C29D50: CR4Var
  loc_C29D51: FStFPR8 var_C8
  loc_C29D54: FFreeAd var_398 = ""
  loc_C29D5B: FFree1Var var_14C = ""
  loc_C29D5E: FLdFPR8 var_C8
  loc_C29D61: LitI2_Byte 0
  loc_C29D63: CR8I2
  loc_C29D64: GtR4
  loc_C29D65: BranchF loc_C2A08A
  loc_C29D68: FLdFPR8 var_C8
  loc_C29D6B: CVarR8
  loc_C29D6F: HardType
  loc_C29D70: LitI4 2
  loc_C29D75: FLdI2 var_A2
  loc_C29D78: CI4UI1
  loc_C29D79: ILdRf var_A8
  loc_C29D7C: AryLock
  loc_C29D7F: Ary1LdPr
  loc_C29D80: MemLdRfVar from_stack_1.global_36
  loc_C29D83: CVarRef
  loc_C29D88: FLdRfVar var_14C
  loc_C29D8B: ImpAdCallFPR4  = Round(, )
  loc_C29D90: AryUnlock
  loc_C29D93: FLdRfVar var_14C
  loc_C29D96: GtVarBool
  loc_C29D98: FFree1Var var_14C = ""
  loc_C29D9B: BranchF loc_C29E13
  loc_C29D9E: LitI4 0
  loc_C29DA3: LitStr "La Retención es mayor al importe devengado."
  loc_C29DA6: LitStr vbCrLf
  loc_C29DA9: ConcatStr
  loc_C29DAA: FStStrNoPop var_114
  loc_C29DAD: LitStr "No se realizará ninguna Retención para "
  loc_C29DB0: ConcatStr
  loc_C29DB1: CVarStr var_178
  loc_C29DB4: FLdRfVar var_14C
  loc_C29DB7: FLdRfVar var_39C
  loc_C29DBA: LitVarStr var_12C, "DetaDere"
  loc_C29DBF: PopAdLdVar
  loc_C29DC0: FLdRfVar var_398
  loc_C29DC3: FLdPr Me
  loc_C29DC6: MemLdPr global_60
  loc_C29DC9:  = Me.Fields
  loc_C29DCE: FLdPr var_398
  loc_C29DD1: from_stack_2 = Me.Item(from_stack_1)
  loc_C29DD6: FLdPr var_39C
  loc_C29DD9:  = Me.Value
  loc_C29DDE: FLdRfVar var_14C
  loc_C29DE1: ConcatVar var_218
  loc_C29DE5: LitVarStr var_13C, ". Verifique..."
  loc_C29DEA: ConcatVar var_2A8
  loc_C29DEE: CStrVarVal var_118
  loc_C29DF2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C29DF7: FFreeStr var_114 = ""
  loc_C29DFE: FFreeAd var_398 = ""
  loc_C29E05: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C29E10: Branch loc_C2A08A
  loc_C29E13: LitI4 2
  loc_C29E18: FLdI2 var_A2
  loc_C29E1B: CI4UI1
  loc_C29E1C: ILdRf var_A8
  loc_C29E1F: Ary1LdPr
  loc_C29E20: MemLdFPR8 global_44
  loc_C29E23: FLdFPR8 var_C8
  loc_C29E26: AddR8
  loc_C29E27: CVarR8
  loc_C29E2B: FLdRfVar var_178
  loc_C29E2E: ImpAdCallFPR4  = Round(, )
  loc_C29E33: FLdRfVar var_178
  loc_C29E36: LitI4 2
  loc_C29E3B: FLdI2 var_A2
  loc_C29E3E: CI4UI1
  loc_C29E3F: ILdRf var_A8
  loc_C29E42: AryLock
  loc_C29E45: Ary1LdPr
  loc_C29E46: MemLdRfVar from_stack_1.global_36
  loc_C29E49: CVarRef
  loc_C29E4E: FLdRfVar var_218
  loc_C29E51: ImpAdCallFPR4  = Round(, )
  loc_C29E56: AryUnlock
  loc_C29E59: FLdRfVar var_218
  loc_C29E5C: GtVarBool
  loc_C29E5E: FFreeVar var_14C = "": var_178 = ""
  loc_C29E67: BranchF loc_C29EDF
  loc_C29E6A: LitI4 0
  loc_C29E6F: LitStr "El TOTAL de las Retenciones es mayor al importe devengado."
  loc_C29E72: LitStr vbCrLf
  loc_C29E75: ConcatStr
  loc_C29E76: FStStrNoPop var_114
  loc_C29E79: LitStr "No se realizará ninguna Retención de "
  loc_C29E7C: ConcatStr
  loc_C29E7D: CVarStr var_178
  loc_C29E80: FLdRfVar var_14C
  loc_C29E83: FLdRfVar var_39C
  loc_C29E86: LitVarStr var_12C, "DetaDere"
  loc_C29E8B: PopAdLdVar
  loc_C29E8C: FLdRfVar var_398
  loc_C29E8F: FLdPr Me
  loc_C29E92: MemLdPr global_60
  loc_C29E95:  = Me.Fields
  loc_C29E9A: FLdPr var_398
  loc_C29E9D: from_stack_2 = Me.Item(from_stack_1)
  loc_C29EA2: FLdPr var_39C
  loc_C29EA5:  = Me.Value
  loc_C29EAA: FLdRfVar var_14C
  loc_C29EAD: ConcatVar var_218
  loc_C29EB1: LitVarStr var_13C, ". Verifique..."
  loc_C29EB6: ConcatVar var_2A8
  loc_C29EBA: CStrVarVal var_118
  loc_C29EBE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C29EC3: FFreeStr var_114 = ""
  loc_C29ECA: FFreeAd var_398 = ""
  loc_C29ED1: FFreeVar var_178 = "": var_14C = "": var_218 = ""
  loc_C29EDC: Branch loc_C2A08A
  loc_C29EDF: LitI4 2
  loc_C29EE4: FLdI2 var_A2
  loc_C29EE7: CI4UI1
  loc_C29EE8: ILdRf var_A8
  loc_C29EEB: Ary1LdPr
  loc_C29EEC: MemLdFPR8 global_44
  loc_C29EEF: FLdFPR8 var_C8
  loc_C29EF2: AddR8
  loc_C29EF3: CVarR8
  loc_C29EF7: FLdRfVar var_178
  loc_C29EFA: ImpAdCallFPR4  = Round(, )
  loc_C29EFF: FLdRfVar var_178
  loc_C29F02: LitI4 2
  loc_C29F07: FLdI2 var_A2
  loc_C29F0A: CI4UI1
  loc_C29F0B: ILdRf var_A8
  loc_C29F0E: AryLock
  loc_C29F11: Ary1LdPr
  loc_C29F12: MemLdRfVar from_stack_1.global_36
  loc_C29F15: CVarRef
  loc_C29F1A: FLdRfVar var_218
  loc_C29F1D: ImpAdCallFPR4  = Round(, )
  loc_C29F22: AryUnlock
  loc_C29F25: FLdRfVar var_218
  loc_C29F28: LeVarBool
  loc_C29F2A: FFreeVar var_14C = "": var_178 = ""
  loc_C29F33: BranchF loc_C2A08A
  loc_C29F36: ILdRf var_A0
  loc_C29F39: LitStr "INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine)"
  loc_C29F3C: ConcatStr
  loc_C29F3D: FStStrNoPop var_114
  loc_C29F40: LitStr " VALUES ('"
  loc_C29F43: ConcatStr
  loc_C29F44: FStStrNoPop var_118
  loc_C29F47: ILdRf var_8C
  loc_C29F4A: ConcatStr
  loc_C29F4B: FStStrNoPop var_11C
  loc_C29F4E: LitStr "',@liqu,"
  loc_C29F51: ConcatStr
  loc_C29F52: FStStrNoPop var_150
  loc_C29F55: FLdI2 var_A2
  loc_C29F58: CI4UI1
  loc_C29F59: ILdRf var_A8
  loc_C29F5C: Ary1LdPr
  loc_C29F5D: MemLdRfVar from_stack_1.global_0
  loc_C29F60: LdFixedStr
  loc_C29F63: FStStrNoPop var_154
  loc_C29F66: ConcatStr
  loc_C29F67: FStStrNoPop var_158
  loc_C29F6A: LitStr ","
  loc_C29F6D: ConcatStr
  loc_C29F6E: FStStrNoPop var_17C
  loc_C29F71: ImpAdLdI2 MemVar_C3D064
  loc_C29F74: CStrUI1
  loc_C29F76: FStStrNoPop var_180
  loc_C29F79: ConcatStr
  loc_C29F7A: FStStrNoPop var_184
  loc_C29F7D: LitStr ",7,1,1,'"
  loc_C29F80: ConcatStr
  loc_C29F81: FStStrNoPop var_188
  loc_C29F84: ImpAdLdI2 MemVar_C3D064
  loc_C29F87: CStrUI1
  loc_C29F89: FStStrNoPop var_18C
  loc_C29F8C: ConcatStr
  loc_C29F8D: FStStrNoPop var_190
  loc_C29F90: LitStr "-01-01','"
  loc_C29F93: ConcatStr
  loc_C29F94: CVarStr var_178
  loc_C29F97: FLdRfVar var_14C
  loc_C29F9A: FLdRfVar var_39C
  loc_C29F9D: LitVarStr var_12C, "CodiCuco"
  loc_C29FA2: PopAdLdVar
  loc_C29FA3: FLdRfVar var_398
  loc_C29FA6: FLdPr Me
  loc_C29FA9: MemLdPr global_56
  loc_C29FAC:  = Me.Fields
  loc_C29FB1: FLdPr var_398
  loc_C29FB4: from_stack_2 = Me.Item(from_stack_1)
  loc_C29FB9: FLdPr var_39C
  loc_C29FBC:  = Me.Value
  loc_C29FC1: FLdRfVar var_14C
  loc_C29FC4: ConcatVar var_218
  loc_C29FC8: LitVarStr var_13C, "',0,"
  loc_C29FCD: ConcatVar var_2A8
  loc_C29FD1: LitI4 2
  loc_C29FD6: FLdI2 var_A2
  loc_C29FD9: CI4UI1
  loc_C29FDA: ILdRf var_A8
  loc_C29FDD: AryLock
  loc_C29FE0: Ary1LdPr
  loc_C29FE1: MemLdRfVar from_stack_1.global_36
  loc_C29FE4: CVarRef
  loc_C29FE9: FLdRfVar var_334
  loc_C29FEC: ImpAdCallFPR4  = Round(, )
  loc_C29FF1: AryUnlock
  loc_C29FF4: FLdRfVar var_334
  loc_C29FF7: CStrVarVal var_1C8
  loc_C29FFB: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A000: CVarStr var_384
  loc_C2A003: ConcatVar var_3B4
  loc_C2A007: LitVarStr var_1A4, ","
  loc_C2A00C: ConcatVar var_3CC
  loc_C2A010: FLdFPR8 var_C8
  loc_C2A013: CStrR8
  loc_C2A015: FStStrNoPop var_21C
  loc_C2A018: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A01D: CVarStr var_3DC
  loc_C2A020: ConcatVar var_3EC
  loc_C2A024: LitVarStr var_1B4, ",1);"
  loc_C2A029: ConcatVar var_404
  loc_C2A02D: CStrVarTmp
  loc_C2A02E: FStStr var_A0
  loc_C2A031: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = ""
  loc_C2A050: FFreeAd var_398 = ""
  loc_C2A057: FFreeVar var_178 = "": var_14C = "": var_218 = "": var_334 = "": var_2A8 = "": var_384 = "": var_3B4 = "": var_3CC = "": var_3DC = "": var_3EC = ""
  loc_C2A070: FLdI2 var_A2
  loc_C2A073: CI4UI1
  loc_C2A074: ILdRf var_A8
  loc_C2A077: Ary1LdPr
  loc_C2A078: MemLdFPR8 global_44
  loc_C2A07B: FLdFPR8 var_C8
  loc_C2A07E: AddR8
  loc_C2A07F: FLdI2 var_A2
  loc_C2A082: CI4UI1
  loc_C2A083: ILdRf var_A8
  loc_C2A086: Ary1LdPr
  loc_C2A087: MemStFPR8 global_44
  loc_C2A08A: FLdRfVar var_A2
  loc_C2A08D: NextI2 var_850, loc_C298B6
  loc_C2A092: LitI2_Byte 1
  loc_C2A094: FLdRfVar var_A2
  loc_C2A097: ILdRf var_A8
  loc_C2A09A: LitI2_Byte 1
  loc_C2A09C: FnUBound
  loc_C2A09E: CI2I4
  loc_C2A09F: ForI2 var_854
  loc_C2A0A5: LitI4 2
  loc_C2A0AA: FLdI2 var_A2
  loc_C2A0AD: CI4UI1
  loc_C2A0AE: ILdRf var_A8
  loc_C2A0B1: AryLock
  loc_C2A0B4: Ary1LdPr
  loc_C2A0B5: MemLdRfVar from_stack_1.global_36
  loc_C2A0B8: CVarRef
  loc_C2A0BD: FLdRfVar var_14C
  loc_C2A0C0: ImpAdCallFPR4  = Round(, )
  loc_C2A0C5: AryUnlock
  loc_C2A0C8: FLdRfVar var_14C
  loc_C2A0CB: LitI4 2
  loc_C2A0D0: FLdI2 var_A2
  loc_C2A0D3: CI4UI1
  loc_C2A0D4: ILdRf var_A8
  loc_C2A0D7: AryLock
  loc_C2A0DA: Ary1LdPr
  loc_C2A0DB: MemLdRfVar from_stack_1.global_44
  loc_C2A0DE: CVarRef
  loc_C2A0E3: FLdRfVar var_178
  loc_C2A0E6: ImpAdCallFPR4  = Round(, )
  loc_C2A0EB: AryUnlock
  loc_C2A0EE: FLdRfVar var_178
  loc_C2A0F1: SubVar var_218
  loc_C2A0F5: LitVarI2 var_168, 0
  loc_C2A0FA: HardType
  loc_C2A0FB: GtVarBool
  loc_C2A0FD: FFreeVar var_14C = ""
  loc_C2A104: BranchF loc_C2A23B
  loc_C2A107: ILdRf var_A0
  loc_C2A10A: LitStr "INSERT INTO liquidaneto (ExpeImpu,NumeLiqu,CucuPers,PeriInfo,CodiRete,CodiDere,CodiEsca,FechEsca,CodiCuco,TipoLine,MoinLine,ImpoLine,CertLine,AcbrLine,ReacLine)"
  loc_C2A10D: ConcatStr
  loc_C2A10E: FStStrNoPop var_114
  loc_C2A111: LitStr " VALUES ('"
  loc_C2A114: ConcatStr
  loc_C2A115: FStStrNoPop var_118
  loc_C2A118: ILdRf var_8C
  loc_C2A11B: ConcatStr
  loc_C2A11C: FStStrNoPop var_11C
  loc_C2A11F: LitStr "',@liqu,"
  loc_C2A122: ConcatStr
  loc_C2A123: FStStrNoPop var_150
  loc_C2A126: FLdI2 var_A2
  loc_C2A129: CI4UI1
  loc_C2A12A: ILdRf var_A8
  loc_C2A12D: Ary1LdPr
  loc_C2A12E: MemLdRfVar from_stack_1.global_0
  loc_C2A131: LdFixedStr
  loc_C2A134: FStStrNoPop var_154
  loc_C2A137: ConcatStr
  loc_C2A138: FStStrNoPop var_158
  loc_C2A13B: LitStr ","
  loc_C2A13E: ConcatStr
  loc_C2A13F: FStStrNoPop var_17C
  loc_C2A142: ImpAdLdI2 MemVar_C3D064
  loc_C2A145: CStrUI1
  loc_C2A147: FStStrNoPop var_180
  loc_C2A14A: ConcatStr
  loc_C2A14B: FStStrNoPop var_184
  loc_C2A14E: LitStr ",0,0,0,Null,'',0,"
  loc_C2A151: ConcatStr
  loc_C2A152: FStStrNoPop var_18C
  loc_C2A155: LitI4 2
  loc_C2A15A: FLdI2 var_A2
  loc_C2A15D: CI4UI1
  loc_C2A15E: ILdRf var_A8
  loc_C2A161: Ary1LdPr
  loc_C2A162: MemLdFPR8 global_36
  loc_C2A165: LitI2_Byte 1
  loc_C2A167: CR8I2
  loc_C2A168: DivR8
  loc_C2A169: CVarR8
  loc_C2A16D: FLdRfVar var_178
  loc_C2A170: ImpAdCallFPR4  = Round(, )
  loc_C2A175: FLdRfVar var_178
  loc_C2A178: CStrVarVal var_188
  loc_C2A17C: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A181: FStStrNoPop var_190
  loc_C2A184: ConcatStr
  loc_C2A185: FStStrNoPop var_1C8
  loc_C2A188: LitStr ","
  loc_C2A18B: ConcatStr
  loc_C2A18C: FStStrNoPop var_220
  loc_C2A18F: FLdI2 var_A2
  loc_C2A192: CI4UI1
  loc_C2A193: ILdRf var_A8
  loc_C2A196: Ary1LdPr
  loc_C2A197: MemLdFPR8 global_36
  loc_C2A19A: FLdI2 var_A2
  loc_C2A19D: CI4UI1
  loc_C2A19E: ILdRf var_A8
  loc_C2A1A1: Ary1LdPr
  loc_C2A1A2: MemLdFPR8 global_44
  loc_C2A1A5: SubR4
  loc_C2A1A6: CStrR8
  loc_C2A1A8: FStStrNoPop var_21C
  loc_C2A1AB: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A1B0: FStStrNoPop var_224
  loc_C2A1B3: ConcatStr
  loc_C2A1B4: FStStrNoPop var_228
  loc_C2A1B7: LitStr ",0,"
  loc_C2A1BA: ConcatStr
  loc_C2A1BB: FStStrNoPop var_230
  loc_C2A1BE: FLdFPR8 var_B8
  loc_C2A1C1: CStrR8
  loc_C2A1C3: FStStrNoPop var_22C
  loc_C2A1C6: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A1CB: FStStrNoPop var_234
  loc_C2A1CE: ConcatStr
  loc_C2A1CF: FStStrNoPop var_238
  loc_C2A1D2: LitStr ","
  loc_C2A1D5: ConcatStr
  loc_C2A1D6: FStStrNoPop var_240
  loc_C2A1D9: FLdI2 var_A2
  loc_C2A1DC: CI4UI1
  loc_C2A1DD: ILdRf var_A8
  loc_C2A1E0: Ary1LdPr
  loc_C2A1E1: MemLdFPR8 global_44
  loc_C2A1E4: CStrR8
  loc_C2A1E6: FStStrNoPop var_23C
  loc_C2A1E9: ImpAdCallI2 Proc_261_58_9952BC()
  loc_C2A1EE: FStStrNoPop var_244
  loc_C2A1F1: ConcatStr
  loc_C2A1F2: FStStrNoPop var_248
  loc_C2A1F5: LitStr ");"
  loc_C2A1F8: ConcatStr
  loc_C2A1F9: FStStr var_A0
  loc_C2A1FC: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_150 = "": var_154 = "": var_158 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1C8 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = ""
  loc_C2A231: FFreeVar var_14C = ""
  loc_C2A238: Branch loc_C2A2AD
  loc_C2A23B: LitI4 2
  loc_C2A240: FLdI2 var_A2
  loc_C2A243: CI4UI1
  loc_C2A244: ILdRf var_A8
  loc_C2A247: AryLock
  loc_C2A24A: Ary1LdPr
  loc_C2A24B: MemLdRfVar from_stack_1.global_36
  loc_C2A24E: CVarRef
  loc_C2A253: FLdRfVar var_14C
  loc_C2A256: ImpAdCallFPR4  = Round(, )
  loc_C2A25B: AryUnlock
  loc_C2A25E: FLdRfVar var_14C
  loc_C2A261: LitI4 2
  loc_C2A266: FLdI2 var_A2
  loc_C2A269: CI4UI1
  loc_C2A26A: ILdRf var_A8
  loc_C2A26D: AryLock
  loc_C2A270: Ary1LdPr
  loc_C2A271: MemLdRfVar from_stack_1.global_44
  loc_C2A274: CVarRef
  loc_C2A279: FLdRfVar var_178
  loc_C2A27C: ImpAdCallFPR4  = Round(, )
  loc_C2A281: AryUnlock
  loc_C2A284: FLdRfVar var_178
  loc_C2A287: SubVar var_218
  loc_C2A28B: LitVarI2 var_168, 0
  loc_C2A290: HardType
  loc_C2A291: LtVarBool
  loc_C2A293: FFreeVar var_14C = ""
  loc_C2A29A: BranchF loc_C2A2AD
  loc_C2A29D: LitI4 0
  loc_C2A2A2: LitStr "ERROR: Neto en negativo. Consulte con el Administrador..."
  loc_C2A2A5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2A2AA: Branch loc_C2A30E
  loc_C2A2AD: FLdRfVar var_A2
  loc_C2A2B0: NextI2 var_854, loc_C2A0A5
  loc_C2A2B5: ILdRf var_A0
  loc_C2A2B8: Call EjecutarRsCls(from_stack_1v)
  loc_C2A2BD: LitStr "COMMIT;"
  loc_C2A2C0: Call EjecutarRsCls(from_stack_1v)
  loc_C2A2C5: LitStr "SELECT Cast(@liqu AS UNSIGNED) AS Liqu;"
  loc_C2A2C8: Call EjecutarRsCls(from_stack_1v)
  loc_C2A2CD: FLdRfVar var_14C
  loc_C2A2D0: FLdRfVar var_39C
  loc_C2A2D3: LitVarStr var_12C, "Liqu"
  loc_C2A2D8: PopAdLdVar
  loc_C2A2D9: FLdRfVar var_398
  loc_C2A2DC: FLdPr Me
  loc_C2A2DF: MemLdPr global_56
  loc_C2A2E2:  = Me.Fields
  loc_C2A2E7: FLdPr var_398
  loc_C2A2EA: from_stack_2 = Me.Item(from_stack_1)
  loc_C2A2EF: FLdPr var_39C
  loc_C2A2F2:  = Me.Value
  loc_C2A2F7: FLdRfVar var_14C
  loc_C2A2FA: CI2Var
  loc_C2A2FB: FStI2 var_86
  loc_C2A2FE: FFreeAd var_398 = ""
  loc_C2A305: FFree1Var var_14C = ""
  loc_C2A308: ExitProcCbHresult
  loc_C2A30E: LitStr "ROLLBACK;"
  loc_C2A311: Call EjecutarRsCls(from_stack_1v)
  loc_C2A316: LitI2_Byte 0
  loc_C2A318: FStI2 var_86
  loc_C2A31B: LitI4 0
  loc_C2A320: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C2A323: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C2A328: ExitProcCbHresult
End Function

Public Sub ModificarDetaLiqu(ExpeImpu, NumeLiqu, DetaLiqu) '99C6C0
  'Data Table: 42D3EC
  loc_99C668: ILdRf ExpeImpu
  loc_99C66B: FStStrCopy var_88
  loc_99C66E: ILdRf DetaLiqu
  loc_99C671: FStStrCopy var_8C
  loc_99C674: LitStr "UPDATE liquidacion SET DetaLiqu='"
  loc_99C677: ILdRf var_8C
  loc_99C67A: ConcatStr
  loc_99C67B: FStStrNoPop var_90
  loc_99C67E: LitStr "',AltaUsua=@sUsuario WHERE ExpeImpu='"
  loc_99C681: ConcatStr
  loc_99C682: FStStrNoPop var_94
  loc_99C685: ILdRf var_88
  loc_99C688: ConcatStr
  loc_99C689: FStStrNoPop var_98
  loc_99C68C: LitStr "' AND NumeLiqu = "
  loc_99C68F: ConcatStr
  loc_99C690: FStStrNoPop var_9C
  loc_99C693: FLdI2 NumeLiqu
  loc_99C696: CStrUI1
  loc_99C698: FStStrNoPop var_A0
  loc_99C69B: ConcatStr
  loc_99C69C: FStStrNoPop var_A4
  loc_99C69F: Call EjecutarRsCls(from_stack_1v)
  loc_99C6A4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99C6B3: FLdI2 NumeLiqu
  loc_99C6B6: ILdRf var_88
  loc_99C6B9: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_99C6BE: ExitProcHresult
  loc_99C6BF: ConcatStr
End Sub

Public Function ValidaEliminar(ExpeImpu, NumeLiqu) '99B9E0
  'Data Table: 42D3EC
  loc_99B984: ILdRf ExpeImpu
  loc_99B987: FStStrCopy var_8C
  loc_99B98A: LitStr "SELECT * FROM ordenpago WHERE ExpeImpu = '"
  loc_99B98D: ILdRf var_8C
  loc_99B990: ConcatStr
  loc_99B991: FStStrNoPop var_90
  loc_99B994: LitStr "' AND NumeLiqu = "
  loc_99B997: ConcatStr
  loc_99B998: FStStrNoPop ValidaEliminar
  loc_99B99B: FLdI2 NumeLiqu
  loc_99B99E: CStrUI1
  loc_99B9A0: FStStrNoPop var_98
  loc_99B9A3: ConcatStr
  loc_99B9A4: FStStrNoPop var_9C
  loc_99B9A7: LitStr ";"
  loc_99B9AA: ConcatStr
  loc_99B9AB: FStStrNoPop var_A0
  loc_99B9AE: Call EjecutarRsCls(from_stack_1v)
  loc_99B9B3: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_99B9C0: FLdRfVar var_A4
  loc_99B9C3: FLdPr Me
  loc_99B9C6: MemLdPr global_56
  loc_99B9C9:  = Me.RecordCount
  loc_99B9CE: ILdRf var_A4
  loc_99B9D1: LitI4 0
  loc_99B9D6: EqI4
  loc_99B9D7: FStI2 var_86
  loc_99B9DA: ExitProcCbHresult
End Function

Public Function ValidaAnular(ExpeImpu, NumeLiqu) '9AB340
  'Data Table: 42D3EC
  loc_9AB2C0: ILdRf ExpeImpu
  loc_9AB2C3: FStStrCopy var_8C
  loc_9AB2C6: ZeroRetVal
  loc_9AB2C8: LitStr "SELECT IFNULL(Group_concat(Distinct NumeOrpa),'') distNumeOrpa FROM ordenpago WHERE ExpeImpu = '"
  loc_9AB2CB: ILdRf var_8C
  loc_9AB2CE: ConcatStr
  loc_9AB2CF: FStStrNoPop var_90
  loc_9AB2D2: LitStr "' AND NumeLiqu = "
  loc_9AB2D5: ConcatStr
  loc_9AB2D6: FStStrNoPop ValidaAnular
  loc_9AB2D9: FLdI2 NumeLiqu
  loc_9AB2DC: CStrUI1
  loc_9AB2DE: FStStrNoPop var_98
  loc_9AB2E1: ConcatStr
  loc_9AB2E2: FStStrNoPop var_9C
  loc_9AB2E5: LitStr " AND FeanOrpa IS NULL;"
  loc_9AB2E8: ConcatStr
  loc_9AB2E9: FStStrNoPop var_A0
  loc_9AB2EC: Call EjecutarRsCls(from_stack_1v)
  loc_9AB2F1: FFreeStr var_90 = "": ValidaAnular = "": var_98 = "": var_9C = ""
  loc_9AB2FE: FLdRfVar var_C8
  loc_9AB301: FLdRfVar var_B8
  loc_9AB304: LitVarStr var_B4, "distNumeOrpa"
  loc_9AB309: PopAdLdVar
  loc_9AB30A: FLdRfVar var_A4
  loc_9AB30D: FLdPr Me
  loc_9AB310: MemLdPr global_56
  loc_9AB313:  = Me.Fields
  loc_9AB318: FLdPr var_A4
  loc_9AB31B: from_stack_2 = Me.Item(from_stack_1)
  loc_9AB320: FLdPr var_B8
  loc_9AB323:  = Me.Value
  loc_9AB328: FLdRfVar var_C8
  loc_9AB32B: CStrVarTmp
  loc_9AB32C: FStStr var_88
  loc_9AB32F: FFreeAd var_A4 = ""
  loc_9AB336: FFree1Var var_C8 = ""
  loc_9AB339: ExitProcCbHresult
End Function

Public Sub Eliminar(PeriInfo, ExpeImpu, NumeLiqu, iTipoLiqu) '9F947C
  'Data Table: 42D3EC
  loc_9F9348: ILdRf ExpeImpu
  loc_9F934B: FStStrCopy var_88
  loc_9F934E: OnErrorGoto loc_9F9472
  loc_9F9351: LitStr "START TRANSACTION;"
  loc_9F9354: FStStrCopy var_8C
  loc_9F9357: ILdRf var_8C
  loc_9F935A: LitStr "SET @peri='"
  loc_9F935D: ConcatStr
  loc_9F935E: FStStrNoPop var_90
  loc_9F9361: FLdI2 PeriInfo
  loc_9F9364: CStrUI1
  loc_9F9366: FStStrNoPop var_94
  loc_9F9369: ConcatStr
  loc_9F936A: FStStrNoPop var_98
  loc_9F936D: LitStr "', @expe='"
  loc_9F9370: ConcatStr
  loc_9F9371: FStStrNoPop var_9C
  loc_9F9374: ILdRf var_88
  loc_9F9377: ConcatStr
  loc_9F9378: FStStrNoPop var_A0
  loc_9F937B: LitStr "', @liqu="
  loc_9F937E: ConcatStr
  loc_9F937F: FStStrNoPop var_A4
  loc_9F9382: FLdI2 NumeLiqu
  loc_9F9385: CStrUI1
  loc_9F9387: FStStrNoPop var_A8
  loc_9F938A: ConcatStr
  loc_9F938B: FStStrNoPop var_AC
  loc_9F938E: LitStr ";"
  loc_9F9391: ConcatStr
  loc_9F9392: FStStr var_8C
  loc_9F9395: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9F93A8: ILdRf var_8C
  loc_9F93AB: LitStr "DELETE FROM liquidacion WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93AE: ConcatStr
  loc_9F93AF: FStStr var_8C
  loc_9F93B2: FLdI2 iTipoLiqu
  loc_9F93B5: LitI2_Byte 1
  loc_9F93B7: EqI2
  loc_9F93B8: BranchF loc_9F93DD
  loc_9F93BB: ILdRf var_8C
  loc_9F93BE: LitStr " DELETE FROM imputacion WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu AND LiquImpu != 0;"
  loc_9F93C1: ConcatStr
  loc_9F93C2: FStStrNoPop var_90
  loc_9F93C5: LitStr " DELETE FROM liquidaneto WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93C8: ConcatStr
  loc_9F93C9: FStStrNoPop var_94
  loc_9F93CC: LitStr " DELETE FROM liquidarete WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93CF: ConcatStr
  loc_9F93D0: FStStr var_8C
  loc_9F93D3: FFreeStr var_90 = ""
  loc_9F93DA: Branch loc_9F9405
  loc_9F93DD: FLdI2 iTipoLiqu
  loc_9F93E0: LitI2_Byte 2
  loc_9F93E2: EqI2
  loc_9F93E3: BranchF loc_9F9405
  loc_9F93E6: ILdRf var_8C
  loc_9F93E9: LitStr " DELETE FROM liquidadeta WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93EC: ConcatStr
  loc_9F93ED: FStStrNoPop var_90
  loc_9F93F0: LitStr " DELETE FROM liquidaneto WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93F3: ConcatStr
  loc_9F93F4: FStStrNoPop var_94
  loc_9F93F7: LitStr " DELETE FROM liquidarete WHERE PeriInfo = @peri AND ExpeImpu = @expe AND NumeLiqu = @liqu;"
  loc_9F93FA: ConcatStr
  loc_9F93FB: FStStr var_8C
  loc_9F93FE: FFreeStr var_90 = ""
  loc_9F9405: ILdRf var_8C
  loc_9F9408: Call EjecutarRsCls(from_stack_1v)
  loc_9F940D: LitStr "COMMIT;"
  loc_9F9410: Call EjecutarRsCls(from_stack_1v)
  loc_9F9415: FLdRfVar var_B4
  loc_9F9418: FLdPr Me
  loc_9F941B: MemLdPr RsFrm
  loc_9F941E:  = Me.AbsolutePosition
  loc_9F9423: ILdRf var_B4
  loc_9F9426: FStR4 var_B0
  loc_9F9429: Call Requery()
  loc_9F942E: FLdRfVar var_B4
  loc_9F9431: FLdPr Me
  loc_9F9434: MemLdPr RsFrm
  loc_9F9437:  = Me.RecordCount
  loc_9F943C: ILdRf var_B4
  loc_9F943F: LitI4 0
  loc_9F9444: GtI4
  loc_9F9445: BranchF loc_9F9471
  loc_9F9448: Call MoveFirst()
  loc_9F944D: ILdRf var_B0
  loc_9F9450: LitI4 1
  loc_9F9455: GtI4
  loc_9F9456: BranchF loc_9F9471
  loc_9F9459: LitVar_Missing var_C4
  loc_9F945C: PopAdLdVar
  loc_9F945D: ILdRf var_B0
  loc_9F9460: LitI4 2
  loc_9F9465: SubI4
  loc_9F9466: FLdPr Me
  loc_9F9469: MemLdPr RsFrm
  loc_9F946C: Me.Move from_stack_1, from_stack_2
  loc_9F9471: ExitProcHresult
  loc_9F9472: LitStr "ROLLBACK;"
  loc_9F9475: Call EjecutarRsCls(from_stack_1v)
  loc_9F947A: ExitProcHresult
  loc_9F947B: PopAdLdVar
End Sub

Public Sub Anular(ExpeImpu, NumeLiqu, FeanLiqu, TipoLiqu) 'A70CEC
  'Data Table: 42D3EC
  loc_A7098C: ILdRf ExpeImpu
  loc_A7098F: FStStrCopy var_88
  loc_A70992: ILdRf FeanLiqu
  loc_A70995: FStStrCopy var_8C
  loc_A70998: ILdRf TipoLiqu
  loc_A7099B: FStStrCopy var_90
  loc_A7099E: LitStr "SELECT Max(FeanOrpa) FeanOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A709A1: ImpAdLdI2 MemVar_C3D064
  loc_A709A4: CStrUI1
  loc_A709A6: FStStrNoPop var_94
  loc_A709A9: ConcatStr
  loc_A709AA: FStStrNoPop var_98
  loc_A709AD: LitStr " AND ExpeImpu = '"
  loc_A709B0: ConcatStr
  loc_A709B1: FStStrNoPop var_9C
  loc_A709B4: ILdRf var_88
  loc_A709B7: ConcatStr
  loc_A709B8: FStStrNoPop var_A0
  loc_A709BB: LitStr "' AND NumeLiqu = "
  loc_A709BE: ConcatStr
  loc_A709BF: FStStrNoPop var_A4
  loc_A709C2: FLdI2 NumeLiqu
  loc_A709C5: CStrUI1
  loc_A709C7: FStStrNoPop var_A8
  loc_A709CA: ConcatStr
  loc_A709CB: FStStrNoPop var_AC
  loc_A709CE: LitStr ";"
  loc_A709D1: ConcatStr
  loc_A709D2: FStStrNoPop var_B0
  loc_A709D5: Call EjecutarRsCls(from_stack_1v)
  loc_A709DA: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A709ED: FLdRfVar var_B4
  loc_A709F0: FLdPr Me
  loc_A709F3: MemLdPr global_56
  loc_A709F6:  = Me.RecordCount
  loc_A709FB: ILdRf var_B4
  loc_A709FE: LitI4 0
  loc_A70A03: GtI4
  loc_A70A04: BranchF loc_A70AB8
  loc_A70A07: FLdRfVar var_CC
  loc_A70A0A: LitVarStr var_C8, "FeanOrpa"
  loc_A70A0F: PopAdLdVar
  loc_A70A10: FLdRfVar var_B8
  loc_A70A13: FLdPr Me
  loc_A70A16: MemLdPr global_56
  loc_A70A19:  = Me.Fields
  loc_A70A1E: FLdPr var_B8
  loc_A70A21: from_stack_2 = Me.Item(from_stack_1)
  loc_A70A26: FLdZeroAd var_CC
  loc_A70A29: CVarAd
  loc_A70A2D: ImpAdCallI2 IsDate()
  loc_A70A32: FFree1Ad var_B8
  loc_A70A35: FFree1Var var_DC = ""
  loc_A70A38: BranchF loc_A70AB8
  loc_A70A3B: FLdRfVar var_DC
  loc_A70A3E: FLdRfVar var_CC
  loc_A70A41: LitVarStr var_C8, "FeanOrpa"
  loc_A70A46: PopAdLdVar
  loc_A70A47: FLdRfVar var_B8
  loc_A70A4A: FLdPr Me
  loc_A70A4D: MemLdPr global_56
  loc_A70A50:  = Me.Fields
  loc_A70A55: FLdPr var_B8
  loc_A70A58: from_stack_2 = Me.Item(from_stack_1)
  loc_A70A5D: FLdPr var_CC
  loc_A70A60:  = Me.Value
  loc_A70A65: FLdRfVar var_DC
  loc_A70A68: FnCDateVar
  loc_A70A6A: ILdRf var_8C
  loc_A70A6D: CDateStr
  loc_A70A6F: GtR4
  loc_A70A70: FFreeAd var_B8 = ""
  loc_A70A77: FFree1Var var_DC = ""
  loc_A70A7A: BranchF loc_A70AB8
  loc_A70A7D: FLdRfVar var_DC
  loc_A70A80: FLdRfVar var_CC
  loc_A70A83: LitVarStr var_C8, "FeanOrpa"
  loc_A70A88: PopAdLdVar
  loc_A70A89: FLdRfVar var_B8
  loc_A70A8C: FLdPr Me
  loc_A70A8F: MemLdPr global_56
  loc_A70A92:  = Me.Fields
  loc_A70A97: FLdPr var_B8
  loc_A70A9A: from_stack_2 = Me.Item(from_stack_1)
  loc_A70A9F: FLdPr var_CC
  loc_A70AA2:  = Me.Value
  loc_A70AA7: FLdRfVar var_DC
  loc_A70AAA: CStrVarTmp
  loc_A70AAB: FStStr var_8C
  loc_A70AAE: FFreeAd var_B8 = ""
  loc_A70AB5: FFree1Var var_DC = ""
  loc_A70AB8: ILdRf var_90
  loc_A70ABB: CR8Str
  loc_A70ABD: LitI2_Byte 1
  loc_A70ABF: CR8I2
  loc_A70AC0: EqR4
  loc_A70AC1: BranchF loc_A70C53
  loc_A70AC4: LitStr "START TRANSACTION;"
  loc_A70AC7: Call EjecutarRsCls(from_stack_1v)
  loc_A70ACC: LitStr "UPDATE liquidacion l"
  loc_A70ACF: LitStr " SET FeanLiqu = "
  loc_A70AD2: ConcatStr
  loc_A70AD3: FStStrNoPop var_94
  loc_A70AD6: LitI4 1
  loc_A70ADB: LitI4 1
  loc_A70AE0: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_A70AE5: FStVarCopyObj var_DC
  loc_A70AE8: FLdRfVar var_DC
  loc_A70AEB: FLdRfVar var_8C
  loc_A70AEE: CVarRef
  loc_A70AF3: ImpAdCallI2 Format$(, )
  loc_A70AF8: FStStrNoPop var_98
  loc_A70AFB: ConcatStr
  loc_A70AFC: FStStrNoPop var_9C
  loc_A70AFF: LitStr ", BajaUsua='"
  loc_A70B02: ConcatStr
  loc_A70B03: FStStrNoPop var_A0
  loc_A70B06: ImpAdLdI4 MemVar_C3D03C
  loc_A70B09: ConcatStr
  loc_A70B0A: FStStrNoPop var_A4
  loc_A70B0D: LitStr "', BajaFeho=Now(), BajaMoti='Anulación por error'"
  loc_A70B10: ConcatStr
  loc_A70B11: FStStrNoPop var_A8
  loc_A70B14: LitStr " WHERE l.ExpeImpu = '"
  loc_A70B17: ConcatStr
  loc_A70B18: FStStrNoPop var_AC
  loc_A70B1B: ILdRf var_88
  loc_A70B1E: ConcatStr
  loc_A70B1F: FStStrNoPop var_B0
  loc_A70B22: LitStr "' AND l.NumeLiqu = "
  loc_A70B25: ConcatStr
  loc_A70B26: FStStrNoPop var_F0
  loc_A70B29: FLdI2 NumeLiqu
  loc_A70B2C: CStrUI1
  loc_A70B2E: FStStrNoPop var_F4
  loc_A70B31: ConcatStr
  loc_A70B32: FStStrNoPop var_F8
  loc_A70B35: LitStr ";"
  loc_A70B38: ConcatStr
  loc_A70B39: FStStrNoPop var_FC
  loc_A70B3C: Call EjecutarRsCls(from_stack_1v)
  loc_A70B41: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_A70B5C: FFree1Var var_DC = ""
  loc_A70B5F: LitStr "SELECT @idimpu:=Max(i.IdImpu) FROM imputacion i WHERE i.PeriInfo = "
  loc_A70B62: ImpAdLdI2 MemVar_C3D064
  loc_A70B65: CStrUI1
  loc_A70B67: FStStrNoPop var_94
  loc_A70B6A: ConcatStr
  loc_A70B6B: FStStrNoPop var_98
  loc_A70B6E: LitStr "; "
  loc_A70B71: ConcatStr
  loc_A70B72: FStStrNoPop var_9C
  loc_A70B75: LitStr "INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)"
  loc_A70B78: ConcatStr
  loc_A70B79: FStStrNoPop var_A0
  loc_A70B7C: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_A70B7F: ConcatStr
  loc_A70B80: FStStrNoPop var_A4
  loc_A70B83: LitI4 1
  loc_A70B88: LitI4 1
  loc_A70B8D: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_A70B92: FStVarCopyObj var_DC
  loc_A70B95: FLdRfVar var_DC
  loc_A70B98: FLdRfVar var_8C
  loc_A70B9B: CVarRef
  loc_A70BA0: ImpAdCallI2 Format$(, )
  loc_A70BA5: FStStrNoPop var_A8
  loc_A70BA8: ConcatStr
  loc_A70BA9: FStStrNoPop var_AC
  loc_A70BAC: LitStr " FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu*-1 ImunImpu, LiquImpu*-1 LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_A70BAF: ConcatStr
  loc_A70BB0: FStStrNoPop var_B0
  loc_A70BB3: ImpAdLdI4 MemVar_C3D03C
  loc_A70BB6: ConcatStr
  loc_A70BB7: FStStrNoPop var_F0
  loc_A70BBA: LitStr "'"
  loc_A70BBD: ConcatStr
  loc_A70BBE: FStStrNoPop var_F4
  loc_A70BC1: LitStr " FROM ("
  loc_A70BC4: ConcatStr
  loc_A70BC5: FStStrNoPop var_F8
  loc_A70BC8: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve"
  loc_A70BCB: ConcatStr
  loc_A70BCC: FStStrNoPop var_FC
  loc_A70BCF: LitStr " FROM imputacion i"
  loc_A70BD2: ConcatStr
  loc_A70BD3: FStStrNoPop var_100
  loc_A70BD6: LitStr " WHERE i.PeriInfo = "
  loc_A70BD9: ConcatStr
  loc_A70BDA: FStStrNoPop var_104
  loc_A70BDD: ImpAdLdI2 MemVar_C3D064
  loc_A70BE0: CStrUI1
  loc_A70BE2: FStStrNoPop var_108
  loc_A70BE5: ConcatStr
  loc_A70BE6: FStStrNoPop var_10C
  loc_A70BE9: LitStr " AND LiquImpu != 0 AND ExpeImpu = '"
  loc_A70BEC: ConcatStr
  loc_A70BED: FStStrNoPop var_110
  loc_A70BF0: ILdRf var_88
  loc_A70BF3: ConcatStr
  loc_A70BF4: FStStrNoPop var_114
  loc_A70BF7: LitStr "' AND NumeLiqu = "
  loc_A70BFA: ConcatStr
  loc_A70BFB: FStStrNoPop var_118
  loc_A70BFE: FLdI2 NumeLiqu
  loc_A70C01: CStrUI1
  loc_A70C03: FStStrNoPop var_11C
  loc_A70C06: ConcatStr
  loc_A70C07: FStStrNoPop var_120
  loc_A70C0A: LitStr " ) AS tbl;"
  loc_A70C0D: ConcatStr
  loc_A70C0E: FStStrNoPop var_124
  loc_A70C11: Call EjecutarRsCls(from_stack_1v)
  loc_A70C16: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A70C45: FFree1Var var_DC = ""
  loc_A70C48: LitStr "COMMIT;"
  loc_A70C4B: Call EjecutarRsCls(from_stack_1v)
  loc_A70C50: Branch loc_A70CE9
  loc_A70C53: ILdRf var_90
  loc_A70C56: CR8Str
  loc_A70C58: LitI2_Byte 2
  loc_A70C5A: CR8I2
  loc_A70C5B: EqR4
  loc_A70C5C: BranchF loc_A70CE9
  loc_A70C5F: LitStr "UPDATE liquidacion l"
  loc_A70C62: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = l.ExpeImpu AND ld.NumeLiqu = l.NumeLiqu"
  loc_A70C65: ConcatStr
  loc_A70C66: FStStrNoPop var_94
  loc_A70C69: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_A70C6C: ConcatStr
  loc_A70C6D: FStStrNoPop var_98
  loc_A70C70: LitStr " SET FeanLiqu="
  loc_A70C73: ConcatStr
  loc_A70C74: FStStrNoPop var_9C
  loc_A70C77: LitI4 1
  loc_A70C7C: LitI4 1
  loc_A70C81: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_A70C86: FStVarCopyObj var_DC
  loc_A70C89: FLdRfVar var_DC
  loc_A70C8C: FLdRfVar var_8C
  loc_A70C8F: CVarRef
  loc_A70C94: ImpAdCallI2 Format$(, )
  loc_A70C99: FStStrNoPop var_A0
  loc_A70C9C: ConcatStr
  loc_A70C9D: FStStrNoPop var_A4
  loc_A70CA0: LitStr ", l.BajaMoti='Anulación por error'"
  loc_A70CA3: ConcatStr
  loc_A70CA4: FStStrNoPop var_A8
  loc_A70CA7: LitStr " WHERE l.ExpeImpu = '"
  loc_A70CAA: ConcatStr
  loc_A70CAB: FStStrNoPop var_AC
  loc_A70CAE: ILdRf var_88
  loc_A70CB1: ConcatStr
  loc_A70CB2: FStStrNoPop var_B0
  loc_A70CB5: LitStr "' AND l.NumeLiqu = "
  loc_A70CB8: ConcatStr
  loc_A70CB9: FStStrNoPop var_F0
  loc_A70CBC: FLdI2 NumeLiqu
  loc_A70CBF: CStrUI1
  loc_A70CC1: FStStrNoPop var_F4
  loc_A70CC4: ConcatStr
  loc_A70CC5: FStStrNoPop var_F8
  loc_A70CC8: Call EjecutarRsCls(from_stack_1v)
  loc_A70CCD: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_F0 = "": var_F4 = ""
  loc_A70CE6: FFree1Var var_DC = ""
  loc_A70CE9: ExitProcHresult
  loc_A70CEA: MemLdPr global_29699
End Sub

Public Sub RedefineRS(sSelect) '972AE4
  'Data Table: 42D3EC
  loc_972ABC: ILdRf sSelect
  loc_972ABF: FStStrCopy var_88
  loc_972AC2: FLdPr Me
  loc_972AC5: MemLdRfVar from_stack_1.RsFrm
  loc_972AC8: ILdRf var_88
  loc_972ACB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_972AD0: LitVarStr var_98, "Primary"
  loc_972AD5: PopAdLdVar
  loc_972AD6: FLdPr Me
  loc_972AD9: LateIdCall
  loc_972AE1: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '95D734
  'Data Table: 42D3EC
  loc_95D71C: ILdRf sSelect
  loc_95D71F: FStStrCopy var_88
  loc_95D722: FLdPr Me
  loc_95D725: MemLdRfVar from_stack_1.global_56
  loc_95D728: ILdRf var_88
  loc_95D72B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95D730: ExitProcHresult
End Sub

Public Sub Requery() '968930
  'Data Table: 42D3EC
  loc_968910: FLdPr Me
  loc_968913: MemLdRfVar from_stack_1.RsFrm
  loc_968916: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96891B: LitVarStr var_94, "Primary"
  loc_968920: PopAdLdVar
  loc_968921: FLdPr Me
  loc_968924: LateIdCall
  loc_96892C: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) '95D69C
  'Data Table: 42D3EC
  loc_95D684: ILdRf sSelect
  loc_95D687: FStStrCopy var_88
  loc_95D68A: FLdPr Me
  loc_95D68D: MemLdRfVar from_stack_1.global_60
  loc_95D690: ILdRf var_88
  loc_95D693: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95D698: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) '95D604
  'Data Table: 42D3EC
  loc_95D5EC: ILdRf sSelect
  loc_95D5EF: FStStrCopy var_88
  loc_95D5F2: FLdPr Me
  loc_95D5F5: MemLdRfVar from_stack_1.global_64
  loc_95D5F8: ILdRf var_88
  loc_95D5FB: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95D600: ExitProcHresult
  loc_95D601: Ary1StI2
  loc_95D602: EqR4
End Sub

Public Sub EjecutarRsCls4(sSelect) '95D56C
  'Data Table: 42D3EC
  loc_95D554: ILdRf sSelect
  loc_95D557: FStStrCopy var_88
  loc_95D55A: FLdPr Me
  loc_95D55D: MemLdRfVar from_stack_1.global_68
  loc_95D560: ILdRf var_88
  loc_95D563: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95D568: ExitProcHresult
  loc_95D569: UMiCy
  loc_95D56A: GtI4
End Sub

Public Property Get DataSource() '972CAC
  'Data Table: 42D3EC
  loc_972C88: ZeroRetVal
  loc_972C8A: FLdRfVar var_8C
  loc_972C8D: FLdPr Me
  loc_972C90: MemLdPr RsFrm
  loc_972C93:  = Me.DataSource
  loc_972C98: ILdRf var_8C
  loc_972C9B: CastAd
  loc_972C9E: FStAdFunc var_88
  loc_972CA1: FFree1Ad var_8C
  loc_972CA4: ExitProcCbHresult
  loc_972CAA: FLdFPR8 arg_7468
End Sub

Public Function UltimaFechLiqu(PeriInfo, ExpeImpu, Tipo) 'A8512C
  'Data Table: 42D3EC
  loc_A84D1C: ILdRf ExpeImpu
  loc_A84D1F: FStStrCopy var_8C
  loc_A84D22: ILdRf Tipo
  loc_A84D25: FStStrCopy var_90
  loc_A84D28: ZeroRetVal
  loc_A84D2A: ImpAdLdI2 MemVar_C3D048
  loc_A84D2D: BranchF loc_A85117
  loc_A84D30: LitStr "SELECT IFNULL(FeproPaco, CONVERT('"
  loc_A84D33: FLdI2 PeriInfo
  loc_A84D36: CStrUI1
  loc_A84D38: FStStrNoPop UltimaFechLiqu
  loc_A84D3B: ConcatStr
  loc_A84D3C: FStStrNoPop var_98
  loc_A84D3F: LitStr "-01-01', DATE)) FeproPaco"
  loc_A84D42: ConcatStr
  loc_A84D43: FStStrNoPop var_9C
  loc_A84D46: LitStr " FROM paraconta"
  loc_A84D49: ConcatStr
  loc_A84D4A: FStStrNoPop var_A0
  loc_A84D4D: LitStr " WHERE PeriInfo = "
  loc_A84D50: ConcatStr
  loc_A84D51: FStStrNoPop var_A4
  loc_A84D54: FLdI2 PeriInfo
  loc_A84D57: CStrUI1
  loc_A84D59: FStStrNoPop var_A8
  loc_A84D5C: ConcatStr
  loc_A84D5D: FStStrNoPop var_AC
  loc_A84D60: LitStr ";"
  loc_A84D63: ConcatStr
  loc_A84D64: FStStrNoPop var_B0
  loc_A84D67: Call EjecutarRsCls(from_stack_1v)
  loc_A84D6C: FFreeStr UltimaFechLiqu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A84D7F: FLdRfVar var_D8
  loc_A84D82: FLdRfVar var_C8
  loc_A84D85: LitVarStr var_C4, "FeproPaco"
  loc_A84D8A: PopAdLdVar
  loc_A84D8B: FLdRfVar var_B4
  loc_A84D8E: FLdPr Me
  loc_A84D91: MemLdPr global_56
  loc_A84D94:  = Me.Fields
  loc_A84D99: FLdPr var_B4
  loc_A84D9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A84DA1: FLdPr var_C8
  loc_A84DA4:  = Me.Value
  loc_A84DA9: FLdRfVar var_D8
  loc_A84DAC: FnCDateVar
  loc_A84DAE: LitI2_Byte 1
  loc_A84DB0: CR8I2
  loc_A84DB1: AddR8
  loc_A84DB2: CDateR8
  loc_A84DB3: CStrDate
  loc_A84DB5: FStStr var_88
  loc_A84DB8: FFreeAd var_B4 = ""
  loc_A84DBF: FFree1Var var_D8 = ""
  loc_A84DC2: ILdRf var_90
  loc_A84DC5: LitStr "Devengado"
  loc_A84DC8: EqStr
  loc_A84DCA: BranchF loc_A84EE3
  loc_A84DCD: LitStr "SELECT IFNULL(Max(FechImpu),'') FechImpu"
  loc_A84DD0: LitStr " FROM imputacion"
  loc_A84DD3: ConcatStr
  loc_A84DD4: FStStrNoPop UltimaFechLiqu
  loc_A84DD7: LitStr " WHERE PeriInfo = "
  loc_A84DDA: ConcatStr
  loc_A84DDB: FStStrNoPop var_98
  loc_A84DDE: FLdI2 PeriInfo
  loc_A84DE1: CStrUI1
  loc_A84DE3: FStStrNoPop var_9C
  loc_A84DE6: ConcatStr
  loc_A84DE7: FStStrNoPop var_A0
  loc_A84DEA: LitStr " AND ExpeImpu = '"
  loc_A84DED: ConcatStr
  loc_A84DEE: FStStrNoPop var_A4
  loc_A84DF1: ILdRf var_8C
  loc_A84DF4: ConcatStr
  loc_A84DF5: FStStrNoPop var_A8
  loc_A84DF8: LitStr "'"
  loc_A84DFB: ConcatStr
  loc_A84DFC: FStStrNoPop var_AC
  loc_A84DFF: LitStr " AND (DeveImpu != 0 OR LiquImpu != 0);"
  loc_A84E02: ConcatStr
  loc_A84E03: FStStrNoPop var_B0
  loc_A84E06: Call EjecutarRsCls(from_stack_1v)
  loc_A84E0B: FFreeStr UltimaFechLiqu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A84E1E: FLdRfVar var_D8
  loc_A84E21: FLdRfVar var_C8
  loc_A84E24: LitVarStr var_C4, "FechImpu"
  loc_A84E29: PopAdLdVar
  loc_A84E2A: FLdRfVar var_B4
  loc_A84E2D: FLdPr Me
  loc_A84E30: MemLdPr global_56
  loc_A84E33:  = Me.Fields
  loc_A84E38: FLdPr var_B4
  loc_A84E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_A84E40: FLdPr var_C8
  loc_A84E43:  = Me.Value
  loc_A84E48: FLdRfVar var_D8
  loc_A84E4B: LitVarStr var_E8, vbNullString
  loc_A84E50: HardType
  loc_A84E51: NeVarBool
  loc_A84E53: FFreeAd var_B4 = ""
  loc_A84E5A: FFree1Var var_D8 = ""
  loc_A84E5D: BranchF loc_A84EE0
  loc_A84E60: FLdRfVar var_D8
  loc_A84E63: FLdRfVar var_C8
  loc_A84E66: LitVarStr var_C4, "FechImpu"
  loc_A84E6B: PopAdLdVar
  loc_A84E6C: FLdRfVar var_B4
  loc_A84E6F: FLdPr Me
  loc_A84E72: MemLdPr global_56
  loc_A84E75:  = Me.Fields
  loc_A84E7A: FLdPr var_B4
  loc_A84E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A84E82: FLdPr var_C8
  loc_A84E85:  = Me.Value
  loc_A84E8A: FLdRfVar var_D8
  loc_A84E8D: FnCDateVar
  loc_A84E8F: ILdRf var_88
  loc_A84E92: CDateStr
  loc_A84E94: GtR4
  loc_A84E95: FFreeAd var_B4 = ""
  loc_A84E9C: FFree1Var var_D8 = ""
  loc_A84E9F: BranchF loc_A84EE0
  loc_A84EA2: FLdRfVar var_D8
  loc_A84EA5: FLdRfVar var_C8
  loc_A84EA8: LitVarStr var_C4, "FechImpu"
  loc_A84EAD: PopAdLdVar
  loc_A84EAE: FLdRfVar var_B4
  loc_A84EB1: FLdPr Me
  loc_A84EB4: MemLdPr global_56
  loc_A84EB7:  = Me.Fields
  loc_A84EBC: FLdPr var_B4
  loc_A84EBF: from_stack_2 = Me.Item(from_stack_1)
  loc_A84EC4: FLdPr var_C8
  loc_A84EC7:  = Me.Value
  loc_A84ECC: FLdRfVar var_D8
  loc_A84ECF: FnCDateVar
  loc_A84ED1: CStrDate
  loc_A84ED3: FStStr var_88
  loc_A84ED6: FFreeAd var_B4 = ""
  loc_A84EDD: FFree1Var var_D8 = ""
  loc_A84EE0: Branch loc_A85001
  loc_A84EE3: ILdRf var_90
  loc_A84EE6: LitStr "Debito"
  loc_A84EE9: EqStr
  loc_A84EEB: BranchF loc_A85001
  loc_A84EEE: LitStr "SELECT IFNULL(Max(FechDebi),'') FechDebi"
  loc_A84EF1: LitStr " FROM debito"
  loc_A84EF4: ConcatStr
  loc_A84EF5: FStStrNoPop UltimaFechLiqu
  loc_A84EF8: LitStr " WHERE PeriInfo = "
  loc_A84EFB: ConcatStr
  loc_A84EFC: FStStrNoPop var_98
  loc_A84EFF: FLdI2 PeriInfo
  loc_A84F02: CStrUI1
  loc_A84F04: FStStrNoPop var_9C
  loc_A84F07: ConcatStr
  loc_A84F08: FStStrNoPop var_A0
  loc_A84F0B: LitStr " AND ExpeImpu = '"
  loc_A84F0E: ConcatStr
  loc_A84F0F: FStStrNoPop var_A4
  loc_A84F12: ILdRf var_8C
  loc_A84F15: ConcatStr
  loc_A84F16: FStStrNoPop var_A8
  loc_A84F19: LitStr "'"
  loc_A84F1C: ConcatStr
  loc_A84F1D: FStStrNoPop var_AC
  loc_A84F20: LitStr " ;"
  loc_A84F23: ConcatStr
  loc_A84F24: FStStrNoPop var_B0
  loc_A84F27: Call EjecutarRsCls(from_stack_1v)
  loc_A84F2C: FFreeStr UltimaFechLiqu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A84F3F: FLdRfVar var_D8
  loc_A84F42: FLdRfVar var_C8
  loc_A84F45: LitVarStr var_C4, "FechDebi"
  loc_A84F4A: PopAdLdVar
  loc_A84F4B: FLdRfVar var_B4
  loc_A84F4E: FLdPr Me
  loc_A84F51: MemLdPr global_56
  loc_A84F54:  = Me.Fields
  loc_A84F59: FLdPr var_B4
  loc_A84F5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A84F61: FLdPr var_C8
  loc_A84F64:  = Me.Value
  loc_A84F69: FLdRfVar var_D8
  loc_A84F6C: LitVarStr var_E8, vbNullString
  loc_A84F71: HardType
  loc_A84F72: NeVarBool
  loc_A84F74: FFreeAd var_B4 = ""
  loc_A84F7B: FFree1Var var_D8 = ""
  loc_A84F7E: BranchF loc_A85001
  loc_A84F81: FLdRfVar var_D8
  loc_A84F84: FLdRfVar var_C8
  loc_A84F87: LitVarStr var_C4, "FechDebi"
  loc_A84F8C: PopAdLdVar
  loc_A84F8D: FLdRfVar var_B4
  loc_A84F90: FLdPr Me
  loc_A84F93: MemLdPr global_56
  loc_A84F96:  = Me.Fields
  loc_A84F9B: FLdPr var_B4
  loc_A84F9E: from_stack_2 = Me.Item(from_stack_1)
  loc_A84FA3: FLdPr var_C8
  loc_A84FA6:  = Me.Value
  loc_A84FAB: FLdRfVar var_D8
  loc_A84FAE: FnCDateVar
  loc_A84FB0: ILdRf var_88
  loc_A84FB3: CDateStr
  loc_A84FB5: GtR4
  loc_A84FB6: FFreeAd var_B4 = ""
  loc_A84FBD: FFree1Var var_D8 = ""
  loc_A84FC0: BranchF loc_A85001
  loc_A84FC3: FLdRfVar var_D8
  loc_A84FC6: FLdRfVar var_C8
  loc_A84FC9: LitVarStr var_C4, "FechDebi"
  loc_A84FCE: PopAdLdVar
  loc_A84FCF: FLdRfVar var_B4
  loc_A84FD2: FLdPr Me
  loc_A84FD5: MemLdPr global_56
  loc_A84FD8:  = Me.Fields
  loc_A84FDD: FLdPr var_B4
  loc_A84FE0: from_stack_2 = Me.Item(from_stack_1)
  loc_A84FE5: FLdPr var_C8
  loc_A84FE8:  = Me.Value
  loc_A84FED: FLdRfVar var_D8
  loc_A84FF0: FnCDateVar
  loc_A84FF2: CStrDate
  loc_A84FF4: FStStr var_88
  loc_A84FF7: FFreeAd var_B4 = ""
  loc_A84FFE: FFree1Var var_D8 = ""
  loc_A85001: LitStr "SELECT IFNULL(Max(FechLiqu),'') FechLiqu"
  loc_A85004: LitStr " FROM liquidacion"
  loc_A85007: ConcatStr
  loc_A85008: FStStrNoPop UltimaFechLiqu
  loc_A8500B: LitStr " WHERE PeriInfo = "
  loc_A8500E: ConcatStr
  loc_A8500F: FStStrNoPop var_98
  loc_A85012: FLdI2 PeriInfo
  loc_A85015: CStrUI1
  loc_A85017: FStStrNoPop var_9C
  loc_A8501A: ConcatStr
  loc_A8501B: FStStrNoPop var_A0
  loc_A8501E: LitStr " AND ExpeImpu = '"
  loc_A85021: ConcatStr
  loc_A85022: FStStrNoPop var_A4
  loc_A85025: ILdRf var_8C
  loc_A85028: ConcatStr
  loc_A85029: FStStrNoPop var_A8
  loc_A8502C: LitStr "'"
  loc_A8502F: ConcatStr
  loc_A85030: FStStrNoPop var_AC
  loc_A85033: LitStr " ;"
  loc_A85036: ConcatStr
  loc_A85037: FStStrNoPop var_B0
  loc_A8503A: Call EjecutarRsCls(from_stack_1v)
  loc_A8503F: FFreeStr UltimaFechLiqu = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A85052: FLdRfVar var_D8
  loc_A85055: FLdRfVar var_C8
  loc_A85058: LitVarStr var_C4, "FechLiqu"
  loc_A8505D: PopAdLdVar
  loc_A8505E: FLdRfVar var_B4
  loc_A85061: FLdPr Me
  loc_A85064: MemLdPr global_56
  loc_A85067:  = Me.Fields
  loc_A8506C: FLdPr var_B4
  loc_A8506F: from_stack_2 = Me.Item(from_stack_1)
  loc_A85074: FLdPr var_C8
  loc_A85077:  = Me.Value
  loc_A8507C: FLdRfVar var_D8
  loc_A8507F: LitVarStr var_E8, vbNullString
  loc_A85084: HardType
  loc_A85085: NeVarBool
  loc_A85087: FFreeAd var_B4 = ""
  loc_A8508E: FFree1Var var_D8 = ""
  loc_A85091: BranchF loc_A85114
  loc_A85094: FLdRfVar var_D8
  loc_A85097: FLdRfVar var_C8
  loc_A8509A: LitVarStr var_C4, "FechLiqu"
  loc_A8509F: PopAdLdVar
  loc_A850A0: FLdRfVar var_B4
  loc_A850A3: FLdPr Me
  loc_A850A6: MemLdPr global_56
  loc_A850A9:  = Me.Fields
  loc_A850AE: FLdPr var_B4
  loc_A850B1: from_stack_2 = Me.Item(from_stack_1)
  loc_A850B6: FLdPr var_C8
  loc_A850B9:  = Me.Value
  loc_A850BE: FLdRfVar var_D8
  loc_A850C1: FnCDateVar
  loc_A850C3: ILdRf var_88
  loc_A850C6: CDateStr
  loc_A850C8: GtR4
  loc_A850C9: FFreeAd var_B4 = ""
  loc_A850D0: FFree1Var var_D8 = ""
  loc_A850D3: BranchF loc_A85114
  loc_A850D6: FLdRfVar var_D8
  loc_A850D9: FLdRfVar var_C8
  loc_A850DC: LitVarStr var_C4, "FechLiqu"
  loc_A850E1: PopAdLdVar
  loc_A850E2: FLdRfVar var_B4
  loc_A850E5: FLdPr Me
  loc_A850E8: MemLdPr global_56
  loc_A850EB:  = Me.Fields
  loc_A850F0: FLdPr var_B4
  loc_A850F3: from_stack_2 = Me.Item(from_stack_1)
  loc_A850F8: FLdPr var_C8
  loc_A850FB:  = Me.Value
  loc_A85100: FLdRfVar var_D8
  loc_A85103: FnCDateVar
  loc_A85105: CStrDate
  loc_A85107: FStStr var_88
  loc_A8510A: FFreeAd var_B4 = ""
  loc_A85111: FFree1Var var_D8 = ""
  loc_A85114: Branch loc_A8511F
  loc_A85117: ImpAdLdFPR8 MemVar_C3D04C
  loc_A8511A: CStrDate
  loc_A8511C: FStStr var_88
  loc_A8511F: ExitProcCbHresult
  loc_A85125: ExitProcCbHresult
End Function

Public Function UltimaFechOrpa(PeriInfo, ExpeImpu, NumeLiqu) 'A1CE38
  'Data Table: 42D3EC
  loc_A1CCB4: ILdRf ExpeImpu
  loc_A1CCB7: FStStrCopy var_8C
  loc_A1CCBA: ZeroRetVal
  loc_A1CCBC: LitStr "SELECT FechOrpa"
  loc_A1CCBF: LitStr " FROM ordenpago"
  loc_A1CCC2: ConcatStr
  loc_A1CCC3: FStStrNoPop var_90
  loc_A1CCC6: LitStr " WHERE PeriInfo = "
  loc_A1CCC9: ConcatStr
  loc_A1CCCA: FStStrNoPop UltimaFechOrpa
  loc_A1CCCD: FLdI2 PeriInfo
  loc_A1CCD0: CStrUI1
  loc_A1CCD2: FStStrNoPop var_98
  loc_A1CCD5: ConcatStr
  loc_A1CCD6: FStStrNoPop var_9C
  loc_A1CCD9: LitStr " ORDER BY PeriInfo, NumeOrpa DESC LIMIT 1;"
  loc_A1CCDC: ConcatStr
  loc_A1CCDD: FStStrNoPop var_A0
  loc_A1CCE0: Call EjecutarRsCls(from_stack_1v)
  loc_A1CCE5: FFreeStr var_90 = "": UltimaFechOrpa = "": var_98 = "": var_9C = ""
  loc_A1CCF2: FLdRfVar var_A4
  loc_A1CCF5: FLdPr Me
  loc_A1CCF8: MemLdPr global_56
  loc_A1CCFB:  = Me.RecordCount
  loc_A1CD00: ILdRf var_A4
  loc_A1CD03: LitI4 0
  loc_A1CD08: GtI4
  loc_A1CD09: BranchF loc_A1CE29
  loc_A1CD0C: FLdRfVar var_CC
  loc_A1CD0F: FLdRfVar var_BC
  loc_A1CD12: LitVarStr var_B8, "FechOrpa"
  loc_A1CD17: PopAdLdVar
  loc_A1CD18: FLdRfVar var_A8
  loc_A1CD1B: FLdPr Me
  loc_A1CD1E: MemLdPr global_56
  loc_A1CD21:  = Me.Fields
  loc_A1CD26: FLdPr var_A8
  loc_A1CD29: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CD2E: FLdPr var_BC
  loc_A1CD31:  = Me.Value
  loc_A1CD36: FLdRfVar var_CC
  loc_A1CD39: CStrVarTmp
  loc_A1CD3A: FStStr var_88
  loc_A1CD3D: FFreeAd var_A8 = ""
  loc_A1CD44: FFree1Var var_CC = ""
  loc_A1CD47: LitStr "SELECT FechLiqu"
  loc_A1CD4A: LitStr " FROM liquidacion"
  loc_A1CD4D: ConcatStr
  loc_A1CD4E: FStStrNoPop var_90
  loc_A1CD51: LitStr " WHERE ExpeImpu = '"
  loc_A1CD54: ConcatStr
  loc_A1CD55: FStStrNoPop UltimaFechOrpa
  loc_A1CD58: ILdRf var_8C
  loc_A1CD5B: ConcatStr
  loc_A1CD5C: FStStrNoPop var_98
  loc_A1CD5F: LitStr "' AND NumeLiqu = '"
  loc_A1CD62: ConcatStr
  loc_A1CD63: FStStrNoPop var_9C
  loc_A1CD66: FLdI2 NumeLiqu
  loc_A1CD69: CStrUI1
  loc_A1CD6B: FStStrNoPop var_A0
  loc_A1CD6E: ConcatStr
  loc_A1CD6F: FStStrNoPop var_D0
  loc_A1CD72: LitStr "';"
  loc_A1CD75: ConcatStr
  loc_A1CD76: FStStrNoPop var_D4
  loc_A1CD79: Call EjecutarRsCls(from_stack_1v)
  loc_A1CD7E: FFreeStr var_90 = "": UltimaFechOrpa = "": var_98 = "": var_9C = "": var_A0 = "": var_D0 = ""
  loc_A1CD8F: FLdRfVar var_A4
  loc_A1CD92: FLdPr Me
  loc_A1CD95: MemLdPr global_56
  loc_A1CD98:  = Me.RecordCount
  loc_A1CD9D: ILdRf var_A4
  loc_A1CDA0: LitI4 0
  loc_A1CDA5: GtI4
  loc_A1CDA6: BranchF loc_A1CE26
  loc_A1CDA9: FLdRfVar var_CC
  loc_A1CDAC: FLdRfVar var_BC
  loc_A1CDAF: LitVarStr var_B8, "FechLiqu"
  loc_A1CDB4: PopAdLdVar
  loc_A1CDB5: FLdRfVar var_A8
  loc_A1CDB8: FLdPr Me
  loc_A1CDBB: MemLdPr global_56
  loc_A1CDBE:  = Me.Fields
  loc_A1CDC3: FLdPr var_A8
  loc_A1CDC6: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CDCB: FLdPr var_BC
  loc_A1CDCE:  = Me.Value
  loc_A1CDD3: ILdRf var_88
  loc_A1CDD6: CDateStr
  loc_A1CDD8: FLdRfVar var_CC
  loc_A1CDDB: FnCDateVar
  loc_A1CDDD: LtR8
  loc_A1CDDE: FFreeAd var_A8 = ""
  loc_A1CDE5: FFree1Var var_CC = ""
  loc_A1CDE8: BranchF loc_A1CE26
  loc_A1CDEB: FLdRfVar var_CC
  loc_A1CDEE: FLdRfVar var_BC
  loc_A1CDF1: LitVarStr var_B8, "FechLiqu"
  loc_A1CDF6: PopAdLdVar
  loc_A1CDF7: FLdRfVar var_A8
  loc_A1CDFA: FLdPr Me
  loc_A1CDFD: MemLdPr global_56
  loc_A1CE00:  = Me.Fields
  loc_A1CE05: FLdPr var_A8
  loc_A1CE08: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CE0D: FLdPr var_BC
  loc_A1CE10:  = Me.Value
  loc_A1CE15: FLdRfVar var_CC
  loc_A1CE18: CStrVarTmp
  loc_A1CE19: FStStr var_88
  loc_A1CE1C: FFreeAd var_A8 = ""
  loc_A1CE23: FFree1Var var_CC = ""
  loc_A1CE26: Branch loc_A1CE31
  loc_A1CE29: ImpAdLdFPR8 MemVar_C3D054
  loc_A1CE2C: CStrDate
  loc_A1CE2E: FStStr var_88
  loc_A1CE31: ExitProcCbHresult
End Function

Public Function UltimoMesOP(PeriInfo) '9B701C
  'Data Table: 42D3EC
  loc_9B6F7C: LitStr "SELECT Month(FechOrpa) mes"
  loc_9B6F7F: LitStr " FROM ordenpago"
  loc_9B6F82: ConcatStr
  loc_9B6F83: FStStrNoPop var_8C
  loc_9B6F86: LitStr " WHERE PeriInfo = "
  loc_9B6F89: ConcatStr
  loc_9B6F8A: FStStrNoPop var_90
  loc_9B6F8D: FLdI2 PeriInfo
  loc_9B6F90: CStrUI1
  loc_9B6F92: FStStrNoPop UltimoMesOP
  loc_9B6F95: ConcatStr
  loc_9B6F96: FStStrNoPop var_98
  loc_9B6F99: LitStr " ORDER BY PeriInfo, NumeOrpa DESC LIMIT 1 "
  loc_9B6F9C: ConcatStr
  loc_9B6F9D: FStStrNoPop var_9C
  loc_9B6FA0: Call EjecutarRsCls(from_stack_1v)
  loc_9B6FA5: FFreeStr var_8C = "": var_90 = "": UltimoMesOP = "": var_98 = ""
  loc_9B6FB2: FLdRfVar var_A0
  loc_9B6FB5: FLdPr Me
  loc_9B6FB8: MemLdPr global_56
  loc_9B6FBB:  = Me.RecordCount
  loc_9B6FC0: ILdRf var_A0
  loc_9B6FC3: LitI4 0
  loc_9B6FC8: GtI4
  loc_9B6FC9: BranchF loc_9B700C
  loc_9B6FCC: FLdRfVar var_C8
  loc_9B6FCF: FLdRfVar var_B8
  loc_9B6FD2: LitVarStr var_B4, "Mes"
  loc_9B6FD7: PopAdLdVar
  loc_9B6FD8: FLdRfVar var_A4
  loc_9B6FDB: FLdPr Me
  loc_9B6FDE: MemLdPr global_56
  loc_9B6FE1:  = Me.Fields
  loc_9B6FE6: FLdPr var_A4
  loc_9B6FE9: from_stack_2 = Me.Item(from_stack_1)
  loc_9B6FEE: FLdPr var_B8
  loc_9B6FF1:  = Me.Value
  loc_9B6FF6: FLdRfVar var_C8
  loc_9B6FF9: CUI1Var
  loc_9B6FFB: FStUI1 var_86
  loc_9B6FFF: FFreeAd var_A4 = ""
  loc_9B7006: FFree1Var var_C8 = ""
  loc_9B7009: Branch loc_9B7014
  loc_9B700C: LitI2_Byte 1
  loc_9B700E: CUI1I2
  loc_9B7010: FStUI1 var_86
  loc_9B7014: ExitProcCbHresult
  loc_9B701A: FLdPr arg_7408
End Function

Public Function ReservarOP(PeriInfo, DetaOrpa) '9E1A88
  'Data Table: 42D3EC
  loc_9E19AC: ILdRf DetaOrpa
  loc_9E19AF: FStStrCopy var_8C
  loc_9E19B2: FLdRfVar var_98
  loc_9E19B5: FLdI2 PeriInfo
  loc_9E19B8: from_stack_2v = UltimoNumeOrpa(from_stack_1v)
  loc_9E19BD: ILdRf var_98
  loc_9E19C0: FStR4 var_90
  loc_9E19C3: FLdRfVar var_9C
  loc_9E19C6: LitI2_Byte 0
  loc_9E19C8: LitStr vbNullString
  loc_9E19CB: FLdI2 PeriInfo
  loc_9E19CE: from_stack_4v = UltimaFechOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9E19D3: FLdZeroAd var_9C
  loc_9E19D6: FStStr ReservarOP
  loc_9E19D9: LitStr "INSERT INTO ordenpago (PeriInfo,NumeOrpa,ExpeImpu,NumeLiqu,FechOrpa,DetaOrpa,TipoOrpa,AltaUsua)"
  loc_9E19DC: LitStr " VALUES ("
  loc_9E19DF: ConcatStr
  loc_9E19E0: FStStrNoPop var_9C
  loc_9E19E3: FLdI2 PeriInfo
  loc_9E19E6: CStrUI1
  loc_9E19E8: FStStrNoPop var_A0
  loc_9E19EB: ConcatStr
  loc_9E19EC: FStStrNoPop var_A4
  loc_9E19EF: LitStr ","
  loc_9E19F2: ConcatStr
  loc_9E19F3: FStStrNoPop var_A8
  loc_9E19F6: ILdRf var_90
  loc_9E19F9: CStrI4
  loc_9E19FB: FStStrNoPop var_AC
  loc_9E19FE: ConcatStr
  loc_9E19FF: FStStrNoPop var_B0
  loc_9E1A02: LitStr ",'Reservada',1,"
  loc_9E1A05: ConcatStr
  loc_9E1A06: FStStrNoPop var_E4
  loc_9E1A09: LitI4 1
  loc_9E1A0E: LitI4 1
  loc_9E1A13: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_9E1A18: FStVarCopyObj var_E0
  loc_9E1A1B: FLdRfVar var_E0
  loc_9E1A1E: FLdRfVar ReservarOP
  loc_9E1A21: CVarRef
  loc_9E1A26: ImpAdCallI2 Format$(, )
  loc_9E1A2B: FStStrNoPop var_E8
  loc_9E1A2E: ConcatStr
  loc_9E1A2F: FStStrNoPop var_EC
  loc_9E1A32: LitStr ",'Reservada: "
  loc_9E1A35: ConcatStr
  loc_9E1A36: FStStrNoPop var_F0
  loc_9E1A39: ILdRf var_8C
  loc_9E1A3C: ConcatStr
  loc_9E1A3D: FStStrNoPop var_F4
  loc_9E1A40: LitStr "','Reservada','"
  loc_9E1A43: ConcatStr
  loc_9E1A44: FStStrNoPop var_F8
  loc_9E1A47: ImpAdLdI4 MemVar_C3D03C
  loc_9E1A4A: ConcatStr
  loc_9E1A4B: FStStrNoPop var_FC
  loc_9E1A4E: LitStr "')"
  loc_9E1A51: ConcatStr
  loc_9E1A52: FStStrNoPop var_100
  loc_9E1A55: Call EjecutarRsCls(from_stack_1v)
  loc_9E1A5A: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_9E1A79: FFree1Var var_E0 = ""
  loc_9E1A7C: ILdRf var_90
  loc_9E1A7F: FStR4 var_88
  loc_9E1A82: ExitProcCbHresult
End Function

Public Function UltimoNumeOrpa(PeriInfo) '9ADEEC
  'Data Table: 42D3EC
  loc_9ADE58: LitStr "SELECT NumeOrpa FROM ordenpago WHERE PeriInfo = "
  loc_9ADE5B: FLdI2 PeriInfo
  loc_9ADE5E: CStrUI1
  loc_9ADE60: FStStrNoPop var_8C
  loc_9ADE63: ConcatStr
  loc_9ADE64: FStStrNoPop var_90
  loc_9ADE67: LitStr " ORDER BY NumeOrpa DESC;"
  loc_9ADE6A: ConcatStr
  loc_9ADE6B: FStStrNoPop UltimoNumeOrpa
  loc_9ADE6E: Call EjecutarRsCls(from_stack_1v)
  loc_9ADE73: FFreeStr var_8C = "": var_90 = ""
  loc_9ADE7C: FLdRfVar var_98
  loc_9ADE7F: FLdPr Me
  loc_9ADE82: MemLdPr global_56
  loc_9ADE85:  = Me.RecordCount
  loc_9ADE8A: ILdRf var_98
  loc_9ADE8D: LitI4 0
  loc_9ADE92: GtI4
  loc_9ADE93: BranchF loc_9ADEDB
  loc_9ADE96: FLdRfVar var_C0
  loc_9ADE99: FLdRfVar var_B0
  loc_9ADE9C: LitVarStr var_AC, "NumeOrpa"
  loc_9ADEA1: PopAdLdVar
  loc_9ADEA2: FLdRfVar var_9C
  loc_9ADEA5: FLdPr Me
  loc_9ADEA8: MemLdPr global_56
  loc_9ADEAB:  = Me.Fields
  loc_9ADEB0: FLdPr var_9C
  loc_9ADEB3: from_stack_2 = Me.Item(from_stack_1)
  loc_9ADEB8: FLdPr var_B0
  loc_9ADEBB:  = Me.Value
  loc_9ADEC0: FLdRfVar var_C0
  loc_9ADEC3: FnCLngVar
  loc_9ADEC5: LitI4 1
  loc_9ADECA: AddI4
  loc_9ADECB: FStR4 var_88
  loc_9ADECE: FFreeAd var_9C = ""
  loc_9ADED5: FFree1Var var_C0 = ""
  loc_9ADED8: Branch loc_9ADEE3
  loc_9ADEDB: LitI4 1
  loc_9ADEE0: FStR4 var_88
  loc_9ADEE3: ExitProcCbHresult
  loc_9ADEE9: FLdPr arg_F00
End Function

Public Function AcumuladoBruto(FechLiqu, CucuPers, CodiRete, CodiDere, Acumulado) 'AAE5DC
  'Data Table: 42D3EC
  loc_AAE0F4: ILdRf FechLiqu
  loc_AAE0F7: FStStrCopy var_90
  loc_AAE0FA: ILdRf CucuPers
  loc_AAE0FD: FStStrCopy AcumuladoBruto
  loc_AAE100: ILdRf Acumulado
  loc_AAE103: FStStrCopy var_98
  loc_AAE106: ILdRf var_98
  loc_AAE109: FStStrCopy var_9C
  loc_AAE10C: ILdRf var_9C
  loc_AAE10F: LitStr "No Acumula"
  loc_AAE112: EqStr
  loc_AAE114: BranchF loc_AAE120
  loc_AAE117: LitI2_Byte 0
  loc_AAE119: CR8I2
  loc_AAE11A: FStFPR8 var_8C
  loc_AAE11D: Branch loc_AAE5D3
  loc_AAE120: ILdRf var_9C
  loc_AAE123: LitStr "Mensual"
  loc_AAE126: EqStr
  loc_AAE128: BranchF loc_AAE335
  loc_AAE12B: LitStr "SELECT IFNULL(Sum(LiquImpu),0) ImpoImpu"
  loc_AAE12E: LitStr " FROM liquidacion l"
  loc_AAE131: ConcatStr
  loc_AAE132: FStStrNoPop var_A0
  loc_AAE135: LitStr " INNER JOIN liquidarete lr ON lr.PeriInfo = l.PeriInfo AND lr.ExpeImpu = l.ExpeImpu AND lr.NumeLiqu = l.NumeLiqu AND lr.CucuPers = "
  loc_AAE138: ConcatStr
  loc_AAE139: FStStrNoPop var_A4
  loc_AAE13C: ILdRf AcumuladoBruto
  loc_AAE13F: ConcatStr
  loc_AAE140: FStStrNoPop var_A8
  loc_AAE143: LitStr " AND lr.CodiRete = "
  loc_AAE146: ConcatStr
  loc_AAE147: FStStrNoPop var_AC
  loc_AAE14A: FLdUI1
  loc_AAE14E: CStrI2
  loc_AAE150: FStStrNoPop var_B0
  loc_AAE153: ConcatStr
  loc_AAE154: FStStrNoPop var_B4
  loc_AAE157: LitStr " AND lr.CodiDere = "
  loc_AAE15A: ConcatStr
  loc_AAE15B: FStStrNoPop var_B8
  loc_AAE15E: FLdUI1
  loc_AAE162: CStrI2
  loc_AAE164: FStStrNoPop var_BC
  loc_AAE167: ConcatStr
  loc_AAE168: FStStrNoPop var_C0
  loc_AAE16B: LitStr " INNER JOIN imputacion ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = lr.ExpeImpu AND ld.NumeLiqu = lr.NumeLiqu AND ld.PeriInfo = lr.PeriInfo AND ld.CucuPers = lr.CucuPers AND Left(ld.NumeFact,3) <> 's/f'"
  loc_AAE16E: ConcatStr
  loc_AAE16F: FStStrNoPop var_C4
  loc_AAE172: LitStr " WHERE l.PeriInfo = "
  loc_AAE175: ConcatStr
  loc_AAE176: CVarStr var_F4
  loc_AAE179: FLdRfVar var_90
  loc_AAE17C: CVarRef
  loc_AAE181: FLdRfVar var_E4
  loc_AAE184: ImpAdCallFPR4  = Year()
  loc_AAE189: FLdRfVar var_E4
  loc_AAE18C: ConcatVar var_104
  loc_AAE190: LitVarStr var_114, " AND Month(FechLiqu) = "
  loc_AAE195: ConcatVar var_124
  loc_AAE199: FLdRfVar var_90
  loc_AAE19C: CVarRef
  loc_AAE1A1: FLdRfVar var_144
  loc_AAE1A4: ImpAdCallFPR4  = Month()
  loc_AAE1A9: FLdRfVar var_144
  loc_AAE1AC: ConcatVar var_154
  loc_AAE1B0: LitVarStr var_164, " AND FeanLiqu IS NULL AND ld.NumeFact <> '' LIMIT 1"
  loc_AAE1B5: ConcatVar var_174
  loc_AAE1B9: CStrVarVal var_178
  loc_AAE1BD: Call EjecutarRsCls4(from_stack_1v)
  loc_AAE1C2: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_AAE1DB: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = ""
  loc_AAE1EC: FLdRfVar var_E4
  loc_AAE1EF: FLdRfVar var_180
  loc_AAE1F2: LitVarStr var_D4, "ImpoImpu"
  loc_AAE1F7: PopAdLdVar
  loc_AAE1F8: FLdRfVar var_17C
  loc_AAE1FB: FLdPr Me
  loc_AAE1FE: MemLdPr global_68
  loc_AAE201:  = Me.Fields
  loc_AAE206: FLdPr var_17C
  loc_AAE209: from_stack_2 = Me.Item(from_stack_1)
  loc_AAE20E: FLdPr var_180
  loc_AAE211:  = Me.Value
  loc_AAE216: FLdRfVar var_E4
  loc_AAE219: CR4Var
  loc_AAE21A: FStFPR8 var_8C
  loc_AAE21D: FFreeAd var_17C = ""
  loc_AAE224: FFree1Var var_E4 = ""
  loc_AAE227: LitStr "SELECT IFNULL(Sum(ImpoImpu),0) ImpoImpu"
  loc_AAE22A: LitStr " FROM liquidacion l"
  loc_AAE22D: ConcatStr
  loc_AAE22E: FStStrNoPop var_A0
  loc_AAE231: LitStr " INNER JOIN liquidarete lr ON lr.PeriInfo = l.PeriInfo AND lr.ExpeImpu = l.ExpeImpu AND lr.NumeLiqu = l.NumeLiqu AND lr.CucuPers = "
  loc_AAE234: ConcatStr
  loc_AAE235: FStStrNoPop var_A4
  loc_AAE238: ILdRf AcumuladoBruto
  loc_AAE23B: ConcatStr
  loc_AAE23C: FStStrNoPop var_A8
  loc_AAE23F: LitStr " AND lr.CodiRete = "
  loc_AAE242: ConcatStr
  loc_AAE243: FStStrNoPop var_AC
  loc_AAE246: FLdUI1
  loc_AAE24A: CStrI2
  loc_AAE24C: FStStrNoPop var_B0
  loc_AAE24F: ConcatStr
  loc_AAE250: FStStrNoPop var_B4
  loc_AAE253: LitStr " AND lr.CodiDere = "
  loc_AAE256: ConcatStr
  loc_AAE257: FStStrNoPop var_B8
  loc_AAE25A: FLdUI1
  loc_AAE25E: CStrI2
  loc_AAE260: FStStrNoPop var_BC
  loc_AAE263: ConcatStr
  loc_AAE264: FStStrNoPop var_C0
  loc_AAE267: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = lr.ExpeImpu AND ld.NumeLiqu = lr.NumeLiqu AND ld.PeriInfo = lr.PeriInfo AND ld.CucuPers = lr.CucuPers AND Left(ld.NumeFact,3) <> 's/f'"
  loc_AAE26A: ConcatStr
  loc_AAE26B: FStStrNoPop var_C4
  loc_AAE26E: LitStr " WHERE l.PeriInfo = "
  loc_AAE271: ConcatStr
  loc_AAE272: CVarStr var_F4
  loc_AAE275: FLdRfVar var_90
  loc_AAE278: CVarRef
  loc_AAE27D: FLdRfVar var_E4
  loc_AAE280: ImpAdCallFPR4  = Year()
  loc_AAE285: FLdRfVar var_E4
  loc_AAE288: ConcatVar var_104
  loc_AAE28C: LitVarStr var_114, " AND Month(FechLiqu) = "
  loc_AAE291: ConcatVar var_124
  loc_AAE295: FLdRfVar var_90
  loc_AAE298: CVarRef
  loc_AAE29D: FLdRfVar var_144
  loc_AAE2A0: ImpAdCallFPR4  = Month()
  loc_AAE2A5: FLdRfVar var_144
  loc_AAE2A8: ConcatVar var_154
  loc_AAE2AC: LitVarStr var_164, " AND TipoLiqu = 2 AND FeanLiqu IS NULL AND ld.NumeFact <> '' LIMIT 1"
  loc_AAE2B1: ConcatVar var_174
  loc_AAE2B5: CStrVarVal var_178
  loc_AAE2B9: Call EjecutarRsCls4(from_stack_1v)
  loc_AAE2BE: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_AAE2D7: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = ""
  loc_AAE2E8: FLdFPR8 var_8C
  loc_AAE2EB: CVarR8
  loc_AAE2EF: FLdRfVar var_E4
  loc_AAE2F2: FLdRfVar var_180
  loc_AAE2F5: LitVarStr var_D4, "ImpoImpu"
  loc_AAE2FA: PopAdLdVar
  loc_AAE2FB: FLdRfVar var_17C
  loc_AAE2FE: FLdPr Me
  loc_AAE301: MemLdPr global_68
  loc_AAE304:  = Me.Fields
  loc_AAE309: FLdPr var_17C
  loc_AAE30C: from_stack_2 = Me.Item(from_stack_1)
  loc_AAE311: FLdPr var_180
  loc_AAE314:  = Me.Value
  loc_AAE319: FLdRfVar var_E4
  loc_AAE31C: AddVar var_F4
  loc_AAE320: CR4Var
  loc_AAE321: FStFPR8 var_8C
  loc_AAE324: FFreeAd var_17C = ""
  loc_AAE32B: FFreeVar var_E4 = ""
  loc_AAE332: Branch loc_AAE5D3
  loc_AAE335: ILdRf var_9C
  loc_AAE338: LitStr "Ultimos 12 meses"
  loc_AAE33B: EqStr
  loc_AAE33D: BranchF loc_AAE4B8
  loc_AAE340: FLdRfVar var_90
  loc_AAE343: CVarRef
  loc_AAE348: FLdRfVar var_E4
  loc_AAE34B: ImpAdCallFPR4  = Month()
  loc_AAE350: FLdRfVar var_E4
  loc_AAE353: LitVarI2 var_114, 12
  loc_AAE358: HardType
  loc_AAE359: EqVarBool
  loc_AAE35B: FFree1Var var_E4 = ""
  loc_AAE35E: BranchF loc_AAE386
  loc_AAE361: FLdRfVar var_90
  loc_AAE364: CVarRef
  loc_AAE369: FLdRfVar var_E4
  loc_AAE36C: ImpAdCallFPR4  = Year()
  loc_AAE371: FLdRfVar var_E4
  loc_AAE374: CI2Var
  loc_AAE375: FStI2 var_182
  loc_AAE378: FFree1Var var_E4 = ""
  loc_AAE37B: LitI2_Byte 1
  loc_AAE37D: CUI1I2
  loc_AAE37F: FStUI1 var_184
  loc_AAE383: Branch loc_AAE3D2
  loc_AAE386: FLdRfVar var_90
  loc_AAE389: CVarRef
  loc_AAE38E: FLdRfVar var_E4
  loc_AAE391: ImpAdCallFPR4  = Year()
  loc_AAE396: FLdRfVar var_E4
  loc_AAE399: LitVarI2 var_114, 1
  loc_AAE39E: SubVar var_F4
  loc_AAE3A2: CI2Var
  loc_AAE3A3: FStI2 var_182
  loc_AAE3A6: FFree1Var var_E4 = ""
  loc_AAE3A9: FLdRfVar var_90
  loc_AAE3AC: CVarRef
  loc_AAE3B1: FLdRfVar var_E4
  loc_AAE3B4: ImpAdCallFPR4  = Month()
  loc_AAE3B9: FLdRfVar var_E4
  loc_AAE3BC: LitVarI2 var_114, 1
  loc_AAE3C1: AddVar var_F4
  loc_AAE3C5: CUI1Var
  loc_AAE3C7: FStUI1 var_184
  loc_AAE3CB: FFreeVar var_E4 = ""
  loc_AAE3D2: LitStr "SELECT IFNULL(Sum(ImpoImpu),0) ImpoImpu"
  loc_AAE3D5: LitStr " FROM liquidacion l"
  loc_AAE3D8: ConcatStr
  loc_AAE3D9: FStStrNoPop var_A0
  loc_AAE3DC: LitStr " INNER JOIN liquidarete lr ON lr.ExpeImpu = l.ExpeImpu AND lr.NumeLiqu = l.NumeLiqu AND lr.CucuPers = "
  loc_AAE3DF: ConcatStr
  loc_AAE3E0: FStStrNoPop var_A4
  loc_AAE3E3: ILdRf AcumuladoBruto
  loc_AAE3E6: ConcatStr
  loc_AAE3E7: FStStrNoPop var_A8
  loc_AAE3EA: LitStr " AND lr.CodiRete = "
  loc_AAE3ED: ConcatStr
  loc_AAE3EE: FStStrNoPop var_AC
  loc_AAE3F1: FLdUI1
  loc_AAE3F5: CStrI2
  loc_AAE3F7: FStStrNoPop var_B0
  loc_AAE3FA: ConcatStr
  loc_AAE3FB: FStStrNoPop var_B4
  loc_AAE3FE: LitStr " AND lr.CodiDere = "
  loc_AAE401: ConcatStr
  loc_AAE402: FStStrNoPop var_B8
  loc_AAE405: FLdUI1
  loc_AAE409: CStrI2
  loc_AAE40B: FStStrNoPop var_BC
  loc_AAE40E: ConcatStr
  loc_AAE40F: FStStrNoPop var_C0
  loc_AAE412: LitStr " AND lr.PeriInfo = l.PeriInfo"
  loc_AAE415: ConcatStr
  loc_AAE416: FStStrNoPop var_C4
  loc_AAE419: LitStr " INNER JOIN liquidadeta ld ON ld.ExpeImpu = lr.ExpeImpu AND ld.NumeLiqu = lr.NumeLiqu AND ld.PeriInfo = lr.PeriInfo AND ld.CucuPers = lr.CucuPers AND Left(ld.NumeFact,3) <> 's/f'"
  loc_AAE41C: ConcatStr
  loc_AAE41D: FStStrNoPop var_178
  loc_AAE420: LitStr " WHERE l.PeriInfo = "
  loc_AAE423: ConcatStr
  loc_AAE424: FStStrNoPop var_188
  loc_AAE427: FLdI2 var_182
  loc_AAE42A: CStrUI1
  loc_AAE42C: FStStrNoPop var_18C
  loc_AAE42F: ConcatStr
  loc_AAE430: FStStrNoPop var_190
  loc_AAE433: LitStr " AND Month(FechLiqu) >= "
  loc_AAE436: ConcatStr
  loc_AAE437: FStStrNoPop var_194
  loc_AAE43A: FLdUI1
  loc_AAE43E: CStrI2
  loc_AAE440: FStStrNoPop var_198
  loc_AAE443: ConcatStr
  loc_AAE444: FStStrNoPop var_19C
  loc_AAE447: LitStr " AND FeanLiqu IS NULL AND ld.NumeFact <> '' LIMIT 1"
  loc_AAE44A: ConcatStr
  loc_AAE44B: FStStrNoPop var_1A0
  loc_AAE44E: Call EjecutarRsCls4(from_stack_1v)
  loc_AAE453: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_178 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_AAE47A: FLdRfVar var_E4
  loc_AAE47D: FLdRfVar var_180
  loc_AAE480: LitVarStr var_D4, "ImpoImpu"
  loc_AAE485: PopAdLdVar
  loc_AAE486: FLdRfVar var_17C
  loc_AAE489: FLdPr Me
  loc_AAE48C: MemLdPr global_68
  loc_AAE48F:  = Me.Fields
  loc_AAE494: FLdPr var_17C
  loc_AAE497: from_stack_2 = Me.Item(from_stack_1)
  loc_AAE49C: FLdPr var_180
  loc_AAE49F:  = Me.Value
  loc_AAE4A4: FLdRfVar var_E4
  loc_AAE4A7: CR4Var
  loc_AAE4A8: FStFPR8 var_8C
  loc_AAE4AB: FFreeAd var_17C = ""
  loc_AAE4B2: FFree1Var var_E4 = ""
  loc_AAE4B5: Branch loc_AAE5D3
  loc_AAE4B8: ILdRf var_9C
  loc_AAE4BB: LitStr "Año calendario"
  loc_AAE4BE: EqStr
  loc_AAE4C0: BranchF loc_AAE5D3
  loc_AAE4C3: LitStr "SELECT IFNULL(Sum(ImpoImpu),0) ImpoImpu"
  loc_AAE4C6: LitStr " FROM liquidacion l"
  loc_AAE4C9: ConcatStr
  loc_AAE4CA: FStStrNoPop var_A0
  loc_AAE4CD: LitStr " INNER JOIN liquidarete lr ON lr.ExpeImpu = l.ExpeImpu AND lr.NumeLiqu = l.NumeLiqu AND lr.CucuPers = "
  loc_AAE4D0: ConcatStr
  loc_AAE4D1: FStStrNoPop var_A4
  loc_AAE4D4: ILdRf AcumuladoBruto
  loc_AAE4D7: ConcatStr
  loc_AAE4D8: FStStrNoPop var_A8
  loc_AAE4DB: LitStr " AND lr.CodiRete = "
  loc_AAE4DE: ConcatStr
  loc_AAE4DF: FStStrNoPop var_AC
  loc_AAE4E2: FLdUI1
  loc_AAE4E6: CStrI2
  loc_AAE4E8: FStStrNoPop var_B0
  loc_AAE4EB: ConcatStr
  loc_AAE4EC: FStStrNoPop var_B4
  loc_AAE4EF: LitStr " AND lr.CodiDere = "
  loc_AAE4F2: ConcatStr
  loc_AAE4F3: FStStrNoPop var_B8
  loc_AAE4F6: FLdUI1
  loc_AAE4FA: CStrI2
  loc_AAE4FC: FStStrNoPop var_BC
  loc_AAE4FF: ConcatStr
  loc_AAE500: FStStrNoPop var_C0
  loc_AAE503: LitStr " AND lr.PeriInfo = l.PeriInfo"
  loc_AAE506: ConcatStr
  loc_AAE507: FStStrNoPop var_C4
  loc_AAE50A: LitStr " INNER JOIN liquidadeta ld ON ld.ExpeImpu = lr.ExpeImpu AND ld.NumeLiqu = lr.NumeLiqu AND ld.PeriInfo = lr.PeriInfo AND ld.CucuPers = lr.CucuPers AND Left(ld.NumeFact,3) <> 's/f'"
  loc_AAE50D: ConcatStr
  loc_AAE50E: FStStrNoPop var_178
  loc_AAE511: LitStr " WHERE l.PeriInfo = "
  loc_AAE514: ConcatStr
  loc_AAE515: CVarStr var_F4
  loc_AAE518: FLdRfVar var_90
  loc_AAE51B: CVarRef
  loc_AAE520: FLdRfVar var_E4
  loc_AAE523: ImpAdCallFPR4  = Year()
  loc_AAE528: FLdRfVar var_E4
  loc_AAE52B: ConcatVar var_104
  loc_AAE52F: LitVarStr var_114, " AND FechLiqu >= '"
  loc_AAE534: ConcatVar var_124
  loc_AAE538: FLdRfVar var_90
  loc_AAE53B: CVarRef
  loc_AAE540: FLdRfVar var_144
  loc_AAE543: ImpAdCallFPR4  = Year()
  loc_AAE548: FLdRfVar var_144
  loc_AAE54B: ConcatVar var_154
  loc_AAE54F: LitVarStr var_164, "-01-01"
  loc_AAE554: ConcatVar var_174
  loc_AAE558: LitVarStr var_1B0, "' AND FeanLiqu IS NULL AND ld.NumeFact <> '' LIMIT 1"
  loc_AAE55D: ConcatVar var_1C0
  loc_AAE561: CStrVarVal var_188
  loc_AAE565: Call EjecutarRsCls4(from_stack_1v)
  loc_AAE56A: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_178 = ""
  loc_AAE585: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = "": var_174 = ""
  loc_AAE598: FLdRfVar var_E4
  loc_AAE59B: FLdRfVar var_180
  loc_AAE59E: LitVarStr var_D4, "ImpoImpu"
  loc_AAE5A3: PopAdLdVar
  loc_AAE5A4: FLdRfVar var_17C
  loc_AAE5A7: FLdPr Me
  loc_AAE5AA: MemLdPr global_68
  loc_AAE5AD:  = Me.Fields
  loc_AAE5B2: FLdPr var_17C
  loc_AAE5B5: from_stack_2 = Me.Item(from_stack_1)
  loc_AAE5BA: FLdPr var_180
  loc_AAE5BD:  = Me.Value
  loc_AAE5C2: FLdRfVar var_E4
  loc_AAE5C5: CR4Var
  loc_AAE5C6: FStFPR8 var_8C
  loc_AAE5C9: FFreeAd var_17C = ""
  loc_AAE5D0: FFree1Var var_E4 = ""
  loc_AAE5D3: ExitProcCbHresult
  loc_AAE5D9: ImpAdLdI2 MemVar_519784
End Function

Public Function RetencionAcumulada(FechLiqu, CucuPers, CodiRete, CodiDere, Acumulado) 'A8437C
  'Data Table: 42D3EC
  loc_A83FB4: ILdRf FechLiqu
  loc_A83FB7: FStStrCopy var_90
  loc_A83FBA: ILdRf CucuPers
  loc_A83FBD: FStStrCopy RetencionAcumulada
  loc_A83FC0: ILdRf Acumulado
  loc_A83FC3: FStStrCopy var_98
  loc_A83FC6: ILdRf var_98
  loc_A83FC9: FStStrCopy var_9C
  loc_A83FCC: ILdRf var_9C
  loc_A83FCF: LitStr "No Acumula"
  loc_A83FD2: EqStr
  loc_A83FD4: BranchF loc_A83FE0
  loc_A83FD7: LitI2_Byte 0
  loc_A83FD9: CR8I2
  loc_A83FDA: FStFPR8 var_8C
  loc_A83FDD: Branch loc_A84373
  loc_A83FE0: ILdRf var_9C
  loc_A83FE3: LitStr "Mensual"
  loc_A83FE6: EqStr
  loc_A83FE8: BranchF loc_A840E9
  loc_A83FEB: LitStr "SELECT IFNULL(Sum(ImpoLine),0) ImpoLine"
  loc_A83FEE: LitStr " FROM liquidacion l"
  loc_A83FF1: ConcatStr
  loc_A83FF2: FStStrNoPop var_A0
  loc_A83FF5: LitStr " INNER JOIN liquidarete lqr ON lqr.PeriInfo = l.PeriInfo AND lqr.ExpeImpu = l.ExpeImpu AND lqr.NumeLiqu = l.NumeLiqu AND lqr.CucuPers = "
  loc_A83FF8: ConcatStr
  loc_A83FF9: FStStrNoPop var_A4
  loc_A83FFC: ILdRf RetencionAcumulada
  loc_A83FFF: ConcatStr
  loc_A84000: FStStrNoPop var_A8
  loc_A84003: LitStr " AND lqr.CodiRete = "
  loc_A84006: ConcatStr
  loc_A84007: FStStrNoPop var_AC
  loc_A8400A: FLdI2 CodiRete
  loc_A8400D: CStrUI1
  loc_A8400F: FStStrNoPop var_B0
  loc_A84012: ConcatStr
  loc_A84013: FStStrNoPop var_B4
  loc_A84016: LitStr " AND lqr.CodiDere = "
  loc_A84019: ConcatStr
  loc_A8401A: FStStrNoPop var_B8
  loc_A8401D: FLdUI1
  loc_A84021: CStrI2
  loc_A84023: FStStrNoPop var_BC
  loc_A84026: ConcatStr
  loc_A84027: FStStrNoPop var_C0
  loc_A8402A: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CucuPers = lqr.CucuPers AND lqn.CodiRete = lqr.CodiRete AND lqn.CodiDere = lqr.CodiDere AND lqn.FeanLine IS NULL"
  loc_A8402D: ConcatStr
  loc_A8402E: FStStrNoPop var_C4
  loc_A84031: LitStr " WHERE l.PeriInfo = "
  loc_A84034: ConcatStr
  loc_A84035: CVarStr var_F4
  loc_A84038: FLdRfVar var_90
  loc_A8403B: CVarRef
  loc_A84040: FLdRfVar var_E4
  loc_A84043: ImpAdCallFPR4  = Year()
  loc_A84048: FLdRfVar var_E4
  loc_A8404B: ConcatVar var_104
  loc_A8404F: LitVarStr var_114, " AND Month(l.FechLiqu) = "
  loc_A84054: ConcatVar var_124
  loc_A84058: FLdRfVar var_90
  loc_A8405B: CVarRef
  loc_A84060: FLdRfVar var_144
  loc_A84063: ImpAdCallFPR4  = Month()
  loc_A84068: FLdRfVar var_144
  loc_A8406B: ConcatVar var_154
  loc_A8406F: LitVarStr var_164, " AND FeanLiqu IS NULL LIMIT 1"
  loc_A84074: ConcatVar var_174
  loc_A84078: CStrVarVal var_178
  loc_A8407C: Call EjecutarRsCls4(from_stack_1v)
  loc_A84081: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A8409A: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = ""
  loc_A840AB: FLdRfVar var_E4
  loc_A840AE: FLdRfVar var_180
  loc_A840B1: LitVarStr var_D4, "ImpoLine"
  loc_A840B6: PopAdLdVar
  loc_A840B7: FLdRfVar var_17C
  loc_A840BA: FLdPr Me
  loc_A840BD: MemLdPr global_68
  loc_A840C0:  = Me.Fields
  loc_A840C5: FLdPr var_17C
  loc_A840C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A840CD: FLdPr var_180
  loc_A840D0:  = Me.Value
  loc_A840D5: FLdRfVar var_E4
  loc_A840D8: CR4Var
  loc_A840D9: FStFPR8 var_8C
  loc_A840DC: FFreeAd var_17C = ""
  loc_A840E3: FFree1Var var_E4 = ""
  loc_A840E6: Branch loc_A84373
  loc_A840E9: ILdRf var_9C
  loc_A840EC: LitStr "Ultimos 12 meses"
  loc_A840EF: EqStr
  loc_A840F1: BranchF loc_A84262
  loc_A840F4: FLdRfVar var_90
  loc_A840F7: CVarRef
  loc_A840FC: FLdRfVar var_E4
  loc_A840FF: ImpAdCallFPR4  = Month()
  loc_A84104: FLdRfVar var_E4
  loc_A84107: LitVarI2 var_114, 12
  loc_A8410C: HardType
  loc_A8410D: EqVarBool
  loc_A8410F: FFree1Var var_E4 = ""
  loc_A84112: BranchF loc_A8413A
  loc_A84115: FLdRfVar var_90
  loc_A84118: CVarRef
  loc_A8411D: FLdRfVar var_E4
  loc_A84120: ImpAdCallFPR4  = Year()
  loc_A84125: FLdRfVar var_E4
  loc_A84128: CI2Var
  loc_A84129: FStI2 var_182
  loc_A8412C: FFree1Var var_E4 = ""
  loc_A8412F: LitI2_Byte 1
  loc_A84131: CUI1I2
  loc_A84133: FStUI1 var_184
  loc_A84137: Branch loc_A84186
  loc_A8413A: FLdRfVar var_90
  loc_A8413D: CVarRef
  loc_A84142: FLdRfVar var_E4
  loc_A84145: ImpAdCallFPR4  = Year()
  loc_A8414A: FLdRfVar var_E4
  loc_A8414D: LitVarI2 var_114, 1
  loc_A84152: SubVar var_F4
  loc_A84156: CI2Var
  loc_A84157: FStI2 var_182
  loc_A8415A: FFree1Var var_E4 = ""
  loc_A8415D: FLdRfVar var_90
  loc_A84160: CVarRef
  loc_A84165: FLdRfVar var_E4
  loc_A84168: ImpAdCallFPR4  = Month()
  loc_A8416D: FLdRfVar var_E4
  loc_A84170: LitVarI2 var_114, 1
  loc_A84175: AddVar var_F4
  loc_A84179: CUI1Var
  loc_A8417B: FStUI1 var_184
  loc_A8417F: FFreeVar var_E4 = ""
  loc_A84186: LitStr "SELECT IFNULL(Sum(ImpoLine),0) ImpoLine"
  loc_A84189: LitStr " FROM liquidacion l"
  loc_A8418C: ConcatStr
  loc_A8418D: FStStrNoPop var_A0
  loc_A84190: LitStr " INNER JOIN liquidarete lqr ON lqr.PeriInfo = l.PeriInfo AND lqr.ExpeImpu = l.ExpeImpu AND lqr.NumeLiqu = l.NumeLiqu AND lqr.CucuPers = "
  loc_A84193: ConcatStr
  loc_A84194: FStStrNoPop var_A4
  loc_A84197: ILdRf RetencionAcumulada
  loc_A8419A: ConcatStr
  loc_A8419B: FStStrNoPop var_A8
  loc_A8419E: LitStr " AND lqr.CodiRete = "
  loc_A841A1: ConcatStr
  loc_A841A2: FStStrNoPop var_AC
  loc_A841A5: FLdI2 CodiRete
  loc_A841A8: CStrUI1
  loc_A841AA: FStStrNoPop var_B0
  loc_A841AD: ConcatStr
  loc_A841AE: FStStrNoPop var_B4
  loc_A841B1: LitStr " AND lqr.CodiDere = "
  loc_A841B4: ConcatStr
  loc_A841B5: FStStrNoPop var_B8
  loc_A841B8: FLdUI1
  loc_A841BC: CStrI2
  loc_A841BE: FStStrNoPop var_BC
  loc_A841C1: ConcatStr
  loc_A841C2: FStStrNoPop var_C0
  loc_A841C5: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CucuPers = lqr.CucuPers AND lqn.CodiRete = lqr.CodiRete AND lqn.CodiDere = lqr.CodiDere AND lqn.FeanLine IS NULL"
  loc_A841C8: ConcatStr
  loc_A841C9: FStStrNoPop var_C4
  loc_A841CC: LitStr " WHERE l.PeriInfo = "
  loc_A841CF: ConcatStr
  loc_A841D0: FStStrNoPop var_178
  loc_A841D3: FLdI2 var_182
  loc_A841D6: CStrUI1
  loc_A841D8: FStStrNoPop var_188
  loc_A841DB: ConcatStr
  loc_A841DC: FStStrNoPop var_18C
  loc_A841DF: LitStr " AND Month(FechLiqu) >= "
  loc_A841E2: ConcatStr
  loc_A841E3: FStStrNoPop var_190
  loc_A841E6: FLdUI1
  loc_A841EA: CStrI2
  loc_A841EC: FStStrNoPop var_194
  loc_A841EF: ConcatStr
  loc_A841F0: FStStrNoPop var_198
  loc_A841F3: LitStr " AND FeanLiqu IS NULL LIMIT 1"
  loc_A841F6: ConcatStr
  loc_A841F7: FStStrNoPop var_19C
  loc_A841FA: Call EjecutarRsCls4(from_stack_1v)
  loc_A841FF: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_178 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_A84224: FLdRfVar var_E4
  loc_A84227: FLdRfVar var_180
  loc_A8422A: LitVarStr var_D4, "ImpoLine"
  loc_A8422F: PopAdLdVar
  loc_A84230: FLdRfVar var_17C
  loc_A84233: FLdPr Me
  loc_A84236: MemLdPr global_68
  loc_A84239:  = Me.Fields
  loc_A8423E: FLdPr var_17C
  loc_A84241: from_stack_2 = Me.Item(from_stack_1)
  loc_A84246: FLdPr var_180
  loc_A84249:  = Me.Value
  loc_A8424E: FLdRfVar var_E4
  loc_A84251: CR4Var
  loc_A84252: FStFPR8 var_8C
  loc_A84255: FFreeAd var_17C = ""
  loc_A8425C: FFree1Var var_E4 = ""
  loc_A8425F: Branch loc_A84373
  loc_A84262: ILdRf var_9C
  loc_A84265: LitStr "Año calendario"
  loc_A84268: EqStr
  loc_A8426A: BranchF loc_A84373
  loc_A8426D: LitStr "SELECT IFNULL(Sum(ImpoLine),0) ImpoLine"
  loc_A84270: LitStr " FROM liquidacion l"
  loc_A84273: ConcatStr
  loc_A84274: FStStrNoPop var_A0
  loc_A84277: LitStr " INNER JOIN liquidarete lqr ON lqr.PeriInfo = l.PeriInfo AND lqr.ExpeImpu = l.ExpeImpu AND lqr.NumeLiqu = l.NumeLiqu AND lqr.CucuPers = "
  loc_A8427A: ConcatStr
  loc_A8427B: FStStrNoPop var_A4
  loc_A8427E: ILdRf RetencionAcumulada
  loc_A84281: ConcatStr
  loc_A84282: FStStrNoPop var_A8
  loc_A84285: LitStr " AND lqr.CodiRete = "
  loc_A84288: ConcatStr
  loc_A84289: FStStrNoPop var_AC
  loc_A8428C: FLdI2 CodiRete
  loc_A8428F: CStrUI1
  loc_A84291: FStStrNoPop var_B0
  loc_A84294: ConcatStr
  loc_A84295: FStStrNoPop var_B4
  loc_A84298: LitStr " AND lqr.CodiDere = "
  loc_A8429B: ConcatStr
  loc_A8429C: FStStrNoPop var_B8
  loc_A8429F: FLdUI1
  loc_A842A3: CStrI2
  loc_A842A5: FStStrNoPop var_BC
  loc_A842A8: ConcatStr
  loc_A842A9: FStStrNoPop var_C0
  loc_A842AC: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = l.PeriInfo AND lqn.ExpeImpu = l.ExpeImpu AND lqn.NumeLiqu = l.NumeLiqu AND lqn.CucuPers = lqr.CucuPers AND lqn.CodiRete = lqr.CodiRete AND lqn.CodiDere = lqr.CodiDere AND lqn.FeanLine IS NULL"
  loc_A842AF: ConcatStr
  loc_A842B0: FStStrNoPop var_C4
  loc_A842B3: LitStr " WHERE l.PeriInfo = "
  loc_A842B6: ConcatStr
  loc_A842B7: CVarStr var_F4
  loc_A842BA: FLdRfVar var_90
  loc_A842BD: CVarRef
  loc_A842C2: FLdRfVar var_E4
  loc_A842C5: ImpAdCallFPR4  = Year()
  loc_A842CA: FLdRfVar var_E4
  loc_A842CD: ConcatVar var_104
  loc_A842D1: LitVarStr var_114, " AND FechLiqu >= '"
  loc_A842D6: ConcatVar var_124
  loc_A842DA: FLdRfVar var_90
  loc_A842DD: CVarRef
  loc_A842E2: FLdRfVar var_144
  loc_A842E5: ImpAdCallFPR4  = Year()
  loc_A842EA: FLdRfVar var_144
  loc_A842ED: ConcatVar var_154
  loc_A842F1: LitVarStr var_164, "-01-01"
  loc_A842F6: ConcatVar var_174
  loc_A842FA: LitVarStr var_1AC, "' AND FeanLiqu IS NULL LIMIT 1"
  loc_A842FF: ConcatVar var_1BC
  loc_A84303: CStrVarVal var_178
  loc_A84307: Call EjecutarRsCls4(from_stack_1v)
  loc_A8430C: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A84325: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = "": var_154 = "": var_174 = ""
  loc_A84338: FLdRfVar var_E4
  loc_A8433B: FLdRfVar var_180
  loc_A8433E: LitVarStr var_D4, "ImpoLine"
  loc_A84343: PopAdLdVar
  loc_A84344: FLdRfVar var_17C
  loc_A84347: FLdPr Me
  loc_A8434A: MemLdPr global_68
  loc_A8434D:  = Me.Fields
  loc_A84352: FLdPr var_17C
  loc_A84355: from_stack_2 = Me.Item(from_stack_1)
  loc_A8435A: FLdPr var_180
  loc_A8435D:  = Me.Value
  loc_A84362: FLdRfVar var_E4
  loc_A84365: CR4Var
  loc_A84366: FStFPR8 var_8C
  loc_A84369: FFreeAd var_17C = ""
  loc_A84370: FFree1Var var_E4 = ""
  loc_A84373: ExitProcCbHresult
End Function

Private Function Proc_17_37_972A84() '972A84
  'Data Table: 42D3EC
  loc_972A60: LitStr "Primary"
  loc_972A63: FLdPr Me
  loc_972A66: LateIdLdVar var_94 DispID_4 0
  loc_972A6D: CastAdVar Me
  loc_972A71: FStAdFunc var_98
  loc_972A74: FLdPr var_98
  loc_972A7C: FFree1Ad var_98
  loc_972A7F: FFree1Var var_94 = ""
  loc_972A82: ExitProcHresult
End Function

Private Function Proc_17_38_96897C(arg_C) '96897C
  'Data Table: 42D3EC
  loc_968960: ILdI4 arg_C
  loc_968963: FStStrCopy var_88
  loc_968966: ILdRf var_88
  loc_968969: LitStr "Primary"
  loc_96896C: EqStr
  loc_96896E: BranchF loc_96897B
  loc_968971: FLdPr Me
  loc_968974: MemLdStr RsFrm
  loc_968977: IStAd
  loc_96897B: ExitProcHresult
End Function
