VERSION 5.00
Begin VB.Form dlgCambiarClave
  Caption = "Cambiar Clave"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "dlgCambiarClave.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2832
  ClientTop = 3480
  ClientWidth = 8820
  ClientHeight = 2448
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 8281.503
  ScaleHeight = 1442.816
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtConfirmarClave
    ForeColor = &HFF0000&
    Left = 1920
    Top = 1080
    Width = 2295
    Height = 420
    TabIndex = 5
    PasswordChar = "*"
    MaxLength = 15
  End
  Begin VB.TextBox txtNuevaClave
    ForeColor = &HFF0000&
    Left = 1920
    Top = 600
    Width = 2295
    Height = 420
    TabIndex = 2
    PasswordChar = "*"
    MaxLength = 15
  End
  Begin VB.TextBox txtClaveActual
    ForeColor = &HFF0000&
    Left = 1920
    Top = 120
    Width = 2295
    Height = 420
    TabIndex = 0
    PasswordChar = "*"
    MaxLength = 15
  End
  Begin VB.CommandButton cmdOK
    Caption = "Aceptar"
    Left = 1920
    Top = 1800
    Width = 1260
    Height = 495
    Enabled = 0   'False
    TabIndex = 8
    Default = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancel
    Caption = "Cancelar"
    Left = 3480
    Top = 1800
    Width = 1260
    Height = 495
    TabIndex = 9
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    CausesValidation = 0   'False
  End
  Begin VB.Label lblConfirmarClave
    Caption = "Caracteres: 0. Mínimo 6."
    Left = 4320
    Top = 1080
    Width = 4335
    Height = 420
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblNuevaClave
    Caption = "Caracteres: 0. Mínimo 6."
    Left = 4320
    Top = 600
    Width = 4335
    Height = 420
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Clave Actual:"
    Left = 360
    Top = 240
    Width = 1380
    Height = 300
    TabIndex = 1
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Nueva Clave:"
    Left = 360
    Top = 720
    Width = 1380
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Confirmar Clave:"
    Left = 105
    Top = 1200
    Width = 1740
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgCambiarClave"


Private Sub Form_Load() '9B10B0
  'Data Table: 42A01C
  loc_9B10A4: LitI2_Byte 3
  loc_9B10A6: CI2UI1
  loc_9B10A8: FLdPr Me
  loc_9B10AB: MemStI2 global_56
  loc_9B10AE: ExitProcHresult
End Sub

