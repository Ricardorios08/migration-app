VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsjuicios"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FC7B8
  'Data Table: 4061FC
  loc_9FC788: FLdRfVar var_88
  loc_9FC78B: FLdPr Me
  loc_9FC78E: MemLdPr global_60
  loc_9FC791:  = Me.RecordCount
  loc_9FC796: ILdRf var_88
  loc_9FC799: LitI4 0
  loc_9FC79E: GtI4
  loc_9FC79F: BranchF loc_9FC7B4
  loc_9FC7A2: LitVar_Missing var_98
  loc_9FC7A5: PopAdLdVar
  loc_9FC7A6: ILdI4 iCantidad
  loc_9FC7A9: FLdPr Me
  loc_9FC7AC: MemLdPr global_60
  loc_9FC7AF: Me.Move from_stack_1, from_stack_2
  loc_9FC7B4: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EF564
  'Data Table: 4061FC
  loc_9EF53C: FLdRfVar var_88
  loc_9EF53F: FLdPr Me
  loc_9EF542: MemLdPr global_60
  loc_9EF545:  = Me.RecordCount
  loc_9EF54A: ILdRf var_88
  loc_9EF54D: LitI4 0
  loc_9EF552: GtI4
  loc_9EF553: BranchF loc_9EF561
  loc_9EF556: FLdPr Me
  loc_9EF559: MemLdPr global_60
  loc_9EF55C: Me.MoveFirst
  loc_9EF561: ExitProcHresult
  loc_9EF562: FLdRfVar var_7B8C
End Sub

Public Sub MoveLast() '9EF5BC
  'Data Table: 4061FC
  loc_9EF594: FLdRfVar var_88
  loc_9EF597: FLdPr Me
  loc_9EF59A: MemLdPr global_60
  loc_9EF59D:  = Me.RecordCount
  loc_9EF5A2: ILdRf var_88
  loc_9EF5A5: LitI4 0
  loc_9EF5AA: GtI4
  loc_9EF5AB: BranchF loc_9EF5B9
  loc_9EF5AE: FLdPr Me
  loc_9EF5B1: MemLdPr global_60
  loc_9EF5B4: Me.MoveLast
  loc_9EF5B9: ExitProcHresult
End Sub

