VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsrecepcion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '412B94
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '412BA3
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '412BB2
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E0D4
  'Data Table: 4128FC
  loc_96E0AC: FLdRfVar var_88
  loc_96E0AF: FLdPr Me
  loc_96E0B2: MemLdPr RsFrm
  loc_96E0B5:  = Me.RecordCount
  loc_96E0BA: ILdRf var_88
  loc_96E0BD: LitI4 0
  loc_96E0C2: GtI4
  loc_96E0C3: BranchF loc_96E0D1
  loc_96E0C6: FLdPr Me
  loc_96E0C9: MemLdPr RsFrm
  loc_96E0CC: Me.MoveFirst
  loc_96E0D1: ExitProcHresult
End Sub

Public Sub MoveLast() '96DF1C
  'Data Table: 4128FC
  loc_96DEF4: FLdRfVar var_88
  loc_96DEF7: FLdPr Me
  loc_96DEFA: MemLdPr RsFrm
  loc_96DEFD:  = Me.RecordCount
  loc_96DF02: ILdRf var_88
  loc_96DF05: LitI4 0
  loc_96DF0A: GtI4
  loc_96DF0B: BranchF loc_96DF19
  loc_96DF0E: FLdPr Me
  loc_96DF11: MemLdPr RsFrm
  loc_96DF14: Me.MoveLast
  loc_96DF19: ExitProcHresult
End Sub

Public Sub MoveNext() '99D9E8
  'Data Table: 4128FC
  loc_99D970: FLdRfVar var_86
  loc_99D973: FLdPr Me
  loc_99D976: MemLdPr RsFrm
  loc_99D979:  = Me.EOF
  loc_99D97E: FLdI2 var_86
  loc_99D981: NotI4
  loc_99D982: FLdRfVar var_8C
  loc_99D985: FLdPr Me
  loc_99D988: MemLdPr RsFrm
  loc_99D98B:  = Me.RecordCount
  loc_99D990: ILdRf var_8C
  loc_99D993: LitI4 0
  loc_99D998: GtI4
  loc_99D999: AndI4
  loc_99D99A: BranchF loc_99D9A8
  loc_99D99D: FLdPr Me
  loc_99D9A0: MemLdPr RsFrm
  loc_99D9A3: Me.MoveNext
  loc_99D9A8: FLdRfVar var_86
  loc_99D9AB: FLdPr Me
  loc_99D9AE: MemLdPr RsFrm
  loc_99D9B1:  = Me.EOF
  loc_99D9B6: FLdI2 var_86
  loc_99D9B9: FLdRfVar var_8C
  loc_99D9BC: FLdPr Me
  loc_99D9BF: MemLdPr RsFrm
  loc_99D9C2:  = Me.RecordCount
  loc_99D9C7: ILdRf var_8C
  loc_99D9CA: LitI4 0
  loc_99D9CF: GtI4
  loc_99D9D0: AndI4
  loc_99D9D1: BranchF loc_99D9E4
  loc_99D9D4: ImpAdCallFPR4 Beep()
  loc_99D9D9: FLdPr Me
  loc_99D9DC: MemLdPr RsFrm
  loc_99D9DF: Me.MoveLast
  loc_99D9E4: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941EF4
  'Data Table: 4128FC
  loc_941EE8: FLdPr Me
  loc_941EEB: MemLdPr RsFrm
  loc_941EEE: Me.MoveNext
  loc_941EF3: ExitProcHresult
End Sub

Public Sub Move(iValor) '948060
  'Data Table: 4128FC
  loc_94804C: LitVar_Missing var_94
  loc_94804F: PopAdLdVar
  loc_948050: ILdI2 iValor
  loc_948053: CI4UI1
  loc_948054: FLdPr Me
  loc_948057: MemLdPr RsFrm
  loc_94805A: Me.Move from_stack_1, from_stack_2
  loc_94805F: ExitProcHresult
End Sub

Public Sub MovePrevious() '99DA90
  'Data Table: 4128FC
  loc_99DA18: FLdRfVar var_86
  loc_99DA1B: FLdPr Me
  loc_99DA1E: MemLdPr RsFrm
  loc_99DA21:  = Me.BOF
  loc_99DA26: FLdI2 var_86
  loc_99DA29: NotI4
  loc_99DA2A: FLdRfVar var_8C
  loc_99DA2D: FLdPr Me
  loc_99DA30: MemLdPr RsFrm
  loc_99DA33:  = Me.RecordCount
  loc_99DA38: ILdRf var_8C
  loc_99DA3B: LitI4 0
  loc_99DA40: GtI4
  loc_99DA41: AndI4
  loc_99DA42: BranchF loc_99DA50
  loc_99DA45: FLdPr Me
  loc_99DA48: MemLdPr RsFrm
  loc_99DA4B: Me.MovePrevious
  loc_99DA50: FLdRfVar var_86
  loc_99DA53: FLdPr Me
  loc_99DA56: MemLdPr RsFrm
  loc_99DA59:  = Me.BOF
  loc_99DA5E: FLdI2 var_86
  loc_99DA61: FLdRfVar var_8C
  loc_99DA64: FLdPr Me
  loc_99DA67: MemLdPr RsFrm
  loc_99DA6A:  = Me.RecordCount
  loc_99DA6F: ILdRf var_8C
  loc_99DA72: LitI4 0
  loc_99DA77: GtI4
  loc_99DA78: AndI4
  loc_99DA79: BranchF loc_99DA8C
  loc_99DA7C: ImpAdCallFPR4 Beep()
  loc_99DA81: FLdPr Me
  loc_99DA84: MemLdPr RsFrm
  loc_99DA87: Me.MoveFirst
  loc_99DA8C: ExitProcHresult
End Sub

Public Property Get EOF() '958D98
  'Data Table: 4128FC
  loc_958D7C: FLdRfVar var_88
  loc_958D7F: FLdPr Me
  loc_958D82: MemLdPr RsFrm
  loc_958D85:  = Me.EOF
  loc_958D8A: FLdI2 var_88
  loc_958D8D: FStI2 var_86
  loc_958D90: ExitProcCbHresult
End Sub

Public Property Get BOF() '958D4C
  'Data Table: 4128FC
  loc_958D30: FLdRfVar var_88
  loc_958D33: FLdPr Me
  loc_958D36: MemLdPr RsFrm
  loc_958D39:  = Me.BOF
  loc_958D3E: FLdI2 var_88
  loc_958D41: FStI2 var_86
  loc_958D44: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '947C44
  'Data Table: 4128FC
  loc_947C34: ILdI4 sOrden
  loc_947C37: FLdPr Me
  loc_947C3A: MemLdPr RsFrm
  loc_947C3D: Me.Sort = from_stack_1
  loc_947C42: ExitProcHresult
End Sub

Public Sub Find(sFind) '969790
  'Data Table: 4128FC
  loc_969770: LitVar_Missing var_94
  loc_969773: PopAdLdVar
  loc_969774: LitI4 1
  loc_969779: LitI4 0
  loc_96977E: ILdI4 sFind
  loc_969781: FLdPr Me
  loc_969784: MemLdPr RsFrm
  loc_969787: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96978C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '94812C
  'Data Table: 4128FC
  loc_948118: ILdI4 sCriterio
  loc_94811B: CVarStr var_94
  loc_94811E: PopAdLdVar
  loc_94811F: FLdPr Me
  loc_948122: MemLdPr RsFrm
  loc_948125: Me.Filter = from_stack_1
  loc_94812A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9642FC
  'Data Table: 4128FC
  loc_9642E0: FLdRfVar var_8C
  loc_9642E3: FLdPr Me
  loc_9642E6: MemLdPr RsFrm
  loc_9642E9:  = Me.AbsolutePosition
  loc_9642EE: ILdRf var_8C
  loc_9642F1: FStR4 var_88
  loc_9642F4: ExitProcCbHresult
  loc_9642FA: FStI2 var_7C00
