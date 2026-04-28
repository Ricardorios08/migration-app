VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscontracargos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '410BD8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '410BE7
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '410BF6
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96EC2C
  'Data Table: 410938
  loc_96EC04: FLdRfVar var_88
  loc_96EC07: FLdPr Me
  loc_96EC0A: MemLdPr RsFrm
  loc_96EC0D:  = Me.RecordCount
  loc_96EC12: ILdRf var_88
  loc_96EC15: LitI4 0
  loc_96EC1A: GtI4
  loc_96EC1B: BranchF loc_96EC29
  loc_96EC1E: FLdPr Me
  loc_96EC21: MemLdPr RsFrm
  loc_96EC24: Me.MoveFirst
  loc_96EC29: ExitProcHresult
End Sub

Public Sub MoveLast() '96EA1C
  'Data Table: 410938
  loc_96E9F4: FLdRfVar var_88
  loc_96E9F7: FLdPr Me
  loc_96E9FA: MemLdPr RsFrm
  loc_96E9FD:  = Me.RecordCount
  loc_96EA02: ILdRf var_88
  loc_96EA05: LitI4 0
  loc_96EA0A: GtI4
  loc_96EA0B: BranchF loc_96EA19
  loc_96EA0E: FLdPr Me
  loc_96EA11: MemLdPr RsFrm
  loc_96EA14: Me.MoveLast
  loc_96EA19: ExitProcHresult
End Sub

Public Sub MoveNext() '9939E0
  'Data Table: 410938
  loc_993980: FLdRfVar var_86
  loc_993983: FLdPr Me
  loc_993986: MemLdPr RsFrm
  loc_993989:  = Me.EOF
  loc_99398E: FLdI2 var_86
  loc_993991: NotI4
  loc_993992: BranchF loc_9939A0
  loc_993995: FLdPr Me
  loc_993998: MemLdPr RsFrm
  loc_99399B: Me.MoveNext
  loc_9939A0: FLdRfVar var_86
  loc_9939A3: FLdPr Me
  loc_9939A6: MemLdPr RsFrm
  loc_9939A9:  = Me.EOF
  loc_9939AE: FLdI2 var_86
  loc_9939B1: FLdRfVar var_8C
  loc_9939B4: FLdPr Me
  loc_9939B7: MemLdPr RsFrm
  loc_9939BA:  = Me.RecordCount
  loc_9939BF: ILdRf var_8C
  loc_9939C2: LitI4 0
  loc_9939C7: GtI4
  loc_9939C8: AndI4
  loc_9939C9: BranchF loc_9939DC
  loc_9939CC: ImpAdCallFPR4 Beep()
  loc_9939D1: FLdPr Me
  loc_9939D4: MemLdPr RsFrm
  loc_9939D7: Me.MoveLast
  loc_9939DC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '96BC90
  'Data Table: 410938
  loc_96BC6C: FLdRfVar var_86
  loc_96BC6F: FLdPr Me
  loc_96BC72: MemLdPr RsFrm
  loc_96BC75:  = Me.EOF
  loc_96BC7A: FLdI2 var_86
  loc_96BC7D: NotI4
  loc_96BC7E: BranchF loc_96BC8C
  loc_96BC81: FLdPr Me
  loc_96BC84: MemLdPr RsFrm
  loc_96BC87: Me.MoveNext
  loc_96BC8C: ExitProcHresult
End Sub

Public Sub Move(iValor) '949E20
  'Data Table: 410938
  loc_949E0C: LitVar_Missing var_94
  loc_949E0F: PopAdLdVar
  loc_949E10: ILdI2 iValor
  loc_949E13: CI4UI1
  loc_949E14: FLdPr Me
  loc_949E17: MemLdPr RsFrm
  loc_949E1A: Me.Move from_stack_1, from_stack_2
  loc_949E1F: ExitProcHresult
End Sub

Public Sub MovePrevious() '9949A0
  'Data Table: 410938
  loc_994940: FLdRfVar var_86
  loc_994943: FLdPr Me
  loc_994946: MemLdPr RsFrm
  loc_994949:  = Me.BOF
  loc_99494E: FLdI2 var_86
  loc_994951: NotI4
  loc_994952: BranchF loc_994960
  loc_994955: FLdPr Me
  loc_994958: MemLdPr RsFrm
  loc_99495B: Me.MovePrevious
  loc_994960: FLdRfVar var_86
  loc_994963: FLdPr Me
  loc_994966: MemLdPr RsFrm
  loc_994969:  = Me.BOF
  loc_99496E: FLdI2 var_86
  loc_994971: FLdRfVar var_8C
  loc_994974: FLdPr Me
  loc_994977: MemLdPr RsFrm
  loc_99497A:  = Me.RecordCount
  loc_99497F: ILdRf var_8C
  loc_994982: LitI4 0
  loc_994987: GtI4
  loc_994988: AndI4
  loc_994989: BranchF loc_99499C
  loc_99498C: ImpAdCallFPR4 Beep()
  loc_994991: FLdPr Me
  loc_994994: MemLdPr RsFrm
  loc_994997: Me.MoveFirst
  loc_99499C: ExitProcHresult
End Sub

Public Property Get EOF() '9544DC
  'Data Table: 410938
  loc_9544C0: FLdRfVar var_88
  loc_9544C3: FLdPr Me
  loc_9544C6: MemLdPr RsFrm
  loc_9544C9:  = Me.EOF
  loc_9544CE: FLdI2 var_88
  loc_9544D1: FStI2 var_86
  loc_9544D4: ExitProcCbHresult
End Sub

Public Property Get BOF() '9541E4
  'Data Table: 410938
  loc_9541C8: FLdRfVar var_88
  loc_9541CB: FLdPr Me
  loc_9541CE: MemLdPr RsFrm
  loc_9541D1:  = Me.BOF
  loc_9541D6: FLdI2 var_88
  loc_9541D9: FStI2 var_86
  loc_9541DC: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '944A84
  'Data Table: 410938
  loc_944A74: ILdI4 sOrden
  loc_944A77: FLdPr Me
  loc_944A7A: MemLdPr RsFrm
  loc_944A7D: Me.Sort = from_stack_1
  loc_944A82: ExitProcHresult
End Sub

Public Sub Find(sFind) '967210
  'Data Table: 410938
  loc_9671F0: LitVar_Missing var_94
  loc_9671F3: PopAdLdVar
  loc_9671F4: LitI4 1
  loc_9671F9: LitI4 0
  loc_9671FE: ILdI4 sFind
  loc_967201: FLdPr Me
  loc_967204: MemLdPr RsFrm
  loc_967207: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96720C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '949E64
  'Data Table: 410938
  loc_949E50: ILdI4 sCriterio
  loc_949E53: CVarStr var_94
  loc_949E56: PopAdLdVar
  loc_949E57: FLdPr Me
  loc_949E5A: MemLdPr RsFrm
  loc_949E5D: Me.Filter = from_stack_1
  loc_949E62: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9547D4
  'Data Table: 410938
  loc_9547B8: FLdRfVar var_8C
  loc_9547BB: FLdPr Me
  loc_9547BE: MemLdPr RsFrm
  loc_9547C1:  = Me.AbsolutePosition
  loc_9547C6: ILdRf var_8C
  loc_9547C9: FStR4 var_88
  loc_9547CC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9546F0
  'Data Table: 410938
  loc_9546D4: FLdRfVar var_8C
  loc_9546D7: FLdPr Me
  loc_9546DA: MemLdPr RsFrm
  loc_9546DD:  = Me.RecordCount
  loc_9546E2: ILdRf var_8C
  loc_9546E5: FStR4 var_88
  loc_9546E8: ExitProcCbHresult
End Sub