Public Sub MoveNext() 'A69850
  'Data Table: 4061FC
  loc_A697D8: FLdRfVar var_86
  loc_A697DB: FLdPr Me
  loc_A697DE: MemLdPr global_60
  loc_A697E1:  = Me.EOF
  loc_A697E6: FLdI2 var_86
  loc_A697E9: NotI4
  loc_A697EA: FLdRfVar var_8C
  loc_A697ED: FLdPr Me
  loc_A697F0: MemLdPr global_60
  loc_A697F3:  = Me.RecordCount
  loc_A697F8: ILdRf var_8C
  loc_A697FB: LitI4 0
  loc_A69800: GtI4
  loc_A69801: AndI4
  loc_A69802: BranchF loc_A69810
  loc_A69805: FLdPr Me
  loc_A69808: MemLdPr global_60
  loc_A6980B: Me.MoveNext
  loc_A69810: FLdRfVar var_86
  loc_A69813: FLdPr Me
  loc_A69816: MemLdPr global_60
  loc_A69819:  = Me.EOF
  loc_A6981E: FLdI2 var_86
  loc_A69821: FLdRfVar var_8C
  loc_A69824: FLdPr Me
  loc_A69827: MemLdPr global_60
  loc_A6982A:  = Me.RecordCount
  loc_A6982F: ILdRf var_8C
  loc_A69832: LitI4 0
  loc_A69837: GtI4
  loc_A69838: AndI4
  loc_A69839: BranchF loc_A6984C
  loc_A6983C: ImpAdCallFPR4 Beep()
  loc_A69841: FLdPr Me
  loc_A69844: MemLdPr global_60
  loc_A69847: Me.MoveLast
  loc_A6984C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1D94
  'Data Table: 4061FC
  loc_9B1D88: FLdPr Me
  loc_9B1D8B: MemLdPr global_60
  loc_9B1D8E: Me.MoveNext
  loc_9B1D93: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B93C4
  'Data Table: 4061FC
  loc_9B93B0: LitVar_Missing var_94
  loc_9B93B3: PopAdLdVar
  loc_9B93B4: ILdI2 iValor
  loc_9B93B7: CI4UI1
  loc_9B93B8: FLdPr Me
  loc_9B93BB: MemLdPr global_60
  loc_9B93BE: Me.Move from_stack_1, from_stack_2
  loc_9B93C3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6A228
  'Data Table: 4061FC
  loc_A6A1B0: FLdRfVar var_86
  loc_A6A1B3: FLdPr Me
  loc_A6A1B6: MemLdPr global_60
  loc_A6A1B9:  = Me.BOF
  loc_A6A1BE: FLdI2 var_86
  loc_A6A1C1: NotI4
  loc_A6A1C2: FLdRfVar var_8C
  loc_A6A1C5: FLdPr Me
  loc_A6A1C8: MemLdPr global_60
  loc_A6A1CB:  = Me.RecordCount
  loc_A6A1D0: ILdRf var_8C
  loc_A6A1D3: LitI4 0
  loc_A6A1D8: GtI4
  loc_A6A1D9: AndI4
  loc_A6A1DA: BranchF loc_A6A1E8
  loc_A6A1DD: FLdPr Me
  loc_A6A1E0: MemLdPr global_60
  loc_A6A1E3: Me.MovePrevious
  loc_A6A1E8: FLdRfVar var_86
  loc_A6A1EB: FLdPr Me
  loc_A6A1EE: MemLdPr global_60
  loc_A6A1F1:  = Me.BOF
  loc_A6A1F6: FLdI2 var_86
  loc_A6A1F9: FLdRfVar var_8C
  loc_A6A1FC: FLdPr Me
  loc_A6A1FF: MemLdPr global_60
  loc_A6A202:  = Me.RecordCount
  loc_A6A207: ILdRf var_8C
  loc_A6A20A: LitI4 0
  loc_A6A20F: GtI4
  loc_A6A210: AndI4
  loc_A6A211: BranchF loc_A6A224
  loc_A6A214: ImpAdCallFPR4 Beep()
  loc_A6A219: FLdPr Me
  loc_A6A21C: MemLdPr global_60
  loc_A6A21F: Me.MoveFirst
  loc_A6A224: ExitProcHresult
End Sub

Public Property Get EOF() '9D5A2C
  'Data Table: 4061FC
  loc_9D5A10: FLdRfVar var_88
  loc_9D5A13: FLdPr Me
  loc_9D5A16: MemLdPr global_60
  loc_9D5A19:  = Me.EOF
  loc_9D5A1E: FLdI2 var_88
  loc_9D5A21: FStI2 var_86
  loc_9D5A24: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D59E0
  'Data Table: 4061FC
  loc_9D59C4: FLdRfVar var_88
  loc_9D59C7: FLdPr Me
  loc_9D59CA: MemLdPr global_60
  loc_9D59CD:  = Me.BOF
  loc_9D59D2: FLdI2 var_88
  loc_9D59D5: FStI2 var_86
  loc_9D59D8: ExitProcCbHresult
  loc_9D59DE: Ary1StStrCopy
End Sub

Public Sub Sort(sOrden) '9B5178
  'Data Table: 4061FC
  loc_9B5168: ILdI4 sOrden
  loc_9B516B: FLdPr Me
  loc_9B516E: MemLdPr global_60
  loc_9B5171: Me.Sort = from_stack_1
  loc_9B5176: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD220
  'Data Table: 4061FC
  loc_9DD200: LitVar_Missing var_94
  loc_9DD203: PopAdLdVar
  loc_9DD204: LitI4 1
  loc_9DD209: LitI4 0
  loc_9DD20E: ILdI4 sFind
  loc_9DD211: FLdPr Me
  loc_9DD214: MemLdPr global_60
  loc_9DD217: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD21C: ExitProcHresult
  loc_9DD21D: FnAbsI4
  loc_9DD21E: Ary1StCy
End Sub

