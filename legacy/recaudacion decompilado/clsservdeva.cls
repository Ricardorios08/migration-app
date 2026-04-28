VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservdeva"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '4086C0
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '4086CF
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '4086DE
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '9FD538
  'Data Table: 408494
  loc_9FD508: FLdRfVar var_88
  loc_9FD50B: FLdPr Me
  loc_9FD50E: MemLdPr RsFrm
  loc_9FD511:  = Me.RecordCount
  loc_9FD516: ILdRf var_88
  loc_9FD519: LitI4 0
  loc_9FD51E: GtI4
  loc_9FD51F: BranchF loc_9FD534
  loc_9FD522: LitVar_Missing var_98
  loc_9FD525: PopAdLdVar
  loc_9FD526: ILdI4 iCantidad
  loc_9FD529: FLdPr Me
  loc_9FD52C: MemLdPr RsFrm
  loc_9FD52F: Me.Move from_stack_1, from_stack_2
  loc_9FD534: ExitProcHresult
End Sub

Public Sub MoveFirst() '9ECD2C
  'Data Table: 408494
  loc_9ECD04: FLdRfVar var_88
  loc_9ECD07: FLdPr Me
  loc_9ECD0A: MemLdPr RsFrm
  loc_9ECD0D:  = Me.RecordCount
  loc_9ECD12: ILdRf var_88
  loc_9ECD15: LitI4 0
  loc_9ECD1A: GtI4
  loc_9ECD1B: BranchF loc_9ECD29
  loc_9ECD1E: FLdPr Me
  loc_9ECD21: MemLdPr RsFrm
  loc_9ECD24: Me.MoveFirst
  loc_9ECD29: ExitProcHresult
End Sub

Public Sub MoveLast() '9ECB1C
  'Data Table: 408494
  loc_9ECAF4: FLdRfVar var_88
  loc_9ECAF7: FLdPr Me
  loc_9ECAFA: MemLdPr RsFrm
  loc_9ECAFD:  = Me.RecordCount
  loc_9ECB02: ILdRf var_88
  loc_9ECB05: LitI4 0
  loc_9ECB0A: GtI4
  loc_9ECB0B: BranchF loc_9ECB19
  loc_9ECB0E: FLdPr Me
  loc_9ECB11: MemLdPr RsFrm
  loc_9ECB14: Me.MoveLast
  loc_9ECB19: ExitProcHresult
End Sub

Public Sub MoveNext() 'A69D90
  'Data Table: 408494
  loc_A69D18: FLdRfVar var_86
  loc_A69D1B: FLdPr Me
  loc_A69D1E: MemLdPr RsFrm
  loc_A69D21:  = Me.EOF
  loc_A69D26: FLdI2 var_86
  loc_A69D29: NotI4
  loc_A69D2A: FLdRfVar var_8C
  loc_A69D2D: FLdPr Me
  loc_A69D30: MemLdPr RsFrm
  loc_A69D33:  = Me.RecordCount
  loc_A69D38: ILdRf var_8C
  loc_A69D3B: LitI4 0
  loc_A69D40: GtI4
  loc_A69D41: AndI4
  loc_A69D42: BranchF loc_A69D50
  loc_A69D45: FLdPr Me
  loc_A69D48: MemLdPr RsFrm
  loc_A69D4B: Me.MoveNext
  loc_A69D50: FLdRfVar var_86
  loc_A69D53: FLdPr Me
  loc_A69D56: MemLdPr RsFrm
  loc_A69D59:  = Me.EOF
  loc_A69D5E: FLdI2 var_86
  loc_A69D61: FLdRfVar var_8C
  loc_A69D64: FLdPr Me
  loc_A69D67: MemLdPr RsFrm
  loc_A69D6A:  = Me.RecordCount
  loc_A69D6F: ILdRf var_8C
  loc_A69D72: LitI4 0
  loc_A69D77: GtI4
  loc_A69D78: AndI4
  loc_A69D79: BranchF loc_A69D8C
  loc_A69D7C: ImpAdCallFPR4 Beep()
  loc_A69D81: FLdPr Me
  loc_A69D84: MemLdPr RsFrm
  loc_A69D87: Me.MoveLast
  loc_A69D8C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1EFC
  'Data Table: 408494
  loc_9B1EF0: FLdPr Me
  loc_9B1EF3: MemLdPr RsFrm
  loc_9B1EF6: Me.MoveNext
  loc_9B1EFB: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BAB68
  'Data Table: 408494
  loc_9BAB54: LitVar_Missing var_94
  loc_9BAB57: PopAdLdVar
  loc_9BAB58: ILdI2 iValor
  loc_9BAB5B: CI4UI1
  loc_9BAB5C: FLdPr Me
  loc_9BAB5F: MemLdPr RsFrm
  loc_9BAB62: Me.Move from_stack_1, from_stack_2
  loc_9BAB67: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A695B0
  'Data Table: 408494
  loc_A69538: FLdRfVar var_86
  loc_A6953B: FLdPr Me
  loc_A6953E: MemLdPr RsFrm
  loc_A69541:  = Me.BOF
  loc_A69546: FLdI2 var_86
  loc_A69549: NotI4
  loc_A6954A: FLdRfVar var_8C
  loc_A6954D: FLdPr Me
  loc_A69550: MemLdPr RsFrm
  loc_A69553:  = Me.RecordCount
  loc_A69558: ILdRf var_8C
  loc_A6955B: LitI4 0
  loc_A69560: GtI4
  loc_A69561: AndI4
  loc_A69562: BranchF loc_A69570
  loc_A69565: FLdPr Me
  loc_A69568: MemLdPr RsFrm
  loc_A6956B: Me.MovePrevious
  loc_A69570: FLdRfVar var_86
  loc_A69573: FLdPr Me
  loc_A69576: MemLdPr RsFrm
  loc_A69579:  = Me.BOF
  loc_A6957E: FLdI2 var_86
  loc_A69581: FLdRfVar var_8C
  loc_A69584: FLdPr Me
  loc_A69587: MemLdPr RsFrm
  loc_A6958A:  = Me.RecordCount
  loc_A6958F: ILdRf var_8C
  loc_A69592: LitI4 0
  loc_A69597: GtI4
  loc_A69598: AndI4
  loc_A69599: BranchF loc_A695AC
  loc_A6959C: ImpAdCallFPR4 Beep()
  loc_A695A1: FLdPr Me
  loc_A695A4: MemLdPr RsFrm
  loc_A695A7: Me.MoveFirst
  loc_A695AC: ExitProcHresult
  loc_A695AD: PopTmpLdAd8 arg_561C
