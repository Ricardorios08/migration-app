VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsobreinmu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0C364
  'Data Table: 432C04
  loc_A0C328: FLdRfVar var_8C
  loc_A0C32B: FLdRfVar var_88
  loc_A0C32E: FLdPr Me
  loc_A0C331: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A0C336: FLdPr var_88
  loc_A0C339:  = Me.RecordCount
  loc_A0C33E: ILdRf var_8C
  loc_A0C341: LitI4 0
  loc_A0C346: GtI4
  loc_A0C347: FFree1Ad var_88
  loc_A0C34A: BranchF loc_A0C363
  loc_A0C34D: FLdRfVar var_88
  loc_A0C350: FLdPr Me
  loc_A0C353: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A0C358: FLdPr var_88
  loc_A0C35B: Me.MoveFirst
  loc_A0C360: FFree1Ad var_88
  loc_A0C363: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0C834
  'Data Table: 432C04
  loc_A0C7F8: FLdRfVar var_8C
  loc_A0C7FB: FLdRfVar var_88
  loc_A0C7FE: FLdPr Me
  loc_A0C801: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A0C806: FLdPr var_88
  loc_A0C809:  = Me.RecordCount
  loc_A0C80E: ILdRf var_8C
  loc_A0C811: LitI4 0
  loc_A0C816: GtI4
  loc_A0C817: FFree1Ad var_88
  loc_A0C81A: BranchF loc_A0C833
  loc_A0C81D: FLdRfVar var_88
  loc_A0C820: FLdPr Me
  loc_A0C823: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A0C828: FLdPr var_88
  loc_A0C82B: Me.MoveLast
  loc_A0C830: FFree1Ad var_88
  loc_A0C833: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9D148
  'Data Table: 432C04
  loc_A9D08C: FLdRfVar var_8A
  loc_A9D08F: FLdRfVar var_88
  loc_A9D092: FLdPr Me
  loc_A9D095: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D09A: FLdPr var_88
  loc_A9D09D:  = Me.EOF
  loc_A9D0A2: FLdI2 var_8A
  loc_A9D0A5: NotI4
  loc_A9D0A6: FLdRfVar var_94
  loc_A9D0A9: FLdRfVar var_90
  loc_A9D0AC: FLdPr Me
  loc_A9D0AF: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D0B4: FLdPr var_90
  loc_A9D0B7:  = Me.RecordCount
  loc_A9D0BC: ILdRf var_94
  loc_A9D0BF: LitI4 0
  loc_A9D0C4: GtI4
  loc_A9D0C5: AndI4
  loc_A9D0C6: FFreeAd var_88 = ""
  loc_A9D0CD: BranchF loc_A9D0E6
  loc_A9D0D0: FLdRfVar var_88
  loc_A9D0D3: FLdPr Me
  loc_A9D0D6: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D0DB: FLdPr var_88
  loc_A9D0DE: Me.MoveNext
  loc_A9D0E3: FFree1Ad var_88
  loc_A9D0E6: FLdRfVar var_8A
  loc_A9D0E9: FLdRfVar var_88
  loc_A9D0EC: FLdPr Me
  loc_A9D0EF: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D0F4: FLdPr var_88
  loc_A9D0F7:  = Me.EOF
  loc_A9D0FC: FLdI2 var_8A
  loc_A9D0FF: FLdRfVar var_94
  loc_A9D102: FLdRfVar var_90
  loc_A9D105: FLdPr Me
  loc_A9D108: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D10D: FLdPr var_90
  loc_A9D110:  = Me.RecordCount
  loc_A9D115: ILdRf var_94
  loc_A9D118: LitI4 0
  loc_A9D11D: GtI4
  loc_A9D11E: AndI4
  loc_A9D11F: FFreeAd var_88 = ""
  loc_A9D126: BranchF loc_A9D144
  loc_A9D129: ImpAdCallFPR4 Beep()
  loc_A9D12E: FLdRfVar var_88
  loc_A9D131: FLdPr Me
  loc_A9D134: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9D139: FLdPr var_88
  loc_A9D13C: Me.MoveLast
  loc_A9D141: FFree1Ad var_88
  loc_A9D144: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9DC12C
  'Data Table: 432C04
  loc_9DC114: FLdRfVar var_88
  loc_9DC117: FLdPr Me
  loc_9DC11A: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9DC11F: FLdPr var_88
  loc_9DC122: Me.MoveNext
  loc_9DC127: FFree1Ad var_88
  loc_9DC12A: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E75BC
  'Data Table: 432C04
  loc_9E759C: LitVar_Missing var_98
  loc_9E759F: PopAdLdVar
  loc_9E75A0: ILdI2 iValor
  loc_9E75A3: CI4UI1
  loc_9E75A4: FLdRfVar var_88
  loc_9E75A7: FLdPr Me
  loc_9E75AA: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9E75AF: FLdPr var_88
  loc_9E75B2: Me.Move from_stack_1, from_stack_2
  loc_9E75B7: FFree1Ad var_88
  loc_9E75BA: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9C6CC
  'Data Table: 432C04
  loc_A9C610: FLdRfVar var_8A
  loc_A9C613: FLdRfVar var_88
  loc_A9C616: FLdPr Me
  loc_A9C619: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C61E: FLdPr var_88
  loc_A9C621:  = Me.BOF
  loc_A9C626: FLdI2 var_8A
  loc_A9C629: NotI4
  loc_A9C62A: FLdRfVar var_94
  loc_A9C62D: FLdRfVar var_90
  loc_A9C630: FLdPr Me
  loc_A9C633: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C638: FLdPr var_90
  loc_A9C63B:  = Me.RecordCount
  loc_A9C640: ILdRf var_94
  loc_A9C643: LitI4 0
  loc_A9C648: GtI4
  loc_A9C649: AndI4
  loc_A9C64A: FFreeAd var_88 = ""
  loc_A9C651: BranchF loc_A9C66A
  loc_A9C654: FLdRfVar var_88
  loc_A9C657: FLdPr Me
  loc_A9C65A: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C65F: FLdPr var_88
  loc_A9C662: Me.MovePrevious
  loc_A9C667: FFree1Ad var_88
  loc_A9C66A: FLdRfVar var_8A
  loc_A9C66D: FLdRfVar var_88
  loc_A9C670: FLdPr Me
  loc_A9C673: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C678: FLdPr var_88
  loc_A9C67B:  = Me.BOF
  loc_A9C680: FLdI2 var_8A
  loc_A9C683: FLdRfVar var_94
  loc_A9C686: FLdRfVar var_90
  loc_A9C689: FLdPr Me
  loc_A9C68C: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C691: FLdPr var_90
  loc_A9C694:  = Me.RecordCount
  loc_A9C699: ILdRf var_94
  loc_A9C69C: LitI4 0
  loc_A9C6A1: GtI4
  loc_A9C6A2: AndI4
  loc_A9C6A3: FFreeAd var_88 = ""
  loc_A9C6AA: BranchF loc_A9C6C8
  loc_A9C6AD: ImpAdCallFPR4 Beep()
  loc_A9C6B2: FLdRfVar var_88
  loc_A9C6B5: FLdPr Me
  loc_A9C6B8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A9C6BD: FLdPr var_88
  loc_A9C6C0: Me.MoveFirst
  loc_A9C6C5: FFree1Ad var_88
  loc_A9C6C8: ExitProcHresult
