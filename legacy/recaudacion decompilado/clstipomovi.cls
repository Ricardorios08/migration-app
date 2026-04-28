VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstipomovi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub Mover(iCantidad) '9FC218
  'Data Table: 405D54
  loc_9FC1E8: FLdRfVar var_88
  loc_9FC1EB: FLdPr Me
  loc_9FC1EE: MemLdPr global_60
  loc_9FC1F1:  = Me.RecordCount
  loc_9FC1F6: ILdRf var_88
  loc_9FC1F9: LitI4 0
  loc_9FC1FE: GtI4
  loc_9FC1FF: BranchF loc_9FC214
  loc_9FC202: LitVar_Missing var_98
  loc_9FC205: PopAdLdVar
  loc_9FC206: ILdI4 iCantidad
  loc_9FC209: FLdPr Me
  loc_9FC20C: MemLdPr global_60
  loc_9FC20F: Me.Move from_stack_1, from_stack_2
  loc_9FC214: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EEABC
  'Data Table: 405D54
  loc_9EEA94: FLdRfVar var_88
  loc_9EEA97: FLdPr Me
  loc_9EEA9A: MemLdPr global_60
  loc_9EEA9D:  = Me.RecordCount
  loc_9EEAA2: ILdRf var_88
  loc_9EEAA5: LitI4 0
  loc_9EEAAA: GtI4
  loc_9EEAAB: BranchF loc_9EEAB9
  loc_9EEAAE: FLdPr Me
  loc_9EEAB1: MemLdPr global_60
  loc_9EEAB4: Me.MoveFirst
  loc_9EEAB9: ExitProcHresult
End Sub

Public Sub MoveLast() '9EE9B4
  'Data Table: 405D54
  loc_9EE98C: FLdRfVar var_88
  loc_9EE98F: FLdPr Me
  loc_9EE992: MemLdPr global_60
  loc_9EE995:  = Me.RecordCount
  loc_9EE99A: ILdRf var_88
  loc_9EE99D: LitI4 0
  loc_9EE9A2: GtI4
  loc_9EE9A3: BranchF loc_9EE9B1
  loc_9EE9A6: FLdPr Me
  loc_9EE9A9: MemLdPr global_60
  loc_9EE9AC: Me.MoveLast
  loc_9EE9B1: ExitProcHresult
End Sub

