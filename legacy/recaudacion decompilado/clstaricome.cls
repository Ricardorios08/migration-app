VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clstaricome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40B08C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40B09B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40B0AA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EDD54
  'Data Table: 40AE7C
  loc_9EDD2C: FLdRfVar var_88
  loc_9EDD2F: FLdPr Me
  loc_9EDD32: MemLdPr RsFrm
  loc_9EDD35:  = Me.RecordCount
  loc_9EDD3A: ILdRf var_88
  loc_9EDD3D: LitI4 0
  loc_9EDD42: GtI4
  loc_9EDD43: BranchF loc_9EDD51
  loc_9EDD46: FLdPr Me
  loc_9EDD49: MemLdPr RsFrm
  loc_9EDD4C: Me.MoveFirst
  loc_9EDD51: ExitProcHresult
End Sub

Public Sub MoveLast() '9ECF94
  'Data Table: 40AE7C
  loc_9ECF6C: FLdRfVar var_88
  loc_9ECF6F: FLdPr Me
  loc_9ECF72: MemLdPr RsFrm
  loc_9ECF75:  = Me.RecordCount
  loc_9ECF7A: ILdRf var_88
  loc_9ECF7D: LitI4 0
  loc_9ECF82: GtI4
  loc_9ECF83: BranchF loc_9ECF91
  loc_9ECF86: FLdPr Me
  loc_9ECF89: MemLdPr RsFrm
  loc_9ECF8C: Me.MoveLast
  loc_9ECF91: ExitProcHresult
  loc_9ECF92: GtCy
End Sub

Public Sub MoveNext() 'A6C640
  'Data Table: 40AE7C
  loc_A6C5C8: FLdRfVar var_86
  loc_A6C5CB: FLdPr Me
  loc_A6C5CE: MemLdPr RsFrm
  loc_A6C5D1:  = Me.EOF
  loc_A6C5D6: FLdI2 var_86
  loc_A6C5D9: NotI4
  loc_A6C5DA: FLdRfVar var_8C
  loc_A6C5DD: FLdPr Me
  loc_A6C5E0: MemLdPr RsFrm
  loc_A6C5E3:  = Me.RecordCount
  loc_A6C5E8: ILdRf var_8C
  loc_A6C5EB: LitI4 0
  loc_A6C5F0: GtI4
  loc_A6C5F1: AndI4
  loc_A6C5F2: BranchF loc_A6C600
  loc_A6C5F5: FLdPr Me
  loc_A6C5F8: MemLdPr RsFrm
  loc_A6C5FB: Me.MoveNext
  loc_A6C600: FLdRfVar var_86
  loc_A6C603: FLdPr Me
  loc_A6C606: MemLdPr RsFrm
  loc_A6C609:  = Me.EOF
  loc_A6C60E: FLdI2 var_86
  loc_A6C611: FLdRfVar var_8C
  loc_A6C614: FLdPr Me
  loc_A6C617: MemLdPr RsFrm
  loc_A6C61A:  = Me.RecordCount
  loc_A6C61F: ILdRf var_8C
  loc_A6C622: LitI4 0
  loc_A6C627: GtI4
  loc_A6C628: AndI4
  loc_A6C629: BranchF loc_A6C63C
  loc_A6C62C: ImpAdCallFPR4 Beep()
  loc_A6C631: FLdPr Me
  loc_A6C634: MemLdPr RsFrm
  loc_A6C637: Me.MoveLast
  loc_A6C63C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1128
  'Data Table: 40AE7C
  loc_9B111C: FLdPr Me
  loc_9B111F: MemLdPr RsFrm
  loc_9B1122: Me.MoveNext
  loc_9B1127: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA1D8
  'Data Table: 40AE7C
  loc_9BA1C4: LitVar_Missing var_94
  loc_9BA1C7: PopAdLdVar
  loc_9BA1C8: ILdI2 iValor
  loc_9BA1CB: CI4UI1
  loc_9BA1CC: FLdPr Me
  loc_9BA1CF: MemLdPr RsFrm
  loc_9BA1D2: Me.Move from_stack_1, from_stack_2
  loc_9BA1D7: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C2F8
  'Data Table: 40AE7C
  loc_A6C280: FLdRfVar var_86
  loc_A6C283: FLdPr Me
  loc_A6C286: MemLdPr RsFrm
  loc_A6C289:  = Me.BOF
  loc_A6C28E: FLdI2 var_86
  loc_A6C291: NotI4
  loc_A6C292: FLdRfVar var_8C
  loc_A6C295: FLdPr Me
  loc_A6C298: MemLdPr RsFrm
  loc_A6C29B:  = Me.RecordCount
  loc_A6C2A0: ILdRf var_8C
  loc_A6C2A3: LitI4 0
  loc_A6C2A8: GtI4
  loc_A6C2A9: AndI4
  loc_A6C2AA: BranchF loc_A6C2B8
  loc_A6C2AD: FLdPr Me
  loc_A6C2B0: MemLdPr RsFrm
  loc_A6C2B3: Me.MovePrevious
  loc_A6C2B8: FLdRfVar var_86
  loc_A6C2BB: FLdPr Me
  loc_A6C2BE: MemLdPr RsFrm
  loc_A6C2C1:  = Me.BOF
  loc_A6C2C6: FLdI2 var_86
  loc_A6C2C9: FLdRfVar var_8C
  loc_A6C2CC: FLdPr Me
  loc_A6C2CF: MemLdPr RsFrm
  loc_A6C2D2:  = Me.RecordCount
  loc_A6C2D7: ILdRf var_8C
  loc_A6C2DA: LitI4 0
  loc_A6C2DF: GtI4
  loc_A6C2E0: AndI4
  loc_A6C2E1: BranchF loc_A6C2F4
  loc_A6C2E4: ImpAdCallFPR4 Beep()
  loc_A6C2E9: FLdPr Me
  loc_A6C2EC: MemLdPr RsFrm
  loc_A6C2EF: Me.MoveFirst
  loc_A6C2F4: ExitProcHresult
  loc_A6C2F7: FnLBound
