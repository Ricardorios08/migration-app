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
  ClientLeft = 2835
  ClientTop = 3480
  ClientWidth = 8820
  ClientHeight = 2445
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 8281.503
  ScaleHeight = 1444.586
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


Private Sub txtNuevaClave_Change() '9C9340
  'Data Table: 423A44
  loc_9C927C: LitStr "Caracteres: "
  loc_9C927F: FLdRfVar var_8C
  loc_9C9282: FLdPr Me
  loc_9C9285: VCallAd Control_ID_txtNuevaClave
  loc_9C9288: FStAdFunc var_88
  loc_9C928B: FLdPr var_88
  loc_9C928E:  = Me.Text
  loc_9C9293: ILdRf var_8C
  loc_9C9296: FnLenStr
  loc_9C9297: CStrI4
  loc_9C9299: FStStrNoPop var_90
  loc_9C929C: ConcatStr
  loc_9C929D: FStStrNoPop var_94
  loc_9C92A0: LitStr ". Mínimo "
  loc_9C92A3: ConcatStr
  loc_9C92A4: FStStrNoPop var_98
  loc_9C92A7: LitI2_Byte 6
  loc_9C92A9: CStrI2
  loc_9C92AB: FStStrNoPop var_9C
  loc_9C92AE: ConcatStr
  loc_9C92AF: FStStrNoPop var_A0
  loc_9C92B2: LitStr "."
  loc_9C92B5: ConcatStr
  loc_9C92B6: FStStrNoPop var_A4
  loc_9C92B9: FLdPr Me
  loc_9C92BC: VCallAd Control_ID_lblNuevaClave
  loc_9C92BF: FStAdFunc var_A8
  loc_9C92C2: FLdPr var_A8
  loc_9C92C5: Me.Caption = from_stack_1
  loc_9C92CA: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9C92DB: FFreeAd var_88 = ""
  loc_9C92E2: FLdRfVar var_8C
  loc_9C92E5: FLdPr Me
  loc_9C92E8: VCallAd Control_ID_txtNuevaClave
  loc_9C92EB: FStAdFunc var_88
  loc_9C92EE: FLdPr var_88
  loc_9C92F1:  = Me.Text
  loc_9C92F6: ILdRf var_8C
  loc_9C92F9: FnLenStr
  loc_9C92FA: LitI2_Byte 6
  loc_9C92FC: CI4UI1
  loc_9C92FD: GeI4
  loc_9C92FE: FLdRfVar var_90
  loc_9C9301: FLdPr Me
  loc_9C9304: VCallAd Control_ID_txtConfirmarClave
  loc_9C9307: FStAdFunc var_A8
  loc_9C930A: FLdPr var_A8
  loc_9C930D:  = Me.Text
  loc_9C9312: ILdRf var_90
  loc_9C9315: FnLenStr
  loc_9C9316: LitI2_Byte 6
  loc_9C9318: CI4UI1
  loc_9C9319: GeI4
  loc_9C931A: AndI4
  loc_9C931B: FLdPr Me
  loc_9C931E: VCallAd Control_ID_cmdOK
  loc_9C9321: FStAdFunc var_AC
  loc_9C9324: FLdPr var_AC
  loc_9C9327: Me.Enabled = from_stack_1b
  loc_9C932C: FFreeStr var_8C = ""
  loc_9C9333: FFreeAd var_88 = "": var_A8 = ""
  loc_9C933C: ExitProcHresult
End Sub

