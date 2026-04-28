VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsvencimiento"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0BE94
  'Data Table: 41CBDC
  loc_A0BE58: FLdRfVar var_8C
  loc_A0BE5B: FLdRfVar var_88
  loc_A0BE5E: FLdPr Me
  loc_A0BE61: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A0BE66: FLdPr var_88
  loc_A0BE69:  = Me.RecordCount
  loc_A0BE6E: ILdRf var_8C
  loc_A0BE71: LitI4 0
  loc_A0BE76: GtI4
  loc_A0BE77: FFree1Ad var_88
  loc_A0BE7A: BranchF loc_A0BE93
  loc_A0BE7D: FLdRfVar var_88
  loc_A0BE80: FLdPr Me
  loc_A0BE83: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A0BE88: FLdPr var_88
  loc_A0BE8B: Me.MoveFirst
  loc_A0BE90: FFree1Ad var_88
  loc_A0BE93: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0BCD4
  'Data Table: 41CBDC
  loc_A0BC98: FLdRfVar var_8C
  loc_A0BC9B: FLdRfVar var_88
  loc_A0BC9E: FLdPr Me
  loc_A0BCA1: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A0BCA6: FLdPr var_88
  loc_A0BCA9:  = Me.RecordCount
  loc_A0BCAE: ILdRf var_8C
  loc_A0BCB1: LitI4 0
  loc_A0BCB6: GtI4
  loc_A0BCB7: FFree1Ad var_88
  loc_A0BCBA: BranchF loc_A0BCD3
  loc_A0BCBD: FLdRfVar var_88
  loc_A0BCC0: FLdPr Me
  loc_A0BCC3: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A0BCC8: FLdPr var_88
  loc_A0BCCB: Me.MoveLast
  loc_A0BCD0: FFree1Ad var_88
  loc_A0BCD3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9F950
  'Data Table: 41CBDC
  loc_A9F894: FLdRfVar var_8A
  loc_A9F897: FLdRfVar var_88
  loc_A9F89A: FLdPr Me
  loc_A9F89D: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F8A2: FLdPr var_88
  loc_A9F8A5:  = Me.EOF
  loc_A9F8AA: FLdI2 var_8A
  loc_A9F8AD: NotI4
  loc_A9F8AE: FLdRfVar var_94
  loc_A9F8B1: FLdRfVar var_90
  loc_A9F8B4: FLdPr Me
  loc_A9F8B7: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F8BC: FLdPr var_90
  loc_A9F8BF:  = Me.RecordCount
  loc_A9F8C4: ILdRf var_94
  loc_A9F8C7: LitI4 0
  loc_A9F8CC: GtI4
  loc_A9F8CD: AndI4
  loc_A9F8CE: FFreeAd var_88 = ""
  loc_A9F8D5: BranchF loc_A9F8EE
  loc_A9F8D8: FLdRfVar var_88
  loc_A9F8DB: FLdPr Me
  loc_A9F8DE: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F8E3: FLdPr var_88
  loc_A9F8E6: Me.MoveNext
  loc_A9F8EB: FFree1Ad var_88
  loc_A9F8EE: FLdRfVar var_8A
  loc_A9F8F1: FLdRfVar var_88
  loc_A9F8F4: FLdPr Me
  loc_A9F8F7: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F8FC: FLdPr var_88
  loc_A9F8FF:  = Me.EOF
  loc_A9F904: FLdI2 var_8A
  loc_A9F907: FLdRfVar var_94
  loc_A9F90A: FLdRfVar var_90
  loc_A9F90D: FLdPr Me
  loc_A9F910: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F915: FLdPr var_90
  loc_A9F918:  = Me.RecordCount
  loc_A9F91D: ILdRf var_94
  loc_A9F920: LitI4 0
  loc_A9F925: GtI4
  loc_A9F926: AndI4
  loc_A9F927: FFreeAd var_88 = ""
  loc_A9F92E: BranchF loc_A9F94C
  loc_A9F931: ImpAdCallFPR4 Beep()
  loc_A9F936: FLdRfVar var_88
  loc_A9F939: FLdPr Me
  loc_A9F93C: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F941: FLdPr var_88
  loc_A9F944: Me.MoveLast
  loc_A9F949: FFree1Ad var_88
  loc_A9F94C: ExitProcHresult
  loc_A9F94D: IStDarg MoveNextCA
End Sub

Public Sub MoveSiguiente() '9D8F98
  'Data Table: 41CBDC
  loc_9D8F80: FLdRfVar var_88
  loc_9D8F83: FLdPr Me
  loc_9D8F86: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9D8F8B: FLdPr var_88
  loc_9D8F8E: Me.MoveNext
  loc_9D8F93: FFree1Ad var_88
  loc_9D8F96: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E7B50
  'Data Table: 41CBDC
  loc_9E7B30: LitVar_Missing var_98
  loc_9E7B33: PopAdLdVar
  loc_9E7B34: ILdI2 iValor
  loc_9E7B37: CI4UI1
  loc_9E7B38: FLdRfVar var_88
  loc_9E7B3B: FLdPr Me
  loc_9E7B3E: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9E7B43: FLdPr var_88
  loc_9E7B46: Me.Move from_stack_1, from_stack_2
  loc_9E7B4B: FFree1Ad var_88
  loc_9E7B4E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9FA44
  'Data Table: 41CBDC
  loc_A9F988: FLdRfVar var_8A
  loc_A9F98B: FLdRfVar var_88
  loc_A9F98E: FLdPr Me
  loc_A9F991: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F996: FLdPr var_88
  loc_A9F999:  = Me.BOF
  loc_A9F99E: FLdI2 var_8A
  loc_A9F9A1: NotI4
  loc_A9F9A2: FLdRfVar var_94
  loc_A9F9A5: FLdRfVar var_90
  loc_A9F9A8: FLdPr Me
  loc_A9F9AB: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F9B0: FLdPr var_90
  loc_A9F9B3:  = Me.RecordCount
  loc_A9F9B8: ILdRf var_94
  loc_A9F9BB: LitI4 0
  loc_A9F9C0: GtI4
  loc_A9F9C1: AndI4
  loc_A9F9C2: FFreeAd var_88 = ""
  loc_A9F9C9: BranchF loc_A9F9E2
  loc_A9F9CC: FLdRfVar var_88
  loc_A9F9CF: FLdPr Me
  loc_A9F9D2: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F9D7: FLdPr var_88
  loc_A9F9DA: Me.MovePrevious
  loc_A9F9DF: FFree1Ad var_88
  loc_A9F9E2: FLdRfVar var_8A
  loc_A9F9E5: FLdRfVar var_88
  loc_A9F9E8: FLdPr Me
  loc_A9F9EB: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9F9F0: FLdPr var_88
  loc_A9F9F3:  = Me.BOF
  loc_A9F9F8: FLdI2 var_8A
  loc_A9F9FB: FLdRfVar var_94
  loc_A9F9FE: FLdRfVar var_90
  loc_A9FA01: FLdPr Me
  loc_A9FA04: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9FA09: FLdPr var_90
  loc_A9FA0C:  = Me.RecordCount
  loc_A9FA11: ILdRf var_94
  loc_A9FA14: LitI4 0
  loc_A9FA19: GtI4
  loc_A9FA1A: AndI4
  loc_A9FA1B: FFreeAd var_88 = ""
  loc_A9FA22: BranchF loc_A9FA40
  loc_A9FA25: ImpAdCallFPR4 Beep()
  loc_A9FA2A: FLdRfVar var_88
  loc_A9FA2D: FLdPr Me
  loc_A9FA30: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A9FA35: FLdPr var_88
  loc_A9FA38: Me.MoveFirst
  loc_A9FA3D: FFree1Ad var_88
  loc_A9FA40: ExitProcHresult
