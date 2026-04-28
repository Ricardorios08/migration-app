VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmParametrosalIniciodeEjercicio
  Caption = "Parámetros al Inicio del Ejercicio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosalIniciodeEjercicio.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15330
  ClientHeight = 8970
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame
    Caption = " Parámetros al Inicio de Ejercicio "
    Left = 120
    Top = 2760
    Width = 14415
    Height = 6015
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox MiinPacoTxt
      Left = 12690
      Top = 360
      Width = 1575
      Height = 360
      TabIndex = 9
      MaxLength = 8
      DataField = "MiinPaco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox SacePacoTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 4800
      Width = 10575
      Height = 360
      TabIndex = 35
      MaxLength = 250
      DataField = "SacePaco"
    End
    Begin VB.TextBox DefaPacoTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 5280
      Width = 10575
      Height = 360
      TabIndex = 37
      MaxLength = 250
      DataField = "DefaPaco"
    End
    Begin MSMask.MaskEdBox CaerPacoMsk
      Left = 5640
      Top = 840
      Width = 1815
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":08CA
      DataField = "CaerPaco"
    End
    Begin MSMask.MaskEdBox ProvPacoMsk
      Left = 5640
      Top = 1320
      Width = 1815
      Height = 360
      TabIndex = 14
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0952
      DataField = "ProvPaco"
    End
    Begin MSMask.MaskEdBox ChsrPacoMsk
      Left = 5640
      Top = 2280
      Width = 1815
      Height = 360
      TabIndex = 20
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":09DA
      DataField = "ChsrPaco"
    End
    Begin MSMask.MaskEdBox CatePacoMsk
      Left = 5640
      Top = 2760
      Width = 1815
      Height = 360
      TabIndex = 23
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0A62
      DataField = "CatePaco"
    End
    Begin MSMask.MaskEdBox CajaPacoMsk
      Left = 5640
      Top = 3240
      Width = 1815
      Height = 360
      TabIndex = 26
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0AEA
      DataField = "CajaPaco"
    End
    Begin MSMask.MaskEdBox DeexPacoMsk
      Left = 5640
      Top = 1800
      Width = 1815
      Height = 360
      TabIndex = 17
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0B72
      DataField = "DeexPaco"
    End
    Begin MSMask.MaskEdBox CarePacoMsk
      Left = 5640
      Top = 3720
      Width = 1815
      Height = 360
      TabIndex = 29
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0BFA
      DataField = "CarePaco"
    End
    Begin MSMask.MaskEdBox PatrPacoMsk
      Left = 5640
      Top = 4200
      Width = 1815
      Height = 360
      TabIndex = 32
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0C82
      DataField = "PatrPaco"
    End
    Begin MSMask.MaskEdBox PaexPacoMsk
      Left = 8640
      Top = 360
      Width = 375
      Height = 360
      TabIndex = 7
      OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0D0A
      DataField = "PaexPaco"
    End
    Begin VB.Label Label11
      Caption = "Importe Mínimo para Inventario:"
      Left = 9240
      Top = 360
      Width = 3345
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Ctas de débitos c/factura:"
      Left = 885
      Top = 5280
      Width = 2715
      Height = 300
      TabIndex = 36
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Control de Cuentas Saldo Cero:"
      Left = 240
      Top = 4800
      Width = 3360
      Height = 300
      TabIndex = 34
      AutoSize = -1  'True
    End
    Begin VB.Label PatrPacoLbl
      Left = 7560
      Top = 4200
      Width = 6735
      Height = 375
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      DataField = "PatrDeta"
    End
    Begin VB.Label Label14
      Caption = "Primer dígito de las partidas EXTRApresupuestarias:"
      Left = 3045
      Top = 360
      Width = 5550
      Height = 300
      TabIndex = 6
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
    Begin VB.Label PeriInfoLbl
      Left = 1200
      Top = 360
      Width = 1095
      Height = 375
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      DataField = "PeriInfo"
    End
    Begin VB.Label CaerPacoLbl
      Left = 7560
      Top = 840
      Width = 6735
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      DataField = "CaerDeta"
    End
    Begin VB.Label ProvPacoLbl
      Left = 7560
      Top = 1320
      Width = 6735
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      DataField = "ProvDeta"
    End
    Begin VB.Label ChsrPacoLbl
      Left = 7560
      Top = 2280
      Width = 6735
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      DataField = "ChsrDeta"
    End
    Begin VB.Label CatePacoLbl
      Left = 7560
      Top = 2760
      Width = 6735
      Height = 360
      TabIndex = 24
      BorderStyle = 1 'Fixed Single
      DataField = "CateDeta"
    End
    Begin VB.Label CajaPacoLbl
      Left = 7560
      Top = 3240
      Width = 6735
      Height = 360
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      DataField = "CajaDeta"
    End
    Begin VB.Label DeexPacoLbl
      Left = 7560
      Top = 1800
      Width = 6735
      Height = 360
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      DataField = "DeexDeta"
    End
    Begin VB.Label Label4
      Caption = "Deuda Exigible Presupuestaria:"
      Left = 2235
      Top = 1800
      Width = 3315
      Height = 300
      TabIndex = 16
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
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 240
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Proveedores Varios Presupuestarios:"
      Left = 1635
      Top = 1320
      Width = 3915
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label2
      Caption = "Cálculo de Erogaciones:"
      Left = 2985
      Top = 840
      Width = 2565
      Height = 300
      TabIndex = 10
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
    Begin VB.Label Label5
      Caption = "Cheques Sin Remitir:"
      Left = 3315
      Top = 2280
      Width = 2235
      Height = 300
      TabIndex = 19
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
    Begin VB.Label Label6
      Caption = "Cargos al Tesorero:"
      Left = 3480
      Top = 2760
      Width = 2070
      Height = 300
      TabIndex = 22
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
    Begin VB.Label Label7
      Caption = "Caja:"
      Left = 5010
      Top = 3240
      Width = 540
      Height = 300
      TabIndex = 25
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
    Begin VB.Label CarePacoLbl
      Left = 7560
      Top = 3720
      Width = 6735
      Height = 375
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
      DataField = "CareDeta"
    End
    Begin VB.Label Label10
      Caption = "Patrimonio:"
      Left = 4365
      Top = 4200
      Width = 1185
      Height = 300
      TabIndex = 31
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
    Begin VB.Label Label9
      Caption = "Cálculo de Recursos:"
      Left = 3300
      Top = 3720
      Width = 2250
      Height = 300
      TabIndex = 28
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 14415
    Height = 1815
    TabIndex = 2
    OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":0D94
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":161E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15330
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmParametrosalIniciodeEjercicio.frx":919C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmParametrosalIniciodeEjercicio.frx":96F8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmParametrosalIniciodeEjercicio"


Private Sub DeexPacoMsk_UnknownEvent_0 '94CC68
  'Data Table: 4D1A2C
  loc_94CC54: FLdPr Me
  loc_94CC57: VCallAd Control_ID_DeexPacoMsk
  loc_94CC5A: CVarAd
  loc_94CC5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CC63: FFree1Var var_94 = ""
  loc_94CC66: ExitProcHresult
End Sub

Private Sub DeexPacoMsk_UnknownEvent_8 '9F3B48
  'Data Table: 4D1A2C
  loc_9F3A24: FLdRfVar var_8A
  loc_9F3A27: FLdPr Me
  loc_9F3A2A: VCallAd Control_ID_cmdCancelar
  loc_9F3A2D: FStAdFunc var_88
  loc_9F3A30: FLdPr var_88
  loc_9F3A33:  = Me.Value
  loc_9F3A38: FLdI2 var_8A
  loc_9F3A3B: NotI4
  loc_9F3A3C: FLdPr Me
  loc_9F3A3F: VCallAd Control_ID_DeexPacoMsk
  loc_9F3A42: FStAdFunc var_90
  loc_9F3A45: FLdPr var_90
  loc_9F3A48: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F3A4F: CBoolVar
  loc_9F3A51: AndI4
  loc_9F3A52: FFreeAd var_88 = ""
  loc_9F3A59: FFree1Var var_A0 = ""
  loc_9F3A5C: BranchF loc_9F3B45
  loc_9F3A5F: FLdPr Me
  loc_9F3A62: VCallAd Control_ID_DeexPacoMsk
  loc_9F3A65: FStAdFunc var_88
  loc_9F3A68: FLdPr var_88
  loc_9F3A6B: LateIdLdVar var_A0 DispID_22 0
  loc_9F3A72: PopAd
  loc_9F3A74: LitI4 0
  loc_9F3A79: LitI4 0
  loc_9F3A7E: FLdRfVar var_A8
  loc_9F3A81: Redim
  loc_9F3A8B: LitVarStr var_B8, "2"
  loc_9F3A90: LitI4 0
  loc_9F3A95: ILdRf var_A8
  loc_9F3A98: Ary1StVarCopy
  loc_9F3A9A: FLdRfVar var_A8
  loc_9F3A9D: FLdPr Me
  loc_9F3AA0: MemLdRfVar from_stack_1.global_64
  loc_9F3AA3: NewIfNullRf
  loc_9F3AA7: ImpAdLdI2 MemVar_C3D064
  loc_9F3AAA: LitI2_Byte &HFF
  loc_9F3AAC: FLdRfVar var_A0
  loc_9F3AAF: CStrVarTmp
  loc_9F3AB0: FStStrNoPop var_A4
  loc_9F3AB3: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9F3AB8: FStStr var_BC
  loc_9F3ABB: FLdRfVar var_A8
  loc_9F3ABE: Erase
  loc_9F3ABF: ILdRf var_BC
  loc_9F3AC2: FLdPr Me
  loc_9F3AC5: MemStStrCopy
  loc_9F3AC9: FFreeStr var_A4 = ""
  loc_9F3AD0: FFree1Ad var_88
  loc_9F3AD3: FFree1Var var_A0 = ""
  loc_9F3AD6: FLdPr Me
  loc_9F3AD9: VCallAd Control_ID_DeexPacoMsk
  loc_9F3ADC: FStAdFunc var_C4
  loc_9F3ADF: FLdPr Me
  loc_9F3AE2: VCallAd Control_ID_DeexPacoLbl
  loc_9F3AE5: FStAdFunc var_C0
  loc_9F3AE8: FLdRfVar var_C0
  loc_9F3AEB: FLdZeroAd var_C4
  loc_9F3AEE: FStAdFuncNoPop
  loc_9F3AF1: CastAd
  loc_9F3AF4: FStAdFunc var_90
  loc_9F3AF7: FLdRfVar var_90
  loc_9F3AFA: FLdPr Me
  loc_9F3AFD: MemLdRfVar from_stack_1.global_60
  loc_9F3B00: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F3B05: IStI2 ColIndex
  loc_9F3B08: FFreeAd var_88 = "": var_90 = "": var_C0 = ""
  loc_9F3B13: ILdI2 ColIndex
  loc_9F3B16: NotI4
  loc_9F3B17: BranchF loc_9F3B45
  loc_9F3B1A: FLdRfVar var_A4
  loc_9F3B1D: FLdPr Me
  loc_9F3B20: MemLdRfVar from_stack_1.global_64
  loc_9F3B23: NewIfNullPr tblcuentacontable
  loc_9F3B26: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9F3B2B: ILdRf var_A4
  loc_9F3B2E: FLdPr Me
  loc_9F3B31: VCallAd Control_ID_DeexPacoLbl
  loc_9F3B34: FStAdFunc var_88
  loc_9F3B37: FLdPr var_88
  loc_9F3B3A: Me.Caption = from_stack_1
  loc_9F3B3F: FFree1Str var_A4
  loc_9F3B42: FFree1Ad var_88
  loc_9F3B45: ExitProcHresult
End Sub

Private Sub DeexPacoMsk_KeyPress(KeyAscii As Integer) '9F1ACC
  'Data Table: 4D1A2C
  loc_9F19A4: ILdI2 KeyAscii
  loc_9F19A7: CI4UI1
  loc_9F19A8: LitI4 &H20
  loc_9F19AD: EqI4
  loc_9F19AE: BranchF loc_9F1AC9
  loc_9F19B1: LitVar_Missing var_A4
  loc_9F19B4: PopAdLdVar
  loc_9F19B5: LitVarI4
  loc_9F19BD: PopAdLdVar
  loc_9F19BE: ImpAdLdRf MemVar_C3D6C0
  loc_9F19C1: NewIfNullPr bscCuentaContable
  loc_9F19C4: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F19C9: FLdRfVar var_AC
  loc_9F19CC: FLdRfVar var_A8
  loc_9F19CF: ImpAdLdRf MemVar_C3D6C0
  loc_9F19D2: NewIfNullPr bscCuentaContable
  loc_9F19D5: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F19DA: FLdPr var_A8
  loc_9F19DD: from_stack_1 = clsbase.RecordCount
  loc_9F19E2: ILdRf var_AC
  loc_9F19E5: LitI4 0
  loc_9F19EA: GtI4
  loc_9F19EB: FFree1Ad var_A8
  loc_9F19EE: BranchF loc_9F1AC9
  loc_9F19F1: FLdRfVar var_C8
  loc_9F19F4: FLdRfVar var_B8
  loc_9F19F7: LitVarStr var_94, "CodiCuco"
  loc_9F19FC: PopAdLdVar
  loc_9F19FD: FLdRfVar var_B4
  loc_9F1A00: FLdRfVar var_B0
  loc_9F1A03: FLdRfVar var_A8
  loc_9F1A06: ImpAdLdRf MemVar_C3D6C0
  loc_9F1A09: NewIfNullPr bscCuentaContable
  loc_9F1A0C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1A11: FLdPr var_A8
  loc_9F1A14: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1A19: FLdPr var_B0
  loc_9F1A1C:  = Me.Fields
  loc_9F1A21: FLdPr var_B4
  loc_9F1A24: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1A29: FLdPr var_B8
  loc_9F1A2C:  = Me.Value
  loc_9F1A31: FLdRfVar var_C8
  loc_9F1A34: CStrVarTmp
  loc_9F1A35: CVarStr var_D8
  loc_9F1A38: PopAdLdVar
  loc_9F1A39: FLdPr Me
  loc_9F1A3C: VCallAd Control_ID_DeexPacoMsk
  loc_9F1A3F: FStAdFunc var_DC
  loc_9F1A42: FLdPr var_DC
  loc_9F1A45: LateIdSt
  loc_9F1A4A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1A57: FFreeVar var_C8 = ""
  loc_9F1A5E: FLdRfVar var_C8
  loc_9F1A61: FLdRfVar var_B8
  loc_9F1A64: LitVarStr var_94, "DetaCuco"
  loc_9F1A69: PopAdLdVar
  loc_9F1A6A: FLdRfVar var_B4
  loc_9F1A6D: FLdRfVar var_B0
  loc_9F1A70: FLdRfVar var_A8
  loc_9F1A73: ImpAdLdRf MemVar_C3D6C0
  loc_9F1A76: NewIfNullPr bscCuentaContable
  loc_9F1A79: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1A7E: FLdPr var_A8
  loc_9F1A81: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1A86: FLdPr var_B0
  loc_9F1A89:  = Me.Fields
  loc_9F1A8E: FLdPr var_B4
  loc_9F1A91: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1A96: FLdPr var_B8
  loc_9F1A99:  = Me.Value
  loc_9F1A9E: FLdRfVar var_C8
  loc_9F1AA1: CStrVarTmp
  loc_9F1AA2: FStStrNoPop var_E0
  loc_9F1AA5: FLdPr Me
  loc_9F1AA8: VCallAd Control_ID_DeexPacoLbl
  loc_9F1AAB: FStAdFunc var_DC
  loc_9F1AAE: FLdPr var_DC
  loc_9F1AB1: Me.Caption = from_stack_1
  loc_9F1AB6: FFree1Str var_E0
  loc_9F1AB9: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1AC6: FFree1Var var_C8 = ""
  loc_9F1AC9: ExitProcHresult
End Sub

Private Sub ProvPacoMsk_UnknownEvent_0 '94B708
  'Data Table: 4D1A2C
  loc_94B6F4: FLdPr Me
  loc_94B6F7: VCallAd Control_ID_ProvPacoMsk
  loc_94B6FA: CVarAd
  loc_94B6FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B703: FFree1Var var_94 = ""
  loc_94B706: ExitProcHresult
End Sub

