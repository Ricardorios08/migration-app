VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsFrente"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0DA24
  'Data Table: 438C70
  loc_A0D9E8: FLdRfVar var_8C
  loc_A0D9EB: FLdRfVar var_88
  loc_A0D9EE: FLdPr Me
  loc_A0D9F1: from_stack_1v = clsFrente.global_4426744Get()
  loc_A0D9F6: FLdPr var_88
  loc_A0D9F9:  = Me.RecordCount
  loc_A0D9FE: ILdRf var_8C
  loc_A0DA01: LitI4 0
  loc_A0DA06: GtI4
  loc_A0DA07: FFree1Ad var_88
  loc_A0DA0A: BranchF loc_A0DA23
  loc_A0DA0D: FLdRfVar var_88
  loc_A0DA10: FLdPr Me
  loc_A0DA13: from_stack_1v = clsFrente.global_4426744Get()
  loc_A0DA18: FLdPr var_88
  loc_A0DA1B: Me.MoveFirst
  loc_A0DA20: FFree1Ad var_88
  loc_A0DA23: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0E274
  'Data Table: 438C70
  loc_A0E238: FLdRfVar var_8C
  loc_A0E23B: FLdRfVar var_88
  loc_A0E23E: FLdPr Me
  loc_A0E241: from_stack_1v = clsFrente.global_4426744Get()
  loc_A0E246: FLdPr var_88
  loc_A0E249:  = Me.RecordCount
  loc_A0E24E: ILdRf var_8C
  loc_A0E251: LitI4 0
  loc_A0E256: GtI4
  loc_A0E257: FFree1Ad var_88
  loc_A0E25A: BranchF loc_A0E273
  loc_A0E25D: FLdRfVar var_88
  loc_A0E260: FLdPr Me
  loc_A0E263: from_stack_1v = clsFrente.global_4426744Get()
  loc_A0E268: FLdPr var_88
  loc_A0E26B: Me.MoveLast
  loc_A0E270: FFree1Ad var_88
  loc_A0E273: ExitProcHresult
End Sub

Public Sub MoveNext() 'A99FB8
  'Data Table: 438C70
  loc_A99EFC: FLdRfVar var_8A
  loc_A99EFF: FLdRfVar var_88
  loc_A99F02: FLdPr Me
  loc_A99F05: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99F0A: FLdPr var_88
  loc_A99F0D:  = Me.EOF
  loc_A99F12: FLdI2 var_8A
  loc_A99F15: NotI4
  loc_A99F16: FLdRfVar var_94
  loc_A99F19: FLdRfVar var_90
  loc_A99F1C: FLdPr Me
  loc_A99F1F: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99F24: FLdPr var_90
  loc_A99F27:  = Me.RecordCount
  loc_A99F2C: ILdRf var_94
  loc_A99F2F: LitI4 0
  loc_A99F34: GtI4
  loc_A99F35: AndI4
  loc_A99F36: FFreeAd var_88 = ""
  loc_A99F3D: BranchF loc_A99F56
  loc_A99F40: FLdRfVar var_88
  loc_A99F43: FLdPr Me
  loc_A99F46: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99F4B: FLdPr var_88
  loc_A99F4E: Me.MoveNext
  loc_A99F53: FFree1Ad var_88
  loc_A99F56: FLdRfVar var_8A
  loc_A99F59: FLdRfVar var_88
  loc_A99F5C: FLdPr Me
  loc_A99F5F: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99F64: FLdPr var_88
  loc_A99F67:  = Me.EOF
  loc_A99F6C: FLdI2 var_8A
  loc_A99F6F: FLdRfVar var_94
  loc_A99F72: FLdRfVar var_90
  loc_A99F75: FLdPr Me
  loc_A99F78: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99F7D: FLdPr var_90
  loc_A99F80:  = Me.RecordCount
  loc_A99F85: ILdRf var_94
  loc_A99F88: LitI4 0
  loc_A99F8D: GtI4
  loc_A99F8E: AndI4
  loc_A99F8F: FFreeAd var_88 = ""
  loc_A99F96: BranchF loc_A99FB4
  loc_A99F99: ImpAdCallFPR4 Beep()
  loc_A99F9E: FLdRfVar var_88
  loc_A99FA1: FLdPr Me
  loc_A99FA4: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99FA9: FLdPr var_88
  loc_A99FAC: Me.MoveLast
  loc_A99FB1: FFree1Ad var_88
  loc_A99FB4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D56E4
  'Data Table: 438C70
  loc_9D56CC: FLdRfVar var_88
  loc_9D56CF: FLdPr Me
  loc_9D56D2: from_stack_1v = clsFrente.global_4426744Get()
  loc_9D56D7: FLdPr var_88
  loc_9D56DA: Me.MoveNext
  loc_9D56DF: FFree1Ad var_88
  loc_9D56E2: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9D1C
  'Data Table: 438C70
  loc_9E9CFC: LitVar_Missing var_98
  loc_9E9CFF: PopAdLdVar
  loc_9E9D00: ILdI2 iValor
  loc_9E9D03: CI4UI1
  loc_9E9D04: FLdRfVar var_88
  loc_9E9D07: FLdPr Me
  loc_9E9D0A: from_stack_1v = clsFrente.global_4426744Get()
  loc_9E9D0F: FLdPr var_88
  loc_9E9D12: Me.Move from_stack_1, from_stack_2
  loc_9E9D17: FFree1Ad var_88
  loc_9E9D1A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A99448
  'Data Table: 438C70
  loc_A9938C: FLdRfVar var_8A
  loc_A9938F: FLdRfVar var_88
  loc_A99392: FLdPr Me
  loc_A99395: from_stack_1v = clsFrente.global_4426744Get()
  loc_A9939A: FLdPr var_88
  loc_A9939D:  = Me.BOF
  loc_A993A2: FLdI2 var_8A
  loc_A993A5: NotI4
  loc_A993A6: FLdRfVar var_94
  loc_A993A9: FLdRfVar var_90
  loc_A993AC: FLdPr Me
  loc_A993AF: from_stack_1v = clsFrente.global_4426744Get()
  loc_A993B4: FLdPr var_90
  loc_A993B7:  = Me.RecordCount
  loc_A993BC: ILdRf var_94
  loc_A993BF: LitI4 0
  loc_A993C4: GtI4
  loc_A993C5: AndI4
  loc_A993C6: FFreeAd var_88 = ""
  loc_A993CD: BranchF loc_A993E6
  loc_A993D0: FLdRfVar var_88
  loc_A993D3: FLdPr Me
  loc_A993D6: from_stack_1v = clsFrente.global_4426744Get()
  loc_A993DB: FLdPr var_88
  loc_A993DE: Me.MovePrevious
  loc_A993E3: FFree1Ad var_88
  loc_A993E6: FLdRfVar var_8A
  loc_A993E9: FLdRfVar var_88
  loc_A993EC: FLdPr Me
  loc_A993EF: from_stack_1v = clsFrente.global_4426744Get()
  loc_A993F4: FLdPr var_88
  loc_A993F7:  = Me.BOF
  loc_A993FC: FLdI2 var_8A
  loc_A993FF: FLdRfVar var_94
  loc_A99402: FLdRfVar var_90
  loc_A99405: FLdPr Me
  loc_A99408: from_stack_1v = clsFrente.global_4426744Get()
  loc_A9940D: FLdPr var_90
  loc_A99410:  = Me.RecordCount
  loc_A99415: ILdRf var_94
  loc_A99418: LitI4 0
  loc_A9941D: GtI4
  loc_A9941E: AndI4
  loc_A9941F: FFreeAd var_88 = ""
  loc_A99426: BranchF loc_A99444
  loc_A99429: ImpAdCallFPR4 Beep()
  loc_A9942E: FLdRfVar var_88
  loc_A99431: FLdPr Me
  loc_A99434: from_stack_1v = clsFrente.global_4426744Get()
  loc_A99439: FLdPr var_88
  loc_A9943C: Me.MoveFirst
  loc_A99441: FFree1Ad var_88
  loc_A99444: ExitProcHresult
  loc_A99445: Ary1StI4
  loc_A99446: Ary1StI2
