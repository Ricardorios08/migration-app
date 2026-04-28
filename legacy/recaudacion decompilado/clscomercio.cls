VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clscomercio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40684C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40685B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40686A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9ED4BC
  'Data Table: 4066B8
  loc_9ED494: FLdRfVar var_88
  loc_9ED497: FLdPr Me
  loc_9ED49A: MemLdPr RsFrm
  loc_9ED49D:  = Me.RecordCount
  loc_9ED4A2: ILdRf var_88
  loc_9ED4A5: LitI4 0
  loc_9ED4AA: GtI4
  loc_9ED4AB: BranchF loc_9ED4B9
  loc_9ED4AE: FLdPr Me
  loc_9ED4B1: MemLdPr RsFrm
  loc_9ED4B4: Me.MoveFirst
  loc_9ED4B9: ExitProcHresult
End Sub

Public Sub MoveLast() '9ED514
  'Data Table: 4066B8
  loc_9ED4EC: FLdRfVar var_88
  loc_9ED4EF: FLdPr Me
  loc_9ED4F2: MemLdPr RsFrm
  loc_9ED4F5:  = Me.RecordCount
  loc_9ED4FA: ILdRf var_88
  loc_9ED4FD: LitI4 0
  loc_9ED502: GtI4
  loc_9ED503: BranchF loc_9ED511
  loc_9ED506: FLdPr Me
  loc_9ED509: MemLdPr RsFrm
  loc_9ED50C: Me.MoveLast
  loc_9ED511: ExitProcHresult
  loc_9ED512: FLdRfVar MoveLast048
End Sub

Public Sub MoveNext() 'A6E080
  'Data Table: 4066B8
  loc_A6E008: FLdRfVar var_86
  loc_A6E00B: FLdPr Me
  loc_A6E00E: MemLdPr RsFrm
  loc_A6E011:  = Me.EOF
  loc_A6E016: FLdI2 var_86
  loc_A6E019: NotI4
  loc_A6E01A: FLdRfVar var_8C
  loc_A6E01D: FLdPr Me
  loc_A6E020: MemLdPr RsFrm
  loc_A6E023:  = Me.RecordCount
  loc_A6E028: ILdRf var_8C
  loc_A6E02B: LitI4 0
  loc_A6E030: GtI4
  loc_A6E031: AndI4
  loc_A6E032: BranchF loc_A6E040
  loc_A6E035: FLdPr Me
  loc_A6E038: MemLdPr RsFrm
  loc_A6E03B: Me.MoveNext
  loc_A6E040: FLdRfVar var_86
  loc_A6E043: FLdPr Me
  loc_A6E046: MemLdPr RsFrm
  loc_A6E049:  = Me.EOF
  loc_A6E04E: FLdI2 var_86
  loc_A6E051: FLdRfVar var_8C
  loc_A6E054: FLdPr Me
  loc_A6E057: MemLdPr RsFrm
  loc_A6E05A:  = Me.RecordCount
  loc_A6E05F: ILdRf var_8C
  loc_A6E062: LitI4 0
  loc_A6E067: GtI4
  loc_A6E068: AndI4
  loc_A6E069: BranchF loc_A6E07C
  loc_A6E06C: ImpAdCallFPR4 Beep()
  loc_A6E071: FLdPr Me
  loc_A6E074: MemLdPr RsFrm
  loc_A6E077: Me.MoveLast
  loc_A6E07C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B1D1C
  'Data Table: 4066B8
  loc_9B1D10: FLdPr Me
  loc_9B1D13: MemLdPr RsFrm
  loc_9B1D16: Me.MoveNext
  loc_9B1D1B: ExitProcHresult
End Sub

