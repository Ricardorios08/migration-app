VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservdifu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FCDB8
  'Data Table: 40E5E4
  loc_9FCD88: FLdRfVar var_88
  loc_9FCD8B: FLdPr Me
  loc_9FCD8E: MemLdPr global_60
  loc_9FCD91:  = Me.RecordCount
  loc_9FCD96: ILdRf var_88
  loc_9FCD99: LitI4 0
  loc_9FCD9E: GtI4
  loc_9FCD9F: BranchF loc_9FCDB4
  loc_9FCDA2: LitVar_Missing var_98
  loc_9FCDA5: PopAdLdVar
  loc_9FCDA6: ILdI4 iCantidad
  loc_9FCDA9: FLdPr Me
  loc_9FCDAC: MemLdPr global_60
  loc_9FCDAF: Me.Move from_stack_1, from_stack_2
  loc_9FCDB4: ExitProcHresult
End Sub

Public Sub MoveFirst() '9E9FCC
  'Data Table: 40E5E4
  loc_9E9FA4: FLdRfVar var_88
  loc_9E9FA7: FLdPr Me
  loc_9E9FAA: MemLdPr global_60
  loc_9E9FAD:  = Me.RecordCount
  loc_9E9FB2: ILdRf var_88
  loc_9E9FB5: LitI4 0
  loc_9E9FBA: GtI4
  loc_9E9FBB: BranchF loc_9E9FC9
  loc_9E9FBE: FLdPr Me
  loc_9E9FC1: MemLdPr global_60
  loc_9E9FC4: Me.MoveFirst
  loc_9E9FC9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EB8E4
  'Data Table: 40E5E4
  loc_9EB8BC: FLdRfVar var_88
  loc_9EB8BF: FLdPr Me
  loc_9EB8C2: MemLdPr global_60
  loc_9EB8C5:  = Me.RecordCount
  loc_9EB8CA: ILdRf var_88
  loc_9EB8CD: LitI4 0
  loc_9EB8D2: GtI4
  loc_9EB8D3: BranchF loc_9EB8E1
  loc_9EB8D6: FLdPr Me
  loc_9EB8D9: MemLdPr global_60
  loc_9EB8DC: Me.MoveLast
  loc_9EB8E1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D9F0
  'Data Table: 40E5E4
  loc_A6D978: FLdRfVar var_86
  loc_A6D97B: FLdPr Me
  loc_A6D97E: MemLdPr global_60
  loc_A6D981:  = Me.EOF
  loc_A6D986: FLdI2 var_86
  loc_A6D989: NotI4
  loc_A6D98A: FLdRfVar var_8C
  loc_A6D98D: FLdPr Me
  loc_A6D990: MemLdPr global_60
  loc_A6D993:  = Me.RecordCount
  loc_A6D998: ILdRf var_8C
  loc_A6D99B: LitI4 0
  loc_A6D9A0: GtI4
  loc_A6D9A1: AndI4
  loc_A6D9A2: BranchF loc_A6D9B0
  loc_A6D9A5: FLdPr Me
  loc_A6D9A8: MemLdPr global_60
  loc_A6D9AB: Me.MoveNext
  loc_A6D9B0: FLdRfVar var_86
  loc_A6D9B3: FLdPr Me
  loc_A6D9B6: MemLdPr global_60
  loc_A6D9B9:  = Me.EOF
  loc_A6D9BE: FLdI2 var_86
  loc_A6D9C1: FLdRfVar var_8C
  loc_A6D9C4: FLdPr Me
  loc_A6D9C7: MemLdPr global_60
  loc_A6D9CA:  = Me.RecordCount
  loc_A6D9CF: ILdRf var_8C
  loc_A6D9D2: LitI4 0
  loc_A6D9D7: GtI4
  loc_A6D9D8: AndI4
  loc_A6D9D9: BranchF loc_A6D9EC
  loc_A6D9DC: ImpAdCallFPR4 Beep()
  loc_A6D9E1: FLdPr Me
  loc_A6D9E4: MemLdPr global_60
  loc_A6D9E7: Me.MoveLast
  loc_A6D9EC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B14E8
  'Data Table: 40E5E4
  loc_9B14DC: FLdPr Me
  loc_9B14DF: MemLdPr global_60
  loc_9B14E2: Me.MoveNext
  loc_9B14E7: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B92F8
  'Data Table: 40E5E4
  loc_9B92E4: LitVar_Missing var_94
  loc_9B92E7: PopAdLdVar
  loc_9B92E8: ILdI2 iValor
  loc_9B92EB: CI4UI1
  loc_9B92EC: FLdPr Me
  loc_9B92EF: MemLdPr global_60
  loc_9B92F2: Me.Move from_stack_1, from_stack_2
  loc_9B92F7: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6DBE8
  'Data Table: 40E5E4
  loc_A6DB70: FLdRfVar var_86
  loc_A6DB73: FLdPr Me
  loc_A6DB76: MemLdPr global_60
  loc_A6DB79:  = Me.BOF
  loc_A6DB7E: FLdI2 var_86
  loc_A6DB81: NotI4
  loc_A6DB82: FLdRfVar var_8C
  loc_A6DB85: FLdPr Me
  loc_A6DB88: MemLdPr global_60
  loc_A6DB8B:  = Me.RecordCount
  loc_A6DB90: ILdRf var_8C
  loc_A6DB93: LitI4 0
  loc_A6DB98: GtI4
  loc_A6DB99: AndI4
  loc_A6DB9A: BranchF loc_A6DBA8
  loc_A6DB9D: FLdPr Me
  loc_A6DBA0: MemLdPr global_60
  loc_A6DBA3: Me.MovePrevious
  loc_A6DBA8: FLdRfVar var_86
  loc_A6DBAB: FLdPr Me
  loc_A6DBAE: MemLdPr global_60
  loc_A6DBB1:  = Me.BOF
  loc_A6DBB6: FLdI2 var_86
  loc_A6DBB9: FLdRfVar var_8C
  loc_A6DBBC: FLdPr Me
  loc_A6DBBF: MemLdPr global_60
  loc_A6DBC2:  = Me.RecordCount
  loc_A6DBC7: ILdRf var_8C
  loc_A6DBCA: LitI4 0
  loc_A6DBCF: GtI4
  loc_A6DBD0: AndI4
  loc_A6DBD1: BranchF loc_A6DBE4
  loc_A6DBD4: ImpAdCallFPR4 Beep()
  loc_A6DBD9: FLdPr Me
  loc_A6DBDC: MemLdPr global_60
  loc_A6DBDF: Me.MoveFirst
  loc_A6DBE4: ExitProcHresult
