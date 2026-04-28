VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clssubrubro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0F9A4
  'Data Table: 43A838
  loc_A0F968: FLdRfVar var_8C
  loc_A0F96B: FLdRfVar var_88
  loc_A0F96E: FLdPr Me
  loc_A0F971: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A0F976: FLdPr var_88
  loc_A0F979:  = Me.RecordCount
  loc_A0F97E: ILdRf var_8C
  loc_A0F981: LitI4 0
  loc_A0F986: GtI4
  loc_A0F987: FFree1Ad var_88
  loc_A0F98A: BranchF loc_A0F9A3
  loc_A0F98D: FLdRfVar var_88
  loc_A0F990: FLdPr Me
  loc_A0F993: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A0F998: FLdPr var_88
  loc_A0F99B: Me.MoveFirst
  loc_A0F9A0: FFree1Ad var_88
  loc_A0F9A3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FA14
  'Data Table: 43A838
  loc_A0F9D8: FLdRfVar var_8C
  loc_A0F9DB: FLdRfVar var_88
  loc_A0F9DE: FLdPr Me
  loc_A0F9E1: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A0F9E6: FLdPr var_88
  loc_A0F9E9:  = Me.RecordCount
  loc_A0F9EE: ILdRf var_8C
  loc_A0F9F1: LitI4 0
  loc_A0F9F6: GtI4
  loc_A0F9F7: FFree1Ad var_88
  loc_A0F9FA: BranchF loc_A0FA13
  loc_A0F9FD: FLdRfVar var_88
  loc_A0FA00: FLdPr Me
  loc_A0FA03: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A0FA08: FLdPr var_88
  loc_A0FA0B: Me.MoveLast
  loc_A0FA10: FFree1Ad var_88
  loc_A0FA13: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9A294
  'Data Table: 43A838
  loc_A9A1D8: FLdRfVar var_8A
  loc_A9A1DB: FLdRfVar var_88
  loc_A9A1DE: FLdPr Me
  loc_A9A1E1: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A1E6: FLdPr var_88
  loc_A9A1E9:  = Me.EOF
  loc_A9A1EE: FLdI2 var_8A
  loc_A9A1F1: NotI4
  loc_A9A1F2: FLdRfVar var_94
  loc_A9A1F5: FLdRfVar var_90
  loc_A9A1F8: FLdPr Me
  loc_A9A1FB: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A200: FLdPr var_90
  loc_A9A203:  = Me.RecordCount
  loc_A9A208: ILdRf var_94
  loc_A9A20B: LitI4 0
  loc_A9A210: GtI4
  loc_A9A211: AndI4
  loc_A9A212: FFreeAd var_88 = ""
  loc_A9A219: BranchF loc_A9A232
  loc_A9A21C: FLdRfVar var_88
  loc_A9A21F: FLdPr Me
  loc_A9A222: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A227: FLdPr var_88
  loc_A9A22A: Me.MoveNext
  loc_A9A22F: FFree1Ad var_88
  loc_A9A232: FLdRfVar var_8A
  loc_A9A235: FLdRfVar var_88
  loc_A9A238: FLdPr Me
  loc_A9A23B: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A240: FLdPr var_88
  loc_A9A243:  = Me.EOF
  loc_A9A248: FLdI2 var_8A
  loc_A9A24B: FLdRfVar var_94
  loc_A9A24E: FLdRfVar var_90
  loc_A9A251: FLdPr Me
  loc_A9A254: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A259: FLdPr var_90
  loc_A9A25C:  = Me.RecordCount
  loc_A9A261: ILdRf var_94
  loc_A9A264: LitI4 0
  loc_A9A269: GtI4
  loc_A9A26A: AndI4
  loc_A9A26B: FFreeAd var_88 = ""
  loc_A9A272: BranchF loc_A9A290
  loc_A9A275: ImpAdCallFPR4 Beep()
  loc_A9A27A: FLdRfVar var_88
  loc_A9A27D: FLdPr Me
  loc_A9A280: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9A285: FLdPr var_88
  loc_A9A288: Me.MoveLast
  loc_A9A28D: FFree1Ad var_88
  loc_A9A290: ExitProcHresult
  loc_A9A291: ConcatVar var_3F64
End Sub

Public Sub MoveSiguiente() '9CB434
  'Data Table: 43A838
  loc_9CB41C: FLdRfVar var_88
  loc_9CB41F: FLdPr Me
  loc_9CB422: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9CB427: FLdPr var_88
  loc_9CB42A: Me.MoveNext
  loc_9CB42F: FFree1Ad var_88
  loc_9CB432: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E5540
  'Data Table: 43A838
  loc_9E5520: LitVar_Missing var_98
  loc_9E5523: PopAdLdVar
  loc_9E5524: ILdI2 iValor
  loc_9E5527: CI4UI1
  loc_9E5528: FLdRfVar var_88
  loc_9E552B: FLdPr Me
  loc_9E552E: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9E5533: FLdPr var_88
  loc_9E5536: Me.Move from_stack_1, from_stack_2
  loc_9E553B: FFree1Ad var_88
  loc_9E553E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9B4B0
  'Data Table: 43A838
  loc_A9B3F4: FLdRfVar var_8A
  loc_A9B3F7: FLdRfVar var_88
  loc_A9B3FA: FLdPr Me
  loc_A9B3FD: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B402: FLdPr var_88
  loc_A9B405:  = Me.BOF
  loc_A9B40A: FLdI2 var_8A
  loc_A9B40D: NotI4
  loc_A9B40E: FLdRfVar var_94
  loc_A9B411: FLdRfVar var_90
  loc_A9B414: FLdPr Me
  loc_A9B417: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B41C: FLdPr var_90
  loc_A9B41F:  = Me.RecordCount
  loc_A9B424: ILdRf var_94
  loc_A9B427: LitI4 0
  loc_A9B42C: GtI4
  loc_A9B42D: AndI4
  loc_A9B42E: FFreeAd var_88 = ""
  loc_A9B435: BranchF loc_A9B44E
  loc_A9B438: FLdRfVar var_88
  loc_A9B43B: FLdPr Me
  loc_A9B43E: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B443: FLdPr var_88
  loc_A9B446: Me.MovePrevious
  loc_A9B44B: FFree1Ad var_88
  loc_A9B44E: FLdRfVar var_8A
  loc_A9B451: FLdRfVar var_88
  loc_A9B454: FLdPr Me
  loc_A9B457: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B45C: FLdPr var_88
  loc_A9B45F:  = Me.BOF
  loc_A9B464: FLdI2 var_8A
  loc_A9B467: FLdRfVar var_94
  loc_A9B46A: FLdRfVar var_90
  loc_A9B46D: FLdPr Me
  loc_A9B470: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B475: FLdPr var_90
  loc_A9B478:  = Me.RecordCount
  loc_A9B47D: ILdRf var_94
  loc_A9B480: LitI4 0
  loc_A9B485: GtI4
  loc_A9B486: AndI4
  loc_A9B487: FFreeAd var_88 = ""
  loc_A9B48E: BranchF loc_A9B4AC
  loc_A9B491: ImpAdCallFPR4 Beep()
  loc_A9B496: FLdRfVar var_88
  loc_A9B499: FLdPr Me
  loc_A9B49C: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A9B4A1: FLdPr var_88
  loc_A9B4A4: Me.MoveFirst
  loc_A9B4A9: FFree1Ad var_88
  loc_A9B4AC: ExitProcHresult
  loc_A9B4AD: Ary1LdRf
  loc_A9B4AE: DOC
End Sub

Public Property Get EOF() '9F1460
  'Data Table: 43A838
  loc_9F1438: FLdRfVar var_8E
  loc_9F143B: FLdRfVar var_8C
  loc_9F143E: FLdPr Me
  loc_9F1441: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F1446: FLdPr var_8C
  loc_9F1449:  = Me.EOF
  loc_9F144E: FLdI2 var_8E
  loc_9F1451: FStI2 var_86
  loc_9F1454: FFree1Ad var_8C
  loc_9F1457: ExitProcCbHresult
  loc_9F145D: CCyI4
End Sub

Public Property Get BOF() '9F14BC
  'Data Table: 43A838
  loc_9F1494: FLdRfVar var_8E
  loc_9F1497: FLdRfVar var_8C
  loc_9F149A: FLdPr Me
  loc_9F149D: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F14A2: FLdPr var_8C
  loc_9F14A5:  = Me.BOF
  loc_9F14AA: FLdI2 var_8E
  loc_9F14AD: FStI2 var_86
  loc_9F14B0: FFree1Ad var_8C
  loc_9F14B3: ExitProcCbHresult
  loc_9F14B9: ILdPr
