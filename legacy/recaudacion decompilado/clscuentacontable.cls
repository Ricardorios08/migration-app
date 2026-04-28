VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscuentacontable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D324
  'Data Table: 412608
  loc_A0D2E8: FLdRfVar var_8C
  loc_A0D2EB: FLdRfVar var_88
  loc_A0D2EE: FLdPr Me
  loc_A0D2F1: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A0D2F6: FLdPr var_88
  loc_A0D2F9:  = Me.RecordCount
  loc_A0D2FE: ILdRf var_8C
  loc_A0D301: LitI4 0
  loc_A0D306: GtI4
  loc_A0D307: FFree1Ad var_88
  loc_A0D30A: BranchF loc_A0D323
  loc_A0D30D: FLdRfVar var_88
  loc_A0D310: FLdPr Me
  loc_A0D313: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A0D318: FLdPr var_88
  loc_A0D31B: Me.MoveFirst
  loc_A0D320: FFree1Ad var_88
  loc_A0D323: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0C214
  'Data Table: 412608
  loc_A0C1D8: FLdRfVar var_8C
  loc_A0C1DB: FLdRfVar var_88
  loc_A0C1DE: FLdPr Me
  loc_A0C1E1: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A0C1E6: FLdPr var_88
  loc_A0C1E9:  = Me.RecordCount
  loc_A0C1EE: ILdRf var_8C
  loc_A0C1F1: LitI4 0
  loc_A0C1F6: GtI4
  loc_A0C1F7: FFree1Ad var_88
  loc_A0C1FA: BranchF loc_A0C213
  loc_A0C1FD: FLdRfVar var_88
  loc_A0C200: FLdPr Me
  loc_A0C203: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A0C208: FLdPr var_88
  loc_A0C20B: Me.MoveLast
  loc_A0C210: FFree1Ad var_88
  loc_A0C213: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9D23C
  'Data Table: 412608
  loc_A9D180: FLdRfVar var_8A
  loc_A9D183: FLdRfVar var_88
  loc_A9D186: FLdPr Me
  loc_A9D189: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D18E: FLdPr var_88
  loc_A9D191:  = Me.EOF
  loc_A9D196: FLdI2 var_8A
  loc_A9D199: NotI4
  loc_A9D19A: FLdRfVar var_94
  loc_A9D19D: FLdRfVar var_90
  loc_A9D1A0: FLdPr Me
  loc_A9D1A3: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D1A8: FLdPr var_90
  loc_A9D1AB:  = Me.RecordCount
  loc_A9D1B0: ILdRf var_94
  loc_A9D1B3: LitI4 0
  loc_A9D1B8: GtI4
  loc_A9D1B9: AndI4
  loc_A9D1BA: FFreeAd var_88 = ""
  loc_A9D1C1: BranchF loc_A9D1DA
  loc_A9D1C4: FLdRfVar var_88
  loc_A9D1C7: FLdPr Me
  loc_A9D1CA: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D1CF: FLdPr var_88
  loc_A9D1D2: Me.MoveNext
  loc_A9D1D7: FFree1Ad var_88
  loc_A9D1DA: FLdRfVar var_8A
  loc_A9D1DD: FLdRfVar var_88
  loc_A9D1E0: FLdPr Me
  loc_A9D1E3: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D1E8: FLdPr var_88
  loc_A9D1EB:  = Me.EOF
  loc_A9D1F0: FLdI2 var_8A
  loc_A9D1F3: FLdRfVar var_94
  loc_A9D1F6: FLdRfVar var_90
  loc_A9D1F9: FLdPr Me
  loc_A9D1FC: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D201: FLdPr var_90
  loc_A9D204:  = Me.RecordCount
  loc_A9D209: ILdRf var_94
  loc_A9D20C: LitI4 0
  loc_A9D211: GtI4
  loc_A9D212: AndI4
  loc_A9D213: FFreeAd var_88 = ""
  loc_A9D21A: BranchF loc_A9D238
  loc_A9D21D: ImpAdCallFPR4 Beep()
  loc_A9D222: FLdRfVar var_88
  loc_A9D225: FLdPr Me
  loc_A9D228: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9D22D: FLdPr var_88
  loc_A9D230: Me.MoveLast
  loc_A9D235: FFree1Ad var_88
  loc_A9D238: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D6EA4
  'Data Table: 412608
  loc_9D6E8C: FLdRfVar var_88
  loc_9D6E8F: FLdPr Me
  loc_9D6E92: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9D6E97: FLdPr var_88
  loc_9D6E9A: Me.MoveNext
  loc_9D6E9F: FFree1Ad var_88
  loc_9D6EA2: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9E270
  'Data Table: 412608
  loc_A9E1B4: FLdRfVar var_8A
  loc_A9E1B7: FLdRfVar var_88
  loc_A9E1BA: FLdPr Me
  loc_A9E1BD: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E1C2: FLdPr var_88
  loc_A9E1C5:  = Me.BOF
  loc_A9E1CA: FLdI2 var_8A
  loc_A9E1CD: NotI4
  loc_A9E1CE: FLdRfVar var_94
  loc_A9E1D1: FLdRfVar var_90
  loc_A9E1D4: FLdPr Me
  loc_A9E1D7: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E1DC: FLdPr var_90
  loc_A9E1DF:  = Me.RecordCount
  loc_A9E1E4: ILdRf var_94
  loc_A9E1E7: LitI4 0
  loc_A9E1EC: GtI4
  loc_A9E1ED: AndI4
  loc_A9E1EE: FFreeAd var_88 = ""
  loc_A9E1F5: BranchF loc_A9E20E
  loc_A9E1F8: FLdRfVar var_88
  loc_A9E1FB: FLdPr Me
  loc_A9E1FE: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E203: FLdPr var_88
  loc_A9E206: Me.MovePrevious
  loc_A9E20B: FFree1Ad var_88
  loc_A9E20E: FLdRfVar var_8A
  loc_A9E211: FLdRfVar var_88
  loc_A9E214: FLdPr Me
  loc_A9E217: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E21C: FLdPr var_88
  loc_A9E21F:  = Me.BOF
  loc_A9E224: FLdI2 var_8A
  loc_A9E227: FLdRfVar var_94
  loc_A9E22A: FLdRfVar var_90
  loc_A9E22D: FLdPr Me
  loc_A9E230: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E235: FLdPr var_90
  loc_A9E238:  = Me.RecordCount
  loc_A9E23D: ILdRf var_94
  loc_A9E240: LitI4 0
  loc_A9E245: GtI4
  loc_A9E246: AndI4
  loc_A9E247: FFreeAd var_88 = ""
  loc_A9E24E: BranchF loc_A9E26C
  loc_A9E251: ImpAdCallFPR4 Beep()
  loc_A9E256: FLdRfVar var_88
  loc_A9E259: FLdPr Me
  loc_A9E25C: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A9E261: FLdPr var_88
  loc_A9E264: Me.MoveFirst
  loc_A9E269: FFree1Ad var_88
  loc_A9E26C: ExitProcHresult
End Sub

Public Property Get EOF() '9F1D00
  'Data Table: 412608
  loc_9F1CD8: FLdRfVar var_8E
  loc_9F1CDB: FLdRfVar var_8C
  loc_9F1CDE: FLdPr Me
  loc_9F1CE1: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F1CE6: FLdPr var_8C
  loc_9F1CE9:  = Me.EOF
  loc_9F1CEE: FLdI2 var_8E
  loc_9F1CF1: FStI2 var_86
  loc_9F1CF4: FFree1Ad var_8C
  loc_9F1CF7: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F1DB8
  'Data Table: 412608
  loc_9F1D90: FLdRfVar var_8E
  loc_9F1D93: FLdRfVar var_8C
  loc_9F1D96: FLdPr Me
  loc_9F1D99: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F1D9E: FLdPr var_8C
  loc_9F1DA1:  = Me.BOF
  loc_9F1DA6: FLdI2 var_8E
  loc_9F1DA9: FStI2 var_86
  loc_9F1DAC: FFree1Ad var_8C
  loc_9F1DAF: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DE2AC
  'Data Table: 412608
  loc_9DE290: ILdI4 sOrden
  loc_9DE293: FLdRfVar var_88
  loc_9DE296: FLdPr Me
  loc_9DE299: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9DE29E: FLdPr var_88
  loc_9DE2A1: Me.Sort = from_stack_1
  loc_9DE2A6: FFree1Ad var_88
  loc_9DE2A9: ExitProcHresult
End Sub

