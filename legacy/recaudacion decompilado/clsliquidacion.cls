VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsliquidacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40C654
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40C663
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40C672
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EE434
  'Data Table: 40C424
  loc_9EE40C: FLdRfVar var_88
  loc_9EE40F: FLdPr Me
  loc_9EE412: MemLdPr RsFrm
  loc_9EE415:  = Me.RecordCount
  loc_9EE41A: ILdRf var_88
  loc_9EE41D: LitI4 0
  loc_9EE422: GtI4
  loc_9EE423: BranchF loc_9EE431
  loc_9EE426: FLdPr Me
  loc_9EE429: MemLdPr RsFrm
  loc_9EE42C: Me.MoveFirst
  loc_9EE431: ExitProcHresult
End Sub

Public Sub MoveLast() '9EF774
  'Data Table: 40C424
  loc_9EF74C: FLdRfVar var_88
  loc_9EF74F: FLdPr Me
  loc_9EF752: MemLdPr RsFrm
  loc_9EF755:  = Me.RecordCount
  loc_9EF75A: ILdRf var_88
  loc_9EF75D: LitI4 0
  loc_9EF762: GtI4
  loc_9EF763: BranchF loc_9EF771
  loc_9EF766: FLdPr Me
  loc_9EF769: MemLdPr RsFrm
  loc_9EF76C: Me.MoveLast
  loc_9EF771: ExitProcHresult
End Sub

Public Sub MoveNext() 'A6CB80
  'Data Table: 40C424
  loc_A6CB08: FLdRfVar var_86
  loc_A6CB0B: FLdPr Me
  loc_A6CB0E: MemLdPr RsFrm
  loc_A6CB11:  = Me.EOF
  loc_A6CB16: FLdI2 var_86
  loc_A6CB19: NotI4
  loc_A6CB1A: FLdRfVar var_8C
  loc_A6CB1D: FLdPr Me
  loc_A6CB20: MemLdPr RsFrm
  loc_A6CB23:  = Me.RecordCount
  loc_A6CB28: ILdRf var_8C
  loc_A6CB2B: LitI4 0
  loc_A6CB30: GtI4
  loc_A6CB31: AndI4
  loc_A6CB32: BranchF loc_A6CB40
  loc_A6CB35: FLdPr Me
  loc_A6CB38: MemLdPr RsFrm
  loc_A6CB3B: Me.MoveNext
  loc_A6CB40: FLdRfVar var_86
  loc_A6CB43: FLdPr Me
  loc_A6CB46: MemLdPr RsFrm
  loc_A6CB49:  = Me.EOF
  loc_A6CB4E: FLdI2 var_86
  loc_A6CB51: FLdRfVar var_8C
  loc_A6CB54: FLdPr Me
  loc_A6CB57: MemLdPr RsFrm
  loc_A6CB5A:  = Me.RecordCount
  loc_A6CB5F: ILdRf var_8C
  loc_A6CB62: LitI4 0
  loc_A6CB67: GtI4
  loc_A6CB68: AndI4
  loc_A6CB69: BranchF loc_A6CB7C
  loc_A6CB6C: ImpAdCallFPR4 Beep()
  loc_A6CB71: FLdPr Me
  loc_A6CB74: MemLdPr RsFrm
  loc_A6CB77: Me.MoveLast
  loc_A6CB7C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0F84
  'Data Table: 40C424
  loc_9B0F78: FLdPr Me
  loc_9B0F7B: MemLdPr RsFrm
  loc_9B0F7E: Me.MoveNext
  loc_9B0F83: ExitProcHresult
End Sub

Public Sub Move(iValor) '9BA150
  'Data Table: 40C424
  loc_9BA13C: LitVar_Missing var_94
  loc_9BA13F: PopAdLdVar
  loc_9BA140: ILdI2 iValor
  loc_9BA143: CI4UI1
  loc_9BA144: FLdPr Me
  loc_9BA147: MemLdPr RsFrm
  loc_9BA14A: Me.Move from_stack_1, from_stack_2
  loc_9BA14F: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A6C838
  'Data Table: 40C424
  loc_A6C7C0: FLdRfVar var_86
  loc_A6C7C3: FLdPr Me
  loc_A6C7C6: MemLdPr RsFrm
  loc_A6C7C9:  = Me.BOF
  loc_A6C7CE: FLdI2 var_86
  loc_A6C7D1: NotI4
  loc_A6C7D2: FLdRfVar var_8C
  loc_A6C7D5: FLdPr Me
  loc_A6C7D8: MemLdPr RsFrm
  loc_A6C7DB:  = Me.RecordCount
  loc_A6C7E0: ILdRf var_8C
  loc_A6C7E3: LitI4 0
  loc_A6C7E8: GtI4
  loc_A6C7E9: AndI4
  loc_A6C7EA: BranchF loc_A6C7F8
  loc_A6C7ED: FLdPr Me
  loc_A6C7F0: MemLdPr RsFrm
  loc_A6C7F3: Me.MovePrevious
  loc_A6C7F8: FLdRfVar var_86
  loc_A6C7FB: FLdPr Me
  loc_A6C7FE: MemLdPr RsFrm
  loc_A6C801:  = Me.BOF
  loc_A6C806: FLdI2 var_86
  loc_A6C809: FLdRfVar var_8C
  loc_A6C80C: FLdPr Me
  loc_A6C80F: MemLdPr RsFrm
  loc_A6C812:  = Me.RecordCount
  loc_A6C817: ILdRf var_8C
  loc_A6C81A: LitI4 0
  loc_A6C81F: GtI4
  loc_A6C820: AndI4
  loc_A6C821: BranchF loc_A6C834
  loc_A6C824: ImpAdCallFPR4 Beep()
  loc_A6C829: FLdPr Me
  loc_A6C82C: MemLdPr RsFrm
  loc_A6C82F: Me.MoveFirst
  loc_A6C834: ExitProcHresult
