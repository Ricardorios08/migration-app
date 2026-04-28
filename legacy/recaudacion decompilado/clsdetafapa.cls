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


Public Function RsFrmGet() '449870
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '44987F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '44988E
  RsFrm = Value
End Sub

Public Sub Move(iValor) '9BA65C
  'Data Table: 4493AC
  loc_9BA648: LitVar_Missing var_94
  loc_9BA64B: PopAdLdVar
  loc_9BA64C: ILdI2 iValor
  loc_9BA64F: CI4UI1
  loc_9BA650: FLdPr Me
  loc_9BA653: MemLdPr RsFrm
  loc_9BA656: Me.Move from_stack_1, from_stack_2
  loc_9BA65B: ExitProcHresult
End Sub

Public Sub MoveFirst() '9EDA94
  'Data Table: 4493AC
  loc_9EDA6C: FLdRfVar var_88
  loc_9EDA6F: FLdPr Me
  loc_9EDA72: MemLdPr RsFrm
  loc_9EDA75:  = Me.RecordCount
  loc_9EDA7A: ILdRf var_88
  loc_9EDA7D: LitI4 0
  loc_9EDA82: GtI4
  loc_9EDA83: BranchF loc_9EDA91
  loc_9EDA86: FLdPr Me
  loc_9EDA89: MemLdPr RsFrm
  loc_9EDA8C: Me.MoveFirst
  loc_9EDA91: ExitProcHresult
  loc_9EDA92: VCallAd Control_ID_
End Sub

Public Sub MoveLast() '9EDB44
  'Data Table: 4493AC
  loc_9EDB1C: FLdRfVar var_88
  loc_9EDB1F: FLdPr Me
  loc_9EDB22: MemLdPr RsFrm
  loc_9EDB25:  = Me.RecordCount
  loc_9EDB2A: ILdRf var_88
  loc_9EDB2D: LitI4 0
  loc_9EDB32: GtI4
  loc_9EDB33: BranchF loc_9EDB41
  loc_9EDB36: FLdPr Me
  loc_9EDB39: MemLdPr RsFrm
  loc_9EDB3C: Me.MoveLast
  loc_9EDB41: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6CC28
  'Data Table: 4493AC
  loc_A6CBB0: FLdRfVar var_86
  loc_A6CBB3: FLdPr Me
  loc_A6CBB6: MemLdPr RsFrm
  loc_A6CBB9:  = Me.EOF
  loc_A6CBBE: FLdI2 var_86
  loc_A6CBC1: NotI4
  loc_A6CBC2: FLdRfVar var_8C
  loc_A6CBC5: FLdPr Me
  loc_A6CBC8: MemLdPr RsFrm
  loc_A6CBCB:  = Me.RecordCount
  loc_A6CBD0: ILdRf var_8C
  loc_A6CBD3: LitI4 0
  loc_A6CBD8: GtI4
  loc_A6CBD9: AndI4
  loc_A6CBDA: BranchF loc_A6CBE8
  loc_A6CBDD: FLdPr Me
  loc_A6CBE0: MemLdPr RsFrm
  loc_A6CBE3: Me.MoveNext
  loc_A6CBE8: FLdRfVar var_86
  loc_A6CBEB: FLdPr Me
  loc_A6CBEE: MemLdPr RsFrm
  loc_A6CBF1:  = Me.EOF
  loc_A6CBF6: FLdI2 var_86
  loc_A6CBF9: FLdRfVar var_8C
  loc_A6CBFC: FLdPr Me
  loc_A6CBFF: MemLdPr RsFrm
  loc_A6CC02:  = Me.RecordCount
  loc_A6CC07: ILdRf var_8C
  loc_A6CC0A: LitI4 0
  loc_A6CC0F: GtI4
  loc_A6CC10: AndI4
  loc_A6CC11: BranchF loc_A6CC24
  loc_A6CC14: ImpAdCallFPR4 Beep()
  loc_A6CC19: FLdPr Me
  loc_A6CC1C: MemLdPr RsFrm
  loc_A6CC1F: Me.MoveLast
  loc_A6CC24: ExitProcHresult
  loc_A6CC25: Assert
  loc_A6CC27: EqCyR8
End Sub

Public Sub MoveSiguiente() '9B0E1C
  'Data Table: 4493AC
  loc_9B0E10: FLdPr Me
  loc_9B0E13: MemLdPr RsFrm
  loc_9B0E16: Me.MoveNext
  loc_9B0E1B: ExitProcHresult
End Sub

Public Sub MovePrevious(arg_34) 'A6C790
  'Data Table: 4493AC
  loc_A6C718: FLdRfVar var_86
  loc_A6C71B: FLdPr Me
  loc_A6C71E: MemLdPr RsFrm
  loc_A6C721:  = Me.BOF
  loc_A6C726: FLdI2 var_86
  loc_A6C729: NotI4
  loc_A6C72A: FLdRfVar var_8C
  loc_A6C72D: FLdPr Me
  loc_A6C730: MemLdPr RsFrm
  loc_A6C733:  = Me.RecordCount
  loc_A6C738: ILdRf var_8C
  loc_A6C73B: LitI4 0
  loc_A6C740: GtI4
  loc_A6C741: AndI4
  loc_A6C742: BranchF loc_A6C750
  loc_A6C745: FLdPr Me
  loc_A6C748: MemLdPr RsFrm
  loc_A6C74B: Me.MovePrevious
  loc_A6C750: FLdRfVar var_86
  loc_A6C753: FLdPr Me
  loc_A6C756: MemLdPr RsFrm
  loc_A6C759:  = Me.BOF
  loc_A6C75E: FLdI2 var_86
  loc_A6C761: FLdRfVar var_8C
  loc_A6C764: FLdPr Me
  loc_A6C767: MemLdPr RsFrm
  loc_A6C76A:  = Me.RecordCount
  loc_A6C76F: ILdRf var_8C
  loc_A6C772: LitI4 0
  loc_A6C777: GtI4
  loc_A6C778: AndI4
  loc_A6C779: BranchF loc_A6C78C
  loc_A6C77C: ImpAdCallFPR4 Beep()
  loc_A6C781: FLdPr Me
  loc_A6C784: MemLdPr RsFrm
  loc_A6C787: Me.MoveFirst
  loc_A6C78C: ExitProcHresult
  loc_A6C78D: ConcatStr
  loc_A6C78E: FStStrNoPop arg_3468
End Sub

Public Property Get EOF() '9DCDF4
  'Data Table: 4493AC
  loc_9DCDD8: FLdRfVar var_88
  loc_9DCDDB: FLdPr Me
  loc_9DCDDE: MemLdPr RsFrm
  loc_9DCDE1:  = Me.EOF
  loc_9DCDE6: FLdI2 var_88
  loc_9DCDE9: FStI2 var_86
  loc_9DCDEC: ExitProcCbHresult
End Sub

Public Property Get BOF() '9DCED8
  'Data Table: 4493AC
  loc_9DCEBC: FLdRfVar var_88
  loc_9DCEBF: FLdPr Me
  loc_9DCEC2: MemLdPr RsFrm
  loc_9DCEC5:  = Me.BOF
  loc_9DCECA: FLdI2 var_88
  loc_9DCECD: FStI2 var_86
  loc_9DCED0: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B4FB8
  'Data Table: 4493AC
  loc_9B4FA8: ILdI4 sOrden
  loc_9B4FAB: FLdPr Me
  loc_9B4FAE: MemLdPr RsFrm
  loc_9B4FB1: Me.Sort = from_stack_1
  loc_9B4FB6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DD540
  'Data Table: 4493AC
  loc_9DD520: LitVar_Missing var_94
  loc_9DD523: PopAdLdVar
  loc_9DD524: LitI4 1
  loc_9DD529: LitI4 0
  loc_9DD52E: ILdI4 sFind
  loc_9DD531: FLdPr Me
  loc_9DD534: MemLdPr RsFrm
  loc_9DD537: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DD53C: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DD138
  'Data Table: 4493AC
  loc_9DD11C: FLdRfVar var_8C
  loc_9DD11F: FLdPr Me
  loc_9DD122: MemLdPr RsFrm
  loc_9DD125:  = Me.AbsolutePosition
  loc_9DD12A: ILdRf var_8C
  loc_9DD12D: FStR4 var_88
  loc_9DD130: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9DCF70
  'Data Table: 4493AC
  loc_9DCF54: FLdRfVar var_8C
  loc_9DCF57: FLdPr Me
  loc_9DCF5A: MemLdPr RsFrm
  loc_9DCF5D:  = Me.RecordCount
  loc_9DCF62: ILdRf var_8C
  loc_9DCF65: FStR4 var_88
  loc_9DCF68: ExitProcCbHresult
End Sub

Public Sub Requery() '9E4BC0
  'Data Table: 4493AC
  loc_9E4B9C: LitI4 -1
  loc_9E4BA1: FLdPr Me
  loc_9E4BA4: MemLdPr RsFrm
  loc_9E4BA7: Me.Requery from_stack_1
  loc_9E4BAC: LitVarStr var_94, "Primary"
  loc_9E4BB1: PopAdLdVar
  loc_9E4BB2: FLdPr Me
  loc_9E4BB5: LateIdCall
  loc_9E4BBD: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5DFB4
  'Data Table: 4493AC
  loc_A5DF50: ILdRf sSelect
  loc_A5DF53: FStStrCopy var_88
  loc_A5DF56: LitNothing
  loc_A5DF58: CastAd
  loc_A5DF5B: FStAdFuncNoPop
  loc_A5DF5E: FLdPr Me
  loc_A5DF61: MemStAd
  loc_A5DF65: FFree1Ad var_8C
  loc_A5DF68: New Recordset
  loc_A5DF6C: FStAdFuncNoPop
  loc_A5DF6F: FLdPr Me
  loc_A5DF72: MemStAd
  loc_A5DF76: FFree1Ad var_8C
  loc_A5DF79: LitI4 -1
  loc_A5DF7E: LitI4 3
  loc_A5DF83: LitI4 3
  loc_A5DF88: ImpAdLdI4 MemVar_D9301C
  loc_A5DF8B: CVarAd
  loc_A5DF8F: PopAdLdVar
  loc_A5DF90: ILdRf var_88
  loc_A5DF93: CVarStr var_9C
  loc_A5DF96: PopAdLdVar
  loc_A5DF97: FLdPr Me
  loc_A5DF9A: MemLdPr RsFrm
  loc_A5DF9D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5DFA2: LitVarStr var_9C, "Primary"
  loc_A5DFA7: PopAdLdVar
  loc_A5DFA8: FLdPr Me
  loc_A5DFAB: LateIdCall
  loc_A5DFB3: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A5131C
  'Data Table: 4493AC
  loc_A512C8: ILdRf sSelect
  loc_A512CB: FStStrCopy var_88
  loc_A512CE: LitNothing
  loc_A512D0: CastAd
  loc_A512D3: FStAdFuncNoPop
  loc_A512D6: FLdPr Me
  loc_A512D9: MemStAd
  loc_A512DD: FFree1Ad var_8C
  loc_A512E0: New Recordset
  loc_A512E4: FStAdFuncNoPop
  loc_A512E7: FLdPr Me
  loc_A512EA: MemStAd
  loc_A512EE: FFree1Ad var_8C
  loc_A512F1: LitI4 -1
  loc_A512F6: LitI4 3
  loc_A512FB: LitI4 3
  loc_A51300: ImpAdLdI4 MemVar_D9301C
  loc_A51303: CVarAd
  loc_A51307: PopAdLdVar
  loc_A51308: ILdRf var_88
  loc_A5130B: CVarStr var_9C
  loc_A5130E: PopAdLdVar
  loc_A5130F: FLdPr Me
  loc_A51312: MemLdPr global_56
  loc_A51315: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5131A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls1(sSelect) 'A514C0
  'Data Table: 4493AC
  loc_A5146C: ILdRf sSelect
  loc_A5146F: FStStrCopy var_88
  loc_A51472: LitNothing
  loc_A51474: CastAd
  loc_A51477: FStAdFuncNoPop
  loc_A5147A: FLdPr Me
  loc_A5147D: MemStAd
  loc_A51481: FFree1Ad var_8C
  loc_A51484: New Recordset
  loc_A51488: FStAdFuncNoPop
  loc_A5148B: FLdPr Me
  loc_A5148E: MemStAd
  loc_A51492: FFree1Ad var_8C
  loc_A51495: LitI4 -1
  loc_A5149A: LitI4 3
  loc_A5149F: LitI4 3
  loc_A514A4: ImpAdLdI4 MemVar_D9301C
  loc_A514A7: CVarAd
  loc_A514AB: PopAdLdVar
  loc_A514AC: ILdRf var_88
  loc_A514AF: CVarStr var_9C
  loc_A514B2: PopAdLdVar
  loc_A514B3: FLdPr Me
  loc_A514B6: MemLdPr global_60
  loc_A514B9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A514BE: ExitProcHresult
End Sub

Public Sub EjecutarRsCls2(sSelect) 'A5154C
  'Data Table: 4493AC
  loc_A514F8: ILdRf sSelect
  loc_A514FB: FStStrCopy var_88
  loc_A514FE: LitNothing
  loc_A51500: CastAd
  loc_A51503: FStAdFuncNoPop
  loc_A51506: FLdPr Me
  loc_A51509: MemStAd
  loc_A5150D: FFree1Ad var_8C
  loc_A51510: New Recordset
  loc_A51514: FStAdFuncNoPop
  loc_A51517: FLdPr Me
  loc_A5151A: MemStAd
  loc_A5151E: FFree1Ad var_8C
  loc_A51521: LitI4 -1
  loc_A51526: LitI4 3
  loc_A5152B: LitI4 3
  loc_A51530: ImpAdLdI4 MemVar_D9301C
  loc_A51533: CVarAd
  loc_A51537: PopAdLdVar
  loc_A51538: ILdRf var_88
  loc_A5153B: CVarStr var_9C
  loc_A5153E: PopAdLdVar
  loc_A5153F: FLdPr Me
  loc_A51542: MemLdPr global_64
  loc_A51545: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5154A: ExitProcHresult
End Sub

Public Sub EjecutarRsCls3(sSelect) 'A516F0
  'Data Table: 4493AC
  loc_A5169C: ILdRf sSelect
  loc_A5169F: FStStrCopy var_88
  loc_A516A2: LitNothing
  loc_A516A4: CastAd
  loc_A516A7: FStAdFuncNoPop
  loc_A516AA: FLdPr Me
  loc_A516AD: MemStAd
  loc_A516B1: FFree1Ad var_8C
  loc_A516B4: New Recordset
  loc_A516B8: FStAdFuncNoPop
  loc_A516BB: FLdPr Me
  loc_A516BE: MemStAd
  loc_A516C2: FFree1Ad var_8C
  loc_A516C5: LitI4 -1
  loc_A516CA: LitI4 3
  loc_A516CF: LitI4 3
  loc_A516D4: ImpAdLdI4 MemVar_D9301C
  loc_A516D7: CVarAd
  loc_A516DB: PopAdLdVar
  loc_A516DC: ILdRf var_88
  loc_A516DF: CVarStr var_9C
  loc_A516E2: PopAdLdVar
  loc_A516E3: FLdPr Me
  loc_A516E6: MemLdPr global_68
  loc_A516E9: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A516EE: ExitProcHresult
End Sub

Public Property Get DataSource() '9F4F4C
  'Data Table: 4493AC
  loc_9F4F28: ZeroRetVal
  loc_9F4F2A: FLdRfVar var_8C
  loc_9F4F2D: FLdPr Me
  loc_9F4F30: MemLdPr RsFrm
  loc_9F4F33:  = Me.DataSource
  loc_9F4F38: ILdRf var_8C
  loc_9F4F3B: CastAd
  loc_9F4F3E: FStAdFunc var_88
  loc_9F4F41: FFree1Ad var_8C
  loc_9F4F44: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9DC098
  'Data Table: 4493AC
  loc_9DC07C: FLdRfVar var_8C
  loc_9DC07F: FLdPr Me
  loc_9DC082: MemLdPr RsFrm
  loc_9DC085:  = Me.EditMode
  loc_9DC08A: ILdRf var_8C
  loc_9DC08D: FStR4 var_88
  loc_9DC090: ExitProcCbHresult
End Sub

Public Property Get EstaDefa() 'A36364
  'Data Table: 4493AC
  loc_A36320: ZeroRetVal
  loc_A36322: FLdRfVar var_B0
  loc_A36325: FLdRfVar var_A0
  loc_A36328: LitVarStr var_9C, "EstaDefa"
  loc_A3632D: PopAdLdVar
  loc_A3632E: FLdRfVar var_8C
  loc_A36331: FLdPr Me
  loc_A36334: MemLdPr RsFrm
  loc_A36337:  = Me.Fields
  loc_A3633C: FLdPr var_8C
  loc_A3633F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36344: FLdPr var_A0
  loc_A36347:  = Me.Value
  loc_A3634C: FLdRfVar var_B0
  loc_A3634F: CStrVarTmp
  loc_A36350: FStStr var_88
  loc_A36353: FFreeAd var_8C = ""
  loc_A3635A: FFree1Var var_B0 = ""
  loc_A3635D: ExitProcCbHresult
End Sub

Public Property Let EstaDefa(vDato) '9E4C64
  'Data Table: 4493AC
  loc_9E4C44: ILdRf vDato
  loc_9E4C47: FStStrCopy var_88
  loc_9E4C4A: ILdRf var_88
  loc_9E4C4D: CVarStr var_A8
  loc_9E4C50: PopAdLdVar
  loc_9E4C51: LitVarStr var_98, "EstaDefa"
  loc_9E4C56: PopAdLdVar
  loc_9E4C57: FLdPr Me
  loc_9E4C5A: MemLdPr RsFrm
  loc_9E4C5D: Me.Collect = from_stack_1
  loc_9E4C62: ExitProcHresult
End Sub

Public Property Get FeveDefa() 'A14F68
  'Data Table: 4493AC
  loc_A14F30: ZeroRetValVar
  loc_A14F32: FLdRfVar var_AC
  loc_A14F35: LitVarStr var_A8, "FeveDefa"
  loc_A14F3A: PopAdLdVar
  loc_A14F3B: FLdRfVar var_98
  loc_A14F3E: FLdPr Me
  loc_A14F41: MemLdPr RsFrm
  loc_A14F44:  = Me.Fields
  loc_A14F49: FLdPr var_98
  loc_A14F4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A14F51: FLdZeroAd var_AC
  loc_A14F54: CVarAd
  loc_A14F58: FStVar FeveDefa
  loc_A14F5C: FFree1Ad var_98
  loc_A14F5F: ExitProcCbHresult
End Sub

Public Property Let FeveDefa(vDato) '9DE9DC
  'Data Table: 4493AC
  loc_9DE9C0: FDupVar
  loc_9DE9C6: FLdVar var_94
  loc_9DE9CA: LitVarStr var_A4, "FeveDefa"
  loc_9DE9CF: PopAdLdVar
  loc_9DE9D0: FLdPr Me
  loc_9DE9D3: MemLdPr RsFrm
  loc_9DE9D6: Me.Collect = from_stack_1
  loc_9DE9DB: ExitProcHresult
End Sub

Public Property Get FepaDefa() 'A173F8
  'Data Table: 4493AC
  loc_A173C0: ZeroRetValVar
  loc_A173C2: FLdRfVar var_AC
  loc_A173C5: LitVarStr var_A8, "FepaDefa"
  loc_A173CA: PopAdLdVar
  loc_A173CB: FLdRfVar var_98
  loc_A173CE: FLdPr Me
  loc_A173D1: MemLdPr RsFrm
  loc_A173D4:  = Me.Fields
  loc_A173D9: FLdPr var_98
  loc_A173DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A173E1: FLdZeroAd var_AC
  loc_A173E4: CVarAd
  loc_A173E8: FStVar FepaDefa
  loc_A173EC: FFree1Ad var_98
  loc_A173EF: ExitProcCbHresult
End Sub

Public Property Let FepaDefa(vDato) '9DE93C
  'Data Table: 4493AC
  loc_9DE920: FDupVar
  loc_9DE926: FLdVar var_94
  loc_9DE92A: LitVarStr var_A4, "FepaDefa"
  loc_9DE92F: PopAdLdVar
  loc_9DE930: FLdPr Me
  loc_9DE933: MemLdPr RsFrm
  loc_9DE936: Me.Collect = from_stack_1
  loc_9DE93B: ExitProcHresult
End Sub

Public Property Get CapiDefa() 'A30D24
  'Data Table: 4493AC
  loc_A30CE0: FLdRfVar var_B4
  loc_A30CE3: FLdRfVar var_A4
  loc_A30CE6: LitVarStr var_A0, "CapiDefa"
  loc_A30CEB: PopAdLdVar
  loc_A30CEC: FLdRfVar var_90
  loc_A30CEF: FLdPr Me
  loc_A30CF2: MemLdPr RsFrm
  loc_A30CF5:  = Me.Fields
  loc_A30CFA: FLdPr var_90
  loc_A30CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30D02: FLdPr var_A4
  loc_A30D05:  = Me.Value
  loc_A30D0A: FLdRfVar var_B4
  loc_A30D0D: CR4Var
  loc_A30D0E: FStFPR8 var_8C
  loc_A30D11: FFreeAd var_90 = ""
  loc_A30D18: FFree1Var var_B4 = ""
  loc_A30D1B: ExitProcCbHresult
End Sub

Public Property Let CapiDefa(vDato) '9D3394
  'Data Table: 4493AC
  loc_9D3378: FLdFPR8 vDato
  loc_9D337B: CVarR8
  loc_9D337F: PopAdLdVar
  loc_9D3380: LitVarStr var_94, "CapiDefa"
  loc_9D3385: PopAdLdVar
  loc_9D3386: FLdPr Me
  loc_9D3389: MemLdPr RsFrm
  loc_9D338C: Me.Collect = from_stack_1
  loc_9D3391: ExitProcHresult
End Sub

Public Property Get RecaDefa() 'A31024
  'Data Table: 4493AC
  loc_A30FE0: FLdRfVar var_B4
  loc_A30FE3: FLdRfVar var_A4
  loc_A30FE6: LitVarStr var_A0, "RecaDefa"
  loc_A30FEB: PopAdLdVar
  loc_A30FEC: FLdRfVar var_90
  loc_A30FEF: FLdPr Me
  loc_A30FF2: MemLdPr RsFrm
  loc_A30FF5:  = Me.Fields
  loc_A30FFA: FLdPr var_90
  loc_A30FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A31002: FLdPr var_A4
  loc_A31005:  = Me.Value
  loc_A3100A: FLdRfVar var_B4
  loc_A3100D: CR4Var
  loc_A3100E: FStFPR8 var_8C
  loc_A31011: FFreeAd var_90 = ""
  loc_A31018: FFree1Var var_B4 = ""
  loc_A3101B: ExitProcCbHresult
End Sub

Public Property Let RecaDefa(vDato) '9D9C60
  'Data Table: 4493AC
  loc_9D9C44: FLdFPR8 vDato
  loc_9D9C47: CVarR8
  loc_9D9C4B: PopAdLdVar
  loc_9D9C4C: LitVarStr var_94, "RecaDefa"
  loc_9D9C51: PopAdLdVar
  loc_9D9C52: FLdPr Me
  loc_9D9C55: MemLdPr RsFrm
  loc_9D9C58: Me.Collect = from_stack_1
  loc_9D9C5D: ExitProcHresult
End Sub

Public Property Get DecaDefa() 'A312A4
  'Data Table: 4493AC
  loc_A31260: FLdRfVar var_B4
  loc_A31263: FLdRfVar var_A4
  loc_A31266: LitVarStr var_A0, "DecaDefa"
  loc_A3126B: PopAdLdVar
  loc_A3126C: FLdRfVar var_90
  loc_A3126F: FLdPr Me
  loc_A31272: MemLdPr RsFrm
  loc_A31275:  = Me.Fields
  loc_A3127A: FLdPr var_90
  loc_A3127D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31282: FLdPr var_A4
  loc_A31285:  = Me.Value
  loc_A3128A: FLdRfVar var_B4
  loc_A3128D: CR4Var
  loc_A3128E: FStFPR8 var_8C
  loc_A31291: FFreeAd var_90 = ""
  loc_A31298: FFree1Var var_B4 = ""
  loc_A3129B: ExitProcCbHresult
End Sub

Public Property Let DecaDefa(vDato) '9D9B30
  'Data Table: 4493AC
  loc_9D9B14: FLdFPR8 vDato
  loc_9D9B17: CVarR8
  loc_9D9B1B: PopAdLdVar
  loc_9D9B1C: LitVarStr var_94, "DecaDefa"
  loc_9D9B21: PopAdLdVar
  loc_9D9B22: FLdPr Me
  loc_9D9B25: MemLdPr RsFrm
  loc_9D9B28: Me.Collect = from_stack_1
  loc_9D9B2D: ExitProcHresult
End Sub

Public Property Get DereDefa() 'A313A4
  'Data Table: 4493AC
  loc_A31360: FLdRfVar var_B4
  loc_A31363: FLdRfVar var_A4
  loc_A31366: LitVarStr var_A0, "DereDefa"
  loc_A3136B: PopAdLdVar
  loc_A3136C: FLdRfVar var_90
  loc_A3136F: FLdPr Me
  loc_A31372: MemLdPr RsFrm
  loc_A31375:  = Me.Fields
  loc_A3137A: FLdPr var_90
  loc_A3137D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31382: FLdPr var_A4
  loc_A31385:  = Me.Value
  loc_A3138A: FLdRfVar var_B4
  loc_A3138D: CR4Var
  loc_A3138E: FStFPR8 var_8C
  loc_A31391: FFreeAd var_90 = ""
  loc_A31398: FFree1Var var_B4 = ""
  loc_A3139B: ExitProcCbHresult
End Sub

Public Property Let DereDefa(vDato) '9D9968
  'Data Table: 4493AC
  loc_9D994C: FLdFPR8 vDato
  loc_9D994F: CVarR8
  loc_9D9953: PopAdLdVar
  loc_9D9954: LitVarStr var_94, "DereDefa"
  loc_9D9959: PopAdLdVar
  loc_9D995A: FLdPr Me
  loc_9D995D: MemLdPr RsFrm
  loc_9D9960: Me.Collect = from_stack_1
  loc_9D9965: ExitProcHresult
End Sub

Public Property Get ApreDefa() 'A315A4
  'Data Table: 4493AC
  loc_A31560: FLdRfVar var_B4
  loc_A31563: FLdRfVar var_A4
  loc_A31566: LitVarStr var_A0, "ApreDefa"
  loc_A3156B: PopAdLdVar
  loc_A3156C: FLdRfVar var_90
  loc_A3156F: FLdPr Me
  loc_A31572: MemLdPr RsFrm
  loc_A31575:  = Me.Fields
  loc_A3157A: FLdPr var_90
  loc_A3157D: from_stack_2 = Me.Item(from_stack_1)
  loc_A31582: FLdPr var_A4
  loc_A31585:  = Me.Value
  loc_A3158A: FLdRfVar var_B4
  loc_A3158D: CR4Var
  loc_A3158E: FStFPR8 var_8C
  loc_A31591: FFreeAd var_90 = ""
  loc_A31598: FFree1Var var_B4 = ""
  loc_A3159B: ExitProcCbHresult
End Sub

