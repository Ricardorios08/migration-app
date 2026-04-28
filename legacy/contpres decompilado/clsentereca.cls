VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsentereca"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '409DEC
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '409DFB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '409E0A
  RsFrm = Value
End Sub

Public Sub MoveFirst() '96E49C
  'Data Table: 409C60
  loc_96E474: FLdRfVar var_88
  loc_96E477: FLdPr Me
  loc_96E47A: MemLdPr RsFrm
  loc_96E47D:  = Me.RecordCount
  loc_96E482: ILdRf var_88
  loc_96E485: LitI4 0
  loc_96E48A: GtI4
  loc_96E48B: BranchF loc_96E499
  loc_96E48E: FLdPr Me
  loc_96E491: MemLdPr RsFrm
  loc_96E494: Me.MoveFirst
  loc_96E499: ExitProcHresult
End Sub

Public Sub MoveLast() '96E444
  'Data Table: 409C60
  loc_96E41C: FLdRfVar var_88
  loc_96E41F: FLdPr Me
  loc_96E422: MemLdPr RsFrm
  loc_96E425:  = Me.RecordCount
  loc_96E42A: ILdRf var_88
  loc_96E42D: LitI4 0
  loc_96E432: GtI4
  loc_96E433: BranchF loc_96E441
  loc_96E436: FLdPr Me
  loc_96E439: MemLdPr RsFrm
  loc_96E43C: Me.MoveLast
  loc_96E441: ExitProcHresult
End Sub

Public Sub MoveNext() '994880
  'Data Table: 409C60
  loc_994820: FLdRfVar var_86
  loc_994823: FLdPr Me
  loc_994826: MemLdPr RsFrm
  loc_994829:  = Me.EOF
  loc_99482E: FLdI2 var_86
  loc_994831: NotI4
  loc_994832: BranchF loc_994840
  loc_994835: FLdPr Me
  loc_994838: MemLdPr RsFrm
  loc_99483B: Me.MoveNext
  loc_994840: FLdRfVar var_86
  loc_994843: FLdPr Me
  loc_994846: MemLdPr RsFrm
  loc_994849:  = Me.EOF
  loc_99484E: FLdI2 var_86
  loc_994851: FLdRfVar var_8C
  loc_994854: FLdPr Me
  loc_994857: MemLdPr RsFrm
  loc_99485A:  = Me.RecordCount
  loc_99485F: ILdRf var_8C
  loc_994862: LitI4 0
  loc_994867: GtI4
  loc_994868: AndI4
  loc_994869: BranchF loc_99487C
  loc_99486C: ImpAdCallFPR4 Beep()
  loc_994871: FLdPr Me
  loc_994874: MemLdPr RsFrm
  loc_994877: Me.MoveLast
  loc_99487C: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '96CDA0
  'Data Table: 409C60
  loc_96CD7C: FLdRfVar var_86
  loc_96CD7F: FLdPr Me
  loc_96CD82: MemLdPr RsFrm
  loc_96CD85:  = Me.EOF
  loc_96CD8A: FLdI2 var_86
  loc_96CD8D: NotI4
  loc_96CD8E: BranchF loc_96CD9C
  loc_96CD91: FLdPr Me
  loc_96CD94: MemLdPr RsFrm
  loc_96CD97: Me.MoveNext
  loc_96CD9C: ExitProcHresult
End Sub

Public Sub Move(iValor) '9485B0
  'Data Table: 409C60
  loc_94859C: LitVar_Missing var_94
  loc_94859F: PopAdLdVar
  loc_9485A0: ILdI2 iValor
  loc_9485A3: CI4UI1
  loc_9485A4: FLdPr Me
  loc_9485A7: MemLdPr RsFrm
  loc_9485AA: Me.Move from_stack_1, from_stack_2
  loc_9485AF: ExitProcHresult
End Sub

Public Sub MovePrevious() '9946D0
  'Data Table: 409C60
  loc_994670: FLdRfVar var_86
  loc_994673: FLdPr Me
  loc_994676: MemLdPr RsFrm
  loc_994679:  = Me.BOF
  loc_99467E: FLdI2 var_86
  loc_994681: NotI4
  loc_994682: BranchF loc_994690
  loc_994685: FLdPr Me
  loc_994688: MemLdPr RsFrm
  loc_99468B: Me.MovePrevious
  loc_994690: FLdRfVar var_86
  loc_994693: FLdPr Me
  loc_994696: MemLdPr RsFrm
  loc_994699:  = Me.BOF
  loc_99469E: FLdI2 var_86
  loc_9946A1: FLdRfVar var_8C
  loc_9946A4: FLdPr Me
  loc_9946A7: MemLdPr RsFrm
  loc_9946AA:  = Me.RecordCount
  loc_9946AF: ILdRf var_8C
  loc_9946B2: LitI4 0
  loc_9946B7: GtI4
  loc_9946B8: AndI4
  loc_9946B9: BranchF loc_9946CC
  loc_9946BC: ImpAdCallFPR4 Beep()
  loc_9946C1: FLdPr Me
  loc_9946C4: MemLdPr RsFrm
  loc_9946C7: Me.MoveFirst
  loc_9946CC: ExitProcHresult
