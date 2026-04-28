VERSION 5.00
Begin VB.Form frmLogin
  Caption = "Login"
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "frmLogin.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 2832
  ClientTop = 3480
  ClientWidth = 9456
  ClientHeight = 2280
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 8867.408
  ScaleHeight = 1347.099
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.CommandButton CmdCambiarClave
    Caption = "Cambiar Clave"
    Left = 3120
    Top = 1440
    Width = 1815
    Height = 495
    TabIndex = 8
    Tag = "4"
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
  Begin VB.TextBox txtUsuario
    Left = 1200
    Top = 240
    Width = 2325
    Height = 420
    TabIndex = 1
    Tag = "0"
    MaxLength = 20
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
  Begin VB.CommandButton cmdOK
    Caption = "Aceptar"
    Left = 240
    Top = 1440
    Width = 1260
    Height = 495
    TabIndex = 6
    Tag = "2"
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
    Left = 1680
    Top = 1440
    Width = 1260
    Height = 495
    TabIndex = 7
    Cancel = -1  'True
    Tag = "3"
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
  Begin VB.TextBox txtClave
    Left = 1200
    Top = 840
    Width = 2325
    Height = 420
    TabIndex = 4
    Tag = "1"
    PasswordChar = "*"
    MaxLength = 16
  End
  Begin VB.Label lblClave
    Left = 3600
    Top = 840
    Width = 5655
    Height = 420
    TabIndex = 5
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
  Begin VB.Label lblUsuario
    Left = 3600
    Top = 240
    Width = 5655
    Height = 420
    TabIndex = 2
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
  Begin VB.Label Label2
    Caption = "Usuario:"
    Left = 225
    Top = 240
    Width = 990
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
  Begin VB.Label Label3
    Caption = "Clave:"
    Left = 465
    Top = 840
    Width = 750
    Height = 300
    TabIndex = 3
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

Attribute VB_Name = "frmLogin"

Public LoginSucceeded As Boolean


Private Sub cmdOK_Click() 'AAB484
  'Data Table: 42F998
  loc_AAB3B4: LitStr vbNullString
  loc_AAB3B7: FLdPr Me
  loc_AAB3BA: MemStStrCopy
  loc_AAB3BE: LitI2_Byte 0
  loc_AAB3C0: PopTmpLdAd2 var_86
  loc_AAB3C3: Call txtUsuario_Validate(from_stack_1v)
  loc_AAB3C8: FLdPr Me
  loc_AAB3CB: MemLdStr global_64
  loc_AAB3CE: LitStr vbNullString
  loc_AAB3D1: NeStr
  loc_AAB3D3: BranchF loc_AAB3D7
  loc_AAB3D6: ExitProcHresult
  loc_AAB3D7: LitI2_Byte 0
  loc_AAB3D9: PopTmpLdAd2 var_86
  loc_AAB3DC: Call txtClave_Validate(from_stack_1v)
  loc_AAB3E1: FLdPr Me
  loc_AAB3E4: MemLdStr global_64
  loc_AAB3E7: LitStr vbNullString
  loc_AAB3EA: NeStr
  loc_AAB3EC: BranchF loc_AAB3F0
  loc_AAB3EF: ExitProcHresult
  loc_AAB3F0: LitI2_Byte 0
  loc_AAB3F2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AAB3F7: CVarDate var_A8
  loc_AAB3FB: FLdRfVar var_B8
  loc_AAB3FE: ImpAdCallFPR4  = Year()
  loc_AAB403: FLdRfVar var_B8
  loc_AAB406: CI2Var
  loc_AAB407: ImpAdStI2 MemVar_D93034
  loc_AAB40A: FFreeVar var_A8 = ""
  loc_AAB411: ImpAdCallI2 Proc_270_16_A5A584()
  loc_AAB416: ImpAdStI2 MemVar_D93036
  loc_AAB419: ImpAdCallFPR4 Proc_270_17_A5A74C()
  loc_AAB41E: ImpAdStFPR8 MemVar_D9307C
  loc_AAB421: LitI2 130
  loc_AAB424: CR8I2
  loc_AAB425: ImpAdStFPR8 MemVar_D93084
  loc_AAB428: LitStr "09-04-2026"
  loc_AAB42B: CDateStr
  loc_AAB42D: ImpAdStFPR8 MemVar_D9308C
  loc_AAB430: LitStr "Municipalidad de Guaymallén"
  loc_AAB433: LitStr "Municipalidad de San Martin"
  loc_AAB436: EqStr
  loc_AAB438: BranchF loc_AAB442
  loc_AAB43B: LitI2 1200
  loc_AAB43E: CR8I2
  loc_AAB43F: ImpAdStFPR8 MemVar_D93068
  loc_AAB442: Call Proc_19_11_AD61C4()
  loc_AAB447: ImpAdCallFPR4 Proc_57_21_AB0AF4()
  loc_AAB44C: LitI2_Byte &HFF
  loc_AAB44E: FLdPr Me
  loc_AAB451: MemStI2 LoginSucceeded
  loc_AAB454: ILdRf Me
  loc_AAB457: FStAdNoPop
  loc_AAB45B: ImpAdLdRf MemVar_D9C5D8
  loc_AAB45E: NewIfNullPr Global
  loc_AAB461: Global.Unload from_stack_1
  loc_AAB466: FFree1Ad var_BC
  loc_AAB469: LitVar_Missing var_CC
  loc_AAB46C: PopAdLdVar
  loc_AAB46D: LitVar_Missing var_98
  loc_AAB470: PopAdLdVar
  loc_AAB471: ImpAdLdRf MemVar_D931D0
  loc_AAB474: NewIfNullPr MDIrecaudacion
  loc_AAB477: MDIrecaudacion.Show from_stack_1, from_stack_2
  loc_AAB47C: ImpAdCallFPR4 Proc_272_40_B5CC94()
  loc_AAB481: ExitProcHresult
  loc_AAB482: ExitProcR8
