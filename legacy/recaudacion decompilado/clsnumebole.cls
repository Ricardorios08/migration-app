VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsnumebole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0D944
  'Data Table: 41AEC0
  loc_A0D908: FLdRfVar var_8C
  loc_A0D90B: FLdRfVar var_88
  loc_A0D90E: FLdPr Me
  loc_A0D911: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A0D916: FLdPr var_88
  loc_A0D919:  = Me.RecordCount
  loc_A0D91E: ILdRf var_8C
  loc_A0D921: LitI4 0
  loc_A0D926: GtI4
  loc_A0D927: FFree1Ad var_88
  loc_A0D92A: BranchF loc_A0D943
  loc_A0D92D: FLdRfVar var_88
  loc_A0D930: FLdPr Me
  loc_A0D933: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A0D938: FLdPr var_88
  loc_A0D93B: Me.MoveFirst
  loc_A0D940: FFree1Ad var_88
  loc_A0D943: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0DCC4
  'Data Table: 41AEC0
  loc_A0DC88: FLdRfVar var_8C
  loc_A0DC8B: FLdRfVar var_88
  loc_A0DC8E: FLdPr Me
  loc_A0DC91: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A0DC96: FLdPr var_88
  loc_A0DC99:  = Me.RecordCount
  loc_A0DC9E: ILdRf var_8C
  loc_A0DCA1: LitI4 0
  loc_A0DCA6: GtI4
  loc_A0DCA7: FFree1Ad var_88
  loc_A0DCAA: BranchF loc_A0DCC3
  loc_A0DCAD: FLdRfVar var_88
  loc_A0DCB0: FLdPr Me
  loc_A0DCB3: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A0DCB8: FLdPr var_88
  loc_A0DCBB: Me.MoveLast
  loc_A0DCC0: FFree1Ad var_88
  loc_A0DCC3: ExitProcHresult
End Sub

