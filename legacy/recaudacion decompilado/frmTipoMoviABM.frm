VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmTipoMoviABM
  Caption = "Tipo de Movimiento"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmTipoMoviABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13680
  ClientHeight = 7740
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame1
    Left = 240
    Top = 3960
    Width = 12840
    Height = 3585
    TabIndex = 8
    Begin VB.Frame Frame2
      Left = 2280
      Top = 2160
      Width = 2655
      Height = 735
      TabIndex = 13
      BorderStyle = 0 'None
      Begin VB.OptionButton FijoTimoSiOpt
        Caption = "Sí"
        Left = 120
        Top = 120
        Width = 1215
        Height = 255
        TabIndex = 6
      End
      Begin VB.OptionButton FijoTimoNoOpt
        Caption = "No"
        Left = 1440
        Top = 120
        Width = 735
        Height = 255
        TabIndex = 7
      End
    End
    Begin VB.OptionButton DecrTimoDebitoOpt
      Caption = "Débito"
      Left = 2400
      Top = 1800
      Width = 1215
      Height = 255
      TabIndex = 4
    End
    Begin VB.OptionButton DecrTimoCreditoOpt
      Caption = "Crédito"
      Left = 3720
      Top = 1800
      Width = 1455
      Height = 255
      TabIndex = 5
    End
    Begin VB.TextBox CodiTimoTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 240
      Width = 735
      Height = 360
      TabIndex = 1
      MaxLength = 2
    End
    Begin VB.TextBox DetaTimoTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 720
      Width = 7335
      Height = 360
      TabIndex = 2
      MaxLength = 40
    End
    Begin VB.TextBox AbreTimoTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 1200
      Width = 3855
      Height = 360
      TabIndex = 3
      MaxLength = 15
    End
    Begin VB.Label Label4
      Caption = "Fijo:"
      Left = 1800
      Top = 2280
      Width = 435
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Débito/Crédito :"
      Left = 555
      Top = 1800
      Width = 1650
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Detalle Movilidad:"
      Left = 360
      Top = 720
      Width = 1845
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Abreviatura:"
      Left = 930
      Top = 1200
      Width = 1275
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Código Movilidad:"
      Left = 360
      Top = 240
      Width = 1845
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 780
    Width = 13320
    Height = 3075
    TabIndex = 0
    OleObjectBlob = "frmTipoMoviABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTipoMoviABM.frx":35F4
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13680
    Height = 636
    TabIndex = 15
    OleObjectBlob = "frmTipoMoviABM.frx":B172
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 16
      TabStop = 0   'False
      Picture = "frmTipoMoviABM.frx":B6CE
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmTipoMoviABM"


Private Sub cmdCancelar_Click() 'A76AA0
  'Data Table: 467894
  loc_A76A34: LitI2_Byte 0
  loc_A76A36: FLdPr Me
  loc_A76A39: MemStI2 global_56
  loc_A76A3C: LitI2_Byte 0
  loc_A76A3E: ILdRf Me
  loc_A76A41: CastAd
  loc_A76A44: FStAdFunc var_88
  loc_A76A47: FLdRfVar var_88
  loc_A76A4A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A76A4F: FFree1Ad var_88
  loc_A76A52: LitI4 0
  loc_A76A57: LitI4 0
  loc_A76A5C: FLdRfVar var_8C
  loc_A76A5F: Redim
  loc_A76A69: FLdPr Me
  loc_A76A6C: VCallAd Control_ID_dgdABMS
  loc_A76A6F: CVarAd
  loc_A76A73: ParmAry1St
  loc_A76A79: FLdRfVar var_8C
  loc_A76A7C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A76A81: FLdRfVar var_8C
  loc_A76A84: Erase
  loc_A76A85: Call EnlazaTodo()
  loc_A76A8A: ILdRf Me
  loc_A76A8D: CastAd
  loc_A76A90: FStAdFunc var_88
  loc_A76A93: FLdRfVar var_88
  loc_A76A96: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A76A9B: FFree1Ad var_88
  loc_A76A9E: ExitProcHresult
  loc_A76A9F: Ary1StCy
End Sub

Private Sub CodiTimoTxt_GotFocus() '9C47C0
  'Data Table: 467894
  loc_9C47AC: FLdPr Me
  loc_9C47AF: VCallAd Control_ID_CodiTimoTxt
  loc_9C47B2: CVarAd
  loc_9C47B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C47BB: FFree1Var var_94 = ""
  loc_9C47BE: ExitProcHresult
End Sub

Private Sub CodiTimoTxt_KeyPress(KeyAscii As Integer) '9D5B58
  'Data Table: 467894
  loc_9D5B40: LitStr "0123456789"
  loc_9D5B43: FStStrCopy var_88
  loc_9D5B46: FLdRfVar var_88
  loc_9D5B49: ILdRf KeyAscii
  loc_9D5B4C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D5B51: IStI2 KeyAscii
  loc_9D5B54: FFree1Str var_88
  loc_9D5B57: ExitProcHresult
End Sub

