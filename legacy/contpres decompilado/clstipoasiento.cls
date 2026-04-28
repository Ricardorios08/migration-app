VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipoasiento"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40AE64
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40AE73
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40AE82
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96DA4C
  'Data Table: 40ACCC
  loc_96DA24: FLdRfVar var_88
  loc_96DA27: FLdPr Me
  loc_96DA2A: MemLdPr RsFrm
  loc_96DA2D:  = Me.RecordCount
  loc_96DA32: ILdRf var_88
  loc_96DA35: LitI4 0
  loc_96DA3A: GtI4
  loc_96DA3B: BranchF loc_96DA49
  loc_96DA3E: FLdPr Me
  loc_96DA41: MemLdPr RsFrm
  loc_96DA44: Me.MoveFirst
  loc_96DA49: ExitProcHresult
  loc_96DA4A: MulCy
End Sub

Public Sub MoveLast() '96D99C
  'Data Table: 40ACCC
  loc_96D974: FLdRfVar var_88
  loc_96D977: FLdPr Me
  loc_96D97A: MemLdPr RsFrm
  loc_96D97D:  = Me.RecordCount
  loc_96D982: ILdRf var_88
  loc_96D985: LitI4 0
  loc_96D98A: GtI4
  loc_96D98B: BranchF loc_96D999
  loc_96D98E: FLdPr Me
  loc_96D991: MemLdPr RsFrm
  loc_96D994: Me.MoveLast
  loc_96D999: ExitProcHresult
  loc_96D99A: CStr2Ansi
End Sub

Public Sub MoveNext() '99E318
  'Data Table: 40ACCC
  loc_99E2A0: FLdRfVar var_86
  loc_99E2A3: FLdPr Me
  loc_99E2A6: MemLdPr RsFrm
  loc_99E2A9:  = Me.EOF
  loc_99E2AE: FLdI2 var_86
  loc_99E2B1: NotI4
  loc_99E2B2: FLdRfVar var_8C
  loc_99E2B5: FLdPr Me
  loc_99E2B8: MemLdPr RsFrm
  loc_99E2BB:  = Me.RecordCount
  loc_99E2C0: ILdRf var_8C
  loc_99E2C3: LitI4 0
  loc_99E2C8: GtI4
  loc_99E2C9: AndI4
  loc_99E2CA: BranchF loc_99E2D8
  loc_99E2CD: FLdPr Me
  loc_99E2D0: MemLdPr RsFrm
  loc_99E2D3: Me.MoveNext
  loc_99E2D8: FLdRfVar var_86
  loc_99E2DB: FLdPr Me
  loc_99E2DE: MemLdPr RsFrm
  loc_99E2E1:  = Me.EOF
  loc_99E2E6: FLdI2 var_86
  loc_99E2E9: FLdRfVar var_8C
  loc_99E2EC: FLdPr Me
  loc_99E2EF: MemLdPr RsFrm
  loc_99E2F2:  = Me.RecordCount
  loc_99E2F7: ILdRf var_8C
  loc_99E2FA: LitI4 0
  loc_99E2FF: GtI4
  loc_99E300: AndI4
  loc_99E301: BranchF loc_99E314
  loc_99E304: ImpAdCallFPR4 Beep()
  loc_99E309: FLdPr Me
  loc_99E30C: MemLdPr RsFrm
  loc_99E30F: Me.MoveLast
  loc_99E314: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '940F04
  'Data Table: 40ACCC
  loc_940EF8: FLdPr Me
  loc_940EFB: MemLdPr RsFrm
  loc_940EFE: Me.MoveNext
  loc_940F03: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E3C0
  'Data Table: 40ACCC
  loc_99E348: FLdRfVar var_86
  loc_99E34B: FLdPr Me
  loc_99E34E: MemLdPr RsFrm
  loc_99E351:  = Me.BOF
  loc_99E356: FLdI2 var_86
  loc_99E359: NotI4
  loc_99E35A: FLdRfVar var_8C
  loc_99E35D: FLdPr Me
  loc_99E360: MemLdPr RsFrm
  loc_99E363:  = Me.RecordCount
  loc_99E368: ILdRf var_8C
  loc_99E36B: LitI4 0
  loc_99E370: GtI4
  loc_99E371: AndI4
  loc_99E372: BranchF loc_99E380
  loc_99E375: FLdPr Me
  loc_99E378: MemLdPr RsFrm
  loc_99E37B: Me.MovePrevious
  loc_99E380: FLdRfVar var_86
  loc_99E383: FLdPr Me
  loc_99E386: MemLdPr RsFrm
  loc_99E389:  = Me.BOF
  loc_99E38E: FLdI2 var_86
  loc_99E391: FLdRfVar var_8C
  loc_99E394: FLdPr Me
  loc_99E397: MemLdPr RsFrm
  loc_99E39A:  = Me.RecordCount
  loc_99E39F: ILdRf var_8C
  loc_99E3A2: LitI4 0
  loc_99E3A7: GtI4
  loc_99E3A8: AndI4
  loc_99E3A9: BranchF loc_99E3BC
  loc_99E3AC: ImpAdCallFPR4 Beep()
  loc_99E3B1: FLdPr Me
  loc_99E3B4: MemLdPr RsFrm
  loc_99E3B7: Me.MoveFirst
  loc_99E3BC: ExitProcHresult
  loc_99E3BD: Branch loc_99E4A4