End Sub

Public Property Get EOF() '9D8830
  'Data Table: 40AE7C
  loc_9D8814: FLdRfVar var_88
  loc_9D8817: FLdPr Me
  loc_9D881A: MemLdPr RsFrm
  loc_9D881D:  = Me.EOF
  loc_9D8822: FLdI2 var_88
  loc_9D8825: FStI2 var_86
  loc_9D8828: ExitProcCbHresult
  loc_9D882E: FLdPr EOF40
End Sub

Public Property Get BOF() '9D87E4
  'Data Table: 40AE7C
  loc_9D87C8: FLdRfVar var_88
  loc_9D87CB: FLdPr Me
  loc_9D87CE: MemLdPr RsFrm
  loc_9D87D1:  = Me.BOF
  loc_9D87D6: FLdI2 var_88
  loc_9D87D9: FStI2 var_86
  loc_9D87DC: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B4BB8
  'Data Table: 40AE7C
  loc_9B4BA8: ILdI4 sOrden
  loc_9B4BAB: FLdPr Me
  loc_9B4BAE: MemLdPr RsFrm
  loc_9B4BB1: Me.Sort = from_stack_1
  loc_9B4BB6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E09C0
  'Data Table: 40AE7C
  loc_9E09A0: LitVar_Missing var_94
  loc_9E09A3: PopAdLdVar
  loc_9E09A4: LitI4 1
  loc_9E09A9: LitI4 0
  loc_9E09AE: ILdI4 sFind
  loc_9E09B1: FLdPr Me
  loc_9E09B4: MemLdPr RsFrm
  loc_9E09B7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E09BC: ExitProcHresult
  loc_9E09BD: MemLdPr global_26732
End Sub

Public Property Get AbsolutePosition() '9D8700
  'Data Table: 40AE7C
  loc_9D86E4: FLdRfVar var_8C
  loc_9D86E7: FLdPr Me
  loc_9D86EA: MemLdPr RsFrm
  loc_9D86ED:  = Me.AbsolutePosition
  loc_9D86F2: ILdRf var_8C
  loc_9D86F5: FStR4 var_88
  loc_9D86F8: ExitProcCbHresult
  loc_9D86FE: ExitProcHresult
End Sub

Public Property Get RecordCount() '9D86B4
  'Data Table: 40AE7C
  loc_9D8698: FLdRfVar var_8C
  loc_9D869B: FLdPr Me
  loc_9D869E: MemLdPr RsFrm
  loc_9D86A1:  = Me.RecordCount
  loc_9D86A6: ILdRf var_8C
  loc_9D86A9: FStR4 var_88
  loc_9D86AC: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiRamo, CodiRubr, ImpoTaco) 'AA9B54
  'Data Table: 40AE7C
  loc_AA9AA4: FLdRfVar var_88
  loc_AA9AA7: ILdRf CodiRubr
  loc_AA9AAA: FLdI2 CodiRamo
  loc_AA9AAD: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AA9AB2: ILdRf var_88
  loc_AA9AB5: LitStr vbNullString
  loc_AA9AB8: NeStr
  loc_AA9ABA: FFree1Str var_88
  loc_AA9ABD: BranchF loc_AA9ACB
  loc_AA9AC0: LitStr "LA TARIFA DE COMERCIO YA EXISTE. Reintente..."
  loc_AA9AC3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA9AC8: Branch loc_AA9B50
  loc_AA9ACB: LitStr "INSERT INTO taricome (CodiRamo, CodiRubr, ImpoTaco) VALUES ("
  loc_AA9ACE: FLdI2 CodiRamo
  loc_AA9AD1: CStrUI1
  loc_AA9AD3: FStStrNoPop var_88
  loc_AA9AD6: ConcatStr
  loc_AA9AD7: FStStrNoPop var_8C
  loc_AA9ADA: LitStr ","
  loc_AA9ADD: ConcatStr
  loc_AA9ADE: FStStrNoPop var_90
  loc_AA9AE1: ILdRf CodiRubr
  loc_AA9AE4: CStrI4
  loc_AA9AE6: FStStrNoPop var_94
  loc_AA9AE9: ConcatStr
  loc_AA9AEA: FStStrNoPop var_98
  loc_AA9AED: LitStr ","
  loc_AA9AF0: ConcatStr
  loc_AA9AF1: FStStrNoPop var_A0
  loc_AA9AF4: LitI4 0
  loc_AA9AF9: LitI4 -1
  loc_AA9AFE: LitI4 1
  loc_AA9B03: LitStr "."
  loc_AA9B06: LitStr ","
  loc_AA9B09: FLdFPR8 ImpoTaco
  loc_AA9B0C: CStrR8
  loc_AA9B0E: FStStrNoPop var_9C
  loc_AA9B11: ImpAdCallI2 Replace(, , , , , )
  loc_AA9B16: FStStrNoPop var_A4
  loc_AA9B19: ConcatStr
  loc_AA9B1A: FStStrNoPop var_A8
  loc_AA9B1D: LitStr ");"
  loc_AA9B20: ConcatStr
  loc_AA9B21: FStStrNoPop var_AC
  loc_AA9B24: Call EjecutarRsCls(from_stack_1v)
  loc_AA9B29: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA9B40: Call Requery()
  loc_AA9B45: ILdRf CodiRubr
  loc_AA9B48: FLdI2 CodiRamo
  loc_AA9B4B: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AA9B50: ExitProcHresult
