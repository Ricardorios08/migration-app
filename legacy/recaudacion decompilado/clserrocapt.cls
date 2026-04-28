VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clserrocapt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0E974
  'Data Table: 407F80
  loc_A0E938: FLdRfVar var_8C
  loc_A0E93B: FLdRfVar var_88
  loc_A0E93E: FLdPr Me
  loc_A0E941: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A0E946: FLdPr var_88
  loc_A0E949:  = Me.RecordCount
  loc_A0E94E: ILdRf var_8C
  loc_A0E951: LitI4 0
  loc_A0E956: GtI4
  loc_A0E957: FFree1Ad var_88
  loc_A0E95A: BranchF loc_A0E973
  loc_A0E95D: FLdRfVar var_88
  loc_A0E960: FLdPr Me
  loc_A0E963: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A0E968: FLdPr var_88
  loc_A0E96B: Me.MoveFirst
  loc_A0E970: FFree1Ad var_88
  loc_A0E973: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0DF64
  'Data Table: 407F80
  loc_A0DF28: FLdRfVar var_8C
  loc_A0DF2B: FLdRfVar var_88
  loc_A0DF2E: FLdPr Me
  loc_A0DF31: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A0DF36: FLdPr var_88
  loc_A0DF39:  = Me.RecordCount
  loc_A0DF3E: ILdRf var_8C
  loc_A0DF41: LitI4 0
  loc_A0DF46: GtI4
  loc_A0DF47: FFree1Ad var_88
  loc_A0DF4A: BranchF loc_A0DF63
  loc_A0DF4D: FLdRfVar var_88
  loc_A0DF50: FLdPr Me
  loc_A0DF53: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A0DF58: FLdPr var_88
  loc_A0DF5B: Me.MoveLast
  loc_A0DF60: FFree1Ad var_88
  loc_A0DF63: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9EDE0
  'Data Table: 407F80
  loc_A9ED24: FLdRfVar var_8A
  loc_A9ED27: FLdRfVar var_88
  loc_A9ED2A: FLdPr Me
  loc_A9ED2D: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9ED32: FLdPr var_88
  loc_A9ED35:  = Me.EOF
  loc_A9ED3A: FLdI2 var_8A
  loc_A9ED3D: NotI4
  loc_A9ED3E: FLdRfVar var_94
  loc_A9ED41: FLdRfVar var_90
  loc_A9ED44: FLdPr Me
  loc_A9ED47: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9ED4C: FLdPr var_90
  loc_A9ED4F:  = Me.RecordCount
  loc_A9ED54: ILdRf var_94
  loc_A9ED57: LitI4 0
  loc_A9ED5C: GtI4
  loc_A9ED5D: AndI4
  loc_A9ED5E: FFreeAd var_88 = ""
  loc_A9ED65: BranchF loc_A9ED7E
  loc_A9ED68: FLdRfVar var_88
  loc_A9ED6B: FLdPr Me
  loc_A9ED6E: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9ED73: FLdPr var_88
  loc_A9ED76: Me.MoveNext
  loc_A9ED7B: FFree1Ad var_88
  loc_A9ED7E: FLdRfVar var_8A
  loc_A9ED81: FLdRfVar var_88
  loc_A9ED84: FLdPr Me
  loc_A9ED87: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9ED8C: FLdPr var_88
  loc_A9ED8F:  = Me.EOF
  loc_A9ED94: FLdI2 var_8A
  loc_A9ED97: FLdRfVar var_94
  loc_A9ED9A: FLdRfVar var_90
  loc_A9ED9D: FLdPr Me
  loc_A9EDA0: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9EDA5: FLdPr var_90
  loc_A9EDA8:  = Me.RecordCount
  loc_A9EDAD: ILdRf var_94
  loc_A9EDB0: LitI4 0
  loc_A9EDB5: GtI4
  loc_A9EDB6: AndI4
  loc_A9EDB7: FFreeAd var_88 = ""
  loc_A9EDBE: BranchF loc_A9EDDC
  loc_A9EDC1: ImpAdCallFPR4 Beep()
  loc_A9EDC6: FLdRfVar var_88
  loc_A9EDC9: FLdPr Me
  loc_A9EDCC: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9EDD1: FLdPr var_88
  loc_A9EDD4: Me.MoveLast
  loc_A9EDD9: FFree1Ad var_88
  loc_A9EDDC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D2AA8
  'Data Table: 407F80
  loc_9D2A90: FLdRfVar var_88
  loc_9D2A93: FLdPr Me
  loc_9D2A96: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9D2A9B: FLdPr var_88
  loc_9D2A9E: Me.MoveNext
  loc_9D2AA3: FFree1Ad var_88
  loc_9D2AA6: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9D330
  'Data Table: 407F80
  loc_A9D274: FLdRfVar var_8A
  loc_A9D277: FLdRfVar var_88
  loc_A9D27A: FLdPr Me
  loc_A9D27D: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D282: FLdPr var_88
  loc_A9D285:  = Me.BOF
  loc_A9D28A: FLdI2 var_8A
  loc_A9D28D: NotI4
  loc_A9D28E: FLdRfVar var_94
  loc_A9D291: FLdRfVar var_90
  loc_A9D294: FLdPr Me
  loc_A9D297: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D29C: FLdPr var_90
  loc_A9D29F:  = Me.RecordCount
  loc_A9D2A4: ILdRf var_94
  loc_A9D2A7: LitI4 0
  loc_A9D2AC: GtI4
  loc_A9D2AD: AndI4
  loc_A9D2AE: FFreeAd var_88 = ""
  loc_A9D2B5: BranchF loc_A9D2CE
  loc_A9D2B8: FLdRfVar var_88
  loc_A9D2BB: FLdPr Me
  loc_A9D2BE: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D2C3: FLdPr var_88
  loc_A9D2C6: Me.MovePrevious
  loc_A9D2CB: FFree1Ad var_88
  loc_A9D2CE: FLdRfVar var_8A
  loc_A9D2D1: FLdRfVar var_88
  loc_A9D2D4: FLdPr Me
  loc_A9D2D7: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D2DC: FLdPr var_88
  loc_A9D2DF:  = Me.BOF
  loc_A9D2E4: FLdI2 var_8A
  loc_A9D2E7: FLdRfVar var_94
  loc_A9D2EA: FLdRfVar var_90
  loc_A9D2ED: FLdPr Me
  loc_A9D2F0: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D2F5: FLdPr var_90
  loc_A9D2F8:  = Me.RecordCount
  loc_A9D2FD: ILdRf var_94
  loc_A9D300: LitI4 0
  loc_A9D305: GtI4
  loc_A9D306: AndI4
  loc_A9D307: FFreeAd var_88 = ""
  loc_A9D30E: BranchF loc_A9D32C
  loc_A9D311: ImpAdCallFPR4 Beep()
  loc_A9D316: FLdRfVar var_88
  loc_A9D319: FLdPr Me
  loc_A9D31C: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A9D321: FLdPr var_88
  loc_A9D324: Me.MoveFirst
  loc_A9D329: FFree1Ad var_88
  loc_A9D32C: ExitProcHresult