End Sub

Public Property Get EOF() '9F0AAC
  'Data Table: 432C04
  loc_9F0A84: FLdRfVar var_8E
  loc_9F0A87: FLdRfVar var_8C
  loc_9F0A8A: FLdPr Me
  loc_9F0A8D: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F0A92: FLdPr var_8C
  loc_9F0A95:  = Me.EOF
  loc_9F0A9A: FLdI2 var_8E
  loc_9F0A9D: FStI2 var_86
  loc_9F0AA0: FFree1Ad var_8C
  loc_9F0AA3: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F3514
  'Data Table: 432C04
  loc_9F34EC: FLdRfVar var_8E
  loc_9F34EF: FLdRfVar var_8C
  loc_9F34F2: FLdPr Me
  loc_9F34F5: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F34FA: FLdPr var_8C
  loc_9F34FD:  = Me.BOF
  loc_9F3502: FLdI2 var_8E
  loc_9F3505: FStI2 var_86
  loc_9F3508: FFree1Ad var_8C
  loc_9F350B: ExitProcCbHresult
  loc_9F3511: ExitProcCy
End Sub

Public Sub Sort(sOrden) '9DD3FC
  'Data Table: 432C04
  loc_9DD3E0: ILdI4 sOrden
  loc_9DD3E3: FLdRfVar var_88
  loc_9DD3E6: FLdPr Me
  loc_9DD3E9: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9DD3EE: FLdPr var_88
  loc_9DD3F1: Me.Sort = from_stack_1
  loc_9DD3F6: FFree1Ad var_88
  loc_9DD3F9: ExitProcHresult
  loc_9DD3FA: FLdPr var_73F8
End Sub

Public Sub Find(sFind) '9F3B8C
  'Data Table: 432C04
  loc_9F3B64: LitVar_Missing var_98
  loc_9F3B67: PopAdLdVar
  loc_9F3B68: LitI4 1
  loc_9F3B6D: LitI4 0
  loc_9F3B72: ILdI4 sFind
  loc_9F3B75: FLdRfVar var_88
  loc_9F3B78: FLdPr Me
  loc_9F3B7B: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F3B80: FLdPr var_88
  loc_9F3B83: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F3B88: FFree1Ad var_88
  loc_9F3B8B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F3F24
  'Data Table: 432C04
  loc_9F3EFC: FLdRfVar var_90
  loc_9F3EFF: FLdRfVar var_8C
  loc_9F3F02: FLdPr Me
  loc_9F3F05: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F3F0A: FLdPr var_8C
  loc_9F3F0D:  = Me.AbsolutePosition
  loc_9F3F12: ILdRf var_90
  loc_9F3F15: FStR4 var_88
  loc_9F3F18: FFree1Ad var_8C
  loc_9F3F1B: ExitProcCbHresult
  loc_9F3F21: ExitProcCy
End Sub

Public Property Get RecordCount() '9F3E6C
  'Data Table: 432C04
  loc_9F3E44: FLdRfVar var_90
  loc_9F3E47: FLdRfVar var_8C
  loc_9F3E4A: FLdPr Me
  loc_9F3E4D: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F3E52: FLdPr var_8C
  loc_9F3E55:  = Me.RecordCount
  loc_9F3E5A: ILdRf var_90
  loc_9F3E5D: FStR4 var_88
  loc_9F3E60: FFree1Ad var_8C
  loc_9F3E63: ExitProcCbHresult
End Sub

Public Sub AddNew(OrdeObre, CodiInmu) 'AB0798
  'Data Table: 432C04
  loc_AB06DC: ILdRf OrdeObre
  loc_AB06DF: FStStrCopy var_88
  loc_AB06E2: FLdRfVar var_8C
  loc_AB06E5: ILdRf CodiInmu
  loc_AB06E8: ILdRf var_88
  loc_AB06EB: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_AB06F0: ILdRf var_8C
  loc_AB06F3: LitStr vbNullString
  loc_AB06F6: NeStr
  loc_AB06F8: FFree1Str var_8C
  loc_AB06FB: BranchF loc_AB0709
  loc_AB06FE: LitStr "EL REGISTRO YA EXISTE. Reintente..."
  loc_AB0701: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB0706: Branch loc_AB0795
  loc_AB0709: LitI2_Byte 0
  loc_AB070B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB0710: FStFPR8 var_F0
  loc_AB0713: LitStr "INSERT INTO obreinmu (OrdeObre, CodiInmu, FealObin) VALUES ( '"
  loc_AB0716: ILdRf var_88
  loc_AB0719: ConcatStr
  loc_AB071A: FStStrNoPop var_8C
  loc_AB071D: LitStr "',"
  loc_AB0720: ConcatStr
  loc_AB0721: FStStrNoPop var_90
  loc_AB0724: ILdRf CodiInmu
  loc_AB0727: CStrI4
  loc_AB0729: FStStrNoPop var_94
  loc_AB072C: ConcatStr
  loc_AB072D: FStStrNoPop var_98
  loc_AB0730: LitStr ",'"
  loc_AB0733: ConcatStr
  loc_AB0734: FStStrNoPop var_DC
  loc_AB0737: LitI4 1
  loc_AB073C: LitI4 1
  loc_AB0741: LitVarStr var_C8, "yyyy-mm-dd"
  loc_AB0746: FStVarCopyObj var_D8
  loc_AB0749: FLdRfVar var_D8
  loc_AB074C: FLdFPR8 var_F0
  loc_AB074F: CVarDate var_B8
  loc_AB0753: ImpAdCallI2 Format$(, )
  loc_AB0758: FStStrNoPop var_E0
  loc_AB075B: ConcatStr
  loc_AB075C: FStStrNoPop var_E4
  loc_AB075F: LitStr "');"
  loc_AB0762: ConcatStr
  loc_AB0763: FStStrNoPop var_E8
  loc_AB0766: Call EjecutarRs2(from_stack_1v)
  loc_AB076B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_AB077E: FFreeVar var_B8 = ""
  loc_AB0785: Call Requery()
  loc_AB078A: ILdRf CodiInmu
  loc_AB078D: ILdRf var_88
  loc_AB0790: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_AB0795: ExitProcHresult
  loc_AB0796: CVarI2 var_7400