Public Sub MoveNext() 'A9A47C
  'Data Table: 41AEC0
  loc_A9A3C0: FLdRfVar var_8A
  loc_A9A3C3: FLdRfVar var_88
  loc_A9A3C6: FLdPr Me
  loc_A9A3C9: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A3CE: FLdPr var_88
  loc_A9A3D1:  = Me.EOF
  loc_A9A3D6: FLdI2 var_8A
  loc_A9A3D9: NotI4
  loc_A9A3DA: FLdRfVar var_94
  loc_A9A3DD: FLdRfVar var_90
  loc_A9A3E0: FLdPr Me
  loc_A9A3E3: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A3E8: FLdPr var_90
  loc_A9A3EB:  = Me.RecordCount
  loc_A9A3F0: ILdRf var_94
  loc_A9A3F3: LitI4 0
  loc_A9A3F8: GtI4
  loc_A9A3F9: AndI4
  loc_A9A3FA: FFreeAd var_88 = ""
  loc_A9A401: BranchF loc_A9A41A
  loc_A9A404: FLdRfVar var_88
  loc_A9A407: FLdPr Me
  loc_A9A40A: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A40F: FLdPr var_88
  loc_A9A412: Me.MoveNext
  loc_A9A417: FFree1Ad var_88
  loc_A9A41A: FLdRfVar var_8A
  loc_A9A41D: FLdRfVar var_88
  loc_A9A420: FLdPr Me
  loc_A9A423: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A428: FLdPr var_88
  loc_A9A42B:  = Me.EOF
  loc_A9A430: FLdI2 var_8A
  loc_A9A433: FLdRfVar var_94
  loc_A9A436: FLdRfVar var_90
  loc_A9A439: FLdPr Me
  loc_A9A43C: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A441: FLdPr var_90
  loc_A9A444:  = Me.RecordCount
  loc_A9A449: ILdRf var_94
  loc_A9A44C: LitI4 0
  loc_A9A451: GtI4
  loc_A9A452: AndI4
  loc_A9A453: FFreeAd var_88 = ""
  loc_A9A45A: BranchF loc_A9A478
  loc_A9A45D: ImpAdCallFPR4 Beep()
  loc_A9A462: FLdRfVar var_88
  loc_A9A465: FLdPr Me
  loc_A9A468: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9A46D: FLdPr var_88
  loc_A9A470: Me.MoveLast
  loc_A9A475: FFree1Ad var_88
  loc_A9A478: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9CE154
  'Data Table: 41AEC0
  loc_9CE13C: FLdRfVar var_88
  loc_9CE13F: FLdPr Me
  loc_9CE142: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9CE147: FLdPr var_88
  loc_9CE14A: Me.MoveNext
  loc_9CE14F: FFree1Ad var_88
  loc_9CE152: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E9C20
  'Data Table: 41AEC0
  loc_9E9C00: LitVar_Missing var_98
  loc_9E9C03: PopAdLdVar
  loc_9E9C04: ILdI2 iValor
  loc_9E9C07: CI4UI1
  loc_9E9C08: FLdRfVar var_88
  loc_9E9C0B: FLdPr Me
  loc_9E9C0E: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9E9C13: FLdPr var_88
  loc_9E9C16: Me.Move from_stack_1, from_stack_2
  loc_9E9C1B: FFree1Ad var_88
  loc_9E9C1E: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A9E91C
  'Data Table: 41AEC0
  loc_A9E860: FLdRfVar var_8A
  loc_A9E863: FLdRfVar var_88
  loc_A9E866: FLdPr Me
  loc_A9E869: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E86E: FLdPr var_88
  loc_A9E871:  = Me.BOF
  loc_A9E876: FLdI2 var_8A
  loc_A9E879: NotI4
  loc_A9E87A: FLdRfVar var_94
  loc_A9E87D: FLdRfVar var_90
  loc_A9E880: FLdPr Me
  loc_A9E883: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E888: FLdPr var_90
  loc_A9E88B:  = Me.RecordCount
  loc_A9E890: ILdRf var_94
  loc_A9E893: LitI4 0
  loc_A9E898: GtI4
  loc_A9E899: AndI4
  loc_A9E89A: FFreeAd var_88 = ""
  loc_A9E8A1: BranchF loc_A9E8BA
  loc_A9E8A4: FLdRfVar var_88
  loc_A9E8A7: FLdPr Me
  loc_A9E8AA: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E8AF: FLdPr var_88
  loc_A9E8B2: Me.MovePrevious
  loc_A9E8B7: FFree1Ad var_88
  loc_A9E8BA: FLdRfVar var_8A
  loc_A9E8BD: FLdRfVar var_88
  loc_A9E8C0: FLdPr Me
  loc_A9E8C3: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E8C8: FLdPr var_88
  loc_A9E8CB:  = Me.BOF
  loc_A9E8D0: FLdI2 var_8A
  loc_A9E8D3: FLdRfVar var_94
  loc_A9E8D6: FLdRfVar var_90
  loc_A9E8D9: FLdPr Me
  loc_A9E8DC: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E8E1: FLdPr var_90
  loc_A9E8E4:  = Me.RecordCount
  loc_A9E8E9: ILdRf var_94
  loc_A9E8EC: LitI4 0
  loc_A9E8F1: GtI4
  loc_A9E8F2: AndI4
  loc_A9E8F3: FFreeAd var_88 = ""
  loc_A9E8FA: BranchF loc_A9E918
  loc_A9E8FD: ImpAdCallFPR4 Beep()
  loc_A9E902: FLdRfVar var_88
  loc_A9E905: FLdPr Me
  loc_A9E908: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A9E90D: FLdPr var_88
  loc_A9E910: Me.MoveFirst
  loc_A9E915: FFree1Ad var_88
  loc_A9E918: ExitProcHresult
  loc_A9E919: StAryRecCopy
End Sub

Public Property Get EOF() '9F85F0
  'Data Table: 41AEC0
  loc_9F85C8: FLdRfVar var_8E
  loc_9F85CB: FLdRfVar var_8C
  loc_9F85CE: FLdPr Me
  loc_9F85D1: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F85D6: FLdPr var_8C
  loc_9F85D9:  = Me.EOF
  loc_9F85DE: FLdI2 var_8E
  loc_9F85E1: FStI2 var_86
  loc_9F85E4: FFree1Ad var_8C
  loc_9F85E7: ExitProcCbHresult
  loc_9F85ED: FStAdFuncNoPop
End Sub