End Sub

Public Sub Sort(sOrden) '9E1E5C
  'Data Table: 43A838
  loc_9E1E40: ILdI4 sOrden
  loc_9E1E43: FLdRfVar var_88
  loc_9E1E46: FLdPr Me
  loc_9E1E49: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9E1E4E: FLdPr var_88
  loc_9E1E51: Me.Sort = from_stack_1
  loc_9E1E56: FFree1Ad var_88
  loc_9E1E59: ExitProcHresult
  loc_9E1E5A: LitStr "StrFormMemory_4BAA694"
End Sub

Public Sub Find(sFind) '9F1740
  'Data Table: 43A838
  loc_9F1718: LitVar_Missing var_98
  loc_9F171B: PopAdLdVar
  loc_9F171C: LitI4 1
  loc_9F1721: LitI4 0
  loc_9F1726: ILdI4 sFind
  loc_9F1729: FLdRfVar var_88
  loc_9F172C: FLdPr Me
  loc_9F172F: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F1734: FLdPr var_88
  loc_9F1737: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F173C: FFree1Ad var_88
  loc_9F173F: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9FD954
  'Data Table: 43A838
  loc_9FD92C: On Error Resume Next
  loc_9FD931: ILdI4 sCriterio
  loc_9FD934: CVarStr var_98
  loc_9FD937: PopAdLdVar
  loc_9FD938: FLdRfVar var_88
  loc_9FD93B: FLdPr Me
  loc_9FD93E: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9FD943: FLdPr var_88
  loc_9FD946: Me.Filter = from_stack_1
  loc_9FD94B: FFree1Ad var_88
  loc_9FD950: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F179C
  'Data Table: 43A838
  loc_9F1774: FLdRfVar var_90
  loc_9F1777: FLdRfVar var_8C
  loc_9F177A: FLdPr Me
  loc_9F177D: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F1782: FLdPr var_8C
  loc_9F1785:  = Me.AbsolutePosition
  loc_9F178A: ILdRf var_90
  loc_9F178D: FStR4 var_88
  loc_9F1790: FFree1Ad var_8C
  loc_9F1793: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F18B0
  'Data Table: 43A838
  loc_9F1888: FLdRfVar var_90
  loc_9F188B: FLdRfVar var_8C
  loc_9F188E: FLdPr Me
  loc_9F1891: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F1896: FLdPr var_8C
  loc_9F1899:  = Me.RecordCount
  loc_9F189E: ILdRf var_90
  loc_9F18A1: FStR4 var_88
  loc_9F18A4: FFree1Ad var_8C
  loc_9F18A7: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiRamo, CodiRubr, CodiSubr, DetaSubr, PoimSubr, ImpoSubr) 'AEC92C
  'Data Table: 43A838
  loc_AEC7F8: ILdRf CodiSubr
  loc_AEC7FB: FStStrCopy var_88
  loc_AEC7FE: ILdRf DetaSubr
  loc_AEC801: FStStrCopy var_8C
  loc_AEC804: ILdRf PoimSubr
  loc_AEC807: FStStrCopy var_90
  loc_AEC80A: FLdRfVar var_A0
  loc_AEC80D: ILdRf var_88
  loc_AEC810: ILdRf CodiRubr
  loc_AEC813: FLdI2 CodiRamo
  loc_AEC816: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEC81B: FLdRfVar var_A0
  loc_AEC81E: LitVarStr var_B0, vbNullString
  loc_AEC823: HardType
  loc_AEC824: NeVarBool
  loc_AEC826: FFree1Var var_A0 = ""
  loc_AEC829: BranchF loc_AEC837
  loc_AEC82C: LitStr "El RUBRO YA EXISTE. Reintente..."
  loc_AEC82F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC834: Branch loc_AEC92A
  loc_AEC837: LitStr "INSERT INTO subrubro (CodiRamo, CodiRubr, PeriOrde, CodiSubr, DetaSubr, PoimSubr, ImpoSubr, AltaUsua) "
  loc_AEC83A: LitStr " VALUES ("
  loc_AEC83D: ConcatStr
  loc_AEC83E: FStStrNoPop var_C4
  loc_AEC841: FLdI2 CodiRamo
  loc_AEC844: CStrUI1
  loc_AEC846: FStStrNoPop var_C8
  loc_AEC849: ConcatStr
  loc_AEC84A: FStStrNoPop var_CC
  loc_AEC84D: LitStr ","
  loc_AEC850: ConcatStr
  loc_AEC851: FStStrNoPop var_D0
  loc_AEC854: ILdRf CodiRubr
  loc_AEC857: CStrI4
  loc_AEC859: FStStrNoPop var_D4
  loc_AEC85C: ConcatStr
  loc_AEC85D: FStStrNoPop var_D8
  loc_AEC860: LitStr ", "
  loc_AEC863: ConcatStr
  loc_AEC864: FStStrNoPop var_DC
  loc_AEC867: ImpAdLdI2 MemVar_D93036
  loc_AEC86A: CStrUI1
  loc_AEC86C: FStStrNoPop var_E0
  loc_AEC86F: ConcatStr
  loc_AEC870: FStStrNoPop var_E4
  loc_AEC873: LitStr ","
  loc_AEC876: ConcatStr
  loc_AEC877: FStStrNoPop var_E8
  loc_AEC87A: ILdRf var_88
  loc_AEC87D: ConcatStr
  loc_AEC87E: FStStrNoPop var_EC
  loc_AEC881: LitStr ",'"
  loc_AEC884: ConcatStr
  loc_AEC885: FStStrNoPop var_F0
  loc_AEC888: ILdRf var_8C
  loc_AEC88B: ConcatStr
  loc_AEC88C: FStStrNoPop var_F4
  loc_AEC88F: LitStr "', '"
  loc_AEC892: ConcatStr
  loc_AEC893: FStStrNoPop var_F8
  loc_AEC896: ILdRf var_90
  loc_AEC899: ConcatStr
  loc_AEC89A: FStStrNoPop var_FC
  loc_AEC89D: LitStr "',"
  loc_AEC8A0: ConcatStr
  loc_AEC8A1: FStStrNoPop var_104
  loc_AEC8A4: LitI4 0
  loc_AEC8A9: LitI4 -1
  loc_AEC8AE: LitI4 1
  loc_AEC8B3: LitStr "."
  loc_AEC8B6: LitStr ","
  loc_AEC8B9: FLdFPR8 ImpoSubr
  loc_AEC8BC: CStrR8
  loc_AEC8BE: FStStrNoPop var_100
  loc_AEC8C1: ImpAdCallI2 Replace(, , , , , )
  loc_AEC8C6: FStStrNoPop var_108
  loc_AEC8C9: ConcatStr
  loc_AEC8CA: FStStrNoPop var_10C
  loc_AEC8CD: LitStr ",'"
  loc_AEC8D0: ConcatStr
  loc_AEC8D1: FStStrNoPop var_110
  loc_AEC8D4: ImpAdLdI4 MemVar_D9302C
  loc_AEC8D7: ConcatStr
  loc_AEC8D8: FStStrNoPop var_114
  loc_AEC8DB: LitStr "');"
  loc_AEC8DE: ConcatStr
  loc_AEC8DF: FStStrNoPop var_118
  loc_AEC8E2: Call EjecutarRs2(from_stack_1v)
  loc_AEC8E7: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AEC916: Call Requery()
  loc_AEC91B: ILdRf var_88
  loc_AEC91E: ILdRf CodiRubr
  loc_AEC921: FLdI2 CodiRamo
  loc_AEC924: CI4UI1
  loc_AEC925: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEC92A: ExitProcHresult
End Sub

