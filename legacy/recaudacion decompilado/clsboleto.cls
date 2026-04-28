VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsboleto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsFrmGis As New UnkObject


Public Function RsFrmGet() '4F2D34
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4F2D43
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4F2D52
  RsFrm = Value
End Sub

Public Function RsFrmGisGet() '4F2D61
  RsFrmGisGet = RsFrmGis
End Function

Public Sub RsFrmGisPut(Value) '4F2D70
  RsFrmGis = Value
End Sub

Public Sub RsFrmGisSet(Value) '4F2D7F
  RsFrmGis = Value
End Sub

Public Sub MoveFirst() '9ECE34
  'Data Table: 4F2254
  loc_9ECE0C: FLdRfVar var_88
  loc_9ECE0F: FLdPr Me
  loc_9ECE12: MemLdPr RsFrm
  loc_9ECE15:  = Me.RecordCount
  loc_9ECE1A: ILdRf var_88
  loc_9ECE1D: LitI4 0
  loc_9ECE22: GtI4
  loc_9ECE23: BranchF loc_9ECE31
  loc_9ECE26: FLdPr Me
  loc_9ECE29: MemLdPr RsFrm
  loc_9ECE2C: Me.MoveFirst
  loc_9ECE31: ExitProcHresult
End Sub

Public Sub MoveLast() '9ECD84
  'Data Table: 4F2254
  loc_9ECD5C: FLdRfVar var_88
  loc_9ECD5F: FLdPr Me
  loc_9ECD62: MemLdPr RsFrm
  loc_9ECD65:  = Me.RecordCount
  loc_9ECD6A: ILdRf var_88
  loc_9ECD6D: LitI4 0
  loc_9ECD72: GtI4
  loc_9ECD73: BranchF loc_9ECD81
  loc_9ECD76: FLdPr Me
  loc_9ECD79: MemLdPr RsFrm
  loc_9ECD7C: Me.MoveLast
  loc_9ECD81: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6BDB8
  'Data Table: 4F2254
  loc_A6BD40: FLdRfVar var_86
  loc_A6BD43: FLdPr Me
  loc_A6BD46: MemLdPr RsFrm
  loc_A6BD49:  = Me.EOF
  loc_A6BD4E: FLdI2 var_86
  loc_A6BD51: NotI4
  loc_A6BD52: FLdRfVar var_8C
  loc_A6BD55: FLdPr Me
  loc_A6BD58: MemLdPr RsFrm
  loc_A6BD5B:  = Me.RecordCount
  loc_A6BD60: ILdRf var_8C
  loc_A6BD63: LitI4 0
  loc_A6BD68: GtI4
  loc_A6BD69: AndI4
  loc_A6BD6A: BranchF loc_A6BD78
  loc_A6BD6D: FLdPr Me
  loc_A6BD70: MemLdPr RsFrm
  loc_A6BD73: Me.MoveNext
  loc_A6BD78: FLdRfVar var_86
  loc_A6BD7B: FLdPr Me
  loc_A6BD7E: MemLdPr RsFrm
  loc_A6BD81:  = Me.EOF
  loc_A6BD86: FLdI2 var_86
  loc_A6BD89: FLdRfVar var_8C
  loc_A6BD8C: FLdPr Me
  loc_A6BD8F: MemLdPr RsFrm
  loc_A6BD92:  = Me.RecordCount
  loc_A6BD97: ILdRf var_8C
  loc_A6BD9A: LitI4 0
  loc_A6BD9F: GtI4
  loc_A6BDA0: AndI4
  loc_A6BDA1: BranchF loc_A6BDB4
  loc_A6BDA4: ImpAdCallFPR4 Beep()
  loc_A6BDA9: FLdPr Me
  loc_A6BDAC: MemLdPr RsFrm
  loc_A6BDAF: Me.MoveLast
  loc_A6BDB4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0ED0
  'Data Table: 4F2254
  loc_9B0EC4: FLdPr Me
  loc_9B0EC7: MemLdPr RsFrm
  loc_9B0ECA: Me.MoveNext
  loc_9B0ECF: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA040
  'Data Table: 4F2254
  loc_9BA02C: LitVar_Missing var_94
  loc_9BA02F: PopAdLdVar
  loc_9BA030: ILdI2 iValor
  loc_9BA033: CI4UI1
  loc_9BA034: FLdPr Me
  loc_9BA037: MemLdPr RsFrm
  loc_9BA03A: Me.Move from_stack_1, from_stack_2
  loc_9BA03F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6CF70
  'Data Table: 4F2254
  loc_A6CEF8: FLdRfVar var_86
  loc_A6CEFB: FLdPr Me
  loc_A6CEFE: MemLdPr RsFrm
  loc_A6CF01:  = Me.BOF
  loc_A6CF06: FLdI2 var_86
  loc_A6CF09: NotI4
  loc_A6CF0A: FLdRfVar var_8C
  loc_A6CF0D: FLdPr Me
  loc_A6CF10: MemLdPr RsFrm
  loc_A6CF13:  = Me.RecordCount
  loc_A6CF18: ILdRf var_8C
  loc_A6CF1B: LitI4 0
  loc_A6CF20: GtI4
  loc_A6CF21: AndI4
  loc_A6CF22: BranchF loc_A6CF30
  loc_A6CF25: FLdPr Me
  loc_A6CF28: MemLdPr RsFrm
  loc_A6CF2B: Me.MovePrevious
  loc_A6CF30: FLdRfVar var_86
  loc_A6CF33: FLdPr Me
  loc_A6CF36: MemLdPr RsFrm
  loc_A6CF39:  = Me.BOF
  loc_A6CF3E: FLdI2 var_86
  loc_A6CF41: FLdRfVar var_8C
  loc_A6CF44: FLdPr Me
  loc_A6CF47: MemLdPr RsFrm
  loc_A6CF4A:  = Me.RecordCount
  loc_A6CF4F: ILdRf var_8C
  loc_A6CF52: LitI4 0
  loc_A6CF57: GtI4
  loc_A6CF58: AndI4
  loc_A6CF59: BranchF loc_A6CF6C
  loc_A6CF5C: ImpAdCallFPR4 Beep()
  loc_A6CF61: FLdPr Me
  loc_A6CF64: MemLdPr RsFrm
  loc_A6CF67: Me.MoveFirst
  loc_A6CF6C: ExitProcHresult
End Sub

Public Property Get EOF() '9D38A0
  'Data Table: 4F2254
  loc_9D3884: FLdRfVar var_88
  loc_9D3887: FLdPr Me
  loc_9D388A: MemLdPr RsFrm
  loc_9D388D:  = Me.EOF
  loc_9D3892: FLdI2 var_88
  loc_9D3895: FStI2 var_86
  loc_9D3898: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D3C30
  'Data Table: 4F2254
  loc_9D3C14: FLdRfVar var_88
  loc_9D3C17: FLdPr Me
  loc_9D3C1A: MemLdPr RsFrm
  loc_9D3C1D:  = Me.BOF
  loc_9D3C22: FLdI2 var_88
  loc_9D3C25: FStI2 var_86
  loc_9D3C28: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B3AF8
  'Data Table: 4F2254
  loc_9B3AE8: ILdI4 sOrden
  loc_9B3AEB: FLdPr Me
  loc_9B3AEE: MemLdPr RsFrm
  loc_9B3AF1: Me.Sort = from_stack_1
  loc_9B3AF6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E3DA0
  'Data Table: 4F2254
  loc_9E3D80: LitVar_Missing var_94
  loc_9E3D83: PopAdLdVar
  loc_9E3D84: LitI4 1
  loc_9E3D89: LitI4 0
  loc_9E3D8E: ILdI4 sFind
  loc_9E3D91: FLdPr Me
  loc_9E3D94: MemLdPr RsFrm
  loc_9E3D97: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E3D9C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B8F84
  'Data Table: 4F2254
  loc_9B8F70: ILdI4 sCriterio
  loc_9B8F73: CVarStr var_94
  loc_9B8F76: PopAdLdVar
  loc_9B8F77: FLdPr Me
  loc_9B8F7A: MemLdPr RsFrm
  loc_9B8F7D: Me.Filter = from_stack_1
  loc_9B8F82: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D426C
  'Data Table: 4F2254
  loc_9D4250: FLdRfVar var_8C
  loc_9D4253: FLdPr Me
  loc_9D4256: MemLdPr RsFrm
  loc_9D4259:  = Me.AbsolutePosition
  loc_9D425E: ILdRf var_8C
  loc_9D4261: FStR4 var_88
  loc_9D4264: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D498C
  'Data Table: 4F2254
  loc_9D4970: FLdRfVar var_8C
  loc_9D4973: FLdPr Me
  loc_9D4976: MemLdPr RsFrm
  loc_9D4979:  = Me.RecordCount
  loc_9D497E: ILdRf var_8C
  loc_9D4981: FStR4 var_88
  loc_9D4984: ExitProcCbHresult
End Sub

Public Property Get RecordCountGIS() '9D4D68
  'Data Table: 4F2254
  loc_9D4D4C: FLdRfVar var_8C
  loc_9D4D4F: FLdPr Me
  loc_9D4D52: MemLdPr RsFrmGis
  loc_9D4D55:  = Me.RecordCount
  loc_9D4D5A: ILdRf var_8C
  loc_9D4D5D: FStR4 var_88
  loc_9D4D60: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole) 'B6B584
  'Data Table: 4F2254
  loc_B6B208: ILdRf CuenCtct
  loc_B6B20B: FStStrCopy var_88
  loc_B6B20E: ILdRf CucuPers
  loc_B6B211: FStStrCopy var_8C
  loc_B6B214: FDupVar
  loc_B6B21A: ILdRf CuotDefa
  loc_B6B21D: FStStrCopy var_A0
  loc_B6B220: ILdRf CapiBole
  loc_B6B223: FStStrCopy var_A4
  loc_B6B226: FLdRfVar var_A8
  loc_B6B229: ILdRf NumeBole
  loc_B6B22C: FLdI2 PeriBole
  loc_B6B22F: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_B6B234: ILdRf var_A8
  loc_B6B237: LitStr vbNullString
  loc_B6B23A: NeStr
  loc_B6B23C: FFree1Str var_A8
  loc_B6B23F: BranchF loc_B6B24D
  loc_B6B242: LitStr "El boleto ya existe. Verifique el boleto..."
  loc_B6B245: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6B24A: Branch loc_B6B582
  loc_B6B24D: LitI2_Byte 0
  loc_B6B24F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B6B254: FStFPR8 var_214
  loc_B6B257: LitStr "INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) VALUES ("
  loc_B6B25A: FLdI2 PeriBole
  loc_B6B25D: CStrUI1
  loc_B6B25F: FStStrNoPop var_A8
  loc_B6B262: ConcatStr
  loc_B6B263: FStStrNoPop var_AC
  loc_B6B266: LitStr ","
  loc_B6B269: ConcatStr
  loc_B6B26A: FStStrNoPop var_B0
  loc_B6B26D: ILdRf NumeBole
  loc_B6B270: CStrI4
  loc_B6B272: FStStrNoPop var_B4
  loc_B6B275: ConcatStr
  loc_B6B276: FStStrNoPop var_B8
  loc_B6B279: LitStr ","
  loc_B6B27C: ConcatStr
  loc_B6B27D: FStStrNoPop var_BC
  loc_B6B280: FLdUI1
  loc_B6B284: CStrI2
  loc_B6B286: FStStrNoPop var_C0
  loc_B6B289: ConcatStr
  loc_B6B28A: FStStrNoPop var_C4
  loc_B6B28D: LitStr ",'"
  loc_B6B290: ConcatStr
  loc_B6B291: FStStrNoPop var_C8
  loc_B6B294: ILdRf var_88
  loc_B6B297: ConcatStr
  loc_B6B298: FStStrNoPop var_CC
  loc_B6B29B: LitStr "','"
  loc_B6B29E: ConcatStr
  loc_B6B29F: FStStrNoPop var_D0
  loc_B6B2A2: ILdRf var_8C
  loc_B6B2A5: ConcatStr
  loc_B6B2A6: FStStrNoPop var_D4
  loc_B6B2A9: LitStr "','"
  loc_B6B2AC: ConcatStr
  loc_B6B2AD: FStStrNoPop var_118
  loc_B6B2B0: LitI4 1
  loc_B6B2B5: LitI4 1
  loc_B6B2BA: LitVarStr var_104, "yyyy-mm-dd"
  loc_B6B2BF: FStVarCopyObj var_114
  loc_B6B2C2: FLdRfVar var_114
  loc_B6B2C5: FLdFPR8 var_214
  loc_B6B2C8: CVarDate var_F4
  loc_B6B2CC: ImpAdCallI2 Format$(, )
  loc_B6B2D1: FStStrNoPop var_11C
  loc_B6B2D4: ConcatStr
  loc_B6B2D5: FStStrNoPop var_120
  loc_B6B2D8: LitStr "','"
  loc_B6B2DB: ConcatStr
  loc_B6B2DC: FStStrNoPop var_144
  loc_B6B2DF: LitI4 1
  loc_B6B2E4: LitI4 1
  loc_B6B2E9: LitVarStr var_130, "yyyy-mm-dd"
  loc_B6B2EE: FStVarCopyObj var_140
  loc_B6B2F1: FLdRfVar var_140
  loc_B6B2F4: FLdRfVar var_9C
  loc_B6B2F7: ImpAdCallI2 Format$(, )
  loc_B6B2FC: FStStrNoPop var_148
  loc_B6B2FF: ConcatStr
  loc_B6B300: FStStrNoPop var_14C
  loc_B6B303: LitStr "',"
  loc_B6B306: ConcatStr
  loc_B6B307: FStStrNoPop var_150
  loc_B6B30A: FLdI2 CodiFapa
  loc_B6B30D: CStrUI1
  loc_B6B30F: FStStrNoPop var_154
  loc_B6B312: ConcatStr
  loc_B6B313: FStStrNoPop var_158
  loc_B6B316: LitStr ",'"
  loc_B6B319: ConcatStr
  loc_B6B31A: FStStrNoPop var_15C
  loc_B6B31D: ILdRf var_A0
  loc_B6B320: ConcatStr
  loc_B6B321: FStStrNoPop var_160
  loc_B6B324: LitStr "','"
  loc_B6B327: ConcatStr
  loc_B6B328: FStStrNoPop var_164
  loc_B6B32B: ILdRf var_A4
  loc_B6B32E: ConcatStr
  loc_B6B32F: FStStrNoPop var_168
  loc_B6B332: LitStr "',"
  loc_B6B335: ConcatStr
  loc_B6B336: FStStrNoPop var_16C
  loc_B6B339: ILdRf RecaBole
  loc_B6B33C: CStrI4
  loc_B6B33E: FStStrNoPop var_170
  loc_B6B341: ConcatStr
  loc_B6B342: FStStrNoPop var_174
  loc_B6B345: LitStr ","
  loc_B6B348: ConcatStr
  loc_B6B349: FStStrNoPop var_178
  loc_B6B34C: FLdI2 AddNew0
  loc_B6B34F: CStrUI1
  loc_B6B351: FStStrNoPop var_17C
  loc_B6B354: ConcatStr
  loc_B6B355: FStStrNoPop var_180
  loc_B6B358: LitStr ","
  loc_B6B35B: ConcatStr
  loc_B6B35C: FStStrNoPop var_188
  loc_B6B35F: LitI4 0
  loc_B6B364: LitI4 -1
  loc_B6B369: LitI4 1
  loc_B6B36E: LitStr "."
  loc_B6B371: LitStr ","
  loc_B6B374: FLdFPR8 AddNew4
  loc_B6B377: CStrR8
  loc_B6B379: FStStrNoPop var_184
  loc_B6B37C: ImpAdCallI2 Replace(, , , , , )
  loc_B6B381: FStStrNoPop var_18C
  loc_B6B384: ConcatStr
  loc_B6B385: FStStrNoPop var_190
  loc_B6B388: LitStr ","
  loc_B6B38B: ConcatStr
  loc_B6B38C: FStStrNoPop var_198
  loc_B6B38F: LitI4 0
  loc_B6B394: LitI4 -1
  loc_B6B399: LitI4 1
  loc_B6B39E: LitStr "."
  loc_B6B3A1: LitStr ","
  loc_B6B3A4: FLdFPR8 AddNewC
  loc_B6B3A7: CStrR8
  loc_B6B3A9: FStStrNoPop var_194
  loc_B6B3AC: ImpAdCallI2 Replace(, , , , , )
  loc_B6B3B1: FStStrNoPop var_19C
  loc_B6B3B4: ConcatStr
  loc_B6B3B5: FStStrNoPop var_1A0
  loc_B6B3B8: LitStr ","
  loc_B6B3BB: ConcatStr
  loc_B6B3BC: FStStrNoPop var_1A8
  loc_B6B3BF: LitI4 0
  loc_B6B3C4: LitI4 -1
  loc_B6B3C9: LitI4 1
  loc_B6B3CE: LitStr "."
  loc_B6B3D1: LitStr ","
  loc_B6B3D4: FLdFPR8 TotaBole
  loc_B6B3D7: CStrR8
  loc_B6B3D9: FStStrNoPop var_1A4
  loc_B6B3DC: ImpAdCallI2 Replace(, , , , , )
  loc_B6B3E1: FStStrNoPop var_1AC
  loc_B6B3E4: ConcatStr
  loc_B6B3E5: FStStrNoPop var_1B0
  loc_B6B3E8: LitStr ","
  loc_B6B3EB: ConcatStr
  loc_B6B3EC: FStStrNoPop var_1B8
  loc_B6B3EF: LitI4 0
  loc_B6B3F4: LitI4 -1
  loc_B6B3F9: LitI4 1
  loc_B6B3FE: LitStr "."
  loc_B6B401: LitStr ","
  loc_B6B404: FLdFPR8 arg_5C
  loc_B6B407: CStrR8
  loc_B6B409: FStStrNoPop var_1B4
  loc_B6B40C: ImpAdCallI2 Replace(, , , , , )
  loc_B6B411: FStStrNoPop var_1BC
  loc_B6B414: ConcatStr
  loc_B6B415: FStStrNoPop var_1C0
  loc_B6B418: LitStr ","
  loc_B6B41B: ConcatStr
  loc_B6B41C: FStStrNoPop var_1C8
  loc_B6B41F: LitI4 0
  loc_B6B424: LitI4 -1
  loc_B6B429: LitI4 1
  loc_B6B42E: LitStr "."
  loc_B6B431: LitStr ","
  loc_B6B434: FLdFPR8 arg_64
  loc_B6B437: CStrR8
  loc_B6B439: FStStrNoPop var_1C4
  loc_B6B43C: ImpAdCallI2 Replace(, , , , , )
  loc_B6B441: FStStrNoPop var_1CC
  loc_B6B444: ConcatStr
  loc_B6B445: FStStrNoPop var_1D0
  loc_B6B448: LitStr ","
  loc_B6B44B: ConcatStr
  loc_B6B44C: FStStrNoPop var_1D8
  loc_B6B44F: LitI4 0
  loc_B6B454: LitI4 -1
  loc_B6B459: LitI4 1
  loc_B6B45E: LitStr "."
  loc_B6B461: LitStr ","
  loc_B6B464: FLdFPR8 arg_6C
  loc_B6B467: CStrR8
  loc_B6B469: FStStrNoPop var_1D4
  loc_B6B46C: ImpAdCallI2 Replace(, , , , , )
  loc_B6B471: FStStrNoPop var_1DC
  loc_B6B474: ConcatStr
  loc_B6B475: FStStrNoPop var_1E0
  loc_B6B478: LitStr ","
  loc_B6B47B: ConcatStr
  loc_B6B47C: FStStrNoPop var_1E8
  loc_B6B47F: LitI4 0
  loc_B6B484: LitI4 -1
  loc_B6B489: LitI4 1
  loc_B6B48E: LitStr "."
  loc_B6B491: LitStr ","
  loc_B6B494: FLdFPR8 arg_74
  loc_B6B497: CStrR8
  loc_B6B499: FStStrNoPop var_1E4
  loc_B6B49C: ImpAdCallI2 Replace(, , , , , )
  loc_B6B4A1: FStStrNoPop var_1EC
  loc_B6B4A4: ConcatStr
  loc_B6B4A5: FStStrNoPop var_1F0
  loc_B6B4A8: LitStr ","
  loc_B6B4AB: ConcatStr
  loc_B6B4AC: FStStrNoPop var_1F8
  loc_B6B4AF: LitI4 0
  loc_B6B4B4: LitI4 -1
  loc_B6B4B9: LitI4 1
  loc_B6B4BE: LitStr "."
  loc_B6B4C1: LitStr ","
  loc_B6B4C4: FLdFPR8 arg_7C
  loc_B6B4C7: CStrR8
  loc_B6B4C9: FStStrNoPop var_1F4
  loc_B6B4CC: ImpAdCallI2 Replace(, , , , , )
  loc_B6B4D1: FStStrNoPop var_1FC
  loc_B6B4D4: ConcatStr
  loc_B6B4D5: FStStrNoPop var_200
  loc_B6B4D8: LitStr ",'"
  loc_B6B4DB: ConcatStr
  loc_B6B4DC: FStStrNoPop var_204
  loc_B6B4DF: ImpAdLdI4 MemVar_D9302C
  loc_B6B4E2: ConcatStr
  loc_B6B4E3: FStStrNoPop var_208
  loc_B6B4E6: LitStr "')"
  loc_B6B4E9: ConcatStr
  loc_B6B4EA: FStStrNoPop var_20C
  loc_B6B4ED: Call EjecutarRsCls(from_stack_1v)
  loc_B6B4F2: FFreeStr var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_118 = "": var_11C = "": var_120 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_B6B579: FFreeVar var_F4 = "": var_114 = ""
  loc_B6B582: ExitProcHresult
End Sub

Public Sub AddnewTransaction(sEjecutar) '9FC8D4
  'Data Table: 4F2254
  loc_9FC8A8: ILdRf sEjecutar
  loc_9FC8AB: FStStrCopy var_88
  loc_9FC8AE: OnErrorGoto loc_9FC8C2
  loc_9FC8B1: ILdRf var_88
  loc_9FC8B4: Call EjecutarRsCls(from_stack_1v)
  loc_9FC8B9: LitStr "COMMIT;"
  loc_9FC8BC: Call EjecutarRsCls(from_stack_1v)
  loc_9FC8C1: ExitProcHresult
  loc_9FC8C2: LitStr "ROLLBACK;"
  loc_9FC8C5: Call EjecutarRsCls(from_stack_1v)
  loc_9FC8CA: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_9FC8CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_9FC8D2: ExitProcHresult
End Sub

Public Sub Delete() '9FD178
  'Data Table: 4F2254
  loc_9FD148: FLdRfVar var_88
  loc_9FD14B: FLdPr Me
  loc_9FD14E: MemLdPr RsFrm
  loc_9FD151:  = Me.RecordCount
  loc_9FD156: ILdRf var_88
  loc_9FD159: LitI4 0
  loc_9FD15E: GtI4
  loc_9FD15F: BranchF loc_9FD177
  loc_9FD162: LitI4 1
  loc_9FD167: FLdPr Me
  loc_9FD16A: MemLdPr RsFrm
  loc_9FD16D: Me.Delete
  loc_9FD172: Call MoveNext()
  loc_9FD177: ExitProcHresult
End Sub

Public Sub Requery() '9E6EDC
  'Data Table: 4F2254
  loc_9E6EB8: LitI4 -1
  loc_9E6EBD: FLdPr Me
  loc_9E6EC0: MemLdPr RsFrm
  loc_9E6EC3: Me.Requery from_stack_1
  loc_9E6EC8: LitVarStr var_94, "Primary"
  loc_9E6ECD: PopAdLdVar
  loc_9E6ECE: FLdPr Me
  loc_9E6ED1: LateIdCall
  loc_9E6ED9: ExitProcHresult
End Sub

Public Sub Update() 'A0CC94
  'Data Table: 4F2254
  loc_A0CC58: FLdPr Me
  loc_A0CC5B: MemLdStr RsFrm
  loc_A0CC5E: FStAd var_88 
  loc_A0CC62: LitI4 3
  loc_A0CC67: FLdPr var_88
  loc_A0CC6A: Me.UpdateBatch
  loc_A0CC6F: FLdRfVar var_8C
  loc_A0CC72: FLdPr var_88
  loc_A0CC75:  = Me.EditMode
  loc_A0CC7A: ILdRf var_8C
  loc_A0CC7D: LitI4 2
  loc_A0CC82: EqI4
  loc_A0CC83: BranchF loc_A0CC8B
  loc_A0CC86: Call MoveLast()
  loc_A0CC8B: LitNothing
  loc_A0CC8D: FStAd var_88 
  loc_A0CC91: ExitProcHresult
End Sub

Public Sub Cancel() 'A2B0AC
  'Data Table: 4F2254
  loc_A2B060: FLdPr Me
  loc_A2B063: MemLdStr RsFrm
  loc_A2B066: FStAd var_88 
  loc_A2B06A: FLdRfVar var_8C
  loc_A2B06D: FLdPr var_88
  loc_A2B070:  = Me.RecordCount
  loc_A2B075: ILdRf var_8C
  loc_A2B078: LitI4 0
  loc_A2B07D: GtI4
  loc_A2B07E: BranchF loc_A2B0A5
  loc_A2B081: FLdPr var_88
  loc_A2B084: Me.CancelUpdate
  loc_A2B089: FLdRfVar var_8C
  loc_A2B08C: FLdPr var_88
  loc_A2B08F:  = Me.EditMode
  loc_A2B094: ILdRf var_8C
  loc_A2B097: LitI4 2
  loc_A2B09C: EqI4
  loc_A2B09D: BranchF loc_A2B0A5
  loc_A2B0A0: Call MoveFirst()
  loc_A2B0A5: LitNothing
  loc_A2B0A7: FStAd var_88 
  loc_A2B0AB: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E3A80
  'Data Table: 4F2254
  loc_9E3A60: FLdRfVar var_8C
  loc_9E3A63: FLdPr Me
  loc_9E3A66: MemLdPr RsFrm
  loc_9E3A69:  = Me.EditMode
  loc_9E3A6E: ILdRf var_8C
  loc_9E3A71: LitI4 0
  loc_9E3A76: NeI4
  loc_9E3A77: FStI2 var_86
  loc_9E3A7A: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5EF8C
  'Data Table: 4F2254
  loc_A5EF28: ILdRf sSelect
  loc_A5EF2B: FStStrCopy var_88
  loc_A5EF2E: LitNothing
  loc_A5EF30: CastAd
  loc_A5EF33: FStAdFuncNoPop
  loc_A5EF36: FLdPr Me
  loc_A5EF39: MemStAd
  loc_A5EF3D: FFree1Ad var_8C
  loc_A5EF40: New Recordset
  loc_A5EF44: FStAdFuncNoPop
  loc_A5EF47: FLdPr Me
  loc_A5EF4A: MemStAd
  loc_A5EF4E: FFree1Ad var_8C
  loc_A5EF51: LitI4 -1
  loc_A5EF56: LitI4 3
  loc_A5EF5B: LitI4 3
  loc_A5EF60: ImpAdLdI4 MemVar_D9301C
  loc_A5EF63: CVarAd
  loc_A5EF67: PopAdLdVar
  loc_A5EF68: ILdRf var_88
  loc_A5EF6B: CVarStr var_9C
  loc_A5EF6E: PopAdLdVar
  loc_A5EF6F: FLdPr Me
  loc_A5EF72: MemLdPr RsFrm
  loc_A5EF75: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5EF7A: LitVarStr var_9C, "Primary"
  loc_A5EF7F: PopAdLdVar
  loc_A5EF80: FLdPr Me
  loc_A5EF83: LateIdCall
  loc_A5EF8B: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A47484
  'Data Table: 4F2254
  loc_A47430: ILdRf sSelect
  loc_A47433: FStStrCopy var_88
  loc_A47436: LitNothing
  loc_A47438: CastAd
  loc_A4743B: FStAdFuncNoPop
  loc_A4743E: FLdPr Me
  loc_A47441: MemStAd
  loc_A47445: FFree1Ad var_8C
  loc_A47448: New Recordset
  loc_A4744C: FStAdFuncNoPop
  loc_A4744F: FLdPr Me
  loc_A47452: MemStAd
  loc_A47456: FFree1Ad var_8C
  loc_A47459: LitI4 -1
  loc_A4745E: LitI4 3
  loc_A47463: LitI4 3
  loc_A47468: ImpAdLdI4 MemVar_D9301C
  loc_A4746B: CVarAd
  loc_A4746F: PopAdLdVar
  loc_A47470: ILdRf var_88
  loc_A47473: CVarStr var_9C
  loc_A47476: PopAdLdVar
  loc_A47477: FLdPr Me
  loc_A4747A: MemLdPr global_60
  loc_A4747D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A47482: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A4D80C
  'Data Table: 4F2254
  loc_A4D7B8: ILdRf sSelect
  loc_A4D7BB: FStStrCopy var_88
  loc_A4D7BE: LitNothing
  loc_A4D7C0: CastAd
  loc_A4D7C3: FStAdFuncNoPop
  loc_A4D7C6: FLdPr Me
  loc_A4D7C9: MemStAd
  loc_A4D7CD: FFree1Ad var_8C
  loc_A4D7D0: New Recordset
  loc_A4D7D4: FStAdFuncNoPop
  loc_A4D7D7: FLdPr Me
  loc_A4D7DA: MemStAd
  loc_A4D7DE: FFree1Ad var_8C
  loc_A4D7E1: LitI4 -1
  loc_A4D7E6: LitI4 3
  loc_A4D7EB: LitI4 3
  loc_A4D7F0: ImpAdLdI4 MemVar_D9301C
  loc_A4D7F3: CVarAd
  loc_A4D7F7: PopAdLdVar
  loc_A4D7F8: ILdRf var_88
  loc_A4D7FB: CVarStr var_9C
  loc_A4D7FE: PopAdLdVar
  loc_A4D7FF: FLdPr Me
  loc_A4D802: MemLdPr global_64
  loc_A4D805: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D80A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A4DCF8
  'Data Table: 4F2254
  loc_A4DCA4: ILdRf sSelect
  loc_A4DCA7: FStStrCopy var_88
  loc_A4DCAA: LitNothing
  loc_A4DCAC: CastAd
  loc_A4DCAF: FStAdFuncNoPop
  loc_A4DCB2: FLdPr Me
  loc_A4DCB5: MemStAd
  loc_A4DCB9: FFree1Ad var_8C
  loc_A4DCBC: New Recordset
  loc_A4DCC0: FStAdFuncNoPop
  loc_A4DCC3: FLdPr Me
  loc_A4DCC6: MemStAd
  loc_A4DCCA: FFree1Ad var_8C
  loc_A4DCCD: LitI4 -1
  loc_A4DCD2: LitI4 3
  loc_A4DCD7: LitI4 3
  loc_A4DCDC: ImpAdLdI4 MemVar_D9301C
  loc_A4DCDF: CVarAd
  loc_A4DCE3: PopAdLdVar
  loc_A4DCE4: ILdRf var_88
  loc_A4DCE7: CVarStr var_9C
  loc_A4DCEA: PopAdLdVar
  loc_A4DCEB: FLdPr Me
  loc_A4DCEE: MemLdPr global_68
  loc_A4DCF1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4DCF6: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A4DE9C
  'Data Table: 4F2254
  loc_A4DE48: ILdRf sSelect
  loc_A4DE4B: FStStrCopy var_88
  loc_A4DE4E: LitNothing
  loc_A4DE50: CastAd
  loc_A4DE53: FStAdFuncNoPop
  loc_A4DE56: FLdPr Me
  loc_A4DE59: MemStAd
  loc_A4DE5D: FFree1Ad var_8C
  loc_A4DE60: New Recordset
  loc_A4DE64: FStAdFuncNoPop
  loc_A4DE67: FLdPr Me
  loc_A4DE6A: MemStAd
  loc_A4DE6E: FFree1Ad var_8C
  loc_A4DE71: LitI4 -1
  loc_A4DE76: LitI4 3
  loc_A4DE7B: LitI4 3
  loc_A4DE80: ImpAdLdI4 MemVar_D9301C
  loc_A4DE83: CVarAd
  loc_A4DE87: PopAdLdVar
  loc_A4DE88: ILdRf var_88
  loc_A4DE8B: CVarStr var_9C
  loc_A4DE8E: PopAdLdVar
  loc_A4DE8F: FLdPr Me
  loc_A4DE92: MemLdPr global_72
  loc_A4DE95: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4DE9A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls4(sSelect) 'A4E0CC
  'Data Table: 4F2254
  loc_A4E078: ILdRf sSelect
  loc_A4E07B: FStStrCopy var_88
  loc_A4E07E: LitNothing
  loc_A4E080: CastAd
  loc_A4E083: FStAdFuncNoPop
  loc_A4E086: FLdPr Me
  loc_A4E089: MemStAd
  loc_A4E08D: FFree1Ad var_8C
  loc_A4E090: New Recordset
  loc_A4E094: FStAdFuncNoPop
  loc_A4E097: FLdPr Me
  loc_A4E09A: MemStAd
  loc_A4E09E: FFree1Ad var_8C
  loc_A4E0A1: LitI4 -1
  loc_A4E0A6: LitI4 3
  loc_A4E0AB: LitI4 3
  loc_A4E0B0: ImpAdLdI4 MemVar_D9301C
  loc_A4E0B3: CVarAd
  loc_A4E0B7: PopAdLdVar
  loc_A4E0B8: ILdRf var_88
  loc_A4E0BB: CVarStr var_9C
  loc_A4E0BE: PopAdLdVar
  loc_A4E0BF: FLdPr Me
  loc_A4E0C2: MemLdPr global_76
  loc_A4E0C5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4E0CA: ExitProcHresult
End Sub

Public Sub EjecutarRsCls5(sSelect) 'A47970
  'Data Table: 4F2254
  loc_A4791C: ILdRf sSelect
  loc_A4791F: FStStrCopy var_88
  loc_A47922: LitNothing
  loc_A47924: CastAd
  loc_A47927: FStAdFuncNoPop
  loc_A4792A: FLdPr Me
  loc_A4792D: MemStAd
  loc_A47931: FFree1Ad var_8C
  loc_A47934: New Recordset
  loc_A47938: FStAdFuncNoPop
  loc_A4793B: FLdPr Me
  loc_A4793E: MemStAd
  loc_A47942: FFree1Ad var_8C
  loc_A47945: LitI4 -1
  loc_A4794A: LitI4 3
  loc_A4794F: LitI4 3
  loc_A47954: ImpAdLdI4 MemVar_D9301C
  loc_A47957: CVarAd
  loc_A4795B: PopAdLdVar
  loc_A4795C: ILdRf var_88
  loc_A4795F: CVarStr var_9C
  loc_A47962: PopAdLdVar
  loc_A47963: FLdPr Me
  loc_A47966: MemLdPr global_80
  loc_A47969: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4796E: ExitProcHresult
End Sub

Public Sub RedefineRSGis(sSelect) '9F4D28
  'Data Table: 4F2254
  loc_9F4D00: ILdRf sSelect
  loc_9F4D03: FStStrCopy var_88
  loc_9F4D06: FLdPr Me
  loc_9F4D09: MemLdRfVar from_stack_1.RsFrmGis
  loc_9F4D0C: ILdRf var_88
  loc_9F4D0F: ImpAdCallFPR4  = Proc_272_59_A789A0()
  loc_9F4D14: LitVarStr var_98, "Primary"
  loc_9F4D19: PopAdLdVar
  loc_9F4D1A: FLdPr Me
  loc_9F4D1D: LateIdCall
  loc_9F4D25: ExitProcHresult
End Sub

Public Property Get DataSource() '9F481C
  'Data Table: 4F2254
  loc_9F47F8: ZeroRetVal
  loc_9F47FA: FLdRfVar var_8C
  loc_9F47FD: FLdPr Me
  loc_9F4800: MemLdPr RsFrm
  loc_9F4803:  = Me.DataSource
  loc_9F4808: ILdRf var_8C
  loc_9F480B: CastAd
  loc_9F480E: FStAdFunc var_88
  loc_9F4811: FFree1Ad var_8C
  loc_9F4814: ExitProcCbHresult
End Sub

Public Property Get PeriBole() 'A2A6A4
  'Data Table: 4F2254
  loc_A2A660: FLdRfVar var_B0
  loc_A2A663: FLdRfVar var_A0
  loc_A2A666: LitVarStr var_9C, "PeriBole"
  loc_A2A66B: PopAdLdVar
  loc_A2A66C: FLdRfVar var_8C
  loc_A2A66F: FLdPr Me
  loc_A2A672: MemLdPr RsFrm
  loc_A2A675:  = Me.Fields
  loc_A2A67A: FLdPr var_8C
  loc_A2A67D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A682: FLdPr var_A0
  loc_A2A685:  = Me.Value
  loc_A2A68A: FLdRfVar var_B0
  loc_A2A68D: CI2Var
  loc_A2A68E: FStI2 var_86
  loc_A2A691: FFreeAd var_8C = ""
  loc_A2A698: FFree1Var var_B0 = ""
  loc_A2A69B: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9D6230
  'Data Table: 4F2254
  loc_9D6214: FLdI2 vDato
  loc_9D6217: CVarI2 var_A4
  loc_9D621A: PopAdLdVar
  loc_9D621B: LitVarStr var_94, "PeriBole"
  loc_9D6220: PopAdLdVar
  loc_9D6221: FLdPr Me
  loc_9D6224: MemLdPr RsFrm
  loc_9D6227: Me.Collect = from_stack_1
  loc_9D622C: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A2A5A4
  'Data Table: 4F2254
  loc_A2A560: FLdRfVar var_B0
  loc_A2A563: FLdRfVar var_A0
  loc_A2A566: LitVarStr var_9C, "NumeBole"
  loc_A2A56B: PopAdLdVar
  loc_A2A56C: FLdRfVar var_8C
  loc_A2A56F: FLdPr Me
  loc_A2A572: MemLdPr RsFrm
  loc_A2A575:  = Me.Fields
  loc_A2A57A: FLdPr var_8C
  loc_A2A57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A582: FLdPr var_A0
  loc_A2A585:  = Me.Value
  loc_A2A58A: FLdRfVar var_B0
  loc_A2A58D: CI4Var
  loc_A2A58F: FStR4 var_88
  loc_A2A592: FFreeAd var_8C = ""
  loc_A2A599: FFree1Var var_B0 = ""
  loc_A2A59C: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9D6360
  'Data Table: 4F2254
  loc_9D6344: ILdRf vDato
  loc_9D6347: CVarI4
  loc_9D634B: PopAdLdVar
  loc_9D634C: LitVarStr var_94, "NumeBole"
  loc_9D6351: PopAdLdVar
  loc_9D6352: FLdPr Me
  loc_9D6355: MemLdPr RsFrm
  loc_9D6358: Me.Collect = from_stack_1
  loc_9D635D: ExitProcHresult
End Sub

Public Property Get CodiOfic() 'A2A4A4
  'Data Table: 4F2254
  loc_A2A460: FLdRfVar var_B0
  loc_A2A463: FLdRfVar var_A0
  loc_A2A466: LitVarStr var_9C, "CodiOfic"
  loc_A2A46B: PopAdLdVar
  loc_A2A46C: FLdRfVar var_8C
  loc_A2A46F: FLdPr Me
  loc_A2A472: MemLdPr RsFrm
  loc_A2A475:  = Me.Fields
  loc_A2A47A: FLdPr var_8C
  loc_A2A47D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A482: FLdPr var_A0
  loc_A2A485:  = Me.Value
  loc_A2A48A: FLdRfVar var_B0
  loc_A2A48D: CI2Var
  loc_A2A48E: FStI2 var_86
  loc_A2A491: FFreeAd var_8C = ""
  loc_A2A498: FFree1Var var_B0 = ""
  loc_A2A49B: ExitProcCbHresult
End Sub

Public Property Let CodiOfic(vDato) '9D6444
  'Data Table: 4F2254
  loc_9D6428: FLdI2 vDato
  loc_9D642B: CVarI2 var_A4
  loc_9D642E: PopAdLdVar
  loc_9D642F: LitVarStr var_94, "CodiOfic"
  loc_9D6434: PopAdLdVar
  loc_9D6435: FLdPr Me
  loc_9D6438: MemLdPr RsFrm
  loc_9D643B: Me.Collect = from_stack_1
  loc_9D6440: ExitProcHresult
End Sub

Public Property Get CuenCtct() 'A39880
  'Data Table: 4F2254
  loc_A3983C: ZeroRetVal
  loc_A3983E: FLdRfVar var_B0
  loc_A39841: FLdRfVar var_A0
  loc_A39844: LitVarStr var_9C, "CuenCtct"
  loc_A39849: PopAdLdVar
  loc_A3984A: FLdRfVar var_8C
  loc_A3984D: FLdPr Me
  loc_A39850: MemLdPr RsFrm
  loc_A39853:  = Me.Fields
  loc_A39858: FLdPr var_8C
  loc_A3985B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39860: FLdPr var_A0
  loc_A39863:  = Me.Value
  loc_A39868: FLdRfVar var_B0
  loc_A3986B: CStrVarTmp
  loc_A3986C: FStStr var_88
  loc_A3986F: FFreeAd var_8C = ""
  loc_A39876: FFree1Var var_B0 = ""
  loc_A39879: ExitProcCbHresult
End Sub

Public Property Let CuenCtct(vDato) '9E66F8
  'Data Table: 4F2254
  loc_9E66D8: ILdRf vDato
  loc_9E66DB: FStStrCopy var_88
  loc_9E66DE: ILdRf var_88
  loc_9E66E1: CVarStr var_A8
  loc_9E66E4: PopAdLdVar
  loc_9E66E5: LitVarStr var_98, "CuenCtct"
  loc_9E66EA: PopAdLdVar
  loc_9E66EB: FLdPr Me
  loc_9E66EE: MemLdPr RsFrm
  loc_9E66F1: Me.Collect = from_stack_1
  loc_9E66F6: ExitProcHresult
End Sub

Public Property Get CucuPers() 'A34EC4
  'Data Table: 4F2254
  loc_A34E80: ZeroRetVal
  loc_A34E82: FLdRfVar var_B0
  loc_A34E85: FLdRfVar var_A0
  loc_A34E88: LitVarStr var_9C, "CucuPers"
  loc_A34E8D: PopAdLdVar
  loc_A34E8E: FLdRfVar var_8C
  loc_A34E91: FLdPr Me
  loc_A34E94: MemLdPr RsFrm
  loc_A34E97:  = Me.Fields
  loc_A34E9C: FLdPr var_8C
  loc_A34E9F: from_stack_2 = Me.Item(from_stack_1)
  loc_A34EA4: FLdPr var_A0
  loc_A34EA7:  = Me.Value
  loc_A34EAC: FLdRfVar var_B0
  loc_A34EAF: CStrVarTmp
  loc_A34EB0: FStStr var_88
  loc_A34EB3: FFreeAd var_8C = ""
  loc_A34EBA: FFree1Var var_B0 = ""
  loc_A34EBD: ExitProcCbHresult
End Sub

Public Property Let CucuPers(vDato) '9E6650
  'Data Table: 4F2254
  loc_9E6630: ILdRf vDato
  loc_9E6633: FStStrCopy var_88
  loc_9E6636: ILdRf var_88
  loc_9E6639: CVarStr var_A8
  loc_9E663C: PopAdLdVar
  loc_9E663D: LitVarStr var_98, "CucuPers"
  loc_9E6642: PopAdLdVar
  loc_9E6643: FLdPr Me
  loc_9E6646: MemLdPr RsFrm
  loc_9E6649: Me.Collect = from_stack_1
  loc_9E664E: ExitProcHresult
End Sub

Public Property Get FealBole() 'A170B0
  'Data Table: 4F2254
  loc_A17078: ZeroRetValVar
  loc_A1707A: FLdRfVar var_AC
  loc_A1707D: LitVarStr var_A8, "FealBole"
  loc_A17082: PopAdLdVar
  loc_A17083: FLdRfVar var_98
  loc_A17086: FLdPr Me
  loc_A17089: MemLdPr RsFrm
  loc_A1708C:  = Me.Fields
  loc_A17091: FLdPr var_98
  loc_A17094: from_stack_2 = Me.Item(from_stack_1)
  loc_A17099: FLdZeroAd var_AC
  loc_A1709C: CVarAd
  loc_A170A0: FStVar FealBole
  loc_A170A4: FFree1Ad var_98
  loc_A170A7: ExitProcCbHresult
End Sub

Public Property Let FealBole(vDato) '9E3FCC
  'Data Table: 4F2254
  loc_9E3FB0: FDupVar
  loc_9E3FB6: FLdVar var_94
  loc_9E3FBA: LitVarStr var_A4, "FealBole"
  loc_9E3FBF: PopAdLdVar
  loc_9E3FC0: FLdPr Me
  loc_9E3FC3: MemLdPr RsFrm
  loc_9E3FC6: Me.Collect = from_stack_1
  loc_9E3FCB: ExitProcHresult
End Sub

Public Property Get FeveBole() 'A17128
  'Data Table: 4F2254
  loc_A170F0: ZeroRetValVar
  loc_A170F2: FLdRfVar var_AC
  loc_A170F5: LitVarStr var_A8, "FeveBole"
  loc_A170FA: PopAdLdVar
  loc_A170FB: FLdRfVar var_98
  loc_A170FE: FLdPr Me
  loc_A17101: MemLdPr RsFrm
  loc_A17104:  = Me.Fields
  loc_A17109: FLdPr var_98
  loc_A1710C: from_stack_2 = Me.Item(from_stack_1)
  loc_A17111: FLdZeroAd var_AC
  loc_A17114: CVarAd
  loc_A17118: FStVar FeveBole
  loc_A1711C: FFree1Ad var_98
  loc_A1711F: ExitProcCbHresult
End Sub

Public Property Let FeveBole(vDato) '9E479C
  'Data Table: 4F2254
  loc_9E4780: FDupVar
  loc_9E4786: FLdVar var_94
  loc_9E478A: LitVarStr var_A4, "FeveBole"
  loc_9E478F: PopAdLdVar
  loc_9E4790: FLdPr Me
  loc_9E4793: MemLdPr RsFrm
  loc_9E4796: Me.Collect = from_stack_1
  loc_9E479B: ExitProcHresult
End Sub

Public Property Get CodiEnre() 'A2A224
  'Data Table: 4F2254
  loc_A2A1E0: FLdRfVar var_B0
  loc_A2A1E3: FLdRfVar var_A0
  loc_A2A1E6: LitVarStr var_9C, "CodiEnre"
  loc_A2A1EB: PopAdLdVar
  loc_A2A1EC: FLdRfVar var_8C
  loc_A2A1EF: FLdPr Me
  loc_A2A1F2: MemLdPr RsFrm
  loc_A2A1F5:  = Me.Fields
  loc_A2A1FA: FLdPr var_8C
  loc_A2A1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A202: FLdPr var_A0
  loc_A2A205:  = Me.Value
  loc_A2A20A: FLdRfVar var_B0
  loc_A2A20D: CI2Var
  loc_A2A20E: FStI2 var_86
  loc_A2A211: FFreeAd var_8C = ""
  loc_A2A218: FFree1Var var_B0 = ""
  loc_A2A21B: ExitProcCbHresult
End Sub

Public Property Get TipoBole() 'A34FCC
  'Data Table: 4F2254
  loc_A34F88: ZeroRetVal
  loc_A34F8A: FLdRfVar var_B0
  loc_A34F8D: FLdRfVar var_A0
  loc_A34F90: LitVarStr var_9C, "TipoBole"
  loc_A34F95: PopAdLdVar
  loc_A34F96: FLdRfVar var_8C
  loc_A34F99: FLdPr Me
  loc_A34F9C: MemLdPr RsFrm
  loc_A34F9F:  = Me.Fields
  loc_A34FA4: FLdPr var_8C
  loc_A34FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_A34FAC: FLdPr var_A0
  loc_A34FAF:  = Me.Value
  loc_A34FB4: FLdRfVar var_B0
  loc_A34FB7: CStrVarTmp
  loc_A34FB8: FStStr var_88
  loc_A34FBB: FFreeAd var_8C = ""
  loc_A34FC2: FFree1Var var_B0 = ""
  loc_A34FC5: ExitProcCbHresult
End Sub

Public Property Let TipoBole(vDato) '9E63B0
  'Data Table: 4F2254
  loc_9E6390: ILdRf vDato
  loc_9E6393: FStStrCopy var_88
  loc_9E6396: ILdRf var_88
  loc_9E6399: CVarStr var_A8
  loc_9E639C: PopAdLdVar
  loc_9E639D: LitVarStr var_98, "TipoBole"
  loc_9E63A2: PopAdLdVar
  loc_9E63A3: FLdPr Me
  loc_9E63A6: MemLdPr RsFrm
  loc_9E63A9: Me.Collect = from_stack_1
  loc_9E63AE: ExitProcHresult
End Sub

Public Property Get EstaBole() 'A393DC
  'Data Table: 4F2254
  loc_A39398: ZeroRetVal
  loc_A3939A: FLdRfVar var_B0
  loc_A3939D: FLdRfVar var_A0
  loc_A393A0: LitVarStr var_9C, "EstaBole"
  loc_A393A5: PopAdLdVar
  loc_A393A6: FLdRfVar var_8C
  loc_A393A9: FLdPr Me
  loc_A393AC: MemLdPr RsFrm
  loc_A393AF:  = Me.Fields
  loc_A393B4: FLdPr var_8C
  loc_A393B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A393BC: FLdPr var_A0
  loc_A393BF:  = Me.Value
  loc_A393C4: FLdRfVar var_B0
  loc_A393C7: CStrVarTmp
  loc_A393C8: FStStr var_88
  loc_A393CB: FFreeAd var_8C = ""
  loc_A393D2: FFree1Var var_B0 = ""
  loc_A393D5: ExitProcCbHresult
End Sub

Public Property Let EstaBole(vDato) '9E6308
  'Data Table: 4F2254
  loc_9E62E8: ILdRf vDato
  loc_9E62EB: FStStrCopy var_88
  loc_9E62EE: ILdRf var_88
  loc_9E62F1: CVarStr var_A8
  loc_9E62F4: PopAdLdVar
  loc_9E62F5: LitVarStr var_98, "EstaBole"
  loc_9E62FA: PopAdLdVar
  loc_9E62FB: FLdPr Me
  loc_9E62FE: MemLdPr RsFrm
  loc_9E6301: Me.Collect = from_stack_1
  loc_9E6306: ExitProcHresult
End Sub

Public Property Get CodiTili() 'A299A4
  'Data Table: 4F2254
  loc_A29960: FLdRfVar var_B0
  loc_A29963: FLdRfVar var_A0
  loc_A29966: LitVarStr var_9C, "CodiTili"
  loc_A2996B: PopAdLdVar
  loc_A2996C: FLdRfVar var_8C
  loc_A2996F: FLdPr Me
  loc_A29972: MemLdPr RsFrm
  loc_A29975:  = Me.Fields
  loc_A2997A: FLdPr var_8C
  loc_A2997D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29982: FLdPr var_A0
  loc_A29985:  = Me.Value
  loc_A2998A: FLdRfVar var_B0
  loc_A2998D: CI2Var
  loc_A2998E: FStI2 var_86
  loc_A29991: FFreeAd var_8C = ""
  loc_A29998: FFree1Var var_B0 = ""
  loc_A2999B: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A29824
  'Data Table: 4F2254
  loc_A297E0: FLdRfVar var_B0
  loc_A297E3: FLdRfVar var_A0
  loc_A297E6: LitVarStr var_9C, "NumeLiqu"
  loc_A297EB: PopAdLdVar
  loc_A297EC: FLdRfVar var_8C
  loc_A297EF: FLdPr Me
  loc_A297F2: MemLdPr RsFrm
  loc_A297F5:  = Me.Fields
  loc_A297FA: FLdPr var_8C
  loc_A297FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29802: FLdPr var_A0
  loc_A29805:  = Me.Value
  loc_A2980A: FLdRfVar var_B0
  loc_A2980D: CI2Var
  loc_A2980E: FStI2 var_86
  loc_A29811: FFreeAd var_8C = ""
  loc_A29818: FFree1Var var_B0 = ""
  loc_A2981B: ExitProcCbHresult
End Sub

Public Property Get CodiFapa() 'A297A4
  'Data Table: 4F2254
  loc_A29760: FLdRfVar var_B0
  loc_A29763: FLdRfVar var_A0
  loc_A29766: LitVarStr var_9C, "CodiFapa"
  loc_A2976B: PopAdLdVar
  loc_A2976C: FLdRfVar var_8C
  loc_A2976F: FLdPr Me
  loc_A29772: MemLdPr RsFrm
  loc_A29775:  = Me.Fields
  loc_A2977A: FLdPr var_8C
  loc_A2977D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29782: FLdPr var_A0
  loc_A29785:  = Me.Value
  loc_A2978A: FLdRfVar var_B0
  loc_A2978D: CI4Var
  loc_A2978F: FStR4 var_88
  loc_A29792: FFreeAd var_8C = ""
  loc_A29799: FFree1Var var_B0 = ""
  loc_A2979C: ExitProcCbHresult
End Sub

Public Property Let CodiFapa(vDato) '9D68B8
  'Data Table: 4F2254
  loc_9D689C: ILdRf vDato
  loc_9D689F: CVarI4
  loc_9D68A3: PopAdLdVar
  loc_9D68A4: LitVarStr var_94, "CodiFapa"
  loc_9D68A9: PopAdLdVar
  loc_9D68AA: FLdPr Me
  loc_9D68AD: MemLdPr RsFrm
  loc_9D68B0: Me.Collect = from_stack_1
  loc_9D68B5: ExitProcHresult
End Sub

Public Property Get CuotDefa() 'A29724
  'Data Table: 4F2254
  loc_A296E0: FLdRfVar var_B0
  loc_A296E3: FLdRfVar var_A0
  loc_A296E6: LitVarStr var_9C, "CuotDefa"
  loc_A296EB: PopAdLdVar
  loc_A296EC: FLdRfVar var_8C
  loc_A296EF: FLdPr Me
  loc_A296F2: MemLdPr RsFrm
  loc_A296F5:  = Me.Fields
  loc_A296FA: FLdPr var_8C
  loc_A296FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29702: FLdPr var_A0
  loc_A29705:  = Me.Value
  loc_A2970A: FLdRfVar var_B0
  loc_A2970D: CI2Var
  loc_A2970E: FStI2 var_86
  loc_A29711: FFreeAd var_8C = ""
  loc_A29718: FFree1Var var_B0 = ""
  loc_A2971B: ExitProcCbHresult
End Sub

Public Property Let CuotDefa(vDato) '9D699C
  'Data Table: 4F2254
  loc_9D6980: FLdI2 vDato
  loc_9D6983: CVarI2 var_A4
  loc_9D6986: PopAdLdVar
  loc_9D6987: LitVarStr var_94, "CuotDefa"
  loc_9D698C: PopAdLdVar
  loc_9D698D: FLdPr Me
  loc_9D6990: MemLdPr RsFrm
  loc_9D6993: Me.Collect = from_stack_1
  loc_9D6998: ExitProcHresult
End Sub

Public Property Get ExpeBole() 'A383E0
  'Data Table: 4F2254
  loc_A3839C: ZeroRetVal
  loc_A3839E: FLdRfVar var_B0
  loc_A383A1: FLdRfVar var_A0
  loc_A383A4: LitVarStr var_9C, "ExpeBole"
  loc_A383A9: PopAdLdVar
  loc_A383AA: FLdRfVar var_8C
  loc_A383AD: FLdPr Me
  loc_A383B0: MemLdPr RsFrm
  loc_A383B3:  = Me.Fields
  loc_A383B8: FLdPr var_8C
  loc_A383BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A383C0: FLdPr var_A0
  loc_A383C3:  = Me.Value
  loc_A383C8: FLdRfVar var_B0
  loc_A383CB: CStrVarTmp
  loc_A383CC: FStStr var_88
  loc_A383CF: FFreeAd var_8C = ""
  loc_A383D6: FFree1Var var_B0 = ""
  loc_A383D9: ExitProcCbHresult
End Sub

Public Property Get CapiBole() 'A29524
  'Data Table: 4F2254
  loc_A294E0: FLdRfVar var_B4
  loc_A294E3: FLdRfVar var_A4
  loc_A294E6: LitVarStr var_A0, "CapiBole"
  loc_A294EB: PopAdLdVar
  loc_A294EC: FLdRfVar var_90
  loc_A294EF: FLdPr Me
  loc_A294F2: MemLdPr RsFrm
  loc_A294F5:  = Me.Fields
  loc_A294FA: FLdPr var_90
  loc_A294FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29502: FLdPr var_A4
  loc_A29505:  = Me.Value
  loc_A2950A: FLdRfVar var_B4
  loc_A2950D: CR4Var
  loc_A2950E: FStFPR8 var_8C
  loc_A29511: FFreeAd var_90 = ""
  loc_A29518: FFree1Var var_B4 = ""
  loc_A2951B: ExitProcCbHresult
End Sub

Public Property Let CapiBole(vDato) '9D6ACC
  'Data Table: 4F2254
  loc_9D6AB0: FLdFPR8 vDato
  loc_9D6AB3: CVarR8
  loc_9D6AB7: PopAdLdVar
  loc_9D6AB8: LitVarStr var_94, "CapiBole"
  loc_9D6ABD: PopAdLdVar
  loc_9D6ABE: FLdPr Me
  loc_9D6AC1: MemLdPr RsFrm
  loc_9D6AC4: Me.Collect = from_stack_1
  loc_9D6AC9: ExitProcHresult
End Sub

Public Property Get RecaBole() 'A29424
  'Data Table: 4F2254
  loc_A293E0: FLdRfVar var_B4
  loc_A293E3: FLdRfVar var_A4
  loc_A293E6: LitVarStr var_A0, "RecaBole"
  loc_A293EB: PopAdLdVar
  loc_A293EC: FLdRfVar var_90
  loc_A293EF: FLdPr Me
  loc_A293F2: MemLdPr RsFrm
  loc_A293F5:  = Me.Fields
  loc_A293FA: FLdPr var_90
  loc_A293FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29402: FLdPr var_A4
  loc_A29405:  = Me.Value
  loc_A2940A: FLdRfVar var_B4
  loc_A2940D: CR4Var
  loc_A2940E: FStFPR8 var_8C
  loc_A29411: FFreeAd var_90 = ""
  loc_A29418: FFree1Var var_B4 = ""
  loc_A2941B: ExitProcCbHresult
End Sub

Public Property Let RecaBole(vDato) '9D6CE0
  'Data Table: 4F2254
  loc_9D6CC4: FLdFPR8 vDato
  loc_9D6CC7: CVarR8
  loc_9D6CCB: PopAdLdVar
  loc_9D6CCC: LitVarStr var_94, "RecaBole"
  loc_9D6CD1: PopAdLdVar
  loc_9D6CD2: FLdPr Me
  loc_9D6CD5: MemLdPr RsFrm
  loc_9D6CD8: Me.Collect = from_stack_1
  loc_9D6CDD: ExitProcHresult
End Sub

Public Property Get DecaBole() 'A29324
  'Data Table: 4F2254
  loc_A292E0: FLdRfVar var_B4
  loc_A292E3: FLdRfVar var_A4
  loc_A292E6: LitVarStr var_A0, "DecaBole"
  loc_A292EB: PopAdLdVar
  loc_A292EC: FLdRfVar var_90
  loc_A292EF: FLdPr Me
  loc_A292F2: MemLdPr RsFrm
  loc_A292F5:  = Me.Fields
  loc_A292FA: FLdPr var_90
  loc_A292FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29302: FLdPr var_A4
  loc_A29305:  = Me.Value
  loc_A2930A: FLdRfVar var_B4
  loc_A2930D: CR4Var
  loc_A2930E: FStFPR8 var_8C
  loc_A29311: FFreeAd var_90 = ""
  loc_A29318: FFree1Var var_B4 = ""
  loc_A2931B: ExitProcCbHresult
End Sub

Public Property Let DecaBole(vDato) '9D6EF4
  'Data Table: 4F2254
  loc_9D6ED8: FLdFPR8 vDato
  loc_9D6EDB: CVarR8
  loc_9D6EDF: PopAdLdVar
  loc_9D6EE0: LitVarStr var_94, "DecaBole"
  loc_9D6EE5: PopAdLdVar
  loc_9D6EE6: FLdPr Me
  loc_9D6EE9: MemLdPr RsFrm
  loc_9D6EEC: Me.Collect = from_stack_1
  loc_9D6EF1: ExitProcHresult
End Sub

Public Property Get DereBole() 'A29224
  'Data Table: 4F2254
  loc_A291E0: FLdRfVar var_B4
  loc_A291E3: FLdRfVar var_A4
  loc_A291E6: LitVarStr var_A0, "DereBole"
  loc_A291EB: PopAdLdVar
  loc_A291EC: FLdRfVar var_90
  loc_A291EF: FLdPr Me
  loc_A291F2: MemLdPr RsFrm
  loc_A291F5:  = Me.Fields
  loc_A291FA: FLdPr var_90
  loc_A291FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29202: FLdPr var_A4
  loc_A29205:  = Me.Value
  loc_A2920A: FLdRfVar var_B4
  loc_A2920D: CR4Var
  loc_A2920E: FStFPR8 var_8C
  loc_A29211: FFreeAd var_90 = ""
  loc_A29218: FFree1Var var_B4 = ""
  loc_A2921B: ExitProcCbHresult
End Sub

Public Property Let DereBole(vDato) '9D6FD8
  'Data Table: 4F2254
  loc_9D6FBC: FLdFPR8 vDato
  loc_9D6FBF: CVarR8
  loc_9D6FC3: PopAdLdVar
  loc_9D6FC4: LitVarStr var_94, "DereBole"
  loc_9D6FC9: PopAdLdVar
  loc_9D6FCA: FLdPr Me
  loc_9D6FCD: MemLdPr RsFrm
  loc_9D6FD0: Me.Collect = from_stack_1
  loc_9D6FD5: ExitProcHresult
End Sub

Public Property Get InteBole() 'A291A4
  'Data Table: 4F2254
  loc_A29160: FLdRfVar var_B4
  loc_A29163: FLdRfVar var_A4
  loc_A29166: LitVarStr var_A0, "InteBole"
  loc_A2916B: PopAdLdVar
  loc_A2916C: FLdRfVar var_90
  loc_A2916F: FLdPr Me
  loc_A29172: MemLdPr RsFrm
  loc_A29175:  = Me.Fields
  loc_A2917A: FLdPr var_90
  loc_A2917D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29182: FLdPr var_A4
  loc_A29185:  = Me.Value
  loc_A2918A: FLdRfVar var_B4
  loc_A2918D: CR4Var
  loc_A2918E: FStFPR8 var_8C
  loc_A29191: FFreeAd var_90 = ""
  loc_A29198: FFree1Var var_B4 = ""
  loc_A2919B: ExitProcCbHresult
End Sub

Public Property Let InteBole(vDato) '9D7024
  'Data Table: 4F2254
  loc_9D7008: FLdFPR8 vDato
  loc_9D700B: CVarR8
  loc_9D700F: PopAdLdVar
  loc_9D7010: LitVarStr var_94, "InteBole"
  loc_9D7015: PopAdLdVar
  loc_9D7016: FLdPr Me
  loc_9D7019: MemLdPr RsFrm
  loc_9D701C: Me.Collect = from_stack_1
  loc_9D7021: ExitProcHresult
End Sub

Public Property Get ExenBole() 'A28FA4
  'Data Table: 4F2254
  loc_A28F60: FLdRfVar var_B4
  loc_A28F63: FLdRfVar var_A4
  loc_A28F66: LitVarStr var_A0, "ExenBole"
  loc_A28F6B: PopAdLdVar
  loc_A28F6C: FLdRfVar var_90
  loc_A28F6F: FLdPr Me
  loc_A28F72: MemLdPr RsFrm
  loc_A28F75:  = Me.Fields
  loc_A28F7A: FLdPr var_90
  loc_A28F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28F82: FLdPr var_A4
  loc_A28F85:  = Me.Value
  loc_A28F8A: FLdRfVar var_B4
  loc_A28F8D: CR4Var
  loc_A28F8E: FStFPR8 var_8C
  loc_A28F91: FFreeAd var_90 = ""
  loc_A28F98: FFree1Var var_B4 = ""
  loc_A28F9B: ExitProcCbHresult
End Sub

Public Property Get CrafBole() 'A28EA4
  'Data Table: 4F2254
  loc_A28E60: FLdRfVar var_B4
  loc_A28E63: FLdRfVar var_A4
  loc_A28E66: LitVarStr var_A0, "CrafBole"
  loc_A28E6B: PopAdLdVar
  loc_A28E6C: FLdRfVar var_90
  loc_A28E6F: FLdPr Me
  loc_A28E72: MemLdPr RsFrm
  loc_A28E75:  = Me.Fields
  loc_A28E7A: FLdPr var_90
  loc_A28E7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28E82: FLdPr var_A4
  loc_A28E85:  = Me.Value
  loc_A28E8A: FLdRfVar var_B4
  loc_A28E8D: CR4Var
  loc_A28E8E: FStFPR8 var_8C
  loc_A28E91: FFreeAd var_90 = ""
  loc_A28E98: FFree1Var var_B4 = ""
  loc_A28E9B: ExitProcCbHresult
End Sub

Public Property Get ApreBole() 'A28E24
  'Data Table: 4F2254
  loc_A28DE0: FLdRfVar var_B4
  loc_A28DE3: FLdRfVar var_A4
  loc_A28DE6: LitVarStr var_A0, "ApreBole"
  loc_A28DEB: PopAdLdVar
  loc_A28DEC: FLdRfVar var_90
  loc_A28DEF: FLdPr Me
  loc_A28DF2: MemLdPr RsFrm
  loc_A28DF5:  = Me.Fields
  loc_A28DFA: FLdPr var_90
  loc_A28DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28E02: FLdPr var_A4
  loc_A28E05:  = Me.Value
  loc_A28E0A: FLdRfVar var_B4
  loc_A28E0D: CR4Var
  loc_A28E0E: FStFPR8 var_8C
  loc_A28E11: FFreeAd var_90 = ""
  loc_A28E18: FFree1Var var_B4 = ""
  loc_A28E1B: ExitProcCbHresult
End Sub

Public Property Let ApreBole(vDato) '9D7070
  'Data Table: 4F2254
  loc_9D7054: FLdFPR8 vDato
  loc_9D7057: CVarR8
  loc_9D705B: PopAdLdVar
  loc_9D705C: LitVarStr var_94, "ApreBole"
  loc_9D7061: PopAdLdVar
  loc_9D7062: FLdPr Me
  loc_9D7065: MemLdPr RsFrm
  loc_9D7068: Me.Collect = from_stack_1
  loc_9D706D: ExitProcHresult
End Sub

Public Property Get TotaBole() 'A28DA4
  'Data Table: 4F2254
  loc_A28D60: FLdRfVar var_B4
  loc_A28D63: FLdRfVar var_A4
  loc_A28D66: LitVarStr var_A0, "TotaBole"
  loc_A28D6B: PopAdLdVar
  loc_A28D6C: FLdRfVar var_90
  loc_A28D6F: FLdPr Me
  loc_A28D72: MemLdPr RsFrm
  loc_A28D75:  = Me.Fields
  loc_A28D7A: FLdPr var_90
  loc_A28D7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A28D82: FLdPr var_A4
  loc_A28D85:  = Me.Value
  loc_A28D8A: FLdRfVar var_B4
  loc_A28D8D: CR4Var
  loc_A28D8E: FStFPR8 var_8C
  loc_A28D91: FFreeAd var_90 = ""
  loc_A28D98: FFree1Var var_B4 = ""
  loc_A28D9B: ExitProcCbHresult
End Sub

Public Property Let TotaBole(vDato) '9D7154
  'Data Table: 4F2254
  loc_9D7138: FLdFPR8 vDato
  loc_9D713B: CVarR8
  loc_9D713F: PopAdLdVar
  loc_9D7140: LitVarStr var_94, "TotaBole"
  loc_9D7145: PopAdLdVar
  loc_9D7146: FLdPr Me
  loc_9D7149: MemLdPr RsFrm
  loc_9D714C: Me.Collect = from_stack_1
  loc_9D7151: ExitProcHresult
End Sub

Public Property Get CodiUsua() 'A36FC4
  'Data Table: 4F2254
  loc_A36F80: ZeroRetVal
  loc_A36F82: FLdRfVar var_B0
  loc_A36F85: FLdRfVar var_A0
  loc_A36F88: LitVarStr var_9C, "CodiUsua"
  loc_A36F8D: PopAdLdVar
  loc_A36F8E: FLdRfVar var_8C
  loc_A36F91: FLdPr Me
  loc_A36F94: MemLdPr RsFrm
  loc_A36F97:  = Me.Fields
  loc_A36F9C: FLdPr var_8C
  loc_A36F9F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36FA4: FLdPr var_A0
  loc_A36FA7:  = Me.Value
  loc_A36FAC: FLdRfVar var_B0
  loc_A36FAF: CStrVarTmp
  loc_A36FB0: FStStr var_88
  loc_A36FB3: FFreeAd var_8C = ""
  loc_A36FBA: FFree1Var var_B0 = ""
  loc_A36FBD: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9E5AD4
  'Data Table: 4F2254
  loc_9E5AB4: ILdRf vDato
  loc_9E5AB7: FStStrCopy var_88
  loc_9E5ABA: ILdRf var_88
  loc_9E5ABD: CVarStr var_A8
  loc_9E5AC0: PopAdLdVar
  loc_9E5AC1: LitVarStr var_98, "CodiUsua"
  loc_9E5AC6: PopAdLdVar
  loc_9E5AC7: FLdPr Me
  loc_9E5ACA: MemLdPr RsFrm
  loc_9E5ACD: Me.Collect = from_stack_1
  loc_9E5AD2: ExitProcHresult
End Sub

Public Property Get ObseBole() 'A38044
  'Data Table: 4F2254
  loc_A38000: ZeroRetVal
  loc_A38002: FLdRfVar var_B0
  loc_A38005: FLdRfVar var_A0
  loc_A38008: LitVarStr var_9C, "ObseBole"
  loc_A3800D: PopAdLdVar
  loc_A3800E: FLdRfVar var_8C
  loc_A38011: FLdPr Me
  loc_A38014: MemLdPr RsFrm
  loc_A38017:  = Me.Fields
  loc_A3801C: FLdPr var_8C
  loc_A3801F: from_stack_2 = Me.Item(from_stack_1)
  loc_A38024: FLdPr var_A0
  loc_A38027:  = Me.Value
  loc_A3802C: FLdRfVar var_B0
  loc_A3802F: CStrVarTmp
  loc_A38030: FStStr var_88
  loc_A38033: FFreeAd var_8C = ""
  loc_A3803A: FFree1Var var_B0 = ""
  loc_A3803D: ExitProcCbHresult
End Sub

Public Property Get AnulUsua() 'A18820
  'Data Table: 4F2254
  loc_A187E8: ZeroRetValVar
  loc_A187EA: FLdRfVar var_AC
  loc_A187ED: LitVarStr var_A8, "AnulUsua"
  loc_A187F2: PopAdLdVar
  loc_A187F3: FLdRfVar var_98
  loc_A187F6: FLdPr Me
  loc_A187F9: MemLdPr RsFrm
  loc_A187FC:  = Me.Fields
  loc_A18801: FLdPr var_98
  loc_A18804: from_stack_2 = Me.Item(from_stack_1)
  loc_A18809: FLdZeroAd var_AC
  loc_A1880C: CVarAd
  loc_A18810: FStVar AnulUsua
  loc_A18814: FFree1Ad var_98
  loc_A18817: ExitProcCbHresult
End Sub

Public Property Get FeanBole() 'A18898
  'Data Table: 4F2254
  loc_A18860: ZeroRetValVar
  loc_A18862: FLdRfVar var_AC
  loc_A18865: LitVarStr var_A8, "FeanBole"
  loc_A1886A: PopAdLdVar
  loc_A1886B: FLdRfVar var_98
  loc_A1886E: FLdPr Me
  loc_A18871: MemLdPr RsFrm
  loc_A18874:  = Me.Fields
  loc_A18879: FLdPr var_98
  loc_A1887C: from_stack_2 = Me.Item(from_stack_1)
  loc_A18881: FLdZeroAd var_AC
  loc_A18884: CVarAd
  loc_A18888: FStVar FeanBole
  loc_A1888C: FFree1Ad var_98
  loc_A1888F: ExitProcCbHresult
End Sub

Public Property Get MoanBole() 'A18910
  'Data Table: 4F2254
  loc_A188D8: ZeroRetValVar
  loc_A188DA: FLdRfVar var_AC
  loc_A188DD: LitVarStr var_A8, "MoanBole"
  loc_A188E2: PopAdLdVar
  loc_A188E3: FLdRfVar var_98
  loc_A188E6: FLdPr Me
  loc_A188E9: MemLdPr RsFrm
  loc_A188EC:  = Me.Fields
  loc_A188F1: FLdPr var_98
  loc_A188F4: from_stack_2 = Me.Item(from_stack_1)
  loc_A188F9: FLdZeroAd var_AC
  loc_A188FC: CVarAd
  loc_A18900: FStVar MoanBole
  loc_A18904: FFree1Ad var_98
  loc_A18907: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A3688C
  'Data Table: 4F2254
  loc_A36848: ZeroRetVal
  loc_A3684A: FLdRfVar var_B0
  loc_A3684D: FLdRfVar var_A0
  loc_A36850: LitVarStr var_9C, "DetaPers"
  loc_A36855: PopAdLdVar
  loc_A36856: FLdRfVar var_8C
  loc_A36859: FLdPr Me
  loc_A3685C: MemLdPr RsFrm
  loc_A3685F:  = Me.Fields
  loc_A36864: FLdPr var_8C
  loc_A36867: from_stack_2 = Me.Item(from_stack_1)
  loc_A3686C: FLdPr var_A0
  loc_A3686F:  = Me.Value
  loc_A36874: FLdRfVar var_B0
  loc_A36877: CStrVarTmp
  loc_A36878: FStStr var_88
  loc_A3687B: FFreeAd var_8C = ""
  loc_A36882: FFree1Var var_B0 = ""
  loc_A36885: ExitProcCbHresult
End Sub

Public Property Get DecaPost() 'A3646C
  'Data Table: 4F2254
  loc_A36428: ZeroRetVal
  loc_A3642A: FLdRfVar var_B0
  loc_A3642D: FLdRfVar var_A0
  loc_A36430: LitVarStr var_9C, "DecaPost"
  loc_A36435: PopAdLdVar
  loc_A36436: FLdRfVar var_8C
  loc_A36439: FLdPr Me
  loc_A3643C: MemLdPr RsFrm
  loc_A3643F:  = Me.Fields
  loc_A36444: FLdPr var_8C
  loc_A36447: from_stack_2 = Me.Item(from_stack_1)
  loc_A3644C: FLdPr var_A0
  loc_A3644F:  = Me.Value
  loc_A36454: FLdRfVar var_B0
  loc_A36457: CStrVarTmp
  loc_A36458: FStStr var_88
  loc_A3645B: FFreeAd var_8C = ""
  loc_A36462: FFree1Var var_B0 = ""
  loc_A36465: ExitProcCbHresult
End Sub

Public Property Get NumePost() 'A363E8
  'Data Table: 4F2254
  loc_A363A4: ZeroRetVal
  loc_A363A6: FLdRfVar var_B0
  loc_A363A9: FLdRfVar var_A0
  loc_A363AC: LitVarStr var_9C, "NumePost"
  loc_A363B1: PopAdLdVar
  loc_A363B2: FLdRfVar var_8C
  loc_A363B5: FLdPr Me
  loc_A363B8: MemLdPr RsFrm
  loc_A363BB:  = Me.Fields
  loc_A363C0: FLdPr var_8C
  loc_A363C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A363C8: FLdPr var_A0
  loc_A363CB:  = Me.Value
  loc_A363D0: FLdRfVar var_B0
  loc_A363D3: CStrVarTmp
  loc_A363D4: FStStr var_88
  loc_A363D7: FFreeAd var_8C = ""
  loc_A363DE: FFree1Var var_B0 = ""
  loc_A363E1: ExitProcCbHresult
End Sub

Public Property Get DebaPost() 'A361D8
  'Data Table: 4F2254
  loc_A36194: ZeroRetVal
  loc_A36196: FLdRfVar var_B0
  loc_A36199: FLdRfVar var_A0
  loc_A3619C: LitVarStr var_9C, "DebaPost"
  loc_A361A1: PopAdLdVar
  loc_A361A2: FLdRfVar var_8C
  loc_A361A5: FLdPr Me
  loc_A361A8: MemLdPr RsFrm
  loc_A361AB:  = Me.Fields
  loc_A361B0: FLdPr var_8C
  loc_A361B3: from_stack_2 = Me.Item(from_stack_1)
  loc_A361B8: FLdPr var_A0
  loc_A361BB:  = Me.Value
  loc_A361C0: FLdRfVar var_B0
  loc_A361C3: CStrVarTmp
  loc_A361C4: FStStr var_88
  loc_A361C7: FFreeAd var_8C = ""
  loc_A361CE: FFree1Var var_B0 = ""
  loc_A361D1: ExitProcCbHresult
End Sub

Public Property Get ManzPost() 'A34DBC
  'Data Table: 4F2254
  loc_A34D78: ZeroRetVal
  loc_A34D7A: FLdRfVar var_B0
  loc_A34D7D: FLdRfVar var_A0
  loc_A34D80: LitVarStr var_9C, "ManzPost"
  loc_A34D85: PopAdLdVar
  loc_A34D86: FLdRfVar var_8C
  loc_A34D89: FLdPr Me
  loc_A34D8C: MemLdPr RsFrm
  loc_A34D8F:  = Me.Fields
  loc_A34D94: FLdPr var_8C
  loc_A34D97: from_stack_2 = Me.Item(from_stack_1)
  loc_A34D9C: FLdPr var_A0
  loc_A34D9F:  = Me.Value
  loc_A34DA4: FLdRfVar var_B0
  loc_A34DA7: CStrVarTmp
  loc_A34DA8: FStStr var_88
  loc_A34DAB: FFreeAd var_8C = ""
  loc_A34DB2: FFree1Var var_B0 = ""
  loc_A34DB5: ExitProcCbHresult
End Sub

Public Property Get CasaPost() 'A36700
  'Data Table: 4F2254
  loc_A366BC: ZeroRetVal
  loc_A366BE: FLdRfVar var_B0
  loc_A366C1: FLdRfVar var_A0
  loc_A366C4: LitVarStr var_9C, "CasaPost"
  loc_A366C9: PopAdLdVar
  loc_A366CA: FLdRfVar var_8C
  loc_A366CD: FLdPr Me
  loc_A366D0: MemLdPr RsFrm
  loc_A366D3:  = Me.Fields
  loc_A366D8: FLdPr var_8C
  loc_A366DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A366E0: FLdPr var_A0
  loc_A366E3:  = Me.Value
  loc_A366E8: FLdRfVar var_B0
  loc_A366EB: CStrVarTmp
  loc_A366EC: FStStr var_88
  loc_A366EF: FFreeAd var_8C = ""
  loc_A366F6: FFree1Var var_B0 = ""
  loc_A366F9: ExitProcCbHresult
End Sub

Public Property Get UbicPost() 'A34AA4
  'Data Table: 4F2254
  loc_A34A60: ZeroRetVal
  loc_A34A62: FLdRfVar var_B0
  loc_A34A65: FLdRfVar var_A0
  loc_A34A68: LitVarStr var_9C, "UbicPost"
  loc_A34A6D: PopAdLdVar
  loc_A34A6E: FLdRfVar var_8C
  loc_A34A71: FLdPr Me
  loc_A34A74: MemLdPr RsFrm
  loc_A34A77:  = Me.Fields
  loc_A34A7C: FLdPr var_8C
  loc_A34A7F: from_stack_2 = Me.Item(from_stack_1)
  loc_A34A84: FLdPr var_A0
  loc_A34A87:  = Me.Value
  loc_A34A8C: FLdRfVar var_B0
  loc_A34A8F: CStrVarTmp
  loc_A34A90: FStStr var_88
  loc_A34A93: FFreeAd var_8C = ""
  loc_A34A9A: FFree1Var var_B0 = ""
  loc_A34A9D: ExitProcCbHresult
End Sub

Public Property Get DeloPost() 'A364F0
  'Data Table: 4F2254
  loc_A364AC: ZeroRetVal
  loc_A364AE: FLdRfVar var_B0
  loc_A364B1: FLdRfVar var_A0
  loc_A364B4: LitVarStr var_9C, "DeloPost"
  loc_A364B9: PopAdLdVar
  loc_A364BA: FLdRfVar var_8C
  loc_A364BD: FLdPr Me
  loc_A364C0: MemLdPr RsFrm
  loc_A364C3:  = Me.Fields
  loc_A364C8: FLdPr var_8C
  loc_A364CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A364D0: FLdPr var_A0
  loc_A364D3:  = Me.Value
  loc_A364D8: FLdRfVar var_B0
  loc_A364DB: CStrVarTmp
  loc_A364DC: FStStr var_88
  loc_A364DF: FFreeAd var_8C = ""
  loc_A364E6: FFree1Var var_B0 = ""
  loc_A364E9: ExitProcCbHresult
End Sub

Public Property Get CopoPost() 'A35BA8
  'Data Table: 4F2254
  loc_A35B64: ZeroRetVal
  loc_A35B66: FLdRfVar var_B0
  loc_A35B69: FLdRfVar var_A0
  loc_A35B6C: LitVarStr var_9C, "CopoPost"
  loc_A35B71: PopAdLdVar
  loc_A35B72: FLdRfVar var_8C
  loc_A35B75: FLdPr Me
  loc_A35B78: MemLdPr RsFrm
  loc_A35B7B:  = Me.Fields
  loc_A35B80: FLdPr var_8C
  loc_A35B83: from_stack_2 = Me.Item(from_stack_1)
  loc_A35B88: FLdPr var_A0
  loc_A35B8B:  = Me.Value
  loc_A35B90: FLdRfVar var_B0
  loc_A35B93: CStrVarTmp
  loc_A35B94: FStStr var_88
  loc_A35B97: FFreeAd var_8C = ""
  loc_A35B9E: FFree1Var var_B0 = ""
  loc_A35BA1: ExitProcCbHresult
End Sub

Public Property Get CodiRuta() 'A28724
  'Data Table: 4F2254
  loc_A286E0: FLdRfVar var_B0
  loc_A286E3: FLdRfVar var_A0
  loc_A286E6: LitVarStr var_9C, "CodiRuta"
  loc_A286EB: PopAdLdVar
  loc_A286EC: FLdRfVar var_8C
  loc_A286EF: FLdPr Me
  loc_A286F2: MemLdPr RsFrm
  loc_A286F5:  = Me.Fields
  loc_A286FA: FLdPr var_8C
  loc_A286FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28702: FLdPr var_A0
  loc_A28705:  = Me.Value
  loc_A2870A: FLdRfVar var_B0
  loc_A2870D: CI2Var
  loc_A2870E: FStI2 var_86
  loc_A28711: FFreeAd var_8C = ""
  loc_A28718: FFree1Var var_B0 = ""
  loc_A2871B: ExitProcCbHresult
End Sub

Public Property Get SupeInmu() 'A19090
  'Data Table: 4F2254
  loc_A19058: ZeroRetValVar
  loc_A1905A: FLdRfVar var_AC
  loc_A1905D: LitVarStr var_A8, "SupeInmu"
  loc_A19062: PopAdLdVar
  loc_A19063: FLdRfVar var_98
  loc_A19066: FLdPr Me
  loc_A19069: MemLdPr RsFrm
  loc_A1906C:  = Me.Fields
  loc_A19071: FLdPr var_98
  loc_A19074: from_stack_2 = Me.Item(from_stack_1)
  loc_A19079: FLdZeroAd var_AC
  loc_A1907C: CVarAd
  loc_A19080: FStVar SupeInmu
  loc_A19084: FFree1Ad var_98
  loc_A19087: ExitProcCbHresult
End Sub

Public Property Get MetrFrin() 'A191F8
  'Data Table: 4F2254
  loc_A191C0: ZeroRetValVar
  loc_A191C2: FLdRfVar var_AC
  loc_A191C5: LitVarStr var_A8, "MetrFrin"
  loc_A191CA: PopAdLdVar
  loc_A191CB: FLdRfVar var_98
  loc_A191CE: FLdPr Me
  loc_A191D1: MemLdPr RsFrm
  loc_A191D4:  = Me.Fields
  loc_A191D9: FLdPr var_98
  loc_A191DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A191E1: FLdZeroAd var_AC
  loc_A191E4: CVarAd
  loc_A191E8: FStVar MetrFrin
  loc_A191EC: FFree1Ad var_98
  loc_A191EF: ExitProcCbHresult
End Sub

Public Property Get NomeInmu() 'B36D44
  'Data Table: 4F2254
  loc_B36AE4: ZeroRetVal
  loc_B36AE6: FLdPr Me
  loc_B36AE9: MemLdStr RsFrm
  loc_B36AEC: FStAd var_8C 
  loc_B36AF0: FLdRfVar var_A4
  loc_B36AF3: LitVarStr var_A0, "DptoInmu"
  loc_B36AF8: PopAdLdVar
  loc_B36AF9: FLdRfVar var_90
  loc_B36AFC: FLdPr var_8C
  loc_B36AFF:  = Me.Fields
  loc_B36B04: FLdPr var_90
  loc_B36B07: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B0C: FLdRfVar var_F0
  loc_B36B0F: LitVarStr var_EC, "DistInmu"
  loc_B36B14: PopAdLdVar
  loc_B36B15: FLdRfVar var_DC
  loc_B36B18: FLdPr var_8C
  loc_B36B1B:  = Me.Fields
  loc_B36B20: FLdPr var_DC
  loc_B36B23: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B28: FLdRfVar var_144
  loc_B36B2B: LitVarStr var_140, "SeccInmu"
  loc_B36B30: PopAdLdVar
  loc_B36B31: FLdRfVar var_130
  loc_B36B34: FLdPr var_8C
  loc_B36B37:  = Me.Fields
  loc_B36B3C: FLdPr var_130
  loc_B36B3F: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B44: FLdRfVar var_198
  loc_B36B47: LitVarStr var_194, "ManzInmu"
  loc_B36B4C: PopAdLdVar
  loc_B36B4D: FLdRfVar var_184
  loc_B36B50: FLdPr var_8C
  loc_B36B53:  = Me.Fields
  loc_B36B58: FLdPr var_184
  loc_B36B5B: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B60: FLdRfVar var_1EC
  loc_B36B63: LitVarStr var_1E8, "ParcInmu"
  loc_B36B68: PopAdLdVar
  loc_B36B69: FLdRfVar var_1D8
  loc_B36B6C: FLdPr var_8C
  loc_B36B6F:  = Me.Fields
  loc_B36B74: FLdPr var_1D8
  loc_B36B77: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B7C: FLdRfVar var_240
  loc_B36B7F: LitVarStr var_23C, "SubpInmu"
  loc_B36B84: PopAdLdVar
  loc_B36B85: FLdRfVar var_22C
  loc_B36B88: FLdPr var_8C
  loc_B36B8B:  = Me.Fields
  loc_B36B90: FLdPr var_22C
  loc_B36B93: from_stack_2 = Me.Item(from_stack_1)
  loc_B36B98: LitI4 1
  loc_B36B9D: LitI4 1
  loc_B36BA2: LitVarStr var_C4, "00"
  loc_B36BA7: FStVarCopyObj var_D4
  loc_B36BAA: FLdRfVar var_D4
  loc_B36BAD: FLdZeroAd var_A4
  loc_B36BB0: CVarAd
  loc_B36BB4: ImpAdCallI2 Format$(, )
  loc_B36BB9: FStStrNoPop var_D8
  loc_B36BBC: LitStr "-"
  loc_B36BBF: ConcatStr
  loc_B36BC0: FStStrNoPop var_124
  loc_B36BC3: LitI4 1
  loc_B36BC8: LitI4 1
  loc_B36BCD: LitVarStr var_110, "00"
  loc_B36BD2: FStVarCopyObj var_120
  loc_B36BD5: FLdRfVar var_120
  loc_B36BD8: FLdZeroAd var_F0
  loc_B36BDB: CVarAd
  loc_B36BDF: ImpAdCallI2 Format$(, )
  loc_B36BE4: FStStrNoPop var_128
  loc_B36BE7: ConcatStr
  loc_B36BE8: FStStrNoPop var_12C
  loc_B36BEB: LitStr "-"
  loc_B36BEE: ConcatStr
  loc_B36BEF: FStStrNoPop var_178
  loc_B36BF2: LitI4 1
  loc_B36BF7: LitI4 1
  loc_B36BFC: LitVarStr var_164, "00"
  loc_B36C01: FStVarCopyObj var_174
  loc_B36C04: FLdRfVar var_174
  loc_B36C07: FLdZeroAd var_144
  loc_B36C0A: CVarAd
  loc_B36C0E: ImpAdCallI2 Format$(, )
  loc_B36C13: FStStrNoPop var_17C
  loc_B36C16: ConcatStr
  loc_B36C17: FStStrNoPop var_180
  loc_B36C1A: LitStr "-"
  loc_B36C1D: ConcatStr
  loc_B36C1E: FStStrNoPop var_1CC
  loc_B36C21: LitI4 1
  loc_B36C26: LitI4 1
  loc_B36C2B: LitVarStr var_1B8, "0000"
  loc_B36C30: FStVarCopyObj var_1C8
  loc_B36C33: FLdRfVar var_1C8
  loc_B36C36: FLdZeroAd var_198
  loc_B36C39: CVarAd
  loc_B36C3D: ImpAdCallI2 Format$(, )
  loc_B36C42: FStStrNoPop var_1D0
  loc_B36C45: ConcatStr
  loc_B36C46: FStStrNoPop var_1D4
  loc_B36C49: LitStr "-"
  loc_B36C4C: ConcatStr
  loc_B36C4D: FStStrNoPop var_220
  loc_B36C50: LitI4 1
  loc_B36C55: LitI4 1
  loc_B36C5A: LitVarStr var_20C, "000000"
  loc_B36C5F: FStVarCopyObj var_21C
  loc_B36C62: FLdRfVar var_21C
  loc_B36C65: FLdZeroAd var_1EC
  loc_B36C68: CVarAd
  loc_B36C6C: ImpAdCallI2 Format$(, )
  loc_B36C71: FStStrNoPop var_224
  loc_B36C74: ConcatStr
  loc_B36C75: FStStrNoPop var_228
  loc_B36C78: LitStr "-"
  loc_B36C7B: ConcatStr
  loc_B36C7C: FStStrNoPop var_274
  loc_B36C7F: LitI4 1
  loc_B36C84: LitI4 1
  loc_B36C89: LitVarStr var_260, "0000"
  loc_B36C8E: FStVarCopyObj var_270
  loc_B36C91: FLdRfVar var_270
  loc_B36C94: FLdZeroAd var_240
  loc_B36C97: CVarAd
  loc_B36C9B: ImpAdCallI2 Format$(, )
  loc_B36CA0: FStStrNoPop var_278
  loc_B36CA3: ConcatStr
  loc_B36CA4: FStStrNoPop var_27C
  loc_B36CA7: LitStr "-"
  loc_B36CAA: ConcatStr
  loc_B36CAB: CVarStr var_2B4
  loc_B36CAE: FLdRfVar var_2A4
  loc_B36CB1: FLdRfVar var_294
  loc_B36CB4: LitVarStr var_290, "DigiInmu"
  loc_B36CB9: PopAdLdVar
  loc_B36CBA: FLdRfVar var_280
  loc_B36CBD: FLdPr var_8C
  loc_B36CC0:  = Me.Fields
  loc_B36CC5: FLdPr var_280
  loc_B36CC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B36CCD: FLdPr var_294
  loc_B36CD0:  = Me.Value
  loc_B36CD5: FLdRfVar var_2A4
  loc_B36CD8: ConcatVar var_2C4
  loc_B36CDC: CStrVarTmp
  loc_B36CDD: FStStr var_88
  loc_B36CE0: FFreeStr var_D8 = "": var_124 = "": var_128 = "": var_12C = "": var_178 = "": var_17C = "": var_180 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_220 = "": var_224 = "": var_228 = "": var_274 = "": var_278 = ""
  loc_B36D03: FFreeAd var_90 = "": var_DC = "": var_130 = "": var_184 = "": var_1D8 = "": var_22C = "": var_280 = ""
  loc_B36D16: FFreeVar var_B4 = "": var_D4 = "": var_100 = "": var_120 = "": var_154 = "": var_174 = "": var_1A8 = "": var_1C8 = "": var_1FC = "": var_21C = "": var_250 = "": var_270 = "": var_2B4 = "": var_2A4 = ""
  loc_B36D37: LitNothing
  loc_B36D39: FStAd var_8C 
  loc_B36D3D: ExitProcCbHresult
End Sub

Public Property Get CodiZoin() 'A193D8
  'Data Table: 4F2254
  loc_A193A0: ZeroRetValVar
  loc_A193A2: FLdRfVar var_AC
  loc_A193A5: LitVarStr var_A8, "CodiZoin"
  loc_A193AA: PopAdLdVar
  loc_A193AB: FLdRfVar var_98
  loc_A193AE: FLdPr Me
  loc_A193B1: MemLdPr RsFrm
  loc_A193B4:  = Me.Fields
  loc_A193B9: FLdPr var_98
  loc_A193BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A193C1: FLdZeroAd var_AC
  loc_A193C4: CVarAd
  loc_A193C8: FStVar CodiZoin
  loc_A193CC: FFree1Ad var_98
  loc_A193CF: ExitProcCbHresult
End Sub

Public Property Get DetaZoin() 'A19798
  'Data Table: 4F2254
  loc_A19760: ZeroRetValVar
  loc_A19762: FLdRfVar var_AC
  loc_A19765: LitVarStr var_A8, "DetaZoin"
  loc_A1976A: PopAdLdVar
  loc_A1976B: FLdRfVar var_98
  loc_A1976E: FLdPr Me
  loc_A19771: MemLdPr RsFrm
  loc_A19774:  = Me.Fields
  loc_A19779: FLdPr var_98
  loc_A1977C: from_stack_2 = Me.Item(from_stack_1)
  loc_A19781: FLdZeroAd var_AC
  loc_A19784: CVarAd
  loc_A19788: FStVar DetaZoin
  loc_A1978C: FFree1Ad var_98
  loc_A1978F: ExitProcCbHresult
End Sub

Public Property Get DetaEsin() 'A19888
  'Data Table: 4F2254
  loc_A19850: ZeroRetValVar
  loc_A19852: FLdRfVar var_AC
  loc_A19855: LitVarStr var_A8, "DetaEsin"
  loc_A1985A: PopAdLdVar
  loc_A1985B: FLdRfVar var_98
  loc_A1985E: FLdPr Me
  loc_A19861: MemLdPr RsFrm
  loc_A19864:  = Me.Fields
  loc_A19869: FLdPr var_98
  loc_A1986C: from_stack_2 = Me.Item(from_stack_1)
  loc_A19871: FLdZeroAd var_AC
  loc_A19874: CVarAd
  loc_A19878: FStVar DetaEsin
  loc_A1987C: FFree1Ad var_98
  loc_A1987F: ExitProcCbHresult
End Sub

Public Property Get CodiTram() 'A19900
  'Data Table: 4F2254
  loc_A198C8: ZeroRetValVar
  loc_A198CA: FLdRfVar var_AC
  loc_A198CD: LitVarStr var_A8, "CodiTram"
  loc_A198D2: PopAdLdVar
  loc_A198D3: FLdRfVar var_98
  loc_A198D6: FLdPr Me
  loc_A198D9: MemLdPr RsFrm
  loc_A198DC:  = Me.Fields
  loc_A198E1: FLdPr var_98
  loc_A198E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A198E9: FLdZeroAd var_AC
  loc_A198EC: CVarAd
  loc_A198F0: FStVar CodiTram
  loc_A198F4: FFree1Ad var_98
  loc_A198F7: ExitProcCbHresult
End Sub

Public Property Get DetaTram() 'A19978
  'Data Table: 4F2254
  loc_A19940: ZeroRetValVar
  loc_A19942: FLdRfVar var_AC
  loc_A19945: LitVarStr var_A8, "DetaTram"
  loc_A1994A: PopAdLdVar
  loc_A1994B: FLdRfVar var_98
  loc_A1994E: FLdPr Me
  loc_A19951: MemLdPr RsFrm
  loc_A19954:  = Me.Fields
  loc_A19959: FLdPr var_98
  loc_A1995C: from_stack_2 = Me.Item(from_stack_1)
  loc_A19961: FLdZeroAd var_AC
  loc_A19964: CVarAd
  loc_A19968: FStVar DetaTram
  loc_A1996C: FFree1Ad var_98
  loc_A1996F: ExitProcCbHresult
End Sub

Public Property Get CodiSubt() 'A19A68
  'Data Table: 4F2254
  loc_A19A30: ZeroRetValVar
  loc_A19A32: FLdRfVar var_AC
  loc_A19A35: LitVarStr var_A8, "CodiSubt"
  loc_A19A3A: PopAdLdVar
  loc_A19A3B: FLdRfVar var_98
  loc_A19A3E: FLdPr Me
  loc_A19A41: MemLdPr RsFrm
  loc_A19A44:  = Me.Fields
  loc_A19A49: FLdPr var_98
  loc_A19A4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A19A51: FLdZeroAd var_AC
  loc_A19A54: CVarAd
  loc_A19A58: FStVar CodiSubt
  loc_A19A5C: FFree1Ad var_98
  loc_A19A5F: ExitProcCbHresult
End Sub

Public Property Get DetaSubt() 'A1A260
  'Data Table: 4F2254
  loc_A1A228: ZeroRetValVar
  loc_A1A22A: FLdRfVar var_AC
  loc_A1A22D: LitVarStr var_A8, "DetaSubt"
  loc_A1A232: PopAdLdVar
  loc_A1A233: FLdRfVar var_98
  loc_A1A236: FLdPr Me
  loc_A1A239: MemLdPr RsFrm
  loc_A1A23C:  = Me.Fields
  loc_A1A241: FLdPr var_98
  loc_A1A244: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A249: FLdZeroAd var_AC
  loc_A1A24C: CVarAd
  loc_A1A250: FStVar DetaSubt
  loc_A1A254: FFree1Ad var_98
  loc_A1A257: ExitProcCbHresult
End Sub

Public Property Get DetaOfic() 'A1A2D8
  'Data Table: 4F2254
  loc_A1A2A0: ZeroRetValVar
  loc_A1A2A2: FLdRfVar var_AC
  loc_A1A2A5: LitVarStr var_A8, "DetaOfic"
  loc_A1A2AA: PopAdLdVar
  loc_A1A2AB: FLdRfVar var_98
  loc_A1A2AE: FLdPr Me
  loc_A1A2B1: MemLdPr RsFrm
  loc_A1A2B4:  = Me.Fields
  loc_A1A2B9: FLdPr var_98
  loc_A1A2BC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A2C1: FLdZeroAd var_AC
  loc_A1A2C4: CVarAd
  loc_A1A2C8: FStVar DetaOfic
  loc_A1A2CC: FFree1Ad var_98
  loc_A1A2CF: ExitProcCbHresult
End Sub

Public Property Get DetaCeme() 'A1A350
  'Data Table: 4F2254
  loc_A1A318: ZeroRetValVar
  loc_A1A31A: FLdRfVar var_AC
  loc_A1A31D: LitVarStr var_A8, "DetaCeme"
  loc_A1A322: PopAdLdVar
  loc_A1A323: FLdRfVar var_98
  loc_A1A326: FLdPr Me
  loc_A1A329: MemLdPr RsFrm
  loc_A1A32C:  = Me.Fields
  loc_A1A331: FLdPr var_98
  loc_A1A334: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A339: FLdZeroAd var_AC
  loc_A1A33C: CVarAd
  loc_A1A340: FStVar DetaCeme
  loc_A1A344: FFree1Ad var_98
  loc_A1A347: ExitProcCbHresult
End Sub

Public Property Get DetaTise() 'A1A3C8
  'Data Table: 4F2254
  loc_A1A390: ZeroRetValVar
  loc_A1A392: FLdRfVar var_AC
  loc_A1A395: LitVarStr var_A8, "DetaTise"
  loc_A1A39A: PopAdLdVar
  loc_A1A39B: FLdRfVar var_98
  loc_A1A39E: FLdPr Me
  loc_A1A3A1: MemLdPr RsFrm
  loc_A1A3A4:  = Me.Fields
  loc_A1A3A9: FLdPr var_98
  loc_A1A3AC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A3B1: FLdZeroAd var_AC
  loc_A1A3B4: CVarAd
  loc_A1A3B8: FStVar DetaTise
  loc_A1A3BC: FFree1Ad var_98
  loc_A1A3BF: ExitProcCbHresult
End Sub

Public Property Get NumeDifu() 'A1A5A8
  'Data Table: 4F2254
  loc_A1A570: ZeroRetValVar
  loc_A1A572: FLdRfVar var_AC
  loc_A1A575: LitVarStr var_A8, "NumeDifu"
  loc_A1A57A: PopAdLdVar
  loc_A1A57B: FLdRfVar var_98
  loc_A1A57E: FLdPr Me
  loc_A1A581: MemLdPr RsFrm
  loc_A1A584:  = Me.Fields
  loc_A1A589: FLdPr var_98
  loc_A1A58C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A591: FLdZeroAd var_AC
  loc_A1A594: CVarAd
  loc_A1A598: FStVar NumeDifu
  loc_A1A59C: FFree1Ad var_98
  loc_A1A59F: ExitProcCbHresult
End Sub

Public Property Get FilaDifu() 'A1A698
  'Data Table: 4F2254
  loc_A1A660: ZeroRetValVar
  loc_A1A662: FLdRfVar var_AC
  loc_A1A665: LitVarStr var_A8, "FilaDifu"
  loc_A1A66A: PopAdLdVar
  loc_A1A66B: FLdRfVar var_98
  loc_A1A66E: FLdPr Me
  loc_A1A671: MemLdPr RsFrm
  loc_A1A674:  = Me.Fields
  loc_A1A679: FLdPr var_98
  loc_A1A67C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A681: FLdZeroAd var_AC
  loc_A1A684: CVarAd
  loc_A1A688: FStVar FilaDifu
  loc_A1A68C: FFree1Ad var_98
  loc_A1A68F: ExitProcCbHresult
End Sub

Public Property Get NoseDifu() 'A1A788
  'Data Table: 4F2254
  loc_A1A750: ZeroRetValVar
  loc_A1A752: FLdRfVar var_AC
  loc_A1A755: LitVarStr var_A8, "NoseDifu"
  loc_A1A75A: PopAdLdVar
  loc_A1A75B: FLdRfVar var_98
  loc_A1A75E: FLdPr Me
  loc_A1A761: MemLdPr RsFrm
  loc_A1A764:  = Me.Fields
  loc_A1A769: FLdPr var_98
  loc_A1A76C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A771: FLdZeroAd var_AC
  loc_A1A774: CVarAd
  loc_A1A778: FStVar NoseDifu
  loc_A1A77C: FFree1Ad var_98
  loc_A1A77F: ExitProcCbHresult
End Sub

Public Property Get SeccDifu() 'A1ACB0
  'Data Table: 4F2254
  loc_A1AC78: ZeroRetValVar
  loc_A1AC7A: FLdRfVar var_AC
  loc_A1AC7D: LitVarStr var_A8, "SeccDifu"
  loc_A1AC82: PopAdLdVar
  loc_A1AC83: FLdRfVar var_98
  loc_A1AC86: FLdPr Me
  loc_A1AC89: MemLdPr RsFrm
  loc_A1AC8C:  = Me.Fields
  loc_A1AC91: FLdPr var_98
  loc_A1AC94: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AC99: FLdZeroAd var_AC
  loc_A1AC9C: CVarAd
  loc_A1ACA0: FStVar SeccDifu
  loc_A1ACA4: FFree1Ad var_98
  loc_A1ACA7: ExitProcCbHresult
End Sub

Public Property Get PlanDifu() 'A1ADA0
  'Data Table: 4F2254
  loc_A1AD68: ZeroRetValVar
  loc_A1AD6A: FLdRfVar var_AC
  loc_A1AD6D: LitVarStr var_A8, "PlanDifu"
  loc_A1AD72: PopAdLdVar
  loc_A1AD73: FLdRfVar var_98
  loc_A1AD76: FLdPr Me
  loc_A1AD79: MemLdPr RsFrm
  loc_A1AD7C:  = Me.Fields
  loc_A1AD81: FLdPr var_98
  loc_A1AD84: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AD89: FLdZeroAd var_AC
  loc_A1AD8C: CVarAd
  loc_A1AD90: FStVar PlanDifu
  loc_A1AD94: FFree1Ad var_98
  loc_A1AD97: ExitProcCbHresult
End Sub

Public Property Get DetaDedi() 'A1AE18
  'Data Table: 4F2254
  loc_A1ADE0: ZeroRetValVar
  loc_A1ADE2: FLdRfVar var_AC
  loc_A1ADE5: LitVarStr var_A8, "DetaDedi"
  loc_A1ADEA: PopAdLdVar
  loc_A1ADEB: FLdRfVar var_98
  loc_A1ADEE: FLdPr Me
  loc_A1ADF1: MemLdPr RsFrm
  loc_A1ADF4:  = Me.Fields
  loc_A1ADF9: FLdPr var_98
  loc_A1ADFC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AE01: FLdZeroAd var_AC
  loc_A1AE04: CVarAd
  loc_A1AE08: FStVar DetaDedi
  loc_A1AE0C: FFree1Ad var_98
  loc_A1AE0F: ExitProcCbHresult
End Sub

Public Property Get FeveDifu() 'A1AE90
  'Data Table: 4F2254
  loc_A1AE58: ZeroRetValVar
  loc_A1AE5A: FLdRfVar var_AC
  loc_A1AE5D: LitVarStr var_A8, "FeveDifu"
  loc_A1AE62: PopAdLdVar
  loc_A1AE63: FLdRfVar var_98
  loc_A1AE66: FLdPr Me
  loc_A1AE69: MemLdPr RsFrm
  loc_A1AE6C:  = Me.Fields
  loc_A1AE71: FLdPr var_98
  loc_A1AE74: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AE79: FLdZeroAd var_AC
  loc_A1AE7C: CVarAd
  loc_A1AE80: FStVar FeveDifu
  loc_A1AE84: FFree1Ad var_98
  loc_A1AE87: ExitProcCbHresult
End Sub

Public Property Get OrdeLico() 'A1AF08
  'Data Table: 4F2254
  loc_A1AED0: ZeroRetValVar
  loc_A1AED2: FLdRfVar var_AC
  loc_A1AED5: LitVarStr var_A8, "OrdeLico"
  loc_A1AEDA: PopAdLdVar
  loc_A1AEDB: FLdRfVar var_98
  loc_A1AEDE: FLdPr Me
  loc_A1AEE1: MemLdPr RsFrm
  loc_A1AEE4:  = Me.Fields
  loc_A1AEE9: FLdPr var_98
  loc_A1AEEC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AEF1: FLdZeroAd var_AC
  loc_A1AEF4: CVarAd
  loc_A1AEF8: FStVar OrdeLico
  loc_A1AEFC: FFree1Ad var_98
  loc_A1AEFF: ExitProcCbHresult
End Sub

Public Property Get OrdeLita() 'A1AFF8
  'Data Table: 4F2254
  loc_A1AFC0: ZeroRetValVar
  loc_A1AFC2: FLdRfVar var_AC
  loc_A1AFC5: LitVarStr var_A8, "OrdeLita"
  loc_A1AFCA: PopAdLdVar
  loc_A1AFCB: FLdRfVar var_98
  loc_A1AFCE: FLdPr Me
  loc_A1AFD1: MemLdPr RsFrm
  loc_A1AFD4:  = Me.Fields
  loc_A1AFD9: FLdPr var_98
  loc_A1AFDC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1AFE1: FLdZeroAd var_AC
  loc_A1AFE4: CVarAd
  loc_A1AFE8: FStVar OrdeLita
  loc_A1AFEC: FFree1Ad var_98
  loc_A1AFEF: ExitProcCbHresult
End Sub

Public Property Get FeenAcpa() 'A1B3B8
  'Data Table: 4F2254
  loc_A1B380: ZeroRetValVar
  loc_A1B382: FLdRfVar var_AC
  loc_A1B385: LitVarStr var_A8, "FeenAcpa"
  loc_A1B38A: PopAdLdVar
  loc_A1B38B: FLdRfVar var_98
  loc_A1B38E: FLdPr Me
  loc_A1B391: MemLdPr RsFrm
  loc_A1B394:  = Me.Fields
  loc_A1B399: FLdPr var_98
  loc_A1B39C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B3A1: FLdZeroAd var_AC
  loc_A1B3A4: CVarAd
  loc_A1B3A8: FStVar FeenAcpa
  loc_A1B3AC: FFree1Ad var_98
  loc_A1B3AF: ExitProcCbHresult
End Sub

Public Property Get FepaAcpa() 'A1B430
  'Data Table: 4F2254
  loc_A1B3F8: ZeroRetValVar
  loc_A1B3FA: FLdRfVar var_AC
  loc_A1B3FD: LitVarStr var_A8, "FepaAcpa"
  loc_A1B402: PopAdLdVar
  loc_A1B403: FLdRfVar var_98
  loc_A1B406: FLdPr Me
  loc_A1B409: MemLdPr RsFrm
  loc_A1B40C:  = Me.Fields
  loc_A1B411: FLdPr var_98
  loc_A1B414: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B419: FLdZeroAd var_AC
  loc_A1B41C: CVarAd
  loc_A1B420: FStVar FepaAcpa
  loc_A1B424: FFree1Ad var_98
  loc_A1B427: ExitProcCbHresult
End Sub

Public Property Get FeacAcpa() 'A1B520
  'Data Table: 4F2254
  loc_A1B4E8: ZeroRetValVar
  loc_A1B4EA: FLdRfVar var_AC
  loc_A1B4ED: LitVarStr var_A8, "FeacAcpa"
  loc_A1B4F2: PopAdLdVar
  loc_A1B4F3: FLdRfVar var_98
  loc_A1B4F6: FLdPr Me
  loc_A1B4F9: MemLdPr RsFrm
  loc_A1B4FC:  = Me.Fields
  loc_A1B501: FLdPr var_98
  loc_A1B504: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B509: FLdZeroAd var_AC
  loc_A1B50C: CVarAd
  loc_A1B510: FStVar FeacAcpa
  loc_A1B514: FFree1Ad var_98
  loc_A1B517: ExitProcCbHresult
End Sub

Public Property Get NumeAcpa() 'A1B688
  'Data Table: 4F2254
  loc_A1B650: ZeroRetValVar
  loc_A1B652: FLdRfVar var_AC
  loc_A1B655: LitVarStr var_A8, "NumeAcpa"
  loc_A1B65A: PopAdLdVar
  loc_A1B65B: FLdRfVar var_98
  loc_A1B65E: FLdPr Me
  loc_A1B661: MemLdPr RsFrm
  loc_A1B664:  = Me.Fields
  loc_A1B669: FLdPr var_98
  loc_A1B66C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B671: FLdZeroAd var_AC
  loc_A1B674: CVarAd
  loc_A1B678: FStVar NumeAcpa
  loc_A1B67C: FFree1Ad var_98
  loc_A1B67F: ExitProcCbHresult
End Sub

Public Property Get DetaEnre() 'A1B700
  'Data Table: 4F2254
  loc_A1B6C8: ZeroRetValVar
  loc_A1B6CA: FLdRfVar var_AC
  loc_A1B6CD: LitVarStr var_A8, "DetaEnre"
  loc_A1B6D2: PopAdLdVar
  loc_A1B6D3: FLdRfVar var_98
  loc_A1B6D6: FLdPr Me
  loc_A1B6D9: MemLdPr RsFrm
  loc_A1B6DC:  = Me.Fields
  loc_A1B6E1: FLdPr var_98
  loc_A1B6E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B6E9: FLdZeroAd var_AC
  loc_A1B6EC: CVarAd
  loc_A1B6F0: FStVar DetaEnre
  loc_A1B6F4: FFree1Ad var_98
  loc_A1B6F7: ExitProcCbHresult
End Sub

Public Property Get DetaCall() 'A1B778
  'Data Table: 4F2254
  loc_A1B740: ZeroRetValVar
  loc_A1B742: FLdRfVar var_AC
  loc_A1B745: LitVarStr var_A8, "DetaCall"
  loc_A1B74A: PopAdLdVar
  loc_A1B74B: FLdRfVar var_98
  loc_A1B74E: FLdPr Me
  loc_A1B751: MemLdPr RsFrm
  loc_A1B754:  = Me.Fields
  loc_A1B759: FLdPr var_98
  loc_A1B75C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B761: FLdZeroAd var_AC
  loc_A1B764: CVarAd
  loc_A1B768: FStVar DetaCall
  loc_A1B76C: FFree1Ad var_98
  loc_A1B76F: ExitProcCbHresult
End Sub

Public Property Get NucaInmu() 'A1B7F0
  'Data Table: 4F2254
  loc_A1B7B8: ZeroRetValVar
  loc_A1B7BA: FLdRfVar var_AC
  loc_A1B7BD: LitVarStr var_A8, "NucaInmu"
  loc_A1B7C2: PopAdLdVar
  loc_A1B7C3: FLdRfVar var_98
  loc_A1B7C6: FLdPr Me
  loc_A1B7C9: MemLdPr RsFrm
  loc_A1B7CC:  = Me.Fields
  loc_A1B7D1: FLdPr var_98
  loc_A1B7D4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B7D9: FLdZeroAd var_AC
  loc_A1B7DC: CVarAd
  loc_A1B7E0: FStVar NucaInmu
  loc_A1B7E4: FFree1Ad var_98
  loc_A1B7E7: ExitProcCbHresult
End Sub

Public Property Get UbicInmu() 'A1B868
  'Data Table: 4F2254
  loc_A1B830: ZeroRetValVar
  loc_A1B832: FLdRfVar var_AC
  loc_A1B835: LitVarStr var_A8, "UbicInmu"
  loc_A1B83A: PopAdLdVar
  loc_A1B83B: FLdRfVar var_98
  loc_A1B83E: FLdPr Me
  loc_A1B841: MemLdPr RsFrm
  loc_A1B844:  = Me.Fields
  loc_A1B849: FLdPr var_98
  loc_A1B84C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B851: FLdZeroAd var_AC
  loc_A1B854: CVarAd
  loc_A1B858: FStVar UbicInmu
  loc_A1B85C: FFree1Ad var_98
  loc_A1B85F: ExitProcCbHresult
End Sub

Public Property Get DeudLita() 'A1B8E0
  'Data Table: 4F2254
  loc_A1B8A8: ZeroRetValVar
  loc_A1B8AA: FLdRfVar var_AC
  loc_A1B8AD: LitVarStr var_A8, "DeudLita"
  loc_A1B8B2: PopAdLdVar
  loc_A1B8B3: FLdRfVar var_98
  loc_A1B8B6: FLdPr Me
  loc_A1B8B9: MemLdPr RsFrm
  loc_A1B8BC:  = Me.Fields
  loc_A1B8C1: FLdPr var_98
  loc_A1B8C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B8C9: FLdZeroAd var_AC
  loc_A1B8CC: CVarAd
  loc_A1B8D0: FStVar DeudLita
  loc_A1B8D4: FFree1Ad var_98
  loc_A1B8D7: ExitProcCbHresult
End Sub

Public Property Get DecaCome() 'A1B9D0
  'Data Table: 4F2254
  loc_A1B998: ZeroRetValVar
  loc_A1B99A: FLdRfVar var_AC
  loc_A1B99D: LitVarStr var_A8, "DecaCome"
  loc_A1B9A2: PopAdLdVar
  loc_A1B9A3: FLdRfVar var_98
  loc_A1B9A6: FLdPr Me
  loc_A1B9A9: MemLdPr RsFrm
  loc_A1B9AC:  = Me.Fields
  loc_A1B9B1: FLdPr var_98
  loc_A1B9B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B9B9: FLdZeroAd var_AC
  loc_A1B9BC: CVarAd
  loc_A1B9C0: FStVar DecaCome
  loc_A1B9C4: FFree1Ad var_98
  loc_A1B9C7: ExitProcCbHresult
End Sub

Public Property Get NucaCome() 'A1BB38
  'Data Table: 4F2254
  loc_A1BB00: ZeroRetValVar
  loc_A1BB02: FLdRfVar var_AC
  loc_A1BB05: LitVarStr var_A8, "NucaCome"
  loc_A1BB0A: PopAdLdVar
  loc_A1BB0B: FLdRfVar var_98
  loc_A1BB0E: FLdPr Me
  loc_A1BB11: MemLdPr RsFrm
  loc_A1BB14:  = Me.Fields
  loc_A1BB19: FLdPr var_98
  loc_A1BB1C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BB21: FLdZeroAd var_AC
  loc_A1BB24: CVarAd
  loc_A1BB28: FStVar NucaCome
  loc_A1BB2C: FFree1Ad var_98
  loc_A1BB2F: ExitProcCbHresult
End Sub

Public Property Get UbicCome() 'A1BC28
  'Data Table: 4F2254
  loc_A1BBF0: ZeroRetValVar
  loc_A1BBF2: FLdRfVar var_AC
  loc_A1BBF5: LitVarStr var_A8, "UbicCome"
  loc_A1BBFA: PopAdLdVar
  loc_A1BBFB: FLdRfVar var_98
  loc_A1BBFE: FLdPr Me
  loc_A1BC01: MemLdPr RsFrm
  loc_A1BC04:  = Me.Fields
  loc_A1BC09: FLdPr var_98
  loc_A1BC0C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BC11: FLdZeroAd var_AC
  loc_A1BC14: CVarAd
  loc_A1BC18: FStVar UbicCome
  loc_A1BC1C: FFree1Ad var_98
  loc_A1BC1F: ExitProcCbHresult
End Sub

Public Property Get DeudLico() 'A1BF70
  'Data Table: 4F2254
  loc_A1BF38: ZeroRetValVar
  loc_A1BF3A: FLdRfVar var_AC
  loc_A1BF3D: LitVarStr var_A8, "DeudLico"
  loc_A1BF42: PopAdLdVar
  loc_A1BF43: FLdRfVar var_98
  loc_A1BF46: FLdPr Me
  loc_A1BF49: MemLdPr RsFrm
  loc_A1BF4C:  = Me.Fields
  loc_A1BF51: FLdPr var_98
  loc_A1BF54: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BF59: FLdZeroAd var_AC
  loc_A1BF5C: CVarAd
  loc_A1BF60: FStVar DeudLico
  loc_A1BF64: FFree1Ad var_98
  loc_A1BF67: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A37CA8
  'Data Table: 4F2254
  loc_A37C64: ZeroRetVal
  loc_A37C66: FLdRfVar var_B0
  loc_A37C69: FLdRfVar var_A0
  loc_A37C6C: LitVarStr var_9C, "TipoVenc"
  loc_A37C71: PopAdLdVar
  loc_A37C72: FLdRfVar var_8C
  loc_A37C75: FLdPr Me
  loc_A37C78: MemLdPr RsFrm
  loc_A37C7B:  = Me.Fields
  loc_A37C80: FLdPr var_8C
  loc_A37C83: from_stack_2 = Me.Item(from_stack_1)
  loc_A37C88: FLdPr var_A0
  loc_A37C8B:  = Me.Value
  loc_A37C90: FLdRfVar var_B0
  loc_A37C93: CStrVarTmp
  loc_A37C94: FStStr var_88
  loc_A37C97: FFreeAd var_8C = ""
  loc_A37C9E: FFree1Var var_B0 = ""
  loc_A37CA1: ExitProcCbHresult
End Sub

Public Property Get DomiPers() 'A38254
  'Data Table: 4F2254
  loc_A38210: ZeroRetVal
  loc_A38212: FLdRfVar var_B0
  loc_A38215: FLdRfVar var_A0
  loc_A38218: LitVarStr var_9C, "DomiPers"
  loc_A3821D: PopAdLdVar
  loc_A3821E: FLdRfVar var_8C
  loc_A38221: FLdPr Me
  loc_A38224: MemLdPr RsFrm
  loc_A38227:  = Me.Fields
  loc_A3822C: FLdPr var_8C
  loc_A3822F: from_stack_2 = Me.Item(from_stack_1)
  loc_A38234: FLdPr var_A0
  loc_A38237:  = Me.Value
  loc_A3823C: FLdRfVar var_B0
  loc_A3823F: CStrVarTmp
  loc_A38240: FStStr var_88
  loc_A38243: FFreeAd var_8C = ""
  loc_A3824A: FFree1Var var_B0 = ""
  loc_A3824D: ExitProcCbHresult
End Sub

Public Property Get CodiConc() 'A385F0
  'Data Table: 4F2254
  loc_A385AC: ZeroRetVal
  loc_A385AE: FLdRfVar var_B0
  loc_A385B1: FLdRfVar var_A0
  loc_A385B4: LitVarStr var_9C, "CodiConc"
  loc_A385B9: PopAdLdVar
  loc_A385BA: FLdRfVar var_8C
  loc_A385BD: FLdPr Me
  loc_A385C0: MemLdPr RsFrm
  loc_A385C3:  = Me.Fields
  loc_A385C8: FLdPr var_8C
  loc_A385CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A385D0: FLdPr var_A0
  loc_A385D3:  = Me.Value
  loc_A385D8: FLdRfVar var_B0
  loc_A385DB: CStrVarTmp
  loc_A385DC: FStStr var_88
  loc_A385DF: FFreeAd var_8C = ""
  loc_A385E6: FFree1Var var_B0 = ""
  loc_A385E9: ExitProcCbHresult
End Sub

Public Property Get DetaConc() 'A38800
  'Data Table: 4F2254
  loc_A387BC: ZeroRetVal
  loc_A387BE: FLdRfVar var_B0
  loc_A387C1: FLdRfVar var_A0
  loc_A387C4: LitVarStr var_9C, "DetaConc"
  loc_A387C9: PopAdLdVar
  loc_A387CA: FLdRfVar var_8C
  loc_A387CD: FLdPr Me
  loc_A387D0: MemLdPr RsFrm
  loc_A387D3:  = Me.Fields
  loc_A387D8: FLdPr var_8C
  loc_A387DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A387E0: FLdPr var_A0
  loc_A387E3:  = Me.Value
  loc_A387E8: FLdRfVar var_B0
  loc_A387EB: CStrVarTmp
  loc_A387EC: FStStr var_88
  loc_A387EF: FFreeAd var_8C = ""
  loc_A387F6: FFree1Var var_B0 = ""
  loc_A387F9: ExitProcCbHresult
End Sub

Public Property Get ExenLita() 'A26224
  'Data Table: 4F2254
  loc_A261E0: FLdRfVar var_B4
  loc_A261E3: FLdRfVar var_A4
  loc_A261E6: LitVarStr var_A0, "ExenLita"
  loc_A261EB: PopAdLdVar
  loc_A261EC: FLdRfVar var_90
  loc_A261EF: FLdPr Me
  loc_A261F2: MemLdPr RsFrm
  loc_A261F5:  = Me.Fields
  loc_A261FA: FLdPr var_90
  loc_A261FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26202: FLdPr var_A4
  loc_A26205:  = Me.Value
  loc_A2620A: FLdRfVar var_B4
  loc_A2620D: CR4Var
  loc_A2620E: FStFPR8 var_8C
  loc_A26211: FFreeAd var_90 = ""
  loc_A26218: FFree1Var var_B4 = ""
  loc_A2621B: ExitProcCbHresult
End Sub

Public Property Get ExenLico() 'A26324
  'Data Table: 4F2254
  loc_A262E0: FLdRfVar var_B4
  loc_A262E3: FLdRfVar var_A4
  loc_A262E6: LitVarStr var_A0, "ExenLico"
  loc_A262EB: PopAdLdVar
  loc_A262EC: FLdRfVar var_90
  loc_A262EF: FLdPr Me
  loc_A262F2: MemLdPr RsFrm
  loc_A262F5:  = Me.Fields
  loc_A262FA: FLdPr var_90
  loc_A262FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26302: FLdPr var_A4
  loc_A26305:  = Me.Value
  loc_A2630A: FLdRfVar var_B4
  loc_A2630D: CR4Var
  loc_A2630E: FStFPR8 var_8C
  loc_A26311: FFreeAd var_90 = ""
  loc_A26318: FFree1Var var_B4 = ""
  loc_A2631B: ExitProcCbHresult
End Sub

Public Property Get DescLita() 'A25F24
  'Data Table: 4F2254
  loc_A25EE0: FLdRfVar var_B4
  loc_A25EE3: FLdRfVar var_A4
  loc_A25EE6: LitVarStr var_A0, "DescLita"
  loc_A25EEB: PopAdLdVar
  loc_A25EEC: FLdRfVar var_90
  loc_A25EEF: FLdPr Me
  loc_A25EF2: MemLdPr RsFrm
  loc_A25EF5:  = Me.Fields
  loc_A25EFA: FLdPr var_90
  loc_A25EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A25F02: FLdPr var_A4
  loc_A25F05:  = Me.Value
  loc_A25F0A: FLdRfVar var_B4
  loc_A25F0D: CR4Var
  loc_A25F0E: FStFPR8 var_8C
  loc_A25F11: FFreeAd var_90 = ""
  loc_A25F18: FFree1Var var_B4 = ""
  loc_A25F1B: ExitProcCbHresult
End Sub

Public Property Get DescLico() 'A261A4
  'Data Table: 4F2254
  loc_A26160: FLdRfVar var_B4
  loc_A26163: FLdRfVar var_A4
  loc_A26166: LitVarStr var_A0, "DescLico"
  loc_A2616B: PopAdLdVar
  loc_A2616C: FLdRfVar var_90
  loc_A2616F: FLdPr Me
  loc_A26172: MemLdPr RsFrm
  loc_A26175:  = Me.Fields
  loc_A2617A: FLdPr var_90
  loc_A2617D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26182: FLdPr var_A4
  loc_A26185:  = Me.Value
  loc_A2618A: FLdRfVar var_B4
  loc_A2618D: CR4Var
  loc_A2618E: FStFPR8 var_8C
  loc_A26191: FFreeAd var_90 = ""
  loc_A26198: FFree1Var var_B4 = ""
  loc_A2619B: ExitProcCbHresult
End Sub

Public Property Get CrafLita() 'A1D410
  'Data Table: 4F2254
  loc_A1D3D8: ZeroRetValVar
  loc_A1D3DA: FLdRfVar var_AC
  loc_A1D3DD: LitVarStr var_A8, "CrafLita"
  loc_A1D3E2: PopAdLdVar
  loc_A1D3E3: FLdRfVar var_98
  loc_A1D3E6: FLdPr Me
  loc_A1D3E9: MemLdPr RsFrm
  loc_A1D3EC:  = Me.Fields
  loc_A1D3F1: FLdPr var_98
  loc_A1D3F4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D3F9: FLdZeroAd var_AC
  loc_A1D3FC: CVarAd
  loc_A1D400: FStVar CrafLita
  loc_A1D404: FFree1Ad var_98
  loc_A1D407: ExitProcCbHresult
End Sub

Public Property Get CrafLico() 'A1D500
  'Data Table: 4F2254
  loc_A1D4C8: ZeroRetValVar
  loc_A1D4CA: FLdRfVar var_AC
  loc_A1D4CD: LitVarStr var_A8, "CrafLico"
  loc_A1D4D2: PopAdLdVar
  loc_A1D4D3: FLdRfVar var_98
  loc_A1D4D6: FLdPr Me
  loc_A1D4D9: MemLdPr RsFrm
  loc_A1D4DC:  = Me.Fields
  loc_A1D4E1: FLdPr var_98
  loc_A1D4E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D4E9: FLdZeroAd var_AC
  loc_A1D4EC: CVarAd
  loc_A1D4F0: FStVar CrafLico
  loc_A1D4F4: FFree1Ad var_98
  loc_A1D4F7: ExitProcCbHresult
End Sub

Public Property Get TotaLita() 'A263A4
  'Data Table: 4F2254
  loc_A26360: FLdRfVar var_B4
  loc_A26363: FLdRfVar var_A4
  loc_A26366: LitVarStr var_A0, "TotaLita"
  loc_A2636B: PopAdLdVar
  loc_A2636C: FLdRfVar var_90
  loc_A2636F: FLdPr Me
  loc_A26372: MemLdPr RsFrm
  loc_A26375:  = Me.Fields
  loc_A2637A: FLdPr var_90
  loc_A2637D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26382: FLdPr var_A4
  loc_A26385:  = Me.Value
  loc_A2638A: FLdRfVar var_B4
  loc_A2638D: CR4Var
  loc_A2638E: FStFPR8 var_8C
  loc_A26391: FFreeAd var_90 = ""
  loc_A26398: FFree1Var var_B4 = ""
  loc_A2639B: ExitProcCbHresult
End Sub

Public Property Get TotaLico() 'A26C24
  'Data Table: 4F2254
  loc_A26BE0: FLdRfVar var_B4
  loc_A26BE3: FLdRfVar var_A4
  loc_A26BE6: LitVarStr var_A0, "TotaLico"
  loc_A26BEB: PopAdLdVar
  loc_A26BEC: FLdRfVar var_90
  loc_A26BEF: FLdPr Me
  loc_A26BF2: MemLdPr RsFrm
  loc_A26BF5:  = Me.Fields
  loc_A26BFA: FLdPr var_90
  loc_A26BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A26C02: FLdPr var_A4
  loc_A26C05:  = Me.Value
  loc_A26C0A: FLdRfVar var_B4
  loc_A26C0D: CR4Var
  loc_A26C0E: FStFPR8 var_8C
  loc_A26C11: FFreeAd var_90 = ""
  loc_A26C18: FFree1Var var_B4 = ""
  loc_A26C1B: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A1D6E0
  'Data Table: 4F2254
  loc_A1D6A8: ZeroRetValVar
  loc_A1D6AA: FLdRfVar var_AC
  loc_A1D6AD: LitVarStr var_A8, "CodiInmu"
  loc_A1D6B2: PopAdLdVar
  loc_A1D6B3: FLdRfVar var_98
  loc_A1D6B6: FLdPr Me
  loc_A1D6B9: MemLdPr RsFrm
  loc_A1D6BC:  = Me.Fields
  loc_A1D6C1: FLdPr var_98
  loc_A1D6C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D6C9: FLdZeroAd var_AC
  loc_A1D6CC: CVarAd
  loc_A1D6D0: FStVar CodiInmu
  loc_A1D6D4: FFree1Ad var_98
  loc_A1D6D7: ExitProcCbHresult
End Sub

Public Property Get RazoCome() 'A1D7D0
  'Data Table: 4F2254
  loc_A1D798: ZeroRetValVar
  loc_A1D79A: FLdRfVar var_AC
  loc_A1D79D: LitVarStr var_A8, "RazoCome"
  loc_A1D7A2: PopAdLdVar
  loc_A1D7A3: FLdRfVar var_98
  loc_A1D7A6: FLdPr Me
  loc_A1D7A9: MemLdPr RsFrm
  loc_A1D7AC:  = Me.Fields
  loc_A1D7B1: FLdPr var_98
  loc_A1D7B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D7B9: FLdZeroAd var_AC
  loc_A1D7BC: CVarAd
  loc_A1D7C0: FStVar RazoCome
  loc_A1D7C4: FFree1Ad var_98
  loc_A1D7C7: ExitProcCbHresult
End Sub

Public Property Get CodiEnreBole() 'A1D8C0
  'Data Table: 4F2254
  loc_A1D888: ZeroRetValVar
  loc_A1D88A: FLdRfVar var_AC
  loc_A1D88D: LitVarStr var_A8, "CodiEnreBole"
  loc_A1D892: PopAdLdVar
  loc_A1D893: FLdRfVar var_98
  loc_A1D896: FLdPr Me
  loc_A1D899: MemLdPr RsFrm
  loc_A1D89C:  = Me.Fields
  loc_A1D8A1: FLdPr var_98
  loc_A1D8A4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1D8A9: FLdZeroAd var_AC
  loc_A1D8AC: CVarAd
  loc_A1D8B0: FStVar CodiEnreBole
  loc_A1D8B4: FFree1Ad var_98
  loc_A1D8B7: ExitProcCbHresult
End Sub

Public Property Get CodiEnrePago() 'A1DDE8
  'Data Table: 4F2254
  loc_A1DDB0: ZeroRetValVar
  loc_A1DDB2: FLdRfVar var_AC
  loc_A1DDB5: LitVarStr var_A8, "CodiEnrePago"
  loc_A1DDBA: PopAdLdVar
  loc_A1DDBB: FLdRfVar var_98
  loc_A1DDBE: FLdPr Me
  loc_A1DDC1: MemLdPr RsFrm
  loc_A1DDC4:  = Me.Fields
  loc_A1DDC9: FLdPr var_98
  loc_A1DDCC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DDD1: FLdZeroAd var_AC
  loc_A1DDD4: CVarAd
  loc_A1DDD8: FStVar CodiEnrePago
  loc_A1DDDC: FFree1Ad var_98
  loc_A1DDDF: ExitProcCbHresult
End Sub

Public Property Get DetaEnreBole() 'A1DE60
  'Data Table: 4F2254
  loc_A1DE28: ZeroRetValVar
  loc_A1DE2A: FLdRfVar var_AC
  loc_A1DE2D: LitVarStr var_A8, "DetaEnreBole"
  loc_A1DE32: PopAdLdVar
  loc_A1DE33: FLdRfVar var_98
  loc_A1DE36: FLdPr Me
  loc_A1DE39: MemLdPr RsFrm
  loc_A1DE3C:  = Me.Fields
  loc_A1DE41: FLdPr var_98
  loc_A1DE44: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DE49: FLdZeroAd var_AC
  loc_A1DE4C: CVarAd
  loc_A1DE50: FStVar DetaEnreBole
  loc_A1DE54: FFree1Ad var_98
  loc_A1DE57: ExitProcCbHresult
End Sub

Public Property Get DetaEnrePago() 'A1DED8
  'Data Table: 4F2254
  loc_A1DEA0: ZeroRetValVar
  loc_A1DEA2: FLdRfVar var_AC
  loc_A1DEA5: LitVarStr var_A8, "DetaEnrePago"
  loc_A1DEAA: PopAdLdVar
  loc_A1DEAB: FLdRfVar var_98
  loc_A1DEAE: FLdPr Me
  loc_A1DEB1: MemLdPr RsFrm
  loc_A1DEB4:  = Me.Fields
  loc_A1DEB9: FLdPr var_98
  loc_A1DEBC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DEC1: FLdZeroAd var_AC
  loc_A1DEC4: CVarAd
  loc_A1DEC8: FStVar DetaEnrePago
  loc_A1DECC: FFree1Ad var_98
  loc_A1DECF: ExitProcCbHresult
End Sub

Public Property Get Vinculo() 'A1DFC8
  'Data Table: 4F2254
  loc_A1DF90: ZeroRetValVar
  loc_A1DF92: FLdRfVar var_AC
  loc_A1DF95: LitVarStr var_A8, "Vinculo"
  loc_A1DF9A: PopAdLdVar
  loc_A1DF9B: FLdRfVar var_98
  loc_A1DF9E: FLdPr Me
  loc_A1DFA1: MemLdPr RsFrm
  loc_A1DFA4:  = Me.Fields
  loc_A1DFA9: FLdPr var_98
  loc_A1DFAC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DFB1: FLdZeroAd var_AC
  loc_A1DFB4: CVarAd
  loc_A1DFB8: FStVar Vinculo
  loc_A1DFBC: FFree1Ad var_98
  loc_A1DFBF: ExitProcCbHresult
End Sub

Public Property Get OrdeLice() 'A1E130
  'Data Table: 4F2254
  loc_A1E0F8: ZeroRetValVar
  loc_A1E0FA: FLdRfVar var_AC
  loc_A1E0FD: LitVarStr var_A8, "OrdeLice"
  loc_A1E102: PopAdLdVar
  loc_A1E103: FLdRfVar var_98
  loc_A1E106: FLdPr Me
  loc_A1E109: MemLdPr RsFrm
  loc_A1E10C:  = Me.Fields
  loc_A1E111: FLdPr var_98
  loc_A1E114: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E119: FLdZeroAd var_AC
  loc_A1E11C: CVarAd
  loc_A1E120: FStVar OrdeLice
  loc_A1E124: FFree1Ad var_98
  loc_A1E127: ExitProcCbHresult
End Sub

Public Property Get DeudLice() 'A1E220
  'Data Table: 4F2254
  loc_A1E1E8: ZeroRetValVar
  loc_A1E1EA: FLdRfVar var_AC
  loc_A1E1ED: LitVarStr var_A8, "DeudLice"
  loc_A1E1F2: PopAdLdVar
  loc_A1E1F3: FLdRfVar var_98
  loc_A1E1F6: FLdPr Me
  loc_A1E1F9: MemLdPr RsFrm
  loc_A1E1FC:  = Me.Fields
  loc_A1E201: FLdPr var_98
  loc_A1E204: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E209: FLdZeroAd var_AC
  loc_A1E20C: CVarAd
  loc_A1E210: FStVar DeudLice
  loc_A1E214: FFree1Ad var_98
  loc_A1E217: ExitProcCbHresult
End Sub

Public Property Get EmitTifa() 'A1E298
  'Data Table: 4F2254
  loc_A1E260: ZeroRetValVar
  loc_A1E262: FLdRfVar var_AC
  loc_A1E265: LitVarStr var_A8, "EmitTifa"
  loc_A1E26A: PopAdLdVar
  loc_A1E26B: FLdRfVar var_98
  loc_A1E26E: FLdPr Me
  loc_A1E271: MemLdPr RsFrm
  loc_A1E274:  = Me.Fields
  loc_A1E279: FLdPr var_98
  loc_A1E27C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E281: FLdZeroAd var_AC
  loc_A1E284: CVarAd
  loc_A1E288: FStVar EmitTifa
  loc_A1E28C: FFree1Ad var_98
  loc_A1E28F: ExitProcCbHresult
End Sub

Public Property Get PadrInmu() 'A1E568
  'Data Table: 4F2254
  loc_A1E530: ZeroRetValVar
  loc_A1E532: FLdRfVar var_AC
  loc_A1E535: LitVarStr var_A8, "PadrInmu"
  loc_A1E53A: PopAdLdVar
  loc_A1E53B: FLdRfVar var_98
  loc_A1E53E: FLdPr Me
  loc_A1E541: MemLdPr RsFrm
  loc_A1E544:  = Me.Fields
  loc_A1E549: FLdPr var_98
  loc_A1E54C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E551: FLdZeroAd var_AC
  loc_A1E554: CVarAd
  loc_A1E558: FStVar PadrInmu
  loc_A1E55C: FFree1Ad var_98
  loc_A1E55F: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A1E5E0
  'Data Table: 4F2254
  loc_A1E5A8: ZeroRetValVar
  loc_A1E5AA: FLdRfVar var_AC
  loc_A1E5AD: LitVarStr var_A8, "BimeLiqu"
  loc_A1E5B2: PopAdLdVar
  loc_A1E5B3: FLdRfVar var_98
  loc_A1E5B6: FLdPr Me
  loc_A1E5B9: MemLdPr RsFrm
  loc_A1E5BC:  = Me.Fields
  loc_A1E5C1: FLdPr var_98
  loc_A1E5C4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E5C9: FLdZeroAd var_AC
  loc_A1E5CC: CVarAd
  loc_A1E5D0: FStVar BimeLiqu
  loc_A1E5D4: FFree1Ad var_98
  loc_A1E5D7: ExitProcCbHresult
End Sub

Public Property Get BimeCtct() 'A1E658
  'Data Table: 4F2254
  loc_A1E620: ZeroRetValVar
  loc_A1E622: FLdRfVar var_AC
  loc_A1E625: LitVarStr var_A8, "BimeCtct"
  loc_A1E62A: PopAdLdVar
  loc_A1E62B: FLdRfVar var_98
  loc_A1E62E: FLdPr Me
  loc_A1E631: MemLdPr RsFrm
  loc_A1E634:  = Me.Fields
  loc_A1E639: FLdPr var_98
  loc_A1E63C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E641: FLdZeroAd var_AC
  loc_A1E644: CVarAd
  loc_A1E648: FStVar BimeCtct
  loc_A1E64C: FFree1Ad var_98
  loc_A1E64F: ExitProcCbHresult
End Sub

Public Property Get DetaPersUsua() 'A1E928
  'Data Table: 4F2254
  loc_A1E8F0: ZeroRetValVar
  loc_A1E8F2: FLdRfVar var_AC
  loc_A1E8F5: LitVarStr var_A8, "DetaPersUsua"
  loc_A1E8FA: PopAdLdVar
  loc_A1E8FB: FLdRfVar var_98
  loc_A1E8FE: FLdPr Me
  loc_A1E901: MemLdPr RsFrm
  loc_A1E904:  = Me.Fields
  loc_A1E909: FLdPr var_98
  loc_A1E90C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E911: FLdZeroAd var_AC
  loc_A1E914: CVarAd
  loc_A1E918: FStVar DetaPersUsua
  loc_A1E91C: FFree1Ad var_98
  loc_A1E91F: ExitProcCbHresult
  loc_A1E925: ImpAdStCy MemVar_A4CA58
End Sub

Public Property Get DetaPersPago() 'A1E9A0
  'Data Table: 4F2254
  loc_A1E968: ZeroRetValVar
  loc_A1E96A: FLdRfVar var_AC
  loc_A1E96D: LitVarStr var_A8, "DetaPersPago"
  loc_A1E972: PopAdLdVar
  loc_A1E973: FLdRfVar var_98
  loc_A1E976: FLdPr Me
  loc_A1E979: MemLdPr RsFrm
  loc_A1E97C:  = Me.Fields
  loc_A1E981: FLdPr var_98
  loc_A1E984: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E989: FLdZeroAd var_AC
  loc_A1E98C: CVarAd
  loc_A1E990: FStVar DetaPersPago
  loc_A1E994: FFree1Ad var_98
  loc_A1E997: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A1ECE8
  'Data Table: 4F2254
  loc_A1ECB0: ZeroRetValVar
  loc_A1ECB2: FLdRfVar var_AC
  loc_A1ECB5: LitVarStr var_A8, "CodiLoca"
  loc_A1ECBA: PopAdLdVar
  loc_A1ECBB: FLdRfVar var_98
  loc_A1ECBE: FLdPr Me
  loc_A1ECC1: MemLdPr RsFrm
  loc_A1ECC4:  = Me.Fields
  loc_A1ECC9: FLdPr var_98
  loc_A1ECCC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1ECD1: FLdZeroAd var_AC
  loc_A1ECD4: CVarAd
  loc_A1ECD8: FStVar CodiLoca
  loc_A1ECDC: FFree1Ad var_98
  loc_A1ECDF: ExitProcCbHresult
End Sub

Public Property Get NudoPers() 'A1ED60
  'Data Table: 4F2254
  loc_A1ED28: ZeroRetValVar
  loc_A1ED2A: FLdRfVar var_AC
  loc_A1ED2D: LitVarStr var_A8, "NudoPers"
  loc_A1ED32: PopAdLdVar
  loc_A1ED33: FLdRfVar var_98
  loc_A1ED36: FLdPr Me
  loc_A1ED39: MemLdPr RsFrm
  loc_A1ED3C:  = Me.Fields
  loc_A1ED41: FLdPr var_98
  loc_A1ED44: from_stack_2 = Me.Item(from_stack_1)
  loc_A1ED49: FLdZeroAd var_AC
  loc_A1ED4C: CVarAd
  loc_A1ED50: FStVar NudoPers
  loc_A1ED54: FFree1Ad var_98
  loc_A1ED57: ExitProcCbHresult
  loc_A1ED5D: Error
End Sub

Public Property Get CodiTifa() 'A26BA4
  'Data Table: 4F2254
  loc_A26B60: FLdRfVar var_B0
  loc_A26B63: FLdRfVar var_A0
  loc_A26B66: LitVarStr var_9C, "CodiTifa"
  loc_A26B6B: PopAdLdVar
  loc_A26B6C: FLdRfVar var_8C
  loc_A26B6F: FLdPr Me
  loc_A26B72: MemLdPr RsFrm
  loc_A26B75:  = Me.Fields
  loc_A26B7A: FLdPr var_8C
  loc_A26B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A26B82: FLdPr var_A0
  loc_A26B85:  = Me.Value
  loc_A26B8A: FLdRfVar var_B0
  loc_A26B8D: CI2Var
  loc_A26B8E: FStI2 var_86
  loc_A26B91: FFreeAd var_8C = ""
  loc_A26B98: FFree1Var var_B0 = ""
  loc_A26B9B: ExitProcCbHresult
End Sub

Public Property Get FealLita() 'A1EE50
  'Data Table: 4F2254
  loc_A1EE18: ZeroRetValVar
  loc_A1EE1A: FLdRfVar var_AC
  loc_A1EE1D: LitVarStr var_A8, "FealLita"
  loc_A1EE22: PopAdLdVar
  loc_A1EE23: FLdRfVar var_98
  loc_A1EE26: FLdPr Me
  loc_A1EE29: MemLdPr RsFrm
  loc_A1EE2C:  = Me.Fields
  loc_A1EE31: FLdPr var_98
  loc_A1EE34: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EE39: FLdZeroAd var_AC
  loc_A1EE3C: CVarAd
  loc_A1EE40: FStVar FealLita
  loc_A1EE44: FFree1Ad var_98
  loc_A1EE47: ExitProcCbHresult
End Sub

Public Property Get FealLico() 'A1EEC8
  'Data Table: 4F2254
  loc_A1EE90: ZeroRetValVar
  loc_A1EE92: FLdRfVar var_AC
  loc_A1EE95: LitVarStr var_A8, "FealLico"
  loc_A1EE9A: PopAdLdVar
  loc_A1EE9B: FLdRfVar var_98
  loc_A1EE9E: FLdPr Me
  loc_A1EEA1: MemLdPr RsFrm
  loc_A1EEA4:  = Me.Fields
  loc_A1EEA9: FLdPr var_98
  loc_A1EEAC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1EEB1: FLdZeroAd var_AC
  loc_A1EEB4: CVarAd
  loc_A1EEB8: FStVar FealLico
  loc_A1EEBC: FFree1Ad var_98
  loc_A1EEBF: ExitProcCbHresult
End Sub

Public Property Get NumeBoleStr() 'A39988
  'Data Table: 4F2254
  loc_A39944: ZeroRetVal
  loc_A39946: FLdRfVar var_B0
  loc_A39949: FLdRfVar var_A0
  loc_A3994C: LitVarStr var_9C, "NumeBoleStr"
  loc_A39951: PopAdLdVar
  loc_A39952: FLdRfVar var_8C
  loc_A39955: FLdPr Me
  loc_A39958: MemLdPr RsFrm
  loc_A3995B:  = Me.Fields
  loc_A39960: FLdPr var_8C
  loc_A39963: from_stack_2 = Me.Item(from_stack_1)
  loc_A39968: FLdPr var_A0
  loc_A3996B:  = Me.Value
  loc_A39970: FLdRfVar var_B0
  loc_A39973: CStrVarTmp
  loc_A39974: FStStr var_88
  loc_A39977: FFreeAd var_8C = ""
  loc_A3997E: FFree1Var var_B0 = ""
  loc_A39981: ExitProcCbHresult
End Sub

Public Property Get CacuFapa() 'A28624
  'Data Table: 4F2254
  loc_A285E0: FLdRfVar var_B0
  loc_A285E3: FLdRfVar var_A0
  loc_A285E6: LitVarStr var_9C, "CacuFapa"
  loc_A285EB: PopAdLdVar
  loc_A285EC: FLdRfVar var_8C
  loc_A285EF: FLdPr Me
  loc_A285F2: MemLdPr RsFrm
  loc_A285F5:  = Me.Fields
  loc_A285FA: FLdPr var_8C
  loc_A285FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28602: FLdPr var_A0
  loc_A28605:  = Me.Value
  loc_A2860A: FLdRfVar var_B0
  loc_A2860D: CI2Var
  loc_A2860E: FStI2 var_86
  loc_A28611: FFreeAd var_8C = ""
  loc_A28618: FFree1Var var_B0 = ""
  loc_A2861B: ExitProcCbHresult
End Sub

Public Property Get CodiBarr() 'A1F0A8
  'Data Table: 4F2254
  loc_A1F070: ZeroRetValVar
  loc_A1F072: FLdRfVar var_AC
  loc_A1F075: LitVarStr var_A8, "CodiBarr"
  loc_A1F07A: PopAdLdVar
  loc_A1F07B: FLdRfVar var_98
  loc_A1F07E: FLdPr Me
  loc_A1F081: MemLdPr RsFrm
  loc_A1F084:  = Me.Fields
  loc_A1F089: FLdPr var_98
  loc_A1F08C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F091: FLdZeroAd var_AC
  loc_A1F094: CVarAd
  loc_A1F098: FStVar CodiBarr
  loc_A1F09C: FFree1Ad var_98
  loc_A1F09F: ExitProcCbHresult
End Sub

Public Property Get DetaBarr() 'A1F198
  'Data Table: 4F2254
  loc_A1F160: ZeroRetValVar
  loc_A1F162: FLdRfVar var_AC
  loc_A1F165: LitVarStr var_A8, "DetaBarr"
  loc_A1F16A: PopAdLdVar
  loc_A1F16B: FLdRfVar var_98
  loc_A1F16E: FLdPr Me
  loc_A1F171: MemLdPr RsFrm
  loc_A1F174:  = Me.Fields
  loc_A1F179: FLdPr var_98
  loc_A1F17C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F181: FLdZeroAd var_AC
  loc_A1F184: CVarAd
  loc_A1F188: FStVar DetaBarr
  loc_A1F18C: FFree1Ad var_98
  loc_A1F18F: ExitProcCbHresult
End Sub

Public Property Get DetaLoca() 'A1F210
  'Data Table: 4F2254
  loc_A1F1D8: ZeroRetValVar
  loc_A1F1DA: FLdRfVar var_AC
  loc_A1F1DD: LitVarStr var_A8, "DetaLoca"
  loc_A1F1E2: PopAdLdVar
  loc_A1F1E3: FLdRfVar var_98
  loc_A1F1E6: FLdPr Me
  loc_A1F1E9: MemLdPr RsFrm
  loc_A1F1EC:  = Me.Fields
  loc_A1F1F1: FLdPr var_98
  loc_A1F1F4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F1F9: FLdZeroAd var_AC
  loc_A1F1FC: CVarAd
  loc_A1F200: FStVar DetaLoca
  loc_A1F204: FFree1Ad var_98
  loc_A1F207: ExitProcCbHresult
End Sub

Public Property Get MansBole() 'A1F288
  'Data Table: 4F2254
  loc_A1F250: ZeroRetValVar
  loc_A1F252: FLdRfVar var_AC
  loc_A1F255: LitVarStr var_A8, "MansBole"
  loc_A1F25A: PopAdLdVar
  loc_A1F25B: FLdRfVar var_98
  loc_A1F25E: FLdPr Me
  loc_A1F261: MemLdPr RsFrm
  loc_A1F264:  = Me.Fields
  loc_A1F269: FLdPr var_98
  loc_A1F26C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F271: FLdZeroAd var_AC
  loc_A1F274: CVarAd
  loc_A1F278: FStVar MansBole
  loc_A1F27C: FFree1Ad var_98
  loc_A1F27F: ExitProcCbHresult
End Sub

Public Property Get CasaBole() 'A1F468
  'Data Table: 4F2254
  loc_A1F430: ZeroRetValVar
  loc_A1F432: FLdRfVar var_AC
  loc_A1F435: LitVarStr var_A8, "CasaBole"
  loc_A1F43A: PopAdLdVar
  loc_A1F43B: FLdRfVar var_98
  loc_A1F43E: FLdPr Me
  loc_A1F441: MemLdPr RsFrm
  loc_A1F444:  = Me.Fields
  loc_A1F449: FLdPr var_98
  loc_A1F44C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F451: FLdZeroAd var_AC
  loc_A1F454: CVarAd
  loc_A1F458: FStVar CasaBole
  loc_A1F45C: FFree1Ad var_98
  loc_A1F45F: ExitProcCbHresult
End Sub

Public Property Get CoadBoap() 'A1F558
  'Data Table: 4F2254
  loc_A1F520: ZeroRetValVar
  loc_A1F522: FLdRfVar var_AC
  loc_A1F525: LitVarStr var_A8, "CoadBoap"
  loc_A1F52A: PopAdLdVar
  loc_A1F52B: FLdRfVar var_98
  loc_A1F52E: FLdPr Me
  loc_A1F531: MemLdPr RsFrm
  loc_A1F534:  = Me.Fields
  loc_A1F539: FLdPr var_98
  loc_A1F53C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F541: FLdZeroAd var_AC
  loc_A1F544: CVarAd
  loc_A1F548: FStVar CoadBoap
  loc_A1F54C: FFree1Ad var_98
  loc_A1F54F: ExitProcCbHresult
End Sub

Public Property Get ApleBoap() 'A1F5D0
  'Data Table: 4F2254
  loc_A1F598: ZeroRetValVar
  loc_A1F59A: FLdRfVar var_AC
  loc_A1F59D: LitVarStr var_A8, "ApleBoap"
  loc_A1F5A2: PopAdLdVar
  loc_A1F5A3: FLdRfVar var_98
  loc_A1F5A6: FLdPr Me
  loc_A1F5A9: MemLdPr RsFrm
  loc_A1F5AC:  = Me.Fields
  loc_A1F5B1: FLdPr var_98
  loc_A1F5B4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F5B9: FLdZeroAd var_AC
  loc_A1F5BC: CVarAd
  loc_A1F5C0: FStVar ApleBoap
  loc_A1F5C4: FFree1Ad var_98
  loc_A1F5C7: ExitProcCbHresult
End Sub

Public Property Get DefiBoap() 'A1F6C0
  'Data Table: 4F2254
  loc_A1F688: ZeroRetValVar
  loc_A1F68A: FLdRfVar var_AC
  loc_A1F68D: LitVarStr var_A8, "DefiBoap"
  loc_A1F692: PopAdLdVar
  loc_A1F693: FLdRfVar var_98
  loc_A1F696: FLdPr Me
  loc_A1F699: MemLdPr RsFrm
  loc_A1F69C:  = Me.Fields
  loc_A1F6A1: FLdPr var_98
  loc_A1F6A4: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F6A9: FLdZeroAd var_AC
  loc_A1F6AC: CVarAd
  loc_A1F6B0: FStVar DefiBoap
  loc_A1F6B4: FFree1Ad var_98
  loc_A1F6B7: ExitProcCbHresult
End Sub

Public Property Get ReseBoap() 'A1F738
  'Data Table: 4F2254
  loc_A1F700: ZeroRetValVar
  loc_A1F702: FLdRfVar var_AC
  loc_A1F705: LitVarStr var_A8, "ReseBoap"
  loc_A1F70A: PopAdLdVar
  loc_A1F70B: FLdRfVar var_98
  loc_A1F70E: FLdPr Me
  loc_A1F711: MemLdPr RsFrm
  loc_A1F714:  = Me.Fields
  loc_A1F719: FLdPr var_98
  loc_A1F71C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1F721: FLdZeroAd var_AC
  loc_A1F724: CVarAd
  loc_A1F728: FStVar ReseBoap
  loc_A1F72C: FFree1Ad var_98
  loc_A1F72F: ExitProcCbHresult
End Sub

Public Property Get HoreBoap() 'A1FAF8
  'Data Table: 4F2254
  loc_A1FAC0: ZeroRetValVar
  loc_A1FAC2: FLdRfVar var_AC
  loc_A1FAC5: LitVarStr var_A8, "HoreBoap"
  loc_A1FACA: PopAdLdVar
  loc_A1FACB: FLdRfVar var_98
  loc_A1FACE: FLdPr Me
  loc_A1FAD1: MemLdPr RsFrm
  loc_A1FAD4:  = Me.Fields
  loc_A1FAD9: FLdPr var_98
  loc_A1FADC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FAE1: FLdZeroAd var_AC
  loc_A1FAE4: CVarAd
  loc_A1FAE8: FStVar HoreBoap
  loc_A1FAEC: FFree1Ad var_98
  loc_A1FAEF: ExitProcCbHresult
End Sub

Public Property Get HoofBoap() 'A1FB70
  'Data Table: 4F2254
  loc_A1FB38: ZeroRetValVar
  loc_A1FB3A: FLdRfVar var_AC
  loc_A1FB3D: LitVarStr var_A8, "HoofBoap"
  loc_A1FB42: PopAdLdVar
  loc_A1FB43: FLdRfVar var_98
  loc_A1FB46: FLdPr Me
  loc_A1FB49: MemLdPr RsFrm
  loc_A1FB4C:  = Me.Fields
  loc_A1FB51: FLdPr var_98
  loc_A1FB54: from_stack_2 = Me.Item(from_stack_1)
  loc_A1FB59: FLdZeroAd var_AC
  loc_A1FB5C: CVarAd
  loc_A1FB60: FStVar HoofBoap
  loc_A1FB64: FFree1Ad var_98
  loc_A1FB67: ExitProcCbHresult
End Sub

Public Property Get MoreBoap() 'A20C50
  'Data Table: 4F2254
  loc_A20C18: ZeroRetValVar
  loc_A20C1A: FLdRfVar var_AC
  loc_A20C1D: LitVarStr var_A8, "MoreBoap"
  loc_A20C22: PopAdLdVar
  loc_A20C23: FLdRfVar var_98
  loc_A20C26: FLdPr Me
  loc_A20C29: MemLdPr RsFrm
  loc_A20C2C:  = Me.Fields
  loc_A20C31: FLdPr var_98
  loc_A20C34: from_stack_2 = Me.Item(from_stack_1)
  loc_A20C39: FLdZeroAd var_AC
  loc_A20C3C: CVarAd
  loc_A20C40: FStVar MoreBoap
  loc_A20C44: FFree1Ad var_98
  loc_A20C47: ExitProcCbHresult
End Sub

Public Property Get MoofBoap() 'A20368
  'Data Table: 4F2254
  loc_A20330: ZeroRetValVar
  loc_A20332: FLdRfVar var_AC
  loc_A20335: LitVarStr var_A8, "MoofBoap"
  loc_A2033A: PopAdLdVar
  loc_A2033B: FLdRfVar var_98
  loc_A2033E: FLdPr Me
  loc_A20341: MemLdPr RsFrm
  loc_A20344:  = Me.Fields
  loc_A20349: FLdPr var_98
  loc_A2034C: from_stack_2 = Me.Item(from_stack_1)
  loc_A20351: FLdZeroAd var_AC
  loc_A20354: CVarAd
  loc_A20358: FStVar MoofBoap
  loc_A2035C: FFree1Ad var_98
  loc_A2035F: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriBole, NumeBole) 'A674C8
  'Data Table: 4F2254
  loc_A6746C: ZeroRetVal
  loc_A6746E: LitStr "SELECT PeriBole FROM boleto WHERE PeriBole = "
  loc_A67471: FLdI2 PeriBole
  loc_A67474: CStrUI1
  loc_A67476: FStStrNoPop var_8C
  loc_A67479: ConcatStr
  loc_A6747A: FStStrNoPop var_90
  loc_A6747D: LitStr " AND NumeBole = "
  loc_A67480: ConcatStr
  loc_A67481: FStStrNoPop ValidaClave
  loc_A67484: ILdRf NumeBole
  loc_A67487: CStrI4
  loc_A67489: FStStrNoPop var_98
  loc_A6748C: ConcatStr
  loc_A6748D: FStStrNoPop var_9C
  loc_A67490: Call EjecutarRsCls(from_stack_1v)
  loc_A67495: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A674A2: FLdRfVar var_A0
  loc_A674A5: FLdPr Me
  loc_A674A8: MemLdPr global_60
  loc_A674AB:  = Me.RecordCount
  loc_A674B0: ILdRf var_A0
  loc_A674B3: LitI4 0
  loc_A674B8: GtI4
  loc_A674B9: BranchF loc_A674C2
  loc_A674BC: LitStr "El boleto ya existe. Verifique el boleto..."
  loc_A674BF: FStStrCopy var_88
  loc_A674C2: ExitProcCbHresult
End Function

Public Sub ModificaEstadoBoleto(iPeriBole, lNumeBole, sEstado, FeanBole) 'AEE69C
  'Data Table: 4F2254
  loc_AEE534: ILdRf sEstado
  loc_AEE537: FStStrCopy var_88
  loc_AEE53A: ILdRf FeanBole
  loc_AEE53D: FStStrCopy var_8C
  loc_AEE540: LitStr "START TRANSACTION; UPDATE boleto SET EstaBole = '"
  loc_AEE543: ILdRf var_88
  loc_AEE546: ConcatStr
  loc_AEE547: FStStrNoPop var_94
  loc_AEE54A: LitStr "', FeanBole = "
  loc_AEE54D: ConcatStr
  loc_AEE54E: FStStrNoPop var_C8
  loc_AEE551: LitI4 1
  loc_AEE556: LitI4 1
  loc_AEE55B: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_AEE560: FStVarCopyObj var_C4
  loc_AEE563: FLdRfVar var_C4
  loc_AEE566: FLdRfVar var_8C
  loc_AEE569: CVarRef
  loc_AEE56E: ImpAdCallI2 Format$(, )
  loc_AEE573: FStStrNoPop var_CC
  loc_AEE576: ConcatStr
  loc_AEE577: FStStrNoPop var_D0
  loc_AEE57A: LitStr ", AnulUsua = '"
  loc_AEE57D: ConcatStr
  loc_AEE57E: FStStrNoPop var_D4
  loc_AEE581: ImpAdLdI4 MemVar_D9302C
  loc_AEE584: ConcatStr
  loc_AEE585: FStStrNoPop var_D8
  loc_AEE588: LitStr "' WHERE PeriBole = "
  loc_AEE58B: ConcatStr
  loc_AEE58C: FStStrNoPop var_DC
  loc_AEE58F: FLdI2 iPeriBole
  loc_AEE592: CStrUI1
  loc_AEE594: FStStrNoPop var_E0
  loc_AEE597: ConcatStr
  loc_AEE598: FStStrNoPop var_E4
  loc_AEE59B: LitStr " AND NumeBole = "
  loc_AEE59E: ConcatStr
  loc_AEE59F: FStStrNoPop var_E8
  loc_AEE5A2: ILdRf lNumeBole
  loc_AEE5A5: CStrI4
  loc_AEE5A7: FStStrNoPop var_EC
  loc_AEE5AA: ConcatStr
  loc_AEE5AB: FStStrNoPop var_F0
  loc_AEE5AE: LitStr ";"
  loc_AEE5B1: ConcatStr
  loc_AEE5B2: FStStr var_90
  loc_AEE5B5: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_AEE5D0: FFree1Var var_C4 = ""
  loc_AEE5D3: ILdRf var_90
  loc_AEE5D6: LitStr " UPDATE pagoanti SET EstaPaan = '"
  loc_AEE5D9: ConcatStr
  loc_AEE5DA: FStStrNoPop var_94
  loc_AEE5DD: ILdRf var_88
  loc_AEE5E0: ConcatStr
  loc_AEE5E1: FStStrNoPop var_C8
  loc_AEE5E4: LitStr "' WHERE PeriBole = "
  loc_AEE5E7: ConcatStr
  loc_AEE5E8: FStStrNoPop var_CC
  loc_AEE5EB: FLdI2 iPeriBole
  loc_AEE5EE: CStrUI1
  loc_AEE5F0: FStStrNoPop var_D0
  loc_AEE5F3: ConcatStr
  loc_AEE5F4: FStStrNoPop var_D4
  loc_AEE5F7: LitStr " AND NumeBole = "
  loc_AEE5FA: ConcatStr
  loc_AEE5FB: FStStrNoPop var_D8
  loc_AEE5FE: ILdRf lNumeBole
  loc_AEE601: CStrI4
  loc_AEE603: FStStrNoPop var_DC
  loc_AEE606: ConcatStr
  loc_AEE607: FStStrNoPop var_E0
  loc_AEE60A: LitStr ";"
  loc_AEE60D: ConcatStr
  loc_AEE60E: FStStr var_90
  loc_AEE611: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AEE624: ILdRf var_90
  loc_AEE627: LitStr " UPDATE boleapre SET EstaBoap = '"
  loc_AEE62A: ConcatStr
  loc_AEE62B: FStStrNoPop var_94
  loc_AEE62E: ILdRf var_88
  loc_AEE631: ConcatStr
  loc_AEE632: FStStrNoPop var_C8
  loc_AEE635: LitStr "', FeacBoap = Null WHERE PeriBole = "
  loc_AEE638: ConcatStr
  loc_AEE639: FStStrNoPop var_CC
  loc_AEE63C: FLdI2 iPeriBole
  loc_AEE63F: CStrUI1
  loc_AEE641: FStStrNoPop var_D0
  loc_AEE644: ConcatStr
  loc_AEE645: FStStrNoPop var_D4
  loc_AEE648: LitStr " AND NumeBole = "
  loc_AEE64B: ConcatStr
  loc_AEE64C: FStStrNoPop var_D8
  loc_AEE64F: ILdRf lNumeBole
  loc_AEE652: CStrI4
  loc_AEE654: FStStrNoPop var_DC
  loc_AEE657: ConcatStr
  loc_AEE658: FStStrNoPop var_E0
  loc_AEE65B: LitStr ";"
  loc_AEE65E: ConcatStr
  loc_AEE65F: FStStr var_90
  loc_AEE662: FFreeStr var_94 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AEE675: OnErrorGoto loc_AEE689
  loc_AEE678: ILdRf var_90
  loc_AEE67B: Call EjecutarRsCls(from_stack_1v)
  loc_AEE680: LitStr "COMMIT;"
  loc_AEE683: Call EjecutarRsCls(from_stack_1v)
  loc_AEE688: ExitProcHresult
  loc_AEE689: LitStr "ROLLBACK;"
  loc_AEE68C: Call EjecutarRsCls(from_stack_1v)
  loc_AEE691: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AEE694: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEE699: ExitProcHresult
End Sub

Public Sub ModificaObservacioondelBoleto(iPeriBole, lNumeBole, sObseBole) 'A7EC70
  'Data Table: 4F2254
  loc_A7EC08: ILdRf sObseBole
  loc_A7EC0B: FStStrCopy var_88
  loc_A7EC0E: LitStr "UPDATE boleto SET ObseBole = IF(ObseBole = '', '"
  loc_A7EC11: ILdRf var_88
  loc_A7EC14: ConcatStr
  loc_A7EC15: FStStrNoPop var_8C
  loc_A7EC18: LitStr "', CONCAT(ObseBole, ' - ','"
  loc_A7EC1B: ConcatStr
  loc_A7EC1C: FStStrNoPop var_90
  loc_A7EC1F: ILdRf var_88
  loc_A7EC22: ConcatStr
  loc_A7EC23: FStStrNoPop var_94
  loc_A7EC26: LitStr "')) WHERE PeriBole = "
  loc_A7EC29: ConcatStr
  loc_A7EC2A: FStStrNoPop var_98
  loc_A7EC2D: FLdI2 iPeriBole
  loc_A7EC30: CStrUI1
  loc_A7EC32: FStStrNoPop var_9C
  loc_A7EC35: ConcatStr
  loc_A7EC36: FStStrNoPop var_A0
  loc_A7EC39: LitStr " AND NumeBole = "
  loc_A7EC3C: ConcatStr
  loc_A7EC3D: FStStrNoPop var_A4
  loc_A7EC40: ILdRf lNumeBole
  loc_A7EC43: CStrI4
  loc_A7EC45: FStStrNoPop var_A8
  loc_A7EC48: ConcatStr
  loc_A7EC49: FStStrNoPop var_AC
  loc_A7EC4C: LitStr ";"
  loc_A7EC4F: ConcatStr
  loc_A7EC50: FStStrNoPop var_B0
  loc_A7EC53: Call EjecutarRsCls(from_stack_1v)
  loc_A7EC58: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A7EC6F: ExitProcHresult
End Sub

Public Sub FacilidaddePagoConNovacion(doDecaTifa, sExpeBole, sRespFapa, boEmiteBoleto, sCodiConc, lNumeOrde, sTelePers) 'D025B4
  'Data Table: 4F2254
  loc_CFF3E0: ILdRf sRespFapa
  loc_CFF3E3: FStStrCopy var_88
  loc_CFF3E6: ILdRf boEmiteBoleto
  loc_CFF3E9: FStStrCopy var_8C
  loc_CFF3EC: ILdRf lNumeOrde
  loc_CFF3EF: FStStrCopy var_90
  loc_CFF3F2: ILdRf arg_28
  loc_CFF3F5: FStStrCopy var_94
  loc_CFF3F8: LitI2_Byte 0
  loc_CFF3FA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CFF3FF: FStFPR8 var_A8
  loc_CFF402: LitI2_Byte 0
  loc_CFF404: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CFF409: CVarDate var_1D4
  loc_CFF40D: FLdRfVar var_1E4
  loc_CFF410: ImpAdCallFPR4  = Year()
  loc_CFF415: FLdRfVar var_1E4
  loc_CFF418: CI2Var
  loc_CFF419: FStI2 var_AA
  loc_CFF41C: FFreeVar var_1D4 = ""
  loc_CFF423: LitI2_Byte 0
  loc_CFF425: CR8I2
  loc_CFF426: ImpAdStFPR8 MemVar_D93040
  loc_CFF429: LitI2_Byte 0
  loc_CFF42B: CR8I2
  loc_CFF42C: ImpAdStFPR8 MemVar_D93048
  loc_CFF42F: LitI2_Byte 0
  loc_CFF431: CR8I2
  loc_CFF432: ImpAdStFPR8 MemVar_D93058
  loc_CFF435: LitI2_Byte 0
  loc_CFF437: CR8I2
  loc_CFF438: ImpAdStFPR8 MemVar_D93060
  loc_CFF43B: LitI2_Byte 0
  loc_CFF43D: CR8I2
  loc_CFF43E: ImpAdStFPR8 MemVar_D93070
  loc_CFF441: FLdRfVar var_1D4
  loc_CFF444: ImpAdCallFPR4  = Proc_270_142_A4F9EC()
  loc_CFF449: FLdRfVar var_1D4
  loc_CFF44C: CI4Var
  loc_CFF44E: FStR4 var_B4
  loc_CFF451: FFree1Var var_1D4 = ""
  loc_CFF454: LitStr "SELECT *  FROM concplan WHERE PeriInfo = "
  loc_CFF457: ImpAdLdI2 MemVar_D93034
  loc_CFF45A: CStrUI1
  loc_CFF45C: FStStrNoPop var_1E8
  loc_CFF45F: ConcatStr
  loc_CFF460: FStStrNoPop var_1EC
  loc_CFF463: LitStr " AND CodiConc = '"
  loc_CFF466: ConcatStr
  loc_CFF467: FStStrNoPop var_1F0
  loc_CFF46A: ILdRf var_90
  loc_CFF46D: ConcatStr
  loc_CFF46E: FStStrNoPop var_1F4
  loc_CFF471: LitStr "'"
  loc_CFF474: ConcatStr
  loc_CFF475: FStStrNoPop var_1F8
  loc_CFF478: Call EjecutarRsCls1(from_stack_1v)
  loc_CFF47D: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = ""
  loc_CFF48A: FLdRfVar var_1FC
  loc_CFF48D: FLdPr Me
  loc_CFF490: MemLdPr global_64
  loc_CFF493:  = Me.RecordCount
  loc_CFF498: ILdRf var_1FC
  loc_CFF49B: LitI4 0
  loc_CFF4A0: GtI4
  loc_CFF4A1: BranchF loc_CFF4E2
  loc_CFF4A4: FLdRfVar var_1D4
  loc_CFF4A7: FLdRfVar var_204
  loc_CFF4AA: LitVarStr var_1C4, "SaldConc"
  loc_CFF4AF: PopAdLdVar
  loc_CFF4B0: FLdRfVar var_200
  loc_CFF4B3: FLdPr Me
  loc_CFF4B6: MemLdPr global_64
  loc_CFF4B9:  = Me.Fields
  loc_CFF4BE: FLdPr var_200
  loc_CFF4C1: from_stack_2 = Me.Item(from_stack_1)
  loc_CFF4C6: FLdPr var_204
  loc_CFF4C9:  = Me.Value
  loc_CFF4CE: FLdRfVar var_1D4
  loc_CFF4D1: CStrVarTmp
  loc_CFF4D2: FStStr var_E0
  loc_CFF4D5: FFreeAd var_200 = ""
  loc_CFF4DC: FFree1Var var_1D4 = ""
  loc_CFF4DF: Branch loc_CFF4E8
  loc_CFF4E2: LitStr vbNullString
  loc_CFF4E5: FStStrCopy var_E0
  loc_CFF4E8: LitI2_Byte 1
  loc_CFF4EA: FLdRfVar var_9E
  loc_CFF4ED: ImpAdLdRf MemVar_D93E08
  loc_CFF4F0: NewIfNullPr frmPlanesdePago
  loc_CFF4F3: VCallAd Control_ID_
  loc_CFF4F6: FStAdFunc var_200
  loc_CFF4F9: FLdPr var_200
  loc_CFF4FC: LateIdLdVar var_1D4 DispID_4 0
  loc_CFF503: CI4Var
  loc_CFF505: LitI4 1
  loc_CFF50A: SubI4
  loc_CFF50B: CI2I4
  loc_CFF50C: FFree1Ad var_200
  loc_CFF50F: FFree1Var var_1D4 = ""
  loc_CFF512: ForI2 var_208
  loc_CFF518: OnErrorGoto loc_D025A1
  loc_CFF51B: LitStr "START TRANSACTION; "
  loc_CFF51E: Call EjecutarRsCls(from_stack_1v)
  loc_CFF523: FLdI2 var_9E
  loc_CFF526: LitI2_Byte 1
  loc_CFF528: EqI2
  loc_CFF529: BranchF loc_CFFB32
  loc_CFF52C: LitI2_Byte 0
  loc_CFF52E: FStI2 var_A0
  loc_CFF531: LitStr "Municipalidad de Guaymallén"
  loc_CFF534: LitStr "Municipalidad de Guaymallén"
  loc_CFF537: EqStr
  loc_CFF539: BranchF loc_CFFA69
  loc_CFF53C: FLdRfVar var_1F4
  loc_CFF53F: ImpAdLdRf MemVar_D93E08
  loc_CFF542: NewIfNullPr frmPlanesdePago
  loc_CFF545: VCallAd Control_ID_
  loc_CFF548: FStAdFunc var_200
  loc_CFF54B: FLdPr var_200
  loc_CFF54E:  = frmPlanesdePago.Label.Caption
  loc_CFF553: FLdRfVar var_5C0
  loc_CFF556: ImpAdLdRf MemVar_D93E08
  loc_CFF559: NewIfNullPr frmPlanesdePago
  loc_CFF55C: VCallAd Control_ID_
  loc_CFF55F: FStAdFunc var_5BC
  loc_CFF562: FLdPr var_5BC
  loc_CFF565:  = frmPlanesdePago.Label.Caption
  loc_CFF56A: FLdRfVar var_60C
  loc_CFF56D: ImpAdLdRf MemVar_D93E08
  loc_CFF570: NewIfNullPr frmPlanesdePago
  loc_CFF573: VCallAd Control_ID_
  loc_CFF576: FStAdFunc var_608
  loc_CFF579: FLdPr var_608
  loc_CFF57C:  = frmPlanesdePago.TextBox.Text
  loc_CFF581: FLdRfVar var_658
  loc_CFF584: ImpAdLdRf MemVar_D93E08
  loc_CFF587: NewIfNullPr frmPlanesdePago
  loc_CFF58A: VCallAd Control_ID_
  loc_CFF58D: FStAdFunc var_654
  loc_CFF590: FLdPr var_654
  loc_CFF593:  = frmPlanesdePago.TextBox.Text
  loc_CFF598: FLdRfVar var_6A4
  loc_CFF59B: ImpAdLdRf MemVar_D93E08
  loc_CFF59E: NewIfNullPr frmPlanesdePago
  loc_CFF5A1: VCallAd Control_ID_
  loc_CFF5A4: FStAdFunc var_6A0
  loc_CFF5A7: FLdPr var_6A0
  loc_CFF5AA:  = frmPlanesdePago.TextBox.Text
  loc_CFF5AF: FLdRfVar var_6F0
  loc_CFF5B2: ImpAdLdRf MemVar_D93E08
  loc_CFF5B5: NewIfNullPr frmPlanesdePago
  loc_CFF5B8: VCallAd Control_ID_
  loc_CFF5BB: FStAdFunc var_6EC
  loc_CFF5BE: FLdPr var_6EC
  loc_CFF5C1:  = frmPlanesdePago.TextBox.Text
  loc_CFF5C6: FLdRfVar var_73C
  loc_CFF5C9: ImpAdLdRf MemVar_D93E08
  loc_CFF5CC: NewIfNullPr frmPlanesdePago
  loc_CFF5CF: VCallAd Control_ID_
  loc_CFF5D2: FStAdFunc var_738
  loc_CFF5D5: FLdPr var_738
  loc_CFF5D8:  = frmPlanesdePago.TextBox.Text
  loc_CFF5DD: FLdRfVar var_788
  loc_CFF5E0: ImpAdLdRf MemVar_D93E08
  loc_CFF5E3: NewIfNullPr frmPlanesdePago
  loc_CFF5E6: VCallAd Control_ID_
  loc_CFF5E9: FStAdFunc var_784
  loc_CFF5EC: FLdPr var_784
  loc_CFF5EF:  = frmPlanesdePago.TextBox.Text
  loc_CFF5F4: FLdRfVar var_7D4
  loc_CFF5F7: ImpAdLdRf MemVar_D93E08
  loc_CFF5FA: NewIfNullPr frmPlanesdePago
  loc_CFF5FD: VCallAd Control_ID_
  loc_CFF600: FStAdFunc var_7D0
  loc_CFF603: FLdPr var_7D0
  loc_CFF606:  = frmPlanesdePago.TextBox.Text
  loc_CFF60B: LitStr " INSERT INTO facipago (CodiFapa,CucuPers,CodiTifa,CacuFapa,CaapFapa,FealFapa,FepaFapa,CodiOfic,CuenCtct,PeriInfo,ConcPago,EstaFapa,TainFapa,CapiFapa,DecaFapa,RecaFapa,DereFapa,ApreFapa,InteFapa,TotaFapa,AltaUsua) "
  loc_CFF60E: LitStr " VALUES ("
  loc_CFF611: ConcatStr
  loc_CFF612: FStStrNoPop var_1E8
  loc_CFF615: ILdRf var_B4
  loc_CFF618: CStrI4
  loc_CFF61A: FStStrNoPop var_1EC
  loc_CFF61D: ConcatStr
  loc_CFF61E: FStStrNoPop var_1F0
  loc_CFF621: LitStr ",'"
  loc_CFF624: ConcatStr
  loc_CFF625: CVarStr var_238
  loc_CFF628: FLdRfVar var_1F8
  loc_CFF62B: ImpAdLdRf MemVar_D93E08
  loc_CFF62E: NewIfNullPr frmPlanesdePago
  loc_CFF631: VCallAd Control_ID_
  loc_CFF634: FStAdFunc var_204
  loc_CFF637: FLdPr var_204
  loc_CFF63A:  = frmPlanesdePago.Label.Caption
  loc_CFF63F: FLdZeroAd var_1F8
  loc_CFF642: CVarStr var_1E4
  loc_CFF645: LitVarI2 var_1D4, 0
  loc_CFF64A: ILdRf var_1F4
  loc_CFF64D: LitStr vbNullString
  loc_CFF650: EqStr
  loc_CFF652: CVarBoolI2 var_1C4
  loc_CFF656: FLdRfVar var_228
  loc_CFF659: ImpAdCallFPR4  = IIf(, , )
  loc_CFF65E: FLdRfVar var_228
  loc_CFF661: ConcatVar var_248
  loc_CFF665: LitVarStr var_258, "',"
  loc_CFF66A: ConcatVar var_268
  loc_CFF66E: FLdRfVar var_270
  loc_CFF671: ImpAdLdRf MemVar_D93E08
  loc_CFF674: NewIfNullPr frmPlanesdePago
  loc_CFF677: VCallAd Control_ID_
  loc_CFF67A: FStAdFunc var_26C
  loc_CFF67D: FLdPr var_26C
  loc_CFF680:  = frmPlanesdePago.TextBox.Text
  loc_CFF685: FLdZeroAd var_270
  loc_CFF688: CVarStr var_280
  loc_CFF68B: ConcatVar var_290
  loc_CFF68F: LitVarStr var_2A0, ","
  loc_CFF694: ConcatVar var_2B0
  loc_CFF698: ImpAdLdRf MemVar_D93E08
  loc_CFF69B: NewIfNullPr frmPlanesdePago
  loc_CFF69E: VCallAd Control_ID_
  loc_CFF6A1: FStAdFunc var_2B4
  loc_CFF6A4: FLdPr var_2B4
  loc_CFF6A7: LateIdLdVar var_2C4 DispID_10 0
  loc_CFF6AE: CI4Var
  loc_CFF6B0: CVarI4
  loc_CFF6B4: PopAdLdVar
  loc_CFF6B5: LitVarI4
  loc_CFF6BD: PopAdLdVar
  loc_CFF6BE: ImpAdLdRf MemVar_D93E08
  loc_CFF6C1: NewIfNullPr frmPlanesdePago
  loc_CFF6C4: VCallAd Control_ID_
  loc_CFF6C7: FStAdFunc var_308
  loc_CFF6CA: FLdPr var_308
  loc_CFF6CD: LateIdCallLdVar
  loc_CFF6D7: CStrVarTmp
  loc_CFF6D8: CVarStr var_328
  loc_CFF6DB: ConcatVar var_338
  loc_CFF6DF: LitVarStr var_348, ","
  loc_CFF6E4: ConcatVar var_358
  loc_CFF6E8: FLdRfVar var_360
  loc_CFF6EB: ImpAdLdRf MemVar_D93E08
  loc_CFF6EE: NewIfNullPr frmPlanesdePago
  loc_CFF6F1: VCallAd Control_ID_
  loc_CFF6F4: FStAdFunc var_35C
  loc_CFF6F7: FLdPr var_35C
  loc_CFF6FA:  = frmPlanesdePago.TextBox.Text
  loc_CFF6FF: FLdZeroAd var_360
  loc_CFF702: CVarStr var_370
  loc_CFF705: ConcatVar var_380
  loc_CFF709: LitVarStr var_390, ",'"
  loc_CFF70E: ConcatVar var_3A0
  loc_CFF712: LitI4 1
  loc_CFF717: LitI4 1
  loc_CFF71C: LitVarStr var_3C0, "yyyy-mm-dd"
  loc_CFF721: FStVarCopyObj var_3D0
  loc_CFF724: FLdRfVar var_3D0
  loc_CFF727: FLdRfVar var_A8
  loc_CFF72A: CVarRef
  loc_CFF72F: ImpAdCallI2 Format$(, )
  loc_CFF734: CVarStr var_3E0
  loc_CFF737: ConcatVar var_3F0
  loc_CFF73B: LitVarStr var_400, "',NULL,"
  loc_CFF740: ConcatVar var_410
  loc_CFF744: FLdI2 var_9E
  loc_CFF747: CI4UI1
  loc_CFF748: CVarI4
  loc_CFF74C: PopAdLdVar
  loc_CFF74D: LitVarI4
  loc_CFF755: PopAdLdVar
  loc_CFF756: ImpAdLdRf MemVar_D93E08
  loc_CFF759: NewIfNullPr frmPlanesdePago
  loc_CFF75C: VCallAd Control_ID_
  loc_CFF75F: FStAdFunc var_454
  loc_CFF762: FLdPr var_454
  loc_CFF765: LateIdCallLdVar
  loc_CFF76F: CStrVarTmp
  loc_CFF770: CVarStr var_474
  loc_CFF773: ConcatVar var_484
  loc_CFF777: LitVarStr var_494, ",'"
  loc_CFF77C: ConcatVar var_4A4
  loc_CFF780: FLdI2 var_9E
  loc_CFF783: CI4UI1
  loc_CFF784: CVarI4
  loc_CFF788: PopAdLdVar
  loc_CFF789: LitVarI4
  loc_CFF791: PopAdLdVar
  loc_CFF792: ImpAdLdRf MemVar_D93E08
  loc_CFF795: NewIfNullPr frmPlanesdePago
  loc_CFF798: VCallAd Control_ID_
  loc_CFF79B: FStAdFunc var_4E8
  loc_CFF79E: FLdPr var_4E8
  loc_CFF7A1: LateIdCallLdVar
  loc_CFF7AB: CStrVarTmp
  loc_CFF7AC: CVarStr var_508
  loc_CFF7AF: ConcatVar var_518
  loc_CFF7B3: LitVarStr var_528, "',"
  loc_CFF7B8: ConcatVar var_538
  loc_CFF7BC: ImpAdLdI2 MemVar_D93034
  loc_CFF7BF: CVarI2 var_548
  loc_CFF7C2: ConcatVar var_558
  loc_CFF7C6: LitVarStr var_568, ",'"
  loc_CFF7CB: ConcatVar var_578
  loc_CFF7CF: ILdRf var_E0
  loc_CFF7D2: CVarStr var_588
  loc_CFF7D5: ConcatVar var_598
  loc_CFF7D9: LitVarStr var_5A8, "','Pendiente de Activacion',"
  loc_CFF7DE: ConcatVar var_5B8
  loc_CFF7E2: LitI4 0
  loc_CFF7E7: LitI4 -1
  loc_CFF7EC: LitI4 1
  loc_CFF7F1: LitStr "."
  loc_CFF7F4: LitStr ","
  loc_CFF7F7: ILdRf var_5C0
  loc_CFF7FA: CR8Str
  loc_CFF7FC: CStrR8
  loc_CFF7FE: FStStrNoPop var_5C4
  loc_CFF801: ImpAdCallI2 Replace(, , , , , )
  loc_CFF806: CVarStr var_5D4
  loc_CFF809: ConcatVar var_5E4
  loc_CFF80D: LitVarStr var_5F4, ","
  loc_CFF812: ConcatVar var_604
  loc_CFF816: LitI4 0
  loc_CFF81B: LitI4 -1
  loc_CFF820: LitI4 1
  loc_CFF825: LitStr "."
  loc_CFF828: LitStr ","
  loc_CFF82B: ILdRf var_60C
  loc_CFF82E: CR8Str
  loc_CFF830: CStrR8
  loc_CFF832: FStStrNoPop var_610
  loc_CFF835: ImpAdCallI2 Replace(, , , , , )
  loc_CFF83A: CVarStr var_620
  loc_CFF83D: ConcatVar var_630
  loc_CFF841: LitVarStr var_640, ","
  loc_CFF846: ConcatVar var_650
  loc_CFF84A: LitI4 0
  loc_CFF84F: LitI4 -1
  loc_CFF854: LitI4 1
  loc_CFF859: LitStr "."
  loc_CFF85C: LitStr ","
  loc_CFF85F: ILdRf var_658
  loc_CFF862: CR8Str
  loc_CFF864: CStrR8
  loc_CFF866: FStStrNoPop var_65C
  loc_CFF869: ImpAdCallI2 Replace(, , , , , )
  loc_CFF86E: CVarStr var_66C
  loc_CFF871: ConcatVar var_67C
  loc_CFF875: LitVarStr var_68C, ","
  loc_CFF87A: ConcatVar var_69C
  loc_CFF87E: LitI4 0
  loc_CFF883: LitI4 -1
  loc_CFF888: LitI4 1
  loc_CFF88D: LitStr "."
  loc_CFF890: LitStr ","
  loc_CFF893: ILdRf var_6A4
  loc_CFF896: CR8Str
  loc_CFF898: CStrR8
  loc_CFF89A: FStStrNoPop var_6A8
  loc_CFF89D: ImpAdCallI2 Replace(, , , , , )
  loc_CFF8A2: CVarStr var_6B8
  loc_CFF8A5: ConcatVar var_6C8
  loc_CFF8A9: LitVarStr var_6D8, ","
  loc_CFF8AE: ConcatVar var_6E8
  loc_CFF8B2: LitI4 0
  loc_CFF8B7: LitI4 -1
  loc_CFF8BC: LitI4 1
  loc_CFF8C1: LitStr "."
  loc_CFF8C4: LitStr ","
  loc_CFF8C7: ILdRf var_6F0
  loc_CFF8CA: CR8Str
  loc_CFF8CC: CStrR8
  loc_CFF8CE: FStStrNoPop var_6F4
  loc_CFF8D1: ImpAdCallI2 Replace(, , , , , )
  loc_CFF8D6: CVarStr var_704
  loc_CFF8D9: ConcatVar var_714
  loc_CFF8DD: LitVarStr var_724, ","
  loc_CFF8E2: ConcatVar var_734
  loc_CFF8E6: LitI4 0
  loc_CFF8EB: LitI4 -1
  loc_CFF8F0: LitI4 1
  loc_CFF8F5: LitStr "."
  loc_CFF8F8: LitStr ","
  loc_CFF8FB: ILdRf var_73C
  loc_CFF8FE: CR8Str
  loc_CFF900: CStrR8
  loc_CFF902: FStStrNoPop var_740
  loc_CFF905: ImpAdCallI2 Replace(, , , , , )
  loc_CFF90A: CVarStr var_750
  loc_CFF90D: ConcatVar var_760
  loc_CFF911: LitVarStr var_770, ","
  loc_CFF916: ConcatVar var_780
  loc_CFF91A: LitI4 0
  loc_CFF91F: LitI4 -1
  loc_CFF924: LitI4 1
  loc_CFF929: LitStr "."
  loc_CFF92C: LitStr ","
  loc_CFF92F: ILdRf var_788
  loc_CFF932: CR8Str
  loc_CFF934: CStrR8
  loc_CFF936: FStStrNoPop var_78C
  loc_CFF939: ImpAdCallI2 Replace(, , , , , )
  loc_CFF93E: CVarStr var_79C
  loc_CFF941: ConcatVar var_7AC
  loc_CFF945: LitVarStr var_7BC, ","
  loc_CFF94A: ConcatVar var_7CC
  loc_CFF94E: LitI4 0
  loc_CFF953: LitI4 -1
  loc_CFF958: LitI4 1
  loc_CFF95D: LitStr "."
  loc_CFF960: LitStr ","
  loc_CFF963: ILdRf var_7D4
  loc_CFF966: CR8Str
  loc_CFF968: CStrR8
  loc_CFF96A: FStStrNoPop var_7D8
  loc_CFF96D: ImpAdCallI2 Replace(, , , , , )
  loc_CFF972: CVarStr var_7E8
  loc_CFF975: ConcatVar var_7F8
  loc_CFF979: LitVarStr var_808, ",'"
  loc_CFF97E: ConcatVar var_818
  loc_CFF982: ImpAdLdI4 MemVar_D9302C
  loc_CFF985: CVarStr var_828
  loc_CFF988: ConcatVar var_838
  loc_CFF98C: LitVarStr var_848, "');"
  loc_CFF991: ConcatVar var_858
  loc_CFF995: CStrVarVal var_85C
  loc_CFF999: Call EjecutarRsCls(from_stack_1v)
  loc_CFF99E: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A4 = "": var_6A8 = "": var_6F0 = "": var_6F4 = "": var_73C = "": var_740 = "": var_788 = "": var_78C = "": var_7D4 = "": var_7D8 = ""
  loc_CFF9CB: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = "": var_5BC = "": var_608 = "": var_654 = "": var_6A0 = "": var_6EC = "": var_738 = "": var_784 = ""
  loc_CFF9EE: FFreeVar var_558 = "": var_578 = "": var_598 = "": var_5B8 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_620 = "": var_630 = "": var_650 = "": var_66C = "": var_67C = "": var_69C = "": var_6B8 = "": var_6C8 = "": var_6E8 = "": var_704 = "": var_714 = "": var_734 = "": var_750 = "": var_760 = "": var_780 = "": var_79C = "": var_7AC = "": var_7CC = "": var_7E8 = "": var_7F8 = "": var_818 = "": var_838 = "": var_858 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_238 = "": var_228 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2C4 = "": var_318 = "": var_2B0 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = "": var_3D0 = "": var_3A0 = "": var_3E0 = "": var_3F0 = "": var_464 = "": var_410 = "": var_474 = "": var_484 = "": var_4F8 = "": var_4A4 = "": var_508 = "": var_518 = ""
  loc_CFFA69: FLdRfVar var_85E
  loc_CFFA6C: ImpAdLdRf MemVar_D93E08
  loc_CFFA6F: NewIfNullPr frmPlanesdePago
  loc_CFFA72: VCallAd Control_ID_
  loc_CFFA75: FStAdFunc var_200
  loc_CFFA78: FLdPr var_200
  loc_CFFA7B:  = frmPlanesdePago.TextBox.Visible
  loc_CFFA80: FLdI2 var_85E
  loc_CFFA83: LitI2_Byte &HFF
  loc_CFFA85: EqI2
  loc_CFFA86: FLdRfVar var_860
  loc_CFFA89: ImpAdLdRf MemVar_D93E08
  loc_CFFA8C: NewIfNullPr frmPlanesdePago
  loc_CFFA8F: VCallAd Control_ID_
  loc_CFFA92: FStAdFunc var_204
  loc_CFFA95: FLdPr var_204
  loc_CFFA98:  = frmPlanesdePago.TextBox.Visible
  loc_CFFA9D: FLdI2 var_860
  loc_CFFAA0: LitI2_Byte &HFF
  loc_CFFAA2: EqI2
  loc_CFFAA3: AndI4
  loc_CFFAA4: FFreeAd var_200 = ""
  loc_CFFAAB: BranchF loc_CFFB2F
  loc_CFFAAE: LitStr " UPDATE obreinmu SET CodiFapa = "
  loc_CFFAB1: ILdRf var_B4
  loc_CFFAB4: CStrI4
  loc_CFFAB6: FStStrNoPop var_1E8
  loc_CFFAB9: ConcatStr
  loc_CFFABA: FStStrNoPop var_1EC
  loc_CFFABD: LitStr " WHERE OrdeObre = '"
  loc_CFFAC0: ConcatStr
  loc_CFFAC1: FStStrNoPop var_1F4
  loc_CFFAC4: FLdRfVar var_1F0
  loc_CFFAC7: ImpAdLdRf MemVar_D93E08
  loc_CFFACA: NewIfNullPr frmPlanesdePago
  loc_CFFACD: VCallAd Control_ID_
  loc_CFFAD0: FStAdFunc var_200
  loc_CFFAD3: FLdPr var_200
  loc_CFFAD6:  = frmPlanesdePago.TextBox.Text
  loc_CFFADB: ILdRf var_1F0
  loc_CFFADE: ConcatStr
  loc_CFFADF: FStStrNoPop var_1F8
  loc_CFFAE2: LitStr "' AND CodiInmu = "
  loc_CFFAE5: ConcatStr
  loc_CFFAE6: FStStrNoPop var_360
  loc_CFFAE9: FLdRfVar var_270
  loc_CFFAEC: ImpAdLdRf MemVar_D93E08
  loc_CFFAEF: NewIfNullPr frmPlanesdePago
  loc_CFFAF2: VCallAd Control_ID_
  loc_CFFAF5: FStAdFunc var_204
  loc_CFFAF8: FLdPr var_204
  loc_CFFAFB:  = frmPlanesdePago.TextBox.Text
  loc_CFFB00: ILdRf var_270
  loc_CFFB03: ConcatStr
  loc_CFFB04: FStStrNoPop var_5C0
  loc_CFFB07: LitStr ";"
  loc_CFFB0A: ConcatStr
  loc_CFFB0B: FStStrNoPop var_5C4
  loc_CFFB0E: Call EjecutarRsCls(from_stack_1v)
  loc_CFFB13: FFreeStr var_1E8 = "": var_1EC = "": var_1F4 = "": var_1F0 = "": var_1F8 = "": var_360 = "": var_270 = "": var_5C0 = ""
  loc_CFFB28: FFreeAd var_200 = ""
  loc_CFFB2F: Branch loc_CFFB37
  loc_CFFB32: LitI2_Byte 0
  loc_CFFB34: FStI2 var_A0
  loc_CFFB37: FLdI2 var_9E
  loc_CFFB3A: CI4UI1
  loc_CFFB3B: CVarI4
  loc_CFFB3F: PopAdLdVar
  loc_CFFB40: LitVarI4
  loc_CFFB48: PopAdLdVar
  loc_CFFB49: ImpAdLdRf MemVar_D93E08
  loc_CFFB4C: NewIfNullPr frmPlanesdePago
  loc_CFFB4F: VCallAd Control_ID_
  loc_CFFB52: FStAdFunc var_204
  loc_CFFB55: FLdPr var_204
  loc_CFFB58: LateIdCallLdVar
  loc_CFFB62: PopAd
  loc_CFFB64: FLdI2 var_9E
  loc_CFFB67: CI4UI1
  loc_CFFB68: CVarI4
  loc_CFFB6C: PopAdLdVar
  loc_CFFB6D: LitVarI4
  loc_CFFB75: PopAdLdVar
  loc_CFFB76: ImpAdLdRf MemVar_D93E08
  loc_CFFB79: NewIfNullPr frmPlanesdePago
  loc_CFFB7C: VCallAd Control_ID_
  loc_CFFB7F: FStAdFunc var_26C
  loc_CFFB82: FLdPr var_26C
  loc_CFFB85: LateIdCallLdVar
  loc_CFFB8F: PopAd
  loc_CFFB91: FLdI2 var_9E
  loc_CFFB94: CI4UI1
  loc_CFFB95: CVarI4
  loc_CFFB99: PopAdLdVar
  loc_CFFB9A: LitVarI4
  loc_CFFBA2: PopAdLdVar
  loc_CFFBA3: ImpAdLdRf MemVar_D93E08
  loc_CFFBA6: NewIfNullPr frmPlanesdePago
  loc_CFFBA9: VCallAd Control_ID_
  loc_CFFBAC: FStAdFunc var_2B4
  loc_CFFBAF: FLdPr var_2B4
  loc_CFFBB2: LateIdCallLdVar
  loc_CFFBBC: PopAd
  loc_CFFBBE: FLdI2 var_9E
  loc_CFFBC1: CI4UI1
  loc_CFFBC2: CVarI4
  loc_CFFBC6: PopAdLdVar
  loc_CFFBC7: LitVarI4
  loc_CFFBCF: PopAdLdVar
  loc_CFFBD0: ImpAdLdRf MemVar_D93E08
  loc_CFFBD3: NewIfNullPr frmPlanesdePago
  loc_CFFBD6: VCallAd Control_ID_
  loc_CFFBD9: FStAdFunc var_308
  loc_CFFBDC: FLdPr var_308
  loc_CFFBDF: LateIdCallLdVar
  loc_CFFBE9: PopAd
  loc_CFFBEB: FLdI2 var_9E
  loc_CFFBEE: CI4UI1
  loc_CFFBEF: CVarI4
  loc_CFFBF3: PopAdLdVar
  loc_CFFBF4: LitVarI4
  loc_CFFBFC: PopAdLdVar
  loc_CFFBFD: ImpAdLdRf MemVar_D93E08
  loc_CFFC00: NewIfNullPr frmPlanesdePago
  loc_CFFC03: VCallAd Control_ID_
  loc_CFFC06: FStAdFunc var_35C
  loc_CFFC09: FLdPr var_35C
  loc_CFFC0C: LateIdCallLdVar
  loc_CFFC16: PopAd
  loc_CFFC18: FLdI2 var_9E
  loc_CFFC1B: CI4UI1
  loc_CFFC1C: CVarI4
  loc_CFFC20: PopAdLdVar
  loc_CFFC21: LitVarI4
  loc_CFFC29: PopAdLdVar
  loc_CFFC2A: ImpAdLdRf MemVar_D93E08
  loc_CFFC2D: NewIfNullPr frmPlanesdePago
  loc_CFFC30: VCallAd Control_ID_
  loc_CFFC33: FStAdFunc var_454
  loc_CFFC36: FLdPr var_454
  loc_CFFC39: LateIdCallLdVar
  loc_CFFC43: PopAd
  loc_CFFC45: FLdI2 var_9E
  loc_CFFC48: CI4UI1
  loc_CFFC49: CVarI4
  loc_CFFC4D: PopAdLdVar
  loc_CFFC4E: LitVarI4
  loc_CFFC56: PopAdLdVar
  loc_CFFC57: ImpAdLdRf MemVar_D93E08
  loc_CFFC5A: NewIfNullPr frmPlanesdePago
  loc_CFFC5D: VCallAd Control_ID_
  loc_CFFC60: FStAdFunc var_4E8
  loc_CFFC63: FLdPr var_4E8
  loc_CFFC66: LateIdCallLdVar
  loc_CFFC70: PopAd
  loc_CFFC72: FLdI2 var_9E
  loc_CFFC75: CI4UI1
  loc_CFFC76: CVarI4
  loc_CFFC7A: PopAdLdVar
  loc_CFFC7B: LitVarI4
  loc_CFFC83: PopAdLdVar
  loc_CFFC84: ImpAdLdRf MemVar_D93E08
  loc_CFFC87: NewIfNullPr frmPlanesdePago
  loc_CFFC8A: VCallAd Control_ID_
  loc_CFFC8D: FStAdFunc var_5BC
  loc_CFFC90: FLdPr var_5BC
  loc_CFFC93: LateIdCallLdVar
  loc_CFFC9D: PopAd
  loc_CFFC9F: LitStr " INSERT INTO detafapa (CodiFapa,CuotDefa,EstaDefa,FeveDefa,FepaDefa,CapiDefa,Decadefa,RecaDefa,DereDefa,ApreDefa,InteDefa,TotaDefa) "
  loc_CFFCA2: LitStr " VALUES ("
  loc_CFFCA5: ConcatStr
  loc_CFFCA6: FStStrNoPop var_1E8
  loc_CFFCA9: ILdRf var_B4
  loc_CFFCAC: CStrI4
  loc_CFFCAE: FStStrNoPop var_1EC
  loc_CFFCB1: ConcatStr
  loc_CFFCB2: FStStrNoPop var_1F0
  loc_CFFCB5: LitStr ","
  loc_CFFCB8: ConcatStr
  loc_CFFCB9: FStStrNoPop var_1F4
  loc_CFFCBC: FLdI2 var_9E
  loc_CFFCBF: CI4UI1
  loc_CFFCC0: CVarI4
  loc_CFFCC4: PopAdLdVar
  loc_CFFCC5: LitVarI4
  loc_CFFCCD: PopAdLdVar
  loc_CFFCCE: ImpAdLdRf MemVar_D93E08
  loc_CFFCD1: NewIfNullPr frmPlanesdePago
  loc_CFFCD4: VCallAd Control_ID_
  loc_CFFCD7: FStAdFunc var_200
  loc_CFFCDA: FLdPr var_200
  loc_CFFCDD: LateIdCallLdVar
  loc_CFFCE7: CStrVarTmp
  loc_CFFCE8: FStStrNoPop var_1F8
  loc_CFFCEB: ConcatStr
  loc_CFFCEC: FStStrNoPop var_270
  loc_CFFCEF: LitStr ",'Emitida','"
  loc_CFFCF2: ConcatStr
  loc_CFFCF3: FStStrNoPop var_360
  loc_CFFCF6: LitI4 1
  loc_CFFCFB: LitI4 1
  loc_CFFD00: LitVarStr var_348, "yyyy-mm-dd"
  loc_CFFD05: FStVarCopyObj var_238
  loc_CFFD08: FLdRfVar var_238
  loc_CFFD0B: FLdRfVar var_1E4
  loc_CFFD0E: CStrVarTmp
  loc_CFFD0F: CVarStr var_228
  loc_CFFD12: ImpAdCallI2 Format$(, )
  loc_CFFD17: FStStrNoPop var_5C0
  loc_CFFD1A: ConcatStr
  loc_CFFD1B: FStStrNoPop var_5C4
  loc_CFFD1E: LitStr "',NULL,"
  loc_CFFD21: ConcatStr
  loc_CFFD22: FStStrNoPop var_658
  loc_CFFD25: LitI4 0
  loc_CFFD2A: LitI4 -1
  loc_CFFD2F: LitI4 1
  loc_CFFD34: LitStr "."
  loc_CFFD37: LitStr ","
  loc_CFFD3A: FLdRfVar var_248
  loc_CFFD3D: CStrVarTmp
  loc_CFFD3E: FStStrNoPop var_60C
  loc_CFFD41: CR8Str
  loc_CFFD43: CStrR8
  loc_CFFD45: FStStrNoPop var_610
  loc_CFFD48: ImpAdCallI2 Replace(, , , , , )
  loc_CFFD4D: FStStrNoPop var_65C
  loc_CFFD50: ConcatStr
  loc_CFFD51: FStStrNoPop var_6A4
  loc_CFFD54: LitStr ","
  loc_CFFD57: ConcatStr
  loc_CFFD58: FStStrNoPop var_6F4
  loc_CFFD5B: LitI4 0
  loc_CFFD60: LitI4 -1
  loc_CFFD65: LitI4 1
  loc_CFFD6A: LitStr "."
  loc_CFFD6D: LitStr ","
  loc_CFFD70: FLdRfVar var_268
  loc_CFFD73: CStrVarTmp
  loc_CFFD74: FStStrNoPop var_6A8
  loc_CFFD77: CR8Str
  loc_CFFD79: CStrR8
  loc_CFFD7B: FStStrNoPop var_6F0
  loc_CFFD7E: ImpAdCallI2 Replace(, , , , , )
  loc_CFFD83: FStStrNoPop var_73C
  loc_CFFD86: ConcatStr
  loc_CFFD87: FStStrNoPop var_740
  loc_CFFD8A: LitStr ","
  loc_CFFD8D: ConcatStr
  loc_CFFD8E: FStStrNoPop var_7D4
  loc_CFFD91: LitI4 0
  loc_CFFD96: LitI4 -1
  loc_CFFD9B: LitI4 1
  loc_CFFDA0: LitStr "."
  loc_CFFDA3: LitStr ","
  loc_CFFDA6: FLdRfVar var_280
  loc_CFFDA9: CStrVarTmp
  loc_CFFDAA: FStStrNoPop var_788
  loc_CFFDAD: CR8Str
  loc_CFFDAF: CStrR8
  loc_CFFDB1: FStStrNoPop var_78C
  loc_CFFDB4: ImpAdCallI2 Replace(, , , , , )
  loc_CFFDB9: FStStrNoPop var_7D8
  loc_CFFDBC: ConcatStr
  loc_CFFDBD: FStStrNoPop var_85C
  loc_CFFDC0: LitStr ","
  loc_CFFDC3: ConcatStr
  loc_CFFDC4: FStStrNoPop var_86C
  loc_CFFDC7: LitI4 0
  loc_CFFDCC: LitI4 -1
  loc_CFFDD1: LitI4 1
  loc_CFFDD6: LitStr "."
  loc_CFFDD9: LitStr ","
  loc_CFFDDC: FLdRfVar var_290
  loc_CFFDDF: CStrVarTmp
  loc_CFFDE0: FStStrNoPop var_864
  loc_CFFDE3: CR8Str
  loc_CFFDE5: CStrR8
  loc_CFFDE7: FStStrNoPop var_868
  loc_CFFDEA: ImpAdCallI2 Replace(, , , , , )
  loc_CFFDEF: FStStrNoPop var_870
  loc_CFFDF2: ConcatStr
  loc_CFFDF3: FStStrNoPop var_874
  loc_CFFDF6: LitStr ","
  loc_CFFDF9: ConcatStr
  loc_CFFDFA: FStStrNoPop var_880
  loc_CFFDFD: LitI4 0
  loc_CFFE02: LitI4 -1
  loc_CFFE07: LitI4 1
  loc_CFFE0C: LitStr "."
  loc_CFFE0F: LitStr ","
  loc_CFFE12: FLdRfVar var_2B0
  loc_CFFE15: CStrVarTmp
  loc_CFFE16: FStStrNoPop var_878
  loc_CFFE19: CR8Str
  loc_CFFE1B: CStrR8
  loc_CFFE1D: FStStrNoPop var_87C
  loc_CFFE20: ImpAdCallI2 Replace(, , , , , )
  loc_CFFE25: FStStrNoPop var_884
  loc_CFFE28: ConcatStr
  loc_CFFE29: FStStrNoPop var_888
  loc_CFFE2C: LitStr ","
  loc_CFFE2F: ConcatStr
  loc_CFFE30: FStStrNoPop var_894
  loc_CFFE33: LitI4 0
  loc_CFFE38: LitI4 -1
  loc_CFFE3D: LitI4 1
  loc_CFFE42: LitStr "."
  loc_CFFE45: LitStr ","
  loc_CFFE48: FLdRfVar var_2C4
  loc_CFFE4B: CStrVarTmp
  loc_CFFE4C: FStStrNoPop var_88C
  loc_CFFE4F: CR8Str
  loc_CFFE51: CStrR8
  loc_CFFE53: FStStrNoPop var_890
  loc_CFFE56: ImpAdCallI2 Replace(, , , , , )
  loc_CFFE5B: FStStrNoPop var_898
  loc_CFFE5E: ConcatStr
  loc_CFFE5F: FStStrNoPop var_89C
  loc_CFFE62: LitStr ","
  loc_CFFE65: ConcatStr
  loc_CFFE66: FStStrNoPop var_8A8
  loc_CFFE69: LitI4 0
  loc_CFFE6E: LitI4 -1
  loc_CFFE73: LitI4 1
  loc_CFFE78: LitStr "."
  loc_CFFE7B: LitStr ","
  loc_CFFE7E: FLdRfVar var_318
  loc_CFFE81: CStrVarTmp
  loc_CFFE82: FStStrNoPop var_8A0
  loc_CFFE85: CR8Str
  loc_CFFE87: CStrR8
  loc_CFFE89: FStStrNoPop var_8A4
  loc_CFFE8C: ImpAdCallI2 Replace(, , , , , )
  loc_CFFE91: FStStrNoPop var_8AC
  loc_CFFE94: ConcatStr
  loc_CFFE95: FStStrNoPop var_8B0
  loc_CFFE98: LitStr ");"
  loc_CFFE9B: ConcatStr
  loc_CFFE9C: FStStrNoPop var_8B4
  loc_CFFE9F: Call EjecutarRsCls(from_stack_1v)
  loc_CFFEA4: FFreeStr var_87C = "": var_880 = "": var_884 = "": var_888 = "": var_88C = "": var_890 = "": var_894 = "": var_898 = "": var_89C = "": var_8A0 = "": var_8A4 = "": var_8A8 = "": var_8AC = "": var_8B0 = "": var_8B4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A4 = "": var_6A8 = "": var_6F0 = "": var_6F4 = "": var_73C = "": var_740 = "": var_788 = "": var_78C = "": var_7D4 = "": var_7D8 = "": var_85C = "": var_864 = "": var_868 = "": var_86C = "": var_870 = "": var_874 = ""
  loc_CFFF01: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = ""
  loc_CFFF16: FFreeVar var_1D4 = "": var_1E4 = "": var_228 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = ""
  loc_CFFF2F: LitI2_Byte 0
  loc_CFFF31: CR8I2
  loc_CFFF32: FStFPR8 var_150
  loc_CFFF35: LitI2_Byte 0
  loc_CFFF37: CR8I2
  loc_CFFF38: FStFPR8 var_158
  loc_CFFF3B: LitI2_Byte 0
  loc_CFFF3D: CR8I2
  loc_CFFF3E: FStFPR8 var_160
  loc_CFFF41: LitI2_Byte 0
  loc_CFFF43: CR8I2
  loc_CFFF44: FStFPR8 var_168
  loc_CFFF47: LitI2_Byte 0
  loc_CFFF49: CR8I2
  loc_CFFF4A: FStFPR8 var_170
  loc_CFFF4D: FLdI2 var_9E
  loc_CFFF50: LitI2_Byte 1
  loc_CFFF52: EqI2
  loc_CFFF53: FLdI2 sCodiConc
  loc_CFFF56: LitI2_Byte &HFF
  loc_CFFF58: EqI2
  loc_CFFF59: OrI4
  loc_CFFF5A: BranchF loc_D00BFE
  loc_CFFF5D: FLdRfVar var_1FC
  loc_CFFF60: FLdI2 var_AA
  loc_CFFF63: FLdRfVar var_98
  loc_CFFF66: NewIfNullPr clsnumebole
  loc_CFFF69: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_CFFF6E: ILdRf var_1FC
  loc_CFFF71: FStR4 var_B0
  loc_CFFF74: FLdI2 var_9E
  loc_CFFF77: CI4UI1
  loc_CFFF78: CVarI4
  loc_CFFF7C: PopAdLdVar
  loc_CFFF7D: LitVarI4
  loc_CFFF85: PopAdLdVar
  loc_CFFF86: ImpAdLdRf MemVar_D93E08
  loc_CFFF89: NewIfNullPr frmPlanesdePago
  loc_CFFF8C: VCallAd Control_ID_
  loc_CFFF8F: FStAdFunc var_200
  loc_CFFF92: FLdPr var_200
  loc_CFFF95: LateIdCallLdVar
  loc_CFFF9F: CStrVarTmp
  loc_CFFFA0: FStStrNoPop var_1E8
  loc_CFFFA3: CR8Str
  loc_CFFFA5: ImpAdStFPR8 MemVar_D93040
  loc_CFFFA8: FFree1Str var_1E8
  loc_CFFFAB: FFree1Ad var_200
  loc_CFFFAE: FFree1Var var_1D4 = ""
  loc_CFFFB1: FLdI2 var_9E
  loc_CFFFB4: CI4UI1
  loc_CFFFB5: CVarI4
  loc_CFFFB9: PopAdLdVar
  loc_CFFFBA: LitVarI4
  loc_CFFFC2: PopAdLdVar
  loc_CFFFC3: ImpAdLdRf MemVar_D93E08
  loc_CFFFC6: NewIfNullPr frmPlanesdePago
  loc_CFFFC9: VCallAd Control_ID_
  loc_CFFFCC: FStAdFunc var_200
  loc_CFFFCF: FLdPr var_200
  loc_CFFFD2: LateIdCallLdVar
  loc_CFFFDC: CStrVarTmp
  loc_CFFFDD: FStStrNoPop var_1E8
  loc_CFFFE0: CR8Str
  loc_CFFFE2: ImpAdStFPR8 MemVar_D93058
  loc_CFFFE5: FFree1Str var_1E8
  loc_CFFFE8: FFree1Ad var_200
  loc_CFFFEB: FFree1Var var_1D4 = ""
  loc_CFFFEE: FLdI2 var_9E
  loc_CFFFF1: CI4UI1
  loc_CFFFF2: CVarI4
  loc_CFFFF6: PopAdLdVar
  loc_CFFFF7: LitVarI4
  loc_CFFFFF: PopAdLdVar
  loc_D00000: ImpAdLdRf MemVar_D93E08
  loc_D00003: NewIfNullPr frmPlanesdePago
  loc_D00006: VCallAd Control_ID_
  loc_D00009: FStAdFunc var_204
  loc_D0000C: FLdPr var_204
  loc_D0000F: LateIdCallLdVar
  loc_D00019: PopAd
  loc_D0001B: FLdI2 var_9E
  loc_D0001E: CI4UI1
  loc_D0001F: CVarI4
  loc_D00023: PopAdLdVar
  loc_D00024: LitVarI4
  loc_D0002C: PopAdLdVar
  loc_D0002D: ImpAdLdRf MemVar_D93E08
  loc_D00030: NewIfNullPr frmPlanesdePago
  loc_D00033: VCallAd Control_ID_
  loc_D00036: FStAdFunc var_200
  loc_D00039: FLdPr var_200
  loc_D0003C: LateIdCallLdVar
  loc_D00046: CStrVarTmp
  loc_D00047: FStStrNoPop var_1E8
  loc_D0004A: CR8Str
  loc_D0004C: FLdRfVar var_1E4
  loc_D0004F: CStrVarTmp
  loc_D00050: FStStrNoPop var_1EC
  loc_D00053: CR8Str
  loc_D00055: AddR8
  loc_D00056: ImpAdStFPR8 MemVar_D93048
  loc_D00059: FFreeStr var_1E8 = ""
  loc_D00060: FFreeAd var_200 = ""
  loc_D00067: FFreeVar var_1D4 = ""
  loc_D0006E: FLdI2 var_9E
  loc_D00071: CI4UI1
  loc_D00072: CVarI4
  loc_D00076: PopAdLdVar
  loc_D00077: LitVarI4
  loc_D0007F: PopAdLdVar
  loc_D00080: ImpAdLdRf MemVar_D93E08
  loc_D00083: NewIfNullPr frmPlanesdePago
  loc_D00086: VCallAd Control_ID_
  loc_D00089: FStAdFunc var_200
  loc_D0008C: FLdPr var_200
  loc_D0008F: LateIdCallLdVar
  loc_D00099: CStrVarTmp
  loc_D0009A: FStStrNoPop var_1E8
  loc_D0009D: CR8Str
  loc_D0009F: ImpAdStFPR8 MemVar_D93060
  loc_D000A2: FFree1Str var_1E8
  loc_D000A5: FFree1Ad var_200
  loc_D000A8: FFree1Var var_1D4 = ""
  loc_D000AB: FLdI2 var_9E
  loc_D000AE: CI4UI1
  loc_D000AF: CVarI4
  loc_D000B3: PopAdLdVar
  loc_D000B4: LitVarI4
  loc_D000BC: PopAdLdVar
  loc_D000BD: ImpAdLdRf MemVar_D93E08
  loc_D000C0: NewIfNullPr frmPlanesdePago
  loc_D000C3: VCallAd Control_ID_
  loc_D000C6: FStAdFunc var_200
  loc_D000C9: FLdPr var_200
  loc_D000CC: LateIdCallLdVar
  loc_D000D6: CStrVarTmp
  loc_D000D7: FStStrNoPop var_1E8
  loc_D000DA: CR8Str
  loc_D000DC: ImpAdStFPR8 MemVar_D93070
  loc_D000DF: FFree1Str var_1E8
  loc_D000E2: FFree1Ad var_200
  loc_D000E5: FFree1Var var_1D4 = ""
  loc_D000E8: FLdRfVar var_65C
  loc_D000EB: ImpAdLdRf MemVar_D93E08
  loc_D000EE: NewIfNullPr frmPlanesdePago
  loc_D000F1: VCallAd Control_ID_
  loc_D000F4: FStAdFunc var_26C
  loc_D000F7: FLdPr var_26C
  loc_D000FA:  = frmPlanesdePago.Label.Caption
  loc_D000FF: FLdI2 var_9E
  loc_D00102: CI4UI1
  loc_D00103: CVarI4
  loc_D00107: PopAdLdVar
  loc_D00108: LitVarI4
  loc_D00110: PopAdLdVar
  loc_D00111: ImpAdLdRf MemVar_D93E08
  loc_D00114: NewIfNullPr frmPlanesdePago
  loc_D00117: VCallAd Control_ID_
  loc_D0011A: FStAdFunc var_308
  loc_D0011D: FLdPr var_308
  loc_D00120: LateIdCallLdVar
  loc_D0012A: PopAd
  loc_D0012C: FLdI2 var_9E
  loc_D0012F: CI4UI1
  loc_D00130: CVarI4
  loc_D00134: PopAdLdVar
  loc_D00135: LitVarI4
  loc_D0013D: PopAdLdVar
  loc_D0013E: ImpAdLdRf MemVar_D93E08
  loc_D00141: NewIfNullPr frmPlanesdePago
  loc_D00144: VCallAd Control_ID_
  loc_D00147: FStAdFunc var_454
  loc_D0014A: FLdPr var_454
  loc_D0014D: LateIdCallLdVar
  loc_D00157: PopAd
  loc_D00159: FLdI2 var_9E
  loc_D0015C: CI4UI1
  loc_D0015D: CVarI4
  loc_D00161: PopAdLdVar
  loc_D00162: LitVarI4
  loc_D0016A: PopAdLdVar
  loc_D0016B: ImpAdLdRf MemVar_D93E08
  loc_D0016E: NewIfNullPr frmPlanesdePago
  loc_D00171: VCallAd Control_ID_
  loc_D00174: FStAdFunc var_4E8
  loc_D00177: FLdPr var_4E8
  loc_D0017A: LateIdCallLdVar
  loc_D00184: PopAd
  loc_D00186: FLdI2 var_9E
  loc_D00189: CI4UI1
  loc_D0018A: CVarI4
  loc_D0018E: PopAdLdVar
  loc_D0018F: LitVarI4
  loc_D00197: PopAdLdVar
  loc_D00198: ImpAdLdRf MemVar_D93E08
  loc_D0019B: NewIfNullPr frmPlanesdePago
  loc_D0019E: VCallAd Control_ID_
  loc_D001A1: FStAdFunc var_5BC
  loc_D001A4: FLdPr var_5BC
  loc_D001A7: LateIdCallLdVar
  loc_D001B1: PopAd
  loc_D001B3: FLdI2 var_9E
  loc_D001B6: CI4UI1
  loc_D001B7: CVarI4
  loc_D001BB: PopAdLdVar
  loc_D001BC: LitVarI4
  loc_D001C4: PopAdLdVar
  loc_D001C5: ImpAdLdRf MemVar_D93E08
  loc_D001C8: NewIfNullPr frmPlanesdePago
  loc_D001CB: VCallAd Control_ID_
  loc_D001CE: FStAdFunc var_608
  loc_D001D1: FLdPr var_608
  loc_D001D4: LateIdCallLdVar
  loc_D001DE: PopAd
  loc_D001E0: FLdI2 var_9E
  loc_D001E3: CI4UI1
  loc_D001E4: CVarI4
  loc_D001E8: PopAdLdVar
  loc_D001E9: LitVarI4
  loc_D001F1: PopAdLdVar
  loc_D001F2: ImpAdLdRf MemVar_D93E08
  loc_D001F5: NewIfNullPr frmPlanesdePago
  loc_D001F8: VCallAd Control_ID_
  loc_D001FB: FStAdFunc var_654
  loc_D001FE: FLdPr var_654
  loc_D00201: LateIdCallLdVar
  loc_D0020B: PopAd
  loc_D0020D: FLdI2 var_9E
  loc_D00210: CI4UI1
  loc_D00211: CVarI4
  loc_D00215: PopAdLdVar
  loc_D00216: LitVarI4
  loc_D0021E: PopAdLdVar
  loc_D0021F: ImpAdLdRf MemVar_D93E08
  loc_D00222: NewIfNullPr frmPlanesdePago
  loc_D00225: VCallAd Control_ID_
  loc_D00228: FStAdFunc var_6A0
  loc_D0022B: FLdPr var_6A0
  loc_D0022E: LateIdCallLdVar
  loc_D00238: PopAd
  loc_D0023A: FLdI2 var_9E
  loc_D0023D: CI4UI1
  loc_D0023E: CVarI4
  loc_D00242: PopAdLdVar
  loc_D00243: LitVarI4
  loc_D0024B: PopAdLdVar
  loc_D0024C: ImpAdLdRf MemVar_D93E08
  loc_D0024F: NewIfNullPr frmPlanesdePago
  loc_D00252: VCallAd Control_ID_
  loc_D00255: FStAdFunc var_6EC
  loc_D00258: FLdPr var_6EC
  loc_D0025B: LateIdCallLdVar
  loc_D00265: PopAd
  loc_D00267: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ExpeBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D0026A: LitStr "  VALUES ("
  loc_D0026D: ConcatStr
  loc_D0026E: FStStrNoPop var_1E8
  loc_D00271: FLdI2 var_AA
  loc_D00274: CStrUI1
  loc_D00276: FStStrNoPop var_1EC
  loc_D00279: ConcatStr
  loc_D0027A: FStStrNoPop var_1F0
  loc_D0027D: LitStr ","
  loc_D00280: ConcatStr
  loc_D00281: FStStrNoPop var_1F4
  loc_D00284: ILdRf var_B0
  loc_D00287: CStrI4
  loc_D00289: FStStrNoPop var_1F8
  loc_D0028C: ConcatStr
  loc_D0028D: FStStrNoPop var_270
  loc_D00290: LitStr ","
  loc_D00293: ConcatStr
  loc_D00294: FStStrNoPop var_360
  loc_D00297: FLdI2 var_9E
  loc_D0029A: CI4UI1
  loc_D0029B: CVarI4
  loc_D0029F: PopAdLdVar
  loc_D002A0: LitVarI4
  loc_D002A8: PopAdLdVar
  loc_D002A9: ImpAdLdRf MemVar_D93E08
  loc_D002AC: NewIfNullPr frmPlanesdePago
  loc_D002AF: VCallAd Control_ID_
  loc_D002B2: FStAdFunc var_200
  loc_D002B5: FLdPr var_200
  loc_D002B8: LateIdCallLdVar
  loc_D002C2: CStrVarTmp
  loc_D002C3: FStStrNoPop var_5C0
  loc_D002C6: ConcatStr
  loc_D002C7: FStStrNoPop var_5C4
  loc_D002CA: LitStr ",'"
  loc_D002CD: ConcatStr
  loc_D002CE: FStStrNoPop var_60C
  loc_D002D1: FLdI2 var_9E
  loc_D002D4: CI4UI1
  loc_D002D5: CVarI4
  loc_D002D9: PopAdLdVar
  loc_D002DA: LitVarI4
  loc_D002E2: PopAdLdVar
  loc_D002E3: ImpAdLdRf MemVar_D93E08
  loc_D002E6: NewIfNullPr frmPlanesdePago
  loc_D002E9: VCallAd Control_ID_
  loc_D002EC: FStAdFunc var_204
  loc_D002EF: FLdPr var_204
  loc_D002F2: LateIdCallLdVar
  loc_D002FC: CStrVarTmp
  loc_D002FD: FStStrNoPop var_610
  loc_D00300: ConcatStr
  loc_D00301: FStStrNoPop var_658
  loc_D00304: LitStr "','"
  loc_D00307: ConcatStr
  loc_D00308: CVarStr var_268
  loc_D0030B: FLdRfVar var_6A4
  loc_D0030E: ImpAdLdRf MemVar_D93E08
  loc_D00311: NewIfNullPr frmPlanesdePago
  loc_D00314: VCallAd Control_ID_
  loc_D00317: FStAdFunc var_2B4
  loc_D0031A: FLdPr var_2B4
  loc_D0031D:  = frmPlanesdePago.Label.Caption
  loc_D00322: FLdZeroAd var_6A4
  loc_D00325: CVarStr var_238
  loc_D00328: LitVarI2 var_228, 0
  loc_D0032D: ILdRf var_65C
  loc_D00330: LitStr vbNullString
  loc_D00333: EqStr
  loc_D00335: CVarBoolI2 var_348
  loc_D00339: FLdRfVar var_248
  loc_D0033C: ImpAdCallFPR4  = IIf(, , )
  loc_D00341: FLdRfVar var_248
  loc_D00344: ConcatVar var_280
  loc_D00348: LitVarStr var_3B0, "','"
  loc_D0034D: ConcatVar var_290
  loc_D00351: LitI4 1
  loc_D00356: LitI4 1
  loc_D0035B: LitVarStr var_400, "yyyy-mm-dd"
  loc_D00360: FStVarCopyObj var_2B0
  loc_D00363: FLdRfVar var_2B0
  loc_D00366: FLdRfVar var_A8
  loc_D00369: CVarRef
  loc_D0036E: ImpAdCallI2 Format$(, )
  loc_D00373: CVarStr var_2C4
  loc_D00376: ConcatVar var_318
  loc_D0037A: LitVarStr var_420, "','"
  loc_D0037F: ConcatVar var_328
  loc_D00383: LitI4 1
  loc_D00388: LitI4 1
  loc_D0038D: LitVarStr var_4B4, "yyyy-mm-dd"
  loc_D00392: FStVarCopyObj var_370
  loc_D00395: FLdRfVar var_370
  loc_D00398: FLdRfVar var_338
  loc_D0039B: CStrVarTmp
  loc_D0039C: CVarStr var_358
  loc_D0039F: ImpAdCallI2 Format$(, )
  loc_D003A4: CVarStr var_380
  loc_D003A7: ConcatVar var_3A0
  loc_D003AB: LitVarStr var_4C4, "',"
  loc_D003B0: ConcatVar var_3D0
  loc_D003B4: FLdI2 var_A0
  loc_D003B7: CVarI2 var_4D4
  loc_D003BA: ConcatVar var_3E0
  loc_D003BE: LitVarStr var_4E4, ",'Ventanilla','Emitido',"
  loc_D003C3: ConcatVar var_3F0
  loc_D003C7: ILdRf var_B4
  loc_D003CA: CVarI4
  loc_D003CE: ConcatVar var_410
  loc_D003D2: LitVarStr var_548, ","
  loc_D003D7: ConcatVar var_464
  loc_D003DB: FLdI2 var_9E
  loc_D003DE: CI4UI1
  loc_D003DF: CVarI4
  loc_D003E3: PopAdLdVar
  loc_D003E4: LitVarI4
  loc_D003EC: PopAdLdVar
  loc_D003ED: ImpAdLdRf MemVar_D93E08
  loc_D003F0: NewIfNullPr frmPlanesdePago
  loc_D003F3: VCallAd Control_ID_
  loc_D003F6: FStAdFunc var_35C
  loc_D003F9: FLdPr var_35C
  loc_D003FC: LateIdCallLdVar
  loc_D00406: CStrVarTmp
  loc_D00407: CVarStr var_484
  loc_D0040A: ConcatVar var_4A4
  loc_D0040E: LitVarStr var_640, ",'"
  loc_D00413: ConcatVar var_4F8
  loc_D00417: LitVarStr var_724, vbNullString
  loc_D0041C: FStVarCopyObj var_508
  loc_D0041F: FLdRfVar var_508
  loc_D00422: FLdRfVar sTelePers
  loc_D00425: CVarRef
  loc_D0042A: ILdRf sTelePers
  loc_D0042D: LitI4 0
  loc_D00432: GtI4
  loc_D00433: CVarBoolI2 var_68C
  loc_D00437: FLdRfVar var_518
  loc_D0043A: ImpAdCallFPR4  = IIf(, , )
  loc_D0043F: FLdRfVar var_518
  loc_D00442: ConcatVar var_538
  loc_D00446: LitVarStr var_770, "',"
  loc_D0044B: ConcatVar var_558
  loc_D0044F: LitI4 0
  loc_D00454: LitI4 -1
  loc_D00459: LitI4 1
  loc_D0045E: LitStr "."
  loc_D00461: LitStr ","
  loc_D00464: FLdRfVar var_578
  loc_D00467: CStrVarTmp
  loc_D00468: FStStrNoPop var_6A8
  loc_D0046B: CR8Str
  loc_D0046D: CStrR8
  loc_D0046F: FStStrNoPop var_6F0
  loc_D00472: ImpAdCallI2 Replace(, , , , , )
  loc_D00477: CVarStr var_598
  loc_D0047A: ConcatVar var_5B8
  loc_D0047E: LitVarStr var_8C4, ","
  loc_D00483: ConcatVar var_5D4
  loc_D00487: LitI4 0
  loc_D0048C: LitI4 -1
  loc_D00491: LitI4 1
  loc_D00496: LitStr "."
  loc_D00499: LitStr ","
  loc_D0049C: FLdRfVar var_5E4
  loc_D0049F: CStrVarTmp
  loc_D004A0: FStStrNoPop var_6F4
  loc_D004A3: CR8Str
  loc_D004A5: CStrR8
  loc_D004A7: FStStrNoPop var_73C
  loc_D004AA: ImpAdCallI2 Replace(, , , , , )
  loc_D004AF: CVarStr var_604
  loc_D004B2: ConcatVar var_620
  loc_D004B6: LitVarStr var_914, ","
  loc_D004BB: ConcatVar var_630
  loc_D004BF: LitI4 0
  loc_D004C4: LitI4 -1
  loc_D004C9: LitI4 1
  loc_D004CE: LitStr "."
  loc_D004D1: LitStr ","
  loc_D004D4: FLdRfVar var_650
  loc_D004D7: CStrVarTmp
  loc_D004D8: FStStrNoPop var_740
  loc_D004DB: CR8Str
  loc_D004DD: CStrR8
  loc_D004DF: FStStrNoPop var_788
  loc_D004E2: ImpAdCallI2 Replace(, , , , , )
  loc_D004E7: CVarStr var_66C
  loc_D004EA: ConcatVar var_67C
  loc_D004EE: LitVarStr var_964, ","
  loc_D004F3: ConcatVar var_69C
  loc_D004F7: LitI4 0
  loc_D004FC: LitI4 -1
  loc_D00501: LitI4 1
  loc_D00506: LitStr "."
  loc_D00509: LitStr ","
  loc_D0050C: FLdRfVar var_6B8
  loc_D0050F: CStrVarTmp
  loc_D00510: FStStrNoPop var_78C
  loc_D00513: CR8Str
  loc_D00515: CStrR8
  loc_D00517: FStStrNoPop var_7D4
  loc_D0051A: ImpAdCallI2 Replace(, , , , , )
  loc_D0051F: CVarStr var_6C8
  loc_D00522: ConcatVar var_6E8
  loc_D00526: LitVarStr var_9B4, ","
  loc_D0052B: ConcatVar var_704
  loc_D0052F: LitI4 0
  loc_D00534: LitI4 -1
  loc_D00539: LitI4 1
  loc_D0053E: LitStr "."
  loc_D00541: LitStr ","
  loc_D00544: FLdRfVar var_714
  loc_D00547: CStrVarTmp
  loc_D00548: FStStrNoPop var_7D8
  loc_D0054B: CR8Str
  loc_D0054D: CStrR8
  loc_D0054F: FStStrNoPop var_85C
  loc_D00552: ImpAdCallI2 Replace(, , , , , )
  loc_D00557: CVarStr var_734
  loc_D0055A: ConcatVar var_750
  loc_D0055E: LitVarStr var_A04, ",0,"
  loc_D00563: ConcatVar var_760
  loc_D00567: LitI4 0
  loc_D0056C: LitI4 -1
  loc_D00571: LitI4 1
  loc_D00576: LitStr "."
  loc_D00579: LitStr ","
  loc_D0057C: FLdRfVar var_780
  loc_D0057F: CStrVarTmp
  loc_D00580: FStStrNoPop var_864
  loc_D00583: CR8Str
  loc_D00585: CStrR8
  loc_D00587: FStStrNoPop var_868
  loc_D0058A: ImpAdCallI2 Replace(, , , , , )
  loc_D0058F: CVarStr var_79C
  loc_D00592: ConcatVar var_7AC
  loc_D00596: LitVarStr var_A54, ","
  loc_D0059B: ConcatVar var_7CC
  loc_D0059F: LitI4 0
  loc_D005A4: LitI4 -1
  loc_D005A9: LitI4 1
  loc_D005AE: LitStr "."
  loc_D005B1: LitStr ","
  loc_D005B4: FLdRfVar var_7E8
  loc_D005B7: CStrVarTmp
  loc_D005B8: FStStrNoPop var_86C
  loc_D005BB: CR8Str
  loc_D005BD: CStrR8
  loc_D005BF: FStStrNoPop var_870
  loc_D005C2: ImpAdCallI2 Replace(, , , , , )
  loc_D005C7: CVarStr var_7F8
  loc_D005CA: ConcatVar var_818
  loc_D005CE: LitVarStr var_AA4, ",'"
  loc_D005D3: ConcatVar var_838
  loc_D005D7: ImpAdLdI4 MemVar_D9302C
  loc_D005DA: CVarStr var_AB4
  loc_D005DD: ConcatVar var_858
  loc_D005E1: LitVarStr var_AC4, "');"
  loc_D005E6: ConcatVar var_AD4
  loc_D005EA: CStrVarVal var_874
  loc_D005EE: Call EjecutarRsCls(from_stack_1v)
  loc_D005F3: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A8 = "": var_6F0 = "": var_6F4 = "": var_73C = "": var_740 = "": var_788 = "": var_78C = "": var_7D4 = "": var_7D8 = "": var_85C = "": var_864 = "": var_868 = "": var_86C = "": var_870 = ""
  loc_D0062E: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = "": var_5BC = "": var_608 = "": var_654 = "": var_6A0 = ""
  loc_D0064B: FFreeVar var_858 = "": var_AD4 = "": var_538 = "": var_578 = "": var_558 = "": var_598 = "": var_5B8 = "": var_5E4 = "": var_5D4 = "": var_604 = "": var_620 = "": var_650 = "": var_630 = "": var_66C = "": var_67C = "": var_6B8 = "": var_69C = "": var_6C8 = "": var_6E8 = "": var_714 = "": var_704 = "": var_734 = "": var_750 = "": var_780 = "": var_760 = "": var_79C = "": var_7AC = "": var_7E8 = "": var_7CC = "": var_7F8 = "": var_818 = "": var_838 = "": var_1D4 = "": var_1E4 = "": var_348 = "": var_228 = "": var_238 = "": var_268 = "": var_248 = "": var_280 = "": var_2B0 = "": var_290 = "": var_2C4 = "": var_318 = "": var_338 = "": var_358 = "": var_370 = "": var_328 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_474 = "": var_464 = "": var_484 = "": var_4A4 = "": var_68C = "": var_508 = "": var_4F8 = ""
  loc_D006CA: FLdI2 var_9E
  loc_D006CD: CI4UI1
  loc_D006CE: CVarI4
  loc_D006D2: PopAdLdVar
  loc_D006D3: LitVarI4
  loc_D006DB: PopAdLdVar
  loc_D006DC: ImpAdLdRf MemVar_D93E08
  loc_D006DF: NewIfNullPr frmPlanesdePago
  loc_D006E2: VCallAd Control_ID_
  loc_D006E5: FStAdFunc var_200
  loc_D006E8: FLdPr var_200
  loc_D006EB: LateIdCallLdVar
  loc_D006F5: CStrVarTmp
  loc_D006F6: FStStrNoPop var_1E8
  loc_D006F9: CR8Str
  loc_D006FB: FStFPR8 var_BC
  loc_D006FE: FFree1Str var_1E8
  loc_D00701: FFree1Ad var_200
  loc_D00704: FFree1Var var_1D4 = ""
  loc_D00707: LitI2_Byte 0
  loc_D00709: CR8I2
  loc_D0070A: FStFPR8 var_19C
  loc_D0070D: FLdI2 var_9E
  loc_D00710: CI4UI1
  loc_D00711: CVarI4
  loc_D00715: PopAdLdVar
  loc_D00716: LitVarI4
  loc_D0071E: PopAdLdVar
  loc_D0071F: ImpAdLdRf MemVar_D93E08
  loc_D00722: NewIfNullPr frmPlanesdePago
  loc_D00725: VCallAd Control_ID_
  loc_D00728: FStAdFunc var_200
  loc_D0072B: FLdPr var_200
  loc_D0072E: LateIdCallLdVar
  loc_D00738: CStrVarTmp
  loc_D00739: FStStrNoPop var_1E8
  loc_D0073C: CR8Str
  loc_D0073E: FStFPR8 var_18C
  loc_D00741: FFree1Str var_1E8
  loc_D00744: FFree1Ad var_200
  loc_D00747: FFree1Var var_1D4 = ""
  loc_D0074A: FLdI2 var_9E
  loc_D0074D: CI4UI1
  loc_D0074E: CVarI4
  loc_D00752: PopAdLdVar
  loc_D00753: LitVarI4
  loc_D0075B: PopAdLdVar
  loc_D0075C: ImpAdLdRf MemVar_D93E08
  loc_D0075F: NewIfNullPr frmPlanesdePago
  loc_D00762: VCallAd Control_ID_
  loc_D00765: FStAdFunc var_200
  loc_D00768: FLdPr var_200
  loc_D0076B: LateIdCallLdVar
  loc_D00775: CStrVarTmp
  loc_D00776: FStStrNoPop var_1E8
  loc_D00779: CR8Str
  loc_D0077B: FStFPR8 var_194
  loc_D0077E: FFree1Str var_1E8
  loc_D00781: FFree1Ad var_200
  loc_D00784: FFree1Var var_1D4 = ""
  loc_D00787: FLdI2 var_9E
  loc_D0078A: CI4UI1
  loc_D0078B: CVarI4
  loc_D0078F: PopAdLdVar
  loc_D00790: LitVarI4
  loc_D00798: PopAdLdVar
  loc_D00799: ImpAdLdRf MemVar_D93E08
  loc_D0079C: NewIfNullPr frmPlanesdePago
  loc_D0079F: VCallAd Control_ID_
  loc_D007A2: FStAdFunc var_200
  loc_D007A5: FLdPr var_200
  loc_D007A8: LateIdCallLdVar
  loc_D007B2: CStrVarTmp
  loc_D007B3: FStStrNoPop var_1E8
  loc_D007B6: CR8Str
  loc_D007B8: FStFPR8 var_1AC
  loc_D007BB: FFree1Str var_1E8
  loc_D007BE: FFree1Ad var_200
  loc_D007C1: FFree1Var var_1D4 = ""
  loc_D007C4: FLdI2 var_9E
  loc_D007C7: CI4UI1
  loc_D007C8: CVarI4
  loc_D007CC: PopAdLdVar
  loc_D007CD: LitVarI4
  loc_D007D5: PopAdLdVar
  loc_D007D6: ImpAdLdRf MemVar_D93E08
  loc_D007D9: NewIfNullPr frmPlanesdePago
  loc_D007DC: VCallAd Control_ID_
  loc_D007DF: FStAdFunc var_200
  loc_D007E2: FLdPr var_200
  loc_D007E5: LateIdCallLdVar
  loc_D007EF: CStrVarTmp
  loc_D007F0: FStStrNoPop var_1E8
  loc_D007F3: CR8Str
  loc_D007F5: FStFPR8 var_1A4
  loc_D007F8: FFree1Str var_1E8
  loc_D007FB: FFree1Ad var_200
  loc_D007FE: FFree1Var var_1D4 = ""
  loc_D00801: LitI4 2
  loc_D00806: FLdFPR8 var_BC
  loc_D00809: FLdFPR8 var_19C
  loc_D0080C: SubR4
  loc_D0080D: FLdFPR8 var_18C
  loc_D00810: AddR8
  loc_D00811: FLdFPR8 var_194
  loc_D00814: SubR4
  loc_D00815: FLdFPR8 var_1A4
  loc_D00818: AddR8
  loc_D00819: CVarR8
  loc_D0081D: FLdRfVar var_1E4
  loc_D00820: ImpAdCallFPR4  = Round(, )
  loc_D00825: FLdRfVar var_1E4
  loc_D00828: CR4Var
  loc_D00829: FStFPR8 var_1B4
  loc_D0082C: FFreeVar var_1D4 = ""
  loc_D00833: LitI4 2
  loc_D00838: FLdFPR8 var_150
  loc_D0083B: FLdFPR8 var_BC
  loc_D0083E: AddR8
  loc_D0083F: CVarR8
  loc_D00843: FLdRfVar var_1E4
  loc_D00846: ImpAdCallFPR4  = Round(, )
  loc_D0084B: FLdRfVar var_1E4
  loc_D0084E: CR4Var
  loc_D0084F: FStFPR8 var_150
  loc_D00852: FFreeVar var_1D4 = ""
  loc_D00859: LitI4 2
  loc_D0085E: FLdFPR8 var_158
  loc_D00861: FLdFPR8 var_19C
  loc_D00864: AddR8
  loc_D00865: FLdFPR8 var_194
  loc_D00868: AddR8
  loc_D00869: CVarR8
  loc_D0086D: FLdRfVar var_1E4
  loc_D00870: ImpAdCallFPR4  = Round(, )
  loc_D00875: FLdRfVar var_1E4
  loc_D00878: CR4Var
  loc_D00879: FStFPR8 var_158
  loc_D0087C: FFreeVar var_1D4 = ""
  loc_D00883: LitI4 2
  loc_D00888: FLdFPR8 var_160
  loc_D0088B: FLdFPR8 var_18C
  loc_D0088E: AddR8
  loc_D0088F: CVarR8
  loc_D00893: FLdRfVar var_1E4
  loc_D00896: ImpAdCallFPR4  = Round(, )
  loc_D0089B: FLdRfVar var_1E4
  loc_D0089E: CR4Var
  loc_D0089F: FStFPR8 var_160
  loc_D008A2: FFreeVar var_1D4 = ""
  loc_D008A9: LitI4 2
  loc_D008AE: FLdFPR8 var_168
  loc_D008B1: FLdFPR8 var_1A4
  loc_D008B4: AddR8
  loc_D008B5: CVarR8
  loc_D008B9: FLdRfVar var_1E4
  loc_D008BC: ImpAdCallFPR4  = Round(, )
  loc_D008C1: FLdRfVar var_1E4
  loc_D008C4: CR4Var
  loc_D008C5: FStFPR8 var_168
  loc_D008C8: FFreeVar var_1D4 = ""
  loc_D008CF: LitI4 2
  loc_D008D4: FLdFPR8 var_170
  loc_D008D7: FLdFPR8 var_1B4
  loc_D008DA: AddR8
  loc_D008DB: CVarR8
  loc_D008DF: FLdRfVar var_1E4
  loc_D008E2: ImpAdCallFPR4  = Round(, )
  loc_D008E7: FLdRfVar var_1E4
  loc_D008EA: CR4Var
  loc_D008EB: FStFPR8 var_170
  loc_D008EE: FFreeVar var_1D4 = ""
  loc_D008F5: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, ApreDebo, TotaDebo) "
  loc_D008F8: LitStr " VALUES ("
  loc_D008FB: ConcatStr
  loc_D008FC: FStStrNoPop var_1E8
  loc_D008FF: FLdI2 var_AA
  loc_D00902: CStrUI1
  loc_D00904: FStStrNoPop var_1EC
  loc_D00907: ConcatStr
  loc_D00908: FStStrNoPop var_1F0
  loc_D0090B: LitStr ","
  loc_D0090E: ConcatStr
  loc_D0090F: FStStrNoPop var_1F4
  loc_D00912: ILdRf var_B0
  loc_D00915: CStrI4
  loc_D00917: FStStrNoPop var_1F8
  loc_D0091A: ConcatStr
  loc_D0091B: FStStrNoPop var_270
  loc_D0091E: LitStr ","
  loc_D00921: ConcatStr
  loc_D00922: FStStrNoPop var_360
  loc_D00925: FLdI2 var_AA
  loc_D00928: CStrUI1
  loc_D0092A: FStStrNoPop var_5C0
  loc_D0092D: ConcatStr
  loc_D0092E: FStStrNoPop var_5C4
  loc_D00931: LitStr ","
  loc_D00934: ConcatStr
  loc_D00935: FStStrNoPop var_60C
  loc_D00938: FLdI2 var_9E
  loc_D0093B: CI4UI1
  loc_D0093C: CVarI4
  loc_D00940: PopAdLdVar
  loc_D00941: LitVarI4
  loc_D00949: PopAdLdVar
  loc_D0094A: ImpAdLdRf MemVar_D93E08
  loc_D0094D: NewIfNullPr frmPlanesdePago
  loc_D00950: VCallAd Control_ID_
  loc_D00953: FStAdFunc var_200
  loc_D00956: FLdPr var_200
  loc_D00959: LateIdCallLdVar
  loc_D00963: CStrVarTmp
  loc_D00964: FStStrNoPop var_610
  loc_D00967: ConcatStr
  loc_D00968: FStStrNoPop var_658
  loc_D0096B: LitStr ",1,1,1,"
  loc_D0096E: ConcatStr
  loc_D0096F: FStStrNoPop var_65C
  loc_D00972: FLdI2 var_9E
  loc_D00975: CI4UI1
  loc_D00976: CVarI4
  loc_D0097A: PopAdLdVar
  loc_D0097B: LitVarI4
  loc_D00983: PopAdLdVar
  loc_D00984: ImpAdLdRf MemVar_D93E08
  loc_D00987: NewIfNullPr frmPlanesdePago
  loc_D0098A: VCallAd Control_ID_
  loc_D0098D: FStAdFunc var_204
  loc_D00990: FLdPr var_204
  loc_D00993: LateIdCallLdVar
  loc_D0099D: CStrVarTmp
  loc_D0099E: FStStrNoPop var_6A4
  loc_D009A1: ConcatStr
  loc_D009A2: FStStrNoPop var_6A8
  loc_D009A5: LitStr ",'"
  loc_D009A8: ConcatStr
  loc_D009A9: FStStrNoPop var_6F0
  loc_D009AC: FLdI2 var_9E
  loc_D009AF: CI4UI1
  loc_D009B0: CVarI4
  loc_D009B4: PopAdLdVar
  loc_D009B5: LitVarI4
  loc_D009BD: PopAdLdVar
  loc_D009BE: ImpAdLdRf MemVar_D93E08
  loc_D009C1: NewIfNullPr frmPlanesdePago
  loc_D009C4: VCallAd Control_ID_
  loc_D009C7: FStAdFunc var_26C
  loc_D009CA: FLdPr var_26C
  loc_D009CD: LateIdCallLdVar
  loc_D009D7: CStrVarTmp
  loc_D009D8: FStStrNoPop var_6F4
  loc_D009DB: ConcatStr
  loc_D009DC: FStStrNoPop var_73C
  loc_D009DF: LitStr "','Aforos Varios',"
  loc_D009E2: ConcatStr
  loc_D009E3: FStStrNoPop var_740
  loc_D009E6: ILdRf var_B4
  loc_D009E9: CStrI4
  loc_D009EB: FStStrNoPop var_788
  loc_D009EE: ConcatStr
  loc_D009EF: FStStrNoPop var_78C
  loc_D009F2: LitStr ","
  loc_D009F5: ConcatStr
  loc_D009F6: FStStrNoPop var_7D4
  loc_D009F9: FLdI2 var_9E
  loc_D009FC: CI4UI1
  loc_D009FD: CVarI4
  loc_D00A01: PopAdLdVar
  loc_D00A02: LitVarI4
  loc_D00A0A: PopAdLdVar
  loc_D00A0B: ImpAdLdRf MemVar_D93E08
  loc_D00A0E: NewIfNullPr frmPlanesdePago
  loc_D00A11: VCallAd Control_ID_
  loc_D00A14: FStAdFunc var_2B4
  loc_D00A17: FLdPr var_2B4
  loc_D00A1A: LateIdCallLdVar
  loc_D00A24: CStrVarTmp
  loc_D00A25: FStStrNoPop var_7D8
  loc_D00A28: ConcatStr
  loc_D00A29: FStStrNoPop var_85C
  loc_D00A2C: LitStr ",0,2,"
  loc_D00A2F: ConcatStr
  loc_D00A30: FStStrNoPop var_864
  loc_D00A33: ImpAdLdI2 MemVar_D93034
  loc_D00A36: CStrUI1
  loc_D00A38: FStStrNoPop var_868
  loc_D00A3B: ConcatStr
  loc_D00A3C: FStStrNoPop var_86C
  loc_D00A3F: LitStr ",'"
  loc_D00A42: ConcatStr
  loc_D00A43: FStStrNoPop var_870
  loc_D00A46: ILdRf var_E0
  loc_D00A49: ConcatStr
  loc_D00A4A: FStStrNoPop var_874
  loc_D00A4D: LitStr "',"
  loc_D00A50: ConcatStr
  loc_D00A51: FStStrNoPop var_87C
  loc_D00A54: LitI4 0
  loc_D00A59: LitI4 -1
  loc_D00A5E: LitI4 1
  loc_D00A63: LitStr "."
  loc_D00A66: LitStr ","
  loc_D00A69: FLdFPR8 var_BC
  loc_D00A6C: CStrR8
  loc_D00A6E: FStStrNoPop var_878
  loc_D00A71: ImpAdCallI2 Replace(, , , , , )
  loc_D00A76: FStStrNoPop var_880
  loc_D00A79: ConcatStr
  loc_D00A7A: FStStrNoPop var_884
  loc_D00A7D: LitStr ","
  loc_D00A80: ConcatStr
  loc_D00A81: FStStrNoPop var_88C
  loc_D00A84: LitI4 0
  loc_D00A89: LitI4 -1
  loc_D00A8E: LitI4 1
  loc_D00A93: LitStr "."
  loc_D00A96: LitStr ","
  loc_D00A99: FLdFPR8 var_19C
  loc_D00A9C: CStrR8
  loc_D00A9E: FStStrNoPop var_888
  loc_D00AA1: ImpAdCallI2 Replace(, , , , , )
  loc_D00AA6: FStStrNoPop var_890
  loc_D00AA9: ConcatStr
  loc_D00AAA: FStStrNoPop var_894
  loc_D00AAD: LitStr ","
  loc_D00AB0: ConcatStr
  loc_D00AB1: FStStrNoPop var_89C
  loc_D00AB4: LitI4 0
  loc_D00AB9: LitI4 -1
  loc_D00ABE: LitI4 1
  loc_D00AC3: LitStr "."
  loc_D00AC6: LitStr ","
  loc_D00AC9: FLdFPR8 var_18C
  loc_D00ACC: CStrR8
  loc_D00ACE: FStStrNoPop var_898
  loc_D00AD1: ImpAdCallI2 Replace(, , , , , )
  loc_D00AD6: FStStrNoPop var_8A0
  loc_D00AD9: ConcatStr
  loc_D00ADA: FStStrNoPop var_8A4
  loc_D00ADD: LitStr ","
  loc_D00AE0: ConcatStr
  loc_D00AE1: FStStrNoPop var_8AC
  loc_D00AE4: LitI4 0
  loc_D00AE9: LitI4 -1
  loc_D00AEE: LitI4 1
  loc_D00AF3: LitStr "."
  loc_D00AF6: LitStr ","
  loc_D00AF9: FLdFPR8 var_194
  loc_D00AFC: CStrR8
  loc_D00AFE: FStStrNoPop var_8A8
  loc_D00B01: ImpAdCallI2 Replace(, , , , , )
  loc_D00B06: FStStrNoPop var_8B0
  loc_D00B09: ConcatStr
  loc_D00B0A: FStStrNoPop var_8B4
  loc_D00B0D: LitStr ","
  loc_D00B10: ConcatStr
  loc_D00B11: FStStrNoPop var_ADC
  loc_D00B14: LitI4 0
  loc_D00B19: LitI4 -1
  loc_D00B1E: LitI4 1
  loc_D00B23: LitStr "."
  loc_D00B26: LitStr ","
  loc_D00B29: FLdFPR8 var_1A4
  loc_D00B2C: CStrR8
  loc_D00B2E: FStStrNoPop var_AD8
  loc_D00B31: ImpAdCallI2 Replace(, , , , , )
  loc_D00B36: FStStrNoPop var_AE0
  loc_D00B39: ConcatStr
  loc_D00B3A: FStStrNoPop var_AE4
  loc_D00B3D: LitStr ",0,0,0,"
  loc_D00B40: ConcatStr
  loc_D00B41: FStStrNoPop var_AEC
  loc_D00B44: LitI4 0
  loc_D00B49: LitI4 -1
  loc_D00B4E: LitI4 1
  loc_D00B53: LitStr "."
  loc_D00B56: LitStr ","
  loc_D00B59: FLdFPR8 var_1B4
  loc_D00B5C: CStrR8
  loc_D00B5E: FStStrNoPop var_AE8
  loc_D00B61: ImpAdCallI2 Replace(, , , , , )
  loc_D00B66: FStStrNoPop var_AF0
  loc_D00B69: ConcatStr
  loc_D00B6A: FStStrNoPop var_AF4
  loc_D00B6D: LitStr ");"
  loc_D00B70: ConcatStr
  loc_D00B71: FStStrNoPop var_AF8
  loc_D00B74: Call EjecutarRsCls(from_stack_1v)
  loc_D00B79: FFreeStr var_87C = "": var_880 = "": var_884 = "": var_888 = "": var_88C = "": var_890 = "": var_894 = "": var_898 = "": var_89C = "": var_8A0 = "": var_8A4 = "": var_8A8 = "": var_8AC = "": var_8B0 = "": var_8B4 = "": var_AD8 = "": var_ADC = "": var_AE0 = "": var_AE4 = "": var_AE8 = "": var_AEC = "": var_AF0 = "": var_AF4 = "": var_AF8 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A4 = "": var_6A8 = "": var_6F0 = "": var_6F4 = "": var_73C = "": var_740 = "": var_788 = "": var_78C = "": var_7D4 = "": var_7D8 = "": var_85C = "": var_864 = "": var_868 = "": var_86C = "": var_870 = "": var_874 = ""
  loc_D00BE8: FFreeAd var_200 = "": var_204 = "": var_26C = ""
  loc_D00BF3: FFreeVar var_1D4 = "": var_1E4 = "": var_228 = ""
  loc_D00BFE: FLdRfVar var_1E8
  loc_D00C01: ImpAdLdRf MemVar_D93E08
  loc_D00C04: NewIfNullPr frmPlanesdePago
  loc_D00C07: VCallAd Control_ID_
  loc_D00C0A: FStAdFunc var_200
  loc_D00C0D: FLdPr var_200
  loc_D00C10:  = frmPlanesdePago.TextBox.Text
  loc_D00C15: ILdRf var_1E8
  loc_D00C18: CR8Str
  loc_D00C1A: LitI2_Byte 1
  loc_D00C1C: CR8I2
  loc_D00C1D: EqR4
  loc_D00C1E: FLdRfVar var_1EC
  loc_D00C21: ImpAdLdRf MemVar_D93E08
  loc_D00C24: NewIfNullPr frmPlanesdePago
  loc_D00C27: VCallAd Control_ID_
  loc_D00C2A: FStAdFunc var_204
  loc_D00C2D: FLdPr var_204
  loc_D00C30:  = frmPlanesdePago.TextBox.Text
  loc_D00C35: ILdRf var_1EC
  loc_D00C38: CR8Str
  loc_D00C3A: LitI2_Byte 0
  loc_D00C3C: CR8I2
  loc_D00C3D: EqR4
  loc_D00C3E: AndI4
  loc_D00C3F: FFreeStr var_1E8 = ""
  loc_D00C46: FFreeAd var_200 = ""
  loc_D00C4D: BranchF loc_D00C53
  loc_D00C50: Branch loc_D01BDD
  loc_D00C53: FLdRfVar var_1E8
  loc_D00C56: ImpAdLdRf MemVar_D93E08
  loc_D00C59: NewIfNullPr frmPlanesdePago
  loc_D00C5C: VCallAd Control_ID_
  loc_D00C5F: FStAdFunc var_200
  loc_D00C62: FLdPr var_200
  loc_D00C65:  = frmPlanesdePago.TextBox.Text
  loc_D00C6A: ILdRf var_1E8
  loc_D00C6D: CR8Str
  loc_D00C6F: LitI2_Byte 0
  loc_D00C71: CR8I2
  loc_D00C72: GtR4
  loc_D00C73: FLdI2 var_9E
  loc_D00C76: CI4UI1
  loc_D00C77: CVarI4
  loc_D00C7B: PopAdLdVar
  loc_D00C7C: LitVarI4
  loc_D00C84: PopAdLdVar
  loc_D00C85: ImpAdLdRf MemVar_D93E08
  loc_D00C88: NewIfNullPr frmPlanesdePago
  loc_D00C8B: VCallAd Control_ID_
  loc_D00C8E: FStAdFunc var_204
  loc_D00C91: FLdPr var_204
  loc_D00C94: LateIdCallLdVar
  loc_D00C9E: CStrVarTmp
  loc_D00C9F: FStStrNoPop var_1EC
  loc_D00CA2: CR8Str
  loc_D00CA4: LitI2_Byte 0
  loc_D00CA6: CR8I2
  loc_D00CA7: GtR4
  loc_D00CA8: AndI4
  loc_D00CA9: FFreeStr var_1E8 = ""
  loc_D00CB0: FFreeAd var_200 = ""
  loc_D00CB7: FFree1Var var_1D4 = ""
  loc_D00CBA: BranchF loc_D01BDD
  loc_D00CBD: LitStr "SELECT NumeApre, SaldCtct, RecaCtct FROM tmp_ctacteapremio"
  loc_D00CC0: Call EjecutarRsCls1(from_stack_1v)
  loc_D00CC5: FLdRfVar var_1FC
  loc_D00CC8: FLdPr Me
  loc_D00CCB: MemLdPr global_64
  loc_D00CCE:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D00CD3: ILdRf var_1FC
  loc_D00CD6: LitI4 0
  loc_D00CDB: GtI4
  loc_D00CDC: BranchF loc_D01BDD
  loc_D00CDF: FLdRfVar var_85E
  loc_D00CE2: FLdPr Me
  loc_D00CE5: MemLdPr global_64
  loc_D00CE8:  = Me.EOF
  loc_D00CED: FLdI2 var_85E
  loc_D00CF0: NotI4
  loc_D00CF1: BranchF loc_D01BDD
  loc_D00CF4: FLdRfVar var_1D4
  loc_D00CF7: FLdRfVar var_204
  loc_D00CFA: LitVarStr var_1C4, "NumeApre"
  loc_D00CFF: PopAdLdVar
  loc_D00D00: FLdRfVar var_200
  loc_D00D03: FLdPr Me
  loc_D00D06: MemLdPr global_64
  loc_D00D09:  = Me.Fields
  loc_D00D0E: FLdPr var_200
  loc_D00D11: from_stack_2 = Me.Item(from_stack_1)
  loc_D00D16: FLdPr var_204
  loc_D00D19:  = Me.Value
  loc_D00D1E: FLdRfVar var_1E4
  loc_D00D21: FLdRfVar var_2B4
  loc_D00D24: LitVarStr var_218, "SaldCtct"
  loc_D00D29: PopAdLdVar
  loc_D00D2A: FLdRfVar var_26C
  loc_D00D2D: FLdPr Me
  loc_D00D30: MemLdPr global_64
  loc_D00D33:  = Me.Fields
  loc_D00D38: FLdPr var_26C
  loc_D00D3B: from_stack_2 = Me.Item(from_stack_1)
  loc_D00D40: FLdPr var_2B4
  loc_D00D43:  = Me.Value
  loc_D00D48: FLdRfVar var_228
  loc_D00D4B: FLdRfVar var_35C
  loc_D00D4E: LitVarStr var_258, "RecaCtct"
  loc_D00D53: PopAdLdVar
  loc_D00D54: FLdRfVar var_308
  loc_D00D57: FLdPr Me
  loc_D00D5A: MemLdPr global_64
  loc_D00D5D:  = Me.Fields
  loc_D00D62: FLdPr var_308
  loc_D00D65: from_stack_2 = Me.Item(from_stack_1)
  loc_D00D6A: FLdPr var_35C
  loc_D00D6D:  = Me.Value
  loc_D00D72: FLdRfVar var_238
  loc_D00D75: FLdRfVar var_228
  loc_D00D78: CR4Var
  loc_D00D79: PopFPR8
  loc_D00D7A: FLdRfVar var_1E4
  loc_D00D7D: CR4Var
  loc_D00D7E: PopFPR8
  loc_D00D7F: FLdRfVar var_1D4
  loc_D00D82: CI4Var
  loc_D00D84: FLdRfVar var_9C
  loc_D00D87: NewIfNullPr clsapremio
  loc_D00D8A: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D00D8F: FLdRfVar var_238
  loc_D00D92: FStVar var_184
  loc_D00D96: FFreeAd var_200 = "": var_26C = "": var_308 = "": var_204 = "": var_2B4 = ""
  loc_D00DA5: FFreeVar var_1D4 = "": var_1E4 = ""
  loc_D00DAE: FLdRfVar var_85E
  loc_D00DB1: FLdRfVar var_1D4
  loc_D00DB4: FLdRfVar var_204
  loc_D00DB7: LitVarStr var_1C4, "NumeApre"
  loc_D00DBC: PopAdLdVar
  loc_D00DBD: FLdRfVar var_200
  loc_D00DC0: FLdPr Me
  loc_D00DC3: MemLdPr global_64
  loc_D00DC6:  = Me.Fields
  loc_D00DCB: FLdPr var_200
  loc_D00DCE: from_stack_2 = Me.Item(from_stack_1)
  loc_D00DD3: FLdPr var_204
  loc_D00DD6:  = Me.Value
  loc_D00DDB: FLdRfVar var_1D4
  loc_D00DDE: CI4Var
  loc_D00DE0: FLdRfVar var_9C
  loc_D00DE3: NewIfNullPr clsapremio
  loc_D00DE6: from_stack_2v = clsapremio.BuscaInstanciaApremio(from_stack_1v)
  loc_D00DEB: FLdI2 var_85E
  loc_D00DEE: FStI2 var_C6
  loc_D00DF1: FFreeAd var_200 = ""
  loc_D00DF8: FFree1Var var_1D4 = ""
  loc_D00DFB: LitVarI2 var_1C4, 1
  loc_D00E00: PopAdLdVar
  loc_D00E01: FLdRfVar var_184
  loc_D00E04: VarIndexLdVar
  loc_D00E0A: CR4Var
  loc_D00E0B: FStFPR8 var_100
  loc_D00E0E: FFree1Var var_1D4 = ""
  loc_D00E11: LitVarI2 var_1C4, 2
  loc_D00E16: PopAdLdVar
  loc_D00E17: FLdRfVar var_184
  loc_D00E1A: VarIndexLdVar
  loc_D00E20: CR4Var
  loc_D00E21: FStFPR8 var_108
  loc_D00E24: FFree1Var var_1D4 = ""
  loc_D00E27: LitVarI2 var_1C4, 3
  loc_D00E2C: PopAdLdVar
  loc_D00E2D: FLdRfVar var_184
  loc_D00E30: VarIndexLdVar
  loc_D00E36: CR4Var
  loc_D00E37: FStFPR8 var_110
  loc_D00E3A: FFree1Var var_1D4 = ""
  loc_D00E3D: LitVarI2 var_1C4, 4
  loc_D00E42: PopAdLdVar
  loc_D00E43: FLdRfVar var_184
  loc_D00E46: VarIndexLdVar
  loc_D00E4C: CR4Var
  loc_D00E4D: FStFPR8 var_118
  loc_D00E50: FFree1Var var_1D4 = ""
  loc_D00E53: LitVarI2 var_1C4, 5
  loc_D00E58: PopAdLdVar
  loc_D00E59: FLdRfVar var_184
  loc_D00E5C: VarIndexLdVar
  loc_D00E62: CR4Var
  loc_D00E63: FStFPR8 var_120
  loc_D00E66: FFree1Var var_1D4 = ""
  loc_D00E69: LitVarI2 var_1C4, 6
  loc_D00E6E: PopAdLdVar
  loc_D00E6F: FLdRfVar var_184
  loc_D00E72: VarIndexLdVar
  loc_D00E78: CR4Var
  loc_D00E79: FStFPR8 var_128
  loc_D00E7C: FFree1Var var_1D4 = ""
  loc_D00E7F: LitVarI2 var_1C4, 7
  loc_D00E84: PopAdLdVar
  loc_D00E85: FLdRfVar var_184
  loc_D00E88: VarIndexLdVar
  loc_D00E8E: CR4Var
  loc_D00E8F: FStFPR8 var_130
  loc_D00E92: FFree1Var var_1D4 = ""
  loc_D00E95: LitVarI2 var_1C4, 8
  loc_D00E9A: PopAdLdVar
  loc_D00E9B: FLdRfVar var_184
  loc_D00E9E: VarIndexLdVar
  loc_D00EA4: CR4Var
  loc_D00EA5: FStFPR8 var_138
  loc_D00EA8: FFree1Var var_1D4 = ""
  loc_D00EAB: FLdRfVar var_1E8
  loc_D00EAE: ImpAdLdRf MemVar_D93E08
  loc_D00EB1: NewIfNullPr frmPlanesdePago
  loc_D00EB4: VCallAd Control_ID_
  loc_D00EB7: FStAdFunc var_200
  loc_D00EBA: FLdPr var_200
  loc_D00EBD:  = frmPlanesdePago.TextBox.Text
  loc_D00EC2: ILdRf var_1E8
  loc_D00EC5: CR8Str
  loc_D00EC7: LitI2_Byte 2
  loc_D00EC9: CR8I2
  loc_D00ECA: LeR8
  loc_D00ECB: FFree1Str var_1E8
  loc_D00ECE: FFree1Ad var_200
  loc_D00ED1: BranchF loc_D01007
  loc_D00ED4: LitI4 2
  loc_D00ED9: FLdFPR8 var_100
  loc_D00EDC: LitI2_Byte 2
  loc_D00EDE: CR8I2
  loc_D00EDF: DivR8
  loc_D00EE0: CVarR8
  loc_D00EE4: FLdRfVar var_1E4
  loc_D00EE7: ImpAdCallFPR4  = Round(, )
  loc_D00EEC: FLdRfVar var_1E4
  loc_D00EEF: CR4Var
  loc_D00EF0: FStFPR8 var_100
  loc_D00EF3: FFreeVar var_1D4 = ""
  loc_D00EFA: LitI4 2
  loc_D00EFF: FLdFPR8 var_108
  loc_D00F02: LitI2_Byte 2
  loc_D00F04: CR8I2
  loc_D00F05: DivR8
  loc_D00F06: CVarR8
  loc_D00F0A: FLdRfVar var_1E4
  loc_D00F0D: ImpAdCallFPR4  = Round(, )
  loc_D00F12: FLdRfVar var_1E4
  loc_D00F15: CR4Var
  loc_D00F16: FStFPR8 var_108
  loc_D00F19: FFreeVar var_1D4 = ""
  loc_D00F20: LitI4 2
  loc_D00F25: FLdFPR8 var_110
  loc_D00F28: LitI2_Byte 2
  loc_D00F2A: CR8I2
  loc_D00F2B: DivR8
  loc_D00F2C: CVarR8
  loc_D00F30: FLdRfVar var_1E4
  loc_D00F33: ImpAdCallFPR4  = Round(, )
  loc_D00F38: FLdRfVar var_1E4
  loc_D00F3B: CR4Var
  loc_D00F3C: FStFPR8 var_110
  loc_D00F3F: FFreeVar var_1D4 = ""
  loc_D00F46: LitI4 2
  loc_D00F4B: FLdFPR8 var_118
  loc_D00F4E: LitI2_Byte 2
  loc_D00F50: CR8I2
  loc_D00F51: DivR8
  loc_D00F52: CVarR8
  loc_D00F56: FLdRfVar var_1E4
  loc_D00F59: ImpAdCallFPR4  = Round(, )
  loc_D00F5E: FLdRfVar var_1E4
  loc_D00F61: CR4Var
  loc_D00F62: FStFPR8 var_118
  loc_D00F65: FFreeVar var_1D4 = ""
  loc_D00F6C: LitI4 2
  loc_D00F71: FLdFPR8 var_120
  loc_D00F74: LitI2_Byte 2
  loc_D00F76: CR8I2
  loc_D00F77: DivR8
  loc_D00F78: CVarR8
  loc_D00F7C: FLdRfVar var_1E4
  loc_D00F7F: ImpAdCallFPR4  = Round(, )
  loc_D00F84: FLdRfVar var_1E4
  loc_D00F87: CR4Var
  loc_D00F88: FStFPR8 var_120
  loc_D00F8B: FFreeVar var_1D4 = ""
  loc_D00F92: LitI4 2
  loc_D00F97: FLdFPR8 var_128
  loc_D00F9A: LitI2_Byte 2
  loc_D00F9C: CR8I2
  loc_D00F9D: DivR8
  loc_D00F9E: CVarR8
  loc_D00FA2: FLdRfVar var_1E4
  loc_D00FA5: ImpAdCallFPR4  = Round(, )
  loc_D00FAA: FLdRfVar var_1E4
  loc_D00FAD: CR4Var
  loc_D00FAE: FStFPR8 var_128
  loc_D00FB1: FFreeVar var_1D4 = ""
  loc_D00FB8: LitI4 2
  loc_D00FBD: FLdFPR8 var_130
  loc_D00FC0: LitI2_Byte 2
  loc_D00FC2: CR8I2
  loc_D00FC3: DivR8
  loc_D00FC4: CVarR8
  loc_D00FC8: FLdRfVar var_1E4
  loc_D00FCB: ImpAdCallFPR4  = Round(, )
  loc_D00FD0: FLdRfVar var_1E4
  loc_D00FD3: CR4Var
  loc_D00FD4: FStFPR8 var_130
  loc_D00FD7: FFreeVar var_1D4 = ""
  loc_D00FDE: LitI4 2
  loc_D00FE3: FLdFPR8 var_138
  loc_D00FE6: LitI2_Byte 2
  loc_D00FE8: CR8I2
  loc_D00FE9: DivR8
  loc_D00FEA: CVarR8
  loc_D00FEE: FLdRfVar var_1E4
  loc_D00FF1: ImpAdCallFPR4  = Round(, )
  loc_D00FF6: FLdRfVar var_1E4
  loc_D00FF9: CR4Var
  loc_D00FFA: FStFPR8 var_138
  loc_D00FFD: FFreeVar var_1D4 = ""
  loc_D01004: Branch loc_D0116C
  loc_D01007: FLdRfVar var_1E8
  loc_D0100A: ImpAdLdRf MemVar_D93E08
  loc_D0100D: NewIfNullPr frmPlanesdePago
  loc_D01010: VCallAd Control_ID_
  loc_D01013: FStAdFunc var_200
  loc_D01016: FLdPr var_200
  loc_D01019:  = frmPlanesdePago.TextBox.Text
  loc_D0101E: ILdRf var_1E8
  loc_D01021: CR8Str
  loc_D01023: LitI2_Byte 3
  loc_D01025: CR8I2
  loc_D01026: GeR8
  loc_D01027: FFree1Str var_1E8
  loc_D0102A: FFree1Ad var_200
  loc_D0102D: BranchF loc_D0116C
  loc_D01030: LitI2_Byte 0
  loc_D01032: CR8I2
  loc_D01033: FStFPR8 var_100
  loc_D01036: LitI2_Byte 0
  loc_D01038: CR8I2
  loc_D01039: FStFPR8 var_108
  loc_D0103C: LitI2_Byte 0
  loc_D0103E: CR8I2
  loc_D0103F: FStFPR8 var_110
  loc_D01042: LitI2_Byte 0
  loc_D01044: CR8I2
  loc_D01045: FStFPR8 var_118
  loc_D01048: FLdRfVar var_1E8
  loc_D0104B: ImpAdLdRf MemVar_D93E08
  loc_D0104E: NewIfNullPr frmPlanesdePago
  loc_D01051: VCallAd Control_ID_
  loc_D01054: FStAdFunc var_200
  loc_D01057: FLdPr var_200
  loc_D0105A:  = frmPlanesdePago.TextBox.Text
  loc_D0105F: LitI4 2
  loc_D01064: FLdFPR8 var_120
  loc_D01067: ILdRf var_1E8
  loc_D0106A: CR8Str
  loc_D0106C: LitI2_Byte 1
  loc_D0106E: CR8I2
  loc_D0106F: SubR4
  loc_D01070: DivR8
  loc_D01071: CVarR8
  loc_D01075: FLdRfVar var_1E4
  loc_D01078: ImpAdCallFPR4  = Round(, )
  loc_D0107D: FLdRfVar var_1E4
  loc_D01080: CR4Var
  loc_D01081: FStFPR8 var_120
  loc_D01084: FFree1Str var_1E8
  loc_D01087: FFree1Ad var_200
  loc_D0108A: FFreeVar var_1D4 = ""
  loc_D01091: FLdRfVar var_1E8
  loc_D01094: ImpAdLdRf MemVar_D93E08
  loc_D01097: NewIfNullPr frmPlanesdePago
  loc_D0109A: VCallAd Control_ID_
  loc_D0109D: FStAdFunc var_200
  loc_D010A0: FLdPr var_200
  loc_D010A3:  = frmPlanesdePago.TextBox.Text
  loc_D010A8: LitI4 2
  loc_D010AD: FLdFPR8 var_128
  loc_D010B0: ILdRf var_1E8
  loc_D010B3: CR8Str
  loc_D010B5: LitI2_Byte 1
  loc_D010B7: CR8I2
  loc_D010B8: SubR4
  loc_D010B9: DivR8
  loc_D010BA: CVarR8
  loc_D010BE: FLdRfVar var_1E4
  loc_D010C1: ImpAdCallFPR4  = Round(, )
  loc_D010C6: FLdRfVar var_1E4
  loc_D010C9: CR4Var
  loc_D010CA: FStFPR8 var_128
  loc_D010CD: FFree1Str var_1E8
  loc_D010D0: FFree1Ad var_200
  loc_D010D3: FFreeVar var_1D4 = ""
  loc_D010DA: FLdRfVar var_1E8
  loc_D010DD: ImpAdLdRf MemVar_D93E08
  loc_D010E0: NewIfNullPr frmPlanesdePago
  loc_D010E3: VCallAd Control_ID_
  loc_D010E6: FStAdFunc var_200
  loc_D010E9: FLdPr var_200
  loc_D010EC:  = frmPlanesdePago.TextBox.Text
  loc_D010F1: LitI4 2
  loc_D010F6: FLdFPR8 var_130
  loc_D010F9: ILdRf var_1E8
  loc_D010FC: CR8Str
  loc_D010FE: LitI2_Byte 1
  loc_D01100: CR8I2
  loc_D01101: SubR4
  loc_D01102: DivR8
  loc_D01103: CVarR8
  loc_D01107: FLdRfVar var_1E4
  loc_D0110A: ImpAdCallFPR4  = Round(, )
  loc_D0110F: FLdRfVar var_1E4
  loc_D01112: CR4Var
  loc_D01113: FStFPR8 var_130
  loc_D01116: FFree1Str var_1E8
  loc_D01119: FFree1Ad var_200
  loc_D0111C: FFreeVar var_1D4 = ""
  loc_D01123: FLdRfVar var_1E8
  loc_D01126: ImpAdLdRf MemVar_D93E08
  loc_D01129: NewIfNullPr frmPlanesdePago
  loc_D0112C: VCallAd Control_ID_
  loc_D0112F: FStAdFunc var_200
  loc_D01132: FLdPr var_200
  loc_D01135:  = frmPlanesdePago.TextBox.Text
  loc_D0113A: LitI4 2
  loc_D0113F: FLdFPR8 var_138
  loc_D01142: ILdRf var_1E8
  loc_D01145: CR8Str
  loc_D01147: LitI2_Byte 1
  loc_D01149: CR8I2
  loc_D0114A: SubR4
  loc_D0114B: DivR8
  loc_D0114C: CVarR8
  loc_D01150: FLdRfVar var_1E4
  loc_D01153: ImpAdCallFPR4  = Round(, )
  loc_D01158: FLdRfVar var_1E4
  loc_D0115B: CR4Var
  loc_D0115C: FStFPR8 var_138
  loc_D0115F: FFree1Str var_1E8
  loc_D01162: FFree1Ad var_200
  loc_D01165: FFreeVar var_1D4 = ""
  loc_D0116C: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, CodiUsua)"
  loc_D0116F: LitStr " VALUES ("
  loc_D01172: ConcatStr
  loc_D01173: FStStrNoPop var_1E8
  loc_D01176: FLdI2 var_AA
  loc_D01179: CStrUI1
  loc_D0117B: FStStrNoPop var_1EC
  loc_D0117E: ConcatStr
  loc_D0117F: FStStrNoPop var_1F0
  loc_D01182: LitStr ","
  loc_D01185: ConcatStr
  loc_D01186: FStStrNoPop var_1F4
  loc_D01189: ILdRf var_B0
  loc_D0118C: CStrI4
  loc_D0118E: FStStrNoPop var_1F8
  loc_D01191: ConcatStr
  loc_D01192: FStStrNoPop var_270
  loc_D01195: LitStr ","
  loc_D01198: ConcatStr
  loc_D01199: CVarStr var_1E4
  loc_D0119C: FLdRfVar var_1D4
  loc_D0119F: FLdRfVar var_204
  loc_D011A2: LitVarStr var_1C4, "NumeApre"
  loc_D011A7: PopAdLdVar
  loc_D011A8: FLdRfVar var_200
  loc_D011AB: FLdPr Me
  loc_D011AE: MemLdPr global_64
  loc_D011B1:  = Me.Fields
  loc_D011B6: FLdPr var_200
  loc_D011B9: from_stack_2 = Me.Item(from_stack_1)
  loc_D011BE: FLdPr var_204
  loc_D011C1:  = Me.Value
  loc_D011C6: FLdRfVar var_1D4
  loc_D011C9: ConcatVar var_228
  loc_D011CD: LitVarStr var_218, ","
  loc_D011D2: ConcatVar var_238
  loc_D011D6: FLdI2 var_C6
  loc_D011D9: CVarI2 var_258
  loc_D011DC: ConcatVar var_248
  loc_D011E0: LitVarStr var_2A0, ","
  loc_D011E5: ConcatVar var_268
  loc_D011E9: ILdRf var_B4
  loc_D011EC: CVarI4
  loc_D011F0: ConcatVar var_280
  loc_D011F4: LitVarStr var_2E4, ","
  loc_D011F9: ConcatVar var_290
  loc_D011FD: FLdI2 var_9E
  loc_D01200: CI4UI1
  loc_D01201: CVarI4
  loc_D01205: PopAdLdVar
  loc_D01206: LitVarI4
  loc_D0120E: PopAdLdVar
  loc_D0120F: ImpAdLdRf MemVar_D93E08
  loc_D01212: NewIfNullPr frmPlanesdePago
  loc_D01215: VCallAd Control_ID_
  loc_D01218: FStAdFunc var_26C
  loc_D0121B: FLdPr var_26C
  loc_D0121E: LateIdCallLdVar
  loc_D01228: CStrVarTmp
  loc_D01229: CVarStr var_2C4
  loc_D0122C: ConcatVar var_318
  loc_D01230: LitVarStr var_3B0, ",'"
  loc_D01235: ConcatVar var_328
  loc_D01239: LitI4 1
  loc_D0123E: LitI4 1
  loc_D01243: LitVarStr var_400, "yyyy-mm-dd"
  loc_D01248: FStVarCopyObj var_338
  loc_D0124B: FLdRfVar var_338
  loc_D0124E: FLdRfVar var_A8
  loc_D01251: CVarRef
  loc_D01256: ImpAdCallI2 Format$(, )
  loc_D0125B: CVarStr var_358
  loc_D0125E: ConcatVar var_370
  loc_D01262: LitVarStr var_420, "',NULL,'Emitido',"
  loc_D01267: ConcatVar var_380
  loc_D0126B: LitI4 0
  loc_D01270: LitI4 -1
  loc_D01275: LitI4 1
  loc_D0127A: LitStr "."
  loc_D0127D: LitStr ","
  loc_D01280: FLdFPR8 var_100
  loc_D01283: CStrR8
  loc_D01285: FStStrNoPop var_360
  loc_D01288: ImpAdCallI2 Replace(, , , , , )
  loc_D0128D: CVarStr var_3A0
  loc_D01290: ConcatVar var_3D0
  loc_D01294: LitVarStr var_430, ","
  loc_D01299: ConcatVar var_3E0
  loc_D0129D: LitI4 0
  loc_D012A2: LitI4 -1
  loc_D012A7: LitI4 1
  loc_D012AC: LitStr "."
  loc_D012AF: LitStr ","
  loc_D012B2: FLdFPR8 var_108
  loc_D012B5: CStrR8
  loc_D012B7: FStStrNoPop var_5C0
  loc_D012BA: ImpAdCallI2 Replace(, , , , , )
  loc_D012BF: CVarStr var_3F0
  loc_D012C2: ConcatVar var_410
  loc_D012C6: LitVarStr var_440, ","
  loc_D012CB: ConcatVar var_464
  loc_D012CF: LitI4 0
  loc_D012D4: LitI4 -1
  loc_D012D9: LitI4 1
  loc_D012DE: LitStr "."
  loc_D012E1: LitStr ","
  loc_D012E4: FLdFPR8 var_110
  loc_D012E7: CStrR8
  loc_D012E9: FStStrNoPop var_5C4
  loc_D012EC: ImpAdCallI2 Replace(, , , , , )
  loc_D012F1: CVarStr var_474
  loc_D012F4: ConcatVar var_484
  loc_D012F8: LitVarStr var_450, ","
  loc_D012FD: ConcatVar var_4A4
  loc_D01301: LitI4 0
  loc_D01306: LitI4 -1
  loc_D0130B: LitI4 1
  loc_D01310: LitStr "."
  loc_D01313: LitStr ","
  loc_D01316: FLdFPR8 var_118
  loc_D01319: CStrR8
  loc_D0131B: FStStrNoPop var_60C
  loc_D0131E: ImpAdCallI2 Replace(, , , , , )
  loc_D01323: CVarStr var_4F8
  loc_D01326: ConcatVar var_508
  loc_D0132A: LitVarStr var_494, ","
  loc_D0132F: ConcatVar var_518
  loc_D01333: LitI4 0
  loc_D01338: LitI4 -1
  loc_D0133D: LitI4 1
  loc_D01342: LitStr "."
  loc_D01345: LitStr ","
  loc_D01348: FLdFPR8 var_120
  loc_D0134B: CStrR8
  loc_D0134D: FStStrNoPop var_610
  loc_D01350: ImpAdCallI2 Replace(, , , , , )
  loc_D01355: CVarStr var_538
  loc_D01358: ConcatVar var_558
  loc_D0135C: LitVarStr var_4B4, ","
  loc_D01361: ConcatVar var_578
  loc_D01365: LitI4 0
  loc_D0136A: LitI4 -1
  loc_D0136F: LitI4 1
  loc_D01374: LitStr "."
  loc_D01377: LitStr ","
  loc_D0137A: FLdFPR8 var_128
  loc_D0137D: CStrR8
  loc_D0137F: FStStrNoPop var_658
  loc_D01382: ImpAdCallI2 Replace(, , , , , )
  loc_D01387: CVarStr var_598
  loc_D0138A: ConcatVar var_5B8
  loc_D0138E: LitVarStr var_4C4, ","
  loc_D01393: ConcatVar var_5D4
  loc_D01397: LitI4 0
  loc_D0139C: LitI4 -1
  loc_D013A1: LitI4 1
  loc_D013A6: LitStr "."
  loc_D013A9: LitStr ","
  loc_D013AC: FLdFPR8 var_130
  loc_D013AF: CStrR8
  loc_D013B1: FStStrNoPop var_65C
  loc_D013B4: ImpAdCallI2 Replace(, , , , , )
  loc_D013B9: CVarStr var_5E4
  loc_D013BC: ConcatVar var_604
  loc_D013C0: LitVarStr var_4D4, ","
  loc_D013C5: ConcatVar var_620
  loc_D013C9: LitI4 0
  loc_D013CE: LitI4 -1
  loc_D013D3: LitI4 1
  loc_D013D8: LitStr "."
  loc_D013DB: LitStr ","
  loc_D013DE: FLdFPR8 var_138
  loc_D013E1: CStrR8
  loc_D013E3: FStStrNoPop var_6A4
  loc_D013E6: ImpAdCallI2 Replace(, , , , , )
  loc_D013EB: CVarStr var_630
  loc_D013EE: ConcatVar var_650
  loc_D013F2: LitVarStr var_4E4, ",'"
  loc_D013F7: ConcatVar var_66C
  loc_D013FB: ImpAdLdI4 MemVar_D9302C
  loc_D013FE: CVarStr var_528
  loc_D01401: ConcatVar var_67C
  loc_D01405: LitVarStr var_548, "');"
  loc_D0140A: ConcatVar var_69C
  loc_D0140E: CStrVarVal var_6A8
  loc_D01412: Call EjecutarRsCls(from_stack_1v)
  loc_D01417: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A4 = ""
  loc_D01438: FFreeAd var_200 = "": var_204 = ""
  loc_D01441: FFreeVar var_578 = "": var_598 = "": var_5B8 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_620 = "": var_630 = "": var_650 = "": var_66C = "": var_67C = "": var_69C = "": var_1E4 = "": var_1D4 = "": var_228 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_2B0 = "": var_290 = "": var_2C4 = "": var_318 = "": var_338 = "": var_328 = "": var_358 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_464 = "": var_474 = "": var_484 = "": var_4A4 = "": var_4F8 = "": var_508 = "": var_518 = "": var_538 = ""
  loc_D01498: LitStr " INSERT INTO faciapre (CodiFapa, CuotDefa, NumeApre, CodiInju, FealFaap, CoadFaap, ReseFaap, ApleFaap, DefiFaap, HoreFaap, HoofFaap, MoreFaap, MoofFaap, CodiUsua) "
  loc_D0149B: LitStr " VALUES ("
  loc_D0149E: ConcatStr
  loc_D0149F: FStStrNoPop var_1E8
  loc_D014A2: ILdRf var_B4
  loc_D014A5: CStrI4
  loc_D014A7: FStStrNoPop var_1EC
  loc_D014AA: ConcatStr
  loc_D014AB: FStStrNoPop var_1F0
  loc_D014AE: LitStr ","
  loc_D014B1: ConcatStr
  loc_D014B2: FStStrNoPop var_1F4
  loc_D014B5: FLdI2 var_9E
  loc_D014B8: CI4UI1
  loc_D014B9: CVarI4
  loc_D014BD: PopAdLdVar
  loc_D014BE: LitVarI4
  loc_D014C6: PopAdLdVar
  loc_D014C7: ImpAdLdRf MemVar_D93E08
  loc_D014CA: NewIfNullPr frmPlanesdePago
  loc_D014CD: VCallAd Control_ID_
  loc_D014D0: FStAdFunc var_200
  loc_D014D3: FLdPr var_200
  loc_D014D6: LateIdCallLdVar
  loc_D014E0: CStrVarTmp
  loc_D014E1: FStStrNoPop var_1F8
  loc_D014E4: ConcatStr
  loc_D014E5: FStStrNoPop var_270
  loc_D014E8: LitStr ","
  loc_D014EB: ConcatStr
  loc_D014EC: CVarStr var_228
  loc_D014EF: FLdRfVar var_1E4
  loc_D014F2: FLdRfVar var_26C
  loc_D014F5: LitVarStr var_2D4, "NumeApre"
  loc_D014FA: PopAdLdVar
  loc_D014FB: FLdRfVar var_204
  loc_D014FE: FLdPr Me
  loc_D01501: MemLdPr global_64
  loc_D01504:  = frmPlanesdePago.Recordset15.Fields
  loc_D01509: FLdPr var_204
  loc_D0150C: from_stack_2 = Me.Item(from_stack_1)
  loc_D01511: FLdPr var_26C
  loc_D01514:  = Me.Value
  loc_D01519: FLdRfVar var_1E4
  loc_D0151C: ConcatVar var_238
  loc_D01520: LitVarStr var_2E4, ","
  loc_D01525: ConcatVar var_248
  loc_D01529: FLdI2 var_C6
  loc_D0152C: CVarI2 var_2F4
  loc_D0152F: ConcatVar var_268
  loc_D01533: LitVarStr var_304, ",'"
  loc_D01538: ConcatVar var_280
  loc_D0153C: LitI4 1
  loc_D01541: LitI4 1
  loc_D01546: LitVarStr var_390, "yyyy-mm-dd"
  loc_D0154B: FStVarCopyObj var_290
  loc_D0154E: FLdRfVar var_290
  loc_D01551: FLdRfVar var_A8
  loc_D01554: CVarRef
  loc_D01559: ImpAdCallI2 Format$(, )
  loc_D0155E: CVarStr var_2B0
  loc_D01561: ConcatVar var_2C4
  loc_D01565: LitVarStr var_3B0, "',"
  loc_D0156A: ConcatVar var_318
  loc_D0156E: LitI4 0
  loc_D01573: LitI4 -1
  loc_D01578: LitI4 1
  loc_D0157D: LitStr "."
  loc_D01580: LitStr ","
  loc_D01583: FLdFPR8 var_100
  loc_D01586: CStrR8
  loc_D01588: FStStrNoPop var_360
  loc_D0158B: ImpAdCallI2 Replace(, , , , , )
  loc_D01590: CVarStr var_328
  loc_D01593: ConcatVar var_338
  loc_D01597: LitVarStr var_3C0, ","
  loc_D0159C: ConcatVar var_358
  loc_D015A0: LitI4 0
  loc_D015A5: LitI4 -1
  loc_D015AA: LitI4 1
  loc_D015AF: LitStr "."
  loc_D015B2: LitStr ","
  loc_D015B5: FLdFPR8 var_108
  loc_D015B8: CStrR8
  loc_D015BA: FStStrNoPop var_5C0
  loc_D015BD: ImpAdCallI2 Replace(, , , , , )
  loc_D015C2: CVarStr var_370
  loc_D015C5: ConcatVar var_380
  loc_D015C9: LitVarStr var_400, ","
  loc_D015CE: ConcatVar var_3A0
  loc_D015D2: LitI4 0
  loc_D015D7: LitI4 -1
  loc_D015DC: LitI4 1
  loc_D015E1: LitStr "."
  loc_D015E4: LitStr ","
  loc_D015E7: FLdFPR8 var_110
  loc_D015EA: CStrR8
  loc_D015EC: FStStrNoPop var_5C4
  loc_D015EF: ImpAdCallI2 Replace(, , , , , )
  loc_D015F4: CVarStr var_3D0
  loc_D015F7: ConcatVar var_3E0
  loc_D015FB: LitVarStr var_420, ","
  loc_D01600: ConcatVar var_3F0
  loc_D01604: LitI4 0
  loc_D01609: LitI4 -1
  loc_D0160E: LitI4 1
  loc_D01613: LitStr "."
  loc_D01616: LitStr ","
  loc_D01619: FLdFPR8 var_118
  loc_D0161C: CStrR8
  loc_D0161E: FStStrNoPop var_60C
  loc_D01621: ImpAdCallI2 Replace(, , , , , )
  loc_D01626: CVarStr var_410
  loc_D01629: ConcatVar var_464
  loc_D0162D: LitVarStr var_430, ","
  loc_D01632: ConcatVar var_474
  loc_D01636: LitI4 0
  loc_D0163B: LitI4 -1
  loc_D01640: LitI4 1
  loc_D01645: LitStr "."
  loc_D01648: LitStr ","
  loc_D0164B: FLdFPR8 var_120
  loc_D0164E: CStrR8
  loc_D01650: FStStrNoPop var_610
  loc_D01653: ImpAdCallI2 Replace(, , , , , )
  loc_D01658: CVarStr var_484
  loc_D0165B: ConcatVar var_4A4
  loc_D0165F: LitVarStr var_440, ","
  loc_D01664: ConcatVar var_4F8
  loc_D01668: LitI4 0
  loc_D0166D: LitI4 -1
  loc_D01672: LitI4 1
  loc_D01677: LitStr "."
  loc_D0167A: LitStr ","
  loc_D0167D: FLdFPR8 var_128
  loc_D01680: CStrR8
  loc_D01682: FStStrNoPop var_658
  loc_D01685: ImpAdCallI2 Replace(, , , , , )
  loc_D0168A: CVarStr var_508
  loc_D0168D: ConcatVar var_518
  loc_D01691: LitVarStr var_450, ","
  loc_D01696: ConcatVar var_538
  loc_D0169A: LitI4 0
  loc_D0169F: LitI4 -1
  loc_D016A4: LitI4 1
  loc_D016A9: LitStr "."
  loc_D016AC: LitStr ","
  loc_D016AF: FLdFPR8 var_130
  loc_D016B2: CStrR8
  loc_D016B4: FStStrNoPop var_65C
  loc_D016B7: ImpAdCallI2 Replace(, , , , , )
  loc_D016BC: CVarStr var_558
  loc_D016BF: ConcatVar var_578
  loc_D016C3: LitVarStr var_494, ","
  loc_D016C8: ConcatVar var_598
  loc_D016CC: LitI4 0
  loc_D016D1: LitI4 -1
  loc_D016D6: LitI4 1
  loc_D016DB: LitStr "."
  loc_D016DE: LitStr ","
  loc_D016E1: FLdFPR8 var_138
  loc_D016E4: CStrR8
  loc_D016E6: FStStrNoPop var_6A4
  loc_D016E9: ImpAdCallI2 Replace(, , , , , )
  loc_D016EE: CVarStr var_5B8
  loc_D016F1: ConcatVar var_5D4
  loc_D016F5: LitVarStr var_4B4, ",'"
  loc_D016FA: ConcatVar var_5E4
  loc_D016FE: ImpAdLdI4 MemVar_D9302C
  loc_D01701: CVarStr var_4C4
  loc_D01704: ConcatVar var_604
  loc_D01708: LitVarStr var_4D4, "');"
  loc_D0170D: ConcatVar var_620
  loc_D01711: CStrVarVal var_6A8
  loc_D01715: Call EjecutarRsCls(from_stack_1v)
  loc_D0171A: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = "": var_60C = "": var_610 = "": var_658 = "": var_65C = "": var_6A4 = ""
  loc_D0173B: FFreeAd var_200 = "": var_204 = ""
  loc_D01744: FFreeVar var_578 = "": var_598 = "": var_5B8 = "": var_5D4 = "": var_5E4 = "": var_604 = "": var_620 = "": var_1D4 = "": var_228 = "": var_1E4 = "": var_238 = "": var_248 = "": var_268 = "": var_290 = "": var_280 = "": var_2B0 = "": var_2C4 = "": var_318 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_464 = "": var_474 = "": var_484 = "": var_4A4 = "": var_4F8 = "": var_508 = "": var_518 = "": var_538 = ""
  loc_D01791: FLdFPR8 var_170
  loc_D01794: FLdFPR8 var_100
  loc_D01797: AddR8
  loc_D01798: FLdFPR8 var_108
  loc_D0179B: AddR8
  loc_D0179C: FLdFPR8 var_110
  loc_D0179F: AddR8
  loc_D017A0: FLdFPR8 var_118
  loc_D017A3: AddR8
  loc_D017A4: FLdFPR8 var_120
  loc_D017A7: AddR8
  loc_D017A8: FLdFPR8 var_128
  loc_D017AB: AddR8
  loc_D017AC: FLdFPR8 var_130
  loc_D017AF: AddR8
  loc_D017B0: FLdFPR8 var_138
  loc_D017B3: AddR8
  loc_D017B4: FStFPR8 var_170
  loc_D017B7: LitI2_Byte 0
  loc_D017B9: FStI2 var_DC
  loc_D017BC: LitStr "SELECT * FROM tmp_apredeta"
  loc_D017BF: Call EjecutarRsCls2(from_stack_1v)
  loc_D017C4: FLdRfVar var_1FC
  loc_D017C7: FLdPr Me
  loc_D017CA: MemLdPr global_68
  loc_D017CD:  = Me.RecordCount
  loc_D017D2: ILdRf var_1FC
  loc_D017D5: LitI4 0
  loc_D017DA: GtI4
  loc_D017DB: BranchF loc_D01BCF
  loc_D017DE: FLdRfVar var_85E
  loc_D017E1: FLdPr Me
  loc_D017E4: MemLdPr global_68
  loc_D017E7:  = Me.EOF
  loc_D017EC: FLdI2 var_85E
  loc_D017EF: NotI4
  loc_D017F0: BranchF loc_D01BCF
  loc_D017F3: FLdI2 var_DC
  loc_D017F6: LitI2_Byte 1
  loc_D017F8: AddI2
  loc_D017F9: FStI2 var_DC
  loc_D017FC: FLdRfVar var_1E8
  loc_D017FF: ImpAdLdRf MemVar_D93E08
  loc_D01802: NewIfNullPr frmPlanesdePago
  loc_D01805: VCallAd Control_ID_
  loc_D01808: FStAdFunc var_200
  loc_D0180B: FLdPr var_200
  loc_D0180E:  = frmPlanesdePago.TextBox.Text
  loc_D01813: ILdRf var_1E8
  loc_D01816: CR8Str
  loc_D01818: LitI2_Byte 2
  loc_D0181A: CR8I2
  loc_D0181B: LeR8
  loc_D0181C: FFree1Str var_1E8
  loc_D0181F: FFree1Ad var_200
  loc_D01822: BranchF loc_D018DE
  loc_D01825: FLdRfVar var_1D4
  loc_D01828: FLdRfVar var_204
  loc_D0182B: LitVarStr var_1C4, "ImreBade"
  loc_D01830: PopAdLdVar
  loc_D01831: FLdRfVar var_200
  loc_D01834: FLdPr Me
  loc_D01837: MemLdPr global_68
  loc_D0183A:  = Me.Fields
  loc_D0183F: FLdPr var_200
  loc_D01842: from_stack_2 = Me.Item(from_stack_1)
  loc_D01847: FLdPr var_204
  loc_D0184A:  = Me.Value
  loc_D0184F: LitI4 2
  loc_D01854: FLdRfVar var_1D4
  loc_D01857: FnCDblVar
  loc_D01859: LitI2_Byte 2
  loc_D0185B: CR8I2
  loc_D0185C: DivR8
  loc_D0185D: CVarR8
  loc_D01861: FLdRfVar var_228
  loc_D01864: ImpAdCallFPR4  = Round(, )
  loc_D01869: FLdRfVar var_228
  loc_D0186C: CR4Var
  loc_D0186D: FStFPR8 var_140
  loc_D01870: FFreeAd var_200 = ""
  loc_D01877: FFreeVar var_1D4 = "": var_1E4 = ""
  loc_D01880: FLdRfVar var_1D4
  loc_D01883: FLdRfVar var_204
  loc_D01886: LitVarStr var_1C4, "ImofBade"
  loc_D0188B: PopAdLdVar
  loc_D0188C: FLdRfVar var_200
  loc_D0188F: FLdPr Me
  loc_D01892: MemLdPr global_68
  loc_D01895:  = Me.Fields
  loc_D0189A: FLdPr var_200
  loc_D0189D: from_stack_2 = Me.Item(from_stack_1)
  loc_D018A2: FLdPr var_204
  loc_D018A5:  = Me.Value
  loc_D018AA: LitI4 2
  loc_D018AF: FLdRfVar var_1D4
  loc_D018B2: FnCDblVar
  loc_D018B4: LitI2_Byte 2
  loc_D018B6: CR8I2
  loc_D018B7: DivR8
  loc_D018B8: CVarR8
  loc_D018BC: FLdRfVar var_228
  loc_D018BF: ImpAdCallFPR4  = Round(, )
  loc_D018C4: FLdRfVar var_228
  loc_D018C7: CR4Var
  loc_D018C8: FStFPR8 var_148
  loc_D018CB: FFreeAd var_200 = ""
  loc_D018D2: FFreeVar var_1D4 = "": var_1E4 = ""
  loc_D018DB: Branch loc_D01A01
  loc_D018DE: FLdRfVar var_1E8
  loc_D018E1: ImpAdLdRf MemVar_D93E08
  loc_D018E4: NewIfNullPr frmPlanesdePago
  loc_D018E7: VCallAd Control_ID_
  loc_D018EA: FStAdFunc var_200
  loc_D018ED: FLdPr var_200
  loc_D018F0:  = frmPlanesdePago.TextBox.Text
  loc_D018F5: ILdRf var_1E8
  loc_D018F8: CR8Str
  loc_D018FA: LitI2_Byte 3
  loc_D018FC: CR8I2
  loc_D018FD: GeR8
  loc_D018FE: FFree1Str var_1E8
  loc_D01901: FFree1Ad var_200
  loc_D01904: BranchF loc_D01A01
  loc_D01907: FLdRfVar var_1D4
  loc_D0190A: FLdRfVar var_204
  loc_D0190D: LitVarStr var_1C4, "ImreBade"
  loc_D01912: PopAdLdVar
  loc_D01913: FLdRfVar var_200
  loc_D01916: FLdPr Me
  loc_D01919: MemLdPr global_68
  loc_D0191C:  = Me.Fields
  loc_D01921: FLdPr var_200
  loc_D01924: from_stack_2 = Me.Item(from_stack_1)
  loc_D01929: FLdPr var_204
  loc_D0192C:  = Me.Value
  loc_D01931: FLdRfVar var_1E8
  loc_D01934: ImpAdLdRf MemVar_D93E08
  loc_D01937: NewIfNullPr frmPlanesdePago
  loc_D0193A: VCallAd Control_ID_
  loc_D0193D: FStAdFunc var_26C
  loc_D01940: FLdPr var_26C
  loc_D01943:  = frmPlanesdePago.TextBox.Text
  loc_D01948: LitI4 2
  loc_D0194D: FLdRfVar var_1D4
  loc_D01950: FnCDblVar
  loc_D01952: ILdRf var_1E8
  loc_D01955: CR8Str
  loc_D01957: LitI2_Byte 1
  loc_D01959: CR8I2
  loc_D0195A: SubR4
  loc_D0195B: DivR8
  loc_D0195C: CVarR8
  loc_D01960: FLdRfVar var_228
  loc_D01963: ImpAdCallFPR4  = Round(, )
  loc_D01968: FLdRfVar var_228
  loc_D0196B: CR4Var
  loc_D0196C: FStFPR8 var_140
  loc_D0196F: FFree1Str var_1E8
  loc_D01972: FFreeAd var_200 = "": var_204 = ""
  loc_D0197B: FFreeVar var_1D4 = "": var_1E4 = ""
  loc_D01984: FLdRfVar var_1D4
  loc_D01987: FLdRfVar var_204
  loc_D0198A: LitVarStr var_1C4, "ImofBade"
  loc_D0198F: PopAdLdVar
  loc_D01990: FLdRfVar var_200
  loc_D01993: FLdPr Me
  loc_D01996: MemLdPr global_68
  loc_D01999:  = Me.Fields
  loc_D0199E: FLdPr var_200
  loc_D019A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D019A6: FLdPr var_204
  loc_D019A9:  = Me.Value
  loc_D019AE: FLdRfVar var_1E8
  loc_D019B1: ImpAdLdRf MemVar_D93E08
  loc_D019B4: NewIfNullPr frmPlanesdePago
  loc_D019B7: VCallAd Control_ID_
  loc_D019BA: FStAdFunc var_26C
  loc_D019BD: FLdPr var_26C
  loc_D019C0:  = frmPlanesdePago.TextBox.Text
  loc_D019C5: LitI4 2
  loc_D019CA: FLdRfVar var_1D4
  loc_D019CD: FnCDblVar
  loc_D019CF: ILdRf var_1E8
  loc_D019D2: CR8Str
  loc_D019D4: LitI2_Byte 1
  loc_D019D6: CR8I2
  loc_D019D7: SubR4
  loc_D019D8: DivR8
  loc_D019D9: CVarR8
  loc_D019DD: FLdRfVar var_228
  loc_D019E0: ImpAdCallFPR4  = Round(, )
  loc_D019E5: FLdRfVar var_228
  loc_D019E8: CR4Var
  loc_D019E9: FStFPR8 var_148
  loc_D019EC: FFree1Str var_1E8
  loc_D019EF: FFreeAd var_200 = "": var_204 = ""
  loc_D019F8: FFreeVar var_1D4 = "": var_1E4 = ""
  loc_D01A01: LitStr "INSERT INTO boleapredeta (PeriBole, NumeBole, NumeApre, CodiInju, NumeBade, CodiReca, ImreBade, CodiOfju, ImofBade) "
  loc_D01A04: LitStr " VALUES ("
  loc_D01A07: ConcatStr
  loc_D01A08: FStStrNoPop var_1E8
  loc_D01A0B: FLdI2 var_AA
  loc_D01A0E: CStrUI1
  loc_D01A10: FStStrNoPop var_1EC
  loc_D01A13: ConcatStr
  loc_D01A14: FStStrNoPop var_1F0
  loc_D01A17: LitStr ","
  loc_D01A1A: ConcatStr
  loc_D01A1B: FStStrNoPop var_1F4
  loc_D01A1E: ILdRf var_B0
  loc_D01A21: CStrI4
  loc_D01A23: FStStrNoPop var_1F8
  loc_D01A26: ConcatStr
  loc_D01A27: FStStrNoPop var_270
  loc_D01A2A: LitStr ","
  loc_D01A2D: ConcatStr
  loc_D01A2E: CVarStr var_1E4
  loc_D01A31: FLdRfVar var_1D4
  loc_D01A34: FLdRfVar var_204
  loc_D01A37: LitVarStr var_1C4, "NumeApre"
  loc_D01A3C: PopAdLdVar
  loc_D01A3D: FLdRfVar var_200
  loc_D01A40: FLdPr Me
  loc_D01A43: MemLdPr global_68
  loc_D01A46:  = Me.Fields
  loc_D01A4B: FLdPr var_200
  loc_D01A4E: from_stack_2 = Me.Item(from_stack_1)
  loc_D01A53: FLdPr var_204
  loc_D01A56:  = Me.Value
  loc_D01A5B: FLdRfVar var_1D4
  loc_D01A5E: ConcatVar var_228
  loc_D01A62: LitVarStr var_218, ","
  loc_D01A67: ConcatVar var_238
  loc_D01A6B: FLdI2 var_C6
  loc_D01A6E: CVarI2 var_258
  loc_D01A71: ConcatVar var_248
  loc_D01A75: LitVarStr var_2A0, ","
  loc_D01A7A: ConcatVar var_268
  loc_D01A7E: FLdI2 var_DC
  loc_D01A81: CVarI2 var_2D4
  loc_D01A84: ConcatVar var_280
  loc_D01A88: LitVarStr var_2E4, ","
  loc_D01A8D: ConcatVar var_290
  loc_D01A91: FLdRfVar var_2B0
  loc_D01A94: FLdRfVar var_2B4
  loc_D01A97: LitVarStr var_2F4, "CodiReca"
  loc_D01A9C: PopAdLdVar
  loc_D01A9D: FLdRfVar var_26C
  loc_D01AA0: FLdPr Me
  loc_D01AA3: MemLdPr global_68
  loc_D01AA6:  = Me.Fields
  loc_D01AAB: FLdPr var_26C
  loc_D01AAE: from_stack_2 = Me.Item(from_stack_1)
  loc_D01AB3: FLdPr var_2B4
  loc_D01AB6:  = Me.Value
  loc_D01ABB: FLdRfVar var_2B0
  loc_D01ABE: ConcatVar var_2C4
  loc_D01AC2: LitVarStr var_304, ","
  loc_D01AC7: ConcatVar var_318
  loc_D01ACB: LitI4 0
  loc_D01AD0: LitI4 -1
  loc_D01AD5: LitI4 1
  loc_D01ADA: LitStr "."
  loc_D01ADD: LitStr ","
  loc_D01AE0: FLdFPR8 var_140
  loc_D01AE3: CStrR8
  loc_D01AE5: FStStrNoPop var_360
  loc_D01AE8: ImpAdCallI2 Replace(, , , , , )
  loc_D01AED: CVarStr var_328
  loc_D01AF0: ConcatVar var_338
  loc_D01AF4: LitVarStr var_348, ","
  loc_D01AF9: ConcatVar var_358
  loc_D01AFD: FLdRfVar var_370
  loc_D01B00: FLdRfVar var_35C
  loc_D01B03: LitVarStr var_390, "CodiOfju"
  loc_D01B08: PopAdLdVar
  loc_D01B09: FLdRfVar var_308
  loc_D01B0C: FLdPr Me
  loc_D01B0F: MemLdPr global_68
  loc_D01B12:  = Me.Fields
  loc_D01B17: FLdPr var_308
  loc_D01B1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D01B1F: FLdPr var_35C
  loc_D01B22:  = Me.Value
  loc_D01B27: FLdRfVar var_370
  loc_D01B2A: ConcatVar var_380
  loc_D01B2E: LitVarStr var_3B0, ","
  loc_D01B33: ConcatVar var_3A0
  loc_D01B37: LitI4 0
  loc_D01B3C: LitI4 -1
  loc_D01B41: LitI4 1
  loc_D01B46: LitStr "."
  loc_D01B49: LitStr ","
  loc_D01B4C: FLdFPR8 var_148
  loc_D01B4F: CStrR8
  loc_D01B51: FStStrNoPop var_5C0
  loc_D01B54: ImpAdCallI2 Replace(, , , , , )
  loc_D01B59: CVarStr var_3D0
  loc_D01B5C: ConcatVar var_3E0
  loc_D01B60: LitVarStr var_3C0, ");"
  loc_D01B65: ConcatVar var_3F0
  loc_D01B69: CStrVarVal var_5C4
  loc_D01B6D: Call EjecutarRsCls(from_stack_1v)
  loc_D01B72: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = ""
  loc_D01B87: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = ""
  loc_D01B96: FFreeVar var_1E4 = "": var_1D4 = "": var_228 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_318 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = ""
  loc_D01BC1: FLdPr Me
  loc_D01BC4: MemLdPr global_68
  loc_D01BC7: Me.MoveNext
  loc_D01BCC: Branch loc_D017DE
  loc_D01BCF: FLdPr Me
  loc_D01BD2: MemLdPr global_64
  loc_D01BD5: Me.MoveNext
  loc_D01BDA: Branch loc_D00CDF
  loc_D01BDD: FLdI2 var_9E
  loc_D01BE0: LitI2_Byte 1
  loc_D01BE2: EqI2
  loc_D01BE3: BranchF loc_D023E7
  loc_D01BE6: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, "
  loc_D01BE9: LitStr " PeriInfo, CodiConc, NumeApre, CodiTimo, SeleCtct, SaldCtct FROM tmp_ctacteboleto"
  loc_D01BEC: ConcatStr
  loc_D01BED: FStStrNoPop var_1E8
  loc_D01BF0: LitStr " WHERE tmp_ctacteboleto.CodiOfic = "
  loc_D01BF3: ConcatStr
  loc_D01BF4: FStStrNoPop var_1EC
  loc_D01BF7: FLdI2 var_9E
  loc_D01BFA: CI4UI1
  loc_D01BFB: CVarI4
  loc_D01BFF: PopAdLdVar
  loc_D01C00: LitVarI4
  loc_D01C08: PopAdLdVar
  loc_D01C09: ImpAdLdRf MemVar_D93E08
  loc_D01C0C: NewIfNullPr frmPlanesdePago
  loc_D01C0F: VCallAd Control_ID_
  loc_D01C12: FStAdFunc var_200
  loc_D01C15: FLdPr var_200
  loc_D01C18: LateIdCallLdVar
  loc_D01C22: CStrVarTmp
  loc_D01C23: FStStrNoPop var_1F0
  loc_D01C26: ConcatStr
  loc_D01C27: FStStrNoPop var_1F4
  loc_D01C2A: LitStr " AND tmp_ctacteboleto.CuenCtct = '"
  loc_D01C2D: ConcatStr
  loc_D01C2E: FStStrNoPop var_1F8
  loc_D01C31: FLdI2 var_9E
  loc_D01C34: CI4UI1
  loc_D01C35: CVarI4
  loc_D01C39: PopAdLdVar
  loc_D01C3A: LitVarI4
  loc_D01C42: PopAdLdVar
  loc_D01C43: ImpAdLdRf MemVar_D93E08
  loc_D01C46: NewIfNullPr frmPlanesdePago
  loc_D01C49: VCallAd Control_ID_
  loc_D01C4C: FStAdFunc var_204
  loc_D01C4F: FLdPr var_204
  loc_D01C52: LateIdCallLdVar
  loc_D01C5C: CStrVarTmp
  loc_D01C5D: FStStrNoPop var_270
  loc_D01C60: ConcatStr
  loc_D01C61: FStStrNoPop var_360
  loc_D01C64: LitStr "'"
  loc_D01C67: ConcatStr
  loc_D01C68: FStStrNoPop var_5C0
  loc_D01C6B: LitStr " AND tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_D01C6E: ConcatStr
  loc_D01C6F: FStStrNoPop var_5C4
  loc_D01C72: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct"
  loc_D01C75: ConcatStr
  loc_D01C76: FStStrNoPop var_60C
  loc_D01C79: Call EjecutarRsCls1(from_stack_1v)
  loc_D01C7E: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = "": var_5C4 = ""
  loc_D01C95: FFreeAd var_200 = ""
  loc_D01C9C: FFreeVar var_1D4 = ""
  loc_D01CA3: FLdRfVar var_1FC
  loc_D01CA6: FLdPr Me
  loc_D01CA9: MemLdPr global_64
  loc_D01CAC:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D01CB1: ILdRf var_1FC
  loc_D01CB4: LitI4 0
  loc_D01CB9: GtI4
  loc_D01CBA: BranchF loc_D023E7
  loc_D01CBD: FLdPr Me
  loc_D01CC0: MemLdPr global_64
  loc_D01CC3: Me.MoveFirst
  loc_D01CC8: FLdRfVar var_85E
  loc_D01CCB: FLdPr Me
  loc_D01CCE: MemLdPr global_64
  loc_D01CD1:  = Me.EOF
  loc_D01CD6: FLdI2 var_85E
  loc_D01CD9: NotI4
  loc_D01CDA: BranchF loc_D023E7
  loc_D01CDD: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiFapa, TipoCtct, NumeApre, CodiTimo, PeriInfo, CodiConc FROM ctacte "
  loc_D01CE0: LitStr " WHERE ctacte.CodiOfic = "
  loc_D01CE3: ConcatStr
  loc_D01CE4: CVarStr var_1E4
  loc_D01CE7: FLdRfVar var_1D4
  loc_D01CEA: FLdRfVar var_204
  loc_D01CED: LitVarStr var_1C4, "CodiOfic"
  loc_D01CF2: PopAdLdVar
  loc_D01CF3: FLdRfVar var_200
  loc_D01CF6: FLdPr Me
  loc_D01CF9: MemLdPr global_64
  loc_D01CFC:  = Me.Fields
  loc_D01D01: FLdPr var_200
  loc_D01D04: from_stack_2 = Me.Item(from_stack_1)
  loc_D01D09: FLdPr var_204
  loc_D01D0C:  = Me.Value
  loc_D01D11: FLdRfVar var_1D4
  loc_D01D14: ConcatVar var_228
  loc_D01D18: LitVarStr var_218, " AND ctacte.CuenCtct = '"
  loc_D01D1D: ConcatVar var_238
  loc_D01D21: FLdRfVar var_248
  loc_D01D24: FLdRfVar var_2B4
  loc_D01D27: LitVarStr var_258, "CuenCtct"
  loc_D01D2C: PopAdLdVar
  loc_D01D2D: FLdRfVar var_26C
  loc_D01D30: FLdPr Me
  loc_D01D33: MemLdPr global_64
  loc_D01D36:  = Me.Fields
  loc_D01D3B: FLdPr var_26C
  loc_D01D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_D01D43: FLdPr var_2B4
  loc_D01D46:  = Me.Value
  loc_D01D4B: FLdRfVar var_248
  loc_D01D4E: ConcatVar var_268
  loc_D01D52: LitVarStr var_2A0, "'"
  loc_D01D57: ConcatVar var_280
  loc_D01D5B: LitVarStr var_2D4, " AND ctacte.PeriCtct = "
  loc_D01D60: ConcatVar var_290
  loc_D01D64: FLdRfVar var_2B0
  loc_D01D67: FLdRfVar var_35C
  loc_D01D6A: LitVarStr var_2E4, "PeriCtct"
  loc_D01D6F: PopAdLdVar
  loc_D01D70: FLdRfVar var_308
  loc_D01D73: FLdPr Me
  loc_D01D76: MemLdPr global_64
  loc_D01D79:  = Me.Fields
  loc_D01D7E: FLdPr var_308
  loc_D01D81: from_stack_2 = Me.Item(from_stack_1)
  loc_D01D86: FLdPr var_35C
  loc_D01D89:  = Me.Value
  loc_D01D8E: FLdRfVar var_2B0
  loc_D01D91: ConcatVar var_2C4
  loc_D01D95: LitVarStr var_2F4, " AND ctacte.NumeCtct = "
  loc_D01D9A: ConcatVar var_318
  loc_D01D9E: FLdRfVar var_328
  loc_D01DA1: FLdRfVar var_4E8
  loc_D01DA4: LitVarStr var_304, "NumeCtct"
  loc_D01DA9: PopAdLdVar
  loc_D01DAA: FLdRfVar var_454
  loc_D01DAD: FLdPr Me
  loc_D01DB0: MemLdPr global_64
  loc_D01DB3:  = Me.Fields
  loc_D01DB8: FLdPr var_454
  loc_D01DBB: from_stack_2 = Me.Item(from_stack_1)
  loc_D01DC0: FLdPr var_4E8
  loc_D01DC3:  = Me.Value
  loc_D01DC8: FLdRfVar var_328
  loc_D01DCB: ConcatVar var_338
  loc_D01DCF: LitVarStr var_348, " AND ctacte.MoviCtct = "
  loc_D01DD4: ConcatVar var_358
  loc_D01DD8: FLdRfVar var_370
  loc_D01DDB: FLdRfVar var_608
  loc_D01DDE: LitVarStr var_390, "MoviCtct"
  loc_D01DE3: PopAdLdVar
  loc_D01DE4: FLdRfVar var_5BC
  loc_D01DE7: FLdPr Me
  loc_D01DEA: MemLdPr global_64
  loc_D01DED:  = Me.Fields
  loc_D01DF2: FLdPr var_5BC
  loc_D01DF5: from_stack_2 = Me.Item(from_stack_1)
  loc_D01DFA: FLdPr var_608
  loc_D01DFD:  = Me.Value
  loc_D01E02: FLdRfVar var_370
  loc_D01E05: ConcatVar var_380
  loc_D01E09: LitVarStr var_3B0, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_D01E0E: ConcatVar var_3A0
  loc_D01E12: CStrVarVal var_1E8
  loc_D01E16: Call EjecutarRsCls2(from_stack_1v)
  loc_D01E1B: FFree1Str var_1E8
  loc_D01E1E: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = "": var_5BC = ""
  loc_D01E35: FFreeVar var_1E4 = "": var_1D4 = "": var_228 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_318 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = ""
  loc_D01E5A: FLdRfVar var_1FC
  loc_D01E5D: FLdPr Me
  loc_D01E60: MemLdPr global_68
  loc_D01E63:  = Me.RecordCount
  loc_D01E68: ILdRf var_1FC
  loc_D01E6B: LitI4 1
  loc_D01E70: EqI4
  loc_D01E71: BranchF loc_D023D9
  loc_D01E74: LitStr "SELECT * FROM facictacte "
  loc_D01E77: LitStr " WHERE CodiFapa = "
  loc_D01E7A: ConcatStr
  loc_D01E7B: FStStrNoPop var_1E8
  loc_D01E7E: ILdRf var_B4
  loc_D01E81: CStrI4
  loc_D01E83: FStStrNoPop var_1EC
  loc_D01E86: ConcatStr
  loc_D01E87: FStStrNoPop var_1F0
  loc_D01E8A: LitStr " AND CuotDefa = "
  loc_D01E8D: ConcatStr
  loc_D01E8E: FStStrNoPop var_1F4
  loc_D01E91: FLdI2 var_9E
  loc_D01E94: CI4UI1
  loc_D01E95: CVarI4
  loc_D01E99: PopAdLdVar
  loc_D01E9A: LitVarI4
  loc_D01EA2: PopAdLdVar
  loc_D01EA3: ImpAdLdRf MemVar_D93E08
  loc_D01EA6: NewIfNullPr frmPlanesdePago
  loc_D01EA9: VCallAd Control_ID_
  loc_D01EAC: FStAdFunc var_200
  loc_D01EAF: FLdPr var_200
  loc_D01EB2: LateIdCallLdVar
  loc_D01EBC: CStrVarTmp
  loc_D01EBD: FStStrNoPop var_1F8
  loc_D01EC0: ConcatStr
  loc_D01EC1: FStStrNoPop var_270
  loc_D01EC4: LitStr " AND CodiOfic = "
  loc_D01EC7: ConcatStr
  loc_D01EC8: CVarStr var_228
  loc_D01ECB: FLdRfVar var_1E4
  loc_D01ECE: FLdRfVar var_26C
  loc_D01ED1: LitVarStr var_2D4, "CodiOfic"
  loc_D01ED6: PopAdLdVar
  loc_D01ED7: FLdRfVar var_204
  loc_D01EDA: FLdPr Me
  loc_D01EDD: MemLdPr global_68
  loc_D01EE0:  = frmPlanesdePago.Recordset15.Fields
  loc_D01EE5: FLdPr var_204
  loc_D01EE8: from_stack_2 = Me.Item(from_stack_1)
  loc_D01EED: FLdPr var_26C
  loc_D01EF0:  = Me.Value
  loc_D01EF5: FLdRfVar var_1E4
  loc_D01EF8: ConcatVar var_238
  loc_D01EFC: LitVarStr var_2E4, " AND CuenCtct = '"
  loc_D01F01: ConcatVar var_248
  loc_D01F05: FLdRfVar var_268
  loc_D01F08: FLdRfVar var_308
  loc_D01F0B: LitVarStr var_2F4, "CuenCtct"
  loc_D01F10: PopAdLdVar
  loc_D01F11: FLdRfVar var_2B4
  loc_D01F14: FLdPr Me
  loc_D01F17: MemLdPr global_68
  loc_D01F1A:  = Me.Fields
  loc_D01F1F: FLdPr var_2B4
  loc_D01F22: from_stack_2 = Me.Item(from_stack_1)
  loc_D01F27: FLdPr var_308
  loc_D01F2A:  = Me.Value
  loc_D01F2F: FLdRfVar var_268
  loc_D01F32: ConcatVar var_280
  loc_D01F36: LitVarStr var_304, "'"
  loc_D01F3B: ConcatVar var_290
  loc_D01F3F: LitVarStr var_348, " AND PeriCtct = "
  loc_D01F44: ConcatVar var_2B0
  loc_D01F48: FLdRfVar var_2C4
  loc_D01F4B: FLdRfVar var_454
  loc_D01F4E: LitVarStr var_390, "PeriCtct"
  loc_D01F53: PopAdLdVar
  loc_D01F54: FLdRfVar var_35C
  loc_D01F57: FLdPr Me
  loc_D01F5A: MemLdPr global_68
  loc_D01F5D:  = Me.Fields
  loc_D01F62: FLdPr var_35C
  loc_D01F65: from_stack_2 = Me.Item(from_stack_1)
  loc_D01F6A: FLdPr var_454
  loc_D01F6D:  = Me.Value
  loc_D01F72: FLdRfVar var_2C4
  loc_D01F75: ConcatVar var_318
  loc_D01F79: LitVarStr var_3B0, " AND BimeCtct = "
  loc_D01F7E: ConcatVar var_328
  loc_D01F82: FLdRfVar var_338
  loc_D01F85: FLdRfVar var_5BC
  loc_D01F88: LitVarStr var_3C0, "BimeCtct"
  loc_D01F8D: PopAdLdVar
  loc_D01F8E: FLdRfVar var_4E8
  loc_D01F91: FLdPr Me
  loc_D01F94: MemLdPr global_68
  loc_D01F97:  = Me.Fields
  loc_D01F9C: FLdPr var_4E8
  loc_D01F9F: from_stack_2 = Me.Item(from_stack_1)
  loc_D01FA4: FLdPr var_5BC
  loc_D01FA7:  = Me.Value
  loc_D01FAC: FLdRfVar var_338
  loc_D01FAF: ConcatVar var_358
  loc_D01FB3: LitVarStr var_400, " AND NumeCtct = "
  loc_D01FB8: ConcatVar var_370
  loc_D01FBC: FLdRfVar var_380
  loc_D01FBF: FLdRfVar var_654
  loc_D01FC2: LitVarStr var_420, "NumeCtct"
  loc_D01FC7: PopAdLdVar
  loc_D01FC8: FLdRfVar var_608
  loc_D01FCB: FLdPr Me
  loc_D01FCE: MemLdPr global_68
  loc_D01FD1:  = Me.Fields
  loc_D01FD6: FLdPr var_608
  loc_D01FD9: from_stack_2 = Me.Item(from_stack_1)
  loc_D01FDE: FLdPr var_654
  loc_D01FE1:  = Me.Value
  loc_D01FE6: FLdRfVar var_380
  loc_D01FE9: ConcatVar var_3A0
  loc_D01FED: LitVarStr var_430, " AND MoviCtct = "
  loc_D01FF2: ConcatVar var_3D0
  loc_D01FF6: FLdRfVar var_3E0
  loc_D01FF9: FLdRfVar var_6EC
  loc_D01FFC: LitVarStr var_440, "MoviCtct"
  loc_D02001: PopAdLdVar
  loc_D02002: FLdRfVar var_6A0
  loc_D02005: FLdPr Me
  loc_D02008: MemLdPr global_68
  loc_D0200B:  = Me.Fields
  loc_D02010: FLdPr var_6A0
  loc_D02013: from_stack_2 = Me.Item(from_stack_1)
  loc_D02018: FLdPr var_6EC
  loc_D0201B:  = Me.Value
  loc_D02020: FLdRfVar var_3E0
  loc_D02023: ConcatVar var_3F0
  loc_D02027: LitVarStr var_450, " ORDER BY CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D0202C: ConcatVar var_410
  loc_D02030: CStrVarVal var_360
  loc_D02034: Call EjecutarRsCls3(from_stack_1v)
  loc_D02039: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = ""
  loc_D0204A: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = "": var_5BC = "": var_608 = "": var_654 = "": var_6A0 = ""
  loc_D02067: FFreeVar var_1D4 = "": var_228 = "": var_1E4 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_318 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = ""
  loc_D02094: FLdRfVar var_1FC
  loc_D02097: FLdPr Me
  loc_D0209A: MemLdPr global_72
  loc_D0209D:  = Me.RecordCount
  loc_D020A2: ILdRf var_1FC
  loc_D020A5: LitI4 0
  loc_D020AA: EqI4
  loc_D020AB: BranchF loc_D023D9
  loc_D020AE: FLdRfVar var_484
  loc_D020B1: FLdRfVar var_AFC
  loc_D020B4: LitVarStr var_4B4, "SaldCtct"
  loc_D020B9: PopAdLdVar
  loc_D020BA: FLdRfVar var_7D0
  loc_D020BD: FLdPr Me
  loc_D020C0: MemLdPr global_64
  loc_D020C3:  = Me.Fields
  loc_D020C8: FLdPr var_7D0
  loc_D020CB: from_stack_2 = Me.Item(from_stack_1)
  loc_D020D0: FLdPr var_AFC
  loc_D020D3:  = Me.Value
  loc_D020D8: FLdRfVar var_518
  loc_D020DB: FLdRfVar var_B04
  loc_D020DE: LitVarStr var_4D4, "SaldCtct"
  loc_D020E3: PopAdLdVar
  loc_D020E4: FLdRfVar var_B00
  loc_D020E7: FLdPr Me
  loc_D020EA: MemLdPr global_64
  loc_D020ED:  = Me.Fields
  loc_D020F2: FLdPr var_B00
  loc_D020F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D020FA: FLdPr var_B04
  loc_D020FD:  = Me.Value
  loc_D02102: LitStr " INSERT INTO facictacte (CodiFapa,CuotDefa,CodiOfic,CuenCtct,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiConc,CapiFacc,SaldFacc) "
  loc_D02105: LitStr " VALUES ("
  loc_D02108: ConcatStr
  loc_D02109: FStStrNoPop var_1E8
  loc_D0210C: ILdRf var_B4
  loc_D0210F: CStrI4
  loc_D02111: FStStrNoPop var_1EC
  loc_D02114: ConcatStr
  loc_D02115: FStStrNoPop var_1F0
  loc_D02118: LitStr ","
  loc_D0211B: ConcatStr
  loc_D0211C: FStStrNoPop var_1F4
  loc_D0211F: FLdI2 var_9E
  loc_D02122: CI4UI1
  loc_D02123: CVarI4
  loc_D02127: PopAdLdVar
  loc_D02128: LitVarI4
  loc_D02130: PopAdLdVar
  loc_D02131: ImpAdLdRf MemVar_D93E08
  loc_D02134: NewIfNullPr frmPlanesdePago
  loc_D02137: VCallAd Control_ID_
  loc_D0213A: FStAdFunc var_200
  loc_D0213D: FLdPr var_200
  loc_D02140: LateIdCallLdVar
  loc_D0214A: CStrVarTmp
  loc_D0214B: FStStrNoPop var_1F8
  loc_D0214E: ConcatStr
  loc_D0214F: FStStrNoPop var_270
  loc_D02152: LitStr ","
  loc_D02155: ConcatStr
  loc_D02156: CVarStr var_228
  loc_D02159: FLdRfVar var_1E4
  loc_D0215C: FLdRfVar var_26C
  loc_D0215F: LitVarStr var_2D4, "CodiOfic"
  loc_D02164: PopAdLdVar
  loc_D02165: FLdRfVar var_204
  loc_D02168: FLdPr Me
  loc_D0216B: MemLdPr global_68
  loc_D0216E:  = frmPlanesdePago.Recordset15.Fields
  loc_D02173: FLdPr var_204
  loc_D02176: from_stack_2 = Me.Item(from_stack_1)
  loc_D0217B: FLdPr var_26C
  loc_D0217E:  = Me.Value
  loc_D02183: FLdRfVar var_1E4
  loc_D02186: ConcatVar var_238
  loc_D0218A: LitVarStr var_2E4, ",'"
  loc_D0218F: ConcatVar var_248
  loc_D02193: FLdRfVar var_268
  loc_D02196: FLdRfVar var_308
  loc_D02199: LitVarStr var_2F4, "CuenCtct"
  loc_D0219E: PopAdLdVar
  loc_D0219F: FLdRfVar var_2B4
  loc_D021A2: FLdPr Me
  loc_D021A5: MemLdPr global_68
  loc_D021A8:  = Me.Fields
  loc_D021AD: FLdPr var_2B4
  loc_D021B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D021B5: FLdPr var_308
  loc_D021B8:  = Me.Value
  loc_D021BD: FLdRfVar var_268
  loc_D021C0: ConcatVar var_280
  loc_D021C4: LitVarStr var_304, "',"
  loc_D021C9: ConcatVar var_290
  loc_D021CD: FLdRfVar var_2B0
  loc_D021D0: FLdRfVar var_454
  loc_D021D3: LitVarStr var_348, "PeriCtct"
  loc_D021D8: PopAdLdVar
  loc_D021D9: FLdRfVar var_35C
  loc_D021DC: FLdPr Me
  loc_D021DF: MemLdPr global_68
  loc_D021E2:  = Me.Fields
  loc_D021E7: FLdPr var_35C
  loc_D021EA: from_stack_2 = Me.Item(from_stack_1)
  loc_D021EF: FLdPr var_454
  loc_D021F2:  = Me.Value
  loc_D021F7: FLdRfVar var_2B0
  loc_D021FA: ConcatVar var_2C4
  loc_D021FE: LitVarStr var_390, ","
  loc_D02203: ConcatVar var_318
  loc_D02207: FLdRfVar var_328
  loc_D0220A: FLdRfVar var_5BC
  loc_D0220D: LitVarStr var_3B0, "BimeCtct"
  loc_D02212: PopAdLdVar
  loc_D02213: FLdRfVar var_4E8
  loc_D02216: FLdPr Me
  loc_D02219: MemLdPr global_68
  loc_D0221C:  = Me.Fields
  loc_D02221: FLdPr var_4E8
  loc_D02224: from_stack_2 = Me.Item(from_stack_1)
  loc_D02229: FLdPr var_5BC
  loc_D0222C:  = Me.Value
  loc_D02231: FLdRfVar var_328
  loc_D02234: ConcatVar var_338
  loc_D02238: LitVarStr var_3C0, ","
  loc_D0223D: ConcatVar var_358
  loc_D02241: FLdRfVar var_370
  loc_D02244: FLdRfVar var_654
  loc_D02247: LitVarStr var_400, "NumeCtct"
  loc_D0224C: PopAdLdVar
  loc_D0224D: FLdRfVar var_608
  loc_D02250: FLdPr Me
  loc_D02253: MemLdPr global_68
  loc_D02256:  = Me.Fields
  loc_D0225B: FLdPr var_608
  loc_D0225E: from_stack_2 = Me.Item(from_stack_1)
  loc_D02263: FLdPr var_654
  loc_D02266:  = Me.Value
  loc_D0226B: FLdRfVar var_370
  loc_D0226E: ConcatVar var_380
  loc_D02272: LitVarStr var_420, ","
  loc_D02277: ConcatVar var_3A0
  loc_D0227B: FLdRfVar var_3D0
  loc_D0227E: FLdRfVar var_6EC
  loc_D02281: LitVarStr var_430, "MoviCtct"
  loc_D02286: PopAdLdVar
  loc_D02287: FLdRfVar var_6A0
  loc_D0228A: FLdPr Me
  loc_D0228D: MemLdPr global_68
  loc_D02290:  = Me.Fields
  loc_D02295: FLdPr var_6A0
  loc_D02298: from_stack_2 = Me.Item(from_stack_1)
  loc_D0229D: FLdPr var_6EC
  loc_D022A0:  = Me.Value
  loc_D022A5: FLdRfVar var_3D0
  loc_D022A8: ConcatVar var_3E0
  loc_D022AC: LitVarStr var_440, ",'"
  loc_D022B1: ConcatVar var_3F0
  loc_D022B5: FLdRfVar var_410
  loc_D022B8: FLdRfVar var_784
  loc_D022BB: LitVarStr var_450, "CodiConc"
  loc_D022C0: PopAdLdVar
  loc_D022C1: FLdRfVar var_738
  loc_D022C4: FLdPr Me
  loc_D022C7: MemLdPr global_68
  loc_D022CA:  = Me.Fields
  loc_D022CF: FLdPr var_738
  loc_D022D2: from_stack_2 = Me.Item(from_stack_1)
  loc_D022D7: FLdPr var_784
  loc_D022DA:  = Me.Value
  loc_D022DF: FLdRfVar var_410
  loc_D022E2: ConcatVar var_464
  loc_D022E6: LitVarStr var_494, "',"
  loc_D022EB: ConcatVar var_474
  loc_D022EF: LitI4 0
  loc_D022F4: LitI4 -1
  loc_D022F9: LitI4 1
  loc_D022FE: LitStr "."
  loc_D02301: LitStr ","
  loc_D02304: FLdRfVar var_484
  loc_D02307: CStrVarTmp
  loc_D02308: FStStrNoPop var_360
  loc_D0230B: ImpAdCallI2 Replace(, , , , , )
  loc_D02310: CVarStr var_4A4
  loc_D02313: ConcatVar var_4F8
  loc_D02317: LitVarStr var_4C4, ","
  loc_D0231C: ConcatVar var_508
  loc_D02320: LitI4 0
  loc_D02325: LitI4 -1
  loc_D0232A: LitI4 1
  loc_D0232F: LitStr "."
  loc_D02332: LitStr ","
  loc_D02335: FLdRfVar var_518
  loc_D02338: CStrVarTmp
  loc_D02339: FStStrNoPop var_5C0
  loc_D0233C: ImpAdCallI2 Replace(, , , , , )
  loc_D02341: CVarStr var_538
  loc_D02344: ConcatVar var_558
  loc_D02348: LitVarStr var_4E4, ");"
  loc_D0234D: ConcatVar var_578
  loc_D02351: CStrVarVal var_5C4
  loc_D02355: Call EjecutarRsCls(from_stack_1v)
  loc_D0235A: FFreeStr var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_270 = "": var_360 = "": var_5C0 = ""
  loc_D0236F: FFreeAd var_200 = "": var_204 = "": var_26C = "": var_2B4 = "": var_308 = "": var_35C = "": var_454 = "": var_4E8 = "": var_5BC = "": var_608 = "": var_654 = "": var_6A0 = "": var_6EC = "": var_738 = "": var_784 = "": var_7D0 = "": var_AFC = "": var_B00 = ""
  loc_D02398: FFreeVar var_578 = "": var_1D4 = "": var_228 = "": var_1E4 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2C4 = "": var_318 = "": var_328 = "": var_338 = "": var_358 = "": var_370 = "": var_380 = "": var_3A0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_464 = "": var_484 = "": var_474 = "": var_4A4 = "": var_4F8 = "": var_518 = "": var_508 = "": var_538 = ""
  loc_D023D9: FLdPr Me
  loc_D023DC: MemLdPr global_64
  loc_D023DF: Me.MoveNext
  loc_D023E4: Branch loc_D01CC8
  loc_D023E7: FLdI2 var_9E
  loc_D023EA: LitI2_Byte 1
  loc_D023EC: EqI2
  loc_D023ED: FLdI2 sCodiConc
  loc_D023F0: LitI2_Byte &HFF
  loc_D023F2: EqI2
  loc_D023F3: OrI4
  loc_D023F4: BranchF loc_D02569
  loc_D023F7: LitI4 2
  loc_D023FC: FLdRfVar var_150
  loc_D023FF: CVarRef
  loc_D02404: FLdRfVar var_1D4
  loc_D02407: ImpAdCallFPR4  = Round(, )
  loc_D0240C: FLdRfVar var_1D4
  loc_D0240F: LitI4 2
  loc_D02414: ImpAdLdRf MemVar_D93040
  loc_D02417: CVarRef
  loc_D0241C: FLdRfVar var_1E4
  loc_D0241F: ImpAdCallFPR4  = Round(, )
  loc_D02424: FLdRfVar var_1E4
  loc_D02427: NeVarBool
  loc_D02429: FFreeVar var_1D4 = ""
  loc_D02430: BranchF loc_D02441
  loc_D02433: LitStr "El total del CAPITAL del BOLETO no es igual al TOTAL del CAPITAL de los movimientos del boleto, verifique..."
  loc_D02436: FStStrCopy var_174
  loc_D02439: ILdRf var_174
  loc_D0243C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D02441: LitI4 2
  loc_D02446: FLdRfVar var_160
  loc_D02449: CVarRef
  loc_D0244E: FLdRfVar var_1D4
  loc_D02451: ImpAdCallFPR4  = Round(, )
  loc_D02456: FLdRfVar var_1D4
  loc_D02459: LitI4 2
  loc_D0245E: ImpAdLdRf MemVar_D93058
  loc_D02461: CVarRef
  loc_D02466: FLdRfVar var_1E4
  loc_D02469: ImpAdCallFPR4  = Round(, )
  loc_D0246E: FLdRfVar var_1E4
  loc_D02471: NeVarBool
  loc_D02473: FFreeVar var_1D4 = ""
  loc_D0247A: BranchF loc_D0248B
  loc_D0247D: LitStr "El total del RECARGO del boleto no es igual al TOTAL del RECARGO de los movimientos del boleto, verifique..."
  loc_D02480: FStStrCopy var_174
  loc_D02483: ILdRf var_174
  loc_D02486: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D0248B: LitI4 2
  loc_D02490: FLdRfVar var_168
  loc_D02493: CVarRef
  loc_D02498: FLdRfVar var_1D4
  loc_D0249B: ImpAdCallFPR4  = Round(, )
  loc_D024A0: FLdRfVar var_1D4
  loc_D024A3: LitI4 2
  loc_D024A8: ImpAdLdRf MemVar_D93060
  loc_D024AB: CVarRef
  loc_D024B0: FLdRfVar var_1E4
  loc_D024B3: ImpAdCallFPR4  = Round(, )
  loc_D024B8: FLdRfVar var_1E4
  loc_D024BB: NeVarBool
  loc_D024BD: FFreeVar var_1D4 = ""
  loc_D024C4: BranchF loc_D024D5
  loc_D024C7: LitStr "El total del INTERES del boleto no es igual al TOTAL del Interes de los movimientos del boleto, verifique..."
  loc_D024CA: FStStrCopy var_174
  loc_D024CD: ILdRf var_174
  loc_D024D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D024D5: LitI4 2
  loc_D024DA: FLdRfVar var_158
  loc_D024DD: CVarRef
  loc_D024E2: FLdRfVar var_1D4
  loc_D024E5: ImpAdCallFPR4  = Round(, )
  loc_D024EA: FLdRfVar var_1D4
  loc_D024ED: LitI4 2
  loc_D024F2: ImpAdLdRf MemVar_D93048
  loc_D024F5: CVarRef
  loc_D024FA: FLdRfVar var_1E4
  loc_D024FD: ImpAdCallFPR4  = Round(, )
  loc_D02502: FLdRfVar var_1E4
  loc_D02505: NeVarBool
  loc_D02507: FFreeVar var_1D4 = ""
  loc_D0250E: BranchF loc_D0251F
  loc_D02511: LitStr "El total del DESCUENTO del boleto no es igual al TOTAL del DESCUENTO de los movimientos del boleto, verifique..."
  loc_D02514: FStStrCopy var_174
  loc_D02517: ILdRf var_174
  loc_D0251A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D0251F: LitI4 2
  loc_D02524: FLdRfVar var_170
  loc_D02527: CVarRef
  loc_D0252C: FLdRfVar var_1D4
  loc_D0252F: ImpAdCallFPR4  = Round(, )
  loc_D02534: FLdRfVar var_1D4
  loc_D02537: LitI4 2
  loc_D0253C: ImpAdLdRf MemVar_D93070
  loc_D0253F: CVarRef
  loc_D02544: FLdRfVar var_1E4
  loc_D02547: ImpAdCallFPR4  = Round(, )
  loc_D0254C: FLdRfVar var_1E4
  loc_D0254F: NeVarBool
  loc_D02551: FFreeVar var_1D4 = ""
  loc_D02558: BranchF loc_D02569
  loc_D0255B: LitStr "El TOTAL GENERAL del BOLETO no es igual al TOTAL GENERAL del los movimientos del boleto, verifique..."
  loc_D0255E: FStStrCopy var_174
  loc_D02561: ILdRf var_174
  loc_D02564: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D02569: FLdRfVar var_9E
  loc_D0256C: NextI2 var_208, loc_CFF518
  loc_D02571: LitStr "COMMIT;"
  loc_D02574: Call EjecutarRsCls(from_stack_1v)
  loc_D02579: LitI2_Byte 0
  loc_D0257B: ImpAdLdRf MemVar_D93E08
  loc_D0257E: NewIfNullPr frmPlanesdePago
  loc_D02581: frmPlanesdePago.MousePointer = from_stack_1
  loc_D02586: LitStr "Facilidad Generada numero: "
  loc_D02589: ILdRf var_B4
  loc_D0258C: CStrI4
  loc_D0258E: FStStrNoPop var_1E8
  loc_D02591: ConcatStr
  loc_D02592: FStStr var_174
  loc_D02595: FFree1Str var_1E8
  loc_D02598: ILdRf var_174
  loc_D0259B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D025A0: ExitProcHresult
  loc_D025A1: LitStr "rollback"
  loc_D025A4: Call EjecutarRsCls(from_stack_1v)
  loc_D025A9: LitStr "ERROR: NO SE generó el boleto. "
  loc_D025AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D025B1: ExitProcHresult
End Sub

Public Sub FacilidaddePago(doDecaTifa, sExpeBole, sRespFapa, boEmiteBoleto, sCodiConc, lNumeOrde, sTelePers) 'D60308
  'Data Table: 4F2254
  loc_D59810: ILdRf sRespFapa
  loc_D59813: FStStrCopy var_88
  loc_D59816: ILdRf boEmiteBoleto
  loc_D59819: FStStrCopy var_8C
  loc_D5981C: ILdRf lNumeOrde
  loc_D5981F: FStStrCopy var_90
  loc_D59822: ILdRf arg_28
  loc_D59825: FStStrCopy var_94
  loc_D59828: LitI2_Byte 0
  loc_D5982A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D5982F: FStFPR8 var_A8
  loc_D59832: LitI2_Byte 0
  loc_D59834: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D59839: CVarDate var_208
  loc_D5983D: FLdRfVar var_218
  loc_D59840: ImpAdCallFPR4  = Year()
  loc_D59845: FLdRfVar var_218
  loc_D59848: CI2Var
  loc_D59849: FStI2 var_AA
  loc_D5984C: FFreeVar var_208 = ""
  loc_D59853: LitI2_Byte 0
  loc_D59855: CR8I2
  loc_D59856: ImpAdStFPR8 MemVar_D93040
  loc_D59859: LitI2_Byte 0
  loc_D5985B: CR8I2
  loc_D5985C: ImpAdStFPR8 MemVar_D93048
  loc_D5985F: LitI2_Byte 0
  loc_D59861: CR8I2
  loc_D59862: ImpAdStFPR8 MemVar_D93058
  loc_D59865: LitI2_Byte 0
  loc_D59867: CR8I2
  loc_D59868: ImpAdStFPR8 MemVar_D93060
  loc_D5986B: LitI2_Byte 0
  loc_D5986D: CR8I2
  loc_D5986E: ImpAdStFPR8 MemVar_D93070
  loc_D59871: FLdRfVar var_208
  loc_D59874: ImpAdCallFPR4  = Proc_270_142_A4F9EC()
  loc_D59879: FLdRfVar var_208
  loc_D5987C: CI4Var
  loc_D5987E: FStR4 var_B4
  loc_D59881: FFree1Var var_208 = ""
  loc_D59884: LitStr "SELECT *  FROM concplan WHERE PeriInfo = "
  loc_D59887: ImpAdLdI2 MemVar_D93034
  loc_D5988A: CStrUI1
  loc_D5988C: FStStrNoPop var_21C
  loc_D5988F: ConcatStr
  loc_D59890: FStStrNoPop var_220
  loc_D59893: LitStr " AND CodiConc = '"
  loc_D59896: ConcatStr
  loc_D59897: FStStrNoPop var_224
  loc_D5989A: ILdRf var_90
  loc_D5989D: ConcatStr
  loc_D5989E: FStStrNoPop var_228
  loc_D598A1: LitStr "'"
  loc_D598A4: ConcatStr
  loc_D598A5: FStStrNoPop var_22C
  loc_D598A8: Call EjecutarRsCls1(from_stack_1v)
  loc_D598AD: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = ""
  loc_D598BA: FLdRfVar var_230
  loc_D598BD: FLdPr Me
  loc_D598C0: MemLdPr global_64
  loc_D598C3:  = Me.RecordCount
  loc_D598C8: ILdRf var_230
  loc_D598CB: LitI4 0
  loc_D598D0: GtI4
  loc_D598D1: BranchF loc_D59912
  loc_D598D4: FLdRfVar var_208
  loc_D598D7: FLdRfVar var_238
  loc_D598DA: LitVarStr var_1F8, "SaldConc"
  loc_D598DF: PopAdLdVar
  loc_D598E0: FLdRfVar var_234
  loc_D598E3: FLdPr Me
  loc_D598E6: MemLdPr global_64
  loc_D598E9:  = Me.Fields
  loc_D598EE: FLdPr var_234
  loc_D598F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D598F6: FLdPr var_238
  loc_D598F9:  = Me.Value
  loc_D598FE: FLdRfVar var_208
  loc_D59901: CStrVarTmp
  loc_D59902: FStStr var_E4
  loc_D59905: FFreeAd var_234 = ""
  loc_D5990C: FFree1Var var_208 = ""
  loc_D5990F: Branch loc_D59918
  loc_D59912: LitStr vbNullString
  loc_D59915: FStStrCopy var_E4
  loc_D59918: LitI2_Byte 1
  loc_D5991A: FLdRfVar var_9E
  loc_D5991D: ImpAdLdRf MemVar_D93E08
  loc_D59920: NewIfNullPr frmPlanesdePago
  loc_D59923: VCallAd Control_ID_
  loc_D59926: FStAdFunc var_234
  loc_D59929: FLdPr var_234
  loc_D5992C: LateIdLdVar var_208 DispID_4 0
  loc_D59933: CI4Var
  loc_D59935: LitI4 1
  loc_D5993A: SubI4
  loc_D5993B: CI2I4
  loc_D5993C: FFree1Ad var_234
  loc_D5993F: FFree1Var var_208 = ""
  loc_D59942: ForI2 var_23C
  loc_D59948: OnErrorGoto loc_D602EA
  loc_D5994B: LitStr "START TRANSACTION; "
  loc_D5994E: Call EjecutarRsCls(from_stack_1v)
  loc_D59953: FLdI2 var_9E
  loc_D59956: LitI2_Byte 1
  loc_D59958: EqI2
  loc_D59959: BranchF loc_D5A0B3
  loc_D5995C: LitI2_Byte 0
  loc_D5995E: FStI2 var_A0
  loc_D59961: LitStr "Municipalidad de Guaymallén"
  loc_D59964: LitStr "Municipalidad de Guaymallén"
  loc_D59967: EqStr
  loc_D59969: BranchF loc_D59FEA
  loc_D5996C: ILdRf var_E4
  loc_D5996F: LitStr vbNullString
  loc_D59972: EqStr
  loc_D59974: BranchF loc_D59A03
  loc_D59977: FLdI2 var_9E
  loc_D5997A: CI4UI1
  loc_D5997B: CVarI4
  loc_D5997F: PopAdLdVar
  loc_D59980: LitVarI4
  loc_D59988: PopAdLdVar
  loc_D59989: ImpAdLdRf MemVar_D93E08
  loc_D5998C: NewIfNullPr frmPlanesdePago
  loc_D5998F: VCallAd Control_ID_
  loc_D59992: FStAdFunc var_234
  loc_D59995: FLdPr var_234
  loc_D59998: LateIdCallLdVar
  loc_D599A2: CStrVarTmp
  loc_D599A3: FStStrNoPop var_21C
  loc_D599A6: LitStr "4"
  loc_D599A9: EqStr
  loc_D599AB: FFree1Str var_21C
  loc_D599AE: FFree1Ad var_234
  loc_D599B1: FFree1Var var_208 = ""
  loc_D599B4: BranchF loc_D599BD
  loc_D599B7: LitStr "13020305"
  loc_D599BA: FStStrCopy var_E4
  loc_D599BD: FLdI2 var_9E
  loc_D599C0: CI4UI1
  loc_D599C1: CVarI4
  loc_D599C5: PopAdLdVar
  loc_D599C6: LitVarI4
  loc_D599CE: PopAdLdVar
  loc_D599CF: ImpAdLdRf MemVar_D93E08
  loc_D599D2: NewIfNullPr frmPlanesdePago
  loc_D599D5: VCallAd Control_ID_
  loc_D599D8: FStAdFunc var_234
  loc_D599DB: FLdPr var_234
  loc_D599DE: LateIdCallLdVar
  loc_D599E8: CStrVarTmp
  loc_D599E9: FStStrNoPop var_21C
  loc_D599EC: LitStr "5"
  loc_D599EF: EqStr
  loc_D599F1: FFree1Str var_21C
  loc_D599F4: FFree1Ad var_234
  loc_D599F7: FFree1Var var_208 = ""
  loc_D599FA: BranchF loc_D59A03
  loc_D599FD: LitStr "13030801"
  loc_D59A00: FStStrCopy var_E4
  loc_D59A03: FLdRfVar var_228
  loc_D59A06: ImpAdLdRf MemVar_D93E08
  loc_D59A09: NewIfNullPr frmPlanesdePago
  loc_D59A0C: VCallAd Control_ID_
  loc_D59A0F: FStAdFunc var_234
  loc_D59A12: FLdPr var_234
  loc_D59A15:  = frmPlanesdePago.Label.Caption
  loc_D59A1A: FLdRfVar var_22C
  loc_D59A1D: ImpAdLdRf MemVar_D93E08
  loc_D59A20: NewIfNullPr frmPlanesdePago
  loc_D59A23: VCallAd Control_ID_
  loc_D59A26: FStAdFunc var_238
  loc_D59A29: FLdPr var_238
  loc_D59A2C:  = frmPlanesdePago.Label.Caption
  loc_D59A31: FLdZeroAd var_22C
  loc_D59A34: CVarStr var_218
  loc_D59A37: LitVarI2 var_208, 0
  loc_D59A3C: ILdRf var_228
  loc_D59A3F: LitStr vbNullString
  loc_D59A42: EqStr
  loc_D59A44: CVarBoolI2 var_1F8
  loc_D59A48: FLdRfVar var_27C
  loc_D59A4B: ImpAdCallFPR4  = IIf(, , )
  loc_D59A50: FLdRfVar var_418
  loc_D59A53: ImpAdLdRf MemVar_D93E08
  loc_D59A56: NewIfNullPr frmPlanesdePago
  loc_D59A59: VCallAd Control_ID_
  loc_D59A5C: FStAdFunc var_414
  loc_D59A5F: FLdPr var_414
  loc_D59A62:  = frmPlanesdePago.Label.Caption
  loc_D59A67: FLdRfVar var_430
  loc_D59A6A: ImpAdLdRf MemVar_D93E08
  loc_D59A6D: NewIfNullPr frmPlanesdePago
  loc_D59A70: VCallAd Control_ID_
  loc_D59A73: FStAdFunc var_42C
  loc_D59A76: FLdPr var_42C
  loc_D59A79:  = frmPlanesdePago.TextBox.Text
  loc_D59A7E: FLdRfVar var_448
  loc_D59A81: ImpAdLdRf MemVar_D93E08
  loc_D59A84: NewIfNullPr frmPlanesdePago
  loc_D59A87: VCallAd Control_ID_
  loc_D59A8A: FStAdFunc var_444
  loc_D59A8D: FLdPr var_444
  loc_D59A90:  = frmPlanesdePago.TextBox.Text
  loc_D59A95: FLdRfVar var_460
  loc_D59A98: ImpAdLdRf MemVar_D93E08
  loc_D59A9B: NewIfNullPr frmPlanesdePago
  loc_D59A9E: VCallAd Control_ID_
  loc_D59AA1: FStAdFunc var_45C
  loc_D59AA4: FLdPr var_45C
  loc_D59AA7:  = frmPlanesdePago.TextBox.Text
  loc_D59AAC: FLdRfVar var_478
  loc_D59AAF: ImpAdLdRf MemVar_D93E08
  loc_D59AB2: NewIfNullPr frmPlanesdePago
  loc_D59AB5: VCallAd Control_ID_
  loc_D59AB8: FStAdFunc var_474
  loc_D59ABB: FLdPr var_474
  loc_D59ABE:  = frmPlanesdePago.TextBox.Text
  loc_D59AC3: FLdRfVar var_490
  loc_D59AC6: ImpAdLdRf MemVar_D93E08
  loc_D59AC9: NewIfNullPr frmPlanesdePago
  loc_D59ACC: VCallAd Control_ID_
  loc_D59ACF: FStAdFunc var_48C
  loc_D59AD2: FLdPr var_48C
  loc_D59AD5:  = frmPlanesdePago.TextBox.Text
  loc_D59ADA: FLdRfVar var_4A8
  loc_D59ADD: ImpAdLdRf MemVar_D93E08
  loc_D59AE0: NewIfNullPr frmPlanesdePago
  loc_D59AE3: VCallAd Control_ID_
  loc_D59AE6: FStAdFunc var_4A4
  loc_D59AE9: FLdPr var_4A4
  loc_D59AEC:  = frmPlanesdePago.TextBox.Text
  loc_D59AF1: FLdRfVar var_4C0
  loc_D59AF4: ImpAdLdRf MemVar_D93E08
  loc_D59AF7: NewIfNullPr frmPlanesdePago
  loc_D59AFA: VCallAd Control_ID_
  loc_D59AFD: FStAdFunc var_4BC
  loc_D59B00: FLdPr var_4BC
  loc_D59B03:  = frmPlanesdePago.TextBox.Text
  loc_D59B08: FLdRfVar var_4D6
  loc_D59B0B: ImpAdLdRf MemVar_D93E08
  loc_D59B0E: NewIfNullPr frmPlanesdePago
  loc_D59B11: VCallAd Control_ID_
  loc_D59B14: FStAdFunc var_4D4
  loc_D59B17: FLdPr var_4D4
  loc_D59B1A:  = frmPlanesdePago.ComboBox.ListIndex
  loc_D59B1F: FLdRfVar var_4F0
  loc_D59B22: ImpAdLdRf MemVar_D93E08
  loc_D59B25: NewIfNullPr frmPlanesdePago
  loc_D59B28: VCallAd Control_ID_
  loc_D59B2B: FStAdFunc var_4EC
  loc_D59B2E: FLdPr var_4EC
  loc_D59B31:  = frmPlanesdePago.TextBox.Text
  loc_D59B36: LitStr " INSERT INTO facipago (CodiFapa,CucuPers,CodiTifa,CacuFapa,CaapFapa,FealFapa,FepaFapa,CodiOfic,CuenCtct,PeriInfo,ConcPago,EstaFapa,TainFapa,NovaFapa,CapiFapa,DecaFapa,RecaFapa,DereFapa,ApreFapa,InteFapa,TotaFapa,CodiTifp,CufiFapa,FirmFapa,AltaUsua) "
  loc_D59B39: LitStr " VALUES ("
  loc_D59B3C: ConcatStr
  loc_D59B3D: FStStrNoPop var_21C
  loc_D59B40: ILdRf var_B4
  loc_D59B43: CStrI4
  loc_D59B45: FStStrNoPop var_220
  loc_D59B48: ConcatStr
  loc_D59B49: FStStrNoPop var_224
  loc_D59B4C: LitStr ",'"
  loc_D59B4F: ConcatStr
  loc_D59B50: FStStrNoPop var_284
  loc_D59B53: LitI4 0
  loc_D59B58: LitI4 -1
  loc_D59B5D: LitI4 1
  loc_D59B62: LitStr vbNullString
  loc_D59B65: LitStr "-"
  loc_D59B68: FLdRfVar var_27C
  loc_D59B6B: CStrVarVal var_280
  loc_D59B6F: ImpAdCallI2 Replace(, , , , , )
  loc_D59B74: FStStrNoPop var_288
  loc_D59B77: ConcatStr
  loc_D59B78: FStStrNoPop var_28C
  loc_D59B7B: LitStr "',"
  loc_D59B7E: ConcatStr
  loc_D59B7F: FStStrNoPop var_298
  loc_D59B82: FLdRfVar var_294
  loc_D59B85: ImpAdLdRf MemVar_D93E08
  loc_D59B88: NewIfNullPr frmPlanesdePago
  loc_D59B8B: VCallAd Control_ID_
  loc_D59B8E: FStAdFunc var_290
  loc_D59B91: FLdPr var_290
  loc_D59B94:  = frmPlanesdePago.TextBox.Text
  loc_D59B99: ILdRf var_294
  loc_D59B9C: ConcatStr
  loc_D59B9D: FStStrNoPop var_29C
  loc_D59BA0: LitStr ","
  loc_D59BA3: ConcatStr
  loc_D59BA4: FStStrNoPop var_2E8
  loc_D59BA7: ImpAdLdRf MemVar_D93E08
  loc_D59BAA: NewIfNullPr frmPlanesdePago
  loc_D59BAD: VCallAd Control_ID_
  loc_D59BB0: FStAdFunc var_2A0
  loc_D59BB3: FLdPr var_2A0
  loc_D59BB6: LateIdLdVar var_2B0 DispID_10 0
  loc_D59BBD: CI4Var
  loc_D59BBF: CVarI4
  loc_D59BC3: PopAdLdVar
  loc_D59BC4: LitVarI4
  loc_D59BCC: PopAdLdVar
  loc_D59BCD: ImpAdLdRf MemVar_D93E08
  loc_D59BD0: NewIfNullPr frmPlanesdePago
  loc_D59BD3: VCallAd Control_ID_
  loc_D59BD6: FStAdFunc var_2D4
  loc_D59BD9: FLdPr var_2D4
  loc_D59BDC: LateIdCallLdVar
  loc_D59BE6: CStrVarTmp
  loc_D59BE7: FStStrNoPop var_2EC
  loc_D59BEA: ConcatStr
  loc_D59BEB: FStStrNoPop var_2F0
  loc_D59BEE: LitStr ","
  loc_D59BF1: ConcatStr
  loc_D59BF2: FStStrNoPop var_2FC
  loc_D59BF5: FLdRfVar var_2F8
  loc_D59BF8: ImpAdLdRf MemVar_D93E08
  loc_D59BFB: NewIfNullPr frmPlanesdePago
  loc_D59BFE: VCallAd Control_ID_
  loc_D59C01: FStAdFunc var_2F4
  loc_D59C04: FLdPr var_2F4
  loc_D59C07:  = frmPlanesdePago.TextBox.Text
  loc_D59C0C: ILdRf var_2F8
  loc_D59C0F: ConcatStr
  loc_D59C10: FStStrNoPop var_300
  loc_D59C13: LitStr ",'"
  loc_D59C16: ConcatStr
  loc_D59C17: FStStrNoPop var_334
  loc_D59C1A: LitI4 1
  loc_D59C1F: LitI4 1
  loc_D59C24: LitVarStr var_320, "yyyy-mm-dd"
  loc_D59C29: FStVarCopyObj var_330
  loc_D59C2C: FLdRfVar var_330
  loc_D59C2F: FLdRfVar var_A8
  loc_D59C32: CVarRef
  loc_D59C37: ImpAdCallI2 Format$(, )
  loc_D59C3C: FStStrNoPop var_338
  loc_D59C3F: ConcatStr
  loc_D59C40: FStStrNoPop var_33C
  loc_D59C43: LitStr "',NULL,"
  loc_D59C46: ConcatStr
  loc_D59C47: FStStrNoPop var_394
  loc_D59C4A: FLdI2 var_9E
  loc_D59C4D: CI4UI1
  loc_D59C4E: CVarI4
  loc_D59C52: PopAdLdVar
  loc_D59C53: LitVarI4
  loc_D59C5B: PopAdLdVar
  loc_D59C5C: ImpAdLdRf MemVar_D93E08
  loc_D59C5F: NewIfNullPr frmPlanesdePago
  loc_D59C62: VCallAd Control_ID_
  loc_D59C65: FStAdFunc var_380
  loc_D59C68: FLdPr var_380
  loc_D59C6B: LateIdCallLdVar
  loc_D59C75: CStrVarTmp
  loc_D59C76: FStStrNoPop var_398
  loc_D59C79: ConcatStr
  loc_D59C7A: FStStrNoPop var_39C
  loc_D59C7D: LitStr ",'"
  loc_D59C80: ConcatStr
  loc_D59C81: FStStrNoPop var_3F4
  loc_D59C84: FLdI2 var_9E
  loc_D59C87: CI4UI1
  loc_D59C88: CVarI4
  loc_D59C8C: PopAdLdVar
  loc_D59C8D: LitVarI4
  loc_D59C95: PopAdLdVar
  loc_D59C96: ImpAdLdRf MemVar_D93E08
  loc_D59C99: NewIfNullPr frmPlanesdePago
  loc_D59C9C: VCallAd Control_ID_
  loc_D59C9F: FStAdFunc var_3E0
  loc_D59CA2: FLdPr var_3E0
  loc_D59CA5: LateIdCallLdVar
  loc_D59CAF: CStrVarTmp
  loc_D59CB0: FStStrNoPop var_3F8
  loc_D59CB3: ConcatStr
  loc_D59CB4: FStStrNoPop var_3FC
  loc_D59CB7: LitStr "',"
  loc_D59CBA: ConcatStr
  loc_D59CBB: FStStrNoPop var_400
  loc_D59CBE: ImpAdLdI2 MemVar_D93034
  loc_D59CC1: CStrUI1
  loc_D59CC3: FStStrNoPop var_404
  loc_D59CC6: ConcatStr
  loc_D59CC7: FStStrNoPop var_408
  loc_D59CCA: LitStr ",'"
  loc_D59CCD: ConcatStr
  loc_D59CCE: FStStrNoPop var_40C
  loc_D59CD1: ILdRf var_E4
  loc_D59CD4: ConcatStr
  loc_D59CD5: FStStrNoPop var_410
  loc_D59CD8: LitStr "','Activa',"
  loc_D59CDB: ConcatStr
  loc_D59CDC: FStStrNoPop var_420
  loc_D59CDF: LitI4 0
  loc_D59CE4: LitI4 -1
  loc_D59CE9: LitI4 1
  loc_D59CEE: LitStr "."
  loc_D59CF1: LitStr ","
  loc_D59CF4: ILdRf var_418
  loc_D59CF7: CR8Str
  loc_D59CF9: CStrR8
  loc_D59CFB: FStStrNoPop var_41C
  loc_D59CFE: ImpAdCallI2 Replace(, , , , , )
  loc_D59D03: FStStrNoPop var_424
  loc_D59D06: ConcatStr
  loc_D59D07: FStStrNoPop var_428
  loc_D59D0A: LitStr ",0,"
  loc_D59D0D: ConcatStr
  loc_D59D0E: FStStrNoPop var_438
  loc_D59D11: LitI4 0
  loc_D59D16: LitI4 -1
  loc_D59D1B: LitI4 1
  loc_D59D20: LitStr "."
  loc_D59D23: LitStr ","
  loc_D59D26: ILdRf var_430
  loc_D59D29: CR8Str
  loc_D59D2B: CStrR8
  loc_D59D2D: FStStrNoPop var_434
  loc_D59D30: ImpAdCallI2 Replace(, , , , , )
  loc_D59D35: FStStrNoPop var_43C
  loc_D59D38: ConcatStr
  loc_D59D39: FStStrNoPop var_440
  loc_D59D3C: LitStr ","
  loc_D59D3F: ConcatStr
  loc_D59D40: FStStrNoPop var_450
  loc_D59D43: LitI4 0
  loc_D59D48: LitI4 -1
  loc_D59D4D: LitI4 1
  loc_D59D52: LitStr "."
  loc_D59D55: LitStr ","
  loc_D59D58: ILdRf var_448
  loc_D59D5B: CR8Str
  loc_D59D5D: CStrR8
  loc_D59D5F: FStStrNoPop var_44C
  loc_D59D62: ImpAdCallI2 Replace(, , , , , )
  loc_D59D67: FStStrNoPop var_454
  loc_D59D6A: ConcatStr
  loc_D59D6B: FStStrNoPop var_458
  loc_D59D6E: LitStr ","
  loc_D59D71: ConcatStr
  loc_D59D72: FStStrNoPop var_468
  loc_D59D75: LitI4 0
  loc_D59D7A: LitI4 -1
  loc_D59D7F: LitI4 1
  loc_D59D84: LitStr "."
  loc_D59D87: LitStr ","
  loc_D59D8A: ILdRf var_460
  loc_D59D8D: CR8Str
  loc_D59D8F: CStrR8
  loc_D59D91: FStStrNoPop var_464
  loc_D59D94: ImpAdCallI2 Replace(, , , , , )
  loc_D59D99: FStStrNoPop var_46C
  loc_D59D9C: ConcatStr
  loc_D59D9D: FStStrNoPop var_470
  loc_D59DA0: LitStr ","
  loc_D59DA3: ConcatStr
  loc_D59DA4: FStStrNoPop var_480
  loc_D59DA7: LitI4 0
  loc_D59DAC: LitI4 -1
  loc_D59DB1: LitI4 1
  loc_D59DB6: LitStr "."
  loc_D59DB9: LitStr ","
  loc_D59DBC: ILdRf var_478
  loc_D59DBF: CR8Str
  loc_D59DC1: CStrR8
  loc_D59DC3: FStStrNoPop var_47C
  loc_D59DC6: ImpAdCallI2 Replace(, , , , , )
  loc_D59DCB: FStStrNoPop var_484
  loc_D59DCE: ConcatStr
  loc_D59DCF: FStStrNoPop var_488
  loc_D59DD2: LitStr ","
  loc_D59DD5: ConcatStr
  loc_D59DD6: FStStrNoPop var_498
  loc_D59DD9: LitI4 0
  loc_D59DDE: LitI4 -1
  loc_D59DE3: LitI4 1
  loc_D59DE8: LitStr "."
  loc_D59DEB: LitStr ","
  loc_D59DEE: ILdRf var_490
  loc_D59DF1: CR8Str
  loc_D59DF3: CStrR8
  loc_D59DF5: FStStrNoPop var_494
  loc_D59DF8: ImpAdCallI2 Replace(, , , , , )
  loc_D59DFD: FStStrNoPop var_49C
  loc_D59E00: ConcatStr
  loc_D59E01: FStStrNoPop var_4A0
  loc_D59E04: LitStr ","
  loc_D59E07: ConcatStr
  loc_D59E08: FStStrNoPop var_4B0
  loc_D59E0B: LitI4 0
  loc_D59E10: LitI4 -1
  loc_D59E15: LitI4 1
  loc_D59E1A: LitStr "."
  loc_D59E1D: LitStr ","
  loc_D59E20: ILdRf var_4A8
  loc_D59E23: CR8Str
  loc_D59E25: CStrR8
  loc_D59E27: FStStrNoPop var_4AC
  loc_D59E2A: ImpAdCallI2 Replace(, , , , , )
  loc_D59E2F: FStStrNoPop var_4B4
  loc_D59E32: ConcatStr
  loc_D59E33: FStStrNoPop var_4B8
  loc_D59E36: LitStr ","
  loc_D59E39: ConcatStr
  loc_D59E3A: FStStrNoPop var_4C8
  loc_D59E3D: LitI4 0
  loc_D59E42: LitI4 -1
  loc_D59E47: LitI4 1
  loc_D59E4C: LitStr "."
  loc_D59E4F: LitStr ","
  loc_D59E52: ILdRf var_4C0
  loc_D59E55: CR8Str
  loc_D59E57: CStrR8
  loc_D59E59: FStStrNoPop var_4C4
  loc_D59E5C: ImpAdCallI2 Replace(, , , , , )
  loc_D59E61: FStStrNoPop var_4CC
  loc_D59E64: ConcatStr
  loc_D59E65: FStStrNoPop var_4D0
  loc_D59E68: LitStr ","
  loc_D59E6B: ConcatStr
  loc_D59E6C: FStStrNoPop var_4E0
  loc_D59E6F: FLdRfVar var_230
  loc_D59E72: FLdI2 var_4D6
  loc_D59E75: ImpAdLdRf MemVar_D93E08
  loc_D59E78: NewIfNullPr frmPlanesdePago
  loc_D59E7B: VCallAd Control_ID_
  loc_D59E7E: FStAdFunc var_4DC
  loc_D59E81: FLdPr var_4DC
  loc_D59E84:  = frmPlanesdePago.ComboBox.ItemData
  loc_D59E89: ILdRf var_230
  loc_D59E8C: CStrI4
  loc_D59E8E: FStStrNoPop var_4E4
  loc_D59E91: ConcatStr
  loc_D59E92: FStStrNoPop var_4E8
  loc_D59E95: LitStr ","
  loc_D59E98: ConcatStr
  loc_D59E99: FStStrNoPop var_4F4
  loc_D59E9C: LitI4 0
  loc_D59EA1: LitI4 -1
  loc_D59EA6: LitI4 1
  loc_D59EAB: LitStr vbNullString
  loc_D59EAE: LitStr "-"
  loc_D59EB1: ILdRf var_4F0
  loc_D59EB4: ImpAdCallI2 Replace(, , , , , )
  loc_D59EB9: FStStrNoPop var_4F8
  loc_D59EBC: ConcatStr
  loc_D59EBD: FStStrNoPop var_4FC
  loc_D59EC0: LitStr ",'"
  loc_D59EC3: ConcatStr
  loc_D59EC4: FStStrNoPop var_508
  loc_D59EC7: FLdRfVar var_504
  loc_D59ECA: ImpAdLdRf MemVar_D93E08
  loc_D59ECD: NewIfNullPr frmPlanesdePago
  loc_D59ED0: VCallAd Control_ID_
  loc_D59ED3: FStAdFunc var_500
  loc_D59ED6: FLdPr var_500
  loc_D59ED9:  = frmPlanesdePago.TextBox.Text
  loc_D59EDE: ILdRf var_504
  loc_D59EE1: ConcatStr
  loc_D59EE2: FStStrNoPop var_50C
  loc_D59EE5: LitStr "','"
  loc_D59EE8: ConcatStr
  loc_D59EE9: FStStrNoPop var_510
  loc_D59EEC: ImpAdLdI4 MemVar_D9302C
  loc_D59EEF: ConcatStr
  loc_D59EF0: FStStrNoPop var_514
  loc_D59EF3: LitStr "');"
  loc_D59EF6: ConcatStr
  loc_D59EF7: FStStrNoPop var_518
  loc_D59EFA: Call EjecutarRsCls(from_stack_1v)
  loc_D59EFF: FFreeStr var_4A0 = "": var_4A8 = "": var_4AC = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4C0 = "": var_4C4 = "": var_4C8 = "": var_4CC = "": var_4D0 = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4F0 = "": var_4F4 = "": var_4F8 = "": var_4FC = "": var_508 = "": var_504 = "": var_50C = "": var_510 = "": var_514 = "": var_518 = "": var_410 = "": var_418 = "": var_41C = "": var_420 = "": var_424 = "": var_428 = "": var_430 = "": var_434 = "": var_438 = "": var_43C = "": var_440 = "": var_448 = "": var_44C = "": var_450 = "": var_454 = "": var_458 = "": var_460 = "": var_464 = "": var_468 = "": var_46C = "": var_470 = "": var_478 = "": var_47C = "": var_480 = "": var_484 = "": var_488 = "": var_490 = "": var_494 = "": var_498 = "": var_49C = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_298 = "": var_294 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2FC = "": var_2F8 = "": var_300 = "": var_334 = "": var_338 = "": var_33C = "": var_394 = "": var_398 = "": var_39C = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = ""
  loc_D59FAA: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = ""
  loc_D59FD5: FFreeVar var_1F8 = "": var_208 = "": var_218 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = ""
  loc_D59FEA: FLdRfVar var_4D6
  loc_D59FED: ImpAdLdRf MemVar_D93E08
  loc_D59FF0: NewIfNullPr frmPlanesdePago
  loc_D59FF3: VCallAd Control_ID_
  loc_D59FF6: FStAdFunc var_234
  loc_D59FF9: FLdPr var_234
  loc_D59FFC:  = frmPlanesdePago.TextBox.Visible
  loc_D5A001: FLdI2 var_4D6
  loc_D5A004: LitI2_Byte &HFF
  loc_D5A006: EqI2
  loc_D5A007: FLdRfVar var_51A
  loc_D5A00A: ImpAdLdRf MemVar_D93E08
  loc_D5A00D: NewIfNullPr frmPlanesdePago
  loc_D5A010: VCallAd Control_ID_
  loc_D5A013: FStAdFunc var_238
  loc_D5A016: FLdPr var_238
  loc_D5A019:  = frmPlanesdePago.TextBox.Visible
  loc_D5A01E: FLdI2 var_51A
  loc_D5A021: LitI2_Byte &HFF
  loc_D5A023: EqI2
  loc_D5A024: AndI4
  loc_D5A025: FFreeAd var_234 = ""
  loc_D5A02C: BranchF loc_D5A0B0
  loc_D5A02F: LitStr " UPDATE obreinmu SET CodiFapa = "
  loc_D5A032: ILdRf var_B4
  loc_D5A035: CStrI4
  loc_D5A037: FStStrNoPop var_21C
  loc_D5A03A: ConcatStr
  loc_D5A03B: FStStrNoPop var_220
  loc_D5A03E: LitStr " WHERE OrdeObre = '"
  loc_D5A041: ConcatStr
  loc_D5A042: FStStrNoPop var_228
  loc_D5A045: FLdRfVar var_224
  loc_D5A048: ImpAdLdRf MemVar_D93E08
  loc_D5A04B: NewIfNullPr frmPlanesdePago
  loc_D5A04E: VCallAd Control_ID_
  loc_D5A051: FStAdFunc var_234
  loc_D5A054: FLdPr var_234
  loc_D5A057:  = frmPlanesdePago.TextBox.Text
  loc_D5A05C: ILdRf var_224
  loc_D5A05F: ConcatStr
  loc_D5A060: FStStrNoPop var_22C
  loc_D5A063: LitStr "' AND CodiInmu = "
  loc_D5A066: ConcatStr
  loc_D5A067: FStStrNoPop var_284
  loc_D5A06A: FLdRfVar var_280
  loc_D5A06D: ImpAdLdRf MemVar_D93E08
  loc_D5A070: NewIfNullPr frmPlanesdePago
  loc_D5A073: VCallAd Control_ID_
  loc_D5A076: FStAdFunc var_238
  loc_D5A079: FLdPr var_238
  loc_D5A07C:  = frmPlanesdePago.TextBox.Text
  loc_D5A081: ILdRf var_280
  loc_D5A084: ConcatStr
  loc_D5A085: FStStrNoPop var_288
  loc_D5A088: LitStr ";"
  loc_D5A08B: ConcatStr
  loc_D5A08C: FStStrNoPop var_28C
  loc_D5A08F: Call EjecutarRsCls(from_stack_1v)
  loc_D5A094: FFreeStr var_21C = "": var_220 = "": var_228 = "": var_224 = "": var_22C = "": var_284 = "": var_280 = "": var_288 = ""
  loc_D5A0A9: FFreeAd var_234 = ""
  loc_D5A0B0: Branch loc_D5A0B8
  loc_D5A0B3: LitI2_Byte 0
  loc_D5A0B5: FStI2 var_A0
  loc_D5A0B8: FLdI2 var_9E
  loc_D5A0BB: CI4UI1
  loc_D5A0BC: CVarI4
  loc_D5A0C0: PopAdLdVar
  loc_D5A0C1: LitVarI4
  loc_D5A0C9: PopAdLdVar
  loc_D5A0CA: ImpAdLdRf MemVar_D93E08
  loc_D5A0CD: NewIfNullPr frmPlanesdePago
  loc_D5A0D0: VCallAd Control_ID_
  loc_D5A0D3: FStAdFunc var_238
  loc_D5A0D6: FLdPr var_238
  loc_D5A0D9: LateIdCallLdVar
  loc_D5A0E3: PopAd
  loc_D5A0E5: FLdI2 var_9E
  loc_D5A0E8: CI4UI1
  loc_D5A0E9: CVarI4
  loc_D5A0ED: PopAdLdVar
  loc_D5A0EE: LitVarI4
  loc_D5A0F6: PopAdLdVar
  loc_D5A0F7: ImpAdLdRf MemVar_D93E08
  loc_D5A0FA: NewIfNullPr frmPlanesdePago
  loc_D5A0FD: VCallAd Control_ID_
  loc_D5A100: FStAdFunc var_290
  loc_D5A103: FLdPr var_290
  loc_D5A106: LateIdCallLdVar
  loc_D5A110: PopAd
  loc_D5A112: FLdI2 var_9E
  loc_D5A115: CI4UI1
  loc_D5A116: CVarI4
  loc_D5A11A: PopAdLdVar
  loc_D5A11B: LitVarI4
  loc_D5A123: PopAdLdVar
  loc_D5A124: ImpAdLdRf MemVar_D93E08
  loc_D5A127: NewIfNullPr frmPlanesdePago
  loc_D5A12A: VCallAd Control_ID_
  loc_D5A12D: FStAdFunc var_2A0
  loc_D5A130: FLdPr var_2A0
  loc_D5A133: LateIdCallLdVar
  loc_D5A13D: PopAd
  loc_D5A13F: FLdI2 var_9E
  loc_D5A142: CI4UI1
  loc_D5A143: CVarI4
  loc_D5A147: PopAdLdVar
  loc_D5A148: LitVarI4
  loc_D5A150: PopAdLdVar
  loc_D5A151: ImpAdLdRf MemVar_D93E08
  loc_D5A154: NewIfNullPr frmPlanesdePago
  loc_D5A157: VCallAd Control_ID_
  loc_D5A15A: FStAdFunc var_2D4
  loc_D5A15D: FLdPr var_2D4
  loc_D5A160: LateIdCallLdVar
  loc_D5A16A: PopAd
  loc_D5A16C: FLdI2 var_9E
  loc_D5A16F: CI4UI1
  loc_D5A170: CVarI4
  loc_D5A174: PopAdLdVar
  loc_D5A175: LitVarI4
  loc_D5A17D: PopAdLdVar
  loc_D5A17E: ImpAdLdRf MemVar_D93E08
  loc_D5A181: NewIfNullPr frmPlanesdePago
  loc_D5A184: VCallAd Control_ID_
  loc_D5A187: FStAdFunc var_2F4
  loc_D5A18A: FLdPr var_2F4
  loc_D5A18D: LateIdCallLdVar
  loc_D5A197: PopAd
  loc_D5A199: FLdI2 var_9E
  loc_D5A19C: CI4UI1
  loc_D5A19D: CVarI4
  loc_D5A1A1: PopAdLdVar
  loc_D5A1A2: LitVarI4
  loc_D5A1AA: PopAdLdVar
  loc_D5A1AB: ImpAdLdRf MemVar_D93E08
  loc_D5A1AE: NewIfNullPr frmPlanesdePago
  loc_D5A1B1: VCallAd Control_ID_
  loc_D5A1B4: FStAdFunc var_380
  loc_D5A1B7: FLdPr var_380
  loc_D5A1BA: LateIdCallLdVar
  loc_D5A1C4: PopAd
  loc_D5A1C6: FLdI2 var_9E
  loc_D5A1C9: CI4UI1
  loc_D5A1CA: CVarI4
  loc_D5A1CE: PopAdLdVar
  loc_D5A1CF: LitVarI4
  loc_D5A1D7: PopAdLdVar
  loc_D5A1D8: ImpAdLdRf MemVar_D93E08
  loc_D5A1DB: NewIfNullPr frmPlanesdePago
  loc_D5A1DE: VCallAd Control_ID_
  loc_D5A1E1: FStAdFunc var_3E0
  loc_D5A1E4: FLdPr var_3E0
  loc_D5A1E7: LateIdCallLdVar
  loc_D5A1F1: PopAd
  loc_D5A1F3: FLdI2 var_9E
  loc_D5A1F6: CI4UI1
  loc_D5A1F7: CVarI4
  loc_D5A1FB: PopAdLdVar
  loc_D5A1FC: LitVarI4
  loc_D5A204: PopAdLdVar
  loc_D5A205: ImpAdLdRf MemVar_D93E08
  loc_D5A208: NewIfNullPr frmPlanesdePago
  loc_D5A20B: VCallAd Control_ID_
  loc_D5A20E: FStAdFunc var_414
  loc_D5A211: FLdPr var_414
  loc_D5A214: LateIdCallLdVar
  loc_D5A21E: PopAd
  loc_D5A220: LitStr " INSERT INTO detafapa (CodiFapa,CuotDefa,EstaDefa,FeveDefa,FepaDefa,CapiDefa,Decadefa,RecaDefa,DereDefa,ApreDefa,InteDefa,TotaDefa) "
  loc_D5A223: LitStr " VALUES ("
  loc_D5A226: ConcatStr
  loc_D5A227: FStStrNoPop var_21C
  loc_D5A22A: ILdRf var_B4
  loc_D5A22D: CStrI4
  loc_D5A22F: FStStrNoPop var_220
  loc_D5A232: ConcatStr
  loc_D5A233: FStStrNoPop var_224
  loc_D5A236: LitStr ","
  loc_D5A239: ConcatStr
  loc_D5A23A: FStStrNoPop var_228
  loc_D5A23D: FLdI2 var_9E
  loc_D5A240: CI4UI1
  loc_D5A241: CVarI4
  loc_D5A245: PopAdLdVar
  loc_D5A246: LitVarI4
  loc_D5A24E: PopAdLdVar
  loc_D5A24F: ImpAdLdRf MemVar_D93E08
  loc_D5A252: NewIfNullPr frmPlanesdePago
  loc_D5A255: VCallAd Control_ID_
  loc_D5A258: FStAdFunc var_234
  loc_D5A25B: FLdPr var_234
  loc_D5A25E: LateIdCallLdVar
  loc_D5A268: CStrVarTmp
  loc_D5A269: FStStrNoPop var_22C
  loc_D5A26C: ConcatStr
  loc_D5A26D: FStStrNoPop var_280
  loc_D5A270: LitStr ",'Emitida','"
  loc_D5A273: ConcatStr
  loc_D5A274: FStStrNoPop var_284
  loc_D5A277: LitI4 1
  loc_D5A27C: LitI4 1
  loc_D5A281: LitVarStr var_34C, "yyyy-mm-dd"
  loc_D5A286: FStVarCopyObj var_2B0
  loc_D5A289: FLdRfVar var_2B0
  loc_D5A28C: FLdRfVar var_218
  loc_D5A28F: CStrVarTmp
  loc_D5A290: CVarStr var_27C
  loc_D5A293: ImpAdCallI2 Format$(, )
  loc_D5A298: FStStrNoPop var_288
  loc_D5A29B: ConcatStr
  loc_D5A29C: FStStrNoPop var_28C
  loc_D5A29F: LitStr "',NULL,"
  loc_D5A2A2: ConcatStr
  loc_D5A2A3: FStStrNoPop var_29C
  loc_D5A2A6: LitI4 0
  loc_D5A2AB: LitI4 -1
  loc_D5A2B0: LitI4 1
  loc_D5A2B5: LitStr "."
  loc_D5A2B8: LitStr ","
  loc_D5A2BB: FLdRfVar var_2E4
  loc_D5A2BE: CStrVarTmp
  loc_D5A2BF: FStStrNoPop var_294
  loc_D5A2C2: CR8Str
  loc_D5A2C4: CStrR8
  loc_D5A2C6: FStStrNoPop var_298
  loc_D5A2C9: ImpAdCallI2 Replace(, , , , , )
  loc_D5A2CE: FStStrNoPop var_2E8
  loc_D5A2D1: ConcatStr
  loc_D5A2D2: FStStrNoPop var_2EC
  loc_D5A2D5: LitStr ","
  loc_D5A2D8: ConcatStr
  loc_D5A2D9: FStStrNoPop var_2FC
  loc_D5A2DC: LitI4 0
  loc_D5A2E1: LitI4 -1
  loc_D5A2E6: LitI4 1
  loc_D5A2EB: LitStr "."
  loc_D5A2EE: LitStr ","
  loc_D5A2F1: FLdRfVar var_330
  loc_D5A2F4: CStrVarTmp
  loc_D5A2F5: FStStrNoPop var_2F0
  loc_D5A2F8: CR8Str
  loc_D5A2FA: CStrR8
  loc_D5A2FC: FStStrNoPop var_2F8
  loc_D5A2FF: ImpAdCallI2 Replace(, , , , , )
  loc_D5A304: FStStrNoPop var_300
  loc_D5A307: ConcatStr
  loc_D5A308: FStStrNoPop var_334
  loc_D5A30B: LitStr ","
  loc_D5A30E: ConcatStr
  loc_D5A30F: FStStrNoPop var_394
  loc_D5A312: LitI4 0
  loc_D5A317: LitI4 -1
  loc_D5A31C: LitI4 1
  loc_D5A321: LitStr "."
  loc_D5A324: LitStr ","
  loc_D5A327: FLdRfVar var_390
  loc_D5A32A: CStrVarTmp
  loc_D5A32B: FStStrNoPop var_338
  loc_D5A32E: CR8Str
  loc_D5A330: CStrR8
  loc_D5A332: FStStrNoPop var_33C
  loc_D5A335: ImpAdCallI2 Replace(, , , , , )
  loc_D5A33A: FStStrNoPop var_398
  loc_D5A33D: ConcatStr
  loc_D5A33E: FStStrNoPop var_39C
  loc_D5A341: LitStr ","
  loc_D5A344: ConcatStr
  loc_D5A345: FStStrNoPop var_3FC
  loc_D5A348: LitI4 0
  loc_D5A34D: LitI4 -1
  loc_D5A352: LitI4 1
  loc_D5A357: LitStr "."
  loc_D5A35A: LitStr ","
  loc_D5A35D: FLdRfVar var_3F0
  loc_D5A360: CStrVarTmp
  loc_D5A361: FStStrNoPop var_3F4
  loc_D5A364: CR8Str
  loc_D5A366: CStrR8
  loc_D5A368: FStStrNoPop var_3F8
  loc_D5A36B: ImpAdCallI2 Replace(, , , , , )
  loc_D5A370: FStStrNoPop var_400
  loc_D5A373: ConcatStr
  loc_D5A374: FStStrNoPop var_404
  loc_D5A377: LitStr ","
  loc_D5A37A: ConcatStr
  loc_D5A37B: FStStrNoPop var_410
  loc_D5A37E: LitI4 0
  loc_D5A383: LitI4 -1
  loc_D5A388: LitI4 1
  loc_D5A38D: LitStr "."
  loc_D5A390: LitStr ","
  loc_D5A393: FLdRfVar var_5FC
  loc_D5A396: CStrVarTmp
  loc_D5A397: FStStrNoPop var_408
  loc_D5A39A: CR8Str
  loc_D5A39C: CStrR8
  loc_D5A39E: FStStrNoPop var_40C
  loc_D5A3A1: ImpAdCallI2 Replace(, , , , , )
  loc_D5A3A6: FStStrNoPop var_418
  loc_D5A3A9: ConcatStr
  loc_D5A3AA: FStStrNoPop var_41C
  loc_D5A3AD: LitStr ","
  loc_D5A3B0: ConcatStr
  loc_D5A3B1: FStStrNoPop var_428
  loc_D5A3B4: LitI4 0
  loc_D5A3B9: LitI4 -1
  loc_D5A3BE: LitI4 1
  loc_D5A3C3: LitStr "."
  loc_D5A3C6: LitStr ","
  loc_D5A3C9: FLdRfVar var_64C
  loc_D5A3CC: CStrVarTmp
  loc_D5A3CD: FStStrNoPop var_420
  loc_D5A3D0: CR8Str
  loc_D5A3D2: CStrR8
  loc_D5A3D4: FStStrNoPop var_424
  loc_D5A3D7: ImpAdCallI2 Replace(, , , , , )
  loc_D5A3DC: FStStrNoPop var_430
  loc_D5A3DF: ConcatStr
  loc_D5A3E0: FStStrNoPop var_434
  loc_D5A3E3: LitStr ","
  loc_D5A3E6: ConcatStr
  loc_D5A3E7: FStStrNoPop var_440
  loc_D5A3EA: LitI4 0
  loc_D5A3EF: LitI4 -1
  loc_D5A3F4: LitI4 1
  loc_D5A3F9: LitStr "."
  loc_D5A3FC: LitStr ","
  loc_D5A3FF: FLdRfVar var_69C
  loc_D5A402: CStrVarTmp
  loc_D5A403: FStStrNoPop var_438
  loc_D5A406: CR8Str
  loc_D5A408: CStrR8
  loc_D5A40A: FStStrNoPop var_43C
  loc_D5A40D: ImpAdCallI2 Replace(, , , , , )
  loc_D5A412: FStStrNoPop var_448
  loc_D5A415: ConcatStr
  loc_D5A416: FStStrNoPop var_44C
  loc_D5A419: LitStr ");"
  loc_D5A41C: ConcatStr
  loc_D5A41D: FStStrNoPop var_450
  loc_D5A420: Call EjecutarRsCls(from_stack_1v)
  loc_D5A425: FFreeStr var_40C = "": var_410 = "": var_418 = "": var_41C = "": var_420 = "": var_424 = "": var_428 = "": var_430 = "": var_434 = "": var_438 = "": var_43C = "": var_440 = "": var_448 = "": var_44C = "": var_450 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_334 = "": var_338 = "": var_33C = "": var_394 = "": var_398 = "": var_39C = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = ""
  loc_D5A482: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = ""
  loc_D5A497: FFreeVar var_208 = "": var_218 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = ""
  loc_D5A4B0: LitI2_Byte 0
  loc_D5A4B2: CR8I2
  loc_D5A4B3: FStFPR8 var_17C
  loc_D5A4B6: LitI2_Byte 0
  loc_D5A4B8: CR8I2
  loc_D5A4B9: FStFPR8 var_184
  loc_D5A4BC: LitI2_Byte 0
  loc_D5A4BE: CR8I2
  loc_D5A4BF: FStFPR8 var_18C
  loc_D5A4C2: LitI2_Byte 0
  loc_D5A4C4: CR8I2
  loc_D5A4C5: FStFPR8 var_194
  loc_D5A4C8: LitI2_Byte 0
  loc_D5A4CA: CR8I2
  loc_D5A4CB: FStFPR8 var_19C
  loc_D5A4CE: LitI2_Byte 0
  loc_D5A4D0: CR8I2
  loc_D5A4D1: FStFPR8 var_1A4
  loc_D5A4D4: FLdI2 var_9E
  loc_D5A4D7: LitI2_Byte 1
  loc_D5A4D9: EqI2
  loc_D5A4DA: FLdI2 sCodiConc
  loc_D5A4DD: LitI2_Byte &HFF
  loc_D5A4DF: EqI2
  loc_D5A4E0: OrI4
  loc_D5A4E1: BranchF loc_D5AC71
  loc_D5A4E4: FLdRfVar var_230
  loc_D5A4E7: FLdI2 var_AA
  loc_D5A4EA: FLdRfVar var_98
  loc_D5A4ED: NewIfNullPr clsnumebole
  loc_D5A4F0: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_D5A4F5: ILdRf var_230
  loc_D5A4F8: FStR4 var_B0
  loc_D5A4FB: FLdI2 var_9E
  loc_D5A4FE: CI4UI1
  loc_D5A4FF: CVarI4
  loc_D5A503: PopAdLdVar
  loc_D5A504: LitVarI4
  loc_D5A50C: PopAdLdVar
  loc_D5A50D: ImpAdLdRf MemVar_D93E08
  loc_D5A510: NewIfNullPr frmPlanesdePago
  loc_D5A513: VCallAd Control_ID_
  loc_D5A516: FStAdFunc var_234
  loc_D5A519: FLdPr var_234
  loc_D5A51C: LateIdCallLdVar
  loc_D5A526: CStrVarTmp
  loc_D5A527: FStStrNoPop var_21C
  loc_D5A52A: CR8Str
  loc_D5A52C: ImpAdStFPR8 MemVar_D93040
  loc_D5A52F: FFree1Str var_21C
  loc_D5A532: FFree1Ad var_234
  loc_D5A535: FFree1Var var_208 = ""
  loc_D5A538: FLdI2 var_9E
  loc_D5A53B: CI4UI1
  loc_D5A53C: CVarI4
  loc_D5A540: PopAdLdVar
  loc_D5A541: LitVarI4
  loc_D5A549: PopAdLdVar
  loc_D5A54A: ImpAdLdRf MemVar_D93E08
  loc_D5A54D: NewIfNullPr frmPlanesdePago
  loc_D5A550: VCallAd Control_ID_
  loc_D5A553: FStAdFunc var_234
  loc_D5A556: FLdPr var_234
  loc_D5A559: LateIdCallLdVar
  loc_D5A563: CStrVarTmp
  loc_D5A564: FStStrNoPop var_21C
  loc_D5A567: CR8Str
  loc_D5A569: ImpAdStFPR8 MemVar_D93058
  loc_D5A56C: FFree1Str var_21C
  loc_D5A56F: FFree1Ad var_234
  loc_D5A572: FFree1Var var_208 = ""
  loc_D5A575: FLdI2 var_9E
  loc_D5A578: CI4UI1
  loc_D5A579: CVarI4
  loc_D5A57D: PopAdLdVar
  loc_D5A57E: LitVarI4
  loc_D5A586: PopAdLdVar
  loc_D5A587: ImpAdLdRf MemVar_D93E08
  loc_D5A58A: NewIfNullPr frmPlanesdePago
  loc_D5A58D: VCallAd Control_ID_
  loc_D5A590: FStAdFunc var_238
  loc_D5A593: FLdPr var_238
  loc_D5A596: LateIdCallLdVar
  loc_D5A5A0: PopAd
  loc_D5A5A2: FLdI2 var_9E
  loc_D5A5A5: CI4UI1
  loc_D5A5A6: CVarI4
  loc_D5A5AA: PopAdLdVar
  loc_D5A5AB: LitVarI4
  loc_D5A5B3: PopAdLdVar
  loc_D5A5B4: ImpAdLdRf MemVar_D93E08
  loc_D5A5B7: NewIfNullPr frmPlanesdePago
  loc_D5A5BA: VCallAd Control_ID_
  loc_D5A5BD: FStAdFunc var_234
  loc_D5A5C0: FLdPr var_234
  loc_D5A5C3: LateIdCallLdVar
  loc_D5A5CD: CStrVarTmp
  loc_D5A5CE: FStStrNoPop var_21C
  loc_D5A5D1: CR8Str
  loc_D5A5D3: FLdRfVar var_218
  loc_D5A5D6: CStrVarTmp
  loc_D5A5D7: FStStrNoPop var_220
  loc_D5A5DA: CR8Str
  loc_D5A5DC: AddR8
  loc_D5A5DD: ImpAdStFPR8 MemVar_D93048
  loc_D5A5E0: FFreeStr var_21C = ""
  loc_D5A5E7: FFreeAd var_234 = ""
  loc_D5A5EE: FFreeVar var_208 = ""
  loc_D5A5F5: FLdI2 var_9E
  loc_D5A5F8: CI4UI1
  loc_D5A5F9: CVarI4
  loc_D5A5FD: PopAdLdVar
  loc_D5A5FE: LitVarI4
  loc_D5A606: PopAdLdVar
  loc_D5A607: ImpAdLdRf MemVar_D93E08
  loc_D5A60A: NewIfNullPr frmPlanesdePago
  loc_D5A60D: VCallAd Control_ID_
  loc_D5A610: FStAdFunc var_234
  loc_D5A613: FLdPr var_234
  loc_D5A616: LateIdCallLdVar
  loc_D5A620: CStrVarTmp
  loc_D5A621: FStStrNoPop var_21C
  loc_D5A624: CR8Str
  loc_D5A626: ImpAdStFPR8 MemVar_D93060
  loc_D5A629: FFree1Str var_21C
  loc_D5A62C: FFree1Ad var_234
  loc_D5A62F: FFree1Var var_208 = ""
  loc_D5A632: FLdI2 var_9E
  loc_D5A635: CI4UI1
  loc_D5A636: CVarI4
  loc_D5A63A: PopAdLdVar
  loc_D5A63B: LitVarI4
  loc_D5A643: PopAdLdVar
  loc_D5A644: ImpAdLdRf MemVar_D93E08
  loc_D5A647: NewIfNullPr frmPlanesdePago
  loc_D5A64A: VCallAd Control_ID_
  loc_D5A64D: FStAdFunc var_234
  loc_D5A650: FLdPr var_234
  loc_D5A653: LateIdCallLdVar
  loc_D5A65D: CStrVarTmp
  loc_D5A65E: FStStrNoPop var_21C
  loc_D5A661: CR8Str
  loc_D5A663: ImpAdStFPR8 MemVar_D93070
  loc_D5A666: FFree1Str var_21C
  loc_D5A669: FFree1Ad var_234
  loc_D5A66C: FFree1Var var_208 = ""
  loc_D5A66F: FLdRfVar var_2E8
  loc_D5A672: ImpAdLdRf MemVar_D93E08
  loc_D5A675: NewIfNullPr frmPlanesdePago
  loc_D5A678: VCallAd Control_ID_
  loc_D5A67B: FStAdFunc var_290
  loc_D5A67E: FLdPr var_290
  loc_D5A681:  = frmPlanesdePago.Label.Caption
  loc_D5A686: FLdRfVar var_2EC
  loc_D5A689: ImpAdLdRf MemVar_D93E08
  loc_D5A68C: NewIfNullPr frmPlanesdePago
  loc_D5A68F: VCallAd Control_ID_
  loc_D5A692: FStAdFunc var_2A0
  loc_D5A695: FLdPr var_2A0
  loc_D5A698:  = frmPlanesdePago.Label.Caption
  loc_D5A69D: FLdZeroAd var_2EC
  loc_D5A6A0: CVarStr var_2B0
  loc_D5A6A3: LitVarI2 var_27C, 0
  loc_D5A6A8: ILdRf var_2E8
  loc_D5A6AB: LitStr vbNullString
  loc_D5A6AE: EqStr
  loc_D5A6B0: CVarBoolI2 var_34C
  loc_D5A6B4: FLdRfVar var_2E4
  loc_D5A6B7: ImpAdCallFPR4  = IIf(, , )
  loc_D5A6BC: FLdI2 var_9E
  loc_D5A6BF: CI4UI1
  loc_D5A6C0: CVarI4
  loc_D5A6C4: PopAdLdVar
  loc_D5A6C5: LitVarI4
  loc_D5A6CD: PopAdLdVar
  loc_D5A6CE: ImpAdLdRf MemVar_D93E08
  loc_D5A6D1: NewIfNullPr frmPlanesdePago
  loc_D5A6D4: VCallAd Control_ID_
  loc_D5A6D7: FStAdFunc var_2D4
  loc_D5A6DA: FLdPr var_2D4
  loc_D5A6DD: LateIdCallLdVar
  loc_D5A6E7: PopAd
  loc_D5A6E9: FLdI2 var_9E
  loc_D5A6EC: CI4UI1
  loc_D5A6ED: CVarI4
  loc_D5A6F1: PopAdLdVar
  loc_D5A6F2: LitVarI4
  loc_D5A6FA: PopAdLdVar
  loc_D5A6FB: ImpAdLdRf MemVar_D93E08
  loc_D5A6FE: NewIfNullPr frmPlanesdePago
  loc_D5A701: VCallAd Control_ID_
  loc_D5A704: FStAdFunc var_380
  loc_D5A707: FLdPr var_380
  loc_D5A70A: LateIdCallLdVar
  loc_D5A714: PopAd
  loc_D5A716: FLdI2 var_9E
  loc_D5A719: CI4UI1
  loc_D5A71A: CVarI4
  loc_D5A71E: PopAdLdVar
  loc_D5A71F: LitVarI4
  loc_D5A727: PopAdLdVar
  loc_D5A728: ImpAdLdRf MemVar_D93E08
  loc_D5A72B: NewIfNullPr frmPlanesdePago
  loc_D5A72E: VCallAd Control_ID_
  loc_D5A731: FStAdFunc var_3E0
  loc_D5A734: FLdPr var_3E0
  loc_D5A737: LateIdCallLdVar
  loc_D5A741: PopAd
  loc_D5A743: FLdI2 var_9E
  loc_D5A746: CI4UI1
  loc_D5A747: CVarI4
  loc_D5A74B: PopAdLdVar
  loc_D5A74C: LitVarI4
  loc_D5A754: PopAdLdVar
  loc_D5A755: ImpAdLdRf MemVar_D93E08
  loc_D5A758: NewIfNullPr frmPlanesdePago
  loc_D5A75B: VCallAd Control_ID_
  loc_D5A75E: FStAdFunc var_414
  loc_D5A761: FLdPr var_414
  loc_D5A764: LateIdCallLdVar
  loc_D5A76E: PopAd
  loc_D5A770: FLdI2 var_9E
  loc_D5A773: CI4UI1
  loc_D5A774: CVarI4
  loc_D5A778: PopAdLdVar
  loc_D5A779: LitVarI4
  loc_D5A781: PopAdLdVar
  loc_D5A782: ImpAdLdRf MemVar_D93E08
  loc_D5A785: NewIfNullPr frmPlanesdePago
  loc_D5A788: VCallAd Control_ID_
  loc_D5A78B: FStAdFunc var_42C
  loc_D5A78E: FLdPr var_42C
  loc_D5A791: LateIdCallLdVar
  loc_D5A79B: PopAd
  loc_D5A79D: FLdI2 var_9E
  loc_D5A7A0: CI4UI1
  loc_D5A7A1: CVarI4
  loc_D5A7A5: PopAdLdVar
  loc_D5A7A6: LitVarI4
  loc_D5A7AE: PopAdLdVar
  loc_D5A7AF: ImpAdLdRf MemVar_D93E08
  loc_D5A7B2: NewIfNullPr frmPlanesdePago
  loc_D5A7B5: VCallAd Control_ID_
  loc_D5A7B8: FStAdFunc var_444
  loc_D5A7BB: FLdPr var_444
  loc_D5A7BE: LateIdCallLdVar
  loc_D5A7C8: PopAd
  loc_D5A7CA: FLdI2 var_9E
  loc_D5A7CD: CI4UI1
  loc_D5A7CE: CVarI4
  loc_D5A7D2: PopAdLdVar
  loc_D5A7D3: LitVarI4
  loc_D5A7DB: PopAdLdVar
  loc_D5A7DC: ImpAdLdRf MemVar_D93E08
  loc_D5A7DF: NewIfNullPr frmPlanesdePago
  loc_D5A7E2: VCallAd Control_ID_
  loc_D5A7E5: FStAdFunc var_45C
  loc_D5A7E8: FLdPr var_45C
  loc_D5A7EB: LateIdCallLdVar
  loc_D5A7F5: PopAd
  loc_D5A7F7: FLdI2 var_9E
  loc_D5A7FA: CI4UI1
  loc_D5A7FB: CVarI4
  loc_D5A7FF: PopAdLdVar
  loc_D5A800: LitVarI4
  loc_D5A808: PopAdLdVar
  loc_D5A809: ImpAdLdRf MemVar_D93E08
  loc_D5A80C: NewIfNullPr frmPlanesdePago
  loc_D5A80F: VCallAd Control_ID_
  loc_D5A812: FStAdFunc var_474
  loc_D5A815: FLdPr var_474
  loc_D5A818: LateIdCallLdVar
  loc_D5A822: PopAd
  loc_D5A824: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ExpeBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_D5A827: LitStr "  VALUES ("
  loc_D5A82A: ConcatStr
  loc_D5A82B: FStStrNoPop var_21C
  loc_D5A82E: FLdI2 var_AA
  loc_D5A831: CStrUI1
  loc_D5A833: FStStrNoPop var_220
  loc_D5A836: ConcatStr
  loc_D5A837: FStStrNoPop var_224
  loc_D5A83A: LitStr ","
  loc_D5A83D: ConcatStr
  loc_D5A83E: FStStrNoPop var_228
  loc_D5A841: ILdRf var_B0
  loc_D5A844: CStrI4
  loc_D5A846: FStStrNoPop var_22C
  loc_D5A849: ConcatStr
  loc_D5A84A: FStStrNoPop var_280
  loc_D5A84D: LitStr ","
  loc_D5A850: ConcatStr
  loc_D5A851: FStStrNoPop var_284
  loc_D5A854: FLdI2 var_9E
  loc_D5A857: CI4UI1
  loc_D5A858: CVarI4
  loc_D5A85C: PopAdLdVar
  loc_D5A85D: LitVarI4
  loc_D5A865: PopAdLdVar
  loc_D5A866: ImpAdLdRf MemVar_D93E08
  loc_D5A869: NewIfNullPr frmPlanesdePago
  loc_D5A86C: VCallAd Control_ID_
  loc_D5A86F: FStAdFunc var_234
  loc_D5A872: FLdPr var_234
  loc_D5A875: LateIdCallLdVar
  loc_D5A87F: CStrVarTmp
  loc_D5A880: FStStrNoPop var_288
  loc_D5A883: ConcatStr
  loc_D5A884: FStStrNoPop var_28C
  loc_D5A887: LitStr ",'"
  loc_D5A88A: ConcatStr
  loc_D5A88B: FStStrNoPop var_294
  loc_D5A88E: FLdI2 var_9E
  loc_D5A891: CI4UI1
  loc_D5A892: CVarI4
  loc_D5A896: PopAdLdVar
  loc_D5A897: LitVarI4
  loc_D5A89F: PopAdLdVar
  loc_D5A8A0: ImpAdLdRf MemVar_D93E08
  loc_D5A8A3: NewIfNullPr frmPlanesdePago
  loc_D5A8A6: VCallAd Control_ID_
  loc_D5A8A9: FStAdFunc var_238
  loc_D5A8AC: FLdPr var_238
  loc_D5A8AF: LateIdCallLdVar
  loc_D5A8B9: CStrVarTmp
  loc_D5A8BA: FStStrNoPop var_298
  loc_D5A8BD: ConcatStr
  loc_D5A8BE: FStStrNoPop var_29C
  loc_D5A8C1: LitStr "','"
  loc_D5A8C4: ConcatStr
  loc_D5A8C5: FStStrNoPop var_2F8
  loc_D5A8C8: LitI4 0
  loc_D5A8CD: LitI4 -1
  loc_D5A8D2: LitI4 1
  loc_D5A8D7: LitStr vbNullString
  loc_D5A8DA: LitStr "-"
  loc_D5A8DD: FLdRfVar var_2E4
  loc_D5A8E0: CStrVarVal var_2F0
  loc_D5A8E4: ImpAdCallI2 Replace(, , , , , )
  loc_D5A8E9: FStStrNoPop var_2FC
  loc_D5A8EC: ConcatStr
  loc_D5A8ED: FStStrNoPop var_300
  loc_D5A8F0: LitStr "','"
  loc_D5A8F3: ConcatStr
  loc_D5A8F4: FStStrNoPop var_334
  loc_D5A8F7: LitI4 1
  loc_D5A8FC: LitI4 1
  loc_D5A901: LitVarStr var_37C, "yyyy-mm-dd"
  loc_D5A906: FStVarCopyObj var_330
  loc_D5A909: FLdRfVar var_330
  loc_D5A90C: FLdRfVar var_A8
  loc_D5A90F: CVarRef
  loc_D5A914: ImpAdCallI2 Format$(, )
  loc_D5A919: FStStrNoPop var_338
  loc_D5A91C: ConcatStr
  loc_D5A91D: FStStrNoPop var_33C
  loc_D5A920: LitStr "','"
  loc_D5A923: ConcatStr
  loc_D5A924: FStStrNoPop var_394
  loc_D5A927: LitI4 1
  loc_D5A92C: LitI4 1
  loc_D5A931: LitVarStr var_52C, "yyyy-mm-dd"
  loc_D5A936: FStVarCopyObj var_5FC
  loc_D5A939: FLdRfVar var_5FC
  loc_D5A93C: FLdRfVar var_390
  loc_D5A93F: CStrVarTmp
  loc_D5A940: CVarStr var_3F0
  loc_D5A943: ImpAdCallI2 Format$(, )
  loc_D5A948: FStStrNoPop var_398
  loc_D5A94B: ConcatStr
  loc_D5A94C: FStStrNoPop var_39C
  loc_D5A94F: LitStr "',"
  loc_D5A952: ConcatStr
  loc_D5A953: FStStrNoPop var_3F4
  loc_D5A956: FLdI2 var_A0
  loc_D5A959: CStrUI1
  loc_D5A95B: FStStrNoPop var_3F8
  loc_D5A95E: ConcatStr
  loc_D5A95F: FStStrNoPop var_3FC
  loc_D5A962: LitStr ",'Ventanilla','Emitido',"
  loc_D5A965: ConcatStr
  loc_D5A966: FStStrNoPop var_400
  loc_D5A969: ILdRf var_B4
  loc_D5A96C: CStrI4
  loc_D5A96E: FStStrNoPop var_404
  loc_D5A971: ConcatStr
  loc_D5A972: FStStrNoPop var_408
  loc_D5A975: LitStr ","
  loc_D5A978: ConcatStr
  loc_D5A979: FStStrNoPop var_40C
  loc_D5A97C: FLdI2 var_9E
  loc_D5A97F: CI4UI1
  loc_D5A980: CVarI4
  loc_D5A984: PopAdLdVar
  loc_D5A985: LitVarI4
  loc_D5A98D: PopAdLdVar
  loc_D5A98E: ImpAdLdRf MemVar_D93E08
  loc_D5A991: NewIfNullPr frmPlanesdePago
  loc_D5A994: VCallAd Control_ID_
  loc_D5A997: FStAdFunc var_2F4
  loc_D5A99A: FLdPr var_2F4
  loc_D5A99D: LateIdCallLdVar
  loc_D5A9A7: CStrVarTmp
  loc_D5A9A8: FStStrNoPop var_410
  loc_D5A9AB: ConcatStr
  loc_D5A9AC: FStStrNoPop var_418
  loc_D5A9AF: LitStr ",'"
  loc_D5A9B2: ConcatStr
  loc_D5A9B3: CVarStr var_6BC
  loc_D5A9B6: LitVarStr var_59C, vbNullString
  loc_D5A9BB: FStVarCopyObj var_69C
  loc_D5A9BE: FLdRfVar var_69C
  loc_D5A9C1: FLdRfVar sTelePers
  loc_D5A9C4: CVarRef
  loc_D5A9C9: ILdRf sTelePers
  loc_D5A9CC: LitI4 0
  loc_D5A9D1: GtI4
  loc_D5A9D2: CVarBoolI2 var_57C
  loc_D5A9D6: FLdRfVar var_6AC
  loc_D5A9D9: ImpAdCallFPR4  = IIf(, , )
  loc_D5A9DE: FLdRfVar var_6AC
  loc_D5A9E1: ConcatVar var_6CC
  loc_D5A9E5: LitVarStr var_5AC, "',"
  loc_D5A9EA: ConcatVar var_6DC
  loc_D5A9EE: LitI4 0
  loc_D5A9F3: LitI4 -1
  loc_D5A9F8: LitI4 1
  loc_D5A9FD: LitStr "."
  loc_D5AA00: LitStr ","
  loc_D5AA03: FLdRfVar var_6EC
  loc_D5AA06: CStrVarTmp
  loc_D5AA07: FStStrNoPop var_41C
  loc_D5AA0A: CR8Str
  loc_D5AA0C: CStrR8
  loc_D5AA0E: FStStrNoPop var_420
  loc_D5AA11: ImpAdCallI2 Replace(, , , , , )
  loc_D5AA16: CVarStr var_6FC
  loc_D5AA19: ConcatVar var_70C
  loc_D5AA1D: LitVarStr var_60C, ","
  loc_D5AA22: ConcatVar var_71C
  loc_D5AA26: LitI4 0
  loc_D5AA2B: LitI4 -1
  loc_D5AA30: LitI4 1
  loc_D5AA35: LitStr "."
  loc_D5AA38: LitStr ","
  loc_D5AA3B: FLdRfVar var_72C
  loc_D5AA3E: CStrVarTmp
  loc_D5AA3F: FStStrNoPop var_424
  loc_D5AA42: CR8Str
  loc_D5AA44: CStrR8
  loc_D5AA46: FStStrNoPop var_428
  loc_D5AA49: ImpAdCallI2 Replace(, , , , , )
  loc_D5AA4E: CVarStr var_73C
  loc_D5AA51: ConcatVar var_74C
  loc_D5AA55: LitVarStr var_66C, ","
  loc_D5AA5A: ConcatVar var_75C
  loc_D5AA5E: LitI4 0
  loc_D5AA63: LitI4 -1
  loc_D5AA68: LitI4 1
  loc_D5AA6D: LitStr "."
  loc_D5AA70: LitStr ","
  loc_D5AA73: FLdRfVar var_78C
  loc_D5AA76: CStrVarTmp
  loc_D5AA77: FStStrNoPop var_430
  loc_D5AA7A: CR8Str
  loc_D5AA7C: CStrR8
  loc_D5AA7E: FStStrNoPop var_434
  loc_D5AA81: ImpAdCallI2 Replace(, , , , , )
  loc_D5AA86: CVarStr var_79C
  loc_D5AA89: ConcatVar var_7AC
  loc_D5AA8D: LitVarStr var_7BC, ","
  loc_D5AA92: ConcatVar var_7CC
  loc_D5AA96: LitI4 0
  loc_D5AA9B: LitI4 -1
  loc_D5AAA0: LitI4 1
  loc_D5AAA5: LitStr "."
  loc_D5AAA8: LitStr ","
  loc_D5AAAB: FLdRfVar var_81C
  loc_D5AAAE: CStrVarTmp
  loc_D5AAAF: FStStrNoPop var_438
  loc_D5AAB2: CR8Str
  loc_D5AAB4: CStrR8
  loc_D5AAB6: FStStrNoPop var_43C
  loc_D5AAB9: ImpAdCallI2 Replace(, , , , , )
  loc_D5AABE: CVarStr var_82C
  loc_D5AAC1: ConcatVar var_83C
  loc_D5AAC5: LitVarStr var_84C, ","
  loc_D5AACA: ConcatVar var_85C
  loc_D5AACE: LitI4 0
  loc_D5AAD3: LitI4 -1
  loc_D5AAD8: LitI4 1
  loc_D5AADD: LitStr "."
  loc_D5AAE0: LitStr ","
  loc_D5AAE3: FLdRfVar var_8AC
  loc_D5AAE6: CStrVarTmp
  loc_D5AAE7: FStStrNoPop var_440
  loc_D5AAEA: CR8Str
  loc_D5AAEC: CStrR8
  loc_D5AAEE: FStStrNoPop var_448
  loc_D5AAF1: ImpAdCallI2 Replace(, , , , , )
  loc_D5AAF6: CVarStr var_8BC
  loc_D5AAF9: ConcatVar var_8CC
  loc_D5AAFD: LitVarStr var_8DC, ",0,"
  loc_D5AB02: ConcatVar var_8EC
  loc_D5AB06: LitI4 0
  loc_D5AB0B: LitI4 -1
  loc_D5AB10: LitI4 1
  loc_D5AB15: LitStr "."
  loc_D5AB18: LitStr ","
  loc_D5AB1B: FLdRfVar var_93C
  loc_D5AB1E: CStrVarTmp
  loc_D5AB1F: FStStrNoPop var_44C
  loc_D5AB22: CR8Str
  loc_D5AB24: CStrR8
  loc_D5AB26: FStStrNoPop var_450
  loc_D5AB29: ImpAdCallI2 Replace(, , , , , )
  loc_D5AB2E: CVarStr var_94C
  loc_D5AB31: ConcatVar var_95C
  loc_D5AB35: LitVarStr var_96C, ","
  loc_D5AB3A: ConcatVar var_97C
  loc_D5AB3E: LitI4 0
  loc_D5AB43: LitI4 -1
  loc_D5AB48: LitI4 1
  loc_D5AB4D: LitStr "."
  loc_D5AB50: LitStr ","
  loc_D5AB53: FLdRfVar var_9CC
  loc_D5AB56: CStrVarTmp
  loc_D5AB57: FStStrNoPop var_454
  loc_D5AB5A: CR8Str
  loc_D5AB5C: CStrR8
  loc_D5AB5E: FStStrNoPop var_458
  loc_D5AB61: ImpAdCallI2 Replace(, , , , , )
  loc_D5AB66: CVarStr var_9DC
  loc_D5AB69: ConcatVar var_9EC
  loc_D5AB6D: LitVarStr var_9FC, ",'"
  loc_D5AB72: ConcatVar var_A0C
  loc_D5AB76: ImpAdLdI4 MemVar_D9302C
  loc_D5AB79: CVarStr var_A1C
  loc_D5AB7C: ConcatVar var_A2C
  loc_D5AB80: LitVarStr var_A3C, "');"
  loc_D5AB85: ConcatVar var_A4C
  loc_D5AB89: CStrVarVal var_460
  loc_D5AB8D: Call EjecutarRsCls(from_stack_1v)
  loc_D5AB92: FFreeStr var_410 = "": var_418 = "": var_41C = "": var_420 = "": var_424 = "": var_428 = "": var_430 = "": var_434 = "": var_438 = "": var_43C = "": var_440 = "": var_448 = "": var_44C = "": var_450 = "": var_454 = "": var_458 = "": var_460 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2F0 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_334 = "": var_338 = "": var_33C = "": var_394 = "": var_398 = "": var_39C = "": var_3F4 = "": var_3F8 = "": var_3FC = "": var_400 = "": var_404 = "": var_408 = ""
  loc_D5ABF3: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = ""
  loc_D5AC10: FFreeVar var_82C = "": var_83C = "": var_8AC = "": var_85C = "": var_8BC = "": var_8CC = "": var_93C = "": var_8EC = "": var_94C = "": var_95C = "": var_9CC = "": var_97C = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_208 = "": var_218 = "": var_34C = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_57C = "": var_69C = "": var_6BC = "": var_6AC = "": var_6CC = "": var_6EC = "": var_6DC = "": var_6FC = "": var_70C = "": var_72C = "": var_71C = "": var_73C = "": var_74C = "": var_78C = "": var_75C = "": var_79C = "": var_7AC = "": var_81C = ""
  loc_D5AC71: LitI2_Byte 0
  loc_D5AC73: CR8I2
  loc_D5AC74: FStFPR8 var_17C
  loc_D5AC77: LitI2_Byte 0
  loc_D5AC79: CR8I2
  loc_D5AC7A: FStFPR8 var_184
  loc_D5AC7D: LitI2_Byte 0
  loc_D5AC7F: CR8I2
  loc_D5AC80: FStFPR8 var_18C
  loc_D5AC83: LitI2_Byte 0
  loc_D5AC85: CR8I2
  loc_D5AC86: FStFPR8 var_194
  loc_D5AC89: LitI2_Byte 0
  loc_D5AC8B: CR8I2
  loc_D5AC8C: FStFPR8 var_19C
  loc_D5AC8F: LitI2_Byte 0
  loc_D5AC91: CR8I2
  loc_D5AC92: FStFPR8 var_1A4
  loc_D5AC95: FLdRfVar var_21C
  loc_D5AC98: ImpAdLdRf MemVar_D93E08
  loc_D5AC9B: NewIfNullPr frmPlanesdePago
  loc_D5AC9E: VCallAd Control_ID_
  loc_D5ACA1: FStAdFunc var_234
  loc_D5ACA4: FLdPr var_234
  loc_D5ACA7:  = frmPlanesdePago.TextBox.Text
  loc_D5ACAC: ILdRf var_21C
  loc_D5ACAF: CR8Str
  loc_D5ACB1: LitI2_Byte 1
  loc_D5ACB3: CR8I2
  loc_D5ACB4: EqR4
  loc_D5ACB5: FLdRfVar var_220
  loc_D5ACB8: ImpAdLdRf MemVar_D93E08
  loc_D5ACBB: NewIfNullPr frmPlanesdePago
  loc_D5ACBE: VCallAd Control_ID_
  loc_D5ACC1: FStAdFunc var_238
  loc_D5ACC4: FLdPr var_238
  loc_D5ACC7:  = frmPlanesdePago.TextBox.Text
  loc_D5ACCC: ILdRf var_220
  loc_D5ACCF: CR8Str
  loc_D5ACD1: LitI2_Byte 0
  loc_D5ACD3: CR8I2
  loc_D5ACD4: EqR4
  loc_D5ACD5: AndI4
  loc_D5ACD6: FFreeStr var_21C = ""
  loc_D5ACDD: FFreeAd var_234 = ""
  loc_D5ACE4: BranchF loc_D5C13C
  loc_D5ACE7: LitI2_Byte 0
  loc_D5ACE9: FStI2 var_DC
  loc_D5ACEC: LitStr "SELECT NumeApre, SaldCtct, RecaCtct FROM tmp_ctacteapremio"
  loc_D5ACEF: Call EjecutarRsCls1(from_stack_1v)
  loc_D5ACF4: FLdRfVar var_230
  loc_D5ACF7: FLdPr Me
  loc_D5ACFA: MemLdPr global_64
  loc_D5ACFD:  = Me.RecordCount
  loc_D5AD02: ILdRf var_230
  loc_D5AD05: LitI4 0
  loc_D5AD0A: GtI4
  loc_D5AD0B: BranchF loc_D5C139
  loc_D5AD0E: FLdRfVar var_4D6
  loc_D5AD11: FLdPr Me
  loc_D5AD14: MemLdPr global_64
  loc_D5AD17:  = Me.EOF
  loc_D5AD1C: FLdI2 var_4D6
  loc_D5AD1F: NotI4
  loc_D5AD20: BranchF loc_D5C139
  loc_D5AD23: FLdI2 var_DC
  loc_D5AD26: LitI2_Byte 1
  loc_D5AD28: AddI2
  loc_D5AD29: FStI2 var_DC
  loc_D5AD2C: FLdRfVar var_208
  loc_D5AD2F: FLdRfVar var_238
  loc_D5AD32: LitVarStr var_1F8, "NumeApre"
  loc_D5AD37: PopAdLdVar
  loc_D5AD38: FLdRfVar var_234
  loc_D5AD3B: FLdPr Me
  loc_D5AD3E: MemLdPr global_64
  loc_D5AD41:  = Me.Fields
  loc_D5AD46: FLdPr var_234
  loc_D5AD49: from_stack_2 = Me.Item(from_stack_1)
  loc_D5AD4E: FLdPr var_238
  loc_D5AD51:  = Me.Value
  loc_D5AD56: FLdRfVar var_218
  loc_D5AD59: FLdRfVar var_2A0
  loc_D5AD5C: LitVarStr var_24C, "SaldCtct"
  loc_D5AD61: PopAdLdVar
  loc_D5AD62: FLdRfVar var_290
  loc_D5AD65: FLdPr Me
  loc_D5AD68: MemLdPr global_64
  loc_D5AD6B:  = Me.Fields
  loc_D5AD70: FLdPr var_290
  loc_D5AD73: from_stack_2 = Me.Item(from_stack_1)
  loc_D5AD78: FLdPr var_2A0
  loc_D5AD7B:  = Me.Value
  loc_D5AD80: FLdRfVar var_27C
  loc_D5AD83: FLdRfVar var_2F4
  loc_D5AD86: LitVarStr var_25C, "RecaCtct"
  loc_D5AD8B: PopAdLdVar
  loc_D5AD8C: FLdRfVar var_2D4
  loc_D5AD8F: FLdPr Me
  loc_D5AD92: MemLdPr global_64
  loc_D5AD95:  = Me.Fields
  loc_D5AD9A: FLdPr var_2D4
  loc_D5AD9D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ADA2: FLdPr var_2F4
  loc_D5ADA5:  = Me.Value
  loc_D5ADAA: FLdRfVar var_2B0
  loc_D5ADAD: FLdRfVar var_27C
  loc_D5ADB0: CR4Var
  loc_D5ADB1: PopFPR8
  loc_D5ADB2: FLdRfVar var_218
  loc_D5ADB5: CR4Var
  loc_D5ADB6: PopFPR8
  loc_D5ADB7: FLdRfVar var_208
  loc_D5ADBA: CI4Var
  loc_D5ADBC: FLdRfVar var_9C
  loc_D5ADBF: NewIfNullPr clsapremio
  loc_D5ADC2: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D5ADC7: FLdRfVar var_2B0
  loc_D5ADCA: FStVar var_1B8
  loc_D5ADCE: FFreeAd var_234 = "": var_290 = "": var_2D4 = "": var_238 = "": var_2A0 = ""
  loc_D5ADDD: FFreeVar var_208 = "": var_218 = ""
  loc_D5ADE6: FLdRfVar var_4D6
  loc_D5ADE9: FLdRfVar var_208
  loc_D5ADEC: FLdRfVar var_238
  loc_D5ADEF: LitVarStr var_1F8, "NumeApre"
  loc_D5ADF4: PopAdLdVar
  loc_D5ADF5: FLdRfVar var_234
  loc_D5ADF8: FLdPr Me
  loc_D5ADFB: MemLdPr global_64
  loc_D5ADFE:  = Me.Fields
  loc_D5AE03: FLdPr var_234
  loc_D5AE06: from_stack_2 = Me.Item(from_stack_1)
  loc_D5AE0B: FLdPr var_238
  loc_D5AE0E:  = Me.Value
  loc_D5AE13: FLdRfVar var_208
  loc_D5AE16: CI4Var
  loc_D5AE18: FLdRfVar var_9C
  loc_D5AE1B: NewIfNullPr clsapremio
  loc_D5AE1E: from_stack_2v = clsapremio.BuscaInstanciaApremio(from_stack_1v)
  loc_D5AE23: FLdI2 var_4D6
  loc_D5AE26: FStI2 var_C6
  loc_D5AE29: FFreeAd var_234 = ""
  loc_D5AE30: FFree1Var var_208 = ""
  loc_D5AE33: LitVarI2 var_1F8, 1
  loc_D5AE38: PopAdLdVar
  loc_D5AE39: FLdRfVar var_1B8
  loc_D5AE3C: VarIndexLdVar
  loc_D5AE42: CR4Var
  loc_D5AE43: FStFPR8 var_104
  loc_D5AE46: FFree1Var var_208 = ""
  loc_D5AE49: LitVarI2 var_1F8, 2
  loc_D5AE4E: PopAdLdVar
  loc_D5AE4F: FLdRfVar var_1B8
  loc_D5AE52: VarIndexLdVar
  loc_D5AE58: CR4Var
  loc_D5AE59: FStFPR8 var_10C
  loc_D5AE5C: FFree1Var var_208 = ""
  loc_D5AE5F: LitVarI2 var_1F8, 3
  loc_D5AE64: PopAdLdVar
  loc_D5AE65: FLdRfVar var_1B8
  loc_D5AE68: VarIndexLdVar
  loc_D5AE6E: CR4Var
  loc_D5AE6F: FStFPR8 var_114
  loc_D5AE72: FFree1Var var_208 = ""
  loc_D5AE75: LitVarI2 var_1F8, 4
  loc_D5AE7A: PopAdLdVar
  loc_D5AE7B: FLdRfVar var_1B8
  loc_D5AE7E: VarIndexLdVar
  loc_D5AE84: CR4Var
  loc_D5AE85: FStFPR8 var_11C
  loc_D5AE88: FFree1Var var_208 = ""
  loc_D5AE8B: LitVarI2 var_1F8, 5
  loc_D5AE90: PopAdLdVar
  loc_D5AE91: FLdRfVar var_1B8
  loc_D5AE94: VarIndexLdVar
  loc_D5AE9A: CR4Var
  loc_D5AE9B: FStFPR8 var_124
  loc_D5AE9E: FFree1Var var_208 = ""
  loc_D5AEA1: LitVarI2 var_1F8, 6
  loc_D5AEA6: PopAdLdVar
  loc_D5AEA7: FLdRfVar var_1B8
  loc_D5AEAA: VarIndexLdVar
  loc_D5AEB0: CR4Var
  loc_D5AEB1: FStFPR8 var_12C
  loc_D5AEB4: FFree1Var var_208 = ""
  loc_D5AEB7: LitVarI2 var_1F8, 7
  loc_D5AEBC: PopAdLdVar
  loc_D5AEBD: FLdRfVar var_1B8
  loc_D5AEC0: VarIndexLdVar
  loc_D5AEC6: CR4Var
  loc_D5AEC7: FStFPR8 var_134
  loc_D5AECA: FFree1Var var_208 = ""
  loc_D5AECD: LitVarI2 var_1F8, 8
  loc_D5AED2: PopAdLdVar
  loc_D5AED3: FLdRfVar var_1B8
  loc_D5AED6: VarIndexLdVar
  loc_D5AEDC: CR4Var
  loc_D5AEDD: FStFPR8 var_13C
  loc_D5AEE0: FFree1Var var_208 = ""
  loc_D5AEE3: LitVarI2 var_1F8, 9
  loc_D5AEE8: PopAdLdVar
  loc_D5AEE9: FLdRfVar var_1B8
  loc_D5AEEC: VarIndexLdVar
  loc_D5AEF2: CR4Var
  loc_D5AEF3: FStFPR8 var_154
  loc_D5AEF6: FFree1Var var_208 = ""
  loc_D5AEF9: LitVarI2 var_1F8, 10
  loc_D5AEFE: PopAdLdVar
  loc_D5AEFF: FLdRfVar var_1B8
  loc_D5AF02: VarIndexLdVar
  loc_D5AF08: CR4Var
  loc_D5AF09: FStFPR8 var_15C
  loc_D5AF0C: FFree1Var var_208 = ""
  loc_D5AF0F: LitVarI2 var_1F8, 11
  loc_D5AF14: PopAdLdVar
  loc_D5AF15: FLdRfVar var_1B8
  loc_D5AF18: VarIndexLdVar
  loc_D5AF1E: CR4Var
  loc_D5AF1F: FStFPR8 var_164
  loc_D5AF22: FFree1Var var_208 = ""
  loc_D5AF25: FLdI2 var_9E
  loc_D5AF28: CI4UI1
  loc_D5AF29: CVarI4
  loc_D5AF2D: PopAdLdVar
  loc_D5AF2E: LitVarI4
  loc_D5AF36: PopAdLdVar
  loc_D5AF37: ImpAdLdRf MemVar_D93E08
  loc_D5AF3A: NewIfNullPr frmPlanesdePago
  loc_D5AF3D: VCallAd Control_ID_
  loc_D5AF40: FStAdFunc var_234
  loc_D5AF43: FLdPr var_234
  loc_D5AF46: LateIdCallLdVar
  loc_D5AF50: CStrVarTmp
  loc_D5AF51: FStStrNoPop var_21C
  loc_D5AF54: CI2Str
  loc_D5AF56: LitI2_Byte 0
  loc_D5AF58: EqI2
  loc_D5AF59: FFree1Str var_21C
  loc_D5AF5C: FFree1Ad var_234
  loc_D5AF5F: FFree1Var var_208 = ""
  loc_D5AF62: BranchF loc_D5B0A4
  loc_D5AF65: LitI2_Byte 0
  loc_D5AF67: CR8I2
  loc_D5AF68: FStFPR8 var_104
  loc_D5AF6B: LitI4 2
  loc_D5AF70: FLdRfVar var_10C
  loc_D5AF73: CVarRef
  loc_D5AF78: FLdRfVar var_208
  loc_D5AF7B: ImpAdCallFPR4  = Round(, )
  loc_D5AF80: FLdRfVar var_208
  loc_D5AF83: CR4Var
  loc_D5AF84: FStFPR8 var_10C
  loc_D5AF87: FFree1Var var_208 = ""
  loc_D5AF8A: LitI4 2
  loc_D5AF8F: FLdRfVar var_114
  loc_D5AF92: CVarRef
  loc_D5AF97: FLdRfVar var_208
  loc_D5AF9A: ImpAdCallFPR4  = Round(, )
  loc_D5AF9F: FLdRfVar var_208
  loc_D5AFA2: CR4Var
  loc_D5AFA3: FStFPR8 var_114
  loc_D5AFA6: FFree1Var var_208 = ""
  loc_D5AFA9: LitI4 2
  loc_D5AFAE: FLdRfVar var_11C
  loc_D5AFB1: CVarRef
  loc_D5AFB6: FLdRfVar var_208
  loc_D5AFB9: ImpAdCallFPR4  = Round(, )
  loc_D5AFBE: FLdRfVar var_208
  loc_D5AFC1: CR4Var
  loc_D5AFC2: FStFPR8 var_11C
  loc_D5AFC5: FFree1Var var_208 = ""
  loc_D5AFC8: LitI4 2
  loc_D5AFCD: FLdRfVar var_124
  loc_D5AFD0: CVarRef
  loc_D5AFD5: FLdRfVar var_208
  loc_D5AFD8: ImpAdCallFPR4  = Round(, )
  loc_D5AFDD: FLdRfVar var_208
  loc_D5AFE0: CR4Var
  loc_D5AFE1: FStFPR8 var_124
  loc_D5AFE4: FFree1Var var_208 = ""
  loc_D5AFE7: LitI4 2
  loc_D5AFEC: FLdRfVar var_12C
  loc_D5AFEF: CVarRef
  loc_D5AFF4: FLdRfVar var_208
  loc_D5AFF7: ImpAdCallFPR4  = Round(, )
  loc_D5AFFC: FLdRfVar var_208
  loc_D5AFFF: CR4Var
  loc_D5B000: FStFPR8 var_12C
  loc_D5B003: FFree1Var var_208 = ""
  loc_D5B006: LitI4 2
  loc_D5B00B: FLdRfVar var_134
  loc_D5B00E: CVarRef
  loc_D5B013: FLdRfVar var_208
  loc_D5B016: ImpAdCallFPR4  = Round(, )
  loc_D5B01B: FLdRfVar var_208
  loc_D5B01E: CR4Var
  loc_D5B01F: FStFPR8 var_134
  loc_D5B022: FFree1Var var_208 = ""
  loc_D5B025: LitI4 2
  loc_D5B02A: FLdRfVar var_13C
  loc_D5B02D: CVarRef
  loc_D5B032: FLdRfVar var_208
  loc_D5B035: ImpAdCallFPR4  = Round(, )
  loc_D5B03A: FLdRfVar var_208
  loc_D5B03D: CR4Var
  loc_D5B03E: FStFPR8 var_13C
  loc_D5B041: FFree1Var var_208 = ""
  loc_D5B044: LitI4 2
  loc_D5B049: FLdRfVar var_154
  loc_D5B04C: CVarRef
  loc_D5B051: FLdRfVar var_208
  loc_D5B054: ImpAdCallFPR4  = Round(, )
  loc_D5B059: FLdRfVar var_208
  loc_D5B05C: CR4Var
  loc_D5B05D: FStFPR8 var_154
  loc_D5B060: FFree1Var var_208 = ""
  loc_D5B063: LitI4 2
  loc_D5B068: FLdRfVar var_15C
  loc_D5B06B: CVarRef
  loc_D5B070: FLdRfVar var_208
  loc_D5B073: ImpAdCallFPR4  = Round(, )
  loc_D5B078: FLdRfVar var_208
  loc_D5B07B: CR4Var
  loc_D5B07C: FStFPR8 var_15C
  loc_D5B07F: FFree1Var var_208 = ""
  loc_D5B082: LitI4 2
  loc_D5B087: FLdRfVar var_164
  loc_D5B08A: CVarRef
  loc_D5B08F: FLdRfVar var_208
  loc_D5B092: ImpAdCallFPR4  = Round(, )
  loc_D5B097: FLdRfVar var_208
  loc_D5B09A: CR4Var
  loc_D5B09B: FStFPR8 var_164
  loc_D5B09E: FFree1Var var_208 = ""
  loc_D5B0A1: Branch loc_D5B31E
  loc_D5B0A4: FLdI2 var_9E
  loc_D5B0A7: CI4UI1
  loc_D5B0A8: CVarI4
  loc_D5B0AC: PopAdLdVar
  loc_D5B0AD: LitVarI4
  loc_D5B0B5: PopAdLdVar
  loc_D5B0B6: ImpAdLdRf MemVar_D93E08
  loc_D5B0B9: NewIfNullPr frmPlanesdePago
  loc_D5B0BC: VCallAd Control_ID_
  loc_D5B0BF: FStAdFunc var_234
  loc_D5B0C2: FLdPr var_234
  loc_D5B0C5: LateIdCallLdVar
  loc_D5B0CF: CStrVarTmp
  loc_D5B0D0: FStStrNoPop var_21C
  loc_D5B0D3: CI2Str
  loc_D5B0D5: LitI2_Byte 0
  loc_D5B0D7: GtI2
  loc_D5B0D8: FFree1Str var_21C
  loc_D5B0DB: FFree1Ad var_234
  loc_D5B0DE: FFree1Var var_208 = ""
  loc_D5B0E1: BranchF loc_D5B31E
  loc_D5B0E4: FLdRfVar var_21C
  loc_D5B0E7: ImpAdLdRf MemVar_D93E08
  loc_D5B0EA: NewIfNullPr frmPlanesdePago
  loc_D5B0ED: VCallAd Control_ID_
  loc_D5B0F0: FStAdFunc var_234
  loc_D5B0F3: FLdPr var_234
  loc_D5B0F6:  = frmPlanesdePago.TextBox.Text
  loc_D5B0FB: LitI4 2
  loc_D5B100: FLdFPR8 var_104
  loc_D5B103: ILdRf var_21C
  loc_D5B106: CR8Str
  loc_D5B108: DivR8
  loc_D5B109: CVarR8
  loc_D5B10D: FLdRfVar var_218
  loc_D5B110: ImpAdCallFPR4  = Round(, )
  loc_D5B115: FLdRfVar var_218
  loc_D5B118: CR4Var
  loc_D5B119: FStFPR8 var_104
  loc_D5B11C: FFree1Str var_21C
  loc_D5B11F: FFree1Ad var_234
  loc_D5B122: FFreeVar var_208 = ""
  loc_D5B129: LitI2_Byte 0
  loc_D5B12B: CR8I2
  loc_D5B12C: FStFPR8 var_10C
  loc_D5B12F: LitI2_Byte 0
  loc_D5B131: CR8I2
  loc_D5B132: FStFPR8 var_114
  loc_D5B135: LitI2_Byte 0
  loc_D5B137: CR8I2
  loc_D5B138: FStFPR8 var_11C
  loc_D5B13B: FLdRfVar var_21C
  loc_D5B13E: ImpAdLdRf MemVar_D93E08
  loc_D5B141: NewIfNullPr frmPlanesdePago
  loc_D5B144: VCallAd Control_ID_
  loc_D5B147: FStAdFunc var_234
  loc_D5B14A: FLdPr var_234
  loc_D5B14D:  = frmPlanesdePago.TextBox.Text
  loc_D5B152: LitI4 2
  loc_D5B157: FLdFPR8 var_124
  loc_D5B15A: ILdRf var_21C
  loc_D5B15D: CR8Str
  loc_D5B15F: DivR8
  loc_D5B160: CVarR8
  loc_D5B164: FLdRfVar var_218
  loc_D5B167: ImpAdCallFPR4  = Round(, )
  loc_D5B16C: FLdRfVar var_218
  loc_D5B16F: CR4Var
  loc_D5B170: FStFPR8 var_124
  loc_D5B173: FFree1Str var_21C
  loc_D5B176: FFree1Ad var_234
  loc_D5B179: FFreeVar var_208 = ""
  loc_D5B180: FLdRfVar var_21C
  loc_D5B183: ImpAdLdRf MemVar_D93E08
  loc_D5B186: NewIfNullPr frmPlanesdePago
  loc_D5B189: VCallAd Control_ID_
  loc_D5B18C: FStAdFunc var_234
  loc_D5B18F: FLdPr var_234
  loc_D5B192:  = frmPlanesdePago.TextBox.Text
  loc_D5B197: LitI4 2
  loc_D5B19C: FLdFPR8 var_12C
  loc_D5B19F: ILdRf var_21C
  loc_D5B1A2: CR8Str
  loc_D5B1A4: DivR8
  loc_D5B1A5: CVarR8
  loc_D5B1A9: FLdRfVar var_218
  loc_D5B1AC: ImpAdCallFPR4  = Round(, )
  loc_D5B1B1: FLdRfVar var_218
  loc_D5B1B4: CR4Var
  loc_D5B1B5: FStFPR8 var_12C
  loc_D5B1B8: FFree1Str var_21C
  loc_D5B1BB: FFree1Ad var_234
  loc_D5B1BE: FFreeVar var_208 = ""
  loc_D5B1C5: FLdRfVar var_21C
  loc_D5B1C8: ImpAdLdRf MemVar_D93E08
  loc_D5B1CB: NewIfNullPr frmPlanesdePago
  loc_D5B1CE: VCallAd Control_ID_
  loc_D5B1D1: FStAdFunc var_234
  loc_D5B1D4: FLdPr var_234
  loc_D5B1D7:  = frmPlanesdePago.TextBox.Text
  loc_D5B1DC: LitI4 2
  loc_D5B1E1: FLdFPR8 var_134
  loc_D5B1E4: ILdRf var_21C
  loc_D5B1E7: CR8Str
  loc_D5B1E9: DivR8
  loc_D5B1EA: CVarR8
  loc_D5B1EE: FLdRfVar var_218
  loc_D5B1F1: ImpAdCallFPR4  = Round(, )
  loc_D5B1F6: FLdRfVar var_218
  loc_D5B1F9: CR4Var
  loc_D5B1FA: FStFPR8 var_134
  loc_D5B1FD: FFree1Str var_21C
  loc_D5B200: FFree1Ad var_234
  loc_D5B203: FFreeVar var_208 = ""
  loc_D5B20A: FLdRfVar var_21C
  loc_D5B20D: ImpAdLdRf MemVar_D93E08
  loc_D5B210: NewIfNullPr frmPlanesdePago
  loc_D5B213: VCallAd Control_ID_
  loc_D5B216: FStAdFunc var_234
  loc_D5B219: FLdPr var_234
  loc_D5B21C:  = frmPlanesdePago.TextBox.Text
  loc_D5B221: LitI4 2
  loc_D5B226: FLdFPR8 var_13C
  loc_D5B229: ILdRf var_21C
  loc_D5B22C: CR8Str
  loc_D5B22E: DivR8
  loc_D5B22F: CVarR8
  loc_D5B233: FLdRfVar var_218
  loc_D5B236: ImpAdCallFPR4  = Round(, )
  loc_D5B23B: FLdRfVar var_218
  loc_D5B23E: CR4Var
  loc_D5B23F: FStFPR8 var_13C
  loc_D5B242: FFree1Str var_21C
  loc_D5B245: FFree1Ad var_234
  loc_D5B248: FFreeVar var_208 = ""
  loc_D5B24F: FLdRfVar var_21C
  loc_D5B252: ImpAdLdRf MemVar_D93E08
  loc_D5B255: NewIfNullPr frmPlanesdePago
  loc_D5B258: VCallAd Control_ID_
  loc_D5B25B: FStAdFunc var_234
  loc_D5B25E: FLdPr var_234
  loc_D5B261:  = frmPlanesdePago.TextBox.Text
  loc_D5B266: LitI4 2
  loc_D5B26B: FLdFPR8 var_154
  loc_D5B26E: ILdRf var_21C
  loc_D5B271: CR8Str
  loc_D5B273: DivR8
  loc_D5B274: CVarR8
  loc_D5B278: FLdRfVar var_218
  loc_D5B27B: ImpAdCallFPR4  = Round(, )
  loc_D5B280: FLdRfVar var_218
  loc_D5B283: CR4Var
  loc_D5B284: FStFPR8 var_154
  loc_D5B287: FFree1Str var_21C
  loc_D5B28A: FFree1Ad var_234
  loc_D5B28D: FFreeVar var_208 = ""
  loc_D5B294: FLdRfVar var_21C
  loc_D5B297: ImpAdLdRf MemVar_D93E08
  loc_D5B29A: NewIfNullPr frmPlanesdePago
  loc_D5B29D: VCallAd Control_ID_
  loc_D5B2A0: FStAdFunc var_234
  loc_D5B2A3: FLdPr var_234
  loc_D5B2A6:  = frmPlanesdePago.TextBox.Text
  loc_D5B2AB: LitI4 2
  loc_D5B2B0: FLdFPR8 var_15C
  loc_D5B2B3: ILdRf var_21C
  loc_D5B2B6: CR8Str
  loc_D5B2B8: DivR8
  loc_D5B2B9: CVarR8
  loc_D5B2BD: FLdRfVar var_218
  loc_D5B2C0: ImpAdCallFPR4  = Round(, )
  loc_D5B2C5: FLdRfVar var_218
  loc_D5B2C8: CR4Var
  loc_D5B2C9: FStFPR8 var_15C
  loc_D5B2CC: FFree1Str var_21C
  loc_D5B2CF: FFree1Ad var_234
  loc_D5B2D2: FFreeVar var_208 = ""
  loc_D5B2D9: FLdRfVar var_21C
  loc_D5B2DC: ImpAdLdRf MemVar_D93E08
  loc_D5B2DF: NewIfNullPr frmPlanesdePago
  loc_D5B2E2: VCallAd Control_ID_
  loc_D5B2E5: FStAdFunc var_234
  loc_D5B2E8: FLdPr var_234
  loc_D5B2EB:  = frmPlanesdePago.TextBox.Text
  loc_D5B2F0: LitI4 2
  loc_D5B2F5: FLdFPR8 var_164
  loc_D5B2F8: ILdRf var_21C
  loc_D5B2FB: CR8Str
  loc_D5B2FD: DivR8
  loc_D5B2FE: CVarR8
  loc_D5B302: FLdRfVar var_218
  loc_D5B305: ImpAdCallFPR4  = Round(, )
  loc_D5B30A: FLdRfVar var_218
  loc_D5B30D: CR4Var
  loc_D5B30E: FStFPR8 var_164
  loc_D5B311: FFree1Str var_21C
  loc_D5B314: FFree1Ad var_234
  loc_D5B317: FFreeVar var_208 = ""
  loc_D5B31E: FLdFPR8 var_19C
  loc_D5B321: FLdFPR8 var_104
  loc_D5B324: AddR8
  loc_D5B325: FLdFPR8 var_10C
  loc_D5B328: AddR8
  loc_D5B329: FLdFPR8 var_114
  loc_D5B32C: AddR8
  loc_D5B32D: FLdFPR8 var_11C
  loc_D5B330: AddR8
  loc_D5B331: FLdFPR8 var_124
  loc_D5B334: AddR8
  loc_D5B335: FLdFPR8 var_12C
  loc_D5B338: AddR8
  loc_D5B339: FLdFPR8 var_134
  loc_D5B33C: AddR8
  loc_D5B33D: FLdFPR8 var_13C
  loc_D5B340: AddR8
  loc_D5B341: FLdFPR8 var_154
  loc_D5B344: AddR8
  loc_D5B345: FLdFPR8 var_15C
  loc_D5B348: AddR8
  loc_D5B349: FLdFPR8 var_164
  loc_D5B34C: AddR8
  loc_D5B34D: FStFPR8 var_19C
  loc_D5B350: FLdI2 var_DC
  loc_D5B353: CI4UI1
  loc_D5B354: FLdRfVar var_230
  loc_D5B357: FLdPr Me
  loc_D5B35A: MemLdPr global_64
  loc_D5B35D:  = Me.RecordCount
  loc_D5B362: ILdRf var_230
  loc_D5B365: EqI4
  loc_D5B366: BranchF loc_D5B4CD
  loc_D5B369: FLdI2 var_9E
  loc_D5B36C: CI4UI1
  loc_D5B36D: CVarI4
  loc_D5B371: PopAdLdVar
  loc_D5B372: LitVarI4
  loc_D5B37A: PopAdLdVar
  loc_D5B37B: ImpAdLdRf MemVar_D93E08
  loc_D5B37E: NewIfNullPr frmPlanesdePago
  loc_D5B381: VCallAd Control_ID_
  loc_D5B384: FStAdFunc var_234
  loc_D5B387: FLdPr var_234
  loc_D5B38A: LateIdCallLdVar
  loc_D5B394: PopAd
  loc_D5B396: FLdFPR8 var_19C
  loc_D5B399: FLdRfVar var_208
  loc_D5B39C: CStrVarTmp
  loc_D5B39D: FStStrNoPop var_21C
  loc_D5B3A0: CR8Str
  loc_D5B3A2: NeR8
  loc_D5B3A3: FFree1Str var_21C
  loc_D5B3A6: FFree1Ad var_234
  loc_D5B3A9: FFree1Var var_208 = ""
  loc_D5B3AC: BranchF loc_D5B4CD
  loc_D5B3AF: FLdI2 var_9E
  loc_D5B3B2: CI4UI1
  loc_D5B3B3: CVarI4
  loc_D5B3B7: PopAdLdVar
  loc_D5B3B8: LitVarI4
  loc_D5B3C0: PopAdLdVar
  loc_D5B3C1: ImpAdLdRf MemVar_D93E08
  loc_D5B3C4: NewIfNullPr frmPlanesdePago
  loc_D5B3C7: VCallAd Control_ID_
  loc_D5B3CA: FStAdFunc var_234
  loc_D5B3CD: FLdPr var_234
  loc_D5B3D0: LateIdCallLdVar
  loc_D5B3DA: CStrVarTmp
  loc_D5B3DB: FStStrNoPop var_21C
  loc_D5B3DE: CR8Str
  loc_D5B3E0: FLdFPR8 var_19C
  loc_D5B3E3: GtR4
  loc_D5B3E4: FFree1Str var_21C
  loc_D5B3E7: FFree1Ad var_234
  loc_D5B3EA: FFree1Var var_208 = ""
  loc_D5B3ED: BranchF loc_D5B43D
  loc_D5B3F0: FLdI2 var_9E
  loc_D5B3F3: CI4UI1
  loc_D5B3F4: CVarI4
  loc_D5B3F8: PopAdLdVar
  loc_D5B3F9: LitVarI4
  loc_D5B401: PopAdLdVar
  loc_D5B402: ImpAdLdRf MemVar_D93E08
  loc_D5B405: NewIfNullPr frmPlanesdePago
  loc_D5B408: VCallAd Control_ID_
  loc_D5B40B: FStAdFunc var_234
  loc_D5B40E: FLdPr var_234
  loc_D5B411: LateIdCallLdVar
  loc_D5B41B: PopAd
  loc_D5B41D: FLdFPR8 var_104
  loc_D5B420: FLdRfVar var_208
  loc_D5B423: CStrVarTmp
  loc_D5B424: FStStrNoPop var_21C
  loc_D5B427: CR8Str
  loc_D5B429: FLdFPR8 var_19C
  loc_D5B42C: SubR4
  loc_D5B42D: AddR8
  loc_D5B42E: FStFPR8 var_104
  loc_D5B431: FFree1Str var_21C
  loc_D5B434: FFree1Ad var_234
  loc_D5B437: FFree1Var var_208 = ""
  loc_D5B43A: Branch loc_D5B4CD
  loc_D5B43D: FLdI2 var_9E
  loc_D5B440: CI4UI1
  loc_D5B441: CVarI4
  loc_D5B445: PopAdLdVar
  loc_D5B446: LitVarI4
  loc_D5B44E: PopAdLdVar
  loc_D5B44F: ImpAdLdRf MemVar_D93E08
  loc_D5B452: NewIfNullPr frmPlanesdePago
  loc_D5B455: VCallAd Control_ID_
  loc_D5B458: FStAdFunc var_234
  loc_D5B45B: FLdPr var_234
  loc_D5B45E: LateIdCallLdVar
  loc_D5B468: PopAd
  loc_D5B46A: FLdFPR8 var_19C
  loc_D5B46D: FLdRfVar var_208
  loc_D5B470: CStrVarTmp
  loc_D5B471: FStStrNoPop var_21C
  loc_D5B474: CR8Str
  loc_D5B476: GtR4
  loc_D5B477: FFree1Str var_21C
  loc_D5B47A: FFree1Ad var_234
  loc_D5B47D: FFree1Var var_208 = ""
  loc_D5B480: BranchF loc_D5B4CD
  loc_D5B483: FLdI2 var_9E
  loc_D5B486: CI4UI1
  loc_D5B487: CVarI4
  loc_D5B48B: PopAdLdVar
  loc_D5B48C: LitVarI4
  loc_D5B494: PopAdLdVar
  loc_D5B495: ImpAdLdRf MemVar_D93E08
  loc_D5B498: NewIfNullPr frmPlanesdePago
  loc_D5B49B: VCallAd Control_ID_
  loc_D5B49E: FStAdFunc var_234
  loc_D5B4A1: FLdPr var_234
  loc_D5B4A4: LateIdCallLdVar
  loc_D5B4AE: PopAd
  loc_D5B4B0: FLdFPR8 var_104
  loc_D5B4B3: FLdFPR8 var_19C
  loc_D5B4B6: FLdRfVar var_208
  loc_D5B4B9: CStrVarTmp
  loc_D5B4BA: FStStrNoPop var_21C
  loc_D5B4BD: CR8Str
  loc_D5B4BF: SubR4
  loc_D5B4C0: SubR4
  loc_D5B4C1: FStFPR8 var_104
  loc_D5B4C4: FFree1Str var_21C
  loc_D5B4C7: FFree1Ad var_234
  loc_D5B4CA: FFree1Var var_208 = ""
  loc_D5B4CD: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua)"
  loc_D5B4D0: LitStr " VALUES ("
  loc_D5B4D3: ConcatStr
  loc_D5B4D4: FStStrNoPop var_21C
  loc_D5B4D7: FLdI2 var_AA
  loc_D5B4DA: CStrUI1
  loc_D5B4DC: FStStrNoPop var_220
  loc_D5B4DF: ConcatStr
  loc_D5B4E0: FStStrNoPop var_224
  loc_D5B4E3: LitStr ","
  loc_D5B4E6: ConcatStr
  loc_D5B4E7: FStStrNoPop var_228
  loc_D5B4EA: ILdRf var_B0
  loc_D5B4ED: CStrI4
  loc_D5B4EF: FStStrNoPop var_22C
  loc_D5B4F2: ConcatStr
  loc_D5B4F3: FStStrNoPop var_280
  loc_D5B4F6: LitStr ","
  loc_D5B4F9: ConcatStr
  loc_D5B4FA: CVarStr var_218
  loc_D5B4FD: FLdRfVar var_208
  loc_D5B500: FLdRfVar var_238
  loc_D5B503: LitVarStr var_1F8, "NumeApre"
  loc_D5B508: PopAdLdVar
  loc_D5B509: FLdRfVar var_234
  loc_D5B50C: FLdPr Me
  loc_D5B50F: MemLdPr global_64
  loc_D5B512:  = frmPlanesdePago.Recordset15.Fields
  loc_D5B517: FLdPr var_234
  loc_D5B51A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5B51F: FLdPr var_238
  loc_D5B522:  = Me.Value
  loc_D5B527: FLdRfVar var_208
  loc_D5B52A: ConcatVar var_27C
  loc_D5B52E: LitVarStr var_24C, ","
  loc_D5B533: ConcatVar var_2B0
  loc_D5B537: FLdI2 var_C6
  loc_D5B53A: CVarI2 var_25C
  loc_D5B53D: ConcatVar var_2E4
  loc_D5B541: LitVarStr var_26C, ","
  loc_D5B546: ConcatVar var_330
  loc_D5B54A: ILdRf var_B4
  loc_D5B54D: CVarI4
  loc_D5B551: ConcatVar var_390
  loc_D5B555: LitVarStr var_2D0, ","
  loc_D5B55A: ConcatVar var_3F0
  loc_D5B55E: FLdI2 var_9E
  loc_D5B561: CI4UI1
  loc_D5B562: CVarI4
  loc_D5B566: PopAdLdVar
  loc_D5B567: LitVarI4
  loc_D5B56F: PopAdLdVar
  loc_D5B570: ImpAdLdRf MemVar_D93E08
  loc_D5B573: NewIfNullPr frmPlanesdePago
  loc_D5B576: VCallAd Control_ID_
  loc_D5B579: FStAdFunc var_290
  loc_D5B57C: FLdPr var_290
  loc_D5B57F: LateIdCallLdVar
  loc_D5B589: CStrVarTmp
  loc_D5B58A: CVarStr var_64C
  loc_D5B58D: ConcatVar var_69C
  loc_D5B591: LitVarStr var_36C, ",'"
  loc_D5B596: ConcatVar var_6AC
  loc_D5B59A: LitI4 1
  loc_D5B59F: LitI4 1
  loc_D5B5A4: LitVarStr var_3AC, "yyyy-mm-dd"
  loc_D5B5A9: FStVarCopyObj var_6BC
  loc_D5B5AC: FLdRfVar var_6BC
  loc_D5B5AF: FLdRfVar var_A8
  loc_D5B5B2: CVarRef
  loc_D5B5B7: ImpAdCallI2 Format$(, )
  loc_D5B5BC: CVarStr var_6CC
  loc_D5B5BF: ConcatVar var_6DC
  loc_D5B5C3: LitVarStr var_3BC, "',NULL,'Emitido',"
  loc_D5B5C8: ConcatVar var_6EC
  loc_D5B5CC: LitI4 0
  loc_D5B5D1: LitI4 -1
  loc_D5B5D6: LitI4 1
  loc_D5B5DB: LitStr "."
  loc_D5B5DE: LitStr ","
  loc_D5B5E1: FLdFPR8 var_104
  loc_D5B5E4: CStrR8
  loc_D5B5E6: FStStrNoPop var_284
  loc_D5B5E9: ImpAdCallI2 Replace(, , , , , )
  loc_D5B5EE: CVarStr var_6FC
  loc_D5B5F1: ConcatVar var_70C
  loc_D5B5F5: LitVarStr var_3CC, ","
  loc_D5B5FA: ConcatVar var_71C
  loc_D5B5FE: LitI4 0
  loc_D5B603: LitI4 -1
  loc_D5B608: LitI4 1
  loc_D5B60D: LitStr "."
  loc_D5B610: LitStr ","
  loc_D5B613: FLdFPR8 var_10C
  loc_D5B616: CStrR8
  loc_D5B618: FStStrNoPop var_288
  loc_D5B61B: ImpAdCallI2 Replace(, , , , , )
  loc_D5B620: CVarStr var_72C
  loc_D5B623: ConcatVar var_73C
  loc_D5B627: LitVarStr var_3DC, ","
  loc_D5B62C: ConcatVar var_74C
  loc_D5B630: LitI4 0
  loc_D5B635: LitI4 -1
  loc_D5B63A: LitI4 1
  loc_D5B63F: LitStr "."
  loc_D5B642: LitStr ","
  loc_D5B645: FLdFPR8 var_114
  loc_D5B648: CStrR8
  loc_D5B64A: FStStrNoPop var_28C
  loc_D5B64D: ImpAdCallI2 Replace(, , , , , )
  loc_D5B652: CVarStr var_75C
  loc_D5B655: ConcatVar var_78C
  loc_D5B659: LitVarStr var_52C, ","
  loc_D5B65E: ConcatVar var_79C
  loc_D5B662: LitI4 0
  loc_D5B667: LitI4 -1
  loc_D5B66C: LitI4 1
  loc_D5B671: LitStr "."
  loc_D5B674: LitStr ","
  loc_D5B677: FLdFPR8 var_11C
  loc_D5B67A: CStrR8
  loc_D5B67C: FStStrNoPop var_294
  loc_D5B67F: ImpAdCallI2 Replace(, , , , , )
  loc_D5B684: CVarStr var_7AC
  loc_D5B687: ConcatVar var_7CC
  loc_D5B68B: LitVarStr var_53C, ","
  loc_D5B690: ConcatVar var_81C
  loc_D5B694: LitI4 0
  loc_D5B699: LitI4 -1
  loc_D5B69E: LitI4 1
  loc_D5B6A3: LitStr "."
  loc_D5B6A6: LitStr ","
  loc_D5B6A9: FLdFPR8 var_124
  loc_D5B6AC: CStrR8
  loc_D5B6AE: FStStrNoPop var_298
  loc_D5B6B1: ImpAdCallI2 Replace(, , , , , )
  loc_D5B6B6: CVarStr var_82C
  loc_D5B6B9: ConcatVar var_83C
  loc_D5B6BD: LitVarStr var_54C, ","
  loc_D5B6C2: ConcatVar var_85C
  loc_D5B6C6: LitI4 0
  loc_D5B6CB: LitI4 -1
  loc_D5B6D0: LitI4 1
  loc_D5B6D5: LitStr "."
  loc_D5B6D8: LitStr ","
  loc_D5B6DB: FLdFPR8 var_12C
  loc_D5B6DE: CStrR8
  loc_D5B6E0: FStStrNoPop var_29C
  loc_D5B6E3: ImpAdCallI2 Replace(, , , , , )
  loc_D5B6E8: CVarStr var_8AC
  loc_D5B6EB: ConcatVar var_8BC
  loc_D5B6EF: LitVarStr var_55C, ","
  loc_D5B6F4: ConcatVar var_8CC
  loc_D5B6F8: LitI4 0
  loc_D5B6FD: LitI4 -1
  loc_D5B702: LitI4 1
  loc_D5B707: LitStr "."
  loc_D5B70A: LitStr ","
  loc_D5B70D: FLdFPR8 var_134
  loc_D5B710: CStrR8
  loc_D5B712: FStStrNoPop var_2E8
  loc_D5B715: ImpAdCallI2 Replace(, , , , , )
  loc_D5B71A: CVarStr var_8EC
  loc_D5B71D: ConcatVar var_93C
  loc_D5B721: LitVarStr var_56C, ","
  loc_D5B726: ConcatVar var_94C
  loc_D5B72A: LitI4 0
  loc_D5B72F: LitI4 -1
  loc_D5B734: LitI4 1
  loc_D5B739: LitStr "."
  loc_D5B73C: LitStr ","
  loc_D5B73F: FLdFPR8 var_13C
  loc_D5B742: CStrR8
  loc_D5B744: FStStrNoPop var_2EC
  loc_D5B747: ImpAdCallI2 Replace(, , , , , )
  loc_D5B74C: CVarStr var_95C
  loc_D5B74F: ConcatVar var_97C
  loc_D5B753: LitVarStr var_57C, ","
  loc_D5B758: ConcatVar var_9CC
  loc_D5B75C: LitI4 0
  loc_D5B761: LitI4 -1
  loc_D5B766: LitI4 1
  loc_D5B76B: LitStr "."
  loc_D5B76E: LitStr ","
  loc_D5B771: FLdFPR8 var_154
  loc_D5B774: CStrR8
  loc_D5B776: FStStrNoPop var_2F0
  loc_D5B779: ImpAdCallI2 Replace(, , , , , )
  loc_D5B77E: CVarStr var_9DC
  loc_D5B781: ConcatVar var_9EC
  loc_D5B785: LitVarStr var_58C, ","
  loc_D5B78A: ConcatVar var_A0C
  loc_D5B78E: LitI4 0
  loc_D5B793: LitI4 -1
  loc_D5B798: LitI4 1
  loc_D5B79D: LitStr "."
  loc_D5B7A0: LitStr ","
  loc_D5B7A3: FLdFPR8 var_15C
  loc_D5B7A6: CStrR8
  loc_D5B7A8: FStStrNoPop var_2F8
  loc_D5B7AB: ImpAdCallI2 Replace(, , , , , )
  loc_D5B7B0: CVarStr var_A2C
  loc_D5B7B3: ConcatVar var_A4C
  loc_D5B7B7: LitVarStr var_59C, ","
  loc_D5B7BC: ConcatVar var_A5C
  loc_D5B7C0: LitI4 0
  loc_D5B7C5: LitI4 -1
  loc_D5B7CA: LitI4 1
  loc_D5B7CF: LitStr "."
  loc_D5B7D2: LitStr ","
  loc_D5B7D5: FLdFPR8 var_164
  loc_D5B7D8: CStrR8
  loc_D5B7DA: FStStrNoPop var_2FC
  loc_D5B7DD: ImpAdCallI2 Replace(, , , , , )
  loc_D5B7E2: CVarStr var_A6C
  loc_D5B7E5: ConcatVar var_A7C
  loc_D5B7E9: LitVarStr var_5AC, ",'"
  loc_D5B7EE: ConcatVar var_A8C
  loc_D5B7F2: ImpAdLdI4 MemVar_D9302C
  loc_D5B7F5: CVarStr var_5BC
  loc_D5B7F8: ConcatVar var_A9C
  loc_D5B7FC: LitVarStr var_5CC, "');"
  loc_D5B801: ConcatVar var_AAC
  loc_D5B805: CStrVarVal var_300
  loc_D5B809: Call EjecutarRsCls(from_stack_1v)
  loc_D5B80E: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2FC = ""
  loc_D5B835: FFreeAd var_234 = "": var_238 = ""
  loc_D5B83E: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A5C = "": var_A6C = "": var_A7C = "": var_A8C = "": var_A9C = "": var_AAC = "": var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_5FC = "": var_3F0 = "": var_64C = "": var_69C = "": var_6BC = "": var_6AC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5B8A7: LitStr " INSERT INTO faciapre (CodiFapa, CuotDefa, NumeApre, CodiInju, FealFaap, CoadFaap, ReseFaap, ApleFaap, DefiFaap, HoreFaap, HoofFaap, MoreFaap, MoofFaap, IcomFaap, IrecFaap, IofiFaap, CodiUsua) "
  loc_D5B8AA: LitStr " VALUES ("
  loc_D5B8AD: ConcatStr
  loc_D5B8AE: FStStrNoPop var_21C
  loc_D5B8B1: ILdRf var_B4
  loc_D5B8B4: CStrI4
  loc_D5B8B6: FStStrNoPop var_220
  loc_D5B8B9: ConcatStr
  loc_D5B8BA: FStStrNoPop var_224
  loc_D5B8BD: LitStr ","
  loc_D5B8C0: ConcatStr
  loc_D5B8C1: FStStrNoPop var_228
  loc_D5B8C4: FLdI2 var_9E
  loc_D5B8C7: CI4UI1
  loc_D5B8C8: CVarI4
  loc_D5B8CC: PopAdLdVar
  loc_D5B8CD: LitVarI4
  loc_D5B8D5: PopAdLdVar
  loc_D5B8D6: ImpAdLdRf MemVar_D93E08
  loc_D5B8D9: NewIfNullPr frmPlanesdePago
  loc_D5B8DC: VCallAd Control_ID_
  loc_D5B8DF: FStAdFunc var_234
  loc_D5B8E2: FLdPr var_234
  loc_D5B8E5: LateIdCallLdVar
  loc_D5B8EF: CStrVarTmp
  loc_D5B8F0: FStStrNoPop var_22C
  loc_D5B8F3: ConcatStr
  loc_D5B8F4: FStStrNoPop var_280
  loc_D5B8F7: LitStr ","
  loc_D5B8FA: ConcatStr
  loc_D5B8FB: CVarStr var_27C
  loc_D5B8FE: FLdRfVar var_218
  loc_D5B901: FLdRfVar var_290
  loc_D5B904: LitVarStr var_2C0, "NumeApre"
  loc_D5B909: PopAdLdVar
  loc_D5B90A: FLdRfVar var_238
  loc_D5B90D: FLdPr Me
  loc_D5B910: MemLdPr global_64
  loc_D5B913:  = frmPlanesdePago.Recordset15.Fields
  loc_D5B918: FLdPr var_238
  loc_D5B91B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5B920: FLdPr var_290
  loc_D5B923:  = Me.Value
  loc_D5B928: FLdRfVar var_218
  loc_D5B92B: ConcatVar var_2B0
  loc_D5B92F: LitVarStr var_2D0, ","
  loc_D5B934: ConcatVar var_2E4
  loc_D5B938: FLdI2 var_C6
  loc_D5B93B: CVarI2 var_310
  loc_D5B93E: ConcatVar var_330
  loc_D5B942: LitVarStr var_320, ",'"
  loc_D5B947: ConcatVar var_390
  loc_D5B94B: LitI4 1
  loc_D5B950: LitI4 1
  loc_D5B955: LitVarStr var_35C, "yyyy-mm-dd"
  loc_D5B95A: FStVarCopyObj var_3F0
  loc_D5B95D: FLdRfVar var_3F0
  loc_D5B960: FLdRfVar var_A8
  loc_D5B963: CVarRef
  loc_D5B968: ImpAdCallI2 Format$(, )
  loc_D5B96D: CVarStr var_5FC
  loc_D5B970: ConcatVar var_64C
  loc_D5B974: LitVarStr var_36C, "',"
  loc_D5B979: ConcatVar var_69C
  loc_D5B97D: LitI4 0
  loc_D5B982: LitI4 -1
  loc_D5B987: LitI4 1
  loc_D5B98C: LitStr "."
  loc_D5B98F: LitStr ","
  loc_D5B992: FLdFPR8 var_104
  loc_D5B995: CStrR8
  loc_D5B997: FStStrNoPop var_284
  loc_D5B99A: ImpAdCallI2 Replace(, , , , , )
  loc_D5B99F: CVarStr var_6AC
  loc_D5B9A2: ConcatVar var_6BC
  loc_D5B9A6: LitVarStr var_37C, ","
  loc_D5B9AB: ConcatVar var_6CC
  loc_D5B9AF: LitI4 0
  loc_D5B9B4: LitI4 -1
  loc_D5B9B9: LitI4 1
  loc_D5B9BE: LitStr "."
  loc_D5B9C1: LitStr ","
  loc_D5B9C4: FLdFPR8 var_10C
  loc_D5B9C7: CStrR8
  loc_D5B9C9: FStStrNoPop var_288
  loc_D5B9CC: ImpAdCallI2 Replace(, , , , , )
  loc_D5B9D1: CVarStr var_6DC
  loc_D5B9D4: ConcatVar var_6EC
  loc_D5B9D8: LitVarStr var_3AC, ","
  loc_D5B9DD: ConcatVar var_6FC
  loc_D5B9E1: LitI4 0
  loc_D5B9E6: LitI4 -1
  loc_D5B9EB: LitI4 1
  loc_D5B9F0: LitStr "."
  loc_D5B9F3: LitStr ","
  loc_D5B9F6: FLdFPR8 var_114
  loc_D5B9F9: CStrR8
  loc_D5B9FB: FStStrNoPop var_28C
  loc_D5B9FE: ImpAdCallI2 Replace(, , , , , )
  loc_D5BA03: CVarStr var_70C
  loc_D5BA06: ConcatVar var_71C
  loc_D5BA0A: LitVarStr var_3BC, ","
  loc_D5BA0F: ConcatVar var_72C
  loc_D5BA13: LitI4 0
  loc_D5BA18: LitI4 -1
  loc_D5BA1D: LitI4 1
  loc_D5BA22: LitStr "."
  loc_D5BA25: LitStr ","
  loc_D5BA28: FLdFPR8 var_11C
  loc_D5BA2B: CStrR8
  loc_D5BA2D: FStStrNoPop var_294
  loc_D5BA30: ImpAdCallI2 Replace(, , , , , )
  loc_D5BA35: CVarStr var_73C
  loc_D5BA38: ConcatVar var_74C
  loc_D5BA3C: LitVarStr var_3CC, ","
  loc_D5BA41: ConcatVar var_75C
  loc_D5BA45: LitI4 0
  loc_D5BA4A: LitI4 -1
  loc_D5BA4F: LitI4 1
  loc_D5BA54: LitStr "."
  loc_D5BA57: LitStr ","
  loc_D5BA5A: FLdFPR8 var_124
  loc_D5BA5D: CStrR8
  loc_D5BA5F: FStStrNoPop var_298
  loc_D5BA62: ImpAdCallI2 Replace(, , , , , )
  loc_D5BA67: CVarStr var_78C
  loc_D5BA6A: ConcatVar var_79C
  loc_D5BA6E: LitVarStr var_3DC, ","
  loc_D5BA73: ConcatVar var_7AC
  loc_D5BA77: LitI4 0
  loc_D5BA7C: LitI4 -1
  loc_D5BA81: LitI4 1
  loc_D5BA86: LitStr "."
  loc_D5BA89: LitStr ","
  loc_D5BA8C: FLdFPR8 var_12C
  loc_D5BA8F: CStrR8
  loc_D5BA91: FStStrNoPop var_29C
  loc_D5BA94: ImpAdCallI2 Replace(, , , , , )
  loc_D5BA99: CVarStr var_7CC
  loc_D5BA9C: ConcatVar var_81C
  loc_D5BAA0: LitVarStr var_52C, ","
  loc_D5BAA5: ConcatVar var_82C
  loc_D5BAA9: LitI4 0
  loc_D5BAAE: LitI4 -1
  loc_D5BAB3: LitI4 1
  loc_D5BAB8: LitStr "."
  loc_D5BABB: LitStr ","
  loc_D5BABE: FLdFPR8 var_134
  loc_D5BAC1: CStrR8
  loc_D5BAC3: FStStrNoPop var_2E8
  loc_D5BAC6: ImpAdCallI2 Replace(, , , , , )
  loc_D5BACB: CVarStr var_83C
  loc_D5BACE: ConcatVar var_85C
  loc_D5BAD2: LitVarStr var_53C, ","
  loc_D5BAD7: ConcatVar var_8AC
  loc_D5BADB: LitI4 0
  loc_D5BAE0: LitI4 -1
  loc_D5BAE5: LitI4 1
  loc_D5BAEA: LitStr "."
  loc_D5BAED: LitStr ","
  loc_D5BAF0: FLdFPR8 var_13C
  loc_D5BAF3: CStrR8
  loc_D5BAF5: FStStrNoPop var_2EC
  loc_D5BAF8: ImpAdCallI2 Replace(, , , , , )
  loc_D5BAFD: CVarStr var_8BC
  loc_D5BB00: ConcatVar var_8CC
  loc_D5BB04: LitVarStr var_54C, ","
  loc_D5BB09: ConcatVar var_8EC
  loc_D5BB0D: LitI4 0
  loc_D5BB12: LitI4 -1
  loc_D5BB17: LitI4 1
  loc_D5BB1C: LitStr "."
  loc_D5BB1F: LitStr ","
  loc_D5BB22: FLdFPR8 var_154
  loc_D5BB25: CStrR8
  loc_D5BB27: FStStrNoPop var_2F0
  loc_D5BB2A: ImpAdCallI2 Replace(, , , , , )
  loc_D5BB2F: CVarStr var_93C
  loc_D5BB32: ConcatVar var_94C
  loc_D5BB36: LitVarStr var_55C, ","
  loc_D5BB3B: ConcatVar var_95C
  loc_D5BB3F: LitI4 0
  loc_D5BB44: LitI4 -1
  loc_D5BB49: LitI4 1
  loc_D5BB4E: LitStr "."
  loc_D5BB51: LitStr ","
  loc_D5BB54: FLdFPR8 var_15C
  loc_D5BB57: CStrR8
  loc_D5BB59: FStStrNoPop var_2F8
  loc_D5BB5C: ImpAdCallI2 Replace(, , , , , )
  loc_D5BB61: CVarStr var_97C
  loc_D5BB64: ConcatVar var_9CC
  loc_D5BB68: LitVarStr var_56C, ","
  loc_D5BB6D: ConcatVar var_9DC
  loc_D5BB71: LitI4 0
  loc_D5BB76: LitI4 -1
  loc_D5BB7B: LitI4 1
  loc_D5BB80: LitStr "."
  loc_D5BB83: LitStr ","
  loc_D5BB86: FLdFPR8 var_164
  loc_D5BB89: CStrR8
  loc_D5BB8B: FStStrNoPop var_2FC
  loc_D5BB8E: ImpAdCallI2 Replace(, , , , , )
  loc_D5BB93: CVarStr var_9EC
  loc_D5BB96: ConcatVar var_A0C
  loc_D5BB9A: LitVarStr var_57C, ",'"
  loc_D5BB9F: ConcatVar var_A2C
  loc_D5BBA3: ImpAdLdI4 MemVar_D9302C
  loc_D5BBA6: CVarStr var_58C
  loc_D5BBA9: ConcatVar var_A4C
  loc_D5BBAD: LitVarStr var_59C, "');"
  loc_D5BBB2: ConcatVar var_A5C
  loc_D5BBB6: CStrVarVal var_300
  loc_D5BBBA: Call EjecutarRsCls(from_stack_1v)
  loc_D5BBBF: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2FC = ""
  loc_D5BBE6: FFreeAd var_234 = "": var_238 = ""
  loc_D5BBEF: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A5C = "": var_208 = "": var_27C = "": var_218 = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_3F0 = "": var_390 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5BC4E: FLdFPR8 var_1A4
  loc_D5BC51: FLdFPR8 var_104
  loc_D5BC54: AddR8
  loc_D5BC55: FLdFPR8 var_10C
  loc_D5BC58: AddR8
  loc_D5BC59: FLdFPR8 var_114
  loc_D5BC5C: AddR8
  loc_D5BC5D: FLdFPR8 var_11C
  loc_D5BC60: AddR8
  loc_D5BC61: FLdFPR8 var_124
  loc_D5BC64: AddR8
  loc_D5BC65: FLdFPR8 var_12C
  loc_D5BC68: AddR8
  loc_D5BC69: FLdFPR8 var_134
  loc_D5BC6C: AddR8
  loc_D5BC6D: FLdFPR8 var_13C
  loc_D5BC70: AddR8
  loc_D5BC71: FLdFPR8 var_154
  loc_D5BC74: AddR8
  loc_D5BC75: FLdFPR8 var_15C
  loc_D5BC78: AddR8
  loc_D5BC79: FLdFPR8 var_164
  loc_D5BC7C: AddR8
  loc_D5BC7D: FStFPR8 var_1A4
  loc_D5BC80: FLdI2 var_9E
  loc_D5BC83: CI4UI1
  loc_D5BC84: CVarI4
  loc_D5BC88: PopAdLdVar
  loc_D5BC89: LitVarI4
  loc_D5BC91: PopAdLdVar
  loc_D5BC92: ImpAdLdRf MemVar_D93E08
  loc_D5BC95: NewIfNullPr frmPlanesdePago
  loc_D5BC98: VCallAd Control_ID_
  loc_D5BC9B: FStAdFunc var_234
  loc_D5BC9E: FLdPr var_234
  loc_D5BCA1: LateIdCallLdVar
  loc_D5BCAB: CStrVarTmp
  loc_D5BCAC: FStStrNoPop var_21C
  loc_D5BCAF: CI2Str
  loc_D5BCB1: LitI2_Byte 0
  loc_D5BCB3: GtI2
  loc_D5BCB4: FFree1Str var_21C
  loc_D5BCB7: FFree1Ad var_234
  loc_D5BCBA: FFree1Var var_208 = ""
  loc_D5BCBD: BranchF loc_D5C12B
  loc_D5BCC0: LitI2_Byte 0
  loc_D5BCC2: FStI2 var_DE
  loc_D5BCC5: LitStr "SELECT * FROM tmp_apredeta"
  loc_D5BCC8: Call EjecutarRsCls2(from_stack_1v)
  loc_D5BCCD: FLdRfVar var_230
  loc_D5BCD0: FLdPr Me
  loc_D5BCD3: MemLdPr global_68
  loc_D5BCD6:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D5BCDB: ILdRf var_230
  loc_D5BCDE: LitI4 0
  loc_D5BCE3: GtI4
  loc_D5BCE4: BranchF loc_D5C12B
  loc_D5BCE7: FLdRfVar var_4D6
  loc_D5BCEA: FLdPr Me
  loc_D5BCED: MemLdPr global_68
  loc_D5BCF0:  = Me.EOF
  loc_D5BCF5: FLdI2 var_4D6
  loc_D5BCF8: NotI4
  loc_D5BCF9: BranchF loc_D5C12B
  loc_D5BCFC: FLdI2 var_DE
  loc_D5BCFF: LitI2_Byte 1
  loc_D5BD01: AddI2
  loc_D5BD02: FStI2 var_DE
  loc_D5BD05: FLdRfVar var_208
  loc_D5BD08: FLdRfVar var_238
  loc_D5BD0B: LitVarStr var_1F8, "ImreBade"
  loc_D5BD10: PopAdLdVar
  loc_D5BD11: FLdRfVar var_234
  loc_D5BD14: FLdPr Me
  loc_D5BD17: MemLdPr global_68
  loc_D5BD1A:  = Me.Fields
  loc_D5BD1F: FLdPr var_234
  loc_D5BD22: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BD27: FLdPr var_238
  loc_D5BD2A:  = Me.Value
  loc_D5BD2F: FLdRfVar var_21C
  loc_D5BD32: ImpAdLdRf MemVar_D93E08
  loc_D5BD35: NewIfNullPr frmPlanesdePago
  loc_D5BD38: VCallAd Control_ID_
  loc_D5BD3B: FStAdFunc var_290
  loc_D5BD3E: FLdPr var_290
  loc_D5BD41:  = frmPlanesdePago.TextBox.Text
  loc_D5BD46: LitI4 2
  loc_D5BD4B: FLdRfVar var_208
  loc_D5BD4E: FnCDblVar
  loc_D5BD50: ILdRf var_21C
  loc_D5BD53: CR8Str
  loc_D5BD55: DivR8
  loc_D5BD56: CVarR8
  loc_D5BD5A: FLdRfVar var_27C
  loc_D5BD5D: ImpAdCallFPR4  = Round(, )
  loc_D5BD62: FLdRfVar var_27C
  loc_D5BD65: CR4Var
  loc_D5BD66: FStFPR8 var_144
  loc_D5BD69: FFree1Str var_21C
  loc_D5BD6C: FFreeAd var_234 = "": var_238 = ""
  loc_D5BD75: FFreeVar var_208 = "": var_218 = ""
  loc_D5BD7E: FLdRfVar var_208
  loc_D5BD81: FLdRfVar var_238
  loc_D5BD84: LitVarStr var_1F8, "IvreBade"
  loc_D5BD89: PopAdLdVar
  loc_D5BD8A: FLdRfVar var_234
  loc_D5BD8D: FLdPr Me
  loc_D5BD90: MemLdPr global_68
  loc_D5BD93:  = Me.Fields
  loc_D5BD98: FLdPr var_234
  loc_D5BD9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BDA0: FLdPr var_238
  loc_D5BDA3:  = Me.Value
  loc_D5BDA8: FLdRfVar var_21C
  loc_D5BDAB: ImpAdLdRf MemVar_D93E08
  loc_D5BDAE: NewIfNullPr frmPlanesdePago
  loc_D5BDB1: VCallAd Control_ID_
  loc_D5BDB4: FStAdFunc var_290
  loc_D5BDB7: FLdPr var_290
  loc_D5BDBA:  = frmPlanesdePago.TextBox.Text
  loc_D5BDBF: LitI4 2
  loc_D5BDC4: FLdRfVar var_208
  loc_D5BDC7: FnCDblVar
  loc_D5BDC9: ILdRf var_21C
  loc_D5BDCC: CR8Str
  loc_D5BDCE: DivR8
  loc_D5BDCF: CVarR8
  loc_D5BDD3: FLdRfVar var_27C
  loc_D5BDD6: ImpAdCallFPR4  = Round(, )
  loc_D5BDDB: FLdRfVar var_27C
  loc_D5BDDE: CR4Var
  loc_D5BDDF: FStFPR8 var_16C
  loc_D5BDE2: FFree1Str var_21C
  loc_D5BDE5: FFreeAd var_234 = "": var_238 = ""
  loc_D5BDEE: FFreeVar var_208 = "": var_218 = ""
  loc_D5BDF7: FLdRfVar var_208
  loc_D5BDFA: FLdRfVar var_238
  loc_D5BDFD: LitVarStr var_1F8, "ImofBade"
  loc_D5BE02: PopAdLdVar
  loc_D5BE03: FLdRfVar var_234
  loc_D5BE06: FLdPr Me
  loc_D5BE09: MemLdPr global_68
  loc_D5BE0C:  = Me.Fields
  loc_D5BE11: FLdPr var_234
  loc_D5BE14: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BE19: FLdPr var_238
  loc_D5BE1C:  = Me.Value
  loc_D5BE21: FLdRfVar var_21C
  loc_D5BE24: ImpAdLdRf MemVar_D93E08
  loc_D5BE27: NewIfNullPr frmPlanesdePago
  loc_D5BE2A: VCallAd Control_ID_
  loc_D5BE2D: FStAdFunc var_290
  loc_D5BE30: FLdPr var_290
  loc_D5BE33:  = frmPlanesdePago.TextBox.Text
  loc_D5BE38: LitI4 2
  loc_D5BE3D: FLdRfVar var_208
  loc_D5BE40: FnCDblVar
  loc_D5BE42: ILdRf var_21C
  loc_D5BE45: CR8Str
  loc_D5BE47: DivR8
  loc_D5BE48: CVarR8
  loc_D5BE4C: FLdRfVar var_27C
  loc_D5BE4F: ImpAdCallFPR4  = Round(, )
  loc_D5BE54: FLdRfVar var_27C
  loc_D5BE57: CR4Var
  loc_D5BE58: FStFPR8 var_14C
  loc_D5BE5B: FFree1Str var_21C
  loc_D5BE5E: FFreeAd var_234 = "": var_238 = ""
  loc_D5BE67: FFreeVar var_208 = "": var_218 = ""
  loc_D5BE70: FLdRfVar var_208
  loc_D5BE73: FLdRfVar var_238
  loc_D5BE76: LitVarStr var_1F8, "IvofBade"
  loc_D5BE7B: PopAdLdVar
  loc_D5BE7C: FLdRfVar var_234
  loc_D5BE7F: FLdPr Me
  loc_D5BE82: MemLdPr global_68
  loc_D5BE85:  = Me.Fields
  loc_D5BE8A: FLdPr var_234
  loc_D5BE8D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BE92: FLdPr var_238
  loc_D5BE95:  = Me.Value
  loc_D5BE9A: FLdRfVar var_21C
  loc_D5BE9D: ImpAdLdRf MemVar_D93E08
  loc_D5BEA0: NewIfNullPr frmPlanesdePago
  loc_D5BEA3: VCallAd Control_ID_
  loc_D5BEA6: FStAdFunc var_290
  loc_D5BEA9: FLdPr var_290
  loc_D5BEAC:  = frmPlanesdePago.TextBox.Text
  loc_D5BEB1: LitI4 2
  loc_D5BEB6: FLdRfVar var_208
  loc_D5BEB9: FnCDblVar
  loc_D5BEBB: ILdRf var_21C
  loc_D5BEBE: CR8Str
  loc_D5BEC0: DivR8
  loc_D5BEC1: CVarR8
  loc_D5BEC5: FLdRfVar var_27C
  loc_D5BEC8: ImpAdCallFPR4  = Round(, )
  loc_D5BECD: FLdRfVar var_27C
  loc_D5BED0: CR4Var
  loc_D5BED1: FStFPR8 var_174
  loc_D5BED4: FFree1Str var_21C
  loc_D5BED7: FFreeAd var_234 = "": var_238 = ""
  loc_D5BEE0: FFreeVar var_208 = "": var_218 = ""
  loc_D5BEE9: LitStr "INSERT INTO boleapredeta (PeriBole, NumeBole, NumeApre, CodiInju, NumeBade, CodiReca, ImreBade, IvreBade, CodiOfju, ImofBade, IvofBade) "
  loc_D5BEEC: LitStr " VALUES ("
  loc_D5BEEF: ConcatStr
  loc_D5BEF0: FStStrNoPop var_21C
  loc_D5BEF3: FLdI2 var_AA
  loc_D5BEF6: CStrUI1
  loc_D5BEF8: FStStrNoPop var_220
  loc_D5BEFB: ConcatStr
  loc_D5BEFC: FStStrNoPop var_224
  loc_D5BEFF: LitStr ","
  loc_D5BF02: ConcatStr
  loc_D5BF03: FStStrNoPop var_228
  loc_D5BF06: ILdRf var_B0
  loc_D5BF09: CStrI4
  loc_D5BF0B: FStStrNoPop var_22C
  loc_D5BF0E: ConcatStr
  loc_D5BF0F: FStStrNoPop var_280
  loc_D5BF12: LitStr ","
  loc_D5BF15: ConcatStr
  loc_D5BF16: CVarStr var_218
  loc_D5BF19: FLdRfVar var_208
  loc_D5BF1C: FLdRfVar var_238
  loc_D5BF1F: LitVarStr var_1F8, "NumeApre"
  loc_D5BF24: PopAdLdVar
  loc_D5BF25: FLdRfVar var_234
  loc_D5BF28: FLdPr Me
  loc_D5BF2B: MemLdPr global_68
  loc_D5BF2E:  = Me.Fields
  loc_D5BF33: FLdPr var_234
  loc_D5BF36: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BF3B: FLdPr var_238
  loc_D5BF3E:  = Me.Value
  loc_D5BF43: FLdRfVar var_208
  loc_D5BF46: ConcatVar var_27C
  loc_D5BF4A: LitVarStr var_24C, ","
  loc_D5BF4F: ConcatVar var_2B0
  loc_D5BF53: FLdI2 var_C6
  loc_D5BF56: CVarI2 var_25C
  loc_D5BF59: ConcatVar var_2E4
  loc_D5BF5D: LitVarStr var_26C, ","
  loc_D5BF62: ConcatVar var_330
  loc_D5BF66: FLdI2 var_DE
  loc_D5BF69: CVarI2 var_2C0
  loc_D5BF6C: ConcatVar var_390
  loc_D5BF70: LitVarStr var_2D0, ","
  loc_D5BF75: ConcatVar var_3F0
  loc_D5BF79: FLdRfVar var_5FC
  loc_D5BF7C: FLdRfVar var_2A0
  loc_D5BF7F: LitVarStr var_310, "CodiReca"
  loc_D5BF84: PopAdLdVar
  loc_D5BF85: FLdRfVar var_290
  loc_D5BF88: FLdPr Me
  loc_D5BF8B: MemLdPr global_68
  loc_D5BF8E:  = Me.Fields
  loc_D5BF93: FLdPr var_290
  loc_D5BF96: from_stack_2 = Me.Item(from_stack_1)
  loc_D5BF9B: FLdPr var_2A0
  loc_D5BF9E:  = Me.Value
  loc_D5BFA3: FLdRfVar var_5FC
  loc_D5BFA6: ConcatVar var_64C
  loc_D5BFAA: LitVarStr var_320, ","
  loc_D5BFAF: ConcatVar var_69C
  loc_D5BFB3: LitI4 0
  loc_D5BFB8: LitI4 -1
  loc_D5BFBD: LitI4 1
  loc_D5BFC2: LitStr "."
  loc_D5BFC5: LitStr ","
  loc_D5BFC8: FLdFPR8 var_144
  loc_D5BFCB: CStrR8
  loc_D5BFCD: FStStrNoPop var_284
  loc_D5BFD0: ImpAdCallI2 Replace(, , , , , )
  loc_D5BFD5: CVarStr var_6AC
  loc_D5BFD8: ConcatVar var_6BC
  loc_D5BFDC: LitVarStr var_34C, ","
  loc_D5BFE1: ConcatVar var_6CC
  loc_D5BFE5: LitI4 0
  loc_D5BFEA: LitI4 -1
  loc_D5BFEF: LitI4 1
  loc_D5BFF4: LitStr "."
  loc_D5BFF7: LitStr ","
  loc_D5BFFA: FLdFPR8 var_16C
  loc_D5BFFD: CStrR8
  loc_D5BFFF: FStStrNoPop var_288
  loc_D5C002: ImpAdCallI2 Replace(, , , , , )
  loc_D5C007: CVarStr var_6DC
  loc_D5C00A: ConcatVar var_6EC
  loc_D5C00E: LitVarStr var_35C, ","
  loc_D5C013: ConcatVar var_6FC
  loc_D5C017: FLdRfVar var_70C
  loc_D5C01A: FLdRfVar var_2F4
  loc_D5C01D: LitVarStr var_36C, "CodiOfju"
  loc_D5C022: PopAdLdVar
  loc_D5C023: FLdRfVar var_2D4
  loc_D5C026: FLdPr Me
  loc_D5C029: MemLdPr global_68
  loc_D5C02C:  = Me.Fields
  loc_D5C031: FLdPr var_2D4
  loc_D5C034: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C039: FLdPr var_2F4
  loc_D5C03C:  = Me.Value
  loc_D5C041: FLdRfVar var_70C
  loc_D5C044: ConcatVar var_71C
  loc_D5C048: LitVarStr var_37C, ","
  loc_D5C04D: ConcatVar var_72C
  loc_D5C051: LitI4 0
  loc_D5C056: LitI4 -1
  loc_D5C05B: LitI4 1
  loc_D5C060: LitStr "."
  loc_D5C063: LitStr ","
  loc_D5C066: FLdFPR8 var_14C
  loc_D5C069: CStrR8
  loc_D5C06B: FStStrNoPop var_28C
  loc_D5C06E: ImpAdCallI2 Replace(, , , , , )
  loc_D5C073: CVarStr var_73C
  loc_D5C076: ConcatVar var_74C
  loc_D5C07A: LitVarStr var_3AC, ","
  loc_D5C07F: ConcatVar var_75C
  loc_D5C083: LitI4 0
  loc_D5C088: LitI4 -1
  loc_D5C08D: LitI4 1
  loc_D5C092: LitStr "."
  loc_D5C095: LitStr ","
  loc_D5C098: FLdFPR8 var_174
  loc_D5C09B: CStrR8
  loc_D5C09D: FStStrNoPop var_294
  loc_D5C0A0: ImpAdCallI2 Replace(, , , , , )
  loc_D5C0A5: CVarStr var_78C
  loc_D5C0A8: ConcatVar var_79C
  loc_D5C0AC: LitVarStr var_3BC, ");"
  loc_D5C0B1: ConcatVar var_7AC
  loc_D5C0B5: CStrVarVal var_298
  loc_D5C0B9: Call EjecutarRsCls(from_stack_1v)
  loc_D5C0BE: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = ""
  loc_D5C0D7: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = ""
  loc_D5C0E6: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = ""
  loc_D5C11D: FLdPr Me
  loc_D5C120: MemLdPr global_68
  loc_D5C123: Me.MoveNext
  loc_D5C128: Branch loc_D5BCE7
  loc_D5C12B: FLdPr Me
  loc_D5C12E: MemLdPr global_64
  loc_D5C131: Me.MoveNext
  loc_D5C136: Branch loc_D5AD0E
  loc_D5C139: Branch loc_D5D549
  loc_D5C13C: FLdRfVar var_21C
  loc_D5C13F: ImpAdLdRf MemVar_D93E08
  loc_D5C142: NewIfNullPr frmPlanesdePago
  loc_D5C145: VCallAd Control_ID_
  loc_D5C148: FStAdFunc var_234
  loc_D5C14B: FLdPr var_234
  loc_D5C14E:  = frmPlanesdePago.TextBox.Text
  loc_D5C153: ILdRf var_21C
  loc_D5C156: CR8Str
  loc_D5C158: LitI2_Byte 0
  loc_D5C15A: CR8I2
  loc_D5C15B: GtR4
  loc_D5C15C: FLdI2 var_9E
  loc_D5C15F: CI4UI1
  loc_D5C160: CVarI4
  loc_D5C164: PopAdLdVar
  loc_D5C165: LitVarI4
  loc_D5C16D: PopAdLdVar
  loc_D5C16E: ImpAdLdRf MemVar_D93E08
  loc_D5C171: NewIfNullPr frmPlanesdePago
  loc_D5C174: VCallAd Control_ID_
  loc_D5C177: FStAdFunc var_238
  loc_D5C17A: FLdPr var_238
  loc_D5C17D: LateIdCallLdVar
  loc_D5C187: CStrVarTmp
  loc_D5C188: FStStrNoPop var_220
  loc_D5C18B: CR8Str
  loc_D5C18D: LitI2_Byte 0
  loc_D5C18F: CR8I2
  loc_D5C190: GtR4
  loc_D5C191: AndI4
  loc_D5C192: FFreeStr var_21C = ""
  loc_D5C199: FFreeAd var_234 = ""
  loc_D5C1A0: FFree1Var var_208 = ""
  loc_D5C1A3: BranchF loc_D5D549
  loc_D5C1A6: LitI2_Byte 0
  loc_D5C1A8: FStI2 var_DC
  loc_D5C1AB: LitStr "SELECT NumeApre, SaldCtct, RecaCtct FROM tmp_ctacteapremio"
  loc_D5C1AE: Call EjecutarRsCls1(from_stack_1v)
  loc_D5C1B3: FLdRfVar var_230
  loc_D5C1B6: FLdPr Me
  loc_D5C1B9: MemLdPr global_64
  loc_D5C1BC:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D5C1C1: ILdRf var_230
  loc_D5C1C4: LitI4 0
  loc_D5C1C9: GtI4
  loc_D5C1CA: BranchF loc_D5D549
  loc_D5C1CD: FLdRfVar var_4D6
  loc_D5C1D0: FLdPr Me
  loc_D5C1D3: MemLdPr global_64
  loc_D5C1D6:  = Me.EOF
  loc_D5C1DB: FLdI2 var_4D6
  loc_D5C1DE: NotI4
  loc_D5C1DF: BranchF loc_D5D549
  loc_D5C1E2: FLdI2 var_DC
  loc_D5C1E5: LitI2_Byte 1
  loc_D5C1E7: AddI2
  loc_D5C1E8: FStI2 var_DC
  loc_D5C1EB: FLdRfVar var_208
  loc_D5C1EE: FLdRfVar var_238
  loc_D5C1F1: LitVarStr var_1F8, "NumeApre"
  loc_D5C1F6: PopAdLdVar
  loc_D5C1F7: FLdRfVar var_234
  loc_D5C1FA: FLdPr Me
  loc_D5C1FD: MemLdPr global_64
  loc_D5C200:  = Me.Fields
  loc_D5C205: FLdPr var_234
  loc_D5C208: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C20D: FLdPr var_238
  loc_D5C210:  = Me.Value
  loc_D5C215: FLdRfVar var_218
  loc_D5C218: FLdRfVar var_2A0
  loc_D5C21B: LitVarStr var_24C, "SaldCtct"
  loc_D5C220: PopAdLdVar
  loc_D5C221: FLdRfVar var_290
  loc_D5C224: FLdPr Me
  loc_D5C227: MemLdPr global_64
  loc_D5C22A:  = Me.Fields
  loc_D5C22F: FLdPr var_290
  loc_D5C232: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C237: FLdPr var_2A0
  loc_D5C23A:  = Me.Value
  loc_D5C23F: FLdRfVar var_27C
  loc_D5C242: FLdRfVar var_2F4
  loc_D5C245: LitVarStr var_25C, "RecaCtct"
  loc_D5C24A: PopAdLdVar
  loc_D5C24B: FLdRfVar var_2D4
  loc_D5C24E: FLdPr Me
  loc_D5C251: MemLdPr global_64
  loc_D5C254:  = Me.Fields
  loc_D5C259: FLdPr var_2D4
  loc_D5C25C: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C261: FLdPr var_2F4
  loc_D5C264:  = Me.Value
  loc_D5C269: FLdRfVar var_2B0
  loc_D5C26C: FLdRfVar var_27C
  loc_D5C26F: CR4Var
  loc_D5C270: PopFPR8
  loc_D5C271: FLdRfVar var_218
  loc_D5C274: CR4Var
  loc_D5C275: PopFPR8
  loc_D5C276: FLdRfVar var_208
  loc_D5C279: CI4Var
  loc_D5C27B: FLdRfVar var_9C
  loc_D5C27E: NewIfNullPr clsapremio
  loc_D5C281: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D5C286: FLdRfVar var_2B0
  loc_D5C289: FStVar var_1B8
  loc_D5C28D: FFreeAd var_234 = "": var_290 = "": var_2D4 = "": var_238 = "": var_2A0 = ""
  loc_D5C29C: FFreeVar var_208 = "": var_218 = ""
  loc_D5C2A5: FLdRfVar var_4D6
  loc_D5C2A8: FLdRfVar var_208
  loc_D5C2AB: FLdRfVar var_238
  loc_D5C2AE: LitVarStr var_1F8, "NumeApre"
  loc_D5C2B3: PopAdLdVar
  loc_D5C2B4: FLdRfVar var_234
  loc_D5C2B7: FLdPr Me
  loc_D5C2BA: MemLdPr global_64
  loc_D5C2BD:  = Me.Fields
  loc_D5C2C2: FLdPr var_234
  loc_D5C2C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C2CA: FLdPr var_238
  loc_D5C2CD:  = Me.Value
  loc_D5C2D2: FLdRfVar var_208
  loc_D5C2D5: CI4Var
  loc_D5C2D7: FLdRfVar var_9C
  loc_D5C2DA: NewIfNullPr clsapremio
  loc_D5C2DD: from_stack_2v = clsapremio.BuscaInstanciaApremio(from_stack_1v)
  loc_D5C2E2: FLdI2 var_4D6
  loc_D5C2E5: FStI2 var_C6
  loc_D5C2E8: FFreeAd var_234 = ""
  loc_D5C2EF: FFree1Var var_208 = ""
  loc_D5C2F2: LitVarI2 var_1F8, 1
  loc_D5C2F7: PopAdLdVar
  loc_D5C2F8: FLdRfVar var_1B8
  loc_D5C2FB: VarIndexLdVar
  loc_D5C301: CR4Var
  loc_D5C302: FStFPR8 var_104
  loc_D5C305: FFree1Var var_208 = ""
  loc_D5C308: LitVarI2 var_1F8, 2
  loc_D5C30D: PopAdLdVar
  loc_D5C30E: FLdRfVar var_1B8
  loc_D5C311: VarIndexLdVar
  loc_D5C317: CR4Var
  loc_D5C318: FStFPR8 var_10C
  loc_D5C31B: FFree1Var var_208 = ""
  loc_D5C31E: LitVarI2 var_1F8, 3
  loc_D5C323: PopAdLdVar
  loc_D5C324: FLdRfVar var_1B8
  loc_D5C327: VarIndexLdVar
  loc_D5C32D: CR4Var
  loc_D5C32E: FStFPR8 var_114
  loc_D5C331: FFree1Var var_208 = ""
  loc_D5C334: LitVarI2 var_1F8, 4
  loc_D5C339: PopAdLdVar
  loc_D5C33A: FLdRfVar var_1B8
  loc_D5C33D: VarIndexLdVar
  loc_D5C343: CR4Var
  loc_D5C344: FStFPR8 var_11C
  loc_D5C347: FFree1Var var_208 = ""
  loc_D5C34A: LitVarI2 var_1F8, 5
  loc_D5C34F: PopAdLdVar
  loc_D5C350: FLdRfVar var_1B8
  loc_D5C353: VarIndexLdVar
  loc_D5C359: CR4Var
  loc_D5C35A: FStFPR8 var_124
  loc_D5C35D: FFree1Var var_208 = ""
  loc_D5C360: LitVarI2 var_1F8, 6
  loc_D5C365: PopAdLdVar
  loc_D5C366: FLdRfVar var_1B8
  loc_D5C369: VarIndexLdVar
  loc_D5C36F: CR4Var
  loc_D5C370: FStFPR8 var_12C
  loc_D5C373: FFree1Var var_208 = ""
  loc_D5C376: LitVarI2 var_1F8, 7
  loc_D5C37B: PopAdLdVar
  loc_D5C37C: FLdRfVar var_1B8
  loc_D5C37F: VarIndexLdVar
  loc_D5C385: CR4Var
  loc_D5C386: FStFPR8 var_134
  loc_D5C389: FFree1Var var_208 = ""
  loc_D5C38C: LitVarI2 var_1F8, 8
  loc_D5C391: PopAdLdVar
  loc_D5C392: FLdRfVar var_1B8
  loc_D5C395: VarIndexLdVar
  loc_D5C39B: CR4Var
  loc_D5C39C: FStFPR8 var_13C
  loc_D5C39F: FFree1Var var_208 = ""
  loc_D5C3A2: LitVarI2 var_1F8, 9
  loc_D5C3A7: PopAdLdVar
  loc_D5C3A8: FLdRfVar var_1B8
  loc_D5C3AB: VarIndexLdVar
  loc_D5C3B1: CR4Var
  loc_D5C3B2: FStFPR8 var_154
  loc_D5C3B5: FFree1Var var_208 = ""
  loc_D5C3B8: LitVarI2 var_1F8, 10
  loc_D5C3BD: PopAdLdVar
  loc_D5C3BE: FLdRfVar var_1B8
  loc_D5C3C1: VarIndexLdVar
  loc_D5C3C7: CR4Var
  loc_D5C3C8: FStFPR8 var_15C
  loc_D5C3CB: FFree1Var var_208 = ""
  loc_D5C3CE: LitVarI2 var_1F8, 11
  loc_D5C3D3: PopAdLdVar
  loc_D5C3D4: FLdRfVar var_1B8
  loc_D5C3D7: VarIndexLdVar
  loc_D5C3DD: CR4Var
  loc_D5C3DE: FStFPR8 var_164
  loc_D5C3E1: FFree1Var var_208 = ""
  loc_D5C3E4: FLdI2 var_9E
  loc_D5C3E7: CI4UI1
  loc_D5C3E8: CVarI4
  loc_D5C3EC: PopAdLdVar
  loc_D5C3ED: LitVarI4
  loc_D5C3F5: PopAdLdVar
  loc_D5C3F6: ImpAdLdRf MemVar_D93E08
  loc_D5C3F9: NewIfNullPr frmPlanesdePago
  loc_D5C3FC: VCallAd Control_ID_
  loc_D5C3FF: FStAdFunc var_234
  loc_D5C402: FLdPr var_234
  loc_D5C405: LateIdCallLdVar
  loc_D5C40F: CStrVarTmp
  loc_D5C410: FStStrNoPop var_21C
  loc_D5C413: CI2Str
  loc_D5C415: LitI2_Byte 0
  loc_D5C417: EqI2
  loc_D5C418: FFree1Str var_21C
  loc_D5C41B: FFree1Ad var_234
  loc_D5C41E: FFree1Var var_208 = ""
  loc_D5C421: BranchF loc_D5C4B4
  loc_D5C424: LitI2_Byte 0
  loc_D5C426: CR8I2
  loc_D5C427: FStFPR8 var_104
  loc_D5C42A: LitI4 2
  loc_D5C42F: FLdRfVar var_10C
  loc_D5C432: CVarRef
  loc_D5C437: FLdRfVar var_208
  loc_D5C43A: ImpAdCallFPR4  = Round(, )
  loc_D5C43F: FLdRfVar var_208
  loc_D5C442: CR4Var
  loc_D5C443: FStFPR8 var_10C
  loc_D5C446: FFree1Var var_208 = ""
  loc_D5C449: LitI4 2
  loc_D5C44E: FLdRfVar var_114
  loc_D5C451: CVarRef
  loc_D5C456: FLdRfVar var_208
  loc_D5C459: ImpAdCallFPR4  = Round(, )
  loc_D5C45E: FLdRfVar var_208
  loc_D5C461: CR4Var
  loc_D5C462: FStFPR8 var_114
  loc_D5C465: FFree1Var var_208 = ""
  loc_D5C468: LitI4 2
  loc_D5C46D: FLdRfVar var_11C
  loc_D5C470: CVarRef
  loc_D5C475: FLdRfVar var_208
  loc_D5C478: ImpAdCallFPR4  = Round(, )
  loc_D5C47D: FLdRfVar var_208
  loc_D5C480: CR4Var
  loc_D5C481: FStFPR8 var_11C
  loc_D5C484: FFree1Var var_208 = ""
  loc_D5C487: LitI2_Byte 0
  loc_D5C489: CR8I2
  loc_D5C48A: FStFPR8 var_124
  loc_D5C48D: LitI2_Byte 0
  loc_D5C48F: CR8I2
  loc_D5C490: FStFPR8 var_12C
  loc_D5C493: LitI2_Byte 0
  loc_D5C495: CR8I2
  loc_D5C496: FStFPR8 var_134
  loc_D5C499: LitI2_Byte 0
  loc_D5C49B: CR8I2
  loc_D5C49C: FStFPR8 var_13C
  loc_D5C49F: LitI2_Byte 0
  loc_D5C4A1: CR8I2
  loc_D5C4A2: FStFPR8 var_154
  loc_D5C4A5: LitI2_Byte 0
  loc_D5C4A7: CR8I2
  loc_D5C4A8: FStFPR8 var_15C
  loc_D5C4AB: LitI2_Byte 0
  loc_D5C4AD: CR8I2
  loc_D5C4AE: FStFPR8 var_164
  loc_D5C4B1: Branch loc_D5C72E
  loc_D5C4B4: FLdI2 var_9E
  loc_D5C4B7: CI4UI1
  loc_D5C4B8: CVarI4
  loc_D5C4BC: PopAdLdVar
  loc_D5C4BD: LitVarI4
  loc_D5C4C5: PopAdLdVar
  loc_D5C4C6: ImpAdLdRf MemVar_D93E08
  loc_D5C4C9: NewIfNullPr frmPlanesdePago
  loc_D5C4CC: VCallAd Control_ID_
  loc_D5C4CF: FStAdFunc var_234
  loc_D5C4D2: FLdPr var_234
  loc_D5C4D5: LateIdCallLdVar
  loc_D5C4DF: CStrVarTmp
  loc_D5C4E0: FStStrNoPop var_21C
  loc_D5C4E3: CI2Str
  loc_D5C4E5: LitI2_Byte 0
  loc_D5C4E7: GtI2
  loc_D5C4E8: FFree1Str var_21C
  loc_D5C4EB: FFree1Ad var_234
  loc_D5C4EE: FFree1Var var_208 = ""
  loc_D5C4F1: BranchF loc_D5C72E
  loc_D5C4F4: FLdRfVar var_21C
  loc_D5C4F7: ImpAdLdRf MemVar_D93E08
  loc_D5C4FA: NewIfNullPr frmPlanesdePago
  loc_D5C4FD: VCallAd Control_ID_
  loc_D5C500: FStAdFunc var_234
  loc_D5C503: FLdPr var_234
  loc_D5C506:  = frmPlanesdePago.TextBox.Text
  loc_D5C50B: LitI4 2
  loc_D5C510: FLdFPR8 var_104
  loc_D5C513: ILdRf var_21C
  loc_D5C516: CR8Str
  loc_D5C518: DivR8
  loc_D5C519: CVarR8
  loc_D5C51D: FLdRfVar var_218
  loc_D5C520: ImpAdCallFPR4  = Round(, )
  loc_D5C525: FLdRfVar var_218
  loc_D5C528: CR4Var
  loc_D5C529: FStFPR8 var_104
  loc_D5C52C: FFree1Str var_21C
  loc_D5C52F: FFree1Ad var_234
  loc_D5C532: FFreeVar var_208 = ""
  loc_D5C539: LitI2_Byte 0
  loc_D5C53B: CR8I2
  loc_D5C53C: FStFPR8 var_10C
  loc_D5C53F: LitI2_Byte 0
  loc_D5C541: CR8I2
  loc_D5C542: FStFPR8 var_114
  loc_D5C545: LitI2_Byte 0
  loc_D5C547: CR8I2
  loc_D5C548: FStFPR8 var_11C
  loc_D5C54B: FLdRfVar var_21C
  loc_D5C54E: ImpAdLdRf MemVar_D93E08
  loc_D5C551: NewIfNullPr frmPlanesdePago
  loc_D5C554: VCallAd Control_ID_
  loc_D5C557: FStAdFunc var_234
  loc_D5C55A: FLdPr var_234
  loc_D5C55D:  = frmPlanesdePago.TextBox.Text
  loc_D5C562: LitI4 2
  loc_D5C567: FLdFPR8 var_124
  loc_D5C56A: ILdRf var_21C
  loc_D5C56D: CR8Str
  loc_D5C56F: DivR8
  loc_D5C570: CVarR8
  loc_D5C574: FLdRfVar var_218
  loc_D5C577: ImpAdCallFPR4  = Round(, )
  loc_D5C57C: FLdRfVar var_218
  loc_D5C57F: CR4Var
  loc_D5C580: FStFPR8 var_124
  loc_D5C583: FFree1Str var_21C
  loc_D5C586: FFree1Ad var_234
  loc_D5C589: FFreeVar var_208 = ""
  loc_D5C590: FLdRfVar var_21C
  loc_D5C593: ImpAdLdRf MemVar_D93E08
  loc_D5C596: NewIfNullPr frmPlanesdePago
  loc_D5C599: VCallAd Control_ID_
  loc_D5C59C: FStAdFunc var_234
  loc_D5C59F: FLdPr var_234
  loc_D5C5A2:  = frmPlanesdePago.TextBox.Text
  loc_D5C5A7: LitI4 2
  loc_D5C5AC: FLdFPR8 var_12C
  loc_D5C5AF: ILdRf var_21C
  loc_D5C5B2: CR8Str
  loc_D5C5B4: DivR8
  loc_D5C5B5: CVarR8
  loc_D5C5B9: FLdRfVar var_218
  loc_D5C5BC: ImpAdCallFPR4  = Round(, )
  loc_D5C5C1: FLdRfVar var_218
  loc_D5C5C4: CR4Var
  loc_D5C5C5: FStFPR8 var_12C
  loc_D5C5C8: FFree1Str var_21C
  loc_D5C5CB: FFree1Ad var_234
  loc_D5C5CE: FFreeVar var_208 = ""
  loc_D5C5D5: FLdRfVar var_21C
  loc_D5C5D8: ImpAdLdRf MemVar_D93E08
  loc_D5C5DB: NewIfNullPr frmPlanesdePago
  loc_D5C5DE: VCallAd Control_ID_
  loc_D5C5E1: FStAdFunc var_234
  loc_D5C5E4: FLdPr var_234
  loc_D5C5E7:  = frmPlanesdePago.TextBox.Text
  loc_D5C5EC: LitI4 2
  loc_D5C5F1: FLdFPR8 var_134
  loc_D5C5F4: ILdRf var_21C
  loc_D5C5F7: CR8Str
  loc_D5C5F9: DivR8
  loc_D5C5FA: CVarR8
  loc_D5C5FE: FLdRfVar var_218
  loc_D5C601: ImpAdCallFPR4  = Round(, )
  loc_D5C606: FLdRfVar var_218
  loc_D5C609: CR4Var
  loc_D5C60A: FStFPR8 var_134
  loc_D5C60D: FFree1Str var_21C
  loc_D5C610: FFree1Ad var_234
  loc_D5C613: FFreeVar var_208 = ""
  loc_D5C61A: FLdRfVar var_21C
  loc_D5C61D: ImpAdLdRf MemVar_D93E08
  loc_D5C620: NewIfNullPr frmPlanesdePago
  loc_D5C623: VCallAd Control_ID_
  loc_D5C626: FStAdFunc var_234
  loc_D5C629: FLdPr var_234
  loc_D5C62C:  = frmPlanesdePago.TextBox.Text
  loc_D5C631: LitI4 2
  loc_D5C636: FLdFPR8 var_13C
  loc_D5C639: ILdRf var_21C
  loc_D5C63C: CR8Str
  loc_D5C63E: DivR8
  loc_D5C63F: CVarR8
  loc_D5C643: FLdRfVar var_218
  loc_D5C646: ImpAdCallFPR4  = Round(, )
  loc_D5C64B: FLdRfVar var_218
  loc_D5C64E: CR4Var
  loc_D5C64F: FStFPR8 var_13C
  loc_D5C652: FFree1Str var_21C
  loc_D5C655: FFree1Ad var_234
  loc_D5C658: FFreeVar var_208 = ""
  loc_D5C65F: FLdRfVar var_21C
  loc_D5C662: ImpAdLdRf MemVar_D93E08
  loc_D5C665: NewIfNullPr frmPlanesdePago
  loc_D5C668: VCallAd Control_ID_
  loc_D5C66B: FStAdFunc var_234
  loc_D5C66E: FLdPr var_234
  loc_D5C671:  = frmPlanesdePago.TextBox.Text
  loc_D5C676: LitI4 2
  loc_D5C67B: FLdFPR8 var_154
  loc_D5C67E: ILdRf var_21C
  loc_D5C681: CR8Str
  loc_D5C683: DivR8
  loc_D5C684: CVarR8
  loc_D5C688: FLdRfVar var_218
  loc_D5C68B: ImpAdCallFPR4  = Round(, )
  loc_D5C690: FLdRfVar var_218
  loc_D5C693: CR4Var
  loc_D5C694: FStFPR8 var_154
  loc_D5C697: FFree1Str var_21C
  loc_D5C69A: FFree1Ad var_234
  loc_D5C69D: FFreeVar var_208 = ""
  loc_D5C6A4: FLdRfVar var_21C
  loc_D5C6A7: ImpAdLdRf MemVar_D93E08
  loc_D5C6AA: NewIfNullPr frmPlanesdePago
  loc_D5C6AD: VCallAd Control_ID_
  loc_D5C6B0: FStAdFunc var_234
  loc_D5C6B3: FLdPr var_234
  loc_D5C6B6:  = frmPlanesdePago.TextBox.Text
  loc_D5C6BB: LitI4 2
  loc_D5C6C0: FLdFPR8 var_15C
  loc_D5C6C3: ILdRf var_21C
  loc_D5C6C6: CR8Str
  loc_D5C6C8: DivR8
  loc_D5C6C9: CVarR8
  loc_D5C6CD: FLdRfVar var_218
  loc_D5C6D0: ImpAdCallFPR4  = Round(, )
  loc_D5C6D5: FLdRfVar var_218
  loc_D5C6D8: CR4Var
  loc_D5C6D9: FStFPR8 var_15C
  loc_D5C6DC: FFree1Str var_21C
  loc_D5C6DF: FFree1Ad var_234
  loc_D5C6E2: FFreeVar var_208 = ""
  loc_D5C6E9: FLdRfVar var_21C
  loc_D5C6EC: ImpAdLdRf MemVar_D93E08
  loc_D5C6EF: NewIfNullPr frmPlanesdePago
  loc_D5C6F2: VCallAd Control_ID_
  loc_D5C6F5: FStAdFunc var_234
  loc_D5C6F8: FLdPr var_234
  loc_D5C6FB:  = frmPlanesdePago.TextBox.Text
  loc_D5C700: LitI4 2
  loc_D5C705: FLdFPR8 var_164
  loc_D5C708: ILdRf var_21C
  loc_D5C70B: CR8Str
  loc_D5C70D: DivR8
  loc_D5C70E: CVarR8
  loc_D5C712: FLdRfVar var_218
  loc_D5C715: ImpAdCallFPR4  = Round(, )
  loc_D5C71A: FLdRfVar var_218
  loc_D5C71D: CR4Var
  loc_D5C71E: FStFPR8 var_164
  loc_D5C721: FFree1Str var_21C
  loc_D5C724: FFree1Ad var_234
  loc_D5C727: FFreeVar var_208 = ""
  loc_D5C72E: FLdFPR8 var_19C
  loc_D5C731: FLdFPR8 var_104
  loc_D5C734: AddR8
  loc_D5C735: FLdFPR8 var_10C
  loc_D5C738: AddR8
  loc_D5C739: FLdFPR8 var_114
  loc_D5C73C: AddR8
  loc_D5C73D: FLdFPR8 var_11C
  loc_D5C740: AddR8
  loc_D5C741: FLdFPR8 var_124
  loc_D5C744: AddR8
  loc_D5C745: FLdFPR8 var_12C
  loc_D5C748: AddR8
  loc_D5C749: FLdFPR8 var_134
  loc_D5C74C: AddR8
  loc_D5C74D: FLdFPR8 var_13C
  loc_D5C750: AddR8
  loc_D5C751: FLdFPR8 var_154
  loc_D5C754: AddR8
  loc_D5C755: FLdFPR8 var_15C
  loc_D5C758: AddR8
  loc_D5C759: FLdFPR8 var_164
  loc_D5C75C: AddR8
  loc_D5C75D: FStFPR8 var_19C
  loc_D5C760: FLdI2 var_DC
  loc_D5C763: CI4UI1
  loc_D5C764: FLdRfVar var_230
  loc_D5C767: FLdPr Me
  loc_D5C76A: MemLdPr global_64
  loc_D5C76D:  = Me.RecordCount
  loc_D5C772: ILdRf var_230
  loc_D5C775: EqI4
  loc_D5C776: BranchF loc_D5C8DD
  loc_D5C779: FLdI2 var_9E
  loc_D5C77C: CI4UI1
  loc_D5C77D: CVarI4
  loc_D5C781: PopAdLdVar
  loc_D5C782: LitVarI4
  loc_D5C78A: PopAdLdVar
  loc_D5C78B: ImpAdLdRf MemVar_D93E08
  loc_D5C78E: NewIfNullPr frmPlanesdePago
  loc_D5C791: VCallAd Control_ID_
  loc_D5C794: FStAdFunc var_234
  loc_D5C797: FLdPr var_234
  loc_D5C79A: LateIdCallLdVar
  loc_D5C7A4: PopAd
  loc_D5C7A6: FLdFPR8 var_19C
  loc_D5C7A9: FLdRfVar var_208
  loc_D5C7AC: CStrVarTmp
  loc_D5C7AD: FStStrNoPop var_21C
  loc_D5C7B0: CR8Str
  loc_D5C7B2: NeR8
  loc_D5C7B3: FFree1Str var_21C
  loc_D5C7B6: FFree1Ad var_234
  loc_D5C7B9: FFree1Var var_208 = ""
  loc_D5C7BC: BranchF loc_D5C8DD
  loc_D5C7BF: FLdI2 var_9E
  loc_D5C7C2: CI4UI1
  loc_D5C7C3: CVarI4
  loc_D5C7C7: PopAdLdVar
  loc_D5C7C8: LitVarI4
  loc_D5C7D0: PopAdLdVar
  loc_D5C7D1: ImpAdLdRf MemVar_D93E08
  loc_D5C7D4: NewIfNullPr frmPlanesdePago
  loc_D5C7D7: VCallAd Control_ID_
  loc_D5C7DA: FStAdFunc var_234
  loc_D5C7DD: FLdPr var_234
  loc_D5C7E0: LateIdCallLdVar
  loc_D5C7EA: CStrVarTmp
  loc_D5C7EB: FStStrNoPop var_21C
  loc_D5C7EE: CR8Str
  loc_D5C7F0: FLdFPR8 var_19C
  loc_D5C7F3: GtR4
  loc_D5C7F4: FFree1Str var_21C
  loc_D5C7F7: FFree1Ad var_234
  loc_D5C7FA: FFree1Var var_208 = ""
  loc_D5C7FD: BranchF loc_D5C84D
  loc_D5C800: FLdI2 var_9E
  loc_D5C803: CI4UI1
  loc_D5C804: CVarI4
  loc_D5C808: PopAdLdVar
  loc_D5C809: LitVarI4
  loc_D5C811: PopAdLdVar
  loc_D5C812: ImpAdLdRf MemVar_D93E08
  loc_D5C815: NewIfNullPr frmPlanesdePago
  loc_D5C818: VCallAd Control_ID_
  loc_D5C81B: FStAdFunc var_234
  loc_D5C81E: FLdPr var_234
  loc_D5C821: LateIdCallLdVar
  loc_D5C82B: PopAd
  loc_D5C82D: FLdFPR8 var_104
  loc_D5C830: FLdRfVar var_208
  loc_D5C833: CStrVarTmp
  loc_D5C834: FStStrNoPop var_21C
  loc_D5C837: CR8Str
  loc_D5C839: FLdFPR8 var_19C
  loc_D5C83C: SubR4
  loc_D5C83D: AddR8
  loc_D5C83E: FStFPR8 var_104
  loc_D5C841: FFree1Str var_21C
  loc_D5C844: FFree1Ad var_234
  loc_D5C847: FFree1Var var_208 = ""
  loc_D5C84A: Branch loc_D5C8DD
  loc_D5C84D: FLdI2 var_9E
  loc_D5C850: CI4UI1
  loc_D5C851: CVarI4
  loc_D5C855: PopAdLdVar
  loc_D5C856: LitVarI4
  loc_D5C85E: PopAdLdVar
  loc_D5C85F: ImpAdLdRf MemVar_D93E08
  loc_D5C862: NewIfNullPr frmPlanesdePago
  loc_D5C865: VCallAd Control_ID_
  loc_D5C868: FStAdFunc var_234
  loc_D5C86B: FLdPr var_234
  loc_D5C86E: LateIdCallLdVar
  loc_D5C878: PopAd
  loc_D5C87A: FLdFPR8 var_19C
  loc_D5C87D: FLdRfVar var_208
  loc_D5C880: CStrVarTmp
  loc_D5C881: FStStrNoPop var_21C
  loc_D5C884: CR8Str
  loc_D5C886: GtR4
  loc_D5C887: FFree1Str var_21C
  loc_D5C88A: FFree1Ad var_234
  loc_D5C88D: FFree1Var var_208 = ""
  loc_D5C890: BranchF loc_D5C8DD
  loc_D5C893: FLdI2 var_9E
  loc_D5C896: CI4UI1
  loc_D5C897: CVarI4
  loc_D5C89B: PopAdLdVar
  loc_D5C89C: LitVarI4
  loc_D5C8A4: PopAdLdVar
  loc_D5C8A5: ImpAdLdRf MemVar_D93E08
  loc_D5C8A8: NewIfNullPr frmPlanesdePago
  loc_D5C8AB: VCallAd Control_ID_
  loc_D5C8AE: FStAdFunc var_234
  loc_D5C8B1: FLdPr var_234
  loc_D5C8B4: LateIdCallLdVar
  loc_D5C8BE: PopAd
  loc_D5C8C0: FLdFPR8 var_104
  loc_D5C8C3: FLdFPR8 var_19C
  loc_D5C8C6: FLdRfVar var_208
  loc_D5C8C9: CStrVarTmp
  loc_D5C8CA: FStStrNoPop var_21C
  loc_D5C8CD: CR8Str
  loc_D5C8CF: SubR4
  loc_D5C8D0: SubR4
  loc_D5C8D1: FStFPR8 var_104
  loc_D5C8D4: FFree1Str var_21C
  loc_D5C8D7: FFree1Ad var_234
  loc_D5C8DA: FFree1Var var_208 = ""
  loc_D5C8DD: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua)"
  loc_D5C8E0: LitStr " VALUES ("
  loc_D5C8E3: ConcatStr
  loc_D5C8E4: FStStrNoPop var_21C
  loc_D5C8E7: FLdI2 var_AA
  loc_D5C8EA: CStrUI1
  loc_D5C8EC: FStStrNoPop var_220
  loc_D5C8EF: ConcatStr
  loc_D5C8F0: FStStrNoPop var_224
  loc_D5C8F3: LitStr ","
  loc_D5C8F6: ConcatStr
  loc_D5C8F7: FStStrNoPop var_228
  loc_D5C8FA: ILdRf var_B0
  loc_D5C8FD: CStrI4
  loc_D5C8FF: FStStrNoPop var_22C
  loc_D5C902: ConcatStr
  loc_D5C903: FStStrNoPop var_280
  loc_D5C906: LitStr ","
  loc_D5C909: ConcatStr
  loc_D5C90A: CVarStr var_218
  loc_D5C90D: FLdRfVar var_208
  loc_D5C910: FLdRfVar var_238
  loc_D5C913: LitVarStr var_1F8, "NumeApre"
  loc_D5C918: PopAdLdVar
  loc_D5C919: FLdRfVar var_234
  loc_D5C91C: FLdPr Me
  loc_D5C91F: MemLdPr global_64
  loc_D5C922:  = frmPlanesdePago.Recordset15.Fields
  loc_D5C927: FLdPr var_234
  loc_D5C92A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5C92F: FLdPr var_238
  loc_D5C932:  = Me.Value
  loc_D5C937: FLdRfVar var_208
  loc_D5C93A: ConcatVar var_27C
  loc_D5C93E: LitVarStr var_24C, ","
  loc_D5C943: ConcatVar var_2B0
  loc_D5C947: FLdI2 var_C6
  loc_D5C94A: CVarI2 var_25C
  loc_D5C94D: ConcatVar var_2E4
  loc_D5C951: LitVarStr var_26C, ","
  loc_D5C956: ConcatVar var_330
  loc_D5C95A: ILdRf var_B4
  loc_D5C95D: CVarI4
  loc_D5C961: ConcatVar var_390
  loc_D5C965: LitVarStr var_2D0, ","
  loc_D5C96A: ConcatVar var_3F0
  loc_D5C96E: FLdI2 var_9E
  loc_D5C971: CI4UI1
  loc_D5C972: CVarI4
  loc_D5C976: PopAdLdVar
  loc_D5C977: LitVarI4
  loc_D5C97F: PopAdLdVar
  loc_D5C980: ImpAdLdRf MemVar_D93E08
  loc_D5C983: NewIfNullPr frmPlanesdePago
  loc_D5C986: VCallAd Control_ID_
  loc_D5C989: FStAdFunc var_290
  loc_D5C98C: FLdPr var_290
  loc_D5C98F: LateIdCallLdVar
  loc_D5C999: CStrVarTmp
  loc_D5C99A: CVarStr var_64C
  loc_D5C99D: ConcatVar var_69C
  loc_D5C9A1: LitVarStr var_36C, ",'"
  loc_D5C9A6: ConcatVar var_6AC
  loc_D5C9AA: LitI4 1
  loc_D5C9AF: LitI4 1
  loc_D5C9B4: LitVarStr var_3AC, "yyyy-mm-dd"
  loc_D5C9B9: FStVarCopyObj var_6BC
  loc_D5C9BC: FLdRfVar var_6BC
  loc_D5C9BF: FLdRfVar var_A8
  loc_D5C9C2: CVarRef
  loc_D5C9C7: ImpAdCallI2 Format$(, )
  loc_D5C9CC: CVarStr var_6CC
  loc_D5C9CF: ConcatVar var_6DC
  loc_D5C9D3: LitVarStr var_3BC, "',NULL,'Emitido',"
  loc_D5C9D8: ConcatVar var_6EC
  loc_D5C9DC: LitI4 0
  loc_D5C9E1: LitI4 -1
  loc_D5C9E6: LitI4 1
  loc_D5C9EB: LitStr "."
  loc_D5C9EE: LitStr ","
  loc_D5C9F1: FLdFPR8 var_104
  loc_D5C9F4: CStrR8
  loc_D5C9F6: FStStrNoPop var_284
  loc_D5C9F9: ImpAdCallI2 Replace(, , , , , )
  loc_D5C9FE: CVarStr var_6FC
  loc_D5CA01: ConcatVar var_70C
  loc_D5CA05: LitVarStr var_3CC, ","
  loc_D5CA0A: ConcatVar var_71C
  loc_D5CA0E: LitI4 0
  loc_D5CA13: LitI4 -1
  loc_D5CA18: LitI4 1
  loc_D5CA1D: LitStr "."
  loc_D5CA20: LitStr ","
  loc_D5CA23: FLdFPR8 var_10C
  loc_D5CA26: CStrR8
  loc_D5CA28: FStStrNoPop var_288
  loc_D5CA2B: ImpAdCallI2 Replace(, , , , , )
  loc_D5CA30: CVarStr var_72C
  loc_D5CA33: ConcatVar var_73C
  loc_D5CA37: LitVarStr var_3DC, ","
  loc_D5CA3C: ConcatVar var_74C
  loc_D5CA40: LitI4 0
  loc_D5CA45: LitI4 -1
  loc_D5CA4A: LitI4 1
  loc_D5CA4F: LitStr "."
  loc_D5CA52: LitStr ","
  loc_D5CA55: FLdFPR8 var_114
  loc_D5CA58: CStrR8
  loc_D5CA5A: FStStrNoPop var_28C
  loc_D5CA5D: ImpAdCallI2 Replace(, , , , , )
  loc_D5CA62: CVarStr var_75C
  loc_D5CA65: ConcatVar var_78C
  loc_D5CA69: LitVarStr var_52C, ","
  loc_D5CA6E: ConcatVar var_79C
  loc_D5CA72: LitI4 0
  loc_D5CA77: LitI4 -1
  loc_D5CA7C: LitI4 1
  loc_D5CA81: LitStr "."
  loc_D5CA84: LitStr ","
  loc_D5CA87: FLdFPR8 var_11C
  loc_D5CA8A: CStrR8
  loc_D5CA8C: FStStrNoPop var_294
  loc_D5CA8F: ImpAdCallI2 Replace(, , , , , )
  loc_D5CA94: CVarStr var_7AC
  loc_D5CA97: ConcatVar var_7CC
  loc_D5CA9B: LitVarStr var_53C, ","
  loc_D5CAA0: ConcatVar var_81C
  loc_D5CAA4: LitI4 0
  loc_D5CAA9: LitI4 -1
  loc_D5CAAE: LitI4 1
  loc_D5CAB3: LitStr "."
  loc_D5CAB6: LitStr ","
  loc_D5CAB9: FLdFPR8 var_124
  loc_D5CABC: CStrR8
  loc_D5CABE: FStStrNoPop var_298
  loc_D5CAC1: ImpAdCallI2 Replace(, , , , , )
  loc_D5CAC6: CVarStr var_82C
  loc_D5CAC9: ConcatVar var_83C
  loc_D5CACD: LitVarStr var_54C, ","
  loc_D5CAD2: ConcatVar var_85C
  loc_D5CAD6: LitI4 0
  loc_D5CADB: LitI4 -1
  loc_D5CAE0: LitI4 1
  loc_D5CAE5: LitStr "."
  loc_D5CAE8: LitStr ","
  loc_D5CAEB: FLdFPR8 var_12C
  loc_D5CAEE: CStrR8
  loc_D5CAF0: FStStrNoPop var_29C
  loc_D5CAF3: ImpAdCallI2 Replace(, , , , , )
  loc_D5CAF8: CVarStr var_8AC
  loc_D5CAFB: ConcatVar var_8BC
  loc_D5CAFF: LitVarStr var_55C, ","
  loc_D5CB04: ConcatVar var_8CC
  loc_D5CB08: LitI4 0
  loc_D5CB0D: LitI4 -1
  loc_D5CB12: LitI4 1
  loc_D5CB17: LitStr "."
  loc_D5CB1A: LitStr ","
  loc_D5CB1D: FLdFPR8 var_134
  loc_D5CB20: CStrR8
  loc_D5CB22: FStStrNoPop var_2E8
  loc_D5CB25: ImpAdCallI2 Replace(, , , , , )
  loc_D5CB2A: CVarStr var_8EC
  loc_D5CB2D: ConcatVar var_93C
  loc_D5CB31: LitVarStr var_56C, ","
  loc_D5CB36: ConcatVar var_94C
  loc_D5CB3A: LitI4 0
  loc_D5CB3F: LitI4 -1
  loc_D5CB44: LitI4 1
  loc_D5CB49: LitStr "."
  loc_D5CB4C: LitStr ","
  loc_D5CB4F: FLdFPR8 var_13C
  loc_D5CB52: CStrR8
  loc_D5CB54: FStStrNoPop var_2EC
  loc_D5CB57: ImpAdCallI2 Replace(, , , , , )
  loc_D5CB5C: CVarStr var_95C
  loc_D5CB5F: ConcatVar var_97C
  loc_D5CB63: LitVarStr var_57C, ","
  loc_D5CB68: ConcatVar var_9CC
  loc_D5CB6C: LitI4 0
  loc_D5CB71: LitI4 -1
  loc_D5CB76: LitI4 1
  loc_D5CB7B: LitStr "."
  loc_D5CB7E: LitStr ","
  loc_D5CB81: FLdFPR8 var_154
  loc_D5CB84: CStrR8
  loc_D5CB86: FStStrNoPop var_2F0
  loc_D5CB89: ImpAdCallI2 Replace(, , , , , )
  loc_D5CB8E: CVarStr var_9DC
  loc_D5CB91: ConcatVar var_9EC
  loc_D5CB95: LitVarStr var_58C, ","
  loc_D5CB9A: ConcatVar var_A0C
  loc_D5CB9E: LitI4 0
  loc_D5CBA3: LitI4 -1
  loc_D5CBA8: LitI4 1
  loc_D5CBAD: LitStr "."
  loc_D5CBB0: LitStr ","
  loc_D5CBB3: FLdFPR8 var_15C
  loc_D5CBB6: CStrR8
  loc_D5CBB8: FStStrNoPop var_2F8
  loc_D5CBBB: ImpAdCallI2 Replace(, , , , , )
  loc_D5CBC0: CVarStr var_A2C
  loc_D5CBC3: ConcatVar var_A4C
  loc_D5CBC7: LitVarStr var_59C, ","
  loc_D5CBCC: ConcatVar var_A5C
  loc_D5CBD0: LitI4 0
  loc_D5CBD5: LitI4 -1
  loc_D5CBDA: LitI4 1
  loc_D5CBDF: LitStr "."
  loc_D5CBE2: LitStr ","
  loc_D5CBE5: FLdFPR8 var_164
  loc_D5CBE8: CStrR8
  loc_D5CBEA: FStStrNoPop var_2FC
  loc_D5CBED: ImpAdCallI2 Replace(, , , , , )
  loc_D5CBF2: CVarStr var_A6C
  loc_D5CBF5: ConcatVar var_A7C
  loc_D5CBF9: LitVarStr var_5AC, ",'"
  loc_D5CBFE: ConcatVar var_A8C
  loc_D5CC02: ImpAdLdI4 MemVar_D9302C
  loc_D5CC05: CVarStr var_5BC
  loc_D5CC08: ConcatVar var_A9C
  loc_D5CC0C: LitVarStr var_5CC, "');"
  loc_D5CC11: ConcatVar var_AAC
  loc_D5CC15: CStrVarVal var_300
  loc_D5CC19: Call EjecutarRsCls(from_stack_1v)
  loc_D5CC1E: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2FC = ""
  loc_D5CC45: FFreeAd var_234 = "": var_238 = ""
  loc_D5CC4E: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A5C = "": var_A6C = "": var_A7C = "": var_A8C = "": var_A9C = "": var_AAC = "": var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_5FC = "": var_3F0 = "": var_64C = "": var_69C = "": var_6BC = "": var_6AC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5CCB7: LitStr " INSERT INTO faciapre (CodiFapa, CuotDefa, NumeApre, CodiInju, FealFaap, CoadFaap, ReseFaap, ApleFaap, DefiFaap, HoreFaap, HoofFaap, MoreFaap, MoofFaap, IcomFaap, IrecFaap, IofiFaap, CodiUsua) "
  loc_D5CCBA: LitStr " VALUES ("
  loc_D5CCBD: ConcatStr
  loc_D5CCBE: FStStrNoPop var_21C
  loc_D5CCC1: ILdRf var_B4
  loc_D5CCC4: CStrI4
  loc_D5CCC6: FStStrNoPop var_220
  loc_D5CCC9: ConcatStr
  loc_D5CCCA: FStStrNoPop var_224
  loc_D5CCCD: LitStr ","
  loc_D5CCD0: ConcatStr
  loc_D5CCD1: FStStrNoPop var_228
  loc_D5CCD4: FLdI2 var_9E
  loc_D5CCD7: CI4UI1
  loc_D5CCD8: CVarI4
  loc_D5CCDC: PopAdLdVar
  loc_D5CCDD: LitVarI4
  loc_D5CCE5: PopAdLdVar
  loc_D5CCE6: ImpAdLdRf MemVar_D93E08
  loc_D5CCE9: NewIfNullPr frmPlanesdePago
  loc_D5CCEC: VCallAd Control_ID_
  loc_D5CCEF: FStAdFunc var_234
  loc_D5CCF2: FLdPr var_234
  loc_D5CCF5: LateIdCallLdVar
  loc_D5CCFF: CStrVarTmp
  loc_D5CD00: FStStrNoPop var_22C
  loc_D5CD03: ConcatStr
  loc_D5CD04: FStStrNoPop var_280
  loc_D5CD07: LitStr ","
  loc_D5CD0A: ConcatStr
  loc_D5CD0B: CVarStr var_27C
  loc_D5CD0E: FLdRfVar var_218
  loc_D5CD11: FLdRfVar var_290
  loc_D5CD14: LitVarStr var_2C0, "NumeApre"
  loc_D5CD19: PopAdLdVar
  loc_D5CD1A: FLdRfVar var_238
  loc_D5CD1D: FLdPr Me
  loc_D5CD20: MemLdPr global_64
  loc_D5CD23:  = frmPlanesdePago.Recordset15.Fields
  loc_D5CD28: FLdPr var_238
  loc_D5CD2B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5CD30: FLdPr var_290
  loc_D5CD33:  = Me.Value
  loc_D5CD38: FLdRfVar var_218
  loc_D5CD3B: ConcatVar var_2B0
  loc_D5CD3F: LitVarStr var_2D0, ","
  loc_D5CD44: ConcatVar var_2E4
  loc_D5CD48: FLdI2 var_C6
  loc_D5CD4B: CVarI2 var_310
  loc_D5CD4E: ConcatVar var_330
  loc_D5CD52: LitVarStr var_320, ",'"
  loc_D5CD57: ConcatVar var_390
  loc_D5CD5B: LitI4 1
  loc_D5CD60: LitI4 1
  loc_D5CD65: LitVarStr var_35C, "yyyy-mm-dd"
  loc_D5CD6A: FStVarCopyObj var_3F0
  loc_D5CD6D: FLdRfVar var_3F0
  loc_D5CD70: FLdRfVar var_A8
  loc_D5CD73: CVarRef
  loc_D5CD78: ImpAdCallI2 Format$(, )
  loc_D5CD7D: CVarStr var_5FC
  loc_D5CD80: ConcatVar var_64C
  loc_D5CD84: LitVarStr var_36C, "',"
  loc_D5CD89: ConcatVar var_69C
  loc_D5CD8D: LitI4 0
  loc_D5CD92: LitI4 -1
  loc_D5CD97: LitI4 1
  loc_D5CD9C: LitStr "."
  loc_D5CD9F: LitStr ","
  loc_D5CDA2: FLdFPR8 var_104
  loc_D5CDA5: CStrR8
  loc_D5CDA7: FStStrNoPop var_284
  loc_D5CDAA: ImpAdCallI2 Replace(, , , , , )
  loc_D5CDAF: CVarStr var_6AC
  loc_D5CDB2: ConcatVar var_6BC
  loc_D5CDB6: LitVarStr var_37C, ","
  loc_D5CDBB: ConcatVar var_6CC
  loc_D5CDBF: LitI4 0
  loc_D5CDC4: LitI4 -1
  loc_D5CDC9: LitI4 1
  loc_D5CDCE: LitStr "."
  loc_D5CDD1: LitStr ","
  loc_D5CDD4: FLdFPR8 var_10C
  loc_D5CDD7: CStrR8
  loc_D5CDD9: FStStrNoPop var_288
  loc_D5CDDC: ImpAdCallI2 Replace(, , , , , )
  loc_D5CDE1: CVarStr var_6DC
  loc_D5CDE4: ConcatVar var_6EC
  loc_D5CDE8: LitVarStr var_3AC, ","
  loc_D5CDED: ConcatVar var_6FC
  loc_D5CDF1: LitI4 0
  loc_D5CDF6: LitI4 -1
  loc_D5CDFB: LitI4 1
  loc_D5CE00: LitStr "."
  loc_D5CE03: LitStr ","
  loc_D5CE06: FLdFPR8 var_114
  loc_D5CE09: CStrR8
  loc_D5CE0B: FStStrNoPop var_28C
  loc_D5CE0E: ImpAdCallI2 Replace(, , , , , )
  loc_D5CE13: CVarStr var_70C
  loc_D5CE16: ConcatVar var_71C
  loc_D5CE1A: LitVarStr var_3BC, ","
  loc_D5CE1F: ConcatVar var_72C
  loc_D5CE23: LitI4 0
  loc_D5CE28: LitI4 -1
  loc_D5CE2D: LitI4 1
  loc_D5CE32: LitStr "."
  loc_D5CE35: LitStr ","
  loc_D5CE38: FLdFPR8 var_11C
  loc_D5CE3B: CStrR8
  loc_D5CE3D: FStStrNoPop var_294
  loc_D5CE40: ImpAdCallI2 Replace(, , , , , )
  loc_D5CE45: CVarStr var_73C
  loc_D5CE48: ConcatVar var_74C
  loc_D5CE4C: LitVarStr var_3CC, ","
  loc_D5CE51: ConcatVar var_75C
  loc_D5CE55: LitI4 0
  loc_D5CE5A: LitI4 -1
  loc_D5CE5F: LitI4 1
  loc_D5CE64: LitStr "."
  loc_D5CE67: LitStr ","
  loc_D5CE6A: FLdFPR8 var_124
  loc_D5CE6D: CStrR8
  loc_D5CE6F: FStStrNoPop var_298
  loc_D5CE72: ImpAdCallI2 Replace(, , , , , )
  loc_D5CE77: CVarStr var_78C
  loc_D5CE7A: ConcatVar var_79C
  loc_D5CE7E: LitVarStr var_3DC, ","
  loc_D5CE83: ConcatVar var_7AC
  loc_D5CE87: LitI4 0
  loc_D5CE8C: LitI4 -1
  loc_D5CE91: LitI4 1
  loc_D5CE96: LitStr "."
  loc_D5CE99: LitStr ","
  loc_D5CE9C: FLdFPR8 var_12C
  loc_D5CE9F: CStrR8
  loc_D5CEA1: FStStrNoPop var_29C
  loc_D5CEA4: ImpAdCallI2 Replace(, , , , , )
  loc_D5CEA9: CVarStr var_7CC
  loc_D5CEAC: ConcatVar var_81C
  loc_D5CEB0: LitVarStr var_52C, ","
  loc_D5CEB5: ConcatVar var_82C
  loc_D5CEB9: LitI4 0
  loc_D5CEBE: LitI4 -1
  loc_D5CEC3: LitI4 1
  loc_D5CEC8: LitStr "."
  loc_D5CECB: LitStr ","
  loc_D5CECE: FLdFPR8 var_134
  loc_D5CED1: CStrR8
  loc_D5CED3: FStStrNoPop var_2E8
  loc_D5CED6: ImpAdCallI2 Replace(, , , , , )
  loc_D5CEDB: CVarStr var_83C
  loc_D5CEDE: ConcatVar var_85C
  loc_D5CEE2: LitVarStr var_53C, ","
  loc_D5CEE7: ConcatVar var_8AC
  loc_D5CEEB: LitI4 0
  loc_D5CEF0: LitI4 -1
  loc_D5CEF5: LitI4 1
  loc_D5CEFA: LitStr "."
  loc_D5CEFD: LitStr ","
  loc_D5CF00: FLdFPR8 var_13C
  loc_D5CF03: CStrR8
  loc_D5CF05: FStStrNoPop var_2EC
  loc_D5CF08: ImpAdCallI2 Replace(, , , , , )
  loc_D5CF0D: CVarStr var_8BC
  loc_D5CF10: ConcatVar var_8CC
  loc_D5CF14: LitVarStr var_54C, ","
  loc_D5CF19: ConcatVar var_8EC
  loc_D5CF1D: LitI4 0
  loc_D5CF22: LitI4 -1
  loc_D5CF27: LitI4 1
  loc_D5CF2C: LitStr "."
  loc_D5CF2F: LitStr ","
  loc_D5CF32: FLdFPR8 var_154
  loc_D5CF35: CStrR8
  loc_D5CF37: FStStrNoPop var_2F0
  loc_D5CF3A: ImpAdCallI2 Replace(, , , , , )
  loc_D5CF3F: CVarStr var_93C
  loc_D5CF42: ConcatVar var_94C
  loc_D5CF46: LitVarStr var_55C, ","
  loc_D5CF4B: ConcatVar var_95C
  loc_D5CF4F: LitI4 0
  loc_D5CF54: LitI4 -1
  loc_D5CF59: LitI4 1
  loc_D5CF5E: LitStr "."
  loc_D5CF61: LitStr ","
  loc_D5CF64: FLdFPR8 var_15C
  loc_D5CF67: CStrR8
  loc_D5CF69: FStStrNoPop var_2F8
  loc_D5CF6C: ImpAdCallI2 Replace(, , , , , )
  loc_D5CF71: CVarStr var_97C
  loc_D5CF74: ConcatVar var_9CC
  loc_D5CF78: LitVarStr var_56C, ","
  loc_D5CF7D: ConcatVar var_9DC
  loc_D5CF81: LitI4 0
  loc_D5CF86: LitI4 -1
  loc_D5CF8B: LitI4 1
  loc_D5CF90: LitStr "."
  loc_D5CF93: LitStr ","
  loc_D5CF96: FLdFPR8 var_164
  loc_D5CF99: CStrR8
  loc_D5CF9B: FStStrNoPop var_2FC
  loc_D5CF9E: ImpAdCallI2 Replace(, , , , , )
  loc_D5CFA3: CVarStr var_9EC
  loc_D5CFA6: ConcatVar var_A0C
  loc_D5CFAA: LitVarStr var_57C, ",'"
  loc_D5CFAF: ConcatVar var_A2C
  loc_D5CFB3: ImpAdLdI4 MemVar_D9302C
  loc_D5CFB6: CVarStr var_58C
  loc_D5CFB9: ConcatVar var_A4C
  loc_D5CFBD: LitVarStr var_59C, "');"
  loc_D5CFC2: ConcatVar var_A5C
  loc_D5CFC6: CStrVarVal var_300
  loc_D5CFCA: Call EjecutarRsCls(from_stack_1v)
  loc_D5CFCF: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = "": var_2E8 = "": var_2EC = "": var_2F0 = "": var_2F8 = "": var_2FC = ""
  loc_D5CFF6: FFreeAd var_234 = "": var_238 = ""
  loc_D5CFFF: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A5C = "": var_208 = "": var_27C = "": var_218 = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_3F0 = "": var_390 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5D05E: FLdFPR8 var_1A4
  loc_D5D061: FLdFPR8 var_104
  loc_D5D064: AddR8
  loc_D5D065: FLdFPR8 var_10C
  loc_D5D068: AddR8
  loc_D5D069: FLdFPR8 var_114
  loc_D5D06C: AddR8
  loc_D5D06D: FLdFPR8 var_11C
  loc_D5D070: AddR8
  loc_D5D071: FLdFPR8 var_124
  loc_D5D074: AddR8
  loc_D5D075: FLdFPR8 var_12C
  loc_D5D078: AddR8
  loc_D5D079: FLdFPR8 var_134
  loc_D5D07C: AddR8
  loc_D5D07D: FLdFPR8 var_13C
  loc_D5D080: AddR8
  loc_D5D081: FLdFPR8 var_154
  loc_D5D084: AddR8
  loc_D5D085: FLdFPR8 var_15C
  loc_D5D088: AddR8
  loc_D5D089: FLdFPR8 var_164
  loc_D5D08C: AddR8
  loc_D5D08D: FStFPR8 var_1A4
  loc_D5D090: FLdI2 var_9E
  loc_D5D093: CI4UI1
  loc_D5D094: CVarI4
  loc_D5D098: PopAdLdVar
  loc_D5D099: LitVarI4
  loc_D5D0A1: PopAdLdVar
  loc_D5D0A2: ImpAdLdRf MemVar_D93E08
  loc_D5D0A5: NewIfNullPr frmPlanesdePago
  loc_D5D0A8: VCallAd Control_ID_
  loc_D5D0AB: FStAdFunc var_234
  loc_D5D0AE: FLdPr var_234
  loc_D5D0B1: LateIdCallLdVar
  loc_D5D0BB: CStrVarTmp
  loc_D5D0BC: FStStrNoPop var_21C
  loc_D5D0BF: CI2Str
  loc_D5D0C1: LitI2_Byte 0
  loc_D5D0C3: GtI2
  loc_D5D0C4: FFree1Str var_21C
  loc_D5D0C7: FFree1Ad var_234
  loc_D5D0CA: FFree1Var var_208 = ""
  loc_D5D0CD: BranchF loc_D5D53B
  loc_D5D0D0: LitI2_Byte 0
  loc_D5D0D2: FStI2 var_DE
  loc_D5D0D5: LitStr "SELECT * FROM tmp_apredeta"
  loc_D5D0D8: Call EjecutarRsCls2(from_stack_1v)
  loc_D5D0DD: FLdRfVar var_230
  loc_D5D0E0: FLdPr Me
  loc_D5D0E3: MemLdPr global_68
  loc_D5D0E6:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D5D0EB: ILdRf var_230
  loc_D5D0EE: LitI4 0
  loc_D5D0F3: GtI4
  loc_D5D0F4: BranchF loc_D5D53B
  loc_D5D0F7: FLdRfVar var_4D6
  loc_D5D0FA: FLdPr Me
  loc_D5D0FD: MemLdPr global_68
  loc_D5D100:  = Me.EOF
  loc_D5D105: FLdI2 var_4D6
  loc_D5D108: NotI4
  loc_D5D109: BranchF loc_D5D53B
  loc_D5D10C: FLdI2 var_DE
  loc_D5D10F: LitI2_Byte 1
  loc_D5D111: AddI2
  loc_D5D112: FStI2 var_DE
  loc_D5D115: FLdRfVar var_208
  loc_D5D118: FLdRfVar var_238
  loc_D5D11B: LitVarStr var_1F8, "ImreBade"
  loc_D5D120: PopAdLdVar
  loc_D5D121: FLdRfVar var_234
  loc_D5D124: FLdPr Me
  loc_D5D127: MemLdPr global_68
  loc_D5D12A:  = Me.Fields
  loc_D5D12F: FLdPr var_234
  loc_D5D132: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D137: FLdPr var_238
  loc_D5D13A:  = Me.Value
  loc_D5D13F: FLdRfVar var_21C
  loc_D5D142: ImpAdLdRf MemVar_D93E08
  loc_D5D145: NewIfNullPr frmPlanesdePago
  loc_D5D148: VCallAd Control_ID_
  loc_D5D14B: FStAdFunc var_290
  loc_D5D14E: FLdPr var_290
  loc_D5D151:  = frmPlanesdePago.TextBox.Text
  loc_D5D156: LitI4 2
  loc_D5D15B: FLdRfVar var_208
  loc_D5D15E: FnCDblVar
  loc_D5D160: ILdRf var_21C
  loc_D5D163: CR8Str
  loc_D5D165: DivR8
  loc_D5D166: CVarR8
  loc_D5D16A: FLdRfVar var_27C
  loc_D5D16D: ImpAdCallFPR4  = Round(, )
  loc_D5D172: FLdRfVar var_27C
  loc_D5D175: CR4Var
  loc_D5D176: FStFPR8 var_144
  loc_D5D179: FFree1Str var_21C
  loc_D5D17C: FFreeAd var_234 = "": var_238 = ""
  loc_D5D185: FFreeVar var_208 = "": var_218 = ""
  loc_D5D18E: FLdRfVar var_208
  loc_D5D191: FLdRfVar var_238
  loc_D5D194: LitVarStr var_1F8, "IvreBade"
  loc_D5D199: PopAdLdVar
  loc_D5D19A: FLdRfVar var_234
  loc_D5D19D: FLdPr Me
  loc_D5D1A0: MemLdPr global_68
  loc_D5D1A3:  = Me.Fields
  loc_D5D1A8: FLdPr var_234
  loc_D5D1AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D1B0: FLdPr var_238
  loc_D5D1B3:  = Me.Value
  loc_D5D1B8: FLdRfVar var_21C
  loc_D5D1BB: ImpAdLdRf MemVar_D93E08
  loc_D5D1BE: NewIfNullPr frmPlanesdePago
  loc_D5D1C1: VCallAd Control_ID_
  loc_D5D1C4: FStAdFunc var_290
  loc_D5D1C7: FLdPr var_290
  loc_D5D1CA:  = frmPlanesdePago.TextBox.Text
  loc_D5D1CF: LitI4 2
  loc_D5D1D4: FLdRfVar var_208
  loc_D5D1D7: FnCDblVar
  loc_D5D1D9: ILdRf var_21C
  loc_D5D1DC: CR8Str
  loc_D5D1DE: DivR8
  loc_D5D1DF: CVarR8
  loc_D5D1E3: FLdRfVar var_27C
  loc_D5D1E6: ImpAdCallFPR4  = Round(, )
  loc_D5D1EB: FLdRfVar var_27C
  loc_D5D1EE: CR4Var
  loc_D5D1EF: FStFPR8 var_16C
  loc_D5D1F2: FFree1Str var_21C
  loc_D5D1F5: FFreeAd var_234 = "": var_238 = ""
  loc_D5D1FE: FFreeVar var_208 = "": var_218 = ""
  loc_D5D207: FLdRfVar var_208
  loc_D5D20A: FLdRfVar var_238
  loc_D5D20D: LitVarStr var_1F8, "ImofBade"
  loc_D5D212: PopAdLdVar
  loc_D5D213: FLdRfVar var_234
  loc_D5D216: FLdPr Me
  loc_D5D219: MemLdPr global_68
  loc_D5D21C:  = Me.Fields
  loc_D5D221: FLdPr var_234
  loc_D5D224: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D229: FLdPr var_238
  loc_D5D22C:  = Me.Value
  loc_D5D231: FLdRfVar var_21C
  loc_D5D234: ImpAdLdRf MemVar_D93E08
  loc_D5D237: NewIfNullPr frmPlanesdePago
  loc_D5D23A: VCallAd Control_ID_
  loc_D5D23D: FStAdFunc var_290
  loc_D5D240: FLdPr var_290
  loc_D5D243:  = frmPlanesdePago.TextBox.Text
  loc_D5D248: LitI4 2
  loc_D5D24D: FLdRfVar var_208
  loc_D5D250: FnCDblVar
  loc_D5D252: ILdRf var_21C
  loc_D5D255: CR8Str
  loc_D5D257: DivR8
  loc_D5D258: CVarR8
  loc_D5D25C: FLdRfVar var_27C
  loc_D5D25F: ImpAdCallFPR4  = Round(, )
  loc_D5D264: FLdRfVar var_27C
  loc_D5D267: CR4Var
  loc_D5D268: FStFPR8 var_14C
  loc_D5D26B: FFree1Str var_21C
  loc_D5D26E: FFreeAd var_234 = "": var_238 = ""
  loc_D5D277: FFreeVar var_208 = "": var_218 = ""
  loc_D5D280: FLdRfVar var_208
  loc_D5D283: FLdRfVar var_238
  loc_D5D286: LitVarStr var_1F8, "IvofBade"
  loc_D5D28B: PopAdLdVar
  loc_D5D28C: FLdRfVar var_234
  loc_D5D28F: FLdPr Me
  loc_D5D292: MemLdPr global_68
  loc_D5D295:  = Me.Fields
  loc_D5D29A: FLdPr var_234
  loc_D5D29D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D2A2: FLdPr var_238
  loc_D5D2A5:  = Me.Value
  loc_D5D2AA: FLdRfVar var_21C
  loc_D5D2AD: ImpAdLdRf MemVar_D93E08
  loc_D5D2B0: NewIfNullPr frmPlanesdePago
  loc_D5D2B3: VCallAd Control_ID_
  loc_D5D2B6: FStAdFunc var_290
  loc_D5D2B9: FLdPr var_290
  loc_D5D2BC:  = frmPlanesdePago.TextBox.Text
  loc_D5D2C1: LitI4 2
  loc_D5D2C6: FLdRfVar var_208
  loc_D5D2C9: FnCDblVar
  loc_D5D2CB: ILdRf var_21C
  loc_D5D2CE: CR8Str
  loc_D5D2D0: DivR8
  loc_D5D2D1: CVarR8
  loc_D5D2D5: FLdRfVar var_27C
  loc_D5D2D8: ImpAdCallFPR4  = Round(, )
  loc_D5D2DD: FLdRfVar var_27C
  loc_D5D2E0: CR4Var
  loc_D5D2E1: FStFPR8 var_174
  loc_D5D2E4: FFree1Str var_21C
  loc_D5D2E7: FFreeAd var_234 = "": var_238 = ""
  loc_D5D2F0: FFreeVar var_208 = "": var_218 = ""
  loc_D5D2F9: LitStr "INSERT INTO boleapredeta (PeriBole, NumeBole, NumeApre, CodiInju, NumeBade, CodiReca, ImreBade, IvreBade, CodiOfju, ImofBade, IvofBade) "
  loc_D5D2FC: LitStr " VALUES ("
  loc_D5D2FF: ConcatStr
  loc_D5D300: FStStrNoPop var_21C
  loc_D5D303: FLdI2 var_AA
  loc_D5D306: CStrUI1
  loc_D5D308: FStStrNoPop var_220
  loc_D5D30B: ConcatStr
  loc_D5D30C: FStStrNoPop var_224
  loc_D5D30F: LitStr ","
  loc_D5D312: ConcatStr
  loc_D5D313: FStStrNoPop var_228
  loc_D5D316: ILdRf var_B0
  loc_D5D319: CStrI4
  loc_D5D31B: FStStrNoPop var_22C
  loc_D5D31E: ConcatStr
  loc_D5D31F: FStStrNoPop var_280
  loc_D5D322: LitStr ","
  loc_D5D325: ConcatStr
  loc_D5D326: CVarStr var_218
  loc_D5D329: FLdRfVar var_208
  loc_D5D32C: FLdRfVar var_238
  loc_D5D32F: LitVarStr var_1F8, "NumeApre"
  loc_D5D334: PopAdLdVar
  loc_D5D335: FLdRfVar var_234
  loc_D5D338: FLdPr Me
  loc_D5D33B: MemLdPr global_68
  loc_D5D33E:  = Me.Fields
  loc_D5D343: FLdPr var_234
  loc_D5D346: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D34B: FLdPr var_238
  loc_D5D34E:  = Me.Value
  loc_D5D353: FLdRfVar var_208
  loc_D5D356: ConcatVar var_27C
  loc_D5D35A: LitVarStr var_24C, ","
  loc_D5D35F: ConcatVar var_2B0
  loc_D5D363: FLdI2 var_C6
  loc_D5D366: CVarI2 var_25C
  loc_D5D369: ConcatVar var_2E4
  loc_D5D36D: LitVarStr var_26C, ","
  loc_D5D372: ConcatVar var_330
  loc_D5D376: FLdI2 var_DE
  loc_D5D379: CVarI2 var_2C0
  loc_D5D37C: ConcatVar var_390
  loc_D5D380: LitVarStr var_2D0, ","
  loc_D5D385: ConcatVar var_3F0
  loc_D5D389: FLdRfVar var_5FC
  loc_D5D38C: FLdRfVar var_2A0
  loc_D5D38F: LitVarStr var_310, "CodiReca"
  loc_D5D394: PopAdLdVar
  loc_D5D395: FLdRfVar var_290
  loc_D5D398: FLdPr Me
  loc_D5D39B: MemLdPr global_68
  loc_D5D39E:  = Me.Fields
  loc_D5D3A3: FLdPr var_290
  loc_D5D3A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D3AB: FLdPr var_2A0
  loc_D5D3AE:  = Me.Value
  loc_D5D3B3: FLdRfVar var_5FC
  loc_D5D3B6: ConcatVar var_64C
  loc_D5D3BA: LitVarStr var_320, ","
  loc_D5D3BF: ConcatVar var_69C
  loc_D5D3C3: LitI4 0
  loc_D5D3C8: LitI4 -1
  loc_D5D3CD: LitI4 1
  loc_D5D3D2: LitStr "."
  loc_D5D3D5: LitStr ","
  loc_D5D3D8: FLdFPR8 var_144
  loc_D5D3DB: CStrR8
  loc_D5D3DD: FStStrNoPop var_284
  loc_D5D3E0: ImpAdCallI2 Replace(, , , , , )
  loc_D5D3E5: CVarStr var_6AC
  loc_D5D3E8: ConcatVar var_6BC
  loc_D5D3EC: LitVarStr var_34C, ","
  loc_D5D3F1: ConcatVar var_6CC
  loc_D5D3F5: LitI4 0
  loc_D5D3FA: LitI4 -1
  loc_D5D3FF: LitI4 1
  loc_D5D404: LitStr "."
  loc_D5D407: LitStr ","
  loc_D5D40A: FLdFPR8 var_16C
  loc_D5D40D: CStrR8
  loc_D5D40F: FStStrNoPop var_288
  loc_D5D412: ImpAdCallI2 Replace(, , , , , )
  loc_D5D417: CVarStr var_6DC
  loc_D5D41A: ConcatVar var_6EC
  loc_D5D41E: LitVarStr var_35C, ","
  loc_D5D423: ConcatVar var_6FC
  loc_D5D427: FLdRfVar var_70C
  loc_D5D42A: FLdRfVar var_2F4
  loc_D5D42D: LitVarStr var_36C, "CodiOfju"
  loc_D5D432: PopAdLdVar
  loc_D5D433: FLdRfVar var_2D4
  loc_D5D436: FLdPr Me
  loc_D5D439: MemLdPr global_68
  loc_D5D43C:  = Me.Fields
  loc_D5D441: FLdPr var_2D4
  loc_D5D444: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D449: FLdPr var_2F4
  loc_D5D44C:  = Me.Value
  loc_D5D451: FLdRfVar var_70C
  loc_D5D454: ConcatVar var_71C
  loc_D5D458: LitVarStr var_37C, ","
  loc_D5D45D: ConcatVar var_72C
  loc_D5D461: LitI4 0
  loc_D5D466: LitI4 -1
  loc_D5D46B: LitI4 1
  loc_D5D470: LitStr "."
  loc_D5D473: LitStr ","
  loc_D5D476: FLdFPR8 var_14C
  loc_D5D479: CStrR8
  loc_D5D47B: FStStrNoPop var_28C
  loc_D5D47E: ImpAdCallI2 Replace(, , , , , )
  loc_D5D483: CVarStr var_73C
  loc_D5D486: ConcatVar var_74C
  loc_D5D48A: LitVarStr var_3AC, ","
  loc_D5D48F: ConcatVar var_75C
  loc_D5D493: LitI4 0
  loc_D5D498: LitI4 -1
  loc_D5D49D: LitI4 1
  loc_D5D4A2: LitStr "."
  loc_D5D4A5: LitStr ","
  loc_D5D4A8: FLdFPR8 var_174
  loc_D5D4AB: CStrR8
  loc_D5D4AD: FStStrNoPop var_294
  loc_D5D4B0: ImpAdCallI2 Replace(, , , , , )
  loc_D5D4B5: CVarStr var_78C
  loc_D5D4B8: ConcatVar var_79C
  loc_D5D4BC: LitVarStr var_3BC, ");"
  loc_D5D4C1: ConcatVar var_7AC
  loc_D5D4C5: CStrVarVal var_298
  loc_D5D4C9: Call EjecutarRsCls(from_stack_1v)
  loc_D5D4CE: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = ""
  loc_D5D4E7: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = ""
  loc_D5D4F6: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = ""
  loc_D5D52D: FLdPr Me
  loc_D5D530: MemLdPr global_68
  loc_D5D533: Me.MoveNext
  loc_D5D538: Branch loc_D5D0F7
  loc_D5D53B: FLdPr Me
  loc_D5D53E: MemLdPr global_64
  loc_D5D541: Me.MoveNext
  loc_D5D546: Branch loc_D5C1CD
  loc_D5D549: FLdI2 var_9E
  loc_D5D54C: CI4UI1
  loc_D5D54D: CVarI4
  loc_D5D551: PopAdLdVar
  loc_D5D552: LitVarI4
  loc_D5D55A: PopAdLdVar
  loc_D5D55B: ImpAdLdRf MemVar_D93E08
  loc_D5D55E: NewIfNullPr frmPlanesdePago
  loc_D5D561: VCallAd Control_ID_
  loc_D5D564: FStAdFunc var_234
  loc_D5D567: FLdPr var_234
  loc_D5D56A: LateIdCallLdVar
  loc_D5D574: CStrVarTmp
  loc_D5D575: FStStrNoPop var_21C
  loc_D5D578: CR8Str
  loc_D5D57A: FStFPR8 var_BC
  loc_D5D57D: FFree1Str var_21C
  loc_D5D580: FFree1Ad var_234
  loc_D5D583: FFree1Var var_208 = ""
  loc_D5D586: LitI2_Byte 0
  loc_D5D588: CR8I2
  loc_D5D589: FStFPR8 var_1D0
  loc_D5D58C: FLdI2 var_9E
  loc_D5D58F: CI4UI1
  loc_D5D590: CVarI4
  loc_D5D594: PopAdLdVar
  loc_D5D595: LitVarI4
  loc_D5D59D: PopAdLdVar
  loc_D5D59E: ImpAdLdRf MemVar_D93E08
  loc_D5D5A1: NewIfNullPr frmPlanesdePago
  loc_D5D5A4: VCallAd Control_ID_
  loc_D5D5A7: FStAdFunc var_234
  loc_D5D5AA: FLdPr var_234
  loc_D5D5AD: LateIdCallLdVar
  loc_D5D5B7: CStrVarTmp
  loc_D5D5B8: FStStrNoPop var_21C
  loc_D5D5BB: CR8Str
  loc_D5D5BD: FStFPR8 var_1C0
  loc_D5D5C0: FFree1Str var_21C
  loc_D5D5C3: FFree1Ad var_234
  loc_D5D5C6: FFree1Var var_208 = ""
  loc_D5D5C9: FLdI2 var_9E
  loc_D5D5CC: CI4UI1
  loc_D5D5CD: CVarI4
  loc_D5D5D1: PopAdLdVar
  loc_D5D5D2: LitVarI4
  loc_D5D5DA: PopAdLdVar
  loc_D5D5DB: ImpAdLdRf MemVar_D93E08
  loc_D5D5DE: NewIfNullPr frmPlanesdePago
  loc_D5D5E1: VCallAd Control_ID_
  loc_D5D5E4: FStAdFunc var_234
  loc_D5D5E7: FLdPr var_234
  loc_D5D5EA: LateIdCallLdVar
  loc_D5D5F4: CStrVarTmp
  loc_D5D5F5: FStStrNoPop var_21C
  loc_D5D5F8: CR8Str
  loc_D5D5FA: FStFPR8 var_1C8
  loc_D5D5FD: FFree1Str var_21C
  loc_D5D600: FFree1Ad var_234
  loc_D5D603: FFree1Var var_208 = ""
  loc_D5D606: FLdI2 var_9E
  loc_D5D609: CI4UI1
  loc_D5D60A: CVarI4
  loc_D5D60E: PopAdLdVar
  loc_D5D60F: LitVarI4
  loc_D5D617: PopAdLdVar
  loc_D5D618: ImpAdLdRf MemVar_D93E08
  loc_D5D61B: NewIfNullPr frmPlanesdePago
  loc_D5D61E: VCallAd Control_ID_
  loc_D5D621: FStAdFunc var_234
  loc_D5D624: FLdPr var_234
  loc_D5D627: LateIdCallLdVar
  loc_D5D631: CStrVarTmp
  loc_D5D632: FStStrNoPop var_21C
  loc_D5D635: CR8Str
  loc_D5D637: FStFPR8 var_1E0
  loc_D5D63A: FFree1Str var_21C
  loc_D5D63D: FFree1Ad var_234
  loc_D5D640: FFree1Var var_208 = ""
  loc_D5D643: FLdI2 var_9E
  loc_D5D646: CI4UI1
  loc_D5D647: CVarI4
  loc_D5D64B: PopAdLdVar
  loc_D5D64C: LitVarI4
  loc_D5D654: PopAdLdVar
  loc_D5D655: ImpAdLdRf MemVar_D93E08
  loc_D5D658: NewIfNullPr frmPlanesdePago
  loc_D5D65B: VCallAd Control_ID_
  loc_D5D65E: FStAdFunc var_234
  loc_D5D661: FLdPr var_234
  loc_D5D664: LateIdCallLdVar
  loc_D5D66E: CStrVarTmp
  loc_D5D66F: FStStrNoPop var_21C
  loc_D5D672: CR8Str
  loc_D5D674: FStFPR8 var_1D8
  loc_D5D677: FFree1Str var_21C
  loc_D5D67A: FFree1Ad var_234
  loc_D5D67D: FFree1Var var_208 = ""
  loc_D5D680: LitI2_Byte 0
  loc_D5D682: CR8I2
  loc_D5D683: FStFPR8 var_C4
  loc_D5D686: LitI2_Byte 0
  loc_D5D688: CR8I2
  loc_D5D689: FStFPR8 var_FC
  loc_D5D68C: LitI2_Byte 0
  loc_D5D68E: CR8I2
  loc_D5D68F: FStFPR8 var_F4
  loc_D5D692: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, "
  loc_D5D695: LitStr " PeriInfo, CodiConc, NumeApre, CodiTimo, SeleCtct, SaldCtct FROM tmp_ctacteboleto"
  loc_D5D698: ConcatStr
  loc_D5D699: FStStrNoPop var_21C
  loc_D5D69C: LitStr " WHERE tmp_ctacteboleto.CodiOfic = "
  loc_D5D69F: ConcatStr
  loc_D5D6A0: FStStrNoPop var_220
  loc_D5D6A3: FLdI2 var_9E
  loc_D5D6A6: CI4UI1
  loc_D5D6A7: CVarI4
  loc_D5D6AB: PopAdLdVar
  loc_D5D6AC: LitVarI4
  loc_D5D6B4: PopAdLdVar
  loc_D5D6B5: ImpAdLdRf MemVar_D93E08
  loc_D5D6B8: NewIfNullPr frmPlanesdePago
  loc_D5D6BB: VCallAd Control_ID_
  loc_D5D6BE: FStAdFunc var_234
  loc_D5D6C1: FLdPr var_234
  loc_D5D6C4: LateIdCallLdVar
  loc_D5D6CE: CStrVarTmp
  loc_D5D6CF: FStStrNoPop var_224
  loc_D5D6D2: ConcatStr
  loc_D5D6D3: FStStrNoPop var_228
  loc_D5D6D6: LitStr " AND tmp_ctacteboleto.CuenCtct = '"
  loc_D5D6D9: ConcatStr
  loc_D5D6DA: FStStrNoPop var_22C
  loc_D5D6DD: FLdI2 var_9E
  loc_D5D6E0: CI4UI1
  loc_D5D6E1: CVarI4
  loc_D5D6E5: PopAdLdVar
  loc_D5D6E6: LitVarI4
  loc_D5D6EE: PopAdLdVar
  loc_D5D6EF: ImpAdLdRf MemVar_D93E08
  loc_D5D6F2: NewIfNullPr frmPlanesdePago
  loc_D5D6F5: VCallAd Control_ID_
  loc_D5D6F8: FStAdFunc var_238
  loc_D5D6FB: FLdPr var_238
  loc_D5D6FE: LateIdCallLdVar
  loc_D5D708: CStrVarTmp
  loc_D5D709: FStStrNoPop var_280
  loc_D5D70C: ConcatStr
  loc_D5D70D: FStStrNoPop var_284
  loc_D5D710: LitStr "'"
  loc_D5D713: ConcatStr
  loc_D5D714: FStStrNoPop var_288
  loc_D5D717: LitStr " AND tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_D5D71A: ConcatStr
  loc_D5D71B: FStStrNoPop var_28C
  loc_D5D71E: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct"
  loc_D5D721: ConcatStr
  loc_D5D722: FStStrNoPop var_294
  loc_D5D725: Call EjecutarRsCls1(from_stack_1v)
  loc_D5D72A: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = ""
  loc_D5D741: FFreeAd var_234 = ""
  loc_D5D748: FFreeVar var_208 = ""
  loc_D5D74F: FLdRfVar var_230
  loc_D5D752: FLdPr Me
  loc_D5D755: MemLdPr global_64
  loc_D5D758:  = frmPlanesdePago.Recordset15.RecordCount
  loc_D5D75D: ILdRf var_230
  loc_D5D760: LitI4 0
  loc_D5D765: GtI4
  loc_D5D766: BranchF loc_D600B7
  loc_D5D769: FLdPr Me
  loc_D5D76C: MemLdPr global_64
  loc_D5D76F: Me.MoveFirst
  loc_D5D774: FLdRfVar var_4D6
  loc_D5D777: FLdPr Me
  loc_D5D77A: MemLdPr global_64
  loc_D5D77D:  = Me.EOF
  loc_D5D782: FLdI2 var_4D6
  loc_D5D785: NotI4
  loc_D5D786: BranchF loc_D600B7
  loc_D5D789: FLdRfVar var_208
  loc_D5D78C: FLdRfVar var_238
  loc_D5D78F: LitVarStr var_1F8, "SaldCtct"
  loc_D5D794: PopAdLdVar
  loc_D5D795: FLdRfVar var_234
  loc_D5D798: FLdPr Me
  loc_D5D79B: MemLdPr global_64
  loc_D5D79E:  = Me.Fields
  loc_D5D7A3: FLdPr var_234
  loc_D5D7A6: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D7AB: FLdPr var_238
  loc_D5D7AE:  = Me.Value
  loc_D5D7B3: FLdFPR8 var_BC
  loc_D5D7B6: FLdRfVar var_208
  loc_D5D7B9: FnCDblVar
  loc_D5D7BB: GeR8
  loc_D5D7BC: FFreeAd var_234 = ""
  loc_D5D7C3: FFree1Var var_208 = ""
  loc_D5D7C6: BranchF loc_D5DA07
  loc_D5D7C9: FLdRfVar var_208
  loc_D5D7CC: FLdRfVar var_238
  loc_D5D7CF: LitVarStr var_1F8, "SaldCtct"
  loc_D5D7D4: PopAdLdVar
  loc_D5D7D5: FLdRfVar var_234
  loc_D5D7D8: FLdPr Me
  loc_D5D7DB: MemLdPr global_64
  loc_D5D7DE:  = Me.Fields
  loc_D5D7E3: FLdPr var_234
  loc_D5D7E6: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D7EB: FLdPr var_238
  loc_D5D7EE:  = Me.Value
  loc_D5D7F3: LitI4 2
  loc_D5D7F8: FLdFPR8 var_BC
  loc_D5D7FB: FLdRfVar var_208
  loc_D5D7FE: FnCDblVar
  loc_D5D800: SubR4
  loc_D5D801: CVarR8
  loc_D5D805: FLdRfVar var_27C
  loc_D5D808: ImpAdCallFPR4  = Round(, )
  loc_D5D80D: FLdRfVar var_27C
  loc_D5D810: CR4Var
  loc_D5D811: FStFPR8 var_BC
  loc_D5D814: FFreeAd var_234 = ""
  loc_D5D81B: FFreeVar var_208 = "": var_218 = ""
  loc_D5D824: FLdRfVar var_208
  loc_D5D827: FLdRfVar var_238
  loc_D5D82A: LitVarStr var_1F8, "SaldCtct"
  loc_D5D82F: PopAdLdVar
  loc_D5D830: FLdRfVar var_234
  loc_D5D833: FLdPr Me
  loc_D5D836: MemLdPr global_64
  loc_D5D839:  = Me.Fields
  loc_D5D83E: FLdPr var_234
  loc_D5D841: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D846: FLdPr var_238
  loc_D5D849:  = Me.Value
  loc_D5D84E: FLdRfVar var_208
  loc_D5D851: FnCDblVar
  loc_D5D853: FStFPR8 var_C4
  loc_D5D856: FFreeAd var_234 = ""
  loc_D5D85D: FFree1Var var_208 = ""
  loc_D5D860: LitVarStr var_24C, "UPDATE tmp_ctacteboleto SET SeleCtct = 'No' WHERE CodiOfic =  "
  loc_D5D865: FLdRfVar var_208
  loc_D5D868: FLdRfVar var_238
  loc_D5D86B: LitVarStr var_1F8, "CodiOfic"
  loc_D5D870: PopAdLdVar
  loc_D5D871: FLdRfVar var_234
  loc_D5D874: FLdPr Me
  loc_D5D877: MemLdPr global_64
  loc_D5D87A:  = Me.Fields
  loc_D5D87F: FLdPr var_234
  loc_D5D882: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D887: FLdPr var_238
  loc_D5D88A:  = Me.Value
  loc_D5D88F: FLdRfVar var_208
  loc_D5D892: ConcatVar var_218
  loc_D5D896: LitVarStr var_25C, " AND CuenCtct = '"
  loc_D5D89B: ConcatVar var_27C
  loc_D5D89F: FLdRfVar var_2B0
  loc_D5D8A2: FLdRfVar var_2A0
  loc_D5D8A5: LitVarStr var_26C, "CuenCtct"
  loc_D5D8AA: PopAdLdVar
  loc_D5D8AB: FLdRfVar var_290
  loc_D5D8AE: FLdPr Me
  loc_D5D8B1: MemLdPr global_64
  loc_D5D8B4:  = Me.Fields
  loc_D5D8B9: FLdPr var_290
  loc_D5D8BC: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D8C1: FLdPr var_2A0
  loc_D5D8C4:  = Me.Value
  loc_D5D8C9: FLdRfVar var_2B0
  loc_D5D8CC: ConcatVar var_2E4
  loc_D5D8D0: LitVarStr var_2C0, "' AND PeriCtct = "
  loc_D5D8D5: ConcatVar var_330
  loc_D5D8D9: FLdRfVar var_390
  loc_D5D8DC: FLdRfVar var_2F4
  loc_D5D8DF: LitVarStr var_2D0, "PeriCtct"
  loc_D5D8E4: PopAdLdVar
  loc_D5D8E5: FLdRfVar var_2D4
  loc_D5D8E8: FLdPr Me
  loc_D5D8EB: MemLdPr global_64
  loc_D5D8EE:  = Me.Fields
  loc_D5D8F3: FLdPr var_2D4
  loc_D5D8F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D8FB: FLdPr var_2F4
  loc_D5D8FE:  = Me.Value
  loc_D5D903: FLdRfVar var_390
  loc_D5D906: ConcatVar var_3F0
  loc_D5D90A: LitVarStr var_310, " AND BimeCtct = "
  loc_D5D90F: ConcatVar var_5FC
  loc_D5D913: FLdRfVar var_64C
  loc_D5D916: FLdRfVar var_3E0
  loc_D5D919: LitVarStr var_320, "BimeCtct"
  loc_D5D91E: PopAdLdVar
  loc_D5D91F: FLdRfVar var_380
  loc_D5D922: FLdPr Me
  loc_D5D925: MemLdPr global_64
  loc_D5D928:  = Me.Fields
  loc_D5D92D: FLdPr var_380
  loc_D5D930: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D935: FLdPr var_3E0
  loc_D5D938:  = Me.Value
  loc_D5D93D: FLdRfVar var_64C
  loc_D5D940: ConcatVar var_69C
  loc_D5D944: LitVarStr var_34C, " AND NumeCtct = "
  loc_D5D949: ConcatVar var_6AC
  loc_D5D94D: FLdRfVar var_6BC
  loc_D5D950: FLdRfVar var_42C
  loc_D5D953: LitVarStr var_35C, "NumeCtct"
  loc_D5D958: PopAdLdVar
  loc_D5D959: FLdRfVar var_414
  loc_D5D95C: FLdPr Me
  loc_D5D95F: MemLdPr global_64
  loc_D5D962:  = Me.Fields
  loc_D5D967: FLdPr var_414
  loc_D5D96A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D96F: FLdPr var_42C
  loc_D5D972:  = Me.Value
  loc_D5D977: FLdRfVar var_6BC
  loc_D5D97A: ConcatVar var_6CC
  loc_D5D97E: LitVarStr var_36C, " AND MoviCtct = "
  loc_D5D983: ConcatVar var_6DC
  loc_D5D987: FLdRfVar var_6EC
  loc_D5D98A: FLdRfVar var_45C
  loc_D5D98D: LitVarStr var_37C, "MoviCtct"
  loc_D5D992: PopAdLdVar
  loc_D5D993: FLdRfVar var_444
  loc_D5D996: FLdPr Me
  loc_D5D999: MemLdPr global_64
  loc_D5D99C:  = Me.Fields
  loc_D5D9A1: FLdPr var_444
  loc_D5D9A4: from_stack_2 = Me.Item(from_stack_1)
  loc_D5D9A9: FLdPr var_45C
  loc_D5D9AC:  = Me.Value
  loc_D5D9B1: FLdRfVar var_6EC
  loc_D5D9B4: ConcatVar var_6FC
  loc_D5D9B8: CStrVarVal var_21C
  loc_D5D9BC: Call EjecutarRsCls(from_stack_1v)
  loc_D5D9C1: FFree1Str var_21C
  loc_D5D9C4: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = ""
  loc_D5D9DF: FFreeVar var_208 = "": var_218 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = ""
  loc_D5DA04: Branch loc_D5DBF9
  loc_D5DA07: FLdFPR8 var_BC
  loc_D5DA0A: LitI2_Byte 0
  loc_D5DA0C: CR8I2
  loc_D5DA0D: GtR4
  loc_D5DA0E: BranchF loc_D5DBED
  loc_D5DA11: LitStr "UPDATE tmp_ctacteboleto SET SaldCtct = SaldCtct - "
  loc_D5DA14: LitI4 0
  loc_D5DA19: LitI4 -1
  loc_D5DA1E: LitI4 1
  loc_D5DA23: LitStr "."
  loc_D5DA26: LitStr ","
  loc_D5DA29: FLdFPR8 var_BC
  loc_D5DA2C: CStrR8
  loc_D5DA2E: FStStrNoPop var_21C
  loc_D5DA31: ImpAdCallI2 Replace(, , , , , )
  loc_D5DA36: FStStrNoPop var_220
  loc_D5DA39: ConcatStr
  loc_D5DA3A: FStStrNoPop var_224
  loc_D5DA3D: LitStr " WHERE CodiOfic =  "
  loc_D5DA40: ConcatStr
  loc_D5DA41: CVarStr var_218
  loc_D5DA44: FLdRfVar var_208
  loc_D5DA47: FLdRfVar var_238
  loc_D5DA4A: LitVarStr var_1F8, "CodiOfic"
  loc_D5DA4F: PopAdLdVar
  loc_D5DA50: FLdRfVar var_234
  loc_D5DA53: FLdPr Me
  loc_D5DA56: MemLdPr global_64
  loc_D5DA59:  = Me.Fields
  loc_D5DA5E: FLdPr var_234
  loc_D5DA61: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DA66: FLdPr var_238
  loc_D5DA69:  = Me.Value
  loc_D5DA6E: FLdRfVar var_208
  loc_D5DA71: ConcatVar var_27C
  loc_D5DA75: LitVarStr var_24C, " AND CuenCtct = '"
  loc_D5DA7A: ConcatVar var_2B0
  loc_D5DA7E: FLdRfVar var_2E4
  loc_D5DA81: FLdRfVar var_2A0
  loc_D5DA84: LitVarStr var_25C, "CuenCtct"
  loc_D5DA89: PopAdLdVar
  loc_D5DA8A: FLdRfVar var_290
  loc_D5DA8D: FLdPr Me
  loc_D5DA90: MemLdPr global_64
  loc_D5DA93:  = Me.Fields
  loc_D5DA98: FLdPr var_290
  loc_D5DA9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DAA0: FLdPr var_2A0
  loc_D5DAA3:  = Me.Value
  loc_D5DAA8: FLdRfVar var_2E4
  loc_D5DAAB: ConcatVar var_330
  loc_D5DAAF: LitVarStr var_26C, "' AND PeriCtct = "
  loc_D5DAB4: ConcatVar var_390
  loc_D5DAB8: FLdRfVar var_3F0
  loc_D5DABB: FLdRfVar var_2F4
  loc_D5DABE: LitVarStr var_2C0, "PeriCtct"
  loc_D5DAC3: PopAdLdVar
  loc_D5DAC4: FLdRfVar var_2D4
  loc_D5DAC7: FLdPr Me
  loc_D5DACA: MemLdPr global_64
  loc_D5DACD:  = Me.Fields
  loc_D5DAD2: FLdPr var_2D4
  loc_D5DAD5: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DADA: FLdPr var_2F4
  loc_D5DADD:  = Me.Value
  loc_D5DAE2: FLdRfVar var_3F0
  loc_D5DAE5: ConcatVar var_5FC
  loc_D5DAE9: LitVarStr var_2D0, " AND BimeCtct = "
  loc_D5DAEE: ConcatVar var_64C
  loc_D5DAF2: FLdRfVar var_69C
  loc_D5DAF5: FLdRfVar var_3E0
  loc_D5DAF8: LitVarStr var_310, "BimeCtct"
  loc_D5DAFD: PopAdLdVar
  loc_D5DAFE: FLdRfVar var_380
  loc_D5DB01: FLdPr Me
  loc_D5DB04: MemLdPr global_64
  loc_D5DB07:  = Me.Fields
  loc_D5DB0C: FLdPr var_380
  loc_D5DB0F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DB14: FLdPr var_3E0
  loc_D5DB17:  = Me.Value
  loc_D5DB1C: FLdRfVar var_69C
  loc_D5DB1F: ConcatVar var_6AC
  loc_D5DB23: LitVarStr var_320, " AND NumeCtct = "
  loc_D5DB28: ConcatVar var_6BC
  loc_D5DB2C: FLdRfVar var_6CC
  loc_D5DB2F: FLdRfVar var_42C
  loc_D5DB32: LitVarStr var_34C, "NumeCtct"
  loc_D5DB37: PopAdLdVar
  loc_D5DB38: FLdRfVar var_414
  loc_D5DB3B: FLdPr Me
  loc_D5DB3E: MemLdPr global_64
  loc_D5DB41:  = Me.Fields
  loc_D5DB46: FLdPr var_414
  loc_D5DB49: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DB4E: FLdPr var_42C
  loc_D5DB51:  = Me.Value
  loc_D5DB56: FLdRfVar var_6CC
  loc_D5DB59: ConcatVar var_6DC
  loc_D5DB5D: LitVarStr var_35C, " AND MoviCtct = "
  loc_D5DB62: ConcatVar var_6EC
  loc_D5DB66: FLdRfVar var_6FC
  loc_D5DB69: FLdRfVar var_45C
  loc_D5DB6C: LitVarStr var_36C, "MoviCtct"
  loc_D5DB71: PopAdLdVar
  loc_D5DB72: FLdRfVar var_444
  loc_D5DB75: FLdPr Me
  loc_D5DB78: MemLdPr global_64
  loc_D5DB7B:  = Me.Fields
  loc_D5DB80: FLdPr var_444
  loc_D5DB83: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DB88: FLdPr var_45C
  loc_D5DB8B:  = Me.Value
  loc_D5DB90: FLdRfVar var_6FC
  loc_D5DB93: ConcatVar var_70C
  loc_D5DB97: CStrVarVal var_228
  loc_D5DB9B: Call EjecutarRsCls(from_stack_1v)
  loc_D5DBA0: FFreeStr var_21C = "": var_220 = "": var_224 = ""
  loc_D5DBAB: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = ""
  loc_D5DBC6: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = ""
  loc_D5DBED: FLdFPR8 var_BC
  loc_D5DBF0: FStFPR8 var_C4
  loc_D5DBF3: LitI2_Byte 0
  loc_D5DBF5: CR8I2
  loc_D5DBF6: FStFPR8 var_BC
  loc_D5DBF9: FLdFPR8 var_C4
  loc_D5DBFC: LitI2_Byte 0
  loc_D5DBFE: CR8I2
  loc_D5DBFF: GtR4
  loc_D5DC00: BranchF loc_D600A9
  loc_D5DC03: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiFapa, TipoCtct, NumeApre, CodiTimo, PeriInfo, CodiConc FROM ctacte "
  loc_D5DC06: LitStr " WHERE ctacte.CodiOfic = "
  loc_D5DC09: ConcatStr
  loc_D5DC0A: CVarStr var_218
  loc_D5DC0D: FLdRfVar var_208
  loc_D5DC10: FLdRfVar var_238
  loc_D5DC13: LitVarStr var_1F8, "CodiOfic"
  loc_D5DC18: PopAdLdVar
  loc_D5DC19: FLdRfVar var_234
  loc_D5DC1C: FLdPr Me
  loc_D5DC1F: MemLdPr global_64
  loc_D5DC22:  = Me.Fields
  loc_D5DC27: FLdPr var_234
  loc_D5DC2A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DC2F: FLdPr var_238
  loc_D5DC32:  = Me.Value
  loc_D5DC37: FLdRfVar var_208
  loc_D5DC3A: ConcatVar var_27C
  loc_D5DC3E: LitVarStr var_24C, " AND ctacte.CuenCtct = '"
  loc_D5DC43: ConcatVar var_2B0
  loc_D5DC47: FLdRfVar var_2E4
  loc_D5DC4A: FLdRfVar var_2A0
  loc_D5DC4D: LitVarStr var_25C, "CuenCtct"
  loc_D5DC52: PopAdLdVar
  loc_D5DC53: FLdRfVar var_290
  loc_D5DC56: FLdPr Me
  loc_D5DC59: MemLdPr global_64
  loc_D5DC5C:  = Me.Fields
  loc_D5DC61: FLdPr var_290
  loc_D5DC64: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DC69: FLdPr var_2A0
  loc_D5DC6C:  = Me.Value
  loc_D5DC71: FLdRfVar var_2E4
  loc_D5DC74: ConcatVar var_330
  loc_D5DC78: LitVarStr var_26C, "'"
  loc_D5DC7D: ConcatVar var_390
  loc_D5DC81: LitVarStr var_2C0, " AND ctacte.PeriCtct = "
  loc_D5DC86: ConcatVar var_3F0
  loc_D5DC8A: FLdRfVar var_5FC
  loc_D5DC8D: FLdRfVar var_2F4
  loc_D5DC90: LitVarStr var_2D0, "PeriCtct"
  loc_D5DC95: PopAdLdVar
  loc_D5DC96: FLdRfVar var_2D4
  loc_D5DC99: FLdPr Me
  loc_D5DC9C: MemLdPr global_64
  loc_D5DC9F:  = Me.Fields
  loc_D5DCA4: FLdPr var_2D4
  loc_D5DCA7: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DCAC: FLdPr var_2F4
  loc_D5DCAF:  = Me.Value
  loc_D5DCB4: FLdRfVar var_5FC
  loc_D5DCB7: ConcatVar var_64C
  loc_D5DCBB: LitVarStr var_310, " AND ctacte.NumeCtct = "
  loc_D5DCC0: ConcatVar var_69C
  loc_D5DCC4: FLdRfVar var_6AC
  loc_D5DCC7: FLdRfVar var_3E0
  loc_D5DCCA: LitVarStr var_320, "NumeCtct"
  loc_D5DCCF: PopAdLdVar
  loc_D5DCD0: FLdRfVar var_380
  loc_D5DCD3: FLdPr Me
  loc_D5DCD6: MemLdPr global_64
  loc_D5DCD9:  = Me.Fields
  loc_D5DCDE: FLdPr var_380
  loc_D5DCE1: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DCE6: FLdPr var_3E0
  loc_D5DCE9:  = Me.Value
  loc_D5DCEE: FLdRfVar var_6AC
  loc_D5DCF1: ConcatVar var_6BC
  loc_D5DCF5: LitVarStr var_34C, " AND ctacte.MoviCtct = "
  loc_D5DCFA: ConcatVar var_6CC
  loc_D5DCFE: FLdRfVar var_6DC
  loc_D5DD01: FLdRfVar var_42C
  loc_D5DD04: LitVarStr var_35C, "MoviCtct"
  loc_D5DD09: PopAdLdVar
  loc_D5DD0A: FLdRfVar var_414
  loc_D5DD0D: FLdPr Me
  loc_D5DD10: MemLdPr global_64
  loc_D5DD13:  = Me.Fields
  loc_D5DD18: FLdPr var_414
  loc_D5DD1B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DD20: FLdPr var_42C
  loc_D5DD23:  = Me.Value
  loc_D5DD28: FLdRfVar var_6DC
  loc_D5DD2B: ConcatVar var_6EC
  loc_D5DD2F: LitVarStr var_36C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_D5DD34: ConcatVar var_6FC
  loc_D5DD38: CStrVarVal var_21C
  loc_D5DD3C: Call EjecutarRsCls2(from_stack_1v)
  loc_D5DD41: FFree1Str var_21C
  loc_D5DD44: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = ""
  loc_D5DD5B: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = ""
  loc_D5DD80: FLdRfVar var_230
  loc_D5DD83: FLdPr Me
  loc_D5DD86: MemLdPr global_68
  loc_D5DD89:  = Me.RecordCount
  loc_D5DD8E: ILdRf var_230
  loc_D5DD91: LitI4 1
  loc_D5DD96: EqI4
  loc_D5DD97: BranchF loc_D600A9
  loc_D5DD9A: LitStr " UPDATE ctacte SET CodiFapa = "
  loc_D5DD9D: ILdRf var_B4
  loc_D5DDA0: CStrI4
  loc_D5DDA2: FStStrNoPop var_21C
  loc_D5DDA5: ConcatStr
  loc_D5DDA6: FStStrNoPop var_220
  loc_D5DDA9: LitStr " WHERE CodiOfic = "
  loc_D5DDAC: ConcatStr
  loc_D5DDAD: CVarStr var_218
  loc_D5DDB0: FLdRfVar var_208
  loc_D5DDB3: FLdRfVar var_238
  loc_D5DDB6: LitVarStr var_1F8, "CodiOfic"
  loc_D5DDBB: PopAdLdVar
  loc_D5DDBC: FLdRfVar var_234
  loc_D5DDBF: FLdPr Me
  loc_D5DDC2: MemLdPr global_68
  loc_D5DDC5:  = Me.Fields
  loc_D5DDCA: FLdPr var_234
  loc_D5DDCD: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DDD2: FLdPr var_238
  loc_D5DDD5:  = Me.Value
  loc_D5DDDA: FLdRfVar var_208
  loc_D5DDDD: ConcatVar var_27C
  loc_D5DDE1: LitVarStr var_24C, " AND CuenCtct = '"
  loc_D5DDE6: ConcatVar var_2B0
  loc_D5DDEA: FLdRfVar var_2E4
  loc_D5DDED: FLdRfVar var_2A0
  loc_D5DDF0: LitVarStr var_25C, "CuenCtct"
  loc_D5DDF5: PopAdLdVar
  loc_D5DDF6: FLdRfVar var_290
  loc_D5DDF9: FLdPr Me
  loc_D5DDFC: MemLdPr global_68
  loc_D5DDFF:  = Me.Fields
  loc_D5DE04: FLdPr var_290
  loc_D5DE07: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DE0C: FLdPr var_2A0
  loc_D5DE0F:  = Me.Value
  loc_D5DE14: FLdRfVar var_2E4
  loc_D5DE17: ConcatVar var_330
  loc_D5DE1B: LitVarStr var_26C, "' AND PeriCtct = "
  loc_D5DE20: ConcatVar var_390
  loc_D5DE24: FLdRfVar var_3F0
  loc_D5DE27: FLdRfVar var_2F4
  loc_D5DE2A: LitVarStr var_2C0, "PeriCtct"
  loc_D5DE2F: PopAdLdVar
  loc_D5DE30: FLdRfVar var_2D4
  loc_D5DE33: FLdPr Me
  loc_D5DE36: MemLdPr global_68
  loc_D5DE39:  = Me.Fields
  loc_D5DE3E: FLdPr var_2D4
  loc_D5DE41: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DE46: FLdPr var_2F4
  loc_D5DE49:  = Me.Value
  loc_D5DE4E: FLdRfVar var_3F0
  loc_D5DE51: ConcatVar var_5FC
  loc_D5DE55: LitVarStr var_2D0, " AND BimeCtct = "
  loc_D5DE5A: ConcatVar var_64C
  loc_D5DE5E: FLdRfVar var_69C
  loc_D5DE61: FLdRfVar var_3E0
  loc_D5DE64: LitVarStr var_310, "BimeCtct"
  loc_D5DE69: PopAdLdVar
  loc_D5DE6A: FLdRfVar var_380
  loc_D5DE6D: FLdPr Me
  loc_D5DE70: MemLdPr global_68
  loc_D5DE73:  = Me.Fields
  loc_D5DE78: FLdPr var_380
  loc_D5DE7B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DE80: FLdPr var_3E0
  loc_D5DE83:  = Me.Value
  loc_D5DE88: FLdRfVar var_69C
  loc_D5DE8B: ConcatVar var_6AC
  loc_D5DE8F: LitVarStr var_320, " AND NumeCtct = "
  loc_D5DE94: ConcatVar var_6BC
  loc_D5DE98: FLdRfVar var_6CC
  loc_D5DE9B: FLdRfVar var_42C
  loc_D5DE9E: LitVarStr var_34C, "NumeCtct"
  loc_D5DEA3: PopAdLdVar
  loc_D5DEA4: FLdRfVar var_414
  loc_D5DEA7: FLdPr Me
  loc_D5DEAA: MemLdPr global_68
  loc_D5DEAD:  = Me.Fields
  loc_D5DEB2: FLdPr var_414
  loc_D5DEB5: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DEBA: FLdPr var_42C
  loc_D5DEBD:  = Me.Value
  loc_D5DEC2: FLdRfVar var_6CC
  loc_D5DEC5: ConcatVar var_6DC
  loc_D5DEC9: LitVarStr var_35C, ";"
  loc_D5DECE: ConcatVar var_6EC
  loc_D5DED2: CStrVarVal var_224
  loc_D5DED6: Call EjecutarRsCls(from_stack_1v)
  loc_D5DEDB: FFreeStr var_21C = "": var_220 = ""
  loc_D5DEE4: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = ""
  loc_D5DEFB: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = ""
  loc_D5DF1E: LitStr "SELECT * FROM facictacte "
  loc_D5DF21: LitStr " WHERE CodiFapa = "
  loc_D5DF24: ConcatStr
  loc_D5DF25: FStStrNoPop var_21C
  loc_D5DF28: ILdRf var_B4
  loc_D5DF2B: CStrI4
  loc_D5DF2D: FStStrNoPop var_220
  loc_D5DF30: ConcatStr
  loc_D5DF31: FStStrNoPop var_224
  loc_D5DF34: LitStr " AND CuotDefa = "
  loc_D5DF37: ConcatStr
  loc_D5DF38: FStStrNoPop var_228
  loc_D5DF3B: FLdI2 var_9E
  loc_D5DF3E: CI4UI1
  loc_D5DF3F: CVarI4
  loc_D5DF43: PopAdLdVar
  loc_D5DF44: LitVarI4
  loc_D5DF4C: PopAdLdVar
  loc_D5DF4D: ImpAdLdRf MemVar_D93E08
  loc_D5DF50: NewIfNullPr frmPlanesdePago
  loc_D5DF53: VCallAd Control_ID_
  loc_D5DF56: FStAdFunc var_234
  loc_D5DF59: FLdPr var_234
  loc_D5DF5C: LateIdCallLdVar
  loc_D5DF66: CStrVarTmp
  loc_D5DF67: FStStrNoPop var_22C
  loc_D5DF6A: ConcatStr
  loc_D5DF6B: FStStrNoPop var_280
  loc_D5DF6E: LitStr " AND CodiOfic = "
  loc_D5DF71: ConcatStr
  loc_D5DF72: CVarStr var_27C
  loc_D5DF75: FLdRfVar var_218
  loc_D5DF78: FLdRfVar var_290
  loc_D5DF7B: LitVarStr var_2C0, "CodiOfic"
  loc_D5DF80: PopAdLdVar
  loc_D5DF81: FLdRfVar var_238
  loc_D5DF84: FLdPr Me
  loc_D5DF87: MemLdPr global_68
  loc_D5DF8A:  = frmPlanesdePago.Recordset15.Fields
  loc_D5DF8F: FLdPr var_238
  loc_D5DF92: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DF97: FLdPr var_290
  loc_D5DF9A:  = Me.Value
  loc_D5DF9F: FLdRfVar var_218
  loc_D5DFA2: ConcatVar var_2B0
  loc_D5DFA6: LitVarStr var_2D0, " AND CuenCtct = '"
  loc_D5DFAB: ConcatVar var_2E4
  loc_D5DFAF: FLdRfVar var_330
  loc_D5DFB2: FLdRfVar var_2D4
  loc_D5DFB5: LitVarStr var_310, "CuenCtct"
  loc_D5DFBA: PopAdLdVar
  loc_D5DFBB: FLdRfVar var_2A0
  loc_D5DFBE: FLdPr Me
  loc_D5DFC1: MemLdPr global_68
  loc_D5DFC4:  = Me.Fields
  loc_D5DFC9: FLdPr var_2A0
  loc_D5DFCC: from_stack_2 = Me.Item(from_stack_1)
  loc_D5DFD1: FLdPr var_2D4
  loc_D5DFD4:  = Me.Value
  loc_D5DFD9: FLdRfVar var_330
  loc_D5DFDC: ConcatVar var_390
  loc_D5DFE0: LitVarStr var_320, "'"
  loc_D5DFE5: ConcatVar var_3F0
  loc_D5DFE9: LitVarStr var_34C, " AND PeriCtct = "
  loc_D5DFEE: ConcatVar var_5FC
  loc_D5DFF2: FLdRfVar var_64C
  loc_D5DFF5: FLdRfVar var_380
  loc_D5DFF8: LitVarStr var_35C, "PeriCtct"
  loc_D5DFFD: PopAdLdVar
  loc_D5DFFE: FLdRfVar var_2F4
  loc_D5E001: FLdPr Me
  loc_D5E004: MemLdPr global_68
  loc_D5E007:  = Me.Fields
  loc_D5E00C: FLdPr var_2F4
  loc_D5E00F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E014: FLdPr var_380
  loc_D5E017:  = Me.Value
  loc_D5E01C: FLdRfVar var_64C
  loc_D5E01F: ConcatVar var_69C
  loc_D5E023: LitVarStr var_36C, " AND BimeCtct = "
  loc_D5E028: ConcatVar var_6AC
  loc_D5E02C: FLdRfVar var_6BC
  loc_D5E02F: FLdRfVar var_414
  loc_D5E032: LitVarStr var_37C, "BimeCtct"
  loc_D5E037: PopAdLdVar
  loc_D5E038: FLdRfVar var_3E0
  loc_D5E03B: FLdPr Me
  loc_D5E03E: MemLdPr global_68
  loc_D5E041:  = Me.Fields
  loc_D5E046: FLdPr var_3E0
  loc_D5E049: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E04E: FLdPr var_414
  loc_D5E051:  = Me.Value
  loc_D5E056: FLdRfVar var_6BC
  loc_D5E059: ConcatVar var_6CC
  loc_D5E05D: LitVarStr var_3AC, " AND NumeCtct = "
  loc_D5E062: ConcatVar var_6DC
  loc_D5E066: FLdRfVar var_6EC
  loc_D5E069: FLdRfVar var_444
  loc_D5E06C: LitVarStr var_3BC, "NumeCtct"
  loc_D5E071: PopAdLdVar
  loc_D5E072: FLdRfVar var_42C
  loc_D5E075: FLdPr Me
  loc_D5E078: MemLdPr global_68
  loc_D5E07B:  = Me.Fields
  loc_D5E080: FLdPr var_42C
  loc_D5E083: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E088: FLdPr var_444
  loc_D5E08B:  = Me.Value
  loc_D5E090: FLdRfVar var_6EC
  loc_D5E093: ConcatVar var_6FC
  loc_D5E097: LitVarStr var_3CC, " AND MoviCtct = "
  loc_D5E09C: ConcatVar var_70C
  loc_D5E0A0: FLdRfVar var_71C
  loc_D5E0A3: FLdRfVar var_474
  loc_D5E0A6: LitVarStr var_3DC, "MoviCtct"
  loc_D5E0AB: PopAdLdVar
  loc_D5E0AC: FLdRfVar var_45C
  loc_D5E0AF: FLdPr Me
  loc_D5E0B2: MemLdPr global_68
  loc_D5E0B5:  = Me.Fields
  loc_D5E0BA: FLdPr var_45C
  loc_D5E0BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E0C2: FLdPr var_474
  loc_D5E0C5:  = Me.Value
  loc_D5E0CA: FLdRfVar var_71C
  loc_D5E0CD: ConcatVar var_72C
  loc_D5E0D1: LitVarStr var_52C, " ORDER BY CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D5E0D6: ConcatVar var_73C
  loc_D5E0DA: CStrVarVal var_284
  loc_D5E0DE: Call EjecutarRsCls3(from_stack_1v)
  loc_D5E0E3: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = ""
  loc_D5E0F4: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = ""
  loc_D5E111: FFreeVar var_208 = "": var_27C = "": var_218 = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = ""
  loc_D5E13E: FLdRfVar var_230
  loc_D5E141: FLdPr Me
  loc_D5E144: MemLdPr global_72
  loc_D5E147:  = Me.RecordCount
  loc_D5E14C: ILdRf var_230
  loc_D5E14F: LitI4 0
  loc_D5E154: EqI4
  loc_D5E155: BranchF loc_D5E41C
  loc_D5E158: LitStr " INSERT INTO facictacte (CodiFapa,CuotDefa,CodiOfic,CuenCtct,PeriCtct,BimeCtct,NumeCtct,MoviCtct,CodiConc,CapiFacc,SaldFacc) VALUES ("
  loc_D5E15B: ILdRf var_B4
  loc_D5E15E: CStrI4
  loc_D5E160: FStStrNoPop var_21C
  loc_D5E163: ConcatStr
  loc_D5E164: FStStrNoPop var_220
  loc_D5E167: LitStr ","
  loc_D5E16A: ConcatStr
  loc_D5E16B: FStStrNoPop var_224
  loc_D5E16E: FLdI2 var_9E
  loc_D5E171: CI4UI1
  loc_D5E172: CVarI4
  loc_D5E176: PopAdLdVar
  loc_D5E177: LitVarI4
  loc_D5E17F: PopAdLdVar
  loc_D5E180: ImpAdLdRf MemVar_D93E08
  loc_D5E183: NewIfNullPr frmPlanesdePago
  loc_D5E186: VCallAd Control_ID_
  loc_D5E189: FStAdFunc var_234
  loc_D5E18C: FLdPr var_234
  loc_D5E18F: LateIdCallLdVar
  loc_D5E199: CStrVarTmp
  loc_D5E19A: FStStrNoPop var_228
  loc_D5E19D: ConcatStr
  loc_D5E19E: FStStrNoPop var_22C
  loc_D5E1A1: LitStr ","
  loc_D5E1A4: ConcatStr
  loc_D5E1A5: CVarStr var_27C
  loc_D5E1A8: FLdRfVar var_218
  loc_D5E1AB: FLdRfVar var_290
  loc_D5E1AE: LitVarStr var_2C0, "CodiOfic"
  loc_D5E1B3: PopAdLdVar
  loc_D5E1B4: FLdRfVar var_238
  loc_D5E1B7: FLdPr Me
  loc_D5E1BA: MemLdPr global_68
  loc_D5E1BD:  = frmPlanesdePago.Recordset15.Fields
  loc_D5E1C2: FLdPr var_238
  loc_D5E1C5: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E1CA: FLdPr var_290
  loc_D5E1CD:  = Me.Value
  loc_D5E1D2: FLdRfVar var_218
  loc_D5E1D5: ConcatVar var_2B0
  loc_D5E1D9: LitVarStr var_2D0, ",'"
  loc_D5E1DE: ConcatVar var_2E4
  loc_D5E1E2: FLdRfVar var_330
  loc_D5E1E5: FLdRfVar var_2D4
  loc_D5E1E8: LitVarStr var_310, "CuenCtct"
  loc_D5E1ED: PopAdLdVar
  loc_D5E1EE: FLdRfVar var_2A0
  loc_D5E1F1: FLdPr Me
  loc_D5E1F4: MemLdPr global_68
  loc_D5E1F7:  = Me.Fields
  loc_D5E1FC: FLdPr var_2A0
  loc_D5E1FF: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E204: FLdPr var_2D4
  loc_D5E207:  = Me.Value
  loc_D5E20C: FLdRfVar var_330
  loc_D5E20F: ConcatVar var_390
  loc_D5E213: LitVarStr var_320, "',"
  loc_D5E218: ConcatVar var_3F0
  loc_D5E21C: FLdRfVar var_5FC
  loc_D5E21F: FLdRfVar var_380
  loc_D5E222: LitVarStr var_34C, "PeriCtct"
  loc_D5E227: PopAdLdVar
  loc_D5E228: FLdRfVar var_2F4
  loc_D5E22B: FLdPr Me
  loc_D5E22E: MemLdPr global_68
  loc_D5E231:  = Me.Fields
  loc_D5E236: FLdPr var_2F4
  loc_D5E239: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E23E: FLdPr var_380
  loc_D5E241:  = Me.Value
  loc_D5E246: FLdRfVar var_5FC
  loc_D5E249: ConcatVar var_64C
  loc_D5E24D: LitVarStr var_35C, ","
  loc_D5E252: ConcatVar var_69C
  loc_D5E256: FLdRfVar var_6AC
  loc_D5E259: FLdRfVar var_414
  loc_D5E25C: LitVarStr var_36C, "BimeCtct"
  loc_D5E261: PopAdLdVar
  loc_D5E262: FLdRfVar var_3E0
  loc_D5E265: FLdPr Me
  loc_D5E268: MemLdPr global_68
  loc_D5E26B:  = Me.Fields
  loc_D5E270: FLdPr var_3E0
  loc_D5E273: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E278: FLdPr var_414
  loc_D5E27B:  = Me.Value
  loc_D5E280: FLdRfVar var_6AC
  loc_D5E283: ConcatVar var_6BC
  loc_D5E287: LitVarStr var_37C, ","
  loc_D5E28C: ConcatVar var_6CC
  loc_D5E290: FLdRfVar var_6DC
  loc_D5E293: FLdRfVar var_444
  loc_D5E296: LitVarStr var_3AC, "NumeCtct"
  loc_D5E29B: PopAdLdVar
  loc_D5E29C: FLdRfVar var_42C
  loc_D5E29F: FLdPr Me
  loc_D5E2A2: MemLdPr global_68
  loc_D5E2A5:  = Me.Fields
  loc_D5E2AA: FLdPr var_42C
  loc_D5E2AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E2B2: FLdPr var_444
  loc_D5E2B5:  = Me.Value
  loc_D5E2BA: FLdRfVar var_6DC
  loc_D5E2BD: ConcatVar var_6EC
  loc_D5E2C1: LitVarStr var_3BC, ","
  loc_D5E2C6: ConcatVar var_6FC
  loc_D5E2CA: FLdRfVar var_70C
  loc_D5E2CD: FLdRfVar var_474
  loc_D5E2D0: LitVarStr var_3CC, "MoviCtct"
  loc_D5E2D5: PopAdLdVar
  loc_D5E2D6: FLdRfVar var_45C
  loc_D5E2D9: FLdPr Me
  loc_D5E2DC: MemLdPr global_68
  loc_D5E2DF:  = Me.Fields
  loc_D5E2E4: FLdPr var_45C
  loc_D5E2E7: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E2EC: FLdPr var_474
  loc_D5E2EF:  = Me.Value
  loc_D5E2F4: FLdRfVar var_70C
  loc_D5E2F7: ConcatVar var_71C
  loc_D5E2FB: LitVarStr var_3DC, ",'"
  loc_D5E300: ConcatVar var_72C
  loc_D5E304: FLdRfVar var_73C
  loc_D5E307: FLdRfVar var_4A4
  loc_D5E30A: LitVarStr var_52C, "CodiConc"
  loc_D5E30F: PopAdLdVar
  loc_D5E310: FLdRfVar var_48C
  loc_D5E313: FLdPr Me
  loc_D5E316: MemLdPr global_68
  loc_D5E319:  = Me.Fields
  loc_D5E31E: FLdPr var_48C
  loc_D5E321: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E326: FLdPr var_4A4
  loc_D5E329:  = Me.Value
  loc_D5E32E: FLdRfVar var_73C
  loc_D5E331: ConcatVar var_74C
  loc_D5E335: LitVarStr var_53C, "',"
  loc_D5E33A: ConcatVar var_75C
  loc_D5E33E: LitI4 0
  loc_D5E343: LitI4 -1
  loc_D5E348: LitI4 1
  loc_D5E34D: LitStr "."
  loc_D5E350: LitStr ","
  loc_D5E353: FLdFPR8 var_C4
  loc_D5E356: CStrR8
  loc_D5E358: FStStrNoPop var_280
  loc_D5E35B: ImpAdCallI2 Replace(, , , , , )
  loc_D5E360: CVarStr var_78C
  loc_D5E363: ConcatVar var_79C
  loc_D5E367: LitVarStr var_54C, ","
  loc_D5E36C: ConcatVar var_7AC
  loc_D5E370: LitI4 0
  loc_D5E375: LitI4 -1
  loc_D5E37A: LitI4 1
  loc_D5E37F: LitStr "."
  loc_D5E382: LitStr ","
  loc_D5E385: FLdFPR8 var_C4
  loc_D5E388: CStrR8
  loc_D5E38A: FStStrNoPop var_284
  loc_D5E38D: ImpAdCallI2 Replace(, , , , , )
  loc_D5E392: CVarStr var_7CC
  loc_D5E395: ConcatVar var_81C
  loc_D5E399: LitVarStr var_55C, ");"
  loc_D5E39E: ConcatVar var_82C
  loc_D5E3A2: CStrVarVal var_288
  loc_D5E3A6: Call EjecutarRsCls(from_stack_1v)
  loc_D5E3AB: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = ""
  loc_D5E3BE: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = ""
  loc_D5E3DF: FFreeVar var_208 = "": var_27C = "": var_218 = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = ""
  loc_D5E41C: FLdI2 var_9E
  loc_D5E41F: LitI2_Byte 1
  loc_D5E421: EqI2
  loc_D5E422: FLdI2 sCodiConc
  loc_D5E425: LitI2_Byte &HFF
  loc_D5E427: EqI2
  loc_D5E428: OrI4
  loc_D5E429: BranchF loc_D600A9
  loc_D5E42C: FLdI2 var_9E
  loc_D5E42F: CI4UI1
  loc_D5E430: CVarI4
  loc_D5E434: PopAdLdVar
  loc_D5E435: LitVarI4
  loc_D5E43D: PopAdLdVar
  loc_D5E43E: ImpAdLdRf MemVar_D93E08
  loc_D5E441: NewIfNullPr frmPlanesdePago
  loc_D5E444: VCallAd Control_ID_
  loc_D5E447: FStAdFunc var_234
  loc_D5E44A: FLdPr var_234
  loc_D5E44D: LateIdCallLdVar
  loc_D5E457: PopAd
  loc_D5E459: LitI4 2
  loc_D5E45E: FLdFPR8 var_C4
  loc_D5E461: LitI2_Byte &H64
  loc_D5E463: CR8I2
  loc_D5E464: MulR8
  loc_D5E465: FLdRfVar var_208
  loc_D5E468: CStrVarTmp
  loc_D5E469: FStStrNoPop var_21C
  loc_D5E46C: CR8Str
  loc_D5E46E: DivR8
  loc_D5E46F: CVarR8
  loc_D5E473: FLdRfVar var_27C
  loc_D5E476: ImpAdCallFPR4  = Round(, )
  loc_D5E47B: FLdRfVar var_27C
  loc_D5E47E: CR4Var
  loc_D5E47F: FStFPR8 var_EC
  loc_D5E482: FFree1Str var_21C
  loc_D5E485: FFree1Ad var_234
  loc_D5E488: FFreeVar var_208 = "": var_218 = ""
  loc_D5E491: FLdI2 var_9E
  loc_D5E494: CI4UI1
  loc_D5E495: CVarI4
  loc_D5E499: PopAdLdVar
  loc_D5E49A: LitVarI4
  loc_D5E4A2: PopAdLdVar
  loc_D5E4A3: ImpAdLdRf MemVar_D93E08
  loc_D5E4A6: NewIfNullPr frmPlanesdePago
  loc_D5E4A9: VCallAd Control_ID_
  loc_D5E4AC: FStAdFunc var_234
  loc_D5E4AF: FLdPr var_234
  loc_D5E4B2: LateIdCallLdVar
  loc_D5E4BC: PopAd
  loc_D5E4BE: LitI4 2
  loc_D5E4C3: FLdRfVar var_208
  loc_D5E4C6: CStrVarTmp
  loc_D5E4C7: FStStrNoPop var_21C
  loc_D5E4CA: CR8Str
  loc_D5E4CC: FLdFPR8 var_EC
  loc_D5E4CF: MulR8
  loc_D5E4D0: LitI2_Byte &H64
  loc_D5E4D2: CR8I2
  loc_D5E4D3: DivR8
  loc_D5E4D4: CVarR8
  loc_D5E4D8: FLdRfVar var_27C
  loc_D5E4DB: ImpAdCallFPR4  = Round(, )
  loc_D5E4E0: FLdRfVar var_27C
  loc_D5E4E3: CR4Var
  loc_D5E4E4: FStFPR8 var_1D0
  loc_D5E4E7: FFree1Str var_21C
  loc_D5E4EA: FFree1Ad var_234
  loc_D5E4ED: FFreeVar var_208 = "": var_218 = ""
  loc_D5E4F6: FLdFPR8 var_F4
  loc_D5E4F9: FLdFPR8 var_1D0
  loc_D5E4FC: AddR8
  loc_D5E4FD: FStFPR8 var_F4
  loc_D5E500: FLdFPR8 var_BC
  loc_D5E503: LitI2_Byte 0
  loc_D5E505: CR8I2
  loc_D5E506: EqR4
  loc_D5E507: BranchF loc_D5E62D
  loc_D5E50A: FLdI2 var_9E
  loc_D5E50D: CI4UI1
  loc_D5E50E: CVarI4
  loc_D5E512: PopAdLdVar
  loc_D5E513: LitVarI4
  loc_D5E51B: PopAdLdVar
  loc_D5E51C: ImpAdLdRf MemVar_D93E08
  loc_D5E51F: NewIfNullPr frmPlanesdePago
  loc_D5E522: VCallAd Control_ID_
  loc_D5E525: FStAdFunc var_234
  loc_D5E528: FLdPr var_234
  loc_D5E52B: LateIdCallLdVar
  loc_D5E535: PopAd
  loc_D5E537: FLdFPR8 var_F4
  loc_D5E53A: FLdRfVar var_208
  loc_D5E53D: CStrVarTmp
  loc_D5E53E: FStStrNoPop var_21C
  loc_D5E541: CR8Str
  loc_D5E543: GtR4
  loc_D5E544: FFree1Str var_21C
  loc_D5E547: FFree1Ad var_234
  loc_D5E54A: FFree1Var var_208 = ""
  loc_D5E54D: BranchF loc_D5E59D
  loc_D5E550: FLdI2 var_9E
  loc_D5E553: CI4UI1
  loc_D5E554: CVarI4
  loc_D5E558: PopAdLdVar
  loc_D5E559: LitVarI4
  loc_D5E561: PopAdLdVar
  loc_D5E562: ImpAdLdRf MemVar_D93E08
  loc_D5E565: NewIfNullPr frmPlanesdePago
  loc_D5E568: VCallAd Control_ID_
  loc_D5E56B: FStAdFunc var_234
  loc_D5E56E: FLdPr var_234
  loc_D5E571: LateIdCallLdVar
  loc_D5E57B: PopAd
  loc_D5E57D: FLdFPR8 var_1D0
  loc_D5E580: FLdFPR8 var_F4
  loc_D5E583: FLdRfVar var_208
  loc_D5E586: CStrVarTmp
  loc_D5E587: FStStrNoPop var_21C
  loc_D5E58A: CR8Str
  loc_D5E58C: SubR4
  loc_D5E58D: SubR4
  loc_D5E58E: FStFPR8 var_1D0
  loc_D5E591: FFree1Str var_21C
  loc_D5E594: FFree1Ad var_234
  loc_D5E597: FFree1Var var_208 = ""
  loc_D5E59A: Branch loc_D5E62D
  loc_D5E59D: FLdI2 var_9E
  loc_D5E5A0: CI4UI1
  loc_D5E5A1: CVarI4
  loc_D5E5A5: PopAdLdVar
  loc_D5E5A6: LitVarI4
  loc_D5E5AE: PopAdLdVar
  loc_D5E5AF: ImpAdLdRf MemVar_D93E08
  loc_D5E5B2: NewIfNullPr frmPlanesdePago
  loc_D5E5B5: VCallAd Control_ID_
  loc_D5E5B8: FStAdFunc var_234
  loc_D5E5BB: FLdPr var_234
  loc_D5E5BE: LateIdCallLdVar
  loc_D5E5C8: PopAd
  loc_D5E5CA: FLdFPR8 var_F4
  loc_D5E5CD: FLdRfVar var_208
  loc_D5E5D0: CStrVarTmp
  loc_D5E5D1: FStStrNoPop var_21C
  loc_D5E5D4: CR8Str
  loc_D5E5D6: LtR8
  loc_D5E5D7: FFree1Str var_21C
  loc_D5E5DA: FFree1Ad var_234
  loc_D5E5DD: FFree1Var var_208 = ""
  loc_D5E5E0: BranchF loc_D5E62D
  loc_D5E5E3: FLdI2 var_9E
  loc_D5E5E6: CI4UI1
  loc_D5E5E7: CVarI4
  loc_D5E5EB: PopAdLdVar
  loc_D5E5EC: LitVarI4
  loc_D5E5F4: PopAdLdVar
  loc_D5E5F5: ImpAdLdRf MemVar_D93E08
  loc_D5E5F8: NewIfNullPr frmPlanesdePago
  loc_D5E5FB: VCallAd Control_ID_
  loc_D5E5FE: FStAdFunc var_234
  loc_D5E601: FLdPr var_234
  loc_D5E604: LateIdCallLdVar
  loc_D5E60E: PopAd
  loc_D5E610: FLdFPR8 var_1D0
  loc_D5E613: FLdRfVar var_208
  loc_D5E616: CStrVarTmp
  loc_D5E617: FStStrNoPop var_21C
  loc_D5E61A: CR8Str
  loc_D5E61C: FLdFPR8 var_F4
  loc_D5E61F: SubR4
  loc_D5E620: AddR8
  loc_D5E621: FStFPR8 var_1D0
  loc_D5E624: FFree1Str var_21C
  loc_D5E627: FFree1Ad var_234
  loc_D5E62A: FFree1Var var_208 = ""
  loc_D5E62D: LitI4 2
  loc_D5E632: FLdFPR8 var_C4
  loc_D5E635: FLdFPR8 var_1D0
  loc_D5E638: SubR4
  loc_D5E639: FLdFPR8 var_1C0
  loc_D5E63C: AddR8
  loc_D5E63D: FLdFPR8 var_1C8
  loc_D5E640: SubR4
  loc_D5E641: FLdFPR8 var_1D8
  loc_D5E644: AddR8
  loc_D5E645: CVarR8
  loc_D5E649: FLdRfVar var_218
  loc_D5E64C: ImpAdCallFPR4  = Round(, )
  loc_D5E651: FLdRfVar var_218
  loc_D5E654: CR4Var
  loc_D5E655: FStFPR8 var_1E8
  loc_D5E658: FFreeVar var_208 = ""
  loc_D5E65F: LitI4 2
  loc_D5E664: FLdFPR8 var_17C
  loc_D5E667: FLdFPR8 var_C4
  loc_D5E66A: AddR8
  loc_D5E66B: CVarR8
  loc_D5E66F: FLdRfVar var_218
  loc_D5E672: ImpAdCallFPR4  = Round(, )
  loc_D5E677: FLdRfVar var_218
  loc_D5E67A: CR4Var
  loc_D5E67B: FStFPR8 var_17C
  loc_D5E67E: FFreeVar var_208 = ""
  loc_D5E685: LitI4 2
  loc_D5E68A: FLdFPR8 var_184
  loc_D5E68D: FLdFPR8 var_1D0
  loc_D5E690: AddR8
  loc_D5E691: FLdFPR8 var_1C8
  loc_D5E694: AddR8
  loc_D5E695: CVarR8
  loc_D5E699: FLdRfVar var_218
  loc_D5E69C: ImpAdCallFPR4  = Round(, )
  loc_D5E6A1: FLdRfVar var_218
  loc_D5E6A4: CR4Var
  loc_D5E6A5: FStFPR8 var_184
  loc_D5E6A8: FFreeVar var_208 = ""
  loc_D5E6AF: LitI4 2
  loc_D5E6B4: FLdFPR8 var_18C
  loc_D5E6B7: FLdFPR8 var_1C0
  loc_D5E6BA: AddR8
  loc_D5E6BB: CVarR8
  loc_D5E6BF: FLdRfVar var_218
  loc_D5E6C2: ImpAdCallFPR4  = Round(, )
  loc_D5E6C7: FLdRfVar var_218
  loc_D5E6CA: CR4Var
  loc_D5E6CB: FStFPR8 var_18C
  loc_D5E6CE: FFreeVar var_208 = ""
  loc_D5E6D5: LitI4 2
  loc_D5E6DA: FLdFPR8 var_194
  loc_D5E6DD: FLdFPR8 var_1D8
  loc_D5E6E0: AddR8
  loc_D5E6E1: CVarR8
  loc_D5E6E5: FLdRfVar var_218
  loc_D5E6E8: ImpAdCallFPR4  = Round(, )
  loc_D5E6ED: FLdRfVar var_218
  loc_D5E6F0: CR4Var
  loc_D5E6F1: FStFPR8 var_194
  loc_D5E6F4: FFreeVar var_208 = ""
  loc_D5E6FB: LitI4 2
  loc_D5E700: FLdFPR8 var_1A4
  loc_D5E703: FLdFPR8 var_1E8
  loc_D5E706: AddR8
  loc_D5E707: CVarR8
  loc_D5E70B: FLdRfVar var_218
  loc_D5E70E: ImpAdCallFPR4  = Round(, )
  loc_D5E713: FLdRfVar var_218
  loc_D5E716: CR4Var
  loc_D5E717: FStFPR8 var_1A4
  loc_D5E71A: FFreeVar var_208 = ""
  loc_D5E721: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_D5E724: LitStr " VALUES ("
  loc_D5E727: ConcatStr
  loc_D5E728: FStStrNoPop var_21C
  loc_D5E72B: FLdI2 var_AA
  loc_D5E72E: CStrUI1
  loc_D5E730: FStStrNoPop var_220
  loc_D5E733: ConcatStr
  loc_D5E734: FStStrNoPop var_224
  loc_D5E737: LitStr ","
  loc_D5E73A: ConcatStr
  loc_D5E73B: FStStrNoPop var_228
  loc_D5E73E: ILdRf var_B0
  loc_D5E741: CStrI4
  loc_D5E743: FStStrNoPop var_22C
  loc_D5E746: ConcatStr
  loc_D5E747: FStStrNoPop var_280
  loc_D5E74A: LitStr ","
  loc_D5E74D: ConcatStr
  loc_D5E74E: CVarStr var_218
  loc_D5E751: FLdRfVar var_208
  loc_D5E754: FLdRfVar var_238
  loc_D5E757: LitVarStr var_1F8, "PeriCtct"
  loc_D5E75C: PopAdLdVar
  loc_D5E75D: FLdRfVar var_234
  loc_D5E760: FLdPr Me
  loc_D5E763: MemLdPr global_68
  loc_D5E766:  = frmPlanesdePago.Recordset15.Fields
  loc_D5E76B: FLdPr var_234
  loc_D5E76E: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E773: FLdPr var_238
  loc_D5E776:  = Me.Value
  loc_D5E77B: FLdRfVar var_208
  loc_D5E77E: ConcatVar var_27C
  loc_D5E782: LitVarStr var_24C, ","
  loc_D5E787: ConcatVar var_2B0
  loc_D5E78B: FLdRfVar var_2E4
  loc_D5E78E: FLdRfVar var_2A0
  loc_D5E791: LitVarStr var_25C, "BimeCtct"
  loc_D5E796: PopAdLdVar
  loc_D5E797: FLdRfVar var_290
  loc_D5E79A: FLdPr Me
  loc_D5E79D: MemLdPr global_68
  loc_D5E7A0:  = Me.Fields
  loc_D5E7A5: FLdPr var_290
  loc_D5E7A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E7AD: FLdPr var_2A0
  loc_D5E7B0:  = Me.Value
  loc_D5E7B5: FLdRfVar var_2E4
  loc_D5E7B8: ConcatVar var_330
  loc_D5E7BC: LitVarStr var_26C, ","
  loc_D5E7C1: ConcatVar var_390
  loc_D5E7C5: FLdRfVar var_3F0
  loc_D5E7C8: FLdRfVar var_2F4
  loc_D5E7CB: LitVarStr var_2C0, "NumeCtct"
  loc_D5E7D0: PopAdLdVar
  loc_D5E7D1: FLdRfVar var_2D4
  loc_D5E7D4: FLdPr Me
  loc_D5E7D7: MemLdPr global_68
  loc_D5E7DA:  = Me.Fields
  loc_D5E7DF: FLdPr var_2D4
  loc_D5E7E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E7E7: FLdPr var_2F4
  loc_D5E7EA:  = Me.Value
  loc_D5E7EF: FLdRfVar var_3F0
  loc_D5E7F2: ConcatVar var_5FC
  loc_D5E7F6: LitVarStr var_2D0, ","
  loc_D5E7FB: ConcatVar var_64C
  loc_D5E7FF: FLdRfVar var_69C
  loc_D5E802: FLdRfVar var_3E0
  loc_D5E805: LitVarStr var_310, "MoviCtct"
  loc_D5E80A: PopAdLdVar
  loc_D5E80B: FLdRfVar var_380
  loc_D5E80E: FLdPr Me
  loc_D5E811: MemLdPr global_68
  loc_D5E814:  = Me.Fields
  loc_D5E819: FLdPr var_380
  loc_D5E81C: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E821: FLdPr var_3E0
  loc_D5E824:  = Me.Value
  loc_D5E829: FLdRfVar var_69C
  loc_D5E82C: ConcatVar var_6AC
  loc_D5E830: LitVarStr var_320, ",1,"
  loc_D5E835: ConcatVar var_6BC
  loc_D5E839: FLdRfVar var_6CC
  loc_D5E83C: FLdRfVar var_42C
  loc_D5E83F: LitVarStr var_34C, "CodiOfic"
  loc_D5E844: PopAdLdVar
  loc_D5E845: FLdRfVar var_414
  loc_D5E848: FLdPr Me
  loc_D5E84B: MemLdPr global_68
  loc_D5E84E:  = Me.Fields
  loc_D5E853: FLdPr var_414
  loc_D5E856: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E85B: FLdPr var_42C
  loc_D5E85E:  = Me.Value
  loc_D5E863: FLdRfVar var_6CC
  loc_D5E866: ConcatVar var_6DC
  loc_D5E86A: LitVarStr var_35C, ",'"
  loc_D5E86F: ConcatVar var_6EC
  loc_D5E873: FLdRfVar var_6FC
  loc_D5E876: FLdRfVar var_45C
  loc_D5E879: LitVarStr var_36C, "CuenCtct"
  loc_D5E87E: PopAdLdVar
  loc_D5E87F: FLdRfVar var_444
  loc_D5E882: FLdPr Me
  loc_D5E885: MemLdPr global_68
  loc_D5E888:  = Me.Fields
  loc_D5E88D: FLdPr var_444
  loc_D5E890: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E895: FLdPr var_45C
  loc_D5E898:  = Me.Value
  loc_D5E89D: FLdRfVar var_6FC
  loc_D5E8A0: ConcatVar var_70C
  loc_D5E8A4: LitVarStr var_37C, "','"
  loc_D5E8A9: ConcatVar var_71C
  loc_D5E8AD: FLdRfVar var_72C
  loc_D5E8B0: FLdRfVar var_48C
  loc_D5E8B3: LitVarStr var_3AC, "TipoCtct"
  loc_D5E8B8: PopAdLdVar
  loc_D5E8B9: FLdRfVar var_474
  loc_D5E8BC: FLdPr Me
  loc_D5E8BF: MemLdPr global_68
  loc_D5E8C2:  = Me.Fields
  loc_D5E8C7: FLdPr var_474
  loc_D5E8CA: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E8CF: FLdPr var_48C
  loc_D5E8D2:  = Me.Value
  loc_D5E8D7: FLdRfVar var_72C
  loc_D5E8DA: ConcatVar var_73C
  loc_D5E8DE: LitVarStr var_3BC, "',"
  loc_D5E8E3: ConcatVar var_74C
  loc_D5E8E7: ILdRf var_B4
  loc_D5E8EA: CVarI4
  loc_D5E8EE: ConcatVar var_75C
  loc_D5E8F2: LitVarStr var_3DC, ","
  loc_D5E8F7: ConcatVar var_78C
  loc_D5E8FB: FLdI2 var_9E
  loc_D5E8FE: CI4UI1
  loc_D5E8FF: CVarI4
  loc_D5E903: PopAdLdVar
  loc_D5E904: LitVarI4
  loc_D5E90C: PopAdLdVar
  loc_D5E90D: ImpAdLdRf MemVar_D93E08
  loc_D5E910: NewIfNullPr frmPlanesdePago
  loc_D5E913: VCallAd Control_ID_
  loc_D5E916: FStAdFunc var_4A4
  loc_D5E919: FLdPr var_4A4
  loc_D5E91C: LateIdCallLdVar
  loc_D5E926: CStrVarTmp
  loc_D5E927: CVarStr var_7AC
  loc_D5E92A: ConcatVar var_7CC
  loc_D5E92E: LitVarStr var_56C, ","
  loc_D5E933: ConcatVar var_81C
  loc_D5E937: FLdRfVar var_82C
  loc_D5E93A: FLdRfVar var_4D4
  loc_D5E93D: LitVarStr var_57C, "NumeApre"
  loc_D5E942: PopAdLdVar
  loc_D5E943: FLdRfVar var_4BC
  loc_D5E946: FLdPr Me
  loc_D5E949: MemLdPr global_68
  loc_D5E94C:  = frmPlanesdePago.Recordset15.Fields
  loc_D5E951: FLdPr var_4BC
  loc_D5E954: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E959: FLdPr var_4D4
  loc_D5E95C:  = Me.Value
  loc_D5E961: FLdRfVar var_82C
  loc_D5E964: ConcatVar var_83C
  loc_D5E968: LitVarStr var_58C, ","
  loc_D5E96D: ConcatVar var_85C
  loc_D5E971: FLdRfVar var_8AC
  loc_D5E974: FLdRfVar var_4EC
  loc_D5E977: LitVarStr var_59C, "CodiTimo"
  loc_D5E97C: PopAdLdVar
  loc_D5E97D: FLdRfVar var_4DC
  loc_D5E980: FLdPr Me
  loc_D5E983: MemLdPr global_68
  loc_D5E986:  = Me.Fields
  loc_D5E98B: FLdPr var_4DC
  loc_D5E98E: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E993: FLdPr var_4EC
  loc_D5E996:  = Me.Value
  loc_D5E99B: FLdRfVar var_8AC
  loc_D5E99E: ConcatVar var_8BC
  loc_D5E9A2: LitVarStr var_5AC, ","
  loc_D5E9A7: ConcatVar var_8CC
  loc_D5E9AB: FLdRfVar var_8EC
  loc_D5E9AE: FLdRfVar var_AB0
  loc_D5E9B1: LitVarStr var_5BC, "PeriInfo"
  loc_D5E9B6: PopAdLdVar
  loc_D5E9B7: FLdRfVar var_500
  loc_D5E9BA: FLdPr Me
  loc_D5E9BD: MemLdPr global_68
  loc_D5E9C0:  = Me.Fields
  loc_D5E9C5: FLdPr var_500
  loc_D5E9C8: from_stack_2 = Me.Item(from_stack_1)
  loc_D5E9CD: FLdPr var_AB0
  loc_D5E9D0:  = Me.Value
  loc_D5E9D5: FLdRfVar var_8EC
  loc_D5E9D8: ConcatVar var_93C
  loc_D5E9DC: LitVarStr var_5CC, ",'"
  loc_D5E9E1: ConcatVar var_94C
  loc_D5E9E5: FLdRfVar var_95C
  loc_D5E9E8: FLdRfVar var_AB8
  loc_D5E9EB: LitVarStr var_5DC, "CodiConc"
  loc_D5E9F0: PopAdLdVar
  loc_D5E9F1: FLdRfVar var_AB4
  loc_D5E9F4: FLdPr Me
  loc_D5E9F7: MemLdPr global_68
  loc_D5E9FA:  = Me.Fields
  loc_D5E9FF: FLdPr var_AB4
  loc_D5EA02: from_stack_2 = Me.Item(from_stack_1)
  loc_D5EA07: FLdPr var_AB8
  loc_D5EA0A:  = Me.Value
  loc_D5EA0F: FLdRfVar var_95C
  loc_D5EA12: ConcatVar var_97C
  loc_D5EA16: LitVarStr var_5EC, "',"
  loc_D5EA1B: ConcatVar var_9CC
  loc_D5EA1F: LitI4 0
  loc_D5EA24: LitI4 -1
  loc_D5EA29: LitI4 1
  loc_D5EA2E: LitStr "."
  loc_D5EA31: LitStr ","
  loc_D5EA34: FLdFPR8 var_C4
  loc_D5EA37: CStrR8
  loc_D5EA39: FStStrNoPop var_284
  loc_D5EA3C: ImpAdCallI2 Replace(, , , , , )
  loc_D5EA41: CVarStr var_9DC
  loc_D5EA44: ConcatVar var_9EC
  loc_D5EA48: LitVarStr var_60C, ","
  loc_D5EA4D: ConcatVar var_A0C
  loc_D5EA51: LitI4 0
  loc_D5EA56: LitI4 -1
  loc_D5EA5B: LitI4 1
  loc_D5EA60: LitStr "."
  loc_D5EA63: LitStr ","
  loc_D5EA66: FLdFPR8 var_1D0
  loc_D5EA69: CStrR8
  loc_D5EA6B: FStStrNoPop var_288
  loc_D5EA6E: ImpAdCallI2 Replace(, , , , , )
  loc_D5EA73: CVarStr var_A2C
  loc_D5EA76: ConcatVar var_A4C
  loc_D5EA7A: LitVarStr var_61C, ","
  loc_D5EA7F: ConcatVar var_A5C
  loc_D5EA83: LitI4 0
  loc_D5EA88: LitI4 -1
  loc_D5EA8D: LitI4 1
  loc_D5EA92: LitStr "."
  loc_D5EA95: LitStr ","
  loc_D5EA98: FLdFPR8 var_1C0
  loc_D5EA9B: CStrR8
  loc_D5EA9D: FStStrNoPop var_28C
  loc_D5EAA0: ImpAdCallI2 Replace(, , , , , )
  loc_D5EAA5: CVarStr var_A6C
  loc_D5EAA8: ConcatVar var_A7C
  loc_D5EAAC: LitVarStr var_62C, ","
  loc_D5EAB1: ConcatVar var_A8C
  loc_D5EAB5: LitI4 0
  loc_D5EABA: LitI4 -1
  loc_D5EABF: LitI4 1
  loc_D5EAC4: LitStr "."
  loc_D5EAC7: LitStr ","
  loc_D5EACA: FLdFPR8 var_1C8
  loc_D5EACD: CStrR8
  loc_D5EACF: FStStrNoPop var_294
  loc_D5EAD2: ImpAdCallI2 Replace(, , , , , )
  loc_D5EAD7: CVarStr var_A9C
  loc_D5EADA: ConcatVar var_AAC
  loc_D5EADE: LitVarStr var_63C, ","
  loc_D5EAE3: ConcatVar var_AC8
  loc_D5EAE7: LitI4 0
  loc_D5EAEC: LitI4 -1
  loc_D5EAF1: LitI4 1
  loc_D5EAF6: LitStr "."
  loc_D5EAF9: LitStr ","
  loc_D5EAFC: FLdFPR8 var_1D8
  loc_D5EAFF: CStrR8
  loc_D5EB01: FStStrNoPop var_298
  loc_D5EB04: ImpAdCallI2 Replace(, , , , , )
  loc_D5EB09: CVarStr var_AD8
  loc_D5EB0C: ConcatVar var_AE8
  loc_D5EB10: LitVarStr var_65C, ",0,0,"
  loc_D5EB15: ConcatVar var_AF8
  loc_D5EB19: LitI4 0
  loc_D5EB1E: LitI4 -1
  loc_D5EB23: LitI4 1
  loc_D5EB28: LitStr "."
  loc_D5EB2B: LitStr ","
  loc_D5EB2E: FLdFPR8 var_1E8
  loc_D5EB31: CStrR8
  loc_D5EB33: FStStrNoPop var_29C
  loc_D5EB36: ImpAdCallI2 Replace(, , , , , )
  loc_D5EB3B: CVarStr var_B08
  loc_D5EB3E: ConcatVar var_B18
  loc_D5EB42: LitVarStr var_66C, ");"
  loc_D5EB47: ConcatVar var_B28
  loc_D5EB4B: CStrVarVal var_2E8
  loc_D5EB4F: Call EjecutarRsCls(from_stack_1v)
  loc_D5EB54: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_294 = "": var_298 = "": var_29C = ""
  loc_D5EB71: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = "": var_500 = "": var_AB0 = "": var_AB4 = ""
  loc_D5EBA2: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_A0C = "": var_A2C = "": var_A4C = "": var_A5C = "": var_A6C = "": var_A7C = "": var_A8C = "": var_A9C = "": var_AAC = "": var_AC8 = "": var_AD8 = "": var_AE8 = "": var_AF8 = "": var_B08 = "": var_B18 = "": var_B28 = "": var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_79C = "": var_78C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5EC19: LitI4 2
  loc_D5EC1E: FLdRfVar var_C4
  loc_D5EC21: CVarRef
  loc_D5EC26: FLdRfVar var_208
  loc_D5EC29: ImpAdCallFPR4  = Round(, )
  loc_D5EC2E: FLdRfVar var_208
  loc_D5EC31: CR4Var
  loc_D5EC32: FStFPR8 var_D0
  loc_D5EC35: FFree1Var var_208 = ""
  loc_D5EC38: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde, NumeCtde, MoviCtde, SaldCtde"
  loc_D5EC3B: LitStr " FROM tmp_ctactedeta "
  loc_D5EC3E: ConcatStr
  loc_D5EC3F: FStStrNoPop var_21C
  loc_D5EC42: LitStr " WHERE CodiOfic = "
  loc_D5EC45: ConcatStr
  loc_D5EC46: CVarStr var_218
  loc_D5EC49: FLdRfVar var_208
  loc_D5EC4C: FLdRfVar var_238
  loc_D5EC4F: LitVarStr var_1F8, "CodiOfic"
  loc_D5EC54: PopAdLdVar
  loc_D5EC55: FLdRfVar var_234
  loc_D5EC58: FLdPr Me
  loc_D5EC5B: MemLdPr global_68
  loc_D5EC5E:  = Me.Fields
  loc_D5EC63: FLdPr var_234
  loc_D5EC66: from_stack_2 = Me.Item(from_stack_1)
  loc_D5EC6B: FLdPr var_238
  loc_D5EC6E:  = Me.Value
  loc_D5EC73: FLdRfVar var_208
  loc_D5EC76: ConcatVar var_27C
  loc_D5EC7A: LitVarStr var_24C, " AND CuenCtct = '"
  loc_D5EC7F: ConcatVar var_2B0
  loc_D5EC83: FLdRfVar var_2E4
  loc_D5EC86: FLdRfVar var_2A0
  loc_D5EC89: LitVarStr var_25C, "CuenCtct"
  loc_D5EC8E: PopAdLdVar
  loc_D5EC8F: FLdRfVar var_290
  loc_D5EC92: FLdPr Me
  loc_D5EC95: MemLdPr global_68
  loc_D5EC98:  = Me.Fields
  loc_D5EC9D: FLdPr var_290
  loc_D5ECA0: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ECA5: FLdPr var_2A0
  loc_D5ECA8:  = Me.Value
  loc_D5ECAD: FLdRfVar var_2E4
  loc_D5ECB0: ConcatVar var_330
  loc_D5ECB4: LitVarStr var_26C, "'"
  loc_D5ECB9: ConcatVar var_390
  loc_D5ECBD: LitVarStr var_2C0, " AND PeriCtct = "
  loc_D5ECC2: ConcatVar var_3F0
  loc_D5ECC6: FLdRfVar var_5FC
  loc_D5ECC9: FLdRfVar var_2F4
  loc_D5ECCC: LitVarStr var_2D0, "PeriCtct"
  loc_D5ECD1: PopAdLdVar
  loc_D5ECD2: FLdRfVar var_2D4
  loc_D5ECD5: FLdPr Me
  loc_D5ECD8: MemLdPr global_68
  loc_D5ECDB:  = Me.Fields
  loc_D5ECE0: FLdPr var_2D4
  loc_D5ECE3: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ECE8: FLdPr var_2F4
  loc_D5ECEB:  = Me.Value
  loc_D5ECF0: FLdRfVar var_5FC
  loc_D5ECF3: ConcatVar var_64C
  loc_D5ECF7: LitVarStr var_310, " AND BimeCtct = "
  loc_D5ECFC: ConcatVar var_69C
  loc_D5ED00: FLdRfVar var_6AC
  loc_D5ED03: FLdRfVar var_3E0
  loc_D5ED06: LitVarStr var_320, "BimeCtct"
  loc_D5ED0B: PopAdLdVar
  loc_D5ED0C: FLdRfVar var_380
  loc_D5ED0F: FLdPr Me
  loc_D5ED12: MemLdPr global_68
  loc_D5ED15:  = Me.Fields
  loc_D5ED1A: FLdPr var_380
  loc_D5ED1D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ED22: FLdPr var_3E0
  loc_D5ED25:  = Me.Value
  loc_D5ED2A: FLdRfVar var_6AC
  loc_D5ED2D: ConcatVar var_6BC
  loc_D5ED31: LitVarStr var_34C, " AND NumeCtct = "
  loc_D5ED36: ConcatVar var_6CC
  loc_D5ED3A: FLdRfVar var_6DC
  loc_D5ED3D: FLdRfVar var_42C
  loc_D5ED40: LitVarStr var_35C, "NumeCtct"
  loc_D5ED45: PopAdLdVar
  loc_D5ED46: FLdRfVar var_414
  loc_D5ED49: FLdPr Me
  loc_D5ED4C: MemLdPr global_68
  loc_D5ED4F:  = Me.Fields
  loc_D5ED54: FLdPr var_414
  loc_D5ED57: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ED5C: FLdPr var_42C
  loc_D5ED5F:  = Me.Value
  loc_D5ED64: FLdRfVar var_6DC
  loc_D5ED67: ConcatVar var_6EC
  loc_D5ED6B: LitVarStr var_36C, " AND MoviCtct = "
  loc_D5ED70: ConcatVar var_6FC
  loc_D5ED74: FLdRfVar var_70C
  loc_D5ED77: FLdRfVar var_45C
  loc_D5ED7A: LitVarStr var_37C, "MoviCtct"
  loc_D5ED7F: PopAdLdVar
  loc_D5ED80: FLdRfVar var_444
  loc_D5ED83: FLdPr Me
  loc_D5ED86: MemLdPr global_68
  loc_D5ED89:  = Me.Fields
  loc_D5ED8E: FLdPr var_444
  loc_D5ED91: from_stack_2 = Me.Item(from_stack_1)
  loc_D5ED96: FLdPr var_45C
  loc_D5ED99:  = Me.Value
  loc_D5ED9E: FLdRfVar var_70C
  loc_D5EDA1: ConcatVar var_71C
  loc_D5EDA5: LitVarStr var_3AC, " GROUP BY tmp_ctactedeta.CodiOfic, tmp_ctactedeta.CuenCtct, tmp_ctactedeta.PeriCtct, tmp_ctactedeta.BimeCtct, tmp_ctactedeta.NumeCtct, tmp_ctactedeta.MoviCtct, tmp_ctactedeta.PeriOrde, tmp_ctactedeta.CodiCtde, tmp_ctactedeta.NumeCtde"
  loc_D5EDAA: ConcatVar var_72C
  loc_D5EDAE: LitVarStr var_3BC, " HAVING SaldCtde > 0 "
  loc_D5EDB3: ConcatVar var_73C
  loc_D5EDB7: LitVarStr var_3CC, " ORDER BY tmp_ctactedeta.CodiOfic, tmp_ctactedeta.CuenCtct, tmp_ctactedeta.PeriCtct, tmp_ctactedeta.BimeCtct, tmp_ctactedeta.NumeCtct, tmp_ctactedeta.MoviCtct, tmp_ctactedeta.PeriOrde, tmp_ctactedeta.CodiCtde, tmp_ctactedeta.NumeCtde, tmp_ctactedeta.MoviCtde"
  loc_D5EDBC: ConcatVar var_74C
  loc_D5EDC0: CStrVarVal var_220
  loc_D5EDC4: Call EjecutarRsCls3(from_stack_1v)
  loc_D5EDC9: FFreeStr var_21C = ""
  loc_D5EDD0: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = ""
  loc_D5EDEB: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = ""
  loc_D5EE1A: FLdRfVar var_230
  loc_D5EE1D: FLdPr Me
  loc_D5EE20: MemLdPr global_72
  loc_D5EE23:  = Me.RecordCount
  loc_D5EE28: ILdRf var_230
  loc_D5EE2B: LitI4 0
  loc_D5EE30: GtI4
  loc_D5EE31: BranchF loc_D60091
  loc_D5EE34: FLdPr Me
  loc_D5EE37: MemLdPr global_72
  loc_D5EE3A: Me.MoveFirst
  loc_D5EE3F: LitI2_Byte 0
  loc_D5EE41: FStI2 var_DA
  loc_D5EE44: FLdRfVar var_4D6
  loc_D5EE47: FLdPr Me
  loc_D5EE4A: MemLdPr global_72
  loc_D5EE4D:  = Me.EOF
  loc_D5EE52: FLdI2 var_4D6
  loc_D5EE55: NotI4
  loc_D5EE56: BranchF loc_D60091
  loc_D5EE59: FLdI2 var_DA
  loc_D5EE5C: LitI2_Byte 1
  loc_D5EE5E: AddI2
  loc_D5EE5F: FStI2 var_DA
  loc_D5EE62: FLdRfVar var_208
  loc_D5EE65: FLdRfVar var_238
  loc_D5EE68: LitVarStr var_1F8, "SaldCtde"
  loc_D5EE6D: PopAdLdVar
  loc_D5EE6E: FLdRfVar var_234
  loc_D5EE71: FLdPr Me
  loc_D5EE74: MemLdPr global_72
  loc_D5EE77:  = Me.Fields
  loc_D5EE7C: FLdPr var_234
  loc_D5EE7F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5EE84: FLdPr var_238
  loc_D5EE87:  = Me.Value
  loc_D5EE8C: FLdFPR8 var_D0
  loc_D5EE8F: FLdRfVar var_208
  loc_D5EE92: FnCDblVar
  loc_D5EE94: GeR8
  loc_D5EE95: FLdFPR8 var_D0
  loc_D5EE98: LitI2_Byte 0
  loc_D5EE9A: CR8I2
  loc_D5EE9B: GtR4
  loc_D5EE9C: AndI4
  loc_D5EE9D: FFreeAd var_234 = ""
  loc_D5EEA4: FFree1Var var_208 = ""
  loc_D5EEA7: BranchF loc_D5F7F2
  loc_D5EEAA: FLdFPR8 var_1D0
  loc_D5EEAD: LitI2_Byte 0
  loc_D5EEAF: CR8I2
  loc_D5EEB0: NeR8
  loc_D5EEB1: BranchF loc_D5EF18
  loc_D5EEB4: FLdRfVar var_208
  loc_D5EEB7: FLdRfVar var_238
  loc_D5EEBA: LitVarStr var_1F8, "SaldCtde"
  loc_D5EEBF: PopAdLdVar
  loc_D5EEC0: FLdRfVar var_234
  loc_D5EEC3: FLdPr Me
  loc_D5EEC6: MemLdPr global_72
  loc_D5EEC9:  = Me.Fields
  loc_D5EECE: FLdPr var_234
  loc_D5EED1: from_stack_2 = Me.Item(from_stack_1)
  loc_D5EED6: FLdPr var_238
  loc_D5EED9:  = Me.Value
  loc_D5EEDE: LitI4 2
  loc_D5EEE3: FLdRfVar var_208
  loc_D5EEE6: FnCDblVar
  loc_D5EEE8: FLdFPR8 doDecaTifa
  loc_D5EEEB: FnCDblR8
  loc_D5EEED: MulR8
  loc_D5EEEE: LitI2_Byte &H64
  loc_D5EEF0: CR8I2
  loc_D5EEF1: DivR8
  loc_D5EEF2: CVarR8
  loc_D5EEF6: FLdRfVar var_27C
  loc_D5EEF9: ImpAdCallFPR4  = Round(, )
  loc_D5EEFE: FLdRfVar var_27C
  loc_D5EF01: CR4Var
  loc_D5EF02: FStFPR8 var_D8
  loc_D5EF05: FFreeAd var_234 = ""
  loc_D5EF0C: FFreeVar var_208 = "": var_218 = ""
  loc_D5EF15: Branch loc_D5EF1E
  loc_D5EF18: LitI2_Byte 0
  loc_D5EF1A: CR8I2
  loc_D5EF1B: FStFPR8 var_D8
  loc_D5EF1E: FLdFPR8 var_FC
  loc_D5EF21: FLdFPR8 var_D8
  loc_D5EF24: AddR8
  loc_D5EF25: FStFPR8 var_FC
  loc_D5EF28: FLdFPR8 var_BC
  loc_D5EF2B: LitI2_Byte 0
  loc_D5EF2D: CR8I2
  loc_D5EF2E: EqR4
  loc_D5EF2F: FLdI2 var_DA
  loc_D5EF32: CI4UI1
  loc_D5EF33: FLdRfVar var_230
  loc_D5EF36: FLdPr Me
  loc_D5EF39: MemLdPr global_72
  loc_D5EF3C:  = Me.RecordCount
  loc_D5EF41: ILdRf var_230
  loc_D5EF44: EqI4
  loc_D5EF45: AndI4
  loc_D5EF46: BranchF loc_D5F06C
  loc_D5EF49: FLdI2 var_9E
  loc_D5EF4C: CI4UI1
  loc_D5EF4D: CVarI4
  loc_D5EF51: PopAdLdVar
  loc_D5EF52: LitVarI4
  loc_D5EF5A: PopAdLdVar
  loc_D5EF5B: ImpAdLdRf MemVar_D93E08
  loc_D5EF5E: NewIfNullPr frmPlanesdePago
  loc_D5EF61: VCallAd Control_ID_
  loc_D5EF64: FStAdFunc var_234
  loc_D5EF67: FLdPr var_234
  loc_D5EF6A: LateIdCallLdVar
  loc_D5EF74: PopAd
  loc_D5EF76: FLdFPR8 var_FC
  loc_D5EF79: FLdRfVar var_208
  loc_D5EF7C: CStrVarTmp
  loc_D5EF7D: FStStrNoPop var_21C
  loc_D5EF80: CR8Str
  loc_D5EF82: GtR4
  loc_D5EF83: FFree1Str var_21C
  loc_D5EF86: FFree1Ad var_234
  loc_D5EF89: FFree1Var var_208 = ""
  loc_D5EF8C: BranchF loc_D5EFDC
  loc_D5EF8F: FLdI2 var_9E
  loc_D5EF92: CI4UI1
  loc_D5EF93: CVarI4
  loc_D5EF97: PopAdLdVar
  loc_D5EF98: LitVarI4
  loc_D5EFA0: PopAdLdVar
  loc_D5EFA1: ImpAdLdRf MemVar_D93E08
  loc_D5EFA4: NewIfNullPr frmPlanesdePago
  loc_D5EFA7: VCallAd Control_ID_
  loc_D5EFAA: FStAdFunc var_234
  loc_D5EFAD: FLdPr var_234
  loc_D5EFB0: LateIdCallLdVar
  loc_D5EFBA: PopAd
  loc_D5EFBC: FLdFPR8 var_D8
  loc_D5EFBF: FLdFPR8 var_FC
  loc_D5EFC2: FLdRfVar var_208
  loc_D5EFC5: CStrVarTmp
  loc_D5EFC6: FStStrNoPop var_21C
  loc_D5EFC9: CR8Str
  loc_D5EFCB: SubR4
  loc_D5EFCC: SubR4
  loc_D5EFCD: FStFPR8 var_D8
  loc_D5EFD0: FFree1Str var_21C
  loc_D5EFD3: FFree1Ad var_234
  loc_D5EFD6: FFree1Var var_208 = ""
  loc_D5EFD9: Branch loc_D5F06C
  loc_D5EFDC: FLdI2 var_9E
  loc_D5EFDF: CI4UI1
  loc_D5EFE0: CVarI4
  loc_D5EFE4: PopAdLdVar
  loc_D5EFE5: LitVarI4
  loc_D5EFED: PopAdLdVar
  loc_D5EFEE: ImpAdLdRf MemVar_D93E08
  loc_D5EFF1: NewIfNullPr frmPlanesdePago
  loc_D5EFF4: VCallAd Control_ID_
  loc_D5EFF7: FStAdFunc var_234
  loc_D5EFFA: FLdPr var_234
  loc_D5EFFD: LateIdCallLdVar
  loc_D5F007: PopAd
  loc_D5F009: FLdFPR8 var_FC
  loc_D5F00C: FLdRfVar var_208
  loc_D5F00F: CStrVarTmp
  loc_D5F010: FStStrNoPop var_21C
  loc_D5F013: CR8Str
  loc_D5F015: LtR8
  loc_D5F016: FFree1Str var_21C
  loc_D5F019: FFree1Ad var_234
  loc_D5F01C: FFree1Var var_208 = ""
  loc_D5F01F: BranchF loc_D5F06C
  loc_D5F022: FLdI2 var_9E
  loc_D5F025: CI4UI1
  loc_D5F026: CVarI4
  loc_D5F02A: PopAdLdVar
  loc_D5F02B: LitVarI4
  loc_D5F033: PopAdLdVar
  loc_D5F034: ImpAdLdRf MemVar_D93E08
  loc_D5F037: NewIfNullPr frmPlanesdePago
  loc_D5F03A: VCallAd Control_ID_
  loc_D5F03D: FStAdFunc var_234
  loc_D5F040: FLdPr var_234
  loc_D5F043: LateIdCallLdVar
  loc_D5F04D: PopAd
  loc_D5F04F: FLdFPR8 var_D8
  loc_D5F052: FLdRfVar var_208
  loc_D5F055: CStrVarTmp
  loc_D5F056: FStStrNoPop var_21C
  loc_D5F059: CR8Str
  loc_D5F05B: FLdFPR8 var_FC
  loc_D5F05E: SubR4
  loc_D5F05F: AddR8
  loc_D5F060: FStFPR8 var_D8
  loc_D5F063: FFree1Str var_21C
  loc_D5F066: FFree1Ad var_234
  loc_D5F069: FFree1Var var_208 = ""
  loc_D5F06C: FLdRfVar var_8AC
  loc_D5F06F: FLdRfVar var_AB4
  loc_D5F072: LitVarStr var_56C, "SaldCtde"
  loc_D5F077: PopAdLdVar
  loc_D5F078: FLdRfVar var_AB0
  loc_D5F07B: FLdPr Me
  loc_D5F07E: MemLdPr global_72
  loc_D5F081:  = frmPlanesdePago.Recordset15.Fields
  loc_D5F086: FLdPr var_AB0
  loc_D5F089: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F08E: FLdPr var_AB4
  loc_D5F091:  = Me.Value
  loc_D5F096: FLdRfVar var_97C
  loc_D5F099: FLdRfVar var_B2C
  loc_D5F09C: LitVarStr var_59C, "SaldCtde"
  loc_D5F0A1: PopAdLdVar
  loc_D5F0A2: FLdRfVar var_AB8
  loc_D5F0A5: FLdPr Me
  loc_D5F0A8: MemLdPr global_72
  loc_D5F0AB:  = Me.Fields
  loc_D5F0B0: FLdPr var_AB8
  loc_D5F0B3: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F0B8: FLdPr var_B2C
  loc_D5F0BB:  = Me.Value
  loc_D5F0C0: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D5F0C3: LitStr " VALUES ("
  loc_D5F0C6: ConcatStr
  loc_D5F0C7: FStStrNoPop var_21C
  loc_D5F0CA: FLdI2 var_AA
  loc_D5F0CD: CStrUI1
  loc_D5F0CF: FStStrNoPop var_220
  loc_D5F0D2: ConcatStr
  loc_D5F0D3: FStStrNoPop var_224
  loc_D5F0D6: LitStr ","
  loc_D5F0D9: ConcatStr
  loc_D5F0DA: FStStrNoPop var_228
  loc_D5F0DD: ILdRf var_B0
  loc_D5F0E0: CStrI4
  loc_D5F0E2: FStStrNoPop var_22C
  loc_D5F0E5: ConcatStr
  loc_D5F0E6: FStStrNoPop var_280
  loc_D5F0E9: LitStr ","
  loc_D5F0EC: ConcatStr
  loc_D5F0ED: CVarStr var_218
  loc_D5F0F0: FLdRfVar var_208
  loc_D5F0F3: FLdRfVar var_238
  loc_D5F0F6: LitVarStr var_1F8, "PeriCtct"
  loc_D5F0FB: PopAdLdVar
  loc_D5F0FC: FLdRfVar var_234
  loc_D5F0FF: FLdPr Me
  loc_D5F102: MemLdPr global_72
  loc_D5F105:  = Me.Fields
  loc_D5F10A: FLdPr var_234
  loc_D5F10D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F112: FLdPr var_238
  loc_D5F115:  = Me.Value
  loc_D5F11A: FLdRfVar var_208
  loc_D5F11D: ConcatVar var_27C
  loc_D5F121: LitVarStr var_24C, ","
  loc_D5F126: ConcatVar var_2B0
  loc_D5F12A: FLdRfVar var_2E4
  loc_D5F12D: FLdRfVar var_2A0
  loc_D5F130: LitVarStr var_25C, "BimeCtct"
  loc_D5F135: PopAdLdVar
  loc_D5F136: FLdRfVar var_290
  loc_D5F139: FLdPr Me
  loc_D5F13C: MemLdPr global_72
  loc_D5F13F:  = Me.Fields
  loc_D5F144: FLdPr var_290
  loc_D5F147: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F14C: FLdPr var_2A0
  loc_D5F14F:  = Me.Value
  loc_D5F154: FLdRfVar var_2E4
  loc_D5F157: ConcatVar var_330
  loc_D5F15B: LitVarStr var_26C, ","
  loc_D5F160: ConcatVar var_390
  loc_D5F164: FLdRfVar var_3F0
  loc_D5F167: FLdRfVar var_2F4
  loc_D5F16A: LitVarStr var_2C0, "NumeCtct"
  loc_D5F16F: PopAdLdVar
  loc_D5F170: FLdRfVar var_2D4
  loc_D5F173: FLdPr Me
  loc_D5F176: MemLdPr global_72
  loc_D5F179:  = Me.Fields
  loc_D5F17E: FLdPr var_2D4
  loc_D5F181: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F186: FLdPr var_2F4
  loc_D5F189:  = Me.Value
  loc_D5F18E: FLdRfVar var_3F0
  loc_D5F191: ConcatVar var_5FC
  loc_D5F195: LitVarStr var_2D0, ","
  loc_D5F19A: ConcatVar var_64C
  loc_D5F19E: FLdRfVar var_69C
  loc_D5F1A1: FLdRfVar var_3E0
  loc_D5F1A4: LitVarStr var_310, "MoviCtct"
  loc_D5F1A9: PopAdLdVar
  loc_D5F1AA: FLdRfVar var_380
  loc_D5F1AD: FLdPr Me
  loc_D5F1B0: MemLdPr global_72
  loc_D5F1B3:  = Me.Fields
  loc_D5F1B8: FLdPr var_380
  loc_D5F1BB: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F1C0: FLdPr var_3E0
  loc_D5F1C3:  = Me.Value
  loc_D5F1C8: FLdRfVar var_69C
  loc_D5F1CB: ConcatVar var_6AC
  loc_D5F1CF: LitVarStr var_320, ",1,"
  loc_D5F1D4: ConcatVar var_6BC
  loc_D5F1D8: FLdRfVar var_6CC
  loc_D5F1DB: FLdRfVar var_42C
  loc_D5F1DE: LitVarStr var_34C, "PeriOrde"
  loc_D5F1E3: PopAdLdVar
  loc_D5F1E4: FLdRfVar var_414
  loc_D5F1E7: FLdPr Me
  loc_D5F1EA: MemLdPr global_72
  loc_D5F1ED:  = Me.Fields
  loc_D5F1F2: FLdPr var_414
  loc_D5F1F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F1FA: FLdPr var_42C
  loc_D5F1FD:  = Me.Value
  loc_D5F202: FLdRfVar var_6CC
  loc_D5F205: ConcatVar var_6DC
  loc_D5F209: LitVarStr var_35C, ","
  loc_D5F20E: ConcatVar var_6EC
  loc_D5F212: FLdRfVar var_6FC
  loc_D5F215: FLdRfVar var_45C
  loc_D5F218: LitVarStr var_36C, "CodiCtde"
  loc_D5F21D: PopAdLdVar
  loc_D5F21E: FLdRfVar var_444
  loc_D5F221: FLdPr Me
  loc_D5F224: MemLdPr global_72
  loc_D5F227:  = Me.Fields
  loc_D5F22C: FLdPr var_444
  loc_D5F22F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F234: FLdPr var_45C
  loc_D5F237:  = Me.Value
  loc_D5F23C: FLdRfVar var_6FC
  loc_D5F23F: ConcatVar var_70C
  loc_D5F243: LitVarStr var_37C, ","
  loc_D5F248: ConcatVar var_71C
  loc_D5F24C: FLdRfVar var_72C
  loc_D5F24F: FLdRfVar var_48C
  loc_D5F252: LitVarStr var_3AC, "NumeCtde"
  loc_D5F257: PopAdLdVar
  loc_D5F258: FLdRfVar var_474
  loc_D5F25B: FLdPr Me
  loc_D5F25E: MemLdPr global_72
  loc_D5F261:  = Me.Fields
  loc_D5F266: FLdPr var_474
  loc_D5F269: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F26E: FLdPr var_48C
  loc_D5F271:  = Me.Value
  loc_D5F276: FLdRfVar var_72C
  loc_D5F279: ConcatVar var_73C
  loc_D5F27D: LitVarStr var_3BC, ","
  loc_D5F282: ConcatVar var_74C
  loc_D5F286: FLdRfVar var_75C
  loc_D5F289: FLdRfVar var_4BC
  loc_D5F28C: LitVarStr var_3CC, "MoviCtde"
  loc_D5F291: PopAdLdVar
  loc_D5F292: FLdRfVar var_4A4
  loc_D5F295: FLdPr Me
  loc_D5F298: MemLdPr global_72
  loc_D5F29B:  = Me.Fields
  loc_D5F2A0: FLdPr var_4A4
  loc_D5F2A3: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F2A8: FLdPr var_4BC
  loc_D5F2AB:  = Me.Value
  loc_D5F2B0: FLdRfVar var_75C
  loc_D5F2B3: ConcatVar var_78C
  loc_D5F2B7: LitVarStr var_3DC, ","
  loc_D5F2BC: ConcatVar var_79C
  loc_D5F2C0: FLdRfVar var_7AC
  loc_D5F2C3: FLdRfVar var_4DC
  loc_D5F2C6: LitVarStr var_52C, "CodiOfic"
  loc_D5F2CB: PopAdLdVar
  loc_D5F2CC: FLdRfVar var_4D4
  loc_D5F2CF: FLdPr Me
  loc_D5F2D2: MemLdPr global_72
  loc_D5F2D5:  = Me.Fields
  loc_D5F2DA: FLdPr var_4D4
  loc_D5F2DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F2E2: FLdPr var_4DC
  loc_D5F2E5:  = Me.Value
  loc_D5F2EA: FLdRfVar var_7AC
  loc_D5F2ED: ConcatVar var_7CC
  loc_D5F2F1: LitVarStr var_53C, ",'"
  loc_D5F2F6: ConcatVar var_81C
  loc_D5F2FA: FLdRfVar var_82C
  loc_D5F2FD: FLdRfVar var_500
  loc_D5F300: LitVarStr var_54C, "CuenCtct"
  loc_D5F305: PopAdLdVar
  loc_D5F306: FLdRfVar var_4EC
  loc_D5F309: FLdPr Me
  loc_D5F30C: MemLdPr global_72
  loc_D5F30F:  = Me.Fields
  loc_D5F314: FLdPr var_4EC
  loc_D5F317: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F31C: FLdPr var_500
  loc_D5F31F:  = Me.Value
  loc_D5F324: FLdRfVar var_82C
  loc_D5F327: ConcatVar var_83C
  loc_D5F32B: LitVarStr var_55C, "',"
  loc_D5F330: ConcatVar var_85C
  loc_D5F334: LitI4 0
  loc_D5F339: LitI4 -1
  loc_D5F33E: LitI4 1
  loc_D5F343: LitStr "."
  loc_D5F346: LitStr ","
  loc_D5F349: FLdRfVar var_8AC
  loc_D5F34C: CStrVarTmp
  loc_D5F34D: FStStrNoPop var_284
  loc_D5F350: ImpAdCallI2 Replace(, , , , , )
  loc_D5F355: CVarStr var_8BC
  loc_D5F358: ConcatVar var_8CC
  loc_D5F35C: LitVarStr var_57C, ","
  loc_D5F361: ConcatVar var_8EC
  loc_D5F365: LitI4 0
  loc_D5F36A: LitI4 -1
  loc_D5F36F: LitI4 1
  loc_D5F374: LitStr "."
  loc_D5F377: LitStr ","
  loc_D5F37A: FLdFPR8 var_D8
  loc_D5F37D: CStrR8
  loc_D5F37F: FStStrNoPop var_288
  loc_D5F382: ImpAdCallI2 Replace(, , , , , )
  loc_D5F387: CVarStr var_93C
  loc_D5F38A: ConcatVar var_94C
  loc_D5F38E: LitVarStr var_58C, ","
  loc_D5F393: ConcatVar var_95C
  loc_D5F397: LitI4 0
  loc_D5F39C: LitI4 -1
  loc_D5F3A1: LitI4 1
  loc_D5F3A6: LitStr "."
  loc_D5F3A9: LitStr ","
  loc_D5F3AC: FLdRfVar var_97C
  loc_D5F3AF: FnCDblVar
  loc_D5F3B1: FLdFPR8 var_D8
  loc_D5F3B4: SubR4
  loc_D5F3B5: CStrR8
  loc_D5F3B7: FStStrNoPop var_28C
  loc_D5F3BA: ImpAdCallI2 Replace(, , , , , )
  loc_D5F3BF: CVarStr var_9CC
  loc_D5F3C2: ConcatVar var_9DC
  loc_D5F3C6: LitVarStr var_5AC, ");"
  loc_D5F3CB: ConcatVar var_9EC
  loc_D5F3CF: CStrVarVal var_294
  loc_D5F3D3: Call EjecutarRsCls(from_stack_1v)
  loc_D5F3D8: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = ""
  loc_D5F3EF: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = "": var_500 = "": var_AB0 = "": var_AB4 = "": var_AB8 = ""
  loc_D5F422: FFreeVar var_8AC = "": var_85C = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_97C = "": var_95C = "": var_9CC = "": var_9DC = "": var_9EC = "": var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5F479: FLdRfVar var_208
  loc_D5F47C: FLdRfVar var_238
  loc_D5F47F: LitVarStr var_1F8, "SaldCtde"
  loc_D5F484: PopAdLdVar
  loc_D5F485: FLdRfVar var_234
  loc_D5F488: FLdPr Me
  loc_D5F48B: MemLdPr global_72
  loc_D5F48E:  = Me.Fields
  loc_D5F493: FLdPr var_234
  loc_D5F496: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F49B: FLdPr var_238
  loc_D5F49E:  = Me.Value
  loc_D5F4A3: LitStr "UPDATE tmp_ctactedeta SET SaldCtde = SaldCtde - "
  loc_D5F4A6: LitI4 0
  loc_D5F4AB: LitI4 -1
  loc_D5F4B0: LitI4 1
  loc_D5F4B5: LitStr "."
  loc_D5F4B8: LitStr ","
  loc_D5F4BB: FLdRfVar var_208
  loc_D5F4BE: CStrVarTmp
  loc_D5F4BF: FStStrNoPop var_21C
  loc_D5F4C2: ImpAdCallI2 Replace(, , , , , )
  loc_D5F4C7: FStStrNoPop var_220
  loc_D5F4CA: ConcatStr
  loc_D5F4CB: FStStrNoPop var_224
  loc_D5F4CE: LitStr " WHERE CodiOfic = "
  loc_D5F4D1: ConcatStr
  loc_D5F4D2: CVarStr var_27C
  loc_D5F4D5: FLdRfVar var_218
  loc_D5F4D8: FLdRfVar var_2A0
  loc_D5F4DB: LitVarStr var_24C, "CodiOfic"
  loc_D5F4E0: PopAdLdVar
  loc_D5F4E1: FLdRfVar var_290
  loc_D5F4E4: FLdPr Me
  loc_D5F4E7: MemLdPr global_72
  loc_D5F4EA:  = Me.Fields
  loc_D5F4EF: FLdPr var_290
  loc_D5F4F2: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F4F7: FLdPr var_2A0
  loc_D5F4FA:  = Me.Value
  loc_D5F4FF: FLdRfVar var_218
  loc_D5F502: ConcatVar var_2B0
  loc_D5F506: LitVarStr var_25C, " AND CuenCtct = '"
  loc_D5F50B: ConcatVar var_2E4
  loc_D5F50F: FLdRfVar var_330
  loc_D5F512: FLdRfVar var_2F4
  loc_D5F515: LitVarStr var_26C, "CuenCtct"
  loc_D5F51A: PopAdLdVar
  loc_D5F51B: FLdRfVar var_2D4
  loc_D5F51E: FLdPr Me
  loc_D5F521: MemLdPr global_72
  loc_D5F524:  = Me.Fields
  loc_D5F529: FLdPr var_2D4
  loc_D5F52C: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F531: FLdPr var_2F4
  loc_D5F534:  = Me.Value
  loc_D5F539: FLdRfVar var_330
  loc_D5F53C: ConcatVar var_390
  loc_D5F540: LitVarStr var_2C0, "' AND PeriCtct = "
  loc_D5F545: ConcatVar var_3F0
  loc_D5F549: FLdRfVar var_5FC
  loc_D5F54C: FLdRfVar var_3E0
  loc_D5F54F: LitVarStr var_2D0, "PeriCtct"
  loc_D5F554: PopAdLdVar
  loc_D5F555: FLdRfVar var_380
  loc_D5F558: FLdPr Me
  loc_D5F55B: MemLdPr global_72
  loc_D5F55E:  = Me.Fields
  loc_D5F563: FLdPr var_380
  loc_D5F566: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F56B: FLdPr var_3E0
  loc_D5F56E:  = Me.Value
  loc_D5F573: FLdRfVar var_5FC
  loc_D5F576: ConcatVar var_64C
  loc_D5F57A: LitVarStr var_310, " AND BimeCtct = "
  loc_D5F57F: ConcatVar var_69C
  loc_D5F583: FLdRfVar var_6AC
  loc_D5F586: FLdRfVar var_42C
  loc_D5F589: LitVarStr var_320, "BimeCtct"
  loc_D5F58E: PopAdLdVar
  loc_D5F58F: FLdRfVar var_414
  loc_D5F592: FLdPr Me
  loc_D5F595: MemLdPr global_72
  loc_D5F598:  = Me.Fields
  loc_D5F59D: FLdPr var_414
  loc_D5F5A0: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F5A5: FLdPr var_42C
  loc_D5F5A8:  = Me.Value
  loc_D5F5AD: FLdRfVar var_6AC
  loc_D5F5B0: ConcatVar var_6BC
  loc_D5F5B4: LitVarStr var_34C, " AND NumeCtct = "
  loc_D5F5B9: ConcatVar var_6CC
  loc_D5F5BD: FLdRfVar var_6DC
  loc_D5F5C0: FLdRfVar var_45C
  loc_D5F5C3: LitVarStr var_35C, "NumeCtct"
  loc_D5F5C8: PopAdLdVar
  loc_D5F5C9: FLdRfVar var_444
  loc_D5F5CC: FLdPr Me
  loc_D5F5CF: MemLdPr global_72
  loc_D5F5D2:  = Me.Fields
  loc_D5F5D7: FLdPr var_444
  loc_D5F5DA: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F5DF: FLdPr var_45C
  loc_D5F5E2:  = Me.Value
  loc_D5F5E7: FLdRfVar var_6DC
  loc_D5F5EA: ConcatVar var_6EC
  loc_D5F5EE: LitVarStr var_36C, " AND MoviCtct = "
  loc_D5F5F3: ConcatVar var_6FC
  loc_D5F5F7: FLdRfVar var_70C
  loc_D5F5FA: FLdRfVar var_48C
  loc_D5F5FD: LitVarStr var_37C, "MoviCtct"
  loc_D5F602: PopAdLdVar
  loc_D5F603: FLdRfVar var_474
  loc_D5F606: FLdPr Me
  loc_D5F609: MemLdPr global_72
  loc_D5F60C:  = Me.Fields
  loc_D5F611: FLdPr var_474
  loc_D5F614: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F619: FLdPr var_48C
  loc_D5F61C:  = Me.Value
  loc_D5F621: FLdRfVar var_70C
  loc_D5F624: ConcatVar var_71C
  loc_D5F628: LitVarStr var_3AC, " AND PeriOrde = "
  loc_D5F62D: ConcatVar var_72C
  loc_D5F631: FLdRfVar var_73C
  loc_D5F634: FLdRfVar var_4BC
  loc_D5F637: LitVarStr var_3BC, "PeriOrde"
  loc_D5F63C: PopAdLdVar
  loc_D5F63D: FLdRfVar var_4A4
  loc_D5F640: FLdPr Me
  loc_D5F643: MemLdPr global_72
  loc_D5F646:  = Me.Fields
  loc_D5F64B: FLdPr var_4A4
  loc_D5F64E: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F653: FLdPr var_4BC
  loc_D5F656:  = Me.Value
  loc_D5F65B: FLdRfVar var_73C
  loc_D5F65E: ConcatVar var_74C
  loc_D5F662: LitVarStr var_3CC, " AND CodiCtde = "
  loc_D5F667: ConcatVar var_75C
  loc_D5F66B: FLdRfVar var_78C
  loc_D5F66E: FLdRfVar var_4DC
  loc_D5F671: LitVarStr var_3DC, "CodiCtde"
  loc_D5F676: PopAdLdVar
  loc_D5F677: FLdRfVar var_4D4
  loc_D5F67A: FLdPr Me
  loc_D5F67D: MemLdPr global_72
  loc_D5F680:  = Me.Fields
  loc_D5F685: FLdPr var_4D4
  loc_D5F688: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F68D: FLdPr var_4DC
  loc_D5F690:  = Me.Value
  loc_D5F695: FLdRfVar var_78C
  loc_D5F698: ConcatVar var_79C
  loc_D5F69C: LitVarStr var_52C, " AND NumeCtde = "
  loc_D5F6A1: ConcatVar var_7AC
  loc_D5F6A5: FLdRfVar var_7CC
  loc_D5F6A8: FLdRfVar var_500
  loc_D5F6AB: LitVarStr var_53C, "NumeCtde"
  loc_D5F6B0: PopAdLdVar
  loc_D5F6B1: FLdRfVar var_4EC
  loc_D5F6B4: FLdPr Me
  loc_D5F6B7: MemLdPr global_72
  loc_D5F6BA:  = Me.Fields
  loc_D5F6BF: FLdPr var_4EC
  loc_D5F6C2: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F6C7: FLdPr var_500
  loc_D5F6CA:  = Me.Value
  loc_D5F6CF: FLdRfVar var_7CC
  loc_D5F6D2: ConcatVar var_81C
  loc_D5F6D6: LitVarStr var_54C, " AND MoviCtde = "
  loc_D5F6DB: ConcatVar var_82C
  loc_D5F6DF: FLdRfVar var_83C
  loc_D5F6E2: FLdRfVar var_AB4
  loc_D5F6E5: LitVarStr var_55C, "MoviCtde"
  loc_D5F6EA: PopAdLdVar
  loc_D5F6EB: FLdRfVar var_AB0
  loc_D5F6EE: FLdPr Me
  loc_D5F6F1: MemLdPr global_72
  loc_D5F6F4:  = Me.Fields
  loc_D5F6F9: FLdPr var_AB0
  loc_D5F6FC: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F701: FLdPr var_AB4
  loc_D5F704:  = Me.Value
  loc_D5F709: FLdRfVar var_83C
  loc_D5F70C: ConcatVar var_85C
  loc_D5F710: CStrVarVal var_228
  loc_D5F714: Call EjecutarRsCls(from_stack_1v)
  loc_D5F719: FFreeStr var_21C = "": var_220 = "": var_224 = ""
  loc_D5F724: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = "": var_500 = "": var_AB0 = ""
  loc_D5F753: FFreeVar var_85C = "": var_208 = "": var_27C = "": var_218 = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5F794: FLdRfVar var_208
  loc_D5F797: FLdRfVar var_238
  loc_D5F79A: LitVarStr var_1F8, "SaldCtde"
  loc_D5F79F: PopAdLdVar
  loc_D5F7A0: FLdRfVar var_234
  loc_D5F7A3: FLdPr Me
  loc_D5F7A6: MemLdPr global_72
  loc_D5F7A9:  = Me.Fields
  loc_D5F7AE: FLdPr var_234
  loc_D5F7B1: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F7B6: FLdPr var_238
  loc_D5F7B9:  = Me.Value
  loc_D5F7BE: LitI4 2
  loc_D5F7C3: FLdFPR8 var_D0
  loc_D5F7C6: FLdRfVar var_208
  loc_D5F7C9: FnCDblVar
  loc_D5F7CB: SubR4
  loc_D5F7CC: CVarR8
  loc_D5F7D0: FLdRfVar var_27C
  loc_D5F7D3: ImpAdCallFPR4  = Round(, )
  loc_D5F7D8: FLdRfVar var_27C
  loc_D5F7DB: CR4Var
  loc_D5F7DC: FStFPR8 var_D0
  loc_D5F7DF: FFreeAd var_234 = ""
  loc_D5F7E6: FFreeVar var_208 = "": var_218 = ""
  loc_D5F7EF: Branch loc_D60083
  loc_D5F7F2: FLdRfVar var_208
  loc_D5F7F5: FLdRfVar var_238
  loc_D5F7F8: LitVarStr var_1F8, "SaldCtde"
  loc_D5F7FD: PopAdLdVar
  loc_D5F7FE: FLdRfVar var_234
  loc_D5F801: FLdPr Me
  loc_D5F804: MemLdPr global_72
  loc_D5F807:  = Me.Fields
  loc_D5F80C: FLdPr var_234
  loc_D5F80F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F814: FLdPr var_238
  loc_D5F817:  = Me.Value
  loc_D5F81C: FLdFPR8 var_D0
  loc_D5F81F: FLdRfVar var_208
  loc_D5F822: FnCDblVar
  loc_D5F824: LtR8
  loc_D5F825: FLdFPR8 var_D0
  loc_D5F828: LitI2_Byte 0
  loc_D5F82A: CR8I2
  loc_D5F82B: GtR4
  loc_D5F82C: AndI4
  loc_D5F82D: FFreeAd var_234 = ""
  loc_D5F834: FFree1Var var_208 = ""
  loc_D5F837: BranchF loc_D60083
  loc_D5F83A: FLdFPR8 var_1D0
  loc_D5F83D: LitI2_Byte 0
  loc_D5F83F: CR8I2
  loc_D5F840: NeR8
  loc_D5F841: BranchF loc_D5F8A8
  loc_D5F844: FLdRfVar var_208
  loc_D5F847: FLdRfVar var_238
  loc_D5F84A: LitVarStr var_1F8, "SaldCtde"
  loc_D5F84F: PopAdLdVar
  loc_D5F850: FLdRfVar var_234
  loc_D5F853: FLdPr Me
  loc_D5F856: MemLdPr global_72
  loc_D5F859:  = Me.Fields
  loc_D5F85E: FLdPr var_234
  loc_D5F861: from_stack_2 = Me.Item(from_stack_1)
  loc_D5F866: FLdPr var_238
  loc_D5F869:  = Me.Value
  loc_D5F86E: LitI4 2
  loc_D5F873: FLdRfVar var_208
  loc_D5F876: FnCDblVar
  loc_D5F878: FLdFPR8 doDecaTifa
  loc_D5F87B: FnCDblR8
  loc_D5F87D: MulR8
  loc_D5F87E: LitI2_Byte &H64
  loc_D5F880: CR8I2
  loc_D5F881: DivR8
  loc_D5F882: CVarR8
  loc_D5F886: FLdRfVar var_27C
  loc_D5F889: ImpAdCallFPR4  = Round(, )
  loc_D5F88E: FLdRfVar var_27C
  loc_D5F891: CR4Var
  loc_D5F892: FStFPR8 var_D8
  loc_D5F895: FFreeAd var_234 = ""
  loc_D5F89C: FFreeVar var_208 = "": var_218 = ""
  loc_D5F8A5: Branch loc_D5F8AE
  loc_D5F8A8: LitI2_Byte 0
  loc_D5F8AA: CR8I2
  loc_D5F8AB: FStFPR8 var_D8
  loc_D5F8AE: FLdFPR8 var_FC
  loc_D5F8B1: FLdFPR8 var_D8
  loc_D5F8B4: AddR8
  loc_D5F8B5: FStFPR8 var_FC
  loc_D5F8B8: FLdFPR8 var_BC
  loc_D5F8BB: LitI2_Byte 0
  loc_D5F8BD: CR8I2
  loc_D5F8BE: EqR4
  loc_D5F8BF: BranchF loc_D5F9E5
  loc_D5F8C2: FLdI2 var_9E
  loc_D5F8C5: CI4UI1
  loc_D5F8C6: CVarI4
  loc_D5F8CA: PopAdLdVar
  loc_D5F8CB: LitVarI4
  loc_D5F8D3: PopAdLdVar
  loc_D5F8D4: ImpAdLdRf MemVar_D93E08
  loc_D5F8D7: NewIfNullPr frmPlanesdePago
  loc_D5F8DA: VCallAd Control_ID_
  loc_D5F8DD: FStAdFunc var_234
  loc_D5F8E0: FLdPr var_234
  loc_D5F8E3: LateIdCallLdVar
  loc_D5F8ED: PopAd
  loc_D5F8EF: FLdFPR8 var_FC
  loc_D5F8F2: FLdRfVar var_208
  loc_D5F8F5: CStrVarTmp
  loc_D5F8F6: FStStrNoPop var_21C
  loc_D5F8F9: CR8Str
  loc_D5F8FB: GtR4
  loc_D5F8FC: FFree1Str var_21C
  loc_D5F8FF: FFree1Ad var_234
  loc_D5F902: FFree1Var var_208 = ""
  loc_D5F905: BranchF loc_D5F955
  loc_D5F908: FLdI2 var_9E
  loc_D5F90B: CI4UI1
  loc_D5F90C: CVarI4
  loc_D5F910: PopAdLdVar
  loc_D5F911: LitVarI4
  loc_D5F919: PopAdLdVar
  loc_D5F91A: ImpAdLdRf MemVar_D93E08
  loc_D5F91D: NewIfNullPr frmPlanesdePago
  loc_D5F920: VCallAd Control_ID_
  loc_D5F923: FStAdFunc var_234
  loc_D5F926: FLdPr var_234
  loc_D5F929: LateIdCallLdVar
  loc_D5F933: PopAd
  loc_D5F935: FLdFPR8 var_D8
  loc_D5F938: FLdFPR8 var_FC
  loc_D5F93B: FLdRfVar var_208
  loc_D5F93E: CStrVarTmp
  loc_D5F93F: FStStrNoPop var_21C
  loc_D5F942: CR8Str
  loc_D5F944: SubR4
  loc_D5F945: SubR4
  loc_D5F946: FStFPR8 var_D8
  loc_D5F949: FFree1Str var_21C
  loc_D5F94C: FFree1Ad var_234
  loc_D5F94F: FFree1Var var_208 = ""
  loc_D5F952: Branch loc_D5F9E5
  loc_D5F955: FLdI2 var_9E
  loc_D5F958: CI4UI1
  loc_D5F959: CVarI4
  loc_D5F95D: PopAdLdVar
  loc_D5F95E: LitVarI4
  loc_D5F966: PopAdLdVar
  loc_D5F967: ImpAdLdRf MemVar_D93E08
  loc_D5F96A: NewIfNullPr frmPlanesdePago
  loc_D5F96D: VCallAd Control_ID_
  loc_D5F970: FStAdFunc var_234
  loc_D5F973: FLdPr var_234
  loc_D5F976: LateIdCallLdVar
  loc_D5F980: PopAd
  loc_D5F982: FLdFPR8 var_FC
  loc_D5F985: FLdRfVar var_208
  loc_D5F988: CStrVarTmp
  loc_D5F989: FStStrNoPop var_21C
  loc_D5F98C: CR8Str
  loc_D5F98E: LtR8
  loc_D5F98F: FFree1Str var_21C
  loc_D5F992: FFree1Ad var_234
  loc_D5F995: FFree1Var var_208 = ""
  loc_D5F998: BranchF loc_D5F9E5
  loc_D5F99B: FLdI2 var_9E
  loc_D5F99E: CI4UI1
  loc_D5F99F: CVarI4
  loc_D5F9A3: PopAdLdVar
  loc_D5F9A4: LitVarI4
  loc_D5F9AC: PopAdLdVar
  loc_D5F9AD: ImpAdLdRf MemVar_D93E08
  loc_D5F9B0: NewIfNullPr frmPlanesdePago
  loc_D5F9B3: VCallAd Control_ID_
  loc_D5F9B6: FStAdFunc var_234
  loc_D5F9B9: FLdPr var_234
  loc_D5F9BC: LateIdCallLdVar
  loc_D5F9C6: PopAd
  loc_D5F9C8: FLdFPR8 var_D8
  loc_D5F9CB: FLdRfVar var_208
  loc_D5F9CE: CStrVarTmp
  loc_D5F9CF: FStStrNoPop var_21C
  loc_D5F9D2: CR8Str
  loc_D5F9D4: FLdFPR8 var_FC
  loc_D5F9D7: SubR4
  loc_D5F9D8: AddR8
  loc_D5F9D9: FStFPR8 var_D8
  loc_D5F9DC: FFree1Str var_21C
  loc_D5F9DF: FFree1Ad var_234
  loc_D5F9E2: FFree1Var var_208 = ""
  loc_D5F9E5: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_D5F9E8: LitStr " VALUES ("
  loc_D5F9EB: ConcatStr
  loc_D5F9EC: FStStrNoPop var_21C
  loc_D5F9EF: FLdI2 var_AA
  loc_D5F9F2: CStrUI1
  loc_D5F9F4: FStStrNoPop var_220
  loc_D5F9F7: ConcatStr
  loc_D5F9F8: FStStrNoPop var_224
  loc_D5F9FB: LitStr ","
  loc_D5F9FE: ConcatStr
  loc_D5F9FF: FStStrNoPop var_228
  loc_D5FA02: ILdRf var_B0
  loc_D5FA05: CStrI4
  loc_D5FA07: FStStrNoPop var_22C
  loc_D5FA0A: ConcatStr
  loc_D5FA0B: FStStrNoPop var_280
  loc_D5FA0E: LitStr ","
  loc_D5FA11: ConcatStr
  loc_D5FA12: CVarStr var_218
  loc_D5FA15: FLdRfVar var_208
  loc_D5FA18: FLdRfVar var_238
  loc_D5FA1B: LitVarStr var_1F8, "PeriCtct"
  loc_D5FA20: PopAdLdVar
  loc_D5FA21: FLdRfVar var_234
  loc_D5FA24: FLdPr Me
  loc_D5FA27: MemLdPr global_72
  loc_D5FA2A:  = frmPlanesdePago.Recordset15.Fields
  loc_D5FA2F: FLdPr var_234
  loc_D5FA32: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FA37: FLdPr var_238
  loc_D5FA3A:  = Me.Value
  loc_D5FA3F: FLdRfVar var_208
  loc_D5FA42: ConcatVar var_27C
  loc_D5FA46: LitVarStr var_24C, ","
  loc_D5FA4B: ConcatVar var_2B0
  loc_D5FA4F: FLdRfVar var_2E4
  loc_D5FA52: FLdRfVar var_2A0
  loc_D5FA55: LitVarStr var_25C, "BimeCtct"
  loc_D5FA5A: PopAdLdVar
  loc_D5FA5B: FLdRfVar var_290
  loc_D5FA5E: FLdPr Me
  loc_D5FA61: MemLdPr global_72
  loc_D5FA64:  = Me.Fields
  loc_D5FA69: FLdPr var_290
  loc_D5FA6C: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FA71: FLdPr var_2A0
  loc_D5FA74:  = Me.Value
  loc_D5FA79: FLdRfVar var_2E4
  loc_D5FA7C: ConcatVar var_330
  loc_D5FA80: LitVarStr var_26C, ","
  loc_D5FA85: ConcatVar var_390
  loc_D5FA89: FLdRfVar var_3F0
  loc_D5FA8C: FLdRfVar var_2F4
  loc_D5FA8F: LitVarStr var_2C0, "NumeCtct"
  loc_D5FA94: PopAdLdVar
  loc_D5FA95: FLdRfVar var_2D4
  loc_D5FA98: FLdPr Me
  loc_D5FA9B: MemLdPr global_72
  loc_D5FA9E:  = Me.Fields
  loc_D5FAA3: FLdPr var_2D4
  loc_D5FAA6: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FAAB: FLdPr var_2F4
  loc_D5FAAE:  = Me.Value
  loc_D5FAB3: FLdRfVar var_3F0
  loc_D5FAB6: ConcatVar var_5FC
  loc_D5FABA: LitVarStr var_2D0, ","
  loc_D5FABF: ConcatVar var_64C
  loc_D5FAC3: FLdRfVar var_69C
  loc_D5FAC6: FLdRfVar var_3E0
  loc_D5FAC9: LitVarStr var_310, "MoviCtct"
  loc_D5FACE: PopAdLdVar
  loc_D5FACF: FLdRfVar var_380
  loc_D5FAD2: FLdPr Me
  loc_D5FAD5: MemLdPr global_72
  loc_D5FAD8:  = Me.Fields
  loc_D5FADD: FLdPr var_380
  loc_D5FAE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FAE5: FLdPr var_3E0
  loc_D5FAE8:  = Me.Value
  loc_D5FAED: FLdRfVar var_69C
  loc_D5FAF0: ConcatVar var_6AC
  loc_D5FAF4: LitVarStr var_320, ",1,"
  loc_D5FAF9: ConcatVar var_6BC
  loc_D5FAFD: FLdRfVar var_6CC
  loc_D5FB00: FLdRfVar var_42C
  loc_D5FB03: LitVarStr var_34C, "PeriOrde"
  loc_D5FB08: PopAdLdVar
  loc_D5FB09: FLdRfVar var_414
  loc_D5FB0C: FLdPr Me
  loc_D5FB0F: MemLdPr global_72
  loc_D5FB12:  = Me.Fields
  loc_D5FB17: FLdPr var_414
  loc_D5FB1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FB1F: FLdPr var_42C
  loc_D5FB22:  = Me.Value
  loc_D5FB27: FLdRfVar var_6CC
  loc_D5FB2A: ConcatVar var_6DC
  loc_D5FB2E: LitVarStr var_35C, ","
  loc_D5FB33: ConcatVar var_6EC
  loc_D5FB37: FLdRfVar var_6FC
  loc_D5FB3A: FLdRfVar var_45C
  loc_D5FB3D: LitVarStr var_36C, "CodiCtde"
  loc_D5FB42: PopAdLdVar
  loc_D5FB43: FLdRfVar var_444
  loc_D5FB46: FLdPr Me
  loc_D5FB49: MemLdPr global_72
  loc_D5FB4C:  = Me.Fields
  loc_D5FB51: FLdPr var_444
  loc_D5FB54: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FB59: FLdPr var_45C
  loc_D5FB5C:  = Me.Value
  loc_D5FB61: FLdRfVar var_6FC
  loc_D5FB64: ConcatVar var_70C
  loc_D5FB68: LitVarStr var_37C, ","
  loc_D5FB6D: ConcatVar var_71C
  loc_D5FB71: FLdRfVar var_72C
  loc_D5FB74: FLdRfVar var_48C
  loc_D5FB77: LitVarStr var_3AC, "NumeCtde"
  loc_D5FB7C: PopAdLdVar
  loc_D5FB7D: FLdRfVar var_474
  loc_D5FB80: FLdPr Me
  loc_D5FB83: MemLdPr global_72
  loc_D5FB86:  = Me.Fields
  loc_D5FB8B: FLdPr var_474
  loc_D5FB8E: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FB93: FLdPr var_48C
  loc_D5FB96:  = Me.Value
  loc_D5FB9B: FLdRfVar var_72C
  loc_D5FB9E: ConcatVar var_73C
  loc_D5FBA2: LitVarStr var_3BC, ","
  loc_D5FBA7: ConcatVar var_74C
  loc_D5FBAB: FLdRfVar var_75C
  loc_D5FBAE: FLdRfVar var_4BC
  loc_D5FBB1: LitVarStr var_3CC, "MoviCtde"
  loc_D5FBB6: PopAdLdVar
  loc_D5FBB7: FLdRfVar var_4A4
  loc_D5FBBA: FLdPr Me
  loc_D5FBBD: MemLdPr global_72
  loc_D5FBC0:  = Me.Fields
  loc_D5FBC5: FLdPr var_4A4
  loc_D5FBC8: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FBCD: FLdPr var_4BC
  loc_D5FBD0:  = Me.Value
  loc_D5FBD5: FLdRfVar var_75C
  loc_D5FBD8: ConcatVar var_78C
  loc_D5FBDC: LitVarStr var_3DC, ","
  loc_D5FBE1: ConcatVar var_79C
  loc_D5FBE5: FLdRfVar var_7AC
  loc_D5FBE8: FLdRfVar var_4DC
  loc_D5FBEB: LitVarStr var_52C, "CodiOfic"
  loc_D5FBF0: PopAdLdVar
  loc_D5FBF1: FLdRfVar var_4D4
  loc_D5FBF4: FLdPr Me
  loc_D5FBF7: MemLdPr global_72
  loc_D5FBFA:  = Me.Fields
  loc_D5FBFF: FLdPr var_4D4
  loc_D5FC02: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FC07: FLdPr var_4DC
  loc_D5FC0A:  = Me.Value
  loc_D5FC0F: FLdRfVar var_7AC
  loc_D5FC12: ConcatVar var_7CC
  loc_D5FC16: LitVarStr var_53C, ",'"
  loc_D5FC1B: ConcatVar var_81C
  loc_D5FC1F: FLdRfVar var_82C
  loc_D5FC22: FLdRfVar var_500
  loc_D5FC25: LitVarStr var_54C, "CuenCtct"
  loc_D5FC2A: PopAdLdVar
  loc_D5FC2B: FLdRfVar var_4EC
  loc_D5FC2E: FLdPr Me
  loc_D5FC31: MemLdPr global_72
  loc_D5FC34:  = Me.Fields
  loc_D5FC39: FLdPr var_4EC
  loc_D5FC3C: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FC41: FLdPr var_500
  loc_D5FC44:  = Me.Value
  loc_D5FC49: FLdRfVar var_82C
  loc_D5FC4C: ConcatVar var_83C
  loc_D5FC50: LitVarStr var_55C, "',"
  loc_D5FC55: ConcatVar var_85C
  loc_D5FC59: LitI4 0
  loc_D5FC5E: LitI4 -1
  loc_D5FC63: LitI4 1
  loc_D5FC68: LitStr "."
  loc_D5FC6B: LitStr ","
  loc_D5FC6E: FLdFPR8 var_D0
  loc_D5FC71: CStrR8
  loc_D5FC73: FStStrNoPop var_284
  loc_D5FC76: ImpAdCallI2 Replace(, , , , , )
  loc_D5FC7B: CVarStr var_8AC
  loc_D5FC7E: ConcatVar var_8BC
  loc_D5FC82: LitVarStr var_56C, ","
  loc_D5FC87: ConcatVar var_8CC
  loc_D5FC8B: LitI4 0
  loc_D5FC90: LitI4 -1
  loc_D5FC95: LitI4 1
  loc_D5FC9A: LitStr "."
  loc_D5FC9D: LitStr ","
  loc_D5FCA0: FLdFPR8 var_D8
  loc_D5FCA3: CStrR8
  loc_D5FCA5: FStStrNoPop var_288
  loc_D5FCA8: ImpAdCallI2 Replace(, , , , , )
  loc_D5FCAD: CVarStr var_8EC
  loc_D5FCB0: ConcatVar var_93C
  loc_D5FCB4: LitVarStr var_57C, ","
  loc_D5FCB9: ConcatVar var_94C
  loc_D5FCBD: LitI4 0
  loc_D5FCC2: LitI4 -1
  loc_D5FCC7: LitI4 1
  loc_D5FCCC: LitStr "."
  loc_D5FCCF: LitStr ","
  loc_D5FCD2: FLdFPR8 var_D0
  loc_D5FCD5: FLdFPR8 var_D8
  loc_D5FCD8: SubR4
  loc_D5FCD9: CStrR8
  loc_D5FCDB: FStStrNoPop var_28C
  loc_D5FCDE: ImpAdCallI2 Replace(, , , , , )
  loc_D5FCE3: CVarStr var_95C
  loc_D5FCE6: ConcatVar var_97C
  loc_D5FCEA: LitVarStr var_58C, ");"
  loc_D5FCEF: ConcatVar var_9CC
  loc_D5FCF3: CStrVarVal var_294
  loc_D5FCF7: Call EjecutarRsCls(from_stack_1v)
  loc_D5FCFC: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = ""
  loc_D5FD13: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = ""
  loc_D5FD3E: FFreeVar var_85C = "": var_8AC = "": var_8BC = "": var_8CC = "": var_8EC = "": var_93C = "": var_94C = "": var_95C = "": var_97C = "": var_9CC = "": var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D5FD91: LitStr "UPDATE tmp_ctactedeta SET SaldCtde = SaldCtde - "
  loc_D5FD94: LitI4 0
  loc_D5FD99: LitI4 -1
  loc_D5FD9E: LitI4 1
  loc_D5FDA3: LitStr "."
  loc_D5FDA6: LitStr ","
  loc_D5FDA9: FLdFPR8 var_D0
  loc_D5FDAC: CStrR8
  loc_D5FDAE: FStStrNoPop var_21C
  loc_D5FDB1: ImpAdCallI2 Replace(, , , , , )
  loc_D5FDB6: FStStrNoPop var_220
  loc_D5FDB9: ConcatStr
  loc_D5FDBA: FStStrNoPop var_224
  loc_D5FDBD: LitStr " WHERE CodiOfic = "
  loc_D5FDC0: ConcatStr
  loc_D5FDC1: CVarStr var_218
  loc_D5FDC4: FLdRfVar var_208
  loc_D5FDC7: FLdRfVar var_238
  loc_D5FDCA: LitVarStr var_1F8, "CodiOfic"
  loc_D5FDCF: PopAdLdVar
  loc_D5FDD0: FLdRfVar var_234
  loc_D5FDD3: FLdPr Me
  loc_D5FDD6: MemLdPr global_72
  loc_D5FDD9:  = Me.Fields
  loc_D5FDDE: FLdPr var_234
  loc_D5FDE1: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FDE6: FLdPr var_238
  loc_D5FDE9:  = Me.Value
  loc_D5FDEE: FLdRfVar var_208
  loc_D5FDF1: ConcatVar var_27C
  loc_D5FDF5: LitVarStr var_24C, " AND CuenCtct = '"
  loc_D5FDFA: ConcatVar var_2B0
  loc_D5FDFE: FLdRfVar var_2E4
  loc_D5FE01: FLdRfVar var_2A0
  loc_D5FE04: LitVarStr var_25C, "CuenCtct"
  loc_D5FE09: PopAdLdVar
  loc_D5FE0A: FLdRfVar var_290
  loc_D5FE0D: FLdPr Me
  loc_D5FE10: MemLdPr global_72
  loc_D5FE13:  = Me.Fields
  loc_D5FE18: FLdPr var_290
  loc_D5FE1B: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FE20: FLdPr var_2A0
  loc_D5FE23:  = Me.Value
  loc_D5FE28: FLdRfVar var_2E4
  loc_D5FE2B: ConcatVar var_330
  loc_D5FE2F: LitVarStr var_26C, "' AND PeriCtct = "
  loc_D5FE34: ConcatVar var_390
  loc_D5FE38: FLdRfVar var_3F0
  loc_D5FE3B: FLdRfVar var_2F4
  loc_D5FE3E: LitVarStr var_2C0, "PeriCtct"
  loc_D5FE43: PopAdLdVar
  loc_D5FE44: FLdRfVar var_2D4
  loc_D5FE47: FLdPr Me
  loc_D5FE4A: MemLdPr global_72
  loc_D5FE4D:  = Me.Fields
  loc_D5FE52: FLdPr var_2D4
  loc_D5FE55: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FE5A: FLdPr var_2F4
  loc_D5FE5D:  = Me.Value
  loc_D5FE62: FLdRfVar var_3F0
  loc_D5FE65: ConcatVar var_5FC
  loc_D5FE69: LitVarStr var_2D0, " AND BimeCtct = "
  loc_D5FE6E: ConcatVar var_64C
  loc_D5FE72: FLdRfVar var_69C
  loc_D5FE75: FLdRfVar var_3E0
  loc_D5FE78: LitVarStr var_310, "BimeCtct"
  loc_D5FE7D: PopAdLdVar
  loc_D5FE7E: FLdRfVar var_380
  loc_D5FE81: FLdPr Me
  loc_D5FE84: MemLdPr global_72
  loc_D5FE87:  = Me.Fields
  loc_D5FE8C: FLdPr var_380
  loc_D5FE8F: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FE94: FLdPr var_3E0
  loc_D5FE97:  = Me.Value
  loc_D5FE9C: FLdRfVar var_69C
  loc_D5FE9F: ConcatVar var_6AC
  loc_D5FEA3: LitVarStr var_320, " AND NumeCtct = "
  loc_D5FEA8: ConcatVar var_6BC
  loc_D5FEAC: FLdRfVar var_6CC
  loc_D5FEAF: FLdRfVar var_42C
  loc_D5FEB2: LitVarStr var_34C, "NumeCtct"
  loc_D5FEB7: PopAdLdVar
  loc_D5FEB8: FLdRfVar var_414
  loc_D5FEBB: FLdPr Me
  loc_D5FEBE: MemLdPr global_72
  loc_D5FEC1:  = Me.Fields
  loc_D5FEC6: FLdPr var_414
  loc_D5FEC9: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FECE: FLdPr var_42C
  loc_D5FED1:  = Me.Value
  loc_D5FED6: FLdRfVar var_6CC
  loc_D5FED9: ConcatVar var_6DC
  loc_D5FEDD: LitVarStr var_35C, " AND MoviCtct = "
  loc_D5FEE2: ConcatVar var_6EC
  loc_D5FEE6: FLdRfVar var_6FC
  loc_D5FEE9: FLdRfVar var_45C
  loc_D5FEEC: LitVarStr var_36C, "MoviCtct"
  loc_D5FEF1: PopAdLdVar
  loc_D5FEF2: FLdRfVar var_444
  loc_D5FEF5: FLdPr Me
  loc_D5FEF8: MemLdPr global_72
  loc_D5FEFB:  = Me.Fields
  loc_D5FF00: FLdPr var_444
  loc_D5FF03: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FF08: FLdPr var_45C
  loc_D5FF0B:  = Me.Value
  loc_D5FF10: FLdRfVar var_6FC
  loc_D5FF13: ConcatVar var_70C
  loc_D5FF17: LitVarStr var_37C, " AND PeriOrde = "
  loc_D5FF1C: ConcatVar var_71C
  loc_D5FF20: FLdRfVar var_72C
  loc_D5FF23: FLdRfVar var_48C
  loc_D5FF26: LitVarStr var_3AC, "PeriOrde"
  loc_D5FF2B: PopAdLdVar
  loc_D5FF2C: FLdRfVar var_474
  loc_D5FF2F: FLdPr Me
  loc_D5FF32: MemLdPr global_72
  loc_D5FF35:  = Me.Fields
  loc_D5FF3A: FLdPr var_474
  loc_D5FF3D: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FF42: FLdPr var_48C
  loc_D5FF45:  = Me.Value
  loc_D5FF4A: FLdRfVar var_72C
  loc_D5FF4D: ConcatVar var_73C
  loc_D5FF51: LitVarStr var_3BC, " AND CodiCtde = "
  loc_D5FF56: ConcatVar var_74C
  loc_D5FF5A: FLdRfVar var_75C
  loc_D5FF5D: FLdRfVar var_4BC
  loc_D5FF60: LitVarStr var_3CC, "CodiCtde"
  loc_D5FF65: PopAdLdVar
  loc_D5FF66: FLdRfVar var_4A4
  loc_D5FF69: FLdPr Me
  loc_D5FF6C: MemLdPr global_72
  loc_D5FF6F:  = Me.Fields
  loc_D5FF74: FLdPr var_4A4
  loc_D5FF77: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FF7C: FLdPr var_4BC
  loc_D5FF7F:  = Me.Value
  loc_D5FF84: FLdRfVar var_75C
  loc_D5FF87: ConcatVar var_78C
  loc_D5FF8B: LitVarStr var_3DC, " AND NumeCtde = "
  loc_D5FF90: ConcatVar var_79C
  loc_D5FF94: FLdRfVar var_7AC
  loc_D5FF97: FLdRfVar var_4DC
  loc_D5FF9A: LitVarStr var_52C, "NumeCtde"
  loc_D5FF9F: PopAdLdVar
  loc_D5FFA0: FLdRfVar var_4D4
  loc_D5FFA3: FLdPr Me
  loc_D5FFA6: MemLdPr global_72
  loc_D5FFA9:  = Me.Fields
  loc_D5FFAE: FLdPr var_4D4
  loc_D5FFB1: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FFB6: FLdPr var_4DC
  loc_D5FFB9:  = Me.Value
  loc_D5FFBE: FLdRfVar var_7AC
  loc_D5FFC1: ConcatVar var_7CC
  loc_D5FFC5: LitVarStr var_53C, " AND MoviCtde = "
  loc_D5FFCA: ConcatVar var_81C
  loc_D5FFCE: FLdRfVar var_82C
  loc_D5FFD1: FLdRfVar var_500
  loc_D5FFD4: LitVarStr var_54C, "MoviCtde"
  loc_D5FFD9: PopAdLdVar
  loc_D5FFDA: FLdRfVar var_4EC
  loc_D5FFDD: FLdPr Me
  loc_D5FFE0: MemLdPr global_72
  loc_D5FFE3:  = Me.Fields
  loc_D5FFE8: FLdPr var_4EC
  loc_D5FFEB: from_stack_2 = Me.Item(from_stack_1)
  loc_D5FFF0: FLdPr var_500
  loc_D5FFF3:  = Me.Value
  loc_D5FFF8: FLdRfVar var_82C
  loc_D5FFFB: ConcatVar var_83C
  loc_D5FFFF: CStrVarVal var_228
  loc_D60003: Call EjecutarRsCls(from_stack_1v)
  loc_D60008: FFreeStr var_21C = "": var_220 = "": var_224 = ""
  loc_D60013: FFreeAd var_234 = "": var_238 = "": var_290 = "": var_2A0 = "": var_2D4 = "": var_2F4 = "": var_380 = "": var_3E0 = "": var_414 = "": var_42C = "": var_444 = "": var_45C = "": var_474 = "": var_48C = "": var_4A4 = "": var_4BC = "": var_4D4 = "": var_4DC = "": var_4EC = ""
  loc_D6003E: FFreeVar var_218 = "": var_208 = "": var_27C = "": var_2B0 = "": var_2E4 = "": var_330 = "": var_390 = "": var_3F0 = "": var_5FC = "": var_64C = "": var_69C = "": var_6AC = "": var_6BC = "": var_6CC = "": var_6DC = "": var_6EC = "": var_6FC = "": var_70C = "": var_71C = "": var_72C = "": var_73C = "": var_74C = "": var_75C = "": var_78C = "": var_79C = "": var_7AC = "": var_7CC = "": var_81C = "": var_82C = ""
  loc_D6007D: LitI2_Byte 0
  loc_D6007F: CR8I2
  loc_D60080: FStFPR8 var_D0
  loc_D60083: FLdPr Me
  loc_D60086: MemLdPr global_72
  loc_D60089: Me.MoveNext
  loc_D6008E: Branch loc_D5EE44
  loc_D60091: LitI2_Byte 0
  loc_D60093: CR8I2
  loc_D60094: FStFPR8 var_1C0
  loc_D60097: LitI2_Byte 0
  loc_D60099: CR8I2
  loc_D6009A: FStFPR8 var_1C8
  loc_D6009D: LitI2_Byte 0
  loc_D6009F: CR8I2
  loc_D600A0: FStFPR8 var_1D8
  loc_D600A3: LitI2_Byte 0
  loc_D600A5: CR8I2
  loc_D600A6: FStFPR8 var_1E0
  loc_D600A9: FLdPr Me
  loc_D600AC: MemLdPr global_64
  loc_D600AF: Me.MoveNext
  loc_D600B4: Branch loc_D5D774
  loc_D600B7: FLdI2 var_9E
  loc_D600BA: LitI2_Byte 1
  loc_D600BC: EqI2
  loc_D600BD: FLdI2 sCodiConc
  loc_D600C0: LitI2_Byte &HFF
  loc_D600C2: EqI2
  loc_D600C3: OrI4
  loc_D600C4: BranchF loc_D60261
  loc_D600C7: LitI4 2
  loc_D600CC: FLdRfVar var_17C
  loc_D600CF: CVarRef
  loc_D600D4: FLdRfVar var_208
  loc_D600D7: ImpAdCallFPR4  = Round(, )
  loc_D600DC: FLdRfVar var_208
  loc_D600DF: LitI4 2
  loc_D600E4: ImpAdLdRf MemVar_D93040
  loc_D600E7: CVarRef
  loc_D600EC: FLdRfVar var_218
  loc_D600EF: ImpAdCallFPR4  = Round(, )
  loc_D600F4: FLdRfVar var_218
  loc_D600F7: NeVarBool
  loc_D600F9: FFreeVar var_208 = ""
  loc_D60100: BranchF loc_D60119
  loc_D60103: LitStr "El total del CAPITAL del BOLETO no es igual al TOTAL del CAPITAL de los movimientos del boleto, verifique..."
  loc_D60106: FStStrCopy var_1A8
  loc_D60109: ILdRf var_1A8
  loc_D6010C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60111: LitStr "ERRRROR"
  loc_D60114: Call EjecutarRsCls(from_stack_1v)
  loc_D60119: LitI4 2
  loc_D6011E: FLdRfVar var_18C
  loc_D60121: CVarRef
  loc_D60126: FLdRfVar var_208
  loc_D60129: ImpAdCallFPR4  = Round(, )
  loc_D6012E: FLdRfVar var_208
  loc_D60131: LitI4 2
  loc_D60136: ImpAdLdRf MemVar_D93058
  loc_D60139: CVarRef
  loc_D6013E: FLdRfVar var_218
  loc_D60141: ImpAdCallFPR4  = Round(, )
  loc_D60146: FLdRfVar var_218
  loc_D60149: NeVarBool
  loc_D6014B: FFreeVar var_208 = ""
  loc_D60152: BranchF loc_D6016B
  loc_D60155: LitStr "El total del RECARGO del boleto no es igual al TOTAL del RECARGO de los movimientos del boleto, verifique..."
  loc_D60158: FStStrCopy var_1A8
  loc_D6015B: ILdRf var_1A8
  loc_D6015E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60163: LitStr "ERRRROR"
  loc_D60166: Call EjecutarRsCls(from_stack_1v)
  loc_D6016B: LitI4 2
  loc_D60170: FLdRfVar var_194
  loc_D60173: CVarRef
  loc_D60178: FLdRfVar var_208
  loc_D6017B: ImpAdCallFPR4  = Round(, )
  loc_D60180: FLdRfVar var_208
  loc_D60183: LitI4 2
  loc_D60188: ImpAdLdRf MemVar_D93060
  loc_D6018B: CVarRef
  loc_D60190: FLdRfVar var_218
  loc_D60193: ImpAdCallFPR4  = Round(, )
  loc_D60198: FLdRfVar var_218
  loc_D6019B: NeVarBool
  loc_D6019D: FFreeVar var_208 = ""
  loc_D601A4: BranchF loc_D601BD
  loc_D601A7: LitStr "El total del INTERES del boleto no es igual al TOTAL del Interes de los movimientos del boleto, verifique..."
  loc_D601AA: FStStrCopy var_1A8
  loc_D601AD: ILdRf var_1A8
  loc_D601B0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D601B5: LitStr "ERRRROR"
  loc_D601B8: Call EjecutarRsCls(from_stack_1v)
  loc_D601BD: LitI4 2
  loc_D601C2: FLdRfVar var_184
  loc_D601C5: CVarRef
  loc_D601CA: FLdRfVar var_208
  loc_D601CD: ImpAdCallFPR4  = Round(, )
  loc_D601D2: FLdRfVar var_208
  loc_D601D5: LitI4 2
  loc_D601DA: ImpAdLdRf MemVar_D93048
  loc_D601DD: CVarRef
  loc_D601E2: FLdRfVar var_218
  loc_D601E5: ImpAdCallFPR4  = Round(, )
  loc_D601EA: FLdRfVar var_218
  loc_D601ED: NeVarBool
  loc_D601EF: FFreeVar var_208 = ""
  loc_D601F6: BranchF loc_D6020F
  loc_D601F9: LitStr "El total del DESCUENTO del boleto no es igual al TOTAL del DESCUENTO de los movimientos del boleto, verifique..."
  loc_D601FC: FStStrCopy var_1A8
  loc_D601FF: ILdRf var_1A8
  loc_D60202: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60207: LitStr "ERRRROR"
  loc_D6020A: Call EjecutarRsCls(from_stack_1v)
  loc_D6020F: LitI4 2
  loc_D60214: FLdRfVar var_1A4
  loc_D60217: CVarRef
  loc_D6021C: FLdRfVar var_208
  loc_D6021F: ImpAdCallFPR4  = Round(, )
  loc_D60224: FLdRfVar var_208
  loc_D60227: LitI4 2
  loc_D6022C: ImpAdLdRf MemVar_D93070
  loc_D6022F: CVarRef
  loc_D60234: FLdRfVar var_218
  loc_D60237: ImpAdCallFPR4  = Round(, )
  loc_D6023C: FLdRfVar var_218
  loc_D6023F: NeVarBool
  loc_D60241: FFreeVar var_208 = ""
  loc_D60248: BranchF loc_D60261
  loc_D6024B: LitStr "El TOTAL GENERAL del BOLETO no es igual al TOTAL GENERAL del los movimientos del boleto, verifique..."
  loc_D6024E: FStStrCopy var_1A8
  loc_D60251: ILdRf var_1A8
  loc_D60254: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60259: LitStr "ERRRROR"
  loc_D6025C: Call EjecutarRsCls(from_stack_1v)
  loc_D60261: FLdRfVar var_9E
  loc_D60264: NextI2 var_23C, loc_D59948
  loc_D60269: LitStr "COMMIT;"
  loc_D6026C: Call EjecutarRsCls(from_stack_1v)
  loc_D60271: LitI2_Byte 0
  loc_D60273: ImpAdLdRf MemVar_D93E08
  loc_D60276: NewIfNullPr frmPlanesdePago
  loc_D60279: frmPlanesdePago.MousePointer = from_stack_1
  loc_D6027E: LitStr "Facilidad Generada numero: "
  loc_D60281: ILdRf var_B4
  loc_D60284: CStrI4
  loc_D60286: FStStrNoPop var_21C
  loc_D60289: ConcatStr
  loc_D6028A: FStStr var_1A8
  loc_D6028D: FFree1Str var_21C
  loc_D60290: ILdRf var_1A8
  loc_D60293: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D60298: ImpAdLdRf MemVar_D93AA4
  loc_D6029B: NewIfNullAd
  loc_D6029E: FStAd var_B30 
  loc_D602A2: ILdRf var_B4
  loc_D602A5: CStrI4
  loc_D602A7: CVarStr var_208
  loc_D602AA: PopAdLdVar
  loc_D602AB: FLdPr var_B30
  loc_D602AE: VCallAd Control_ID_
  loc_D602B1: FStAdFunc var_234
  loc_D602B4: FLdPr var_234
  loc_D602B7: LateIdSt
  loc_D602BC: FFree1Ad var_234
  loc_D602BF: FFree1Var var_208 = ""
  loc_D602C2: FLdRfVar var_21C
  loc_D602C5: FLdPr var_B30
  loc_D602C8: from_stack_1v = rptFacilidaddePago.DatosFacilidad()
  loc_D602CD: FFree1Str var_21C
  loc_D602D0: ILdRf var_8C
  loc_D602D3: FLdPr var_B30
  loc_D602D6: Call rptFacilidaddePago.RespNoTitularPut(from_stack_1v)
  loc_D602DB: FLdPr var_B30
  loc_D602DE: Call rptFacilidaddePago.cmdPredeterminada_Click()
  loc_D602E3: LitNothing
  loc_D602E5: FStAd var_B30 
  loc_D602E9: ExitProcHresult
  loc_D602EA: LitStr "rollback"
  loc_D602ED: Call EjecutarRsCls(from_stack_1v)
  loc_D602F2: LitStr "ERROR: NO SE generó la facilidad"
  loc_D602F5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D602FA: LitI2_Byte 0
  loc_D602FC: ImpAdLdRf MemVar_D93E08
  loc_D602FF: NewIfNullPr frmPlanesdePago
  loc_D60302: frmPlanesdePago.MousePointer = from_stack_1
  loc_D60307: ExitProcHresult
End Sub

Private Function Proc_284_181_9F4DDC() '9F4DDC
  'Data Table: 4F2254
  loc_9F4DB8: LitStr "Primary"
  loc_9F4DBB: FLdPr Me
  loc_9F4DBE: LateIdLdVar var_94 DispID_4 0
  loc_9F4DC5: CastAdVar Me
  loc_9F4DC9: FStAdFunc var_98
  loc_9F4DCC: FLdPr var_98
  loc_9F4DD4: FFree1Ad var_98
  loc_9F4DD7: FFree1Var var_94 = ""
  loc_9F4DDA: ExitProcHresult
End Function

Private Function Proc_284_182_9E46AC(arg_C) '9E46AC
  'Data Table: 4F2254
  loc_9E4690: ILdI4 arg_C
  loc_9E4693: FStStrCopy var_88
  loc_9E4696: ILdRf var_88
  loc_9E4699: LitStr "Primary"
  loc_9E469C: EqStr
  loc_9E469E: BranchF loc_9E46AB
  loc_9E46A1: FLdPr Me
  loc_9E46A4: MemLdStr RsFrm
  loc_9E46A7: IStAd
  loc_9E46AB: ExitProcHresult
End Function