End Sub

Public Property Get EOF() '9FAA98
  'Data Table: 438C70
  loc_9FAA70: FLdRfVar var_8E
  loc_9FAA73: FLdRfVar var_8C
  loc_9FAA76: FLdPr Me
  loc_9FAA79: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FAA7E: FLdPr var_8C
  loc_9FAA81:  = Me.EOF
  loc_9FAA86: FLdI2 var_8E
  loc_9FAA89: FStI2 var_86
  loc_9FAA8C: FFree1Ad var_8C
  loc_9FAA8F: ExitProcCbHresult
  loc_9FAA97: CStrVarTmp
End Sub

Public Property Get BOF() '9FAA3C
  'Data Table: 438C70
  loc_9FAA14: FLdRfVar var_8E
  loc_9FAA17: FLdRfVar var_8C
  loc_9FAA1A: FLdPr Me
  loc_9FAA1D: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FAA22: FLdPr var_8C
  loc_9FAA25:  = Me.BOF
  loc_9FAA2A: FLdI2 var_8E
  loc_9FAA2D: FStI2 var_86
  loc_9FAA30: FFree1Ad var_8C
  loc_9FAA33: ExitProcCbHresult
  loc_9FAA3B: CStrVarTmp
End Sub

Public Sub Sort(sOrden) '9E1E0C
  'Data Table: 438C70
  loc_9E1DF0: ILdI4 sOrden
  loc_9E1DF3: FLdRfVar var_88
  loc_9E1DF6: FLdPr Me
  loc_9E1DF9: from_stack_1v = clsFrente.global_4426744Get()
  loc_9E1DFE: FLdPr var_88
  loc_9E1E01: Me.Sort = from_stack_1
  loc_9E1E06: FFree1Ad var_88
  loc_9E1E09: ExitProcHresult
  loc_9E1E0A: SubCy
End Sub

Public Sub Find(sFind) '9F8258
  'Data Table: 438C70
  loc_9F8230: LitVar_Missing var_98
  loc_9F8233: PopAdLdVar
  loc_9F8234: LitI4 1
  loc_9F8239: LitI4 0
  loc_9F823E: ILdI4 sFind
  loc_9F8241: FLdRfVar var_88
  loc_9F8244: FLdPr Me
  loc_9F8247: from_stack_1v = clsFrente.global_4426744Get()
  loc_9F824C: FLdPr var_88
  loc_9F824F: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F8254: FFree1Ad var_88
  loc_9F8257: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FA928
  'Data Table: 438C70
  loc_9FA900: FLdRfVar var_90
  loc_9FA903: FLdRfVar var_8C
  loc_9FA906: FLdPr Me
  loc_9FA909: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FA90E: FLdPr var_8C
  loc_9FA911:  = Me.AbsolutePosition
  loc_9FA916: ILdRf var_90
  loc_9FA919: FStR4 var_88
  loc_9FA91C: FFree1Ad var_8C
  loc_9FA91F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9FA8CC
  'Data Table: 438C70
  loc_9FA8A4: FLdRfVar var_90
  loc_9FA8A7: FLdRfVar var_8C
  loc_9FA8AA: FLdPr Me
  loc_9FA8AD: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FA8B2: FLdPr var_8C
  loc_9FA8B5:  = Me.RecordCount
  loc_9FA8BA: ILdRf var_90
  loc_9FA8BD: FStR4 var_88
  loc_9FA8C0: FFree1Ad var_8C
  loc_9FA8C3: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiInmu, TipoFrin, CodiCall, NucaFrin, MetrFrin) 'AE2CBC
  'Data Table: 438C70
  loc_AE2B9C: ILdRf TipoFrin
  loc_AE2B9F: FStStrCopy var_88
  loc_AE2BA2: FLdRfVar var_8C
  loc_AE2BA5: ILdRf CodiInmu
  loc_AE2BA8: from_stack_2v = NuevoRegistro(from_stack_1v)
  loc_AE2BAD: FLdUI1
  loc_AE2BB1: FStUI1 var_8A
  loc_AE2BB5: FLdRfVar var_90
  loc_AE2BB8: FLdUI1
  loc_AE2BBC: ILdRf CodiInmu
  loc_AE2BBF: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AE2BC4: ILdRf var_90
  loc_AE2BC7: LitStr vbNullString
  loc_AE2BCA: NeStr
  loc_AE2BCC: FFree1Str var_90
  loc_AE2BCF: BranchF loc_AE2BDD
  loc_AE2BD2: LitStr "El FRENTE Ya EXISTE. Reintente..."
  loc_AE2BD5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE2BDA: Branch loc_AE2CBA
  loc_AE2BDD: LitStr "INSERT INTO freninmu (CodiInmu, NumeFrin, TipoFrin, Codicall, Nucafrin, Metrfrin, CodiUsua) VALUES ("
  loc_AE2BE0: ILdRf CodiInmu
  loc_AE2BE3: CStrI4
  loc_AE2BE5: FStStrNoPop var_90
  loc_AE2BE8: ConcatStr
  loc_AE2BE9: FStStrNoPop var_94
  loc_AE2BEC: LitStr ","
  loc_AE2BEF: ConcatStr
  loc_AE2BF0: FStStrNoPop var_98
  loc_AE2BF3: FLdUI1
  loc_AE2BF7: CStrI2
  loc_AE2BF9: FStStrNoPop var_9C
  loc_AE2BFC: ConcatStr
  loc_AE2BFD: FStStrNoPop var_A0
  loc_AE2C00: LitStr ",'"
  loc_AE2C03: ConcatStr
  loc_AE2C04: FStStrNoPop var_A4
  loc_AE2C07: ILdRf var_88
  loc_AE2C0A: ConcatStr
  loc_AE2C0B: FStStrNoPop var_A8
  loc_AE2C0E: LitStr "',"
  loc_AE2C11: ConcatStr
  loc_AE2C12: FStStrNoPop var_AC
  loc_AE2C15: FLdI2 CodiCall
  loc_AE2C18: CStrUI1
  loc_AE2C1A: FStStrNoPop var_B0
  loc_AE2C1D: ConcatStr
  loc_AE2C1E: FStStrNoPop var_B4
  loc_AE2C21: LitStr ","
  loc_AE2C24: ConcatStr
  loc_AE2C25: FStStrNoPop var_B8
  loc_AE2C28: ILdRf NucaFrin
  loc_AE2C2B: CStrI4
  loc_AE2C2D: FStStrNoPop var_BC
  loc_AE2C30: ConcatStr
  loc_AE2C31: FStStrNoPop var_C0
  loc_AE2C34: LitStr ","
  loc_AE2C37: ConcatStr
  loc_AE2C38: FStStrNoPop var_C8
  loc_AE2C3B: LitI4 0
  loc_AE2C40: LitI4 -1
  loc_AE2C45: LitI4 1
  loc_AE2C4A: LitStr "."
  loc_AE2C4D: LitStr ","
  loc_AE2C50: FLdFPR8 MetrFrin
  loc_AE2C53: CStrR8
  loc_AE2C55: FStStrNoPop var_C4
  loc_AE2C58: ImpAdCallI2 Replace(, , , , , )
  loc_AE2C5D: FStStrNoPop var_CC
  loc_AE2C60: ConcatStr
  loc_AE2C61: FStStrNoPop var_D0
  loc_AE2C64: LitStr ",'"
  loc_AE2C67: ConcatStr
  loc_AE2C68: FStStrNoPop var_D4
  loc_AE2C6B: ImpAdLdI4 MemVar_D9302C
  loc_AE2C6E: ConcatStr
  loc_AE2C6F: FStStrNoPop var_D8
  loc_AE2C72: LitStr "');"
  loc_AE2C75: ConcatStr
  loc_AE2C76: FStStrNoPop var_DC
  loc_AE2C79: Call EjecutarRs2(from_stack_1v)
  loc_AE2C7E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_AE2CA9: Call Requery()
  loc_AE2CAE: FLdUI1
  loc_AE2CB2: ILdRf CodiInmu
  loc_AE2CB5: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AE2CBA: ExitProcHresult