End Sub

Public Sub Modificar(CodiRamo, CodiRubr, ImpoTaco) 'AA9734
  'Data Table: 40AE7C
  loc_AA9684: FLdRfVar var_88
  loc_AA9687: ILdRf CodiRubr
  loc_AA968A: FLdI2 CodiRamo
  loc_AA968D: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AA9692: ILdRf var_88
  loc_AA9695: LitStr vbNullString
  loc_AA9698: EqStr
  loc_AA969A: FFree1Str var_88
  loc_AA969D: BranchF loc_AA96AB
  loc_AA96A0: LitStr "LA TARIFA DE COMERCIO NO EXISTE. Reintente..."
  loc_AA96A3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA96A8: Branch loc_AA9720
  loc_AA96AB: LitStr "UPDATE taricome SET ImpoTaco = "
  loc_AA96AE: LitI4 0
  loc_AA96B3: LitI4 -1
  loc_AA96B8: LitI4 1
  loc_AA96BD: LitStr "."
  loc_AA96C0: LitStr ","
  loc_AA96C3: FLdFPR8 ImpoTaco
  loc_AA96C6: CStrR8
  loc_AA96C8: FStStrNoPop var_88
  loc_AA96CB: ImpAdCallI2 Replace(, , , , , )
  loc_AA96D0: FStStrNoPop var_8C
  loc_AA96D3: ConcatStr
  loc_AA96D4: FStStrNoPop var_90
  loc_AA96D7: LitStr " WHERE CodiRamo = "
  loc_AA96DA: ConcatStr
  loc_AA96DB: FStStrNoPop var_94
  loc_AA96DE: FLdI2 CodiRamo
  loc_AA96E1: CStrUI1
  loc_AA96E3: FStStrNoPop var_98
  loc_AA96E6: ConcatStr
  loc_AA96E7: FStStrNoPop var_9C
  loc_AA96EA: LitStr " AND CodiRubr = "
  loc_AA96ED: ConcatStr
  loc_AA96EE: FStStrNoPop var_A0
  loc_AA96F1: ILdRf CodiRubr
  loc_AA96F4: CStrI4
  loc_AA96F6: FStStrNoPop var_A4
  loc_AA96F9: ConcatStr
  loc_AA96FA: FStStrNoPop var_A8
  loc_AA96FD: LitStr ";"
  loc_AA9700: ConcatStr
  loc_AA9701: FStStrNoPop var_AC
  loc_AA9704: Call EjecutarRsCls(from_stack_1v)
  loc_AA9709: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AA9720: Call Requery()
  loc_AA9725: ILdRf CodiRubr
  loc_AA9728: FLdI2 CodiRamo
  loc_AA972B: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AA9730: ExitProcHresult
End Sub

