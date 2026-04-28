VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdeudvari"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject
Public RsCls As New UnkObject


Public Function RsFrmGet() '40D714
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40D723
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40D732
  RsFrm = Value
End Sub

Public Function RsClsGet() '40D741
  RsClsGet = RsCls
End Function

Public Sub RsClsPut(Value) '40D750
  RsCls = Value
End Sub

Public Sub RsClsSet(Value) '40D75F
  RsCls = Value
End Sub

Public Sub Mover(iCantidad) '9FC458
  'Data Table: 40D4C4
  loc_9FC428: FLdRfVar var_88
  loc_9FC42B: FLdPr Me
  loc_9FC42E: MemLdPr RsFrm
  loc_9FC431:  = Me.RecordCount
  loc_9FC436: ILdRf var_88
  loc_9FC439: LitI4 0
  loc_9FC43E: GtI4
  loc_9FC43F: BranchF loc_9FC454
  loc_9FC442: LitVar_Missing var_98
  loc_9FC445: PopAdLdVar
  loc_9FC446: ILdI4 iCantidad
  loc_9FC449: FLdPr Me
  loc_9FC44C: MemLdPr RsFrm
  loc_9FC44F: Me.Move from_stack_1, from_stack_2
  loc_9FC454: ExitProcHresult
  loc_9FC455: StAryRecCopy
End Sub

Public Sub MoveFirst() '9ED6CC
  'Data Table: 40D4C4
  loc_9ED6A4: FLdRfVar var_88
  loc_9ED6A7: FLdPr Me
  loc_9ED6AA: MemLdPr RsFrm
  loc_9ED6AD:  = Me.RecordCount
  loc_9ED6B2: ILdRf var_88
  loc_9ED6B5: LitI4 0
  loc_9ED6BA: GtI4
  loc_9ED6BB: BranchF loc_9ED6C9
  loc_9ED6BE: FLdPr Me
  loc_9ED6C1: MemLdPr RsFrm
  loc_9ED6C4: Me.MoveFirst
  loc_9ED6C9: ExitProcHresult
  loc_9ED6CA: PopAdLdVar
End Sub

Public Sub MoveLast() '9ED82C
  'Data Table: 40D4C4
  loc_9ED804: FLdRfVar var_88
  loc_9ED807: FLdPr Me
  loc_9ED80A: MemLdPr RsFrm
  loc_9ED80D:  = Me.RecordCount
  loc_9ED812: ILdRf var_88
  loc_9ED815: LitI4 0
  loc_9ED81A: GtI4
  loc_9ED81B: BranchF loc_9ED829
  loc_9ED81E: FLdPr Me
  loc_9ED821: MemLdPr RsFrm
  loc_9ED824: Me.MoveLast
  loc_9ED829: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6D360
  'Data Table: 40D4C4
  loc_A6D2E8: FLdRfVar var_86
  loc_A6D2EB: FLdPr Me
  loc_A6D2EE: MemLdPr RsFrm
  loc_A6D2F1:  = Me.EOF
  loc_A6D2F6: FLdI2 var_86
  loc_A6D2F9: NotI4
  loc_A6D2FA: FLdRfVar var_8C
  loc_A6D2FD: FLdPr Me
  loc_A6D300: MemLdPr RsFrm
  loc_A6D303:  = Me.RecordCount
  loc_A6D308: ILdRf var_8C
  loc_A6D30B: LitI4 0
  loc_A6D310: GtI4
  loc_A6D311: AndI4
  loc_A6D312: BranchF loc_A6D320
  loc_A6D315: FLdPr Me
  loc_A6D318: MemLdPr RsFrm
  loc_A6D31B: Me.MoveNext
  loc_A6D320: FLdRfVar var_86
  loc_A6D323: FLdPr Me
  loc_A6D326: MemLdPr RsFrm
  loc_A6D329:  = Me.EOF
  loc_A6D32E: FLdI2 var_86
  loc_A6D331: FLdRfVar var_8C
  loc_A6D334: FLdPr Me
  loc_A6D337: MemLdPr RsFrm
  loc_A6D33A:  = Me.RecordCount
  loc_A6D33F: ILdRf var_8C
  loc_A6D342: LitI4 0
  loc_A6D347: GtI4
  loc_A6D348: AndI4
  loc_A6D349: BranchF loc_A6D35C
  loc_A6D34C: ImpAdCallFPR4 Beep()
  loc_A6D351: FLdPr Me
  loc_A6D354: MemLdPr RsFrm
  loc_A6D357: Me.MoveLast
  loc_A6D35C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1308
  'Data Table: 40D4C4
  loc_9B12FC: FLdPr Me
  loc_9B12FF: MemLdPr RsFrm
  loc_9B1302: Me.MoveNext
  loc_9B1307: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B9738
  'Data Table: 40D4C4
  loc_9B9724: LitVar_Missing var_94
  loc_9B9727: PopAdLdVar
  loc_9B9728: ILdI2 iValor
  loc_9B972B: CI4UI1
  loc_9B972C: FLdPr Me
  loc_9B972F: MemLdPr RsFrm
  loc_9B9732: Me.Move from_stack_1, from_stack_2
  loc_9B9737: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C1A8
  'Data Table: 40D4C4
  loc_A6C130: FLdRfVar var_86
  loc_A6C133: FLdPr Me
  loc_A6C136: MemLdPr RsFrm
  loc_A6C139:  = Me.BOF
  loc_A6C13E: FLdI2 var_86
  loc_A6C141: NotI4
  loc_A6C142: FLdRfVar var_8C
  loc_A6C145: FLdPr Me
  loc_A6C148: MemLdPr RsFrm
  loc_A6C14B:  = Me.RecordCount
  loc_A6C150: ILdRf var_8C
  loc_A6C153: LitI4 0
  loc_A6C158: GtI4
  loc_A6C159: AndI4
  loc_A6C15A: BranchF loc_A6C168
  loc_A6C15D: FLdPr Me
  loc_A6C160: MemLdPr RsFrm
  loc_A6C163: Me.MovePrevious
  loc_A6C168: FLdRfVar var_86
  loc_A6C16B: FLdPr Me
  loc_A6C16E: MemLdPr RsFrm
  loc_A6C171:  = Me.BOF
  loc_A6C176: FLdI2 var_86
  loc_A6C179: FLdRfVar var_8C
  loc_A6C17C: FLdPr Me
  loc_A6C17F: MemLdPr RsFrm
  loc_A6C182:  = Me.RecordCount
  loc_A6C187: ILdRf var_8C
  loc_A6C18A: LitI4 0
  loc_A6C18F: GtI4
  loc_A6C190: AndI4
  loc_A6C191: BranchF loc_A6C1A4
  loc_A6C194: ImpAdCallFPR4 Beep()
  loc_A6C199: FLdPr Me
  loc_A6C19C: MemLdPr RsFrm
  loc_A6C19F: Me.MoveFirst
  loc_A6C1A4: ExitProcHresult