End Sub

Public Property Get RecordCount() '9640E8
  'Data Table: 4128FC
  loc_9640CC: FLdRfVar var_8C
  loc_9640CF: FLdPr Me
  loc_9640D2: MemLdPr RsFrm
  loc_9640D5:  = Me.RecordCount
  loc_9640DA: ILdRf var_8C
  loc_9640DD: FStR4 var_88
  loc_9640E0: ExitProcCbHresult
  loc_9640E6: CastAd
End Sub

Public Sub Modificar(ExpeImpu, ExpeImpuGDE, FechRece, FepaRece, FefaRece, TifaRece, SufaRece, NufaRece, HaceRequery) 'A6E130
  'Data Table: 4128FC
  loc_A6DE28: ILdRf ExpeImpu
  loc_A6DE2B: FStStrCopy var_88
  loc_A6DE2E: ILdRf ExpeImpuGDE
  loc_A6DE31: FStStrCopy var_8C
  loc_A6DE34: FDupVar
  loc_A6DE3A: FDupVar
  loc_A6DE40: FDupVar
  loc_A6DE46: ILdRf Modificar4
  loc_A6DE49: FStStrCopy var_C0
  loc_A6DE4C: OnErrorGoto loc_A6E0DE
  loc_A6DE4F: LitI4 0
  loc_A6DE54: LitI4 2
  loc_A6DE59: FLdRfVar var_C4
  loc_A6DE5C: Redim
  loc_A6DE66: FLdRfVar var_9C
  loc_A6DE69: CVarRef
  loc_A6DE6E: ParmAry1St
  loc_A6DE74: FLdRfVar var_AC
  loc_A6DE77: CVarRef
  loc_A6DE7C: ParmAry1St
  loc_A6DE82: FLdRfVar var_BC
  loc_A6DE85: CVarRef
  loc_A6DE8A: ParmAry1St
  loc_A6DE90: FLdRfVar var_C4
  loc_A6DE93: ImpAdCallFPR4 Proc_261_57_A2BA40()
  loc_A6DE98: FLdRfVar var_C4
  loc_A6DE9B: Erase
  loc_A6DE9C: FLdPr Me
  loc_A6DE9F: MemLdStr RsFrm
  loc_A6DEA2: FStAd var_F8 
  loc_A6DEA6: LitStr "UPDATE recepcion"
  loc_A6DEA9: LitStr " SET ExpeImpu = '"
  loc_A6DEAC: ConcatStr
  loc_A6DEAD: FStStrNoPop var_FC
  loc_A6DEB0: ILdRf var_88
  loc_A6DEB3: ConcatStr
  loc_A6DEB4: FStStrNoPop var_100
  loc_A6DEB7: LitStr "' , ExpeImpuGDE='"
  loc_A6DEBA: ConcatStr
  loc_A6DEBB: FStStrNoPop var_104
  loc_A6DEBE: ILdRf var_8C
  loc_A6DEC1: ConcatStr
  loc_A6DEC2: FStStrNoPop var_108
  loc_A6DEC5: LitStr "', FechRece="
  loc_A6DEC8: ConcatStr
  loc_A6DEC9: CVarStr var_118
  loc_A6DECC: FLdRfVar var_9C
  loc_A6DECF: ConcatVar var_128
  loc_A6DED3: LitVarStr var_D4, ", FepaRece="
  loc_A6DED8: ConcatVar var_138
  loc_A6DEDC: FLdRfVar var_AC
  loc_A6DEDF: ConcatVar var_148
  loc_A6DEE3: LitVarStr var_E4, ", FefaRece="
  loc_A6DEE8: ConcatVar var_158
  loc_A6DEEC: FLdRfVar var_BC
  loc_A6DEEF: ConcatVar var_168
  loc_A6DEF3: LitVarStr var_F4, ", NumeFact='"
  loc_A6DEF8: ConcatVar var_178
  loc_A6DEFC: ILdRf var_C0
  loc_A6DEFF: CVarStr var_188
  loc_A6DF02: ConcatVar var_198
  loc_A6DF06: LitI4 1
  loc_A6DF0B: LitI4 1
  loc_A6DF10: LitVarStr var_1B8, "0000"
  loc_A6DF15: FStVarCopyObj var_1C8
  loc_A6DF18: FLdRfVar var_1C8
  loc_A6DF1B: FLdRfVar Modificar8
  loc_A6DF1E: CVarRef
  loc_A6DF23: ImpAdCallI2 Format$(, )
  loc_A6DF28: CVarStr var_1D8
  loc_A6DF2B: ConcatVar var_1E8
  loc_A6DF2F: LitI4 1
  loc_A6DF34: LitI4 1
  loc_A6DF39: LitVarStr var_208, "00000000"
  loc_A6DF3E: FStVarCopyObj var_218
  loc_A6DF41: FLdRfVar var_218
  loc_A6DF44: FLdRfVar ModificarC
  loc_A6DF47: CVarRef
  loc_A6DF4C: ImpAdCallI2 Format$(, )
  loc_A6DF51: CVarStr var_228
  loc_A6DF54: ConcatVar var_238
  loc_A6DF58: LitVarStr var_248, "', ModiUsua='"
  loc_A6DF5D: ConcatVar var_258
  loc_A6DF61: ImpAdLdI4 MemVar_C3D03C
  loc_A6DF64: CVarStr var_268
  loc_A6DF67: ConcatVar var_278
  loc_A6DF6B: LitVarStr var_288, "', ModiFeho=Now()"
  loc_A6DF70: ConcatVar var_298
  loc_A6DF74: LitVarStr var_2A8, " WHERE PeriInfo="
  loc_A6DF79: ConcatVar var_2B8
  loc_A6DF7D: ImpAdLdI2 MemVar_C3D064
  loc_A6DF80: CVarI2 var_2C8
  loc_A6DF83: ConcatVar var_2D8
  loc_A6DF87: LitVarStr var_2E8, " AND CodiOrco="
  loc_A6DF8C: ConcatVar var_2F8
  loc_A6DF90: FLdRfVar var_320
  loc_A6DF93: FLdRfVar var_310
  loc_A6DF96: LitVarStr var_30C, "CodiOrco"
  loc_A6DF9B: PopAdLdVar
  loc_A6DF9C: FLdRfVar var_2FC
  loc_A6DF9F: FLdPr var_F8
  loc_A6DFA2:  = Me.Fields
  loc_A6DFA7: FLdPr var_2FC
  loc_A6DFAA: from_stack_2 = Me.Item(from_stack_1)
  loc_A6DFAF: FLdPr var_310
  loc_A6DFB2:  = Me.Value
  loc_A6DFB7: FLdRfVar var_320
  loc_A6DFBA: ConcatVar var_330
  loc_A6DFBE: LitVarStr var_340, " AND CodiRece="
  loc_A6DFC3: ConcatVar var_350
  loc_A6DFC7: FLdRfVar var_378
  loc_A6DFCA: FLdRfVar var_368
  loc_A6DFCD: LitVarStr var_364, "CodiRece"
  loc_A6DFD2: PopAdLdVar
  loc_A6DFD3: FLdRfVar var_354
  loc_A6DFD6: FLdPr var_F8
  loc_A6DFD9:  = Me.Fields
  loc_A6DFDE: FLdPr var_354
  loc_A6DFE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A6DFE6: FLdPr var_368
  loc_A6DFE9:  = Me.Value
  loc_A6DFEE: FLdRfVar var_378
  loc_A6DFF1: ConcatVar var_388
  loc_A6DFF5: CStrVarVal var_38C
  loc_A6DFF9: Call EjecutarRsCls(from_stack_1v)
  loc_A6DFFE: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A6E00B: FFreeAd var_2FC = "": var_310 = "": var_354 = ""
  loc_A6E016: FFreeVar var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_1C8 = "": var_198 = "": var_1D8 = "": var_218 = "": var_1E8 = "": var_228 = "": var_238 = "": var_258 = "": var_278 = "": var_298 = "": var_2B8 = "": var_2D8 = "": var_2F8 = "": var_320 = "": var_330 = "": var_350 = "": var_378 = ""
  loc_A6E04B: FLdI2 arg_50
  loc_A6E04E: BranchF loc_A6E0D7
  loc_A6E051: FLdRfVar var_118
  loc_A6E054: FLdRfVar var_310
  loc_A6E057: LitVarStr var_D4, "CodiOrco"
  loc_A6E05C: PopAdLdVar
  loc_A6E05D: FLdRfVar var_2FC
  loc_A6E060: FLdPr var_F8
  loc_A6E063:  = Me.Fields
  loc_A6E068: FLdPr var_2FC
  loc_A6E06B: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E070: FLdPr var_310
  loc_A6E073:  = Me.Value
  loc_A6E078: FLdRfVar var_128
  loc_A6E07B: FLdRfVar var_368
  loc_A6E07E: LitVarStr var_E4, "CodiRece"
  loc_A6E083: PopAdLdVar
  loc_A6E084: FLdRfVar var_354
  loc_A6E087: FLdPr var_F8
  loc_A6E08A:  = Me.Fields
  loc_A6E08F: FLdPr var_354
  loc_A6E092: from_stack_2 = Me.Item(from_stack_1)
  loc_A6E097: FLdPr var_368
  loc_A6E09A:  = Me.Value
  loc_A6E09F: LitI2_Byte 0
  loc_A6E0A1: FLdRfVar var_128
  loc_A6E0A4: CStrVarTmp
  loc_A6E0A5: FStStrNoPop var_104
  loc_A6E0A8: FLdRfVar var_118
  loc_A6E0AB: CStrVarTmp
  loc_A6E0AC: FStStrNoPop var_100
  loc_A6E0AF: ImpAdLdI2 MemVar_C3D064
  loc_A6E0B2: CStrUI1
  loc_A6E0B4: FStStrNoPop var_FC
  loc_A6E0B7: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A6E0BC: FFreeStr var_FC = "": var_100 = ""
  loc_A6E0C5: FFreeAd var_2FC = "": var_354 = "": var_310 = ""
  loc_A6E0D0: FFreeVar var_118 = ""
  loc_A6E0D7: ExitProcHresult
  loc_A6E0D8: LitNothing
  loc_A6E0DA: FStAd var_F8 
  loc_A6E0DE: LitI4 0
  loc_A6E0E3: LitStr "No se pudo modificar el registro."
  loc_A6E0E6: LitStr vbCrLf
  loc_A6E0E9: ConcatStr
  loc_A6E0EA: FStStrNoPop var_FC
  loc_A6E0ED: LitStr "(Cod. "
  loc_A6E0F0: ConcatStr
  loc_A6E0F1: FStStrNoPop var_100
  loc_A6E0F4: FLdRfVar var_390
  loc_A6E0F7: ImpAdCallI2 Err 'rtcErrObj
  loc_A6E0FC: FStAdFunc var_2FC
  loc_A6E0FF: FLdPr var_2FC
  loc_A6E102:  = Err.Number
  loc_A6E107: ILdRf var_390
  loc_A6E10A: CStrI4
  loc_A6E10C: FStStrNoPop var_104
  loc_A6E10F: ConcatStr
  loc_A6E110: FStStrNoPop var_108
  loc_A6E113: LitStr ")"
  loc_A6E116: ConcatStr
  loc_A6E117: FStStrNoPop var_38C
  loc_A6E11A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A6E11F: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_A6E12C: FFree1Ad var_2FC
  loc_A6E12F: ExitProcHresult