End Sub

Public Property Get EOF(arg_1C) '9C8BD8
  'Data Table: 408494
  loc_9C8BBC: FLdRfVar var_88
  loc_9C8BBF: FLdPr Me
  loc_9C8BC2: MemLdPr RsFrm
  loc_9C8BC5:  = Me.EOF
  loc_9C8BCA: FLdI2 var_88
  loc_9C8BCD: FStI2 var_86
  loc_9C8BD0: ExitProcCbHresult
  loc_9C8BD6: IStI2 arg_1CFA
End Sub

Public Property Get BOF() '9CBE50
  'Data Table: 408494
  loc_9CBE34: FLdRfVar var_88
  loc_9CBE37: FLdPr Me
  loc_9CBE3A: MemLdPr RsFrm
  loc_9CBE3D:  = Me.BOF
  loc_9CBE42: FLdI2 var_88
  loc_9CBE45: FStI2 var_86
  loc_9CBE48: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B8378
  'Data Table: 408494
  loc_9B8368: ILdI4 sOrden
  loc_9B836B: FLdPr Me
  loc_9B836E: MemLdPr RsFrm
  loc_9B8371: Me.Sort = from_stack_1
  loc_9B8376: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DFB10
  'Data Table: 408494
  loc_9DFAF0: LitVar_Missing var_94
  loc_9DFAF3: PopAdLdVar
  loc_9DFAF4: LitI4 1
  loc_9DFAF9: LitI4 0
  loc_9DFAFE: ILdI4 sFind
  loc_9DFB01: FLdPr Me
  loc_9DFB04: MemLdPr RsFrm
  loc_9DFB07: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DFB0C: ExitProcHresult
  loc_9DFB0D: ILdRf var_88
End Sub

Public Sub Filter(sCriterio) '9DFBB0
  'Data Table: 408494
  loc_9DFB94: On Error Resume Next
  loc_9DFB99: ILdI4 sCriterio
  loc_9DFB9C: CVarStr var_94
  loc_9DFB9F: PopAdLdVar
  loc_9DFBA0: FLdPr Me
  loc_9DFBA3: MemLdPr RsFrm
  loc_9DFBA6: Me.Filter = from_stack_1
  loc_9DFBAD: ExitProcHresult
  loc_9DFBAE: Ary1LdRf
End Sub

Public Property Get AbsolutePosition(arg_1C) '9CBE04
  'Data Table: 408494
  loc_9CBDE8: FLdRfVar var_8C
  loc_9CBDEB: FLdPr Me
  loc_9CBDEE: MemLdPr RsFrm
  loc_9CBDF1:  = Me.AbsolutePosition
  loc_9CBDF6: ILdRf var_8C
  loc_9CBDF9: FStR4 var_88
  loc_9CBDFC: ExitProcCbHresult
  loc_9CBE02: CVarStr arg_1C2C
End Sub

