VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clslocalidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Public Sub MoveFirst() 'A0AC34
  'Data Table: 42F150
  loc_A0ABF8: FLdRfVar var_8C
  loc_A0ABFB: FLdRfVar var_88
  loc_A0ABFE: FLdPr Me
  loc_A0AC01: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A0AC06: FLdPr var_88
  loc_A0AC09:  = Me.RecordCount
  loc_A0AC0E: ILdRf var_8C
  loc_A0AC11: LitI4 0
  loc_A0AC16: GtI4
  loc_A0AC17: FFree1Ad var_88
  loc_A0AC1A: BranchF loc_A0AC33
  loc_A0AC1D: FLdRfVar var_88
  loc_A0AC20: FLdPr Me
  loc_A0AC23: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A0AC28: FLdPr var_88
  loc_A0AC2B: Me.MoveFirst
  loc_A0AC30: FFree1Ad var_88
  loc_A0AC33: ExitProcHresult
End Sub

Public Sub MoveLast() 'A0AA74
  'Data Table: 42F150
  loc_A0AA38: FLdRfVar var_8C
  loc_A0AA3B: FLdRfVar var_88
  loc_A0AA3E: FLdPr Me
  loc_A0AA41: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A0AA46: FLdPr var_88
  loc_A0AA49:  = Me.RecordCount
  loc_A0AA4E: ILdRf var_8C
  loc_A0AA51: LitI4 0
  loc_A0AA56: GtI4
  loc_A0AA57: FFree1Ad var_88
  loc_A0AA5A: BranchF loc_A0AA73
  loc_A0AA5D: FLdRfVar var_88
  loc_A0AA60: FLdPr Me
  loc_A0AA63: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A0AA68: FLdPr var_88
  loc_A0AA6B: Me.MoveLast
  loc_A0AA70: FFree1Ad var_88
  loc_A0AA73: ExitProcHresult
End Sub

Public Sub MoveNext() 'AA03CC
  'Data Table: 42F150
  loc_AA0310: FLdRfVar var_8A
  loc_AA0313: FLdRfVar var_88
  loc_AA0316: FLdPr Me
  loc_AA0319: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA031E: FLdPr var_88
  loc_AA0321:  = Me.EOF
  loc_AA0326: FLdI2 var_8A
  loc_AA0329: NotI4
  loc_AA032A: FLdRfVar var_94
  loc_AA032D: FLdRfVar var_90
  loc_AA0330: FLdPr Me
  loc_AA0333: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0338: FLdPr var_90
  loc_AA033B:  = Me.RecordCount
  loc_AA0340: ILdRf var_94
  loc_AA0343: LitI4 0
  loc_AA0348: GtI4
  loc_AA0349: AndI4
  loc_AA034A: FFreeAd var_88 = ""
  loc_AA0351: BranchF loc_AA036A
  loc_AA0354: FLdRfVar var_88
  loc_AA0357: FLdPr Me
  loc_AA035A: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA035F: FLdPr var_88
  loc_AA0362: Me.MoveNext
  loc_AA0367: FFree1Ad var_88
  loc_AA036A: FLdRfVar var_8A
  loc_AA036D: FLdRfVar var_88
  loc_AA0370: FLdPr Me
  loc_AA0373: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0378: FLdPr var_88
  loc_AA037B:  = Me.EOF
  loc_AA0380: FLdI2 var_8A
  loc_AA0383: FLdRfVar var_94
  loc_AA0386: FLdRfVar var_90
  loc_AA0389: FLdPr Me
  loc_AA038C: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0391: FLdPr var_90
  loc_AA0394:  = Me.RecordCount
  loc_AA0399: ILdRf var_94
  loc_AA039C: LitI4 0
  loc_AA03A1: GtI4
  loc_AA03A2: AndI4
  loc_AA03A3: FFreeAd var_88 = ""
  loc_AA03AA: BranchF loc_AA03C8
  loc_AA03AD: ImpAdCallFPR4 Beep()
  loc_AA03B2: FLdRfVar var_88
  loc_AA03B5: FLdPr Me
  loc_AA03B8: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA03BD: FLdPr var_88
  loc_AA03C0: Me.MoveLast
  loc_AA03C5: FFree1Ad var_88
  loc_AA03C8: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9D7FDC
  'Data Table: 42F150
  loc_9D7FC4: FLdRfVar var_88
  loc_9D7FC7: FLdPr Me
  loc_9D7FCA: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9D7FCF: FLdPr var_88
  loc_9D7FD2: Me.MoveNext
  loc_9D7FD7: FFree1Ad var_88
  loc_9D7FDA: ExitProcHresult
End Sub

Public Sub Move(iValor) '9E896C
  'Data Table: 42F150
  loc_9E894C: LitVar_Missing var_98
  loc_9E894F: PopAdLdVar
  loc_9E8950: ILdI2 iValor
  loc_9E8953: CI4UI1
  loc_9E8954: FLdRfVar var_88
  loc_9E8957: FLdPr Me
  loc_9E895A: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9E895F: FLdPr var_88
  loc_9E8962: Me.Move from_stack_1, from_stack_2
  loc_9E8967: FFree1Ad var_88
  loc_9E896A: ExitProcHresult
End Sub