Private Sub ProvPacoMsk_UnknownEvent_8 '9F3CC4
  'Data Table: 4D1A2C
  loc_9F3BA0: FLdRfVar var_8A
  loc_9F3BA3: FLdPr Me
  loc_9F3BA6: VCallAd Control_ID_cmdCancelar
  loc_9F3BA9: FStAdFunc var_88
  loc_9F3BAC: FLdPr var_88
  loc_9F3BAF:  = Me.Value
  loc_9F3BB4: FLdI2 var_8A
  loc_9F3BB7: NotI4
  loc_9F3BB8: FLdPr Me
  loc_9F3BBB: VCallAd Control_ID_ProvPacoMsk
  loc_9F3BBE: FStAdFunc var_90
  loc_9F3BC1: FLdPr var_90
  loc_9F3BC4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F3BCB: CBoolVar
  loc_9F3BCD: AndI4
  loc_9F3BCE: FFreeAd var_88 = ""
  loc_9F3BD5: FFree1Var var_A0 = ""
  loc_9F3BD8: BranchF loc_9F3CC1
  loc_9F3BDB: FLdPr Me
  loc_9F3BDE: VCallAd Control_ID_ProvPacoMsk
  loc_9F3BE1: FStAdFunc var_88
  loc_9F3BE4: FLdPr var_88
  loc_9F3BE7: LateIdLdVar var_A0 DispID_22 0
  loc_9F3BEE: PopAd
  loc_9F3BF0: LitI4 0
  loc_9F3BF5: LitI4 0
  loc_9F3BFA: FLdRfVar var_A8
  loc_9F3BFD: Redim
  loc_9F3C07: LitVarStr var_B8, "2"
  loc_9F3C0C: LitI4 0
  loc_9F3C11: ILdRf var_A8
  loc_9F3C14: Ary1StVarCopy
  loc_9F3C16: FLdRfVar var_A8
  loc_9F3C19: FLdPr Me
  loc_9F3C1C: MemLdRfVar from_stack_1.global_64
  loc_9F3C1F: NewIfNullRf
  loc_9F3C23: ImpAdLdI2 MemVar_C3D064
  loc_9F3C26: LitI2_Byte &HFF
  loc_9F3C28: FLdRfVar var_A0
  loc_9F3C2B: CStrVarTmp
  loc_9F3C2C: FStStrNoPop var_A4
  loc_9F3C2F: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9F3C34: FStStr var_BC
  loc_9F3C37: FLdRfVar var_A8
  loc_9F3C3A: Erase
  loc_9F3C3B: ILdRf var_BC
  loc_9F3C3E: FLdPr Me
  loc_9F3C41: MemStStrCopy
  loc_9F3C45: FFreeStr var_A4 = ""
  loc_9F3C4C: FFree1Ad var_88
  loc_9F3C4F: FFree1Var var_A0 = ""
  loc_9F3C52: FLdPr Me
  loc_9F3C55: VCallAd Control_ID_ProvPacoMsk
  loc_9F3C58: FStAdFunc var_C4
  loc_9F3C5B: FLdPr Me
  loc_9F3C5E: VCallAd Control_ID_ProvPacoLbl
  loc_9F3C61: FStAdFunc var_C0
  loc_9F3C64: FLdRfVar var_C0
  loc_9F3C67: FLdZeroAd var_C4
  loc_9F3C6A: FStAdFuncNoPop
  loc_9F3C6D: CastAd
  loc_9F3C70: FStAdFunc var_90
  loc_9F3C73: FLdRfVar var_90
  loc_9F3C76: FLdPr Me
  loc_9F3C79: MemLdRfVar from_stack_1.global_60
  loc_9F3C7C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F3C81: IStI2 KeyAscii
  loc_9F3C84: FFreeAd var_88 = "": var_90 = "": var_C0 = ""
  loc_9F3C8F: ILdI2 KeyAscii
  loc_9F3C92: NotI4
  loc_9F3C93: BranchF loc_9F3CC1
  loc_9F3C96: FLdRfVar var_A4
  loc_9F3C99: FLdPr Me
  loc_9F3C9C: MemLdRfVar from_stack_1.global_64
  loc_9F3C9F: NewIfNullPr tblcuentacontable
  loc_9F3CA2: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9F3CA7: ILdRf var_A4
  loc_9F3CAA: FLdPr Me
  loc_9F3CAD: VCallAd Control_ID_ProvPacoLbl
  loc_9F3CB0: FStAdFunc var_88
  loc_9F3CB3: FLdPr var_88
  loc_9F3CB6: Me.Caption = from_stack_1
  loc_9F3CBB: FFree1Str var_A4
  loc_9F3CBE: FFree1Ad var_88
  loc_9F3CC1: ExitProcHresult
End Sub

Private Sub ProvPacoMsk_KeyPress(KeyAscii As Integer) '9F005C
  'Data Table: 4D1A2C
  loc_9EFF34: ILdI2 KeyAscii
  loc_9EFF37: CI4UI1
  loc_9EFF38: LitI4 &H20
  loc_9EFF3D: EqI4
  loc_9EFF3E: BranchF loc_9F0059
  loc_9EFF41: LitVar_Missing var_A4
  loc_9EFF44: PopAdLdVar
  loc_9EFF45: LitVarI4
  loc_9EFF4D: PopAdLdVar
  loc_9EFF4E: ImpAdLdRf MemVar_C3D6C0
  loc_9EFF51: NewIfNullPr bscCuentaContable
  loc_9EFF54: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9EFF59: FLdRfVar var_AC
  loc_9EFF5C: FLdRfVar var_A8
  loc_9EFF5F: ImpAdLdRf MemVar_C3D6C0
  loc_9EFF62: NewIfNullPr bscCuentaContable
  loc_9EFF65: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9EFF6A: FLdPr var_A8
  loc_9EFF6D: from_stack_1 = clsbase.RecordCount
  loc_9EFF72: ILdRf var_AC
  loc_9EFF75: LitI4 0
  loc_9EFF7A: GtI4
  loc_9EFF7B: FFree1Ad var_A8
  loc_9EFF7E: BranchF loc_9F0059
  loc_9EFF81: FLdRfVar var_C8
  loc_9EFF84: FLdRfVar var_B8
  loc_9EFF87: LitVarStr var_94, "CodiCuco"
  loc_9EFF8C: PopAdLdVar
  loc_9EFF8D: FLdRfVar var_B4
  loc_9EFF90: FLdRfVar var_B0
  loc_9EFF93: FLdRfVar var_A8
  loc_9EFF96: ImpAdLdRf MemVar_C3D6C0
  loc_9EFF99: NewIfNullPr bscCuentaContable
  loc_9EFF9C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9EFFA1: FLdPr var_A8
  loc_9EFFA4: from_stack_1v = clsbase.RsFrmGet()
  loc_9EFFA9: FLdPr var_B0
  loc_9EFFAC:  = Me.Fields
  loc_9EFFB1: FLdPr var_B4
  loc_9EFFB4: from_stack_2 = Me.Item(from_stack_1)
  loc_9EFFB9: FLdPr var_B8
  loc_9EFFBC:  = Me.Value
  loc_9EFFC1: FLdRfVar var_C8
  loc_9EFFC4: CStrVarTmp
  loc_9EFFC5: CVarStr var_D8
  loc_9EFFC8: PopAdLdVar
  loc_9EFFC9: FLdPr Me
  loc_9EFFCC: VCallAd Control_ID_ProvPacoMsk
  loc_9EFFCF: FStAdFunc var_DC
  loc_9EFFD2: FLdPr var_DC
  loc_9EFFD5: LateIdSt
  loc_9EFFDA: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EFFE7: FFreeVar var_C8 = ""
  loc_9EFFEE: FLdRfVar var_C8
  loc_9EFFF1: FLdRfVar var_B8
  loc_9EFFF4: LitVarStr var_94, "DetaCuco"
  loc_9EFFF9: PopAdLdVar
  loc_9EFFFA: FLdRfVar var_B4
  loc_9EFFFD: FLdRfVar var_B0
  loc_9F0000: FLdRfVar var_A8
  loc_9F0003: ImpAdLdRf MemVar_C3D6C0
  loc_9F0006: NewIfNullPr bscCuentaContable
  loc_9F0009: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F000E: FLdPr var_A8
  loc_9F0011: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0016: FLdPr var_B0
  loc_9F0019:  = Me.Fields
  loc_9F001E: FLdPr var_B4
  loc_9F0021: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0026: FLdPr var_B8
  loc_9F0029:  = Me.Value
  loc_9F002E: FLdRfVar var_C8
  loc_9F0031: CStrVarTmp
  loc_9F0032: FStStrNoPop var_E0
  loc_9F0035: FLdPr Me
  loc_9F0038: VCallAd Control_ID_ProvPacoLbl
  loc_9F003B: FStAdFunc var_DC
  loc_9F003E: FLdPr var_DC
  loc_9F0041: Me.Caption = from_stack_1
  loc_9F0046: FFree1Str var_E0
  loc_9F0049: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F0056: FFree1Var var_C8 = ""
  loc_9F0059: ExitProcHresult
  loc_9F005A: ILdRf var_4BA0
End Sub

Private Sub PatrPacoMsk_UnknownEvent_0 '94B630
  'Data Table: 4D1A2C
  loc_94B61C: FLdPr Me
  loc_94B61F: VCallAd Control_ID_PatrPacoMsk
  loc_94B622: CVarAd
  loc_94B626: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B62B: FFree1Var var_94 = ""
  loc_94B62E: ExitProcHresult
End Sub

Private Sub PatrPacoMsk_UnknownEvent_8 'A0608C
  'Data Table: 4D1A2C
  loc_A05F44: FLdRfVar var_8A
  loc_A05F47: FLdPr Me
  loc_A05F4A: VCallAd Control_ID_cmdCancelar
  loc_A05F4D: FStAdFunc var_88
  loc_A05F50: FLdPr var_88
  loc_A05F53:  = Me.Value
  loc_A05F58: FLdI2 var_8A
  loc_A05F5B: NotI4
  loc_A05F5C: FLdPr Me
  loc_A05F5F: VCallAd Control_ID_PatrPacoMsk
  loc_A05F62: FStAdFunc var_90
  loc_A05F65: FLdPr var_90
  loc_A05F68: LateIdLdVar var_A0 DispID_13 -32767
  loc_A05F6F: CBoolVar
  loc_A05F71: AndI4
  loc_A05F72: FLdPr Me
  loc_A05F75: VCallAd Control_ID_PatrPacoMsk
  loc_A05F78: FStAdFunc var_A4
  loc_A05F7B: FLdPr var_A4
  loc_A05F7E: LateIdLdVar var_B4 DispID_22 0
  loc_A05F85: CStrVarTmp
  loc_A05F86: FStStrNoPop var_B8
  loc_A05F89: LitStr vbNullString
  loc_A05F8C: NeStr
  loc_A05F8E: AndI4
  loc_A05F8F: FFree1Str var_B8
  loc_A05F92: FFreeAd var_88 = "": var_90 = ""
  loc_A05F9B: FFreeVar var_A0 = ""
  loc_A05FA2: BranchF loc_A0608B
  loc_A05FA5: FLdPr Me
  loc_A05FA8: VCallAd Control_ID_PatrPacoMsk
  loc_A05FAB: FStAdFunc var_88
  loc_A05FAE: FLdPr var_88
  loc_A05FB1: LateIdLdVar var_A0 DispID_22 0
  loc_A05FB8: PopAd
  loc_A05FBA: LitI4 0
  loc_A05FBF: LitI4 0
  loc_A05FC4: FLdRfVar var_BC
  loc_A05FC7: Redim
  loc_A05FD1: LitVarStr var_CC, "3"
  loc_A05FD6: LitI4 0
  loc_A05FDB: ILdRf var_BC
  loc_A05FDE: Ary1StVarCopy
  loc_A05FE0: FLdRfVar var_BC
  loc_A05FE3: FLdPr Me
  loc_A05FE6: MemLdRfVar from_stack_1.global_64
  loc_A05FE9: NewIfNullRf
  loc_A05FED: ImpAdLdI2 MemVar_C3D064
  loc_A05FF0: LitI2_Byte &HFF
  loc_A05FF2: FLdRfVar var_A0
  loc_A05FF5: CStrVarTmp
  loc_A05FF6: FStStrNoPop var_B8
  loc_A05FF9: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_A05FFE: FStStr var_D0
  loc_A06001: FLdRfVar var_BC
  loc_A06004: Erase
  loc_A06005: ILdRf var_D0
  loc_A06008: FLdPr Me
  loc_A0600B: MemStStrCopy
  loc_A0600F: FFreeStr var_B8 = ""
  loc_A06016: FFree1Ad var_88
  loc_A06019: FFree1Var var_A0 = ""
  loc_A0601C: FLdPr Me
  loc_A0601F: VCallAd Control_ID_PatrPacoMsk
  loc_A06022: FStAdFunc var_D4
  loc_A06025: FLdPr Me
  loc_A06028: VCallAd Control_ID_PatrPacoLbl
  loc_A0602B: FStAdFunc var_A4
  loc_A0602E: FLdRfVar var_A4
  loc_A06031: FLdZeroAd var_D4
  loc_A06034: FStAdFuncNoPop
  loc_A06037: CastAd
  loc_A0603A: FStAdFunc var_90
  loc_A0603D: FLdRfVar var_90
  loc_A06040: FLdPr Me
  loc_A06043: MemLdRfVar from_stack_1.global_60
  loc_A06046: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A0604B: IStI2 KeyAscii
  loc_A0604E: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A06059: ILdI2 KeyAscii
  loc_A0605C: NotI4
  loc_A0605D: BranchF loc_A0608B
  loc_A06060: FLdRfVar var_B8
  loc_A06063: FLdPr Me
  loc_A06066: MemLdRfVar from_stack_1.global_64
  loc_A06069: NewIfNullPr tblcuentacontable
  loc_A0606C: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_A06071: ILdRf var_B8
  loc_A06074: FLdPr Me
  loc_A06077: VCallAd Control_ID_PatrPacoLbl
  loc_A0607A: FStAdFunc var_88
  loc_A0607D: FLdPr var_88
  loc_A06080: Me.Caption = from_stack_1
  loc_A06085: FFree1Str var_B8
  loc_A06088: FFree1Ad var_88
  loc_A0608B: ExitProcHresult
End Sub