End Sub

Public Property Get EOF() '9F9508
  'Data Table: 41CBDC
  loc_9F94E0: FLdRfVar var_8E
  loc_9F94E3: FLdRfVar var_8C
  loc_9F94E6: FLdPr Me
  loc_9F94E9: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F94EE: FLdPr var_8C
  loc_9F94F1:  = Me.EOF
  loc_9F94F6: FLdI2 var_8E
  loc_9F94F9: FStI2 var_86
  loc_9F94FC: FFree1Ad var_8C
  loc_9F94FF: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F9114
  'Data Table: 41CBDC
  loc_9F90EC: FLdRfVar var_8E
  loc_9F90EF: FLdRfVar var_8C
  loc_9F90F2: FLdPr Me
  loc_9F90F5: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F90FA: FLdPr var_8C
  loc_9F90FD:  = Me.BOF
  loc_9F9102: FLdI2 var_8E
  loc_9F9105: FStI2 var_86
  loc_9F9108: FFree1Ad var_8C
  loc_9F910B: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E12CC
  'Data Table: 41CBDC
  loc_9E12B0: ILdI4 sOrden
  loc_9E12B3: FLdRfVar var_88
  loc_9E12B6: FLdPr Me
  loc_9E12B9: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9E12BE: FLdPr var_88
  loc_9E12C1: Me.Sort = from_stack_1
  loc_9E12C6: FFree1Ad var_88
  loc_9E12C9: ExitProcHresult
  loc_9E12CA: FLdZeroAd arg_6400
End Sub

Public Sub Find(sFind) '9F9000
  'Data Table: 41CBDC
  loc_9F8FD8: LitVar_Missing var_98
  loc_9F8FDB: PopAdLdVar
  loc_9F8FDC: LitI4 1
  loc_9F8FE1: LitI4 0
  loc_9F8FE6: ILdI4 sFind
  loc_9F8FE9: FLdRfVar var_88
  loc_9F8FEC: FLdPr Me
  loc_9F8FEF: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F8FF4: FLdPr var_88
  loc_9F8FF7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F8FFC: FFree1Ad var_88
  loc_9F8FFF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F8FA4
  'Data Table: 41CBDC
  loc_9F8F7C: FLdRfVar var_90
  loc_9F8F7F: FLdRfVar var_8C
  loc_9F8F82: FLdPr Me
  loc_9F8F85: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F8F8A: FLdPr var_8C
  loc_9F8F8D:  = Me.AbsolutePosition
  loc_9F8F92: ILdRf var_90
  loc_9F8F95: FStR4 var_88
  loc_9F8F98: FFree1Ad var_8C
  loc_9F8F9B: ExitProcCbHresult
  loc_9F8FA3: AndI4
End Sub

Public Property Get RecordCount() '9F8C0C
  'Data Table: 41CBDC
  loc_9F8BE4: FLdRfVar var_90
  loc_9F8BE7: FLdRfVar var_8C
  loc_9F8BEA: FLdPr Me
  loc_9F8BED: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F8BF2: FLdPr var_8C
  loc_9F8BF5:  = Me.RecordCount
  loc_9F8BFA: ILdRf var_90
  loc_9F8BFD: FStR4 var_88
  loc_9F8C00: FFree1Ad var_8C
  loc_9F8C03: ExitProcCbHresult
  loc_9F8C09: ExitProc
  loc_9F8C0A: LitI2_Byte 1
End Sub