Public Sub Filter(sCriterio) '9B9490
  'Data Table: 4061FC
  loc_9B947C: ILdI4 sCriterio
  loc_9B947F: CVarStr var_94
  loc_9B9482: PopAdLdVar
  loc_9B9483: FLdPr Me
  loc_9B9486: MemLdPr global_60
  loc_9B9489: Me.Filter = from_stack_1
  loc_9B948E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D58B0
  'Data Table: 4061FC
  loc_9D5894: FLdRfVar var_8C
  loc_9D5897: FLdPr Me
  loc_9D589A: MemLdPr global_60
  loc_9D589D:  = Me.AbsolutePosition
  loc_9D58A2: ILdRf var_8C
  loc_9D58A5: FStR4 var_88
  loc_9D58A8: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D5864
  'Data Table: 4061FC
  loc_9D5848: FLdRfVar var_8C
  loc_9D584B: FLdPr Me
  loc_9D584E: MemLdPr global_60
  loc_9D5851:  = Me.RecordCount
  loc_9D5856: ILdRf var_8C
  loc_9D5859: FStR4 var_88
  loc_9D585C: ExitProcCbHresult
End Sub

Public Sub AddNew(ExpeJuic, CaraJuic, TribJuic, CircJuic, FechJuic, ImpoJuic) 'AF1198
  'Data Table: 4061FC
  loc_AF104C: ILdRf ExpeJuic
  loc_AF104F: FStStrCopy var_88
  loc_AF1052: ILdRf CaraJuic
  loc_AF1055: FStStrCopy var_8C
  loc_AF1058: ILdRf TribJuic
  loc_AF105B: FStStrCopy var_90
  loc_AF105E: ILdRf CircJuic
  loc_AF1061: FStStrCopy var_94
  loc_AF1064: ILdRf FechJuic
  loc_AF1067: FStStrCopy var_98
  loc_AF106A: FLdRfVar var_A0
  loc_AF106D: from_stack_1v = NuevoRegistro()
  loc_AF1072: ILdRf var_A0
  loc_AF1075: FStR4 var_9C
  loc_AF1078: LitStr " START TRANSACTION; INSERT INTO juicio (NumeJuic, ExpeJuic, CaraJuic, TribJuic, CircJuic, FechJuic, ImpoJuic, AltaUsua, AltaFeho) "
  loc_AF107B: LitStr " VALUES ("
  loc_AF107E: ConcatStr
  loc_AF107F: FStStrNoPop var_A4
  loc_AF1082: ILdRf var_9C
  loc_AF1085: CStrI4
  loc_AF1087: FStStrNoPop var_A8
  loc_AF108A: ConcatStr
  loc_AF108B: FStStrNoPop var_AC
  loc_AF108E: LitStr ",'"
  loc_AF1091: ConcatStr
  loc_AF1092: FStStrNoPop var_B0
  loc_AF1095: ILdRf var_88
  loc_AF1098: ConcatStr
  loc_AF1099: FStStrNoPop var_B4
  loc_AF109C: LitStr "','"
  loc_AF109F: ConcatStr
  loc_AF10A0: FStStrNoPop var_B8
  loc_AF10A3: ILdRf var_8C
  loc_AF10A6: ConcatStr
  loc_AF10A7: FStStrNoPop var_BC
  loc_AF10AA: LitStr "','"
  loc_AF10AD: ConcatStr
  loc_AF10AE: FStStrNoPop var_C0
  loc_AF10B1: ILdRf var_90
  loc_AF10B4: ConcatStr
  loc_AF10B5: FStStrNoPop var_C4
  loc_AF10B8: LitStr "','"
  loc_AF10BB: ConcatStr
  loc_AF10BC: FStStrNoPop var_C8
  loc_AF10BF: ILdRf var_94
  loc_AF10C2: ConcatStr
  loc_AF10C3: FStStrNoPop var_CC
  loc_AF10C6: LitStr "',"
  loc_AF10C9: ConcatStr
  loc_AF10CA: FStStrNoPop var_100
  loc_AF10CD: LitI4 1
  loc_AF10D2: LitI4 1
  loc_AF10D7: LitVarStr var_EC, "'yyyy-mm-dd'"
  loc_AF10DC: FStVarCopyObj var_FC
  loc_AF10DF: FLdRfVar var_FC
  loc_AF10E2: FLdRfVar var_98
  loc_AF10E5: CVarRef
  loc_AF10EA: ImpAdCallI2 Format$(, )
  loc_AF10EF: FStStrNoPop var_104
  loc_AF10F2: ConcatStr
  loc_AF10F3: FStStrNoPop var_108
  loc_AF10F6: LitStr ","
  loc_AF10F9: ConcatStr
  loc_AF10FA: FStStrNoPop var_110
  loc_AF10FD: LitI4 0
  loc_AF1102: LitI4 -1
  loc_AF1107: LitI4 1
  loc_AF110C: LitStr "."
  loc_AF110F: LitStr ","
  loc_AF1112: FLdFPR8 ImpoJuic
  loc_AF1115: CStrR8
  loc_AF1117: FStStrNoPop var_10C
  loc_AF111A: ImpAdCallI2 Replace(, , , , , )
  loc_AF111F: FStStrNoPop var_114
  loc_AF1122: ConcatStr
  loc_AF1123: FStStrNoPop var_118
  loc_AF1126: LitStr ",'"
  loc_AF1129: ConcatStr
  loc_AF112A: FStStrNoPop var_11C
  loc_AF112D: ImpAdLdI4 MemVar_D9302C
  loc_AF1130: ConcatStr
  loc_AF1131: FStStrNoPop var_120
  loc_AF1134: LitStr "', now());"
  loc_AF1137: ConcatStr
  loc_AF1138: FStStrNoPop var_124
  loc_AF113B: Call Proc_232_27_A4D064()
  loc_AF1140: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AF116D: FFree1Var var_FC = ""
  loc_AF1170: OnErrorGoto loc_AF1184
  loc_AF1173: LitStr "COMMIT"
  loc_AF1176: Call Proc_232_27_A4D064()
  loc_AF117B: ILdRf var_9C
  loc_AF117E: Call Encontrar(from_stack_1v)
  loc_AF1183: ExitProcHresult
  loc_AF1184: LitStr "ROLLBACK;"
  loc_AF1187: Call Proc_232_27_A4D064()
  loc_AF118C: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AF118F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF1194: ExitProcHresult