Public Sub MovePrevious() 'AA04C0
  'Data Table: 42F150
  loc_AA0404: FLdRfVar var_8A
  loc_AA0407: FLdRfVar var_88
  loc_AA040A: FLdPr Me
  loc_AA040D: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0412: FLdPr var_88
  loc_AA0415:  = Me.BOF
  loc_AA041A: FLdI2 var_8A
  loc_AA041D: NotI4
  loc_AA041E: FLdRfVar var_94
  loc_AA0421: FLdRfVar var_90
  loc_AA0424: FLdPr Me
  loc_AA0427: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA042C: FLdPr var_90
  loc_AA042F:  = Me.RecordCount
  loc_AA0434: ILdRf var_94
  loc_AA0437: LitI4 0
  loc_AA043C: GtI4
  loc_AA043D: AndI4
  loc_AA043E: FFreeAd var_88 = ""
  loc_AA0445: BranchF loc_AA045E
  loc_AA0448: FLdRfVar var_88
  loc_AA044B: FLdPr Me
  loc_AA044E: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0453: FLdPr var_88
  loc_AA0456: Me.MovePrevious
  loc_AA045B: FFree1Ad var_88
  loc_AA045E: FLdRfVar var_8A
  loc_AA0461: FLdRfVar var_88
  loc_AA0464: FLdPr Me
  loc_AA0467: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA046C: FLdPr var_88
  loc_AA046F:  = Me.BOF
  loc_AA0474: FLdI2 var_8A
  loc_AA0477: FLdRfVar var_94
  loc_AA047A: FLdRfVar var_90
  loc_AA047D: FLdPr Me
  loc_AA0480: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA0485: FLdPr var_90
  loc_AA0488:  = Me.RecordCount
  loc_AA048D: ILdRf var_94
  loc_AA0490: LitI4 0
  loc_AA0495: GtI4
  loc_AA0496: AndI4
  loc_AA0497: FFreeAd var_88 = ""
  loc_AA049E: BranchF loc_AA04BC
  loc_AA04A1: ImpAdCallFPR4 Beep()
  loc_AA04A6: FLdRfVar var_88
  loc_AA04A9: FLdPr Me
  loc_AA04AC: from_stack_1v = clslocalidad.global_4387032Get()
  loc_AA04B1: FLdPr var_88
  loc_AA04B4: Me.MoveFirst
  loc_AA04B9: FFree1Ad var_88
  loc_AA04BC: ExitProcHresult
End Sub

Public Property Get EOF() '9F97E8
  'Data Table: 42F150
  loc_9F97C0: FLdRfVar var_8E
  loc_9F97C3: FLdRfVar var_8C
  loc_9F97C6: FLdPr Me
  loc_9F97C9: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9F97CE: FLdPr var_8C
  loc_9F97D1:  = Me.EOF
  loc_9F97D6: FLdI2 var_8E
  loc_9F97D9: FStI2 var_86
  loc_9F97DC: FFree1Ad var_8C
  loc_9F97DF: ExitProcCbHresult
End Sub

Public Property Get BOF() '9F9730
  'Data Table: 42F150
  loc_9F9708: FLdRfVar var_8E
  loc_9F970B: FLdRfVar var_8C
  loc_9F970E: FLdPr Me
  loc_9F9711: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9F9716: FLdPr var_8C
  loc_9F9719:  = Me.BOF
  loc_9F971E: FLdI2 var_8E
  loc_9F9721: FStI2 var_86
  loc_9F9724: FFree1Ad var_8C
  loc_9F9727: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '9E0FFC
  'Data Table: 42F150
  loc_9E0FE0: ILdI4 sOrden
  loc_9E0FE3: FLdRfVar var_88
  loc_9E0FE6: FLdPr Me
  loc_9E0FE9: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9E0FEE: FLdPr var_88
  loc_9E0FF1: Me.Sort = from_stack_1
  loc_9E0FF6: FFree1Ad var_88
  loc_9E0FF9: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9E88C4
  'Data Table: 42F150
  loc_9E88A4: ILdI4 sCriterio
  loc_9E88A7: CVarStr var_98
  loc_9E88AA: PopAdLdVar
  loc_9E88AB: FLdRfVar var_88
  loc_9E88AE: FLdPr Me
  loc_9E88B1: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9E88B6: FLdPr var_88
  loc_9E88B9: Me.Filter = from_stack_1
  loc_9E88BE: FFree1Ad var_88
  loc_9E88C1: ExitProcHresult
End Sub