Private Sub PatrPacoMsk_KeyPress(KeyAscii As Integer) '9F1F34
  'Data Table: 4D1A2C
  loc_9F1E0C: ILdI2 KeyAscii
  loc_9F1E0F: CI4UI1
  loc_9F1E10: LitI4 &H20
  loc_9F1E15: EqI4
  loc_9F1E16: BranchF loc_9F1F31
  loc_9F1E19: LitVar_Missing var_A4
  loc_9F1E1C: PopAdLdVar
  loc_9F1E1D: LitVarI4
  loc_9F1E25: PopAdLdVar
  loc_9F1E26: ImpAdLdRf MemVar_C3D6C0
  loc_9F1E29: NewIfNullPr bscCuentaContable
  loc_9F1E2C: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F1E31: FLdRfVar var_AC
  loc_9F1E34: FLdRfVar var_A8
  loc_9F1E37: ImpAdLdRf MemVar_C3D6C0
  loc_9F1E3A: NewIfNullPr bscCuentaContable
  loc_9F1E3D: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1E42: FLdPr var_A8
  loc_9F1E45: from_stack_1 = clsbase.RecordCount
  loc_9F1E4A: ILdRf var_AC
  loc_9F1E4D: LitI4 0
  loc_9F1E52: GtI4
  loc_9F1E53: FFree1Ad var_A8
  loc_9F1E56: BranchF loc_9F1F31
  loc_9F1E59: FLdRfVar var_C8
  loc_9F1E5C: FLdRfVar var_B8
  loc_9F1E5F: LitVarStr var_94, "CodiCuco"
  loc_9F1E64: PopAdLdVar
  loc_9F1E65: FLdRfVar var_B4
  loc_9F1E68: FLdRfVar var_B0
  loc_9F1E6B: FLdRfVar var_A8
  loc_9F1E6E: ImpAdLdRf MemVar_C3D6C0
  loc_9F1E71: NewIfNullPr bscCuentaContable
  loc_9F1E74: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1E79: FLdPr var_A8
  loc_9F1E7C: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1E81: FLdPr var_B0
  loc_9F1E84:  = Me.Fields
  loc_9F1E89: FLdPr var_B4
  loc_9F1E8C: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1E91: FLdPr var_B8
  loc_9F1E94:  = Me.Value
  loc_9F1E99: FLdRfVar var_C8
  loc_9F1E9C: CStrVarTmp
  loc_9F1E9D: CVarStr var_D8
  loc_9F1EA0: PopAdLdVar
  loc_9F1EA1: FLdPr Me
  loc_9F1EA4: VCallAd Control_ID_PatrPacoMsk
  loc_9F1EA7: FStAdFunc var_DC
  loc_9F1EAA: FLdPr var_DC
  loc_9F1EAD: LateIdSt
  loc_9F1EB2: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1EBF: FFreeVar var_C8 = ""
  loc_9F1EC6: FLdRfVar var_C8
  loc_9F1EC9: FLdRfVar var_B8
  loc_9F1ECC: LitVarStr var_94, "DetaCuco"
  loc_9F1ED1: PopAdLdVar
  loc_9F1ED2: FLdRfVar var_B4
  loc_9F1ED5: FLdRfVar var_B0
  loc_9F1ED8: FLdRfVar var_A8
  loc_9F1EDB: ImpAdLdRf MemVar_C3D6C0
  loc_9F1EDE: NewIfNullPr bscCuentaContable
  loc_9F1EE1: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1EE6: FLdPr var_A8
  loc_9F1EE9: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1EEE: FLdPr var_B0
  loc_9F1EF1:  = Me.Fields
  loc_9F1EF6: FLdPr var_B4
  loc_9F1EF9: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1EFE: FLdPr var_B8
  loc_9F1F01:  = Me.Value
  loc_9F1F06: FLdRfVar var_C8
  loc_9F1F09: CStrVarTmp
  loc_9F1F0A: FStStrNoPop var_E0
  loc_9F1F0D: FLdPr Me
  loc_9F1F10: VCallAd Control_ID_PatrPacoLbl
  loc_9F1F13: FStAdFunc var_DC
  loc_9F1F16: FLdPr var_DC
  loc_9F1F19: Me.Caption = from_stack_1
  loc_9F1F1E: FFree1Str var_E0
  loc_9F1F21: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1F2E: FFree1Var var_C8 = ""
  loc_9F1F31: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3D028
  'Data Table: 4D1A2C
  loc_A3CE38: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CE3D: PopAdLdVar
  loc_A3CE3E: FLdPr Me
  loc_A3CE41: VCallAd Control_ID_CaerPacoMsk
  loc_A3CE44: FStAdFunc var_A8
  loc_A3CE47: FLdPr var_A8
  loc_A3CE4A: LateIdSt
  loc_A3CE4F: FFree1Ad var_A8
  loc_A3CE52: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CE57: PopAdLdVar
  loc_A3CE58: FLdPr Me
  loc_A3CE5B: VCallAd Control_ID_CarePacoMsk
  loc_A3CE5E: FStAdFunc var_A8
  loc_A3CE61: FLdPr var_A8
  loc_A3CE64: LateIdSt
  loc_A3CE69: FFree1Ad var_A8
  loc_A3CE6C: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CE71: PopAdLdVar
  loc_A3CE72: FLdPr Me
  loc_A3CE75: VCallAd Control_ID_CajaPacoMsk
  loc_A3CE78: FStAdFunc var_A8
  loc_A3CE7B: FLdPr var_A8
  loc_A3CE7E: LateIdSt
  loc_A3CE83: FFree1Ad var_A8
  loc_A3CE86: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CE8B: PopAdLdVar
  loc_A3CE8C: FLdPr Me
  loc_A3CE8F: VCallAd Control_ID_ChsrPacoMsk
  loc_A3CE92: FStAdFunc var_A8
  loc_A3CE95: FLdPr var_A8
  loc_A3CE98: LateIdSt
  loc_A3CE9D: FFree1Ad var_A8
  loc_A3CEA0: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CEA5: PopAdLdVar
  loc_A3CEA6: FLdPr Me
  loc_A3CEA9: VCallAd Control_ID_CatePacoMsk
  loc_A3CEAC: FStAdFunc var_A8
  loc_A3CEAF: FLdPr var_A8
  loc_A3CEB2: LateIdSt
  loc_A3CEB7: FFree1Ad var_A8
  loc_A3CEBA: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CEBF: PopAdLdVar
  loc_A3CEC0: FLdPr Me
  loc_A3CEC3: VCallAd Control_ID_ProvPacoMsk
  loc_A3CEC6: FStAdFunc var_A8
  loc_A3CEC9: FLdPr var_A8
  loc_A3CECC: LateIdSt
  loc_A3CED1: FFree1Ad var_A8
  loc_A3CED4: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A3CED9: PopAdLdVar
  loc_A3CEDA: FLdPr Me
  loc_A3CEDD: VCallAd Control_ID_DeexPacoMsk
  loc_A3CEE0: FStAdFunc var_A8
  loc_A3CEE3: FLdPr var_A8
  loc_A3CEE6: LateIdSt
  loc_A3CEEB: FFree1Ad var_A8
  loc_A3CEEE: LitI2_Byte 0
  loc_A3CEF0: CR8I2
  loc_A3CEF1: PopFPR4
  loc_A3CEF2: FLdPr Me
  loc_A3CEF5: Me.Left = from_stack_1s
  loc_A3CEFA: LitI2_Byte 0
  loc_A3CEFC: CR8I2
  loc_A3CEFD: PopFPR4
  loc_A3CEFE: FLdPr Me
  loc_A3CF01: Me.Top = from_stack_1s
  loc_A3CF06: LitStr "SELECT paraconta.*, "
  loc_A3CF09: LitStr " caercuco.DetaCuco AS CaerDeta, provcuco.DetaCuco AS ProvDeta,"
  loc_A3CF0C: ConcatStr
  loc_A3CF0D: FStStrNoPop var_AC
  loc_A3CF10: LitStr " deexcuco.DetaCuco AS DeexDeta,"
  loc_A3CF13: ConcatStr
  loc_A3CF14: FStStrNoPop var_B0
  loc_A3CF17: LitStr " chsrcuco.DetaCuco AS ChsrDeta,"
  loc_A3CF1A: ConcatStr
  loc_A3CF1B: FStStrNoPop var_B4
  loc_A3CF1E: LitStr " catecuco.DetaCuco AS CateDeta, cajacuco.DetaCuco AS CajaDeta,"
  loc_A3CF21: ConcatStr
  loc_A3CF22: FStStrNoPop var_B8
  loc_A3CF25: LitStr " carecuco.DetaCuco AS CareDeta,"
  loc_A3CF28: ConcatStr
  loc_A3CF29: FStStrNoPop var_BC
  loc_A3CF2C: LitStr " patrcuco.DetaCuco AS PatrDeta"
  loc_A3CF2F: ConcatStr
  loc_A3CF30: FStStrNoPop var_C0
  loc_A3CF33: LitStr " FROM paraconta"
  loc_A3CF36: ConcatStr
  loc_A3CF37: FStStrNoPop var_C4
  loc_A3CF3A: LitStr " LEFT JOIN infogov.cuentacontable AS caercuco ON caercuco.PeriInfo = paraconta.PeriInfo AND caercuco.CodiCuco = paraconta.CaerPaco"
  loc_A3CF3D: ConcatStr
  loc_A3CF3E: FStStrNoPop var_C8
  loc_A3CF41: LitStr " LEFT JOIN infogov.cuentacontable AS provcuco ON provcuco.PeriInfo = paraconta.PeriInfo AND provcuco.CodiCuco = paraconta.ProvPaco"
  loc_A3CF44: ConcatStr
  loc_A3CF45: FStStrNoPop var_CC
  loc_A3CF48: LitStr " LEFT JOIN infogov.cuentacontable AS deexcuco ON deexcuco.PeriInfo = paraconta.PeriInfo AND deexcuco.CodiCuco = paraconta.DeexPaco"
  loc_A3CF4B: ConcatStr
  loc_A3CF4C: FStStrNoPop var_D0
  loc_A3CF4F: LitStr " LEFT JOIN infogov.cuentacontable AS chsrcuco ON chsrcuco.PeriInfo = paraconta.PeriInfo AND chsrcuco.CodiCuco = paraconta.ChsrPaco"
  loc_A3CF52: ConcatStr
  loc_A3CF53: FStStrNoPop var_D4
  loc_A3CF56: LitStr " LEFT JOIN infogov.cuentacontable AS catecuco ON catecuco.PeriInfo = paraconta.PeriInfo AND catecuco.CodiCuco = paraconta.CatePaco"
  loc_A3CF59: ConcatStr
  loc_A3CF5A: FStStrNoPop var_D8
  loc_A3CF5D: LitStr " LEFT JOIN infogov.cuentacontable AS cajacuco ON cajacuco.PeriInfo = paraconta.PeriInfo AND cajacuco.CodiCuco = paraconta.CajaPaco"
  loc_A3CF60: ConcatStr
  loc_A3CF61: FStStrNoPop var_DC
  loc_A3CF64: LitStr " LEFT JOIN infogov.cuentacontable AS carecuco ON carecuco.PeriInfo = paraconta.PeriInfo AND carecuco.CodiCuco = paraconta.CarePaco"
  loc_A3CF67: ConcatStr
  loc_A3CF68: FStStrNoPop var_E0
  loc_A3CF6B: LitStr " LEFT JOIN infogov.cuentacontable AS patrcuco ON patrcuco.PeriInfo = paraconta.PeriInfo AND patrcuco.CodiCuco = paraconta.PatrPaco"
  loc_A3CF6E: ConcatStr
  loc_A3CF6F: FStStrNoPop var_E4
  loc_A3CF72: LitStr " WHERE paraconta.PeriInfo <= "
  loc_A3CF75: ConcatStr
  loc_A3CF76: FStStrNoPop var_E8
  loc_A3CF79: ImpAdLdI2 MemVar_C3D064
  loc_A3CF7C: CStrUI1
  loc_A3CF7E: FStStrNoPop var_EC
  loc_A3CF81: ConcatStr
  loc_A3CF82: FStStrNoPop var_F0
  loc_A3CF85: LitStr " ORDER BY paraconta.PeriInfo DESC"
  loc_A3CF88: ConcatStr
  loc_A3CF89: FStStrNoPop var_F4
  loc_A3CF8C: FLdPr Me
  loc_A3CF8F: MemLdRfVar from_stack_1.global_52
  loc_A3CF92: NewIfNullPr clsparaconta
  loc_A3CF95: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_A3CF9A: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A3CFC3: Call cmdCancelar_Click()
  loc_A3CFC8: LitI4 0
  loc_A3CFCD: LitI4 1
  loc_A3CFD2: FLdRfVar var_F8
  loc_A3CFD5: Redim
  loc_A3CFDF: FLdPr Me
  loc_A3CFE2: MemLdRfVar from_stack_1.global_52
  loc_A3CFE5: NewIfNullAd
  loc_A3CFE8: FStAd var_A8 
  loc_A3CFEC: FLdRfVar var_A8
  loc_A3CFEF: CVarRef
  loc_A3CFF4: ParmAry1St
  loc_A3CFFA: FLdPr Me
  loc_A3CFFD: VCallAd Control_ID_dgdABMS
  loc_A3D000: CVarAd
  loc_A3D004: ParmAry1St
  loc_A3D00A: FLdRfVar var_F8
  loc_A3D00D: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3D012: ILdRf var_A8
  loc_A3D015: CastAd
  loc_A3D018: FLdPr Me
  loc_A3D01B: MemStAdFunc
  loc_A3D01F: FLdRfVar var_F8
  loc_A3D022: Erase
  loc_A3D023: FFree1Ad var_A8
  loc_A3D026: ExitProcHresult
End Sub

Private Sub Form_Activate() '9992DC
  'Data Table: 4D1A2C
  loc_999280: FLdRfVar var_C2
  loc_999283: FLdRfVar var_C0
  loc_999286: LitVarI2 var_B8, 1
  loc_99928B: FLdPr Me
  loc_99928E: VCallAd Control_ID_tlbABMS
  loc_999291: FStAdFunc var_88
  loc_999294: FLdPr var_88
  loc_999297: LateIdLdVar var_98 DispID_3 0
  loc_99929E: CastAdVar Me
  loc_9992A2: FStAdFunc var_BC
  loc_9992A5: FLdPr var_BC
  loc_9992A8:  = Me.Buttons.ControlDefault
  loc_9992AD: FLdPr var_C0
  loc_9992B0:  = Me.Enabled
  loc_9992B5: FLdI2 var_C2
  loc_9992B8: FFreeAd var_88 = "": var_BC = ""
  loc_9992C1: FFreeVar var_98 = ""
  loc_9992C8: BranchF loc_9992D9
  loc_9992CB: FLdPr Me
  loc_9992CE: MemLdRfVar from_stack_1.global_52
  loc_9992D1: NewIfNullPr clsparaconta
  loc_9992D4: Call clsparaconta.Requery()
  loc_9992D9: ExitProcHresult
  loc_9992DA: EqI2
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95CC84
  'Data Table: 4D1A2C
  loc_95CC6C: ILdI2 KeyCode
  loc_95CC6F: ILdRf Me
  loc_95CC72: CastAd
  loc_95CC75: FStAdFunc var_88
  loc_95CC78: FLdRfVar var_88
  loc_95CC7B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95CC80: FFree1Ad var_88
  loc_95CC83: ExitProcHresult
End Sub

Private Sub MiinPacoTxt_GotFocus() '94C1B8
  'Data Table: 4D1A2C
  loc_94C1A4: FLdPr Me
  loc_94C1A7: VCallAd Control_ID_MiinPacoTxt
  loc_94C1AA: CVarAd
  loc_94C1AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C1B3: FFree1Var var_94 = ""
  loc_94C1B6: ExitProcHresult
End Sub

Private Sub MiinPacoTxt_KeyPress(KeyAscii As Integer) '95B4C8
  'Data Table: 4D1A2C
  loc_95B4AC: ILdI2 KeyAscii
  loc_95B4AF: LitStr "."
  loc_95B4B2: ImpAdCallI2 Asc()
  loc_95B4B7: EqI2
  loc_95B4B8: BranchF loc_95B4C6
  loc_95B4BB: LitStr ","
  loc_95B4BE: ImpAdCallI2 Asc()
  loc_95B4C3: IStI2 KeyAscii
  loc_95B4C6: ExitProcHresult
End Sub

Private Sub MiinPacoTxt_Validate(Cancel As Boolean) '9BCC9C
  'Data Table: 4D1A2C
  loc_9BCBE8: FLdRfVar var_8A
  loc_9BCBEB: FLdPr Me
  loc_9BCBEE: VCallAd Control_ID_cmdCancelar
  loc_9BCBF1: FStAdFunc var_88
  loc_9BCBF4: FLdPr var_88
  loc_9BCBF7:  = Me.Value
  loc_9BCBFC: FLdI2 var_8A
  loc_9BCBFF: NotI4
  loc_9BCC00: FLdRfVar var_92
  loc_9BCC03: FLdPr Me
  loc_9BCC06: VCallAd Control_ID_MiinPacoTxt
  loc_9BCC09: FStAdFunc var_90
  loc_9BCC0C: FLdPr var_90
  loc_9BCC0F:  = Me.Enabled
  loc_9BCC14: FLdI2 var_92
  loc_9BCC17: AndI4
  loc_9BCC18: FFreeAd var_88 = ""
  loc_9BCC1F: BranchF loc_9BCC9A
  loc_9BCC22: FLdRfVar var_98
  loc_9BCC25: FLdPr Me
  loc_9BCC28: VCallAd Control_ID_MiinPacoTxt
  loc_9BCC2B: FStAdFunc var_88
  loc_9BCC2E: FLdPr var_88
  loc_9BCC31:  = Me.Text
  loc_9BCC36: LitStr "0"
  loc_9BCC39: LitI2_Byte &HFF
  loc_9BCC3B: LitI2_Byte 0
  loc_9BCC3D: LitI2_Byte 0
  loc_9BCC3F: ILdRf var_98
  loc_9BCC42: LitStr "Importe mínimo para Inventario de Bienes de Uso..."
  loc_9BCC45: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BCC4A: FStStrNoPop var_9C
  loc_9BCC4D: FLdPr Me
  loc_9BCC50: MemStStrCopy
  loc_9BCC54: FFreeStr var_98 = ""
  loc_9BCC5B: FFree1Ad var_88
  loc_9BCC5E: FLdPr Me
  loc_9BCC61: VCallAd Control_ID_MiinPacoTxt
  loc_9BCC64: FStAdFunc var_A4
  loc_9BCC67: LitNothing
  loc_9BCC69: CastAd
  loc_9BCC6C: FStAdFunc var_A0
  loc_9BCC6F: FLdRfVar var_A0
  loc_9BCC72: FLdZeroAd var_A4
  loc_9BCC75: FStAdFuncNoPop
  loc_9BCC78: CastAd
  loc_9BCC7B: FStAdFunc var_90
  loc_9BCC7E: FLdRfVar var_90
  loc_9BCC81: FLdPr Me
  loc_9BCC84: MemLdRfVar from_stack_1.global_60
  loc_9BCC87: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BCC8C: IStI2 Cancel
  loc_9BCC8F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BCC9A: ExitProcHresult