End Sub

Public Sub Modificar(NumeJuic, ExpeJuic, CaraJuic, TribJuic, CircJuic, FechJuic, ImpoJuic) 'AEBE54
  'Data Table: 4061FC
  loc_AEBD20: ILdRf ExpeJuic
  loc_AEBD23: FStStrCopy var_88
  loc_AEBD26: ILdRf CaraJuic
  loc_AEBD29: FStStrCopy var_8C
  loc_AEBD2C: ILdRf TribJuic
  loc_AEBD2F: FStStrCopy var_90
  loc_AEBD32: ILdRf CircJuic
  loc_AEBD35: FStStrCopy var_94
  loc_AEBD38: ILdRf FechJuic
  loc_AEBD3B: FStStrCopy var_98
  loc_AEBD3E: LitStr "START TRANSACTION; UPDATE juicio SET ExpeJuic = '"
  loc_AEBD41: ILdRf var_88
  loc_AEBD44: ConcatStr
  loc_AEBD45: FStStrNoPop var_9C
  loc_AEBD48: LitStr "', CaraJuic = '"
  loc_AEBD4B: ConcatStr
  loc_AEBD4C: FStStrNoPop var_A0
  loc_AEBD4F: ILdRf var_8C
  loc_AEBD52: ConcatStr
  loc_AEBD53: FStStrNoPop var_A4
  loc_AEBD56: LitStr "', TribJuic = '"
  loc_AEBD59: ConcatStr
  loc_AEBD5A: FStStrNoPop var_A8
  loc_AEBD5D: ILdRf var_90
  loc_AEBD60: ConcatStr
  loc_AEBD61: FStStrNoPop var_AC
  loc_AEBD64: LitStr "', CircJuic = '"
  loc_AEBD67: ConcatStr
  loc_AEBD68: FStStrNoPop var_B0
  loc_AEBD6B: ILdRf var_94
  loc_AEBD6E: ConcatStr
  loc_AEBD6F: FStStrNoPop var_B4
  loc_AEBD72: LitStr "', FechJuic = "
  loc_AEBD75: ConcatStr
  loc_AEBD76: FStStrNoPop var_E8
  loc_AEBD79: LitI4 1
  loc_AEBD7E: LitI4 1
  loc_AEBD83: LitVarStr var_D4, "'yyyy-mm-dd'"
  loc_AEBD88: FStVarCopyObj var_E4
  loc_AEBD8B: FLdRfVar var_E4
  loc_AEBD8E: FLdRfVar var_98
  loc_AEBD91: CVarRef
  loc_AEBD96: ImpAdCallI2 Format$(, )
  loc_AEBD9B: FStStrNoPop var_EC
  loc_AEBD9E: ConcatStr
  loc_AEBD9F: FStStrNoPop var_F0
  loc_AEBDA2: LitStr ", ImpoJuic = "
  loc_AEBDA5: ConcatStr
  loc_AEBDA6: FStStrNoPop var_F8
  loc_AEBDA9: LitI4 0
  loc_AEBDAE: LitI4 -1
  loc_AEBDB3: LitI4 1
  loc_AEBDB8: LitStr "."
  loc_AEBDBB: LitStr ","
  loc_AEBDBE: FLdFPR8 ImpoJuic
  loc_AEBDC1: CStrR8
  loc_AEBDC3: FStStrNoPop var_F4
  loc_AEBDC6: ImpAdCallI2 Replace(, , , , , )
  loc_AEBDCB: FStStrNoPop var_FC
  loc_AEBDCE: ConcatStr
  loc_AEBDCF: FStStrNoPop var_100
  loc_AEBDD2: LitStr ",  ModiUsua = '"
  loc_AEBDD5: ConcatStr
  loc_AEBDD6: FStStrNoPop var_104
  loc_AEBDD9: ImpAdLdI4 MemVar_D9302C
  loc_AEBDDC: ConcatStr
  loc_AEBDDD: FStStrNoPop var_108
  loc_AEBDE0: LitStr "', ModiFeho = now() WHERE NumeJuic = "
  loc_AEBDE3: ConcatStr
  loc_AEBDE4: FStStrNoPop var_10C
  loc_AEBDE7: ILdRf NumeJuic
  loc_AEBDEA: CStrI4
  loc_AEBDEC: FStStrNoPop var_110
  loc_AEBDEF: ConcatStr
  loc_AEBDF0: FStStrNoPop var_114
  loc_AEBDF3: LitStr ";"
  loc_AEBDF6: ConcatStr
  loc_AEBDF7: FStStrNoPop var_118
  loc_AEBDFA: Call Proc_232_27_A4D064()
  loc_AEBDFF: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_AEBE2A: FFree1Var var_E4 = ""
  loc_AEBE2D: OnErrorGoto loc_AEBE41
  loc_AEBE30: LitStr "COMMIT;"
  loc_AEBE33: Call Proc_232_27_A4D064()
  loc_AEBE38: ILdRf NumeJuic
  loc_AEBE3B: Call Encontrar(from_stack_1v)
  loc_AEBE40: ExitProcHresult
  loc_AEBE41: LitStr "ROLLBACK;"
  loc_AEBE44: Call Proc_232_27_A4D064()
  loc_AEBE49: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AEBE4C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEBE51: ExitProcHresult