Public Property Get RecordCount() '9CBD20
  'Data Table: 408494
  loc_9CBD04: FLdRfVar var_8C
  loc_9CBD07: FLdPr Me
  loc_9CBD0A: MemLdPr RsFrm
  loc_9CBD0D:  = Me.RecordCount
  loc_9CBD12: ILdRf var_8C
  loc_9CBD15: FStR4 var_88
  loc_9CBD18: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriOrde, CodiSede, DetaSede, PeriInfo, CodiConc, VariSede, CtctSede, ImpoSede, HaceRequery) 'AF5404
  'Data Table: 408494
  loc_AF52A4: ILdRf DetaSede
  loc_AF52A7: FStStrCopy var_88
  loc_AF52AA: ILdRf CodiConc
  loc_AF52AD: FStStrCopy var_8C
  loc_AF52B0: ILdRf VariSede
  loc_AF52B3: FStStrCopy var_90
  loc_AF52B6: ILdRf CtctSede
  loc_AF52B9: FStStrCopy var_94
  loc_AF52BC: FLdRfVar var_9C
  loc_AF52BF: ILdRf CodiSede
  loc_AF52C2: FLdI2 PeriOrde
  loc_AF52C5: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AF52CA: ILdRf var_9C
  loc_AF52CD: LitStr vbNullString
  loc_AF52D0: NeStr
  loc_AF52D2: FFree1Str var_9C
  loc_AF52D5: BranchF loc_AF52E3
  loc_AF52D8: LitStr "El servicio de deudores YA EXISTE. Reintente..."
  loc_AF52DB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF52E0: Branch loc_AF53F1
  loc_AF52E3: LitStr "START TRANSACTION; INSERT INTO servdeva (PeriOrde,CodiSede,DetaSede,PeriInfo,CodiConc,VariSede,CtctSede,ImpoSede,AltaUsua) "
  loc_AF52E6: LitStr " VALUES ("
  loc_AF52E9: ConcatStr
  loc_AF52EA: FStStrNoPop var_9C
  loc_AF52ED: FLdI2 PeriOrde
  loc_AF52F0: CStrUI1
  loc_AF52F2: FStStrNoPop var_A0
  loc_AF52F5: ConcatStr
  loc_AF52F6: FStStrNoPop var_A4
  loc_AF52F9: LitStr ","
  loc_AF52FC: ConcatStr
  loc_AF52FD: FStStrNoPop var_A8
  loc_AF5300: ILdRf CodiSede
  loc_AF5303: CStrI4
  loc_AF5305: FStStrNoPop var_AC
  loc_AF5308: ConcatStr
  loc_AF5309: FStStrNoPop var_B0
  loc_AF530C: LitStr ",'"
  loc_AF530F: ConcatStr
  loc_AF5310: FStStrNoPop var_B4
  loc_AF5313: ILdRf var_88
  loc_AF5316: ConcatStr
  loc_AF5317: FStStrNoPop var_B8
  loc_AF531A: LitStr "',"
  loc_AF531D: ConcatStr
  loc_AF531E: FStStrNoPop var_BC
  loc_AF5321: ImpAdLdI2 MemVar_D93034
  loc_AF5324: CStrUI1
  loc_AF5326: FStStrNoPop var_C0
  loc_AF5329: ConcatStr
  loc_AF532A: FStStrNoPop var_C4
  loc_AF532D: LitStr ",'"
  loc_AF5330: ConcatStr
  loc_AF5331: FStStrNoPop var_C8
  loc_AF5334: ILdRf var_8C
  loc_AF5337: ConcatStr
  loc_AF5338: FStStrNoPop var_CC
  loc_AF533B: LitStr "','"
  loc_AF533E: ConcatStr
  loc_AF533F: FStStrNoPop var_D0
  loc_AF5342: ILdRf var_90
  loc_AF5345: ConcatStr
  loc_AF5346: FStStrNoPop var_D4
  loc_AF5349: LitStr "','"
  loc_AF534C: ConcatStr
  loc_AF534D: FStStrNoPop var_D8
  loc_AF5350: ILdRf var_94
  loc_AF5353: ConcatStr
  loc_AF5354: FStStrNoPop var_DC
  loc_AF5357: LitStr "',"
  loc_AF535A: ConcatStr
  loc_AF535B: FStStrNoPop var_E4
  loc_AF535E: LitI4 0
  loc_AF5363: LitI4 -1
  loc_AF5368: LitI4 1
  loc_AF536D: LitStr "."
  loc_AF5370: LitStr ","
  loc_AF5373: FLdFPR8 ImpoSede
  loc_AF5376: CStrR8
  loc_AF5378: FStStrNoPop var_E0
  loc_AF537B: ImpAdCallI2 Replace(, , , , , )
  loc_AF5380: FStStrNoPop var_E8
  loc_AF5383: ConcatStr
  loc_AF5384: FStStrNoPop var_EC
  loc_AF5387: LitStr ",'"
  loc_AF538A: ConcatStr
  loc_AF538B: FStStrNoPop var_F0
  loc_AF538E: ImpAdLdI4 MemVar_D9302C
  loc_AF5391: ConcatStr
  loc_AF5392: FStStrNoPop var_F4
  loc_AF5395: LitStr "');"
  loc_AF5398: ConcatStr
  loc_AF5399: FStStr var_98
  loc_AF539C: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_AF53CD: OnErrorGoto loc_AF53F2
  loc_AF53D0: ILdRf var_98
  loc_AF53D3: Call Proc_203_30_A484EC()
  loc_AF53D8: LitStr "COMMIT;"
  loc_AF53DB: Call Proc_203_30_A484EC()
  loc_AF53E0: FLdI2 arg_30
  loc_AF53E3: BranchF loc_AF53F1
  loc_AF53E6: ILdRf CodiSede
  loc_AF53E9: FLdI2 PeriOrde
  loc_AF53EC: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AF53F1: ExitProcHresult
  loc_AF53F2: LitStr "ROLLBACK;"
  loc_AF53F5: Call Proc_203_30_A484EC()
  loc_AF53FA: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AF53FD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF5402: ExitProcHresult
End Sub

