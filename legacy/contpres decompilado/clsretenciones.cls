VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsretenciones"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '416A84
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '416A93
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '416AA2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96DBAC
  'Data Table: 4167A8
  loc_96DB84: FLdRfVar var_88
  loc_96DB87: FLdPr Me
  loc_96DB8A: MemLdPr RsFrm
  loc_96DB8D:  = Me.RecordCount
  loc_96DB92: ILdRf var_88
  loc_96DB95: LitI4 0
  loc_96DB9A: GtI4
  loc_96DB9B: BranchF loc_96DBA9
  loc_96DB9E: FLdPr Me
  loc_96DBA1: MemLdPr RsFrm
  loc_96DBA4: Me.MoveFirst
  loc_96DBA9: ExitProcHresult
End Sub

Public Sub MoveLast() '96DAA4
  'Data Table: 4167A8
  loc_96DA7C: FLdRfVar var_88
  loc_96DA7F: FLdPr Me
  loc_96DA82: MemLdPr RsFrm
  loc_96DA85:  = Me.RecordCount
  loc_96DA8A: ILdRf var_88
  loc_96DA8D: LitI4 0
  loc_96DA92: GtI4
  loc_96DA93: BranchF loc_96DAA1
  loc_96DA96: FLdPr Me
  loc_96DA99: MemLdPr RsFrm
  loc_96DA9C: Me.MoveLast
  loc_96DAA1: ExitProcHresult
End Sub

Public Sub MoveNext() '9940A0
  'Data Table: 4167A8
  loc_994040: FLdRfVar var_86
  loc_994043: FLdPr Me
  loc_994046: MemLdPr RsFrm
  loc_994049:  = Me.EOF
  loc_99404E: FLdI2 var_86
  loc_994051: NotI4
  loc_994052: BranchF loc_994060
  loc_994055: FLdPr Me
  loc_994058: MemLdPr RsFrm
  loc_99405B: Me.MoveNext
  loc_994060: FLdRfVar var_86
  loc_994063: FLdPr Me
  loc_994066: MemLdPr RsFrm
  loc_994069:  = Me.EOF
  loc_99406E: FLdI2 var_86
  loc_994071: FLdRfVar var_8C
  loc_994074: FLdPr Me
  loc_994077: MemLdPr RsFrm
  loc_99407A:  = Me.RecordCount
  loc_99407F: ILdRf var_8C
  loc_994082: LitI4 0
  loc_994087: GtI4
  loc_994088: AndI4
  loc_994089: BranchF loc_99409C
  loc_99408C: ImpAdCallFPR4 Beep()
  loc_994091: FLdPr Me
  loc_994094: MemLdPr RsFrm
  loc_994097: Me.MoveLast
  loc_99409C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '94133C
  'Data Table: 4167A8
  loc_941330: FLdPr Me
  loc_941333: MemLdPr RsFrm
  loc_941336: Me.MoveNext
  loc_94133B: ExitProcHresult
End Sub

Public Sub MovePrevious() '994010
  'Data Table: 4167A8
  loc_993FB0: FLdRfVar var_86
  loc_993FB3: FLdPr Me
  loc_993FB6: MemLdPr RsFrm
  loc_993FB9:  = Me.BOF
  loc_993FBE: FLdI2 var_86
  loc_993FC1: NotI4
  loc_993FC2: BranchF loc_993FD0
  loc_993FC5: FLdPr Me
  loc_993FC8: MemLdPr RsFrm
  loc_993FCB: Me.MovePrevious
  loc_993FD0: FLdRfVar var_86
  loc_993FD3: FLdPr Me
  loc_993FD6: MemLdPr RsFrm
  loc_993FD9:  = Me.BOF
  loc_993FDE: FLdI2 var_86
  loc_993FE1: FLdRfVar var_8C
  loc_993FE4: FLdPr Me
  loc_993FE7: MemLdPr RsFrm
  loc_993FEA:  = Me.RecordCount
  loc_993FEF: ILdRf var_8C
  loc_993FF2: LitI4 0
  loc_993FF7: GtI4
  loc_993FF8: AndI4
  loc_993FF9: BranchF loc_99400C
  loc_993FFC: ImpAdCallFPR4 Beep()
  loc_994001: FLdPr Me
  loc_994004: MemLdPr RsFrm
  loc_994007: Me.MoveFirst
  loc_99400C: ExitProcHresult
End Sub

Public Property Get EOF() '95875C
  'Data Table: 4167A8
  loc_958740: FLdRfVar var_88
  loc_958743: FLdPr Me
  loc_958746: MemLdPr RsFrm
  loc_958749:  = Me.EOF
  loc_95874E: FLdI2 var_88
  loc_958751: FStI2 var_86
  loc_958754: ExitProcCbHresult
End Sub

Public Property Get BOF() '96325C
  'Data Table: 4167A8
  loc_963240: FLdRfVar var_88
  loc_963243: FLdPr Me
  loc_963246: MemLdPr RsFrm
  loc_963249:  = Me.BOF
  loc_96324E: FLdI2 var_88
  loc_963251: FStI2 var_86
  loc_963254: ExitProcCbHresult
  loc_96325A: ExitProcHresult
  loc_96325B: ExitProcHresult
End Sub

Public Sub Sort(sOrden) '947A04
  'Data Table: 4167A8
  loc_9479F4: ILdI4 sOrden
  loc_9479F7: FLdPr Me
  loc_9479FA: MemLdPr RsFrm
  loc_9479FD: Me.Sort = from_stack_1
  loc_947A02: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '969A60
  'Data Table: 4167A8
  loc_969A40: LitVar_Missing var_94
  loc_969A43: PopAdLdVar
  loc_969A44: LitI4 1
  loc_969A49: LitI4 0
  loc_969A4E: ILdI4 sCriterio
  loc_969A51: FLdPr Me
  loc_969A54: MemLdPr RsFrm
  loc_969A57: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_969A5C: ExitProcHresult
  loc_969A5D: FLdRfVar arg_1A00
End Sub

Public Sub Filter(sCriterio) '948308
  'Data Table: 4167A8
  loc_9482F4: ILdI4 sCriterio
  loc_9482F7: CVarStr var_94
  loc_9482FA: PopAdLdVar
  loc_9482FB: FLdPr Me
  loc_9482FE: MemLdPr RsFrm
  loc_948301: Me.Filter = from_stack_1
  loc_948306: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '963178
  'Data Table: 4167A8
  loc_96315C: FLdRfVar var_8C
  loc_96315F: FLdPr Me
  loc_963162: MemLdPr RsFrm
  loc_963165:  = Me.AbsolutePosition
  loc_96316A: ILdRf var_8C
  loc_96316D: FStR4 var_88
  loc_963170: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9585E0
  'Data Table: 4167A8
  loc_9585C4: FLdRfVar var_8C
  loc_9585C7: FLdPr Me
  loc_9585CA: MemLdPr RsFrm
  loc_9585CD:  = Me.RecordCount
  loc_9585D2: ILdRf var_8C
  loc_9585D5: FStR4 var_88
  loc_9585D8: ExitProcCbHresult
End Sub

Public Function AddNewRetenciones(PeriInfo, DetaRete, CodiCuco, CucuPers) 'A47C54
  'Data Table: 4167A8
  loc_A47A14: ILdRf DetaRete
  loc_A47A17: FStStrCopy var_8C
  loc_A47A1A: ILdRf CodiCuco
  loc_A47A1D: FStStrCopy var_90
  loc_A47A20: ILdRf CucuPers
  loc_A47A23: FStStrCopy AddNewRetenciones
  loc_A47A26: LitStr "START TRANSACTION;"
  loc_A47A29: Call EjecutarRsCls(from_stack_1v)
  loc_A47A2E: OnErrorGoto loc_A47C32
  loc_A47A31: LitStr "SELECT IFNULL(Max(CodiRete),0) + 1 CodiRete FROM retenciones WHERE PeriInfo = "
  loc_A47A34: FLdI2 PeriInfo
  loc_A47A37: CStrUI1
  loc_A47A39: FStStrNoPop var_9C
  loc_A47A3C: ConcatStr
  loc_A47A3D: FStStrNoPop var_A0
  loc_A47A40: Call EjecutarRsCls(from_stack_1v)
  loc_A47A45: FFreeStr var_9C = ""
  loc_A47A4C: FLdRfVar var_C8
  loc_A47A4F: FLdRfVar var_B8
  loc_A47A52: LitVarStr var_B4, "CodiRete"
  loc_A47A57: PopAdLdVar
  loc_A47A58: FLdRfVar var_A4
  loc_A47A5B: FLdPr Me
  loc_A47A5E: MemLdPr global_56
  loc_A47A61:  = Me.Fields
  loc_A47A66: FLdPr var_A4
  loc_A47A69: from_stack_2 = Me.Item(from_stack_1)
  loc_A47A6E: FLdPr var_B8
  loc_A47A71:  = Me.Value
  loc_A47A76: FLdRfVar var_C8
  loc_A47A79: CUI1Var
  loc_A47A7B: FStUI1 var_96
  loc_A47A7F: FFreeAd var_A4 = ""
  loc_A47A86: FFree1Var var_C8 = ""
  loc_A47A89: LitStr "INSERT INTO retenciones (PeriInfo,CodiRete,DetaRete,CodiCuco,CucuPers,AltaUsua)"
  loc_A47A8C: LitStr " VALUES ("
  loc_A47A8F: ConcatStr
  loc_A47A90: FStStrNoPop var_9C
  loc_A47A93: FLdI2 PeriInfo
  loc_A47A96: CStrUI1
  loc_A47A98: FStStrNoPop var_A0
  loc_A47A9B: ConcatStr
  loc_A47A9C: FStStrNoPop var_CC
  loc_A47A9F: LitStr ","
  loc_A47AA2: ConcatStr
  loc_A47AA3: FStStrNoPop var_D0
  loc_A47AA6: FLdUI1
  loc_A47AAA: CStrI2
  loc_A47AAC: FStStrNoPop var_D4
  loc_A47AAF: ConcatStr
  loc_A47AB0: FStStrNoPop var_D8
  loc_A47AB3: LitStr ",'"
  loc_A47AB6: ConcatStr
  loc_A47AB7: FStStrNoPop var_DC
  loc_A47ABA: ILdRf var_8C
  loc_A47ABD: ConcatStr
  loc_A47ABE: FStStrNoPop var_E0
  loc_A47AC1: LitStr "','"
  loc_A47AC4: ConcatStr
  loc_A47AC5: FStStrNoPop var_E4
  loc_A47AC8: ILdRf var_90
  loc_A47ACB: ConcatStr
  loc_A47ACC: FStStrNoPop var_E8
  loc_A47ACF: LitStr "','"
  loc_A47AD2: ConcatStr
  loc_A47AD3: FStStrNoPop var_EC
  loc_A47AD6: ILdRf AddNewRetenciones
  loc_A47AD9: ConcatStr
  loc_A47ADA: FStStrNoPop var_F0
  loc_A47ADD: LitStr "','"
  loc_A47AE0: ConcatStr
  loc_A47AE1: FStStrNoPop var_F4
  loc_A47AE4: ImpAdLdI4 MemVar_C3D03C
  loc_A47AE7: ConcatStr
  loc_A47AE8: FStStrNoPop var_F8
  loc_A47AEB: LitStr "');"
  loc_A47AEE: ConcatStr
  loc_A47AEF: FStStrNoPop var_FC
  loc_A47AF2: Call EjecutarRsCls(from_stack_1v)
  loc_A47AF7: FFreeStr var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_A47B18: LitStr "INSERT INTO deretenciones (PeriInfo,CodiRete,CodiDere,DetaDere,ImfiDere,AcumDere,AcubDere,AltaUsua)"
  loc_A47B1B: LitStr " VALUES ("
  loc_A47B1E: ConcatStr
  loc_A47B1F: FStStrNoPop var_9C
  loc_A47B22: FLdI2 PeriInfo
  loc_A47B25: CStrUI1
  loc_A47B27: FStStrNoPop var_A0
  loc_A47B2A: ConcatStr
  loc_A47B2B: FStStrNoPop var_CC
  loc_A47B2E: LitStr ","
  loc_A47B31: ConcatStr
  loc_A47B32: FStStrNoPop var_D0
  loc_A47B35: FLdUI1
  loc_A47B39: CStrI2
  loc_A47B3B: FStStrNoPop var_D4
  loc_A47B3E: ConcatStr
  loc_A47B3F: FStStrNoPop var_D8
  loc_A47B42: LitStr ",1,'"
  loc_A47B45: ConcatStr
  loc_A47B46: FStStrNoPop var_DC
  loc_A47B49: ILdRf var_8C
  loc_A47B4C: ConcatStr
  loc_A47B4D: FStStrNoPop var_E0
  loc_A47B50: LitStr "',0,'No Acumula','Acumulado bruto','"
  loc_A47B53: ConcatStr
  loc_A47B54: FStStrNoPop var_E4
  loc_A47B57: ImpAdLdI4 MemVar_C3D03C
  loc_A47B5A: ConcatStr
  loc_A47B5B: FStStrNoPop var_E8
  loc_A47B5E: LitStr "');"
  loc_A47B61: ConcatStr
  loc_A47B62: FStStrNoPop var_EC
  loc_A47B65: Call EjecutarRsCls(from_stack_1v)
  loc_A47B6A: FFreeStr var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A47B83: LitI2_Byte 0
  loc_A47B85: PopTmpLdAd2 var_FE
  loc_A47B88: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A47B8D: FStFPR8 var_128
  loc_A47B90: LitStr "INSERT INTO escalas (PeriInfo,FechEsca,CodiRete,CodiDere,CodiEsca,MiniEsca,MaxiEsca,ImfiEsca,AlicEsca,ImnoEsca,RemiEsca,BaseEsca)"
  loc_A47B93: LitStr " VALUES ("
  loc_A47B96: ConcatStr
  loc_A47B97: FStStrNoPop var_9C
  loc_A47B9A: FLdI2 PeriInfo
  loc_A47B9D: CStrUI1
  loc_A47B9F: FStStrNoPop var_A0
  loc_A47BA2: ConcatStr
  loc_A47BA3: FStStrNoPop var_CC
  loc_A47BA6: LitStr ","
  loc_A47BA9: ConcatStr
  loc_A47BAA: FStStrNoPop var_D0
  loc_A47BAD: LitI4 1
  loc_A47BB2: LitI4 1
  loc_A47BB7: LitVarStr var_110, "'yyyy-mm-dd'"
  loc_A47BBC: FStVarCopyObj var_120
  loc_A47BBF: FLdRfVar var_120
  loc_A47BC2: FLdFPR8 var_128
  loc_A47BC5: CVarDate var_C8
  loc_A47BC9: ImpAdCallI2 Format$(, )
  loc_A47BCE: FStStrNoPop var_D4
  loc_A47BD1: ConcatStr
  loc_A47BD2: FStStrNoPop var_D8
  loc_A47BD5: LitStr ","
  loc_A47BD8: ConcatStr
  loc_A47BD9: FStStrNoPop var_DC
  loc_A47BDC: FLdUI1
  loc_A47BE0: CStrI2
  loc_A47BE2: FStStrNoPop var_E0
  loc_A47BE5: ConcatStr
  loc_A47BE6: FStStrNoPop var_E4
  loc_A47BE9: LitStr ",1,1,0,99999999.99,0,0,0,0,1)"
  loc_A47BEC: ConcatStr
  loc_A47BED: FStStrNoPop var_E8
  loc_A47BF0: Call EjecutarRsCls(from_stack_1v)
  loc_A47BF5: FFreeStr var_9C = "": var_A0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A47C0C: FFreeVar var_C8 = ""
  loc_A47C13: LitStr "COMMIT;"
  loc_A47C16: Call EjecutarRsCls(from_stack_1v)
  loc_A47C1B: FLdUI1
  loc_A47C1F: FLdI2 PeriInfo
  loc_A47C22: Call EncontrarRetenciones(from_stack_1v, from_stack_2v)
  loc_A47C27: LitI2_Byte &HFF
  loc_A47C29: FStI2 var_86
  loc_A47C2C: ExitProcCbHresult
  loc_A47C32: LitStr "ROLLBACK;"
  loc_A47C35: Call EjecutarRsCls(from_stack_1v)
  loc_A47C3A: LitI4 0
  loc_A47C3F: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A47C42: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A47C47: LitI2_Byte 0
  loc_A47C49: FStI2 var_86
  loc_A47C4C: ExitProcCbHresult