End Sub

Public Sub Baja(NumeJuic) 'A64880
  'Data Table: 4061FC
  loc_A64824: LitStr "START TRANSACTION; UPDATE juicio SET BajaUsua = '"
  loc_A64827: ImpAdLdI4 MemVar_D9302C
  loc_A6482A: ConcatStr
  loc_A6482B: FStStrNoPop var_88
  loc_A6482E: LitStr "', BajaFeho = now() WHERE NumeJuic = "
  loc_A64831: ConcatStr
  loc_A64832: FStStrNoPop var_8C
  loc_A64835: ILdRf NumeJuic
  loc_A64838: CStrI4
  loc_A6483A: FStStrNoPop var_90
  loc_A6483D: ConcatStr
  loc_A6483E: FStStrNoPop var_94
  loc_A64841: LitStr ";"
  loc_A64844: ConcatStr
  loc_A64845: FStStrNoPop var_98
  loc_A64848: Call Proc_232_27_A4D064()
  loc_A6484D: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A6485A: OnErrorGoto loc_A6486E
  loc_A6485D: LitStr "COMMIT;"
  loc_A64860: Call Proc_232_27_A4D064()
  loc_A64865: ILdRf NumeJuic
  loc_A64868: Call Encontrar(from_stack_1v)
  loc_A6486D: ExitProcHresult
  loc_A6486E: LitStr "ROLLBACK;"
  loc_A64871: Call Proc_232_27_A4D064()
  loc_A64876: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_A64879: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6487E: ExitProcHresult
End Sub

