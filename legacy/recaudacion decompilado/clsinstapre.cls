VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsinstapre"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '431668
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '431677
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '431686
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '9FD0B8
  'Data Table: 4312B4
  loc_9FD088: FLdRfVar var_88
  loc_9FD08B: FLdPr Me
  loc_9FD08E: MemLdPr RsFrm
  loc_9FD091:  = Me.RecordCount
  loc_9FD096: ILdRf var_88
  loc_9FD099: LitI4 0
  loc_9FD09E: GtI4
  loc_9FD09F: BranchF loc_9FD0B4
  loc_9FD0A2: LitVar_Missing var_98
  loc_9FD0A5: PopAdLdVar
  loc_9FD0A6: ILdI4 iCantidad
  loc_9FD0A9: FLdPr Me
  loc_9FD0AC: MemLdPr RsFrm
  loc_9FD0AF: Me.Move from_stack_1, from_stack_2
  loc_9FD0B4: ExitProcHresult
  loc_9FD0B5: LdPrVar
End Sub

Public Sub MoveFirst() '9EB414
  'Data Table: 4312B4
  loc_9EB3EC: FLdRfVar var_88
  loc_9EB3EF: FLdPr Me
  loc_9EB3F2: MemLdPr RsFrm
  loc_9EB3F5:  = Me.RecordCount
  loc_9EB3FA: ILdRf var_88
  loc_9EB3FD: LitI4 0
  loc_9EB402: GtI4
  loc_9EB403: BranchF loc_9EB411
  loc_9EB406: FLdPr Me
  loc_9EB409: MemLdPr RsFrm
  loc_9EB40C: Me.MoveFirst
  loc_9EB411: ExitProcHresult
End Sub

Public Sub MoveLast() '9EB25C
  'Data Table: 4312B4
  loc_9EB234: FLdRfVar var_88
  loc_9EB237: FLdPr Me
  loc_9EB23A: MemLdPr RsFrm
  loc_9EB23D:  = Me.RecordCount
  loc_9EB242: ILdRf var_88
  loc_9EB245: LitI4 0
  loc_9EB24A: GtI4
  loc_9EB24B: BranchF loc_9EB259
  loc_9EB24E: FLdPr Me
  loc_9EB251: MemLdPr RsFrm
  loc_9EB254: Me.MoveLast
  loc_9EB259: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6E278
  'Data Table: 4312B4
  loc_A6E200: FLdRfVar var_86
  loc_A6E203: FLdPr Me
  loc_A6E206: MemLdPr RsFrm
  loc_A6E209:  = Me.EOF
  loc_A6E20E: FLdI2 var_86
  loc_A6E211: NotI4
  loc_A6E212: FLdRfVar var_8C
  loc_A6E215: FLdPr Me
  loc_A6E218: MemLdPr RsFrm
  loc_A6E21B:  = Me.RecordCount
  loc_A6E220: ILdRf var_8C
  loc_A6E223: LitI4 0
  loc_A6E228: GtI4
  loc_A6E229: AndI4
  loc_A6E22A: BranchF loc_A6E238
  loc_A6E22D: FLdPr Me
  loc_A6E230: MemLdPr RsFrm
  loc_A6E233: Me.MoveNext
  loc_A6E238: FLdRfVar var_86
  loc_A6E23B: FLdPr Me
  loc_A6E23E: MemLdPr RsFrm
  loc_A6E241:  = Me.EOF
  loc_A6E246: FLdI2 var_86
  loc_A6E249: FLdRfVar var_8C
  loc_A6E24C: FLdPr Me
  loc_A6E24F: MemLdPr RsFrm
  loc_A6E252:  = Me.RecordCount
  loc_A6E257: ILdRf var_8C
  loc_A6E25A: LitI4 0
  loc_A6E25F: GtI4
  loc_A6E260: AndI4
  loc_A6E261: BranchF loc_A6E274
  loc_A6E264: ImpAdCallFPR4 Beep()
  loc_A6E269: FLdPr Me
  loc_A6E26C: MemLdPr RsFrm
  loc_A6E26F: Me.MoveLast
  loc_A6E274: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1920
  'Data Table: 4312B4
  loc_9B1914: FLdPr Me
  loc_9B1917: MemLdPr RsFrm
  loc_9B191A: Me.MoveNext
  loc_9B191F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B90D8
  'Data Table: 4312B4
  loc_9B90C4: LitVar_Missing var_94
  loc_9B90C7: PopAdLdVar
  loc_9B90C8: ILdI2 iValor
  loc_9B90CB: CI4UI1
  loc_9B90CC: FLdPr Me
  loc_9B90CF: MemLdPr RsFrm
  loc_9B90D2: Me.Move from_stack_1, from_stack_2
  loc_9B90D7: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6CAD8
  'Data Table: 4312B4
  loc_A6CA60: FLdRfVar var_86
  loc_A6CA63: FLdPr Me
  loc_A6CA66: MemLdPr RsFrm
  loc_A6CA69:  = Me.BOF
  loc_A6CA6E: FLdI2 var_86
  loc_A6CA71: NotI4
  loc_A6CA72: FLdRfVar var_8C
  loc_A6CA75: FLdPr Me
  loc_A6CA78: MemLdPr RsFrm
  loc_A6CA7B:  = Me.RecordCount
  loc_A6CA80: ILdRf var_8C
  loc_A6CA83: LitI4 0
  loc_A6CA88: GtI4
  loc_A6CA89: AndI4
  loc_A6CA8A: BranchF loc_A6CA98
  loc_A6CA8D: FLdPr Me
  loc_A6CA90: MemLdPr RsFrm
  loc_A6CA93: Me.MovePrevious
  loc_A6CA98: FLdRfVar var_86
  loc_A6CA9B: FLdPr Me
  loc_A6CA9E: MemLdPr RsFrm
  loc_A6CAA1:  = Me.BOF
  loc_A6CAA6: FLdI2 var_86
  loc_A6CAA9: FLdRfVar var_8C
  loc_A6CAAC: FLdPr Me
  loc_A6CAAF: MemLdPr RsFrm
  loc_A6CAB2:  = Me.RecordCount
  loc_A6CAB7: ILdRf var_8C
  loc_A6CABA: LitI4 0
  loc_A6CABF: GtI4
  loc_A6CAC0: AndI4
  loc_A6CAC1: BranchF loc_A6CAD4
  loc_A6CAC4: ImpAdCallFPR4 Beep()
  loc_A6CAC9: FLdPr Me
  loc_A6CACC: MemLdPr RsFrm
  loc_A6CACF: Me.MoveFirst
  loc_A6CAD4: ExitProcHresult
End Sub

Public Property Get EOF() '9D1B3C
  'Data Table: 4312B4
  loc_9D1B20: FLdRfVar var_88
  loc_9D1B23: FLdPr Me
  loc_9D1B26: MemLdPr RsFrm
  loc_9D1B29:  = Me.EOF
  loc_9D1B2E: FLdI2 var_88
  loc_9D1B31: FStI2 var_86
  loc_9D1B34: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D2684
  'Data Table: 4312B4
  loc_9D2668: FLdRfVar var_88
  loc_9D266B: FLdPr Me
  loc_9D266E: MemLdPr RsFrm
  loc_9D2671:  = Me.BOF
  loc_9D2676: FLdI2 var_88
  loc_9D2679: FStI2 var_86
  loc_9D267C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B7A78
  'Data Table: 4312B4
  loc_9B7A68: ILdI4 sOrden
  loc_9B7A6B: FLdPr Me
  loc_9B7A6E: MemLdPr RsFrm
  loc_9B7A71: Me.Sort = from_stack_1
  loc_9B7A76: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E1780
  'Data Table: 4312B4
  loc_9E1760: LitVar_Missing var_94
  loc_9E1763: PopAdLdVar
  loc_9E1764: LitI4 1
  loc_9E1769: LitI4 0
  loc_9E176E: ILdI4 sFind
  loc_9E1771: FLdPr Me
  loc_9E1774: MemLdPr RsFrm
  loc_9E1777: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E177C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B96B0
  'Data Table: 4312B4
  loc_9B969C: ILdI4 sCriterio
  loc_9B969F: CVarStr var_94
  loc_9B96A2: PopAdLdVar
  loc_9B96A3: FLdPr Me
  loc_9B96A6: MemLdPr RsFrm
  loc_9B96A9: Me.Filter = from_stack_1
  loc_9B96AE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D2D0C
  'Data Table: 4312B4
  loc_9D2CF0: FLdRfVar var_8C
  loc_9D2CF3: FLdPr Me
  loc_9D2CF6: MemLdPr RsFrm
  loc_9D2CF9:  = Me.AbsolutePosition
  loc_9D2CFE: ILdRf var_8C
  loc_9D2D01: FStR4 var_88
  loc_9D2D04: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D2F20
  'Data Table: 4312B4
  loc_9D2F04: FLdRfVar var_8C
  loc_9D2F07: FLdPr Me
  loc_9D2F0A: MemLdPr RsFrm
  loc_9D2F0D:  = Me.RecordCount
  loc_9D2F12: ILdRf var_8C
  loc_9D2F15: FStR4 var_88
  loc_9D2F18: ExitProcCbHresult
End Sub

