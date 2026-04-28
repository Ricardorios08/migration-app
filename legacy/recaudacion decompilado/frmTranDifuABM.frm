VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmTranDifuABM
  Caption = "Transferencias de Difuntos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 348
  ClientWidth = 15240
  ClientHeight = 9084
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
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
  Begin VB.Frame Frame4
    Caption = "DATOS TRANSFERENCIA"
    Left = 105
    Top = 6840
    Width = 14100
    Height = 2220
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ObseTrdiTxt
      ForeColor = &HFF0000&
      Left = 3315
      Top = 1410
      Width = 8835
      Height = 660
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 200
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
    Begin VB.TextBox ExpeTrdiTxt
      ForeColor = &HFF0000&
      Left = 3315
      Top = 915
      Width = 3420
      Height = 420
      TabIndex = 2
      MaxLength = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Número de Expediente del Inmueble"
    End
    Begin MSMask.MaskEdBox FeesTrdiMsk
      Left = 3330
      Top = 480
      Width = 1455
      Height = 345
      TabIndex = 1
      OleObjectBlob = "frmTranDifuABM.frx":0000
    End
    Begin VB.Label Label8
      Caption = "Observación:"
      Left = 1845
      Top = 1500
      Width = 1380
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label5
      Caption = "Expediente:"
      Left = 1965
      Top = 975
      Width = 1260
      Height = 300
      TabIndex = 12
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
      Caption = "Fecha:"
      Left = 2490
      Top = 495
      Width = 735
      Height = 300
      TabIndex = 11
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
  Begin VB.Frame Frame2
    Caption = "VENDEDOR"
    Left = 105
    Top = 4440
    Width = 14100
    Height = 1065
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Label Label4
      Caption = "Cuenta:"
      Left = 120
      Top = 480
      Width = 840
      Height = 300
      TabIndex = 18
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
    Begin VB.Label CodiDifuLbl
      Caption = "CodiDifuLbl"
      ForeColor = &HFF0000&
      Left = 1080
      Top = 480
      Width = 1230
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
      DataField = "CodiDifu"
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
      Caption = "Apellido y Nombre:"
      Left = 6240
      Top = 480
      Width = 1965
      Height = 300
      TabIndex = 16
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
    Begin VB.Label Label1
      Caption = "CUIT/CUIL:"
      Left = 2640
      Top = 480
      Width = 1230
      Height = 300
      TabIndex = 15
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
    Begin VB.Label CUITVendedorLbl
      Caption = "CUITVendedorLbl"
      ForeColor = &HFF0000&
      Left = 3960
      Top = 480
      Width = 2100
      Height = 345
      TabIndex = 14
      AutoSize = -1  'True
      WordWrap = -1  'True
      DataField = "CucuPers"
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
    Begin VB.Label DetaVendedorLbl
      Caption = "DetaVendedorLbl"
      ForeColor = &HFF0000&
      Left = 8280
      Top = 480
      Width = 5715
      Height = 345
      TabIndex = 9
      WordWrap = -1  'True
      DataField = "DetaPers"
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
  Begin VB.Frame Frame1
    Caption = "COMPRADOR"
    Left = 120
    Top = 5640
    Width = 14100
    Height = 945
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
    Begin VB.CommandButton CreaPersonaCmd
      Caption = "Crea Persona"
      Left = 12840
      Top = 330
      Width = 1095
      Height = 540
      TabIndex = 4
      Picture = "frmTranDifuABM.frx":00B0
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 3360
      Top = 345
      Width = 2025
      Height = 420
      TabIndex = 0
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
    Begin VB.Label Label9
      Caption = "CUIT/CUIL:"
      Left = 2040
      Top = 405
      Width = 1230
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
    Begin VB.Label DetaApeNomLbl
      ForeColor = &HFF0000&
      Left = 6000
      Top = 360
      Width = 6495
      Height = 345
      TabIndex = 6
      WordWrap = -1  'True
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
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmTranDifuABM.frx":05E2
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15240
    Height = 636
    TabIndex = 19
    OleObjectBlob = "frmTranDifuABM.frx":8160
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 20
      TabStop = 0   'False
      Picture = "frmTranDifuABM.frx":86BC
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 22
    OleObjectBlob = "frmTranDifuABM.frx":8F86
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1440
    Width = 14700
    Height = 2745
    TabIndex = 23
    OleObjectBlob = "frmTranDifuABM.frx":900E
  End
End

Attribute VB_Name = "frmTranDifuABM"


