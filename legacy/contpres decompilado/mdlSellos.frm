VERSION 5.00
Begin VB.Form mdlSellos
  Caption = "Alícuota para Sellos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "mdlSellos.frx":0000
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 405
  ClientWidth = 5805
  ClientHeight = 3990
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 3 'Windows Default
  Begin VB.TextBox Impo27Txt
    Left = 2280
    Top = 2160
    Width = 1815
    Height = 420
    TabIndex = 5
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox Impo21Txt
    Left = 2280
    Top = 1680
    Width = 1815
    Height = 420
    TabIndex = 3
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "Cancelar"
    Left = 3240
    Top = 3000
    Width = 2055
    Height = 495
    TabIndex = 7
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "Aceptar"
    Left = 480
    Top = 3000
    Width = 2055
    Height = 495
    TabIndex = 6
  End
  Begin VB.TextBox Impo105Txt
    Left = 2280
    Top = 1200
    Width = 1815
    Height = 420
    TabIndex = 1
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.Label TotalOcLbl
    Left = 2280
    Top = 240
    Width = 3135
    Height = 615
    TabIndex = 9
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
  Begin VB.Label Label4
    Caption = "Total OC:"
    Left = 960
    Top = 360
    Width = 1095
    Height = 495
    TabIndex = 8
    Alignment = 1 'Right Justify
  End
  Begin VB.Label Label3
    Caption = "IVA 27,0%:"
    Left = 1005
    Top = 2160
    Width = 1200
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
  End
  Begin VB.Label Label2
    Caption = "IVA 21,0%:"
    Left = 1005
    Top = 1680
    Width = 1200
    Height = 300
    TabIndex = 2
    AutoSize = -1  'True
  End
  Begin VB.Label Label1
    Caption = "IVA 10,5%:"
    Left = 1005
    Top = 1200
    Width = 1200
    Height = 300
    TabIndex = 0
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "mdlSellos"

Public ImpoLimite As Double
Public Impo105 As Double
Public Impo21 As Double
Public Impo27 As Double