Public Sub Find(sFind) '9F1E70
  'Data Table: 412608
  loc_9F1E48: LitVar_Missing var_98
  loc_9F1E4B: PopAdLdVar
  loc_9F1E4C: LitI4 1
  loc_9F1E51: LitI4 0
  loc_9F1E56: ILdI4 sFind
  loc_9F1E59: FLdRfVar var_88
  loc_9F1E5C: FLdPr Me
  loc_9F1E5F: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F1E64: FLdPr var_88
  loc_9F1E67: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F1E6C: FFree1Ad var_88
  loc_9F1E6F: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E5F6C
  'Data Table: 412608
  loc_9E5F4C: ILdI4 sCriterio
  loc_9E5F4F: CVarStr var_98
  loc_9E5F52: PopAdLdVar
  loc_9E5F53: FLdRfVar var_88
  loc_9E5F56: FLdPr Me
  loc_9E5F59: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9E5F5E: FLdPr var_88
  loc_9E5F61: Me.Filter = from_stack_1
  loc_9E5F66: FFree1Ad var_88
  loc_9E5F69: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F1F28
  'Data Table: 412608
  loc_9F1F00: FLdRfVar var_90
  loc_9F1F03: FLdRfVar var_8C
  loc_9F1F06: FLdPr Me
  loc_9F1F09: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F1F0E: FLdPr var_8C
  loc_9F1F11:  = Me.AbsolutePosition
  loc_9F1F16: ILdRf var_90
  loc_9F1F19: FStR4 var_88
  loc_9F1F1C: FFree1Ad var_8C
  loc_9F1F1F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F1F84
  'Data Table: 412608
  loc_9F1F5C: FLdRfVar var_90
  loc_9F1F5F: FLdRfVar var_8C
  loc_9F1F62: FLdPr Me
  loc_9F1F65: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F1F6A: FLdPr var_8C
  loc_9F1F6D:  = Me.RecordCount
  loc_9F1F72: ILdRf var_90
  loc_9F1F75: FStR4 var_88
  loc_9F1F78: FFree1Ad var_8C
  loc_9F1F7B: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiCuco, DetaCuco, ImpuCuco, CodiTicu, AutoCuco) 'ACF848
  'Data Table: 412608
  loc_ACF760: ILdRf CodiCuco
  loc_ACF763: FStStrCopy var_88
  loc_ACF766: ILdRf DetaCuco
  loc_ACF769: FStStrCopy var_8C
  loc_ACF76C: ILdRf ImpuCuco
  loc_ACF76F: FStStrCopy var_90
  loc_ACF772: ILdRf CodiTicu
  loc_ACF775: FStStrCopy var_94
  loc_ACF778: ILdRf AutoCuco
  loc_ACF77B: FStStrCopy var_98
  loc_ACF77E: FLdRfVar var_A0
  loc_ACF781: ILdRf var_88
  loc_ACF784: from_stack_2v = ValidaClave(from_stack_1v)
  loc_ACF789: FLdZeroAd var_A0
  loc_ACF78C: FStStr var_9C
  loc_ACF78F: ILdRf var_9C
  loc_ACF792: LitStr vbNullString
  loc_ACF795: NeStr
  loc_ACF797: BranchF loc_ACF7A5
  loc_ACF79A: ILdRf var_9C
  loc_ACF79D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACF7A2: Branch loc_ACF845
  loc_ACF7A5: LitStr "INSERT INTO infogov.cuentacontable (PeriInfo,CodiCuco,DetaCuco,ImpuCuco,CodiTicu,AutoCuco,CodiUsua,FijoCuco) VALUES ("
  loc_ACF7A8: FLdI2 PeriInfo
  loc_ACF7AB: CStrUI1
  loc_ACF7AD: FStStrNoPop var_A0
  loc_ACF7B0: ConcatStr
  loc_ACF7B1: FStStrNoPop var_A4
  loc_ACF7B4: LitStr ",'"
  loc_ACF7B7: ConcatStr
  loc_ACF7B8: FStStrNoPop var_A8
  loc_ACF7BB: ILdRf var_88
  loc_ACF7BE: ConcatStr
  loc_ACF7BF: FStStrNoPop var_AC
  loc_ACF7C2: LitStr "','"
  loc_ACF7C5: ConcatStr
  loc_ACF7C6: FStStrNoPop var_B0
  loc_ACF7C9: ILdRf var_8C
  loc_ACF7CC: ConcatStr
  loc_ACF7CD: FStStrNoPop var_B4
  loc_ACF7D0: LitStr "','"
  loc_ACF7D3: ConcatStr
  loc_ACF7D4: FStStrNoPop var_B8
  loc_ACF7D7: ILdRf var_90
  loc_ACF7DA: ConcatStr
  loc_ACF7DB: FStStrNoPop var_BC
  loc_ACF7DE: LitStr "','"
  loc_ACF7E1: ConcatStr
  loc_ACF7E2: FStStrNoPop var_C0
  loc_ACF7E5: ILdRf var_94
  loc_ACF7E8: ConcatStr
  loc_ACF7E9: FStStrNoPop var_C4
  loc_ACF7EC: LitStr "','"
  loc_ACF7EF: ConcatStr
  loc_ACF7F0: FStStrNoPop var_C8
  loc_ACF7F3: ILdRf var_98
  loc_ACF7F6: ConcatStr
  loc_ACF7F7: FStStrNoPop var_CC
  loc_ACF7FA: LitStr "','"
  loc_ACF7FD: ConcatStr
  loc_ACF7FE: FStStrNoPop var_D0
  loc_ACF801: ImpAdLdI4 MemVar_D9302C
  loc_ACF804: ConcatStr
  loc_ACF805: FStStrNoPop var_D4
  loc_ACF808: LitStr "','No')"
  loc_ACF80B: ConcatStr
  loc_ACF80C: FStStrNoPop var_D8
  loc_ACF80F: Call EjecutarRsCls(from_stack_1v)
  loc_ACF814: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_ACF835: Call Requery()
  loc_ACF83A: ILdRf var_88
  loc_ACF83D: FLdI2 PeriInfo
  loc_ACF840: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_ACF845: ExitProcHresult
End Sub

Public Sub Modificar(PeriInfo, CodiCuco, DetaCuco, ImpuCuco, CodiTicu, AutoCuco) 'AC2D6C
  'Data Table: 412608
  loc_AC2CAC: ILdRf CodiCuco
  loc_AC2CAF: FStStrCopy var_88
  loc_AC2CB2: ILdRf DetaCuco
  loc_AC2CB5: FStStrCopy var_8C
  loc_AC2CB8: ILdRf ImpuCuco
  loc_AC2CBB: FStStrCopy var_90
  loc_AC2CBE: ILdRf CodiTicu
  loc_AC2CC1: FStStrCopy var_94
  loc_AC2CC4: ILdRf AutoCuco
  loc_AC2CC7: FStStrCopy var_98
  loc_AC2CCA: LitStr "UPDATE infogov.cuentacontable SET DetaCuco='"
  loc_AC2CCD: ILdRf var_8C
  loc_AC2CD0: ConcatStr
  loc_AC2CD1: FStStrNoPop var_9C
  loc_AC2CD4: LitStr "',ImpuCuco='"
  loc_AC2CD7: ConcatStr
  loc_AC2CD8: FStStrNoPop var_A0
  loc_AC2CDB: ILdRf var_90
  loc_AC2CDE: ConcatStr
  loc_AC2CDF: FStStrNoPop var_A4
  loc_AC2CE2: LitStr "',CodiTicu='"
  loc_AC2CE5: ConcatStr
  loc_AC2CE6: FStStrNoPop var_A8
  loc_AC2CE9: ILdRf var_94
  loc_AC2CEC: ConcatStr
  loc_AC2CED: FStStrNoPop var_AC
  loc_AC2CF0: LitStr "',AutoCuco='"
  loc_AC2CF3: ConcatStr
  loc_AC2CF4: FStStrNoPop var_B0
  loc_AC2CF7: ILdRf var_98
  loc_AC2CFA: ConcatStr
  loc_AC2CFB: FStStrNoPop var_B4
  loc_AC2CFE: LitStr "',CodiUsua='"
  loc_AC2D01: ConcatStr
  loc_AC2D02: FStStrNoPop var_B8
  loc_AC2D05: ImpAdLdI4 MemVar_D9302C
  loc_AC2D08: ConcatStr
  loc_AC2D09: FStStrNoPop var_BC
  loc_AC2D0C: LitStr "' WHERE PeriInfo="
  loc_AC2D0F: ConcatStr
  loc_AC2D10: FStStrNoPop var_C0
  loc_AC2D13: FLdI2 PeriInfo
  loc_AC2D16: CStrUI1
  loc_AC2D18: FStStrNoPop var_C4
  loc_AC2D1B: ConcatStr
  loc_AC2D1C: FStStrNoPop var_C8
  loc_AC2D1F: LitStr " AND CodiCuco='"
  loc_AC2D22: ConcatStr
  loc_AC2D23: FStStrNoPop var_CC
  loc_AC2D26: ILdRf var_88
  loc_AC2D29: ConcatStr
  loc_AC2D2A: FStStrNoPop var_D0
  loc_AC2D2D: LitStr "'"
  loc_AC2D30: ConcatStr
  loc_AC2D31: FStStrNoPop var_D4
  loc_AC2D34: Call EjecutarRsCls(from_stack_1v)
  loc_AC2D39: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AC2D5A: Call Requery()
  loc_AC2D5F: ILdRf var_88
  loc_AC2D62: FLdI2 PeriInfo
  loc_AC2D65: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AC2D6A: ExitProcHresult
End Sub

Public Sub ActualizarImpuCuco(PeriInfo, CodiCuco, ImpuCuco) 'A7CDC8
  'Data Table: 412608
  loc_A7CD60: ILdRf CodiCuco
  loc_A7CD63: FStStrCopy var_88
  loc_A7CD66: ILdRf ImpuCuco
  loc_A7CD69: FStStrCopy var_8C
  loc_A7CD6C: LitStr "UPDATE infogov.cuentacontable SET ImpuCuco='"
  loc_A7CD6F: ILdRf var_8C
  loc_A7CD72: ConcatStr
  loc_A7CD73: FStStrNoPop var_90
  loc_A7CD76: LitStr "' WHERE PeriInfo="
  loc_A7CD79: ConcatStr
  loc_A7CD7A: FStStrNoPop var_94
  loc_A7CD7D: FLdI2 PeriInfo
  loc_A7CD80: CStrUI1
  loc_A7CD82: FStStrNoPop var_98
  loc_A7CD85: ConcatStr
  loc_A7CD86: FStStrNoPop var_9C
  loc_A7CD89: LitStr " AND CodiCuco='"
  loc_A7CD8C: ConcatStr
  loc_A7CD8D: FStStrNoPop var_A0
  loc_A7CD90: ILdRf var_88
  loc_A7CD93: ConcatStr
  loc_A7CD94: FStStrNoPop var_A4
  loc_A7CD97: LitStr "'"
  loc_A7CD9A: ConcatStr
  loc_A7CD9B: FStStrNoPop var_A8
  loc_A7CD9E: Call EjecutarRsCls(from_stack_1v)
  loc_A7CDA3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A7CDB4: Call Requery()
  loc_A7CDB9: ILdRf var_88
  loc_A7CDBC: FLdI2 PeriInfo
  loc_A7CDBF: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A7CDC4: ExitProcHresult
End Sub

Public Sub Eliminar(PeriInfo, CodiCuco) 'A496E8
  'Data Table: 412608
  loc_A496A4: ILdRf CodiCuco
  loc_A496A7: FStStrCopy var_88
  loc_A496AA: LitStr "DELETE FROM infogov.cuentacontable WHERE PeriInfo="
  loc_A496AD: FLdI2 PeriInfo
  loc_A496B0: CStrUI1
  loc_A496B2: FStStrNoPop var_8C
  loc_A496B5: ConcatStr
  loc_A496B6: FStStrNoPop var_90
  loc_A496B9: LitStr " AND CodiCuco='"
  loc_A496BC: ConcatStr
  loc_A496BD: FStStrNoPop var_94
  loc_A496C0: ILdRf var_88
  loc_A496C3: ConcatStr
  loc_A496C4: FStStrNoPop var_98
  loc_A496C7: LitStr "'"
  loc_A496CA: ConcatStr
  loc_A496CB: FStStrNoPop var_9C
  loc_A496CE: Call EjecutarRsCls(from_stack_1v)
  loc_A496D3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A496E0: Call Requery()
  loc_A496E5: ExitProcHresult
  loc_A496E6: ExitProcI2