End Sub

Public Property Get EOF() '9D3B00
  'Data Table: 40E5E4
  loc_9D3AE4: FLdRfVar var_88
  loc_9D3AE7: FLdPr Me
  loc_9D3AEA: MemLdPr global_60
  loc_9D3AED:  = Me.EOF
  loc_9D3AF2: FLdI2 var_88
  loc_9D3AF5: FStI2 var_86
  loc_9D3AF8: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D3938
  'Data Table: 40E5E4
  loc_9D391C: FLdRfVar var_88
  loc_9D391F: FLdPr Me
  loc_9D3922: MemLdPr global_60
  loc_9D3925:  = Me.BOF
  loc_9D392A: FLdI2 var_88
  loc_9D392D: FStI2 var_86
  loc_9D3930: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B58F8
  'Data Table: 40E5E4
  loc_9B58E8: ILdI4 sOrden
  loc_9B58EB: FLdPr Me
  loc_9B58EE: MemLdPr global_60
  loc_9B58F1: Me.Sort = from_stack_1
  loc_9B58F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E3530
  'Data Table: 40E5E4
  loc_9E3510: LitVar_Missing var_94
  loc_9E3513: PopAdLdVar
  loc_9E3514: LitI4 1
  loc_9E3519: LitI4 0
  loc_9E351E: ILdI4 sFind
  loc_9E3521: FLdPr Me
  loc_9E3524: MemLdPr global_60
  loc_9E3527: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E352C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9FB8
  'Data Table: 40E5E4
  loc_9B9FA4: ILdI4 sCriterio
  loc_9B9FA7: CVarStr var_94
  loc_9B9FAA: PopAdLdVar
  loc_9B9FAB: FLdPr Me
  loc_9B9FAE: MemLdPr global_60
  loc_9B9FB1: Me.Filter = from_stack_1
  loc_9B9FB6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D439C
  'Data Table: 40E5E4
  loc_9D4380: FLdRfVar var_8C
  loc_9D4383: FLdPr Me
  loc_9D4386: MemLdPr global_60
  loc_9D4389:  = Me.AbsolutePosition
  loc_9D438E: ILdRf var_8C
  loc_9D4391: FStR4 var_88
  loc_9D4394: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D3B98
  'Data Table: 40E5E4
  loc_9D3B7C: FLdRfVar var_8C
  loc_9D3B7F: FLdPr Me
  loc_9D3B82: MemLdPr global_60
  loc_9D3B85:  = Me.RecordCount
  loc_9D3B8A: ILdRf var_8C
  loc_9D3B8D: FStR4 var_88
  loc_9D3B90: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiDifu, CodiSece, FedeSedi) 'AEF744
  'Data Table: 40E5E4
  loc_AEF5EC: ILdRf FedeSedi
  loc_AEF5EF: FStStrCopy var_88
  loc_AEF5F2: FLdRfVar var_8C
  loc_AEF5F5: FLdI2 CodiSece
  loc_AEF5F8: CI4UI1
  loc_AEF5F9: ILdRf CodiDifu
  loc_AEF5FC: from_stack_3v = NuevoRegistro(from_stack_1v, from_stack_2v)
  loc_AEF601: FLdI2 var_8C
  loc_AEF604: CUI1I2
  loc_AEF606: FStUI1 var_8A
  loc_AEF60A: FLdRfVar var_9C
  loc_AEF60D: FLdUI1
  loc_AEF611: CI2UI1
  loc_AEF613: FLdI2 CodiSece
  loc_AEF616: ILdRf CodiDifu
  loc_AEF619: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEF61E: FLdRfVar var_9C
  loc_AEF621: LitVarStr var_AC, vbNullString
  loc_AEF626: HardType
  loc_AEF627: NeVarBool
  loc_AEF629: FFree1Var var_9C = ""
  loc_AEF62C: BranchF loc_AEF63A
  loc_AEF62F: LitStr "El SERVICIO YA EXISTE. Reintente..."
  loc_AEF632: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEF637: Branch loc_AEF740
  loc_AEF63A: LitI2_Byte 0
  loc_AEF63C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEF641: FStFPR8 var_14C
  loc_AEF644: LitStr "INSERT INTO servdifu (CodiDifu, CodiSece, CodiSedi, FealSedi, FedeSedi, EstaSedi, CodiUsua) "
  loc_AEF647: LitStr "VALUES ("
  loc_AEF64A: ConcatStr
  loc_AEF64B: FStStrNoPop var_C0
  loc_AEF64E: ILdRf CodiDifu
  loc_AEF651: CStrI4
  loc_AEF653: FStStrNoPop var_C4
  loc_AEF656: ConcatStr
  loc_AEF657: FStStrNoPop var_C8
  loc_AEF65A: LitStr ","
  loc_AEF65D: ConcatStr
  loc_AEF65E: FStStrNoPop var_CC
  loc_AEF661: FLdI2 CodiSece
  loc_AEF664: CStrUI1
  loc_AEF666: FStStrNoPop var_D0
  loc_AEF669: ConcatStr
  loc_AEF66A: FStStrNoPop var_D4
  loc_AEF66D: LitStr ","
  loc_AEF670: ConcatStr
  loc_AEF671: FStStrNoPop var_D8
  loc_AEF674: FLdUI1
  loc_AEF678: CStrI2
  loc_AEF67A: FStStrNoPop var_DC
  loc_AEF67D: ConcatStr
  loc_AEF67E: FStStrNoPop var_E0
  loc_AEF681: LitStr ",'"
  loc_AEF684: ConcatStr
  loc_AEF685: FStStrNoPop var_F4
  loc_AEF688: LitI4 1
  loc_AEF68D: LitI4 1
  loc_AEF692: LitVarStr var_F0, "yyyy-mm-dd"
  loc_AEF697: FStVarCopyObj var_BC
  loc_AEF69A: FLdRfVar var_BC
  loc_AEF69D: FLdFPR8 var_14C
  loc_AEF6A0: CVarDate var_9C
  loc_AEF6A4: ImpAdCallI2 Format$(, )
  loc_AEF6A9: FStStrNoPop var_F8
  loc_AEF6AC: ConcatStr
  loc_AEF6AD: FStStrNoPop var_FC
  loc_AEF6B0: LitStr "',"
  loc_AEF6B3: ConcatStr
  loc_AEF6B4: FStStrNoPop var_130
  loc_AEF6B7: LitI4 1
  loc_AEF6BC: LitI4 1
  loc_AEF6C1: LitVarStr var_11C, "'yyyy-mm-dd'"
  loc_AEF6C6: FStVarCopyObj var_12C
  loc_AEF6C9: FLdRfVar var_12C
  loc_AEF6CC: FLdRfVar var_88
  loc_AEF6CF: CVarRef
  loc_AEF6D4: ImpAdCallI2 Format$(, )
  loc_AEF6D9: FStStrNoPop var_134
  loc_AEF6DC: ConcatStr
  loc_AEF6DD: FStStrNoPop var_138
  loc_AEF6E0: LitStr ",'Activo','"
  loc_AEF6E3: ConcatStr
  loc_AEF6E4: FStStrNoPop var_13C
  loc_AEF6E7: ImpAdLdI4 MemVar_D9302C
  loc_AEF6EA: ConcatStr
  loc_AEF6EB: FStStrNoPop var_140
  loc_AEF6EE: LitStr "');"
  loc_AEF6F1: ConcatStr
  loc_AEF6F2: FStStrNoPop var_144
  loc_AEF6F5: Call Proc_82_37_A4B96C()
  loc_AEF6FA: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_AEF721: FFreeVar var_9C = "": var_BC = ""
  loc_AEF72A: Call Requery()
  loc_AEF72F: FLdUI1
  loc_AEF733: CI2UI1
  loc_AEF735: FLdI2 CodiSece
  loc_AEF738: ILdRf CodiDifu
  loc_AEF73B: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AEF740: ExitProcHresult