Public Sub Delete(CodiRamo, CodiRubr) 'A8A43C
  'Data Table: 40AE7C
  loc_A8A3AC: FLdRfVar var_88
  loc_A8A3AF: ILdRf CodiRubr
  loc_A8A3B2: FLdI2 CodiRamo
  loc_A8A3B5: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A8A3BA: ILdRf var_88
  loc_A8A3BD: LitStr vbNullString
  loc_A8A3C0: EqStr
  loc_A8A3C2: FFree1Str var_88
  loc_A8A3C5: BranchF loc_A8A3D3
  loc_A8A3C8: LitStr "LA TARIFA DE COMERCIO NO EXISTE. Reintente..."
  loc_A8A3CB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8A3D0: Branch loc_A8A410
  loc_A8A3D3: LitStr "DELETE FROM taricome WHERE CodiRamo = "
  loc_A8A3D6: FLdI2 CodiRamo
  loc_A8A3D9: CStrUI1
  loc_A8A3DB: FStStrNoPop var_88
  loc_A8A3DE: ConcatStr
  loc_A8A3DF: FStStrNoPop var_8C
  loc_A8A3E2: LitStr " AND CodiRubr = "
  loc_A8A3E5: ConcatStr
  loc_A8A3E6: FStStrNoPop var_90
  loc_A8A3E9: ILdRf CodiRubr
  loc_A8A3EC: CStrI4
  loc_A8A3EE: FStStrNoPop var_94
  loc_A8A3F1: ConcatStr
  loc_A8A3F2: FStStrNoPop var_98
  loc_A8A3F5: LitStr ";"
  loc_A8A3F8: ConcatStr
  loc_A8A3F9: FStStrNoPop var_9C
  loc_A8A3FC: Call EjecutarRsCls(from_stack_1v)
  loc_A8A401: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8A410: Call Requery()
  loc_A8A415: FLdRfVar var_A0
  loc_A8A418: FLdPr Me
  loc_A8A41B: MemLdPr RsFrm
  loc_A8A41E:  = Me.RecordCount
  loc_A8A423: ILdRf var_A0
  loc_A8A426: LitI4 0
  loc_A8A42B: GtI4
  loc_A8A42C: BranchF loc_A8A43A
  loc_A8A42F: FLdPr Me
  loc_A8A432: MemLdPr RsFrm
  loc_A8A435: Me.MoveNext
  loc_A8A43A: ExitProcHresult
End Sub

Public Sub Requery() '9E741C
  'Data Table: 40AE7C
  loc_9E73F8: LitI4 -1
  loc_9E73FD: FLdPr Me
  loc_9E7400: MemLdPr RsFrm
  loc_9E7403: Me.Requery from_stack_1
  loc_9E7408: LitVarStr var_94, "Primary"
  loc_9E740D: PopAdLdVar
  loc_9E740E: FLdPr Me
  loc_9E7411: LateIdCall
  loc_9E7419: ExitProcHresult
  loc_9E741A: MemLdI2 global_1024
End Sub

Public Sub Update() 'A0F384
  'Data Table: 40AE7C
  loc_A0F348: FLdPr Me
  loc_A0F34B: MemLdStr RsFrm
  loc_A0F34E: FStAd var_88 
  loc_A0F352: LitI4 3
  loc_A0F357: FLdPr var_88
  loc_A0F35A: Me.UpdateBatch
  loc_A0F35F: FLdRfVar var_8C
  loc_A0F362: FLdPr var_88
  loc_A0F365:  = Me.EditMode
  loc_A0F36A: ILdRf var_8C
  loc_A0F36D: LitI4 2
  loc_A0F372: EqI4
  loc_A0F373: BranchF loc_A0F37B
  loc_A0F376: Call MoveLast()
  loc_A0F37B: LitNothing
  loc_A0F37D: FStAd var_88 
  loc_A0F381: ExitProcHresult
  loc_A0F382: ExitProcR4
End Sub

Public Sub Cancel() 'A2D62C
  'Data Table: 40AE7C
  loc_A2D5E0: FLdPr Me
  loc_A2D5E3: MemLdStr RsFrm
  loc_A2D5E6: FStAd var_88 
  loc_A2D5EA: FLdRfVar var_8C
  loc_A2D5ED: FLdPr var_88
  loc_A2D5F0:  = Me.RecordCount
  loc_A2D5F5: ILdRf var_8C
  loc_A2D5F8: LitI4 0
  loc_A2D5FD: GtI4
  loc_A2D5FE: BranchF loc_A2D625
  loc_A2D601: FLdPr var_88
  loc_A2D604: Me.CancelUpdate
  loc_A2D609: FLdRfVar var_8C
  loc_A2D60C: FLdPr var_88
  loc_A2D60F:  = Me.EditMode
  loc_A2D614: ILdRf var_8C
  loc_A2D617: LitI4 2
  loc_A2D61C: EqI4
  loc_A2D61D: BranchF loc_A2D625
  loc_A2D620: Call MoveFirst()
  loc_A2D625: LitNothing
  loc_A2D627: FStAd var_88 
  loc_A2D62B: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E0B00
  'Data Table: 40AE7C
  loc_9E0AE0: FLdRfVar var_8C
  loc_9E0AE3: FLdPr Me
  loc_9E0AE6: MemLdPr RsFrm
  loc_9E0AE9:  = Me.EditMode
  loc_9E0AEE: ILdRf var_8C
  loc_9E0AF1: LitI4 0
  loc_9E0AF6: NeI4
  loc_9E0AF7: FStI2 var_86
  loc_9E0AFA: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5D900
  'Data Table: 40AE7C
  loc_A5D89C: ILdRf sSelect
  loc_A5D89F: FStStrCopy var_88
  loc_A5D8A2: LitNothing
  loc_A5D8A4: CastAd
  loc_A5D8A7: FStAdFuncNoPop
  loc_A5D8AA: FLdPr Me
  loc_A5D8AD: MemStAd
  loc_A5D8B1: FFree1Ad var_8C
  loc_A5D8B4: New Recordset
  loc_A5D8B8: FStAdFuncNoPop
  loc_A5D8BB: FLdPr Me
  loc_A5D8BE: MemStAd
  loc_A5D8C2: FFree1Ad var_8C
  loc_A5D8C5: LitI4 -1
  loc_A5D8CA: LitI4 3
  loc_A5D8CF: LitI4 3
  loc_A5D8D4: ImpAdLdI4 MemVar_D9301C
  loc_A5D8D7: CVarAd
  loc_A5D8DB: PopAdLdVar
  loc_A5D8DC: ILdRf var_88
  loc_A5D8DF: CVarStr var_9C
  loc_A5D8E2: PopAdLdVar
  loc_A5D8E3: FLdPr Me
  loc_A5D8E6: MemLdPr RsFrm
  loc_A5D8E9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5D8EE: LitVarStr var_9C, "Primary"
  loc_A5D8F3: PopAdLdVar
  loc_A5D8F4: FLdPr Me
  loc_A5D8F7: LateIdCall
  loc_A5D8FF: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A450F8
  'Data Table: 40AE7C
  loc_A450A4: ILdRf sSelect
  loc_A450A7: FStStrCopy var_88
  loc_A450AA: LitNothing
  loc_A450AC: CastAd
  loc_A450AF: FStAdFuncNoPop
  loc_A450B2: FLdPr Me
  loc_A450B5: MemStAd
  loc_A450B9: FFree1Ad var_8C
  loc_A450BC: New Recordset
  loc_A450C0: FStAdFuncNoPop
  loc_A450C3: FLdPr Me
  loc_A450C6: MemStAd
  loc_A450CA: FFree1Ad var_8C
  loc_A450CD: LitI4 -1
  loc_A450D2: LitI4 3
  loc_A450D7: LitI4 3
  loc_A450DC: ImpAdLdI4 MemVar_D9301C
  loc_A450DF: CVarAd
  loc_A450E3: PopAdLdVar
  loc_A450E4: ILdRf var_88
  loc_A450E7: CVarStr var_9C
  loc_A450EA: PopAdLdVar
  loc_A450EB: FLdPr Me
  loc_A450EE: MemLdPr global_64
  loc_A450F1: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A450F6: ExitProcHresult