Public Sub AddNew(IdContra, sFecha, doComiMoba, sccEnteRec) 'B82EC4
  'Data Table: 410938
  loc_B82210: ILdRf sFecha
  loc_B82213: FStStrCopy var_88
  loc_B82216: ILdRf arg_1C
  loc_B82219: FStStrCopy var_8C
  loc_B8221C: OnErrorGoto loc_B82EAB
  loc_B8221F: LitStr "START TRANSACTION;"
  loc_B82222: FStStrCopy var_9C
  loc_B82225: LitStr "SELECT SUM(ImpoIngr) * -1 ImpoIngr"
  loc_B82228: LitStr " FROM ingreso"
  loc_B8222B: ConcatStr
  loc_B8222C: FStStrNoPop var_B4
  loc_B8222F: LitStr " WHERE PeriInfo = "
  loc_B82232: ConcatStr
  loc_B82233: FStStrNoPop var_B8
  loc_B82236: ImpAdLdI2 MemVar_C3D064
  loc_B82239: CStrUI1
  loc_B8223B: FStStrNoPop var_BC
  loc_B8223E: ConcatStr
  loc_B8223F: FStStrNoPop var_C0
  loc_B82242: LitStr " AND IdContra = "
  loc_B82245: ConcatStr
  loc_B82246: FStStrNoPop var_C4
  loc_B82249: FLdI2 IdContra
  loc_B8224C: CStrUI1
  loc_B8224E: FStStrNoPop var_C8
  loc_B82251: ConcatStr
  loc_B82252: FStStrNoPop var_CC
  loc_B82255: LitStr vbNullString
  loc_B82258: ConcatStr
  loc_B82259: FStStrNoPop var_D0
  loc_B8225C: LitStr " AND ImpoIngr < 0"
  loc_B8225F: ConcatStr
  loc_B82260: FStStrNoPop var_D4
  loc_B82263: LitStr " ;"
  loc_B82266: ConcatStr
  loc_B82267: FStStrNoPop var_D8
  loc_B8226A: Call EjecutarRsCls(from_stack_1v)
  loc_B8226F: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B82286: FLdRfVar var_100
  loc_B82289: FLdRfVar var_F0
  loc_B8228C: LitVarStr var_EC, "ImpoIngr"
  loc_B82291: PopAdLdVar
  loc_B82292: FLdRfVar var_DC
  loc_B82295: FLdPr Me
  loc_B82298: MemLdPr global_56
  loc_B8229B:  = Me.Fields
  loc_B822A0: FLdPr var_DC
  loc_B822A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B822A8: FLdPr var_F0
  loc_B822AB:  = Me.Value
  loc_B822B0: FLdRfVar var_100
  loc_B822B3: CR4Var
  loc_B822B4: FStFPR8 var_98
  loc_B822B7: FFreeAd var_DC = ""
  loc_B822BE: FFree1Var var_100 = ""
  loc_B822C1: ILdRf var_9C
  loc_B822C4: LitStr "INSERT INTO contpres.ingreso (FechIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr, DetaIngr, AutoIngr, IdContra, AltaUsua)"
  loc_B822C7: ConcatStr
  loc_B822C8: FStStrNoPop var_B4
  loc_B822CB: LitStr " VALUES ("
  loc_B822CE: ConcatStr
  loc_B822CF: FStStrNoPop var_B8
  loc_B822D2: LitI4 1
  loc_B822D7: LitI4 1
  loc_B822DC: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B822E1: FStVarCopyObj var_100
  loc_B822E4: FLdRfVar var_100
  loc_B822E7: FLdRfVar var_88
  loc_B822EA: CVarRef
  loc_B822EF: ImpAdCallI2 Format$(, )
  loc_B822F4: FStStrNoPop var_BC
  loc_B822F7: ConcatStr
  loc_B822F8: FStStrNoPop var_C0
  loc_B822FB: LitStr ", "
  loc_B822FE: ConcatStr
  loc_B822FF: FStStrNoPop var_C4
  loc_B82302: ImpAdLdI2 MemVar_C3D064
  loc_B82305: CStrUI1
  loc_B82307: FStStrNoPop var_C8
  loc_B8230A: ConcatStr
  loc_B8230B: FStStrNoPop var_CC
  loc_B8230E: LitStr ", '"
  loc_B82311: ConcatStr
  loc_B82312: FStStrNoPop var_D0
  loc_B82315: ILdRf var_8C
  loc_B82318: ConcatStr
  loc_B82319: FStStrNoPop var_D4
  loc_B8231C: LitStr "', '', 150, "
  loc_B8231F: ConcatStr
  loc_B82320: FStStrNoPop var_114
  loc_B82323: LitI4 0
  loc_B82328: LitI4 -1
  loc_B8232D: LitI4 1
  loc_B82332: LitStr "."
  loc_B82335: LitStr ","
  loc_B82338: FLdFPR8 var_98
  loc_B8233B: FLdFPR8 doComiMoba
  loc_B8233E: SubR4
  loc_B8233F: CStrR8
  loc_B82341: FStStrNoPop var_D8
  loc_B82344: ImpAdCallI2 Replace(, , , , , )
  loc_B82349: FStStrNoPop var_118
  loc_B8234C: ConcatStr
  loc_B8234D: FStStrNoPop var_11C
  loc_B82350: LitStr ", '', 2, "
  loc_B82353: ConcatStr
  loc_B82354: FStStrNoPop var_120
  loc_B82357: FLdI2 IdContra
  loc_B8235A: CStrUI1
  loc_B8235C: FStStrNoPop var_124
  loc_B8235F: ConcatStr
  loc_B82360: FStStrNoPop var_128
  loc_B82363: LitStr ", '"
  loc_B82366: ConcatStr
  loc_B82367: FStStrNoPop var_12C
  loc_B8236A: ImpAdLdI4 MemVar_C3D03C
  loc_B8236D: ConcatStr
  loc_B8236E: FStStrNoPop var_130
  loc_B82371: LitStr "');"
  loc_B82374: ConcatStr
  loc_B82375: FStStr var_9C
  loc_B82378: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_B8239F: FFree1Var var_100 = ""
  loc_B823A2: FLdFPR8 doComiMoba
  loc_B823A5: LitI2_Byte 0
  loc_B823A7: CR8I2
  loc_B823A8: GtR4
  loc_B823A9: BranchF loc_B82477
  loc_B823AC: ILdRf var_9C
  loc_B823AF: LitStr "INSERT INTO contpres.ingreso (FechIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr, DetaIngr, AutoIngr, IdContra, AltaUsua)"
  loc_B823B2: ConcatStr
  loc_B823B3: FStStrNoPop var_B4
  loc_B823B6: LitStr " VALUES ("
  loc_B823B9: ConcatStr
  loc_B823BA: FStStrNoPop var_B8
  loc_B823BD: LitI4 1
  loc_B823C2: LitI4 1
  loc_B823C7: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B823CC: FStVarCopyObj var_100
  loc_B823CF: FLdRfVar var_100
  loc_B823D2: FLdRfVar var_88
  loc_B823D5: CVarRef
  loc_B823DA: ImpAdCallI2 Format$(, )
  loc_B823DF: FStStrNoPop var_BC
  loc_B823E2: ConcatStr
  loc_B823E3: FStStrNoPop var_C0
  loc_B823E6: LitStr ", "
  loc_B823E9: ConcatStr
  loc_B823EA: FStStrNoPop var_C4
  loc_B823ED: ImpAdLdI2 MemVar_C3D064
  loc_B823F0: CStrUI1
  loc_B823F2: FStStrNoPop var_C8
  loc_B823F5: ConcatStr
  loc_B823F6: FStStrNoPop var_CC
  loc_B823F9: LitStr ", '1103700000', '', 150, "
  loc_B823FC: ConcatStr
  loc_B823FD: FStStrNoPop var_D4
  loc_B82400: LitI4 0
  loc_B82405: LitI4 -1
  loc_B8240A: LitI4 1
  loc_B8240F: LitStr "."
  loc_B82412: LitStr ","
  loc_B82415: FLdFPR8 doComiMoba
  loc_B82418: CStrR8
  loc_B8241A: FStStrNoPop var_D0
  loc_B8241D: ImpAdCallI2 Replace(, , , , , )
  loc_B82422: FStStrNoPop var_D8
  loc_B82425: ConcatStr
  loc_B82426: FStStrNoPop var_114
  loc_B82429: LitStr ", '', 2, "
  loc_B8242C: ConcatStr
  loc_B8242D: FStStrNoPop var_118
  loc_B82430: FLdI2 IdContra
  loc_B82433: CStrUI1
  loc_B82435: FStStrNoPop var_11C
  loc_B82438: ConcatStr
  loc_B82439: FStStrNoPop var_120
  loc_B8243C: LitStr ", '"
  loc_B8243F: ConcatStr
  loc_B82440: FStStrNoPop var_124
  loc_B82443: ImpAdLdI4 MemVar_C3D03C
  loc_B82446: ConcatStr
  loc_B82447: FStStrNoPop var_128
  loc_B8244A: LitStr "');"
  loc_B8244D: ConcatStr
  loc_B8244E: FStStr var_9C
  loc_B82451: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_B82474: FFree1Var var_100 = ""
  loc_B82477: LitStr "SELECT * FROM recaudacion.contracargo WHERE IdContra = "
  loc_B8247A: FLdI2 IdContra
  loc_B8247D: CStrUI1
  loc_B8247F: FStStrNoPop var_B4
  loc_B82482: ConcatStr
  loc_B82483: FStStrNoPop var_B8
  loc_B82486: LitStr ";"
  loc_B82489: ConcatStr
  loc_B8248A: FStStrNoPop var_BC
  loc_B8248D: Call EjecutarRsCls(from_stack_1v)
  loc_B82492: FFreeStr var_B4 = "": var_B8 = ""
  loc_B8249B: FLdRfVar var_100
  loc_B8249E: FLdRfVar var_F0
  loc_B824A1: LitVarStr var_EC, "NumeExpe"
  loc_B824A6: PopAdLdVar
  loc_B824A7: FLdRfVar var_DC
  loc_B824AA: FLdPr Me
  loc_B824AD: MemLdPr global_56
  loc_B824B0:  = Me.Fields
  loc_B824B5: FLdPr var_DC
  loc_B824B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B824BD: FLdPr var_F0
  loc_B824C0:  = Me.Value
  loc_B824C5: FLdRfVar var_100
  loc_B824C8: CStrVarTmp
  loc_B824C9: FStStr var_A0
  loc_B824CC: FFreeAd var_DC = ""
  loc_B824D3: FFree1Var var_100 = ""
  loc_B824D6: LitVarStr var_110, "Contracargo: "
  loc_B824DB: FLdRfVar var_100
  loc_B824DE: FLdRfVar var_F0
  loc_B824E1: LitVarStr var_EC, "NumeCont"
  loc_B824E6: PopAdLdVar
  loc_B824E7: FLdRfVar var_DC
  loc_B824EA: FLdPr Me
  loc_B824ED: MemLdPr global_56
  loc_B824F0:  = Me.Fields
  loc_B824F5: FLdPr var_DC
  loc_B824F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B824FD: FLdPr var_F0
  loc_B82500:  = Me.Value
  loc_B82505: FLdRfVar var_100
  loc_B82508: ConcatVar var_140
  loc_B8250C: LitVarStr var_150, " - Exp.: "
  loc_B82511: ConcatVar var_160
  loc_B82515: FLdRfVar var_188
  loc_B82518: FLdRfVar var_178
  loc_B8251B: LitVarStr var_174, "NumeExpe"
  loc_B82520: PopAdLdVar
  loc_B82521: FLdRfVar var_164
  loc_B82524: FLdPr Me
  loc_B82527: MemLdPr global_56
  loc_B8252A:  = Me.Fields
  loc_B8252F: FLdPr var_164
  loc_B82532: from_stack_2 = Me.Item(from_stack_1)
  loc_B82537: FLdPr var_178
  loc_B8253A:  = Me.Value
  loc_B8253F: FLdRfVar var_188
  loc_B82542: ConcatVar var_198
  loc_B82546: LitVarStr var_1A8, " - Boleto: "
  loc_B8254B: ConcatVar var_1B8
  loc_B8254F: FLdRfVar var_1E0
  loc_B82552: FLdRfVar var_1D0
  loc_B82555: LitVarStr var_1CC, "NumeBole"
  loc_B8255A: PopAdLdVar
  loc_B8255B: FLdRfVar var_1BC
  loc_B8255E: FLdPr Me
  loc_B82561: MemLdPr global_56
  loc_B82564:  = Me.Fields
  loc_B82569: FLdPr var_1BC
  loc_B8256C: from_stack_2 = Me.Item(from_stack_1)
  loc_B82571: FLdPr var_1D0
  loc_B82574:  = Me.Value
  loc_B82579: FLdRfVar var_1E0
  loc_B8257C: ConcatVar var_1F0
  loc_B82580: LitVarStr var_200, "/"
  loc_B82585: ConcatVar var_210
  loc_B82589: FLdRfVar var_238
  loc_B8258C: FLdRfVar var_228
  loc_B8258F: LitVarStr var_224, "PeriBole"
  loc_B82594: PopAdLdVar
  loc_B82595: FLdRfVar var_214
  loc_B82598: FLdPr Me
  loc_B8259B: MemLdPr global_56
  loc_B8259E:  = Me.Fields
  loc_B825A3: FLdPr var_214
  loc_B825A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B825AB: FLdPr var_228
  loc_B825AE:  = Me.Value
  loc_B825B3: FLdRfVar var_238
  loc_B825B6: ConcatVar var_248
  loc_B825BA: CStrVarTmp
  loc_B825BB: FStStr var_A4
  loc_B825BE: FFreeAd var_DC = "": var_F0 = "": var_164 = "": var_178 = "": var_1BC = "": var_1D0 = "": var_214 = ""
  loc_B825D1: FFreeVar var_100 = "": var_140 = "": var_160 = "": var_188 = "": var_198 = "": var_1B8 = "": var_1E0 = "": var_1F0 = "": var_210 = "": var_238 = ""
  loc_B825EA: FLdFPR8 doComiMoba
  loc_B825ED: LitI2_Byte 0
  loc_B825EF: CR8I2
  loc_B825F0: GtR4
  loc_B825F1: BranchF loc_B82E5A
  loc_B825F4: LitStr "SELECT IFNULL(Max(AjusImpu),0)+1 AjusImpu FROM imputacion WHERE PeriInfo = "
  loc_B825F7: ImpAdLdI2 MemVar_C3D064
  loc_B825FA: CStrUI1
  loc_B825FC: FStStrNoPop var_B4
  loc_B825FF: ConcatStr
  loc_B82600: FStStrNoPop var_B8
  loc_B82603: LitStr ";"
  loc_B82606: ConcatStr
  loc_B82607: FStStrNoPop var_BC
  loc_B8260A: Call EjecutarRsCls(from_stack_1v)
  loc_B8260F: FFreeStr var_B4 = "": var_B8 = ""
  loc_B82618: FLdRfVar var_100
  loc_B8261B: FLdRfVar var_F0
  loc_B8261E: LitVarStr var_EC, "AjusImpu"
  loc_B82623: PopAdLdVar
  loc_B82624: FLdRfVar var_DC
  loc_B82627: FLdPr Me
  loc_B8262A: MemLdPr global_56
  loc_B8262D:  = Me.Fields
  loc_B82632: FLdPr var_DC
  loc_B82635: from_stack_2 = Me.Item(from_stack_1)
  loc_B8263A: FLdPr var_F0
  loc_B8263D:  = Me.Value
  loc_B82642: FLdRfVar var_100
  loc_B82645: CI2Var
  loc_B82646: FStI2 var_A6
  loc_B82649: FFreeAd var_DC = ""
  loc_B82650: FFree1Var var_100 = ""
  loc_B82653: LitStr "SELECT IFNULL(Max(IdImpu),0) IdImpu"
  loc_B82656: LitStr " FROM paracomi pc"
  loc_B82659: ConcatStr
  loc_B8265A: FStStrNoPop var_B4
  loc_B8265D: LitStr " INNER JOIN imputacion i ON i.PeriInfo = pc.PeriInfo AND i.ExorImpu = pc.ExorImpu AND i.PrevImpu != 0"
  loc_B82660: ConcatStr
  loc_B82661: FStStrNoPop var_B8
  loc_B82664: LitStr " WHERE pc.PeriInfo = "
  loc_B82667: ConcatStr
  loc_B82668: FStStrNoPop var_BC
  loc_B8266B: ImpAdLdI2 MemVar_C3D064
  loc_B8266E: CStrUI1
  loc_B82670: FStStrNoPop var_C0
  loc_B82673: ConcatStr
  loc_B82674: FStStrNoPop var_C4
  loc_B82677: LitStr " AND pc.MesPaco = "
  loc_B8267A: ConcatStr
  loc_B8267B: CVarStr var_140
  loc_B8267E: FLdRfVar var_88
  loc_B82681: CVarRef
  loc_B82686: FLdRfVar var_100
  loc_B82689: ImpAdCallFPR4  = Month()
  loc_B8268E: FLdRfVar var_100
  loc_B82691: ConcatVar var_160
  loc_B82695: LitVarStr var_110, " ;"
  loc_B8269A: ConcatVar var_188
  loc_B8269E: CStrVarVal var_C8
  loc_B826A2: Call EjecutarRsCls(from_stack_1v)
  loc_B826A7: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B826B6: FFreeVar var_140 = "": var_100 = "": var_160 = ""
  loc_B826C1: FLdRfVar var_100
  loc_B826C4: FLdRfVar var_F0
  loc_B826C7: LitVarStr var_EC, "IdImpu"
  loc_B826CC: PopAdLdVar
  loc_B826CD: FLdRfVar var_DC
  loc_B826D0: FLdPr Me
  loc_B826D3: MemLdPr global_56
  loc_B826D6:  = Me.Fields
  loc_B826DB: FLdPr var_DC
  loc_B826DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B826E3: FLdPr var_F0
  loc_B826E6:  = Me.Value
  loc_B826EB: FLdRfVar var_100
  loc_B826EE: CI4Var
  loc_B826F0: FStR4 var_B0
  loc_B826F3: FFreeAd var_DC = ""
  loc_B826FA: FFree1Var var_100 = ""
  loc_B826FD: ILdRf var_9C
  loc_B82700: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,ExpeImpu,NumeLiqu,NumeOrpa,CantImpu,ImunImpu,PagaImpu,DetaImpu,CucuPers,AjusImpu,CodiNope,Item,Altern,CodiOrco,CodiRece,NumeFact,FefaDeve,AltaUsua)"
  loc_B82703: ConcatStr
  loc_B82704: FStStrNoPop var_B4
  loc_B82707: LitStr " SELECT PeriInfo, (SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = "
  loc_B8270A: ConcatStr
  loc_B8270B: FStStrNoPop var_B8
  loc_B8270E: ImpAdLdI2 MemVar_C3D064
  loc_B82711: CStrUI1
  loc_B82713: FStStrNoPop var_BC
  loc_B82716: ConcatStr
  loc_B82717: FStStrNoPop var_C0
  loc_B8271A: LitStr " LIMIT 1), CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B8271D: ConcatStr
  loc_B8271E: FStStrNoPop var_C4
  loc_B82721: LitI4 1
  loc_B82726: LitI4 1
  loc_B8272B: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82730: FStVarCopyObj var_100
  loc_B82733: FLdRfVar var_100
  loc_B82736: FLdRfVar var_88
  loc_B82739: CVarRef
  loc_B8273E: ImpAdCallI2 Format$(, )
  loc_B82743: FStStrNoPop var_C8
  loc_B82746: ConcatStr
  loc_B82747: FStStrNoPop var_CC
  loc_B8274A: LitStr ", ExorImpu, '"
  loc_B8274D: ConcatStr
  loc_B8274E: FStStrNoPop var_D0
  loc_B82751: ILdRf var_A0
  loc_B82754: ConcatStr
  loc_B82755: FStStrNoPop var_D4
  loc_B82758: LitStr "', NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B8275B: ConcatStr
  loc_B8275C: FStStrNoPop var_114
  loc_B8275F: FLdFPR8 doComiMoba
  loc_B82762: LitI2_Byte &HFF
  loc_B82764: CR8I2
  loc_B82765: MulR8
  loc_B82766: CStrR8
  loc_B82768: FStStrNoPop var_D8
  loc_B8276B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82770: FStStrNoPop var_118
  loc_B82773: ConcatStr
  loc_B82774: FStStrNoPop var_11C
  loc_B82777: LitStr " ImunImpu, "
  loc_B8277A: ConcatStr
  loc_B8277B: FStStrNoPop var_124
  loc_B8277E: FLdFPR8 doComiMoba
  loc_B82781: LitI2_Byte &HFF
  loc_B82783: CR8I2
  loc_B82784: MulR8
  loc_B82785: CStrR8
  loc_B82787: FStStrNoPop var_120
  loc_B8278A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B8278F: FStStrNoPop var_128
  loc_B82792: ConcatStr
  loc_B82793: FStStrNoPop var_12C
  loc_B82796: LitStr " doComiMoba, '"
  loc_B82799: ConcatStr
  loc_B8279A: FStStrNoPop var_130
  loc_B8279D: ILdRf var_A4
  loc_B827A0: ConcatStr
  loc_B827A1: FStStrNoPop var_24C
  loc_B827A4: LitStr "', CucuPers, "
  loc_B827A7: ConcatStr
  loc_B827A8: FStStrNoPop var_250
  loc_B827AB: FLdI2 var_A6
  loc_B827AE: CStrUI1
  loc_B827B0: FStStrNoPop var_254
  loc_B827B3: ConcatStr
  loc_B827B4: FStStrNoPop var_258
  loc_B827B7: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B827BA: ConcatStr
  loc_B827BB: FStStrNoPop var_25C
  loc_B827BE: ImpAdLdI4 MemVar_C3D03C
  loc_B827C1: ConcatStr
  loc_B827C2: FStStrNoPop var_260
  loc_B827C5: LitStr "'"
  loc_B827C8: ConcatStr
  loc_B827C9: FStStrNoPop var_264
  loc_B827CC: LitStr " FROM imputacion"
  loc_B827CF: ConcatStr
  loc_B827D0: FStStrNoPop var_268
  loc_B827D3: LitStr " WHERE PeriInfo = "
  loc_B827D6: ConcatStr
  loc_B827D7: FStStrNoPop var_26C
  loc_B827DA: ImpAdLdI2 MemVar_C3D064
  loc_B827DD: CStrUI1
  loc_B827DF: FStStrNoPop var_270
  loc_B827E2: ConcatStr
  loc_B827E3: FStStrNoPop var_274
  loc_B827E6: LitStr " AND IdImpu = "
  loc_B827E9: ConcatStr
  loc_B827EA: FStStrNoPop var_278
  loc_B827ED: ILdRf var_B0
  loc_B827F0: CStrI4
  loc_B827F2: FStStrNoPop var_27C
  loc_B827F5: ConcatStr
  loc_B827F6: FStStrNoPop var_280
  loc_B827F9: LitStr ";"
  loc_B827FC: ConcatStr
  loc_B827FD: FStStr var_9C
  loc_B82800: FFreeStr var_27C = "": var_280 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_274 = ""
  loc_B82843: FFree1Var var_100 = ""
  loc_B82846: ILdRf var_9C
  loc_B82849: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,ExpeImpu,NumeLiqu,NumeOrpa,CantImpu,ImunImpu,MapaImpu,DetaImpu,CucuPers,AjusImpu,CodiNope,Item,Altern,CodiOrco,CodiRece,NumeFact,FefaDeve,AltaUsua)"
  loc_B8284C: ConcatStr
  loc_B8284D: FStStrNoPop var_B4
  loc_B82850: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B82853: ConcatStr
  loc_B82854: FStStrNoPop var_B8
  loc_B82857: LitI4 1
  loc_B8285C: LitI4 1
  loc_B82861: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82866: FStVarCopyObj var_100
  loc_B82869: FLdRfVar var_100
  loc_B8286C: FLdRfVar var_88
  loc_B8286F: CVarRef
  loc_B82874: ImpAdCallI2 Format$(, )
  loc_B82879: FStStrNoPop var_BC
  loc_B8287C: ConcatStr
  loc_B8287D: FStStrNoPop var_C0
  loc_B82880: LitStr ", ExorImpu, '"
  loc_B82883: ConcatStr
  loc_B82884: FStStrNoPop var_C4
  loc_B82887: ILdRf var_A0
  loc_B8288A: ConcatStr
  loc_B8288B: FStStrNoPop var_C8
  loc_B8288E: LitStr "', NumeLiqu, NumeOrpa, 1 CantImpu, "
  loc_B82891: ConcatStr
  loc_B82892: FStStrNoPop var_D0
  loc_B82895: FLdFPR8 doComiMoba
  loc_B82898: LitI2_Byte &HFF
  loc_B8289A: CR8I2
  loc_B8289B: MulR8
  loc_B8289C: CStrR8
  loc_B8289E: FStStrNoPop var_CC
  loc_B828A1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B828A6: FStStrNoPop var_D4
  loc_B828A9: ConcatStr
  loc_B828AA: FStStrNoPop var_D8
  loc_B828AD: LitStr " ImunImpu, "
  loc_B828B0: ConcatStr
  loc_B828B1: FStStrNoPop var_118
  loc_B828B4: FLdFPR8 doComiMoba
  loc_B828B7: LitI2_Byte &HFF
  loc_B828B9: CR8I2
  loc_B828BA: MulR8
  loc_B828BB: CStrR8
  loc_B828BD: FStStrNoPop var_114
  loc_B828C0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B828C5: FStStrNoPop var_11C
  loc_B828C8: ConcatStr
  loc_B828C9: FStStrNoPop var_120
  loc_B828CC: LitStr " MapaImpu, '"
  loc_B828CF: ConcatStr
  loc_B828D0: FStStrNoPop var_124
  loc_B828D3: ILdRf var_A4
  loc_B828D6: ConcatStr
  loc_B828D7: FStStrNoPop var_128
  loc_B828DA: LitStr "', CucuPers, "
  loc_B828DD: ConcatStr
  loc_B828DE: FStStrNoPop var_12C
  loc_B828E1: FLdI2 var_A6
  loc_B828E4: CStrUI1
  loc_B828E6: FStStrNoPop var_130
  loc_B828E9: ConcatStr
  loc_B828EA: FStStrNoPop var_24C
  loc_B828ED: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B828F0: ConcatStr
  loc_B828F1: FStStrNoPop var_250
  loc_B828F4: ImpAdLdI4 MemVar_C3D03C
  loc_B828F7: ConcatStr
  loc_B828F8: FStStrNoPop var_254
  loc_B828FB: LitStr "'"
  loc_B828FE: ConcatStr
  loc_B828FF: FStStrNoPop var_258
  loc_B82902: LitStr " FROM imputacion"
  loc_B82905: ConcatStr
  loc_B82906: FStStrNoPop var_25C
  loc_B82909: LitStr " WHERE PeriInfo = "
  loc_B8290C: ConcatStr
  loc_B8290D: FStStrNoPop var_260
  loc_B82910: ImpAdLdI2 MemVar_C3D064
  loc_B82913: CStrUI1
  loc_B82915: FStStrNoPop var_264
  loc_B82918: ConcatStr
  loc_B82919: FStStrNoPop var_268
  loc_B8291C: LitStr " AND IdImpu = "
  loc_B8291F: ConcatStr
  loc_B82920: FStStrNoPop var_26C
  loc_B82923: ILdRf var_B0
  loc_B82926: CStrI4
  loc_B82928: FStStrNoPop var_270
  loc_B8292B: ConcatStr
  loc_B8292C: FStStrNoPop var_274
  loc_B8292F: LitStr ";"
  loc_B82932: ConcatStr
  loc_B82933: FStStr var_9C
  loc_B82936: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = ""
  loc_B82973: FFree1Var var_100 = ""
  loc_B82976: ILdRf var_9C
  loc_B82979: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,ExpeImpu,NumeLiqu,CantImpu,ImunImpu,LiquImpu,DetaImpu,CucuPers,AjusImpu,CodiNope,Item,Altern,CodiOrco,CodiRece,NumeFact,FefaDeve,AltaUsua)"
  loc_B8297C: ConcatStr
  loc_B8297D: FStStrNoPop var_B4
  loc_B82980: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B82983: ConcatStr
  loc_B82984: FStStrNoPop var_B8
  loc_B82987: LitI4 1
  loc_B8298C: LitI4 1
  loc_B82991: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82996: FStVarCopyObj var_100
  loc_B82999: FLdRfVar var_100
  loc_B8299C: FLdRfVar var_88
  loc_B8299F: CVarRef
  loc_B829A4: ImpAdCallI2 Format$(, )
  loc_B829A9: FStStrNoPop var_BC
  loc_B829AC: ConcatStr
  loc_B829AD: FStStrNoPop var_C0
  loc_B829B0: LitStr ", ExorImpu, '"
  loc_B829B3: ConcatStr
  loc_B829B4: FStStrNoPop var_C4
  loc_B829B7: ILdRf var_A0
  loc_B829BA: ConcatStr
  loc_B829BB: FStStrNoPop var_C8
  loc_B829BE: LitStr "', NumeLiqu, 1 CantImpu, "
  loc_B829C1: ConcatStr
  loc_B829C2: FStStrNoPop var_D0
  loc_B829C5: FLdFPR8 doComiMoba
  loc_B829C8: LitI2_Byte &HFF
  loc_B829CA: CR8I2
  loc_B829CB: MulR8
  loc_B829CC: CStrR8
  loc_B829CE: FStStrNoPop var_CC
  loc_B829D1: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B829D6: FStStrNoPop var_D4
  loc_B829D9: ConcatStr
  loc_B829DA: FStStrNoPop var_D8
  loc_B829DD: LitStr " ImunImpu, "
  loc_B829E0: ConcatStr
  loc_B829E1: FStStrNoPop var_118
  loc_B829E4: FLdFPR8 doComiMoba
  loc_B829E7: LitI2_Byte &HFF
  loc_B829E9: CR8I2
  loc_B829EA: MulR8
  loc_B829EB: CStrR8
  loc_B829ED: FStStrNoPop var_114
  loc_B829F0: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B829F5: FStStrNoPop var_11C
  loc_B829F8: ConcatStr
  loc_B829F9: FStStrNoPop var_120
  loc_B829FC: LitStr " LiquImpu, '"
  loc_B829FF: ConcatStr
  loc_B82A00: FStStrNoPop var_124
  loc_B82A03: ILdRf var_A4
  loc_B82A06: ConcatStr
  loc_B82A07: FStStrNoPop var_128
  loc_B82A0A: LitStr "', CucuPers, "
  loc_B82A0D: ConcatStr
  loc_B82A0E: FStStrNoPop var_12C
  loc_B82A11: FLdI2 var_A6
  loc_B82A14: CStrUI1
  loc_B82A16: FStStrNoPop var_130
  loc_B82A19: ConcatStr
  loc_B82A1A: FStStrNoPop var_24C
  loc_B82A1D: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B82A20: ConcatStr
  loc_B82A21: FStStrNoPop var_250
  loc_B82A24: ImpAdLdI4 MemVar_C3D03C
  loc_B82A27: ConcatStr
  loc_B82A28: FStStrNoPop var_254
  loc_B82A2B: LitStr "'"
  loc_B82A2E: ConcatStr
  loc_B82A2F: FStStrNoPop var_258
  loc_B82A32: LitStr " FROM imputacion"
  loc_B82A35: ConcatStr
  loc_B82A36: FStStrNoPop var_25C
  loc_B82A39: LitStr " WHERE PeriInfo = "
  loc_B82A3C: ConcatStr
  loc_B82A3D: FStStrNoPop var_260
  loc_B82A40: ImpAdLdI2 MemVar_C3D064
  loc_B82A43: CStrUI1
  loc_B82A45: FStStrNoPop var_264
  loc_B82A48: ConcatStr
  loc_B82A49: FStStrNoPop var_268
  loc_B82A4C: LitStr " AND IdImpu = "
  loc_B82A4F: ConcatStr
  loc_B82A50: FStStrNoPop var_26C
  loc_B82A53: ILdRf var_B0
  loc_B82A56: CStrI4
  loc_B82A58: FStStrNoPop var_270
  loc_B82A5B: ConcatStr
  loc_B82A5C: FStStrNoPop var_274
  loc_B82A5F: LitStr ";"
  loc_B82A62: ConcatStr
  loc_B82A63: FStStr var_9C
  loc_B82A66: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = ""
  loc_B82AA3: FFree1Var var_100 = ""
  loc_B82AA6: ILdRf var_9C
  loc_B82AA9: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,ExpeImpu,CantImpu,ImunImpu,DeveImpu,DetaImpu,CucuPers,AjusImpu,CodiNope,Item,Altern,CodiOrco,CodiRece,NumeFact,FefaDeve,AltaUsua)"
  loc_B82AAC: ConcatStr
  loc_B82AAD: FStStrNoPop var_B4
  loc_B82AB0: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B82AB3: ConcatStr
  loc_B82AB4: FStStrNoPop var_B8
  loc_B82AB7: LitI4 1
  loc_B82ABC: LitI4 1
  loc_B82AC1: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82AC6: FStVarCopyObj var_100
  loc_B82AC9: FLdRfVar var_100
  loc_B82ACC: FLdRfVar var_88
  loc_B82ACF: CVarRef
  loc_B82AD4: ImpAdCallI2 Format$(, )
  loc_B82AD9: FStStrNoPop var_BC
  loc_B82ADC: ConcatStr
  loc_B82ADD: FStStrNoPop var_C0
  loc_B82AE0: LitStr ", ExorImpu, '"
  loc_B82AE3: ConcatStr
  loc_B82AE4: FStStrNoPop var_C4
  loc_B82AE7: ILdRf var_A0
  loc_B82AEA: ConcatStr
  loc_B82AEB: FStStrNoPop var_C8
  loc_B82AEE: LitStr "', 1 CantImpu, "
  loc_B82AF1: ConcatStr
  loc_B82AF2: FStStrNoPop var_D0
  loc_B82AF5: FLdFPR8 doComiMoba
  loc_B82AF8: LitI2_Byte &HFF
  loc_B82AFA: CR8I2
  loc_B82AFB: MulR8
  loc_B82AFC: CStrR8
  loc_B82AFE: FStStrNoPop var_CC
  loc_B82B01: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82B06: FStStrNoPop var_D4
  loc_B82B09: ConcatStr
  loc_B82B0A: FStStrNoPop var_D8
  loc_B82B0D: LitStr " ImunImpu, "
  loc_B82B10: ConcatStr
  loc_B82B11: FStStrNoPop var_118
  loc_B82B14: FLdFPR8 doComiMoba
  loc_B82B17: LitI2_Byte &HFF
  loc_B82B19: CR8I2
  loc_B82B1A: MulR8
  loc_B82B1B: CStrR8
  loc_B82B1D: FStStrNoPop var_114
  loc_B82B20: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82B25: FStStrNoPop var_11C
  loc_B82B28: ConcatStr
  loc_B82B29: FStStrNoPop var_120
  loc_B82B2C: LitStr " DeveImpu, '"
  loc_B82B2F: ConcatStr
  loc_B82B30: FStStrNoPop var_124
  loc_B82B33: ILdRf var_A4
  loc_B82B36: ConcatStr
  loc_B82B37: FStStrNoPop var_128
  loc_B82B3A: LitStr "', CucuPers, "
  loc_B82B3D: ConcatStr
  loc_B82B3E: FStStrNoPop var_12C
  loc_B82B41: FLdI2 var_A6
  loc_B82B44: CStrUI1
  loc_B82B46: FStStrNoPop var_130
  loc_B82B49: ConcatStr
  loc_B82B4A: FStStrNoPop var_24C
  loc_B82B4D: LitStr ", CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, '"
  loc_B82B50: ConcatStr
  loc_B82B51: FStStrNoPop var_250
  loc_B82B54: ImpAdLdI4 MemVar_C3D03C
  loc_B82B57: ConcatStr
  loc_B82B58: FStStrNoPop var_254
  loc_B82B5B: LitStr "'"
  loc_B82B5E: ConcatStr
  loc_B82B5F: FStStrNoPop var_258
  loc_B82B62: LitStr " FROM imputacion"
  loc_B82B65: ConcatStr
  loc_B82B66: FStStrNoPop var_25C
  loc_B82B69: LitStr " WHERE PeriInfo = "
  loc_B82B6C: ConcatStr
  loc_B82B6D: FStStrNoPop var_260
  loc_B82B70: ImpAdLdI2 MemVar_C3D064
  loc_B82B73: CStrUI1
  loc_B82B75: FStStrNoPop var_264
  loc_B82B78: ConcatStr
  loc_B82B79: FStStrNoPop var_268
  loc_B82B7C: LitStr " AND IdImpu = "
  loc_B82B7F: ConcatStr
  loc_B82B80: FStStrNoPop var_26C
  loc_B82B83: ILdRf var_B0
  loc_B82B86: CStrI4
  loc_B82B88: FStStrNoPop var_270
  loc_B82B8B: ConcatStr
  loc_B82B8C: FStStrNoPop var_274
  loc_B82B8F: LitStr ";"
  loc_B82B92: ConcatStr
  loc_B82B93: FStStr var_9C
  loc_B82B96: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = ""
  loc_B82BD3: FFree1Var var_100 = ""
  loc_B82BD6: ILdRf var_9C
  loc_B82BD9: LitStr "INSERT INTO devengado (PeriInfo,IdImpu,CodiCuco,IdContra)"
  loc_B82BDC: ConcatStr
  loc_B82BDD: FStStrNoPop var_B4
  loc_B82BE0: LitStr " VALUES ("
  loc_B82BE3: ConcatStr
  loc_B82BE4: FStStrNoPop var_B8
  loc_B82BE7: ImpAdLdI2 MemVar_C3D064
  loc_B82BEA: CStrUI1
  loc_B82BEC: FStStrNoPop var_BC
  loc_B82BEF: ConcatStr
  loc_B82BF0: FStStrNoPop var_C0
  loc_B82BF3: LitStr ", @idimpu, '1103700000',"
  loc_B82BF6: ConcatStr
  loc_B82BF7: FStStrNoPop var_C4
  loc_B82BFA: FLdI2 IdContra
  loc_B82BFD: CStrUI1
  loc_B82BFF: FStStrNoPop var_C8
  loc_B82C02: ConcatStr
  loc_B82C03: FStStrNoPop var_CC
  loc_B82C06: LitStr ");"
  loc_B82C09: ConcatStr
  loc_B82C0A: FStStr var_9C
  loc_B82C0D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B82C1E: ILdRf var_9C
  loc_B82C21: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,CantImpu,ImunImpu,DefiImpu,DetaImpu,CucuPers,AjusImpu,CodiNope,Item,Altern,CodiOrco,AltaUsua)"
  loc_B82C24: ConcatStr
  loc_B82C25: FStStrNoPop var_B4
  loc_B82C28: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B82C2B: ConcatStr
  loc_B82C2C: FStStrNoPop var_B8
  loc_B82C2F: LitI4 1
  loc_B82C34: LitI4 1
  loc_B82C39: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82C3E: FStVarCopyObj var_100
  loc_B82C41: FLdRfVar var_100
  loc_B82C44: FLdRfVar var_88
  loc_B82C47: CVarRef
  loc_B82C4C: ImpAdCallI2 Format$(, )
  loc_B82C51: FStStrNoPop var_BC
  loc_B82C54: ConcatStr
  loc_B82C55: FStStrNoPop var_C0
  loc_B82C58: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B82C5B: ConcatStr
  loc_B82C5C: FStStrNoPop var_C8
  loc_B82C5F: FLdFPR8 doComiMoba
  loc_B82C62: LitI2_Byte &HFF
  loc_B82C64: CR8I2
  loc_B82C65: MulR8
  loc_B82C66: CStrR8
  loc_B82C68: FStStrNoPop var_C4
  loc_B82C6B: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82C70: FStStrNoPop var_CC
  loc_B82C73: ConcatStr
  loc_B82C74: FStStrNoPop var_D0
  loc_B82C77: LitStr " ImunImpu, "
  loc_B82C7A: ConcatStr
  loc_B82C7B: FStStrNoPop var_D8
  loc_B82C7E: FLdFPR8 doComiMoba
  loc_B82C81: LitI2_Byte &HFF
  loc_B82C83: CR8I2
  loc_B82C84: MulR8
  loc_B82C85: CStrR8
  loc_B82C87: FStStrNoPop var_D4
  loc_B82C8A: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82C8F: FStStrNoPop var_114
  loc_B82C92: ConcatStr
  loc_B82C93: FStStrNoPop var_118
  loc_B82C96: LitStr " DefiImpu, '"
  loc_B82C99: ConcatStr
  loc_B82C9A: FStStrNoPop var_11C
  loc_B82C9D: ILdRf var_A4
  loc_B82CA0: ConcatStr
  loc_B82CA1: FStStrNoPop var_120
  loc_B82CA4: LitStr "', CucuPers, "
  loc_B82CA7: ConcatStr
  loc_B82CA8: FStStrNoPop var_124
  loc_B82CAB: FLdI2 var_A6
  loc_B82CAE: CStrUI1
  loc_B82CB0: FStStrNoPop var_128
  loc_B82CB3: ConcatStr
  loc_B82CB4: FStStrNoPop var_12C
  loc_B82CB7: LitStr ", CodiNope, Item, Altern, CodiOrco, '"
  loc_B82CBA: ConcatStr
  loc_B82CBB: FStStrNoPop var_130
  loc_B82CBE: ImpAdLdI4 MemVar_C3D03C
  loc_B82CC1: ConcatStr
  loc_B82CC2: FStStrNoPop var_24C
  loc_B82CC5: LitStr "'"
  loc_B82CC8: ConcatStr
  loc_B82CC9: FStStrNoPop var_250
  loc_B82CCC: LitStr " FROM imputacion"
  loc_B82CCF: ConcatStr
  loc_B82CD0: FStStrNoPop var_254
  loc_B82CD3: LitStr " WHERE PeriInfo = "
  loc_B82CD6: ConcatStr
  loc_B82CD7: FStStrNoPop var_258
  loc_B82CDA: ImpAdLdI2 MemVar_C3D064
  loc_B82CDD: CStrUI1
  loc_B82CDF: FStStrNoPop var_25C
  loc_B82CE2: ConcatStr
  loc_B82CE3: FStStrNoPop var_260
  loc_B82CE6: LitStr " AND IdImpu = "
  loc_B82CE9: ConcatStr
  loc_B82CEA: FStStrNoPop var_264
  loc_B82CED: ILdRf var_B0
  loc_B82CF0: CStrI4
  loc_B82CF2: FStStrNoPop var_268
  loc_B82CF5: ConcatStr
  loc_B82CF6: FStStrNoPop var_26C
  loc_B82CF9: LitStr ";"
  loc_B82CFC: ConcatStr
  loc_B82CFD: FStStr var_9C
  loc_B82D00: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = ""
  loc_B82D39: FFree1Var var_100 = ""
  loc_B82D3C: ILdRf var_9C
  loc_B82D3F: LitStr "INSERT INTO imputacion (PeriInfo,IdImpu,CodiPart,CodiOrga,CodiUnga,CodiInsu,CodiFifu,FechImpu,ExorImpu,CantImpu,ImunImpu,PrevImpu,DetaImpu,AjusImpu,CodiNope,Item,AltaUsua)"
  loc_B82D42: ConcatStr
  loc_B82D43: FStStrNoPop var_B4
  loc_B82D46: LitStr " SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, "
  loc_B82D49: ConcatStr
  loc_B82D4A: FStStrNoPop var_B8
  loc_B82D4D: LitI4 1
  loc_B82D52: LitI4 1
  loc_B82D57: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_B82D5C: FStVarCopyObj var_100
  loc_B82D5F: FLdRfVar var_100
  loc_B82D62: FLdRfVar var_88
  loc_B82D65: CVarRef
  loc_B82D6A: ImpAdCallI2 Format$(, )
  loc_B82D6F: FStStrNoPop var_BC
  loc_B82D72: ConcatStr
  loc_B82D73: FStStrNoPop var_C0
  loc_B82D76: LitStr ", ExorImpu, 1 CantImpu, "
  loc_B82D79: ConcatStr
  loc_B82D7A: FStStrNoPop var_C8
  loc_B82D7D: FLdFPR8 doComiMoba
  loc_B82D80: LitI2_Byte &HFF
  loc_B82D82: CR8I2
  loc_B82D83: MulR8
  loc_B82D84: CStrR8
  loc_B82D86: FStStrNoPop var_C4
  loc_B82D89: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82D8E: FStStrNoPop var_CC
  loc_B82D91: ConcatStr
  loc_B82D92: FStStrNoPop var_D0
  loc_B82D95: LitStr " ImunImpu, "
  loc_B82D98: ConcatStr
  loc_B82D99: FStStrNoPop var_D8
  loc_B82D9C: FLdFPR8 doComiMoba
  loc_B82D9F: LitI2_Byte &HFF
  loc_B82DA1: CR8I2
  loc_B82DA2: MulR8
  loc_B82DA3: CStrR8
  loc_B82DA5: FStStrNoPop var_D4
  loc_B82DA8: ImpAdCallI2 Proc_261_58_9952BC()
  loc_B82DAD: FStStrNoPop var_114
  loc_B82DB0: ConcatStr
  loc_B82DB1: FStStrNoPop var_118
  loc_B82DB4: LitStr " PrevImpu, '"
  loc_B82DB7: ConcatStr
  loc_B82DB8: FStStrNoPop var_11C
  loc_B82DBB: ILdRf var_A4
  loc_B82DBE: ConcatStr
  loc_B82DBF: FStStrNoPop var_120
  loc_B82DC2: LitStr "', "
  loc_B82DC5: ConcatStr
  loc_B82DC6: FStStrNoPop var_124
  loc_B82DC9: FLdI2 var_A6
  loc_B82DCC: CStrUI1
  loc_B82DCE: FStStrNoPop var_128
  loc_B82DD1: ConcatStr
  loc_B82DD2: FStStrNoPop var_12C
  loc_B82DD5: LitStr ", CodiNope, Item, '"
  loc_B82DD8: ConcatStr
  loc_B82DD9: FStStrNoPop var_130
  loc_B82DDC: ImpAdLdI4 MemVar_C3D03C
  loc_B82DDF: ConcatStr
  loc_B82DE0: FStStrNoPop var_24C
  loc_B82DE3: LitStr "'"
  loc_B82DE6: ConcatStr
  loc_B82DE7: FStStrNoPop var_250
  loc_B82DEA: LitStr " FROM imputacion"
  loc_B82DED: ConcatStr
  loc_B82DEE: FStStrNoPop var_254
  loc_B82DF1: LitStr " WHERE PeriInfo = "
  loc_B82DF4: ConcatStr
  loc_B82DF5: FStStrNoPop var_258
  loc_B82DF8: ImpAdLdI2 MemVar_C3D064
  loc_B82DFB: CStrUI1
  loc_B82DFD: FStStrNoPop var_25C
  loc_B82E00: ConcatStr
  loc_B82E01: FStStrNoPop var_260
  loc_B82E04: LitStr " AND IdImpu = "
  loc_B82E07: ConcatStr
  loc_B82E08: FStStrNoPop var_264
  loc_B82E0B: ILdRf var_B0
  loc_B82E0E: CStrI4
  loc_B82E10: FStStrNoPop var_268
  loc_B82E13: ConcatStr
  loc_B82E14: FStStrNoPop var_26C
  loc_B82E17: LitStr ";"
  loc_B82E1A: ConcatStr
  loc_B82E1B: FStStr var_9C
  loc_B82E1E: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = "": var_268 = ""
  loc_B82E57: FFree1Var var_100 = ""
  loc_B82E5A: ILdRf var_9C
  loc_B82E5D: LitStr "UPDATE recaudacion.contracargo SET ModiUsua = '"
  loc_B82E60: ConcatStr
  loc_B82E61: FStStrNoPop var_B4
  loc_B82E64: ImpAdLdI4 MemVar_C3D03C
  loc_B82E67: ConcatStr
  loc_B82E68: FStStrNoPop var_B8
  loc_B82E6B: LitStr "', ModiFeho = Now() WHERE IdContra = "
  loc_B82E6E: ConcatStr
  loc_B82E6F: FStStrNoPop var_BC
  loc_B82E72: FLdI2 IdContra
  loc_B82E75: CStrUI1
  loc_B82E77: FStStrNoPop var_C0
  loc_B82E7A: ConcatStr
  loc_B82E7B: FStStrNoPop var_C4
  loc_B82E7E: LitStr ";"
  loc_B82E81: ConcatStr
  loc_B82E82: FStStr var_9C
  loc_B82E85: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B82E92: ILdRf var_9C
  loc_B82E95: Call EjecutarRsCls(from_stack_1v)
  loc_B82E9A: LitStr "COMMIT;"
  loc_B82E9D: Call EjecutarRsCls(from_stack_1v)
  loc_B82EA2: FLdI2 IdContra
  loc_B82EA5: Call Encontrar(from_stack_1v)
  loc_B82EAA: ExitProcHresult
  loc_B82EAB: LitStr "ROLLBACK;"
  loc_B82EAE: Call EjecutarRsCls(from_stack_1v)
  loc_B82EB3: LitI4 0
  loc_B82EB8: LitStr "Error en el procedimiento Contracargos. Verifique..."
  loc_B82EBB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B82EC0: ExitProcHresult