End Sub

Public Sub Modificar(OrdeObre, CodiInmu) 'A907D0
  'Data Table: 432C04
  loc_A90740: ILdRf OrdeObre
  loc_A90743: FStStrCopy var_88
  loc_A90746: FLdRfVar var_8C
  loc_A90749: ILdRf CodiInmu
  loc_A9074C: ILdRf var_88
  loc_A9074F: from_stack_3v = ValidaClave(from_stack_1v, from_stack_2v)
  loc_A90754: ILdRf var_8C
  loc_A90757: LitStr vbNullString
  loc_A9075A: NeStr
  loc_A9075C: FFree1Str var_8C
  loc_A9075F: BranchF loc_A9076D
  loc_A90762: LitStr "El REGISTRO YA EXISTE. Reintente..."
  loc_A90765: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9076A: Branch loc_A907BC
  loc_A9076D: LitStr "UPDATE obreinmu SET CodiInmu = "
  loc_A90770: ILdRf CodiInmu
  loc_A90773: CStrI4
  loc_A90775: FStStrNoPop var_8C
  loc_A90778: ConcatStr
  loc_A90779: FStStrNoPop var_90
  loc_A9077C: LitStr " WHERE OrdeObre = '"
  loc_A9077F: ConcatStr
  loc_A90780: FStStrNoPop var_94
  loc_A90783: ILdRf var_88
  loc_A90786: ConcatStr
  loc_A90787: FStStrNoPop var_98
  loc_A9078A: LitStr "' AND CodiInmu = "
  loc_A9078D: ConcatStr
  loc_A9078E: FStStrNoPop var_9C
  loc_A90791: ILdRf CodiInmu
  loc_A90794: CStrI4
  loc_A90796: FStStrNoPop var_A0
  loc_A90799: ConcatStr
  loc_A9079A: FStStrNoPop var_A4
  loc_A9079D: LitStr " ;"
  loc_A907A0: ConcatStr
  loc_A907A1: FStStrNoPop var_A8
  loc_A907A4: Call EjecutarRs2(from_stack_1v)
  loc_A907A9: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A907BC: Call Requery()
  loc_A907C1: ILdRf CodiInmu
  loc_A907C4: ILdRf var_88
  loc_A907C7: Call Encontrar(from_stack_1v, from_stack_2v)
  loc_A907CC: ExitProcHresult
  loc_A907CD: StAryCopy
End Sub

Public Sub ModificarFenoObin(OrdeObre, CodiInmu, FenoObin, ObseObin) 'AA3B94
  'Data Table: 432C04
  loc_AA3B00: ILdRf OrdeObre
  loc_AA3B03: FStStrCopy var_88
  loc_AA3B06: ILdRf FenoObin
  loc_AA3B09: FStStrCopy var_8C
  loc_AA3B0C: ILdRf ObseObin
  loc_AA3B0F: FStStrCopy var_90
  loc_AA3B12: LitStr "UPDATE obreinmu SET FenoObin = '"
  loc_AA3B15: LitI4 1
  loc_AA3B1A: LitI4 1
  loc_AA3B1F: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AA3B24: FStVarCopyObj var_C0
  loc_AA3B27: FLdRfVar var_C0
  loc_AA3B2A: FLdRfVar var_8C
  loc_AA3B2D: CVarRef
  loc_AA3B32: ImpAdCallI2 Format$(, )
  loc_AA3B37: FStStrNoPop var_C4
  loc_AA3B3A: ConcatStr
  loc_AA3B3B: FStStrNoPop var_C8
  loc_AA3B3E: LitStr "', ObseObin = '"
  loc_AA3B41: ConcatStr
  loc_AA3B42: FStStrNoPop var_CC
  loc_AA3B45: ILdRf var_90
  loc_AA3B48: ConcatStr
  loc_AA3B49: FStStrNoPop var_D0
  loc_AA3B4C: LitStr "' WHERE OrdeObre = '"
  loc_AA3B4F: ConcatStr
  loc_AA3B50: FStStrNoPop var_D4
  loc_AA3B53: ILdRf var_88
  loc_AA3B56: ConcatStr
  loc_AA3B57: FStStrNoPop var_D8
  loc_AA3B5A: LitStr "' AND CodiInmu = "
  loc_AA3B5D: ConcatStr
  loc_AA3B5E: FStStrNoPop var_DC
  loc_AA3B61: ILdRf CodiInmu
  loc_AA3B64: CStrI4
  loc_AA3B66: FStStrNoPop var_E0
  loc_AA3B69: ConcatStr
  loc_AA3B6A: FStStrNoPop var_E4
  loc_AA3B6D: LitStr " ;"
  loc_AA3B70: ConcatStr
  loc_AA3B71: FStStrNoPop var_E8
  loc_AA3B74: Call EjecutarRs2(from_stack_1v)
  loc_AA3B79: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_AA3B90: FFree1Var var_C0 = ""
  loc_AA3B93: ExitProcHresult
End Sub

Public Sub Delete() 'A21870
  'Data Table: 432C04
  loc_A21828: FLdRfVar var_8C
  loc_A2182B: FLdRfVar var_88
  loc_A2182E: FLdPr Me
  loc_A21831: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A21836: FLdPr var_88
  loc_A21839:  = Me.RecordCount
  loc_A2183E: ILdRf var_8C
  loc_A21841: LitI4 0
  loc_A21846: GtI4
  loc_A21847: FFree1Ad var_88
  loc_A2184A: BranchF loc_A2186D
  loc_A2184D: LitI4 1
  loc_A21852: FLdRfVar var_88
  loc_A21855: FLdPr Me
  loc_A21858: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A2185D: FLdPr var_88
  loc_A21860: Me.Delete
  loc_A21865: FFree1Ad var_88
  loc_A21868: Call MoveNext()
  loc_A2186D: ExitProcHresult
End Sub

Public Sub Requery() 'A03F94
  'Data Table: 432C04
  loc_A03F64: LitI4 -1
  loc_A03F69: FLdRfVar var_88
  loc_A03F6C: FLdPr Me
  loc_A03F6F: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A03F74: FLdPr var_88
  loc_A03F77: Me.Requery from_stack_1
  loc_A03F7C: FFree1Ad var_88
  loc_A03F7F: LitVarStr var_98, "Primary"
  loc_A03F84: PopAdLdVar
  loc_A03F85: FLdPr Me
  loc_A03F88: LateIdCall
  loc_A03F90: ExitProcHresult