End Sub

Public Sub Modificar(CodiInmu, NumeFrin, TipoFrin, CodiCall, NucaFrin, MetrFrin) 'AEC3DC
  'Data Table: 438C70
  loc_AEC288: ILdRf TipoFrin
  loc_AEC28B: FStStrCopy var_88
  loc_AEC28E: FLdRfVar var_8C
  loc_AEC291: FLdUI1
  loc_AEC295: ILdRf CodiInmu
  loc_AEC298: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AEC29D: ILdRf var_8C
  loc_AEC2A0: LitStr vbNullString
  loc_AEC2A3: EqStr
  loc_AEC2A5: FFree1Str var_8C
  loc_AEC2A8: BranchF loc_AEC2B6
  loc_AEC2AB: LitStr "El FRENTE NO EXISTE. Reintente..."
  loc_AEC2AE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC2B3: Branch loc_AEC3C9
  loc_AEC2B6: LitStr "UPDATE freninmu SET TipoFrin = '"
  loc_AEC2B9: ILdRf var_88
  loc_AEC2BC: ConcatStr
  loc_AEC2BD: FStStrNoPop var_8C
  loc_AEC2C0: LitStr "', CodiCall = "
  loc_AEC2C3: ConcatStr
  loc_AEC2C4: FStStrNoPop var_90
  loc_AEC2C7: FLdI2 CodiCall
  loc_AEC2CA: CStrUI1
  loc_AEC2CC: FStStrNoPop var_94
  loc_AEC2CF: ConcatStr
  loc_AEC2D0: FStStrNoPop var_98
  loc_AEC2D3: LitStr ", NucaFrin = "
  loc_AEC2D6: ConcatStr
  loc_AEC2D7: FStStrNoPop var_9C
  loc_AEC2DA: ILdRf NucaFrin
  loc_AEC2DD: CStrI4
  loc_AEC2DF: FStStrNoPop var_A0
  loc_AEC2E2: ConcatStr
  loc_AEC2E3: FStStrNoPop var_A4
  loc_AEC2E6: LitStr ", MetrFrin = "
  loc_AEC2E9: ConcatStr
  loc_AEC2EA: FStStrNoPop var_AC
  loc_AEC2ED: LitI4 0
  loc_AEC2F2: LitI4 -1
  loc_AEC2F7: LitI4 1
  loc_AEC2FC: LitStr "."
  loc_AEC2FF: LitStr ","
  loc_AEC302: FLdFPR8 MetrFrin
  loc_AEC305: CStrR8
  loc_AEC307: FStStrNoPop var_A8
  loc_AEC30A: ImpAdCallI2 Replace(, , , , , )
  loc_AEC30F: FStStrNoPop var_B0
  loc_AEC312: ConcatStr
  loc_AEC313: FStStrNoPop var_B4
  loc_AEC316: LitStr " WHERE CodiInmu = "
  loc_AEC319: ConcatStr
  loc_AEC31A: FStStrNoPop var_B8
  loc_AEC31D: ILdRf CodiInmu
  loc_AEC320: CStrI4
  loc_AEC322: FStStrNoPop var_BC
  loc_AEC325: ConcatStr
  loc_AEC326: FStStrNoPop var_C0
  loc_AEC329: LitStr " AND  NumeFrin = "
  loc_AEC32C: ConcatStr
  loc_AEC32D: FStStrNoPop var_C4
  loc_AEC330: FLdUI1
  loc_AEC334: CStrI2
  loc_AEC336: FStStrNoPop var_C8
  loc_AEC339: ConcatStr
  loc_AEC33A: FStStrNoPop var_CC
  loc_AEC33D: LitStr ";"
  loc_AEC340: ConcatStr
  loc_AEC341: FStStrNoPop var_D0
  loc_AEC344: Call EjecutarRs2(from_stack_1v)
  loc_AEC349: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AEC370: FLdUI1
  loc_AEC374: CI2UI1
  loc_AEC376: LitI2_Byte 1
  loc_AEC378: EqI2
  loc_AEC379: BranchF loc_AEC3C9
  loc_AEC37C: LitStr "UPDATE inmueble SET CodiCall = "
  loc_AEC37F: FLdI2 CodiCall
  loc_AEC382: CStrUI1
  loc_AEC384: FStStrNoPop var_8C
  loc_AEC387: ConcatStr
  loc_AEC388: FStStrNoPop var_90
  loc_AEC38B: LitStr ", NucaInmu = "
  loc_AEC38E: ConcatStr
  loc_AEC38F: FStStrNoPop var_94
  loc_AEC392: ILdRf NucaFrin
  loc_AEC395: CStrI4
  loc_AEC397: FStStrNoPop var_98
  loc_AEC39A: ConcatStr
  loc_AEC39B: FStStrNoPop var_9C
  loc_AEC39E: LitStr " WHERE CodiInmu = "
  loc_AEC3A1: ConcatStr
  loc_AEC3A2: FStStrNoPop var_A0
  loc_AEC3A5: ILdRf CodiInmu
  loc_AEC3A8: CStrI4
  loc_AEC3AA: FStStrNoPop var_A4
  loc_AEC3AD: ConcatStr
  loc_AEC3AE: FStStrNoPop var_A8
  loc_AEC3B1: Call EjecutarRs2(from_stack_1v)
  loc_AEC3B6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AEC3C9: Call Requery()
  loc_AEC3CE: FLdUI1
  loc_AEC3D2: ILdRf CodiInmu
  loc_AEC3D5: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AEC3DA: ExitProcHresult
End Sub

