VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscUbicacionFisica
  Caption = "Buscar Ubicación Física por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscUbicacionFisica.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 13830
  ClientHeight = 5925
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscUbicacionFisica.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 13575
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscUbicacionFisica.frx":092A
  End
End

Attribute VB_Name = "bscUbicacionFisica"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9D473C
  'Data Table: 41D194
  loc_9D4644: LitVarStr var_94, vbNullString
  loc_9D4649: PopAdLdVar
  loc_9D464A: FLdPr Me
  loc_9D464D: VCallAd Control_ID_FiltroMsk
  loc_9D4650: FStAdFunc var_A8
  loc_9D4653: FLdPr var_A8
  loc_9D4656: LateIdSt
  loc_9D465B: FFree1Ad var_A8
  loc_9D465E: FLdRfVar var_AA
  loc_9D4661: FLdPr Me
  loc_9D4664: VCallAd Control_ID_FiltroCbo
  loc_9D4667: FStAdFunc var_A8
  loc_9D466A: FLdPr var_A8
  loc_9D466D:  = Me.ListIndex
  loc_9D4672: FLdI2 var_AA
  loc_9D4675: FStI2 var_AC
  loc_9D4678: FFree1Ad var_A8
  loc_9D467B: FLdI2 var_AC
  loc_9D467E: LitI2_Byte 0
  loc_9D4680: EqI2
  loc_9D4681: BranchF loc_9D46BB
  loc_9D4684: LitVarStr var_94, "#####"
  loc_9D4689: PopAdLdVar
  loc_9D468A: FLdPr Me
  loc_9D468D: VCallAd Control_ID_FiltroMsk
  loc_9D4690: FStAdFunc var_A8
  loc_9D4693: FLdPr var_A8
  loc_9D4696: LateIdSt
  loc_9D469B: FFree1Ad var_A8
  loc_9D469E: LitStr "IdUbfi"
  loc_9D46A1: FStStrCopy var_B0
  loc_9D46A4: FLdRfVar var_B0
  loc_9D46A7: FLdPr Me
  loc_9D46AA: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D46AD: NewIfNullPr clsbase
  loc_9D46B0: Call clsbase.Sort(from_stack_1v)
  loc_9D46B5: FFree1Str var_B0
  loc_9D46B8: Branch loc_9D4738
  loc_9D46BB: FLdI2 var_AC
  loc_9D46BE: LitI2_Byte 1
  loc_9D46C0: EqI2
  loc_9D46C1: BranchF loc_9D46FB
  loc_9D46C4: LitVarStr var_94, vbNullString
  loc_9D46C9: PopAdLdVar
  loc_9D46CA: FLdPr Me
  loc_9D46CD: VCallAd Control_ID_FiltroMsk
  loc_9D46D0: FStAdFunc var_A8
  loc_9D46D3: FLdPr var_A8
  loc_9D46D6: LateIdSt
  loc_9D46DB: FFree1Ad var_A8
  loc_9D46DE: LitStr "DetaUbfi"
  loc_9D46E1: FStStrCopy var_B0
  loc_9D46E4: FLdRfVar var_B0
  loc_9D46E7: FLdPr Me
  loc_9D46EA: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D46ED: NewIfNullPr clsbase
  loc_9D46F0: Call clsbase.Sort(from_stack_1v)
  loc_9D46F5: FFree1Str var_B0
  loc_9D46F8: Branch loc_9D4738
  loc_9D46FB: FLdI2 var_AC
  loc_9D46FE: LitI2_Byte 2
  loc_9D4700: EqI2
  loc_9D4701: BranchF loc_9D4738
  loc_9D4704: LitVarStr var_94, vbNullString
  loc_9D4709: PopAdLdVar
  loc_9D470A: FLdPr Me
  loc_9D470D: VCallAd Control_ID_FiltroMsk
  loc_9D4710: FStAdFunc var_A8
  loc_9D4713: FLdPr var_A8
  loc_9D4716: LateIdSt
  loc_9D471B: FFree1Ad var_A8
  loc_9D471E: LitStr "DetaPers"
  loc_9D4721: FStStrCopy var_B0
  loc_9D4724: FLdRfVar var_B0
  loc_9D4727: FLdPr Me
  loc_9D472A: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D472D: NewIfNullPr clsbase
  loc_9D4730: Call clsbase.Sort(from_stack_1v)
  loc_9D4735: FFree1Str var_B0
  loc_9D4738: ExitProcHresult
  loc_9D4739: ExitProcCy
  loc_9D473A: PutRecFxStr3
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952620
  'Data Table: 41D194
  loc_95260C: FLdPr Me
  loc_95260F: VCallAd Control_ID_FiltroMsk
  loc_952612: CVarAd
  loc_952616: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95261B: FFree1Var var_94 = ""
  loc_95261E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A66238
  'Data Table: 41D194
  loc_A65EF0: ILdRf Me
  loc_A65EF3: CastAd
  loc_A65EF6: FStAdFunc var_88
  loc_A65EF9: FLdRfVar var_88
  loc_A65EFC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A65F01: FFree1Ad var_88
  loc_A65F04: FLdPr Me
  loc_A65F07: VCallAd Control_ID_FiltroMsk
  loc_A65F0A: FStAdFunc var_88
  loc_A65F0D: FLdPr var_88
  loc_A65F10: LateIdLdVar var_98 DispID_22 0
  loc_A65F17: CStrVarTmp
  loc_A65F18: FStStrNoPop var_9C
  loc_A65F1B: ImpAdCallI2 Trim$()
  loc_A65F20: FStStrNoPop var_A0
  loc_A65F23: LitStr vbNullString
  loc_A65F26: NeStr
  loc_A65F28: FFreeStr var_9C = ""
  loc_A65F2F: FFree1Ad var_88
  loc_A65F32: FFree1Var var_98 = ""
  loc_A65F35: BranchF loc_A66112
  loc_A65F38: FLdRfVar var_A2
  loc_A65F3B: FLdPr Me
  loc_A65F3E: VCallAd Control_ID_FiltroCbo
  loc_A65F41: FStAdFunc var_88
  loc_A65F44: FLdPr var_88
  loc_A65F47:  = Me.ListIndex
  loc_A65F4C: FLdI2 var_A2
  loc_A65F4F: LitI2_Byte 0
  loc_A65F51: EqI2
  loc_A65F52: FFree1Ad var_88
  loc_A65F55: BranchF loc_A65FD0
  loc_A65F58: LitStr "IdUbfi LIKE '"
  loc_A65F5B: FLdPr Me
  loc_A65F5E: VCallAd Control_ID_FiltroMsk
  loc_A65F61: FStAdFunc var_88
  loc_A65F64: FLdPr var_88
  loc_A65F67: LateIdLdVar var_98 DispID_22 0
  loc_A65F6E: CStrVarTmp
  loc_A65F6F: FStStrNoPop var_9C
  loc_A65F72: ConcatStr
  loc_A65F73: FStStrNoPop var_A0
  loc_A65F76: LitStr Chr(37) & "'"
  loc_A65F79: ConcatStr
  loc_A65F7A: PopTmpLdAdStr
  loc_A65F7E: FLdPr Me
  loc_A65F81: MemLdRfVar from_stack_1.BuscarCLS
  loc_A65F84: NewIfNullPr clsbase
  loc_A65F87: Call clsbase.Filter(from_stack_1v)
  loc_A65F8C: FFreeStr var_9C = "": var_A0 = ""
  loc_A65F95: FFree1Ad var_88
  loc_A65F98: FFree1Var var_98 = ""
  loc_A65F9B: LitStr "código que comience con "
  loc_A65F9E: FLdPr Me
  loc_A65FA1: VCallAd Control_ID_FiltroMsk
  loc_A65FA4: FStAdFunc var_88
  loc_A65FA7: FLdPr var_88
  loc_A65FAA: LateIdLdVar var_98 DispID_22 0
  loc_A65FB1: CStrVarTmp
  loc_A65FB2: FStStrNoPop var_9C
  loc_A65FB5: ConcatStr
  loc_A65FB6: FStStrNoPop var_A0
  loc_A65FB9: FLdPr Me
  loc_A65FBC: MemStStrCopy
  loc_A65FC0: FFreeStr var_9C = ""
  loc_A65FC7: FFree1Ad var_88
  loc_A65FCA: FFree1Var var_98 = ""
  loc_A65FCD: Branch loc_A6610F
  loc_A65FD0: FLdRfVar var_A2
  loc_A65FD3: FLdPr Me
  loc_A65FD6: VCallAd Control_ID_FiltroCbo
  loc_A65FD9: FStAdFunc var_88
  loc_A65FDC: FLdPr var_88
  loc_A65FDF:  = Me.ListIndex
  loc_A65FE4: FLdI2 var_A2
  loc_A65FE7: LitI2_Byte 1
  loc_A65FE9: EqI2
  loc_A65FEA: FFree1Ad var_88
  loc_A65FED: BranchF loc_A66071
  loc_A65FF0: LitStr "DetaUbfi LIKE '" & Chr(37)
  loc_A65FF3: FLdPr Me
  loc_A65FF6: VCallAd Control_ID_FiltroMsk
  loc_A65FF9: FStAdFunc var_88
  loc_A65FFC: FLdPr var_88
  loc_A65FFF: LateIdLdVar var_98 DispID_22 0
  loc_A66006: CStrVarTmp
  loc_A66007: FStStrNoPop var_9C
  loc_A6600A: ConcatStr
  loc_A6600B: FStStrNoPop var_A0
  loc_A6600E: LitStr Chr(37) & "'"
  loc_A66011: ConcatStr
  loc_A66012: PopTmpLdAdStr
  loc_A66016: FLdPr Me
  loc_A66019: MemLdRfVar from_stack_1.BuscarCLS
  loc_A6601C: NewIfNullPr clsbase
  loc_A6601F: Call clsbase.Filter(from_stack_1v)
  loc_A66024: FFreeStr var_9C = "": var_A0 = ""
  loc_A6602D: FFree1Ad var_88
  loc_A66030: FFree1Var var_98 = ""
  loc_A66033: LitStr "detalle contiene "
  loc_A66036: FLdPr Me
  loc_A66039: VCallAd Control_ID_FiltroMsk
  loc_A6603C: FStAdFunc var_88
  loc_A6603F: FLdPr var_88
  loc_A66042: LateIdLdVar var_98 DispID_22 0
  loc_A66049: CStrVarTmp
  loc_A6604A: FStStrNoPop var_9C
  loc_A6604D: ConcatStr
  loc_A6604E: FStStrNoPop var_A0
  loc_A66051: LitStr vbNullString
  loc_A66054: ConcatStr
  loc_A66055: FStStrNoPop var_A8
  loc_A66058: FLdPr Me
  loc_A6605B: MemStStrCopy
  loc_A6605F: FFreeStr var_9C = "": var_A0 = ""
  loc_A66068: FFree1Ad var_88
  loc_A6606B: FFree1Var var_98 = ""
  loc_A6606E: Branch loc_A6610F
  loc_A66071: FLdRfVar var_A2
  loc_A66074: FLdPr Me
  loc_A66077: VCallAd Control_ID_FiltroCbo
  loc_A6607A: FStAdFunc var_88
  loc_A6607D: FLdPr var_88
  loc_A66080:  = Me.ListIndex
  loc_A66085: FLdI2 var_A2
  loc_A66088: LitI2_Byte 2
  loc_A6608A: EqI2
  loc_A6608B: FFree1Ad var_88
  loc_A6608E: BranchF loc_A6610F
  loc_A66091: LitStr "DetaPers LIKE '" & Chr(37)
  loc_A66094: FLdPr Me
  loc_A66097: VCallAd Control_ID_FiltroMsk
  loc_A6609A: FStAdFunc var_88
  loc_A6609D: FLdPr var_88
  loc_A660A0: LateIdLdVar var_98 DispID_22 0
  loc_A660A7: CStrVarTmp
  loc_A660A8: FStStrNoPop var_9C
  loc_A660AB: ConcatStr
  loc_A660AC: FStStrNoPop var_A0
  loc_A660AF: LitStr Chr(37) & "'"
  loc_A660B2: ConcatStr
  loc_A660B3: PopTmpLdAdStr
  loc_A660B7: FLdPr Me
  loc_A660BA: MemLdRfVar from_stack_1.BuscarCLS
  loc_A660BD: NewIfNullPr clsbase
  loc_A660C0: Call clsbase.Filter(from_stack_1v)
  loc_A660C5: FFreeStr var_9C = "": var_A0 = ""
  loc_A660CE: FFree1Ad var_88
  loc_A660D1: FFree1Var var_98 = ""
  loc_A660D4: LitStr "responsable contiene "
  loc_A660D7: FLdPr Me
  loc_A660DA: VCallAd Control_ID_FiltroMsk
  loc_A660DD: FStAdFunc var_88
  loc_A660E0: FLdPr var_88
  loc_A660E3: LateIdLdVar var_98 DispID_22 0
  loc_A660EA: CStrVarTmp
  loc_A660EB: FStStrNoPop var_9C
  loc_A660EE: ConcatStr
  loc_A660EF: FStStrNoPop var_A0
  loc_A660F2: LitStr vbNullString
  loc_A660F5: ConcatStr
  loc_A660F6: FStStrNoPop var_A8
  loc_A660F9: FLdPr Me
  loc_A660FC: MemStStrCopy
  loc_A66100: FFreeStr var_9C = "": var_A0 = ""
  loc_A66109: FFree1Ad var_88
  loc_A6610C: FFree1Var var_98 = ""
  loc_A6610F: Branch loc_A66136
  loc_A66112: LitStr vbNullString
  loc_A66115: FStStrCopy var_9C
  loc_A66118: FLdRfVar var_9C
  loc_A6611B: FLdPr Me
  loc_A6611E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A66121: NewIfNullPr clsbase
  loc_A66124: Call clsbase.Filter(from_stack_1v)
  loc_A66129: FFree1Str var_9C
  loc_A6612C: LitStr vbNullString
  loc_A6612F: FLdPr Me
  loc_A66132: MemStStrCopy
  loc_A66136: FLdRfVar var_AC
  loc_A66139: FLdPr Me
  loc_A6613C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A6613F: NewIfNullPr clsbase
  loc_A66142: from_stack_1 = clsbase.RecordCount
  loc_A66147: ILdRf var_AC
  loc_A6614A: LitI4 0
  loc_A6614F: GtI4
  loc_A66150: BranchF loc_A661EE
  loc_A66153: FLdPr Me
  loc_A66156: MemLdRfVar from_stack_1.BuscarCLS
  loc_A66159: NewIfNullAd
  loc_A6615C: FStAd var_B0 
  loc_A66160: FLdRfVar var_B0
  loc_A66163: CVarRef
  loc_A66168: ILdRf Me
  loc_A6616B: CastAd
  loc_A6616E: FStAdFunc var_88
  loc_A66171: FLdRfVar var_88
  loc_A66174: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A66179: ILdRf var_B0
  loc_A6617C: CastAd
  loc_A6617F: FLdPr Me
  loc_A66182: MemStAdFunc
  loc_A66186: FFreeAd var_88 = ""
  loc_A6618D: LitI4 0
  loc_A66192: LitI4 1
  loc_A66197: FLdRfVar var_C4
  loc_A6619A: Redim
  loc_A661A4: FLdPr Me
  loc_A661A7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A661AA: NewIfNullAd
  loc_A661AD: FStAd var_88 
  loc_A661B1: FLdRfVar var_88
  loc_A661B4: CVarRef
  loc_A661B9: ParmAry1St
  loc_A661BF: FLdPr Me
  loc_A661C2: VCallAd Control_ID_dgdABMS
  loc_A661C5: CVarAd
  loc_A661C9: ParmAry1St
  loc_A661CF: FLdRfVar var_C4
  loc_A661D2: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A661D7: ILdRf var_88
  loc_A661DA: CastAd
  loc_A661DD: FLdPr Me
  loc_A661E0: MemStAdFunc
  loc_A661E4: FLdRfVar var_C4
  loc_A661E7: Erase
  loc_A661E8: FFree1Ad var_88
  loc_A661EB: Branch loc_A66202
  loc_A661EE: ILdRf Me
  loc_A661F1: CastAd
  loc_A661F4: FStAdFunc var_88
  loc_A661F7: FLdRfVar var_88
  loc_A661FA: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A661FF: FFree1Ad var_88
  loc_A66202: FLdPr Me
  loc_A66205: VCallAd Control_ID_dgdABMS
  loc_A66208: FStAdFunc var_B0
  loc_A6620B: LitI4 0
  loc_A66210: FStStrCopy var_9C
  loc_A66213: FLdRfVar var_9C
  loc_A66216: FLdPr Me
  loc_A66219: MemLdStr sFiltro
  loc_A6621C: FLdZeroAd var_B0
  loc_A6621F: FStAdFunc var_88
  loc_A66222: FLdRfVar var_88
  loc_A66225: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A6622A: FFree1Str var_9C
  loc_A6622D: FFreeAd var_88 = ""
  loc_A66234: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997084
  'Data Table: 41D194
  loc_997020: ILdI2 KeyAscii
  loc_997023: LitI2_Byte &H27
  loc_997025: EqI2
  loc_997026: BranchF loc_99702E
  loc_997029: LitI2_Byte 0
  loc_99702B: IStI2 KeyAscii
  loc_99702E: FLdRfVar var_88
  loc_997031: FLdPr Me
  loc_997034: MemLdRfVar from_stack_1.BuscarCLS
  loc_997037: NewIfNullPr clsbase
  loc_99703A: from_stack_1 = clsbase.RecordCount
  loc_99703F: ILdRf var_88
  loc_997042: LitI4 0
  loc_997047: EqI4
  loc_997048: ILdI2 KeyAscii
  loc_99704B: CI4UI1
  loc_99704C: LitI4 8
  loc_997051: NeI4
  loc_997052: AndI4
  loc_997053: FLdPr Me
  loc_997056: VCallAd Control_ID_FiltroMsk
  loc_997059: FStAdFunc var_8C
  loc_99705C: FLdPr var_8C
  loc_99705F: LateIdLdVar var_9C DispID_16 0
  loc_997066: CStrVarTmp
  loc_997067: FStStrNoPop var_A0
  loc_99706A: LitStr vbNullString
  loc_99706D: EqStr
  loc_99706F: AndI4
  loc_997070: FFree1Str var_A0
  loc_997073: FFree1Ad var_8C
  loc_997076: FFree1Var var_9C = ""
  loc_997079: BranchF loc_997081
  loc_99707C: LitI2_Byte 0
  loc_99707E: IStI2 KeyAscii
  loc_997081: ExitProcHresult
  loc_997082: FStStrCopy arg_1C00
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955AD0
  'Data Table: 41D194
  loc_955AB8: FLdPr Me
  loc_955ABB: VCallAd Control_ID_dgdABMS
  loc_955ABE: FStAdFunc var_88
  loc_955AC1: FLdRfVar var_88
  loc_955AC4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955AC9: FFree1Ad var_88
  loc_955ACC: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9559EC
  'Data Table: 41D194
  loc_9559D4: FLdPr Me
  loc_9559D7: VCallAd Control_ID_dgdABMS
  loc_9559DA: FStAdFunc var_88
  loc_9559DD: FLdRfVar var_88
  loc_9559E0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9559E5: FFree1Ad var_88
  loc_9559E8: ExitProcHresult
  loc_9559E9: LitStr "StrFormMemory_0"