End Sub

Public Sub Modificar(CodiEnre, DetaEnre) '941D4C
  'Data Table: 410938
  loc_941D44: ILdRf DetaEnre
  loc_941D47: FStStrCopy var_88
  loc_941D4A: ExitProcHresult
End Sub

Public Sub Encontrar(IdContra) '9BB7F0
  'Data Table: 410938
  loc_9BB740: On Error Resume Next
  loc_9BB745: FLdI2 IdContra
  loc_9BB748: LitI2_Byte 0
  loc_9BB74A: EqI2
  loc_9BB74B: FLdRfVar var_88
  loc_9BB74E: FLdPr Me
  loc_9BB751: MemLdPr RsFrm
  loc_9BB754:  = Me.RecordCount
  loc_9BB759: ILdRf var_88
  loc_9BB75C: LitI4 0
  loc_9BB761: GtI4
  loc_9BB762: AndI4
  loc_9BB763: FLdRfVar var_8C
  loc_9BB766: FLdPr Me
  loc_9BB769: MemLdPr RsFrm
  loc_9BB76C:  = Me.AbsolutePosition
  loc_9BB771: ILdRf var_8C
  loc_9BB774: LitI4 -3
  loc_9BB779: NeI4
  loc_9BB77A: AndI4
  loc_9BB77B: BranchF loc_9BB7BB
  loc_9BB780: FLdRfVar var_B4
  loc_9BB783: FLdRfVar var_A4
  loc_9BB786: LitVarStr var_A0, "IdContra"
  loc_9BB78B: PopAdLdVar
  loc_9BB78C: FLdRfVar var_90
  loc_9BB78F: FLdPr Me
  loc_9BB792: MemLdPr RsFrm
  loc_9BB795:  = Me.Fields
  loc_9BB79A: FLdPr var_90
  loc_9BB79D: from_stack_2 = Me.Item(from_stack_1)
  loc_9BB7A2: FLdPr var_A4
  loc_9BB7A5:  = Me.Value
  loc_9BB7AA: FLdRfVar var_B4
  loc_9BB7AD: CI2Var
  loc_9BB7AE: FStI2 IdContra
  loc_9BB7B1: FFreeAd var_90 = ""
  loc_9BB7B8: FFree1Var var_B4 = ""
  loc_9BB7BF: Call Requery()
  loc_9BB7C6: LitStr "IdContra = '"
  loc_9BB7C9: FLdI2 IdContra
  loc_9BB7CC: CStrUI1
  loc_9BB7CE: FStStrNoPop var_B8
  loc_9BB7D1: ConcatStr
  loc_9BB7D2: FStStrNoPop var_BC
  loc_9BB7D5: LitStr "'"
  loc_9BB7D8: ConcatStr
  loc_9BB7D9: PopTmpLdAdStr
  loc_9BB7DD: Call Find(from_stack_1v)
  loc_9BB7E2: FFreeStr var_B8 = "": var_BC = ""
  loc_9BB7ED: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '972244
  'Data Table: 410938
  loc_97221C: ILdRf sSelect
  loc_97221F: FStStrCopy var_88
  loc_972222: FLdPr Me
  loc_972225: MemLdRfVar from_stack_1.RsFrm
  loc_972228: ILdRf var_88
  loc_97222B: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_972230: LitVarStr var_98, "Primary"
  loc_972235: PopAdLdVar
  loc_972236: FLdPr Me
  loc_972239: LateIdCall
  loc_972241: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '956288
  'Data Table: 410938
  loc_956270: ILdRf sSelect
  loc_956273: FStStrCopy var_88
  loc_956276: FLdPr Me
  loc_956279: MemLdRfVar from_stack_1.global_56
  loc_95627C: ILdRf var_88
  loc_95627F: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_956284: ExitProcHresult