Public Sub AddNew(NumeApre, CodiInju, CodiReca, CodiOfju, FechInap, MoreInap, MoofInap, ObseInap, AutoApre, MbreInap, MbofInap, SecrInap, JuzgInap, MecaInap, HaceRequery) 'B47DA8
  'Data Table: 4312B4
  loc_B47AD8: ILdRf FechInap
  loc_B47ADB: FStStrCopy var_88
  loc_B47ADE: ILdRf ObseInap
  loc_B47AE1: FStStrCopy var_8C
  loc_B47AE4: ILdRf JuzgInap
  loc_B47AE7: FStStrCopy var_90
  loc_B47AEA: ILdRf AddNew0
  loc_B47AED: FStStrCopy var_94
  loc_B47AF0: FLdRfVar var_9C
  loc_B47AF3: FLdUI1
  loc_B47AF7: CI2UI1
  loc_B47AF9: ILdRf NumeApre
  loc_B47AFC: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B47B01: ILdRf var_9C
  loc_B47B04: LitStr vbNullString
  loc_B47B07: NeStr
  loc_B47B09: FFree1Str var_9C
  loc_B47B0C: BranchF loc_B47B1A
  loc_B47B0F: LitStr "La instancia YA EXISTE. Verifique..."
  loc_B47B12: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B47B17: Branch loc_B47DA7
  loc_B47B1A: LitI2_Byte 0
  loc_B47B1C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B47B21: FStFPR8 var_1B0
  loc_B47B24: LitStr "START TRANSACTION; INSERT INTO instapre (NumeApre, CodiInju, CodiReca, CodiOfju, FealInap, FechInap, MoreInap, MoofInap, MbreInap, MbofInap, ObseInap, SecrInap, JuzgInap, MecaInap, AltaUsua) VALUES ("
  loc_B47B27: ILdRf NumeApre
  loc_B47B2A: CStrI4
  loc_B47B2C: FStStrNoPop var_9C
  loc_B47B2F: ConcatStr
  loc_B47B30: FStStrNoPop var_A0
  loc_B47B33: LitStr ","
  loc_B47B36: ConcatStr
  loc_B47B37: FStStrNoPop var_A4
  loc_B47B3A: FLdUI1
  loc_B47B3E: CStrI2
  loc_B47B40: FStStrNoPop var_A8
  loc_B47B43: ConcatStr
  loc_B47B44: FStStrNoPop var_AC
  loc_B47B47: LitStr ","
  loc_B47B4A: ConcatStr
  loc_B47B4B: FStStrNoPop var_B0
  loc_B47B4E: FLdI2 CodiReca
  loc_B47B51: CStrUI1
  loc_B47B53: FStStrNoPop var_B4
  loc_B47B56: ConcatStr
  loc_B47B57: FStStrNoPop var_B8
  loc_B47B5A: LitStr ","
  loc_B47B5D: ConcatStr
  loc_B47B5E: FStStrNoPop var_BC
  loc_B47B61: FLdI2 CodiOfju
  loc_B47B64: CStrUI1
  loc_B47B66: FStStrNoPop var_C0
  loc_B47B69: ConcatStr
  loc_B47B6A: FStStrNoPop var_C4
  loc_B47B6D: LitStr ",'"
  loc_B47B70: ConcatStr
  loc_B47B71: FStStrNoPop var_108
  loc_B47B74: LitI4 1
  loc_B47B79: LitI4 1
  loc_B47B7E: LitVarStr var_F4, "yyyy-mm-dd"
  loc_B47B83: FStVarCopyObj var_104
  loc_B47B86: FLdRfVar var_104
  loc_B47B89: FLdFPR8 var_1B0
  loc_B47B8C: CVarDate var_E4
  loc_B47B90: ImpAdCallI2 Format$(, )
  loc_B47B95: FStStrNoPop var_10C
  loc_B47B98: ConcatStr
  loc_B47B99: FStStrNoPop var_110
  loc_B47B9C: LitStr "','"
  loc_B47B9F: ConcatStr
  loc_B47BA0: FStStrNoPop var_144
  loc_B47BA3: LitI4 1
  loc_B47BA8: LitI4 1
  loc_B47BAD: LitVarStr var_130, "yyyy-mm-dd"
  loc_B47BB2: FStVarCopyObj var_140
  loc_B47BB5: FLdRfVar var_140
  loc_B47BB8: FLdRfVar var_88
  loc_B47BBB: CVarRef
  loc_B47BC0: ImpAdCallI2 Format$(, )
  loc_B47BC5: FStStrNoPop var_148
  loc_B47BC8: ConcatStr
  loc_B47BC9: FStStrNoPop var_14C
  loc_B47BCC: LitStr "',"
  loc_B47BCF: ConcatStr
  loc_B47BD0: FStStrNoPop var_150
  loc_B47BD3: FLdI2 MoreInap
  loc_B47BD6: CStrUI1
  loc_B47BD8: FStStrNoPop var_154
  loc_B47BDB: ConcatStr
  loc_B47BDC: FStStrNoPop var_158
  loc_B47BDF: LitStr ","
  loc_B47BE2: ConcatStr
  loc_B47BE3: FStStrNoPop var_15C
  loc_B47BE6: FLdI2 MoofInap
  loc_B47BE9: CStrUI1
  loc_B47BEB: FStStrNoPop var_160
  loc_B47BEE: ConcatStr
  loc_B47BEF: FStStrNoPop var_164
  loc_B47BF2: LitStr ","
  loc_B47BF5: ConcatStr
  loc_B47BF6: FStStrNoPop var_168
  loc_B47BF9: FLdI2 MbreInap
  loc_B47BFC: CStrUI1
  loc_B47BFE: FStStrNoPop var_16C
  loc_B47C01: ConcatStr
  loc_B47C02: FStStrNoPop var_170
  loc_B47C05: LitStr ","
  loc_B47C08: ConcatStr
  loc_B47C09: FStStrNoPop var_174
  loc_B47C0C: FLdUI1
  loc_B47C10: CStrI2
  loc_B47C12: FStStrNoPop var_178
  loc_B47C15: ConcatStr
  loc_B47C16: FStStrNoPop var_17C
  loc_B47C19: LitStr ",'"
  loc_B47C1C: ConcatStr
  loc_B47C1D: FStStrNoPop var_180
  loc_B47C20: ILdRf var_8C
  loc_B47C23: ConcatStr
  loc_B47C24: FStStrNoPop var_184
  loc_B47C27: LitStr "',"
  loc_B47C2A: ConcatStr
  loc_B47C2B: FStStrNoPop var_188
  loc_B47C2E: FLdI2 SecrInap
  loc_B47C31: CStrUI1
  loc_B47C33: FStStrNoPop var_18C
  loc_B47C36: ConcatStr
  loc_B47C37: FStStrNoPop var_190
  loc_B47C3A: LitStr ",'"
  loc_B47C3D: ConcatStr
  loc_B47C3E: FStStrNoPop var_194
  loc_B47C41: ILdRf var_90
  loc_B47C44: ConcatStr
  loc_B47C45: FStStrNoPop var_198
  loc_B47C48: LitStr "','"
  loc_B47C4B: ConcatStr
  loc_B47C4C: FStStrNoPop var_19C
  loc_B47C4F: ILdRf var_94
  loc_B47C52: ConcatStr
  loc_B47C53: FStStrNoPop var_1A0
  loc_B47C56: LitStr "','"
  loc_B47C59: ConcatStr
  loc_B47C5A: FStStrNoPop var_1A4
  loc_B47C5D: ImpAdLdI4 MemVar_D9302C
  loc_B47C60: ConcatStr
  loc_B47C61: FStStrNoPop var_1A8
  loc_B47C64: LitStr "');"
  loc_B47C67: ConcatStr
  loc_B47C68: FStStr var_98
  loc_B47C6B: FFreeStr var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_108 = "": var_10C = "": var_110 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_B47CBE: FFreeVar var_E4 = "": var_104 = ""
  loc_B47CC7: FLdUI1
  loc_B47CCB: CI2UI1
  loc_B47CCD: LitI2_Byte 3
  loc_B47CCF: EqI2
  loc_B47CD0: BranchF loc_B47D2F
  loc_B47CD3: ILdRf var_98
  loc_B47CD6: LitStr " UPDATE apremio SET AutoApre = "
  loc_B47CD9: ConcatStr
  loc_B47CDA: FStStrNoPop var_9C
  loc_B47CDD: ILdRf AutoApre
  loc_B47CE0: CStrI4
  loc_B47CE2: FStStrNoPop var_A0
  loc_B47CE5: ConcatStr
  loc_B47CE6: FStStrNoPop var_A4
  loc_B47CE9: LitStr ", CodiInju = "
  loc_B47CEC: ConcatStr
  loc_B47CED: FStStrNoPop var_A8
  loc_B47CF0: FLdUI1
  loc_B47CF4: CStrI2
  loc_B47CF6: FStStrNoPop var_AC
  loc_B47CF9: ConcatStr
  loc_B47CFA: FStStrNoPop var_B0
  loc_B47CFD: LitStr " WHERE NumeApre = "
  loc_B47D00: ConcatStr
  loc_B47D01: FStStrNoPop var_B4
  loc_B47D04: ILdRf NumeApre
  loc_B47D07: CStrI4
  loc_B47D09: FStStrNoPop var_B8
  loc_B47D0C: ConcatStr
  loc_B47D0D: FStStrNoPop var_BC
  loc_B47D10: LitStr ";"
  loc_B47D13: ConcatStr
  loc_B47D14: FStStr var_98
  loc_B47D17: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B47D2C: Branch loc_B47D6F
  loc_B47D2F: ILdRf var_98
  loc_B47D32: LitStr " UPDATE apremio SET CodiInju = "
  loc_B47D35: ConcatStr
  loc_B47D36: FStStrNoPop var_9C
  loc_B47D39: FLdUI1
  loc_B47D3D: CStrI2
  loc_B47D3F: FStStrNoPop var_A0
  loc_B47D42: ConcatStr
  loc_B47D43: FStStrNoPop var_A4
  loc_B47D46: LitStr " WHERE NumeApre = "
  loc_B47D49: ConcatStr
  loc_B47D4A: FStStrNoPop var_A8
  loc_B47D4D: ILdRf NumeApre
  loc_B47D50: CStrI4
  loc_B47D52: FStStrNoPop var_AC
  loc_B47D55: ConcatStr
  loc_B47D56: FStStrNoPop var_B0
  loc_B47D59: LitStr ";"
  loc_B47D5C: ConcatStr
  loc_B47D5D: FStStr var_98
  loc_B47D60: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B47D6F: OnErrorGoto loc_B47D97
  loc_B47D72: ILdRf var_98
  loc_B47D75: Call Proc_257_53_A4A7EC()
  loc_B47D7A: LitStr "COMMIT;"
  loc_B47D7D: Call Proc_257_53_A4A7EC()
  loc_B47D82: FLdI2 AddNew4
  loc_B47D85: BranchF loc_B47D96
  loc_B47D88: FLdUI1
  loc_B47D8C: CI2UI1
  loc_B47D8E: ILdRf NumeApre
  loc_B47D91: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B47D96: ExitProcHresult
  loc_B47D97: LitStr "ROLLBACK;"
  loc_B47D9A: Call Proc_257_53_A4A7EC()
  loc_B47D9F: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B47DA2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B47DA7: ExitProcHresult
End Sub