End Sub

Private Sub dgdABMS_DblClick(arg_1C) '954064
  'Data Table: 41D194
  loc_95404C: ILdRf Me
  loc_95404F: FStAdNoPop
  loc_954053: ImpAdLdRf MemVar_C44F9C
  loc_954056: NewIfNullPr Me
  loc_954059: Me.Global.Unload from_stack_1
  loc_95405E: FFree1Ad var_88
  loc_954061: ExitProcHresult
  loc_954062: CRec2Uni arg_1C00
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99C048
  'Data Table: 41D194
  loc_99BFEC: FLdRfVar var_B4
  loc_99BFEF: FLdRfVar var_B0
  loc_99BFF2: FLdI2 ColIndex
  loc_99BFF5: CVarI2 var_A8
  loc_99BFF8: PopAdLdVar
  loc_99BFF9: FLdPr Me
  loc_99BFFC: VCallAd Control_ID_dgdABMS
  loc_99BFFF: FStAdFunc var_88
  loc_99C002: FLdPr var_88
  loc_99C005: LateIdLdVar var_98 DispID_105 0
  loc_99C00C: CastAdVar Me
  loc_99C010: FStAdFunc var_AC
  loc_99C013: FLdPr var_AC
  loc_99C016: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99C01B: FLdPr var_B0
  loc_99C01E:  = Me.DataField
  loc_99C023: FLdZeroAd var_B4
  loc_99C026: PopTmpLdAdStr
  loc_99C02A: FLdPr Me
  loc_99C02D: MemLdRfVar from_stack_1.BuscarCLS
  loc_99C030: NewIfNullPr clsbase
  loc_99C033: Call clsbase.Sort(from_stack_1v)
  loc_99C038: FFree1Str var_B8
  loc_99C03B: FFreeAd var_88 = "": var_AC = ""
  loc_99C044: FFree1Var var_98 = ""
  loc_99C047: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9551E8
  'Data Table: 41D194
  loc_9551D0: ILdRf Me
  loc_9551D3: FStAdNoPop
  loc_9551D7: ImpAdLdRf MemVar_C44F9C
  loc_9551DA: NewIfNullPr Me
  loc_9551DD: Me.Global.Unload from_stack_1
  loc_9551E2: FFree1Ad var_88
  loc_9551E5: ExitProcHresult
  loc_9551E6: VCallFPR8 unk_41ED95