Public Sub AddNewMigracion(CodiSede, DetaSede, ImpoSede) 'A86EA0
  'Data Table: 408494
  loc_A86E28: ILdRf DetaSede
  loc_A86E2B: FStStrCopy var_88
  loc_A86E2E: LitStr "INSERT INTO servdeva (PeriOrde,CodiSede,DetaSede,PeriInfo,CodiConc,ImpoSede) VALUES (2009,"
  loc_A86E31: ILdRf CodiSede
  loc_A86E34: CStrI4
  loc_A86E36: FStStrNoPop var_8C
  loc_A86E39: ConcatStr
  loc_A86E3A: FStStrNoPop var_90
  loc_A86E3D: LitStr ",'"
  loc_A86E40: ConcatStr
  loc_A86E41: FStStrNoPop var_94
  loc_A86E44: ILdRf var_88
  loc_A86E47: ConcatStr
  loc_A86E48: FStStrNoPop var_98
  loc_A86E4B: LitStr "',0,'',"
  loc_A86E4E: ConcatStr
  loc_A86E4F: FStStrNoPop var_A0
  loc_A86E52: LitI4 0
  loc_A86E57: LitI4 -1
  loc_A86E5C: LitI4 1
  loc_A86E61: LitStr "."
  loc_A86E64: LitStr ","
  loc_A86E67: FLdFPR8 ImpoSede
  loc_A86E6A: CStrR8
  loc_A86E6C: FStStrNoPop var_9C
  loc_A86E6F: ImpAdCallI2 Replace(, , , , , )
  loc_A86E74: FStStrNoPop var_A4
  loc_A86E77: ConcatStr
  loc_A86E78: FStStrNoPop var_A8
  loc_A86E7B: LitStr ");"
  loc_A86E7E: ConcatStr
  loc_A86E7F: FStStrNoPop var_AC
  loc_A86E82: Call Proc_203_30_A484EC()
  loc_A86E87: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A86E9C: ExitProcHresult
  loc_A86E9D: CCyI2
End Sub

Public Sub Modificar(PeriOrde, CodiSede, DetaSede, PeriInfo, CodiConc, VariSede, CtctSede, ImpoSede, HaceRequery) 'AF3850
  'Data Table: 408494
  loc_AF36F8: ILdRf DetaSede
  loc_AF36FB: FStStrCopy var_88
  loc_AF36FE: ILdRf CodiConc
  loc_AF3701: FStStrCopy var_8C
  loc_AF3704: ILdRf VariSede
  loc_AF3707: FStStrCopy var_90
  loc_AF370A: ILdRf CtctSede
  loc_AF370D: FStStrCopy var_94
  loc_AF3710: FLdRfVar var_9C
  loc_AF3713: ILdRf CodiSede
  loc_AF3716: FLdI2 PeriOrde
  loc_AF3719: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AF371E: ILdRf var_9C
  loc_AF3721: LitStr vbNullString
  loc_AF3724: EqStr
  loc_AF3726: FFree1Str var_9C
  loc_AF3729: BranchF loc_AF3737
  loc_AF372C: LitStr "El servicio NO EXISTE. Reintente..."
  loc_AF372F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF3734: Branch loc_AF384D
  loc_AF3737: LitStr "START TRANSACTION; UPDATE servdeva SET DetaSede = '"
  loc_AF373A: ILdRf var_88
  loc_AF373D: ConcatStr
  loc_AF373E: FStStrNoPop var_9C
  loc_AF3741: LitStr "', PeriInfo = "
  loc_AF3744: ConcatStr
  loc_AF3745: FStStrNoPop var_A0
  loc_AF3748: FLdI2 PeriInfo
  loc_AF374B: CStrUI1
  loc_AF374D: FStStrNoPop var_A4
  loc_AF3750: ConcatStr
  loc_AF3751: FStStrNoPop var_A8
  loc_AF3754: LitStr ", CodiConc = '"
  loc_AF3757: ConcatStr
  loc_AF3758: FStStrNoPop var_AC
  loc_AF375B: ILdRf var_8C
  loc_AF375E: ConcatStr
  loc_AF375F: FStStrNoPop var_B0
  loc_AF3762: LitStr "', VariSede = '"
  loc_AF3765: ConcatStr
  loc_AF3766: FStStrNoPop var_B4
  loc_AF3769: ILdRf var_90
  loc_AF376C: ConcatStr
  loc_AF376D: FStStrNoPop var_B8
  loc_AF3770: LitStr "', CtctSede = '"
  loc_AF3773: ConcatStr
  loc_AF3774: FStStrNoPop var_BC
  loc_AF3777: ILdRf var_94
  loc_AF377A: ConcatStr
  loc_AF377B: FStStrNoPop var_C0
  loc_AF377E: LitStr "', ImpoSede = "
  loc_AF3781: ConcatStr
  loc_AF3782: FStStrNoPop var_C8
  loc_AF3785: LitI4 0
  loc_AF378A: LitI4 -1
  loc_AF378F: LitI4 1
  loc_AF3794: LitStr "."
  loc_AF3797: LitStr ","
  loc_AF379A: FLdFPR8 ImpoSede
  loc_AF379D: CStrR8
  loc_AF379F: FStStrNoPop var_C4
  loc_AF37A2: ImpAdCallI2 Replace(, , , , , )
  loc_AF37A7: FStStrNoPop var_CC
  loc_AF37AA: ConcatStr
  loc_AF37AB: FStStrNoPop var_D0
  loc_AF37AE: LitStr ", ModiUsua = '"
  loc_AF37B1: ConcatStr
  loc_AF37B2: FStStrNoPop var_D4
  loc_AF37B5: ImpAdLdI4 MemVar_D9302C
  loc_AF37B8: ConcatStr
  loc_AF37B9: FStStrNoPop var_D8
  loc_AF37BC: LitStr "' WHERE PeriOrde = "
  loc_AF37BF: ConcatStr
  loc_AF37C0: FStStrNoPop var_DC
  loc_AF37C3: FLdI2 PeriOrde
  loc_AF37C6: CStrUI1
  loc_AF37C8: FStStrNoPop var_E0
  loc_AF37CB: ConcatStr
  loc_AF37CC: FStStrNoPop var_E4
  loc_AF37CF: LitStr " AND CodiSede = "
  loc_AF37D2: ConcatStr
  loc_AF37D3: FStStrNoPop var_E8
  loc_AF37D6: ILdRf CodiSede
  loc_AF37D9: CStrI4
  loc_AF37DB: FStStrNoPop var_EC
  loc_AF37DE: ConcatStr
  loc_AF37DF: FStStrNoPop var_F0
  loc_AF37E2: LitStr ";"
  loc_AF37E5: ConcatStr
  loc_AF37E6: FStStr var_98
  loc_AF37E9: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_AF3818: OnErrorGoto loc_AF383D
  loc_AF381B: ILdRf var_98
  loc_AF381E: Call Proc_203_30_A484EC()
  loc_AF3823: LitStr "COMMIT;"
  loc_AF3826: Call Proc_203_30_A484EC()
  loc_AF382B: FLdI2 arg_30
  loc_AF382E: BranchF loc_AF383C
  loc_AF3831: ILdRf CodiSede
  loc_AF3834: FLdI2 PeriOrde
  loc_AF3837: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AF383C: ExitProcHresult
  loc_AF383D: LitStr "ROLLBACK;"
  loc_AF3840: Call Proc_203_30_A484EC()
  loc_AF3845: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AF3848: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF384D: ExitProcHresult
  loc_AF384E: ImpAdLdRf MemVar_0