Public Sub ModificarTunuyan(CodiInmu, NumeFrin, TipoFrin, CodiCall, NucaFrin, MetrFrin) 'AEAC78
  'Data Table: 438C70
  loc_AEAB2C: ILdRf TipoFrin
  loc_AEAB2F: FStStrCopy var_88
  loc_AEAB32: ILdRf NucaFrin
  loc_AEAB35: FStStrCopy var_8C
  loc_AEAB38: FLdRfVar var_90
  loc_AEAB3B: FLdUI1
  loc_AEAB3F: ILdRf CodiInmu
  loc_AEAB42: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AEAB47: ILdRf var_90
  loc_AEAB4A: LitStr vbNullString
  loc_AEAB4D: EqStr
  loc_AEAB4F: FFree1Str var_90
  loc_AEAB52: BranchF loc_AEAB60
  loc_AEAB55: LitStr "El FRENTE NO EXISTE. Reintente..."
  loc_AEAB58: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEAB5D: Branch loc_AEAC65
  loc_AEAB60: LitStr "UPDATE freninmu SET TipoFrin = '"
  loc_AEAB63: ILdRf var_88
  loc_AEAB66: ConcatStr
  loc_AEAB67: FStStrNoPop var_90
  loc_AEAB6A: LitStr "', CodiCall = "
  loc_AEAB6D: ConcatStr
  loc_AEAB6E: FStStrNoPop var_94
  loc_AEAB71: FLdI2 CodiCall
  loc_AEAB74: CStrUI1
  loc_AEAB76: FStStrNoPop var_98
  loc_AEAB79: ConcatStr
  loc_AEAB7A: FStStrNoPop var_9C
  loc_AEAB7D: LitStr ", NucaFrin = '"
  loc_AEAB80: ConcatStr
  loc_AEAB81: FStStrNoPop var_A0
  loc_AEAB84: ILdRf var_8C
  loc_AEAB87: ConcatStr
  loc_AEAB88: FStStrNoPop var_A4
  loc_AEAB8B: LitStr "', MetrFrin = "
  loc_AEAB8E: ConcatStr
  loc_AEAB8F: FStStrNoPop var_AC
  loc_AEAB92: LitI4 0
  loc_AEAB97: LitI4 -1
  loc_AEAB9C: LitI4 1
  loc_AEABA1: LitStr "."
  loc_AEABA4: LitStr ","
  loc_AEABA7: FLdFPR8 MetrFrin
  loc_AEABAA: CStrR8
  loc_AEABAC: FStStrNoPop var_A8
  loc_AEABAF: ImpAdCallI2 Replace(, , , , , )
  loc_AEABB4: FStStrNoPop var_B0
  loc_AEABB7: ConcatStr
  loc_AEABB8: FStStrNoPop var_B4
  loc_AEABBB: LitStr " WHERE CodiInmu = "
  loc_AEABBE: ConcatStr
  loc_AEABBF: FStStrNoPop var_B8
  loc_AEABC2: ILdRf CodiInmu
  loc_AEABC5: CStrI4
  loc_AEABC7: FStStrNoPop var_BC
  loc_AEABCA: ConcatStr
  loc_AEABCB: FStStrNoPop var_C0
  loc_AEABCE: LitStr " AND  NumeFrin = "
  loc_AEABD1: ConcatStr
  loc_AEABD2: FStStrNoPop var_C4
  loc_AEABD5: FLdUI1
  loc_AEABD9: CStrI2
  loc_AEABDB: FStStrNoPop var_C8
  loc_AEABDE: ConcatStr
  loc_AEABDF: FStStrNoPop var_CC
  loc_AEABE2: LitStr ";"
  loc_AEABE5: ConcatStr
  loc_AEABE6: FStStrNoPop var_D0
  loc_AEABE9: Call EjecutarRs2(from_stack_1v)
  loc_AEABEE: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AEAC13: FLdUI1
  loc_AEAC17: CI2UI1
  loc_AEAC19: LitI2_Byte 1
  loc_AEAC1B: EqI2
  loc_AEAC1C: BranchF loc_AEAC65
  loc_AEAC1F: LitStr "UPDATE inmueble SET CodiCall = "
  loc_AEAC22: FLdI2 CodiCall
  loc_AEAC25: CStrUI1
  loc_AEAC27: FStStrNoPop var_90
  loc_AEAC2A: ConcatStr
  loc_AEAC2B: FStStrNoPop var_94
  loc_AEAC2E: LitStr ", NucaInmu = '"
  loc_AEAC31: ConcatStr
  loc_AEAC32: FStStrNoPop var_98
  loc_AEAC35: ILdRf var_8C
  loc_AEAC38: ConcatStr
  loc_AEAC39: FStStrNoPop var_9C
  loc_AEAC3C: LitStr "' WHERE CodiInmu = "
  loc_AEAC3F: ConcatStr
  loc_AEAC40: FStStrNoPop var_A0
  loc_AEAC43: ILdRf CodiInmu
  loc_AEAC46: CStrI4
  loc_AEAC48: FStStrNoPop var_A4
  loc_AEAC4B: ConcatStr
  loc_AEAC4C: FStStrNoPop var_A8
  loc_AEAC4F: Call EjecutarRs2(from_stack_1v)
  loc_AEAC54: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AEAC65: Call Requery()
  loc_AEAC6A: FLdUI1
  loc_AEAC6E: ILdRf CodiInmu
  loc_AEAC71: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AEAC76: ExitProcHresult
End Sub

Public Sub Delete(lCodiInmu, iNumeFrin) 'A76CB8
  'Data Table: 438C70
  loc_A76C4C: FLdRfVar var_88
  loc_A76C4F: FLdI2 iNumeFrin
  loc_A76C52: CUI1I2
  loc_A76C54: ILdRf lCodiInmu
  loc_A76C57: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A76C5C: ILdRf var_88
  loc_A76C5F: LitStr vbNullString
  loc_A76C62: EqStr
  loc_A76C64: FFree1Str var_88
  loc_A76C67: BranchF loc_A76C75
  loc_A76C6A: LitStr "El FRENTE NO EXISTE. Reintente..."
  loc_A76C6D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A76C72: Branch loc_A76CB2
  loc_A76C75: LitStr "DELETE FROM freninmu WHERE CodiInmu = "
  loc_A76C78: ILdRf lCodiInmu
  loc_A76C7B: CStrI4
  loc_A76C7D: FStStrNoPop var_88
  loc_A76C80: ConcatStr
  loc_A76C81: FStStrNoPop var_8C
  loc_A76C84: LitStr " AND  NumeFrin = "
  loc_A76C87: ConcatStr
  loc_A76C88: FStStrNoPop var_90
  loc_A76C8B: FLdI2 iNumeFrin
  loc_A76C8E: CStrUI1
  loc_A76C90: FStStrNoPop var_94
  loc_A76C93: ConcatStr
  loc_A76C94: FStStrNoPop var_98
  loc_A76C97: LitStr ";"
  loc_A76C9A: ConcatStr
  loc_A76C9B: FStStrNoPop var_9C
  loc_A76C9E: Call EjecutarRs2(from_stack_1v)
  loc_A76CA3: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A76CB2: Call Requery()
  loc_A76CB7: ExitProcHresult
End Sub

Public Sub Requery() '9FEB98
  'Data Table: 438C70
  loc_9FEB68: LitI4 -1
  loc_9FEB6D: FLdRfVar var_88
  loc_9FEB70: FLdPr Me
  loc_9FEB73: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FEB78: FLdPr var_88
  loc_9FEB7B: Me.Requery from_stack_1
  loc_9FEB80: FFree1Ad var_88
  loc_9FEB83: LitVarStr var_98, "Primary"
  loc_9FEB88: PopAdLdVar
  loc_9FEB89: FLdPr Me
  loc_9FEB8C: LateIdCall
  loc_9FEB94: ExitProcHresult
End Sub

Public Sub Update() 'A2240C
  'Data Table: 438C70
  loc_A223C8: FLdRfVar var_88
  loc_A223CB: FLdPr Me
  loc_A223CE: from_stack_1v = clsFrente.global_4426744Get()
  loc_A223D3: FLdZeroAd var_88
  loc_A223D6: FStAdFunc var_8C
  loc_A223D9: LitI4 3
  loc_A223DE: FLdPr var_8C
  loc_A223E1: Me.UpdateBatch
  loc_A223E6: FLdRfVar var_90
  loc_A223E9: FLdPr var_8C
  loc_A223EC:  = Me.EditMode
  loc_A223F1: ILdRf var_90
  loc_A223F4: LitI4 2
  loc_A223F9: EqI4
  loc_A223FA: BranchF loc_A22402
  loc_A223FD: Call MoveLast()
  loc_A22402: LitNothing
  loc_A22404: FStAd var_8C 
  loc_A22408: ExitProcHresult
End Sub

