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
  ClientLeft = 2835
  ClientTop = 3480
  ClientWidth = 9450
  ClientHeight = 3030
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 8873.038
  ScaleHeight = 1790.223
  ShowInTaskbar = 0   'False
  Moveable = 0   'False
  Begin VB.ComboBox cboPeriodo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1200
    Top = 240
    Width = 975
    Height = 420
    TabIndex = 0
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
  Begin VB.CommandButton CmdCambiarClave
    Caption = "Cambiar Clave"
    Left = 3120
    Top = 2160
    Width = 1815
    Height = 495
    TabIndex = 10
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
    Top = 840
    Width = 2325
    Height = 420
    TabIndex = 3
    Tag = "0"
    MaxLength = 8
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
    Top = 2160
    Width = 1260
    Height = 495
    TabIndex = 8
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
    Top = 2160
    Width = 1260
    Height = 495
    TabIndex = 9
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
    Top = 1440
    Width = 2325
    Height = 420
    TabIndex = 5
    Tag = "1"
    PasswordChar = "*"
    MaxLength = 16
  End
  Begin VB.Label lblClave
    Left = 3600
    Top = 1440
    Width = 5655
    Height = 420
    TabIndex = 7
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
    Top = 840
    Width = 5655
    Height = 420
    TabIndex = 4
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
    Caption = "Periodo:"
    Left = 240
    Top = 240
    Width = 975
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
    Caption = "Usuario:"
    Left = 225
    Top = 840
    Width = 990
    Height = 300
    TabIndex = 2
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
    Top = 1440
    Width = 750
    Height = 300
    TabIndex = 6
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


Private Sub cmdOK_Click() '9BC9B8
  'Data Table: 42AB7C
  loc_9BC8F4: LitStr vbNullString
  loc_9BC8F7: FLdPr Me
  loc_9BC8FA: MemStStrCopy
  loc_9BC8FE: LitI2_Byte 0
  loc_9BC900: PopTmpLdAd2 var_86
  loc_9BC903: Call txtUsuario_Validate(from_stack_1v)
  loc_9BC908: FLdPr Me
  loc_9BC90B: MemLdStr global_68
  loc_9BC90E: LitStr vbNullString
  loc_9BC911: NeStr
  loc_9BC913: BranchF loc_9BC917
  loc_9BC916: ExitProcHresult
  loc_9BC917: LitI2_Byte 0
  loc_9BC919: PopTmpLdAd2 var_86
  loc_9BC91C: Call txtClave_Validate(from_stack_1v)
  loc_9BC921: FLdPr Me
  loc_9BC924: MemLdStr global_68
  loc_9BC927: LitStr vbNullString
  loc_9BC92A: NeStr
  loc_9BC92C: BranchF loc_9BC930
  loc_9BC92F: ExitProcHresult
  loc_9BC930: FLdRfVar var_90
  loc_9BC933: FLdPr Me
  loc_9BC936: VCallAd Control_ID_cboPeriodo
  loc_9BC939: FStAdFunc var_8C
  loc_9BC93C: FLdPr var_8C
  loc_9BC93F:  = Me.Text
  loc_9BC944: ILdRf var_90
  loc_9BC947: CI2Str
  loc_9BC949: ImpAdStI2 MemVar_C3D064
  loc_9BC94C: FFree1Str var_90
  loc_9BC94F: FFree1Ad var_8C
  loc_9BC952: ImpAdLdRf MemVar_C3DB88
  loc_9BC955: NewIfNullPr MdiContPres
  loc_9BC958: Call MdiContPres.ActualizaMenuPeriodos()
  loc_9BC95D: Call Proc_122_11_A07C74()
  loc_9BC962: ImpAdCallFPR4 Proc_261_64_A0AEDC()
  loc_9BC967: LitI2_Byte &HFF
  loc_9BC969: FLdPr Me
  loc_9BC96C: MemStI2 LoginSucceeded
  loc_9BC96F: ILdRf Me
  loc_9BC972: FStAdNoPop
  loc_9BC976: ImpAdLdRf MemVar_C44F9C
  loc_9BC979: NewIfNullPr Me
  loc_9BC97C: Me.Global.Unload from_stack_1
  loc_9BC981: FFree1Ad var_8C
  loc_9BC984: LitVar_Missing var_B0
  loc_9BC987: PopAdLdVar
  loc_9BC988: LitVar_Missing var_A0
  loc_9BC98B: PopAdLdVar
  loc_9BC98C: ImpAdLdRf MemVar_C3DB88
  loc_9BC98F: NewIfNullPr MdiContPres
  loc_9BC992: MdiContPres.Show from_stack_1, from_stack_2
  loc_9BC997: ImpAdCallFPR4 Proc_261_40_B3BA9C()
  loc_9BC99C: ImpAdLdI4 MemVar_C3D03C
  loc_9BC99F: LitStr "root"
  loc_9BC9A2: EqStr
  loc_9BC9A4: LitI2_Byte 0
  loc_9BC9A6: AndI4
  loc_9BC9A7: BranchF loc_9BC9B7
  loc_9BC9AA: LitI4 0
  loc_9BC9AF: LitStr "Asientos de Recaudacion DESACTIVADOS ..."
  loc_9BC9B2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9BC9B7: ExitProcHresult
End Sub