Public Sub MoveNext() 'A69E38
  'Data Table: 405D54
  loc_A69DC0: FLdRfVar var_86
  loc_A69DC3: FLdPr Me
  loc_A69DC6: MemLdPr global_60
  loc_A69DC9:  = Me.EOF
  loc_A69DCE: FLdI2 var_86
  loc_A69DD1: NotI4
  loc_A69DD2: FLdRfVar var_8C
  loc_A69DD5: FLdPr Me
  loc_A69DD8: MemLdPr global_60
  loc_A69DDB:  = Me.RecordCount
  loc_A69DE0: ILdRf var_8C
  loc_A69DE3: LitI4 0
  loc_A69DE8: GtI4
  loc_A69DE9: AndI4
  loc_A69DEA: BranchF loc_A69DF8
  loc_A69DED: FLdPr Me
  loc_A69DF0: MemLdPr global_60
  loc_A69DF3: Me.MoveNext
  loc_A69DF8: FLdRfVar var_86
  loc_A69DFB: FLdPr Me
  loc_A69DFE: MemLdPr global_60
  loc_A69E01:  = Me.EOF
  loc_A69E06: FLdI2 var_86
  loc_A69E09: FLdRfVar var_8C
  loc_A69E0C: FLdPr Me
  loc_A69E0F: MemLdPr global_60
  loc_A69E12:  = Me.RecordCount
  loc_A69E17: ILdRf var_8C
  loc_A69E1A: LitI4 0
  loc_A69E1F: GtI4
  loc_A69E20: AndI4
  loc_A69E21: BranchF loc_A69E34
  loc_A69E24: ImpAdCallFPR4 Beep()
  loc_A69E29: FLdPr Me
  loc_A69E2C: MemLdPr global_60
  loc_A69E2F: Me.MoveLast
  loc_A69E34: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1830
  'Data Table: 405D54
  loc_9B1824: FLdPr Me
  loc_9B1827: MemLdPr global_60
  loc_9B182A: Me.MoveNext
  loc_9B182F: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B91A4
  'Data Table: 405D54
  loc_9B9190: LitVar_Missing var_94
  loc_9B9193: PopAdLdVar
  loc_9B9194: ILdI2 iValor
  loc_9B9197: CI4UI1
  loc_9B9198: FLdPr Me
  loc_9B919B: MemLdPr global_60
  loc_9B919E: Me.Move from_stack_1, from_stack_2
  loc_9B91A3: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A69508
  'Data Table: 405D54
  loc_A69490: FLdRfVar var_86
  loc_A69493: FLdPr Me
  loc_A69496: MemLdPr global_60
  loc_A69499:  = Me.BOF
  loc_A6949E: FLdI2 var_86
  loc_A694A1: NotI4
  loc_A694A2: FLdRfVar var_8C
  loc_A694A5: FLdPr Me
  loc_A694A8: MemLdPr global_60
  loc_A694AB:  = Me.RecordCount
  loc_A694B0: ILdRf var_8C
  loc_A694B3: LitI4 0
  loc_A694B8: GtI4
  loc_A694B9: AndI4
  loc_A694BA: BranchF loc_A694C8
  loc_A694BD: FLdPr Me
  loc_A694C0: MemLdPr global_60
  loc_A694C3: Me.MovePrevious
  loc_A694C8: FLdRfVar var_86
  loc_A694CB: FLdPr Me
  loc_A694CE: MemLdPr global_60
  loc_A694D1:  = Me.BOF
  loc_A694D6: FLdI2 var_86
  loc_A694D9: FLdRfVar var_8C
  loc_A694DC: FLdPr Me
  loc_A694DF: MemLdPr global_60
  loc_A694E2:  = Me.RecordCount
  loc_A694E7: ILdRf var_8C
  loc_A694EA: LitI4 0
  loc_A694EF: GtI4
  loc_A694F0: AndI4
  loc_A694F1: BranchF loc_A69504
  loc_A694F4: ImpAdCallFPR4 Beep()
  loc_A694F9: FLdPr Me
  loc_A694FC: MemLdPr global_60
  loc_A694FF: Me.MoveFirst
  loc_A69504: ExitProcHresult
End Sub