Public Sub AddNewMigracion(NumeApre, CodiInju, FechInap, MoreInap, ObseInap) 'AD2A40
  'Data Table: 4312B4
  loc_AD2954: ILdRf FechInap
  loc_AD2957: FStStrCopy var_88
  loc_AD295A: ILdRf ObseInap
  loc_AD295D: FStStrCopy var_8C
  loc_AD2960: LitStr "INSERT INTO instapre (NumeApre, CodiInju, FealInap, FechInap, MoreInap, ObseInap, CodiUsua) VALUES ("
  loc_AD2963: ILdRf NumeApre
  loc_AD2966: CStrI4
  loc_AD2968: FStStrNoPop var_90
  loc_AD296B: ConcatStr
  loc_AD296C: FStStrNoPop var_94
  loc_AD296F: LitStr ","
  loc_AD2972: ConcatStr
  loc_AD2973: FStStrNoPop var_98
  loc_AD2976: FLdUI1
  loc_AD297A: CStrI2
  loc_AD297C: FStStrNoPop var_9C
  loc_AD297F: ConcatStr
  loc_AD2980: FStStrNoPop var_A0
  loc_AD2983: LitStr ",'"
  loc_AD2986: ConcatStr
  loc_AD2987: FStStrNoPop var_D4
  loc_AD298A: LitI4 1
  loc_AD298F: LitI4 1
  loc_AD2994: LitVarStr var_C0, "yyyy-mm-dd"
  loc_AD2999: FStVarCopyObj var_D0
  loc_AD299C: FLdRfVar var_D0
  loc_AD299F: FLdRfVar var_88
  loc_AD29A2: CVarRef
  loc_AD29A7: ImpAdCallI2 Format$(, )
  loc_AD29AC: FStStrNoPop var_D8
  loc_AD29AF: ConcatStr
  loc_AD29B0: FStStrNoPop var_DC
  loc_AD29B3: LitStr "','"
  loc_AD29B6: ConcatStr
  loc_AD29B7: FStStrNoPop var_110
  loc_AD29BA: LitI4 1
  loc_AD29BF: LitI4 1
  loc_AD29C4: LitVarStr var_FC, "yyyy-mm-dd"
  loc_AD29C9: FStVarCopyObj var_10C
  loc_AD29CC: FLdRfVar var_10C
  loc_AD29CF: FLdRfVar var_88
  loc_AD29D2: CVarRef
  loc_AD29D7: ImpAdCallI2 Format$(, )
  loc_AD29DC: FStStrNoPop var_114
  loc_AD29DF: ConcatStr
  loc_AD29E0: FStStrNoPop var_118
  loc_AD29E3: LitStr "',"
  loc_AD29E6: ConcatStr
  loc_AD29E7: FStStrNoPop var_11C
  loc_AD29EA: FLdI2 MoreInap
  loc_AD29ED: CStrUI1
  loc_AD29EF: FStStrNoPop var_120
  loc_AD29F2: ConcatStr
  loc_AD29F3: FStStrNoPop var_124
  loc_AD29F6: LitStr ",'"
  loc_AD29F9: ConcatStr
  loc_AD29FA: FStStrNoPop var_128
  loc_AD29FD: ILdRf var_8C
  loc_AD2A00: ConcatStr
  loc_AD2A01: FStStrNoPop var_12C
  loc_AD2A04: LitStr "','migra');"
  loc_AD2A07: ConcatStr
  loc_AD2A08: FStStrNoPop var_130
  loc_AD2A0B: Call EjecutarRs2(from_stack_1v)
  loc_AD2A10: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AD2A35: FFreeVar var_D0 = ""
  loc_AD2A3C: ExitProcHresult
End Sub

Public Sub Modificar(NumeApre, CodiInju, CodiReca, CodiOfju, FechInap, MoreInap, MoofInap, ObseInap, MbreInap, MbofInap, SecrInap, JuzgInap, MecaInap) 'B105AC
  'Data Table: 4312B4
  loc_B103FC: FDupVar
  loc_B10402: ILdRf SecrInap
  loc_B10405: FStStrCopy var_98
  loc_B10408: ILdRf Modificar4
  loc_B1040B: FStStrCopy var_9C
  loc_B1040E: ILdRf Modificar8
  loc_B10411: FStStrCopy var_A0
  loc_B10414: FLdRfVar var_A4
  loc_B10417: ILdRf CodiInju
  loc_B1041A: CI2I4
  loc_B1041B: ILdRf NumeApre
  loc_B1041E: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B10423: ILdRf var_A4
  loc_B10426: LitStr vbNullString
  loc_B10429: EqStr
  loc_B1042B: FFree1Str var_A4
  loc_B1042E: BranchF loc_B1043C
  loc_B10431: LitStr "La instancia del apremio NO EXISTE. Verifique..."
  loc_B10434: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B10439: Branch loc_B1059C
  loc_B1043C: LitStr " UPDATE instapre SET CodiReca = "
  loc_B1043F: FLdI2 CodiReca
  loc_B10442: CStrUI1
  loc_B10444: FStStrNoPop var_A4
  loc_B10447: ConcatStr
  loc_B10448: FStStrNoPop var_A8
  loc_B1044B: LitStr ", CodiOfju = "
  loc_B1044E: ConcatStr
  loc_B1044F: FStStrNoPop var_AC
  loc_B10452: FLdI2 CodiOfju
  loc_B10455: CStrUI1
  loc_B10457: FStStrNoPop var_B0
  loc_B1045A: ConcatStr
  loc_B1045B: FStStrNoPop var_B4
  loc_B1045E: LitStr ", FechInap='"
  loc_B10461: ConcatStr
  loc_B10462: FStStrNoPop var_D8
  loc_B10465: LitI4 1
  loc_B1046A: LitI4 1
  loc_B1046F: LitVarStr var_C4, "yyyy-mm-dd"
  loc_B10474: FStVarCopyObj var_D4
  loc_B10477: FLdRfVar var_D4
  loc_B1047A: FLdRfVar var_94
  loc_B1047D: ImpAdCallI2 Format$(, )
  loc_B10482: FStStrNoPop var_DC
  loc_B10485: ConcatStr
  loc_B10486: FStStrNoPop var_E0
  loc_B10489: LitStr "', MoreInap = "
  loc_B1048C: ConcatStr
  loc_B1048D: FStStrNoPop var_E4
  loc_B10490: FLdI2 MbreInap
  loc_B10493: CStrUI1
  loc_B10495: FStStrNoPop var_E8
  loc_B10498: ConcatStr
  loc_B10499: FStStrNoPop var_EC
  loc_B1049C: LitStr ", MoofInap = "
  loc_B1049F: ConcatStr
  loc_B104A0: FStStrNoPop var_F0
  loc_B104A3: FLdI2 MbofInap
  loc_B104A6: CStrUI1
  loc_B104A8: FStStrNoPop var_F4
  loc_B104AB: ConcatStr
  loc_B104AC: FStStrNoPop var_F8
  loc_B104AF: LitStr ", MbreInap = "
  loc_B104B2: ConcatStr
  loc_B104B3: FStStrNoPop var_FC
  loc_B104B6: ILdI2 JuzgInap
  loc_B104B9: CStrUI1
  loc_B104BB: FStStrNoPop var_100
  loc_B104BE: ConcatStr
  loc_B104BF: FStStrNoPop var_104
  loc_B104C2: LitStr ", MbofInap = "
  loc_B104C5: ConcatStr
  loc_B104C6: FStStrNoPop var_108
  loc_B104C9: FLdUI1
  loc_B104CD: CStrI2
  loc_B104CF: FStStrNoPop var_10C
  loc_B104D2: ConcatStr
  loc_B104D3: FStStrNoPop var_110
  loc_B104D6: LitStr ", SecrInap = "
  loc_B104D9: ConcatStr
  loc_B104DA: FStStrNoPop var_114
  loc_B104DD: FLdI2 Modificar0
  loc_B104E0: CStrUI1
  loc_B104E2: FStStrNoPop var_118
  loc_B104E5: ConcatStr
  loc_B104E6: FStStrNoPop var_11C
  loc_B104E9: LitStr ", JuzgInap = '"
  loc_B104EC: ConcatStr
  loc_B104ED: FStStrNoPop var_120
  loc_B104F0: ILdRf var_9C
  loc_B104F3: ConcatStr
  loc_B104F4: FStStrNoPop var_124
  loc_B104F7: LitStr "', MecaInap = '"
  loc_B104FA: ConcatStr
  loc_B104FB: FStStrNoPop var_128
  loc_B104FE: ILdRf var_A0
  loc_B10501: ConcatStr
  loc_B10502: FStStrNoPop var_12C
  loc_B10505: LitStr "', ObseInap ='"
  loc_B10508: ConcatStr
  loc_B10509: FStStrNoPop var_130
  loc_B1050C: ILdRf var_98
  loc_B1050F: ConcatStr
  loc_B10510: FStStrNoPop var_134
  loc_B10513: LitStr "', ModiUsua = '"
  loc_B10516: ConcatStr
  loc_B10517: FStStrNoPop var_138
  loc_B1051A: ImpAdLdI4 MemVar_D9302C
  loc_B1051D: ConcatStr
  loc_B1051E: FStStrNoPop var_13C
  loc_B10521: LitStr "', ModiFeho = now() WHERE NumeApre="
  loc_B10524: ConcatStr
  loc_B10525: FStStrNoPop var_140
  loc_B10528: ILdRf NumeApre
  loc_B1052B: CStrI4
  loc_B1052D: FStStrNoPop var_144
  loc_B10530: ConcatStr
  loc_B10531: FStStrNoPop var_148
  loc_B10534: LitStr " AND CodiInju="
  loc_B10537: ConcatStr
  loc_B10538: FStStrNoPop var_14C
  loc_B1053B: ILdRf CodiInju
  loc_B1053E: CStrI4
  loc_B10540: FStStrNoPop var_150
  loc_B10543: ConcatStr
  loc_B10544: FStStrNoPop var_154
  loc_B10547: Call EjecutarRs2(from_stack_1v)
  loc_B1054C: FFreeStr var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B10599: FFree1Var var_D4 = ""
  loc_B1059C: ILdRf CodiInju
  loc_B1059F: CI2I4
  loc_B105A0: ILdRf NumeApre
  loc_B105A3: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_B105A8: ExitProcHresult
End Sub

