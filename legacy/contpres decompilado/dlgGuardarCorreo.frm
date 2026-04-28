VERSION 5.00
Begin VB.Form dlgGuardarCorreo
  Caption = "Guardar Correo para Enviar Orden de Compra"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgGuardarCorreo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 13665
  ClientHeight = 5310
  Begin VB.TextBox txtCorreo
    Left = 3000
    Top = 2580
    Width = 10215
    Height = 495
    TabIndex = 7
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
  Begin VB.CommandButton btnCancelar
    Caption = "Cancelar"
    Left = 6960
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "5"
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
  Begin VB.CommandButton btnAceptar
    Caption = "Aceptar"
    Left = 4920
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 2
    Tag = "5"
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
  Begin VB.Label lblCUIT
    Left = 2040
    Top = 360
    Width = 2490
    Height = 300
    TabIndex = 8
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
  Begin VB.Label Label3
    Caption = "CORREO del Proveedor:"
    Left = 240
    Top = 2640
    Width = 2655
    Height = 375
    TabIndex = 6
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
    Caption = "Le enviaremos una invitación, y si la ACEPTA, podremos enviarle la Orden de Compra."
    Left = 360
    Top = 1680
    Width = 12855
    Height = 495
    TabIndex = 5
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
  Begin VB.Label lblInforme
    Caption = "Registre, por favor, el correo del proveedor."
    Left = 480
    Top = 960
    Width = 12855
    Height = 495
    TabIndex = 4
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
  Begin VB.Label lblDetaProv
    Left = 6000
    Top = 360
    Width = 7410
    Height = 300
    TabIndex = 1
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
  Begin VB.Label Label2
    Caption = "Proveedor:"
    Left = 480
    Top = 360
    Width = 1140
    Height = 300
    TabIndex = 0
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

Attribute VB_Name = "dlgGuardarCorreo"