End Sub

Public Property Get EOF() '958380
  'Data Table: 40ACCC
  loc_958364: FLdRfVar var_88
  loc_958367: FLdPr Me
  loc_95836A: MemLdPr RsFrm
  loc_95836D:  = Me.EOF
  loc_958372: FLdI2 var_88
  loc_958375: FStI2 var_86
  loc_958378: ExitProcCbHresult
End Sub

Public Property Get BOF() '958334
  'Data Table: 40ACCC
  loc_958318: FLdRfVar var_88
  loc_95831B: FLdPr Me
  loc_95831E: MemLdPr RsFrm
  loc_958321:  = Me.BOF
  loc_958326: FLdI2 var_88
  loc_958329: FStI2 var_86
  loc_95832C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '947384
  'Data Table: 40ACCC
  loc_947374: ILdI4 sOrden
  loc_947377: FLdPr Me
  loc_94737A: MemLdPr RsFrm
  loc_94737D: Me.Sort = from_stack_1
  loc_947382: ExitProcHresult
End Sub

Public Sub Find(sFind) '969C90
  'Data Table: 40ACCC
  loc_969C70: LitVar_Missing var_94
  loc_969C73: PopAdLdVar
  loc_969C74: LitI4 1
  loc_969C79: LitI4 0
  loc_969C7E: ILdI4 sFind
  loc_969C81: FLdPr Me
  loc_969C84: MemLdPr RsFrm
  loc_969C87: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_969C8C: ExitProcHresult
  loc_969C8D: FStAdFunc var_A8
End Sub

Public Sub Filter(sCriterio) '9485F4
  'Data Table: 40ACCC
  loc_9485E0: ILdI4 sCriterio
  loc_9485E3: CVarStr var_94
  loc_9485E6: PopAdLdVar
  loc_9485E7: FLdPr Me
  loc_9485EA: MemLdPr RsFrm
  loc_9485ED: Me.Filter = from_stack_1
  loc_9485F2: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '958250
  'Data Table: 40ACCC
  loc_958234: FLdRfVar var_8C
  loc_958237: FLdPr Me
  loc_95823A: MemLdPr RsFrm
  loc_95823D:  = Me.AbsolutePosition
  loc_958242: ILdRf var_8C
  loc_958245: FStR4 var_88
  loc_958248: ExitProcCbHresult
  loc_95824E: FLdPr arg_5400
End Sub

Public Property Get RecordCount() '962384
  'Data Table: 40ACCC
  loc_962368: FLdRfVar var_8C
  loc_96236B: FLdPr Me
  loc_96236E: MemLdPr RsFrm
  loc_962371:  = Me.RecordCount
  loc_962376: ILdRf var_8C
  loc_962379: FStR4 var_88
  loc_96237C: ExitProcCbHresult
End Sub