End Sub

Public Property Get EOF() '9F5064
  'Data Table: 407F80
  loc_9F503C: FLdRfVar var_8E
  loc_9F503F: FLdRfVar var_8C
  loc_9F5042: FLdPr Me
  loc_9F5045: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F504A: FLdPr var_8C
  loc_9F504D:  = Me.EOF
  loc_9F5052: FLdI2 var_8E
  loc_9F5055: FStI2 var_86
  loc_9F5058: FFree1Ad var_8C
  loc_9F505B: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F4E98
  'Data Table: 407F80
  loc_9F4E70: FLdRfVar var_8E
  loc_9F4E73: FLdRfVar var_8C
  loc_9F4E76: FLdPr Me
  loc_9F4E79: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F4E7E: FLdPr var_8C
  loc_9F4E81:  = Me.BOF
  loc_9F4E86: FLdI2 var_8E
  loc_9F4E89: FStI2 var_86
  loc_9F4E8C: FFree1Ad var_8C
  loc_9F4E8F: ExitProcCbHresult
  loc_9F4E95: Ary1LdCy
  loc_9F4E96: ImpAdLdPr unk_408781
End Sub

Public Sub Sort(sOrden) '9E366C
  'Data Table: 407F80
  loc_9E3650: ILdI4 sOrden
  loc_9E3653: FLdRfVar var_88
  loc_9E3656: FLdPr Me
  loc_9E3659: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9E365E: FLdPr var_88
  loc_9E3661: Me.Sort = from_stack_1
  loc_9E3666: FFree1Ad var_88
  loc_9E3669: ExitProcHresult
  loc_9E366A: FStFPR4 Me03
