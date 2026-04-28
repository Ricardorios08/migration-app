VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmAnticipodeTasas
  Caption = "Anticipo de Tasas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15180
  ClientHeight = 10440
  Begin VB.TextBox txtTotaExce
    Left = 4680
    Top = 9480
    Width = 1815
    Height = 345
    TabIndex = 22
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.CommandButton cmdGenerarBoleto
    Caption = "Generar Boleto"
    Left = 8160
    Top = 960
    Width = 1935
    Height = 405
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
  Begin VB.TextBox txtTotaSele
    Left = 10800
    Top = 9960
    Width = 1815
    Height = 360
    TabIndex = 17
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5640
    Top = 960
    Width = 2175
    Height = 390
    TabIndex = 5
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
  Begin VB.TextBox txtTotal
    Left = 10800
    Top = 9480
    Width = 1815
    Height = 345
    TabIndex = 16
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.TextBox txtTotaDesc
    Left = 8040
    Top = 9480
    Width = 1815
    Height = 345
    TabIndex = 12
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.TextBox txtTotaDere
    Left = 1320
    Top = 9480
    Width = 1815
    Height = 345
    TabIndex = 11
    Alignment = 1 'Right Justify
    Locked = -1  'True
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
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1080
    Top = 120
    Width = 2295
    Height = 420
    TabIndex = 0
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
  Begin VB.CommandButton BuscarCmd
    Left = 4200
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 3
    Picture = "frmAnticipodeTasas.frx":0000
    Style = 1
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4440
    Top = 120
    Width = 2055
    Height = 345
    TabIndex = 1
    MaxLength = 11
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
  Begin VB.CommandButton SalirCmd
    Left = 14280
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 8
    Picture = "frmAnticipodeTasas.frx":00E2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2520
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmAnticipodeTasas.frx":0334
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1440
    Width = 13095
    Height = 7815
    TabIndex = 4
    OleObjectBlob = "frmAnticipodeTasas.frx":03E4
  End
  Begin VB.Label Label7
    Caption = "Excención:"
    Left = 3240
    Top = 9480
    Width = 1320
    Height = 300
    TabIndex = 23
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6960
    Top = 480
    Width = 7095
    Height = 315
    TabIndex = 21
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 6960
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 20
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9000
    Top = 120
    Width = 5175
    Height = 315
    TabIndex = 19
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
    Caption = "Total Seleccionado:"
    Left = 8280
    Top = 9960
    Width = 2385
    Height = 300
    TabIndex = 18
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
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 9960
    Top = 9480
    Width = 690
    Height = 300
    TabIndex = 15
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
  Begin VB.Label Label6
    Caption = "Descuento:"
    Left = 6600
    Top = 9480
    Width = 1395
    Height = 300
    TabIndex = 14
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
    Caption = "Importe:"
    Left = 240
    Top = 9480
    Width = 1020
    Height = 300
    TabIndex = 13
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 240
    Top = 120
    Width = 795
    Height = 300
    TabIndex = 10
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
    Caption = "Cuenta:"
    Left = 3480
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 9
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Fecha de Vencimiento:"
    Left = 45
    Top = 720
    Width = 2445
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmAnticipodeTasas"


Private Sub SeleTodoChk_Click() 'BD79D8
  'Data Table: 4B8698
  loc_BD72E0: LitI2_Byte 0
  loc_BD72E2: CR8I2
  loc_BD72E3: FLdPr Me
  loc_BD72E6: MemStFPR8 global_88
  loc_BD72E9: FLdPr Me
  loc_BD72EC: VCallAd Control_ID_ctacteFlex
  loc_BD72EF: FStAdFunc var_88
  loc_BD72F2: FLdPr var_88
  loc_BD72F5: LateIdLdVar var_98 DispID_4 0
  loc_BD72FC: CI4Var
  loc_BD72FE: LitI4 1
  loc_BD7303: GtI4
  loc_BD7304: FFree1Ad var_88
  loc_BD7307: FFree1Var var_98 = ""
  loc_BD730A: BranchF loc_BD7988
  loc_BD730D: LitI2_Byte 1
  loc_BD730F: FLdPr Me
  loc_BD7312: MemLdRfVar from_stack_1.global_84
  loc_BD7315: FLdPr Me
  loc_BD7318: VCallAd Control_ID_ctacteFlex
  loc_BD731B: FStAdFunc var_88
  loc_BD731E: FLdPr var_88
  loc_BD7321: LateIdLdVar var_98 DispID_4 0
  loc_BD7328: CI4Var
  loc_BD732A: LitI4 1
  loc_BD732F: SubI4
  loc_BD7330: CI2I4
  loc_BD7331: FFree1Ad var_88
  loc_BD7334: FFree1Var var_98 = ""
  loc_BD7337: ForI2 var_9C
  loc_BD733D: FLdPr Me
  loc_BD7340: MemLdI2 global_84
  loc_BD7343: CI4UI1
  loc_BD7344: CVarI4
  loc_BD7348: PopAdLdVar
  loc_BD7349: FLdPr Me
  loc_BD734C: VCallAd Control_ID_ctacteFlex
  loc_BD734F: FStAdFunc var_88
  loc_BD7352: FLdPr var_88
  loc_BD7355: LateIdSt
  loc_BD735A: FFree1Ad var_88
  loc_BD735D: LitI2_Byte 0
  loc_BD735F: FLdPr Me
  loc_BD7362: MemLdRfVar from_stack_1.global_86
  loc_BD7365: FLdPr Me
  loc_BD7368: VCallAd Control_ID_ctacteFlex
  loc_BD736B: FStAdFunc var_88
  loc_BD736E: FLdPr var_88
  loc_BD7371: LateIdLdVar var_98 DispID_5 0
  loc_BD7378: CI4Var
  loc_BD737A: LitI4 1
  loc_BD737F: SubI4
  loc_BD7380: CI2I4
  loc_BD7381: FFree1Ad var_88
  loc_BD7384: FFree1Var var_98 = ""
  loc_BD7387: ForI2 var_C0
  loc_BD738D: FLdPr Me
  loc_BD7390: MemLdI2 global_86
  loc_BD7393: CI4UI1
  loc_BD7394: CVarI4
  loc_BD7398: PopAdLdVar
  loc_BD7399: FLdPr Me
  loc_BD739C: VCallAd Control_ID_ctacteFlex
  loc_BD739F: FStAdFunc var_88
  loc_BD73A2: FLdPr var_88
  loc_BD73A5: LateIdSt
  loc_BD73AA: FFree1Ad var_88
  loc_BD73AD: FLdRfVar var_C2
  loc_BD73B0: FLdPr Me
  loc_BD73B3: VCallAd Control_ID_SeleTodoChk
  loc_BD73B6: FStAdFunc var_88
  loc_BD73B9: FLdPr var_88
  loc_BD73BC:  = Me.Value
  loc_BD73C1: FLdI2 var_C2
  loc_BD73C4: LitI2_Byte 0
  loc_BD73C6: EqI2
  loc_BD73C7: FFree1Ad var_88
  loc_BD73CA: BranchF loc_BD7673
  loc_BD73CD: LitVarI4
  loc_BD73D5: PopAdLdVar
  loc_BD73D6: FLdPr Me
  loc_BD73D9: VCallAd Control_ID_ctacteFlex
  loc_BD73DC: FStAdFunc var_88
  loc_BD73DF: FLdPr var_88
  loc_BD73E2: LateIdSt
  loc_BD73E7: FFree1Ad var_88
  loc_BD73EA: FLdPr Me
  loc_BD73ED: VCallAd Control_ID_ctacteFlex
  loc_BD73F0: FStAdFunc var_88
  loc_BD73F3: FLdPr var_88
  loc_BD73F6: LateIdLdVar var_98 DispID_10 0
  loc_BD73FD: CI4Var
  loc_BD73FF: CVarI4
  loc_BD7403: PopAdLdVar
  loc_BD7404: LitVarI4
  loc_BD740C: PopAdLdVar
  loc_BD740D: LitVarStr var_F4, "No"
  loc_BD7412: PopAdLdVar
  loc_BD7413: FLdPr Me
  loc_BD7416: VCallAd Control_ID_ctacteFlex
  loc_BD7419: FStAdFunc var_108
  loc_BD741C: FLdPr var_108
  loc_BD741F: LateIdCallSt
  loc_BD7427: FFreeAd var_88 = ""
  loc_BD742E: FFree1Var var_98 = ""
  loc_BD7431: FLdPr Me
  loc_BD7434: MemLdI2 global_86
  loc_BD7437: LitI2_Byte 0
  loc_BD7439: EqI2
  loc_BD743A: BranchF loc_BD765B
  loc_BD743D: FLdPr Me
  loc_BD7440: VCallAd Control_ID_ctacteFlex
  loc_BD7443: FStAdFunc var_88
  loc_BD7446: FLdPr var_88
  loc_BD7449: LateIdLdVar var_98 DispID_10 0
  loc_BD7450: CI4Var
  loc_BD7452: CVarI4
  loc_BD7456: PopAdLdVar
  loc_BD7457: LitVarI4
  loc_BD745F: PopAdLdVar
  loc_BD7460: FLdPr Me
  loc_BD7463: VCallAd Control_ID_ctacteFlex
  loc_BD7466: FStAdFunc var_108
  loc_BD7469: FLdPr var_108
  loc_BD746C: LateIdCallLdVar
  loc_BD7476: PopAd
  loc_BD7478: FLdPr Me
  loc_BD747B: VCallAd Control_ID_ctacteFlex
  loc_BD747E: FStAdFunc var_11C
  loc_BD7481: FLdPr var_11C
  loc_BD7484: LateIdLdVar var_12C DispID_10 0
  loc_BD748B: CI4Var
  loc_BD748D: CVarI4
  loc_BD7491: PopAdLdVar
  loc_BD7492: LitVarI4
  loc_BD749A: PopAdLdVar
  loc_BD749B: FLdPr Me
  loc_BD749E: VCallAd Control_ID_ctacteFlex
  loc_BD74A1: FStAdFunc var_150
  loc_BD74A4: FLdPr var_150
  loc_BD74A7: LateIdCallLdVar
  loc_BD74B1: PopAd
  loc_BD74B3: FLdPr Me
  loc_BD74B6: VCallAd Control_ID_ctacteFlex
  loc_BD74B9: FStAdFunc var_164
  loc_BD74BC: FLdPr var_164
  loc_BD74BF: LateIdLdVar var_174 DispID_10 0
  loc_BD74C6: CI4Var
  loc_BD74C8: CVarI4
  loc_BD74CC: PopAdLdVar
  loc_BD74CD: LitVarI4
  loc_BD74D5: PopAdLdVar
  loc_BD74D6: FLdPr Me
  loc_BD74D9: VCallAd Control_ID_ctacteFlex
  loc_BD74DC: FStAdFunc var_1B8
  loc_BD74DF: FLdPr var_1B8
  loc_BD74E2: LateIdCallLdVar
  loc_BD74EC: PopAd
  loc_BD74EE: LitVarI2 var_1F8, 4
  loc_BD74F3: LitI4 4
  loc_BD74F8: FLdRfVar var_1C8
  loc_BD74FB: CStrVarTmp
  loc_BD74FC: CVarStr var_1D8
  loc_BD74FF: FLdRfVar var_208
  loc_BD7502: ImpAdCallFPR4  = Mid(, , )
  loc_BD7507: FLdPr Me
  loc_BD750A: VCallAd Control_ID_ctacteFlex
  loc_BD750D: FStAdFunc var_20C
  loc_BD7510: FLdPr var_20C
  loc_BD7513: LateIdLdVar var_21C DispID_10 0
  loc_BD751A: CI4Var
  loc_BD751C: CVarI4
  loc_BD7520: PopAdLdVar
  loc_BD7521: LitVarI4
  loc_BD7529: PopAdLdVar
  loc_BD752A: FLdPr Me
  loc_BD752D: VCallAd Control_ID_ctacteFlex
  loc_BD7530: FStAdFunc var_260
  loc_BD7533: FLdPr var_260
  loc_BD7536: LateIdCallLdVar
  loc_BD7540: PopAd
  loc_BD7542: LitVarI2 var_2A0, 2
  loc_BD7547: LitI4 1
  loc_BD754C: FLdRfVar var_270
  loc_BD754F: CStrVarTmp
  loc_BD7550: CVarStr var_280
  loc_BD7553: FLdRfVar var_2B0
  loc_BD7556: ImpAdCallFPR4  = Mid(, , )
  loc_BD755B: FLdPr Me
  loc_BD755E: VCallAd Control_ID_ctacteFlex
  loc_BD7561: FStAdFunc var_2B4
  loc_BD7564: FLdPr var_2B4
  loc_BD7567: LateIdLdVar var_2C4 DispID_10 0
  loc_BD756E: CI4Var
  loc_BD7570: CVarI4
  loc_BD7574: PopAdLdVar
  loc_BD7575: LitVarI4
  loc_BD757D: PopAdLdVar
  loc_BD757E: FLdPr Me
  loc_BD7581: VCallAd Control_ID_ctacteFlex
  loc_BD7584: FStAdFunc var_308
  loc_BD7587: FLdPr var_308
  loc_BD758A: LateIdCallLdVar
  loc_BD7594: PopAd
  loc_BD7596: FLdPr Me
  loc_BD7599: VCallAd Control_ID_ctacteFlex
  loc_BD759C: FStAdFunc var_31C
  loc_BD759F: FLdPr var_31C
  loc_BD75A2: LateIdLdVar var_32C DispID_10 0
  loc_BD75A9: CI4Var
  loc_BD75AB: CVarI4
  loc_BD75AF: PopAdLdVar
  loc_BD75B0: LitVarI4
  loc_BD75B8: PopAdLdVar
  loc_BD75B9: FLdPr Me
  loc_BD75BC: VCallAd Control_ID_ctacteFlex
  loc_BD75BF: FStAdFunc var_370
  loc_BD75C2: FLdPr var_370
  loc_BD75C5: LateIdCallLdVar
  loc_BD75CF: PopAd
  loc_BD75D1: LitStr "tmp_anticipo"
  loc_BD75D4: LitStr "No"
  loc_BD75D7: FLdRfVar var_380
  loc_BD75DA: CStrVarTmp
  loc_BD75DB: FStStrNoPop var_390
  loc_BD75DE: CI2Str
  loc_BD75E0: FLdRfVar var_318
  loc_BD75E3: CStrVarTmp
  loc_BD75E4: FStStrNoPop var_38C
  loc_BD75E7: CI4Str
  loc_BD75E8: FLdRfVar var_2B0
  loc_BD75EB: CI2Var
  loc_BD75EC: FLdRfVar var_208
  loc_BD75EF: CI2Var
  loc_BD75F0: FLdRfVar var_160
  loc_BD75F3: CStrVarTmp
  loc_BD75F4: FStStrNoPop var_388
  loc_BD75F7: FLdRfVar var_118
  loc_BD75FA: CStrVarTmp
  loc_BD75FB: FStStrNoPop var_384
  loc_BD75FE: CUI1Str
  loc_BD7600: FLdPr Me
  loc_BD7603: MemLdRfVar from_stack_1.global_56
  loc_BD7606: NewIfNullPr clsctacte
  loc_BD7609: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BD760E: FFreeStr var_384 = "": var_388 = "": var_38C = ""
  loc_BD7619: FFreeAd var_88 = "": var_108 = "": var_11C = "": var_150 = "": var_164 = "": var_1B8 = "": var_20C = "": var_260 = "": var_2B4 = "": var_308 = "": var_31C = ""
  loc_BD7634: FFreeVar var_98 = "": var_118 = "": var_12C = "": var_160 = "": var_174 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_21C = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C4 = "": var_318 = "": var_32C = "": var_380 = "": var_208 = ""
  loc_BD765B: FLdPr Me
  loc_BD765E: MemLdI2 global_86
  loc_BD7661: LitI2_Byte &HB
  loc_BD7663: EqI2
  loc_BD7664: BranchF loc_BD7670
  loc_BD7667: LitI2_Byte 0
  loc_BD7669: CR8I2
  loc_BD766A: FLdPr Me
  loc_BD766D: MemStFPR8 global_88
  loc_BD7670: Branch loc_BD7972
  loc_BD7673: LitVarI4
  loc_BD767B: PopAdLdVar
  loc_BD767C: FLdPr Me
  loc_BD767F: VCallAd Control_ID_ctacteFlex
  loc_BD7682: FStAdFunc var_88
  loc_BD7685: FLdPr var_88
  loc_BD7688: LateIdSt
  loc_BD768D: FFree1Ad var_88
  loc_BD7690: FLdPr Me
  loc_BD7693: VCallAd Control_ID_ctacteFlex
  loc_BD7696: FStAdFunc var_88
  loc_BD7699: FLdPr var_88
  loc_BD769C: LateIdLdVar var_98 DispID_10 0
  loc_BD76A3: CI4Var
  loc_BD76A5: CVarI4
  loc_BD76A9: PopAdLdVar
  loc_BD76AA: LitVarI4
  loc_BD76B2: PopAdLdVar
  loc_BD76B3: LitVarStr var_F4, "Si"
  loc_BD76B8: PopAdLdVar
  loc_BD76B9: FLdPr Me
  loc_BD76BC: VCallAd Control_ID_ctacteFlex
  loc_BD76BF: FStAdFunc var_108
  loc_BD76C2: FLdPr var_108
  loc_BD76C5: LateIdCallSt
  loc_BD76CD: FFreeAd var_88 = ""
  loc_BD76D4: FFree1Var var_98 = ""
  loc_BD76D7: FLdPr Me
  loc_BD76DA: MemLdI2 global_86
  loc_BD76DD: LitI2_Byte 0
  loc_BD76DF: EqI2
  loc_BD76E0: BranchF loc_BD7901
  loc_BD76E3: FLdPr Me
  loc_BD76E6: VCallAd Control_ID_ctacteFlex
  loc_BD76E9: FStAdFunc var_88
  loc_BD76EC: FLdPr var_88
  loc_BD76EF: LateIdLdVar var_98 DispID_10 0
  loc_BD76F6: CI4Var
  loc_BD76F8: CVarI4
  loc_BD76FC: PopAdLdVar
  loc_BD76FD: LitVarI4
  loc_BD7705: PopAdLdVar
  loc_BD7706: FLdPr Me
  loc_BD7709: VCallAd Control_ID_ctacteFlex
  loc_BD770C: FStAdFunc var_108
  loc_BD770F: FLdPr var_108
  loc_BD7712: LateIdCallLdVar
  loc_BD771C: PopAd
  loc_BD771E: FLdPr Me
  loc_BD7721: VCallAd Control_ID_ctacteFlex
  loc_BD7724: FStAdFunc var_11C
  loc_BD7727: FLdPr var_11C
  loc_BD772A: LateIdLdVar var_12C DispID_10 0
  loc_BD7731: CI4Var
  loc_BD7733: CVarI4
  loc_BD7737: PopAdLdVar
  loc_BD7738: LitVarI4
  loc_BD7740: PopAdLdVar
  loc_BD7741: FLdPr Me
  loc_BD7744: VCallAd Control_ID_ctacteFlex
  loc_BD7747: FStAdFunc var_150
  loc_BD774A: FLdPr var_150
  loc_BD774D: LateIdCallLdVar
  loc_BD7757: PopAd
  loc_BD7759: FLdPr Me
  loc_BD775C: VCallAd Control_ID_ctacteFlex
  loc_BD775F: FStAdFunc var_164
  loc_BD7762: FLdPr var_164
  loc_BD7765: LateIdLdVar var_174 DispID_10 0
  loc_BD776C: CI4Var
  loc_BD776E: CVarI4
  loc_BD7772: PopAdLdVar
  loc_BD7773: LitVarI4
  loc_BD777B: PopAdLdVar
  loc_BD777C: FLdPr Me
  loc_BD777F: VCallAd Control_ID_ctacteFlex
  loc_BD7782: FStAdFunc var_1B8
  loc_BD7785: FLdPr var_1B8
  loc_BD7788: LateIdCallLdVar
  loc_BD7792: PopAd
  loc_BD7794: LitVarI2 var_1F8, 4
  loc_BD7799: LitI4 4
  loc_BD779E: FLdRfVar var_1C8
  loc_BD77A1: CStrVarTmp
  loc_BD77A2: CVarStr var_1D8
  loc_BD77A5: FLdRfVar var_208
  loc_BD77A8: ImpAdCallFPR4  = Mid(, , )
  loc_BD77AD: FLdPr Me
  loc_BD77B0: VCallAd Control_ID_ctacteFlex
  loc_BD77B3: FStAdFunc var_20C
  loc_BD77B6: FLdPr var_20C
  loc_BD77B9: LateIdLdVar var_21C DispID_10 0
  loc_BD77C0: CI4Var
  loc_BD77C2: CVarI4
  loc_BD77C6: PopAdLdVar
  loc_BD77C7: LitVarI4
  loc_BD77CF: PopAdLdVar
  loc_BD77D0: FLdPr Me
  loc_BD77D3: VCallAd Control_ID_ctacteFlex
  loc_BD77D6: FStAdFunc var_260
  loc_BD77D9: FLdPr var_260
  loc_BD77DC: LateIdCallLdVar
  loc_BD77E6: PopAd
  loc_BD77E8: LitVarI2 var_2A0, 2
  loc_BD77ED: LitI4 1
  loc_BD77F2: FLdRfVar var_270
  loc_BD77F5: CStrVarTmp
  loc_BD77F6: CVarStr var_280
  loc_BD77F9: FLdRfVar var_2B0
  loc_BD77FC: ImpAdCallFPR4  = Mid(, , )
  loc_BD7801: FLdPr Me
  loc_BD7804: VCallAd Control_ID_ctacteFlex
  loc_BD7807: FStAdFunc var_2B4
  loc_BD780A: FLdPr var_2B4
  loc_BD780D: LateIdLdVar var_2C4 DispID_10 0
  loc_BD7814: CI4Var
  loc_BD7816: CVarI4
  loc_BD781A: PopAdLdVar
  loc_BD781B: LitVarI4
  loc_BD7823: PopAdLdVar
  loc_BD7824: FLdPr Me
  loc_BD7827: VCallAd Control_ID_ctacteFlex
  loc_BD782A: FStAdFunc var_308
  loc_BD782D: FLdPr var_308
  loc_BD7830: LateIdCallLdVar
  loc_BD783A: PopAd
  loc_BD783C: FLdPr Me
  loc_BD783F: VCallAd Control_ID_ctacteFlex
  loc_BD7842: FStAdFunc var_31C
  loc_BD7845: FLdPr var_31C
  loc_BD7848: LateIdLdVar var_32C DispID_10 0
  loc_BD784F: CI4Var
  loc_BD7851: CVarI4
  loc_BD7855: PopAdLdVar
  loc_BD7856: LitVarI4
  loc_BD785E: PopAdLdVar
  loc_BD785F: FLdPr Me
  loc_BD7862: VCallAd Control_ID_ctacteFlex
  loc_BD7865: FStAdFunc var_370
  loc_BD7868: FLdPr var_370
  loc_BD786B: LateIdCallLdVar
  loc_BD7875: PopAd
  loc_BD7877: LitStr "tmp_anticipo"
  loc_BD787A: LitStr "Si"
  loc_BD787D: FLdRfVar var_380
  loc_BD7880: CStrVarTmp
  loc_BD7881: FStStrNoPop var_390
  loc_BD7884: CI2Str
  loc_BD7886: FLdRfVar var_318
  loc_BD7889: CStrVarTmp
  loc_BD788A: FStStrNoPop var_38C
  loc_BD788D: CI4Str
  loc_BD788E: FLdRfVar var_2B0
  loc_BD7891: CI2Var
  loc_BD7892: FLdRfVar var_208
  loc_BD7895: CI2Var
  loc_BD7896: FLdRfVar var_160
  loc_BD7899: CStrVarTmp
  loc_BD789A: FStStrNoPop var_388
  loc_BD789D: FLdRfVar var_118
  loc_BD78A0: CStrVarTmp
  loc_BD78A1: FStStrNoPop var_384
  loc_BD78A4: CUI1Str
  loc_BD78A6: FLdPr Me
  loc_BD78A9: MemLdRfVar from_stack_1.global_56
  loc_BD78AC: NewIfNullPr clsctacte
  loc_BD78AF: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BD78B4: FFreeStr var_384 = "": var_388 = "": var_38C = ""
  loc_BD78BF: FFreeAd var_88 = "": var_108 = "": var_11C = "": var_150 = "": var_164 = "": var_1B8 = "": var_20C = "": var_260 = "": var_2B4 = "": var_308 = "": var_31C = ""
  loc_BD78DA: FFreeVar var_98 = "": var_118 = "": var_12C = "": var_160 = "": var_174 = "": var_1C8 = "": var_1D8 = "": var_1F8 = "": var_21C = "": var_270 = "": var_280 = "": var_2A0 = "": var_2C4 = "": var_318 = "": var_32C = "": var_380 = "": var_208 = ""
  loc_BD7901: FLdPr Me
  loc_BD7904: MemLdI2 global_86
  loc_BD7907: LitI2_Byte &HB
  loc_BD7909: EqI2
  loc_BD790A: BranchF loc_BD7972
  loc_BD790D: FLdPr Me
  loc_BD7910: VCallAd Control_ID_ctacteFlex
  loc_BD7913: FStAdFunc var_88
  loc_BD7916: FLdPr var_88
  loc_BD7919: LateIdLdVar var_98 DispID_10 0
  loc_BD7920: CI4Var
  loc_BD7922: CVarI4
  loc_BD7926: PopAdLdVar
  loc_BD7927: FLdPr Me
  loc_BD792A: MemLdI2 global_86
  loc_BD792D: CI4UI1
  loc_BD792E: CVarI4
  loc_BD7932: PopAdLdVar
  loc_BD7933: FLdPr Me
  loc_BD7936: VCallAd Control_ID_ctacteFlex
  loc_BD7939: FStAdFunc var_108
  loc_BD793C: FLdPr var_108
  loc_BD793F: LateIdCallLdVar
  loc_BD7949: PopAd
  loc_BD794B: FLdPr Me
  loc_BD794E: MemLdFPR8 global_88
  loc_BD7951: FLdRfVar var_118
  loc_BD7954: CStrVarTmp
  loc_BD7955: FStStrNoPop var_384
  loc_BD7958: CR8Str
  loc_BD795A: AddR8
  loc_BD795B: FLdPr Me
  loc_BD795E: MemStFPR8 global_88
  loc_BD7961: FFree1Str var_384
  loc_BD7964: FFreeAd var_88 = ""
  loc_BD796B: FFreeVar var_98 = ""
  loc_BD7972: FLdPr Me
  loc_BD7975: MemLdRfVar from_stack_1.global_86
  loc_BD7978: NextI2 var_C0, loc_BD738D
  loc_BD797D: FLdPr Me
  loc_BD7980: MemLdRfVar from_stack_1.global_84
  loc_BD7983: NextI2 var_9C, loc_BD733D
  loc_BD7988: LitI4 1
  loc_BD798D: LitI4 1
  loc_BD7992: LitVarStr var_BC, "0.00"
  loc_BD7997: FStVarCopyObj var_98
  loc_BD799A: FLdRfVar var_98
  loc_BD799D: FLdPr Me
  loc_BD79A0: MemLdRfVar from_stack_1.global_88
  loc_BD79A3: CVarRef
  loc_BD79A8: FLdRfVar var_118
  loc_BD79AB: ImpAdCallFPR4  = Format(, )
  loc_BD79B0: FLdRfVar var_118
  loc_BD79B3: CStrVarVal var_384
  loc_BD79B7: FLdPr Me
  loc_BD79BA: VCallAd Control_ID_txtTotaSele
  loc_BD79BD: FStAdFunc var_88
  loc_BD79C0: FLdPr var_88
  loc_BD79C3: Me.Text = from_stack_1
  loc_BD79C8: FFree1Str var_384
  loc_BD79CB: FFree1Ad var_88
  loc_BD79CE: FFreeVar var_98 = ""
  loc_BD79D5: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B3AD0C
  'Data Table: 4B8698
  loc_B3AA18: Call Proc_85_19_B0D1F4()
  loc_B3AA1D: LitI2_Byte 0
  loc_B3AA1F: FLdPr Me
  loc_B3AA22: VCallAd Control_ID_SeleTodoChk
  loc_B3AA25: FStAdFunc var_88
  loc_B3AA28: FLdPr var_88
  loc_B3AA2B: Me.Value = from_stack_1
  loc_B3AA30: FFree1Ad var_88
  loc_B3AA33: FLdRfVar var_8A
  loc_B3AA36: FLdPr Me
  loc_B3AA39: VCallAd Control_ID_SeleTodoChk
  loc_B3AA3C: FStAdFunc var_88
  loc_B3AA3F: FLdPr var_88
  loc_B3AA42:  = Me.Enabled
  loc_B3AA47: FLdI2 var_8A
  loc_B3AA4A: LitI2_Byte 0
  loc_B3AA4C: EqI2
  loc_B3AA4D: FFree1Ad var_88
  loc_B3AA50: BranchF loc_B3AA69
  loc_B3AA53: LitI2_Byte &HFF
  loc_B3AA55: FLdPr Me
  loc_B3AA58: VCallAd Control_ID_SeleTodoChk
  loc_B3AA5B: FStAdFunc var_88
  loc_B3AA5E: FLdPr var_88
  loc_B3AA61: Me.Enabled = from_stack_1b
  loc_B3AA66: FFree1Ad var_88
  loc_B3AA69: FLdRfVar var_8A
  loc_B3AA6C: FLdPr Me
  loc_B3AA6F: VCallAd Control_ID_OficinaCbo
  loc_B3AA72: FStAdFunc var_88
  loc_B3AA75: FLdPr var_88
  loc_B3AA78:  = Me.ListIndex
  loc_B3AA7D: FLdI2 var_8A
  loc_B3AA80: FStI2 var_8C
  loc_B3AA83: FFree1Ad var_88
  loc_B3AA86: FLdI2 var_8C
  loc_B3AA89: LitI2_Byte 0
  loc_B3AA8B: EqI2
  loc_B3AA8C: BranchF loc_B3AA9A
  loc_B3AA8F: LitI2_Byte 1
  loc_B3AA91: CUI1I2
  loc_B3AA93: ImpAdStUI1 MemVar_D93038
  loc_B3AA97: Branch loc_B3AAD3
  loc_B3AA9A: FLdI2 var_8C
  loc_B3AA9D: LitI2_Byte 1
  loc_B3AA9F: EqI2
  loc_B3AAA0: BranchF loc_B3AAAE
  loc_B3AAA3: LitI2_Byte 2
  loc_B3AAA5: CUI1I2
  loc_B3AAA7: ImpAdStUI1 MemVar_D93038
  loc_B3AAAB: Branch loc_B3AAD3
  loc_B3AAAE: FLdI2 var_8C
  loc_B3AAB1: LitI2_Byte 2
  loc_B3AAB3: EqI2
  loc_B3AAB4: BranchF loc_B3AAC2
  loc_B3AAB7: LitI2_Byte 3
  loc_B3AAB9: CUI1I2
  loc_B3AABB: ImpAdStUI1 MemVar_D93038
  loc_B3AABF: Branch loc_B3AAD3
  loc_B3AAC2: FLdI2 var_8C
  loc_B3AAC5: LitI2_Byte 3
  loc_B3AAC7: EqI2
  loc_B3AAC8: BranchF loc_B3AAD3
  loc_B3AACB: LitI2_Byte 4
  loc_B3AACD: CUI1I2
  loc_B3AACF: ImpAdStUI1 MemVar_D93038
  loc_B3AAD3: ImpAdLdUI1
  loc_B3AAD7: CI2UI1
  loc_B3AAD9: LitI2_Byte 0
  loc_B3AADB: NeI2
  loc_B3AADC: FLdRfVar var_90
  loc_B3AADF: FLdPr Me
  loc_B3AAE2: VCallAd Control_ID_NumeCtaTxt
  loc_B3AAE5: FStAdFunc var_88
  loc_B3AAE8: FLdPr var_88
  loc_B3AAEB:  = Me.Text
  loc_B3AAF0: ILdRf var_90
  loc_B3AAF3: LitStr vbNullString
  loc_B3AAF6: NeStr
  loc_B3AAF8: AndI4
  loc_B3AAF9: FLdRfVar var_98
  loc_B3AAFC: FLdPr Me
  loc_B3AAFF: VCallAd Control_ID_NumeCtaTxt
  loc_B3AB02: FStAdFunc var_94
  loc_B3AB05: FLdPr var_94
  loc_B3AB08:  = Me.Text
  loc_B3AB0D: ILdRf var_98
  loc_B3AB10: LitStr "0"
  loc_B3AB13: NeStr
  loc_B3AB15: AndI4
  loc_B3AB16: FFreeStr var_90 = ""
  loc_B3AB1D: FFreeAd var_88 = ""
  loc_B3AB24: BranchF loc_B3AD08
  loc_B3AB27: FLdRfVar var_90
  loc_B3AB2A: FLdPr Me
  loc_B3AB2D: VCallAd Control_ID_NumeCtaTxt
  loc_B3AB30: FStAdFunc var_88
  loc_B3AB33: FLdPr var_88
  loc_B3AB36:  = Me.Text
  loc_B3AB3B: FLdPr Me
  loc_B3AB3E: MemLdRfVar from_stack_1.global_80
  loc_B3AB41: NewIfNullRf
  loc_B3AB45: LitStr "Titular"
  loc_B3AB48: ILdRf var_90
  loc_B3AB4B: ImpAdLdUI1
  loc_B3AB4F: CStrI2
  loc_B3AB51: FStStrNoPop var_98
  loc_B3AB54: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B3AB59: FFreeStr var_98 = ""
  loc_B3AB60: FFree1Ad var_88
  loc_B3AB63: BranchF loc_B3AC88
  loc_B3AB66: FLdRfVar var_90
  loc_B3AB69: FLdPr Me
  loc_B3AB6C: MemLdRfVar from_stack_1.global_80
  loc_B3AB6F: NewIfNullPr tblPersona
  loc_B3AB72: from_stack_1v = tblPersona.CucuPersGet()
  loc_B3AB77: ILdRf var_90
  loc_B3AB7A: FLdPr Me
  loc_B3AB7D: VCallAd Control_ID_CucuPersLbl
  loc_B3AB80: FStAdFunc var_88
  loc_B3AB83: FLdPr var_88
  loc_B3AB86: Me.Caption = from_stack_1
  loc_B3AB8B: FFree1Str var_90
  loc_B3AB8E: FFree1Ad var_88
  loc_B3AB91: FLdRfVar var_90
  loc_B3AB94: FLdPr Me
  loc_B3AB97: MemLdRfVar from_stack_1.global_80
  loc_B3AB9A: NewIfNullPr tblPersona
  loc_B3AB9D: from_stack_1v = tblPersona.DetaPersGet()
  loc_B3ABA2: ILdRf var_90
  loc_B3ABA5: FLdPr Me
  loc_B3ABA8: VCallAd Control_ID_DetaPersLbl
  loc_B3ABAB: FStAdFunc var_88
  loc_B3ABAE: FLdPr var_88
  loc_B3ABB1: Me.Caption = from_stack_1
  loc_B3ABB6: FFree1Str var_90
  loc_B3ABB9: FFree1Ad var_88
  loc_B3ABBC: FLdRfVar var_98
  loc_B3ABBF: FLdPr Me
  loc_B3ABC2: MemLdRfVar from_stack_1.global_80
  loc_B3ABC5: NewIfNullPr tblPersona
  loc_B3ABC8: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3ABCD: FLdRfVar var_9C
  loc_B3ABD0: FLdPr Me
  loc_B3ABD3: MemLdRfVar from_stack_1.global_80
  loc_B3ABD6: NewIfNullPr tblPersona
  loc_B3ABD9: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3ABDE: FLdRfVar var_90
  loc_B3ABE1: FLdPr Me
  loc_B3ABE4: MemLdRfVar from_stack_1.global_80
  loc_B3ABE7: NewIfNullPr tblPersona
  loc_B3ABEA: from_stack_1v = tblPersona.DetaCallGet()
  loc_B3ABEF: ILdRf var_90
  loc_B3ABF2: LitStr " "
  loc_B3ABF5: ConcatStr
  loc_B3ABF6: CVarStr var_FC
  loc_B3ABF9: LitVarStr var_CC, vbNullString
  loc_B3ABFE: FStVarCopyObj var_DC
  loc_B3AC01: FLdRfVar var_DC
  loc_B3AC04: LitStr "Nro: "
  loc_B3AC07: ILdRf var_9C
  loc_B3AC0A: ConcatStr
  loc_B3AC0B: CVarStr var_BC
  loc_B3AC0E: ILdRf var_98
  loc_B3AC11: LitStr "0"
  loc_B3AC14: NeStr
  loc_B3AC16: CVarBoolI2 var_AC
  loc_B3AC1A: FLdRfVar var_EC
  loc_B3AC1D: ImpAdCallFPR4  = IIf(, , )
  loc_B3AC22: FLdRfVar var_EC
  loc_B3AC25: ConcatVar var_10C
  loc_B3AC29: LitVarStr var_11C, " "
  loc_B3AC2E: ConcatVar var_12C
  loc_B3AC32: FLdRfVar var_130
  loc_B3AC35: FLdPr Me
  loc_B3AC38: MemLdRfVar from_stack_1.global_80
  loc_B3AC3B: NewIfNullPr tblPersona
  loc_B3AC3E: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B3AC43: FLdZeroAd var_130
  loc_B3AC46: CVarStr var_140
  loc_B3AC49: ConcatVar var_150
  loc_B3AC4D: CStrVarVal var_154
  loc_B3AC51: FLdPr Me
  loc_B3AC54: VCallAd Control_ID_DomiPersLbl
  loc_B3AC57: FStAdFunc var_88
  loc_B3AC5A: FLdPr var_88
  loc_B3AC5D: Me.Caption = from_stack_1
  loc_B3AC62: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B3AC6D: FFree1Ad var_88
  loc_B3AC70: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B3AC85: Branch loc_B3AD08
  loc_B3AC88: FLdRfVar var_90
  loc_B3AC8B: FLdPr Me
  loc_B3AC8E: MemLdRfVar from_stack_1.global_80
  loc_B3AC91: NewIfNullPr tblPersona
  loc_B3AC94: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B3AC99: ILdRf var_90
  loc_B3AC9C: FLdPr Me
  loc_B3AC9F: MemStStrCopy
  loc_B3ACA3: FFree1Str var_90
  loc_B3ACA6: FLdPr Me
  loc_B3ACA9: MemLdStr global_152
  loc_B3ACAC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3ACB1: LitStr vbNullString
  loc_B3ACB4: FLdPr Me
  loc_B3ACB7: VCallAd Control_ID_CucuPersLbl
  loc_B3ACBA: FStAdFunc var_88
  loc_B3ACBD: FLdPr var_88
  loc_B3ACC0: Me.Caption = from_stack_1
  loc_B3ACC5: FFree1Ad var_88
  loc_B3ACC8: LitStr vbNullString
  loc_B3ACCB: FLdPr Me
  loc_B3ACCE: VCallAd Control_ID_DetaPersLbl
  loc_B3ACD1: FStAdFunc var_88
  loc_B3ACD4: FLdPr var_88
  loc_B3ACD7: Me.Caption = from_stack_1
  loc_B3ACDC: FFree1Ad var_88
  loc_B3ACDF: LitStr vbNullString
  loc_B3ACE2: FLdPr Me
  loc_B3ACE5: VCallAd Control_ID_DomiPersLbl
  loc_B3ACE8: FStAdFunc var_88
  loc_B3ACEB: FLdPr var_88
  loc_B3ACEE: Me.Caption = from_stack_1
  loc_B3ACF3: FFree1Ad var_88
  loc_B3ACF6: FLdPr Me
  loc_B3ACF9: VCallAd Control_ID_NumeCtaTxt
  loc_B3ACFC: CVarAd
  loc_B3AD00: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3AD05: FFree1Var var_BC = ""
  loc_B3AD08: ExitProcHresult