Public Sub AddNewMigracion(CodiRamo, CodiRubr, CodiSubr, DetaSubr, ImpoSubr) 'AC6198
  'Data Table: 43A838
  loc_AC60C4: ILdRf CodiSubr
  loc_AC60C7: FStStrCopy var_88
  loc_AC60CA: ILdRf DetaSubr
  loc_AC60CD: FStStrCopy var_8C
  loc_AC60D0: ILdRf ImpoSubr
  loc_AC60D3: FStStrCopy var_90
  loc_AC60D6: FLdRfVar var_A0
  loc_AC60D9: ILdRf var_88
  loc_AC60DC: ILdRf CodiRubr
  loc_AC60DF: FLdI2 CodiRamo
  loc_AC60E2: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC60E7: FLdRfVar var_A0
  loc_AC60EA: LitVarStr var_B0, vbNullString
  loc_AC60EF: HardType
  loc_AC60F0: NeVarBool
  loc_AC60F2: FFree1Var var_A0 = ""
  loc_AC60F5: BranchF loc_AC6103
  loc_AC60F8: LitStr "El RUBRO YA EXISTE. Reintente..."
  loc_AC60FB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC6100: Branch loc_AC6195
  loc_AC6103: LitStr "INSERT INTO subrubro (CodiRamo, CodiRubr, PeriOrde, CodiSubr, DetaSubr, ImpoSubr) VALUES ("
  loc_AC6106: FLdI2 CodiRamo
  loc_AC6109: CStrUI1
  loc_AC610B: FStStrNoPop var_C4
  loc_AC610E: ConcatStr
  loc_AC610F: FStStrNoPop var_C8
  loc_AC6112: LitStr ","
  loc_AC6115: ConcatStr
  loc_AC6116: FStStrNoPop var_CC
  loc_AC6119: ILdRf CodiRubr
  loc_AC611C: CStrI4
  loc_AC611E: FStStrNoPop var_D0
  loc_AC6121: ConcatStr
  loc_AC6122: FStStrNoPop var_D4
  loc_AC6125: LitStr ",2009,"
  loc_AC6128: ConcatStr
  loc_AC6129: FStStrNoPop var_D8
  loc_AC612C: ILdRf var_88
  loc_AC612F: ConcatStr
  loc_AC6130: FStStrNoPop var_DC
  loc_AC6133: LitStr ",'"
  loc_AC6136: ConcatStr
  loc_AC6137: FStStrNoPop var_E0
  loc_AC613A: ILdRf var_8C
  loc_AC613D: ConcatStr
  loc_AC613E: FStStrNoPop var_E4
  loc_AC6141: LitStr "',"
  loc_AC6144: ConcatStr
  loc_AC6145: FStStrNoPop var_E8
  loc_AC6148: LitI4 0
  loc_AC614D: LitI4 -1
  loc_AC6152: LitI4 1
  loc_AC6157: LitStr "."
  loc_AC615A: LitStr ","
  loc_AC615D: ILdRf var_90
  loc_AC6160: ImpAdCallI2 Replace(, , , , , )
  loc_AC6165: FStStrNoPop var_EC
  loc_AC6168: ConcatStr
  loc_AC6169: FStStrNoPop var_F0
  loc_AC616C: LitStr ");"
  loc_AC616F: ConcatStr
  loc_AC6170: FStStrNoPop var_F4
  loc_AC6173: Call EjecutarRs2(from_stack_1v)
  loc_AC6178: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_AC6195: ExitProcHresult
End Sub

Public Sub Modificar(CodiRamo, CodiRubr, CodiSubr, DetaSubr, PoimSubr, ImpoSubr) 'AE9700
  'Data Table: 43A838
  loc_AE95D4: ILdRf CodiSubr
  loc_AE95D7: FStStrCopy var_88
  loc_AE95DA: ILdRf DetaSubr
  loc_AE95DD: FStStrCopy var_8C
  loc_AE95E0: ILdRf PoimSubr
  loc_AE95E3: FStStrCopy var_90
  loc_AE95E6: FLdRfVar var_A0
  loc_AE95E9: ILdRf var_88
  loc_AE95EC: ILdRf CodiRubr
  loc_AE95EF: ILdRf CodiRamo
  loc_AE95F2: CI2I4
  loc_AE95F3: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AE95F8: FLdRfVar var_A0
  loc_AE95FB: LitVarStr var_B0, vbNullString
  loc_AE9600: HardType
  loc_AE9601: EqVarBool
  loc_AE9603: FFree1Var var_A0 = ""
  loc_AE9606: BranchF loc_AE9614
  loc_AE9609: LitStr "El SubRubro NO EXISTE. Reintente..."
  loc_AE960C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE9611: Branch loc_AE96EA
  loc_AE9614: LitStr "UPDATE subrubro SET DetaSubr = '"
  loc_AE9617: ILdRf var_8C
  loc_AE961A: ConcatStr
  loc_AE961B: FStStrNoPop var_C4
  loc_AE961E: LitStr "', PoimSubr = '"
  loc_AE9621: ConcatStr
  loc_AE9622: FStStrNoPop var_C8
  loc_AE9625: ILdRf var_90
  loc_AE9628: ConcatStr
  loc_AE9629: FStStrNoPop var_CC
  loc_AE962C: LitStr "', ImpoSubr = "
  loc_AE962F: ConcatStr
  loc_AE9630: FStStrNoPop var_D4
  loc_AE9633: LitI4 0
  loc_AE9638: LitI4 -1
  loc_AE963D: LitI4 1
  loc_AE9642: LitStr "."
  loc_AE9645: LitStr ","
  loc_AE9648: FLdFPR8 ImpoSubr
  loc_AE964B: CStrR8
  loc_AE964D: FStStrNoPop var_D0
  loc_AE9650: ImpAdCallI2 Replace(, , , , , )
  loc_AE9655: FStStrNoPop var_D8
  loc_AE9658: ConcatStr
  loc_AE9659: FStStrNoPop var_DC
  loc_AE965C: LitStr ", ModiUsua = '"
  loc_AE965F: ConcatStr
  loc_AE9660: FStStrNoPop var_E0
  loc_AE9663: ImpAdLdI4 MemVar_D9302C
  loc_AE9666: ConcatStr
  loc_AE9667: FStStrNoPop var_E4
  loc_AE966A: LitStr "', ModiFeho = now()  WHERE CodiRamo = "
  loc_AE966D: ConcatStr
  loc_AE966E: FStStrNoPop var_E8
  loc_AE9671: ILdRf CodiRamo
  loc_AE9674: CStrI4
  loc_AE9676: FStStrNoPop var_EC
  loc_AE9679: ConcatStr
  loc_AE967A: FStStrNoPop var_F0
  loc_AE967D: LitStr " AND CodiRubr = "
  loc_AE9680: ConcatStr
  loc_AE9681: FStStrNoPop var_F4
  loc_AE9684: ILdRf CodiRubr
  loc_AE9687: CStrI4
  loc_AE9689: FStStrNoPop var_F8
  loc_AE968C: ConcatStr
  loc_AE968D: FStStrNoPop var_FC
  loc_AE9690: LitStr " AND PeriOrde = "
  loc_AE9693: ConcatStr
  loc_AE9694: FStStrNoPop var_100
  loc_AE9697: ImpAdLdI2 MemVar_D93036
  loc_AE969A: CStrUI1
  loc_AE969C: FStStrNoPop var_104
  loc_AE969F: ConcatStr
  loc_AE96A0: FStStrNoPop var_108
  loc_AE96A3: LitStr " AND CodiSubr = "
  loc_AE96A6: ConcatStr
  loc_AE96A7: FStStrNoPop var_10C
  loc_AE96AA: ILdRf var_88
  loc_AE96AD: ConcatStr
  loc_AE96AE: FStStrNoPop var_110
  loc_AE96B1: LitStr ";"
  loc_AE96B4: ConcatStr
  loc_AE96B5: FStStrNoPop var_114
  loc_AE96B8: Call EjecutarRs2(from_stack_1v)
  loc_AE96BD: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_AE96EA: Call Requery()
  loc_AE96EF: ILdRf var_88
  loc_AE96F2: ILdRf CodiRubr
  loc_AE96F5: ILdRf CodiRamo
  loc_AE96F8: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AE96FD: ExitProcHresult
End Sub