Private Sub txtCorreo_Validate(Cancel As Boolean) 'A13CA8
  'Data Table: 41A7DC
  loc_A13B30: FLdRfVar var_8A
  loc_A13B33: FLdPr Me
  loc_A13B36: VCallAd Control_ID_btnCancelar
  loc_A13B39: FStAdFunc var_88
  loc_A13B3C: FLdPr var_88
  loc_A13B3F:  = Me.Value
  loc_A13B44: FLdI2 var_8A
  loc_A13B47: NotI4
  loc_A13B48: FLdRfVar var_94
  loc_A13B4B: FLdPr Me
  loc_A13B4E: VCallAd Control_ID_txtCorreo
  loc_A13B51: FStAdFunc var_90
  loc_A13B54: FLdPr var_90
  loc_A13B57:  = Me.Text
  loc_A13B5C: ILdRf var_94
  loc_A13B5F: LitStr vbNullString
  loc_A13B62: NeStr
  loc_A13B64: AndI4
  loc_A13B65: FFree1Str var_94
  loc_A13B68: FFreeAd var_88 = ""
  loc_A13B6F: BranchF loc_A13C8E
  loc_A13B72: FLdRfVar var_94
  loc_A13B75: FLdPr Me
  loc_A13B78: VCallAd Control_ID_txtCorreo
  loc_A13B7B: FStAdFunc var_88
  loc_A13B7E: FLdPr var_88
  loc_A13B81:  = Me.Text
  loc_A13B86: LitI2_Byte 0
  loc_A13B88: PopTmpLdAd2 var_98
  loc_A13B8B: LitI2_Byte 0
  loc_A13B8D: PopTmpLdAd2 var_96
  loc_A13B90: LitI2_Byte 0
  loc_A13B92: PopTmpLdAd2 var_8A
  loc_A13B95: ILdRf var_94
  loc_A13B98: LitStr "Correo"
  loc_A13B9B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A13BA0: FStStrNoPop var_9C
  loc_A13BA3: FLdPr Me
  loc_A13BA6: MemStStrCopy
  loc_A13BAA: FFreeStr var_94 = ""
  loc_A13BB1: FFree1Ad var_88
  loc_A13BB4: FLdPr Me
  loc_A13BB7: VCallAd Control_ID_txtCorreo
  loc_A13BBA: FStAdFunc var_A4
  loc_A13BBD: LitNothing
  loc_A13BBF: CastAd
  loc_A13BC2: FStAdFunc var_A0
  loc_A13BC5: FLdRfVar var_A0
  loc_A13BC8: FLdZeroAd var_A4
  loc_A13BCB: FStAdFuncNoPop
  loc_A13BCE: CastAd
  loc_A13BD1: FStAdFunc var_90
  loc_A13BD4: FLdRfVar var_90
  loc_A13BD7: FLdPr Me
  loc_A13BDA: MemLdRfVar from_stack_1.global_52
  loc_A13BDD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A13BE2: IStI2 Cancel
  loc_A13BE5: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_A13BF0: ILdI2 Cancel
  loc_A13BF3: NotI4
  loc_A13BF4: BranchF loc_A13C8B
  loc_A13BF7: LitI4 1
  loc_A13BFC: FLdRfVar var_94
  loc_A13BFF: FLdPr Me
  loc_A13C02: VCallAd Control_ID_txtCorreo
  loc_A13C05: FStAdFunc var_88
  loc_A13C08: FLdPr var_88
  loc_A13C0B:  = Me.Text
  loc_A13C10: ILdRf var_94
  loc_A13C13: LitStr "@"
  loc_A13C16: LitI4 0
  loc_A13C1B: FnInStr4
  loc_A13C1D: LitI4 1
  loc_A13C22: GtI4
  loc_A13C23: FFree1Str var_94
  loc_A13C26: FFree1Ad var_88
  loc_A13C29: BranchF loc_A13C45
  loc_A13C2C: LitI2_Byte &HFF
  loc_A13C2E: FLdPr Me
  loc_A13C31: VCallAd Control_ID_btnAceptar
  loc_A13C34: FStAdFunc var_88
  loc_A13C37: FLdPr var_88
  loc_A13C3A: Me.Enabled = from_stack_1b
  loc_A13C3F: FFree1Ad var_88
  loc_A13C42: Branch loc_A13C8B
  loc_A13C45: LitStr "Ingrese un correo Válido. Verifique ..."
  loc_A13C48: FLdPr Me
  loc_A13C4B: MemStStrCopy
  loc_A13C4F: FLdPr Me
  loc_A13C52: VCallAd Control_ID_txtCorreo
  loc_A13C55: FStAdFunc var_A4
  loc_A13C58: LitNothing
  loc_A13C5A: CastAd
  loc_A13C5D: FStAdFunc var_A0
  loc_A13C60: FLdRfVar var_A0
  loc_A13C63: FLdZeroAd var_A4
  loc_A13C66: FStAdFuncNoPop
  loc_A13C69: CastAd
  loc_A13C6C: FStAdFunc var_90
  loc_A13C6F: FLdRfVar var_90
  loc_A13C72: FLdPr Me
  loc_A13C75: MemLdRfVar from_stack_1.global_52
  loc_A13C78: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A13C7D: IStI2 Cancel
  loc_A13C80: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_A13C8B: Branch loc_A13CA4
  loc_A13C8E: LitI2_Byte 0
  loc_A13C90: FLdPr Me
  loc_A13C93: VCallAd Control_ID_btnAceptar
  loc_A13C96: FStAdFunc var_88
  loc_A13C99: FLdPr var_88
  loc_A13C9C: Me.Enabled = from_stack_1b
  loc_A13CA1: FFree1Ad var_88
  loc_A13CA4: ExitProcHresult
End Sub

Private Sub btnCancelar_Click() '960CF0
  'Data Table: 41A7DC
  loc_960CD8: ILdRf Me
  loc_960CDB: FStAdNoPop
  loc_960CDF: ImpAdLdRf MemVar_C44F9C
  loc_960CE2: NewIfNullPr Me
  loc_960CE5: Me.Global.Unload from_stack_1
  loc_960CEA: FFree1Ad var_88
  loc_960CED: ExitProcHresult