End Sub

Public Property Get EOF() '9C9AB0
  'Data Table: 40C424
  loc_9C9A94: FLdRfVar var_88
  loc_9C9A97: FLdPr Me
  loc_9C9A9A: MemLdPr RsFrm
  loc_9C9A9D:  = Me.EOF
  loc_9C9AA2: FLdI2 var_88
  loc_9C9AA5: FStI2 var_86
  loc_9C9AA8: ExitProcCbHresult
End Sub

Public Property Get BOF() '9C9A18
  'Data Table: 40C424
  loc_9C99FC: FLdRfVar var_88
  loc_9C99FF: FLdPr Me
  loc_9C9A02: MemLdPr RsFrm
  loc_9C9A05:  = Me.BOF
  loc_9C9A0A: FLdI2 var_88
  loc_9C9A0D: FStI2 var_86
  loc_9C9A10: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9B49F8
  'Data Table: 40C424
  loc_9B49E8: ILdI4 sOrden
  loc_9B49EB: FLdPr Me
  loc_9B49EE: MemLdPr RsFrm
  loc_9B49F1: Me.Sort = from_stack_1
  loc_9B49F6: ExitProcHresult
End Sub

Public Sub Find(sFind) '9DF570
  'Data Table: 40C424
  loc_9DF550: LitVar_Missing var_94
  loc_9DF553: PopAdLdVar
  loc_9DF554: LitI4 1
  loc_9DF559: LitI4 0
  loc_9DF55E: ILdI4 sFind
  loc_9DF561: FLdPr Me
  loc_9DF564: MemLdPr RsFrm
  loc_9DF567: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9DF56C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9BA32C
  'Data Table: 40C424
  loc_9BA318: ILdI4 sCriterio
  loc_9BA31B: CVarStr var_94
  loc_9BA31E: PopAdLdVar
  loc_9BA31F: FLdPr Me
  loc_9BA322: MemLdPr RsFrm
  loc_9BA325: Me.Filter = from_stack_1
  loc_9BA32A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9C8764
  'Data Table: 40C424
  loc_9C8748: FLdRfVar var_8C
  loc_9C874B: FLdPr Me
  loc_9C874E: MemLdPr RsFrm
  loc_9C8751:  = Me.AbsolutePosition
  loc_9C8756: ILdRf var_8C
  loc_9C8759: FStR4 var_88
  loc_9C875C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9C85E8
  'Data Table: 40C424
  loc_9C85CC: FLdRfVar var_8C
  loc_9C85CF: FLdPr Me
  loc_9C85D2: MemLdPr RsFrm
  loc_9C85D5:  = Me.RecordCount
  loc_9C85DA: ILdRf var_8C
  loc_9C85DD: FStR4 var_88
  loc_9C85E0: ExitProcCbHresult
  loc_9C85E6: FLdPr var_53F8
End Sub