End Sub

Public Sub Eliminar(PeriOrde, CodiSede) 'AB91C8
  'Data Table: 408494
  loc_AB90E0: FLdRfVar var_90
  loc_AB90E3: FLdI2 CodiSede
  loc_AB90E6: CI4UI1
  loc_AB90E7: FLdI2 PeriOrde
  loc_AB90EA: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AB90EF: ILdRf var_90
  loc_AB90F2: LitStr vbNullString
  loc_AB90F5: EqStr
  loc_AB90F7: FFree1Str var_90
  loc_AB90FA: BranchF loc_AB9108
  loc_AB90FD: LitStr "El servicio de deudores NO EXISTE. Reintente..."
  loc_AB9100: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB9105: Branch loc_AB91B3
  loc_AB9108: LitStr "START TRANSACTION; DELETE FROM servdeva  WHERE PeriOrde = "
  loc_AB910B: FLdI2 PeriOrde
  loc_AB910E: CStrUI1
  loc_AB9110: FStStrNoPop var_90
  loc_AB9113: ConcatStr
  loc_AB9114: FStStrNoPop var_94
  loc_AB9117: LitStr " AND CodiSede = "
  loc_AB911A: ConcatStr
  loc_AB911B: FStStrNoPop var_98
  loc_AB911E: FLdI2 CodiSede
  loc_AB9121: CStrUI1
  loc_AB9123: FStStrNoPop var_9C
  loc_AB9126: ConcatStr
  loc_AB9127: FStStrNoPop var_A0
  loc_AB912A: LitStr ";"
  loc_AB912D: ConcatStr
  loc_AB912E: FStStr var_88
  loc_AB9131: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AB913E: OnErrorGoto loc_AB91B4
  loc_AB9141: ILdRf var_88
  loc_AB9144: Call Proc_203_30_A484EC()
  loc_AB9149: LitStr "COMMIT;"
  loc_AB914C: Call Proc_203_30_A484EC()
  loc_AB9151: FLdRfVar var_A4
  loc_AB9154: FLdPr Me
  loc_AB9157: MemLdPr RsFrm
  loc_AB915A:  = Me.AbsolutePosition
  loc_AB915F: ILdRf var_A4
  loc_AB9162: FStR4 var_8C
  loc_AB9165: Call Requery()
  loc_AB916A: FLdRfVar var_A4
  loc_AB916D: FLdPr Me
  loc_AB9170: MemLdPr RsFrm
  loc_AB9173:  = Me.RecordCount
  loc_AB9178: ILdRf var_A4
  loc_AB917B: LitI4 0
  loc_AB9180: GtI4
  loc_AB9181: BranchF loc_AB91B3
  loc_AB9184: FLdPr Me
  loc_AB9187: MemLdPr RsFrm
  loc_AB918A: Me.MoveFirst
  loc_AB918F: ILdRf var_8C
  loc_AB9192: LitI4 1
  loc_AB9197: GtI4
  loc_AB9198: BranchF loc_AB91B3
  loc_AB919B: LitVar_Missing var_B4
  loc_AB919E: PopAdLdVar
  loc_AB919F: ILdRf var_8C
  loc_AB91A2: LitI4 2
  loc_AB91A7: SubI4
  loc_AB91A8: FLdPr Me
  loc_AB91AB: MemLdPr RsFrm
  loc_AB91AE: Me.Move from_stack_1, from_stack_2
  loc_AB91B3: ExitProcHresult
  loc_AB91B4: LitStr "ROLLBACK;"
  loc_AB91B7: Call Proc_203_30_A484EC()
  loc_AB91BC: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AB91BF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB91C4: ExitProcHresult