Private Sub FiltroMsk_UnknownEvent_0 '9C4A00
  'Data Table: 4A47D8
  loc_9C49EC: FLdPr Me
  loc_9C49EF: VCallAd Control_ID_FiltroMsk
  loc_9C49F2: CVarAd
  loc_9C49F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C49FB: FFree1Var var_94 = ""
  loc_9C49FE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'ADDC4C
  'Data Table: 4A47D8
  loc_ADDAF8: FLdRfVar var_8A
  loc_ADDAFB: FLdPr Me
  loc_ADDAFE: VCallAd Control_ID_FiltroCbo
  loc_ADDB01: FStAdFunc var_88
  loc_ADDB04: FLdPr var_88
  loc_ADDB07:  = Me.ListIndex
  loc_ADDB0C: FLdI2 var_8A
  loc_ADDB0F: FStI2 var_8C
  loc_ADDB12: FFree1Ad var_88
  loc_ADDB15: FLdI2 var_8C
  loc_ADDB18: LitI2_Byte 0
  loc_ADDB1A: EqI2
  loc_ADDB1B: BranchF loc_ADDB53
  loc_ADDB1E: LitStr "Numero de Cuenta que contiene. "
  loc_ADDB21: FLdPr Me
  loc_ADDB24: VCallAd Control_ID_FiltroMsk
  loc_ADDB27: FStAdFunc var_88
  loc_ADDB2A: FLdPr var_88
  loc_ADDB2D: LateIdLdVar var_9C DispID_22 0
  loc_ADDB34: CStrVarTmp
  loc_ADDB35: FStStrNoPop var_A0
  loc_ADDB38: ConcatStr
  loc_ADDB39: FStStrNoPop var_A4
  loc_ADDB3C: FLdPr Me
  loc_ADDB3F: MemStStrCopy
  loc_ADDB43: FFreeStr var_A0 = ""
  loc_ADDB4A: FFree1Ad var_88
  loc_ADDB4D: FFree1Var var_9C = ""
  loc_ADDB50: Branch loc_ADDC48
  loc_ADDB53: FLdI2 var_8C
  loc_ADDB56: LitI2_Byte 1
  loc_ADDB58: EqI2
  loc_ADDB59: BranchF loc_ADDB91
  loc_ADDB5C: LitStr "Apellido y Nombre que contiene. "
  loc_ADDB5F: FLdPr Me
  loc_ADDB62: VCallAd Control_ID_FiltroMsk
  loc_ADDB65: FStAdFunc var_88
  loc_ADDB68: FLdPr var_88
  loc_ADDB6B: LateIdLdVar var_9C DispID_22 0
  loc_ADDB72: CStrVarTmp
  loc_ADDB73: FStStrNoPop var_A0
  loc_ADDB76: ConcatStr
  loc_ADDB77: FStStrNoPop var_A4
  loc_ADDB7A: FLdPr Me
  loc_ADDB7D: MemStStrCopy
  loc_ADDB81: FFreeStr var_A0 = ""
  loc_ADDB88: FFree1Ad var_88
  loc_ADDB8B: FFree1Var var_9C = ""
  loc_ADDB8E: Branch loc_ADDC48
  loc_ADDB91: FLdI2 var_8C
  loc_ADDB94: LitI2_Byte 2
  loc_ADDB96: EqI2
  loc_ADDB97: BranchF loc_ADDBCF
  loc_ADDB9A: LitStr "Razón Social que contiene. "
  loc_ADDB9D: FLdPr Me
  loc_ADDBA0: VCallAd Control_ID_FiltroMsk
  loc_ADDBA3: FStAdFunc var_88
  loc_ADDBA6: FLdPr var_88
  loc_ADDBA9: LateIdLdVar var_9C DispID_22 0
  loc_ADDBB0: CStrVarTmp
  loc_ADDBB1: FStStrNoPop var_A0
  loc_ADDBB4: ConcatStr
  loc_ADDBB5: FStStrNoPop var_A4
  loc_ADDBB8: FLdPr Me
  loc_ADDBBB: MemStStrCopy
  loc_ADDBBF: FFreeStr var_A0 = ""
  loc_ADDBC6: FFree1Ad var_88
  loc_ADDBC9: FFree1Var var_9C = ""
  loc_ADDBCC: Branch loc_ADDC48
  loc_ADDBCF: FLdI2 var_8C
  loc_ADDBD2: LitI2_Byte 3
  loc_ADDBD4: EqI2
  loc_ADDBD5: BranchF loc_ADDC0D
  loc_ADDBD8: LitStr "código de tipo de sepultura que es igual a: "
  loc_ADDBDB: FLdPr Me
  loc_ADDBDE: VCallAd Control_ID_FiltroMsk
  loc_ADDBE1: FStAdFunc var_88
  loc_ADDBE4: FLdPr var_88
  loc_ADDBE7: LateIdLdVar var_9C DispID_22 0
  loc_ADDBEE: CStrVarTmp
  loc_ADDBEF: FStStrNoPop var_A0
  loc_ADDBF2: ConcatStr
  loc_ADDBF3: FStStrNoPop var_A4
  loc_ADDBF6: FLdPr Me
  loc_ADDBF9: MemStStrCopy
  loc_ADDBFD: FFreeStr var_A0 = ""
  loc_ADDC04: FFree1Ad var_88
  loc_ADDC07: FFree1Var var_9C = ""
  loc_ADDC0A: Branch loc_ADDC48
  loc_ADDC0D: FLdI2 var_8C
  loc_ADDC10: LitI2_Byte 4
  loc_ADDC12: EqI2
  loc_ADDC13: BranchF loc_ADDC48
  loc_ADDC16: LitStr "Apellido y Nombre del difunto que contiene. "
  loc_ADDC19: FLdPr Me
  loc_ADDC1C: VCallAd Control_ID_FiltroMsk
  loc_ADDC1F: FStAdFunc var_88
  loc_ADDC22: FLdPr var_88
  loc_ADDC25: LateIdLdVar var_9C DispID_22 0
  loc_ADDC2C: CStrVarTmp
  loc_ADDC2D: FStStrNoPop var_A0
  loc_ADDC30: ConcatStr
  loc_ADDC31: FStStrNoPop var_A4
  loc_ADDC34: FLdPr Me
  loc_ADDC37: MemStStrCopy
  loc_ADDC3B: FFreeStr var_A0 = ""
  loc_ADDC42: FFree1Ad var_88
  loc_ADDC45: FFree1Var var_9C = ""
  loc_ADDC48: ExitProcHresult
  loc_ADDC49: BranchTVar
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9C492C
  'Data Table: 4A47D8
  loc_9C4914: ILdI2 KeyAscii
  loc_9C4917: CI4UI1
  loc_9C4918: LitI4 &HD
  loc_9C491D: EqI4
  loc_9C491E: BranchF loc_9C492B
  loc_9C4921: Call Proc_235_21_ADA418()
  loc_9C4926: Call cmdCancelar_Click()
  loc_9C492B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B44338
  'Data Table: 4A47D8
  loc_B4401C: ILdRf Button
  loc_B4401F: FStAd var_88 
  loc_B44023: FLdRfVar var_8C
  loc_B44026: FLdPr var_88
  loc_B44029:  = Me.Key
  loc_B4402E: FLdZeroAd var_8C
  loc_B44031: FStStr var_90
  loc_B44034: ILdRf var_90
  loc_B44037: LitStr "btnCrear"
  loc_B4403A: EqStr
  loc_B4403C: BranchF loc_B440D3
  loc_B4403F: LitI2_Byte 1
  loc_B44041: FLdPr Me
  loc_B44044: MemStI2 global_56
  loc_B44047: ILdRf Me
  loc_B4404A: CastAd
  loc_B4404D: FStAdFunc var_94
  loc_B44050: FLdRfVar var_94
  loc_B44053: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B44058: FFree1Ad var_94
  loc_B4405B: ILdRf Me
  loc_B4405E: CastAd
  loc_B44061: FStAdFunc var_94
  loc_B44064: FLdRfVar var_94
  loc_B44067: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B4406C: FFree1Ad var_94
  loc_B4406F: ILdRf Me
  loc_B44072: CastAd
  loc_B44075: FStAdFunc var_94
  loc_B44078: FLdRfVar var_94
  loc_B4407B: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B44080: FFree1Ad var_94
  loc_B44083: LitStr "0"
  loc_B44086: FLdPr Me
  loc_B44089: VCallAd Control_ID_CucuPersTxt
  loc_B4408C: FStAdFunc var_94
  loc_B4408F: FLdPr var_94
  loc_B44092: Me.Text = from_stack_1
  loc_B44097: FFree1Ad var_94
  loc_B4409A: LitI2_Byte 0
  loc_B4409C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B440A1: CStrDate
  loc_B440A3: CVarStr var_A4
  loc_B440A6: PopAdLdVar
  loc_B440A7: FLdPr Me
  loc_B440AA: VCallAd Control_ID_FeesTrdiMsk
  loc_B440AD: FStAdFunc var_94
  loc_B440B0: FLdPr var_94
  loc_B440B3: LateIdSt
  loc_B440B8: FFree1Ad var_94
  loc_B440BB: FFree1Var var_A4 = ""
  loc_B440BE: FLdPr Me
  loc_B440C1: VCallAd Control_ID_CucuPersTxt
  loc_B440C4: CVarAd
  loc_B440C8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B440CD: FFree1Var var_A4 = ""
  loc_B440D0: Branch loc_B44336
  loc_B440D3: ILdRf var_90
  loc_B440D6: LitStr "btnModificar"
  loc_B440D9: EqStr
  loc_B440DB: BranchF loc_B440E1
  loc_B440DE: Branch loc_B44336
  loc_B440E1: ILdRf var_90
  loc_B440E4: LitStr "btnEliminar"
  loc_B440E7: EqStr
  loc_B440E9: BranchF loc_B440EF
  loc_B440EC: Branch loc_B44336
  loc_B440EF: ILdRf var_90
  loc_B440F2: LitStr "btnGuardar"
  loc_B440F5: EqStr
  loc_B440F7: BranchF loc_B44232
  loc_B440FA: LitStr vbNullString
  loc_B440FD: FLdPr Me
  loc_B44100: MemStStrCopy
  loc_B44104: LitI2_Byte &HFF
  loc_B44106: PopTmpLdAd2 var_B6
  loc_B44109: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B4410E: FLdPr Me
  loc_B44111: MemLdStr global_60
  loc_B44114: LitStr vbNullString
  loc_B44117: NeStr
  loc_B44119: BranchF loc_B4411D
  loc_B4411C: ExitProcHresult
  loc_B4411D: LitI2_Byte &HFF
  loc_B4411F: PopTmpLdAd2 var_B6
  loc_B44122: Call FeesTrdiMsk_UnknownEvent_8()
  loc_B44127: FLdPr Me
  loc_B4412A: MemLdStr global_60
  loc_B4412D: LitStr vbNullString
  loc_B44130: NeStr
  loc_B44132: BranchF loc_B44136
  loc_B44135: ExitProcHresult
  loc_B44136: FLdPr Me
  loc_B44139: MemLdI2 global_56
  loc_B4413C: FStI2 var_B8
  loc_B4413F: FLdI2 var_B8
  loc_B44142: LitI2_Byte 1
  loc_B44144: EqI2
  loc_B44145: BranchF loc_B4422A
  loc_B44148: FLdRfVar var_8C
  loc_B4414B: FLdPrThis
  loc_B4414C: VCallAd Control_ID_CodiDifuLbl
  loc_B4414F: FStAdFunc var_94
  loc_B44152: FLdPr var_94
  loc_B44155:  = Me.Caption
  loc_B4415A: FLdRfVar var_C0
  loc_B4415D: FLdPrThis
  loc_B4415E: VCallAd Control_ID_CUITVendedorLbl
  loc_B44161: FStAdFunc var_BC
  loc_B44164: FLdPr var_BC
  loc_B44167:  = Me.Caption
  loc_B4416C: FLdRfVar var_C8
  loc_B4416F: FLdPrThis
  loc_B44170: VCallAd Control_ID_CucuPersTxt
  loc_B44173: FStAdFunc var_C4
  loc_B44176: FLdPr var_C4
  loc_B44179:  = Me.Text
  loc_B4417E: FLdPrThis
  loc_B4417F: VCallAd Control_ID_FeesTrdiMsk
  loc_B44182: FStAdFunc var_CC
  loc_B44185: FLdPr var_CC
  loc_B44188: LateIdLdVar var_A4 DispID_15 0
  loc_B4418F: PopAd
  loc_B44191: LitI4 1
  loc_B44196: LitI4 1
  loc_B4419B: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B441A0: FStVarCopyObj var_EC
  loc_B441A3: FLdRfVar var_EC
  loc_B441A6: FLdRfVar var_A4
  loc_B441A9: CStrVarTmp
  loc_B441AA: CVarStr var_DC
  loc_B441AD: ImpAdCallI2 Format$(, )
  loc_B441B2: FStStr var_104
  loc_B441B5: FLdRfVar var_F4
  loc_B441B8: FLdPrThis
  loc_B441B9: VCallAd Control_ID_ExpeTrdiTxt
  loc_B441BC: FStAdFunc var_F0
  loc_B441BF: FLdPr var_F0
  loc_B441C2:  = Me.Text
  loc_B441C7: FLdRfVar var_FC
  loc_B441CA: FLdPrThis
  loc_B441CB: VCallAd Control_ID_ObseTrdiTxt
  loc_B441CE: FStAdFunc var_F8
  loc_B441D1: FLdPr var_F8
  loc_B441D4:  = Me.Text
  loc_B441D9: LitI2_Byte &HFF
  loc_B441DB: ILdRf var_FC
  loc_B441DE: ILdRf var_F4
  loc_B441E1: FLdZeroAd var_104
  loc_B441E4: FStStrNoPop var_100
  loc_B441E7: CDateStr
  loc_B441E9: PopFPR8
  loc_B441EA: ILdRf var_C8
  loc_B441ED: ILdRf var_C0
  loc_B441F0: ILdRf var_8C
  loc_B441F3: FLdPr Me
  loc_B441F6: MemLdRfVar from_stack_1.global_52
  loc_B441F9: NewIfNullPr clsdifunto
  loc_B441FC: Call clsdifunto.AddNewTransferecia(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B44201: FFreeStr var_8C = "": var_C0 = "": var_C8 = "": var_100 = "": var_F4 = "": var_FC = ""
  loc_B44212: FFreeAd var_94 = "": var_BC = "": var_C4 = "": var_CC = "": var_F0 = ""
  loc_B44221: FFreeVar var_A4 = "": var_DC = ""
  loc_B4422A: Call cmdCancelar_Click()
  loc_B4422F: Branch loc_B44336
  loc_B44232: ILdRf var_90
  loc_B44235: LitStr "btnCancelar"
  loc_B44238: EqStr
  loc_B4423A: BranchF loc_B44245
  loc_B4423D: Call cmdCancelar_Click()
  loc_B44242: Branch loc_B44336
  loc_B44245: ILdRf var_90
  loc_B44248: LitStr "btnPrimero"
  loc_B4424B: EqStr
  loc_B4424D: BranchF loc_B44261
  loc_B44250: FLdPr Me
  loc_B44253: MemLdRfVar from_stack_1.global_52
  loc_B44256: NewIfNullPr clsdifunto
  loc_B44259: Call clsdifunto.MoveFirst()
  loc_B4425E: Branch loc_B44336
  loc_B44261: ILdRf var_90
  loc_B44264: LitStr "btnAnterior"
  loc_B44267: EqStr
  loc_B44269: BranchF loc_B4427D
  loc_B4426C: FLdPr Me
  loc_B4426F: MemLdRfVar from_stack_1.global_52
  loc_B44272: NewIfNullPr clsdifunto
  loc_B44275: Call clsdifunto.MovePrevious()
  loc_B4427A: Branch loc_B44336
  loc_B4427D: ILdRf var_90
  loc_B44280: LitStr "btnSiguiente"
  loc_B44283: EqStr
  loc_B44285: BranchF loc_B44299
  loc_B44288: FLdPr Me
  loc_B4428B: MemLdRfVar from_stack_1.global_52
  loc_B4428E: NewIfNullPr clsdifunto
  loc_B44291: Call clsdifunto.MoveNext()
  loc_B44296: Branch loc_B44336
  loc_B44299: ILdRf var_90
  loc_B4429C: LitStr "btnUltimo"
  loc_B4429F: EqStr
  loc_B442A1: BranchF loc_B442B5
  loc_B442A4: FLdPr Me
  loc_B442A7: MemLdRfVar from_stack_1.global_52
  loc_B442AA: NewIfNullPr clsdifunto
  loc_B442AD: Call clsdifunto.MoveLast()
  loc_B442B2: Branch loc_B44336
  loc_B442B5: ILdRf var_90
  loc_B442B8: LitStr "btnFiltrar"
  loc_B442BB: EqStr
  loc_B442BD: BranchF loc_B442C3
  loc_B442C0: Branch loc_B44336
  loc_B442C3: ILdRf var_90
  loc_B442C6: LitStr "btnBuscar"
  loc_B442C9: EqStr
  loc_B442CB: BranchF loc_B442D1
  loc_B442CE: Branch loc_B44336
  loc_B442D1: ILdRf var_90
  loc_B442D4: LitStr "btnImprimir"
  loc_B442D7: EqStr
  loc_B442D9: BranchF loc_B442DF
  loc_B442DC: Branch loc_B44336
  loc_B442DF: ILdRf var_90
  loc_B442E2: LitStr "btnAyuda"
  loc_B442E5: EqStr
  loc_B442E7: BranchF loc_B44316
  loc_B442EA: LitVar_Missing var_144
  loc_B442ED: LitVar_Missing var_EC
  loc_B442F0: LitVar_Missing var_DC
  loc_B442F3: LitI4 0
  loc_B442F8: LitVarStr var_B4, "Opción no disponible en esta versión."
  loc_B442FD: FStVarCopyObj var_A4
  loc_B44300: FLdRfVar var_A4
  loc_B44303: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B44308: FFreeVar var_A4 = "": var_DC = "": var_EC = ""
  loc_B44313: Branch loc_B44336
  loc_B44316: ILdRf var_90
  loc_B44319: LitStr "btnSalir"
  loc_B4431C: EqStr
  loc_B4431E: BranchF loc_B44336
  loc_B44321: ILdRf Me
  loc_B44324: FStAdNoPop
  loc_B44328: ImpAdLdRf MemVar_D9C5D8
  loc_B4432B: NewIfNullPr Global
  loc_B4432E: Global.Unload from_stack_1
  loc_B44333: FFree1Ad var_94
  loc_B44336: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9C4970
  'Data Table: 4A47D8
  loc_9C495C: FLdPr Me
  loc_9C495F: VCallAd Control_ID_CucuPersTxt
  loc_9C4962: CVarAd
  loc_9C4966: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C496B: FFree1Var var_94 = ""
  loc_9C496E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) 'A98090
  'Data Table: 4A47D8
  loc_A97FD8: LitStr "1234567890 "
  loc_A97FDB: FStStrCopy var_88
  loc_A97FDE: FLdRfVar var_88
  loc_A97FE1: ILdRf KeyAscii
  loc_A97FE4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A97FE9: IStI2 KeyAscii
  loc_A97FEC: FFree1Str var_88
  loc_A97FEF: ILdI2 KeyAscii
  loc_A97FF2: LitI2_Byte &H20
  loc_A97FF4: EqI2
  loc_A97FF5: BranchF loc_A9808F
  loc_A97FF8: LitI2_Byte 0
  loc_A97FFA: IStI2 KeyAscii
  loc_A97FFD: LitVar_Missing var_A8
  loc_A98000: PopAdLdVar
  loc_A98001: LitVarI4
  loc_A98009: PopAdLdVar
  loc_A9800A: ImpAdLdRf MemVar_D940AC
  loc_A9800D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98010: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A98015: FLdRfVar var_88
  loc_A98018: ImpAdLdRf MemVar_D940AC
  loc_A9801B: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9801E: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A98023: ILdRf var_88
  loc_A98026: LitStr vbNullString
  loc_A98029: NeStr
  loc_A9802B: FFree1Str var_88
  loc_A9802E: BranchF loc_A9808F
  loc_A98031: FLdRfVar var_88
  loc_A98034: ImpAdLdRf MemVar_D940AC
  loc_A98037: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9803A: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A9803F: ILdRf var_88
  loc_A98042: FLdPr Me
  loc_A98045: VCallAd Control_ID_
  loc_A98048: FStAdFunc var_AC
  loc_A9804B: FLdPr var_AC
  loc_A9804E: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A98053: FFree1Str var_88
  loc_A98056: FFree1Ad var_AC
  loc_A98059: LitStr vbNullString
  loc_A9805C: ImpAdLdRf MemVar_D940AC
  loc_A9805F: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98062: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A98067: FLdRfVar var_88
  loc_A9806A: ImpAdLdRf MemVar_D940AC
  loc_A9806D: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A98070: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A98075: ILdRf var_88
  loc_A98078: FLdPr Me
  loc_A9807B: VCallAd Control_ID_
  loc_A9807E: FStAdFunc var_AC
  loc_A98081: FLdPr var_AC
  loc_A98084: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A98089: FFree1Str var_88
  loc_A9808C: FFree1Ad var_AC
  loc_A9808F: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'ABEFC0
  'Data Table: 4A47D8
  loc_ABEECC: FLdRfVar var_8A
  loc_ABEECF: FLdPr Me
  loc_ABEED2: VCallAd Control_ID_cmdCancelar
  loc_ABEED5: FStAdFunc var_88
  loc_ABEED8: FLdPr var_88
  loc_ABEEDB:  = Me.Value
  loc_ABEEE0: FLdI2 var_8A
  loc_ABEEE3: NotI4
  loc_ABEEE4: FLdRfVar var_92
  loc_ABEEE7: FLdPr Me
  loc_ABEEEA: VCallAd Control_ID_CucuPersTxt
  loc_ABEEED: FStAdFunc var_90
  loc_ABEEF0: FLdPr var_90
  loc_ABEEF3:  = Me.Enabled
  loc_ABEEF8: FLdI2 var_92
  loc_ABEEFB: AndI4
  loc_ABEEFC: FFreeAd var_88 = ""
  loc_ABEF03: BranchF loc_ABEFBF
  loc_ABEF06: FLdRfVar var_98
  loc_ABEF09: FLdPr Me
  loc_ABEF0C: VCallAd Control_ID_CucuPersTxt
  loc_ABEF0F: FStAdFunc var_88
  loc_ABEF12: FLdPr var_88
  loc_ABEF15:  = Me.Text
  loc_ABEF1A: ILdRf var_98
  loc_ABEF1D: ImpAdCallI2 Proc_18_66_A532F4()
  loc_ABEF22: FStStrNoPop var_9C
  loc_ABEF25: FLdPr Me
  loc_ABEF28: MemStStrCopy
  loc_ABEF2C: FFreeStr var_98 = ""
  loc_ABEF33: FFree1Ad var_88
  loc_ABEF36: FLdPr Me
  loc_ABEF39: MemLdStr global_60
  loc_ABEF3C: LitStr vbNullString
  loc_ABEF3F: NeStr
  loc_ABEF41: BranchF loc_ABEF81
  loc_ABEF44: FLdPr Me
  loc_ABEF47: MemLdStr global_60
  loc_ABEF4A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABEF4F: LitStr vbNullString
  loc_ABEF52: FLdPr Me
  loc_ABEF55: VCallAd Control_ID_DetaApeNomLbl
  loc_ABEF58: FStAdFunc var_88
  loc_ABEF5B: FLdPr var_88
  loc_ABEF5E: Me.Caption = from_stack_1
  loc_ABEF63: FFree1Ad var_88
  loc_ABEF66: FLdPr Me
  loc_ABEF69: VCallAd Control_ID_CucuPersTxt
  loc_ABEF6C: CVarAd
  loc_ABEF70: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABEF75: FFree1Var var_AC = ""
  loc_ABEF78: LitI2_Byte &HFF
  loc_ABEF7A: IStI2 Cancel
  loc_ABEF7D: ExitProcHresult
  loc_ABEF7E: Branch loc_ABEFBF
  loc_ABEF81: FLdRfVar var_98
  loc_ABEF84: FLdPr Me
  loc_ABEF87: VCallAd Control_ID_CucuPersTxt
  loc_ABEF8A: FStAdFunc var_88
  loc_ABEF8D: FLdPr var_88
  loc_ABEF90:  = Me.Text
  loc_ABEF95: ILdRf var_98
  loc_ABEF98: ImpAdCallI2 Proc_270_75_A80810()
  loc_ABEF9D: FStStrNoPop var_9C
  loc_ABEFA0: FLdPr Me
  loc_ABEFA3: VCallAd Control_ID_DetaApeNomLbl
  loc_ABEFA6: FStAdFunc var_90
  loc_ABEFA9: FLdPr var_90
  loc_ABEFAC: Me.Caption = from_stack_1
  loc_ABEFB1: FFreeStr var_98 = ""
  loc_ABEFB8: FFreeAd var_88 = ""
  loc_ABEFBF: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA60F0
  'Data Table: 4A47D8
  loc_AA6020: LitVarStr var_94, vbNullString
  loc_AA6025: PopAdLdVar
  loc_AA6026: FLdPr Me
  loc_AA6029: VCallAd Control_ID_FiltroMsk
  loc_AA602C: FStAdFunc var_A8
  loc_AA602F: FLdPr var_A8
  loc_AA6032: LateIdSt
  loc_AA6037: FFree1Ad var_A8
  loc_AA603A: FLdRfVar var_AA
  loc_AA603D: FLdPr Me
  loc_AA6040: VCallAd Control_ID_FiltroCbo
  loc_AA6043: FStAdFunc var_A8
  loc_AA6046: FLdPr var_A8
  loc_AA6049:  = Me.ListIndex
  loc_AA604E: FLdI2 var_AA
  loc_AA6051: FStI2 var_AC
  loc_AA6054: FFree1Ad var_A8
  loc_AA6057: FLdI2 var_AC
  loc_AA605A: LitI2_Byte 0
  loc_AA605C: EqI2
  loc_AA605D: BranchF loc_AA607D
  loc_AA6060: LitVarStr var_94, vbNullString
  loc_AA6065: PopAdLdVar
  loc_AA6066: FLdPr Me
  loc_AA6069: VCallAd Control_ID_FiltroMsk
  loc_AA606C: FStAdFunc var_A8
  loc_AA606F: FLdPr var_A8
  loc_AA6072: LateIdSt
  loc_AA6077: FFree1Ad var_A8
  loc_AA607A: Branch loc_AA60EC
  loc_AA607D: FLdI2 var_AC
  loc_AA6080: LitI2_Byte 1
  loc_AA6082: EqI2
  loc_AA6083: BranchF loc_AA60A3
  loc_AA6086: LitVarStr var_94, vbNullString
  loc_AA608B: PopAdLdVar
  loc_AA608C: FLdPr Me
  loc_AA608F: VCallAd Control_ID_FiltroMsk
  loc_AA6092: FStAdFunc var_A8
  loc_AA6095: FLdPr var_A8
  loc_AA6098: LateIdSt
  loc_AA609D: FFree1Ad var_A8
  loc_AA60A0: Branch loc_AA60EC
  loc_AA60A3: FLdI2 var_AC
  loc_AA60A6: LitI2_Byte 2
  loc_AA60A8: EqI2
  loc_AA60A9: BranchF loc_AA60C9
  loc_AA60AC: LitVarStr var_94, "###"
  loc_AA60B1: PopAdLdVar
  loc_AA60B2: FLdPr Me
  loc_AA60B5: VCallAd Control_ID_FiltroMsk
  loc_AA60B8: FStAdFunc var_A8
  loc_AA60BB: FLdPr var_A8
  loc_AA60BE: LateIdSt
  loc_AA60C3: FFree1Ad var_A8
  loc_AA60C6: Branch loc_AA60EC
  loc_AA60C9: FLdI2 var_AC
  loc_AA60CC: LitI2_Byte 3
  loc_AA60CE: EqI2
  loc_AA60CF: BranchF loc_AA60EC
  loc_AA60D2: LitVarStr var_94, vbNullString
  loc_AA60D7: PopAdLdVar
  loc_AA60D8: FLdPr Me
  loc_AA60DB: VCallAd Control_ID_FiltroMsk
  loc_AA60DE: FStAdFunc var_A8
  loc_AA60E1: FLdPr var_A8
  loc_AA60E4: LateIdSt
  loc_AA60E9: FFree1Ad var_A8
  loc_AA60EC: ExitProcHresult
  loc_AA60ED: DOC
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D62C4
  'Data Table: 4A47D8
  loc_9D62AC: FLdPr Me
  loc_9D62AF: VCallAd Control_ID_dgdABMS
  loc_9D62B2: FStAdFunc var_88
  loc_9D62B5: FLdRfVar var_88
  loc_9D62B8: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D62BD: FFree1Ad var_88
  loc_9D62C0: ExitProcHresult
  loc_9D62C1: BranchFVar
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D6310
  'Data Table: 4A47D8
  loc_9D62F8: FLdPr Me
  loc_9D62FB: VCallAd Control_ID_dgdABMS
  loc_9D62FE: FStAdFunc var_88
  loc_9D6301: FLdRfVar var_88
  loc_9D6304: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D6309: FFree1Ad var_88
  loc_9D630C: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66C74
  'Data Table: 4A47D8
  loc_A66C18: FLdRfVar var_B4
  loc_A66C1B: FLdRfVar var_B0
  loc_A66C1E: FLdI2 ColIndex
  loc_A66C21: CVarI2 var_A8
  loc_A66C24: PopAdLdVar
  loc_A66C25: FLdPr Me
  loc_A66C28: VCallAd Control_ID_dgdABMS
  loc_A66C2B: FStAdFunc var_88
  loc_A66C2E: FLdPr var_88
  loc_A66C31: LateIdLdVar var_98 DispID_105 0
  loc_A66C38: CastAdVar Me
  loc_A66C3C: FStAdFunc var_AC
  loc_A66C3F: FLdPr var_AC
  loc_A66C42: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66C47: FLdPr var_B0
  loc_A66C4A:  = Me.DataField
  loc_A66C4F: FLdZeroAd var_B4
  loc_A66C52: PopTmpLdAdStr
  loc_A66C56: FLdPr Me
  loc_A66C59: MemLdRfVar from_stack_1.global_52
  loc_A66C5C: NewIfNullPr clsdifunto
  loc_A66C5F: Call clsdifunto.Sort(from_stack_1v)
  loc_A66C64: FFree1Str var_B8
  loc_A66C67: FFreeAd var_88 = "": var_AC = ""
  loc_A66C70: FFree1Var var_98 = ""
  loc_A66C73: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() 'AADB9C
  'Data Table: 4A47D8
  loc_AADAC8: FLdRfVar var_8C
  loc_AADACB: FLdPr Me
  loc_AADACE: VCallAd Control_ID_CucuPersTxt
  loc_AADAD1: FStAdFunc var_88
  loc_AADAD4: FLdPr var_88
  loc_AADAD7:  = Me.Text
  loc_AADADC: ILdRf var_8C
  loc_AADADF: LitStr vbNullString
  loc_AADAE2: NeStr
  loc_AADAE4: FFree1Str var_8C
  loc_AADAE7: FFree1Ad var_88
  loc_AADAEA: BranchF loc_AADB22
  loc_AADAED: FLdRfVar var_8C
  loc_AADAF0: FLdPr Me
  loc_AADAF3: VCallAd Control_ID_CucuPersTxt
  loc_AADAF6: FStAdFunc var_88
  loc_AADAF9: FLdPr var_88
  loc_AADAFC:  = Me.Text
  loc_AADB01: ILdRf var_8C
  loc_AADB04: ImpAdLdRf MemVar_D94A10
  loc_AADB07: NewIfNullPr dlgCreaPersona
  loc_AADB0A: VCallAd Control_ID_CucuPersTxt
  loc_AADB0D: FStAdFunc var_90
  loc_AADB10: FLdPr var_90
  loc_AADB13: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AADB18: FFree1Str var_8C
  loc_AADB1B: FFreeAd var_88 = ""
  loc_AADB22: LitI2_Byte &HFF
  loc_AADB24: ImpAdLdRf MemVar_D94A10
  loc_AADB27: NewIfNullPr dlgCreaPersona
  loc_AADB2A: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_AADB2F: LitVar_Missing var_B0
  loc_AADB32: PopAdLdVar
  loc_AADB33: LitVarI4
  loc_AADB3B: PopAdLdVar
  loc_AADB3C: ImpAdLdRf MemVar_D94A10
  loc_AADB3F: NewIfNullPr dlgCreaPersona
  loc_AADB42: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_AADB47: FLdRfVar var_B2
  loc_AADB4A: ImpAdLdRf MemVar_D94A10
  loc_AADB4D: NewIfNullPr dlgCreaPersona
  loc_AADB50: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_AADB55: FLdI2 var_B2
  loc_AADB58: LitI2_Byte &HFF
  loc_AADB5A: EqI2
  loc_AADB5B: BranchF loc_AADB9A
  loc_AADB5E: FLdRfVar var_8C
  loc_AADB61: ImpAdLdRf MemVar_D94A10
  loc_AADB64: NewIfNullPr dlgCreaPersona
  loc_AADB67: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_AADB6C: ILdRf var_8C
  loc_AADB6F: FLdPr Me
  loc_AADB72: VCallAd Control_ID_CoprPersTxt
  loc_AADB75: FStAdFunc var_88
  loc_AADB78: FLdPr var_88
  loc_AADB7B: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AADB80: FFree1Str var_8C
  loc_AADB83: FFree1Ad var_88
  loc_AADB86: FLdPr Me
  loc_AADB89: VCallAd Control_ID_CucuPersTxt
  loc_AADB8C: FStAdFunc var_88
  loc_AADB8F: FLdPr var_88
  loc_AADB92: Me.SetFocus
  loc_AADB97: FFree1Ad var_88
  loc_AADB9A: ExitProcHresult