Private Sub txtUsuario_Change() '940E14
  'Data Table: 42AB7C
  loc_940E08: LitI2_Byte 3
  loc_940E0A: CI2UI1
  loc_940E0C: FLdPr Me
  loc_940E0F: MemStI2 global_64
  loc_940E12: ExitProcHresult
End Sub

Private Sub txtUsuario_GotFocus() '94D5B0
  'Data Table: 42AB7C
  loc_94D59C: FLdPr Me
  loc_94D59F: VCallAd Control_ID_txtUsuario
  loc_94D5A2: CVarAd
  loc_94D5A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D5AB: FFree1Var var_94 = ""
  loc_94D5AE: ExitProcHresult
End Sub

Private Sub txtUsuario_Validate(Cancel As Boolean) 'A66D14
  'Data Table: 42AB7C
  loc_A669CC: FLdRfVar var_8C
  loc_A669CF: FLdPr Me
  loc_A669D2: VCallAd Control_ID_txtUsuario
  loc_A669D5: FStAdFunc var_88
  loc_A669D8: FLdPr var_88
  loc_A669DB:  = Me.Text
  loc_A669E0: ILdRf var_8C
  loc_A669E3: LitStr vbNullString
  loc_A669E6: NeStr
  loc_A669E8: FFree1Str var_8C
  loc_A669EB: FFree1Ad var_88
  loc_A669EE: BranchF loc_A66C62
  loc_A669F1: FLdRfVar var_8C
  loc_A669F4: FLdPr Me
  loc_A669F7: VCallAd Control_ID_txtUsuario
  loc_A669FA: FStAdFunc var_88
  loc_A669FD: FLdPr var_88
  loc_A66A00:  = Me.Text
  loc_A66A05: FLdPr Me
  loc_A66A08: MemLdRfVar from_stack_1.global_72
  loc_A66A0B: NewIfNullRf
  loc_A66A0F: ILdRf var_8C
  loc_A66A12: ImpAdCallI2 Proc_259_38_B44564(, )
  loc_A66A17: FFree1Str var_8C
  loc_A66A1A: FFree1Ad var_88
  loc_A66A1D: BranchF loc_A66C19
  loc_A66A20: FLdRfVar var_8C
  loc_A66A23: FLdPr Me
  loc_A66A26: MemLdRfVar from_stack_1.global_72
  loc_A66A29: NewIfNullPr tblusuario
  loc_A66A2C: from_stack_1v = tblusuario.CodiUsuaGet()
  loc_A66A31: FLdZeroAd var_8C
  loc_A66A34: ImpAdStStr MemVar_C3D03C
  loc_A66A38: FLdRfVar var_8C
  loc_A66A3B: FLdPr Me
  loc_A66A3E: MemLdRfVar from_stack_1.global_72
  loc_A66A41: NewIfNullPr tblusuario
  loc_A66A44: from_stack_1v = tblusuario.GDEUsuaGet()
  loc_A66A49: FLdZeroAd var_8C
  loc_A66A4C: ImpAdStStr MemVar_C3D040
  loc_A66A50: LitStr "Municipalidad de Guaymallén"
  loc_A66A53: LitStr "Municipalidad de Guaymallén"
  loc_A66A56: EqStr
  loc_A66A58: BranchF loc_A66AC7
  loc_A66A5B: FLdRfVar var_8C
  loc_A66A5E: FLdPr Me
  loc_A66A61: MemLdRfVar from_stack_1.global_72
  loc_A66A64: NewIfNullPr tblusuario
  loc_A66A67: from_stack_1v = tblusuario.DetaPersGet()
  loc_A66A6C: FLdRfVar var_90
  loc_A66A6F: FLdPr Me
  loc_A66A72: MemLdRfVar from_stack_1.global_72
  loc_A66A75: NewIfNullPr tblusuario
  loc_A66A78: from_stack_1v = tblusuario.DetaPersGet()
  loc_A66A7D: FLdRfVar var_94
  loc_A66A80: FLdPr Me
  loc_A66A83: MemLdRfVar from_stack_1.global_72
  loc_A66A86: NewIfNullPr tblusuario
  loc_A66A89: from_stack_1v = tblusuario.CodiUsuaGet()
  loc_A66A8E: FLdZeroAd var_94
  loc_A66A91: CVarStr var_C4
  loc_A66A94: FLdZeroAd var_90
  loc_A66A97: CVarStr var_B4
  loc_A66A9A: ILdRf var_8C
  loc_A66A9D: LitStr vbNullString
  loc_A66AA0: NeStr
  loc_A66AA2: CVarBoolI2 var_A4
  loc_A66AA6: FLdRfVar var_D4
  loc_A66AA9: ImpAdCallFPR4  = IIf(, , )
  loc_A66AAE: FLdRfVar var_D4
  loc_A66AB1: CStrVarTmp
  loc_A66AB2: ImpAdStStr MemVar_C3D044
  loc_A66AB6: FFree1Str var_8C
  loc_A66AB9: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_A66AC4: Branch loc_A66ADF
  loc_A66AC7: FLdRfVar var_8C
  loc_A66ACA: FLdPr Me
  loc_A66ACD: MemLdRfVar from_stack_1.global_72
  loc_A66AD0: NewIfNullPr tblusuario
  loc_A66AD3: from_stack_1v = tblusuario.CodiUsuaGet()
  loc_A66AD8: FLdZeroAd var_8C
  loc_A66ADB: ImpAdStStr MemVar_C3D044
  loc_A66ADF: FLdRfVar var_8C
  loc_A66AE2: FLdPr Me
  loc_A66AE5: MemLdRfVar from_stack_1.global_72
  loc_A66AE8: NewIfNullPr tblusuario
  loc_A66AEB: from_stack_1v = tblusuario.FeatUsuaGet()
  loc_A66AF0: LitVar_TRUE var_C4
  loc_A66AF3: LitVar_FALSE
  loc_A66AF7: ILdRf var_8C
  loc_A66AFA: CR8Str
  loc_A66AFC: LitI2_Byte 0
  loc_A66AFE: CR8I2
  loc_A66AFF: EqR4
  loc_A66B00: CVarBoolI2 var_A4
  loc_A66B04: FLdRfVar var_D4
  loc_A66B07: ImpAdCallFPR4  = IIf(, , )
  loc_A66B0C: FLdRfVar var_D4
  loc_A66B0F: CBoolVar
  loc_A66B11: ImpAdStI2 MemVar_C3D048
  loc_A66B14: FFree1Str var_8C
  loc_A66B17: FFreeVar var_A4 = "": var_B4 = "": var_C4 = ""
  loc_A66B22: FLdRfVar var_8C
  loc_A66B25: ImpAdLdI4 MemVar_C3D03C
  loc_A66B28: FLdPr Me
  loc_A66B2B: MemLdRfVar from_stack_1.global_56
  loc_A66B2E: NewIfNullPr clsusuario
  loc_A66B31: from_stack_2v = clsusuario.ValidarUsuario(from_stack_1v)
  loc_A66B36: ILdRf var_8C
  loc_A66B39: FLdPr Me
  loc_A66B3C: MemStStrCopy
  loc_A66B40: FFree1Str var_8C
  loc_A66B43: LitI4 1
  loc_A66B48: FLdPr Me
  loc_A66B4B: MemLdStr global_68
  loc_A66B4E: LitStr "El Usuario tiene la clave básica 123456..."
  loc_A66B51: LitI4 0
  loc_A66B56: FnInStr4
  loc_A66B58: LitI4 0
  loc_A66B5D: GtI4
  loc_A66B5E: LitI4 1
  loc_A66B63: FLdPr Me
  loc_A66B66: MemLdStr global_68
  loc_A66B69: LitStr "El Usuario tiene la clave vencida..."
  loc_A66B6C: LitI4 0
  loc_A66B71: FnInStr4
  loc_A66B73: LitI4 0
  loc_A66B78: GtI4
  loc_A66B79: OrI4
  loc_A66B7A: BranchF loc_A66BAF
  loc_A66B7D: LitI4 0
  loc_A66B82: FLdPr Me
  loc_A66B85: MemLdStr global_68
  loc_A66B88: LitStr vbCrLf
  loc_A66B8B: ConcatStr
  loc_A66B8C: FStStrNoPop var_8C
  loc_A66B8F: LitStr "A continuación se abrirá la ventana para cambiarla..."
  loc_A66B92: ConcatStr
  loc_A66B93: FStStrNoPop var_90
  loc_A66B96: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A66B9B: FFreeStr var_8C = ""
  loc_A66BA2: Call CmdCambiarClave_Click()
  loc_A66BA7: LitI2_Byte &HFF
  loc_A66BA9: IStI2 Cancel
  loc_A66BAC: Branch loc_A66BF9
  loc_A66BAF: FLdPr Me
  loc_A66BB2: MemLdStr global_68
  loc_A66BB5: LitStr vbNullString
  loc_A66BB8: NeStr
  loc_A66BBA: BranchF loc_A66BF9
  loc_A66BBD: FLdPr Me
  loc_A66BC0: VCallAd Control_ID_txtClave
  loc_A66BC3: FStAdFunc var_100
  loc_A66BC6: LitNothing
  loc_A66BC8: CastAd
  loc_A66BCB: FStAdFunc var_FC
  loc_A66BCE: FLdRfVar var_FC
  loc_A66BD1: FLdZeroAd var_100
  loc_A66BD4: FStAdFuncNoPop
  loc_A66BD7: CastAd
  loc_A66BDA: FStAdFunc var_F8
  loc_A66BDD: FLdRfVar var_F8
  loc_A66BE0: FLdPr Me
  loc_A66BE3: MemLdRfVar from_stack_1.global_68
  loc_A66BE6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A66BEB: IStI2 Cancel
  loc_A66BEE: FFreeAd var_88 = "": var_F8 = "": var_FC = ""
  loc_A66BF9: ILdI2 Cancel
  loc_A66BFC: NotI4
  loc_A66BFD: BranchF loc_A66C16
  loc_A66C00: LitI2_Byte &HFF
  loc_A66C02: FLdPr Me
  loc_A66C05: VCallAd Control_ID_CmdCambiarClave
  loc_A66C08: FStAdFunc var_88
  loc_A66C0B: FLdPr var_88
  loc_A66C0E: Me.Enabled = from_stack_1b
  loc_A66C13: FFree1Ad var_88
  loc_A66C16: Branch loc_A66C5F
  loc_A66C19: LitStr "Ingrese el usuario..."
  loc_A66C1C: FLdPr Me
  loc_A66C1F: MemStStrCopy
  loc_A66C23: FLdPr Me
  loc_A66C26: VCallAd Control_ID_txtUsuario
  loc_A66C29: FStAdFunc var_100
  loc_A66C2C: LitNothing
  loc_A66C2E: CastAd
  loc_A66C31: FStAdFunc var_FC
  loc_A66C34: FLdRfVar var_FC
  loc_A66C37: FLdZeroAd var_100
  loc_A66C3A: FStAdFuncNoPop
  loc_A66C3D: CastAd
  loc_A66C40: FStAdFunc var_F8
  loc_A66C43: FLdRfVar var_F8
  loc_A66C46: FLdPr Me
  loc_A66C49: MemLdRfVar from_stack_1.global_68
  loc_A66C4C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A66C51: IStI2 Cancel
  loc_A66C54: FFreeAd var_88 = "": var_F8 = "": var_FC = ""
  loc_A66C5F: Branch loc_A66CA8
  loc_A66C62: LitStr "Ingrese el usuario..."
  loc_A66C65: FLdPr Me
  loc_A66C68: MemStStrCopy
  loc_A66C6C: FLdPr Me
  loc_A66C6F: VCallAd Control_ID_txtUsuario
  loc_A66C72: FStAdFunc var_100
  loc_A66C75: LitNothing
  loc_A66C77: CastAd
  loc_A66C7A: FStAdFunc var_FC
  loc_A66C7D: FLdRfVar var_FC
  loc_A66C80: FLdZeroAd var_100
  loc_A66C83: FStAdFuncNoPop
  loc_A66C86: CastAd
  loc_A66C89: FStAdFunc var_F8
  loc_A66C8C: FLdRfVar var_F8
  loc_A66C8F: FLdPr Me
  loc_A66C92: MemLdRfVar from_stack_1.global_68
  loc_A66C95: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A66C9A: IStI2 Cancel
  loc_A66C9D: FFreeAd var_88 = "": var_F8 = "": var_FC = ""
  loc_A66CA8: ILdI2 Cancel
  loc_A66CAB: NotI4
  loc_A66CAC: BranchF loc_A66D10
  loc_A66CAF: FLdRfVar var_8C
  loc_A66CB2: FLdPr Me
  loc_A66CB5: MemLdRfVar from_stack_1.global_72
  loc_A66CB8: NewIfNullPr tblusuario
  loc_A66CBB: from_stack_1v = tblusuario.DetaPersGet()
  loc_A66CC0: ILdRf var_8C
  loc_A66CC3: FLdPr Me
  loc_A66CC6: VCallAd Control_ID_lblUsuario
  loc_A66CC9: FStAdFunc var_88
  loc_A66CCC: FLdPr var_88
  loc_A66CCF: Me.Caption = from_stack_1
  loc_A66CD4: FFree1Str var_8C
  loc_A66CD7: FFree1Ad var_88
  loc_A66CDA: LitStr "Su clave caduca el día "
  loc_A66CDD: FLdRfVar var_8C
  loc_A66CE0: FLdPr Me
  loc_A66CE3: MemLdRfVar from_stack_1.global_72
  loc_A66CE6: NewIfNullPr tblusuario
  loc_A66CE9: from_stack_1v = tblusuario.FeveUsuaGet()
  loc_A66CEE: ILdRf var_8C
  loc_A66CF1: ConcatStr
  loc_A66CF2: FStStrNoPop var_90
  loc_A66CF5: FLdPr Me
  loc_A66CF8: VCallAd Control_ID_lblClave
  loc_A66CFB: FStAdFunc var_88
  loc_A66CFE: FLdPr var_88
  loc_A66D01: Me.Caption = from_stack_1
  loc_A66D06: FFreeStr var_8C = ""
  loc_A66D0D: FFree1Ad var_88
  loc_A66D10: ExitProcHresult