End Sub

Public Property Get EOF() '9D2D58
  'Data Table: 40D4C4
  loc_9D2D3C: FLdRfVar var_88
  loc_9D2D3F: FLdPr Me
  loc_9D2D42: MemLdPr RsFrm
  loc_9D2D45:  = Me.EOF
  loc_9D2D4A: FLdI2 var_88
  loc_9D2D4D: FStI2 var_86
  loc_9D2D50: ExitProcCbHresult
End Sub

Public Property Get BOF() '9D2DA4
  'Data Table: 40D4C4
  loc_9D2D88: FLdRfVar var_88
  loc_9D2D8B: FLdPr Me
  loc_9D2D8E: MemLdPr RsFrm
  loc_9D2D91:  = Me.BOF
  loc_9D2D96: FLdI2 var_88
  loc_9D2D99: FStI2 var_86
  loc_9D2D9C: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B3438
  'Data Table: 40D4C4
  loc_9B3428: ILdI4 sOrden
  loc_9B342B: FLdPr Me
  loc_9B342E: MemLdPr RsFrm
  loc_9B3431: Me.Sort = from_stack_1
  loc_9B3436: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DDA90
  'Data Table: 40D4C4
  loc_9DDA70: LitVar_Missing var_94
  loc_9DDA73: PopAdLdVar
  loc_9DDA74: LitI4 1
  loc_9DDA79: LitI4 0
  loc_9DDA7E: ILdI4 sFind
  loc_9DDA81: FLdPr Me
  loc_9DDA84: MemLdPr RsFrm
  loc_9DDA87: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DDA8C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9914
  'Data Table: 40D4C4
  loc_9B9900: ILdI4 sCriterio
  loc_9B9903: CVarStr var_94
  loc_9B9906: PopAdLdVar
  loc_9B9907: FLdPr Me
  loc_9B990A: MemLdPr RsFrm
  loc_9B990D: Me.Filter = from_stack_1
  loc_9B9912: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D2E3C
  'Data Table: 40D4C4
  loc_9D2E20: FLdRfVar var_8C
  loc_9D2E23: FLdPr Me
  loc_9D2E26: MemLdPr RsFrm
  loc_9D2E29:  = Me.AbsolutePosition
  loc_9D2E2E: ILdRf var_8C
  loc_9D2E31: FStR4 var_88
  loc_9D2E34: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D2F6C
  'Data Table: 40D4C4
  loc_9D2F50: FLdRfVar var_8C
  loc_9D2F53: FLdPr Me
  loc_9D2F56: MemLdPr RsFrm
  loc_9D2F59:  = Me.RecordCount
  loc_9D2F5E: ILdRf var_8C
  loc_9D2F61: FStR4 var_88
  loc_9D2F64: ExitProcCbHresult
  loc_9D2F6A: PopAdLdVar
End Sub