End Sub

Private Sub btnAceptar_Click() '9B30A0
  'Data Table: 41A7DC
  loc_9B2FF8: LitStr vbNullString
  loc_9B2FFB: FLdPr Me
  loc_9B2FFE: MemStStrCopy
  loc_9B3002: LitI2_Byte 0
  loc_9B3004: PopTmpLdAd2 var_86
  loc_9B3007: Call txtCorreo_Validate(from_stack_1v)
  loc_9B300C: FLdPr Me
  loc_9B300F: MemLdStr global_52
  loc_9B3012: LitStr vbNullString
  loc_9B3015: NeStr
  loc_9B3017: BranchF loc_9B301B
  loc_9B301A: ExitProcHresult
  loc_9B301B: FLdRfVar var_90
  loc_9B301E: FLdPr Me
  loc_9B3021: VCallAd Control_ID_txtCorreo
  loc_9B3024: FStAdFunc var_8C
  loc_9B3027: FLdPr var_8C
  loc_9B302A:  = Me.Text
  loc_9B302F: ILdRf var_90
  loc_9B3032: LitStr vbNullString
  loc_9B3035: NeStr
  loc_9B3037: FFree1Str var_90
  loc_9B303A: FFree1Ad var_8C
  loc_9B303D: BranchF loc_9B308A
  loc_9B3040: FLdRfVar var_90
  loc_9B3043: FLdPr Me
  loc_9B3046: VCallAd Control_ID_txtCorreo
  loc_9B3049: FStAdFunc var_8C
  loc_9B304C: FLdPr var_8C
  loc_9B304F:  = Me.Text
  loc_9B3054: FLdRfVar var_98
  loc_9B3057: FLdPr Me
  loc_9B305A: VCallAd Control_ID_lblCUIT
  loc_9B305D: FStAdFunc var_94
  loc_9B3060: FLdPr var_94
  loc_9B3063:  = Me.Caption
  loc_9B3068: ILdRf var_98
  loc_9B306B: ILdRf var_90
  loc_9B306E: FLdPr Me
  loc_9B3071: MemLdRfVar from_stack_1.global_56
  loc_9B3074: NewIfNullPr clsproveedor
  loc_9B3077: Call clsproveedor.GrabarCorreo(from_stack_1v, from_stack_2v)
  loc_9B307C: FFreeStr var_90 = ""
  loc_9B3083: FFreeAd var_8C = ""
  loc_9B308A: ILdRf Me
  loc_9B308D: FStAdNoPop
  loc_9B3091: ImpAdLdRf MemVar_C44F9C
  loc_9B3094: NewIfNullPr Me
  loc_9B3097: Me.Global.Unload from_stack_1
  loc_9B309C: FFree1Ad var_8C
  loc_9B309F: ExitProcHresult
End Sub

Private Sub Form_Load() '9401D0
  'Data Table: 41A7DC
  loc_9401CC: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '980F18
  'Data Table: 41A7DC
  loc_980EE0: ILdI2 KeyAscii
  loc_980EE3: CI4UI1
  loc_980EE4: LitI4 &HD
  loc_980EE9: EqI4
  loc_980EEA: BranchF loc_980EF2
  loc_980EED: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_980EF2: ILdI2 KeyAscii
  loc_980EF5: LitI2_Byte &H1B
  loc_980EF7: EqI2
  loc_980EF8: BranchF loc_980F15
  loc_980EFB: ILdRf Me
  loc_980EFE: FStAdNoPop
  loc_980F02: ImpAdLdRf MemVar_C44F9C
  loc_980F05: NewIfNullPr Me
  loc_980F08: Me.Global.Unload from_stack_1
  loc_980F0D: FFree1Ad var_88
  loc_980F10: LitI2_Byte 0
  loc_980F12: IStI2 KeyAscii
  loc_980F15: ExitProcHresult
End Sub