Private Sub cmdAceptar_Click() 'A4036C
  'Data Table: 428F74
  loc_A40128: FLdRfVar var_8C
  loc_A4012B: FLdPr Me
  loc_A4012E: VCallAd Control_ID_Impo105Txt
  loc_A40131: FStAdFunc var_88
  loc_A40134: FLdPr var_88
  loc_A40137:  = Me.Text
  loc_A4013C: FLdRfVar var_94
  loc_A4013F: FLdPr Me
  loc_A40142: VCallAd Control_ID_Impo105Txt
  loc_A40145: FStAdFunc var_90
  loc_A40148: FLdPr var_90
  loc_A4014B:  = Me.Text
  loc_A40150: FLdRfVar var_9C
  loc_A40153: FLdPr Me
  loc_A40156: VCallAd Control_ID_Impo105Txt
  loc_A40159: FStAdFunc var_98
  loc_A4015C: FLdPr var_98
  loc_A4015F:  = Me.Text
  loc_A40164: FLdZeroAd var_9C
  loc_A40167: CVarStr var_DC
  loc_A4016A: LitVarI2 var_CC, 0
  loc_A4016F: ILdRf var_8C
  loc_A40172: LitStr vbNullString
  loc_A40175: EqStr
  loc_A40177: ILdRf var_94
  loc_A4017A: LitStr "0"
  loc_A4017D: EqStr
  loc_A4017F: OrI4
  loc_A40180: CVarBoolI2 var_AC
  loc_A40184: FLdRfVar var_EC
  loc_A40187: ImpAdCallFPR4  = IIf(, , )
  loc_A4018C: FLdRfVar var_EC
  loc_A4018F: CR4Var
  loc_A40190: FLdPr Me
  loc_A40193: MemStFPR8 Impo105
  loc_A40196: FFreeStr var_8C = ""
  loc_A4019D: FFreeAd var_88 = "": var_90 = ""
  loc_A401A6: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_A401B1: FLdRfVar var_8C
  loc_A401B4: FLdPr Me
  loc_A401B7: VCallAd Control_ID_Impo21Txt
  loc_A401BA: FStAdFunc var_88
  loc_A401BD: FLdPr var_88
  loc_A401C0:  = Me.Text
  loc_A401C5: FLdRfVar var_94
  loc_A401C8: FLdPr Me
  loc_A401CB: VCallAd Control_ID_Impo21Txt
  loc_A401CE: FStAdFunc var_90
  loc_A401D1: FLdPr var_90
  loc_A401D4:  = Me.Text
  loc_A401D9: FLdRfVar var_9C
  loc_A401DC: FLdPr Me
  loc_A401DF: VCallAd Control_ID_Impo21Txt
  loc_A401E2: FStAdFunc var_98
  loc_A401E5: FLdPr var_98
  loc_A401E8:  = Me.Text
  loc_A401ED: FLdZeroAd var_9C
  loc_A401F0: CVarStr var_DC
  loc_A401F3: LitVarI2 var_CC, 0
  loc_A401F8: ILdRf var_8C
  loc_A401FB: LitStr vbNullString
  loc_A401FE: EqStr
  loc_A40200: ILdRf var_94
  loc_A40203: LitStr "0"
  loc_A40206: EqStr
  loc_A40208: OrI4
  loc_A40209: CVarBoolI2 var_AC
  loc_A4020D: FLdRfVar var_EC
  loc_A40210: ImpAdCallFPR4  = IIf(, , )
  loc_A40215: FLdRfVar var_EC
  loc_A40218: CR4Var
  loc_A40219: FLdPr Me
  loc_A4021C: MemStFPR8 Impo21
  loc_A4021F: FFreeStr var_8C = ""
  loc_A40226: FFreeAd var_88 = "": var_90 = ""
  loc_A4022F: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_A4023A: FLdRfVar var_8C
  loc_A4023D: FLdPr Me
  loc_A40240: VCallAd Control_ID_Impo27Txt
  loc_A40243: FStAdFunc var_88
  loc_A40246: FLdPr var_88
  loc_A40249:  = Me.Text
  loc_A4024E: FLdRfVar var_94
  loc_A40251: FLdPr Me
  loc_A40254: VCallAd Control_ID_Impo27Txt
  loc_A40257: FStAdFunc var_90
  loc_A4025A: FLdPr var_90
  loc_A4025D:  = Me.Text
  loc_A40262: FLdRfVar var_9C
  loc_A40265: FLdPr Me
  loc_A40268: VCallAd Control_ID_Impo27Txt
  loc_A4026B: FStAdFunc var_98
  loc_A4026E: FLdPr var_98
  loc_A40271:  = Me.Text
  loc_A40276: FLdZeroAd var_9C
  loc_A40279: CVarStr var_DC
  loc_A4027C: LitVarI2 var_CC, 0
  loc_A40281: ILdRf var_8C
  loc_A40284: LitStr vbNullString
  loc_A40287: EqStr
  loc_A40289: ILdRf var_94
  loc_A4028C: LitStr "0"
  loc_A4028F: EqStr
  loc_A40291: OrI4
  loc_A40292: CVarBoolI2 var_AC
  loc_A40296: FLdRfVar var_EC
  loc_A40299: ImpAdCallFPR4  = IIf(, , )
  loc_A4029E: FLdRfVar var_EC
  loc_A402A1: CR4Var
  loc_A402A2: FLdPr Me
  loc_A402A5: MemStFPR8 Impo27
  loc_A402A8: FFreeStr var_8C = ""
  loc_A402AF: FFreeAd var_88 = "": var_90 = ""
  loc_A402B8: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_A402C3: FLdPr Me
  loc_A402C6: MemLdFPR8 Impo105
  loc_A402C9: LitI2_Byte 0
  loc_A402CB: CR8I2
  loc_A402CC: NeR8
  loc_A402CD: FLdPr Me
  loc_A402D0: MemLdFPR8 Impo21
  loc_A402D3: LitI2_Byte 0
  loc_A402D5: CR8I2
  loc_A402D6: NeR8
  loc_A402D7: AndI4
  loc_A402D8: FLdPr Me
  loc_A402DB: MemLdFPR8 Impo105
  loc_A402DE: LitI2_Byte 0
  loc_A402E0: CR8I2
  loc_A402E1: NeR8
  loc_A402E2: FLdPr Me
  loc_A402E5: MemLdFPR8 Impo27
  loc_A402E8: LitI2_Byte 0
  loc_A402EA: CR8I2
  loc_A402EB: NeR8
  loc_A402EC: AndI4
  loc_A402ED: OrI4
  loc_A402EE: FLdPr Me
  loc_A402F1: MemLdFPR8 Impo21
  loc_A402F4: LitI2_Byte 0
  loc_A402F6: CR8I2
  loc_A402F7: NeR8
  loc_A402F8: FLdPr Me
  loc_A402FB: MemLdFPR8 Impo27
  loc_A402FE: LitI2_Byte 0
  loc_A40300: CR8I2
  loc_A40301: NeR8
  loc_A40302: AndI4
  loc_A40303: OrI4
  loc_A40304: BranchF loc_A40317
  loc_A40307: LitI4 0
  loc_A4030C: LitStr "Existe más de una alícuota. Verifique..."
  loc_A4030F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A40314: Branch loc_A40368
  loc_A40317: FLdPr Me
  loc_A4031A: MemLdFPR8 Impo105
  loc_A4031D: FLdPr Me
  loc_A40320: MemLdFPR8 ImpoLimite
  loc_A40323: GtR4
  loc_A40324: FLdPr Me
  loc_A40327: MemLdFPR8 Impo21
  loc_A4032A: FLdPr Me
  loc_A4032D: MemLdFPR8 ImpoLimite
  loc_A40330: GtR4
  loc_A40331: OrI4
  loc_A40332: FLdPr Me
  loc_A40335: MemLdFPR8 Impo27
  loc_A40338: FLdPr Me
  loc_A4033B: MemLdFPR8 ImpoLimite
  loc_A4033E: GtR4
  loc_A4033F: OrI4
  loc_A40340: BranchF loc_A40353
  loc_A40343: LitI4 0
  loc_A40348: LitStr "El importe es mayor a la OC. Verifique..."
  loc_A4034B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A40350: Branch loc_A40368
  loc_A40353: ILdRf Me
  loc_A40356: FStAdNoPop
  loc_A4035A: ImpAdLdRf MemVar_C44F9C
  loc_A4035D: NewIfNullPr Me
  loc_A40360: Me.Global.Unload from_stack_1
  loc_A40365: FFree1Ad var_88
  loc_A40368: ExitProcHresult