Public Property Get BOF() '9F8760
  'Data Table: 41AEC0
  loc_9F8738: FLdRfVar var_8E
  loc_9F873B: FLdRfVar var_8C
  loc_9F873E: FLdPr Me
  loc_9F8741: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8746: FLdPr var_8C
  loc_9F8749:  = Me.BOF
  loc_9F874E: FLdI2 var_8E
  loc_9F8751: FStI2 var_86
  loc_9F8754: FFree1Ad var_8C
  loc_9F8757: ExitProcCbHresult
  loc_9F875D: MulCyI2
  loc_9F875E: LtCy
End Sub

Public Sub Sort(sOrden) '9E181C
  'Data Table: 41AEC0
  loc_9E1800: ILdI4 sOrden
  loc_9E1803: FLdRfVar var_88
  loc_9E1806: FLdPr Me
  loc_9E1809: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9E180E: FLdPr var_88
  loc_9E1811: Me.Sort = from_stack_1
  loc_9E1816: FFree1Ad var_88
  loc_9E1819: ExitProcHresult
  loc_9E181A: FStStrCopy Sort800
End Sub

Public Sub Find(sFind) '9F88D0
  'Data Table: 41AEC0
  loc_9F88A8: LitVar_Missing var_98
  loc_9F88AB: PopAdLdVar
  loc_9F88AC: LitI4 1
  loc_9F88B1: LitI4 0
  loc_9F88B6: ILdI4 sFind
  loc_9F88B9: FLdRfVar var_88
  loc_9F88BC: FLdPr Me
  loc_9F88BF: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F88C4: FLdPr var_88
  loc_9F88C7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9F88CC: FFree1Ad var_88
  loc_9F88CF: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9F8A9C
  'Data Table: 41AEC0
  loc_9F8A74: FLdRfVar var_90
  loc_9F8A77: FLdRfVar var_8C
  loc_9F8A7A: FLdPr Me
  loc_9F8A7D: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8A82: FLdPr var_8C
  loc_9F8A85:  = Me.AbsolutePosition
  loc_9F8A8A: ILdRf var_90
  loc_9F8A8D: FStR4 var_88
  loc_9F8A90: FFree1Ad var_8C
  loc_9F8A93: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F8AF8
  'Data Table: 41AEC0
  loc_9F8AD0: FLdRfVar var_90
  loc_9F8AD3: FLdRfVar var_8C
  loc_9F8AD6: FLdPr Me
  loc_9F8AD9: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8ADE: FLdPr var_8C
  loc_9F8AE1:  = Me.RecordCount
  loc_9F8AE6: ILdRf var_90
  loc_9F8AE9: FStR4 var_88
  loc_9F8AEC: FFree1Ad var_8C
  loc_9F8AEF: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriBole, NumeBole) 'A42D54
  'Data Table: 41AEC0
  loc_A42D14: LitStr "INSERT INTO numebole (PeriBole, NumeBole) VALUES ("
  loc_A42D17: FLdI2 PeriBole
  loc_A42D1A: CStrUI1
  loc_A42D1C: FStStrNoPop var_88
  loc_A42D1F: ConcatStr
  loc_A42D20: FStStrNoPop var_8C
  loc_A42D23: LitStr ","
  loc_A42D26: ConcatStr
  loc_A42D27: FStStrNoPop var_90
  loc_A42D2A: ILdRf NumeBole
  loc_A42D2D: CStrI4
  loc_A42D2F: FStStrNoPop var_94
  loc_A42D32: ConcatStr
  loc_A42D33: FStStrNoPop var_98
  loc_A42D36: LitStr ");"
  loc_A42D39: ConcatStr
  loc_A42D3A: FStStrNoPop var_9C
  loc_A42D3D: Call EjecutarRsCls(from_stack_1v)
  loc_A42D42: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A42D51: ExitProcHresult
End Sub