End Sub

Public Sub AddNewMigracion(CodiDifu, CodiSece, FedeSedi) 'AC16F8
  'Data Table: 40E5E4
  loc_AC162C: ILdRf FedeSedi
  loc_AC162F: FStStrCopy var_88
  loc_AC1632: LitI2_Byte 0
  loc_AC1634: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC1639: FStFPR8 var_134
  loc_AC163C: LitStr "INSERT INTO servdifu (CodiDifu, CodiSece, CodiSedi, FealSedi, FedeSedi, EstaSedi, CodiUsua) "
  loc_AC163F: LitStr "VALUES ("
  loc_AC1642: ConcatStr
  loc_AC1643: FStStrNoPop var_8C
  loc_AC1646: ILdRf CodiDifu
  loc_AC1649: CStrI4
  loc_AC164B: FStStrNoPop var_90
  loc_AC164E: ConcatStr
  loc_AC164F: FStStrNoPop var_94
  loc_AC1652: LitStr ","
  loc_AC1655: ConcatStr
  loc_AC1656: FStStrNoPop var_98
  loc_AC1659: FLdI2 CodiSece
  loc_AC165C: CStrUI1
  loc_AC165E: FStStrNoPop var_9C
  loc_AC1661: ConcatStr
  loc_AC1662: FStStrNoPop var_A0
  loc_AC1665: LitStr ",1,"
  loc_AC1668: ConcatStr
  loc_AC1669: FStStrNoPop var_E4
  loc_AC166C: LitI4 1
  loc_AC1671: LitI4 1
  loc_AC1676: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_AC167B: FStVarCopyObj var_E0
  loc_AC167E: FLdRfVar var_E0
  loc_AC1681: FLdFPR8 var_134
  loc_AC1684: CVarDate var_C0
  loc_AC1688: ImpAdCallI2 Format$(, )
  loc_AC168D: FStStrNoPop var_E8
  loc_AC1690: ConcatStr
  loc_AC1691: FStStrNoPop var_EC
  loc_AC1694: LitStr ","
  loc_AC1697: ConcatStr
  loc_AC1698: FStStrNoPop var_120
  loc_AC169B: LitI4 1
  loc_AC16A0: LitI4 1
  loc_AC16A5: LitVarStr var_10C, "'yyyy-mm-dd'"
  loc_AC16AA: FStVarCopyObj var_11C
  loc_AC16AD: FLdRfVar var_11C
  loc_AC16B0: FLdRfVar var_88
  loc_AC16B3: CVarRef
  loc_AC16B8: ImpAdCallI2 Format$(, )
  loc_AC16BD: FStStrNoPop var_124
  loc_AC16C0: ConcatStr
  loc_AC16C1: FStStrNoPop var_128
  loc_AC16C4: LitStr ",'Activo','migra');"
  loc_AC16C7: ConcatStr
  loc_AC16C8: FStStrNoPop var_12C
  loc_AC16CB: Call Proc_82_37_A4B96C()
  loc_AC16D0: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_120 = "": var_124 = "": var_128 = ""
  loc_AC16ED: FFreeVar var_C0 = "": var_E0 = ""
  loc_AC16F6: ExitProcHresult
  loc_AC16F7: CI2Cy
End Sub