End Sub

Public Sub Encontrar(CodiRamo, CodiRubr) 'A10D50
  'Data Table: 40AE7C
  loc_A10D14: LitStr "CodiRamo = "
  loc_A10D17: FLdI2 CodiRamo
  loc_A10D1A: CStrUI1
  loc_A10D1C: FStStrNoPop var_88
  loc_A10D1F: ConcatStr
  loc_A10D20: PopTmpLdAdStr
  loc_A10D24: Call Find(from_stack_1v)
  loc_A10D29: FFreeStr var_88 = ""
  loc_A10D30: LitStr "CodiRubr = "
  loc_A10D33: ILdRf CodiRubr
  loc_A10D36: CStrI4
  loc_A10D38: FStStrNoPop var_88
  loc_A10D3B: ConcatStr
  loc_A10D3C: PopTmpLdAdStr
  loc_A10D40: Call Find(from_stack_1v)
  loc_A10D45: FFreeStr var_88 = ""
  loc_A10D4C: ExitProcHresult
End Sub

Public Property Get DataSource() '9F0FB0
  'Data Table: 40AE7C
  loc_9F0F8C: ZeroRetVal
  loc_9F0F8E: FLdRfVar var_8C
  loc_9F0F91: FLdPr Me
  loc_9F0F94: MemLdPr RsFrm
  loc_9F0F97:  = Me.DataSource
  loc_9F0F9C: ILdRf var_8C
  loc_9F0F9F: CastAd
  loc_9F0FA2: FStAdFunc var_88
  loc_9F0FA5: FFree1Ad var_8C
  loc_9F0FA8: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9D81F4
  'Data Table: 40AE7C
  loc_9D81D8: FLdRfVar var_8C
  loc_9D81DB: FLdPr Me
  loc_9D81DE: MemLdPr RsFrm
  loc_9D81E1:  = Me.EditMode
  loc_9D81E6: ILdRf var_8C
  loc_9D81E9: FStR4 var_88
  loc_9D81EC: ExitProcCbHresult
End Sub

Public Property Get CodiRamo() 'A2DDA4
  'Data Table: 40AE7C
  loc_A2DD60: FLdRfVar var_B0
  loc_A2DD63: FLdRfVar var_A0
  loc_A2DD66: LitVarStr var_9C, "CodiRamo"
  loc_A2DD6B: PopAdLdVar
  loc_A2DD6C: FLdRfVar var_8C
  loc_A2DD6F: FLdPr Me
  loc_A2DD72: MemLdPr RsFrm
  loc_A2DD75:  = Me.Fields
  loc_A2DD7A: FLdPr var_8C
  loc_A2DD7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2DD82: FLdPr var_A0
  loc_A2DD85:  = Me.Value
  loc_A2DD8A: FLdRfVar var_B0
  loc_A2DD8D: CI2Var
  loc_A2DD8E: FStI2 var_86
  loc_A2DD91: FFreeAd var_8C = ""
  loc_A2DD98: FFree1Var var_B0 = ""
  loc_A2DD9B: ExitProcCbHresult
End Sub