End Sub

Private Sub SacePacoTxt_GotFocus() '94C488
  'Data Table: 4D1A2C
  loc_94C474: FLdPr Me
  loc_94C477: VCallAd Control_ID_SacePacoTxt
  loc_94C47A: CVarAd
  loc_94C47E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C483: FFree1Var var_94 = ""
  loc_94C486: ExitProcHresult
End Sub

Private Sub SacePacoTxt_Validate(Cancel As Boolean) '9CEE00
  'Data Table: 4D1A2C
  loc_9CED24: FLdRfVar var_8A
  loc_9CED27: FLdPr Me
  loc_9CED2A: VCallAd Control_ID_cmdCancelar
  loc_9CED2D: FStAdFunc var_88
  loc_9CED30: FLdPr var_88
  loc_9CED33:  = Me.Value
  loc_9CED38: FLdI2 var_8A
  loc_9CED3B: NotI4
  loc_9CED3C: FLdRfVar var_92
  loc_9CED3F: FLdPr Me
  loc_9CED42: VCallAd Control_ID_SacePacoTxt
  loc_9CED45: FStAdFunc var_90
  loc_9CED48: FLdPr var_90
  loc_9CED4B:  = Me.Enabled
  loc_9CED50: FLdI2 var_92
  loc_9CED53: AndI4
  loc_9CED54: FLdRfVar var_9C
  loc_9CED57: FLdPr Me
  loc_9CED5A: VCallAd Control_ID_SacePacoTxt
  loc_9CED5D: FStAdFunc var_98
  loc_9CED60: FLdPr var_98
  loc_9CED63:  = Me.Text
  loc_9CED68: ILdRf var_9C
  loc_9CED6B: LitStr vbNullString
  loc_9CED6E: NeStr
  loc_9CED70: AndI4
  loc_9CED71: FFree1Str var_9C
  loc_9CED74: FFreeAd var_88 = "": var_90 = ""
  loc_9CED7D: BranchF loc_9CEDFE
  loc_9CED80: FLdRfVar var_9C
  loc_9CED83: FLdPr Me
  loc_9CED86: VCallAd Control_ID_SacePacoTxt
  loc_9CED89: FStAdFunc var_88
  loc_9CED8C: FLdPr var_88
  loc_9CED8F:  = Me.Text
  loc_9CED94: LitI2_Byte 0
  loc_9CED96: PopTmpLdAd2 var_9E
  loc_9CED99: LitI2_Byte 0
  loc_9CED9B: PopTmpLdAd2 var_92
  loc_9CED9E: LitI2_Byte 0
  loc_9CEDA0: PopTmpLdAd2 var_8A
  loc_9CEDA3: ILdRf var_9C
  loc_9CEDA6: LitStr "ctas saldos cero"
  loc_9CEDA9: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CEDAE: FStStrNoPop var_A4
  loc_9CEDB1: FLdPr Me
  loc_9CEDB4: MemStStrCopy
  loc_9CEDB8: FFreeStr var_9C = ""
  loc_9CEDBF: FFree1Ad var_88
  loc_9CEDC2: FLdPr Me
  loc_9CEDC5: VCallAd Control_ID_SacePacoTxt
  loc_9CEDC8: FStAdFunc var_A8
  loc_9CEDCB: LitNothing
  loc_9CEDCD: CastAd
  loc_9CEDD0: FStAdFunc var_98
  loc_9CEDD3: FLdRfVar var_98
  loc_9CEDD6: FLdZeroAd var_A8
  loc_9CEDD9: FStAdFuncNoPop
  loc_9CEDDC: CastAd
  loc_9CEDDF: FStAdFunc var_90
  loc_9CEDE2: FLdRfVar var_90
  loc_9CEDE5: FLdPr Me
  loc_9CEDE8: MemLdRfVar from_stack_1.global_60
  loc_9CEDEB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CEDF0: IStI2 Cancel
  loc_9CEDF3: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CEDFE: ExitProcHresult
End Sub

Private Sub DefaPacoTxt_GotFocus() '94AE50
  'Data Table: 4D1A2C
  loc_94AE3C: FLdPr Me
  loc_94AE3F: VCallAd Control_ID_DefaPacoTxt
  loc_94AE42: CVarAd
  loc_94AE46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AE4B: FFree1Var var_94 = ""
  loc_94AE4E: ExitProcHresult
End Sub

Private Sub DefaPacoTxt_Validate(Cancel As Boolean) '9CECDC
  'Data Table: 4D1A2C
  loc_9CEC00: FLdRfVar var_8A
  loc_9CEC03: FLdPr Me
  loc_9CEC06: VCallAd Control_ID_cmdCancelar
  loc_9CEC09: FStAdFunc var_88
  loc_9CEC0C: FLdPr var_88
  loc_9CEC0F:  = Me.Value
  loc_9CEC14: FLdI2 var_8A
  loc_9CEC17: NotI4
  loc_9CEC18: FLdRfVar var_92
  loc_9CEC1B: FLdPr Me
  loc_9CEC1E: VCallAd Control_ID_DefaPacoTxt
  loc_9CEC21: FStAdFunc var_90
  loc_9CEC24: FLdPr var_90
  loc_9CEC27:  = Me.Enabled
  loc_9CEC2C: FLdI2 var_92
  loc_9CEC2F: AndI4
  loc_9CEC30: FLdRfVar var_9C
  loc_9CEC33: FLdPr Me
  loc_9CEC36: VCallAd Control_ID_DefaPacoTxt
  loc_9CEC39: FStAdFunc var_98
  loc_9CEC3C: FLdPr var_98
  loc_9CEC3F:  = Me.Text
  loc_9CEC44: ILdRf var_9C
  loc_9CEC47: LitStr vbNullString
  loc_9CEC4A: NeStr
  loc_9CEC4C: AndI4
  loc_9CEC4D: FFree1Str var_9C
  loc_9CEC50: FFreeAd var_88 = "": var_90 = ""
  loc_9CEC59: BranchF loc_9CECDA
  loc_9CEC5C: FLdRfVar var_9C
  loc_9CEC5F: FLdPr Me
  loc_9CEC62: VCallAd Control_ID_DefaPacoTxt
  loc_9CEC65: FStAdFunc var_88
  loc_9CEC68: FLdPr var_88
  loc_9CEC6B:  = Me.Text
  loc_9CEC70: LitI2_Byte 0
  loc_9CEC72: PopTmpLdAd2 var_9E
  loc_9CEC75: LitI2_Byte 0
  loc_9CEC77: PopTmpLdAd2 var_92
  loc_9CEC7A: LitI2_Byte 0
  loc_9CEC7C: PopTmpLdAd2 var_8A
  loc_9CEC7F: ILdRf var_9C
  loc_9CEC82: LitStr "ctas de débitos c/fact"
  loc_9CEC85: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CEC8A: FStStrNoPop var_A4
  loc_9CEC8D: FLdPr Me
  loc_9CEC90: MemStStrCopy
  loc_9CEC94: FFreeStr var_9C = ""
  loc_9CEC9B: FFree1Ad var_88
  loc_9CEC9E: FLdPr Me
  loc_9CECA1: VCallAd Control_ID_DefaPacoTxt
  loc_9CECA4: FStAdFunc var_A8
  loc_9CECA7: LitNothing
  loc_9CECA9: CastAd
  loc_9CECAC: FStAdFunc var_98
  loc_9CECAF: FLdRfVar var_98
  loc_9CECB2: FLdZeroAd var_A8
  loc_9CECB5: FStAdFuncNoPop
  loc_9CECB8: CastAd
  loc_9CECBB: FStAdFunc var_90
  loc_9CECBE: FLdRfVar var_90
  loc_9CECC1: FLdPr Me
  loc_9CECC4: MemLdRfVar from_stack_1.global_60
  loc_9CECC7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CECCC: IStI2 Cancel
  loc_9CECCF: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CECDA: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A7F0
  'Data Table: 4D1A2C
  loc_99A794: FLdRfVar var_B4
  loc_99A797: FLdRfVar var_B0
  loc_99A79A: FLdI2 ColIndex
  loc_99A79D: CVarI2 var_A8
  loc_99A7A0: PopAdLdVar
  loc_99A7A1: FLdPr Me
  loc_99A7A4: VCallAd Control_ID_dgdABMS
  loc_99A7A7: FStAdFunc var_88
  loc_99A7AA: FLdPr var_88
  loc_99A7AD: LateIdLdVar var_98 DispID_105 0
  loc_99A7B4: CastAdVar Me
  loc_99A7B8: FStAdFunc var_AC
  loc_99A7BB: FLdPr var_AC
  loc_99A7BE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A7C3: FLdPr var_B0
  loc_99A7C6:  = Me.DataField
  loc_99A7CB: FLdZeroAd var_B4
  loc_99A7CE: PopTmpLdAdStr
  loc_99A7D2: FLdPr Me
  loc_99A7D5: MemLdRfVar from_stack_1.global_52
  loc_99A7D8: NewIfNullPr clsparaconta
  loc_99A7DB: Call clsparaconta.Sort(from_stack_1v)
  loc_99A7E0: FFree1Str var_B8
  loc_99A7E3: FFreeAd var_88 = "": var_AC = ""
  loc_99A7EC: FFree1Var var_98 = ""
  loc_99A7EF: ExitProcHresult
End Sub

Private Sub CaerPacoMsk_UnknownEvent_0 '94C680
  'Data Table: 4D1A2C
  loc_94C66C: FLdPr Me
  loc_94C66F: VCallAd Control_ID_CaerPacoMsk
  loc_94C672: CVarAd
  loc_94C676: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C67B: FFree1Var var_94 = ""
  loc_94C67E: ExitProcHresult
End Sub

Private Sub CaerPacoMsk_UnknownEvent_8 '9FF700
  'Data Table: 4D1A2C
  loc_9FF5C0: FLdRfVar var_8A
  loc_9FF5C3: FLdPr Me
  loc_9FF5C6: VCallAd Control_ID_cmdCancelar
  loc_9FF5C9: FStAdFunc var_88
  loc_9FF5CC: FLdPr var_88
  loc_9FF5CF:  = Me.Value
  loc_9FF5D4: FLdI2 var_8A
  loc_9FF5D7: NotI4
  loc_9FF5D8: FLdPr Me
  loc_9FF5DB: VCallAd Control_ID_CaerPacoMsk
  loc_9FF5DE: FStAdFunc var_90
  loc_9FF5E1: FLdPr var_90
  loc_9FF5E4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9FF5EB: CBoolVar
  loc_9FF5ED: AndI4
  loc_9FF5EE: FFreeAd var_88 = ""
  loc_9FF5F5: FFree1Var var_A0 = ""
  loc_9FF5F8: BranchF loc_9FF6FF
  loc_9FF5FB: FLdPr Me
  loc_9FF5FE: VCallAd Control_ID_CaerPacoMsk
  loc_9FF601: FStAdFunc var_88
  loc_9FF604: FLdPr var_88
  loc_9FF607: LateIdLdVar var_A0 DispID_22 0
  loc_9FF60E: PopAd
  loc_9FF610: LitI4 0
  loc_9FF615: LitI4 2
  loc_9FF61A: FLdRfVar var_A8
  loc_9FF61D: Redim
  loc_9FF627: LitVarStr var_B8, "4"
  loc_9FF62C: LitI4 0
  loc_9FF631: ILdRf var_A8
  loc_9FF634: Ary1StVarCopy
  loc_9FF636: LitVarStr var_C8, "6"
  loc_9FF63B: LitI4 1
  loc_9FF640: ILdRf var_A8
  loc_9FF643: Ary1StVarCopy
  loc_9FF645: LitVarStr var_D8, "3"
  loc_9FF64A: LitI4 2
  loc_9FF64F: ILdRf var_A8
  loc_9FF652: Ary1StVarCopy
  loc_9FF654: FLdRfVar var_A8
  loc_9FF657: FLdPr Me
  loc_9FF65A: MemLdRfVar from_stack_1.global_64
  loc_9FF65D: NewIfNullRf
  loc_9FF661: ImpAdLdI2 MemVar_C3D064
  loc_9FF664: LitI2_Byte &HFF
  loc_9FF666: FLdRfVar var_A0
  loc_9FF669: CStrVarTmp
  loc_9FF66A: FStStrNoPop var_A4
  loc_9FF66D: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9FF672: FStStr var_DC
  loc_9FF675: FLdRfVar var_A8
  loc_9FF678: Erase
  loc_9FF679: ILdRf var_DC
  loc_9FF67C: FLdPr Me
  loc_9FF67F: MemStStrCopy
  loc_9FF683: FFreeStr var_A4 = ""
  loc_9FF68A: FFree1Ad var_88
  loc_9FF68D: FFree1Var var_A0 = ""
  loc_9FF690: FLdPr Me
  loc_9FF693: VCallAd Control_ID_CaerPacoMsk
  loc_9FF696: FStAdFunc var_E4
  loc_9FF699: FLdPr Me
  loc_9FF69C: VCallAd Control_ID_CaerPacoLbl
  loc_9FF69F: FStAdFunc var_E0
  loc_9FF6A2: FLdRfVar var_E0
  loc_9FF6A5: FLdZeroAd var_E4
  loc_9FF6A8: FStAdFuncNoPop
  loc_9FF6AB: CastAd
  loc_9FF6AE: FStAdFunc var_90
  loc_9FF6B1: FLdRfVar var_90
  loc_9FF6B4: FLdPr Me
  loc_9FF6B7: MemLdRfVar from_stack_1.global_60
  loc_9FF6BA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FF6BF: IStI2 ColIndex
  loc_9FF6C2: FFreeAd var_88 = "": var_90 = "": var_E0 = ""
  loc_9FF6CD: ILdI2 ColIndex
  loc_9FF6D0: NotI4
  loc_9FF6D1: BranchF loc_9FF6FF
  loc_9FF6D4: FLdRfVar var_A4
  loc_9FF6D7: FLdPr Me
  loc_9FF6DA: MemLdRfVar from_stack_1.global_64
  loc_9FF6DD: NewIfNullPr tblcuentacontable
  loc_9FF6E0: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9FF6E5: ILdRf var_A4
  loc_9FF6E8: FLdPr Me
  loc_9FF6EB: VCallAd Control_ID_CaerPacoLbl
  loc_9FF6EE: FStAdFunc var_88
  loc_9FF6F1: FLdPr var_88
  loc_9FF6F4: Me.Caption = from_stack_1
  loc_9FF6F9: FFree1Str var_A4
  loc_9FF6FC: FFree1Ad var_88
  loc_9FF6FF: ExitProcHresult
End Sub