Public Sub Move(iValor) '9B8ABC
  'Data Table: 4066B8
  loc_9B8AA8: LitVar_Missing var_94
  loc_9B8AAB: PopAdLdVar
  loc_9B8AAC: ILdI2 iValor
  loc_9B8AAF: CI4UI1
  loc_9B8AB0: FLdPr Me
  loc_9B8AB3: MemLdPr RsFrm
  loc_9B8AB6: Me.Move from_stack_1, from_stack_2
  loc_9B8ABB: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6CE20
  'Data Table: 4066B8
  loc_A6CDA8: FLdRfVar var_86
  loc_A6CDAB: FLdPr Me
  loc_A6CDAE: MemLdPr RsFrm
  loc_A6CDB1:  = Me.BOF
  loc_A6CDB6: FLdI2 var_86
  loc_A6CDB9: NotI4
  loc_A6CDBA: FLdRfVar var_8C
  loc_A6CDBD: FLdPr Me
  loc_A6CDC0: MemLdPr RsFrm
  loc_A6CDC3:  = Me.RecordCount
  loc_A6CDC8: ILdRf var_8C
  loc_A6CDCB: LitI4 0
  loc_A6CDD0: GtI4
  loc_A6CDD1: AndI4
  loc_A6CDD2: BranchF loc_A6CDE0
  loc_A6CDD5: FLdPr Me
  loc_A6CDD8: MemLdPr RsFrm
  loc_A6CDDB: Me.MovePrevious
  loc_A6CDE0: FLdRfVar var_86
  loc_A6CDE3: FLdPr Me
  loc_A6CDE6: MemLdPr RsFrm
  loc_A6CDE9:  = Me.BOF
  loc_A6CDEE: FLdI2 var_86
  loc_A6CDF1: FLdRfVar var_8C
  loc_A6CDF4: FLdPr Me
  loc_A6CDF7: MemLdPr RsFrm
  loc_A6CDFA:  = Me.RecordCount
  loc_A6CDFF: ILdRf var_8C
  loc_A6CE02: LitI4 0
  loc_A6CE07: GtI4
  loc_A6CE08: AndI4
  loc_A6CE09: BranchF loc_A6CE1C
  loc_A6CE0C: ImpAdCallFPR4 Beep()
  loc_A6CE11: FLdPr Me
  loc_A6CE14: MemLdPr RsFrm
  loc_A6CE17: Me.MoveFirst
  loc_A6CE1C: ExitProcHresult
  loc_A6CE1D: CRec2Ansi MovePrevious
End Sub

Public Property Get EOF() '9D1D50
  'Data Table: 4066B8
  loc_9D1D34: FLdRfVar var_88
  loc_9D1D37: FLdPr Me
  loc_9D1D3A: MemLdPr RsFrm
  loc_9D1D3D:  = Me.EOF
  loc_9D1D42: FLdI2 var_88
  loc_9D1D45: FStI2 var_86
  loc_9D1D48: ExitProcCbHresult
  loc_9D1D4E: ImpAdLdPr 0
End Sub

Public Property Get BOF() '9D1D04
  'Data Table: 4066B8
  loc_9D1CE8: FLdRfVar var_88
  loc_9D1CEB: FLdPr Me
  loc_9D1CEE: MemLdPr RsFrm
  loc_9D1CF1:  = Me.BOF
  loc_9D1CF6: FLdI2 var_88
  loc_9D1CF9: FStI2 var_86
  loc_9D1CFC: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B2038
  'Data Table: 4066B8
  loc_9B2028: ILdI4 sOrden
  loc_9B202B: FLdPr Me
  loc_9B202E: MemLdPr RsFrm
  loc_9B2031: Me.Sort = from_stack_1
  loc_9B2036: ExitProcHresult
End Sub

Public Sub Find(sFind) '9E2F40
  'Data Table: 4066B8
  loc_9E2F20: LitVar_Missing var_94
  loc_9E2F23: PopAdLdVar
  loc_9E2F24: LitI4 1
  loc_9E2F29: LitI4 0
  loc_9E2F2E: ILdI4 sFind
  loc_9E2F31: FLdPr Me
  loc_9E2F34: MemLdPr RsFrm
  loc_9E2F37: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E2F3C: ExitProcHresult
  loc_9E2F3D: LargeBos
