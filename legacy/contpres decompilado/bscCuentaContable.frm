VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscCuentaContable
  Caption = "Buscar Cuenta Contable  por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscCuentaContable.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
  ClientHeight = 5895
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
      OleObjectBlob = "bscCuentaContable.frx":08CA
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
    Width = 10695
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscCuentaContable.frx":092A
  End
End

Attribute VB_Name = "bscCuentaContable"

Public iPeriInfo As Integer
Public BuscoxCodiCuco As String
Public BuscoxDetaCuco As String
Public MuestroAnulados As Boolean
Public sWhere As String
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() 'A06C2C
  'Data Table: 422308
  loc_A06AC0: LitVarStr var_94, vbNullString
  loc_A06AC5: PopAdLdVar
  loc_A06AC6: FLdPr Me
  loc_A06AC9: VCallAd Control_ID_FiltroMsk
  loc_A06ACC: FStAdFunc var_A8
  loc_A06ACF: FLdPr var_A8
  loc_A06AD2: LateIdSt
  loc_A06AD7: FFree1Ad var_A8
  loc_A06ADA: FLdRfVar var_AA
  loc_A06ADD: FLdPr Me
  loc_A06AE0: VCallAd Control_ID_FiltroCbo
  loc_A06AE3: FStAdFunc var_A8
  loc_A06AE6: FLdPr var_A8
  loc_A06AE9:  = Me.ListIndex
  loc_A06AEE: FLdI2 var_AA
  loc_A06AF1: FStI2 var_AC
  loc_A06AF4: FFree1Ad var_A8
  loc_A06AF7: FLdI2 var_AC
  loc_A06AFA: LitI2_Byte 0
  loc_A06AFC: EqI2
  loc_A06AFD: BranchF loc_A06B37
  loc_A06B00: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A06B05: PopAdLdVar
  loc_A06B06: FLdPr Me
  loc_A06B09: VCallAd Control_ID_FiltroMsk
  loc_A06B0C: FStAdFunc var_A8
  loc_A06B0F: FLdPr var_A8
  loc_A06B12: LateIdSt
  loc_A06B17: FFree1Ad var_A8
  loc_A06B1A: LitStr "CodiCuco"
  loc_A06B1D: FStStrCopy var_B0
  loc_A06B20: FLdRfVar var_B0
  loc_A06B23: FLdPr Me
  loc_A06B26: MemLdRfVar from_stack_1.BuscarCLS
  loc_A06B29: NewIfNullPr clsbase
  loc_A06B2C: Call clsbase.Sort(from_stack_1v)
  loc_A06B31: FFree1Str var_B0
  loc_A06B34: Branch loc_A06C28
  loc_A06B37: FLdI2 var_AC
  loc_A06B3A: LitI2_Byte 1
  loc_A06B3C: EqI2
  loc_A06B3D: BranchF loc_A06B91
  loc_A06B40: LitVarStr var_94, "&"
  loc_A06B45: PopAdLdVar
  loc_A06B46: FLdPr Me
  loc_A06B49: VCallAd Control_ID_FiltroMsk
  loc_A06B4C: FStAdFunc var_A8
  loc_A06B4F: FLdPr var_A8
  loc_A06B52: LateIdSt
  loc_A06B57: FFree1Ad var_A8
  loc_A06B5A: LitVarStr var_94, vbNullString
  loc_A06B5F: PopAdLdVar
  loc_A06B60: FLdPr Me
  loc_A06B63: VCallAd Control_ID_FiltroMsk
  loc_A06B66: FStAdFunc var_A8
  loc_A06B69: FLdPr var_A8
  loc_A06B6C: LateIdSt
  loc_A06B71: FFree1Ad var_A8
  loc_A06B74: LitStr "DetaCuco"
  loc_A06B77: FStStrCopy var_B0
  loc_A06B7A: FLdRfVar var_B0
  loc_A06B7D: FLdPr Me
  loc_A06B80: MemLdRfVar from_stack_1.BuscarCLS
  loc_A06B83: NewIfNullPr clsbase
  loc_A06B86: Call clsbase.Sort(from_stack_1v)
  loc_A06B8B: FFree1Str var_B0
  loc_A06B8E: Branch loc_A06C28
  loc_A06B91: FLdI2 var_AC
  loc_A06B94: LitI2_Byte 2
  loc_A06B96: EqI2
  loc_A06B97: BranchF loc_A06BD1
  loc_A06B9A: LitVarStr var_94, "####"
  loc_A06B9F: PopAdLdVar
  loc_A06BA0: FLdPr Me
  loc_A06BA3: VCallAd Control_ID_FiltroMsk
  loc_A06BA6: FStAdFunc var_A8
  loc_A06BA9: FLdPr var_A8
  loc_A06BAC: LateIdSt
  loc_A06BB1: FFree1Ad var_A8
  loc_A06BB4: LitStr "CodiTicu"
  loc_A06BB7: FStStrCopy var_B0
  loc_A06BBA: FLdRfVar var_B0
  loc_A06BBD: FLdPr Me
  loc_A06BC0: MemLdRfVar from_stack_1.BuscarCLS
  loc_A06BC3: NewIfNullPr clsbase
  loc_A06BC6: Call clsbase.Sort(from_stack_1v)
  loc_A06BCB: FFree1Str var_B0
  loc_A06BCE: Branch loc_A06C28
  loc_A06BD1: FLdI2 var_AC
  loc_A06BD4: LitI2_Byte 3
  loc_A06BD6: EqI2
  loc_A06BD7: BranchF loc_A06C28
  loc_A06BDA: LitVarStr var_94, "&"
  loc_A06BDF: PopAdLdVar
  loc_A06BE0: FLdPr Me
  loc_A06BE3: VCallAd Control_ID_FiltroMsk
  loc_A06BE6: FStAdFunc var_A8
  loc_A06BE9: FLdPr var_A8
  loc_A06BEC: LateIdSt
  loc_A06BF1: FFree1Ad var_A8
  loc_A06BF4: LitVarStr var_94, vbNullString
  loc_A06BF9: PopAdLdVar
  loc_A06BFA: FLdPr Me
  loc_A06BFD: VCallAd Control_ID_FiltroMsk
  loc_A06C00: FStAdFunc var_A8
  loc_A06C03: FLdPr var_A8
  loc_A06C06: LateIdSt
  loc_A06C0B: FFree1Ad var_A8
  loc_A06C0E: LitStr "DetaTicu"
  loc_A06C11: FStStrCopy var_B0
  loc_A06C14: FLdRfVar var_B0
  loc_A06C17: FLdPr Me
  loc_A06C1A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A06C1D: NewIfNullPr clsbase
  loc_A06C20: Call clsbase.Sort(from_stack_1v)
  loc_A06C25: FFree1Str var_B0
  loc_A06C28: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9533A0
  'Data Table: 422308
  loc_95338C: FLdPr Me
  loc_95338F: VCallAd Control_ID_FiltroMsk
  loc_953392: CVarAd
  loc_953396: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95339B: FFree1Var var_94 = ""
  loc_95339E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7A4F8
  'Data Table: 422308
  loc_A7A118: ILdRf Me
  loc_A7A11B: CastAd
  loc_A7A11E: FStAdFunc var_88
  loc_A7A121: FLdRfVar var_88
  loc_A7A124: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A7A129: FFree1Ad var_88
  loc_A7A12C: FLdPr Me
  loc_A7A12F: VCallAd Control_ID_FiltroMsk
  loc_A7A132: FStAdFunc var_88
  loc_A7A135: FLdPr var_88
  loc_A7A138: LateIdLdVar var_98 DispID_22 0
  loc_A7A13F: CStrVarTmp
  loc_A7A140: FStStrNoPop var_9C
  loc_A7A143: ImpAdCallI2 Trim$()
  loc_A7A148: FStStrNoPop var_A0
  loc_A7A14B: LitStr vbNullString
  loc_A7A14E: NeStr
  loc_A7A150: FFreeStr var_9C = ""
  loc_A7A157: FFree1Ad var_88
  loc_A7A15A: FFree1Var var_98 = ""
  loc_A7A15D: BranchF loc_A7A3D2
  loc_A7A160: FLdRfVar var_A2
  loc_A7A163: FLdPr Me
  loc_A7A166: VCallAd Control_ID_FiltroCbo
  loc_A7A169: FStAdFunc var_88
  loc_A7A16C: FLdPr var_88
  loc_A7A16F:  = Me.ListIndex
  loc_A7A174: FLdI2 var_A2
  loc_A7A177: LitI2_Byte 0
  loc_A7A179: EqI2
  loc_A7A17A: FFree1Ad var_88
  loc_A7A17D: BranchF loc_A7A1F8
  loc_A7A180: LitStr "CodiCuco LIKE '"
  loc_A7A183: FLdPr Me
  loc_A7A186: VCallAd Control_ID_FiltroMsk
  loc_A7A189: FStAdFunc var_88
  loc_A7A18C: FLdPr var_88
  loc_A7A18F: LateIdLdVar var_98 DispID_22 0
  loc_A7A196: CStrVarTmp
  loc_A7A197: FStStrNoPop var_9C
  loc_A7A19A: ConcatStr
  loc_A7A19B: FStStrNoPop var_A0
  loc_A7A19E: LitStr Chr(37) & "'"
  loc_A7A1A1: ConcatStr
  loc_A7A1A2: PopTmpLdAdStr
  loc_A7A1A6: FLdPr Me
  loc_A7A1A9: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A1AC: NewIfNullPr clsbase
  loc_A7A1AF: Call clsbase.Filter(from_stack_1v)
  loc_A7A1B4: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A1BD: FFree1Ad var_88
  loc_A7A1C0: FFree1Var var_98 = ""
  loc_A7A1C3: LitStr "código que comience con "
  loc_A7A1C6: FLdPr Me
  loc_A7A1C9: VCallAd Control_ID_FiltroMsk
  loc_A7A1CC: FStAdFunc var_88
  loc_A7A1CF: FLdPr var_88
  loc_A7A1D2: LateIdLdVar var_98 DispID_22 0
  loc_A7A1D9: CStrVarTmp
  loc_A7A1DA: FStStrNoPop var_9C
  loc_A7A1DD: ConcatStr
  loc_A7A1DE: FStStrNoPop var_A0
  loc_A7A1E1: FLdPr Me
  loc_A7A1E4: MemStStrCopy
  loc_A7A1E8: FFreeStr var_9C = ""
  loc_A7A1EF: FFree1Ad var_88
  loc_A7A1F2: FFree1Var var_98 = ""
  loc_A7A1F5: Branch loc_A7A3CF
  loc_A7A1F8: FLdRfVar var_A2
  loc_A7A1FB: FLdPr Me
  loc_A7A1FE: VCallAd Control_ID_FiltroCbo
  loc_A7A201: FStAdFunc var_88
  loc_A7A204: FLdPr var_88
  loc_A7A207:  = Me.ListIndex
  loc_A7A20C: FLdI2 var_A2
  loc_A7A20F: LitI2_Byte 1
  loc_A7A211: EqI2
  loc_A7A212: FFree1Ad var_88
  loc_A7A215: BranchF loc_A7A299
  loc_A7A218: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A7A21B: FLdPr Me
  loc_A7A21E: VCallAd Control_ID_FiltroMsk
  loc_A7A221: FStAdFunc var_88
  loc_A7A224: FLdPr var_88
  loc_A7A227: LateIdLdVar var_98 DispID_22 0
  loc_A7A22E: CStrVarTmp
  loc_A7A22F: FStStrNoPop var_9C
  loc_A7A232: ConcatStr
  loc_A7A233: FStStrNoPop var_A0
  loc_A7A236: LitStr Chr(37) & "'"
  loc_A7A239: ConcatStr
  loc_A7A23A: PopTmpLdAdStr
  loc_A7A23E: FLdPr Me
  loc_A7A241: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A244: NewIfNullPr clsbase
  loc_A7A247: Call clsbase.Filter(from_stack_1v)
  loc_A7A24C: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A255: FFree1Ad var_88
  loc_A7A258: FFree1Var var_98 = ""
  loc_A7A25B: LitStr "detalle que contiene "
  loc_A7A25E: FLdPr Me
  loc_A7A261: VCallAd Control_ID_FiltroMsk
  loc_A7A264: FStAdFunc var_88
  loc_A7A267: FLdPr var_88
  loc_A7A26A: LateIdLdVar var_98 DispID_22 0
  loc_A7A271: CStrVarTmp
  loc_A7A272: FStStrNoPop var_9C
  loc_A7A275: ConcatStr
  loc_A7A276: FStStrNoPop var_A0
  loc_A7A279: LitStr vbNullString
  loc_A7A27C: ConcatStr
  loc_A7A27D: FStStrNoPop var_A8
  loc_A7A280: FLdPr Me
  loc_A7A283: MemStStrCopy
  loc_A7A287: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A290: FFree1Ad var_88
  loc_A7A293: FFree1Var var_98 = ""
  loc_A7A296: Branch loc_A7A3CF
  loc_A7A299: FLdRfVar var_A2
  loc_A7A29C: FLdPr Me
  loc_A7A29F: VCallAd Control_ID_FiltroCbo
  loc_A7A2A2: FStAdFunc var_88
  loc_A7A2A5: FLdPr var_88
  loc_A7A2A8:  = Me.ListIndex
  loc_A7A2AD: FLdI2 var_A2
  loc_A7A2B0: LitI2_Byte 2
  loc_A7A2B2: EqI2
  loc_A7A2B3: FFree1Ad var_88
  loc_A7A2B6: BranchF loc_A7A331
  loc_A7A2B9: LitStr "CodiTicu LIKE '"
  loc_A7A2BC: FLdPr Me
  loc_A7A2BF: VCallAd Control_ID_FiltroMsk
  loc_A7A2C2: FStAdFunc var_88
  loc_A7A2C5: FLdPr var_88
  loc_A7A2C8: LateIdLdVar var_98 DispID_22 0
  loc_A7A2CF: CStrVarTmp
  loc_A7A2D0: FStStrNoPop var_9C
  loc_A7A2D3: ConcatStr
  loc_A7A2D4: FStStrNoPop var_A0
  loc_A7A2D7: LitStr Chr(37) & "'"
  loc_A7A2DA: ConcatStr
  loc_A7A2DB: PopTmpLdAdStr
  loc_A7A2DF: FLdPr Me
  loc_A7A2E2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A2E5: NewIfNullPr clsbase
  loc_A7A2E8: Call clsbase.Filter(from_stack_1v)
  loc_A7A2ED: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A2F6: FFree1Ad var_88
  loc_A7A2F9: FFree1Var var_98 = ""
  loc_A7A2FC: LitStr "código de tipo de cuenta contable que comience con "
  loc_A7A2FF: FLdPr Me
  loc_A7A302: VCallAd Control_ID_FiltroMsk
  loc_A7A305: FStAdFunc var_88
  loc_A7A308: FLdPr var_88
  loc_A7A30B: LateIdLdVar var_98 DispID_22 0
  loc_A7A312: CStrVarTmp
  loc_A7A313: FStStrNoPop var_9C
  loc_A7A316: ConcatStr
  loc_A7A317: FStStrNoPop var_A0
  loc_A7A31A: FLdPr Me
  loc_A7A31D: MemStStrCopy
  loc_A7A321: FFreeStr var_9C = ""
  loc_A7A328: FFree1Ad var_88
  loc_A7A32B: FFree1Var var_98 = ""
  loc_A7A32E: Branch loc_A7A3CF
  loc_A7A331: FLdRfVar var_A2
  loc_A7A334: FLdPr Me
  loc_A7A337: VCallAd Control_ID_FiltroCbo
  loc_A7A33A: FStAdFunc var_88
  loc_A7A33D: FLdPr var_88
  loc_A7A340:  = Me.ListIndex
  loc_A7A345: FLdI2 var_A2
  loc_A7A348: LitI2_Byte 3
  loc_A7A34A: EqI2
  loc_A7A34B: FFree1Ad var_88
  loc_A7A34E: BranchF loc_A7A3CF
  loc_A7A351: LitStr "DetaTicu LIKE '" & Chr(37)
  loc_A7A354: FLdPr Me
  loc_A7A357: VCallAd Control_ID_FiltroMsk
  loc_A7A35A: FStAdFunc var_88
  loc_A7A35D: FLdPr var_88
  loc_A7A360: LateIdLdVar var_98 DispID_22 0
  loc_A7A367: CStrVarTmp
  loc_A7A368: FStStrNoPop var_9C
  loc_A7A36B: ConcatStr
  loc_A7A36C: FStStrNoPop var_A0
  loc_A7A36F: LitStr Chr(37) & "'"
  loc_A7A372: ConcatStr
  loc_A7A373: PopTmpLdAdStr
  loc_A7A377: FLdPr Me
  loc_A7A37A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A37D: NewIfNullPr clsbase
  loc_A7A380: Call clsbase.Filter(from_stack_1v)
  loc_A7A385: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A38E: FFree1Ad var_88
  loc_A7A391: FFree1Var var_98 = ""
  loc_A7A394: LitStr "detalle de tipo de cuenta contable que contiene "
  loc_A7A397: FLdPr Me
  loc_A7A39A: VCallAd Control_ID_FiltroMsk
  loc_A7A39D: FStAdFunc var_88
  loc_A7A3A0: FLdPr var_88
  loc_A7A3A3: LateIdLdVar var_98 DispID_22 0
  loc_A7A3AA: CStrVarTmp
  loc_A7A3AB: FStStrNoPop var_9C
  loc_A7A3AE: ConcatStr
  loc_A7A3AF: FStStrNoPop var_A0
  loc_A7A3B2: LitStr vbNullString
  loc_A7A3B5: ConcatStr
  loc_A7A3B6: FStStrNoPop var_A8
  loc_A7A3B9: FLdPr Me
  loc_A7A3BC: MemStStrCopy
  loc_A7A3C0: FFreeStr var_9C = "": var_A0 = ""
  loc_A7A3C9: FFree1Ad var_88
  loc_A7A3CC: FFree1Var var_98 = ""
  loc_A7A3CF: Branch loc_A7A3F6
  loc_A7A3D2: LitStr vbNullString
  loc_A7A3D5: FStStrCopy var_9C
  loc_A7A3D8: FLdRfVar var_9C
  loc_A7A3DB: FLdPr Me
  loc_A7A3DE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A3E1: NewIfNullPr clsbase
  loc_A7A3E4: Call clsbase.Filter(from_stack_1v)
  loc_A7A3E9: FFree1Str var_9C
  loc_A7A3EC: LitStr vbNullString
  loc_A7A3EF: FLdPr Me
  loc_A7A3F2: MemStStrCopy
  loc_A7A3F6: FLdRfVar var_AC
  loc_A7A3F9: FLdPr Me
  loc_A7A3FC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A3FF: NewIfNullPr clsbase
  loc_A7A402: from_stack_1 = clsbase.RecordCount
  loc_A7A407: ILdRf var_AC
  loc_A7A40A: LitI4 0
  loc_A7A40F: GtI4
  loc_A7A410: BranchF loc_A7A4AE
  loc_A7A413: FLdPr Me
  loc_A7A416: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A419: NewIfNullAd
  loc_A7A41C: FStAd var_B0 
  loc_A7A420: FLdRfVar var_B0
  loc_A7A423: CVarRef
  loc_A7A428: ILdRf Me
  loc_A7A42B: CastAd
  loc_A7A42E: FStAdFunc var_88
  loc_A7A431: FLdRfVar var_88
  loc_A7A434: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7A439: ILdRf var_B0
  loc_A7A43C: CastAd
  loc_A7A43F: FLdPr Me
  loc_A7A442: MemStAdFunc
  loc_A7A446: FFreeAd var_88 = ""
  loc_A7A44D: LitI4 0
  loc_A7A452: LitI4 1
  loc_A7A457: FLdRfVar var_C4
  loc_A7A45A: Redim
  loc_A7A464: FLdPr Me
  loc_A7A467: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7A46A: NewIfNullAd
  loc_A7A46D: FStAd var_88 
  loc_A7A471: FLdRfVar var_88
  loc_A7A474: CVarRef
  loc_A7A479: ParmAry1St
  loc_A7A47F: FLdPr Me
  loc_A7A482: VCallAd Control_ID_dgdABMS
  loc_A7A485: CVarAd
  loc_A7A489: ParmAry1St
  loc_A7A48F: FLdRfVar var_C4
  loc_A7A492: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7A497: ILdRf var_88
  loc_A7A49A: CastAd
  loc_A7A49D: FLdPr Me
  loc_A7A4A0: MemStAdFunc
  loc_A7A4A4: FLdRfVar var_C4
  loc_A7A4A7: Erase
  loc_A7A4A8: FFree1Ad var_88
  loc_A7A4AB: Branch loc_A7A4C2
  loc_A7A4AE: ILdRf Me
  loc_A7A4B1: CastAd
  loc_A7A4B4: FStAdFunc var_88
  loc_A7A4B7: FLdRfVar var_88
  loc_A7A4BA: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7A4BF: FFree1Ad var_88
  loc_A7A4C2: FLdPr Me
  loc_A7A4C5: VCallAd Control_ID_dgdABMS
  loc_A7A4C8: FStAdFunc var_B0
  loc_A7A4CB: LitI4 0
  loc_A7A4D0: FStStrCopy var_9C
  loc_A7A4D3: FLdRfVar var_9C
  loc_A7A4D6: FLdPr Me
  loc_A7A4D9: MemLdStr sFiltro
  loc_A7A4DC: FLdZeroAd var_B0
  loc_A7A4DF: FStAdFunc var_88
  loc_A7A4E2: FLdRfVar var_88
  loc_A7A4E5: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7A4EA: FFree1Str var_9C
  loc_A7A4ED: FFreeAd var_88 = ""
  loc_A7A4F4: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '947944
  'Data Table: 422308
  loc_947934: ILdI2 KeyAscii
  loc_947937: LitI2_Byte &H27
  loc_947939: EqI2
  loc_94793A: BranchF loc_947942
  loc_94793D: LitI2_Byte 0
  loc_94793F: IStI2 KeyAscii
  loc_947942: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95CEE4
  'Data Table: 422308
  loc_95CECC: FLdPr Me
  loc_95CECF: VCallAd Control_ID_dgdABMS
  loc_95CED2: FStAdFunc var_88
  loc_95CED5: FLdRfVar var_88
  loc_95CED8: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95CEDD: FFree1Ad var_88
  loc_95CEE0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9562D4
  'Data Table: 422308
  loc_9562BC: FLdPr Me
  loc_9562BF: VCallAd Control_ID_dgdABMS
  loc_9562C2: FStAdFunc var_88
  loc_9562C5: FLdRfVar var_88
  loc_9562C8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9562CD: FFree1Ad var_88
  loc_9562D0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '95D144
  'Data Table: 422308
  loc_95D12C: ILdRf Me
  loc_95D12F: FStAdNoPop
  loc_95D133: ImpAdLdRf MemVar_C44F9C
  loc_95D136: NewIfNullPr Me
  loc_95D139: Me.Global.Unload from_stack_1
  loc_95D13E: FFree1Ad var_88
  loc_95D141: ExitProcHresult
  loc_95D142: MulR8
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A040
  'Data Table: 422308
  loc_999FE4: FLdRfVar var_B4
  loc_999FE7: FLdRfVar var_B0
  loc_999FEA: FLdI2 ColIndex
  loc_999FED: CVarI2 var_A8
  loc_999FF0: PopAdLdVar
  loc_999FF1: FLdPr Me
  loc_999FF4: VCallAd Control_ID_dgdABMS
  loc_999FF7: FStAdFunc var_88
  loc_999FFA: FLdPr var_88
  loc_999FFD: LateIdLdVar var_98 DispID_105 0
  loc_99A004: CastAdVar Me
  loc_99A008: FStAdFunc var_AC
  loc_99A00B: FLdPr var_AC
  loc_99A00E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A013: FLdPr var_B0
  loc_99A016:  = Me.DataField
  loc_99A01B: FLdZeroAd var_B4
  loc_99A01E: PopTmpLdAdStr
  loc_99A022: FLdPr Me
  loc_99A025: MemLdRfVar from_stack_1.BuscarCLS
  loc_99A028: NewIfNullPr clsbase
  loc_99A02B: Call clsbase.Sort(from_stack_1v)
  loc_99A030: FFree1Str var_B8
  loc_99A033: FFreeAd var_88 = "": var_AC = ""
  loc_99A03C: FFree1Var var_98 = ""
  loc_99A03F: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95CBEC
  'Data Table: 422308
  loc_95CBD4: ILdRf Me
  loc_95CBD7: FStAdNoPop
  loc_95CBDB: ImpAdLdRf MemVar_C44F9C
  loc_95CBDE: NewIfNullPr Me
  loc_95CBE1: Me.Global.Unload from_stack_1
  loc_95CBE6: FFree1Ad var_88
  loc_95CBE9: ExitProcHresult