End Sub

Private Sub Form_Load() 'A15540
  'Data Table: 41D194
  loc_A153DC: FLdRfVar var_88
  loc_A153DF: FLdPr Me
  loc_A153E2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A153E5: NewIfNullPr clsbase
  loc_A153E8: from_stack_1v = clsbase.RsFrmGet()
  loc_A153ED: ILdRf var_88
  loc_A153F0: LitNothing
  loc_A153F2: Is
  loc_A153F4: FFree1Ad var_88
  loc_A153F7: BranchF loc_A15473
  loc_A153FA: LitStr "SELECT uf.*, DetaTiUbfi, IFNULL(DetaPers,'') AS DetaPers"
  loc_A153FD: LitStr " FROM ubicfisica uf"
  loc_A15400: ConcatStr
  loc_A15401: FStStrNoPop var_8C
  loc_A15404: LitStr " INNER JOIN tipoubicfisica tuf ON tuf.CodiTiUbfi = uf.CodiTiUbfi"
  loc_A15407: ConcatStr
  loc_A15408: FStStrNoPop var_90
  loc_A1540B: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = uf.CucuPers"
  loc_A1540E: ConcatStr
  loc_A1540F: FStStrNoPop var_94
  loc_A15412: LitStr " WHERE TRUE"
  loc_A15415: ConcatStr
  loc_A15416: CVarStr var_104
  loc_A15419: LitVarStr var_D4, " AND uf.BajaUsua = '' "
  loc_A1541E: FStVarCopyObj var_E4
  loc_A15421: FLdRfVar var_E4
  loc_A15424: LitVarStr var_B4, vbNullString
  loc_A15429: FStVarCopyObj var_C4
  loc_A1542C: FLdRfVar var_C4
  loc_A1542F: FLdPr Me
  loc_A15432: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A15435: CVarRef
  loc_A1543A: FLdRfVar var_F4
  loc_A1543D: ImpAdCallFPR4  = IIf(, , )
  loc_A15442: FLdRfVar var_F4
  loc_A15445: ConcatVar var_114
  loc_A15449: CStrVarVal var_118
  loc_A1544D: FLdPr Me
  loc_A15450: MemLdRfVar from_stack_1.BuscarCLS
  loc_A15453: NewIfNullPr clsbase
  loc_A15456: Call clsbase.RedefineRS(from_stack_1v)
  loc_A1545B: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A15466: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_F4 = ""
  loc_A15473: LitVarI2 var_A4, 0
  loc_A15478: PopAdLdVar
  loc_A15479: LitStr "Ubicación Física (Código)"
  loc_A1547C: FLdPr Me
  loc_A1547F: VCallAd Control_ID_FiltroCbo
  loc_A15482: FStAdFunc var_88
  loc_A15485: FLdPr var_88
  loc_A15488: Me.AddItem from_stack_1, from_stack_2
  loc_A1548D: FFree1Ad var_88
  loc_A15490: LitVarI2 var_A4, 1
  loc_A15495: PopAdLdVar
  loc_A15496: LitStr "Ubicación Física (Detalle)"
  loc_A15499: FLdPr Me
  loc_A1549C: VCallAd Control_ID_FiltroCbo
  loc_A1549F: FStAdFunc var_88
  loc_A154A2: FLdPr var_88
  loc_A154A5: Me.AddItem from_stack_1, from_stack_2
  loc_A154AA: FFree1Ad var_88
  loc_A154AD: LitVarI2 var_A4, 2
  loc_A154B2: PopAdLdVar
  loc_A154B3: LitStr "Responsable"
  loc_A154B6: FLdPr Me
  loc_A154B9: VCallAd Control_ID_FiltroCbo
  loc_A154BC: FStAdFunc var_88
  loc_A154BF: FLdPr var_88
  loc_A154C2: Me.AddItem from_stack_1, from_stack_2
  loc_A154C7: FFree1Ad var_88
  loc_A154CA: LitI2_Byte 1
  loc_A154CC: FLdPr Me
  loc_A154CF: VCallAd Control_ID_FiltroCbo
  loc_A154D2: FStAdFunc var_88
  loc_A154D5: FLdPr var_88
  loc_A154D8: Me.ListIndex = from_stack_1
  loc_A154DD: FFree1Ad var_88
  loc_A154E0: LitI4 0
  loc_A154E5: LitI4 1
  loc_A154EA: FLdRfVar var_11C
  loc_A154ED: Redim
  loc_A154F7: FLdPr Me
  loc_A154FA: MemLdRfVar from_stack_1.BuscarCLS
  loc_A154FD: NewIfNullAd
  loc_A15500: FStAd var_88 
  loc_A15504: FLdRfVar var_88
  loc_A15507: CVarRef
  loc_A1550C: ParmAry1St
  loc_A15512: FLdPr Me
  loc_A15515: VCallAd Control_ID_dgdABMS
  loc_A15518: CVarAd
  loc_A1551C: ParmAry1St
  loc_A15522: FLdRfVar var_11C
  loc_A15525: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A1552A: ILdRf var_88
  loc_A1552D: CastAd
  loc_A15530: FLdPr Me
  loc_A15533: MemStAdFunc
  loc_A15537: FLdRfVar var_11C
  loc_A1553A: Erase
  loc_A1553B: FFree1Ad var_88
  loc_A1553E: ExitProcHresult
  loc_A1553F: CStr2Ansi