Public Sub AddNew(PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc, FeveVenc, VepeVenc) 'AFEF1C
  'Data Table: 41CBDC
  loc_AFED8C: ILdRf TipoVenc
  loc_AFED8F: FStStrCopy var_88
  loc_AFED92: ILdRf arg_28
  loc_AFED95: FStStrCopy var_8C
  loc_AFED98: FLdRfVar var_90
  loc_AFED9B: ILdRf var_88
  loc_AFED9E: FLdI2 CodiTili
  loc_AFEDA1: FLdI2 CodiOfic
  loc_AFEDA4: FLdI2 BimeLiqu
  loc_AFEDA7: FLdI2 PeriLiqu
  loc_AFEDAA: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AFEDAF: ILdRf var_90
  loc_AFEDB2: LitStr vbNullString
  loc_AFEDB5: NeStr
  loc_AFEDB7: FFree1Str var_90
  loc_AFEDBA: BranchF loc_AFEDC8
  loc_AFEDBD: LitStr "El VENCIMIENTO YA EXISTE. Reintente..."
  loc_AFEDC0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFEDC5: Branch loc_AFEF18
  loc_AFEDC8: FLdRfVar var_8C
  loc_AFEDCB: CVarRef
  loc_AFEDD0: ImpAdCallI2 IsDate()
  loc_AFEDD5: FStI2 var_1D2
  loc_AFEDD8: LitI4 1
  loc_AFEDDD: LitI4 1
  loc_AFEDE2: LitVarStr var_12C, "'yyyy-mm-dd'"
  loc_AFEDE7: FStVarCopyObj var_13C
  loc_AFEDEA: FLdRfVar var_13C
  loc_AFEDED: FLdRfVar var_8C
  loc_AFEDF0: CVarRef
  loc_AFEDF5: ImpAdCallI2 Format$(, )
  loc_AFEDFA: FStStr var_1D8
  loc_AFEDFD: LitStr "INSERT INTO vencimiento (PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc, FeveVenc, VepeVenc) VALUES ("
  loc_AFEE00: FLdI2 PeriLiqu
  loc_AFEE03: CStrUI1
  loc_AFEE05: FStStrNoPop var_90
  loc_AFEE08: ConcatStr
  loc_AFEE09: FStStrNoPop var_94
  loc_AFEE0C: LitStr ","
  loc_AFEE0F: ConcatStr
  loc_AFEE10: FStStrNoPop var_98
  loc_AFEE13: FLdI2 BimeLiqu
  loc_AFEE16: CStrUI1
  loc_AFEE18: FStStrNoPop var_9C
  loc_AFEE1B: ConcatStr
  loc_AFEE1C: FStStrNoPop var_A0
  loc_AFEE1F: LitStr ","
  loc_AFEE22: ConcatStr
  loc_AFEE23: FStStrNoPop var_A4
  loc_AFEE26: FLdI2 CodiOfic
  loc_AFEE29: CStrUI1
  loc_AFEE2B: FStStrNoPop var_A8
  loc_AFEE2E: ConcatStr
  loc_AFEE2F: FStStrNoPop var_AC
  loc_AFEE32: LitStr ","
  loc_AFEE35: ConcatStr
  loc_AFEE36: FStStrNoPop var_B0
  loc_AFEE39: FLdI2 CodiTili
  loc_AFEE3C: CStrUI1
  loc_AFEE3E: FStStrNoPop var_B4
  loc_AFEE41: ConcatStr
  loc_AFEE42: FStStrNoPop var_B8
  loc_AFEE45: LitStr ",'"
  loc_AFEE48: ConcatStr
  loc_AFEE49: FStStrNoPop var_BC
  loc_AFEE4C: ILdRf var_88
  loc_AFEE4F: ConcatStr
  loc_AFEE50: FStStrNoPop var_C0
  loc_AFEE53: LitStr "',"
  loc_AFEE56: ConcatStr
  loc_AFEE57: FStStrNoPop var_F4
  loc_AFEE5A: LitI4 1
  loc_AFEE5F: LitI4 1
  loc_AFEE64: LitVarStr var_E0, "'yyyy-mm-dd'"
  loc_AFEE69: FStVarCopyObj var_F0
  loc_AFEE6C: FLdRfVar var_F0
  loc_AFEE6F: FLdRfVar FeveVenc
  loc_AFEE72: CVarRef
  loc_AFEE77: ImpAdCallI2 Format$(, )
  loc_AFEE7C: FStStrNoPop var_F8
  loc_AFEE7F: ConcatStr
  loc_AFEE80: FStStrNoPop var_FC
  loc_AFEE83: LitStr ","
  loc_AFEE86: ConcatStr
  loc_AFEE87: CVarStr var_19C
  loc_AFEE8A: LitVarStr var_16C, "Null"
  loc_AFEE8F: FStVarCopyObj var_17C
  loc_AFEE92: FLdRfVar var_17C
  loc_AFEE95: FLdZeroAd var_1D8
  loc_AFEE98: CVarStr var_15C
  loc_AFEE9B: FLdI2 var_1D2
  loc_AFEE9E: CVarBoolI2 var_14C
  loc_AFEEA2: FLdRfVar var_18C
  loc_AFEEA5: ImpAdCallFPR4  = IIf(, , )
  loc_AFEEAA: FLdRfVar var_18C
  loc_AFEEAD: ConcatVar var_1AC
  loc_AFEEB1: LitVarStr var_1BC, ");"
  loc_AFEEB6: ConcatVar var_1CC
  loc_AFEEBA: CStrVarVal var_1D0
  loc_AFEEBE: Call EjecutarRs2(from_stack_1v)
  loc_AFEEC3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_1D0 = ""
  loc_AFEEEA: FFreeVar var_F0 = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_19C = "": var_18C = "": var_1AC = ""
  loc_AFEEFF: Call Requery()
  loc_AFEF04: ILdRf var_88
  loc_AFEF07: FLdI2 CodiTili
  loc_AFEF0A: FLdI2 CodiOfic
  loc_AFEF0D: FLdI2 BimeLiqu
  loc_AFEF10: FLdI2 PeriLiqu
  loc_AFEF13: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AFEF18: ExitProcHresult
  loc_AFEF19: StAryMove
End Sub

Public Sub Modificar(PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc, FeveVenc, VepeVenc) 'AFCEA8
  'Data Table: 41CBDC
  loc_AFCD18: ILdRf TipoVenc
  loc_AFCD1B: FStStrCopy var_88
  loc_AFCD1E: ILdRf FeveVenc
  loc_AFCD21: FStStrCopy var_8C
  loc_AFCD24: ILdRf VepeVenc
  loc_AFCD27: FStStrCopy var_90
  loc_AFCD2A: FLdRfVar var_94
  loc_AFCD2D: ILdRf var_88
  loc_AFCD30: FLdI2 CodiTili
  loc_AFCD33: FLdI2 CodiOfic
  loc_AFCD36: FLdI2 BimeLiqu
  loc_AFCD39: FLdI2 PeriLiqu
  loc_AFCD3C: from_stack_6v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AFCD41: ILdRf var_94
  loc_AFCD44: LitStr vbNullString
  loc_AFCD47: EqStr
  loc_AFCD49: FFree1Str var_94
  loc_AFCD4C: BranchF loc_AFCD5A
  loc_AFCD4F: LitStr "EL VENCIMIENTO NO EXISTE. Reintente..."
  loc_AFCD52: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFCD57: Branch loc_AFCE8E
  loc_AFCD5A: FLdRfVar var_90
  loc_AFCD5D: CVarRef
  loc_AFCD62: ImpAdCallI2 IsDate()
  loc_AFCD67: FStI2 var_2DE
  loc_AFCD6A: LitI4 1
  loc_AFCD6F: LitI4 1
  loc_AFCD74: LitVarStr var_F8, "'yyyy-mm-dd'"
  loc_AFCD79: FStVarCopyObj var_108
  loc_AFCD7C: FLdRfVar var_108
  loc_AFCD7F: FLdRfVar var_90
  loc_AFCD82: CVarRef
  loc_AFCD87: ImpAdCallI2 Format$(, )
  loc_AFCD8C: FStStr var_2E4
  loc_AFCD8F: LitStr " UPDATE vencimiento SET FeveVenc = "
  loc_AFCD92: LitI4 1
  loc_AFCD97: LitI4 1
  loc_AFCD9C: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_AFCDA1: FStVarCopyObj var_C4
  loc_AFCDA4: FLdRfVar var_C4
  loc_AFCDA7: FLdRfVar var_8C
  loc_AFCDAA: CVarRef
  loc_AFCDAF: ImpAdCallI2 Format$(, )
  loc_AFCDB4: FStStrNoPop var_94
  loc_AFCDB7: ConcatStr
  loc_AFCDB8: FStStrNoPop var_C8
  loc_AFCDBB: LitStr ", VepeVenc= "
  loc_AFCDBE: ConcatStr
  loc_AFCDBF: CVarStr var_168
  loc_AFCDC2: LitVarStr var_138, "Null"
  loc_AFCDC7: FStVarCopyObj var_148
  loc_AFCDCA: FLdRfVar var_148
  loc_AFCDCD: FLdZeroAd var_2E4
  loc_AFCDD0: CVarStr var_128
  loc_AFCDD3: FLdI2 var_2DE
  loc_AFCDD6: CVarBoolI2 var_118
  loc_AFCDDA: FLdRfVar var_158
  loc_AFCDDD: ImpAdCallFPR4  = IIf(, , )
  loc_AFCDE2: FLdRfVar var_158
  loc_AFCDE5: ConcatVar var_178
  loc_AFCDE9: LitVarStr var_188, " WHERE PeriLiqu = "
  loc_AFCDEE: ConcatVar var_198
  loc_AFCDF2: FLdI2 PeriLiqu
  loc_AFCDF5: CVarI2 var_1A8
  loc_AFCDF8: ConcatVar var_1B8
  loc_AFCDFC: LitVarStr var_1C8, " AND BimeLiqu = "
  loc_AFCE01: ConcatVar var_1D8
  loc_AFCE05: FLdI2 BimeLiqu
  loc_AFCE08: CVarI2 var_1E8
  loc_AFCE0B: ConcatVar var_1F8
  loc_AFCE0F: LitVarStr var_208, " AND CodiOfic = "
  loc_AFCE14: ConcatVar var_218
  loc_AFCE18: FLdI2 CodiOfic
  loc_AFCE1B: CVarI2 var_228
  loc_AFCE1E: ConcatVar var_238
  loc_AFCE22: LitVarStr var_248, " AND CodiTili = "
  loc_AFCE27: ConcatVar var_258
  loc_AFCE2B: FLdI2 CodiTili
  loc_AFCE2E: CVarI2 var_268
  loc_AFCE31: ConcatVar var_278
  loc_AFCE35: LitVarStr var_288, " AND TipoVenc = '"
  loc_AFCE3A: ConcatVar var_298
  loc_AFCE3E: ILdRf var_88
  loc_AFCE41: CVarStr var_2A8
  loc_AFCE44: ConcatVar var_2B8
  loc_AFCE48: LitVarStr var_2C8, "'"
  loc_AFCE4D: ConcatVar var_2D8
  loc_AFCE51: CStrVarVal var_2DC
  loc_AFCE55: Call EjecutarRs2(from_stack_1v)
  loc_AFCE5A: FFreeStr var_94 = "": var_C8 = "": var_2DC = ""
  loc_AFCE65: FFreeVar var_C4 = "": var_108 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = ""
  loc_AFCE8E: Call Requery()
  loc_AFCE93: ILdRf var_88
  loc_AFCE96: FLdI2 CodiTili
  loc_AFCE99: FLdI2 CodiOfic
  loc_AFCE9C: FLdI2 BimeLiqu
  loc_AFCE9F: FLdI2 PeriLiqu
  loc_AFCEA2: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AFCEA7: ExitProcHresult