Public Sub AddNew(PeriLiqu, CodiOfic, CodiTili, NumeLiqu, BimeLiqu, TipoLiqu) 'AEC760
  'Data Table: 40C424
  loc_AEC628: FLdRfVar var_88
  loc_AEC62B: FLdI2 NumeLiqu
  loc_AEC62E: FLdUI1
  loc_AEC632: FLdUI1
  loc_AEC636: FLdI2 PeriLiqu
  loc_AEC639: from_stack_5v = ValidaClave(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_AEC63E: ILdRf var_88
  loc_AEC641: LitStr vbNullString
  loc_AEC644: NeStr
  loc_AEC646: FFree1Str var_88
  loc_AEC649: BranchF loc_AEC657
  loc_AEC64C: LitStr "La EMISION YA EXISTE. Reintente..."
  loc_AEC64F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC654: Branch loc_AEC75C
  loc_AEC657: LitI2_Byte 0
  loc_AEC659: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AEC65E: FStFPR8 var_12C
  loc_AEC661: LitStr "INSERT INTO liquidacion (PeriLiqu, CodiOfic, CodiTili, NumeLiqu, ActuLiqu, FealLiqu, BimeLiqu, TipoLiqu, CodiUsua) "
  loc_AEC664: LitStr " VALUES ("
  loc_AEC667: ConcatStr
  loc_AEC668: FStStrNoPop var_88
  loc_AEC66B: FLdI2 PeriLiqu
  loc_AEC66E: CStrUI1
  loc_AEC670: FStStrNoPop var_8C
  loc_AEC673: ConcatStr
  loc_AEC674: FStStrNoPop var_90
  loc_AEC677: LitStr ","
  loc_AEC67A: ConcatStr
  loc_AEC67B: FStStrNoPop var_94
  loc_AEC67E: FLdUI1
  loc_AEC682: CStrI2
  loc_AEC684: FStStrNoPop var_98
  loc_AEC687: ConcatStr
  loc_AEC688: FStStrNoPop var_9C
  loc_AEC68B: LitStr ","
  loc_AEC68E: ConcatStr
  loc_AEC68F: FStStrNoPop var_A0
  loc_AEC692: FLdUI1
  loc_AEC696: CStrI2
  loc_AEC698: FStStrNoPop var_A4
  loc_AEC69B: ConcatStr
  loc_AEC69C: FStStrNoPop var_A8
  loc_AEC69F: LitStr ","
  loc_AEC6A2: ConcatStr
  loc_AEC6A3: FStStrNoPop var_AC
  loc_AEC6A6: FLdI2 NumeLiqu
  loc_AEC6A9: CStrUI1
  loc_AEC6AB: FStStrNoPop var_B0
  loc_AEC6AE: ConcatStr
  loc_AEC6AF: FStStrNoPop var_B4
  loc_AEC6B2: LitStr ",'No',"
  loc_AEC6B5: ConcatStr
  loc_AEC6B6: FStStrNoPop var_F8
  loc_AEC6B9: LitI4 1
  loc_AEC6BE: LitI4 1
  loc_AEC6C3: LitVarStr var_E4, "'yyyy-mm-dd'"
  loc_AEC6C8: FStVarCopyObj var_F4
  loc_AEC6CB: FLdRfVar var_F4
  loc_AEC6CE: FLdFPR8 var_12C
  loc_AEC6D1: CVarDate var_D4
  loc_AEC6D5: ImpAdCallI2 Format$(, )
  loc_AEC6DA: FStStrNoPop var_FC
  loc_AEC6DD: ConcatStr
  loc_AEC6DE: FStStrNoPop var_100
  loc_AEC6E1: LitStr ","
  loc_AEC6E4: ConcatStr
  loc_AEC6E5: FStStrNoPop var_104
  loc_AEC6E8: FLdI2 BimeLiqu
  loc_AEC6EB: CStrUI1
  loc_AEC6ED: FStStrNoPop var_108
  loc_AEC6F0: ConcatStr
  loc_AEC6F1: FStStrNoPop var_10C
  loc_AEC6F4: LitStr ","
  loc_AEC6F7: ConcatStr
  loc_AEC6F8: FStStrNoPop var_110
  loc_AEC6FB: FLdUI1
  loc_AEC6FF: CStrI2
  loc_AEC701: FStStrNoPop var_114
  loc_AEC704: ConcatStr
  loc_AEC705: FStStrNoPop var_118
  loc_AEC708: LitStr ",'"
  loc_AEC70B: ConcatStr
  loc_AEC70C: FStStrNoPop var_11C
  loc_AEC70F: ImpAdLdI4 MemVar_D9302C
  loc_AEC712: ConcatStr
  loc_AEC713: FStStrNoPop var_120
  loc_AEC716: LitStr "');"
  loc_AEC719: ConcatStr
  loc_AEC71A: FStStrNoPop var_124
  loc_AEC71D: Call EjecutarRsCls(from_stack_1v)
  loc_AEC722: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AEC755: FFreeVar var_D4 = ""
  loc_AEC75C: ExitProcHresult
End Sub

Public Sub Requery() '9E6504
  'Data Table: 40C424
  loc_9E64E0: LitI4 -1
  loc_9E64E5: FLdPr Me
  loc_9E64E8: MemLdPr RsFrm
  loc_9E64EB: Me.Requery from_stack_1
  loc_9E64F0: LitVarStr var_94, "Primary"
  loc_9E64F5: PopAdLdVar
  loc_9E64F6: FLdPr Me
  loc_9E64F9: LateIdCall
  loc_9E6501: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A5F0C4
  'Data Table: 40C424
  loc_A5F060: ILdRf sSelect
  loc_A5F063: FStStrCopy var_88
  loc_A5F066: LitNothing
  loc_A5F068: CastAd
  loc_A5F06B: FStAdFuncNoPop
  loc_A5F06E: FLdPr Me
  loc_A5F071: MemStAd
  loc_A5F075: FFree1Ad var_8C
  loc_A5F078: New Recordset
  loc_A5F07C: FStAdFuncNoPop
  loc_A5F07F: FLdPr Me
  loc_A5F082: MemStAd
  loc_A5F086: FFree1Ad var_8C
  loc_A5F089: LitI4 -1
  loc_A5F08E: LitI4 3
  loc_A5F093: LitI4 3
  loc_A5F098: ImpAdLdI4 MemVar_D9301C
  loc_A5F09B: CVarAd
  loc_A5F09F: PopAdLdVar
  loc_A5F0A0: ILdRf var_88
  loc_A5F0A3: CVarStr var_9C
  loc_A5F0A6: PopAdLdVar
  loc_A5F0A7: FLdPr Me
  loc_A5F0AA: MemLdPr RsFrm
  loc_A5F0AD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5F0B2: LitVarStr var_9C, "Primary"
  loc_A5F0B7: PopAdLdVar
  loc_A5F0B8: FLdPr Me
  loc_A5F0BB: LateIdCall
  loc_A5F0C3: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) 'A4FD3C
  'Data Table: 40C424
  loc_A4FCE8: ILdRf sSelect
  loc_A4FCEB: FStStrCopy var_88
  loc_A4FCEE: LitNothing
  loc_A4FCF0: CastAd
  loc_A4FCF3: FStAdFuncNoPop
  loc_A4FCF6: FLdPr Me
  loc_A4FCF9: MemStAd
  loc_A4FCFD: FFree1Ad var_8C
  loc_A4FD00: New Recordset
  loc_A4FD04: FStAdFuncNoPop
  loc_A4FD07: FLdPr Me
  loc_A4FD0A: MemStAd
  loc_A4FD0E: FFree1Ad var_8C
  loc_A4FD11: LitI4 -1
  loc_A4FD16: LitI4 3
  loc_A4FD1B: LitI4 3
  loc_A4FD20: ImpAdLdI4 MemVar_D9301C
  loc_A4FD23: CVarAd
  loc_A4FD27: PopAdLdVar
  loc_A4FD28: ILdRf var_88
  loc_A4FD2B: CVarStr var_9C
  loc_A4FD2E: PopAdLdVar
  loc_A4FD2F: FLdPr Me
  loc_A4FD32: MemLdPr global_56
  loc_A4FD35: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4FD3A: ExitProcHresult