End Sub

Private Sub FeesTrdiMsk_UnknownEvent_0 '9C4B68
  'Data Table: 4A47D8
  loc_9C4B54: FLdPr Me
  loc_9C4B57: VCallAd Control_ID_FeesTrdiMsk
  loc_9C4B5A: CVarAd
  loc_9C4B5E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C4B63: FFree1Var var_94 = ""
  loc_9C4B66: ExitProcHresult
End Sub

Private Function FeesTrdiMsk_UnknownEvent_8(arg_C) 'ABBF0C
  'Data Table: 4A47D8
  loc_ABBE1C: FLdRfVar var_8A
  loc_ABBE1F: FLdPr Me
  loc_ABBE22: VCallAd Control_ID_cmdCancelar
  loc_ABBE25: FStAdFunc var_88
  loc_ABBE28: FLdPr var_88
  loc_ABBE2B:  = Me.Value
  loc_ABBE30: FLdI2 var_8A
  loc_ABBE33: NotI4
  loc_ABBE34: FLdPr Me
  loc_ABBE37: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBE3A: FStAdFunc var_90
  loc_ABBE3D: FLdPr var_90
  loc_ABBE40: LateIdLdVar var_A0 DispID_13 -32767
  loc_ABBE47: CBoolVar
  loc_ABBE49: AndI4
  loc_ABBE4A: FFreeAd var_88 = ""
  loc_ABBE51: FFree1Var var_A0 = ""
  loc_ABBE54: BranchF loc_ABBF09
  loc_ABBE57: LitVarStr var_B0, vbNullString
  loc_ABBE5C: PopAdLdVar
  loc_ABBE5D: FLdPr Me
  loc_ABBE60: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBE63: FStAdFunc var_88
  loc_ABBE66: FLdPr var_88
  loc_ABBE69: LateIdSt
  loc_ABBE6E: FFree1Ad var_88
  loc_ABBE71: FLdPr Me
  loc_ABBE74: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBE77: FStAdFunc var_88
  loc_ABBE7A: FLdPr var_88
  loc_ABBE7D: LateIdLdVar var_A0 DispID_22 0
  loc_ABBE84: CStrVarTmp
  loc_ABBE85: FStStrNoPop var_C4
  loc_ABBE88: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_ABBE8D: FStStrNoPop var_C8
  loc_ABBE90: FLdPr Me
  loc_ABBE93: MemStStrCopy
  loc_ABBE97: FFreeStr var_C4 = ""
  loc_ABBE9E: FFree1Ad var_88
  loc_ABBEA1: FFree1Var var_A0 = ""
  loc_ABBEA4: LitVarStr var_B0, "##/##/####"
  loc_ABBEA9: PopAdLdVar
  loc_ABBEAA: FLdPr Me
  loc_ABBEAD: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBEB0: FStAdFunc var_88
  loc_ABBEB3: FLdPr var_88
  loc_ABBEB6: LateIdSt
  loc_ABBEBB: FFree1Ad var_88
  loc_ABBEBE: LitVarI2 var_B0, 10
  loc_ABBEC3: PopAdLdVar
  loc_ABBEC4: FLdPr Me
  loc_ABBEC7: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBECA: FStAdFunc var_88
  loc_ABBECD: FLdPr var_88
  loc_ABBED0: LateIdSt
  loc_ABBED5: FFree1Ad var_88
  loc_ABBED8: FLdPr Me
  loc_ABBEDB: MemLdStr global_60
  loc_ABBEDE: LitStr vbNullString
  loc_ABBEE1: NeStr
  loc_ABBEE3: BranchF loc_ABBF09
  loc_ABBEE6: FLdPr Me
  loc_ABBEE9: MemLdStr global_60
  loc_ABBEEC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABBEF1: FLdPr Me
  loc_ABBEF4: VCallAd Control_ID_FeesTrdiMsk
  loc_ABBEF7: CVarAd
  loc_ABBEFB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABBF00: FFree1Var var_A0 = ""
  loc_ABBF03: LitI2_Byte &HFF
  loc_ABBF05: IStI2 arg_C
  loc_ABBF08: ExitProcHresult
  loc_ABBF09: ExitProcHresult