Private Sub CodiTimoTxt_Validate(Cancel As Boolean) 'AE1C9C
  'Data Table: 467894
  loc_AE1B40: FLdRfVar var_8A
  loc_AE1B43: FLdPr Me
  loc_AE1B46: VCallAd Control_ID_cmdCancelar
  loc_AE1B49: FStAdFunc var_88
  loc_AE1B4C: FLdPr var_88
  loc_AE1B4F:  = Me.Value
  loc_AE1B54: FLdI2 var_8A
  loc_AE1B57: NotI4
  loc_AE1B58: FLdRfVar var_92
  loc_AE1B5B: FLdPr Me
  loc_AE1B5E: VCallAd Control_ID_CodiTimoTxt
  loc_AE1B61: FStAdFunc var_90
  loc_AE1B64: FLdPr var_90
  loc_AE1B67:  = Me.Enabled
  loc_AE1B6C: FLdI2 var_92
  loc_AE1B6F: AndI4
  loc_AE1B70: FFreeAd var_88 = ""
  loc_AE1B77: BranchF loc_AE1C98
  loc_AE1B7A: FLdRfVar var_98
  loc_AE1B7D: FLdPr Me
  loc_AE1B80: VCallAd Control_ID_CodiTimoTxt
  loc_AE1B83: FStAdFunc var_88
  loc_AE1B86: FLdPr var_88
  loc_AE1B89:  = Me.Text
  loc_AE1B8E: FLdZeroAd var_98
  loc_AE1B91: CVarStr var_A8
  loc_AE1B94: ImpAdCallI2 IsNumeric()
  loc_AE1B99: NotI4
  loc_AE1B9A: FFree1Ad var_88
  loc_AE1B9D: FFree1Var var_A8 = ""
  loc_AE1BA0: BranchF loc_AE1BBA
  loc_AE1BA3: LitStr "0"
  loc_AE1BA6: FLdPr Me
  loc_AE1BA9: VCallAd Control_ID_CodiTimoTxt
  loc_AE1BAC: FStAdFunc var_88
  loc_AE1BAF: FLdPr var_88
  loc_AE1BB2: Me.Text = from_stack_1
  loc_AE1BB7: FFree1Ad var_88
  loc_AE1BBA: FLdRfVar var_98
  loc_AE1BBD: FLdPr Me
  loc_AE1BC0: VCallAd Control_ID_CodiTimoTxt
  loc_AE1BC3: FStAdFunc var_88
  loc_AE1BC6: FLdPr var_88
  loc_AE1BC9:  = Me.Text
  loc_AE1BCE: LitI2_Byte 0
  loc_AE1BD0: LitI2_Byte 0
  loc_AE1BD2: ILdRf var_98
  loc_AE1BD5: LitStr "codigo del tipo de movimiento"
  loc_AE1BD8: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AE1BDD: FStStrNoPop var_AC
  loc_AE1BE0: FLdPr Me
  loc_AE1BE3: MemStStrCopy
  loc_AE1BE7: FFreeStr var_98 = ""
  loc_AE1BEE: FFree1Ad var_88
  loc_AE1BF1: FLdPr Me
  loc_AE1BF4: MemLdStr global_60
  loc_AE1BF7: LitStr vbNullString
  loc_AE1BFA: NeStr
  loc_AE1BFC: BranchF loc_AE1C22
  loc_AE1BFF: FLdPr Me
  loc_AE1C02: MemLdStr global_60
  loc_AE1C05: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1C0A: FLdPr Me
  loc_AE1C0D: VCallAd Control_ID_CodiTimoTxt
  loc_AE1C10: CVarAd
  loc_AE1C14: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1C19: FFree1Var var_A8 = ""
  loc_AE1C1C: LitI2_Byte &HFF
  loc_AE1C1E: IStI2 Cancel
  loc_AE1C21: ExitProcHresult
  loc_AE1C22: FLdRfVar var_A8
  loc_AE1C25: FLdRfVar var_98
  loc_AE1C28: FLdPr Me
  loc_AE1C2B: VCallAd Control_ID_CodiTimoTxt
  loc_AE1C2E: FStAdFunc var_88
  loc_AE1C31: FLdPr var_88
  loc_AE1C34:  = Me.Text
  loc_AE1C39: ILdRf var_98
  loc_AE1C3C: CI2Str
  loc_AE1C3E: FLdPr Me
  loc_AE1C41: MemLdRfVar from_stack_1.global_52
  loc_AE1C44: NewIfNullPr clstipomovi
  loc_AE1C47: from_stack_2v = clstipomovi.ValidaClave(from_stack_1v)
  loc_AE1C4C: FLdRfVar var_A8
  loc_AE1C4F: CStrVarTmp
  loc_AE1C50: FStStrNoPop var_AC
  loc_AE1C53: FLdPr Me
  loc_AE1C56: MemStStrCopy
  loc_AE1C5A: FFreeStr var_98 = ""
  loc_AE1C61: FFree1Ad var_88
  loc_AE1C64: FFree1Var var_A8 = ""
  loc_AE1C67: FLdPr Me
  loc_AE1C6A: MemLdStr global_60
  loc_AE1C6D: LitStr vbNullString
  loc_AE1C70: NeStr
  loc_AE1C72: BranchF loc_AE1C98
  loc_AE1C75: FLdPr Me
  loc_AE1C78: MemLdStr global_60
  loc_AE1C7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1C80: FLdPr Me
  loc_AE1C83: VCallAd Control_ID_CodiTimoTxt
  loc_AE1C86: CVarAd
  loc_AE1C8A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1C8F: FFree1Var var_A8 = ""
  loc_AE1C92: LitI2_Byte &HFF
  loc_AE1C94: IStI2 Cancel
  loc_AE1C97: ExitProcHresult
  loc_AE1C98: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BAE1D0
  'Data Table: 467894
  loc_BADB9C: ILdRf Button
  loc_BADB9F: FStAd var_88 
  loc_BADBA3: FLdRfVar var_90
  loc_BADBA6: FLdPr var_88
  loc_BADBA9:  = Me.Key
  loc_BADBAE: FLdZeroAd var_90
  loc_BADBB1: FStStr var_94
  loc_BADBB4: ILdRf var_94
  loc_BADBB7: LitStr "btnCrear"
  loc_BADBBA: EqStr
  loc_BADBBC: BranchF loc_BADCFC
  loc_BADBBF: LitI2_Byte 1
  loc_BADBC1: FLdPr Me
  loc_BADBC4: MemStI2 global_56
  loc_BADBC7: ILdRf Me
  loc_BADBCA: CastAd
  loc_BADBCD: FStAdFunc var_98
  loc_BADBD0: FLdRfVar var_98
  loc_BADBD3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BADBD8: FFree1Ad var_98
  loc_BADBDB: LitI4 0
  loc_BADBE0: LitI4 0
  loc_BADBE5: FLdRfVar var_9C
  loc_BADBE8: Redim
  loc_BADBF2: FLdPr Me
  loc_BADBF5: VCallAd Control_ID_dgdABMS
  loc_BADBF8: CVarAd
  loc_BADBFC: ParmAry1St
  loc_BADC02: FLdRfVar var_9C
  loc_BADC05: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BADC0A: FLdRfVar var_9C
  loc_BADC0D: Erase
  loc_BADC0E: ILdRf Me
  loc_BADC11: CastAd
  loc_BADC14: FStAdFunc var_98
  loc_BADC17: FLdRfVar var_98
  loc_BADC1A: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BADC1F: FFree1Ad var_98
  loc_BADC22: ILdRf Me
  loc_BADC25: CastAd
  loc_BADC28: FStAdFunc var_98
  loc_BADC2B: FLdRfVar var_98
  loc_BADC2E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BADC33: FFree1Ad var_98
  loc_BADC36: FLdRfVar var_AE
  loc_BADC39: FLdPr Me
  loc_BADC3C: MemLdRfVar from_stack_1.global_52
  loc_BADC3F: NewIfNullPr clstipomovi
  loc_BADC42: from_stack_1v = clstipomovi.NuevoRegistro()
  loc_BADC47: FLdI2 var_AE
  loc_BADC4A: CStrUI1
  loc_BADC4C: FStStrNoPop var_90
  loc_BADC4F: FLdPr Me
  loc_BADC52: VCallAd Control_ID_CodiTimoTxt
  loc_BADC55: FStAdFunc var_98
  loc_BADC58: FLdPr var_98
  loc_BADC5B: Me.Text = from_stack_1
  loc_BADC60: FFree1Str var_90
  loc_BADC63: FFree1Ad var_98
  loc_BADC66: LitI4 0
  loc_BADC6B: LitI4 6
  loc_BADC70: FLdRfVar var_9C
  loc_BADC73: Redim
  loc_BADC7D: FLdPr Me
  loc_BADC80: VCallAd Control_ID_CodiTimoTxt
  loc_BADC83: CVarAd
  loc_BADC87: ParmAry1St
  loc_BADC8D: FLdPr Me
  loc_BADC90: VCallAd Control_ID_DetaTimoTxt
  loc_BADC93: CVarAd
  loc_BADC97: ParmAry1St
  loc_BADC9D: FLdPr Me
  loc_BADCA0: VCallAd Control_ID_AbreTimoTxt
  loc_BADCA3: CVarAd
  loc_BADCA7: ParmAry1St
  loc_BADCAD: FLdPr Me
  loc_BADCB0: VCallAd Control_ID_DecrTimoCreditoOpt
  loc_BADCB3: CVarAd
  loc_BADCB7: ParmAry1St
  loc_BADCBD: FLdPr Me
  loc_BADCC0: VCallAd Control_ID_DecrTimoDebitoOpt
  loc_BADCC3: CVarAd
  loc_BADCC7: ParmAry1St
  loc_BADCCD: FLdPr Me
  loc_BADCD0: VCallAd Control_ID_FijoTimoNoOpt
  loc_BADCD3: CVarAd
  loc_BADCD7: ParmAry1St
  loc_BADCDD: FLdPr Me
  loc_BADCE0: VCallAd Control_ID_FijoTimoSiOpt
  loc_BADCE3: CVarAd
  loc_BADCE7: ParmAry1St
  loc_BADCED: FLdRfVar var_9C
  loc_BADCF0: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BADCF5: FLdRfVar var_9C
  loc_BADCF8: Erase
  loc_BADCF9: Branch loc_BAE1CC
  loc_BADCFC: ILdRf var_94
  loc_BADCFF: LitStr "btnModificar"
  loc_BADD02: EqStr
  loc_BADD04: BranchF loc_BADE37
  loc_BADD07: FLdRfVar var_114
  loc_BADD0A: FLdPr Me
  loc_BADD0D: MemLdRfVar from_stack_1.global_52
  loc_BADD10: NewIfNullPr clstipomovi
  loc_BADD13: from_stack_1 = clstipomovi.RecordCount
  loc_BADD18: ILdRf var_114
  loc_BADD1B: LitI4 0
  loc_BADD20: GtI4
  loc_BADD21: BranchF loc_BADE34
  loc_BADD24: FLdRfVar var_90
  loc_BADD27: FLdPr Me
  loc_BADD2A: MemLdRfVar from_stack_1.global_52
  loc_BADD2D: NewIfNullPr clstipomovi
  loc_BADD30: from_stack_1 = clstipomovi.FijoTimo
  loc_BADD35: ILdRf var_90
  loc_BADD38: LitStr "No"
  loc_BADD3B: EqStr
  loc_BADD3D: FFree1Str var_90
  loc_BADD40: BranchF loc_BADE2C
  loc_BADD43: LitI2_Byte 2
  loc_BADD45: FLdPr Me
  loc_BADD48: MemStI2 global_56
  loc_BADD4B: ILdRf Me
  loc_BADD4E: CastAd
  loc_BADD51: FStAdFunc var_98
  loc_BADD54: FLdRfVar var_98
  loc_BADD57: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BADD5C: FFree1Ad var_98
  loc_BADD5F: LitI4 0
  loc_BADD64: LitI4 0
  loc_BADD69: FLdRfVar var_9C
  loc_BADD6C: Redim
  loc_BADD76: FLdPr Me
  loc_BADD79: VCallAd Control_ID_dgdABMS
  loc_BADD7C: CVarAd
  loc_BADD80: ParmAry1St
  loc_BADD86: FLdRfVar var_9C
  loc_BADD89: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BADD8E: FLdRfVar var_9C
  loc_BADD91: Erase
  loc_BADD92: ILdRf Me
  loc_BADD95: CastAd
  loc_BADD98: FStAdFunc var_98
  loc_BADD9B: FLdRfVar var_98
  loc_BADD9E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BADDA3: FFree1Ad var_98
  loc_BADDA6: LitI4 0
  loc_BADDAB: LitI4 5
  loc_BADDB0: FLdRfVar var_9C
  loc_BADDB3: Redim
  loc_BADDBD: FLdPr Me
  loc_BADDC0: VCallAd Control_ID_DetaTimoTxt
  loc_BADDC3: CVarAd
  loc_BADDC7: ParmAry1St
  loc_BADDCD: FLdPr Me
  loc_BADDD0: VCallAd Control_ID_AbreTimoTxt
  loc_BADDD3: CVarAd
  loc_BADDD7: ParmAry1St
  loc_BADDDD: FLdPr Me
  loc_BADDE0: VCallAd Control_ID_DecrTimoCreditoOpt
  loc_BADDE3: CVarAd
  loc_BADDE7: ParmAry1St
  loc_BADDED: FLdPr Me
  loc_BADDF0: VCallAd Control_ID_DecrTimoDebitoOpt
  loc_BADDF3: CVarAd
  loc_BADDF7: ParmAry1St
  loc_BADDFD: FLdPr Me
  loc_BADE00: VCallAd Control_ID_FijoTimoNoOpt
  loc_BADE03: CVarAd
  loc_BADE07: ParmAry1St
  loc_BADE0D: FLdPr Me
  loc_BADE10: VCallAd Control_ID_FijoTimoSiOpt
  loc_BADE13: CVarAd
  loc_BADE17: ParmAry1St
  loc_BADE1D: FLdRfVar var_9C
  loc_BADE20: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BADE25: FLdRfVar var_9C
  loc_BADE28: Erase
  loc_BADE29: Branch loc_BADE34
  loc_BADE2C: LitStr "No se puede modificar"
  loc_BADE2F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BADE34: Branch loc_BAE1CC
  loc_BADE37: ILdRf var_94
  loc_BADE3A: LitStr "btnEliminar"
  loc_BADE3D: EqStr
  loc_BADE3F: BranchF loc_BADEBE
  loc_BADE42: FLdRfVar var_114
  loc_BADE45: FLdPr Me
  loc_BADE48: MemLdRfVar from_stack_1.global_52
  loc_BADE4B: NewIfNullPr clstipomovi
  loc_BADE4E: from_stack_1 = clstipomovi.RecordCount
  loc_BADE53: ILdRf var_114
  loc_BADE56: LitI4 0
  loc_BADE5B: GtI4
  loc_BADE5C: BranchF loc_BADEBB
  loc_BADE5F: FLdRfVar var_90
  loc_BADE62: FLdPr Me
  loc_BADE65: MemLdRfVar from_stack_1.global_52
  loc_BADE68: NewIfNullPr clstipomovi
  loc_BADE6B: from_stack_1 = clstipomovi.FijoTimo
  loc_BADE70: ILdRf var_90
  loc_BADE73: LitStr "No"
  loc_BADE76: EqStr
  loc_BADE78: FFree1Str var_90
  loc_BADE7B: BranchF loc_BADEB3
  loc_BADE7E: LitVar_Missing var_E0
  loc_BADE81: LitVar_Missing var_D0
  loc_BADE84: LitVar_Missing var_C0
  loc_BADE87: LitI4 4
  loc_BADE8C: LitVarStr var_124, "¿Desea eliminar el registro?"
  loc_BADE91: FStVarCopyObj var_AC
  loc_BADE94: FLdRfVar var_AC
  loc_BADE97: ImpAdCallI2 MsgBox(, , , , )
  loc_BADE9C: LitI4 6
  loc_BADEA1: EqI4
  loc_BADEA2: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_BADEAD: BranchF loc_BADEB0
  loc_BADEB0: Branch loc_BADEBB
  loc_BADEB3: LitStr "No se puede eliminar"
  loc_BADEB6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BADEBB: Branch loc_BAE1CC
  loc_BADEBE: ILdRf var_94
  loc_BADEC1: LitStr "btnGuardar"
  loc_BADEC4: EqStr
  loc_BADEC6: BranchF loc_BAE0C8
  loc_BADEC9: LitI2_Byte 0
  loc_BADECB: PopTmpLdAd2 var_AE
  loc_BADECE: Call CodiTimoTxt_Validate(from_stack_1v)
  loc_BADED3: FLdPr Me
  loc_BADED6: MemLdStr global_60
  loc_BADED9: LitStr vbNullString
  loc_BADEDC: NeStr
  loc_BADEDE: BranchF loc_BADEE2
  loc_BADEE1: ExitProcHresult
  loc_BADEE2: LitI2_Byte 0
  loc_BADEE4: PopTmpLdAd2 var_AE
  loc_BADEE7: Call DetaTimoTxt_Validate(from_stack_1v)
  loc_BADEEC: FLdPr Me
  loc_BADEEF: MemLdStr global_60
  loc_BADEF2: LitStr vbNullString
  loc_BADEF5: NeStr
  loc_BADEF7: BranchF loc_BADEFB
  loc_BADEFA: ExitProcHresult
  loc_BADEFB: LitI2_Byte 0
  loc_BADEFD: PopTmpLdAd2 var_AE
  loc_BADF00: Call AbreTimoTxt_Validate(from_stack_1v)
  loc_BADF05: FLdPr Me
  loc_BADF08: MemLdStr global_60
  loc_BADF0B: LitStr vbNullString
  loc_BADF0E: NeStr
  loc_BADF10: BranchF loc_BADF14
  loc_BADF13: ExitProcHresult
  loc_BADF14: FLdRfVar var_AE
  loc_BADF17: FLdPr Me
  loc_BADF1A: VCallAd Control_ID_DecrTimoDebitoOpt
  loc_BADF1D: FStAdFunc var_98
  loc_BADF20: FLdPr var_98
  loc_BADF23:  = Me.Value
  loc_BADF28: FLdI2 var_AE
  loc_BADF2B: LitI2_Byte &HFF
  loc_BADF2D: EqI2
  loc_BADF2E: FFree1Ad var_98
  loc_BADF31: BranchF loc_BADF3E
  loc_BADF34: LitStr "Débito"
  loc_BADF37: FLdPr Me
  loc_BADF3A: MemStStrCopy
  loc_BADF3E: FLdRfVar var_AE
  loc_BADF41: FLdPr Me
  loc_BADF44: VCallAd Control_ID_DecrTimoCreditoOpt
  loc_BADF47: FStAdFunc var_98
  loc_BADF4A: FLdPr var_98
  loc_BADF4D:  = Me.Value
  loc_BADF52: FLdI2 var_AE
  loc_BADF55: LitI2_Byte &HFF
  loc_BADF57: EqI2
  loc_BADF58: FFree1Ad var_98
  loc_BADF5B: BranchF loc_BADF68
  loc_BADF5E: LitStr "Crédito"
  loc_BADF61: FLdPr Me
  loc_BADF64: MemStStrCopy
  loc_BADF68: FLdRfVar var_AE
  loc_BADF6B: FLdPr Me
  loc_BADF6E: VCallAd Control_ID_FijoTimoNoOpt
  loc_BADF71: FStAdFunc var_98
  loc_BADF74: FLdPr var_98
  loc_BADF77:  = Me.Value
  loc_BADF7C: FLdI2 var_AE
  loc_BADF7F: LitI2_Byte &HFF
  loc_BADF81: EqI2
  loc_BADF82: FFree1Ad var_98
  loc_BADF85: BranchF loc_BADF92
  loc_BADF88: LitStr "No"
  loc_BADF8B: FLdPr Me
  loc_BADF8E: MemStStrCopy
  loc_BADF92: FLdRfVar var_AE
  loc_BADF95: FLdPr Me
  loc_BADF98: VCallAd Control_ID_FijoTimoSiOpt
  loc_BADF9B: FStAdFunc var_98
  loc_BADF9E: FLdPr var_98
  loc_BADFA1:  = Me.Value
  loc_BADFA6: FLdI2 var_AE
  loc_BADFA9: LitI2_Byte &HFF
  loc_BADFAB: EqI2
  loc_BADFAC: FFree1Ad var_98
  loc_BADFAF: BranchF loc_BADFBC
  loc_BADFB2: LitStr "Sí"
  loc_BADFB5: FLdPr Me
  loc_BADFB8: MemStStrCopy
  loc_BADFBC: FLdPr Me
  loc_BADFBF: MemLdI2 global_56
  loc_BADFC2: FStI2 var_156
  loc_BADFC5: FLdI2 var_156
  loc_BADFC8: LitI2_Byte 1
  loc_BADFCA: EqI2
  loc_BADFCB: BranchF loc_BAE044
  loc_BADFCE: FLdRfVar var_90
  loc_BADFD1: FLdPr Me
  loc_BADFD4: VCallAd Control_ID_CodiTimoTxt
  loc_BADFD7: FStAdFunc var_98
  loc_BADFDA: FLdPr var_98
  loc_BADFDD:  = Me.Text
  loc_BADFE2: FLdRfVar var_160
  loc_BADFE5: FLdPr Me
  loc_BADFE8: VCallAd Control_ID_DetaTimoTxt
  loc_BADFEB: FStAdFunc var_15C
  loc_BADFEE: FLdPr var_15C
  loc_BADFF1:  = Me.Text
  loc_BADFF6: FLdRfVar var_168
  loc_BADFF9: FLdPr Me
  loc_BADFFC: VCallAd Control_ID_AbreTimoTxt
  loc_BADFFF: FStAdFunc var_164
  loc_BAE002: FLdPr var_164
  loc_BAE005:  = Me.Text
  loc_BAE00A: FLdPr Me
  loc_BAE00D: MemLdStr global_68
  loc_BAE010: FLdPr Me
  loc_BAE013: MemLdStr global_64
  loc_BAE016: ILdRf var_168
  loc_BAE019: ILdRf var_160
  loc_BAE01C: ILdRf var_90
  loc_BAE01F: CI2Str
  loc_BAE021: FLdPr Me
  loc_BAE024: MemLdRfVar from_stack_1.global_52
  loc_BAE027: NewIfNullPr clstipomovi
  loc_BAE02A: Call clstipomovi.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BAE02F: FFreeStr var_90 = "": var_160 = ""
  loc_BAE038: FFreeAd var_98 = "": var_15C = ""
  loc_BAE041: Branch loc_BAE0C0
  loc_BAE044: FLdI2 var_156
  loc_BAE047: LitI2_Byte 2
  loc_BAE049: EqI2
  loc_BAE04A: BranchF loc_BAE0C0
  loc_BAE04D: FLdRfVar var_90
  loc_BAE050: FLdPr Me
  loc_BAE053: VCallAd Control_ID_CodiTimoTxt
  loc_BAE056: FStAdFunc var_98
  loc_BAE059: FLdPr var_98
  loc_BAE05C:  = Me.Text
  loc_BAE061: FLdRfVar var_160
  loc_BAE064: FLdPr Me
  loc_BAE067: VCallAd Control_ID_DetaTimoTxt
  loc_BAE06A: FStAdFunc var_15C
  loc_BAE06D: FLdPr var_15C
  loc_BAE070:  = Me.Text
  loc_BAE075: FLdRfVar var_168
  loc_BAE078: FLdPr Me
  loc_BAE07B: VCallAd Control_ID_AbreTimoTxt
  loc_BAE07E: FStAdFunc var_164
  loc_BAE081: FLdPr var_164
  loc_BAE084:  = Me.Text
  loc_BAE089: FLdPr Me
  loc_BAE08C: MemLdStr global_68
  loc_BAE08F: FLdPr Me
  loc_BAE092: MemLdStr global_64
  loc_BAE095: ILdRf var_168
  loc_BAE098: ILdRf var_160
  loc_BAE09B: ILdRf var_90
  loc_BAE09E: CI2Str
  loc_BAE0A0: FLdPr Me
  loc_BAE0A3: MemLdRfVar from_stack_1.global_52
  loc_BAE0A6: NewIfNullPr clstipomovi
  loc_BAE0A9: Call clstipomovi.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_BAE0AE: FFreeStr var_90 = "": var_160 = ""
  loc_BAE0B7: FFreeAd var_98 = "": var_15C = ""
  loc_BAE0C0: Call cmdCancelar_Click()
  loc_BAE0C5: Branch loc_BAE1CC
  loc_BAE0C8: ILdRf var_94
  loc_BAE0CB: LitStr "btnCancelar"
  loc_BAE0CE: EqStr
  loc_BAE0D0: BranchF loc_BAE0DB
  loc_BAE0D3: Call cmdCancelar_Click()
  loc_BAE0D8: Branch loc_BAE1CC
  loc_BAE0DB: ILdRf var_94
  loc_BAE0DE: LitStr "btnPrimero"
  loc_BAE0E1: EqStr
  loc_BAE0E3: BranchF loc_BAE0F7
  loc_BAE0E6: FLdPr Me
  loc_BAE0E9: MemLdRfVar from_stack_1.global_52
  loc_BAE0EC: NewIfNullPr clstipomovi
  loc_BAE0EF: Call clstipomovi.MoveFirst()
  loc_BAE0F4: Branch loc_BAE1CC
  loc_BAE0F7: ILdRf var_94
  loc_BAE0FA: LitStr "btnAnterior"
  loc_BAE0FD: EqStr
  loc_BAE0FF: BranchF loc_BAE113
  loc_BAE102: FLdPr Me
  loc_BAE105: MemLdRfVar from_stack_1.global_52
  loc_BAE108: NewIfNullPr clstipomovi
  loc_BAE10B: Call clstipomovi.MovePrevious()
  loc_BAE110: Branch loc_BAE1CC
  loc_BAE113: ILdRf var_94
  loc_BAE116: LitStr "btnSiguiente"
  loc_BAE119: EqStr
  loc_BAE11B: BranchF loc_BAE12F
  loc_BAE11E: FLdPr Me
  loc_BAE121: MemLdRfVar from_stack_1.global_52
  loc_BAE124: NewIfNullPr clstipomovi
  loc_BAE127: Call clstipomovi.MoveNext()
  loc_BAE12C: Branch loc_BAE1CC
  loc_BAE12F: ILdRf var_94
  loc_BAE132: LitStr "btnUltimo"
  loc_BAE135: EqStr
  loc_BAE137: BranchF loc_BAE14B
  loc_BAE13A: FLdPr Me
  loc_BAE13D: MemLdRfVar from_stack_1.global_52
  loc_BAE140: NewIfNullPr clstipomovi
  loc_BAE143: Call clstipomovi.MoveLast()
  loc_BAE148: Branch loc_BAE1CC
  loc_BAE14B: ILdRf var_94
  loc_BAE14E: LitStr "btnFiltrar"
  loc_BAE151: EqStr
  loc_BAE153: BranchF loc_BAE159
  loc_BAE156: Branch loc_BAE1CC
  loc_BAE159: ILdRf var_94
  loc_BAE15C: LitStr "btnBuscar"
  loc_BAE15F: EqStr
  loc_BAE161: BranchF loc_BAE167
  loc_BAE164: Branch loc_BAE1CC
  loc_BAE167: ILdRf var_94
  loc_BAE16A: LitStr "btnImprimir"
  loc_BAE16D: EqStr
  loc_BAE16F: BranchF loc_BAE175
  loc_BAE172: Branch loc_BAE1CC
  loc_BAE175: ILdRf var_94
  loc_BAE178: LitStr "btnAyuda"
  loc_BAE17B: EqStr
  loc_BAE17D: BranchF loc_BAE1AC
  loc_BAE180: LitVar_Missing var_E0
  loc_BAE183: LitVar_Missing var_D0
  loc_BAE186: LitVar_Missing var_C0
  loc_BAE189: LitI4 0
  loc_BAE18E: LitVarStr var_124, "Opcion no disponible en esta version."
  loc_BAE193: FStVarCopyObj var_AC
  loc_BAE196: FLdRfVar var_AC
  loc_BAE199: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BAE19E: FFreeVar var_AC = "": var_C0 = "": var_D0 = ""
  loc_BAE1A9: Branch loc_BAE1CC
  loc_BAE1AC: ILdRf var_94
  loc_BAE1AF: LitStr "btnSalir"
  loc_BAE1B2: EqStr
  loc_BAE1B4: BranchF loc_BAE1CC
  loc_BAE1B7: ILdRf Me
  loc_BAE1BA: FStAdNoPop
  loc_BAE1BE: ImpAdLdRf MemVar_D9C5D8
  loc_BAE1C1: NewIfNullPr Global
  loc_BAE1C4: Global.Unload from_stack_1
  loc_BAE1C9: FFree1Ad var_98
  loc_BAE1CC: ExitProcHresult