End Sub

Private Sub Impo105Txt_GotFocus() '94C440
  'Data Table: 428F74
  loc_94C42C: FLdPr Me
  loc_94C42F: VCallAd Control_ID_Impo105Txt
  loc_94C432: CVarAd
  loc_94C436: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C43B: FFree1Var var_94 = ""
  loc_94C43E: ExitProcHresult
End Sub

Private Sub Impo105Txt_KeyPress(KeyAscii As Integer) '97F210
  'Data Table: 428F74
  loc_97F1DC: LitStr "1234567890,."
  loc_97F1DF: FStStrCopy var_88
  loc_97F1E2: FLdRfVar var_88
  loc_97F1E5: ILdRf KeyAscii
  loc_97F1E8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F1ED: IStI2 KeyAscii
  loc_97F1F0: FFree1Str var_88
  loc_97F1F3: ILdI2 KeyAscii
  loc_97F1F6: LitStr "."
  loc_97F1F9: ImpAdCallI2 Asc()
  loc_97F1FE: EqI2
  loc_97F1FF: BranchF loc_97F20D
  loc_97F202: LitStr ","
  loc_97F205: ImpAdCallI2 Asc()
  loc_97F20A: IStI2 KeyAscii
  loc_97F20D: ExitProcHresult
End Sub