End Sub

Public Property Get DataSource() '9F01AC
  'Data Table: 40C424
  loc_9F0188: ZeroRetVal
  loc_9F018A: FLdRfVar var_8C
  loc_9F018D: FLdPr Me
  loc_9F0190: MemLdPr RsFrm
  loc_9F0193:  = Me.DataSource
  loc_9F0198: ILdRf var_8C
  loc_9F019B: CastAd
  loc_9F019E: FStAdFunc var_88
  loc_9F01A1: FFree1Ad var_8C
  loc_9F01A4: ExitProcCbHresult
End Sub

Public Property Get PeriLiqu() 'A2BC24
  'Data Table: 40C424
  loc_A2BBE0: FLdRfVar var_B0
  loc_A2BBE3: FLdRfVar var_A0
  loc_A2BBE6: LitVarStr var_9C, "PeriLiqu"
  loc_A2BBEB: PopAdLdVar
  loc_A2BBEC: FLdRfVar var_8C
  loc_A2BBEF: FLdPr Me
  loc_A2BBF2: MemLdPr RsFrm
  loc_A2BBF5:  = Me.Fields
  loc_A2BBFA: FLdPr var_8C
  loc_A2BBFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BC02: FLdPr var_A0
  loc_A2BC05:  = Me.Value
  loc_A2BC0A: FLdRfVar var_B0
  loc_A2BC0D: CI2Var
  loc_A2BC0E: FStI2 var_86
  loc_A2BC11: FFreeAd var_8C = ""
  loc_A2BC18: FFree1Var var_B0 = ""
  loc_A2BC1B: ExitProcCbHresult
End Sub

Public Property Get BimeLiqu() 'A2BB24
  'Data Table: 40C424
  loc_A2BAE0: FLdRfVar var_B0
  loc_A2BAE3: FLdRfVar var_A0
  loc_A2BAE6: LitVarStr var_9C, "BimeLiqu"
  loc_A2BAEB: PopAdLdVar
  loc_A2BAEC: FLdRfVar var_8C
  loc_A2BAEF: FLdPr Me
  loc_A2BAF2: MemLdPr RsFrm
  loc_A2BAF5:  = Me.Fields
  loc_A2BAFA: FLdPr var_8C
  loc_A2BAFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BB02: FLdPr var_A0
  loc_A2BB05:  = Me.Value
  loc_A2BB0A: FLdRfVar var_B0
  loc_A2BB0D: CUI1Var
  loc_A2BB0F: FStUI1 var_86
  loc_A2BB13: FFreeAd var_8C = ""
  loc_A2BB1A: FFree1Var var_B0 = ""
  loc_A2BB1D: ExitProcCbHresult