Public Sub AddNew(CodiDeva, CucuPers, TipoDeva, EstaDeva, ObseDeva, VencDeva, LocaDeva, CodiEtga, CateEtga, NumeEtga, RegaDeva, HaceRequery) 'B40D0C
  'Data Table: 40D4C4
  loc_B40A80: ILdRf CodiDeva
  loc_B40A83: FStStrCopy var_88
  loc_B40A86: ILdRf CucuPers
  loc_B40A89: FStStrCopy var_8C
  loc_B40A8C: ILdRf TipoDeva
  loc_B40A8F: FStStrCopy var_90
  loc_B40A92: ILdRf ObseDeva
  loc_B40A95: FStStrCopy var_94
  loc_B40A98: ILdRf VencDeva
  loc_B40A9B: FStStrCopy var_98
  loc_B40A9E: ILdRf LocaDeva
  loc_B40AA1: FStStrCopy var_9C
  loc_B40AA4: FLdRfVar var_A0
  loc_B40AA7: ILdRf var_88
  loc_B40AAA: from_stack_2v = ValidaClave(from_stack_1v)
  loc_B40AAF: ILdRf var_A0
  loc_B40AB2: LitStr vbNullString
  loc_B40AB5: EqStr
  loc_B40AB7: FFree1Str var_A0
  loc_B40ABA: BranchF loc_B40D08
  loc_B40ABD: FLdRfVar var_98
  loc_B40AC0: CVarRef
  loc_B40AC5: ImpAdCallI2 IsDate()
  loc_B40ACA: FStI2 var_482
  loc_B40ACD: LitI4 1
  loc_B40AD2: LitI4 1
  loc_B40AD7: LitVarStr var_F4, "yyyy-mm-dd"
  loc_B40ADC: FStVarCopyObj var_104
  loc_B40ADF: FLdRfVar var_104
  loc_B40AE2: FLdRfVar var_98
  loc_B40AE5: CVarRef
  loc_B40AEA: ImpAdCallI2 Format$(, )
  loc_B40AEF: FStStr var_488
  loc_B40AF2: LitI2_Byte 0
  loc_B40AF4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B40AF9: FStFPR8 var_490
  loc_B40AFC: LitStr " START TRANSACTION; INSERT INTO deudvari (CodiDeva, CucuPers, TipoDeva, EstaDeva, ObseDeva, VencDeva, LocaDeva, CodiEtga, CateEtga, NumeEtga, RegaDeva, AltaUsua) VALUES ('"
  loc_B40AFF: ILdRf var_88
  loc_B40B02: ConcatStr
  loc_B40B03: FStStrNoPop var_A0
  loc_B40B06: LitStr "',"
  loc_B40B09: ConcatStr
  loc_B40B0A: FStStrNoPop var_A4
  loc_B40B0D: ILdRf var_8C
  loc_B40B10: ConcatStr
  loc_B40B11: FStStrNoPop var_A8
  loc_B40B14: LitStr ",'"
  loc_B40B17: ConcatStr
  loc_B40B18: FStStrNoPop var_AC
  loc_B40B1B: ILdRf var_90
  loc_B40B1E: ConcatStr
  loc_B40B1F: FStStrNoPop var_B0
  loc_B40B22: LitStr "',"
  loc_B40B25: ConcatStr
  loc_B40B26: FStStrNoPop var_B4
  loc_B40B29: FLdUI1
  loc_B40B2D: CStrI2
  loc_B40B2F: FStStrNoPop var_B8
  loc_B40B32: ConcatStr
  loc_B40B33: FStStrNoPop var_BC
  loc_B40B36: LitStr ",'"
  loc_B40B39: ConcatStr
  loc_B40B3A: FStStrNoPop var_C0
  loc_B40B3D: ILdRf var_94
  loc_B40B40: ConcatStr
  loc_B40B41: FStStrNoPop var_C4
  loc_B40B44: LitStr "',"
  loc_B40B47: ConcatStr
  loc_B40B48: CVarStr var_16C
  loc_B40B4B: LitVarStr var_13C, "Null"
  loc_B40B50: FStVarCopyObj var_14C
  loc_B40B53: FLdRfVar var_14C
  loc_B40B56: LitStr "'"
  loc_B40B59: FLdZeroAd var_488
  loc_B40B5C: FStStrNoPop var_108
  loc_B40B5F: ConcatStr
  loc_B40B60: FStStrNoPop var_10C
  loc_B40B63: LitStr "'"
  loc_B40B66: ConcatStr
  loc_B40B67: CVarStr var_12C
  loc_B40B6A: FLdI2 var_482
  loc_B40B6D: CVarBoolI2 var_11C
  loc_B40B71: FLdRfVar var_15C
  loc_B40B74: ImpAdCallFPR4  = IIf(, , )
  loc_B40B79: FLdRfVar var_15C
  loc_B40B7C: ConcatVar var_17C
  loc_B40B80: LitVarStr var_18C, ",'"
  loc_B40B85: ConcatVar var_19C
  loc_B40B89: ILdRf var_9C
  loc_B40B8C: CVarStr var_1AC
  loc_B40B8F: ConcatVar var_1BC
  loc_B40B93: LitVarStr var_1CC, "',"
  loc_B40B98: ConcatVar var_1DC
  loc_B40B9C: FLdUI1
  loc_B40BA0: CVarUI1
  loc_B40BA4: ConcatVar var_1FC
  loc_B40BA8: LitVarStr var_20C, ","
  loc_B40BAD: ConcatVar var_21C
  loc_B40BB1: FLdUI1
  loc_B40BB5: CVarUI1
  loc_B40BB9: ConcatVar var_23C
  loc_B40BBD: LitVarStr var_24C, ","
  loc_B40BC2: ConcatVar var_25C
  loc_B40BC6: FLdI2 NumeEtga
  loc_B40BC9: CVarI2 var_26C
  loc_B40BCC: ConcatVar var_27C
  loc_B40BD0: LitVarStr var_28C, ","
  loc_B40BD5: ConcatVar var_29C
  loc_B40BD9: ILdRf RegaDeva
  loc_B40BDC: CVarI4
  loc_B40BE0: ConcatVar var_2BC
  loc_B40BE4: LitVarStr var_2CC, ",'"
  loc_B40BE9: ConcatVar var_2DC
  loc_B40BED: ImpAdLdI4 MemVar_D9302C
  loc_B40BF0: CVarStr var_2EC
  loc_B40BF3: ConcatVar var_2FC
  loc_B40BF7: LitVarStr var_30C, "');"
  loc_B40BFC: ConcatVar var_31C
  loc_B40C00: LitVarStr var_32C, " INSERT INTO relacion (CucuPers,CodiOfic,CuenCtct,NumeRela,TipoRela,FealRela,PorcRela,CodiUsua) VALUES ('"
  loc_B40C05: ConcatVar var_33C
  loc_B40C09: ILdRf var_8C
  loc_B40C0C: CVarStr var_34C
  loc_B40C0F: ConcatVar var_35C
  loc_B40C13: LitVarStr var_36C, "',3,'"
  loc_B40C18: ConcatVar var_37C
  loc_B40C1C: ILdRf var_88
  loc_B40C1F: CVarStr var_38C
  loc_B40C22: ConcatVar var_39C
  loc_B40C26: LitVarStr var_3AC, "',1,'Titular','"
  loc_B40C2B: ConcatVar var_3BC
  loc_B40C2F: LitI4 1
  loc_B40C34: LitI4 1
  loc_B40C39: LitVarStr var_3EC, "yyyy-mm-dd"
  loc_B40C3E: FStVarCopyObj var_3FC
  loc_B40C41: FLdRfVar var_3FC
  loc_B40C44: FLdFPR8 var_490
  loc_B40C47: CVarDate var_3DC
  loc_B40C4B: ImpAdCallI2 Format$(, )
  loc_B40C50: CVarStr var_40C
  loc_B40C53: ConcatVar var_41C
  loc_B40C57: LitVarStr var_42C, "',100,'"
  loc_B40C5C: ConcatVar var_43C
  loc_B40C60: ImpAdLdI4 MemVar_D9302C
  loc_B40C63: CVarStr var_44C
  loc_B40C66: ConcatVar var_45C
  loc_B40C6A: LitVarStr var_46C, "');"
  loc_B40C6F: ConcatVar var_47C
  loc_B40C73: CStrVarVal var_480
  loc_B40C77: Call Proc_332_36_A4EDEC()
  loc_B40C7C: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_108 = "": var_10C = "": var_480 = ""
  loc_B40C9B: FFreeVar var_45C = "": var_47C = "": var_104 = "": var_11C = "": var_12C = "": var_14C = "": var_16C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2BC = "": var_2DC = "": var_2FC = "": var_31C = "": var_33C = "": var_35C = "": var_37C = "": var_39C = "": var_3DC = "": var_3FC = "": var_3BC = "": var_40C = "": var_41C = ""
  loc_B40CDE: OnErrorGoto loc_B40CF8
  loc_B40CE1: LitStr "COMMIT;"
  loc_B40CE4: Call Proc_332_36_A4EDEC()
  loc_B40CE9: FLdI2 HaceRequery
  loc_B40CEC: BranchF loc_B40CF7
  loc_B40CEF: ILdRf var_88
  loc_B40CF2: Call Encontrar(from_stack_1v)
  loc_B40CF7: ExitProcHresult
  loc_B40CF8: LitStr "ROLLBACK;"
  loc_B40CFB: Call Proc_332_36_A4EDEC()
  loc_B40D00: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B40D03: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B40D08: ExitProcHresult
  loc_B40D09: DOC