End Sub

Public Property Get EOF() '9622A0
  'Data Table: 409C60
  loc_962284: FLdRfVar var_88
  loc_962287: FLdPr Me
  loc_96228A: MemLdPr RsFrm
  loc_96228D:  = Me.EOF
  loc_962292: FLdI2 var_88
  loc_962295: FStI2 var_86
  loc_962298: ExitProcCbHresult
  loc_96229E: MemStR8 global_-6139
End Sub

Public Property Get BOF() '9622EC
  'Data Table: 409C60
  loc_9622D0: FLdRfVar var_88
  loc_9622D3: FLdPr Me
  loc_9622D6: MemLdPr RsFrm
  loc_9622D9:  = Me.BOF
  loc_9622DE: FLdI2 var_88
  loc_9622E1: FStI2 var_86
  loc_9622E4: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '942584
  'Data Table: 409C60
  loc_942574: ILdI4 sOrden
  loc_942577: FLdPr Me
  loc_94257A: MemLdPr RsFrm
  loc_94257D: Me.Sort = from_stack_1
  loc_942582: ExitProcHresult
End Sub

Public Sub Find(sFind) '96A0F0
  'Data Table: 409C60
  loc_96A0D0: LitVar_Missing var_94
  loc_96A0D3: PopAdLdVar
  loc_96A0D4: LitI4 1
  loc_96A0D9: LitI4 0
  loc_96A0DE: ILdI4 sFind
  loc_96A0E1: FLdPr Me
  loc_96A0E4: MemLdPr RsFrm
  loc_96A0E7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96A0EC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '94867C
  'Data Table: 409C60
  loc_948668: ILdI4 sCriterio
  loc_94866B: CVarStr var_94
  loc_94866E: PopAdLdVar
  loc_94866F: FLdPr Me
  loc_948672: MemLdPr RsFrm
  loc_948675: Me.Filter = from_stack_1
  loc_94867A: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9624B4
  'Data Table: 409C60
  loc_962498: FLdRfVar var_8C
  loc_96249B: FLdPr Me
  loc_96249E: MemLdPr RsFrm
  loc_9624A1:  = Me.AbsolutePosition
  loc_9624A6: ILdRf var_8C
  loc_9624A9: FStR4 var_88
  loc_9624AC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '962500
  'Data Table: 409C60
  loc_9624E4: FLdRfVar var_8C
  loc_9624E7: FLdPr Me
  loc_9624EA: MemLdPr RsFrm
  loc_9624ED:  = Me.RecordCount
  loc_9624F2: ILdRf var_8C
  loc_9624F5: FStR4 var_88
  loc_9624F8: ExitProcCbHresult
End Sub

Public Sub AddNew(CodiEnre, DetaEnre) '9A4720
  'Data Table: 409C60
  loc_9A46B0: ILdRf DetaEnre
  loc_9A46B3: FStStrCopy var_88
  loc_9A46B6: FLdRfVar var_8C
  loc_9A46B9: FLdI2 CodiEnre
  loc_9A46BC: from_stack_2v = ValidaClave(from_stack_1v)
  loc_9A46C1: ILdRf var_8C
  loc_9A46C4: LitStr vbNullString
  loc_9A46C7: NeStr
  loc_9A46C9: FFree1Str var_8C
  loc_9A46CC: BranchF loc_9A46DF
  loc_9A46CF: LitI4 0
  loc_9A46D4: LitStr "El ENTE YA EXISTE. Reintente..."
  loc_9A46D7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A46DC: Branch loc_9A471D
  loc_9A46DF: LitStr "INSERT INTO infogov.entereca (CodiEnre, DetaEnre) VALUES ("
  loc_9A46E2: FLdI2 CodiEnre
  loc_9A46E5: CStrUI1
  loc_9A46E7: FStStrNoPop var_8C
  loc_9A46EA: ConcatStr
  loc_9A46EB: FStStrNoPop var_90
  loc_9A46EE: LitStr ",'"
  loc_9A46F1: ConcatStr
  loc_9A46F2: FStStrNoPop var_94
  loc_9A46F5: ILdRf var_88
  loc_9A46F8: ConcatStr
  loc_9A46F9: FStStrNoPop var_98
  loc_9A46FC: LitStr "');"
  loc_9A46FF: ConcatStr
  loc_9A4700: FStStrNoPop var_9C
  loc_9A4703: Call EjecutarRsCls(from_stack_1v)
  loc_9A4708: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_9A4715: FLdI2 CodiEnre
  loc_9A4718: Call Encontrar(from_stack_1v)
  loc_9A471D: ExitProcHresult