End Sub

Public Sub Anular(PeriInfo, CodiOrco, CodiRece, FeanRece, BajaMoti, HaceRequery) 'A1A884
  'Data Table: 4128FC
  loc_A1A734: FDupVar
  loc_A1A73A: ILdRf arg_28
  loc_A1A73D: FStStrCopy var_98
  loc_A1A740: OnErrorGoto loc_A1A830
  loc_A1A743: FLdPr Me
  loc_A1A746: MemLdStr RsFrm
  loc_A1A749: FStAd var_9C 
  loc_A1A74D: LitStr "UPDATE recepcion"
  loc_A1A750: LitStr " SET FeanRece = "
  loc_A1A753: ConcatStr
  loc_A1A754: FStStrNoPop var_C0
  loc_A1A757: LitI4 1
  loc_A1A75C: LitI4 1
  loc_A1A761: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_A1A766: FStVarCopyObj var_BC
  loc_A1A769: FLdRfVar var_BC
  loc_A1A76C: FLdRfVar var_94
  loc_A1A76F: ImpAdCallI2 Format$(, )
  loc_A1A774: FStStrNoPop var_C4
  loc_A1A777: ConcatStr
  loc_A1A778: FStStrNoPop var_C8
  loc_A1A77B: LitStr ", BajaUsua = '"
  loc_A1A77E: ConcatStr
  loc_A1A77F: FStStrNoPop var_CC
  loc_A1A782: ImpAdLdI4 MemVar_C3D03C
  loc_A1A785: ConcatStr
  loc_A1A786: FStStrNoPop var_D0
  loc_A1A789: LitStr "', BajaFeho = Now(), BajaMoti = '"
  loc_A1A78C: ConcatStr
  loc_A1A78D: FStStrNoPop var_D4
  loc_A1A790: ILdRf var_98
  loc_A1A793: ConcatStr
  loc_A1A794: FStStrNoPop var_D8
  loc_A1A797: LitStr "'"
  loc_A1A79A: ConcatStr
  loc_A1A79B: FStStrNoPop var_DC
  loc_A1A79E: LitStr " WHERE PeriInfo = "
  loc_A1A7A1: ConcatStr
  loc_A1A7A2: FStStrNoPop var_E0
  loc_A1A7A5: FLdI2 PeriInfo
  loc_A1A7A8: CStrUI1
  loc_A1A7AA: FStStrNoPop var_E4
  loc_A1A7AD: ConcatStr
  loc_A1A7AE: FStStrNoPop var_E8
  loc_A1A7B1: LitStr " AND CodiOrco = "
  loc_A1A7B4: ConcatStr
  loc_A1A7B5: FStStrNoPop var_EC
  loc_A1A7B8: FLdI2 CodiOrco
  loc_A1A7BB: CStrUI1
  loc_A1A7BD: FStStrNoPop var_F0
  loc_A1A7C0: ConcatStr
  loc_A1A7C1: FStStrNoPop var_F4
  loc_A1A7C4: LitStr " AND CodiRece = "
  loc_A1A7C7: ConcatStr
  loc_A1A7C8: FStStrNoPop var_F8
  loc_A1A7CB: FLdI2 CodiRece
  loc_A1A7CE: CStrUI1
  loc_A1A7D0: FStStrNoPop var_FC
  loc_A1A7D3: ConcatStr
  loc_A1A7D4: FStStrNoPop var_100
  loc_A1A7D7: LitStr ";"
  loc_A1A7DA: ConcatStr
  loc_A1A7DB: FStStrNoPop var_104
  loc_A1A7DE: Call EjecutarRsCls(from_stack_1v)
  loc_A1A7E3: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_A1A80A: FFree1Var var_BC = ""
  loc_A1A80D: ILdI2 arg_2C
  loc_A1A810: BranchF loc_A1A829
  loc_A1A813: LitI2_Byte 0
  loc_A1A815: LitI4 0
  loc_A1A81A: LitI4 0
  loc_A1A81F: LitI4 0
  loc_A1A824: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A1A829: ExitProcHresult
  loc_A1A82A: LitNothing
  loc_A1A82C: FStAd var_9C 
  loc_A1A830: LitI4 0
  loc_A1A835: LitStr "No se pudo anular el registro."
  loc_A1A838: LitStr vbCrLf
  loc_A1A83B: ConcatStr
  loc_A1A83C: FStStrNoPop var_C0
  loc_A1A83F: LitStr "(Cod. "
  loc_A1A842: ConcatStr
  loc_A1A843: FStStrNoPop var_C4
  loc_A1A846: FLdRfVar var_10C
  loc_A1A849: ImpAdCallI2 Err 'rtcErrObj
  loc_A1A84E: FStAdFunc var_108
  loc_A1A851: FLdPr var_108
  loc_A1A854:  = Err.Number
  loc_A1A859: ILdRf var_10C
  loc_A1A85C: CStrI4
  loc_A1A85E: FStStrNoPop var_C8
  loc_A1A861: ConcatStr
  loc_A1A862: FStStrNoPop var_CC
  loc_A1A865: LitStr ")"
  loc_A1A868: ConcatStr
  loc_A1A869: FStStrNoPop var_D0
  loc_A1A86C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1A871: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1A87E: FFree1Ad var_108
  loc_A1A881: ExitProcHresult
  loc_A1A882: FStStrNoPop var_7BF0