Public Sub Delete(CodiRamo, CodiRubr, CodiSubr) 'ABC76C
  'Data Table: 43A838
  loc_ABC694: ILdRf CodiSubr
  loc_ABC697: FStStrCopy var_88
  loc_ABC69A: LitStr "Municipalidad de Guaymallén"
  loc_ABC69D: LitStr "Municipalidad de Malargüe"
  loc_ABC6A0: EqStr
  loc_ABC6A2: BranchF loc_ABC6F7
  loc_ABC6A5: LitStr "DELETE FROM subrubro WHERE CodiRamo = "
  loc_ABC6A8: FLdI2 CodiRamo
  loc_ABC6AB: CStrUI1
  loc_ABC6AD: FStStrNoPop var_8C
  loc_ABC6B0: ConcatStr
  loc_ABC6B1: FStStrNoPop var_90
  loc_ABC6B4: LitStr " AND CodiRubr = "
  loc_ABC6B7: ConcatStr
  loc_ABC6B8: FStStrNoPop var_94
  loc_ABC6BB: ILdRf CodiRubr
  loc_ABC6BE: CStrI4
  loc_ABC6C0: FStStrNoPop var_98
  loc_ABC6C3: ConcatStr
  loc_ABC6C4: FStStrNoPop var_9C
  loc_ABC6C7: LitStr " AND CodiSubr = "
  loc_ABC6CA: ConcatStr
  loc_ABC6CB: FStStrNoPop var_A0
  loc_ABC6CE: ILdRf var_88
  loc_ABC6D1: ConcatStr
  loc_ABC6D2: FStStrNoPop var_A4
  loc_ABC6D5: LitStr ";"
  loc_ABC6D8: ConcatStr
  loc_ABC6D9: FStStrNoPop var_A8
  loc_ABC6DC: Call EjecutarRs2(from_stack_1v)
  loc_ABC6E1: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_ABC6F4: Branch loc_ABC76A
  loc_ABC6F7: LitStr "Municipalidad de Guaymallén"
  loc_ABC6FA: LitStr "Municipalidad de Lavalle"
  loc_ABC6FD: EqStr
  loc_ABC6FF: BranchF loc_ABC76A
  loc_ABC702: LitStr "DELETE FROM subrubro WHERE CodiRamo = "
  loc_ABC705: FLdI2 CodiRamo
  loc_ABC708: CStrUI1
  loc_ABC70A: FStStrNoPop var_8C
  loc_ABC70D: ConcatStr
  loc_ABC70E: FStStrNoPop var_90
  loc_ABC711: LitStr " AND CodiRubr = "
  loc_ABC714: ConcatStr
  loc_ABC715: FStStrNoPop var_94
  loc_ABC718: ILdRf CodiRubr
  loc_ABC71B: CStrI4
  loc_ABC71D: FStStrNoPop var_98
  loc_ABC720: ConcatStr
  loc_ABC721: FStStrNoPop var_9C
  loc_ABC724: LitStr " AND PeriOrde = "
  loc_ABC727: ConcatStr
  loc_ABC728: FStStrNoPop var_A0
  loc_ABC72B: ImpAdLdI2 MemVar_D93036
  loc_ABC72E: CStrUI1
  loc_ABC730: FStStrNoPop var_A4
  loc_ABC733: ConcatStr
  loc_ABC734: FStStrNoPop var_A8
  loc_ABC737: LitStr " AND CodiSubr = "
  loc_ABC73A: ConcatStr
  loc_ABC73B: FStStrNoPop var_AC
  loc_ABC73E: ILdRf var_88
  loc_ABC741: ConcatStr
  loc_ABC742: FStStrNoPop var_B0
  loc_ABC745: LitStr ";"
  loc_ABC748: ConcatStr
  loc_ABC749: FStStrNoPop var_B4
  loc_ABC74C: Call EjecutarRs2(from_stack_1v)
  loc_ABC751: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_ABC76A: ExitProcHresult
  loc_ABC76B: Ary1LdI4
End Sub

Public Sub Requery() 'A04E6C
  'Data Table: 43A838
  loc_A04E3C: LitI4 -1
  loc_A04E41: FLdRfVar var_88
  loc_A04E44: FLdPr Me
  loc_A04E47: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A04E4C: FLdPr var_88
  loc_A04E4F: Me.Requery from_stack_1
  loc_A04E54: FFree1Ad var_88
  loc_A04E57: LitVarStr var_98, "Primary"
  loc_A04E5C: PopAdLdVar
  loc_A04E5D: FLdPr Me
  loc_A04E60: LateIdCall
  loc_A04E68: ExitProcHresult
End Sub

Public Sub Update() 'A220A8
  'Data Table: 43A838
  loc_A22064: FLdRfVar var_88
  loc_A22067: FLdPr Me
  loc_A2206A: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A2206F: FLdZeroAd var_88
  loc_A22072: FStAdFunc var_8C
  loc_A22075: LitI4 3
  loc_A2207A: FLdPr var_8C
  loc_A2207D: Me.UpdateBatch
  loc_A22082: FLdRfVar var_90
  loc_A22085: FLdPr var_8C
  loc_A22088:  = Me.EditMode
  loc_A2208D: ILdRf var_90
  loc_A22090: LitI4 2
  loc_A22095: EqI4
  loc_A22096: BranchF loc_A2209E
  loc_A22099: Call MoveLast()
  loc_A2209E: LitNothing
  loc_A220A0: FStAd var_8C 
  loc_A220A4: ExitProcHresult
  loc_A220A5: FStVarUnk
End Sub

Public Sub Cancel() 'A44D24
  'Data Table: 43A838
  loc_A44CD0: FLdRfVar var_88
  loc_A44CD3: FLdPr Me
  loc_A44CD6: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A44CDB: FLdZeroAd var_88
  loc_A44CDE: FStAdFunc var_8C
  loc_A44CE1: FLdRfVar var_90
  loc_A44CE4: FLdPr var_8C
  loc_A44CE7:  = Me.RecordCount
  loc_A44CEC: ILdRf var_90
  loc_A44CEF: LitI4 0
  loc_A44CF4: GtI4
  loc_A44CF5: BranchF loc_A44D1C
  loc_A44CF8: FLdPr var_8C
  loc_A44CFB: Me.CancelUpdate
  loc_A44D00: FLdRfVar var_90
  loc_A44D03: FLdPr var_8C
  loc_A44D06:  = Me.EditMode
  loc_A44D0B: ILdRf var_90
  loc_A44D0E: LitI4 2
  loc_A44D13: EqI4
  loc_A44D14: BranchF loc_A44D1C
  loc_A44D17: Call MoveFirst()
  loc_A44D1C: LitNothing
  loc_A44D1E: FStAd var_8C 
  loc_A44D22: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD714
  'Data Table: 43A838
  loc_9FD6E8: FLdRfVar var_90
  loc_9FD6EB: FLdRfVar var_8C
  loc_9FD6EE: FLdPr Me
  loc_9FD6F1: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9FD6F6: FLdPr var_8C
  loc_9FD6F9:  = Me.EditMode
  loc_9FD6FE: ILdRf var_90
  loc_9FD701: LitI4 0
  loc_9FD706: NeI4
  loc_9FD707: FStI2 var_86
  loc_9FD70A: FFree1Ad var_8C
  loc_9FD70D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6FB48
  'Data Table: 43A838
  loc_A6FAD4: ILdRf sSelect
  loc_A6FAD7: FStStrCopy var_88
  loc_A6FADA: LitNothing
  loc_A6FADC: CastAd
  loc_A6FADF: FStAdFuncNoPop
  loc_A6FAE2: FLdPr Me
  loc_A6FAE5: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_A6FAEA: FFree1Ad var_8C
  loc_A6FAED: New Recordset
  loc_A6FAF1: FStAdFuncNoPop
  loc_A6FAF4: FLdPr Me
  loc_A6FAF7: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_A6FAFC: FFree1Ad var_8C
  loc_A6FAFF: LitI4 -1
  loc_A6FB04: LitI4 3
  loc_A6FB09: LitI4 3
  loc_A6FB0E: ImpAdLdI4 MemVar_D9301C
  loc_A6FB11: CVarAd
  loc_A6FB15: PopAdLdVar
  loc_A6FB16: ILdRf var_88
  loc_A6FB19: CVarStr var_9C
  loc_A6FB1C: PopAdLdVar
  loc_A6FB1D: FLdRfVar var_8C
  loc_A6FB20: FLdPr Me
  loc_A6FB23: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A6FB28: FLdPr var_8C
  loc_A6FB2B: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6FB30: FFree1Ad var_8C
  loc_A6FB33: LitVarStr var_9C, "Primary"
  loc_A6FB38: PopAdLdVar
  loc_A6FB39: FLdPr Me
  loc_A6FB3C: LateIdCall
  loc_A6FB44: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A7E8
  'Data Table: 43A838
  loc_A5A788: ILdRf sSelect
  loc_A5A78B: FStStrCopy var_88
  loc_A5A78E: LitNothing
  loc_A5A790: CastAd
  loc_A5A793: FStAdFuncNoPop
  loc_A5A796: FLdPr Me
  loc_A5A799: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_A5A79E: FFree1Ad var_8C
  loc_A5A7A1: New Recordset
  loc_A5A7A5: FStAdFuncNoPop
  loc_A5A7A8: FLdPr Me
  loc_A5A7AB: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_A5A7B0: FFree1Ad var_8C
  loc_A5A7B3: LitI4 -1
  loc_A5A7B8: LitI4 3
  loc_A5A7BD: LitI4 3
  loc_A5A7C2: ImpAdLdI4 MemVar_D9301C
  loc_A5A7C5: CVarAd
  loc_A5A7C9: PopAdLdVar
  loc_A5A7CA: ILdRf var_88
  loc_A5A7CD: CVarStr var_9C
  loc_A5A7D0: PopAdLdVar
  loc_A5A7D1: FLdRfVar var_8C
  loc_A5A7D4: FLdPr Me
  loc_A5A7D7: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A5A7DC: FLdPr var_8C
  loc_A5A7DF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A7E4: FFree1Ad var_8C
  loc_A5A7E7: ExitProcHresult