Private Sub txtClaveActual_Validate(Cancel As Boolean) 'B285D8
  'Data Table: 42A01C
  loc_B2830C: FLdRfVar var_8C
  loc_B2830F: FLdPr Me
  loc_B28312: VCallAd Control_ID_txtClaveActual
  loc_B28315: FStAdFunc var_88
  loc_B28318: FLdPr var_88
  loc_B2831B:  = Me.Text
  loc_B28320: FLdRfVar var_90
  loc_B28323: ILdRf var_8C
  loc_B28326: ImpAdLdI4 MemVar_D9302C
  loc_B28329: FLdPr Me
  loc_B2832C: MemLdRfVar from_stack_1.global_52
  loc_B2832F: NewIfNullPr clsusuario
  loc_B28332: from_stack_3v = clsusuario.ValidaClaveUsuario(from_stack_1v, from_stack_2v)
  loc_B28337: ILdRf var_90
  loc_B2833A: FLdPr Me
  loc_B2833D: MemStStrCopy
  loc_B28341: FFreeStr var_8C = ""
  loc_B28348: FFree1Ad var_88
  loc_B2834B: FLdPr Me
  loc_B2834E: MemLdStr global_60
  loc_B28351: LitStr "El Usuario tiene la clave básica 123456..."
  loc_B28354: EqStr
  loc_B28356: BranchF loc_B284A9
  loc_B28359: FLdRfVar var_8C
  loc_B2835C: FLdPr Me
  loc_B2835F: VCallAd Control_ID_txtClaveActual
  loc_B28362: FStAdFunc var_88
  loc_B28365: FLdPr var_88
  loc_B28368:  = Me.Text
  loc_B2836D: ILdRf var_8C
  loc_B28370: LitStr "123456"
  loc_B28373: NeStr
  loc_B28375: FFree1Str var_8C
  loc_B28378: FFree1Ad var_88
  loc_B2837B: BranchF loc_B284A6
  loc_B2837E: LitStr "La clave ingresada es incorrecta. Verifique..."
  loc_B28381: FLdPr Me
  loc_B28384: MemStStrCopy
  loc_B28388: FLdPr Me
  loc_B2838B: VCallAd Control_ID_txtClaveActual
  loc_B2838E: FStAdFuncNoPop
  loc_B28391: CastAd
  loc_B28394: FStAdFunc var_94
  loc_B28397: FLdRfVar var_94
  loc_B2839A: FLdPr Me
  loc_B2839D: MemLdStr global_60
  loc_B283A0: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B283A5: IStI2 Cancel
  loc_B283A8: FFreeAd var_88 = ""
  loc_B283AF: FLdPr Me
  loc_B283B2: MemLdI2 global_56
  loc_B283B5: LitI2_Byte 1
  loc_B283B7: SubI2
  loc_B283B8: FLdPr Me
  loc_B283BB: MemStI2 global_56
  loc_B283BE: FLdPr Me
  loc_B283C1: MemLdI2 global_56
  loc_B283C4: LitI2_Byte 1
  loc_B283C6: GeI2
  loc_B283C7: BranchF loc_B28417
  loc_B283CA: LitStr "Reintentos restantes antes de inhabilitar el usuario: "
  loc_B283CD: FLdPr Me
  loc_B283D0: MemLdI2 global_56
  loc_B283D3: CStrUI1
  loc_B283D5: FStStrNoPop var_8C
  loc_B283D8: ConcatStr
  loc_B283D9: FStStrNoPop var_90
  loc_B283DC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B283E1: FFreeStr var_8C = ""
  loc_B283E8: LitStr vbNullString
  loc_B283EB: FLdPr Me
  loc_B283EE: VCallAd Control_ID_txtClaveActual
  loc_B283F1: FStAdFunc var_88
  loc_B283F4: FLdPr var_88
  loc_B283F7: Me.Text = from_stack_1
  loc_B283FC: FFree1Ad var_88
  loc_B283FF: FLdPr Me
  loc_B28402: VCallAd Control_ID_txtClaveActual
  loc_B28405: FStAdFunc var_88
  loc_B28408: FLdPr var_88
  loc_B2840B: Me.SetFocus
  loc_B28410: FFree1Ad var_88
  loc_B28413: ExitProcHresult
  loc_B28414: Branch loc_B284A6
  loc_B28417: FLdRfVar var_B8
  loc_B2841A: FLdRfVar var_A8
  loc_B2841D: LitVarStr var_A4, "CodiUsua"
  loc_B28422: PopAdLdVar
  loc_B28423: FLdRfVar var_94
  loc_B28426: FLdRfVar var_88
  loc_B28429: FLdPr Me
  loc_B2842C: MemLdRfVar from_stack_1.global_52
  loc_B2842F: NewIfNullPr clsusuario
  loc_B28432: from_stack_1v = clsusuario.RsFrmGet()
  loc_B28437: FLdPr var_88
  loc_B2843A:  = Me.Fields
  loc_B2843F: FLdPr var_94
  loc_B28442: from_stack_2 = Me.Item(from_stack_1)
  loc_B28447: FLdPr var_A8
  loc_B2844A:  = Me.Value
  loc_B2844F: FLdRfVar var_B8
  loc_B28452: CStrVarTmp
  loc_B28453: FStStrNoPop var_8C
  loc_B28456: FLdPr Me
  loc_B28459: MemLdRfVar from_stack_1.global_52
  loc_B2845C: NewIfNullPr clsusuario
  loc_B2845F: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_B28464: FFree1Str var_8C
  loc_B28467: FFreeAd var_88 = "": var_94 = ""
  loc_B28470: FFree1Var var_B8 = ""
  loc_B28473: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_B28476: ImpAdLdI4 MemVar_D9302C
  loc_B28479: ConcatStr
  loc_B2847A: FStStrNoPop var_8C
  loc_B2847D: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_B28480: ConcatStr
  loc_B28481: FStStrNoPop var_90
  loc_B28484: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B28489: FFreeStr var_8C = ""
  loc_B28490: ILdRf Me
  loc_B28493: FStAdNoPop
  loc_B28497: ImpAdLdRf MemVar_D9C5D8
  loc_B2849A: NewIfNullPr Global
  loc_B2849D: Global.Unload from_stack_1
  loc_B284A2: FFree1Ad var_88
  loc_B284A5: ExitProcHresult
  loc_B284A6: Branch loc_B285D5
  loc_B284A9: FLdPr Me
  loc_B284AC: MemLdStr global_60
  loc_B284AF: LitStr vbNullString
  loc_B284B2: NeStr
  loc_B284B4: BranchF loc_B285D5
  loc_B284B7: FLdPr Me
  loc_B284BA: VCallAd Control_ID_txtClaveActual
  loc_B284BD: FStAdFuncNoPop
  loc_B284C0: CastAd
  loc_B284C3: FStAdFunc var_94
  loc_B284C6: FLdRfVar var_94
  loc_B284C9: FLdPr Me
  loc_B284CC: MemLdStr global_60
  loc_B284CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B284D4: IStI2 Cancel
  loc_B284D7: FFreeAd var_88 = ""
  loc_B284DE: FLdPr Me
  loc_B284E1: MemLdI2 global_56
  loc_B284E4: LitI2_Byte 1
  loc_B284E6: SubI2
  loc_B284E7: FLdPr Me
  loc_B284EA: MemStI2 global_56
  loc_B284ED: FLdPr Me
  loc_B284F0: MemLdI2 global_56
  loc_B284F3: LitI2_Byte 1
  loc_B284F5: GeI2
  loc_B284F6: BranchF loc_B28546
  loc_B284F9: LitStr "Reintentos restantes antes de inhabilitar el usuario: "
  loc_B284FC: FLdPr Me
  loc_B284FF: MemLdI2 global_56
  loc_B28502: CStrUI1
  loc_B28504: FStStrNoPop var_8C
  loc_B28507: ConcatStr
  loc_B28508: FStStrNoPop var_90
  loc_B2850B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B28510: FFreeStr var_8C = ""
  loc_B28517: LitStr vbNullString
  loc_B2851A: FLdPr Me
  loc_B2851D: VCallAd Control_ID_txtClaveActual
  loc_B28520: FStAdFunc var_88
  loc_B28523: FLdPr var_88
  loc_B28526: Me.Text = from_stack_1
  loc_B2852B: FFree1Ad var_88
  loc_B2852E: FLdPr Me
  loc_B28531: VCallAd Control_ID_txtClaveActual
  loc_B28534: FStAdFunc var_88
  loc_B28537: FLdPr var_88
  loc_B2853A: Me.SetFocus
  loc_B2853F: FFree1Ad var_88
  loc_B28542: ExitProcHresult
  loc_B28543: Branch loc_B285D5
  loc_B28546: FLdRfVar var_B8
  loc_B28549: FLdRfVar var_A8
  loc_B2854C: LitVarStr var_A4, "CodiUsua"
  loc_B28551: PopAdLdVar
  loc_B28552: FLdRfVar var_94
  loc_B28555: FLdRfVar var_88
  loc_B28558: FLdPr Me
  loc_B2855B: MemLdRfVar from_stack_1.global_52
  loc_B2855E: NewIfNullPr clsusuario
  loc_B28561: from_stack_1v = clsusuario.RsFrmGet()
  loc_B28566: FLdPr var_88
  loc_B28569:  = Me.Fields
  loc_B2856E: FLdPr var_94
  loc_B28571: from_stack_2 = Me.Item(from_stack_1)
  loc_B28576: FLdPr var_A8
  loc_B28579:  = Me.Value
  loc_B2857E: FLdRfVar var_B8
  loc_B28581: CStrVarTmp
  loc_B28582: FStStrNoPop var_8C
  loc_B28585: FLdPr Me
  loc_B28588: MemLdRfVar from_stack_1.global_52
  loc_B2858B: NewIfNullPr clsusuario
  loc_B2858E: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_B28593: FFree1Str var_8C
  loc_B28596: FFreeAd var_88 = "": var_94 = ""
  loc_B2859F: FFree1Var var_B8 = ""
  loc_B285A2: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_B285A5: ImpAdLdI4 MemVar_D9302C
  loc_B285A8: ConcatStr
  loc_B285A9: FStStrNoPop var_8C
  loc_B285AC: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_B285AF: ConcatStr
  loc_B285B0: FStStrNoPop var_90
  loc_B285B3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B285B8: FFreeStr var_8C = ""
  loc_B285BF: ILdRf Me
  loc_B285C2: FStAdNoPop
  loc_B285C6: ImpAdLdRf MemVar_D9C5D8
  loc_B285C9: NewIfNullPr Global
  loc_B285CC: Global.Unload from_stack_1
  loc_B285D1: FFree1Ad var_88
  loc_B285D4: ExitProcHresult
  loc_B285D5: ExitProcHresult
