VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsfinalidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40D63C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40D64B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40D65A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '97001C
  'Data Table: 40D450
  loc_96FFF4: FLdRfVar var_88
  loc_96FFF7: FLdPr Me
  loc_96FFFA: MemLdPr RsFrm
  loc_96FFFD:  = Me.RecordCount
  loc_970002: ILdRf var_88
  loc_970005: LitI4 0
  loc_97000A: GtI4
  loc_97000B: BranchF loc_970019
  loc_97000E: FLdPr Me
  loc_970011: MemLdPr RsFrm
  loc_970014: Me.MoveFirst
  loc_970019: ExitProcHresult
End Sub

Public Sub MoveLast() '970D84
  'Data Table: 40D450
  loc_970D5C: FLdRfVar var_88
  loc_970D5F: FLdPr Me
  loc_970D62: MemLdPr RsFrm
  loc_970D65:  = Me.RecordCount
  loc_970D6A: ILdRf var_88
  loc_970D6D: LitI4 0
  loc_970D72: GtI4
  loc_970D73: BranchF loc_970D81
  loc_970D76: FLdPr Me
  loc_970D79: MemLdPr RsFrm
  loc_970D7C: Me.MoveLast
  loc_970D81: ExitProcHresult
End Sub

Public Sub MoveNext() '99E510
  'Data Table: 40D450
  loc_99E498: FLdRfVar var_86
  loc_99E49B: FLdPr Me
  loc_99E49E: MemLdPr RsFrm
  loc_99E4A1:  = Me.EOF
  loc_99E4A6: FLdI2 var_86
  loc_99E4A9: NotI4
  loc_99E4AA: FLdRfVar var_8C
  loc_99E4AD: FLdPr Me
  loc_99E4B0: MemLdPr RsFrm
  loc_99E4B3:  = Me.RecordCount
  loc_99E4B8: ILdRf var_8C
  loc_99E4BB: LitI4 0
  loc_99E4C0: GtI4
  loc_99E4C1: AndI4
  loc_99E4C2: BranchF loc_99E4D0
  loc_99E4C5: FLdPr Me
  loc_99E4C8: MemLdPr RsFrm
  loc_99E4CB: Me.MoveNext
  loc_99E4D0: FLdRfVar var_86
  loc_99E4D3: FLdPr Me
  loc_99E4D6: MemLdPr RsFrm
  loc_99E4D9:  = Me.EOF
  loc_99E4DE: FLdI2 var_86
  loc_99E4E1: FLdRfVar var_8C
  loc_99E4E4: FLdPr Me
  loc_99E4E7: MemLdPr RsFrm
  loc_99E4EA:  = Me.RecordCount
  loc_99E4EF: ILdRf var_8C
  loc_99E4F2: LitI4 0
  loc_99E4F7: GtI4
  loc_99E4F8: AndI4
  loc_99E4F9: BranchF loc_99E50C
  loc_99E4FC: ImpAdCallFPR4 Beep()
  loc_99E501: FLdPr Me
  loc_99E504: MemLdPr RsFrm
  loc_99E507: Me.MoveLast
  loc_99E50C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9410A8
  'Data Table: 40D450
  loc_94109C: FLdPr Me
  loc_94109F: MemLdPr RsFrm
  loc_9410A2: Me.MoveNext
  loc_9410A7: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E9A8
  'Data Table: 40D450
  loc_99E930: FLdRfVar var_86
  loc_99E933: FLdPr Me
  loc_99E936: MemLdPr RsFrm
  loc_99E939:  = Me.BOF
  loc_99E93E: FLdI2 var_86
  loc_99E941: NotI4
  loc_99E942: FLdRfVar var_8C
  loc_99E945: FLdPr Me
  loc_99E948: MemLdPr RsFrm
  loc_99E94B:  = Me.RecordCount
  loc_99E950: ILdRf var_8C
  loc_99E953: LitI4 0
  loc_99E958: GtI4
  loc_99E959: AndI4
  loc_99E95A: BranchF loc_99E968
  loc_99E95D: FLdPr Me
  loc_99E960: MemLdPr RsFrm
  loc_99E963: Me.MovePrevious
  loc_99E968: FLdRfVar var_86
  loc_99E96B: FLdPr Me
  loc_99E96E: MemLdPr RsFrm
  loc_99E971:  = Me.BOF
  loc_99E976: FLdI2 var_86
  loc_99E979: FLdRfVar var_8C
  loc_99E97C: FLdPr Me
  loc_99E97F: MemLdPr RsFrm
  loc_99E982:  = Me.RecordCount
  loc_99E987: ILdRf var_8C
  loc_99E98A: LitI4 0
  loc_99E98F: GtI4
  loc_99E990: AndI4
  loc_99E991: BranchF loc_99E9A4
  loc_99E994: ImpAdCallFPR4 Beep()
  loc_99E999: FLdPr Me
  loc_99E99C: MemLdPr RsFrm
  loc_99E99F: Me.MoveFirst
  loc_99E9A4: ExitProcHresult