End Sub

Public Sub Modificar(CodiEnre, DetaEnre) '9A0D68
  'Data Table: 409C60
  loc_9A0D00: ILdRf DetaEnre
  loc_9A0D03: FStStrCopy var_88
  loc_9A0D06: FLdRfVar var_8C
  loc_9A0D09: FLdI2 CodiEnre
  loc_9A0D0C: from_stack_2v = ValidaClave(from_stack_1v)
  loc_9A0D11: ILdRf var_8C
  loc_9A0D14: LitStr vbNullString
  loc_9A0D17: EqStr
  loc_9A0D19: FFree1Str var_8C
  loc_9A0D1C: BranchF loc_9A0D2F
  loc_9A0D1F: LitI4 0
  loc_9A0D24: LitStr "El ENTE NO EXISTE. Reintente..."
  loc_9A0D27: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A0D2C: Branch loc_9A0D5C
  loc_9A0D2F: LitStr "UPDATE infogov.entereca SET DetaEnre = '"
  loc_9A0D32: ILdRf var_88
  loc_9A0D35: ConcatStr
  loc_9A0D36: FStStrNoPop var_8C
  loc_9A0D39: LitStr "' WHERE CodiEnre = "
  loc_9A0D3C: ConcatStr
  loc_9A0D3D: FStStrNoPop var_90
  loc_9A0D40: FLdI2 CodiEnre
  loc_9A0D43: CStrUI1
  loc_9A0D45: FStStrNoPop var_94
  loc_9A0D48: ConcatStr
  loc_9A0D49: FStStrNoPop var_98
  loc_9A0D4C: Call EjecutarRsCls(from_stack_1v)
  loc_9A0D51: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_9A0D5C: FLdI2 CodiEnre
  loc_9A0D5F: Call Encontrar(from_stack_1v)
  loc_9A0D64: ExitProcHresult
End Sub

Public Sub Encontrar(CodiEnre) '97DE88
  'Data Table: 409C60
  loc_97DE5C: Call Requery()
  loc_97DE61: LitStr "CodiEnre = '"
  loc_97DE64: FLdI2 CodiEnre
  loc_97DE67: CStrUI1
  loc_97DE69: FStStrNoPop var_88
  loc_97DE6C: ConcatStr
  loc_97DE6D: FStStrNoPop var_8C
  loc_97DE70: LitStr "'"
  loc_97DE73: ConcatStr
  loc_97DE74: PopTmpLdAdStr
  loc_97DE78: Call Find(from_stack_1v)
  loc_97DE7D: FFreeStr var_88 = "": var_8C = ""
  loc_97DE86: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9725DC
  'Data Table: 409C60
  loc_9725B4: ILdRf sSelect
  loc_9725B7: FStStrCopy var_88
  loc_9725BA: FLdPr Me
  loc_9725BD: MemLdRfVar from_stack_1.RsFrm
  loc_9725C0: ILdRf var_88
  loc_9725C3: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_9725C8: LitVarStr var_98, "Primary"
  loc_9725CD: PopAdLdVar
  loc_9725CE: FLdPr Me
  loc_9725D1: LateIdCall
  loc_9725D9: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '96275C
  'Data Table: 409C60
  loc_962744: ILdRf sSelect
  loc_962747: FStStrCopy var_88
  loc_96274A: FLdPr Me
  loc_96274D: MemLdRfVar from_stack_1.global_56
  loc_962750: ILdRf var_88
  loc_962753: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_962758: ExitProcHresult
End Sub

Public Sub Requery() '96ACD0
  'Data Table: 409C60
  loc_96ACB0: FLdPr Me
  loc_96ACB3: MemLdRfVar from_stack_1.RsFrm
  loc_96ACB6: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_96ACBB: LitVarStr var_94, "Primary"
  loc_96ACC0: PopAdLdVar
  loc_96ACC1: FLdPr Me
  loc_96ACC4: LateIdCall
  loc_96ACCC: ExitProcHresult
End Sub