End Sub

Public Sub Modificar(CodiDeva, TipoDeva, EstaDeva, ObseDeva, VencDeva, LocaDeva, CodiEtga, CateEtga, NumeEtga, RegaDeva, HaceRequery) 'B10AD4
  'Data Table: 40D4C4
  loc_B1090C: ILdRf CodiDeva
  loc_B1090F: FStStrCopy var_88
  loc_B10912: ILdRf TipoDeva
  loc_B10915: FStStrCopy var_8C
  loc_B10918: ILdRf ObseDeva
  loc_B1091B: FStStrCopy var_90
  loc_B1091E: ILdRf VencDeva
  loc_B10921: FStStrCopy var_94
  loc_B10924: ILdRf LocaDeva
  loc_B10927: FStStrCopy var_98
  loc_B1092A: FLdRfVar var_94
  loc_B1092D: CVarRef
  loc_B10932: ImpAdCallI2 IsDate()
  loc_B10937: FStI2 var_34E
  loc_B1093A: LitI4 1
  loc_B1093F: LitI4 1
  loc_B10944: LitVarStr var_E0, "yyyy-mm-dd"
  loc_B10949: FStVarCopyObj var_F0
  loc_B1094C: FLdRfVar var_F0
  loc_B1094F: FLdRfVar var_94
  loc_B10952: CVarRef
  loc_B10957: ImpAdCallI2 Format$(, )
  loc_B1095C: FStStr var_354
  loc_B1095F: LitStr "START TRANSACTION; UPDATE deudvari SET TipoDeva = '"
  loc_B10962: ILdRf var_8C
  loc_B10965: ConcatStr
  loc_B10966: FStStrNoPop var_9C
  loc_B10969: LitStr "', EstaDeva = "
  loc_B1096C: ConcatStr
  loc_B1096D: FStStrNoPop var_A0
  loc_B10970: FLdUI1
  loc_B10974: CStrI2
  loc_B10976: FStStrNoPop var_A4
  loc_B10979: ConcatStr
  loc_B1097A: FStStrNoPop var_A8
  loc_B1097D: LitStr ", ObseDeva = '"
  loc_B10980: ConcatStr
  loc_B10981: FStStrNoPop var_AC
  loc_B10984: ILdRf var_90
  loc_B10987: ConcatStr
  loc_B10988: FStStrNoPop var_B0
  loc_B1098B: LitStr "', VencDeva = "
  loc_B1098E: ConcatStr
  loc_B1098F: CVarStr var_158
  loc_B10992: LitVarStr var_128, "Null"
  loc_B10997: FStVarCopyObj var_138
  loc_B1099A: FLdRfVar var_138
  loc_B1099D: LitStr "'"
  loc_B109A0: FLdZeroAd var_354
  loc_B109A3: FStStrNoPop var_F4
  loc_B109A6: ConcatStr
  loc_B109A7: FStStrNoPop var_F8
  loc_B109AA: LitStr "'"
  loc_B109AD: ConcatStr
  loc_B109AE: CVarStr var_118
  loc_B109B1: FLdI2 var_34E
  loc_B109B4: CVarBoolI2 var_108
  loc_B109B8: FLdRfVar var_148
  loc_B109BB: ImpAdCallFPR4  = IIf(, , )
  loc_B109C0: FLdRfVar var_148
  loc_B109C3: ConcatVar var_168
  loc_B109C7: LitVarStr var_178, ", LocaDeva = '"
  loc_B109CC: ConcatVar var_188
  loc_B109D0: ILdRf var_98
  loc_B109D3: CVarStr var_198
  loc_B109D6: ConcatVar var_1A8
  loc_B109DA: LitVarStr var_1B8, "', CodiEtga = "
  loc_B109DF: ConcatVar var_1C8
  loc_B109E3: FLdUI1
  loc_B109E7: CVarUI1
  loc_B109EB: ConcatVar var_1E8
  loc_B109EF: LitVarStr var_1F8, ", CateEtga = "
  loc_B109F4: ConcatVar var_208
  loc_B109F8: FLdUI1
  loc_B109FC: CVarUI1
  loc_B10A00: ConcatVar var_228
  loc_B10A04: LitVarStr var_238, ", NumeEtga = "
  loc_B10A09: ConcatVar var_248
  loc_B10A0D: FLdI2 NumeEtga
  loc_B10A10: CVarI2 var_258
  loc_B10A13: ConcatVar var_268
  loc_B10A17: LitVarStr var_278, ",  RegaDeva = "
  loc_B10A1C: ConcatVar var_288
  loc_B10A20: ILdRf RegaDeva
  loc_B10A23: CVarI4
  loc_B10A27: ConcatVar var_2A8
  loc_B10A2B: LitVarStr var_2B8, ", ModiUsua = '"
  loc_B10A30: ConcatVar var_2C8
  loc_B10A34: ImpAdLdI4 MemVar_D9302C
  loc_B10A37: CVarStr var_2D8
  loc_B10A3A: ConcatVar var_2E8
  loc_B10A3E: LitVarStr var_2F8, "', ModiFeho = now() WHERE CodiDeva = '"
  loc_B10A43: ConcatVar var_308
  loc_B10A47: ILdRf var_88
  loc_B10A4A: CVarStr var_318
  loc_B10A4D: ConcatVar var_328
  loc_B10A51: LitVarStr var_338, "';"
  loc_B10A56: ConcatVar var_348
  loc_B10A5A: CStrVarVal var_34C
  loc_B10A5E: Call Proc_332_36_A4EDEC()
  loc_B10A63: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_F4 = "": var_F8 = "": var_34C = ""
  loc_B10A7A: FFreeVar var_F0 = "": var_108 = "": var_118 = "": var_138 = "": var_158 = "": var_148 = "": var_168 = "": var_188 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = "": var_268 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_328 = ""
  loc_B10AA9: OnErrorGoto loc_B10AC3
  loc_B10AAC: LitStr "COMMIT;"
  loc_B10AAF: Call Proc_332_36_A4EDEC()
  loc_B10AB4: FLdI2 HaceRequery
  loc_B10AB7: BranchF loc_B10AC2
  loc_B10ABA: ILdRf var_88
  loc_B10ABD: Call Encontrar(from_stack_1v)
  loc_B10AC2: ExitProcHresult
  loc_B10AC3: LitStr "ROLLBACK;"
  loc_B10AC6: Call Proc_332_36_A4EDEC()
  loc_B10ACB: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_B10ACE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B10AD3: ExitProcHresult
