VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsdetafapa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '429C34
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '429C43
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '429C52
  RsFrm = Value
End Sub

Public Sub Move(iValor) '949FB8
  'Data Table: 4298A8
  loc_949FA4: LitVar_Missing var_94
  loc_949FA7: PopAdLdVar
  loc_949FA8: ILdI2 iValor
  loc_949FAB: CI4UI1
  loc_949FAC: FLdPr Me
  loc_949FAF: MemLdPr RsFrm
  loc_949FB2: Me.Move from_stack_1, from_stack_2
  loc_949FB7: ExitProcHresult
End Sub

Public Sub MoveFirst(arg_30) '96F1AC
  'Data Table: 4298A8
  loc_96F184: FLdRfVar var_88
  loc_96F187: FLdPr Me
  loc_96F18A: MemLdPr RsFrm
  loc_96F18D:  = Me.RecordCount
  loc_96F192: ILdRf var_88
  loc_96F195: LitI4 0
  loc_96F19A: GtI4
  loc_96F19B: BranchF loc_96F1A9
  loc_96F19E: FLdPr Me
  loc_96F1A1: MemLdPr RsFrm
  loc_96F1A4: Me.MoveFirst
  loc_96F1A9: ExitProcHresult
  loc_96F1AA: IStDarg arg_30FF
End Sub

Public Sub MoveLast() '96F0FC
  'Data Table: 4298A8
  loc_96F0D4: FLdRfVar var_88
  loc_96F0D7: FLdPr Me
  loc_96F0DA: MemLdPr RsFrm
  loc_96F0DD:  = Me.RecordCount
  loc_96F0E2: ILdRf var_88
  loc_96F0E5: LitI4 0
  loc_96F0EA: GtI4
  loc_96F0EB: BranchF loc_96F0F9
  loc_96F0EE: FLdPr Me
  loc_96F0F1: MemLdPr RsFrm
  loc_96F0F4: Me.MoveLast
  loc_96F0F9: ExitProcHresult
End Sub

Public Sub MoveNext() '99F188
  'Data Table: 4298A8
  loc_99F110: FLdRfVar var_86
  loc_99F113: FLdPr Me
  loc_99F116: MemLdPr RsFrm
  loc_99F119:  = Me.EOF
  loc_99F11E: FLdI2 var_86
  loc_99F121: NotI4
  loc_99F122: FLdRfVar var_8C
  loc_99F125: FLdPr Me
  loc_99F128: MemLdPr RsFrm
  loc_99F12B:  = Me.RecordCount
  loc_99F130: ILdRf var_8C
  loc_99F133: LitI4 0
  loc_99F138: GtI4
  loc_99F139: AndI4
  loc_99F13A: BranchF loc_99F148
  loc_99F13D: FLdPr Me
  loc_99F140: MemLdPr RsFrm
  loc_99F143: Me.MoveNext
  loc_99F148: FLdRfVar var_86
  loc_99F14B: FLdPr Me
  loc_99F14E: MemLdPr RsFrm
  loc_99F151:  = Me.EOF
  loc_99F156: FLdI2 var_86
  loc_99F159: FLdRfVar var_8C
  loc_99F15C: FLdPr Me
  loc_99F15F: MemLdPr RsFrm
  loc_99F162:  = Me.RecordCount
  loc_99F167: ILdRf var_8C
  loc_99F16A: LitI4 0
  loc_99F16F: GtI4
  loc_99F170: AndI4
  loc_99F171: BranchF loc_99F184
  loc_99F174: ImpAdCallFPR4 Beep()
  loc_99F179: FLdPr Me
  loc_99F17C: MemLdPr RsFrm
  loc_99F17F: Me.MoveLast
  loc_99F184: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941030
  'Data Table: 4298A8
  loc_941024: FLdPr Me
  loc_941027: MemLdPr RsFrm
  loc_94102A: Me.MoveNext
  loc_94102F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99F230
  'Data Table: 4298A8
  loc_99F1B8: FLdRfVar var_86
  loc_99F1BB: FLdPr Me
  loc_99F1BE: MemLdPr RsFrm
  loc_99F1C1:  = Me.BOF
  loc_99F1C6: FLdI2 var_86
  loc_99F1C9: NotI4
  loc_99F1CA: FLdRfVar var_8C
  loc_99F1CD: FLdPr Me
  loc_99F1D0: MemLdPr RsFrm
  loc_99F1D3:  = Me.RecordCount
  loc_99F1D8: ILdRf var_8C
  loc_99F1DB: LitI4 0
  loc_99F1E0: GtI4
  loc_99F1E1: AndI4
  loc_99F1E2: BranchF loc_99F1F0
  loc_99F1E5: FLdPr Me
  loc_99F1E8: MemLdPr RsFrm
  loc_99F1EB: Me.MovePrevious
  loc_99F1F0: FLdRfVar var_86
  loc_99F1F3: FLdPr Me
  loc_99F1F6: MemLdPr RsFrm
  loc_99F1F9:  = Me.BOF
  loc_99F1FE: FLdI2 var_86
  loc_99F201: FLdRfVar var_8C
  loc_99F204: FLdPr Me
  loc_99F207: MemLdPr RsFrm
  loc_99F20A:  = Me.RecordCount
  loc_99F20F: ILdRf var_8C
  loc_99F212: LitI4 0
  loc_99F217: GtI4
  loc_99F218: AndI4
  loc_99F219: BranchF loc_99F22C
  loc_99F21C: ImpAdCallFPR4 Beep()
  loc_99F221: FLdPr Me
  loc_99F224: MemLdPr RsFrm
  loc_99F227: Me.MoveFirst
  loc_99F22C: ExitProcHresult
  loc_99F22D: CRec2Ansi Me00
End Sub

Public Property Get EOF() '95D3F4
  'Data Table: 4298A8
  loc_95D3D8: FLdRfVar var_88
  loc_95D3DB: FLdPr Me
  loc_95D3DE: MemLdPr RsFrm
  loc_95D3E1:  = Me.EOF
  loc_95D3E6: FLdI2 var_88
  loc_95D3E9: FStI2 var_86
  loc_95D3EC: ExitProcCbHresult
End Sub

Public Property Get BOF() '95D22C
  'Data Table: 4298A8
  loc_95D210: FLdRfVar var_88
  loc_95D213: FLdPr Me
  loc_95D216: MemLdPr RsFrm
  loc_95D219:  = Me.BOF
  loc_95D21E: FLdI2 var_88
  loc_95D221: FStI2 var_86
  loc_95D224: ExitProcCbHresult
  loc_95D22A: MulCy
End Sub

Public Sub Sort(sOrden) '947884
  'Data Table: 4298A8
  loc_947874: ILdI4 sOrden
  loc_947877: FLdPr Me
  loc_94787A: MemLdPr RsFrm
  loc_94787D: Me.Sort = from_stack_1
  loc_947882: ExitProcHresult
  loc_947883: ConcatStr
End Sub

Public Sub Find(sFind) '967670
  'Data Table: 4298A8
  loc_967650: LitVar_Missing var_94
  loc_967653: PopAdLdVar
  loc_967654: LitI4 1
  loc_967659: LitI4 0
  loc_96765E: ILdI4 sFind
  loc_967661: FLdPr Me
  loc_967664: MemLdPr RsFrm
  loc_967667: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96766C: ExitProcHresult
  loc_96766D: CRec2Ansi Me00
End Sub

Public Property Get AbsolutePosition(arg_30) '956110
  'Data Table: 4298A8
  loc_9560F4: FLdRfVar var_8C
  loc_9560F7: FLdPr Me
  loc_9560FA: MemLdPr RsFrm
  loc_9560FD:  = Me.AbsolutePosition
  loc_956102: ILdRf var_8C
  loc_956105: FStR4 var_88
  loc_956108: ExitProcCbHresult
  loc_95610E: FStStrNoPop arg_3000
End Sub

Public Property Get RecordCount(arg_30) '955F48
  'Data Table: 4298A8
  loc_955F2C: FLdRfVar var_8C
  loc_955F2F: FLdPr Me
  loc_955F32: MemLdPr RsFrm
  loc_955F35:  = Me.RecordCount
  loc_955F3A: ILdRf var_8C
  loc_955F3D: FStR4 var_88
  loc_955F40: ExitProcCbHresult
  loc_955F46: ILdI4 arg_30FD
End Sub

Public Sub Requery(arg_30) '96BA98
  'Data Table: 4298A8
  loc_96BA74: LitI4 -1
  loc_96BA79: FLdPr Me
  loc_96BA7C: MemLdPr RsFrm
  loc_96BA7F: Me.Requery from_stack_1
  loc_96BA84: LitVarStr var_94, "Primary"
  loc_96BA89: PopAdLdVar
  loc_96BA8A: FLdPr Me
  loc_96BA8D: LateIdCall
  loc_96BA95: ExitProcHresult
  loc_96BA96: FStVarCopyObj arg_30B8
End Sub