End Sub

Private Sub cmdOK_Click() 'AFC008
  'Data Table: 42A01C
  loc_AFBE30: FLdRfVar var_8C
  loc_AFBE33: FLdPr Me
  loc_AFBE36: VCallAd Control_ID_txtNuevaClave
  loc_AFBE39: FStAdFunc var_88
  loc_AFBE3C: FLdPr var_88
  loc_AFBE3F:  = Me.Text
  loc_AFBE44: ILdRf var_8C
  loc_AFBE47: LitStr vbNullString
  loc_AFBE4A: EqStr
  loc_AFBE4C: FLdRfVar var_94
  loc_AFBE4F: FLdPr Me
  loc_AFBE52: VCallAd Control_ID_txtConfirmarClave
  loc_AFBE55: FStAdFunc var_90
  loc_AFBE58: FLdPr var_90
  loc_AFBE5B:  = Me.Text
  loc_AFBE60: ILdRf var_94
  loc_AFBE63: LitStr vbNullString
  loc_AFBE66: EqStr
  loc_AFBE68: OrI4
  loc_AFBE69: FFreeStr var_8C = ""
  loc_AFBE70: FFreeAd var_88 = ""
  loc_AFBE77: BranchF loc_AFBE95
  loc_AFBE7A: LitStr "Los campos de la nueva clave no pueden estar vacíos, reintente..."
  loc_AFBE7D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFBE82: FLdPr Me
  loc_AFBE85: VCallAd Control_ID_txtNuevaClave
  loc_AFBE88: CVarAd
  loc_AFBE8C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AFBE91: FFree1Var var_A4 = ""
  loc_AFBE94: ExitProcHresult
  loc_AFBE95: FLdRfVar var_8C
  loc_AFBE98: FLdPr Me
  loc_AFBE9B: VCallAd Control_ID_txtClaveActual
  loc_AFBE9E: FStAdFunc var_88
  loc_AFBEA1: FLdPr var_88
  loc_AFBEA4:  = Me.Text
  loc_AFBEA9: ILdRf var_8C
  loc_AFBEAC: FLdRfVar var_94
  loc_AFBEAF: FLdPr Me
  loc_AFBEB2: VCallAd Control_ID_txtNuevaClave
  loc_AFBEB5: FStAdFunc var_90
  loc_AFBEB8: FLdPr var_90
  loc_AFBEBB:  = Me.Text
  loc_AFBEC0: ILdRf var_94
  loc_AFBEC3: EqStr
  loc_AFBEC5: FFreeStr var_8C = ""
  loc_AFBECC: FFreeAd var_88 = ""
  loc_AFBED3: BranchF loc_AFBF1F
  loc_AFBED6: LitStr "Debe ingresar una clave distinta a la actual, reintente..."
  loc_AFBED9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFBEDE: LitStr vbNullString
  loc_AFBEE1: FLdPr Me
  loc_AFBEE4: VCallAd Control_ID_txtNuevaClave
  loc_AFBEE7: FStAdFunc var_88
  loc_AFBEEA: FLdPr var_88
  loc_AFBEED: Me.Text = from_stack_1
  loc_AFBEF2: FFree1Ad var_88
  loc_AFBEF5: LitStr vbNullString
  loc_AFBEF8: FLdPr Me
  loc_AFBEFB: VCallAd Control_ID_txtConfirmarClave
  loc_AFBEFE: FStAdFunc var_88
  loc_AFBF01: FLdPr var_88
  loc_AFBF04: Me.Text = from_stack_1
  loc_AFBF09: FFree1Ad var_88
  loc_AFBF0C: FLdPr Me
  loc_AFBF0F: VCallAd Control_ID_txtNuevaClave
  loc_AFBF12: CVarAd
  loc_AFBF16: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AFBF1B: FFree1Var var_A4 = ""
  loc_AFBF1E: ExitProcHresult
  loc_AFBF1F: FLdRfVar var_8C
  loc_AFBF22: FLdPr Me
  loc_AFBF25: VCallAd Control_ID_txtNuevaClave
  loc_AFBF28: FStAdFunc var_88
  loc_AFBF2B: FLdPr var_88
  loc_AFBF2E:  = Me.Text
  loc_AFBF33: ILdRf var_8C
  loc_AFBF36: FLdRfVar var_94
  loc_AFBF39: FLdPr Me
  loc_AFBF3C: VCallAd Control_ID_txtConfirmarClave
  loc_AFBF3F: FStAdFunc var_90
  loc_AFBF42: FLdPr var_90
  loc_AFBF45:  = Me.Text
  loc_AFBF4A: ILdRf var_94
  loc_AFBF4D: NeStr
  loc_AFBF4F: FFreeStr var_8C = ""
  loc_AFBF56: FFreeAd var_88 = ""
  loc_AFBF5D: BranchF loc_AFBF94
  loc_AFBF60: LitStr "La confirmación de la nueva clave es incorrecta, reintente..."
  loc_AFBF63: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFBF68: LitStr vbNullString
  loc_AFBF6B: FLdPr Me
  loc_AFBF6E: VCallAd Control_ID_txtConfirmarClave
  loc_AFBF71: FStAdFunc var_88
  loc_AFBF74: FLdPr var_88
  loc_AFBF77: Me.Text = from_stack_1
  loc_AFBF7C: FFree1Ad var_88
  loc_AFBF7F: FLdPr Me
  loc_AFBF82: VCallAd Control_ID_txtConfirmarClave
  loc_AFBF85: FStAdFunc var_88
  loc_AFBF88: FLdPr var_88
  loc_AFBF8B: Me.SetFocus
  loc_AFBF90: FFree1Ad var_88
  loc_AFBF93: ExitProcHresult
  loc_AFBF94: FLdRfVar var_8C
  loc_AFBF97: FLdPr Me
  loc_AFBF9A: VCallAd Control_ID_txtNuevaClave
  loc_AFBF9D: FStAdFunc var_88
  loc_AFBFA0: FLdPr var_88
  loc_AFBFA3:  = Me.Text
  loc_AFBFA8: ILdRf var_8C
  loc_AFBFAB: ImpAdCallI2 Trim$()
  loc_AFBFB0: FStStrNoPop var_94
  loc_AFBFB3: ImpAdLdI4 MemVar_D9302C
  loc_AFBFB6: FLdPr Me
  loc_AFBFB9: MemLdRfVar from_stack_1.global_52
  loc_AFBFBC: NewIfNullPr clsusuario
  loc_AFBFBF: Call clsusuario.EstablecerClave(from_stack_1v, from_stack_2v)
  loc_AFBFC4: FFreeStr var_8C = ""
  loc_AFBFCB: FFree1Ad var_88
  loc_AFBFCE: LitStr "Su NUEVA clave ha sido guardada. La misma caducará en "
  loc_AFBFD1: LitI2_Byte &H1E
  loc_AFBFD3: CStrI2
  loc_AFBFD5: FStStrNoPop var_8C
  loc_AFBFD8: ConcatStr
  loc_AFBFD9: FStStrNoPop var_94
  loc_AFBFDC: LitStr " días."
  loc_AFBFDF: ConcatStr
  loc_AFBFE0: FStStrNoPop var_A8
  loc_AFBFE3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFBFE8: FFreeStr var_8C = "": var_94 = ""
  loc_AFBFF1: ILdRf Me
  loc_AFBFF4: FStAdNoPop
  loc_AFBFF8: ImpAdLdRf MemVar_D9C5D8
  loc_AFBFFB: NewIfNullPr Global
  loc_AFBFFE: Global.Unload from_stack_1
  loc_AFC003: FFree1Ad var_88
  loc_AFC006: ExitProcHresult
  loc_AFC007: NeI4