End Sub

Public Sub Update() 'A21508
  'Data Table: 432C04
  loc_A214C4: FLdRfVar var_88
  loc_A214C7: FLdPr Me
  loc_A214CA: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A214CF: FLdZeroAd var_88
  loc_A214D2: FStAdFunc var_8C
  loc_A214D5: LitI4 3
  loc_A214DA: FLdPr var_8C
  loc_A214DD: Me.UpdateBatch
  loc_A214E2: FLdRfVar var_90
  loc_A214E5: FLdPr var_8C
  loc_A214E8:  = Me.EditMode
  loc_A214ED: ILdRf var_90
  loc_A214F0: LitI4 2
  loc_A214F5: EqI4
  loc_A214F6: BranchF loc_A214FE
  loc_A214F9: Call MoveLast()
  loc_A214FE: LitNothing
  loc_A21500: FStAd var_8C 
  loc_A21504: ExitProcHresult
  loc_A21505: LitI2_Byte 0
  loc_A21507: LitI2_Byte &H8C
End Sub

Public Sub Cancel() 'A471C8
  'Data Table: 432C04
  loc_A47174: FLdRfVar var_88
  loc_A47177: FLdPr Me
  loc_A4717A: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A4717F: FLdZeroAd var_88
  loc_A47182: FStAdFunc var_8C
  loc_A47185: FLdRfVar var_90
  loc_A47188: FLdPr var_8C
  loc_A4718B:  = Me.RecordCount
  loc_A47190: ILdRf var_90
  loc_A47193: LitI4 0
  loc_A47198: GtI4
  loc_A47199: BranchF loc_A471C0
  loc_A4719C: FLdPr var_8C
  loc_A4719F: Me.CancelUpdate
  loc_A471A4: FLdRfVar var_90
  loc_A471A7: FLdPr var_8C
  loc_A471AA:  = Me.EditMode
  loc_A471AF: ILdRf var_90
  loc_A471B2: LitI4 2
  loc_A471B7: EqI4
  loc_A471B8: BranchF loc_A471C0
  loc_A471BB: Call MoveFirst()
  loc_A471C0: LitNothing
  loc_A471C2: FStAd var_8C 
  loc_A471C6: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FE2B4
  'Data Table: 432C04
  loc_9FE288: FLdRfVar var_90
  loc_9FE28B: FLdRfVar var_8C
  loc_9FE28E: FLdPr Me
  loc_9FE291: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9FE296: FLdPr var_8C
  loc_9FE299:  = Me.EditMode
  loc_9FE29E: ILdRf var_90
  loc_9FE2A1: LitI4 0
  loc_9FE2A6: NeI4
  loc_9FE2A7: FStI2 var_86
  loc_9FE2AA: FFree1Ad var_8C
  loc_9FE2AD: ExitProcCbHresult
  loc_9FE2B3: PopAdLdVar
End Sub

Public Sub RedefineRS(sSelect) 'A72DAC
  'Data Table: 432C04
  loc_A72D38: ILdRf sSelect
  loc_A72D3B: FStStrCopy var_88
  loc_A72D3E: LitNothing
  loc_A72D40: CastAd
  loc_A72D43: FStAdFuncNoPop
  loc_A72D46: FLdPr Me
  loc_A72D49: Call clsobreinmu.global_4402060Set(from_stack_1v)
  loc_A72D4E: FFree1Ad var_8C
  loc_A72D51: New Recordset
  loc_A72D55: FStAdFuncNoPop
  loc_A72D58: FLdPr Me
  loc_A72D5B: Call clsobreinmu.global_4402060Set(from_stack_1v)
  loc_A72D60: FFree1Ad var_8C
  loc_A72D63: LitI4 -1
  loc_A72D68: LitI4 3
  loc_A72D6D: LitI4 3
  loc_A72D72: ImpAdLdI4 MemVar_D9301C
  loc_A72D75: CVarAd
  loc_A72D79: PopAdLdVar
  loc_A72D7A: ILdRf var_88
  loc_A72D7D: CVarStr var_9C
  loc_A72D80: PopAdLdVar
  loc_A72D81: FLdRfVar var_8C
  loc_A72D84: FLdPr Me
  loc_A72D87: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A72D8C: FLdPr var_8C
  loc_A72D8F: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72D94: FFree1Ad var_8C
  loc_A72D97: LitVarStr var_9C, "Primary"
  loc_A72D9C: PopAdLdVar
  loc_A72D9D: FLdPr Me
  loc_A72DA0: LateIdCall
  loc_A72DA8: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5C6C8
  'Data Table: 432C04
  loc_A5C668: ILdRf sSelect
  loc_A5C66B: FStStrCopy var_88
  loc_A5C66E: LitNothing
  loc_A5C670: CastAd
  loc_A5C673: FStAdFuncNoPop
  loc_A5C676: FLdPr Me
  loc_A5C679: Call clsobreinmu.global_4402060Set(from_stack_1v)
  loc_A5C67E: FFree1Ad var_8C
  loc_A5C681: New Recordset
  loc_A5C685: FStAdFuncNoPop
  loc_A5C688: FLdPr Me
  loc_A5C68B: Call clsobreinmu.global_4402060Set(from_stack_1v)
  loc_A5C690: FFree1Ad var_8C
  loc_A5C693: LitI4 -1
  loc_A5C698: LitI4 3
  loc_A5C69D: LitI4 3
  loc_A5C6A2: ImpAdLdI4 MemVar_D9301C
  loc_A5C6A5: CVarAd
  loc_A5C6A9: PopAdLdVar
  loc_A5C6AA: ILdRf var_88
  loc_A5C6AD: CVarStr var_9C
  loc_A5C6B0: PopAdLdVar
  loc_A5C6B1: FLdRfVar var_8C
  loc_A5C6B4: FLdPr Me
  loc_A5C6B7: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A5C6BC: FLdPr var_8C
  loc_A5C6BF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C6C4: FFree1Ad var_8C
  loc_A5C6C7: ExitProcHresult
End Sub