Public Sub RedefineRS(sSelect) '995EA0
  'Data Table: 4298A8
  loc_995E3C: ILdRf sSelect
  loc_995E3F: FStStrCopy var_88
  loc_995E42: LitNothing
  loc_995E44: CastAd
  loc_995E47: FStAdFuncNoPop
  loc_995E4A: FLdPr Me
  loc_995E4D: MemStAd
  loc_995E51: FFree1Ad var_8C
  loc_995E54: New Recordset
  loc_995E58: FStAdFuncNoPop
  loc_995E5B: FLdPr Me
  loc_995E5E: MemStAd
  loc_995E62: FFree1Ad var_8C
  loc_995E65: LitI4 -1
  loc_995E6A: LitI4 3
  loc_995E6F: LitI4 3
  loc_995E74: ImpAdLdI4 MemVar_C3D030
  loc_995E77: CVarAd
  loc_995E7B: PopAdLdVar
  loc_995E7C: ILdRf var_88
  loc_995E7F: CVarStr var_9C
  loc_995E82: PopAdLdVar
  loc_995E83: FLdPr Me
  loc_995E86: MemLdPr RsFrm
  loc_995E89: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_995E8E: LitVarStr var_9C, "Primary"
  loc_995E93: PopAdLdVar
  loc_995E94: FLdPr Me
  loc_995E97: LateIdCall
  loc_995E9F: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '9929E4
  'Data Table: 4298A8
  loc_992990: ILdRf sSelect
  loc_992993: FStStrCopy var_88
  loc_992996: LitNothing
  loc_992998: CastAd
  loc_99299B: FStAdFuncNoPop
  loc_99299E: FLdPr Me
  loc_9929A1: MemStAd
  loc_9929A5: FFree1Ad var_8C
  loc_9929A8: New Recordset
  loc_9929AC: FStAdFuncNoPop
  loc_9929AF: FLdPr Me
  loc_9929B2: MemStAd
  loc_9929B6: FFree1Ad var_8C
  loc_9929B9: LitI4 -1
  loc_9929BE: LitI4 3
  loc_9929C3: LitI4 3
  loc_9929C8: ImpAdLdI4 MemVar_C3D030
  loc_9929CB: CVarAd
  loc_9929CF: PopAdLdVar
  loc_9929D0: ILdRf var_88
  loc_9929D3: CVarStr var_9C
  loc_9929D6: PopAdLdVar
  loc_9929D7: FLdPr Me
  loc_9929DA: MemLdPr global_56
  loc_9929DD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9929E2: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) '993560
  'Data Table: 4298A8
  loc_99350C: ILdRf sSelect
  loc_99350F: FStStrCopy var_88
  loc_993512: LitNothing
  loc_993514: CastAd
  loc_993517: FStAdFuncNoPop
  loc_99351A: FLdPr Me
  loc_99351D: MemStAd
  loc_993521: FFree1Ad var_8C
  loc_993524: New Recordset
  loc_993528: FStAdFuncNoPop
  loc_99352B: FLdPr Me
  loc_99352E: MemStAd
  loc_993532: FFree1Ad var_8C
  loc_993535: LitI4 -1
  loc_99353A: LitI4 3
  loc_99353F: LitI4 3
  loc_993544: ImpAdLdI4 MemVar_C3D030
  loc_993547: CVarAd
  loc_99354B: PopAdLdVar
  loc_99354C: ILdRf var_88
  loc_99354F: CVarStr var_9C
  loc_993552: PopAdLdVar
  loc_993553: FLdPr Me
  loc_993556: MemLdPr global_60
  loc_993559: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_99355E: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) '992D2C
  'Data Table: 4298A8
  loc_992CD8: ILdRf sSelect
  loc_992CDB: FStStrCopy var_88
  loc_992CDE: LitNothing
  loc_992CE0: CastAd
  loc_992CE3: FStAdFuncNoPop
  loc_992CE6: FLdPr Me
  loc_992CE9: MemStAd
  loc_992CED: FFree1Ad var_8C
  loc_992CF0: New Recordset
  loc_992CF4: FStAdFuncNoPop
  loc_992CF7: FLdPr Me
  loc_992CFA: MemStAd
  loc_992CFE: FFree1Ad var_8C
  loc_992D01: LitI4 -1
  loc_992D06: LitI4 3
  loc_992D0B: LitI4 3
  loc_992D10: ImpAdLdI4 MemVar_C3D030
  loc_992D13: CVarAd
  loc_992D17: PopAdLdVar
  loc_992D18: ILdRf var_88
  loc_992D1B: CVarStr var_9C
  loc_992D1E: PopAdLdVar
  loc_992D1F: FLdPr Me
  loc_992D22: MemLdPr global_64
  loc_992D25: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_992D2A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) '993074
  'Data Table: 4298A8
  loc_993020: ILdRf sSelect
  loc_993023: FStStrCopy var_88
  loc_993026: LitNothing
  loc_993028: CastAd
  loc_99302B: FStAdFuncNoPop
  loc_99302E: FLdPr Me
  loc_993031: MemStAd
  loc_993035: FFree1Ad var_8C
  loc_993038: New Recordset
  loc_99303C: FStAdFuncNoPop
  loc_99303F: FLdPr Me
  loc_993042: MemStAd
  loc_993046: FFree1Ad var_8C
  loc_993049: LitI4 -1
  loc_99304E: LitI4 3
  loc_993053: LitI4 3
  loc_993058: ImpAdLdI4 MemVar_C3D030
  loc_99305B: CVarAd
  loc_99305F: PopAdLdVar
  loc_993060: ILdRf var_88
  loc_993063: CVarStr var_9C
  loc_993066: PopAdLdVar
  loc_993067: FLdPr Me
  loc_99306A: MemLdPr global_68
  loc_99306D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_993072: ExitProcHresult
End Sub

Public Property Get DataSource(arg_30) '971EA8
  'Data Table: 4298A8
  loc_971E84: ZeroRetVal
  loc_971E86: FLdRfVar var_8C
  loc_971E89: FLdPr Me
  loc_971E8C: MemLdPr RsFrm
  loc_971E8F:  = Me.DataSource
  loc_971E94: ILdRf var_8C
  loc_971E97: CastAd
  loc_971E9A: FStAdFunc var_88
  loc_971E9D: FFree1Ad var_8C
  loc_971EA0: ExitProcCbHresult
  loc_971EA6: FLdPr arg_30AC
End Sub

Public Property Get EditMode() '9557DC
  'Data Table: 4298A8
  loc_9557C0: FLdRfVar var_8C
  loc_9557C3: FLdPr Me
  loc_9557C6: MemLdPr RsFrm
  loc_9557C9:  = Me.EditMode
  loc_9557CE: ILdRf var_8C
  loc_9557D1: FStR4 var_88
  loc_9557D4: ExitProcCbHresult
  loc_9557DA: Ary1LdRf
End Sub

Public Property Get EstaDefa() '98FF78
  'Data Table: 4298A8
  loc_98FF34: ZeroRetVal
  loc_98FF36: FLdRfVar var_B0
  loc_98FF39: FLdRfVar var_A0
  loc_98FF3C: LitVarStr var_9C, "EstaDefa"
  loc_98FF41: PopAdLdVar
  loc_98FF42: FLdRfVar var_8C
  loc_98FF45: FLdPr Me
  loc_98FF48: MemLdPr RsFrm
  loc_98FF4B:  = Me.Fields
  loc_98FF50: FLdPr var_8C
  loc_98FF53: from_stack_2 = Me.Item(from_stack_1)
  loc_98FF58: FLdPr var_A0
  loc_98FF5B:  = Me.Value
  loc_98FF60: FLdRfVar var_B0
  loc_98FF63: CStrVarTmp
  loc_98FF64: FStStr var_88
  loc_98FF67: FFreeAd var_8C = ""
  loc_98FF6E: FFree1Var var_B0 = ""
  loc_98FF71: ExitProcCbHresult
  loc_98FF77: ConcatStr
End Sub

Public Property Let EstaDefa(vDato) '96BA40
  'Data Table: 4298A8
  loc_96BA20: ILdRf vDato
  loc_96BA23: FStStrCopy var_88
  loc_96BA26: ILdRf var_88
  loc_96BA29: CVarStr var_A8
  loc_96BA2C: PopAdLdVar
  loc_96BA2D: LitVarStr var_98, "EstaDefa"
  loc_96BA32: PopAdLdVar
  loc_96BA33: FLdPr Me
  loc_96BA36: MemLdPr RsFrm
  loc_96BA39: Me.Collect = from_stack_1
  loc_96BA3E: ExitProcHresult
End Sub

Public Property Get FeveDefa() '985AA4
  'Data Table: 4298A8
  loc_985A6C: ZeroRetValVar
  loc_985A6E: FLdRfVar var_AC
  loc_985A71: LitVarStr var_A8, "FeveDefa"
  loc_985A76: PopAdLdVar
  loc_985A77: FLdRfVar var_98
  loc_985A7A: FLdPr Me
  loc_985A7D: MemLdPr RsFrm
  loc_985A80:  = Me.Fields
  loc_985A85: FLdPr var_98
  loc_985A88: from_stack_2 = Me.Item(from_stack_1)
  loc_985A8D: FLdZeroAd var_AC
  loc_985A90: CVarAd
  loc_985A94: FStVar FeveDefa
  loc_985A98: FFree1Ad var_98
  loc_985A9B: ExitProcCbHresult
  loc_985AA1: CRec2Ansi Me00
End Sub

Public Property Let FeveDefa(vDato) '96748C
  'Data Table: 4298A8
  loc_967470: FDupVar
  loc_967476: FLdVar var_94
  loc_96747A: LitVarStr var_A4, "FeveDefa"
  loc_96747F: PopAdLdVar
  loc_967480: FLdPr Me
  loc_967483: MemLdPr RsFrm
  loc_967486: Me.Collect = from_stack_1
  loc_96748B: ExitProcHresult