Public Property Let ApreDefa(vDato) '9D94F4
  'Data Table: 4493AC
  loc_9D94D8: FLdFPR8 vDato
  loc_9D94DB: CVarR8
  loc_9D94DF: PopAdLdVar
  loc_9D94E0: LitVarStr var_94, "ApreDefa"
  loc_9D94E5: PopAdLdVar
  loc_9D94E6: FLdPr Me
  loc_9D94E9: MemLdPr RsFrm
  loc_9D94EC: Me.Collect = from_stack_1
  loc_9D94F1: ExitProcHresult
End Sub

Public Property Get InteDefa() 'A32524
  'Data Table: 4493AC
  loc_A324E0: FLdRfVar var_B4
  loc_A324E3: FLdRfVar var_A4
  loc_A324E6: LitVarStr var_A0, "InteDefa"
  loc_A324EB: PopAdLdVar
  loc_A324EC: FLdRfVar var_90
  loc_A324EF: FLdPr Me
  loc_A324F2: MemLdPr RsFrm
  loc_A324F5:  = Me.Fields
  loc_A324FA: FLdPr var_90
  loc_A324FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32502: FLdPr var_A4
  loc_A32505:  = Me.Value
  loc_A3250A: FLdRfVar var_B4
  loc_A3250D: CR4Var
  loc_A3250E: FStFPR8 var_8C
  loc_A32511: FFreeAd var_90 = ""
  loc_A32518: FFree1Var var_B4 = ""
  loc_A3251B: ExitProcCbHresult
End Sub

Public Property Let InteDefa(vDato) '9D93C4
  'Data Table: 4493AC
  loc_9D93A8: FLdFPR8 vDato
  loc_9D93AB: CVarR8
  loc_9D93AF: PopAdLdVar
  loc_9D93B0: LitVarStr var_94, "InteDefa"
  loc_9D93B5: PopAdLdVar
  loc_9D93B6: FLdPr Me
  loc_9D93B9: MemLdPr RsFrm
  loc_9D93BC: Me.Collect = from_stack_1
  loc_9D93C1: ExitProcHresult
End Sub

Public Property Get TotaDefa() 'A2B7A4
  'Data Table: 4493AC
  loc_A2B760: FLdRfVar var_B4
  loc_A2B763: FLdRfVar var_A4
  loc_A2B766: LitVarStr var_A0, "TotaDefa"
  loc_A2B76B: PopAdLdVar
  loc_A2B76C: FLdRfVar var_90
  loc_A2B76F: FLdPr Me
  loc_A2B772: MemLdPr RsFrm
  loc_A2B775:  = Me.Fields
  loc_A2B77A: FLdPr var_90
  loc_A2B77D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B782: FLdPr var_A4
  loc_A2B785:  = Me.Value
  loc_A2B78A: FLdRfVar var_B4
  loc_A2B78D: CR4Var
  loc_A2B78E: FStFPR8 var_8C
  loc_A2B791: FFreeAd var_90 = ""
  loc_A2B798: FFree1Var var_B4 = ""
  loc_A2B79B: ExitProcCbHresult
End Sub

Public Property Let TotaDefa(vDato) '9D9248
  'Data Table: 4493AC
  loc_9D922C: FLdFPR8 vDato
  loc_9D922F: CVarR8
  loc_9D9233: PopAdLdVar
  loc_9D9234: LitVarStr var_94, "TotaDefa"
  loc_9D9239: PopAdLdVar
  loc_9D923A: FLdPr Me
  loc_9D923D: MemLdPr RsFrm
  loc_9D9240: Me.Collect = from_stack_1
  loc_9D9245: ExitProcHresult
End Sub

Public Property Get PacuDefa() 'A30A24
  'Data Table: 4493AC
  loc_A309E0: FLdRfVar var_B4
  loc_A309E3: FLdRfVar var_A4
  loc_A309E6: LitVarStr var_A0, "PacuDefa"
  loc_A309EB: PopAdLdVar
  loc_A309EC: FLdRfVar var_90
  loc_A309EF: FLdPr Me
  loc_A309F2: MemLdPr RsFrm
  loc_A309F5:  = Me.Fields
  loc_A309FA: FLdPr var_90
  loc_A309FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A30A02: FLdPr var_A4
  loc_A30A05:  = Me.Value
  loc_A30A0A: FLdRfVar var_B4
  loc_A30A0D: CR4Var
  loc_A30A0E: FStFPR8 var_8C
  loc_A30A11: FFreeAd var_90 = ""
  loc_A30A18: FFree1Var var_B4 = ""
  loc_A30A1B: ExitProcCbHresult
End Sub

Public Property Get RemoDefa() 'A33424
  'Data Table: 4493AC
  loc_A333E0: FLdRfVar var_B4
  loc_A333E3: FLdRfVar var_A4
  loc_A333E6: LitVarStr var_A0, "RemoDefa"
  loc_A333EB: PopAdLdVar
  loc_A333EC: FLdRfVar var_90
  loc_A333EF: FLdPr Me
  loc_A333F2: MemLdPr RsFrm
  loc_A333F5:  = Me.Fields
  loc_A333FA: FLdPr var_90
  loc_A333FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A33402: FLdPr var_A4
  loc_A33405:  = Me.Value
  loc_A3340A: FLdRfVar var_B4
  loc_A3340D: CR4Var
  loc_A3340E: FStFPR8 var_8C
  loc_A33411: FFreeAd var_90 = ""
  loc_A33418: FFree1Var var_B4 = ""
  loc_A3341B: ExitProcCbHresult
End Sub

Public Property Get SeleDefa() 'A36808
  'Data Table: 4493AC
  loc_A367C4: ZeroRetVal
  loc_A367C6: FLdRfVar var_B0
  loc_A367C9: FLdRfVar var_A0
  loc_A367CC: LitVarStr var_9C, "SeleDefa"
  loc_A367D1: PopAdLdVar
  loc_A367D2: FLdRfVar var_8C
  loc_A367D5: FLdPr Me
  loc_A367D8: MemLdPr RsFrm
  loc_A367DB:  = Me.Fields
  loc_A367E0: FLdPr var_8C
  loc_A367E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A367E8: FLdPr var_A0
  loc_A367EB:  = Me.Value
  loc_A367F0: FLdRfVar var_B0
  loc_A367F3: CStrVarTmp
  loc_A367F4: FStStr var_88
  loc_A367F7: FFreeAd var_8C = ""
  loc_A367FE: FFree1Var var_B0 = ""
  loc_A36801: ExitProcCbHresult
End Sub

Public Property Get CacuFapa() 'A32D24
  'Data Table: 4493AC
  loc_A32CE0: FLdRfVar var_B0
  loc_A32CE3: FLdRfVar var_A0
  loc_A32CE6: LitVarStr var_9C, "CacuFapa"
  loc_A32CEB: PopAdLdVar
  loc_A32CEC: FLdRfVar var_8C
  loc_A32CEF: FLdPr Me
  loc_A32CF2: MemLdPr RsFrm
  loc_A32CF5:  = Me.Fields
  loc_A32CFA: FLdPr var_8C
  loc_A32CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32D02: FLdPr var_A0
  loc_A32D05:  = Me.Value
  loc_A32D0A: FLdRfVar var_B0
  loc_A32D0D: CI2Var
  loc_A32D0E: FStI2 var_86
  loc_A32D11: FFreeAd var_8C = ""
  loc_A32D18: FFree1Var var_B0 = ""
  loc_A32D1B: ExitProcCbHresult
End Sub

Public Property Get CreaPacu() 'A36994
  'Data Table: 4493AC
  loc_A36950: ZeroRetVal
  loc_A36952: FLdRfVar var_B0
  loc_A36955: FLdRfVar var_A0
  loc_A36958: LitVarStr var_9C, "CreaPacu"
  loc_A3695D: PopAdLdVar
  loc_A3695E: FLdRfVar var_8C
  loc_A36961: FLdPr Me
  loc_A36964: MemLdPr RsFrm
  loc_A36967:  = Me.Fields
  loc_A3696C: FLdPr var_8C
  loc_A3696F: from_stack_2 = Me.Item(from_stack_1)
  loc_A36974: FLdPr var_A0
  loc_A36977:  = Me.Value
  loc_A3697C: FLdRfVar var_B0
  loc_A3697F: CStrVarTmp
  loc_A36980: FStStr var_88
  loc_A36983: FFreeAd var_8C = ""
  loc_A3698A: FFree1Var var_B0 = ""
  loc_A3698D: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9D8EB8
  'Data Table: 4493AC
  loc_9D8E9C: FLdI2 vDato
  loc_9D8E9F: CVarI2 var_A4
  loc_9D8EA2: PopAdLdVar
  loc_9D8EA3: LitVarStr var_94, "PeriBole"
  loc_9D8EA8: PopAdLdVar
  loc_9D8EA9: FLdPr Me
  loc_9D8EAC: MemLdPr RsFrm
  loc_9D8EAF: Me.Collect = from_stack_1
  loc_9D8EB4: ExitProcHresult
End Sub

Public Property Get PeriBole() 'A2F3A4
  'Data Table: 4493AC
  loc_A2F360: FLdRfVar var_B0
  loc_A2F363: FLdRfVar var_A0
  loc_A2F366: LitVarStr var_9C, "PeriBole"
  loc_A2F36B: PopAdLdVar
  loc_A2F36C: FLdRfVar var_8C
  loc_A2F36F: FLdPr Me
  loc_A2F372: MemLdPr RsFrm
  loc_A2F375:  = Me.Fields
  loc_A2F37A: FLdPr var_8C
  loc_A2F37D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F382: FLdPr var_A0
  loc_A2F385:  = Me.Value
  loc_A2F38A: FLdRfVar var_B0
  loc_A2F38D: CI2Var
  loc_A2F38E: FStI2 var_86
  loc_A2F391: FFreeAd var_8C = ""
  loc_A2F398: FFree1Var var_B0 = ""
  loc_A2F39B: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9D8DD4
  'Data Table: 4493AC
  loc_9D8DB8: ILdRf vDato
  loc_9D8DBB: CVarI4
  loc_9D8DBF: PopAdLdVar
  loc_9D8DC0: LitVarStr var_94, "NumeBole"
  loc_9D8DC5: PopAdLdVar
  loc_9D8DC6: FLdPr Me
  loc_9D8DC9: MemLdPr RsFrm
  loc_9D8DCC: Me.Collect = from_stack_1
  loc_9D8DD1: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A32E24
  'Data Table: 4493AC
  loc_A32DE0: FLdRfVar var_B0
  loc_A32DE3: FLdRfVar var_A0
  loc_A32DE6: LitVarStr var_9C, "NumeBole"
  loc_A32DEB: PopAdLdVar
  loc_A32DEC: FLdRfVar var_8C
  loc_A32DEF: FLdPr Me
  loc_A32DF2: MemLdPr RsFrm
  loc_A32DF5:  = Me.Fields
  loc_A32DFA: FLdPr var_8C
  loc_A32DFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A32E02: FLdPr var_A0
  loc_A32E05:  = Me.Value
  loc_A32E0A: FLdRfVar var_B0
  loc_A32E0D: CI4Var
  loc_A32E0F: FStR4 var_88
  loc_A32E12: FFreeAd var_8C = ""
  loc_A32E19: FFree1Var var_B0 = ""
  loc_A32E1C: ExitProcCbHresult
End Sub

Public Property Get Saldo() 'A162A0
  'Data Table: 4493AC
  loc_A16268: ZeroRetValVar
  loc_A1626A: FLdRfVar var_AC
  loc_A1626D: LitVarStr var_A8, "Saldo"
  loc_A16272: PopAdLdVar
  loc_A16273: FLdRfVar var_98
  loc_A16276: FLdPr Me
  loc_A16279: MemLdPr RsFrm
  loc_A1627C:  = Me.Fields
  loc_A16281: FLdPr var_98
  loc_A16284: from_stack_2 = Me.Item(from_stack_1)
  loc_A16289: FLdZeroAd var_AC
  loc_A1628C: CVarAd
  loc_A16290: FStVar Saldo
  loc_A16294: FFree1Ad var_98
  loc_A16297: ExitProcCbHresult
End Sub

Public Property Get PeriCtct() 'A1B958
  'Data Table: 4493AC
  loc_A1B920: ZeroRetValVar
  loc_A1B922: FLdRfVar var_AC
  loc_A1B925: LitVarStr var_A8, "PeriCtct"
  loc_A1B92A: PopAdLdVar
  loc_A1B92B: FLdRfVar var_98
  loc_A1B92E: FLdPr Me
  loc_A1B931: MemLdPr RsFrm
  loc_A1B934:  = Me.Fields
  loc_A1B939: FLdPr var_98
  loc_A1B93C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B941: FLdZeroAd var_AC
  loc_A1B944: CVarAd
  loc_A1B948: FStVar PeriCtct
  loc_A1B94C: FFree1Ad var_98
  loc_A1B94F: ExitProcCbHresult
End Sub

Public Property Get BimeCtct() 'A1DB18
  'Data Table: 4493AC
  loc_A1DAE0: ZeroRetValVar
  loc_A1DAE2: FLdRfVar var_AC
  loc_A1DAE5: LitVarStr var_A8, "BimeCtct"
  loc_A1DAEA: PopAdLdVar
  loc_A1DAEB: FLdRfVar var_98
  loc_A1DAEE: FLdPr Me
  loc_A1DAF1: MemLdPr RsFrm
  loc_A1DAF4:  = Me.Fields
  loc_A1DAF9: FLdPr var_98
  loc_A1DAFC: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DB01: FLdZeroAd var_AC
  loc_A1DB04: CVarAd
  loc_A1DB08: FStVar BimeCtct
  loc_A1DB0C: FFree1Ad var_98
  loc_A1DB0F: ExitProcCbHresult
End Sub

Public Property Get CapiFacc() 'A209F8
  'Data Table: 4493AC
  loc_A209C0: ZeroRetValVar
  loc_A209C2: FLdRfVar var_AC
  loc_A209C5: LitVarStr var_A8, "CapiFacc"
  loc_A209CA: PopAdLdVar
  loc_A209CB: FLdRfVar var_98
  loc_A209CE: FLdPr Me
  loc_A209D1: MemLdPr RsFrm
  loc_A209D4:  = Me.Fields
  loc_A209D9: FLdPr var_98
  loc_A209DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A209E1: FLdZeroAd var_AC
  loc_A209E4: CVarAd
  loc_A209E8: FStVar CapiFacc
  loc_A209EC: FFree1Ad var_98
  loc_A209EF: ExitProcCbHresult
End Sub

Public Property Get VecuTifa() 'A37468
  'Data Table: 4493AC
  loc_A37424: ZeroRetVal
  loc_A37426: FLdRfVar var_B0
  loc_A37429: FLdRfVar var_A0
  loc_A3742C: LitVarStr var_9C, "VecuTifa"
  loc_A37431: PopAdLdVar
  loc_A37432: FLdRfVar var_8C
  loc_A37435: FLdPr Me
  loc_A37438: MemLdPr RsFrm
  loc_A3743B:  = Me.Fields
  loc_A37440: FLdPr var_8C
  loc_A37443: from_stack_2 = Me.Item(from_stack_1)
  loc_A37448: FLdPr var_A0
  loc_A3744B:  = Me.Value
  loc_A37450: FLdRfVar var_B0
  loc_A37453: CStrVarTmp
  loc_A37454: FStStr var_88
  loc_A37457: FFreeAd var_8C = ""
  loc_A3745E: FFree1Var var_B0 = ""
  loc_A37461: ExitProcCbHresult
End Sub