Public Sub Delete() 'A23AD4
  'Data Table: 41AEC0
  loc_A23A8C: FLdRfVar var_8C
  loc_A23A8F: FLdRfVar var_88
  loc_A23A92: FLdPr Me
  loc_A23A95: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A23A9A: FLdPr var_88
  loc_A23A9D:  = Me.RecordCount
  loc_A23AA2: ILdRf var_8C
  loc_A23AA5: LitI4 0
  loc_A23AAA: GtI4
  loc_A23AAB: FFree1Ad var_88
  loc_A23AAE: BranchF loc_A23AD1
  loc_A23AB1: LitI4 1
  loc_A23AB6: FLdRfVar var_88
  loc_A23AB9: FLdPr Me
  loc_A23ABC: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A23AC1: FLdPr var_88
  loc_A23AC4: Me.Delete
  loc_A23AC9: FFree1Ad var_88
  loc_A23ACC: Call MoveNext()
  loc_A23AD1: ExitProcHresult
  loc_A23AD2: FLdZeroAd Delete874
End Sub

Public Sub Requery() '9FEF1C
  'Data Table: 41AEC0
  loc_9FEEEC: LitI4 -1
  loc_9FEEF1: FLdRfVar var_88
  loc_9FEEF4: FLdPr Me
  loc_9FEEF7: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9FEEFC: FLdPr var_88
  loc_9FEEFF: Me.Requery from_stack_1
  loc_9FEF04: FFree1Ad var_88
  loc_9FEF07: LitVarStr var_98, "Primary"
  loc_9FEF0C: PopAdLdVar
  loc_9FEF0D: FLdPr Me
  loc_9FEF10: LateIdCall
  loc_9FEF18: ExitProcHresult
  loc_9FEF19: FLdPr Me
End Sub

Public Sub Update() 'A23310
  'Data Table: 41AEC0
  loc_A232CC: FLdRfVar var_88
  loc_A232CF: FLdPr Me
  loc_A232D2: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A232D7: FLdZeroAd var_88
  loc_A232DA: FStAdFunc var_8C
  loc_A232DD: LitI4 3
  loc_A232E2: FLdPr var_8C
  loc_A232E5: Me.UpdateBatch
  loc_A232EA: FLdRfVar var_90
  loc_A232ED: FLdPr var_8C
  loc_A232F0:  = Me.EditMode
  loc_A232F5: ILdRf var_90
  loc_A232F8: LitI4 2
  loc_A232FD: EqI4
  loc_A232FE: BranchF loc_A23306
  loc_A23301: Call MoveLast()
  loc_A23306: LitNothing
  loc_A23308: FStAd var_8C 
  loc_A2330C: ExitProcHresult
  loc_A2330D: CastAd
End Sub