End Sub

Private Sub DetaTimoTxt_GotFocus() '9C44F0
  'Data Table: 467894
  loc_9C44DC: FLdPr Me
  loc_9C44DF: VCallAd Control_ID_DetaTimoTxt
  loc_9C44E2: CVarAd
  loc_9C44E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C44EB: FFree1Var var_94 = ""
  loc_9C44EE: ExitProcHresult
End Sub

Private Sub DetaTimoTxt_Validate(Cancel As Boolean) 'A91704
  'Data Table: 467894
  loc_A91664: FLdRfVar var_8A
  loc_A91667: FLdPr Me
  loc_A9166A: VCallAd Control_ID_cmdCancelar
  loc_A9166D: FStAdFunc var_88
  loc_A91670: FLdPr var_88
  loc_A91673:  = Me.Value
  loc_A91678: FLdI2 var_8A
  loc_A9167B: NotI4
  loc_A9167C: FLdRfVar var_92
  loc_A9167F: FLdPr Me
  loc_A91682: VCallAd Control_ID_DetaTimoTxt
  loc_A91685: FStAdFunc var_90
  loc_A91688: FLdPr var_90
  loc_A9168B:  = Me.Enabled
  loc_A91690: FLdI2 var_92
  loc_A91693: AndI4
  loc_A91694: FFreeAd var_88 = ""
  loc_A9169B: BranchF loc_A91701
  loc_A9169E: FLdRfVar var_98
  loc_A916A1: FLdPr Me
  loc_A916A4: VCallAd Control_ID_DetaTimoTxt
  loc_A916A7: FStAdFunc var_88
  loc_A916AA: FLdPr var_88
  loc_A916AD:  = Me.Text
  loc_A916B2: ILdRf var_98
  loc_A916B5: LitStr "Movimiento"
  loc_A916B8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A916BD: FStStrNoPop var_9C
  loc_A916C0: FLdPr Me
  loc_A916C3: MemStStrCopy
  loc_A916C7: FFreeStr var_98 = ""
  loc_A916CE: FFree1Ad var_88
  loc_A916D1: FLdPr Me
  loc_A916D4: MemLdStr global_60
  loc_A916D7: LitStr vbNullString
  loc_A916DA: NeStr
  loc_A916DC: BranchF loc_A91701
  loc_A916DF: FLdPr Me
  loc_A916E2: MemLdStr global_60
  loc_A916E5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A916EA: FLdPr Me
  loc_A916ED: VCallAd Control_ID_DetaTimoTxt
  loc_A916F0: CVarAd
  loc_A916F4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A916F9: FFree1Var var_AC = ""
  loc_A916FC: LitI2_Byte &HFF
  loc_A916FE: IStI2 Cancel
  loc_A91701: ExitProcHresult
  loc_A91702: FLdPr arg_1CB8
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D5D6C
  'Data Table: 467894
  loc_9D5D54: FLdPr Me
  loc_9D5D57: VCallAd Control_ID_dgdABMS
  loc_9D5D5A: FStAdFunc var_88
  loc_9D5D5D: FLdRfVar var_88
  loc_9D5D60: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D5D65: FFree1Ad var_88
  loc_9D5D68: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D5DB8
  'Data Table: 467894
  loc_9D5DA0: FLdPr Me
  loc_9D5DA3: VCallAd Control_ID_dgdABMS
  loc_9D5DA6: FStAdFunc var_88
  loc_9D5DA9: FLdRfVar var_88
  loc_9D5DAC: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D5DB1: FFree1Ad var_88
  loc_9D5DB4: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A670F0
  'Data Table: 467894
  loc_A67094: FLdRfVar var_B4
  loc_A67097: FLdRfVar var_B0
  loc_A6709A: FLdI2 ColIndex
  loc_A6709D: CVarI2 var_A8
  loc_A670A0: PopAdLdVar
  loc_A670A1: FLdPr Me
  loc_A670A4: VCallAd Control_ID_dgdABMS
  loc_A670A7: FStAdFunc var_88
  loc_A670AA: FLdPr var_88
  loc_A670AD: LateIdLdVar var_98 DispID_105 0
  loc_A670B4: CastAdVar Me
  loc_A670B8: FStAdFunc var_AC
  loc_A670BB: FLdPr var_AC
  loc_A670BE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A670C3: FLdPr var_B0
  loc_A670C6:  = Me.DataField
  loc_A670CB: FLdZeroAd var_B4
  loc_A670CE: PopTmpLdAdStr
  loc_A670D2: FLdPr Me
  loc_A670D5: MemLdRfVar from_stack_1.global_52
  loc_A670D8: NewIfNullPr clstipomovi
  loc_A670DB: Call clstipomovi.Sort(from_stack_1v)
  loc_A670E0: FFree1Str var_B8
  loc_A670E3: FFreeAd var_88 = "": var_AC = ""
  loc_A670EC: FFree1Var var_98 = ""
  loc_A670EF: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AD7558
  'Data Table: 467894
  loc_AD7410: FLdPr Me
  loc_AD7413: MemLdI2 global_56
  loc_AD7416: LitI2_Byte 0
  loc_AD7418: EqI2
  loc_AD7419: FLdRfVar var_88
  loc_AD741C: FLdPr Me
  loc_AD741F: MemLdRfVar from_stack_1.global_52
  loc_AD7422: NewIfNullPr clstipomovi
  loc_AD7425: from_stack_1 = clstipomovi.RecordCount
  loc_AD742A: ILdRf var_88
  loc_AD742D: LitI4 0
  loc_AD7432: GtI4
  loc_AD7433: AndI4
  loc_AD7434: BranchF loc_AD7555
  loc_AD7437: FLdRfVar var_8A
  loc_AD743A: FLdPr Me
  loc_AD743D: MemLdRfVar from_stack_1.global_52
  loc_AD7440: NewIfNullPr clstipomovi
  loc_AD7443: from_stack_1 = clstipomovi.BOF
  loc_AD7448: FLdI2 var_8A
  loc_AD744B: BranchF loc_AD745C
  loc_AD744E: FLdPr Me
  loc_AD7451: MemLdRfVar from_stack_1.global_52
  loc_AD7454: NewIfNullPr clstipomovi
  loc_AD7457: Call clstipomovi.MoveFirst()
  loc_AD745C: FLdRfVar var_8A
  loc_AD745F: FLdPr Me
  loc_AD7462: MemLdRfVar from_stack_1.global_52
  loc_AD7465: NewIfNullPr clstipomovi
  loc_AD7468: from_stack_1 = clstipomovi.EOF
  loc_AD746D: FLdI2 var_8A
  loc_AD7470: BranchF loc_AD7481
  loc_AD7473: FLdPr Me
  loc_AD7476: MemLdRfVar from_stack_1.global_52
  loc_AD7479: NewIfNullPr clstipomovi
  loc_AD747C: Call clstipomovi.MoveLast()
  loc_AD7481: FLdRfVar var_90
  loc_AD7484: FLdPr Me
  loc_AD7487: MemLdRfVar from_stack_1.global_52
  loc_AD748A: NewIfNullPr clstipomovi
  loc_AD748D: from_stack_1 = clstipomovi.DecrTimo
  loc_AD7492: ILdRf var_90
  loc_AD7495: LitStr "Debito"
  loc_AD7498: EqStr
  loc_AD749A: FFree1Str var_90
  loc_AD749D: BranchF loc_AD74B6
  loc_AD74A0: LitI2_Byte &HFF
  loc_AD74A2: FLdPr Me
  loc_AD74A5: VCallAd Control_ID_DecrTimoDebitoOpt
  loc_AD74A8: FStAdFunc var_94
  loc_AD74AB: FLdPr var_94
  loc_AD74AE: Me.Value = from_stack_1b
  loc_AD74B3: FFree1Ad var_94
  loc_AD74B6: FLdRfVar var_90
  loc_AD74B9: FLdPr Me
  loc_AD74BC: MemLdRfVar from_stack_1.global_52
  loc_AD74BF: NewIfNullPr clstipomovi
  loc_AD74C2: from_stack_1 = clstipomovi.DecrTimo
  loc_AD74C7: ILdRf var_90
  loc_AD74CA: LitStr "Credito"
  loc_AD74CD: EqStr
  loc_AD74CF: FFree1Str var_90
  loc_AD74D2: BranchF loc_AD74EB
  loc_AD74D5: LitI2_Byte &HFF
  loc_AD74D7: FLdPr Me
  loc_AD74DA: VCallAd Control_ID_DecrTimoCreditoOpt
  loc_AD74DD: FStAdFunc var_94
  loc_AD74E0: FLdPr var_94
  loc_AD74E3: Me.Value = from_stack_1b
  loc_AD74E8: FFree1Ad var_94
  loc_AD74EB: FLdRfVar var_90
  loc_AD74EE: FLdPr Me
  loc_AD74F1: MemLdRfVar from_stack_1.global_52
  loc_AD74F4: NewIfNullPr clstipomovi
  loc_AD74F7: from_stack_1 = clstipomovi.FijoTimo
  loc_AD74FC: ILdRf var_90
  loc_AD74FF: LitStr "Si"
  loc_AD7502: EqStr
  loc_AD7504: FFree1Str var_90
  loc_AD7507: BranchF loc_AD7520
  loc_AD750A: LitI2_Byte &HFF
  loc_AD750C: FLdPr Me
  loc_AD750F: VCallAd Control_ID_FijoTimoSiOpt
  loc_AD7512: FStAdFunc var_94
  loc_AD7515: FLdPr var_94
  loc_AD7518: Me.Value = from_stack_1b
  loc_AD751D: FFree1Ad var_94
  loc_AD7520: FLdRfVar var_90
  loc_AD7523: FLdPr Me
  loc_AD7526: MemLdRfVar from_stack_1.global_52
  loc_AD7529: NewIfNullPr clstipomovi
  loc_AD752C: from_stack_1 = clstipomovi.FijoTimo
  loc_AD7531: ILdRf var_90
  loc_AD7534: LitStr "No"
  loc_AD7537: EqStr
  loc_AD7539: FFree1Str var_90
  loc_AD753C: BranchF loc_AD7555
  loc_AD753F: LitI2_Byte &HFF
  loc_AD7541: FLdPr Me
  loc_AD7544: VCallAd Control_ID_FijoTimoNoOpt
  loc_AD7547: FStAdFunc var_94
  loc_AD754A: FLdPr var_94
  loc_AD754D: Me.Value = from_stack_1b
  loc_AD7552: FFree1Ad var_94
  loc_AD7555: ExitProcHresult
