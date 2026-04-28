VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservceme"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '419C80
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '419C8F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '419C9E
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '9FCC38
  'Data Table: 41997C
  loc_9FCC08: FLdRfVar var_88
  loc_9FCC0B: FLdPr Me
  loc_9FCC0E: MemLdPr RsFrm
  loc_9FCC11:  = Me.RecordCount
  loc_9FCC16: ILdRf var_88
  loc_9FCC19: LitI4 0
  loc_9FCC1E: GtI4
  loc_9FCC1F: BranchF loc_9FCC34
  loc_9FCC22: LitVar_Missing var_98
  loc_9FCC25: PopAdLdVar
  loc_9FCC26: ILdI4 iCantidad
  loc_9FCC29: FLdPr Me
  loc_9FCC2C: MemLdPr RsFrm
  loc_9FCC2F: Me.Move from_stack_1, from_stack_2
  loc_9FCC34: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EC964
  'Data Table: 41997C
  loc_9EC93C: FLdRfVar var_88
  loc_9EC93F: FLdPr Me
  loc_9EC942: MemLdPr RsFrm
  loc_9EC945:  = Me.RecordCount
  loc_9EC94A: ILdRf var_88
  loc_9EC94D: LitI4 0
  loc_9EC952: GtI4
  loc_9EC953: BranchF loc_9EC961
  loc_9EC956: FLdPr Me
  loc_9EC959: MemLdPr RsFrm
  loc_9EC95C: Me.MoveFirst
  loc_9EC961: ExitProcHresult
End Sub

Public Sub MoveLast() '9EC8B4
  'Data Table: 41997C
  loc_9EC88C: FLdRfVar var_88
  loc_9EC88F: FLdPr Me
  loc_9EC892: MemLdPr RsFrm
  loc_9EC895:  = Me.RecordCount
  loc_9EC89A: ILdRf var_88
  loc_9EC89D: LitI4 0
  loc_9EC8A2: GtI4
  loc_9EC8A3: BranchF loc_9EC8B1
  loc_9EC8A6: FLdPr Me
  loc_9EC8A9: MemLdPr RsFrm
  loc_9EC8AC: Me.MoveLast
  loc_9EC8B1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A698F8
  'Data Table: 41997C
  loc_A69880: FLdRfVar var_86
  loc_A69883: FLdPr Me
  loc_A69886: MemLdPr RsFrm
  loc_A69889:  = Me.EOF
  loc_A6988E: FLdI2 var_86
  loc_A69891: NotI4
  loc_A69892: FLdRfVar var_8C
  loc_A69895: FLdPr Me
  loc_A69898: MemLdPr RsFrm
  loc_A6989B:  = Me.RecordCount
  loc_A698A0: ILdRf var_8C
  loc_A698A3: LitI4 0
  loc_A698A8: GtI4
  loc_A698A9: AndI4
  loc_A698AA: BranchF loc_A698B8
  loc_A698AD: FLdPr Me
  loc_A698B0: MemLdPr RsFrm
  loc_A698B3: Me.MoveNext
  loc_A698B8: FLdRfVar var_86
  loc_A698BB: FLdPr Me
  loc_A698BE: MemLdPr RsFrm
  loc_A698C1:  = Me.EOF
  loc_A698C6: FLdI2 var_86
  loc_A698C9: FLdRfVar var_8C
  loc_A698CC: FLdPr Me
  loc_A698CF: MemLdPr RsFrm
  loc_A698D2:  = Me.RecordCount
  loc_A698D7: ILdRf var_8C
  loc_A698DA: LitI4 0
  loc_A698DF: GtI4
  loc_A698E0: AndI4
  loc_A698E1: BranchF loc_A698F4
  loc_A698E4: ImpAdCallFPR4 Beep()
  loc_A698E9: FLdPr Me
  loc_A698EC: MemLdPr RsFrm
  loc_A698EF: Me.MoveLast
  loc_A698F4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B17F4
  'Data Table: 41997C
  loc_9B17E8: FLdPr Me
  loc_9B17EB: MemLdPr RsFrm
  loc_9B17EE: Me.MoveNext
  loc_9B17F3: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA8C0
  'Data Table: 41997C
  loc_9BA8AC: LitVar_Missing var_94
  loc_9BA8AF: PopAdLdVar
  loc_9BA8B0: ILdI2 iValor
  loc_9BA8B3: CI4UI1
  loc_9BA8B4: FLdPr Me
  loc_9BA8B7: MemLdPr RsFrm
  loc_9BA8BA: Me.Move from_stack_1, from_stack_2
  loc_9BA8BF: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6ADF8
  'Data Table: 41997C
  loc_A6AD80: FLdRfVar var_86
  loc_A6AD83: FLdPr Me
  loc_A6AD86: MemLdPr RsFrm
  loc_A6AD89:  = Me.BOF
  loc_A6AD8E: FLdI2 var_86
  loc_A6AD91: NotI4
  loc_A6AD92: FLdRfVar var_8C
  loc_A6AD95: FLdPr Me
  loc_A6AD98: MemLdPr RsFrm
  loc_A6AD9B:  = Me.RecordCount
  loc_A6ADA0: ILdRf var_8C
  loc_A6ADA3: LitI4 0
  loc_A6ADA8: GtI4
  loc_A6ADA9: AndI4
  loc_A6ADAA: BranchF loc_A6ADB8
  loc_A6ADAD: FLdPr Me
  loc_A6ADB0: MemLdPr RsFrm
  loc_A6ADB3: Me.MovePrevious
  loc_A6ADB8: FLdRfVar var_86
  loc_A6ADBB: FLdPr Me
  loc_A6ADBE: MemLdPr RsFrm
  loc_A6ADC1:  = Me.BOF
  loc_A6ADC6: FLdI2 var_86
  loc_A6ADC9: FLdRfVar var_8C
  loc_A6ADCC: FLdPr Me
  loc_A6ADCF: MemLdPr RsFrm
  loc_A6ADD2:  = Me.RecordCount
  loc_A6ADD7: ILdRf var_8C
  loc_A6ADDA: LitI4 0
  loc_A6ADDF: GtI4
  loc_A6ADE0: AndI4
  loc_A6ADE1: BranchF loc_A6ADF4
  loc_A6ADE4: ImpAdCallFPR4 Beep()
  loc_A6ADE9: FLdPr Me
  loc_A6ADEC: MemLdPr RsFrm
  loc_A6ADEF: Me.MoveFirst
  loc_A6ADF4: ExitProcHresult
End Sub