End Sub

Public Sub Find(sFind) '9F4E3C
  'Data Table: 407F80
  loc_9F4E14: LitVar_Missing var_98
  loc_9F4E17: PopAdLdVar
  loc_9F4E18: LitI4 1
  loc_9F4E1D: LitI4 0
  loc_9F4E22: ILdI4 sFind
  loc_9F4E25: FLdRfVar var_88
  loc_9F4E28: FLdPr Me
  loc_9F4E2B: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F4E30: FLdPr var_88
  loc_9F4E33: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F4E38: FFree1Ad var_88
  loc_9F4E3B: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E7274
  'Data Table: 407F80
  loc_9E7254: ILdI4 sCriterio
  loc_9E7257: CVarStr var_98
  loc_9E725A: PopAdLdVar
  loc_9E725B: FLdRfVar var_88
  loc_9E725E: FLdPr Me
  loc_9E7261: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9E7266: FLdPr var_88
  loc_9E7269: Me.Filter = from_stack_1
  loc_9E726E: FFree1Ad var_88
  loc_9E7271: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F4CCC
  'Data Table: 407F80
  loc_9F4CA4: FLdRfVar var_90
  loc_9F4CA7: FLdRfVar var_8C
  loc_9F4CAA: FLdPr Me
  loc_9F4CAD: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F4CB2: FLdPr var_8C
  loc_9F4CB5:  = Me.AbsolutePosition
  loc_9F4CBA: ILdRf var_90
  loc_9F4CBD: FStR4 var_88
  loc_9F4CC0: FFree1Ad var_8C
  loc_9F4CC3: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F4C70
  'Data Table: 407F80
  loc_9F4C48: FLdRfVar var_90
  loc_9F4C4B: FLdRfVar var_8C
  loc_9F4C4E: FLdPr Me
  loc_9F4C51: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F4C56: FLdPr var_8C
  loc_9F4C59:  = Me.RecordCount
  loc_9F4C5E: ILdRf var_90
  loc_9F4C61: FStR4 var_88
  loc_9F4C64: FFree1Ad var_8C
  loc_9F4C67: ExitProcCbHresult
End Sub

