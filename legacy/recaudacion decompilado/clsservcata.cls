VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsservcata"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A100A4
  'Data Table: 42B82C
  loc_A10068: FLdRfVar var_8C
  loc_A1006B: FLdRfVar var_88
  loc_A1006E: FLdPr Me
  loc_A10071: from_stack_1v = clsservcata.global_4372404Get()
  loc_A10076: FLdPr var_88
  loc_A10079:  = Me.RecordCount
  loc_A1007E: ILdRf var_8C
  loc_A10081: LitI4 0
  loc_A10086: GtI4
  loc_A10087: FFree1Ad var_88
  loc_A1008A: BranchF loc_A100A3
  loc_A1008D: FLdRfVar var_88
  loc_A10090: FLdPr Me
  loc_A10093: from_stack_1v = clsservcata.global_4372404Get()
  loc_A10098: FLdPr var_88
  loc_A1009B: Me.MoveFirst
  loc_A100A0: FFree1Ad var_88
  loc_A100A3: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0FB64
  'Data Table: 42B82C
  loc_A0FB28: FLdRfVar var_8C
  loc_A0FB2B: FLdRfVar var_88
  loc_A0FB2E: FLdPr Me
  loc_A0FB31: from_stack_1v = clsservcata.global_4372404Get()
  loc_A0FB36: FLdPr var_88
  loc_A0FB39:  = Me.RecordCount
  loc_A0FB3E: ILdRf var_8C
  loc_A0FB41: LitI4 0
  loc_A0FB46: GtI4
  loc_A0FB47: FFree1Ad var_88
  loc_A0FB4A: BranchF loc_A0FB63
  loc_A0FB4D: FLdRfVar var_88
  loc_A0FB50: FLdPr Me
  loc_A0FB53: from_stack_1v = clsservcata.global_4372404Get()
  loc_A0FB58: FLdPr var_88
  loc_A0FB5B: Me.MoveLast
  loc_A0FB60: FFree1Ad var_88
  loc_A0FB63: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9F398
  'Data Table: 42B82C
  loc_A9F2DC: FLdRfVar var_8A
  loc_A9F2DF: FLdRfVar var_88
  loc_A9F2E2: FLdPr Me
  loc_A9F2E5: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F2EA: FLdPr var_88
  loc_A9F2ED:  = Me.EOF
  loc_A9F2F2: FLdI2 var_8A
  loc_A9F2F5: NotI4
  loc_A9F2F6: FLdRfVar var_94
  loc_A9F2F9: FLdRfVar var_90
  loc_A9F2FC: FLdPr Me
  loc_A9F2FF: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F304: FLdPr var_90
  loc_A9F307:  = Me.RecordCount
  loc_A9F30C: ILdRf var_94
  loc_A9F30F: LitI4 0
  loc_A9F314: GtI4
  loc_A9F315: AndI4
  loc_A9F316: FFreeAd var_88 = ""
  loc_A9F31D: BranchF loc_A9F336
  loc_A9F320: FLdRfVar var_88
  loc_A9F323: FLdPr Me
  loc_A9F326: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F32B: FLdPr var_88
  loc_A9F32E: Me.MoveNext
  loc_A9F333: FFree1Ad var_88
  loc_A9F336: FLdRfVar var_8A
  loc_A9F339: FLdRfVar var_88
  loc_A9F33C: FLdPr Me
  loc_A9F33F: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F344: FLdPr var_88
  loc_A9F347:  = Me.EOF
  loc_A9F34C: FLdI2 var_8A
  loc_A9F34F: FLdRfVar var_94
  loc_A9F352: FLdRfVar var_90
  loc_A9F355: FLdPr Me
  loc_A9F358: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F35D: FLdPr var_90
  loc_A9F360:  = Me.RecordCount
  loc_A9F365: ILdRf var_94
  loc_A9F368: LitI4 0
  loc_A9F36D: GtI4
  loc_A9F36E: AndI4
  loc_A9F36F: FFreeAd var_88 = ""
  loc_A9F376: BranchF loc_A9F394
  loc_A9F379: ImpAdCallFPR4 Beep()
  loc_A9F37E: FLdRfVar var_88
  loc_A9F381: FLdPr Me
  loc_A9F384: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F389: FLdPr var_88
  loc_A9F38C: Me.MoveLast
  loc_A9F391: FFree1Ad var_88
  loc_A9F394: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9CE44C
  'Data Table: 42B82C
  loc_9CE434: FLdRfVar var_88
  loc_9CE437: FLdPr Me
  loc_9CE43A: from_stack_1v = clsservcata.global_4372404Get()
  loc_9CE43F: FLdPr var_88
  loc_9CE442: Me.MoveNext
  loc_9CE447: FFree1Ad var_88
  loc_9CE44A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E6CE0
  'Data Table: 42B82C
  loc_9E6CC0: LitVar_Missing var_98
  loc_9E6CC3: PopAdLdVar
  loc_9E6CC4: ILdI2 iValor
  loc_9E6CC7: CI4UI1
  loc_9E6CC8: FLdRfVar var_88
  loc_9E6CCB: FLdPr Me
  loc_9E6CCE: from_stack_1v = clsservcata.global_4372404Get()
  loc_9E6CD3: FLdPr var_88
  loc_9E6CD6: Me.Move from_stack_1, from_stack_2
  loc_9E6CDB: FFree1Ad var_88
  loc_9E6CDE: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9F674
  'Data Table: 42B82C
  loc_A9F5B8: FLdRfVar var_8A
  loc_A9F5BB: FLdRfVar var_88
  loc_A9F5BE: FLdPr Me
  loc_A9F5C1: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F5C6: FLdPr var_88
  loc_A9F5C9:  = Me.BOF
  loc_A9F5CE: FLdI2 var_8A
  loc_A9F5D1: NotI4
  loc_A9F5D2: FLdRfVar var_94
  loc_A9F5D5: FLdRfVar var_90
  loc_A9F5D8: FLdPr Me
  loc_A9F5DB: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F5E0: FLdPr var_90
  loc_A9F5E3:  = Me.RecordCount
  loc_A9F5E8: ILdRf var_94
  loc_A9F5EB: LitI4 0
  loc_A9F5F0: GtI4
  loc_A9F5F1: AndI4
  loc_A9F5F2: FFreeAd var_88 = ""
  loc_A9F5F9: BranchF loc_A9F612
  loc_A9F5FC: FLdRfVar var_88
  loc_A9F5FF: FLdPr Me
  loc_A9F602: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F607: FLdPr var_88
  loc_A9F60A: Me.MovePrevious
  loc_A9F60F: FFree1Ad var_88
  loc_A9F612: FLdRfVar var_8A
  loc_A9F615: FLdRfVar var_88
  loc_A9F618: FLdPr Me
  loc_A9F61B: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F620: FLdPr var_88
  loc_A9F623:  = Me.BOF
  loc_A9F628: FLdI2 var_8A
  loc_A9F62B: FLdRfVar var_94
  loc_A9F62E: FLdRfVar var_90
  loc_A9F631: FLdPr Me
  loc_A9F634: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F639: FLdPr var_90
  loc_A9F63C:  = Me.RecordCount
  loc_A9F641: ILdRf var_94
  loc_A9F644: LitI4 0
  loc_A9F649: GtI4
  loc_A9F64A: AndI4
  loc_A9F64B: FFreeAd var_88 = ""
  loc_A9F652: BranchF loc_A9F670
  loc_A9F655: ImpAdCallFPR4 Beep()
  loc_A9F65A: FLdRfVar var_88
  loc_A9F65D: FLdPr Me
  loc_A9F660: from_stack_1v = clsservcata.global_4372404Get()
  loc_A9F665: FLdPr var_88
  loc_A9F668: Me.MoveFirst
  loc_A9F66D: FFree1Ad var_88
  loc_A9F670: ExitProcHresult
  loc_A9F671: FLdZeroAd MovePreviousD1