Public Property Get EOF() '9D76AC
  'Data Table: 405D54
  loc_9D7690: FLdRfVar var_88
  loc_9D7693: FLdPr Me
  loc_9D7696: MemLdPr global_60
  loc_9D7699:  = Me.EOF
  loc_9D769E: FLdI2 var_88
  loc_9D76A1: FStI2 var_86
  loc_9D76A4: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D7660
  'Data Table: 405D54
  loc_9D7644: FLdRfVar var_88
  loc_9D7647: FLdPr Me
  loc_9D764A: MemLdPr global_60
  loc_9D764D:  = Me.BOF
  loc_9D7652: FLdI2 var_88
  loc_9D7655: FStI2 var_86
  loc_9D7658: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B6078
  'Data Table: 405D54
  loc_9B6068: ILdI4 sOrden
  loc_9B606B: FLdPr Me
  loc_9B606E: MemLdPr global_60
  loc_9B6071: Me.Sort = from_stack_1
  loc_9B6076: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DDCC0
  'Data Table: 405D54
  loc_9DDCA0: LitVar_Missing var_94
  loc_9DDCA3: PopAdLdVar
  loc_9DDCA4: LitI4 1
  loc_9DDCA9: LitI4 0
  loc_9DDCAE: ILdI4 sFind
  loc_9DDCB1: FLdPr Me
  loc_9DDCB4: MemLdPr global_60
  loc_9DDCB7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DDCBC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B91E8
  'Data Table: 405D54
  loc_9B91D4: ILdI4 sCriterio
  loc_9B91D7: CVarStr var_94
  loc_9B91DA: PopAdLdVar
  loc_9B91DB: FLdPr Me
  loc_9B91DE: MemLdPr global_60
  loc_9B91E1: Me.Filter = from_stack_1
  loc_9B91E6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D7530
  'Data Table: 405D54
  loc_9D7514: FLdRfVar var_8C
  loc_9D7517: FLdPr Me
  loc_9D751A: MemLdPr global_60
  loc_9D751D:  = Me.AbsolutePosition
  loc_9D7522: ILdRf var_8C
  loc_9D7525: FStR4 var_88
  loc_9D7528: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D74E4
  'Data Table: 405D54
  loc_9D74C8: FLdRfVar var_8C
  loc_9D74CB: FLdPr Me
  loc_9D74CE: MemLdPr global_60
  loc_9D74D1:  = Me.RecordCount
  loc_9D74D6: ILdRf var_8C
  loc_9D74D9: FStR4 var_88
  loc_9D74DC: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiTimo, DetaTimo, AbreTimo, DecrTimo, FijoTimo) 'AAE3EC
  'Data Table: 405D54
  loc_AAE348: ILdRf DetaTimo
  loc_AAE34B: FStStrCopy var_88
  loc_AAE34E: ILdRf AbreTimo
  loc_AAE351: FStStrCopy var_8C
  loc_AAE354: ILdRf DecrTimo
  loc_AAE357: FStStrCopy var_90
  loc_AAE35A: ILdRf FijoTimo
  loc_AAE35D: FStStrCopy var_94
  loc_AAE360: LitStr "START TRANSACTION; INSERT INTO tipomovi (CodiTimo, DetaTimo, AbreTimo, DecrTimo, FijoTimo) VALUES ("
  loc_AAE363: FLdI2 CodiTimo
  loc_AAE366: CStrUI1
  loc_AAE368: FStStrNoPop var_9C
  loc_AAE36B: ConcatStr
  loc_AAE36C: FStStrNoPop var_A0
  loc_AAE36F: LitStr ",'"
  loc_AAE372: ConcatStr
  loc_AAE373: FStStrNoPop var_A4
  loc_AAE376: ILdRf var_88
  loc_AAE379: ConcatStr
  loc_AAE37A: FStStrNoPop var_A8
  loc_AAE37D: LitStr "','"
  loc_AAE380: ConcatStr
  loc_AAE381: FStStrNoPop var_AC
  loc_AAE384: ILdRf var_8C
  loc_AAE387: ConcatStr
  loc_AAE388: FStStrNoPop var_B0
  loc_AAE38B: LitStr "','"
  loc_AAE38E: ConcatStr
  loc_AAE38F: FStStrNoPop var_B4
  loc_AAE392: ILdRf var_90
  loc_AAE395: ConcatStr
  loc_AAE396: FStStrNoPop var_B8
  loc_AAE399: LitStr "','"
  loc_AAE39C: ConcatStr
  loc_AAE39D: FStStrNoPop var_BC
  loc_AAE3A0: ILdRf var_94
  loc_AAE3A3: ConcatStr
  loc_AAE3A4: FStStrNoPop var_C0
  loc_AAE3A7: LitStr "');"
  loc_AAE3AA: ConcatStr
  loc_AAE3AB: FStStr var_98
  loc_AAE3AE: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AAE3C5: OnErrorGoto loc_AAE3D9
  loc_AAE3C8: ILdRf var_98
  loc_AAE3CB: Call Proc_105_28_A4AD64()
  loc_AAE3D0: LitStr "COMMIT;"
  loc_AAE3D3: Call Proc_105_28_A4AD64()
  loc_AAE3D8: ExitProcHresult
  loc_AAE3D9: LitStr "ROLLBACK;"
  loc_AAE3DC: Call Proc_105_28_A4AD64()
  loc_AAE3E1: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AAE3E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAE3E9: ExitProcHresult
End Sub