Public Property Get EOF() '9CAD18
  'Data Table: 41997C
  loc_9CACFC: FLdRfVar var_88
  loc_9CACFF: FLdPr Me
  loc_9CAD02: MemLdPr RsFrm
  loc_9CAD05:  = Me.EOF
  loc_9CAD0A: FLdI2 var_88
  loc_9CAD0D: FStI2 var_86
  loc_9CAD10: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C8634
  'Data Table: 41997C
  loc_9C8618: FLdRfVar var_88
  loc_9C861B: FLdPr Me
  loc_9C861E: MemLdPr RsFrm
  loc_9C8621:  = Me.BOF
  loc_9C8626: FLdI2 var_88
  loc_9C8629: FStI2 var_86
  loc_9C862C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B8978
  'Data Table: 41997C
  loc_9B8968: ILdI4 sOrden
  loc_9B896B: FLdPr Me
  loc_9B896E: MemLdPr RsFrm
  loc_9B8971: Me.Sort = from_stack_1
  loc_9B8976: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DFF70
  'Data Table: 41997C
  loc_9DFF50: LitVar_Missing var_94
  loc_9DFF53: PopAdLdVar
  loc_9DFF54: LitI4 1
  loc_9DFF59: LitI4 0
  loc_9DFF5E: ILdI4 sFind
  loc_9DFF61: FLdPr Me
  loc_9DFF64: MemLdPr RsFrm
  loc_9DFF67: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DFF6C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BA9D0
  'Data Table: 41997C
  loc_9BA9BC: ILdI4 sCriterio
  loc_9BA9BF: CVarStr var_94
  loc_9BA9C2: PopAdLdVar
  loc_9BA9C3: FLdPr Me
  loc_9BA9C6: MemLdPr RsFrm
  loc_9BA9C9: Me.Filter = from_stack_1
  loc_9BA9CE: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9CA774
  'Data Table: 41997C
  loc_9CA758: FLdRfVar var_8C
  loc_9CA75B: FLdPr Me
  loc_9CA75E: MemLdPr RsFrm
  loc_9CA761:  = Me.AbsolutePosition
  loc_9CA766: ILdRf var_8C
  loc_9CA769: FStR4 var_88
  loc_9CA76C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9CA008
  'Data Table: 41997C
  loc_9C9FEC: FLdRfVar var_8C
  loc_9C9FEF: FLdPr Me
  loc_9C9FF2: MemLdPr RsFrm
  loc_9C9FF5:  = Me.RecordCount
  loc_9C9FFA: ILdRf var_8C
  loc_9C9FFD: FStR4 var_88
  loc_9CA000: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriOrde, CodiSece, DetaSece, CodiCeme, CodiTise, SeccDifu, PlanDifu, FilaDifu, ParvSece, AnioSece, CodiConc, EmisSece, FrecSece, ImpoSece) 'B218E0
  'Data Table: 41997C
  loc_B216E4: ILdRf DetaSece
  loc_B216E7: FStStrCopy var_88
  loc_B216EA: ILdRf SeccDifu
  loc_B216ED: FStStrCopy var_8C
  loc_B216F0: ILdRf CodiConc
  loc_B216F3: FStStrCopy var_90
  loc_B216F6: ILdRf EmisSece
  loc_B216F9: FStStrCopy var_94
  loc_B216FC: ILdRf FrecSece
  loc_B216FF: FStStrCopy var_98
  loc_B21702: FLdRfVar var_A8
  loc_B21705: FLdI2 CodiSece
  loc_B21708: FLdI2 PeriOrde
  loc_B2170B: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B21710: FLdRfVar var_A8
  loc_B21713: LitVarStr var_B8, vbNullString
  loc_B21718: HardType
  loc_B21719: NeVarBool
  loc_B2171B: FFree1Var var_A8 = ""
  loc_B2171E: BranchF loc_B2172C
  loc_B21721: LitStr "El SERVICIO DE CEMENTERIO YA EXISTE. Reintente..."
  loc_B21724: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B21729: Branch loc_B218CE
  loc_B2172C: LitStr "START TRANSACTION; INSERT INTO servceme (PeriOrde, CodiSece, DetaSece, CodiCeme, CodiTise, SeccDifu, PlanDifu, FilaDifu, ParvSece, AnioSece, PeriInfo, CodiConc, EmisSece, FrecSece, ImpoSece) "
  loc_B2172F: LitStr "VALUES ("
  loc_B21732: ConcatStr
  loc_B21733: FStStrNoPop var_CC
  loc_B21736: FLdI2 PeriOrde
  loc_B21739: CStrUI1
  loc_B2173B: FStStrNoPop var_D0
  loc_B2173E: ConcatStr
  loc_B2173F: FStStrNoPop var_D4
  loc_B21742: LitStr ","
  loc_B21745: ConcatStr
  loc_B21746: FStStrNoPop var_D8
  loc_B21749: FLdI2 CodiSece
  loc_B2174C: CStrUI1
  loc_B2174E: FStStrNoPop var_DC
  loc_B21751: ConcatStr
  loc_B21752: FStStrNoPop var_E0
  loc_B21755: LitStr ",'"
  loc_B21758: ConcatStr
  loc_B21759: FStStrNoPop var_E4
  loc_B2175C: ILdRf var_88
  loc_B2175F: ConcatStr
  loc_B21760: FStStrNoPop var_E8
  loc_B21763: LitStr "',"
  loc_B21766: ConcatStr
  loc_B21767: FStStrNoPop var_EC
  loc_B2176A: FLdUI1
  loc_B2176E: CStrI2
  loc_B21770: FStStrNoPop var_F0
  loc_B21773: ConcatStr
  loc_B21774: FStStrNoPop var_F4
  loc_B21777: LitStr ","
  loc_B2177A: ConcatStr
  loc_B2177B: FStStrNoPop var_F8
  loc_B2177E: FLdI2 CodiTise
  loc_B21781: CStrUI1
  loc_B21783: FStStrNoPop var_FC
  loc_B21786: ConcatStr
  loc_B21787: FStStrNoPop var_100
  loc_B2178A: LitStr ",'"
  loc_B2178D: ConcatStr
  loc_B2178E: FStStrNoPop var_104
  loc_B21791: ILdRf var_8C
  loc_B21794: ConcatStr
  loc_B21795: FStStrNoPop var_108
  loc_B21798: LitStr "',"
  loc_B2179B: ConcatStr
  loc_B2179C: FStStrNoPop var_10C
  loc_B2179F: FLdUI1
  loc_B217A3: CStrI2
  loc_B217A5: FStStrNoPop var_110
  loc_B217A8: ConcatStr
  loc_B217A9: FStStrNoPop var_114
  loc_B217AC: LitStr ","
  loc_B217AF: ConcatStr
  loc_B217B0: FStStrNoPop var_118
  loc_B217B3: FLdI2 FilaDifu
  loc_B217B6: CStrUI1
  loc_B217B8: FStStrNoPop var_11C
  loc_B217BB: ConcatStr
  loc_B217BC: FStStrNoPop var_120
  loc_B217BF: LitStr ","
  loc_B217C2: ConcatStr
  loc_B217C3: FStStrNoPop var_124
  loc_B217C6: FLdUI1
  loc_B217CA: CStrI2
  loc_B217CC: FStStrNoPop var_128
  loc_B217CF: ConcatStr
  loc_B217D0: FStStrNoPop var_12C
  loc_B217D3: LitStr ","
  loc_B217D6: ConcatStr
  loc_B217D7: FStStrNoPop var_130
  loc_B217DA: FLdI2 AnioSece
  loc_B217DD: CStrUI1
  loc_B217DF: FStStrNoPop var_134
  loc_B217E2: ConcatStr
  loc_B217E3: FStStrNoPop var_138
  loc_B217E6: LitStr ","
  loc_B217E9: ConcatStr
  loc_B217EA: FStStrNoPop var_13C
  loc_B217ED: ImpAdLdI2 MemVar_D93034
  loc_B217F0: CStrUI1
  loc_B217F2: FStStrNoPop var_140
  loc_B217F5: ConcatStr
  loc_B217F6: FStStrNoPop var_144
  loc_B217F9: LitStr ",'"
  loc_B217FC: ConcatStr
  loc_B217FD: FStStrNoPop var_148
  loc_B21800: ILdRf var_90
  loc_B21803: ConcatStr
  loc_B21804: FStStrNoPop var_14C
  loc_B21807: LitStr "','"
  loc_B2180A: ConcatStr
  loc_B2180B: FStStrNoPop var_150
  loc_B2180E: ILdRf var_94
  loc_B21811: ConcatStr
  loc_B21812: FStStrNoPop var_154
  loc_B21815: LitStr "','"
  loc_B21818: ConcatStr
  loc_B21819: FStStrNoPop var_158
  loc_B2181C: ILdRf var_98
  loc_B2181F: ConcatStr
  loc_B21820: FStStrNoPop var_15C
  loc_B21823: LitStr "',"
  loc_B21826: ConcatStr
  loc_B21827: FStStrNoPop var_164
  loc_B2182A: LitI4 0
  loc_B2182F: LitI4 -1
  loc_B21834: LitI4 1
  loc_B21839: LitStr "."
  loc_B2183C: LitStr ","
  loc_B2183F: FLdFPR8 AddNew0
  loc_B21842: CStrR8
  loc_B21844: FStStrNoPop var_160
  loc_B21847: ImpAdCallI2 Replace(, , , , , )
  loc_B2184C: FStStrNoPop var_168
  loc_B2184F: ConcatStr
  loc_B21850: FStStrNoPop var_16C
  loc_B21853: LitStr ");"
  loc_B21856: ConcatStr
  loc_B21857: FStStrNoPop var_170
  loc_B2185A: Call Proc_218_44_A4808C()
  loc_B2185F: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B218B6: LitStr "COMMIT"
  loc_B218B9: Call Proc_218_44_A4808C()
  loc_B218BE: FLdI2 CodiSece
  loc_B218C1: CStrUI1
  loc_B218C3: FStStrNoPop var_CC
  loc_B218C6: Call Encontrar(from_stack_1v)
  loc_B218CB: FFree1Str var_CC
  loc_B218CE: ExitProcHresult
  loc_B218CF: LitStr "ROLLBACK;"
  loc_B218D2: Call Proc_218_44_A4808C()
  loc_B218D7: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B218DA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B218DF: ExitProcHresult