End Function

Public Function AddNewDeretenciones(PeriInfo, CodiRete, DetaDere, PregDere, ImfiDere, AcumDere, AcubDere) 'A6218C
  'Data Table: 4167A8
  loc_A61EE4: ILdRf DetaDere
  loc_A61EE7: FStStrCopy var_8C
  loc_A61EEA: ILdRf AcumDere
  loc_A61EED: FStStrCopy var_90
  loc_A61EF0: ILdRf AcubDere
  loc_A61EF3: FStStrCopy AddNewDeretenciones
  loc_A61EF6: LitStr "START TRANSACTION;"
  loc_A61EF9: Call EjecutarRsCls(from_stack_1v)
  loc_A61EFE: OnErrorGoto loc_A62170
  loc_A61F01: LitStr "SELECT IFNULL(Max(CodiDere),0) + 1 CodiDere"
  loc_A61F04: LitStr " FROM deretenciones"
  loc_A61F07: ConcatStr
  loc_A61F08: FStStrNoPop var_9C
  loc_A61F0B: LitStr " WHERE PeriInfo = "
  loc_A61F0E: ConcatStr
  loc_A61F0F: FStStrNoPop var_A0
  loc_A61F12: FLdI2 PeriInfo
  loc_A61F15: CStrUI1
  loc_A61F17: FStStrNoPop var_A4
  loc_A61F1A: ConcatStr
  loc_A61F1B: FStStrNoPop var_A8
  loc_A61F1E: LitStr " AND CodiRete = "
  loc_A61F21: ConcatStr
  loc_A61F22: FStStrNoPop var_AC
  loc_A61F25: FLdUI1
  loc_A61F29: CStrI2
  loc_A61F2B: FStStrNoPop var_B0
  loc_A61F2E: ConcatStr
  loc_A61F2F: FStStrNoPop var_B4
  loc_A61F32: Call EjecutarRsCls(from_stack_1v)
  loc_A61F37: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A61F48: FLdRfVar var_DC
  loc_A61F4B: FLdRfVar var_CC
  loc_A61F4E: LitVarStr var_C8, "CodiDere"
  loc_A61F53: PopAdLdVar
  loc_A61F54: FLdRfVar var_B8
  loc_A61F57: FLdPr Me
  loc_A61F5A: MemLdPr global_56
  loc_A61F5D:  = Me.Fields
  loc_A61F62: FLdPr var_B8
  loc_A61F65: from_stack_2 = Me.Item(from_stack_1)
  loc_A61F6A: FLdPr var_CC
  loc_A61F6D:  = Me.Value
  loc_A61F72: FLdRfVar var_DC
  loc_A61F75: CUI1Var
  loc_A61F77: FStUI1 var_96
  loc_A61F7B: FFreeAd var_B8 = ""
  loc_A61F82: FFree1Var var_DC = ""
  loc_A61F85: LitStr "INSERT INTO deretenciones (PeriInfo,CodiRete,CodiDere,DetaDere,PregDere,ImfiDere,AcumDere,AcubDere,AltaUsua)"
  loc_A61F88: LitStr " VALUES ("
  loc_A61F8B: ConcatStr
  loc_A61F8C: FStStrNoPop var_9C
  loc_A61F8F: FLdI2 PeriInfo
  loc_A61F92: CStrUI1
  loc_A61F94: FStStrNoPop var_A0
  loc_A61F97: ConcatStr
  loc_A61F98: FStStrNoPop var_A4
  loc_A61F9B: LitStr ","
  loc_A61F9E: ConcatStr
  loc_A61F9F: FStStrNoPop var_A8
  loc_A61FA2: FLdUI1
  loc_A61FA6: CStrI2
  loc_A61FA8: FStStrNoPop var_AC
  loc_A61FAB: ConcatStr
  loc_A61FAC: FStStrNoPop var_B0
  loc_A61FAF: LitStr ","
  loc_A61FB2: ConcatStr
  loc_A61FB3: FStStrNoPop var_B4
  loc_A61FB6: FLdUI1
  loc_A61FBA: CStrI2
  loc_A61FBC: FStStrNoPop var_E0
  loc_A61FBF: ConcatStr
  loc_A61FC0: FStStrNoPop var_E4
  loc_A61FC3: LitStr ",'"
  loc_A61FC6: ConcatStr
  loc_A61FC7: FStStrNoPop var_E8
  loc_A61FCA: ILdRf var_8C
  loc_A61FCD: ConcatStr
  loc_A61FCE: FStStrNoPop var_EC
  loc_A61FD1: LitStr "',"
  loc_A61FD4: ConcatStr
  loc_A61FD5: FStStrNoPop var_F0
  loc_A61FD8: FLdUI1
  loc_A61FDC: CStrI2
  loc_A61FDE: FStStrNoPop var_F4
  loc_A61FE1: ConcatStr
  loc_A61FE2: FStStrNoPop var_F8
  loc_A61FE5: LitStr ","
  loc_A61FE8: ConcatStr
  loc_A61FE9: FStStrNoPop var_FC
  loc_A61FEC: FLdUI1
  loc_A61FF0: CStrI2
  loc_A61FF2: FStStrNoPop var_100
  loc_A61FF5: ConcatStr
  loc_A61FF6: FStStrNoPop var_104
  loc_A61FF9: LitStr ",'"
  loc_A61FFC: ConcatStr
  loc_A61FFD: FStStrNoPop var_108
  loc_A62000: ILdRf var_90
  loc_A62003: ConcatStr
  loc_A62004: FStStrNoPop var_10C
  loc_A62007: LitStr "','"
  loc_A6200A: ConcatStr
  loc_A6200B: FStStrNoPop var_110
  loc_A6200E: ILdRf AddNewDeretenciones
  loc_A62011: ConcatStr
  loc_A62012: FStStrNoPop var_114
  loc_A62015: LitStr "','"
  loc_A62018: ConcatStr
  loc_A62019: FStStrNoPop var_118
  loc_A6201C: ImpAdLdI4 MemVar_C3D03C
  loc_A6201F: ConcatStr
  loc_A62020: FStStrNoPop var_11C
  loc_A62023: LitStr "');"
  loc_A62026: ConcatStr
  loc_A62027: FStStrNoPop var_120
  loc_A6202A: Call EjecutarRsCls(from_stack_1v)
  loc_A6202F: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_A62062: LitI2_Byte 0
  loc_A62064: PopTmpLdAd2 var_122
  loc_A62067: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A6206C: FStFPR8 var_24C
  loc_A6206F: LitI4 1
  loc_A62074: LitI4 1
  loc_A62079: LitVarStr var_134, "'yyyy-mm-dd'"
  loc_A6207E: FStVarCopyObj var_144
  loc_A62081: FLdRfVar var_144
  loc_A62084: FLdFPR8 var_24C
  loc_A62087: CVarDate var_DC
  loc_A6208B: ImpAdCallI2 Format$(, )
  loc_A62090: FStStr var_B4
  loc_A62093: LitStr "INSERT INTO escalas (PeriInfo,FechEsca,CodiRete,CodiDere,CodiEsca,MiniEsca,MaxiEsca,ImfiEsca,AlicEsca,ImnoEsca,RemiEsca,BaseEsca)"
  loc_A62096: LitStr " VALUES ("
  loc_A62099: ConcatStr
  loc_A6209A: FStStrNoPop var_9C
  loc_A6209D: FLdI2 PeriInfo
  loc_A620A0: CStrUI1
  loc_A620A2: FStStrNoPop var_A0
  loc_A620A5: ConcatStr
  loc_A620A6: FStStrNoPop var_A4
  loc_A620A9: LitStr ","
  loc_A620AC: ConcatStr
  loc_A620AD: CVarStr var_194
  loc_A620B0: LitStr "'"
  loc_A620B3: ImpAdLdI2 MemVar_C3D064
  loc_A620B6: CStrUI1
  loc_A620B8: FStStrNoPop var_A8
  loc_A620BB: ConcatStr
  loc_A620BC: FStStrNoPop var_AC
  loc_A620BF: LitStr "-01-01'"
  loc_A620C2: ConcatStr
  loc_A620C3: CVarStr var_174
  loc_A620C6: FLdZeroAd var_B4
  loc_A620C9: CVarStr var_164
  loc_A620CC: FLdUI1
  loc_A620D0: CI2UI1
  loc_A620D2: LitI2_Byte 0
  loc_A620D4: EqI2
  loc_A620D5: CVarBoolI2 var_154
  loc_A620D9: FLdRfVar var_184
  loc_A620DC: ImpAdCallFPR4  = IIf(, , )
  loc_A620E1: FLdRfVar var_184
  loc_A620E4: ConcatVar var_1A4
  loc_A620E8: LitVarStr var_1B4, ","
  loc_A620ED: ConcatVar var_1C4
  loc_A620F1: FLdUI1
  loc_A620F5: CVarUI1
  loc_A620F9: ConcatVar var_1E4
  loc_A620FD: LitVarStr var_1F4, ","
  loc_A62102: ConcatVar var_204
  loc_A62106: FLdUI1
  loc_A6210A: CVarUI1
  loc_A6210E: ConcatVar var_224
  loc_A62112: LitVarStr var_234, ",1,0,99999999.99,0,0,0,0,1)"
  loc_A62117: ConcatVar var_244
  loc_A6211B: CStrVarVal var_B0
  loc_A6211F: Call EjecutarRsCls(from_stack_1v)
  loc_A62124: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A62135: FFreeVar var_DC = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_224 = ""
  loc_A62152: LitStr "COMMIT;"
  loc_A62155: Call EjecutarRsCls(from_stack_1v)
  loc_A6215A: FLdUI1
  loc_A6215E: FLdUI1
  loc_A62162: FLdI2 PeriInfo
  loc_A62165: Call EncontrarDeretenciones(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A6216A: ExitProcCbHresult
  loc_A62170: LitStr "ROLLBACK;"
  loc_A62173: Call EjecutarRsCls(from_stack_1v)
  loc_A62178: LitI4 0
  loc_A6217D: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A62180: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A62185: ExitProcCbHresult
  loc_A6218B: CStrVarTmp
End Function

Public Function AddNewRetexProv(CucuPers, PeriInfo, CodiRete, CodiDere, NuinRexp, FeacRexp, FedeRexp, FeheRexp, PoexRexp, ObseRexp) 'A39EA8
  'Data Table: 4167A8
  loc_A39CF8: ILdRf CucuPers
  loc_A39CFB: FStStrCopy var_8C
  loc_A39CFE: ILdRf NuinRexp
  loc_A39D01: FStStrCopy var_90
  loc_A39D04: ILdRf FeacRexp
  loc_A39D07: FStStrCopy AddNewRetexProv
  loc_A39D0A: ILdRf FedeRexp
  loc_A39D0D: FStStrCopy var_98
  loc_A39D10: ILdRf FeheRexp
  loc_A39D13: FStStrCopy var_9C
  loc_A39D16: ILdRf PoexRexp
  loc_A39D19: FStStrCopy var_A0
  loc_A39D1C: ILdRf ObseRexp
  loc_A39D1F: FStStrCopy var_A4
  loc_A39D22: LitStr "START TRANSACTION;"
  loc_A39D25: Call EjecutarRsCls(from_stack_1v)
  loc_A39D2A: OnErrorGoto loc_A39E8C
  loc_A39D2D: LitI4 0
  loc_A39D32: LitI4 2
  loc_A39D37: FLdRfVar var_A8
  loc_A39D3A: Redim
  loc_A39D44: FLdRfVar AddNewRetexProv
  loc_A39D47: CVarRef
  loc_A39D4C: ParmAry1St
  loc_A39D52: FLdRfVar var_98
  loc_A39D55: CVarRef
  loc_A39D5A: ParmAry1St
  loc_A39D60: FLdRfVar var_9C
  loc_A39D63: CVarRef
  loc_A39D68: ParmAry1St
  loc_A39D6E: FLdRfVar var_A8
  loc_A39D71: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_A39D76: FLdRfVar var_A8
  loc_A39D79: Erase
  loc_A39D7A: LitStr "REPLACE INTO contpres.retexprov (CucuPers,PeriInfo,CodiRete,CodiDere,NuinRexp,FeacRexp,FedeRexp,FeheRexp,PoexRexp,ObseRexp,AltaUsua)"
  loc_A39D7D: LitStr " Values ('"
  loc_A39D80: ConcatStr
  loc_A39D81: FStStrNoPop var_DC
  loc_A39D84: ILdRf var_8C
  loc_A39D87: ConcatStr
  loc_A39D88: FStStrNoPop var_E0
  loc_A39D8B: LitStr "','"
  loc_A39D8E: ConcatStr
  loc_A39D8F: FStStrNoPop var_E4
  loc_A39D92: FLdI2 PeriInfo
  loc_A39D95: CStrUI1
  loc_A39D97: FStStrNoPop var_E8
  loc_A39D9A: ConcatStr
  loc_A39D9B: FStStrNoPop var_EC
  loc_A39D9E: LitStr "','"
  loc_A39DA1: ConcatStr
  loc_A39DA2: FStStrNoPop var_F0
  loc_A39DA5: FLdUI1
  loc_A39DA9: CStrI2
  loc_A39DAB: FStStrNoPop var_F4
  loc_A39DAE: ConcatStr
  loc_A39DAF: FStStrNoPop var_F8
  loc_A39DB2: LitStr "','"
  loc_A39DB5: ConcatStr
  loc_A39DB6: FStStrNoPop var_FC
  loc_A39DB9: FLdUI1
  loc_A39DBD: CStrI2
  loc_A39DBF: FStStrNoPop var_100
  loc_A39DC2: ConcatStr
  loc_A39DC3: FStStrNoPop var_104
  loc_A39DC6: LitStr "','"
  loc_A39DC9: ConcatStr
  loc_A39DCA: FStStrNoPop var_108
  loc_A39DCD: ILdRf var_90
  loc_A39DD0: ConcatStr
  loc_A39DD1: FStStrNoPop var_10C
  loc_A39DD4: LitStr "',"
  loc_A39DD7: ConcatStr
  loc_A39DD8: FStStrNoPop var_110
  loc_A39DDB: ILdRf AddNewRetexProv
  loc_A39DDE: ConcatStr
  loc_A39DDF: FStStrNoPop var_114
  loc_A39DE2: LitStr ","
  loc_A39DE5: ConcatStr
  loc_A39DE6: FStStrNoPop var_118
  loc_A39DE9: ILdRf var_98
  loc_A39DEC: ConcatStr
  loc_A39DED: FStStrNoPop var_11C
  loc_A39DF0: LitStr ","
  loc_A39DF3: ConcatStr
  loc_A39DF4: FStStrNoPop var_120
  loc_A39DF7: ILdRf var_9C
  loc_A39DFA: ConcatStr
  loc_A39DFB: FStStrNoPop var_124
  loc_A39DFE: LitStr ","
  loc_A39E01: ConcatStr
  loc_A39E02: FStStrNoPop var_128
  loc_A39E05: ILdRf var_A0
  loc_A39E08: ConcatStr
  loc_A39E09: FStStrNoPop var_12C
  loc_A39E0C: LitStr ",'"
  loc_A39E0F: ConcatStr
  loc_A39E10: FStStrNoPop var_130
  loc_A39E13: ILdRf var_A4
  loc_A39E16: ConcatStr
  loc_A39E17: FStStrNoPop var_134
  loc_A39E1A: LitStr "','"
  loc_A39E1D: ConcatStr
  loc_A39E1E: FStStrNoPop var_138
  loc_A39E21: ImpAdLdI4 MemVar_C3D03C
  loc_A39E24: ConcatStr
  loc_A39E25: FStStrNoPop var_13C
  loc_A39E28: LitStr "');"
  loc_A39E2B: ConcatStr
  loc_A39E2C: FStStrNoPop var_140
  loc_A39E2F: Call EjecutarRsCls(from_stack_1v)
  loc_A39E34: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_A39E6B: LitStr "COMMIT;"
  loc_A39E6E: Call EjecutarRsCls(from_stack_1v)
  loc_A39E73: FLdUI1
  loc_A39E77: FLdUI1
  loc_A39E7B: FLdRfVar PeriInfo
  loc_A39E7E: ILdRf var_8C
  loc_A39E81: Call EncontrarRetexProv(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A39E86: ExitProcCbHresult
  loc_A39E8C: LitStr "ROLLBACK;"
  loc_A39E8F: Call EjecutarRsCls(from_stack_1v)
  loc_A39E94: LitI4 0
  loc_A39E99: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A39E9C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A39EA1: ExitProcCbHresult
End Function

Public Sub ModificarRetenciones(DetaRete, CodiCuco, CucuPers) 'A25248
  'Data Table: 4167A8
  loc_A250D0: ILdRf DetaRete
  loc_A250D3: FStStrCopy var_88
  loc_A250D6: ILdRf CodiCuco
  loc_A250D9: FStStrCopy var_8C
  loc_A250DC: ILdRf CucuPers
  loc_A250DF: FStStrCopy var_90
  loc_A250E2: LitStr "UPDATE retenciones"
  loc_A250E5: LitStr " SET DetaRete='"
  loc_A250E8: ConcatStr
  loc_A250E9: FStStrNoPop var_94
  loc_A250EC: ILdRf var_88
  loc_A250EF: ConcatStr
  loc_A250F0: FStStrNoPop var_98
  loc_A250F3: LitStr "',CodiCuco='"
  loc_A250F6: ConcatStr
  loc_A250F7: FStStrNoPop var_9C
  loc_A250FA: ILdRf var_8C
  loc_A250FD: ConcatStr
  loc_A250FE: FStStrNoPop var_A0
  loc_A25101: LitStr "',CucuPers='"
  loc_A25104: ConcatStr
  loc_A25105: FStStrNoPop var_A4
  loc_A25108: ILdRf var_90
  loc_A2510B: ConcatStr
  loc_A2510C: FStStrNoPop var_A8
  loc_A2510F: LitStr "',ModiUsua='"
  loc_A25112: ConcatStr
  loc_A25113: FStStrNoPop var_AC
  loc_A25116: ImpAdLdI4 MemVar_C3D03C
  loc_A25119: ConcatStr
  loc_A2511A: FStStrNoPop var_B0
  loc_A2511D: LitStr "',ModiFeho=Now()"
  loc_A25120: ConcatStr
  loc_A25121: FStStrNoPop var_B4
  loc_A25124: LitStr " WHERE PeriInfo="
  loc_A25127: ConcatStr
  loc_A25128: CVarStr var_EC
  loc_A2512B: FLdRfVar var_DC
  loc_A2512E: FLdRfVar var_CC
  loc_A25131: LitVarStr var_C8, "PeriInfo"
  loc_A25136: PopAdLdVar
  loc_A25137: FLdRfVar var_B8
  loc_A2513A: FLdPr Me
  loc_A2513D: MemLdPr RsFrm
  loc_A25140:  = Me.Fields
  loc_A25145: FLdPr var_B8
  loc_A25148: from_stack_2 = Me.Item(from_stack_1)
  loc_A2514D: FLdPr var_CC
  loc_A25150:  = Me.Value
  loc_A25155: FLdRfVar var_DC
  loc_A25158: ConcatVar var_FC
  loc_A2515C: LitVarStr var_10C, " AND CodiRete="
  loc_A25161: ConcatVar var_11C
  loc_A25165: FLdRfVar var_144
  loc_A25168: FLdRfVar var_134
  loc_A2516B: LitVarStr var_130, "CodiRete"
  loc_A25170: PopAdLdVar
  loc_A25171: FLdRfVar var_120
  loc_A25174: FLdPr Me
  loc_A25177: MemLdPr RsFrm
  loc_A2517A:  = Me.Fields
  loc_A2517F: FLdPr var_120
  loc_A25182: from_stack_2 = Me.Item(from_stack_1)
  loc_A25187: FLdPr var_134
  loc_A2518A:  = Me.Value
  loc_A2518F: FLdRfVar var_144
  loc_A25192: ConcatVar var_154
  loc_A25196: CStrVarVal var_158
  loc_A2519A: Call EjecutarRsCls(from_stack_1v)
  loc_A2519F: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A251B6: FFreeAd var_B8 = "": var_CC = "": var_120 = ""
  loc_A251C1: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = ""
  loc_A251D0: FLdRfVar var_DC
  loc_A251D3: FLdRfVar var_CC
  loc_A251D6: LitVarStr var_C8, "PeriInfo"
  loc_A251DB: PopAdLdVar
  loc_A251DC: FLdRfVar var_B8
  loc_A251DF: FLdPr Me
  loc_A251E2: MemLdPr RsFrm
  loc_A251E5:  = Me.Fields
  loc_A251EA: FLdPr var_B8
  loc_A251ED: from_stack_2 = Me.Item(from_stack_1)
  loc_A251F2: FLdPr var_CC
  loc_A251F5:  = Me.Value
  loc_A251FA: FLdRfVar var_EC
  loc_A251FD: FLdRfVar var_134
  loc_A25200: LitVarStr var_10C, "CodiRete"
  loc_A25205: PopAdLdVar
  loc_A25206: FLdRfVar var_120
  loc_A25209: FLdPr Me
  loc_A2520C: MemLdPr RsFrm
  loc_A2520F:  = Me.Fields
  loc_A25214: FLdPr var_120
  loc_A25217: from_stack_2 = Me.Item(from_stack_1)
  loc_A2521C: FLdPr var_134
  loc_A2521F:  = Me.Value
  loc_A25224: FLdRfVar var_EC
  loc_A25227: CUI1Var
  loc_A25229: FLdRfVar var_DC
  loc_A2522C: CI2Var
  loc_A2522D: Call EncontrarRetenciones(from_stack_1v, from_stack_2v)
  loc_A25232: FFreeAd var_B8 = "": var_120 = "": var_CC = ""
  loc_A2523D: FFreeVar var_DC = ""
  loc_A25244: ExitProcHresult
  loc_A25245: DOC
End Sub

Public Sub ModificarDeretenciones(DetaDere, PregDere, ImfiDere, AcumDere, AcubDere) 'A6B6E8
  'Data Table: 4167A8
  loc_A6B3D0: ILdRf DetaDere
  loc_A6B3D3: FStStrCopy var_88
  loc_A6B3D6: ILdRf AcumDere
  loc_A6B3D9: FStStrCopy var_8C
  loc_A6B3DC: ILdRf AcubDere
  loc_A6B3DF: FStStrCopy var_90
  loc_A6B3E2: LitStr "UPDATE deretenciones SET DetaDere='"
  loc_A6B3E5: ILdRf var_88
  loc_A6B3E8: ConcatStr
  loc_A6B3E9: FStStrNoPop var_94
  loc_A6B3EC: LitStr "',PregDere="
  loc_A6B3EF: ConcatStr
  loc_A6B3F0: FStStrNoPop var_98
  loc_A6B3F3: FLdUI1
  loc_A6B3F7: CStrI2
  loc_A6B3F9: FStStrNoPop var_9C
  loc_A6B3FC: ConcatStr
  loc_A6B3FD: FStStrNoPop var_A0
  loc_A6B400: LitStr ",ImfiDere="
  loc_A6B403: ConcatStr
  loc_A6B404: FStStrNoPop var_A4
  loc_A6B407: FLdUI1
  loc_A6B40B: CStrI2
  loc_A6B40D: FStStrNoPop var_A8
  loc_A6B410: ConcatStr
  loc_A6B411: FStStrNoPop var_AC
  loc_A6B414: LitStr ",AcumDere='"
  loc_A6B417: ConcatStr
  loc_A6B418: FStStrNoPop var_B0
  loc_A6B41B: ILdRf var_8C
  loc_A6B41E: ConcatStr
  loc_A6B41F: FStStrNoPop var_B4
  loc_A6B422: LitStr "',AcubDere='"
  loc_A6B425: ConcatStr
  loc_A6B426: FStStrNoPop var_B8
  loc_A6B429: ILdRf var_90
  loc_A6B42C: ConcatStr
  loc_A6B42D: FStStrNoPop var_BC
  loc_A6B430: LitStr "',ModiUsua='"
  loc_A6B433: ConcatStr
  loc_A6B434: FStStrNoPop var_C0
  loc_A6B437: ImpAdLdI4 MemVar_C3D03C
  loc_A6B43A: ConcatStr
  loc_A6B43B: FStStrNoPop var_C4
  loc_A6B43E: LitStr "',ModiFeho=Now()"
  loc_A6B441: ConcatStr
  loc_A6B442: FStStrNoPop var_C8
  loc_A6B445: LitStr " WHERE PeriInfo="
  loc_A6B448: ConcatStr
  loc_A6B449: CVarStr var_100
  loc_A6B44C: FLdRfVar var_F0
  loc_A6B44F: FLdRfVar var_E0
  loc_A6B452: LitVarStr var_DC, "PeriInfo"
  loc_A6B457: PopAdLdVar
  loc_A6B458: FLdRfVar var_CC
  loc_A6B45B: FLdPr Me
  loc_A6B45E: MemLdPr RsFrm
  loc_A6B461:  = Me.Fields
  loc_A6B466: FLdPr var_CC
  loc_A6B469: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B46E: FLdPr var_E0
  loc_A6B471:  = Me.Value
  loc_A6B476: FLdRfVar var_F0
  loc_A6B479: ConcatVar var_110
  loc_A6B47D: LitVarStr var_120, " AND CodiRete="
  loc_A6B482: ConcatVar var_130
  loc_A6B486: FLdRfVar var_158
  loc_A6B489: FLdRfVar var_148
  loc_A6B48C: LitVarStr var_144, "CodiRete"
  loc_A6B491: PopAdLdVar
  loc_A6B492: FLdRfVar var_134
  loc_A6B495: FLdPr Me
  loc_A6B498: MemLdPr RsFrm
  loc_A6B49B:  = Me.Fields
  loc_A6B4A0: FLdPr var_134
  loc_A6B4A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B4A8: FLdPr var_148
  loc_A6B4AB:  = Me.Value
  loc_A6B4B0: FLdRfVar var_158
  loc_A6B4B3: ConcatVar var_168
  loc_A6B4B7: LitVarStr var_178, " AND CodiDere = "
  loc_A6B4BC: ConcatVar var_188
  loc_A6B4C0: FLdRfVar var_1B0
  loc_A6B4C3: FLdRfVar var_1A0
  loc_A6B4C6: LitVarStr var_19C, "CodiDere"
  loc_A6B4CB: PopAdLdVar
  loc_A6B4CC: FLdRfVar var_18C
  loc_A6B4CF: FLdPr Me
  loc_A6B4D2: MemLdPr RsFrm
  loc_A6B4D5:  = Me.Fields
  loc_A6B4DA: FLdPr var_18C
  loc_A6B4DD: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B4E2: FLdPr var_1A0
  loc_A6B4E5:  = Me.Value
  loc_A6B4EA: FLdRfVar var_1B0
  loc_A6B4ED: ConcatVar var_1C0
  loc_A6B4F1: CStrVarVal var_1C4
  loc_A6B4F5: Call EjecutarRsCls(from_stack_1v)
  loc_A6B4FA: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A6B51B: FFreeAd var_CC = "": var_E0 = "": var_134 = "": var_148 = "": var_18C = ""
  loc_A6B52A: FFreeVar var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_158 = "": var_168 = "": var_188 = "": var_1B0 = ""
  loc_A6B53F: FLdUI1
  loc_A6B543: CI2UI1
  loc_A6B545: LitI2_Byte 1
  loc_A6B547: EqI2
  loc_A6B548: BranchF loc_A6B63C
  loc_A6B54B: LitStr "UPDATE ignore escalas SET FechEsca = '"
  loc_A6B54E: ImpAdLdI2 MemVar_C3D064
  loc_A6B551: CStrUI1
  loc_A6B553: FStStrNoPop var_94
  loc_A6B556: ConcatStr
  loc_A6B557: FStStrNoPop var_98
  loc_A6B55A: LitStr "-01-01' WHERE PeriInfo="
  loc_A6B55D: ConcatStr
  loc_A6B55E: CVarStr var_100
  loc_A6B561: FLdRfVar var_F0
  loc_A6B564: FLdRfVar var_E0
  loc_A6B567: LitVarStr var_DC, "PeriInfo"
  loc_A6B56C: PopAdLdVar
  loc_A6B56D: FLdRfVar var_CC
  loc_A6B570: FLdPr Me
  loc_A6B573: MemLdPr RsFrm
  loc_A6B576:  = Me.Fields
  loc_A6B57B: FLdPr var_CC
  loc_A6B57E: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B583: FLdPr var_E0
  loc_A6B586:  = Me.Value
  loc_A6B58B: FLdRfVar var_F0
  loc_A6B58E: ConcatVar var_110
  loc_A6B592: LitVarStr var_120, " AND CodiRete="
  loc_A6B597: ConcatVar var_130
  loc_A6B59B: FLdRfVar var_158
  loc_A6B59E: FLdRfVar var_148
  loc_A6B5A1: LitVarStr var_144, "CodiRete"
  loc_A6B5A6: PopAdLdVar
  loc_A6B5A7: FLdRfVar var_134
  loc_A6B5AA: FLdPr Me
  loc_A6B5AD: MemLdPr RsFrm
  loc_A6B5B0:  = Me.Fields
  loc_A6B5B5: FLdPr var_134
  loc_A6B5B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B5BD: FLdPr var_148
  loc_A6B5C0:  = Me.Value
  loc_A6B5C5: FLdRfVar var_158
  loc_A6B5C8: ConcatVar var_168
  loc_A6B5CC: LitVarStr var_178, " AND CodiDere = "
  loc_A6B5D1: ConcatVar var_188
  loc_A6B5D5: FLdRfVar var_1B0
  loc_A6B5D8: FLdRfVar var_1A0
  loc_A6B5DB: LitVarStr var_19C, "CodiDere"
  loc_A6B5E0: PopAdLdVar
  loc_A6B5E1: FLdRfVar var_18C
  loc_A6B5E4: FLdPr Me
  loc_A6B5E7: MemLdPr RsFrm
  loc_A6B5EA:  = Me.Fields
  loc_A6B5EF: FLdPr var_18C
  loc_A6B5F2: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B5F7: FLdPr var_1A0
  loc_A6B5FA:  = Me.Value
  loc_A6B5FF: FLdRfVar var_1B0
  loc_A6B602: ConcatVar var_1C0
  loc_A6B606: CStrVarVal var_9C
  loc_A6B60A: Call EjecutarRsCls(from_stack_1v)
  loc_A6B60F: FFreeStr var_94 = "": var_98 = ""
  loc_A6B618: FFreeAd var_CC = "": var_E0 = "": var_134 = "": var_148 = "": var_18C = ""
  loc_A6B627: FFreeVar var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_158 = "": var_168 = "": var_188 = "": var_1B0 = ""
  loc_A6B63C: FLdRfVar var_F0
  loc_A6B63F: FLdRfVar var_E0
  loc_A6B642: LitVarStr var_DC, "PeriInfo"
  loc_A6B647: PopAdLdVar
  loc_A6B648: FLdRfVar var_CC
  loc_A6B64B: FLdPr Me
  loc_A6B64E: MemLdPr RsFrm
  loc_A6B651:  = Me.Fields
  loc_A6B656: FLdPr var_CC
  loc_A6B659: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B65E: FLdPr var_E0
  loc_A6B661:  = Me.Value
  loc_A6B666: FLdRfVar var_100
  loc_A6B669: FLdRfVar var_148
  loc_A6B66C: LitVarStr var_120, "CodiRete"
  loc_A6B671: PopAdLdVar
  loc_A6B672: FLdRfVar var_134
  loc_A6B675: FLdPr Me
  loc_A6B678: MemLdPr RsFrm
  loc_A6B67B:  = Me.Fields
  loc_A6B680: FLdPr var_134
  loc_A6B683: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B688: FLdPr var_148
  loc_A6B68B:  = Me.Value
  loc_A6B690: FLdRfVar var_110
  loc_A6B693: FLdRfVar var_1A0
  loc_A6B696: LitVarStr var_144, "CodiDere"
  loc_A6B69B: PopAdLdVar
  loc_A6B69C: FLdRfVar var_18C
  loc_A6B69F: FLdPr Me
  loc_A6B6A2: MemLdPr RsFrm
  loc_A6B6A5:  = Me.Fields
  loc_A6B6AA: FLdPr var_18C
  loc_A6B6AD: from_stack_2 = Me.Item(from_stack_1)
  loc_A6B6B2: FLdPr var_1A0
  loc_A6B6B5:  = Me.Value
  loc_A6B6BA: FLdRfVar var_110
  loc_A6B6BD: CUI1Var
  loc_A6B6BF: FLdRfVar var_100
  loc_A6B6C2: CUI1Var
  loc_A6B6C4: FLdRfVar var_F0
  loc_A6B6C7: CI2Var
  loc_A6B6C8: Call EncontrarDeretenciones(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A6B6CD: FFreeAd var_CC = "": var_134 = "": var_18C = "": var_E0 = "": var_148 = ""
  loc_A6B6DC: FFreeVar var_F0 = "": var_100 = ""
  loc_A6B6E5: ExitProcHresult
End Sub

Public Sub ModificarRetexProv(NuinRexp, FeacRexp, FedeRexp, FeheRexp, PoexRexp, FedrRexp, FehrRexp, ObseRexp) 'A805F4
  'Data Table: 4167A8
  loc_A802A4: ILdRf NuinRexp
  loc_A802A7: FStStrCopy var_88
  loc_A802AA: ILdRf FeacRexp
  loc_A802AD: FStStrCopy var_8C
  loc_A802B0: ILdRf FedeRexp
  loc_A802B3: FStStrCopy var_90
  loc_A802B6: ILdRf FeheRexp
  loc_A802B9: FStStrCopy var_94
  loc_A802BC: ILdRf PoexRexp
  loc_A802BF: FStStrCopy var_98
  loc_A802C2: ILdRf FedrRexp
  loc_A802C5: FStStrCopy var_9C
  loc_A802C8: ILdRf FehrRexp
  loc_A802CB: FStStrCopy var_A0
  loc_A802CE: ILdRf ObseRexp
  loc_A802D1: FStStrCopy var_A4
  loc_A802D4: LitI4 0
  loc_A802D9: LitI4 4
  loc_A802DE: FLdRfVar var_A8
  loc_A802E1: Redim
  loc_A802EB: FLdRfVar var_8C
  loc_A802EE: CVarRef
  loc_A802F3: ParmAry1St
  loc_A802F9: FLdRfVar var_90
  loc_A802FC: CVarRef
  loc_A80301: ParmAry1St
  loc_A80307: FLdRfVar var_94
  loc_A8030A: CVarRef
  loc_A8030F: ParmAry1St
  loc_A80315: FLdRfVar var_9C
  loc_A80318: CVarRef
  loc_A8031D: ParmAry1St
  loc_A80323: FLdRfVar var_A0
  loc_A80326: CVarRef
  loc_A8032B: ParmAry1St
  loc_A80331: FLdRfVar var_A8
  loc_A80334: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_A80339: FLdRfVar var_A8
  loc_A8033C: Erase
  loc_A8033D: LitStr "UPDATE retexprov"
  loc_A80340: LitStr " SET NuinRexp='"
  loc_A80343: ConcatStr
  loc_A80344: FStStrNoPop var_FC
  loc_A80347: ILdRf var_88
  loc_A8034A: ConcatStr
  loc_A8034B: FStStrNoPop var_100
  loc_A8034E: LitStr "',FedeRexp="
  loc_A80351: ConcatStr
  loc_A80352: FStStrNoPop var_104
  loc_A80355: ILdRf var_90
  loc_A80358: ConcatStr
  loc_A80359: FStStrNoPop var_108
  loc_A8035C: LitStr ",FeheRexp="
  loc_A8035F: ConcatStr
  loc_A80360: FStStrNoPop var_10C
  loc_A80363: ILdRf var_94
  loc_A80366: ConcatStr
  loc_A80367: FStStrNoPop var_110
  loc_A8036A: LitStr ",FedrRexp="
  loc_A8036D: ConcatStr
  loc_A8036E: FStStrNoPop var_114
  loc_A80371: ILdRf var_9C
  loc_A80374: ConcatStr
  loc_A80375: FStStrNoPop var_118
  loc_A80378: LitStr ",FehrRexp="
  loc_A8037B: ConcatStr
  loc_A8037C: FStStrNoPop var_11C
  loc_A8037F: ILdRf var_A0
  loc_A80382: ConcatStr
  loc_A80383: FStStrNoPop var_120
  loc_A80386: LitStr ",FeacRexp="
  loc_A80389: ConcatStr
  loc_A8038A: FStStrNoPop var_124
  loc_A8038D: ILdRf var_8C
  loc_A80390: ConcatStr
  loc_A80391: FStStrNoPop var_128
  loc_A80394: LitStr ",PoexRexp="
  loc_A80397: ConcatStr
  loc_A80398: FStStrNoPop var_12C
  loc_A8039B: ILdRf var_98
  loc_A8039E: ConcatStr
  loc_A8039F: FStStrNoPop var_130
  loc_A803A2: LitStr ",ObseRexp='"
  loc_A803A5: ConcatStr
  loc_A803A6: FStStrNoPop var_134
  loc_A803A9: ILdRf var_A4
  loc_A803AC: ConcatStr
  loc_A803AD: FStStrNoPop var_138
  loc_A803B0: LitStr "',ModiUsua='"
  loc_A803B3: ConcatStr
  loc_A803B4: FStStrNoPop var_13C
  loc_A803B7: ImpAdLdI4 MemVar_C3D03C
  loc_A803BA: ConcatStr
  loc_A803BB: FStStrNoPop var_140
  loc_A803BE: LitStr "',ModiFeho=Now()"
  loc_A803C1: ConcatStr
  loc_A803C2: FStStrNoPop var_144
  loc_A803C5: LitStr " WHERE CucuPers = "
  loc_A803C8: ConcatStr
  loc_A803C9: CVarStr var_16C
  loc_A803CC: FLdRfVar var_15C
  loc_A803CF: FLdRfVar var_14C
  loc_A803D2: LitVarStr var_B8, "CucuPers"
  loc_A803D7: PopAdLdVar
  loc_A803D8: FLdRfVar var_148
  loc_A803DB: FLdPr Me
  loc_A803DE: MemLdPr RsFrm
  loc_A803E1:  = Me.Fields
  loc_A803E6: FLdPr var_148
  loc_A803E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A803EE: FLdPr var_14C
  loc_A803F1:  = Me.Value
  loc_A803F6: FLdRfVar var_15C
  loc_A803F9: ConcatVar var_17C
  loc_A803FD: LitVarStr var_C8, " AND PeriInfo="
  loc_A80402: ConcatVar var_18C
  loc_A80406: FLdRfVar var_1A4
  loc_A80409: FLdRfVar var_194
  loc_A8040C: LitVarStr var_D8, "PeriInfo"
  loc_A80411: PopAdLdVar
  loc_A80412: FLdRfVar var_190
  loc_A80415: FLdPr Me
  loc_A80418: MemLdPr RsFrm
  loc_A8041B:  = Me.Fields
  loc_A80420: FLdPr var_190
  loc_A80423: from_stack_2 = Me.Item(from_stack_1)
  loc_A80428: FLdPr var_194
  loc_A8042B:  = Me.Value
  loc_A80430: FLdRfVar var_1A4
  loc_A80433: ConcatVar var_1B4
  loc_A80437: LitVarStr var_E8, " AND CodiRete="
  loc_A8043C: ConcatVar var_1C4
  loc_A80440: FLdRfVar var_1DC
  loc_A80443: FLdRfVar var_1CC
  loc_A80446: LitVarStr var_F8, "CodiRete"
  loc_A8044B: PopAdLdVar
  loc_A8044C: FLdRfVar var_1C8
  loc_A8044F: FLdPr Me
  loc_A80452: MemLdPr RsFrm
  loc_A80455:  = Me.Fields
  loc_A8045A: FLdPr var_1C8
  loc_A8045D: from_stack_2 = Me.Item(from_stack_1)
  loc_A80462: FLdPr var_1CC
  loc_A80465:  = Me.Value
  loc_A8046A: FLdRfVar var_1DC
  loc_A8046D: ConcatVar var_1EC
  loc_A80471: LitVarStr var_1FC, " AND CodiDere = "
  loc_A80476: ConcatVar var_20C
  loc_A8047A: FLdRfVar var_234
  loc_A8047D: FLdRfVar var_224
  loc_A80480: LitVarStr var_220, "CodiDere"
  loc_A80485: PopAdLdVar
  loc_A80486: FLdRfVar var_210
  loc_A80489: FLdPr Me
  loc_A8048C: MemLdPr RsFrm
  loc_A8048F:  = Me.Fields
  loc_A80494: FLdPr var_210
  loc_A80497: from_stack_2 = Me.Item(from_stack_1)
  loc_A8049C: FLdPr var_224
  loc_A8049F:  = Me.Value
  loc_A804A4: FLdRfVar var_234
  loc_A804A7: ConcatVar var_244
  loc_A804AB: CStrVarVal var_248
  loc_A804AF: Call EjecutarRsCls(from_stack_1v)
  loc_A804B4: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_A804DF: FFreeAd var_148 = "": var_14C = "": var_190 = "": var_194 = "": var_1C8 = "": var_1CC = "": var_210 = ""
  loc_A804F2: FFreeVar var_16C = "": var_15C = "": var_17C = "": var_18C = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1DC = "": var_1EC = "": var_20C = "": var_234 = ""
  loc_A8050D: FLdRfVar var_15C
  loc_A80510: FLdRfVar var_14C
  loc_A80513: LitVarStr var_B8, "CucuPers"
  loc_A80518: PopAdLdVar
  loc_A80519: FLdRfVar var_148
  loc_A8051C: FLdPr Me
  loc_A8051F: MemLdPr RsFrm
  loc_A80522:  = Me.Fields
  loc_A80527: FLdPr var_148
  loc_A8052A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8052F: FLdPr var_14C
  loc_A80532:  = Me.Value
  loc_A80537: FLdRfVar var_16C
  loc_A8053A: FLdRfVar var_194
  loc_A8053D: LitVarStr var_C8, "PeriInfo"
  loc_A80542: PopAdLdVar
  loc_A80543: FLdRfVar var_190
  loc_A80546: FLdPr Me
  loc_A80549: MemLdPr RsFrm
  loc_A8054C:  = Me.Fields
  loc_A80551: FLdPr var_190
  loc_A80554: from_stack_2 = Me.Item(from_stack_1)
  loc_A80559: FLdPr var_194
  loc_A8055C:  = Me.Value
  loc_A80561: FLdRfVar var_17C
  loc_A80564: FLdRfVar var_1CC
  loc_A80567: LitVarStr var_D8, "CodiRete"
  loc_A8056C: PopAdLdVar
  loc_A8056D: FLdRfVar var_1C8
  loc_A80570: FLdPr Me
  loc_A80573: MemLdPr RsFrm
  loc_A80576:  = Me.Fields
  loc_A8057B: FLdPr var_1C8
  loc_A8057E: from_stack_2 = Me.Item(from_stack_1)
  loc_A80583: FLdPr var_1CC
  loc_A80586:  = Me.Value
  loc_A8058B: FLdRfVar var_18C
  loc_A8058E: FLdRfVar var_224
  loc_A80591: LitVarStr var_E8, "CodiDere"
  loc_A80596: PopAdLdVar
  loc_A80597: FLdRfVar var_210
  loc_A8059A: FLdPr Me
  loc_A8059D: MemLdPr RsFrm
  loc_A805A0:  = Me.Fields
  loc_A805A5: FLdPr var_210
  loc_A805A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A805AD: FLdPr var_224
  loc_A805B0:  = Me.Value
  loc_A805B5: FLdRfVar var_18C
  loc_A805B8: CUI1Var
  loc_A805BA: FLdRfVar var_17C
  loc_A805BD: CUI1Var
  loc_A805BF: FLdRfVar var_16C
  loc_A805C2: CI2Var
  loc_A805C3: PopTmpLdAd2 var_24A
  loc_A805C6: FLdRfVar var_15C
  loc_A805C9: CStrVarTmp
  loc_A805CA: FStStrNoPop var_FC
  loc_A805CD: Call EncontrarRetexProv(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A805D2: FFree1Str var_FC
  loc_A805D5: FFreeAd var_148 = "": var_190 = "": var_1C8 = "": var_210 = "": var_14C = "": var_194 = "": var_1CC = ""
  loc_A805E8: FFreeVar var_15C = "": var_16C = "": var_17C = ""
  loc_A805F3: ExitProcHresult
End Sub

Public Function EliminarRetenciones() 'A48D3C
  'Data Table: 4167A8
  loc_A48ACC: LitStr "START TRANSACTION;"
  loc_A48ACF: Call EjecutarRsCls(from_stack_1v)
  loc_A48AD4: OnErrorGoto loc_A48D1E
  loc_A48AD7: LitVarStr var_C0, "DELETE FROM retenciones WHERE PeriInfo="
  loc_A48ADC: FLdRfVar var_B0
  loc_A48ADF: FLdRfVar var_A0
  loc_A48AE2: LitVarStr var_9C, "PeriInfo"
  loc_A48AE7: PopAdLdVar
  loc_A48AE8: FLdRfVar var_8C
  loc_A48AEB: FLdPr Me
  loc_A48AEE: MemLdPr RsFrm
  loc_A48AF1:  = Me.Fields
  loc_A48AF6: FLdPr var_8C
  loc_A48AF9: from_stack_2 = Me.Item(from_stack_1)
  loc_A48AFE: FLdPr var_A0
  loc_A48B01:  = Me.Value
  loc_A48B06: FLdRfVar var_B0
  loc_A48B09: ConcatVar var_D0
  loc_A48B0D: LitVarStr var_E0, " AND CodiRete="
  loc_A48B12: ConcatVar var_F0
  loc_A48B16: FLdRfVar var_118
  loc_A48B19: FLdRfVar var_108
  loc_A48B1C: LitVarStr var_104, "CodiRete"
  loc_A48B21: PopAdLdVar
  loc_A48B22: FLdRfVar var_F4
  loc_A48B25: FLdPr Me
  loc_A48B28: MemLdPr RsFrm
  loc_A48B2B:  = Me.Fields
  loc_A48B30: FLdPr var_F4
  loc_A48B33: from_stack_2 = Me.Item(from_stack_1)
  loc_A48B38: FLdPr var_108
  loc_A48B3B:  = Me.Value
  loc_A48B40: FLdRfVar var_118
  loc_A48B43: ConcatVar var_128
  loc_A48B47: LitVarStr var_138, ";"
  loc_A48B4C: ConcatVar var_148
  loc_A48B50: CStrVarVal var_14C
  loc_A48B54: Call EjecutarRsCls(from_stack_1v)
  loc_A48B59: FFree1Str var_14C
  loc_A48B5C: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A48B67: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A48B76: LitVarStr var_C0, "DELETE FROM deretenciones WHERE PeriInfo = "
  loc_A48B7B: FLdRfVar var_B0
  loc_A48B7E: FLdRfVar var_A0
  loc_A48B81: LitVarStr var_9C, "PeriInfo"
  loc_A48B86: PopAdLdVar
  loc_A48B87: FLdRfVar var_8C
  loc_A48B8A: FLdPr Me
  loc_A48B8D: MemLdPr RsFrm
  loc_A48B90:  = Me.Fields
  loc_A48B95: FLdPr var_8C
  loc_A48B98: from_stack_2 = Me.Item(from_stack_1)
  loc_A48B9D: FLdPr var_A0
  loc_A48BA0:  = Me.Value
  loc_A48BA5: FLdRfVar var_B0
  loc_A48BA8: ConcatVar var_D0
  loc_A48BAC: LitVarStr var_E0, " AND CodiRete = "
  loc_A48BB1: ConcatVar var_F0
  loc_A48BB5: FLdRfVar var_118
  loc_A48BB8: FLdRfVar var_108
  loc_A48BBB: LitVarStr var_104, "CodiRete"
  loc_A48BC0: PopAdLdVar
  loc_A48BC1: FLdRfVar var_F4
  loc_A48BC4: FLdPr Me
  loc_A48BC7: MemLdPr RsFrm
  loc_A48BCA:  = Me.Fields
  loc_A48BCF: FLdPr var_F4
  loc_A48BD2: from_stack_2 = Me.Item(from_stack_1)
  loc_A48BD7: FLdPr var_108
  loc_A48BDA:  = Me.Value
  loc_A48BDF: FLdRfVar var_118
  loc_A48BE2: ConcatVar var_128
  loc_A48BE6: LitVarStr var_138, ";"
  loc_A48BEB: ConcatVar var_148
  loc_A48BEF: CStrVarVal var_14C
  loc_A48BF3: Call EjecutarRsCls(from_stack_1v)
  loc_A48BF8: FFree1Str var_14C
  loc_A48BFB: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A48C06: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A48C15: LitVarStr var_C0, "DELETE FROM escalas WHERE PeriInfo = "
  loc_A48C1A: FLdRfVar var_B0
  loc_A48C1D: FLdRfVar var_A0
  loc_A48C20: LitVarStr var_9C, "PeriInfo"
  loc_A48C25: PopAdLdVar
  loc_A48C26: FLdRfVar var_8C
  loc_A48C29: FLdPr Me
  loc_A48C2C: MemLdPr RsFrm
  loc_A48C2F:  = Me.Fields
  loc_A48C34: FLdPr var_8C
  loc_A48C37: from_stack_2 = Me.Item(from_stack_1)
  loc_A48C3C: FLdPr var_A0
  loc_A48C3F:  = Me.Value
  loc_A48C44: FLdRfVar var_B0
  loc_A48C47: ConcatVar var_D0
  loc_A48C4B: LitVarStr var_E0, " AND CodiRete = "
  loc_A48C50: ConcatVar var_F0
  loc_A48C54: FLdRfVar var_118
  loc_A48C57: FLdRfVar var_108
  loc_A48C5A: LitVarStr var_104, "CodiRete"
  loc_A48C5F: PopAdLdVar
  loc_A48C60: FLdRfVar var_F4
  loc_A48C63: FLdPr Me
  loc_A48C66: MemLdPr RsFrm
  loc_A48C69:  = Me.Fields
  loc_A48C6E: FLdPr var_F4
  loc_A48C71: from_stack_2 = Me.Item(from_stack_1)
  loc_A48C76: FLdPr var_108
  loc_A48C79:  = Me.Value
  loc_A48C7E: FLdRfVar var_118
  loc_A48C81: ConcatVar var_128
  loc_A48C85: LitVarStr var_138, ";"
  loc_A48C8A: ConcatVar var_148
  loc_A48C8E: CStrVarVal var_14C
  loc_A48C92: Call EjecutarRsCls(from_stack_1v)
  loc_A48C97: FFree1Str var_14C
  loc_A48C9A: FFreeAd var_8C = "": var_A0 = "": var_F4 = ""
  loc_A48CA5: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = ""
  loc_A48CB4: LitStr "COMMIT;"
  loc_A48CB7: Call EjecutarRsCls(from_stack_1v)
  loc_A48CBC: FLdRfVar var_154
  loc_A48CBF: FLdPr Me
  loc_A48CC2: MemLdPr RsFrm
  loc_A48CC5:  = Me.AbsolutePosition
  loc_A48CCA: ILdRf var_154
  loc_A48CCD: FStR4 var_150
  loc_A48CD0: Call Requery()
  loc_A48CD5: FLdRfVar var_154
  loc_A48CD8: FLdPr Me
  loc_A48CDB: MemLdPr RsFrm
  loc_A48CDE:  = Me.RecordCount
  loc_A48CE3: ILdRf var_154
  loc_A48CE6: LitI4 0
  loc_A48CEB: GtI4
  loc_A48CEC: BranchF loc_A48D18
  loc_A48CEF: Call MoveFirst()
  loc_A48CF4: ILdRf var_150
  loc_A48CF7: LitI4 1
  loc_A48CFC: GtI4
  loc_A48CFD: BranchF loc_A48D18
  loc_A48D00: LitVar_Missing var_9C
  loc_A48D03: PopAdLdVar
  loc_A48D04: ILdRf var_150
  loc_A48D07: LitI4 2
  loc_A48D0C: SubI4
  loc_A48D0D: FLdPr Me
  loc_A48D10: MemLdPr RsFrm
  loc_A48D13: Me.Move from_stack_1, from_stack_2
  loc_A48D18: ExitProcCbHresult
  loc_A48D1E: LitStr "ROLLBACK;"
  loc_A48D21: Call EjecutarRsCls(from_stack_1v)
  loc_A48D26: LitI4 0
  loc_A48D2B: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A48D2E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A48D33: ExitProcCbHresult
End Function

Public Function PermiteEliminarCategoria() '9E96BC
  'Data Table: 4167A8
  loc_9E95BC: LitVarStr var_C0, "SELECT * FROM liquidaneto WHERE PeriInfo = "
  loc_9E95C1: FLdRfVar var_B0
  loc_9E95C4: FLdRfVar var_A0
  loc_9E95C7: LitVarStr var_9C, "PeriInfo"
  loc_9E95CC: PopAdLdVar
  loc_9E95CD: FLdRfVar var_8C
  loc_9E95D0: FLdPr Me
  loc_9E95D3: MemLdPr RsFrm
  loc_9E95D6:  = Me.Fields
  loc_9E95DB: FLdPr var_8C
  loc_9E95DE: from_stack_2 = Me.Item(from_stack_1)
  loc_9E95E3: FLdPr var_A0
  loc_9E95E6:  = Me.Value
  loc_9E95EB: FLdRfVar var_B0
  loc_9E95EE: ConcatVar var_D0
  loc_9E95F2: LitVarStr var_E0, " AND CodiRete = "
  loc_9E95F7: ConcatVar var_F0
  loc_9E95FB: FLdRfVar var_118
  loc_9E95FE: FLdRfVar var_108
  loc_9E9601: LitVarStr var_104, "CodiRete"
  loc_9E9606: PopAdLdVar
  loc_9E9607: FLdRfVar var_F4
  loc_9E960A: FLdPr Me
  loc_9E960D: MemLdPr RsFrm
  loc_9E9610:  = Me.Fields
  loc_9E9615: FLdPr var_F4
  loc_9E9618: from_stack_2 = Me.Item(from_stack_1)
  loc_9E961D: FLdPr var_108
  loc_9E9620:  = Me.Value
  loc_9E9625: FLdRfVar var_118
  loc_9E9628: ConcatVar var_128
  loc_9E962C: LitVarStr var_138, " AND CodiDere = "
  loc_9E9631: ConcatVar var_148
  loc_9E9635: FLdRfVar var_170
  loc_9E9638: FLdRfVar var_160
  loc_9E963B: LitVarStr var_15C, "CodiDere"
  loc_9E9640: PopAdLdVar
  loc_9E9641: FLdRfVar var_14C
  loc_9E9644: FLdPr Me
  loc_9E9647: MemLdPr RsFrm
  loc_9E964A:  = Me.Fields
  loc_9E964F: FLdPr var_14C
  loc_9E9652: from_stack_2 = Me.Item(from_stack_1)
  loc_9E9657: FLdPr var_160
  loc_9E965A:  = Me.Value
  loc_9E965F: FLdRfVar var_170
  loc_9E9662: ConcatVar var_180
  loc_9E9666: CStrVarVal var_184
  loc_9E966A: Call EjecutarRsCls(from_stack_1v)
  loc_9E966F: FFree1Str var_184
  loc_9E9672: FFreeAd var_8C = "": var_A0 = "": var_F4 = "": var_108 = "": var_14C = ""
  loc_9E9681: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_170 = ""
  loc_9E9694: FLdRfVar var_188
  loc_9E9697: FLdPr Me
  loc_9E969A: MemLdPr global_56
  loc_9E969D:  = Me.RecordCount
  loc_9E96A2: ILdRf var_188
  loc_9E96A5: LitI4 0
  loc_9E96AA: EqI4
  loc_9E96AB: BranchF loc_9E96B3
  loc_9E96AE: LitI2_Byte &HFF
  loc_9E96B0: FStI2 var_86
  loc_9E96B3: ExitProcCbHresult
  loc_9E96B9: CVarStr var_B4
End Function

Public Function EliminarDeretenciones() 'A4354C
  'Data Table: 4167A8
  loc_A4330C: LitStr "START TRANSACTION;"
  loc_A4330F: Call EjecutarRsCls(from_stack_1v)
  loc_A43314: OnErrorGoto loc_A43531
  loc_A43317: LitVarStr var_C0, "DELETE FROM deretenciones WHERE PeriInfo="
  loc_A4331C: FLdRfVar var_B0
  loc_A4331F: FLdRfVar var_A0
  loc_A43322: LitVarStr var_9C, "PeriInfo"
  loc_A43327: PopAdLdVar
  loc_A43328: FLdRfVar var_8C
  loc_A4332B: FLdPr Me
  loc_A4332E: MemLdPr RsFrm
  loc_A43331:  = Me.Fields
  loc_A43336: FLdPr var_8C
  loc_A43339: from_stack_2 = Me.Item(from_stack_1)
  loc_A4333E: FLdPr var_A0
  loc_A43341:  = Me.Value
  loc_A43346: FLdRfVar var_B0
  loc_A43349: ConcatVar var_D0
  loc_A4334D: LitVarStr var_E0, " AND CodiRete="
  loc_A43352: ConcatVar var_F0
  loc_A43356: FLdRfVar var_118
  loc_A43359: FLdRfVar var_108
  loc_A4335C: LitVarStr var_104, "CodiRete"
  loc_A43361: PopAdLdVar
  loc_A43362: FLdRfVar var_F4
  loc_A43365: FLdPr Me
  loc_A43368: MemLdPr RsFrm
  loc_A4336B:  = Me.Fields
  loc_A43370: FLdPr var_F4
  loc_A43373: from_stack_2 = Me.Item(from_stack_1)
  loc_A43378: FLdPr var_108
  loc_A4337B:  = Me.Value
  loc_A43380: FLdRfVar var_118
  loc_A43383: ConcatVar var_128
  loc_A43387: LitVarStr var_138, " AND CodiDere = "
  loc_A4338C: ConcatVar var_148
  loc_A43390: FLdRfVar var_170
  loc_A43393: FLdRfVar var_160
  loc_A43396: LitVarStr var_15C, "CodiDere"
  loc_A4339B: PopAdLdVar
  loc_A4339C: FLdRfVar var_14C
  loc_A4339F: FLdPr Me
  loc_A433A2: MemLdPr RsFrm
  loc_A433A5:  = Me.Fields
  loc_A433AA: FLdPr var_14C
  loc_A433AD: from_stack_2 = Me.Item(from_stack_1)
  loc_A433B2: FLdPr var_160
  loc_A433B5:  = Me.Value
  loc_A433BA: FLdRfVar var_170
  loc_A433BD: ConcatVar var_180
  loc_A433C1: CStrVarVal var_184
  loc_A433C5: Call EjecutarRsCls(from_stack_1v)
  loc_A433CA: FFree1Str var_184
  loc_A433CD: FFreeAd var_8C = "": var_A0 = "": var_F4 = "": var_108 = "": var_14C = ""
  loc_A433DC: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_170 = ""
  loc_A433EF: LitVarStr var_C0, "DELETE FROM escalas WHERE PeriInfo="
  loc_A433F4: FLdRfVar var_B0
  loc_A433F7: FLdRfVar var_A0
  loc_A433FA: LitVarStr var_9C, "PeriInfo"
  loc_A433FF: PopAdLdVar
  loc_A43400: FLdRfVar var_8C
  loc_A43403: FLdPr Me
  loc_A43406: MemLdPr RsFrm
  loc_A43409:  = Me.Fields
  loc_A4340E: FLdPr var_8C
  loc_A43411: from_stack_2 = Me.Item(from_stack_1)
  loc_A43416: FLdPr var_A0
  loc_A43419:  = Me.Value
  loc_A4341E: FLdRfVar var_B0
  loc_A43421: ConcatVar var_D0
  loc_A43425: LitVarStr var_E0, " AND CodiRete="
  loc_A4342A: ConcatVar var_F0
  loc_A4342E: FLdRfVar var_118
  loc_A43431: FLdRfVar var_108
  loc_A43434: LitVarStr var_104, "CodiRete"
  loc_A43439: PopAdLdVar
  loc_A4343A: FLdRfVar var_F4
  loc_A4343D: FLdPr Me
  loc_A43440: MemLdPr RsFrm
  loc_A43443:  = Me.Fields
  loc_A43448: FLdPr var_F4
  loc_A4344B: from_stack_2 = Me.Item(from_stack_1)
  loc_A43450: FLdPr var_108
  loc_A43453:  = Me.Value
  loc_A43458: FLdRfVar var_118
  loc_A4345B: ConcatVar var_128
  loc_A4345F: LitVarStr var_138, " AND CodiDere = "
  loc_A43464: ConcatVar var_148
  loc_A43468: FLdRfVar var_170
  loc_A4346B: FLdRfVar var_160
  loc_A4346E: LitVarStr var_15C, "CodiDere"
  loc_A43473: PopAdLdVar
  loc_A43474: FLdRfVar var_14C
  loc_A43477: FLdPr Me
  loc_A4347A: MemLdPr RsFrm
  loc_A4347D:  = Me.Fields
  loc_A43482: FLdPr var_14C
  loc_A43485: from_stack_2 = Me.Item(from_stack_1)
  loc_A4348A: FLdPr var_160
  loc_A4348D:  = Me.Value
  loc_A43492: FLdRfVar var_170
  loc_A43495: ConcatVar var_180
  loc_A43499: CStrVarVal var_184
  loc_A4349D: Call EjecutarRsCls(from_stack_1v)
  loc_A434A2: FFree1Str var_184
  loc_A434A5: FFreeAd var_8C = "": var_A0 = "": var_F4 = "": var_108 = "": var_14C = ""
  loc_A434B4: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_170 = ""
  loc_A434C7: LitStr "COMMIT;"
  loc_A434CA: Call EjecutarRsCls(from_stack_1v)
  loc_A434CF: FLdRfVar var_18C
  loc_A434D2: FLdPr Me
  loc_A434D5: MemLdPr RsFrm
  loc_A434D8:  = Me.AbsolutePosition
  loc_A434DD: ILdRf var_18C
  loc_A434E0: FStR4 var_188
  loc_A434E3: Call Requery()
  loc_A434E8: FLdRfVar var_18C
  loc_A434EB: FLdPr Me
  loc_A434EE: MemLdPr RsFrm
  loc_A434F1:  = Me.RecordCount
  loc_A434F6: ILdRf var_18C
  loc_A434F9: LitI4 0
  loc_A434FE: GtI4
  loc_A434FF: BranchF loc_A4352B
  loc_A43502: Call MoveFirst()
  loc_A43507: ILdRf var_188
  loc_A4350A: LitI4 1
  loc_A4350F: GtI4
  loc_A43510: BranchF loc_A4352B
  loc_A43513: LitVar_Missing var_9C
  loc_A43516: PopAdLdVar
  loc_A43517: ILdRf var_188
  loc_A4351A: LitI4 2
  loc_A4351F: SubI4
  loc_A43520: FLdPr Me
  loc_A43523: MemLdPr RsFrm
  loc_A43526: Me.Move from_stack_1, from_stack_2
  loc_A4352B: ExitProcCbHresult
  loc_A43531: LitStr "ROLLBACK;"
  loc_A43534: Call EjecutarRsCls(from_stack_1v)
  loc_A43539: LitI4 0
  loc_A4353E: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A43541: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A43546: ExitProcCbHresult
End Function

Public Function EliminarRetexProv() 'A30060
  'Data Table: 4167A8
  loc_A2FEA8: LitStr "START TRANSACTION;"
  loc_A2FEAB: Call EjecutarRsCls(from_stack_1v)
  loc_A2FEB0: OnErrorGoto loc_A30044
  loc_A2FEB3: LitVarStr var_C0, "DELETE FROM retexprov WHERE CucuPers = "
  loc_A2FEB8: FLdRfVar var_B0
  loc_A2FEBB: FLdRfVar var_A0
  loc_A2FEBE: LitVarStr var_9C, "CucuPers"
  loc_A2FEC3: PopAdLdVar
  loc_A2FEC4: FLdRfVar var_8C
  loc_A2FEC7: FLdPr Me
  loc_A2FECA: MemLdPr RsFrm
  loc_A2FECD:  = Me.Fields
  loc_A2FED2: FLdPr var_8C
  loc_A2FED5: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FEDA: FLdPr var_A0
  loc_A2FEDD:  = Me.Value
  loc_A2FEE2: FLdRfVar var_B0
  loc_A2FEE5: ConcatVar var_D0
  loc_A2FEE9: LitVarStr var_E0, " AND PeriInfo = "
  loc_A2FEEE: ConcatVar var_F0
  loc_A2FEF2: FLdRfVar var_118
  loc_A2FEF5: FLdRfVar var_108
  loc_A2FEF8: LitVarStr var_104, "PeriInfo"
  loc_A2FEFD: PopAdLdVar
  loc_A2FEFE: FLdRfVar var_F4
  loc_A2FF01: FLdPr Me
  loc_A2FF04: MemLdPr RsFrm
  loc_A2FF07:  = Me.Fields
  loc_A2FF0C: FLdPr var_F4
  loc_A2FF0F: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FF14: FLdPr var_108
  loc_A2FF17:  = Me.Value
  loc_A2FF1C: FLdRfVar var_118
  loc_A2FF1F: ConcatVar var_128
  loc_A2FF23: LitVarStr var_138, " AND CodiRete = "
  loc_A2FF28: ConcatVar var_148
  loc_A2FF2C: FLdRfVar var_170
  loc_A2FF2F: FLdRfVar var_160
  loc_A2FF32: LitVarStr var_15C, "CodiRete"
  loc_A2FF37: PopAdLdVar
  loc_A2FF38: FLdRfVar var_14C
  loc_A2FF3B: FLdPr Me
  loc_A2FF3E: MemLdPr RsFrm
  loc_A2FF41:  = Me.Fields
  loc_A2FF46: FLdPr var_14C
  loc_A2FF49: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FF4E: FLdPr var_160
  loc_A2FF51:  = Me.Value
  loc_A2FF56: FLdRfVar var_170
  loc_A2FF59: ConcatVar var_180
  loc_A2FF5D: LitVarStr var_190, " AND CodiDere = "
  loc_A2FF62: ConcatVar var_1A0
  loc_A2FF66: FLdRfVar var_1C8
  loc_A2FF69: FLdRfVar var_1B8
  loc_A2FF6C: LitVarStr var_1B4, "CodiDere"
  loc_A2FF71: PopAdLdVar
  loc_A2FF72: FLdRfVar var_1A4
  loc_A2FF75: FLdPr Me
  loc_A2FF78: MemLdPr RsFrm
  loc_A2FF7B:  = Me.Fields
  loc_A2FF80: FLdPr var_1A4
  loc_A2FF83: from_stack_2 = Me.Item(from_stack_1)
  loc_A2FF88: FLdPr var_1B8
  loc_A2FF8B:  = Me.Value
  loc_A2FF90: FLdRfVar var_1C8
  loc_A2FF93: ConcatVar var_1D8
  loc_A2FF97: LitVarStr var_1E8, ";"
  loc_A2FF9C: ConcatVar var_1F8
  loc_A2FFA0: CStrVarVal var_1FC
  loc_A2FFA4: Call EjecutarRsCls(from_stack_1v)
  loc_A2FFA9: FFree1Str var_1FC
  loc_A2FFAC: FFreeAd var_8C = "": var_A0 = "": var_F4 = "": var_108 = "": var_14C = "": var_160 = "": var_1A4 = ""
  loc_A2FFBF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_118 = "": var_128 = "": var_148 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1C8 = "": var_1D8 = ""
  loc_A2FFDA: LitStr "COMMIT;"
  loc_A2FFDD: Call EjecutarRsCls(from_stack_1v)
  loc_A2FFE2: FLdRfVar var_204
  loc_A2FFE5: FLdPr Me
  loc_A2FFE8: MemLdPr RsFrm
  loc_A2FFEB:  = Me.AbsolutePosition
  loc_A2FFF0: ILdRf var_204
  loc_A2FFF3: FStR4 var_200
  loc_A2FFF6: Call Requery()
  loc_A2FFFB: FLdRfVar var_204
  loc_A2FFFE: FLdPr Me
  loc_A30001: MemLdPr RsFrm
  loc_A30004:  = Me.RecordCount
  loc_A30009: ILdRf var_204
  loc_A3000C: LitI4 0
  loc_A30011: GtI4
  loc_A30012: BranchF loc_A3003E
  loc_A30015: Call MoveFirst()
  loc_A3001A: ILdRf var_200
  loc_A3001D: LitI4 1
  loc_A30022: GtI4
  loc_A30023: BranchF loc_A3003E
  loc_A30026: LitVar_Missing var_9C
  loc_A30029: PopAdLdVar
  loc_A3002A: ILdRf var_200
  loc_A3002D: LitI4 2
  loc_A30032: SubI4
  loc_A30033: FLdPr Me
  loc_A30036: MemLdPr RsFrm
  loc_A30039: Me.Move from_stack_1, from_stack_2
  loc_A3003E: ExitProcCbHresult
  loc_A30044: LitStr "ROLLBACK;"
  loc_A30047: Call EjecutarRsCls(from_stack_1v)
  loc_A3004C: LitI4 0
  loc_A30051: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_A30054: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A30059: ExitProcCbHresult
End Function

Public Sub EncontrarRetenciones(PeriInfo, CodiRete) '994C64
  'Data Table: 4167A8
  loc_994C10: Call Requery()
  loc_994C15: LitStr "PeriInfo = '"
  loc_994C18: FLdI2 PeriInfo
  loc_994C1B: CStrUI1
  loc_994C1D: FStStrNoPop var_88
  loc_994C20: ConcatStr
  loc_994C21: FStStrNoPop var_8C
  loc_994C24: LitStr "'"
  loc_994C27: ConcatStr
  loc_994C28: PopTmpLdAdStr
  loc_994C2C: Call Find(from_stack_1v)
  loc_994C31: FFreeStr var_88 = "": var_8C = ""
  loc_994C3A: LitStr "CodiRete = '"
  loc_994C3D: FLdUI1
  loc_994C41: CStrI2
  loc_994C43: FStStrNoPop var_88
  loc_994C46: ConcatStr
  loc_994C47: FStStrNoPop var_8C
  loc_994C4A: LitStr "'"
  loc_994C4D: ConcatStr
  loc_994C4E: PopTmpLdAdStr
  loc_994C52: Call Find(from_stack_1v)
  loc_994C57: FFreeStr var_88 = "": var_8C = ""
  loc_994C60: ExitProcHresult
End Sub

Public Sub EncontrarDeretenciones(PeriInfo, CodiRete, CodiDere) '9A3BD0
  'Data Table: 4167A8
  loc_9A3B58: Call Requery()
  loc_9A3B5D: LitStr "PeriInfo = '"
  loc_9A3B60: FLdI2 PeriInfo
  loc_9A3B63: CStrUI1
  loc_9A3B65: FStStrNoPop var_88
  loc_9A3B68: ConcatStr
  loc_9A3B69: FStStrNoPop var_8C
  loc_9A3B6C: LitStr "'"
  loc_9A3B6F: ConcatStr
  loc_9A3B70: PopTmpLdAdStr
  loc_9A3B74: Call Find(from_stack_1v)
  loc_9A3B79: FFreeStr var_88 = "": var_8C = ""
  loc_9A3B82: LitStr "CodiRete = '"
  loc_9A3B85: FLdUI1
  loc_9A3B89: CStrI2
  loc_9A3B8B: FStStrNoPop var_88
  loc_9A3B8E: ConcatStr
  loc_9A3B8F: FStStrNoPop var_8C
  loc_9A3B92: LitStr "'"
  loc_9A3B95: ConcatStr
  loc_9A3B96: PopTmpLdAdStr
  loc_9A3B9A: Call Find(from_stack_1v)
  loc_9A3B9F: FFreeStr var_88 = "": var_8C = ""
  loc_9A3BA8: LitStr "CodiDere = '"
  loc_9A3BAB: FLdUI1
  loc_9A3BAF: CStrI2
  loc_9A3BB1: FStStrNoPop var_88
  loc_9A3BB4: ConcatStr
  loc_9A3BB5: FStStrNoPop var_8C
  loc_9A3BB8: LitStr "'"
  loc_9A3BBB: ConcatStr
  loc_9A3BBC: PopTmpLdAdStr
  loc_9A3BC0: Call Find(from_stack_1v)
  loc_9A3BC5: FFreeStr var_88 = "": var_8C = ""
  loc_9A3BCE: ExitProcHresult
End Sub

Public Sub EncontrarRetexProv(CucuPers, PeriInfo, CodiRete, CodiDere) '9AD2EC
  'Data Table: 4167A8
  loc_9AD250: ILdRf CucuPers
  loc_9AD253: FStStrCopy var_88
  loc_9AD256: Call Requery()
  loc_9AD25B: LitStr "CucuPers = '"
  loc_9AD25E: ILdRf var_88
  loc_9AD261: ConcatStr
  loc_9AD262: FStStrNoPop var_8C
  loc_9AD265: LitStr "'"
  loc_9AD268: ConcatStr
  loc_9AD269: PopTmpLdAdStr
  loc_9AD26D: Call Find(from_stack_1v)
  loc_9AD272: FFreeStr var_8C = ""
  loc_9AD279: LitStr "PeriInfo = '"
  loc_9AD27C: ILdI2 PeriInfo
  loc_9AD27F: CStrUI1
  loc_9AD281: FStStrNoPop var_8C
  loc_9AD284: ConcatStr
  loc_9AD285: FStStrNoPop var_90
  loc_9AD288: LitStr "'"
  loc_9AD28B: ConcatStr
  loc_9AD28C: PopTmpLdAdStr
  loc_9AD290: Call Find(from_stack_1v)
  loc_9AD295: FFreeStr var_8C = "": var_90 = ""
  loc_9AD29E: LitStr "CodiRete = '"
  loc_9AD2A1: FLdUI1
  loc_9AD2A5: CStrI2
  loc_9AD2A7: FStStrNoPop var_8C
  loc_9AD2AA: ConcatStr
  loc_9AD2AB: FStStrNoPop var_90
  loc_9AD2AE: LitStr "'"
  loc_9AD2B1: ConcatStr
  loc_9AD2B2: PopTmpLdAdStr
  loc_9AD2B6: Call Find(from_stack_1v)
  loc_9AD2BB: FFreeStr var_8C = "": var_90 = ""
  loc_9AD2C4: LitStr "CodiDere = '"
  loc_9AD2C7: FLdUI1
  loc_9AD2CB: CStrI2
  loc_9AD2CD: FStStrNoPop var_8C
  loc_9AD2D0: ConcatStr
  loc_9AD2D1: FStStrNoPop var_90
  loc_9AD2D4: LitStr "'"
  loc_9AD2D7: ConcatStr
  loc_9AD2D8: PopTmpLdAdStr
  loc_9AD2DC: Call Find(from_stack_1v)
  loc_9AD2E1: FFreeStr var_8C = "": var_90 = ""
  loc_9AD2EA: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974520
  'Data Table: 4167A8
  loc_9744F8: ILdRf sSelect
  loc_9744FB: FStStrCopy var_88
  loc_9744FE: FLdPr Me
  loc_974501: MemLdRfVar from_stack_1.RsFrm
  loc_974504: ILdRf var_88
  loc_974507: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_97450C: LitVarStr var_98, "Primary"
  loc_974511: PopAdLdVar
  loc_974512: FLdPr Me
  loc_974515: LateIdCall
  loc_97451D: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '958460
  'Data Table: 4167A8
  loc_958448: ILdRf sSelect
  loc_95844B: FStStrCopy var_88
  loc_95844E: FLdPr Me
  loc_958451: MemLdRfVar from_stack_1.global_56
  loc_958454: ILdRf var_88
  loc_958457: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_95845C: ExitProcHresult
  loc_95845D: StAryMove
End Sub

Public Sub Requery() '969BF0
  'Data Table: 4167A8
  loc_969BD0: FLdPr Me
  loc_969BD3: MemLdRfVar from_stack_1.RsFrm
  loc_969BD6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_969BDB: LitVarStr var_94, "Primary"
  loc_969BE0: PopAdLdVar
  loc_969BE1: FLdPr Me
  loc_969BE4: LateIdCall
  loc_969BEC: ExitProcHresult
End Sub

Public Property Get DataSource() '9743AC
  'Data Table: 4167A8
  loc_974388: ZeroRetVal
  loc_97438A: FLdRfVar var_8C
  loc_97438D: FLdPr Me
  loc_974390: MemLdPr RsFrm
  loc_974393:  = Me.DataSource
  loc_974398: ILdRf var_8C
  loc_97439B: CastAd
  loc_97439E: FStAdFunc var_88
  loc_9743A1: FFree1Ad var_8C
  loc_9743A4: ExitProcCbHresult
  loc_9743AA: ExitProcI2
End Sub

Public Function ActualizaUlceRete(PeriInfo, CodiRete) '9D1284
  'Data Table: 4167A8
  loc_9D11B4: LitStr "UPDATE retenciones"
  loc_9D11B7: LitStr " SET UlceRete = UlceRete + 1"
  loc_9D11BA: ConcatStr
  loc_9D11BB: FStStrNoPop var_8C
  loc_9D11BE: LitStr " WHERE PeriInfo = "
  loc_9D11C1: ConcatStr
  loc_9D11C2: FStStrNoPop var_90
  loc_9D11C5: FLdI2 PeriInfo
  loc_9D11C8: CStrUI1
  loc_9D11CA: FStStrNoPop ActualizaUlceRete
  loc_9D11CD: ConcatStr
  loc_9D11CE: FStStrNoPop var_98
  loc_9D11D1: LitStr " AND CodiRete = "
  loc_9D11D4: ConcatStr
  loc_9D11D5: FStStrNoPop var_9C
  loc_9D11D8: FLdI2 CodiRete
  loc_9D11DB: CStrUI1
  loc_9D11DD: FStStrNoPop var_A0
  loc_9D11E0: ConcatStr
  loc_9D11E1: FStStrNoPop var_A4
  loc_9D11E4: Call EjecutarRsCls(from_stack_1v)
  loc_9D11E9: FFreeStr var_8C = "": var_90 = "": ActualizaUlceRete = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9D11FA: LitStr "SELECT UlceRete"
  loc_9D11FD: LitStr " FROM retenciones"
  loc_9D1200: ConcatStr
  loc_9D1201: FStStrNoPop var_8C
  loc_9D1204: LitStr " WHERE PeriInfo = "
  loc_9D1207: ConcatStr
  loc_9D1208: FStStrNoPop var_90
  loc_9D120B: FLdI2 PeriInfo
  loc_9D120E: CStrUI1
  loc_9D1210: FStStrNoPop ActualizaUlceRete
  loc_9D1213: ConcatStr
  loc_9D1214: FStStrNoPop var_98
  loc_9D1217: LitStr " AND CodiRete = "
  loc_9D121A: ConcatStr
  loc_9D121B: FStStrNoPop var_9C
  loc_9D121E: FLdI2 CodiRete
  loc_9D1221: CStrUI1
  loc_9D1223: FStStrNoPop var_A0
  loc_9D1226: ConcatStr
  loc_9D1227: FStStrNoPop var_A4
  loc_9D122A: Call EjecutarRsCls(from_stack_1v)
  loc_9D122F: FFreeStr var_8C = "": var_90 = "": ActualizaUlceRete = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9D1240: FLdRfVar var_CC
  loc_9D1243: FLdRfVar var_BC
  loc_9D1246: LitVarStr var_B8, "UlceRete"
  loc_9D124B: PopAdLdVar
  loc_9D124C: FLdRfVar var_A8
  loc_9D124F: FLdPr Me
  loc_9D1252: MemLdPr global_56
  loc_9D1255:  = Me.Fields
  loc_9D125A: FLdPr var_A8
  loc_9D125D: from_stack_2 = Me.Item(from_stack_1)
  loc_9D1262: FLdPr var_BC
  loc_9D1265:  = Me.Value
  loc_9D126A: FLdRfVar var_CC
  loc_9D126D: CI4Var
  loc_9D126F: FStR4 var_88
  loc_9D1272: FFreeAd var_A8 = ""
  loc_9D1279: FFree1Var var_CC = ""
  loc_9D127C: ExitProcCbHresult
End Function

Private Function Proc_31_33_974578() '974578
  'Data Table: 4167A8
  loc_974554: LitStr "Primary"
  loc_974557: FLdPr Me
  loc_97455A: LateIdLdVar var_94 DispID_4 0
  loc_974561: CastAdVar Me
  loc_974565: FStAdFunc var_98
  loc_974568: FLdPr var_98
  loc_974570: FFree1Ad var_98
  loc_974573: FFree1Var var_94 = ""
  loc_974576: ExitProcHresult
End Function

Private Function Proc_31_34_969C3C(arg_C) '969C3C
  'Data Table: 4167A8
  loc_969C20: ILdI4 arg_C
  loc_969C23: FStStrCopy var_88
  loc_969C26: ILdRf var_88
  loc_969C29: LitStr "Primary"
  loc_969C2C: EqStr
  loc_969C2E: BranchF loc_969C3B
  loc_969C31: FLdPr Me
  loc_969C34: MemLdStr RsFrm
  loc_969C37: IStAd
  loc_969C3B: ExitProcHresult
End Function