End Sub

Private Sub cmdGenerarBoleto_Click() 'CC4F64
  'Data Table: 4B8698
  loc_CC29FC: LitI2_Byte 0
  loc_CC29FE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC2A03: CVarDate var_D4
  loc_CC2A07: FLdRfVar var_E4
  loc_CC2A0A: ImpAdCallFPR4  = Year()
  loc_CC2A0F: FLdRfVar var_E4
  loc_CC2A12: CI2Var
  loc_CC2A13: FStI2 var_86
  loc_CC2A16: FFreeVar var_D4 = ""
  loc_CC2A1D: LitI2_Byte 0
  loc_CC2A1F: FStI2 var_88
  loc_CC2A22: FLdPr Me
  loc_CC2A25: VCallAd Control_ID_ctacteFlex
  loc_CC2A28: FStAdFunc var_E8
  loc_CC2A2B: FLdPr var_E8
  loc_CC2A2E: LateIdLdVar var_D4 DispID_4 0
  loc_CC2A35: CI4Var
  loc_CC2A37: LitI4 1
  loc_CC2A3C: LeI4
  loc_CC2A3D: FFree1Ad var_E8
  loc_CC2A40: FFree1Var var_D4 = ""
  loc_CC2A43: BranchF loc_CC2A78
  loc_CC2A46: LitVar_Missing var_138
  loc_CC2A49: LitVar_Missing var_118
  loc_CC2A4C: LitVarStr var_F8, "InfoGov"
  loc_CC2A51: FStVarCopyObj var_E4
  loc_CC2A54: FLdRfVar var_E4
  loc_CC2A57: LitI4 &H30
  loc_CC2A5C: LitVarStr var_C4, "No existe deuda para generar boleto. Reintente..."
  loc_CC2A61: FStVarCopyObj var_D4
  loc_CC2A64: FLdRfVar var_D4
  loc_CC2A67: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CC2A6C: FFreeVar var_D4 = "": var_E4 = "": var_118 = ""
  loc_CC2A77: ExitProcHresult
  loc_CC2A78: LitI2_Byte 1
  loc_CC2A7A: FLdPr Me
  loc_CC2A7D: MemLdRfVar from_stack_1.global_84
  loc_CC2A80: FLdPr Me
  loc_CC2A83: VCallAd Control_ID_ctacteFlex
  loc_CC2A86: FStAdFunc var_E8
  loc_CC2A89: FLdPr var_E8
  loc_CC2A8C: LateIdLdVar var_D4 DispID_4 0
  loc_CC2A93: CI4Var
  loc_CC2A95: LitI4 1
  loc_CC2A9A: SubI4
  loc_CC2A9B: CI2I4
  loc_CC2A9C: FFree1Ad var_E8
  loc_CC2A9F: FFree1Var var_D4 = ""
  loc_CC2AA2: ForI2 var_13C
  loc_CC2AA8: FLdPr Me
  loc_CC2AAB: MemLdI2 global_84
  loc_CC2AAE: CI4UI1
  loc_CC2AAF: CVarI4
  loc_CC2AB3: PopAdLdVar
  loc_CC2AB4: LitVarI4
  loc_CC2ABC: PopAdLdVar
  loc_CC2ABD: FLdPr Me
  loc_CC2AC0: VCallAd Control_ID_ctacteFlex
  loc_CC2AC3: FStAdFunc var_E8
  loc_CC2AC6: FLdPr var_E8
  loc_CC2AC9: LateIdCallLdVar
  loc_CC2AD3: CStrVarTmp
  loc_CC2AD4: FStStrNoPop var_140
  loc_CC2AD7: LitStr "Si"
  loc_CC2ADA: EqStr
  loc_CC2ADC: FFree1Str var_140
  loc_CC2ADF: FFree1Ad var_E8
  loc_CC2AE2: FFree1Var var_D4 = ""
  loc_CC2AE5: BranchF loc_CC2AED
  loc_CC2AE8: LitI2_Byte &HFF
  loc_CC2AEA: FStI2 var_88
  loc_CC2AED: FLdPr Me
  loc_CC2AF0: MemLdRfVar from_stack_1.global_84
  loc_CC2AF3: NextI2 var_13C, loc_CC2AA8
  loc_CC2AF8: FLdI2 var_88
  loc_CC2AFB: LitI2_Byte 0
  loc_CC2AFD: EqI2
  loc_CC2AFE: BranchF loc_CC2B33
  loc_CC2B01: LitVar_Missing var_138
  loc_CC2B04: LitVar_Missing var_118
  loc_CC2B07: LitVarStr var_F8, "InfoGov"
  loc_CC2B0C: FStVarCopyObj var_E4
  loc_CC2B0F: FLdRfVar var_E4
  loc_CC2B12: LitI4 &H30
  loc_CC2B17: LitVarStr var_C4, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_CC2B1C: FStVarCopyObj var_D4
  loc_CC2B1F: FLdRfVar var_D4
  loc_CC2B22: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CC2B27: FFreeVar var_D4 = "": var_E4 = "": var_118 = ""
  loc_CC2B32: ExitProcHresult
  loc_CC2B33: LitI2_Byte 0
  loc_CC2B35: CR8I2
  loc_CC2B36: FLdPr Me
  loc_CC2B39: MemStFPR8 global_104
  loc_CC2B3C: LitI2_Byte 0
  loc_CC2B3E: CR8I2
  loc_CC2B3F: FLdPr Me
  loc_CC2B42: MemStFPR8 global_112
  loc_CC2B45: LitI2_Byte 0
  loc_CC2B47: CR8I2
  loc_CC2B48: ImpAdStFPR8 MemVar_D93040
  loc_CC2B4B: LitI2_Byte 0
  loc_CC2B4D: CR8I2
  loc_CC2B4E: ImpAdStFPR8 MemVar_D93048
  loc_CC2B51: LitI2_Byte 0
  loc_CC2B53: CR8I2
  loc_CC2B54: ImpAdStFPR8 MemVar_D93058
  loc_CC2B57: LitI2_Byte 0
  loc_CC2B59: CR8I2
  loc_CC2B5A: ImpAdStFPR8 MemVar_D93050
  loc_CC2B5D: LitI2_Byte 0
  loc_CC2B5F: CR8I2
  loc_CC2B60: ImpAdStFPR8 MemVar_D93060
  loc_CC2B63: LitI2_Byte 0
  loc_CC2B65: CR8I2
  loc_CC2B66: ImpAdStFPR8 MemVar_D93070
  loc_CC2B69: LitStr "SELECT ImpoCtct, DescCtct, ExenCtct, TotaCtct FROM tmp_anticipo "
  loc_CC2B6C: LitStr " WHERE tmp_anticipo.TotaCtct > 0"
  loc_CC2B6F: ConcatStr
  loc_CC2B70: FStStrNoPop var_140
  loc_CC2B73: LitStr " AND tmp_anticipo.SeleCtct = 'Si'"
  loc_CC2B76: ConcatStr
  loc_CC2B77: FStStrNoPop var_144
  loc_CC2B7A: LitStr " ORDER BY tmp_anticipo.CodiOfic, tmp_anticipo.CuenCtct, tmp_anticipo.PeriCtct, tmp_anticipo.BimeCtct, tmp_anticipo.NumeCtct, tmp_anticipo.MoviCtct"
  loc_CC2B7D: ConcatStr
  loc_CC2B7E: FStStrNoPop var_148
  loc_CC2B81: FLdPr Me
  loc_CC2B84: MemLdRfVar from_stack_1.global_56
  loc_CC2B87: NewIfNullPr clsctacte
  loc_CC2B8A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CC2B8F: FFreeStr var_140 = "": var_144 = ""
  loc_CC2B98: FLdRfVar var_14C
  loc_CC2B9B: FLdPr Me
  loc_CC2B9E: MemLdRfVar from_stack_1.global_56
  loc_CC2BA1: NewIfNullPr clsctacte
  loc_CC2BA4: from_stack_1 = clsctacte.RecordCount
  loc_CC2BA9: ILdRf var_14C
  loc_CC2BAC: LitI4 0
  loc_CC2BB1: GtI4
  loc_CC2BB2: BranchF loc_CC2CAF
  loc_CC2BB5: FLdPr Me
  loc_CC2BB8: MemLdRfVar from_stack_1.global_56
  loc_CC2BBB: NewIfNullPr clsctacte
  loc_CC2BBE: Call clsctacte.MoveFirst()
  loc_CC2BC3: FLdRfVar var_14E
  loc_CC2BC6: FLdPr Me
  loc_CC2BC9: MemLdRfVar from_stack_1.global_56
  loc_CC2BCC: NewIfNullPr clsctacte
  loc_CC2BCF: from_stack_1 = clsctacte.EOF
  loc_CC2BD4: FLdI2 var_14E
  loc_CC2BD7: NotI4
  loc_CC2BD8: BranchF loc_CC2CAF
  loc_CC2BDB: FLdRfVar var_D4
  loc_CC2BDE: FLdPr Me
  loc_CC2BE1: MemLdRfVar from_stack_1.global_56
  loc_CC2BE4: NewIfNullPr clsctacte
  loc_CC2BE7: from_stack_1 = clsctacte.ImpoCtct
  loc_CC2BEC: LitI4 2
  loc_CC2BF1: ImpAdLdFPR8 MemVar_D93040
  loc_CC2BF4: FLdRfVar var_D4
  loc_CC2BF7: FnCDblVar
  loc_CC2BF9: AddR8
  loc_CC2BFA: CVarR8
  loc_CC2BFE: FLdRfVar var_118
  loc_CC2C01: ImpAdCallFPR4  = Round(, )
  loc_CC2C06: FLdRfVar var_118
  loc_CC2C09: CR4Var
  loc_CC2C0A: ImpAdStFPR8 MemVar_D93040
  loc_CC2C0D: FFreeVar var_D4 = "": var_D4 = "": var_E4 = ""
  loc_CC2C18: FLdRfVar var_D4
  loc_CC2C1B: FLdPr Me
  loc_CC2C1E: MemLdRfVar from_stack_1.global_56
  loc_CC2C21: NewIfNullPr clsctacte
  loc_CC2C24: from_stack_1 = clsctacte.DescCtct
  loc_CC2C29: LitI4 2
  loc_CC2C2E: FLdPr Me
  loc_CC2C31: MemLdFPR8 global_104
  loc_CC2C34: FLdRfVar var_D4
  loc_CC2C37: FnCDblVar
  loc_CC2C39: AddR8
  loc_CC2C3A: CVarR8
  loc_CC2C3E: FLdRfVar var_118
  loc_CC2C41: ImpAdCallFPR4  = Round(, )
  loc_CC2C46: FLdRfVar var_118
  loc_CC2C49: CR4Var
  loc_CC2C4A: FLdPr Me
  loc_CC2C4D: MemStFPR8 global_104
  loc_CC2C50: FFreeVar var_D4 = "": var_D4 = "": var_E4 = ""
  loc_CC2C5B: FLdRfVar var_D4
  loc_CC2C5E: FLdPr Me
  loc_CC2C61: MemLdRfVar from_stack_1.global_56
  loc_CC2C64: NewIfNullPr clsctacte
  loc_CC2C67: from_stack_1 = clsctacte.ExenCtct
  loc_CC2C6C: LitI4 2
  loc_CC2C71: FLdPr Me
  loc_CC2C74: MemLdFPR8 global_112
  loc_CC2C77: FLdRfVar var_D4
  loc_CC2C7A: FnCDblVar
  loc_CC2C7C: AddR8
  loc_CC2C7D: CVarR8
  loc_CC2C81: FLdRfVar var_118
  loc_CC2C84: ImpAdCallFPR4  = Round(, )
  loc_CC2C89: FLdRfVar var_118
  loc_CC2C8C: CR4Var
  loc_CC2C8D: FLdPr Me
  loc_CC2C90: MemStFPR8 global_112
  loc_CC2C93: FFreeVar var_D4 = "": var_D4 = "": var_E4 = ""
  loc_CC2C9E: FLdPr Me
  loc_CC2CA1: MemLdRfVar from_stack_1.global_56
  loc_CC2CA4: NewIfNullPr clsctacte
  loc_CC2CA7: Call clsctacte.MoveSiguiente()
  loc_CC2CAC: Branch loc_CC2BC3
  loc_CC2CAF: LitI4 2
  loc_CC2CB4: FLdPr Me
  loc_CC2CB7: MemLdFPR8 global_104
  loc_CC2CBA: FLdPr Me
  loc_CC2CBD: MemLdFPR8 global_112
  loc_CC2CC0: AddR8
  loc_CC2CC1: CVarR8
  loc_CC2CC5: FLdRfVar var_E4
  loc_CC2CC8: ImpAdCallFPR4  = Round(, )
  loc_CC2CCD: FLdRfVar var_E4
  loc_CC2CD0: CR4Var
  loc_CC2CD1: ImpAdStFPR8 MemVar_D93048
  loc_CC2CD4: FFreeVar var_D4 = ""
  loc_CC2CDB: ImpAdLdFPR8 MemVar_D93040
  loc_CC2CDE: ImpAdLdFPR8 MemVar_D93058
  loc_CC2CE1: AddR8
  loc_CC2CE2: ImpAdLdFPR8 MemVar_D93050
  loc_CC2CE5: AddR8
  loc_CC2CE6: ImpAdLdFPR8 MemVar_D93060
  loc_CC2CE9: AddR8
  loc_CC2CEA: ImpAdLdFPR8 MemVar_D93048
  loc_CC2CED: SubR4
  loc_CC2CEE: ImpAdStFPR8 MemVar_D93070
  loc_CC2CF1: LitVar_Missing var_F8
  loc_CC2CF4: PopAdLdVar
  loc_CC2CF5: LitVarI4
  loc_CC2CFD: PopAdLdVar
  loc_CC2CFE: ImpAdLdRf MemVar_D9459C
  loc_CC2D01: NewIfNullPr dlgTotalBoleto
  loc_CC2D04: dlgTotalBoleto.Show from_stack_1, from_stack_2
  loc_CC2D09: FLdRfVar var_14E
  loc_CC2D0C: ImpAdLdRf MemVar_D9459C
  loc_CC2D0F: NewIfNullPr dlgTotalBoleto
  loc_CC2D12: from_stack_1v = dlgTotalBoleto.boAceptarGet()
  loc_CC2D17: FLdI2 var_14E
  loc_CC2D1A: LitI2_Byte &HFF
  loc_CC2D1C: EqI2
  loc_CC2D1D: BranchF loc_CC4DF0
  loc_CC2D20: FLdRfVar var_14C
  loc_CC2D23: FLdI2 var_86
  loc_CC2D26: FLdPr Me
  loc_CC2D29: MemLdRfVar from_stack_1.global_68
  loc_CC2D2C: NewIfNullPr clsnumebole
  loc_CC2D2F: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_CC2D34: ILdRf var_14C
  loc_CC2D37: FStR4 var_8C
  loc_CC2D3A: LitI2_Byte 0
  loc_CC2D3C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC2D41: FStFPR8 var_220
  loc_CC2D44: FLdPr Me
  loc_CC2D47: VCallAd Control_ID_FechVencMsk
  loc_CC2D4A: FStAdFunc var_194
  loc_CC2D4D: FLdPr var_194
  loc_CC2D50: LateIdLdVar var_118 DispID_15 0
  loc_CC2D57: PopAd
  loc_CC2D59: LitStr "START TRANSACTION; INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_CC2D5C: LitStr " VALUES ("
  loc_CC2D5F: ConcatStr
  loc_CC2D60: FStStrNoPop var_140
  loc_CC2D63: FLdI2 var_86
  loc_CC2D66: CStrUI1
  loc_CC2D68: FStStrNoPop var_144
  loc_CC2D6B: ConcatStr
  loc_CC2D6C: FStStrNoPop var_148
  loc_CC2D6F: LitStr ","
  loc_CC2D72: ConcatStr
  loc_CC2D73: FStStrNoPop var_154
  loc_CC2D76: ILdRf var_8C
  loc_CC2D79: CStrI4
  loc_CC2D7B: FStStrNoPop var_158
  loc_CC2D7E: ConcatStr
  loc_CC2D7F: FStStrNoPop var_15C
  loc_CC2D82: LitStr ","
  loc_CC2D85: ConcatStr
  loc_CC2D86: FStStrNoPop var_160
  loc_CC2D89: ImpAdLdUI1
  loc_CC2D8D: CStrI2
  loc_CC2D8F: FStStrNoPop var_164
  loc_CC2D92: ConcatStr
  loc_CC2D93: FStStrNoPop var_168
  loc_CC2D96: LitStr ",'"
  loc_CC2D99: ConcatStr
  loc_CC2D9A: FStStrNoPop var_170
  loc_CC2D9D: FLdRfVar var_16C
  loc_CC2DA0: FLdPr Me
  loc_CC2DA3: VCallAd Control_ID_NumeCtaTxt
  loc_CC2DA6: FStAdFunc var_E8
  loc_CC2DA9: FLdPr var_E8
  loc_CC2DAC:  = Me.Text
  loc_CC2DB1: ILdRf var_16C
  loc_CC2DB4: ConcatStr
  loc_CC2DB5: FStStrNoPop var_174
  loc_CC2DB8: LitStr "','"
  loc_CC2DBB: ConcatStr
  loc_CC2DBC: FStStrNoPop var_180
  loc_CC2DBF: FLdRfVar var_17C
  loc_CC2DC2: FLdPr Me
  loc_CC2DC5: VCallAd Control_ID_CucuPersLbl
  loc_CC2DC8: FStAdFunc var_178
  loc_CC2DCB: FLdPr var_178
  loc_CC2DCE:  = Me.Caption
  loc_CC2DD3: ILdRf var_17C
  loc_CC2DD6: ConcatStr
  loc_CC2DD7: FStStrNoPop var_184
  loc_CC2DDA: LitStr "','"
  loc_CC2DDD: ConcatStr
  loc_CC2DDE: FStStrNoPop var_188
  loc_CC2DE1: LitI4 1
  loc_CC2DE6: LitI4 1
  loc_CC2DEB: LitVarStr var_F8, "yyyy-mm-dd"
  loc_CC2DF0: FStVarCopyObj var_E4
  loc_CC2DF3: FLdRfVar var_E4
  loc_CC2DF6: FLdFPR8 var_220
  loc_CC2DF9: CVarDate var_D4
  loc_CC2DFD: ImpAdCallI2 Format$(, )
  loc_CC2E02: FStStrNoPop var_18C
  loc_CC2E05: ConcatStr
  loc_CC2E06: FStStrNoPop var_190
  loc_CC2E09: LitStr "','"
  loc_CC2E0C: ConcatStr
  loc_CC2E0D: FStStrNoPop var_1A8
  loc_CC2E10: LitI4 1
  loc_CC2E15: LitI4 1
  loc_CC2E1A: LitVarStr var_108, "yyyy-mm-dd"
  loc_CC2E1F: FStVarCopyObj var_1A4
  loc_CC2E22: FLdRfVar var_1A4
  loc_CC2E25: FLdRfVar var_118
  loc_CC2E28: CStrVarTmp
  loc_CC2E29: CVarStr var_138
  loc_CC2E2C: ImpAdCallI2 Format$(, )
  loc_CC2E31: FStStrNoPop var_1AC
  loc_CC2E34: ConcatStr
  loc_CC2E35: FStStrNoPop var_1B0
  loc_CC2E38: LitStr "',"
  loc_CC2E3B: ConcatStr
  loc_CC2E3C: FStStrNoPop var_1B4
  loc_CC2E3F: ImpAdLdI2 MemVar_D93078
  loc_CC2E42: CStrUI1
  loc_CC2E44: FStStrNoPop var_1B8
  loc_CC2E47: ConcatStr
  loc_CC2E48: FStStrNoPop var_1BC
  loc_CC2E4B: LitStr ",'Pago Anticipado','Emitido',0,0,"
  loc_CC2E4E: ConcatStr
  loc_CC2E4F: FStStrNoPop var_1C4
  loc_CC2E52: LitI4 0
  loc_CC2E57: LitI4 -1
  loc_CC2E5C: LitI4 1
  loc_CC2E61: LitStr "."
  loc_CC2E64: LitStr ","
  loc_CC2E67: ImpAdLdFPR8 MemVar_D93040
  loc_CC2E6A: CStrR8
  loc_CC2E6C: FStStrNoPop var_1C0
  loc_CC2E6F: ImpAdCallI2 Replace(, , , , , )
  loc_CC2E74: FStStrNoPop var_1C8
  loc_CC2E77: ConcatStr
  loc_CC2E78: FStStrNoPop var_1CC
  loc_CC2E7B: LitStr ","
  loc_CC2E7E: ConcatStr
  loc_CC2E7F: FStStrNoPop var_1D4
  loc_CC2E82: LitI4 0
  loc_CC2E87: LitI4 -1
  loc_CC2E8C: LitI4 1
  loc_CC2E91: LitStr "."
  loc_CC2E94: LitStr ","
  loc_CC2E97: ImpAdLdFPR8 MemVar_D93058
  loc_CC2E9A: CStrR8
  loc_CC2E9C: FStStrNoPop var_1D0
  loc_CC2E9F: ImpAdCallI2 Replace(, , , , , )
  loc_CC2EA4: FStStrNoPop var_1D8
  loc_CC2EA7: ConcatStr
  loc_CC2EA8: FStStrNoPop var_1DC
  loc_CC2EAB: LitStr ","
  loc_CC2EAE: ConcatStr
  loc_CC2EAF: FStStrNoPop var_1E4
  loc_CC2EB2: LitI4 0
  loc_CC2EB7: LitI4 -1
  loc_CC2EBC: LitI4 1
  loc_CC2EC1: LitStr "."
  loc_CC2EC4: LitStr ","
  loc_CC2EC7: FLdPr Me
  loc_CC2ECA: MemLdFPR8 global_104
  loc_CC2ECD: CStrR8
  loc_CC2ECF: FStStrNoPop var_1E0
  loc_CC2ED2: ImpAdCallI2 Replace(, , , , , )
  loc_CC2ED7: FStStrNoPop var_1E8
  loc_CC2EDA: ConcatStr
  loc_CC2EDB: FStStrNoPop var_1EC
  loc_CC2EDE: LitStr ",0,0,"
  loc_CC2EE1: ConcatStr
  loc_CC2EE2: FStStrNoPop var_1F4
  loc_CC2EE5: LitI4 0
  loc_CC2EEA: LitI4 -1
  loc_CC2EEF: LitI4 1
  loc_CC2EF4: LitStr "."
  loc_CC2EF7: LitStr ","
  loc_CC2EFA: FLdPr Me
  loc_CC2EFD: MemLdFPR8 global_112
  loc_CC2F00: CStrR8
  loc_CC2F02: FStStrNoPop var_1F0
  loc_CC2F05: ImpAdCallI2 Replace(, , , , , )
  loc_CC2F0A: FStStrNoPop var_1F8
  loc_CC2F0D: ConcatStr
  loc_CC2F0E: FStStrNoPop var_1FC
  loc_CC2F11: LitStr ",0,"
  loc_CC2F14: ConcatStr
  loc_CC2F15: FStStrNoPop var_204
  loc_CC2F18: LitI4 0
  loc_CC2F1D: LitI4 -1
  loc_CC2F22: LitI4 1
  loc_CC2F27: LitStr "."
  loc_CC2F2A: LitStr ","
  loc_CC2F2D: ImpAdLdFPR8 MemVar_D93070
  loc_CC2F30: CStrR8
  loc_CC2F32: FStStrNoPop var_200
  loc_CC2F35: ImpAdCallI2 Replace(, , , , , )
  loc_CC2F3A: FStStrNoPop var_208
  loc_CC2F3D: ConcatStr
  loc_CC2F3E: FStStrNoPop var_20C
  loc_CC2F41: LitStr ",'"
  loc_CC2F44: ConcatStr
  loc_CC2F45: FStStrNoPop var_210
  loc_CC2F48: ImpAdLdI4 MemVar_D9302C
  loc_CC2F4B: ConcatStr
  loc_CC2F4C: FStStrNoPop var_214
  loc_CC2F4F: LitStr "');"
  loc_CC2F52: ConcatStr
  loc_CC2F53: FStStrNoPop var_218
  loc_CC2F56: FLdPr Me
  loc_CC2F59: MemStStrCopy
  loc_CC2F5D: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_16C = "": var_174 = "": var_180 = "": var_17C = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC2FBE: FFreeAd var_E8 = "": var_178 = ""
  loc_CC2FC7: FFreeVar var_D4 = "": var_E4 = "": var_118 = "": var_138 = ""
  loc_CC2FD4: LitI2_Byte 0
  loc_CC2FD6: CR8I2
  loc_CC2FD7: FLdPr Me
  loc_CC2FDA: MemStFPR8 global_104
  loc_CC2FDD: LitI2_Byte 0
  loc_CC2FDF: CR8I2
  loc_CC2FE0: FLdPr Me
  loc_CC2FE3: MemStFPR8 global_112
  loc_CC2FE6: LitI2_Byte 0
  loc_CC2FE8: CR8I2
  loc_CC2FE9: FLdPr Me
  loc_CC2FEC: MemStFPR8 global_120
  loc_CC2FEF: LitI2_Byte 0
  loc_CC2FF1: CR8I2
  loc_CC2FF2: FLdPr Me
  loc_CC2FF5: MemStFPR8 global_128
  loc_CC2FF8: LitI2_Byte 0
  loc_CC2FFA: CR8I2
  loc_CC2FFB: FLdPr Me
  loc_CC2FFE: MemStFPR8 global_136
  loc_CC3001: LitI2_Byte 0
  loc_CC3003: CR8I2
  loc_CC3004: FLdPr Me
  loc_CC3007: MemStFPR8 global_144
  loc_CC300A: LitI2_Byte 0
  loc_CC300C: CR8I2
  loc_CC300D: FStFPR8 var_AC
  loc_CC3010: LitI2_Byte 0
  loc_CC3012: FStI2 var_92
  loc_CC3015: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, Numectct, MoviCtct, FeveCtct, PeriInfo, CodiConc, ImpoCtct, DescCtct, ExenCtct, TotaCtct FROM tmp_anticipo"
  loc_CC3018: LitStr " WHERE tmp_anticipo.TotaCtct > 0"
  loc_CC301B: ConcatStr
  loc_CC301C: FStStrNoPop var_140
  loc_CC301F: LitStr " AND tmp_anticipo.SeleCtct = 'Si'"
  loc_CC3022: ConcatStr
  loc_CC3023: FStStrNoPop var_144
  loc_CC3026: LitStr " ORDER BY tmp_anticipo.CodiOfic, tmp_anticipo.CuenCtct, tmp_anticipo.PeriCtct, tmp_anticipo.BimeCtct, tmp_anticipo.NumeCtct, tmp_anticipo.MoviCtct"
  loc_CC3029: ConcatStr
  loc_CC302A: FStStrNoPop var_148
  loc_CC302D: FLdPr Me
  loc_CC3030: MemLdRfVar from_stack_1.global_56
  loc_CC3033: NewIfNullPr clsctacte
  loc_CC3036: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CC303B: FFreeStr var_140 = "": var_144 = ""
  loc_CC3044: FLdRfVar var_14C
  loc_CC3047: FLdPr Me
  loc_CC304A: MemLdRfVar from_stack_1.global_56
  loc_CC304D: NewIfNullPr clsctacte
  loc_CC3050: from_stack_1 = clsctacte.RecordCount
  loc_CC3055: ILdRf var_14C
  loc_CC3058: LitI4 0
  loc_CC305D: GtI4
  loc_CC305E: BranchF loc_CC4B41
  loc_CC3061: FLdPr Me
  loc_CC3064: MemLdRfVar from_stack_1.global_56
  loc_CC3067: NewIfNullPr clsctacte
  loc_CC306A: Call clsctacte.MoveFirst()
  loc_CC306F: FLdRfVar var_14E
  loc_CC3072: FLdPr Me
  loc_CC3075: MemLdRfVar from_stack_1.global_56
  loc_CC3078: NewIfNullPr clsctacte
  loc_CC307B: from_stack_1 = clsctacte.EOF
  loc_CC3080: FLdI2 var_14E
  loc_CC3083: NotI4
  loc_CC3084: BranchF loc_CC4B41
  loc_CC3087: FLdRfVar var_14C
  loc_CC308A: FLdRfVar var_14E
  loc_CC308D: FLdPr Me
  loc_CC3090: MemLdRfVar from_stack_1.global_56
  loc_CC3093: NewIfNullPr clsctacte
  loc_CC3096: from_stack_1 = clsctacte.PeriCtct
  loc_CC309B: FLdI2 var_14E
  loc_CC309E: FLdPr Me
  loc_CC30A1: MemLdRfVar from_stack_1.global_52
  loc_CC30A4: NewIfNullPr clsctacte
  loc_CC30A7: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_CC30AC: ILdRf var_14C
  loc_CC30AF: FStR4 var_90
  loc_CC30B2: LitI2_Byte 1
  loc_CC30B4: FStI2 var_92
  loc_CC30B7: FLdRfVar var_D4
  loc_CC30BA: FLdPr Me
  loc_CC30BD: MemLdRfVar from_stack_1.global_56
  loc_CC30C0: NewIfNullPr clsctacte
  loc_CC30C3: from_stack_1 = clsctacte.ImpoCtct
  loc_CC30C8: FLdRfVar var_E4
  loc_CC30CB: FLdPr Me
  loc_CC30CE: MemLdRfVar from_stack_1.global_56
  loc_CC30D1: NewIfNullPr clsctacte
  loc_CC30D4: from_stack_1 = clsctacte.DescCtct
  loc_CC30D9: FLdRfVar var_118
  loc_CC30DC: FLdPr Me
  loc_CC30DF: MemLdRfVar from_stack_1.global_56
  loc_CC30E2: NewIfNullPr clsctacte
  loc_CC30E5: from_stack_1 = clsctacte.ExenCtct
  loc_CC30EA: FLdRfVar var_220
  loc_CC30ED: FLdPr Me
  loc_CC30F0: MemLdRfVar from_stack_1.global_56
  loc_CC30F3: NewIfNullPr clsctacte
  loc_CC30F6: from_stack_1 = clsctacte.TotaCtct
  loc_CC30FB: FLdPr Me
  loc_CC30FE: MemLdStr global_156
  loc_CC3101: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_CC3104: ConcatStr
  loc_CC3105: FStStrNoPop var_140
  loc_CC3108: LitStr " VALUES ("
  loc_CC310B: ConcatStr
  loc_CC310C: FStStrNoPop var_144
  loc_CC310F: FLdI2 var_86
  loc_CC3112: CStrUI1
  loc_CC3114: FStStrNoPop var_148
  loc_CC3117: ConcatStr
  loc_CC3118: FStStrNoPop var_154
  loc_CC311B: LitStr ","
  loc_CC311E: ConcatStr
  loc_CC311F: FStStrNoPop var_158
  loc_CC3122: ILdRf var_8C
  loc_CC3125: CStrI4
  loc_CC3127: FStStrNoPop var_15C
  loc_CC312A: ConcatStr
  loc_CC312B: FStStrNoPop var_160
  loc_CC312E: LitStr ","
  loc_CC3131: ConcatStr
  loc_CC3132: FStStrNoPop var_164
  loc_CC3135: FLdRfVar var_14E
  loc_CC3138: FLdPr Me
  loc_CC313B: MemLdRfVar from_stack_1.global_56
  loc_CC313E: NewIfNullPr clsctacte
  loc_CC3141: from_stack_1 = clsctacte.PeriCtct
  loc_CC3146: FLdI2 var_14E
  loc_CC3149: CStrUI1
  loc_CC314B: FStStrNoPop var_168
  loc_CC314E: ConcatStr
  loc_CC314F: FStStrNoPop var_16C
  loc_CC3152: LitStr ","
  loc_CC3155: ConcatStr
  loc_CC3156: FStStrNoPop var_170
  loc_CC3159: FLdRfVar var_222
  loc_CC315C: FLdPr Me
  loc_CC315F: MemLdRfVar from_stack_1.global_56
  loc_CC3162: NewIfNullPr clsctacte
  loc_CC3165: from_stack_1 = clsctacte.BimeCtct
  loc_CC316A: FLdI2 var_222
  loc_CC316D: CStrUI1
  loc_CC316F: FStStrNoPop var_174
  loc_CC3172: ConcatStr
  loc_CC3173: FStStrNoPop var_17C
  loc_CC3176: LitStr ","
  loc_CC3179: ConcatStr
  loc_CC317A: FStStrNoPop var_180
  loc_CC317D: ILdRf var_90
  loc_CC3180: CStrI4
  loc_CC3182: FStStrNoPop var_184
  loc_CC3185: ConcatStr
  loc_CC3186: FStStrNoPop var_188
  loc_CC3189: LitStr ","
  loc_CC318C: ConcatStr
  loc_CC318D: FStStrNoPop var_18C
  loc_CC3190: FLdI2 var_92
  loc_CC3193: CStrUI1
  loc_CC3195: FStStrNoPop var_190
  loc_CC3198: ConcatStr
  loc_CC3199: FStStrNoPop var_1A8
  loc_CC319C: LitStr ",1,"
  loc_CC319F: ConcatStr
  loc_CC31A0: FStStrNoPop var_1AC
  loc_CC31A3: FLdRfVar var_224
  loc_CC31A6: FLdPr Me
  loc_CC31A9: MemLdRfVar from_stack_1.global_56
  loc_CC31AC: NewIfNullPr clsctacte
  loc_CC31AF: from_stack_1 = clsctacte.CodiOfic
  loc_CC31B4: FLdI2 var_224
  loc_CC31B7: CStrUI1
  loc_CC31B9: FStStrNoPop var_1B0
  loc_CC31BC: ConcatStr
  loc_CC31BD: FStStrNoPop var_1B4
  loc_CC31C0: LitStr ",'"
  loc_CC31C3: ConcatStr
  loc_CC31C4: FStStrNoPop var_1BC
  loc_CC31C7: FLdRfVar var_1B8
  loc_CC31CA: FLdPr Me
  loc_CC31CD: MemLdRfVar from_stack_1.global_56
  loc_CC31D0: NewIfNullPr clsctacte
  loc_CC31D3: from_stack_1 = clsctacte.CuenCtct
  loc_CC31D8: ILdRf var_1B8
  loc_CC31DB: ConcatStr
  loc_CC31DC: FStStrNoPop var_1C0
  loc_CC31DF: LitStr "','Bimestral',0,0,0,5,"
  loc_CC31E2: ConcatStr
  loc_CC31E3: FStStrNoPop var_1C4
  loc_CC31E6: FLdRfVar var_226
  loc_CC31E9: FLdPr Me
  loc_CC31EC: MemLdRfVar from_stack_1.global_56
  loc_CC31EF: NewIfNullPr clsctacte
  loc_CC31F2: from_stack_1 = clsctacte.PeriInfo
  loc_CC31F7: FLdI2 var_226
  loc_CC31FA: CStrUI1
  loc_CC31FC: FStStrNoPop var_1C8
  loc_CC31FF: ConcatStr
  loc_CC3200: FStStrNoPop var_1CC
  loc_CC3203: LitStr ",'"
  loc_CC3206: ConcatStr
  loc_CC3207: FStStrNoPop var_1D4
  loc_CC320A: FLdRfVar var_1D0
  loc_CC320D: FLdPr Me
  loc_CC3210: MemLdRfVar from_stack_1.global_56
  loc_CC3213: NewIfNullPr clsctacte
  loc_CC3216: from_stack_1 = clsctacte.CodiConc
  loc_CC321B: ILdRf var_1D0
  loc_CC321E: ConcatStr
  loc_CC321F: FStStrNoPop var_1D8
  loc_CC3222: LitStr "',"
  loc_CC3225: ConcatStr
  loc_CC3226: FStStrNoPop var_1E0
  loc_CC3229: LitI4 0
  loc_CC322E: LitI4 -1
  loc_CC3233: LitI4 1
  loc_CC3238: LitStr "."
  loc_CC323B: LitStr ","
  loc_CC323E: FLdRfVar var_D4
  loc_CC3241: FnCDblVar
  loc_CC3243: CStrR8
  loc_CC3245: FStStrNoPop var_1DC
  loc_CC3248: ImpAdCallI2 Replace(, , , , , )
  loc_CC324D: FStStrNoPop var_1E4
  loc_CC3250: ConcatStr
  loc_CC3251: FStStrNoPop var_1E8
  loc_CC3254: LitStr ","
  loc_CC3257: ConcatStr
  loc_CC3258: FStStrNoPop var_1F0
  loc_CC325B: LitI4 0
  loc_CC3260: LitI4 -1
  loc_CC3265: LitI4 1
  loc_CC326A: LitStr "."
  loc_CC326D: LitStr ","
  loc_CC3270: FLdRfVar var_E4
  loc_CC3273: FnCDblVar
  loc_CC3275: CStrR8
  loc_CC3277: FStStrNoPop var_1EC
  loc_CC327A: ImpAdCallI2 Replace(, , , , , )
  loc_CC327F: FStStrNoPop var_1F4
  loc_CC3282: ConcatStr
  loc_CC3283: FStStrNoPop var_1F8
  loc_CC3286: LitStr ",0,0,0,"
  loc_CC3289: ConcatStr
  loc_CC328A: FStStrNoPop var_200
  loc_CC328D: LitI4 0
  loc_CC3292: LitI4 -1
  loc_CC3297: LitI4 1
  loc_CC329C: LitStr "."
  loc_CC329F: LitStr ","
  loc_CC32A2: FLdRfVar var_118
  loc_CC32A5: FnCDblVar
  loc_CC32A7: CStrR8
  loc_CC32A9: FStStrNoPop var_1FC
  loc_CC32AC: ImpAdCallI2 Replace(, , , , , )
  loc_CC32B1: FStStrNoPop var_204
  loc_CC32B4: ConcatStr
  loc_CC32B5: FStStrNoPop var_208
  loc_CC32B8: LitStr ",0,"
  loc_CC32BB: ConcatStr
  loc_CC32BC: FStStrNoPop var_210
  loc_CC32BF: LitI4 0
  loc_CC32C4: LitI4 -1
  loc_CC32C9: LitI4 1
  loc_CC32CE: LitStr "."
  loc_CC32D1: LitStr ","
  loc_CC32D4: FLdFPR8 var_220
  loc_CC32D7: CStrR8
  loc_CC32D9: FStStrNoPop var_20C
  loc_CC32DC: ImpAdCallI2 Replace(, , , , , )
  loc_CC32E1: FStStrNoPop var_214
  loc_CC32E4: ConcatStr
  loc_CC32E5: FStStrNoPop var_218
  loc_CC32E8: LitStr ");"
  loc_CC32EB: ConcatStr
  loc_CC32EC: FStStrNoPop var_22C
  loc_CC32EF: FLdPr Me
  loc_CC32F2: MemStStrCopy
  loc_CC32F6: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_22C = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1BC = "": var_1B8 = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D4 = ""
  loc_CC3359: FFreeVar var_D4 = "": var_D4 = "": var_E4 = "": var_E4 = "": var_118 = ""
  loc_CC3368: LitI2_Byte 0
  loc_CC336A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC336F: FStFPR8 var_254
  loc_CC3372: FLdRfVar var_118
  loc_CC3375: FLdPr Me
  loc_CC3378: MemLdRfVar from_stack_1.global_56
  loc_CC337B: NewIfNullPr clsctacte
  loc_CC337E: from_stack_1 = clsctacte.FeveCtct
  loc_CC3383: FLdRfVar var_1A4
  loc_CC3386: FLdPr Me
  loc_CC3389: MemLdRfVar from_stack_1.global_56
  loc_CC338C: NewIfNullPr clsctacte
  loc_CC338F: from_stack_1 = clsctacte.ImpoCtct
  loc_CC3394: FLdRfVar var_23C
  loc_CC3397: FLdPr Me
  loc_CC339A: MemLdRfVar from_stack_1.global_56
  loc_CC339D: NewIfNullPr clsctacte
  loc_CC33A0: from_stack_1 = clsctacte.DescCtct
  loc_CC33A5: FLdRfVar var_24C
  loc_CC33A8: FLdPr Me
  loc_CC33AB: MemLdRfVar from_stack_1.global_56
  loc_CC33AE: NewIfNullPr clsctacte
  loc_CC33B1: from_stack_1 = clsctacte.ExenCtct
  loc_CC33B6: FLdRfVar var_220
  loc_CC33B9: FLdPr Me
  loc_CC33BC: MemLdRfVar from_stack_1.global_56
  loc_CC33BF: NewIfNullPr clsctacte
  loc_CC33C2: from_stack_1 = clsctacte.TotaCtct
  loc_CC33C7: FLdPr Me
  loc_CC33CA: MemLdStr global_156
  loc_CC33CD: LitStr " INSERT INTO pagoanti (CodiOfic, CuenCtct, PeriBole, NumeBole, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, EstaPaan, FealPaan, FevePaan, FeacPaan, ImpoPaan, GastPaan, DescPaan, ExenPaan, TotaPaan, CodiUsua) "
  loc_CC33D0: ConcatStr
  loc_CC33D1: FStStrNoPop var_140
  loc_CC33D4: LitStr " VALUES ("
  loc_CC33D7: ConcatStr
  loc_CC33D8: FStStrNoPop var_144
  loc_CC33DB: FLdRfVar var_14E
  loc_CC33DE: FLdPr Me
  loc_CC33E1: MemLdRfVar from_stack_1.global_56
  loc_CC33E4: NewIfNullPr clsctacte
  loc_CC33E7: from_stack_1 = clsctacte.CodiOfic
  loc_CC33EC: FLdI2 var_14E
  loc_CC33EF: CStrUI1
  loc_CC33F1: FStStrNoPop var_148
  loc_CC33F4: ConcatStr
  loc_CC33F5: FStStrNoPop var_154
  loc_CC33F8: LitStr ",'"
  loc_CC33FB: ConcatStr
  loc_CC33FC: FStStrNoPop var_15C
  loc_CC33FF: FLdRfVar var_158
  loc_CC3402: FLdPr Me
  loc_CC3405: MemLdRfVar from_stack_1.global_56
  loc_CC3408: NewIfNullPr clsctacte
  loc_CC340B: from_stack_1 = clsctacte.CuenCtct
  loc_CC3410: ILdRf var_158
  loc_CC3413: ConcatStr
  loc_CC3414: FStStrNoPop var_160
  loc_CC3417: LitStr "',"
  loc_CC341A: ConcatStr
  loc_CC341B: FStStrNoPop var_164
  loc_CC341E: FLdI2 var_86
  loc_CC3421: CStrUI1
  loc_CC3423: FStStrNoPop var_168
  loc_CC3426: ConcatStr
  loc_CC3427: FStStrNoPop var_16C
  loc_CC342A: LitStr ","
  loc_CC342D: ConcatStr
  loc_CC342E: FStStrNoPop var_170
  loc_CC3431: ILdRf var_8C
  loc_CC3434: CStrI4
  loc_CC3436: FStStrNoPop var_174
  loc_CC3439: ConcatStr
  loc_CC343A: FStStrNoPop var_17C
  loc_CC343D: LitStr ","
  loc_CC3440: ConcatStr
  loc_CC3441: FStStrNoPop var_180
  loc_CC3444: FLdRfVar var_222
  loc_CC3447: FLdPr Me
  loc_CC344A: MemLdRfVar from_stack_1.global_56
  loc_CC344D: NewIfNullPr clsctacte
  loc_CC3450: from_stack_1 = clsctacte.PeriCtct
  loc_CC3455: FLdI2 var_222
  loc_CC3458: CStrUI1
  loc_CC345A: FStStrNoPop var_184
  loc_CC345D: ConcatStr
  loc_CC345E: FStStrNoPop var_188
  loc_CC3461: LitStr ","
  loc_CC3464: ConcatStr
  loc_CC3465: FStStrNoPop var_18C
  loc_CC3468: FLdRfVar var_224
  loc_CC346B: FLdPr Me
  loc_CC346E: MemLdRfVar from_stack_1.global_56
  loc_CC3471: NewIfNullPr clsctacte
  loc_CC3474: from_stack_1 = clsctacte.BimeCtct
  loc_CC3479: FLdI2 var_224
  loc_CC347C: CStrUI1
  loc_CC347E: FStStrNoPop var_190
  loc_CC3481: ConcatStr
  loc_CC3482: FStStrNoPop var_1A8
  loc_CC3485: LitStr ",0,0,'Emitido','"
  loc_CC3488: ConcatStr
  loc_CC3489: FStStrNoPop var_1AC
  loc_CC348C: LitI4 1
  loc_CC3491: LitI4 1
  loc_CC3496: LitVarStr var_F8, "yyyy-mm-dd"
  loc_CC349B: FStVarCopyObj var_E4
  loc_CC349E: FLdRfVar var_E4
  loc_CC34A1: FLdFPR8 var_254
  loc_CC34A4: CVarDate var_D4
  loc_CC34A8: ImpAdCallI2 Format$(, )
  loc_CC34AD: FStStrNoPop var_1B0
  loc_CC34B0: ConcatStr
  loc_CC34B1: FStStrNoPop var_1B4
  loc_CC34B4: LitStr "','"
  loc_CC34B7: ConcatStr
  loc_CC34B8: FStStrNoPop var_1B8
  loc_CC34BB: LitI4 1
  loc_CC34C0: LitI4 1
  loc_CC34C5: LitVarStr var_108, "yyyy-mm-dd"
  loc_CC34CA: FStVarCopyObj var_138
  loc_CC34CD: FLdRfVar var_138
  loc_CC34D0: FLdRfVar var_118
  loc_CC34D3: ImpAdCallI2 Format$(, )
  loc_CC34D8: FStStrNoPop var_1BC
  loc_CC34DB: ConcatStr
  loc_CC34DC: FStStrNoPop var_1C0
  loc_CC34DF: LitStr "',Null,"
  loc_CC34E2: ConcatStr
  loc_CC34E3: FStStrNoPop var_1C8
  loc_CC34E6: LitI4 0
  loc_CC34EB: LitI4 -1
  loc_CC34F0: LitI4 1
  loc_CC34F5: LitStr "."
  loc_CC34F8: LitStr ","
  loc_CC34FB: FLdRfVar var_1A4
  loc_CC34FE: FnCDblVar
  loc_CC3500: CStrR8
  loc_CC3502: FStStrNoPop var_1C4
  loc_CC3505: ImpAdCallI2 Replace(, , , , , )
  loc_CC350A: FStStrNoPop var_1CC
  loc_CC350D: ConcatStr
  loc_CC350E: FStStrNoPop var_1D0
  loc_CC3511: LitStr ",0,"
  loc_CC3514: ConcatStr
  loc_CC3515: FStStrNoPop var_1D8
  loc_CC3518: LitI4 0
  loc_CC351D: LitI4 -1
  loc_CC3522: LitI4 1
  loc_CC3527: LitStr "."
  loc_CC352A: LitStr ","
  loc_CC352D: FLdRfVar var_23C
  loc_CC3530: FnCDblVar
  loc_CC3532: CStrR8
  loc_CC3534: FStStrNoPop var_1D4
  loc_CC3537: ImpAdCallI2 Replace(, , , , , )
  loc_CC353C: FStStrNoPop var_1DC
  loc_CC353F: ConcatStr
  loc_CC3540: FStStrNoPop var_1E0
  loc_CC3543: LitStr ","
  loc_CC3546: ConcatStr
  loc_CC3547: FStStrNoPop var_1E8
  loc_CC354A: LitI4 0
  loc_CC354F: LitI4 -1
  loc_CC3554: LitI4 1
  loc_CC3559: LitStr "."
  loc_CC355C: LitStr ","
  loc_CC355F: FLdRfVar var_24C
  loc_CC3562: FnCDblVar
  loc_CC3564: CStrR8
  loc_CC3566: FStStrNoPop var_1E4
  loc_CC3569: ImpAdCallI2 Replace(, , , , , )
  loc_CC356E: FStStrNoPop var_1EC
  loc_CC3571: ConcatStr
  loc_CC3572: FStStrNoPop var_1F0
  loc_CC3575: LitStr ","
  loc_CC3578: ConcatStr
  loc_CC3579: FStStrNoPop var_1F8
  loc_CC357C: LitI4 0
  loc_CC3581: LitI4 -1
  loc_CC3586: LitI4 1
  loc_CC358B: LitStr "."
  loc_CC358E: LitStr ","
  loc_CC3591: FLdFPR8 var_220
  loc_CC3594: CStrR8
  loc_CC3596: FStStrNoPop var_1F4
  loc_CC3599: ImpAdCallI2 Replace(, , , , , )
  loc_CC359E: FStStrNoPop var_1FC
  loc_CC35A1: ConcatStr
  loc_CC35A2: FStStrNoPop var_200
  loc_CC35A5: LitStr ",'"
  loc_CC35A8: ConcatStr
  loc_CC35A9: FStStrNoPop var_204
  loc_CC35AC: ImpAdLdI4 MemVar_D9302C
  loc_CC35AF: ConcatStr
  loc_CC35B0: FStStrNoPop var_208
  loc_CC35B3: LitStr "');"
  loc_CC35B6: ConcatStr
  loc_CC35B7: FStStrNoPop var_20C
  loc_CC35BA: FLdPr Me
  loc_CC35BD: MemStStrCopy
  loc_CC35C1: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC361C: FFreeVar var_D4 = "": var_E4 = "": var_118 = "": var_138 = "": var_1A4 = "": var_1A4 = "": var_23C = "": var_23C = "": var_24C = ""
  loc_CC3633: FLdRfVar var_D4
  loc_CC3636: FLdPr Me
  loc_CC3639: MemLdRfVar from_stack_1.global_56
  loc_CC363C: NewIfNullPr clsctacte
  loc_CC363F: from_stack_1 = clsctacte.DescCtct
  loc_CC3644: FLdRfVar var_D4
  loc_CC3647: FnCDblVar
  loc_CC3649: LitI2_Byte 0
  loc_CC364B: CR8I2
  loc_CC364C: GtR4
  loc_CC364D: FFreeVar var_D4 = ""
  loc_CC3654: BranchF loc_CC36B5
  loc_CC3657: FLdRfVar var_D4
  loc_CC365A: FLdPr Me
  loc_CC365D: MemLdRfVar from_stack_1.global_56
  loc_CC3660: NewIfNullPr clsctacte
  loc_CC3663: from_stack_1 = clsctacte.DescCtct
  loc_CC3668: FLdRfVar var_E4
  loc_CC366B: FLdPr Me
  loc_CC366E: MemLdRfVar from_stack_1.global_56
  loc_CC3671: NewIfNullPr clsctacte
  loc_CC3674: from_stack_1 = clsctacte.ImpoCtct
  loc_CC3679: LitI4 2
  loc_CC367E: FLdRfVar var_D4
  loc_CC3681: FnCDblVar
  loc_CC3683: LitI2_Byte &H64
  loc_CC3685: CR8I2
  loc_CC3686: MulR8
  loc_CC3687: FLdRfVar var_E4
  loc_CC368A: FnCDblVar
  loc_CC368C: DivR8
  loc_CC368D: CVarR8
  loc_CC3691: FLdRfVar var_138
  loc_CC3694: ImpAdCallFPR4  = Round(, )
  loc_CC3699: FLdRfVar var_138
  loc_CC369C: CR4Var
  loc_CC369D: FLdPr Me
  loc_CC36A0: MemStFPR8 global_96
  loc_CC36A3: FFreeVar var_D4 = "": var_D4 = "": var_E4 = "": var_E4 = "": var_118 = ""
  loc_CC36B2: Branch loc_CC36BE
  loc_CC36B5: LitI2_Byte 0
  loc_CC36B7: CR8I2
  loc_CC36B8: FLdPr Me
  loc_CC36BB: MemStFPR8 global_96
  loc_CC36BE: LitI2_Byte 0
  loc_CC36C0: CR8I2
  loc_CC36C1: FStFPR8 var_9C
  loc_CC36C4: LitI2_Byte 0
  loc_CC36C6: CR8I2
  loc_CC36C7: FStFPR8 var_A4
  loc_CC36CA: LitStr "Municipalidad de Guaymallén"
  loc_CC36CD: LitStr "Municipalidad de Lavalle"
  loc_CC36D0: EqStr
  loc_CC36D2: BranchF loc_CC4A50
  loc_CC36D5: ImpAdLdUI1
  loc_CC36D9: CI2UI1
  loc_CC36DB: LitI2_Byte 1
  loc_CC36DD: EqI2
  loc_CC36DE: BranchF loc_CC4165
  loc_CC36E1: LitI2_Byte 0
  loc_CC36E3: FStI2 var_AE
  loc_CC36E6: LitI4 0
  loc_CC36EB: FStR4 var_B4
  loc_CC36EE: LitI2_Byte 0
  loc_CC36F0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC36F5: FStFPR8 var_220
  loc_CC36F8: LitI2_Byte 0
  loc_CC36FA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC36FF: FStFPR8 var_254
  loc_CC3702: LitStr " SELECT CodiInmu, servinmu.CodiSeca, Round(ImpoSeca * UntrPage * CantSein,2) as ImpoSein, servcata.PeriOrde, servcata.PoimSeca, tipoliqu.GastTili, servcata.ImpoSeca, tipoliqu.CogaTili"
  loc_CC3705: LitStr " FROM servinmu"
  loc_CC3708: ConcatStr
  loc_CC3709: FStStrNoPop var_140
  loc_CC370C: LitStr " LEFT JOIN servcata ON servcata.PeriOrde = "
  loc_CC370F: ConcatStr
  loc_CC3710: FStStrNoPop var_144
  loc_CC3713: ImpAdLdI2 MemVar_D93036
  loc_CC3716: CStrUI1
  loc_CC3718: FStStrNoPop var_148
  loc_CC371B: ConcatStr
  loc_CC371C: FStStrNoPop var_154
  loc_CC371F: LitStr " AND servinmu.CodiSeca = servcata.CodiSeca"
  loc_CC3722: ConcatStr
  loc_CC3723: FStStrNoPop var_158
  loc_CC3726: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CC3729: ConcatStr
  loc_CC372A: FStStrNoPop var_15C
  loc_CC372D: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 1 AND tipoliqu.CodiTili = 1"
  loc_CC3730: ConcatStr
  loc_CC3731: FStStrNoPop var_160
  loc_CC3734: LitStr " WHERE servinmu.CodiInmu = "
  loc_CC3737: ConcatStr
  loc_CC3738: FStStrNoPop var_168
  loc_CC373B: FLdRfVar var_164
  loc_CC373E: FLdPr Me
  loc_CC3741: MemLdRfVar from_stack_1.global_56
  loc_CC3744: NewIfNullPr clsctacte
  loc_CC3747: from_stack_1 = clsctacte.CuenCtct
  loc_CC374C: ILdRf var_164
  loc_CC374F: ConcatStr
  loc_CC3750: FStStrNoPop var_16C
  loc_CC3753: LitStr " AND PoimSeca = 'Importe'"
  loc_CC3756: ConcatStr
  loc_CC3757: FStStrNoPop var_170
  loc_CC375A: LitStr " AND FedeSein <= '"
  loc_CC375D: ConcatStr
  loc_CC375E: FStStrNoPop var_174
  loc_CC3761: LitI4 1
  loc_CC3766: LitI4 1
  loc_CC376B: LitVarStr var_F8, "yyyy-mm-dd"
  loc_CC3770: FStVarCopyObj var_E4
  loc_CC3773: FLdRfVar var_E4
  loc_CC3776: FLdFPR8 var_220
  loc_CC3779: CVarDate var_D4
  loc_CC377D: ImpAdCallI2 Format$(, )
  loc_CC3782: FStStrNoPop var_17C
  loc_CC3785: ConcatStr
  loc_CC3786: FStStrNoPop var_180
  loc_CC3789: LitStr "'"
  loc_CC378C: ConcatStr
  loc_CC378D: FStStrNoPop var_184
  loc_CC3790: LitStr " AND (FehaSein > '"
  loc_CC3793: ConcatStr
  loc_CC3794: FStStrNoPop var_188
  loc_CC3797: LitI4 1
  loc_CC379C: LitI4 1
  loc_CC37A1: LitVarStr var_128, "yyyy-mm-dd"
  loc_CC37A6: FStVarCopyObj var_138
  loc_CC37A9: FLdRfVar var_138
  loc_CC37AC: FLdFPR8 var_254
  loc_CC37AF: CVarDate var_118
  loc_CC37B3: ImpAdCallI2 Format$(, )
  loc_CC37B8: FStStrNoPop var_18C
  loc_CC37BB: ConcatStr
  loc_CC37BC: FStStrNoPop var_190
  loc_CC37BF: LitStr "'"
  loc_CC37C2: ConcatStr
  loc_CC37C3: FStStrNoPop var_1A8
  loc_CC37C6: LitStr " OR FehaSein IS NULL) "
  loc_CC37C9: ConcatStr
  loc_CC37CA: FStStrNoPop var_1AC
  loc_CC37CD: LitStr " ORDER BY servinmu.CodiInmu, servinmu.CodiSeca"
  loc_CC37D0: ConcatStr
  loc_CC37D1: FStStrNoPop var_1B0
  loc_CC37D4: FLdPr Me
  loc_CC37D7: MemLdRfVar from_stack_1.global_72
  loc_CC37DA: NewIfNullPr clsservinmu
  loc_CC37DD: Call clsservinmu.RedefineRS(from_stack_1v)
  loc_CC37E2: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = ""
  loc_CC380F: FFreeVar var_D4 = "": var_E4 = "": var_118 = ""
  loc_CC381A: FLdRfVar var_14C
  loc_CC381D: FLdPr Me
  loc_CC3820: MemLdRfVar from_stack_1.global_72
  loc_CC3823: NewIfNullPr clsservinmu
  loc_CC3826: from_stack_1 = clsservinmu.RecordCount
  loc_CC382B: ILdRf var_14C
  loc_CC382E: LitI4 0
  loc_CC3833: GtI4
  loc_CC3834: BranchF loc_CC3D92
  loc_CC3837: FLdPr Me
  loc_CC383A: MemLdRfVar from_stack_1.global_72
  loc_CC383D: NewIfNullPr clsservinmu
  loc_CC3840: Call clsservinmu.MoveFirst()
  loc_CC3845: FLdRfVar var_220
  loc_CC3848: FLdPr Me
  loc_CC384B: MemLdRfVar from_stack_1.global_72
  loc_CC384E: NewIfNullPr clsservinmu
  loc_CC3851: from_stack_1 = clsservinmu.GastTili
  loc_CC3856: LitI4 2
  loc_CC385B: FLdFPR8 var_9C
  loc_CC385E: FLdFPR8 var_220
  loc_CC3861: AddR8
  loc_CC3862: CVarR8
  loc_CC3866: FLdRfVar var_E4
  loc_CC3869: ImpAdCallFPR4  = Round(, )
  loc_CC386E: FLdRfVar var_E4
  loc_CC3871: CR4Var
  loc_CC3872: FStFPR8 var_9C
  loc_CC3875: FFreeVar var_D4 = ""
  loc_CC387C: FLdRfVar var_220
  loc_CC387F: FLdPr Me
  loc_CC3882: MemLdRfVar from_stack_1.global_72
  loc_CC3885: NewIfNullPr clsservinmu
  loc_CC3888: from_stack_1 = clsservinmu.GastTili
  loc_CC388D: FLdFPR8 var_AC
  loc_CC3890: FLdFPR8 var_220
  loc_CC3893: AddR8
  loc_CC3894: FStFPR8 var_AC
  loc_CC3897: FLdRfVar var_220
  loc_CC389A: FLdPr Me
  loc_CC389D: MemLdRfVar from_stack_1.global_72
  loc_CC38A0: NewIfNullPr clsservinmu
  loc_CC38A3: from_stack_1 = clsservinmu.GastTili
  loc_CC38A8: FLdRfVar var_254
  loc_CC38AB: FLdPr Me
  loc_CC38AE: MemLdRfVar from_stack_1.global_72
  loc_CC38B1: NewIfNullPr clsservinmu
  loc_CC38B4: from_stack_1 = clsservinmu.GastTili
  loc_CC38B9: FLdPr Me
  loc_CC38BC: MemLdStr global_156
  loc_CC38BF: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_CC38C2: ConcatStr
  loc_CC38C3: FStStrNoPop var_140
  loc_CC38C6: LitStr " VALUES ("
  loc_CC38C9: ConcatStr
  loc_CC38CA: FStStrNoPop var_144
  loc_CC38CD: FLdI2 var_86
  loc_CC38D0: CStrUI1
  loc_CC38D2: FStStrNoPop var_148
  loc_CC38D5: ConcatStr
  loc_CC38D6: FStStrNoPop var_154
  loc_CC38D9: LitStr ","
  loc_CC38DC: ConcatStr
  loc_CC38DD: FStStrNoPop var_158
  loc_CC38E0: ILdRf var_8C
  loc_CC38E3: CStrI4
  loc_CC38E5: FStStrNoPop var_15C
  loc_CC38E8: ConcatStr
  loc_CC38E9: FStStrNoPop var_160
  loc_CC38EC: LitStr ","
  loc_CC38EF: ConcatStr
  loc_CC38F0: FStStrNoPop var_164
  loc_CC38F3: FLdRfVar var_14E
  loc_CC38F6: FLdPr Me
  loc_CC38F9: MemLdRfVar from_stack_1.global_56
  loc_CC38FC: NewIfNullPr clsctacte
  loc_CC38FF: from_stack_1 = clsctacte.PeriCtct
  loc_CC3904: FLdI2 var_14E
  loc_CC3907: CStrUI1
  loc_CC3909: FStStrNoPop var_168
  loc_CC390C: ConcatStr
  loc_CC390D: FStStrNoPop var_16C
  loc_CC3910: LitStr ","
  loc_CC3913: ConcatStr
  loc_CC3914: FStStrNoPop var_170
  loc_CC3917: FLdRfVar var_222
  loc_CC391A: FLdPr Me
  loc_CC391D: MemLdRfVar from_stack_1.global_56
  loc_CC3920: NewIfNullPr clsctacte
  loc_CC3923: from_stack_1 = clsctacte.BimeCtct
  loc_CC3928: FLdI2 var_222
  loc_CC392B: CStrUI1
  loc_CC392D: FStStrNoPop var_174
  loc_CC3930: ConcatStr
  loc_CC3931: FStStrNoPop var_17C
  loc_CC3934: LitStr ","
  loc_CC3937: ConcatStr
  loc_CC3938: FStStrNoPop var_180
  loc_CC393B: ILdRf var_90
  loc_CC393E: CStrI4
  loc_CC3940: FStStrNoPop var_184
  loc_CC3943: ConcatStr
  loc_CC3944: FStStrNoPop var_188
  loc_CC3947: LitStr ","
  loc_CC394A: ConcatStr
  loc_CC394B: FStStrNoPop var_18C
  loc_CC394E: FLdI2 var_92
  loc_CC3951: CStrUI1
  loc_CC3953: FStStrNoPop var_190
  loc_CC3956: ConcatStr
  loc_CC3957: FStStrNoPop var_1A8
  loc_CC395A: LitStr ",1,"
  loc_CC395D: ConcatStr
  loc_CC395E: FStStrNoPop var_1AC
  loc_CC3961: FLdRfVar var_224
  loc_CC3964: FLdPr Me
  loc_CC3967: MemLdRfVar from_stack_1.global_72
  loc_CC396A: NewIfNullPr clsservinmu
  loc_CC396D: from_stack_1 = clsservinmu.PeriOrde
  loc_CC3972: FLdI2 var_224
  loc_CC3975: CStrUI1
  loc_CC3977: FStStrNoPop var_1B0
  loc_CC397A: ConcatStr
  loc_CC397B: FStStrNoPop var_1B4
  loc_CC397E: LitStr ","
  loc_CC3981: ConcatStr
  loc_CC3982: FStStrNoPop var_1B8
  loc_CC3985: FLdRfVar var_226
  loc_CC3988: FLdPr Me
  loc_CC398B: MemLdRfVar from_stack_1.global_72
  loc_CC398E: NewIfNullPr clsservinmu
  loc_CC3991: from_stack_1 = clsservinmu.CogaTili
  loc_CC3996: FLdI2 var_226
  loc_CC3999: CStrUI1
  loc_CC399B: FStStrNoPop var_1BC
  loc_CC399E: ConcatStr
  loc_CC399F: FStStrNoPop var_1C0
  loc_CC39A2: LitStr ",1,1,"
  loc_CC39A5: ConcatStr
  loc_CC39A6: FStStrNoPop var_1C4
  loc_CC39A9: FLdRfVar var_256
  loc_CC39AC: FLdPr Me
  loc_CC39AF: MemLdRfVar from_stack_1.global_56
  loc_CC39B2: NewIfNullPr clsctacte
  loc_CC39B5: from_stack_1 = clsctacte.CodiOfic
  loc_CC39BA: FLdI2 var_256
  loc_CC39BD: CStrUI1
  loc_CC39BF: FStStrNoPop var_1C8
  loc_CC39C2: ConcatStr
  loc_CC39C3: FStStrNoPop var_1CC
  loc_CC39C6: LitStr ",'"
  loc_CC39C9: ConcatStr
  loc_CC39CA: FStStrNoPop var_1D4
  loc_CC39CD: FLdRfVar var_1D0
  loc_CC39D0: FLdPr Me
  loc_CC39D3: MemLdRfVar from_stack_1.global_56
  loc_CC39D6: NewIfNullPr clsctacte
  loc_CC39D9: from_stack_1 = clsctacte.CuenCtct
  loc_CC39DE: ILdRf var_1D0
  loc_CC39E1: ConcatStr
  loc_CC39E2: FStStrNoPop var_1D8
  loc_CC39E5: LitStr "',"
  loc_CC39E8: ConcatStr
  loc_CC39E9: FStStrNoPop var_1E0
  loc_CC39EC: LitI4 0
  loc_CC39F1: LitI4 -1
  loc_CC39F6: LitI4 1
  loc_CC39FB: LitStr "."
  loc_CC39FE: LitStr ","
  loc_CC3A01: FLdFPR8 var_220
  loc_CC3A04: CStrR8
  loc_CC3A06: FStStrNoPop var_1DC
  loc_CC3A09: ImpAdCallI2 Replace(, , , , , )
  loc_CC3A0E: FStStrNoPop var_1E4
  loc_CC3A11: ConcatStr
  loc_CC3A12: FStStrNoPop var_1E8
  loc_CC3A15: LitStr ",0,"
  loc_CC3A18: ConcatStr
  loc_CC3A19: FStStrNoPop var_1F0
  loc_CC3A1C: LitI4 0
  loc_CC3A21: LitI4 -1
  loc_CC3A26: LitI4 1
  loc_CC3A2B: LitStr "."
  loc_CC3A2E: LitStr ","
  loc_CC3A31: FLdFPR8 var_254
  loc_CC3A34: CStrR8
  loc_CC3A36: FStStrNoPop var_1EC
  loc_CC3A39: ImpAdCallI2 Replace(, , , , , )
  loc_CC3A3E: FStStrNoPop var_1F4
  loc_CC3A41: ConcatStr
  loc_CC3A42: FStStrNoPop var_1F8
  loc_CC3A45: LitStr ");"
  loc_CC3A48: ConcatStr
  loc_CC3A49: FStStrNoPop var_1FC
  loc_CC3A4C: FLdPr Me
  loc_CC3A4F: MemStStrCopy
  loc_CC3A53: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D4 = ""
  loc_CC3AA6: FLdRfVar var_14E
  loc_CC3AA9: FLdPr Me
  loc_CC3AAC: MemLdRfVar from_stack_1.global_72
  loc_CC3AAF: NewIfNullPr clsservinmu
  loc_CC3AB2: from_stack_1 = clsservinmu.EOF
  loc_CC3AB7: FLdI2 var_14E
  loc_CC3ABA: NotI4
  loc_CC3ABB: BranchF loc_CC3D92
  loc_CC3ABE: FLdI2 var_AE
  loc_CC3AC1: FLdRfVar var_14E
  loc_CC3AC4: FLdPr Me
  loc_CC3AC7: MemLdRfVar from_stack_1.global_72
  loc_CC3ACA: NewIfNullPr clsservinmu
  loc_CC3ACD: from_stack_1 = clsservinmu.CodiSeca
  loc_CC3AD2: FLdI2 var_14E
  loc_CC3AD5: EqI2
  loc_CC3AD6: BranchF loc_CC3AE8
  loc_CC3AD9: ILdRf var_B4
  loc_CC3ADC: LitI4 1
  loc_CC3AE1: AddI4
  loc_CC3AE2: FStR4 var_B4
  loc_CC3AE5: Branch loc_CC3B07
  loc_CC3AE8: LitI4 1
  loc_CC3AED: FStR4 var_B4
  loc_CC3AF0: FLdRfVar var_14E
  loc_CC3AF3: FLdPr Me
  loc_CC3AF6: MemLdRfVar from_stack_1.global_72
  loc_CC3AF9: NewIfNullPr clsservinmu
  loc_CC3AFC: from_stack_1 = clsservinmu.CodiSeca
  loc_CC3B01: FLdI2 var_14E
  loc_CC3B04: FStI2 var_AE
  loc_CC3B07: FLdRfVar var_220
  loc_CC3B0A: FLdPr Me
  loc_CC3B0D: MemLdRfVar from_stack_1.global_72
  loc_CC3B10: NewIfNullPr clsservinmu
  loc_CC3B13: from_stack_1 = clsservinmu.ImpoSein
  loc_CC3B18: LitI4 2
  loc_CC3B1D: FLdFPR8 var_9C
  loc_CC3B20: FLdFPR8 var_220
  loc_CC3B23: AddR8
  loc_CC3B24: CVarR8
  loc_CC3B28: FLdRfVar var_E4
  loc_CC3B2B: ImpAdCallFPR4  = Round(, )
  loc_CC3B30: FLdRfVar var_E4
  loc_CC3B33: CR4Var
  loc_CC3B34: FStFPR8 var_9C
  loc_CC3B37: FFreeVar var_D4 = ""
  loc_CC3B3E: FLdRfVar var_220
  loc_CC3B41: FLdPr Me
  loc_CC3B44: MemLdRfVar from_stack_1.global_72
  loc_CC3B47: NewIfNullPr clsservinmu
  loc_CC3B4A: from_stack_1 = clsservinmu.ImpoSein
  loc_CC3B4F: FLdFPR8 var_AC
  loc_CC3B52: FLdFPR8 var_220
  loc_CC3B55: AddR8
  loc_CC3B56: FStFPR8 var_AC
  loc_CC3B59: FLdRfVar var_220
  loc_CC3B5C: FLdPr Me
  loc_CC3B5F: MemLdRfVar from_stack_1.global_72
  loc_CC3B62: NewIfNullPr clsservinmu
  loc_CC3B65: from_stack_1 = clsservinmu.ImpoSein
  loc_CC3B6A: FLdRfVar var_254
  loc_CC3B6D: FLdPr Me
  loc_CC3B70: MemLdRfVar from_stack_1.global_72
  loc_CC3B73: NewIfNullPr clsservinmu
  loc_CC3B76: from_stack_1 = clsservinmu.ImpoSein
  loc_CC3B7B: FLdPr Me
  loc_CC3B7E: MemLdStr global_156
  loc_CC3B81: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode, DecaBode, TotaBode) "
  loc_CC3B84: ConcatStr
  loc_CC3B85: FStStrNoPop var_140
  loc_CC3B88: LitStr " VALUES ("
  loc_CC3B8B: ConcatStr
  loc_CC3B8C: FStStrNoPop var_144
  loc_CC3B8F: FLdI2 var_86
  loc_CC3B92: CStrUI1
  loc_CC3B94: FStStrNoPop var_148
  loc_CC3B97: ConcatStr
  loc_CC3B98: FStStrNoPop var_154
  loc_CC3B9B: LitStr ","
  loc_CC3B9E: ConcatStr
  loc_CC3B9F: FStStrNoPop var_158
  loc_CC3BA2: ILdRf var_8C
  loc_CC3BA5: CStrI4
  loc_CC3BA7: FStStrNoPop var_15C
  loc_CC3BAA: ConcatStr
  loc_CC3BAB: FStStrNoPop var_160
  loc_CC3BAE: LitStr ","
  loc_CC3BB1: ConcatStr
  loc_CC3BB2: FStStrNoPop var_164
  loc_CC3BB5: FLdRfVar var_14E
  loc_CC3BB8: FLdPr Me
  loc_CC3BBB: MemLdRfVar from_stack_1.global_56
  loc_CC3BBE: NewIfNullPr clsctacte
  loc_CC3BC1: from_stack_1 = clsctacte.PeriCtct
  loc_CC3BC6: FLdI2 var_14E
  loc_CC3BC9: CStrUI1
  loc_CC3BCB: FStStrNoPop var_168
  loc_CC3BCE: ConcatStr
  loc_CC3BCF: FStStrNoPop var_16C
  loc_CC3BD2: LitStr ","
  loc_CC3BD5: ConcatStr
  loc_CC3BD6: FStStrNoPop var_170
  loc_CC3BD9: FLdRfVar var_222
  loc_CC3BDC: FLdPr Me
  loc_CC3BDF: MemLdRfVar from_stack_1.global_56
  loc_CC3BE2: NewIfNullPr clsctacte
  loc_CC3BE5: from_stack_1 = clsctacte.BimeCtct
  loc_CC3BEA: FLdI2 var_222
  loc_CC3BED: CStrUI1
  loc_CC3BEF: FStStrNoPop var_174
  loc_CC3BF2: ConcatStr
  loc_CC3BF3: FStStrNoPop var_17C
  loc_CC3BF6: LitStr ","
  loc_CC3BF9: ConcatStr
  loc_CC3BFA: FStStrNoPop var_180
  loc_CC3BFD: ILdRf var_90
  loc_CC3C00: CStrI4
  loc_CC3C02: FStStrNoPop var_184
  loc_CC3C05: ConcatStr
  loc_CC3C06: FStStrNoPop var_188
  loc_CC3C09: LitStr ","
  loc_CC3C0C: ConcatStr
  loc_CC3C0D: FStStrNoPop var_18C
  loc_CC3C10: FLdI2 var_92
  loc_CC3C13: CStrUI1
  loc_CC3C15: FStStrNoPop var_190
  loc_CC3C18: ConcatStr
  loc_CC3C19: FStStrNoPop var_1A8
  loc_CC3C1C: LitStr ",1,"
  loc_CC3C1F: ConcatStr
  loc_CC3C20: FStStrNoPop var_1AC
  loc_CC3C23: FLdRfVar var_224
  loc_CC3C26: FLdPr Me
  loc_CC3C29: MemLdRfVar from_stack_1.global_72
  loc_CC3C2C: NewIfNullPr clsservinmu
  loc_CC3C2F: from_stack_1 = clsservinmu.PeriOrde
  loc_CC3C34: FLdI2 var_224
  loc_CC3C37: CStrUI1
  loc_CC3C39: FStStrNoPop var_1B0
  loc_CC3C3C: ConcatStr
  loc_CC3C3D: FStStrNoPop var_1B4
  loc_CC3C40: LitStr ","
  loc_CC3C43: ConcatStr
  loc_CC3C44: FStStrNoPop var_1B8
  loc_CC3C47: FLdRfVar var_226
  loc_CC3C4A: FLdPr Me
  loc_CC3C4D: MemLdRfVar from_stack_1.global_72
  loc_CC3C50: NewIfNullPr clsservinmu
  loc_CC3C53: from_stack_1 = clsservinmu.CodiSeca
  loc_CC3C58: FLdI2 var_226
  loc_CC3C5B: CStrUI1
  loc_CC3C5D: FStStrNoPop var_1BC
  loc_CC3C60: ConcatStr
  loc_CC3C61: FStStrNoPop var_1C0
  loc_CC3C64: LitStr ","
  loc_CC3C67: ConcatStr
  loc_CC3C68: FStStrNoPop var_1C4
  loc_CC3C6B: ILdRf var_B4
  loc_CC3C6E: CStrI4
  loc_CC3C70: FStStrNoPop var_1C8
  loc_CC3C73: ConcatStr
  loc_CC3C74: FStStrNoPop var_1CC
  loc_CC3C77: LitStr ",1,"
  loc_CC3C7A: ConcatStr
  loc_CC3C7B: FStStrNoPop var_1D0
  loc_CC3C7E: FLdRfVar var_256
  loc_CC3C81: FLdPr Me
  loc_CC3C84: MemLdRfVar from_stack_1.global_56
  loc_CC3C87: NewIfNullPr clsctacte
  loc_CC3C8A: from_stack_1 = clsctacte.CodiOfic
  loc_CC3C8F: FLdI2 var_256
  loc_CC3C92: CStrUI1
  loc_CC3C94: FStStrNoPop var_1D4
  loc_CC3C97: ConcatStr
  loc_CC3C98: FStStrNoPop var_1D8
  loc_CC3C9B: LitStr ",'"
  loc_CC3C9E: ConcatStr
  loc_CC3C9F: FStStrNoPop var_1E0
  loc_CC3CA2: FLdRfVar var_1DC
  loc_CC3CA5: FLdPr Me
  loc_CC3CA8: MemLdRfVar from_stack_1.global_56
  loc_CC3CAB: NewIfNullPr clsctacte
  loc_CC3CAE: from_stack_1 = clsctacte.CuenCtct
  loc_CC3CB3: ILdRf var_1DC
  loc_CC3CB6: ConcatStr
  loc_CC3CB7: FStStrNoPop var_1E4
  loc_CC3CBA: LitStr "',"
  loc_CC3CBD: ConcatStr
  loc_CC3CBE: FStStrNoPop var_1EC
  loc_CC3CC1: LitI4 0
  loc_CC3CC6: LitI4 -1
  loc_CC3CCB: LitI4 1
  loc_CC3CD0: LitStr "."
  loc_CC3CD3: LitStr ","
  loc_CC3CD6: FLdFPR8 var_220
  loc_CC3CD9: CStrR8
  loc_CC3CDB: FStStrNoPop var_1E8
  loc_CC3CDE: ImpAdCallI2 Replace(, , , , , )
  loc_CC3CE3: FStStrNoPop var_1F0
  loc_CC3CE6: ConcatStr
  loc_CC3CE7: FStStrNoPop var_1F4
  loc_CC3CEA: LitStr ",0,"
  loc_CC3CED: ConcatStr
  loc_CC3CEE: FStStrNoPop var_1FC
  loc_CC3CF1: LitI4 0
  loc_CC3CF6: LitI4 -1
  loc_CC3CFB: LitI4 1
  loc_CC3D00: LitStr "."
  loc_CC3D03: LitStr ","
  loc_CC3D06: FLdFPR8 var_254
  loc_CC3D09: CStrR8
  loc_CC3D0B: FStStrNoPop var_1F8
  loc_CC3D0E: ImpAdCallI2 Replace(, , , , , )
  loc_CC3D13: FStStrNoPop var_200
  loc_CC3D16: ConcatStr
  loc_CC3D17: FStStrNoPop var_204
  loc_CC3D1A: LitStr ");"
  loc_CC3D1D: ConcatStr
  loc_CC3D1E: FStStrNoPop var_208
  loc_CC3D21: FLdPr Me
  loc_CC3D24: MemStStrCopy
  loc_CC3D28: FFreeStr var_1D8 = "": var_1E0 = "": var_1DC = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_208 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC3D81: FLdPr Me
  loc_CC3D84: MemLdRfVar from_stack_1.global_72
  loc_CC3D87: NewIfNullPr clsservinmu
  loc_CC3D8A: Call clsservinmu.MoveSiguiente()
  loc_CC3D8F: Branch loc_CC3AA6
  loc_CC3D92: LitI2_Byte 0
  loc_CC3D94: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC3D99: FStFPR8 var_220
  loc_CC3D9C: LitI2_Byte 0
  loc_CC3D9E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CC3DA3: FStFPR8 var_254
  loc_CC3DA6: LitStr " SELECT CodiInmu, servinmu.CodiSeca, Round(ImpoSeca * UntrPage * CantSein,2) as ImpoSein, servcata.PeriOrde, servcata.PoimSeca, tipoliqu.GastTili, servcata.ImpoSeca, tipoliqu.CogaTili"
  loc_CC3DA9: LitStr " FROM servinmu"
  loc_CC3DAC: ConcatStr
  loc_CC3DAD: FStStrNoPop var_140
  loc_CC3DB0: LitStr " LEFT JOIN servcata ON servcata.PeriOrde = "
  loc_CC3DB3: ConcatStr
  loc_CC3DB4: FStStrNoPop var_144
  loc_CC3DB7: ImpAdLdI2 MemVar_D93036
  loc_CC3DBA: CStrUI1
  loc_CC3DBC: FStStrNoPop var_148
  loc_CC3DBF: ConcatStr
  loc_CC3DC0: FStStrNoPop var_154
  loc_CC3DC3: LitStr " AND servinmu.CodiSeca = servcata.CodiSeca"
  loc_CC3DC6: ConcatStr
  loc_CC3DC7: FStStrNoPop var_158
  loc_CC3DCA: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CC3DCD: ConcatStr
  loc_CC3DCE: FStStrNoPop var_15C
  loc_CC3DD1: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 1 AND tipoliqu.CodiTili = 1"
  loc_CC3DD4: ConcatStr
  loc_CC3DD5: FStStrNoPop var_160
  loc_CC3DD8: LitStr " WHERE servinmu.CodiInmu = "
  loc_CC3DDB: ConcatStr
  loc_CC3DDC: FStStrNoPop var_168
  loc_CC3DDF: FLdRfVar var_164
  loc_CC3DE2: FLdPr Me
  loc_CC3DE5: MemLdRfVar from_stack_1.global_56
  loc_CC3DE8: NewIfNullPr clsctacte
  loc_CC3DEB: from_stack_1 = clsctacte.CuenCtct
  loc_CC3DF0: ILdRf var_164
  loc_CC3DF3: ConcatStr
  loc_CC3DF4: FStStrNoPop var_16C
  loc_CC3DF7: LitStr " AND PoimSeca = 'Porcentaje'"
  loc_CC3DFA: ConcatStr
  loc_CC3DFB: FStStrNoPop var_170
  loc_CC3DFE: LitStr " AND FedeSein <= '"
  loc_CC3E01: ConcatStr
  loc_CC3E02: FStStrNoPop var_174
  loc_CC3E05: LitI4 1
  loc_CC3E0A: LitI4 1
  loc_CC3E0F: LitVarStr var_F8, "yyyy-mm-dd"
  loc_CC3E14: FStVarCopyObj var_E4
  loc_CC3E17: FLdRfVar var_E4
  loc_CC3E1A: FLdFPR8 var_220
  loc_CC3E1D: CVarDate var_D4
  loc_CC3E21: ImpAdCallI2 Format$(, )
  loc_CC3E26: FStStrNoPop var_17C
  loc_CC3E29: ConcatStr
  loc_CC3E2A: FStStrNoPop var_180
  loc_CC3E2D: LitStr "'"
  loc_CC3E30: ConcatStr
  loc_CC3E31: FStStrNoPop var_184
  loc_CC3E34: LitStr " AND (FehaSein > '"
  loc_CC3E37: ConcatStr
  loc_CC3E38: FStStrNoPop var_188
  loc_CC3E3B: LitI4 1
  loc_CC3E40: LitI4 1
  loc_CC3E45: LitVarStr var_128, "yyyy-mm-dd"
  loc_CC3E4A: FStVarCopyObj var_138
  loc_CC3E4D: FLdRfVar var_138
  loc_CC3E50: FLdFPR8 var_254
  loc_CC3E53: CVarDate var_118
  loc_CC3E57: ImpAdCallI2 Format$(, )
  loc_CC3E5C: FStStrNoPop var_18C
  loc_CC3E5F: ConcatStr
  loc_CC3E60: FStStrNoPop var_190
  loc_CC3E63: LitStr "'"
  loc_CC3E66: ConcatStr
  loc_CC3E67: FStStrNoPop var_1A8
  loc_CC3E6A: LitStr " OR FehaSein IS NULL) "
  loc_CC3E6D: ConcatStr
  loc_CC3E6E: FStStrNoPop var_1AC
  loc_CC3E71: LitStr " ORDER BY servinmu.CodiInmu, servinmu.CodiSeca"
  loc_CC3E74: ConcatStr
  loc_CC3E75: FStStrNoPop var_1B0
  loc_CC3E78: FLdPr Me
  loc_CC3E7B: MemLdRfVar from_stack_1.global_72
  loc_CC3E7E: NewIfNullPr clsservinmu
  loc_CC3E81: Call clsservinmu.RedefineRS(from_stack_1v)
  loc_CC3E86: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = ""
  loc_CC3EB3: FFreeVar var_D4 = "": var_E4 = "": var_118 = ""
  loc_CC3EBE: FLdRfVar var_14C
  loc_CC3EC1: FLdPr Me
  loc_CC3EC4: MemLdRfVar from_stack_1.global_72
  loc_CC3EC7: NewIfNullPr clsservinmu
  loc_CC3ECA: from_stack_1 = clsservinmu.RecordCount
  loc_CC3ECF: ILdRf var_14C
  loc_CC3ED2: LitI4 0
  loc_CC3ED7: GtI4
  loc_CC3ED8: BranchF loc_CC4165
  loc_CC3EDB: FLdPr Me
  loc_CC3EDE: MemLdRfVar from_stack_1.global_72
  loc_CC3EE1: NewIfNullPr clsservinmu
  loc_CC3EE4: Call clsservinmu.MoveFirst()
  loc_CC3EE9: FLdRfVar var_14E
  loc_CC3EEC: FLdPr Me
  loc_CC3EEF: MemLdRfVar from_stack_1.global_72
  loc_CC3EF2: NewIfNullPr clsservinmu
  loc_CC3EF5: from_stack_1 = clsservinmu.EOF
  loc_CC3EFA: FLdI2 var_14E
  loc_CC3EFD: NotI4
  loc_CC3EFE: BranchF loc_CC4165
  loc_CC3F01: FLdI2 var_AE
  loc_CC3F04: FLdRfVar var_14E
  loc_CC3F07: FLdPr Me
  loc_CC3F0A: MemLdRfVar from_stack_1.global_72
  loc_CC3F0D: NewIfNullPr clsservinmu
  loc_CC3F10: from_stack_1 = clsservinmu.CodiSeca
  loc_CC3F15: FLdI2 var_14E
  loc_CC3F18: EqI2
  loc_CC3F19: BranchF loc_CC3F2B
  loc_CC3F1C: ILdRf var_B4
  loc_CC3F1F: LitI4 1
  loc_CC3F24: AddI4
  loc_CC3F25: FStR4 var_B4
  loc_CC3F28: Branch loc_CC3F4A
  loc_CC3F2B: LitI4 1
  loc_CC3F30: FStR4 var_B4
  loc_CC3F33: FLdRfVar var_14E
  loc_CC3F36: FLdPr Me
  loc_CC3F39: MemLdRfVar from_stack_1.global_72
  loc_CC3F3C: NewIfNullPr clsservinmu
  loc_CC3F3F: from_stack_1 = clsservinmu.CodiSeca
  loc_CC3F44: FLdI2 var_14E
  loc_CC3F47: FStI2 var_AE
  loc_CC3F4A: FLdRfVar var_220
  loc_CC3F4D: FLdPr Me
  loc_CC3F50: MemLdRfVar from_stack_1.global_72
  loc_CC3F53: NewIfNullPr clsservinmu
  loc_CC3F56: from_stack_1 = clsservinmu.ImpoSeca
  loc_CC3F5B: LitI4 2
  loc_CC3F60: FLdFPR8 var_9C
  loc_CC3F63: FLdFPR8 var_220
  loc_CC3F66: MulR8
  loc_CC3F67: LitI2_Byte &H64
  loc_CC3F69: CR8I2
  loc_CC3F6A: DivR8
  loc_CC3F6B: CVarR8
  loc_CC3F6F: FLdRfVar var_E4
  loc_CC3F72: ImpAdCallFPR4  = Round(, )
  loc_CC3F77: FLdRfVar var_E4
  loc_CC3F7A: CR4Var
  loc_CC3F7B: FStFPR8 var_A4
  loc_CC3F7E: FFreeVar var_D4 = ""
  loc_CC3F85: FLdFPR8 var_AC
  loc_CC3F88: FLdFPR8 var_A4
  loc_CC3F8B: AddR8
  loc_CC3F8C: FStFPR8 var_AC
  loc_CC3F8F: FLdPr Me
  loc_CC3F92: MemLdStr global_156
  loc_CC3F95: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode) VALUES ("
  loc_CC3F98: ConcatStr
  loc_CC3F99: FStStrNoPop var_140
  loc_CC3F9C: FLdI2 var_86
  loc_CC3F9F: CStrUI1
  loc_CC3FA1: FStStrNoPop var_144
  loc_CC3FA4: ConcatStr
  loc_CC3FA5: FStStrNoPop var_148
  loc_CC3FA8: LitStr ","
  loc_CC3FAB: ConcatStr
  loc_CC3FAC: FStStrNoPop var_154
  loc_CC3FAF: ILdRf var_8C
  loc_CC3FB2: CStrI4
  loc_CC3FB4: FStStrNoPop var_158
  loc_CC3FB7: ConcatStr
  loc_CC3FB8: FStStrNoPop var_15C
  loc_CC3FBB: LitStr ","
  loc_CC3FBE: ConcatStr
  loc_CC3FBF: FStStrNoPop var_160
  loc_CC3FC2: FLdRfVar var_14E
  loc_CC3FC5: FLdPr Me
  loc_CC3FC8: MemLdRfVar from_stack_1.global_56
  loc_CC3FCB: NewIfNullPr clsctacte
  loc_CC3FCE: from_stack_1 = clsctacte.PeriCtct
  loc_CC3FD3: FLdI2 var_14E
  loc_CC3FD6: CStrUI1
  loc_CC3FD8: FStStrNoPop var_164
  loc_CC3FDB: ConcatStr
  loc_CC3FDC: FStStrNoPop var_168
  loc_CC3FDF: LitStr ","
  loc_CC3FE2: ConcatStr
  loc_CC3FE3: FStStrNoPop var_16C
  loc_CC3FE6: FLdRfVar var_222
  loc_CC3FE9: FLdPr Me
  loc_CC3FEC: MemLdRfVar from_stack_1.global_56
  loc_CC3FEF: NewIfNullPr clsctacte
  loc_CC3FF2: from_stack_1 = clsctacte.BimeCtct
  loc_CC3FF7: FLdI2 var_222
  loc_CC3FFA: CStrUI1
  loc_CC3FFC: FStStrNoPop var_170
  loc_CC3FFF: ConcatStr
  loc_CC4000: FStStrNoPop var_174
  loc_CC4003: LitStr ","
  loc_CC4006: ConcatStr
  loc_CC4007: FStStrNoPop var_17C
  loc_CC400A: ILdRf var_90
  loc_CC400D: CStrI4
  loc_CC400F: FStStrNoPop var_180
  loc_CC4012: ConcatStr
  loc_CC4013: FStStrNoPop var_184
  loc_CC4016: LitStr ","
  loc_CC4019: ConcatStr
  loc_CC401A: FStStrNoPop var_188
  loc_CC401D: FLdI2 var_92
  loc_CC4020: CStrUI1
  loc_CC4022: FStStrNoPop var_18C
  loc_CC4025: ConcatStr
  loc_CC4026: FStStrNoPop var_190
  loc_CC4029: LitStr ",1,"
  loc_CC402C: ConcatStr
  loc_CC402D: FStStrNoPop var_1A8
  loc_CC4030: FLdRfVar var_224
  loc_CC4033: FLdPr Me
  loc_CC4036: MemLdRfVar from_stack_1.global_72
  loc_CC4039: NewIfNullPr clsservinmu
  loc_CC403C: from_stack_1 = clsservinmu.PeriOrde
  loc_CC4041: FLdI2 var_224
  loc_CC4044: CStrUI1
  loc_CC4046: FStStrNoPop var_1AC
  loc_CC4049: ConcatStr
  loc_CC404A: FStStrNoPop var_1B0
  loc_CC404D: LitStr ","
  loc_CC4050: ConcatStr
  loc_CC4051: FStStrNoPop var_1B4
  loc_CC4054: FLdRfVar var_226
  loc_CC4057: FLdPr Me
  loc_CC405A: MemLdRfVar from_stack_1.global_72
  loc_CC405D: NewIfNullPr clsservinmu
  loc_CC4060: from_stack_1 = clsservinmu.CodiSeca
  loc_CC4065: FLdI2 var_226
  loc_CC4068: CStrUI1
  loc_CC406A: FStStrNoPop var_1B8
  loc_CC406D: ConcatStr
  loc_CC406E: FStStrNoPop var_1BC
  loc_CC4071: LitStr ","
  loc_CC4074: ConcatStr
  loc_CC4075: FStStrNoPop var_1C0
  loc_CC4078: ILdRf var_B4
  loc_CC407B: CStrI4
  loc_CC407D: FStStrNoPop var_1C4
  loc_CC4080: ConcatStr
  loc_CC4081: FStStrNoPop var_1C8
  loc_CC4084: LitStr ",1,"
  loc_CC4087: ConcatStr
  loc_CC4088: FStStrNoPop var_1CC
  loc_CC408B: FLdRfVar var_256
  loc_CC408E: FLdPr Me
  loc_CC4091: MemLdRfVar from_stack_1.global_56
  loc_CC4094: NewIfNullPr clsctacte
  loc_CC4097: from_stack_1 = clsctacte.CodiOfic
  loc_CC409C: FLdI2 var_256
  loc_CC409F: CStrUI1
  loc_CC40A1: FStStrNoPop var_1D0
  loc_CC40A4: ConcatStr
  loc_CC40A5: FStStrNoPop var_1D4
  loc_CC40A8: LitStr ",'"
  loc_CC40AB: ConcatStr
  loc_CC40AC: FStStrNoPop var_1DC
  loc_CC40AF: FLdRfVar var_1D8
  loc_CC40B2: FLdPr Me
  loc_CC40B5: MemLdRfVar from_stack_1.global_56
  loc_CC40B8: NewIfNullPr clsctacte
  loc_CC40BB: from_stack_1 = clsctacte.CuenCtct
  loc_CC40C0: ILdRf var_1D8
  loc_CC40C3: ConcatStr
  loc_CC40C4: FStStrNoPop var_1E0
  loc_CC40C7: LitStr "',"
  loc_CC40CA: ConcatStr
  loc_CC40CB: FStStrNoPop var_1E8
  loc_CC40CE: LitI4 0
  loc_CC40D3: LitI4 -1
  loc_CC40D8: LitI4 1
  loc_CC40DD: LitStr "."
  loc_CC40E0: LitStr ","
  loc_CC40E3: FLdFPR8 var_A4
  loc_CC40E6: CStrR8
  loc_CC40E8: FStStrNoPop var_1E4
  loc_CC40EB: ImpAdCallI2 Replace(, , , , , )
  loc_CC40F0: FStStrNoPop var_1EC
  loc_CC40F3: ConcatStr
  loc_CC40F4: FStStrNoPop var_1F0
  loc_CC40F7: LitStr ");"
  loc_CC40FA: ConcatStr
  loc_CC40FB: FStStrNoPop var_1F4
  loc_CC40FE: FLdPr Me
  loc_CC4101: MemStStrCopy
  loc_CC4105: FFreeStr var_1DC = "": var_1D8 = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC4154: FLdPr Me
  loc_CC4157: MemLdRfVar from_stack_1.global_72
  loc_CC415A: NewIfNullPr clsservinmu
  loc_CC415D: Call clsservinmu.MoveSiguiente()
  loc_CC4162: Branch loc_CC3EE9
  loc_CC4165: ImpAdLdUI1
  loc_CC4169: CI2UI1
  loc_CC416B: LitI2_Byte 2
  loc_CC416D: EqI2
  loc_CC416E: BranchF loc_CC4A50
  loc_CC4171: LitStr "SELECT CodiCome, servcome.CodiSubr, Round(ImpoSubr * UntrPage * CantSeco,2) as ImpoSeco, tipoliqu.GastTili, subrubro.PeriOrde, subrubro.PoimSubr, subrubro.ImpoSubr, tipoliqu.CogaTili"
  loc_CC4174: LitStr " FROM servcome "
  loc_CC4177: ConcatStr
  loc_CC4178: FStStrNoPop var_140
  loc_CC417B: LitStr " LEFT JOIN ramo ON servcome.CodiRamo = ramo.CodiRamo "
  loc_CC417E: ConcatStr
  loc_CC417F: FStStrNoPop var_144
  loc_CC4182: LitStr " LEFT JOIN rubro ON servcome.CodiRamo = rubro.CodiRamo AND servcome.CodiRubr = rubro.CodiRubr "
  loc_CC4185: ConcatStr
  loc_CC4186: FStStrNoPop var_148
  loc_CC4189: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = servcome.CodiRamo "
  loc_CC418C: ConcatStr
  loc_CC418D: FStStrNoPop var_154
  loc_CC4190: LitStr " AND subrubro.CodiRubr = servcome.CodiRubr "
  loc_CC4193: ConcatStr
  loc_CC4194: FStStrNoPop var_158
  loc_CC4197: LitStr " AND subrubro.PeriOrde = "
  loc_CC419A: ConcatStr
  loc_CC419B: FStStrNoPop var_15C
  loc_CC419E: ImpAdLdI2 MemVar_D93036
  loc_CC41A1: CStrUI1
  loc_CC41A3: FStStrNoPop var_160
  loc_CC41A6: ConcatStr
  loc_CC41A7: FStStrNoPop var_164
  loc_CC41AA: LitStr " AND subrubro.CodiSubr = servcome.CodiSubr "
  loc_CC41AD: ConcatStr
  loc_CC41AE: FStStrNoPop var_168
  loc_CC41B1: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CC41B4: ConcatStr
  loc_CC41B5: FStStrNoPop var_16C
  loc_CC41B8: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 2 AND tipoliqu.CodiTili = 1"
  loc_CC41BB: ConcatStr
  loc_CC41BC: FStStrNoPop var_170
  loc_CC41BF: LitStr " WHERE servcome.CodiCome = "
  loc_CC41C2: ConcatStr
  loc_CC41C3: FStStrNoPop var_17C
  loc_CC41C6: FLdRfVar var_174
  loc_CC41C9: FLdPr Me
  loc_CC41CC: MemLdRfVar from_stack_1.global_56
  loc_CC41CF: NewIfNullPr clsctacte
  loc_CC41D2: from_stack_1 = clsctacte.CuenCtct
  loc_CC41D7: ILdRf var_174
  loc_CC41DA: ConcatStr
  loc_CC41DB: FStStrNoPop var_180
  loc_CC41DE: LitStr " AND PoimSubr = 'Importe'"
  loc_CC41E1: ConcatStr
  loc_CC41E2: FStStrNoPop var_184
  loc_CC41E5: LitStr " ORDER BY servcome.CodiCome,  servcome.CodiSubr"
  loc_CC41E8: ConcatStr
  loc_CC41E9: FStStrNoPop var_188
  loc_CC41EC: FLdPr Me
  loc_CC41EF: MemLdRfVar from_stack_1.global_76
  loc_CC41F2: NewIfNullPr clsservcome
  loc_CC41F5: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CC41FA: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_174 = "": var_180 = "": var_184 = ""
  loc_CC421D: FLdRfVar var_14C
  loc_CC4220: FLdPr Me
  loc_CC4223: MemLdRfVar from_stack_1.global_76
  loc_CC4226: NewIfNullPr clsservcome
  loc_CC4229: from_stack_1 = clsservcome.RecordCount
  loc_CC422E: ILdRf var_14C
  loc_CC4231: LitI4 0
  loc_CC4236: GtI4
  loc_CC4237: BranchF loc_CC46F7
  loc_CC423A: FLdPr Me
  loc_CC423D: MemLdRfVar from_stack_1.global_76
  loc_CC4240: NewIfNullPr clsservcome
  loc_CC4243: Call clsservcome.MoveFirst()
  loc_CC4248: FLdRfVar var_220
  loc_CC424B: FLdPr Me
  loc_CC424E: MemLdRfVar from_stack_1.global_76
  loc_CC4251: NewIfNullPr clsservcome
  loc_CC4254: from_stack_1 = clsservcome.GastTili
  loc_CC4259: LitI4 2
  loc_CC425E: FLdFPR8 var_9C
  loc_CC4261: FLdFPR8 var_220
  loc_CC4264: AddR8
  loc_CC4265: CVarR8
  loc_CC4269: FLdRfVar var_E4
  loc_CC426C: ImpAdCallFPR4  = Round(, )
  loc_CC4271: FLdRfVar var_E4
  loc_CC4274: CR4Var
  loc_CC4275: FStFPR8 var_9C
  loc_CC4278: FFreeVar var_D4 = ""
  loc_CC427F: FLdRfVar var_220
  loc_CC4282: FLdPr Me
  loc_CC4285: MemLdRfVar from_stack_1.global_76
  loc_CC4288: NewIfNullPr clsservcome
  loc_CC428B: from_stack_1 = clsservcome.GastTili
  loc_CC4290: FLdFPR8 var_AC
  loc_CC4293: FLdFPR8 var_220
  loc_CC4296: AddR8
  loc_CC4297: FStFPR8 var_AC
  loc_CC429A: FLdRfVar var_220
  loc_CC429D: FLdPr Me
  loc_CC42A0: MemLdRfVar from_stack_1.global_76
  loc_CC42A3: NewIfNullPr clsservcome
  loc_CC42A6: from_stack_1 = clsservcome.GastTili
  loc_CC42AB: FLdPr Me
  loc_CC42AE: MemLdStr global_156
  loc_CC42B1: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode) VALUES ("
  loc_CC42B4: ConcatStr
  loc_CC42B5: FStStrNoPop var_140
  loc_CC42B8: FLdI2 var_86
  loc_CC42BB: CStrUI1
  loc_CC42BD: FStStrNoPop var_144
  loc_CC42C0: ConcatStr
  loc_CC42C1: FStStrNoPop var_148
  loc_CC42C4: LitStr ","
  loc_CC42C7: ConcatStr
  loc_CC42C8: FStStrNoPop var_154
  loc_CC42CB: ILdRf var_8C
  loc_CC42CE: CStrI4
  loc_CC42D0: FStStrNoPop var_158
  loc_CC42D3: ConcatStr
  loc_CC42D4: FStStrNoPop var_15C
  loc_CC42D7: LitStr ","
  loc_CC42DA: ConcatStr
  loc_CC42DB: FStStrNoPop var_160
  loc_CC42DE: FLdRfVar var_14E
  loc_CC42E1: FLdPr Me
  loc_CC42E4: MemLdRfVar from_stack_1.global_56
  loc_CC42E7: NewIfNullPr clsctacte
  loc_CC42EA: from_stack_1 = clsctacte.PeriCtct
  loc_CC42EF: FLdI2 var_14E
  loc_CC42F2: CStrUI1
  loc_CC42F4: FStStrNoPop var_164
  loc_CC42F7: ConcatStr
  loc_CC42F8: FStStrNoPop var_168
  loc_CC42FB: LitStr ","
  loc_CC42FE: ConcatStr
  loc_CC42FF: FStStrNoPop var_16C
  loc_CC4302: FLdRfVar var_222
  loc_CC4305: FLdPr Me
  loc_CC4308: MemLdRfVar from_stack_1.global_56
  loc_CC430B: NewIfNullPr clsctacte
  loc_CC430E: from_stack_1 = clsctacte.BimeCtct
  loc_CC4313: FLdI2 var_222
  loc_CC4316: CStrUI1
  loc_CC4318: FStStrNoPop var_170
  loc_CC431B: ConcatStr
  loc_CC431C: FStStrNoPop var_174
  loc_CC431F: LitStr ","
  loc_CC4322: ConcatStr
  loc_CC4323: FStStrNoPop var_17C
  loc_CC4326: ILdRf var_90
  loc_CC4329: CStrI4
  loc_CC432B: FStStrNoPop var_180
  loc_CC432E: ConcatStr
  loc_CC432F: FStStrNoPop var_184
  loc_CC4332: LitStr ","
  loc_CC4335: ConcatStr
  loc_CC4336: FStStrNoPop var_188
  loc_CC4339: FLdI2 var_92
  loc_CC433C: CStrUI1
  loc_CC433E: FStStrNoPop var_18C
  loc_CC4341: ConcatStr
  loc_CC4342: FStStrNoPop var_190
  loc_CC4345: LitStr ",1,"
  loc_CC4348: ConcatStr
  loc_CC4349: FStStrNoPop var_1A8
  loc_CC434C: FLdRfVar var_224
  loc_CC434F: FLdPr Me
  loc_CC4352: MemLdRfVar from_stack_1.global_76
  loc_CC4355: NewIfNullPr clsservcome
  loc_CC4358: from_stack_1 = clsservcome.PeriOrde
  loc_CC435D: FLdI2 var_224
  loc_CC4360: CStrUI1
  loc_CC4362: FStStrNoPop var_1AC
  loc_CC4365: ConcatStr
  loc_CC4366: FStStrNoPop var_1B0
  loc_CC4369: LitStr ","
  loc_CC436C: ConcatStr
  loc_CC436D: FStStrNoPop var_1B4
  loc_CC4370: FLdRfVar var_14C
  loc_CC4373: FLdPr Me
  loc_CC4376: MemLdRfVar from_stack_1.global_76
  loc_CC4379: NewIfNullPr clsservcome
  loc_CC437C: from_stack_1 = clsservcome.CogaTili
  loc_CC4381: ILdRf var_14C
  loc_CC4384: CStrI4
  loc_CC4386: FStStrNoPop var_1B8
  loc_CC4389: ConcatStr
  loc_CC438A: FStStrNoPop var_1BC
  loc_CC438D: LitStr ",1,1,"
  loc_CC4390: ConcatStr
  loc_CC4391: FStStrNoPop var_1C0
  loc_CC4394: FLdRfVar var_226
  loc_CC4397: FLdPr Me
  loc_CC439A: MemLdRfVar from_stack_1.global_56
  loc_CC439D: NewIfNullPr clsctacte
  loc_CC43A0: from_stack_1 = clsctacte.CodiOfic
  loc_CC43A5: FLdI2 var_226
  loc_CC43A8: CStrUI1
  loc_CC43AA: FStStrNoPop var_1C4
  loc_CC43AD: ConcatStr
  loc_CC43AE: FStStrNoPop var_1C8
  loc_CC43B1: LitStr ",'"
  loc_CC43B4: ConcatStr
  loc_CC43B5: FStStrNoPop var_1D0
  loc_CC43B8: FLdRfVar var_1CC
  loc_CC43BB: FLdPr Me
  loc_CC43BE: MemLdRfVar from_stack_1.global_56
  loc_CC43C1: NewIfNullPr clsctacte
  loc_CC43C4: from_stack_1 = clsctacte.CuenCtct
  loc_CC43C9: ILdRf var_1CC
  loc_CC43CC: ConcatStr
  loc_CC43CD: FStStrNoPop var_1D4
  loc_CC43D0: LitStr "',"
  loc_CC43D3: ConcatStr
  loc_CC43D4: FStStrNoPop var_1DC
  loc_CC43D7: LitI4 0
  loc_CC43DC: LitI4 -1
  loc_CC43E1: LitI4 1
  loc_CC43E6: LitStr "."
  loc_CC43E9: LitStr ","
  loc_CC43EC: FLdFPR8 var_220
  loc_CC43EF: CStrR8
  loc_CC43F1: FStStrNoPop var_1D8
  loc_CC43F4: ImpAdCallI2 Replace(, , , , , )
  loc_CC43F9: FStStrNoPop var_1E0
  loc_CC43FC: ConcatStr
  loc_CC43FD: FStStrNoPop var_1E4
  loc_CC4400: LitStr ");"
  loc_CC4403: ConcatStr
  loc_CC4404: FStStrNoPop var_1E8
  loc_CC4407: FLdPr Me
  loc_CC440A: MemStStrCopy
  loc_CC440E: FFreeStr var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1D0 = "": var_1CC = ""
  loc_CC4457: FLdRfVar var_14E
  loc_CC445A: FLdPr Me
  loc_CC445D: MemLdRfVar from_stack_1.global_76
  loc_CC4460: NewIfNullPr clsservcome
  loc_CC4463: from_stack_1 = clsservcome.EOF
  loc_CC4468: FLdI2 var_14E
  loc_CC446B: NotI4
  loc_CC446C: BranchF loc_CC46F7
  loc_CC446F: FLdRfVar var_140
  loc_CC4472: FLdPr Me
  loc_CC4475: MemLdRfVar from_stack_1.global_76
  loc_CC4478: NewIfNullPr clsservcome
  loc_CC447B: from_stack_1 = clsservcome.CodiSubr
  loc_CC4480: FLdI2 var_AE
  loc_CC4483: CR8I2
  loc_CC4484: ILdRf var_140
  loc_CC4487: CR8Str
  loc_CC4489: EqR4
  loc_CC448A: FFree1Str var_140
  loc_CC448D: BranchF loc_CC449F
  loc_CC4490: ILdRf var_B4
  loc_CC4493: LitI4 1
  loc_CC4498: AddI4
  loc_CC4499: FStR4 var_B4
  loc_CC449C: Branch loc_CC44C3
  loc_CC449F: LitI4 1
  loc_CC44A4: FStR4 var_B4
  loc_CC44A7: FLdRfVar var_140
  loc_CC44AA: FLdPr Me
  loc_CC44AD: MemLdRfVar from_stack_1.global_76
  loc_CC44B0: NewIfNullPr clsservcome
  loc_CC44B3: from_stack_1 = clsservcome.CodiSubr
  loc_CC44B8: ILdRf var_140
  loc_CC44BB: CI2Str
  loc_CC44BD: FStI2 var_AE
  loc_CC44C0: FFree1Str var_140
  loc_CC44C3: FLdRfVar var_220
  loc_CC44C6: FLdPr Me
  loc_CC44C9: MemLdRfVar from_stack_1.global_76
  loc_CC44CC: NewIfNullPr clsservcome
  loc_CC44CF: from_stack_1 = clsservcome.ImpoSeco
  loc_CC44D4: LitI4 2
  loc_CC44D9: FLdFPR8 var_9C
  loc_CC44DC: FLdFPR8 var_220
  loc_CC44DF: AddR8
  loc_CC44E0: CVarR8
  loc_CC44E4: FLdRfVar var_E4
  loc_CC44E7: ImpAdCallFPR4  = Round(, )
  loc_CC44EC: FLdRfVar var_E4
  loc_CC44EF: CR4Var
  loc_CC44F0: FStFPR8 var_9C
  loc_CC44F3: FFreeVar var_D4 = ""
  loc_CC44FA: FLdRfVar var_220
  loc_CC44FD: FLdPr Me
  loc_CC4500: MemLdRfVar from_stack_1.global_76
  loc_CC4503: NewIfNullPr clsservcome
  loc_CC4506: from_stack_1 = clsservcome.ImpoSeco
  loc_CC450B: FLdFPR8 var_AC
  loc_CC450E: FLdFPR8 var_220
  loc_CC4511: AddR8
  loc_CC4512: FStFPR8 var_AC
  loc_CC4515: FLdRfVar var_220
  loc_CC4518: FLdPr Me
  loc_CC451B: MemLdRfVar from_stack_1.global_76
  loc_CC451E: NewIfNullPr clsservcome
  loc_CC4521: from_stack_1 = clsservcome.ImpoSeco
  loc_CC4526: FLdPr Me
  loc_CC4529: MemLdStr global_156
  loc_CC452C: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode) VALUES ("
  loc_CC452F: ConcatStr
  loc_CC4530: FStStrNoPop var_140
  loc_CC4533: FLdI2 var_86
  loc_CC4536: CStrUI1
  loc_CC4538: FStStrNoPop var_144
  loc_CC453B: ConcatStr
  loc_CC453C: FStStrNoPop var_148
  loc_CC453F: LitStr ","
  loc_CC4542: ConcatStr
  loc_CC4543: FStStrNoPop var_154
  loc_CC4546: ILdRf var_8C
  loc_CC4549: CStrI4
  loc_CC454B: FStStrNoPop var_158
  loc_CC454E: ConcatStr
  loc_CC454F: FStStrNoPop var_15C
  loc_CC4552: LitStr ","
  loc_CC4555: ConcatStr
  loc_CC4556: FStStrNoPop var_160
  loc_CC4559: FLdRfVar var_14E
  loc_CC455C: FLdPr Me
  loc_CC455F: MemLdRfVar from_stack_1.global_56
  loc_CC4562: NewIfNullPr clsctacte
  loc_CC4565: from_stack_1 = clsctacte.PeriCtct
  loc_CC456A: FLdI2 var_14E
  loc_CC456D: CStrUI1
  loc_CC456F: FStStrNoPop var_164
  loc_CC4572: ConcatStr
  loc_CC4573: FStStrNoPop var_168
  loc_CC4576: LitStr ","
  loc_CC4579: ConcatStr
  loc_CC457A: FStStrNoPop var_16C
  loc_CC457D: FLdRfVar var_222
  loc_CC4580: FLdPr Me
  loc_CC4583: MemLdRfVar from_stack_1.global_56
  loc_CC4586: NewIfNullPr clsctacte
  loc_CC4589: from_stack_1 = clsctacte.BimeCtct
  loc_CC458E: FLdI2 var_222
  loc_CC4591: CStrUI1
  loc_CC4593: FStStrNoPop var_170
  loc_CC4596: ConcatStr
  loc_CC4597: FStStrNoPop var_174
  loc_CC459A: LitStr ","
  loc_CC459D: ConcatStr
  loc_CC459E: FStStrNoPop var_17C
  loc_CC45A1: ILdRf var_90
  loc_CC45A4: CStrI4
  loc_CC45A6: FStStrNoPop var_180
  loc_CC45A9: ConcatStr
  loc_CC45AA: FStStrNoPop var_184
  loc_CC45AD: LitStr ","
  loc_CC45B0: ConcatStr
  loc_CC45B1: FStStrNoPop var_188
  loc_CC45B4: FLdI2 var_92
  loc_CC45B7: CStrUI1
  loc_CC45B9: FStStrNoPop var_18C
  loc_CC45BC: ConcatStr
  loc_CC45BD: FStStrNoPop var_190
  loc_CC45C0: LitStr ",1,"
  loc_CC45C3: ConcatStr
  loc_CC45C4: FStStrNoPop var_1A8
  loc_CC45C7: FLdRfVar var_224
  loc_CC45CA: FLdPr Me
  loc_CC45CD: MemLdRfVar from_stack_1.global_76
  loc_CC45D0: NewIfNullPr clsservcome
  loc_CC45D3: from_stack_1 = clsservcome.PeriOrde
  loc_CC45D8: FLdI2 var_224
  loc_CC45DB: CStrUI1
  loc_CC45DD: FStStrNoPop var_1AC
  loc_CC45E0: ConcatStr
  loc_CC45E1: FStStrNoPop var_1B0
  loc_CC45E4: LitStr ","
  loc_CC45E7: ConcatStr
  loc_CC45E8: FStStrNoPop var_1B8
  loc_CC45EB: FLdRfVar var_1B4
  loc_CC45EE: FLdPr Me
  loc_CC45F1: MemLdRfVar from_stack_1.global_76
  loc_CC45F4: NewIfNullPr clsservcome
  loc_CC45F7: from_stack_1 = clsservcome.CodiSubr
  loc_CC45FC: ILdRf var_1B4
  loc_CC45FF: ConcatStr
  loc_CC4600: FStStrNoPop var_1BC
  loc_CC4603: LitStr ","
  loc_CC4606: ConcatStr
  loc_CC4607: FStStrNoPop var_1C0
  loc_CC460A: ILdRf var_B4
  loc_CC460D: CStrI4
  loc_CC460F: FStStrNoPop var_1C4
  loc_CC4612: ConcatStr
  loc_CC4613: FStStrNoPop var_1C8
  loc_CC4616: LitStr ",1,"
  loc_CC4619: ConcatStr
  loc_CC461A: FStStrNoPop var_1CC
  loc_CC461D: FLdRfVar var_226
  loc_CC4620: FLdPr Me
  loc_CC4623: MemLdRfVar from_stack_1.global_56
  loc_CC4626: NewIfNullPr clsctacte
  loc_CC4629: from_stack_1 = clsctacte.CodiOfic
  loc_CC462E: FLdI2 var_226
  loc_CC4631: CStrUI1
  loc_CC4633: FStStrNoPop var_1D0
  loc_CC4636: ConcatStr
  loc_CC4637: FStStrNoPop var_1D4
  loc_CC463A: LitStr ",'"
  loc_CC463D: ConcatStr
  loc_CC463E: FStStrNoPop var_1DC
  loc_CC4641: FLdRfVar var_1D8
  loc_CC4644: FLdPr Me
  loc_CC4647: MemLdRfVar from_stack_1.global_56
  loc_CC464A: NewIfNullPr clsctacte
  loc_CC464D: from_stack_1 = clsctacte.CuenCtct
  loc_CC4652: ILdRf var_1D8
  loc_CC4655: ConcatStr
  loc_CC4656: FStStrNoPop var_1E0
  loc_CC4659: LitStr "',"
  loc_CC465C: ConcatStr
  loc_CC465D: FStStrNoPop var_1E8
  loc_CC4660: LitI4 0
  loc_CC4665: LitI4 -1
  loc_CC466A: LitI4 1
  loc_CC466F: LitStr "."
  loc_CC4672: LitStr ","
  loc_CC4675: FLdFPR8 var_220
  loc_CC4678: CStrR8
  loc_CC467A: FStStrNoPop var_1E4
  loc_CC467D: ImpAdCallI2 Replace(, , , , , )
  loc_CC4682: FStStrNoPop var_1EC
  loc_CC4685: ConcatStr
  loc_CC4686: FStStrNoPop var_1F0
  loc_CC4689: LitStr ");"
  loc_CC468C: ConcatStr
  loc_CC468D: FStStrNoPop var_1F4
  loc_CC4690: FLdPr Me
  loc_CC4693: MemStStrCopy
  loc_CC4697: FFreeStr var_1DC = "": var_1D8 = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B8 = "": var_1B4 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC46E6: FLdPr Me
  loc_CC46E9: MemLdRfVar from_stack_1.global_76
  loc_CC46EC: NewIfNullPr clsservcome
  loc_CC46EF: Call clsservcome.MoveSiguiente()
  loc_CC46F4: Branch loc_CC4457
  loc_CC46F7: LitStr "SELECT CodiCome, servcome.CodiSubr, Round(ImpoSubr * UntrPage * CantSeco,2) as ImpoSeco, tipoliqu.GastTili, subrubro.PeriOrde, subrubro.PoimSubr, subrubro.ImpoSubr, tipoliqu.CogaTili"
  loc_CC46FA: LitStr " FROM servcome "
  loc_CC46FD: ConcatStr
  loc_CC46FE: FStStrNoPop var_140
  loc_CC4701: LitStr " LEFT JOIN ramo ON servcome.CodiRamo = ramo.CodiRamo "
  loc_CC4704: ConcatStr
  loc_CC4705: FStStrNoPop var_144
  loc_CC4708: LitStr " LEFT JOIN rubro ON servcome.CodiRamo = rubro.CodiRamo AND servcome.CodiRubr = rubro.CodiRubr "
  loc_CC470B: ConcatStr
  loc_CC470C: FStStrNoPop var_148
  loc_CC470F: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = servcome.CodiRamo "
  loc_CC4712: ConcatStr
  loc_CC4713: FStStrNoPop var_154
  loc_CC4716: LitStr " AND subrubro.CodiRubr = servcome.CodiRubr "
  loc_CC4719: ConcatStr
  loc_CC471A: FStStrNoPop var_158
  loc_CC471D: LitStr " AND subrubro.PeriOrde = "
  loc_CC4720: ConcatStr
  loc_CC4721: FStStrNoPop var_15C
  loc_CC4724: ImpAdLdI2 MemVar_D93036
  loc_CC4727: CStrUI1
  loc_CC4729: FStStrNoPop var_160
  loc_CC472C: ConcatStr
  loc_CC472D: FStStrNoPop var_164
  loc_CC4730: LitStr " AND subrubro.CodiSubr = servcome.CodiSubr "
  loc_CC4733: ConcatStr
  loc_CC4734: FStStrNoPop var_168
  loc_CC4737: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CC473A: ConcatStr
  loc_CC473B: FStStrNoPop var_16C
  loc_CC473E: LitStr " LEFT JOIN tipoliqu ON tipoliqu.CodiOfic = 2 AND tipoliqu.CodiTili = 1"
  loc_CC4741: ConcatStr
  loc_CC4742: FStStrNoPop var_170
  loc_CC4745: LitStr " WHERE servcome.CodiCome = "
  loc_CC4748: ConcatStr
  loc_CC4749: FStStrNoPop var_17C
  loc_CC474C: FLdRfVar var_174
  loc_CC474F: FLdPr Me
  loc_CC4752: MemLdRfVar from_stack_1.global_56
  loc_CC4755: NewIfNullPr clsctacte
  loc_CC4758: from_stack_1 = clsctacte.CuenCtct
  loc_CC475D: ILdRf var_174
  loc_CC4760: ConcatStr
  loc_CC4761: FStStrNoPop var_180
  loc_CC4764: LitStr " AND PoimSubr = 'Porcentaje'"
  loc_CC4767: ConcatStr
  loc_CC4768: FStStrNoPop var_184
  loc_CC476B: LitStr " ORDER BY servcome.CodiCome,  servcome.CodiSubr"
  loc_CC476E: ConcatStr
  loc_CC476F: FStStrNoPop var_188
  loc_CC4772: FLdPr Me
  loc_CC4775: MemLdRfVar from_stack_1.global_76
  loc_CC4778: NewIfNullPr clsservcome
  loc_CC477B: Call clsservcome.RedefineRS(from_stack_1v)
  loc_CC4780: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_174 = "": var_180 = "": var_184 = ""
  loc_CC47A3: FLdRfVar var_14C
  loc_CC47A6: FLdPr Me
  loc_CC47A9: MemLdRfVar from_stack_1.global_76
  loc_CC47AC: NewIfNullPr clsservcome
  loc_CC47AF: from_stack_1 = clsservcome.RecordCount
  loc_CC47B4: ILdRf var_14C
  loc_CC47B7: LitI4 0
  loc_CC47BC: GtI4
  loc_CC47BD: BranchF loc_CC4A50
  loc_CC47C0: FLdPr Me
  loc_CC47C3: MemLdRfVar from_stack_1.global_76
  loc_CC47C6: NewIfNullPr clsservcome
  loc_CC47C9: Call clsservcome.MoveFirst()
  loc_CC47CE: FLdRfVar var_14E
  loc_CC47D1: FLdPr Me
  loc_CC47D4: MemLdRfVar from_stack_1.global_76
  loc_CC47D7: NewIfNullPr clsservcome
  loc_CC47DA: from_stack_1 = clsservcome.EOF
  loc_CC47DF: FLdI2 var_14E
  loc_CC47E2: NotI4
  loc_CC47E3: BranchF loc_CC4A50
  loc_CC47E6: FLdRfVar var_140
  loc_CC47E9: FLdPr Me
  loc_CC47EC: MemLdRfVar from_stack_1.global_76
  loc_CC47EF: NewIfNullPr clsservcome
  loc_CC47F2: from_stack_1 = clsservcome.CodiSubr
  loc_CC47F7: FLdI2 var_AE
  loc_CC47FA: CR8I2
  loc_CC47FB: ILdRf var_140
  loc_CC47FE: CR8Str
  loc_CC4800: EqR4
  loc_CC4801: FFree1Str var_140
  loc_CC4804: BranchF loc_CC4816
  loc_CC4807: ILdRf var_B4
  loc_CC480A: LitI4 1
  loc_CC480F: AddI4
  loc_CC4810: FStR4 var_B4
  loc_CC4813: Branch loc_CC483A
  loc_CC4816: LitI4 1
  loc_CC481B: FStR4 var_B4
  loc_CC481E: FLdRfVar var_140
  loc_CC4821: FLdPr Me
  loc_CC4824: MemLdRfVar from_stack_1.global_76
  loc_CC4827: NewIfNullPr clsservcome
  loc_CC482A: from_stack_1 = clsservcome.CodiSubr
  loc_CC482F: ILdRf var_140
  loc_CC4832: CI2Str
  loc_CC4834: FStI2 var_AE
  loc_CC4837: FFree1Str var_140
  loc_CC483A: FLdRfVar var_220
  loc_CC483D: FLdPr Me
  loc_CC4840: MemLdRfVar from_stack_1.global_76
  loc_CC4843: NewIfNullPr clsservcome
  loc_CC4846: from_stack_1 = clsservcome.ImpoSubr
  loc_CC484B: LitI4 2
  loc_CC4850: FLdFPR8 var_9C
  loc_CC4853: FLdFPR8 var_220
  loc_CC4856: MulR8
  loc_CC4857: LitI2_Byte &H64
  loc_CC4859: CR8I2
  loc_CC485A: DivR8
  loc_CC485B: CVarR8
  loc_CC485F: FLdRfVar var_E4
  loc_CC4862: ImpAdCallFPR4  = Round(, )
  loc_CC4867: FLdRfVar var_E4
  loc_CC486A: CR4Var
  loc_CC486B: FStFPR8 var_A4
  loc_CC486E: FFreeVar var_D4 = ""
  loc_CC4875: FLdFPR8 var_AC
  loc_CC4878: FLdFPR8 var_A4
  loc_CC487B: AddR8
  loc_CC487C: FStFPR8 var_AC
  loc_CC487F: FLdPr Me
  loc_CC4882: MemLdStr global_156
  loc_CC4885: LitStr " INSERT INTO boledeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoBode) VALUES ("
  loc_CC4888: ConcatStr
  loc_CC4889: FStStrNoPop var_140
  loc_CC488C: FLdI2 var_86
  loc_CC488F: CStrUI1
  loc_CC4891: FStStrNoPop var_144
  loc_CC4894: ConcatStr
  loc_CC4895: FStStrNoPop var_148
  loc_CC4898: LitStr ","
  loc_CC489B: ConcatStr
  loc_CC489C: FStStrNoPop var_154
  loc_CC489F: ILdRf var_8C
  loc_CC48A2: CStrI4
  loc_CC48A4: FStStrNoPop var_158
  loc_CC48A7: ConcatStr
  loc_CC48A8: FStStrNoPop var_15C
  loc_CC48AB: LitStr ","
  loc_CC48AE: ConcatStr
  loc_CC48AF: FStStrNoPop var_160
  loc_CC48B2: FLdRfVar var_14E
  loc_CC48B5: FLdPr Me
  loc_CC48B8: MemLdRfVar from_stack_1.global_56
  loc_CC48BB: NewIfNullPr clsctacte
  loc_CC48BE: from_stack_1 = clsctacte.PeriCtct
  loc_CC48C3: FLdI2 var_14E
  loc_CC48C6: CStrUI1
  loc_CC48C8: FStStrNoPop var_164
  loc_CC48CB: ConcatStr
  loc_CC48CC: FStStrNoPop var_168
  loc_CC48CF: LitStr ","
  loc_CC48D2: ConcatStr
  loc_CC48D3: FStStrNoPop var_16C
  loc_CC48D6: FLdRfVar var_222
  loc_CC48D9: FLdPr Me
  loc_CC48DC: MemLdRfVar from_stack_1.global_56
  loc_CC48DF: NewIfNullPr clsctacte
  loc_CC48E2: from_stack_1 = clsctacte.BimeCtct
  loc_CC48E7: FLdI2 var_222
  loc_CC48EA: CStrUI1
  loc_CC48EC: FStStrNoPop var_170
  loc_CC48EF: ConcatStr
  loc_CC48F0: FStStrNoPop var_174
  loc_CC48F3: LitStr ","
  loc_CC48F6: ConcatStr
  loc_CC48F7: FStStrNoPop var_17C
  loc_CC48FA: ILdRf var_90
  loc_CC48FD: CStrI4
  loc_CC48FF: FStStrNoPop var_180
  loc_CC4902: ConcatStr
  loc_CC4903: FStStrNoPop var_184
  loc_CC4906: LitStr ","
  loc_CC4909: ConcatStr
  loc_CC490A: FStStrNoPop var_188
  loc_CC490D: FLdI2 var_92
  loc_CC4910: CStrUI1
  loc_CC4912: FStStrNoPop var_18C
  loc_CC4915: ConcatStr
  loc_CC4916: FStStrNoPop var_190
  loc_CC4919: LitStr ",1,"
  loc_CC491C: ConcatStr
  loc_CC491D: FStStrNoPop var_1A8
  loc_CC4920: FLdRfVar var_224
  loc_CC4923: FLdPr Me
  loc_CC4926: MemLdRfVar from_stack_1.global_76
  loc_CC4929: NewIfNullPr clsservcome
  loc_CC492C: from_stack_1 = clsservcome.PeriOrde
  loc_CC4931: FLdI2 var_224
  loc_CC4934: CStrUI1
  loc_CC4936: FStStrNoPop var_1AC
  loc_CC4939: ConcatStr
  loc_CC493A: FStStrNoPop var_1B0
  loc_CC493D: LitStr ","
  loc_CC4940: ConcatStr
  loc_CC4941: FStStrNoPop var_1B8
  loc_CC4944: FLdRfVar var_1B4
  loc_CC4947: FLdPr Me
  loc_CC494A: MemLdRfVar from_stack_1.global_76
  loc_CC494D: NewIfNullPr clsservcome
  loc_CC4950: from_stack_1 = clsservcome.CodiSubr
  loc_CC4955: ILdRf var_1B4
  loc_CC4958: ConcatStr
  loc_CC4959: FStStrNoPop var_1BC
  loc_CC495C: LitStr ","
  loc_CC495F: ConcatStr
  loc_CC4960: FStStrNoPop var_1C0
  loc_CC4963: ILdRf var_B4
  loc_CC4966: CStrI4
  loc_CC4968: FStStrNoPop var_1C4
  loc_CC496B: ConcatStr
  loc_CC496C: FStStrNoPop var_1C8
  loc_CC496F: LitStr ",1,"
  loc_CC4972: ConcatStr
  loc_CC4973: FStStrNoPop var_1CC
  loc_CC4976: FLdRfVar var_226
  loc_CC4979: FLdPr Me
  loc_CC497C: MemLdRfVar from_stack_1.global_56
  loc_CC497F: NewIfNullPr clsctacte
  loc_CC4982: from_stack_1 = clsctacte.CodiOfic
  loc_CC4987: FLdI2 var_226
  loc_CC498A: CStrUI1
  loc_CC498C: FStStrNoPop var_1D0
  loc_CC498F: ConcatStr
  loc_CC4990: FStStrNoPop var_1D4
  loc_CC4993: LitStr ",'"
  loc_CC4996: ConcatStr
  loc_CC4997: FStStrNoPop var_1DC
  loc_CC499A: FLdRfVar var_1D8
  loc_CC499D: FLdPr Me
  loc_CC49A0: MemLdRfVar from_stack_1.global_56
  loc_CC49A3: NewIfNullPr clsctacte
  loc_CC49A6: from_stack_1 = clsctacte.CuenCtct
  loc_CC49AB: ILdRf var_1D8
  loc_CC49AE: ConcatStr
  loc_CC49AF: FStStrNoPop var_1E0
  loc_CC49B2: LitStr "',"
  loc_CC49B5: ConcatStr
  loc_CC49B6: FStStrNoPop var_1E8
  loc_CC49B9: LitI4 0
  loc_CC49BE: LitI4 -1
  loc_CC49C3: LitI4 1
  loc_CC49C8: LitStr "."
  loc_CC49CB: LitStr ","
  loc_CC49CE: FLdFPR8 var_A4
  loc_CC49D1: CStrR8
  loc_CC49D3: FStStrNoPop var_1E4
  loc_CC49D6: ImpAdCallI2 Replace(, , , , , )
  loc_CC49DB: FStStrNoPop var_1EC
  loc_CC49DE: ConcatStr
  loc_CC49DF: FStStrNoPop var_1F0
  loc_CC49E2: LitStr ");"
  loc_CC49E5: ConcatStr
  loc_CC49E6: FStStrNoPop var_1F4
  loc_CC49E9: FLdPr Me
  loc_CC49EC: MemStStrCopy
  loc_CC49F0: FFreeStr var_1DC = "": var_1D8 = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_140 = "": var_144 = "": var_148 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B8 = "": var_1B4 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_CC4A3F: FLdPr Me
  loc_CC4A42: MemLdRfVar from_stack_1.global_76
  loc_CC4A45: NewIfNullPr clsservcome
  loc_CC4A48: Call clsservcome.MoveSiguiente()
  loc_CC4A4D: Branch loc_CC47CE
  loc_CC4A50: FLdRfVar var_D4
  loc_CC4A53: FLdPr Me
  loc_CC4A56: MemLdRfVar from_stack_1.global_56
  loc_CC4A59: NewIfNullPr clsctacte
  loc_CC4A5C: from_stack_1 = clsctacte.ImpoCtct
  loc_CC4A61: LitI4 2
  loc_CC4A66: FLdPr Me
  loc_CC4A69: MemLdFPR8 global_120
  loc_CC4A6C: FLdRfVar var_D4
  loc_CC4A6F: FnCDblVar
  loc_CC4A71: AddR8
  loc_CC4A72: CVarR8
  loc_CC4A76: FLdRfVar var_118
  loc_CC4A79: ImpAdCallFPR4  = Round(, )
  loc_CC4A7E: FLdRfVar var_118
  loc_CC4A81: CR4Var
  loc_CC4A82: FLdPr Me
  loc_CC4A85: MemStFPR8 global_120
  loc_CC4A88: FFreeVar var_D4 = "": var_D4 = "": var_E4 = ""
  loc_CC4A93: FLdRfVar var_D4
  loc_CC4A96: FLdPr Me
  loc_CC4A99: MemLdRfVar from_stack_1.global_56
  loc_CC4A9C: NewIfNullPr clsctacte
  loc_CC4A9F: from_stack_1 = clsctacte.DescCtct
  loc_CC4AA4: FLdRfVar var_E4
  loc_CC4AA7: FLdPr Me
  loc_CC4AAA: MemLdRfVar from_stack_1.global_56
  loc_CC4AAD: NewIfNullPr clsctacte
  loc_CC4AB0: from_stack_1 = clsctacte.ExenCtct
  loc_CC4AB5: LitI4 2
  loc_CC4ABA: FLdPr Me
  loc_CC4ABD: MemLdFPR8 global_128
  loc_CC4AC0: FLdRfVar var_D4
  loc_CC4AC3: FnCDblVar
  loc_CC4AC5: AddR8
  loc_CC4AC6: FLdRfVar var_E4
  loc_CC4AC9: FnCDblVar
  loc_CC4ACB: AddR8
  loc_CC4ACC: CVarR8
  loc_CC4AD0: FLdRfVar var_138
  loc_CC4AD3: ImpAdCallFPR4  = Round(, )
  loc_CC4AD8: FLdRfVar var_138
  loc_CC4ADB: CR4Var
  loc_CC4ADC: FLdPr Me
  loc_CC4ADF: MemStFPR8 global_128
  loc_CC4AE2: FFreeVar var_D4 = "": var_D4 = "": var_E4 = "": var_E4 = "": var_118 = ""
  loc_CC4AF1: FLdRfVar var_220
  loc_CC4AF4: FLdPr Me
  loc_CC4AF7: MemLdRfVar from_stack_1.global_56
  loc_CC4AFA: NewIfNullPr clsctacte
  loc_CC4AFD: from_stack_1 = clsctacte.TotaCtct
  loc_CC4B02: LitI4 2
  loc_CC4B07: FLdPr Me
  loc_CC4B0A: MemLdFPR8 global_144
  loc_CC4B0D: FLdFPR8 var_220
  loc_CC4B10: FnCDblR8
  loc_CC4B12: AddR8
  loc_CC4B13: CVarR8
  loc_CC4B17: FLdRfVar var_E4
  loc_CC4B1A: ImpAdCallFPR4  = Round(, )
  loc_CC4B1F: FLdRfVar var_E4
  loc_CC4B22: CR4Var
  loc_CC4B23: FLdPr Me
  loc_CC4B26: MemStFPR8 global_144
  loc_CC4B29: FFreeVar var_D4 = ""
  loc_CC4B30: FLdPr Me
  loc_CC4B33: MemLdRfVar from_stack_1.global_56
  loc_CC4B36: NewIfNullPr clsctacte
  loc_CC4B39: Call clsctacte.MoveSiguiente()
  loc_CC4B3E: Branch loc_CC306F
  loc_CC4B41: LitI4 2
  loc_CC4B46: FLdPr Me
  loc_CC4B49: MemLdRfVar from_stack_1.global_120
  loc_CC4B4C: CVarRef
  loc_CC4B51: FLdRfVar var_D4
  loc_CC4B54: ImpAdCallFPR4  = Round(, )
  loc_CC4B59: FLdRfVar var_D4
  loc_CC4B5C: LitI4 2
  loc_CC4B61: ImpAdLdRf MemVar_D93040
  loc_CC4B64: CVarRef
  loc_CC4B69: FLdRfVar var_E4
  loc_CC4B6C: ImpAdCallFPR4  = Round(, )
  loc_CC4B71: FLdRfVar var_E4
  loc_CC4B74: NeVarBool
  loc_CC4B76: FFreeVar var_D4 = ""
  loc_CC4B7D: BranchF loc_CC4B96
  loc_CC4B80: LitStr "El total del CAPITAL del BOLETO no es igual al TOTAL del CAPITAL de los movimientos del boleto, verifique..."
  loc_CC4B83: FLdPr Me
  loc_CC4B86: MemStStrCopy
  loc_CC4B8A: FLdPr Me
  loc_CC4B8D: MemLdStr global_152
  loc_CC4B90: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC4B95: ExitProcHresult
  loc_CC4B96: LitStr "Municipalidad de Guaymallén"
  loc_CC4B99: LitStr "Municipalidad de Lavalle"
  loc_CC4B9C: EqStr
  loc_CC4B9E: BranchF loc_CC4BF6
  loc_CC4BA1: LitI4 2
  loc_CC4BA6: FLdPr Me
  loc_CC4BA9: MemLdRfVar from_stack_1.global_120
  loc_CC4BAC: CVarRef
  loc_CC4BB1: FLdRfVar var_D4
  loc_CC4BB4: ImpAdCallFPR4  = Round(, )
  loc_CC4BB9: FLdRfVar var_D4
  loc_CC4BBC: LitI4 2
  loc_CC4BC1: FLdRfVar var_AC
  loc_CC4BC4: CVarRef
  loc_CC4BC9: FLdRfVar var_E4
  loc_CC4BCC: ImpAdCallFPR4  = Round(, )
  loc_CC4BD1: FLdRfVar var_E4
  loc_CC4BD4: NeVarBool
  loc_CC4BD6: FFreeVar var_D4 = ""
  loc_CC4BDD: BranchF loc_CC4BF6
  loc_CC4BE0: LitStr "El total del CAPITAL del BOLETO no es igual a la SUMATORIA de los SERVICIOS, verifique..."
  loc_CC4BE3: FLdPr Me
  loc_CC4BE6: MemStStrCopy
  loc_CC4BEA: FLdPr Me
  loc_CC4BED: MemLdStr global_152
  loc_CC4BF0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC4BF5: ExitProcHresult
  loc_CC4BF6: LitI4 2
  loc_CC4BFB: FLdPr Me
  loc_CC4BFE: MemLdRfVar from_stack_1.global_136
  loc_CC4C01: CVarRef
  loc_CC4C06: FLdRfVar var_D4
  loc_CC4C09: ImpAdCallFPR4  = Round(, )
  loc_CC4C0E: FLdRfVar var_D4
  loc_CC4C11: LitI4 2
  loc_CC4C16: ImpAdLdRf MemVar_D93058
  loc_CC4C19: CVarRef
  loc_CC4C1E: FLdRfVar var_E4
  loc_CC4C21: ImpAdCallFPR4  = Round(, )
  loc_CC4C26: FLdRfVar var_E4
  loc_CC4C29: NeVarBool
  loc_CC4C2B: FFreeVar var_D4 = ""
  loc_CC4C32: BranchF loc_CC4C4B
  loc_CC4C35: LitStr "El total del RECARGO del boleto no es igual al TOTAL del RECARGO de los movimientos del boleto, verifique..."
  loc_CC4C38: FLdPr Me
  loc_CC4C3B: MemStStrCopy
  loc_CC4C3F: FLdPr Me
  loc_CC4C42: MemLdStr global_152
  loc_CC4C45: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC4C4A: ExitProcHresult
  loc_CC4C4B: LitI4 2
  loc_CC4C50: FLdPr Me
  loc_CC4C53: MemLdRfVar from_stack_1.global_128
  loc_CC4C56: CVarRef
  loc_CC4C5B: FLdRfVar var_D4
  loc_CC4C5E: ImpAdCallFPR4  = Round(, )
  loc_CC4C63: FLdRfVar var_D4
  loc_CC4C66: LitI4 2
  loc_CC4C6B: ImpAdLdRf MemVar_D93048
  loc_CC4C6E: CVarRef
  loc_CC4C73: FLdRfVar var_E4
  loc_CC4C76: ImpAdCallFPR4  = Round(, )
  loc_CC4C7B: FLdRfVar var_E4
  loc_CC4C7E: NeVarBool
  loc_CC4C80: FFreeVar var_D4 = ""
  loc_CC4C87: BranchF loc_CC4CA0
  loc_CC4C8A: LitStr "El total del DESCUENTO del boleto no es igual al TOTAL del DESCUENTO de los movimientos del boleto, verifique..."
  loc_CC4C8D: FLdPr Me
  loc_CC4C90: MemStStrCopy
  loc_CC4C94: FLdPr Me
  loc_CC4C97: MemLdStr global_152
  loc_CC4C9A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC4C9F: ExitProcHresult
  loc_CC4CA0: LitI4 2
  loc_CC4CA5: FLdPr Me
  loc_CC4CA8: MemLdRfVar from_stack_1.global_144
  loc_CC4CAB: CVarRef
  loc_CC4CB0: FLdRfVar var_D4
  loc_CC4CB3: ImpAdCallFPR4  = Round(, )
  loc_CC4CB8: FLdRfVar var_D4
  loc_CC4CBB: LitI4 2
  loc_CC4CC0: ImpAdLdRf MemVar_D93070
  loc_CC4CC3: CVarRef
  loc_CC4CC8: FLdRfVar var_E4
  loc_CC4CCB: ImpAdCallFPR4  = Round(, )
  loc_CC4CD0: FLdRfVar var_E4
  loc_CC4CD3: NeVarBool
  loc_CC4CD5: FFreeVar var_D4 = ""
  loc_CC4CDC: BranchF loc_CC4CF5
  loc_CC4CDF: LitStr "El TOTAL GENERAL del BOLETO no es igual al TOTAL GENERAL del los movimientos del boleto, verifique..."
  loc_CC4CE2: FLdPr Me
  loc_CC4CE5: MemStStrCopy
  loc_CC4CE9: FLdPr Me
  loc_CC4CEC: MemLdStr global_152
  loc_CC4CEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC4CF4: ExitProcHresult
  loc_CC4CF5: FLdPr Me
  loc_CC4CF8: MemLdStr global_156
  loc_CC4CFB: FLdPr Me
  loc_CC4CFE: MemLdRfVar from_stack_1.global_60
  loc_CC4D01: NewIfNullPr clsboleto
  loc_CC4D04: Call clsboleto.AddnewTransaction(from_stack_1v)
  loc_CC4D09: ImpAdLdRf MemVar_D945D8
  loc_CC4D0C: NewIfNullAd
  loc_CC4D0F: FStAd var_25C 
  loc_CC4D13: FLdRfVar var_14E
  loc_CC4D16: FLdPr var_25C
  loc_CC4D19: from_stack_1v = rptAnticipodeTasas.ImprimiendoGet()
  loc_CC4D1E: FLdI2 var_14E
  loc_CC4D21: BranchF loc_CC4D2C
  loc_CC4D24: ImpAdCallFPR4 DoEvents()
  loc_CC4D29: Branch loc_CC4D13
  loc_CC4D2C: ImpAdLdRf MemVar_D945D8
  loc_CC4D2F: NewIfNullAd
  loc_CC4D32: CastAd
  loc_CC4D35: FStAdFuncNoPop
  loc_CC4D38: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_CC4D3D: FFree1Ad var_E8
  loc_CC4D40: ImpAdLdUI1
  loc_CC4D44: CI2UI1
  loc_CC4D46: LitI2_Byte 1
  loc_CC4D48: SubI2
  loc_CC4D49: FLdPr var_25C
  loc_CC4D4C: VCallAd Control_ID_NumeCtaTxt
  loc_CC4D4F: FStAdFunc var_E8
  loc_CC4D52: FLdPr var_E8
  loc_CC4D55: Me.ListIndex = from_stack_1
  loc_CC4D5A: FFree1Ad var_E8
  loc_CC4D5D: FLdI2 var_86
  loc_CC4D60: CStrUI1
  loc_CC4D62: CVarStr var_D4
  loc_CC4D65: PopAdLdVar
  loc_CC4D66: FLdPr var_25C
  loc_CC4D69: VCallAd Control_ID_Label6
  loc_CC4D6C: FStAdFunc var_E8
  loc_CC4D6F: FLdPr var_E8
  loc_CC4D72: LateIdSt
  loc_CC4D77: FFree1Ad var_E8
  loc_CC4D7A: FFree1Var var_D4 = ""
  loc_CC4D7D: ILdRf var_8C
  loc_CC4D80: CStrI4
  loc_CC4D82: CVarStr var_D4
  loc_CC4D85: PopAdLdVar
  loc_CC4D86: FLdPr var_25C
  loc_CC4D89: VCallAd Control_ID_Label2
  loc_CC4D8C: FStAdFunc var_E8
  loc_CC4D8F: FLdPr var_E8
  loc_CC4D92: LateIdSt
  loc_CC4D97: FFree1Ad var_E8
  loc_CC4D9A: FFree1Var var_D4 = ""
  loc_CC4D9D: LitVarI4
  loc_CC4DA5: LitVarI4
  loc_CC4DAD: ImpAdLdI2 MemVar_D93078
  loc_CC4DB0: LitI2_Byte 0
  loc_CC4DB2: EqI2
  loc_CC4DB3: CVarBoolI2 var_C4
  loc_CC4DB7: FLdRfVar var_118
  loc_CC4DBA: ImpAdCallFPR4  = IIf(, , )
  loc_CC4DBF: FLdRfVar var_118
  loc_CC4DC2: CI2Var
  loc_CC4DC3: FLdPr var_25C
  loc_CC4DC6: VCallAd Control_ID_BuscarCmd
  loc_CC4DC9: FStAdFunc var_E8
  loc_CC4DCC: FLdPr var_E8
  loc_CC4DCF: Me.Value = from_stack_1
  loc_CC4DD4: FFree1Ad var_E8
  loc_CC4DD7: FFreeVar var_C4 = "": var_D4 = "": var_E4 = ""
  loc_CC4DE2: FLdPr var_25C
  loc_CC4DE5: Call rptAnticipodeTasas.cmdPredeterminada_Click()
  loc_CC4DEA: LitNothing
  loc_CC4DEC: FStAd var_25C 
  loc_CC4DF0: Call Proc_85_19_B0D1F4()
  loc_CC4DF5: LitI4 1
  loc_CC4DFA: LitI4 1
  loc_CC4DFF: LitVarStr var_F8, "###,###,##0.00"
  loc_CC4E04: FStVarCopyObj var_E4
  loc_CC4E07: FLdRfVar var_E4
  loc_CC4E0A: LitVarI2 var_D4, 0
  loc_CC4E0F: FLdRfVar var_118
  loc_CC4E12: ImpAdCallFPR4  = Format(, )
  loc_CC4E17: FLdRfVar var_118
  loc_CC4E1A: CStrVarVal var_140
  loc_CC4E1E: FLdPr Me
  loc_CC4E21: VCallAd Control_ID_txtTotaDere
  loc_CC4E24: FStAdFunc var_E8
  loc_CC4E27: FLdPr var_E8
  loc_CC4E2A: Me.Text = from_stack_1
  loc_CC4E2F: FFree1Str var_140
  loc_CC4E32: FFree1Ad var_E8
  loc_CC4E35: FFreeVar var_D4 = "": var_E4 = ""
  loc_CC4E3E: LitI4 1
  loc_CC4E43: LitI4 1
  loc_CC4E48: LitVarStr var_F8, "###,###,##0.00"
  loc_CC4E4D: FStVarCopyObj var_E4
  loc_CC4E50: FLdRfVar var_E4
  loc_CC4E53: LitVarI2 var_D4, 0
  loc_CC4E58: FLdRfVar var_118
  loc_CC4E5B: ImpAdCallFPR4  = Format(, )
  loc_CC4E60: FLdRfVar var_118
  loc_CC4E63: CStrVarVal var_140
  loc_CC4E67: FLdPr Me
  loc_CC4E6A: VCallAd Control_ID_txtTotaExce
  loc_CC4E6D: FStAdFunc var_E8
  loc_CC4E70: FLdPr var_E8
  loc_CC4E73: Me.Text = from_stack_1
  loc_CC4E78: FFree1Str var_140
  loc_CC4E7B: FFree1Ad var_E8
  loc_CC4E7E: FFreeVar var_D4 = "": var_E4 = ""
  loc_CC4E87: LitI4 1
  loc_CC4E8C: LitI4 1
  loc_CC4E91: LitVarStr var_F8, "###,###,##0.00"
  loc_CC4E96: FStVarCopyObj var_E4
  loc_CC4E99: FLdRfVar var_E4
  loc_CC4E9C: LitVarI2 var_D4, 0
  loc_CC4EA1: FLdRfVar var_118
  loc_CC4EA4: ImpAdCallFPR4  = Format(, )
  loc_CC4EA9: FLdRfVar var_118
  loc_CC4EAC: CStrVarVal var_140
  loc_CC4EB0: FLdPr Me
  loc_CC4EB3: VCallAd Control_ID_txtTotaDesc
  loc_CC4EB6: FStAdFunc var_E8
  loc_CC4EB9: FLdPr var_E8
  loc_CC4EBC: Me.Text = from_stack_1
  loc_CC4EC1: FFree1Str var_140
  loc_CC4EC4: FFree1Ad var_E8
  loc_CC4EC7: FFreeVar var_D4 = "": var_E4 = ""
  loc_CC4ED0: LitI4 1
  loc_CC4ED5: LitI4 1
  loc_CC4EDA: LitVarStr var_F8, "###,###,##0.00"
  loc_CC4EDF: FStVarCopyObj var_E4
  loc_CC4EE2: FLdRfVar var_E4
  loc_CC4EE5: LitVarI2 var_D4, 0
  loc_CC4EEA: FLdRfVar var_118
  loc_CC4EED: ImpAdCallFPR4  = Format(, )
  loc_CC4EF2: FLdRfVar var_118
  loc_CC4EF5: CStrVarVal var_140
  loc_CC4EF9: FLdPr Me
  loc_CC4EFC: VCallAd Control_ID_txtTotaSele
  loc_CC4EFF: FStAdFunc var_E8
  loc_CC4F02: FLdPr var_E8
  loc_CC4F05: Me.Text = from_stack_1
  loc_CC4F0A: FFree1Str var_140
  loc_CC4F0D: FFree1Ad var_E8
  loc_CC4F10: FFreeVar var_D4 = "": var_E4 = ""
  loc_CC4F19: LitI4 1
  loc_CC4F1E: LitI4 1
  loc_CC4F23: LitVarStr var_F8, "###,###,##0.00"
  loc_CC4F28: FStVarCopyObj var_E4
  loc_CC4F2B: FLdRfVar var_E4
  loc_CC4F2E: LitVarI2 var_D4, 0
  loc_CC4F33: FLdRfVar var_118
  loc_CC4F36: ImpAdCallFPR4  = Format(, )
  loc_CC4F3B: FLdRfVar var_118
  loc_CC4F3E: CStrVarVal var_140
  loc_CC4F42: FLdPr Me
  loc_CC4F45: VCallAd Control_ID_txtTotal
  loc_CC4F48: FStAdFunc var_E8
  loc_CC4F4B: FLdPr var_E8
  loc_CC4F4E: Me.Text = from_stack_1
  loc_CC4F53: FFree1Str var_140
  loc_CC4F56: FFree1Ad var_E8
  loc_CC4F59: FFreeVar var_D4 = "": var_E4 = ""
  loc_CC4F62: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 'A069AC
  'Data Table: 4B8698
  loc_A0697C: Call Proc_85_19_B0D1F4()
  loc_A06981: LitI2_Byte 0
  loc_A06983: FLdPr Me
  loc_A06986: VCallAd Control_ID_SeleTodoChk
  loc_A06989: FStAdFunc var_88
  loc_A0698C: FLdPr var_88
  loc_A0698F: Me.Value = from_stack_1
  loc_A06994: FFree1Ad var_88
  loc_A06997: FLdPr Me
  loc_A0699A: VCallAd Control_ID_FechVencMsk
  loc_A0699D: CVarAd
  loc_A069A1: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A069A6: FFree1Var var_98 = ""
  loc_A069A9: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'A833B4
  'Data Table: 4B8698
  loc_A8332C: FLdPr Me
  loc_A8332F: VCallAd Control_ID_FechVencMsk
  loc_A83332: FStAdFunc var_88
  loc_A83335: FLdPr var_88
  loc_A83338: LateIdLdVar var_98 DispID_13 -32767
  loc_A8333F: CBoolVar
  loc_A83341: LitI2_Byte &HFF
  loc_A83343: EqI2
  loc_A83344: FFree1Ad var_88
  loc_A83347: FFree1Var var_98 = ""
  loc_A8334A: BranchF loc_A833B1
  loc_A8334D: FLdPr Me
  loc_A83350: VCallAd Control_ID_FechVencMsk
  loc_A83353: FStAdFunc var_88
  loc_A83356: FLdPr var_88
  loc_A83359: LateIdLdVar var_98 DispID_15 0
  loc_A83360: CStrVarTmp
  loc_A83361: FStStrNoPop var_9C
  loc_A83364: ImpAdCallI2 Proc_18_6_A08898()
  loc_A83369: FStStrNoPop var_A0
  loc_A8336C: FLdPr Me
  loc_A8336F: MemStStrCopy
  loc_A83373: FFreeStr var_9C = ""
  loc_A8337A: FFree1Ad var_88
  loc_A8337D: FFree1Var var_98 = ""
  loc_A83380: FLdPr Me
  loc_A83383: MemLdStr global_152
  loc_A83386: LitStr vbNullString
  loc_A83389: NeStr
  loc_A8338B: BranchF loc_A833B1
  loc_A8338E: FLdPr Me
  loc_A83391: MemLdStr global_152
  loc_A83394: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83399: FLdPr Me
  loc_A8339C: VCallAd Control_ID_FechVencMsk
  loc_A8339F: CVarAd
  loc_A833A3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A833A8: FFree1Var var_98 = ""
  loc_A833AB: LitI2_Byte &HFF
  loc_A833AD: IStI2 arg_C
  loc_A833B0: ExitProcHresult
  loc_A833B1: ExitProcHresult
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A254FC
  'Data Table: 4B8698
  loc_A254B4: ILdI2 KeyAscii
  loc_A254B7: CI4UI1
  loc_A254B8: LitI4 &H20
  loc_A254BD: EqI4
  loc_A254BE: BranchF loc_A254FB
  loc_A254C1: LitVar_Missing var_A4
  loc_A254C4: PopAdLdVar
  loc_A254C5: LitVarI4
  loc_A254CD: PopAdLdVar
  loc_A254CE: ImpAdLdRf MemVar_D930A4
  loc_A254D1: NewIfNullPr frmCalendario
  loc_A254D4: frmCalendario.Show from_stack_1, from_stack_2
  loc_A254D9: ImpAdLdRf MemVar_D93028
  loc_A254DC: CDargRef
  loc_A254E0: FLdPr Me
  loc_A254E3: VCallAd Control_ID_FechVencMsk
  loc_A254E6: FStAdFunc var_A8
  loc_A254E9: FLdPr var_A8
  loc_A254EC: LateIdSt
  loc_A254F1: FFree1Ad var_A8
  loc_A254F4: LitStr vbNullString
  loc_A254F7: ImpAdStStrCopy MemVar_D93028
  loc_A254FB: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CB350
  'Data Table: 4B8698
  loc_9CB338: ILdRf Me
  loc_9CB33B: FStAdNoPop
  loc_9CB33F: ImpAdLdRf MemVar_D9C5D8
  loc_9CB342: NewIfNullPr Global
  loc_9CB345: Global.Unload from_stack_1
  loc_9CB34A: FFree1Ad var_88
  loc_9CB34D: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A603A8
  'Data Table: 4B8698
  loc_A60344: Call Proc_85_19_B0D1F4()
  loc_A60349: LitI2_Byte 0
  loc_A6034B: FLdPr Me
  loc_A6034E: VCallAd Control_ID_SeleTodoChk
  loc_A60351: FStAdFunc var_88
  loc_A60354: FLdPr var_88
  loc_A60357: Me.Value = from_stack_1
  loc_A6035C: FFree1Ad var_88
  loc_A6035F: FLdPrThis
  loc_A60360: VCallAd Control_ID_NumeCtaTxt
  loc_A60363: CVarAd
  loc_A60367: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A6036C: FFree1Var var_98 = ""
  loc_A6036F: FLdRfVar var_9A
  loc_A60372: FLdPr Me
  loc_A60375: VCallAd Control_ID_SeleTodoChk
  loc_A60378: FStAdFunc var_88
  loc_A6037B: FLdPr var_88
  loc_A6037E:  = Me.Enabled
  loc_A60383: FLdI2 var_9A
  loc_A60386: LitI2_Byte 0
  loc_A60388: EqI2
  loc_A60389: FFree1Ad var_88
  loc_A6038C: BranchF loc_A603A5
  loc_A6038F: LitI2_Byte &HFF
  loc_A60391: FLdPr Me
  loc_A60394: VCallAd Control_ID_SeleTodoChk
  loc_A60397: FStAdFunc var_88
  loc_A6039A: FLdPr var_88
  loc_A6039D: Me.Enabled = from_stack_1b
  loc_A603A2: FFree1Ad var_88
  loc_A603A5: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B213A4
  'Data Table: 4B8698
  loc_B21104: ILdI2 KeyAscii
  loc_B21107: CI4UI1
  loc_B21108: LitI4 &H20
  loc_B2110D: EqI4
  loc_B2110E: BranchF loc_B213A0
  loc_B21111: LitI2_Byte 0
  loc_B21113: IStI2 KeyAscii
  loc_B21116: FLdRfVar var_8A
  loc_B21119: FLdPr Me
  loc_B2111C: VCallAd Control_ID_OficinaCbo
  loc_B2111F: FStAdFunc var_88
  loc_B21122: FLdPr var_88
  loc_B21125:  = Me.ListIndex
  loc_B2112A: FLdI2 var_8A
  loc_B2112D: FStI2 var_8C
  loc_B21130: FFree1Ad var_88
  loc_B21133: FLdI2 var_8C
  loc_B21136: LitI2_Byte 0
  loc_B21138: EqI2
  loc_B21139: BranchF loc_B21147
  loc_B2113C: LitI2_Byte 1
  loc_B2113E: CUI1I2
  loc_B21140: ImpAdStUI1 MemVar_D93038
  loc_B21144: Branch loc_B21180
  loc_B21147: FLdI2 var_8C
  loc_B2114A: LitI2_Byte 1
  loc_B2114C: EqI2
  loc_B2114D: BranchF loc_B2115B
  loc_B21150: LitI2_Byte 2
  loc_B21152: CUI1I2
  loc_B21154: ImpAdStUI1 MemVar_D93038
  loc_B21158: Branch loc_B21180
  loc_B2115B: FLdI2 var_8C
  loc_B2115E: LitI2_Byte 2
  loc_B21160: EqI2
  loc_B21161: BranchF loc_B2116F
  loc_B21164: LitI2_Byte 3
  loc_B21166: CUI1I2
  loc_B21168: ImpAdStUI1 MemVar_D93038
  loc_B2116C: Branch loc_B21180
  loc_B2116F: FLdI2 var_8C
  loc_B21172: LitI2_Byte 3
  loc_B21174: EqI2
  loc_B21175: BranchF loc_B21180
  loc_B21178: LitI2_Byte 4
  loc_B2117A: CUI1I2
  loc_B2117C: ImpAdStUI1 MemVar_D93038
  loc_B21180: LitVar_Missing var_AC
  loc_B21183: PopAdLdVar
  loc_B21184: LitVarI4
  loc_B2118C: PopAdLdVar
  loc_B2118D: ImpAdLdRf MemVar_D94034
  loc_B21190: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21193: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B21198: FLdRfVar var_B0
  loc_B2119B: FLdRfVar var_88
  loc_B2119E: ImpAdLdRf MemVar_D94034
  loc_B211A1: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B211A4: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B211A9: FLdPr var_88
  loc_B211AC: from_stack_1 = clsbase.RecordCount
  loc_B211B1: ILdRf var_B0
  loc_B211B4: LitI4 0
  loc_B211B9: GtI4
  loc_B211BA: FFree1Ad var_88
  loc_B211BD: BranchF loc_B2138E
  loc_B211C0: FLdRfVar var_CC
  loc_B211C3: FLdRfVar var_BC
  loc_B211C6: LitVarStr var_9C, "CodiOfic"
  loc_B211CB: PopAdLdVar
  loc_B211CC: FLdRfVar var_B8
  loc_B211CF: FLdRfVar var_B4
  loc_B211D2: FLdRfVar var_88
  loc_B211D5: ImpAdLdRf MemVar_D94034
  loc_B211D8: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B211DB: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B211E0: FLdPr var_88
  loc_B211E3: from_stack_1v = clsbase.RsFrmGet()
  loc_B211E8: FLdPr var_B4
  loc_B211EB:  = Me.Fields
  loc_B211F0: FLdPr var_B8
  loc_B211F3: from_stack_2 = Me.Item(from_stack_1)
  loc_B211F8: FLdPr var_BC
  loc_B211FB:  = Me.Value
  loc_B21200: FLdRfVar var_CC
  loc_B21203: FStVar var_DC
  loc_B21207: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B21212: FLdRfVar var_DC
  loc_B21215: LitVarI2 var_9C, 1
  loc_B2121A: HardType
  loc_B2121B: EqVarBool
  loc_B2121D: BranchF loc_B21257
  loc_B21220: FLdRfVar var_E0
  loc_B21223: LitI2_Byte 0
  loc_B21225: FLdPr Me
  loc_B21228: VCallAd Control_ID_OficinaCbo
  loc_B2122B: FStAdFunc var_88
  loc_B2122E: FLdPr var_88
  loc_B21231: from_stack_2 = Me.List(from_stack_1)
  loc_B21236: ILdRf var_E0
  loc_B21239: FLdPr Me
  loc_B2123C: VCallAd Control_ID_OficinaCbo
  loc_B2123F: FStAdFunc var_B4
  loc_B21242: FLdPr var_B4
  loc_B21245: Me.Text = from_stack_1
  loc_B2124A: FFree1Str var_E0
  loc_B2124D: FFreeAd var_88 = ""
  loc_B21254: Branch loc_B21323
  loc_B21257: FLdRfVar var_DC
  loc_B2125A: LitVarI2 var_9C, 2
  loc_B2125F: HardType
  loc_B21260: EqVarBool
  loc_B21262: BranchF loc_B2129C
  loc_B21265: FLdRfVar var_E0
  loc_B21268: LitI2_Byte 1
  loc_B2126A: FLdPr Me
  loc_B2126D: VCallAd Control_ID_OficinaCbo
  loc_B21270: FStAdFunc var_88
  loc_B21273: FLdPr var_88
  loc_B21276: from_stack_2 = Me.List(from_stack_1)
  loc_B2127B: ILdRf var_E0
  loc_B2127E: FLdPr Me
  loc_B21281: VCallAd Control_ID_OficinaCbo
  loc_B21284: FStAdFunc var_B4
  loc_B21287: FLdPr var_B4
  loc_B2128A: Me.Text = from_stack_1
  loc_B2128F: FFree1Str var_E0
  loc_B21292: FFreeAd var_88 = ""
  loc_B21299: Branch loc_B21323
  loc_B2129C: FLdRfVar var_DC
  loc_B2129F: LitVarI2 var_9C, 3
  loc_B212A4: HardType
  loc_B212A5: EqVarBool
  loc_B212A7: BranchF loc_B212E1
  loc_B212AA: FLdRfVar var_E0
  loc_B212AD: LitI2_Byte 2
  loc_B212AF: FLdPr Me
  loc_B212B2: VCallAd Control_ID_OficinaCbo
  loc_B212B5: FStAdFunc var_88
  loc_B212B8: FLdPr var_88
  loc_B212BB: from_stack_2 = Me.List(from_stack_1)
  loc_B212C0: ILdRf var_E0
  loc_B212C3: FLdPr Me
  loc_B212C6: VCallAd Control_ID_OficinaCbo
  loc_B212C9: FStAdFunc var_B4
  loc_B212CC: FLdPr var_B4
  loc_B212CF: Me.Text = from_stack_1
  loc_B212D4: FFree1Str var_E0
  loc_B212D7: FFreeAd var_88 = ""
  loc_B212DE: Branch loc_B21323
  loc_B212E1: FLdRfVar var_DC
  loc_B212E4: LitVarI2 var_9C, 4
  loc_B212E9: HardType
  loc_B212EA: EqVarBool
  loc_B212EC: BranchF loc_B21323
  loc_B212EF: FLdRfVar var_E0
  loc_B212F2: LitI2_Byte 3
  loc_B212F4: FLdPr Me
  loc_B212F7: VCallAd Control_ID_OficinaCbo
  loc_B212FA: FStAdFunc var_88
  loc_B212FD: FLdPr var_88
  loc_B21300: from_stack_2 = Me.List(from_stack_1)
  loc_B21305: ILdRf var_E0
  loc_B21308: FLdPr Me
  loc_B2130B: VCallAd Control_ID_OficinaCbo
  loc_B2130E: FStAdFunc var_B4
  loc_B21311: FLdPr var_B4
  loc_B21314: Me.Text = from_stack_1
  loc_B21319: FFree1Str var_E0
  loc_B2131C: FFreeAd var_88 = ""
  loc_B21323: FLdRfVar var_CC
  loc_B21326: FLdRfVar var_BC
  loc_B21329: LitVarStr var_9C, "CuenCtct"
  loc_B2132E: PopAdLdVar
  loc_B2132F: FLdRfVar var_B8
  loc_B21332: FLdRfVar var_B4
  loc_B21335: FLdRfVar var_88
  loc_B21338: ImpAdLdRf MemVar_D94034
  loc_B2133B: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B2133E: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21343: FLdPr var_88
  loc_B21346: from_stack_1v = clsbase.RsFrmGet()
  loc_B2134B: FLdPr var_B4
  loc_B2134E:  = Me.Fields
  loc_B21353: FLdPr var_B8
  loc_B21356: from_stack_2 = Me.Item(from_stack_1)
  loc_B2135B: FLdPr var_BC
  loc_B2135E:  = Me.Value
  loc_B21363: FLdRfVar var_CC
  loc_B21366: CStrVarTmp
  loc_B21367: FStStrNoPop var_E0
  loc_B2136A: FLdPr Me
  loc_B2136D: VCallAd Control_ID_NumeCtaTxt
  loc_B21370: FStAdFunc var_E4
  loc_B21373: FLdPr var_E4
  loc_B21376: Me.Text = from_stack_1
  loc_B2137B: FFree1Str var_E0
  loc_B2137E: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B2138B: FFree1Var var_CC = ""
  loc_B2138E: FLdPr Me
  loc_B21391: VCallAd Control_ID_NumeCtaTxt
  loc_B21394: CVarAd
  loc_B21398: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2139D: FFree1Var var_CC = ""
  loc_B213A0: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B1CE80
  'Data Table: 4B8698
  loc_B1CC10: FLdRfVar var_8A
  loc_B1CC13: FLdPr Me
  loc_B1CC16: VCallAd Control_ID_NumeCtaTxt
  loc_B1CC19: FStAdFunc var_88
  loc_B1CC1C: FLdPr var_88
  loc_B1CC1F:  = Me.Enabled
  loc_B1CC24: FLdI2 var_8A
  loc_B1CC27: FFree1Ad var_88
  loc_B1CC2A: BranchF loc_B1CE7E
  loc_B1CC2D: FLdRfVar var_8A
  loc_B1CC30: FLdPr Me
  loc_B1CC33: VCallAd Control_ID_OficinaCbo
  loc_B1CC36: FStAdFunc var_88
  loc_B1CC39: FLdPr var_88
  loc_B1CC3C:  = Me.ListIndex
  loc_B1CC41: FLdI2 var_8A
  loc_B1CC44: FStI2 var_8C
  loc_B1CC47: FFree1Ad var_88
  loc_B1CC4A: FLdI2 var_8C
  loc_B1CC4D: LitI2_Byte 0
  loc_B1CC4F: EqI2
  loc_B1CC50: BranchF loc_B1CC5E
  loc_B1CC53: LitI2_Byte 1
  loc_B1CC55: CUI1I2
  loc_B1CC57: ImpAdStUI1 MemVar_D93038
  loc_B1CC5B: Branch loc_B1CC97
  loc_B1CC5E: FLdI2 var_8C
  loc_B1CC61: LitI2_Byte 1
  loc_B1CC63: EqI2
  loc_B1CC64: BranchF loc_B1CC72
  loc_B1CC67: LitI2_Byte 2
  loc_B1CC69: CUI1I2
  loc_B1CC6B: ImpAdStUI1 MemVar_D93038
  loc_B1CC6F: Branch loc_B1CC97
  loc_B1CC72: FLdI2 var_8C
  loc_B1CC75: LitI2_Byte 2
  loc_B1CC77: EqI2
  loc_B1CC78: BranchF loc_B1CC86
  loc_B1CC7B: LitI2_Byte 3
  loc_B1CC7D: CUI1I2
  loc_B1CC7F: ImpAdStUI1 MemVar_D93038
  loc_B1CC83: Branch loc_B1CC97
  loc_B1CC86: FLdI2 var_8C
  loc_B1CC89: LitI2_Byte 3
  loc_B1CC8B: EqI2
  loc_B1CC8C: BranchF loc_B1CC97
  loc_B1CC8F: LitI2_Byte 4
  loc_B1CC91: CUI1I2
  loc_B1CC93: ImpAdStUI1 MemVar_D93038
  loc_B1CC97: FLdRfVar var_90
  loc_B1CC9A: FLdPr Me
  loc_B1CC9D: VCallAd Control_ID_NumeCtaTxt
  loc_B1CCA0: FStAdFunc var_88
  loc_B1CCA3: FLdPr var_88
  loc_B1CCA6:  = Me.Text
  loc_B1CCAB: FLdPr Me
  loc_B1CCAE: MemLdRfVar from_stack_1.global_80
  loc_B1CCB1: NewIfNullRf
  loc_B1CCB5: LitStr "Titular"
  loc_B1CCB8: ILdRf var_90
  loc_B1CCBB: ImpAdLdUI1
  loc_B1CCBF: CStrI2
  loc_B1CCC1: FStStrNoPop var_94
  loc_B1CCC4: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B1CCC9: FFreeStr var_94 = ""
  loc_B1CCD0: FFree1Ad var_88
  loc_B1CCD3: BranchF loc_B1CDF8
  loc_B1CCD6: FLdRfVar var_90
  loc_B1CCD9: FLdPr Me
  loc_B1CCDC: MemLdRfVar from_stack_1.global_80
  loc_B1CCDF: NewIfNullPr tblPersona
  loc_B1CCE2: from_stack_1v = tblPersona.CucuPersGet()
  loc_B1CCE7: ILdRf var_90
  loc_B1CCEA: FLdPr Me
  loc_B1CCED: VCallAd Control_ID_CucuPersLbl
  loc_B1CCF0: FStAdFunc var_88
  loc_B1CCF3: FLdPr var_88
  loc_B1CCF6: Me.Caption = from_stack_1
  loc_B1CCFB: FFree1Str var_90
  loc_B1CCFE: FFree1Ad var_88
  loc_B1CD01: FLdRfVar var_90
  loc_B1CD04: FLdPr Me
  loc_B1CD07: MemLdRfVar from_stack_1.global_80
  loc_B1CD0A: NewIfNullPr tblPersona
  loc_B1CD0D: from_stack_1v = tblPersona.DetaPersGet()
  loc_B1CD12: ILdRf var_90
  loc_B1CD15: FLdPr Me
  loc_B1CD18: VCallAd Control_ID_DetaPersLbl
  loc_B1CD1B: FStAdFunc var_88
  loc_B1CD1E: FLdPr var_88
  loc_B1CD21: Me.Caption = from_stack_1
  loc_B1CD26: FFree1Str var_90
  loc_B1CD29: FFree1Ad var_88
  loc_B1CD2C: FLdRfVar var_94
  loc_B1CD2F: FLdPr Me
  loc_B1CD32: MemLdRfVar from_stack_1.global_80
  loc_B1CD35: NewIfNullPr tblPersona
  loc_B1CD38: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1CD3D: FLdRfVar var_98
  loc_B1CD40: FLdPr Me
  loc_B1CD43: MemLdRfVar from_stack_1.global_80
  loc_B1CD46: NewIfNullPr tblPersona
  loc_B1CD49: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1CD4E: FLdRfVar var_90
  loc_B1CD51: FLdPr Me
  loc_B1CD54: MemLdRfVar from_stack_1.global_80
  loc_B1CD57: NewIfNullPr tblPersona
  loc_B1CD5A: from_stack_1v = tblPersona.DetaCallGet()
  loc_B1CD5F: ILdRf var_90
  loc_B1CD62: LitStr " "
  loc_B1CD65: ConcatStr
  loc_B1CD66: CVarStr var_F8
  loc_B1CD69: LitVarStr var_C8, vbNullString
  loc_B1CD6E: FStVarCopyObj var_D8
  loc_B1CD71: FLdRfVar var_D8
  loc_B1CD74: LitStr "Nro: "
  loc_B1CD77: ILdRf var_98
  loc_B1CD7A: ConcatStr
  loc_B1CD7B: CVarStr var_B8
  loc_B1CD7E: ILdRf var_94
  loc_B1CD81: LitStr "0"
  loc_B1CD84: NeStr
  loc_B1CD86: CVarBoolI2 var_A8
  loc_B1CD8A: FLdRfVar var_E8
  loc_B1CD8D: ImpAdCallFPR4  = IIf(, , )
  loc_B1CD92: FLdRfVar var_E8
  loc_B1CD95: ConcatVar var_108
  loc_B1CD99: LitVarStr var_118, " "
  loc_B1CD9E: ConcatVar var_128
  loc_B1CDA2: FLdRfVar var_12C
  loc_B1CDA5: FLdPr Me
  loc_B1CDA8: MemLdRfVar from_stack_1.global_80
  loc_B1CDAB: NewIfNullPr tblPersona
  loc_B1CDAE: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B1CDB3: FLdZeroAd var_12C
  loc_B1CDB6: CVarStr var_13C
  loc_B1CDB9: ConcatVar var_14C
  loc_B1CDBD: CStrVarVal var_150
  loc_B1CDC1: FLdPr Me
  loc_B1CDC4: VCallAd Control_ID_DomiPersLbl
  loc_B1CDC7: FStAdFunc var_88
  loc_B1CDCA: FLdPr var_88
  loc_B1CDCD: Me.Caption = from_stack_1
  loc_B1CDD2: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B1CDDD: FFree1Ad var_88
  loc_B1CDE0: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B1CDF5: Branch loc_B1CE7E
  loc_B1CDF8: FLdRfVar var_90
  loc_B1CDFB: FLdPr Me
  loc_B1CDFE: MemLdRfVar from_stack_1.global_80
  loc_B1CE01: NewIfNullPr tblPersona
  loc_B1CE04: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B1CE09: ILdRf var_90
  loc_B1CE0C: FLdPr Me
  loc_B1CE0F: MemStStrCopy
  loc_B1CE13: FFree1Str var_90
  loc_B1CE16: FLdPr Me
  loc_B1CE19: MemLdStr global_152
  loc_B1CE1C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1CE21: LitStr vbNullString
  loc_B1CE24: FLdPr Me
  loc_B1CE27: VCallAd Control_ID_CucuPersLbl
  loc_B1CE2A: FStAdFunc var_88
  loc_B1CE2D: FLdPr var_88
  loc_B1CE30: Me.Caption = from_stack_1
  loc_B1CE35: FFree1Ad var_88
  loc_B1CE38: LitStr vbNullString
  loc_B1CE3B: FLdPr Me
  loc_B1CE3E: VCallAd Control_ID_DetaPersLbl
  loc_B1CE41: FStAdFunc var_88
  loc_B1CE44: FLdPr var_88
  loc_B1CE47: Me.Caption = from_stack_1
  loc_B1CE4C: FFree1Ad var_88
  loc_B1CE4F: LitStr vbNullString
  loc_B1CE52: FLdPr Me
  loc_B1CE55: VCallAd Control_ID_DomiPersLbl
  loc_B1CE58: FStAdFunc var_88
  loc_B1CE5B: FLdPr var_88
  loc_B1CE5E: Me.Caption = from_stack_1
  loc_B1CE63: FFree1Ad var_88
  loc_B1CE66: FLdPr Me
  loc_B1CE69: VCallAd Control_ID_NumeCtaTxt
  loc_B1CE6C: CVarAd
  loc_B1CE70: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1CE75: FFree1Var var_B8 = ""
  loc_B1CE78: LitI2_Byte &HFF
  loc_B1CE7A: IStI2 Cancel
  loc_B1CE7D: ExitProcHresult
  loc_B1CE7E: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C3A290
  'Data Table: 4B8698
  loc_C39794: LitStr "Municipalidad de Guaymallén"
  loc_C39797: LitStr "Municipalidad de San Carlos"
  loc_C3979A: EqStr
  loc_C3979C: LitStr "Municipalidad de Guaymallén"
  loc_C3979F: LitStr "Municipalidad de Rivadavia"
  loc_C397A2: EqStr
  loc_C397A4: OrI4
  loc_C397A5: BranchF loc_C397F6
  loc_C397A8: FLdPr Me
  loc_C397AB: VCallAd Control_ID_FechVencMsk
  loc_C397AE: FStAdFunc var_EC
  loc_C397B1: FLdPr var_EC
  loc_C397B4: LateIdLdVar var_FC DispID_15 0
  loc_C397BB: CStrVarTmp
  loc_C397BC: PopTmpLdAdStr
  loc_C397C0: ImpAdCallI2 Proc_18_100_A771AC()
  loc_C397C5: FStStrNoPop var_104
  loc_C397C8: FLdPr Me
  loc_C397CB: MemStStrCopy
  loc_C397CF: FFreeStr var_100 = ""
  loc_C397D6: FFree1Ad var_EC
  loc_C397D9: FFree1Var var_FC = ""
  loc_C397DC: FLdPr Me
  loc_C397DF: MemLdStr global_152
  loc_C397E2: LitStr vbNullString
  loc_C397E5: NeStr
  loc_C397E7: BranchF loc_C397F6
  loc_C397EA: FLdPr Me
  loc_C397ED: MemLdStr global_152
  loc_C397F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C397F5: ExitProcHresult
  loc_C397F6: Call Proc_85_19_B0D1F4()
  loc_C397FB: LitI2_Byte 0
  loc_C397FD: CR8I2
  loc_C397FE: FLdPr Me
  loc_C39801: MemStFPR8 global_88
  loc_C39804: LitI2_Byte &HFF
  loc_C39806: FLdPr Me
  loc_C39809: VCallAd Control_ID_SeleTodoChk
  loc_C3980C: FStAdFunc var_EC
  loc_C3980F: FLdPr var_EC
  loc_C39812: Me.Enabled = from_stack_1b
  loc_C39817: FFree1Ad var_EC
  loc_C3981A: LitI2_Byte 0
  loc_C3981C: FLdPr Me
  loc_C3981F: VCallAd Control_ID_SeleTodoChk
  loc_C39822: FStAdFunc var_EC
  loc_C39825: FLdPr var_EC
  loc_C39828: Me.Value = from_stack_1
  loc_C3982D: FFree1Ad var_EC
  loc_C39830: LitVarStr var_114, vbNullString
  loc_C39835: PopAdLdVar
  loc_C39836: FLdPr Me
  loc_C39839: VCallAd Control_ID_FechVencMsk
  loc_C3983C: FStAdFunc var_EC
  loc_C3983F: FLdPr var_EC
  loc_C39842: LateIdSt
  loc_C39847: FFree1Ad var_EC
  loc_C3984A: FLdRfVar var_126
  loc_C3984D: FLdPr Me
  loc_C39850: VCallAd Control_ID_OficinaCbo
  loc_C39853: FStAdFunc var_EC
  loc_C39856: FLdPr var_EC
  loc_C39859:  = Me.ListIndex
  loc_C3985E: FLdI2 var_126
  loc_C39861: FStI2 var_128
  loc_C39864: FFree1Ad var_EC
  loc_C39867: FLdI2 var_128
  loc_C3986A: LitI2_Byte 0
  loc_C3986C: EqI2
  loc_C3986D: BranchF loc_C3987B
  loc_C39870: LitI2_Byte 1
  loc_C39872: CUI1I2
  loc_C39874: ImpAdStUI1 MemVar_D93038
  loc_C39878: Branch loc_C3988C
  loc_C3987B: FLdI2 var_128
  loc_C3987E: LitI2_Byte 1
  loc_C39880: EqI2
  loc_C39881: BranchF loc_C3988C
  loc_C39884: LitI2_Byte 2
  loc_C39886: CUI1I2
  loc_C39888: ImpAdStUI1 MemVar_D93038
  loc_C3988C: LitI2_Byte 0
  loc_C3988E: CR8I2
  loc_C3988F: FStFPR8 var_C8
  loc_C39892: LitI2_Byte 0
  loc_C39894: CR8I2
  loc_C39895: FStFPR8 var_D0
  loc_C39898: LitI2_Byte 0
  loc_C3989A: CR8I2
  loc_C3989B: FStFPR8 var_D8
  loc_C3989E: LitI2_Byte 0
  loc_C398A0: CR8I2
  loc_C398A1: FStFPR8 var_E0
  loc_C398A4: LitI2_Byte 0
  loc_C398A6: CR8I2
  loc_C398A7: FStFPR8 var_E8
  loc_C398AA: LitI4 1
  loc_C398AF: LitI4 1
  loc_C398B4: LitVarStr var_124, "0.00"
  loc_C398B9: FStVarCopyObj var_FC
  loc_C398BC: FLdRfVar var_FC
  loc_C398BF: FLdRfVar var_C8
  loc_C398C2: CVarRef
  loc_C398C7: FLdRfVar var_138
  loc_C398CA: ImpAdCallFPR4  = Format(, )
  loc_C398CF: FLdRfVar var_138
  loc_C398D2: CStrVarVal var_100
  loc_C398D6: FLdPr Me
  loc_C398D9: VCallAd Control_ID_txtTotaDere
  loc_C398DC: FStAdFunc var_EC
  loc_C398DF: FLdPr var_EC
  loc_C398E2: Me.Text = from_stack_1
  loc_C398E7: FFree1Str var_100
  loc_C398EA: FFree1Ad var_EC
  loc_C398ED: FFreeVar var_FC = ""
  loc_C398F4: LitI4 1
  loc_C398F9: LitI4 1
  loc_C398FE: LitVarStr var_124, "0.00"
  loc_C39903: FStVarCopyObj var_FC
  loc_C39906: FLdRfVar var_FC
  loc_C39909: FLdRfVar var_D0
  loc_C3990C: CVarRef
  loc_C39911: FLdRfVar var_138
  loc_C39914: ImpAdCallFPR4  = Format(, )
  loc_C39919: FLdRfVar var_138
  loc_C3991C: CStrVarVal var_100
  loc_C39920: FLdPr Me
  loc_C39923: VCallAd Control_ID_txtTotaExce
  loc_C39926: FStAdFunc var_EC
  loc_C39929: FLdPr var_EC
  loc_C3992C: Me.Text = from_stack_1
  loc_C39931: FFree1Str var_100
  loc_C39934: FFree1Ad var_EC
  loc_C39937: FFreeVar var_FC = ""
  loc_C3993E: LitI4 1
  loc_C39943: LitI4 1
  loc_C39948: LitVarStr var_124, "0.00"
  loc_C3994D: FStVarCopyObj var_FC
  loc_C39950: FLdRfVar var_FC
  loc_C39953: FLdRfVar var_D8
  loc_C39956: CVarRef
  loc_C3995B: FLdRfVar var_138
  loc_C3995E: ImpAdCallFPR4  = Format(, )
  loc_C39963: FLdRfVar var_138
  loc_C39966: CStrVarVal var_100
  loc_C3996A: FLdPr Me
  loc_C3996D: VCallAd Control_ID_txtTotaDesc
  loc_C39970: FStAdFunc var_EC
  loc_C39973: FLdPr var_EC
  loc_C39976: Me.Text = from_stack_1
  loc_C3997B: FFree1Str var_100
  loc_C3997E: FFree1Ad var_EC
  loc_C39981: FFreeVar var_FC = ""
  loc_C39988: LitI4 2
  loc_C3998D: FLdFPR8 var_C8
  loc_C39990: FLdFPR8 var_D0
  loc_C39993: SubR4
  loc_C39994: FLdFPR8 var_D8
  loc_C39997: SubR4
  loc_C39998: CVarR8
  loc_C3999C: FLdRfVar var_138
  loc_C3999F: ImpAdCallFPR4  = Round(, )
  loc_C399A4: FLdRfVar var_138
  loc_C399A7: CR4Var
  loc_C399A8: FStFPR8 var_E0
  loc_C399AB: FFreeVar var_FC = ""
  loc_C399B2: LitI4 1
  loc_C399B7: LitI4 1
  loc_C399BC: LitVarStr var_124, "0.00"
  loc_C399C1: FStVarCopyObj var_FC
  loc_C399C4: FLdRfVar var_FC
  loc_C399C7: FLdRfVar var_E0
  loc_C399CA: CVarRef
  loc_C399CF: FLdRfVar var_138
  loc_C399D2: ImpAdCallFPR4  = Format(, )
  loc_C399D7: FLdRfVar var_138
  loc_C399DA: CStrVarVal var_100
  loc_C399DE: FLdPr Me
  loc_C399E1: VCallAd Control_ID_txtTotal
  loc_C399E4: FStAdFunc var_EC
  loc_C399E7: FLdPr var_EC
  loc_C399EA: Me.Text = from_stack_1
  loc_C399EF: FFree1Str var_100
  loc_C399F2: FFree1Ad var_EC
  loc_C399F5: FFreeVar var_FC = ""
  loc_C399FC: LitI4 1
  loc_C39A01: LitI4 1
  loc_C39A06: LitVarStr var_124, "0.00"
  loc_C39A0B: FStVarCopyObj var_FC
  loc_C39A0E: FLdRfVar var_FC
  loc_C39A11: FLdRfVar var_E8
  loc_C39A14: CVarRef
  loc_C39A19: FLdRfVar var_138
  loc_C39A1C: ImpAdCallFPR4  = Format(, )
  loc_C39A21: FLdRfVar var_138
  loc_C39A24: CStrVarVal var_100
  loc_C39A28: FLdPr Me
  loc_C39A2B: VCallAd Control_ID_txtTotaSele
  loc_C39A2E: FStAdFunc var_EC
  loc_C39A31: FLdPr var_EC
  loc_C39A34: Me.Text = from_stack_1
  loc_C39A39: FFree1Str var_100
  loc_C39A3C: FFree1Ad var_EC
  loc_C39A3F: FFreeVar var_FC = ""
  loc_C39A46: FLdRfVar var_100
  loc_C39A49: FLdPr Me
  loc_C39A4C: VCallAd Control_ID_NumeCtaTxt
  loc_C39A4F: FStAdFunc var_EC
  loc_C39A52: FLdPr var_EC
  loc_C39A55:  = Me.Text
  loc_C39A5A: ILdRf var_100
  loc_C39A5D: ImpAdLdUI1
  loc_C39A61: FLdPr Me
  loc_C39A64: MemLdRfVar from_stack_1.global_56
  loc_C39A67: NewIfNullPr clsctacte
  loc_C39A6A: Call clsctacte.CreaTemporalAnticipodeTasas(from_stack_1v, from_stack_2v)
  loc_C39A6F: FFree1Str var_100
  loc_C39A72: FFree1Ad var_EC
  loc_C39A75: LitStr "SELECT * FROM tmp_anticipo"
  loc_C39A78: LitStr " ORDER BY tmp_anticipo.CodiOfic, tmp_anticipo.CuenCtct, tmp_anticipo.PeriCtct, tmp_anticipo.BimeCtct, tmp_anticipo.NumeCtct, tmp_anticipo.MoviCtct"
  loc_C39A7B: ConcatStr
  loc_C39A7C: FStStrNoPop var_100
  loc_C39A7F: FLdPr Me
  loc_C39A82: MemLdRfVar from_stack_1.global_56
  loc_C39A85: NewIfNullPr clsctacte
  loc_C39A88: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C39A8D: FFree1Str var_100
  loc_C39A90: FLdRfVar var_13C
  loc_C39A93: FLdPr Me
  loc_C39A96: MemLdRfVar from_stack_1.global_56
  loc_C39A99: NewIfNullPr clsctacte
  loc_C39A9C: from_stack_1 = clsctacte.RecordCount
  loc_C39AA1: ILdRf var_13C
  loc_C39AA4: LitI4 0
  loc_C39AA9: GtI4
  loc_C39AAA: BranchF loc_C3A289
  loc_C39AAD: FLdPr Me
  loc_C39AB0: MemLdRfVar from_stack_1.global_56
  loc_C39AB3: NewIfNullPr clsctacte
  loc_C39AB6: Call clsctacte.MoveFirst()
  loc_C39ABB: FLdRfVar var_126
  loc_C39ABE: FLdPr Me
  loc_C39AC1: MemLdRfVar from_stack_1.global_56
  loc_C39AC4: NewIfNullPr clsctacte
  loc_C39AC7: from_stack_1 = clsctacte.EOF
  loc_C39ACC: FLdI2 var_126
  loc_C39ACF: NotI4
  loc_C39AD0: BranchF loc_C3A137
  loc_C39AD3: FLdRfVar var_144
  loc_C39AD6: FLdPr Me
  loc_C39AD9: MemLdRfVar from_stack_1.global_56
  loc_C39ADC: NewIfNullPr clsctacte
  loc_C39ADF: from_stack_1 = clsctacte.TotaCtct
  loc_C39AE4: FLdFPR8 var_144
  loc_C39AE7: FnCDblR8
  loc_C39AE9: LitI2_Byte 0
  loc_C39AEB: CR8I2
  loc_C39AEC: GtR4
  loc_C39AED: BranchF loc_C3A126
  loc_C39AF0: FLdRfVar var_FC
  loc_C39AF3: FLdPr Me
  loc_C39AF6: MemLdRfVar from_stack_1.global_56
  loc_C39AF9: NewIfNullPr clsctacte
  loc_C39AFC: from_stack_1 = clsctacte.ImpoCtct
  loc_C39B01: LitI4 2
  loc_C39B06: FLdFPR8 var_C8
  loc_C39B09: FnCDblR8
  loc_C39B0B: FLdRfVar var_FC
  loc_C39B0E: FnCDblVar
  loc_C39B10: AddR8
  loc_C39B11: CVarR8
  loc_C39B15: FLdRfVar var_154
  loc_C39B18: ImpAdCallFPR4  = Round(, )
  loc_C39B1D: FLdRfVar var_154
  loc_C39B20: CR4Var
  loc_C39B21: FStFPR8 var_C8
  loc_C39B24: FFreeVar var_FC = "": var_FC = "": var_138 = ""
  loc_C39B2F: FLdRfVar var_FC
  loc_C39B32: FLdPr Me
  loc_C39B35: MemLdRfVar from_stack_1.global_56
  loc_C39B38: NewIfNullPr clsctacte
  loc_C39B3B: from_stack_1 = clsctacte.ExenCtct
  loc_C39B40: LitI4 2
  loc_C39B45: FLdFPR8 var_D0
  loc_C39B48: FnCDblR8
  loc_C39B4A: FLdRfVar var_FC
  loc_C39B4D: FnCDblVar
  loc_C39B4F: AddR8
  loc_C39B50: CVarR8
  loc_C39B54: FLdRfVar var_154
  loc_C39B57: ImpAdCallFPR4  = Round(, )
  loc_C39B5C: FLdRfVar var_154
  loc_C39B5F: CR4Var
  loc_C39B60: FStFPR8 var_D0
  loc_C39B63: FFreeVar var_FC = "": var_FC = "": var_138 = ""
  loc_C39B6E: FLdRfVar var_FC
  loc_C39B71: FLdPr Me
  loc_C39B74: MemLdRfVar from_stack_1.global_56
  loc_C39B77: NewIfNullPr clsctacte
  loc_C39B7A: from_stack_1 = clsctacte.DescCtct
  loc_C39B7F: LitI4 2
  loc_C39B84: FLdFPR8 var_D8
  loc_C39B87: FnCDblR8
  loc_C39B89: FLdRfVar var_FC
  loc_C39B8C: FnCDblVar
  loc_C39B8E: AddR8
  loc_C39B8F: CVarR8
  loc_C39B93: FLdRfVar var_154
  loc_C39B96: ImpAdCallFPR4  = Round(, )
  loc_C39B9B: FLdRfVar var_154
  loc_C39B9E: CR4Var
  loc_C39B9F: FStFPR8 var_D8
  loc_C39BA2: FFreeVar var_FC = "": var_FC = "": var_138 = ""
  loc_C39BAD: FLdRfVar var_144
  loc_C39BB0: FLdPr Me
  loc_C39BB3: MemLdRfVar from_stack_1.global_56
  loc_C39BB6: NewIfNullPr clsctacte
  loc_C39BB9: from_stack_1 = clsctacte.TotaCtct
  loc_C39BBE: LitI4 2
  loc_C39BC3: FLdFPR8 var_E0
  loc_C39BC6: FnCDblR8
  loc_C39BC8: FLdFPR8 var_144
  loc_C39BCB: FnCDblR8
  loc_C39BCD: AddR8
  loc_C39BCE: CVarR8
  loc_C39BD2: FLdRfVar var_138
  loc_C39BD5: ImpAdCallFPR4  = Round(, )
  loc_C39BDA: FLdRfVar var_138
  loc_C39BDD: CR4Var
  loc_C39BDE: FStFPR8 var_E0
  loc_C39BE1: FFreeVar var_FC = ""
  loc_C39BE8: FLdRfVar var_126
  loc_C39BEB: FLdPr Me
  loc_C39BEE: MemLdRfVar from_stack_1.global_56
  loc_C39BF1: NewIfNullPr clsctacte
  loc_C39BF4: from_stack_1 = clsctacte.BimeCtct
  loc_C39BF9: LitI4 1
  loc_C39BFE: LitI4 1
  loc_C39C03: LitVarStr var_124, "00"
  loc_C39C08: FStVarCopyObj var_138
  loc_C39C0B: FLdRfVar var_138
  loc_C39C0E: FLdI2 var_126
  loc_C39C11: CVarI2 var_FC
  loc_C39C14: FLdRfVar var_154
  loc_C39C17: ImpAdCallFPR4  = Format(, )
  loc_C39C1C: FLdRfVar var_154
  loc_C39C1F: LitVarStr var_164, "/"
  loc_C39C24: ConcatVar var_174
  loc_C39C28: FLdRfVar var_176
  loc_C39C2B: FLdPr Me
  loc_C39C2E: MemLdRfVar from_stack_1.global_56
  loc_C39C31: NewIfNullPr clsctacte
  loc_C39C34: from_stack_1 = clsctacte.PeriCtct
  loc_C39C39: FLdI2 var_176
  loc_C39C3C: CVarI2 var_188
  loc_C39C3F: ConcatVar var_198
  loc_C39C43: CStrVarTmp
  loc_C39C44: FLdRfVar var_92
  loc_C39C47: StFixedStrFree
  loc_C39C4B: FFreeVar var_FC = "": var_138 = "": var_154 = "": var_174 = ""
  loc_C39C58: FLdRfVar var_13C
  loc_C39C5B: FLdPr Me
  loc_C39C5E: MemLdRfVar from_stack_1.global_56
  loc_C39C61: NewIfNullPr clsctacte
  loc_C39C64: from_stack_1 = clsctacte.NumeBole
  loc_C39C69: LitI4 1
  loc_C39C6E: LitI4 1
  loc_C39C73: LitVarStr var_124, "#######0"
  loc_C39C78: FStVarCopyObj var_138
  loc_C39C7B: FLdRfVar var_138
  loc_C39C7E: ILdRf var_13C
  loc_C39C81: CVarI4
  loc_C39C85: FLdRfVar var_154
  loc_C39C88: ImpAdCallFPR4  = Format(, )
  loc_C39C8D: FLdRfVar var_154
  loc_C39C90: LitVarStr var_164, "-"
  loc_C39C95: ConcatVar var_174
  loc_C39C99: FLdRfVar var_126
  loc_C39C9C: FLdPr Me
  loc_C39C9F: MemLdRfVar from_stack_1.global_56
  loc_C39CA2: NewIfNullPr clsctacte
  loc_C39CA5: from_stack_1 = clsctacte.PeriBole
  loc_C39CAA: FLdI2 var_126
  loc_C39CAD: CVarI2 var_188
  loc_C39CB0: ConcatVar var_198
  loc_C39CB4: CStrVarTmp
  loc_C39CB5: FLdRfVar var_AC
  loc_C39CB8: StFixedStrFree
  loc_C39CBC: FFreeVar var_FC = "": var_138 = "": var_154 = "": var_174 = ""
  loc_C39CC9: FLdRfVar var_FC
  loc_C39CCC: FLdPr Me
  loc_C39CCF: MemLdRfVar from_stack_1.global_56
  loc_C39CD2: NewIfNullPr clsctacte
  loc_C39CD5: from_stack_1 = clsctacte.ImpoCtct
  loc_C39CDA: FLdRfVar var_FC
  loc_C39CDD: FnCDblVar
  loc_C39CDF: LitI2_Byte 0
  loc_C39CE1: CR8I2
  loc_C39CE2: NeR8
  loc_C39CE3: FFreeVar var_FC = ""
  loc_C39CEA: BranchF loc_C39D31
  loc_C39CED: FLdRfVar var_FC
  loc_C39CF0: FLdPr Me
  loc_C39CF3: MemLdRfVar from_stack_1.global_56
  loc_C39CF6: NewIfNullPr clsctacte
  loc_C39CF9: from_stack_1 = clsctacte.ImpoCtct
  loc_C39CFE: LitI4 1
  loc_C39D03: LitI4 1
  loc_C39D08: LitVarStr var_114, "###,###,##0.00"
  loc_C39D0D: FStVarCopyObj var_138
  loc_C39D10: FLdRfVar var_138
  loc_C39D13: FLdRfVar var_FC
  loc_C39D16: FLdRfVar var_154
  loc_C39D19: ImpAdCallFPR4  = Format(, )
  loc_C39D1E: FLdRfVar var_154
  loc_C39D21: CStrVarTmp
  loc_C39D22: FStStr var_B4
  loc_C39D25: FFreeVar var_FC = "": var_138 = ""
  loc_C39D2E: Branch loc_C39D37
  loc_C39D31: LitStr vbNullString
  loc_C39D34: FStStrCopy var_B4
  loc_C39D37: FLdRfVar var_FC
  loc_C39D3A: FLdPr Me
  loc_C39D3D: MemLdRfVar from_stack_1.global_56
  loc_C39D40: NewIfNullPr clsctacte
  loc_C39D43: from_stack_1 = clsctacte.ExenCtct
  loc_C39D48: FLdRfVar var_FC
  loc_C39D4B: FnCDblVar
  loc_C39D4D: LitI2_Byte 0
  loc_C39D4F: CR8I2
  loc_C39D50: NeR8
  loc_C39D51: FFreeVar var_FC = ""
  loc_C39D58: BranchF loc_C39D9F
  loc_C39D5B: FLdRfVar var_FC
  loc_C39D5E: FLdPr Me
  loc_C39D61: MemLdRfVar from_stack_1.global_56
  loc_C39D64: NewIfNullPr clsctacte
  loc_C39D67: from_stack_1 = clsctacte.ExenCtct
  loc_C39D6C: LitI4 1
  loc_C39D71: LitI4 1
  loc_C39D76: LitVarStr var_114, "###,###,##0.00"
  loc_C39D7B: FStVarCopyObj var_138
  loc_C39D7E: FLdRfVar var_138
  loc_C39D81: FLdRfVar var_FC
  loc_C39D84: FLdRfVar var_154
  loc_C39D87: ImpAdCallFPR4  = Format(, )
  loc_C39D8C: FLdRfVar var_154
  loc_C39D8F: CStrVarTmp
  loc_C39D90: FStStr var_B8
  loc_C39D93: FFreeVar var_FC = "": var_138 = ""
  loc_C39D9C: Branch loc_C39DA5
  loc_C39D9F: LitStr vbNullString
  loc_C39DA2: FStStrCopy var_B8
  loc_C39DA5: FLdRfVar var_FC
  loc_C39DA8: FLdPr Me
  loc_C39DAB: MemLdRfVar from_stack_1.global_56
  loc_C39DAE: NewIfNullPr clsctacte
  loc_C39DB1: from_stack_1 = clsctacte.DescCtct
  loc_C39DB6: FLdRfVar var_FC
  loc_C39DB9: FnCDblVar
  loc_C39DBB: LitI2_Byte 0
  loc_C39DBD: CR8I2
  loc_C39DBE: NeR8
  loc_C39DBF: FFreeVar var_FC = ""
  loc_C39DC6: BranchF loc_C39E0D
  loc_C39DC9: FLdRfVar var_FC
  loc_C39DCC: FLdPr Me
  loc_C39DCF: MemLdRfVar from_stack_1.global_56
  loc_C39DD2: NewIfNullPr clsctacte
  loc_C39DD5: from_stack_1 = clsctacte.DescCtct
  loc_C39DDA: LitI4 1
  loc_C39DDF: LitI4 1
  loc_C39DE4: LitVarStr var_114, "###,###,##0.00"
  loc_C39DE9: FStVarCopyObj var_138
  loc_C39DEC: FLdRfVar var_138
  loc_C39DEF: FLdRfVar var_FC
  loc_C39DF2: FLdRfVar var_154
  loc_C39DF5: ImpAdCallFPR4  = Format(, )
  loc_C39DFA: FLdRfVar var_154
  loc_C39DFD: CStrVarTmp
  loc_C39DFE: FStStr var_BC
  loc_C39E01: FFreeVar var_FC = "": var_138 = ""
  loc_C39E0A: Branch loc_C39E13
  loc_C39E0D: LitStr vbNullString
  loc_C39E10: FStStrCopy var_BC
  loc_C39E13: FLdRfVar var_144
  loc_C39E16: FLdPr Me
  loc_C39E19: MemLdRfVar from_stack_1.global_56
  loc_C39E1C: NewIfNullPr clsctacte
  loc_C39E1F: from_stack_1 = clsctacte.TotaCtct
  loc_C39E24: FLdFPR8 var_144
  loc_C39E27: FnCDblR8
  loc_C39E29: LitI2_Byte 0
  loc_C39E2B: CR8I2
  loc_C39E2C: NeR8
  loc_C39E2D: BranchF loc_C39E78
  loc_C39E30: FLdRfVar var_144
  loc_C39E33: FLdPr Me
  loc_C39E36: MemLdRfVar from_stack_1.global_56
  loc_C39E39: NewIfNullPr clsctacte
  loc_C39E3C: from_stack_1 = clsctacte.TotaCtct
  loc_C39E41: LitI4 1
  loc_C39E46: LitI4 1
  loc_C39E4B: LitVarStr var_124, "###,###,##0.00"
  loc_C39E50: FStVarCopyObj var_138
  loc_C39E53: FLdRfVar var_138
  loc_C39E56: FLdFPR8 var_144
  loc_C39E59: CVarR8
  loc_C39E5D: FLdRfVar var_154
  loc_C39E60: ImpAdCallFPR4  = Format(, )
  loc_C39E65: FLdRfVar var_154
  loc_C39E68: CStrVarTmp
  loc_C39E69: FStStr var_C0
  loc_C39E6C: FFreeVar var_FC = "": var_138 = ""
  loc_C39E75: Branch loc_C39E7E
  loc_C39E78: LitStr vbNullString
  loc_C39E7B: FStStrCopy var_C0
  loc_C39E7E: FLdRfVar var_126
  loc_C39E81: FLdPr Me
  loc_C39E84: MemLdRfVar from_stack_1.global_56
  loc_C39E87: NewIfNullPr clsctacte
  loc_C39E8A: from_stack_1 = clsctacte.CodiOfic
  loc_C39E8F: FLdI2 var_126
  loc_C39E92: CVarI2 var_114
  loc_C39E95: LitI4 9
  loc_C39E9A: FLdRfVar var_FC
  loc_C39E9D: ImpAdCallFPR4  = Chr()
  loc_C39EA2: FLdRfVar var_FC
  loc_C39EA5: ConcatVar var_138
  loc_C39EA9: FLdRfVar var_100
  loc_C39EAC: FLdPr Me
  loc_C39EAF: MemLdRfVar from_stack_1.global_56
  loc_C39EB2: NewIfNullPr clsctacte
  loc_C39EB5: from_stack_1 = clsctacte.CuenCtct
  loc_C39EBA: FLdZeroAd var_100
  loc_C39EBD: CVarStr var_154
  loc_C39EC0: ConcatVar var_174
  loc_C39EC4: LitI4 9
  loc_C39EC9: FLdRfVar var_198
  loc_C39ECC: ImpAdCallFPR4  = Chr()
  loc_C39ED1: FLdRfVar var_198
  loc_C39ED4: ConcatVar var_1A8
  loc_C39ED8: FLdRfVar var_92
  loc_C39EDB: LdFixedStr
  loc_C39EDE: CVarStr var_1B8
  loc_C39EE1: ConcatVar var_1C8
  loc_C39EE5: LitI4 9
  loc_C39EEA: FLdRfVar var_1D8
  loc_C39EED: ImpAdCallFPR4  = Chr()
  loc_C39EF2: FLdRfVar var_1D8
  loc_C39EF5: ConcatVar var_1E8
  loc_C39EF9: FLdRfVar var_AC
  loc_C39EFC: LdFixedStr
  loc_C39EFF: CVarStr var_1F8
  loc_C39F02: ConcatVar var_208
  loc_C39F06: LitI4 9
  loc_C39F0B: FLdRfVar var_218
  loc_C39F0E: ImpAdCallFPR4  = Chr()
  loc_C39F13: FLdRfVar var_218
  loc_C39F16: ConcatVar var_228
  loc_C39F1A: FLdRfVar var_104
  loc_C39F1D: FLdPr Me
  loc_C39F20: MemLdRfVar from_stack_1.global_56
  loc_C39F23: NewIfNullPr clsctacte
  loc_C39F26: from_stack_1 = clsctacte.FealCtct
  loc_C39F2B: FLdZeroAd var_104
  loc_C39F2E: CVarStr var_238
  loc_C39F31: ConcatVar var_248
  loc_C39F35: LitI4 9
  loc_C39F3A: FLdRfVar var_258
  loc_C39F3D: ImpAdCallFPR4  = Chr()
  loc_C39F42: FLdRfVar var_258
  loc_C39F45: ConcatVar var_268
  loc_C39F49: FLdRfVar var_278
  loc_C39F4C: FLdPr Me
  loc_C39F4F: MemLdRfVar from_stack_1.global_56
  loc_C39F52: NewIfNullPr clsctacte
  loc_C39F55: from_stack_1 = clsctacte.FeveCtct
  loc_C39F5A: FLdRfVar var_278
  loc_C39F5D: ConcatVar var_288
  loc_C39F61: LitI4 9
  loc_C39F66: FLdRfVar var_298
  loc_C39F69: ImpAdCallFPR4  = Chr()
  loc_C39F6E: FLdRfVar var_298
  loc_C39F71: ConcatVar var_2A8
  loc_C39F75: FLdRfVar var_2AC
  loc_C39F78: FLdPr Me
  loc_C39F7B: MemLdRfVar from_stack_1.global_56
  loc_C39F7E: NewIfNullPr clsctacte
  loc_C39F81: from_stack_1 = clsctacte.CodiConc
  loc_C39F86: FLdZeroAd var_2AC
  loc_C39F89: CVarStr var_2BC
  loc_C39F8C: ConcatVar var_2CC
  loc_C39F90: LitI4 9
  loc_C39F95: FLdRfVar var_2DC
  loc_C39F98: ImpAdCallFPR4  = Chr()
  loc_C39F9D: FLdRfVar var_2DC
  loc_C39FA0: ConcatVar var_2EC
  loc_C39FA4: LitVarStr var_124, "Aforos"
  loc_C39FA9: ConcatVar var_2FC
  loc_C39FAD: LitI4 9
  loc_C39FB2: FLdRfVar var_30C
  loc_C39FB5: ImpAdCallFPR4  = Chr()
  loc_C39FBA: FLdRfVar var_30C
  loc_C39FBD: ConcatVar var_31C
  loc_C39FC1: ILdRf var_B4
  loc_C39FC4: CVarStr var_164
  loc_C39FC7: ConcatVar var_32C
  loc_C39FCB: LitI4 9
  loc_C39FD0: FLdRfVar var_33C
  loc_C39FD3: ImpAdCallFPR4  = Chr()
  loc_C39FD8: FLdRfVar var_33C
  loc_C39FDB: ConcatVar var_34C
  loc_C39FDF: ILdRf var_B8
  loc_C39FE2: CVarStr var_188
  loc_C39FE5: ConcatVar var_35C
  loc_C39FE9: LitI4 9
  loc_C39FEE: FLdRfVar var_36C
  loc_C39FF1: ImpAdCallFPR4  = Chr()
  loc_C39FF6: FLdRfVar var_36C
  loc_C39FF9: ConcatVar var_37C
  loc_C39FFD: ILdRf var_BC
  loc_C3A000: CVarStr var_38C
  loc_C3A003: ConcatVar var_39C
  loc_C3A007: LitI4 9
  loc_C3A00C: FLdRfVar var_3AC
  loc_C3A00F: ImpAdCallFPR4  = Chr()
  loc_C3A014: FLdRfVar var_3AC
  loc_C3A017: ConcatVar var_3BC
  loc_C3A01B: ILdRf var_C0
  loc_C3A01E: CVarStr var_3CC
  loc_C3A021: ConcatVar var_3DC
  loc_C3A025: LitI4 9
  loc_C3A02A: FLdRfVar var_3EC
  loc_C3A02D: ImpAdCallFPR4  = Chr()
  loc_C3A032: FLdRfVar var_3EC
  loc_C3A035: ConcatVar var_3FC
  loc_C3A039: LitVarStr var_40C, "No"
  loc_C3A03E: ConcatVar var_41C
  loc_C3A042: LitI4 9
  loc_C3A047: FLdRfVar var_42C
  loc_C3A04A: ImpAdCallFPR4  = Chr()
  loc_C3A04F: FLdRfVar var_42C
  loc_C3A052: ConcatVar var_43C
  loc_C3A056: FLdRfVar var_13C
  loc_C3A059: FLdPr Me
  loc_C3A05C: MemLdRfVar from_stack_1.global_56
  loc_C3A05F: NewIfNullPr clsctacte
  loc_C3A062: from_stack_1 = clsctacte.NumeCtct
  loc_C3A067: ILdRf var_13C
  loc_C3A06A: CVarI4
  loc_C3A06E: ConcatVar var_45C
  loc_C3A072: LitI4 9
  loc_C3A077: FLdRfVar var_46C
  loc_C3A07A: ImpAdCallFPR4  = Chr()
  loc_C3A07F: FLdRfVar var_46C
  loc_C3A082: ConcatVar var_47C
  loc_C3A086: FLdRfVar var_176
  loc_C3A089: FLdPr Me
  loc_C3A08C: MemLdRfVar from_stack_1.global_56
  loc_C3A08F: NewIfNullPr clsctacte
  loc_C3A092: from_stack_1 = clsctacte.MoviCtct
  loc_C3A097: FLdI2 var_176
  loc_C3A09A: CVarI2 var_48C
  loc_C3A09D: ConcatVar var_49C
  loc_C3A0A1: CStrVarTmp
  loc_C3A0A2: FStStr var_B0
  loc_C3A0A5: FFreeVar var_33C = "": var_34C = "": var_35C = "": var_36C = "": var_37C = "": var_39C = "": var_3AC = "": var_3BC = "": var_3DC = "": var_3EC = "": var_3FC = "": var_41C = "": var_42C = "": var_43C = "": var_45C = "": var_46C = "": var_47C = "": var_49C = "": var_FC = "": var_138 = "": var_154 = "": var_174 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = ""
  loc_C3A108: FLdRfVar var_B0
  loc_C3A10B: CDargRef
  loc_C3A10F: FLdPr Me
  loc_C3A112: VCallAd Control_ID_ctacteFlex
  loc_C3A115: FStAdFunc var_EC
  loc_C3A118: FLdPr var_EC
  loc_C3A11B: LateIdCall
  loc_C3A123: FFree1Ad var_EC
  loc_C3A126: FLdPr Me
  loc_C3A129: MemLdRfVar from_stack_1.global_56
  loc_C3A12C: NewIfNullPr clsctacte
  loc_C3A12F: Call clsctacte.MoveSiguiente()
  loc_C3A134: Branch loc_C39ABB
  loc_C3A137: LitI4 1
  loc_C3A13C: LitI4 1
  loc_C3A141: LitVarStr var_124, "###,###,##0.00"
  loc_C3A146: FStVarCopyObj var_FC
  loc_C3A149: FLdRfVar var_FC
  loc_C3A14C: FLdRfVar var_C8
  loc_C3A14F: CVarRef
  loc_C3A154: FLdRfVar var_138
  loc_C3A157: ImpAdCallFPR4  = Format(, )
  loc_C3A15C: FLdRfVar var_138
  loc_C3A15F: CStrVarVal var_100
  loc_C3A163: FLdPr Me
  loc_C3A166: VCallAd Control_ID_txtTotaDere
  loc_C3A169: FStAdFunc var_EC
  loc_C3A16C: FLdPr var_EC
  loc_C3A16F: Me.Text = from_stack_1
  loc_C3A174: FFree1Str var_100
  loc_C3A177: FFree1Ad var_EC
  loc_C3A17A: FFreeVar var_FC = ""
  loc_C3A181: LitI4 1
  loc_C3A186: LitI4 1
  loc_C3A18B: LitVarStr var_124, "###,###,##0.00"
  loc_C3A190: FStVarCopyObj var_FC
  loc_C3A193: FLdRfVar var_FC
  loc_C3A196: FLdRfVar var_D0
  loc_C3A199: CVarRef
  loc_C3A19E: FLdRfVar var_138
  loc_C3A1A1: ImpAdCallFPR4  = Format(, )
  loc_C3A1A6: FLdRfVar var_138
  loc_C3A1A9: CStrVarVal var_100
  loc_C3A1AD: FLdPr Me
  loc_C3A1B0: VCallAd Control_ID_txtTotaExce
  loc_C3A1B3: FStAdFunc var_EC
  loc_C3A1B6: FLdPr var_EC
  loc_C3A1B9: Me.Text = from_stack_1
  loc_C3A1BE: FFree1Str var_100
  loc_C3A1C1: FFree1Ad var_EC
  loc_C3A1C4: FFreeVar var_FC = ""
  loc_C3A1CB: LitI4 1
  loc_C3A1D0: LitI4 1
  loc_C3A1D5: LitVarStr var_124, "###,###,##0.00"
  loc_C3A1DA: FStVarCopyObj var_FC
  loc_C3A1DD: FLdRfVar var_FC
  loc_C3A1E0: FLdRfVar var_D8
  loc_C3A1E3: CVarRef
  loc_C3A1E8: FLdRfVar var_138
  loc_C3A1EB: ImpAdCallFPR4  = Format(, )
  loc_C3A1F0: FLdRfVar var_138
  loc_C3A1F3: CStrVarVal var_100
  loc_C3A1F7: FLdPr Me
  loc_C3A1FA: VCallAd Control_ID_txtTotaDesc
  loc_C3A1FD: FStAdFunc var_EC
  loc_C3A200: FLdPr var_EC
  loc_C3A203: Me.Text = from_stack_1
  loc_C3A208: FFree1Str var_100
  loc_C3A20B: FFree1Ad var_EC
  loc_C3A20E: FFreeVar var_FC = ""
  loc_C3A215: LitI4 2
  loc_C3A21A: FLdFPR8 var_C8
  loc_C3A21D: FLdFPR8 var_D0
  loc_C3A220: SubR4
  loc_C3A221: FLdFPR8 var_D8
  loc_C3A224: SubR4
  loc_C3A225: CVarR8
  loc_C3A229: FLdRfVar var_138
  loc_C3A22C: ImpAdCallFPR4  = Round(, )
  loc_C3A231: FLdRfVar var_138
  loc_C3A234: CR4Var
  loc_C3A235: FStFPR8 var_E0
  loc_C3A238: FFreeVar var_FC = ""
  loc_C3A23F: LitI4 1
  loc_C3A244: LitI4 1
  loc_C3A249: LitVarStr var_124, "0.00"
  loc_C3A24E: FStVarCopyObj var_FC
  loc_C3A251: FLdRfVar var_FC
  loc_C3A254: FLdRfVar var_E0
  loc_C3A257: CVarRef
  loc_C3A25C: FLdRfVar var_138
  loc_C3A25F: ImpAdCallFPR4  = Format(, )
  loc_C3A264: FLdRfVar var_138
  loc_C3A267: CStrVarVal var_100
  loc_C3A26B: FLdPr Me
  loc_C3A26E: VCallAd Control_ID_txtTotal
  loc_C3A271: FStAdFunc var_EC
  loc_C3A274: FLdPr var_EC
  loc_C3A277: Me.Text = from_stack_1
  loc_C3A27C: FFree1Str var_100
  loc_C3A27F: FFree1Ad var_EC
  loc_C3A282: FFreeVar var_FC = ""
  loc_C3A289: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_C3A28E: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_0 '9CBF7C
  'Data Table: 4B8698
  loc_9CBF64: FLdPr Me
  loc_9CBF67: VCallAd Control_ID_ctacteFlex
  loc_9CBF6A: FStAdFunc var_88
  loc_9CBF6D: FLdRfVar var_88
  loc_9CBF70: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CBF75: FFree1Ad var_88
  loc_9CBF78: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_1 '9CBEE4
  'Data Table: 4B8698
  loc_9CBECC: FLdPr Me
  loc_9CBECF: VCallAd Control_ID_ctacteFlex
  loc_9CBED2: FStAdFunc var_88
  loc_9CBED5: FLdRfVar var_88
  loc_9CBED8: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CBEDD: FFree1Ad var_88
  loc_9CBEE0: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'BDDF08
  'Data Table: 4B8698
  loc_BDD7E4: FLdPr Me
  loc_BDD7E7: VCallAd Control_ID_ctacteFlex
  loc_BDD7EA: FStAdFunc var_88
  loc_BDD7ED: FLdPr var_88
  loc_BDD7F0: LateIdLdVar var_98 DispID_4 0
  loc_BDD7F7: CI4Var
  loc_BDD7F9: LitI4 1
  loc_BDD7FE: GtI4
  loc_BDD7FF: FFree1Ad var_88
  loc_BDD802: FFree1Var var_98 = ""
  loc_BDD805: BranchF loc_BDDEBA
  loc_BDD808: LitI2_Byte 0
  loc_BDD80A: FLdPr Me
  loc_BDD80D: MemLdRfVar from_stack_1.global_84
  loc_BDD810: FLdPr Me
  loc_BDD813: VCallAd Control_ID_ctacteFlex
  loc_BDD816: FStAdFunc var_88
  loc_BDD819: FLdPr var_88
  loc_BDD81C: LateIdLdVar var_98 DispID_5 0
  loc_BDD823: CI4Var
  loc_BDD825: LitI4 1
  loc_BDD82A: SubI4
  loc_BDD82B: CI2I4
  loc_BDD82C: FFree1Ad var_88
  loc_BDD82F: FFree1Var var_98 = ""
  loc_BDD832: ForI2 var_9C
  loc_BDD838: FLdPr Me
  loc_BDD83B: MemLdI2 global_84
  loc_BDD83E: CI4UI1
  loc_BDD83F: CVarI4
  loc_BDD843: PopAdLdVar
  loc_BDD844: FLdPr Me
  loc_BDD847: VCallAd Control_ID_ctacteFlex
  loc_BDD84A: FStAdFunc var_88
  loc_BDD84D: FLdPr var_88
  loc_BDD850: LateIdSt
  loc_BDD855: FFree1Ad var_88
  loc_BDD858: FLdPr Me
  loc_BDD85B: VCallAd Control_ID_ctacteFlex
  loc_BDD85E: FStAdFunc var_88
  loc_BDD861: FLdPr var_88
  loc_BDD864: LateIdLdVar var_98 DispID_38 0
  loc_BDD86B: CI4Var
  loc_BDD86D: LitI4 &HFFFF80
  loc_BDD872: EqI4
  loc_BDD873: FFree1Ad var_88
  loc_BDD876: FFree1Var var_98 = ""
  loc_BDD879: BranchF loc_BDDB97
  loc_BDD87C: LitVarI4
  loc_BDD884: PopAdLdVar
  loc_BDD885: FLdPr Me
  loc_BDD888: VCallAd Control_ID_ctacteFlex
  loc_BDD88B: FStAdFunc var_88
  loc_BDD88E: FLdPr var_88
  loc_BDD891: LateIdSt
  loc_BDD896: FFree1Ad var_88
  loc_BDD899: FLdPr Me
  loc_BDD89C: VCallAd Control_ID_ctacteFlex
  loc_BDD89F: FStAdFunc var_88
  loc_BDD8A2: FLdPr var_88
  loc_BDD8A5: LateIdLdVar var_98 DispID_10 0
  loc_BDD8AC: CI4Var
  loc_BDD8AE: CVarI4
  loc_BDD8B2: PopAdLdVar
  loc_BDD8B3: LitVarI4
  loc_BDD8BB: PopAdLdVar
  loc_BDD8BC: LitVarStr var_EC, "No"
  loc_BDD8C1: PopAdLdVar
  loc_BDD8C2: FLdPr Me
  loc_BDD8C5: VCallAd Control_ID_ctacteFlex
  loc_BDD8C8: FStAdFunc var_100
  loc_BDD8CB: FLdPr var_100
  loc_BDD8CE: LateIdCallSt
  loc_BDD8D6: FFreeAd var_88 = ""
  loc_BDD8DD: FFree1Var var_98 = ""
  loc_BDD8E0: FLdPr Me
  loc_BDD8E3: MemLdI2 global_84
  loc_BDD8E6: LitI2_Byte 0
  loc_BDD8E8: EqI2
  loc_BDD8E9: BranchF loc_BDDB0A
  loc_BDD8EC: FLdPr Me
  loc_BDD8EF: VCallAd Control_ID_ctacteFlex
  loc_BDD8F2: FStAdFunc var_88
  loc_BDD8F5: FLdPr var_88
  loc_BDD8F8: LateIdLdVar var_98 DispID_10 0
  loc_BDD8FF: CI4Var
  loc_BDD901: CVarI4
  loc_BDD905: PopAdLdVar
  loc_BDD906: LitVarI4
  loc_BDD90E: PopAdLdVar
  loc_BDD90F: FLdPr Me
  loc_BDD912: VCallAd Control_ID_ctacteFlex
  loc_BDD915: FStAdFunc var_100
  loc_BDD918: FLdPr var_100
  loc_BDD91B: LateIdCallLdVar
  loc_BDD925: PopAd
  loc_BDD927: FLdPr Me
  loc_BDD92A: VCallAd Control_ID_ctacteFlex
  loc_BDD92D: FStAdFunc var_114
  loc_BDD930: FLdPr var_114
  loc_BDD933: LateIdLdVar var_124 DispID_10 0
  loc_BDD93A: CI4Var
  loc_BDD93C: CVarI4
  loc_BDD940: PopAdLdVar
  loc_BDD941: LitVarI4
  loc_BDD949: PopAdLdVar
  loc_BDD94A: FLdPr Me
  loc_BDD94D: VCallAd Control_ID_ctacteFlex
  loc_BDD950: FStAdFunc var_148
  loc_BDD953: FLdPr var_148
  loc_BDD956: LateIdCallLdVar
  loc_BDD960: PopAd
  loc_BDD962: FLdPr Me
  loc_BDD965: VCallAd Control_ID_ctacteFlex
  loc_BDD968: FStAdFunc var_15C
  loc_BDD96B: FLdPr var_15C
  loc_BDD96E: LateIdLdVar var_16C DispID_10 0
  loc_BDD975: CI4Var
  loc_BDD977: CVarI4
  loc_BDD97B: PopAdLdVar
  loc_BDD97C: LitVarI4
  loc_BDD984: PopAdLdVar
  loc_BDD985: FLdPr Me
  loc_BDD988: VCallAd Control_ID_ctacteFlex
  loc_BDD98B: FStAdFunc var_1B0
  loc_BDD98E: FLdPr var_1B0
  loc_BDD991: LateIdCallLdVar
  loc_BDD99B: PopAd
  loc_BDD99D: LitVarI2 var_1F0, 4
  loc_BDD9A2: LitI4 4
  loc_BDD9A7: FLdRfVar var_1C0
  loc_BDD9AA: CStrVarTmp
  loc_BDD9AB: CVarStr var_1D0
  loc_BDD9AE: FLdRfVar var_200
  loc_BDD9B1: ImpAdCallFPR4  = Mid(, , )
  loc_BDD9B6: FLdPr Me
  loc_BDD9B9: VCallAd Control_ID_ctacteFlex
  loc_BDD9BC: FStAdFunc var_204
  loc_BDD9BF: FLdPr var_204
  loc_BDD9C2: LateIdLdVar var_214 DispID_10 0
  loc_BDD9C9: CI4Var
  loc_BDD9CB: CVarI4
  loc_BDD9CF: PopAdLdVar
  loc_BDD9D0: LitVarI4
  loc_BDD9D8: PopAdLdVar
  loc_BDD9D9: FLdPr Me
  loc_BDD9DC: VCallAd Control_ID_ctacteFlex
  loc_BDD9DF: FStAdFunc var_258
  loc_BDD9E2: FLdPr var_258
  loc_BDD9E5: LateIdCallLdVar
  loc_BDD9EF: PopAd
  loc_BDD9F1: LitVarI2 var_298, 2
  loc_BDD9F6: LitI4 1
  loc_BDD9FB: FLdRfVar var_268
  loc_BDD9FE: CStrVarTmp
  loc_BDD9FF: CVarStr var_278
  loc_BDDA02: FLdRfVar var_2A8
  loc_BDDA05: ImpAdCallFPR4  = Mid(, , )
  loc_BDDA0A: FLdPr Me
  loc_BDDA0D: VCallAd Control_ID_ctacteFlex
  loc_BDDA10: FStAdFunc var_2AC
  loc_BDDA13: FLdPr var_2AC
  loc_BDDA16: LateIdLdVar var_2BC DispID_10 0
  loc_BDDA1D: CI4Var
  loc_BDDA1F: CVarI4
  loc_BDDA23: PopAdLdVar
  loc_BDDA24: LitVarI4
  loc_BDDA2C: PopAdLdVar
  loc_BDDA2D: FLdPr Me
  loc_BDDA30: VCallAd Control_ID_ctacteFlex
  loc_BDDA33: FStAdFunc var_300
  loc_BDDA36: FLdPr var_300
  loc_BDDA39: LateIdCallLdVar
  loc_BDDA43: PopAd
  loc_BDDA45: FLdPr Me
  loc_BDDA48: VCallAd Control_ID_ctacteFlex
  loc_BDDA4B: FStAdFunc var_314
  loc_BDDA4E: FLdPr var_314
  loc_BDDA51: LateIdLdVar var_324 DispID_10 0
  loc_BDDA58: CI4Var
  loc_BDDA5A: CVarI4
  loc_BDDA5E: PopAdLdVar
  loc_BDDA5F: LitVarI4
  loc_BDDA67: PopAdLdVar
  loc_BDDA68: FLdPr Me
  loc_BDDA6B: VCallAd Control_ID_ctacteFlex
  loc_BDDA6E: FStAdFunc var_368
  loc_BDDA71: FLdPr var_368
  loc_BDDA74: LateIdCallLdVar
  loc_BDDA7E: PopAd
  loc_BDDA80: LitStr "tmp_anticipo"
  loc_BDDA83: LitStr "No"
  loc_BDDA86: FLdRfVar var_378
  loc_BDDA89: CStrVarTmp
  loc_BDDA8A: FStStrNoPop var_388
  loc_BDDA8D: CI2Str
  loc_BDDA8F: FLdRfVar var_310
  loc_BDDA92: CStrVarTmp
  loc_BDDA93: FStStrNoPop var_384
  loc_BDDA96: CI4Str
  loc_BDDA97: FLdRfVar var_2A8
  loc_BDDA9A: CI2Var
  loc_BDDA9B: FLdRfVar var_200
  loc_BDDA9E: CI2Var
  loc_BDDA9F: FLdRfVar var_158
  loc_BDDAA2: CStrVarTmp
  loc_BDDAA3: FStStrNoPop var_380
  loc_BDDAA6: FLdRfVar var_110
  loc_BDDAA9: CStrVarTmp
  loc_BDDAAA: FStStrNoPop var_37C
  loc_BDDAAD: CUI1Str
  loc_BDDAAF: FLdPr Me
  loc_BDDAB2: MemLdRfVar from_stack_1.global_56
  loc_BDDAB5: NewIfNullPr clsctacte
  loc_BDDAB8: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BDDABD: FFreeStr var_37C = "": var_380 = "": var_384 = ""
  loc_BDDAC8: FFreeAd var_88 = "": var_100 = "": var_114 = "": var_148 = "": var_15C = "": var_1B0 = "": var_204 = "": var_258 = "": var_2AC = "": var_300 = "": var_314 = ""
  loc_BDDAE3: FFreeVar var_98 = "": var_110 = "": var_124 = "": var_158 = "": var_16C = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_214 = "": var_268 = "": var_278 = "": var_298 = "": var_2BC = "": var_310 = "": var_324 = "": var_378 = "": var_200 = ""
  loc_BDDB0A: FLdPr Me
  loc_BDDB0D: MemLdI2 global_84
  loc_BDDB10: LitI2_Byte &HB
  loc_BDDB12: EqI2
  loc_BDDB13: BranchF loc_BDDB94
  loc_BDDB16: FLdPr Me
  loc_BDDB19: VCallAd Control_ID_ctacteFlex
  loc_BDDB1C: FStAdFunc var_88
  loc_BDDB1F: FLdPr var_88
  loc_BDDB22: LateIdLdVar var_98 DispID_10 0
  loc_BDDB29: CI4Var
  loc_BDDB2B: CVarI4
  loc_BDDB2F: PopAdLdVar
  loc_BDDB30: FLdPr Me
  loc_BDDB33: MemLdI2 global_84
  loc_BDDB36: CI4UI1
  loc_BDDB37: CVarI4
  loc_BDDB3B: PopAdLdVar
  loc_BDDB3C: FLdPr Me
  loc_BDDB3F: VCallAd Control_ID_ctacteFlex
  loc_BDDB42: FStAdFunc var_100
  loc_BDDB45: FLdPr var_100
  loc_BDDB48: LateIdCallLdVar
  loc_BDDB52: PopAd
  loc_BDDB54: LitI4 2
  loc_BDDB59: FLdPr Me
  loc_BDDB5C: MemLdFPR8 global_88
  loc_BDDB5F: FLdRfVar var_110
  loc_BDDB62: CStrVarTmp
  loc_BDDB63: FStStrNoPop var_37C
  loc_BDDB66: CR8Str
  loc_BDDB68: SubR4
  loc_BDDB69: CVarR8
  loc_BDDB6D: FLdRfVar var_158
  loc_BDDB70: ImpAdCallFPR4  = Round(, )
  loc_BDDB75: FLdRfVar var_158
  loc_BDDB78: CR4Var
  loc_BDDB79: FLdPr Me
  loc_BDDB7C: MemStFPR8 global_88
  loc_BDDB7F: FFree1Str var_37C
  loc_BDDB82: FFreeAd var_88 = ""
  loc_BDDB89: FFreeVar var_98 = "": var_110 = "": var_124 = ""
  loc_BDDB94: Branch loc_BDDEAF
  loc_BDDB97: LitVarI4
  loc_BDDB9F: PopAdLdVar
  loc_BDDBA0: FLdPr Me
  loc_BDDBA3: VCallAd Control_ID_ctacteFlex
  loc_BDDBA6: FStAdFunc var_88
  loc_BDDBA9: FLdPr var_88
  loc_BDDBAC: LateIdSt
  loc_BDDBB1: FFree1Ad var_88
  loc_BDDBB4: FLdPr Me
  loc_BDDBB7: VCallAd Control_ID_ctacteFlex
  loc_BDDBBA: FStAdFunc var_88
  loc_BDDBBD: FLdPr var_88
  loc_BDDBC0: LateIdLdVar var_98 DispID_10 0
  loc_BDDBC7: CI4Var
  loc_BDDBC9: CVarI4
  loc_BDDBCD: PopAdLdVar
  loc_BDDBCE: LitVarI4
  loc_BDDBD6: PopAdLdVar
  loc_BDDBD7: LitVarStr var_EC, "Si"
  loc_BDDBDC: PopAdLdVar
  loc_BDDBDD: FLdPr Me
  loc_BDDBE0: VCallAd Control_ID_ctacteFlex
  loc_BDDBE3: FStAdFunc var_100
  loc_BDDBE6: FLdPr var_100
  loc_BDDBE9: LateIdCallSt
  loc_BDDBF1: FFreeAd var_88 = ""
  loc_BDDBF8: FFree1Var var_98 = ""
  loc_BDDBFB: FLdPr Me
  loc_BDDBFE: MemLdI2 global_84
  loc_BDDC01: LitI2_Byte 0
  loc_BDDC03: EqI2
  loc_BDDC04: BranchF loc_BDDE25
  loc_BDDC07: FLdPr Me
  loc_BDDC0A: VCallAd Control_ID_ctacteFlex
  loc_BDDC0D: FStAdFunc var_88
  loc_BDDC10: FLdPr var_88
  loc_BDDC13: LateIdLdVar var_98 DispID_10 0
  loc_BDDC1A: CI4Var
  loc_BDDC1C: CVarI4
  loc_BDDC20: PopAdLdVar
  loc_BDDC21: LitVarI4
  loc_BDDC29: PopAdLdVar
  loc_BDDC2A: FLdPr Me
  loc_BDDC2D: VCallAd Control_ID_ctacteFlex
  loc_BDDC30: FStAdFunc var_100
  loc_BDDC33: FLdPr var_100
  loc_BDDC36: LateIdCallLdVar
  loc_BDDC40: PopAd
  loc_BDDC42: FLdPr Me
  loc_BDDC45: VCallAd Control_ID_ctacteFlex
  loc_BDDC48: FStAdFunc var_114
  loc_BDDC4B: FLdPr var_114
  loc_BDDC4E: LateIdLdVar var_124 DispID_10 0
  loc_BDDC55: CI4Var
  loc_BDDC57: CVarI4
  loc_BDDC5B: PopAdLdVar
  loc_BDDC5C: LitVarI4
  loc_BDDC64: PopAdLdVar
  loc_BDDC65: FLdPr Me
  loc_BDDC68: VCallAd Control_ID_ctacteFlex
  loc_BDDC6B: FStAdFunc var_148
  loc_BDDC6E: FLdPr var_148
  loc_BDDC71: LateIdCallLdVar
  loc_BDDC7B: PopAd
  loc_BDDC7D: FLdPr Me
  loc_BDDC80: VCallAd Control_ID_ctacteFlex
  loc_BDDC83: FStAdFunc var_15C
  loc_BDDC86: FLdPr var_15C
  loc_BDDC89: LateIdLdVar var_16C DispID_10 0
  loc_BDDC90: CI4Var
  loc_BDDC92: CVarI4
  loc_BDDC96: PopAdLdVar
  loc_BDDC97: LitVarI4
  loc_BDDC9F: PopAdLdVar
  loc_BDDCA0: FLdPr Me
  loc_BDDCA3: VCallAd Control_ID_ctacteFlex
  loc_BDDCA6: FStAdFunc var_1B0
  loc_BDDCA9: FLdPr var_1B0
  loc_BDDCAC: LateIdCallLdVar
  loc_BDDCB6: PopAd
  loc_BDDCB8: LitVarI2 var_1F0, 4
  loc_BDDCBD: LitI4 4
  loc_BDDCC2: FLdRfVar var_1C0
  loc_BDDCC5: CStrVarTmp
  loc_BDDCC6: CVarStr var_1D0
  loc_BDDCC9: FLdRfVar var_200
  loc_BDDCCC: ImpAdCallFPR4  = Mid(, , )
  loc_BDDCD1: FLdPr Me
  loc_BDDCD4: VCallAd Control_ID_ctacteFlex
  loc_BDDCD7: FStAdFunc var_204
  loc_BDDCDA: FLdPr var_204
  loc_BDDCDD: LateIdLdVar var_214 DispID_10 0
  loc_BDDCE4: CI4Var
  loc_BDDCE6: CVarI4
  loc_BDDCEA: PopAdLdVar
  loc_BDDCEB: LitVarI4
  loc_BDDCF3: PopAdLdVar
  loc_BDDCF4: FLdPr Me
  loc_BDDCF7: VCallAd Control_ID_ctacteFlex
  loc_BDDCFA: FStAdFunc var_258
  loc_BDDCFD: FLdPr var_258
  loc_BDDD00: LateIdCallLdVar
  loc_BDDD0A: PopAd
  loc_BDDD0C: LitVarI2 var_298, 2
  loc_BDDD11: LitI4 1
  loc_BDDD16: FLdRfVar var_268
  loc_BDDD19: CStrVarTmp
  loc_BDDD1A: CVarStr var_278
  loc_BDDD1D: FLdRfVar var_2A8
  loc_BDDD20: ImpAdCallFPR4  = Mid(, , )
  loc_BDDD25: FLdPr Me
  loc_BDDD28: VCallAd Control_ID_ctacteFlex
  loc_BDDD2B: FStAdFunc var_2AC
  loc_BDDD2E: FLdPr var_2AC
  loc_BDDD31: LateIdLdVar var_2BC DispID_10 0
  loc_BDDD38: CI4Var
  loc_BDDD3A: CVarI4
  loc_BDDD3E: PopAdLdVar
  loc_BDDD3F: LitVarI4
  loc_BDDD47: PopAdLdVar
  loc_BDDD48: FLdPr Me
  loc_BDDD4B: VCallAd Control_ID_ctacteFlex
  loc_BDDD4E: FStAdFunc var_300
  loc_BDDD51: FLdPr var_300
  loc_BDDD54: LateIdCallLdVar
  loc_BDDD5E: PopAd
  loc_BDDD60: FLdPr Me
  loc_BDDD63: VCallAd Control_ID_ctacteFlex
  loc_BDDD66: FStAdFunc var_314
  loc_BDDD69: FLdPr var_314
  loc_BDDD6C: LateIdLdVar var_324 DispID_10 0
  loc_BDDD73: CI4Var
  loc_BDDD75: CVarI4
  loc_BDDD79: PopAdLdVar
  loc_BDDD7A: LitVarI4
  loc_BDDD82: PopAdLdVar
  loc_BDDD83: FLdPr Me
  loc_BDDD86: VCallAd Control_ID_ctacteFlex
  loc_BDDD89: FStAdFunc var_368
  loc_BDDD8C: FLdPr var_368
  loc_BDDD8F: LateIdCallLdVar
  loc_BDDD99: PopAd
  loc_BDDD9B: LitStr "tmp_anticipo"
  loc_BDDD9E: LitStr "Si"
  loc_BDDDA1: FLdRfVar var_378
  loc_BDDDA4: CStrVarTmp
  loc_BDDDA5: FStStrNoPop var_388
  loc_BDDDA8: CI2Str
  loc_BDDDAA: FLdRfVar var_310
  loc_BDDDAD: CStrVarTmp
  loc_BDDDAE: FStStrNoPop var_384
  loc_BDDDB1: CI4Str
  loc_BDDDB2: FLdRfVar var_2A8
  loc_BDDDB5: CI2Var
  loc_BDDDB6: FLdRfVar var_200
  loc_BDDDB9: CI2Var
  loc_BDDDBA: FLdRfVar var_158
  loc_BDDDBD: CStrVarTmp
  loc_BDDDBE: FStStrNoPop var_380
  loc_BDDDC1: FLdRfVar var_110
  loc_BDDDC4: CStrVarTmp
  loc_BDDDC5: FStStrNoPop var_37C
  loc_BDDDC8: CUI1Str
  loc_BDDDCA: FLdPr Me
  loc_BDDDCD: MemLdRfVar from_stack_1.global_56
  loc_BDDDD0: NewIfNullPr clsctacte
  loc_BDDDD3: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BDDDD8: FFreeStr var_37C = "": var_380 = "": var_384 = ""
  loc_BDDDE3: FFreeAd var_88 = "": var_100 = "": var_114 = "": var_148 = "": var_15C = "": var_1B0 = "": var_204 = "": var_258 = "": var_2AC = "": var_300 = "": var_314 = ""
  loc_BDDDFE: FFreeVar var_98 = "": var_110 = "": var_124 = "": var_158 = "": var_16C = "": var_1C0 = "": var_1D0 = "": var_1F0 = "": var_214 = "": var_268 = "": var_278 = "": var_298 = "": var_2BC = "": var_310 = "": var_324 = "": var_378 = "": var_200 = ""
  loc_BDDE25: FLdPr Me
  loc_BDDE28: MemLdI2 global_84
  loc_BDDE2B: LitI2_Byte &HB
  loc_BDDE2D: EqI2
  loc_BDDE2E: BranchF loc_BDDEAF
  loc_BDDE31: FLdPr Me
  loc_BDDE34: VCallAd Control_ID_ctacteFlex
  loc_BDDE37: FStAdFunc var_88
  loc_BDDE3A: FLdPr var_88
  loc_BDDE3D: LateIdLdVar var_98 DispID_10 0
  loc_BDDE44: CI4Var
  loc_BDDE46: CVarI4
  loc_BDDE4A: PopAdLdVar
  loc_BDDE4B: FLdPr Me
  loc_BDDE4E: MemLdI2 global_84
  loc_BDDE51: CI4UI1
  loc_BDDE52: CVarI4
  loc_BDDE56: PopAdLdVar
  loc_BDDE57: FLdPr Me
  loc_BDDE5A: VCallAd Control_ID_ctacteFlex
  loc_BDDE5D: FStAdFunc var_100
  loc_BDDE60: FLdPr var_100
  loc_BDDE63: LateIdCallLdVar
  loc_BDDE6D: PopAd
  loc_BDDE6F: LitI4 2
  loc_BDDE74: FLdPr Me
  loc_BDDE77: MemLdFPR8 global_88
  loc_BDDE7A: FLdRfVar var_110
  loc_BDDE7D: CStrVarTmp
  loc_BDDE7E: FStStrNoPop var_37C
  loc_BDDE81: CR8Str
  loc_BDDE83: AddR8
  loc_BDDE84: CVarR8
  loc_BDDE88: FLdRfVar var_158
  loc_BDDE8B: ImpAdCallFPR4  = Round(, )
  loc_BDDE90: FLdRfVar var_158
  loc_BDDE93: CR4Var
  loc_BDDE94: FLdPr Me
  loc_BDDE97: MemStFPR8 global_88
  loc_BDDE9A: FFree1Str var_37C
  loc_BDDE9D: FFreeAd var_88 = ""
  loc_BDDEA4: FFreeVar var_98 = "": var_110 = "": var_124 = ""
  loc_BDDEAF: FLdPr Me
  loc_BDDEB2: MemLdRfVar from_stack_1.global_84
  loc_BDDEB5: NextI2 var_9C, loc_BDD838
  loc_BDDEBA: LitI4 1
  loc_BDDEBF: LitI4 1
  loc_BDDEC4: LitVarStr var_BC, "0.00"
  loc_BDDEC9: FStVarCopyObj var_98
  loc_BDDECC: FLdRfVar var_98
  loc_BDDECF: FLdPr Me
  loc_BDDED2: MemLdRfVar from_stack_1.global_88
  loc_BDDED5: CVarRef
  loc_BDDEDA: FLdRfVar var_110
  loc_BDDEDD: ImpAdCallFPR4  = Format(, )
  loc_BDDEE2: FLdRfVar var_110
  loc_BDDEE5: CStrVarVal var_37C
  loc_BDDEE9: FLdPr Me
  loc_BDDEEC: VCallAd Control_ID_txtTotaSele
  loc_BDDEEF: FStAdFunc var_88
  loc_BDDEF2: FLdPr var_88
  loc_BDDEF5: Me.Text = from_stack_1
  loc_BDDEFA: FFree1Str var_37C
  loc_BDDEFD: FFree1Ad var_88
  loc_BDDF00: FFreeVar var_98 = ""
  loc_BDDF07: ExitProcHresult
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) '9AEB2C
  'Data Table: 4B8698
  loc_9AEB28: ExitProcHresult
  loc_9AEB29: SetLastSystemError