End Sub

Public Property Get EOF() '9F2AA8
  'Data Table: 42B82C
  loc_9F2A80: FLdRfVar var_8E
  loc_9F2A83: FLdRfVar var_8C
  loc_9F2A86: FLdPr Me
  loc_9F2A89: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F2A8E: FLdPr var_8C
  loc_9F2A91:  = Me.EOF
  loc_9F2A96: FLdI2 var_8E
  loc_9F2A99: FStI2 var_86
  loc_9F2A9C: FFree1Ad var_8C
  loc_9F2A9F: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F2A4C
  'Data Table: 42B82C
  loc_9F2A24: FLdRfVar var_8E
  loc_9F2A27: FLdRfVar var_8C
  loc_9F2A2A: FLdPr Me
  loc_9F2A2D: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F2A32: FLdPr var_8C
  loc_9F2A35:  = Me.BOF
  loc_9F2A3A: FLdI2 var_8E
  loc_9F2A3D: FStI2 var_86
  loc_9F2A40: FFree1Ad var_8C
  loc_9F2A43: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9DE66C
  'Data Table: 42B82C
  loc_9DE650: ILdI4 sOrden
  loc_9DE653: FLdRfVar var_88
  loc_9DE656: FLdPr Me
  loc_9DE659: from_stack_1v = clsservcata.global_4372404Get()
  loc_9DE65E: FLdPr var_88
  loc_9DE661: Me.Sort = from_stack_1
  loc_9DE666: FFree1Ad var_88
  loc_9DE669: ExitProcHresult
  loc_9DE66A: IStDarg var_4C00
End Sub

Public Sub Find(sFind) '9F29F0
  'Data Table: 42B82C
  loc_9F29C8: LitVar_Missing var_98
  loc_9F29CB: PopAdLdVar
  loc_9F29CC: LitI4 1
  loc_9F29D1: LitI4 0
  loc_9F29D6: ILdI4 sFind
  loc_9F29D9: FLdRfVar var_88
  loc_9F29DC: FLdPr Me
  loc_9F29DF: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F29E4: FLdPr var_88
  loc_9F29E7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F29EC: FFree1Ad var_88
  loc_9F29EF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F2938
  'Data Table: 42B82C
  loc_9F2910: FLdRfVar var_90
  loc_9F2913: FLdRfVar var_8C
  loc_9F2916: FLdPr Me
  loc_9F2919: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F291E: FLdPr var_8C
  loc_9F2921:  = Me.AbsolutePosition
  loc_9F2926: ILdRf var_90
  loc_9F2929: FStR4 var_88
  loc_9F292C: FFree1Ad var_8C
  loc_9F292F: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F2880
  'Data Table: 42B82C
  loc_9F2858: FLdRfVar var_90
  loc_9F285B: FLdRfVar var_8C
  loc_9F285E: FLdPr Me
  loc_9F2861: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F2866: FLdPr var_8C
  loc_9F2869:  = Me.RecordCount
  loc_9F286E: ILdRf var_90
  loc_9F2871: FStR4 var_88
  loc_9F2874: FFree1Ad var_8C
  loc_9F2877: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiSeca, DetaSeca, FrecSeca, FormSeca, CodiTili, ImpoSeca) 'AE1F94
  'Data Table: 42B82C
  loc_AE1E80: ILdRf DetaSeca
  loc_AE1E83: FStStrCopy var_88
  loc_AE1E86: ILdRf FrecSeca
  loc_AE1E89: FStStrCopy var_8C
  loc_AE1E8C: FLdRfVar var_90
  loc_AE1E8F: FLdI2 CodiSeca
  loc_AE1E92: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AE1E97: ILdRf var_90
  loc_AE1E9A: LitStr vbNullString
  loc_AE1E9D: NeStr
  loc_AE1E9F: FFree1Str var_90
  loc_AE1EA2: BranchF loc_AE1EB0
  loc_AE1EA5: LitStr "El SERVICIO DE CATASTRO YA EXISTE. Reintente..."
  loc_AE1EA8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1EAD: Branch loc_AE1F92
  loc_AE1EB0: LitStr "INSERT INTO servcata (PeriOrde, CodiSeca, DetaSeca, FrecSeca,FormSeca, CodiTili, ImpoSeca) "
  loc_AE1EB3: LitStr "VALUES ("
  loc_AE1EB6: ConcatStr
  loc_AE1EB7: FStStrNoPop var_90
  loc_AE1EBA: ImpAdLdI2 MemVar_D93036
  loc_AE1EBD: CStrUI1
  loc_AE1EBF: FStStrNoPop var_94
  loc_AE1EC2: ConcatStr
  loc_AE1EC3: FStStrNoPop var_98
  loc_AE1EC6: LitStr ","
  loc_AE1EC9: ConcatStr
  loc_AE1ECA: FStStrNoPop var_9C
  loc_AE1ECD: FLdI2 CodiSeca
  loc_AE1ED0: CStrUI1
  loc_AE1ED2: FStStrNoPop var_A0
  loc_AE1ED5: ConcatStr
  loc_AE1ED6: FStStrNoPop var_A4
  loc_AE1ED9: LitStr ",'"
  loc_AE1EDC: ConcatStr
  loc_AE1EDD: FStStrNoPop var_A8
  loc_AE1EE0: ILdRf var_88
  loc_AE1EE3: ConcatStr
  loc_AE1EE4: FStStrNoPop var_AC
  loc_AE1EE7: LitStr "','"
  loc_AE1EEA: ConcatStr
  loc_AE1EEB: FStStrNoPop var_B0
  loc_AE1EEE: ILdRf var_8C
  loc_AE1EF1: ConcatStr
  loc_AE1EF2: FStStrNoPop var_B4
  loc_AE1EF5: LitStr "',"
  loc_AE1EF8: ConcatStr
  loc_AE1EF9: FStStrNoPop var_B8
  loc_AE1EFC: FLdUI1
  loc_AE1F00: CStrI2
  loc_AE1F02: FStStrNoPop var_BC
  loc_AE1F05: ConcatStr
  loc_AE1F06: FStStrNoPop var_C0
  loc_AE1F09: LitStr ","
  loc_AE1F0C: ConcatStr
  loc_AE1F0D: FStStrNoPop var_C4
  loc_AE1F10: FLdFPR8 CodiTili
  loc_AE1F13: CStrR8
  loc_AE1F15: FStStrNoPop var_C8
  loc_AE1F18: ConcatStr
  loc_AE1F19: FStStrNoPop var_CC
  loc_AE1F1C: LitStr ","
  loc_AE1F1F: ConcatStr
  loc_AE1F20: FStStrNoPop var_D4
  loc_AE1F23: LitI4 0
  loc_AE1F28: LitI4 -1
  loc_AE1F2D: LitI4 1
  loc_AE1F32: LitStr "."
  loc_AE1F35: LitStr ","
  loc_AE1F38: FLdFPR8 arg_24
  loc_AE1F3B: CStrR8
  loc_AE1F3D: FStStrNoPop var_D0
  loc_AE1F40: ImpAdCallI2 Replace(, , , , , )
  loc_AE1F45: FStStrNoPop var_D8
  loc_AE1F48: ConcatStr
  loc_AE1F49: FStStrNoPop var_DC
  loc_AE1F4C: LitStr ");"
  loc_AE1F4F: ConcatStr
  loc_AE1F50: FStStrNoPop var_E0
  loc_AE1F53: Call EjecutarRs2(from_stack_1v)
  loc_AE1F58: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AE1F85: Call Requery()
  loc_AE1F8A: FLdI2 CodiSeca
  loc_AE1F8D: Call Encontrar(from_stack_1v)
  loc_AE1F92: ExitProcHresult