End Sub

Public Sub Encontrar(PeriInfo, CodiOrco, CodiRece, HaceRequery) 'A1C6B8
  'Data Table: 4128FC
  loc_A1C52E: ILdRf PeriInfo
  loc_A1C531: FStStrCopy var_88
  loc_A1C534: ILdRf CodiOrco
  loc_A1C537: FStStrCopy var_8C
  loc_A1C53A: ILdRf CodiRece
  loc_A1C53D: FStStrCopy var_90
  loc_A1C542: On Error Resume Next
  loc_A1C547: FLdPr Me
  loc_A1C54A: MemLdStr RsFrm
  loc_A1C54D: FStAd var_94 
  loc_A1C553: ILdRf var_88
  loc_A1C556: LitStr vbNullString
  loc_A1C559: EqStr
  loc_A1C55B: ILdRf var_8C
  loc_A1C55E: LitStr vbNullString
  loc_A1C561: EqStr
  loc_A1C563: AndI4
  loc_A1C564: ILdRf var_90
  loc_A1C567: LitStr vbNullString
  loc_A1C56A: EqStr
  loc_A1C56C: AndI4
  loc_A1C56D: FLdRfVar var_98
  loc_A1C570: FLdPr var_94
  loc_A1C573:  = Me.RecordCount
  loc_A1C578: ILdRf var_98
  loc_A1C57B: LitI4 0
  loc_A1C580: GtI4
  loc_A1C581: AndI4
  loc_A1C582: BranchF loc_A1C63A
  loc_A1C587: LitI2_Byte &HFF
  loc_A1C589: FStI2 HaceRequery
  loc_A1C58E: FLdRfVar var_C0
  loc_A1C591: FLdRfVar var_B0
  loc_A1C594: LitVarStr var_AC, "PeriInfo"
  loc_A1C599: PopAdLdVar
  loc_A1C59A: FLdRfVar var_9C
  loc_A1C59D: FLdPr var_94
  loc_A1C5A0:  = Me.Fields
  loc_A1C5A5: FLdPr var_9C
  loc_A1C5A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C5AD: FLdPr var_B0
  loc_A1C5B0:  = Me.Value
  loc_A1C5B5: FLdRfVar var_C0
  loc_A1C5B8: CStrVarTmp
  loc_A1C5B9: FStStr var_88
  loc_A1C5BC: FFreeAd var_9C = ""
  loc_A1C5C3: FFree1Var var_C0 = ""
  loc_A1C5C8: FLdRfVar var_C0
  loc_A1C5CB: FLdRfVar var_B0
  loc_A1C5CE: LitVarStr var_AC, "CodiOrco"
  loc_A1C5D3: PopAdLdVar
  loc_A1C5D4: FLdRfVar var_9C
  loc_A1C5D7: FLdPr var_94
  loc_A1C5DA:  = Me.Fields
  loc_A1C5DF: FLdPr var_9C
  loc_A1C5E2: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C5E7: FLdPr var_B0
  loc_A1C5EA:  = Me.Value
  loc_A1C5EF: FLdRfVar var_C0
  loc_A1C5F2: CStrVarTmp
  loc_A1C5F3: FStStr var_8C
  loc_A1C5F6: FFreeAd var_9C = ""
  loc_A1C5FD: FFree1Var var_C0 = ""
  loc_A1C602: FLdRfVar var_C0
  loc_A1C605: FLdRfVar var_B0
  loc_A1C608: LitVarStr var_AC, "CodiRece"
  loc_A1C60D: PopAdLdVar
  loc_A1C60E: FLdRfVar var_9C
  loc_A1C611: FLdPr var_94
  loc_A1C614:  = Me.Fields
  loc_A1C619: FLdPr var_9C
  loc_A1C61C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C621: FLdPr var_B0
  loc_A1C624:  = Me.Value
  loc_A1C629: FLdRfVar var_C0
  loc_A1C62C: CStrVarTmp
  loc_A1C62D: FStStr var_90
  loc_A1C630: FFreeAd var_9C = ""
  loc_A1C637: FFree1Var var_C0 = ""
  loc_A1C63E: LitNothing
  loc_A1C640: FStAd var_94 
  loc_A1C646: FLdI2 HaceRequery
  loc_A1C649: BranchF loc_A1C653
  loc_A1C64E: Call Requery()
  loc_A1C655: LitStr "PeriInfo = '"
  loc_A1C658: ILdRf var_88
  loc_A1C65B: ConcatStr
  loc_A1C65C: FStStrNoPop var_C4
  loc_A1C65F: LitStr "'"
  loc_A1C662: ConcatStr
  loc_A1C663: PopTmpLdAdStr
  loc_A1C667: Call Find(from_stack_1v)
  loc_A1C66C: FFreeStr var_C4 = ""
  loc_A1C675: LitStr "CodiOrco = '"
  loc_A1C678: ILdRf var_8C
  loc_A1C67B: ConcatStr
  loc_A1C67C: FStStrNoPop var_C4
  loc_A1C67F: LitStr "'"
  loc_A1C682: ConcatStr
  loc_A1C683: PopTmpLdAdStr
  loc_A1C687: Call Find(from_stack_1v)
  loc_A1C68C: FFreeStr var_C4 = ""
  loc_A1C695: LitStr "CodiRece = '"
  loc_A1C698: ILdRf var_90
  loc_A1C69B: ConcatStr
  loc_A1C69C: FStStrNoPop var_C4
  loc_A1C69F: LitStr "'"
  loc_A1C6A2: ConcatStr
  loc_A1C6A3: PopTmpLdAdStr
  loc_A1C6A7: Call Find(from_stack_1v)
  loc_A1C6AC: FFreeStr var_C4 = ""
  loc_A1C6B5: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '974A84
  'Data Table: 4128FC
  loc_974A5C: ILdRf sSelect
  loc_974A5F: FStStrCopy var_88
  loc_974A62: FLdPr Me
  loc_974A65: MemLdRfVar from_stack_1.RsFrm
  loc_974A68: ILdRf var_88
  loc_974A6B: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_974A70: LitVarStr var_98, "Primary"
  loc_974A75: PopAdLdVar
  loc_974A76: FLdPr Me
  loc_974A79: LateIdCall
  loc_974A81: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '963E84
  'Data Table: 4128FC
  loc_963E6C: ILdRf sSelect
  loc_963E6F: FStStrCopy var_88
  loc_963E72: FLdPr Me
  loc_963E75: MemLdRfVar from_stack_1.global_56
  loc_963E78: ILdRf var_88
  loc_963E7B: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_963E80: ExitProcHresult
  loc_963E81: MemLdPr global_15103