End Sub

Private Sub txtClave_Validate(Cancel As Boolean) 'AECD20
  'Data Table: 42F998
  loc_AECB98: FLdRfVar var_8C
  loc_AECB9B: FLdPr Me
  loc_AECB9E: VCallAd Control_ID_txtClave
  loc_AECBA1: FStAdFunc var_88
  loc_AECBA4: FLdPr var_88
  loc_AECBA7:  = Me.Text
  loc_AECBAC: FLdRfVar var_90
  loc_AECBAF: ILdRf var_8C
  loc_AECBB2: ImpAdLdI4 MemVar_D9302C
  loc_AECBB5: FLdPr Me
  loc_AECBB8: MemLdRfVar from_stack_1.global_56
  loc_AECBBB: NewIfNullPr clsusuario
  loc_AECBBE: from_stack_3v = clsusuario.ValidaClaveUsuario(from_stack_1v, from_stack_2v)
  loc_AECBC3: ILdRf var_90
  loc_AECBC6: FLdPr Me
  loc_AECBC9: MemStStrCopy
  loc_AECBCD: FFreeStr var_8C = ""
  loc_AECBD4: FFree1Ad var_88
  loc_AECBD7: FLdPr Me
  loc_AECBDA: MemLdStr global_64
  loc_AECBDD: LitStr "El Usuario tiene la clave básica 123456..."
  loc_AECBE0: EqStr
  loc_AECBE2: BranchF loc_AECC12
  loc_AECBE5: FLdPr Me
  loc_AECBE8: MemLdStr global_64
  loc_AECBEB: LitStr vbCrLf
  loc_AECBEE: ConcatStr
  loc_AECBEF: FStStrNoPop var_8C
  loc_AECBF2: LitStr "A continuación se abrirá la ventana para cambiarla..."
  loc_AECBF5: ConcatStr
  loc_AECBF6: FStStrNoPop var_90
  loc_AECBF9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AECBFE: FFreeStr var_8C = ""
  loc_AECC05: Call CmdCambiarClave_Click()
  loc_AECC0A: LitI2_Byte &HFF
  loc_AECC0C: IStI2 Cancel
  loc_AECC0F: Branch loc_AECD01
  loc_AECC12: FLdPr Me
  loc_AECC15: MemLdStr global_64
  loc_AECC18: LitStr vbNullString
  loc_AECC1B: NeStr
  loc_AECC1D: BranchF loc_AECD01
  loc_AECC20: FLdPr Me
  loc_AECC23: MemLdI2 global_60
  loc_AECC26: LitI2_Byte 1
  loc_AECC28: SubI2
  loc_AECC29: FLdPr Me
  loc_AECC2C: MemStI2 global_60
  loc_AECC2F: FLdPr Me
  loc_AECC32: MemLdI2 global_60
  loc_AECC35: LitI2_Byte 1
  loc_AECC37: GeI2
  loc_AECC38: BranchF loc_AECC8D
  loc_AECC3B: FLdPr Me
  loc_AECC3E: VCallAd Control_ID_txtClave
  loc_AECC41: FStAdFuncNoPop
  loc_AECC44: CastAd
  loc_AECC47: FStAdFunc var_9C
  loc_AECC4A: FLdRfVar var_9C
  loc_AECC4D: FLdPr Me
  loc_AECC50: MemLdStr global_64
  loc_AECC53: LitStr vbCrLf
  loc_AECC56: ConcatStr
  loc_AECC57: FStStrNoPop var_8C
  loc_AECC5A: LitStr "Reintentos antes de inhabilitar al usuario: "
  loc_AECC5D: ConcatStr
  loc_AECC5E: FStStrNoPop var_90
  loc_AECC61: FLdPr Me
  loc_AECC64: MemLdI2 global_60
  loc_AECC67: CStrUI1
  loc_AECC69: FStStrNoPop var_94
  loc_AECC6C: ConcatStr
  loc_AECC6D: FStStrNoPop var_98
  loc_AECC70: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AECC75: IStI2 Cancel
  loc_AECC78: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_AECC83: FFreeAd var_88 = ""
  loc_AECC8A: Branch loc_AECD01
  loc_AECC8D: ImpAdLdI4 MemVar_D9302C
  loc_AECC90: FLdPr Me
  loc_AECC93: MemLdRfVar from_stack_1.global_56
  loc_AECC96: NewIfNullPr clsusuario
  loc_AECC99: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_AECC9E: FLdPr Me
  loc_AECCA1: VCallAd Control_ID_txtClave
  loc_AECCA4: FStAdFuncNoPop
  loc_AECCA7: CastAd
  loc_AECCAA: FStAdFunc var_9C
  loc_AECCAD: FLdRfVar var_9C
  loc_AECCB0: FLdPr Me
  loc_AECCB3: MemLdStr global_64
  loc_AECCB6: LitStr vbCrLf
  loc_AECCB9: ConcatStr
  loc_AECCBA: FStStrNoPop var_8C
  loc_AECCBD: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_AECCC0: ConcatStr
  loc_AECCC1: FStStrNoPop var_90
  loc_AECCC4: ImpAdLdI4 MemVar_D9302C
  loc_AECCC7: ConcatStr
  loc_AECCC8: FStStrNoPop var_94
  loc_AECCCB: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_AECCCE: ConcatStr
  loc_AECCCF: FStStrNoPop var_98
  loc_AECCD2: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AECCD7: IStI2 Cancel
  loc_AECCDA: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_AECCE5: FFreeAd var_88 = ""
  loc_AECCEC: ILdRf Me
  loc_AECCEF: FStAdNoPop
  loc_AECCF3: ImpAdLdRf MemVar_D9C5D8
  loc_AECCF6: NewIfNullPr Global
  loc_AECCF9: Global.Unload from_stack_1
  loc_AECCFE: FFree1Ad var_88
  loc_AECD01: ILdI2 Cancel
  loc_AECD04: NotI4
  loc_AECD05: BranchF loc_AECD1E
  loc_AECD08: LitI2_Byte &HFF
  loc_AECD0A: FLdPr Me
  loc_AECD0D: VCallAd Control_ID_cmdOK
  loc_AECD10: FStAdFunc var_88
  loc_AECD13: FLdPr var_88
  loc_AECD16: Me.Enabled = from_stack_1b
  loc_AECD1B: FFree1Ad var_88
  loc_AECD1E: ExitProcHresult