End Function

Private Sub FeesTrdiMsk_KeyPress(KeyAscii As Integer) 'A24500
  'Data Table: 4A47D8
  loc_A244B8: ILdI2 KeyAscii
  loc_A244BB: CI4UI1
  loc_A244BC: LitI4 &H20
  loc_A244C1: EqI4
  loc_A244C2: BranchF loc_A244FF
  loc_A244C5: LitVar_Missing var_A4
  loc_A244C8: PopAdLdVar
  loc_A244C9: LitVarI4
  loc_A244D1: PopAdLdVar
  loc_A244D2: ImpAdLdRf MemVar_D930A4
  loc_A244D5: NewIfNullPr frmCalendario
  loc_A244D8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A244DD: ImpAdLdRf MemVar_D93028
  loc_A244E0: CDargRef
  loc_A244E4: FLdPr Me
  loc_A244E7: VCallAd Control_ID_FeesTrdiMsk
  loc_A244EA: FStAdFunc var_A8
  loc_A244ED: FLdPr var_A8
  loc_A244F0: LateIdSt
  loc_A244F5: FFree1Ad var_A8
  loc_A244F8: LitStr vbNullString
  loc_A244FB: ImpAdStStrCopy MemVar_D93028
  loc_A244FF: ExitProcHresult