End Sub

Public Sub Filter(sCriterio) '9B9CCC
  'Data Table: 4066B8
  loc_9B9CB8: ILdI4 sCriterio
  loc_9B9CBB: CVarStr var_94
  loc_9B9CBE: PopAdLdVar
  loc_9B9CBF: FLdPr Me
  loc_9B9CC2: MemLdPr RsFrm
  loc_9B9CC5: Me.Filter = from_stack_1
  loc_9B9CCA: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9D1BD4
  'Data Table: 4066B8
  loc_9D1BB8: FLdRfVar var_8C
  loc_9D1BBB: FLdPr Me
  loc_9D1BBE: MemLdPr RsFrm
  loc_9D1BC1:  = Me.AbsolutePosition
  loc_9D1BC6: ILdRf var_8C
  loc_9D1BC9: FStR4 var_88
  loc_9D1BCC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9D1B88
  'Data Table: 4066B8
  loc_9D1B6C: FLdRfVar var_8C
  loc_9D1B6F: FLdPr Me
  loc_9D1B72: MemLdPr RsFrm
  loc_9D1B75:  = Me.RecordCount
  loc_9D1B7A: ILdRf var_8C
  loc_9D1B7D: FStR4 var_88
  loc_9D1B80: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiCome, CucuPers, CodiInmu, CucuCome, BonoCome, RazoCome, CodiActi, CodiCall, DetaCall, NucaCome, CodiBarr, DetaBarr, CasaCome, MansCome, UbicCome, CodiLoca, DetaLoca, CopoCome, CodiTili) 'AA3888
  'Data Table: 4066B8
  loc_AA380C: ILdRf CucuPers
  loc_AA380F: FStStrCopy var_88
  loc_AA3812: ILdRf CucuCome
  loc_AA3815: FStStrCopy var_8C
  loc_AA3818: ILdRf RazoCome
  loc_AA381B: FStStrCopy var_90
  loc_AA381E: ILdRf DetaCall
  loc_AA3821: FStStrCopy var_94
  loc_AA3824: ILdRf NucaCome
  loc_AA3827: FStStrCopy var_98
  loc_AA382A: ILdRf DetaBarr
  loc_AA382D: FStStrCopy var_9C
  loc_AA3830: ILdRf CasaCome
  loc_AA3833: FStStrCopy var_A0
  loc_AA3836: ILdRf AddNew0
  loc_AA3839: FStStrCopy var_A4
  loc_AA383C: ILdRf AddNew4
  loc_AA383F: FStStrCopy var_A8
  loc_AA3842: ILdRf AddNewC
  loc_AA3845: FStStrCopy var_AC
  loc_AA3848: ILdRf CopoCome
  loc_AA384B: FStStrCopy var_B0
  loc_AA384E: ILdRf arg_64
  loc_AA3851: FStStrCopy var_B4
  loc_AA3854: ILdRf arg_6C
  loc_AA3857: FStStrCopy var_B8
  loc_AA385A: ILdRf arg_70
  loc_AA385D: FStStrCopy var_BC
  loc_AA3860: ILdRf arg_74
  loc_AA3863: FStStrCopy var_C0
  loc_AA3866: ILdRf arg_78
  loc_AA3869: FStStrCopy var_C4
  loc_AA386C: ILdRf arg_7C
  loc_AA386F: FStStrCopy var_C8
  loc_AA3872: ILdRf Me0
  loc_AA3875: FStStrCopy var_CC
  loc_AA3878: ILdRf Me4
  loc_AA387B: FStStrCopy var_D0
  loc_AA387E: ILdRf Me8
  loc_AA3881: FStStrCopy var_D4
  loc_AA3884: ExitProcHresult
End Sub

Public Sub AddMigracionExcencion(CodiCome, CodiExce, FfexCome) '9B1CA0
  'Data Table: 4066B8
  loc_9B1C98: ILdRf FfexCome
  loc_9B1C9B: FStStrCopy var_88
  loc_9B1C9E: ExitProcHresult