Public Sub Modificar(CodiDifu, CodiSece, CodiSedi, FedeSedi) 'AC4300
  'Data Table: 40E5E4
  loc_AC4228: ILdRf FedeSedi
  loc_AC422B: FStStrCopy var_88
  loc_AC422E: FLdRfVar var_98
  loc_AC4231: FLdI2 CodiSedi
  loc_AC4234: FLdI2 CodiSece
  loc_AC4237: ILdRf CodiDifu
  loc_AC423A: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC423F: FLdRfVar var_98
  loc_AC4242: LitVarStr var_A8, vbNullString
  loc_AC4247: HardType
  loc_AC4248: EqVarBool
  loc_AC424A: FFree1Var var_98 = ""
  loc_AC424D: BranchF loc_AC425B
  loc_AC4250: LitStr "El SERVICIO NO EXISTE. Reintente..."
  loc_AC4253: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC4258: Branch loc_AC42EA
  loc_AC425B: LitStr "UPDATE servdifu SET FedeSedi = "
  loc_AC425E: LitI4 1
  loc_AC4263: LitI4 1
  loc_AC4268: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AC426D: FStVarCopyObj var_98
  loc_AC4270: FLdRfVar var_98
  loc_AC4273: FLdRfVar var_88
  loc_AC4276: CVarRef
  loc_AC427B: ImpAdCallI2 Format$(, )
  loc_AC4280: FStStrNoPop var_CC
  loc_AC4283: ConcatStr
  loc_AC4284: FStStrNoPop var_D0
  loc_AC4287: LitStr " WHERE CodiDifu = "
  loc_AC428A: ConcatStr
  loc_AC428B: FStStrNoPop var_D4
  loc_AC428E: ILdRf CodiDifu
  loc_AC4291: CStrI4
  loc_AC4293: FStStrNoPop var_D8
  loc_AC4296: ConcatStr
  loc_AC4297: FStStrNoPop var_DC
  loc_AC429A: LitStr " AND CodiSece = "
  loc_AC429D: ConcatStr
  loc_AC429E: FStStrNoPop var_E0
  loc_AC42A1: FLdI2 CodiSece
  loc_AC42A4: CStrUI1
  loc_AC42A6: FStStrNoPop var_E4
  loc_AC42A9: ConcatStr
  loc_AC42AA: FStStrNoPop var_E8
  loc_AC42AD: LitStr " AND CodiSedi = "
  loc_AC42B0: ConcatStr
  loc_AC42B1: FStStrNoPop var_EC
  loc_AC42B4: FLdI2 CodiSedi
  loc_AC42B7: CStrUI1
  loc_AC42B9: FStStrNoPop var_F0
  loc_AC42BC: ConcatStr
  loc_AC42BD: FStStrNoPop var_F4
  loc_AC42C0: LitStr ";"
  loc_AC42C3: ConcatStr
  loc_AC42C4: FStStrNoPop var_F8
  loc_AC42C7: Call Proc_82_37_A4B96C()
  loc_AC42CC: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_AC42E7: FFree1Var var_98 = ""
  loc_AC42EA: Call Requery()
  loc_AC42EF: FLdI2 CodiSedi
  loc_AC42F2: FLdI2 CodiSece
  loc_AC42F5: ILdRf CodiDifu
  loc_AC42F8: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC42FD: ExitProcHresult
  loc_AC42FE: CI4Str
End Sub

Public Sub Anular(CodiDifu, CodiSece, CodiSedi, FehaSedi) 'AC4FA8
  'Data Table: 40E5E4
  loc_AC4ED0: ILdRf FehaSedi
  loc_AC4ED3: FStStrCopy var_88
  loc_AC4ED6: FLdRfVar var_98
  loc_AC4ED9: FLdI2 CodiSedi
  loc_AC4EDC: FLdI2 CodiSece
  loc_AC4EDF: ILdRf CodiDifu
  loc_AC4EE2: from_stack_4v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC4EE7: FLdRfVar var_98
  loc_AC4EEA: LitVarStr var_A8, vbNullString
  loc_AC4EEF: HardType
  loc_AC4EF0: EqVarBool
  loc_AC4EF2: FFree1Var var_98 = ""
  loc_AC4EF5: BranchF loc_AC4F03
  loc_AC4EF8: LitStr "El SERVICIO NO EXISTE. Reintente..."
  loc_AC4EFB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC4F00: Branch loc_AC4F92
  loc_AC4F03: LitStr "UPDATE servdifu SET FehaSedi = "
  loc_AC4F06: LitI4 1
  loc_AC4F0B: LitI4 1
  loc_AC4F10: LitVarStr var_C8, "'yyyy-mm-dd'"
  loc_AC4F15: FStVarCopyObj var_98
  loc_AC4F18: FLdRfVar var_98
  loc_AC4F1B: FLdRfVar var_88
  loc_AC4F1E: CVarRef
  loc_AC4F23: ImpAdCallI2 Format$(, )
  loc_AC4F28: FStStrNoPop var_CC
  loc_AC4F2B: ConcatStr
  loc_AC4F2C: FStStrNoPop var_D0
  loc_AC4F2F: LitStr " WHERE CodiDifu = "
  loc_AC4F32: ConcatStr
  loc_AC4F33: FStStrNoPop var_D4
  loc_AC4F36: ILdRf CodiDifu
  loc_AC4F39: CStrI4
  loc_AC4F3B: FStStrNoPop var_D8
  loc_AC4F3E: ConcatStr
  loc_AC4F3F: FStStrNoPop var_DC
  loc_AC4F42: LitStr " AND CodiSece = "
  loc_AC4F45: ConcatStr
  loc_AC4F46: FStStrNoPop var_E0
  loc_AC4F49: FLdI2 CodiSece
  loc_AC4F4C: CStrUI1
  loc_AC4F4E: FStStrNoPop var_E4
  loc_AC4F51: ConcatStr
  loc_AC4F52: FStStrNoPop var_E8
  loc_AC4F55: LitStr " AND CodiSedi = "
  loc_AC4F58: ConcatStr
  loc_AC4F59: FStStrNoPop var_EC
  loc_AC4F5C: FLdI2 CodiSedi
  loc_AC4F5F: CStrUI1
  loc_AC4F61: FStStrNoPop var_F0
  loc_AC4F64: ConcatStr
  loc_AC4F65: FStStrNoPop var_F4
  loc_AC4F68: LitStr ";"
  loc_AC4F6B: ConcatStr
  loc_AC4F6C: FStStrNoPop var_F8
  loc_AC4F6F: Call Proc_82_37_A4B96C()
  loc_AC4F74: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_AC4F8F: FFree1Var var_98 = ""
  loc_AC4F92: Call Requery()
  loc_AC4F97: FLdI2 CodiSedi
  loc_AC4F9A: FLdI2 CodiSece
  loc_AC4F9D: ILdRf CodiDifu
  loc_AC4FA0: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AC4FA5: ExitProcHresult
  loc_AC4FA6: CCyR4
End Sub

Public Sub Requery() '9E7518
  'Data Table: 40E5E4
  loc_9E74F4: LitI4 -1
  loc_9E74F9: FLdPr Me
  loc_9E74FC: MemLdPr global_60
  loc_9E74FF: Me.Requery from_stack_1
  loc_9E7504: LitVarStr var_94, "Primary"
  loc_9E7509: PopAdLdVar
  loc_9E750A: FLdPr Me
  loc_9E750D: LateIdCall
  loc_9E7515: ExitProcHresult
  loc_9E7516: FLdI2 arg_6C66
End Sub