Public Sub Encontrar(OrdeObre, CodiInmu) 'A32024
  'Data Table: 432C04
  loc_A31FE0: ILdRf OrdeObre
  loc_A31FE3: FStStrCopy var_88
  loc_A31FE6: LitStr "CodiInmu = "
  loc_A31FE9: ILdRf CodiInmu
  loc_A31FEC: CStrI4
  loc_A31FEE: FStStrNoPop var_8C
  loc_A31FF1: ConcatStr
  loc_A31FF2: PopTmpLdAdStr
  loc_A31FF6: Call Find(from_stack_1v)
  loc_A31FFB: FFreeStr var_8C = ""
  loc_A32002: LitStr "OrdeObre = '"
  loc_A32005: ILdRf var_88
  loc_A32008: ConcatStr
  loc_A32009: FStStrNoPop var_8C
  loc_A3200C: LitStr "'"
  loc_A3200F: ConcatStr
  loc_A32010: PopTmpLdAdStr
  loc_A32014: Call Find(from_stack_1v)
  loc_A32019: FFreeStr var_8C = ""
  loc_A32020: ExitProcHresult
End Sub

Public Property Get DataSource() 'A08AB0
  'Data Table: 432C04
  loc_A08A80: ZeroRetVal
  loc_A08A82: FLdRfVar var_90
  loc_A08A85: FLdRfVar var_8C
  loc_A08A88: FLdPr Me
  loc_A08A8B: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A08A90: FLdPr var_8C
  loc_A08A93:  = Me.DataSource
  loc_A08A98: ILdRf var_90
  loc_A08A9B: CastAd
  loc_A08A9E: FStAdFunc var_88
  loc_A08AA1: FFreeAd var_8C = ""
  loc_A08AA8: ExitProcCbHresult
  loc_A08AAE: LitVar_Missing var_7400
End Sub

Public Property Get EditMode() '9F4318
  'Data Table: 432C04
  loc_9F42F0: FLdRfVar var_90
  loc_9F42F3: FLdRfVar var_8C
  loc_9F42F6: FLdPr Me
  loc_9F42F9: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F42FE: FLdPr var_8C
  loc_9F4301:  = Me.EditMode
  loc_9F4306: ILdRf var_90
  loc_9F4309: FStR4 var_88
  loc_9F430C: FFree1Ad var_8C
  loc_9F430F: ExitProcCbHresult
  loc_9F4315: MemLdPr global_1535
End Sub

Public Property Get OrdeObre() 'A55BAC
  'Data Table: 432C04
  loc_A55B5C: ZeroRetVal
  loc_A55B5E: FLdRfVar var_B4
  loc_A55B61: FLdRfVar var_A4
  loc_A55B64: LitVarStr var_A0, "OrdeObre"
  loc_A55B69: PopAdLdVar
  loc_A55B6A: FLdRfVar var_90
  loc_A55B6D: FLdRfVar var_8C
  loc_A55B70: FLdPr Me
  loc_A55B73: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A55B78: FLdPr var_8C
  loc_A55B7B:  = Me.Fields
  loc_A55B80: FLdPr var_90
  loc_A55B83: from_stack_2 = Me.Item(from_stack_1)
  loc_A55B88: FLdPr var_A4
  loc_A55B8B:  = Me.Value
  loc_A55B90: FLdRfVar var_B4
  loc_A55B93: CStrVarTmp
  loc_A55B94: FStStr var_88
  loc_A55B97: FFreeAd var_8C = "": var_90 = ""
  loc_A55BA0: FFree1Var var_B4 = ""
  loc_A55BA3: ExitProcCbHresult
End Sub

Public Property Get CodiInmu() 'A46644
  'Data Table: 432C04
  loc_A465F8: FLdRfVar var_B4
  loc_A465FB: FLdRfVar var_A4
  loc_A465FE: LitVarStr var_A0, "CodiInmu"
  loc_A46603: PopAdLdVar
  loc_A46604: FLdRfVar var_90
  loc_A46607: FLdRfVar var_8C
  loc_A4660A: FLdPr Me
  loc_A4660D: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A46612: FLdPr var_8C
  loc_A46615:  = Me.Fields
  loc_A4661A: FLdPr var_90
  loc_A4661D: from_stack_2 = Me.Item(from_stack_1)
  loc_A46622: FLdPr var_A4
  loc_A46625:  = Me.Value
  loc_A4662A: FLdRfVar var_B4
  loc_A4662D: CI4Var
  loc_A4662F: FStR4 var_88
  loc_A46632: FFreeAd var_8C = "": var_90 = ""
  loc_A4663B: FFree1Var var_B4 = ""
  loc_A4663E: ExitProcCbHresult
End Sub

Public Property Get FealObin() 'A404F8
  'Data Table: 432C04
  loc_A404B4: ZeroRetValVar
  loc_A404B6: FLdRfVar var_B0
  loc_A404B9: LitVarStr var_AC, "FealObin"
  loc_A404BE: PopAdLdVar
  loc_A404BF: FLdRfVar var_9C
  loc_A404C2: FLdRfVar var_98
  loc_A404C5: FLdPr Me
  loc_A404C8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A404CD: FLdPr var_98
  loc_A404D0:  = Me.Fields
  loc_A404D5: FLdPr var_9C
  loc_A404D8: from_stack_2 = Me.Item(from_stack_1)
  loc_A404DD: FLdZeroAd var_B0
  loc_A404E0: CVarAd
  loc_A404E4: FStVar FealObin
  loc_A404E8: FFreeAd var_98 = ""
  loc_A404EF: ExitProcCbHresult
  loc_A404F5: FLdPr arg_F00
End Sub

Public Property Get FenoObin() 'A408B0
  'Data Table: 432C04
  loc_A4086C: ZeroRetValVar
  loc_A4086E: FLdRfVar var_B0
  loc_A40871: LitVarStr var_AC, "FenoObin"
  loc_A40876: PopAdLdVar
  loc_A40877: FLdRfVar var_9C
  loc_A4087A: FLdRfVar var_98
  loc_A4087D: FLdPr Me
  loc_A40880: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A40885: FLdPr var_98
  loc_A40888:  = Me.Fields
  loc_A4088D: FLdPr var_9C
  loc_A40890: from_stack_2 = Me.Item(from_stack_1)
  loc_A40895: FLdZeroAd var_B0
  loc_A40898: CVarAd
  loc_A4089C: FStVar FenoObin
  loc_A408A0: FFreeAd var_98 = ""
  loc_A408A7: ExitProcCbHresult
  loc_A408AD: CI2I4
End Sub