End Sub

Public Function NuevoRegistro(CodiEspe) 'A8C134
  'Data Table: 408494
  loc_A8C0A0: LitStr "SELECT CodiEspe FROM servicio WHERE CodiEspe = "
  loc_A8C0A3: FLdUI1
  loc_A8C0A7: CStrI2
  loc_A8C0A9: FStStrNoPop var_8C
  loc_A8C0AC: ConcatStr
  loc_A8C0AD: FStStrNoPop var_90
  loc_A8C0B0: LitStr " ORDER BY CodiEspe DESC LIMIT 1"
  loc_A8C0B3: ConcatStr
  loc_A8C0B4: FStStrNoPop NuevoRegistro
  loc_A8C0B7: Call Proc_203_30_A484EC()
  loc_A8C0BC: FFreeStr var_8C = "": var_90 = ""
  loc_A8C0C5: FLdRfVar var_98
  loc_A8C0C8: FLdPr Me
  loc_A8C0CB: MemLdPr global_64
  loc_A8C0CE:  = Me.RecordCount
  loc_A8C0D3: ILdRf var_98
  loc_A8C0D6: LitI4 0
  loc_A8C0DB: GtI4
  loc_A8C0DC: BranchF loc_A8C126
  loc_A8C0DF: FLdRfVar var_C0
  loc_A8C0E2: FLdRfVar var_B0
  loc_A8C0E5: LitVarStr var_AC, "CodiCate"
  loc_A8C0EA: PopAdLdVar
  loc_A8C0EB: FLdRfVar var_9C
  loc_A8C0EE: FLdPr Me
  loc_A8C0F1: MemLdPr global_64
  loc_A8C0F4:  = Me.Fields
  loc_A8C0F9: FLdPr var_9C
  loc_A8C0FC: from_stack_2 = Me.Item(from_stack_1)
  loc_A8C101: FLdPr var_B0
  loc_A8C104:  = Me.Value
  loc_A8C109: FLdRfVar var_C0
  loc_A8C10C: FnCByteVar
  loc_A8C10E: CI2UI1
  loc_A8C110: LitI2_Byte 1
  loc_A8C112: AddI2
  loc_A8C113: CUI1I2
  loc_A8C115: FStUI1 var_86
  loc_A8C119: FFreeAd var_9C = ""
  loc_A8C120: FFree1Var var_C0 = ""
  loc_A8C123: Branch loc_A8C12E
  loc_A8C126: LitI2_Byte 1
  loc_A8C128: CUI1I2
  loc_A8C12A: FStUI1 var_86
  loc_A8C12E: ExitProcCbHresult
End Function

Public Sub Requery(arg_1C) '9E53F4
  'Data Table: 408494
  loc_9E53D0: LitI4 -1
  loc_9E53D5: FLdPr Me
  loc_9E53D8: MemLdPr RsFrm
  loc_9E53DB: Me.Requery from_stack_1
  loc_9E53E0: LitVarStr var_94, "Primary"
  loc_9E53E5: PopAdLdVar
  loc_9E53E6: FLdPr Me
  loc_9E53E9: LateIdCall
  loc_9E53F1: ExitProcHresult
  loc_9E53F2: FLdPr arg_1C00
End Sub

Public Sub Encontrar(PeriOrde, CodiSede) 'A8468C
  'Data Table: 408494
  loc_A845FC: Call Requery(from_stack_1v)
  loc_A84601: LitStr "PeriOrde = '"
  loc_A84604: FLdI2 PeriOrde
  loc_A84607: CStrUI1
  loc_A84609: FStStrNoPop var_88
  loc_A8460C: ConcatStr
  loc_A8460D: FStStrNoPop var_8C
  loc_A84610: LitStr "'"
  loc_A84613: ConcatStr
  loc_A84614: PopTmpLdAdStr
  loc_A84618: Call Find(from_stack_1v)
  loc_A8461D: FFreeStr var_88 = "": var_8C = ""
  loc_A84626: LitStr "CodiSede = '"
  loc_A84629: ILdRf CodiSede
  loc_A8462C: CStrI4
  loc_A8462E: FStStrNoPop var_88
  loc_A84631: ConcatStr
  loc_A84632: FStStrNoPop var_8C
  loc_A84635: LitStr "'"
  loc_A84638: ConcatStr
  loc_A84639: PopTmpLdAdStr
  loc_A8463D: Call Find(from_stack_1v)
  loc_A84642: FFreeStr var_88 = "": var_8C = ""
  loc_A8464B: FLdRfVar var_94
  loc_A8464E: FLdPr Me
  loc_A84651: MemLdPr RsFrm
  loc_A84654:  = Me.RecordCount
  loc_A84659: ILdRf var_94
  loc_A8465C: LitI4 0
  loc_A84661: GtI4
  loc_A84662: FLdRfVar var_98
  loc_A84665: FLdPr Me
  loc_A84668: MemLdPr RsFrm
  loc_A8466B:  = Me.AbsolutePosition
  loc_A84670: ILdRf var_98
  loc_A84673: LitI4 -3
  loc_A84678: EqI4
  loc_A84679: AndI4
  loc_A8467A: BranchF loc_A84688
  loc_A8467D: FLdPr Me
  loc_A84680: MemLdPr RsFrm
  loc_A84683: Me.MoveLast
  loc_A84688: ExitProcHresult