Public Sub Encontrar(CodiDifu, CodiSece, CodiSedi) 'A87130
  'Data Table: 40E5E4
  loc_A87098: Call Requery()
  loc_A8709D: LitStr "CodiDifu = "
  loc_A870A0: ILdRf CodiDifu
  loc_A870A3: CStrI4
  loc_A870A5: FStStrNoPop var_88
  loc_A870A8: ConcatStr
  loc_A870A9: PopTmpLdAdStr
  loc_A870AD: Call Find(from_stack_1v)
  loc_A870B2: FFreeStr var_88 = ""
  loc_A870B9: LitStr "CodiSece = "
  loc_A870BC: FLdI2 CodiSece
  loc_A870BF: CStrUI1
  loc_A870C1: FStStrNoPop var_88
  loc_A870C4: ConcatStr
  loc_A870C5: PopTmpLdAdStr
  loc_A870C9: Call Find(from_stack_1v)
  loc_A870CE: FFreeStr var_88 = ""
  loc_A870D5: LitStr "CodiSedi = "
  loc_A870D8: FLdI2 CodiSedi
  loc_A870DB: CStrUI1
  loc_A870DD: FStStrNoPop var_88
  loc_A870E0: ConcatStr
  loc_A870E1: PopTmpLdAdStr
  loc_A870E5: Call Find(from_stack_1v)
  loc_A870EA: FFreeStr var_88 = ""
  loc_A870F1: FLdRfVar var_90
  loc_A870F4: FLdPr Me
  loc_A870F7: MemLdPr global_60
  loc_A870FA:  = Me.RecordCount
  loc_A870FF: ILdRf var_90
  loc_A87102: LitI4 0
  loc_A87107: GtI4
  loc_A87108: FLdRfVar var_94
  loc_A8710B: FLdPr Me
  loc_A8710E: MemLdPr global_60
  loc_A87111:  = Me.AbsolutePosition
  loc_A87116: ILdRf var_94
  loc_A87119: LitI4 -3
  loc_A8711E: EqI4
  loc_A8711F: AndI4
  loc_A87120: BranchF loc_A8712E
  loc_A87123: FLdPr Me
  loc_A87126: MemLdPr global_60
  loc_A87129: Me.MoveLast
  loc_A8712E: ExitProcHresult
End Sub

Public Function ValidaClave(CodiDifu, CodiSece, CodiSedi) 'A84C08
  'Data Table: 40E5E4
  loc_A84B90: ZeroRetValVar
  loc_A84B92: LitStr "SELECT CodiSedi FROM servdifu WHERE CodiDifu = "
  loc_A84B95: ILdRf CodiDifu
  loc_A84B98: CStrI4
  loc_A84B9A: FStStrNoPop var_98
  loc_A84B9D: ConcatStr
  loc_A84B9E: FStStrNoPop var_9C
  loc_A84BA1: LitStr " AND CodiSece = "
  loc_A84BA4: ConcatStr
  loc_A84BA5: FStStrNoPop var_A0
  loc_A84BA8: FLdI2 CodiSece
  loc_A84BAB: CStrUI1
  loc_A84BAD: FStStrNoPop var_A4
  loc_A84BB0: ConcatStr
  loc_A84BB1: FStStrNoPop var_A8
  loc_A84BB4: LitStr " AND CodiSedi = "
  loc_A84BB7: ConcatStr
  loc_A84BB8: FStStrNoPop var_AC
  loc_A84BBB: FLdI2 CodiSedi
  loc_A84BBE: CStrUI1
  loc_A84BC0: FStStrNoPop var_B0
  loc_A84BC3: ConcatStr
  loc_A84BC4: FStStrNoPop var_B4
  loc_A84BC7: Call Proc_82_37_A4B96C()
  loc_A84BCC: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A84BDF: FLdRfVar var_B8
  loc_A84BE2: FLdPr Me
  loc_A84BE5: MemLdPr global_64
  loc_A84BE8:  = Me.RecordCount
  loc_A84BED: ILdRf var_B8
  loc_A84BF0: LitI4 0
  loc_A84BF5: GtI4
  loc_A84BF6: BranchF loc_A84C02
  loc_A84BF9: LitVarStr var_C8, "El registro ya existe. Verifique..."
  loc_A84BFE: FStVarCopy
  loc_A84C02: ExitProcCbHresult
End Function