Public Sub Requery() '9E6D8C
  'Data Table: 4061FC
  loc_9E6D68: LitI4 -1
  loc_9E6D6D: FLdPr Me
  loc_9E6D70: MemLdPr global_60
  loc_9E6D73: Me.Requery from_stack_1
  loc_9E6D78: LitVarStr var_94, "Primary"
  loc_9E6D7D: PopAdLdVar
  loc_9E6D7E: FLdPr Me
  loc_9E6D81: LateIdCall
  loc_9E6D89: ExitProcHresult
  loc_9E6D8A: ArrayRebase1Var
End Sub

Public Sub Encontrar(NumeJuic) 'A5A3C0
  'Data Table: 4061FC
  loc_A5A360: Call Requery()
  loc_A5A365: LitStr "NumeJuic = "
  loc_A5A368: ILdRf NumeJuic
  loc_A5A36B: CStrI4
  loc_A5A36D: FStStrNoPop var_88
  loc_A5A370: ConcatStr
  loc_A5A371: PopTmpLdAdStr
  loc_A5A375: Call Find(from_stack_1v)
  loc_A5A37A: FFreeStr var_88 = ""
  loc_A5A381: FLdRfVar var_90
  loc_A5A384: FLdPr Me
  loc_A5A387: MemLdPr global_60
  loc_A5A38A:  = Me.RecordCount
  loc_A5A38F: ILdRf var_90
  loc_A5A392: LitI4 0
  loc_A5A397: GtI4
  loc_A5A398: FLdRfVar var_94
  loc_A5A39B: FLdPr Me
  loc_A5A39E: MemLdPr global_60
  loc_A5A3A1:  = Me.AbsolutePosition
  loc_A5A3A6: ILdRf var_94
  loc_A5A3A9: LitI4 -3
  loc_A5A3AE: EqI4
  loc_A5A3AF: AndI4
  loc_A5A3B0: BranchF loc_A5A3BE
  loc_A5A3B3: FLdPr Me
  loc_A5A3B6: MemLdPr global_60
  loc_A5A3B9: Me.MoveLast
  loc_A5A3BE: ExitProcHresult
End Sub

Public Function ValidaClave(CodiDeva) 'A4CB70
  'Data Table: 4061FC
  loc_A4CB24: ILdRf CodiDeva
  loc_A4CB27: FStStrCopy var_8C
  loc_A4CB2A: ZeroRetVal
  loc_A4CB2C: LitStr "SELECT NumeJuic FROM ari WHERE CodiDeva = '"
  loc_A4CB2F: ILdRf var_8C
  loc_A4CB32: ConcatStr
  loc_A4CB33: FStStrNoPop var_90
  loc_A4CB36: LitStr "'"
  loc_A4CB39: ConcatStr
  loc_A4CB3A: FStStrNoPop ValidaClave
  loc_A4CB3D: Call Proc_232_27_A4D064()
  loc_A4CB42: FFreeStr var_90 = ""
  loc_A4CB49: FLdRfVar var_98
  loc_A4CB4C: FLdPr Me
  loc_A4CB4F: MemLdPr global_64
  loc_A4CB52:  = Me.RecordCount
  loc_A4CB57: ILdRf var_98
  loc_A4CB5A: LitI4 0
  loc_A4CB5F: GtI4
  loc_A4CB60: BranchF loc_A4CB69
  loc_A4CB63: LitStr "EL Deudor Vario YA EXISTE. Reintente..."
  loc_A4CB66: FStStrCopy var_88
  loc_A4CB69: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'A68100
  'Data Table: 4061FC
  loc_A68098: LitStr "SELECT IFNULL(MAX(NumeJuic),0) + 1 NumeJuic FROM juicio ORDER BY NumeJuic"
  loc_A6809B: Call Proc_232_27_A4D064()
  loc_A680A0: FLdRfVar var_8C
  loc_A680A3: FLdPr Me
  loc_A680A6: MemLdPr global_64
  loc_A680A9:  = Me.RecordCount
  loc_A680AE: ILdRf var_8C
  loc_A680B1: LitI4 0
  loc_A680B6: GtI4
  loc_A680B7: BranchF loc_A680F7
  loc_A680BA: FLdRfVar var_B4
  loc_A680BD: FLdRfVar var_A4
  loc_A680C0: LitVarStr var_A0, "NumeJuic"
  loc_A680C5: PopAdLdVar
  loc_A680C6: FLdRfVar var_90
  loc_A680C9: FLdPr Me
  loc_A680CC: MemLdPr global_64
  loc_A680CF:  = Me.Fields
  loc_A680D4: FLdPr var_90
  loc_A680D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A680DC: FLdPr var_A4
  loc_A680DF:  = Me.Value
  loc_A680E4: FLdRfVar var_B4
  loc_A680E7: FnCIntVar
  loc_A680E9: CI4UI1
  loc_A680EA: FStR4 var_88
  loc_A680ED: FFreeAd var_90 = ""
  loc_A680F4: FFree1Var var_B4 = ""
  loc_A680F7: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A5F814
  'Data Table: 4061FC
  loc_A5F7B0: ILdRf sSelect
  loc_A5F7B3: FStStrCopy var_88
  loc_A5F7B6: LitNothing
  loc_A5F7B8: CastAd
  loc_A5F7BB: FStAdFuncNoPop
  loc_A5F7BE: FLdPr Me
  loc_A5F7C1: MemStAd
  loc_A5F7C5: FFree1Ad var_8C
  loc_A5F7C8: New Recordset
  loc_A5F7CC: FStAdFuncNoPop
  loc_A5F7CF: FLdPr Me
  loc_A5F7D2: MemStAd
  loc_A5F7D6: FFree1Ad var_8C
  loc_A5F7D9: LitI4 -1
  loc_A5F7DE: LitI4 3
  loc_A5F7E3: LitI4 3
  loc_A5F7E8: ImpAdLdI4 MemVar_D9301C
  loc_A5F7EB: CVarAd
  loc_A5F7EF: PopAdLdVar
  loc_A5F7F0: ILdRf var_88
  loc_A5F7F3: CVarStr var_9C
  loc_A5F7F6: PopAdLdVar
  loc_A5F7F7: FLdPr Me
  loc_A5F7FA: MemLdPr global_60
  loc_A5F7FD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5F802: LitVarStr var_9C, "Primary"
  loc_A5F807: PopAdLdVar
  loc_A5F808: FLdPr Me
  loc_A5F80B: LateIdCall
  loc_A5F813: ExitProcHresult