End Sub

Public Property Get CodiOfic() 'A2BA24
  'Data Table: 40C424
  loc_A2B9E0: FLdRfVar var_B0
  loc_A2B9E3: FLdRfVar var_A0
  loc_A2B9E6: LitVarStr var_9C, "CodiOfic"
  loc_A2B9EB: PopAdLdVar
  loc_A2B9EC: FLdRfVar var_8C
  loc_A2B9EF: FLdPr Me
  loc_A2B9F2: MemLdPr RsFrm
  loc_A2B9F5:  = Me.Fields
  loc_A2B9FA: FLdPr var_8C
  loc_A2B9FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A2BA02: FLdPr var_A0
  loc_A2BA05:  = Me.Value
  loc_A2BA0A: FLdRfVar var_B0
  loc_A2BA0D: CUI1Var
  loc_A2BA0F: FStUI1 var_86
  loc_A2BA13: FFreeAd var_8C = ""
  loc_A2BA1A: FFree1Var var_B0 = ""
  loc_A2BA1D: ExitProcCbHresult
End Sub

Public Property Get CodiTili() 'A2B9A4
  'Data Table: 40C424
  loc_A2B960: FLdRfVar var_B0
  loc_A2B963: FLdRfVar var_A0
  loc_A2B966: LitVarStr var_9C, "CodiTili"
  loc_A2B96B: PopAdLdVar
  loc_A2B96C: FLdRfVar var_8C
  loc_A2B96F: FLdPr Me
  loc_A2B972: MemLdPr RsFrm
  loc_A2B975:  = Me.Fields
  loc_A2B97A: FLdPr var_8C
  loc_A2B97D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B982: FLdPr var_A0
  loc_A2B985:  = Me.Value
  loc_A2B98A: FLdRfVar var_B0
  loc_A2B98D: CUI1Var
  loc_A2B98F: FStUI1 var_86
  loc_A2B993: FFreeAd var_8C = ""
  loc_A2B99A: FFree1Var var_B0 = ""
  loc_A2B99D: ExitProcCbHresult
End Sub

Public Property Get NumeLiqu() 'A2B8A4
  'Data Table: 40C424
  loc_A2B860: FLdRfVar var_B0
  loc_A2B863: FLdRfVar var_A0
  loc_A2B866: LitVarStr var_9C, "NumeLiqu"
  loc_A2B86B: PopAdLdVar
  loc_A2B86C: FLdRfVar var_8C
  loc_A2B86F: FLdPr Me
  loc_A2B872: MemLdPr RsFrm
  loc_A2B875:  = Me.Fields
  loc_A2B87A: FLdPr var_8C
  loc_A2B87D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B882: FLdPr var_A0
  loc_A2B885:  = Me.Value
  loc_A2B88A: FLdRfVar var_B0
  loc_A2B88D: CI2Var
  loc_A2B88E: FStI2 var_86
  loc_A2B891: FFreeAd var_8C = ""
  loc_A2B898: FFree1Var var_B0 = ""
  loc_A2B89B: ExitProcCbHresult
End Sub

Public Property Get ActuLiqu() 'A3A900
  'Data Table: 40C424
  loc_A3A8BC: ZeroRetVal
  loc_A3A8BE: FLdRfVar var_B0
  loc_A3A8C1: FLdRfVar var_A0
  loc_A3A8C4: LitVarStr var_9C, "ActuLiqu"
  loc_A3A8C9: PopAdLdVar
  loc_A3A8CA: FLdRfVar var_8C
  loc_A3A8CD: FLdPr Me
  loc_A3A8D0: MemLdPr RsFrm
  loc_A3A8D3:  = Me.Fields
  loc_A3A8D8: FLdPr var_8C
  loc_A3A8DB: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A8E0: FLdPr var_A0
  loc_A3A8E3:  = Me.Value
  loc_A3A8E8: FLdRfVar var_B0
  loc_A3A8EB: CStrVarTmp
  loc_A3A8EC: FStStr var_88
  loc_A3A8EF: FFreeAd var_8C = ""
  loc_A3A8F6: FFree1Var var_B0 = ""
  loc_A3A8F9: ExitProcCbHresult
End Sub

Public Property Get FealLiqu() 'A3A87C
  'Data Table: 40C424
  loc_A3A838: ZeroRetVal
  loc_A3A83A: FLdRfVar var_B0
  loc_A3A83D: FLdRfVar var_A0
  loc_A3A840: LitVarStr var_9C, "FealLiqu"
  loc_A3A845: PopAdLdVar
  loc_A3A846: FLdRfVar var_8C
  loc_A3A849: FLdPr Me
  loc_A3A84C: MemLdPr RsFrm
  loc_A3A84F:  = Me.Fields
  loc_A3A854: FLdPr var_8C
  loc_A3A857: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A85C: FLdPr var_A0
  loc_A3A85F:  = Me.Value
  loc_A3A864: FLdRfVar var_B0
  loc_A3A867: CStrVarTmp
  loc_A3A868: FStStr var_88
  loc_A3A86B: FFreeAd var_8C = ""
  loc_A3A872: FFree1Var var_B0 = ""
  loc_A3A875: ExitProcCbHresult