Public Sub Delete(NumeApre, CodiInju) 'AD4D2C
  'Data Table: 4312B4
  loc_AD4C14: FLdRfVar var_90
  loc_AD4C17: ILdRf CodiInju
  loc_AD4C1A: CI2I4
  loc_AD4C1B: ILdRf NumeApre
  loc_AD4C1E: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AD4C23: ILdRf var_90
  loc_AD4C26: LitStr vbNullString
  loc_AD4C29: EqStr
  loc_AD4C2B: FFree1Str var_90
  loc_AD4C2E: BranchF loc_AD4C3C
  loc_AD4C31: LitStr "La instancia del apremio NO EXISTE. Verifique..."
  loc_AD4C34: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD4C39: Branch loc_AD4D2A
  loc_AD4C3C: FLdRfVar var_94
  loc_AD4C3F: FLdPr Me
  loc_AD4C42: MemLdPr RsFrm
  loc_AD4C45:  = Me.AbsolutePosition
  loc_AD4C4A: ILdRf var_94
  loc_AD4C4D: FStR4 var_88
  loc_AD4C50: LitStr "START TRANSACTION; DELETE FROM instapre WHERE NumeApre = "
  loc_AD4C53: ILdRf NumeApre
  loc_AD4C56: CStrI4
  loc_AD4C58: FStStrNoPop var_90
  loc_AD4C5B: ConcatStr
  loc_AD4C5C: FStStrNoPop var_98
  loc_AD4C5F: LitStr " AND CodiInju = "
  loc_AD4C62: ConcatStr
  loc_AD4C63: FStStrNoPop var_9C
  loc_AD4C66: ILdRf CodiInju
  loc_AD4C69: CStrI4
  loc_AD4C6B: FStStrNoPop var_A0
  loc_AD4C6E: ConcatStr
  loc_AD4C6F: FStStrNoPop var_A4
  loc_AD4C72: LitStr ";"
  loc_AD4C75: ConcatStr
  loc_AD4C76: FStStrNoPop var_A8
  loc_AD4C79: LitStr " UPDATE apremio SET CodiInju = "
  loc_AD4C7C: ConcatStr
  loc_AD4C7D: FStStrNoPop var_AC
  loc_AD4C80: ILdRf CodiInju
  loc_AD4C83: LitI4 1
  loc_AD4C88: SubI4
  loc_AD4C89: CStrI4
  loc_AD4C8B: FStStrNoPop var_B0
  loc_AD4C8E: ConcatStr
  loc_AD4C8F: FStStrNoPop var_B4
  loc_AD4C92: LitStr " WHERE NumeApre = "
  loc_AD4C95: ConcatStr
  loc_AD4C96: FStStrNoPop var_B8
  loc_AD4C99: ILdRf NumeApre
  loc_AD4C9C: CStrI4
  loc_AD4C9E: FStStrNoPop var_BC
  loc_AD4CA1: ConcatStr
  loc_AD4CA2: FStStr var_8C
  loc_AD4CA5: FFreeStr var_90 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_AD4CBE: OnErrorGoto loc_AD4D1A
  loc_AD4CC1: ILdRf var_8C
  loc_AD4CC4: Call Proc_257_53_A4A7EC()
  loc_AD4CC9: LitStr "COMMIT;"
  loc_AD4CCC: Call Proc_257_53_A4A7EC()
  loc_AD4CD1: Call Requery()
  loc_AD4CD6: FLdRfVar var_94
  loc_AD4CD9: FLdPr Me
  loc_AD4CDC: MemLdPr RsFrm
  loc_AD4CDF:  = Me.RecordCount
  loc_AD4CE4: ILdRf var_94
  loc_AD4CE7: LitI4 0
  loc_AD4CEC: GtI4
  loc_AD4CED: BranchF loc_AD4D19
  loc_AD4CF0: Call MoveFirst()
  loc_AD4CF5: ILdRf var_88
  loc_AD4CF8: LitI4 1
  loc_AD4CFD: GtI4
  loc_AD4CFE: BranchF loc_AD4D19
  loc_AD4D01: LitVar_Missing var_CC
  loc_AD4D04: PopAdLdVar
  loc_AD4D05: ILdRf var_88
  loc_AD4D08: LitI4 2
  loc_AD4D0D: SubI4
  loc_AD4D0E: FLdPr Me
  loc_AD4D11: MemLdPr RsFrm
  loc_AD4D14: Me.Move from_stack_1, from_stack_2
  loc_AD4D19: ExitProcHresult
  loc_AD4D1A: LitStr "ROLLBACK;"
  loc_AD4D1D: Call Proc_257_53_A4A7EC()
  loc_AD4D22: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AD4D25: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD4D2A: ExitProcHresult
End Sub

Public Sub Requery() '9E5154
  'Data Table: 4312B4
  loc_9E5130: LitI4 -1
  loc_9E5135: FLdPr Me
  loc_9E5138: MemLdPr RsFrm
  loc_9E513B: Me.Requery from_stack_1
  loc_9E5140: LitVarStr var_94, "Primary"
  loc_9E5145: PopAdLdVar
  loc_9E5146: FLdPr Me
  loc_9E5149: LateIdCall
  loc_9E5151: ExitProcHresult
End Sub

Public Sub Encontrar(NumeApre, CodiInju) 'A77FC4
  'Data Table: 4312B4
  loc_A77F48: Call Requery()
  loc_A77F4D: LitStr "NumeApre = "
  loc_A77F50: ILdRf NumeApre
  loc_A77F53: CStrI4
  loc_A77F55: FStStrNoPop var_88
  loc_A77F58: ConcatStr
  loc_A77F59: PopTmpLdAdStr
  loc_A77F5D: Call Find(from_stack_1v)
  loc_A77F62: FFreeStr var_88 = ""
  loc_A77F69: LitStr "CodiInju = "
  loc_A77F6C: FLdI2 CodiInju
  loc_A77F6F: CStrUI1
  loc_A77F71: FStStrNoPop var_88
  loc_A77F74: ConcatStr
  loc_A77F75: PopTmpLdAdStr
  loc_A77F79: Call Find(from_stack_1v)
  loc_A77F7E: FFreeStr var_88 = ""
  loc_A77F85: FLdRfVar var_90
  loc_A77F88: FLdPr Me
  loc_A77F8B: MemLdPr RsFrm
  loc_A77F8E:  = Me.RecordCount
  loc_A77F93: ILdRf var_90
  loc_A77F96: LitI4 0
  loc_A77F9B: GtI4
  loc_A77F9C: FLdRfVar var_94
  loc_A77F9F: FLdPr Me
  loc_A77FA2: MemLdPr RsFrm
  loc_A77FA5:  = Me.AbsolutePosition
  loc_A77FAA: ILdRf var_94
  loc_A77FAD: LitI4 -3
  loc_A77FB2: EqI4
  loc_A77FB3: AndI4
  loc_A77FB4: BranchF loc_A77FC2
  loc_A77FB7: FLdPr Me
  loc_A77FBA: MemLdPr RsFrm
  loc_A77FBD: Me.MoveLast
  loc_A77FC2: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5DB70
  'Data Table: 4312B4
  loc_A5DB0C: ILdRf sSelect
  loc_A5DB0F: FStStrCopy var_88
  loc_A5DB12: LitNothing
  loc_A5DB14: CastAd
  loc_A5DB17: FStAdFuncNoPop
  loc_A5DB1A: FLdPr Me
  loc_A5DB1D: MemStAd
  loc_A5DB21: FFree1Ad var_8C
  loc_A5DB24: New Recordset
  loc_A5DB28: FStAdFuncNoPop
  loc_A5DB2B: FLdPr Me
  loc_A5DB2E: MemStAd
  loc_A5DB32: FFree1Ad var_8C
  loc_A5DB35: LitI4 -1
  loc_A5DB3A: LitI4 3
  loc_A5DB3F: LitI4 3
  loc_A5DB44: ImpAdLdI4 MemVar_D9301C
  loc_A5DB47: CVarAd
  loc_A5DB4B: PopAdLdVar
  loc_A5DB4C: ILdRf var_88
  loc_A5DB4F: CVarStr var_9C
  loc_A5DB52: PopAdLdVar
  loc_A5DB53: FLdPr Me
  loc_A5DB56: MemLdPr RsFrm
  loc_A5DB59: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5DB5E: LitVarStr var_9C, "Primary"
  loc_A5DB63: PopAdLdVar
  loc_A5DB64: FLdPr Me
  loc_A5DB67: LateIdCall
  loc_A5DB6F: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A4A1E8
  'Data Table: 4312B4
  loc_A4A194: ILdRf sSelect
  loc_A4A197: FStStrCopy var_88
  loc_A4A19A: LitNothing
  loc_A4A19C: CastAd
  loc_A4A19F: FStAdFuncNoPop
  loc_A4A1A2: FLdPr Me
  loc_A4A1A5: MemStAd
  loc_A4A1A9: FFree1Ad var_8C
  loc_A4A1AC: New Recordset
  loc_A4A1B0: FStAdFuncNoPop
  loc_A4A1B3: FLdPr Me
  loc_A4A1B6: MemStAd
  loc_A4A1BA: FFree1Ad var_8C
  loc_A4A1BD: LitI4 -1
  loc_A4A1C2: LitI4 3
  loc_A4A1C7: LitI4 3
  loc_A4A1CC: ImpAdLdI4 MemVar_D9301C
  loc_A4A1CF: CVarAd
  loc_A4A1D3: PopAdLdVar
  loc_A4A1D4: ILdRf var_88
  loc_A4A1D7: CVarStr var_9C
  loc_A4A1DA: PopAdLdVar
  loc_A4A1DB: FLdPr Me
  loc_A4A1DE: MemLdPr global_68
  loc_A4A1E1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4A1E6: ExitProcHresult
End Sub

Public Property Get DataSource() '9F11D8
  'Data Table: 4312B4
  loc_9F11B4: ZeroRetVal
  loc_9F11B6: FLdRfVar var_8C
  loc_9F11B9: FLdPr Me
  loc_9F11BC: MemLdPr RsFrm
  loc_9F11BF:  = Me.DataSource
  loc_9F11C4: ILdRf var_8C
  loc_9F11C7: CastAd
  loc_9F11CA: FStAdFunc var_88
  loc_9F11CD: FFree1Ad var_8C
  loc_9F11D0: ExitProcCbHresult
End Sub

Public Property Get NumeApre() 'A2B3A4
  'Data Table: 4312B4
  loc_A2B360: FLdRfVar var_B0
  loc_A2B363: FLdRfVar var_A0
  loc_A2B366: LitVarStr var_9C, "NumeApre"
  loc_A2B36B: PopAdLdVar
  loc_A2B36C: FLdRfVar var_8C
  loc_A2B36F: FLdPr Me
  loc_A2B372: MemLdPr RsFrm
  loc_A2B375:  = Me.Fields
  loc_A2B37A: FLdPr var_8C
  loc_A2B37D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B382: FLdPr var_A0
  loc_A2B385:  = Me.Value
  loc_A2B38A: FLdRfVar var_B0
  loc_A2B38D: CI4Var
  loc_A2B38F: FStR4 var_88
  loc_A2B392: FFreeAd var_8C = ""
  loc_A2B399: FFree1Var var_B0 = ""
  loc_A2B39C: ExitProcCbHresult
End Sub

Public Property Get CodiInju() 'A2B424
  'Data Table: 4312B4
  loc_A2B3E0: FLdRfVar var_B0
  loc_A2B3E3: FLdRfVar var_A0
  loc_A2B3E6: LitVarStr var_9C, "CodiInju"
  loc_A2B3EB: PopAdLdVar
  loc_A2B3EC: FLdRfVar var_8C
  loc_A2B3EF: FLdPr Me
  loc_A2B3F2: MemLdPr RsFrm
  loc_A2B3F5:  = Me.Fields
  loc_A2B3FA: FLdPr var_8C
  loc_A2B3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B402: FLdPr var_A0
  loc_A2B405:  = Me.Value
  loc_A2B40A: FLdRfVar var_B0
  loc_A2B40D: CI2Var
  loc_A2B40E: FStI2 var_86
  loc_A2B411: FFreeAd var_8C = ""
  loc_A2B418: FFree1Var var_B0 = ""
  loc_A2B41B: ExitProcCbHresult
End Sub

Public Property Get FealInap() 'A3D978
  'Data Table: 4312B4
  loc_A3D934: ZeroRetVal
  loc_A3D936: FLdRfVar var_B0
  loc_A3D939: FLdRfVar var_A0
  loc_A3D93C: LitVarStr var_9C, "FealInap"
  loc_A3D941: PopAdLdVar
  loc_A3D942: FLdRfVar var_8C
  loc_A3D945: FLdPr Me
  loc_A3D948: MemLdPr RsFrm
  loc_A3D94B:  = Me.Fields
  loc_A3D950: FLdPr var_8C
  loc_A3D953: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D958: FLdPr var_A0
  loc_A3D95B:  = Me.Value
  loc_A3D960: FLdRfVar var_B0
  loc_A3D963: CStrVarTmp
  loc_A3D964: FStStr var_88
  loc_A3D967: FFreeAd var_8C = ""
  loc_A3D96E: FFree1Var var_B0 = ""
  loc_A3D971: ExitProcCbHresult