End Sub

Public Sub Modificar(CodiCome, CodiInmu, CucuCome, BonoCome, RazoCome, CodiActi, CodiCall, NucaCome, CodiBarr, CasaCome, MansCome, UbicCome, CodiLoca, CodiTili, MetrCome, CapeCome, InbrCome, LiquCome, MoliCome) 'A81448
  'Data Table: 4066B8
  loc_A813EC: ILdRf CucuCome
  loc_A813EF: FStStrCopy var_88
  loc_A813F2: ILdRf RazoCome
  loc_A813F5: FStStrCopy var_8C
  loc_A813F8: ILdRf NucaCome
  loc_A813FB: FStStrCopy var_90
  loc_A813FE: ILdRf CasaCome
  loc_A81401: FStStrCopy var_94
  loc_A81404: ILdRf MansCome
  loc_A81407: FStStrCopy var_98
  loc_A8140A: ILdRf UbicCome
  loc_A8140D: FStStrCopy var_9C
  loc_A81410: ILdRf LiquCome
  loc_A81413: FStStrCopy var_A0
  loc_A81416: ILdRf arg_58
  loc_A81419: FStStrCopy var_A4
  loc_A8141C: ILdRf arg_5C
  loc_A8141F: FStStrCopy var_A8
  loc_A81422: ILdRf arg_60
  loc_A81425: FStStrCopy var_AC
  loc_A81428: ILdRf arg_64
  loc_A8142B: FStStrCopy var_B0
  loc_A8142E: ILdRf arg_68
  loc_A81431: FStStrCopy var_B4
  loc_A81434: ILdRf arg_6C
  loc_A81437: FStStrCopy var_B8
  loc_A8143A: ILdRf arg_70
  loc_A8143D: FStStrCopy var_BC
  loc_A81440: ILdRf arg_74
  loc_A81443: FStStrCopy var_C0
  loc_A81446: ExitProcHresult
End Sub

Public Sub ModificarDomicilioPostal(CodiCome, CocpCome, DecpCome, NupoCome, CobpCome, DebpCome, MapoCome, CapoCome, UbpoCome, ColpCome, DelpCome, CoppCome, CodiRuta) 'A17CD4
  'Data Table: 4066B8
  loc_A17CA8: ILdRf DecpCome
  loc_A17CAB: FStStrCopy var_88
  loc_A17CAE: ILdRf DebpCome
  loc_A17CB1: FStStrCopy var_8C
  loc_A17CB4: ILdRf MapoCome
  loc_A17CB7: FStStrCopy var_90
  loc_A17CBA: ILdRf CapoCome
  loc_A17CBD: FStStrCopy var_94
  loc_A17CC0: ILdRf UbpoCome
  loc_A17CC3: FStStrCopy var_98
  loc_A17CC6: ILdRf DelpCome
  loc_A17CC9: FStStrCopy var_9C
  loc_A17CCC: ILdRf CoppCome
  loc_A17CCF: FStStrCopy var_A0
  loc_A17CD2: ExitProcHresult
End Sub

Public Sub Baja(CodiCome, FebaCome, ExbaCome, MobaCome) '9E2FD4
  'Data Table: 4066B8
  loc_9E2FC0: ILdRf FebaCome
  loc_9E2FC3: FStStrCopy var_88
  loc_9E2FC6: ILdRf ExbaCome
  loc_9E2FC9: FStStrCopy var_8C
  loc_9E2FCC: ILdRf MobaCome
  loc_9E2FCF: FStStrCopy var_90
  loc_9E2FD2: ExitProcHresult
End Sub