Public Sub CreaTemporalDetaFapa(lCodiFapa, FechVenc) 'C46E4C
  'Data Table: 4493AC
  loc_C46298: ILdRf FechVenc
  loc_C4629B: FStStrCopy var_88
  loc_C4629E: FLdRfVar var_F8
  loc_C462A1: LitI4 0
  loc_C462A6: FLdRfVar var_8C
  loc_C462A9: NewIfNullPr clsinteres
  loc_C462AC: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_C462B1: FLdFPR8 var_F8
  loc_C462B4: FStFPR8 var_9C
  loc_C462B7: LitVarI2 var_128, 4
  loc_C462BC: LitI4 7
  loc_C462C1: FLdRfVar var_88
  loc_C462C4: CVarRef
  loc_C462C9: FLdRfVar var_138
  loc_C462CC: ImpAdCallFPR4  = Mid(, , )
  loc_C462D1: FLdRfVar var_138
  loc_C462D4: LitVarStr var_148, "-"
  loc_C462D9: ConcatVar var_158
  loc_C462DD: LitVarI2 var_188, 2
  loc_C462E2: LitI4 4
  loc_C462E7: FLdRfVar var_88
  loc_C462EA: CVarRef
  loc_C462EF: FLdRfVar var_198
  loc_C462F2: ImpAdCallFPR4  = Mid(, , )
  loc_C462F7: FLdRfVar var_198
  loc_C462FA: ConcatVar var_1A8
  loc_C462FE: LitVarStr var_1B8, "-"
  loc_C46303: ConcatVar var_1C8
  loc_C46307: LitVarI2 var_1F8, 2
  loc_C4630C: LitI4 1
  loc_C46311: FLdRfVar var_88
  loc_C46314: CVarRef
  loc_C46319: FLdRfVar var_208
  loc_C4631C: ImpAdCallFPR4  = Mid(, , )
  loc_C46321: FLdRfVar var_208
  loc_C46324: ConcatVar var_218
  loc_C46328: CStrVarTmp
  loc_C46329: FStStr var_94
  loc_C4632C: FFreeVar var_128 = "": var_138 = "": var_188 = "": var_158 = "": var_198 = "": var_1A8 = "": var_1F8 = "": var_1C8 = "": var_208 = ""
  loc_C46343: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_detafapa;"
  loc_C46346: LitStr "CREATE TEMPORARY TABLE tmp_detafapa ("
  loc_C46349: ConcatStr
  loc_C4634A: FStStrNoPop var_21C
  loc_C4634D: LitStr "odiFapa` int(8) unsigned NOT NULL default '0',"
  loc_C46350: ConcatStr
  loc_C46351: FStStrNoPop var_220
  loc_C46354: LitStr "uotDefa` smallint(4) unsigned NOT NULL default '0',"
  loc_C46357: ConcatStr
  loc_C46358: FStStrNoPop var_224
  loc_C4635B: LitStr "staDefa` char(15) NOT NULL default '',"
  loc_C4635E: ConcatStr
  loc_C4635F: FStStrNoPop var_228
  loc_C46362: LitStr "eveDefa` date default NULL,"
  loc_C46365: ConcatStr
  loc_C46366: FStStrNoPop var_22C
  loc_C46369: LitStr "epaDefa` date default NULL,"
  loc_C4636C: ConcatStr
  loc_C4636D: FStStrNoPop var_230
  loc_C46370: LitStr "apiDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C46373: ConcatStr
  loc_C46374: FStStrNoPop var_234
  loc_C46377: LitStr "ecaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C4637A: ConcatStr
  loc_C4637B: FStStrNoPop var_238
  loc_C4637E: LitStr "ecaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C46381: ConcatStr
  loc_C46382: FStStrNoPop var_23C
  loc_C46385: LitStr "ereDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C46388: ConcatStr
  loc_C46389: FStStrNoPop var_240
  loc_C4638C: LitStr "preDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C4638F: ConcatStr
  loc_C46390: FStStrNoPop var_244
  loc_C46393: LitStr "nteDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C46396: ConcatStr
  loc_C46397: FStStrNoPop var_248
  loc_C4639A: LitStr "emoDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C4639D: ConcatStr
  loc_C4639E: FStStrNoPop var_24C
  loc_C463A1: LitStr "otaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_C463A4: ConcatStr
  loc_C463A5: FStStrNoPop var_250
  loc_C463A8: LitStr "reaPacu` char(2) NOT NULL default 'No',"
  loc_C463AB: ConcatStr
  loc_C463AC: FStStrNoPop var_254
  loc_C463AF: LitStr "eleDefa` char(2) NOT NULL default '',"
  loc_C463B2: ConcatStr
  loc_C463B3: FStStrNoPop var_258
  loc_C463B6: LitStr "eriBole` year(4) NOT NULL default '0000',"
  loc_C463B9: ConcatStr
  loc_C463BA: FStStrNoPop var_25C
  loc_C463BD: LitStr "umeBole` int(8) unsigned NOT NULL default '0',"
  loc_C463C0: ConcatStr
  loc_C463C1: FStStrNoPop var_260
  loc_C463C4: LitStr " KEY  (odiFapa`,`CuotDefa`)"
  loc_C463C7: ConcatStr
  loc_C463C8: FStStrNoPop var_264
  loc_C463CB: LitStr ") ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C463CE: ConcatStr
  loc_C463CF: FStStrNoPop var_268
  loc_C463D2: Call EjecutarRsCls1(from_stack_1v)
  loc_C463D7: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_25C = "": var_260 = "": var_264 = ""
  loc_C46402: LitStr "SELECT * FROM tmp_detafapa"
  loc_C46405: Call EjecutarRsCls1(from_stack_1v)
  loc_C4640A: LitStr "SELECT CodiFapa, CuotDefa, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, DecaDefa, DereDefa, ApreDefa, InteDefa, TotaDefa "
  loc_C4640D: LitStr " FROM detafapa "
  loc_C46410: ConcatStr
  loc_C46411: FStStrNoPop var_21C
  loc_C46414: LitStr " WHERE CodiFapa = "
  loc_C46417: ConcatStr
  loc_C46418: FStStrNoPop var_220
  loc_C4641B: ILdRf lCodiFapa
  loc_C4641E: CStrI4
  loc_C46420: FStStrNoPop var_224
  loc_C46423: ConcatStr
  loc_C46424: FStStrNoPop var_228
  loc_C46427: LitStr " ORDER BY CodiFapa, CuotDefa"
  loc_C4642A: ConcatStr
  loc_C4642B: FStStrNoPop var_22C
  loc_C4642E: Call EjecutarRsCls2(from_stack_1v)
  loc_C46433: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = ""
  loc_C46440: FLdRfVar var_26C
  loc_C46443: FLdPr Me
  loc_C46446: MemLdPr global_64
  loc_C46449:  = Me.RecordCount
  loc_C4644E: ILdRf var_26C
  loc_C46451: LitI4 0
  loc_C46456: GtI4
  loc_C46457: BranchF loc_C46E4A
  loc_C4645A: FLdPr Me
  loc_C4645D: MemLdPr global_64
  loc_C46460: Me.MoveFirst
  loc_C46465: FLdRfVar var_26E
  loc_C46468: FLdPr Me
  loc_C4646B: MemLdPr global_64
  loc_C4646E:  = Me.EOF
  loc_C46473: FLdI2 var_26E
  loc_C46476: NotI4
  loc_C46477: BranchF loc_C46E4A
  loc_C4647A: LitI2_Byte 0
  loc_C4647C: CR8I2
  loc_C4647D: FStFPR8 var_A4
  loc_C46480: LitI2_Byte 0
  loc_C46482: CR8I2
  loc_C46483: FStFPR8 var_AC
  loc_C46486: LitI2_Byte 0
  loc_C46488: CR8I2
  loc_C46489: FStFPR8 var_B4
  loc_C4648C: LitI2_Byte 0
  loc_C4648E: CR8I2
  loc_C4648F: FStFPR8 var_BC
  loc_C46492: LitI2_Byte 0
  loc_C46494: CR8I2
  loc_C46495: FStFPR8 var_C4
  loc_C46498: LitI2_Byte 0
  loc_C4649A: CR8I2
  loc_C4649B: FStFPR8 var_CC
  loc_C4649E: LitI2_Byte 0
  loc_C464A0: CR8I2
  loc_C464A1: FStFPR8 var_D4
  loc_C464A4: LitI2_Byte 0
  loc_C464A6: CR8I2
  loc_C464A7: FStFPR8 var_DC
  loc_C464AA: LitStr "No"
  loc_C464AD: FStStrCopy var_E0
  loc_C464B0: LitStr "SELECT CapiPcdf, RecaPcdf, RemoPcdf, DecaPcdf, DerePcdf, AprePcdf, IntePcdf, TotaPcdf "
  loc_C464B3: LitStr " FROM pacudefa "
  loc_C464B6: ConcatStr
  loc_C464B7: FStStrNoPop var_21C
  loc_C464BA: LitStr " WHERE CodiFapa = "
  loc_C464BD: ConcatStr
  loc_C464BE: CVarStr var_138
  loc_C464C1: FLdRfVar var_128
  loc_C464C4: FLdRfVar var_278
  loc_C464C7: LitVarStr var_108, "CodiFapa"
  loc_C464CC: PopAdLdVar
  loc_C464CD: FLdRfVar var_274
  loc_C464D0: FLdPr Me
  loc_C464D3: MemLdPr global_64
  loc_C464D6:  = Me.Fields
  loc_C464DB: FLdPr var_274
  loc_C464DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C464E3: FLdPr var_278
  loc_C464E6:  = Me.Value
  loc_C464EB: FLdRfVar var_128
  loc_C464EE: ConcatVar var_158
  loc_C464F2: LitVarStr var_118, " AND CuotDefa = "
  loc_C464F7: ConcatVar var_188
  loc_C464FB: FLdRfVar var_198
  loc_C464FE: FLdRfVar var_280
  loc_C46501: LitVarStr var_148, "CuotDefa"
  loc_C46506: PopAdLdVar
  loc_C46507: FLdRfVar var_27C
  loc_C4650A: FLdPr Me
  loc_C4650D: MemLdPr global_64
  loc_C46510:  = Me.Fields
  loc_C46515: FLdPr var_27C
  loc_C46518: from_stack_2 = Me.Item(from_stack_1)
  loc_C4651D: FLdPr var_280
  loc_C46520:  = Me.Value
  loc_C46525: FLdRfVar var_198
  loc_C46528: ConcatVar var_1A8
  loc_C4652C: LitVarStr var_168, " AND EstaPcdf = 'Pagada'"
  loc_C46531: ConcatVar var_1C8
  loc_C46535: LitVarStr var_178, " ORDER BY CodiFapa, CuotDefa"
  loc_C4653A: ConcatVar var_1F8
  loc_C4653E: CStrVarVal var_220
  loc_C46542: FLdRfVar var_90
  loc_C46545: NewIfNullPr clspacudefa
  loc_C46548: Call clspacudefa.RedefineRS(from_stack_1v)
  loc_C4654D: FFreeStr var_21C = ""
  loc_C46554: FFreeAd var_274 = "": var_278 = "": var_27C = ""
  loc_C4655F: FFreeVar var_138 = "": var_128 = "": var_158 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1C8 = ""
  loc_C46572: FLdRfVar var_26C
  loc_C46575: FLdRfVar var_90
  loc_C46578: NewIfNullPr clspacudefa
  loc_C4657B: from_stack_1 = clspacudefa.RecordCount
  loc_C46580: ILdRf var_26C
  loc_C46583: LitI4 0
  loc_C46588: GtI4
  loc_C46589: BranchF loc_C4673A
  loc_C4658C: FLdRfVar var_90
  loc_C4658F: NewIfNullPr clspacudefa
  loc_C46592: Call clspacudefa.MoveFirst()
  loc_C46597: FLdRfVar var_26E
  loc_C4659A: FLdRfVar var_90
  loc_C4659D: NewIfNullPr clspacudefa
  loc_C465A0: from_stack_1 = clspacudefa.EOF
  loc_C465A5: FLdI2 var_26E
  loc_C465A8: NotI4
  loc_C465A9: BranchF loc_C4673A
  loc_C465AC: LitStr "Si"
  loc_C465AF: FStStrCopy var_E0
  loc_C465B2: FLdRfVar var_F8
  loc_C465B5: FLdRfVar var_90
  loc_C465B8: NewIfNullPr clspacudefa
  loc_C465BB: from_stack_1 = clspacudefa.CapiPcdf
  loc_C465C0: LitI4 2
  loc_C465C5: FLdFPR8 var_A4
  loc_C465C8: FLdFPR8 var_F8
  loc_C465CB: FnCDblR8
  loc_C465CD: AddR8
  loc_C465CE: CVarR8
  loc_C465D2: FLdRfVar var_138
  loc_C465D5: ImpAdCallFPR4  = Round(, )
  loc_C465DA: FLdRfVar var_138
  loc_C465DD: CR4Var
  loc_C465DE: FStFPR8 var_A4
  loc_C465E1: FFreeVar var_128 = ""
  loc_C465E8: FLdRfVar var_F8
  loc_C465EB: FLdRfVar var_90
  loc_C465EE: NewIfNullPr clspacudefa
  loc_C465F1: from_stack_1 = clspacudefa.RecaPcdf
  loc_C465F6: LitI4 2
  loc_C465FB: FLdFPR8 var_AC
  loc_C465FE: FLdFPR8 var_F8
  loc_C46601: FnCDblR8
  loc_C46603: AddR8
  loc_C46604: CVarR8
  loc_C46608: FLdRfVar var_138
  loc_C4660B: ImpAdCallFPR4  = Round(, )
  loc_C46610: FLdRfVar var_138
  loc_C46613: CR4Var
  loc_C46614: FStFPR8 var_AC
  loc_C46617: FFreeVar var_128 = ""
  loc_C4661E: FLdRfVar var_F8
  loc_C46621: FLdRfVar var_90
  loc_C46624: NewIfNullPr clspacudefa
  loc_C46627: from_stack_1 = clspacudefa.RemoPcdf
  loc_C4662C: LitI4 2
  loc_C46631: FLdFPR8 var_B4
  loc_C46634: FLdFPR8 var_F8
  loc_C46637: FnCDblR8
  loc_C46639: AddR8
  loc_C4663A: CVarR8
  loc_C4663E: FLdRfVar var_138
  loc_C46641: ImpAdCallFPR4  = Round(, )
  loc_C46646: FLdRfVar var_138
  loc_C46649: CR4Var
  loc_C4664A: FStFPR8 var_B4
  loc_C4664D: FFreeVar var_128 = ""
  loc_C46654: FLdRfVar var_F8
  loc_C46657: FLdRfVar var_90
  loc_C4665A: NewIfNullPr clspacudefa
  loc_C4665D: from_stack_1 = clspacudefa.DecaPcdf
  loc_C46662: LitI4 2
  loc_C46667: FLdFPR8 var_BC
  loc_C4666A: FLdFPR8 var_F8
  loc_C4666D: FnCDblR8
  loc_C4666F: AddR8
  loc_C46670: CVarR8
  loc_C46674: FLdRfVar var_138
  loc_C46677: ImpAdCallFPR4  = Round(, )
  loc_C4667C: FLdRfVar var_138
  loc_C4667F: CR4Var
  loc_C46680: FStFPR8 var_BC
  loc_C46683: FFreeVar var_128 = ""
  loc_C4668A: FLdRfVar var_F8
  loc_C4668D: FLdRfVar var_90
  loc_C46690: NewIfNullPr clspacudefa
  loc_C46693: from_stack_1 = clspacudefa.DerePcdf
  loc_C46698: LitI4 2
  loc_C4669D: FLdFPR8 var_C4
  loc_C466A0: FLdFPR8 var_F8
  loc_C466A3: FnCDblR8
  loc_C466A5: AddR8
  loc_C466A6: CVarR8
  loc_C466AA: FLdRfVar var_138
  loc_C466AD: ImpAdCallFPR4  = Round(, )
  loc_C466B2: FLdRfVar var_138
  loc_C466B5: CR4Var
  loc_C466B6: FStFPR8 var_C4
  loc_C466B9: FFreeVar var_128 = ""
  loc_C466C0: FLdRfVar var_F8
  loc_C466C3: FLdRfVar var_90
  loc_C466C6: NewIfNullPr clspacudefa
  loc_C466C9: from_stack_1 = clspacudefa.IntePcdf
  loc_C466CE: LitI4 2
  loc_C466D3: FLdFPR8 var_CC
  loc_C466D6: FLdFPR8 var_F8
  loc_C466D9: FnCDblR8
  loc_C466DB: AddR8
  loc_C466DC: CVarR8
  loc_C466E0: FLdRfVar var_138
  loc_C466E3: ImpAdCallFPR4  = Round(, )
  loc_C466E8: FLdRfVar var_138
  loc_C466EB: CR4Var
  loc_C466EC: FStFPR8 var_CC
  loc_C466EF: FFreeVar var_128 = ""
  loc_C466F6: FLdRfVar var_F8
  loc_C466F9: FLdRfVar var_90
  loc_C466FC: NewIfNullPr clspacudefa
  loc_C466FF: from_stack_1 = clspacudefa.AprePcdf
  loc_C46704: LitI4 2
  loc_C46709: FLdFPR8 var_D4
  loc_C4670C: FLdFPR8 var_F8
  loc_C4670F: FnCDblR8
  loc_C46711: AddR8
  loc_C46712: CVarR8
  loc_C46716: FLdRfVar var_138
  loc_C46719: ImpAdCallFPR4  = Round(, )
  loc_C4671E: FLdRfVar var_138
  loc_C46721: CR4Var
  loc_C46722: FStFPR8 var_D4
  loc_C46725: FFreeVar var_128 = ""
  loc_C4672C: FLdRfVar var_90
  loc_C4672F: NewIfNullPr clspacudefa
  loc_C46732: Call clspacudefa.MoveSiguiente()
  loc_C46737: Branch loc_C46597
  loc_C4673A: FLdRfVar var_128
  loc_C4673D: FLdRfVar var_278
  loc_C46740: LitVarStr var_108, "CapiDefa"
  loc_C46745: PopAdLdVar
  loc_C46746: FLdRfVar var_274
  loc_C46749: FLdPr Me
  loc_C4674C: MemLdPr global_64
  loc_C4674F:  = Me.Fields
  loc_C46754: FLdPr var_274
  loc_C46757: from_stack_2 = Me.Item(from_stack_1)
  loc_C4675C: FLdPr var_278
  loc_C4675F:  = Me.Value
  loc_C46764: LitI4 2
  loc_C46769: FLdRfVar var_128
  loc_C4676C: FnCDblVar
  loc_C4676E: FLdFPR8 var_A4
  loc_C46771: SubR4
  loc_C46772: CVarR8
  loc_C46776: FLdRfVar var_158
  loc_C46779: ImpAdCallFPR4  = Round(, )
  loc_C4677E: FLdRfVar var_158
  loc_C46781: CR4Var
  loc_C46782: FStFPR8 var_A4
  loc_C46785: FFreeAd var_274 = ""
  loc_C4678C: FFreeVar var_128 = "": var_138 = ""
  loc_C46795: FLdRfVar var_128
  loc_C46798: FLdRfVar var_278
  loc_C4679B: LitVarStr var_108, "RecaDefa"
  loc_C467A0: PopAdLdVar
  loc_C467A1: FLdRfVar var_274
  loc_C467A4: FLdPr Me
  loc_C467A7: MemLdPr global_64
  loc_C467AA:  = Me.Fields
  loc_C467AF: FLdPr var_274
  loc_C467B2: from_stack_2 = Me.Item(from_stack_1)
  loc_C467B7: FLdPr var_278
  loc_C467BA:  = Me.Value
  loc_C467BF: LitI4 2
  loc_C467C4: FLdRfVar var_128
  loc_C467C7: FnCDblVar
  loc_C467C9: FLdFPR8 var_AC
  loc_C467CC: SubR4
  loc_C467CD: CVarR8
  loc_C467D1: FLdRfVar var_158
  loc_C467D4: ImpAdCallFPR4  = Round(, )
  loc_C467D9: FLdRfVar var_158
  loc_C467DC: CR4Var
  loc_C467DD: FStFPR8 var_AC
  loc_C467E0: FFreeAd var_274 = ""
  loc_C467E7: FFreeVar var_128 = "": var_138 = ""
  loc_C467F0: FLdRfVar var_128
  loc_C467F3: FLdRfVar var_278
  loc_C467F6: LitVarStr var_108, "DecaDefa"
  loc_C467FB: PopAdLdVar
  loc_C467FC: FLdRfVar var_274
  loc_C467FF: FLdPr Me
  loc_C46802: MemLdPr global_64
  loc_C46805:  = Me.Fields
  loc_C4680A: FLdPr var_274
  loc_C4680D: from_stack_2 = Me.Item(from_stack_1)
  loc_C46812: FLdPr var_278
  loc_C46815:  = Me.Value
  loc_C4681A: LitI4 2
  loc_C4681F: FLdRfVar var_128
  loc_C46822: FnCDblVar
  loc_C46824: FLdFPR8 var_BC
  loc_C46827: SubR4
  loc_C46828: CVarR8
  loc_C4682C: FLdRfVar var_158
  loc_C4682F: ImpAdCallFPR4  = Round(, )
  loc_C46834: FLdRfVar var_158
  loc_C46837: CR4Var
  loc_C46838: FStFPR8 var_BC
  loc_C4683B: FFreeAd var_274 = ""
  loc_C46842: FFreeVar var_128 = "": var_138 = ""
  loc_C4684B: FLdRfVar var_128
  loc_C4684E: FLdRfVar var_278
  loc_C46851: LitVarStr var_108, "DereDefa"
  loc_C46856: PopAdLdVar
  loc_C46857: FLdRfVar var_274
  loc_C4685A: FLdPr Me
  loc_C4685D: MemLdPr global_64
  loc_C46860:  = Me.Fields
  loc_C46865: FLdPr var_274
  loc_C46868: from_stack_2 = Me.Item(from_stack_1)
  loc_C4686D: FLdPr var_278
  loc_C46870:  = Me.Value
  loc_C46875: LitI4 2
  loc_C4687A: FLdRfVar var_128
  loc_C4687D: FnCDblVar
  loc_C4687F: FLdFPR8 var_C4
  loc_C46882: SubR4
  loc_C46883: CVarR8
  loc_C46887: FLdRfVar var_158
  loc_C4688A: ImpAdCallFPR4  = Round(, )
  loc_C4688F: FLdRfVar var_158
  loc_C46892: CR4Var
  loc_C46893: FStFPR8 var_C4
  loc_C46896: FFreeAd var_274 = ""
  loc_C4689D: FFreeVar var_128 = "": var_138 = ""
  loc_C468A6: FLdRfVar var_128
  loc_C468A9: FLdRfVar var_278
  loc_C468AC: LitVarStr var_108, "InteDefa"
  loc_C468B1: PopAdLdVar
  loc_C468B2: FLdRfVar var_274
  loc_C468B5: FLdPr Me
  loc_C468B8: MemLdPr global_64
  loc_C468BB:  = Me.Fields
  loc_C468C0: FLdPr var_274
  loc_C468C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C468C8: FLdPr var_278
  loc_C468CB:  = Me.Value
  loc_C468D0: LitI4 2
  loc_C468D5: FLdRfVar var_128
  loc_C468D8: FnCDblVar
  loc_C468DA: FLdFPR8 var_CC
  loc_C468DD: SubR4
  loc_C468DE: CVarR8
  loc_C468E2: FLdRfVar var_158
  loc_C468E5: ImpAdCallFPR4  = Round(, )
  loc_C468EA: FLdRfVar var_158
  loc_C468ED: CR4Var
  loc_C468EE: FStFPR8 var_CC
  loc_C468F1: FFreeAd var_274 = ""
  loc_C468F8: FFreeVar var_128 = "": var_138 = ""
  loc_C46901: FLdRfVar var_128
  loc_C46904: FLdRfVar var_278
  loc_C46907: LitVarStr var_108, "ApreDefa"
  loc_C4690C: PopAdLdVar
  loc_C4690D: FLdRfVar var_274
  loc_C46910: FLdPr Me
  loc_C46913: MemLdPr global_64
  loc_C46916:  = Me.Fields
  loc_C4691B: FLdPr var_274
  loc_C4691E: from_stack_2 = Me.Item(from_stack_1)
  loc_C46923: FLdPr var_278
  loc_C46926:  = Me.Value
  loc_C4692B: LitI4 2
  loc_C46930: FLdRfVar var_128
  loc_C46933: FnCDblVar
  loc_C46935: FLdFPR8 var_D4
  loc_C46938: SubR4
  loc_C46939: CVarR8
  loc_C4693D: FLdRfVar var_158
  loc_C46940: ImpAdCallFPR4  = Round(, )
  loc_C46945: FLdRfVar var_158
  loc_C46948: CR4Var
  loc_C46949: FStFPR8 var_D4
  loc_C4694C: FFreeAd var_274 = ""
  loc_C46953: FFreeVar var_128 = "": var_138 = ""
  loc_C4695C: LitI4 2
  loc_C46961: FLdFPR8 var_A4
  loc_C46964: FLdFPR8 var_AC
  loc_C46967: AddR8
  loc_C46968: FLdFPR8 var_BC
  loc_C4696B: SubR4
  loc_C4696C: FLdFPR8 var_C4
  loc_C4696F: SubR4
  loc_C46970: FLdFPR8 var_CC
  loc_C46973: AddR8
  loc_C46974: FLdFPR8 var_D4
  loc_C46977: AddR8
  loc_C46978: CVarR8
  loc_C4697C: FLdRfVar var_138
  loc_C4697F: ImpAdCallFPR4  = Round(, )
  loc_C46984: FLdRfVar var_138
  loc_C46987: CR4Var
  loc_C46988: FStFPR8 var_DC
  loc_C4698B: FFreeVar var_128 = ""
  loc_C46992: FLdRfVar var_128
  loc_C46995: FLdRfVar var_278
  loc_C46998: LitVarStr var_108, "FeveDefa"
  loc_C4699D: PopAdLdVar
  loc_C4699E: FLdRfVar var_274
  loc_C469A1: FLdPr Me
  loc_C469A4: MemLdPr global_64
  loc_C469A7:  = Me.Fields
  loc_C469AC: FLdPr var_274
  loc_C469AF: from_stack_2 = Me.Item(from_stack_1)
  loc_C469B4: FLdPr var_278
  loc_C469B7:  = Me.Value
  loc_C469BC: ILdRf var_88
  loc_C469BF: CDateStr
  loc_C469C1: FLdRfVar var_128
  loc_C469C4: FnCDateVar
  loc_C469C6: GtR4
  loc_C469C7: FFreeAd var_274 = ""
  loc_C469CE: FFree1Var var_128 = ""
  loc_C469D1: BranchF loc_C46A44
  loc_C469D4: FLdRfVar var_128
  loc_C469D7: FLdRfVar var_278
  loc_C469DA: LitVarStr var_108, "FeveDefa"
  loc_C469DF: PopAdLdVar
  loc_C469E0: FLdRfVar var_274
  loc_C469E3: FLdPr Me
  loc_C469E6: MemLdPr global_64
  loc_C469E9:  = Me.Fields
  loc_C469EE: FLdPr var_274
  loc_C469F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C469F6: FLdPr var_278
  loc_C469F9:  = Me.Value
  loc_C469FE: LitI4 2
  loc_C46A03: FLdFPR8 var_DC
  loc_C46A06: ILdRf var_88
  loc_C46A09: CDateStr
  loc_C46A0B: FLdRfVar var_128
  loc_C46A0E: FnCDateVar
  loc_C46A10: SubR4
  loc_C46A11: FLdFPR8 var_9C
  loc_C46A14: MulR8
  loc_C46A15: LitI2_Byte &H1E
  loc_C46A17: CR8I2
  loc_C46A18: DivR8
  loc_C46A19: MulR8
  loc_C46A1A: LitI2_Byte &H64
  loc_C46A1C: CR8I2
  loc_C46A1D: DivR8
  loc_C46A1E: CVarR8
  loc_C46A22: FLdRfVar var_158
  loc_C46A25: ImpAdCallFPR4  = Round(, )
  loc_C46A2A: FLdRfVar var_158
  loc_C46A2D: CR4Var
  loc_C46A2E: FStFPR8 var_B4
  loc_C46A31: FFreeAd var_274 = ""
  loc_C46A38: FFreeVar var_128 = "": var_138 = ""
  loc_C46A41: Branch loc_C46A4A
  loc_C46A44: LitI2_Byte 0
  loc_C46A46: CR8I2
  loc_C46A47: FStFPR8 var_B4
  loc_C46A4A: FLdFPR8 var_DC
  loc_C46A4D: FLdFPR8 var_B4
  loc_C46A50: AddR8
  loc_C46A51: FStFPR8 var_DC
  loc_C46A54: FLdRfVar var_290
  loc_C46A57: LitVarStr var_1D8, "FeveDefa"
  loc_C46A5C: PopAdLdVar
  loc_C46A5D: FLdRfVar var_28C
  loc_C46A60: FLdPr Me
  loc_C46A63: MemLdPr global_64
  loc_C46A66:  = Me.Fields
  loc_C46A6B: FLdPr var_28C
  loc_C46A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C46A73: FLdRfVar var_308
  loc_C46A76: LitVarStr var_304, "FepaDefa"
  loc_C46A7B: PopAdLdVar
  loc_C46A7C: FLdRfVar var_2F4
  loc_C46A7F: FLdPr Me
  loc_C46A82: MemLdPr global_64
  loc_C46A85:  = Me.Fields
  loc_C46A8A: FLdPr var_2F4
  loc_C46A8D: from_stack_2 = Me.Item(from_stack_1)
  loc_C46A92: FLdZeroAd var_308
  loc_C46A95: CVarAd
  loc_C46A99: ImpAdCallI2 IsDate()
  loc_C46A9E: FStI2 var_26E
  loc_C46AA1: FLdRfVar var_330
  loc_C46AA4: LitVarStr var_32C, "FepaDefa"
  loc_C46AA9: PopAdLdVar
  loc_C46AAA: FLdRfVar var_31C
  loc_C46AAD: FLdPr Me
  loc_C46AB0: MemLdPr global_64
  loc_C46AB3:  = Me.Fields
  loc_C46AB8: FLdPr var_31C
  loc_C46ABB: from_stack_2 = Me.Item(from_stack_1)
  loc_C46AC0: LitI4 1
  loc_C46AC5: LitI4 1
  loc_C46ACA: LitVarStr var_350, "'yyyy-mm-dd'"
  loc_C46ACF: FStVarCopyObj var_360
  loc_C46AD2: FLdRfVar var_360
  loc_C46AD5: FLdZeroAd var_330
  loc_C46AD8: CVarAd
  loc_C46ADC: ImpAdCallI2 Format$(, )
  loc_C46AE1: FStStr var_240
  loc_C46AE4: LitStr "INSERT INTO tmp_detafapa (CodiFapa, CuotDefa, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, RemoDefa,DecaDefa,DereDefa,ApreDefa,InteDefa,TotaDefa,CreaPacu,SeleDefa)"
  loc_C46AE7: LitStr " VALUES ("
  loc_C46AEA: ConcatStr
  loc_C46AEB: CVarStr var_138
  loc_C46AEE: FLdRfVar var_128
  loc_C46AF1: FLdRfVar var_278
  loc_C46AF4: LitVarStr var_108, "CodiFapa"
  loc_C46AF9: PopAdLdVar
  loc_C46AFA: FLdRfVar var_274
  loc_C46AFD: FLdPr Me
  loc_C46B00: MemLdPr global_64
  loc_C46B03:  = Me.Fields
  loc_C46B08: FLdPr var_274
  loc_C46B0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C46B10: FLdPr var_278
  loc_C46B13:  = Me.Value
  loc_C46B18: FLdRfVar var_128
  loc_C46B1B: ConcatVar var_158
  loc_C46B1F: LitVarStr var_118, ","
  loc_C46B24: ConcatVar var_188
  loc_C46B28: FLdRfVar var_198
  loc_C46B2B: FLdRfVar var_280
  loc_C46B2E: LitVarStr var_148, "CuotDefa"
  loc_C46B33: PopAdLdVar
  loc_C46B34: FLdRfVar var_27C
  loc_C46B37: FLdPr Me
  loc_C46B3A: MemLdPr global_64
  loc_C46B3D:  = Me.Fields
  loc_C46B42: FLdPr var_27C
  loc_C46B45: from_stack_2 = Me.Item(from_stack_1)
  loc_C46B4A: FLdPr var_280
  loc_C46B4D:  = Me.Value
  loc_C46B52: FLdRfVar var_198
  loc_C46B55: ConcatVar var_1A8
  loc_C46B59: LitVarStr var_168, ",'"
  loc_C46B5E: ConcatVar var_1C8
  loc_C46B62: FLdRfVar var_1F8
  loc_C46B65: FLdRfVar var_288
  loc_C46B68: LitVarStr var_178, "EstaDefa"
  loc_C46B6D: PopAdLdVar
  loc_C46B6E: FLdRfVar var_284
  loc_C46B71: FLdPr Me
  loc_C46B74: MemLdPr global_64
  loc_C46B77:  = Me.Fields
  loc_C46B7C: FLdPr var_284
  loc_C46B7F: from_stack_2 = Me.Item(from_stack_1)
  loc_C46B84: FLdPr var_288
  loc_C46B87:  = Me.Value
  loc_C46B8C: FLdRfVar var_1F8
  loc_C46B8F: ConcatVar var_208
  loc_C46B93: LitVarStr var_1B8, "',"
  loc_C46B98: ConcatVar var_218
  loc_C46B9C: LitI4 1
  loc_C46BA1: LitI4 1
  loc_C46BA6: LitVarStr var_1E8, "'yyyy-mm-dd'"
  loc_C46BAB: FStVarCopyObj var_2B0
  loc_C46BAE: FLdRfVar var_2B0
  loc_C46BB1: FLdZeroAd var_290
  loc_C46BB4: CVarAd
  loc_C46BB8: ImpAdCallI2 Format$(, )
  loc_C46BBD: CVarStr var_2C0
  loc_C46BC0: ConcatVar var_2D0
  loc_C46BC4: LitVarStr var_2E0, ","
  loc_C46BC9: ConcatVar var_2F0
  loc_C46BCD: LitVarStr var_390, "Null"
  loc_C46BD2: FStVarCopyObj var_3A0
  loc_C46BD5: FLdRfVar var_3A0
  loc_C46BD8: FLdZeroAd var_240
  loc_C46BDB: CVarStr var_380
  loc_C46BDE: FLdI2 var_26E
  loc_C46BE1: CVarBoolI2 var_370
  loc_C46BE5: FLdRfVar var_3B0
  loc_C46BE8: ImpAdCallFPR4  = IIf(, , )
  loc_C46BED: FLdRfVar var_3B0
  loc_C46BF0: ConcatVar var_3C0
  loc_C46BF4: LitVarStr var_3D0, ","
  loc_C46BF9: ConcatVar var_3E0
  loc_C46BFD: LitI4 0
  loc_C46C02: LitI4 -1
  loc_C46C07: LitI4 1
  loc_C46C0C: LitStr "."
  loc_C46C0F: LitStr ","
  loc_C46C12: FLdFPR8 var_A4
  loc_C46C15: CStrR8
  loc_C46C17: FStStrNoPop var_21C
  loc_C46C1A: ImpAdCallI2 Replace(, , , , , )
  loc_C46C1F: CVarStr var_3F0
  loc_C46C22: ConcatVar var_400
  loc_C46C26: LitVarStr var_410, ","
  loc_C46C2B: ConcatVar var_420
  loc_C46C2F: LitI4 0
  loc_C46C34: LitI4 -1
  loc_C46C39: LitI4 1
  loc_C46C3E: LitStr "."
  loc_C46C41: LitStr ","
  loc_C46C44: FLdFPR8 var_AC
  loc_C46C47: CStrR8
  loc_C46C49: FStStrNoPop var_220
  loc_C46C4C: ImpAdCallI2 Replace(, , , , , )
  loc_C46C51: CVarStr var_430
  loc_C46C54: ConcatVar var_440
  loc_C46C58: LitVarStr var_450, ","
  loc_C46C5D: ConcatVar var_460
  loc_C46C61: LitI4 0
  loc_C46C66: LitI4 -1
  loc_C46C6B: LitI4 1
  loc_C46C70: LitStr "."
  loc_C46C73: LitStr ","
  loc_C46C76: FLdFPR8 var_B4
  loc_C46C79: CStrR8
  loc_C46C7B: FStStrNoPop var_224
  loc_C46C7E: ImpAdCallI2 Replace(, , , , , )
  loc_C46C83: CVarStr var_470
  loc_C46C86: ConcatVar var_480
  loc_C46C8A: LitVarStr var_490, ","
  loc_C46C8F: ConcatVar var_4A0
  loc_C46C93: LitI4 0
  loc_C46C98: LitI4 -1
  loc_C46C9D: LitI4 1
  loc_C46CA2: LitStr "."
  loc_C46CA5: LitStr ","
  loc_C46CA8: FLdFPR8 var_BC
  loc_C46CAB: CStrR8
  loc_C46CAD: FStStrNoPop var_228
  loc_C46CB0: ImpAdCallI2 Replace(, , , , , )
  loc_C46CB5: CVarStr var_4B0
  loc_C46CB8: ConcatVar var_4C0
  loc_C46CBC: LitVarStr var_4D0, ","
  loc_C46CC1: ConcatVar var_4E0
  loc_C46CC5: LitI4 0
  loc_C46CCA: LitI4 -1
  loc_C46CCF: LitI4 1
  loc_C46CD4: LitStr "."
  loc_C46CD7: LitStr ","
  loc_C46CDA: FLdFPR8 var_C4
  loc_C46CDD: CStrR8
  loc_C46CDF: FStStrNoPop var_22C
  loc_C46CE2: ImpAdCallI2 Replace(, , , , , )
  loc_C46CE7: CVarStr var_4F0
  loc_C46CEA: ConcatVar var_500
  loc_C46CEE: LitVarStr var_510, ","
  loc_C46CF3: ConcatVar var_520
  loc_C46CF7: LitI4 0
  loc_C46CFC: LitI4 -1
  loc_C46D01: LitI4 1
  loc_C46D06: LitStr "."
  loc_C46D09: LitStr ","
  loc_C46D0C: FLdFPR8 var_D4
  loc_C46D0F: CStrR8
  loc_C46D11: FStStrNoPop var_230
  loc_C46D14: ImpAdCallI2 Replace(, , , , , )
  loc_C46D19: CVarStr var_530
  loc_C46D1C: ConcatVar var_540
  loc_C46D20: LitVarStr var_550, ","
  loc_C46D25: ConcatVar var_560
  loc_C46D29: LitI4 0
  loc_C46D2E: LitI4 -1
  loc_C46D33: LitI4 1
  loc_C46D38: LitStr "."
  loc_C46D3B: LitStr ","
  loc_C46D3E: FLdFPR8 var_CC
  loc_C46D41: CStrR8
  loc_C46D43: FStStrNoPop var_234
  loc_C46D46: ImpAdCallI2 Replace(, , , , , )
  loc_C46D4B: CVarStr var_570
  loc_C46D4E: ConcatVar var_580
  loc_C46D52: LitVarStr var_590, ","
  loc_C46D57: ConcatVar var_5A0
  loc_C46D5B: LitI4 0
  loc_C46D60: LitI4 -1
  loc_C46D65: LitI4 1
  loc_C46D6A: LitStr "."
  loc_C46D6D: LitStr ","
  loc_C46D70: FLdFPR8 var_DC
  loc_C46D73: CStrR8
  loc_C46D75: FStStrNoPop var_238
  loc_C46D78: ImpAdCallI2 Replace(, , , , , )
  loc_C46D7D: CVarStr var_5B0
  loc_C46D80: ConcatVar var_5C0
  loc_C46D84: LitVarStr var_5D0, ",'"
  loc_C46D89: ConcatVar var_5E0
  loc_C46D8D: ILdRf var_E0
  loc_C46D90: CVarStr var_5F0
  loc_C46D93: ConcatVar var_600
  loc_C46D97: LitVarStr var_610, "','No')"
  loc_C46D9C: ConcatVar var_620
  loc_C46DA0: CStrVarVal var_23C
  loc_C46DA4: Call EjecutarRsCls(from_stack_1v)
  loc_C46DA9: FFreeStr var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = ""
  loc_C46DC0: FFreeAd var_274 = "": var_278 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = "": var_28C = "": var_2F4 = ""
  loc_C46DD5: FFreeVar var_470 = "": var_480 = "": var_4A0 = "": var_4B0 = "": var_4C0 = "": var_4E0 = "": var_4F0 = "": var_500 = "": var_520 = "": var_530 = "": var_540 = "": var_560 = "": var_570 = "": var_580 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5E0 = "": var_600 = "": var_620 = "": var_138 = "": var_128 = "": var_158 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1C8 = "": var_1F8 = "": var_208 = "": var_2A0 = "": var_2B0 = "": var_218 = "": var_2C0 = "": var_2D0 = "": var_318 = "": var_340 = "": var_360 = "": var_370 = "": var_380 = "": var_3A0 = "": var_2F0 = "": var_3B0 = "": var_3C0 = "": var_3E0 = "": var_3F0 = "": var_400 = "": var_420 = "": var_430 = "": var_440 = ""
  loc_C46E3C: FLdPr Me
  loc_C46E3F: MemLdPr global_64
  loc_C46E42: Me.MoveNext
  loc_C46E47: Branch loc_C46465
  loc_C46E4A: ExitProcHresult