End Sub

Public Function ValidaClave(CodiCuco) 'A75EE8
  'Data Table: 412608
  loc_A75E84: ILdRf CodiCuco
  loc_A75E87: FStStrCopy var_8C
  loc_A75E8A: ZeroRetVal
  loc_A75E8C: LitStr "SELECT CodiCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A75E8F: ImpAdLdI2 MemVar_D93034
  loc_A75E92: CStrUI1
  loc_A75E94: FStStrNoPop var_90
  loc_A75E97: ConcatStr
  loc_A75E98: FStStrNoPop ValidaClave
  loc_A75E9B: LitStr " AND CodiCuco = '"
  loc_A75E9E: ConcatStr
  loc_A75E9F: FStStrNoPop var_98
  loc_A75EA2: ILdRf var_8C
  loc_A75EA5: ConcatStr
  loc_A75EA6: FStStrNoPop var_9C
  loc_A75EA9: LitStr "'"
  loc_A75EAC: ConcatStr
  loc_A75EAD: FStStrNoPop var_A0
  loc_A75EB0: Call EjecutarRsCls(from_stack_1v)
  loc_A75EB5: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_A75EC2: FLdRfVar var_A4
  loc_A75EC5: FLdPr Me
  loc_A75EC8: MemLdPr global_60
  loc_A75ECB:  = Me.RecordCount
  loc_A75ED0: ILdRf var_A4
  loc_A75ED3: LitI4 0
  loc_A75ED8: GtI4
  loc_A75ED9: BranchF loc_A75EE2
  loc_A75EDC: LitStr "La Cuenta Contable YA EXISTE. Reintente..."
  loc_A75EDF: FStStrCopy var_88
  loc_A75EE2: ExitProcCbHresult
End Function

Public Sub Requery() '9FE878
  'Data Table: 412608
  loc_9FE848: LitI4 -1
  loc_9FE84D: FLdRfVar var_88
  loc_9FE850: FLdPr Me
  loc_9FE853: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9FE858: FLdPr var_88
  loc_9FE85B: Me.Requery from_stack_1
  loc_9FE860: FFree1Ad var_88
  loc_9FE863: LitVarStr var_98, "Primary"
  loc_9FE868: PopAdLdVar
  loc_9FE869: FLdPr Me
  loc_9FE86C: LateIdCall
  loc_9FE874: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiCuco) 'A49A38
  'Data Table: 412608
  loc_A499EC: ILdRf CodiCuco
  loc_A499EF: FStStrCopy var_88
  loc_A499F2: LitStr "PeriInfo = '"
  loc_A499F5: FLdI2 PeriInfo
  loc_A499F8: CStrUI1
  loc_A499FA: FStStrNoPop var_8C
  loc_A499FD: ConcatStr
  loc_A499FE: FStStrNoPop var_90
  loc_A49A01: LitStr "'"
  loc_A49A04: ConcatStr
  loc_A49A05: PopTmpLdAdStr
  loc_A49A09: Call Find(from_stack_1v)
  loc_A49A0E: FFreeStr var_8C = "": var_90 = ""
  loc_A49A17: LitStr "CodiCuco = '"
  loc_A49A1A: ILdRf var_88
  loc_A49A1D: ConcatStr
  loc_A49A1E: FStStrNoPop var_8C
  loc_A49A21: LitStr "'"
  loc_A49A24: ConcatStr
  loc_A49A25: PopTmpLdAdStr
  loc_A49A29: Call Find(from_stack_1v)
  loc_A49A2E: FFreeStr var_8C = ""
  loc_A49A35: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A7101C
  'Data Table: 412608
  loc_A70FA8: ILdRf sSelect
  loc_A70FAB: FStStrCopy var_88
  loc_A70FAE: LitNothing
  loc_A70FB0: CastAd
  loc_A70FB3: FStAdFuncNoPop
  loc_A70FB6: FLdPr Me
  loc_A70FB9: Call clscuentacontable.global_4269456Set(from_stack_1v)
  loc_A70FBE: FFree1Ad var_8C
  loc_A70FC1: New Recordset
  loc_A70FC5: FStAdFuncNoPop
  loc_A70FC8: FLdPr Me
  loc_A70FCB: Call clscuentacontable.global_4269456Set(from_stack_1v)
  loc_A70FD0: FFree1Ad var_8C
  loc_A70FD3: LitI4 -1
  loc_A70FD8: LitI4 3
  loc_A70FDD: LitI4 3
  loc_A70FE2: ImpAdLdI4 MemVar_D9301C
  loc_A70FE5: CVarAd
  loc_A70FE9: PopAdLdVar
  loc_A70FEA: ILdRf var_88
  loc_A70FED: CVarStr var_9C
  loc_A70FF0: PopAdLdVar
  loc_A70FF1: FLdRfVar var_8C
  loc_A70FF4: FLdPr Me
  loc_A70FF7: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A70FFC: FLdPr var_8C
  loc_A70FFF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71004: FFree1Ad var_8C
  loc_A71007: LitVarStr var_9C, "Primary"
  loc_A7100C: PopAdLdVar
  loc_A7100D: FLdPr Me
  loc_A71010: LateIdCall
  loc_A71018: ExitProcHresult
  loc_A71019: LitVar_TRUE RedefineRSB9
End Sub

Public Sub EjecutarRsCls(sSelect) 'A49C70
  'Data Table: 412608
  loc_A49C1C: ILdRf sSelect
  loc_A49C1F: FStStrCopy var_88
  loc_A49C22: LitNothing
  loc_A49C24: CastAd
  loc_A49C27: FStAdFuncNoPop
  loc_A49C2A: FLdPr Me
  loc_A49C2D: MemStAd
  loc_A49C31: FFree1Ad var_8C
  loc_A49C34: New Recordset
  loc_A49C38: FStAdFuncNoPop
  loc_A49C3B: FLdPr Me
  loc_A49C3E: MemStAd
  loc_A49C42: FFree1Ad var_8C
  loc_A49C45: LitI4 -1
  loc_A49C4A: LitI4 3
  loc_A49C4F: LitI4 3
  loc_A49C54: ImpAdLdI4 MemVar_D9301C
  loc_A49C57: CVarAd
  loc_A49C5B: PopAdLdVar
  loc_A49C5C: ILdRf var_88
  loc_A49C5F: CVarStr var_9C
  loc_A49C62: PopAdLdVar
  loc_A49C63: FLdPr Me
  loc_A49C66: MemLdPr global_60
  loc_A49C69: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A49C6E: ExitProcHresult
  loc_A49C6F: CStrVarTmp
End Sub

Public Property Get DataSource() 'A0A4D8
  'Data Table: 412608
  loc_A0A4A8: ZeroRetVal
  loc_A0A4AA: FLdRfVar var_90
  loc_A0A4AD: FLdRfVar var_8C
  loc_A0A4B0: FLdPr Me
  loc_A0A4B3: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A0A4B8: FLdPr var_8C
  loc_A0A4BB:  = Me.DataSource
  loc_A0A4C0: ILdRf var_90
  loc_A0A4C3: CastAd
  loc_A0A4C6: FStAdFunc var_88
  loc_A0A4C9: FFreeAd var_8C = ""
  loc_A0A4D0: ExitProcCbHresult
End Sub

Public Property Get PeriInfo() 'A49E98
  'Data Table: 412608
  loc_A49E4C: FLdRfVar var_B4
  loc_A49E4F: FLdRfVar var_A4
  loc_A49E52: LitVarStr var_A0, "PeriInfo"
  loc_A49E57: PopAdLdVar
  loc_A49E58: FLdRfVar var_90
  loc_A49E5B: FLdRfVar var_8C
  loc_A49E5E: FLdPr Me
  loc_A49E61: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A49E66: FLdPr var_8C
  loc_A49E69:  = Me.Fields
  loc_A49E6E: FLdPr var_90
  loc_A49E71: from_stack_2 = Me.Item(from_stack_1)
  loc_A49E76: FLdPr var_A4
  loc_A49E79:  = Me.Value
  loc_A49E7E: FLdRfVar var_B4
  loc_A49E81: CI2Var
  loc_A49E82: FStI2 var_86
  loc_A49E85: FFreeAd var_8C = "": var_90 = ""
  loc_A49E8E: FFree1Var var_B4 = ""
  loc_A49E91: ExitProcCbHresult
End Sub

Public Property Get CodiCuco() 'A54520
  'Data Table: 412608
  loc_A544D0: ZeroRetVal
  loc_A544D2: FLdRfVar var_B4
  loc_A544D5: FLdRfVar var_A4
  loc_A544D8: LitVarStr var_A0, "CodiCuco"
  loc_A544DD: PopAdLdVar
  loc_A544DE: FLdRfVar var_90
  loc_A544E1: FLdRfVar var_8C
  loc_A544E4: FLdPr Me
  loc_A544E7: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A544EC: FLdPr var_8C
  loc_A544EF:  = Me.Fields
  loc_A544F4: FLdPr var_90
  loc_A544F7: from_stack_2 = Me.Item(from_stack_1)
  loc_A544FC: FLdPr var_A4
  loc_A544FF:  = Me.Value
  loc_A54504: FLdRfVar var_B4
  loc_A54507: CStrVarTmp
  loc_A54508: FStStr var_88
  loc_A5450B: FFreeAd var_8C = "": var_90 = ""
  loc_A54514: FFree1Var var_B4 = ""
  loc_A54517: ExitProcCbHresult
  loc_A5451F: CStrVarTmp
End Sub

Public Property Get DetaCuco() 'A5423C
  'Data Table: 412608
  loc_A541EC: ZeroRetVal
  loc_A541EE: FLdRfVar var_B4
  loc_A541F1: FLdRfVar var_A4
  loc_A541F4: LitVarStr var_A0, "DetaCuco"
  loc_A541F9: PopAdLdVar
  loc_A541FA: FLdRfVar var_90
  loc_A541FD: FLdRfVar var_8C
  loc_A54200: FLdPr Me
  loc_A54203: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A54208: FLdPr var_8C
  loc_A5420B:  = Me.Fields
  loc_A54210: FLdPr var_90
  loc_A54213: from_stack_2 = Me.Item(from_stack_1)
  loc_A54218: FLdPr var_A4
  loc_A5421B:  = Me.Value
  loc_A54220: FLdRfVar var_B4
  loc_A54223: CStrVarTmp
  loc_A54224: FStStr var_88
  loc_A54227: FFreeAd var_8C = "": var_90 = ""
  loc_A54230: FFree1Var var_B4 = ""
  loc_A54233: ExitProcCbHresult
  loc_A5423B: ExitProcR4