End Sub

Public Sub Requery() '9697E0
  'Data Table: 4128FC
  loc_9697C0: FLdPr Me
  loc_9697C3: MemLdRfVar from_stack_1.RsFrm
  loc_9697C6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9697CB: LitVarStr var_94, "Primary"
  loc_9697D0: PopAdLdVar
  loc_9697D1: FLdPr Me
  loc_9697D4: LateIdCall
  loc_9697DC: ExitProcHresult
  loc_9697DD: ILdR8 Me
End Sub

Public Property Get DataSource() '974A24
  'Data Table: 4128FC
  loc_974A00: ZeroRetVal
  loc_974A02: FLdRfVar var_8C
  loc_974A05: FLdPr Me
  loc_974A08: MemLdPr RsFrm
  loc_974A0B:  = Me.DataSource
  loc_974A10: ILdRf var_8C
  loc_974A13: CastAd
  loc_974A16: FStAdFunc var_88
  loc_974A19: FFree1Ad var_8C
  loc_974A1C: ExitProcCbHresult
End Sub

Public Function ValidaAnular(CodiOrco, CodiRece) 'A11ED4
  'Data Table: 4128FC
  loc_A11D8C: ZeroRetVal
  loc_A11D8E: LitStr "SELECT IdImpu"
  loc_A11D91: LitStr " FROM itemrecepcion"
  loc_A11D94: ConcatStr
  loc_A11D95: FStStrNoPop var_8C
  loc_A11D98: LitStr " WHERE PeriInfo = "
  loc_A11D9B: ConcatStr
  loc_A11D9C: FStStrNoPop var_90
  loc_A11D9F: ImpAdLdI2 MemVar_C3D064
  loc_A11DA2: CStrUI1
  loc_A11DA4: FStStrNoPop ValidaAnular
  loc_A11DA7: ConcatStr
  loc_A11DA8: FStStrNoPop var_98
  loc_A11DAB: LitStr " AND CodiOrco = "
  loc_A11DAE: ConcatStr
  loc_A11DAF: FStStrNoPop var_9C
  loc_A11DB2: ILdRf CodiOrco
  loc_A11DB5: CStrI4
  loc_A11DB7: FStStrNoPop var_A0
  loc_A11DBA: ConcatStr
  loc_A11DBB: FStStrNoPop var_A4
  loc_A11DBE: LitStr " AND CodiRece = "
  loc_A11DC1: ConcatStr
  loc_A11DC2: FStStrNoPop var_A8
  loc_A11DC5: FLdI2 CodiRece
  loc_A11DC8: CStrUI1
  loc_A11DCA: FStStrNoPop var_AC
  loc_A11DCD: ConcatStr
  loc_A11DCE: FStStrNoPop var_B0
  loc_A11DD1: LitStr " AND IdImpu > 0;"
  loc_A11DD4: ConcatStr
  loc_A11DD5: FStStrNoPop var_B4
  loc_A11DD8: Call EjecutarRsCls(from_stack_1v)
  loc_A11DDD: FFreeStr var_8C = "": var_90 = "": ValidaAnular = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A11DF6: FLdRfVar var_B8
  loc_A11DF9: FLdPr Me
  loc_A11DFC: MemLdPr global_56
  loc_A11DFF:  = Me.RecordCount
  loc_A11E04: ILdRf var_B8
  loc_A11E07: LitI4 0
  loc_A11E0C: GtI4
  loc_A11E0D: BranchF loc_A11ECD
  loc_A11E10: FLdRfVar var_B8
  loc_A11E13: FLdPr Me
  loc_A11E16: MemLdPr global_56
  loc_A11E19:  = Me.RecordCount
  loc_A11E1E: LitVarStr var_FC, "s"
  loc_A11E23: FStVarCopyObj var_10C
  loc_A11E26: FLdRfVar var_10C
  loc_A11E29: LitVarStr var_DC, vbNullString
  loc_A11E2E: FStVarCopyObj var_EC
  loc_A11E31: FLdRfVar var_EC
  loc_A11E34: ILdRf var_B8
  loc_A11E37: LitI4 1
  loc_A11E3C: EqI4
  loc_A11E3D: CVarBoolI2 var_CC
  loc_A11E41: FLdRfVar var_11C
  loc_A11E44: ImpAdCallFPR4  = IIf(, , )
  loc_A11E49: FLdRfVar var_11C
  loc_A11E4C: CStrVarTmp
  loc_A11E4D: FStStr var_BC
  loc_A11E50: FFreeVar var_CC = "": var_EC = "": var_10C = ""
  loc_A11E5B: LitStr "La Recepción tiene "
  loc_A11E5E: FLdRfVar var_B8
  loc_A11E61: FLdPr Me
  loc_A11E64: MemLdPr global_56
  loc_A11E67:  = Me.RecordCount
  loc_A11E6C: ILdRf var_B8
  loc_A11E6F: CStrI4
  loc_A11E71: FStStrNoPop var_8C
  loc_A11E74: ConcatStr
  loc_A11E75: FStStrNoPop var_90
  loc_A11E78: LitStr " ítem/s"
  loc_A11E7B: ConcatStr
  loc_A11E7C: FStStrNoPop ValidaAnular
  loc_A11E7F: ILdRf var_BC
  loc_A11E82: ConcatStr
  loc_A11E83: FStStrNoPop var_98
  loc_A11E86: LitStr " DEVENGADO/S"
  loc_A11E89: ConcatStr
  loc_A11E8A: CVarStr var_10C
  loc_A11E8D: FLdRfVar var_BC
  loc_A11E90: CVarRef
  loc_A11E95: FLdRfVar var_EC
  loc_A11E98: ImpAdCallFPR4  = Ucase()
  loc_A11E9D: FLdRfVar var_EC
  loc_A11EA0: ConcatVar var_11C
  loc_A11EA4: LitVarStr var_DC, ". Verifique..."
  loc_A11EA9: ConcatVar var_12C
  loc_A11EAD: CStrVarTmp
  loc_A11EAE: FStStr var_88
  loc_A11EB1: FFreeStr var_8C = "": var_90 = "": ValidaAnular = ""
  loc_A11EBC: FFreeVar var_10C = "": var_EC = "": var_11C = ""
  loc_A11EC7: ExitProcCbHresult
  loc_A11ECD: ExitProcCbHresult