End Sub

Public Property Get FepaDefa() '985A2C
  'Data Table: 4298A8
  loc_9859F4: ZeroRetValVar
  loc_9859F6: FLdRfVar var_AC
  loc_9859F9: LitVarStr var_A8, "FepaDefa"
  loc_9859FE: PopAdLdVar
  loc_9859FF: FLdRfVar var_98
  loc_985A02: FLdPr Me
  loc_985A05: MemLdPr RsFrm
  loc_985A08:  = Me.Fields
  loc_985A0D: FLdPr var_98
  loc_985A10: from_stack_2 = Me.Item(from_stack_1)
  loc_985A15: FLdZeroAd var_AC
  loc_985A18: CVarAd
  loc_985A1C: FStVar FepaDefa
  loc_985A20: FFree1Ad var_98
  loc_985A23: ExitProcCbHresult
End Sub

Public Property Let FepaDefa(vDato) '96743C
  'Data Table: 4298A8
  loc_967420: FDupVar
  loc_967426: FLdVar var_94
  loc_96742A: LitVarStr var_A4, "FepaDefa"
  loc_96742F: PopAdLdVar
  loc_967430: FLdPr Me
  loc_967433: MemLdPr RsFrm
  loc_967436: Me.Collect = from_stack_1
  loc_96743B: ExitProcHresult
End Sub

Public Property Get CapiDefa() '98EBAC
  'Data Table: 4298A8
  loc_98EB68: FLdRfVar var_B4
  loc_98EB6B: FLdRfVar var_A4
  loc_98EB6E: LitVarStr var_A0, "CapiDefa"
  loc_98EB73: PopAdLdVar
  loc_98EB74: FLdRfVar var_90
  loc_98EB77: FLdPr Me
  loc_98EB7A: MemLdPr RsFrm
  loc_98EB7D:  = Me.Fields
  loc_98EB82: FLdPr var_90
  loc_98EB85: from_stack_2 = Me.Item(from_stack_1)
  loc_98EB8A: FLdPr var_A4
  loc_98EB8D:  = Me.Value
  loc_98EB92: FLdRfVar var_B4
  loc_98EB95: CR4Var
  loc_98EB96: FStFPR8 var_8C
  loc_98EB99: FFreeAd var_90 = ""
  loc_98EBA0: FFree1Var var_B4 = ""
  loc_98EBA3: ExitProcCbHresult
End Sub

Public Property Let CapiDefa(vDato) '95A934
  'Data Table: 4298A8
  loc_95A918: FLdFPR8 vDato
  loc_95A91B: CVarR8
  loc_95A91F: PopAdLdVar
  loc_95A920: LitVarStr var_94, "CapiDefa"
  loc_95A925: PopAdLdVar
  loc_95A926: FLdPr Me
  loc_95A929: MemLdPr RsFrm
  loc_95A92C: Me.Collect = from_stack_1
  loc_95A931: ExitProcHresult
End Sub

Public Property Get RecaDefa() '98EC2C
  'Data Table: 4298A8
  loc_98EBE8: FLdRfVar var_B4
  loc_98EBEB: FLdRfVar var_A4
  loc_98EBEE: LitVarStr var_A0, "RecaDefa"
  loc_98EBF3: PopAdLdVar
  loc_98EBF4: FLdRfVar var_90
  loc_98EBF7: FLdPr Me
  loc_98EBFA: MemLdPr RsFrm
  loc_98EBFD:  = Me.Fields
  loc_98EC02: FLdPr var_90
  loc_98EC05: from_stack_2 = Me.Item(from_stack_1)
  loc_98EC0A: FLdPr var_A4
  loc_98EC0D:  = Me.Value
  loc_98EC12: FLdRfVar var_B4
  loc_98EC15: CR4Var
  loc_98EC16: FStFPR8 var_8C
  loc_98EC19: FFreeAd var_90 = ""
  loc_98EC20: FFree1Var var_B4 = ""
  loc_98EC23: ExitProcCbHresult
End Sub

Public Property Let RecaDefa(vDato) '959F68
  'Data Table: 4298A8
  loc_959F4C: FLdFPR8 vDato
  loc_959F4F: CVarR8
  loc_959F53: PopAdLdVar
  loc_959F54: LitVarStr var_94, "RecaDefa"
  loc_959F59: PopAdLdVar
  loc_959F5A: FLdPr Me
  loc_959F5D: MemLdPr RsFrm
  loc_959F60: Me.Collect = from_stack_1
  loc_959F65: ExitProcHresult
End Sub

Public Property Get DecaDefa() '98ECAC
  'Data Table: 4298A8
  loc_98EC68: FLdRfVar var_B4
  loc_98EC6B: FLdRfVar var_A4
  loc_98EC6E: LitVarStr var_A0, "DecaDefa"
  loc_98EC73: PopAdLdVar
  loc_98EC74: FLdRfVar var_90
  loc_98EC77: FLdPr Me
  loc_98EC7A: MemLdPr RsFrm
  loc_98EC7D:  = Me.Fields
  loc_98EC82: FLdPr var_90
  loc_98EC85: from_stack_2 = Me.Item(from_stack_1)
  loc_98EC8A: FLdPr var_A4
  loc_98EC8D:  = Me.Value
  loc_98EC92: FLdRfVar var_B4
  loc_98EC95: CR4Var
  loc_98EC96: FStFPR8 var_8C
  loc_98EC99: FFreeAd var_90 = ""
  loc_98ECA0: FFree1Var var_B4 = ""
  loc_98ECA3: ExitProcCbHresult
End Sub

Public Property Let DecaDefa(vDato) '959AF4
  'Data Table: 4298A8
  loc_959AD8: FLdFPR8 vDato
  loc_959ADB: CVarR8
  loc_959ADF: PopAdLdVar
  loc_959AE0: LitVarStr var_94, "DecaDefa"
  loc_959AE5: PopAdLdVar
  loc_959AE6: FLdPr Me
  loc_959AE9: MemLdPr RsFrm
  loc_959AEC: Me.Collect = from_stack_1
  loc_959AF1: ExitProcHresult
End Sub

Public Property Get DereDefa() '98ED2C
  'Data Table: 4298A8
  loc_98ECE8: FLdRfVar var_B4
  loc_98ECEB: FLdRfVar var_A4
  loc_98ECEE: LitVarStr var_A0, "DereDefa"
  loc_98ECF3: PopAdLdVar
  loc_98ECF4: FLdRfVar var_90
  loc_98ECF7: FLdPr Me
  loc_98ECFA: MemLdPr RsFrm
  loc_98ECFD:  = Me.Fields
  loc_98ED02: FLdPr var_90
  loc_98ED05: from_stack_2 = Me.Item(from_stack_1)
  loc_98ED0A: FLdPr var_A4
  loc_98ED0D:  = Me.Value
  loc_98ED12: FLdRfVar var_B4
  loc_98ED15: CR4Var
  loc_98ED16: FStFPR8 var_8C
  loc_98ED19: FFreeAd var_90 = ""
  loc_98ED20: FFree1Var var_B4 = ""
  loc_98ED23: ExitProcCbHresult
End Sub

Public Property Let DereDefa(vDato) '958E30
  'Data Table: 4298A8
  loc_958E14: FLdFPR8 vDato
  loc_958E17: CVarR8
  loc_958E1B: PopAdLdVar
  loc_958E1C: LitVarStr var_94, "DereDefa"
  loc_958E21: PopAdLdVar
  loc_958E22: FLdPr Me
  loc_958E25: MemLdPr RsFrm
  loc_958E28: Me.Collect = from_stack_1
  loc_958E2D: ExitProcHresult
End Sub

Public Property Get ApreDefa() '98D2AC
  'Data Table: 4298A8
  loc_98D268: FLdRfVar var_B4
  loc_98D26B: FLdRfVar var_A4
  loc_98D26E: LitVarStr var_A0, "ApreDefa"
  loc_98D273: PopAdLdVar
  loc_98D274: FLdRfVar var_90
  loc_98D277: FLdPr Me
  loc_98D27A: MemLdPr RsFrm
  loc_98D27D:  = Me.Fields
  loc_98D282: FLdPr var_90
  loc_98D285: from_stack_2 = Me.Item(from_stack_1)
  loc_98D28A: FLdPr var_A4
  loc_98D28D:  = Me.Value
  loc_98D292: FLdRfVar var_B4
  loc_98D295: CR4Var
  loc_98D296: FStFPR8 var_8C
  loc_98D299: FFreeAd var_90 = ""
  loc_98D2A0: FFree1Var var_B4 = ""
  loc_98D2A3: ExitProcCbHresult
End Sub

Public Property Let ApreDefa(vDato) '958B84
  'Data Table: 4298A8
  loc_958B68: FLdFPR8 vDato
  loc_958B6B: CVarR8
  loc_958B6F: PopAdLdVar
  loc_958B70: LitVarStr var_94, "ApreDefa"
  loc_958B75: PopAdLdVar
  loc_958B76: FLdPr Me
  loc_958B79: MemLdPr RsFrm
  loc_958B7C: Me.Collect = from_stack_1
  loc_958B81: ExitProcHresult
End Sub

