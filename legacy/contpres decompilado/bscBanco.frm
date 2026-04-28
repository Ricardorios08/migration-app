VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscBanco
  Caption = "Buscar Banco por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscBanco.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 12450
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
      OleObjectBlob = "bscBanco.frx":08CA
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
    Width = 12135
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscBanco.frx":092A
  End
End

Attribute VB_Name = "bscBanco"

Public MuestroAnulados As Boolean
Public iPeriInfo As Integer
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9EC1E0
  'Data Table: 41DFB0
  loc_9EC0A8: LitVarStr var_94, vbNullString
  loc_9EC0AD: PopAdLdVar
  loc_9EC0AE: FLdPr Me
  loc_9EC0B1: VCallAd Control_ID_FiltroMsk
  loc_9EC0B4: FStAdFunc var_A8
  loc_9EC0B7: FLdPr var_A8
  loc_9EC0BA: LateIdSt
  loc_9EC0BF: FFree1Ad var_A8
  loc_9EC0C2: FLdRfVar var_AA
  loc_9EC0C5: FLdPr Me
  loc_9EC0C8: VCallAd Control_ID_FiltroCbo
  loc_9EC0CB: FStAdFunc var_A8
  loc_9EC0CE: FLdPr var_A8
  loc_9EC0D1:  = Me.ListIndex
  loc_9EC0D6: FLdI2 var_AA
  loc_9EC0D9: FStI2 var_AC
  loc_9EC0DC: FFree1Ad var_A8
  loc_9EC0DF: FLdI2 var_AC
  loc_9EC0E2: LitI2_Byte 0
  loc_9EC0E4: EqI2
  loc_9EC0E5: BranchF loc_9EC11F
  loc_9EC0E8: LitVarStr var_94, "#####"
  loc_9EC0ED: PopAdLdVar
  loc_9EC0EE: FLdPr Me
  loc_9EC0F1: VCallAd Control_ID_FiltroMsk
  loc_9EC0F4: FStAdFunc var_A8
  loc_9EC0F7: FLdPr var_A8
  loc_9EC0FA: LateIdSt
  loc_9EC0FF: FFree1Ad var_A8
  loc_9EC102: LitStr "CodiBanc"
  loc_9EC105: FStStrCopy var_B0
  loc_9EC108: FLdRfVar var_B0
  loc_9EC10B: FLdPr Me
  loc_9EC10E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EC111: NewIfNullPr clsbase
  loc_9EC114: Call clsbase.Sort(from_stack_1v)
  loc_9EC119: FFree1Str var_B0
  loc_9EC11C: Branch loc_9EC1DC
  loc_9EC11F: FLdI2 var_AC
  loc_9EC122: LitI2_Byte 1
  loc_9EC124: EqI2
  loc_9EC125: BranchF loc_9EC15F
  loc_9EC128: LitVarStr var_94, vbNullString
  loc_9EC12D: PopAdLdVar
  loc_9EC12E: FLdPr Me
  loc_9EC131: VCallAd Control_ID_FiltroMsk
  loc_9EC134: FStAdFunc var_A8
  loc_9EC137: FLdPr var_A8
  loc_9EC13A: LateIdSt
  loc_9EC13F: FFree1Ad var_A8
  loc_9EC142: LitStr "DetaBanc"
  loc_9EC145: FStStrCopy var_B0
  loc_9EC148: FLdRfVar var_B0
  loc_9EC14B: FLdPr Me
  loc_9EC14E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EC151: NewIfNullPr clsbase
  loc_9EC154: Call clsbase.Sort(from_stack_1v)
  loc_9EC159: FFree1Str var_B0
  loc_9EC15C: Branch loc_9EC1DC
  loc_9EC15F: FLdI2 var_AC
  loc_9EC162: LitI2_Byte 2
  loc_9EC164: EqI2
  loc_9EC165: BranchF loc_9EC19F
  loc_9EC168: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9EC16D: PopAdLdVar
  loc_9EC16E: FLdPr Me
  loc_9EC171: VCallAd Control_ID_FiltroMsk
  loc_9EC174: FStAdFunc var_A8
  loc_9EC177: FLdPr var_A8
  loc_9EC17A: LateIdSt
  loc_9EC17F: FFree1Ad var_A8
  loc_9EC182: LitStr "CodiCuco"
  loc_9EC185: FStStrCopy var_B0
  loc_9EC188: FLdRfVar var_B0
  loc_9EC18B: FLdPr Me
  loc_9EC18E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EC191: NewIfNullPr clsbase
  loc_9EC194: Call clsbase.Sort(from_stack_1v)
  loc_9EC199: FFree1Str var_B0
  loc_9EC19C: Branch loc_9EC1DC
  loc_9EC19F: FLdI2 var_AC
  loc_9EC1A2: LitI2_Byte 3
  loc_9EC1A4: EqI2
  loc_9EC1A5: BranchF loc_9EC1DC
  loc_9EC1A8: LitVarStr var_94, vbNullString
  loc_9EC1AD: PopAdLdVar
  loc_9EC1AE: FLdPr Me
  loc_9EC1B1: VCallAd Control_ID_FiltroMsk
  loc_9EC1B4: FStAdFunc var_A8
  loc_9EC1B7: FLdPr var_A8
  loc_9EC1BA: LateIdSt
  loc_9EC1BF: FFree1Ad var_A8
  loc_9EC1C2: LitStr "DetaCuco"
  loc_9EC1C5: FStStrCopy var_B0
  loc_9EC1C8: FLdRfVar var_B0
  loc_9EC1CB: FLdPr Me
  loc_9EC1CE: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EC1D1: NewIfNullPr clsbase
  loc_9EC1D4: Call clsbase.Sort(from_stack_1v)
  loc_9EC1D9: FFree1Str var_B0
  loc_9EC1DC: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952308
  'Data Table: 41DFB0
  loc_9522F4: FLdPr Me
  loc_9522F7: VCallAd Control_ID_FiltroMsk
  loc_9522FA: CVarAd
  loc_9522FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952303: FFree1Var var_94 = ""
  loc_952306: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A73DE0
  'Data Table: 41DFB0
  loc_A73A1C: ILdRf Me
  loc_A73A1F: CastAd
  loc_A73A22: FStAdFunc var_88
  loc_A73A25: FLdRfVar var_88
  loc_A73A28: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A73A2D: FFree1Ad var_88
  loc_A73A30: FLdPr Me
  loc_A73A33: VCallAd Control_ID_FiltroMsk
  loc_A73A36: FStAdFunc var_88
  loc_A73A39: FLdPr var_88
  loc_A73A3C: LateIdLdVar var_98 DispID_22 0
  loc_A73A43: CStrVarTmp
  loc_A73A44: FStStrNoPop var_9C
  loc_A73A47: ImpAdCallI2 Trim$()
  loc_A73A4C: FStStrNoPop var_A0
  loc_A73A4F: LitStr vbNullString
  loc_A73A52: NeStr
  loc_A73A54: FFreeStr var_9C = ""
  loc_A73A5B: FFree1Ad var_88
  loc_A73A5E: FFree1Var var_98 = ""
  loc_A73A61: BranchF loc_A73CBB
  loc_A73A64: FLdRfVar var_A2
  loc_A73A67: FLdPr Me
  loc_A73A6A: VCallAd Control_ID_FiltroCbo
  loc_A73A6D: FStAdFunc var_88
  loc_A73A70: FLdPr var_88
  loc_A73A73:  = Me.ListIndex
  loc_A73A78: FLdI2 var_A2
  loc_A73A7B: LitI2_Byte 0
  loc_A73A7D: EqI2
  loc_A73A7E: FFree1Ad var_88
  loc_A73A81: BranchF loc_A73AF3
  loc_A73A84: LitStr "CodiBanc = "
  loc_A73A87: FLdPr Me
  loc_A73A8A: VCallAd Control_ID_FiltroMsk
  loc_A73A8D: FStAdFunc var_88
  loc_A73A90: FLdPr var_88
  loc_A73A93: LateIdLdVar var_98 DispID_22 0
  loc_A73A9A: CStrVarTmp
  loc_A73A9B: FStStrNoPop var_9C
  loc_A73A9E: ConcatStr
  loc_A73A9F: PopTmpLdAdStr
  loc_A73AA3: FLdPr Me
  loc_A73AA6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73AA9: NewIfNullPr clsbase
  loc_A73AAC: Call clsbase.Filter(from_stack_1v)
  loc_A73AB1: FFreeStr var_9C = ""
  loc_A73AB8: FFree1Ad var_88
  loc_A73ABB: FFree1Var var_98 = ""
  loc_A73ABE: LitStr "banco sea igual a: "
  loc_A73AC1: FLdPr Me
  loc_A73AC4: VCallAd Control_ID_FiltroMsk
  loc_A73AC7: FStAdFunc var_88
  loc_A73ACA: FLdPr var_88
  loc_A73ACD: LateIdLdVar var_98 DispID_22 0
  loc_A73AD4: CStrVarTmp
  loc_A73AD5: FStStrNoPop var_9C
  loc_A73AD8: ConcatStr
  loc_A73AD9: FStStrNoPop var_A0
  loc_A73ADC: FLdPr Me
  loc_A73ADF: MemStStrCopy
  loc_A73AE3: FFreeStr var_9C = ""
  loc_A73AEA: FFree1Ad var_88
  loc_A73AED: FFree1Var var_98 = ""
  loc_A73AF0: Branch loc_A73CB8
  loc_A73AF3: FLdRfVar var_A2
  loc_A73AF6: FLdPr Me
  loc_A73AF9: VCallAd Control_ID_FiltroCbo
  loc_A73AFC: FStAdFunc var_88
  loc_A73AFF: FLdPr var_88
  loc_A73B02:  = Me.ListIndex
  loc_A73B07: FLdI2 var_A2
  loc_A73B0A: LitI2_Byte 1
  loc_A73B0C: EqI2
  loc_A73B0D: FFree1Ad var_88
  loc_A73B10: BranchF loc_A73B8B
  loc_A73B13: LitStr "DetaBanc LIKE '" & Chr(37)
  loc_A73B16: FLdPr Me
  loc_A73B19: VCallAd Control_ID_FiltroMsk
  loc_A73B1C: FStAdFunc var_88
  loc_A73B1F: FLdPr var_88
  loc_A73B22: LateIdLdVar var_98 DispID_22 0
  loc_A73B29: CStrVarTmp
  loc_A73B2A: FStStrNoPop var_9C
  loc_A73B2D: ConcatStr
  loc_A73B2E: FStStrNoPop var_A0
  loc_A73B31: LitStr Chr(37) & "'"
  loc_A73B34: ConcatStr
  loc_A73B35: PopTmpLdAdStr
  loc_A73B39: FLdPr Me
  loc_A73B3C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73B3F: NewIfNullPr clsbase
  loc_A73B42: Call clsbase.Filter(from_stack_1v)
  loc_A73B47: FFreeStr var_9C = "": var_A0 = ""
  loc_A73B50: FFree1Ad var_88
  loc_A73B53: FFree1Var var_98 = ""
  loc_A73B56: LitStr "banco contiene: "
  loc_A73B59: FLdPr Me
  loc_A73B5C: VCallAd Control_ID_FiltroMsk
  loc_A73B5F: FStAdFunc var_88
  loc_A73B62: FLdPr var_88
  loc_A73B65: LateIdLdVar var_98 DispID_22 0
  loc_A73B6C: CStrVarTmp
  loc_A73B6D: FStStrNoPop var_9C
  loc_A73B70: ConcatStr
  loc_A73B71: FStStrNoPop var_A0
  loc_A73B74: FLdPr Me
  loc_A73B77: MemStStrCopy
  loc_A73B7B: FFreeStr var_9C = ""
  loc_A73B82: FFree1Ad var_88
  loc_A73B85: FFree1Var var_98 = ""
  loc_A73B88: Branch loc_A73CB8
  loc_A73B8B: FLdRfVar var_A2
  loc_A73B8E: FLdPr Me
  loc_A73B91: VCallAd Control_ID_FiltroCbo
  loc_A73B94: FStAdFunc var_88
  loc_A73B97: FLdPr var_88
  loc_A73B9A:  = Me.ListIndex
  loc_A73B9F: FLdI2 var_A2
  loc_A73BA2: LitI2_Byte 2
  loc_A73BA4: EqI2
  loc_A73BA5: FFree1Ad var_88
  loc_A73BA8: BranchF loc_A73C23
  loc_A73BAB: LitStr "CodiCuco LIKE '"
  loc_A73BAE: FLdPr Me
  loc_A73BB1: VCallAd Control_ID_FiltroMsk
  loc_A73BB4: FStAdFunc var_88
  loc_A73BB7: FLdPr var_88
  loc_A73BBA: LateIdLdVar var_98 DispID_22 0
  loc_A73BC1: CStrVarTmp
  loc_A73BC2: FStStrNoPop var_9C
  loc_A73BC5: ConcatStr
  loc_A73BC6: FStStrNoPop var_A0
  loc_A73BC9: LitStr Chr(37) & "'"
  loc_A73BCC: ConcatStr
  loc_A73BCD: PopTmpLdAdStr
  loc_A73BD1: FLdPr Me
  loc_A73BD4: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73BD7: NewIfNullPr clsbase
  loc_A73BDA: Call clsbase.Filter(from_stack_1v)
  loc_A73BDF: FFreeStr var_9C = "": var_A0 = ""
  loc_A73BE8: FFree1Ad var_88
  loc_A73BEB: FFree1Var var_98 = ""
  loc_A73BEE: LitStr "cuenta contable comience con: "
  loc_A73BF1: FLdPr Me
  loc_A73BF4: VCallAd Control_ID_FiltroMsk
  loc_A73BF7: FStAdFunc var_88
  loc_A73BFA: FLdPr var_88
  loc_A73BFD: LateIdLdVar var_98 DispID_22 0
  loc_A73C04: CStrVarTmp
  loc_A73C05: FStStrNoPop var_9C
  loc_A73C08: ConcatStr
  loc_A73C09: FStStrNoPop var_A0
  loc_A73C0C: FLdPr Me
  loc_A73C0F: MemStStrCopy
  loc_A73C13: FFreeStr var_9C = ""
  loc_A73C1A: FFree1Ad var_88
  loc_A73C1D: FFree1Var var_98 = ""
  loc_A73C20: Branch loc_A73CB8
  loc_A73C23: FLdRfVar var_A2
  loc_A73C26: FLdPr Me
  loc_A73C29: VCallAd Control_ID_FiltroCbo
  loc_A73C2C: FStAdFunc var_88
  loc_A73C2F: FLdPr var_88
  loc_A73C32:  = Me.ListIndex
  loc_A73C37: FLdI2 var_A2
  loc_A73C3A: LitI2_Byte 3
  loc_A73C3C: EqI2
  loc_A73C3D: FFree1Ad var_88
  loc_A73C40: BranchF loc_A73CB8
  loc_A73C43: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A73C46: FLdPr Me
  loc_A73C49: VCallAd Control_ID_FiltroMsk
  loc_A73C4C: FStAdFunc var_88
  loc_A73C4F: FLdPr var_88
  loc_A73C52: LateIdLdVar var_98 DispID_22 0
  loc_A73C59: CStrVarTmp
  loc_A73C5A: FStStrNoPop var_9C
  loc_A73C5D: ConcatStr
  loc_A73C5E: FStStrNoPop var_A0
  loc_A73C61: LitStr Chr(37) & "'"
  loc_A73C64: ConcatStr
  loc_A73C65: PopTmpLdAdStr
  loc_A73C69: FLdPr Me
  loc_A73C6C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73C6F: NewIfNullPr clsbase
  loc_A73C72: Call clsbase.Filter(from_stack_1v)
  loc_A73C77: FFreeStr var_9C = "": var_A0 = ""
  loc_A73C80: FFree1Ad var_88
  loc_A73C83: FFree1Var var_98 = ""
  loc_A73C86: LitStr "cuenta contable contiene: "
  loc_A73C89: FLdPr Me
  loc_A73C8C: VCallAd Control_ID_FiltroMsk
  loc_A73C8F: FStAdFunc var_88
  loc_A73C92: FLdPr var_88
  loc_A73C95: LateIdLdVar var_98 DispID_22 0
  loc_A73C9C: CStrVarTmp
  loc_A73C9D: FStStrNoPop var_9C
  loc_A73CA0: ConcatStr
  loc_A73CA1: FStStrNoPop var_A0
  loc_A73CA4: FLdPr Me
  loc_A73CA7: MemStStrCopy
  loc_A73CAB: FFreeStr var_9C = ""
  loc_A73CB2: FFree1Ad var_88
  loc_A73CB5: FFree1Var var_98 = ""
  loc_A73CB8: Branch loc_A73CDF
  loc_A73CBB: LitStr vbNullString
  loc_A73CBE: FStStrCopy var_9C
  loc_A73CC1: FLdRfVar var_9C
  loc_A73CC4: FLdPr Me
  loc_A73CC7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73CCA: NewIfNullPr clsbase
  loc_A73CCD: Call clsbase.Filter(from_stack_1v)
  loc_A73CD2: FFree1Str var_9C
  loc_A73CD5: LitStr vbNullString
  loc_A73CD8: FLdPr Me
  loc_A73CDB: MemStStrCopy
  loc_A73CDF: FLdRfVar var_AC
  loc_A73CE2: FLdPr Me
  loc_A73CE5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73CE8: NewIfNullPr clsbase
  loc_A73CEB: from_stack_1 = clsbase.RecordCount
  loc_A73CF0: ILdRf var_AC
  loc_A73CF3: LitI4 0
  loc_A73CF8: GtI4
  loc_A73CF9: BranchF loc_A73D97
  loc_A73CFC: FLdPr Me
  loc_A73CFF: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73D02: NewIfNullAd
  loc_A73D05: FStAd var_B0 
  loc_A73D09: FLdRfVar var_B0
  loc_A73D0C: CVarRef
  loc_A73D11: ILdRf Me
  loc_A73D14: CastAd
  loc_A73D17: FStAdFunc var_88
  loc_A73D1A: FLdRfVar var_88
  loc_A73D1D: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A73D22: ILdRf var_B0
  loc_A73D25: CastAd
  loc_A73D28: FLdPr Me
  loc_A73D2B: MemStAdFunc
  loc_A73D2F: FFreeAd var_88 = ""
  loc_A73D36: LitI4 0
  loc_A73D3B: LitI4 1
  loc_A73D40: FLdRfVar var_C4
  loc_A73D43: Redim
  loc_A73D4D: FLdPr Me
  loc_A73D50: MemLdRfVar from_stack_1.BuscarCLS
  loc_A73D53: NewIfNullAd
  loc_A73D56: FStAd var_88 
  loc_A73D5A: FLdRfVar var_88
  loc_A73D5D: CVarRef
  loc_A73D62: ParmAry1St
  loc_A73D68: FLdPr Me
  loc_A73D6B: VCallAd Control_ID_dgdABMS
  loc_A73D6E: CVarAd
  loc_A73D72: ParmAry1St
  loc_A73D78: FLdRfVar var_C4
  loc_A73D7B: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A73D80: ILdRf var_88
  loc_A73D83: CastAd
  loc_A73D86: FLdPr Me
  loc_A73D89: MemStAdFunc
  loc_A73D8D: FLdRfVar var_C4
  loc_A73D90: Erase
  loc_A73D91: FFree1Ad var_88
  loc_A73D94: Branch loc_A73DAB
  loc_A73D97: ILdRf Me
  loc_A73D9A: CastAd
  loc_A73D9D: FStAdFunc var_88
  loc_A73DA0: FLdRfVar var_88
  loc_A73DA3: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A73DA8: FFree1Ad var_88
  loc_A73DAB: FLdPr Me
  loc_A73DAE: VCallAd Control_ID_dgdABMS
  loc_A73DB1: FStAdFunc var_B0
  loc_A73DB4: LitI4 0
  loc_A73DB9: FStStrCopy var_9C
  loc_A73DBC: FLdRfVar var_9C
  loc_A73DBF: FLdPr Me
  loc_A73DC2: MemLdStr sFiltro
  loc_A73DC5: FLdZeroAd var_B0
  loc_A73DC8: FStAdFunc var_88
  loc_A73DCB: FLdRfVar var_88
  loc_A73DCE: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A73DD3: FFree1Str var_9C
  loc_A73DD6: FFreeAd var_88 = ""
  loc_A73DDD: ExitProcHresult
  loc_A73DDE: FFree1Ad arg_3878
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9969A4
  'Data Table: 41DFB0
  loc_996940: ILdI2 KeyAscii
  loc_996943: LitI2_Byte &H27
  loc_996945: EqI2
  loc_996946: BranchF loc_99694E
  loc_996949: LitI2_Byte 0
  loc_99694B: IStI2 KeyAscii
  loc_99694E: FLdRfVar var_88
  loc_996951: FLdPr Me
  loc_996954: MemLdRfVar from_stack_1.BuscarCLS
  loc_996957: NewIfNullPr clsbase
  loc_99695A: from_stack_1 = clsbase.RecordCount
  loc_99695F: ILdRf var_88
  loc_996962: LitI4 0
  loc_996967: EqI4
  loc_996968: ILdI2 KeyAscii
  loc_99696B: CI4UI1
  loc_99696C: LitI4 8
  loc_996971: NeI4
  loc_996972: AndI4
  loc_996973: FLdPr Me
  loc_996976: VCallAd Control_ID_FiltroMsk
  loc_996979: FStAdFunc var_8C
  loc_99697C: FLdPr var_8C
  loc_99697F: LateIdLdVar var_9C DispID_16 0
  loc_996986: CStrVarTmp
  loc_996987: FStStrNoPop var_A0
  loc_99698A: LitStr vbNullString
  loc_99698D: EqStr
  loc_99698F: AndI4
  loc_996990: FFree1Str var_A0
  loc_996993: FFree1Ad var_8C
  loc_996996: FFree1Var var_9C = ""
  loc_996999: BranchF loc_9969A1
  loc_99699C: LitI2_Byte 0
  loc_99699E: IStI2 KeyAscii
  loc_9969A1: ExitProcHresult
  loc_9969A2: CI4Str
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95D818
  'Data Table: 41DFB0
  loc_95D800: FLdPr Me
  loc_95D803: VCallAd Control_ID_dgdABMS
  loc_95D806: FStAdFunc var_88
  loc_95D809: FLdRfVar var_88
  loc_95D80C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95D811: FFree1Ad var_88
  loc_95D814: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95D864
  'Data Table: 41DFB0
  loc_95D84C: FLdPr Me
  loc_95D84F: VCallAd Control_ID_dgdABMS
  loc_95D852: FStAdFunc var_88
  loc_95D855: FLdRfVar var_88
  loc_95D858: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95D85D: FFree1Ad var_88
  loc_95D860: ExitProcHresult
  loc_95D861: StAryCopy