Public Property Get ObseObin() 'A40718
  'Data Table: 432C04
  loc_A406D4: ZeroRetValVar
  loc_A406D6: FLdRfVar var_B0
  loc_A406D9: LitVarStr var_AC, "ObseObin"
  loc_A406DE: PopAdLdVar
  loc_A406DF: FLdRfVar var_9C
  loc_A406E2: FLdRfVar var_98
  loc_A406E5: FLdPr Me
  loc_A406E8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A406ED: FLdPr var_98
  loc_A406F0:  = Me.Fields
  loc_A406F5: FLdPr var_9C
  loc_A406F8: from_stack_2 = Me.Item(from_stack_1)
  loc_A406FD: FLdZeroAd var_B0
  loc_A40700: CVarAd
  loc_A40704: FStVar ObseObin
  loc_A40708: FFreeAd var_98 = ""
  loc_A4070F: ExitProcCbHresult
  loc_A40715: FStVarUnkFunc
End Sub

Public Property Get CodiFapa() 'A43F70
  'Data Table: 432C04
  loc_A43F24: FLdRfVar var_B4
  loc_A43F27: FLdRfVar var_A4
  loc_A43F2A: LitVarStr var_A0, "CodiFapa"
  loc_A43F2F: PopAdLdVar
  loc_A43F30: FLdRfVar var_90
  loc_A43F33: FLdRfVar var_8C
  loc_A43F36: FLdPr Me
  loc_A43F39: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A43F3E: FLdPr var_8C
  loc_A43F41:  = Me.Fields
  loc_A43F46: FLdPr var_90
  loc_A43F49: from_stack_2 = Me.Item(from_stack_1)
  loc_A43F4E: FLdPr var_A4
  loc_A43F51:  = Me.Value
  loc_A43F56: FLdRfVar var_B4
  loc_A43F59: CI2Var
  loc_A43F5A: FStI2 var_86
  loc_A43F5D: FFreeAd var_8C = "": var_90 = ""
  loc_A43F66: FFree1Var var_B4 = ""
  loc_A43F69: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A40608
  'Data Table: 432C04
  loc_A405C4: ZeroRetValVar
  loc_A405C6: FLdRfVar var_B0
  loc_A405C9: LitVarStr var_AC, "DetaPers"
  loc_A405CE: PopAdLdVar
  loc_A405CF: FLdRfVar var_9C
  loc_A405D2: FLdRfVar var_98
  loc_A405D5: FLdPr Me
  loc_A405D8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A405DD: FLdPr var_98
  loc_A405E0:  = Me.Fields
  loc_A405E5: FLdPr var_9C
  loc_A405E8: from_stack_2 = Me.Item(from_stack_1)
  loc_A405ED: FLdZeroAd var_B0
  loc_A405F0: CVarAd
  loc_A405F4: FStVar DetaPers
  loc_A405F8: FFreeAd var_98 = ""
  loc_A405FF: ExitProcCbHresult
  loc_A40605: ExitProcR4
End Sub

Public Property Get CacuFapa() 'A40690
  'Data Table: 432C04
  loc_A4064C: ZeroRetValVar
  loc_A4064E: FLdRfVar var_B0
  loc_A40651: LitVarStr var_AC, "CacuFapa"
  loc_A40656: PopAdLdVar
  loc_A40657: FLdRfVar var_9C
  loc_A4065A: FLdRfVar var_98
  loc_A4065D: FLdPr Me
  loc_A40660: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A40665: FLdPr var_98
  loc_A40668:  = Me.Fields
  loc_A4066D: FLdPr var_9C
  loc_A40670: from_stack_2 = Me.Item(from_stack_1)
  loc_A40675: FLdZeroAd var_B0
  loc_A40678: CVarAd
  loc_A4067C: FStVar CacuFapa
  loc_A40680: FFreeAd var_98 = ""
  loc_A40687: ExitProcCbHresult
  loc_A4068D: FLdPr var_7600
End Sub

Public Property Get FepaDefa() 'A40580
  'Data Table: 432C04
  loc_A4053C: ZeroRetValVar
  loc_A4053E: FLdRfVar var_B0
  loc_A40541: LitVarStr var_AC, "FepaDefa"
  loc_A40546: PopAdLdVar
  loc_A40547: FLdRfVar var_9C
  loc_A4054A: FLdRfVar var_98
  loc_A4054D: FLdPr Me
  loc_A40550: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A40555: FLdPr var_98
  loc_A40558:  = Me.Fields
  loc_A4055D: FLdPr var_9C
  loc_A40560: from_stack_2 = Me.Item(from_stack_1)
  loc_A40565: FLdZeroAd var_B0
  loc_A40568: CVarAd
  loc_A4056C: FStVar FepaDefa
  loc_A40570: FFreeAd var_98 = ""
  loc_A40577: ExitProcCbHresult
End Sub

Public Property Get FeveDefa() 'A402D8
  'Data Table: 432C04
  loc_A40294: ZeroRetValVar
  loc_A40296: FLdRfVar var_B0
  loc_A40299: LitVarStr var_AC, "FeveDefa"
  loc_A4029E: PopAdLdVar
  loc_A4029F: FLdRfVar var_9C
  loc_A402A2: FLdRfVar var_98
  loc_A402A5: FLdPr Me
  loc_A402A8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A402AD: FLdPr var_98
  loc_A402B0:  = Me.Fields
  loc_A402B5: FLdPr var_9C
  loc_A402B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A402BD: FLdZeroAd var_B0
  loc_A402C0: CVarAd
  loc_A402C4: FStVar FeveDefa
  loc_A402C8: FFreeAd var_98 = ""
  loc_A402CF: ExitProcCbHresult
End Sub

Public Property Get AforCtct() 'A40360
  'Data Table: 432C04
  loc_A4031C: ZeroRetValVar
  loc_A4031E: FLdRfVar var_B0
  loc_A40321: LitVarStr var_AC, "AforCtct"
  loc_A40326: PopAdLdVar
  loc_A40327: FLdRfVar var_9C
  loc_A4032A: FLdRfVar var_98
  loc_A4032D: FLdPr Me
  loc_A40330: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A40335: FLdPr var_98
  loc_A40338:  = Me.Fields
  loc_A4033D: FLdPr var_9C
  loc_A40340: from_stack_2 = Me.Item(from_stack_1)
  loc_A40345: FLdZeroAd var_B0
  loc_A40348: CVarAd
  loc_A4034C: FStVar AforCtct
  loc_A40350: FFreeAd var_98 = ""
  loc_A40357: ExitProcCbHresult
End Sub

Public Property Get PagoCtct() 'A40250
  'Data Table: 432C04
  loc_A4020C: ZeroRetValVar
  loc_A4020E: FLdRfVar var_B0
  loc_A40211: LitVarStr var_AC, "PagoCtct"
  loc_A40216: PopAdLdVar
  loc_A40217: FLdRfVar var_9C
  loc_A4021A: FLdRfVar var_98
  loc_A4021D: FLdPr Me
  loc_A40220: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A40225: FLdPr var_98
  loc_A40228:  = Me.Fields
  loc_A4022D: FLdPr var_9C
  loc_A40230: from_stack_2 = Me.Item(from_stack_1)
  loc_A40235: FLdZeroAd var_B0
  loc_A40238: CVarAd
  loc_A4023C: FStVar PagoCtct
  loc_A40240: FFreeAd var_98 = ""
  loc_A40247: ExitProcCbHresult
  loc_A4024D: FLdPr Me