Public Property Get InteDefa() '98EDAC
  'Data Table: 4298A8
  loc_98ED68: FLdRfVar var_B4
  loc_98ED6B: FLdRfVar var_A4
  loc_98ED6E: LitVarStr var_A0, "InteDefa"
  loc_98ED73: PopAdLdVar
  loc_98ED74: FLdRfVar var_90
  loc_98ED77: FLdPr Me
  loc_98ED7A: MemLdPr RsFrm
  loc_98ED7D:  = Me.Fields
  loc_98ED82: FLdPr var_90
  loc_98ED85: from_stack_2 = Me.Item(from_stack_1)
  loc_98ED8A: FLdPr var_A4
  loc_98ED8D:  = Me.Value
  loc_98ED92: FLdRfVar var_B4
  loc_98ED95: CR4Var
  loc_98ED96: FStFPR8 var_8C
  loc_98ED99: FFreeAd var_90 = ""
  loc_98EDA0: FFree1Var var_B4 = ""
  loc_98EDA3: ExitProcCbHresult
End Sub

Public Property Let InteDefa(vDato) '9549E8
  'Data Table: 4298A8
  loc_9549CC: FLdFPR8 vDato
  loc_9549CF: CVarR8
  loc_9549D3: PopAdLdVar
  loc_9549D4: LitVarStr var_94, "InteDefa"
  loc_9549D9: PopAdLdVar
  loc_9549DA: FLdPr Me
  loc_9549DD: MemLdPr RsFrm
  loc_9549E0: Me.Collect = from_stack_1
  loc_9549E5: ExitProcHresult
End Sub

Public Property Get TotaDefa() '98D12C
  'Data Table: 4298A8
  loc_98D0E8: FLdRfVar var_B4
  loc_98D0EB: FLdRfVar var_A4
  loc_98D0EE: LitVarStr var_A0, "TotaDefa"
  loc_98D0F3: PopAdLdVar
  loc_98D0F4: FLdRfVar var_90
  loc_98D0F7: FLdPr Me
  loc_98D0FA: MemLdPr RsFrm
  loc_98D0FD:  = Me.Fields
  loc_98D102: FLdPr var_90
  loc_98D105: from_stack_2 = Me.Item(from_stack_1)
  loc_98D10A: FLdPr var_A4
  loc_98D10D:  = Me.Value
  loc_98D112: FLdRfVar var_B4
  loc_98D115: CR4Var
  loc_98D116: FStFPR8 var_8C
  loc_98D119: FFreeAd var_90 = ""
  loc_98D120: FFree1Var var_B4 = ""
  loc_98D123: ExitProcCbHresult
End Sub

Public Property Let TotaDefa(vDato) '957164
  'Data Table: 4298A8
  loc_957148: FLdFPR8 vDato
  loc_95714B: CVarR8
  loc_95714F: PopAdLdVar
  loc_957150: LitVarStr var_94, "TotaDefa"
  loc_957155: PopAdLdVar
  loc_957156: FLdPr Me
  loc_957159: MemLdPr RsFrm
  loc_95715C: Me.Collect = from_stack_1
  loc_957161: ExitProcHresult
End Sub

Public Property Get PacuDefa() '98E7AC
  'Data Table: 4298A8
  loc_98E768: FLdRfVar var_B4
  loc_98E76B: FLdRfVar var_A4
  loc_98E76E: LitVarStr var_A0, "PacuDefa"
  loc_98E773: PopAdLdVar
  loc_98E774: FLdRfVar var_90
  loc_98E777: FLdPr Me
  loc_98E77A: MemLdPr RsFrm
  loc_98E77D:  = Me.Fields
  loc_98E782: FLdPr var_90
  loc_98E785: from_stack_2 = Me.Item(from_stack_1)
  loc_98E78A: FLdPr var_A4
  loc_98E78D:  = Me.Value
  loc_98E792: FLdRfVar var_B4
  loc_98E795: CR4Var
  loc_98E796: FStFPR8 var_8C
  loc_98E799: FFreeAd var_90 = ""
  loc_98E7A0: FFree1Var var_B4 = ""
  loc_98E7A3: ExitProcCbHresult
End Sub

Public Property Get RemoDefa() '98DB2C
  'Data Table: 4298A8
  loc_98DAE8: FLdRfVar var_B4
  loc_98DAEB: FLdRfVar var_A4
  loc_98DAEE: LitVarStr var_A0, "RemoDefa"
  loc_98DAF3: PopAdLdVar
  loc_98DAF4: FLdRfVar var_90
  loc_98DAF7: FLdPr Me
  loc_98DAFA: MemLdPr RsFrm
  loc_98DAFD:  = Me.Fields
  loc_98DB02: FLdPr var_90
  loc_98DB05: from_stack_2 = Me.Item(from_stack_1)
  loc_98DB0A: FLdPr var_A4
  loc_98DB0D:  = Me.Value
  loc_98DB12: FLdRfVar var_B4
  loc_98DB15: CR4Var
  loc_98DB16: FStFPR8 var_8C
  loc_98DB19: FFreeAd var_90 = ""
  loc_98DB20: FFree1Var var_B4 = ""
  loc_98DB23: ExitProcCbHresult
End Sub

Public Property Get SeleDefa() '991208
  'Data Table: 4298A8
  loc_9911C4: ZeroRetVal
  loc_9911C6: FLdRfVar var_B0
  loc_9911C9: FLdRfVar var_A0
  loc_9911CC: LitVarStr var_9C, "SeleDefa"
  loc_9911D1: PopAdLdVar
  loc_9911D2: FLdRfVar var_8C
  loc_9911D5: FLdPr Me
  loc_9911D8: MemLdPr RsFrm
  loc_9911DB:  = Me.Fields
  loc_9911E0: FLdPr var_8C
  loc_9911E3: from_stack_2 = Me.Item(from_stack_1)
  loc_9911E8: FLdPr var_A0
  loc_9911EB:  = Me.Value
  loc_9911F0: FLdRfVar var_B0
  loc_9911F3: CStrVarTmp
  loc_9911F4: FStStr var_88
  loc_9911F7: FFreeAd var_8C = ""
  loc_9911FE: FFree1Var var_B0 = ""
  loc_991201: ExitProcCbHresult
End Sub

Public Property Get CacuFapa() '98D42C
  'Data Table: 4298A8
  loc_98D3E8: FLdRfVar var_B0
  loc_98D3EB: FLdRfVar var_A0
  loc_98D3EE: LitVarStr var_9C, "CacuFapa"
  loc_98D3F3: PopAdLdVar
  loc_98D3F4: FLdRfVar var_8C
  loc_98D3F7: FLdPr Me
  loc_98D3FA: MemLdPr RsFrm
  loc_98D3FD:  = Me.Fields
  loc_98D402: FLdPr var_8C
  loc_98D405: from_stack_2 = Me.Item(from_stack_1)
  loc_98D40A: FLdPr var_A0
  loc_98D40D:  = Me.Value
  loc_98D412: FLdRfVar var_B0
  loc_98D415: CI2Var
  loc_98D416: FStI2 var_86
  loc_98D419: FFreeAd var_8C = ""
  loc_98D420: FFree1Var var_B0 = ""
  loc_98D423: ExitProcCbHresult
End Sub

Public Property Get CreaPacu() '98FFFC
  'Data Table: 4298A8
  loc_98FFB8: ZeroRetVal
  loc_98FFBA: FLdRfVar var_B0
  loc_98FFBD: FLdRfVar var_A0
  loc_98FFC0: LitVarStr var_9C, "CreaPacu"
  loc_98FFC5: PopAdLdVar
  loc_98FFC6: FLdRfVar var_8C
  loc_98FFC9: FLdPr Me
  loc_98FFCC: MemLdPr RsFrm
  loc_98FFCF:  = Me.Fields
  loc_98FFD4: FLdPr var_8C
  loc_98FFD7: from_stack_2 = Me.Item(from_stack_1)
  loc_98FFDC: FLdPr var_A0
  loc_98FFDF:  = Me.Value
  loc_98FFE4: FLdRfVar var_B0
  loc_98FFE7: CStrVarTmp
  loc_98FFE8: FStStr var_88
  loc_98FFEB: FFreeAd var_8C = ""
  loc_98FFF2: FFree1Var var_B0 = ""
  loc_98FFF5: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9540B4
  'Data Table: 4298A8
  loc_954098: FLdI2 vDato
  loc_95409B: CVarI2 var_A4
  loc_95409E: PopAdLdVar
  loc_95409F: LitVarStr var_94, "PeriBole"
  loc_9540A4: PopAdLdVar
  loc_9540A5: FLdPr Me
  loc_9540A8: MemLdPr RsFrm
  loc_9540AB: Me.Collect = from_stack_1
  loc_9540B0: ExitProcHresult
End Sub