Public Property Get CodiRubr() 'A2E4A4
  'Data Table: 40AE7C
  loc_A2E460: FLdRfVar var_B0
  loc_A2E463: FLdRfVar var_A0
  loc_A2E466: LitVarStr var_9C, "CodiRubr"
  loc_A2E46B: PopAdLdVar
  loc_A2E46C: FLdRfVar var_8C
  loc_A2E46F: FLdPr Me
  loc_A2E472: MemLdPr RsFrm
  loc_A2E475:  = Me.Fields
  loc_A2E47A: FLdPr var_8C
  loc_A2E47D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E482: FLdPr var_A0
  loc_A2E485:  = Me.Value
  loc_A2E48A: FLdRfVar var_B0
  loc_A2E48D: CI4Var
  loc_A2E48F: FStR4 var_88
  loc_A2E492: FFreeAd var_8C = ""
  loc_A2E499: FFree1Var var_B0 = ""
  loc_A2E49C: ExitProcCbHresult
  loc_A2E4A2: BranchF loc_A2E8F5
End Sub

Public Property Get ImpoTaco() 'A2E724
  'Data Table: 40AE7C
  loc_A2E6E0: FLdRfVar var_B4
  loc_A2E6E3: FLdRfVar var_A4
  loc_A2E6E6: LitVarStr var_A0, "ImpoTaco"
  loc_A2E6EB: PopAdLdVar
  loc_A2E6EC: FLdRfVar var_90
  loc_A2E6EF: FLdPr Me
  loc_A2E6F2: MemLdPr RsFrm
  loc_A2E6F5:  = Me.Fields
  loc_A2E6FA: FLdPr var_90
  loc_A2E6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2E702: FLdPr var_A4
  loc_A2E705:  = Me.Value
  loc_A2E70A: FLdRfVar var_B4
  loc_A2E70D: CR4Var
  loc_A2E70E: FStFPR8 var_8C
  loc_A2E711: FFreeAd var_90 = ""
  loc_A2E718: FFree1Var var_B4 = ""
  loc_A2E71B: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiRamo, CodiRubr) 'A66BD0
  'Data Table: 40AE7C
  loc_A66B74: ZeroRetVal
  loc_A66B76: LitStr "SELECT CodiRamo, CodiRubr FROM taricome WHERE CodiRamo = "
  loc_A66B79: FLdI2 CodiRamo
  loc_A66B7C: CStrUI1
  loc_A66B7E: FStStrNoPop var_8C
  loc_A66B81: ConcatStr
  loc_A66B82: FStStrNoPop var_90
  loc_A66B85: LitStr " AND CodiRubr = "
  loc_A66B88: ConcatStr
  loc_A66B89: FStStrNoPop ValidaClave
  loc_A66B8C: ILdRf CodiRubr
  loc_A66B8F: CStrI4
  loc_A66B91: FStStrNoPop var_98
  loc_A66B94: ConcatStr
  loc_A66B95: FStStrNoPop var_9C
  loc_A66B98: Call EjecutarRsCls(from_stack_1v)
  loc_A66B9D: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = ""
  loc_A66BAA: FLdRfVar var_A0
  loc_A66BAD: FLdPr Me
  loc_A66BB0: MemLdPr global_64
  loc_A66BB3:  = Me.RecordCount
  loc_A66BB8: ILdRf var_A0
  loc_A66BBB: LitI4 0
  loc_A66BC0: GtI4
  loc_A66BC1: BranchF loc_A66BCA
  loc_A66BC4: LitStr "LA TARIFA DE COMERCIO YA EXISTE. Reintente..."
  loc_A66BC7: FStStrCopy var_88
  loc_A66BCA: ExitProcCbHresult
End Function