End Sub

Private Sub cmdCancel_Click() '9D4AB8
  'Data Table: 42A01C
  loc_9D4AA0: ILdRf Me
  loc_9D4AA3: FStAdNoPop
  loc_9D4AA7: ImpAdLdRf MemVar_D9C5D8
  loc_9D4AAA: NewIfNullPr Global
  loc_9D4AAD: Global.Unload from_stack_1
  loc_9D4AB2: FFree1Ad var_88
  loc_9D4AB5: ExitProcHresult
  loc_9D4AB6: FLdPr var_5BF0
End Sub

Private Sub txtNuevaClave_Change() 'ABD9B8
  'Data Table: 42A01C
  loc_ABD8DC: LitStr "Caracteres: "
  loc_ABD8DF: FLdRfVar var_8C
  loc_ABD8E2: FLdPr Me
  loc_ABD8E5: VCallAd Control_ID_txtNuevaClave
  loc_ABD8E8: FStAdFunc var_88
  loc_ABD8EB: FLdPr var_88
  loc_ABD8EE:  = Me.Text
  loc_ABD8F3: ILdRf var_8C
  loc_ABD8F6: FnLenStr
  loc_ABD8F7: CStrI4
  loc_ABD8F9: FStStrNoPop var_90
  loc_ABD8FC: ConcatStr
  loc_ABD8FD: FStStrNoPop var_94
  loc_ABD900: LitStr ". Mínimo "
  loc_ABD903: ConcatStr
  loc_ABD904: CVarStr var_B4
  loc_ABD907: FLdRfVar var_A4
  loc_ABD90A: ConcatVar var_C4
  loc_ABD90E: LitVarStr var_D4, "."
  loc_ABD913: ConcatVar var_E4
  loc_ABD917: CStrVarVal var_E8
  loc_ABD91B: FLdPr Me
  loc_ABD91E: VCallAd Control_ID_lblNuevaClave
  loc_ABD921: FStAdFunc var_EC
  loc_ABD924: FLdPr var_EC
  loc_ABD927: Me.Caption = from_stack_1
  loc_ABD92C: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_ABD937: FFreeAd var_88 = ""
  loc_ABD93E: FFreeVar var_B4 = "": var_C4 = ""
  loc_ABD947: FLdRfVar var_8C
  loc_ABD94A: FLdPr Me
  loc_ABD94D: VCallAd Control_ID_txtNuevaClave
  loc_ABD950: FStAdFunc var_88
  loc_ABD953: FLdPr var_88
  loc_ABD956:  = Me.Text
  loc_ABD95B: ILdRf var_8C
  loc_ABD95E: FnLenStr
  loc_ABD95F: CVarI4
  loc_ABD963: HardType
  loc_ABD964: FLdRfVar var_A4
  loc_ABD967: GeVar var_B4
  loc_ABD96B: FLdRfVar var_90
  loc_ABD96E: FLdPr Me
  loc_ABD971: VCallAd Control_ID_txtConfirmarClave
  loc_ABD974: FStAdFunc var_EC
  loc_ABD977: FLdPr var_EC
  loc_ABD97A:  = Me.Text
  loc_ABD97F: ILdRf var_90
  loc_ABD982: FnLenStr
  loc_ABD983: CVarI4
  loc_ABD987: HardType
  loc_ABD988: FLdRfVar var_A4
  loc_ABD98B: GeVar var_C4
  loc_ABD98F: AndVar var_E4
  loc_ABD993: CBoolVar
  loc_ABD995: FLdPr Me
  loc_ABD998: VCallAd Control_ID_cmdOK
  loc_ABD99B: FStAdFunc var_100
  loc_ABD99E: FLdPr var_100
  loc_ABD9A1: Me.Enabled = from_stack_1b
  loc_ABD9A6: FFreeStr var_8C = ""
  loc_ABD9AD: FFreeAd var_88 = "": var_EC = ""
  loc_ABD9B6: ExitProcHresult