Public Sub AddNew(FeenAcpa, NumeAcpa, CodiEnre, PeriBole, NumeBole, DetaErca) 'AD8288
  'Data Table: 407F80
  loc_AD8190: ILdRf FeenAcpa
  loc_AD8193: FStStrCopy var_88
  loc_AD8196: ILdRf DetaErca
  loc_AD8199: FStStrCopy var_8C
  loc_AD819C: FLdRfVar var_90
  loc_AD819F: FLdI2 CodiEnre
  loc_AD81A2: FLdI2 NumeAcpa
  loc_AD81A5: ILdRf var_88
  loc_AD81A8: from_stack_4v = UltimoRegistro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AD81AD: FLdI2 var_90
  loc_AD81B0: FStI2 var_8E
  loc_AD81B3: LitStr "INSERT INTO errocapt (FeenAcpa,NumeAcpa,CodiEnre,NumeErca,PeriBole,NumeBole,DetaErca) VALUES ('"
  loc_AD81B6: LitI4 1
  loc_AD81BB: LitI4 1
  loc_AD81C0: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AD81C5: FStVarCopyObj var_C0
  loc_AD81C8: FLdRfVar var_C0
  loc_AD81CB: FLdRfVar var_88
  loc_AD81CE: CVarRef
  loc_AD81D3: ImpAdCallI2 Format$(, )
  loc_AD81D8: FStStrNoPop var_C4
  loc_AD81DB: ConcatStr
  loc_AD81DC: FStStrNoPop var_C8
  loc_AD81DF: LitStr "',"
  loc_AD81E2: ConcatStr
  loc_AD81E3: FStStrNoPop var_CC
  loc_AD81E6: FLdI2 NumeAcpa
  loc_AD81E9: CStrUI1
  loc_AD81EB: FStStrNoPop var_D0
  loc_AD81EE: ConcatStr
  loc_AD81EF: FStStrNoPop var_D4
  loc_AD81F2: LitStr ","
  loc_AD81F5: ConcatStr
  loc_AD81F6: FStStrNoPop var_D8
  loc_AD81F9: FLdI2 CodiEnre
  loc_AD81FC: CStrUI1
  loc_AD81FE: FStStrNoPop var_DC
  loc_AD8201: ConcatStr
  loc_AD8202: FStStrNoPop var_E0
  loc_AD8205: LitStr ","
  loc_AD8208: ConcatStr
  loc_AD8209: FStStrNoPop var_E4
  loc_AD820C: FLdI2 var_8E
  loc_AD820F: CStrUI1
  loc_AD8211: FStStrNoPop var_E8
  loc_AD8214: ConcatStr
  loc_AD8215: FStStrNoPop var_EC
  loc_AD8218: LitStr ","
  loc_AD821B: ConcatStr
  loc_AD821C: FStStrNoPop var_F0
  loc_AD821F: FLdI2 PeriBole
  loc_AD8222: CStrUI1
  loc_AD8224: FStStrNoPop var_F4
  loc_AD8227: ConcatStr
  loc_AD8228: FStStrNoPop var_F8
  loc_AD822B: LitStr ","
  loc_AD822E: ConcatStr
  loc_AD822F: FStStrNoPop var_FC
  loc_AD8232: ILdRf NumeBole
  loc_AD8235: CStrI4
  loc_AD8237: FStStrNoPop var_100
  loc_AD823A: ConcatStr
  loc_AD823B: FStStrNoPop var_104
  loc_AD823E: LitStr ",'"
  loc_AD8241: ConcatStr
  loc_AD8242: FStStrNoPop var_108
  loc_AD8245: ILdRf var_8C
  loc_AD8248: ConcatStr
  loc_AD8249: FStStrNoPop var_10C
  loc_AD824C: LitStr "')"
  loc_AD824F: ConcatStr
  loc_AD8250: FStStrNoPop var_110
  loc_AD8253: Call EjecutarRsCls(from_stack_1v)
  loc_AD8258: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_AD8283: FFree1Var var_C0 = ""
  loc_AD8286: ExitProcHresult
End Sub