End Sub

Public Sub Modificar(PeriOrde, CodiSece, DetaSece, CodiCeme, CodiTise, SeccDifu, PlanDifu, FilaDifu, ParvSece, AnioSece, CodiConc, EmisSece, FrecSece, ImpoSece) 'B1B480
  'Data Table: 41997C
  loc_B1B2A0: ILdRf DetaSece
  loc_B1B2A3: FStStrCopy var_88
  loc_B1B2A6: ILdRf SeccDifu
  loc_B1B2A9: FStStrCopy var_8C
  loc_B1B2AC: ILdRf CodiConc
  loc_B1B2AF: FStStrCopy var_90
  loc_B1B2B2: ILdRf EmisSece
  loc_B1B2B5: FStStrCopy var_94
  loc_B1B2B8: ILdRf FrecSece
  loc_B1B2BB: FStStrCopy var_98
  loc_B1B2BE: FLdRfVar var_A8
  loc_B1B2C1: FLdI2 CodiSece
  loc_B1B2C4: FLdI2 PeriOrde
  loc_B1B2C7: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B1B2CC: FLdRfVar var_A8
  loc_B1B2CF: LitVarStr var_B8, vbNullString
  loc_B1B2D4: HardType
  loc_B1B2D5: EqVarBool
  loc_B1B2D7: FFree1Var var_A8 = ""
  loc_B1B2DA: BranchF loc_B1B2E8
  loc_B1B2DD: LitStr "El SERVICIO DE CEMENTERIO NO EXISTE. Reintente..."
  loc_B1B2E0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1B2E5: Branch loc_B1B469
  loc_B1B2E8: LitStr "UPDATE servceme SET DetaSece = '"
  loc_B1B2EB: ILdRf var_88
  loc_B1B2EE: ConcatStr
  loc_B1B2EF: FStStrNoPop var_CC
  loc_B1B2F2: LitStr "', CodiCeme = "
  loc_B1B2F5: ConcatStr
  loc_B1B2F6: FStStrNoPop var_D0
  loc_B1B2F9: FLdUI1
  loc_B1B2FD: CStrI2
  loc_B1B2FF: FStStrNoPop var_D4
  loc_B1B302: ConcatStr
  loc_B1B303: FStStrNoPop var_D8
  loc_B1B306: LitStr ", CodiTise = "
  loc_B1B309: ConcatStr
  loc_B1B30A: FStStrNoPop var_DC
  loc_B1B30D: FLdI2 CodiTise
  loc_B1B310: CStrUI1
  loc_B1B312: FStStrNoPop var_E0
  loc_B1B315: ConcatStr
  loc_B1B316: FStStrNoPop var_E4
  loc_B1B319: LitStr ", SeccDifu = '"
  loc_B1B31C: ConcatStr
  loc_B1B31D: FStStrNoPop var_E8
  loc_B1B320: ILdRf var_8C
  loc_B1B323: ConcatStr
  loc_B1B324: FStStrNoPop var_EC
  loc_B1B327: LitStr "', PlanDifu = "
  loc_B1B32A: ConcatStr
  loc_B1B32B: FStStrNoPop var_F0
  loc_B1B32E: FLdUI1
  loc_B1B332: CStrI2
  loc_B1B334: FStStrNoPop var_F4
  loc_B1B337: ConcatStr
  loc_B1B338: FStStrNoPop var_F8
  loc_B1B33B: LitStr ", FilaDifu = "
  loc_B1B33E: ConcatStr
  loc_B1B33F: FStStrNoPop var_FC
  loc_B1B342: FLdI2 FilaDifu
  loc_B1B345: CStrUI1
  loc_B1B347: FStStrNoPop var_100
  loc_B1B34A: ConcatStr
  loc_B1B34B: FStStrNoPop var_104
  loc_B1B34E: LitStr ", ParvSece = "
  loc_B1B351: ConcatStr
  loc_B1B352: FStStrNoPop var_108
  loc_B1B355: FLdUI1
  loc_B1B359: CStrI2
  loc_B1B35B: FStStrNoPop var_10C
  loc_B1B35E: ConcatStr
  loc_B1B35F: FStStrNoPop var_110
  loc_B1B362: LitStr ", AnioSece = "
  loc_B1B365: ConcatStr
  loc_B1B366: FStStrNoPop var_114
  loc_B1B369: FLdI2 AnioSece
  loc_B1B36C: CStrUI1
  loc_B1B36E: FStStrNoPop var_118
  loc_B1B371: ConcatStr
  loc_B1B372: FStStrNoPop var_11C
  loc_B1B375: LitStr ", PeriInfo = "
  loc_B1B378: ConcatStr
  loc_B1B379: FStStrNoPop var_120
  loc_B1B37C: ImpAdLdI2 MemVar_D93034
  loc_B1B37F: CStrUI1
  loc_B1B381: FStStrNoPop var_124
  loc_B1B384: ConcatStr
  loc_B1B385: FStStrNoPop var_128
  loc_B1B388: LitStr ", CodiConc = '"
  loc_B1B38B: ConcatStr
  loc_B1B38C: FStStrNoPop var_12C
  loc_B1B38F: ILdRf var_90
  loc_B1B392: ConcatStr
  loc_B1B393: FStStrNoPop var_130
  loc_B1B396: LitStr "', EmisSece = '"
  loc_B1B399: ConcatStr
  loc_B1B39A: FStStrNoPop var_134
  loc_B1B39D: ILdRf var_94
  loc_B1B3A0: ConcatStr
  loc_B1B3A1: FStStrNoPop var_138
  loc_B1B3A4: LitStr "', FrecSece = '"
  loc_B1B3A7: ConcatStr
  loc_B1B3A8: FStStrNoPop var_13C
  loc_B1B3AB: ILdRf var_98
  loc_B1B3AE: ConcatStr
  loc_B1B3AF: FStStrNoPop var_140
  loc_B1B3B2: LitStr "', ImpoSece = "
  loc_B1B3B5: ConcatStr
  loc_B1B3B6: FStStrNoPop var_148
  loc_B1B3B9: LitI4 0
  loc_B1B3BE: LitI4 -1
  loc_B1B3C3: LitI4 1
  loc_B1B3C8: LitStr "."
  loc_B1B3CB: LitStr ","
  loc_B1B3CE: FLdFPR8 Modificar0
  loc_B1B3D1: CStrR8
  loc_B1B3D3: FStStrNoPop var_144
  loc_B1B3D6: ImpAdCallI2 Replace(, , , , , )
  loc_B1B3DB: FStStrNoPop var_14C
  loc_B1B3DE: ConcatStr
  loc_B1B3DF: FStStrNoPop var_150
  loc_B1B3E2: LitStr " WHERE PeriOrde = "
  loc_B1B3E5: ConcatStr
  loc_B1B3E6: FStStrNoPop var_154
  loc_B1B3E9: FLdI2 PeriOrde
  loc_B1B3EC: CStrUI1
  loc_B1B3EE: FStStrNoPop var_158
  loc_B1B3F1: ConcatStr
  loc_B1B3F2: FStStrNoPop var_15C
  loc_B1B3F5: LitStr " AND CodiSece = "
  loc_B1B3F8: ConcatStr
  loc_B1B3F9: FStStrNoPop var_160
  loc_B1B3FC: FLdI2 CodiSece
  loc_B1B3FF: CStrUI1
  loc_B1B401: FStStrNoPop var_164
  loc_B1B404: ConcatStr
  loc_B1B405: FStStrNoPop var_168
  loc_B1B408: LitStr ";"
  loc_B1B40B: ConcatStr
  loc_B1B40C: FStStrNoPop var_16C
  loc_B1B40F: Call Proc_218_44_A4808C()
  loc_B1B414: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B1B469: Call Requery()
  loc_B1B46E: FLdI2 CodiSece
  loc_B1B471: CStrUI1
  loc_B1B473: FStStrNoPop var_CC
  loc_B1B476: Call Encontrar(from_stack_1v)
  loc_B1B47B: FFree1Str var_CC
  loc_B1B47E: ExitProcHresult