Public Sub Modificar(CodiTimo, DetaTimo, AbreTimo, DecrTimo, FijoTimo) 'AADFAC
  'Data Table: 405D54
  loc_AADF08: ILdRf DetaTimo
  loc_AADF0B: FStStrCopy var_88
  loc_AADF0E: ILdRf AbreTimo
  loc_AADF11: FStStrCopy var_8C
  loc_AADF14: ILdRf DecrTimo
  loc_AADF17: FStStrCopy var_90
  loc_AADF1A: ILdRf FijoTimo
  loc_AADF1D: FStStrCopy var_94
  loc_AADF20: LitStr "START TRANSACTION; UPDATE tipomovi SET DetaTimo = '"
  loc_AADF23: ILdRf var_88
  loc_AADF26: ConcatStr
  loc_AADF27: FStStrNoPop var_9C
  loc_AADF2A: LitStr "', AbreTimo = '"
  loc_AADF2D: ConcatStr
  loc_AADF2E: FStStrNoPop var_A0
  loc_AADF31: ILdRf var_8C
  loc_AADF34: ConcatStr
  loc_AADF35: FStStrNoPop var_A4
  loc_AADF38: LitStr "', DecrTimo = '"
  loc_AADF3B: ConcatStr
  loc_AADF3C: FStStrNoPop var_A8
  loc_AADF3F: ILdRf var_90
  loc_AADF42: ConcatStr
  loc_AADF43: FStStrNoPop var_AC
  loc_AADF46: LitStr "', FijoTimo = '"
  loc_AADF49: ConcatStr
  loc_AADF4A: FStStrNoPop var_B0
  loc_AADF4D: ILdRf var_94
  loc_AADF50: ConcatStr
  loc_AADF51: FStStrNoPop var_B4
  loc_AADF54: LitStr "' WHERE CodiTimo = "
  loc_AADF57: ConcatStr
  loc_AADF58: FStStrNoPop var_B8
  loc_AADF5B: FLdI2 CodiTimo
  loc_AADF5E: CStrUI1
  loc_AADF60: FStStrNoPop var_BC
  loc_AADF63: ConcatStr
  loc_AADF64: FStStrNoPop var_C0
  loc_AADF67: LitStr ";"
  loc_AADF6A: ConcatStr
  loc_AADF6B: FStStr var_98
  loc_AADF6E: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AADF85: OnErrorGoto loc_AADF99
  loc_AADF88: ILdRf var_98
  loc_AADF8B: Call Proc_105_28_A4AD64()
  loc_AADF90: LitStr "COMMIT;"
  loc_AADF93: Call Proc_105_28_A4AD64()
  loc_AADF98: ExitProcHresult
  loc_AADF99: LitStr "ROLLBACK;"
  loc_AADF9C: Call Proc_105_28_A4AD64()
  loc_AADFA1: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_AADFA4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AADFA9: ExitProcHresult
End Sub

Public Sub Requery() '9E59DC
  'Data Table: 405D54
  loc_9E59B8: LitI4 -1
  loc_9E59BD: FLdPr Me
  loc_9E59C0: MemLdPr global_60
  loc_9E59C3: Me.Requery from_stack_1
  loc_9E59C8: LitVarStr var_94, "Primary"
  loc_9E59CD: PopAdLdVar
  loc_9E59CE: FLdPr Me
  loc_9E59D1: LateIdCall
  loc_9E59D9: ExitProcHresult
End Sub

Public Sub Encontrar(CodiTiic) 'A74D18
  'Data Table: 405D54
  loc_A74CA4: Call Requery()
  loc_A74CA9: LitStr "CodiTimo = '"
  loc_A74CAC: FLdRfVar var_86
  loc_A74CAF: from_stack_1 = CodiTimo
  loc_A74CB4: FLdUI1
  loc_A74CB8: CStrI2
  loc_A74CBA: FStStrNoPop var_8C
  loc_A74CBD: ConcatStr
  loc_A74CBE: FStStrNoPop var_90
  loc_A74CC1: LitStr "'"
  loc_A74CC4: ConcatStr
  loc_A74CC5: PopTmpLdAdStr
  loc_A74CC9: Call Find(from_stack_1v)
  loc_A74CCE: FFreeStr var_8C = "": var_90 = ""
  loc_A74CD7: FLdRfVar var_98
  loc_A74CDA: FLdPr Me
  loc_A74CDD: MemLdPr global_60
  loc_A74CE0:  = Me.RecordCount
  loc_A74CE5: ILdRf var_98
  loc_A74CE8: LitI4 0
  loc_A74CED: GtI4
  loc_A74CEE: FLdRfVar var_9C
  loc_A74CF1: FLdPr Me
  loc_A74CF4: MemLdPr global_60
  loc_A74CF7:  = Me.AbsolutePosition
  loc_A74CFC: ILdRf var_9C
  loc_A74CFF: LitI4 -3
  loc_A74D04: EqI4
  loc_A74D05: AndI4
  loc_A74D06: BranchF loc_A74D14
  loc_A74D09: FLdPr Me
  loc_A74D0C: MemLdPr global_60
  loc_A74D0F: Me.MoveLast
  loc_A74D14: ExitProcHresult
End Sub