Public Sub Cancel() 'A4A878
  'Data Table: 438C70
  loc_A4A824: FLdRfVar var_88
  loc_A4A827: FLdPr Me
  loc_A4A82A: from_stack_1v = clsFrente.global_4426744Get()
  loc_A4A82F: FLdZeroAd var_88
  loc_A4A832: FStAdFunc var_8C
  loc_A4A835: FLdRfVar var_90
  loc_A4A838: FLdPr var_8C
  loc_A4A83B:  = Me.RecordCount
  loc_A4A840: ILdRf var_90
  loc_A4A843: LitI4 0
  loc_A4A848: GtI4
  loc_A4A849: BranchF loc_A4A870
  loc_A4A84C: FLdPr var_8C
  loc_A4A84F: Me.CancelUpdate
  loc_A4A854: FLdRfVar var_90
  loc_A4A857: FLdPr var_8C
  loc_A4A85A:  = Me.EditMode
  loc_A4A85F: ILdRf var_90
  loc_A4A862: LitI4 2
  loc_A4A867: EqI4
  loc_A4A868: BranchF loc_A4A870
  loc_A4A86B: Call MoveFirst()
  loc_A4A870: LitNothing
  loc_A4A872: FStAd var_8C 
  loc_A4A876: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD2F4
  'Data Table: 438C70
  loc_9FD2C8: FLdRfVar var_90
  loc_9FD2CB: FLdRfVar var_8C
  loc_9FD2CE: FLdPr Me
  loc_9FD2D1: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FD2D6: FLdPr var_8C
  loc_9FD2D9:  = Me.EditMode
  loc_9FD2DE: ILdRf var_90
  loc_9FD2E1: LitI4 0
  loc_9FD2E6: NeI4
  loc_9FD2E7: FStI2 var_86
  loc_9FD2EA: FFree1Ad var_8C
  loc_9FD2ED: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A71F90
  'Data Table: 438C70
  loc_A71F1C: ILdRf sSelect
  loc_A71F1F: FStStrCopy var_88
  loc_A71F22: LitNothing
  loc_A71F24: CastAd
  loc_A71F27: FStAdFuncNoPop
  loc_A71F2A: FLdPr Me
  loc_A71F2D: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_A71F32: FFree1Ad var_8C
  loc_A71F35: New Recordset
  loc_A71F39: FStAdFuncNoPop
  loc_A71F3C: FLdPr Me
  loc_A71F3F: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_A71F44: FFree1Ad var_8C
  loc_A71F47: LitI4 -1
  loc_A71F4C: LitI4 3
  loc_A71F51: LitI4 3
  loc_A71F56: ImpAdLdI4 MemVar_D9301C
  loc_A71F59: CVarAd
  loc_A71F5D: PopAdLdVar
  loc_A71F5E: ILdRf var_88
  loc_A71F61: CVarStr var_9C
  loc_A71F64: PopAdLdVar
  loc_A71F65: FLdRfVar var_8C
  loc_A71F68: FLdPr Me
  loc_A71F6B: from_stack_1v = clsFrente.global_4426744Get()
  loc_A71F70: FLdPr var_8C
  loc_A71F73: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A71F78: FFree1Ad var_8C
  loc_A71F7B: LitVarStr var_9C, "Primary"
  loc_A71F80: PopAdLdVar
  loc_A71F81: FLdPr Me
  loc_A71F84: LateIdCall
  loc_A71F8C: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5AC10
  'Data Table: 438C70
  loc_A5ABB0: ILdRf sSelect
  loc_A5ABB3: FStStrCopy var_88
  loc_A5ABB6: LitNothing
  loc_A5ABB8: CastAd
  loc_A5ABBB: FStAdFuncNoPop
  loc_A5ABBE: FLdPr Me
  loc_A5ABC1: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_A5ABC6: FFree1Ad var_8C
  loc_A5ABC9: New Recordset
  loc_A5ABCD: FStAdFuncNoPop
  loc_A5ABD0: FLdPr Me
  loc_A5ABD3: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_A5ABD8: FFree1Ad var_8C
  loc_A5ABDB: LitI4 -1
  loc_A5ABE0: LitI4 3
  loc_A5ABE5: LitI4 3
  loc_A5ABEA: ImpAdLdI4 MemVar_D9301C
  loc_A5ABED: CVarAd
  loc_A5ABF1: PopAdLdVar
  loc_A5ABF2: ILdRf var_88
  loc_A5ABF5: CVarStr var_9C
  loc_A5ABF8: PopAdLdVar
  loc_A5ABF9: FLdRfVar var_8C
  loc_A5ABFC: FLdPr Me
  loc_A5ABFF: from_stack_1v = clsFrente.global_4426744Get()
  loc_A5AC04: FLdPr var_8C
  loc_A5AC07: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5AC0C: FFree1Ad var_8C
  loc_A5AC0F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiInmu, NumeFrin) 'A10610
  'Data Table: 438C70
  loc_A105D4: LitStr "CodiInmu = "
  loc_A105D7: ILdRf CodiInmu
  loc_A105DA: CStrI4
  loc_A105DC: FStStrNoPop var_88
  loc_A105DF: ConcatStr
  loc_A105E0: PopTmpLdAdStr
  loc_A105E4: Call Find(from_stack_1v)
  loc_A105E9: FFreeStr var_88 = ""
  loc_A105F0: LitStr "NumeFrin = "
  loc_A105F3: FLdUI1
  loc_A105F7: CStrI2
  loc_A105F9: FStStrNoPop var_88
  loc_A105FC: ConcatStr
  loc_A105FD: PopTmpLdAdStr
  loc_A10601: Call Find(from_stack_1v)
  loc_A10606: FFreeStr var_88 = ""
  loc_A1060D: ExitProcHresult
  loc_A1060E: LeR8
End Sub

Public Property Get DataSource() 'A0A760
  'Data Table: 438C70
  loc_A0A730: ZeroRetVal
  loc_A0A732: FLdRfVar var_90
  loc_A0A735: FLdRfVar var_8C
  loc_A0A738: FLdPr Me
  loc_A0A73B: from_stack_1v = clsFrente.global_4426744Get()
  loc_A0A740: FLdPr var_8C
  loc_A0A743:  = Me.DataSource
  loc_A0A748: ILdRf var_90
  loc_A0A74B: CastAd
  loc_A0A74E: FStAdFunc var_88
  loc_A0A751: FFreeAd var_8C = ""
  loc_A0A758: ExitProcCbHresult
  loc_A0A75E: GtI4
End Sub

Public Property Get EditMode() '9F71D0
  'Data Table: 438C70
  loc_9F71A8: FLdRfVar var_90
  loc_9F71AB: FLdRfVar var_8C
  loc_9F71AE: FLdPr Me
  loc_9F71B1: from_stack_1v = clsFrente.global_4426744Get()
  loc_9F71B6: FLdPr var_8C
  loc_9F71B9:  = Me.EditMode
  loc_9F71BE: ILdRf var_90
  loc_9F71C1: FStR4 var_88
  loc_9F71C4: FFree1Ad var_8C
  loc_9F71C7: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A4652C
  'Data Table: 438C70
  loc_A464E0: FLdRfVar var_B4
  loc_A464E3: FLdRfVar var_A4
  loc_A464E6: LitVarStr var_A0, "CodiInmu"
  loc_A464EB: PopAdLdVar
  loc_A464EC: FLdRfVar var_90
  loc_A464EF: FLdRfVar var_8C
  loc_A464F2: FLdPr Me
  loc_A464F5: from_stack_1v = clsFrente.global_4426744Get()
  loc_A464FA: FLdPr var_8C
  loc_A464FD:  = Me.Fields
  loc_A46502: FLdPr var_90
  loc_A46505: from_stack_2 = Me.Item(from_stack_1)
  loc_A4650A: FLdPr var_A4
  loc_A4650D:  = Me.Value
  loc_A46512: FLdRfVar var_B4
  loc_A46515: CI4Var
  loc_A46517: FStR4 var_88
  loc_A4651A: FFreeAd var_8C = "": var_90 = ""
  loc_A46523: FFree1Var var_B4 = ""
  loc_A46526: ExitProcCbHresult
End Sub

Public Property Let CodiInmu(vDato) '9FA1F8
  'Data Table: 438C70
  loc_9FA1D0: ILdRf vDato
  loc_9FA1D3: CVarI4
  loc_9FA1D7: PopAdLdVar
  loc_9FA1D8: LitVarStr var_98, "CodiInmu"
  loc_9FA1DD: PopAdLdVar
  loc_9FA1DE: FLdRfVar var_88
  loc_9FA1E1: FLdPr Me
  loc_9FA1E4: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FA1E9: FLdPr var_88
  loc_9FA1EC: Me.Collect = from_stack_1
  loc_9FA1F1: FFree1Ad var_88
  loc_9FA1F4: ExitProcHresult
End Sub

Public Property Get NumeFrin() 'A52D50
  'Data Table: 438C70
  loc_A52D00: FLdRfVar var_B4
  loc_A52D03: FLdRfVar var_A4
  loc_A52D06: LitVarStr var_A0, "NumeFrin"
  loc_A52D0B: PopAdLdVar
  loc_A52D0C: FLdRfVar var_90
  loc_A52D0F: FLdRfVar var_8C
  loc_A52D12: FLdPr Me
  loc_A52D15: from_stack_1v = clsFrente.global_4426744Get()
  loc_A52D1A: FLdPr var_8C
  loc_A52D1D:  = Me.Fields
  loc_A52D22: FLdPr var_90
  loc_A52D25: from_stack_2 = Me.Item(from_stack_1)
  loc_A52D2A: FLdPr var_A4
  loc_A52D2D:  = Me.Value
  loc_A52D32: FLdRfVar var_B4
  loc_A52D35: CUI1Var
  loc_A52D37: FStUI1 var_86
  loc_A52D3B: FFreeAd var_8C = "": var_90 = ""
  loc_A52D44: FFree1Var var_B4 = ""
  loc_A52D47: ExitProcCbHresult