Public Sub Find(sFind) '9FB16C
  'Data Table: 42F150
  loc_9FB144: LitVar_Missing var_98
  loc_9FB147: PopAdLdVar
  loc_9FB148: LitI4 1
  loc_9FB14D: LitI4 0
  loc_9FB152: ILdI4 sFind
  loc_9FB155: FLdRfVar var_88
  loc_9FB158: FLdPr Me
  loc_9FB15B: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9FB160: FLdPr var_88
  loc_9FB163: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9FB168: FFree1Ad var_88
  loc_9FB16B: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9FB1C8
  'Data Table: 42F150
  loc_9FB1A0: FLdRfVar var_90
  loc_9FB1A3: FLdRfVar var_8C
  loc_9FB1A6: FLdPr Me
  loc_9FB1A9: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9FB1AE: FLdPr var_8C
  loc_9FB1B1:  = Me.AbsolutePosition
  loc_9FB1B6: ILdRf var_90
  loc_9FB1B9: FStR4 var_88
  loc_9FB1BC: FFree1Ad var_8C
  loc_9FB1BF: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9F94AC
  'Data Table: 42F150
  loc_9F9484: FLdRfVar var_90
  loc_9F9487: FLdRfVar var_8C
  loc_9F948A: FLdPr Me
  loc_9F948D: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9F9492: FLdPr var_8C
  loc_9F9495:  = Me.RecordCount
  loc_9F949A: ILdRf var_90
  loc_9F949D: FStR4 var_88
  loc_9F94A0: FFree1Ad var_8C
  loc_9F94A3: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiLoca, DetaLoca, CodiPost) 'AA0960
  'Data Table: 42F150
  loc_AA08C8: ILdRf DetaLoca
  loc_AA08CB: FStStrCopy var_88
  loc_AA08CE: ILdRf CodiPost
  loc_AA08D1: FStStrCopy var_8C
  loc_AA08D4: FLdRfVar var_90
  loc_AA08D7: FLdI2 CodiLoca
  loc_AA08DA: from_stack_2v = ValidaClave(from_stack_1v)
  loc_AA08DF: ILdRf var_90
  loc_AA08E2: LitStr vbNullString
  loc_AA08E5: NeStr
  loc_AA08E7: FFree1Str var_90
  loc_AA08EA: BranchF loc_AA08F8
  loc_AA08ED: LitStr "El CODIGO de la LOCALIDAD YA EXISTE. Reintente..."
  loc_AA08F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA08F5: Branch loc_AA095F
  loc_AA08F8: LitStr "INSERT INTO infogov.localidad (CodiLoca, DetaLoca, CodiPost, KiloLoca, AltaUsua) VALUES ("
  loc_AA08FB: FLdI2 CodiLoca
  loc_AA08FE: CStrUI1
  loc_AA0900: FStStrNoPop var_90
  loc_AA0903: ConcatStr
  loc_AA0904: FStStrNoPop var_94
  loc_AA0907: LitStr ",'"
  loc_AA090A: ConcatStr
  loc_AA090B: FStStrNoPop var_98
  loc_AA090E: ILdRf var_88
  loc_AA0911: ConcatStr
  loc_AA0912: FStStrNoPop var_9C
  loc_AA0915: LitStr "','"
  loc_AA0918: ConcatStr
  loc_AA0919: FStStrNoPop var_A0
  loc_AA091C: ILdRf var_8C
  loc_AA091F: ConcatStr
  loc_AA0920: FStStrNoPop var_A4
  loc_AA0923: LitStr "',0,'"
  loc_AA0926: ConcatStr
  loc_AA0927: FStStrNoPop var_A8
  loc_AA092A: ImpAdLdI4 MemVar_D9302C
  loc_AA092D: ConcatStr
  loc_AA092E: FStStrNoPop var_AC
  loc_AA0931: LitStr "');"
  loc_AA0934: ConcatStr
  loc_AA0935: FStStrNoPop var_B0
  loc_AA0938: Call EjecutarRs2(from_stack_1v)
  loc_AA093D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AA0952: Call Requery()
  loc_AA0957: FLdI2 CodiLoca
  loc_AA095A: Call Encontrar(from_stack_1v)
  loc_AA095F: ExitProcHresult
End Sub

Public Sub Modificar(CodiLoca, DetaLoca, CodiPost) 'A93660
  'Data Table: 42F150
  loc_A935D0: ILdRf DetaLoca
  loc_A935D3: FStStrCopy var_88
  loc_A935D6: ILdRf CodiPost
  loc_A935D9: FStStrCopy var_8C
  loc_A935DC: FLdRfVar var_90
  loc_A935DF: FLdI2 CodiLoca
  loc_A935E2: from_stack_2v = ValidaClave(from_stack_1v)
  loc_A935E7: ILdRf var_90
  loc_A935EA: LitStr vbNullString
  loc_A935ED: EqStr
  loc_A935EF: FFree1Str var_90
  loc_A935F2: BranchF loc_A93600
  loc_A935F5: LitStr "El CODIGO de la LOCALIDAD NO EXISTE. Reintente..."
  loc_A935F8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A935FD: Branch loc_A93651
  loc_A93600: LitStr " UPDATE infogov.localidad SET DetaLoca = '"
  loc_A93603: ILdRf var_88
  loc_A93606: ConcatStr
  loc_A93607: FStStrNoPop var_90
  loc_A9360A: LitStr "' , CodiPost = '"
  loc_A9360D: ConcatStr
  loc_A9360E: FStStrNoPop var_94
  loc_A93611: ILdRf var_8C
  loc_A93614: ConcatStr
  loc_A93615: FStStrNoPop var_98
  loc_A93618: LitStr "', ModiUsua = '"
  loc_A9361B: ConcatStr
  loc_A9361C: FStStrNoPop var_9C
  loc_A9361F: ImpAdLdI4 MemVar_D9302C
  loc_A93622: ConcatStr
  loc_A93623: FStStrNoPop var_A0
  loc_A93626: LitStr "' WHERE CodiLoca= "
  loc_A93629: ConcatStr
  loc_A9362A: FStStrNoPop var_A4
  loc_A9362D: FLdI2 CodiLoca
  loc_A93630: CStrUI1
  loc_A93632: FStStrNoPop var_A8
  loc_A93635: ConcatStr
  loc_A93636: FStStrNoPop var_AC
  loc_A93639: Call EjecutarRs2(from_stack_1v)
  loc_A9363E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A93651: Call Requery()
  loc_A93656: FLdI2 CodiLoca
  loc_A93659: Call Encontrar(from_stack_1v)
  loc_A9365E: ExitProcHresult