End Sub

Public Property Get ImpuCuco() 'A542D0
  'Data Table: 412608
  loc_A54280: ZeroRetVal
  loc_A54282: FLdRfVar var_B4
  loc_A54285: FLdRfVar var_A4
  loc_A54288: LitVarStr var_A0, "ImpuCuco"
  loc_A5428D: PopAdLdVar
  loc_A5428E: FLdRfVar var_90
  loc_A54291: FLdRfVar var_8C
  loc_A54294: FLdPr Me
  loc_A54297: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A5429C: FLdPr var_8C
  loc_A5429F:  = Me.Fields
  loc_A542A4: FLdPr var_90
  loc_A542A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A542AC: FLdPr var_A4
  loc_A542AF:  = Me.Value
  loc_A542B4: FLdRfVar var_B4
  loc_A542B7: CStrVarTmp
  loc_A542B8: FStStr var_88
  loc_A542BB: FFreeAd var_8C = "": var_90 = ""
  loc_A542C4: FFree1Var var_B4 = ""
  loc_A542C7: ExitProcCbHresult
End Sub

Public Property Get CodiTicu() 'A4A154
  'Data Table: 412608
  loc_A4A108: FLdRfVar var_B4
  loc_A4A10B: FLdRfVar var_A4
  loc_A4A10E: LitVarStr var_A0, "CodiTicu"
  loc_A4A113: PopAdLdVar
  loc_A4A114: FLdRfVar var_90
  loc_A4A117: FLdRfVar var_8C
  loc_A4A11A: FLdPr Me
  loc_A4A11D: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A4A122: FLdPr var_8C
  loc_A4A125:  = Me.Fields
  loc_A4A12A: FLdPr var_90
  loc_A4A12D: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A132: FLdPr var_A4
  loc_A4A135:  = Me.Value
  loc_A4A13A: FLdRfVar var_B4
  loc_A4A13D: CI2Var
  loc_A4A13E: FStI2 var_86
  loc_A4A141: FFreeAd var_8C = "": var_90 = ""
  loc_A4A14A: FFree1Var var_B4 = ""
  loc_A4A14D: ExitProcCbHresult
End Sub

Public Property Get AutoCuco() 'A54364
  'Data Table: 412608
  loc_A54314: ZeroRetVal
  loc_A54316: FLdRfVar var_B4
  loc_A54319: FLdRfVar var_A4
  loc_A5431C: LitVarStr var_A0, "AutoCuco"
  loc_A54321: PopAdLdVar
  loc_A54322: FLdRfVar var_90
  loc_A54325: FLdRfVar var_8C
  loc_A54328: FLdPr Me
  loc_A5432B: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A54330: FLdPr var_8C
  loc_A54333:  = Me.Fields
  loc_A54338: FLdPr var_90
  loc_A5433B: from_stack_2 = Me.Item(from_stack_1)
  loc_A54340: FLdPr var_A4
  loc_A54343:  = Me.Value
  loc_A54348: FLdRfVar var_B4
  loc_A5434B: CStrVarTmp
  loc_A5434C: FStStr var_88
  loc_A5434F: FFreeAd var_8C = "": var_90 = ""
  loc_A54358: FFree1Var var_B4 = ""
  loc_A5435B: ExitProcCbHresult
  loc_A54361: FnLBound
End Sub

Public Property Get CodiUsua() 'A543F8
  'Data Table: 412608
  loc_A543A8: ZeroRetVal
  loc_A543AA: FLdRfVar var_B4
  loc_A543AD: FLdRfVar var_A4
  loc_A543B0: LitVarStr var_A0, "CodiUsua"
  loc_A543B5: PopAdLdVar
  loc_A543B6: FLdRfVar var_90
  loc_A543B9: FLdRfVar var_8C
  loc_A543BC: FLdPr Me
  loc_A543BF: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A543C4: FLdPr var_8C
  loc_A543C7:  = Me.Fields
  loc_A543CC: FLdPr var_90
  loc_A543CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A543D4: FLdPr var_A4
  loc_A543D7:  = Me.Value
  loc_A543DC: FLdRfVar var_B4
  loc_A543DF: CStrVarTmp
  loc_A543E0: FStStr var_88
  loc_A543E3: FFreeAd var_8C = "": var_90 = ""
  loc_A543EC: FFree1Var var_B4 = ""
  loc_A543EF: ExitProcCbHresult
End Sub

Public Property Get FijoCuco() 'A5448C
  'Data Table: 412608
  loc_A5443C: ZeroRetVal
  loc_A5443E: FLdRfVar var_B4
  loc_A54441: FLdRfVar var_A4
  loc_A54444: LitVarStr var_A0, "FijoCuco"
  loc_A54449: PopAdLdVar
  loc_A5444A: FLdRfVar var_90
  loc_A5444D: FLdRfVar var_8C
  loc_A54450: FLdPr Me
  loc_A54453: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A54458: FLdPr var_8C
  loc_A5445B:  = Me.Fields
  loc_A54460: FLdPr var_90
  loc_A54463: from_stack_2 = Me.Item(from_stack_1)
  loc_A54468: FLdPr var_A4
  loc_A5446B:  = Me.Value
  loc_A54470: FLdRfVar var_B4
  loc_A54473: CStrVarTmp
  loc_A54474: FStStr var_88
  loc_A54477: FFreeAd var_8C = "": var_90 = ""
  loc_A54480: FFree1Var var_B4 = ""
  loc_A54483: ExitProcCbHresult
  loc_A54489: MemLdRfVar from_stack_1.global_64
End Sub

Public Property Get DetaTicu() 'A42C48
  'Data Table: 412608
  loc_A42C04: ZeroRetValVar
  loc_A42C06: FLdRfVar var_B0
  loc_A42C09: LitVarStr var_AC, "DetaTicu"
  loc_A42C0E: PopAdLdVar
  loc_A42C0F: FLdRfVar var_9C
  loc_A42C12: FLdRfVar var_98
  loc_A42C15: FLdPr Me
  loc_A42C18: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_A42C1D: FLdPr var_98
  loc_A42C20:  = Me.Fields
  loc_A42C25: FLdPr var_9C
  loc_A42C28: from_stack_2 = Me.Item(from_stack_1)
  loc_A42C2D: FLdZeroAd var_B0
  loc_A42C30: CVarAd
  loc_A42C34: FStVar DetaTicu
  loc_A42C38: FFreeAd var_98 = ""
  loc_A42C3F: ExitProcCbHresult
  loc_A42C45: MemLdRfVar from_stack_1.global_64
End Sub