Public Property Get PeriBole() '98D3AC
  'Data Table: 4298A8
  loc_98D368: FLdRfVar var_B0
  loc_98D36B: FLdRfVar var_A0
  loc_98D36E: LitVarStr var_9C, "PeriBole"
  loc_98D373: PopAdLdVar
  loc_98D374: FLdRfVar var_8C
  loc_98D377: FLdPr Me
  loc_98D37A: MemLdPr RsFrm
  loc_98D37D:  = Me.Fields
  loc_98D382: FLdPr var_8C
  loc_98D385: from_stack_2 = Me.Item(from_stack_1)
  loc_98D38A: FLdPr var_A0
  loc_98D38D:  = Me.Value
  loc_98D392: FLdRfVar var_B0
  loc_98D395: CI2Var
  loc_98D396: FStI2 var_86
  loc_98D399: FFreeAd var_8C = ""
  loc_98D3A0: FFree1Var var_B0 = ""
  loc_98D3A3: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '955024
  'Data Table: 4298A8
  loc_955008: ILdRf vDato
  loc_95500B: CVarI4
  loc_95500F: PopAdLdVar
  loc_955010: LitVarStr var_94, "NumeBole"
  loc_955015: PopAdLdVar
  loc_955016: FLdPr Me
  loc_955019: MemLdPr RsFrm
  loc_95501C: Me.Collect = from_stack_1
  loc_955021: ExitProcHresult
  loc_955022: ExitProcI2
End Sub

Public Property Get NumeBole() '98DCAC
  'Data Table: 4298A8
  loc_98DC68: FLdRfVar var_B0
  loc_98DC6B: FLdRfVar var_A0
  loc_98DC6E: LitVarStr var_9C, "NumeBole"
  loc_98DC73: PopAdLdVar
  loc_98DC74: FLdRfVar var_8C
  loc_98DC77: FLdPr Me
  loc_98DC7A: MemLdPr RsFrm
  loc_98DC7D:  = Me.Fields
  loc_98DC82: FLdPr var_8C
  loc_98DC85: from_stack_2 = Me.Item(from_stack_1)
  loc_98DC8A: FLdPr var_A0
  loc_98DC8D:  = Me.Value
  loc_98DC92: FLdRfVar var_B0
  loc_98DC95: CI4Var
  loc_98DC97: FStR4 var_88
  loc_98DC9A: FFreeAd var_8C = ""
  loc_98DCA1: FFree1Var var_B0 = ""
  loc_98DCA4: ExitProcCbHresult
End Sub

Public Property Get Saldo() '9852AC
  'Data Table: 4298A8
  loc_985274: ZeroRetValVar
  loc_985276: FLdRfVar var_AC
  loc_985279: LitVarStr var_A8, "Saldo"
  loc_98527E: PopAdLdVar
  loc_98527F: FLdRfVar var_98
  loc_985282: FLdPr Me
  loc_985285: MemLdPr RsFrm
  loc_985288:  = Me.Fields
  loc_98528D: FLdPr var_98
  loc_985290: from_stack_2 = Me.Item(from_stack_1)
  loc_985295: FLdZeroAd var_AC
  loc_985298: CVarAd
  loc_98529C: FStVar Saldo
  loc_9852A0: FFree1Ad var_98
  loc_9852A3: ExitProcCbHresult
End Sub

Public Property Get PeriCtct() '985504
  'Data Table: 4298A8
  loc_9854CC: ZeroRetValVar
  loc_9854CE: FLdRfVar var_AC
  loc_9854D1: LitVarStr var_A8, "PeriCtct"
  loc_9854D6: PopAdLdVar
  loc_9854D7: FLdRfVar var_98
  loc_9854DA: FLdPr Me
  loc_9854DD: MemLdPr RsFrm
  loc_9854E0:  = Me.Fields
  loc_9854E5: FLdPr var_98
  loc_9854E8: from_stack_2 = Me.Item(from_stack_1)
  loc_9854ED: FLdZeroAd var_AC
  loc_9854F0: CVarAd
  loc_9854F4: FStVar PeriCtct
  loc_9854F8: FFree1Ad var_98
  loc_9854FB: ExitProcCbHresult
End Sub

Public Property Get BimeCtct() '98548C
  'Data Table: 4298A8
  loc_985454: ZeroRetValVar
  loc_985456: FLdRfVar var_AC
  loc_985459: LitVarStr var_A8, "BimeCtct"
  loc_98545E: PopAdLdVar
  loc_98545F: FLdRfVar var_98
  loc_985462: FLdPr Me
  loc_985465: MemLdPr RsFrm
  loc_985468:  = Me.Fields
  loc_98546D: FLdPr var_98
  loc_985470: from_stack_2 = Me.Item(from_stack_1)
  loc_985475: FLdZeroAd var_AC
  loc_985478: CVarAd
  loc_98547C: FStVar BimeCtct
  loc_985480: FFree1Ad var_98
  loc_985483: ExitProcCbHresult
End Sub

Public Property Get CapiFacc() '98557C
  'Data Table: 4298A8
  loc_985544: ZeroRetValVar
  loc_985546: FLdRfVar var_AC
  loc_985549: LitVarStr var_A8, "CapiFacc"
  loc_98554E: PopAdLdVar
  loc_98554F: FLdRfVar var_98
  loc_985552: FLdPr Me
  loc_985555: MemLdPr RsFrm
  loc_985558:  = Me.Fields
  loc_98555D: FLdPr var_98
  loc_985560: from_stack_2 = Me.Item(from_stack_1)
  loc_985565: FLdZeroAd var_AC
  loc_985568: CVarAd
  loc_98556C: FStVar CapiFacc
  loc_985570: FFree1Ad var_98
  loc_985573: ExitProcCbHresult
End Sub

Public Property Get VecuTifa() '990290
  'Data Table: 4298A8
  loc_99024C: ZeroRetVal
  loc_99024E: FLdRfVar var_B0
  loc_990251: FLdRfVar var_A0
  loc_990254: LitVarStr var_9C, "VecuTifa"
  loc_990259: PopAdLdVar
  loc_99025A: FLdRfVar var_8C
  loc_99025D: FLdPr Me
  loc_990260: MemLdPr RsFrm
  loc_990263:  = Me.Fields
  loc_990268: FLdPr var_8C
  loc_99026B: from_stack_2 = Me.Item(from_stack_1)
  loc_990270: FLdPr var_A0
  loc_990273:  = Me.Value
  loc_990278: FLdRfVar var_B0
  loc_99027B: CStrVarTmp
  loc_99027C: FStStr var_88
  loc_99027F: FFreeAd var_8C = ""
  loc_990286: FFree1Var var_B0 = ""
  loc_990289: ExitProcCbHresult
End Sub