End Sub

Public Sub Delete() 'A23FAC
  'Data Table: 42F150
  loc_A23F64: FLdRfVar var_8C
  loc_A23F67: FLdRfVar var_88
  loc_A23F6A: FLdPr Me
  loc_A23F6D: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A23F72: FLdPr var_88
  loc_A23F75:  = Me.RecordCount
  loc_A23F7A: ILdRf var_8C
  loc_A23F7D: LitI4 0
  loc_A23F82: GtI4
  loc_A23F83: FFree1Ad var_88
  loc_A23F86: BranchF loc_A23FA9
  loc_A23F89: LitI4 1
  loc_A23F8E: FLdRfVar var_88
  loc_A23F91: FLdPr Me
  loc_A23F94: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A23F99: FLdPr var_88
  loc_A23F9C: Me.Delete
  loc_A23FA1: FFree1Ad var_88
  loc_A23FA4: Call MoveNext()
  loc_A23FA9: ExitProcHresult
End Sub

Public Sub Requery() 'A01F8C
  'Data Table: 42F150
  loc_A01F5C: LitI4 -1
  loc_A01F61: FLdRfVar var_88
  loc_A01F64: FLdPr Me
  loc_A01F67: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A01F6C: FLdPr var_88
  loc_A01F6F: Me.Requery from_stack_1
  loc_A01F74: FFree1Ad var_88
  loc_A01F77: LitVarStr var_98, "Primary"
  loc_A01F7C: PopAdLdVar
  loc_A01F7D: FLdPr Me
  loc_A01F80: LateIdCall
  loc_A01F88: ExitProcHresult
End Sub

Public Sub Update() 'A23DB8
  'Data Table: 42F150
  loc_A23D74: FLdRfVar var_88
  loc_A23D77: FLdPr Me
  loc_A23D7A: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A23D7F: FLdZeroAd var_88
  loc_A23D82: FStAdFunc var_8C
  loc_A23D85: LitI4 3
  loc_A23D8A: FLdPr var_8C
  loc_A23D8D: Me.UpdateBatch
  loc_A23D92: FLdRfVar var_90
  loc_A23D95: FLdPr var_8C
  loc_A23D98:  = Me.EditMode
  loc_A23D9D: ILdRf var_90
  loc_A23DA0: LitI4 2
  loc_A23DA5: EqI4
  loc_A23DA6: BranchF loc_A23DAE
  loc_A23DA9: Call MoveLast()
  loc_A23DAE: LitNothing
  loc_A23DB0: FStAd var_8C 
  loc_A23DB4: ExitProcHresult
End Sub

Public Sub Cancel() 'A46AAC
  'Data Table: 42F150
  loc_A46A58: FLdRfVar var_88
  loc_A46A5B: FLdPr Me
  loc_A46A5E: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A46A63: FLdZeroAd var_88
  loc_A46A66: FStAdFunc var_8C
  loc_A46A69: FLdRfVar var_90
  loc_A46A6C: FLdPr var_8C
  loc_A46A6F:  = Me.RecordCount
  loc_A46A74: ILdRf var_90
  loc_A46A77: LitI4 0
  loc_A46A7C: GtI4
  loc_A46A7D: BranchF loc_A46AA4
  loc_A46A80: FLdPr var_8C
  loc_A46A83: Me.CancelUpdate
  loc_A46A88: FLdRfVar var_90
  loc_A46A8B: FLdPr var_8C
  loc_A46A8E:  = Me.EditMode
  loc_A46A93: ILdRf var_90
  loc_A46A96: LitI4 2
  loc_A46A9B: EqI4
  loc_A46A9C: BranchF loc_A46AA4
  loc_A46A9F: Call MoveFirst()
  loc_A46AA4: LitNothing
  loc_A46AA6: FStAd var_8C 
  loc_A46AAA: ExitProcHresult
End Sub

Public Property Get EditingRecord() '9FD054
  'Data Table: 42F150
  loc_9FD028: FLdRfVar var_90
  loc_9FD02B: FLdRfVar var_8C
  loc_9FD02E: FLdPr Me
  loc_9FD031: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9FD036: FLdPr var_8C
  loc_9FD039:  = Me.EditMode
  loc_9FD03E: ILdRf var_90
  loc_9FD041: LitI4 0
  loc_9FD046: NeI4
  loc_9FD047: FStI2 var_86
  loc_9FD04A: FFree1Ad var_8C
  loc_9FD04D: ExitProcCbHresult
End Sub

Public Sub RedefineRS(sSelect) 'A6EF30
  'Data Table: 42F150
  loc_A6EEBC: ILdRf sSelect
  loc_A6EEBF: FStStrCopy var_88
  loc_A6EEC2: LitNothing
  loc_A6EEC4: CastAd
  loc_A6EEC7: FStAdFuncNoPop
  loc_A6EECA: FLdPr Me
  loc_A6EECD: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_A6EED2: FFree1Ad var_8C
  loc_A6EED5: New Recordset
  loc_A6EED9: FStAdFuncNoPop
  loc_A6EEDC: FLdPr Me
  loc_A6EEDF: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_A6EEE4: FFree1Ad var_8C
  loc_A6EEE7: LitI4 -1
  loc_A6EEEC: LitI4 3
  loc_A6EEF1: LitI4 3
  loc_A6EEF6: ImpAdLdI4 MemVar_D9301C
  loc_A6EEF9: CVarAd
  loc_A6EEFD: PopAdLdVar
  loc_A6EEFE: ILdRf var_88
  loc_A6EF01: CVarStr var_9C
  loc_A6EF04: PopAdLdVar
  loc_A6EF05: FLdRfVar var_8C
  loc_A6EF08: FLdPr Me
  loc_A6EF0B: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A6EF10: FLdPr var_8C
  loc_A6EF13: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A6EF18: FFree1Ad var_8C
  loc_A6EF1B: LitVarStr var_9C, "Primary"
  loc_A6EF20: PopAdLdVar
  loc_A6EF21: FLdPr Me
  loc_A6EF24: LateIdCall
  loc_A6EF2C: ExitProcHresult