Public Sub ModificarExcencion(CodiCome, CodiExce, FfexCome, ExexCome, MoexCome) '9E2D04
  'Data Table: 4066B8
  loc_9E2CF0: ILdRf FfexCome
  loc_9E2CF3: FStStrCopy var_88
  loc_9E2CF6: ILdRf ExexCome
  loc_9E2CF9: FStStrCopy var_8C
  loc_9E2CFC: ILdRf MoexCome
  loc_9E2CFF: FStStrCopy var_90
  loc_9E2D02: ExitProcHresult
End Sub

Public Sub AddNewComeObse(CodiCome, ObseCoob) '9B1AFC
  'Data Table: 4066B8
  loc_9B1AF4: ILdRf ObseCoob
  loc_9B1AF7: FStStrCopy var_88
  loc_9B1AFA: ExitProcHresult
End Sub

Public Sub ModificarComeObse(CodiCome, iNumeCoob, ObseCoob) '9B1994
  'Data Table: 4066B8
  loc_9B198C: ILdRf ObseCoob
  loc_9B198F: FStStrCopy var_88
  loc_9B1992: ExitProcHresult
End Sub

Public Sub Delete() '9FDC58
  'Data Table: 4066B8
  loc_9FDC28: FLdRfVar var_88
  loc_9FDC2B: FLdPr Me
  loc_9FDC2E: MemLdPr RsFrm
  loc_9FDC31:  = Me.RecordCount
  loc_9FDC36: ILdRf var_88
  loc_9FDC39: LitI4 0
  loc_9FDC3E: GtI4
  loc_9FDC3F: BranchF loc_9FDC57
  loc_9FDC42: LitI4 1
  loc_9FDC47: FLdPr Me
  loc_9FDC4A: MemLdPr RsFrm
  loc_9FDC4D: Me.Delete
  loc_9FDC52: Call MoveNext()
  loc_9FDC57: ExitProcHresult
End Sub

Public Sub Requery() '9E70D4
  'Data Table: 4066B8
  loc_9E70B0: LitI4 -1
  loc_9E70B5: FLdPr Me
  loc_9E70B8: MemLdPr RsFrm
  loc_9E70BB: Me.Requery from_stack_1
  loc_9E70C0: LitVarStr var_94, "Primary"
  loc_9E70C5: PopAdLdVar
  loc_9E70C6: FLdPr Me
  loc_9E70C9: LateIdCall
  loc_9E70D1: ExitProcHresult
End Sub

Public Sub Update() 'A0B954
  'Data Table: 4066B8
  loc_A0B918: FLdPr Me
  loc_A0B91B: MemLdStr RsFrm
  loc_A0B91E: FStAd var_88 
  loc_A0B922: LitI4 3
  loc_A0B927: FLdPr var_88
  loc_A0B92A: Me.UpdateBatch
  loc_A0B92F: FLdRfVar var_8C
  loc_A0B932: FLdPr var_88
  loc_A0B935:  = Me.EditMode
  loc_A0B93A: ILdRf var_8C
  loc_A0B93D: LitI4 2
  loc_A0B942: EqI4
  loc_A0B943: BranchF loc_A0B94B
  loc_A0B946: Call MoveLast()
  loc_A0B94B: LitNothing
  loc_A0B94D: FStAd var_88 
  loc_A0B951: ExitProcHresult
End Sub