End Sub

Public Property Get TipoLiqu() 'A2B5A4
  'Data Table: 40C424
  loc_A2B560: FLdRfVar var_B0
  loc_A2B563: FLdRfVar var_A0
  loc_A2B566: LitVarStr var_9C, "TipoLiqu"
  loc_A2B56B: PopAdLdVar
  loc_A2B56C: FLdRfVar var_8C
  loc_A2B56F: FLdPr Me
  loc_A2B572: MemLdPr RsFrm
  loc_A2B575:  = Me.Fields
  loc_A2B57A: FLdPr var_8C
  loc_A2B57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2B582: FLdPr var_A0
  loc_A2B585:  = Me.Value
  loc_A2B58A: FLdRfVar var_B0
  loc_A2B58D: CUI1Var
  loc_A2B58F: FStUI1 var_86
  loc_A2B593: FFreeAd var_8C = ""
  loc_A2B59A: FFree1Var var_B0 = ""
  loc_A2B59D: ExitProcCbHresult
End Sub

Public Property Get CodiUsua() 'A3A3D8
  'Data Table: 40C424
  loc_A3A394: ZeroRetVal
  loc_A3A396: FLdRfVar var_B0
  loc_A3A399: FLdRfVar var_A0
  loc_A3A39C: LitVarStr var_9C, "CodiUsua"
  loc_A3A3A1: PopAdLdVar
  loc_A3A3A2: FLdRfVar var_8C
  loc_A3A3A5: FLdPr Me
  loc_A3A3A8: MemLdPr RsFrm
  loc_A3A3AB:  = Me.Fields
  loc_A3A3B0: FLdPr var_8C
  loc_A3A3B3: from_stack_2 = Me.Item(from_stack_1)
  loc_A3A3B8: FLdPr var_A0
  loc_A3A3BB:  = Me.Value
  loc_A3A3C0: FLdRfVar var_B0
  loc_A3A3C3: CStrVarTmp
  loc_A3A3C4: FStStr var_88
  loc_A3A3C7: FFreeAd var_8C = ""
  loc_A3A3CE: FFree1Var var_B0 = ""
  loc_A3A3D1: ExitProcCbHresult
End Sub

Public Property Get DetaTili() 'A13B40
  'Data Table: 40C424
  loc_A13B08: ZeroRetValVar
  loc_A13B0A: FLdRfVar var_AC
  loc_A13B0D: LitVarStr var_A8, "DetaTili"
  loc_A13B12: PopAdLdVar
  loc_A13B13: FLdRfVar var_98
  loc_A13B16: FLdPr Me
  loc_A13B19: MemLdPr RsFrm
  loc_A13B1C:  = Me.Fields
  loc_A13B21: FLdPr var_98
  loc_A13B24: from_stack_2 = Me.Item(from_stack_1)
  loc_A13B29: FLdZeroAd var_AC
  loc_A13B2C: CVarAd
  loc_A13B30: FStVar DetaTili
  loc_A13B34: FFree1Ad var_98
  loc_A13B37: ExitProcCbHresult
End Sub

Public Property Get LeyeTili() 'A92E3C
  'Data Table: 40C424
  loc_A92DA8: ZeroRetVal
  loc_A92DAA: FLdRfVar var_A0
  loc_A92DAD: LitVarStr var_9C, "LeyeTili"
  loc_A92DB2: PopAdLdVar
  loc_A92DB3: FLdRfVar var_8C
  loc_A92DB6: FLdPr Me
  loc_A92DB9: MemLdPr RsFrm
  loc_A92DBC:  = Me.Fields
  loc_A92DC1: FLdPr var_8C
  loc_A92DC4: from_stack_2 = Me.Item(from_stack_1)
  loc_A92DC9: FLdZeroAd var_A0
  loc_A92DCC: CVarAd
  loc_A92DD0: ImpAdCallI2 IsNull()
  loc_A92DD5: FStI2 var_11A
  loc_A92DD8: FLdRfVar var_C8
  loc_A92DDB: LitVarStr var_C4, "LeyeTili"
  loc_A92DE0: PopAdLdVar
  loc_A92DE1: FLdRfVar var_B4
  loc_A92DE4: FLdPr Me
  loc_A92DE7: MemLdPr RsFrm
  loc_A92DEA:  = Me.Fields
  loc_A92DEF: FLdPr var_B4
  loc_A92DF2: from_stack_2 = Me.Item(from_stack_1)
  loc_A92DF7: FLdZeroAd var_C8
  loc_A92DFA: CVarAd
  loc_A92DFE: LitVarStr var_E8, vbNullString
  loc_A92E03: FStVarCopyObj var_F8
  loc_A92E06: FLdRfVar var_F8
  loc_A92E09: FLdI2 var_11A
  loc_A92E0C: CVarBoolI2 var_D8
  loc_A92E10: FLdRfVar var_118
  loc_A92E13: ImpAdCallFPR4  = IIf(, , )
  loc_A92E18: FLdRfVar var_118
  loc_A92E1B: CStrVarTmp
  loc_A92E1C: FStStr var_88
  loc_A92E1F: FFreeAd var_8C = ""
  loc_A92E26: FFreeVar var_B0 = "": var_D8 = "": var_F8 = "": var_108 = ""
  loc_A92E33: ExitProcCbHresult