Public Function nivelCuentaContable(sCuentaContable) 'BB39C4
  'Data Table: 412608
  loc_BB335C: LitI2_Byte 0
  loc_BB335E: FStI2 var_86
  loc_BB3361: LitVarI2 var_A8, 2
  loc_BB3366: LitI4 9
  loc_BB336B: ILdI4 sCuentaContable
  loc_BB336E: ImpAdCallI2 Mid$(, , )
  loc_BB3373: FStStrNoPop var_AC
  loc_BB3376: LitStr "00"
  loc_BB3379: NeStr
  loc_BB337B: LitVarI2 var_CC, 2
  loc_BB3380: LitI4 7
  loc_BB3385: ILdI4 sCuentaContable
  loc_BB3388: ImpAdCallI2 Mid$(, , )
  loc_BB338D: FStStrNoPop var_D0
  loc_BB3390: LitStr "00"
  loc_BB3393: NeStr
  loc_BB3395: AndI4
  loc_BB3396: LitVarI2 var_F0, 2
  loc_BB339B: LitI4 5
  loc_BB33A0: ILdI4 sCuentaContable
  loc_BB33A3: ImpAdCallI2 Mid$(, , )
  loc_BB33A8: FStStrNoPop var_F4
  loc_BB33AB: LitStr "00"
  loc_BB33AE: NeStr
  loc_BB33B0: AndI4
  loc_BB33B1: LitVarI2 var_114, 1
  loc_BB33B6: LitI4 4
  loc_BB33BB: ILdI4 sCuentaContable
  loc_BB33BE: ImpAdCallI2 Mid$(, , )
  loc_BB33C3: FStStrNoPop var_118
  loc_BB33C6: LitStr "0"
  loc_BB33C9: NeStr
  loc_BB33CB: AndI4
  loc_BB33CC: LitVarI2 var_138, 1
  loc_BB33D1: LitI4 3
  loc_BB33D6: ILdI4 sCuentaContable
  loc_BB33D9: ImpAdCallI2 Mid$(, , )
  loc_BB33DE: FStStrNoPop var_13C
  loc_BB33E1: LitStr "0"
  loc_BB33E4: NeStr
  loc_BB33E6: AndI4
  loc_BB33E7: LitVarI2 var_15C, 1
  loc_BB33EC: LitI4 2
  loc_BB33F1: ILdI4 sCuentaContable
  loc_BB33F4: ImpAdCallI2 Mid$(, , )
  loc_BB33F9: FStStrNoPop var_160
  loc_BB33FC: LitStr "0"
  loc_BB33FF: NeStr
  loc_BB3401: AndI4
  loc_BB3402: LitVarI2 var_180, 1
  loc_BB3407: LitI4 1
  loc_BB340C: ILdI4 sCuentaContable
  loc_BB340F: ImpAdCallI2 Mid$(, , )
  loc_BB3414: FStStrNoPop var_184
  loc_BB3417: LitStr "0"
  loc_BB341A: NeStr
  loc_BB341C: AndI4
  loc_BB341D: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB342E: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB343F: BranchF loc_BB344A
  loc_BB3442: LitI2_Byte 7
  loc_BB3444: FStI2 var_86
  loc_BB3447: Branch loc_BB39BD
  loc_BB344A: LitVarI2 var_A8, 2
  loc_BB344F: LitI4 7
  loc_BB3454: ILdI4 sCuentaContable
  loc_BB3457: ImpAdCallI2 Mid$(, , )
  loc_BB345C: FStStrNoPop var_AC
  loc_BB345F: LitStr "00"
  loc_BB3462: NeStr
  loc_BB3464: LitVarI2 var_CC, 2
  loc_BB3469: LitI4 9
  loc_BB346E: ILdI4 sCuentaContable
  loc_BB3471: ImpAdCallI2 Mid$(, , )
  loc_BB3476: FStStrNoPop var_D0
  loc_BB3479: LitStr "00"
  loc_BB347C: EqStr
  loc_BB347E: AndI4
  loc_BB347F: LitVarI2 var_F0, 2
  loc_BB3484: LitI4 5
  loc_BB3489: ILdI4 sCuentaContable
  loc_BB348C: ImpAdCallI2 Mid$(, , )
  loc_BB3491: FStStrNoPop var_F4
  loc_BB3494: LitStr "00"
  loc_BB3497: NeStr
  loc_BB3499: AndI4
  loc_BB349A: LitVarI2 var_114, 1
  loc_BB349F: LitI4 4
  loc_BB34A4: ILdI4 sCuentaContable
  loc_BB34A7: ImpAdCallI2 Mid$(, , )
  loc_BB34AC: FStStrNoPop var_118
  loc_BB34AF: LitStr "0"
  loc_BB34B2: NeStr
  loc_BB34B4: AndI4
  loc_BB34B5: LitVarI2 var_138, 1
  loc_BB34BA: LitI4 3
  loc_BB34BF: ILdI4 sCuentaContable
  loc_BB34C2: ImpAdCallI2 Mid$(, , )
  loc_BB34C7: FStStrNoPop var_13C
  loc_BB34CA: LitStr "0"
  loc_BB34CD: NeStr
  loc_BB34CF: AndI4
  loc_BB34D0: LitVarI2 var_15C, 1
  loc_BB34D5: LitI4 2
  loc_BB34DA: ILdI4 sCuentaContable
  loc_BB34DD: ImpAdCallI2 Mid$(, , )
  loc_BB34E2: FStStrNoPop var_160
  loc_BB34E5: LitStr "0"
  loc_BB34E8: NeStr
  loc_BB34EA: AndI4
  loc_BB34EB: LitVarI2 var_180, 1
  loc_BB34F0: LitI4 1
  loc_BB34F5: ILdI4 sCuentaContable
  loc_BB34F8: ImpAdCallI2 Mid$(, , )
  loc_BB34FD: FStStrNoPop var_184
  loc_BB3500: LitStr "0"
  loc_BB3503: NeStr
  loc_BB3505: AndI4
  loc_BB3506: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB3517: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB3528: BranchF loc_BB3533
  loc_BB352B: LitI2_Byte 6
  loc_BB352D: FStI2 var_86
  loc_BB3530: Branch loc_BB39BD
  loc_BB3533: LitVarI2 var_A8, 2
  loc_BB3538: LitI4 5
  loc_BB353D: ILdI4 sCuentaContable
  loc_BB3540: ImpAdCallI2 Mid$(, , )
  loc_BB3545: FStStrNoPop var_AC
  loc_BB3548: LitStr "00"
  loc_BB354B: NeStr
  loc_BB354D: LitVarI2 var_CC, 2
  loc_BB3552: LitI4 9
  loc_BB3557: ILdI4 sCuentaContable
  loc_BB355A: ImpAdCallI2 Mid$(, , )
  loc_BB355F: FStStrNoPop var_D0
  loc_BB3562: LitStr "00"
  loc_BB3565: EqStr
  loc_BB3567: AndI4
  loc_BB3568: LitVarI2 var_F0, 2
  loc_BB356D: LitI4 7
  loc_BB3572: ILdI4 sCuentaContable
  loc_BB3575: ImpAdCallI2 Mid$(, , )
  loc_BB357A: FStStrNoPop var_F4
  loc_BB357D: LitStr "00"
  loc_BB3580: EqStr
  loc_BB3582: AndI4
  loc_BB3583: LitVarI2 var_114, 1
  loc_BB3588: LitI4 4
  loc_BB358D: ILdI4 sCuentaContable
  loc_BB3590: ImpAdCallI2 Mid$(, , )
  loc_BB3595: FStStrNoPop var_118
  loc_BB3598: LitStr "0"
  loc_BB359B: NeStr
  loc_BB359D: AndI4
  loc_BB359E: LitVarI2 var_138, 1
  loc_BB35A3: LitI4 3
  loc_BB35A8: ILdI4 sCuentaContable
  loc_BB35AB: ImpAdCallI2 Mid$(, , )
  loc_BB35B0: FStStrNoPop var_13C
  loc_BB35B3: LitStr "0"
  loc_BB35B6: NeStr
  loc_BB35B8: AndI4
  loc_BB35B9: LitVarI2 var_15C, 1
  loc_BB35BE: LitI4 2
  loc_BB35C3: ILdI4 sCuentaContable
  loc_BB35C6: ImpAdCallI2 Mid$(, , )
  loc_BB35CB: FStStrNoPop var_160
  loc_BB35CE: LitStr "0"
  loc_BB35D1: NeStr
  loc_BB35D3: AndI4
  loc_BB35D4: LitVarI2 var_180, 1
  loc_BB35D9: LitI4 1
  loc_BB35DE: ILdI4 sCuentaContable
  loc_BB35E1: ImpAdCallI2 Mid$(, , )
  loc_BB35E6: FStStrNoPop var_184
  loc_BB35E9: LitStr "0"
  loc_BB35EC: NeStr
  loc_BB35EE: AndI4
  loc_BB35EF: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB3600: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB3611: BranchF loc_BB361C
  loc_BB3614: LitI2_Byte 5
  loc_BB3616: FStI2 var_86
  loc_BB3619: Branch loc_BB39BD
  loc_BB361C: LitVarI2 var_A8, 1
  loc_BB3621: LitI4 4
  loc_BB3626: ILdI4 sCuentaContable
  loc_BB3629: ImpAdCallI2 Mid$(, , )
  loc_BB362E: FStStrNoPop var_AC
  loc_BB3631: LitStr "0"
  loc_BB3634: NeStr
  loc_BB3636: LitVarI2 var_CC, 2
  loc_BB363B: LitI4 9
  loc_BB3640: ILdI4 sCuentaContable
  loc_BB3643: ImpAdCallI2 Mid$(, , )
  loc_BB3648: FStStrNoPop var_D0
  loc_BB364B: LitStr "00"
  loc_BB364E: EqStr
  loc_BB3650: AndI4
  loc_BB3651: LitVarI2 var_F0, 2
  loc_BB3656: LitI4 7
  loc_BB365B: ILdI4 sCuentaContable
  loc_BB365E: ImpAdCallI2 Mid$(, , )
  loc_BB3663: FStStrNoPop var_F4
  loc_BB3666: LitStr "00"
  loc_BB3669: EqStr
  loc_BB366B: AndI4
  loc_BB366C: LitVarI2 var_114, 2
  loc_BB3671: LitI4 5
  loc_BB3676: ILdI4 sCuentaContable
  loc_BB3679: ImpAdCallI2 Mid$(, , )
  loc_BB367E: FStStrNoPop var_118
  loc_BB3681: LitStr "00"
  loc_BB3684: EqStr
  loc_BB3686: AndI4
  loc_BB3687: LitVarI2 var_138, 1
  loc_BB368C: LitI4 3
  loc_BB3691: ILdI4 sCuentaContable
  loc_BB3694: ImpAdCallI2 Mid$(, , )
  loc_BB3699: FStStrNoPop var_13C
  loc_BB369C: LitStr "0"
  loc_BB369F: NeStr
  loc_BB36A1: AndI4
  loc_BB36A2: LitVarI2 var_15C, 1
  loc_BB36A7: LitI4 2
  loc_BB36AC: ILdI4 sCuentaContable
  loc_BB36AF: ImpAdCallI2 Mid$(, , )
  loc_BB36B4: FStStrNoPop var_160
  loc_BB36B7: LitStr "0"
  loc_BB36BA: NeStr
  loc_BB36BC: AndI4
  loc_BB36BD: LitVarI2 var_180, 1
  loc_BB36C2: LitI4 1
  loc_BB36C7: ILdI4 sCuentaContable
  loc_BB36CA: ImpAdCallI2 Mid$(, , )
  loc_BB36CF: FStStrNoPop var_184
  loc_BB36D2: LitStr "0"
  loc_BB36D5: NeStr
  loc_BB36D7: AndI4
  loc_BB36D8: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB36E9: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB36FA: BranchF loc_BB3705
  loc_BB36FD: LitI2_Byte 4
  loc_BB36FF: FStI2 var_86
  loc_BB3702: Branch loc_BB39BD
  loc_BB3705: LitVarI2 var_A8, 1
  loc_BB370A: LitI4 3
  loc_BB370F: ILdI4 sCuentaContable
  loc_BB3712: ImpAdCallI2 Mid$(, , )
  loc_BB3717: FStStrNoPop var_AC
  loc_BB371A: LitStr "0"
  loc_BB371D: NeStr
  loc_BB371F: LitVarI2 var_CC, 2
  loc_BB3724: LitI4 9
  loc_BB3729: ILdI4 sCuentaContable
  loc_BB372C: ImpAdCallI2 Mid$(, , )
  loc_BB3731: FStStrNoPop var_D0
  loc_BB3734: LitStr "00"
  loc_BB3737: EqStr
  loc_BB3739: AndI4
  loc_BB373A: LitVarI2 var_F0, 2
  loc_BB373F: LitI4 7
  loc_BB3744: ILdI4 sCuentaContable
  loc_BB3747: ImpAdCallI2 Mid$(, , )
  loc_BB374C: FStStrNoPop var_F4
  loc_BB374F: LitStr "00"
  loc_BB3752: EqStr
  loc_BB3754: AndI4
  loc_BB3755: LitVarI2 var_114, 2
  loc_BB375A: LitI4 5
  loc_BB375F: ILdI4 sCuentaContable
  loc_BB3762: ImpAdCallI2 Mid$(, , )
  loc_BB3767: FStStrNoPop var_118
  loc_BB376A: LitStr "00"
  loc_BB376D: EqStr
  loc_BB376F: AndI4
  loc_BB3770: LitVarI2 var_138, 1
  loc_BB3775: LitI4 4
  loc_BB377A: ILdI4 sCuentaContable
  loc_BB377D: ImpAdCallI2 Mid$(, , )
  loc_BB3782: FStStrNoPop var_13C
  loc_BB3785: LitStr "0"
  loc_BB3788: EqStr
  loc_BB378A: AndI4
  loc_BB378B: LitVarI2 var_15C, 1
  loc_BB3790: LitI4 2
  loc_BB3795: ILdI4 sCuentaContable
  loc_BB3798: ImpAdCallI2 Mid$(, , )
  loc_BB379D: FStStrNoPop var_160
  loc_BB37A0: LitStr "0"
  loc_BB37A3: NeStr
  loc_BB37A5: AndI4
  loc_BB37A6: LitVarI2 var_180, 1
  loc_BB37AB: LitI4 1
  loc_BB37B0: ILdI4 sCuentaContable
  loc_BB37B3: ImpAdCallI2 Mid$(, , )
  loc_BB37B8: FStStrNoPop var_184
  loc_BB37BB: LitStr "0"
  loc_BB37BE: NeStr
  loc_BB37C0: AndI4
  loc_BB37C1: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB37D2: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB37E3: BranchF loc_BB37EE
  loc_BB37E6: LitI2_Byte 3
  loc_BB37E8: FStI2 var_86
  loc_BB37EB: Branch loc_BB39BD
  loc_BB37EE: LitVarI2 var_A8, 1
  loc_BB37F3: LitI4 2
  loc_BB37F8: ILdI4 sCuentaContable
  loc_BB37FB: ImpAdCallI2 Mid$(, , )
  loc_BB3800: FStStrNoPop var_AC
  loc_BB3803: LitStr "0"
  loc_BB3806: NeStr
  loc_BB3808: LitVarI2 var_CC, 2
  loc_BB380D: LitI4 9
  loc_BB3812: ILdI4 sCuentaContable
  loc_BB3815: ImpAdCallI2 Mid$(, , )
  loc_BB381A: FStStrNoPop var_D0
  loc_BB381D: LitStr "00"
  loc_BB3820: EqStr
  loc_BB3822: AndI4
  loc_BB3823: LitVarI2 var_F0, 2
  loc_BB3828: LitI4 7
  loc_BB382D: ILdI4 sCuentaContable
  loc_BB3830: ImpAdCallI2 Mid$(, , )
  loc_BB3835: FStStrNoPop var_F4
  loc_BB3838: LitStr "00"
  loc_BB383B: EqStr
  loc_BB383D: AndI4
  loc_BB383E: LitVarI2 var_114, 2
  loc_BB3843: LitI4 5
  loc_BB3848: ILdI4 sCuentaContable
  loc_BB384B: ImpAdCallI2 Mid$(, , )
  loc_BB3850: FStStrNoPop var_118
  loc_BB3853: LitStr "00"
  loc_BB3856: EqStr
  loc_BB3858: AndI4
  loc_BB3859: LitVarI2 var_138, 1
  loc_BB385E: LitI4 4
  loc_BB3863: ILdI4 sCuentaContable
  loc_BB3866: ImpAdCallI2 Mid$(, , )
  loc_BB386B: FStStrNoPop var_13C
  loc_BB386E: LitStr "0"
  loc_BB3871: EqStr
  loc_BB3873: AndI4
  loc_BB3874: LitVarI2 var_15C, 1
  loc_BB3879: LitI4 3
  loc_BB387E: ILdI4 sCuentaContable
  loc_BB3881: ImpAdCallI2 Mid$(, , )
  loc_BB3886: FStStrNoPop var_160
  loc_BB3889: LitStr "0"
  loc_BB388C: EqStr
  loc_BB388E: AndI4
  loc_BB388F: LitVarI2 var_180, 1
  loc_BB3894: LitI4 1
  loc_BB3899: ILdI4 sCuentaContable
  loc_BB389C: ImpAdCallI2 Mid$(, , )
  loc_BB38A1: FStStrNoPop var_184
  loc_BB38A4: LitStr "0"
  loc_BB38A7: NeStr
  loc_BB38A9: AndI4
  loc_BB38AA: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB38BB: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB38CC: BranchF loc_BB38D7
  loc_BB38CF: LitI2_Byte 2
  loc_BB38D1: FStI2 var_86
  loc_BB38D4: Branch loc_BB39BD
  loc_BB38D7: LitVarI2 var_A8, 1
  loc_BB38DC: LitI4 1
  loc_BB38E1: ILdI4 sCuentaContable
  loc_BB38E4: ImpAdCallI2 Mid$(, , )
  loc_BB38E9: FStStrNoPop var_AC
  loc_BB38EC: LitStr "0"
  loc_BB38EF: NeStr
  loc_BB38F1: LitVarI2 var_CC, 2
  loc_BB38F6: LitI4 9
  loc_BB38FB: ILdI4 sCuentaContable
  loc_BB38FE: ImpAdCallI2 Mid$(, , )
  loc_BB3903: FStStrNoPop var_D0
  loc_BB3906: LitStr "00"
  loc_BB3909: EqStr
  loc_BB390B: AndI4
  loc_BB390C: LitVarI2 var_F0, 2
  loc_BB3911: LitI4 7
  loc_BB3916: ILdI4 sCuentaContable
  loc_BB3919: ImpAdCallI2 Mid$(, , )
  loc_BB391E: FStStrNoPop var_F4
  loc_BB3921: LitStr "00"
  loc_BB3924: EqStr
  loc_BB3926: AndI4
  loc_BB3927: LitVarI2 var_114, 2
  loc_BB392C: LitI4 5
  loc_BB3931: ILdI4 sCuentaContable
  loc_BB3934: ImpAdCallI2 Mid$(, , )
  loc_BB3939: FStStrNoPop var_118
  loc_BB393C: LitStr "00"
  loc_BB393F: EqStr
  loc_BB3941: AndI4
  loc_BB3942: LitVarI2 var_138, 1
  loc_BB3947: LitI4 4
  loc_BB394C: ILdI4 sCuentaContable
  loc_BB394F: ImpAdCallI2 Mid$(, , )
  loc_BB3954: FStStrNoPop var_13C
  loc_BB3957: LitStr "0"
  loc_BB395A: EqStr
  loc_BB395C: AndI4
  loc_BB395D: LitVarI2 var_15C, 1
  loc_BB3962: LitI4 3
  loc_BB3967: ILdI4 sCuentaContable
  loc_BB396A: ImpAdCallI2 Mid$(, , )
  loc_BB396F: FStStrNoPop var_160
  loc_BB3972: LitStr "0"
  loc_BB3975: EqStr
  loc_BB3977: AndI4
  loc_BB3978: LitVarI2 var_180, 1
  loc_BB397D: LitI4 2
  loc_BB3982: ILdI4 sCuentaContable
  loc_BB3985: ImpAdCallI2 Mid$(, , )
  loc_BB398A: FStStrNoPop var_184
  loc_BB398D: LitStr "0"
  loc_BB3990: EqStr
  loc_BB3992: AndI4
  loc_BB3993: FFreeStr var_AC = "": var_D0 = "": var_F4 = "": var_118 = "": var_13C = "": var_160 = ""
  loc_BB39A4: FFreeVar var_A8 = "": var_CC = "": var_F0 = "": var_114 = "": var_138 = "": var_15C = ""
  loc_BB39B5: BranchF loc_BB39BD
  loc_BB39B8: LitI2_Byte 1
  loc_BB39BA: FStI2 var_86
  loc_BB39BD: ExitProcCbHresult