Public Function ValidaClave(CodiTimo) 'A3F344
  'Data Table: 405D54
  loc_A3F2FC: ZeroRetValVar
  loc_A3F2FE: LitStr "SELECT CodiTimo FROM tipomovi WHERE CodiTimo = "
  loc_A3F301: FLdI2 CodiTimo
  loc_A3F304: CStrUI1
  loc_A3F306: FStStrNoPop var_98
  loc_A3F309: ConcatStr
  loc_A3F30A: FStStrNoPop var_9C
  loc_A3F30D: Call Proc_105_28_A4AD64()
  loc_A3F312: FFreeStr var_98 = ""
  loc_A3F319: FLdRfVar var_A0
  loc_A3F31C: FLdPr Me
  loc_A3F31F: MemLdPr global_64
  loc_A3F322:  = Me.RecordCount
  loc_A3F327: ILdRf var_A0
  loc_A3F32A: LitI4 0
  loc_A3F32F: GtI4
  loc_A3F330: BranchF loc_A3F33C
  loc_A3F333: LitVarStr var_B0, "EL TIPO de MOVIMIENTO YA EXISTE. Reintente..."
  loc_A3F338: FStVarCopy
  loc_A3F33C: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'A6F334
  'Data Table: 405D54
  loc_A6F2C4: LitStr "SELECT CodiTimo FROM tipomovi ORDER BY CodiTimo DESC LIMIT 1"
  loc_A6F2C7: Call Proc_105_28_A4AD64()
  loc_A6F2CC: FLdRfVar var_8C
  loc_A6F2CF: FLdPr Me
  loc_A6F2D2: MemLdPr global_64
  loc_A6F2D5:  = Me.RecordCount
  loc_A6F2DA: ILdRf var_8C
  loc_A6F2DD: LitI4 0
  loc_A6F2E2: GtI4
  loc_A6F2E3: BranchF loc_A6F328
  loc_A6F2E6: FLdRfVar var_B4
  loc_A6F2E9: FLdRfVar var_A4
  loc_A6F2EC: LitVarStr var_A0, "CodiTimo"
  loc_A6F2F1: PopAdLdVar
  loc_A6F2F2: FLdRfVar var_90
  loc_A6F2F5: FLdPr Me
  loc_A6F2F8: MemLdPr global_64
  loc_A6F2FB:  = Me.Fields
  loc_A6F300: FLdPr var_90
  loc_A6F303: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F308: FLdPr var_A4
  loc_A6F30B:  = Me.Value
  loc_A6F310: FLdRfVar var_B4
  loc_A6F313: FnCIntVar
  loc_A6F315: LitI2_Byte 1
  loc_A6F317: AddI2
  loc_A6F318: FStI2 var_86
  loc_A6F31B: FFreeAd var_90 = ""
  loc_A6F322: FFree1Var var_B4 = ""
  loc_A6F325: Branch loc_A6F32D
  loc_A6F328: LitI2_Byte 1
  loc_A6F32A: FStI2 var_86
  loc_A6F32D: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A60270
  'Data Table: 405D54
  loc_A6020C: ILdRf sSelect
  loc_A6020F: FStStrCopy var_88
  loc_A60212: LitNothing
  loc_A60214: CastAd
  loc_A60217: FStAdFuncNoPop
  loc_A6021A: FLdPr Me
  loc_A6021D: MemStAd
  loc_A60221: FFree1Ad var_8C
  loc_A60224: New Recordset
  loc_A60228: FStAdFuncNoPop
  loc_A6022B: FLdPr Me
  loc_A6022E: MemStAd
  loc_A60232: FFree1Ad var_8C
  loc_A60235: LitI4 -1
  loc_A6023A: LitI4 3
  loc_A6023F: LitI4 3
  loc_A60244: ImpAdLdI4 MemVar_D9301C
  loc_A60247: CVarAd
  loc_A6024B: PopAdLdVar
  loc_A6024C: ILdRf var_88
  loc_A6024F: CVarStr var_9C
  loc_A60252: PopAdLdVar
  loc_A60253: FLdPr Me
  loc_A60256: MemLdPr global_60
  loc_A60259: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6025E: LitVarStr var_9C, "Primary"
  loc_A60263: PopAdLdVar
  loc_A60264: FLdPr Me
  loc_A60267: LateIdCall
  loc_A6026F: ExitProcHresult