Public Sub AddNew(DetaTias, FijoTias) '9A8108
  'Data Table: 40ACCC
  loc_9A8094: ILdRf DetaTias
  loc_9A8097: FStStrCopy var_88
  loc_9A809A: FLdRfVar var_8C
  loc_9A809D: from_stack_1v = NuevoRegistro()
  loc_9A80A2: FLdUI1
  loc_9A80A6: FStUI1 var_8A
  loc_9A80AA: LitStr "INSERT INTO tipoasiento VALUES ("
  loc_9A80AD: FLdUI1
  loc_9A80B1: CStrI2
  loc_9A80B3: FStStrNoPop var_90
  loc_9A80B6: ConcatStr
  loc_9A80B7: FStStrNoPop var_94
  loc_9A80BA: LitStr ",'"
  loc_9A80BD: ConcatStr
  loc_9A80BE: FStStrNoPop var_98
  loc_9A80C1: ILdRf var_88
  loc_9A80C4: ConcatStr
  loc_9A80C5: FStStrNoPop var_9C
  loc_9A80C8: LitStr "',"
  loc_9A80CB: ConcatStr
  loc_9A80CC: FStStrNoPop var_A0
  loc_9A80CF: FLdUI1
  loc_9A80D3: CStrI2
  loc_9A80D5: FStStrNoPop var_A4
  loc_9A80D8: ConcatStr
  loc_9A80D9: FStStrNoPop var_A8
  loc_9A80DC: LitStr ")"
  loc_9A80DF: ConcatStr
  loc_9A80E0: FStStrNoPop var_AC
  loc_9A80E3: Call EjecutarRsCls(from_stack_1v)
  loc_9A80E8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9A80FB: FLdUI1
  loc_9A80FF: CI2UI1
  loc_9A8101: Call Encontrar(from_stack_1v)
  loc_9A8106: ExitProcHresult
End Sub

Public Sub Modificar(CodiTias, DetaTias) '98C76C
  'Data Table: 40ACCC
  loc_98C730: LitStr "UPDATE tipoasiento SET DetaTias='"
  loc_98C733: ILdI4 DetaTias
  loc_98C736: ConcatStr
  loc_98C737: FStStrNoPop var_88
  loc_98C73A: LitStr "' WHERE CodiTias="
  loc_98C73D: ConcatStr
  loc_98C73E: FStStrNoPop var_8C
  loc_98C741: FLdUI1
  loc_98C745: CStrI2
  loc_98C747: FStStrNoPop var_90
  loc_98C74A: ConcatStr
  loc_98C74B: FStStrNoPop var_94
  loc_98C74E: Call EjecutarRsCls(from_stack_1v)
  loc_98C753: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_98C75E: FLdUI1
  loc_98C762: CI2UI1
  loc_98C764: Call Encontrar(from_stack_1v)
  loc_98C769: ExitProcHresult
  loc_98C76A: GtI4
End Sub

Public Sub Eliminar(CodiTias) '9A40C0
  'Data Table: 40ACCC
  loc_9A4044: LitStr "DELETE FROM tipoasiento WHERE CodiTias="
  loc_9A4047: FLdUI1
  loc_9A404B: CStrI2
  loc_9A404D: FStStrNoPop var_88
  loc_9A4050: ConcatStr
  loc_9A4051: FStStrNoPop var_8C
  loc_9A4054: Call EjecutarRsCls(from_stack_1v)
  loc_9A4059: FFreeStr var_88 = ""
  loc_9A4060: FLdRfVar var_94
  loc_9A4063: FLdPr Me
  loc_9A4066: MemLdPr RsFrm
  loc_9A4069:  = Me.AbsolutePosition
  loc_9A406E: ILdRf var_94
  loc_9A4071: FStR4 var_90
  loc_9A4074: Call Requery()
  loc_9A4079: FLdRfVar var_94
  loc_9A407C: FLdPr Me
  loc_9A407F: MemLdPr RsFrm
  loc_9A4082:  = Me.RecordCount
  loc_9A4087: ILdRf var_94
  loc_9A408A: LitI4 0
  loc_9A408F: GtI4
  loc_9A4090: BranchF loc_9A40BC
  loc_9A4093: Call MoveFirst()
  loc_9A4098: ILdRf var_90
  loc_9A409B: LitI4 1
  loc_9A40A0: GtI4
  loc_9A40A1: BranchF loc_9A40BC
  loc_9A40A4: LitVar_Missing var_A4
  loc_9A40A7: PopAdLdVar
  loc_9A40A8: ILdRf var_90
  loc_9A40AB: LitI4 2
  loc_9A40B0: SubI4
  loc_9A40B1: FLdPr Me
  loc_9A40B4: MemLdPr RsFrm
  loc_9A40B7: Me.Move from_stack_1, from_stack_2
  loc_9A40BC: ExitProcHresult
  loc_9A40BF: CStr2Ansi
End Sub