End Sub

Private Sub txtUsuario_Change() '9B1290
  'Data Table: 42F998
  loc_9B1284: LitI2_Byte 3
  loc_9B1286: CI2UI1
  loc_9B1288: FLdPr Me
  loc_9B128B: MemStI2 global_60
  loc_9B128E: ExitProcHresult
End Sub

Private Sub txtUsuario_GotFocus() '9BFB88
  'Data Table: 42F998
  loc_9BFB74: FLdPr Me
  loc_9BFB77: VCallAd Control_ID_txtUsuario
  loc_9BFB7A: CVarAd
  loc_9BFB7E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFB83: FFree1Var var_94 = ""
  loc_9BFB86: ExitProcHresult
End Sub

Private Sub txtUsuario_Validate(Cancel As Boolean) 'B02690
  'Data Table: 42F998
  loc_B02498: FLdRfVar var_8C
  loc_B0249B: FLdPr Me
  loc_B0249E: VCallAd Control_ID_txtUsuario
  loc_B024A1: FStAdFunc var_88
  loc_B024A4: FLdPr var_88
  loc_B024A7:  = Me.Text
  loc_B024AC: ILdRf var_8C
  loc_B024AF: LitStr vbNullString
  loc_B024B2: NeStr
  loc_B024B4: FFree1Str var_8C
  loc_B024B7: FFree1Ad var_88
  loc_B024BA: BranchF loc_B025F5
  loc_B024BD: FLdRfVar var_8C
  loc_B024C0: FLdPr Me
  loc_B024C3: VCallAd Control_ID_txtUsuario
  loc_B024C6: FStAdFunc var_88
  loc_B024C9: FLdPr var_88
  loc_B024CC:  = Me.Text
  loc_B024D1: FLdPr Me
  loc_B024D4: MemLdRfVar from_stack_1.global_68
  loc_B024D7: NewIfNullRf
  loc_B024DB: ILdRf var_8C
  loc_B024DE: ImpAdCallI2 Proc_270_3_C29F5C(, )
  loc_B024E3: FFree1Str var_8C
  loc_B024E6: FFree1Ad var_88
  loc_B024E9: BranchF loc_B025C1
  loc_B024EC: FLdRfVar var_8C
  loc_B024EF: FLdPr Me
  loc_B024F2: MemLdRfVar from_stack_1.global_68
  loc_B024F5: NewIfNullPr tblusuario
  loc_B024F8: from_stack_1v = tblusuario.CodiUsuaGet()
  loc_B024FD: FLdZeroAd var_8C
  loc_B02500: ImpAdStStr MemVar_D9302C
  loc_B02504: FLdRfVar var_8C
  loc_B02507: ImpAdLdI4 MemVar_D9302C
  loc_B0250A: FLdPr Me
  loc_B0250D: MemLdRfVar from_stack_1.global_56
  loc_B02510: NewIfNullPr clsusuario
  loc_B02513: from_stack_2v = clsusuario.ValidarUsuario(from_stack_1v)
  loc_B02518: ILdRf var_8C
  loc_B0251B: FLdPr Me
  loc_B0251E: MemStStrCopy
  loc_B02522: FFree1Str var_8C
  loc_B02525: FLdPr Me
  loc_B02528: MemLdStr global_64
  loc_B0252B: LitStr "El Usuario tiene la clave básica 123456..."
  loc_B0252E: EqStr
  loc_B02530: FLdPr Me
  loc_B02533: MemLdStr global_64
  loc_B02536: LitStr "El Usuario tiene la clave vencida..."
  loc_B02539: EqStr
  loc_B0253B: OrI4
  loc_B0253C: BranchF loc_B0256C
  loc_B0253F: FLdPr Me
  loc_B02542: MemLdStr global_64
  loc_B02545: LitStr vbCrLf
  loc_B02548: ConcatStr
  loc_B02549: FStStrNoPop var_8C
  loc_B0254C: LitStr "A continuación se abrirá la ventana para cambiarla..."
  loc_B0254F: ConcatStr
  loc_B02550: FStStrNoPop var_90
  loc_B02553: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B02558: FFreeStr var_8C = ""
  loc_B0255F: Call CmdCambiarClave_Click()
  loc_B02564: LitI2_Byte &HFF
  loc_B02566: IStI2 Cancel
  loc_B02569: Branch loc_B025A1
  loc_B0256C: FLdPr Me
  loc_B0256F: MemLdStr global_64
  loc_B02572: LitStr vbNullString
  loc_B02575: NeStr
  loc_B02577: BranchF loc_B025A1
  loc_B0257A: FLdPr Me
  loc_B0257D: VCallAd Control_ID_txtClave
  loc_B02580: FStAdFuncNoPop
  loc_B02583: CastAd
  loc_B02586: FStAdFunc var_94
  loc_B02589: FLdRfVar var_94
  loc_B0258C: FLdPr Me
  loc_B0258F: MemLdStr global_64
  loc_B02592: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B02597: IStI2 Cancel
  loc_B0259A: FFreeAd var_88 = ""
  loc_B025A1: ILdI2 Cancel
  loc_B025A4: NotI4
  loc_B025A5: BranchF loc_B025BE
  loc_B025A8: LitI2_Byte &HFF
  loc_B025AA: FLdPr Me
  loc_B025AD: VCallAd Control_ID_CmdCambiarClave
  loc_B025B0: FStAdFunc var_88
  loc_B025B3: FLdPr var_88
  loc_B025B6: Me.Enabled = from_stack_1b
  loc_B025BB: FFree1Ad var_88
  loc_B025BE: Branch loc_B025F2
  loc_B025C1: LitStr "Ingrese el usuario..."
  loc_B025C4: FLdPr Me
  loc_B025C7: MemStStrCopy
  loc_B025CB: FLdPr Me
  loc_B025CE: VCallAd Control_ID_txtUsuario
  loc_B025D1: FStAdFuncNoPop
  loc_B025D4: CastAd
  loc_B025D7: FStAdFunc var_94
  loc_B025DA: FLdRfVar var_94
  loc_B025DD: FLdPr Me
  loc_B025E0: MemLdStr global_64
  loc_B025E3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B025E8: IStI2 Cancel
  loc_B025EB: FFreeAd var_88 = ""
  loc_B025F2: Branch loc_B02626
  loc_B025F5: LitStr "Ingrese el usuario..."
  loc_B025F8: FLdPr Me
  loc_B025FB: MemStStrCopy
  loc_B025FF: FLdPr Me
  loc_B02602: VCallAd Control_ID_txtUsuario
  loc_B02605: FStAdFuncNoPop
  loc_B02608: CastAd
  loc_B0260B: FStAdFunc var_94
  loc_B0260E: FLdRfVar var_94
  loc_B02611: FLdPr Me
  loc_B02614: MemLdStr global_64
  loc_B02617: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_B0261C: IStI2 Cancel
  loc_B0261F: FFreeAd var_88 = ""
  loc_B02626: ILdI2 Cancel
  loc_B02629: NotI4
  loc_B0262A: BranchF loc_B0268E
  loc_B0262D: FLdRfVar var_8C
  loc_B02630: FLdPr Me
  loc_B02633: MemLdRfVar from_stack_1.global_68
  loc_B02636: NewIfNullPr tblusuario
  loc_B02639: from_stack_1v = tblusuario.DetaPersGet()
  loc_B0263E: ILdRf var_8C
  loc_B02641: FLdPr Me
  loc_B02644: VCallAd Control_ID_lblUsuario
  loc_B02647: FStAdFunc var_88
  loc_B0264A: FLdPr var_88
  loc_B0264D: Me.Caption = from_stack_1
  loc_B02652: FFree1Str var_8C
  loc_B02655: FFree1Ad var_88
  loc_B02658: LitStr "Su clave caduca el día "
  loc_B0265B: FLdRfVar var_8C
  loc_B0265E: FLdPr Me
  loc_B02661: MemLdRfVar from_stack_1.global_68
  loc_B02664: NewIfNullPr tblusuario
  loc_B02667: from_stack_1v = tblusuario.FeveUsuaGet()
  loc_B0266C: ILdRf var_8C
  loc_B0266F: ConcatStr
  loc_B02670: FStStrNoPop var_90
  loc_B02673: FLdPr Me
  loc_B02676: VCallAd Control_ID_lblClave
  loc_B02679: FStAdFunc var_88
  loc_B0267C: FLdPr var_88
  loc_B0267F: Me.Caption = from_stack_1
  loc_B02684: FFreeStr var_8C = ""
  loc_B0268B: FFree1Ad var_88
  loc_B0268E: ExitProcHresult