End Sub

Public Property Get EOF() '96066C
  'Data Table: 40D450
  loc_960650: FLdRfVar var_88
  loc_960653: FLdPr Me
  loc_960656: MemLdPr RsFrm
  loc_960659:  = Me.EOF
  loc_96065E: FLdI2 var_88
  loc_960661: FStI2 var_86
  loc_960664: ExitProcCbHresult
  loc_96066A: GeCy
End Sub

Public Property Get BOF() '9605D4
  'Data Table: 40D450
  loc_9605B8: FLdRfVar var_88
  loc_9605BB: FLdPr Me
  loc_9605BE: MemLdPr RsFrm
  loc_9605C1:  = Me.BOF
  loc_9605C6: FLdI2 var_88
  loc_9605C9: FStI2 var_86
  loc_9605CC: ExitProcCbHresult
  loc_9605D2: CRec2Ansi var_2800
End Sub

Public Sub Sort(sOrden) '945CC4
  'Data Table: 40D450
  loc_945CB4: ILdI4 sOrden
  loc_945CB7: FLdPr Me
  loc_945CBA: MemLdPr RsFrm
  loc_945CBD: Me.Sort = from_stack_1
  loc_945CC2: ExitProcHresult
End Sub

Public Sub Find(sFind) '9682F0
  'Data Table: 40D450
  loc_9682D0: LitVar_Missing var_94
  loc_9682D3: PopAdLdVar
  loc_9682D4: LitI4 1
  loc_9682D9: LitI4 0
  loc_9682DE: ILdI4 sFind
  loc_9682E1: FLdPr Me
  loc_9682E4: MemLdPr RsFrm
  loc_9682E7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9682EC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '949050
  'Data Table: 40D450
  loc_94903C: ILdI4 sCriterio
  loc_94903F: CVarStr var_94
  loc_949042: PopAdLdVar
  loc_949043: FLdPr Me
  loc_949046: MemLdPr RsFrm
  loc_949049: Me.Filter = from_stack_1
  loc_94904E: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '960374
  'Data Table: 40D450
  loc_960358: FLdRfVar var_8C
  loc_96035B: FLdPr Me
  loc_96035E: MemLdPr RsFrm
  loc_960361:  = Me.AbsolutePosition
  loc_960366: ILdRf var_8C
  loc_960369: FStR4 var_88
  loc_96036C: ExitProcCbHresult
  loc_960372: ThisVCallAd
End Sub