End Function

Public Function CuentaContableNivelSuperior(sCuentaContable, iNivel) 'A79EE8
  'Data Table: 412608
  loc_A79E68: ZeroRetVal
  loc_A79E6A: ILdI2 iNivel
  loc_A79E6D: LitI2_Byte 7
  loc_A79E6F: EqI2
  loc_A79E70: BranchF loc_A79E7B
  loc_A79E73: LitI2_Byte 8
  loc_A79E75: FStI2 var_8A
  loc_A79E78: Branch loc_A79E96
  loc_A79E7B: ILdI2 iNivel
  loc_A79E7E: LitI2_Byte 6
  loc_A79E80: EqI2
  loc_A79E81: BranchF loc_A79E8D
  loc_A79E84: ILdI2 iNivel
  loc_A79E87: FStI2 var_8A
  loc_A79E8A: Branch loc_A79E96
  loc_A79E8D: ILdI2 iNivel
  loc_A79E90: LitI2_Byte 1
  loc_A79E92: SubI2
  loc_A79E93: FStI2 var_8A
  loc_A79E96: FLdRfVar var_8A
  loc_A79E99: CVarRef
  loc_A79E9E: LitI4 1
  loc_A79EA3: ILdI4 sCuentaContable
  loc_A79EA6: ImpAdCallI2 Mid$(, , )
  loc_A79EAB: FStStr var_88
  loc_A79EAE: LitI2_Byte 1
  loc_A79EB0: FLdRfVar var_8A
  loc_A79EB3: LitI4 &HA
  loc_A79EB8: ILdRf var_88
  loc_A79EBB: FnLenStr
  loc_A79EBC: SubI4
  loc_A79EBD: CI2I4
  loc_A79EBE: ForI2 var_A4
  loc_A79EC4: ILdRf var_90
  loc_A79EC7: LitStr "0"
  loc_A79ECA: ConcatStr
  loc_A79ECB: FStStr var_90
  loc_A79ECE: FLdRfVar var_8A
  loc_A79ED1: NextI2 var_A4, loc_A79EC4
  loc_A79ED6: ILdRf var_88
  loc_A79ED9: ILdRf var_90
  loc_A79EDC: ConcatStr
  loc_A79EDD: FStStr var_88
  loc_A79EE0: ExitProcCbHresult
End Function