End Sub

Public Sub Delete(PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc) 'AA179C
  'Data Table: 41CBDC
  loc_AA1714: ILdRf TipoVenc
  loc_AA1717: FStStrCopy var_88
  loc_AA171A: LitStr "DELETE FROM vencimiento WHERE PeriLiqu = "
  loc_AA171D: FLdI2 PeriLiqu
  loc_AA1720: CStrUI1
  loc_AA1722: FStStrNoPop var_8C
  loc_AA1725: ConcatStr
  loc_AA1726: FStStrNoPop var_90
  loc_AA1729: LitStr " AND BimeLiqu = "
  loc_AA172C: ConcatStr
  loc_AA172D: FStStrNoPop var_94
  loc_AA1730: FLdI2 BimeLiqu
  loc_AA1733: CStrUI1
  loc_AA1735: FStStrNoPop var_98
  loc_AA1738: ConcatStr
  loc_AA1739: FStStrNoPop var_9C
  loc_AA173C: LitStr " AND CodiOfic = "
  loc_AA173F: ConcatStr
  loc_AA1740: FStStrNoPop var_A0
  loc_AA1743: FLdI2 CodiOfic
  loc_AA1746: CStrUI1
  loc_AA1748: FStStrNoPop var_A4
  loc_AA174B: ConcatStr
  loc_AA174C: FStStrNoPop var_A8
  loc_AA174F: LitStr " AND CodiTili = "
  loc_AA1752: ConcatStr
  loc_AA1753: FStStrNoPop var_AC
  loc_AA1756: FLdI2 CodiTili
  loc_AA1759: CStrUI1
  loc_AA175B: FStStrNoPop var_B0
  loc_AA175E: ConcatStr
  loc_AA175F: FStStrNoPop var_B4
  loc_AA1762: LitStr " AND TipoVenc = '"
  loc_AA1765: ConcatStr
  loc_AA1766: FStStrNoPop var_B8
  loc_AA1769: ILdRf var_88
  loc_AA176C: ConcatStr
  loc_AA176D: FStStrNoPop var_BC
  loc_AA1770: LitStr "';"
  loc_AA1773: ConcatStr
  loc_AA1774: FStStrNoPop var_C0
  loc_AA1777: Call EjecutarRs2(from_stack_1v)
  loc_AA177C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AA179B: ExitProcHresult
End Sub

Public Sub Requery() 'A02CD4
  'Data Table: 41CBDC
  loc_A02CA4: LitI4 -1
  loc_A02CA9: FLdRfVar var_88
  loc_A02CAC: FLdPr Me
  loc_A02CAF: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A02CB4: FLdPr var_88
  loc_A02CB7: Me.Requery from_stack_1
  loc_A02CBC: FFree1Ad var_88
  loc_A02CBF: LitVarStr var_98, "Primary"
  loc_A02CC4: PopAdLdVar
  loc_A02CC5: FLdPr Me
  loc_A02CC8: LateIdCall
  loc_A02CD0: ExitProcHresult
  loc_A02CD1: ImpAdLdRf MemVar_0
End Sub

Public Sub Update() 'A219E0
  'Data Table: 41CBDC
  loc_A2199C: FLdRfVar var_88
  loc_A2199F: FLdPr Me
  loc_A219A2: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A219A7: FLdZeroAd var_88
  loc_A219AA: FStAdFunc var_8C
  loc_A219AD: LitI4 3
  loc_A219B2: FLdPr var_8C
  loc_A219B5: Me.UpdateBatch
  loc_A219BA: FLdRfVar var_90
  loc_A219BD: FLdPr var_8C
  loc_A219C0:  = Me.EditMode
  loc_A219C5: ILdRf var_90
  loc_A219C8: LitI4 2
  loc_A219CD: EqI4
  loc_A219CE: BranchF loc_A219D6
  loc_A219D1: Call MoveLast()
  loc_A219D6: LitNothing
  loc_A219D8: FStAd var_8C 
  loc_A219DC: ExitProcHresult
  loc_A219DD: FFree1Ad UpdateC1