Private Sub CaerPacoMsk_KeyPress(KeyAscii As Integer) '9F2514
  'Data Table: 4D1A2C
  loc_9F23EC: ILdI2 KeyAscii
  loc_9F23EF: CI4UI1
  loc_9F23F0: LitI4 &H20
  loc_9F23F5: EqI4
  loc_9F23F6: BranchF loc_9F2511
  loc_9F23F9: LitVar_Missing var_A4
  loc_9F23FC: PopAdLdVar
  loc_9F23FD: LitVarI4
  loc_9F2405: PopAdLdVar
  loc_9F2406: ImpAdLdRf MemVar_C3D6C0
  loc_9F2409: NewIfNullPr bscCuentaContable
  loc_9F240C: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F2411: FLdRfVar var_AC
  loc_9F2414: FLdRfVar var_A8
  loc_9F2417: ImpAdLdRf MemVar_C3D6C0
  loc_9F241A: NewIfNullPr bscCuentaContable
  loc_9F241D: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F2422: FLdPr var_A8
  loc_9F2425: from_stack_1 = clsbase.RecordCount
  loc_9F242A: ILdRf var_AC
  loc_9F242D: LitI4 0
  loc_9F2432: GtI4
  loc_9F2433: FFree1Ad var_A8
  loc_9F2436: BranchF loc_9F2511
  loc_9F2439: FLdRfVar var_C8
  loc_9F243C: FLdRfVar var_B8
  loc_9F243F: LitVarStr var_94, "CodiCuco"
  loc_9F2444: PopAdLdVar
  loc_9F2445: FLdRfVar var_B4
  loc_9F2448: FLdRfVar var_B0
  loc_9F244B: FLdRfVar var_A8
  loc_9F244E: ImpAdLdRf MemVar_C3D6C0
  loc_9F2451: NewIfNullPr bscCuentaContable
  loc_9F2454: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F2459: FLdPr var_A8
  loc_9F245C: from_stack_1v = clsbase.RsFrmGet()
  loc_9F2461: FLdPr var_B0
  loc_9F2464:  = Me.Fields
  loc_9F2469: FLdPr var_B4
  loc_9F246C: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2471: FLdPr var_B8
  loc_9F2474:  = Me.Value
  loc_9F2479: FLdRfVar var_C8
  loc_9F247C: CStrVarTmp
  loc_9F247D: CVarStr var_D8
  loc_9F2480: PopAdLdVar
  loc_9F2481: FLdPr Me
  loc_9F2484: VCallAd Control_ID_CaerPacoMsk
  loc_9F2487: FStAdFunc var_DC
  loc_9F248A: FLdPr var_DC
  loc_9F248D: LateIdSt
  loc_9F2492: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F249F: FFreeVar var_C8 = ""
  loc_9F24A6: FLdRfVar var_C8
  loc_9F24A9: FLdRfVar var_B8
  loc_9F24AC: LitVarStr var_94, "DetaCuco"
  loc_9F24B1: PopAdLdVar
  loc_9F24B2: FLdRfVar var_B4
  loc_9F24B5: FLdRfVar var_B0
  loc_9F24B8: FLdRfVar var_A8
  loc_9F24BB: ImpAdLdRf MemVar_C3D6C0
  loc_9F24BE: NewIfNullPr bscCuentaContable
  loc_9F24C1: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F24C6: FLdPr var_A8
  loc_9F24C9: from_stack_1v = clsbase.RsFrmGet()
  loc_9F24CE: FLdPr var_B0
  loc_9F24D1:  = Me.Fields
  loc_9F24D6: FLdPr var_B4
  loc_9F24D9: from_stack_2 = Me.Item(from_stack_1)
  loc_9F24DE: FLdPr var_B8
  loc_9F24E1:  = Me.Value
  loc_9F24E6: FLdRfVar var_C8
  loc_9F24E9: CStrVarTmp
  loc_9F24EA: FStStrNoPop var_E0
  loc_9F24ED: FLdPr Me
  loc_9F24F0: VCallAd Control_ID_CaerPacoLbl
  loc_9F24F3: FStAdFunc var_DC
  loc_9F24F6: FLdPr var_DC
  loc_9F24F9: Me.Caption = from_stack_1
  loc_9F24FE: FFree1Str var_E0
  loc_9F2501: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F250E: FFree1Var var_C8 = ""
  loc_9F2511: ExitProcHresult
End Sub

Private Sub CajaPacoMsk_UnknownEvent_0 '94AF28
  'Data Table: 4D1A2C
  loc_94AF14: FLdPr Me
  loc_94AF17: VCallAd Control_ID_CajaPacoMsk
  loc_94AF1A: CVarAd
  loc_94AF1E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AF23: FFree1Var var_94 = ""
  loc_94AF26: ExitProcHresult
End Sub

Private Sub CajaPacoMsk_UnknownEvent_8 '9F30E4
  'Data Table: 4D1A2C
  loc_9F2FC0: FLdRfVar var_8A
  loc_9F2FC3: FLdPr Me
  loc_9F2FC6: VCallAd Control_ID_cmdCancelar
  loc_9F2FC9: FStAdFunc var_88
  loc_9F2FCC: FLdPr var_88
  loc_9F2FCF:  = Me.Value
  loc_9F2FD4: FLdI2 var_8A
  loc_9F2FD7: NotI4
  loc_9F2FD8: FLdPr Me
  loc_9F2FDB: VCallAd Control_ID_CajaPacoMsk
  loc_9F2FDE: FStAdFunc var_90
  loc_9F2FE1: FLdPr var_90
  loc_9F2FE4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F2FEB: CBoolVar
  loc_9F2FED: AndI4
  loc_9F2FEE: FFreeAd var_88 = ""
  loc_9F2FF5: FFree1Var var_A0 = ""
  loc_9F2FF8: BranchF loc_9F30E1
  loc_9F2FFB: FLdPr Me
  loc_9F2FFE: VCallAd Control_ID_CajaPacoMsk
  loc_9F3001: FStAdFunc var_88
  loc_9F3004: FLdPr var_88
  loc_9F3007: LateIdLdVar var_A0 DispID_22 0
  loc_9F300E: PopAd
  loc_9F3010: LitI4 0
  loc_9F3015: LitI4 0
  loc_9F301A: FLdRfVar var_A8
  loc_9F301D: Redim
  loc_9F3027: LitVarStr var_B8, "1110"
  loc_9F302C: LitI4 0
  loc_9F3031: ILdRf var_A8
  loc_9F3034: Ary1StVarCopy
  loc_9F3036: FLdRfVar var_A8
  loc_9F3039: FLdPr Me
  loc_9F303C: MemLdRfVar from_stack_1.global_64
  loc_9F303F: NewIfNullRf
  loc_9F3043: ImpAdLdI2 MemVar_C3D064
  loc_9F3046: LitI2_Byte &HFF
  loc_9F3048: FLdRfVar var_A0
  loc_9F304B: CStrVarTmp
  loc_9F304C: FStStrNoPop var_A4
  loc_9F304F: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9F3054: FStStr var_BC
  loc_9F3057: FLdRfVar var_A8
  loc_9F305A: Erase
  loc_9F305B: ILdRf var_BC
  loc_9F305E: FLdPr Me
  loc_9F3061: MemStStrCopy
  loc_9F3065: FFreeStr var_A4 = ""
  loc_9F306C: FFree1Ad var_88
  loc_9F306F: FFree1Var var_A0 = ""
  loc_9F3072: FLdPr Me
  loc_9F3075: VCallAd Control_ID_CajaPacoMsk
  loc_9F3078: FStAdFunc var_C4
  loc_9F307B: FLdPr Me
  loc_9F307E: VCallAd Control_ID_CajaPacoLbl
  loc_9F3081: FStAdFunc var_C0
  loc_9F3084: FLdRfVar var_C0
  loc_9F3087: FLdZeroAd var_C4
  loc_9F308A: FStAdFuncNoPop
  loc_9F308D: CastAd
  loc_9F3090: FStAdFunc var_90
  loc_9F3093: FLdRfVar var_90
  loc_9F3096: FLdPr Me
  loc_9F3099: MemLdRfVar from_stack_1.global_60
  loc_9F309C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F30A1: IStI2 KeyAscii
  loc_9F30A4: FFreeAd var_88 = "": var_90 = "": var_C0 = ""
  loc_9F30AF: ILdI2 KeyAscii
  loc_9F30B2: NotI4
  loc_9F30B3: BranchF loc_9F30E1
  loc_9F30B6: FLdRfVar var_A4
  loc_9F30B9: FLdPr Me
  loc_9F30BC: MemLdRfVar from_stack_1.global_64
  loc_9F30BF: NewIfNullPr tblcuentacontable
  loc_9F30C2: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9F30C7: ILdRf var_A4
  loc_9F30CA: FLdPr Me
  loc_9F30CD: VCallAd Control_ID_CajaPacoLbl
  loc_9F30D0: FStAdFunc var_88
  loc_9F30D3: FLdPr var_88
  loc_9F30D6: Me.Caption = from_stack_1
  loc_9F30DB: FFree1Str var_A4
  loc_9F30DE: FFree1Ad var_88
  loc_9F30E1: ExitProcHresult
End Sub

Private Sub CajaPacoMsk_KeyPress(KeyAscii As Integer) '9F268C
  'Data Table: 4D1A2C
  loc_9F2564: ILdI2 KeyAscii
  loc_9F2567: CI4UI1
  loc_9F2568: LitI4 &H20
  loc_9F256D: EqI4
  loc_9F256E: BranchF loc_9F2689
  loc_9F2571: LitVar_Missing var_A4
  loc_9F2574: PopAdLdVar
  loc_9F2575: LitVarI4
  loc_9F257D: PopAdLdVar
  loc_9F257E: ImpAdLdRf MemVar_C3D6C0
  loc_9F2581: NewIfNullPr bscCuentaContable
  loc_9F2584: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F2589: FLdRfVar var_AC
  loc_9F258C: FLdRfVar var_A8
  loc_9F258F: ImpAdLdRf MemVar_C3D6C0
  loc_9F2592: NewIfNullPr bscCuentaContable
  loc_9F2595: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F259A: FLdPr var_A8
  loc_9F259D: from_stack_1 = clsbase.RecordCount
  loc_9F25A2: ILdRf var_AC
  loc_9F25A5: LitI4 0
  loc_9F25AA: GtI4
  loc_9F25AB: FFree1Ad var_A8
  loc_9F25AE: BranchF loc_9F2689
  loc_9F25B1: FLdRfVar var_C8
  loc_9F25B4: FLdRfVar var_B8
  loc_9F25B7: LitVarStr var_94, "CodiCuco"
  loc_9F25BC: PopAdLdVar
  loc_9F25BD: FLdRfVar var_B4
  loc_9F25C0: FLdRfVar var_B0
  loc_9F25C3: FLdRfVar var_A8
  loc_9F25C6: ImpAdLdRf MemVar_C3D6C0
  loc_9F25C9: NewIfNullPr bscCuentaContable
  loc_9F25CC: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F25D1: FLdPr var_A8
  loc_9F25D4: from_stack_1v = clsbase.RsFrmGet()
  loc_9F25D9: FLdPr var_B0
  loc_9F25DC:  = Me.Fields
  loc_9F25E1: FLdPr var_B4
  loc_9F25E4: from_stack_2 = Me.Item(from_stack_1)
  loc_9F25E9: FLdPr var_B8
  loc_9F25EC:  = Me.Value
  loc_9F25F1: FLdRfVar var_C8
  loc_9F25F4: CStrVarTmp
  loc_9F25F5: CVarStr var_D8
  loc_9F25F8: PopAdLdVar
  loc_9F25F9: FLdPr Me
  loc_9F25FC: VCallAd Control_ID_CajaPacoMsk
  loc_9F25FF: FStAdFunc var_DC
  loc_9F2602: FLdPr var_DC
  loc_9F2605: LateIdSt
  loc_9F260A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F2617: FFreeVar var_C8 = ""
  loc_9F261E: FLdRfVar var_C8
  loc_9F2621: FLdRfVar var_B8
  loc_9F2624: LitVarStr var_94, "DetaCuco"
  loc_9F2629: PopAdLdVar
  loc_9F262A: FLdRfVar var_B4
  loc_9F262D: FLdRfVar var_B0
  loc_9F2630: FLdRfVar var_A8
  loc_9F2633: ImpAdLdRf MemVar_C3D6C0
  loc_9F2636: NewIfNullPr bscCuentaContable
  loc_9F2639: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F263E: FLdPr var_A8
  loc_9F2641: from_stack_1v = clsbase.RsFrmGet()
  loc_9F2646: FLdPr var_B0
  loc_9F2649:  = Me.Fields
  loc_9F264E: FLdPr var_B4
  loc_9F2651: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2656: FLdPr var_B8
  loc_9F2659:  = Me.Value
  loc_9F265E: FLdRfVar var_C8
  loc_9F2661: CStrVarTmp
  loc_9F2662: FStStrNoPop var_E0
  loc_9F2665: FLdPr Me
  loc_9F2668: VCallAd Control_ID_CajaPacoLbl
  loc_9F266B: FStAdFunc var_DC
  loc_9F266E: FLdPr var_DC
  loc_9F2671: Me.Caption = from_stack_1
  loc_9F2676: FFree1Str var_E0
  loc_9F2679: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F2686: FFree1Var var_C8 = ""
  loc_9F2689: ExitProcHresult
End Sub

Private Sub CarePacoMsk_UnknownEvent_0 '94C878
  'Data Table: 4D1A2C
  loc_94C864: FLdPr Me
  loc_94C867: VCallAd Control_ID_CarePacoMsk
  loc_94C86A: CVarAd
  loc_94C86E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C873: FFree1Var var_94 = ""
  loc_94C876: ExitProcHresult
End Sub

Private Sub CarePacoMsk_UnknownEvent_8 '9FFD60
  'Data Table: 4D1A2C
  loc_9FFC20: FLdRfVar var_8A
  loc_9FFC23: FLdPr Me
  loc_9FFC26: VCallAd Control_ID_cmdCancelar
  loc_9FFC29: FStAdFunc var_88
  loc_9FFC2C: FLdPr var_88
  loc_9FFC2F:  = Me.Value
  loc_9FFC34: FLdI2 var_8A
  loc_9FFC37: NotI4
  loc_9FFC38: FLdPr Me
  loc_9FFC3B: VCallAd Control_ID_CarePacoMsk
  loc_9FFC3E: FStAdFunc var_90
  loc_9FFC41: FLdPr var_90
  loc_9FFC44: LateIdLdVar var_A0 DispID_13 -32767
  loc_9FFC4B: CBoolVar
  loc_9FFC4D: AndI4
  loc_9FFC4E: FFreeAd var_88 = ""
  loc_9FFC55: FFree1Var var_A0 = ""
  loc_9FFC58: BranchF loc_9FFD5F
  loc_9FFC5B: FLdPr Me
  loc_9FFC5E: VCallAd Control_ID_CarePacoMsk
  loc_9FFC61: FStAdFunc var_88
  loc_9FFC64: FLdPr var_88
  loc_9FFC67: LateIdLdVar var_A0 DispID_22 0
  loc_9FFC6E: PopAd
  loc_9FFC70: LitI4 0
  loc_9FFC75: LitI4 2
  loc_9FFC7A: FLdRfVar var_A8
  loc_9FFC7D: Redim
  loc_9FFC87: LitVarStr var_B8, "4"
  loc_9FFC8C: LitI4 0
  loc_9FFC91: ILdRf var_A8
  loc_9FFC94: Ary1StVarCopy
  loc_9FFC96: LitVarStr var_C8, "5"
  loc_9FFC9B: LitI4 1
  loc_9FFCA0: ILdRf var_A8
  loc_9FFCA3: Ary1StVarCopy
  loc_9FFCA5: LitVarStr var_D8, "3"
  loc_9FFCAA: LitI4 2
  loc_9FFCAF: ILdRf var_A8
  loc_9FFCB2: Ary1StVarCopy
  loc_9FFCB4: FLdRfVar var_A8
  loc_9FFCB7: FLdPr Me
  loc_9FFCBA: MemLdRfVar from_stack_1.global_64
  loc_9FFCBD: NewIfNullRf
  loc_9FFCC1: ImpAdLdI2 MemVar_C3D064
  loc_9FFCC4: LitI2_Byte &HFF
  loc_9FFCC6: FLdRfVar var_A0
  loc_9FFCC9: CStrVarTmp
  loc_9FFCCA: FStStrNoPop var_A4
  loc_9FFCCD: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9FFCD2: FStStr var_DC
  loc_9FFCD5: FLdRfVar var_A8
  loc_9FFCD8: Erase
  loc_9FFCD9: ILdRf var_DC
  loc_9FFCDC: FLdPr Me
  loc_9FFCDF: MemStStrCopy
  loc_9FFCE3: FFreeStr var_A4 = ""
  loc_9FFCEA: FFree1Ad var_88
  loc_9FFCED: FFree1Var var_A0 = ""
  loc_9FFCF0: FLdPr Me
  loc_9FFCF3: VCallAd Control_ID_CarePacoMsk
  loc_9FFCF6: FStAdFunc var_E4
  loc_9FFCF9: FLdPr Me
  loc_9FFCFC: VCallAd Control_ID_CarePacoLbl
  loc_9FFCFF: FStAdFunc var_E0
  loc_9FFD02: FLdRfVar var_E0
  loc_9FFD05: FLdZeroAd var_E4
  loc_9FFD08: FStAdFuncNoPop
  loc_9FFD0B: CastAd
  loc_9FFD0E: FStAdFunc var_90
  loc_9FFD11: FLdRfVar var_90
  loc_9FFD14: FLdPr Me
  loc_9FFD17: MemLdRfVar from_stack_1.global_60
  loc_9FFD1A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FFD1F: IStI2 KeyAscii
  loc_9FFD22: FFreeAd var_88 = "": var_90 = "": var_E0 = ""
  loc_9FFD2D: ILdI2 KeyAscii
  loc_9FFD30: NotI4
  loc_9FFD31: BranchF loc_9FFD5F
  loc_9FFD34: FLdRfVar var_A4
  loc_9FFD37: FLdPr Me
  loc_9FFD3A: MemLdRfVar from_stack_1.global_64
  loc_9FFD3D: NewIfNullPr tblcuentacontable
  loc_9FFD40: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9FFD45: ILdRf var_A4
  loc_9FFD48: FLdPr Me
  loc_9FFD4B: VCallAd Control_ID_CarePacoLbl
  loc_9FFD4E: FStAdFunc var_88
  loc_9FFD51: FLdPr var_88
  loc_9FFD54: Me.Caption = from_stack_1
  loc_9FFD59: FFree1Str var_A4
  loc_9FFD5C: FFree1Ad var_88
  loc_9FFD5F: ExitProcHresult