End Function

Public Function ValidaModificar(CodiOrco, CodiRece) '9BAEFC
  'Data Table: 4128FC
  loc_9BAE64: ZeroRetVal
  loc_9BAE66: LitStr "SELECT *"
  loc_9BAE69: LitStr " FROM recepcion"
  loc_9BAE6C: ConcatStr
  loc_9BAE6D: FStStrNoPop var_8C
  loc_9BAE70: LitStr " WHERE PeriInfo = "
  loc_9BAE73: ConcatStr
  loc_9BAE74: FStStrNoPop var_90
  loc_9BAE77: ImpAdLdI2 MemVar_C3D064
  loc_9BAE7A: CStrUI1
  loc_9BAE7C: FStStrNoPop ValidaModificar
  loc_9BAE7F: ConcatStr
  loc_9BAE80: FStStrNoPop var_98
  loc_9BAE83: LitStr " AND CodiOrco = "
  loc_9BAE86: ConcatStr
  loc_9BAE87: FStStrNoPop var_9C
  loc_9BAE8A: ILdRf CodiOrco
  loc_9BAE8D: CStrI4
  loc_9BAE8F: FStStrNoPop var_A0
  loc_9BAE92: ConcatStr
  loc_9BAE93: FStStrNoPop var_A4
  loc_9BAE96: LitStr " AND CodiRece = "
  loc_9BAE99: ConcatStr
  loc_9BAE9A: FStStrNoPop var_A8
  loc_9BAE9D: FLdI2 CodiRece
  loc_9BAEA0: CStrUI1
  loc_9BAEA2: FStStrNoPop var_AC
  loc_9BAEA5: ConcatStr
  loc_9BAEA6: FStStrNoPop var_B0
  loc_9BAEA9: LitStr " AND FeanRece IS NOT NULL;"
  loc_9BAEAC: ConcatStr
  loc_9BAEAD: FStStrNoPop var_B4
  loc_9BAEB0: Call EjecutarRsCls(from_stack_1v)
  loc_9BAEB5: FFreeStr var_8C = "": var_90 = "": ValidaModificar = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9BAECE: FLdRfVar var_B8
  loc_9BAED1: FLdPr Me
  loc_9BAED4: MemLdPr global_56
  loc_9BAED7:  = Me.RecordCount
  loc_9BAEDC: ILdRf var_B8
  loc_9BAEDF: LitI4 0
  loc_9BAEE4: GtI4
  loc_9BAEE5: BranchF loc_9BAEF4
  loc_9BAEE8: LitStr "La Recepción está ANULADA. Reintente..."
  loc_9BAEEB: FStStrCopy var_88
  loc_9BAEEE: ExitProcCbHresult
  loc_9BAEF4: ExitProcCbHresult
End Function

Public Function ValidaModificarTodo() '9FC798
  'Data Table: 4128FC
  loc_9FC674: ZeroRetVal
  loc_9FC676: LitStr "SELECT IdImpu FROM itemrecepcion WHERE PeriInfo = "
  loc_9FC679: ImpAdLdI2 MemVar_C3D064
  loc_9FC67C: CStrUI1
  loc_9FC67E: FStStrNoPop var_8C
  loc_9FC681: ConcatStr
  loc_9FC682: FStStrNoPop var_90
  loc_9FC685: LitStr " AND CodiOrco = "
  loc_9FC688: ConcatStr
  loc_9FC689: CVarStr var_C8
  loc_9FC68C: FLdRfVar var_B8
  loc_9FC68F: FLdRfVar var_A8
  loc_9FC692: LitVarStr var_A4, "CodiOrco"
  loc_9FC697: PopAdLdVar
  loc_9FC698: FLdRfVar ValidaModificarTodo
  loc_9FC69B: FLdPr Me
  loc_9FC69E: MemLdPr RsFrm
  loc_9FC6A1:  = Me.Fields
  loc_9FC6A6: FLdPr ValidaModificarTodo
  loc_9FC6A9: from_stack_2 = Me.Item(from_stack_1)
  loc_9FC6AE: FLdPr var_A8
  loc_9FC6B1:  = Me.Value
  loc_9FC6B6: FLdRfVar var_B8
  loc_9FC6B9: ConcatVar var_D8
  loc_9FC6BD: LitVarStr var_E8, " AND CodiRece = "
  loc_9FC6C2: ConcatVar var_F8
  loc_9FC6C6: FLdRfVar var_120
  loc_9FC6C9: FLdRfVar var_110
  loc_9FC6CC: LitVarStr var_10C, "CodiRece"
  loc_9FC6D1: PopAdLdVar
  loc_9FC6D2: FLdRfVar var_FC
  loc_9FC6D5: FLdPr Me
  loc_9FC6D8: MemLdPr RsFrm
  loc_9FC6DB:  = Me.Fields
  loc_9FC6E0: FLdPr var_FC
  loc_9FC6E3: from_stack_2 = Me.Item(from_stack_1)
  loc_9FC6E8: FLdPr var_110
  loc_9FC6EB:  = Me.Value
  loc_9FC6F0: FLdRfVar var_120
  loc_9FC6F3: ConcatVar var_130
  loc_9FC6F7: LitVarStr var_140, ";"
  loc_9FC6FC: ConcatVar var_150
  loc_9FC700: CStrVarVal var_154
  loc_9FC704: Call EjecutarRsCls(from_stack_1v)
  loc_9FC709: FFreeStr var_8C = "": var_90 = ""
  loc_9FC712: FFreeAd ValidaModificarTodo = "": var_A8 = "": var_FC = ""
  loc_9FC71D: FFreeVar var_C8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_120 = "": var_130 = ""
  loc_9FC72E: FLdRfVar var_158
  loc_9FC731: FLdPr Me
  loc_9FC734: MemLdPr global_56
  loc_9FC737:  = Me.RecordCount
  loc_9FC73C: ILdRf var_158
  loc_9FC73F: LitI4 0
  loc_9FC744: GtI4
  loc_9FC745: BranchF loc_9FC790
  loc_9FC748: FLdRfVar var_B8
  loc_9FC74B: FLdRfVar var_A8
  loc_9FC74E: LitVarStr var_A4, "IdImpu"
  loc_9FC753: PopAdLdVar
  loc_9FC754: FLdRfVar ValidaModificarTodo
  loc_9FC757: FLdPr Me
  loc_9FC75A: MemLdPr global_56
  loc_9FC75D:  = Me.Fields
  loc_9FC762: FLdPr ValidaModificarTodo
  loc_9FC765: from_stack_2 = Me.Item(from_stack_1)
  loc_9FC76A: FLdPr var_A8
  loc_9FC76D:  = Me.Value
  loc_9FC772: FLdRfVar var_B8
  loc_9FC775: LitVarI2 var_E8, 0
  loc_9FC77A: HardType
  loc_9FC77B: GtVarBool
  loc_9FC77D: FFreeAd ValidaModificarTodo = ""
  loc_9FC784: FFree1Var var_B8 = ""
  loc_9FC787: BranchF loc_9FC790
  loc_9FC78A: LitStr "La Recepción está ANULADA. Reintente..."
  loc_9FC78D: FStStrCopy var_88
  loc_9FC790: ExitProcCbHresult