End Sub

Public Sub EjecutarRs2(sSelect) 'A5A290
  'Data Table: 42F150
  loc_A5A230: ILdRf sSelect
  loc_A5A233: FStStrCopy var_88
  loc_A5A236: LitNothing
  loc_A5A238: CastAd
  loc_A5A23B: FStAdFuncNoPop
  loc_A5A23E: FLdPr Me
  loc_A5A241: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_A5A246: FFree1Ad var_8C
  loc_A5A249: New Recordset
  loc_A5A24D: FStAdFuncNoPop
  loc_A5A250: FLdPr Me
  loc_A5A253: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_A5A258: FFree1Ad var_8C
  loc_A5A25B: LitI4 -1
  loc_A5A260: LitI4 3
  loc_A5A265: LitI4 3
  loc_A5A26A: ImpAdLdI4 MemVar_D9301C
  loc_A5A26D: CVarAd
  loc_A5A271: PopAdLdVar
  loc_A5A272: ILdRf var_88
  loc_A5A275: CVarStr var_9C
  loc_A5A278: PopAdLdVar
  loc_A5A279: FLdRfVar var_8C
  loc_A5A27C: FLdPr Me
  loc_A5A27F: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A5A284: FLdPr var_8C
  loc_A5A287: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_A5A28C: FFree1Ad var_8C
  loc_A5A28F: ExitProcHresult
End Sub

Public Sub Encontrar(CodiLoca) '9EBA3C
  'Data Table: 42F150
  loc_9EBA1C: LitStr "CodiLoca = "
  loc_9EBA1F: FLdI2 CodiLoca
  loc_9EBA22: CStrUI1
  loc_9EBA24: FStStrNoPop var_88
  loc_9EBA27: ConcatStr
  loc_9EBA28: PopTmpLdAdStr
  loc_9EBA2C: Call Find(from_stack_1v)
  loc_9EBA31: FFreeStr var_88 = ""
  loc_9EBA38: ExitProcHresult
End Sub

Public Property Get DataSource() 'A0896C
  'Data Table: 42F150
  loc_A0893C: ZeroRetVal
  loc_A0893E: FLdRfVar var_90
  loc_A08941: FLdRfVar var_8C
  loc_A08944: FLdPr Me
  loc_A08947: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A0894C: FLdPr var_8C
  loc_A0894F:  = Me.DataSource
  loc_A08954: ILdRf var_90
  loc_A08957: CastAd
  loc_A0895A: FStAdFunc var_88
  loc_A0895D: FFreeAd var_8C = ""
  loc_A08964: ExitProcCbHresult
End Sub

Public Property Get EditMode() '9F795C
  'Data Table: 42F150
  loc_9F7934: FLdRfVar var_90
  loc_9F7937: FLdRfVar var_8C
  loc_9F793A: FLdPr Me
  loc_9F793D: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9F7942: FLdPr var_8C
  loc_9F7945:  = Me.EditMode
  loc_9F794A: ILdRf var_90
  loc_9F794D: FStR4 var_88
  loc_9F7950: FFree1Ad var_8C
  loc_9F7953: ExitProcCbHresult
End Sub

Public Property Get CodiLoca() 'A4BCAC
  'Data Table: 42F150
  loc_A4BC60: FLdRfVar var_B4
  loc_A4BC63: FLdRfVar var_A4
  loc_A4BC66: LitVarStr var_A0, "CodiLoca"
  loc_A4BC6B: PopAdLdVar
  loc_A4BC6C: FLdRfVar var_90
  loc_A4BC6F: FLdRfVar var_8C
  loc_A4BC72: FLdPr Me
  loc_A4BC75: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A4BC7A: FLdPr var_8C
  loc_A4BC7D:  = Me.Fields
  loc_A4BC82: FLdPr var_90
  loc_A4BC85: from_stack_2 = Me.Item(from_stack_1)
  loc_A4BC8A: FLdPr var_A4
  loc_A4BC8D:  = Me.Value
  loc_A4BC92: FLdRfVar var_B4
  loc_A4BC95: CI2Var
  loc_A4BC96: FStI2 var_86
  loc_A4BC99: FFreeAd var_8C = "": var_90 = ""
  loc_A4BCA2: FFree1Var var_B4 = ""
  loc_A4BCA5: ExitProcCbHresult
End Sub