End Sub

Public Property Get FechInap() 'A3D8F4
  'Data Table: 4312B4
  loc_A3D8B0: ZeroRetVal
  loc_A3D8B2: FLdRfVar var_B0
  loc_A3D8B5: FLdRfVar var_A0
  loc_A3D8B8: LitVarStr var_9C, "FechInap"
  loc_A3D8BD: PopAdLdVar
  loc_A3D8BE: FLdRfVar var_8C
  loc_A3D8C1: FLdPr Me
  loc_A3D8C4: MemLdPr RsFrm
  loc_A3D8C7:  = Me.Fields
  loc_A3D8CC: FLdPr var_8C
  loc_A3D8CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3D8D4: FLdPr var_A0
  loc_A3D8D7:  = Me.Value
  loc_A3D8DC: FLdRfVar var_B0
  loc_A3D8DF: CStrVarTmp
  loc_A3D8E0: FStStr var_88
  loc_A3D8E3: FFreeAd var_8C = ""
  loc_A3D8EA: FFree1Var var_B0 = ""
  loc_A3D8ED: ExitProcCbHresult
End Sub

Public Property Get MoreInap() 'A2B4A4
  'Data Table: 4312B4
  loc_A2B460: FLdRfVar var_B0
  loc_A2B463: FLdRfVar var_A0
  loc_A2B466: LitVarStr var_9C, "MoreInap"
  loc_A2B46B: PopAdLdVar
  loc_A2B46C: FLdRfVar var_8C
  loc_A2B46F: FLdPr Me
  loc_A2B472: MemLdPr RsFrm
  loc_A2B475:  = Me.Fields
  loc_A2B47A: FLdPr var_8C
  loc_A2B47D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B482: FLdPr var_A0
  loc_A2B485:  = Me.Value
  loc_A2B48A: FLdRfVar var_B0
  loc_A2B48D: CI2Var
  loc_A2B48E: FStI2 var_86
  loc_A2B491: FFreeAd var_8C = ""
  loc_A2B498: FFree1Var var_B0 = ""
  loc_A2B49B: ExitProcCbHresult
End Sub

Public Property Get MoofInap() 'A2B524
  'Data Table: 4312B4
  loc_A2B4E0: FLdRfVar var_B0
  loc_A2B4E3: FLdRfVar var_A0
  loc_A2B4E6: LitVarStr var_9C, "MoofInap"
  loc_A2B4EB: PopAdLdVar
  loc_A2B4EC: FLdRfVar var_8C
  loc_A2B4EF: FLdPr Me
  loc_A2B4F2: MemLdPr RsFrm
  loc_A2B4F5:  = Me.Fields
  loc_A2B4FA: FLdPr var_8C
  loc_A2B4FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B502: FLdPr var_A0
  loc_A2B505:  = Me.Value
  loc_A2B50A: FLdRfVar var_B0
  loc_A2B50D: CI2Var
  loc_A2B50E: FStI2 var_86
  loc_A2B511: FFreeAd var_8C = ""
  loc_A2B518: FFree1Var var_B0 = ""
  loc_A2B51B: ExitProcCbHresult
End Sub

Public Property Get ObseInap() 'A3F238
  'Data Table: 4312B4
  loc_A3F1F4: ZeroRetVal
  loc_A3F1F6: FLdRfVar var_B0
  loc_A3F1F9: FLdRfVar var_A0
  loc_A3F1FC: LitVarStr var_9C, "ObseInap"
  loc_A3F201: PopAdLdVar
  loc_A3F202: FLdRfVar var_8C
  loc_A3F205: FLdPr Me
  loc_A3F208: MemLdPr RsFrm
  loc_A3F20B:  = Me.Fields
  loc_A3F210: FLdPr var_8C
  loc_A3F213: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F218: FLdPr var_A0
  loc_A3F21B:  = Me.Value
  loc_A3F220: FLdRfVar var_B0
  loc_A3F223: CStrVarTmp
  loc_A3F224: FStStr var_88
  loc_A3F227: FFreeAd var_8C = ""
  loc_A3F22E: FFree1Var var_B0 = ""
  loc_A3F231: ExitProcCbHresult
End Sub

Public Property Get DetaInju() 'A3F2BC
  'Data Table: 4312B4
  loc_A3F278: ZeroRetVal
  loc_A3F27A: FLdRfVar var_B0
  loc_A3F27D: FLdRfVar var_A0
  loc_A3F280: LitVarStr var_9C, "DetaInju"
  loc_A3F285: PopAdLdVar
  loc_A3F286: FLdRfVar var_8C
  loc_A3F289: FLdPr Me
  loc_A3F28C: MemLdPr RsFrm
  loc_A3F28F:  = Me.Fields
  loc_A3F294: FLdPr var_8C
  loc_A3F297: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F29C: FLdPr var_A0
  loc_A3F29F:  = Me.Value
  loc_A3F2A4: FLdRfVar var_B0
  loc_A3F2A7: CStrVarTmp
  loc_A3F2A8: FStStr var_88
  loc_A3F2AB: FFreeAd var_8C = ""
  loc_A3F2B2: FFree1Var var_B0 = ""
  loc_A3F2B5: ExitProcCbHresult
End Sub

Public Property Get AutoApre() 'A3DE1C
  'Data Table: 4312B4
  loc_A3DDD8: ZeroRetVal
  loc_A3DDDA: FLdRfVar var_B0
  loc_A3DDDD: FLdRfVar var_A0
  loc_A3DDE0: LitVarStr var_9C, "AutoApre"
  loc_A3DDE5: PopAdLdVar
  loc_A3DDE6: FLdRfVar var_8C
  loc_A3DDE9: FLdPr Me
  loc_A3DDEC: MemLdPr RsFrm
  loc_A3DDEF:  = Me.Fields
  loc_A3DDF4: FLdPr var_8C
  loc_A3DDF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3DDFC: FLdPr var_A0
  loc_A3DDFF:  = Me.Value
  loc_A3DE04: FLdRfVar var_B0
  loc_A3DE07: CStrVarTmp
  loc_A3DE08: FStStr var_88
  loc_A3DE0B: FFreeAd var_8C = ""
  loc_A3DE12: FFree1Var var_B0 = ""
  loc_A3DE15: ExitProcCbHresult
End Sub

Public Property Get expcar() 'A3F448
  'Data Table: 4312B4
  loc_A3F404: ZeroRetVal
  loc_A3F406: FLdRfVar var_B0
  loc_A3F409: FLdRfVar var_A0
  loc_A3F40C: LitVarStr var_9C, "expcar"
  loc_A3F411: PopAdLdVar
  loc_A3F412: FLdRfVar var_8C
  loc_A3F415: FLdPr Me
  loc_A3F418: MemLdPr RsFrm
  loc_A3F41B:  = Me.Fields
  loc_A3F420: FLdPr var_8C
  loc_A3F423: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F428: FLdPr var_A0
  loc_A3F42B:  = Me.Value
  loc_A3F430: FLdRfVar var_B0
  loc_A3F433: CStrVarTmp
  loc_A3F434: FStStr var_88
  loc_A3F437: FFreeAd var_8C = ""
  loc_A3F43E: FFree1Var var_B0 = ""
  loc_A3F441: ExitProcCbHresult
End Sub

Public Property Get mondem() 'A2B624
  'Data Table: 4312B4
  loc_A2B5E0: FLdRfVar var_B4
  loc_A2B5E3: FLdRfVar var_A4
  loc_A2B5E6: LitVarStr var_A0, "mondem"
  loc_A2B5EB: PopAdLdVar
  loc_A2B5EC: FLdRfVar var_90
  loc_A2B5EF: FLdPr Me
  loc_A2B5F2: MemLdPr RsFrm
  loc_A2B5F5:  = Me.Fields
  loc_A2B5FA: FLdPr var_90
  loc_A2B5FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B602: FLdPr var_A4
  loc_A2B605:  = Me.Value
  loc_A2B60A: FLdRfVar var_B4
  loc_A2B60D: CR4Var
  loc_A2B60E: FStFPR8 var_8C
  loc_A2B611: FFreeAd var_90 = ""
  loc_A2B618: FFree1Var var_B4 = ""
  loc_A2B61B: ExitProcCbHresult
End Sub

Public Property Get MonSen() 'A2B6A4
  'Data Table: 4312B4
  loc_A2B660: FLdRfVar var_B4
  loc_A2B663: FLdRfVar var_A4
  loc_A2B666: LitVarStr var_A0, "MonSen"
  loc_A2B66B: PopAdLdVar
  loc_A2B66C: FLdRfVar var_90
  loc_A2B66F: FLdPr Me
  loc_A2B672: MemLdPr RsFrm
  loc_A2B675:  = Me.Fields
  loc_A2B67A: FLdPr var_90
  loc_A2B67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B682: FLdPr var_A4
  loc_A2B685:  = Me.Value
  loc_A2B68A: FLdRfVar var_B4
  loc_A2B68D: CR4Var
  loc_A2B68E: FStFPR8 var_8C
  loc_A2B691: FFreeAd var_90 = ""
  loc_A2B698: FFree1Var var_B4 = ""
  loc_A2B69B: ExitProcCbHresult
End Sub

Public Property Get FechaPago() 'A3F4CC
  'Data Table: 4312B4
  loc_A3F488: ZeroRetVal
  loc_A3F48A: FLdRfVar var_B0
  loc_A3F48D: FLdRfVar var_A0
  loc_A3F490: LitVarStr var_9C, "FechaPago"
  loc_A3F495: PopAdLdVar
  loc_A3F496: FLdRfVar var_8C
  loc_A3F499: FLdPr Me
  loc_A3F49C: MemLdPr RsFrm
  loc_A3F49F:  = Me.Fields
  loc_A3F4A4: FLdPr var_8C
  loc_A3F4A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F4AC: FLdPr var_A0
  loc_A3F4AF:  = Me.Value
  loc_A3F4B4: FLdRfVar var_B0
  loc_A3F4B7: CStrVarTmp
  loc_A3F4B8: FStStr var_88
  loc_A3F4BB: FFreeAd var_8C = ""
  loc_A3F4C2: FFree1Var var_B0 = ""
  loc_A3F4C5: ExitProcCbHresult
End Sub