End Sub

Public Sub CreaTemporalConsultaDetaFapa(lCodiFapa, FechVenc, sNombTemporal) 'CA9384
  'Data Table: 4493AC
  loc_CA76EC: ILdRf FechVenc
  loc_CA76EF: FStStrCopy var_88
  loc_CA76F2: ILdRf sNombTemporal
  loc_CA76F5: FStStrCopy var_8C
  loc_CA76F8: FLdRfVar var_F4
  loc_CA76FB: LitI4 0
  loc_CA7700: FLdRfVar var_90
  loc_CA7703: NewIfNullPr clsinteres
  loc_CA7706: from_stack_2v = clsinteres.BuscaInteres(from_stack_1v)
  loc_CA770B: FLdFPR8 var_F4
  loc_CA770E: FStFPR8 var_9C
  loc_CA7711: LitStr "DROP TEMPORARY TABLE IF EXISTS "
  loc_CA7714: ILdRf var_8C
  loc_CA7717: ConcatStr
  loc_CA7718: FStStrNoPop var_F8
  loc_CA771B: LitStr ";"
  loc_CA771E: ConcatStr
  loc_CA771F: FStStrNoPop var_FC
  loc_CA7722: LitStr " CREATE TEMPORARY TABLE "
  loc_CA7725: ConcatStr
  loc_CA7726: FStStrNoPop var_100
  loc_CA7729: ILdRf var_8C
  loc_CA772C: ConcatStr
  loc_CA772D: FStStrNoPop var_104
  loc_CA7730: LitStr " ("
  loc_CA7733: ConcatStr
  loc_CA7734: FStStrNoPop var_108
  loc_CA7737: LitStr "odiFapa` int(8) unsigned NOT NULL default '0',"
  loc_CA773A: ConcatStr
  loc_CA773B: FStStrNoPop var_10C
  loc_CA773E: LitStr "uotDefa` smallint(4) unsigned NOT NULL default '0',"
  loc_CA7741: ConcatStr
  loc_CA7742: FStStrNoPop var_110
  loc_CA7745: LitStr "eriBole` int(4) unsigned NOT NULL default '0',"
  loc_CA7748: ConcatStr
  loc_CA7749: FStStrNoPop var_114
  loc_CA774C: LitStr "umeBole` int(8) unsigned NOT NULL default '0',"
  loc_CA774F: ConcatStr
  loc_CA7750: FStStrNoPop var_118
  loc_CA7753: LitStr "staDefa` char(15) NOT NULL default '',"
  loc_CA7756: ConcatStr
  loc_CA7757: FStStrNoPop var_11C
  loc_CA775A: LitStr "eveDefa` date default NULL,"
  loc_CA775D: ConcatStr
  loc_CA775E: FStStrNoPop var_120
  loc_CA7761: LitStr "epaDefa` date default NULL,"
  loc_CA7764: ConcatStr
  loc_CA7765: FStStrNoPop var_124
  loc_CA7768: LitStr "apiDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA776B: ConcatStr
  loc_CA776C: FStStrNoPop var_128
  loc_CA776F: LitStr "ecaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA7772: ConcatStr
  loc_CA7773: FStStrNoPop var_12C
  loc_CA7776: LitStr "ecaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA7779: ConcatStr
  loc_CA777A: FStStrNoPop var_130
  loc_CA777D: LitStr "ereDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA7780: ConcatStr
  loc_CA7781: FStStrNoPop var_134
  loc_CA7784: LitStr "preDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA7787: ConcatStr
  loc_CA7788: FStStrNoPop var_138
  loc_CA778B: LitStr "nteDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA778E: ConcatStr
  loc_CA778F: FStStrNoPop var_13C
  loc_CA7792: LitStr "emoDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA7795: ConcatStr
  loc_CA7796: FStStrNoPop var_140
  loc_CA7799: LitStr "acuDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA779C: ConcatStr
  loc_CA779D: FStStrNoPop var_144
  loc_CA77A0: LitStr "otaDefa` decimal(10,2) NOT NULL default '0.00',"
  loc_CA77A3: ConcatStr
  loc_CA77A4: FStStrNoPop var_148
  loc_CA77A7: LitStr "eleDefa` char(2) NOT NULL default '',"
  loc_CA77AA: ConcatStr
  loc_CA77AB: FStStrNoPop var_14C
  loc_CA77AE: LitStr " KEY  (odiFapa`,`CuotDefa`)"
  loc_CA77B1: ConcatStr
  loc_CA77B2: FStStrNoPop var_150
  loc_CA77B5: LitStr ") ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_CA77B8: ConcatStr
  loc_CA77B9: FStStrNoPop var_154
  loc_CA77BC: Call EjecutarRsCls1(from_stack_1v)
  loc_CA77C1: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_CA77F4: LitStr "SELECT * FROM "
  loc_CA77F7: ILdRf var_8C
  loc_CA77FA: ConcatStr
  loc_CA77FB: FStStrNoPop var_F8
  loc_CA77FE: Call EjecutarRsCls1(from_stack_1v)
  loc_CA7803: FFree1Str var_F8
  loc_CA7806: LitStr "SELECT detafapa.CodiFapa, detafapa.CuotDefa, IFNULL(boleto.PeriBole,0) PeriBole , IFNULL(boleto.NumeBole,0) NumeBole, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, DecaDefa, DereDefa, ApreDefa, InteDefa, TotaDefa "
  loc_CA7809: LitStr " FROM detafapa "
  loc_CA780C: ConcatStr
  loc_CA780D: FStStrNoPop var_F8
  loc_CA7810: LitStr " INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa"
  loc_CA7813: ConcatStr
  loc_CA7814: FStStrNoPop var_FC
  loc_CA7817: LitStr " LEFT JOIN boleto ON boleto.CodiOfic = facipago.CodiOfic"
  loc_CA781A: ConcatStr
  loc_CA781B: FStStrNoPop var_100
  loc_CA781E: LitStr " AND boleto.CuenCtct = facipago.CuenCtct"
  loc_CA7821: ConcatStr
  loc_CA7822: FStStrNoPop var_104
  loc_CA7825: LitStr " AND boleto.CodiFapa = facipago.CodiFapa"
  loc_CA7828: ConcatStr
  loc_CA7829: FStStrNoPop var_108
  loc_CA782C: LitStr " AND boleto.CuotDefa = detafapa.CuotDefa"
  loc_CA782F: ConcatStr
  loc_CA7830: FStStrNoPop var_10C
  loc_CA7833: LitStr " WHERE detafapa.CodiFapa = "
  loc_CA7836: ConcatStr
  loc_CA7837: FStStrNoPop var_110
  loc_CA783A: ILdRf lCodiFapa
  loc_CA783D: CStrI4
  loc_CA783F: FStStrNoPop var_114
  loc_CA7842: ConcatStr
  loc_CA7843: FStStrNoPop var_118
  loc_CA7846: LitStr " ORDER BY CodiFapa, CuotDefa"
  loc_CA7849: ConcatStr
  loc_CA784A: FStStrNoPop var_11C
  loc_CA784D: Call EjecutarRsCls2(from_stack_1v)
  loc_CA7852: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_CA7869: FLdRfVar var_158
  loc_CA786C: FLdPr Me
  loc_CA786F: MemLdPr global_64
  loc_CA7872:  = Me.RecordCount
  loc_CA7877: ILdRf var_158
  loc_CA787A: LitI4 0
  loc_CA787F: GtI4
  loc_CA7880: BranchF loc_CA9382
  loc_CA7883: FLdPr Me
  loc_CA7886: MemLdPr global_64
  loc_CA7889: Me.MoveFirst
  loc_CA788E: FLdRfVar var_15A
  loc_CA7891: FLdPr Me
  loc_CA7894: MemLdPr global_64
  loc_CA7897:  = Me.EOF
  loc_CA789C: FLdI2 var_15A
  loc_CA789F: NotI4
  loc_CA78A0: BranchF loc_CA9382
  loc_CA78A3: LitI2_Byte 0
  loc_CA78A5: CR8I2
  loc_CA78A6: FStFPR8 var_A4
  loc_CA78A9: LitI2_Byte 0
  loc_CA78AB: CR8I2
  loc_CA78AC: FStFPR8 var_AC
  loc_CA78AF: LitI2_Byte 0
  loc_CA78B1: CR8I2
  loc_CA78B2: FStFPR8 var_B4
  loc_CA78B5: LitI2_Byte 0
  loc_CA78B7: CR8I2
  loc_CA78B8: FStFPR8 var_BC
  loc_CA78BB: LitI2_Byte 0
  loc_CA78BD: CR8I2
  loc_CA78BE: FStFPR8 var_C4
  loc_CA78C1: LitI2_Byte 0
  loc_CA78C3: CR8I2
  loc_CA78C4: FStFPR8 var_CC
  loc_CA78C7: LitI2_Byte 0
  loc_CA78C9: CR8I2
  loc_CA78CA: FStFPR8 var_D4
  loc_CA78CD: LitI2_Byte 0
  loc_CA78CF: CR8I2
  loc_CA78D0: FStFPR8 var_DC
  loc_CA78D3: FLdRfVar var_174
  loc_CA78D6: LitVarStr var_170, "FepaDefa"
  loc_CA78DB: PopAdLdVar
  loc_CA78DC: FLdRfVar var_160
  loc_CA78DF: FLdPr Me
  loc_CA78E2: MemLdPr global_64
  loc_CA78E5:  = Me.Fields
  loc_CA78EA: FLdPr var_160
  loc_CA78ED: from_stack_2 = Me.Item(from_stack_1)
  loc_CA78F2: FLdZeroAd var_174
  loc_CA78F5: CVarAd
  loc_CA78F9: ImpAdCallI2 IsNull()
  loc_CA78FE: FFree1Ad var_160
  loc_CA7901: FFree1Var var_184 = ""
  loc_CA7904: BranchF loc_CA841C
  loc_CA7907: LitStr "SELECT CapiPcdf, RecaPcdf, RemoPcdf, DecaPcdf, DerePcdf, AprePcdf, IntePcdf, TotaPcdf "
  loc_CA790A: LitStr " FROM pacudefa "
  loc_CA790D: ConcatStr
  loc_CA790E: FStStrNoPop var_F8
  loc_CA7911: LitStr " WHERE CodiFapa = "
  loc_CA7914: ConcatStr
  loc_CA7915: CVarStr var_194
  loc_CA7918: FLdRfVar var_184
  loc_CA791B: FLdRfVar var_174
  loc_CA791E: LitVarStr var_170, "CodiFapa"
  loc_CA7923: PopAdLdVar
  loc_CA7924: FLdRfVar var_160
  loc_CA7927: FLdPr Me
  loc_CA792A: MemLdPr global_64
  loc_CA792D:  = Me.Fields
  loc_CA7932: FLdPr var_160
  loc_CA7935: from_stack_2 = Me.Item(from_stack_1)
  loc_CA793A: FLdPr var_174
  loc_CA793D:  = Me.Value
  loc_CA7942: FLdRfVar var_184
  loc_CA7945: ConcatVar var_1A4
  loc_CA7949: LitVarStr var_1B4, " AND CuotDefa = "
  loc_CA794E: ConcatVar var_1C4
  loc_CA7952: FLdRfVar var_1EC
  loc_CA7955: FLdRfVar var_1DC
  loc_CA7958: LitVarStr var_1D8, "CuotDefa"
  loc_CA795D: PopAdLdVar
  loc_CA795E: FLdRfVar var_1C8
  loc_CA7961: FLdPr Me
  loc_CA7964: MemLdPr global_64
  loc_CA7967:  = Me.Fields
  loc_CA796C: FLdPr var_1C8
  loc_CA796F: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7974: FLdPr var_1DC
  loc_CA7977:  = Me.Value
  loc_CA797C: FLdRfVar var_1EC
  loc_CA797F: ConcatVar var_1FC
  loc_CA7983: LitVarStr var_20C, " AND EstaPcdf = 'Pagada'"
  loc_CA7988: ConcatVar var_21C
  loc_CA798C: LitVarStr var_22C, " ORDER BY CodiFapa, CuotDefa"
  loc_CA7991: ConcatVar var_23C
  loc_CA7995: CStrVarVal var_FC
  loc_CA7999: FLdRfVar var_94
  loc_CA799C: NewIfNullPr clspacudefa
  loc_CA799F: Call clspacudefa.RedefineRS(from_stack_1v)
  loc_CA79A4: FFreeStr var_F8 = ""
  loc_CA79AB: FFreeAd var_160 = "": var_174 = "": var_1C8 = ""
  loc_CA79B6: FFreeVar var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = ""
  loc_CA79C9: FLdRfVar var_158
  loc_CA79CC: FLdRfVar var_94
  loc_CA79CF: NewIfNullPr clspacudefa
  loc_CA79D2: from_stack_1 = clspacudefa.RecordCount
  loc_CA79D7: ILdRf var_158
  loc_CA79DA: LitI4 0
  loc_CA79DF: GtI4
  loc_CA79E0: BranchF loc_CA7B8B
  loc_CA79E3: FLdRfVar var_94
  loc_CA79E6: NewIfNullPr clspacudefa
  loc_CA79E9: Call clspacudefa.MoveFirst()
  loc_CA79EE: FLdRfVar var_15A
  loc_CA79F1: FLdRfVar var_94
  loc_CA79F4: NewIfNullPr clspacudefa
  loc_CA79F7: from_stack_1 = clspacudefa.EOF
  loc_CA79FC: FLdI2 var_15A
  loc_CA79FF: NotI4
  loc_CA7A00: BranchF loc_CA7B8B
  loc_CA7A03: FLdRfVar var_F4
  loc_CA7A06: FLdRfVar var_94
  loc_CA7A09: NewIfNullPr clspacudefa
  loc_CA7A0C: from_stack_1 = clspacudefa.CapiPcdf
  loc_CA7A11: LitI4 2
  loc_CA7A16: FLdFPR8 var_A4
  loc_CA7A19: FLdFPR8 var_F4
  loc_CA7A1C: FnCDblR8
  loc_CA7A1E: AddR8
  loc_CA7A1F: CVarR8
  loc_CA7A23: FLdRfVar var_194
  loc_CA7A26: ImpAdCallFPR4  = Round(, )
  loc_CA7A2B: FLdRfVar var_194
  loc_CA7A2E: CR4Var
  loc_CA7A2F: FStFPR8 var_A4
  loc_CA7A32: FFreeVar var_184 = ""
  loc_CA7A39: FLdRfVar var_F4
  loc_CA7A3C: FLdRfVar var_94
  loc_CA7A3F: NewIfNullPr clspacudefa
  loc_CA7A42: from_stack_1 = clspacudefa.RecaPcdf
  loc_CA7A47: LitI4 2
  loc_CA7A4C: FLdFPR8 var_AC
  loc_CA7A4F: FLdFPR8 var_F4
  loc_CA7A52: FnCDblR8
  loc_CA7A54: AddR8
  loc_CA7A55: CVarR8
  loc_CA7A59: FLdRfVar var_194
  loc_CA7A5C: ImpAdCallFPR4  = Round(, )
  loc_CA7A61: FLdRfVar var_194
  loc_CA7A64: CR4Var
  loc_CA7A65: FStFPR8 var_AC
  loc_CA7A68: FFreeVar var_184 = ""
  loc_CA7A6F: FLdRfVar var_F4
  loc_CA7A72: FLdRfVar var_94
  loc_CA7A75: NewIfNullPr clspacudefa
  loc_CA7A78: from_stack_1 = clspacudefa.RemoPcdf
  loc_CA7A7D: LitI4 2
  loc_CA7A82: FLdFPR8 var_B4
  loc_CA7A85: FLdFPR8 var_F4
  loc_CA7A88: FnCDblR8
  loc_CA7A8A: AddR8
  loc_CA7A8B: CVarR8
  loc_CA7A8F: FLdRfVar var_194
  loc_CA7A92: ImpAdCallFPR4  = Round(, )
  loc_CA7A97: FLdRfVar var_194
  loc_CA7A9A: CR4Var
  loc_CA7A9B: FStFPR8 var_B4
  loc_CA7A9E: FFreeVar var_184 = ""
  loc_CA7AA5: FLdRfVar var_F4
  loc_CA7AA8: FLdRfVar var_94
  loc_CA7AAB: NewIfNullPr clspacudefa
  loc_CA7AAE: from_stack_1 = clspacudefa.DecaPcdf
  loc_CA7AB3: LitI4 2
  loc_CA7AB8: FLdFPR8 var_BC
  loc_CA7ABB: FLdFPR8 var_F4
  loc_CA7ABE: FnCDblR8
  loc_CA7AC0: AddR8
  loc_CA7AC1: CVarR8
  loc_CA7AC5: FLdRfVar var_194
  loc_CA7AC8: ImpAdCallFPR4  = Round(, )
  loc_CA7ACD: FLdRfVar var_194
  loc_CA7AD0: CR4Var
  loc_CA7AD1: FStFPR8 var_BC
  loc_CA7AD4: FFreeVar var_184 = ""
  loc_CA7ADB: FLdRfVar var_F4
  loc_CA7ADE: FLdRfVar var_94
  loc_CA7AE1: NewIfNullPr clspacudefa
  loc_CA7AE4: from_stack_1 = clspacudefa.DerePcdf
  loc_CA7AE9: LitI4 2
  loc_CA7AEE: FLdFPR8 var_C4
  loc_CA7AF1: FLdFPR8 var_F4
  loc_CA7AF4: FnCDblR8
  loc_CA7AF6: AddR8
  loc_CA7AF7: CVarR8
  loc_CA7AFB: FLdRfVar var_194
  loc_CA7AFE: ImpAdCallFPR4  = Round(, )
  loc_CA7B03: FLdRfVar var_194
  loc_CA7B06: CR4Var
  loc_CA7B07: FStFPR8 var_C4
  loc_CA7B0A: FFreeVar var_184 = ""
  loc_CA7B11: FLdRfVar var_F4
  loc_CA7B14: FLdRfVar var_94
  loc_CA7B17: NewIfNullPr clspacudefa
  loc_CA7B1A: from_stack_1 = clspacudefa.IntePcdf
  loc_CA7B1F: LitI4 2
  loc_CA7B24: FLdFPR8 var_CC
  loc_CA7B27: FLdFPR8 var_F4
  loc_CA7B2A: FnCDblR8
  loc_CA7B2C: AddR8
  loc_CA7B2D: CVarR8
  loc_CA7B31: FLdRfVar var_194
  loc_CA7B34: ImpAdCallFPR4  = Round(, )
  loc_CA7B39: FLdRfVar var_194
  loc_CA7B3C: CR4Var
  loc_CA7B3D: FStFPR8 var_CC
  loc_CA7B40: FFreeVar var_184 = ""
  loc_CA7B47: FLdRfVar var_F4
  loc_CA7B4A: FLdRfVar var_94
  loc_CA7B4D: NewIfNullPr clspacudefa
  loc_CA7B50: from_stack_1 = clspacudefa.AprePcdf
  loc_CA7B55: LitI4 2
  loc_CA7B5A: FLdFPR8 var_D4
  loc_CA7B5D: FLdFPR8 var_F4
  loc_CA7B60: FnCDblR8
  loc_CA7B62: AddR8
  loc_CA7B63: CVarR8
  loc_CA7B67: FLdRfVar var_194
  loc_CA7B6A: ImpAdCallFPR4  = Round(, )
  loc_CA7B6F: FLdRfVar var_194
  loc_CA7B72: CR4Var
  loc_CA7B73: FStFPR8 var_D4
  loc_CA7B76: FFreeVar var_184 = ""
  loc_CA7B7D: FLdRfVar var_94
  loc_CA7B80: NewIfNullPr clspacudefa
  loc_CA7B83: Call clspacudefa.MoveSiguiente()
  loc_CA7B88: Branch loc_CA79EE
  loc_CA7B8B: FLdRfVar var_184
  loc_CA7B8E: FLdRfVar var_174
  loc_CA7B91: LitVarStr var_170, "CapiDefa"
  loc_CA7B96: PopAdLdVar
  loc_CA7B97: FLdRfVar var_160
  loc_CA7B9A: FLdPr Me
  loc_CA7B9D: MemLdPr global_64
  loc_CA7BA0:  = Me.Fields
  loc_CA7BA5: FLdPr var_160
  loc_CA7BA8: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7BAD: FLdPr var_174
  loc_CA7BB0:  = Me.Value
  loc_CA7BB5: FLdRfVar var_194
  loc_CA7BB8: FLdRfVar var_1DC
  loc_CA7BBB: LitVarStr var_1B4, "RecaDefa"
  loc_CA7BC0: PopAdLdVar
  loc_CA7BC1: FLdRfVar var_1C8
  loc_CA7BC4: FLdPr Me
  loc_CA7BC7: MemLdPr global_64
  loc_CA7BCA:  = Me.Fields
  loc_CA7BCF: FLdPr var_1C8
  loc_CA7BD2: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7BD7: FLdPr var_1DC
  loc_CA7BDA:  = Me.Value
  loc_CA7BDF: FLdRfVar var_1A4
  loc_CA7BE2: FLdRfVar var_244
  loc_CA7BE5: LitVarStr var_1D8, "ApreDefa"
  loc_CA7BEA: PopAdLdVar
  loc_CA7BEB: FLdRfVar var_240
  loc_CA7BEE: FLdPr Me
  loc_CA7BF1: MemLdPr global_64
  loc_CA7BF4:  = Me.Fields
  loc_CA7BF9: FLdPr var_240
  loc_CA7BFC: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7C01: FLdPr var_244
  loc_CA7C04:  = Me.Value
  loc_CA7C09: FLdRfVar var_1C4
  loc_CA7C0C: FLdRfVar var_24C
  loc_CA7C0F: LitVarStr var_20C, "InteDefa"
  loc_CA7C14: PopAdLdVar
  loc_CA7C15: FLdRfVar var_248
  loc_CA7C18: FLdPr Me
  loc_CA7C1B: MemLdPr global_64
  loc_CA7C1E:  = Me.Fields
  loc_CA7C23: FLdPr var_248
  loc_CA7C26: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7C2B: FLdPr var_24C
  loc_CA7C2E:  = Me.Value
  loc_CA7C33: FLdRfVar var_1EC
  loc_CA7C36: FLdRfVar var_254
  loc_CA7C39: LitVarStr var_22C, "DecaDefa"
  loc_CA7C3E: PopAdLdVar
  loc_CA7C3F: FLdRfVar var_250
  loc_CA7C42: FLdPr Me
  loc_CA7C45: MemLdPr global_64
  loc_CA7C48:  = Me.Fields
  loc_CA7C4D: FLdPr var_250
  loc_CA7C50: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7C55: FLdPr var_254
  loc_CA7C58:  = Me.Value
  loc_CA7C5D: FLdRfVar var_1FC
  loc_CA7C60: FLdRfVar var_26C
  loc_CA7C63: LitVarStr var_268, "DereDefa"
  loc_CA7C68: PopAdLdVar
  loc_CA7C69: FLdRfVar var_258
  loc_CA7C6C: FLdPr Me
  loc_CA7C6F: MemLdPr global_64
  loc_CA7C72:  = Me.Fields
  loc_CA7C77: FLdPr var_258
  loc_CA7C7A: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7C7F: FLdPr var_26C
  loc_CA7C82:  = Me.Value
  loc_CA7C87: LitI4 2
  loc_CA7C8C: FLdFPR8 var_A4
  loc_CA7C8F: FLdFPR8 var_AC
  loc_CA7C92: AddR8
  loc_CA7C93: FLdFPR8 var_CC
  loc_CA7C96: AddR8
  loc_CA7C97: FLdFPR8 var_D4
  loc_CA7C9A: AddR8
  loc_CA7C9B: FLdFPR8 var_BC
  loc_CA7C9E: SubR4
  loc_CA7C9F: FLdFPR8 var_C4
  loc_CA7CA2: SubR4
  loc_CA7CA3: CVarR8
  loc_CA7CA7: FLdRfVar var_23C
  loc_CA7CAA: ImpAdCallFPR4  = Round(, )
  loc_CA7CAF: LitI4 2
  loc_CA7CB4: FLdRfVar var_184
  loc_CA7CB7: FnCDblVar
  loc_CA7CB9: FLdRfVar var_194
  loc_CA7CBC: FnCDblVar
  loc_CA7CBE: AddR8
  loc_CA7CBF: FLdRfVar var_1A4
  loc_CA7CC2: FnCDblVar
  loc_CA7CC4: AddR8
  loc_CA7CC5: FLdRfVar var_1C4
  loc_CA7CC8: FnCDblVar
  loc_CA7CCA: AddR8
  loc_CA7CCB: FLdRfVar var_1EC
  loc_CA7CCE: FnCDblVar
  loc_CA7CD0: SubR4
  loc_CA7CD1: FLdRfVar var_1FC
  loc_CA7CD4: FnCDblVar
  loc_CA7CD6: SubR4
  loc_CA7CD7: CVarR8
  loc_CA7CDB: FLdRfVar var_23C
  loc_CA7CDE: SubVar var_29C
  loc_CA7CE2: FStVar var_2AC
  loc_CA7CE6: FLdRfVar var_2AC
  loc_CA7CE9: FLdRfVar var_2BC
  loc_CA7CEC: ImpAdCallFPR4  = Round(, )
  loc_CA7CF1: FLdRfVar var_2BC
  loc_CA7CF4: CR4Var
  loc_CA7CF5: FStFPR8 var_DC
  loc_CA7CF8: FFreeAd var_160 = "": var_174 = "": var_1C8 = "": var_1DC = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = ""
  loc_CA7D13: FFreeVar var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = "": var_23C = "": var_2AC = ""
  loc_CA7D2A: FLdRfVar var_184
  loc_CA7D2D: FLdRfVar var_174
  loc_CA7D30: LitVarStr var_170, "FeveDefa"
  loc_CA7D35: PopAdLdVar
  loc_CA7D36: FLdRfVar var_160
  loc_CA7D39: FLdPr Me
  loc_CA7D3C: MemLdPr global_64
  loc_CA7D3F:  = Me.Fields
  loc_CA7D44: FLdPr var_160
  loc_CA7D47: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7D4C: FLdPr var_174
  loc_CA7D4F:  = Me.Value
  loc_CA7D54: ILdRf var_88
  loc_CA7D57: CDateStr
  loc_CA7D59: FLdRfVar var_184
  loc_CA7D5C: FnCDateVar
  loc_CA7D5E: GtR4
  loc_CA7D5F: FLdRfVar var_1DC
  loc_CA7D62: LitVarStr var_1B4, "FepaDefa"
  loc_CA7D67: PopAdLdVar
  loc_CA7D68: FLdRfVar var_1C8
  loc_CA7D6B: FLdPr Me
  loc_CA7D6E: MemLdPr global_64
  loc_CA7D71:  = Me.Fields
  loc_CA7D76: FLdPr var_1C8
  loc_CA7D79: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7D7E: FLdZeroAd var_1DC
  loc_CA7D81: CVarAd
  loc_CA7D85: ImpAdCallI2 IsNull()
  loc_CA7D8A: AndI4
  loc_CA7D8B: FFreeAd var_160 = "": var_174 = ""
  loc_CA7D94: FFreeVar var_184 = ""
  loc_CA7D9B: BranchF loc_CA7E0E
  loc_CA7D9E: FLdRfVar var_184
  loc_CA7DA1: FLdRfVar var_174
  loc_CA7DA4: LitVarStr var_170, "FeveDefa"
  loc_CA7DA9: PopAdLdVar
  loc_CA7DAA: FLdRfVar var_160
  loc_CA7DAD: FLdPr Me
  loc_CA7DB0: MemLdPr global_64
  loc_CA7DB3:  = Me.Fields
  loc_CA7DB8: FLdPr var_160
  loc_CA7DBB: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7DC0: FLdPr var_174
  loc_CA7DC3:  = Me.Value
  loc_CA7DC8: LitI4 2
  loc_CA7DCD: FLdFPR8 var_DC
  loc_CA7DD0: ILdRf var_88
  loc_CA7DD3: CDateStr
  loc_CA7DD5: FLdRfVar var_184
  loc_CA7DD8: FnCDateVar
  loc_CA7DDA: SubR4
  loc_CA7DDB: FLdFPR8 var_9C
  loc_CA7DDE: MulR8
  loc_CA7DDF: LitI2_Byte &H1E
  loc_CA7DE1: CR8I2
  loc_CA7DE2: DivR8
  loc_CA7DE3: MulR8
  loc_CA7DE4: LitI2_Byte &H64
  loc_CA7DE6: CR8I2
  loc_CA7DE7: DivR8
  loc_CA7DE8: CVarR8
  loc_CA7DEC: FLdRfVar var_1A4
  loc_CA7DEF: ImpAdCallFPR4  = Round(, )
  loc_CA7DF4: FLdRfVar var_1A4
  loc_CA7DF7: CR4Var
  loc_CA7DF8: FStFPR8 var_B4
  loc_CA7DFB: FFreeAd var_160 = ""
  loc_CA7E02: FFreeVar var_184 = "": var_194 = ""
  loc_CA7E0B: Branch loc_CA7E14
  loc_CA7E0E: LitI2_Byte 0
  loc_CA7E10: CR8I2
  loc_CA7E11: FStFPR8 var_B4
  loc_CA7E14: FLdRfVar var_26C
  loc_CA7E17: LitVarStr var_33C, "FeveDefa"
  loc_CA7E1C: PopAdLdVar
  loc_CA7E1D: FLdRfVar var_258
  loc_CA7E20: FLdPr Me
  loc_CA7E23: MemLdPr global_64
  loc_CA7E26:  = Me.Fields
  loc_CA7E2B: FLdPr var_258
  loc_CA7E2E: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7E33: FLdRfVar var_3C4
  loc_CA7E36: LitVarStr var_3C0, "FepaDefa"
  loc_CA7E3B: PopAdLdVar
  loc_CA7E3C: FLdRfVar var_3B0
  loc_CA7E3F: FLdPr Me
  loc_CA7E42: MemLdPr global_64
  loc_CA7E45:  = Me.Fields
  loc_CA7E4A: FLdPr var_3B0
  loc_CA7E4D: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7E52: FLdZeroAd var_3C4
  loc_CA7E55: CVarAd
  loc_CA7E59: ImpAdCallI2 IsDate()
  loc_CA7E5E: FStI2 var_15A
  loc_CA7E61: FLdRfVar var_3EC
  loc_CA7E64: LitVarStr var_3E8, "FepaDefa"
  loc_CA7E69: PopAdLdVar
  loc_CA7E6A: FLdRfVar var_3D8
  loc_CA7E6D: FLdPr Me
  loc_CA7E70: MemLdPr global_64
  loc_CA7E73:  = Me.Fields
  loc_CA7E78: FLdPr var_3D8
  loc_CA7E7B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7E80: LitI4 1
  loc_CA7E85: LitI4 1
  loc_CA7E8A: LitVarStr var_40C, "'yyyy-mm-dd'"
  loc_CA7E8F: FStVarCopyObj var_41C
  loc_CA7E92: FLdRfVar var_41C
  loc_CA7E95: FLdZeroAd var_3EC
  loc_CA7E98: CVarAd
  loc_CA7E9C: ImpAdCallI2 Format$(, )
  loc_CA7EA1: FStStr var_128
  loc_CA7EA4: FLdRfVar var_4C4
  loc_CA7EA7: FLdRfVar var_4B4
  loc_CA7EAA: LitVarStr var_4B0, "CapiDefa"
  loc_CA7EAF: PopAdLdVar
  loc_CA7EB0: FLdRfVar var_4A0
  loc_CA7EB3: FLdPr Me
  loc_CA7EB6: MemLdPr global_64
  loc_CA7EB9:  = Me.Fields
  loc_CA7EBE: FLdPr var_4A0
  loc_CA7EC1: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7EC6: FLdPr var_4B4
  loc_CA7EC9:  = Me.Value
  loc_CA7ECE: FLdRfVar var_52C
  loc_CA7ED1: FLdRfVar var_51C
  loc_CA7ED4: LitVarStr var_518, "RecaDefa"
  loc_CA7ED9: PopAdLdVar
  loc_CA7EDA: FLdRfVar var_508
  loc_CA7EDD: FLdPr Me
  loc_CA7EE0: MemLdPr global_64
  loc_CA7EE3:  = Me.Fields
  loc_CA7EE8: FLdPr var_508
  loc_CA7EEB: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7EF0: FLdPr var_51C
  loc_CA7EF3:  = Me.Value
  loc_CA7EF8: FLdRfVar var_5D4
  loc_CA7EFB: FLdRfVar var_5C4
  loc_CA7EFE: LitVarStr var_5C0, "DecaDefa"
  loc_CA7F03: PopAdLdVar
  loc_CA7F04: FLdRfVar var_5B0
  loc_CA7F07: FLdPr Me
  loc_CA7F0A: MemLdPr global_64
  loc_CA7F0D:  = Me.Fields
  loc_CA7F12: FLdPr var_5B0
  loc_CA7F15: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7F1A: FLdPr var_5C4
  loc_CA7F1D:  = Me.Value
  loc_CA7F22: FLdRfVar var_63C
  loc_CA7F25: FLdRfVar var_62C
  loc_CA7F28: LitVarStr var_628, "DereDefa"
  loc_CA7F2D: PopAdLdVar
  loc_CA7F2E: FLdRfVar var_618
  loc_CA7F31: FLdPr Me
  loc_CA7F34: MemLdPr global_64
  loc_CA7F37:  = Me.Fields
  loc_CA7F3C: FLdPr var_618
  loc_CA7F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7F44: FLdPr var_62C
  loc_CA7F47:  = Me.Value
  loc_CA7F4C: FLdRfVar var_6A4
  loc_CA7F4F: FLdRfVar var_694
  loc_CA7F52: LitVarStr var_690, "ApreDefa"
  loc_CA7F57: PopAdLdVar
  loc_CA7F58: FLdRfVar var_680
  loc_CA7F5B: FLdPr Me
  loc_CA7F5E: MemLdPr global_64
  loc_CA7F61:  = Me.Fields
  loc_CA7F66: FLdPr var_680
  loc_CA7F69: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7F6E: FLdPr var_694
  loc_CA7F71:  = Me.Value
  loc_CA7F76: FLdRfVar var_70C
  loc_CA7F79: FLdRfVar var_6FC
  loc_CA7F7C: LitVarStr var_6F8, "InteDefa"
  loc_CA7F81: PopAdLdVar
  loc_CA7F82: FLdRfVar var_6E8
  loc_CA7F85: FLdPr Me
  loc_CA7F88: MemLdPr global_64
  loc_CA7F8B:  = Me.Fields
  loc_CA7F90: FLdPr var_6E8
  loc_CA7F93: from_stack_2 = Me.Item(from_stack_1)
  loc_CA7F98: FLdPr var_6FC
  loc_CA7F9B:  = Me.Value
  loc_CA7FA0: LitI4 2
  loc_CA7FA5: FLdFPR8 var_A4
  loc_CA7FA8: FLdFPR8 var_AC
  loc_CA7FAB: AddR8
  loc_CA7FAC: FLdFPR8 var_CC
  loc_CA7FAF: AddR8
  loc_CA7FB0: FLdFPR8 var_D4
  loc_CA7FB3: AddR8
  loc_CA7FB4: FLdFPR8 var_BC
  loc_CA7FB7: SubR4
  loc_CA7FB8: FLdFPR8 var_C4
  loc_CA7FBB: SubR4
  loc_CA7FBC: CVarR8
  loc_CA7FC0: FLdRfVar var_77C
  loc_CA7FC3: ImpAdCallFPR4  = Round(, )
  loc_CA7FC8: LitI4 2
  loc_CA7FCD: FLdFPR8 var_DC
  loc_CA7FD0: FLdFPR8 var_B4
  loc_CA7FD3: AddR8
  loc_CA7FD4: CVarR8
  loc_CA7FD8: FLdRfVar var_7EC
  loc_CA7FDB: ImpAdCallFPR4  = Round(, )
  loc_CA7FE0: LitStr "INSERT INTO "
  loc_CA7FE3: ILdRf var_8C
  loc_CA7FE6: ConcatStr
  loc_CA7FE7: FStStrNoPop var_F8
  loc_CA7FEA: LitStr " (CodiFapa, CuotDefa, PeriBole, NumeBole, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, RemoDefa, DecaDefa, DereDefa, ApreDefa, InteDefa, PacuDefa, TotaDefa, SeleDefa)"
  loc_CA7FED: ConcatStr
  loc_CA7FEE: FStStrNoPop var_FC
  loc_CA7FF1: LitStr " VALUES ("
  loc_CA7FF4: ConcatStr
  loc_CA7FF5: CVarStr var_194
  loc_CA7FF8: FLdRfVar var_184
  loc_CA7FFB: FLdRfVar var_174
  loc_CA7FFE: LitVarStr var_170, "CodiFapa"
  loc_CA8003: PopAdLdVar
  loc_CA8004: FLdRfVar var_160
  loc_CA8007: FLdPr Me
  loc_CA800A: MemLdPr global_64
  loc_CA800D:  = Me.Fields
  loc_CA8012: FLdPr var_160
  loc_CA8015: from_stack_2 = Me.Item(from_stack_1)
  loc_CA801A: FLdPr var_174
  loc_CA801D:  = Me.Value
  loc_CA8022: FLdRfVar var_184
  loc_CA8025: ConcatVar var_1A4
  loc_CA8029: LitVarStr var_1B4, ","
  loc_CA802E: ConcatVar var_1C4
  loc_CA8032: FLdRfVar var_1EC
  loc_CA8035: FLdRfVar var_1DC
  loc_CA8038: LitVarStr var_1D8, "CuotDefa"
  loc_CA803D: PopAdLdVar
  loc_CA803E: FLdRfVar var_1C8
  loc_CA8041: FLdPr Me
  loc_CA8044: MemLdPr global_64
  loc_CA8047:  = Me.Fields
  loc_CA804C: FLdPr var_1C8
  loc_CA804F: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8054: FLdPr var_1DC
  loc_CA8057:  = Me.Value
  loc_CA805C: FLdRfVar var_1EC
  loc_CA805F: ConcatVar var_1FC
  loc_CA8063: LitVarStr var_20C, ","
  loc_CA8068: ConcatVar var_21C
  loc_CA806C: FLdRfVar var_23C
  loc_CA806F: FLdRfVar var_244
  loc_CA8072: LitVarStr var_22C, "PeriBole"
  loc_CA8077: PopAdLdVar
  loc_CA8078: FLdRfVar var_240
  loc_CA807B: FLdPr Me
  loc_CA807E: MemLdPr global_64
  loc_CA8081:  = Me.Fields
  loc_CA8086: FLdPr var_240
  loc_CA8089: from_stack_2 = Me.Item(from_stack_1)
  loc_CA808E: FLdPr var_244
  loc_CA8091:  = Me.Value
  loc_CA8096: FLdRfVar var_23C
  loc_CA8099: ConcatVar var_29C
  loc_CA809D: LitVarStr var_268, ","
  loc_CA80A2: ConcatVar var_2AC
  loc_CA80A6: FLdRfVar var_2BC
  loc_CA80A9: FLdRfVar var_24C
  loc_CA80AC: LitVarStr var_27C, "NumeBole"
  loc_CA80B1: PopAdLdVar
  loc_CA80B2: FLdRfVar var_248
  loc_CA80B5: FLdPr Me
  loc_CA80B8: MemLdPr global_64
  loc_CA80BB:  = Me.Fields
  loc_CA80C0: FLdPr var_248
  loc_CA80C3: from_stack_2 = Me.Item(from_stack_1)
  loc_CA80C8: FLdPr var_24C
  loc_CA80CB:  = Me.Value
  loc_CA80D0: FLdRfVar var_2BC
  loc_CA80D3: ConcatVar var_2CC
  loc_CA80D7: LitVarStr var_28C, ",'"
  loc_CA80DC: ConcatVar var_2DC
  loc_CA80E0: FLdRfVar var_2FC
  loc_CA80E3: FLdRfVar var_254
  loc_CA80E6: LitVarStr var_2EC, "EstaDefa"
  loc_CA80EB: PopAdLdVar
  loc_CA80EC: FLdRfVar var_250
  loc_CA80EF: FLdPr Me
  loc_CA80F2: MemLdPr global_64
  loc_CA80F5:  = Me.Fields
  loc_CA80FA: FLdPr var_250
  loc_CA80FD: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8102: FLdPr var_254
  loc_CA8105:  = Me.Value
  loc_CA810A: FLdRfVar var_2FC
  loc_CA810D: ConcatVar var_30C
  loc_CA8111: LitVarStr var_31C, "',"
  loc_CA8116: ConcatVar var_32C
  loc_CA811A: LitI4 1
  loc_CA811F: LitI4 1
  loc_CA8124: LitVarStr var_35C, "'yyyy-mm-dd'"
  loc_CA8129: FStVarCopyObj var_36C
  loc_CA812C: FLdRfVar var_36C
  loc_CA812F: FLdZeroAd var_26C
  loc_CA8132: CVarAd
  loc_CA8136: ImpAdCallI2 Format$(, )
  loc_CA813B: CVarStr var_37C
  loc_CA813E: ConcatVar var_38C
  loc_CA8142: LitVarStr var_39C, ","
  loc_CA8147: ConcatVar var_3AC
  loc_CA814B: LitVarStr var_44C, "Null"
  loc_CA8150: FStVarCopyObj var_45C
  loc_CA8153: FLdRfVar var_45C
  loc_CA8156: FLdZeroAd var_128
  loc_CA8159: CVarStr var_43C
  loc_CA815C: FLdI2 var_15A
  loc_CA815F: CVarBoolI2 var_42C
  loc_CA8163: FLdRfVar var_46C
  loc_CA8166: ImpAdCallFPR4  = IIf(, , )
  loc_CA816B: FLdRfVar var_46C
  loc_CA816E: ConcatVar var_47C
  loc_CA8172: LitVarStr var_48C, ","
  loc_CA8177: ConcatVar var_49C
  loc_CA817B: LitI4 0
  loc_CA8180: LitI4 -1
  loc_CA8185: LitI4 1
  loc_CA818A: LitStr "."
  loc_CA818D: LitStr ","
  loc_CA8190: FLdRfVar var_4C4
  loc_CA8193: CStrVarTmp
  loc_CA8194: FStStrNoPop var_100
  loc_CA8197: ImpAdCallI2 Replace(, , , , , )
  loc_CA819C: CVarStr var_4D4
  loc_CA819F: ConcatVar var_4E4
  loc_CA81A3: LitVarStr var_4F4, ","
  loc_CA81A8: ConcatVar var_504
  loc_CA81AC: LitI4 0
  loc_CA81B1: LitI4 -1
  loc_CA81B6: LitI4 1
  loc_CA81BB: LitStr "."
  loc_CA81BE: LitStr ","
  loc_CA81C1: FLdRfVar var_52C
  loc_CA81C4: CStrVarTmp
  loc_CA81C5: FStStrNoPop var_104
  loc_CA81C8: ImpAdCallI2 Replace(, , , , , )
  loc_CA81CD: CVarStr var_53C
  loc_CA81D0: ConcatVar var_54C
  loc_CA81D4: LitVarStr var_55C, ","
  loc_CA81D9: ConcatVar var_56C
  loc_CA81DD: LitI4 0
  loc_CA81E2: LitI4 -1
  loc_CA81E7: LitI4 1
  loc_CA81EC: LitStr "."
  loc_CA81EF: LitStr ","
  loc_CA81F2: FLdFPR8 var_B4
  loc_CA81F5: CStrR8
  loc_CA81F7: FStStrNoPop var_108
  loc_CA81FA: ImpAdCallI2 Replace(, , , , , )
  loc_CA81FF: CVarStr var_57C
  loc_CA8202: ConcatVar var_58C
  loc_CA8206: LitVarStr var_59C, ","
  loc_CA820B: ConcatVar var_5AC
  loc_CA820F: LitI4 0
  loc_CA8214: LitI4 -1
  loc_CA8219: LitI4 1
  loc_CA821E: LitStr "."
  loc_CA8221: LitStr ","
  loc_CA8224: FLdRfVar var_5D4
  loc_CA8227: CStrVarTmp
  loc_CA8228: FStStrNoPop var_10C
  loc_CA822B: ImpAdCallI2 Replace(, , , , , )
  loc_CA8230: CVarStr var_5E4
  loc_CA8233: ConcatVar var_5F4
  loc_CA8237: LitVarStr var_604, ","
  loc_CA823C: ConcatVar var_614
  loc_CA8240: LitI4 0
  loc_CA8245: LitI4 -1
  loc_CA824A: LitI4 1
  loc_CA824F: LitStr "."
  loc_CA8252: LitStr ","
  loc_CA8255: FLdRfVar var_63C
  loc_CA8258: CStrVarTmp
  loc_CA8259: FStStrNoPop var_110
  loc_CA825C: ImpAdCallI2 Replace(, , , , , )
  loc_CA8261: CVarStr var_64C
  loc_CA8264: ConcatVar var_65C
  loc_CA8268: LitVarStr var_66C, ","
  loc_CA826D: ConcatVar var_67C
  loc_CA8271: LitI4 0
  loc_CA8276: LitI4 -1
  loc_CA827B: LitI4 1
  loc_CA8280: LitStr "."
  loc_CA8283: LitStr ","
  loc_CA8286: FLdRfVar var_6A4
  loc_CA8289: CStrVarTmp
  loc_CA828A: FStStrNoPop var_114
  loc_CA828D: ImpAdCallI2 Replace(, , , , , )
  loc_CA8292: CVarStr var_6B4
  loc_CA8295: ConcatVar var_6C4
  loc_CA8299: LitVarStr var_6D4, ","
  loc_CA829E: ConcatVar var_6E4
  loc_CA82A2: LitI4 0
  loc_CA82A7: LitI4 -1
  loc_CA82AC: LitI4 1
  loc_CA82B1: LitStr "."
  loc_CA82B4: LitStr ","
  loc_CA82B7: FLdRfVar var_70C
  loc_CA82BA: CStrVarTmp
  loc_CA82BB: FStStrNoPop var_118
  loc_CA82BE: ImpAdCallI2 Replace(, , , , , )
  loc_CA82C3: CVarStr var_71C
  loc_CA82C6: ConcatVar var_72C
  loc_CA82CA: LitVarStr var_73C, ","
  loc_CA82CF: ConcatVar var_74C
  loc_CA82D3: LitI4 0
  loc_CA82D8: LitI4 -1
  loc_CA82DD: LitI4 1
  loc_CA82E2: LitStr "."
  loc_CA82E5: LitStr ","
  loc_CA82E8: FLdRfVar var_77C
  loc_CA82EB: CStrVarVal var_11C
  loc_CA82EF: ImpAdCallI2 Replace(, , , , , )
  loc_CA82F4: CVarStr var_78C
  loc_CA82F7: ConcatVar var_79C
  loc_CA82FB: LitVarStr var_7AC, ","
  loc_CA8300: ConcatVar var_7BC
  loc_CA8304: LitI4 0
  loc_CA8309: LitI4 -1
  loc_CA830E: LitI4 1
  loc_CA8313: LitStr "."
  loc_CA8316: LitStr ","
  loc_CA8319: FLdRfVar var_7EC
  loc_CA831C: CStrVarVal var_120
  loc_CA8320: ImpAdCallI2 Replace(, , , , , )
  loc_CA8325: CVarStr var_7FC
  loc_CA8328: ConcatVar var_80C
  loc_CA832C: LitVarStr var_81C, ",'No')"
  loc_CA8331: ConcatVar var_82C
  loc_CA8335: CStrVarVal var_124
  loc_CA8339: Call EjecutarRsCls(from_stack_1v)
  loc_CA833E: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA835B: FFreeAd var_160 = "": var_174 = "": var_1C8 = "": var_1DC = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_3B0 = "": var_3D8 = "": var_4A0 = "": var_4B4 = "": var_508 = "": var_51C = "": var_5B0 = "": var_5C4 = "": var_618 = "": var_62C = "": var_680 = "": var_694 = "": var_6E8 = ""
  loc_CA8390: FFreeVar var_79C = "": var_7DC = "": var_7EC = "": var_7BC = "": var_7FC = "": var_80C = "": var_82C = "": var_49C = "": var_4D4 = "": var_4E4 = "": var_52C = "": var_504 = "": var_53C = "": var_54C = "": var_56C = "": var_57C = "": var_58C = "": var_5D4 = "": var_5AC = "": var_5E4 = "": var_5F4 = "": var_63C = "": var_614 = "": var_64C = "": var_65C = "": var_6A4 = "": var_67C = "": var_6B4 = "": var_6C4 = "": var_70C = "": var_6E4 = "": var_71C = "": var_72C = "": var_76C = "": var_77C = "": var_74C = "": var_78C = "": var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = "": var_23C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2FC = "": var_30C = "": var_34C = "": var_36C = "": var_32C = "": var_37C = "": var_38C = "": var_3D4 = "": var_3FC = "": var_41C = "": var_42C = "": var_43C = "": var_45C = "": var_3AC = "": var_46C = "": var_47C = ""
  loc_CA8419: Branch loc_CA9374
  loc_CA841C: FLdRfVar var_184
  loc_CA841F: FLdRfVar var_174
  loc_CA8422: LitVarStr var_170, "CapiDefa"
  loc_CA8427: PopAdLdVar
  loc_CA8428: FLdRfVar var_160
  loc_CA842B: FLdPr Me
  loc_CA842E: MemLdPr global_64
  loc_CA8431:  = Me.Fields
  loc_CA8436: FLdPr var_160
  loc_CA8439: from_stack_2 = Me.Item(from_stack_1)
  loc_CA843E: FLdPr var_174
  loc_CA8441:  = Me.Value
  loc_CA8446: FLdRfVar var_194
  loc_CA8449: FLdRfVar var_1DC
  loc_CA844C: LitVarStr var_1B4, "RecaDefa"
  loc_CA8451: PopAdLdVar
  loc_CA8452: FLdRfVar var_1C8
  loc_CA8455: FLdPr Me
  loc_CA8458: MemLdPr global_64
  loc_CA845B:  = Me.Fields
  loc_CA8460: FLdPr var_1C8
  loc_CA8463: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8468: FLdPr var_1DC
  loc_CA846B:  = Me.Value
  loc_CA8470: FLdRfVar var_1A4
  loc_CA8473: FLdRfVar var_244
  loc_CA8476: LitVarStr var_1D8, "ApreDefa"
  loc_CA847B: PopAdLdVar
  loc_CA847C: FLdRfVar var_240
  loc_CA847F: FLdPr Me
  loc_CA8482: MemLdPr global_64
  loc_CA8485:  = Me.Fields
  loc_CA848A: FLdPr var_240
  loc_CA848D: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8492: FLdPr var_244
  loc_CA8495:  = Me.Value
  loc_CA849A: FLdRfVar var_1C4
  loc_CA849D: FLdRfVar var_24C
  loc_CA84A0: LitVarStr var_20C, "InteDefa"
  loc_CA84A5: PopAdLdVar
  loc_CA84A6: FLdRfVar var_248
  loc_CA84A9: FLdPr Me
  loc_CA84AC: MemLdPr global_64
  loc_CA84AF:  = Me.Fields
  loc_CA84B4: FLdPr var_248
  loc_CA84B7: from_stack_2 = Me.Item(from_stack_1)
  loc_CA84BC: FLdPr var_24C
  loc_CA84BF:  = Me.Value
  loc_CA84C4: FLdRfVar var_1EC
  loc_CA84C7: FLdRfVar var_254
  loc_CA84CA: LitVarStr var_22C, "DecaDefa"
  loc_CA84CF: PopAdLdVar
  loc_CA84D0: FLdRfVar var_250
  loc_CA84D3: FLdPr Me
  loc_CA84D6: MemLdPr global_64
  loc_CA84D9:  = Me.Fields
  loc_CA84DE: FLdPr var_250
  loc_CA84E1: from_stack_2 = Me.Item(from_stack_1)
  loc_CA84E6: FLdPr var_254
  loc_CA84E9:  = Me.Value
  loc_CA84EE: FLdRfVar var_1FC
  loc_CA84F1: FLdRfVar var_26C
  loc_CA84F4: LitVarStr var_268, "DereDefa"
  loc_CA84F9: PopAdLdVar
  loc_CA84FA: FLdRfVar var_258
  loc_CA84FD: FLdPr Me
  loc_CA8500: MemLdPr global_64
  loc_CA8503:  = Me.Fields
  loc_CA8508: FLdPr var_258
  loc_CA850B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8510: FLdPr var_26C
  loc_CA8513:  = Me.Value
  loc_CA8518: LitI4 2
  loc_CA851D: FLdFPR8 var_A4
  loc_CA8520: FLdFPR8 var_AC
  loc_CA8523: AddR8
  loc_CA8524: FLdFPR8 var_CC
  loc_CA8527: AddR8
  loc_CA8528: FLdFPR8 var_D4
  loc_CA852B: AddR8
  loc_CA852C: FLdFPR8 var_BC
  loc_CA852F: SubR4
  loc_CA8530: FLdFPR8 var_C4
  loc_CA8533: SubR4
  loc_CA8534: CVarR8
  loc_CA8538: FLdRfVar var_23C
  loc_CA853B: ImpAdCallFPR4  = Round(, )
  loc_CA8540: LitI4 2
  loc_CA8545: FLdRfVar var_184
  loc_CA8548: FnCDblVar
  loc_CA854A: FLdRfVar var_194
  loc_CA854D: FnCDblVar
  loc_CA854F: AddR8
  loc_CA8550: FLdRfVar var_1A4
  loc_CA8553: FnCDblVar
  loc_CA8555: AddR8
  loc_CA8556: FLdRfVar var_1C4
  loc_CA8559: FnCDblVar
  loc_CA855B: AddR8
  loc_CA855C: FLdRfVar var_1EC
  loc_CA855F: FnCDblVar
  loc_CA8561: SubR4
  loc_CA8562: FLdRfVar var_1FC
  loc_CA8565: FnCDblVar
  loc_CA8567: SubR4
  loc_CA8568: CVarR8
  loc_CA856C: FLdRfVar var_23C
  loc_CA856F: SubVar var_29C
  loc_CA8573: FStVar var_2AC
  loc_CA8577: FLdRfVar var_2AC
  loc_CA857A: FLdRfVar var_2BC
  loc_CA857D: ImpAdCallFPR4  = Round(, )
  loc_CA8582: FLdRfVar var_2BC
  loc_CA8585: CR4Var
  loc_CA8586: FStFPR8 var_DC
  loc_CA8589: FFreeAd var_160 = "": var_174 = "": var_1C8 = "": var_1DC = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = ""
  loc_CA85A4: FFreeVar var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = "": var_23C = "": var_2AC = ""
  loc_CA85BB: FLdRfVar var_184
  loc_CA85BE: FLdRfVar var_174
  loc_CA85C1: LitVarStr var_170, "FeveDefa"
  loc_CA85C6: PopAdLdVar
  loc_CA85C7: FLdRfVar var_160
  loc_CA85CA: FLdPr Me
  loc_CA85CD: MemLdPr global_64
  loc_CA85D0:  = Me.Fields
  loc_CA85D5: FLdPr var_160
  loc_CA85D8: from_stack_2 = Me.Item(from_stack_1)
  loc_CA85DD: FLdPr var_174
  loc_CA85E0:  = Me.Value
  loc_CA85E5: ILdRf var_88
  loc_CA85E8: CDateStr
  loc_CA85EA: FLdRfVar var_184
  loc_CA85ED: FnCDateVar
  loc_CA85EF: GtR4
  loc_CA85F0: FLdRfVar var_1DC
  loc_CA85F3: LitVarStr var_1B4, "FepaDefa"
  loc_CA85F8: PopAdLdVar
  loc_CA85F9: FLdRfVar var_1C8
  loc_CA85FC: FLdPr Me
  loc_CA85FF: MemLdPr global_64
  loc_CA8602:  = Me.Fields
  loc_CA8607: FLdPr var_1C8
  loc_CA860A: from_stack_2 = Me.Item(from_stack_1)
  loc_CA860F: FLdZeroAd var_1DC
  loc_CA8612: CVarAd
  loc_CA8616: ImpAdCallI2 IsNull()
  loc_CA861B: AndI4
  loc_CA861C: FFreeAd var_160 = "": var_174 = ""
  loc_CA8625: FFreeVar var_184 = ""
  loc_CA862C: BranchF loc_CA869F
  loc_CA862F: FLdRfVar var_184
  loc_CA8632: FLdRfVar var_174
  loc_CA8635: LitVarStr var_170, "FeveDefa"
  loc_CA863A: PopAdLdVar
  loc_CA863B: FLdRfVar var_160
  loc_CA863E: FLdPr Me
  loc_CA8641: MemLdPr global_64
  loc_CA8644:  = Me.Fields
  loc_CA8649: FLdPr var_160
  loc_CA864C: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8651: FLdPr var_174
  loc_CA8654:  = Me.Value
  loc_CA8659: LitI4 2
  loc_CA865E: FLdFPR8 var_DC
  loc_CA8661: ILdRf var_88
  loc_CA8664: CDateStr
  loc_CA8666: FLdRfVar var_184
  loc_CA8669: FnCDateVar
  loc_CA866B: SubR4
  loc_CA866C: FLdFPR8 var_9C
  loc_CA866F: MulR8
  loc_CA8670: LitI2_Byte &H1E
  loc_CA8672: CR8I2
  loc_CA8673: DivR8
  loc_CA8674: MulR8
  loc_CA8675: LitI2_Byte &H64
  loc_CA8677: CR8I2
  loc_CA8678: DivR8
  loc_CA8679: CVarR8
  loc_CA867D: FLdRfVar var_1A4
  loc_CA8680: ImpAdCallFPR4  = Round(, )
  loc_CA8685: FLdRfVar var_1A4
  loc_CA8688: CR4Var
  loc_CA8689: FStFPR8 var_B4
  loc_CA868C: FFreeAd var_160 = ""
  loc_CA8693: FFreeVar var_184 = "": var_194 = ""
  loc_CA869C: Branch loc_CA86A5
  loc_CA869F: LitI2_Byte 0
  loc_CA86A1: CR8I2
  loc_CA86A2: FStFPR8 var_B4
  loc_CA86A5: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_faci;"
  loc_CA86A8: LitStr " CREATE TEMPORARY TABLE tmp_faci"
  loc_CA86AB: ConcatStr
  loc_CA86AC: FStStrNoPop var_F8
  loc_CA86AF: LitStr " SELECT detapago.FeenAcpa, detapago.NumeAcpa, detapago.PeriBole, detapago.NumeBole, detapago.CodiFapa, detapago.CuotDefa, pago.FepaPago"
  loc_CA86B2: ConcatStr
  loc_CA86B3: FStStrNoPop var_FC
  loc_CA86B6: LitStr " FROM detapago"
  loc_CA86B9: ConcatStr
  loc_CA86BA: FStStrNoPop var_100
  loc_CA86BD: LitStr " INNER JOIN pago ON pago.FeenAcpa = detapago.FeenAcpa AND pago.NumeAcpa = detapago.NumeAcpa AND pago.PeriBole = detapago.PeriBole AND pago.NumeBole = detapago.NumeBole"
  loc_CA86C0: ConcatStr
  loc_CA86C1: FStStrNoPop var_104
  loc_CA86C4: LitStr " WHERE detapago.CodiFapa = "
  loc_CA86C7: ConcatStr
  loc_CA86C8: CVarStr var_194
  loc_CA86CB: FLdRfVar var_184
  loc_CA86CE: FLdRfVar var_174
  loc_CA86D1: LitVarStr var_170, "CodiFapa"
  loc_CA86D6: PopAdLdVar
  loc_CA86D7: FLdRfVar var_160
  loc_CA86DA: FLdPr Me
  loc_CA86DD: MemLdPr global_64
  loc_CA86E0:  = Me.Fields
  loc_CA86E5: FLdPr var_160
  loc_CA86E8: from_stack_2 = Me.Item(from_stack_1)
  loc_CA86ED: FLdPr var_174
  loc_CA86F0:  = Me.Value
  loc_CA86F5: FLdRfVar var_184
  loc_CA86F8: ConcatVar var_1A4
  loc_CA86FC: LitVarStr var_1B4, " AND detapago.CuotDefa = "
  loc_CA8701: ConcatVar var_1C4
  loc_CA8705: FLdRfVar var_1EC
  loc_CA8708: FLdRfVar var_1DC
  loc_CA870B: LitVarStr var_1D8, "CuotDefa"
  loc_CA8710: PopAdLdVar
  loc_CA8711: FLdRfVar var_1C8
  loc_CA8714: FLdPr Me
  loc_CA8717: MemLdPr global_64
  loc_CA871A:  = Me.Fields
  loc_CA871F: FLdPr var_1C8
  loc_CA8722: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8727: FLdPr var_1DC
  loc_CA872A:  = Me.Value
  loc_CA872F: FLdRfVar var_1EC
  loc_CA8732: ConcatVar var_1FC
  loc_CA8736: LitVarStr var_20C, " ANd ActuDepa = 'Si'"
  loc_CA873B: ConcatVar var_21C
  loc_CA873F: LitVarStr var_22C, " GROUP BY CodiFapa, CuotDefa, FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_CA8744: ConcatVar var_23C
  loc_CA8748: CStrVarVal var_108
  loc_CA874C: Call EjecutarRsCls3(from_stack_1v)
  loc_CA8751: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_CA875E: FFreeAd var_160 = "": var_174 = "": var_1C8 = ""
  loc_CA8769: FFreeVar var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = ""
  loc_CA877C: LitStr "SELECT * FROM tmp_faci"
  loc_CA877F: Call EjecutarRsCls3(from_stack_1v)
  loc_CA8784: FLdRfVar var_158
  loc_CA8787: FLdPr Me
  loc_CA878A: MemLdPr global_68
  loc_CA878D:  = Me.RecordCount
  loc_CA8792: ILdRf var_158
  loc_CA8795: LitI4 0
  loc_CA879A: GtI4
  loc_CA879B: BranchF loc_CA8D6F
  loc_CA879E: FLdPr Me
  loc_CA87A1: MemLdPr global_68
  loc_CA87A4: Me.MoveFirst
  loc_CA87A9: FLdRfVar var_15A
  loc_CA87AC: FLdPr Me
  loc_CA87AF: MemLdPr global_68
  loc_CA87B2:  = Me.EOF
  loc_CA87B7: FLdI2 var_15A
  loc_CA87BA: NotI4
  loc_CA87BB: BranchF loc_CA8D6C
  loc_CA87BE: FLdRfVar var_26C
  loc_CA87C1: LitVarStr var_33C, "FeveDefa"
  loc_CA87C6: PopAdLdVar
  loc_CA87C7: FLdRfVar var_258
  loc_CA87CA: FLdPr Me
  loc_CA87CD: MemLdPr global_64
  loc_CA87D0:  = Me.Fields
  loc_CA87D5: FLdPr var_258
  loc_CA87D8: from_stack_2 = Me.Item(from_stack_1)
  loc_CA87DD: FLdRfVar var_3C4
  loc_CA87E0: LitVarStr var_3C0, "FepaPago"
  loc_CA87E5: PopAdLdVar
  loc_CA87E6: FLdRfVar var_3B0
  loc_CA87E9: FLdPr Me
  loc_CA87EC: MemLdPr global_68
  loc_CA87EF:  = Me.Fields
  loc_CA87F4: FLdPr var_3B0
  loc_CA87F7: from_stack_2 = Me.Item(from_stack_1)
  loc_CA87FC: FLdZeroAd var_3C4
  loc_CA87FF: CVarAd
  loc_CA8803: ImpAdCallI2 IsDate()
  loc_CA8808: FStI2 var_15A
  loc_CA880B: FLdRfVar var_3EC
  loc_CA880E: LitVarStr var_3E8, "FepaPago"
  loc_CA8813: PopAdLdVar
  loc_CA8814: FLdRfVar var_3D8
  loc_CA8817: FLdPr Me
  loc_CA881A: MemLdPr global_68
  loc_CA881D:  = Me.Fields
  loc_CA8822: FLdPr var_3D8
  loc_CA8825: from_stack_2 = Me.Item(from_stack_1)
  loc_CA882A: LitI4 1
  loc_CA882F: LitI4 1
  loc_CA8834: LitVarStr var_40C, "'yyyy-mm-dd'"
  loc_CA8839: FStVarCopyObj var_41C
  loc_CA883C: FLdRfVar var_41C
  loc_CA883F: FLdZeroAd var_3EC
  loc_CA8842: CVarAd
  loc_CA8846: ImpAdCallI2 Format$(, )
  loc_CA884B: FStStr var_124
  loc_CA884E: FLdRfVar var_4C4
  loc_CA8851: FLdRfVar var_4B4
  loc_CA8854: LitVarStr var_4B0, "CapiDefa"
  loc_CA8859: PopAdLdVar
  loc_CA885A: FLdRfVar var_4A0
  loc_CA885D: FLdPr Me
  loc_CA8860: MemLdPr global_64
  loc_CA8863:  = Me.Fields
  loc_CA8868: FLdPr var_4A0
  loc_CA886B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8870: FLdPr var_4B4
  loc_CA8873:  = Me.Value
  loc_CA8878: FLdRfVar var_52C
  loc_CA887B: FLdRfVar var_51C
  loc_CA887E: LitVarStr var_518, "RecaDefa"
  loc_CA8883: PopAdLdVar
  loc_CA8884: FLdRfVar var_508
  loc_CA8887: FLdPr Me
  loc_CA888A: MemLdPr global_64
  loc_CA888D:  = Me.Fields
  loc_CA8892: FLdPr var_508
  loc_CA8895: from_stack_2 = Me.Item(from_stack_1)
  loc_CA889A: FLdPr var_51C
  loc_CA889D:  = Me.Value
  loc_CA88A2: FLdRfVar var_5D4
  loc_CA88A5: FLdRfVar var_5C4
  loc_CA88A8: LitVarStr var_5C0, "DecaDefa"
  loc_CA88AD: PopAdLdVar
  loc_CA88AE: FLdRfVar var_5B0
  loc_CA88B1: FLdPr Me
  loc_CA88B4: MemLdPr global_64
  loc_CA88B7:  = Me.Fields
  loc_CA88BC: FLdPr var_5B0
  loc_CA88BF: from_stack_2 = Me.Item(from_stack_1)
  loc_CA88C4: FLdPr var_5C4
  loc_CA88C7:  = Me.Value
  loc_CA88CC: FLdRfVar var_63C
  loc_CA88CF: FLdRfVar var_62C
  loc_CA88D2: LitVarStr var_628, "DereDefa"
  loc_CA88D7: PopAdLdVar
  loc_CA88D8: FLdRfVar var_618
  loc_CA88DB: FLdPr Me
  loc_CA88DE: MemLdPr global_64
  loc_CA88E1:  = Me.Fields
  loc_CA88E6: FLdPr var_618
  loc_CA88E9: from_stack_2 = Me.Item(from_stack_1)
  loc_CA88EE: FLdPr var_62C
  loc_CA88F1:  = Me.Value
  loc_CA88F6: FLdRfVar var_6A4
  loc_CA88F9: FLdRfVar var_694
  loc_CA88FC: LitVarStr var_690, "ApreDefa"
  loc_CA8901: PopAdLdVar
  loc_CA8902: FLdRfVar var_680
  loc_CA8905: FLdPr Me
  loc_CA8908: MemLdPr global_64
  loc_CA890B:  = Me.Fields
  loc_CA8910: FLdPr var_680
  loc_CA8913: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8918: FLdPr var_694
  loc_CA891B:  = Me.Value
  loc_CA8920: FLdRfVar var_70C
  loc_CA8923: FLdRfVar var_6FC
  loc_CA8926: LitVarStr var_6F8, "InteDefa"
  loc_CA892B: PopAdLdVar
  loc_CA892C: FLdRfVar var_6E8
  loc_CA892F: FLdPr Me
  loc_CA8932: MemLdPr global_64
  loc_CA8935:  = Me.Fields
  loc_CA893A: FLdPr var_6E8
  loc_CA893D: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8942: FLdPr var_6FC
  loc_CA8945:  = Me.Value
  loc_CA894A: LitI4 2
  loc_CA894F: FLdFPR8 var_DC
  loc_CA8952: FLdFPR8 var_B4
  loc_CA8955: AddR8
  loc_CA8956: CVarR8
  loc_CA895A: FLdRfVar var_77C
  loc_CA895D: ImpAdCallFPR4  = Round(, )
  loc_CA8962: LitStr "INSERT INTO "
  loc_CA8965: ILdRf var_8C
  loc_CA8968: ConcatStr
  loc_CA8969: FStStrNoPop var_F8
  loc_CA896C: LitStr " (CodiFapa, CuotDefa, PeriBole, NumeBole, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, RemoDefa, DecaDefa, DereDefa, ApreDefa, InteDefa, PacuDefa, TotaDefa, SeleDefa)"
  loc_CA896F: ConcatStr
  loc_CA8970: FStStrNoPop var_FC
  loc_CA8973: LitStr " VALUES ("
  loc_CA8976: ConcatStr
  loc_CA8977: CVarStr var_194
  loc_CA897A: FLdRfVar var_184
  loc_CA897D: FLdRfVar var_174
  loc_CA8980: LitVarStr var_170, "CodiFapa"
  loc_CA8985: PopAdLdVar
  loc_CA8986: FLdRfVar var_160
  loc_CA8989: FLdPr Me
  loc_CA898C: MemLdPr global_68
  loc_CA898F:  = Me.Fields
  loc_CA8994: FLdPr var_160
  loc_CA8997: from_stack_2 = Me.Item(from_stack_1)
  loc_CA899C: FLdPr var_174
  loc_CA899F:  = Me.Value
  loc_CA89A4: FLdRfVar var_184
  loc_CA89A7: ConcatVar var_1A4
  loc_CA89AB: LitVarStr var_1B4, ","
  loc_CA89B0: ConcatVar var_1C4
  loc_CA89B4: FLdRfVar var_1EC
  loc_CA89B7: FLdRfVar var_1DC
  loc_CA89BA: LitVarStr var_1D8, "CuotDefa"
  loc_CA89BF: PopAdLdVar
  loc_CA89C0: FLdRfVar var_1C8
  loc_CA89C3: FLdPr Me
  loc_CA89C6: MemLdPr global_68
  loc_CA89C9:  = Me.Fields
  loc_CA89CE: FLdPr var_1C8
  loc_CA89D1: from_stack_2 = Me.Item(from_stack_1)
  loc_CA89D6: FLdPr var_1DC
  loc_CA89D9:  = Me.Value
  loc_CA89DE: FLdRfVar var_1EC
  loc_CA89E1: ConcatVar var_1FC
  loc_CA89E5: LitVarStr var_20C, ","
  loc_CA89EA: ConcatVar var_21C
  loc_CA89EE: FLdRfVar var_23C
  loc_CA89F1: FLdRfVar var_244
  loc_CA89F4: LitVarStr var_22C, "PeriBole"
  loc_CA89F9: PopAdLdVar
  loc_CA89FA: FLdRfVar var_240
  loc_CA89FD: FLdPr Me
  loc_CA8A00: MemLdPr global_64
  loc_CA8A03:  = Me.Fields
  loc_CA8A08: FLdPr var_240
  loc_CA8A0B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8A10: FLdPr var_244
  loc_CA8A13:  = Me.Value
  loc_CA8A18: FLdRfVar var_23C
  loc_CA8A1B: ConcatVar var_29C
  loc_CA8A1F: LitVarStr var_268, ","
  loc_CA8A24: ConcatVar var_2AC
  loc_CA8A28: FLdRfVar var_2BC
  loc_CA8A2B: FLdRfVar var_24C
  loc_CA8A2E: LitVarStr var_27C, "NumeBole"
  loc_CA8A33: PopAdLdVar
  loc_CA8A34: FLdRfVar var_248
  loc_CA8A37: FLdPr Me
  loc_CA8A3A: MemLdPr global_64
  loc_CA8A3D:  = Me.Fields
  loc_CA8A42: FLdPr var_248
  loc_CA8A45: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8A4A: FLdPr var_24C
  loc_CA8A4D:  = Me.Value
  loc_CA8A52: FLdRfVar var_2BC
  loc_CA8A55: ConcatVar var_2CC
  loc_CA8A59: LitVarStr var_28C, ",'"
  loc_CA8A5E: ConcatVar var_2DC
  loc_CA8A62: FLdRfVar var_2FC
  loc_CA8A65: FLdRfVar var_254
  loc_CA8A68: LitVarStr var_2EC, "EstaDefa"
  loc_CA8A6D: PopAdLdVar
  loc_CA8A6E: FLdRfVar var_250
  loc_CA8A71: FLdPr Me
  loc_CA8A74: MemLdPr global_64
  loc_CA8A77:  = Me.Fields
  loc_CA8A7C: FLdPr var_250
  loc_CA8A7F: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8A84: FLdPr var_254
  loc_CA8A87:  = Me.Value
  loc_CA8A8C: FLdRfVar var_2FC
  loc_CA8A8F: ConcatVar var_30C
  loc_CA8A93: LitVarStr var_31C, "',"
  loc_CA8A98: ConcatVar var_32C
  loc_CA8A9C: LitI4 1
  loc_CA8AA1: LitI4 1
  loc_CA8AA6: LitVarStr var_35C, "'yyyy-mm-dd'"
  loc_CA8AAB: FStVarCopyObj var_36C
  loc_CA8AAE: FLdRfVar var_36C
  loc_CA8AB1: FLdZeroAd var_26C
  loc_CA8AB4: CVarAd
  loc_CA8AB8: ImpAdCallI2 Format$(, )
  loc_CA8ABD: CVarStr var_37C
  loc_CA8AC0: ConcatVar var_38C
  loc_CA8AC4: LitVarStr var_39C, ","
  loc_CA8AC9: ConcatVar var_3AC
  loc_CA8ACD: LitVarStr var_44C, "Null"
  loc_CA8AD2: FStVarCopyObj var_45C
  loc_CA8AD5: FLdRfVar var_45C
  loc_CA8AD8: FLdZeroAd var_124
  loc_CA8ADB: CVarStr var_43C
  loc_CA8ADE: FLdI2 var_15A
  loc_CA8AE1: CVarBoolI2 var_42C
  loc_CA8AE5: FLdRfVar var_46C
  loc_CA8AE8: ImpAdCallFPR4  = IIf(, , )
  loc_CA8AED: FLdRfVar var_46C
  loc_CA8AF0: ConcatVar var_47C
  loc_CA8AF4: LitVarStr var_48C, ","
  loc_CA8AF9: ConcatVar var_49C
  loc_CA8AFD: LitI4 0
  loc_CA8B02: LitI4 -1
  loc_CA8B07: LitI4 1
  loc_CA8B0C: LitStr "."
  loc_CA8B0F: LitStr ","
  loc_CA8B12: FLdRfVar var_4C4
  loc_CA8B15: CStrVarTmp
  loc_CA8B16: FStStrNoPop var_100
  loc_CA8B19: ImpAdCallI2 Replace(, , , , , )
  loc_CA8B1E: CVarStr var_4D4
  loc_CA8B21: ConcatVar var_4E4
  loc_CA8B25: LitVarStr var_4F4, ","
  loc_CA8B2A: ConcatVar var_504
  loc_CA8B2E: LitI4 0
  loc_CA8B33: LitI4 -1
  loc_CA8B38: LitI4 1
  loc_CA8B3D: LitStr "."
  loc_CA8B40: LitStr ","
  loc_CA8B43: FLdRfVar var_52C
  loc_CA8B46: CStrVarTmp
  loc_CA8B47: FStStrNoPop var_104
  loc_CA8B4A: ImpAdCallI2 Replace(, , , , , )
  loc_CA8B4F: CVarStr var_53C
  loc_CA8B52: ConcatVar var_54C
  loc_CA8B56: LitVarStr var_55C, ","
  loc_CA8B5B: ConcatVar var_56C
  loc_CA8B5F: LitI4 0
  loc_CA8B64: LitI4 -1
  loc_CA8B69: LitI4 1
  loc_CA8B6E: LitStr "."
  loc_CA8B71: LitStr ","
  loc_CA8B74: FLdFPR8 var_B4
  loc_CA8B77: CStrR8
  loc_CA8B79: FStStrNoPop var_108
  loc_CA8B7C: ImpAdCallI2 Replace(, , , , , )
  loc_CA8B81: CVarStr var_57C
  loc_CA8B84: ConcatVar var_58C
  loc_CA8B88: LitVarStr var_59C, ","
  loc_CA8B8D: ConcatVar var_5AC
  loc_CA8B91: LitI4 0
  loc_CA8B96: LitI4 -1
  loc_CA8B9B: LitI4 1
  loc_CA8BA0: LitStr "."
  loc_CA8BA3: LitStr ","
  loc_CA8BA6: FLdRfVar var_5D4
  loc_CA8BA9: CStrVarTmp
  loc_CA8BAA: FStStrNoPop var_10C
  loc_CA8BAD: ImpAdCallI2 Replace(, , , , , )
  loc_CA8BB2: CVarStr var_5E4
  loc_CA8BB5: ConcatVar var_5F4
  loc_CA8BB9: LitVarStr var_604, ","
  loc_CA8BBE: ConcatVar var_614
  loc_CA8BC2: LitI4 0
  loc_CA8BC7: LitI4 -1
  loc_CA8BCC: LitI4 1
  loc_CA8BD1: LitStr "."
  loc_CA8BD4: LitStr ","
  loc_CA8BD7: FLdRfVar var_63C
  loc_CA8BDA: CStrVarTmp
  loc_CA8BDB: FStStrNoPop var_110
  loc_CA8BDE: ImpAdCallI2 Replace(, , , , , )
  loc_CA8BE3: CVarStr var_64C
  loc_CA8BE6: ConcatVar var_65C
  loc_CA8BEA: LitVarStr var_66C, ","
  loc_CA8BEF: ConcatVar var_67C
  loc_CA8BF3: LitI4 0
  loc_CA8BF8: LitI4 -1
  loc_CA8BFD: LitI4 1
  loc_CA8C02: LitStr "."
  loc_CA8C05: LitStr ","
  loc_CA8C08: FLdRfVar var_6A4
  loc_CA8C0B: CStrVarTmp
  loc_CA8C0C: FStStrNoPop var_114
  loc_CA8C0F: ImpAdCallI2 Replace(, , , , , )
  loc_CA8C14: CVarStr var_6B4
  loc_CA8C17: ConcatVar var_6C4
  loc_CA8C1B: LitVarStr var_6D4, ","
  loc_CA8C20: ConcatVar var_6E4
  loc_CA8C24: LitI4 0
  loc_CA8C29: LitI4 -1
  loc_CA8C2E: LitI4 1
  loc_CA8C33: LitStr "."
  loc_CA8C36: LitStr ","
  loc_CA8C39: FLdRfVar var_70C
  loc_CA8C3C: CStrVarTmp
  loc_CA8C3D: FStStrNoPop var_118
  loc_CA8C40: ImpAdCallI2 Replace(, , , , , )
  loc_CA8C45: CVarStr var_71C
  loc_CA8C48: ConcatVar var_72C
  loc_CA8C4C: LitVarStr var_73C, ",0,"
  loc_CA8C51: ConcatVar var_74C
  loc_CA8C55: LitI4 0
  loc_CA8C5A: LitI4 -1
  loc_CA8C5F: LitI4 1
  loc_CA8C64: LitStr "."
  loc_CA8C67: LitStr ","
  loc_CA8C6A: FLdRfVar var_77C
  loc_CA8C6D: CStrVarVal var_11C
  loc_CA8C71: ImpAdCallI2 Replace(, , , , , )
  loc_CA8C76: CVarStr var_78C
  loc_CA8C79: ConcatVar var_79C
  loc_CA8C7D: LitVarStr var_7AC, ",'No')"
  loc_CA8C82: ConcatVar var_7BC
  loc_CA8C86: CStrVarVal var_120
  loc_CA8C8A: Call EjecutarRsCls(from_stack_1v)
  loc_CA8C8F: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_CA8CAA: FFreeAd var_160 = "": var_174 = "": var_1C8 = "": var_1DC = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_3B0 = "": var_3D8 = "": var_4A0 = "": var_4B4 = "": var_508 = "": var_51C = "": var_5B0 = "": var_5C4 = "": var_618 = "": var_62C = "": var_680 = "": var_694 = "": var_6E8 = ""
  loc_CA8CDF: FFreeVar var_79C = "": var_7BC = "": var_49C = "": var_4D4 = "": var_4E4 = "": var_52C = "": var_504 = "": var_53C = "": var_54C = "": var_56C = "": var_57C = "": var_58C = "": var_5D4 = "": var_5AC = "": var_5E4 = "": var_5F4 = "": var_63C = "": var_614 = "": var_64C = "": var_65C = "": var_6A4 = "": var_67C = "": var_6B4 = "": var_6C4 = "": var_70C = "": var_6E4 = "": var_71C = "": var_72C = "": var_76C = "": var_77C = "": var_74C = "": var_78C = "": var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = "": var_23C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2FC = "": var_30C = "": var_34C = "": var_36C = "": var_32C = "": var_37C = "": var_38C = "": var_3D4 = "": var_3FC = "": var_41C = "": var_42C = "": var_43C = "": var_45C = "": var_3AC = "": var_46C = "": var_47C = ""
  loc_CA8D5E: FLdPr Me
  loc_CA8D61: MemLdPr global_68
  loc_CA8D64: Me.MoveNext
  loc_CA8D69: Branch loc_CA87A9
  loc_CA8D6C: Branch loc_CA9374
  loc_CA8D6F: FLdRfVar var_26C
  loc_CA8D72: LitVarStr var_33C, "FeveDefa"
  loc_CA8D77: PopAdLdVar
  loc_CA8D78: FLdRfVar var_258
  loc_CA8D7B: FLdPr Me
  loc_CA8D7E: MemLdPr global_64
  loc_CA8D81:  = Me.Fields
  loc_CA8D86: FLdPr var_258
  loc_CA8D89: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8D8E: FLdRfVar var_3C4
  loc_CA8D91: LitVarStr var_3C0, "FepaDefa"
  loc_CA8D96: PopAdLdVar
  loc_CA8D97: FLdRfVar var_3B0
  loc_CA8D9A: FLdPr Me
  loc_CA8D9D: MemLdPr global_64
  loc_CA8DA0:  = Me.Fields
  loc_CA8DA5: FLdPr var_3B0
  loc_CA8DA8: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8DAD: FLdZeroAd var_3C4
  loc_CA8DB0: CVarAd
  loc_CA8DB4: ImpAdCallI2 IsDate()
  loc_CA8DB9: FStI2 var_15A
  loc_CA8DBC: FLdRfVar var_3EC
  loc_CA8DBF: LitVarStr var_3E8, "FepaDefa"
  loc_CA8DC4: PopAdLdVar
  loc_CA8DC5: FLdRfVar var_3D8
  loc_CA8DC8: FLdPr Me
  loc_CA8DCB: MemLdPr global_64
  loc_CA8DCE:  = Me.Fields
  loc_CA8DD3: FLdPr var_3D8
  loc_CA8DD6: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8DDB: LitI4 1
  loc_CA8DE0: LitI4 1
  loc_CA8DE5: LitVarStr var_40C, "'yyyy-mm-dd'"
  loc_CA8DEA: FStVarCopyObj var_41C
  loc_CA8DED: FLdRfVar var_41C
  loc_CA8DF0: FLdZeroAd var_3EC
  loc_CA8DF3: CVarAd
  loc_CA8DF7: ImpAdCallI2 Format$(, )
  loc_CA8DFC: FStStr var_128
  loc_CA8DFF: FLdRfVar var_4C4
  loc_CA8E02: FLdRfVar var_4B4
  loc_CA8E05: LitVarStr var_4B0, "CapiDefa"
  loc_CA8E0A: PopAdLdVar
  loc_CA8E0B: FLdRfVar var_4A0
  loc_CA8E0E: FLdPr Me
  loc_CA8E11: MemLdPr global_64
  loc_CA8E14:  = Me.Fields
  loc_CA8E19: FLdPr var_4A0
  loc_CA8E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8E21: FLdPr var_4B4
  loc_CA8E24:  = Me.Value
  loc_CA8E29: FLdRfVar var_52C
  loc_CA8E2C: FLdRfVar var_51C
  loc_CA8E2F: LitVarStr var_518, "RecaDefa"
  loc_CA8E34: PopAdLdVar
  loc_CA8E35: FLdRfVar var_508
  loc_CA8E38: FLdPr Me
  loc_CA8E3B: MemLdPr global_64
  loc_CA8E3E:  = Me.Fields
  loc_CA8E43: FLdPr var_508
  loc_CA8E46: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8E4B: FLdPr var_51C
  loc_CA8E4E:  = Me.Value
  loc_CA8E53: FLdRfVar var_5D4
  loc_CA8E56: FLdRfVar var_5C4
  loc_CA8E59: LitVarStr var_5C0, "DecaDefa"
  loc_CA8E5E: PopAdLdVar
  loc_CA8E5F: FLdRfVar var_5B0
  loc_CA8E62: FLdPr Me
  loc_CA8E65: MemLdPr global_64
  loc_CA8E68:  = Me.Fields
  loc_CA8E6D: FLdPr var_5B0
  loc_CA8E70: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8E75: FLdPr var_5C4
  loc_CA8E78:  = Me.Value
  loc_CA8E7D: FLdRfVar var_63C
  loc_CA8E80: FLdRfVar var_62C
  loc_CA8E83: LitVarStr var_628, "DereDefa"
  loc_CA8E88: PopAdLdVar
  loc_CA8E89: FLdRfVar var_618
  loc_CA8E8C: FLdPr Me
  loc_CA8E8F: MemLdPr global_64
  loc_CA8E92:  = Me.Fields
  loc_CA8E97: FLdPr var_618
  loc_CA8E9A: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8E9F: FLdPr var_62C
  loc_CA8EA2:  = Me.Value
  loc_CA8EA7: FLdRfVar var_6A4
  loc_CA8EAA: FLdRfVar var_694
  loc_CA8EAD: LitVarStr var_690, "ApreDefa"
  loc_CA8EB2: PopAdLdVar
  loc_CA8EB3: FLdRfVar var_680
  loc_CA8EB6: FLdPr Me
  loc_CA8EB9: MemLdPr global_64
  loc_CA8EBC:  = Me.Fields
  loc_CA8EC1: FLdPr var_680
  loc_CA8EC4: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8EC9: FLdPr var_694
  loc_CA8ECC:  = Me.Value
  loc_CA8ED1: FLdRfVar var_70C
  loc_CA8ED4: FLdRfVar var_6FC
  loc_CA8ED7: LitVarStr var_6F8, "InteDefa"
  loc_CA8EDC: PopAdLdVar
  loc_CA8EDD: FLdRfVar var_6E8
  loc_CA8EE0: FLdPr Me
  loc_CA8EE3: MemLdPr global_64
  loc_CA8EE6:  = Me.Fields
  loc_CA8EEB: FLdPr var_6E8
  loc_CA8EEE: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8EF3: FLdPr var_6FC
  loc_CA8EF6:  = Me.Value
  loc_CA8EFB: LitI4 2
  loc_CA8F00: FLdFPR8 var_A4
  loc_CA8F03: FLdFPR8 var_AC
  loc_CA8F06: AddR8
  loc_CA8F07: FLdFPR8 var_CC
  loc_CA8F0A: AddR8
  loc_CA8F0B: FLdFPR8 var_D4
  loc_CA8F0E: AddR8
  loc_CA8F0F: FLdFPR8 var_BC
  loc_CA8F12: SubR4
  loc_CA8F13: FLdFPR8 var_C4
  loc_CA8F16: SubR4
  loc_CA8F17: CVarR8
  loc_CA8F1B: FLdRfVar var_77C
  loc_CA8F1E: ImpAdCallFPR4  = Round(, )
  loc_CA8F23: LitI4 2
  loc_CA8F28: FLdFPR8 var_DC
  loc_CA8F2B: FLdFPR8 var_B4
  loc_CA8F2E: AddR8
  loc_CA8F2F: CVarR8
  loc_CA8F33: FLdRfVar var_7EC
  loc_CA8F36: ImpAdCallFPR4  = Round(, )
  loc_CA8F3B: LitStr "INSERT INTO "
  loc_CA8F3E: ILdRf var_8C
  loc_CA8F41: ConcatStr
  loc_CA8F42: FStStrNoPop var_F8
  loc_CA8F45: LitStr " (CodiFapa, CuotDefa, PeriBole, NumeBole, EstaDefa, FeveDefa, FepaDefa, CapiDefa, RecaDefa, RemoDefa, DecaDefa, DereDefa, ApreDefa, InteDefa, PacuDefa, TotaDefa, SeleDefa)"
  loc_CA8F48: ConcatStr
  loc_CA8F49: FStStrNoPop var_FC
  loc_CA8F4C: LitStr " VALUES ("
  loc_CA8F4F: ConcatStr
  loc_CA8F50: CVarStr var_194
  loc_CA8F53: FLdRfVar var_184
  loc_CA8F56: FLdRfVar var_174
  loc_CA8F59: LitVarStr var_170, "CodiFapa"
  loc_CA8F5E: PopAdLdVar
  loc_CA8F5F: FLdRfVar var_160
  loc_CA8F62: FLdPr Me
  loc_CA8F65: MemLdPr global_64
  loc_CA8F68:  = Me.Fields
  loc_CA8F6D: FLdPr var_160
  loc_CA8F70: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8F75: FLdPr var_174
  loc_CA8F78:  = Me.Value
  loc_CA8F7D: FLdRfVar var_184
  loc_CA8F80: ConcatVar var_1A4
  loc_CA8F84: LitVarStr var_1B4, ","
  loc_CA8F89: ConcatVar var_1C4
  loc_CA8F8D: FLdRfVar var_1EC
  loc_CA8F90: FLdRfVar var_1DC
  loc_CA8F93: LitVarStr var_1D8, "CuotDefa"
  loc_CA8F98: PopAdLdVar
  loc_CA8F99: FLdRfVar var_1C8
  loc_CA8F9C: FLdPr Me
  loc_CA8F9F: MemLdPr global_64
  loc_CA8FA2:  = Me.Fields
  loc_CA8FA7: FLdPr var_1C8
  loc_CA8FAA: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8FAF: FLdPr var_1DC
  loc_CA8FB2:  = Me.Value
  loc_CA8FB7: FLdRfVar var_1EC
  loc_CA8FBA: ConcatVar var_1FC
  loc_CA8FBE: LitVarStr var_20C, ","
  loc_CA8FC3: ConcatVar var_21C
  loc_CA8FC7: FLdRfVar var_23C
  loc_CA8FCA: FLdRfVar var_244
  loc_CA8FCD: LitVarStr var_22C, "PeriBole"
  loc_CA8FD2: PopAdLdVar
  loc_CA8FD3: FLdRfVar var_240
  loc_CA8FD6: FLdPr Me
  loc_CA8FD9: MemLdPr global_64
  loc_CA8FDC:  = Me.Fields
  loc_CA8FE1: FLdPr var_240
  loc_CA8FE4: from_stack_2 = Me.Item(from_stack_1)
  loc_CA8FE9: FLdPr var_244
  loc_CA8FEC:  = Me.Value
  loc_CA8FF1: FLdRfVar var_23C
  loc_CA8FF4: ConcatVar var_29C
  loc_CA8FF8: LitVarStr var_268, ","
  loc_CA8FFD: ConcatVar var_2AC
  loc_CA9001: FLdRfVar var_2BC
  loc_CA9004: FLdRfVar var_24C
  loc_CA9007: LitVarStr var_27C, "NumeBole"
  loc_CA900C: PopAdLdVar
  loc_CA900D: FLdRfVar var_248
  loc_CA9010: FLdPr Me
  loc_CA9013: MemLdPr global_64
  loc_CA9016:  = Me.Fields
  loc_CA901B: FLdPr var_248
  loc_CA901E: from_stack_2 = Me.Item(from_stack_1)
  loc_CA9023: FLdPr var_24C
  loc_CA9026:  = Me.Value
  loc_CA902B: FLdRfVar var_2BC
  loc_CA902E: ConcatVar var_2CC
  loc_CA9032: LitVarStr var_28C, ",'"
  loc_CA9037: ConcatVar var_2DC
  loc_CA903B: FLdRfVar var_2FC
  loc_CA903E: FLdRfVar var_254
  loc_CA9041: LitVarStr var_2EC, "EstaDefa"
  loc_CA9046: PopAdLdVar
  loc_CA9047: FLdRfVar var_250
  loc_CA904A: FLdPr Me
  loc_CA904D: MemLdPr global_64
  loc_CA9050:  = Me.Fields
  loc_CA9055: FLdPr var_250
  loc_CA9058: from_stack_2 = Me.Item(from_stack_1)
  loc_CA905D: FLdPr var_254
  loc_CA9060:  = Me.Value
  loc_CA9065: FLdRfVar var_2FC
  loc_CA9068: ConcatVar var_30C
  loc_CA906C: LitVarStr var_31C, "',"
  loc_CA9071: ConcatVar var_32C
  loc_CA9075: LitI4 1
  loc_CA907A: LitI4 1
  loc_CA907F: LitVarStr var_35C, "'yyyy-mm-dd'"
  loc_CA9084: FStVarCopyObj var_36C
  loc_CA9087: FLdRfVar var_36C
  loc_CA908A: FLdZeroAd var_26C
  loc_CA908D: CVarAd
  loc_CA9091: ImpAdCallI2 Format$(, )
  loc_CA9096: CVarStr var_37C
  loc_CA9099: ConcatVar var_38C
  loc_CA909D: LitVarStr var_39C, ","
  loc_CA90A2: ConcatVar var_3AC
  loc_CA90A6: LitVarStr var_44C, "Null"
  loc_CA90AB: FStVarCopyObj var_45C
  loc_CA90AE: FLdRfVar var_45C
  loc_CA90B1: FLdZeroAd var_128
  loc_CA90B4: CVarStr var_43C
  loc_CA90B7: FLdI2 var_15A
  loc_CA90BA: CVarBoolI2 var_42C
  loc_CA90BE: FLdRfVar var_46C
  loc_CA90C1: ImpAdCallFPR4  = IIf(, , )
  loc_CA90C6: FLdRfVar var_46C
  loc_CA90C9: ConcatVar var_47C
  loc_CA90CD: LitVarStr var_48C, ","
  loc_CA90D2: ConcatVar var_49C
  loc_CA90D6: LitI4 0
  loc_CA90DB: LitI4 -1
  loc_CA90E0: LitI4 1
  loc_CA90E5: LitStr "."
  loc_CA90E8: LitStr ","
  loc_CA90EB: FLdRfVar var_4C4
  loc_CA90EE: CStrVarTmp
  loc_CA90EF: FStStrNoPop var_100
  loc_CA90F2: ImpAdCallI2 Replace(, , , , , )
  loc_CA90F7: CVarStr var_4D4
  loc_CA90FA: ConcatVar var_4E4
  loc_CA90FE: LitVarStr var_4F4, ","
  loc_CA9103: ConcatVar var_504
  loc_CA9107: LitI4 0
  loc_CA910C: LitI4 -1
  loc_CA9111: LitI4 1
  loc_CA9116: LitStr "."
  loc_CA9119: LitStr ","
  loc_CA911C: FLdRfVar var_52C
  loc_CA911F: CStrVarTmp
  loc_CA9120: FStStrNoPop var_104
  loc_CA9123: ImpAdCallI2 Replace(, , , , , )
  loc_CA9128: CVarStr var_53C
  loc_CA912B: ConcatVar var_54C
  loc_CA912F: LitVarStr var_55C, ","
  loc_CA9134: ConcatVar var_56C
  loc_CA9138: LitI4 0
  loc_CA913D: LitI4 -1
  loc_CA9142: LitI4 1
  loc_CA9147: LitStr "."
  loc_CA914A: LitStr ","
  loc_CA914D: FLdFPR8 var_B4
  loc_CA9150: CStrR8
  loc_CA9152: FStStrNoPop var_108
  loc_CA9155: ImpAdCallI2 Replace(, , , , , )
  loc_CA915A: CVarStr var_57C
  loc_CA915D: ConcatVar var_58C
  loc_CA9161: LitVarStr var_59C, ","
  loc_CA9166: ConcatVar var_5AC
  loc_CA916A: LitI4 0
  loc_CA916F: LitI4 -1
  loc_CA9174: LitI4 1
  loc_CA9179: LitStr "."
  loc_CA917C: LitStr ","
  loc_CA917F: FLdRfVar var_5D4
  loc_CA9182: CStrVarTmp
  loc_CA9183: FStStrNoPop var_10C
  loc_CA9186: ImpAdCallI2 Replace(, , , , , )
  loc_CA918B: CVarStr var_5E4
  loc_CA918E: ConcatVar var_5F4
  loc_CA9192: LitVarStr var_604, ","
  loc_CA9197: ConcatVar var_614
  loc_CA919B: LitI4 0
  loc_CA91A0: LitI4 -1
  loc_CA91A5: LitI4 1
  loc_CA91AA: LitStr "."
  loc_CA91AD: LitStr ","
  loc_CA91B0: FLdRfVar var_63C
  loc_CA91B3: CStrVarTmp
  loc_CA91B4: FStStrNoPop var_110
  loc_CA91B7: ImpAdCallI2 Replace(, , , , , )
  loc_CA91BC: CVarStr var_64C
  loc_CA91BF: ConcatVar var_65C
  loc_CA91C3: LitVarStr var_66C, ","
  loc_CA91C8: ConcatVar var_67C
  loc_CA91CC: LitI4 0
  loc_CA91D1: LitI4 -1
  loc_CA91D6: LitI4 1
  loc_CA91DB: LitStr "."
  loc_CA91DE: LitStr ","
  loc_CA91E1: FLdRfVar var_6A4
  loc_CA91E4: CStrVarTmp
  loc_CA91E5: FStStrNoPop var_114
  loc_CA91E8: ImpAdCallI2 Replace(, , , , , )
  loc_CA91ED: CVarStr var_6B4
  loc_CA91F0: ConcatVar var_6C4
  loc_CA91F4: LitVarStr var_6D4, ","
  loc_CA91F9: ConcatVar var_6E4
  loc_CA91FD: LitI4 0
  loc_CA9202: LitI4 -1
  loc_CA9207: LitI4 1
  loc_CA920C: LitStr "."
  loc_CA920F: LitStr ","
  loc_CA9212: FLdRfVar var_70C
  loc_CA9215: CStrVarTmp
  loc_CA9216: FStStrNoPop var_118
  loc_CA9219: ImpAdCallI2 Replace(, , , , , )
  loc_CA921E: CVarStr var_71C
  loc_CA9221: ConcatVar var_72C
  loc_CA9225: LitVarStr var_73C, ","
  loc_CA922A: ConcatVar var_74C
  loc_CA922E: LitI4 0
  loc_CA9233: LitI4 -1
  loc_CA9238: LitI4 1
  loc_CA923D: LitStr "."
  loc_CA9240: LitStr ","
  loc_CA9243: FLdRfVar var_77C
  loc_CA9246: CStrVarVal var_11C
  loc_CA924A: ImpAdCallI2 Replace(, , , , , )
  loc_CA924F: CVarStr var_78C
  loc_CA9252: ConcatVar var_79C
  loc_CA9256: LitVarStr var_7AC, ","
  loc_CA925B: ConcatVar var_7BC
  loc_CA925F: LitI4 0
  loc_CA9264: LitI4 -1
  loc_CA9269: LitI4 1
  loc_CA926E: LitStr "."
  loc_CA9271: LitStr ","
  loc_CA9274: FLdRfVar var_7EC
  loc_CA9277: CStrVarVal var_120
  loc_CA927B: ImpAdCallI2 Replace(, , , , , )
  loc_CA9280: CVarStr var_7FC
  loc_CA9283: ConcatVar var_80C
  loc_CA9287: LitVarStr var_81C, ",'No')"
  loc_CA928C: ConcatVar var_82C
  loc_CA9290: CStrVarVal var_124
  loc_CA9294: Call EjecutarRsCls(from_stack_1v)
  loc_CA9299: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_CA92B6: FFreeAd var_160 = "": var_174 = "": var_1C8 = "": var_1DC = "": var_240 = "": var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_3B0 = "": var_3D8 = "": var_4A0 = "": var_4B4 = "": var_508 = "": var_51C = "": var_5B0 = "": var_5C4 = "": var_618 = "": var_62C = "": var_680 = "": var_694 = "": var_6E8 = ""
  loc_CA92EB: FFreeVar var_79C = "": var_7DC = "": var_7EC = "": var_7BC = "": var_7FC = "": var_80C = "": var_82C = "": var_49C = "": var_4D4 = "": var_4E4 = "": var_52C = "": var_504 = "": var_53C = "": var_54C = "": var_56C = "": var_57C = "": var_58C = "": var_5D4 = "": var_5AC = "": var_5E4 = "": var_5F4 = "": var_63C = "": var_614 = "": var_64C = "": var_65C = "": var_6A4 = "": var_67C = "": var_6B4 = "": var_6C4 = "": var_70C = "": var_6E4 = "": var_71C = "": var_72C = "": var_76C = "": var_77C = "": var_74C = "": var_78C = "": var_194 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1EC = "": var_1FC = "": var_21C = "": var_23C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2FC = "": var_30C = "": var_34C = "": var_36C = "": var_32C = "": var_37C = "": var_38C = "": var_3D4 = "": var_3FC = "": var_41C = "": var_42C = "": var_43C = "": var_45C = "": var_3AC = "": var_46C = "": var_47C = ""
  loc_CA9374: FLdPr Me
  loc_CA9377: MemLdPr global_64
  loc_CA937A: Me.MoveNext
  loc_CA937F: Branch loc_CA788E
  loc_CA9382: ExitProcHresult
