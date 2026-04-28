VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscDeretenciones
  Caption = "Buscar Categorías por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscDeretenciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
  ClientHeight = 6315
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
    Top = 720
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
      OleObjectBlob = "bscDeretenciones.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5640
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1800
    Width = 10695
    Height = 3615
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscDeretenciones.frx":092A
  End
  Begin VB.Label sDetaReteLbl
    Left = 2280
    Top = 240
    Width = 8460
    Height = 420
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label iCodiReteLbl
    Left = 1680
    Top = 240
    Width = 300
    Height = 420
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Retención:"
    Left = 240
    Top = 240
    Width = 1305
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "bscDeretenciones"

Public iPeriInfo As Integer
Public iCodiRete As Integer
Public sDetaRete As String
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() 'A03E3C
  'Data Table: 428688
  loc_A03CD0: LitVarStr var_94, vbNullString
  loc_A03CD5: PopAdLdVar
  loc_A03CD6: FLdPr Me
  loc_A03CD9: VCallAd Control_ID_FiltroMsk
  loc_A03CDC: FStAdFunc var_A8
  loc_A03CDF: FLdPr var_A8
  loc_A03CE2: LateIdSt
  loc_A03CE7: FFree1Ad var_A8
  loc_A03CEA: FLdRfVar var_AA
  loc_A03CED: FLdPr Me
  loc_A03CF0: VCallAd Control_ID_FiltroCbo
  loc_A03CF3: FStAdFunc var_A8
  loc_A03CF6: FLdPr var_A8
  loc_A03CF9:  = Me.ListIndex
  loc_A03CFE: FLdI2 var_AA
  loc_A03D01: FStI2 var_AC
  loc_A03D04: FFree1Ad var_A8
  loc_A03D07: FLdI2 var_AC
  loc_A03D0A: LitI2_Byte 0
  loc_A03D0C: EqI2
  loc_A03D0D: BranchF loc_A03D47
  loc_A03D10: LitVarStr var_94, "##"
  loc_A03D15: PopAdLdVar
  loc_A03D16: FLdPr Me
  loc_A03D19: VCallAd Control_ID_FiltroMsk
  loc_A03D1C: FStAdFunc var_A8
  loc_A03D1F: FLdPr var_A8
  loc_A03D22: LateIdSt
  loc_A03D27: FFree1Ad var_A8
  loc_A03D2A: LitStr "CodiRete"
  loc_A03D2D: FStStrCopy var_B0
  loc_A03D30: FLdRfVar var_B0
  loc_A03D33: FLdPr Me
  loc_A03D36: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03D39: NewIfNullPr clsbase
  loc_A03D3C: Call clsbase.Sort(from_stack_1v)
  loc_A03D41: FFree1Str var_B0
  loc_A03D44: Branch loc_A03E3B
  loc_A03D47: FLdI2 var_AC
  loc_A03D4A: LitI2_Byte 1
  loc_A03D4C: EqI2
  loc_A03D4D: BranchF loc_A03D87
  loc_A03D50: LitVarStr var_94, vbNullString
  loc_A03D55: PopAdLdVar
  loc_A03D56: FLdPr Me
  loc_A03D59: VCallAd Control_ID_FiltroMsk
  loc_A03D5C: FStAdFunc var_A8
  loc_A03D5F: FLdPr var_A8
  loc_A03D62: LateIdSt
  loc_A03D67: FFree1Ad var_A8
  loc_A03D6A: LitStr "DetaRete"
  loc_A03D6D: FStStrCopy var_B0
  loc_A03D70: FLdRfVar var_B0
  loc_A03D73: FLdPr Me
  loc_A03D76: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03D79: NewIfNullPr clsbase
  loc_A03D7C: Call clsbase.Sort(from_stack_1v)
  loc_A03D81: FFree1Str var_B0
  loc_A03D84: Branch loc_A03E3B
  loc_A03D87: FLdI2 var_AC
  loc_A03D8A: LitI2_Byte 2
  loc_A03D8C: EqI2
  loc_A03D8D: BranchF loc_A03DC7
  loc_A03D90: LitVarStr var_94, "##"
  loc_A03D95: PopAdLdVar
  loc_A03D96: FLdPr Me
  loc_A03D99: VCallAd Control_ID_FiltroMsk
  loc_A03D9C: FStAdFunc var_A8
  loc_A03D9F: FLdPr var_A8
  loc_A03DA2: LateIdSt
  loc_A03DA7: FFree1Ad var_A8
  loc_A03DAA: LitStr "CodiDere"
  loc_A03DAD: FStStrCopy var_B0
  loc_A03DB0: FLdRfVar var_B0
  loc_A03DB3: FLdPr Me
  loc_A03DB6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03DB9: NewIfNullPr clsbase
  loc_A03DBC: Call clsbase.Sort(from_stack_1v)
  loc_A03DC1: FFree1Str var_B0
  loc_A03DC4: Branch loc_A03E3B
  loc_A03DC7: FLdI2 var_AC
  loc_A03DCA: LitI2_Byte 3
  loc_A03DCC: EqI2
  loc_A03DCD: BranchF loc_A03E07
  loc_A03DD0: LitVarStr var_94, vbNullString
  loc_A03DD5: PopAdLdVar
  loc_A03DD6: FLdPr Me
  loc_A03DD9: VCallAd Control_ID_FiltroMsk
  loc_A03DDC: FStAdFunc var_A8
  loc_A03DDF: FLdPr var_A8
  loc_A03DE2: LateIdSt
  loc_A03DE7: FFree1Ad var_A8
  loc_A03DEA: LitStr "DetaDere"
  loc_A03DED: FStStrCopy var_B0
  loc_A03DF0: FLdRfVar var_B0
  loc_A03DF3: FLdPr Me
  loc_A03DF6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03DF9: NewIfNullPr clsbase
  loc_A03DFC: Call clsbase.Sort(from_stack_1v)
  loc_A03E01: FFree1Str var_B0
  loc_A03E04: Branch loc_A03E3B
  loc_A03E07: LitVarStr var_94, vbNullString
  loc_A03E0C: PopAdLdVar
  loc_A03E0D: FLdPr Me
  loc_A03E10: VCallAd Control_ID_FiltroMsk
  loc_A03E13: FStAdFunc var_A8
  loc_A03E16: FLdPr var_A8
  loc_A03E19: LateIdSt
  loc_A03E1E: FFree1Ad var_A8
  loc_A03E21: LitStr "CodiRete"
  loc_A03E24: FStStrCopy var_B0
  loc_A03E27: FLdRfVar var_B0
  loc_A03E2A: FLdPr Me
  loc_A03E2D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03E30: NewIfNullPr clsbase
  loc_A03E33: Call clsbase.Sort(from_stack_1v)
  loc_A03E38: FFree1Str var_B0
  loc_A03E3B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '955EF8
  'Data Table: 428688
  loc_955EE0: ILdRf Me
  loc_955EE3: FStAdNoPop
  loc_955EE7: ImpAdLdRf MemVar_C44F9C
  loc_955EEA: NewIfNullPr Me
  loc_955EED: Me.Global.Unload from_stack_1
  loc_955EF2: FFree1Ad var_88
  loc_955EF5: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94FC38
  'Data Table: 428688
  loc_94FC24: FLdPr Me
  loc_94FC27: VCallAd Control_ID_FiltroMsk
  loc_94FC2A: CVarAd
  loc_94FC2E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FC33: FFree1Var var_94 = ""
  loc_94FC36: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A783BC
  'Data Table: 428688
  loc_A77FF0: ILdRf Me
  loc_A77FF3: CastAd
  loc_A77FF6: FStAdFunc var_88
  loc_A77FF9: FLdRfVar var_88
  loc_A77FFC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A78001: FFree1Ad var_88
  loc_A78004: FLdPr Me
  loc_A78007: VCallAd Control_ID_FiltroMsk
  loc_A7800A: FStAdFunc var_88
  loc_A7800D: FLdPr var_88
  loc_A78010: LateIdLdVar var_98 DispID_22 0
  loc_A78017: CStrVarTmp
  loc_A78018: FStStrNoPop var_9C
  loc_A7801B: ImpAdCallI2 Trim$()
  loc_A78020: FStStrNoPop var_A0
  loc_A78023: LitStr vbNullString
  loc_A78026: NeStr
  loc_A78028: FFreeStr var_9C = ""
  loc_A7802F: FFree1Ad var_88
  loc_A78032: FFree1Var var_98 = ""
  loc_A78035: BranchF loc_A78298
  loc_A78038: FLdRfVar var_A2
  loc_A7803B: FLdPr Me
  loc_A7803E: VCallAd Control_ID_FiltroCbo
  loc_A78041: FStAdFunc var_88
  loc_A78044: FLdPr var_88
  loc_A78047:  = Me.ListIndex
  loc_A7804C: FLdI2 var_A2
  loc_A7804F: LitI2_Byte 0
  loc_A78051: EqI2
  loc_A78052: FFree1Ad var_88
  loc_A78055: BranchF loc_A780C7
  loc_A78058: LitStr "CodiRete = "
  loc_A7805B: FLdPr Me
  loc_A7805E: VCallAd Control_ID_FiltroMsk
  loc_A78061: FStAdFunc var_88
  loc_A78064: FLdPr var_88
  loc_A78067: LateIdLdVar var_98 DispID_22 0
  loc_A7806E: CStrVarTmp
  loc_A7806F: FStStrNoPop var_9C
  loc_A78072: ConcatStr
  loc_A78073: PopTmpLdAdStr
  loc_A78077: FLdPr Me
  loc_A7807A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7807D: NewIfNullPr clsbase
  loc_A78080: Call clsbase.Filter(from_stack_1v)
  loc_A78085: FFreeStr var_9C = ""
  loc_A7808C: FFree1Ad var_88
  loc_A7808F: FFree1Var var_98 = ""
  loc_A78092: LitStr "código sea igual a "
  loc_A78095: FLdPr Me
  loc_A78098: VCallAd Control_ID_FiltroMsk
  loc_A7809B: FStAdFunc var_88
  loc_A7809E: FLdPr var_88
  loc_A780A1: LateIdLdVar var_98 DispID_22 0
  loc_A780A8: CStrVarTmp
  loc_A780A9: FStStrNoPop var_9C
  loc_A780AC: ConcatStr
  loc_A780AD: FStStrNoPop var_A0
  loc_A780B0: FLdPr Me
  loc_A780B3: MemStStrCopy
  loc_A780B7: FFreeStr var_9C = ""
  loc_A780BE: FFree1Ad var_88
  loc_A780C1: FFree1Var var_98 = ""
  loc_A780C4: Branch loc_A78295
  loc_A780C7: FLdRfVar var_A2
  loc_A780CA: FLdPr Me
  loc_A780CD: VCallAd Control_ID_FiltroCbo
  loc_A780D0: FStAdFunc var_88
  loc_A780D3: FLdPr var_88
  loc_A780D6:  = Me.ListIndex
  loc_A780DB: FLdI2 var_A2
  loc_A780DE: LitI2_Byte 1
  loc_A780E0: EqI2
  loc_A780E1: FFree1Ad var_88
  loc_A780E4: BranchF loc_A78168
  loc_A780E7: LitStr "DetaRete LIKE '" & Chr(37)
  loc_A780EA: FLdPr Me
  loc_A780ED: VCallAd Control_ID_FiltroMsk
  loc_A780F0: FStAdFunc var_88
  loc_A780F3: FLdPr var_88
  loc_A780F6: LateIdLdVar var_98 DispID_22 0
  loc_A780FD: CStrVarTmp
  loc_A780FE: FStStrNoPop var_9C
  loc_A78101: ConcatStr
  loc_A78102: FStStrNoPop var_A0
  loc_A78105: LitStr Chr(37) & "'"
  loc_A78108: ConcatStr
  loc_A78109: PopTmpLdAdStr
  loc_A7810D: FLdPr Me
  loc_A78110: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78113: NewIfNullPr clsbase
  loc_A78116: Call clsbase.Filter(from_stack_1v)
  loc_A7811B: FFreeStr var_9C = "": var_A0 = ""
  loc_A78124: FFree1Ad var_88
  loc_A78127: FFree1Var var_98 = ""
  loc_A7812A: LitStr "detalle que contiene "
  loc_A7812D: FLdPr Me
  loc_A78130: VCallAd Control_ID_FiltroMsk
  loc_A78133: FStAdFunc var_88
  loc_A78136: FLdPr var_88
  loc_A78139: LateIdLdVar var_98 DispID_22 0
  loc_A78140: CStrVarTmp
  loc_A78141: FStStrNoPop var_9C
  loc_A78144: ConcatStr
  loc_A78145: FStStrNoPop var_A0
  loc_A78148: LitStr vbNullString
  loc_A7814B: ConcatStr
  loc_A7814C: FStStrNoPop var_A8
  loc_A7814F: FLdPr Me
  loc_A78152: MemStStrCopy
  loc_A78156: FFreeStr var_9C = "": var_A0 = ""
  loc_A7815F: FFree1Ad var_88
  loc_A78162: FFree1Var var_98 = ""
  loc_A78165: Branch loc_A78295
  loc_A78168: FLdRfVar var_A2
  loc_A7816B: FLdPr Me
  loc_A7816E: VCallAd Control_ID_FiltroCbo
  loc_A78171: FStAdFunc var_88
  loc_A78174: FLdPr var_88
  loc_A78177:  = Me.ListIndex
  loc_A7817C: FLdI2 var_A2
  loc_A7817F: LitI2_Byte 2
  loc_A78181: EqI2
  loc_A78182: FFree1Ad var_88
  loc_A78185: BranchF loc_A781F7
  loc_A78188: LitStr "CodiDere = "
  loc_A7818B: FLdPr Me
  loc_A7818E: VCallAd Control_ID_FiltroMsk
  loc_A78191: FStAdFunc var_88
  loc_A78194: FLdPr var_88
  loc_A78197: LateIdLdVar var_98 DispID_22 0
  loc_A7819E: CStrVarTmp
  loc_A7819F: FStStrNoPop var_9C
  loc_A781A2: ConcatStr
  loc_A781A3: PopTmpLdAdStr
  loc_A781A7: FLdPr Me
  loc_A781AA: MemLdRfVar from_stack_1.BuscarCLS
  loc_A781AD: NewIfNullPr clsbase
  loc_A781B0: Call clsbase.Filter(from_stack_1v)
  loc_A781B5: FFreeStr var_9C = ""
  loc_A781BC: FFree1Ad var_88
  loc_A781BF: FFree1Var var_98 = ""
  loc_A781C2: LitStr "categoría sea igual a "
  loc_A781C5: FLdPr Me
  loc_A781C8: VCallAd Control_ID_FiltroMsk
  loc_A781CB: FStAdFunc var_88
  loc_A781CE: FLdPr var_88
  loc_A781D1: LateIdLdVar var_98 DispID_22 0
  loc_A781D8: CStrVarTmp
  loc_A781D9: FStStrNoPop var_9C
  loc_A781DC: ConcatStr
  loc_A781DD: FStStrNoPop var_A0
  loc_A781E0: FLdPr Me
  loc_A781E3: MemStStrCopy
  loc_A781E7: FFreeStr var_9C = ""
  loc_A781EE: FFree1Ad var_88
  loc_A781F1: FFree1Var var_98 = ""
  loc_A781F4: Branch loc_A78295
  loc_A781F7: FLdRfVar var_A2
  loc_A781FA: FLdPr Me
  loc_A781FD: VCallAd Control_ID_FiltroCbo
  loc_A78200: FStAdFunc var_88
  loc_A78203: FLdPr var_88
  loc_A78206:  = Me.ListIndex
  loc_A7820B: FLdI2 var_A2
  loc_A7820E: LitI2_Byte 3
  loc_A78210: EqI2
  loc_A78211: FFree1Ad var_88
  loc_A78214: BranchF loc_A78295
  loc_A78217: LitStr "DetaDere LIKE '" & Chr(37)
  loc_A7821A: FLdPr Me
  loc_A7821D: VCallAd Control_ID_FiltroMsk
  loc_A78220: FStAdFunc var_88
  loc_A78223: FLdPr var_88
  loc_A78226: LateIdLdVar var_98 DispID_22 0
  loc_A7822D: CStrVarTmp
  loc_A7822E: FStStrNoPop var_9C
  loc_A78231: ConcatStr
  loc_A78232: FStStrNoPop var_A0
  loc_A78235: LitStr Chr(37) & "'"
  loc_A78238: ConcatStr
  loc_A78239: PopTmpLdAdStr
  loc_A7823D: FLdPr Me
  loc_A78240: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78243: NewIfNullPr clsbase
  loc_A78246: Call clsbase.Filter(from_stack_1v)
  loc_A7824B: FFreeStr var_9C = "": var_A0 = ""
  loc_A78254: FFree1Ad var_88
  loc_A78257: FFree1Var var_98 = ""
  loc_A7825A: LitStr "categoría contiene "
  loc_A7825D: FLdPr Me
  loc_A78260: VCallAd Control_ID_FiltroMsk
  loc_A78263: FStAdFunc var_88
  loc_A78266: FLdPr var_88
  loc_A78269: LateIdLdVar var_98 DispID_22 0
  loc_A78270: CStrVarTmp
  loc_A78271: FStStrNoPop var_9C
  loc_A78274: ConcatStr
  loc_A78275: FStStrNoPop var_A0
  loc_A78278: LitStr vbNullString
  loc_A7827B: ConcatStr
  loc_A7827C: FStStrNoPop var_A8
  loc_A7827F: FLdPr Me
  loc_A78282: MemStStrCopy
  loc_A78286: FFreeStr var_9C = "": var_A0 = ""
  loc_A7828F: FFree1Ad var_88
  loc_A78292: FFree1Var var_98 = ""
  loc_A78295: Branch loc_A782BC
  loc_A78298: LitStr vbNullString
  loc_A7829B: FStStrCopy var_9C
  loc_A7829E: FLdRfVar var_9C
  loc_A782A1: FLdPr Me
  loc_A782A4: MemLdRfVar from_stack_1.BuscarCLS
  loc_A782A7: NewIfNullPr clsbase
  loc_A782AA: Call clsbase.Filter(from_stack_1v)
  loc_A782AF: FFree1Str var_9C
  loc_A782B2: LitStr vbNullString
  loc_A782B5: FLdPr Me
  loc_A782B8: MemStStrCopy
  loc_A782BC: FLdRfVar var_AC
  loc_A782BF: FLdPr Me
  loc_A782C2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A782C5: NewIfNullPr clsbase
  loc_A782C8: from_stack_1 = clsbase.RecordCount
  loc_A782CD: ILdRf var_AC
  loc_A782D0: LitI4 0
  loc_A782D5: GtI4
  loc_A782D6: BranchF loc_A78374
  loc_A782D9: FLdPr Me
  loc_A782DC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A782DF: NewIfNullAd
  loc_A782E2: FStAd var_B0 
  loc_A782E6: FLdRfVar var_B0
  loc_A782E9: CVarRef
  loc_A782EE: ILdRf Me
  loc_A782F1: CastAd
  loc_A782F4: FStAdFunc var_88
  loc_A782F7: FLdRfVar var_88
  loc_A782FA: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A782FF: ILdRf var_B0
  loc_A78302: CastAd
  loc_A78305: FLdPr Me
  loc_A78308: MemStAdFunc
  loc_A7830C: FFreeAd var_88 = ""
  loc_A78313: LitI4 0
  loc_A78318: LitI4 1
  loc_A7831D: FLdRfVar var_C4
  loc_A78320: Redim
  loc_A7832A: FLdPr Me
  loc_A7832D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78330: NewIfNullAd
  loc_A78333: FStAd var_88 
  loc_A78337: FLdRfVar var_88
  loc_A7833A: CVarRef
  loc_A7833F: ParmAry1St
  loc_A78345: FLdPr Me
  loc_A78348: VCallAd Control_ID_dgdABMS
  loc_A7834B: CVarAd
  loc_A7834F: ParmAry1St
  loc_A78355: FLdRfVar var_C4
  loc_A78358: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7835D: ILdRf var_88
  loc_A78360: CastAd
  loc_A78363: FLdPr Me
  loc_A78366: MemStAdFunc
  loc_A7836A: FLdRfVar var_C4
  loc_A7836D: Erase
  loc_A7836E: FFree1Ad var_88
  loc_A78371: Branch loc_A78388
  loc_A78374: ILdRf Me
  loc_A78377: CastAd
  loc_A7837A: FStAdFunc var_88
  loc_A7837D: FLdRfVar var_88
  loc_A78380: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A78385: FFree1Ad var_88
  loc_A78388: FLdPr Me
  loc_A7838B: VCallAd Control_ID_dgdABMS
  loc_A7838E: FStAdFunc var_B0
  loc_A78391: LitI4 0
  loc_A78396: FStStrCopy var_9C
  loc_A78399: FLdRfVar var_9C
  loc_A7839C: FLdPr Me
  loc_A7839F: MemLdStr sFiltro
  loc_A783A2: FLdZeroAd var_B0
  loc_A783A5: FStAdFunc var_88
  loc_A783A8: FLdRfVar var_88
  loc_A783AB: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A783B0: FFree1Str var_9C
  loc_A783B3: FFreeAd var_88 = ""
  loc_A783BA: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996A44
  'Data Table: 428688
  loc_9969E0: ILdI2 KeyAscii
  loc_9969E3: LitI2_Byte &H27
  loc_9969E5: EqI2
  loc_9969E6: BranchF loc_9969EE
  loc_9969E9: LitI2_Byte 0
  loc_9969EB: IStI2 KeyAscii
  loc_9969EE: FLdRfVar var_88
  loc_9969F1: FLdPr Me
  loc_9969F4: MemLdRfVar from_stack_1.BuscarCLS
  loc_9969F7: NewIfNullPr clsbase
  loc_9969FA: from_stack_1 = clsbase.RecordCount
  loc_9969FF: ILdRf var_88
  loc_996A02: LitI4 0
  loc_996A07: EqI4
  loc_996A08: ILdI2 KeyAscii
  loc_996A0B: CI4UI1
  loc_996A0C: LitI4 8
  loc_996A11: NeI4
  loc_996A12: AndI4
  loc_996A13: FLdPr Me
  loc_996A16: VCallAd Control_ID_FiltroMsk
  loc_996A19: FStAdFunc var_8C
  loc_996A1C: FLdPr var_8C
  loc_996A1F: LateIdLdVar var_9C DispID_16 0
  loc_996A26: CStrVarTmp
  loc_996A27: FStStrNoPop var_A0
  loc_996A2A: LitStr vbNullString
  loc_996A2D: EqStr
  loc_996A2F: AndI4
  loc_996A30: FFree1Str var_A0
  loc_996A33: FFree1Ad var_8C
  loc_996A36: FFree1Var var_9C = ""
  loc_996A39: BranchF loc_996A41
  loc_996A3C: LitI2_Byte 0
  loc_996A3E: IStI2 KeyAscii
  loc_996A41: ExitProcHresult