End Sub

Public Function ValidaClave(PeriLiqu, CodiOfic, CodiTili, NumeLiqu) 'A98158
  'Data Table: 40C424
  loc_A980C8: ZeroRetVal
  loc_A980CA: LitStr "SELECT PeriLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_A980CD: FLdI2 PeriLiqu
  loc_A980D0: CStrUI1
  loc_A980D2: FStStrNoPop var_8C
  loc_A980D5: ConcatStr
  loc_A980D6: FStStrNoPop var_90
  loc_A980D9: LitStr " AND CodiOfic = "
  loc_A980DC: ConcatStr
  loc_A980DD: FStStrNoPop ValidaClave
  loc_A980E0: FLdUI1
  loc_A980E4: CStrI2
  loc_A980E6: FStStrNoPop var_98
  loc_A980E9: ConcatStr
  loc_A980EA: FStStrNoPop var_9C
  loc_A980ED: LitStr " AND CodiTili = "
  loc_A980F0: ConcatStr
  loc_A980F1: FStStrNoPop var_A0
  loc_A980F4: FLdUI1
  loc_A980F8: CStrI2
  loc_A980FA: FStStrNoPop var_A4
  loc_A980FD: ConcatStr
  loc_A980FE: FStStrNoPop var_A8
  loc_A98101: LitStr " AND NumeLiqu = "
  loc_A98104: ConcatStr
  loc_A98105: FStStrNoPop var_AC
  loc_A98108: FLdI2 NumeLiqu
  loc_A9810B: CStrUI1
  loc_A9810D: FStStrNoPop var_B0
  loc_A98110: ConcatStr
  loc_A98111: FStStrNoPop var_B4
  loc_A98114: Call EjecutarRsCls(from_stack_1v)
  loc_A98119: FFreeStr var_8C = "": var_90 = "": ValidaClave = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A98132: FLdRfVar var_B8
  loc_A98135: FLdPr Me
  loc_A98138: MemLdPr global_56
  loc_A9813B:  = Me.RecordCount
  loc_A98140: ILdRf var_B8
  loc_A98143: LitI4 0
  loc_A98148: GtI4
  loc_A98149: BranchF loc_A98152
  loc_A9814C: LitStr "LA LIQUIDACION DE INMUEBLE YA EXISTE. Reintente..."
  loc_A9814F: FStStrCopy var_88
  loc_A98152: ExitProcCbHresult
End Function

Public Function NuevoRegistro(PeriLiqu, CodiOfic, CodiTili) 'AB4508
  'Data Table: 40C424
  loc_AB4444: LitStr "SELECT NumeLiqu FROM liquidacion WHERE PeriLiqu = "
  loc_AB4447: FLdI2 PeriLiqu
  loc_AB444A: CStrUI1
  loc_AB444C: FStStrNoPop var_8C
  loc_AB444F: ConcatStr
  loc_AB4450: FStStrNoPop var_90
  loc_AB4453: LitStr " AND CodiOfic = "
  loc_AB4456: ConcatStr
  loc_AB4457: FStStrNoPop NuevoRegistro
  loc_AB445A: FLdUI1
  loc_AB445E: CStrI2
  loc_AB4460: FStStrNoPop var_98
  loc_AB4463: ConcatStr
  loc_AB4464: FStStrNoPop var_9C
  loc_AB4467: LitStr " AND CodiTili = "
  loc_AB446A: ConcatStr
  loc_AB446B: FStStrNoPop var_A0
  loc_AB446E: FLdUI1
  loc_AB4472: CStrI2
  loc_AB4474: FStStrNoPop var_A4
  loc_AB4477: ConcatStr
  loc_AB4478: FStStrNoPop var_A8
  loc_AB447B: LitStr " ORDER BY PeriLiqu, CodiOfic, CodiTili, NumeLiqu DESC "
  loc_AB447E: ConcatStr
  loc_AB447F: FStStrNoPop var_AC
  loc_AB4482: Call EjecutarRsCls(from_stack_1v)
  loc_AB4487: FFreeStr var_8C = "": var_90 = "": NuevoRegistro = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AB449C: FLdRfVar var_B0
  loc_AB449F: FLdPr Me
  loc_AB44A2: MemLdPr global_56
  loc_AB44A5:  = Me.RecordCount
  loc_AB44AA: ILdRf var_B0
  loc_AB44AD: LitI4 0
  loc_AB44B2: GtI4
  loc_AB44B3: BranchF loc_AB44FC
  loc_AB44B6: FLdRfVar var_D8
  loc_AB44B9: FLdRfVar var_C8
  loc_AB44BC: LitVarStr var_C4, "NumeLiqu"
  loc_AB44C1: PopAdLdVar
  loc_AB44C2: FLdRfVar var_B4
  loc_AB44C5: FLdPr Me
  loc_AB44C8: MemLdPr global_56
  loc_AB44CB:  = Me.Fields
  loc_AB44D0: FLdPr var_B4
  loc_AB44D3: from_stack_2 = Me.Item(from_stack_1)
  loc_AB44D8: FLdPr var_C8
  loc_AB44DB:  = Me.Value
  loc_AB44E0: FLdRfVar var_D8
  loc_AB44E3: FnCLngVar
  loc_AB44E5: LitI4 1
  loc_AB44EA: AddI4
  loc_AB44EB: CI2I4
  loc_AB44EC: FStI2 var_86
  loc_AB44EF: FFreeAd var_B4 = ""
  loc_AB44F6: FFree1Var var_D8 = ""
  loc_AB44F9: Branch loc_AB4501
  loc_AB44FC: LitI2_Byte 1
  loc_AB44FE: FStI2 var_86
  loc_AB4501: ExitProcCbHresult