End Sub

Public Sub Cancel() 'A48604
  'Data Table: 41CBDC
  loc_A485B0: FLdRfVar var_88
  loc_A485B3: FLdPr Me
  loc_A485B6: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A485BB: FLdZeroAd var_88
  loc_A485BE: FStAdFunc var_8C
  loc_A485C1: FLdRfVar var_90
  loc_A485C4: FLdPr var_8C
  loc_A485C7:  = Me.RecordCount
  loc_A485CC: ILdRf var_90
  loc_A485CF: LitI4 0
  loc_A485D4: GtI4
  loc_A485D5: BranchF loc_A485FC
  loc_A485D8: FLdPr var_8C
  loc_A485DB: Me.CancelUpdate
  loc_A485E0: FLdRfVar var_90
  loc_A485E3: FLdPr var_8C
  loc_A485E6:  = Me.EditMode
  loc_A485EB: ILdRf var_90
  loc_A485EE: LitI4 2
  loc_A485F3: EqI4
  loc_A485F4: BranchF loc_A485FC
  loc_A485F7: Call MoveFirst()
  loc_A485FC: LitNothing
  loc_A485FE: FStAd var_8C 
  loc_A48602: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FE4F4
  'Data Table: 41CBDC
  loc_9FE4C8: FLdRfVar var_90
  loc_9FE4CB: FLdRfVar var_8C
  loc_9FE4CE: FLdPr Me
  loc_9FE4D1: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9FE4D6: FLdPr var_8C
  loc_9FE4D9:  = Me.EditMode
  loc_9FE4DE: ILdRf var_90
  loc_9FE4E1: LitI4 0
  loc_9FE4E6: NeI4
  loc_9FE4E7: FStI2 var_86
  loc_9FE4EA: FFree1Ad var_8C
  loc_9FE4ED: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72444
  'Data Table: 41CBDC
  loc_A723D0: ILdRf sSelect
  loc_A723D3: FStStrCopy var_88
  loc_A723D6: LitNothing
  loc_A723D8: CastAd
  loc_A723DB: FStAdFuncNoPop
  loc_A723DE: FLdPr Me
  loc_A723E1: Call clsvencimiento.global_4311908Set(from_stack_1v)
  loc_A723E6: FFree1Ad var_8C
  loc_A723E9: New Recordset
  loc_A723ED: FStAdFuncNoPop
  loc_A723F0: FLdPr Me
  loc_A723F3: Call clsvencimiento.global_4311908Set(from_stack_1v)
  loc_A723F8: FFree1Ad var_8C
  loc_A723FB: LitI4 -1
  loc_A72400: LitI4 3
  loc_A72405: LitI4 3
  loc_A7240A: ImpAdLdI4 MemVar_D9301C
  loc_A7240D: CVarAd
  loc_A72411: PopAdLdVar
  loc_A72412: ILdRf var_88
  loc_A72415: CVarStr var_9C
  loc_A72418: PopAdLdVar
  loc_A72419: FLdRfVar var_8C
  loc_A7241C: FLdPr Me
  loc_A7241F: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A72424: FLdPr var_8C
  loc_A72427: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A7242C: FFree1Ad var_8C
  loc_A7242F: LitVarStr var_9C, "Primary"
  loc_A72434: PopAdLdVar
  loc_A72435: FLdPr Me
  loc_A72438: LateIdCall
  loc_A72440: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A9B0
  'Data Table: 41CBDC
  loc_A5A950: ILdRf sSelect
  loc_A5A953: FStStrCopy var_88
  loc_A5A956: LitNothing
  loc_A5A958: CastAd
  loc_A5A95B: FStAdFuncNoPop
  loc_A5A95E: FLdPr Me
  loc_A5A961: Call clsvencimiento.global_4311908Set(from_stack_1v)
  loc_A5A966: FFree1Ad var_8C
  loc_A5A969: New Recordset
  loc_A5A96D: FStAdFuncNoPop
  loc_A5A970: FLdPr Me
  loc_A5A973: Call clsvencimiento.global_4311908Set(from_stack_1v)
  loc_A5A978: FFree1Ad var_8C
  loc_A5A97B: LitI4 -1
  loc_A5A980: LitI4 3
  loc_A5A985: LitI4 3
  loc_A5A98A: ImpAdLdI4 MemVar_D9301C
  loc_A5A98D: CVarAd
  loc_A5A991: PopAdLdVar
  loc_A5A992: ILdRf var_88
  loc_A5A995: CVarStr var_9C
  loc_A5A998: PopAdLdVar
  loc_A5A999: FLdRfVar var_8C
  loc_A5A99C: FLdPr Me
  loc_A5A99F: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A5A9A4: FLdPr var_8C
  loc_A5A9A7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A9AC: FFree1Ad var_8C
  loc_A5A9AF: ExitProcHresult
End Sub

Public Sub Encontrar(PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc) 'A89888
  'Data Table: 41CBDC
  loc_A897F0: ILdRf TipoVenc
  loc_A897F3: FStStrCopy var_88
  loc_A897F6: LitStr "PeriLiqu = "
  loc_A897F9: FLdI2 PeriLiqu
  loc_A897FC: CStrUI1
  loc_A897FE: FStStrNoPop var_8C
  loc_A89801: ConcatStr
  loc_A89802: PopTmpLdAdStr
  loc_A89806: Call Find(from_stack_1v)
  loc_A8980B: FFreeStr var_8C = ""
  loc_A89812: LitStr "BimeLiqu = "
  loc_A89815: FLdI2 BimeLiqu
  loc_A89818: CStrUI1
  loc_A8981A: FStStrNoPop var_8C
  loc_A8981D: ConcatStr
  loc_A8981E: PopTmpLdAdStr
  loc_A89822: Call Find(from_stack_1v)
  loc_A89827: FFreeStr var_8C = ""
  loc_A8982E: LitStr "CodiOfic = "
  loc_A89831: FLdI2 CodiOfic
  loc_A89834: CStrUI1
  loc_A89836: FStStrNoPop var_8C
  loc_A89839: ConcatStr
  loc_A8983A: PopTmpLdAdStr
  loc_A8983E: Call Find(from_stack_1v)
  loc_A89843: FFreeStr var_8C = ""
  loc_A8984A: LitStr "CodiTili = "
  loc_A8984D: FLdI2 CodiTili
  loc_A89850: CStrUI1
  loc_A89852: FStStrNoPop var_8C
  loc_A89855: ConcatStr
  loc_A89856: PopTmpLdAdStr
  loc_A8985A: Call Find(from_stack_1v)
  loc_A8985F: FFreeStr var_8C = ""
  loc_A89866: LitStr "TipoVenc = '"
  loc_A89869: ILdRf var_88
  loc_A8986C: ConcatStr
  loc_A8986D: FStStrNoPop var_8C
  loc_A89870: LitStr "'"
  loc_A89873: ConcatStr
  loc_A89874: PopTmpLdAdStr
  loc_A89878: Call Find(from_stack_1v)
  loc_A8987D: FFreeStr var_8C = ""
  loc_A89884: ExitProcHresult
  loc_A89885: GtCyR8
  loc_A89886: UMiR8