End Sub

Private Sub Form_Load() 'B64160
  'Data Table: 4B8698
  loc_B63D08: LitVar_Missing var_94
  loc_B63D0B: PopAdLdVar
  loc_B63D0C: LitStr "Inmueble"
  loc_B63D0F: FLdPr Me
  loc_B63D12: VCallAd Control_ID_OficinaCbo
  loc_B63D15: FStAdFunc var_98
  loc_B63D18: FLdPr var_98
  loc_B63D1B: Me.AddItem from_stack_1, from_stack_2
  loc_B63D20: FFree1Ad var_98
  loc_B63D23: LitVar_Missing var_94
  loc_B63D26: PopAdLdVar
  loc_B63D27: LitStr "Comercio"
  loc_B63D2A: FLdPr Me
  loc_B63D2D: VCallAd Control_ID_OficinaCbo
  loc_B63D30: FStAdFunc var_98
  loc_B63D33: FLdPr var_98
  loc_B63D36: Me.AddItem from_stack_1, from_stack_2
  loc_B63D3B: FFree1Ad var_98
  loc_B63D3E: LitI2_Byte 0
  loc_B63D40: FLdPr Me
  loc_B63D43: VCallAd Control_ID_OficinaCbo
  loc_B63D46: FStAdFunc var_98
  loc_B63D49: FLdPr var_98
  loc_B63D4C: Me.ListIndex = from_stack_1
  loc_B63D51: FFree1Ad var_98
  loc_B63D54: LitStr "0"
  loc_B63D57: FLdPr Me
  loc_B63D5A: VCallAd Control_ID_NumeCtaTxt
  loc_B63D5D: FStAdFunc var_98
  loc_B63D60: FLdPr var_98
  loc_B63D63: Me.Text = from_stack_1
  loc_B63D68: FFree1Ad var_98
  loc_B63D6B: LitI2_Byte 0
  loc_B63D6D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B63D72: CStrDate
  loc_B63D74: CVarStr var_A8
  loc_B63D77: PopAdLdVar
  loc_B63D78: FLdPr Me
  loc_B63D7B: VCallAd Control_ID_FechVencMsk
  loc_B63D7E: FStAdFunc var_98
  loc_B63D81: FLdPr var_98
  loc_B63D84: LateIdSt
  loc_B63D89: FFree1Ad var_98
  loc_B63D8C: FFree1Var var_A8 = ""
  loc_B63D8F: FLdPr Me
  loc_B63D92: VCallAd Control_ID_ctacteFlex
  loc_B63D95: FStAdFunc var_AC
  loc_B63D98: LitVarI4
  loc_B63DA0: PopAdLdVar
  loc_B63DA1: LitVarI4
  loc_B63DA9: PopAdLdVar
  loc_B63DAA: FLdPr var_AC
  loc_B63DAD: LateIdCallSt
  loc_B63DB5: LitVarI4
  loc_B63DBD: PopAdLdVar
  loc_B63DBE: LitVarI4
  loc_B63DC6: PopAdLdVar
  loc_B63DC7: FLdPr var_AC
  loc_B63DCA: LateIdCallSt
  loc_B63DD2: LitVarI4
  loc_B63DDA: PopAdLdVar
  loc_B63DDB: LitVarI4
  loc_B63DE3: PopAdLdVar
  loc_B63DE4: FLdPr var_AC
  loc_B63DE7: LateIdCallSt
  loc_B63DEF: LitVarI4
  loc_B63DF7: PopAdLdVar
  loc_B63DF8: LitVarI4
  loc_B63E00: PopAdLdVar
  loc_B63E01: FLdPr var_AC
  loc_B63E04: LateIdCallSt
  loc_B63E0C: LitVarI4
  loc_B63E14: PopAdLdVar
  loc_B63E15: LitVarI4
  loc_B63E1D: PopAdLdVar
  loc_B63E1E: FLdPr var_AC
  loc_B63E21: LateIdCallSt
  loc_B63E29: LitVarI4
  loc_B63E31: PopAdLdVar
  loc_B63E32: LitVarI4
  loc_B63E3A: PopAdLdVar
  loc_B63E3B: FLdPr var_AC
  loc_B63E3E: LateIdCallSt
  loc_B63E46: LitVarI4
  loc_B63E4E: PopAdLdVar
  loc_B63E4F: LitVarI4
  loc_B63E57: PopAdLdVar
  loc_B63E58: FLdPr var_AC
  loc_B63E5B: LateIdCallSt
  loc_B63E63: LitVarI4
  loc_B63E6B: PopAdLdVar
  loc_B63E6C: LitVarI4
  loc_B63E74: PopAdLdVar
  loc_B63E75: FLdPr var_AC
  loc_B63E78: LateIdCallSt
  loc_B63E80: LitVarI4
  loc_B63E88: PopAdLdVar
  loc_B63E89: LitVarI4
  loc_B63E91: PopAdLdVar
  loc_B63E92: FLdPr var_AC
  loc_B63E95: LateIdCallSt
  loc_B63E9D: LitVarI4
  loc_B63EA5: PopAdLdVar
  loc_B63EA6: LitVarI4
  loc_B63EAE: PopAdLdVar
  loc_B63EAF: FLdPr var_AC
  loc_B63EB2: LateIdCallSt
  loc_B63EBA: LitVarI4
  loc_B63EC2: PopAdLdVar
  loc_B63EC3: LitVarI4
  loc_B63ECB: PopAdLdVar
  loc_B63ECC: FLdPr var_AC
  loc_B63ECF: LateIdCallSt
  loc_B63ED7: LitVarI4
  loc_B63EDF: PopAdLdVar
  loc_B63EE0: LitVarI4
  loc_B63EE8: PopAdLdVar
  loc_B63EE9: FLdPr var_AC
  loc_B63EEC: LateIdCallSt
  loc_B63EF4: LitVarI4
  loc_B63EFC: PopAdLdVar
  loc_B63EFD: LitVarI4
  loc_B63F05: PopAdLdVar
  loc_B63F06: FLdPr var_AC
  loc_B63F09: LateIdCallSt
  loc_B63F11: LitVarI4
  loc_B63F19: PopAdLdVar
  loc_B63F1A: LitVarI4
  loc_B63F22: PopAdLdVar
  loc_B63F23: FLdPr var_AC
  loc_B63F26: LateIdCallSt
  loc_B63F2E: LitVarI4
  loc_B63F36: PopAdLdVar
  loc_B63F37: LitVarI4
  loc_B63F3F: PopAdLdVar
  loc_B63F40: FLdPr var_AC
  loc_B63F43: LateIdCallSt
  loc_B63F4B: LitVarI4
  loc_B63F53: PopAdLdVar
  loc_B63F54: LitVarI4
  loc_B63F5C: PopAdLdVar
  loc_B63F5D: LitVarStr var_EC, "Ofic"
  loc_B63F62: PopAdLdVar
  loc_B63F63: FLdPr var_AC
  loc_B63F66: LateIdCallSt
  loc_B63F6E: LitVarI4
  loc_B63F76: PopAdLdVar
  loc_B63F77: LitVarI4
  loc_B63F7F: PopAdLdVar
  loc_B63F80: LitVarStr var_EC, "Cuenta"
  loc_B63F85: PopAdLdVar
  loc_B63F86: FLdPr var_AC
  loc_B63F89: LateIdCallSt
  loc_B63F91: LitVarI4
  loc_B63F99: PopAdLdVar
  loc_B63F9A: LitVarI4
  loc_B63FA2: PopAdLdVar
  loc_B63FA3: LitVarStr var_EC, "Periodo"
  loc_B63FA8: PopAdLdVar
  loc_B63FA9: FLdPr var_AC
  loc_B63FAC: LateIdCallSt
  loc_B63FB4: LitVarI4
  loc_B63FBC: PopAdLdVar
  loc_B63FBD: LitVarI4
  loc_B63FC5: PopAdLdVar
  loc_B63FC6: LitVarStr var_EC, "Boleto"
  loc_B63FCB: PopAdLdVar
  loc_B63FCC: FLdPr var_AC
  loc_B63FCF: LateIdCallSt
  loc_B63FD7: LitVarI4
  loc_B63FDF: PopAdLdVar
  loc_B63FE0: LitVarI4
  loc_B63FE8: PopAdLdVar
  loc_B63FE9: LitVarStr var_EC, "Emision"
  loc_B63FEE: PopAdLdVar
  loc_B63FEF: FLdPr var_AC
  loc_B63FF2: LateIdCallSt
  loc_B63FFA: LitVarI4
  loc_B64002: PopAdLdVar
  loc_B64003: LitVarI4
  loc_B6400B: PopAdLdVar
  loc_B6400C: LitVarStr var_EC, "Vencimien"
  loc_B64011: PopAdLdVar
  loc_B64012: FLdPr var_AC
  loc_B64015: LateIdCallSt
  loc_B6401D: LitVarI4
  loc_B64025: PopAdLdVar
  loc_B64026: LitVarI4
  loc_B6402E: PopAdLdVar
  loc_B6402F: LitVarStr var_EC, "Concepto"
  loc_B64034: PopAdLdVar
  loc_B64035: FLdPr var_AC
  loc_B64038: LateIdCallSt
  loc_B64040: LitVarI4
  loc_B64048: PopAdLdVar
  loc_B64049: LitVarI4
  loc_B64051: PopAdLdVar
  loc_B64052: LitVarStr var_EC, "Tipo Movi."
  loc_B64057: PopAdLdVar
  loc_B64058: FLdPr var_AC
  loc_B6405B: LateIdCallSt
  loc_B64063: LitVarI4
  loc_B6406B: PopAdLdVar
  loc_B6406C: LitVarI4
  loc_B64074: PopAdLdVar
  loc_B64075: LitVarStr var_EC, "Importe"
  loc_B6407A: PopAdLdVar
  loc_B6407B: FLdPr var_AC
  loc_B6407E: LateIdCallSt
  loc_B64086: LitVarI4
  loc_B6408E: PopAdLdVar
  loc_B6408F: LitVarI4
  loc_B64097: PopAdLdVar
  loc_B64098: LitVarStr var_EC, "Excención"
  loc_B6409D: PopAdLdVar
  loc_B6409E: FLdPr var_AC
  loc_B640A1: LateIdCallSt
  loc_B640A9: LitVarI4
  loc_B640B1: PopAdLdVar
  loc_B640B2: LitVarI4
  loc_B640BA: PopAdLdVar
  loc_B640BB: LitVarStr var_EC, "Descuento"
  loc_B640C0: PopAdLdVar
  loc_B640C1: FLdPr var_AC
  loc_B640C4: LateIdCallSt
  loc_B640CC: LitVarI4
  loc_B640D4: PopAdLdVar
  loc_B640D5: LitVarI4
  loc_B640DD: PopAdLdVar
  loc_B640DE: LitVarStr var_EC, "Total"
  loc_B640E3: PopAdLdVar
  loc_B640E4: FLdPr var_AC
  loc_B640E7: LateIdCallSt
  loc_B640EF: LitVarI4
  loc_B640F7: PopAdLdVar
  loc_B640F8: LitVarI4
  loc_B64100: PopAdLdVar
  loc_B64101: LitVarStr var_EC, "Sel"
  loc_B64106: PopAdLdVar
  loc_B64107: FLdPr var_AC
  loc_B6410A: LateIdCallSt
  loc_B64112: LitVarI4
  loc_B6411A: PopAdLdVar
  loc_B6411B: LitVarI4
  loc_B64123: PopAdLdVar
  loc_B64124: LitVarStr var_EC, "Numero"
  loc_B64129: PopAdLdVar
  loc_B6412A: FLdPr var_AC
  loc_B6412D: LateIdCallSt
  loc_B64135: LitVarI4
  loc_B6413D: PopAdLdVar
  loc_B6413E: LitVarI4
  loc_B64146: PopAdLdVar
  loc_B64147: LitVarStr var_EC, "Mov"
  loc_B6414C: PopAdLdVar
  loc_B6414D: FLdPr var_AC
  loc_B64150: LateIdCallSt
  loc_B64158: LitNothing
  loc_B6415A: FStAd var_AC 
  loc_B6415E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9CBA24
  'Data Table: 4B8698
  loc_9CBA0C: ILdI2 KeyAscii
  loc_9CBA0F: LitI2_Byte &HD
  loc_9CBA11: EqI2
  loc_9CBA12: BranchF loc_9CBA23
  loc_9CBA15: LitVar_TRUE var_A4
  loc_9CBA18: LitStr "{Tab}"
  loc_9CBA1B: ImpAdCallFPR4 SendKeys , 
  loc_9CBA20: FFree1Var var_A4 = ""
  loc_9CBA23: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB20C
  'Data Table: 4B8698
  loc_9BB1F8: ILdI2 KeyCode
  loc_9BB1FB: CI4UI1
  loc_9BB1FC: LitI4 &H78
  loc_9BB201: EqI4
  loc_9BB202: BranchF loc_9BB20A
  loc_9BB205: Call SalirCmd_Click()
  loc_9BB20A: ExitProcHresult