Public Property Get RecordCount() '9602DC
  'Data Table: 40D450
  loc_9602C0: FLdRfVar var_8C
  loc_9602C3: FLdPr Me
  loc_9602C6: MemLdPr RsFrm
  loc_9602C9:  = Me.RecordCount
  loc_9602CE: ILdRf var_8C
  loc_9602D1: FStR4 var_88
  loc_9602D4: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiFifu, DetaFifu, AutoFifu, ObseFifu, CoauFifu, CoesFifu) 'A109FC
  'Data Table: 40D450
  loc_A108D8: ILdRf CodiFifu
  loc_A108DB: FStStrCopy var_88
  loc_A108DE: ILdRf DetaFifu
  loc_A108E1: FStStrCopy var_8C
  loc_A108E4: ILdRf CoauFifu
  loc_A108E7: FStStrCopy var_90
  loc_A108EA: ILdRf arg_28
  loc_A108ED: FStStrCopy var_94
  loc_A108F0: FLdRfVar var_9C
  loc_A108F3: ILdRf var_88
  loc_A108F6: FLdI2 PeriInfo
  loc_A108F9: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A108FE: FLdZeroAd var_9C
  loc_A10901: FStStr var_98
  loc_A10904: ILdRf var_98
  loc_A10907: LitStr vbNullString
  loc_A1090A: NeStr
  loc_A1090C: BranchF loc_A1091F
  loc_A1090F: LitI4 0
  loc_A10914: ILdRf var_98
  loc_A10917: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1091C: Branch loc_A109FA
  loc_A1091F: LitStr "INSERT INTO finalidad (PeriInfo,CodiFifu,DetaFifu,AutoFifu,ObseFifu,CoauFifu,ImpuFifu,CoesFifu,AltaUsua) VALUES ("
  loc_A10922: FLdI2 PeriInfo
  loc_A10925: CStrUI1
  loc_A10927: FStStrNoPop var_9C
  loc_A1092A: ConcatStr
  loc_A1092B: FStStrNoPop var_A0
  loc_A1092E: LitStr ",'"
  loc_A10931: ConcatStr
  loc_A10932: FStStrNoPop var_A4
  loc_A10935: ILdRf var_88
  loc_A10938: ConcatStr
  loc_A10939: FStStrNoPop var_A8
  loc_A1093C: LitStr "','"
  loc_A1093F: ConcatStr
  loc_A10940: FStStrNoPop var_AC
  loc_A10943: ILdRf var_8C
  loc_A10946: ConcatStr
  loc_A10947: FStStrNoPop var_B0
  loc_A1094A: LitStr "',"
  loc_A1094D: ConcatStr
  loc_A1094E: FStStrNoPop var_B8
  loc_A10951: LitI4 0
  loc_A10956: LitI4 -1
  loc_A1095B: LitI4 1
  loc_A10960: LitStr "."
  loc_A10963: LitStr ","
  loc_A10966: FLdFPR8 AutoFifu
  loc_A10969: CStrR8
  loc_A1096B: FStStrNoPop var_B4
  loc_A1096E: ImpAdCallI2 Replace(, , , , , )
  loc_A10973: FStStrNoPop var_BC
  loc_A10976: ConcatStr
  loc_A10977: FStStrNoPop var_C0
  loc_A1097A: LitStr ",'"
  loc_A1097D: ConcatStr
  loc_A1097E: FStStrNoPop var_C4
  loc_A10981: ILdRf var_90
  loc_A10984: ConcatStr
  loc_A10985: FStStrNoPop var_C8
  loc_A10988: LitStr "','"
  loc_A1098B: ConcatStr
  loc_A1098C: FStStrNoPop var_CC
  loc_A1098F: FLdUI1
  loc_A10993: CStrI2
  loc_A10995: FStStrNoPop var_D0
  loc_A10998: ConcatStr
  loc_A10999: FStStrNoPop var_D4
  loc_A1099C: LitStr "',1,'"
  loc_A1099F: ConcatStr
  loc_A109A0: FStStrNoPop var_D8
  loc_A109A3: ILdRf var_94
  loc_A109A6: ConcatStr
  loc_A109A7: FStStrNoPop var_DC
  loc_A109AA: LitStr "','"
  loc_A109AD: ConcatStr
  loc_A109AE: FStStrNoPop var_E0
  loc_A109B1: ImpAdLdI4 MemVar_C3D03C
  loc_A109B4: ConcatStr
  loc_A109B5: FStStrNoPop var_E4
  loc_A109B8: LitStr "')"
  loc_A109BB: ConcatStr
  loc_A109BC: FStStrNoPop var_E8
  loc_A109BF: Call EjecutarRsCls(from_stack_1v)
  loc_A109C4: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A109EF: ILdRf var_88
  loc_A109F2: FLdI2 PeriInfo
  loc_A109F5: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A109FA: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiFifu, DetaFifu, AutoFifu, ObseFifu, CoauFifu, CoesFifu) '9F7A28
  'Data Table: 40D450
  loc_9F7934: ILdRf CodiFifu
  loc_9F7937: FStStrCopy var_88
  loc_9F793A: ILdRf DetaFifu
  loc_9F793D: FStStrCopy var_8C
  loc_9F7940: ILdRf CoauFifu
  loc_9F7943: FStStrCopy var_90
  loc_9F7946: ILdRf arg_28
  loc_9F7949: FStStrCopy var_94
  loc_9F794C: LitStr "UPDATE finalidad SET DetaFifu='"
  loc_9F794F: ILdRf var_8C
  loc_9F7952: ConcatStr
  loc_9F7953: FStStrNoPop var_98
  loc_9F7956: LitStr "',AutoFifu="
  loc_9F7959: ConcatStr
  loc_9F795A: FStStrNoPop var_A0
  loc_9F795D: LitI4 0
  loc_9F7962: LitI4 -1
  loc_9F7967: LitI4 1
  loc_9F796C: LitStr "."
  loc_9F796F: LitStr ","
  loc_9F7972: FLdFPR8 AutoFifu
  loc_9F7975: CStrR8
  loc_9F7977: FStStrNoPop var_9C
  loc_9F797A: ImpAdCallI2 Replace(, , , , , )
  loc_9F797F: FStStrNoPop var_A4
  loc_9F7982: ConcatStr
  loc_9F7983: FStStrNoPop var_A8
  loc_9F7986: LitStr ",ObseFifu='"
  loc_9F7989: ConcatStr
  loc_9F798A: FStStrNoPop var_AC
  loc_9F798D: ILdRf var_90
  loc_9F7990: ConcatStr
  loc_9F7991: FStStrNoPop var_B0
  loc_9F7994: LitStr "',CoauFifu='"
  loc_9F7997: ConcatStr
  loc_9F7998: FStStrNoPop var_B4
  loc_9F799B: FLdUI1
  loc_9F799F: CStrI2
  loc_9F79A1: FStStrNoPop var_B8
  loc_9F79A4: ConcatStr
  loc_9F79A5: FStStrNoPop var_BC
  loc_9F79A8: LitStr "',CoesFifu='"
  loc_9F79AB: ConcatStr
  loc_9F79AC: FStStrNoPop var_C0
  loc_9F79AF: ILdRf var_94
  loc_9F79B2: ConcatStr
  loc_9F79B3: FStStrNoPop var_C4
  loc_9F79B6: LitStr "',ModiUsua='"
  loc_9F79B9: ConcatStr
  loc_9F79BA: FStStrNoPop var_C8
  loc_9F79BD: ImpAdLdI4 MemVar_C3D03C
  loc_9F79C0: ConcatStr
  loc_9F79C1: FStStrNoPop var_CC
  loc_9F79C4: LitStr "',ModiFeho=Now() WHERE PeriInfo="
  loc_9F79C7: ConcatStr
  loc_9F79C8: FStStrNoPop var_D0
  loc_9F79CB: FLdI2 PeriInfo
  loc_9F79CE: CStrUI1
  loc_9F79D0: FStStrNoPop var_D4
  loc_9F79D3: ConcatStr
  loc_9F79D4: FStStrNoPop var_D8
  loc_9F79D7: LitStr " AND CodiFifu='"
  loc_9F79DA: ConcatStr
  loc_9F79DB: FStStrNoPop var_DC
  loc_9F79DE: ILdRf var_88
  loc_9F79E1: ConcatStr
  loc_9F79E2: FStStrNoPop var_E0
  loc_9F79E5: LitStr "'"
  loc_9F79E8: ConcatStr
  loc_9F79E9: FStStrNoPop var_E4
  loc_9F79EC: Call EjecutarRsCls(from_stack_1v)
  loc_9F79F1: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_9F7A1C: ILdRf var_88
  loc_9F7A1F: FLdI2 PeriInfo
  loc_9F7A22: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_9F7A27: ExitProcHresult