End Sub

Public Sub Requery() '967120
  'Data Table: 410938
  loc_967100: FLdPr Me
  loc_967103: MemLdRfVar from_stack_1.RsFrm
  loc_967106: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_96710B: LitVarStr var_94, "Primary"
  loc_967110: PopAdLdVar
  loc_967111: FLdPr Me
  loc_967114: LateIdCall
  loc_96711C: ExitProcHresult
End Sub

Public Property Get DataSource() '972520
  'Data Table: 410938
  loc_9724FC: ZeroRetVal
  loc_9724FE: FLdRfVar var_8C
  loc_972501: FLdPr Me
  loc_972504: MemLdPr RsFrm
  loc_972507:  = Me.DataSource
  loc_97250C: ILdRf var_8C
  loc_97250F: CastAd
  loc_972512: FStAdFunc var_88
  loc_972515: FFree1Ad var_8C
  loc_972518: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiEnre) '941194
  'Data Table: 410938
  loc_94118C: ZeroRetVal
  loc_94118E: ExitProcCbHresult
End Function

Public Function NuevoRegistro() '940588
  'Data Table: 410938
  loc_940580: ExitProcCbHresult
End Function

Private Function Proc_300_25_9721E4() '9721E4
  'Data Table: 410938
  loc_9721C0: LitStr "Primary"
  loc_9721C3: FLdPr Me
  loc_9721C6: LateIdLdVar var_94 DispID_4 0
  loc_9721CD: CastAdVar Me
  loc_9721D1: FStAdFunc var_98
  loc_9721D4: FLdPr var_98
  loc_9721DC: FFree1Ad var_98
  loc_9721DF: FFree1Var var_94 = ""
  loc_9721E2: ExitProcHresult
End Function

Private Function Proc_300_26_9674DC(arg_C) '9674DC
  'Data Table: 410938
  loc_9674C0: ILdI4 arg_C
  loc_9674C3: FStStrCopy var_88
  loc_9674C6: ILdRf var_88
  loc_9674C9: LitStr "Primary"
  loc_9674CC: EqStr
  loc_9674CE: BranchF loc_9674DB
  loc_9674D1: FLdPr Me
  loc_9674D4: MemLdStr RsFrm
  loc_9674D7: IStAd
  loc_9674DB: ExitProcHresult
End Function