End Sub

Private Sub CmdCambiarClave_Click() '99261C
  'Data Table: 42AB7C
  loc_9925CC: LitStr vbNullString
  loc_9925CF: FLdPr Me
  loc_9925D2: VCallAd Control_ID_lblClave
  loc_9925D5: FStAdFunc var_88
  loc_9925D8: FLdPr var_88
  loc_9925DB: Me.Caption = from_stack_1
  loc_9925E0: FFree1Ad var_88
  loc_9925E3: ImpAdLdI4 MemVar_C3D03C
  loc_9925E6: LitStr vbNullString
  loc_9925E9: NeStr
  loc_9925EB: BranchF loc_992606
  loc_9925EE: LitVar_Missing var_A8
  loc_9925F1: PopAdLdVar
  loc_9925F2: LitVarI4
  loc_9925FA: PopAdLdVar
  loc_9925FB: ImpAdLdRf MemVar_C3D7EC
  loc_9925FE: NewIfNullPr dlgCambiarClave
  loc_992601: dlgCambiarClave.Show from_stack_1, from_stack_2
  loc_992606: FLdPr Me
  loc_992609: VCallAd Control_ID_txtClave
  loc_99260C: CVarAd
  loc_992610: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_992615: FFree1Var var_B8 = ""
  loc_992618: ExitProcHresult