End Sub

Public Sub Encontrar(CodiRamo, CodiRubr, CodiSubr) 'A6F940
  'Data Table: 43A838
  loc_A6F8D0: ILdRf CodiSubr
  loc_A6F8D3: FStStrCopy var_88
  loc_A6F8D6: LitStr "CodiRamo = "
  loc_A6F8D9: ILdRf CodiRamo
  loc_A6F8DC: CStrI4
  loc_A6F8DE: FStStrNoPop var_8C
  loc_A6F8E1: ConcatStr
  loc_A6F8E2: PopTmpLdAdStr
  loc_A6F8E6: Call Find(from_stack_1v)
  loc_A6F8EB: FFreeStr var_8C = ""
  loc_A6F8F2: LitStr "CodiRubr = "
  loc_A6F8F5: ILdRf CodiRubr
  loc_A6F8F8: CStrI4
  loc_A6F8FA: FStStrNoPop var_8C
  loc_A6F8FD: ConcatStr
  loc_A6F8FE: PopTmpLdAdStr
  loc_A6F902: Call Find(from_stack_1v)
  loc_A6F907: FFreeStr var_8C = ""
  loc_A6F90E: LitStr "PeriOrde = "
  loc_A6F911: ImpAdLdI2 MemVar_D93036
  loc_A6F914: CStrUI1
  loc_A6F916: FStStrNoPop var_8C
  loc_A6F919: ConcatStr
  loc_A6F91A: PopTmpLdAdStr
  loc_A6F91E: Call Find(from_stack_1v)
  loc_A6F923: FFreeStr var_8C = ""
  loc_A6F92A: LitStr "CodiSubr = "
  loc_A6F92D: ILdRf var_88
  loc_A6F930: ConcatStr
  loc_A6F931: PopTmpLdAdStr
  loc_A6F935: Call Find(from_stack_1v)
  loc_A6F93A: FFree1Str var_8C
  loc_A6F93D: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08EE8
  'Data Table: 43A838
  loc_A08EB8: ZeroRetVal
  loc_A08EBA: FLdRfVar var_90
  loc_A08EBD: FLdRfVar var_8C
  loc_A08EC0: FLdPr Me
  loc_A08EC3: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A08EC8: FLdPr var_8C
  loc_A08ECB:  = Me.DataSource
  loc_A08ED0: ILdRf var_90
  loc_A08ED3: CastAd
  loc_A08ED6: FStAdFunc var_88
  loc_A08ED9: FFreeAd var_8C = ""
  loc_A08EE0: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F2150
  'Data Table: 43A838
  loc_9F2128: FLdRfVar var_90
  loc_9F212B: FLdRfVar var_8C
  loc_9F212E: FLdPr Me
  loc_9F2131: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F2136: FLdPr var_8C
  loc_9F2139:  = Me.EditMode
  loc_9F213E: ILdRf var_90
  loc_9F2141: FStR4 var_88
  loc_9F2144: FFree1Ad var_8C
  loc_9F2147: ExitProcCbHresult
End Sub

Public Property Get CodiRamo() 'A4F8D4
  'Data Table: 43A838
  loc_A4F888: FLdRfVar var_B4
  loc_A4F88B: FLdRfVar var_A4
  loc_A4F88E: LitVarStr var_A0, "CodiRamo"
  loc_A4F893: PopAdLdVar
  loc_A4F894: FLdRfVar var_90
  loc_A4F897: FLdRfVar var_8C
  loc_A4F89A: FLdPr Me
  loc_A4F89D: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A4F8A2: FLdPr var_8C
  loc_A4F8A5:  = Me.Fields
  loc_A4F8AA: FLdPr var_90
  loc_A4F8AD: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F8B2: FLdPr var_A4
  loc_A4F8B5:  = Me.Value
  loc_A4F8BA: FLdRfVar var_B4
  loc_A4F8BD: CI2Var
  loc_A4F8BE: FStI2 var_86
  loc_A4F8C1: FFreeAd var_8C = "": var_90 = ""
  loc_A4F8CA: FFree1Var var_B4 = ""
  loc_A4F8CD: ExitProcCbHresult
  loc_A4F8D3: CI4R8
End Sub

Public Property Let CodiRamo(vDato) '9EA8B8
  'Data Table: 43A838
  loc_9EA894: FLdI2 vDato
  loc_9EA897: CVarI2 var_A8
  loc_9EA89A: PopAdLdVar
  loc_9EA89B: LitVarStr var_98, "CodiReca"
  loc_9EA8A0: PopAdLdVar
  loc_9EA8A1: FLdRfVar var_88
  loc_9EA8A4: FLdPr Me
  loc_9EA8A7: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9EA8AC: FLdPr var_88
  loc_9EA8AF: Me.Collect = from_stack_1
  loc_9EA8B4: FFree1Ad var_88
  loc_9EA8B7: ExitProcHresult
End Sub

Public Property Get CodiRubr() 'A46A18
  'Data Table: 43A838
  loc_A469CC: FLdRfVar var_B4
  loc_A469CF: FLdRfVar var_A4
  loc_A469D2: LitVarStr var_A0, "CodiRubr"
  loc_A469D7: PopAdLdVar
  loc_A469D8: FLdRfVar var_90
  loc_A469DB: FLdRfVar var_8C
  loc_A469DE: FLdPr Me
  loc_A469E1: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A469E6: FLdPr var_8C
  loc_A469E9:  = Me.Fields
  loc_A469EE: FLdPr var_90
  loc_A469F1: from_stack_2 = Me.Item(from_stack_1)
  loc_A469F6: FLdPr var_A4
  loc_A469F9:  = Me.Value
  loc_A469FE: FLdRfVar var_B4
  loc_A46A01: CI4Var
  loc_A46A03: FStR4 var_88
  loc_A46A06: FFreeAd var_8C = "": var_90 = ""
  loc_A46A0F: FFree1Var var_B4 = ""
  loc_A46A12: ExitProcCbHresult
End Sub

Public Property Let CodiRubr(vDato) '9F2208
  'Data Table: 43A838
  loc_9F21E0: ILdRf vDato
  loc_9F21E3: CVarI4
  loc_9F21E7: PopAdLdVar
  loc_9F21E8: LitVarStr var_98, "CodiRubr"
  loc_9F21ED: PopAdLdVar
  loc_9F21EE: FLdRfVar var_88
  loc_9F21F1: FLdPr Me
  loc_9F21F4: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F21F9: FLdPr var_88
  loc_9F21FC: Me.Collect = from_stack_1
  loc_9F2201: FFree1Ad var_88
  loc_9F2204: ExitProcHresult
End Sub

Public Property Get PeriOrde() 'A55E90
  'Data Table: 43A838
  loc_A55E40: ZeroRetVal
  loc_A55E42: FLdRfVar var_B4
  loc_A55E45: FLdRfVar var_A4
  loc_A55E48: LitVarStr var_A0, "PeriOrde"
  loc_A55E4D: PopAdLdVar
  loc_A55E4E: FLdRfVar var_90
  loc_A55E51: FLdRfVar var_8C
  loc_A55E54: FLdPr Me
  loc_A55E57: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A55E5C: FLdPr var_8C
  loc_A55E5F:  = Me.Fields
  loc_A55E64: FLdPr var_90
  loc_A55E67: from_stack_2 = Me.Item(from_stack_1)
  loc_A55E6C: FLdPr var_A4
  loc_A55E6F:  = Me.Value
  loc_A55E74: FLdRfVar var_B4
  loc_A55E77: CStrVarTmp
  loc_A55E78: FStStr var_88
  loc_A55E7B: FFreeAd var_8C = "": var_90 = ""
  loc_A55E84: FFree1Var var_B4 = ""
  loc_A55E87: ExitProcCbHresult
  loc_A55E8F: CI2I4