End Sub

Private Sub Form_Load() 'A43120
  'Data Table: 42F998
  loc_A430CC: ILdRf Me
  loc_A430CF: CastAd
  loc_A430D2: FStAdFunc var_88
  loc_A430D5: FLdRfVar var_88
  loc_A430D8: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A430DD: FFree1Ad var_88
  loc_A430E0: FLdRfVar var_90
  loc_A430E3: FLdPr Me
  loc_A430E6:  = Me.Width
  loc_A430EB: FLdRfVar var_8C
  loc_A430EE: ImpAdLdRf MemVar_D931D0
  loc_A430F1: NewIfNullPr MDIrecaudacion
  loc_A430F4:  = MDIrecaudacion.Width
  loc_A430F9: FLdFPR4 var_8C
  loc_A430FC: LitI2_Byte 2
  loc_A430FE: CR8I2
  loc_A430FF: DivR8
  loc_A43100: FLdFPR4 var_90
  loc_A43103: LitI2_Byte 2
  loc_A43105: CR8I2
  loc_A43106: DivR8
  loc_A43107: SubR4
  loc_A43108: PopFPR4
  loc_A43109: FLdPr Me
  loc_A4310C: Me.Left = from_stack_1s
  loc_A43111: LitI2_Byte 0
  loc_A43113: CR8I2
  loc_A43114: PopFPR4
  loc_A43115: FLdPr Me
  loc_A43118: Me.Top = from_stack_1s
  loc_A4311D: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9BFA24
  'Data Table: 42F998
  loc_9BFA0C: ILdI2 KeyAscii
  loc_9BFA0F: CI4UI1
  loc_9BFA10: LitI4 &HD
  loc_9BFA15: EqI4
  loc_9BFA16: BranchF loc_9BFA23
  loc_9BFA19: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_9BFA1E: LitI2_Byte 0
  loc_9BFA20: IStI2 KeyAscii
  loc_9BFA23: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() 'A094D8
  'Data Table: 42F998
  loc_A094A0: LitI2_Byte 0
  loc_A094A2: FLdPr Me
  loc_A094A5: MemStI2 LoginSucceeded
  loc_A094A8: ILdRf Me
  loc_A094AB: FStAdNoPop
  loc_A094AF: ImpAdLdRf MemVar_D9C5D8
  loc_A094B2: NewIfNullPr Global
  loc_A094B5: Global.Unload from_stack_1
  loc_A094BA: FFree1Ad var_88
  loc_A094BD: ImpAdLdRf MemVar_D931D0
  loc_A094C0: NewIfNullAd
  loc_A094C3: FStAdNoPop
  loc_A094C7: ImpAdLdRf MemVar_D9C5D8
  loc_A094CA: NewIfNullPr Global
  loc_A094CD: Global.Unload from_stack_1
  loc_A094D2: FFree1Ad var_88
  loc_A094D5: ExitProcHresult