Private Sub Impo105Txt_Validate(Cancel As Boolean) '9D3B64
  'Data Table: 428F74
  loc_9D3A84: FLdRfVar var_8A
  loc_9D3A87: FLdPr Me
  loc_9D3A8A: VCallAd Control_ID_cmdCancelar
  loc_9D3A8D: FStAdFunc var_88
  loc_9D3A90: FLdPr var_88
  loc_9D3A93:  = Me.Value
  loc_9D3A98: FLdI2 var_8A
  loc_9D3A9B: NotI4
  loc_9D3A9C: FLdRfVar var_92
  loc_9D3A9F: FLdPr Me
  loc_9D3AA2: VCallAd Control_ID_Impo105Txt
  loc_9D3AA5: FStAdFunc var_90
  loc_9D3AA8: FLdPr var_90
  loc_9D3AAB:  = Me.Enabled
  loc_9D3AB0: FLdI2 var_92
  loc_9D3AB3: AndI4
  loc_9D3AB4: FLdRfVar var_9C
  loc_9D3AB7: FLdPr Me
  loc_9D3ABA: VCallAd Control_ID_Impo105Txt
  loc_9D3ABD: FStAdFunc var_98
  loc_9D3AC0: FLdPr var_98
  loc_9D3AC3:  = Me.Text
  loc_9D3AC8: ILdRf var_9C
  loc_9D3ACB: LitStr vbNullString
  loc_9D3ACE: NeStr
  loc_9D3AD0: AndI4
  loc_9D3AD1: FFree1Str var_9C
  loc_9D3AD4: FFreeAd var_88 = "": var_90 = ""
  loc_9D3ADD: BranchF loc_9D3B62
  loc_9D3AE0: FLdRfVar var_9C
  loc_9D3AE3: FLdPr Me
  loc_9D3AE6: VCallAd Control_ID_Impo105Txt
  loc_9D3AE9: FStAdFunc var_88
  loc_9D3AEC: FLdPr var_88
  loc_9D3AEF:  = Me.Text
  loc_9D3AF4: FLdPr Me
  loc_9D3AF7: MemLdFPR8 ImpoLimite
  loc_9D3AFA: CStrR8
  loc_9D3AFC: FStStrNoPop var_A0
  loc_9D3AFF: LitI2_Byte &HFF
  loc_9D3B01: LitI2_Byte &HFF
  loc_9D3B03: LitI2_Byte 0
  loc_9D3B05: ILdRf var_9C
  loc_9D3B08: LitStr "Importe"
  loc_9D3B0B: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D3B10: FStStrNoPop var_A4
  loc_9D3B13: FLdPr Me
  loc_9D3B16: MemStStrCopy
  loc_9D3B1A: FFreeStr var_9C = "": var_A0 = ""
  loc_9D3B23: FFree1Ad var_88
  loc_9D3B26: FLdPr Me
  loc_9D3B29: VCallAd Control_ID_Impo105Txt
  loc_9D3B2C: FStAdFunc var_A8
  loc_9D3B2F: LitNothing
  loc_9D3B31: CastAd
  loc_9D3B34: FStAdFunc var_98
  loc_9D3B37: FLdRfVar var_98
  loc_9D3B3A: FLdZeroAd var_A8
  loc_9D3B3D: FStAdFuncNoPop
  loc_9D3B40: CastAd
  loc_9D3B43: FStAdFunc var_90
  loc_9D3B46: FLdRfVar var_90
  loc_9D3B49: FLdPr Me
  loc_9D3B4C: MemLdRfVar from_stack_1.global_84
  loc_9D3B4F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D3B54: IStI2 Cancel
  loc_9D3B57: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D3B62: ExitProcHresult
End Sub

Private Sub Impo21Txt_GotFocus() '94AC10
  'Data Table: 428F74
  loc_94ABFC: FLdPr Me
  loc_94ABFF: VCallAd Control_ID_Impo21Txt
  loc_94AC02: CVarAd
  loc_94AC06: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AC0B: FFree1Var var_94 = ""
  loc_94AC0E: ExitProcHresult
End Sub

Private Sub Impo21Txt_KeyPress(KeyAscii As Integer) '97D468
  'Data Table: 428F74
  loc_97D434: LitStr "1234567890,."
  loc_97D437: FStStrCopy var_88
  loc_97D43A: FLdRfVar var_88
  loc_97D43D: ILdRf KeyAscii
  loc_97D440: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97D445: IStI2 KeyAscii
  loc_97D448: FFree1Str var_88
  loc_97D44B: ILdI2 KeyAscii
  loc_97D44E: LitStr "."
  loc_97D451: ImpAdCallI2 Asc()
  loc_97D456: EqI2
  loc_97D457: BranchF loc_97D465
  loc_97D45A: LitStr ","
  loc_97D45D: ImpAdCallI2 Asc()
  loc_97D462: IStI2 KeyAscii
  loc_97D465: ExitProcHresult