End Sub

Public Sub AddNewMigracion(CodiSeca, DetaSeca, FrecSeca, ImpoSeca) 'A97254
  'Data Table: 42B82C
  loc_A971C8: ILdRf DetaSeca
  loc_A971CB: FStStrCopy var_88
  loc_A971CE: ILdRf FrecSeca
  loc_A971D1: FStStrCopy var_8C
  loc_A971D4: ILdRf ImpoSeca
  loc_A971D7: FStStrCopy var_90
  loc_A971DA: LitStr "INSERT INTO servcata (CodiSeca, DetaSeca,FrecSeca, ImpoSeca) VALUES ("
  loc_A971DD: FLdI2 CodiSeca
  loc_A971E0: CStrUI1
  loc_A971E2: FStStrNoPop var_94
  loc_A971E5: ConcatStr
  loc_A971E6: FStStrNoPop var_98
  loc_A971E9: LitStr ",'"
  loc_A971EC: ConcatStr
  loc_A971ED: FStStrNoPop var_9C
  loc_A971F0: ILdRf var_88
  loc_A971F3: ConcatStr
  loc_A971F4: FStStrNoPop var_A0
  loc_A971F7: LitStr "','"
  loc_A971FA: ConcatStr
  loc_A971FB: FStStrNoPop var_A4
  loc_A971FE: ILdRf var_8C
  loc_A97201: ConcatStr
  loc_A97202: FStStrNoPop var_A8
  loc_A97205: LitStr "',"
  loc_A97208: ConcatStr
  loc_A97209: FStStrNoPop var_AC
  loc_A9720C: LitI4 0
  loc_A97211: LitI4 -1
  loc_A97216: LitI4 1
  loc_A9721B: LitStr "."
  loc_A9721E: LitStr ","
  loc_A97221: ILdRf var_90
  loc_A97224: ImpAdCallI2 Replace(, , , , , )
  loc_A97229: FStStrNoPop var_B0
  loc_A9722C: ConcatStr
  loc_A9722D: FStStrNoPop var_B4
  loc_A97230: LitStr ");"
  loc_A97233: ConcatStr
  loc_A97234: FStStrNoPop var_B8
  loc_A97237: Call EjecutarRs2(from_stack_1v)
  loc_A9723C: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A97253: ExitProcHresult
End Sub