End Sub

Public Property Get CredCtct() 'A400B8
  'Data Table: 432C04
  loc_A40074: ZeroRetValVar
  loc_A40076: FLdRfVar var_B0
  loc_A40079: LitVarStr var_AC, "CredCtct"
  loc_A4007E: PopAdLdVar
  loc_A4007F: FLdRfVar var_9C
  loc_A40082: FLdRfVar var_98
  loc_A40085: FLdPr Me
  loc_A40088: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A4008D: FLdPr var_98
  loc_A40090:  = Me.Fields
  loc_A40095: FLdPr var_9C
  loc_A40098: from_stack_2 = Me.Item(from_stack_1)
  loc_A4009D: FLdZeroAd var_B0
  loc_A400A0: CVarAd
  loc_A400A4: FStVar CredCtct
  loc_A400A8: FFreeAd var_98 = ""
  loc_A400AF: ExitProcCbHresult
  loc_A400B5: FnStrComp3Var
End Sub

Public Property Get SaldCtct() 'A3FF20
  'Data Table: 432C04
  loc_A3FEDC: ZeroRetValVar
  loc_A3FEDE: FLdRfVar var_B0
  loc_A3FEE1: LitVarStr var_AC, "SaldCtct"
  loc_A3FEE6: PopAdLdVar
  loc_A3FEE7: FLdRfVar var_9C
  loc_A3FEEA: FLdRfVar var_98
  loc_A3FEED: FLdPr Me
  loc_A3FEF0: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A3FEF5: FLdPr var_98
  loc_A3FEF8:  = Me.Fields
  loc_A3FEFD: FLdPr var_9C
  loc_A3FF00: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FF05: FLdZeroAd var_B0
  loc_A3FF08: CVarAd
  loc_A3FF0C: FStVar SaldCtct
  loc_A3FF10: FFreeAd var_98 = ""
  loc_A3FF17: ExitProcCbHresult
  loc_A3FF1D: NewIfNullAd
End Sub

Public Property Get FealCtct() 'A3FE98
  'Data Table: 432C04
  loc_A3FE54: ZeroRetValVar
  loc_A3FE56: FLdRfVar var_B0
  loc_A3FE59: LitVarStr var_AC, "FealCtct"
  loc_A3FE5E: PopAdLdVar
  loc_A3FE5F: FLdRfVar var_9C
  loc_A3FE62: FLdRfVar var_98
  loc_A3FE65: FLdPr Me
  loc_A3FE68: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A3FE6D: FLdPr var_98
  loc_A3FE70:  = Me.Fields
  loc_A3FE75: FLdPr var_9C
  loc_A3FE78: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FE7D: FLdZeroAd var_B0
  loc_A3FE80: CVarAd
  loc_A3FE84: FStVar FealCtct
  loc_A3FE88: FFreeAd var_98 = ""
  loc_A3FE8F: ExitProcCbHresult
  loc_A3FE95: FLdPrThis
End Sub

Public Property Get FealFapa(arg_20) 'A403E8
  'Data Table: 432C04
  loc_A403A4: ZeroRetValVar
  loc_A403A6: FLdRfVar var_B0
  loc_A403A9: LitVarStr var_AC, "FealFapa"
  loc_A403AE: PopAdLdVar
  loc_A403AF: FLdRfVar var_9C
  loc_A403B2: FLdRfVar var_98
  loc_A403B5: FLdPr Me
  loc_A403B8: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A403BD: FLdPr var_98
  loc_A403C0:  = Me.Fields
  loc_A403C5: FLdPr var_9C
  loc_A403C8: from_stack_2 = Me.Item(from_stack_1)
  loc_A403CD: FLdZeroAd var_B0
  loc_A403D0: CVarAd
  loc_A403D4: FStVar FealFapa
  loc_A403D8: FFreeAd var_98 = ""
  loc_A403DF: ExitProcCbHresult
  loc_A403E5: PopTmpLdAd8 arg_20FF
End Sub

Public Function ValidaClave(OrdeObre, CodiInmu) 'A78AF0
  'Data Table: 432C04
  loc_A78A88: ILdRf OrdeObre
  loc_A78A8B: FStStrCopy var_8C
  loc_A78A8E: ZeroRetVal
  loc_A78A90: LitStr "SELECT OrdeObre, CodiInmu FROM obreinmu WHERE OrdeObre = '"
  loc_A78A93: ILdRf var_8C
  loc_A78A96: ConcatStr
  loc_A78A97: FStStrNoPop var_90
  loc_A78A9A: LitStr "' AND CodiInmu = "
  loc_A78A9D: ConcatStr
  loc_A78A9E: FStStrNoPop ValidaClave
  loc_A78AA1: ILdRf CodiInmu
  loc_A78AA4: CStrI4
  loc_A78AA6: FStStrNoPop var_98
  loc_A78AA9: ConcatStr
  loc_A78AAA: FStStrNoPop var_9C
  loc_A78AAD: Call EjecutarRs2(from_stack_1v)
  loc_A78AB2: FFreeStr var_90 = "": ValidaClave = "": var_98 = ""
  loc_A78ABD: FLdRfVar var_A4
  loc_A78AC0: FLdRfVar var_A0
  loc_A78AC3: FLdPr Me
  loc_A78AC6: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_A78ACB: FLdPr var_A0
  loc_A78ACE:  = Me.RecordCount
  loc_A78AD3: ILdRf var_A4
  loc_A78AD6: LitI4 0
  loc_A78ADB: GtI4
  loc_A78ADC: FFree1Ad var_A0
  loc_A78ADF: BranchF loc_A78AE8
  loc_A78AE2: LitStr "El REGISTRO YA EXISTE. Reintente..."
  loc_A78AE5: FStStrCopy var_88
  loc_A78AE8: ExitProcCbHresult
End Function