End Sub

Private Sub Impo21Txt_Validate(Cancel As Boolean) '9D3330
  'Data Table: 428F74
  loc_9D3250: FLdRfVar var_8A
  loc_9D3253: FLdPr Me
  loc_9D3256: VCallAd Control_ID_cmdCancelar
  loc_9D3259: FStAdFunc var_88
  loc_9D325C: FLdPr var_88
  loc_9D325F:  = Me.Value
  loc_9D3264: FLdI2 var_8A
  loc_9D3267: NotI4
  loc_9D3268: FLdRfVar var_92
  loc_9D326B: FLdPr Me
  loc_9D326E: VCallAd Control_ID_Impo21Txt
  loc_9D3271: FStAdFunc var_90
  loc_9D3274: FLdPr var_90
  loc_9D3277:  = Me.Enabled
  loc_9D327C: FLdI2 var_92
  loc_9D327F: AndI4
  loc_9D3280: FLdRfVar var_9C
  loc_9D3283: FLdPr Me
  loc_9D3286: VCallAd Control_ID_Impo21Txt
  loc_9D3289: FStAdFunc var_98
  loc_9D328C: FLdPr var_98
  loc_9D328F:  = Me.Text
  loc_9D3294: ILdRf var_9C
  loc_9D3297: LitStr vbNullString
  loc_9D329A: NeStr
  loc_9D329C: AndI4
  loc_9D329D: FFree1Str var_9C
  loc_9D32A0: FFreeAd var_88 = "": var_90 = ""
  loc_9D32A9: BranchF loc_9D332E
  loc_9D32AC: FLdRfVar var_9C
  loc_9D32AF: FLdPr Me
  loc_9D32B2: VCallAd Control_ID_Impo21Txt
  loc_9D32B5: FStAdFunc var_88
  loc_9D32B8: FLdPr var_88
  loc_9D32BB:  = Me.Text
  loc_9D32C0: FLdPr Me
  loc_9D32C3: MemLdFPR8 ImpoLimite
  loc_9D32C6: CStrR8
  loc_9D32C8: FStStrNoPop var_A0
  loc_9D32CB: LitI2_Byte &HFF
  loc_9D32CD: LitI2_Byte &HFF
  loc_9D32CF: LitI2_Byte 0
  loc_9D32D1: ILdRf var_9C
  loc_9D32D4: LitStr "Importe"
  loc_9D32D7: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D32DC: FStStrNoPop var_A4
  loc_9D32DF: FLdPr Me
  loc_9D32E2: MemStStrCopy
  loc_9D32E6: FFreeStr var_9C = "": var_A0 = ""
  loc_9D32EF: FFree1Ad var_88
  loc_9D32F2: FLdPr Me
  loc_9D32F5: VCallAd Control_ID_Impo21Txt
  loc_9D32F8: FStAdFunc var_A8
  loc_9D32FB: LitNothing
  loc_9D32FD: CastAd
  loc_9D3300: FStAdFunc var_98
  loc_9D3303: FLdRfVar var_98
  loc_9D3306: FLdZeroAd var_A8
  loc_9D3309: FStAdFuncNoPop
  loc_9D330C: CastAd
  loc_9D330F: FStAdFunc var_90
  loc_9D3312: FLdRfVar var_90
  loc_9D3315: FLdPr Me
  loc_9D3318: MemLdRfVar from_stack_1.global_84
  loc_9D331B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D3320: IStI2 Cancel
  loc_9D3323: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D332E: ExitProcHresult
End Sub

Private Sub Impo27Txt_GotFocus() '94A508
  'Data Table: 428F74
  loc_94A4F4: FLdPr Me
  loc_94A4F7: VCallAd Control_ID_Impo27Txt
  loc_94A4FA: CVarAd
  loc_94A4FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A503: FFree1Var var_94 = ""
  loc_94A506: ExitProcHresult
End Sub