End Sub

Public Property Let NumeFrin(vDato) '9FA140
  'Data Table: 438C70
  loc_9FA118: FLdUI1
  loc_9FA11C: CVarUI1
  loc_9FA120: PopAdLdVar
  loc_9FA121: LitVarStr var_98, "NumeFrin"
  loc_9FA126: PopAdLdVar
  loc_9FA127: FLdRfVar var_88
  loc_9FA12A: FLdPr Me
  loc_9FA12D: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FA132: FLdPr var_88
  loc_9FA135: Me.Collect = from_stack_1
  loc_9FA13A: FFree1Ad var_88
  loc_9FA13D: ExitProcHresult
End Sub

Public Property Get TipoFrin() 'A579BC
  'Data Table: 438C70
  loc_A5796C: ZeroRetVal
  loc_A5796E: FLdRfVar var_B4
  loc_A57971: FLdRfVar var_A4
  loc_A57974: LitVarStr var_A0, "TipoFrin"
  loc_A57979: PopAdLdVar
  loc_A5797A: FLdRfVar var_90
  loc_A5797D: FLdRfVar var_8C
  loc_A57980: FLdPr Me
  loc_A57983: from_stack_1v = clsFrente.global_4426744Get()
  loc_A57988: FLdPr var_8C
  loc_A5798B:  = Me.Fields
  loc_A57990: FLdPr var_90
  loc_A57993: from_stack_2 = Me.Item(from_stack_1)
  loc_A57998: FLdPr var_A4
  loc_A5799B:  = Me.Value
  loc_A579A0: FLdRfVar var_B4
  loc_A579A3: CStrVarTmp
  loc_A579A4: FStStr var_88
  loc_A579A7: FFreeAd var_8C = "": var_90 = ""
  loc_A579B0: FFree1Var var_B4 = ""
  loc_A579B3: ExitProcCbHresult
End Sub

Public Property Let TipoFrin(vDato) '9FE93C
  'Data Table: 438C70
  loc_9FE910: ILdRf vDato
  loc_9FE913: FStStrCopy var_88
  loc_9FE916: ILdRf var_88
  loc_9FE919: CVarStr var_AC
  loc_9FE91C: PopAdLdVar
  loc_9FE91D: LitVarStr var_9C, "TipoFrin"
  loc_9FE922: PopAdLdVar
  loc_9FE923: FLdRfVar var_8C
  loc_9FE926: FLdPr Me
  loc_9FE929: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FE92E: FLdPr var_8C
  loc_9FE931: Me.Collect = from_stack_1
  loc_9FE936: FFree1Ad var_8C
  loc_9FE939: ExitProcHresult
End Sub

Public Property Get CodiCall() 'A46874
  'Data Table: 438C70
  loc_A46828: FLdRfVar var_B4
  loc_A4682B: FLdRfVar var_A4
  loc_A4682E: LitVarStr var_A0, "CodiCall"
  loc_A46833: PopAdLdVar
  loc_A46834: FLdRfVar var_90
  loc_A46837: FLdRfVar var_8C
  loc_A4683A: FLdPr Me
  loc_A4683D: from_stack_1v = clsFrente.global_4426744Get()
  loc_A46842: FLdPr var_8C
  loc_A46845:  = Me.Fields
  loc_A4684A: FLdPr var_90
  loc_A4684D: from_stack_2 = Me.Item(from_stack_1)
  loc_A46852: FLdPr var_A4
  loc_A46855:  = Me.Value
  loc_A4685A: FLdRfVar var_B4
  loc_A4685D: CI2Var
  loc_A4685E: FStI2 var_86
  loc_A46861: FFreeAd var_8C = "": var_90 = ""
  loc_A4686A: FFree1Var var_B4 = ""
  loc_A4686D: ExitProcCbHresult
End Sub

Public Property Let CodiCall(vDato) '9EF2A0
  'Data Table: 438C70
  loc_9EF27C: FLdI2 vDato
  loc_9EF27F: CVarI2 var_A8
  loc_9EF282: PopAdLdVar
  loc_9EF283: LitVarStr var_98, "CodiCall"
  loc_9EF288: PopAdLdVar
  loc_9EF289: FLdRfVar var_88
  loc_9EF28C: FLdPr Me
  loc_9EF28F: from_stack_1v = clsFrente.global_4426744Get()
  loc_9EF294: FLdPr var_88
  loc_9EF297: Me.Collect = from_stack_1
  loc_9EF29C: FFree1Ad var_88
  loc_9EF29F: ExitProcHresult
End Sub

Public Property Get NucaFrin() 'A4C2B0
  'Data Table: 438C70
  loc_A4C264: FLdRfVar var_B4
  loc_A4C267: FLdRfVar var_A4
  loc_A4C26A: LitVarStr var_A0, "NucaFrin"
  loc_A4C26F: PopAdLdVar
  loc_A4C270: FLdRfVar var_90
  loc_A4C273: FLdRfVar var_8C
  loc_A4C276: FLdPr Me
  loc_A4C279: from_stack_1v = clsFrente.global_4426744Get()
  loc_A4C27E: FLdPr var_8C
  loc_A4C281:  = Me.Fields
  loc_A4C286: FLdPr var_90
  loc_A4C289: from_stack_2 = Me.Item(from_stack_1)
  loc_A4C28E: FLdPr var_A4
  loc_A4C291:  = Me.Value
  loc_A4C296: FLdRfVar var_B4
  loc_A4C299: CI4Var
  loc_A4C29B: FStR4 var_88
  loc_A4C29E: FFreeAd var_8C = "": var_90 = ""
  loc_A4C2A7: FFree1Var var_B4 = ""
  loc_A4C2AA: ExitProcCbHresult
End Sub

Public Property Let NucaFrin(vDato) '9F6AA0
  'Data Table: 438C70
  loc_9F6A78: ILdRf vDato
  loc_9F6A7B: CVarI4
  loc_9F6A7F: PopAdLdVar
  loc_9F6A80: LitVarStr var_98, "NucaFrin"
  loc_9F6A85: PopAdLdVar
  loc_9F6A86: FLdRfVar var_88
  loc_9F6A89: FLdPr Me
  loc_9F6A8C: from_stack_1v = clsFrente.global_4426744Get()
  loc_9F6A91: FLdPr var_88
  loc_9F6A94: Me.Collect = from_stack_1
  loc_9F6A99: FFree1Ad var_88
  loc_9F6A9C: ExitProcHresult
  loc_9F6A9D: IStI2 vDato
End Sub

Public Property Get MetrFrin() 'A46BBC
  'Data Table: 438C70
  loc_A46B70: FLdRfVar var_B8
  loc_A46B73: FLdRfVar var_A8
  loc_A46B76: LitVarStr var_A4, "MetrFrin"
  loc_A46B7B: PopAdLdVar
  loc_A46B7C: FLdRfVar MetrFrin
  loc_A46B7F: FLdRfVar var_90
  loc_A46B82: FLdPr Me
  loc_A46B85: from_stack_1v = clsFrente.global_4426744Get()
  loc_A46B8A: FLdPr var_90
  loc_A46B8D:  = Me.Fields
  loc_A46B92: FLdPr MetrFrin
  loc_A46B95: from_stack_2 = Me.Item(from_stack_1)
  loc_A46B9A: FLdPr var_A8
  loc_A46B9D:  = Me.Value
  loc_A46BA2: FLdRfVar var_B8
  loc_A46BA5: CR4Var
  loc_A46BA6: FStFPR8 var_8C
  loc_A46BA9: FFreeAd var_90 = "": MetrFrin = ""
  loc_A46BB2: FFree1Var var_B8 = ""
  loc_A46BB5: ExitProcCbHresult