End Sub

Public Sub Requery() '9E5448
  'Data Table: 41997C
  loc_9E5424: LitI4 -1
  loc_9E5429: FLdPr Me
  loc_9E542C: MemLdPr RsFrm
  loc_9E542F: Me.Requery from_stack_1
  loc_9E5434: LitVarStr var_94, "Primary"
  loc_9E5439: PopAdLdVar
  loc_9E543A: FLdPr Me
  loc_9E543D: LateIdCall
  loc_9E5445: ExitProcHresult
  loc_9E5446: CStrVarTmp
End Sub

Public Sub Encontrar(CodiSece) 'A845BC
  'Data Table: 41997C
  loc_A84530: ILdRf CodiSece
  loc_A84533: FStStrCopy var_88
  loc_A84536: Call Requery()
  loc_A8453B: LitStr "PeriOrde = '"
  loc_A8453E: ImpAdLdI2 MemVar_D93036
  loc_A84541: CStrUI1
  loc_A84543: FStStrNoPop var_8C
  loc_A84546: ConcatStr
  loc_A84547: FStStrNoPop var_90
  loc_A8454A: LitStr "'"
  loc_A8454D: ConcatStr
  loc_A8454E: PopTmpLdAdStr
  loc_A84552: Call Find(from_stack_1v)
  loc_A84557: FFreeStr var_8C = "": var_90 = ""
  loc_A84560: LitStr "CodiSece = '"
  loc_A84563: ILdRf var_88
  loc_A84566: ConcatStr
  loc_A84567: FStStrNoPop var_8C
  loc_A8456A: LitStr "'"
  loc_A8456D: ConcatStr
  loc_A8456E: PopTmpLdAdStr
  loc_A84572: Call Find(from_stack_1v)
  loc_A84577: FFreeStr var_8C = ""
  loc_A8457E: FLdRfVar var_98
  loc_A84581: FLdPr Me
  loc_A84584: MemLdPr RsFrm
  loc_A84587:  = Me.RecordCount
  loc_A8458C: ILdRf var_98
  loc_A8458F: LitI4 0
  loc_A84594: GtI4
  loc_A84595: FLdRfVar var_9C
  loc_A84598: FLdPr Me
  loc_A8459B: MemLdPr RsFrm
  loc_A8459E:  = Me.AbsolutePosition
  loc_A845A3: ILdRf var_9C
  loc_A845A6: LitI4 -3
  loc_A845AB: EqI4
  loc_A845AC: AndI4
  loc_A845AD: BranchF loc_A845BB
  loc_A845B0: FLdPr Me
  loc_A845B3: MemLdPr RsFrm
  loc_A845B6: Me.MoveLast
  loc_A845BB: ExitProcHresult
End Sub