End Sub

Public Sub AddnewTransaction(sEjecutar) '9FCAB4
  'Data Table: 40D4C4
  loc_9FCA88: ILdRf sEjecutar
  loc_9FCA8B: FStStrCopy var_88
  loc_9FCA8E: OnErrorGoto loc_9FCAA2
  loc_9FCA91: ILdRf var_88
  loc_9FCA94: Call Proc_332_36_A4EDEC()
  loc_9FCA99: LitStr "COMMIT;"
  loc_9FCA9C: Call Proc_332_36_A4EDEC()
  loc_9FCAA1: ExitProcHresult
  loc_9FCAA2: LitStr "ROLLBACK;"
  loc_9FCAA5: Call Proc_332_36_A4EDEC()
  loc_9FCAAA: LitStr "La operación no se ejecuto. Consulte con el Administrador..."
  loc_9FCAAD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_9FCAB2: ExitProcHresult
End Sub

Public Sub Requery() '9E7764
  'Data Table: 40D4C4
  loc_9E7740: LitI4 -1
  loc_9E7745: FLdPr Me
  loc_9E7748: MemLdPr RsFrm
  loc_9E774B: Me.Requery from_stack_1
  loc_9E7750: LitVarStr var_94, "Primary"
  loc_9E7755: PopAdLdVar
  loc_9E7756: FLdPr Me
  loc_9E7759: LateIdCall
  loc_9E7761: ExitProcHresult