End Sub

Private Sub cmdCancel_Click() '980CFC
  'Data Table: 42AB7C
  loc_980CC4: LitI2_Byte 0
  loc_980CC6: FLdPr Me
  loc_980CC9: MemStI2 LoginSucceeded
  loc_980CCC: ILdRf Me
  loc_980CCF: FStAdNoPop
  loc_980CD3: ImpAdLdRf MemVar_C44F9C
  loc_980CD6: NewIfNullPr Me
  loc_980CD9: Me.Global.Unload from_stack_1
  loc_980CDE: FFree1Ad var_88
  loc_980CE1: ImpAdLdRf MemVar_C3DB88
  loc_980CE4: NewIfNullAd
  loc_980CE7: FStAdNoPop
  loc_980CEB: ImpAdLdRf MemVar_C44F9C
  loc_980CEE: NewIfNullPr Me
  loc_980CF1: Me.Global.Unload from_stack_1
  loc_980CF6: FFree1Ad var_88
  loc_980CF9: ExitProcHresult
  loc_980CFA: CRec2Uni cmdCancel_Click00
End Sub

Private Sub txtClave_Validate(Cancel As Boolean) 'A260A8
  'Data Table: 42AB7C
  loc_A25EF0: FLdRfVar var_8C
  loc_A25EF3: FLdPr Me
  loc_A25EF6: VCallAd Control_ID_txtClave
  loc_A25EF9: FStAdFunc var_88
  loc_A25EFC: FLdPr var_88
  loc_A25EFF:  = Me.Text
  loc_A25F04: FLdRfVar var_90
  loc_A25F07: ILdRf var_8C
  loc_A25F0A: ImpAdLdI4 MemVar_C3D03C
  loc_A25F0D: FLdPr Me
  loc_A25F10: MemLdRfVar from_stack_1.global_56
  loc_A25F13: NewIfNullPr clsusuario
  loc_A25F16: from_stack_3v = clsusuario.ValidaClaveUsuario(from_stack_1v, from_stack_2v)
  loc_A25F1B: ILdRf var_90
  loc_A25F1E: FLdPr Me
  loc_A25F21: MemStStrCopy
  loc_A25F25: FFreeStr var_8C = ""
  loc_A25F2C: FFree1Ad var_88
  loc_A25F2F: FLdPr Me
  loc_A25F32: MemLdStr global_68
  loc_A25F35: LitStr "El Usuario tiene la clave básica 123456..."
  loc_A25F38: EqStr
  loc_A25F3A: BranchF loc_A25F6F
  loc_A25F3D: LitI4 0
  loc_A25F42: FLdPr Me
  loc_A25F45: MemLdStr global_68
  loc_A25F48: LitStr vbCrLf
  loc_A25F4B: ConcatStr
  loc_A25F4C: FStStrNoPop var_8C
  loc_A25F4F: LitStr "A continuación se abrirá la ventana para cambiarla..."
  loc_A25F52: ConcatStr
  loc_A25F53: FStStrNoPop var_90
  loc_A25F56: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A25F5B: FFreeStr var_8C = ""
  loc_A25F62: Call CmdCambiarClave_Click()
  loc_A25F67: LitI2_Byte &HFF
  loc_A25F69: IStI2 Cancel
  loc_A25F6C: Branch loc_A2608A
  loc_A25F6F: FLdPr Me
  loc_A25F72: MemLdStr global_68
  loc_A25F75: LitStr vbNullString
  loc_A25F78: NeStr
  loc_A25F7A: BranchF loc_A2608A
  loc_A25F7D: FLdPr Me
  loc_A25F80: MemLdI2 global_64
  loc_A25F83: LitI2_Byte 1
  loc_A25F85: SubI2
  loc_A25F86: FLdPr Me
  loc_A25F89: MemStI2 global_64
  loc_A25F8C: FLdPr Me
  loc_A25F8F: MemLdI2 global_64
  loc_A25F92: LitI2_Byte 1
  loc_A25F94: GeI2
  loc_A25F95: BranchF loc_A26000
  loc_A25F98: FLdPr Me
  loc_A25F9B: VCallAd Control_ID_txtClave
  loc_A25F9E: FStAdFunc var_A4
  loc_A25FA1: LitNothing
  loc_A25FA3: CastAd
  loc_A25FA6: FStAdFunc var_A0
  loc_A25FA9: FLdRfVar var_A0
  loc_A25FAC: FLdZeroAd var_A4
  loc_A25FAF: FStAdFuncNoPop
  loc_A25FB2: CastAd
  loc_A25FB5: FStAdFunc var_9C
  loc_A25FB8: FLdRfVar var_9C
  loc_A25FBB: FLdPr Me
  loc_A25FBE: MemLdStr global_68
  loc_A25FC1: LitStr vbCrLf
  loc_A25FC4: ConcatStr
  loc_A25FC5: FStStrNoPop var_8C
  loc_A25FC8: LitStr "Reintentos antes de inhabilitar al usuario: "
  loc_A25FCB: ConcatStr
  loc_A25FCC: FStStrNoPop var_90
  loc_A25FCF: FLdPr Me
  loc_A25FD2: MemLdI2 global_64
  loc_A25FD5: CStrUI1
  loc_A25FD7: FStStrNoPop var_94
  loc_A25FDA: ConcatStr
  loc_A25FDB: PopTmpLdAdStr
  loc_A25FDF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A25FE4: IStI2 Cancel
  loc_A25FE7: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A25FF2: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A25FFD: Branch loc_A2608A
  loc_A26000: ImpAdLdI4 MemVar_C3D03C
  loc_A26003: FLdPr Me
  loc_A26006: MemLdRfVar from_stack_1.global_56
  loc_A26009: NewIfNullPr clsusuario
  loc_A2600C: Call clsusuario.Inhabilitar(from_stack_1v)
  loc_A26011: FLdPr Me
  loc_A26014: VCallAd Control_ID_txtClave
  loc_A26017: FStAdFunc var_A4
  loc_A2601A: LitNothing
  loc_A2601C: CastAd
  loc_A2601F: FStAdFunc var_A0
  loc_A26022: FLdRfVar var_A0
  loc_A26025: FLdZeroAd var_A4
  loc_A26028: FStAdFuncNoPop
  loc_A2602B: CastAd
  loc_A2602E: FStAdFunc var_9C
  loc_A26031: FLdRfVar var_9C
  loc_A26034: FLdPr Me
  loc_A26037: MemLdStr global_68
  loc_A2603A: LitStr vbCrLf
  loc_A2603D: ConcatStr
  loc_A2603E: FStStrNoPop var_8C
  loc_A26041: LitStr "Ha superado la cantidad de intentos. El usuario '"
  loc_A26044: ConcatStr
  loc_A26045: FStStrNoPop var_90
  loc_A26048: ImpAdLdI4 MemVar_C3D03C
  loc_A2604B: ConcatStr
  loc_A2604C: FStStrNoPop var_94
  loc_A2604F: LitStr "' ha sido inhabilitado para acceder al sistema. Consulte con el administrador de usuarios."
  loc_A26052: ConcatStr
  loc_A26053: PopTmpLdAdStr
  loc_A26057: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A2605C: IStI2 Cancel
  loc_A2605F: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A2606A: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A26075: ILdRf Me
  loc_A26078: FStAdNoPop
  loc_A2607C: ImpAdLdRf MemVar_C44F9C
  loc_A2607F: NewIfNullPr Me
  loc_A26082: Me.Global.Unload from_stack_1
  loc_A26087: FFree1Ad var_88
  loc_A2608A: ILdI2 Cancel
  loc_A2608D: NotI4
  loc_A2608E: BranchF loc_A260A7
  loc_A26091: LitI2_Byte &HFF
  loc_A26093: FLdPr Me
  loc_A26096: VCallAd Control_ID_cmdOK
  loc_A26099: FStAdFunc var_88
  loc_A2609C: FLdPr var_88
  loc_A2609F: Me.Enabled = from_stack_1b
  loc_A260A4: FFree1Ad var_88
  loc_A260A7: ExitProcHresult