Public Function ValidaClave(iPeriOrde, CodiSece) 'A6B860
  'Data Table: 41997C
  loc_A6B800: ZeroRetValVar
  loc_A6B802: LitStr "SELECT PeriOrde FROM servceme WHERE PeriOrde = "
  loc_A6B805: FLdI2 iPeriOrde
  loc_A6B808: CStrUI1
  loc_A6B80A: FStStrNoPop var_98
  loc_A6B80D: ConcatStr
  loc_A6B80E: FStStrNoPop var_9C
  loc_A6B811: LitStr " AND CodiSece = "
  loc_A6B814: ConcatStr
  loc_A6B815: FStStrNoPop var_A0
  loc_A6B818: FLdI2 CodiSece
  loc_A6B81B: CStrUI1
  loc_A6B81D: FStStrNoPop var_A4
  loc_A6B820: ConcatStr
  loc_A6B821: FStStrNoPop var_A8
  loc_A6B824: Call Proc_218_44_A4808C()
  loc_A6B829: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A6B836: FLdRfVar var_AC
  loc_A6B839: FLdPr Me
  loc_A6B83C: MemLdPr global_64
  loc_A6B83F:  = Me.RecordCount
  loc_A6B844: ILdRf var_AC
  loc_A6B847: LitI4 0
  loc_A6B84C: GtI4
  loc_A6B84D: BranchF loc_A6B859
  loc_A6B850: LitVarStr var_BC, "El registro YA EXISTE en la base de datos. Reintente..."
  loc_A6B855: FStVarCopy
  loc_A6B859: ExitProcCbHresult
End Function

Public Function NuevoRegistro(PeriOrde) 'A88994
  'Data Table: 41997C
  loc_A88908: LitStr "SELECT CodiSece FROM servceme WHERE PeriOrde = "
  loc_A8890B: FLdI2 PeriOrde
  loc_A8890E: CStrUI1
  loc_A88910: FStStrNoPop var_8C
  loc_A88913: ConcatStr
  loc_A88914: FStStrNoPop var_90
  loc_A88917: LitStr " ORDER BY PeriOrde, CodiSece DESC LIMIT 1"
  loc_A8891A: ConcatStr
  loc_A8891B: FStStrNoPop NuevoRegistro
  loc_A8891E: Call Proc_218_44_A4808C()
  loc_A88923: FFreeStr var_8C = "": var_90 = ""
  loc_A8892C: FLdRfVar var_98
  loc_A8892F: FLdPr Me
  loc_A88932: MemLdPr global_64
  loc_A88935:  = Me.RecordCount
  loc_A8893A: ILdRf var_98
  loc_A8893D: LitI4 0
  loc_A88942: GtI4
  loc_A88943: BranchF loc_A88988
  loc_A88946: FLdRfVar var_C0
  loc_A88949: FLdRfVar var_B0
  loc_A8894C: LitVarStr var_AC, "CodiSece"
  loc_A88951: PopAdLdVar
  loc_A88952: FLdRfVar var_9C
  loc_A88955: FLdPr Me
  loc_A88958: MemLdPr global_64
  loc_A8895B:  = Me.Fields
  loc_A88960: FLdPr var_9C
  loc_A88963: from_stack_2 = Me.Item(from_stack_1)
  loc_A88968: FLdPr var_B0
  loc_A8896B:  = Me.Value
  loc_A88970: FLdRfVar var_C0
  loc_A88973: FnCIntVar
  loc_A88975: LitI2_Byte 1
  loc_A88977: AddI2
  loc_A88978: FStI2 var_86
  loc_A8897B: FFreeAd var_9C = ""
  loc_A88982: FFree1Var var_C0 = ""
  loc_A88985: Branch loc_A8898D
  loc_A88988: LitI2_Byte 1
  loc_A8898A: FStI2 var_86
  loc_A8898D: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A60FD8
  'Data Table: 41997C
  loc_A60F74: ILdRf sSelect
  loc_A60F77: FStStrCopy var_88
  loc_A60F7A: LitNothing
  loc_A60F7C: CastAd
  loc_A60F7F: FStAdFuncNoPop
  loc_A60F82: FLdPr Me
  loc_A60F85: MemStAd
  loc_A60F89: FFree1Ad var_8C
  loc_A60F8C: New Recordset
  loc_A60F90: FStAdFuncNoPop
  loc_A60F93: FLdPr Me
  loc_A60F96: MemStAd
  loc_A60F9A: FFree1Ad var_8C
  loc_A60F9D: LitI4 -1
  loc_A60FA2: LitI4 3
  loc_A60FA7: LitI4 3
  loc_A60FAC: ImpAdLdI4 MemVar_D9301C
  loc_A60FAF: CVarAd
  loc_A60FB3: PopAdLdVar
  loc_A60FB4: ILdRf var_88
  loc_A60FB7: CVarStr var_9C
  loc_A60FBA: PopAdLdVar
  loc_A60FBB: FLdPr Me
  loc_A60FBE: MemLdPr RsFrm
  loc_A60FC1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A60FC6: LitVarStr var_9C, "Primary"
  loc_A60FCB: PopAdLdVar
  loc_A60FCC: FLdPr Me
  loc_A60FCF: LateIdCall
  loc_A60FD7: ExitProcHresult
End Sub

Public Property Get DataSource() '9F19C0
  'Data Table: 41997C
  loc_9F199C: ZeroRetVal
  loc_9F199E: FLdRfVar var_8C
  loc_9F19A1: FLdPr Me
  loc_9F19A4: MemLdPr RsFrm
  loc_9F19A7:  = Me.DataSource
  loc_9F19AC: ILdRf var_8C
  loc_9F19AF: CastAd
  loc_9F19B2: FStAdFunc var_88
  loc_9F19B5: FFree1Ad var_8C
  loc_9F19B8: ExitProcCbHresult
  loc_9F19BE: AryLdPr
End Sub

Public Property Get PeriOrde() 'A29024
  'Data Table: 41997C
  loc_A28FE0: FLdRfVar var_B0
  loc_A28FE3: FLdRfVar var_A0
  loc_A28FE6: LitVarStr var_9C, "PeriOrde"
  loc_A28FEB: PopAdLdVar
  loc_A28FEC: FLdRfVar var_8C
  loc_A28FEF: FLdPr Me
  loc_A28FF2: MemLdPr RsFrm
  loc_A28FF5:  = Me.Fields
  loc_A28FFA: FLdPr var_8C
  loc_A28FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29002: FLdPr var_A0
  loc_A29005:  = Me.Value
  loc_A2900A: FLdRfVar var_B0
  loc_A2900D: CI2Var
  loc_A2900E: FStI2 var_86
  loc_A29011: FFreeAd var_8C = ""
  loc_A29018: FFree1Var var_B0 = ""
  loc_A2901B: ExitProcCbHresult
End Sub

Public Property Get CodiSece() 'A290A4
  'Data Table: 41997C
  loc_A29060: FLdRfVar var_B0
  loc_A29063: FLdRfVar var_A0
  loc_A29066: LitVarStr var_9C, "CodiSece"
  loc_A2906B: PopAdLdVar
  loc_A2906C: FLdRfVar var_8C
  loc_A2906F: FLdPr Me
  loc_A29072: MemLdPr RsFrm
  loc_A29075:  = Me.Fields
  loc_A2907A: FLdPr var_8C
  loc_A2907D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29082: FLdPr var_A0
  loc_A29085:  = Me.Value
  loc_A2908A: FLdRfVar var_B0
  loc_A2908D: CI2Var
  loc_A2908E: FStI2 var_86
  loc_A29091: FFreeAd var_8C = ""
  loc_A29098: FFree1Var var_B0 = ""
  loc_A2909B: ExitProcCbHresult
  loc_A290A1: FnAbsI4
End Sub