End Sub

Private Sub Form_Load() 'A35524
  'Data Table: 428688
  loc_A35340: FLdPr Me
  loc_A35343: MemLdI2 iPeriInfo
  loc_A35346: LitI2_Byte 0
  loc_A35348: EqI2
  loc_A35349: BranchF loc_A35355
  loc_A3534C: ImpAdLdI2 MemVar_C3D064
  loc_A3534F: FLdPr Me
  loc_A35352: MemStI2 iPeriInfo
  loc_A35355: FLdPr Me
  loc_A35358: MemLdI2 iCodiRete
  loc_A3535B: CStrUI1
  loc_A3535D: FStStrNoPop var_88
  loc_A35360: FLdPr Me
  loc_A35363: VCallAd Control_ID_iCodiReteLbl
  loc_A35366: FStAdFunc var_8C
  loc_A35369: FLdPr var_8C
  loc_A3536C: Me.Caption = from_stack_1
  loc_A35371: FFree1Str var_88
  loc_A35374: FFree1Ad var_8C
  loc_A35377: FLdPr Me
  loc_A3537A: MemLdRfVar from_stack_1.sDetaRete
  loc_A3537D: CVarRef
  loc_A35382: LitVarStr var_AC, "Ingrese el código de retención..."
  loc_A35387: FStVarCopyObj var_BC
  loc_A3538A: FLdRfVar var_BC
  loc_A3538D: FLdPr Me
  loc_A35390: MemLdI2 iCodiRete
  loc_A35393: LitI2_Byte 0
  loc_A35395: EqI2
  loc_A35396: CVarBoolI2 var_9C
  loc_A3539A: FLdRfVar var_DC
  loc_A3539D: ImpAdCallFPR4  = IIf(, , )
  loc_A353A2: FLdRfVar var_DC
  loc_A353A5: CStrVarVal var_88
  loc_A353A9: FLdPr Me
  loc_A353AC: VCallAd Control_ID_sDetaReteLbl
  loc_A353AF: FStAdFunc var_8C
  loc_A353B2: FLdPr var_8C
  loc_A353B5: Me.Caption = from_stack_1
  loc_A353BA: FFree1Str var_88
  loc_A353BD: FFree1Ad var_8C
  loc_A353C0: FFreeVar var_9C = "": var_BC = ""
  loc_A353C9: LitStr "SELECT deretenciones.*, DetaRete"
  loc_A353CC: LitStr " FROM deretenciones"
  loc_A353CF: ConcatStr
  loc_A353D0: FStStrNoPop var_88
  loc_A353D3: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = deretenciones.PeriInfo AND retenciones.CodiRete = deretenciones.CodiRete"
  loc_A353D6: ConcatStr
  loc_A353D7: FStStrNoPop var_E0
  loc_A353DA: LitStr " WHERE deretenciones.PeriInfo = "
  loc_A353DD: ConcatStr
  loc_A353DE: FStStrNoPop var_E4
  loc_A353E1: FLdPr Me
  loc_A353E4: MemLdI2 iPeriInfo
  loc_A353E7: CStrUI1
  loc_A353E9: FStStrNoPop var_E8
  loc_A353EC: ConcatStr
  loc_A353ED: FStStrNoPop var_EC
  loc_A353F0: LitStr " AND deretenciones.CodiRete = "
  loc_A353F3: ConcatStr
  loc_A353F4: FStStrNoPop var_F0
  loc_A353F7: FLdPr Me
  loc_A353FA: MemLdI2 iCodiRete
  loc_A353FD: CStrUI1
  loc_A353FF: FStStrNoPop var_F4
  loc_A35402: ConcatStr
  loc_A35403: FStStrNoPop var_F8
  loc_A35406: LitStr " AND deretenciones.CodiRete > 0"
  loc_A35409: ConcatStr
  loc_A3540A: FStStrNoPop var_FC
  loc_A3540D: LitStr " ORDER BY CodiRete, CodiDere"
  loc_A35410: ConcatStr
  loc_A35411: FStStrNoPop var_100
  loc_A35414: FLdPr Me
  loc_A35417: MemLdRfVar from_stack_1.BuscarCLS
  loc_A3541A: NewIfNullPr clsbase
  loc_A3541D: Call clsbase.RedefineRS(from_stack_1v)
  loc_A35422: FFreeStr var_88 = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_A35439: LitVarI2 var_9C, 0
  loc_A3543E: PopAdLdVar
  loc_A3543F: LitStr "Retenciones (Código)"
  loc_A35442: FLdPr Me
  loc_A35445: VCallAd Control_ID_FiltroCbo
  loc_A35448: FStAdFunc var_8C
  loc_A3544B: FLdPr var_8C
  loc_A3544E: Me.AddItem from_stack_1, from_stack_2
  loc_A35453: FFree1Ad var_8C
  loc_A35456: LitVarI2 var_9C, 1
  loc_A3545B: PopAdLdVar
  loc_A3545C: LitStr "Retenciones (Detalle)"
  loc_A3545F: FLdPr Me
  loc_A35462: VCallAd Control_ID_FiltroCbo
  loc_A35465: FStAdFunc var_8C
  loc_A35468: FLdPr var_8C
  loc_A3546B: Me.AddItem from_stack_1, from_stack_2
  loc_A35470: FFree1Ad var_8C
  loc_A35473: LitVarI2 var_9C, 2
  loc_A35478: PopAdLdVar
  loc_A35479: LitStr "Categoría (Código)"
  loc_A3547C: FLdPr Me
  loc_A3547F: VCallAd Control_ID_FiltroCbo
  loc_A35482: FStAdFunc var_8C
  loc_A35485: FLdPr var_8C
  loc_A35488: Me.AddItem from_stack_1, from_stack_2
  loc_A3548D: FFree1Ad var_8C
  loc_A35490: LitVarI2 var_9C, 3
  loc_A35495: PopAdLdVar
  loc_A35496: LitStr "Categoría (Detalle)"
  loc_A35499: FLdPr Me
  loc_A3549C: VCallAd Control_ID_FiltroCbo
  loc_A3549F: FStAdFunc var_8C
  loc_A354A2: FLdPr var_8C
  loc_A354A5: Me.AddItem from_stack_1, from_stack_2
  loc_A354AA: FFree1Ad var_8C
  loc_A354AD: LitI2_Byte 0
  loc_A354AF: FLdPr Me
  loc_A354B2: VCallAd Control_ID_FiltroCbo
  loc_A354B5: FStAdFunc var_8C
  loc_A354B8: FLdPr var_8C
  loc_A354BB: Me.ListIndex = from_stack_1
  loc_A354C0: FFree1Ad var_8C
  loc_A354C3: LitI4 0
  loc_A354C8: LitI4 1
  loc_A354CD: FLdRfVar var_104
  loc_A354D0: Redim
  loc_A354DA: FLdPr Me
  loc_A354DD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A354E0: NewIfNullAd
  loc_A354E3: FStAd var_8C 
  loc_A354E7: FLdRfVar var_8C
  loc_A354EA: CVarRef
  loc_A354EF: ParmAry1St
  loc_A354F5: FLdPr Me
  loc_A354F8: VCallAd Control_ID_dgdABMS
  loc_A354FB: CVarAd
  loc_A354FF: ParmAry1St
  loc_A35505: FLdRfVar var_104
  loc_A35508: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3550D: ILdRf var_8C
  loc_A35510: CastAd
  loc_A35513: FLdPr Me
  loc_A35516: MemStAdFunc
  loc_A3551A: FLdRfVar var_104
  loc_A3551D: Erase
  loc_A3551E: FFree1Ad var_8C
  loc_A35521: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96C85C
  'Data Table: 428688
  loc_96C83C: LitI2_Byte 0
  loc_96C83E: FLdPr Me
  loc_96C841: MemStI2 iPeriInfo
  loc_96C844: ILdRf Me
  loc_96C847: FStAdNoPop
  loc_96C84B: ImpAdLdRf MemVar_C44F9C
  loc_96C84E: NewIfNullPr Me
  loc_96C851: Me.Global.Unload from_stack_1
  loc_96C856: FFree1Ad var_88
  loc_96C859: ExitProcHresult