End Sub

Public Function ValidaEliminar(CodiFifu) '9C5DC8
  'Data Table: 40D450
  loc_9C5D00: ILdRf CodiFifu
  loc_9C5D03: FStStrCopy var_8C
  loc_9C5D06: ZeroRetVal
  loc_9C5D08: LitStr "SELECT CodiFifu FROM finalidad WHERE PeriInfo = "
  loc_9C5D0B: ImpAdLdI2 MemVar_C3D064
  loc_9C5D0E: CStrUI1
  loc_9C5D10: FStStrNoPop var_90
  loc_9C5D13: ConcatStr
  loc_9C5D14: FStStrNoPop ValidaEliminar
  loc_9C5D17: LitStr " AND CodiFifu = '"
  loc_9C5D1A: ConcatStr
  loc_9C5D1B: FStStrNoPop var_98
  loc_9C5D1E: ILdRf var_8C
  loc_9C5D21: ConcatStr
  loc_9C5D22: FStStrNoPop var_9C
  loc_9C5D25: LitStr "' AND ImpuFifu = 'No'"
  loc_9C5D28: ConcatStr
  loc_9C5D29: FStStrNoPop var_A0
  loc_9C5D2C: Call EjecutarRsCls(from_stack_1v)
  loc_9C5D31: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_9C5D3E: FLdRfVar var_A4
  loc_9C5D41: FLdPr Me
  loc_9C5D44: MemLdPr global_56
  loc_9C5D47:  = Me.RecordCount
  loc_9C5D4C: ILdRf var_A4
  loc_9C5D4F: LitI4 0
  loc_9C5D54: GtI4
  loc_9C5D55: BranchF loc_9C5D64
  loc_9C5D58: LitStr "La Finalidad-Función-Programa de Gestión NO es Imputable. Reintente..."
  loc_9C5D5B: FStStrCopy var_88
  loc_9C5D5E: ExitProcCbHresult
  loc_9C5D64: LitStr "SELECT * FROM imputacion WHERE PeriInfo = "
  loc_9C5D67: ImpAdLdI2 MemVar_C3D064
  loc_9C5D6A: CStrUI1
  loc_9C5D6C: FStStrNoPop var_90
  loc_9C5D6F: ConcatStr
  loc_9C5D70: FStStrNoPop ValidaEliminar
  loc_9C5D73: LitStr " AND CodiFifu = '"
  loc_9C5D76: ConcatStr
  loc_9C5D77: FStStrNoPop var_98
  loc_9C5D7A: ILdRf var_8C
  loc_9C5D7D: ConcatStr
  loc_9C5D7E: FStStrNoPop var_9C
  loc_9C5D81: LitStr "' LIMIT 1"
  loc_9C5D84: ConcatStr
  loc_9C5D85: FStStrNoPop var_A0
  loc_9C5D88: Call EjecutarRsCls(from_stack_1v)
  loc_9C5D8D: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_9C5D9A: FLdRfVar var_A4
  loc_9C5D9D: FLdPr Me
  loc_9C5DA0: MemLdPr global_56
  loc_9C5DA3:  = Me.RecordCount
  loc_9C5DA8: ILdRf var_A4
  loc_9C5DAB: LitI4 0
  loc_9C5DB0: GtI4
  loc_9C5DB1: BranchF loc_9C5DC0
  loc_9C5DB4: LitStr "La Finalidad-Función-Programa está incluida en una Imputación y NO puede ELIMINARSE. Verifique..."
  loc_9C5DB7: FStStrCopy var_88
  loc_9C5DBA: ExitProcCbHresult
  loc_9C5DC0: ExitProcCbHresult