End Sub

Private Sub CarePacoMsk_KeyPress(KeyAscii As Integer) '9F239C
  'Data Table: 4D1A2C
  loc_9F2274: ILdI2 KeyAscii
  loc_9F2277: CI4UI1
  loc_9F2278: LitI4 &H20
  loc_9F227D: EqI4
  loc_9F227E: BranchF loc_9F2399
  loc_9F2281: LitVar_Missing var_A4
  loc_9F2284: PopAdLdVar
  loc_9F2285: LitVarI4
  loc_9F228D: PopAdLdVar
  loc_9F228E: ImpAdLdRf MemVar_C3D6C0
  loc_9F2291: NewIfNullPr bscCuentaContable
  loc_9F2294: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F2299: FLdRfVar var_AC
  loc_9F229C: FLdRfVar var_A8
  loc_9F229F: ImpAdLdRf MemVar_C3D6C0
  loc_9F22A2: NewIfNullPr bscCuentaContable
  loc_9F22A5: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F22AA: FLdPr var_A8
  loc_9F22AD: from_stack_1 = clsbase.RecordCount
  loc_9F22B2: ILdRf var_AC
  loc_9F22B5: LitI4 0
  loc_9F22BA: GtI4
  loc_9F22BB: FFree1Ad var_A8
  loc_9F22BE: BranchF loc_9F2399
  loc_9F22C1: FLdRfVar var_C8
  loc_9F22C4: FLdRfVar var_B8
  loc_9F22C7: LitVarStr var_94, "CodiCuco"
  loc_9F22CC: PopAdLdVar
  loc_9F22CD: FLdRfVar var_B4
  loc_9F22D0: FLdRfVar var_B0
  loc_9F22D3: FLdRfVar var_A8
  loc_9F22D6: ImpAdLdRf MemVar_C3D6C0
  loc_9F22D9: NewIfNullPr bscCuentaContable
  loc_9F22DC: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F22E1: FLdPr var_A8
  loc_9F22E4: from_stack_1v = clsbase.RsFrmGet()
  loc_9F22E9: FLdPr var_B0
  loc_9F22EC:  = Me.Fields
  loc_9F22F1: FLdPr var_B4
  loc_9F22F4: from_stack_2 = Me.Item(from_stack_1)
  loc_9F22F9: FLdPr var_B8
  loc_9F22FC:  = Me.Value
  loc_9F2301: FLdRfVar var_C8
  loc_9F2304: CStrVarTmp
  loc_9F2305: CVarStr var_D8
  loc_9F2308: PopAdLdVar
  loc_9F2309: FLdPr Me
  loc_9F230C: VCallAd Control_ID_CarePacoMsk
  loc_9F230F: FStAdFunc var_DC
  loc_9F2312: FLdPr var_DC
  loc_9F2315: LateIdSt
  loc_9F231A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F2327: FFreeVar var_C8 = ""
  loc_9F232E: FLdRfVar var_C8
  loc_9F2331: FLdRfVar var_B8
  loc_9F2334: LitVarStr var_94, "DetaCuco"
  loc_9F2339: PopAdLdVar
  loc_9F233A: FLdRfVar var_B4
  loc_9F233D: FLdRfVar var_B0
  loc_9F2340: FLdRfVar var_A8
  loc_9F2343: ImpAdLdRf MemVar_C3D6C0
  loc_9F2346: NewIfNullPr bscCuentaContable
  loc_9F2349: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F234E: FLdPr var_A8
  loc_9F2351: from_stack_1v = clsbase.RsFrmGet()
  loc_9F2356: FLdPr var_B0
  loc_9F2359:  = Me.Fields
  loc_9F235E: FLdPr var_B4
  loc_9F2361: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2366: FLdPr var_B8
  loc_9F2369:  = Me.Value
  loc_9F236E: FLdRfVar var_C8
  loc_9F2371: CStrVarTmp
  loc_9F2372: FStStrNoPop var_E0
  loc_9F2375: FLdPr Me
  loc_9F2378: VCallAd Control_ID_CarePacoLbl
  loc_9F237B: FStAdFunc var_DC
  loc_9F237E: FLdPr var_DC
  loc_9F2381: Me.Caption = from_stack_1
  loc_9F2386: FFree1Str var_E0
  loc_9F2389: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F2396: FFree1Var var_C8 = ""
  loc_9F2399: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9B5B84
  'Data Table: 4D1A2C
  loc_9B5AE0: LitI2_Byte 0
  loc_9B5AE2: CUI1I2
  loc_9B5AE4: FLdPr Me
  loc_9B5AE7: MemStUI1
  loc_9B5AEB: ILdRf Me
  loc_9B5AEE: CastAd
  loc_9B5AF1: FStAdFunc var_88
  loc_9B5AF4: FLdRfVar var_88
  loc_9B5AF7: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9B5AFC: FFree1Ad var_88
  loc_9B5AFF: LitI4 0
  loc_9B5B04: LitI4 0
  loc_9B5B09: FLdRfVar var_8C
  loc_9B5B0C: Redim
  loc_9B5B16: FLdPr Me
  loc_9B5B19: VCallAd Control_ID_dgdABMS
  loc_9B5B1C: CVarAd
  loc_9B5B20: ParmAry1St
  loc_9B5B26: FLdRfVar var_8C
  loc_9B5B29: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5B2E: FLdRfVar var_8C
  loc_9B5B31: Erase
  loc_9B5B32: FLdPr Me
  loc_9B5B35: MemLdRfVar from_stack_1.global_52
  loc_9B5B38: NewIfNullAd
  loc_9B5B3B: FStAd var_A0 
  loc_9B5B3F: FLdRfVar var_A0
  loc_9B5B42: CVarRef
  loc_9B5B47: ILdRf Me
  loc_9B5B4A: CastAd
  loc_9B5B4D: FStAdFunc var_88
  loc_9B5B50: FLdRfVar var_88
  loc_9B5B53: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9B5B58: ILdRf var_A0
  loc_9B5B5B: CastAd
  loc_9B5B5E: FLdPr Me
  loc_9B5B61: MemStAdFunc
  loc_9B5B65: FFreeAd var_88 = ""
  loc_9B5B6C: ILdRf Me
  loc_9B5B6F: CastAd
  loc_9B5B72: FStAdFunc var_88
  loc_9B5B75: FLdRfVar var_88
  loc_9B5B78: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9B5B7D: FFree1Ad var_88
  loc_9B5B80: ExitProcHresult
End Sub

Private Sub CatePacoMsk_UnknownEvent_0 '94AFB8
  'Data Table: 4D1A2C
  loc_94AFA4: FLdPr Me
  loc_94AFA7: VCallAd Control_ID_CatePacoMsk
  loc_94AFAA: CVarAd
  loc_94AFAE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AFB3: FFree1Var var_94 = ""
  loc_94AFB6: ExitProcHresult
End Sub

Private Function CatePacoMsk_UnknownEvent_8(arg_C) '9FB99C
  'Data Table: 4D1A2C
  loc_9FB868: FLdRfVar var_8A
  loc_9FB86B: FLdPr Me
  loc_9FB86E: VCallAd Control_ID_cmdCancelar
  loc_9FB871: FStAdFunc var_88
  loc_9FB874: FLdPr var_88
  loc_9FB877:  = Me.Value
  loc_9FB87C: FLdI2 var_8A
  loc_9FB87F: NotI4
  loc_9FB880: FLdPr Me
  loc_9FB883: VCallAd Control_ID_CatePacoMsk
  loc_9FB886: FStAdFunc var_90
  loc_9FB889: FLdPr var_90
  loc_9FB88C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9FB893: CBoolVar
  loc_9FB895: AndI4
  loc_9FB896: FFreeAd var_88 = ""
  loc_9FB89D: FFree1Var var_A0 = ""
  loc_9FB8A0: BranchF loc_9FB998
  loc_9FB8A3: FLdPr Me
  loc_9FB8A6: VCallAd Control_ID_CatePacoMsk
  loc_9FB8A9: FStAdFunc var_88
  loc_9FB8AC: FLdPr var_88
  loc_9FB8AF: LateIdLdVar var_A0 DispID_22 0
  loc_9FB8B6: PopAd
  loc_9FB8B8: LitI4 0
  loc_9FB8BD: LitI4 1
  loc_9FB8C2: FLdRfVar var_A8
  loc_9FB8C5: Redim
  loc_9FB8CF: LitVarStr var_B8, "4"
  loc_9FB8D4: LitI4 0
  loc_9FB8D9: ILdRf var_A8
  loc_9FB8DC: Ary1StVarCopy
  loc_9FB8DE: LitVarStr var_C8, "1110"
  loc_9FB8E3: LitI4 1
  loc_9FB8E8: ILdRf var_A8
  loc_9FB8EB: Ary1StVarCopy
  loc_9FB8ED: FLdRfVar var_A8
  loc_9FB8F0: FLdPr Me
  loc_9FB8F3: MemLdRfVar from_stack_1.global_64
  loc_9FB8F6: NewIfNullRf
  loc_9FB8FA: ImpAdLdI2 MemVar_C3D064
  loc_9FB8FD: LitI2_Byte &HFF
  loc_9FB8FF: FLdRfVar var_A0
  loc_9FB902: CStrVarTmp
  loc_9FB903: FStStrNoPop var_A4
  loc_9FB906: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9FB90B: FStStr var_CC
  loc_9FB90E: FLdRfVar var_A8
  loc_9FB911: Erase
  loc_9FB912: ILdRf var_CC
  loc_9FB915: FLdPr Me
  loc_9FB918: MemStStrCopy
  loc_9FB91C: FFreeStr var_A4 = ""
  loc_9FB923: FFree1Ad var_88
  loc_9FB926: FFree1Var var_A0 = ""
  loc_9FB929: FLdPr Me
  loc_9FB92C: VCallAd Control_ID_CatePacoMsk
  loc_9FB92F: FStAdFunc var_D4
  loc_9FB932: FLdPr Me
  loc_9FB935: VCallAd Control_ID_CatePacoLbl
  loc_9FB938: FStAdFunc var_D0
  loc_9FB93B: FLdRfVar var_D0
  loc_9FB93E: FLdZeroAd var_D4
  loc_9FB941: FStAdFuncNoPop
  loc_9FB944: CastAd
  loc_9FB947: FStAdFunc var_90
  loc_9FB94A: FLdRfVar var_90
  loc_9FB94D: FLdPr Me
  loc_9FB950: MemLdRfVar from_stack_1.global_60
  loc_9FB953: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FB958: IStI2 arg_C
  loc_9FB95B: FFreeAd var_88 = "": var_90 = "": var_D0 = ""
  loc_9FB966: ILdI2 arg_C
  loc_9FB969: NotI4
  loc_9FB96A: BranchF loc_9FB998
  loc_9FB96D: FLdRfVar var_A4
  loc_9FB970: FLdPr Me
  loc_9FB973: MemLdRfVar from_stack_1.global_64
  loc_9FB976: NewIfNullPr tblcuentacontable
  loc_9FB979: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9FB97E: ILdRf var_A4
  loc_9FB981: FLdPr Me
  loc_9FB984: VCallAd Control_ID_CatePacoLbl
  loc_9FB987: FStAdFunc var_88
  loc_9FB98A: FLdPr var_88
  loc_9FB98D: Me.Caption = from_stack_1
  loc_9FB992: FFree1Str var_A4
  loc_9FB995: FFree1Ad var_88
  loc_9FB998: ExitProcHresult
End Function