Public Sub ActualizaSeleccion(lCodiFapa, iCuotDefa, sSeleCtct) '998330
  'Data Table: 4298A8
  loc_9982E0: ILdRf sSeleCtct
  loc_9982E3: FStStrCopy var_88
  loc_9982E6: LitStr "UPDATE tmp_detafapa SET SeleDefa = '"
  loc_9982E9: ILdRf var_88
  loc_9982EC: ConcatStr
  loc_9982ED: FStStrNoPop var_8C
  loc_9982F0: LitStr "' WHERE CodiFapa = "
  loc_9982F3: ConcatStr
  loc_9982F4: FStStrNoPop var_90
  loc_9982F7: ILdRf lCodiFapa
  loc_9982FA: CStrI4
  loc_9982FC: FStStrNoPop var_94
  loc_9982FF: ConcatStr
  loc_998300: FStStrNoPop var_98
  loc_998303: LitStr " AND CuotDefa = "
  loc_998306: ConcatStr
  loc_998307: FStStrNoPop var_9C
  loc_99830A: FLdI2 iCuotDefa
  loc_99830D: CStrUI1
  loc_99830F: FStStrNoPop var_A0
  loc_998312: ConcatStr
  loc_998313: FStStrNoPop var_A4
  loc_998316: Call EjecutarRsCls(from_stack_1v)
  loc_99831B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_99832C: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuentaSeleccion(lCodiFapa, iCuotDefa, sSeleCtct, doCapiDefa, doTotaDefa) '9D4834
  'Data Table: 4298A8
  loc_9D4774: ILdRf sSeleCtct
  loc_9D4777: FStStrCopy var_88
  loc_9D477A: LitStr "UPDATE tmp_detafapa SET CapiDefa = "
  loc_9D477D: LitI4 0
  loc_9D4782: LitI4 -1
  loc_9D4787: LitI4 1
  loc_9D478C: LitStr "."
  loc_9D478F: LitStr ","
  loc_9D4792: FLdFPR8 doCapiDefa
  loc_9D4795: CStrR8
  loc_9D4797: FStStrNoPop var_8C
  loc_9D479A: ImpAdCallI2 Replace(, , , , , )
  loc_9D479F: FStStrNoPop var_90
  loc_9D47A2: ConcatStr
  loc_9D47A3: FStStrNoPop var_94
  loc_9D47A6: LitStr ", SeleDefa = '"
  loc_9D47A9: ConcatStr
  loc_9D47AA: FStStrNoPop var_98
  loc_9D47AD: ILdRf var_88
  loc_9D47B0: ConcatStr
  loc_9D47B1: FStStrNoPop var_9C
  loc_9D47B4: LitStr "', TotaDefa = "
  loc_9D47B7: ConcatStr
  loc_9D47B8: FStStrNoPop var_A4
  loc_9D47BB: LitI4 0
  loc_9D47C0: LitI4 -1
  loc_9D47C5: LitI4 1
  loc_9D47CA: LitStr "."
  loc_9D47CD: LitStr ","
  loc_9D47D0: FLdFPR8 arg_20
  loc_9D47D3: CStrR8
  loc_9D47D5: FStStrNoPop var_A0
  loc_9D47D8: ImpAdCallI2 Replace(, , , , , )
  loc_9D47DD: FStStrNoPop var_A8
  loc_9D47E0: ConcatStr
  loc_9D47E1: FStStrNoPop var_AC
  loc_9D47E4: LitStr " WHERE CodiFapa = "
  loc_9D47E7: ConcatStr
  loc_9D47E8: FStStrNoPop var_B0
  loc_9D47EB: ILdRf lCodiFapa
  loc_9D47EE: CStrI4
  loc_9D47F0: FStStrNoPop var_B4
  loc_9D47F3: ConcatStr
  loc_9D47F4: FStStrNoPop var_B8
  loc_9D47F7: LitStr " AND CuotDefa = "
  loc_9D47FA: ConcatStr
  loc_9D47FB: FStStrNoPop var_BC
  loc_9D47FE: FLdI2 iCuotDefa
  loc_9D4801: CStrUI1
  loc_9D4803: FStStrNoPop var_C0
  loc_9D4806: ConcatStr
  loc_9D4807: FStStrNoPop var_C4
  loc_9D480A: Call EjecutarRsCls(from_stack_1v)
  loc_9D480F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9D4830: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuentaTmp(lCodiFapa, iCuotDefa, sSeleCtct, doCapiDefa, doRecaDefa, doDecaDefa, doDereDefa, doApreDefa, doInteDefa, doRemoDefa, doTotaDefa) 'A4B198
  'Data Table: 4298A8
  loc_A4AF88: ILdRf sSeleCtct
  loc_A4AF8B: FStStrCopy var_88
  loc_A4AF8E: LitStr "UPDATE tmp_detafapa SET CapiDefa = "
  loc_A4AF91: LitI4 0
  loc_A4AF96: LitI4 -1
  loc_A4AF9B: LitI4 1
  loc_A4AFA0: LitStr "."
  loc_A4AFA3: LitStr ","
  loc_A4AFA6: FLdFPR8 doCapiDefa
  loc_A4AFA9: CStrR8
  loc_A4AFAB: FStStrNoPop var_8C
  loc_A4AFAE: ImpAdCallI2 Replace(, , , , , )
  loc_A4AFB3: FStStrNoPop var_90
  loc_A4AFB6: ConcatStr
  loc_A4AFB7: FStStrNoPop var_94
  loc_A4AFBA: LitStr ", RecaDefa = "
  loc_A4AFBD: ConcatStr
  loc_A4AFBE: FStStrNoPop var_9C
  loc_A4AFC1: LitI4 0
  loc_A4AFC6: LitI4 -1
  loc_A4AFCB: LitI4 1
  loc_A4AFD0: LitStr "."
  loc_A4AFD3: LitStr ","
  loc_A4AFD6: FLdFPR8 doDecaDefa
  loc_A4AFD9: CStrR8
  loc_A4AFDB: FStStrNoPop var_98
  loc_A4AFDE: ImpAdCallI2 Replace(, , , , , )
  loc_A4AFE3: FStStrNoPop var_A0
  loc_A4AFE6: ConcatStr
  loc_A4AFE7: FStStrNoPop var_A4
  loc_A4AFEA: LitStr ", DecaDefa = "
  loc_A4AFED: ConcatStr
  loc_A4AFEE: FStStrNoPop var_AC
  loc_A4AFF1: LitI4 0
  loc_A4AFF6: LitI4 -1
  loc_A4AFFB: LitI4 1
  loc_A4B000: LitStr "."
  loc_A4B003: LitStr ","
  loc_A4B006: FLdFPR8 doApreDefa
  loc_A4B009: CStrR8
  loc_A4B00B: FStStrNoPop var_A8
  loc_A4B00E: ImpAdCallI2 Replace(, , , , , )
  loc_A4B013: FStStrNoPop var_B0
  loc_A4B016: ConcatStr
  loc_A4B017: FStStrNoPop var_B4
  loc_A4B01A: LitStr ", DereDefa = "
  loc_A4B01D: ConcatStr
  loc_A4B01E: FStStrNoPop var_BC
  loc_A4B021: LitI4 0
  loc_A4B026: LitI4 -1
  loc_A4B02B: LitI4 1
  loc_A4B030: LitStr "."
  loc_A4B033: LitStr ","
  loc_A4B036: FLdFPR8 doRemoDefa
  loc_A4B039: CStrR8
  loc_A4B03B: FStStrNoPop var_B8
  loc_A4B03E: ImpAdCallI2 Replace(, , , , , )
  loc_A4B043: FStStrNoPop var_C0
  loc_A4B046: ConcatStr
  loc_A4B047: FStStrNoPop var_C4
  loc_A4B04A: LitStr ", ApreDefa = "
  loc_A4B04D: ConcatStr
  loc_A4B04E: FStStrNoPop var_CC
  loc_A4B051: LitI4 0
  loc_A4B056: LitI4 -1
  loc_A4B05B: LitI4 1
  loc_A4B060: LitStr "."
  loc_A4B063: LitStr ","
  loc_A4B066: FLdFPR8 arg_38
  loc_A4B069: CStrR8
  loc_A4B06B: FStStrNoPop var_C8
  loc_A4B06E: ImpAdCallI2 Replace(, , , , , )
  loc_A4B073: FStStrNoPop var_D0
  loc_A4B076: ConcatStr
  loc_A4B077: FStStrNoPop var_D4
  loc_A4B07A: LitStr ", InteDefa = "
  loc_A4B07D: ConcatStr
  loc_A4B07E: FStStrNoPop var_DC
  loc_A4B081: LitI4 0
  loc_A4B086: LitI4 -1
  loc_A4B08B: LitI4 1
  loc_A4B090: LitStr "."
  loc_A4B093: LitStr ","
  loc_A4B096: FLdFPR8 ActualizaPagoCuentaTmp0
  loc_A4B099: CStrR8
  loc_A4B09B: FStStrNoPop var_D8
  loc_A4B09E: ImpAdCallI2 Replace(, , , , , )
  loc_A4B0A3: FStStrNoPop var_E0
  loc_A4B0A6: ConcatStr
  loc_A4B0A7: FStStrNoPop var_E4
  loc_A4B0AA: LitStr ", RemoDefa = "
  loc_A4B0AD: ConcatStr
  loc_A4B0AE: FStStrNoPop var_EC
  loc_A4B0B1: LitI4 0
  loc_A4B0B6: LitI4 -1
  loc_A4B0BB: LitI4 1
  loc_A4B0C0: LitStr "."
  loc_A4B0C3: LitStr ","
  loc_A4B0C6: FLdFPR8 ActualizaPagoCuentaTmp8
  loc_A4B0C9: CStrR8
  loc_A4B0CB: FStStrNoPop var_E8
  loc_A4B0CE: ImpAdCallI2 Replace(, , , , , )
  loc_A4B0D3: FStStrNoPop var_F0
  loc_A4B0D6: ConcatStr
  loc_A4B0D7: FStStrNoPop var_F4
  loc_A4B0DA: LitStr ", TotaDefa = "
  loc_A4B0DD: ConcatStr
  loc_A4B0DE: FStStrNoPop var_FC
  loc_A4B0E1: LitI4 0
  loc_A4B0E6: LitI4 -1
  loc_A4B0EB: LitI4 1
  loc_A4B0F0: LitStr "."
  loc_A4B0F3: LitStr ","
  loc_A4B0F6: FLdFPR8 arg_50
  loc_A4B0F9: CStrR8
  loc_A4B0FB: FStStrNoPop var_F8
  loc_A4B0FE: ImpAdCallI2 Replace(, , , , , )
  loc_A4B103: FStStrNoPop var_100
  loc_A4B106: ConcatStr
  loc_A4B107: FStStrNoPop var_104
  loc_A4B10A: LitStr ", SeleDefa = '"
  loc_A4B10D: ConcatStr
  loc_A4B10E: FStStrNoPop var_108
  loc_A4B111: ILdRf var_88
  loc_A4B114: ConcatStr
  loc_A4B115: FStStrNoPop var_10C
  loc_A4B118: LitStr "' WHERE CodiFapa = "
  loc_A4B11B: ConcatStr
  loc_A4B11C: FStStrNoPop var_110
  loc_A4B11F: ILdRf lCodiFapa
  loc_A4B122: CStrI4
  loc_A4B124: FStStrNoPop var_114
  loc_A4B127: ConcatStr
  loc_A4B128: FStStrNoPop var_118
  loc_A4B12B: LitStr " AND CuotDefa = "
  loc_A4B12E: ConcatStr
  loc_A4B12F: FStStrNoPop var_11C
  loc_A4B132: FLdI2 iCuotDefa
  loc_A4B135: CStrUI1
  loc_A4B137: FStStrNoPop var_120
  loc_A4B13A: ConcatStr
  loc_A4B13B: FStStrNoPop var_124
  loc_A4B13E: Call EjecutarRsCls(from_stack_1v)
  loc_A4B143: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A4B194: ExitProcHresult
End Sub