Public Sub Modificar(CodiSeca, DetaSeca, FrecSeca, FormSeca, CodiTili, ImpoSeca) 'AD8D2C
  'Data Table: 42B82C
  loc_AD8C2C: ILdRf DetaSeca
  loc_AD8C2F: FStStrCopy var_88
  loc_AD8C32: ILdRf FrecSeca
  loc_AD8C35: FStStrCopy var_8C
  loc_AD8C38: ILdRf ImpoSeca
  loc_AD8C3B: FStStrCopy var_90
  loc_AD8C3E: FLdRfVar var_94
  loc_AD8C41: FLdI2 CodiSeca
  loc_AD8C44: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AD8C49: ILdRf var_94
  loc_AD8C4C: LitStr vbNullString
  loc_AD8C4F: EqStr
  loc_AD8C51: FFree1Str var_94
  loc_AD8C54: BranchF loc_AD8C62
  loc_AD8C57: LitStr "El SERVICIO de CATASTRO NO EXISTE. Reintente..."
  loc_AD8C5A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD8C5F: Branch loc_AD8D1E
  loc_AD8C62: LitStr " UPDATE servcata SET DetaSeca = '"
  loc_AD8C65: ILdRf var_88
  loc_AD8C68: ConcatStr
  loc_AD8C69: FStStrNoPop var_94
  loc_AD8C6C: LitStr "', FrecSeca = '"
  loc_AD8C6F: ConcatStr
  loc_AD8C70: FStStrNoPop var_98
  loc_AD8C73: ILdRf var_8C
  loc_AD8C76: ConcatStr
  loc_AD8C77: FStStrNoPop var_9C
  loc_AD8C7A: LitStr "', FormSeca = "
  loc_AD8C7D: ConcatStr
  loc_AD8C7E: FStStrNoPop var_A0
  loc_AD8C81: FLdUI1
  loc_AD8C85: CStrI2
  loc_AD8C87: FStStrNoPop var_A4
  loc_AD8C8A: ConcatStr
  loc_AD8C8B: FStStrNoPop var_A8
  loc_AD8C8E: LitStr ", CodiTili = "
  loc_AD8C91: ConcatStr
  loc_AD8C92: FStStrNoPop var_AC
  loc_AD8C95: FLdI2 CodiTili
  loc_AD8C98: CStrUI1
  loc_AD8C9A: FStStrNoPop var_B0
  loc_AD8C9D: ConcatStr
  loc_AD8C9E: FStStrNoPop var_B4
  loc_AD8CA1: LitStr ", ImpoSeca = "
  loc_AD8CA4: ConcatStr
  loc_AD8CA5: FStStrNoPop var_B8
  loc_AD8CA8: LitI4 0
  loc_AD8CAD: LitI4 -1
  loc_AD8CB2: LitI4 1
  loc_AD8CB7: LitStr "."
  loc_AD8CBA: LitStr ","
  loc_AD8CBD: ILdRf var_90
  loc_AD8CC0: ImpAdCallI2 Replace(, , , , , )
  loc_AD8CC5: FStStrNoPop var_BC
  loc_AD8CC8: ConcatStr
  loc_AD8CC9: FStStrNoPop var_C0
  loc_AD8CCC: LitStr " WHERE PeriOrde = "
  loc_AD8CCF: ConcatStr
  loc_AD8CD0: FStStrNoPop var_C4
  loc_AD8CD3: ImpAdLdI2 MemVar_D93036
  loc_AD8CD6: CStrUI1
  loc_AD8CD8: FStStrNoPop var_C8
  loc_AD8CDB: ConcatStr
  loc_AD8CDC: FStStrNoPop var_CC
  loc_AD8CDF: LitStr " AND Codiseca = "
  loc_AD8CE2: ConcatStr
  loc_AD8CE3: FStStrNoPop var_D0
  loc_AD8CE6: FLdI2 CodiSeca
  loc_AD8CE9: CStrUI1
  loc_AD8CEB: FStStrNoPop var_D4
  loc_AD8CEE: ConcatStr
  loc_AD8CEF: FStStrNoPop var_D8
  loc_AD8CF2: Call EjecutarRs2(from_stack_1v)
  loc_AD8CF7: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_AD8D1E: Call Requery()
  loc_AD8D23: FLdI2 CodiSeca
  loc_AD8D26: Call Encontrar(from_stack_1v)
  loc_AD8D2B: ExitProcHresult
End Sub

Public Sub Delete() 'A24E34
  'Data Table: 42B82C
  loc_A24DEC: FLdRfVar var_8C
  loc_A24DEF: FLdRfVar var_88
  loc_A24DF2: FLdPr Me
  loc_A24DF5: from_stack_1v = clsservcata.global_4372404Get()
  loc_A24DFA: FLdPr var_88
  loc_A24DFD:  = Me.RecordCount
  loc_A24E02: ILdRf var_8C
  loc_A24E05: LitI4 0
  loc_A24E0A: GtI4
  loc_A24E0B: FFree1Ad var_88
  loc_A24E0E: BranchF loc_A24E31
  loc_A24E11: LitI4 1
  loc_A24E16: FLdRfVar var_88
  loc_A24E19: FLdPr Me
  loc_A24E1C: from_stack_1v = clsservcata.global_4372404Get()
  loc_A24E21: FLdPr var_88
  loc_A24E24: Me.Delete
  loc_A24E29: FFree1Ad var_88
  loc_A24E2C: Call MoveNext()
  loc_A24E31: ExitProcHresult
  loc_A24E32: ImpAdLdI2 MemVar_0
End Sub

Public Sub Requery() 'A00C68
  'Data Table: 42B82C
  loc_A00C38: LitI4 -1
  loc_A00C3D: FLdRfVar var_88
  loc_A00C40: FLdPr Me
  loc_A00C43: from_stack_1v = clsservcata.global_4372404Get()
  loc_A00C48: FLdPr var_88
  loc_A00C4B: Me.Requery from_stack_1
  loc_A00C50: FFree1Ad var_88
  loc_A00C53: LitVarStr var_98, "Primary"
  loc_A00C58: PopAdLdVar
  loc_A00C59: FLdPr Me
  loc_A00C5C: LateIdCall
  loc_A00C64: ExitProcHresult
End Sub

Public Sub Update() 'A24D38
  'Data Table: 42B82C
  loc_A24CF4: FLdRfVar var_88
  loc_A24CF7: FLdPr Me
  loc_A24CFA: from_stack_1v = clsservcata.global_4372404Get()
  loc_A24CFF: FLdZeroAd var_88
  loc_A24D02: FStAdFunc var_8C
  loc_A24D05: LitI4 3
  loc_A24D0A: FLdPr var_8C
  loc_A24D0D: Me.UpdateBatch
  loc_A24D12: FLdRfVar var_90
  loc_A24D15: FLdPr var_8C
  loc_A24D18:  = Me.EditMode
  loc_A24D1D: ILdRf var_90
  loc_A24D20: LitI4 2
  loc_A24D25: EqI4
  loc_A24D26: BranchF loc_A24D2E
  loc_A24D29: Call MoveLast()
  loc_A24D2E: LitNothing
  loc_A24D30: FStAd var_8C 
  loc_A24D34: ExitProcHresult
End Sub