End Sub

Public Sub ActualizaSeleccion(lCodiFapa, iCuotDefa, sSeleCtct) 'A63E74
  'Data Table: 4493AC
  loc_A63E24: ILdRf sSeleCtct
  loc_A63E27: FStStrCopy var_88
  loc_A63E2A: LitStr "UPDATE tmp_detafapa SET SeleDefa = '"
  loc_A63E2D: ILdRf var_88
  loc_A63E30: ConcatStr
  loc_A63E31: FStStrNoPop var_8C
  loc_A63E34: LitStr "' WHERE CodiFapa = "
  loc_A63E37: ConcatStr
  loc_A63E38: FStStrNoPop var_90
  loc_A63E3B: ILdRf lCodiFapa
  loc_A63E3E: CStrI4
  loc_A63E40: FStStrNoPop var_94
  loc_A63E43: ConcatStr
  loc_A63E44: FStStrNoPop var_98
  loc_A63E47: LitStr " AND CuotDefa = "
  loc_A63E4A: ConcatStr
  loc_A63E4B: FStStrNoPop var_9C
  loc_A63E4E: FLdI2 iCuotDefa
  loc_A63E51: CStrUI1
  loc_A63E53: FStStrNoPop var_A0
  loc_A63E56: ConcatStr
  loc_A63E57: FStStrNoPop var_A4
  loc_A63E5A: Call EjecutarRsCls(from_stack_1v)
  loc_A63E5F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A63E70: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuentaSeleccion(lCodiFapa, iCuotDefa, sSeleCtct, doCapiDefa, doTotaDefa) 'AB9D80
  'Data Table: 4493AC
  loc_AB9CC0: ILdRf sSeleCtct
  loc_AB9CC3: FStStrCopy var_88
  loc_AB9CC6: LitStr "UPDATE tmp_detafapa SET CapiDefa = "
  loc_AB9CC9: LitI4 0
  loc_AB9CCE: LitI4 -1
  loc_AB9CD3: LitI4 1
  loc_AB9CD8: LitStr "."
  loc_AB9CDB: LitStr ","
  loc_AB9CDE: FLdFPR8 doCapiDefa
  loc_AB9CE1: CStrR8
  loc_AB9CE3: FStStrNoPop var_8C
  loc_AB9CE6: ImpAdCallI2 Replace(, , , , , )
  loc_AB9CEB: FStStrNoPop var_90
  loc_AB9CEE: ConcatStr
  loc_AB9CEF: FStStrNoPop var_94
  loc_AB9CF2: LitStr ", SeleDefa = '"
  loc_AB9CF5: ConcatStr
  loc_AB9CF6: FStStrNoPop var_98
  loc_AB9CF9: ILdRf var_88
  loc_AB9CFC: ConcatStr
  loc_AB9CFD: FStStrNoPop var_9C
  loc_AB9D00: LitStr "', TotaDefa = "
  loc_AB9D03: ConcatStr
  loc_AB9D04: FStStrNoPop var_A4
  loc_AB9D07: LitI4 0
  loc_AB9D0C: LitI4 -1
  loc_AB9D11: LitI4 1
  loc_AB9D16: LitStr "."
  loc_AB9D19: LitStr ","
  loc_AB9D1C: FLdFPR8 arg_20
  loc_AB9D1F: CStrR8
  loc_AB9D21: FStStrNoPop var_A0
  loc_AB9D24: ImpAdCallI2 Replace(, , , , , )
  loc_AB9D29: FStStrNoPop var_A8
  loc_AB9D2C: ConcatStr
  loc_AB9D2D: FStStrNoPop var_AC
  loc_AB9D30: LitStr " WHERE CodiFapa = "
  loc_AB9D33: ConcatStr
  loc_AB9D34: FStStrNoPop var_B0
  loc_AB9D37: ILdRf lCodiFapa
  loc_AB9D3A: CStrI4
  loc_AB9D3C: FStStrNoPop var_B4
  loc_AB9D3F: ConcatStr
  loc_AB9D40: FStStrNoPop var_B8
  loc_AB9D43: LitStr " AND CuotDefa = "
  loc_AB9D46: ConcatStr
  loc_AB9D47: FStStrNoPop var_BC
  loc_AB9D4A: FLdI2 iCuotDefa
  loc_AB9D4D: CStrUI1
  loc_AB9D4F: FStStrNoPop var_C0
  loc_AB9D52: ConcatStr
  loc_AB9D53: FStStrNoPop var_C4
  loc_AB9D56: Call EjecutarRsCls(from_stack_1v)
  loc_AB9D5B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB9D7C: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuentaTmp(lCodiFapa, iCuotDefa, sSeleCtct, doCapiDefa, doRecaDefa, doDecaDefa, doDereDefa, doApreDefa, doInteDefa, doRemoDefa, doTotaDefa) 'B1F8F0
  'Data Table: 4493AC
  loc_B1F6E0: ILdRf sSeleCtct
  loc_B1F6E3: FStStrCopy var_88
  loc_B1F6E6: LitStr "UPDATE tmp_detafapa SET CapiDefa = "
  loc_B1F6E9: LitI4 0
  loc_B1F6EE: LitI4 -1
  loc_B1F6F3: LitI4 1
  loc_B1F6F8: LitStr "."
  loc_B1F6FB: LitStr ","
  loc_B1F6FE: FLdFPR8 doCapiDefa
  loc_B1F701: CStrR8
  loc_B1F703: FStStrNoPop var_8C
  loc_B1F706: ImpAdCallI2 Replace(, , , , , )
  loc_B1F70B: FStStrNoPop var_90
  loc_B1F70E: ConcatStr
  loc_B1F70F: FStStrNoPop var_94
  loc_B1F712: LitStr ", RecaDefa = "
  loc_B1F715: ConcatStr
  loc_B1F716: FStStrNoPop var_9C
  loc_B1F719: LitI4 0
  loc_B1F71E: LitI4 -1
  loc_B1F723: LitI4 1
  loc_B1F728: LitStr "."
  loc_B1F72B: LitStr ","
  loc_B1F72E: FLdFPR8 doDecaDefa
  loc_B1F731: CStrR8
  loc_B1F733: FStStrNoPop var_98
  loc_B1F736: ImpAdCallI2 Replace(, , , , , )
  loc_B1F73B: FStStrNoPop var_A0
  loc_B1F73E: ConcatStr
  loc_B1F73F: FStStrNoPop var_A4
  loc_B1F742: LitStr ", DecaDefa = "
  loc_B1F745: ConcatStr
  loc_B1F746: FStStrNoPop var_AC
  loc_B1F749: LitI4 0
  loc_B1F74E: LitI4 -1
  loc_B1F753: LitI4 1
  loc_B1F758: LitStr "."
  loc_B1F75B: LitStr ","
  loc_B1F75E: FLdFPR8 doApreDefa
  loc_B1F761: CStrR8
  loc_B1F763: FStStrNoPop var_A8
  loc_B1F766: ImpAdCallI2 Replace(, , , , , )
  loc_B1F76B: FStStrNoPop var_B0
  loc_B1F76E: ConcatStr
  loc_B1F76F: FStStrNoPop var_B4
  loc_B1F772: LitStr ", DereDefa = "
  loc_B1F775: ConcatStr
  loc_B1F776: FStStrNoPop var_BC
  loc_B1F779: LitI4 0
  loc_B1F77E: LitI4 -1
  loc_B1F783: LitI4 1
  loc_B1F788: LitStr "."
  loc_B1F78B: LitStr ","
  loc_B1F78E: FLdFPR8 doRemoDefa
  loc_B1F791: CStrR8
  loc_B1F793: FStStrNoPop var_B8
  loc_B1F796: ImpAdCallI2 Replace(, , , , , )
  loc_B1F79B: FStStrNoPop var_C0
  loc_B1F79E: ConcatStr
  loc_B1F79F: FStStrNoPop var_C4
  loc_B1F7A2: LitStr ", ApreDefa = "
  loc_B1F7A5: ConcatStr
  loc_B1F7A6: FStStrNoPop var_CC
  loc_B1F7A9: LitI4 0
  loc_B1F7AE: LitI4 -1
  loc_B1F7B3: LitI4 1
  loc_B1F7B8: LitStr "."
  loc_B1F7BB: LitStr ","
  loc_B1F7BE: FLdFPR8 arg_38
  loc_B1F7C1: CStrR8
  loc_B1F7C3: FStStrNoPop var_C8
  loc_B1F7C6: ImpAdCallI2 Replace(, , , , , )
  loc_B1F7CB: FStStrNoPop var_D0
  loc_B1F7CE: ConcatStr
  loc_B1F7CF: FStStrNoPop var_D4
  loc_B1F7D2: LitStr ", InteDefa = "
  loc_B1F7D5: ConcatStr
  loc_B1F7D6: FStStrNoPop var_DC
  loc_B1F7D9: LitI4 0
  loc_B1F7DE: LitI4 -1
  loc_B1F7E3: LitI4 1
  loc_B1F7E8: LitStr "."
  loc_B1F7EB: LitStr ","
  loc_B1F7EE: FLdFPR8 ActualizaPagoCuentaTmp0
  loc_B1F7F1: CStrR8
  loc_B1F7F3: FStStrNoPop var_D8
  loc_B1F7F6: ImpAdCallI2 Replace(, , , , , )
  loc_B1F7FB: FStStrNoPop var_E0
  loc_B1F7FE: ConcatStr
  loc_B1F7FF: FStStrNoPop var_E4
  loc_B1F802: LitStr ", RemoDefa = "
  loc_B1F805: ConcatStr
  loc_B1F806: FStStrNoPop var_EC
  loc_B1F809: LitI4 0
  loc_B1F80E: LitI4 -1
  loc_B1F813: LitI4 1
  loc_B1F818: LitStr "."
  loc_B1F81B: LitStr ","
  loc_B1F81E: FLdFPR8 ActualizaPagoCuentaTmp8
  loc_B1F821: CStrR8
  loc_B1F823: FStStrNoPop var_E8
  loc_B1F826: ImpAdCallI2 Replace(, , , , , )
  loc_B1F82B: FStStrNoPop var_F0
  loc_B1F82E: ConcatStr
  loc_B1F82F: FStStrNoPop var_F4
  loc_B1F832: LitStr ", TotaDefa = "
  loc_B1F835: ConcatStr
  loc_B1F836: FStStrNoPop var_FC
  loc_B1F839: LitI4 0
  loc_B1F83E: LitI4 -1
  loc_B1F843: LitI4 1
  loc_B1F848: LitStr "."
  loc_B1F84B: LitStr ","
  loc_B1F84E: FLdFPR8 arg_50
  loc_B1F851: CStrR8
  loc_B1F853: FStStrNoPop var_F8
  loc_B1F856: ImpAdCallI2 Replace(, , , , , )
  loc_B1F85B: FStStrNoPop var_100
  loc_B1F85E: ConcatStr
  loc_B1F85F: FStStrNoPop var_104
  loc_B1F862: LitStr ", SeleDefa = '"
  loc_B1F865: ConcatStr
  loc_B1F866: FStStrNoPop var_108
  loc_B1F869: ILdRf var_88
  loc_B1F86C: ConcatStr
  loc_B1F86D: FStStrNoPop var_10C
  loc_B1F870: LitStr "' WHERE CodiFapa = "
  loc_B1F873: ConcatStr
  loc_B1F874: FStStrNoPop var_110
  loc_B1F877: ILdRf lCodiFapa
  loc_B1F87A: CStrI4
  loc_B1F87C: FStStrNoPop var_114
  loc_B1F87F: ConcatStr
  loc_B1F880: FStStrNoPop var_118
  loc_B1F883: LitStr " AND CuotDefa = "
  loc_B1F886: ConcatStr
  loc_B1F887: FStStrNoPop var_11C
  loc_B1F88A: FLdI2 iCuotDefa
  loc_B1F88D: CStrUI1
  loc_B1F88F: FStStrNoPop var_120
  loc_B1F892: ConcatStr
  loc_B1F893: FStStrNoPop var_124
  loc_B1F896: Call EjecutarRsCls(from_stack_1v)
  loc_B1F89B: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B1F8EC: ExitProcHresult