End Sub

Private Sub Form_Load() 'A46658
  'Data Table: 42AB7C
  loc_A463FC: OnErrorGoto loc_A465BD
  loc_A463FF: LitStr "Municipalidad de Guaymallén"
  loc_A46402: FStStrCopy var_88
  loc_A46405: ILdRf var_88
  loc_A46408: LitStr "Municipalidad de Tupungato"
  loc_A4640B: EqStr
  loc_A4640D: BranchF loc_A4642C
  loc_A46410: LitI4 &H14
  loc_A46415: FLdPr Me
  loc_A46418: VCallAd Control_ID_txtUsuario
  loc_A4641B: FStAdFunc var_8C
  loc_A4641E: FLdPr var_8C
  loc_A46421: Me.MaxLength = from_stack_1
  loc_A46426: FFree1Ad var_8C
  loc_A46429: Branch loc_A46445
  loc_A4642C: LitI4 8
  loc_A46431: FLdPr Me
  loc_A46434: VCallAd Control_ID_txtUsuario
  loc_A46437: FStAdFunc var_8C
  loc_A4643A: FLdPr var_8C
  loc_A4643D: Me.MaxLength = from_stack_1
  loc_A46442: FFree1Ad var_8C
  loc_A46445: ILdRf Me
  loc_A46448: CastAd
  loc_A4644B: FStAdFunc var_8C
  loc_A4644E: FLdRfVar var_8C
  loc_A46451: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A46456: FFree1Ad var_8C
  loc_A46459: FLdRfVar var_94
  loc_A4645C: FLdPr Me
  loc_A4645F:  = Me.Width
  loc_A46464: FLdRfVar var_90
  loc_A46467: ImpAdLdRf MemVar_C3DB88
  loc_A4646A: NewIfNullPr MdiContPres
  loc_A4646D:  = MdiContPres.Width
  loc_A46472: FLdFPR4 var_90
  loc_A46475: LitI2_Byte 2
  loc_A46477: CR8I2
  loc_A46478: DivR8
  loc_A46479: FLdFPR4 var_94
  loc_A4647C: LitI2_Byte 2
  loc_A4647E: CR8I2
  loc_A4647F: DivR8
  loc_A46480: SubR4
  loc_A46481: PopFPR4
  loc_A46482: FLdPr Me
  loc_A46485: Me.Left = from_stack_1s
  loc_A4648A: LitI2_Byte 0
  loc_A4648C: CR8I2
  loc_A4648D: PopFPR4
  loc_A4648E: FLdPr Me
  loc_A46491: Me.Top = from_stack_1s
  loc_A46496: FLdPr Me
  loc_A46499: MemLdRfVar from_stack_1.global_60
  loc_A4649C: NewIfNullAd
  loc_A4649F: FStAd var_98 
  loc_A464A3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_A464A6: FLdPr var_98
  loc_A464A9: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A464AE: FLdRfVar var_90
  loc_A464B1: FLdPr var_98
  loc_A464B4: from_stack_1 = clsperiodo.RecordCount
  loc_A464B9: ILdRf var_90
  loc_A464BC: LitI4 0
  loc_A464C1: GtI4
  loc_A464C2: BranchF loc_A46549
  loc_A464C5: FLdPr var_98
  loc_A464C8: Call clsperiodo.MoveFirst()
  loc_A464CD: FLdRfVar var_9A
  loc_A464D0: FLdPr var_98
  loc_A464D3: from_stack_1 = clsperiodo.EOF
  loc_A464D8: FLdI2 var_9A
  loc_A464DB: NotI4
  loc_A464DC: BranchF loc_A46549
  loc_A464DF: LitVar_Missing var_D8
  loc_A464E2: PopAdLdVar
  loc_A464E3: FLdRfVar var_C4
  loc_A464E6: FLdRfVar var_B4
  loc_A464E9: LitVarStr var_B0, "PeriInfo"
  loc_A464EE: PopAdLdVar
  loc_A464EF: FLdRfVar var_A0
  loc_A464F2: FLdRfVar var_8C
  loc_A464F5: FLdPr var_98
  loc_A464F8: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A464FD: FLdPr var_8C
  loc_A46500:  = Me.Fields
  loc_A46505: FLdPr var_A0
  loc_A46508: from_stack_2 = Me.Item(from_stack_1)
  loc_A4650D: FLdPr var_B4
  loc_A46510:  = Me.Value
  loc_A46515: FLdRfVar var_C4
  loc_A46518: CStrVarTmp
  loc_A46519: FStStrNoPop var_C8
  loc_A4651C: FLdPr Me
  loc_A4651F: VCallAd Control_ID_cboPeriodo
  loc_A46522: FStAdFunc var_DC
  loc_A46525: FLdPr var_DC
  loc_A46528: Me.AddItem from_stack_1, from_stack_2
  loc_A4652D: FFree1Str var_C8
  loc_A46530: FFreeAd var_8C = "": var_A0 = "": var_B4 = ""
  loc_A4653B: FFree1Var var_C4 = ""
  loc_A4653E: FLdPr var_98
  loc_A46541: Call clsperiodo.MoveSiguiente()
  loc_A46546: Branch loc_A464CD
  loc_A46549: LitNothing
  loc_A4654B: FStAd var_98 
  loc_A4654F: LitI2_Byte 0
  loc_A46551: PopTmpLdAd2 var_9A
  loc_A46554: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A46559: CVarDate var_C4
  loc_A4655D: FLdRfVar var_EC
  loc_A46560: ImpAdCallFPR4  = Year()
  loc_A46565: FLdRfVar var_EC
  loc_A46568: CStrVarVal var_C8
  loc_A4656C: FLdPr Me
  loc_A4656F: VCallAd Control_ID_cboPeriodo
  loc_A46572: FStAdFunc var_8C
  loc_A46575: FLdPr var_8C
  loc_A46578: Me.Text = from_stack_1
  loc_A4657D: FFree1Str var_C8
  loc_A46580: FFree1Ad var_8C
  loc_A46583: FFreeVar var_C4 = ""
  loc_A4658A: LitI4 0
  loc_A4658F: LitI4 0
  loc_A46594: FLdRfVar var_F0
  loc_A46597: Redim
  loc_A465A1: FLdPr Me
  loc_A465A4: VCallAd Control_ID_CmdCambiarClave
  loc_A465A7: CVarAd
  loc_A465AB: ParmAry1St
  loc_A465B1: FLdRfVar var_F0
  loc_A465B4: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A465B9: FLdRfVar var_F0
  loc_A465BC: Erase
  loc_A465BD: FLdRfVar var_90
  loc_A465C0: ImpAdCallI2 Err 'rtcErrObj
  loc_A465C5: FStAdFunc var_8C
  loc_A465C8: FLdPr var_8C
  loc_A465CB:  = Err.Number
  loc_A465D0: ILdRf var_90
  loc_A465D3: LitI4 0
  loc_A465D8: NeI4
  loc_A465D9: FFree1Ad var_8C
  loc_A465DC: BranchF loc_A46656
  loc_A465DF: LitI2_Byte 0
  loc_A465E1: PopTmpLdAd2 var_9A
  loc_A465E4: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A465E9: CVarDate var_C4
  loc_A465ED: FLdRfVar var_EC
  loc_A465F0: ImpAdCallFPR4  = Year()
  loc_A465F5: FLdRfVar var_EC
  loc_A465F8: LitVarI2 var_D8, 1
  loc_A465FD: SubVar var_100
  loc_A46601: CStrVarVal var_C8
  loc_A46605: FLdPr Me
  loc_A46608: VCallAd Control_ID_cboPeriodo
  loc_A4660B: FStAdFunc var_8C
  loc_A4660E: FLdPr var_8C
  loc_A46611: Me.Text = from_stack_1
  loc_A46616: FFree1Str var_C8
  loc_A46619: FFree1Ad var_8C
  loc_A4661C: FFreeVar var_C4 = ""
  loc_A46623: LitI4 0
  loc_A46628: LitI4 0
  loc_A4662D: FLdRfVar var_F0
  loc_A46630: Redim
  loc_A4663A: FLdPr Me
  loc_A4663D: VCallAd Control_ID_CmdCambiarClave
  loc_A46640: CVarAd
  loc_A46644: ParmAry1St
  loc_A4664A: FLdRfVar var_F0
  loc_A4664D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A46652: FLdRfVar var_F0
  loc_A46655: Erase
  loc_A46656: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94D644
  'Data Table: 42AB7C
  loc_94D62C: ILdI2 KeyAscii
  loc_94D62F: CI4UI1
  loc_94D630: LitI4 &HD
  loc_94D635: EqI4
  loc_94D636: BranchF loc_94D643
  loc_94D639: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94D63E: LitI2_Byte 0
  loc_94D640: IStI2 KeyAscii
  loc_94D643: ExitProcHresult