End Sub

Public Sub Encontrar(CodiDeva) 'A67950
  'Data Table: 40D4C4
  loc_A678E8: ILdRf CodiDeva
  loc_A678EB: FStStrCopy var_88
  loc_A678EE: Call Requery()
  loc_A678F3: LitStr "CodiDeva = '"
  loc_A678F6: ILdRf var_88
  loc_A678F9: ConcatStr
  loc_A678FA: FStStrNoPop var_8C
  loc_A678FD: LitStr "'"
  loc_A67900: ConcatStr
  loc_A67901: PopTmpLdAdStr
  loc_A67905: Call Find(from_stack_1v)
  loc_A6790A: FFreeStr var_8C = ""
  loc_A67911: FLdRfVar var_94
  loc_A67914: FLdPr Me
  loc_A67917: MemLdPr RsFrm
  loc_A6791A:  = Me.RecordCount
  loc_A6791F: ILdRf var_94
  loc_A67922: LitI4 0
  loc_A67927: GtI4
  loc_A67928: FLdRfVar var_98
  loc_A6792B: FLdPr Me
  loc_A6792E: MemLdPr RsFrm
  loc_A67931:  = Me.AbsolutePosition
  loc_A67936: ILdRf var_98
  loc_A67939: LitI4 -3
  loc_A6793E: EqI4
  loc_A6793F: AndI4
  loc_A67940: BranchF loc_A6794E
  loc_A67943: FLdPr Me
  loc_A67946: MemLdPr RsFrm
  loc_A67949: Me.MoveLast
  loc_A6794E: ExitProcHresult
End Sub

Public Function ValidaClave(CodiDeva) 'A4ECCC
  'Data Table: 40D4C4
  loc_A4EC80: ILdRf CodiDeva
  loc_A4EC83: FStStrCopy var_8C
  loc_A4EC86: ZeroRetVal
  loc_A4EC88: LitStr "SELECT CodiDeva FROM deudvari WHERE CodiDeva = '"
  loc_A4EC8B: ILdRf var_8C
  loc_A4EC8E: ConcatStr
  loc_A4EC8F: FStStrNoPop var_90
  loc_A4EC92: LitStr "'"
  loc_A4EC95: ConcatStr
  loc_A4EC96: FStStrNoPop ValidaClave
  loc_A4EC99: Call Proc_332_36_A4EDEC()
  loc_A4EC9E: FFreeStr var_90 = ""
  loc_A4ECA5: FLdRfVar var_98
  loc_A4ECA8: FLdPr Me
  loc_A4ECAB: MemLdPr RsCls
  loc_A4ECAE:  = Me.RecordCount
  loc_A4ECB3: ILdRf var_98
  loc_A4ECB6: LitI4 0
  loc_A4ECBB: GtI4
  loc_A4ECBC: BranchF loc_A4ECC5
  loc_A4ECBF: LitStr "EL Deudor Vario YA EXISTE. Reintente..."
  loc_A4ECC2: FStStrCopy var_88
  loc_A4ECC5: ExitProcCbHresult
End Function

Public Sub RedefineRS(sSelect) 'A5DE7C
  'Data Table: 40D4C4
  loc_A5DE18: ILdRf sSelect
  loc_A5DE1B: FStStrCopy var_88
  loc_A5DE1E: LitNothing
  loc_A5DE20: CastAd
  loc_A5DE23: FStAdFuncNoPop
  loc_A5DE26: FLdPr Me
  loc_A5DE29: MemStAd
  loc_A5DE2D: FFree1Ad var_8C
  loc_A5DE30: New Recordset
  loc_A5DE34: FStAdFuncNoPop
  loc_A5DE37: FLdPr Me
  loc_A5DE3A: MemStAd
  loc_A5DE3E: FFree1Ad var_8C
  loc_A5DE41: LitI4 -1
  loc_A5DE46: LitI4 3
  loc_A5DE4B: LitI4 3
  loc_A5DE50: ImpAdLdI4 MemVar_D9301C
  loc_A5DE53: CVarAd
  loc_A5DE57: PopAdLdVar
  loc_A5DE58: ILdRf var_88
  loc_A5DE5B: CVarStr var_9C
  loc_A5DE5E: PopAdLdVar
  loc_A5DE5F: FLdPr Me
  loc_A5DE62: MemLdPr RsFrm
  loc_A5DE65: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5DE6A: LitVarStr var_9C, "Primary"
  loc_A5DE6F: PopAdLdVar
  loc_A5DE70: FLdPr Me
  loc_A5DE73: LateIdCall
  loc_A5DE7B: ExitProcHresult