End Sub

Private Sub dgdABMS_DblClick() '956618
  'Data Table: 41DFB0
  loc_956600: ILdRf Me
  loc_956603: FStAdNoPop
  loc_956607: ImpAdLdRf MemVar_C44F9C
  loc_95660A: NewIfNullPr Me
  loc_95660D: Me.Global.Unload from_stack_1
  loc_956612: FFree1Ad var_88
  loc_956615: ExitProcHresult
  loc_956616: NewIfNullPr 
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A22C
  'Data Table: 41DFB0
  loc_99A1D0: FLdRfVar var_B4
  loc_99A1D3: FLdRfVar var_B0
  loc_99A1D6: FLdI2 ColIndex
  loc_99A1D9: CVarI2 var_A8
  loc_99A1DC: PopAdLdVar
  loc_99A1DD: FLdPr Me
  loc_99A1E0: VCallAd Control_ID_dgdABMS
  loc_99A1E3: FStAdFunc var_88
  loc_99A1E6: FLdPr var_88
  loc_99A1E9: LateIdLdVar var_98 DispID_105 0
  loc_99A1F0: CastAdVar Me
  loc_99A1F4: FStAdFunc var_AC
  loc_99A1F7: FLdPr var_AC
  loc_99A1FA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A1FF: FLdPr var_B0
  loc_99A202:  = Me.DataField
  loc_99A207: FLdZeroAd var_B4
  loc_99A20A: PopTmpLdAdStr
  loc_99A20E: FLdPr Me
  loc_99A211: MemLdRfVar from_stack_1.BuscarCLS
  loc_99A214: NewIfNullPr clsbase
  loc_99A217: Call clsbase.Sort(from_stack_1v)
  loc_99A21C: FFree1Str var_B8
  loc_99A21F: FFreeAd var_88 = "": var_AC = ""
  loc_99A228: FFree1Var var_98 = ""
  loc_99A22B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95D274
  'Data Table: 41DFB0
  loc_95D25C: ILdRf Me
  loc_95D25F: FStAdNoPop
  loc_95D263: ImpAdLdRf MemVar_C44F9C
  loc_95D266: NewIfNullPr Me
  loc_95D269: Me.Global.Unload from_stack_1
  loc_95D26E: FFree1Ad var_88
  loc_95D271: ExitProcHresult