End Sub

Private Sub ExpeTrdiTxt_GotFocus() '9C4DF0
  'Data Table: 4A47D8
  loc_9C4DDC: FLdPr Me
  loc_9C4DDF: VCallAd Control_ID_ExpeTrdiTxt
  loc_9C4DE2: CVarAd
  loc_9C4DE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4DEB: FFree1Var var_94 = ""
  loc_9C4DEE: ExitProcHresult
End Sub

Private Sub ObseTrdiTxt_GotFocus() '9C4AD8
  'Data Table: 4A47D8
  loc_9C4AC4: FLdPr Me
  loc_9C4AC7: VCallAd Control_ID_ObseTrdiTxt
  loc_9C4ACA: CVarAd
  loc_9C4ACE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4AD3: FFree1Var var_94 = ""
  loc_9C4AD6: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AE353C
  'Data Table: 4A47D8
  loc_AE33E0: LitI2_Byte 0
  loc_AE33E2: FLdPr Me
  loc_AE33E5: MemStI2 global_56
  loc_AE33E8: LitI2_Byte 0
  loc_AE33EA: ILdRf Me
  loc_AE33ED: CastAd
  loc_AE33F0: FStAdFunc var_88
  loc_AE33F3: FLdRfVar var_88
  loc_AE33F6: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AE33FB: FFree1Ad var_88
  loc_AE33FE: LitI4 0
  loc_AE3403: LitI4 0
  loc_AE3408: FLdRfVar var_8C
  loc_AE340B: Redim
  loc_AE3415: FLdPr Me
  loc_AE3418: VCallAd Control_ID_dgdABMS
  loc_AE341B: CVarAd
  loc_AE341F: ParmAry1St
  loc_AE3425: FLdRfVar var_8C
  loc_AE3428: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE342D: FLdRfVar var_8C
  loc_AE3430: Erase
  loc_AE3431: FLdPr Me
  loc_AE3434: MemLdRfVar from_stack_1.global_52
  loc_AE3437: NewIfNullAd
  loc_AE343A: FStAd var_A0 
  loc_AE343E: FLdRfVar var_A0
  loc_AE3441: CVarRef
  loc_AE3446: ILdRf Me
  loc_AE3449: CastAd
  loc_AE344C: FStAdFunc var_88
  loc_AE344F: FLdRfVar var_88
  loc_AE3452: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AE3457: ILdRf var_A0
  loc_AE345A: CastAd
  loc_AE345D: FLdPr Me
  loc_AE3460: MemStAdFunc
  loc_AE3464: FFreeAd var_88 = ""
  loc_AE346B: ILdRf Me
  loc_AE346E: CastAd
  loc_AE3471: FStAdFunc var_88
  loc_AE3474: FLdRfVar var_88
  loc_AE3477: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AE347C: FFree1Ad var_88
  loc_AE347F: LitI4 0
  loc_AE3484: LitI4 1
  loc_AE3489: FLdRfVar var_8C
  loc_AE348C: Redim
  loc_AE3496: FLdPr Me
  loc_AE3499: VCallAd Control_ID_FiltroCbo
  loc_AE349C: CVarAd
  loc_AE34A0: ParmAry1St
  loc_AE34A6: FLdPr Me
  loc_AE34A9: VCallAd Control_ID_FiltroMsk
  loc_AE34AC: CVarAd
  loc_AE34B0: ParmAry1St
  loc_AE34B6: FLdRfVar var_8C
  loc_AE34B9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE34BE: FLdRfVar var_8C
  loc_AE34C1: Erase
  loc_AE34C2: LitStr vbNullString
  loc_AE34C5: FLdPr Me
  loc_AE34C8: VCallAd Control_ID_CucuPersTxt
  loc_AE34CB: FStAdFunc var_88
  loc_AE34CE: FLdPr var_88
  loc_AE34D1: Me.Text = from_stack_1
  loc_AE34D6: FFree1Ad var_88
  loc_AE34D9: LitStr vbNullString
  loc_AE34DC: FLdPr Me
  loc_AE34DF: VCallAd Control_ID_DetaApeNomLbl
  loc_AE34E2: FStAdFunc var_88
  loc_AE34E5: FLdPr var_88
  loc_AE34E8: Me.Caption = from_stack_1
  loc_AE34ED: FFree1Ad var_88
  loc_AE34F0: LitVarStr var_B0, vbNullString
  loc_AE34F5: PopAdLdVar
  loc_AE34F6: FLdPr Me
  loc_AE34F9: VCallAd Control_ID_FeesTrdiMsk
  loc_AE34FC: FStAdFunc var_88
  loc_AE34FF: FLdPr var_88
  loc_AE3502: LateIdSt
  loc_AE3507: FFree1Ad var_88
  loc_AE350A: LitStr vbNullString
  loc_AE350D: FLdPr Me
  loc_AE3510: VCallAd Control_ID_ExpeTrdiTxt
  loc_AE3513: FStAdFunc var_88
  loc_AE3516: FLdPr var_88
  loc_AE3519: Me.Text = from_stack_1
  loc_AE351E: FFree1Ad var_88
  loc_AE3521: LitStr vbNullString
  loc_AE3524: FLdPr Me
  loc_AE3527: VCallAd Control_ID_ObseTrdiTxt
  loc_AE352A: FStAdFunc var_88
  loc_AE352D: FLdPr var_88
  loc_AE3530: Me.Text = from_stack_1
  loc_AE3535: FFree1Ad var_88
  loc_AE3538: ExitProcHresult
  loc_AE3539: CStr2Ansi
  loc_AE353A: DOC