Private Sub Impo27Txt_KeyPress(KeyAscii As Integer) '97F348
  'Data Table: 428F74
  loc_97F314: LitStr "1234567890,."
  loc_97F317: FStStrCopy var_88
  loc_97F31A: FLdRfVar var_88
  loc_97F31D: ILdRf KeyAscii
  loc_97F320: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F325: IStI2 KeyAscii
  loc_97F328: FFree1Str var_88
  loc_97F32B: ILdI2 KeyAscii
  loc_97F32E: LitStr "."
  loc_97F331: ImpAdCallI2 Asc()
  loc_97F336: EqI2
  loc_97F337: BranchF loc_97F345
  loc_97F33A: LitStr ","
  loc_97F33D: ImpAdCallI2 Asc()
  loc_97F342: IStI2 KeyAscii
  loc_97F345: ExitProcHresult
End Sub

Private Sub Impo27Txt_Validate(Cancel As Boolean) '9D3204
  'Data Table: 428F74
  loc_9D3124: FLdRfVar var_8A
  loc_9D3127: FLdPr Me
  loc_9D312A: VCallAd Control_ID_cmdCancelar
  loc_9D312D: FStAdFunc var_88
  loc_9D3130: FLdPr var_88
  loc_9D3133:  = Me.Value
  loc_9D3138: FLdI2 var_8A
  loc_9D313B: NotI4
  loc_9D313C: FLdRfVar var_92
  loc_9D313F: FLdPr Me
  loc_9D3142: VCallAd Control_ID_Impo27Txt
  loc_9D3145: FStAdFunc var_90
  loc_9D3148: FLdPr var_90
  loc_9D314B:  = Me.Enabled
  loc_9D3150: FLdI2 var_92
  loc_9D3153: AndI4
  loc_9D3154: FLdRfVar var_9C
  loc_9D3157: FLdPr Me
  loc_9D315A: VCallAd Control_ID_Impo27Txt
  loc_9D315D: FStAdFunc var_98
  loc_9D3160: FLdPr var_98
  loc_9D3163:  = Me.Text
  loc_9D3168: ILdRf var_9C
  loc_9D316B: LitStr vbNullString
  loc_9D316E: NeStr
  loc_9D3170: AndI4
  loc_9D3171: FFree1Str var_9C
  loc_9D3174: FFreeAd var_88 = "": var_90 = ""
  loc_9D317D: BranchF loc_9D3202
  loc_9D3180: FLdRfVar var_9C
  loc_9D3183: FLdPr Me
  loc_9D3186: VCallAd Control_ID_Impo27Txt
  loc_9D3189: FStAdFunc var_88
  loc_9D318C: FLdPr var_88
  loc_9D318F:  = Me.Text
  loc_9D3194: FLdPr Me
  loc_9D3197: MemLdFPR8 ImpoLimite
  loc_9D319A: CStrR8
  loc_9D319C: FStStrNoPop var_A0
  loc_9D319F: LitI2_Byte &HFF
  loc_9D31A1: LitI2_Byte &HFF
  loc_9D31A3: LitI2_Byte 0
  loc_9D31A5: ILdRf var_9C
  loc_9D31A8: LitStr "Importe"
  loc_9D31AB: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D31B0: FStStrNoPop var_A4
  loc_9D31B3: FLdPr Me
  loc_9D31B6: MemStStrCopy
  loc_9D31BA: FFreeStr var_9C = "": var_A0 = ""
  loc_9D31C3: FFree1Ad var_88
  loc_9D31C6: FLdPr Me
  loc_9D31C9: VCallAd Control_ID_Impo27Txt
  loc_9D31CC: FStAdFunc var_A8
  loc_9D31CF: LitNothing
  loc_9D31D1: CastAd
  loc_9D31D4: FStAdFunc var_98
  loc_9D31D7: FLdRfVar var_98
  loc_9D31DA: FLdZeroAd var_A8
  loc_9D31DD: FStAdFuncNoPop
  loc_9D31E0: CastAd
  loc_9D31E3: FStAdFunc var_90
  loc_9D31E6: FLdRfVar var_90
  loc_9D31E9: FLdPr Me
  loc_9D31EC: MemLdRfVar from_stack_1.global_84
  loc_9D31EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D31F4: IStI2 Cancel
  loc_9D31F7: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D3202: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '97F1A8
  'Data Table: 428F74
  loc_97F174: LitI2_Byte 0
  loc_97F176: CR8I2
  loc_97F177: FLdPr Me
  loc_97F17A: MemStFPR8 Impo105
  loc_97F17D: LitI2_Byte 0
  loc_97F17F: CR8I2
  loc_97F180: FLdPr Me
  loc_97F183: MemStFPR8 Impo21
  loc_97F186: LitI2_Byte 0
  loc_97F188: CR8I2
  loc_97F189: FLdPr Me
  loc_97F18C: MemStFPR8 Impo27
  loc_97F18F: ILdRf Me
  loc_97F192: FStAdNoPop
  loc_97F196: ImpAdLdRf MemVar_C44F9C
  loc_97F199: NewIfNullPr Me
  loc_97F19C: Me.Global.Unload from_stack_1
  loc_97F1A1: FFree1Ad var_88
  loc_97F1A4: ExitProcHresult