Public Function UltimoRegistro(FeenAcpa, NumeAcpa, CodiEnre) 'AC8134
  'Data Table: 407F80
  loc_AC8044: ILdRf FeenAcpa
  loc_AC8047: FStStrCopy var_8C
  loc_AC804A: LitStr "SELECT NumeErca FROM errocapt WHERE FeenAcpa = '"
  loc_AC804D: LitI4 1
  loc_AC8052: LitI4 1
  loc_AC8057: LitVarStr var_AC, "yyyy-mm-dd"
  loc_AC805C: FStVarCopyObj var_BC
  loc_AC805F: FLdRfVar var_BC
  loc_AC8062: FLdRfVar var_8C
  loc_AC8065: CVarRef
  loc_AC806A: ImpAdCallI2 Format$(, )
  loc_AC806F: FStStrNoPop var_C0
  loc_AC8072: ConcatStr
  loc_AC8073: FStStrNoPop var_C4
  loc_AC8076: LitStr "' AND NumeAcpa = "
  loc_AC8079: ConcatStr
  loc_AC807A: FStStrNoPop var_C8
  loc_AC807D: FLdI2 NumeAcpa
  loc_AC8080: CStrUI1
  loc_AC8082: FStStrNoPop var_CC
  loc_AC8085: ConcatStr
  loc_AC8086: FStStrNoPop var_D0
  loc_AC8089: LitStr " AND CodiEnre = "
  loc_AC808C: ConcatStr
  loc_AC808D: FStStrNoPop var_D4
  loc_AC8090: FLdI2 CodiEnre
  loc_AC8093: CStrUI1
  loc_AC8095: FStStrNoPop var_D8
  loc_AC8098: ConcatStr
  loc_AC8099: FStStrNoPop var_DC
  loc_AC809C: LitStr " ORDER BY FeenAcpa, NumeAcpa, CodiEnre, NumeErca"
  loc_AC809F: ConcatStr
  loc_AC80A0: FStStrNoPop var_E0
  loc_AC80A3: Call EjecutarRsCls(from_stack_1v)
  loc_AC80A8: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AC80BD: FFree1Var var_BC = ""
  loc_AC80C0: FLdRfVar var_E4
  loc_AC80C3: FLdPr Me
  loc_AC80C6: MemLdPr global_60
  loc_AC80C9:  = Me.RecordCount
  loc_AC80CE: ILdRf var_E4
  loc_AC80D1: LitI4 0
  loc_AC80D6: GtI4
  loc_AC80D7: BranchF loc_AC8127
  loc_AC80DA: FLdPr Me
  loc_AC80DD: MemLdPr global_60
  loc_AC80E0: Me.MoveLast
  loc_AC80E5: FLdRfVar var_BC
  loc_AC80E8: FLdRfVar var_EC
  loc_AC80EB: LitVarStr var_9C, "NumeErca"
  loc_AC80F0: PopAdLdVar
  loc_AC80F1: FLdRfVar var_E8
  loc_AC80F4: FLdPr Me
  loc_AC80F7: MemLdPr global_60
  loc_AC80FA:  = Me.Fields
  loc_AC80FF: FLdPr var_E8
  loc_AC8102: from_stack_2 = Me.Item(from_stack_1)
  loc_AC8107: FLdPr var_EC
  loc_AC810A:  = Me.Value
  loc_AC810F: FLdRfVar var_BC
  loc_AC8112: FnCIntVar
  loc_AC8114: LitI2_Byte 1
  loc_AC8116: AddI2
  loc_AC8117: FStI2 var_86
  loc_AC811A: FFreeAd var_E8 = ""
  loc_AC8121: FFree1Var var_BC = ""
  loc_AC8124: Branch loc_AC812C
  loc_AC8127: LitI2_Byte 1
  loc_AC8129: FStI2 var_86
  loc_AC812C: ExitProcCbHresult
End Function

Public Sub Requery() '9FE7B0
  'Data Table: 407F80
  loc_9FE780: LitI4 -1
  loc_9FE785: FLdRfVar var_88
  loc_9FE788: FLdPr Me
  loc_9FE78B: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9FE790: FLdPr var_88
  loc_9FE793: Me.Requery from_stack_1
  loc_9FE798: FFree1Ad var_88
  loc_9FE79B: LitVarStr var_98, "Primary"
  loc_9FE7A0: PopAdLdVar
  loc_9FE7A1: FLdPr Me
  loc_9FE7A4: LateIdCall
  loc_9FE7AC: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6E9D0
  'Data Table: 407F80
  loc_A6E95C: ILdRf sSelect
  loc_A6E95F: FStStrCopy var_88
  loc_A6E962: LitNothing
  loc_A6E964: CastAd
  loc_A6E967: FStAdFuncNoPop
  loc_A6E96A: FLdPr Me
  loc_A6E96D: Call clserrocapt.global_4226824Set(from_stack_1v)
  loc_A6E972: FFree1Ad var_8C
  loc_A6E975: New Recordset
  loc_A6E979: FStAdFuncNoPop
  loc_A6E97C: FLdPr Me
  loc_A6E97F: Call clserrocapt.global_4226824Set(from_stack_1v)
  loc_A6E984: FFree1Ad var_8C
  loc_A6E987: LitI4 -1
  loc_A6E98C: LitI4 3
  loc_A6E991: LitI4 3
  loc_A6E996: ImpAdLdI4 MemVar_D9301C
  loc_A6E999: CVarAd
  loc_A6E99D: PopAdLdVar
  loc_A6E99E: ILdRf var_88
  loc_A6E9A1: CVarStr var_9C
  loc_A6E9A4: PopAdLdVar
  loc_A6E9A5: FLdRfVar var_8C
  loc_A6E9A8: FLdPr Me
  loc_A6E9AB: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A6E9B0: FLdPr var_8C
  loc_A6E9B3: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6E9B8: FFree1Ad var_8C
  loc_A6E9BB: LitVarStr var_9C, "Primary"
  loc_A6E9C0: PopAdLdVar
  loc_A6E9C1: FLdPr Me
  loc_A6E9C4: LateIdCall
  loc_A6E9CC: ExitProcHresult
  loc_A6E9CD: FLdRfVar arg_7400