Public Function ImporteTariCome(CodiRamo, CodiRubr, AcprSeco) 'AE75D0
  'Data Table: 40AE7C
  loc_AE7480: ILdRf AcprSeco
  loc_AE7483: FStStrCopy var_90
  loc_AE7486: LitStr "SELECT CodiRamo, CodiRubr, ROUND(ImpoTaco * "
  loc_AE7489: LitI4 0
  loc_AE748E: LitI4 -1
  loc_AE7493: LitI4 1
  loc_AE7498: LitStr "."
  loc_AE749B: LitStr ","
  loc_AE749E: ImpAdLdFPR8 MemVar_D9307C
  loc_AE74A1: CStrR8
  loc_AE74A3: FStStrNoPop ImporteTariCome
  loc_AE74A6: ImpAdCallI2 Replace(, , , , , )
  loc_AE74AB: FStStrNoPop var_98
  loc_AE74AE: ConcatStr
  loc_AE74AF: FStStrNoPop var_9C
  loc_AE74B2: LitStr ",2) ImpoTaco FROM taricome WHERE CodiRamo = "
  loc_AE74B5: ConcatStr
  loc_AE74B6: FStStrNoPop var_A0
  loc_AE74B9: FLdI2 CodiRamo
  loc_AE74BC: CStrUI1
  loc_AE74BE: FStStrNoPop var_A4
  loc_AE74C1: ConcatStr
  loc_AE74C2: FStStrNoPop var_A8
  loc_AE74C5: LitStr " AND CodiRubr = "
  loc_AE74C8: ConcatStr
  loc_AE74C9: FStStrNoPop var_AC
  loc_AE74CC: ILdRf CodiRubr
  loc_AE74CF: CStrI4
  loc_AE74D1: FStStrNoPop var_B0
  loc_AE74D4: ConcatStr
  loc_AE74D5: FStStrNoPop var_B4
  loc_AE74D8: Call EjecutarRsCls(from_stack_1v)
  loc_AE74DD: FFreeStr ImporteTariCome = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AE74F2: FLdRfVar var_B8
  loc_AE74F5: FLdPr Me
  loc_AE74F8: MemLdPr global_64
  loc_AE74FB:  = Me.RecordCount
  loc_AE7500: ILdRf var_B8
  loc_AE7503: LitI4 0
  loc_AE7508: GtI4
  loc_AE7509: BranchF loc_AE75C3
  loc_AE750C: ILdRf var_90
  loc_AE750F: LitStr "Si"
  loc_AE7512: EqStr
  loc_AE7514: BranchF loc_AE7556
  loc_AE7517: FLdRfVar var_E0
  loc_AE751A: FLdRfVar var_D0
  loc_AE751D: LitVarStr var_CC, "ImpoTaco"
  loc_AE7522: PopAdLdVar
  loc_AE7523: FLdRfVar var_BC
  loc_AE7526: FLdPr Me
  loc_AE7529: MemLdPr global_64
  loc_AE752C:  = Me.Fields
  loc_AE7531: FLdPr var_BC
  loc_AE7534: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7539: FLdPr var_D0
  loc_AE753C:  = Me.Value
  loc_AE7541: FLdRfVar var_E0
  loc_AE7544: FnCDblVar
  loc_AE7546: FStFPR8 var_8C
  loc_AE7549: FFreeAd var_BC = ""
  loc_AE7550: FFree1Var var_E0 = ""
  loc_AE7553: Branch loc_AE75C0
  loc_AE7556: ILdRf var_90
  loc_AE7559: LitStr "No"
  loc_AE755C: EqStr
  loc_AE755E: BranchF loc_AE75C0
  loc_AE7561: FLdRfVar var_E0
  loc_AE7564: FLdRfVar var_D0
  loc_AE7567: LitVarStr var_CC, "ImpoTaco"
  loc_AE756C: PopAdLdVar
  loc_AE756D: FLdRfVar var_BC
  loc_AE7570: FLdPr Me
  loc_AE7573: MemLdPr global_64
  loc_AE7576:  = Me.Fields
  loc_AE757B: FLdPr var_BC
  loc_AE757E: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7583: FLdPr var_D0
  loc_AE7586:  = Me.Value
  loc_AE758B: LitI4 2
  loc_AE7590: FLdRfVar var_E0
  loc_AE7593: FnCDblVar
  loc_AE7595: LitI2_Byte &H19
  loc_AE7597: CR8I2
  loc_AE7598: MulR8
  loc_AE7599: LitI2_Byte &H64
  loc_AE759B: CR8I2
  loc_AE759C: DivR8
  loc_AE759D: CVarR8
  loc_AE75A1: FLdRfVar var_110
  loc_AE75A4: ImpAdCallFPR4  = Round(, )
  loc_AE75A9: FLdRfVar var_110
  loc_AE75AC: CR4Var
  loc_AE75AD: FStFPR8 var_8C
  loc_AE75B0: FFreeAd var_BC = ""
  loc_AE75B7: FFreeVar var_E0 = "": var_100 = ""
  loc_AE75C0: Branch loc_AE75C9
  loc_AE75C3: LitI2_Byte 0
  loc_AE75C5: CR8I2
  loc_AE75C6: FStFPR8 var_8C
  loc_AE75C9: ExitProcCbHresult
End Function

Public Function ValidaEliminarRubro(CodiRamo, CodiRubr) 'A66754
  'Data Table: 40AE7C
  loc_A666F8: ZeroRetVal
  loc_A666FA: LitStr "SELECT CodiRamo, CodiRubr FROM taricome WHERE CodiRamo = "
  loc_A666FD: FLdI2 CodiRamo
  loc_A66700: CStrUI1
  loc_A66702: FStStrNoPop var_8C
  loc_A66705: ConcatStr
  loc_A66706: FStStrNoPop var_90
  loc_A66709: LitStr " AND CodiRubr = "
  loc_A6670C: ConcatStr
  loc_A6670D: FStStrNoPop ValidaEliminarRubro
  loc_A66710: ILdRf CodiRubr
  loc_A66713: CStrI4
  loc_A66715: FStStrNoPop var_98
  loc_A66718: ConcatStr
  loc_A66719: FStStrNoPop var_9C
  loc_A6671C: Call EjecutarRsCls(from_stack_1v)
  loc_A66721: FFreeStr var_8C = "": var_90 = "": ValidaEliminarRubro = "": var_98 = ""
  loc_A6672E: FLdRfVar var_A0
  loc_A66731: FLdPr Me
  loc_A66734: MemLdPr global_64
  loc_A66737:  = Me.RecordCount
  loc_A6673C: ILdRf var_A0
  loc_A6673F: LitI4 0
  loc_A66744: GtI4
  loc_A66745: BranchF loc_A6674E
  loc_A66748: LitStr "El Rubro Existe en Tarifa de Comercio. Reintente..."
  loc_A6674B: FStStrCopy var_88
  loc_A6674E: ExitProcCbHresult