Public Property Get DetaSece() 'A3E44C
  'Data Table: 41997C
  loc_A3E408: ZeroRetVal
  loc_A3E40A: FLdRfVar var_B0
  loc_A3E40D: FLdRfVar var_A0
  loc_A3E410: LitVarStr var_9C, "DetaSece"
  loc_A3E415: PopAdLdVar
  loc_A3E416: FLdRfVar var_8C
  loc_A3E419: FLdPr Me
  loc_A3E41C: MemLdPr RsFrm
  loc_A3E41F:  = Me.Fields
  loc_A3E424: FLdPr var_8C
  loc_A3E427: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E42C: FLdPr var_A0
  loc_A3E42F:  = Me.Value
  loc_A3E434: FLdRfVar var_B0
  loc_A3E437: CStrVarTmp
  loc_A3E438: FStStr var_88
  loc_A3E43B: FFreeAd var_8C = ""
  loc_A3E442: FFree1Var var_B0 = ""
  loc_A3E445: ExitProcCbHresult
End Sub

Public Property Get CodiTise() 'A29CA4
  'Data Table: 41997C
  loc_A29C60: FLdRfVar var_B0
  loc_A29C63: FLdRfVar var_A0
  loc_A29C66: LitVarStr var_9C, "CodiTise"
  loc_A29C6B: PopAdLdVar
  loc_A29C6C: FLdRfVar var_8C
  loc_A29C6F: FLdPr Me
  loc_A29C72: MemLdPr RsFrm
  loc_A29C75:  = Me.Fields
  loc_A29C7A: FLdPr var_8C
  loc_A29C7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29C82: FLdPr var_A0
  loc_A29C85:  = Me.Value
  loc_A29C8A: FLdRfVar var_B0
  loc_A29C8D: CI2Var
  loc_A29C8E: FStI2 var_86
  loc_A29C91: FFreeAd var_8C = ""
  loc_A29C98: FFree1Var var_B0 = ""
  loc_A29C9B: ExitProcCbHresult
  loc_A29CA1: ExitProc
End Sub

Public Property Get SeccDifu() 'A3E554
  'Data Table: 41997C
  loc_A3E510: ZeroRetVal
  loc_A3E512: FLdRfVar var_B0
  loc_A3E515: FLdRfVar var_A0
  loc_A3E518: LitVarStr var_9C, "SeccDifu"
  loc_A3E51D: PopAdLdVar
  loc_A3E51E: FLdRfVar var_8C
  loc_A3E521: FLdPr Me
  loc_A3E524: MemLdPr RsFrm
  loc_A3E527:  = Me.Fields
  loc_A3E52C: FLdPr var_8C
  loc_A3E52F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E534: FLdPr var_A0
  loc_A3E537:  = Me.Value
  loc_A3E53C: FLdRfVar var_B0
  loc_A3E53F: CStrVarTmp
  loc_A3E540: FStStr var_88
  loc_A3E543: FFreeAd var_8C = ""
  loc_A3E54A: FFree1Var var_B0 = ""
  loc_A3E54D: ExitProcCbHresult
End Sub

Public Property Get PlanDifu() 'A29E24
  'Data Table: 41997C
  loc_A29DE0: FLdRfVar var_B0
  loc_A29DE3: FLdRfVar var_A0
  loc_A29DE6: LitVarStr var_9C, "PlanDifu"
  loc_A29DEB: PopAdLdVar
  loc_A29DEC: FLdRfVar var_8C
  loc_A29DEF: FLdPr Me
  loc_A29DF2: MemLdPr RsFrm
  loc_A29DF5:  = Me.Fields
  loc_A29DFA: FLdPr var_8C
  loc_A29DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29E02: FLdPr var_A0
  loc_A29E05:  = Me.Value
  loc_A29E0A: FLdRfVar var_B0
  loc_A29E0D: CUI1Var
  loc_A29E0F: FStUI1 var_86
  loc_A29E13: FFreeAd var_8C = ""
  loc_A29E1A: FFree1Var var_B0 = ""
  loc_A29E1D: ExitProcCbHresult
End Sub

Public Property Get FilaDifu(arg_C) 'A29F24
  'Data Table: 41997C
  loc_A29EE0: FLdRfVar var_B0
  loc_A29EE3: FLdRfVar var_A0
  loc_A29EE6: LitVarStr var_9C, "FilaDifu"
  loc_A29EEB: PopAdLdVar
  loc_A29EEC: FLdRfVar var_8C
  loc_A29EEF: FLdPr Me
  loc_A29EF2: MemLdPr RsFrm
  loc_A29EF5:  = Me.Fields
  loc_A29EFA: FLdPr var_8C
  loc_A29EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29F02: FLdPr var_A0
  loc_A29F05:  = Me.Value
  loc_A29F0A: FLdRfVar var_B0
  loc_A29F0D: CI2Var
  loc_A29F0E: FStI2 var_86
  loc_A29F11: FFreeAd var_8C = ""
  loc_A29F18: FFree1Var var_B0 = ""
  loc_A29F1B: ExitProcCbHresult
  loc_A29F21: FLdPr arg_C6C
End Sub

Public Property Get PerpDifu() 'A3E5D8
  'Data Table: 41997C
  loc_A3E594: ZeroRetVal
  loc_A3E596: FLdRfVar var_B0
  loc_A3E599: FLdRfVar var_A0
  loc_A3E59C: LitVarStr var_9C, "PerpDifu"
  loc_A3E5A1: PopAdLdVar
  loc_A3E5A2: FLdRfVar var_8C
  loc_A3E5A5: FLdPr Me
  loc_A3E5A8: MemLdPr RsFrm
  loc_A3E5AB:  = Me.Fields
  loc_A3E5B0: FLdPr var_8C
  loc_A3E5B3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E5B8: FLdPr var_A0
  loc_A3E5BB:  = Me.Value
  loc_A3E5C0: FLdRfVar var_B0
  loc_A3E5C3: CStrVarTmp
  loc_A3E5C4: FStStr var_88
  loc_A3E5C7: FFreeAd var_8C = ""
  loc_A3E5CE: FFree1Var var_B0 = ""
  loc_A3E5D1: ExitProcCbHresult
End Sub

Public Property Get PeriInfo() 'A29FA4
  'Data Table: 41997C
  loc_A29F60: FLdRfVar var_B0
  loc_A29F63: FLdRfVar var_A0
  loc_A29F66: LitVarStr var_9C, "PeriInfo"
  loc_A29F6B: PopAdLdVar
  loc_A29F6C: FLdRfVar var_8C
  loc_A29F6F: FLdPr Me
  loc_A29F72: MemLdPr RsFrm
  loc_A29F75:  = Me.Fields
  loc_A29F7A: FLdPr var_8C
  loc_A29F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29F82: FLdPr var_A0
  loc_A29F85:  = Me.Value
  loc_A29F8A: FLdRfVar var_B0
  loc_A29F8D: CI2Var
  loc_A29F8E: FStI2 var_86
  loc_A29F91: FFreeAd var_8C = ""
  loc_A29F98: FFree1Var var_B0 = ""
  loc_A29F9B: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A3E65C
  'Data Table: 41997C
  loc_A3E618: ZeroRetVal
  loc_A3E61A: FLdRfVar var_B0
  loc_A3E61D: FLdRfVar var_A0
  loc_A3E620: LitVarStr var_9C, "CodiConc"
  loc_A3E625: PopAdLdVar
  loc_A3E626: FLdRfVar var_8C
  loc_A3E629: FLdPr Me
  loc_A3E62C: MemLdPr RsFrm
  loc_A3E62F:  = Me.Fields
  loc_A3E634: FLdPr var_8C
  loc_A3E637: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E63C: FLdPr var_A0
  loc_A3E63F:  = Me.Value
  loc_A3E644: FLdRfVar var_B0
  loc_A3E647: CStrVarTmp
  loc_A3E648: FStStr var_88
  loc_A3E64B: FFreeAd var_8C = ""
  loc_A3E652: FFree1Var var_B0 = ""
  loc_A3E655: ExitProcCbHresult