End Sub

Public Property Get DataSource() 'A08C60
  'Data Table: 41CBDC
  loc_A08C30: ZeroRetVal
  loc_A08C32: FLdRfVar var_90
  loc_A08C35: FLdRfVar var_8C
  loc_A08C38: FLdPr Me
  loc_A08C3B: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A08C40: FLdPr var_8C
  loc_A08C43:  = Me.DataSource
  loc_A08C48: ILdRf var_90
  loc_A08C4B: CastAd
  loc_A08C4E: FStAdFunc var_88
  loc_A08C51: FFreeAd var_8C = ""
  loc_A08C58: ExitProcCbHresult
  loc_A08C5E: GtI4
End Sub

Public Property Get EditMode() '9F767C
  'Data Table: 41CBDC
  loc_9F7654: FLdRfVar var_90
  loc_9F7657: FLdRfVar var_8C
  loc_9F765A: FLdPr Me
  loc_9F765D: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F7662: FLdPr var_8C
  loc_9F7665:  = Me.EditMode
  loc_9F766A: ILdRf var_90
  loc_9F766D: FStR4 var_88
  loc_9F7670: FFree1Ad var_8C
  loc_9F7673: ExitProcCbHresult
  loc_9F767B: Ary1LdCy
End Sub

Public Property Get PeriLiqu() 'A48688
  'Data Table: 41CBDC
  loc_A4863C: FLdRfVar var_B4
  loc_A4863F: FLdRfVar var_A4
  loc_A48642: LitVarStr var_A0, "PeriLiqu"
  loc_A48647: PopAdLdVar
  loc_A48648: FLdRfVar var_90
  loc_A4864B: FLdRfVar var_8C
  loc_A4864E: FLdPr Me
  loc_A48651: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A48656: FLdPr var_8C
  loc_A48659:  = Me.Fields
  loc_A4865E: FLdPr var_90
  loc_A48661: from_stack_2 = Me.Item(from_stack_1)
  loc_A48666: FLdPr var_A4
  loc_A48669:  = Me.Value
  loc_A4866E: FLdRfVar var_B4
  loc_A48671: CI2Var
  loc_A48672: FStI2 var_86
  loc_A48675: FFreeAd var_8C = "": var_90 = ""
  loc_A4867E: FFree1Var var_B4 = ""
  loc_A48681: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A52690
  'Data Table: 41CBDC
  loc_A52640: FLdRfVar var_B4
  loc_A52643: FLdRfVar var_A4
  loc_A52646: LitVarStr var_A0, "BimeLiqu"
  loc_A5264B: PopAdLdVar
  loc_A5264C: FLdRfVar var_90
  loc_A5264F: FLdRfVar var_8C
  loc_A52652: FLdPr Me
  loc_A52655: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A5265A: FLdPr var_8C
  loc_A5265D:  = Me.Fields
  loc_A52662: FLdPr var_90
  loc_A52665: from_stack_2 = Me.Item(from_stack_1)
  loc_A5266A: FLdPr var_A4
  loc_A5266D:  = Me.Value
  loc_A52672: FLdRfVar var_B4
  loc_A52675: CUI1Var
  loc_A52677: FStUI1 var_86
  loc_A5267B: FFreeAd var_8C = "": var_90 = ""
  loc_A52684: FFree1Var var_B4 = ""
  loc_A52687: ExitProcCbHresult
  loc_A5268D: LitStr "?????@?"
End Sub

Public Property Get CodiOfic() 'A52720
  'Data Table: 41CBDC
  loc_A526D0: FLdRfVar var_B4
  loc_A526D3: FLdRfVar var_A4
  loc_A526D6: LitVarStr var_A0, "CodiOfic"
  loc_A526DB: PopAdLdVar
  loc_A526DC: FLdRfVar var_90
  loc_A526DF: FLdRfVar var_8C
  loc_A526E2: FLdPr Me
  loc_A526E5: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A526EA: FLdPr var_8C
  loc_A526ED:  = Me.Fields
  loc_A526F2: FLdPr var_90
  loc_A526F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A526FA: FLdPr var_A4
  loc_A526FD:  = Me.Value
  loc_A52702: FLdRfVar var_B4
  loc_A52705: CUI1Var
  loc_A52707: FStUI1 var_86
  loc_A5270B: FFreeAd var_8C = "": var_90 = ""
  loc_A52714: FFree1Var var_B4 = ""
  loc_A52717: ExitProcCbHresult
  loc_A5271D: MemStR8 global_-27109
End Sub

Public Property Get CodiTili() 'A528D0
  'Data Table: 41CBDC
  loc_A52880: FLdRfVar var_B4
  loc_A52883: FLdRfVar var_A4
  loc_A52886: LitVarStr var_A0, "CodiTili"
  loc_A5288B: PopAdLdVar
  loc_A5288C: FLdRfVar var_90
  loc_A5288F: FLdRfVar var_8C
  loc_A52892: FLdPr Me
  loc_A52895: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A5289A: FLdPr var_8C
  loc_A5289D:  = Me.Fields
  loc_A528A2: FLdPr var_90
  loc_A528A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A528AA: FLdPr var_A4
  loc_A528AD:  = Me.Value
  loc_A528B2: FLdRfVar var_B4
  loc_A528B5: CUI1Var
  loc_A528B7: FStUI1 var_86
  loc_A528BB: FFreeAd var_8C = "": var_90 = ""
  loc_A528C4: FFree1Var var_B4 = ""
  loc_A528C7: ExitProcCbHresult
End Sub

Public Property Get TipoVenc() 'A576D8
  'Data Table: 41CBDC
  loc_A57688: ZeroRetVal
  loc_A5768A: FLdRfVar var_B4
  loc_A5768D: FLdRfVar var_A4
  loc_A57690: LitVarStr var_A0, "TipoVenc"
  loc_A57695: PopAdLdVar
  loc_A57696: FLdRfVar var_90
  loc_A57699: FLdRfVar var_8C
  loc_A5769C: FLdPr Me
  loc_A5769F: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A576A4: FLdPr var_8C
  loc_A576A7:  = Me.Fields
  loc_A576AC: FLdPr var_90
  loc_A576AF: from_stack_2 = Me.Item(from_stack_1)
  loc_A576B4: FLdPr var_A4
  loc_A576B7:  = Me.Value
  loc_A576BC: FLdRfVar var_B4
  loc_A576BF: CStrVarTmp
  loc_A576C0: FStStr var_88
  loc_A576C3: FFreeAd var_8C = "": var_90 = ""
  loc_A576CC: FFree1Var var_B4 = ""
  loc_A576CF: ExitProcCbHresult
  loc_A576D5: FnStrComp3Var