End Sub

Private Sub Form_Load() 'A476C4
  'Data Table: 422308
  loc_A47488: FLdPr Me
  loc_A4748B: MemLdI2 iPeriInfo
  loc_A4748E: LitI2_Byte 0
  loc_A47490: EqI2
  loc_A47491: BranchF loc_A4749D
  loc_A47494: ImpAdLdI2 MemVar_C3D064
  loc_A47497: FLdPr Me
  loc_A4749A: MemStI2 iPeriInfo
  loc_A4749D: FLdPr Me
  loc_A474A0: MemLdI2 iPeriInfo
  loc_A474A3: ImpAdLdI2 MemVar_C3D064
  loc_A474A6: NeI2
  loc_A474A7: BranchF loc_A474E1
  loc_A474AA: FLdRfVar var_9C
  loc_A474AD: FLdPr Me
  loc_A474B0:  = Me.Caption
  loc_A474B5: ILdRf var_9C
  loc_A474B8: LitStr " - Periodo: "
  loc_A474BB: ConcatStr
  loc_A474BC: FStStrNoPop var_A0
  loc_A474BF: FLdPr Me
  loc_A474C2: MemLdI2 iPeriInfo
  loc_A474C5: CStrUI1
  loc_A474C7: FStStrNoPop var_A4
  loc_A474CA: ConcatStr
  loc_A474CB: FStStrNoPop var_A8
  loc_A474CE: FLdPr Me
  loc_A474D1: Me.Caption = from_stack_1
  loc_A474D6: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_A474E1: FLdPr Me
  loc_A474E4: MemLdStr BuscoxCodiCuco
  loc_A474E7: LitStr vbNullString
  loc_A474EA: NeStr
  loc_A474EC: BranchF loc_A4750F
  loc_A474EF: LitStr " AND cc.CodiCuco LIKE '"
  loc_A474F2: FLdPr Me
  loc_A474F5: MemLdStr BuscoxCodiCuco
  loc_A474F8: ConcatStr
  loc_A474F9: FStStrNoPop var_9C
  loc_A474FC: LitStr Chr(37) & "'"
  loc_A474FF: ConcatStr
  loc_A47500: FStStr var_8C
  loc_A47503: FFree1Str var_9C
  loc_A47506: LitStr ", CodiCuco"
  loc_A47509: FStStrCopy var_94
  loc_A4750C: Branch loc_A4751B
  loc_A4750F: LitStr vbNullString
  loc_A47512: FStStrCopy var_8C
  loc_A47515: LitStr vbNullString
  loc_A47518: FStStrCopy var_94
  loc_A4751B: FLdPr Me
  loc_A4751E: MemLdStr BuscoxDetaCuco
  loc_A47521: LitStr vbNullString
  loc_A47524: NeStr
  loc_A47526: BranchF loc_A47549
  loc_A47529: LitStr " AND cc.DetaCuco LIKE '" & Chr(37)
  loc_A4752C: FLdPr Me
  loc_A4752F: MemLdStr BuscoxDetaCuco
  loc_A47532: ConcatStr
  loc_A47533: FStStrNoPop var_9C
  loc_A47536: LitStr Chr(37) & "'"
  loc_A47539: ConcatStr
  loc_A4753A: FStStr var_90
  loc_A4753D: FFree1Str var_9C
  loc_A47540: LitStr ", DetaCuco"
  loc_A47543: FStStrCopy var_98
  loc_A47546: Branch loc_A47555
  loc_A47549: LitStr vbNullString
  loc_A4754C: FStStrCopy var_90
  loc_A4754F: LitStr vbNullString
  loc_A47552: FStStrCopy var_98
  loc_A47555: LitStr "SELECT PeriInfo, CodiCuco, DetaCuco, IF(ImpuCuco=0,'No','Si') ImpuCuco, cc.CodiTicu, cc.AltaUsua, DetaTicu"
  loc_A47558: LitStr " FROM infogov.cuentacontable cc"
  loc_A4755B: ConcatStr
  loc_A4755C: FStStrNoPop var_9C
  loc_A4755F: LitStr " INNER JOIN tipocuco ON tipocuco.CodiTicu = cc.CodiTicu"
  loc_A47562: ConcatStr
  loc_A47563: FStStrNoPop var_A0
  loc_A47566: LitStr " WHERE cc.PeriInfo = "
  loc_A47569: ConcatStr
  loc_A4756A: FStStrNoPop var_A4
  loc_A4756D: FLdPr Me
  loc_A47570: MemLdI2 iPeriInfo
  loc_A47573: CStrUI1
  loc_A47575: FStStrNoPop var_A8
  loc_A47578: ConcatStr
  loc_A47579: FStStrNoPop var_AC
  loc_A4757C: FLdPr Me
  loc_A4757F: MemLdStr sWhere
  loc_A47582: ConcatStr
  loc_A47583: FStStrNoPop var_B0
  loc_A47586: ILdRf var_88
  loc_A47589: ConcatStr
  loc_A4758A: FStStrNoPop var_B4
  loc_A4758D: ILdRf var_8C
  loc_A47590: ConcatStr
  loc_A47591: FStStrNoPop var_B8
  loc_A47594: ILdRf var_90
  loc_A47597: ConcatStr
  loc_A47598: FStStrNoPop var_BC
  loc_A4759B: LitStr " ORDER BY cc.PeriInfo"
  loc_A4759E: ConcatStr
  loc_A4759F: FStStrNoPop var_C0
  loc_A475A2: ILdRf var_94
  loc_A475A5: ConcatStr
  loc_A475A6: FStStrNoPop var_C4
  loc_A475A9: ILdRf var_98
  loc_A475AC: ConcatStr
  loc_A475AD: FStStrNoPop var_C8
  loc_A475B0: FLdPr Me
  loc_A475B3: MemLdRfVar from_stack_1.BuscarCLS
  loc_A475B6: NewIfNullPr clsbase
  loc_A475B9: Call clsbase.RedefineRS(from_stack_1v)
  loc_A475BE: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A475D9: LitVarI2 var_D8, 0
  loc_A475DE: PopAdLdVar
  loc_A475DF: LitStr "Cuenta Contable (Código)"
  loc_A475E2: FLdPr Me
  loc_A475E5: VCallAd Control_ID_FiltroCbo
  loc_A475E8: FStAdFunc var_DC
  loc_A475EB: FLdPr var_DC
  loc_A475EE: Me.AddItem from_stack_1, from_stack_2
  loc_A475F3: FFree1Ad var_DC
  loc_A475F6: LitVarI2 var_D8, 1
  loc_A475FB: PopAdLdVar
  loc_A475FC: LitStr "Cuenta Contable (Detalle)"
  loc_A475FF: FLdPr Me
  loc_A47602: VCallAd Control_ID_FiltroCbo
  loc_A47605: FStAdFunc var_DC
  loc_A47608: FLdPr var_DC
  loc_A4760B: Me.AddItem from_stack_1, from_stack_2
  loc_A47610: FFree1Ad var_DC
  loc_A47613: LitVarI2 var_D8, 2
  loc_A47618: PopAdLdVar
  loc_A47619: LitStr "Tipo de Cuenta Contable (Código)"
  loc_A4761C: FLdPr Me
  loc_A4761F: VCallAd Control_ID_FiltroCbo
  loc_A47622: FStAdFunc var_DC
  loc_A47625: FLdPr var_DC
  loc_A47628: Me.AddItem from_stack_1, from_stack_2
  loc_A4762D: FFree1Ad var_DC
  loc_A47630: LitVarI2 var_D8, 3
  loc_A47635: PopAdLdVar
  loc_A47636: LitStr "Tipo de Cuenta Contable (Detalle)"
  loc_A47639: FLdPr Me
  loc_A4763C: VCallAd Control_ID_FiltroCbo
  loc_A4763F: FStAdFunc var_DC
  loc_A47642: FLdPr var_DC
  loc_A47645: Me.AddItem from_stack_1, from_stack_2
  loc_A4764A: FFree1Ad var_DC
  loc_A4764D: LitI2_Byte 1
  loc_A4764F: FLdPr Me
  loc_A47652: VCallAd Control_ID_FiltroCbo
  loc_A47655: FStAdFunc var_DC
  loc_A47658: FLdPr var_DC
  loc_A4765B: Me.ListIndex = from_stack_1
  loc_A47660: FFree1Ad var_DC
  loc_A47663: LitI4 0
  loc_A47668: LitI4 1
  loc_A4766D: FLdRfVar var_E0
  loc_A47670: Redim
  loc_A4767A: FLdPr Me
  loc_A4767D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A47680: NewIfNullAd
  loc_A47683: FStAd var_DC 
  loc_A47687: FLdRfVar var_DC
  loc_A4768A: CVarRef
  loc_A4768F: ParmAry1St
  loc_A47695: FLdPr Me
  loc_A47698: VCallAd Control_ID_dgdABMS
  loc_A4769B: CVarAd
  loc_A4769F: ParmAry1St
  loc_A476A5: FLdRfVar var_E0
  loc_A476A8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A476AD: ILdRf var_DC
  loc_A476B0: CastAd
  loc_A476B3: FLdPr Me
  loc_A476B6: MemStAdFunc
  loc_A476BA: FLdRfVar var_E0
  loc_A476BD: Erase
  loc_A476BE: FFree1Ad var_DC
  loc_A476C1: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '97C970
  'Data Table: 422308
  loc_97C93C: LitI2_Byte 0
  loc_97C93E: FLdPr Me
  loc_97C941: MemStI2 iPeriInfo
  loc_97C944: LitStr vbNullString
  loc_97C947: FLdPr Me
  loc_97C94A: MemStStrCopy
  loc_97C94E: LitStr vbNullString
  loc_97C951: FLdPr Me
  loc_97C954: MemStStrCopy
  loc_97C958: ILdRf Me
  loc_97C95B: FStAdNoPop
  loc_97C95F: ImpAdLdRf MemVar_C44F9C
  loc_97C962: NewIfNullPr Me
  loc_97C965: Me.Global.Unload from_stack_1
  loc_97C96A: FFree1Ad var_88
  loc_97C96D: ExitProcHresult