End Sub

Private Sub CmdCambiarClave_Click() 'A43094
  'Data Table: 42F998
  loc_A43044: LitStr vbNullString
  loc_A43047: FLdPr Me
  loc_A4304A: VCallAd Control_ID_lblClave
  loc_A4304D: FStAdFunc var_88
  loc_A43050: FLdPr var_88
  loc_A43053: Me.Caption = from_stack_1
  loc_A43058: FFree1Ad var_88
  loc_A4305B: ImpAdLdI4 MemVar_D9302C
  loc_A4305E: LitStr vbNullString
  loc_A43061: NeStr
  loc_A43063: BranchF loc_A4307E
  loc_A43066: LitVar_Missing var_A8
  loc_A43069: PopAdLdVar
  loc_A4306A: LitVarI4
  loc_A43072: PopAdLdVar
  loc_A43073: ImpAdLdRf MemVar_D93FC0
  loc_A43076: NewIfNullPr dlgCambiarClave
  loc_A43079: dlgCambiarClave.Show from_stack_1, from_stack_2
  loc_A4307E: FLdPr Me
  loc_A43081: VCallAd Control_ID_txtClave
  loc_A43084: CVarAd
  loc_A43088: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4308D: FFree1Var var_B8 = ""
  loc_A43090: ExitProcHresult
  loc_A43091: ArrayRebase1Var
  loc_A43093: ExitProcHresult