Public Sub Cancel() 'A49BE4
  'Data Table: 41AEC0
  loc_A49B90: FLdRfVar var_88
  loc_A49B93: FLdPr Me
  loc_A49B96: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A49B9B: FLdZeroAd var_88
  loc_A49B9E: FStAdFunc var_8C
  loc_A49BA1: FLdRfVar var_90
  loc_A49BA4: FLdPr var_8C
  loc_A49BA7:  = Me.RecordCount
  loc_A49BAC: ILdRf var_90
  loc_A49BAF: LitI4 0
  loc_A49BB4: GtI4
  loc_A49BB5: BranchF loc_A49BDC
  loc_A49BB8: FLdPr var_8C
  loc_A49BBB: Me.CancelUpdate
  loc_A49BC0: FLdRfVar var_90
  loc_A49BC3: FLdPr var_8C
  loc_A49BC6:  = Me.EditMode
  loc_A49BCB: ILdRf var_90
  loc_A49BCE: LitI4 2
  loc_A49BD3: EqI4
  loc_A49BD4: BranchF loc_A49BDC
  loc_A49BD7: Call MoveFirst()
  loc_A49BDC: LitNothing
  loc_A49BDE: FStAd var_8C 
  loc_A49BE2: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FC634
  'Data Table: 41AEC0
  loc_9FC608: FLdRfVar var_90
  loc_9FC60B: FLdRfVar var_8C
  loc_9FC60E: FLdPr Me
  loc_9FC611: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9FC616: FLdPr var_8C
  loc_9FC619:  = Me.EditMode
  loc_9FC61E: ILdRf var_90
  loc_9FC621: LitI4 0
  loc_9FC626: NeI4
  loc_9FC627: FStI2 var_86
  loc_9FC62A: FFree1Ad var_8C
  loc_9FC62D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A72AFC
  'Data Table: 41AEC0
  loc_A72A88: ILdRf sSelect
  loc_A72A8B: FStStrCopy var_88
  loc_A72A8E: LitNothing
  loc_A72A90: CastAd
  loc_A72A93: FStAdFuncNoPop
  loc_A72A96: FLdPr Me
  loc_A72A99: Call clsnumebole.global_4304456Set(from_stack_1v)
  loc_A72A9E: FFree1Ad var_8C
  loc_A72AA1: New Recordset
  loc_A72AA5: FStAdFuncNoPop
  loc_A72AA8: FLdPr Me
  loc_A72AAB: Call clsnumebole.global_4304456Set(from_stack_1v)
  loc_A72AB0: FFree1Ad var_8C
  loc_A72AB3: LitI4 -1
  loc_A72AB8: LitI4 3
  loc_A72ABD: LitI4 3
  loc_A72AC2: ImpAdLdI4 MemVar_D9301C
  loc_A72AC5: CVarAd
  loc_A72AC9: PopAdLdVar
  loc_A72ACA: ILdRf var_88
  loc_A72ACD: CVarStr var_9C
  loc_A72AD0: PopAdLdVar
  loc_A72AD1: FLdRfVar var_8C
  loc_A72AD4: FLdPr Me
  loc_A72AD7: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A72ADC: FLdPr var_8C
  loc_A72ADF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A72AE4: FFree1Ad var_8C
  loc_A72AE7: LitVarStr var_9C, "Primary"
  loc_A72AEC: PopAdLdVar
  loc_A72AED: FLdPr Me
  loc_A72AF0: LateIdCall
  loc_A72AF8: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A5C208
  'Data Table: 41AEC0
  loc_A5C1A8: ILdRf sSelect
  loc_A5C1AB: FStStrCopy var_88
  loc_A5C1AE: LitNothing
  loc_A5C1B0: CastAd
  loc_A5C1B3: FStAdFuncNoPop
  loc_A5C1B6: FLdPr Me
  loc_A5C1B9: Call clsnumebole.global_4304456Set(from_stack_1v)
  loc_A5C1BE: FFree1Ad var_8C
  loc_A5C1C1: New Recordset
  loc_A5C1C5: FStAdFuncNoPop
  loc_A5C1C8: FLdPr Me
  loc_A5C1CB: Call clsnumebole.global_4304456Set(from_stack_1v)
  loc_A5C1D0: FFree1Ad var_8C
  loc_A5C1D3: LitI4 -1
  loc_A5C1D8: LitI4 3
  loc_A5C1DD: LitI4 3
  loc_A5C1E2: ImpAdLdI4 MemVar_D9301C
  loc_A5C1E5: CVarAd
  loc_A5C1E9: PopAdLdVar
  loc_A5C1EA: ILdRf var_88
  loc_A5C1ED: CVarStr var_9C
  loc_A5C1F0: PopAdLdVar
  loc_A5C1F1: FLdRfVar var_8C
  loc_A5C1F4: FLdPr Me
  loc_A5C1F7: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A5C1FC: FLdPr var_8C
  loc_A5C1FF: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5C204: FFree1Ad var_8C
  loc_A5C207: ExitProcHresult
End Sub

Public Property Get DataSource() 'A09E18
  'Data Table: 41AEC0
  loc_A09DE8: ZeroRetVal
  loc_A09DEA: FLdRfVar var_90
  loc_A09DED: FLdRfVar var_8C
  loc_A09DF0: FLdPr Me
  loc_A09DF3: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A09DF8: FLdPr var_8C
  loc_A09DFB:  = Me.DataSource
  loc_A09E00: ILdRf var_90
  loc_A09E03: CastAd
  loc_A09E06: FStAdFunc var_88
  loc_A09E09: FFreeAd var_8C = ""
  loc_A09E10: ExitProcCbHresult
  loc_A09E16: FStAdFunc DataSource878
End Sub

Public Property Get EditMode() '9F8E90
  'Data Table: 41AEC0
  loc_9F8E68: FLdRfVar var_90
  loc_9F8E6B: FLdRfVar var_8C
  loc_9F8E6E: FLdPr Me
  loc_9F8E71: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8E76: FLdPr var_8C
  loc_9F8E79:  = Me.EditMode
  loc_9F8E7E: ILdRf var_90
  loc_9F8E81: FStR4 var_88
  loc_9F8E84: FFree1Ad var_8C
  loc_9F8E87: ExitProcCbHresult
  loc_9F8E8D: ImpAdLdFPR4 MemVar_41C894