Public Function NuevoRegistro() '9A4170
  'Data Table: 40ACCC
  loc_9A40F8: LitStr "SELECT * FROM tipoasiento ORDER BY CodiTias DESC LIMIT 1"
  loc_9A40FB: Call EjecutarRsCls(from_stack_1v)
  loc_9A4100: FLdRfVar var_8C
  loc_9A4103: FLdPr Me
  loc_9A4106: MemLdPr global_56
  loc_9A4109:  = Me.RecordCount
  loc_9A410E: ILdRf var_8C
  loc_9A4111: LitI4 0
  loc_9A4116: GtI4
  loc_9A4117: BranchF loc_9A4161
  loc_9A411A: FLdRfVar var_B4
  loc_9A411D: FLdRfVar var_A4
  loc_9A4120: LitVarStr var_A0, "CodiTias"
  loc_9A4125: PopAdLdVar
  loc_9A4126: FLdRfVar var_90
  loc_9A4129: FLdPr Me
  loc_9A412C: MemLdPr global_56
  loc_9A412F:  = Me.Fields
  loc_9A4134: FLdPr var_90
  loc_9A4137: from_stack_2 = Me.Item(from_stack_1)
  loc_9A413C: FLdPr var_A4
  loc_9A413F:  = Me.Value
  loc_9A4144: FLdRfVar var_B4
  loc_9A4147: FnCByteVar
  loc_9A4149: CI2UI1
  loc_9A414B: LitI2_Byte 1
  loc_9A414D: AddI2
  loc_9A414E: CUI1I2
  loc_9A4150: FStUI1 var_86
  loc_9A4154: FFreeAd var_90 = ""
  loc_9A415B: FFree1Var var_B4 = ""
  loc_9A415E: Branch loc_9A4169
  loc_9A4161: LitI2_Byte 1
  loc_9A4163: CUI1I2
  loc_9A4165: FStUI1 var_86
  loc_9A4169: ExitProcCbHresult
End Function

Public Sub Encontrar(CodiTias) '97CF18
  'Data Table: 40ACCC
  loc_97CEEC: Call Requery()
  loc_97CEF1: LitStr "CodiTias = '"
  loc_97CEF4: FLdI2 CodiTias
  loc_97CEF7: CStrUI1
  loc_97CEF9: FStStrNoPop var_88
  loc_97CEFC: ConcatStr
  loc_97CEFD: FStStrNoPop var_8C
  loc_97CF00: LitStr "'"
  loc_97CF03: ConcatStr
  loc_97CF04: PopTmpLdAdStr
  loc_97CF08: Call Find(from_stack_1v)
  loc_97CF0D: FFreeStr var_88 = "": var_8C = ""
  loc_97CF16: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '97412C
  'Data Table: 40ACCC
  loc_974104: ILdRf sSelect
  loc_974107: FStStrCopy var_88
  loc_97410A: FLdPr Me
  loc_97410D: MemLdRfVar from_stack_1.RsFrm
  loc_974110: ILdRf var_88
  loc_974113: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974118: LitVarStr var_98, "Primary"
  loc_97411D: PopAdLdVar
  loc_97411E: FLdPr Me
  loc_974121: LateIdCall
  loc_974129: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '962334
  'Data Table: 40ACCC
  loc_96231C: ILdRf sSelect
  loc_96231F: FStStrCopy var_88
  loc_962322: FLdPr Me
  loc_962325: MemLdRfVar from_stack_1.global_56
  loc_962328: ILdRf var_88
  loc_96232B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_962330: ExitProcHresult
End Sub

Public Sub Requery() '969CE0
  'Data Table: 40ACCC
  loc_969CC0: FLdPr Me
  loc_969CC3: MemLdRfVar from_stack_1.RsFrm
  loc_969CC6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_969CCB: LitVarStr var_94, "Primary"
  loc_969CD0: PopAdLdVar
  loc_969CD1: FLdPr Me
  loc_969CD4: LateIdCall
  loc_969CDC: ExitProcHresult
End Sub

Public Property Get DataSource() '974070
  'Data Table: 40ACCC
  loc_97404C: ZeroRetVal
  loc_97404E: FLdRfVar var_8C
  loc_974051: FLdPr Me
  loc_974054: MemLdPr RsFrm
  loc_974057:  = Me.DataSource
  loc_97405C: ILdRf var_8C
  loc_97405F: CastAd
  loc_974062: FStAdFunc var_88
  loc_974065: FFree1Ad var_8C
  loc_974068: ExitProcCbHresult
  loc_97406E: LeCy
End Sub