End Sub

Private Sub Form_Load() '9A5E30
  'Data Table: 428F74
  loc_9A5DA8: LitI4 1
  loc_9A5DAD: LitI4 1
  loc_9A5DB2: LitVarStr var_A4, "currency"
  loc_9A5DB7: FStVarCopyObj var_B4
  loc_9A5DBA: FLdRfVar var_B4
  loc_9A5DBD: FLdPr Me
  loc_9A5DC0: MemLdRfVar from_stack_1.ImpoLimite
  loc_9A5DC3: CVarRef
  loc_9A5DC8: ImpAdCallI2 Format$(, )
  loc_9A5DCD: FStStrNoPop var_B8
  loc_9A5DD0: FLdPr Me
  loc_9A5DD3: VCallAd Control_ID_TotalOcLbl
  loc_9A5DD6: FStAdFunc var_BC
  loc_9A5DD9: FLdPr var_BC
  loc_9A5DDC: Me.Caption = from_stack_1
  loc_9A5DE1: FFree1Str var_B8
  loc_9A5DE4: FFree1Ad var_BC
  loc_9A5DE7: FFree1Var var_B4 = ""
  loc_9A5DEA: LitI2_Byte 0
  loc_9A5DEC: FLdPr Me
  loc_9A5DEF: VCallAd Control_ID_Impo105Txt
  loc_9A5DF2: FStAdFunc var_BC
  loc_9A5DF5: FLdPr var_BC
  loc_9A5DF8: Me.Enabled = from_stack_1b
  loc_9A5DFD: FFree1Ad var_BC
  loc_9A5E00: LitI2_Byte 0
  loc_9A5E02: FLdPr Me
  loc_9A5E05: VCallAd Control_ID_Impo21Txt
  loc_9A5E08: FStAdFunc var_BC
  loc_9A5E0B: FLdPr var_BC
  loc_9A5E0E: Me.Enabled = from_stack_1b
  loc_9A5E13: FFree1Ad var_BC
  loc_9A5E16: LitI2_Byte 0
  loc_9A5E18: FLdPr Me
  loc_9A5E1B: VCallAd Control_ID_Impo27Txt
  loc_9A5E1E: FStAdFunc var_BC
  loc_9A5E21: FLdPr var_BC
  loc_9A5E24: Me.Enabled = from_stack_1b
  loc_9A5E29: FFree1Ad var_BC
  loc_9A5E2C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94944C
  'Data Table: 428F74
  loc_949438: ILdI2 KeyAscii
  loc_94943B: CI4UI1
  loc_94943C: LitI4 &HD
  loc_949441: EqI4
  loc_949442: BranchF loc_94944A
  loc_949445: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94944A: ExitProcHresult
End Sub

Public Function ImpoLimiteGet() '4296B4
  ImpoLimiteGet = ImpoLimite
End Function

Public Sub ImpoLimitePut(Value) '4296C3
  ImpoLimite = Value
End Sub

Public Function Impo105Get() '4296D2
  Impo105Get = Impo105
End Function

Public Sub Impo105Put(Value) '4296E1
  Impo105 = Value
End Sub

Public Function Impo21Get() '4296F0
  Impo21Get = Impo21
End Function

Public Sub Impo21Put(Value) '4296FF
  Impo21 = Value
End Sub

Public Function Impo27Get() '42970E
  Impo27Get = Impo27
End Function

Public Sub Impo27Put(Value) '42971D
  Impo27 = Value
End Sub