Public Property Get ImpoCobr() 'A2B724
  'Data Table: 4312B4
  loc_A2B6E0: FLdRfVar var_B4
  loc_A2B6E3: FLdRfVar var_A4
  loc_A2B6E6: LitVarStr var_A0, "ImpoCobr"
  loc_A2B6EB: PopAdLdVar
  loc_A2B6EC: FLdRfVar var_90
  loc_A2B6EF: FLdPr Me
  loc_A2B6F2: MemLdPr RsFrm
  loc_A2B6F5:  = Me.Fields
  loc_A2B6FA: FLdPr var_90
  loc_A2B6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B702: FLdPr var_A4
  loc_A2B705:  = Me.Value
  loc_A2B70A: FLdRfVar var_B4
  loc_A2B70D: CR4Var
  loc_A2B70E: FStFPR8 var_8C
  loc_A2B711: FFreeAd var_90 = ""
  loc_A2B718: FFree1Var var_B4 = ""
  loc_A2B71B: ExitProcCbHresult
End Sub

Public Property Get Litigante() 'A2B824
  'Data Table: 4312B4
  loc_A2B7E0: FLdRfVar var_B0
  loc_A2B7E3: FLdRfVar var_A0
  loc_A2B7E6: LitVarStr var_9C, "Litigante"
  loc_A2B7EB: PopAdLdVar
  loc_A2B7EC: FLdRfVar var_8C
  loc_A2B7EF: FLdPr Me
  loc_A2B7F2: MemLdPr RsFrm
  loc_A2B7F5:  = Me.Fields
  loc_A2B7FA: FLdPr var_8C
  loc_A2B7FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B802: FLdPr var_A0
  loc_A2B805:  = Me.Value
  loc_A2B80A: FLdRfVar var_B0
  loc_A2B80D: CUI1Var
  loc_A2B80F: FStUI1 var_86
  loc_A2B813: FFreeAd var_8C = ""
  loc_A2B81A: FFree1Var var_B0 = ""
  loc_A2B81D: ExitProcCbHresult
End Sub

Public Property Get Tribunal() 'A3F550
  'Data Table: 4312B4
  loc_A3F50C: ZeroRetVal
  loc_A3F50E: FLdRfVar var_B0
  loc_A3F511: FLdRfVar var_A0
  loc_A3F514: LitVarStr var_9C, "Tribunal"
  loc_A3F519: PopAdLdVar
  loc_A3F51A: FLdRfVar var_8C
  loc_A3F51D: FLdPr Me
  loc_A3F520: MemLdPr RsFrm
  loc_A3F523:  = Me.Fields
  loc_A3F528: FLdPr var_8C
  loc_A3F52B: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F530: FLdPr var_A0
  loc_A3F533:  = Me.Value
  loc_A3F538: FLdRfVar var_B0
  loc_A3F53B: CStrVarTmp
  loc_A3F53C: FStStr var_88
  loc_A3F53F: FFreeAd var_8C = ""
  loc_A3F546: FFree1Var var_B0 = ""
  loc_A3F549: ExitProcCbHresult
End Sub

Public Property Get Circuns() 'A3F5D4
  'Data Table: 4312B4
  loc_A3F590: ZeroRetVal
  loc_A3F592: FLdRfVar var_B0
  loc_A3F595: FLdRfVar var_A0
  loc_A3F598: LitVarStr var_9C, "Circuns"
  loc_A3F59D: PopAdLdVar
  loc_A3F59E: FLdRfVar var_8C
  loc_A3F5A1: FLdPr Me
  loc_A3F5A4: MemLdPr RsFrm
  loc_A3F5A7:  = Me.Fields
  loc_A3F5AC: FLdPr var_8C
  loc_A3F5AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A3F5B4: FLdPr var_A0
  loc_A3F5B7:  = Me.Value
  loc_A3F5BC: FLdRfVar var_B0
  loc_A3F5BF: CStrVarTmp
  loc_A3F5C0: FStStr var_88
  loc_A3F5C3: FFreeAd var_8C = ""
  loc_A3F5CA: FFree1Var var_B0 = ""
  loc_A3F5CD: ExitProcCbHresult
End Sub

Public Function ValidaClave(lNumeApre, iCodiInju) 'A67758
  'Data Table: 4312B4
  loc_A676FC: ZeroRetVal
  loc_A676FE: LitStr "SELECT NumeApre, CodiInju FROM instapre WHERE NumeApre = "
  loc_A67701: ILdRf lNumeApre
  loc_A67704: CStrI4
  loc_A67706: FStStrNoPop var_8C
  loc_A67709: ConcatStr
  loc_A6770A: FStStrNoPop var_90
  loc_A6770D: LitStr " AND CodiInju = "
  loc_A67710: ConcatStr
  loc_A67711: FStStrNoPop ValidaClave
  loc_A67714: FLdI2 iCodiInju
  loc_A67717: CStrUI1
  loc_A67719: FStStrNoPop var_98
  loc_A6771C: ConcatStr
  loc_A6771D: FStStrNoPop var_9C
  loc_A67720: Call EjecutarRs2(from_stack_1v)
  loc_A67725: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A67732: FLdRfVar var_A0
  loc_A67735: FLdPr Me
  loc_A67738: MemLdPr global_68
  loc_A6773B:  = Me.RecordCount
  loc_A67740: ILdRf var_A0
  loc_A67743: LitI4 0
  loc_A67748: GtI4
  loc_A67749: BranchF loc_A67752
  loc_A6774C: LitStr "La instancia ya existe para la boleta de apremio seleccionada, verifique..."
  loc_A6774F: FStStrCopy var_88
  loc_A67752: ExitProcCbHresult
End Function

Public Function BuscaInstanciaApremio(lNumeApre) 'AB8F58
  'Data Table: 4312B4
  loc_AB8E80: LitI2_Byte 0
  loc_AB8E82: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB8E87: FStFPR8 var_E8
  loc_AB8E8A: LitStr "SELECT * FROM instapre USE INDEX (idx_instapre_01) WHERE NumeApre = "
  loc_AB8E8D: ILdRf lNumeApre
  loc_AB8E90: CStrI4
  loc_AB8E92: FStStrNoPop var_8C
  loc_AB8E95: ConcatStr
  loc_AB8E96: FStStrNoPop var_90
  loc_AB8E99: LitStr " AND FechInap <= '"
  loc_AB8E9C: ConcatStr
  loc_AB8E9D: FStStrNoPop var_D4
  loc_AB8EA0: LitI4 1
  loc_AB8EA5: LitI4 1
  loc_AB8EAA: LitVarStr var_C0, "yyyy-mm-dd"
  loc_AB8EAF: FStVarCopyObj var_D0
  loc_AB8EB2: FLdRfVar var_D0
  loc_AB8EB5: FLdFPR8 var_E8
  loc_AB8EB8: CVarDate var_B0
  loc_AB8EBC: ImpAdCallI2 Format$(, )
  loc_AB8EC1: FStStrNoPop var_D8
  loc_AB8EC4: ConcatStr
  loc_AB8EC5: FStStrNoPop var_DC
  loc_AB8EC8: LitStr "' ORDER BY NumeApre, CodiInju"
  loc_AB8ECB: ConcatStr
  loc_AB8ECC: FStStrNoPop var_E0
  loc_AB8ECF: Call EjecutarRs2(from_stack_1v)
  loc_AB8ED4: FFreeStr var_8C = "": var_90 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AB8EE3: FFreeVar var_B0 = ""
  loc_AB8EEA: FLdRfVar var_EC
  loc_AB8EED: FLdPr Me
  loc_AB8EF0: MemLdPr global_68
  loc_AB8EF3:  = Me.RecordCount
  loc_AB8EF8: ILdRf var_EC
  loc_AB8EFB: LitI4 0
  loc_AB8F00: GtI4
  loc_AB8F01: BranchF loc_AB8F4D
  loc_AB8F04: FLdPr Me
  loc_AB8F07: MemLdPr global_68
  loc_AB8F0A: Me.MoveLast
  loc_AB8F0F: FLdRfVar var_B0
  loc_AB8F12: FLdRfVar var_F4
  loc_AB8F15: LitVarStr var_A0, "CodiInju"
  loc_AB8F1A: PopAdLdVar
  loc_AB8F1B: FLdRfVar var_F0
  loc_AB8F1E: FLdPr Me
  loc_AB8F21: MemLdPr global_68
  loc_AB8F24:  = Me.Fields
  loc_AB8F29: FLdPr var_F0
  loc_AB8F2C: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8F31: FLdPr var_F4
  loc_AB8F34:  = Me.Value
  loc_AB8F39: FLdRfVar var_B0
  loc_AB8F3C: CI2Var
  loc_AB8F3D: FStI2 var_86
  loc_AB8F40: FFreeAd var_F0 = ""
  loc_AB8F47: FFree1Var var_B0 = ""
  loc_AB8F4A: Branch loc_AB8F52
  loc_AB8F4D: LitI2_Byte 0
  loc_AB8F4F: FStI2 var_86
  loc_AB8F52: ExitProcCbHresult
End Function

Public Function NumeApreValidate(lNumeApre) 'A01A0C
  'Data Table: 4312B4
  loc_A019E4: ZeroRetVal
  loc_A019E6: FLdRfVar var_90
  loc_A019E9: ILdRf lNumeApre
  loc_A019EC: FLdRfVar var_8C
  loc_A019EF: NewIfNullPr clsapremio
  loc_A019F2: from_stack_2v = clsapremio.NumeApreValidate(from_stack_1v)
  loc_A019F7: FLdZeroAd var_90
  loc_A019FA: FStStr var_88
  loc_A019FD: LitNothing
  loc_A019FF: CastAd
  loc_A01A02: FStAdFunc var_8C
  loc_A01A05: ExitProcCbHresult
End Function

Public Function BuscaSiguienteInstancia(iCodiInju) '9F1238
  'Data Table: 4312B4
  loc_9F1210: FLdRfVar var_8E
  loc_9F1213: FLdI2 iCodiInju
  loc_9F1216: FLdRfVar var_8C
  loc_9F1219: NewIfNullPr clsinstjudi
  loc_9F121C: from_stack_2v = clsinstjudi.BuscaSiguienteInstancia(from_stack_1v)
  loc_9F1221: FLdI2 var_8E
  loc_9F1224: FStI2 var_86
  loc_9F1227: LitNothing
  loc_9F1229: CastAd
  loc_9F122C: FStAdFunc var_8C
  loc_9F122F: ExitProcCbHresult
End Function