End Sub

Private Sub AbreTimoTxt_GotFocus() '9C4580
  'Data Table: 467894
  loc_9C456C: FLdPr Me
  loc_9C456F: VCallAd Control_ID_AbreTimoTxt
  loc_9C4572: CVarAd
  loc_9C4576: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C457B: FFree1Var var_94 = ""
  loc_9C457E: ExitProcHresult
End Sub

Private Sub AbreTimoTxt_Validate(Cancel As Boolean) 'A918CC
  'Data Table: 467894
  loc_A9182C: FLdRfVar var_8A
  loc_A9182F: FLdPr Me
  loc_A91832: VCallAd Control_ID_cmdCancelar
  loc_A91835: FStAdFunc var_88
  loc_A91838: FLdPr var_88
  loc_A9183B:  = Me.Value
  loc_A91840: FLdI2 var_8A
  loc_A91843: NotI4
  loc_A91844: FLdRfVar var_92
  loc_A91847: FLdPr Me
  loc_A9184A: VCallAd Control_ID_AbreTimoTxt
  loc_A9184D: FStAdFunc var_90
  loc_A91850: FLdPr var_90
  loc_A91853:  = Me.Enabled
  loc_A91858: FLdI2 var_92
  loc_A9185B: AndI4
  loc_A9185C: FFreeAd var_88 = ""
  loc_A91863: BranchF loc_A918C9
  loc_A91866: FLdRfVar var_98
  loc_A91869: FLdPr Me
  loc_A9186C: VCallAd Control_ID_AbreTimoTxt
  loc_A9186F: FStAdFunc var_88
  loc_A91872: FLdPr var_88
  loc_A91875:  = Me.Text
  loc_A9187A: ILdRf var_98
  loc_A9187D: LitStr "Abreviatura"
  loc_A91880: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91885: FStStrNoPop var_9C
  loc_A91888: FLdPr Me
  loc_A9188B: MemStStrCopy
  loc_A9188F: FFreeStr var_98 = ""
  loc_A91896: FFree1Ad var_88
  loc_A91899: FLdPr Me
  loc_A9189C: MemLdStr global_60
  loc_A9189F: LitStr vbNullString
  loc_A918A2: NeStr
  loc_A918A4: BranchF loc_A918C9
  loc_A918A7: FLdPr Me
  loc_A918AA: MemLdStr global_60
  loc_A918AD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A918B2: FLdPr Me
  loc_A918B5: VCallAd Control_ID_AbreTimoTxt
  loc_A918B8: CVarAd
  loc_A918BC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A918C1: FFree1Var var_AC = ""
  loc_A918C4: LitI2_Byte &HFF
  loc_A918C6: IStI2 Cancel
  loc_A918C9: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC2268
  'Data Table: 467894
  loc_AC216C: LitI2_Byte 0
  loc_AC216E: CR8I2
  loc_AC216F: PopFPR4
  loc_AC2170: FLdPr Me
  loc_AC2173: Me.Left = from_stack_1s
  loc_AC2178: LitI2_Byte 0
  loc_AC217A: CR8I2
  loc_AC217B: PopFPR4
  loc_AC217C: FLdPr Me
  loc_AC217F: Me.Top = from_stack_1s
  loc_AC2184: LitStr "SELECT CodiTimo, DetaTimo, AbreTimo, DecrTimo, FijoTimo FROM tipomovi ORDER BY CodiTimo "
  loc_AC2187: FLdPr Me
  loc_AC218A: MemLdRfVar from_stack_1.global_52
  loc_AC218D: NewIfNullPr clstipomovi
  loc_AC2190: Call clstipomovi.RedefineRS(from_stack_1v)
  loc_AC2195: LitStr "CodiTimo"
  loc_AC2198: FLdPr Me
  loc_AC219B: VCallAd Control_ID_CodiTimoTxt
  loc_AC219E: FStAdFunc var_88
  loc_AC21A1: FLdPr var_88
  loc_AC21A4: Me.DataField = from_stack_1
  loc_AC21A9: FFree1Ad var_88
  loc_AC21AC: LitStr "DetaTimo"
  loc_AC21AF: FLdPr Me
  loc_AC21B2: VCallAd Control_ID_DetaTimoTxt
  loc_AC21B5: FStAdFunc var_88
  loc_AC21B8: FLdPr var_88
  loc_AC21BB: Me.DataField = from_stack_1
  loc_AC21C0: FFree1Ad var_88
  loc_AC21C3: LitStr "AbreTimo"
  loc_AC21C6: FLdPr Me
  loc_AC21C9: VCallAd Control_ID_AbreTimoTxt
  loc_AC21CC: FStAdFunc var_88
  loc_AC21CF: FLdPr var_88
  loc_AC21D2: Me.DataField = from_stack_1
  loc_AC21D7: FFree1Ad var_88
  loc_AC21DA: LitI4 0
  loc_AC21DF: LitI4 1
  loc_AC21E4: FLdRfVar var_8C
  loc_AC21E7: Redim
  loc_AC21F1: FLdPr Me
  loc_AC21F4: MemLdRfVar from_stack_1.global_52
  loc_AC21F7: NewIfNullAd
  loc_AC21FA: FStAd var_88 
  loc_AC21FE: FLdRfVar var_88
  loc_AC2201: CVarRef
  loc_AC2206: ParmAry1St
  loc_AC220C: FLdPr Me
  loc_AC220F: VCallAd Control_ID_dgdABMS
  loc_AC2212: CVarAd
  loc_AC2216: ParmAry1St
  loc_AC221C: FLdRfVar var_8C
  loc_AC221F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AC2224: ILdRf var_88
  loc_AC2227: CastAd
  loc_AC222A: FLdPr Me
  loc_AC222D: MemStAdFunc
  loc_AC2231: FLdRfVar var_8C
  loc_AC2234: Erase
  loc_AC2235: FFree1Ad var_88
  loc_AC2238: Call EnlazaTodo()
  loc_AC223D: ILdRf Me
  loc_AC2240: CastAd
  loc_AC2243: FStAdFunc var_88
  loc_AC2246: FLdRfVar var_88
  loc_AC2249: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AC224E: FFree1Ad var_88
  loc_AC2251: LitI2_Byte 0
  loc_AC2253: ILdRf Me
  loc_AC2256: CastAd
  loc_AC2259: FStAdFunc var_88
  loc_AC225C: FLdRfVar var_88
  loc_AC225F: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AC2264: FFree1Ad var_88
  loc_AC2267: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A64A60
  'Data Table: 467894
  loc_A64A04: FLdRfVar var_C2
  loc_A64A07: FLdRfVar var_C0
  loc_A64A0A: LitVarI2 var_B8, 1
  loc_A64A0F: FLdPr Me
  loc_A64A12: VCallAd Control_ID_tlbABMS
  loc_A64A15: FStAdFunc var_88
  loc_A64A18: FLdPr var_88
  loc_A64A1B: LateIdLdVar var_98 DispID_3 0
  loc_A64A22: CastAdVar Me
  loc_A64A26: FStAdFunc var_BC
  loc_A64A29: FLdPr var_BC
  loc_A64A2C:  = Me.Buttons.ControlDefault
  loc_A64A31: FLdPr var_C0
  loc_A64A34:  = Me.Enabled
  loc_A64A39: FLdI2 var_C2
  loc_A64A3C: FFreeAd var_88 = "": var_BC = ""
  loc_A64A45: FFreeVar var_98 = ""
  loc_A64A4C: BranchF loc_A64A5D
  loc_A64A4F: FLdPr Me
  loc_A64A52: MemLdRfVar from_stack_1.global_52
  loc_A64A55: NewIfNullPr clstipomovi
  loc_A64A58: Call clstipomovi.Requery()
  loc_A64A5D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D5E04
  'Data Table: 467894
  loc_9D5DEC: ILdI2 KeyCode
  loc_9D5DEF: ILdRf Me
  loc_9D5DF2: CastAd
  loc_9D5DF5: FStAdFunc var_88
  loc_9D5DF8: FLdRfVar var_88
  loc_9D5DFB: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D5E00: FFree1Ad var_88
  loc_9D5E03: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A8434C
  'Data Table: 467894
  loc_A842CC: LitI4 0
  loc_A842D1: LitI4 3
  loc_A842D6: FLdRfVar var_88
  loc_A842D9: Redim
  loc_A842E3: FLdPr Me
  loc_A842E6: MemLdRfVar from_stack_1.global_52
  loc_A842E9: NewIfNullAd
  loc_A842EC: FStAd var_8C 
  loc_A842F0: FLdRfVar var_8C
  loc_A842F3: CVarRef
  loc_A842F8: ParmAry1St
  loc_A842FE: FLdPr Me
  loc_A84301: VCallAd Control_ID_CodiTimoTxt
  loc_A84304: CVarAd
  loc_A84308: ParmAry1St
  loc_A8430E: FLdPr Me
  loc_A84311: VCallAd Control_ID_DetaTimoTxt
  loc_A84314: CVarAd
  loc_A84318: ParmAry1St
  loc_A8431E: FLdPr Me
  loc_A84321: VCallAd Control_ID_AbreTimoTxt
  loc_A84324: CVarAd
  loc_A84328: ParmAry1St
  loc_A8432E: FLdRfVar var_88
  loc_A84331: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A84336: ILdRf var_8C
  loc_A84339: CastAd
  loc_A8433C: FLdPr Me
  loc_A8433F: MemStAdFunc
  loc_A84343: FLdRfVar var_88
  loc_A84346: Erase
  loc_A84347: FFree1Ad var_8C
  loc_A8434A: ExitProcHresult
End Sub