End Sub

Private Sub Form_Activate() '94FB18
  'Data Table: 428688
  loc_94FB04: FLdPr Me
  loc_94FB07: VCallAd Control_ID_FiltroMsk
  loc_94FB0A: CVarAd
  loc_94FB0E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94FB13: FFree1Var var_94 = ""
  loc_94FB16: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94988C
  'Data Table: 428688
  loc_949878: ILdI2 KeyAscii
  loc_94987B: CI4UI1
  loc_94987C: LitI4 &HD
  loc_949881: EqI4
  loc_949882: BranchF loc_94988A
  loc_949885: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94988A: ExitProcHresult
  loc_94988B: FnAbsI4
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95C778
  'Data Table: 428688
  loc_95C760: FLdPr Me
  loc_95C763: VCallAd Control_ID_dgdABMS
  loc_95C766: FStAdFunc var_88
  loc_95C769: FLdRfVar var_88
  loc_95C76C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95C771: FFree1Ad var_88
  loc_95C774: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95C6E0
  'Data Table: 428688
  loc_95C6C8: FLdPr Me
  loc_95C6CB: VCallAd Control_ID_dgdABMS
  loc_95C6CE: FStAdFunc var_88
  loc_95C6D1: FLdRfVar var_88
  loc_95C6D4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95C6D9: FFree1Ad var_88
  loc_95C6DC: ExitProcHresult
  loc_95C6DD: FLdRfVar arg_7800