End Function

Public Sub ActualizaLiquidacion(PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, ActuLita) 'A94F08
  'Data Table: 40C424
  loc_A94E84: ILdRf ActuLita
  loc_A94E87: FStStrCopy var_88
  loc_A94E8A: LitStr "UPDATE liquidacion SET ActuLiqu = '"
  loc_A94E8D: ILdRf var_88
  loc_A94E90: ConcatStr
  loc_A94E91: FStStrNoPop var_8C
  loc_A94E94: LitStr "' WHERE PeriLiqu = "
  loc_A94E97: ConcatStr
  loc_A94E98: FStStrNoPop var_90
  loc_A94E9B: FLdI2 PeriLiqu
  loc_A94E9E: CStrUI1
  loc_A94EA0: FStStrNoPop var_94
  loc_A94EA3: ConcatStr
  loc_A94EA4: FStStrNoPop var_98
  loc_A94EA7: LitStr " AND BimeLiqu = "
  loc_A94EAA: ConcatStr
  loc_A94EAB: FStStrNoPop var_9C
  loc_A94EAE: FLdUI1
  loc_A94EB2: CStrI2
  loc_A94EB4: FStStrNoPop var_A0
  loc_A94EB7: ConcatStr
  loc_A94EB8: FStStrNoPop var_A4
  loc_A94EBB: LitStr " AND CodiTili = "
  loc_A94EBE: ConcatStr
  loc_A94EBF: FStStrNoPop var_A8
  loc_A94EC2: FLdUI1
  loc_A94EC6: CStrI2
  loc_A94EC8: FStStrNoPop var_AC
  loc_A94ECB: ConcatStr
  loc_A94ECC: FStStrNoPop var_B0
  loc_A94ECF: LitStr " AND NumeLiqu = "
  loc_A94ED2: ConcatStr
  loc_A94ED3: FStStrNoPop var_B4
  loc_A94ED6: FLdI2 NumeLiqu
  loc_A94ED9: CStrUI1
  loc_A94EDB: FStStrNoPop var_B8
  loc_A94EDE: ConcatStr
  loc_A94EDF: FStStrNoPop var_BC
  loc_A94EE2: Call EjecutarRsCls(from_stack_1v)
  loc_A94EE7: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A94F04: ExitProcHresult
End Sub

Private Function Proc_195_35_9F21A8() '9F21A8
  'Data Table: 40C424
  loc_9F2184: LitStr "Primary"
  loc_9F2187: FLdPr Me
  loc_9F218A: LateIdLdVar var_94 DispID_4 0
  loc_9F2191: CastAdVar Me
  loc_9F2195: FStAdFunc var_98
  loc_9F2198: FLdPr var_98
  loc_9F21A0: FFree1Ad var_98
  loc_9F21A3: FFree1Var var_94 = ""
  loc_9F21A6: ExitProcHresult
End Function

Private Function Proc_195_36_9DF29C(arg_C) '9DF29C
  'Data Table: 40C424
  loc_9DF280: ILdI4 arg_C
  loc_9DF283: FStStrCopy var_88
  loc_9DF286: ILdRf var_88
  loc_9DF289: LitStr "Primary"
  loc_9DF28C: EqStr
  loc_9DF28E: BranchF loc_9DF29B
  loc_9DF291: FLdPr Me
  loc_9DF294: MemLdStr RsFrm
  loc_9DF297: IStAd
  loc_9DF29B: ExitProcHresult
End Function