Public Property Let CodiLoca(vDato) '9EBA98
  'Data Table: 42F150
  loc_9EBA74: FLdI2 vDato
  loc_9EBA77: CVarI2 var_A8
  loc_9EBA7A: PopAdLdVar
  loc_9EBA7B: LitVarStr var_98, "CodiLoca"
  loc_9EBA80: PopAdLdVar
  loc_9EBA81: FLdRfVar var_88
  loc_9EBA84: FLdPr Me
  loc_9EBA87: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9EBA8C: FLdPr var_88
  loc_9EBA8F: Me.Collect = from_stack_1
  loc_9EBA94: FFree1Ad var_88
  loc_9EBA97: ExitProcHresult
End Sub

Public Property Get DetaLoca() 'A58CD0
  'Data Table: 42F150
  loc_A58C80: ZeroRetVal
  loc_A58C82: FLdRfVar var_B4
  loc_A58C85: FLdRfVar var_A4
  loc_A58C88: LitVarStr var_A0, "DetaLoca"
  loc_A58C8D: PopAdLdVar
  loc_A58C8E: FLdRfVar var_90
  loc_A58C91: FLdRfVar var_8C
  loc_A58C94: FLdPr Me
  loc_A58C97: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A58C9C: FLdPr var_8C
  loc_A58C9F:  = Me.Fields
  loc_A58CA4: FLdPr var_90
  loc_A58CA7: from_stack_2 = Me.Item(from_stack_1)
  loc_A58CAC: FLdPr var_A4
  loc_A58CAF:  = Me.Value
  loc_A58CB4: FLdRfVar var_B4
  loc_A58CB7: CStrVarTmp
  loc_A58CB8: FStStr var_88
  loc_A58CBB: FFreeAd var_8C = "": var_90 = ""
  loc_A58CC4: FFree1Var var_B4 = ""
  loc_A58CC7: ExitProcCbHresult
End Sub

Public Property Let DetaLoca(vDato) 'A04F30
  'Data Table: 42F150
  loc_A04F04: ILdRf vDato
  loc_A04F07: FStStrCopy var_88
  loc_A04F0A: ILdRf var_88
  loc_A04F0D: CVarStr var_AC
  loc_A04F10: PopAdLdVar
  loc_A04F11: LitVarStr var_9C, "DetaLoca"
  loc_A04F16: PopAdLdVar
  loc_A04F17: FLdRfVar var_8C
  loc_A04F1A: FLdPr Me
  loc_A04F1D: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A04F22: FLdPr var_8C
  loc_A04F25: Me.Collect = from_stack_1
  loc_A04F2A: FFree1Ad var_8C
  loc_A04F2D: ExitProcHresult
End Sub

Public Property Get CodiPost() 'A58C3C
  'Data Table: 42F150
  loc_A58BEC: ZeroRetVal
  loc_A58BEE: FLdRfVar var_B4
  loc_A58BF1: FLdRfVar var_A4
  loc_A58BF4: LitVarStr var_A0, "CodiPost"
  loc_A58BF9: PopAdLdVar
  loc_A58BFA: FLdRfVar var_90
  loc_A58BFD: FLdRfVar var_8C
  loc_A58C00: FLdPr Me
  loc_A58C03: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A58C08: FLdPr var_8C
  loc_A58C0B:  = Me.Fields
  loc_A58C10: FLdPr var_90
  loc_A58C13: from_stack_2 = Me.Item(from_stack_1)
  loc_A58C18: FLdPr var_A4
  loc_A58C1B:  = Me.Value
  loc_A58C20: FLdRfVar var_B4
  loc_A58C23: CStrVarTmp
  loc_A58C24: FStStr var_88
  loc_A58C27: FFreeAd var_8C = "": var_90 = ""
  loc_A58C30: FFree1Var var_B4 = ""
  loc_A58C33: ExitProcCbHresult
End Sub

Public Property Let CodiPost(vDato) 'A02FF0
  'Data Table: 42F150
  loc_A02FC4: ILdRf vDato
  loc_A02FC7: FStStrCopy var_88
  loc_A02FCA: ILdRf var_88
  loc_A02FCD: CVarStr var_AC
  loc_A02FD0: PopAdLdVar
  loc_A02FD1: LitVarStr var_9C, "CodiPost"
  loc_A02FD6: PopAdLdVar
  loc_A02FD7: FLdRfVar var_8C
  loc_A02FDA: FLdPr Me
  loc_A02FDD: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A02FE2: FLdPr var_8C
  loc_A02FE5: Me.Collect = from_stack_1
  loc_A02FEA: FFree1Ad var_8C
  loc_A02FED: ExitProcHresult
End Sub

Public Function ValidaClave(CodiLoca) 'A51F40
  'Data Table: 42F150
  loc_A51EF0: ZeroRetVal
  loc_A51EF2: LitStr "SELECT CodiLoca FROM infogov.localidad WHERE CodiLoca = "
  loc_A51EF5: FLdI2 CodiLoca
  loc_A51EF8: CStrUI1
  loc_A51EFA: FStStrNoPop var_8C
  loc_A51EFD: ConcatStr
  loc_A51EFE: FStStrNoPop var_90
  loc_A51F01: Call EjecutarRs2(from_stack_1v)
  loc_A51F06: FFreeStr var_8C = ""
  loc_A51F0D: FLdRfVar var_98
  loc_A51F10: FLdRfVar ValidaClave
  loc_A51F13: FLdPr Me
  loc_A51F16: from_stack_1v = clslocalidad.global_4387032Get()
  loc_A51F1B: FLdPr ValidaClave
  loc_A51F1E:  = Me.RecordCount
  loc_A51F23: ILdRf var_98
  loc_A51F26: LitI4 0
  loc_A51F2B: GtI4
  loc_A51F2C: FFree1Ad ValidaClave
  loc_A51F2F: BranchF loc_A51F38
  loc_A51F32: LitStr "El CODIGO DE LOCALIDAD YA EXISTE. Reintente..."
  loc_A51F35: FStStrCopy var_88
  loc_A51F38: ExitProcCbHresult