End Sub

Public Property Get PeriBole() 'A49178
  'Data Table: 41AEC0
  loc_A4912C: FLdRfVar var_B4
  loc_A4912F: FLdRfVar var_A4
  loc_A49132: LitVarStr var_A0, "PeriBole"
  loc_A49137: PopAdLdVar
  loc_A49138: FLdRfVar var_90
  loc_A4913B: FLdRfVar var_8C
  loc_A4913E: FLdPr Me
  loc_A49141: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A49146: FLdPr var_8C
  loc_A49149:  = Me.Fields
  loc_A4914E: FLdPr var_90
  loc_A49151: from_stack_2 = Me.Item(from_stack_1)
  loc_A49156: FLdPr var_A4
  loc_A49159:  = Me.Value
  loc_A4915E: FLdRfVar var_B4
  loc_A49161: CI2Var
  loc_A49162: FStI2 var_86
  loc_A49165: FFreeAd var_8C = "": var_90 = ""
  loc_A4916E: FFree1Var var_B4 = ""
  loc_A49171: ExitProcCbHresult
End Sub

Public Property Let PeriBole(vDato) '9EDE00
  'Data Table: 41AEC0
  loc_9EDDDC: FLdI2 vDato
  loc_9EDDDF: CVarI2 var_A8
  loc_9EDDE2: PopAdLdVar
  loc_9EDDE3: LitVarStr var_98, "PeriInfo"
  loc_9EDDE8: PopAdLdVar
  loc_9EDDE9: FLdRfVar var_88
  loc_9EDDEC: FLdPr Me
  loc_9EDDEF: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9EDDF4: FLdPr var_88
  loc_9EDDF7: Me.Collect = from_stack_1
  loc_9EDDFC: FFree1Ad var_88
  loc_9EDDFF: ExitProcHresult
End Sub

Public Property Get NumeBole() 'A490EC
  'Data Table: 41AEC0
  loc_A490A0: FLdRfVar var_B4
  loc_A490A3: FLdRfVar var_A4
  loc_A490A6: LitVarStr var_A0, "NumeBole"
  loc_A490AB: PopAdLdVar
  loc_A490AC: FLdRfVar var_90
  loc_A490AF: FLdRfVar var_8C
  loc_A490B2: FLdPr Me
  loc_A490B5: from_stack_1v = clsnumebole.global_4304456Get()
  loc_A490BA: FLdPr var_8C
  loc_A490BD:  = Me.Fields
  loc_A490C2: FLdPr var_90
  loc_A490C5: from_stack_2 = Me.Item(from_stack_1)
  loc_A490CA: FLdPr var_A4
  loc_A490CD:  = Me.Value
  loc_A490D2: FLdRfVar var_B4
  loc_A490D5: CI4Var
  loc_A490D7: FStR4 var_88
  loc_A490DA: FFreeAd var_8C = "": var_90 = ""
  loc_A490E3: FFree1Var var_B4 = ""
  loc_A490E6: ExitProcCbHresult
End Sub

Public Property Let NumeBole(vDato) '9F8F48
  'Data Table: 41AEC0
  loc_9F8F20: ILdRf vDato
  loc_9F8F23: CVarI4
  loc_9F8F27: PopAdLdVar
  loc_9F8F28: LitVarStr var_98, "NumeBole"
  loc_9F8F2D: PopAdLdVar
  loc_9F8F2E: FLdRfVar var_88
  loc_9F8F31: FLdPr Me
  loc_9F8F34: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8F39: FLdPr var_88
  loc_9F8F3C: Me.Collect = from_stack_1
  loc_9F8F41: FFree1Ad var_88
  loc_9F8F44: ExitProcHresult
End Sub