Private Sub txtConfirmarClave_Change() '9C945C
  'Data Table: 423A44
  loc_9C9398: LitStr "Caracteres: "
  loc_9C939B: FLdRfVar var_8C
  loc_9C939E: FLdPr Me
  loc_9C93A1: VCallAd Control_ID_txtConfirmarClave
  loc_9C93A4: FStAdFunc var_88
  loc_9C93A7: FLdPr var_88
  loc_9C93AA:  = Me.Text
  loc_9C93AF: ILdRf var_8C
  loc_9C93B2: FnLenStr
  loc_9C93B3: CStrI4
  loc_9C93B5: FStStrNoPop var_90
  loc_9C93B8: ConcatStr
  loc_9C93B9: FStStrNoPop var_94
  loc_9C93BC: LitStr ". Mínimo "
  loc_9C93BF: ConcatStr
  loc_9C93C0: FStStrNoPop var_98
  loc_9C93C3: LitI2_Byte 6
  loc_9C93C5: CStrI2
  loc_9C93C7: FStStrNoPop var_9C
  loc_9C93CA: ConcatStr
  loc_9C93CB: FStStrNoPop var_A0
  loc_9C93CE: LitStr "."
  loc_9C93D1: ConcatStr
  loc_9C93D2: FStStrNoPop var_A4
  loc_9C93D5: FLdPr Me
  loc_9C93D8: VCallAd Control_ID_lblConfirmarClave
  loc_9C93DB: FStAdFunc var_A8
  loc_9C93DE: FLdPr var_A8
  loc_9C93E1: Me.Caption = from_stack_1
  loc_9C93E6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_9C93F7: FFreeAd var_88 = ""
  loc_9C93FE: FLdRfVar var_8C
  loc_9C9401: FLdPr Me
  loc_9C9404: VCallAd Control_ID_txtNuevaClave
  loc_9C9407: FStAdFunc var_88
  loc_9C940A: FLdPr var_88
  loc_9C940D:  = Me.Text
  loc_9C9412: ILdRf var_8C
  loc_9C9415: FnLenStr
  loc_9C9416: LitI2_Byte 6
  loc_9C9418: CI4UI1
  loc_9C9419: GeI4
  loc_9C941A: FLdRfVar var_90
  loc_9C941D: FLdPr Me
  loc_9C9420: VCallAd Control_ID_txtConfirmarClave
  loc_9C9423: FStAdFunc var_A8
  loc_9C9426: FLdPr var_A8
  loc_9C9429:  = Me.Text
  loc_9C942E: ILdRf var_90
  loc_9C9431: FnLenStr
  loc_9C9432: LitI2_Byte 6
  loc_9C9434: CI4UI1
  loc_9C9435: GeI4
  loc_9C9436: AndI4
  loc_9C9437: FLdPr Me
  loc_9C943A: VCallAd Control_ID_cmdOK
  loc_9C943D: FStAdFunc var_AC
  loc_9C9440: FLdPr var_AC
  loc_9C9443: Me.Enabled = from_stack_1b
  loc_9C9448: FFreeStr var_8C = ""
  loc_9C944F: FFreeAd var_88 = "": var_A8 = ""
  loc_9C9458: ExitProcHresult
End Sub