End Sub

Public Property Get DataSource() '9F1B8C
  'Data Table: 405D54
  loc_9F1B68: ZeroRetVal
  loc_9F1B6A: FLdRfVar var_8C
  loc_9F1B6D: FLdPr Me
  loc_9F1B70: MemLdPr global_60
  loc_9F1B73:  = Me.DataSource
  loc_9F1B78: ILdRf var_8C
  loc_9F1B7B: CastAd
  loc_9F1B7E: FStAdFunc var_88
  loc_9F1B81: FFree1Ad var_8C
  loc_9F1B84: ExitProcCbHresult
End Sub

Public Property Get CodiTimo() 'A2E9A4
  'Data Table: 405D54
  loc_A2E960: FLdRfVar var_B0
  loc_A2E963: FLdRfVar var_A0
  loc_A2E966: LitVarStr var_9C, "CodiTimo"
  loc_A2E96B: PopAdLdVar
  loc_A2E96C: FLdRfVar var_8C
  loc_A2E96F: FLdPr Me
  loc_A2E972: MemLdPr global_60
  loc_A2E975:  = Me.Fields
  loc_A2E97A: FLdPr var_8C
  loc_A2E97D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E982: FLdPr var_A0
  loc_A2E985:  = Me.Value
  loc_A2E98A: FLdRfVar var_B0
  loc_A2E98D: CUI1Var
  loc_A2E98F: FStUI1 var_86
  loc_A2E993: FFreeAd var_8C = ""
  loc_A2E99A: FFree1Var var_B0 = ""
  loc_A2E99D: ExitProcCbHresult
End Sub

Public Property Get DetaTimo() 'A3EFA4
  'Data Table: 405D54
  loc_A3EF60: ZeroRetVal
  loc_A3EF62: FLdRfVar var_B0
  loc_A3EF65: FLdRfVar var_A0
  loc_A3EF68: LitVarStr var_9C, "DetaTimo"
  loc_A3EF6D: PopAdLdVar
  loc_A3EF6E: FLdRfVar var_8C
  loc_A3EF71: FLdPr Me
  loc_A3EF74: MemLdPr global_60
  loc_A3EF77:  = Me.Fields
  loc_A3EF7C: FLdPr var_8C
  loc_A3EF7F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EF84: FLdPr var_A0
  loc_A3EF87:  = Me.Value
  loc_A3EF8C: FLdRfVar var_B0
  loc_A3EF8F: CStrVarTmp
  loc_A3EF90: FStStr var_88
  loc_A3EF93: FFreeAd var_8C = ""
  loc_A3EF9A: FFree1Var var_B0 = ""
  loc_A3EF9D: ExitProcCbHresult
End Sub

Public Property Get AbreTimo() 'A3EF20
  'Data Table: 405D54
  loc_A3EEDC: ZeroRetVal
  loc_A3EEDE: FLdRfVar var_B0
  loc_A3EEE1: FLdRfVar var_A0
  loc_A3EEE4: LitVarStr var_9C, "AbreTimo"
  loc_A3EEE9: PopAdLdVar
  loc_A3EEEA: FLdRfVar var_8C
  loc_A3EEED: FLdPr Me
  loc_A3EEF0: MemLdPr global_60
  loc_A3EEF3:  = Me.Fields
  loc_A3EEF8: FLdPr var_8C
  loc_A3EEFB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EF00: FLdPr var_A0
  loc_A3EF03:  = Me.Value
  loc_A3EF08: FLdRfVar var_B0
  loc_A3EF0B: CStrVarTmp
  loc_A3EF0C: FStStr var_88
  loc_A3EF0F: FFreeAd var_8C = ""
  loc_A3EF16: FFree1Var var_B0 = ""
  loc_A3EF19: ExitProcCbHresult
End Sub