End Function

Public Function ValidaEliminarInmueble(CodiLoca) '9B1B74
  'Data Table: 42F150
  loc_9B1B6C: ZeroRetVal
  loc_9B1B6E: ExitProcCbHresult
End Function

Public Function ValidaEliminarComercio(CodiLoca) '9B0E90
  'Data Table: 42F150
  loc_9B0E88: ZeroRetVal
  loc_9B0E8A: ExitProcCbHresult
End Function

Public Function ValidaEliminarPersonas(CodiLoca) '9B1700
  'Data Table: 42F150
  loc_9B16F8: ZeroRetVal
  loc_9B16FA: ExitProcCbHresult
End Function

Public Function NuevoRegistro() 'ABA730
  'Data Table: 42F150
  loc_ABA640: New Recordset
  loc_ABA644: FStAdFuncNoPop
  loc_ABA647: FLdPr Me
  loc_ABA64A: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_ABA64F: FFree1Ad var_8C
  loc_ABA652: LitI4 -1
  loc_ABA657: LitI4 3
  loc_ABA65C: LitI4 3
  loc_ABA661: ImpAdLdI4 MemVar_D9301C
  loc_ABA664: CVarAd
  loc_ABA668: PopAdLdVar
  loc_ABA669: LitVarStr var_9C, "SELECT CodiLoca FROM infogov.localidad ORDER BY CodiLoca DESC "
  loc_ABA66E: PopAdLdVar
  loc_ABA66F: FLdRfVar var_8C
  loc_ABA672: FLdPr Me
  loc_ABA675: from_stack_1v = clslocalidad.global_4387032Get()
  loc_ABA67A: FLdPr var_8C
  loc_ABA67D: Me.Open from_stack_1, from_stack_2, from_stack_3
  loc_ABA682: FFree1Ad var_8C
  loc_ABA685: FLdRfVar var_B0
  loc_ABA688: FLdRfVar var_8C
  loc_ABA68B: FLdPr Me
  loc_ABA68E: from_stack_1v = clslocalidad.global_4387032Get()
  loc_ABA693: FLdPr var_8C
  loc_ABA696:  = Me.RecordCount
  loc_ABA69B: ILdRf var_B0
  loc_ABA69E: LitI4 0
  loc_ABA6A3: GtI4
  loc_ABA6A4: FFree1Ad var_8C
  loc_ABA6A7: BranchF loc_ABA6F9
  loc_ABA6AA: FLdRfVar var_C8
  loc_ABA6AD: FLdRfVar var_B8
  loc_ABA6B0: LitVarStr var_9C, "CodiLoca"
  loc_ABA6B5: PopAdLdVar
  loc_ABA6B6: FLdRfVar var_B4
  loc_ABA6B9: FLdRfVar var_8C
  loc_ABA6BC: FLdPr Me
  loc_ABA6BF: from_stack_1v = clslocalidad.global_4387032Get()
  loc_ABA6C4: FLdPr var_8C
  loc_ABA6C7:  = Me.Fields
  loc_ABA6CC: FLdPr var_B4
  loc_ABA6CF: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA6D4: FLdPr var_B8
  loc_ABA6D7:  = Me.Value
  loc_ABA6DC: FLdRfVar var_C8
  loc_ABA6DF: FnCLngVar
  loc_ABA6E1: LitI4 1
  loc_ABA6E6: AddI4
  loc_ABA6E7: FStR4 var_88
  loc_ABA6EA: FFreeAd var_8C = "": var_B4 = ""
  loc_ABA6F3: FFree1Var var_C8 = ""
  loc_ABA6F6: Branch loc_ABA701
  loc_ABA6F9: LitI4 1
  loc_ABA6FE: FStR4 var_88
  loc_ABA701: FLdRfVar var_8C
  loc_ABA704: FLdPr Me
  loc_ABA707: from_stack_1v = clslocalidad.global_4387032Get()
  loc_ABA70C: FLdPr var_8C
  loc_ABA70F: Me.Close
  loc_ABA714: FFree1Ad var_8C
  loc_ABA717: LitNothing
  loc_ABA719: CastAd
  loc_ABA71C: FStAdFuncNoPop
  loc_ABA71F: FLdPr Me
  loc_ABA722: Call clslocalidad.global_4387032Set(from_stack_1v)
  loc_ABA727: FFree1Ad var_8C
  loc_ABA72A: ExitProcCbHresult
End Function

Public Sub adoPrimaryRS_MoveComplete(adReason, pError, adStatus, pRecordset) '9E8914
  'Data Table: 42F150
  loc_9E88F8: ILdRf pError
  loc_9E88FB: FStAd var_88 
  loc_9E88FF: ILdRf pRecordset
  loc_9E8902: FStAd var_8C 
  loc_9E8906: FLdPr Me
  loc_9E8909: RaiseEvent
  loc_9E8911: ExitProcHresult
End Sub