End Sub

Public Property Get EmisSece() 'A3E764
  'Data Table: 41997C
  loc_A3E720: ZeroRetVal
  loc_A3E722: FLdRfVar var_B0
  loc_A3E725: FLdRfVar var_A0
  loc_A3E728: LitVarStr var_9C, "EmisSece"
  loc_A3E72D: PopAdLdVar
  loc_A3E72E: FLdRfVar var_8C
  loc_A3E731: FLdPr Me
  loc_A3E734: MemLdPr RsFrm
  loc_A3E737:  = Me.Fields
  loc_A3E73C: FLdPr var_8C
  loc_A3E73F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E744: FLdPr var_A0
  loc_A3E747:  = Me.Value
  loc_A3E74C: FLdRfVar var_B0
  loc_A3E74F: CStrVarTmp
  loc_A3E750: FStStr var_88
  loc_A3E753: FFreeAd var_8C = ""
  loc_A3E75A: FFree1Var var_B0 = ""
  loc_A3E75D: ExitProcCbHresult
End Sub

Public Property Get FrecSece() 'A3E86C
  'Data Table: 41997C
  loc_A3E828: ZeroRetVal
  loc_A3E82A: FLdRfVar var_B0
  loc_A3E82D: FLdRfVar var_A0
  loc_A3E830: LitVarStr var_9C, "FrecSece"
  loc_A3E835: PopAdLdVar
  loc_A3E836: FLdRfVar var_8C
  loc_A3E839: FLdPr Me
  loc_A3E83C: MemLdPr RsFrm
  loc_A3E83F:  = Me.Fields
  loc_A3E844: FLdPr var_8C
  loc_A3E847: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E84C: FLdPr var_A0
  loc_A3E84F:  = Me.Value
  loc_A3E854: FLdRfVar var_B0
  loc_A3E857: CStrVarTmp
  loc_A3E858: FStStr var_88
  loc_A3E85B: FFreeAd var_8C = ""
  loc_A3E862: FFree1Var var_B0 = ""
  loc_A3E865: ExitProcCbHresult
End Sub

Public Property Get ImpoSece() 'A2A324
  'Data Table: 41997C
  loc_A2A2E0: FLdRfVar var_B4
  loc_A2A2E3: FLdRfVar var_A4
  loc_A2A2E6: LitVarStr var_A0, "ImpoSece"
  loc_A2A2EB: PopAdLdVar
  loc_A2A2EC: FLdRfVar var_90
  loc_A2A2EF: FLdPr Me
  loc_A2A2F2: MemLdPr RsFrm
  loc_A2A2F5:  = Me.Fields
  loc_A2A2FA: FLdPr var_90
  loc_A2A2FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A302: FLdPr var_A4
  loc_A2A305:  = Me.Value
  loc_A2A30A: FLdRfVar var_B4
  loc_A2A30D: CR4Var
  loc_A2A30E: FStFPR8 var_8C
  loc_A2A311: FFreeAd var_90 = ""
  loc_A2A318: FFree1Var var_B4 = ""
  loc_A2A31B: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A3E974
  'Data Table: 41997C
  loc_A3E930: ZeroRetVal
  loc_A3E932: FLdRfVar var_B0
  loc_A3E935: FLdRfVar var_A0
  loc_A3E938: LitVarStr var_9C, "CodiUsua"
  loc_A3E93D: PopAdLdVar
  loc_A3E93E: FLdRfVar var_8C
  loc_A3E941: FLdPr Me
  loc_A3E944: MemLdPr RsFrm
  loc_A3E947:  = Me.Fields
  loc_A3E94C: FLdPr var_8C
  loc_A3E94F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E954: FLdPr var_A0
  loc_A3E957:  = Me.Value
  loc_A3E95C: FLdRfVar var_B0
  loc_A3E95F: CStrVarTmp
  loc_A3E960: FStStr var_88
  loc_A3E963: FFreeAd var_8C = ""
  loc_A3E96A: FFree1Var var_B0 = ""
  loc_A3E96D: ExitProcCbHresult
End Sub

Public Property Get DetaTise() 'A16F48
  'Data Table: 41997C
  loc_A16F10: ZeroRetValVar
  loc_A16F12: FLdRfVar var_AC
  loc_A16F15: LitVarStr var_A8, "DetaTise"
  loc_A16F1A: PopAdLdVar
  loc_A16F1B: FLdRfVar var_98
  loc_A16F1E: FLdPr Me
  loc_A16F21: MemLdPr RsFrm
  loc_A16F24:  = Me.Fields
  loc_A16F29: FLdPr var_98
  loc_A16F2C: from_stack_2 = Me.Item(from_stack_1)
  loc_A16F31: FLdZeroAd var_AC
  loc_A16F34: CVarAd
  loc_A16F38: FStVar DetaTise
  loc_A16F3C: FFree1Ad var_98
  loc_A16F3F: ExitProcCbHresult
End Sub

Public Property Get DetaConc() 'A16C78
  'Data Table: 41997C
  loc_A16C40: ZeroRetValVar
  loc_A16C42: FLdRfVar var_AC
  loc_A16C45: LitVarStr var_A8, "DetaConc"
  loc_A16C4A: PopAdLdVar
  loc_A16C4B: FLdRfVar var_98
  loc_A16C4E: FLdPr Me
  loc_A16C51: MemLdPr RsFrm
  loc_A16C54:  = Me.Fields
  loc_A16C59: FLdPr var_98
  loc_A16C5C: from_stack_2 = Me.Item(from_stack_1)
  loc_A16C61: FLdZeroAd var_AC
  loc_A16C64: CVarAd
  loc_A16C68: FStVar DetaConc
  loc_A16C6C: FFree1Ad var_98
  loc_A16C6F: ExitProcCbHresult
End Sub

Public Property Get TiafConc() 'A2A724
  'Data Table: 41997C
  loc_A2A6E0: FLdRfVar var_B0
  loc_A2A6E3: FLdRfVar var_A0
  loc_A2A6E6: LitVarStr var_9C, "TiafConc"
  loc_A2A6EB: PopAdLdVar
  loc_A2A6EC: FLdRfVar var_8C
  loc_A2A6EF: FLdPr Me
  loc_A2A6F2: MemLdPr RsFrm
  loc_A2A6F5:  = Me.Fields
  loc_A2A6FA: FLdPr var_8C
  loc_A2A6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A702: FLdPr var_A0
  loc_A2A705:  = Me.Value
  loc_A2A70A: FLdRfVar var_B0
  loc_A2A70D: CUI1Var
  loc_A2A70F: FStUI1 var_86
  loc_A2A713: FFreeAd var_8C = ""
  loc_A2A71A: FFree1Var var_B0 = ""
  loc_A2A71D: ExitProcCbHresult