Public Function ValidaEliminar(CodiCuco) 'B8DE7C
  'Data Table: 412608
  loc_B8D924: ILdRf CodiCuco
  loc_B8D927: FStStrCopy var_8C
  loc_B8D92A: ZeroRetVal
  loc_B8D92C: LitStr "SELECT * FROM moviasiento WHERE PeriInfo = "
  loc_B8D92F: ImpAdLdI2 MemVar_D93034
  loc_B8D932: CStrUI1
  loc_B8D934: FStStrNoPop var_90
  loc_B8D937: ConcatStr
  loc_B8D938: FStStrNoPop ValidaEliminar
  loc_B8D93B: LitStr " AND CodiCuco = '"
  loc_B8D93E: ConcatStr
  loc_B8D93F: FStStrNoPop var_98
  loc_B8D942: ILdRf var_8C
  loc_B8D945: ConcatStr
  loc_B8D946: FStStrNoPop var_9C
  loc_B8D949: LitStr "' ORDER BY PeriInfo, CodiAsie"
  loc_B8D94C: ConcatStr
  loc_B8D94D: FStStrNoPop var_A0
  loc_B8D950: Call EjecutarRsCls(from_stack_1v)
  loc_B8D955: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8D962: FLdRfVar var_A4
  loc_B8D965: FLdPr Me
  loc_B8D968: MemLdPr global_60
  loc_B8D96B:  = Me.RecordCount
  loc_B8D970: ILdRf var_A4
  loc_B8D973: LitI4 0
  loc_B8D978: GtI4
  loc_B8D979: BranchF loc_B8D9D5
  loc_B8D97C: LitVarStr var_DC, "La Cuenta Contable se encuentra en el Asiento: "
  loc_B8D981: FLdRfVar var_CC
  loc_B8D984: FLdRfVar var_BC
  loc_B8D987: LitVarStr var_B8, "CodiAsie"
  loc_B8D98C: PopAdLdVar
  loc_B8D98D: FLdRfVar var_A8
  loc_B8D990: FLdPr Me
  loc_B8D993: MemLdPr global_60
  loc_B8D996:  = Me.Fields
  loc_B8D99B: FLdPr var_A8
  loc_B8D99E: from_stack_2 = Me.Item(from_stack_1)
  loc_B8D9A3: FLdPr var_BC
  loc_B8D9A6:  = Me.Value
  loc_B8D9AB: FLdRfVar var_CC
  loc_B8D9AE: ConcatVar var_EC
  loc_B8D9B2: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8D9B7: ConcatVar var_10C
  loc_B8D9BB: CStrVarTmp
  loc_B8D9BC: FStStr var_88
  loc_B8D9BF: FFreeAd var_A8 = ""
  loc_B8D9C6: FFreeVar var_CC = "": var_EC = ""
  loc_B8D9CF: ExitProcCbHresult
  loc_B8D9D5: LitStr "SELECT * FROM cajaauto WHERE PeriInfo = "
  loc_B8D9D8: ImpAdLdI2 MemVar_D93034
  loc_B8D9DB: CStrUI1
  loc_B8D9DD: FStStrNoPop var_90
  loc_B8D9E0: ConcatStr
  loc_B8D9E1: FStStrNoPop ValidaEliminar
  loc_B8D9E4: LitStr " AND CodiCuco = '"
  loc_B8D9E7: ConcatStr
  loc_B8D9E8: FStStrNoPop var_98
  loc_B8D9EB: ILdRf var_8C
  loc_B8D9EE: ConcatStr
  loc_B8D9EF: FStStrNoPop var_9C
  loc_B8D9F2: LitStr "' ORDER BY FechCaja"
  loc_B8D9F5: ConcatStr
  loc_B8D9F6: FStStrNoPop var_A0
  loc_B8D9F9: Call EjecutarRsCls(from_stack_1v)
  loc_B8D9FE: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DA0B: FLdRfVar var_A4
  loc_B8DA0E: FLdPr Me
  loc_B8DA11: MemLdPr global_60
  loc_B8DA14:  = Me.RecordCount
  loc_B8DA19: ILdRf var_A4
  loc_B8DA1C: LitI4 0
  loc_B8DA21: GtI4
  loc_B8DA22: BranchF loc_B8DA7E
  loc_B8DA25: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Autorizados del día: "
  loc_B8DA2A: FLdRfVar var_CC
  loc_B8DA2D: FLdRfVar var_BC
  loc_B8DA30: LitVarStr var_B8, "FechCaja"
  loc_B8DA35: PopAdLdVar
  loc_B8DA36: FLdRfVar var_A8
  loc_B8DA39: FLdPr Me
  loc_B8DA3C: MemLdPr global_60
  loc_B8DA3F:  = Me.Fields
  loc_B8DA44: FLdPr var_A8
  loc_B8DA47: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DA4C: FLdPr var_BC
  loc_B8DA4F:  = Me.Value
  loc_B8DA54: FLdRfVar var_CC
  loc_B8DA57: ConcatVar var_EC
  loc_B8DA5B: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DA60: ConcatVar var_10C
  loc_B8DA64: CStrVarTmp
  loc_B8DA65: FStStr var_88
  loc_B8DA68: FFreeAd var_A8 = ""
  loc_B8DA6F: FFreeVar var_CC = "": var_EC = ""
  loc_B8DA78: ExitProcCbHresult
  loc_B8DA7E: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DA81: ImpAdLdI2 MemVar_D93034
  loc_B8DA84: CStrUI1
  loc_B8DA86: FStStrNoPop var_90
  loc_B8DA89: ConcatStr
  loc_B8DA8A: FStStrNoPop ValidaEliminar
  loc_B8DA8D: LitStr " AND CodiCuco = '"
  loc_B8DA90: ConcatStr
  loc_B8DA91: FStStrNoPop var_98
  loc_B8DA94: ILdRf var_8C
  loc_B8DA97: ConcatStr
  loc_B8DA98: FStStrNoPop var_9C
  loc_B8DA9B: LitStr "' ORDER BY FechCaja"
  loc_B8DA9E: ConcatStr
  loc_B8DA9F: FStStrNoPop var_A0
  loc_B8DAA2: Call EjecutarRsCls(from_stack_1v)
  loc_B8DAA7: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DAB4: FLdRfVar var_A4
  loc_B8DAB7: FLdPr Me
  loc_B8DABA: MemLdPr global_60
  loc_B8DABD:  = Me.RecordCount
  loc_B8DAC2: ILdRf var_A4
  loc_B8DAC5: LitI4 0
  loc_B8DACA: GtI4
  loc_B8DACB: BranchF loc_B8DB27
  loc_B8DACE: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Débitos del día: "
  loc_B8DAD3: FLdRfVar var_CC
  loc_B8DAD6: FLdRfVar var_BC
  loc_B8DAD9: LitVarStr var_B8, "FechCaja"
  loc_B8DADE: PopAdLdVar
  loc_B8DADF: FLdRfVar var_A8
  loc_B8DAE2: FLdPr Me
  loc_B8DAE5: MemLdPr global_60
  loc_B8DAE8:  = Me.Fields
  loc_B8DAED: FLdPr var_A8
  loc_B8DAF0: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DAF5: FLdPr var_BC
  loc_B8DAF8:  = Me.Value
  loc_B8DAFD: FLdRfVar var_CC
  loc_B8DB00: ConcatVar var_EC
  loc_B8DB04: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DB09: ConcatVar var_10C
  loc_B8DB0D: CStrVarTmp
  loc_B8DB0E: FStStr var_88
  loc_B8DB11: FFreeAd var_A8 = ""
  loc_B8DB18: FFreeVar var_CC = "": var_EC = ""
  loc_B8DB21: ExitProcCbHresult
  loc_B8DB27: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DB2A: ImpAdLdI2 MemVar_D93034
  loc_B8DB2D: CStrUI1
  loc_B8DB2F: FStStrNoPop var_90
  loc_B8DB32: ConcatStr
  loc_B8DB33: FStStrNoPop ValidaEliminar
  loc_B8DB36: LitStr " AND CodiCuco = '"
  loc_B8DB39: ConcatStr
  loc_B8DB3A: FStStrNoPop var_98
  loc_B8DB3D: ILdRf var_8C
  loc_B8DB40: ConcatStr
  loc_B8DB41: FStStrNoPop var_9C
  loc_B8DB44: LitStr "' ORDER BY FechCaja"
  loc_B8DB47: ConcatStr
  loc_B8DB48: FStStrNoPop var_A0
  loc_B8DB4B: Call EjecutarRsCls(from_stack_1v)
  loc_B8DB50: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DB5D: FLdRfVar var_A4
  loc_B8DB60: FLdPr Me
  loc_B8DB63: MemLdPr global_60
  loc_B8DB66:  = Me.RecordCount
  loc_B8DB6B: ILdRf var_A4
  loc_B8DB6E: LitI4 0
  loc_B8DB73: GtI4
  loc_B8DB74: BranchF loc_B8DBD0
  loc_B8DB77: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Devengados del día: "
  loc_B8DB7C: FLdRfVar var_CC
  loc_B8DB7F: FLdRfVar var_BC
  loc_B8DB82: LitVarStr var_B8, "FechCaja"
  loc_B8DB87: PopAdLdVar
  loc_B8DB88: FLdRfVar var_A8
  loc_B8DB8B: FLdPr Me
  loc_B8DB8E: MemLdPr global_60
  loc_B8DB91:  = Me.Fields
  loc_B8DB96: FLdPr var_A8
  loc_B8DB99: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DB9E: FLdPr var_BC
  loc_B8DBA1:  = Me.Value
  loc_B8DBA6: FLdRfVar var_CC
  loc_B8DBA9: ConcatVar var_EC
  loc_B8DBAD: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DBB2: ConcatVar var_10C
  loc_B8DBB6: CStrVarTmp
  loc_B8DBB7: FStStr var_88
  loc_B8DBBA: FFreeAd var_A8 = ""
  loc_B8DBC1: FFreeVar var_CC = "": var_EC = ""
  loc_B8DBCA: ExitProcCbHresult
  loc_B8DBD0: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DBD3: ImpAdLdI2 MemVar_D93034
  loc_B8DBD6: CStrUI1
  loc_B8DBD8: FStStrNoPop var_90
  loc_B8DBDB: ConcatStr
  loc_B8DBDC: FStStrNoPop ValidaEliminar
  loc_B8DBDF: LitStr " AND CodiCuco = '"
  loc_B8DBE2: ConcatStr
  loc_B8DBE3: FStStrNoPop var_98
  loc_B8DBE6: ILdRf var_8C
  loc_B8DBE9: ConcatStr
  loc_B8DBEA: FStStrNoPop var_9C
  loc_B8DBED: LitStr "' ORDER BY FechCaja"
  loc_B8DBF0: ConcatStr
  loc_B8DBF1: FStStrNoPop var_A0
  loc_B8DBF4: Call EjecutarRsCls(from_stack_1v)
  loc_B8DBF9: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DC06: FLdRfVar var_A4
  loc_B8DC09: FLdPr Me
  loc_B8DC0C: MemLdPr global_60
  loc_B8DC0F:  = Me.RecordCount
  loc_B8DC14: ILdRf var_A4
  loc_B8DC17: LitI4 0
  loc_B8DC1C: GtI4
  loc_B8DC1D: BranchF loc_B8DC79
  loc_B8DC20: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Emisión de Cheques del día: "
  loc_B8DC25: FLdRfVar var_CC
  loc_B8DC28: FLdRfVar var_BC
  loc_B8DC2B: LitVarStr var_B8, "FechCaja"
  loc_B8DC30: PopAdLdVar
  loc_B8DC31: FLdRfVar var_A8
  loc_B8DC34: FLdPr Me
  loc_B8DC37: MemLdPr global_60
  loc_B8DC3A:  = Me.Fields
  loc_B8DC3F: FLdPr var_A8
  loc_B8DC42: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DC47: FLdPr var_BC
  loc_B8DC4A:  = Me.Value
  loc_B8DC4F: FLdRfVar var_CC
  loc_B8DC52: ConcatVar var_EC
  loc_B8DC56: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DC5B: ConcatVar var_10C
  loc_B8DC5F: CStrVarTmp
  loc_B8DC60: FStStr var_88
  loc_B8DC63: FFreeAd var_A8 = ""
  loc_B8DC6A: FFreeVar var_CC = "": var_EC = ""
  loc_B8DC73: ExitProcCbHresult
  loc_B8DC79: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DC7C: ImpAdLdI2 MemVar_D93034
  loc_B8DC7F: CStrUI1
  loc_B8DC81: FStStrNoPop var_90
  loc_B8DC84: ConcatStr
  loc_B8DC85: FStStrNoPop ValidaEliminar
  loc_B8DC88: LitStr " AND CodiCuco = '"
  loc_B8DC8B: ConcatStr
  loc_B8DC8C: FStStrNoPop var_98
  loc_B8DC8F: ILdRf var_8C
  loc_B8DC92: ConcatStr
  loc_B8DC93: FStStrNoPop var_9C
  loc_B8DC96: LitStr "' ORDER BY FechCaja"
  loc_B8DC99: ConcatStr
  loc_B8DC9A: FStStrNoPop var_A0
  loc_B8DC9D: Call EjecutarRsCls(from_stack_1v)
  loc_B8DCA2: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DCAF: FLdRfVar var_A4
  loc_B8DCB2: FLdPr Me
  loc_B8DCB5: MemLdPr global_60
  loc_B8DCB8:  = Me.RecordCount
  loc_B8DCBD: ILdRf var_A4
  loc_B8DCC0: LitI4 0
  loc_B8DCC5: GtI4
  loc_B8DCC6: BranchF loc_B8DD22
  loc_B8DCC9: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Ingresos del día: "
  loc_B8DCCE: FLdRfVar var_CC
  loc_B8DCD1: FLdRfVar var_BC
  loc_B8DCD4: LitVarStr var_B8, "FechCaja"
  loc_B8DCD9: PopAdLdVar
  loc_B8DCDA: FLdRfVar var_A8
  loc_B8DCDD: FLdPr Me
  loc_B8DCE0: MemLdPr global_60
  loc_B8DCE3:  = Me.Fields
  loc_B8DCE8: FLdPr var_A8
  loc_B8DCEB: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DCF0: FLdPr var_BC
  loc_B8DCF3:  = Me.Value
  loc_B8DCF8: FLdRfVar var_CC
  loc_B8DCFB: ConcatVar var_EC
  loc_B8DCFF: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DD04: ConcatVar var_10C
  loc_B8DD08: CStrVarTmp
  loc_B8DD09: FStStr var_88
  loc_B8DD0C: FFreeAd var_A8 = ""
  loc_B8DD13: FFreeVar var_CC = "": var_EC = ""
  loc_B8DD1C: ExitProcCbHresult
  loc_B8DD22: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DD25: ImpAdLdI2 MemVar_D93034
  loc_B8DD28: CStrUI1
  loc_B8DD2A: FStStrNoPop var_90
  loc_B8DD2D: ConcatStr
  loc_B8DD2E: FStStrNoPop ValidaEliminar
  loc_B8DD31: LitStr " AND CodiCuco = '"
  loc_B8DD34: ConcatStr
  loc_B8DD35: FStStrNoPop var_98
  loc_B8DD38: ILdRf var_8C
  loc_B8DD3B: ConcatStr
  loc_B8DD3C: FStStrNoPop var_9C
  loc_B8DD3F: LitStr "' ORDER BY FechCaja"
  loc_B8DD42: ConcatStr
  loc_B8DD43: FStStrNoPop var_A0
  loc_B8DD46: Call EjecutarRsCls(from_stack_1v)
  loc_B8DD4B: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DD58: FLdRfVar var_A4
  loc_B8DD5B: FLdPr Me
  loc_B8DD5E: MemLdPr global_60
  loc_B8DD61:  = Me.RecordCount
  loc_B8DD66: ILdRf var_A4
  loc_B8DD69: LitI4 0
  loc_B8DD6E: GtI4
  loc_B8DD6F: BranchF loc_B8DDCB
  loc_B8DD72: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Pago de Cheques del día: "
  loc_B8DD77: FLdRfVar var_CC
  loc_B8DD7A: FLdRfVar var_BC
  loc_B8DD7D: LitVarStr var_B8, "FechCaja"
  loc_B8DD82: PopAdLdVar
  loc_B8DD83: FLdRfVar var_A8
  loc_B8DD86: FLdPr Me
  loc_B8DD89: MemLdPr global_60
  loc_B8DD8C:  = Me.Fields
  loc_B8DD91: FLdPr var_A8
  loc_B8DD94: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DD99: FLdPr var_BC
  loc_B8DD9C:  = Me.Value
  loc_B8DDA1: FLdRfVar var_CC
  loc_B8DDA4: ConcatVar var_EC
  loc_B8DDA8: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DDAD: ConcatVar var_10C
  loc_B8DDB1: CStrVarTmp
  loc_B8DDB2: FStStr var_88
  loc_B8DDB5: FFreeAd var_A8 = ""
  loc_B8DDBC: FFreeVar var_CC = "": var_EC = ""
  loc_B8DDC5: ExitProcCbHresult
  loc_B8DDCB: LitStr "SELECT * FROM cajadebi WHERE PeriInfo = "
  loc_B8DDCE: ImpAdLdI2 MemVar_D93034
  loc_B8DDD1: CStrUI1
  loc_B8DDD3: FStStrNoPop var_90
  loc_B8DDD6: ConcatStr
  loc_B8DDD7: FStStrNoPop ValidaEliminar
  loc_B8DDDA: LitStr " AND CodiCuco = '"
  loc_B8DDDD: ConcatStr
  loc_B8DDDE: FStStrNoPop var_98
  loc_B8DDE1: ILdRf var_8C
  loc_B8DDE4: ConcatStr
  loc_B8DDE5: FStStrNoPop var_9C
  loc_B8DDE8: LitStr "' ORDER BY FechCaja"
  loc_B8DDEB: ConcatStr
  loc_B8DDEC: FStStrNoPop var_A0
  loc_B8DDEF: Call EjecutarRsCls(from_stack_1v)
  loc_B8DDF4: FFreeStr var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_B8DE01: FLdRfVar var_A4
  loc_B8DE04: FLdPr Me
  loc_B8DE07: MemLdPr global_60
  loc_B8DE0A:  = Me.RecordCount
  loc_B8DE0F: ILdRf var_A4
  loc_B8DE12: LitI4 0
  loc_B8DE17: GtI4
  loc_B8DE18: BranchF loc_B8DE74
  loc_B8DE1B: LitVarStr var_DC, "La Cuenta Contable se encuentra en la Caja de Remisión del día: "
  loc_B8DE20: FLdRfVar var_CC
  loc_B8DE23: FLdRfVar var_BC
  loc_B8DE26: LitVarStr var_B8, "FechCaja"
  loc_B8DE2B: PopAdLdVar
  loc_B8DE2C: FLdRfVar var_A8
  loc_B8DE2F: FLdPr Me
  loc_B8DE32: MemLdPr global_60
  loc_B8DE35:  = Me.Fields
  loc_B8DE3A: FLdPr var_A8
  loc_B8DE3D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8DE42: FLdPr var_BC
  loc_B8DE45:  = Me.Value
  loc_B8DE4A: FLdRfVar var_CC
  loc_B8DE4D: ConcatVar var_EC
  loc_B8DE51: LitVarStr var_FC, " y NO puede Eliminarse..."
  loc_B8DE56: ConcatVar var_10C
  loc_B8DE5A: CStrVarTmp
  loc_B8DE5B: FStStr var_88
  loc_B8DE5E: FFreeAd var_A8 = ""
  loc_B8DE65: FFreeVar var_CC = "": var_EC = ""
  loc_B8DE6E: ExitProcCbHresult
  loc_B8DE74: ExitProcCbHresult