Public Sub Cancel() 'A50C00
  'Data Table: 42B82C
  loc_A50BAC: FLdRfVar var_88
  loc_A50BAF: FLdPr Me
  loc_A50BB2: from_stack_1v = clsservcata.global_4372404Get()
  loc_A50BB7: FLdZeroAd var_88
  loc_A50BBA: FStAdFunc var_8C
  loc_A50BBD: FLdRfVar var_90
  loc_A50BC0: FLdPr var_8C
  loc_A50BC3:  = Me.RecordCount
  loc_A50BC8: ILdRf var_90
  loc_A50BCB: LitI4 0
  loc_A50BD0: GtI4
  loc_A50BD1: BranchF loc_A50BF8
  loc_A50BD4: FLdPr var_8C
  loc_A50BD7: Me.CancelUpdate
  loc_A50BDC: FLdRfVar var_90
  loc_A50BDF: FLdPr var_8C
  loc_A50BE2:  = Me.EditMode
  loc_A50BE7: ILdRf var_90
  loc_A50BEA: LitI4 2
  loc_A50BEF: EqI4
  loc_A50BF0: BranchF loc_A50BF8
  loc_A50BF3: Call MoveFirst()
  loc_A50BF8: LitNothing
  loc_A50BFA: FStAd var_8C 
  loc_A50BFE: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FDB94
  'Data Table: 42B82C
  loc_9FDB68: FLdRfVar var_90
  loc_9FDB6B: FLdRfVar var_8C
  loc_9FDB6E: FLdPr Me
  loc_9FDB71: from_stack_1v = clsservcata.global_4372404Get()
  loc_9FDB76: FLdPr var_8C
  loc_9FDB79:  = Me.EditMode
  loc_9FDB7E: ILdRf var_90
  loc_9FDB81: LitI4 0
  loc_9FDB86: NeI4
  loc_9FDB87: FStI2 var_86
  loc_9FDB8A: FFree1Ad var_8C
  loc_9FDB8D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A726F4
  'Data Table: 42B82C
  loc_A72680: ILdRf sSelect
  loc_A72683: FStStrCopy var_88
  loc_A72686: LitNothing
  loc_A72688: CastAd
  loc_A7268B: FStAdFuncNoPop
  loc_A7268E: FLdPr Me
  loc_A72691: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_A72696: FFree1Ad var_8C
  loc_A72699: New Recordset
  loc_A7269D: FStAdFuncNoPop
  loc_A726A0: FLdPr Me
  loc_A726A3: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_A726A8: FFree1Ad var_8C
  loc_A726AB: LitI4 -1
  loc_A726B0: LitI4 3
  loc_A726B5: LitI4 3
  loc_A726BA: ImpAdLdI4 MemVar_D9301C
  loc_A726BD: CVarAd
  loc_A726C1: PopAdLdVar
  loc_A726C2: ILdRf var_88
  loc_A726C5: CVarStr var_9C
  loc_A726C8: PopAdLdVar
  loc_A726C9: FLdRfVar var_8C
  loc_A726CC: FLdPr Me
  loc_A726CF: from_stack_1v = clsservcata.global_4372404Get()
  loc_A726D4: FLdPr var_8C
  loc_A726D7: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A726DC: FFree1Ad var_8C
  loc_A726DF: LitVarStr var_9C, "Primary"
  loc_A726E4: PopAdLdVar
  loc_A726E5: FLdPr Me
  loc_A726E8: LateIdCall
  loc_A726F0: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5C890
  'Data Table: 42B82C
  loc_A5C830: ILdRf sSelect
  loc_A5C833: FStStrCopy var_88
  loc_A5C836: LitNothing
  loc_A5C838: CastAd
  loc_A5C83B: FStAdFuncNoPop
  loc_A5C83E: FLdPr Me
  loc_A5C841: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_A5C846: FFree1Ad var_8C
  loc_A5C849: New Recordset
  loc_A5C84D: FStAdFuncNoPop
  loc_A5C850: FLdPr Me
  loc_A5C853: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_A5C858: FFree1Ad var_8C
  loc_A5C85B: LitI4 -1
  loc_A5C860: LitI4 3
  loc_A5C865: LitI4 3
  loc_A5C86A: ImpAdLdI4 MemVar_D9301C
  loc_A5C86D: CVarAd
  loc_A5C871: PopAdLdVar
  loc_A5C872: ILdRf var_88
  loc_A5C875: CVarStr var_9C
  loc_A5C878: PopAdLdVar
  loc_A5C879: FLdRfVar var_8C
  loc_A5C87C: FLdPr Me
  loc_A5C87F: from_stack_1v = clsservcata.global_4372404Get()
  loc_A5C884: FLdPr var_8C
  loc_A5C887: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C88C: FFree1Ad var_8C
  loc_A5C88F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiSeca) '9EE4DC
  'Data Table: 42B82C
  loc_9EE4BC: LitStr "CodiSeca = "
  loc_9EE4BF: FLdI2 CodiSeca
  loc_9EE4C2: CStrUI1
  loc_9EE4C4: FStStrNoPop var_88
  loc_9EE4C7: ConcatStr
  loc_9EE4C8: PopTmpLdAdStr
  loc_9EE4CC: Call Find(from_stack_1v)
  loc_9EE4D1: FFreeStr var_88 = ""
  loc_9EE4D8: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08DA4
  'Data Table: 42B82C
  loc_A08D74: ZeroRetVal
  loc_A08D76: FLdRfVar var_90
  loc_A08D79: FLdRfVar var_8C
  loc_A08D7C: FLdPr Me
  loc_A08D7F: from_stack_1v = clsservcata.global_4372404Get()
  loc_A08D84: FLdPr var_8C
  loc_A08D87:  = Me.DataSource
  loc_A08D8C: ILdRf var_90
  loc_A08D8F: CastAd
  loc_A08D92: FStAdFunc var_88
  loc_A08D95: FFreeAd var_8C = ""
  loc_A08D9C: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F2430
  'Data Table: 42B82C
  loc_9F2408: FLdRfVar var_90
  loc_9F240B: FLdRfVar var_8C
  loc_9F240E: FLdPr Me
  loc_9F2411: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F2416: FLdPr var_8C
  loc_9F2419:  = Me.EditMode
  loc_9F241E: ILdRf var_90
  loc_9F2421: FStR4 var_88
  loc_9F2424: FFree1Ad var_8C
  loc_9F2427: ExitProcCbHresult
End Sub

Public Property Get CodiSeca() 'A513A0
  'Data Table: 42B82C
  loc_A51354: FLdRfVar var_B4
  loc_A51357: FLdRfVar var_A4
  loc_A5135A: LitVarStr var_A0, "CodiSeca"
  loc_A5135F: PopAdLdVar
  loc_A51360: FLdRfVar var_90
  loc_A51363: FLdRfVar var_8C
  loc_A51366: FLdPr Me
  loc_A51369: from_stack_1v = clsservcata.global_4372404Get()
  loc_A5136E: FLdPr var_8C
  loc_A51371:  = Me.Fields
  loc_A51376: FLdPr var_90
  loc_A51379: from_stack_2 = Me.Item(from_stack_1)
  loc_A5137E: FLdPr var_A4
  loc_A51381:  = Me.Value
  loc_A51386: FLdRfVar var_B4
  loc_A51389: CI2Var
  loc_A5138A: FStI2 var_86
  loc_A5138D: FFreeAd var_8C = "": var_90 = ""
  loc_A51396: FFree1Var var_B4 = ""
  loc_A51399: ExitProcCbHresult