End Sub

Public Function LoginSucceededGet() '430094
  LoginSucceededGet = LoginSucceeded
End Function

Public Sub LoginSucceededPut(Value) '4300A3
  LoginSucceeded = Value
End Sub

Private Function Proc_19_11_AD61C4() 'AD61C4
  'Data Table: 42F998
  loc_AD60B0: LitI2_Byte 0
  loc_AD60B2: FStI2 var_86
  loc_AD60B5: LitI4 1
  loc_AD60BA: LitI4 1
  loc_AD60BF: ImpAdLdRf MemVar_D93094
  loc_AD60C2: Redim
  loc_AD60CC: FLdRfVar var_90
  loc_AD60CF: ImpAdLdRf MemVar_D931D0
  loc_AD60D2: NewIfNullPr MDIrecaudacion
  loc_AD60D5:  = MDIrecaudacion.Controls
  loc_AD60DA: FLdZeroAd var_90
  loc_AD60DD: FStAdFuncNoPop
  loc_AD60E0: FLdRfVar var_8C
  loc_AD60E3: ForEachCollObj
  loc_AD60EB: ILdRf var_8C
  loc_AD60EE: CheckType
  loc_AD60F2: BranchF loc_AD61B8
  loc_AD60F5: FLdPr var_8C
  loc_AD60F8: LateMemLdVar
  loc_AD60FD: NotVar var_B8
  loc_AD6101: FLdPr var_8C
  loc_AD6104: LateMemLdVar
  loc_AD6109: LitVarStr var_C8, vbNullString
  loc_AD610E: HardType
  loc_AD610F: NeVar var_E8
  loc_AD6113: AndVar var_F8
  loc_AD6117: FLdPr var_8C
  loc_AD611A: LateMemLdVar
  loc_AD611F: LitVarStr var_108, "Ejecutar"
  loc_AD6124: HardType
  loc_AD6125: EqVar var_128
  loc_AD6129: NotVar var_138
  loc_AD612D: AndVar var_148
  loc_AD6131: CBoolVarNull
  loc_AD6133: FFreeVar var_A8 = "": var_D8 = ""
  loc_AD613C: BranchF loc_AD61B8
  loc_AD613F: FLdI2 var_86
  loc_AD6142: LitI2_Byte 1
  loc_AD6144: AddI2
  loc_AD6145: FStI2 var_86
  loc_AD6148: LitI4 1
  loc_AD614D: FLdI2 var_86
  loc_AD6150: CI4UI1
  loc_AD6151: ImpAdLdRf MemVar_D93094
  loc_AD6154: RedimPreserve
  loc_AD615E: FLdPr var_8C
  loc_AD6161: LateMemLdVar
  loc_AD6166: CStrVarTmp
  loc_AD6167: FStStrNoPop var_14C
  loc_AD616A: FLdI2 var_86
  loc_AD616D: CI4UI1
  loc_AD616E: ImpAdLdI4 MemVar_D93094
  loc_AD6171: Ary1LdPr
  loc_AD6172: MemStStrCopy
  loc_AD6176: FFree1Str var_14C
  loc_AD6179: FFree1Var var_A8 = ""
  loc_AD617C: FLdPr var_8C
  loc_AD617F: LateMemLdVar
  loc_AD6184: CStrVarTmp
  loc_AD6185: FStStrNoPop var_14C
  loc_AD6188: FLdI2 var_86
  loc_AD618B: CI4UI1
  loc_AD618C: ImpAdLdI4 MemVar_D93094
  loc_AD618F: Ary1LdPr
  loc_AD6190: MemStStrCopy
  loc_AD6194: FFree1Str var_14C
  loc_AD6197: FFree1Var var_A8 = ""
  loc_AD619A: FLdPr var_8C
  loc_AD619D: LateMemLdVar
  loc_AD61A2: CStrVarTmp
  loc_AD61A3: FStStrNoPop var_14C
  loc_AD61A6: FLdI2 var_86
  loc_AD61A9: CI4UI1
  loc_AD61AA: ImpAdLdI4 MemVar_D93094
  loc_AD61AD: Ary1LdPr
  loc_AD61AE: MemStStrCopy
  loc_AD61B2: FFree1Str var_14C
  loc_AD61B5: FFree1Var var_A8 = ""
  loc_AD61B8: FLdRfVar var_8C
  loc_AD61BB: NextEachCollObj
  loc_AD61C3: ExitProcHresult
End Function