End Function

Public Sub Eliminar(PeriInfo, CodiFifu) '9AF870
  'Data Table: 40D450
  loc_9AF7D4: ILdRf CodiFifu
  loc_9AF7D7: FStStrCopy var_88
  loc_9AF7DA: LitStr "DELETE FROM finalidad WHERE PeriInfo="
  loc_9AF7DD: FLdI2 PeriInfo
  loc_9AF7E0: CStrUI1
  loc_9AF7E2: FStStrNoPop var_8C
  loc_9AF7E5: ConcatStr
  loc_9AF7E6: FStStrNoPop var_90
  loc_9AF7E9: LitStr " AND CodiFifu='"
  loc_9AF7EC: ConcatStr
  loc_9AF7ED: FStStrNoPop var_94
  loc_9AF7F0: ILdRf var_88
  loc_9AF7F3: ConcatStr
  loc_9AF7F4: FStStrNoPop var_98
  loc_9AF7F7: LitStr "'"
  loc_9AF7FA: ConcatStr
  loc_9AF7FB: FStStrNoPop var_9C
  loc_9AF7FE: Call EjecutarRsCls(from_stack_1v)
  loc_9AF803: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9AF810: FLdRfVar var_A4
  loc_9AF813: FLdPr Me
  loc_9AF816: MemLdPr RsFrm
  loc_9AF819:  = Me.AbsolutePosition
  loc_9AF81E: ILdRf var_A4
  loc_9AF821: FStR4 var_A0
  loc_9AF824: Call Requery()
  loc_9AF829: FLdRfVar var_A4
  loc_9AF82C: FLdPr Me
  loc_9AF82F: MemLdPr RsFrm
  loc_9AF832:  = Me.RecordCount
  loc_9AF837: ILdRf var_A4
  loc_9AF83A: LitI4 0
  loc_9AF83F: GtI4
  loc_9AF840: BranchF loc_9AF86C
  loc_9AF843: Call MoveFirst()
  loc_9AF848: ILdRf var_A0
  loc_9AF84B: LitI4 1
  loc_9AF850: GtI4
  loc_9AF851: BranchF loc_9AF86C
  loc_9AF854: LitVar_Missing var_B4
  loc_9AF857: PopAdLdVar
  loc_9AF858: ILdRf var_A0
  loc_9AF85B: LitI4 2
  loc_9AF860: SubI4
  loc_9AF861: FLdPr Me
  loc_9AF864: MemLdPr RsFrm
  loc_9AF867: Me.Move from_stack_1, from_stack_2
  loc_9AF86C: ExitProcHresult
End Sub