End Sub

Public Property Get DetaSeca() 'A57110
  'Data Table: 42B82C
  loc_A570C0: ZeroRetVal
  loc_A570C2: FLdRfVar var_B4
  loc_A570C5: FLdRfVar var_A4
  loc_A570C8: LitVarStr var_A0, "DetaSeca"
  loc_A570CD: PopAdLdVar
  loc_A570CE: FLdRfVar var_90
  loc_A570D1: FLdRfVar var_8C
  loc_A570D4: FLdPr Me
  loc_A570D7: from_stack_1v = clsservcata.global_4372404Get()
  loc_A570DC: FLdPr var_8C
  loc_A570DF:  = Me.Fields
  loc_A570E4: FLdPr var_90
  loc_A570E7: from_stack_2 = Me.Item(from_stack_1)
  loc_A570EC: FLdPr var_A4
  loc_A570EF:  = Me.Value
  loc_A570F4: FLdRfVar var_B4
  loc_A570F7: CStrVarTmp
  loc_A570F8: FStStr var_88
  loc_A570FB: FFreeAd var_8C = "": var_90 = ""
  loc_A57104: FFree1Var var_B4 = ""
  loc_A57107: ExitProcCbHresult
End Sub

Public Property Get FrecSeca() 'A57F84
  'Data Table: 42B82C
  loc_A57F34: ZeroRetVal
  loc_A57F36: FLdRfVar var_B4
  loc_A57F39: FLdRfVar var_A4
  loc_A57F3C: LitVarStr var_A0, "FrecSeca"
  loc_A57F41: PopAdLdVar
  loc_A57F42: FLdRfVar var_90
  loc_A57F45: FLdRfVar var_8C
  loc_A57F48: FLdPr Me
  loc_A57F4B: from_stack_1v = clsservcata.global_4372404Get()
  loc_A57F50: FLdPr var_8C
  loc_A57F53:  = Me.Fields
  loc_A57F58: FLdPr var_90
  loc_A57F5B: from_stack_2 = Me.Item(from_stack_1)
  loc_A57F60: FLdPr var_A4
  loc_A57F63:  = Me.Value
  loc_A57F68: FLdRfVar var_B4
  loc_A57F6B: CStrVarTmp
  loc_A57F6C: FStStr var_88
  loc_A57F6F: FFreeAd var_8C = "": var_90 = ""
  loc_A57F78: FFree1Var var_B4 = ""
  loc_A57F7B: ExitProcCbHresult
End Sub

Public Property Get FormSeca() 'A52DE0
  'Data Table: 42B82C
  loc_A52D90: FLdRfVar var_B4
  loc_A52D93: FLdRfVar var_A4
  loc_A52D96: LitVarStr var_A0, "FormSeca"
  loc_A52D9B: PopAdLdVar
  loc_A52D9C: FLdRfVar var_90
  loc_A52D9F: FLdRfVar var_8C
  loc_A52DA2: FLdPr Me
  loc_A52DA5: from_stack_1v = clsservcata.global_4372404Get()
  loc_A52DAA: FLdPr var_8C
  loc_A52DAD:  = Me.Fields
  loc_A52DB2: FLdPr var_90
  loc_A52DB5: from_stack_2 = Me.Item(from_stack_1)
  loc_A52DBA: FLdPr var_A4
  loc_A52DBD:  = Me.Value
  loc_A52DC2: FLdRfVar var_B4
  loc_A52DC5: CUI1Var
  loc_A52DC7: FStUI1 var_86
  loc_A52DCB: FFreeAd var_8C = "": var_90 = ""
  loc_A52DD4: FFree1Var var_B4 = ""
  loc_A52DD7: ExitProcCbHresult
End Sub