Public Sub Cancel() 'A3292C
  'Data Table: 4066B8
  loc_A328E0: FLdPr Me
  loc_A328E3: MemLdStr RsFrm
  loc_A328E6: FStAd var_88 
  loc_A328EA: FLdRfVar var_8C
  loc_A328ED: FLdPr var_88
  loc_A328F0:  = Me.RecordCount
  loc_A328F5: ILdRf var_8C
  loc_A328F8: LitI4 0
  loc_A328FD: GtI4
  loc_A328FE: BranchF loc_A32925
  loc_A32901: FLdPr var_88
  loc_A32904: Me.CancelUpdate
  loc_A32909: FLdRfVar var_8C
  loc_A3290C: FLdPr var_88
  loc_A3290F:  = Me.EditMode
  loc_A32914: ILdRf var_8C
  loc_A32917: LitI4 2
  loc_A3291C: EqI4
  loc_A3291D: BranchF loc_A32925
  loc_A32920: Call MoveFirst()
  loc_A32925: LitNothing
  loc_A32927: FStAd var_88 
  loc_A3292B: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9E24A0
  'Data Table: 4066B8
  loc_9E2480: FLdRfVar var_8C
  loc_9E2483: FLdPr Me
  loc_9E2486: MemLdPr RsFrm
  loc_9E2489:  = Me.EditMode
  loc_9E248E: ILdRf var_8C
  loc_9E2491: LitI4 0
  loc_9E2496: NeI4
  loc_9E2497: FStI2 var_86
  loc_9E249A: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5D384
  'Data Table: 4066B8
  loc_A5D320: ILdRf sSelect
  loc_A5D323: FStStrCopy var_88
  loc_A5D326: LitNothing
  loc_A5D328: CastAd
  loc_A5D32B: FStAdFuncNoPop
  loc_A5D32E: FLdPr Me
  loc_A5D331: MemStAd
  loc_A5D335: FFree1Ad var_8C
  loc_A5D338: New Recordset
  loc_A5D33C: FStAdFuncNoPop
  loc_A5D33F: FLdPr Me
  loc_A5D342: MemStAd
  loc_A5D346: FFree1Ad var_8C
  loc_A5D349: LitI4 -1
  loc_A5D34E: LitI4 3
  loc_A5D353: LitI4 3
  loc_A5D358: ImpAdLdI4 MemVar_D9301C
  loc_A5D35B: CVarAd
  loc_A5D35F: PopAdLdVar
  loc_A5D360: ILdRf var_88
  loc_A5D363: CVarStr var_9C
  loc_A5D366: PopAdLdVar
  loc_A5D367: FLdPr Me
  loc_A5D36A: MemLdPr RsFrm
  loc_A5D36D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5D372: LitVarStr var_9C, "Primary"
  loc_A5D377: PopAdLdVar
  loc_A5D378: FLdPr Me
  loc_A5D37B: LateIdCall
  loc_A5D383: ExitProcHresult
End Sub

Public Property Get DataSource() '9F46AC
  'Data Table: 4066B8
  loc_9F4688: ZeroRetVal
  loc_9F468A: FLdRfVar var_8C
  loc_9F468D: FLdPr Me
  loc_9F4690: MemLdPr RsFrm
  loc_9F4693:  = Me.DataSource
  loc_9F4698: ILdRf var_8C
  loc_9F469B: CastAd
  loc_9F469E: FStAdFunc var_88
  loc_9F46A1: FFree1Ad var_8C
  loc_9F46A4: ExitProcCbHresult
  loc_9F46AA: ImpAdLdCy MemVar_0
End Sub

Public Property Get EditMode() '9D1598
  'Data Table: 4066B8
  loc_9D157C: FLdRfVar var_8C
  loc_9D157F: FLdPr Me
  loc_9D1582: MemLdPr RsFrm
  loc_9D1585:  = Me.EditMode
  loc_9D158A: ILdRf var_8C
  loc_9D158D: FStR4 var_88
  loc_9D1590: ExitProcCbHresult
End Sub

Private Function Proc_263_32_9E7120(arg_10) '9E7120
  'Data Table: 4066B8
  loc_9E7104: ILdRf arg_10
  loc_9E7107: FStAd var_88 
  loc_9E710B: ILdRf arg_18
  loc_9E710E: FStAd var_8C 
  loc_9E7112: FLdPr Me
  loc_9E7115: RaiseEvent
  loc_9E711D: ExitProcHresult
End Function