Public Function ValidaFechadeInstancia(lNumeApre, FechInap) 'AC9288
  'Data Table: 4312B4
  loc_AC9188: FDupVar
  loc_AC918E: ZeroRetVal
  loc_AC9190: LitStr "SELECT * FROM instapre WHERE NumeApre = "
  loc_AC9193: ILdRf lNumeApre
  loc_AC9196: CStrI4
  loc_AC9198: FStStrNoPop var_A0
  loc_AC919B: ConcatStr
  loc_AC919C: FStStrNoPop var_A4
  loc_AC919F: LitStr " ORDER BY NumeApre, CodiInju"
  loc_AC91A2: ConcatStr
  loc_AC91A3: FStStrNoPop var_A8
  loc_AC91A6: Call EjecutarRs2(from_stack_1v)
  loc_AC91AB: FFreeStr var_A0 = "": var_A4 = ""
  loc_AC91B4: FLdRfVar var_AC
  loc_AC91B7: FLdPr Me
  loc_AC91BA: MemLdPr global_68
  loc_AC91BD:  = Me.RecordCount
  loc_AC91C2: ILdRf var_AC
  loc_AC91C5: LitI4 0
  loc_AC91CA: GtI4
  loc_AC91CB: BranchF loc_AC9224
  loc_AC91CE: FLdPr Me
  loc_AC91D1: MemLdPr global_68
  loc_AC91D4: Me.MoveLast
  loc_AC91D9: FLdRfVar var_D4
  loc_AC91DC: FLdRfVar var_C4
  loc_AC91DF: LitVarStr var_C0, "FechInap"
  loc_AC91E4: PopAdLdVar
  loc_AC91E5: FLdRfVar var_B0
  loc_AC91E8: FLdPr Me
  loc_AC91EB: MemLdPr global_68
  loc_AC91EE:  = Me.Fields
  loc_AC91F3: FLdPr var_B0
  loc_AC91F6: from_stack_2 = Me.Item(from_stack_1)
  loc_AC91FB: FLdPr var_C4
  loc_AC91FE:  = Me.Value
  loc_AC9203: FLdRfVar var_98
  loc_AC9206: FnCDateVar
  loc_AC9208: FLdRfVar var_D4
  loc_AC920B: FnCDateVar
  loc_AC920D: LtR8
  loc_AC920E: FFreeAd var_B0 = ""
  loc_AC9215: FFree1Var var_D4 = ""
  loc_AC9218: BranchF loc_AC9221
  loc_AC921B: LitStr "La fecha de la instancia no puede ser menor a la fecha de la instancia anterior"
  loc_AC921E: FStStrCopy var_88
  loc_AC9221: Branch loc_AC9277
  loc_AC9224: FLdRfVar var_A0
  loc_AC9227: ILdRf lNumeApre
  loc_AC922A: FLdRfVar var_9C
  loc_AC922D: NewIfNullPr clsapremio
  loc_AC9230: from_stack_2v = clsapremio.BuscaApremioFechaEmision(from_stack_1v)
  loc_AC9235: FLdZeroAd var_A0
  loc_AC9238: CVarStr var_D4
  loc_AC923B: ImpAdCallI2 IsDate()
  loc_AC9240: FFree1Var var_D4 = ""
  loc_AC9243: BranchF loc_AC9271
  loc_AC9246: FLdRfVar var_A0
  loc_AC9249: ILdRf lNumeApre
  loc_AC924C: FLdRfVar var_9C
  loc_AC924F: NewIfNullPr clsapremio
  loc_AC9252: from_stack_2v = clsapremio.BuscaApremioFechaEmision(from_stack_1v)
  loc_AC9257: FLdRfVar var_98
  loc_AC925A: FnCDateVar
  loc_AC925C: ILdRf var_A0
  loc_AC925F: CDateStr
  loc_AC9261: LtR8
  loc_AC9262: FFree1Str var_A0
  loc_AC9265: BranchF loc_AC926E
  loc_AC9268: LitStr "La fecha de la instancia no puede ser menor a la fecha de emision de la boleta de apremio"
  loc_AC926B: FStStrCopy var_88
  loc_AC926E: Branch loc_AC9277
  loc_AC9271: LitStr "La fecha de emision del apremio es incorrecta. Verifique"
  loc_AC9274: FStStrCopy var_88
  loc_AC9277: LitNothing
  loc_AC9279: CastAd
  loc_AC927C: FStAdFunc var_9C
  loc_AC927F: ExitProcCbHresult
End Function

Public Function ValidaFechadeInstanciaModifica(lNumeApre, iCodiInju, FechInap) 'AEDBA8
  'Data Table: 4312B4
  loc_AEDA30: FDupVar
  loc_AEDA36: ZeroRetVal
  loc_AEDA38: LitStr "SELECT * FROM instapre WHERE NumeApre = "
  loc_AEDA3B: ILdRf lNumeApre
  loc_AEDA3E: CStrI4
  loc_AEDA40: FStStrNoPop var_9C
  loc_AEDA43: ConcatStr
  loc_AEDA44: FStStrNoPop var_A0
  loc_AEDA47: LitStr " AND CodiInju <= "
  loc_AEDA4A: ConcatStr
  loc_AEDA4B: FStStrNoPop var_A4
  loc_AEDA4E: FLdI2 iCodiInju
  loc_AEDA51: CStrUI1
  loc_AEDA53: FStStrNoPop var_A8
  loc_AEDA56: ConcatStr
  loc_AEDA57: FStStrNoPop var_AC
  loc_AEDA5A: LitStr " ORDER BY NumeApre, CodiInju"
  loc_AEDA5D: ConcatStr
  loc_AEDA5E: FStStrNoPop var_B0
  loc_AEDA61: Call EjecutarRs2(from_stack_1v)
  loc_AEDA66: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AEDA75: FLdRfVar var_B4
  loc_AEDA78: FLdPr Me
  loc_AEDA7B: MemLdPr global_68
  loc_AEDA7E:  = Me.RecordCount
  loc_AEDA83: ILdRf var_B4
  loc_AEDA86: LitI4 1
  loc_AEDA8B: GtI4
  loc_AEDA8C: BranchF loc_AEDAED
  loc_AEDA8F: FLdPr Me
  loc_AEDA92: MemLdPr global_68
  loc_AEDA95: Me.MoveLast
  loc_AEDA9A: FLdPr Me
  loc_AEDA9D: MemLdPr global_68
  loc_AEDAA0: Me.MovePrevious
  loc_AEDAA5: FLdRfVar var_DC
  loc_AEDAA8: FLdRfVar var_CC
  loc_AEDAAB: LitVarStr var_C8, "FechInap"
  loc_AEDAB0: PopAdLdVar
  loc_AEDAB1: FLdRfVar var_B8
  loc_AEDAB4: FLdPr Me
  loc_AEDAB7: MemLdPr global_68
  loc_AEDABA:  = Me.Fields
  loc_AEDABF: FLdPr var_B8
  loc_AEDAC2: from_stack_2 = Me.Item(from_stack_1)
  loc_AEDAC7: FLdPr var_CC
  loc_AEDACA:  = Me.Value
  loc_AEDACF: FLdRfVar var_98
  loc_AEDAD2: FnCDateVar
  loc_AEDAD4: FLdRfVar var_DC
  loc_AEDAD7: FnCDateVar
  loc_AEDAD9: LtR8
  loc_AEDADA: FFreeAd var_B8 = ""
  loc_AEDAE1: FFree1Var var_DC = ""
  loc_AEDAE4: BranchF loc_AEDAED
  loc_AEDAE7: LitStr "La fecha de la instancia no puede ser menor a la fecha de la instancia anterior"
  loc_AEDAEA: FStStrCopy var_88
  loc_AEDAED: LitStr "SELECT * FROM instapre WHERE NumeApre = "
  loc_AEDAF0: ILdRf lNumeApre
  loc_AEDAF3: CStrI4
  loc_AEDAF5: FStStrNoPop var_9C
  loc_AEDAF8: ConcatStr
  loc_AEDAF9: FStStrNoPop var_A0
  loc_AEDAFC: LitStr " AND CodiInju >= "
  loc_AEDAFF: ConcatStr
  loc_AEDB00: FStStrNoPop var_A4
  loc_AEDB03: FLdI2 iCodiInju
  loc_AEDB06: CStrUI1
  loc_AEDB08: FStStrNoPop var_A8
  loc_AEDB0B: ConcatStr
  loc_AEDB0C: FStStrNoPop var_AC
  loc_AEDB0F: LitStr " ORDER BY NumeApre, CodiInju"
  loc_AEDB12: ConcatStr
  loc_AEDB13: FStStrNoPop var_B0
  loc_AEDB16: Call EjecutarRs2(from_stack_1v)
  loc_AEDB1B: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AEDB2A: FLdRfVar var_B4
  loc_AEDB2D: FLdPr Me
  loc_AEDB30: MemLdPr global_68
  loc_AEDB33:  = Me.RecordCount
  loc_AEDB38: ILdRf var_B4
  loc_AEDB3B: LitI4 1
  loc_AEDB40: GtI4
  loc_AEDB41: BranchF loc_AEDBA2
  loc_AEDB44: FLdPr Me
  loc_AEDB47: MemLdPr global_68
  loc_AEDB4A: Me.MoveFirst
  loc_AEDB4F: FLdPr Me
  loc_AEDB52: MemLdPr global_68
  loc_AEDB55: Me.MoveNext
  loc_AEDB5A: FLdRfVar var_DC
  loc_AEDB5D: FLdRfVar var_CC
  loc_AEDB60: LitVarStr var_C8, "FechInap"
  loc_AEDB65: PopAdLdVar
  loc_AEDB66: FLdRfVar var_B8
  loc_AEDB69: FLdPr Me
  loc_AEDB6C: MemLdPr global_68
  loc_AEDB6F:  = Me.Fields
  loc_AEDB74: FLdPr var_B8
  loc_AEDB77: from_stack_2 = Me.Item(from_stack_1)
  loc_AEDB7C: FLdPr var_CC
  loc_AEDB7F:  = Me.Value
  loc_AEDB84: FLdRfVar var_98
  loc_AEDB87: FnCDateVar
  loc_AEDB89: FLdRfVar var_DC
  loc_AEDB8C: FnCDateVar
  loc_AEDB8E: GtR4
  loc_AEDB8F: FFreeAd var_B8 = ""
  loc_AEDB96: FFree1Var var_DC = ""
  loc_AEDB99: BranchF loc_AEDBA2
  loc_AEDB9C: LitStr "La fecha de la instancia no puede ser mayor a la fecha de la instancia siguiente"
  loc_AEDB9F: FStStrCopy var_88
  loc_AEDBA2: ExitProcCbHresult
End Function

Public Function BuscaDetalleInstanciaJudicial(iCodiInju) 'A01AD4
  'Data Table: 4312B4
  loc_A01AAC: ZeroRetVal
  loc_A01AAE: FLdRfVar var_90
  loc_A01AB1: FLdI2 iCodiInju
  loc_A01AB4: FLdRfVar var_8C
  loc_A01AB7: NewIfNullPr clsinstjudi
  loc_A01ABA: from_stack_2v = clsinstjudi.BuscaDetalleInstanciaJudicial(from_stack_1v)
  loc_A01ABF: FLdZeroAd var_90
  loc_A01AC2: FStStr var_88
  loc_A01AC5: LitNothing
  loc_A01AC7: CastAd
  loc_A01ACA: FStAdFunc var_8C
  loc_A01ACD: ExitProcCbHresult
  loc_A01AD3: CStr2Ansi
End Function