Public Function NuevoRegistro(iPeriBole) 'AA5CB4
  'Data Table: 41AEC0
  loc_AA5C10: LitStr " SELECT @numebole:=IFNULL(MAX(NumeBole),0) + 1"
  loc_AA5C13: LitStr " FROM numebole WHERE PeriBole = "
  loc_AA5C16: ConcatStr
  loc_AA5C17: FStStrNoPop var_8C
  loc_AA5C1A: FLdI2 iPeriBole
  loc_AA5C1D: CStrUI1
  loc_AA5C1F: FStStrNoPop var_90
  loc_AA5C22: ConcatStr
  loc_AA5C23: FStStrNoPop NuevoRegistro
  loc_AA5C26: LitStr ";"
  loc_AA5C29: ConcatStr
  loc_AA5C2A: FStStrNoPop var_98
  loc_AA5C2D: LitStr " REPLACE INTO numebole VALUE ("
  loc_AA5C30: ConcatStr
  loc_AA5C31: FStStrNoPop var_9C
  loc_AA5C34: FLdI2 iPeriBole
  loc_AA5C37: CStrUI1
  loc_AA5C39: FStStrNoPop var_A0
  loc_AA5C3C: ConcatStr
  loc_AA5C3D: FStStrNoPop var_A4
  loc_AA5C40: LitStr ",@numebole)"
  loc_AA5C43: ConcatStr
  loc_AA5C44: FStStrNoPop var_A8
  loc_AA5C47: Call EjecutarRsCls(from_stack_1v)
  loc_AA5C4C: FFreeStr var_8C = "": var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AA5C5F: LitStr "SELECT cast(@numebole as char) NumeBole"
  loc_AA5C62: Call EjecutarRsCls(from_stack_1v)
  loc_AA5C67: FLdRfVar var_D4
  loc_AA5C6A: FLdRfVar var_C4
  loc_AA5C6D: LitVarStr var_C0, "NumeBole"
  loc_AA5C72: PopAdLdVar
  loc_AA5C73: FLdRfVar var_B0
  loc_AA5C76: FLdRfVar var_AC
  loc_AA5C79: FLdPr Me
  loc_AA5C7C: from_stack_1v = clsnumebole.global_4304456Get()
  loc_AA5C81: FLdPr var_AC
  loc_AA5C84:  = Me.Fields
  loc_AA5C89: FLdPr var_B0
  loc_AA5C8C: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5C91: FLdPr var_C4
  loc_AA5C94:  = Me.Value
  loc_AA5C99: FLdRfVar var_D4
  loc_AA5C9C: FnCLngVar
  loc_AA5C9E: FStR4 var_88
  loc_AA5CA1: FFreeAd var_AC = "": var_B0 = ""
  loc_AA5CAA: FFree1Var var_D4 = ""
  loc_AA5CAD: ExitProcCbHresult
  loc_AA5CB3: UMiR8
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8CB0
  'Data Table: 41AEC0
  loc_9E8C94: ILdRf pError
  loc_9E8C97: FStAd var_88 
  loc_9E8C9B: ILdRf pRecordset
  loc_9E8C9E: FStAd var_8C 
  loc_9E8CA2: FLdPr Me
  loc_9E8CA5: RaiseEvent
  loc_9E8CAD: ExitProcHresult
  loc_9E8CAE: BranchFVar
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9E82C
  'Data Table: 41AEC0
  loc_A9E76C: ILdRf pRecordset
  loc_A9E76F: FStAd var_88 
  loc_A9E773: ILdRf adReason
  loc_A9E776: FStR4 var_90
  loc_A9E779: ILdRf var_90
  loc_A9E77C: LitI4 1
  loc_A9E781: EqI4
  loc_A9E782: BranchF loc_A9E788
  loc_A9E785: Branch loc_A9E81B
  loc_A9E788: ILdRf var_90
  loc_A9E78B: LitI4 9
  loc_A9E790: EqI4
  loc_A9E791: BranchF loc_A9E797
  loc_A9E794: Branch loc_A9E81B
  loc_A9E797: ILdRf var_90
  loc_A9E79A: LitI4 2
  loc_A9E79F: EqI4
  loc_A9E7A0: BranchF loc_A9E7A6
  loc_A9E7A3: Branch loc_A9E81B
  loc_A9E7A6: ILdRf var_90
  loc_A9E7A9: LitI4 &HB
  loc_A9E7AE: EqI4
  loc_A9E7AF: BranchF loc_A9E7B5
  loc_A9E7B2: Branch loc_A9E81B
  loc_A9E7B5: ILdRf var_90
  loc_A9E7B8: LitI4 &HA
  loc_A9E7BD: EqI4
  loc_A9E7BE: BranchF loc_A9E7C4
  loc_A9E7C1: Branch loc_A9E81B
  loc_A9E7C4: ILdRf var_90
  loc_A9E7C7: LitI4 7
  loc_A9E7CC: EqI4
  loc_A9E7CD: BranchF loc_A9E7D3
  loc_A9E7D0: Branch loc_A9E81B
  loc_A9E7D3: ILdRf var_90
  loc_A9E7D6: LitI4 8
  loc_A9E7DB: EqI4
  loc_A9E7DC: BranchF loc_A9E7E2
  loc_A9E7DF: Branch loc_A9E81B
  loc_A9E7E2: ILdRf var_90
  loc_A9E7E5: LitI4 5
  loc_A9E7EA: EqI4
  loc_A9E7EB: BranchF loc_A9E7F1
  loc_A9E7EE: Branch loc_A9E81B
  loc_A9E7F1: ILdRf var_90
  loc_A9E7F4: LitI4 6
  loc_A9E7F9: EqI4
  loc_A9E7FA: BranchF loc_A9E800
  loc_A9E7FD: Branch loc_A9E81B
  loc_A9E800: ILdRf var_90
  loc_A9E803: LitI4 4
  loc_A9E808: EqI4
  loc_A9E809: BranchF loc_A9E80F
  loc_A9E80C: Branch loc_A9E81B
  loc_A9E80F: ILdRf var_90
  loc_A9E812: LitI4 3
  loc_A9E817: EqI4
  loc_A9E818: BranchF loc_A9E81B
  loc_A9E81B: FLdI2 var_8A
  loc_A9E81E: BranchF loc_A9E829
  loc_A9E821: LitI4 4
  loc_A9E826: IStI4 adStatus
  loc_A9E829: ExitProcHresult