End Sub

Public Sub ActualizaCuota(PeriBole, NumeBole, CodiFapa, CuotDefa, FepaDefa, EstaDefa) 'AEC208
  'Data Table: 4493AC
  loc_AEC0B8: ILdRf FepaDefa
  loc_AEC0BB: FStStrCopy var_88
  loc_AEC0BE: ILdRf EstaDefa
  loc_AEC0C1: FStStrCopy var_8C
  loc_AEC0C4: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_AEC0C7: ILdRf var_8C
  loc_AEC0CA: ConcatStr
  loc_AEC0CB: FStStrNoPop var_90
  loc_AEC0CE: LitStr "', FepaDefa = '"
  loc_AEC0D1: ConcatStr
  loc_AEC0D2: FStStrNoPop var_C4
  loc_AEC0D5: LitI4 1
  loc_AEC0DA: LitI4 1
  loc_AEC0DF: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AEC0E4: FStVarCopyObj var_C0
  loc_AEC0E7: FLdRfVar var_C0
  loc_AEC0EA: FLdRfVar var_88
  loc_AEC0ED: CVarRef
  loc_AEC0F2: ImpAdCallI2 Format$(, )
  loc_AEC0F7: FStStrNoPop var_C8
  loc_AEC0FA: ConcatStr
  loc_AEC0FB: FStStrNoPop var_CC
  loc_AEC0FE: LitStr "' WHERE CodiFapa = "
  loc_AEC101: ConcatStr
  loc_AEC102: FStStrNoPop var_D0
  loc_AEC105: ILdRf CodiFapa
  loc_AEC108: CStrI4
  loc_AEC10A: FStStrNoPop var_D4
  loc_AEC10D: ConcatStr
  loc_AEC10E: FStStrNoPop var_D8
  loc_AEC111: LitStr " AND CuotDefa = "
  loc_AEC114: ConcatStr
  loc_AEC115: FStStrNoPop var_DC
  loc_AEC118: FLdI2 CuotDefa
  loc_AEC11B: CStrUI1
  loc_AEC11D: FStStrNoPop var_E0
  loc_AEC120: ConcatStr
  loc_AEC121: FStStrNoPop var_E4
  loc_AEC124: LitStr ";"
  loc_AEC127: ConcatStr
  loc_AEC128: FStStrNoPop var_E8
  loc_AEC12B: Call EjecutarRsCls(from_stack_1v)
  loc_AEC130: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_AEC149: FFree1Var var_C0 = ""
  loc_AEC14C: LitStr "UPDATE pacudefa SET EstaPcdf = '"
  loc_AEC14F: ILdRf var_8C
  loc_AEC152: ConcatStr
  loc_AEC153: FStStrNoPop var_90
  loc_AEC156: LitStr "', FepaPcdf = '"
  loc_AEC159: ConcatStr
  loc_AEC15A: FStStrNoPop var_C4
  loc_AEC15D: LitI4 1
  loc_AEC162: LitI4 1
  loc_AEC167: LitVarStr var_B0, "yyyy-mm-dd"
  loc_AEC16C: FStVarCopyObj var_C0
  loc_AEC16F: FLdRfVar var_C0
  loc_AEC172: FLdRfVar var_88
  loc_AEC175: CVarRef
  loc_AEC17A: ImpAdCallI2 Format$(, )
  loc_AEC17F: FStStrNoPop var_C8
  loc_AEC182: ConcatStr
  loc_AEC183: FStStrNoPop var_CC
  loc_AEC186: LitStr "' WHERE PeriBole = "
  loc_AEC189: ConcatStr
  loc_AEC18A: FStStrNoPop var_D0
  loc_AEC18D: FLdI2 PeriBole
  loc_AEC190: CStrUI1
  loc_AEC192: FStStrNoPop var_D4
  loc_AEC195: ConcatStr
  loc_AEC196: FStStrNoPop var_D8
  loc_AEC199: LitStr " AND NumeBole = "
  loc_AEC19C: ConcatStr
  loc_AEC19D: FStStrNoPop var_DC
  loc_AEC1A0: ILdRf NumeBole
  loc_AEC1A3: CStrI4
  loc_AEC1A5: FStStrNoPop var_E0
  loc_AEC1A8: ConcatStr
  loc_AEC1A9: FStStrNoPop var_E4
  loc_AEC1AC: LitStr " AND CodiFapa = "
  loc_AEC1AF: ConcatStr
  loc_AEC1B0: FStStrNoPop var_E8
  loc_AEC1B3: ILdRf CodiFapa
  loc_AEC1B6: CStrI4
  loc_AEC1B8: FStStrNoPop var_EC
  loc_AEC1BB: ConcatStr
  loc_AEC1BC: FStStrNoPop var_F0
  loc_AEC1BF: LitStr " AND CuotDefa = "
  loc_AEC1C2: ConcatStr
  loc_AEC1C3: FStStrNoPop var_F4
  loc_AEC1C6: FLdI2 CuotDefa
  loc_AEC1C9: CStrUI1
  loc_AEC1CB: FStStrNoPop var_F8
  loc_AEC1CE: ConcatStr
  loc_AEC1CF: FStStrNoPop var_FC
  loc_AEC1D2: LitStr ";"
  loc_AEC1D5: ConcatStr
  loc_AEC1D6: FStStrNoPop var_100
  loc_AEC1D9: Call EjecutarRsCls(from_stack_1v)
  loc_AEC1DE: FFreeStr var_90 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_AEC203: FFree1Var var_C0 = ""
  loc_AEC206: ExitProcHresult