Public Function VerificaUltimaInstancia(lNumeApre, iCodiInju) 'A9BA54
  'Data Table: 4312B4
  loc_A9B9AC: LitStr "SELECT CodiInju FROM instapre WHERE NumeApre = "
  loc_A9B9AF: ILdRf lNumeApre
  loc_A9B9B2: CStrI4
  loc_A9B9B4: FStStrNoPop var_8C
  loc_A9B9B7: ConcatStr
  loc_A9B9B8: FStStrNoPop var_90
  loc_A9B9BB: LitStr " ORDER BY NumeApre, CodiInju"
  loc_A9B9BE: ConcatStr
  loc_A9B9BF: FStStrNoPop VerificaUltimaInstancia
  loc_A9B9C2: Call EjecutarRs2(from_stack_1v)
  loc_A9B9C7: FFreeStr var_8C = "": var_90 = ""
  loc_A9B9D0: FLdRfVar var_98
  loc_A9B9D3: FLdPr Me
  loc_A9B9D6: MemLdPr global_68
  loc_A9B9D9:  = Me.RecordCount
  loc_A9B9DE: ILdRf var_98
  loc_A9B9E1: LitI4 0
  loc_A9B9E6: GtI4
  loc_A9B9E7: BranchF loc_A9BA48
  loc_A9B9EA: FLdPr Me
  loc_A9B9ED: MemLdPr global_68
  loc_A9B9F0: Me.MoveLast
  loc_A9B9F5: FLdI2 iCodiInju
  loc_A9B9F8: CVarI2 var_D0
  loc_A9B9FB: HardType
  loc_A9B9FC: FLdRfVar var_C0
  loc_A9B9FF: FLdRfVar var_B0
  loc_A9BA02: LitVarStr var_AC, "CodiInju"
  loc_A9BA07: PopAdLdVar
  loc_A9BA08: FLdRfVar var_9C
  loc_A9BA0B: FLdPr Me
  loc_A9BA0E: MemLdPr global_68
  loc_A9BA11:  = Me.Fields
  loc_A9BA16: FLdPr var_9C
  loc_A9BA19: from_stack_2 = Me.Item(from_stack_1)
  loc_A9BA1E: FLdPr var_B0
  loc_A9BA21:  = Me.Value
  loc_A9BA26: FLdRfVar var_C0
  loc_A9BA29: EqVarBool
  loc_A9BA2B: FFreeAd var_9C = ""
  loc_A9BA32: FFree1Var var_C0 = ""
  loc_A9BA35: BranchF loc_A9BA40
  loc_A9BA38: LitI2_Byte &HFF
  loc_A9BA3A: FStI2 var_86
  loc_A9BA3D: Branch loc_A9BA45
  loc_A9BA40: LitI2_Byte 0
  loc_A9BA42: FStI2 var_86
  loc_A9BA45: Branch loc_A9BA4D
  loc_A9BA48: LitI2_Byte 0
  loc_A9BA4A: FStI2 var_86
  loc_A9BA4D: ExitProcCbHresult
End Function

Public Sub sSelect(sFiltro, FiltroCbo) 'ACB2C8
  'Data Table: 4312B4
  loc_ACB1D0: ILdRf sFiltro
  loc_ACB1D3: FStStrCopy var_88
  loc_ACB1D6: ILdRf FiltroCbo
  loc_ACB1D9: FStAd var_8C 
  loc_ACB1DD: ILdRf var_88
  loc_ACB1E0: LitStr vbNullString
  loc_ACB1E3: EqStr
  loc_ACB1E5: BranchF loc_ACB1F1
  loc_ACB1E8: LitStr " WHERE instapre.NumeApre = 0"
  loc_ACB1EB: FStStrCopy var_90
  loc_ACB1EE: Branch loc_ACB25F
  loc_ACB1F1: FLdRfVar var_92
  loc_ACB1F4: FLdPr var_8C
  loc_ACB1F7:  = Me.ListIndex
  loc_ACB1FC: FLdI2 var_92
  loc_ACB1FF: FStI2 var_94
  loc_ACB202: FLdI2 var_94
  loc_ACB205: LitI2_Byte 0
  loc_ACB207: EqI2
  loc_ACB208: BranchF loc_ACB222
  loc_ACB20B: LitStr " WHERE instapre.NumeApre = "
  loc_ACB20E: ILdRf var_88
  loc_ACB211: ConcatStr
  loc_ACB212: FStStrNoPop var_98
  loc_ACB215: LitStr " ORDER BY instapre.NumeApre"
  loc_ACB218: ConcatStr
  loc_ACB219: FStStr var_90
  loc_ACB21C: FFree1Str var_98
  loc_ACB21F: Branch loc_ACB25F
  loc_ACB222: FLdI2 var_94
  loc_ACB225: LitI2_Byte 1
  loc_ACB227: EqI2
  loc_ACB228: BranchF loc_ACB242
  loc_ACB22B: LitStr " WHERE persona.DetaPers LIKE '" & Chr(37)
  loc_ACB22E: ILdRf var_88
  loc_ACB231: ConcatStr
  loc_ACB232: FStStrNoPop var_98
  loc_ACB235: LitStr Chr(37) & "' ORDER BY persona.DetaPers"
  loc_ACB238: ConcatStr
  loc_ACB239: FStStr var_90
  loc_ACB23C: FFree1Str var_98
  loc_ACB23F: Branch loc_ACB25F
  loc_ACB242: FLdI2 var_94
  loc_ACB245: LitI2_Byte 2
  loc_ACB247: EqI2
  loc_ACB248: BranchF loc_ACB25F
  loc_ACB24B: LitStr " WHERE apremio.CuenCtct = '"
  loc_ACB24E: ILdRf var_88
  loc_ACB251: ConcatStr
  loc_ACB252: FStStrNoPop var_98
  loc_ACB255: LitStr "' ORDER BY apremio.CuenCtct"
  loc_ACB258: ConcatStr
  loc_ACB259: FStStr var_90
  loc_ACB25C: FFree1Str var_98
  loc_ACB25F: LitStr "SELECT instapre.NumeApre, apremio.CodiOfic, apremio.CuenCtct, infogov.persona.CucuPers, "
  loc_ACB262: LitStr " infogov.persona.DetaPers, infogov.persona.DecrPers, instapre.CodiInju, instjudi.DetaInju, "
  loc_ACB265: ConcatStr
  loc_ACB266: FStStrNoPop var_98
  loc_ACB269: LitStr " instapre.CodiReca, recaudador.DetaReca, instapre.CodiOfju, oficjust.DetaOfju,"
  loc_ACB26C: ConcatStr
  loc_ACB26D: FStStrNoPop var_9C
  loc_ACB270: LitStr " instapre.FechInap, apremio.AutoApre, instapre.MoreInap, instapre.MoofInap, instapre.MbreInap, instapre.MbofInap, instapre.ObseInap, instapre.SecrInap, instapre.JuzgInap, instapre.MecaInap, instapre.ALtaUsua"
  loc_ACB273: ConcatStr
  loc_ACB274: FStStrNoPop var_A0
  loc_ACB277: LitStr " FROM instapre "
  loc_ACB27A: ConcatStr
  loc_ACB27B: FStStrNoPop var_A4
  loc_ACB27E: LitStr " LEFT JOIN apremio ON instapre.NumeApre = apremio.NumeApre "
  loc_ACB281: ConcatStr
  loc_ACB282: FStStrNoPop var_A8
  loc_ACB285: LitStr " LEFT JOIN infogov.persona ON apremio.CucuPers = infogov.persona.CucuPers "
  loc_ACB288: ConcatStr
  loc_ACB289: FStStrNoPop var_AC
  loc_ACB28C: LitStr " LEFT JOIN instjudi ON instapre.CodiInju = instjudi.CodiInju "
  loc_ACB28F: ConcatStr
  loc_ACB290: FStStrNoPop var_B0
  loc_ACB293: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = instapre.CodiReca"
  loc_ACB296: ConcatStr
  loc_ACB297: FStStrNoPop var_B4
  loc_ACB29A: LitStr " INNER JOIN oficjust ON oficjust.CodiOfju = instapre.CodiOfju"
  loc_ACB29D: ConcatStr
  loc_ACB29E: FStStrNoPop var_B8
  loc_ACB2A1: ILdRf var_90
  loc_ACB2A4: ConcatStr
  loc_ACB2A5: FStStrNoPop var_BC
  loc_ACB2A8: Call RedefineRS(from_stack_1v)
  loc_ACB2AD: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_ACB2C4: ExitProcHresult
End Sub

Private Function Proc_257_52_9F1120() '9F1120
  'Data Table: 4312B4
  loc_9F10FC: LitStr "Primary"
  loc_9F10FF: FLdPr Me
  loc_9F1102: LateIdLdVar var_94 DispID_4 0
  loc_9F1109: CastAdVar Me
  loc_9F110D: FStAdFunc var_98
  loc_9F1110: FLdPr var_98
  loc_9F1118: FFree1Ad var_98
  loc_9F111B: FFree1Var var_94 = ""
  loc_9F111E: ExitProcHresult
End Function

Private Function Proc_257_53_A4A7EC(arg_C) 'A4A7EC
  'Data Table: 4312B4
  loc_A4A798: ILdRf arg_C
  loc_A4A79B: FStStrCopy var_88
  loc_A4A79E: LitNothing
  loc_A4A7A0: CastAd
  loc_A4A7A3: FStAdFuncNoPop
  loc_A4A7A6: FLdPr Me
  loc_A4A7A9: MemStAd
  loc_A4A7AD: FFree1Ad var_8C
  loc_A4A7B0: New Recordset
  loc_A4A7B4: FStAdFuncNoPop
  loc_A4A7B7: FLdPr Me
  loc_A4A7BA: MemStAd
  loc_A4A7BE: FFree1Ad var_8C
  loc_A4A7C1: LitI4 -1
  loc_A4A7C6: LitI4 3
  loc_A4A7CB: LitI4 3
  loc_A4A7D0: ImpAdLdI4 MemVar_D9301C
  loc_A4A7D3: CVarAd
  loc_A4A7D7: PopAdLdVar
  loc_A4A7D8: ILdRf var_88
  loc_A4A7DB: CVarStr var_9C
  loc_A4A7DE: PopAdLdVar
  loc_A4A7DF: FLdPr Me
  loc_A4A7E2: MemLdPr global_64
  loc_A4A7E5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4A7EA: ExitProcHresult
End Function

Private Function Proc_257_54_9E186C(arg_C) '9E186C
  'Data Table: 4312B4
  loc_9E1850: ILdI4 arg_C
  loc_9E1853: FStStrCopy var_88
  loc_9E1856: ILdRf var_88
  loc_9E1859: LitStr "Primary"
  loc_9E185C: EqStr
  loc_9E185E: BranchF loc_9E186B
  loc_9E1861: FLdPr Me
  loc_9E1864: MemLdStr RsFrm
  loc_9E1867: IStAd
  loc_9E186B: ExitProcHresult
End Function