End Sub

Private Sub Form_Load() 'ADE43C
  'Data Table: 4A47D8
  loc_ADE2EC: LitI2_Byte 0
  loc_ADE2EE: CR8I2
  loc_ADE2EF: PopFPR4
  loc_ADE2F0: FLdPr Me
  loc_ADE2F3: Me.Left = from_stack_1s
  loc_ADE2F8: LitI2_Byte 0
  loc_ADE2FA: CR8I2
  loc_ADE2FB: PopFPR4
  loc_ADE2FC: FLdPr Me
  loc_ADE2FF: Me.Top = from_stack_1s
  loc_ADE304: Call Proc_235_21_ADA418()
  loc_ADE309: LitI4 0
  loc_ADE30E: LitI4 1
  loc_ADE313: FLdRfVar var_88
  loc_ADE316: Redim
  loc_ADE320: FLdPr Me
  loc_ADE323: MemLdRfVar from_stack_1.global_52
  loc_ADE326: NewIfNullAd
  loc_ADE329: FStAd var_8C 
  loc_ADE32D: FLdRfVar var_8C
  loc_ADE330: CVarRef
  loc_ADE335: ParmAry1St
  loc_ADE33B: FLdPr Me
  loc_ADE33E: VCallAd Control_ID_dgdABMS
  loc_ADE341: CVarAd
  loc_ADE345: ParmAry1St
  loc_ADE34B: FLdRfVar var_88
  loc_ADE34E: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_ADE353: ILdRf var_8C
  loc_ADE356: CastAd
  loc_ADE359: FLdPr Me
  loc_ADE35C: MemStAdFunc
  loc_ADE360: FLdRfVar var_88
  loc_ADE363: Erase
  loc_ADE364: FFree1Ad var_8C
  loc_ADE367: Call cmdCancelar_Click()
  loc_ADE36C: LitVarI2 var_9C, 0
  loc_ADE371: PopAdLdVar
  loc_ADE372: LitStr "Cuenta"
  loc_ADE375: FLdPr Me
  loc_ADE378: VCallAd Control_ID_FiltroCbo
  loc_ADE37B: FStAdFunc var_8C
  loc_ADE37E: FLdPr var_8C
  loc_ADE381: Me.AddItem from_stack_1, from_stack_2
  loc_ADE386: FFree1Ad var_8C
  loc_ADE389: LitVarI2 var_9C, 1
  loc_ADE38E: PopAdLdVar
  loc_ADE38F: LitStr "Apellido y Nombre del Titular"
  loc_ADE392: FLdPr Me
  loc_ADE395: VCallAd Control_ID_FiltroCbo
  loc_ADE398: FStAdFunc var_8C
  loc_ADE39B: FLdPr var_8C
  loc_ADE39E: Me.AddItem from_stack_1, from_stack_2
  loc_ADE3A3: FFree1Ad var_8C
  loc_ADE3A6: LitVarI2 var_9C, 2
  loc_ADE3AB: PopAdLdVar
  loc_ADE3AC: LitStr "Tipo de Sepultura (Código)"
  loc_ADE3AF: FLdPr Me
  loc_ADE3B2: VCallAd Control_ID_FiltroCbo
  loc_ADE3B5: FStAdFunc var_8C
  loc_ADE3B8: FLdPr var_8C
  loc_ADE3BB: Me.AddItem from_stack_1, from_stack_2
  loc_ADE3C0: FFree1Ad var_8C
  loc_ADE3C3: LitVarI2 var_9C, 3
  loc_ADE3C8: PopAdLdVar
  loc_ADE3C9: LitStr "Apellido y Nombre del Difunto"
  loc_ADE3CC: FLdPr Me
  loc_ADE3CF: VCallAd Control_ID_FiltroCbo
  loc_ADE3D2: FStAdFunc var_8C
  loc_ADE3D5: FLdPr var_8C
  loc_ADE3D8: Me.AddItem from_stack_1, from_stack_2
  loc_ADE3DD: FFree1Ad var_8C
  loc_ADE3E0: LitI2_Byte 0
  loc_ADE3E2: FLdPr Me
  loc_ADE3E5: VCallAd Control_ID_FiltroCbo
  loc_ADE3E8: FStAdFunc var_8C
  loc_ADE3EB: FLdPr var_8C
  loc_ADE3EE: Me.ListIndex = from_stack_1
  loc_ADE3F3: FFree1Ad var_8C
  loc_ADE3F6: LitI4 0
  loc_ADE3FB: LitI4 1
  loc_ADE400: FLdRfVar var_88
  loc_ADE403: Redim
  loc_ADE40D: FLdPr Me
  loc_ADE410: VCallAd Control_ID_FiltroCbo
  loc_ADE413: CVarAd
  loc_ADE417: ParmAry1St
  loc_ADE41D: FLdPr Me
  loc_ADE420: VCallAd Control_ID_FiltroMsk
  loc_ADE423: CVarAd
  loc_ADE427: ParmAry1St
  loc_ADE42D: FLdRfVar var_88
  loc_ADE430: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ADE435: FLdRfVar var_88
  loc_ADE438: Erase
  loc_ADE439: ExitProcHresult
  loc_ADE43A: CVarStr arg_6000
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D6570
  'Data Table: 4A47D8
  loc_9D6558: ILdI2 KeyAscii
  loc_9D655B: LitI2_Byte &HD
  loc_9D655D: EqI2
  loc_9D655E: BranchF loc_9D656F
  loc_9D6561: LitVar_TRUE var_A4
  loc_9D6564: LitStr "{Tab}"
  loc_9D6567: ImpAdCallFPR4 SendKeys , 
  loc_9D656C: FFree1Var var_A4 = ""
  loc_9D656F: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D65BC
  'Data Table: 4A47D8
  loc_9D65A4: ILdI2 KeyCode
  loc_9D65A7: ILdRf Me
  loc_9D65AA: CastAd
  loc_9D65AD: FStAdFunc var_88
  loc_9D65B0: FLdRfVar var_88
  loc_9D65B3: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D65B8: FFree1Ad var_88
  loc_9D65BB: ExitProcHresult