End Sub

Public Property Let MetrFrin(vDato) '9F6930
  'Data Table: 438C70
  loc_9F6908: FLdFPR8 vDato
  loc_9F690B: CVarR8
  loc_9F690F: PopAdLdVar
  loc_9F6910: LitVarStr var_98, "MetrFrin"
  loc_9F6915: PopAdLdVar
  loc_9F6916: FLdRfVar var_88
  loc_9F6919: FLdPr Me
  loc_9F691C: from_stack_1v = clsFrente.global_4426744Get()
  loc_9F6921: FLdPr var_88
  loc_9F6924: Me.Collect = from_stack_1
  loc_9F6929: FFree1Ad var_88
  loc_9F692C: ExitProcHresult
  loc_9F692D: IStI2 vDato
End Sub

Public Property Get CodiUsua() 'A54E60
  'Data Table: 438C70
  loc_A54E10: ZeroRetVal
  loc_A54E12: FLdRfVar var_B4
  loc_A54E15: FLdRfVar var_A4
  loc_A54E18: LitVarStr var_A0, "CodiUsua"
  loc_A54E1D: PopAdLdVar
  loc_A54E1E: FLdRfVar var_90
  loc_A54E21: FLdRfVar var_8C
  loc_A54E24: FLdPr Me
  loc_A54E27: from_stack_1v = clsFrente.global_4426744Get()
  loc_A54E2C: FLdPr var_8C
  loc_A54E2F:  = Me.Fields
  loc_A54E34: FLdPr var_90
  loc_A54E37: from_stack_2 = Me.Item(from_stack_1)
  loc_A54E3C: FLdPr var_A4
  loc_A54E3F:  = Me.Value
  loc_A54E44: FLdRfVar var_B4
  loc_A54E47: CStrVarTmp
  loc_A54E48: FStStr var_88
  loc_A54E4B: FFreeAd var_8C = "": var_90 = ""
  loc_A54E54: FFree1Var var_B4 = ""
  loc_A54E57: ExitProcCbHresult
End Sub

Public Property Let CodiUsua(vDato) '9FF1D4
  'Data Table: 438C70
  loc_9FF1A8: ILdRf vDato
  loc_9FF1AB: FStStrCopy var_88
  loc_9FF1AE: ILdRf var_88
  loc_9FF1B1: CVarStr var_AC
  loc_9FF1B4: PopAdLdVar
  loc_9FF1B5: LitVarStr var_9C, "CodiUsua"
  loc_9FF1BA: PopAdLdVar
  loc_9FF1BB: FLdRfVar var_8C
  loc_9FF1BE: FLdPr Me
  loc_9FF1C1: from_stack_1v = clsFrente.global_4426744Get()
  loc_9FF1C6: FLdPr var_8C
  loc_9FF1C9: Me.Collect = from_stack_1
  loc_9FF1CE: FFree1Ad var_8C
  loc_9FF1D1: ExitProcHresult
  loc_9FF1D2: FnAbsI2
End Sub

Public Property Get DetaCall() 'A57AE4
  'Data Table: 438C70
  loc_A57A94: ZeroRetVal
  loc_A57A96: FLdRfVar var_B4
  loc_A57A99: FLdRfVar var_A4
  loc_A57A9C: LitVarStr var_A0, "DetaCall"
  loc_A57AA1: PopAdLdVar
  loc_A57AA2: FLdRfVar var_90
  loc_A57AA5: FLdRfVar var_8C
  loc_A57AA8: FLdPr Me
  loc_A57AAB: from_stack_1v = clsFrente.global_4426744Get()
  loc_A57AB0: FLdPr var_8C
  loc_A57AB3:  = Me.Fields
  loc_A57AB8: FLdPr var_90
  loc_A57ABB: from_stack_2 = Me.Item(from_stack_1)
  loc_A57AC0: FLdPr var_A4
  loc_A57AC3:  = Me.Value
  loc_A57AC8: FLdRfVar var_B4
  loc_A57ACB: CStrVarTmp
  loc_A57ACC: FStStr var_88
  loc_A57ACF: FFreeAd var_8C = "": var_90 = ""
  loc_A57AD8: FFree1Var var_B4 = ""
  loc_A57ADB: ExitProcCbHresult
  loc_A57AE1: FStAdFunc arg_0
End Sub