End Sub

Private Sub Form_Unload(Cancel As Integer) '953E9C
  'Data Table: 41D194
  loc_953E84: ILdRf Me
  loc_953E87: FStAdNoPop
  loc_953E8B: ImpAdLdRf MemVar_C44F9C
  loc_953E8E: NewIfNullPr Me
  loc_953E91: Me.Global.Unload from_stack_1
  loc_953E96: FFree1Ad var_88
  loc_953E99: ExitProcHresult
  loc_953E9A: CExtInstUnk
End Sub

Private Sub Form_Activate() '9528F0
  'Data Table: 41D194
  loc_9528DC: FLdPr Me
  loc_9528DF: VCallAd Control_ID_FiltroMsk
  loc_9528E2: CVarAd
  loc_9528E6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9528EB: FFree1Var var_94 = ""
  loc_9528EE: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9495A0
  'Data Table: 41D194
  loc_94958C: ILdI2 KeyAscii
  loc_94958F: CI4UI1
  loc_949590: LitI4 &HD
  loc_949595: EqI4
  loc_949596: BranchF loc_94959E
  loc_949599: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94959E: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41D680
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41D68F
  MuestroAnulados = Value
End Sub

Public Function global_4313492Get() '41D69E
  global_4313492Get = global_4313492
End Function