Public Property Get ImpoSeca() 'A51774
  'Data Table: 42B82C
  loc_A51728: FLdRfVar var_B8
  loc_A5172B: FLdRfVar var_A8
  loc_A5172E: LitVarStr var_A4, "ImpoSeca"
  loc_A51733: PopAdLdVar
  loc_A51734: FLdRfVar ImpoSeca
  loc_A51737: FLdRfVar var_90
  loc_A5173A: FLdPr Me
  loc_A5173D: from_stack_1v = clsservcata.global_4372404Get()
  loc_A51742: FLdPr var_90
  loc_A51745:  = Me.Fields
  loc_A5174A: FLdPr ImpoSeca
  loc_A5174D: from_stack_2 = Me.Item(from_stack_1)
  loc_A51752: FLdPr var_A8
  loc_A51755:  = Me.Value
  loc_A5175A: FLdRfVar var_B8
  loc_A5175D: CR4Var
  loc_A5175E: FStFPR8 var_8C
  loc_A51761: FFreeAd var_90 = "": ImpoSeca = ""
  loc_A5176A: FFree1Var var_B8 = ""
  loc_A5176D: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiSeca) 'A52CC0
  'Data Table: 42B82C
  loc_A52C70: ZeroRetVal
  loc_A52C72: LitStr "SELECT CodiSeca FROM servcata WHERE CodiSeca = "
  loc_A52C75: FLdI2 CodiSeca
  loc_A52C78: CStrUI1
  loc_A52C7A: FStStrNoPop var_8C
  loc_A52C7D: ConcatStr
  loc_A52C7E: FStStrNoPop var_90
  loc_A52C81: Call EjecutarRs2(from_stack_1v)
  loc_A52C86: FFreeStr var_8C = ""
  loc_A52C8D: FLdRfVar var_98
  loc_A52C90: FLdRfVar ValidaClave
  loc_A52C93: FLdPr Me
  loc_A52C96: from_stack_1v = clsservcata.global_4372404Get()
  loc_A52C9B: FLdPr ValidaClave
  loc_A52C9E:  = Me.RecordCount
  loc_A52CA3: ILdRf var_98
  loc_A52CA6: LitI4 0
  loc_A52CAB: GtI4
  loc_A52CAC: FFree1Ad ValidaClave
  loc_A52CAF: BranchF loc_A52CB8
  loc_A52CB2: LitStr "El SERVICIO de CATASTRO YA EXISTE. Reintente..."
  loc_A52CB5: FStStrCopy var_88
  loc_A52CB8: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'AFB564
  'Data Table: 42B82C
  loc_AFB390: LitStr "Municipalidad de Guaymallén"
  loc_AFB393: LitStr "Municipalidad de Malargüe"
  loc_AFB396: EqStr
  loc_AFB398: BranchF loc_AFB49C
  loc_AFB39B: New Recordset
  loc_AFB39F: FStAdFuncNoPop
  loc_AFB3A2: FLdPr Me
  loc_AFB3A5: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_AFB3AA: FFree1Ad var_8C
  loc_AFB3AD: LitI4 -1
  loc_AFB3B2: LitI4 3
  loc_AFB3B7: LitI4 3
  loc_AFB3BC: ImpAdLdI4 MemVar_D9301C
  loc_AFB3BF: CVarAd
  loc_AFB3C3: PopAdLdVar
  loc_AFB3C4: LitVarStr var_9C, "SELECT CodiSeca FROM servcata ORDER BY CodiSeca ASC "
  loc_AFB3C9: PopAdLdVar
  loc_AFB3CA: FLdRfVar var_8C
  loc_AFB3CD: FLdPr Me
  loc_AFB3D0: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB3D5: FLdPr var_8C
  loc_AFB3D8: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_AFB3DD: FFree1Ad var_8C
  loc_AFB3E0: FLdRfVar var_B0
  loc_AFB3E3: FLdRfVar var_8C
  loc_AFB3E6: FLdPr Me
  loc_AFB3E9: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB3EE: FLdPr var_8C
  loc_AFB3F1:  = Me.RecordCount
  loc_AFB3F6: ILdRf var_B0
  loc_AFB3F9: LitI4 0
  loc_AFB3FE: GtI4
  loc_AFB3FF: FFree1Ad var_8C
  loc_AFB402: BranchF loc_AFB46B
  loc_AFB405: FLdRfVar var_8C
  loc_AFB408: FLdPr Me
  loc_AFB40B: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB410: FLdPr var_8C
  loc_AFB413: Me.MoveLast
  loc_AFB418: FFree1Ad var_8C
  loc_AFB41B: FLdRfVar var_C8
  loc_AFB41E: FLdRfVar var_B8
  loc_AFB421: LitVarStr var_9C, "CodiSeca"
  loc_AFB426: PopAdLdVar
  loc_AFB427: FLdRfVar var_B4
  loc_AFB42A: FLdRfVar var_8C
  loc_AFB42D: FLdPr Me
  loc_AFB430: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB435: FLdPr var_8C
  loc_AFB438:  = Me.Fields
  loc_AFB43D: FLdPr var_B4
  loc_AFB440: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB445: FLdPr var_B8
  loc_AFB448:  = Me.Value
  loc_AFB44D: FLdRfVar var_C8
  loc_AFB450: FnCLngVar
  loc_AFB452: LitI4 1
  loc_AFB457: AddI4
  loc_AFB458: CI2I4
  loc_AFB459: FStI2 var_86
  loc_AFB45C: FFreeAd var_8C = "": var_B4 = ""
  loc_AFB465: FFree1Var var_C8 = ""
  loc_AFB468: Branch loc_AFB470
  loc_AFB46B: LitI2_Byte 1
  loc_AFB46D: FStI2 var_86
  loc_AFB470: FLdRfVar var_8C
  loc_AFB473: FLdPr Me
  loc_AFB476: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB47B: FLdPr var_8C
  loc_AFB47E: Me.Close
  loc_AFB483: FFree1Ad var_8C
  loc_AFB486: LitNothing
  loc_AFB488: CastAd
  loc_AFB48B: FStAdFuncNoPop
  loc_AFB48E: FLdPr Me
  loc_AFB491: Call clsservcata.global_4372404Set(from_stack_1v)
  loc_AFB496: FFree1Ad var_8C
  loc_AFB499: Branch loc_AFB55B
  loc_AFB49C: LitStr "Municipalidad de Guaymallén"
  loc_AFB49F: LitStr "Municipalidad de Lavalle"
  loc_AFB4A2: EqStr
  loc_AFB4A4: BranchF loc_AFB55B
  loc_AFB4A7: LitStr "SELECT PeriOrde, CodiSeca FROM servcata WHERE PeriOrde = "
  loc_AFB4AA: ImpAdLdI2 MemVar_D93036
  loc_AFB4AD: CStrUI1
  loc_AFB4AF: FStStrNoPop var_CC
  loc_AFB4B2: ConcatStr
  loc_AFB4B3: FStStrNoPop var_D0
  loc_AFB4B6: LitStr " ORDER BY CodiSeca ASC"
  loc_AFB4B9: ConcatStr
  loc_AFB4BA: FStStrNoPop var_D4
  loc_AFB4BD: Call EjecutarRs2(from_stack_1v)
  loc_AFB4C2: FFreeStr var_CC = "": var_D0 = ""
  loc_AFB4CB: FLdRfVar var_B0
  loc_AFB4CE: FLdRfVar var_8C
  loc_AFB4D1: FLdPr Me
  loc_AFB4D4: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB4D9: FLdPr var_8C
  loc_AFB4DC:  = Me.RecordCount
  loc_AFB4E1: ILdRf var_B0
  loc_AFB4E4: LitI4 0
  loc_AFB4E9: GtI4
  loc_AFB4EA: FFree1Ad var_8C
  loc_AFB4ED: BranchF loc_AFB556
  loc_AFB4F0: FLdRfVar var_8C
  loc_AFB4F3: FLdPr Me
  loc_AFB4F6: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB4FB: FLdPr var_8C
  loc_AFB4FE: Me.MoveLast
  loc_AFB503: FFree1Ad var_8C
  loc_AFB506: FLdRfVar var_C8
  loc_AFB509: FLdRfVar var_B8
  loc_AFB50C: LitVarStr var_9C, "CodiSeca"
  loc_AFB511: PopAdLdVar
  loc_AFB512: FLdRfVar var_B4
  loc_AFB515: FLdRfVar var_8C
  loc_AFB518: FLdPr Me
  loc_AFB51B: from_stack_1v = clsservcata.global_4372404Get()
  loc_AFB520: FLdPr var_8C
  loc_AFB523:  = Me.Fields
  loc_AFB528: FLdPr var_B4
  loc_AFB52B: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB530: FLdPr var_B8
  loc_AFB533:  = Me.Value
  loc_AFB538: FLdRfVar var_C8
  loc_AFB53B: FnCLngVar
  loc_AFB53D: LitI4 1
  loc_AFB542: AddI4
  loc_AFB543: CI2I4
  loc_AFB544: FStI2 var_86
  loc_AFB547: FFreeAd var_8C = "": var_B4 = ""
  loc_AFB550: FFree1Var var_C8 = ""
  loc_AFB553: Branch loc_AFB55B
  loc_AFB556: LitI2_Byte 1
  loc_AFB558: FStI2 var_86
  loc_AFB55B: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E6C88
  'Data Table: 42B82C
  loc_9E6C6C: ILdRf pError
  loc_9E6C6F: FStAd var_88 
  loc_9E6C73: ILdRf pRecordset
  loc_9E6C76: FStAd var_8C 
  loc_9E6C7A: FLdPr Me
  loc_9E6C7D: RaiseEvent
  loc_9E6C85: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9F76C
  'Data Table: 42B82C
  loc_A9F6AC: ILdRf pRecordset
  loc_A9F6AF: FStAd var_88 
  loc_A9F6B3: ILdRf adReason
  loc_A9F6B6: FStR4 var_90
  loc_A9F6B9: ILdRf var_90
  loc_A9F6BC: LitI4 1
  loc_A9F6C1: EqI4
  loc_A9F6C2: BranchF loc_A9F6C8
  loc_A9F6C5: Branch loc_A9F75B
  loc_A9F6C8: ILdRf var_90
  loc_A9F6CB: LitI4 9
  loc_A9F6D0: EqI4
  loc_A9F6D1: BranchF loc_A9F6D7
  loc_A9F6D4: Branch loc_A9F75B
  loc_A9F6D7: ILdRf var_90
  loc_A9F6DA: LitI4 2
  loc_A9F6DF: EqI4
  loc_A9F6E0: BranchF loc_A9F6E6
  loc_A9F6E3: Branch loc_A9F75B
  loc_A9F6E6: ILdRf var_90
  loc_A9F6E9: LitI4 &HB
  loc_A9F6EE: EqI4
  loc_A9F6EF: BranchF loc_A9F6F5
  loc_A9F6F2: Branch loc_A9F75B
  loc_A9F6F5: ILdRf var_90
  loc_A9F6F8: LitI4 &HA
  loc_A9F6FD: EqI4
  loc_A9F6FE: BranchF loc_A9F704
  loc_A9F701: Branch loc_A9F75B
  loc_A9F704: ILdRf var_90
  loc_A9F707: LitI4 7
  loc_A9F70C: EqI4
  loc_A9F70D: BranchF loc_A9F713
  loc_A9F710: Branch loc_A9F75B
  loc_A9F713: ILdRf var_90
  loc_A9F716: LitI4 8
  loc_A9F71B: EqI4
  loc_A9F71C: BranchF loc_A9F722
  loc_A9F71F: Branch loc_A9F75B
  loc_A9F722: ILdRf var_90
  loc_A9F725: LitI4 5
  loc_A9F72A: EqI4
  loc_A9F72B: BranchF loc_A9F731
  loc_A9F72E: Branch loc_A9F75B
  loc_A9F731: ILdRf var_90
  loc_A9F734: LitI4 6
  loc_A9F739: EqI4
  loc_A9F73A: BranchF loc_A9F740
  loc_A9F73D: Branch loc_A9F75B
  loc_A9F740: ILdRf var_90
  loc_A9F743: LitI4 4
  loc_A9F748: EqI4
  loc_A9F749: BranchF loc_A9F74F
  loc_A9F74C: Branch loc_A9F75B
  loc_A9F74F: ILdRf var_90
  loc_A9F752: LitI4 3
  loc_A9F757: EqI4
  loc_A9F758: BranchF loc_A9F75B
  loc_A9F75B: FLdI2 var_8A
  loc_A9F75E: BranchF loc_A9F769
  loc_A9F761: LitI4 4
  loc_A9F766: IStI4 adStatus
  loc_A9F769: ExitProcHresult
  loc_A9F76A: PopTmpLdAd8 var_4BFF