End Sub

Public Sub EjecutarRsCls(sSelect) 'A470B0
  'Data Table: 407F80
  loc_A4705C: ILdRf sSelect
  loc_A4705F: FStStrCopy var_88
  loc_A47062: LitNothing
  loc_A47064: CastAd
  loc_A47067: FStAdFuncNoPop
  loc_A4706A: FLdPr Me
  loc_A4706D: MemStAd
  loc_A47071: FFree1Ad var_8C
  loc_A47074: New Recordset
  loc_A47078: FStAdFuncNoPop
  loc_A4707B: FLdPr Me
  loc_A4707E: MemStAd
  loc_A47082: FFree1Ad var_8C
  loc_A47085: LitI4 -1
  loc_A4708A: LitI4 3
  loc_A4708F: LitI4 3
  loc_A47094: ImpAdLdI4 MemVar_D9301C
  loc_A47097: CVarAd
  loc_A4709B: PopAdLdVar
  loc_A4709C: ILdRf var_88
  loc_A4709F: CVarStr var_9C
  loc_A470A2: PopAdLdVar
  loc_A470A3: FLdPr Me
  loc_A470A6: MemLdPr global_60
  loc_A470A9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A470AE: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08BF4
  'Data Table: 407F80
  loc_A08BC4: ZeroRetVal
  loc_A08BC6: FLdRfVar var_90
  loc_A08BC9: FLdRfVar var_8C
  loc_A08BCC: FLdPr Me
  loc_A08BCF: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A08BD4: FLdPr var_8C
  loc_A08BD7:  = Me.DataSource
  loc_A08BDC: ILdRf var_90
  loc_A08BDF: CastAd
  loc_A08BE2: FStAdFunc var_88
  loc_A08BE5: FFreeAd var_8C = ""
  loc_A08BEC: ExitProcCbHresult
End Sub

Public Property Get FeenAcpa() 'A559F0
  'Data Table: 407F80
  loc_A559A0: ZeroRetVal
  loc_A559A2: FLdRfVar var_B4
  loc_A559A5: FLdRfVar var_A4
  loc_A559A8: LitVarStr var_A0, "FeenAcpa"
  loc_A559AD: PopAdLdVar
  loc_A559AE: FLdRfVar var_90
  loc_A559B1: FLdRfVar var_8C
  loc_A559B4: FLdPr Me
  loc_A559B7: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A559BC: FLdPr var_8C
  loc_A559BF:  = Me.Fields
  loc_A559C4: FLdPr var_90
  loc_A559C7: from_stack_2 = Me.Item(from_stack_1)
  loc_A559CC: FLdPr var_A4
  loc_A559CF:  = Me.Value
  loc_A559D4: FLdRfVar var_B4
  loc_A559D7: CStrVarTmp
  loc_A559D8: FStStr var_88
  loc_A559DB: FFreeAd var_8C = "": var_90 = ""
  loc_A559E4: FFree1Var var_B4 = ""
  loc_A559E7: ExitProcCbHresult
  loc_A559ED: StAryMove
End Sub