End Sub

Public Function ValidaClave(PeriOrde, CodiSede) 'A77254
  'Data Table: 408494
  loc_A771EC: ZeroRetVal
  loc_A771EE: LitStr "SELECT PeriOrde FROM servdeva WHERE PeriOrde = "
  loc_A771F1: FLdI2 PeriOrde
  loc_A771F4: CStrUI1
  loc_A771F6: FStStrNoPop var_8C
  loc_A771F9: ConcatStr
  loc_A771FA: FStStrNoPop var_90
  loc_A771FD: LitStr " AND CodiSede = "
  loc_A77200: ConcatStr
  loc_A77201: FStStrNoPop ValidaClave
  loc_A77204: ILdRf CodiSede
  loc_A77207: CStrI4
  loc_A77209: FStStrNoPop var_98
  loc_A7720C: ConcatStr
  loc_A7720D: FStStrNoPop var_9C
  loc_A77210: LitStr vbNullString
  loc_A77213: ConcatStr
  loc_A77214: FStStrNoPop var_A0
  loc_A77217: Call Proc_203_30_A484EC()
  loc_A7721C: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = "": var_9C = ""
  loc_A7722B: FLdRfVar var_A4
  loc_A7722E: FLdPr Me
  loc_A77231: MemLdPr global_64
  loc_A77234:  = Me.RecordCount
  loc_A77239: ILdRf var_A4
  loc_A7723C: LitI4 0
  loc_A77241: GtI4
  loc_A77242: BranchF loc_A7724B
  loc_A77245: LitStr "El servicio YA EXISTE. Reintente..."
  loc_A77248: FStStrCopy var_88
  loc_A7724B: ExitProcCbHresult
  loc_A77251: FLdPr Me
End Function

Public Sub RedefineRS(sSelect) 'A5CAFC
  'Data Table: 408494
  loc_A5CA98: ILdRf sSelect
  loc_A5CA9B: FStStrCopy var_88
  loc_A5CA9E: LitNothing
  loc_A5CAA0: CastAd
  loc_A5CAA3: FStAdFuncNoPop
  loc_A5CAA6: FLdPr Me
  loc_A5CAA9: MemStAd
  loc_A5CAAD: FFree1Ad var_8C
  loc_A5CAB0: New Recordset
  loc_A5CAB4: FStAdFuncNoPop
  loc_A5CAB7: FLdPr Me
  loc_A5CABA: MemStAd
  loc_A5CABE: FFree1Ad var_8C
  loc_A5CAC1: LitI4 -1
  loc_A5CAC6: LitI4 3
  loc_A5CACB: LitI4 3
  loc_A5CAD0: ImpAdLdI4 MemVar_D9301C
  loc_A5CAD3: CVarAd
  loc_A5CAD7: PopAdLdVar
  loc_A5CAD8: ILdRf var_88
  loc_A5CADB: CVarStr var_9C
  loc_A5CADE: PopAdLdVar
  loc_A5CADF: FLdPr Me
  loc_A5CAE2: MemLdPr RsFrm
  loc_A5CAE5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5CAEA: LitVarStr var_9C, "Primary"
  loc_A5CAEF: PopAdLdVar
  loc_A5CAF0: FLdPr Me
  loc_A5CAF3: LateIdCall
  loc_A5CAFB: ExitProcHresult
End Sub

Public Property Get DataSource() '9F2654
  'Data Table: 408494
  loc_9F2630: ZeroRetVal
  loc_9F2632: FLdRfVar var_8C
  loc_9F2635: FLdPr Me
  loc_9F2638: MemLdPr RsFrm
  loc_9F263B:  = Me.DataSource
  loc_9F2640: ILdRf var_8C
  loc_9F2643: CastAd
  loc_9F2646: FStAdFunc var_88
  loc_9F2649: FFree1Ad var_8C
  loc_9F264C: ExitProcCbHresult
End Sub