End Sub

Public Property Get FeveVenc() 'A54804
  'Data Table: 41CBDC
  loc_A547B4: ZeroRetVal
  loc_A547B6: FLdRfVar var_B4
  loc_A547B9: FLdRfVar var_A4
  loc_A547BC: LitVarStr var_A0, "FeveVenc"
  loc_A547C1: PopAdLdVar
  loc_A547C2: FLdRfVar var_90
  loc_A547C5: FLdRfVar var_8C
  loc_A547C8: FLdPr Me
  loc_A547CB: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_A547D0: FLdPr var_8C
  loc_A547D3:  = Me.Fields
  loc_A547D8: FLdPr var_90
  loc_A547DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A547E0: FLdPr var_A4
  loc_A547E3:  = Me.Value
  loc_A547E8: FLdRfVar var_B4
  loc_A547EB: CStrVarTmp
  loc_A547EC: FStStr var_88
  loc_A547EF: FFreeAd var_8C = "": var_90 = ""
  loc_A547F8: FFree1Var var_B4 = ""
  loc_A547FB: ExitProcCbHresult
  loc_A54801: StAryMove
End Sub

Public Function ValidaClave(PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc) 'ABAE1C
  'Data Table: 41CBDC
  loc_ABAD60: ILdRf TipoVenc
  loc_ABAD63: FStStrCopy var_8C
  loc_ABAD66: ZeroRetVal
  loc_ABAD68: LitStr "SELECT PeriLiqu, BimeLiqu, CodiOfic, CodiTili, TipoVenc FROM vencimiento WHERE PeriLiqu = "
  loc_ABAD6B: FLdI2 PeriLiqu
  loc_ABAD6E: CStrUI1
  loc_ABAD70: FStStrNoPop var_90
  loc_ABAD73: ConcatStr
  loc_ABAD74: FStStrNoPop ValidaClave
  loc_ABAD77: LitStr " AND BimeLiqu = "
  loc_ABAD7A: ConcatStr
  loc_ABAD7B: FStStrNoPop var_98
  loc_ABAD7E: FLdI2 BimeLiqu
  loc_ABAD81: CStrUI1
  loc_ABAD83: FStStrNoPop var_9C
  loc_ABAD86: ConcatStr
  loc_ABAD87: FStStrNoPop var_A0
  loc_ABAD8A: LitStr " AND CodiOfic = "
  loc_ABAD8D: ConcatStr
  loc_ABAD8E: FStStrNoPop var_A4
  loc_ABAD91: FLdI2 CodiOfic
  loc_ABAD94: CStrUI1
  loc_ABAD96: FStStrNoPop var_A8
  loc_ABAD99: ConcatStr
  loc_ABAD9A: FStStrNoPop var_AC
  loc_ABAD9D: LitStr " AND CodiTili = "
  loc_ABADA0: ConcatStr
  loc_ABADA1: FStStrNoPop var_B0
  loc_ABADA4: FLdI2 CodiTili
  loc_ABADA7: CStrUI1
  loc_ABADA9: FStStrNoPop var_B4
  loc_ABADAC: ConcatStr
  loc_ABADAD: FStStrNoPop var_B8
  loc_ABADB0: LitStr " AND TipoVenc = '"
  loc_ABADB3: ConcatStr
  loc_ABADB4: FStStrNoPop var_BC
  loc_ABADB7: ILdRf var_8C
  loc_ABADBA: ConcatStr
  loc_ABADBB: FStStrNoPop var_C0
  loc_ABADBE: LitStr "'"
  loc_ABADC1: ConcatStr
  loc_ABADC2: FStStrNoPop var_C4
  loc_ABADC5: Call EjecutarRs2(from_stack_1v)
  loc_ABADCA: FFreeStr var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_ABADE9: FLdRfVar var_CC
  loc_ABADEC: FLdRfVar var_C8
  loc_ABADEF: FLdPr Me
  loc_ABADF2: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_ABADF7: FLdPr var_C8
  loc_ABADFA:  = Me.RecordCount
  loc_ABADFF: ILdRf var_CC
  loc_ABAE02: LitI4 0
  loc_ABAE07: GtI4
  loc_ABAE08: FFree1Ad var_C8
  loc_ABAE0B: BranchF loc_ABAE14
  loc_ABAE0E: LitStr "EL TIPO DE VENCIMIENTO YA EXISTE. Reintente..."
  loc_ABAE11: FStStrCopy var_88
  loc_ABAE14: ExitProcCbHresult
End Function