Private Sub txtClaveActual_Validate(Cancel As Boolean) 'A5D770
  'Data Table: 423A44
  loc_A5D468: FLdRfVar var_8C
  loc_A5D46B: FLdPr Me
  loc_A5D46E: VCallAd Control_ID_txtClaveActual
  loc_A5D471: FStAdFunc var_88
  loc_A5D474: FLdPr var_88
  loc_A5D477:  = Me.Text
  loc_A5D47C: FLdRfVar var_90
  loc_A5D47F: ILdRf var_8C
  loc_A5D482: ImpAdLdI4 MemVar_C3D03C
  loc_A5D485: FLdPr Me
  loc_A5D488: MemLdRfVar from_stack_1.global_52
  loc_A5D48B: NewIfNullPr clsusuario
  loc_A5D48E: from_stack_3v = clsusuario.ValidaClaveUsuario(from_stack_1v, from_stack_2v)
  loc_A5D493: ILdRf var_90
  loc_A5D496: FLdPr Me
  loc_A5D499: MemStStrCopy
  loc_A5D49D: FFreeStr var_8C = ""
  loc_A5D4A4: FFree1Ad var_88
  loc_A5D4A7: FLdPr Me
  loc_A5D4AA: MemLdStr global_60
  loc_A5D4AD: LitStr "El Usuario tiene la clave básica 123456..."
  loc_A5D4B0: EqStr
  loc_A5D4B2: BranchF loc_A5D624
  loc_A5D4B5: FLdRfVar var_8C
  loc_A5D4B8: FLdPr Me
  loc_A5D4BB: VCallAd Control_ID_txtClaveActual
  loc_A5D4BE: FStAdFunc var_88
  loc_A5D4C1: FLdPr var_88
  loc_A5D4C4:  = Me.Text
  loc_A5D4C9: ILdRf var_8C
  loc_A5D4CC: LitStr "123456"
  loc_A5D4CF: NeStr
  loc_A5D4D1: FFree1Str var_8C
  loc_A5D4D4: FFree1Ad var_88
  loc_A5D4D7: BranchF loc_A5D621
  loc_A5D4DA: LitStr "La clave ingresada es incorrecta. Verifique..."
  loc_A5D4DD: FLdPr Me
  loc_A5D4E0: MemStStrCopy
  loc_A5D4E4: FLdPr Me
  loc_A5D4E7: VCallAd Control_ID_txtClaveActual
  loc_A5D4EA: FStAdFunc var_9C
  loc_A5D4ED: LitNothing
  loc_A5D4EF: CastAd
  loc_A5D4F2: FStAdFunc var_98
  loc_A5D4F5: FLdRfVar var_98
  loc_A5D4F8: FLdZeroAd var_9C
  loc_A5D4FB: FStAdFuncNoPop
  loc_A5D4FE: CastAd
  loc_A5D501: FStAdFunc var_94
  loc_A5D504: FLdRfVar var_94
  loc_A5D507: FLdPr Me
  loc_A5D50A: MemLdRfVar from_stack_1.global_60
  loc_A5D50D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5D512: IStI2 Cancel
  loc_A5D515: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_A5D520: FLdPr Me
  loc_A5D523: MemLdI2 global_56
  loc_A5D526: LitI2_Byte 1
  loc_A5D528: SubI2
  loc_A5D529: FLdPr Me
  loc_A5D52C: MemStI2 global_56
  loc_A5D52F: FLdPr Me
  loc_A5D532: MemLdI2 global_56
  loc_A5D535: LitI2_Byte 1
  loc_A5D537: GeI2
  loc_A5D538: BranchF loc_A5D58D
  loc_A5D53B: LitI4 0
  loc_A5D540: LitStr "Reintentos restantes antes de inhabilitar el usuario: "
  loc_A5D543: FLdPr Me
  loc_A5D546: MemLdI2 global_56
  loc_A5D549: CStrUI1
  loc_A5D54B: FStStrNoPop var_8C
  loc_A5D54E: ConcatStr
  loc_A5D54F: FStStrNoPop var_90
  loc_A5D552: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5D557: FFreeStr var_8C = ""
  loc_A5D55E: LitStr vbNullString
  loc_A5D561: FLdPr Me
  loc_A5D564: VCallAd Control_ID_txtClaveActual
  loc_A5D567: FStAdFunc var_88
  loc_A5D56A: FLdPr var_88
  loc_A5D56D: Me.Text = from_stack_1
  loc_A5D572: FFree1Ad var_88
  loc_A5D575: FLdPr Me
  loc_A5D578: VCallAd Control_ID_txtClaveActual
  loc_A5D57B: FStAdFunc var_88
  loc_A5D57E: FLdPr var_88
  loc_A5D581: Me.SetFocus
  loc_A5D586: FFree1Ad var_88
  loc_A5D589: ExitProcHresult
  loc_A5D58A: Branch loc_A5D621
  loc_A5D58D: FLdRfVar var_BC
  loc_A5D590: FLdRfVar var_98
  loc_A5D593: LitVarStr var_AC, "CodiUsua"
  loc_A5D598: PopAdLdVar
  loc_A5D599: FLdRfVar var_94
  loc_A5D59C: FLdRfVar var_88
  loc_A5D59F: FLdPr Me
  loc_A5D5A2: MemLdRfVar from_stack_1.global_52
  loc_A5D5A5: NewIfNullPr clsusuario
  loc_A5D5A8: from_stack_1v = clsusuario.RsFrmGet()
  loc_A5D5AD: FLdPr var_88
  loc_A5D5B0:  = Me.Fields
  loc_A5D5B5: FLdPr var_94
  loc_A5D5B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D5BD: FLdPr var_98
  loc_A5D5C0:  = Me.Value
  loc_A5D5C5: FLdRfVar var_BC
  loc_A5D5C8: CStrVarTmp
  loc_A5D5C9: FStStrNoPop var_8C
  loc_A5D5CC: FLdPr Me
  loc_A5D5CF: MemLdRfVar from_stack_1.global_52
  loc_A5D5D2: NewIfNullPr clsusuario
  loc_A5D5D5: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_A5D5DA: FFree1Str var_8C
  loc_A5D5DD: FFreeAd var_88 = "": var_94 = ""
  loc_A5D5E6: FFree1Var var_BC = ""
  loc_A5D5E9: LitI4 0
  loc_A5D5EE: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_A5D5F1: ImpAdLdI4 MemVar_C3D03C
  loc_A5D5F4: ConcatStr
  loc_A5D5F5: FStStrNoPop var_8C
  loc_A5D5F8: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_A5D5FB: ConcatStr
  loc_A5D5FC: FStStrNoPop var_90
  loc_A5D5FF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5D604: FFreeStr var_8C = ""
  loc_A5D60B: ILdRf Me
  loc_A5D60E: FStAdNoPop
  loc_A5D612: ImpAdLdRf MemVar_C44F9C
  loc_A5D615: NewIfNullPr Me
  loc_A5D618: Me.Global.Unload from_stack_1
  loc_A5D61D: FFree1Ad var_88
  loc_A5D620: ExitProcHresult
  loc_A5D621: Branch loc_A5D76F
  loc_A5D624: FLdPr Me
  loc_A5D627: MemLdStr global_60
  loc_A5D62A: LitStr vbNullString
  loc_A5D62D: NeStr
  loc_A5D62F: BranchF loc_A5D76F
  loc_A5D632: FLdPr Me
  loc_A5D635: VCallAd Control_ID_txtClaveActual
  loc_A5D638: FStAdFunc var_9C
  loc_A5D63B: LitNothing
  loc_A5D63D: CastAd
  loc_A5D640: FStAdFunc var_98
  loc_A5D643: FLdRfVar var_98
  loc_A5D646: FLdZeroAd var_9C
  loc_A5D649: FStAdFuncNoPop
  loc_A5D64C: CastAd
  loc_A5D64F: FStAdFunc var_94
  loc_A5D652: FLdRfVar var_94
  loc_A5D655: FLdPr Me
  loc_A5D658: MemLdRfVar from_stack_1.global_60
  loc_A5D65B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A5D660: IStI2 Cancel
  loc_A5D663: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_A5D66E: FLdPr Me
  loc_A5D671: MemLdI2 global_56
  loc_A5D674: LitI2_Byte 1
  loc_A5D676: SubI2
  loc_A5D677: FLdPr Me
  loc_A5D67A: MemStI2 global_56
  loc_A5D67D: FLdPr Me
  loc_A5D680: MemLdI2 global_56
  loc_A5D683: LitI2_Byte 1
  loc_A5D685: GeI2
  loc_A5D686: BranchF loc_A5D6DB
  loc_A5D689: LitI4 0
  loc_A5D68E: LitStr "Reintentos restantes antes de inhabilitar el usuario: "
  loc_A5D691: FLdPr Me
  loc_A5D694: MemLdI2 global_56
  loc_A5D697: CStrUI1
  loc_A5D699: FStStrNoPop var_8C
  loc_A5D69C: ConcatStr
  loc_A5D69D: FStStrNoPop var_90
  loc_A5D6A0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5D6A5: FFreeStr var_8C = ""
  loc_A5D6AC: LitStr vbNullString
  loc_A5D6AF: FLdPr Me
  loc_A5D6B2: VCallAd Control_ID_txtClaveActual
  loc_A5D6B5: FStAdFunc var_88
  loc_A5D6B8: FLdPr var_88
  loc_A5D6BB: Me.Text = from_stack_1
  loc_A5D6C0: FFree1Ad var_88
  loc_A5D6C3: FLdPr Me
  loc_A5D6C6: VCallAd Control_ID_txtClaveActual
  loc_A5D6C9: FStAdFunc var_88
  loc_A5D6CC: FLdPr var_88
  loc_A5D6CF: Me.SetFocus
  loc_A5D6D4: FFree1Ad var_88
  loc_A5D6D7: ExitProcHresult
  loc_A5D6D8: Branch loc_A5D76F
  loc_A5D6DB: FLdRfVar var_BC
  loc_A5D6DE: FLdRfVar var_98
  loc_A5D6E1: LitVarStr var_AC, "CodiUsua"
  loc_A5D6E6: PopAdLdVar
  loc_A5D6E7: FLdRfVar var_94
  loc_A5D6EA: FLdRfVar var_88
  loc_A5D6ED: FLdPr Me
  loc_A5D6F0: MemLdRfVar from_stack_1.global_52
  loc_A5D6F3: NewIfNullPr clsusuario
  loc_A5D6F6: from_stack_1v = clsusuario.RsFrmGet()
  loc_A5D6FB: FLdPr var_88
  loc_A5D6FE:  = Me.Fields
  loc_A5D703: FLdPr var_94
  loc_A5D706: from_stack_2 = Me.Item(from_stack_1)
  loc_A5D70B: FLdPr var_98
  loc_A5D70E:  = Me.Value
  loc_A5D713: FLdRfVar var_BC
  loc_A5D716: CStrVarTmp
  loc_A5D717: FStStrNoPop var_8C
  loc_A5D71A: FLdPr Me
  loc_A5D71D: MemLdRfVar from_stack_1.global_52
  loc_A5D720: NewIfNullPr clsusuario
  loc_A5D723: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_A5D728: FFree1Str var_8C
  loc_A5D72B: FFreeAd var_88 = "": var_94 = ""
  loc_A5D734: FFree1Var var_BC = ""
  loc_A5D737: LitI4 0
  loc_A5D73C: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_A5D73F: ImpAdLdI4 MemVar_C3D03C
  loc_A5D742: ConcatStr
  loc_A5D743: FStStrNoPop var_8C
  loc_A5D746: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_A5D749: ConcatStr
  loc_A5D74A: FStStrNoPop var_90
  loc_A5D74D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5D752: FFreeStr var_8C = ""
  loc_A5D759: ILdRf Me
  loc_A5D75C: FStAdNoPop
  loc_A5D760: ImpAdLdRf MemVar_C44F9C
  loc_A5D763: NewIfNullPr Me
  loc_A5D766: Me.Global.Unload from_stack_1
  loc_A5D76B: FFree1Ad var_88
  loc_A5D76E: ExitProcHresult
  loc_A5D76F: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '9546A0
  'Data Table: 423A44
  loc_954688: ILdRf Me
  loc_95468B: FStAdNoPop
  loc_95468F: ImpAdLdRf MemVar_C44F9C
  loc_954692: NewIfNullPr Me
  loc_954695: Me.Global.Unload from_stack_1
  loc_95469A: FFree1Ad var_88
  loc_95469D: ExitProcHresult
  loc_95469E: ImpAdLdFPR4 MemVar_5A4A04