End Sub

Public Function LoginSucceededGet() '42B3B8
  LoginSucceededGet = LoginSucceeded
End Function

Public Sub LoginSucceededPut(Value) '42B3C7
  LoginSucceeded = Value
End Sub

Private Function Proc_122_11_A07C74() 'A07C74
  'Data Table: 42AB7C
  loc_A07B44: LitI2_Byte 0
  loc_A07B46: FStI2 var_86
  loc_A07B49: LitI4 1
  loc_A07B4E: LitI4 1
  loc_A07B53: ImpAdLdRf MemVar_C3D060
  loc_A07B56: Redim
  loc_A07B60: FLdRfVar var_90
  loc_A07B63: ImpAdLdRf MemVar_C3DB88
  loc_A07B66: NewIfNullPr MdiContPres
  loc_A07B69:  = MdiContPres.Controls
  loc_A07B6E: FLdZeroAd var_90
  loc_A07B71: FStAdFuncNoPop
  loc_A07B74: FLdRfVar var_8C
  loc_A07B77: ForEachCollObj
  loc_A07B7F: ILdRf var_8C
  loc_A07B82: CheckType
  loc_A07B86: BranchF loc_A07C68
  loc_A07B89: FLdPr var_8C
  loc_A07B8C: LateMemLdVar
  loc_A07B91: NotVar var_B8
  loc_A07B95: FLdPr var_8C
  loc_A07B98: LateMemLdVar
  loc_A07B9D: LitVarStr var_C8, vbNullString
  loc_A07BA2: HardType
  loc_A07BA3: NeVar var_E8
  loc_A07BA7: AndVar var_F8
  loc_A07BAB: FLdPr var_8C
  loc_A07BAE: LateMemLdVar
  loc_A07BB3: LitVarStr var_108, "Ejecutar"
  loc_A07BB8: HardType
  loc_A07BB9: EqVar var_128
  loc_A07BBD: NotVar var_138
  loc_A07BC1: AndVar var_148
  loc_A07BC5: FLdPr var_8C
  loc_A07BC8: LateMemLdVar
  loc_A07BCD: LitVarStr var_158, "Contracargos"
  loc_A07BD2: HardType
  loc_A07BD3: EqVar var_178
  loc_A07BD7: NotVar var_188
  loc_A07BDB: AndVar var_198
  loc_A07BDF: CBoolVarNull
  loc_A07BE1: FFreeVar var_A8 = "": var_D8 = "": var_118 = ""
  loc_A07BEC: BranchF loc_A07C68
  loc_A07BEF: FLdI2 var_86
  loc_A07BF2: LitI2_Byte 1
  loc_A07BF4: AddI2
  loc_A07BF5: FStI2 var_86
  loc_A07BF8: LitI4 1
  loc_A07BFD: FLdI2 var_86
  loc_A07C00: CI4UI1
  loc_A07C01: ImpAdLdRf MemVar_C3D060
  loc_A07C04: RedimPreserve
  loc_A07C0E: FLdPr var_8C
  loc_A07C11: LateMemLdVar
  loc_A07C16: CStrVarTmp
  loc_A07C17: FStStrNoPop var_19C
  loc_A07C1A: FLdI2 var_86
  loc_A07C1D: CI4UI1
  loc_A07C1E: ImpAdLdI4 MemVar_C3D060
  loc_A07C21: Ary1LdPr
  loc_A07C22: MemStStrCopy
  loc_A07C26: FFree1Str var_19C
  loc_A07C29: FFree1Var var_A8 = ""
  loc_A07C2C: FLdPr var_8C
  loc_A07C2F: LateMemLdVar
  loc_A07C34: CStrVarTmp
  loc_A07C35: FStStrNoPop var_19C
  loc_A07C38: FLdI2 var_86
  loc_A07C3B: CI4UI1
  loc_A07C3C: ImpAdLdI4 MemVar_C3D060
  loc_A07C3F: Ary1LdPr
  loc_A07C40: MemStStrCopy
  loc_A07C44: FFree1Str var_19C
  loc_A07C47: FFree1Var var_A8 = ""
  loc_A07C4A: FLdPr var_8C
  loc_A07C4D: LateMemLdVar
  loc_A07C52: CStrVarTmp
  loc_A07C53: FStStrNoPop var_19C
  loc_A07C56: FLdI2 var_86
  loc_A07C59: CI4UI1
  loc_A07C5A: ImpAdLdI4 MemVar_C3D060
  loc_A07C5D: Ary1LdPr
  loc_A07C5E: MemStStrCopy
  loc_A07C62: FFree1Str var_19C
  loc_A07C65: FFree1Var var_A8 = ""
  loc_A07C68: FLdRfVar var_8C
  loc_A07C6B: NextEachCollObj
  loc_A07C73: ExitProcHresult
End Function