End Sub

Public Sub ActualizaPagoCuenta(PeriBole, NumeBole, CodiFapa, CuotDefa, FepaPcdf, EstaDefa) 'AD5EBC
  'Data Table: 4493AC
  loc_AD5DB8: ILdRf FepaPcdf
  loc_AD5DBB: FStStrCopy var_88
  loc_AD5DBE: ILdRf EstaDefa
  loc_AD5DC1: FStStrCopy var_8C
  loc_AD5DC4: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_AD5DC7: ILdRf var_8C
  loc_AD5DCA: ConcatStr
  loc_AD5DCB: FStStrNoPop var_90
  loc_AD5DCE: LitStr "' WHERE CodiFapa = "
  loc_AD5DD1: ConcatStr
  loc_AD5DD2: FStStrNoPop var_94
  loc_AD5DD5: ILdRf CodiFapa
  loc_AD5DD8: CStrI4
  loc_AD5DDA: FStStrNoPop var_98
  loc_AD5DDD: ConcatStr
  loc_AD5DDE: FStStrNoPop var_9C
  loc_AD5DE1: LitStr " AND CuotDefa = "
  loc_AD5DE4: ConcatStr
  loc_AD5DE5: FStStrNoPop var_A0
  loc_AD5DE8: FLdI2 CuotDefa
  loc_AD5DEB: CStrUI1
  loc_AD5DED: FStStrNoPop var_A4
  loc_AD5DF0: ConcatStr
  loc_AD5DF1: FStStrNoPop var_A8
  loc_AD5DF4: LitStr ";"
  loc_AD5DF7: ConcatStr
  loc_AD5DF8: FStStrNoPop var_AC
  loc_AD5DFB: Call EjecutarRsCls(from_stack_1v)
  loc_AD5E00: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AD5E13: LitStr "UPDATE pacudefa SET EstaPcdf = 'Pagada', FepaPcdf = '"
  loc_AD5E16: LitI4 1
  loc_AD5E1B: LitI4 1
  loc_AD5E20: LitVarStr var_CC, "yyyy-mm-dd"
  loc_AD5E25: FStVarCopyObj var_DC
  loc_AD5E28: FLdRfVar var_DC
  loc_AD5E2B: FLdRfVar var_88
  loc_AD5E2E: CVarRef
  loc_AD5E33: ImpAdCallI2 Format$(, )
  loc_AD5E38: FStStrNoPop var_90
  loc_AD5E3B: ConcatStr
  loc_AD5E3C: FStStrNoPop var_94
  loc_AD5E3F: LitStr "' WHERE PeriBole = "
  loc_AD5E42: ConcatStr
  loc_AD5E43: FStStrNoPop var_98
  loc_AD5E46: FLdI2 PeriBole
  loc_AD5E49: CStrUI1
  loc_AD5E4B: FStStrNoPop var_9C
  loc_AD5E4E: ConcatStr
  loc_AD5E4F: FStStrNoPop var_A0
  loc_AD5E52: LitStr " AND NumeBole = "
  loc_AD5E55: ConcatStr
  loc_AD5E56: FStStrNoPop var_A4
  loc_AD5E59: ILdRf NumeBole
  loc_AD5E5C: CStrI4
  loc_AD5E5E: FStStrNoPop var_A8
  loc_AD5E61: ConcatStr
  loc_AD5E62: FStStrNoPop var_AC
  loc_AD5E65: LitStr " AND CodiFapa = "
  loc_AD5E68: ConcatStr
  loc_AD5E69: FStStrNoPop var_E0
  loc_AD5E6C: ILdRf CodiFapa
  loc_AD5E6F: CStrI4
  loc_AD5E71: FStStrNoPop var_E4
  loc_AD5E74: ConcatStr
  loc_AD5E75: FStStrNoPop var_E8
  loc_AD5E78: LitStr " AND CuotDefa = "
  loc_AD5E7B: ConcatStr
  loc_AD5E7C: FStStrNoPop var_EC
  loc_AD5E7F: FLdI2 CuotDefa
  loc_AD5E82: CStrUI1
  loc_AD5E84: FStStrNoPop var_F0
  loc_AD5E87: ConcatStr
  loc_AD5E88: FStStrNoPop var_F4
  loc_AD5E8B: LitStr ";"
  loc_AD5E8E: ConcatStr
  loc_AD5E8F: FStStrNoPop var_F8
  loc_AD5E92: Call EjecutarRsCls(from_stack_1v)
  loc_AD5E97: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_AD5EB8: FFree1Var var_DC = ""
  loc_AD5EBB: ExitProcHresult