Public Property Get NumeAcpa() 'A4FB90
  'Data Table: 407F80
  loc_A4FB44: FLdRfVar var_B4
  loc_A4FB47: FLdRfVar var_A4
  loc_A4FB4A: LitVarStr var_A0, "NumeAcpa"
  loc_A4FB4F: PopAdLdVar
  loc_A4FB50: FLdRfVar var_90
  loc_A4FB53: FLdRfVar var_8C
  loc_A4FB56: FLdPr Me
  loc_A4FB59: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A4FB5E: FLdPr var_8C
  loc_A4FB61:  = Me.Fields
  loc_A4FB66: FLdPr var_90
  loc_A4FB69: from_stack_2 = Me.Item(from_stack_1)
  loc_A4FB6E: FLdPr var_A4
  loc_A4FB71:  = Me.Value
  loc_A4FB76: FLdRfVar var_B4
  loc_A4FB79: CI2Var
  loc_A4FB7A: FStI2 var_86
  loc_A4FB7D: FFreeAd var_8C = "": var_90 = ""
  loc_A4FB86: FFree1Var var_B4 = ""
  loc_A4FB89: ExitProcCbHresult
End Sub

Public Property Get CodiEnre() 'A4FCA8
  'Data Table: 407F80
  loc_A4FC5C: FLdRfVar var_B4
  loc_A4FC5F: FLdRfVar var_A4
  loc_A4FC62: LitVarStr var_A0, "CodiEnre"
  loc_A4FC67: PopAdLdVar
  loc_A4FC68: FLdRfVar var_90
  loc_A4FC6B: FLdRfVar var_8C
  loc_A4FC6E: FLdPr Me
  loc_A4FC71: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A4FC76: FLdPr var_8C
  loc_A4FC79:  = Me.Fields
  loc_A4FC7E: FLdPr var_90
  loc_A4FC81: from_stack_2 = Me.Item(from_stack_1)
  loc_A4FC86: FLdPr var_A4
  loc_A4FC89:  = Me.Value
  loc_A4FC8E: FLdRfVar var_B4
  loc_A4FC91: CI2Var
  loc_A4FC92: FStI2 var_86
  loc_A4FC95: FFreeAd var_8C = "": var_90 = ""
  loc_A4FC9E: FFree1Var var_B4 = ""
  loc_A4FCA1: ExitProcCbHresult
End Sub

Public Property Get NumeErca() 'A4FDC0
  'Data Table: 407F80
  loc_A4FD74: FLdRfVar var_B4
  loc_A4FD77: FLdRfVar var_A4
  loc_A4FD7A: LitVarStr var_A0, "NumeErca"
  loc_A4FD7F: PopAdLdVar
  loc_A4FD80: FLdRfVar var_90
  loc_A4FD83: FLdRfVar var_8C
  loc_A4FD86: FLdPr Me
  loc_A4FD89: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A4FD8E: FLdPr var_8C
  loc_A4FD91:  = Me.Fields
  loc_A4FD96: FLdPr var_90
  loc_A4FD99: from_stack_2 = Me.Item(from_stack_1)
  loc_A4FD9E: FLdPr var_A4
  loc_A4FDA1:  = Me.Value
  loc_A4FDA6: FLdRfVar var_B4
  loc_A4FDA9: CI2Var
  loc_A4FDAA: FStI2 var_86
  loc_A4FDAD: FFreeAd var_8C = "": var_90 = ""
  loc_A4FDB6: FFree1Var var_B4 = ""
  loc_A4FDB9: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A503C4
  'Data Table: 407F80
  loc_A50378: FLdRfVar var_B4
  loc_A5037B: FLdRfVar var_A4
  loc_A5037E: LitVarStr var_A0, "PeriBole"
  loc_A50383: PopAdLdVar
  loc_A50384: FLdRfVar var_90
  loc_A50387: FLdRfVar var_8C
  loc_A5038A: FLdPr Me
  loc_A5038D: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A50392: FLdPr var_8C
  loc_A50395:  = Me.Fields
  loc_A5039A: FLdPr var_90
  loc_A5039D: from_stack_2 = Me.Item(from_stack_1)
  loc_A503A2: FLdPr var_A4
  loc_A503A5:  = Me.Value
  loc_A503AA: FLdRfVar var_B4
  loc_A503AD: CI2Var
  loc_A503AE: FStI2 var_86
  loc_A503B1: FFreeAd var_8C = "": var_90 = ""
  loc_A503BA: FFree1Var var_B4 = ""
  loc_A503BD: ExitProcCbHresult