Public Function ValidaClave(CodiInmu, NumeFrin) 'A78118
  'Data Table: 438C70
  loc_A780B0: ZeroRetVal
  loc_A780B2: LitStr "SELECT CodiInmu FROM freninmu WHERE CodiInmu = "
  loc_A780B5: ILdRf CodiInmu
  loc_A780B8: CStrI4
  loc_A780BA: FStStrNoPop var_8C
  loc_A780BD: ConcatStr
  loc_A780BE: FStStrNoPop var_90
  loc_A780C1: LitStr " AND NumeFrin = "
  loc_A780C4: ConcatStr
  loc_A780C5: FStStrNoPop ValidaClave
  loc_A780C8: FLdUI1
  loc_A780CC: CStrI2
  loc_A780CE: FStStrNoPop var_98
  loc_A780D1: ConcatStr
  loc_A780D2: FStStrNoPop var_9C
  loc_A780D5: Call EjecutarRs2(from_stack_1v)
  loc_A780DA: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A780E7: FLdRfVar var_A4
  loc_A780EA: FLdRfVar var_A0
  loc_A780ED: FLdPr Me
  loc_A780F0: from_stack_1v = clsFrente.global_4426744Get()
  loc_A780F5: FLdPr var_A0
  loc_A780F8:  = Me.RecordCount
  loc_A780FD: ILdRf var_A4
  loc_A78100: LitI4 0
  loc_A78105: GtI4
  loc_A78106: FFree1Ad var_A0
  loc_A78109: BranchF loc_A78112
  loc_A7810C: LitStr "El FRENTE YA EXISTE. Reintente..."
  loc_A7810F: FStStrCopy var_88
  loc_A78112: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiInmu) 'AD0994
  'Data Table: 438C70
  loc_AD0870: New Recordset
  loc_AD0874: FStAdFuncNoPop
  loc_AD0877: FLdPr Me
  loc_AD087A: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_AD087F: FFree1Ad var_8C
  loc_AD0882: LitI4 -1
  loc_AD0887: LitI4 3
  loc_AD088C: LitI4 3
  loc_AD0891: ImpAdLdI4 MemVar_D9301C
  loc_AD0894: CVarAd
  loc_AD0898: PopAdLdVar
  loc_AD0899: LitStr "SELECT NumeFrin FROM freninmu WHERE CodiInmu = "
  loc_AD089C: ILdRf CodiInmu
  loc_AD089F: CStrI4
  loc_AD08A1: FStStrNoPop var_90
  loc_AD08A4: ConcatStr
  loc_AD08A5: FStStrNoPop NuevoRegistro
  loc_AD08A8: LitStr " ORDER BY NumeFrin ASC "
  loc_AD08AB: ConcatStr
  loc_AD08AC: CVarStr var_A4
  loc_AD08AF: PopAdLdVar
  loc_AD08B0: FLdRfVar var_8C
  loc_AD08B3: FLdPr Me
  loc_AD08B6: from_stack_1v = clsFrente.global_4426744Get()
  loc_AD08BB: FLdPr var_8C
  loc_AD08BE: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AD08C3: FFreeStr var_90 = ""
  loc_AD08CA: FFree1Ad var_8C
  loc_AD08CD: FFree1Var var_A4 = ""
  loc_AD08D0: FLdRfVar var_B8
  loc_AD08D3: FLdRfVar var_8C
  loc_AD08D6: FLdPr Me
  loc_AD08D9: from_stack_1v = clsFrente.global_4426744Get()
  loc_AD08DE: FLdPr var_8C
  loc_AD08E1:  = Me.RecordCount
  loc_AD08E6: ILdRf var_B8
  loc_AD08E9: LitI4 0
  loc_AD08EE: GtI4
  loc_AD08EF: FFree1Ad var_8C
  loc_AD08F2: BranchF loc_AD095C
  loc_AD08F5: FLdRfVar var_8C
  loc_AD08F8: FLdPr Me
  loc_AD08FB: from_stack_1v = clsFrente.global_4426744Get()
  loc_AD0900: FLdPr var_8C
  loc_AD0903: Me.MoveLast
  loc_AD0908: FFree1Ad var_8C
  loc_AD090B: FLdRfVar var_A4
  loc_AD090E: FLdRfVar var_C0
  loc_AD0911: LitVarStr var_B4, "NumeFrin"
  loc_AD0916: PopAdLdVar
  loc_AD0917: FLdRfVar var_BC
  loc_AD091A: FLdRfVar var_8C
  loc_AD091D: FLdPr Me
  loc_AD0920: from_stack_1v = clsFrente.global_4426744Get()
  loc_AD0925: FLdPr var_8C
  loc_AD0928:  = Me.Fields
  loc_AD092D: FLdPr var_BC
  loc_AD0930: from_stack_2 = Me.Item(from_stack_1)
  loc_AD0935: FLdPr var_C0
  loc_AD0938:  = Me.Value
  loc_AD093D: FLdRfVar var_A4
  loc_AD0940: FnCByteVar
  loc_AD0942: CI2UI1
  loc_AD0944: LitI2_Byte 1
  loc_AD0946: AddI2
  loc_AD0947: CUI1I2
  loc_AD0949: FStUI1 var_86
  loc_AD094D: FFreeAd var_8C = "": var_BC = ""
  loc_AD0956: FFree1Var var_A4 = ""
  loc_AD0959: Branch loc_AD0964
  loc_AD095C: LitI2_Byte 1
  loc_AD095E: CUI1I2
  loc_AD0960: FStUI1 var_86
  loc_AD0964: FLdRfVar var_8C
  loc_AD0967: FLdPr Me
  loc_AD096A: from_stack_1v = clsFrente.global_4426744Get()
  loc_AD096F: FLdPr var_8C
  loc_AD0972: Me.Close
  loc_AD0977: FFree1Ad var_8C
  loc_AD097A: LitNothing
  loc_AD097C: CastAd
  loc_AD097F: FStAdFuncNoPop
  loc_AD0982: FLdPr Me
  loc_AD0985: Call clsFrente.global_4426744Set(from_stack_1v)
  loc_AD098A: FFree1Ad var_8C
  loc_AD098D: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E9ACC
  'Data Table: 438C70
  loc_9E9AB0: ILdRf pError
  loc_9E9AB3: FStAd var_88 
  loc_9E9AB7: ILdRf pRecordset
  loc_9E9ABA: FStAd var_8C 
  loc_9E9ABE: FLdPr Me
  loc_9E9AC1: RaiseEvent
  loc_9E9AC9: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9A850
  'Data Table: 438C70
  loc_A9A790: ILdRf pRecordset
  loc_A9A793: FStAd var_88 
  loc_A9A797: ILdRf adReason
  loc_A9A79A: FStR4 var_90
  loc_A9A79D: ILdRf var_90
  loc_A9A7A0: LitI4 1
  loc_A9A7A5: EqI4
  loc_A9A7A6: BranchF loc_A9A7AC
  loc_A9A7A9: Branch loc_A9A83F
  loc_A9A7AC: ILdRf var_90
  loc_A9A7AF: LitI4 9
  loc_A9A7B4: EqI4
  loc_A9A7B5: BranchF loc_A9A7BB
  loc_A9A7B8: Branch loc_A9A83F
  loc_A9A7BB: ILdRf var_90
  loc_A9A7BE: LitI4 2
  loc_A9A7C3: EqI4
  loc_A9A7C4: BranchF loc_A9A7CA
  loc_A9A7C7: Branch loc_A9A83F
  loc_A9A7CA: ILdRf var_90
  loc_A9A7CD: LitI4 &HB
  loc_A9A7D2: EqI4
  loc_A9A7D3: BranchF loc_A9A7D9
  loc_A9A7D6: Branch loc_A9A83F
  loc_A9A7D9: ILdRf var_90
  loc_A9A7DC: LitI4 &HA
  loc_A9A7E1: EqI4
  loc_A9A7E2: BranchF loc_A9A7E8
  loc_A9A7E5: Branch loc_A9A83F
  loc_A9A7E8: ILdRf var_90
  loc_A9A7EB: LitI4 7
  loc_A9A7F0: EqI4
  loc_A9A7F1: BranchF loc_A9A7F7
  loc_A9A7F4: Branch loc_A9A83F
  loc_A9A7F7: ILdRf var_90
  loc_A9A7FA: LitI4 8
  loc_A9A7FF: EqI4
  loc_A9A800: BranchF loc_A9A806
  loc_A9A803: Branch loc_A9A83F
  loc_A9A806: ILdRf var_90
  loc_A9A809: LitI4 5
  loc_A9A80E: EqI4
  loc_A9A80F: BranchF loc_A9A815
  loc_A9A812: Branch loc_A9A83F
  loc_A9A815: ILdRf var_90
  loc_A9A818: LitI4 6
  loc_A9A81D: EqI4
  loc_A9A81E: BranchF loc_A9A824
  loc_A9A821: Branch loc_A9A83F
  loc_A9A824: ILdRf var_90
  loc_A9A827: LitI4 4
  loc_A9A82C: EqI4
  loc_A9A82D: BranchF loc_A9A833
  loc_A9A830: Branch loc_A9A83F
  loc_A9A833: ILdRf var_90
  loc_A9A836: LitI4 3
  loc_A9A83B: EqI4
  loc_A9A83C: BranchF loc_A9A83F
  loc_A9A83F: FLdI2 var_8A
  loc_A9A842: BranchF loc_A9A84D
  loc_A9A845: LitI4 4
  loc_A9A84A: IStI4 adStatus
  loc_A9A84D: ExitProcHresult
End Sub

Private Function Proc_55_44_9F778C() '9F778C
  'Data Table: 438C70
  loc_9F7768: LitStr "Primary"
  loc_9F776B: FLdPr Me
  loc_9F776E: LateIdLdVar var_94 DispID_4 0
  loc_9F7775: CastAdVar Me
  loc_9F7779: FStAdFunc var_98
  loc_9F777C: FLdPr var_98
  loc_9F7784: FFree1Ad var_98
  loc_9F7787: FFree1Var var_94 = ""
  loc_9F778A: ExitProcHresult
End Function

Private Function Proc_55_45_9F74AC(arg_C) '9F74AC
  'Data Table: 438C70
  loc_9F7488: ILdI4 arg_C
  loc_9F748B: FStStrCopy var_88
  loc_9F748E: ILdRf var_88
  loc_9F7491: LitStr "Primary"
  loc_9F7494: EqStr
  loc_9F7496: BranchF loc_9F74AB
  loc_9F7499: FLdRfVar var_8C
  loc_9F749C: FLdPr Me
  loc_9F749F: from_stack_1v = clsFrente.global_4426744Get()
  loc_9F74A4: FLdZeroAd var_8C
  loc_9F74A7: IStAdFunc
  loc_9F74AB: ExitProcHresult
End Function

Public Function global_4426744Get() '4390B4
  global_4426744Get = global_4426744
End Function

Public Sub global_4426744Put(Value) '4390CE
  global_4426744 = Value
End Sub

Public Sub global_4426744Set(Value) '4390E8
  global_4426744 = Value
End Sub

Public Function global_4426744Get() '439102
  global_4426744Get = global_4426744
End Function

Public Sub global_4426744Put(Value) '43911C
  global_4426744 = Value
End Sub

Public Sub global_4426744Set(Value) '439136
  global_4426744 = Value
End Sub

Public Function global_4426744Get() '439150
  global_4426744Get = global_4426744
End Function

Public Sub global_4426744Put(Value) '43916A
  global_4426744 = Value
End Sub

Public Sub global_4426744Set(Value) '439184
  global_4426744 = Value
End Sub