Public Sub ActualizaCuota(PeriBole, NumeBole, CodiFapa, CuotDefa, FepaDefa, EstaDefa) 'A18598
  'Data Table: 4298A8
  loc_A18448: ILdRf FepaDefa
  loc_A1844B: FStStrCopy var_88
  loc_A1844E: ILdRf EstaDefa
  loc_A18451: FStStrCopy var_8C
  loc_A18454: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_A18457: ILdRf var_8C
  loc_A1845A: ConcatStr
  loc_A1845B: FStStrNoPop var_90
  loc_A1845E: LitStr "', FepaDefa = '"
  loc_A18461: ConcatStr
  loc_A18462: FStStrNoPop var_C4
  loc_A18465: LitI4 1
  loc_A1846A: LitI4 1
  loc_A1846F: LitVarStr var_B0, "yyyy-mm-dd"
  loc_A18474: FStVarCopyObj var_C0
  loc_A18477: FLdRfVar var_C0
  loc_A1847A: FLdRfVar var_88
  loc_A1847D: CVarRef
  loc_A18482: ImpAdCallI2 Format$(, )
  loc_A18487: FStStrNoPop var_C8
  loc_A1848A: ConcatStr
  loc_A1848B: FStStrNoPop var_CC
  loc_A1848E: LitStr "' WHERE CodiFapa = "
  loc_A18491: ConcatStr
  loc_A18492: FStStrNoPop var_D0
  loc_A18495: ILdRf CodiFapa
  loc_A18498: CStrI4
  loc_A1849A: FStStrNoPop var_D4
  loc_A1849D: ConcatStr
  loc_A1849E: FStStrNoPop var_D8
  loc_A184A1: LitStr " AND CuotDefa = "
  loc_A184A4: ConcatStr
  loc_A184A5: FStStrNoPop var_DC
  loc_A184A8: FLdI2 CuotDefa
  loc_A184AB: CStrUI1
  loc_A184AD: FStStrNoPop var_E0
  loc_A184B0: ConcatStr
  loc_A184B1: FStStrNoPop var_E4
  loc_A184B4: LitStr ";"
  loc_A184B7: ConcatStr
  loc_A184B8: FStStrNoPop var_E8
  loc_A184BB: Call EjecutarRsCls(from_stack_1v)
  loc_A184C0: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A184D9: FFree1Var var_C0 = ""
  loc_A184DC: LitStr "UPDATE pacudefa SET EstaPcdf = '"
  loc_A184DF: ILdRf var_8C
  loc_A184E2: ConcatStr
  loc_A184E3: FStStrNoPop var_90
  loc_A184E6: LitStr "', FepaPcdf = '"
  loc_A184E9: ConcatStr
  loc_A184EA: FStStrNoPop var_C4
  loc_A184ED: LitI4 1
  loc_A184F2: LitI4 1
  loc_A184F7: LitVarStr var_B0, "yyyy-mm-dd"
  loc_A184FC: FStVarCopyObj var_C0
  loc_A184FF: FLdRfVar var_C0
  loc_A18502: FLdRfVar var_88
  loc_A18505: CVarRef
  loc_A1850A: ImpAdCallI2 Format$(, )
  loc_A1850F: FStStrNoPop var_C8
  loc_A18512: ConcatStr
  loc_A18513: FStStrNoPop var_CC
  loc_A18516: LitStr "' WHERE PeriBole = "
  loc_A18519: ConcatStr
  loc_A1851A: FStStrNoPop var_D0
  loc_A1851D: FLdI2 PeriBole
  loc_A18520: CStrUI1
  loc_A18522: FStStrNoPop var_D4
  loc_A18525: ConcatStr
  loc_A18526: FStStrNoPop var_D8
  loc_A18529: LitStr " AND NumeBole = "
  loc_A1852C: ConcatStr
  loc_A1852D: FStStrNoPop var_DC
  loc_A18530: ILdRf NumeBole
  loc_A18533: CStrI4
  loc_A18535: FStStrNoPop var_E0
  loc_A18538: ConcatStr
  loc_A18539: FStStrNoPop var_E4
  loc_A1853C: LitStr " AND CodiFapa = "
  loc_A1853F: ConcatStr
  loc_A18540: FStStrNoPop var_E8
  loc_A18543: ILdRf CodiFapa
  loc_A18546: CStrI4
  loc_A18548: FStStrNoPop var_EC
  loc_A1854B: ConcatStr
  loc_A1854C: FStStrNoPop var_F0
  loc_A1854F: LitStr " AND CuotDefa = "
  loc_A18552: ConcatStr
  loc_A18553: FStStrNoPop var_F4
  loc_A18556: FLdI2 CuotDefa
  loc_A18559: CStrUI1
  loc_A1855B: FStStrNoPop var_F8
  loc_A1855E: ConcatStr
  loc_A1855F: FStStrNoPop var_FC
  loc_A18562: LitStr ";"
  loc_A18565: ConcatStr
  loc_A18566: FStStrNoPop var_100
  loc_A18569: Call EjecutarRsCls(from_stack_1v)
  loc_A1856E: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A18593: FFree1Var var_C0 = ""
  loc_A18596: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuenta(PeriBole, NumeBole, CodiFapa, CuotDefa, FepaPcdf, EstaDefa) '9F2AD4
  'Data Table: 4298A8
  loc_9F29D0: ILdRf FepaPcdf
  loc_9F29D3: FStStrCopy var_88
  loc_9F29D6: ILdRf EstaDefa
  loc_9F29D9: FStStrCopy var_8C
  loc_9F29DC: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_9F29DF: ILdRf var_8C
  loc_9F29E2: ConcatStr
  loc_9F29E3: FStStrNoPop var_90
  loc_9F29E6: LitStr "' WHERE CodiFapa = "
  loc_9F29E9: ConcatStr
  loc_9F29EA: FStStrNoPop var_94
  loc_9F29ED: ILdRf CodiFapa
  loc_9F29F0: CStrI4
  loc_9F29F2: FStStrNoPop var_98
  loc_9F29F5: ConcatStr
  loc_9F29F6: FStStrNoPop var_9C
  loc_9F29F9: LitStr " AND CuotDefa = "
  loc_9F29FC: ConcatStr
  loc_9F29FD: FStStrNoPop var_A0
  loc_9F2A00: FLdI2 CuotDefa
  loc_9F2A03: CStrUI1
  loc_9F2A05: FStStrNoPop var_A4
  loc_9F2A08: ConcatStr
  loc_9F2A09: FStStrNoPop var_A8
  loc_9F2A0C: LitStr ";"
  loc_9F2A0F: ConcatStr
  loc_9F2A10: FStStrNoPop var_AC
  loc_9F2A13: Call EjecutarRsCls(from_stack_1v)
  loc_9F2A18: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9F2A2B: LitStr "UPDATE pacudefa SET EstaPcdf = 'Pagada', FepaPcdf = '"
  loc_9F2A2E: LitI4 1
  loc_9F2A33: LitI4 1
  loc_9F2A38: LitVarStr var_CC, "yyyy-mm-dd"
  loc_9F2A3D: FStVarCopyObj var_DC
  loc_9F2A40: FLdRfVar var_DC
  loc_9F2A43: FLdRfVar var_88
  loc_9F2A46: CVarRef
  loc_9F2A4B: ImpAdCallI2 Format$(, )
  loc_9F2A50: FStStrNoPop var_90
  loc_9F2A53: ConcatStr
  loc_9F2A54: FStStrNoPop var_94
  loc_9F2A57: LitStr "' WHERE PeriBole = "
  loc_9F2A5A: ConcatStr
  loc_9F2A5B: FStStrNoPop var_98
  loc_9F2A5E: FLdI2 PeriBole
  loc_9F2A61: CStrUI1
  loc_9F2A63: FStStrNoPop var_9C
  loc_9F2A66: ConcatStr
  loc_9F2A67: FStStrNoPop var_A0
  loc_9F2A6A: LitStr " AND NumeBole = "
  loc_9F2A6D: ConcatStr
  loc_9F2A6E: FStStrNoPop var_A4
  loc_9F2A71: ILdRf NumeBole
  loc_9F2A74: CStrI4
  loc_9F2A76: FStStrNoPop var_A8
  loc_9F2A79: ConcatStr
  loc_9F2A7A: FStStrNoPop var_AC
  loc_9F2A7D: LitStr " AND CodiFapa = "
  loc_9F2A80: ConcatStr
  loc_9F2A81: FStStrNoPop var_E0
  loc_9F2A84: ILdRf CodiFapa
  loc_9F2A87: CStrI4
  loc_9F2A89: FStStrNoPop var_E4
  loc_9F2A8C: ConcatStr
  loc_9F2A8D: FStStrNoPop var_E8
  loc_9F2A90: LitStr " AND CuotDefa = "
  loc_9F2A93: ConcatStr
  loc_9F2A94: FStStrNoPop var_EC
  loc_9F2A97: FLdI2 CuotDefa
  loc_9F2A9A: CStrUI1
  loc_9F2A9C: FStStrNoPop var_F0
  loc_9F2A9F: ConcatStr
  loc_9F2AA0: FStStrNoPop var_F4
  loc_9F2AA3: LitStr ";"
  loc_9F2AA6: ConcatStr
  loc_9F2AA7: FStStrNoPop var_F8
  loc_9F2AAA: Call EjecutarRsCls(from_stack_1v)
  loc_9F2AAF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_9F2AD0: FFree1Var var_DC = ""
  loc_9F2AD3: ExitProcHresult
End Sub