End Sub

Private Function Proc_3_29_9F8D78() '9F8D78
  'Data Table: 41AEC0
  loc_9F8D54: LitStr "Primary"
  loc_9F8D57: FLdPr Me
  loc_9F8D5A: LateIdLdVar var_94 DispID_4 0
  loc_9F8D61: CastAdVar Me
  loc_9F8D65: FStAdFunc var_98
  loc_9F8D68: FLdPr var_98
  loc_9F8D70: FFree1Ad var_98
  loc_9F8D73: FFree1Var var_94 = ""
  loc_9F8D76: ExitProcHresult
End Function

Private Function Proc_3_30_9F8DD4(arg_C) '9F8DD4
  'Data Table: 41AEC0
  loc_9F8DB0: ILdI4 arg_C
  loc_9F8DB3: FStStrCopy var_88
  loc_9F8DB6: ILdRf var_88
  loc_9F8DB9: LitStr "Primary"
  loc_9F8DBC: EqStr
  loc_9F8DBE: BranchF loc_9F8DD3
  loc_9F8DC1: FLdRfVar var_8C
  loc_9F8DC4: FLdPr Me
  loc_9F8DC7: from_stack_1v = clsnumebole.global_4304456Get()
  loc_9F8DCC: FLdZeroAd var_8C
  loc_9F8DCF: IStAdFunc
  loc_9F8DD3: ExitProcHresult
End Function

Public Function global_4304456Get() '41B218
  global_4304456Get = global_4304456
End Function

Public Sub global_4304456Put(Value) '41B232
  global_4304456 = Value
End Sub

Public Sub global_4304456Set(Value) '41B24C
  global_4304456 = Value
End Sub

Public Function global_4304456Get() '41B266
  global_4304456Get = global_4304456
End Function

Public Sub global_4304456Put(Value) '41B280
  global_4304456 = Value
End Sub

Public Sub global_4304456Set(Value) '41B29A
  global_4304456 = Value
End Sub

Public Function global_4304456Get() '41B2B4
  global_4304456Get = global_4304456
End Function

Public Sub global_4304456Put(Value) '41B2CE
  global_4304456 = Value
End Sub

Public Sub global_4304456Set(Value) '41B2E8
  global_4304456 = Value
End Sub