End Sub

Private Sub dgdABMS_DblClick() '95C98C
  'Data Table: 428688
  loc_95C974: ILdRf Me
  loc_95C977: FStAdNoPop
  loc_95C97B: ImpAdLdRf MemVar_C44F9C
  loc_95C97E: NewIfNullPr Me
  loc_95C981: Me.Global.Unload from_stack_1
  loc_95C986: FFree1Ad var_88
  loc_95C989: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '9996A4
  'Data Table: 428688
  loc_999648: FLdRfVar var_B4
  loc_99964B: FLdRfVar var_B0
  loc_99964E: FLdI2 ColIndex
  loc_999651: CVarI2 var_A8
  loc_999654: PopAdLdVar
  loc_999655: FLdPr Me
  loc_999658: VCallAd Control_ID_dgdABMS
  loc_99965B: FStAdFunc var_88
  loc_99965E: FLdPr var_88
  loc_999661: LateIdLdVar var_98 DispID_105 0
  loc_999668: CastAdVar Me
  loc_99966C: FStAdFunc var_AC
  loc_99966F: FLdPr var_AC
  loc_999672: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999677: FLdPr var_B0
  loc_99967A:  = Me.DataField
  loc_99967F: FLdZeroAd var_B4
  loc_999682: PopTmpLdAdStr
  loc_999686: FLdPr Me
  loc_999689: MemLdRfVar from_stack_1.BuscarCLS
  loc_99968C: NewIfNullPr clsbase
  loc_99968F: Call clsbase.Sort(from_stack_1v)
  loc_999694: FFree1Str var_B8
  loc_999697: FFreeAd var_88 = "": var_AC = ""
  loc_9996A0: FFree1Var var_98 = ""
  loc_9996A3: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '428D30
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '428D3F
  iPeriInfo = Value
End Sub

Public Function iCodiReteGet() '428D4E
  iCodiReteGet = iCodiRete
End Function

Public Sub iCodiRetePut(Value) '428D5D
  iCodiRete = Value
End Sub

Public Function sDetaReteGet() '428D6C
  sDetaReteGet = sDetaRete
End Function

Public Sub sDetaRetePut(Value) '428D7B
  sDetaRete = Value
End Sub

Public Function global_4359816Get() '428D8A
  global_4359816Get = global_4359816
End Function

Public Sub global_4359816Put(Value) '428DA4
  global_4359816 = Value
End Sub

Public Sub global_4359816Set(Value) '428DBE
  global_4359816 = Value
End Sub

Public Function sFiltroGet() '428DD8
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '428DE7
  sFiltro = Value
End Sub