End Sub

Private Function Proc_235_21_ADA418() 'ADA418
  'Data Table: 4A47D8
  loc_ADA300: LitI4 &HB
  loc_ADA305: CI2I4
  loc_ADA306: FLdPr Me
  loc_ADA309: Me.MousePointer = from_stack_1
  loc_ADA30E: FLdPr Me
  loc_ADA311: VCallAd Control_ID_FiltroMsk
  loc_ADA314: FStAdFunc var_88
  loc_ADA317: FLdPr var_88
  loc_ADA31A: LateIdLdVar var_98 DispID_22 0
  loc_ADA321: PopAd
  loc_ADA323: FLdRfVar var_A2
  loc_ADA326: FLdPr Me
  loc_ADA329: VCallAd Control_ID_FiltroCbo
  loc_ADA32C: FStAdFunc var_A0
  loc_ADA32F: FLdPr var_A0
  loc_ADA332:  = Me.ListIndex
  loc_ADA337: FLdRfVar var_AA
  loc_ADA33A: FLdPr Me
  loc_ADA33D: VCallAd Control_ID_FiltroCbo
  loc_ADA340: FStAdFunc var_A8
  loc_ADA343: FLdPr var_A8
  loc_ADA346:  = Me.ListIndex
  loc_ADA34B: FLdPr Me
  loc_ADA34E: VCallAd Control_ID_FiltroMsk
  loc_ADA351: FStAdFunc var_B0
  loc_ADA354: FLdPr var_B0
  loc_ADA357: LateIdLdVar var_C0 DispID_15 0
  loc_ADA35E: PopAd
  loc_ADA360: FLdPr Me
  loc_ADA363: VCallAd Control_ID_FiltroMsk
  loc_ADA366: FStAdFunc var_C4
  loc_ADA369: FLdPr var_C4
  loc_ADA36C: LateIdLdVar var_D4 DispID_22 0
  loc_ADA373: CStrVarTmp
  loc_ADA374: CVarStr var_104
  loc_ADA377: FLdRfVar var_C0
  loc_ADA37A: CStrVarTmp
  loc_ADA37B: CVarStr var_F4
  loc_ADA37E: FLdI2 var_A2
  loc_ADA381: LitI2_Byte 3
  loc_ADA383: EqI2
  loc_ADA384: FLdI2 var_AA
  loc_ADA387: LitI2_Byte 4
  loc_ADA389: EqI2
  loc_ADA38A: OrI4
  loc_ADA38B: CVarBoolI2 var_E4
  loc_ADA38F: FLdRfVar var_114
  loc_ADA392: ImpAdCallFPR4  = IIf(, , )
  loc_ADA397: LitVarStr var_134, vbNullString
  loc_ADA39C: FStVarCopyObj var_144
  loc_ADA39F: FLdRfVar var_144
  loc_ADA3A2: FLdRfVar var_114
  loc_ADA3A5: FLdRfVar var_98
  loc_ADA3A8: CStrVarTmp
  loc_ADA3A9: FStStrNoPop var_9C
  loc_ADA3AC: LitStr vbNullString
  loc_ADA3AF: NeStr
  loc_ADA3B1: CVarBoolI2 var_124
  loc_ADA3B5: FLdRfVar var_154
  loc_ADA3B8: ImpAdCallFPR4  = IIf(, , )
  loc_ADA3BD: FLdPr Me
  loc_ADA3C0: VCallAd Control_ID_FiltroCbo
  loc_ADA3C3: FStAdFuncNoPop
  loc_ADA3C6: FLdRfVar var_154
  loc_ADA3C9: CStrVarVal var_158
  loc_ADA3CD: FLdPr Me
  loc_ADA3D0: MemLdRfVar from_stack_1.global_52
  loc_ADA3D3: NewIfNullPr clsdifunto
  loc_ADA3D6: Call clsdifunto.sSelect(from_stack_1v, from_stack_2v)
  loc_ADA3DB: FFreeStr var_9C = ""
  loc_ADA3E2: FFreeAd var_88 = "": var_A0 = "": var_A8 = "": var_B0 = "": var_C4 = ""
  loc_ADA3F1: FFreeVar var_98 = "": var_C0 = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = "": var_124 = "": var_114 = "": var_144 = ""
  loc_ADA408: LitI4 0
  loc_ADA40D: CI2I4
  loc_ADA40E: FLdPr Me
  loc_ADA411: Me.MousePointer = from_stack_1
  loc_ADA416: ExitProcHresult
End Function