End Sub

Private Function Proc_85_18_B1F0D0() 'B1F0D0
  'Data Table: 4B8698
  loc_B1EE44: FLdRfVar var_8A
  loc_B1EE47: FLdPr Me
  loc_B1EE4A: VCallAd Control_ID_OficinaCbo
  loc_B1EE4D: FStAdFunc var_88
  loc_B1EE50: FLdPr var_88
  loc_B1EE53:  = Me.ListIndex
  loc_B1EE58: FLdI2 var_8A
  loc_B1EE5B: FStI2 var_8C
  loc_B1EE5E: FFree1Ad var_88
  loc_B1EE61: FLdI2 var_8C
  loc_B1EE64: LitI2_Byte 0
  loc_B1EE66: EqI2
  loc_B1EE67: BranchF loc_B1EE75
  loc_B1EE6A: LitI2_Byte 1
  loc_B1EE6C: CUI1I2
  loc_B1EE6E: ImpAdStUI1 MemVar_D93038
  loc_B1EE72: Branch loc_B1EEAE
  loc_B1EE75: FLdI2 var_8C
  loc_B1EE78: LitI2_Byte 1
  loc_B1EE7A: EqI2
  loc_B1EE7B: BranchF loc_B1EE89
  loc_B1EE7E: LitI2_Byte 2
  loc_B1EE80: CUI1I2
  loc_B1EE82: ImpAdStUI1 MemVar_D93038
  loc_B1EE86: Branch loc_B1EEAE
  loc_B1EE89: FLdI2 var_8C
  loc_B1EE8C: LitI2_Byte 2
  loc_B1EE8E: EqI2
  loc_B1EE8F: BranchF loc_B1EE9D
  loc_B1EE92: LitI2_Byte 3
  loc_B1EE94: CUI1I2
  loc_B1EE96: ImpAdStUI1 MemVar_D93038
  loc_B1EE9A: Branch loc_B1EEAE
  loc_B1EE9D: FLdI2 var_8C
  loc_B1EEA0: LitI2_Byte 3
  loc_B1EEA2: EqI2
  loc_B1EEA3: BranchF loc_B1EEAE
  loc_B1EEA6: LitI2_Byte 4
  loc_B1EEA8: CUI1I2
  loc_B1EEAA: ImpAdStUI1 MemVar_D93038
  loc_B1EEAE: LitVar_Missing var_AC
  loc_B1EEB1: PopAdLdVar
  loc_B1EEB2: LitVarI4
  loc_B1EEBA: PopAdLdVar
  loc_B1EEBB: ImpAdLdRf MemVar_D94034
  loc_B1EEBE: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EEC1: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B1EEC6: FLdRfVar var_B0
  loc_B1EEC9: FLdRfVar var_88
  loc_B1EECC: ImpAdLdRf MemVar_D94034
  loc_B1EECF: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EED2: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1EED7: FLdPr var_88
  loc_B1EEDA: from_stack_1 = clsbase.RecordCount
  loc_B1EEDF: ILdRf var_B0
  loc_B1EEE2: LitI4 0
  loc_B1EEE7: GtI4
  loc_B1EEE8: FFree1Ad var_88
  loc_B1EEEB: BranchF loc_B1F0BC
  loc_B1EEEE: FLdRfVar var_CC
  loc_B1EEF1: FLdRfVar var_BC
  loc_B1EEF4: LitVarStr var_9C, "CodiOfic"
  loc_B1EEF9: PopAdLdVar
  loc_B1EEFA: FLdRfVar var_B8
  loc_B1EEFD: FLdRfVar var_B4
  loc_B1EF00: FLdRfVar var_88
  loc_B1EF03: ImpAdLdRf MemVar_D94034
  loc_B1EF06: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EF09: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1EF0E: FLdPr var_88
  loc_B1EF11: from_stack_1v = clsbase.RsFrmGet()
  loc_B1EF16: FLdPr var_B4
  loc_B1EF19:  = Me.Fields
  loc_B1EF1E: FLdPr var_B8
  loc_B1EF21: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EF26: FLdPr var_BC
  loc_B1EF29:  = Me.Value
  loc_B1EF2E: FLdRfVar var_CC
  loc_B1EF31: FStVar var_DC
  loc_B1EF35: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B1EF40: FLdRfVar var_DC
  loc_B1EF43: LitVarI2 var_9C, 1
  loc_B1EF48: HardType
  loc_B1EF49: EqVarBool
  loc_B1EF4B: BranchF loc_B1EF85
  loc_B1EF4E: FLdRfVar var_E0
  loc_B1EF51: LitI2_Byte 0
  loc_B1EF53: FLdPr Me
  loc_B1EF56: VCallAd Control_ID_OficinaCbo
  loc_B1EF59: FStAdFunc var_88
  loc_B1EF5C: FLdPr var_88
  loc_B1EF5F: from_stack_2 = Me.List(from_stack_1)
  loc_B1EF64: ILdRf var_E0
  loc_B1EF67: FLdPr Me
  loc_B1EF6A: VCallAd Control_ID_OficinaCbo
  loc_B1EF6D: FStAdFunc var_B4
  loc_B1EF70: FLdPr var_B4
  loc_B1EF73: Me.Text = from_stack_1
  loc_B1EF78: FFree1Str var_E0
  loc_B1EF7B: FFreeAd var_88 = ""
  loc_B1EF82: Branch loc_B1F051
  loc_B1EF85: FLdRfVar var_DC
  loc_B1EF88: LitVarI2 var_9C, 2
  loc_B1EF8D: HardType
  loc_B1EF8E: EqVarBool
  loc_B1EF90: BranchF loc_B1EFCA
  loc_B1EF93: FLdRfVar var_E0
  loc_B1EF96: LitI2_Byte 1
  loc_B1EF98: FLdPr Me
  loc_B1EF9B: VCallAd Control_ID_OficinaCbo
  loc_B1EF9E: FStAdFunc var_88
  loc_B1EFA1: FLdPr var_88
  loc_B1EFA4: from_stack_2 = Me.List(from_stack_1)
  loc_B1EFA9: ILdRf var_E0
  loc_B1EFAC: FLdPr Me
  loc_B1EFAF: VCallAd Control_ID_OficinaCbo
  loc_B1EFB2: FStAdFunc var_B4
  loc_B1EFB5: FLdPr var_B4
  loc_B1EFB8: Me.Text = from_stack_1
  loc_B1EFBD: FFree1Str var_E0
  loc_B1EFC0: FFreeAd var_88 = ""
  loc_B1EFC7: Branch loc_B1F051
  loc_B1EFCA: FLdRfVar var_DC
  loc_B1EFCD: LitVarI2 var_9C, 3
  loc_B1EFD2: HardType
  loc_B1EFD3: EqVarBool
  loc_B1EFD5: BranchF loc_B1F00F
  loc_B1EFD8: FLdRfVar var_E0
  loc_B1EFDB: LitI2_Byte 2
  loc_B1EFDD: FLdPr Me
  loc_B1EFE0: VCallAd Control_ID_OficinaCbo
  loc_B1EFE3: FStAdFunc var_88
  loc_B1EFE6: FLdPr var_88
  loc_B1EFE9: from_stack_2 = Me.List(from_stack_1)
  loc_B1EFEE: ILdRf var_E0
  loc_B1EFF1: FLdPr Me
  loc_B1EFF4: VCallAd Control_ID_OficinaCbo
  loc_B1EFF7: FStAdFunc var_B4
  loc_B1EFFA: FLdPr var_B4
  loc_B1EFFD: Me.Text = from_stack_1
  loc_B1F002: FFree1Str var_E0
  loc_B1F005: FFreeAd var_88 = ""
  loc_B1F00C: Branch loc_B1F051
  loc_B1F00F: FLdRfVar var_DC
  loc_B1F012: LitVarI2 var_9C, 4
  loc_B1F017: HardType
  loc_B1F018: EqVarBool
  loc_B1F01A: BranchF loc_B1F051
  loc_B1F01D: FLdRfVar var_E0
  loc_B1F020: LitI2_Byte 3
  loc_B1F022: FLdPr Me
  loc_B1F025: VCallAd Control_ID_OficinaCbo
  loc_B1F028: FStAdFunc var_88
  loc_B1F02B: FLdPr var_88
  loc_B1F02E: from_stack_2 = Me.List(from_stack_1)
  loc_B1F033: ILdRf var_E0
  loc_B1F036: FLdPr Me
  loc_B1F039: VCallAd Control_ID_OficinaCbo
  loc_B1F03C: FStAdFunc var_B4
  loc_B1F03F: FLdPr var_B4
  loc_B1F042: Me.Text = from_stack_1
  loc_B1F047: FFree1Str var_E0
  loc_B1F04A: FFreeAd var_88 = ""
  loc_B1F051: FLdRfVar var_CC
  loc_B1F054: FLdRfVar var_BC
  loc_B1F057: LitVarStr var_9C, "CuenCtct"
  loc_B1F05C: PopAdLdVar
  loc_B1F05D: FLdRfVar var_B8
  loc_B1F060: FLdRfVar var_B4
  loc_B1F063: FLdRfVar var_88
  loc_B1F066: ImpAdLdRf MemVar_D94034
  loc_B1F069: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1F06C: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1F071: FLdPr var_88
  loc_B1F074: from_stack_1v = clsbase.RsFrmGet()
  loc_B1F079: FLdPr var_B4
  loc_B1F07C:  = Me.Fields
  loc_B1F081: FLdPr var_B8
  loc_B1F084: from_stack_2 = Me.Item(from_stack_1)
  loc_B1F089: FLdPr var_BC
  loc_B1F08C:  = Me.Value
  loc_B1F091: FLdRfVar var_CC
  loc_B1F094: CStrVarTmp
  loc_B1F095: FStStrNoPop var_E0
  loc_B1F098: FLdPr Me
  loc_B1F09B: VCallAd Control_ID_NumeCtaTxt
  loc_B1F09E: FStAdFunc var_E4
  loc_B1F0A1: FLdPr var_E4
  loc_B1F0A4: Me.Text = from_stack_1
  loc_B1F0A9: FFree1Str var_E0
  loc_B1F0AC: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1F0B9: FFree1Var var_CC = ""
  loc_B1F0BC: FLdPr Me
  loc_B1F0BF: VCallAd Control_ID_NumeCtaTxt
  loc_B1F0C2: CVarAd
  loc_B1F0C6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1F0CB: FFree1Var var_CC = ""
  loc_B1F0CE: ExitProcHresult