Public Sub DesaActualizaCuota(CodiFapa, CuotDefa) '98CE30
  'Data Table: 4298A8
  loc_98CDF8: LitStr "UPDATE detafapa SET EstaDefa = 'Emitida', FepaDefa = Null WHERE CodiFapa = "
  loc_98CDFB: ILdRf CodiFapa
  loc_98CDFE: CStrI4
  loc_98CE00: FStStrNoPop var_88
  loc_98CE03: ConcatStr
  loc_98CE04: FStStrNoPop var_8C
  loc_98CE07: LitStr " AND CuotDefa = "
  loc_98CE0A: ConcatStr
  loc_98CE0B: FStStrNoPop var_90
  loc_98CE0E: FLdI2 CuotDefa
  loc_98CE11: CStrUI1
  loc_98CE13: FStStrNoPop var_94
  loc_98CE16: ConcatStr
  loc_98CE17: FStStrNoPop var_98
  loc_98CE1A: Call EjecutarRsCls(from_stack_1v)
  loc_98CE1F: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_98CE2C: ExitProcHresult
End Sub

Public Function BuscaCuotasImpagas(CodiFapa) '994AB4
  'Data Table: 4298A8
  loc_994A60: LitStr "SELECT CodiFapa FROM detafapa WHERE CodiFapa = "
  loc_994A63: ILdRf CodiFapa
  loc_994A66: CStrI4
  loc_994A68: FStStrNoPop var_8C
  loc_994A6B: ConcatStr
  loc_994A6C: FStStrNoPop var_90
  loc_994A6F: LitStr " AND FepaDefa IS NULL ORDER BY detafapa.CodiFapa, detafapa.CuotDefa"
  loc_994A72: ConcatStr
  loc_994A73: FStStrNoPop BuscaCuotasImpagas
  loc_994A76: Call EjecutarRsCls(from_stack_1v)
  loc_994A7B: FFreeStr var_8C = "": var_90 = ""
  loc_994A84: FLdRfVar var_98
  loc_994A87: FLdPr Me
  loc_994A8A: MemLdPr global_56
  loc_994A8D:  = Me.RecordCount
  loc_994A92: ILdRf var_98
  loc_994A95: LitI4 0
  loc_994A9A: EqI4
  loc_994A9B: BranchF loc_994AA6
  loc_994A9E: LitI2_Byte &HFF
  loc_994AA0: FStI2 var_86
  loc_994AA3: Branch loc_994AAB
  loc_994AA6: LitI2_Byte 0
  loc_994AA8: FStI2 var_86
  loc_994AAB: ExitProcCbHresult
End Function

Public Function ModificaDetaFapa(CodiFapa, CuotDefa, EstaDefa, FepaDefa) '9EC8CC
  'Data Table: 4298A8
  loc_9EC7D8: ILdRf EstaDefa
  loc_9EC7DB: FStStrCopy var_98
  loc_9EC7DE: ILdRf FepaDefa
  loc_9EC7E1: FStStrCopy var_9C
  loc_9EC7E4: ZeroRetValVar
  loc_9EC7E6: FLdRfVar var_9C
  loc_9EC7E9: CVarRef
  loc_9EC7EE: ImpAdCallI2 IsDate()
  loc_9EC7F3: FStI2 var_1FE
  loc_9EC7F6: LitI4 1
  loc_9EC7FB: LitI4 1
  loc_9EC800: LitVarStr var_D0, "yyyy-mm-dd"
  loc_9EC805: FStVarCopyObj var_E0
  loc_9EC808: FLdRfVar var_E0
  loc_9EC80B: FLdRfVar var_9C
  loc_9EC80E: CVarRef
  loc_9EC813: ImpAdCallI2 Format$(, )
  loc_9EC818: FStStr var_204
  loc_9EC81B: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_9EC81E: ILdRf var_98
  loc_9EC821: ConcatStr
  loc_9EC822: FStStrNoPop var_A0
  loc_9EC825: LitStr "', FepaDefa = "
  loc_9EC828: ConcatStr
  loc_9EC829: CVarStr var_148
  loc_9EC82C: LitVarStr var_118, "Null"
  loc_9EC831: FStVarCopyObj var_128
  loc_9EC834: FLdRfVar var_128
  loc_9EC837: LitStr "'"
  loc_9EC83A: FLdZeroAd var_204
  loc_9EC83D: FStStrNoPop var_E4
  loc_9EC840: ConcatStr
  loc_9EC841: FStStrNoPop var_E8
  loc_9EC844: LitStr "'"
  loc_9EC847: ConcatStr
  loc_9EC848: CVarStr var_108
  loc_9EC84B: FLdI2 var_1FE
  loc_9EC84E: CVarBoolI2 var_F8
  loc_9EC852: FLdRfVar var_138
  loc_9EC855: ImpAdCallFPR4  = IIf(, , )
  loc_9EC85A: FLdRfVar var_138
  loc_9EC85D: ConcatVar var_158
  loc_9EC861: LitVarStr var_168, " WHERE CodiFapa = "
  loc_9EC866: ConcatVar var_178
  loc_9EC86A: ILdRf CodiFapa
  loc_9EC86D: CVarI4
  loc_9EC871: ConcatVar var_198
  loc_9EC875: LitVarStr var_1A8, " And CuotDefa = "
  loc_9EC87A: ConcatVar var_1B8
  loc_9EC87E: ILdRf CuotDefa
  loc_9EC881: CVarI4
  loc_9EC885: ConcatVar var_1D8
  loc_9EC889: LitVarStr var_1E8, ";"
  loc_9EC88E: ConcatVar var_1F8
  loc_9EC892: CStrVarVal var_1FC
  loc_9EC896: Call EjecutarRsCls(from_stack_1v)
  loc_9EC89B: FFreeStr var_A0 = "": var_E4 = "": var_E8 = "": var_1FC = ""
  loc_9EC8A8: FFreeVar var_E0 = "": var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_9EC8C3: ExitProcCbHresult
End Function

Public Function ProcesoActualizaUltimaCuota(CodiFapa, CuotDefa, CapiDefa) '9CD158
  'Data Table: 4298A8
  loc_9CD0A0: ZeroRetValVar
  loc_9CD0A2: LitStr "UPDATE detafapa SET CapiDefa = "
  loc_9CD0A5: LitI4 0
  loc_9CD0AA: LitI4 -1
  loc_9CD0AF: LitI4 1
  loc_9CD0B4: LitStr "."
  loc_9CD0B7: LitStr ","
  loc_9CD0BA: FLdFPR8 CapiDefa
  loc_9CD0BD: CStrR8
  loc_9CD0BF: FStStrNoPop var_98
  loc_9CD0C2: ImpAdCallI2 Replace(, , , , , )
  loc_9CD0C7: FStStrNoPop var_9C
  loc_9CD0CA: ConcatStr
  loc_9CD0CB: FStStrNoPop var_A0
  loc_9CD0CE: LitStr ", TotaDefa = "
  loc_9CD0D1: ConcatStr
  loc_9CD0D2: FStStrNoPop var_A8
  loc_9CD0D5: LitI4 0
  loc_9CD0DA: LitI4 -1
  loc_9CD0DF: LitI4 1
  loc_9CD0E4: LitStr "."
  loc_9CD0E7: LitStr ","
  loc_9CD0EA: FLdFPR8 CapiDefa
  loc_9CD0ED: CStrR8
  loc_9CD0EF: FStStrNoPop var_A4
  loc_9CD0F2: ImpAdCallI2 Replace(, , , , , )
  loc_9CD0F7: FStStrNoPop var_AC
  loc_9CD0FA: ConcatStr
  loc_9CD0FB: FStStrNoPop var_B0
  loc_9CD0FE: LitStr " + RecaDefa - DecaDefa - DereDefa + ApreDefa + InteDefa  WHERE CodiFapa = "
  loc_9CD101: ConcatStr
  loc_9CD102: FStStrNoPop var_B4
  loc_9CD105: ILdRf CodiFapa
  loc_9CD108: CStrI4
  loc_9CD10A: FStStrNoPop var_B8
  loc_9CD10D: ConcatStr
  loc_9CD10E: FStStrNoPop var_BC
  loc_9CD111: LitStr " And CuotDefa = "
  loc_9CD114: ConcatStr
  loc_9CD115: FStStrNoPop var_C0
  loc_9CD118: ILdRf CuotDefa
  loc_9CD11B: CStrI4
  loc_9CD11D: FStStrNoPop var_C4
  loc_9CD120: ConcatStr
  loc_9CD121: FStStrNoPop var_C8
  loc_9CD124: LitStr ";"
  loc_9CD127: ConcatStr
  loc_9CD128: FStStrNoPop var_CC
  loc_9CD12B: Call EjecutarRsCls(from_stack_1v)
  loc_9CD130: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_9CD14F: ExitProcCbHresult
End Function

Private Function Proc_299_66_9714F4() '9714F4
  'Data Table: 4298A8
  loc_9714D0: LitStr "Primary"
  loc_9714D3: FLdPr Me
  loc_9714D6: LateIdLdVar var_94 DispID_4 0
  loc_9714DD: CastAdVar Me
  loc_9714E1: FStAdFunc var_98
  loc_9714E4: FLdPr var_98
  loc_9714EC: FFree1Ad var_98
  loc_9714EF: FFree1Var var_94 = ""
  loc_9714F2: ExitProcHresult
End Function

Private Function Proc_299_67_96757C(arg_C) '96757C
  'Data Table: 4298A8
  loc_967560: ILdI4 arg_C
  loc_967563: FStStrCopy var_88
  loc_967566: ILdRf var_88
  loc_967569: LitStr "Primary"
  loc_96756C: EqStr
  loc_96756E: BranchF loc_96757B
  loc_967571: FLdPr Me
  loc_967574: MemLdStr RsFrm
  loc_967577: IStAd
  loc_96757B: ExitProcHresult
End Function