Public Function NuevoRegistro(CodiDifu, CodiSece) 'AA1D78
  'Data Table: 40E5E4
  loc_AA1CD4: LitStr "SELECT CodiSedi FROM servdifu WHERE CodiDifu = "
  loc_AA1CD7: ILdRf CodiDifu
  loc_AA1CDA: CStrI4
  loc_AA1CDC: FStStrNoPop var_8C
  loc_AA1CDF: ConcatStr
  loc_AA1CE0: FStStrNoPop var_90
  loc_AA1CE3: LitStr " AND CodiSece = "
  loc_AA1CE6: ConcatStr
  loc_AA1CE7: FStStrNoPop NuevoRegistro
  loc_AA1CEA: ILdRf CodiSece
  loc_AA1CED: CStrI4
  loc_AA1CEF: FStStrNoPop var_98
  loc_AA1CF2: ConcatStr
  loc_AA1CF3: FStStrNoPop var_9C
  loc_AA1CF6: LitStr " ORDER BY CodiDifu, CodiSece, CodiSedi DESC LIMIT 1"
  loc_AA1CF9: ConcatStr
  loc_AA1CFA: FStStrNoPop var_A0
  loc_AA1CFD: Call Proc_82_37_A4B96C()
  loc_AA1D02: FFreeStr var_8C = "": var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = ""
  loc_AA1D11: FLdRfVar var_A4
  loc_AA1D14: FLdPr Me
  loc_AA1D17: MemLdPr global_64
  loc_AA1D1A:  = Me.RecordCount
  loc_AA1D1F: ILdRf var_A4
  loc_AA1D22: LitI4 0
  loc_AA1D27: GtI4
  loc_AA1D28: BranchF loc_AA1D6D
  loc_AA1D2B: FLdRfVar var_CC
  loc_AA1D2E: FLdRfVar var_BC
  loc_AA1D31: LitVarStr var_B8, "CodiSedi"
  loc_AA1D36: PopAdLdVar
  loc_AA1D37: FLdRfVar var_A8
  loc_AA1D3A: FLdPr Me
  loc_AA1D3D: MemLdPr global_64
  loc_AA1D40:  = Me.Fields
  loc_AA1D45: FLdPr var_A8
  loc_AA1D48: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1D4D: FLdPr var_BC
  loc_AA1D50:  = Me.Value
  loc_AA1D55: FLdRfVar var_CC
  loc_AA1D58: FnCIntVar
  loc_AA1D5A: LitI2_Byte 1
  loc_AA1D5C: AddI2
  loc_AA1D5D: FStI2 var_86
  loc_AA1D60: FFreeAd var_A8 = ""
  loc_AA1D67: FFree1Var var_CC = ""
  loc_AA1D6A: Branch loc_AA1D72
  loc_AA1D6D: LitI2_Byte 1
  loc_AA1D6F: FStI2 var_86
  loc_AA1D72: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A60E04
  'Data Table: 40E5E4
  loc_A60DA0: ILdRf sSelect
  loc_A60DA3: FStStrCopy var_88
  loc_A60DA6: LitNothing
  loc_A60DA8: CastAd
  loc_A60DAB: FStAdFuncNoPop
  loc_A60DAE: FLdPr Me
  loc_A60DB1: MemStAd
  loc_A60DB5: FFree1Ad var_8C
  loc_A60DB8: New Recordset
  loc_A60DBC: FStAdFuncNoPop
  loc_A60DBF: FLdPr Me
  loc_A60DC2: MemStAd
  loc_A60DC6: FFree1Ad var_8C
  loc_A60DC9: LitI4 -1
  loc_A60DCE: LitI4 3
  loc_A60DD3: LitI4 3
  loc_A60DD8: ImpAdLdI4 MemVar_D9301C
  loc_A60DDB: CVarAd
  loc_A60DDF: PopAdLdVar
  loc_A60DE0: ILdRf var_88
  loc_A60DE3: CVarStr var_9C
  loc_A60DE6: PopAdLdVar
  loc_A60DE7: FLdPr Me
  loc_A60DEA: MemLdPr global_60
  loc_A60DED: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A60DF2: LitVarStr var_9C, "Primary"
  loc_A60DF7: PopAdLdVar
  loc_A60DF8: FLdPr Me
  loc_A60DFB: LateIdCall
  loc_A60E03: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A4B9F8
  'Data Table: 40E5E4
  loc_A4B9A4: ILdRf sSelect
  loc_A4B9A7: FStStrCopy var_88
  loc_A4B9AA: LitNothing
  loc_A4B9AC: CastAd
  loc_A4B9AF: FStAdFuncNoPop
  loc_A4B9B2: FLdPr Me
  loc_A4B9B5: MemStAd
  loc_A4B9B9: FFree1Ad var_8C
  loc_A4B9BC: New Recordset
  loc_A4B9C0: FStAdFuncNoPop
  loc_A4B9C3: FLdPr Me
  loc_A4B9C6: MemStAd
  loc_A4B9CA: FFree1Ad var_8C
  loc_A4B9CD: LitI4 -1
  loc_A4B9D2: LitI4 3
  loc_A4B9D7: LitI4 3
  loc_A4B9DC: ImpAdLdI4 MemVar_D9301C
  loc_A4B9DF: CVarAd
  loc_A4B9E3: PopAdLdVar
  loc_A4B9E4: ILdRf var_88
  loc_A4B9E7: CVarStr var_9C
  loc_A4B9EA: PopAdLdVar
  loc_A4B9EB: FLdPr Me
  loc_A4B9EE: MemLdPr global_68
  loc_A4B9F1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4B9F6: ExitProcHresult
End Sub

Public Property Get DataSource() '9F259C
  'Data Table: 40E5E4
  loc_9F2578: ZeroRetVal
  loc_9F257A: FLdRfVar var_8C
  loc_9F257D: FLdPr Me
  loc_9F2580: MemLdPr global_60
  loc_9F2583:  = Me.DataSource
  loc_9F2588: ILdRf var_8C
  loc_9F258B: CastAd
  loc_9F258E: FStAdFunc var_88
  loc_9F2591: FFree1Ad var_8C
  loc_9F2594: ExitProcCbHresult
End Sub

Public Property Get CodiDifu() 'A29924
  'Data Table: 40E5E4
  loc_A298E0: FLdRfVar var_B0
  loc_A298E3: FLdRfVar var_A0
  loc_A298E6: LitVarStr var_9C, "CodiDifu"
  loc_A298EB: PopAdLdVar
  loc_A298EC: FLdRfVar var_8C
  loc_A298EF: FLdPr Me
  loc_A298F2: MemLdPr global_60
  loc_A298F5:  = Me.Fields
  loc_A298FA: FLdPr var_8C
  loc_A298FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29902: FLdPr var_A0
  loc_A29905:  = Me.Value
  loc_A2990A: FLdRfVar var_B0
  loc_A2990D: CI4Var
  loc_A2990F: FStR4 var_88
  loc_A29912: FFreeAd var_8C = ""
  loc_A29919: FFree1Var var_B0 = ""
  loc_A2991C: ExitProcCbHresult
  loc_A29922: FLdR8 arg_6C00
End Sub

Public Property Get CodiSece() 'A29B24
  'Data Table: 40E5E4
  loc_A29AE0: FLdRfVar var_B0
  loc_A29AE3: FLdRfVar var_A0
  loc_A29AE6: LitVarStr var_9C, "CodiSece"
  loc_A29AEB: PopAdLdVar
  loc_A29AEC: FLdRfVar var_8C
  loc_A29AEF: FLdPr Me
  loc_A29AF2: MemLdPr global_60
  loc_A29AF5:  = Me.Fields
  loc_A29AFA: FLdPr var_8C
  loc_A29AFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A29B02: FLdPr var_A0
  loc_A29B05:  = Me.Value
  loc_A29B0A: FLdRfVar var_B0
  loc_A29B0D: CI2Var
  loc_A29B0E: FStI2 var_86
  loc_A29B11: FFreeAd var_8C = ""
  loc_A29B18: FFree1Var var_B0 = ""
  loc_A29B1B: ExitProcCbHresult
End Sub