Public Function ValidaClave(PeriInfo, CodiFifu) '9A190C
  'Data Table: 40D450
  loc_9A18A8: ILdRf CodiFifu
  loc_9A18AB: FStStrCopy var_8C
  loc_9A18AE: ZeroRetVal
  loc_9A18B0: LitStr "SELECT PeriInfo, CodiFifu FROM finalidad WHERE PeriInfo = "
  loc_9A18B3: FLdI2 PeriInfo
  loc_9A18B6: CStrUI1
  loc_9A18B8: FStStrNoPop var_90
  loc_9A18BB: ConcatStr
  loc_9A18BC: FStStrNoPop ValidaClave
  loc_9A18BF: LitStr " AND CodiFifu = '"
  loc_9A18C2: ConcatStr
  loc_9A18C3: FStStrNoPop var_98
  loc_9A18C6: ILdRf var_8C
  loc_9A18C9: ConcatStr
  loc_9A18CA: FStStrNoPop var_9C
  loc_9A18CD: LitStr "'"
  loc_9A18D0: ConcatStr
  loc_9A18D1: FStStrNoPop var_A0
  loc_9A18D4: Call EjecutarRsCls(from_stack_1v)
  loc_9A18D9: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_9A18E6: FLdRfVar var_A4
  loc_9A18E9: FLdPr Me
  loc_9A18EC: MemLdPr global_56
  loc_9A18EF:  = Me.RecordCount
  loc_9A18F4: ILdRf var_A4
  loc_9A18F7: LitI4 0
  loc_9A18FC: GtI4
  loc_9A18FD: BranchF loc_9A1906
  loc_9A1900: LitStr "La Finalidad-Función-Programa de Gestón YA EXISTE. Reintente..."
  loc_9A1903: FStStrCopy var_88
  loc_9A1906: ExitProcCbHresult
End Function

Public Sub Encontrar(PeriInfo, CodiFifu) '9942D0
  'Data Table: 40D450
  loc_994280: ILdRf CodiFifu
  loc_994283: FStStrCopy var_88
  loc_994286: Call Requery()
  loc_99428B: LitStr "PeriInfo = '"
  loc_99428E: FLdI2 PeriInfo
  loc_994291: CStrUI1
  loc_994293: FStStrNoPop var_8C
  loc_994296: ConcatStr
  loc_994297: FStStrNoPop var_90
  loc_99429A: LitStr "'"
  loc_99429D: ConcatStr
  loc_99429E: PopTmpLdAdStr
  loc_9942A2: Call Find(from_stack_1v)
  loc_9942A7: FFreeStr var_8C = "": var_90 = ""
  loc_9942B0: LitStr "CodiFifu = '"
  loc_9942B3: ILdRf var_88
  loc_9942B6: ConcatStr
  loc_9942B7: FStStrNoPop var_8C
  loc_9942BA: LitStr "'"
  loc_9942BD: ConcatStr
  loc_9942BE: PopTmpLdAdStr
  loc_9942C2: Call Find(from_stack_1v)
  loc_9942C7: FFreeStr var_8C = ""
  loc_9942CE: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '971104
  'Data Table: 40D450
  loc_9710DC: ILdRf sSelect
  loc_9710DF: FStStrCopy var_88
  loc_9710E2: FLdPr Me
  loc_9710E5: MemLdRfVar from_stack_1.RsFrm
  loc_9710E8: ILdRf var_88
  loc_9710EB: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_9710F0: LitVarStr var_98, "Primary"
  loc_9710F5: PopAdLdVar
  loc_9710F6: FLdPr Me
  loc_9710F9: LateIdCall
  loc_971101: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '960240
  'Data Table: 40D450
  loc_960228: ILdRf sSelect
  loc_96022B: FStStrCopy var_88
  loc_96022E: FLdPr Me
  loc_960231: MemLdRfVar from_stack_1.global_56
  loc_960234: ILdRf var_88
  loc_960237: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_96023C: ExitProcHresult
End Sub

Public Sub Requery() '968390
  'Data Table: 40D450
  loc_968370: FLdPr Me
  loc_968373: MemLdRfVar from_stack_1.RsFrm
  loc_968376: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_96837B: LitVarStr var_94, "Primary"
  loc_968380: PopAdLdVar
  loc_968381: FLdPr Me
  loc_968384: LateIdCall
  loc_96838C: ExitProcHresult
End Sub

Public Property Get DataSource() '971384
  'Data Table: 40D450
  loc_971360: ZeroRetVal
  loc_971362: FLdRfVar var_8C
  loc_971365: FLdPr Me
  loc_971368: MemLdPr RsFrm
  loc_97136B:  = Me.DataSource
  loc_971370: ILdRf var_8C
  loc_971373: CastAd
  loc_971376: FStAdFunc var_88
  loc_971379: FFree1Ad var_8C
  loc_97137C: ExitProcCbHresult
  loc_971382: FLdFPR4 var_2800
End Sub