End Sub

Public Property Get CodiSubr() 'A55F24
  'Data Table: 43A838
  loc_A55ED4: ZeroRetVal
  loc_A55ED6: FLdRfVar var_B4
  loc_A55ED9: FLdRfVar var_A4
  loc_A55EDC: LitVarStr var_A0, "CodiSubr"
  loc_A55EE1: PopAdLdVar
  loc_A55EE2: FLdRfVar var_90
  loc_A55EE5: FLdRfVar var_8C
  loc_A55EE8: FLdPr Me
  loc_A55EEB: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A55EF0: FLdPr var_8C
  loc_A55EF3:  = Me.Fields
  loc_A55EF8: FLdPr var_90
  loc_A55EFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A55F00: FLdPr var_A4
  loc_A55F03:  = Me.Value
  loc_A55F08: FLdRfVar var_B4
  loc_A55F0B: CStrVarTmp
  loc_A55F0C: FStStr var_88
  loc_A55F0F: FFreeAd var_8C = "": var_90 = ""
  loc_A55F18: FFree1Var var_B4 = ""
  loc_A55F1B: ExitProcCbHresult
  loc_A55F21: FStStrCopy Me00
End Sub

Public Property Let CodiSubr(vDato) 'A032AC
  'Data Table: 43A838
  loc_A03280: ILdRf vDato
  loc_A03283: FStStrCopy var_88
  loc_A03286: ILdRf var_88
  loc_A03289: CVarStr var_AC
  loc_A0328C: PopAdLdVar
  loc_A0328D: LitVarStr var_9C, "CodiSubr"
  loc_A03292: PopAdLdVar
  loc_A03293: FLdRfVar var_8C
  loc_A03296: FLdPr Me
  loc_A03299: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A0329E: FLdPr var_8C
  loc_A032A1: Me.Collect = from_stack_1
  loc_A032A6: FFree1Ad var_8C
  loc_A032A9: ExitProcHresult
End Sub

Public Property Get DetaSubr() 'A560E0
  'Data Table: 43A838
  loc_A56090: ZeroRetVal
  loc_A56092: FLdRfVar var_B4
  loc_A56095: FLdRfVar var_A4
  loc_A56098: LitVarStr var_A0, "DetaSubr"
  loc_A5609D: PopAdLdVar
  loc_A5609E: FLdRfVar var_90
  loc_A560A1: FLdRfVar var_8C
  loc_A560A4: FLdPr Me
  loc_A560A7: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A560AC: FLdPr var_8C
  loc_A560AF:  = Me.Fields
  loc_A560B4: FLdPr var_90
  loc_A560B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A560BC: FLdPr var_A4
  loc_A560BF:  = Me.Value
  loc_A560C4: FLdRfVar var_B4
  loc_A560C7: CStrVarTmp
  loc_A560C8: FStStr var_88
  loc_A560CB: FFreeAd var_8C = "": var_90 = ""
  loc_A560D4: FFree1Var var_B4 = ""
  loc_A560D7: ExitProcCbHresult
  loc_A560DD: SubR4
End Sub

Public Property Let DetaSubr(vDato) 'A05250
  'Data Table: 43A838
  loc_A05224: ILdRf vDato
  loc_A05227: FStStrCopy var_88
  loc_A0522A: ILdRf var_88
  loc_A0522D: CVarStr var_AC
  loc_A05230: PopAdLdVar
  loc_A05231: LitVarStr var_9C, "DetaSubr"
  loc_A05236: PopAdLdVar
  loc_A05237: FLdRfVar var_8C
  loc_A0523A: FLdPr Me
  loc_A0523D: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A05242: FLdPr var_8C
  loc_A05245: Me.Collect = from_stack_1
  loc_A0524A: FFree1Ad var_8C
  loc_A0524D: ExitProcHresult
End Sub

Public Property Get PoimSubr() 'A56330
  'Data Table: 43A838
  loc_A562E0: ZeroRetVal
  loc_A562E2: FLdRfVar var_B4
  loc_A562E5: FLdRfVar var_A4
  loc_A562E8: LitVarStr var_A0, "PoimSubr"
  loc_A562ED: PopAdLdVar
  loc_A562EE: FLdRfVar var_90
  loc_A562F1: FLdRfVar var_8C
  loc_A562F4: FLdPr Me
  loc_A562F7: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A562FC: FLdPr var_8C
  loc_A562FF:  = Me.Fields
  loc_A56304: FLdPr var_90
  loc_A56307: from_stack_2 = Me.Item(from_stack_1)
  loc_A5630C: FLdPr var_A4
  loc_A5630F:  = Me.Value
  loc_A56314: FLdRfVar var_B4
  loc_A56317: CStrVarTmp
  loc_A56318: FStStr var_88
  loc_A5631B: FFreeAd var_8C = "": var_90 = ""
  loc_A56324: FFree1Var var_B4 = ""
  loc_A56327: ExitProcCbHresult
  loc_A5632D: LitI2FP 7166
End Sub

Public Function ValidaClave(CodiRamo, CodiRubr, CodiSubr) 'AA4A84
  'Data Table: 43A838
  loc_AA49E8: ILdRf CodiSubr
  loc_AA49EB: FStStrCopy var_98
  loc_AA49EE: ZeroRetValVar
  loc_AA49F0: LitStr "SELECT CodiRamo, CodiRubr, PeriOrde, CodiSubr FROM subrubro WHERE CodiRamo = "
  loc_AA49F3: FLdI2 CodiRamo
  loc_AA49F6: CStrUI1
  loc_AA49F8: FStStrNoPop var_9C
  loc_AA49FB: ConcatStr
  loc_AA49FC: FStStrNoPop var_A0
  loc_AA49FF: LitStr " AND CodiRubr = "
  loc_AA4A02: ConcatStr
  loc_AA4A03: FStStrNoPop var_A4
  loc_AA4A06: ILdRf CodiRubr
  loc_AA4A09: CStrI4
  loc_AA4A0B: FStStrNoPop var_A8
  loc_AA4A0E: ConcatStr
  loc_AA4A0F: FStStrNoPop var_AC
  loc_AA4A12: LitStr " AND PeriOrde = "
  loc_AA4A15: ConcatStr
  loc_AA4A16: FStStrNoPop var_B0
  loc_AA4A19: ImpAdLdI2 MemVar_D93036
  loc_AA4A1C: CStrUI1
  loc_AA4A1E: FStStrNoPop var_B4
  loc_AA4A21: ConcatStr
  loc_AA4A22: FStStrNoPop var_B8
  loc_AA4A25: LitStr " AND CodiSubr = "
  loc_AA4A28: ConcatStr
  loc_AA4A29: FStStrNoPop var_BC
  loc_AA4A2C: ILdRf var_98
  loc_AA4A2F: ConcatStr
  loc_AA4A30: FStStrNoPop var_C0
  loc_AA4A33: Call EjecutarRs2(from_stack_1v)
  loc_AA4A38: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AA4A4F: FLdRfVar var_C8
  loc_AA4A52: FLdRfVar var_C4
  loc_AA4A55: FLdPr Me
  loc_AA4A58: from_stack_1v = clssubrubro.global_4433856Get()
  loc_AA4A5D: FLdPr var_C4
  loc_AA4A60:  = Me.RecordCount
  loc_AA4A65: ILdRf var_C8
  loc_AA4A68: LitI4 0
  loc_AA4A6D: GtI4
  loc_AA4A6E: FFree1Ad var_C4
  loc_AA4A71: BranchF loc_AA4A7D
  loc_AA4A74: LitVarStr var_D8, "EL SubRubro YA EXISTE. Reintente..."
  loc_AA4A79: FStVarCopy
  loc_AA4A7D: ExitProcCbHresult
End Function