End Function

Private Function Proc_107_34_9F22BC() '9F22BC
  'Data Table: 412608
  loc_9F2298: LitStr "Primary"
  loc_9F229B: FLdPr Me
  loc_9F229E: LateIdLdVar var_94 DispID_4 0
  loc_9F22A5: CastAdVar Me
  loc_9F22A9: FStAdFunc var_98
  loc_9F22AC: FLdPr var_98
  loc_9F22B4: FFree1Ad var_98
  loc_9F22B7: FFree1Var var_94 = ""
  loc_9F22BA: ExitProcHresult
End Function

Private Function Proc_107_35_9F2374(arg_C) '9F2374
  'Data Table: 412608
  loc_9F2350: ILdI4 arg_C
  loc_9F2353: FStStrCopy var_88
  loc_9F2356: ILdRf var_88
  loc_9F2359: LitStr "Primary"
  loc_9F235C: EqStr
  loc_9F235E: BranchF loc_9F2373
  loc_9F2361: FLdRfVar var_8C
  loc_9F2364: FLdPr Me
  loc_9F2367: from_stack_1v = clscuentacontable.global_4269456Get()
  loc_9F236C: FLdZeroAd var_8C
  loc_9F236F: IStAdFunc
  loc_9F2373: ExitProcHresult
End Function

Public Function global_4269456Get() '412904
  global_4269456Get = global_4269456
End Function

Public Sub global_4269456Put(Value) '41291E
  global_4269456 = Value
End Sub

Public Sub global_4269456Set(Value) '412938
  global_4269456 = Value
End Sub