End Sub

Public Sub DesaActualizaCuota(CodiFapa, CuotDefa) 'A25E20
  'Data Table: 4493AC
  loc_A25DE8: LitStr "UPDATE detafapa SET EstaDefa = 'Emitida', FepaDefa = Null WHERE CodiFapa = "
  loc_A25DEB: ILdRf CodiFapa
  loc_A25DEE: CStrI4
  loc_A25DF0: FStStrNoPop var_88
  loc_A25DF3: ConcatStr
  loc_A25DF4: FStStrNoPop var_8C
  loc_A25DF7: LitStr " AND CuotDefa = "
  loc_A25DFA: ConcatStr
  loc_A25DFB: FStStrNoPop var_90
  loc_A25DFE: FLdI2 CuotDefa
  loc_A25E01: CStrUI1
  loc_A25E03: FStStrNoPop var_94
  loc_A25E06: ConcatStr
  loc_A25E07: FStStrNoPop var_98
  loc_A25E0A: Call EjecutarRsCls(from_stack_1v)
  loc_A25E0F: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A25E1C: ExitProcHresult
End Sub

Public Function BuscaCuotasImpagas(CodiFapa) 'A53534
  'Data Table: 4493AC
  loc_A534E0: LitStr "SELECT CodiFapa FROM detafapa WHERE CodiFapa = "
  loc_A534E3: ILdRf CodiFapa
  loc_A534E6: CStrI4
  loc_A534E8: FStStrNoPop var_8C
  loc_A534EB: ConcatStr
  loc_A534EC: FStStrNoPop var_90
  loc_A534EF: LitStr " AND FepaDefa IS NULL ORDER BY detafapa.CodiFapa, detafapa.CuotDefa"
  loc_A534F2: ConcatStr
  loc_A534F3: FStStrNoPop BuscaCuotasImpagas
  loc_A534F6: Call EjecutarRsCls(from_stack_1v)
  loc_A534FB: FFreeStr var_8C = "": var_90 = ""
  loc_A53504: FLdRfVar var_98
  loc_A53507: FLdPr Me
  loc_A5350A: MemLdPr global_56
  loc_A5350D:  = Me.RecordCount
  loc_A53512: ILdRf var_98
  loc_A53515: LitI4 0
  loc_A5351A: EqI4
  loc_A5351B: BranchF loc_A53526
  loc_A5351E: LitI2_Byte &HFF
  loc_A53520: FStI2 var_86
  loc_A53523: Branch loc_A5352B
  loc_A53526: LitI2_Byte 0
  loc_A53528: FStI2 var_86
  loc_A5352B: ExitProcCbHresult
End Function

Public Function ModificaDetaFapa(CodiFapa, CuotDefa, EstaDefa, FepaDefa) 'AD3008
  'Data Table: 4493AC
  loc_AD2F14: ILdRf EstaDefa
  loc_AD2F17: FStStrCopy var_98
  loc_AD2F1A: ILdRf FepaDefa
  loc_AD2F1D: FStStrCopy var_9C
  loc_AD2F20: ZeroRetValVar
  loc_AD2F22: FLdRfVar var_9C
  loc_AD2F25: CVarRef
  loc_AD2F2A: ImpAdCallI2 IsDate()
  loc_AD2F2F: FStI2 var_1FE
  loc_AD2F32: LitI4 1
  loc_AD2F37: LitI4 1
  loc_AD2F3C: LitVarStr var_D0, "yyyy-mm-dd"
  loc_AD2F41: FStVarCopyObj var_E0
  loc_AD2F44: FLdRfVar var_E0
  loc_AD2F47: FLdRfVar var_9C
  loc_AD2F4A: CVarRef
  loc_AD2F4F: ImpAdCallI2 Format$(, )
  loc_AD2F54: FStStr var_204
  loc_AD2F57: LitStr "UPDATE detafapa SET EstaDefa = '"
  loc_AD2F5A: ILdRf var_98
  loc_AD2F5D: ConcatStr
  loc_AD2F5E: FStStrNoPop var_A0
  loc_AD2F61: LitStr "', FepaDefa = "
  loc_AD2F64: ConcatStr
  loc_AD2F65: CVarStr var_148
  loc_AD2F68: LitVarStr var_118, "Null"
  loc_AD2F6D: FStVarCopyObj var_128
  loc_AD2F70: FLdRfVar var_128
  loc_AD2F73: LitStr "'"
  loc_AD2F76: FLdZeroAd var_204
  loc_AD2F79: FStStrNoPop var_E4
  loc_AD2F7C: ConcatStr
  loc_AD2F7D: FStStrNoPop var_E8
  loc_AD2F80: LitStr "'"
  loc_AD2F83: ConcatStr
  loc_AD2F84: CVarStr var_108
  loc_AD2F87: FLdI2 var_1FE
  loc_AD2F8A: CVarBoolI2 var_F8
  loc_AD2F8E: FLdRfVar var_138
  loc_AD2F91: ImpAdCallFPR4  = IIf(, , )
  loc_AD2F96: FLdRfVar var_138
  loc_AD2F99: ConcatVar var_158
  loc_AD2F9D: LitVarStr var_168, " WHERE CodiFapa = "
  loc_AD2FA2: ConcatVar var_178
  loc_AD2FA6: ILdRf CodiFapa
  loc_AD2FA9: CVarI4
  loc_AD2FAD: ConcatVar var_198
  loc_AD2FB1: LitVarStr var_1A8, " And CuotDefa = "
  loc_AD2FB6: ConcatVar var_1B8
  loc_AD2FBA: ILdRf CuotDefa
  loc_AD2FBD: CVarI4
  loc_AD2FC1: ConcatVar var_1D8
  loc_AD2FC5: LitVarStr var_1E8, ";"
  loc_AD2FCA: ConcatVar var_1F8
  loc_AD2FCE: CStrVarVal var_1FC
  loc_AD2FD2: Call EjecutarRsCls(from_stack_1v)
  loc_AD2FD7: FFreeStr var_A0 = "": var_E4 = "": var_E8 = "": var_1FC = ""
  loc_AD2FE4: FFreeVar var_E0 = "": var_F8 = "": var_108 = "": var_128 = "": var_148 = "": var_138 = "": var_158 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = ""
  loc_AD2FFF: ExitProcCbHresult
End Function

Public Function ProcesoActualizaUltimaCuota(CodiFapa, CuotDefa, CapiDefa) 'AB3F48
  'Data Table: 4493AC
  loc_AB3E90: ZeroRetValVar
  loc_AB3E92: LitStr "UPDATE detafapa SET CapiDefa = "
  loc_AB3E95: LitI4 0
  loc_AB3E9A: LitI4 -1
  loc_AB3E9F: LitI4 1
  loc_AB3EA4: LitStr "."
  loc_AB3EA7: LitStr ","
  loc_AB3EAA: FLdFPR8 CapiDefa
  loc_AB3EAD: CStrR8
  loc_AB3EAF: FStStrNoPop var_98
  loc_AB3EB2: ImpAdCallI2 Replace(, , , , , )
  loc_AB3EB7: FStStrNoPop var_9C
  loc_AB3EBA: ConcatStr
  loc_AB3EBB: FStStrNoPop var_A0
  loc_AB3EBE: LitStr ", TotaDefa = "
  loc_AB3EC1: ConcatStr
  loc_AB3EC2: FStStrNoPop var_A8
  loc_AB3EC5: LitI4 0
  loc_AB3ECA: LitI4 -1
  loc_AB3ECF: LitI4 1
  loc_AB3ED4: LitStr "."
  loc_AB3ED7: LitStr ","
  loc_AB3EDA: FLdFPR8 CapiDefa
  loc_AB3EDD: CStrR8
  loc_AB3EDF: FStStrNoPop var_A4
  loc_AB3EE2: ImpAdCallI2 Replace(, , , , , )
  loc_AB3EE7: FStStrNoPop var_AC
  loc_AB3EEA: ConcatStr
  loc_AB3EEB: FStStrNoPop var_B0
  loc_AB3EEE: LitStr " + RecaDefa - DecaDefa - DereDefa + ApreDefa + InteDefa  WHERE CodiFapa = "
  loc_AB3EF1: ConcatStr
  loc_AB3EF2: FStStrNoPop var_B4
  loc_AB3EF5: ILdRf CodiFapa
  loc_AB3EF8: CStrI4
  loc_AB3EFA: FStStrNoPop var_B8
  loc_AB3EFD: ConcatStr
  loc_AB3EFE: FStStrNoPop var_BC
  loc_AB3F01: LitStr " And CuotDefa = "
  loc_AB3F04: ConcatStr
  loc_AB3F05: FStStrNoPop var_C0
  loc_AB3F08: ILdRf CuotDefa
  loc_AB3F0B: CStrI4
  loc_AB3F0D: FStStrNoPop var_C4
  loc_AB3F10: ConcatStr
  loc_AB3F11: FStStrNoPop var_C8
  loc_AB3F14: LitStr ";"
  loc_AB3F17: ConcatStr
  loc_AB3F18: FStStrNoPop var_CC
  loc_AB3F1B: Call EjecutarRsCls(from_stack_1v)
  loc_AB3F20: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AB3F3F: ExitProcCbHresult
End Function

Private Function Proc_268_68_9F3794() '9F3794
  'Data Table: 4493AC
  loc_9F3770: LitStr "Primary"
  loc_9F3773: FLdPr Me
  loc_9F3776: LateIdLdVar var_94 DispID_4 0
  loc_9F377D: CastAdVar Me
  loc_9F3781: FStAdFunc var_98
  loc_9F3784: FLdPr var_98
  loc_9F378C: FFree1Ad var_98
  loc_9F378F: FFree1Var var_94 = ""
  loc_9F3792: ExitProcHresult
End Function

Private Function Proc_268_69_9DDE4C(arg_C) '9DDE4C
  'Data Table: 4493AC
  loc_9DDE30: ILdI4 arg_C
  loc_9DDE33: FStStrCopy var_88
  loc_9DDE36: ILdRf var_88
  loc_9DDE39: LitStr "Primary"
  loc_9DDE3C: EqStr
  loc_9DDE3E: BranchF loc_9DDE4B
  loc_9DDE41: FLdPr Me
  loc_9DDE44: MemLdStr RsFrm
  loc_9DDE47: IStAd
  loc_9DDE4B: ExitProcHresult
End Function