End Sub

Public Property Get DataSource() '9F328C
  'Data Table: 4061FC
  loc_9F3268: ZeroRetVal
  loc_9F326A: FLdRfVar var_8C
  loc_9F326D: FLdPr Me
  loc_9F3270: MemLdPr global_60
  loc_9F3273:  = Me.DataSource
  loc_9F3278: ILdRf var_8C
  loc_9F327B: CastAd
  loc_9F327E: FStAdFunc var_88
  loc_9F3281: FFree1Ad var_8C
  loc_9F3284: ExitProcCbHresult
End Sub

Public Property Get NumeJuic() 'A2EE24
  'Data Table: 4061FC
  loc_A2EDE0: FLdRfVar var_B0
  loc_A2EDE3: FLdRfVar var_A0
  loc_A2EDE6: LitVarStr var_9C, "NumeJuic"
  loc_A2EDEB: PopAdLdVar
  loc_A2EDEC: FLdRfVar var_8C
  loc_A2EDEF: FLdPr Me
  loc_A2EDF2: MemLdPr global_60
  loc_A2EDF5:  = Me.Fields
  loc_A2EDFA: FLdPr var_8C
  loc_A2EDFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2EE02: FLdPr var_A0
  loc_A2EE05:  = Me.Value
  loc_A2EE0A: FLdRfVar var_B0
  loc_A2EE0D: CI4Var
  loc_A2EE0F: FStR4 var_88
  loc_A2EE12: FFreeAd var_8C = ""
  loc_A2EE19: FFree1Var var_B0 = ""
  loc_A2EE1C: ExitProcCbHresult
End Sub