Public Function CodiSubrValidate(iCodiRamo, iCodiRubr, sCodiSubr) 'ACAAAC
  'Data Table: 43A838
  loc_ACA9A8: ILdRf sCodiSubr
  loc_ACA9AB: FStStrCopy var_8C
  loc_ACA9AE: ZeroRetVal
  loc_ACA9B0: ILdRf var_8C
  loc_ACA9B3: LitStr "el Codigo del SUBRUBRO"
  loc_ACA9B6: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_ACA9BB: FStStr var_88
  loc_ACA9BE: ILdRf var_88
  loc_ACA9C1: LitStr vbNullString
  loc_ACA9C4: NeStr
  loc_ACA9C6: BranchF loc_ACA9CF
  loc_ACA9C9: ExitProcCbHresult
  loc_ACA9CF: New Recordset
  loc_ACA9D3: FStAdFuncNoPop
  loc_ACA9D6: FLdPr Me
  loc_ACA9D9: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_ACA9DE: FFree1Ad var_90
  loc_ACA9E1: LitI4 -1
  loc_ACA9E6: LitI4 3
  loc_ACA9EB: LitI4 3
  loc_ACA9F0: ImpAdLdI4 MemVar_D9301C
  loc_ACA9F3: CVarAd
  loc_ACA9F7: PopAdLdVar
  loc_ACA9F8: LitStr "SELECT * FROM subrubro WHERE CodiRamo = "
  loc_ACA9FB: FLdI2 iCodiRamo
  loc_ACA9FE: CStrUI1
  loc_ACAA00: FStStrNoPop CodiSubrValidate
  loc_ACAA03: ConcatStr
  loc_ACAA04: FStStrNoPop var_98
  loc_ACAA07: LitStr " AND CodiRubr = "
  loc_ACAA0A: ConcatStr
  loc_ACAA0B: FStStrNoPop var_9C
  loc_ACAA0E: ILdRf iCodiRubr
  loc_ACAA11: CStrI4
  loc_ACAA13: FStStrNoPop var_A0
  loc_ACAA16: ConcatStr
  loc_ACAA17: FStStrNoPop var_A4
  loc_ACAA1A: LitStr " AND CodiSubr = "
  loc_ACAA1D: ConcatStr
  loc_ACAA1E: FStStrNoPop var_A8
  loc_ACAA21: ILdRf var_8C
  loc_ACAA24: ConcatStr
  loc_ACAA25: CVarStr var_B8
  loc_ACAA28: PopAdLdVar
  loc_ACAA29: FLdRfVar var_90
  loc_ACAA2C: FLdPr Me
  loc_ACAA2F: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ACAA34: FLdPr var_90
  loc_ACAA37: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ACAA3C: FFreeStr CodiSubrValidate = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_ACAA4B: FFree1Ad var_90
  loc_ACAA4E: FFree1Var var_B8 = ""
  loc_ACAA51: FLdRfVar var_CC
  loc_ACAA54: FLdRfVar var_90
  loc_ACAA57: FLdPr Me
  loc_ACAA5A: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ACAA5F: FLdPr var_90
  loc_ACAA62:  = Me.RecordCount
  loc_ACAA67: ILdRf var_CC
  loc_ACAA6A: LitI4 0
  loc_ACAA6F: EqI4
  loc_ACAA70: FFree1Ad var_90
  loc_ACAA73: BranchF loc_ACAA7C
  loc_ACAA76: LitStr "El CODIGO del SUBRUBRO no existe. Reintente..."
  loc_ACAA79: FStStrCopy var_88
  loc_ACAA7C: FLdRfVar var_90
  loc_ACAA7F: FLdPr Me
  loc_ACAA82: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ACAA87: FLdPr var_90
  loc_ACAA8A: Me.Close
  loc_ACAA8F: FFree1Ad var_90
  loc_ACAA92: LitNothing
  loc_ACAA94: CastAd
  loc_ACAA97: FStAdFuncNoPop
  loc_ACAA9A: FLdPr Me
  loc_ACAA9D: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_ACAAA2: FFree1Ad var_90
  loc_ACAAA5: ExitProcCbHresult
End Function

Public Function BuscaDetalleSubRubro(iCodiRamo, iCodiRubr, iCodiSubr) 'ADBB38
  'Data Table: 43A838
  loc_ADBA0C: ILdRf iCodiSubr
  loc_ADBA0F: FStStrCopy var_8C
  loc_ADBA12: ZeroRetVal
  loc_ADBA14: New Recordset
  loc_ADBA18: FStAdFuncNoPop
  loc_ADBA1B: FLdPr Me
  loc_ADBA1E: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_ADBA23: FFree1Ad var_90
  loc_ADBA26: LitI4 -1
  loc_ADBA2B: LitI4 3
  loc_ADBA30: LitI4 3
  loc_ADBA35: ImpAdLdI4 MemVar_D9301C
  loc_ADBA38: CVarAd
  loc_ADBA3C: PopAdLdVar
  loc_ADBA3D: LitStr "SELECT * FROM subrubro WHERE CodiRamo = "
  loc_ADBA40: FLdI2 iCodiRamo
  loc_ADBA43: CStrUI1
  loc_ADBA45: FStStrNoPop BuscaDetalleSubRubro
  loc_ADBA48: ConcatStr
  loc_ADBA49: FStStrNoPop var_98
  loc_ADBA4C: LitStr " AND CodiRubr = "
  loc_ADBA4F: ConcatStr
  loc_ADBA50: FStStrNoPop var_9C
  loc_ADBA53: ILdRf iCodiRubr
  loc_ADBA56: CStrI4
  loc_ADBA58: FStStrNoPop var_A0
  loc_ADBA5B: ConcatStr
  loc_ADBA5C: FStStrNoPop var_A4
  loc_ADBA5F: LitStr " AND CodiSubr = "
  loc_ADBA62: ConcatStr
  loc_ADBA63: FStStrNoPop var_A8
  loc_ADBA66: ILdRf var_8C
  loc_ADBA69: ConcatStr
  loc_ADBA6A: CVarStr var_B8
  loc_ADBA6D: PopAdLdVar
  loc_ADBA6E: FLdRfVar var_90
  loc_ADBA71: FLdPr Me
  loc_ADBA74: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ADBA79: FLdPr var_90
  loc_ADBA7C: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ADBA81: FFreeStr BuscaDetalleSubRubro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_ADBA90: FFree1Ad var_90
  loc_ADBA93: FFree1Var var_B8 = ""
  loc_ADBA96: FLdRfVar var_CC
  loc_ADBA99: FLdRfVar var_90
  loc_ADBA9C: FLdPr Me
  loc_ADBA9F: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ADBAA4: FLdPr var_90
  loc_ADBAA7:  = Me.RecordCount
  loc_ADBAAC: ILdRf var_CC
  loc_ADBAAF: LitI4 1
  loc_ADBAB4: EqI4
  loc_ADBAB5: FFree1Ad var_90
  loc_ADBAB8: BranchF loc_ADBB03
  loc_ADBABB: FLdRfVar var_B8
  loc_ADBABE: FLdRfVar var_D4
  loc_ADBAC1: LitVarStr var_C8, "DetaSubr"
  loc_ADBAC6: PopAdLdVar
  loc_ADBAC7: FLdRfVar var_D0
  loc_ADBACA: FLdRfVar var_90
  loc_ADBACD: FLdPr Me
  loc_ADBAD0: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ADBAD5: FLdPr var_90
  loc_ADBAD8:  = Me.Fields
  loc_ADBADD: FLdPr var_D0
  loc_ADBAE0: from_stack_2 = Me.Item(from_stack_1)
  loc_ADBAE5: FLdPr var_D4
  loc_ADBAE8:  = Me.Value
  loc_ADBAED: FLdRfVar var_B8
  loc_ADBAF0: CStrVarTmp
  loc_ADBAF1: FStStr var_88
  loc_ADBAF4: FFreeAd var_90 = "": var_D0 = ""
  loc_ADBAFD: FFree1Var var_B8 = ""
  loc_ADBB00: Branch loc_ADBB09
  loc_ADBB03: LitStr vbNullString
  loc_ADBB06: FStStrCopy var_88
  loc_ADBB09: FLdRfVar var_90
  loc_ADBB0C: FLdPr Me
  loc_ADBB0F: from_stack_1v = clssubrubro.global_4433856Get()
  loc_ADBB14: FLdPr var_90
  loc_ADBB17: Me.Close
  loc_ADBB1C: FFree1Ad var_90
  loc_ADBB1F: LitNothing
  loc_ADBB21: CastAd
  loc_ADBB24: FStAdFuncNoPop
  loc_ADBB27: FLdPr Me
  loc_ADBB2A: Call clssubrubro.global_4433856Set(from_stack_1v)
  loc_ADBB2F: FFree1Ad var_90
  loc_ADBB32: ExitProcCbHresult
End Function