End Sub

Public Property Get DataSource() '9F2EF4
  'Data Table: 40D4C4
  loc_9F2ED0: ZeroRetVal
  loc_9F2ED2: FLdRfVar var_8C
  loc_9F2ED5: FLdPr Me
  loc_9F2ED8: MemLdPr RsFrm
  loc_9F2EDB:  = Me.DataSource
  loc_9F2EE0: ILdRf var_8C
  loc_9F2EE3: CastAd
  loc_9F2EE6: FStAdFunc var_88
  loc_9F2EE9: FFree1Ad var_8C
  loc_9F2EEC: ExitProcCbHresult
  loc_9F2EF2: LargeBos
End Sub

Public Property Get CodiDeva() 'A3A774
  'Data Table: 40D4C4
  loc_A3A730: ZeroRetVal
  loc_A3A732: FLdRfVar var_B0
  loc_A3A735: FLdRfVar var_A0
  loc_A3A738: LitVarStr var_9C, "CodiDeva"
  loc_A3A73D: PopAdLdVar
  loc_A3A73E: FLdRfVar var_8C
  loc_A3A741: FLdPr Me
  loc_A3A744: MemLdPr RsFrm
  loc_A3A747:  = Me.Fields
  loc_A3A74C: FLdPr var_8C
  loc_A3A74F: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A754: FLdPr var_A0
  loc_A3A757:  = Me.Value
  loc_A3A75C: FLdRfVar var_B0
  loc_A3A75F: CStrVarTmp
  loc_A3A760: FStStr var_88
  loc_A3A763: FFreeAd var_8C = ""
  loc_A3A76A: FFree1Var var_B0 = ""
  loc_A3A76D: ExitProcCbHresult
End Sub

Public Property Get CucuPers() 'A3A6F0
  'Data Table: 40D4C4
  loc_A3A6AC: ZeroRetVal
  loc_A3A6AE: FLdRfVar var_B0
  loc_A3A6B1: FLdRfVar var_A0
  loc_A3A6B4: LitVarStr var_9C, "CucuPers"
  loc_A3A6B9: PopAdLdVar
  loc_A3A6BA: FLdRfVar var_8C
  loc_A3A6BD: FLdPr Me
  loc_A3A6C0: MemLdPr RsFrm
  loc_A3A6C3:  = Me.Fields
  loc_A3A6C8: FLdPr var_8C
  loc_A3A6CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A6D0: FLdPr var_A0
  loc_A3A6D3:  = Me.Value
  loc_A3A6D8: FLdRfVar var_B0
  loc_A3A6DB: CStrVarTmp
  loc_A3A6DC: FStStr var_88
  loc_A3A6DF: FFreeAd var_8C = ""
  loc_A3A6E6: FFree1Var var_B0 = ""
  loc_A3A6E9: ExitProcCbHresult
End Sub

Public Property Get EstaDeva() 'A3A5E8
  'Data Table: 40D4C4
  loc_A3A5A4: ZeroRetVal
  loc_A3A5A6: FLdRfVar var_B0
  loc_A3A5A9: FLdRfVar var_A0
  loc_A3A5AC: LitVarStr var_9C, "EstaDeva"
  loc_A3A5B1: PopAdLdVar
  loc_A3A5B2: FLdRfVar var_8C
  loc_A3A5B5: FLdPr Me
  loc_A3A5B8: MemLdPr RsFrm
  loc_A3A5BB:  = Me.Fields
  loc_A3A5C0: FLdPr var_8C
  loc_A3A5C3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A5C8: FLdPr var_A0
  loc_A3A5CB:  = Me.Value
  loc_A3A5D0: FLdRfVar var_B0
  loc_A3A5D3: CStrVarTmp
  loc_A3A5D4: FStStr var_88
  loc_A3A5D7: FFreeAd var_8C = ""
  loc_A3A5DE: FFree1Var var_B0 = ""
  loc_A3A5E1: ExitProcCbHresult
End Sub

Public Property Get DetaPers() 'A147E8
  'Data Table: 40D4C4
  loc_A147B0: ZeroRetValVar
  loc_A147B2: FLdRfVar var_AC
  loc_A147B5: LitVarStr var_A8, "DetaPers"
  loc_A147BA: PopAdLdVar
  loc_A147BB: FLdRfVar var_98
  loc_A147BE: FLdPr Me
  loc_A147C1: MemLdPr RsFrm
  loc_A147C4:  = Me.Fields
  loc_A147C9: FLdPr var_98
  loc_A147CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A147D1: FLdZeroAd var_AC
  loc_A147D4: CVarAd
  loc_A147D8: FStVar DetaPers
  loc_A147DC: FFree1Ad var_98
  loc_A147DF: ExitProcCbHresult
  loc_A147E7: PopAdLdVar
End Sub