End Sub

Private Sub Form_Load() 'A29A68
  'Data Table: 41DFB0
  loc_A298B4: FLdPr Me
  loc_A298B7: MemLdI2 iPeriInfo
  loc_A298BA: LitI2_Byte 0
  loc_A298BC: EqI2
  loc_A298BD: BranchF loc_A298C9
  loc_A298C0: ImpAdLdI2 MemVar_C3D064
  loc_A298C3: FLdPr Me
  loc_A298C6: MemStI2 iPeriInfo
  loc_A298C9: FLdPr Me
  loc_A298CC: MemLdI2 MuestroAnulados
  loc_A298CF: BranchF loc_A29920
  loc_A298D2: LitStr "SELECT banco.*, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A298D5: LitStr " FROM banco"
  loc_A298D8: ConcatStr
  loc_A298D9: FStStrNoPop var_88
  loc_A298DC: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = banco.PeriInfo AND cc.CodiCuco = banco.CodiCuco"
  loc_A298DF: ConcatStr
  loc_A298E0: FStStrNoPop var_8C
  loc_A298E3: LitStr " WHERE banco.PeriInfo = "
  loc_A298E6: ConcatStr
  loc_A298E7: FStStrNoPop var_90
  loc_A298EA: FLdPr Me
  loc_A298ED: MemLdI2 iPeriInfo
  loc_A298F0: CStrUI1
  loc_A298F2: FStStrNoPop var_94
  loc_A298F5: ConcatStr
  loc_A298F6: FStStrNoPop var_98
  loc_A298F9: LitStr " ORDER BY CodiBanc;"
  loc_A298FC: ConcatStr
  loc_A298FD: FStStrNoPop var_9C
  loc_A29900: FLdPr Me
  loc_A29903: MemLdRfVar from_stack_1.BuscarCLS
  loc_A29906: NewIfNullPr clsbase
  loc_A29909: Call clsbase.RedefineRS(from_stack_1v)
  loc_A2990E: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A2991D: Branch loc_A2997D
  loc_A29920: LitStr "SELECT banco.*, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A29923: LitStr " FROM banco"
  loc_A29926: ConcatStr
  loc_A29927: FStStrNoPop var_88
  loc_A2992A: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = banco.PeriInfo AND cc.CodiCuco = banco.CodiCuco"
  loc_A2992D: ConcatStr
  loc_A2992E: FStStrNoPop var_8C
  loc_A29931: LitStr " WHERE banco.PeriInfo = "
  loc_A29934: ConcatStr
  loc_A29935: FStStrNoPop var_90
  loc_A29938: FLdPr Me
  loc_A2993B: MemLdI2 iPeriInfo
  loc_A2993E: CStrUI1
  loc_A29940: FStStrNoPop var_94
  loc_A29943: ConcatStr
  loc_A29944: FStStrNoPop var_98
  loc_A29947: LitStr " AND FeanBanc IS NULL"
  loc_A2994A: ConcatStr
  loc_A2994B: FStStrNoPop var_9C
  loc_A2994E: LitStr " AND banco.CodiUsua != 'migra'"
  loc_A29951: ConcatStr
  loc_A29952: FStStrNoPop var_A0
  loc_A29955: LitStr " ORDER BY CodiBanc;"
  loc_A29958: ConcatStr
  loc_A29959: FStStrNoPop var_A4
  loc_A2995C: FLdPr Me
  loc_A2995F: MemLdRfVar from_stack_1.BuscarCLS
  loc_A29962: NewIfNullPr clsbase
  loc_A29965: Call clsbase.RedefineRS(from_stack_1v)
  loc_A2996A: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A2997D: LitVarI2 var_B4, 0
  loc_A29982: PopAdLdVar
  loc_A29983: LitStr "Banco (Código)"
  loc_A29986: FLdPr Me
  loc_A29989: VCallAd Control_ID_FiltroCbo
  loc_A2998C: FStAdFunc var_B8
  loc_A2998F: FLdPr var_B8
  loc_A29992: Me.AddItem from_stack_1, from_stack_2
  loc_A29997: FFree1Ad var_B8
  loc_A2999A: LitVarI2 var_B4, 1
  loc_A2999F: PopAdLdVar
  loc_A299A0: LitStr "Banco (Detalle)"
  loc_A299A3: FLdPr Me
  loc_A299A6: VCallAd Control_ID_FiltroCbo
  loc_A299A9: FStAdFunc var_B8
  loc_A299AC: FLdPr var_B8
  loc_A299AF: Me.AddItem from_stack_1, from_stack_2
  loc_A299B4: FFree1Ad var_B8
  loc_A299B7: LitVarI2 var_B4, 2
  loc_A299BC: PopAdLdVar
  loc_A299BD: LitStr "Cuenta Contable (Código)"
  loc_A299C0: FLdPr Me
  loc_A299C3: VCallAd Control_ID_FiltroCbo
  loc_A299C6: FStAdFunc var_B8
  loc_A299C9: FLdPr var_B8
  loc_A299CC: Me.AddItem from_stack_1, from_stack_2
  loc_A299D1: FFree1Ad var_B8
  loc_A299D4: LitVarI2 var_B4, 3
  loc_A299D9: PopAdLdVar
  loc_A299DA: LitStr "Cuenta Contable (Detalle)"
  loc_A299DD: FLdPr Me
  loc_A299E0: VCallAd Control_ID_FiltroCbo
  loc_A299E3: FStAdFunc var_B8
  loc_A299E6: FLdPr var_B8
  loc_A299E9: Me.AddItem from_stack_1, from_stack_2
  loc_A299EE: FFree1Ad var_B8
  loc_A299F1: LitI2_Byte 1
  loc_A299F3: FLdPr Me
  loc_A299F6: VCallAd Control_ID_FiltroCbo
  loc_A299F9: FStAdFunc var_B8
  loc_A299FC: FLdPr var_B8
  loc_A299FF: Me.ListIndex = from_stack_1
  loc_A29A04: FFree1Ad var_B8
  loc_A29A07: LitI4 0
  loc_A29A0C: LitI4 1
  loc_A29A11: FLdRfVar var_BC
  loc_A29A14: Redim
  loc_A29A1E: FLdPr Me
  loc_A29A21: MemLdRfVar from_stack_1.BuscarCLS
  loc_A29A24: NewIfNullAd
  loc_A29A27: FStAd var_B8 
  loc_A29A2B: FLdRfVar var_B8
  loc_A29A2E: CVarRef
  loc_A29A33: ParmAry1St
  loc_A29A39: FLdPr Me
  loc_A29A3C: VCallAd Control_ID_dgdABMS
  loc_A29A3F: CVarAd
  loc_A29A43: ParmAry1St
  loc_A29A49: FLdRfVar var_BC
  loc_A29A4C: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A29A51: ILdRf var_B8
  loc_A29A54: CastAd
  loc_A29A57: FLdPr Me
  loc_A29A5A: MemStAdFunc
  loc_A29A5E: FLdRfVar var_BC
  loc_A29A61: Erase
  loc_A29A62: FFree1Ad var_B8
  loc_A29A65: ExitProcHresult
  loc_A29A66: FLdPr arg_3808