End Sub

Private Sub cmdOK_Click() 'A224FC
  'Data Table: 423A44
  loc_A22350: FLdRfVar var_8C
  loc_A22353: FLdPr Me
  loc_A22356: VCallAd Control_ID_txtNuevaClave
  loc_A22359: FStAdFunc var_88
  loc_A2235C: FLdPr var_88
  loc_A2235F:  = Me.Text
  loc_A22364: ILdRf var_8C
  loc_A22367: LitStr vbNullString
  loc_A2236A: EqStr
  loc_A2236C: FLdRfVar var_94
  loc_A2236F: FLdPr Me
  loc_A22372: VCallAd Control_ID_txtConfirmarClave
  loc_A22375: FStAdFunc var_90
  loc_A22378: FLdPr var_90
  loc_A2237B:  = Me.Text
  loc_A22380: ILdRf var_94
  loc_A22383: LitStr vbNullString
  loc_A22386: EqStr
  loc_A22388: OrI4
  loc_A22389: FFreeStr var_8C = ""
  loc_A22390: FFreeAd var_88 = ""
  loc_A22397: BranchF loc_A223BA
  loc_A2239A: LitI4 0
  loc_A2239F: LitStr "Los campos de la nueva clave no pueden estar vacíos, reintente..."
  loc_A223A2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A223A7: FLdPr Me
  loc_A223AA: VCallAd Control_ID_txtNuevaClave
  loc_A223AD: CVarAd
  loc_A223B1: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A223B6: FFree1Var var_A4 = ""
  loc_A223B9: ExitProcHresult
  loc_A223BA: FLdRfVar var_8C
  loc_A223BD: FLdPr Me
  loc_A223C0: VCallAd Control_ID_txtClaveActual
  loc_A223C3: FStAdFunc var_88
  loc_A223C6: FLdPr var_88
  loc_A223C9:  = Me.Text
  loc_A223CE: ILdRf var_8C
  loc_A223D1: FLdRfVar var_94
  loc_A223D4: FLdPr Me
  loc_A223D7: VCallAd Control_ID_txtNuevaClave
  loc_A223DA: FStAdFunc var_90
  loc_A223DD: FLdPr var_90
  loc_A223E0:  = Me.Text
  loc_A223E5: ILdRf var_94
  loc_A223E8: EqStr
  loc_A223EA: FFreeStr var_8C = ""
  loc_A223F1: FFreeAd var_88 = ""
  loc_A223F8: BranchF loc_A22408
  loc_A223FB: LitI4 0
  loc_A22400: LitStr "Advertencia. La clave nueva es igual a la clave actual..."
  loc_A22403: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A22408: FLdRfVar var_8C
  loc_A2240B: FLdPr Me
  loc_A2240E: VCallAd Control_ID_txtNuevaClave
  loc_A22411: FStAdFunc var_88
  loc_A22414: FLdPr var_88
  loc_A22417:  = Me.Text
  loc_A2241C: ILdRf var_8C
  loc_A2241F: FLdRfVar var_94
  loc_A22422: FLdPr Me
  loc_A22425: VCallAd Control_ID_txtConfirmarClave
  loc_A22428: FStAdFunc var_90
  loc_A2242B: FLdPr var_90
  loc_A2242E:  = Me.Text
  loc_A22433: ILdRf var_94
  loc_A22436: NeStr
  loc_A22438: FFreeStr var_8C = ""
  loc_A2243F: FFreeAd var_88 = ""
  loc_A22446: BranchF loc_A22482
  loc_A22449: LitI4 0
  loc_A2244E: LitStr "La confirmación de la nueva clave es incorrecta, reintente..."
  loc_A22451: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A22456: LitStr vbNullString
  loc_A22459: FLdPr Me
  loc_A2245C: VCallAd Control_ID_txtConfirmarClave
  loc_A2245F: FStAdFunc var_88
  loc_A22462: FLdPr var_88
  loc_A22465: Me.Text = from_stack_1
  loc_A2246A: FFree1Ad var_88
  loc_A2246D: FLdPr Me
  loc_A22470: VCallAd Control_ID_txtConfirmarClave
  loc_A22473: FStAdFunc var_88
  loc_A22476: FLdPr var_88
  loc_A22479: Me.SetFocus
  loc_A2247E: FFree1Ad var_88
  loc_A22481: ExitProcHresult
  loc_A22482: FLdRfVar var_8C
  loc_A22485: FLdPr Me
  loc_A22488: VCallAd Control_ID_txtNuevaClave
  loc_A2248B: FStAdFunc var_88
  loc_A2248E: FLdPr var_88
  loc_A22491:  = Me.Text
  loc_A22496: ILdRf var_8C
  loc_A22499: ImpAdCallI2 Trim$()
  loc_A2249E: FStStrNoPop var_94
  loc_A224A1: ImpAdLdI4 MemVar_C3D03C
  loc_A224A4: FLdPr Me
  loc_A224A7: MemLdRfVar from_stack_1.global_52
  loc_A224AA: NewIfNullPr clsusuario
  loc_A224AD: Call clsusuario.EstablecerClave(from_stack_1v, from_stack_2v)
  loc_A224B2: FFreeStr var_8C = ""
  loc_A224B9: FFree1Ad var_88
  loc_A224BC: LitI4 0
  loc_A224C1: LitStr "Su NUEVA clave ha sido guardada. La misma caducará en "
  loc_A224C4: LitI2 255
  loc_A224C7: CStrI2
  loc_A224C9: FStStrNoPop var_8C
  loc_A224CC: ConcatStr
  loc_A224CD: FStStrNoPop var_94
  loc_A224D0: LitStr " días."
  loc_A224D3: ConcatStr
  loc_A224D4: FStStrNoPop var_A8
  loc_A224D7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A224DC: FFreeStr var_8C = "": var_94 = ""
  loc_A224E5: ILdRf Me
  loc_A224E8: FStAdNoPop
  loc_A224EC: ImpAdLdRf MemVar_C44F9C
  loc_A224EF: NewIfNullPr Me
  loc_A224F2: Me.Global.Unload from_stack_1
  loc_A224F7: FFree1Ad var_88
  loc_A224FA: ExitProcHresult
End Sub

Private Sub Form_Load() '940F7C
  'Data Table: 423A44
  loc_940F70: LitI2_Byte 3
  loc_940F72: CI2UI1
  loc_940F74: FLdPr Me
  loc_940F77: MemStI2 global_56
  loc_940F7A: ExitProcHresult
  loc_940F7B: CStr2Ansi
End Sub