Private Sub CatePacoMsk_KeyPress(KeyAscii As Integer) '9F1DBC
  'Data Table: 4D1A2C
  loc_9F1C94: ILdI2 KeyAscii
  loc_9F1C97: CI4UI1
  loc_9F1C98: LitI4 &H20
  loc_9F1C9D: EqI4
  loc_9F1C9E: BranchF loc_9F1DB9
  loc_9F1CA1: LitVar_Missing var_A4
  loc_9F1CA4: PopAdLdVar
  loc_9F1CA5: LitVarI4
  loc_9F1CAD: PopAdLdVar
  loc_9F1CAE: ImpAdLdRf MemVar_C3D6C0
  loc_9F1CB1: NewIfNullPr bscCuentaContable
  loc_9F1CB4: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F1CB9: FLdRfVar var_AC
  loc_9F1CBC: FLdRfVar var_A8
  loc_9F1CBF: ImpAdLdRf MemVar_C3D6C0
  loc_9F1CC2: NewIfNullPr bscCuentaContable
  loc_9F1CC5: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1CCA: FLdPr var_A8
  loc_9F1CCD: from_stack_1 = clsbase.RecordCount
  loc_9F1CD2: ILdRf var_AC
  loc_9F1CD5: LitI4 0
  loc_9F1CDA: GtI4
  loc_9F1CDB: FFree1Ad var_A8
  loc_9F1CDE: BranchF loc_9F1DB9
  loc_9F1CE1: FLdRfVar var_C8
  loc_9F1CE4: FLdRfVar var_B8
  loc_9F1CE7: LitVarStr var_94, "CodiCuco"
  loc_9F1CEC: PopAdLdVar
  loc_9F1CED: FLdRfVar var_B4
  loc_9F1CF0: FLdRfVar var_B0
  loc_9F1CF3: FLdRfVar var_A8
  loc_9F1CF6: ImpAdLdRf MemVar_C3D6C0
  loc_9F1CF9: NewIfNullPr bscCuentaContable
  loc_9F1CFC: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1D01: FLdPr var_A8
  loc_9F1D04: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1D09: FLdPr var_B0
  loc_9F1D0C:  = Me.Fields
  loc_9F1D11: FLdPr var_B4
  loc_9F1D14: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1D19: FLdPr var_B8
  loc_9F1D1C:  = Me.Value
  loc_9F1D21: FLdRfVar var_C8
  loc_9F1D24: CStrVarTmp
  loc_9F1D25: CVarStr var_D8
  loc_9F1D28: PopAdLdVar
  loc_9F1D29: FLdPr Me
  loc_9F1D2C: VCallAd Control_ID_CatePacoMsk
  loc_9F1D2F: FStAdFunc var_DC
  loc_9F1D32: FLdPr var_DC
  loc_9F1D35: LateIdSt
  loc_9F1D3A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1D47: FFreeVar var_C8 = ""
  loc_9F1D4E: FLdRfVar var_C8
  loc_9F1D51: FLdRfVar var_B8
  loc_9F1D54: LitVarStr var_94, "DetaCuco"
  loc_9F1D59: PopAdLdVar
  loc_9F1D5A: FLdRfVar var_B4
  loc_9F1D5D: FLdRfVar var_B0
  loc_9F1D60: FLdRfVar var_A8
  loc_9F1D63: ImpAdLdRf MemVar_C3D6C0
  loc_9F1D66: NewIfNullPr bscCuentaContable
  loc_9F1D69: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1D6E: FLdPr var_A8
  loc_9F1D71: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1D76: FLdPr var_B0
  loc_9F1D79:  = Me.Fields
  loc_9F1D7E: FLdPr var_B4
  loc_9F1D81: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1D86: FLdPr var_B8
  loc_9F1D89:  = Me.Value
  loc_9F1D8E: FLdRfVar var_C8
  loc_9F1D91: CStrVarTmp
  loc_9F1D92: FStStrNoPop var_E0
  loc_9F1D95: FLdPr Me
  loc_9F1D98: VCallAd Control_ID_CatePacoLbl
  loc_9F1D9B: FStAdFunc var_DC
  loc_9F1D9E: FLdPr var_DC
  loc_9F1DA1: Me.Caption = from_stack_1
  loc_9F1DA6: FFree1Str var_E0
  loc_9F1DA9: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1DB6: FFree1Var var_C8 = ""
  loc_9F1DB9: ExitProcHresult
  loc_9F1DBA: Ary1StCy
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'ACD7B0
  'Data Table: 4D1A2C
  loc_ACD1E8: ILdRf Button
  loc_ACD1EB: FStAd var_88 
  loc_ACD1EF: FLdRfVar var_8C
  loc_ACD1F2: FLdPr var_88
  loc_ACD1F5:  = Me.Key
  loc_ACD1FA: FLdZeroAd var_8C
  loc_ACD1FD: FStStr var_90
  loc_ACD200: ILdRf var_90
  loc_ACD203: LitStr "btnCrear"
  loc_ACD206: EqStr
  loc_ACD208: BranchF loc_ACD20E
  loc_ACD20B: Branch loc_ACD7AD
  loc_ACD20E: ILdRf var_90
  loc_ACD211: LitStr "btnModificar"
  loc_ACD214: EqStr
  loc_ACD216: BranchF loc_ACD3E1
  loc_ACD219: FLdRfVar var_94
  loc_ACD21C: FLdPr Me
  loc_ACD21F: MemLdRfVar from_stack_1.global_52
  loc_ACD222: NewIfNullPr clsparaconta
  loc_ACD225: from_stack_1 = clsparaconta.RecordCount
  loc_ACD22A: ILdRf var_94
  loc_ACD22D: LitI4 0
  loc_ACD232: GtI4
  loc_ACD233: BranchF loc_ACD3DE
  loc_ACD236: FLdRfVar var_B0
  loc_ACD239: LitVarStr var_AC, "FedePaco"
  loc_ACD23E: PopAdLdVar
  loc_ACD23F: FLdRfVar var_9C
  loc_ACD242: FLdRfVar var_98
  loc_ACD245: FLdPr Me
  loc_ACD248: MemLdRfVar from_stack_1.global_52
  loc_ACD24B: NewIfNullPr clsparaconta
  loc_ACD24E: from_stack_1v = clsparaconta.RsFrmGet()
  loc_ACD253: FLdPr var_98
  loc_ACD256:  = Me.Fields
  loc_ACD25B: FLdPr var_9C
  loc_ACD25E: from_stack_2 = Me.Item(from_stack_1)
  loc_ACD263: FLdZeroAd var_B0
  loc_ACD266: CVarAd
  loc_ACD26A: ImpAdCallI2 IsNull()
  loc_ACD26F: NotI4
  loc_ACD270: FFreeAd var_98 = ""
  loc_ACD277: FFree1Var var_C0 = ""
  loc_ACD27A: BranchF loc_ACD355
  loc_ACD27D: LitI4 0
  loc_ACD282: LitStr "Ya existe un Balance Definitivo. No se habilitarán todos los parámetros. Verifique..."
  loc_ACD285: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ACD28A: ImpAdLdI2 MemVar_C3D064
  loc_ACD28D: FLdPr Me
  loc_ACD290: MemLdRfVar from_stack_1.global_52
  loc_ACD293: NewIfNullPr clsparaconta
  loc_ACD296: Call clsparaconta.Encontrar(from_stack_1v)
  loc_ACD29B: LitI2_Byte 2
  loc_ACD29D: FLdPr Me
  loc_ACD2A0: MemStUI1
  loc_ACD2A4: ILdRf Me
  loc_ACD2A7: CastAd
  loc_ACD2AA: FStAdFunc var_98
  loc_ACD2AD: FLdRfVar var_98
  loc_ACD2B0: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_ACD2B5: FFree1Ad var_98
  loc_ACD2B8: LitI4 0
  loc_ACD2BD: LitI4 0
  loc_ACD2C2: FLdRfVar var_C4
  loc_ACD2C5: Redim
  loc_ACD2CF: FLdPr Me
  loc_ACD2D2: VCallAd Control_ID_dgdABMS
  loc_ACD2D5: CVarAd
  loc_ACD2D9: ParmAry1St
  loc_ACD2DF: FLdRfVar var_C4
  loc_ACD2E2: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_ACD2E7: FLdRfVar var_C4
  loc_ACD2EA: Erase
  loc_ACD2EB: ILdRf Me
  loc_ACD2EE: CastAd
  loc_ACD2F1: FStAdFunc var_98
  loc_ACD2F4: FLdRfVar var_98
  loc_ACD2F7: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_ACD2FC: FFree1Ad var_98
  loc_ACD2FF: LitI4 0
  loc_ACD304: LitI4 2
  loc_ACD309: FLdRfVar var_C4
  loc_ACD30C: Redim
  loc_ACD316: FLdPr Me
  loc_ACD319: VCallAd Control_ID_MiinPacoTxt
  loc_ACD31C: CVarAd
  loc_ACD320: ParmAry1St
  loc_ACD326: FLdPr Me
  loc_ACD329: VCallAd Control_ID_SacePacoTxt
  loc_ACD32C: CVarAd
  loc_ACD330: ParmAry1St
  loc_ACD336: FLdPr Me
  loc_ACD339: VCallAd Control_ID_DefaPacoTxt
  loc_ACD33C: CVarAd
  loc_ACD340: ParmAry1St
  loc_ACD346: FLdRfVar var_C4
  loc_ACD349: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_ACD34E: FLdRfVar var_C4
  loc_ACD351: Erase
  loc_ACD352: Branch loc_ACD3DE
  loc_ACD355: ImpAdLdI2 MemVar_C3D064
  loc_ACD358: FLdPr Me
  loc_ACD35B: MemLdRfVar from_stack_1.global_52
  loc_ACD35E: NewIfNullPr clsparaconta
  loc_ACD361: Call clsparaconta.Encontrar(from_stack_1v)
  loc_ACD366: LitI2_Byte 2
  loc_ACD368: FLdPr Me
  loc_ACD36B: MemStUI1
  loc_ACD36F: ILdRf Me
  loc_ACD372: CastAd
  loc_ACD375: FStAdFunc var_98
  loc_ACD378: FLdRfVar var_98
  loc_ACD37B: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_ACD380: FFree1Ad var_98
  loc_ACD383: LitI4 0
  loc_ACD388: LitI4 0
  loc_ACD38D: FLdRfVar var_C4
  loc_ACD390: Redim
  loc_ACD39A: FLdPr Me
  loc_ACD39D: VCallAd Control_ID_dgdABMS
  loc_ACD3A0: CVarAd
  loc_ACD3A4: ParmAry1St
  loc_ACD3AA: FLdRfVar var_C4
  loc_ACD3AD: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_ACD3B2: FLdRfVar var_C4
  loc_ACD3B5: Erase
  loc_ACD3B6: ILdRf Me
  loc_ACD3B9: CastAd
  loc_ACD3BC: FStAdFunc var_98
  loc_ACD3BF: FLdRfVar var_98
  loc_ACD3C2: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_ACD3C7: FFree1Ad var_98
  loc_ACD3CA: ILdRf Me
  loc_ACD3CD: CastAd
  loc_ACD3D0: FStAdFunc var_98
  loc_ACD3D3: FLdRfVar var_98
  loc_ACD3D6: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_ACD3DB: FFree1Ad var_98
  loc_ACD3DE: Branch loc_ACD7AD
  loc_ACD3E1: ILdRf var_90
  loc_ACD3E4: LitStr "btnEliminar"
  loc_ACD3E7: EqStr
  loc_ACD3E9: BranchF loc_ACD3EF
  loc_ACD3EC: Branch loc_ACD7AD
  loc_ACD3EF: ILdRf var_90
  loc_ACD3F2: LitStr "btnGuardar"
  loc_ACD3F5: EqStr
  loc_ACD3F7: BranchF loc_ACD6A9
  loc_ACD3FA: LitStr vbNullString
  loc_ACD3FD: FLdPr Me
  loc_ACD400: MemStStrCopy
  loc_ACD404: LitI2_Byte 0
  loc_ACD406: PopTmpLdAd2 var_E6
  loc_ACD409: Call MiinPacoTxt_Validate(from_stack_1v)
  loc_ACD40E: FLdPr Me
  loc_ACD411: MemLdStr global_60
  loc_ACD414: LitStr vbNullString
  loc_ACD417: NeStr
  loc_ACD419: BranchF loc_ACD41D
  loc_ACD41C: ExitProcHresult
  loc_ACD41D: LitI2_Byte 0
  loc_ACD41F: PopTmpLdAd2 var_E6
  loc_ACD422: Call CaerPacoMsk_UnknownEvent_8()
  loc_ACD427: FLdPr Me
  loc_ACD42A: MemLdStr global_60
  loc_ACD42D: LitStr vbNullString
  loc_ACD430: NeStr
  loc_ACD432: BranchF loc_ACD436
  loc_ACD435: ExitProcHresult
  loc_ACD436: LitI2_Byte 0
  loc_ACD438: PopTmpLdAd2 var_E6
  loc_ACD43B: Call ProvPacoMsk_UnknownEvent_8()
  loc_ACD440: FLdPr Me
  loc_ACD443: MemLdStr global_60
  loc_ACD446: LitStr vbNullString
  loc_ACD449: NeStr
  loc_ACD44B: BranchF loc_ACD44F
  loc_ACD44E: ExitProcHresult
  loc_ACD44F: LitI2_Byte 0
  loc_ACD451: PopTmpLdAd2 var_E6
  loc_ACD454: Call DeexPacoMsk_UnknownEvent_8()
  loc_ACD459: FLdPr Me
  loc_ACD45C: MemLdStr global_60
  loc_ACD45F: LitStr vbNullString
  loc_ACD462: NeStr
  loc_ACD464: BranchF loc_ACD468
  loc_ACD467: ExitProcHresult
  loc_ACD468: LitI2_Byte 0
  loc_ACD46A: PopTmpLdAd2 var_E6
  loc_ACD46D: Call ChsrPacoMsk_UnknownEvent_8()
  loc_ACD472: FLdPr Me
  loc_ACD475: MemLdStr global_60
  loc_ACD478: LitStr vbNullString
  loc_ACD47B: NeStr
  loc_ACD47D: BranchF loc_ACD481
  loc_ACD480: ExitProcHresult
  loc_ACD481: LitI2_Byte 0
  loc_ACD483: PopTmpLdAd2 var_E6
  loc_ACD486: from_stack_2v = CatePacoMsk_UnknownEvent_8(from_stack_1v)
  loc_ACD48B: FLdPr Me
  loc_ACD48E: MemLdStr global_60
  loc_ACD491: LitStr vbNullString
  loc_ACD494: NeStr
  loc_ACD496: BranchF loc_ACD49A
  loc_ACD499: ExitProcHresult
  loc_ACD49A: LitI2_Byte 0
  loc_ACD49C: PopTmpLdAd2 var_E6
  loc_ACD49F: Call CajaPacoMsk_UnknownEvent_8()
  loc_ACD4A4: FLdPr Me
  loc_ACD4A7: MemLdStr global_60
  loc_ACD4AA: LitStr vbNullString
  loc_ACD4AD: NeStr
  loc_ACD4AF: BranchF loc_ACD4B3
  loc_ACD4B2: ExitProcHresult
  loc_ACD4B3: LitI2_Byte 0
  loc_ACD4B5: PopTmpLdAd2 var_E6
  loc_ACD4B8: Call CarePacoMsk_UnknownEvent_8()
  loc_ACD4BD: FLdPr Me
  loc_ACD4C0: MemLdStr global_60
  loc_ACD4C3: LitStr vbNullString
  loc_ACD4C6: NeStr
  loc_ACD4C8: BranchF loc_ACD4CC
  loc_ACD4CB: ExitProcHresult
  loc_ACD4CC: LitI2_Byte 0
  loc_ACD4CE: PopTmpLdAd2 var_E6
  loc_ACD4D1: Call PatrPacoMsk_UnknownEvent_8()
  loc_ACD4D6: FLdPr Me
  loc_ACD4D9: MemLdStr global_60
  loc_ACD4DC: LitStr vbNullString
  loc_ACD4DF: NeStr
  loc_ACD4E1: BranchF loc_ACD4E5
  loc_ACD4E4: ExitProcHresult
  loc_ACD4E5: FLdPr Me
  loc_ACD4E8: MemLdUI1 global_56
  loc_ACD4EC: FStUI1 var_E8
  loc_ACD4F0: FLdUI1
  loc_ACD4F4: LitI2_Byte 2
  loc_ACD4F6: EqI2
  loc_ACD4F7: BranchF loc_ACD697
  loc_ACD4FA: FLdPr Me
  loc_ACD4FD: VCallAd Control_ID_CaerPacoMsk
  loc_ACD500: FStAdFunc var_98
  loc_ACD503: FLdPr var_98
  loc_ACD506: LateIdLdVar var_C0 DispID_22 0
  loc_ACD50D: PopAd
  loc_ACD50F: FLdPr Me
  loc_ACD512: VCallAd Control_ID_ProvPacoMsk
  loc_ACD515: FStAdFunc var_9C
  loc_ACD518: FLdPr var_9C
  loc_ACD51B: LateIdLdVar var_D4 DispID_22 0
  loc_ACD522: PopAd
  loc_ACD524: FLdPr Me
  loc_ACD527: VCallAd Control_ID_DeexPacoMsk
  loc_ACD52A: FStAdFunc var_B0
  loc_ACD52D: FLdPr var_B0
  loc_ACD530: LateIdLdVar var_E4 DispID_22 0
  loc_ACD537: PopAd
  loc_ACD539: FLdPr Me
  loc_ACD53C: VCallAd Control_ID_ChsrPacoMsk
  loc_ACD53F: FStAdFunc var_EC
  loc_ACD542: FLdPr var_EC
  loc_ACD545: LateIdLdVar var_FC DispID_22 0
  loc_ACD54C: PopAd
  loc_ACD54E: FLdPr Me
  loc_ACD551: VCallAd Control_ID_CatePacoMsk
  loc_ACD554: FStAdFunc var_100
  loc_ACD557: FLdPr var_100
  loc_ACD55A: LateIdLdVar var_110 DispID_22 0
  loc_ACD561: PopAd
  loc_ACD563: FLdPr Me
  loc_ACD566: VCallAd Control_ID_CajaPacoMsk
  loc_ACD569: FStAdFunc var_114
  loc_ACD56C: FLdPr var_114
  loc_ACD56F: LateIdLdVar var_124 DispID_22 0
  loc_ACD576: PopAd
  loc_ACD578: FLdPr Me
  loc_ACD57B: VCallAd Control_ID_CarePacoMsk
  loc_ACD57E: FStAdFunc var_128
  loc_ACD581: FLdPr var_128
  loc_ACD584: LateIdLdVar var_138 DispID_22 0
  loc_ACD58B: PopAd
  loc_ACD58D: FLdPr Me
  loc_ACD590: VCallAd Control_ID_PatrPacoMsk
  loc_ACD593: FStAdFunc var_13C
  loc_ACD596: FLdPr var_13C
  loc_ACD599: LateIdLdVar var_14C DispID_22 0
  loc_ACD5A0: PopAd
  loc_ACD5A2: FLdPr Me
  loc_ACD5A5: VCallAd Control_ID_PaexPacoMsk
  loc_ACD5A8: FStAdFunc var_150
  loc_ACD5AB: FLdPr var_150
  loc_ACD5AE: LateIdLdVar var_160 DispID_22 0
  loc_ACD5B5: PopAd
  loc_ACD5B7: FLdRfVar var_8C
  loc_ACD5BA: FLdPr Me
  loc_ACD5BD: VCallAd Control_ID_SacePacoTxt
  loc_ACD5C0: FStAdFunc var_164
  loc_ACD5C3: FLdPr var_164
  loc_ACD5C6:  = Me.Text
  loc_ACD5CB: FLdRfVar var_16C
  loc_ACD5CE: FLdPr Me
  loc_ACD5D1: VCallAd Control_ID_DefaPacoTxt
  loc_ACD5D4: FStAdFunc var_168
  loc_ACD5D7: FLdPr var_168
  loc_ACD5DA:  = Me.Text
  loc_ACD5DF: FLdRfVar var_174
  loc_ACD5E2: FLdPr Me
  loc_ACD5E5: VCallAd Control_ID_MiinPacoTxt
  loc_ACD5E8: FStAdFunc var_170
  loc_ACD5EB: FLdPr var_170
  loc_ACD5EE:  = Me.Text
  loc_ACD5F3: ILdRf var_174
  loc_ACD5F6: ILdRf var_16C
  loc_ACD5F9: ILdRf var_8C
  loc_ACD5FC: FLdRfVar var_160
  loc_ACD5FF: CStrVarTmp
  loc_ACD600: FStStrNoPop var_198
  loc_ACD603: FLdRfVar var_14C
  loc_ACD606: CStrVarTmp
  loc_ACD607: FStStrNoPop var_194
  loc_ACD60A: FLdRfVar var_138
  loc_ACD60D: CStrVarTmp
  loc_ACD60E: FStStrNoPop var_190
  loc_ACD611: FLdRfVar var_124
  loc_ACD614: CStrVarTmp
  loc_ACD615: FStStrNoPop var_18C
  loc_ACD618: FLdRfVar var_110
  loc_ACD61B: CStrVarTmp
  loc_ACD61C: FStStrNoPop var_188
  loc_ACD61F: FLdRfVar var_FC
  loc_ACD622: CStrVarTmp
  loc_ACD623: FStStrNoPop var_184
  loc_ACD626: FLdRfVar var_E4
  loc_ACD629: CStrVarTmp
  loc_ACD62A: FStStrNoPop var_180
  loc_ACD62D: FLdRfVar var_D4
  loc_ACD630: CStrVarTmp
  loc_ACD631: FStStrNoPop var_17C
  loc_ACD634: FLdRfVar var_C0
  loc_ACD637: CStrVarTmp
  loc_ACD638: FStStrNoPop var_178
  loc_ACD63B: FLdPr Me
  loc_ACD63E: MemLdRfVar from_stack_1.global_52
  loc_ACD641: NewIfNullPr clsparaconta
  loc_ACD644: Call clsparaconta.ModificarParametrosalInicio(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v)
  loc_ACD649: FFreeStr var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_8C = "": var_16C = ""
  loc_ACD664: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_EC = "": var_100 = "": var_114 = "": var_128 = "": var_13C = "": var_150 = "": var_164 = "": var_168 = ""
  loc_ACD67F: FFreeVar var_C0 = "": var_D4 = "": var_E4 = "": var_FC = "": var_110 = "": var_124 = "": var_138 = "": var_14C = ""
  loc_ACD694: Branch loc_ACD6A1
  loc_ACD697: FLdUI1
  loc_ACD69B: LitI2_Byte 1
  loc_ACD69D: EqI2
  loc_ACD69E: BranchF loc_ACD6A1
  loc_ACD6A1: Call cmdCancelar_Click()
  loc_ACD6A6: Branch loc_ACD7AD
  loc_ACD6A9: ILdRf var_90
  loc_ACD6AC: LitStr "btnCancelar"
  loc_ACD6AF: EqStr
  loc_ACD6B1: BranchF loc_ACD6BC
  loc_ACD6B4: Call cmdCancelar_Click()
  loc_ACD6B9: Branch loc_ACD7AD
  loc_ACD6BC: ILdRf var_90
  loc_ACD6BF: LitStr "btnPrimero"
  loc_ACD6C2: EqStr
  loc_ACD6C4: BranchF loc_ACD6D8
  loc_ACD6C7: FLdPr Me
  loc_ACD6CA: MemLdRfVar from_stack_1.global_52
  loc_ACD6CD: NewIfNullPr clsparaconta
  loc_ACD6D0: Call clsparaconta.MoveFirst()
  loc_ACD6D5: Branch loc_ACD7AD
  loc_ACD6D8: ILdRf var_90
  loc_ACD6DB: LitStr "btnAnterior"
  loc_ACD6DE: EqStr
  loc_ACD6E0: BranchF loc_ACD6F4
  loc_ACD6E3: FLdPr Me
  loc_ACD6E6: MemLdRfVar from_stack_1.global_52
  loc_ACD6E9: NewIfNullPr clsparaconta
  loc_ACD6EC: Call clsparaconta.MovePrevious()
  loc_ACD6F1: Branch loc_ACD7AD
  loc_ACD6F4: ILdRf var_90
  loc_ACD6F7: LitStr "btnSiguiente"
  loc_ACD6FA: EqStr
  loc_ACD6FC: BranchF loc_ACD710
  loc_ACD6FF: FLdPr Me
  loc_ACD702: MemLdRfVar from_stack_1.global_52
  loc_ACD705: NewIfNullPr clsparaconta
  loc_ACD708: Call clsparaconta.MoveNext()
  loc_ACD70D: Branch loc_ACD7AD
  loc_ACD710: ILdRf var_90
  loc_ACD713: LitStr "btnUltimo"
  loc_ACD716: EqStr
  loc_ACD718: BranchF loc_ACD72C
  loc_ACD71B: FLdPr Me
  loc_ACD71E: MemLdRfVar from_stack_1.global_52
  loc_ACD721: NewIfNullPr clsparaconta
  loc_ACD724: Call clsparaconta.MoveLast()
  loc_ACD729: Branch loc_ACD7AD
  loc_ACD72C: ILdRf var_90
  loc_ACD72F: LitStr "btnFiltrar"
  loc_ACD732: EqStr
  loc_ACD734: BranchF loc_ACD73A
  loc_ACD737: Branch loc_ACD7AD
  loc_ACD73A: ILdRf var_90
  loc_ACD73D: LitStr "btnBuscar"
  loc_ACD740: EqStr
  loc_ACD742: BranchF loc_ACD748
  loc_ACD745: Branch loc_ACD7AD
  loc_ACD748: ILdRf var_90
  loc_ACD74B: LitStr "btnImprimir"
  loc_ACD74E: EqStr
  loc_ACD750: BranchF loc_ACD756
  loc_ACD753: Branch loc_ACD7AD
  loc_ACD756: ILdRf var_90
  loc_ACD759: LitStr "btnAyuda"
  loc_ACD75C: EqStr
  loc_ACD75E: BranchF loc_ACD78D
  loc_ACD761: LitVar_Missing var_FC
  loc_ACD764: LitVar_Missing var_E4
  loc_ACD767: LitVar_Missing var_D4
  loc_ACD76A: LitI4 0
  loc_ACD76F: LitVarStr var_AC, "Opcion no disponible en esta version."
  loc_ACD774: FStVarCopyObj var_C0
  loc_ACD777: FLdRfVar var_C0
  loc_ACD77A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_ACD77F: FFreeVar var_C0 = "": var_D4 = "": var_E4 = ""
  loc_ACD78A: Branch loc_ACD7AD
  loc_ACD78D: ILdRf var_90
  loc_ACD790: LitStr "btnSalir"
  loc_ACD793: EqStr
  loc_ACD795: BranchF loc_ACD7AD
  loc_ACD798: ILdRf Me
  loc_ACD79B: FStAdNoPop
  loc_ACD79F: ImpAdLdRf MemVar_C44F9C
  loc_ACD7A2: NewIfNullPr Me
  loc_ACD7A5: Me.Global.Unload from_stack_1
  loc_ACD7AA: FFree1Ad var_98
  loc_ACD7AD: ExitProcHresult