Public Function nivelFinalidad(sFinalidad) '9FF8A8
  'Data Table: 40D450
  loc_9FF758: LitI2_Byte 0
  loc_9FF75A: FStI2 var_86
  loc_9FF75D: LitVarI2 var_A8, 2
  loc_9FF762: LitI4 5
  loc_9FF767: ILdI4 sFinalidad
  loc_9FF76A: ImpAdCallI2 Mid$(, , )
  loc_9FF76F: FStStrNoPop var_AC
  loc_9FF772: LitStr "00"
  loc_9FF775: NeStr
  loc_9FF777: LitVarI2 var_CC, 2
  loc_9FF77C: LitI4 3
  loc_9FF781: ILdI4 sFinalidad
  loc_9FF784: ImpAdCallI2 Mid$(, , )
  loc_9FF789: FStStrNoPop var_D0
  loc_9FF78C: LitStr "00"
  loc_9FF78F: NeStr
  loc_9FF791: AndI4
  loc_9FF792: LitVarI2 var_F0, 2
  loc_9FF797: LitI4 1
  loc_9FF79C: ILdI4 sFinalidad
  loc_9FF79F: ImpAdCallI2 Mid$(, , )
  loc_9FF7A4: FStStrNoPop var_F4
  loc_9FF7A7: LitStr "00"
  loc_9FF7AA: NeStr
  loc_9FF7AC: AndI4
  loc_9FF7AD: FFreeStr var_AC = "": var_D0 = ""
  loc_9FF7B6: FFreeVar var_A8 = "": var_CC = ""
  loc_9FF7BF: BranchF loc_9FF7CA
  loc_9FF7C2: LitI2_Byte 3
  loc_9FF7C4: FStI2 var_86
  loc_9FF7C7: Branch loc_9FF8A1
  loc_9FF7CA: LitVarI2 var_A8, 2
  loc_9FF7CF: LitI4 3
  loc_9FF7D4: ILdI4 sFinalidad
  loc_9FF7D7: ImpAdCallI2 Mid$(, , )
  loc_9FF7DC: FStStrNoPop var_AC
  loc_9FF7DF: LitStr "00"
  loc_9FF7E2: NeStr
  loc_9FF7E4: LitVarI2 var_CC, 2
  loc_9FF7E9: LitI4 5
  loc_9FF7EE: ILdI4 sFinalidad
  loc_9FF7F1: ImpAdCallI2 Mid$(, , )
  loc_9FF7F6: FStStrNoPop var_D0
  loc_9FF7F9: LitStr "00"
  loc_9FF7FC: EqStr
  loc_9FF7FE: AndI4
  loc_9FF7FF: LitVarI2 var_F0, 2
  loc_9FF804: LitI4 1
  loc_9FF809: ILdI4 sFinalidad
  loc_9FF80C: ImpAdCallI2 Mid$(, , )
  loc_9FF811: FStStrNoPop var_F4
  loc_9FF814: LitStr "00"
  loc_9FF817: NeStr
  loc_9FF819: AndI4
  loc_9FF81A: FFreeStr var_AC = "": var_D0 = ""
  loc_9FF823: FFreeVar var_A8 = "": var_CC = ""
  loc_9FF82C: BranchF loc_9FF837
  loc_9FF82F: LitI2_Byte 2
  loc_9FF831: FStI2 var_86
  loc_9FF834: Branch loc_9FF8A1
  loc_9FF837: LitVarI2 var_A8, 2
  loc_9FF83C: LitI4 1
  loc_9FF841: ILdI4 sFinalidad
  loc_9FF844: ImpAdCallI2 Mid$(, , )
  loc_9FF849: FStStrNoPop var_AC
  loc_9FF84C: LitStr "00"
  loc_9FF84F: NeStr
  loc_9FF851: LitVarI2 var_CC, 2
  loc_9FF856: LitI4 5
  loc_9FF85B: ILdI4 sFinalidad
  loc_9FF85E: ImpAdCallI2 Mid$(, , )
  loc_9FF863: FStStrNoPop var_D0
  loc_9FF866: LitStr "00"
  loc_9FF869: EqStr
  loc_9FF86B: AndI4
  loc_9FF86C: LitVarI2 var_F0, 2
  loc_9FF871: LitI4 3
  loc_9FF876: ILdI4 sFinalidad
  loc_9FF879: ImpAdCallI2 Mid$(, , )
  loc_9FF87E: FStStrNoPop var_F4
  loc_9FF881: LitStr "00"
  loc_9FF884: EqStr
  loc_9FF886: AndI4
  loc_9FF887: FFreeStr var_AC = "": var_D0 = ""
  loc_9FF890: FFreeVar var_A8 = "": var_CC = ""
  loc_9FF899: BranchF loc_9FF8A1
  loc_9FF89C: LitI2_Byte 1
  loc_9FF89E: FStI2 var_86
  loc_9FF8A1: ExitProcCbHresult