Private Function Proc_263_33_AA15EC(arg_C) 'AA15EC
  'Data Table: 4066B8
  loc_AA152C: ILdRf arg_18
  loc_AA152F: FStAd var_88 
  loc_AA1533: ILdRf arg_C
  loc_AA1536: FStR4 var_90
  loc_AA1539: ILdRf var_90
  loc_AA153C: LitI4 1
  loc_AA1541: EqI4
  loc_AA1542: BranchF loc_AA1548
  loc_AA1545: Branch loc_AA15DB
  loc_AA1548: ILdRf var_90
  loc_AA154B: LitI4 9
  loc_AA1550: EqI4
  loc_AA1551: BranchF loc_AA1557
  loc_AA1554: Branch loc_AA15DB
  loc_AA1557: ILdRf var_90
  loc_AA155A: LitI4 2
  loc_AA155F: EqI4
  loc_AA1560: BranchF loc_AA1566
  loc_AA1563: Branch loc_AA15DB
  loc_AA1566: ILdRf var_90
  loc_AA1569: LitI4 &HB
  loc_AA156E: EqI4
  loc_AA156F: BranchF loc_AA1575
  loc_AA1572: Branch loc_AA15DB
  loc_AA1575: ILdRf var_90
  loc_AA1578: LitI4 &HA
  loc_AA157D: EqI4
  loc_AA157E: BranchF loc_AA1584
  loc_AA1581: Branch loc_AA15DB
  loc_AA1584: ILdRf var_90
  loc_AA1587: LitI4 7
  loc_AA158C: EqI4
  loc_AA158D: BranchF loc_AA1593
  loc_AA1590: Branch loc_AA15DB
  loc_AA1593: ILdRf var_90
  loc_AA1596: LitI4 8
  loc_AA159B: EqI4
  loc_AA159C: BranchF loc_AA15A2
  loc_AA159F: Branch loc_AA15DB
  loc_AA15A2: ILdRf var_90
  loc_AA15A5: LitI4 5
  loc_AA15AA: EqI4
  loc_AA15AB: BranchF loc_AA15B1
  loc_AA15AE: Branch loc_AA15DB
  loc_AA15B1: ILdRf var_90
  loc_AA15B4: LitI4 6
  loc_AA15B9: EqI4
  loc_AA15BA: BranchF loc_AA15C0
  loc_AA15BD: Branch loc_AA15DB
  loc_AA15C0: ILdRf var_90
  loc_AA15C3: LitI4 4
  loc_AA15C8: EqI4
  loc_AA15C9: BranchF loc_AA15CF
  loc_AA15CC: Branch loc_AA15DB
  loc_AA15CF: ILdRf var_90
  loc_AA15D2: LitI4 3
  loc_AA15D7: EqI4
  loc_AA15D8: BranchF loc_AA15DB
  loc_AA15DB: FLdI2 var_8A
  loc_AA15DE: BranchF loc_AA15E9
  loc_AA15E1: LitI4 4
  loc_AA15E6: IStI4 arg_14
  loc_AA15E9: ExitProcHresult
End Function

Private Function Proc_263_34_9F4708() '9F4708
  'Data Table: 4066B8
  loc_9F46E4: LitStr "Primary"
  loc_9F46E7: FLdPr Me
  loc_9F46EA: LateIdLdVar var_94 DispID_4 0
  loc_9F46F1: CastAdVar Me
  loc_9F46F5: FStAdFunc var_98
  loc_9F46F8: FLdPr var_98
  loc_9F4700: FFree1Ad var_98
  loc_9F4703: FFree1Var var_94 = ""
  loc_9F4706: ExitProcHresult
End Function

Private Function Proc_263_35_9E28AC(arg_C) '9E28AC
  'Data Table: 4066B8
  loc_9E2890: ILdI4 arg_C
  loc_9E2893: FStStrCopy var_88
  loc_9E2896: ILdRf var_88
  loc_9E2899: LitStr "Primary"
  loc_9E289C: EqStr
  loc_9E289E: BranchF loc_9E28AB
  loc_9E28A1: FLdPr Me
  loc_9E28A4: MemLdStr RsFrm
  loc_9E28A7: IStAd
  loc_9E28AB: ExitProcHresult
End Function