End Function

Public Function BuscaDepaTico(PeriInfo, CodiOrco) '9EFBEC
  'Data Table: 4128FC
  loc_9EFACC: ILdRf PeriInfo
  loc_9EFACF: FStStrCopy var_98
  loc_9EFAD2: ILdRf CodiOrco
  loc_9EFAD5: FStStrCopy var_9C
  loc_9EFAD8: ZeroRetValVar
  loc_9EFADA: ILdRf var_98
  loc_9EFADD: LitStr vbNullString
  loc_9EFAE0: EqStr
  loc_9EFAE2: ILdRf var_9C
  loc_9EFAE5: LitStr vbNullString
  loc_9EFAE8: EqStr
  loc_9EFAEA: AndI4
  loc_9EFAEB: BranchF loc_9EFB64
  loc_9EFAEE: FLdRfVar var_C4
  loc_9EFAF1: FLdRfVar var_B4
  loc_9EFAF4: LitVarStr var_B0, "PeriInfo"
  loc_9EFAF9: PopAdLdVar
  loc_9EFAFA: FLdRfVar var_A0
  loc_9EFAFD: FLdPr Me
  loc_9EFB00: MemLdPr RsFrm
  loc_9EFB03:  = Me.Fields
  loc_9EFB08: FLdPr var_A0
  loc_9EFB0B: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFB10: FLdPr var_B4
  loc_9EFB13:  = Me.Value
  loc_9EFB18: FLdRfVar var_C4
  loc_9EFB1B: CStrVarTmp
  loc_9EFB1C: FStStr var_98
  loc_9EFB1F: FFreeAd var_A0 = ""
  loc_9EFB26: FFree1Var var_C4 = ""
  loc_9EFB29: FLdRfVar var_C4
  loc_9EFB2C: FLdRfVar var_B4
  loc_9EFB2F: LitVarStr var_B0, "CodiOrco"
  loc_9EFB34: PopAdLdVar
  loc_9EFB35: FLdRfVar var_A0
  loc_9EFB38: FLdPr Me
  loc_9EFB3B: MemLdPr RsFrm
  loc_9EFB3E:  = Me.Fields
  loc_9EFB43: FLdPr var_A0
  loc_9EFB46: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFB4B: FLdPr var_B4
  loc_9EFB4E:  = Me.Value
  loc_9EFB53: FLdRfVar var_C4
  loc_9EFB56: CStrVarTmp
  loc_9EFB57: FStStr var_9C
  loc_9EFB5A: FFreeAd var_A0 = ""
  loc_9EFB61: FFree1Var var_C4 = ""
  loc_9EFB64: LitStr "SELECT DipaTico FROM tipocompra LEFT JOIN ordencompra ON ordencompra.CodiTico = tipocompra.CodiTico"
  loc_9EFB67: LitStr " WHERE PeriInfo = "
  loc_9EFB6A: ConcatStr
  loc_9EFB6B: FStStrNoPop var_C8
  loc_9EFB6E: ILdRf var_98
  loc_9EFB71: ConcatStr
  loc_9EFB72: FStStrNoPop var_CC
  loc_9EFB75: LitStr " AND CodiOrco = "
  loc_9EFB78: ConcatStr
  loc_9EFB79: FStStrNoPop var_D0
  loc_9EFB7C: ILdRf var_9C
  loc_9EFB7F: ConcatStr
  loc_9EFB80: FStStrNoPop var_D4
  loc_9EFB83: Call EjecutarRsCls(from_stack_1v)
  loc_9EFB88: FFreeStr var_C8 = "": var_CC = "": var_D0 = ""
  loc_9EFB93: FLdRfVar var_D8
  loc_9EFB96: FLdPr Me
  loc_9EFB99: MemLdPr global_56
  loc_9EFB9C:  = Me.RecordCount
  loc_9EFBA1: ILdRf var_D8
  loc_9EFBA4: LitI4 0
  loc_9EFBA9: GtI4
  loc_9EFBAA: BranchF loc_9EFBDD
  loc_9EFBAD: FLdRfVar var_B4
  loc_9EFBB0: LitVarStr var_B0, "DipaTico"
  loc_9EFBB5: PopAdLdVar
  loc_9EFBB6: FLdRfVar var_A0
  loc_9EFBB9: FLdPr Me
  loc_9EFBBC: MemLdPr global_56
  loc_9EFBBF:  = Me.Fields
  loc_9EFBC4: FLdPr var_A0
  loc_9EFBC7: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFBCC: FLdZeroAd var_B4
  loc_9EFBCF: CVarAd
  loc_9EFBD3: FStVar BuscaDepaTico
  loc_9EFBD7: FFree1Ad var_A0
  loc_9EFBDA: Branch loc_9EFBE6
  loc_9EFBDD: LitVarI2 var_B0, 0
  loc_9EFBE2: FStVar BuscaDepaTico
  loc_9EFBE6: ExitProcCbHresult
End Function