Public Property Get DataSource() '971608
  'Data Table: 409C60
  loc_9715E4: ZeroRetVal
  loc_9715E6: FLdRfVar var_8C
  loc_9715E9: FLdPr Me
  loc_9715EC: MemLdPr RsFrm
  loc_9715EF:  = Me.DataSource
  loc_9715F4: ILdRf var_8C
  loc_9715F7: CastAd
  loc_9715FA: FStAdFunc var_88
  loc_9715FD: FFree1Ad var_8C
  loc_971600: ExitProcCbHresult
End Sub

Public Function ValidaClave(CodiEnre) '98D32C
  'Data Table: 409C60
  loc_98D2E8: ZeroRetVal
  loc_98D2EA: LitStr "SELECT CodiEnre FROM infogov.entereca WHERE CodiEnre = "
  loc_98D2ED: FLdI2 CodiEnre
  loc_98D2F0: CStrUI1
  loc_98D2F2: FStStrNoPop var_8C
  loc_98D2F5: ConcatStr
  loc_98D2F6: FStStrNoPop var_90
  loc_98D2F9: Call EjecutarRsCls(from_stack_1v)
  loc_98D2FE: FFreeStr var_8C = ""
  loc_98D305: FLdRfVar ValidaClave
  loc_98D308: FLdPr Me
  loc_98D30B: MemLdPr global_56
  loc_98D30E:  = Me.RecordCount
  loc_98D313: ILdRf ValidaClave
  loc_98D316: LitI4 0
  loc_98D31B: GtI4
  loc_98D31C: BranchF loc_98D325
  loc_98D31F: LitStr "EL ENTE YA EXISTE. Reintente..."
  loc_98D322: FStStrCopy var_88
  loc_98D325: ExitProcCbHresult
End Function

Public Function NuevoRegistro() '9A34C8
  'Data Table: 409C60
  loc_9A3450: LitStr "SELECT CodiEnre FROM infogov.entereca ORDER BY CodiEnre DESC LIMIT 1"
  loc_9A3453: Call EjecutarRsCls(from_stack_1v)
  loc_9A3458: FLdRfVar var_8C
  loc_9A345B: FLdPr Me
  loc_9A345E: MemLdPr global_56
  loc_9A3461:  = Me.RecordCount
  loc_9A3466: ILdRf var_8C
  loc_9A3469: LitI4 0
  loc_9A346E: GtI4
  loc_9A346F: BranchF loc_9A34B7
  loc_9A3472: FLdRfVar var_B4
  loc_9A3475: FLdRfVar var_A4
  loc_9A3478: LitVarStr var_A0, "CodiEnre"
  loc_9A347D: PopAdLdVar
  loc_9A347E: FLdRfVar var_90
  loc_9A3481: FLdPr Me
  loc_9A3484: MemLdPr global_56
  loc_9A3487:  = Me.Fields
  loc_9A348C: FLdPr var_90
  loc_9A348F: from_stack_2 = Me.Item(from_stack_1)
  loc_9A3494: FLdPr var_A4
  loc_9A3497:  = Me.Value
  loc_9A349C: FLdRfVar var_B4
  loc_9A349F: FnCLngVar
  loc_9A34A1: LitI4 1
  loc_9A34A6: AddI4
  loc_9A34A7: FStR4 var_88
  loc_9A34AA: FFreeAd var_90 = ""
  loc_9A34B1: FFree1Var var_B4 = ""
  loc_9A34B4: Branch loc_9A34BF
  loc_9A34B7: LitI4 1
  loc_9A34BC: FStR4 var_88
  loc_9A34BF: ExitProcCbHresult
End Function

Private Function Proc_302_25_97257C() '97257C
  'Data Table: 409C60
  loc_972558: LitStr "Primary"
  loc_97255B: FLdPr Me
  loc_97255E: LateIdLdVar var_94 DispID_4 0
  loc_972565: CastAdVar Me
  loc_972569: FStAdFunc var_98
  loc_97256C: FLdPr var_98
  loc_972574: FFree1Ad var_98
  loc_972577: FFree1Var var_94 = ""
  loc_97257A: ExitProcHresult
End Function

Private Function Proc_302_26_96A13C(arg_C) '96A13C
  'Data Table: 409C60
  loc_96A120: ILdI4 arg_C
  loc_96A123: FStStrCopy var_88
  loc_96A126: ILdRf var_88
  loc_96A129: LitStr "Primary"
  loc_96A12C: EqStr
  loc_96A12E: BranchF loc_96A13B
  loc_96A131: FLdPr Me
  loc_96A134: MemLdStr RsFrm
  loc_96A137: IStAd
  loc_96A13B: ExitProcHresult
End Function