Public Sub global_4313492Put(Value) '41D6B8
  global_4313492 = Value
End Sub

Public Sub global_4313492Set(Value) '41D6D2
  global_4313492 = Value
End Sub

Public Function sFiltroGet() '41D6EC
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41D6FB
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) '9B2F9C
  'Data Table: 41D194
  loc_9B2F10: ILdRf sWhere
  loc_9B2F13: FStStrCopy var_88
  loc_9B2F16: LitStr "SELECT uf.*, DetaTiUbfi, IFNULL(DetaPers,'') AS DetaPers"
  loc_9B2F19: LitStr " FROM ubicfisica uf"
  loc_9B2F1C: ConcatStr
  loc_9B2F1D: FStStrNoPop var_8C
  loc_9B2F20: LitStr " INNER JOIN tipoubicfisica tuf ON tuf.CodiTiUbfi = uf.CodiTiUbfi"
  loc_9B2F23: ConcatStr
  loc_9B2F24: FStStrNoPop var_90
  loc_9B2F27: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = uf.CucuPers"
  loc_9B2F2A: ConcatStr
  loc_9B2F2B: FStStrNoPop var_94
  loc_9B2F2E: LitStr " WHERE TRUE "
  loc_9B2F31: ConcatStr
  loc_9B2F32: CVarStr var_104
  loc_9B2F35: LitVarStr var_D4, " AND uf.BajaUsua = '' "
  loc_9B2F3A: FStVarCopyObj var_E4
  loc_9B2F3D: FLdRfVar var_E4
  loc_9B2F40: LitVarStr var_B4, vbNullString
  loc_9B2F45: FStVarCopyObj var_C4
  loc_9B2F48: FLdRfVar var_C4
  loc_9B2F4B: FLdPr Me
  loc_9B2F4E: MemLdRfVar from_stack_1.MuestroAnulados
  loc_9B2F51: CVarRef
  loc_9B2F56: FLdRfVar var_F4
  loc_9B2F59: ImpAdCallFPR4  = IIf(, , )
  loc_9B2F5E: FLdRfVar var_F4
  loc_9B2F61: ConcatVar var_114
  loc_9B2F65: ILdRf var_88
  loc_9B2F68: CVarStr var_124
  loc_9B2F6B: ConcatVar var_134
  loc_9B2F6F: CStrVarVal var_138
  loc_9B2F73: FLdPr Me
  loc_9B2F76: MemLdRfVar from_stack_1.BuscarCLS
  loc_9B2F79: NewIfNullPr clsbase
  loc_9B2F7C: Call clsbase.RedefineRS(from_stack_1v)
  loc_9B2F81: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_9B2F8C: FFreeVar var_C4 = "": var_E4 = "": var_104 = "": var_F4 = "": var_114 = ""
  loc_9B2F9B: ExitProcHresult
End Sub