Public Property Get CodiSedi() 'A29AA4
  'Data Table: 40E5E4
  loc_A29A60: FLdRfVar var_B0
  loc_A29A63: FLdRfVar var_A0
  loc_A29A66: LitVarStr var_9C, "CodiSedi"
  loc_A29A6B: PopAdLdVar
  loc_A29A6C: FLdRfVar var_8C
  loc_A29A6F: FLdPr Me
  loc_A29A72: MemLdPr global_60
  loc_A29A75:  = Me.Fields
  loc_A29A7A: FLdPr var_8C
  loc_A29A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A29A82: FLdPr var_A0
  loc_A29A85:  = Me.Value
  loc_A29A8A: FLdRfVar var_B0
  loc_A29A8D: CI2Var
  loc_A29A8E: FStI2 var_86
  loc_A29A91: FFreeAd var_8C = ""
  loc_A29A98: FFree1Var var_B0 = ""
  loc_A29A9B: ExitProcCbHresult
End Sub

Public Property Get FealSedi() 'A39A90
  'Data Table: 40E5E4
  loc_A39A4C: ZeroRetVal
  loc_A39A4E: FLdRfVar var_B0
  loc_A39A51: FLdRfVar var_A0
  loc_A39A54: LitVarStr var_9C, "FealSedi"
  loc_A39A59: PopAdLdVar
  loc_A39A5A: FLdRfVar var_8C
  loc_A39A5D: FLdPr Me
  loc_A39A60: MemLdPr global_60
  loc_A39A63:  = Me.Fields
  loc_A39A68: FLdPr var_8C
  loc_A39A6B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39A70: FLdPr var_A0
  loc_A39A73:  = Me.Value
  loc_A39A78: FLdRfVar var_B0
  loc_A39A7B: CStrVarTmp
  loc_A39A7C: FStStr var_88
  loc_A39A7F: FFreeAd var_8C = ""
  loc_A39A86: FFree1Var var_B0 = ""
  loc_A39A89: ExitProcCbHresult
End Sub

Public Property Get FedeSedi() 'A39D24
  'Data Table: 40E5E4
  loc_A39CE0: ZeroRetVal
  loc_A39CE2: FLdRfVar var_B0
  loc_A39CE5: FLdRfVar var_A0
  loc_A39CE8: LitVarStr var_9C, "FedeSedi"
  loc_A39CED: PopAdLdVar
  loc_A39CEE: FLdRfVar var_8C
  loc_A39CF1: FLdPr Me
  loc_A39CF4: MemLdPr global_60
  loc_A39CF7:  = Me.Fields
  loc_A39CFC: FLdPr var_8C
  loc_A39CFF: from_stack_2 = Me.Item(from_stack_1)
  loc_A39D04: FLdPr var_A0
  loc_A39D07:  = Me.Value
  loc_A39D0C: FLdRfVar var_B0
  loc_A39D0F: CStrVarTmp
  loc_A39D10: FStStr var_88
  loc_A39D13: FFreeAd var_8C = ""
  loc_A39D1A: FFree1Var var_B0 = ""
  loc_A39D1D: ExitProcCbHresult
End Sub

Public Property Get FehaSedi() 'A39E2C
  'Data Table: 40E5E4
  loc_A39DE8: ZeroRetVal
  loc_A39DEA: FLdRfVar var_B0
  loc_A39DED: FLdRfVar var_A0
  loc_A39DF0: LitVarStr var_9C, "FehaSedi"
  loc_A39DF5: PopAdLdVar
  loc_A39DF6: FLdRfVar var_8C
  loc_A39DF9: FLdPr Me
  loc_A39DFC: MemLdPr global_60
  loc_A39DFF:  = Me.Fields
  loc_A39E04: FLdPr var_8C
  loc_A39E07: from_stack_2 = Me.Item(from_stack_1)
  loc_A39E0C: FLdPr var_A0
  loc_A39E0F:  = Me.Value
  loc_A39E14: FLdRfVar var_B0
  loc_A39E17: CStrVarTmp
  loc_A39E18: FStStr var_88
  loc_A39E1B: FFreeAd var_8C = ""
  loc_A39E22: FFree1Var var_B0 = ""
  loc_A39E25: ExitProcCbHresult
End Sub

Public Property Get EstaSedi() 'A39EB0
  'Data Table: 40E5E4
  loc_A39E6C: ZeroRetVal
  loc_A39E6E: FLdRfVar var_B0
  loc_A39E71: FLdRfVar var_A0
  loc_A39E74: LitVarStr var_9C, "EstaSedi"
  loc_A39E79: PopAdLdVar
  loc_A39E7A: FLdRfVar var_8C
  loc_A39E7D: FLdPr Me
  loc_A39E80: MemLdPr global_60
  loc_A39E83:  = Me.Fields
  loc_A39E88: FLdPr var_8C
  loc_A39E8B: from_stack_2 = Me.Item(from_stack_1)
  loc_A39E90: FLdPr var_A0
  loc_A39E93:  = Me.Value
  loc_A39E98: FLdRfVar var_B0
  loc_A39E9B: CStrVarTmp
  loc_A39E9C: FStStr var_88
  loc_A39E9F: FFreeAd var_8C = ""
  loc_A39EA6: FFree1Var var_B0 = ""
  loc_A39EA9: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A3A03C
  'Data Table: 40E5E4
  loc_A39FF8: ZeroRetVal
  loc_A39FFA: FLdRfVar var_B0
  loc_A39FFD: FLdRfVar var_A0
  loc_A3A000: LitVarStr var_9C, "CodiUsua"
  loc_A3A005: PopAdLdVar
  loc_A3A006: FLdRfVar var_8C
  loc_A3A009: FLdPr Me
  loc_A3A00C: MemLdPr global_60
  loc_A3A00F:  = Me.Fields
  loc_A3A014: FLdPr var_8C
  loc_A3A017: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A01C: FLdPr var_A0
  loc_A3A01F:  = Me.Value
  loc_A3A024: FLdRfVar var_B0
  loc_A3A027: CStrVarTmp
  loc_A3A028: FStStr var_88
  loc_A3A02B: FFreeAd var_8C = ""
  loc_A3A032: FFree1Var var_B0 = ""
  loc_A3A035: ExitProcCbHresult
End Sub