End Function

Private Function Proc_85_19_B0D1F4() 'B0D1F4
  'Data Table: 4B8698
  loc_B0CFB0: FLdPr Me
  loc_B0CFB3: VCallAd Control_ID_ctacteFlex
  loc_B0CFB6: FStAdFunc var_88
  loc_B0CFB9: FLdPr var_88
  loc_B0CFBC: LateIdCall
  loc_B0CFC4: LitVarI4
  loc_B0CFCC: PopAdLdVar
  loc_B0CFCD: FLdPr var_88
  loc_B0CFD0: LateIdSt
  loc_B0CFD5: LitVarI4
  loc_B0CFDD: PopAdLdVar
  loc_B0CFDE: LitVarI4
  loc_B0CFE6: PopAdLdVar
  loc_B0CFE7: LitVarStr var_D8, "Ofic"
  loc_B0CFEC: PopAdLdVar
  loc_B0CFED: FLdPr var_88
  loc_B0CFF0: LateIdCallSt
  loc_B0CFF8: LitVarI4
  loc_B0D000: PopAdLdVar
  loc_B0D001: LitVarI4
  loc_B0D009: PopAdLdVar
  loc_B0D00A: LitVarStr var_D8, "Cuenta"
  loc_B0D00F: PopAdLdVar
  loc_B0D010: FLdPr var_88
  loc_B0D013: LateIdCallSt
  loc_B0D01B: LitVarI4
  loc_B0D023: PopAdLdVar
  loc_B0D024: LitVarI4
  loc_B0D02C: PopAdLdVar
  loc_B0D02D: LitVarStr var_D8, "Periodo"
  loc_B0D032: PopAdLdVar
  loc_B0D033: FLdPr var_88
  loc_B0D036: LateIdCallSt
  loc_B0D03E: LitVarI4
  loc_B0D046: PopAdLdVar
  loc_B0D047: LitVarI4
  loc_B0D04F: PopAdLdVar
  loc_B0D050: LitVarStr var_D8, "Boleto"
  loc_B0D055: PopAdLdVar
  loc_B0D056: FLdPr var_88
  loc_B0D059: LateIdCallSt
  loc_B0D061: LitVarI4
  loc_B0D069: PopAdLdVar
  loc_B0D06A: LitVarI4
  loc_B0D072: PopAdLdVar
  loc_B0D073: LitVarStr var_D8, "Emision"
  loc_B0D078: PopAdLdVar
  loc_B0D079: FLdPr var_88
  loc_B0D07C: LateIdCallSt
  loc_B0D084: LitVarI4
  loc_B0D08C: PopAdLdVar
  loc_B0D08D: LitVarI4
  loc_B0D095: PopAdLdVar
  loc_B0D096: LitVarStr var_D8, "Vencimien"
  loc_B0D09B: PopAdLdVar
  loc_B0D09C: FLdPr var_88
  loc_B0D09F: LateIdCallSt
  loc_B0D0A7: LitVarI4
  loc_B0D0AF: PopAdLdVar
  loc_B0D0B0: LitVarI4
  loc_B0D0B8: PopAdLdVar
  loc_B0D0B9: LitVarStr var_D8, "Concepto"
  loc_B0D0BE: PopAdLdVar
  loc_B0D0BF: FLdPr var_88
  loc_B0D0C2: LateIdCallSt
  loc_B0D0CA: LitVarI4
  loc_B0D0D2: PopAdLdVar
  loc_B0D0D3: LitVarI4
  loc_B0D0DB: PopAdLdVar
  loc_B0D0DC: LitVarStr var_D8, "Tipo Movi."
  loc_B0D0E1: PopAdLdVar
  loc_B0D0E2: FLdPr var_88
  loc_B0D0E5: LateIdCallSt
  loc_B0D0ED: LitVarI4
  loc_B0D0F5: PopAdLdVar
  loc_B0D0F6: LitVarI4
  loc_B0D0FE: PopAdLdVar
  loc_B0D0FF: LitVarStr var_D8, "Importe"
  loc_B0D104: PopAdLdVar
  loc_B0D105: FLdPr var_88
  loc_B0D108: LateIdCallSt
  loc_B0D110: LitVarI4
  loc_B0D118: PopAdLdVar
  loc_B0D119: LitVarI4
  loc_B0D121: PopAdLdVar
  loc_B0D122: LitVarStr var_D8, "Excención"
  loc_B0D127: PopAdLdVar
  loc_B0D128: FLdPr var_88
  loc_B0D12B: LateIdCallSt
  loc_B0D133: LitVarI4
  loc_B0D13B: PopAdLdVar
  loc_B0D13C: LitVarI4
  loc_B0D144: PopAdLdVar
  loc_B0D145: LitVarStr var_D8, "Descuento"
  loc_B0D14A: PopAdLdVar
  loc_B0D14B: FLdPr var_88
  loc_B0D14E: LateIdCallSt
  loc_B0D156: LitVarI4
  loc_B0D15E: PopAdLdVar
  loc_B0D15F: LitVarI4
  loc_B0D167: PopAdLdVar
  loc_B0D168: LitVarStr var_D8, "Total"
  loc_B0D16D: PopAdLdVar
  loc_B0D16E: FLdPr var_88
  loc_B0D171: LateIdCallSt
  loc_B0D179: LitVarI4
  loc_B0D181: PopAdLdVar
  loc_B0D182: LitVarI4
  loc_B0D18A: PopAdLdVar
  loc_B0D18B: LitVarStr var_D8, "Sel"
  loc_B0D190: PopAdLdVar
  loc_B0D191: FLdPr var_88
  loc_B0D194: LateIdCallSt
  loc_B0D19C: LitVarI4
  loc_B0D1A4: PopAdLdVar
  loc_B0D1A5: LitVarI4
  loc_B0D1AD: PopAdLdVar
  loc_B0D1AE: LitVarStr var_D8, "Numero"
  loc_B0D1B3: PopAdLdVar
  loc_B0D1B4: FLdPr var_88
  loc_B0D1B7: LateIdCallSt
  loc_B0D1BF: LitVarI4
  loc_B0D1C7: PopAdLdVar
  loc_B0D1C8: LitVarI4
  loc_B0D1D0: PopAdLdVar
  loc_B0D1D1: LitVarStr var_D8, "Mov"
  loc_B0D1D6: PopAdLdVar
  loc_B0D1D7: FLdPr var_88
  loc_B0D1DA: LateIdCallSt
  loc_B0D1E2: FLdPr var_88
  loc_B0D1E5: LateIdCall
  loc_B0D1ED: LitNothing
  loc_B0D1EF: FStAd var_88 
  loc_B0D1F3: ExitProcHresult
End Function