Public Sub adoPrimaryRS_WillChangeRecord(adReason, cRecords, adStatus, pRecordset) 'A9FE18
  'Data Table: 42F150
  loc_A9FD58: ILdRf pRecordset
  loc_A9FD5B: FStAd var_88 
  loc_A9FD5F: ILdRf adReason
  loc_A9FD62: FStR4 var_90
  loc_A9FD65: ILdRf var_90
  loc_A9FD68: LitI4 1
  loc_A9FD6D: EqI4
  loc_A9FD6E: BranchF loc_A9FD74
  loc_A9FD71: Branch loc_A9FE07
  loc_A9FD74: ILdRf var_90
  loc_A9FD77: LitI4 9
  loc_A9FD7C: EqI4
  loc_A9FD7D: BranchF loc_A9FD83
  loc_A9FD80: Branch loc_A9FE07
  loc_A9FD83: ILdRf var_90
  loc_A9FD86: LitI4 2
  loc_A9FD8B: EqI4
  loc_A9FD8C: BranchF loc_A9FD92
  loc_A9FD8F: Branch loc_A9FE07
  loc_A9FD92: ILdRf var_90
  loc_A9FD95: LitI4 &HB
  loc_A9FD9A: EqI4
  loc_A9FD9B: BranchF loc_A9FDA1
  loc_A9FD9E: Branch loc_A9FE07
  loc_A9FDA1: ILdRf var_90
  loc_A9FDA4: LitI4 &HA
  loc_A9FDA9: EqI4
  loc_A9FDAA: BranchF loc_A9FDB0
  loc_A9FDAD: Branch loc_A9FE07
  loc_A9FDB0: ILdRf var_90
  loc_A9FDB3: LitI4 7
  loc_A9FDB8: EqI4
  loc_A9FDB9: BranchF loc_A9FDBF
  loc_A9FDBC: Branch loc_A9FE07
  loc_A9FDBF: ILdRf var_90
  loc_A9FDC2: LitI4 8
  loc_A9FDC7: EqI4
  loc_A9FDC8: BranchF loc_A9FDCE
  loc_A9FDCB: Branch loc_A9FE07
  loc_A9FDCE: ILdRf var_90
  loc_A9FDD1: LitI4 5
  loc_A9FDD6: EqI4
  loc_A9FDD7: BranchF loc_A9FDDD
  loc_A9FDDA: Branch loc_A9FE07
  loc_A9FDDD: ILdRf var_90
  loc_A9FDE0: LitI4 6
  loc_A9FDE5: EqI4
  loc_A9FDE6: BranchF loc_A9FDEC
  loc_A9FDE9: Branch loc_A9FE07
  loc_A9FDEC: ILdRf var_90
  loc_A9FDEF: LitI4 4
  loc_A9FDF4: EqI4
  loc_A9FDF5: BranchF loc_A9FDFB
  loc_A9FDF8: Branch loc_A9FE07
  loc_A9FDFB: ILdRf var_90
  loc_A9FDFE: LitI4 3
  loc_A9FE03: EqI4
  loc_A9FE04: BranchF loc_A9FE07
  loc_A9FE07: FLdI2 var_8A
  loc_A9FE0A: BranchF loc_A9FE15
  loc_A9FE0D: LitI4 4
  loc_A9FE12: IStI4 adStatus
  loc_A9FE15: ExitProcHresult
End Sub

Private Function Proc_250_38_9FAE88() '9FAE88
  'Data Table: 42F150
  loc_9FAE64: LitStr "Primary"
  loc_9FAE67: FLdPr Me
  loc_9FAE6A: LateIdLdVar var_94 DispID_4 0
  loc_9FAE71: CastAdVar Me
  loc_9FAE75: FStAdFunc var_98
  loc_9FAE78: FLdPr var_98
  loc_9FAE80: FFree1Ad var_98
  loc_9FAE83: FFree1Var var_94 = ""
  loc_9FAE86: ExitProcHresult
End Function

Private Function Proc_250_39_9F8D1C(arg_C) '9F8D1C
  'Data Table: 42F150
  loc_9F8CF8: ILdI4 arg_C
  loc_9F8CFB: FStStrCopy var_88
  loc_9F8CFE: ILdRf var_88
  loc_9F8D01: LitStr "Primary"
  loc_9F8D04: EqStr
  loc_9F8D06: BranchF loc_9F8D1B
  loc_9F8D09: FLdRfVar var_8C
  loc_9F8D0C: FLdPr Me
  loc_9F8D0F: from_stack_1v = clslocalidad.global_4387032Get()
  loc_9F8D14: FLdZeroAd var_8C
  loc_9F8D17: IStAdFunc
  loc_9F8D1B: ExitProcHresult
End Function

Public Function global_4387032Get() '42F514
  global_4387032Get = global_4387032
End Function

Public Sub global_4387032Put(Value) '42F52E
  global_4387032 = Value
End Sub

Public Sub global_4387032Set(Value) '42F548
  global_4387032 = Value
End Sub

Public Function global_4387032Get() '42F562
  global_4387032Get = global_4387032
End Function

Public Sub global_4387032Put(Value) '42F57C
  global_4387032 = Value
End Sub

Public Sub global_4387032Set(Value) '42F596
  global_4387032 = Value
End Sub

Public Function global_4387032Get() '42F5B0
  global_4387032Get = global_4387032
End Function

Public Sub global_4387032Put(Value) '42F5CA
  global_4387032 = Value
End Sub

Public Sub global_4387032Set(Value) '42F5E4
  global_4387032 = Value
End Sub