Public Property Get TiafConc() 'A3E1B8
  'Data Table: 408494
  loc_A3E174: ZeroRetVal
  loc_A3E176: FLdRfVar var_B0
  loc_A3E179: FLdRfVar var_A0
  loc_A3E17C: LitVarStr var_9C, "TiafConc"
  loc_A3E181: PopAdLdVar
  loc_A3E182: FLdRfVar var_8C
  loc_A3E185: FLdPr Me
  loc_A3E188: MemLdPr RsFrm
  loc_A3E18B:  = Me.Fields
  loc_A3E190: FLdPr var_8C
  loc_A3E193: from_stack_2 = Me.Item(from_stack_1)
  loc_A3E198: FLdPr var_A0
  loc_A3E19B:  = Me.Value
  loc_A3E1A0: FLdRfVar var_B0
  loc_A3E1A3: CStrVarTmp
  loc_A3E1A4: FStStr var_88
  loc_A3E1A7: FFreeAd var_8C = ""
  loc_A3E1AE: FFree1Var var_B0 = ""
  loc_A3E1B1: ExitProcCbHresult
End Sub

Public Function ValidaEliminar(iPeriOrde, iCodiSede) 'A76D68
  'Data Table: 408494
  loc_A76D00: ZeroRetVal
  loc_A76D02: LitStr "SELECT PeriOrde,CodiSede FROM recaudacion.devadeta WHERE PeriOrde = "
  loc_A76D05: FLdI2 iPeriOrde
  loc_A76D08: CStrUI1
  loc_A76D0A: FStStrNoPop var_8C
  loc_A76D0D: ConcatStr
  loc_A76D0E: FStStrNoPop var_90
  loc_A76D11: LitStr " AND CodiSede = "
  loc_A76D14: ConcatStr
  loc_A76D15: FStStrNoPop ValidaEliminar
  loc_A76D18: FLdI2 iCodiSede
  loc_A76D1B: CStrUI1
  loc_A76D1D: FStStrNoPop var_98
  loc_A76D20: ConcatStr
  loc_A76D21: FStStrNoPop var_9C
  loc_A76D24: LitStr vbNullString
  loc_A76D27: ConcatStr
  loc_A76D28: FStStrNoPop var_A0
  loc_A76D2B: Call Proc_203_30_A484EC()
  loc_A76D30: FFreeStr var_8C = "": var_90 = "": ValidaEliminar = "": var_98 = "": var_9C = ""
  loc_A76D3F: FLdRfVar var_A4
  loc_A76D42: FLdPr Me
  loc_A76D45: MemLdPr global_64
  loc_A76D48:  = Me.RecordCount
  loc_A76D4D: ILdRf var_A4
  loc_A76D50: LitI4 0
  loc_A76D55: GtI4
  loc_A76D56: BranchF loc_A76D5F
  loc_A76D59: LitStr "El Servicio no se puede Eliminar, esta siendo utilizado Actualmente."
  loc_A76D5C: FStStrCopy var_88
  loc_A76D5F: ExitProcCbHresult
  loc_A76D65: StAryMove
End Function

Private Function Proc_203_29_9F09F0() '9F09F0
  'Data Table: 408494
  loc_9F09CC: LitStr "Primary"
  loc_9F09CF: FLdPr Me
  loc_9F09D2: LateIdLdVar var_94 DispID_4 0
  loc_9F09D9: CastAdVar Me
  loc_9F09DD: FStAdFunc var_98
  loc_9F09E0: FLdPr var_98
  loc_9F09E8: FFree1Ad var_98
  loc_9F09EB: FFree1Var var_94 = ""
  loc_9F09EE: ExitProcHresult
  loc_9F09EF: PopAdLdVar
End Function

Private Function Proc_203_30_A484EC(arg_C) 'A484EC
  'Data Table: 408494
  loc_A48498: ILdRf arg_C
  loc_A4849B: FStStrCopy var_88
  loc_A4849E: LitNothing
  loc_A484A0: CastAd
  loc_A484A3: FStAdFuncNoPop
  loc_A484A6: FLdPr Me
  loc_A484A9: MemStAd
  loc_A484AD: FFree1Ad var_8C
  loc_A484B0: New Recordset
  loc_A484B4: FStAdFuncNoPop
  loc_A484B7: FLdPr Me
  loc_A484BA: MemStAd
  loc_A484BE: FFree1Ad var_8C
  loc_A484C1: LitI4 -1
  loc_A484C6: LitI4 3
  loc_A484CB: LitI4 3
  loc_A484D0: ImpAdLdI4 MemVar_D9301C
  loc_A484D3: CVarAd
  loc_A484D7: PopAdLdVar
  loc_A484D8: ILdRf var_88
  loc_A484DB: CVarStr var_9C
  loc_A484DE: PopAdLdVar
  loc_A484DF: FLdPr Me
  loc_A484E2: MemLdPr global_64
  loc_A484E5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A484EA: ExitProcHresult
End Function

Private Function Proc_203_31_9DFC9C(arg_C) '9DFC9C
  'Data Table: 408494
  loc_9DFC80: ILdI4 arg_C
  loc_9DFC83: FStStrCopy var_88
  loc_9DFC86: ILdRf var_88
  loc_9DFC89: LitStr "Primary"
  loc_9DFC8C: EqStr
  loc_9DFC8E: BranchF loc_9DFC9B
  loc_9DFC91: FLdPr Me
  loc_9DFC94: MemLdStr RsFrm
  loc_9DFC97: IStAd
  loc_9DFC9B: ExitProcHresult
End Function