Public Property Get GastTili() 'A271A4
  'Data Table: 40E5E4
  loc_A27160: FLdRfVar var_B4
  loc_A27163: FLdRfVar var_A4
  loc_A27166: LitVarStr var_A0, "GastTili"
  loc_A2716B: PopAdLdVar
  loc_A2716C: FLdRfVar var_90
  loc_A2716F: FLdPr Me
  loc_A27172: MemLdPr global_60
  loc_A27175:  = Me.Fields
  loc_A2717A: FLdPr var_90
  loc_A2717D: from_stack_2 = Me.Item(from_stack_1)
  loc_A27182: FLdPr var_A4
  loc_A27185:  = Me.Value
  loc_A2718A: FLdRfVar var_B4
  loc_A2718D: CR4Var
  loc_A2718E: FStFPR8 var_8C
  loc_A27191: FFreeAd var_90 = ""
  loc_A27198: FFree1Var var_B4 = ""
  loc_A2719B: ExitProcCbHresult
End Sub

Public Property Get ImpoSece() 'A2A424
  'Data Table: 40E5E4
  loc_A2A3E0: FLdRfVar var_B4
  loc_A2A3E3: FLdRfVar var_A4
  loc_A2A3E6: LitVarStr var_A0, "ImpoSece"
  loc_A2A3EB: PopAdLdVar
  loc_A2A3EC: FLdRfVar var_90
  loc_A2A3EF: FLdPr Me
  loc_A2A3F2: MemLdPr global_60
  loc_A2A3F5:  = Me.Fields
  loc_A2A3FA: FLdPr var_90
  loc_A2A3FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A402: FLdPr var_A4
  loc_A2A405:  = Me.Value
  loc_A2A40A: FLdRfVar var_B4
  loc_A2A40D: CR4Var
  loc_A2A40E: FStFPR8 var_8C
  loc_A2A411: FFreeAd var_90 = ""
  loc_A2A418: FFree1Var var_B4 = ""
  loc_A2A41B: ExitProcCbHresult
End Sub

Public Function ValidaMismoServicio(CodiDifu, CodiSece) 'A82594
  'Data Table: 40E5E4
  loc_A8251C: ZeroRetVal
  loc_A8251E: LitStr "SELECT CodiSedi FROM servdifu WHERE CodiDifu = "
  loc_A82521: ILdRf CodiDifu
  loc_A82524: CStrI4
  loc_A82526: FStStrNoPop var_8C
  loc_A82529: ConcatStr
  loc_A8252A: FStStrNoPop var_90
  loc_A8252D: LitStr " AND CodiSece = "
  loc_A82530: ConcatStr
  loc_A82531: FStStrNoPop ValidaMismoServicio
  loc_A82534: FLdI2 CodiSece
  loc_A82537: CStrUI1
  loc_A82539: FStStrNoPop var_98
  loc_A8253C: ConcatStr
  loc_A8253D: FStStrNoPop var_9C
  loc_A82540: LitStr " AND FehaSedi IS NULL "
  loc_A82543: ConcatStr
  loc_A82544: FStStrNoPop var_A0
  loc_A82547: LitStr " ORDER BY CodiDifu, CodiSece, CodiSedi"
  loc_A8254A: ConcatStr
  loc_A8254B: FStStrNoPop var_A4
  loc_A8254E: Call Proc_82_37_A4B96C()
  loc_A82553: FFreeStr var_8C = "": var_90 = "": ValidaMismoServicio = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A82564: FLdRfVar var_A8
  loc_A82567: FLdPr Me
  loc_A8256A: MemLdPr global_64
  loc_A8256D:  = Me.RecordCount
  loc_A82572: ILdRf var_A8
  loc_A82575: LitI4 0
  loc_A8257A: EqI4
  loc_A8257B: BranchF loc_A82587
  loc_A8257E: LitStr vbNullString
  loc_A82581: FStStrCopy var_88
  loc_A82584: Branch loc_A8258D
  loc_A82587: LitStr "No se puede crear. El servicio que intenta crear ya existe para el registro seleccionado"
  loc_A8258A: FStStrCopy var_88
  loc_A8258D: ExitProcCbHresult
End Function

Private Function Proc_82_36_9F2BB8() '9F2BB8
  'Data Table: 40E5E4
  loc_9F2B94: LitStr "Primary"
  loc_9F2B97: FLdPr Me
  loc_9F2B9A: LateIdLdVar var_94 DispID_4 0
  loc_9F2BA1: CastAdVar Me
  loc_9F2BA5: FStAdFunc var_98
  loc_9F2BA8: FLdPr var_98
  loc_9F2BB0: FFree1Ad var_98
  loc_9F2BB3: FFree1Var var_94 = ""
  loc_9F2BB6: ExitProcHresult
End Function

Private Function Proc_82_37_A4B96C(arg_C) 'A4B96C
  'Data Table: 40E5E4
  loc_A4B918: ILdRf arg_C
  loc_A4B91B: FStStrCopy var_88
  loc_A4B91E: LitNothing
  loc_A4B920: CastAd
  loc_A4B923: FStAdFuncNoPop
  loc_A4B926: FLdPr Me
  loc_A4B929: MemStAd
  loc_A4B92D: FFree1Ad var_8C
  loc_A4B930: New Recordset
  loc_A4B934: FStAdFuncNoPop
  loc_A4B937: FLdPr Me
  loc_A4B93A: MemStAd
  loc_A4B93E: FFree1Ad var_8C
  loc_A4B941: LitI4 -1
  loc_A4B946: LitI4 3
  loc_A4B94B: LitI4 3
  loc_A4B950: ImpAdLdI4 MemVar_D9301C
  loc_A4B953: CVarAd
  loc_A4B957: PopAdLdVar
  loc_A4B958: ILdRf var_88
  loc_A4B95B: CVarStr var_9C
  loc_A4B95E: PopAdLdVar
  loc_A4B95F: FLdPr Me
  loc_A4B962: MemLdPr global_64
  loc_A4B965: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4B96A: ExitProcHresult
End Function

Private Function Proc_82_38_9E302C(arg_C) '9E302C
  'Data Table: 40E5E4
  loc_9E3010: ILdI4 arg_C
  loc_9E3013: FStStrCopy var_88
  loc_9E3016: ILdRf var_88
  loc_9E3019: LitStr "Primary"
  loc_9E301C: EqStr
  loc_9E301E: BranchF loc_9E302B
  loc_9E3021: FLdPr Me
  loc_9E3024: MemLdStr global_60
  loc_9E3027: IStAd
  loc_9E302B: ExitProcHresult
End Function