Public Function Eliminar(OrdeObre, CodiInmu) 'A5C4EC
  'Data Table: 432C04
  loc_A5C4A0: ILdRf OrdeObre
  loc_A5C4A3: FStStrCopy var_8C
  loc_A5C4A6: ZeroRetVal
  loc_A5C4A8: LitStr "DELETE FROM obreinmu WHERE ORdeObre = '"
  loc_A5C4AB: ILdRf var_8C
  loc_A5C4AE: ConcatStr
  loc_A5C4AF: FStStrNoPop var_90
  loc_A5C4B2: LitStr "' AND CodiInmu = "
  loc_A5C4B5: ConcatStr
  loc_A5C4B6: FStStrNoPop Eliminar
  loc_A5C4B9: ILdRf CodiInmu
  loc_A5C4BC: CStrI4
  loc_A5C4BE: FStStrNoPop var_98
  loc_A5C4C1: ConcatStr
  loc_A5C4C2: FStStrNoPop var_9C
  loc_A5C4C5: LitStr ";"
  loc_A5C4C8: ConcatStr
  loc_A5C4C9: FStStrNoPop var_A0
  loc_A5C4CC: Call EjecutarRs2(from_stack_1v)
  loc_A5C4D1: FFreeStr var_90 = "": Eliminar = "": var_98 = "": var_9C = ""
  loc_A5C4DE: Call Requery()
  loc_A5C4E3: ExitProcCbHresult
  loc_A5C4E9: PopTmpLdAd8 arg_2500
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E7804
  'Data Table: 432C04
  loc_9E77E8: ILdRf pError
  loc_9E77EB: FStAd var_88 
  loc_9E77EF: ILdRf pRecordset
  loc_9E77F2: FStAd var_8C 
  loc_9E77F6: FLdPr Me
  loc_9E77F9: RaiseEvent
  loc_9E7801: ExitProcHresult
  loc_9E7802: MemStI2 global_-29644
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9CAA0
  'Data Table: 432C04
  loc_A9C9E0: ILdRf pRecordset
  loc_A9C9E3: FStAd var_88 
  loc_A9C9E7: ILdRf adReason
  loc_A9C9EA: FStR4 var_90
  loc_A9C9ED: ILdRf var_90
  loc_A9C9F0: LitI4 1
  loc_A9C9F5: EqI4
  loc_A9C9F6: BranchF loc_A9C9FC
  loc_A9C9F9: Branch loc_A9CA8F
  loc_A9C9FC: ILdRf var_90
  loc_A9C9FF: LitI4 9
  loc_A9CA04: EqI4
  loc_A9CA05: BranchF loc_A9CA0B
  loc_A9CA08: Branch loc_A9CA8F
  loc_A9CA0B: ILdRf var_90
  loc_A9CA0E: LitI4 2
  loc_A9CA13: EqI4
  loc_A9CA14: BranchF loc_A9CA1A
  loc_A9CA17: Branch loc_A9CA8F
  loc_A9CA1A: ILdRf var_90
  loc_A9CA1D: LitI4 &HB
  loc_A9CA22: EqI4
  loc_A9CA23: BranchF loc_A9CA29
  loc_A9CA26: Branch loc_A9CA8F
  loc_A9CA29: ILdRf var_90
  loc_A9CA2C: LitI4 &HA
  loc_A9CA31: EqI4
  loc_A9CA32: BranchF loc_A9CA38
  loc_A9CA35: Branch loc_A9CA8F
  loc_A9CA38: ILdRf var_90
  loc_A9CA3B: LitI4 7
  loc_A9CA40: EqI4
  loc_A9CA41: BranchF loc_A9CA47
  loc_A9CA44: Branch loc_A9CA8F
  loc_A9CA47: ILdRf var_90
  loc_A9CA4A: LitI4 8
  loc_A9CA4F: EqI4
  loc_A9CA50: BranchF loc_A9CA56
  loc_A9CA53: Branch loc_A9CA8F
  loc_A9CA56: ILdRf var_90
  loc_A9CA59: LitI4 5
  loc_A9CA5E: EqI4
  loc_A9CA5F: BranchF loc_A9CA65
  loc_A9CA62: Branch loc_A9CA8F
  loc_A9CA65: ILdRf var_90
  loc_A9CA68: LitI4 6
  loc_A9CA6D: EqI4
  loc_A9CA6E: BranchF loc_A9CA74
  loc_A9CA71: Branch loc_A9CA8F
  loc_A9CA74: ILdRf var_90
  loc_A9CA77: LitI4 4
  loc_A9CA7C: EqI4
  loc_A9CA7D: BranchF loc_A9CA83
  loc_A9CA80: Branch loc_A9CA8F
  loc_A9CA83: ILdRf var_90
  loc_A9CA86: LitI4 3
  loc_A9CA8B: EqI4
  loc_A9CA8C: BranchF loc_A9CA8F
  loc_A9CA8F: FLdI2 var_8A
  loc_A9CA92: BranchF loc_A9CA9D
  loc_A9CA95: LitI4 4
  loc_A9CA9A: IStI4 adStatus
  loc_A9CA9D: ExitProcHresult
  loc_A9CA9E: FLdPr var_7400
End Sub

Private Function Proc_114_45_9F3D54() '9F3D54
  'Data Table: 432C04
  loc_9F3D30: LitStr "Primary"
  loc_9F3D33: FLdPr Me
  loc_9F3D36: LateIdLdVar var_94 DispID_4 0
  loc_9F3D3D: CastAdVar Me
  loc_9F3D41: FStAdFunc var_98
  loc_9F3D44: FLdPr var_98
  loc_9F3D4C: FFree1Ad var_98
  loc_9F3D4F: FFree1Var var_94 = ""
  loc_9F3D52: ExitProcHresult
End Function

Private Function Proc_114_46_9F425C(arg_C) '9F425C
  'Data Table: 432C04
  loc_9F4238: ILdI4 arg_C
  loc_9F423B: FStStrCopy var_88
  loc_9F423E: ILdRf var_88
  loc_9F4241: LitStr "Primary"
  loc_9F4244: EqStr
  loc_9F4246: BranchF loc_9F425B
  loc_9F4249: FLdRfVar var_8C
  loc_9F424C: FLdPr Me
  loc_9F424F: from_stack_1v = clsobreinmu.global_4402060Get()
  loc_9F4254: FLdZeroAd var_8C
  loc_9F4257: IStAdFunc
  loc_9F425B: ExitProcHresult
End Function

Public Function global_4402060Get() '432FC4
  global_4402060Get = global_4402060
End Function

Public Sub global_4402060Put(Value) '432FDE
  global_4402060 = Value
End Sub

Public Sub global_4402060Set(Value) '432FF8
  global_4402060 = Value
End Sub

Public Function global_4402060Get() '433012
  global_4402060Get = global_4402060
End Function

Public Sub global_4402060Put(Value) '43302C
  global_4402060 = Value
End Sub

Public Sub global_4402060Set(Value) '433046
  global_4402060 = Value
End Sub