End Sub

Public Property Get NumeBole() 'A50450
  'Data Table: 407F80
  loc_A50404: FLdRfVar var_B4
  loc_A50407: FLdRfVar var_A4
  loc_A5040A: LitVarStr var_A0, "NumeBole"
  loc_A5040F: PopAdLdVar
  loc_A50410: FLdRfVar var_90
  loc_A50413: FLdRfVar var_8C
  loc_A50416: FLdPr Me
  loc_A50419: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A5041E: FLdPr var_8C
  loc_A50421:  = Me.Fields
  loc_A50426: FLdPr var_90
  loc_A50429: from_stack_2 = Me.Item(from_stack_1)
  loc_A5042E: FLdPr var_A4
  loc_A50431:  = Me.Value
  loc_A50436: FLdRfVar var_B4
  loc_A50439: CI4Var
  loc_A5043B: FStR4 var_88
  loc_A5043E: FFreeAd var_8C = "": var_90 = ""
  loc_A50447: FFree1Var var_B4 = ""
  loc_A5044A: ExitProcCbHresult
End Sub

Public Property Get DetaErca() 'A566A8
  'Data Table: 407F80
  loc_A56658: ZeroRetVal
  loc_A5665A: FLdRfVar var_B4
  loc_A5665D: FLdRfVar var_A4
  loc_A56660: LitVarStr var_A0, "DetaErca"
  loc_A56665: PopAdLdVar
  loc_A56666: FLdRfVar var_90
  loc_A56669: FLdRfVar var_8C
  loc_A5666C: FLdPr Me
  loc_A5666F: from_stack_1v = clserrocapt.global_4226824Get()
  loc_A56674: FLdPr var_8C
  loc_A56677:  = Me.Fields
  loc_A5667C: FLdPr var_90
  loc_A5667F: from_stack_2 = Me.Item(from_stack_1)
  loc_A56684: FLdPr var_A4
  loc_A56687:  = Me.Value
  loc_A5668C: FLdRfVar var_B4
  loc_A5668F: CStrVarTmp
  loc_A56690: FStStr var_88
  loc_A56693: FFreeAd var_8C = "": var_90 = ""
  loc_A5669C: FFree1Var var_B4 = ""
  loc_A5669F: ExitProcCbHresult
End Sub

Private Function Proc_132_25_9F4BB4() '9F4BB4
  'Data Table: 407F80
  loc_9F4B90: LitStr "Primary"
  loc_9F4B93: FLdPr Me
  loc_9F4B96: LateIdLdVar var_94 DispID_4 0
  loc_9F4B9D: CastAdVar Me
  loc_9F4BA1: FStAdFunc var_98
  loc_9F4BA4: FLdPr var_98
  loc_9F4BAC: FFree1Ad var_98
  loc_9F4BAF: FFree1Var var_94 = ""
  loc_9F4BB2: ExitProcHresult
End Function

Private Function Proc_132_26_9F4B58(arg_C) '9F4B58
  'Data Table: 407F80
  loc_9F4B34: ILdI4 arg_C
  loc_9F4B37: FStStrCopy var_88
  loc_9F4B3A: ILdRf var_88
  loc_9F4B3D: LitStr "Primary"
  loc_9F4B40: EqStr
  loc_9F4B42: BranchF loc_9F4B57
  loc_9F4B45: FLdRfVar var_8C
  loc_9F4B48: FLdPr Me
  loc_9F4B4B: from_stack_1v = clserrocapt.global_4226824Get()
  loc_9F4B50: FLdZeroAd var_8C
  loc_9F4B53: IStAdFunc
  loc_9F4B57: ExitProcHresult
End Function

Public Function global_4226824Get() '4081B0
  global_4226824Get = global_4226824
End Function

Public Sub global_4226824Put(Value) '4081CA
  global_4226824 = Value
End Sub

Public Sub global_4226824Set(Value) '4081E4
  global_4226824 = Value
End Sub