Public Property Get DecrTimo() 'A3EE9C
  'Data Table: 405D54
  loc_A3EE58: ZeroRetVal
  loc_A3EE5A: FLdRfVar var_B0
  loc_A3EE5D: FLdRfVar var_A0
  loc_A3EE60: LitVarStr var_9C, "DecrTimo"
  loc_A3EE65: PopAdLdVar
  loc_A3EE66: FLdRfVar var_8C
  loc_A3EE69: FLdPr Me
  loc_A3EE6C: MemLdPr global_60
  loc_A3EE6F:  = Me.Fields
  loc_A3EE74: FLdPr var_8C
  loc_A3EE77: from_stack_2 = Me.Item(from_stack_1)
  loc_A3EE7C: FLdPr var_A0
  loc_A3EE7F:  = Me.Value
  loc_A3EE84: FLdRfVar var_B0
  loc_A3EE87: CStrVarTmp
  loc_A3EE88: FStStr var_88
  loc_A3EE8B: FFreeAd var_8C = ""
  loc_A3EE92: FFree1Var var_B0 = ""
  loc_A3EE95: ExitProcCbHresult
End Sub

Public Property Get FijoTimo() 'A3ED94
  'Data Table: 405D54
  loc_A3ED50: ZeroRetVal
  loc_A3ED52: FLdRfVar var_B0
  loc_A3ED55: FLdRfVar var_A0
  loc_A3ED58: LitVarStr var_9C, "FijoTimo"
  loc_A3ED5D: PopAdLdVar
  loc_A3ED5E: FLdRfVar var_8C
  loc_A3ED61: FLdPr Me
  loc_A3ED64: MemLdPr global_60
  loc_A3ED67:  = Me.Fields
  loc_A3ED6C: FLdPr var_8C
  loc_A3ED6F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3ED74: FLdPr var_A0
  loc_A3ED77:  = Me.Value
  loc_A3ED7C: FLdRfVar var_B0
  loc_A3ED7F: CStrVarTmp
  loc_A3ED80: FStStr var_88
  loc_A3ED83: FFreeAd var_8C = ""
  loc_A3ED8A: FFree1Var var_B0 = ""
  loc_A3ED8D: ExitProcCbHresult
End Sub

Private Function Proc_105_27_9F1B30() '9F1B30
  'Data Table: 405D54
  loc_9F1B0C: LitStr "Primary"
  loc_9F1B0F: FLdPr Me
  loc_9F1B12: LateIdLdVar var_94 DispID_4 0
  loc_9F1B19: CastAdVar Me
  loc_9F1B1D: FStAdFunc var_98
  loc_9F1B20: FLdPr var_98
  loc_9F1B28: FFree1Ad var_98
  loc_9F1B2B: FFree1Var var_94 = ""
  loc_9F1B2E: ExitProcHresult
End Function

Private Function Proc_105_28_A4AD64(arg_C) 'A4AD64
  'Data Table: 405D54
  loc_A4AD10: ILdRf arg_C
  loc_A4AD13: FStStrCopy var_88
  loc_A4AD16: LitNothing
  loc_A4AD18: CastAd
  loc_A4AD1B: FStAdFuncNoPop
  loc_A4AD1E: FLdPr Me
  loc_A4AD21: MemStAd
  loc_A4AD25: FFree1Ad var_8C
  loc_A4AD28: New Recordset
  loc_A4AD2C: FStAdFuncNoPop
  loc_A4AD2F: FLdPr Me
  loc_A4AD32: MemStAd
  loc_A4AD36: FFree1Ad var_8C
  loc_A4AD39: LitI4 -1
  loc_A4AD3E: LitI4 3
  loc_A4AD43: LitI4 3
  loc_A4AD48: ImpAdLdI4 MemVar_D9301C
  loc_A4AD4B: CVarAd
  loc_A4AD4F: PopAdLdVar
  loc_A4AD50: ILdRf var_88
  loc_A4AD53: CVarStr var_9C
  loc_A4AD56: PopAdLdVar
  loc_A4AD57: FLdPr Me
  loc_A4AD5A: MemLdPr global_64
  loc_A4AD5D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4AD62: ExitProcHresult
End Function

Private Function Proc_105_29_9DDFDC(arg_C) '9DDFDC
  'Data Table: 405D54
  loc_9DDFC0: ILdI4 arg_C
  loc_9DDFC3: FStStrCopy var_88
  loc_9DDFC6: ILdRf var_88
  loc_9DDFC9: LitStr "Primary"
  loc_9DDFCC: EqStr
  loc_9DDFCE: BranchF loc_9DDFDB
  loc_9DDFD1: FLdPr Me
  loc_9DDFD4: MemLdStr global_60
  loc_9DDFD7: IStAd
  loc_9DDFDB: ExitProcHresult
End Function