End Function

Public Function finalidadNivelSuperior(sFinalidad, iNivel) '9C5654
  'Data Table: 40D450
  loc_9C5584: ZeroRetVal
  loc_9C5586: ILdI2 iNivel
  loc_9C5589: LitI2_Byte 3
  loc_9C558B: EqI2
  loc_9C558C: BranchF loc_9C55CC
  loc_9C558F: LitVarI2 var_B0, 2
  loc_9C5594: LitI4 3
  loc_9C5599: ILdI4 sFinalidad
  loc_9C559C: ImpAdCallI2 Mid$(, , )
  loc_9C55A1: FStStr var_88
  loc_9C55A4: FFree1Var var_B0 = ""
  loc_9C55A7: LitVarI2 var_B0, 2
  loc_9C55AC: LitI4 1
  loc_9C55B1: ILdI4 sFinalidad
  loc_9C55B4: ImpAdCallI2 Mid$(, , )
  loc_9C55B9: FStStrNoPop var_B4
  loc_9C55BC: ILdRf var_88
  loc_9C55BF: ConcatStr
  loc_9C55C0: FStStr var_88
  loc_9C55C3: FFree1Str var_B4
  loc_9C55C6: FFree1Var var_B0 = ""
  loc_9C55C9: Branch loc_9C561A
  loc_9C55CC: ILdI2 iNivel
  loc_9C55CF: LitI2_Byte 2
  loc_9C55D1: EqI2
  loc_9C55D2: BranchF loc_9C55F0
  loc_9C55D5: ILdRf iNivel
  loc_9C55D8: CVarRef
  loc_9C55DD: LitI4 1
  loc_9C55E2: ILdI4 sFinalidad
  loc_9C55E5: ImpAdCallI2 Mid$(, , )
  loc_9C55EA: FStStr var_88
  loc_9C55ED: Branch loc_9C561A
  loc_9C55F0: ILdI2 iNivel
  loc_9C55F3: LitI2_Byte 1
  loc_9C55F5: EqI2
  loc_9C55F6: BranchF loc_9C561A
  loc_9C55F9: ILdI2 iNivel
  loc_9C55FC: LitI2_Byte 1
  loc_9C55FE: SubI2
  loc_9C55FF: FStI2 var_8A
  loc_9C5602: FLdRfVar var_8A
  loc_9C5605: CVarRef
  loc_9C560A: LitI4 1
  loc_9C560F: ILdI4 sFinalidad
  loc_9C5612: ImpAdCallI2 Mid$(, , )
  loc_9C5617: FStStr var_88
  loc_9C561A: LitI2_Byte 1
  loc_9C561C: FLdRfVar var_8A
  loc_9C561F: LitI4 6
  loc_9C5624: ILdRf var_88
  loc_9C5627: FnLenStr
  loc_9C5628: SubI4
  loc_9C5629: CI2I4
  loc_9C562A: ForI2 var_B8
  loc_9C5630: ILdRf var_90
  loc_9C5633: LitStr "0"
  loc_9C5636: ConcatStr
  loc_9C5637: FStStr var_90
  loc_9C563A: FLdRfVar var_8A
  loc_9C563D: NextI2 var_B8, loc_9C5630
  loc_9C5642: ILdRf var_88
  loc_9C5645: ILdRf var_90
  loc_9C5648: ConcatStr
  loc_9C5649: FStStr var_88
  loc_9C564C: ExitProcCbHresult
  loc_9C5652: FStStrCopy var_2800
End Function

Private Function Proc_11_27_9710A4() '9710A4
  'Data Table: 40D450
  loc_971080: LitStr "Primary"
  loc_971083: FLdPr Me
  loc_971086: LateIdLdVar var_94 DispID_4 0
  loc_97108D: CastAdVar Me
  loc_971091: FStAdFunc var_98
  loc_971094: FLdPr var_98
  loc_97109C: FFree1Ad var_98
  loc_97109F: FFree1Var var_94 = ""
  loc_9710A2: ExitProcHresult
End Function

Private Function Proc_11_28_96842C(arg_C) '96842C
  'Data Table: 40D450
  loc_968410: ILdI4 arg_C
  loc_968413: FStStrCopy var_88
  loc_968416: ILdRf var_88
  loc_968419: LitStr "Primary"
  loc_96841C: EqStr
  loc_96841E: BranchF loc_96842B
  loc_968421: FLdPr Me
  loc_968424: MemLdStr RsFrm
  loc_968427: IStAd
  loc_96842B: ExitProcHresult
End Function