End Sub

Private Sub Form_Activate() '94F890
  'Data Table: 422308
  loc_94F87C: FLdPr Me
  loc_94F87F: VCallAd Control_ID_FiltroMsk
  loc_94F882: CVarAd
  loc_94F886: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94F88B: FFree1Var var_94 = ""
  loc_94F88E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A3C0
  'Data Table: 422308
  loc_96A3A4: On Error Resume Next
  loc_96A3A9: ILdI2 KeyAscii
  loc_96A3AC: CI4UI1
  loc_96A3AD: LitI4 &HD
  loc_96A3B2: EqI4
  loc_96A3B3: BranchF loc_96A3BD
  loc_96A3B8: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A3BF: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '422834
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '422843
  iPeriInfo = Value
End Sub

Public Function BuscoxCodiCucoGet() '422852
  BuscoxCodiCucoGet = BuscoxCodiCuco
End Function

Public Sub BuscoxCodiCucoPut(Value) '422861
  BuscoxCodiCuco = Value
End Sub

Public Function BuscoxDetaCucoGet() '422870
  BuscoxDetaCucoGet = BuscoxDetaCuco
End Function

Public Sub BuscoxDetaCucoPut(Value) '42287F
  BuscoxDetaCuco = Value
End Sub

Public Function MuestroAnuladosGet() '42288E
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '42289D
  MuestroAnulados = Value
End Sub

Public Function sWhereGet() '4228AC
  sWhereGet = sWhere
End Function

Public Sub sWherePut(Value) '4228BB
  sWhere = Value
End Sub

Public Function global_4334344Get() '4228CA
  global_4334344Get = global_4334344
End Function

Public Sub global_4334344Put(Value) '4228E4
  global_4334344 = Value
End Sub

Public Sub global_4334344Set(Value) '4228FE
  global_4334344 = Value
End Sub

Public Function sFiltroGet() '422918
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '422927
  sFiltro = Value
End Sub