End Sub

Private Sub txtConfirmarClave_Change() 'ABDD60
  'Data Table: 42A01C
  loc_ABDC84: LitStr "Caracteres: "
  loc_ABDC87: FLdRfVar var_8C
  loc_ABDC8A: FLdPr Me
  loc_ABDC8D: VCallAd Control_ID_txtConfirmarClave
  loc_ABDC90: FStAdFunc var_88
  loc_ABDC93: FLdPr var_88
  loc_ABDC96:  = Me.Text
  loc_ABDC9B: ILdRf var_8C
  loc_ABDC9E: FnLenStr
  loc_ABDC9F: CStrI4
  loc_ABDCA1: FStStrNoPop var_90
  loc_ABDCA4: ConcatStr
  loc_ABDCA5: FStStrNoPop var_94
  loc_ABDCA8: LitStr ". Mínimo "
  loc_ABDCAB: ConcatStr
  loc_ABDCAC: CVarStr var_B4
  loc_ABDCAF: FLdRfVar var_A4
  loc_ABDCB2: ConcatVar var_C4
  loc_ABDCB6: LitVarStr var_D4, "."
  loc_ABDCBB: ConcatVar var_E4
  loc_ABDCBF: CStrVarVal var_E8
  loc_ABDCC3: FLdPr Me
  loc_ABDCC6: VCallAd Control_ID_lblConfirmarClave
  loc_ABDCC9: FStAdFunc var_EC
  loc_ABDCCC: FLdPr var_EC
  loc_ABDCCF: Me.Caption = from_stack_1
  loc_ABDCD4: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_ABDCDF: FFreeAd var_88 = ""
  loc_ABDCE6: FFreeVar var_B4 = "": var_C4 = ""
  loc_ABDCEF: FLdRfVar var_8C
  loc_ABDCF2: FLdPr Me
  loc_ABDCF5: VCallAd Control_ID_txtNuevaClave
  loc_ABDCF8: FStAdFunc var_88
  loc_ABDCFB: FLdPr var_88
  loc_ABDCFE:  = Me.Text
  loc_ABDD03: ILdRf var_8C
  loc_ABDD06: FnLenStr
  loc_ABDD07: CVarI4
  loc_ABDD0B: HardType
  loc_ABDD0C: FLdRfVar var_A4
  loc_ABDD0F: GeVar var_B4
  loc_ABDD13: FLdRfVar var_90
  loc_ABDD16: FLdPr Me
  loc_ABDD19: VCallAd Control_ID_txtConfirmarClave
  loc_ABDD1C: FStAdFunc var_EC
  loc_ABDD1F: FLdPr var_EC
  loc_ABDD22:  = Me.Text
  loc_ABDD27: ILdRf var_90
  loc_ABDD2A: FnLenStr
  loc_ABDD2B: CVarI4
  loc_ABDD2F: HardType
  loc_ABDD30: FLdRfVar var_A4
  loc_ABDD33: GeVar var_C4
  loc_ABDD37: AndVar var_E4
  loc_ABDD3B: CBoolVar
  loc_ABDD3D: FLdPr Me
  loc_ABDD40: VCallAd Control_ID_cmdOK
  loc_ABDD43: FStAdFunc var_100
  loc_ABDD46: FLdPr var_100
  loc_ABDD49: Me.Enabled = from_stack_1b
  loc_ABDD4E: FFreeStr var_8C = ""
  loc_ABDD55: FFreeAd var_88 = "": var_EC = ""
  loc_ABDD5E: ExitProcHresult
End Sub