Public Function ValidaModificar(CodiTias) '993940
  'Data Table: 40ACCC
  loc_9938F0: ZeroRetVal
  loc_9938F2: LitStr "SELECT * FROM tipoasiento WHERE CodiTias = "
  loc_9938F5: FLdUI1
  loc_9938F9: CStrI2
  loc_9938FB: FStStrNoPop var_8C
  loc_9938FE: ConcatStr
  loc_9938FF: FStStrNoPop var_90
  loc_993902: LitStr " AND FijoTias = 1"
  loc_993905: ConcatStr
  loc_993906: FStStrNoPop ValidaModificar
  loc_993909: Call EjecutarRsCls(from_stack_1v)
  loc_99390E: FFreeStr var_8C = "": var_90 = ""
  loc_993917: FLdRfVar var_98
  loc_99391A: FLdPr Me
  loc_99391D: MemLdPr global_56
  loc_993920:  = Me.RecordCount
  loc_993925: ILdRf var_98
  loc_993928: LitI4 0
  loc_99392D: GtI4
  loc_99392E: BranchF loc_993937
  loc_993931: LitStr "El Tipo de Asiento es de Parámetros. Verifique..."
  loc_993934: FStStrCopy var_88
  loc_993937: ExitProcCbHresult
End Function

Public Function ValidaEliminar(CodiTias) '9AB280
  'Data Table: 40ACCC
  loc_9AB1E8: ZeroRetVal
  loc_9AB1EA: LitStr "SELECT * FROM tipoasiento WHERE CodiTias = "
  loc_9AB1ED: FLdUI1
  loc_9AB1F1: CStrI2
  loc_9AB1F3: FStStrNoPop var_8C
  loc_9AB1F6: ConcatStr
  loc_9AB1F7: FStStrNoPop var_90
  loc_9AB1FA: LitStr " AND FijoTias = 1"
  loc_9AB1FD: ConcatStr
  loc_9AB1FE: FStStrNoPop ValidaEliminar
  loc_9AB201: Call EjecutarRsCls(from_stack_1v)
  loc_9AB206: FFreeStr var_8C = "": var_90 = ""
  loc_9AB20F: FLdRfVar var_98
  loc_9AB212: FLdPr Me
  loc_9AB215: MemLdPr global_56
  loc_9AB218:  = Me.RecordCount
  loc_9AB21D: ILdRf var_98
  loc_9AB220: LitI4 0
  loc_9AB225: GtI4
  loc_9AB226: BranchF loc_9AB235
  loc_9AB229: LitStr "El Tipo de Asiento es de Parámetros. Verifique..."
  loc_9AB22C: FStStrCopy var_88
  loc_9AB22F: ExitProcCbHresult
  loc_9AB235: LitStr "SELECT * FROM asiento WHERE CodiTias = "
  loc_9AB238: FLdUI1
  loc_9AB23C: CStrI2
  loc_9AB23E: FStStrNoPop var_8C
  loc_9AB241: ConcatStr
  loc_9AB242: FStStrNoPop var_90
  loc_9AB245: Call EjecutarRsCls(from_stack_1v)
  loc_9AB24A: FFreeStr var_8C = ""
  loc_9AB251: FLdRfVar var_98
  loc_9AB254: FLdPr Me
  loc_9AB257: MemLdPr global_56
  loc_9AB25A:  = Me.RecordCount
  loc_9AB25F: ILdRf var_98
  loc_9AB262: LitI4 0
  loc_9AB267: GtI4
  loc_9AB268: BranchF loc_9AB277
  loc_9AB26B: LitStr "El Tipo de Asiento está incluido en un Asiento. Verifique..."
  loc_9AB26E: FStStrCopy var_88
  loc_9AB271: ExitProcCbHresult
  loc_9AB277: ExitProcCbHresult
End Function

Private Function Proc_32_26_974298() '974298
  'Data Table: 40ACCC
  loc_974274: LitStr "Primary"
  loc_974277: FLdPr Me
  loc_97427A: LateIdLdVar var_94 DispID_4 0
  loc_974281: CastAdVar Me
  loc_974285: FStAdFunc var_98
  loc_974288: FLdPr var_98
  loc_974290: FFree1Ad var_98
  loc_974293: FFree1Var var_94 = ""
  loc_974296: ExitProcHresult
End Function

Private Function Proc_32_27_969D2C(arg_C) '969D2C
  'Data Table: 40ACCC
  loc_969D10: ILdI4 arg_C
  loc_969D13: FStStrCopy var_88
  loc_969D16: ILdRf var_88
  loc_969D19: LitStr "Primary"
  loc_969D1C: EqStr
  loc_969D1E: BranchF loc_969D2B
  loc_969D21: FLdPr Me
  loc_969D24: MemLdStr RsFrm
  loc_969D27: IStAd
  loc_969D2B: ExitProcHresult
End Function