Public Function BuscaUltimaRece(PeriInfo, CodiOrco) '9EFD64
  'Data Table: 4128FC
  loc_9EFC44: ILdRf PeriInfo
  loc_9EFC47: FStStrCopy var_98
  loc_9EFC4A: ILdRf CodiOrco
  loc_9EFC4D: FStStrCopy var_9C
  loc_9EFC50: ZeroRetValVar
  loc_9EFC52: ILdRf var_98
  loc_9EFC55: LitStr vbNullString
  loc_9EFC58: EqStr
  loc_9EFC5A: ILdRf var_9C
  loc_9EFC5D: LitStr vbNullString
  loc_9EFC60: EqStr
  loc_9EFC62: AndI4
  loc_9EFC63: BranchF loc_9EFCDC
  loc_9EFC66: FLdRfVar var_C4
  loc_9EFC69: FLdRfVar var_B4
  loc_9EFC6C: LitVarStr var_B0, "PeriInfo"
  loc_9EFC71: PopAdLdVar
  loc_9EFC72: FLdRfVar var_A0
  loc_9EFC75: FLdPr Me
  loc_9EFC78: MemLdPr RsFrm
  loc_9EFC7B:  = Me.Fields
  loc_9EFC80: FLdPr var_A0
  loc_9EFC83: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFC88: FLdPr var_B4
  loc_9EFC8B:  = Me.Value
  loc_9EFC90: FLdRfVar var_C4
  loc_9EFC93: CStrVarTmp
  loc_9EFC94: FStStr var_98
  loc_9EFC97: FFreeAd var_A0 = ""
  loc_9EFC9E: FFree1Var var_C4 = ""
  loc_9EFCA1: FLdRfVar var_C4
  loc_9EFCA4: FLdRfVar var_B4
  loc_9EFCA7: LitVarStr var_B0, "CodiOrco"
  loc_9EFCAC: PopAdLdVar
  loc_9EFCAD: FLdRfVar var_A0
  loc_9EFCB0: FLdPr Me
  loc_9EFCB3: MemLdPr RsFrm
  loc_9EFCB6:  = Me.Fields
  loc_9EFCBB: FLdPr var_A0
  loc_9EFCBE: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFCC3: FLdPr var_B4
  loc_9EFCC6:  = Me.Value
  loc_9EFCCB: FLdRfVar var_C4
  loc_9EFCCE: CStrVarTmp
  loc_9EFCCF: FStStr var_9C
  loc_9EFCD2: FFreeAd var_A0 = ""
  loc_9EFCD9: FFree1Var var_C4 = ""
  loc_9EFCDC: LitStr "SELECT CodiRece FROM recepcion WHERE PeriInfo = "
  loc_9EFCDF: ILdRf var_98
  loc_9EFCE2: ConcatStr
  loc_9EFCE3: FStStrNoPop var_C8
  loc_9EFCE6: LitStr " AND CodiOrco = "
  loc_9EFCE9: ConcatStr
  loc_9EFCEA: FStStrNoPop var_CC
  loc_9EFCED: ILdRf var_9C
  loc_9EFCF0: ConcatStr
  loc_9EFCF1: FStStrNoPop var_D0
  loc_9EFCF4: LitStr " ORDER BY CodiRece DESC LIMIT 1"
  loc_9EFCF7: ConcatStr
  loc_9EFCF8: FStStrNoPop var_D4
  loc_9EFCFB: Call EjecutarRsCls(from_stack_1v)
  loc_9EFD00: FFreeStr var_C8 = "": var_CC = "": var_D0 = ""
  loc_9EFD0B: FLdRfVar var_D8
  loc_9EFD0E: FLdPr Me
  loc_9EFD11: MemLdPr global_56
  loc_9EFD14:  = Me.RecordCount
  loc_9EFD19: ILdRf var_D8
  loc_9EFD1C: LitI4 0
  loc_9EFD21: GtI4
  loc_9EFD22: BranchF loc_9EFD55
  loc_9EFD25: FLdRfVar var_B4
  loc_9EFD28: LitVarStr var_B0, "CodiRece"
  loc_9EFD2D: PopAdLdVar
  loc_9EFD2E: FLdRfVar var_A0
  loc_9EFD31: FLdPr Me
  loc_9EFD34: MemLdPr global_56
  loc_9EFD37:  = Me.Fields
  loc_9EFD3C: FLdPr var_A0
  loc_9EFD3F: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFD44: FLdZeroAd var_B4
  loc_9EFD47: CVarAd
  loc_9EFD4B: FStVar BuscaUltimaRece
  loc_9EFD4F: FFree1Ad var_A0
  loc_9EFD52: Branch loc_9EFD5E
  loc_9EFD55: LitVarI2 var_B0, 1
  loc_9EFD5A: FStVar BuscaUltimaRece
  loc_9EFD5E: ExitProcCbHresult
End Function

Public Sub ActualizaItemRecepcionCantItre(CantItre, PeriInfo, CodiOrco, CodiRece, CodiItco, AlteItco) '9DACC4
  'Data Table: 4128FC
  loc_9DAC00: LitStr "UPDATE itemrecepcion SET CantItre='"
  loc_9DAC03: LitI4 0
  loc_9DAC08: LitI4 -1
  loc_9DAC0D: LitI4 1
  loc_9DAC12: LitStr "."
  loc_9DAC15: LitStr ","
  loc_9DAC18: FLdFPR8 CantItre
  loc_9DAC1B: CStrR8
  loc_9DAC1D: FStStrNoPop var_88
  loc_9DAC20: ImpAdCallI2 Replace(, , , , , )
  loc_9DAC25: FStStrNoPop var_8C
  loc_9DAC28: ConcatStr
  loc_9DAC29: FStStrNoPop var_90
  loc_9DAC2C: LitStr "' WHERE PeriInfo='"
  loc_9DAC2F: ConcatStr
  loc_9DAC30: FStStrNoPop var_94
  loc_9DAC33: FLdI2 CodiOrco
  loc_9DAC36: CStrUI1
  loc_9DAC38: FStStrNoPop var_98
  loc_9DAC3B: ConcatStr
  loc_9DAC3C: FStStrNoPop var_9C
  loc_9DAC3F: LitStr "' AND CodiOrco='"
  loc_9DAC42: ConcatStr
  loc_9DAC43: FStStrNoPop var_A0
  loc_9DAC46: ILdRf CodiRece
  loc_9DAC49: CStrI4
  loc_9DAC4B: FStStrNoPop var_A4
  loc_9DAC4E: ConcatStr
  loc_9DAC4F: FStStrNoPop var_A8
  loc_9DAC52: LitStr "' AND CodiRece='"
  loc_9DAC55: ConcatStr
  loc_9DAC56: FStStrNoPop var_AC
  loc_9DAC59: FLdI2 CodiItco
  loc_9DAC5C: CStrUI1
  loc_9DAC5E: FStStrNoPop var_B0
  loc_9DAC61: ConcatStr
  loc_9DAC62: FStStrNoPop var_B4
  loc_9DAC65: LitStr "' AND CodiItco='"
  loc_9DAC68: ConcatStr
  loc_9DAC69: FStStrNoPop var_B8
  loc_9DAC6C: FLdI2 AlteItco
  loc_9DAC6F: CStrUI1
  loc_9DAC71: FStStrNoPop var_BC
  loc_9DAC74: ConcatStr
  loc_9DAC75: FStStrNoPop var_C0
  loc_9DAC78: LitStr "' AND AlteItco='"
  loc_9DAC7B: ConcatStr
  loc_9DAC7C: FStStrNoPop var_C4
  loc_9DAC7F: FLdI2 arg_24
  loc_9DAC82: CStrUI1
  loc_9DAC84: FStStrNoPop var_C8
  loc_9DAC87: ConcatStr
  loc_9DAC88: FStStrNoPop var_CC
  loc_9DAC8B: LitStr "' ;"
  loc_9DAC8E: ConcatStr
  loc_9DAC8F: FStStrNoPop var_D0
  loc_9DAC92: Call EjecutarRsCls(from_stack_1v)
  loc_9DAC97: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_9DACC0: ExitProcHresult
End Sub

Private Function Proc_29_29_974BF0() '974BF0
  'Data Table: 4128FC
  loc_974BCC: LitStr "Primary"
  loc_974BCF: FLdPr Me
  loc_974BD2: LateIdLdVar var_94 DispID_4 0
  loc_974BD9: CastAdVar Me
  loc_974BDD: FStAdFunc var_98
  loc_974BE0: FLdPr var_98
  loc_974BE8: FFree1Ad var_98
  loc_974BEB: FFree1Var var_94 = ""
  loc_974BEE: ExitProcHresult
End Function

Private Function Proc_29_30_963D08(arg_C) '963D08
  'Data Table: 4128FC
  loc_963CF0: ILdRf arg_C
  loc_963CF3: FStStrCopy var_88
  loc_963CF6: FLdPr Me
  loc_963CF9: MemLdRfVar from_stack_1.global_60
  loc_963CFC: ILdRf var_88
  loc_963CFF: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_963D04: ExitProcHresult
  loc_963D05: FLdPr arg_600
End Function

Private Function Proc_29_31_96991C(arg_C) '96991C
  'Data Table: 4128FC
  loc_969900: ILdI4 arg_C
  loc_969903: FStStrCopy var_88
  loc_969906: ILdRf var_88
  loc_969909: LitStr "Primary"
  loc_96990C: EqStr
  loc_96990E: BranchF loc_96991B
  loc_969911: FLdPr Me
  loc_969914: MemLdStr RsFrm
  loc_969917: IStAd
  loc_96991B: ExitProcHresult
End Function