End Sub

Private Function Proc_194_34_9F270C() '9F270C
  'Data Table: 42B82C
  loc_9F26E8: LitStr "Primary"
  loc_9F26EB: FLdPr Me
  loc_9F26EE: LateIdLdVar var_94 DispID_4 0
  loc_9F26F5: CastAdVar Me
  loc_9F26F9: FStAdFunc var_98
  loc_9F26FC: FLdPr var_98
  loc_9F2704: FFree1Ad var_98
  loc_9F2707: FFree1Var var_94 = ""
  loc_9F270A: ExitProcHresult
End Function

Private Function Proc_194_35_9F24E4(arg_C) '9F24E4
  'Data Table: 42B82C
  loc_9F24C0: ILdI4 arg_C
  loc_9F24C3: FStStrCopy var_88
  loc_9F24C6: ILdRf var_88
  loc_9F24C9: LitStr "Primary"
  loc_9F24CC: EqStr
  loc_9F24CE: BranchF loc_9F24E3
  loc_9F24D1: FLdRfVar var_8C
  loc_9F24D4: FLdPr Me
  loc_9F24D7: from_stack_1v = clsservcata.global_4372404Get()
  loc_9F24DC: FLdZeroAd var_8C
  loc_9F24DF: IStAdFunc
  loc_9F24E3: ExitProcHresult
End Function

Public Function global_4372404Get() '42BC0C
  global_4372404Get = global_4372404
End Function

Public Sub global_4372404Put(Value) '42BC26
  global_4372404 = Value
End Sub

Public Sub global_4372404Set(Value) '42BC40
  global_4372404 = Value
End Sub

Public Function global_4372404Get() '42BC5A
  global_4372404Get = global_4372404
End Function

Public Sub global_4372404Put(Value) '42BC74
  global_4372404 = Value
End Sub

Public Sub global_4372404Set(Value) '42BC8E
  global_4372404 = Value
End Sub

Public Function global_4372404Get() '42BCA8
  global_4372404Get = global_4372404
End Function

Public Sub global_4372404Put(Value) '42BCC2
  global_4372404 = Value
End Sub

Public Sub global_4372404Set(Value) '42BCDC
  global_4372404 = Value
End Sub