Public Property Get BajaUsua() 'A3AEAC
  'Data Table: 4061FC
  loc_A3AE68: ZeroRetVal
  loc_A3AE6A: FLdRfVar var_B0
  loc_A3AE6D: FLdRfVar var_A0
  loc_A3AE70: LitVarStr var_9C, "BajaUsua"
  loc_A3AE75: PopAdLdVar
  loc_A3AE76: FLdRfVar var_8C
  loc_A3AE79: FLdPr Me
  loc_A3AE7C: MemLdPr global_60
  loc_A3AE7F:  = Me.Fields
  loc_A3AE84: FLdPr var_8C
  loc_A3AE87: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AE8C: FLdPr var_A0
  loc_A3AE8F:  = Me.Value
  loc_A3AE94: FLdRfVar var_B0
  loc_A3AE97: CStrVarTmp
  loc_A3AE98: FStStr var_88
  loc_A3AE9B: FFreeAd var_8C = ""
  loc_A3AEA2: FFree1Var var_B0 = ""
  loc_A3AEA5: ExitProcCbHresult
  loc_A3AEAB: CR8I2
End Sub

Public Property Get BajaFeho() 'A3AE28
  'Data Table: 4061FC
  loc_A3ADE4: ZeroRetVal
  loc_A3ADE6: FLdRfVar var_B0
  loc_A3ADE9: FLdRfVar var_A0
  loc_A3ADEC: LitVarStr var_9C, "BajaFeho"
  loc_A3ADF1: PopAdLdVar
  loc_A3ADF2: FLdRfVar var_8C
  loc_A3ADF5: FLdPr Me
  loc_A3ADF8: MemLdPr global_60
  loc_A3ADFB:  = Me.Fields
  loc_A3AE00: FLdPr var_8C
  loc_A3AE03: from_stack_2 = Me.Item(from_stack_1)
  loc_A3AE08: FLdPr var_A0
  loc_A3AE0B:  = Me.Value
  loc_A3AE10: FLdRfVar var_B0
  loc_A3AE13: CStrVarTmp
  loc_A3AE14: FStStr var_88
  loc_A3AE17: FFreeAd var_8C = ""
  loc_A3AE1E: FFree1Var var_B0 = ""
  loc_A3AE21: ExitProcCbHresult
  loc_A3AE27: ConcatStr
End Sub

Private Function Proc_232_26_9F31D4() '9F31D4
  'Data Table: 4061FC
  loc_9F31B0: LitStr "Primary"
  loc_9F31B3: FLdPr Me
  loc_9F31B6: LateIdLdVar var_94 DispID_4 0
  loc_9F31BD: CastAdVar Me
  loc_9F31C1: FStAdFunc var_98
  loc_9F31C4: FLdPr var_98
  loc_9F31CC: FFree1Ad var_98
  loc_9F31CF: FFree1Var var_94 = ""
  loc_9F31D2: ExitProcHresult
End Function

Private Function Proc_232_27_A4D064(arg_C) 'A4D064
  'Data Table: 4061FC
  loc_A4D010: ILdRf arg_C
  loc_A4D013: FStStrCopy var_88
  loc_A4D016: LitNothing
  loc_A4D018: CastAd
  loc_A4D01B: FStAdFuncNoPop
  loc_A4D01E: FLdPr Me
  loc_A4D021: MemStAd
  loc_A4D025: FFree1Ad var_8C
  loc_A4D028: New Recordset
  loc_A4D02C: FStAdFuncNoPop
  loc_A4D02F: FLdPr Me
  loc_A4D032: MemStAd
  loc_A4D036: FFree1Ad var_8C
  loc_A4D039: LitI4 -1
  loc_A4D03E: LitI4 3
  loc_A4D043: LitI4 3
  loc_A4D048: ImpAdLdI4 MemVar_D9301C
  loc_A4D04B: CVarAd
  loc_A4D04F: PopAdLdVar
  loc_A4D050: ILdRf var_88
  loc_A4D053: CVarStr var_9C
  loc_A4D056: PopAdLdVar
  loc_A4D057: FLdPr Me
  loc_A4D05A: MemLdPr global_64
  loc_A4D05D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4D062: ExitProcHresult
End Function

Private Function Proc_232_28_9DD35C(arg_C) '9DD35C
  'Data Table: 4061FC
  loc_9DD340: ILdI4 arg_C
  loc_9DD343: FStStrCopy var_88
  loc_9DD346: ILdRf var_88
  loc_9DD349: LitStr "Primary"
  loc_9DD34C: EqStr
  loc_9DD34E: BranchF loc_9DD35B
  loc_9DD351: FLdPr Me
  loc_9DD354: MemLdStr global_60
  loc_9DD357: IStAd
  loc_9DD35B: ExitProcHresult
End Function