Public Property Get NudoPers() 'A14680
  'Data Table: 40D4C4
  loc_A14648: ZeroRetValVar
  loc_A1464A: FLdRfVar var_AC
  loc_A1464D: LitVarStr var_A8, "NudoPers"
  loc_A14652: PopAdLdVar
  loc_A14653: FLdRfVar var_98
  loc_A14656: FLdPr Me
  loc_A14659: MemLdPr RsFrm
  loc_A1465C:  = Me.Fields
  loc_A14661: FLdPr var_98
  loc_A14664: from_stack_2 = Me.Item(from_stack_1)
  loc_A14669: FLdZeroAd var_AC
  loc_A1466C: CVarAd
  loc_A14670: FStVar NudoPers
  loc_A14674: FFree1Ad var_98
  loc_A14677: ExitProcCbHresult
  loc_A1467D: CExtInstUnk
End Sub

Public Property Get UbrePers() 'A17650
  'Data Table: 40D4C4
  loc_A17618: ZeroRetValVar
  loc_A1761A: FLdRfVar var_AC
  loc_A1761D: LitVarStr var_A8, "UbrePers"
  loc_A17622: PopAdLdVar
  loc_A17623: FLdRfVar var_98
  loc_A17626: FLdPr Me
  loc_A17629: MemLdPr RsFrm
  loc_A1762C:  = Me.Fields
  loc_A17631: FLdPr var_98
  loc_A17634: from_stack_2 = Me.Item(from_stack_1)
  loc_A17639: FLdZeroAd var_AC
  loc_A1763C: CVarAd
  loc_A17640: FStVar UbrePers
  loc_A17644: FFree1Ad var_98
  loc_A17647: ExitProcCbHresult
  loc_A1764D: ExitProcCy
  loc_A1764E: FLdPr UbrePersC08
End Sub

Public Property Get DelrPers() 'A138E8
  'Data Table: 40D4C4
  loc_A138B0: ZeroRetValVar
  loc_A138B2: FLdRfVar var_AC
  loc_A138B5: LitVarStr var_A8, "DelrPers"
  loc_A138BA: PopAdLdVar
  loc_A138BB: FLdRfVar var_98
  loc_A138BE: FLdPr Me
  loc_A138C1: MemLdPr RsFrm
  loc_A138C4:  = Me.Fields
  loc_A138C9: FLdPr var_98
  loc_A138CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A138D1: FLdZeroAd var_AC
  loc_A138D4: CVarAd
  loc_A138D8: FStVar DelrPers
  loc_A138DC: FFree1Ad var_98
  loc_A138DF: ExitProcCbHresult
  loc_A138E5: FFreeAd var_FFFFFFB4 = ""
End Sub

Private Function Proc_332_35_9F0CD0() '9F0CD0
  'Data Table: 40D4C4
  loc_9F0CAC: LitStr "Primary"
  loc_9F0CAF: FLdPr Me
  loc_9F0CB2: LateIdLdVar var_94 DispID_4 0
  loc_9F0CB9: CastAdVar Me
  loc_9F0CBD: FStAdFunc var_98
  loc_9F0CC0: FLdPr var_98
  loc_9F0CC8: FFree1Ad var_98
  loc_9F0CCB: FFree1Var var_94 = ""
  loc_9F0CCE: ExitProcHresult
  loc_9F0CCF: LtCyR8
End Function

Private Function Proc_332_36_A4EDEC(arg_C) 'A4EDEC
  'Data Table: 40D4C4
  loc_A4ED98: ILdRf arg_C
  loc_A4ED9B: FStStrCopy var_88
  loc_A4ED9E: LitNothing
  loc_A4EDA0: CastAd
  loc_A4EDA3: FStAdFuncNoPop
  loc_A4EDA6: FLdPr Me
  loc_A4EDA9: MemStAd
  loc_A4EDAD: FFree1Ad var_8C
  loc_A4EDB0: New Recordset
  loc_A4EDB4: FStAdFuncNoPop
  loc_A4EDB7: FLdPr Me
  loc_A4EDBA: MemStAd
  loc_A4EDBE: FFree1Ad var_8C
  loc_A4EDC1: LitI4 -1
  loc_A4EDC6: LitI4 3
  loc_A4EDCB: LitI4 3
  loc_A4EDD0: ImpAdLdI4 MemVar_D9301C
  loc_A4EDD3: CVarAd
  loc_A4EDD7: PopAdLdVar
  loc_A4EDD8: ILdRf var_88
  loc_A4EDDB: CVarStr var_9C
  loc_A4EDDE: PopAdLdVar
  loc_A4EDDF: FLdPr Me
  loc_A4EDE2: MemLdPr RsCls
  loc_A4EDE5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4EDEA: ExitProcHresult
  loc_A4EDEB: AddCy
End Function

Private Function Proc_332_37_9E064C(arg_C) '9E064C
  'Data Table: 40D4C4
  loc_9E0630: ILdI4 arg_C
  loc_9E0633: FStStrCopy var_88
  loc_9E0636: ILdRf var_88
  loc_9E0639: LitStr "Primary"
  loc_9E063C: EqStr
  loc_9E063E: BranchF loc_9E064B
  loc_9E0641: FLdPr Me
  loc_9E0644: MemLdStr RsFrm
  loc_9E0647: IStAd
  loc_9E064B: ExitProcHresult
End Function