End Sub

Public Sub sSelect(sFiltro, FiltroCbo) 'AB1180
  'Data Table: 41997C
  loc_AB10B4: ILdRf sFiltro
  loc_AB10B7: FStStrCopy var_88
  loc_AB10BA: ILdRf FiltroCbo
  loc_AB10BD: FStAd var_8C 
  loc_AB10C1: ILdRf var_88
  loc_AB10C4: LitStr vbNullString
  loc_AB10C7: EqStr
  loc_AB10C9: BranchF loc_AB10E1
  loc_AB10CC: LitStr " WHERE servceme.PeriOrde = "
  loc_AB10CF: ImpAdLdI2 MemVar_D93036
  loc_AB10D2: CStrUI1
  loc_AB10D4: FStStrNoPop var_94
  loc_AB10D7: ConcatStr
  loc_AB10D8: FStStr var_90
  loc_AB10DB: FFree1Str var_94
  loc_AB10DE: Branch loc_AB114F
  loc_AB10E1: FLdRfVar var_96
  loc_AB10E4: FLdPr var_8C
  loc_AB10E7:  = Me.ListIndex
  loc_AB10EC: FLdI2 var_96
  loc_AB10EF: FStI2 var_98
  loc_AB10F2: FLdI2 var_98
  loc_AB10F5: LitI2_Byte 0
  loc_AB10F7: EqI2
  loc_AB10F8: BranchF loc_AB1112
  loc_AB10FB: LitStr " WHERE servceme.Periorde = "
  loc_AB10FE: ILdRf var_88
  loc_AB1101: ConcatStr
  loc_AB1102: FStStrNoPop var_94
  loc_AB1105: LitStr " ORDER BY servceme.PeriOrde"
  loc_AB1108: ConcatStr
  loc_AB1109: FStStr var_90
  loc_AB110C: FFree1Str var_94
  loc_AB110F: Branch loc_AB114F
  loc_AB1112: FLdI2 var_98
  loc_AB1115: LitI2_Byte 1
  loc_AB1117: EqI2
  loc_AB1118: BranchF loc_AB1132
  loc_AB111B: LitStr " WHERE servceme.CodiSece >= "
  loc_AB111E: ILdRf var_88
  loc_AB1121: ConcatStr
  loc_AB1122: FStStrNoPop var_94
  loc_AB1125: LitStr " ORDER BY servceme.CodiSece"
  loc_AB1128: ConcatStr
  loc_AB1129: FStStr var_90
  loc_AB112C: FFree1Str var_94
  loc_AB112F: Branch loc_AB114F
  loc_AB1132: FLdI2 var_98
  loc_AB1135: LitI2_Byte 2
  loc_AB1137: EqI2
  loc_AB1138: BranchF loc_AB114F
  loc_AB113B: LitStr " WHERE servceme.DetaSece LIKE '" & Chr(37)
  loc_AB113E: ILdRf var_88
  loc_AB1141: ConcatStr
  loc_AB1142: FStStrNoPop var_94
  loc_AB1145: LitStr Chr(37) & "' ORDER BY servceme.DetaSece, servceme.PeriOrde, servceme.CodiSece"
  loc_AB1148: ConcatStr
  loc_AB1149: FStStr var_90
  loc_AB114C: FFree1Str var_94
  loc_AB114F: LitStr "SELECT servceme.*, DetaTise, DetaCeme, DetaConc FROM servceme "
  loc_AB1152: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = servceme.CodiTise"
  loc_AB1155: ConcatStr
  loc_AB1156: FStStrNoPop var_94
  loc_AB1159: LitStr " LEFT JOIN cementerio ON cementerio.CodiCeme = servceme.CodiCeme"
  loc_AB115C: ConcatStr
  loc_AB115D: FStStrNoPop var_9C
  loc_AB1160: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = servceme.PeriInfo AND concepto.CodiConc = servceme.CodiConc"
  loc_AB1163: ConcatStr
  loc_AB1164: FStStrNoPop var_A0
  loc_AB1167: ILdRf var_90
  loc_AB116A: ConcatStr
  loc_AB116B: FStStrNoPop var_A4
  loc_AB116E: Call RedefineRS(from_stack_1v)
  loc_AB1173: FFreeStr var_94 = "": var_9C = "": var_A0 = ""
  loc_AB117E: ExitProcHresult
End Sub

Private Function Proc_218_43_9F1A78() '9F1A78
  'Data Table: 41997C
  loc_9F1A54: LitStr "Primary"
  loc_9F1A57: FLdPr Me
  loc_9F1A5A: LateIdLdVar var_94 DispID_4 0
  loc_9F1A61: CastAdVar Me
  loc_9F1A65: FStAdFunc var_98
  loc_9F1A68: FLdPr var_98
  loc_9F1A70: FFree1Ad var_98
  loc_9F1A73: FFree1Var var_94 = ""
  loc_9F1A76: ExitProcHresult
End Function

Private Function Proc_218_44_A4808C(arg_C) 'A4808C
  'Data Table: 41997C
  loc_A48038: ILdRf arg_C
  loc_A4803B: FStStrCopy var_88
  loc_A4803E: LitNothing
  loc_A48040: CastAd
  loc_A48043: FStAdFuncNoPop
  loc_A48046: FLdPr Me
  loc_A48049: MemStAd
  loc_A4804D: FFree1Ad var_8C
  loc_A48050: New Recordset
  loc_A48054: FStAdFuncNoPop
  loc_A48057: FLdPr Me
  loc_A4805A: MemStAd
  loc_A4805E: FFree1Ad var_8C
  loc_A48061: LitI4 -1
  loc_A48066: LitI4 3
  loc_A4806B: LitI4 3
  loc_A48070: ImpAdLdI4 MemVar_D9301C
  loc_A48073: CVarAd
  loc_A48077: PopAdLdVar
  loc_A48078: ILdRf var_88
  loc_A4807B: CVarStr var_9C
  loc_A4807E: PopAdLdVar
  loc_A4807F: FLdPr Me
  loc_A48082: MemLdPr global_64
  loc_A48085: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4808A: ExitProcHresult
End Function

Private Function Proc_218_45_9E005C(arg_C) '9E005C
  'Data Table: 41997C
  loc_9E0040: ILdI4 arg_C
  loc_9E0043: FStStrCopy var_88
  loc_9E0046: ILdRf var_88
  loc_9E0049: LitStr "Primary"
  loc_9E004C: EqStr
  loc_9E004E: BranchF loc_9E005B
  loc_9E0051: FLdPr Me
  loc_9E0054: MemLdStr RsFrm
  loc_9E0057: IStAd
  loc_9E005B: ExitProcHresult
End Function