End Function

Private Function Proc_101_33_9E6C34(arg_10) '9E6C34
  'Data Table: 40AE7C
  loc_9E6C18: ILdRf arg_10
  loc_9E6C1B: FStAd var_88 
  loc_9E6C1F: ILdRf arg_18
  loc_9E6C22: FStAd var_8C 
  loc_9E6C26: FLdPr Me
  loc_9E6C29: RaiseEvent
  loc_9E6C31: ExitProcHresult
End Function

Private Function Proc_101_34_A9D9E0(arg_C) 'A9D9E0
  'Data Table: 40AE7C
  loc_A9D920: ILdRf arg_18
  loc_A9D923: FStAd var_88 
  loc_A9D927: ILdRf arg_C
  loc_A9D92A: FStR4 var_90
  loc_A9D92D: ILdRf var_90
  loc_A9D930: LitI4 1
  loc_A9D935: EqI4
  loc_A9D936: BranchF loc_A9D93C
  loc_A9D939: Branch loc_A9D9CF
  loc_A9D93C: ILdRf var_90
  loc_A9D93F: LitI4 9
  loc_A9D944: EqI4
  loc_A9D945: BranchF loc_A9D94B
  loc_A9D948: Branch loc_A9D9CF
  loc_A9D94B: ILdRf var_90
  loc_A9D94E: LitI4 2
  loc_A9D953: EqI4
  loc_A9D954: BranchF loc_A9D95A
  loc_A9D957: Branch loc_A9D9CF
  loc_A9D95A: ILdRf var_90
  loc_A9D95D: LitI4 &HB
  loc_A9D962: EqI4
  loc_A9D963: BranchF loc_A9D969
  loc_A9D966: Branch loc_A9D9CF
  loc_A9D969: ILdRf var_90
  loc_A9D96C: LitI4 &HA
  loc_A9D971: EqI4
  loc_A9D972: BranchF loc_A9D978
  loc_A9D975: Branch loc_A9D9CF
  loc_A9D978: ILdRf var_90
  loc_A9D97B: LitI4 7
  loc_A9D980: EqI4
  loc_A9D981: BranchF loc_A9D987
  loc_A9D984: Branch loc_A9D9CF
  loc_A9D987: ILdRf var_90
  loc_A9D98A: LitI4 8
  loc_A9D98F: EqI4
  loc_A9D990: BranchF loc_A9D996
  loc_A9D993: Branch loc_A9D9CF
  loc_A9D996: ILdRf var_90
  loc_A9D999: LitI4 5
  loc_A9D99E: EqI4
  loc_A9D99F: BranchF loc_A9D9A5
  loc_A9D9A2: Branch loc_A9D9CF
  loc_A9D9A5: ILdRf var_90
  loc_A9D9A8: LitI4 6
  loc_A9D9AD: EqI4
  loc_A9D9AE: BranchF loc_A9D9B4
  loc_A9D9B1: Branch loc_A9D9CF
  loc_A9D9B4: ILdRf var_90
  loc_A9D9B7: LitI4 4
  loc_A9D9BC: EqI4
  loc_A9D9BD: BranchF loc_A9D9C3
  loc_A9D9C0: Branch loc_A9D9CF
  loc_A9D9C3: ILdRf var_90
  loc_A9D9C6: LitI4 3
  loc_A9D9CB: EqI4
  loc_A9D9CC: BranchF loc_A9D9CF
  loc_A9D9CF: FLdI2 var_8A
  loc_A9D9D2: BranchF loc_A9D9DD
  loc_A9D9D5: LitI4 4
  loc_A9D9DA: IStI4 arg_14
  loc_A9D9DD: ExitProcHresult
End Function

Private Function Proc_101_35_9F4AFC() '9F4AFC
  'Data Table: 40AE7C
  loc_9F4AD8: LitStr "Primary"
  loc_9F4ADB: FLdPr Me
  loc_9F4ADE: LateIdLdVar var_94 DispID_4 0
  loc_9F4AE5: CastAdVar Me
  loc_9F4AE9: FStAdFunc var_98
  loc_9F4AEC: FLdPr var_98
  loc_9F4AF4: FFree1Ad var_98
  loc_9F4AF7: FFree1Var var_94 = ""
  loc_9F4AFA: ExitProcHresult
End Function

Private Function Proc_101_36_9E0EBC(arg_C) '9E0EBC
  'Data Table: 40AE7C
  loc_9E0EA0: ILdI4 arg_C
  loc_9E0EA3: FStStrCopy var_88
  loc_9E0EA6: ILdRf var_88
  loc_9E0EA9: LitStr "Primary"
  loc_9E0EAC: EqStr
  loc_9E0EAE: BranchF loc_9E0EBB
  loc_9E0EB1: FLdPr Me
  loc_9E0EB4: MemLdStr RsFrm
  loc_9E0EB7: IStAd
  loc_9E0EBB: ExitProcHresult
End Function