Public Sub sSelect(sFiltro, FiltroCbo) 'A8A948
  'Data Table: 41CBDC
  loc_A8A8BC: ILdRf sFiltro
  loc_A8A8BF: FStStrCopy var_88
  loc_A8A8C2: ILdRf FiltroCbo
  loc_A8A8C5: FStAd var_8C 
  loc_A8A8C9: FLdRfVar var_92
  loc_A8A8CC: FLdPr var_8C
  loc_A8A8CF:  = Me.ListIndex
  loc_A8A8D4: FLdI2 var_92
  loc_A8A8D7: FStI2 var_94
  loc_A8A8DA: FLdI2 var_94
  loc_A8A8DD: LitI2_Byte 0
  loc_A8A8DF: EqI2
  loc_A8A8E0: BranchF loc_A8A8FA
  loc_A8A8E3: LitStr " WHERE vencimiento.PeriLiqu = "
  loc_A8A8E6: ILdRf var_88
  loc_A8A8E9: ConcatStr
  loc_A8A8EA: FStStrNoPop var_98
  loc_A8A8ED: LitStr " ORDER BY vencimiento.PeriLiqu"
  loc_A8A8F0: ConcatStr
  loc_A8A8F1: FStStr var_90
  loc_A8A8F4: FFree1Str var_98
  loc_A8A8F7: Branch loc_A8A917
  loc_A8A8FA: FLdI2 var_94
  loc_A8A8FD: LitI2_Byte 1
  loc_A8A8FF: EqI2
  loc_A8A900: BranchF loc_A8A917
  loc_A8A903: LitStr " WHERE vencimiento.CodiOfic = "
  loc_A8A906: ILdRf var_88
  loc_A8A909: ConcatStr
  loc_A8A90A: FStStrNoPop var_98
  loc_A8A90D: LitStr " ORDER BY vencimiento.CodiOfic"
  loc_A8A910: ConcatStr
  loc_A8A911: FStStr var_90
  loc_A8A914: FFree1Str var_98
  loc_A8A917: LitStr "SELECT PeriLiqu, BimeLiqu, vencimiento.CodiOfic, DetaOfic, vencimiento.CodiTili, DetaTili, TipoVenc, FeveVenc, VepeVenc FROM vencimiento "
  loc_A8A91A: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = vencimiento.CodiOfic "
  loc_A8A91D: ConcatStr
  loc_A8A91E: FStStrNoPop var_98
  loc_A8A921: LitStr " AND tipoliqu.CodiTili = vencimiento.CodiTili  "
  loc_A8A924: ConcatStr
  loc_A8A925: FStStrNoPop var_9C
  loc_A8A928: LitStr " LEFT JOIN oficina ON vencimiento.CodiOfic = oficina.CodiOfic "
  loc_A8A92B: ConcatStr
  loc_A8A92C: FStStrNoPop var_A0
  loc_A8A92F: ILdRf var_90
  loc_A8A932: ConcatStr
  loc_A8A933: FStStrNoPop var_A4
  loc_A8A936: Call RedefineRS(from_stack_1v)
  loc_A8A93B: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_A8A946: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7DEC
  'Data Table: 41CBDC
  loc_9E7DD0: ILdRf pError
  loc_9E7DD3: FStAd var_88 
  loc_9E7DD7: ILdRf pRecordset
  loc_9E7DDA: FStAd var_8C 
  loc_9E7DDE: FLdPr Me
  loc_9E7DE1: RaiseEvent
  loc_9E7DE9: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9FD24
  'Data Table: 41CBDC
  loc_A9FC64: ILdRf pRecordset
  loc_A9FC67: FStAd var_88 
  loc_A9FC6B: ILdRf adReason
  loc_A9FC6E: FStR4 var_90
  loc_A9FC71: ILdRf var_90
  loc_A9FC74: LitI4 1
  loc_A9FC79: EqI4
  loc_A9FC7A: BranchF loc_A9FC80
  loc_A9FC7D: Branch loc_A9FD13
  loc_A9FC80: ILdRf var_90
  loc_A9FC83: LitI4 9
  loc_A9FC88: EqI4
  loc_A9FC89: BranchF loc_A9FC8F
  loc_A9FC8C: Branch loc_A9FD13
  loc_A9FC8F: ILdRf var_90
  loc_A9FC92: LitI4 2
  loc_A9FC97: EqI4
  loc_A9FC98: BranchF loc_A9FC9E
  loc_A9FC9B: Branch loc_A9FD13
  loc_A9FC9E: ILdRf var_90
  loc_A9FCA1: LitI4 &HB
  loc_A9FCA6: EqI4
  loc_A9FCA7: BranchF loc_A9FCAD
  loc_A9FCAA: Branch loc_A9FD13
  loc_A9FCAD: ILdRf var_90
  loc_A9FCB0: LitI4 &HA
  loc_A9FCB5: EqI4
  loc_A9FCB6: BranchF loc_A9FCBC
  loc_A9FCB9: Branch loc_A9FD13
  loc_A9FCBC: ILdRf var_90
  loc_A9FCBF: LitI4 7
  loc_A9FCC4: EqI4
  loc_A9FCC5: BranchF loc_A9FCCB
  loc_A9FCC8: Branch loc_A9FD13
  loc_A9FCCB: ILdRf var_90
  loc_A9FCCE: LitI4 8
  loc_A9FCD3: EqI4
  loc_A9FCD4: BranchF loc_A9FCDA
  loc_A9FCD7: Branch loc_A9FD13
  loc_A9FCDA: ILdRf var_90
  loc_A9FCDD: LitI4 5
  loc_A9FCE2: EqI4
  loc_A9FCE3: BranchF loc_A9FCE9
  loc_A9FCE6: Branch loc_A9FD13
  loc_A9FCE9: ILdRf var_90
  loc_A9FCEC: LitI4 6
  loc_A9FCF1: EqI4
  loc_A9FCF2: BranchF loc_A9FCF8
  loc_A9FCF5: Branch loc_A9FD13
  loc_A9FCF8: ILdRf var_90
  loc_A9FCFB: LitI4 4
  loc_A9FD00: EqI4
  loc_A9FD01: BranchF loc_A9FD07
  loc_A9FD04: Branch loc_A9FD13
  loc_A9FD07: ILdRf var_90
  loc_A9FD0A: LitI4 3
  loc_A9FD0F: EqI4
  loc_A9FD10: BranchF loc_A9FD13
  loc_A9FD13: FLdI2 var_8A
  loc_A9FD16: BranchF loc_A9FD21
  loc_A9FD19: LitI4 4
  loc_A9FD1E: IStI4 adStatus
  loc_A9FD21: ExitProcHresult
  loc_A9FD22: ImpAdLdRf MemVar_0
End Sub

Private Function Proc_48_34_9F7EBC() '9F7EBC
  'Data Table: 41CBDC
  loc_9F7E98: LitStr "Primary"
  loc_9F7E9B: FLdPr Me
  loc_9F7E9E: LateIdLdVar var_94 DispID_4 0
  loc_9F7EA5: CastAdVar Me
  loc_9F7EA9: FStAdFunc var_98
  loc_9F7EAC: FLdPr var_98
  loc_9F7EB4: FFree1Ad var_98
  loc_9F7EB7: FFree1Var var_94 = ""
  loc_9F7EBA: ExitProcHresult
End Function

Private Function Proc_48_35_9F7A6C(arg_C) '9F7A6C
  'Data Table: 41CBDC
  loc_9F7A48: ILdI4 arg_C
  loc_9F7A4B: FStStrCopy var_88
  loc_9F7A4E: ILdRf var_88
  loc_9F7A51: LitStr "Primary"
  loc_9F7A54: EqStr
  loc_9F7A56: BranchF loc_9F7A6B
  loc_9F7A59: FLdRfVar var_8C
  loc_9F7A5C: FLdPr Me
  loc_9F7A5F: from_stack_1v = clsvencimiento.global_4311908Get()
  loc_9F7A64: FLdZeroAd var_8C
  loc_9F7A67: IStAdFunc
  loc_9F7A6B: ExitProcHresult
End Function

Public Function global_4311908Get() '41CF5C
  global_4311908Get = global_4311908
End Function

Public Sub global_4311908Put(Value) '41CF76
  global_4311908 = Value
End Sub

Public Sub global_4311908Set(Value) '41CF90
  global_4311908 = Value
End Sub

Public Function global_4311908Get() '41CFAA
  global_4311908Get = global_4311908
End Function

Public Sub global_4311908Put(Value) '41CFC4
  global_4311908 = Value
End Sub

Public Sub global_4311908Set(Value) '41CFDE
  global_4311908 = Value
End Sub