End Sub

Private Sub Form_Unload(Cancel As Integer) '973C24
  'Data Table: 41DFB0
  loc_973BFC: LitI2_Byte 0
  loc_973BFE: FLdPr Me
  loc_973C01: MemStI2 MuestroAnulados
  loc_973C04: LitI2_Byte 0
  loc_973C06: FLdPr Me
  loc_973C09: MemStI2 iPeriInfo
  loc_973C0C: ILdRf Me
  loc_973C0F: FStAdNoPop
  loc_973C13: ImpAdLdRf MemVar_C44F9C
  loc_973C16: NewIfNullPr Me
  loc_973C19: Me.Global.Unload from_stack_1
  loc_973C1E: FFree1Ad var_88
  loc_973C21: ExitProcHresult
  loc_973C22: DOC
End Sub

Private Sub Form_Activate() '94F578
  'Data Table: 41DFB0
  loc_94F564: FLdPr Me
  loc_94F567: VCallAd Control_ID_FiltroMsk
  loc_94F56A: CVarAd
  loc_94F56E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94F573: FFree1Var var_94 = ""
  loc_94F576: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949C88
  'Data Table: 41DFB0
  loc_949C74: ILdI2 KeyAscii
  loc_949C77: CI4UI1
  loc_949C78: LitI4 &HD
  loc_949C7D: EqI4
  loc_949C7E: BranchF loc_949C86
  loc_949C81: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949C86: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41E4B0
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41E4BF
  MuestroAnulados = Value
End Sub

Public Function iPeriInfoGet() '41E4CE
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '41E4DD
  iPeriInfo = Value
End Sub

Public Function global_4317104Get() '41E4EC
  global_4317104Get = global_4317104
End Function

Public Sub global_4317104Put(Value) '41E506
  global_4317104 = Value
End Sub

Public Sub global_4317104Set(Value) '41E520
  global_4317104 = Value
End Sub

Public Function sFiltroGet() '41E53A
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41E549
  sFiltro = Value
End Sub