Public Function ValidaEliminarRubro(CodiRamo, CodiRubr) 'A77E48
  'Data Table: 43A838
  loc_A77DE0: ZeroRetVal
  loc_A77DE2: LitStr "SELECT CodiRamo, CodiRubr FROM subrubro WHERE CodiRamo = "
  loc_A77DE5: FLdI2 CodiRamo
  loc_A77DE8: CStrUI1
  loc_A77DEA: FStStrNoPop var_8C
  loc_A77DED: ConcatStr
  loc_A77DEE: FStStrNoPop var_90
  loc_A77DF1: LitStr " AND CodiRubr = "
  loc_A77DF4: ConcatStr
  loc_A77DF5: FStStrNoPop ValidaEliminarRubro
  loc_A77DF8: ILdRf CodiRubr
  loc_A77DFB: CStrI4
  loc_A77DFD: FStStrNoPop var_98
  loc_A77E00: ConcatStr
  loc_A77E01: FStStrNoPop var_9C
  loc_A77E04: Call EjecutarRs2(from_stack_1v)
  loc_A77E09: FFreeStr var_8C = "": var_90 = "": ValidaEliminarRubro = "": var_98 = ""
  loc_A77E16: FLdRfVar var_A4
  loc_A77E19: FLdRfVar var_A0
  loc_A77E1C: FLdPr Me
  loc_A77E1F: from_stack_1v = clssubrubro.global_4433856Get()
  loc_A77E24: FLdPr var_A0
  loc_A77E27:  = Me.RecordCount
  loc_A77E2C: ILdRf var_A4
  loc_A77E2F: LitI4 0
  loc_A77E34: GtI4
  loc_A77E35: FFree1Ad var_A0
  loc_A77E38: BranchF loc_A77E41
  loc_A77E3B: LitStr "El Rubro Existe en SubRubro. Reintente..."
  loc_A77E3E: FStStrCopy var_88
  loc_A77E41: ExitProcCbHresult
End Function

Public Function ValidaEliminarServCome(CodiRamo, CodiRubr, CodiSubr) 'A104AC
  'Data Table: 43A838
  loc_A10478: ILdRf CodiSubr
  loc_A1047B: FStStrCopy var_8C
  loc_A1047E: ZeroRetVal
  loc_A10480: FLdRfVar ValidaEliminarServCome
  loc_A10483: ILdRf var_8C
  loc_A10486: ILdRf CodiRubr
  loc_A10489: FLdI2 CodiRamo
  loc_A1048C: FLdRfVar var_90
  loc_A1048F: NewIfNullPr clsservcome
  loc_A10492: from_stack_4v = clsservcome.ValidaEliminarSubRubro(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A10497: FLdZeroAd ValidaEliminarServCome
  loc_A1049A: FStStr var_88
  loc_A1049D: LitNothing
  loc_A1049F: CastAd
  loc_A104A2: FStAdFunc var_90
  loc_A104A5: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E54E8
  'Data Table: 43A838
  loc_9E54CC: ILdRf pError
  loc_9E54CF: FStAd var_88 
  loc_9E54D3: ILdRf pRecordset
  loc_9E54D6: FStAd var_8C 
  loc_9E54DA: FLdPr Me
  loc_9E54DD: RaiseEvent
  loc_9E54E5: ExitProcHresult
  loc_9E54E6: FLdRfVar var_3F14
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9B978
  'Data Table: 43A838
  loc_A9B8B8: ILdRf pRecordset
  loc_A9B8BB: FStAd var_88 
  loc_A9B8BF: ILdRf adReason
  loc_A9B8C2: FStR4 var_90
  loc_A9B8C5: ILdRf var_90
  loc_A9B8C8: LitI4 1
  loc_A9B8CD: EqI4
  loc_A9B8CE: BranchF loc_A9B8D4
  loc_A9B8D1: Branch loc_A9B967
  loc_A9B8D4: ILdRf var_90
  loc_A9B8D7: LitI4 9
  loc_A9B8DC: EqI4
  loc_A9B8DD: BranchF loc_A9B8E3
  loc_A9B8E0: Branch loc_A9B967
  loc_A9B8E3: ILdRf var_90
  loc_A9B8E6: LitI4 2
  loc_A9B8EB: EqI4
  loc_A9B8EC: BranchF loc_A9B8F2
  loc_A9B8EF: Branch loc_A9B967
  loc_A9B8F2: ILdRf var_90
  loc_A9B8F5: LitI4 &HB
  loc_A9B8FA: EqI4
  loc_A9B8FB: BranchF loc_A9B901
  loc_A9B8FE: Branch loc_A9B967
  loc_A9B901: ILdRf var_90
  loc_A9B904: LitI4 &HA
  loc_A9B909: EqI4
  loc_A9B90A: BranchF loc_A9B910
  loc_A9B90D: Branch loc_A9B967
  loc_A9B910: ILdRf var_90
  loc_A9B913: LitI4 7
  loc_A9B918: EqI4
  loc_A9B919: BranchF loc_A9B91F
  loc_A9B91C: Branch loc_A9B967
  loc_A9B91F: ILdRf var_90
  loc_A9B922: LitI4 8
  loc_A9B927: EqI4
  loc_A9B928: BranchF loc_A9B92E
  loc_A9B92B: Branch loc_A9B967
  loc_A9B92E: ILdRf var_90
  loc_A9B931: LitI4 5
  loc_A9B936: EqI4
  loc_A9B937: BranchF loc_A9B93D
  loc_A9B93A: Branch loc_A9B967
  loc_A9B93D: ILdRf var_90
  loc_A9B940: LitI4 6
  loc_A9B945: EqI4
  loc_A9B946: BranchF loc_A9B94C
  loc_A9B949: Branch loc_A9B967
  loc_A9B94C: ILdRf var_90
  loc_A9B94F: LitI4 4
  loc_A9B954: EqI4
  loc_A9B955: BranchF loc_A9B95B
  loc_A9B958: Branch loc_A9B967
  loc_A9B95B: ILdRf var_90
  loc_A9B95E: LitI4 3
  loc_A9B963: EqI4
  loc_A9B964: BranchF loc_A9B967
  loc_A9B967: FLdI2 var_8A
  loc_A9B96A: BranchF loc_A9B975
  loc_A9B96D: LitI4 4
  loc_A9B972: IStI4 adStatus
  loc_A9B975: ExitProcHresult
  loc_A9B976: LitStr "????"
End Sub

Private Function Proc_265_43_9F2094() '9F2094
  'Data Table: 43A838
  loc_9F2070: LitStr "Primary"
  loc_9F2073: FLdPr Me
  loc_9F2076: LateIdLdVar var_94 DispID_4 0
  loc_9F207D: CastAdVar Me
  loc_9F2081: FStAdFunc var_98
  loc_9F2084: FLdPr var_98
  loc_9F208C: FFree1Ad var_98
  loc_9F208F: FFree1Var var_94 = ""
  loc_9F2092: ExitProcHresult
End Function

Private Function Proc_265_44_9F20F0(arg_C) '9F20F0
  'Data Table: 43A838
  loc_9F20CC: ILdI4 arg_C
  loc_9F20CF: FStStrCopy var_88
  loc_9F20D2: ILdRf var_88
  loc_9F20D5: LitStr "Primary"
  loc_9F20D8: EqStr
  loc_9F20DA: BranchF loc_9F20EF
  loc_9F20DD: FLdRfVar var_8C
  loc_9F20E0: FLdPr Me
  loc_9F20E3: from_stack_1v = clssubrubro.global_4433856Get()
  loc_9F20E8: FLdZeroAd var_8C
  loc_9F20EB: IStAdFunc
  loc_9F20EF: ExitProcHresult
End Function

Public Function global_4433856Get() '43ACA4
  global_4433856Get = global_4433856
End Function

Public Sub global_4433856Put(Value) '43ACBE
  global_4433856 = Value
End Sub

Public Sub global_4433856Set(Value) '43ACD8
  global_4433856 = Value
End Sub

Public Function global_4433856Get() '43ACF2
  global_4433856Get = global_4433856
End Function

Public Sub global_4433856Put(Value) '43AD0C
  global_4433856 = Value
End Sub

Public Sub global_4433856Set(Value) '43AD26
  global_4433856 = Value
End Sub

Public Function global_4433856Get() '43AD40
  global_4433856Get = global_4433856
End Function

Public Sub global_4433856Put(Value) '43AD5A
  global_4433856 = Value
End Sub

Public Sub global_4433856Set(Value) '43AD74
  global_4433856 = Value
End Sub