End Sub

Private Sub ChsrPacoMsk_UnknownEvent_0 '94C9E0
  'Data Table: 4D1A2C
  loc_94C9CC: FLdPr Me
  loc_94C9CF: VCallAd Control_ID_ChsrPacoMsk
  loc_94C9D2: CVarAd
  loc_94C9D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C9DB: FFree1Var var_94 = ""
  loc_94C9DE: ExitProcHresult
End Sub

Private Sub ChsrPacoMsk_UnknownEvent_8 '9FB684
  'Data Table: 4D1A2C
  loc_9FB550: FLdRfVar var_8A
  loc_9FB553: FLdPr Me
  loc_9FB556: VCallAd Control_ID_cmdCancelar
  loc_9FB559: FStAdFunc var_88
  loc_9FB55C: FLdPr var_88
  loc_9FB55F:  = Me.Value
  loc_9FB564: FLdI2 var_8A
  loc_9FB567: NotI4
  loc_9FB568: FLdPr Me
  loc_9FB56B: VCallAd Control_ID_ChsrPacoMsk
  loc_9FB56E: FStAdFunc var_90
  loc_9FB571: FLdPr var_90
  loc_9FB574: LateIdLdVar var_A0 DispID_13 -32767
  loc_9FB57B: CBoolVar
  loc_9FB57D: AndI4
  loc_9FB57E: FFreeAd var_88 = ""
  loc_9FB585: FFree1Var var_A0 = ""
  loc_9FB588: BranchF loc_9FB680
  loc_9FB58B: FLdPr Me
  loc_9FB58E: VCallAd Control_ID_ChsrPacoMsk
  loc_9FB591: FStAdFunc var_88
  loc_9FB594: FLdPr var_88
  loc_9FB597: LateIdLdVar var_A0 DispID_22 0
  loc_9FB59E: PopAd
  loc_9FB5A0: LitI4 0
  loc_9FB5A5: LitI4 1
  loc_9FB5AA: FLdRfVar var_A8
  loc_9FB5AD: Redim
  loc_9FB5B7: LitVarStr var_B8, "4"
  loc_9FB5BC: LitI4 0
  loc_9FB5C1: ILdRf var_A8
  loc_9FB5C4: Ary1StVarCopy
  loc_9FB5C6: LitVarStr var_C8, "1110"
  loc_9FB5CB: LitI4 1
  loc_9FB5D0: ILdRf var_A8
  loc_9FB5D3: Ary1StVarCopy
  loc_9FB5D5: FLdRfVar var_A8
  loc_9FB5D8: FLdPr Me
  loc_9FB5DB: MemLdRfVar from_stack_1.global_64
  loc_9FB5DE: NewIfNullRf
  loc_9FB5E2: ImpAdLdI2 MemVar_C3D064
  loc_9FB5E5: LitI2_Byte &HFF
  loc_9FB5E7: FLdRfVar var_A0
  loc_9FB5EA: CStrVarTmp
  loc_9FB5EB: FStStrNoPop var_A4
  loc_9FB5EE: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_9FB5F3: FStStr var_CC
  loc_9FB5F6: FLdRfVar var_A8
  loc_9FB5F9: Erase
  loc_9FB5FA: ILdRf var_CC
  loc_9FB5FD: FLdPr Me
  loc_9FB600: MemStStrCopy
  loc_9FB604: FFreeStr var_A4 = ""
  loc_9FB60B: FFree1Ad var_88
  loc_9FB60E: FFree1Var var_A0 = ""
  loc_9FB611: FLdPr Me
  loc_9FB614: VCallAd Control_ID_ChsrPacoMsk
  loc_9FB617: FStAdFunc var_D4
  loc_9FB61A: FLdPr Me
  loc_9FB61D: VCallAd Control_ID_ChsrPacoLbl
  loc_9FB620: FStAdFunc var_D0
  loc_9FB623: FLdRfVar var_D0
  loc_9FB626: FLdZeroAd var_D4
  loc_9FB629: FStAdFuncNoPop
  loc_9FB62C: CastAd
  loc_9FB62F: FStAdFunc var_90
  loc_9FB632: FLdRfVar var_90
  loc_9FB635: FLdPr Me
  loc_9FB638: MemLdRfVar from_stack_1.global_60
  loc_9FB63B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FB640: IStI2 Button
  loc_9FB643: FFreeAd var_88 = "": var_90 = "": var_D0 = ""
  loc_9FB64E: ILdI2 Button
  loc_9FB651: NotI4
  loc_9FB652: BranchF loc_9FB680
  loc_9FB655: FLdRfVar var_A4
  loc_9FB658: FLdPr Me
  loc_9FB65B: MemLdRfVar from_stack_1.global_64
  loc_9FB65E: NewIfNullPr tblcuentacontable
  loc_9FB661: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_9FB666: ILdRf var_A4
  loc_9FB669: FLdPr Me
  loc_9FB66C: VCallAd Control_ID_ChsrPacoLbl
  loc_9FB66F: FStAdFunc var_88
  loc_9FB672: FLdPr var_88
  loc_9FB675: Me.Caption = from_stack_1
  loc_9FB67A: FFree1Str var_A4
  loc_9FB67D: FFree1Ad var_88
  loc_9FB680: ExitProcHresult
End Sub

Private Sub ChsrPacoMsk_KeyPress(KeyAscii As Integer) '9F1C44
  'Data Table: 4D1A2C
  loc_9F1B1C: ILdI2 KeyAscii
  loc_9F1B1F: CI4UI1
  loc_9F1B20: LitI4 &H20
  loc_9F1B25: EqI4
  loc_9F1B26: BranchF loc_9F1C41
  loc_9F1B29: LitVar_Missing var_A4
  loc_9F1B2C: PopAdLdVar
  loc_9F1B2D: LitVarI4
  loc_9F1B35: PopAdLdVar
  loc_9F1B36: ImpAdLdRf MemVar_C3D6C0
  loc_9F1B39: NewIfNullPr bscCuentaContable
  loc_9F1B3C: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F1B41: FLdRfVar var_AC
  loc_9F1B44: FLdRfVar var_A8
  loc_9F1B47: ImpAdLdRf MemVar_C3D6C0
  loc_9F1B4A: NewIfNullPr bscCuentaContable
  loc_9F1B4D: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1B52: FLdPr var_A8
  loc_9F1B55: from_stack_1 = clsbase.RecordCount
  loc_9F1B5A: ILdRf var_AC
  loc_9F1B5D: LitI4 0
  loc_9F1B62: GtI4
  loc_9F1B63: FFree1Ad var_A8
  loc_9F1B66: BranchF loc_9F1C41
  loc_9F1B69: FLdRfVar var_C8
  loc_9F1B6C: FLdRfVar var_B8
  loc_9F1B6F: LitVarStr var_94, "CodiCuco"
  loc_9F1B74: PopAdLdVar
  loc_9F1B75: FLdRfVar var_B4
  loc_9F1B78: FLdRfVar var_B0
  loc_9F1B7B: FLdRfVar var_A8
  loc_9F1B7E: ImpAdLdRf MemVar_C3D6C0
  loc_9F1B81: NewIfNullPr bscCuentaContable
  loc_9F1B84: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1B89: FLdPr var_A8
  loc_9F1B8C: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1B91: FLdPr var_B0
  loc_9F1B94:  = Me.Fields
  loc_9F1B99: FLdPr var_B4
  loc_9F1B9C: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1BA1: FLdPr var_B8
  loc_9F1BA4:  = Me.Value
  loc_9F1BA9: FLdRfVar var_C8
  loc_9F1BAC: CStrVarTmp
  loc_9F1BAD: CVarStr var_D8
  loc_9F1BB0: PopAdLdVar
  loc_9F1BB1: FLdPr Me
  loc_9F1BB4: VCallAd Control_ID_ChsrPacoMsk
  loc_9F1BB7: FStAdFunc var_DC
  loc_9F1BBA: FLdPr var_DC
  loc_9F1BBD: LateIdSt
  loc_9F1BC2: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1BCF: FFreeVar var_C8 = ""
  loc_9F1BD6: FLdRfVar var_C8
  loc_9F1BD9: FLdRfVar var_B8
  loc_9F1BDC: LitVarStr var_94, "DetaCuco"
  loc_9F1BE1: PopAdLdVar
  loc_9F1BE2: FLdRfVar var_B4
  loc_9F1BE5: FLdRfVar var_B0
  loc_9F1BE8: FLdRfVar var_A8
  loc_9F1BEB: ImpAdLdRf MemVar_C3D6C0
  loc_9F1BEE: NewIfNullPr bscCuentaContable
  loc_9F1BF1: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1BF6: FLdPr var_A8
  loc_9F1BF9: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1BFE: FLdPr var_B0
  loc_9F1C01:  = Me.Fields
  loc_9F1C06: FLdPr var_B4
  loc_9F1C09: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1C0E: FLdPr var_B8
  loc_9F1C11:  = Me.Value
  loc_9F1C16: FLdRfVar var_C8
  loc_9F1C19: CStrVarTmp
  loc_9F1C1A: FStStrNoPop var_E0
  loc_9F1C1D: FLdPr Me
  loc_9F1C20: VCallAd Control_ID_ChsrPacoLbl
  loc_9F1C23: FStAdFunc var_DC
  loc_9F1C26: FLdPr var_DC
  loc_9F1C29: Me.Caption = from_stack_1
  loc_9F1C2E: FFree1Str var_E0
  loc_9F1C31: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1C3E: FFree1Var var_C8 = ""
  loc_9F1C41: ExitProcHresult
End Sub
