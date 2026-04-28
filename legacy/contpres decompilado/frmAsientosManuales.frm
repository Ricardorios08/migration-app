VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAsientosManuales
  Caption = "Asientos Manuales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAsientosManuales.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15270
  ClientHeight = 9600
  Begin VB.Frame Frame1
    Caption = " Asientos Manuales "
    Left = 120
    Top = 720
    Width = 10575
    Height = 3495
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox NoleAsieTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1920
      Width = 2295
      Height = 420
      TabIndex = 9
      MaxLength = 15
      DataField = "NormAuto"
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
    Begin VB.TextBox DetaAsieTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1440
      Width = 7935
      Height = 360
      TabIndex = 7
      MaxLength = 100
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
    Begin VB.TextBox MinuAsieTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 2520
      Width = 7935
      Height = 735
      TabIndex = 11
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 500
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
    Begin MSMask.MaskEdBox CodiTiasMsk
      Left = 1920
      Top = 960
      Width = 495
      Height = 360
      TabIndex = 4
      OleObjectBlob = "frmAsientosManuales.frx":08CA
    End
    Begin MSMask.MaskEdBox FechAsieMsk
      Left = 1920
      Top = 480
      Width = 1320
      Height = 360
      TabIndex = 2
      OleObjectBlob = "frmAsientosManuales.frx":0956
    End
    Begin VB.Label Label4
      Caption = "Norma Legal:"
      Left = 480
      Top = 1920
      Width = 1410
      Height = 300
      TabIndex = 8
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
      Caption = "Fecha:"
      Left = 1080
      Top = 480
      Width = 735
      Height = 300
      TabIndex = 1
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
      Caption = "Tipo de Asiento:"
      Left = 120
      Top = 960
      Width = 1710
      Height = 300
      TabIndex = 3
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 1050
      Top = 1440
      Width = 885
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
    Begin VB.Label Label5
      Caption = "Minuta:"
      Left = 1050
      Top = 2520
      Width = 780
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
    Begin VB.Label DetaTiasLbl
      Left = 2520
      Top = 960
      Width = 7215
      Height = 375
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
  End
  Begin MSFlexGridLib.MSFlexGrid DetaAsieFlex
    Left = 120
    Top = 4320
    Width = 10575
    Height = 3495
    TabIndex = 12
    OleObjectBlob = "frmAsientosManuales.frx":09F2
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAsientosManuales.frx":0ADE
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15270
    Height = 660
    TabIndex = 16
    OleObjectBlob = "frmAsientosManuales.frx":865C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 17
      TabStop = 0   'False
      Picture = "frmAsientosManuales.frx":8BB8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label TotaHaberLbl
    ForeColor = &HC00000&
    Left = 8760
    Top = 7920
    Width = 1920
    Height = 360
    Enabled = 0   'False
    TabIndex = 15
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
  Begin VB.Label TotaDebeLbl
    ForeColor = &HC00000&
    Left = 6480
    Top = 7920
    Width = 1920
    Height = 360
    Enabled = 0   'False
    TabIndex = 14
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
  Begin VB.Label Label6
    Caption = "Totales:"
    Left = 5400
    Top = 7920
    Width = 855
    Height = 360
    TabIndex = 13
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

Attribute VB_Name = "frmAsientosManuales"


Private Sub DetaAsieTxt_GotFocus() '9515D0
  'Data Table: 464380
  loc_9515BC: FLdPr Me
  loc_9515BF: VCallAd Control_ID_DetaAsieTxt
  loc_9515C2: CVarAd
  loc_9515C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9515CB: FFree1Var var_94 = ""
  loc_9515CE: ExitProcHresult
End Sub

Private Sub DetaAsieTxt_Validate(Cancel As Boolean) '9BF7B0
  'Data Table: 464380
  loc_9BF6F4: FLdRfVar var_8A
  loc_9BF6F7: FLdPr Me
  loc_9BF6FA: VCallAd Control_ID_DetaAsieTxt
  loc_9BF6FD: FStAdFunc var_88
  loc_9BF700: FLdPr var_88
  loc_9BF703:  = Me.Enabled
  loc_9BF708: FLdI2 var_8A
  loc_9BF70B: FLdRfVar var_92
  loc_9BF70E: FLdPr Me
  loc_9BF711: VCallAd Control_ID_cmdCancelar
  loc_9BF714: FStAdFunc var_90
  loc_9BF717: FLdPr var_90
  loc_9BF71A:  = Me.Value
  loc_9BF71F: FLdI2 var_92
  loc_9BF722: NotI4
  loc_9BF723: AndI4
  loc_9BF724: FFreeAd var_88 = ""
  loc_9BF72B: BranchF loc_9BF7AC
  loc_9BF72E: FLdRfVar var_98
  loc_9BF731: FLdPr Me
  loc_9BF734: VCallAd Control_ID_DetaAsieTxt
  loc_9BF737: FStAdFunc var_88
  loc_9BF73A: FLdPr var_88
  loc_9BF73D:  = Me.Text
  loc_9BF742: LitI2_Byte 0
  loc_9BF744: PopTmpLdAd2 var_9A
  loc_9BF747: LitI2_Byte 0
  loc_9BF749: PopTmpLdAd2 var_92
  loc_9BF74C: LitI2_Byte 0
  loc_9BF74E: PopTmpLdAd2 var_8A
  loc_9BF751: ILdRf var_98
  loc_9BF754: LitStr "Detalle de Asiento"
  loc_9BF757: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BF75C: FStStrNoPop var_A0
  loc_9BF75F: FLdPr Me
  loc_9BF762: MemStStrCopy
  loc_9BF766: FFreeStr var_98 = ""
  loc_9BF76D: FFree1Ad var_88
  loc_9BF770: FLdPr Me
  loc_9BF773: VCallAd Control_ID_DetaAsieTxt
  loc_9BF776: FStAdFunc var_A8
  loc_9BF779: LitNothing
  loc_9BF77B: CastAd
  loc_9BF77E: FStAdFunc var_A4
  loc_9BF781: FLdRfVar var_A4
  loc_9BF784: FLdZeroAd var_A8
  loc_9BF787: FStAdFuncNoPop
  loc_9BF78A: CastAd
  loc_9BF78D: FStAdFunc var_90
  loc_9BF790: FLdRfVar var_90
  loc_9BF793: FLdPr Me
  loc_9BF796: MemLdRfVar from_stack_1.global_60
  loc_9BF799: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BF79E: IStI2 Cancel
  loc_9BF7A1: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BF7AC: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'AE94A4
  'Data Table: 464380
  loc_AE8DC0: ILdRf Button
  loc_AE8DC3: FStAd var_88 
  loc_AE8DC7: FLdRfVar var_8C
  loc_AE8DCA: FLdPr var_88
  loc_AE8DCD:  = Me.Key
  loc_AE8DD2: FLdZeroAd var_8C
  loc_AE8DD5: FStStr var_90
  loc_AE8DD8: ILdRf var_90
  loc_AE8DDB: LitStr "btnCrear"
  loc_AE8DDE: EqStr
  loc_AE8DE0: BranchF loc_AE8EC3
  loc_AE8DE3: LitI2_Byte 1
  loc_AE8DE5: FLdPr Me
  loc_AE8DE8: MemStUI1
  loc_AE8DEC: ILdRf Me
  loc_AE8DEF: CastAd
  loc_AE8DF2: FStAdFunc var_94
  loc_AE8DF5: FLdRfVar var_94
  loc_AE8DF8: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_AE8DFD: FFree1Ad var_94
  loc_AE8E00: ILdRf Me
  loc_AE8E03: CastAd
  loc_AE8E06: FStAdFunc var_94
  loc_AE8E09: FLdRfVar var_94
  loc_AE8E0C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AE8E11: FFree1Ad var_94
  loc_AE8E14: ImpAdLdFPR8 MemVar_C3D04C
  loc_AE8E17: CStrDate
  loc_AE8E19: CVarStr var_A4
  loc_AE8E1C: PopAdLdVar
  loc_AE8E1D: FLdPr Me
  loc_AE8E20: VCallAd Control_ID_FechAsieMsk
  loc_AE8E23: FStAdFunc var_94
  loc_AE8E26: FLdPr var_94
  loc_AE8E29: LateIdSt
  loc_AE8E2E: FFree1Ad var_94
  loc_AE8E31: FFree1Var var_A4 = ""
  loc_AE8E34: LitI4 0
  loc_AE8E39: LitI4 0
  loc_AE8E3E: FLdRfVar var_B8
  loc_AE8E41: Redim
  loc_AE8E4B: FLdPr Me
  loc_AE8E4E: VCallAd Control_ID_DetaAsieFlex
  loc_AE8E51: CVarAd
  loc_AE8E55: ParmAry1St
  loc_AE8E5B: FLdRfVar var_B8
  loc_AE8E5E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_AE8E63: FLdRfVar var_B8
  loc_AE8E66: Erase
  loc_AE8E67: ILdRf Me
  loc_AE8E6A: CastAd
  loc_AE8E6D: FStAdFunc var_94
  loc_AE8E70: FLdRfVar var_94
  loc_AE8E73: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_AE8E78: FFree1Ad var_94
  loc_AE8E7B: LitI4 0
  loc_AE8E80: LitI4 0
  loc_AE8E85: FLdRfVar var_B8
  loc_AE8E88: Redim
  loc_AE8E92: FLdPr Me
  loc_AE8E95: VCallAd Control_ID_NoleAsieTxt
  loc_AE8E98: CVarAd
  loc_AE8E9C: ParmAry1St
  loc_AE8EA2: FLdRfVar var_B8
  loc_AE8EA5: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_AE8EAA: FLdRfVar var_B8
  loc_AE8EAD: Erase
  loc_AE8EAE: FLdPr Me
  loc_AE8EB1: VCallAd Control_ID_FechAsieMsk
  loc_AE8EB4: CVarAd
  loc_AE8EB8: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_AE8EBD: FFree1Var var_A4 = ""
  loc_AE8EC0: Branch loc_AE94A0
  loc_AE8EC3: ILdRf var_90
  loc_AE8EC6: LitStr "btnModificar"
  loc_AE8EC9: EqStr
  loc_AE8ECB: BranchF loc_AE8ED1
  loc_AE8ECE: Branch loc_AE94A0
  loc_AE8ED1: ILdRf var_90
  loc_AE8ED4: LitStr "btnEliminar"
  loc_AE8ED7: EqStr
  loc_AE8ED9: BranchF loc_AE8EDF
  loc_AE8EDC: Branch loc_AE94A0
  loc_AE8EDF: ILdRf var_90
  loc_AE8EE2: LitStr "btnGuardar"
  loc_AE8EE5: EqStr
  loc_AE8EE7: BranchF loc_AE93D4
  loc_AE8EEA: LitStr vbNullString
  loc_AE8EED: FLdPr Me
  loc_AE8EF0: MemStStrCopy
  loc_AE8EF4: LitI2_Byte 0
  loc_AE8EF6: PopTmpLdAd2 var_CC
  loc_AE8EF9: Call FechAsieMsk_UnknownEvent_8()
  loc_AE8EFE: FLdPr Me
  loc_AE8F01: MemLdStr global_60
  loc_AE8F04: LitStr vbNullString
  loc_AE8F07: NeStr
  loc_AE8F09: BranchF loc_AE8F0D
  loc_AE8F0C: ExitProcHresult
  loc_AE8F0D: LitI2_Byte 0
  loc_AE8F0F: PopTmpLdAd2 var_CC
  loc_AE8F12: Call CodiTiasMsk_UnknownEvent_8()
  loc_AE8F17: FLdPr Me
  loc_AE8F1A: MemLdStr global_60
  loc_AE8F1D: LitStr vbNullString
  loc_AE8F20: NeStr
  loc_AE8F22: BranchF loc_AE8F26
  loc_AE8F25: ExitProcHresult
  loc_AE8F26: LitI2_Byte 0
  loc_AE8F28: PopTmpLdAd2 var_CC
  loc_AE8F2B: Call DetaAsieTxt_Validate(from_stack_1v)
  loc_AE8F30: FLdPr Me
  loc_AE8F33: MemLdStr global_60
  loc_AE8F36: LitStr vbNullString
  loc_AE8F39: NeStr
  loc_AE8F3B: BranchF loc_AE8F3F
  loc_AE8F3E: ExitProcHresult
  loc_AE8F3F: LitI2_Byte 0
  loc_AE8F41: PopTmpLdAd2 var_CC
  loc_AE8F44: Call NoleAsieTxt_Validate(from_stack_1v)
  loc_AE8F49: FLdPr Me
  loc_AE8F4C: MemLdStr global_60
  loc_AE8F4F: LitStr vbNullString
  loc_AE8F52: NeStr
  loc_AE8F54: BranchF loc_AE8F58
  loc_AE8F57: ExitProcHresult
  loc_AE8F58: LitI2_Byte 0
  loc_AE8F5A: PopTmpLdAd2 var_CC
  loc_AE8F5D: Call MinuAsieTxt_Validate(from_stack_1v)
  loc_AE8F62: FLdPr Me
  loc_AE8F65: MemLdStr global_60
  loc_AE8F68: LitStr vbNullString
  loc_AE8F6B: NeStr
  loc_AE8F6D: BranchF loc_AE8F71
  loc_AE8F70: ExitProcHresult
  loc_AE8F71: LitI2_Byte 1
  loc_AE8F73: FLdPr Me
  loc_AE8F76: MemLdRfVar from_stack_1.global_80
  loc_AE8F79: FLdPr Me
  loc_AE8F7C: VCallAd Control_ID_DetaAsieFlex
  loc_AE8F7F: FStAdFunc var_94
  loc_AE8F82: FLdPr var_94
  loc_AE8F85: LateIdLdVar var_A4 DispID_4 0
  loc_AE8F8C: CI4Var
  loc_AE8F8E: LitI4 1
  loc_AE8F93: SubI4
  loc_AE8F94: CI2I4
  loc_AE8F95: FFree1Ad var_94
  loc_AE8F98: FFree1Var var_A4 = ""
  loc_AE8F9B: ForI2 var_D0
  loc_AE8FA1: FLdPr Me
  loc_AE8FA4: MemLdI2 global_80
  loc_AE8FA7: CI4UI1
  loc_AE8FA8: CVarI4
  loc_AE8FAC: PopAdLdVar
  loc_AE8FAD: LitVarI4
  loc_AE8FB5: PopAdLdVar
  loc_AE8FB6: FLdPr Me
  loc_AE8FB9: VCallAd Control_ID_DetaAsieFlex
  loc_AE8FBC: FStAdFunc var_94
  loc_AE8FBF: FLdPr var_94
  loc_AE8FC2: LateIdCallLdVar
  loc_AE8FCC: CStrVarTmp
  loc_AE8FCD: FStStrNoPop var_8C
  loc_AE8FD0: LitStr vbNullString
  loc_AE8FD3: EqStr
  loc_AE8FD5: FLdPr Me
  loc_AE8FD8: MemLdI2 global_80
  loc_AE8FDB: CI4UI1
  loc_AE8FDC: CVarI4
  loc_AE8FE0: PopAdLdVar
  loc_AE8FE1: LitVarI4
  loc_AE8FE9: PopAdLdVar
  loc_AE8FEA: FLdPr Me
  loc_AE8FED: VCallAd Control_ID_DetaAsieFlex
  loc_AE8FF0: FStAdFunc var_144
  loc_AE8FF3: FLdPr var_144
  loc_AE8FF6: LateIdCallLdVar
  loc_AE9000: CStrVarTmp
  loc_AE9001: FStStrNoPop var_158
  loc_AE9004: LitStr vbNullString
  loc_AE9007: EqStr
  loc_AE9009: OrI4
  loc_AE900A: FFreeStr var_8C = ""
  loc_AE9011: FFreeAd var_94 = ""
  loc_AE9018: FFreeVar var_A4 = ""
  loc_AE901F: BranchF loc_AE9054
  loc_AE9022: LitStr "Verifique la informacion ingresada."
  loc_AE9025: FLdPr Me
  loc_AE9028: MemStStrCopy
  loc_AE902C: LitI4 0
  loc_AE9031: FLdPr Me
  loc_AE9034: MemLdStr global_60
  loc_AE9037: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE903C: FLdPr Me
  loc_AE903F: VCallAd Control_ID_DetaAsieFlex
  loc_AE9042: FStAdFunc var_94
  loc_AE9045: FLdPr var_94
  loc_AE9048: LateIdCall
  loc_AE9050: FFree1Ad var_94
  loc_AE9053: ExitProcHresult
  loc_AE9054: FLdPr Me
  loc_AE9057: MemLdRfVar from_stack_1.global_80
  loc_AE905A: NextI2 var_D0, loc_AE8FA1
  loc_AE905F: FLdRfVar var_8C
  loc_AE9062: FLdPr Me
  loc_AE9065: VCallAd Control_ID_TotaDebeLbl
  loc_AE9068: FStAdFunc var_94
  loc_AE906B: FLdPr var_94
  loc_AE906E:  = Me.Caption
  loc_AE9073: ILdRf var_8C
  loc_AE9076: CR8Str
  loc_AE9078: LitI2_Byte 0
  loc_AE907A: CR8I2
  loc_AE907B: EqR4
  loc_AE907C: FFree1Str var_8C
  loc_AE907F: FFree1Ad var_94
  loc_AE9082: BranchF loc_AE90B7
  loc_AE9085: LitStr "Ingrese los Movimientos del Asiento."
  loc_AE9088: FLdPr Me
  loc_AE908B: MemStStrCopy
  loc_AE908F: LitI4 0
  loc_AE9094: FLdPr Me
  loc_AE9097: MemLdStr global_60
  loc_AE909A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE909F: FLdPr Me
  loc_AE90A2: VCallAd Control_ID_DetaAsieFlex
  loc_AE90A5: FStAdFunc var_94
  loc_AE90A8: FLdPr var_94
  loc_AE90AB: LateIdCall
  loc_AE90B3: FFree1Ad var_94
  loc_AE90B6: ExitProcHresult
  loc_AE90B7: FLdRfVar var_158
  loc_AE90BA: FLdPr Me
  loc_AE90BD: VCallAd Control_ID_TotaHaberLbl
  loc_AE90C0: FStAdFunc var_144
  loc_AE90C3: FLdPr var_144
  loc_AE90C6:  = Me.Caption
  loc_AE90CB: FLdRfVar var_8C
  loc_AE90CE: FLdPr Me
  loc_AE90D1: VCallAd Control_ID_TotaDebeLbl
  loc_AE90D4: FStAdFunc var_94
  loc_AE90D7: FLdPr var_94
  loc_AE90DA:  = Me.Caption
  loc_AE90DF: ILdRf var_8C
  loc_AE90E2: CR8Str
  loc_AE90E4: ILdRf var_158
  loc_AE90E7: CR8Str
  loc_AE90E9: NeR8
  loc_AE90EA: FFreeStr var_8C = ""
  loc_AE90F1: FFreeAd var_94 = ""
  loc_AE90F8: BranchF loc_AE912D
  loc_AE90FB: LitStr "El total del DEBE no coincide con el total del HABER"
  loc_AE90FE: FLdPr Me
  loc_AE9101: MemStStrCopy
  loc_AE9105: LitI4 0
  loc_AE910A: FLdPr Me
  loc_AE910D: MemLdStr global_60
  loc_AE9110: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE9115: FLdPr Me
  loc_AE9118: VCallAd Control_ID_DetaAsieFlex
  loc_AE911B: FStAdFunc var_94
  loc_AE911E: FLdPr var_94
  loc_AE9121: LateIdCall
  loc_AE9129: FFree1Ad var_94
  loc_AE912C: ExitProcHresult
  loc_AE912D: FLdPr Me
  loc_AE9130: VCallAd Control_ID_FechAsieMsk
  loc_AE9133: FStAdFunc var_94
  loc_AE9136: FLdPr var_94
  loc_AE9139: LateIdLdVar var_A4 DispID_15 0
  loc_AE9140: PopAd
  loc_AE9142: FLdPr Me
  loc_AE9145: VCallAd Control_ID_CodiTiasMsk
  loc_AE9148: FStAdFunc var_144
  loc_AE914B: FLdPr var_144
  loc_AE914E: LateIdLdVar var_154 DispID_22 0
  loc_AE9155: PopAd
  loc_AE9157: FLdRfVar var_8C
  loc_AE915A: FLdPr Me
  loc_AE915D: VCallAd Control_ID_DetaAsieTxt
  loc_AE9160: FStAdFunc var_15C
  loc_AE9163: FLdPr var_15C
  loc_AE9166:  = Me.Text
  loc_AE916B: FLdRfVar var_158
  loc_AE916E: FLdPr Me
  loc_AE9171: VCallAd Control_ID_MinuAsieTxt
  loc_AE9174: FStAdFunc var_160
  loc_AE9177: FLdPr var_160
  loc_AE917A:  = Me.Text
  loc_AE917F: FLdRfVar var_168
  loc_AE9182: FLdPr Me
  loc_AE9185: VCallAd Control_ID_NoleAsieTxt
  loc_AE9188: FStAdFunc var_164
  loc_AE918B: FLdPr var_164
  loc_AE918E:  = Me.Text
  loc_AE9193: FLdRfVar var_CC
  loc_AE9196: ILdRf var_168
  loc_AE9199: ILdRf var_158
  loc_AE919C: ILdRf var_8C
  loc_AE919F: FLdRfVar var_154
  loc_AE91A2: CStrVarTmp
  loc_AE91A3: FStStrNoPop var_170
  loc_AE91A6: CI2Str
  loc_AE91A8: FLdRfVar var_A4
  loc_AE91AB: CStrVarTmp
  loc_AE91AC: FStStrNoPop var_16C
  loc_AE91AF: ImpAdLdI2 MemVar_C3D064
  loc_AE91B2: FLdPr Me
  loc_AE91B5: MemLdRfVar from_stack_1.global_56
  loc_AE91B8: NewIfNullPr clsasiento
  loc_AE91BB: from_stack_7v = clsasiento.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_AE91C0: FLdI2 var_CC
  loc_AE91C3: FStI2 var_CA
  loc_AE91C6: FFreeStr var_16C = "": var_170 = "": var_8C = "": var_158 = ""
  loc_AE91D3: FFreeAd var_94 = "": var_144 = "": var_15C = "": var_160 = ""
  loc_AE91E0: FFreeVar var_A4 = ""
  loc_AE91E7: LitI2_Byte 1
  loc_AE91E9: FLdPr Me
  loc_AE91EC: MemLdRfVar from_stack_1.global_80
  loc_AE91EF: FLdPr Me
  loc_AE91F2: VCallAd Control_ID_DetaAsieFlex
  loc_AE91F5: FStAdFunc var_94
  loc_AE91F8: FLdPr var_94
  loc_AE91FB: LateIdLdVar var_A4 DispID_4 0
  loc_AE9202: CI4Var
  loc_AE9204: LitI4 1
  loc_AE9209: SubI4
  loc_AE920A: CI2I4
  loc_AE920B: FFree1Ad var_94
  loc_AE920E: FFree1Var var_A4 = ""
  loc_AE9211: ForI2 var_174
  loc_AE9217: FLdPr Me
  loc_AE921A: MemLdI2 global_80
  loc_AE921D: CI4UI1
  loc_AE921E: CVarI4
  loc_AE9222: PopAdLdVar
  loc_AE9223: LitVarI4
  loc_AE922B: PopAdLdVar
  loc_AE922C: FLdPr Me
  loc_AE922F: VCallAd Control_ID_DetaAsieFlex
  loc_AE9232: FStAdFunc var_94
  loc_AE9235: FLdPr var_94
  loc_AE9238: LateIdCallLdVar
  loc_AE9242: CStrVarTmp
  loc_AE9243: FStStrNoPop var_8C
  loc_AE9246: LitStr vbNullString
  loc_AE9249: NeStr
  loc_AE924B: FFree1Str var_8C
  loc_AE924E: FFree1Ad var_94
  loc_AE9251: FFree1Var var_A4 = ""
  loc_AE9254: BranchF loc_AE93B4
  loc_AE9257: FLdPr Me
  loc_AE925A: MemLdI2 global_80
  loc_AE925D: CI4UI1
  loc_AE925E: CVarI4
  loc_AE9262: PopAdLdVar
  loc_AE9263: LitVarI4
  loc_AE926B: PopAdLdVar
  loc_AE926C: FLdPr Me
  loc_AE926F: VCallAd Control_ID_DetaAsieFlex
  loc_AE9272: FStAdFunc var_94
  loc_AE9275: FLdPr var_94
  loc_AE9278: LateIdCallLdVar
  loc_AE9282: CStrVarTmp
  loc_AE9283: FStStrNoPop var_8C
  loc_AE9286: LitStr vbNullString
  loc_AE9289: NeStr
  loc_AE928B: FFree1Str var_8C
  loc_AE928E: FFree1Ad var_94
  loc_AE9291: FFree1Var var_A4 = ""
  loc_AE9294: BranchF loc_AE92DA
  loc_AE9297: FLdPr Me
  loc_AE929A: MemLdI2 global_80
  loc_AE929D: CI4UI1
  loc_AE929E: CVarI4
  loc_AE92A2: PopAdLdVar
  loc_AE92A3: LitVarI4
  loc_AE92AB: PopAdLdVar
  loc_AE92AC: FLdPr Me
  loc_AE92AF: VCallAd Control_ID_DetaAsieFlex
  loc_AE92B2: FStAdFunc var_94
  loc_AE92B5: FLdPr var_94
  loc_AE92B8: LateIdCallLdVar
  loc_AE92C2: CStrVarTmp
  loc_AE92C3: FStStrNoPop var_8C
  loc_AE92C6: CR8Str
  loc_AE92C8: FStFPR8 var_C0
  loc_AE92CB: FFree1Str var_8C
  loc_AE92CE: FFree1Ad var_94
  loc_AE92D1: FFree1Var var_A4 = ""
  loc_AE92D4: LitI2_Byte 0
  loc_AE92D6: CR8I2
  loc_AE92D7: FStFPR8 var_C8
  loc_AE92DA: FLdPr Me
  loc_AE92DD: MemLdI2 global_80
  loc_AE92E0: CI4UI1
  loc_AE92E1: CVarI4
  loc_AE92E5: PopAdLdVar
  loc_AE92E6: LitVarI4
  loc_AE92EE: PopAdLdVar
  loc_AE92EF: FLdPr Me
  loc_AE92F2: VCallAd Control_ID_DetaAsieFlex
  loc_AE92F5: FStAdFunc var_94
  loc_AE92F8: FLdPr var_94
  loc_AE92FB: LateIdCallLdVar
  loc_AE9305: CStrVarTmp
  loc_AE9306: FStStrNoPop var_8C
  loc_AE9309: LitStr vbNullString
  loc_AE930C: NeStr
  loc_AE930E: FFree1Str var_8C
  loc_AE9311: FFree1Ad var_94
  loc_AE9314: FFree1Var var_A4 = ""
  loc_AE9317: BranchF loc_AE935D
  loc_AE931A: FLdPr Me
  loc_AE931D: MemLdI2 global_80
  loc_AE9320: CI4UI1
  loc_AE9321: CVarI4
  loc_AE9325: PopAdLdVar
  loc_AE9326: LitVarI4
  loc_AE932E: PopAdLdVar
  loc_AE932F: FLdPr Me
  loc_AE9332: VCallAd Control_ID_DetaAsieFlex
  loc_AE9335: FStAdFunc var_94
  loc_AE9338: FLdPr var_94
  loc_AE933B: LateIdCallLdVar
  loc_AE9345: CStrVarTmp
  loc_AE9346: FStStrNoPop var_8C
  loc_AE9349: CR8Str
  loc_AE934B: FStFPR8 var_C8
  loc_AE934E: FFree1Str var_8C
  loc_AE9351: FFree1Ad var_94
  loc_AE9354: FFree1Var var_A4 = ""
  loc_AE9357: LitI2_Byte 0
  loc_AE9359: CR8I2
  loc_AE935A: FStFPR8 var_C0
  loc_AE935D: FLdPr Me
  loc_AE9360: MemLdI2 global_80
  loc_AE9363: CI4UI1
  loc_AE9364: CVarI4
  loc_AE9368: PopAdLdVar
  loc_AE9369: LitVarI4
  loc_AE9371: PopAdLdVar
  loc_AE9372: FLdPr Me
  loc_AE9375: VCallAd Control_ID_DetaAsieFlex
  loc_AE9378: FStAdFunc var_94
  loc_AE937B: FLdPr var_94
  loc_AE937E: LateIdCallLdVar
  loc_AE9388: PopAd
  loc_AE938A: FLdR8 var_C8
  loc_AE938D: FLdR8 var_C0
  loc_AE9390: FLdRfVar var_A4
  loc_AE9393: CStrVarTmp
  loc_AE9394: FStStrNoPop var_8C
  loc_AE9397: FLdI2 var_CA
  loc_AE939A: ImpAdLdI2 MemVar_C3D064
  loc_AE939D: FLdPr Me
  loc_AE93A0: MemLdRfVar from_stack_1.global_56
  loc_AE93A3: NewIfNullPr clsasiento
  loc_AE93A6: Call clsasiento.AddNewMoviAsiento(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_AE93AB: FFree1Str var_8C
  loc_AE93AE: FFree1Ad var_94
  loc_AE93B1: FFree1Var var_A4 = ""
  loc_AE93B4: FLdPr Me
  loc_AE93B7: MemLdRfVar from_stack_1.global_80
  loc_AE93BA: NextI2 var_174, loc_AE9217
  loc_AE93BF: LitI4 0
  loc_AE93C4: LitStr "Recuerde solicitar el Libro Diario en el InfoGov 3. Disculpe las molestias..."
  loc_AE93C7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE93CC: Call cmdCancelar_Click()
  loc_AE93D1: Branch loc_AE94A0
  loc_AE93D4: ILdRf var_90
  loc_AE93D7: LitStr "btnCancelar"
  loc_AE93DA: EqStr
  loc_AE93DC: BranchF loc_AE93E7
  loc_AE93DF: Call cmdCancelar_Click()
  loc_AE93E4: Branch loc_AE94A0
  loc_AE93E7: ILdRf var_90
  loc_AE93EA: LitStr "btnPrimero"
  loc_AE93ED: EqStr
  loc_AE93EF: BranchF loc_AE93F5
  loc_AE93F2: Branch loc_AE94A0
  loc_AE93F5: ILdRf var_90
  loc_AE93F8: LitStr "btnAnterior"
  loc_AE93FB: EqStr
  loc_AE93FD: BranchF loc_AE9403
  loc_AE9400: Branch loc_AE94A0
  loc_AE9403: ILdRf var_90
  loc_AE9406: LitStr "btnSiguiente"
  loc_AE9409: EqStr
  loc_AE940B: BranchF loc_AE9411
  loc_AE940E: Branch loc_AE94A0
  loc_AE9411: ILdRf var_90
  loc_AE9414: LitStr "btnUltimo"
  loc_AE9417: EqStr
  loc_AE9419: BranchF loc_AE941F
  loc_AE941C: Branch loc_AE94A0
  loc_AE941F: ILdRf var_90
  loc_AE9422: LitStr "btnFiltrar"
  loc_AE9425: EqStr
  loc_AE9427: BranchF loc_AE942D
  loc_AE942A: Branch loc_AE94A0
  loc_AE942D: ILdRf var_90
  loc_AE9430: LitStr "btnBuscar"
  loc_AE9433: EqStr
  loc_AE9435: BranchF loc_AE943B
  loc_AE9438: Branch loc_AE94A0
  loc_AE943B: ILdRf var_90
  loc_AE943E: LitStr "btnImprimir"
  loc_AE9441: EqStr
  loc_AE9443: BranchF loc_AE9449
  loc_AE9446: Branch loc_AE94A0
  loc_AE9449: ILdRf var_90
  loc_AE944C: LitStr "btnAyuda"
  loc_AE944F: EqStr
  loc_AE9451: BranchF loc_AE9480
  loc_AE9454: LitVar_Missing var_194
  loc_AE9457: LitVar_Missing var_184
  loc_AE945A: LitVar_Missing var_154
  loc_AE945D: LitI4 0
  loc_AE9462: LitVarStr var_B4, "Opcion no disponible en esta version."
  loc_AE9467: FStVarCopyObj var_A4
  loc_AE946A: FLdRfVar var_A4
  loc_AE946D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AE9472: FFreeVar var_A4 = "": var_154 = "": var_184 = ""
  loc_AE947D: Branch loc_AE94A0
  loc_AE9480: ILdRf var_90
  loc_AE9483: LitStr "btnSalir"
  loc_AE9486: EqStr
  loc_AE9488: BranchF loc_AE94A0
  loc_AE948B: ILdRf Me
  loc_AE948E: FStAdNoPop
  loc_AE9492: ImpAdLdRf MemVar_C44F9C
  loc_AE9495: NewIfNullPr Me
  loc_AE9498: Me.Global.Unload from_stack_1
  loc_AE949D: FFree1Ad var_94
  loc_AE94A0: ExitProcHresult
End Sub

Private Sub MinuAsieTxt_GotFocus() '951468
  'Data Table: 464380
  loc_951454: FLdPr Me
  loc_951457: VCallAd Control_ID_MinuAsieTxt
  loc_95145A: CVarAd
  loc_95145E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951463: FFree1Var var_94 = ""
  loc_951466: ExitProcHresult
End Sub

Private Sub MinuAsieTxt_Validate(Cancel As Boolean) '9D160C
  'Data Table: 464380
  loc_9D152C: FLdRfVar var_8A
  loc_9D152F: FLdPr Me
  loc_9D1532: VCallAd Control_ID_MinuAsieTxt
  loc_9D1535: FStAdFunc var_88
  loc_9D1538: FLdPr var_88
  loc_9D153B:  = Me.Enabled
  loc_9D1540: FLdI2 var_8A
  loc_9D1543: FLdRfVar var_92
  loc_9D1546: FLdPr Me
  loc_9D1549: VCallAd Control_ID_cmdCancelar
  loc_9D154C: FStAdFunc var_90
  loc_9D154F: FLdPr var_90
  loc_9D1552:  = Me.Value
  loc_9D1557: FLdI2 var_92
  loc_9D155A: NotI4
  loc_9D155B: AndI4
  loc_9D155C: FFreeAd var_88 = ""
  loc_9D1563: BranchF loc_9D1609
  loc_9D1566: FLdRfVar var_98
  loc_9D1569: FLdPr Me
  loc_9D156C: VCallAd Control_ID_MinuAsieTxt
  loc_9D156F: FStAdFunc var_88
  loc_9D1572: FLdPr var_88
  loc_9D1575:  = Me.Text
  loc_9D157A: ILdRf var_98
  loc_9D157D: LitStr vbNullString
  loc_9D1580: NeStr
  loc_9D1582: FFree1Str var_98
  loc_9D1585: FFree1Ad var_88
  loc_9D1588: BranchF loc_9D1609
  loc_9D158B: FLdRfVar var_98
  loc_9D158E: FLdPr Me
  loc_9D1591: VCallAd Control_ID_MinuAsieTxt
  loc_9D1594: FStAdFunc var_88
  loc_9D1597: FLdPr var_88
  loc_9D159A:  = Me.Text
  loc_9D159F: LitI2_Byte 0
  loc_9D15A1: PopTmpLdAd2 var_9A
  loc_9D15A4: LitI2_Byte 0
  loc_9D15A6: PopTmpLdAd2 var_92
  loc_9D15A9: LitI2_Byte 0
  loc_9D15AB: PopTmpLdAd2 var_8A
  loc_9D15AE: ILdRf var_98
  loc_9D15B1: LitStr "Minuta Contable"
  loc_9D15B4: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D15B9: FStStrNoPop var_A0
  loc_9D15BC: FLdPr Me
  loc_9D15BF: MemStStrCopy
  loc_9D15C3: FFreeStr var_98 = ""
  loc_9D15CA: FFree1Ad var_88
  loc_9D15CD: FLdPr Me
  loc_9D15D0: VCallAd Control_ID_MinuAsieTxt
  loc_9D15D3: FStAdFunc var_A8
  loc_9D15D6: LitNothing
  loc_9D15D8: CastAd
  loc_9D15DB: FStAdFunc var_A4
  loc_9D15DE: FLdRfVar var_A4
  loc_9D15E1: FLdZeroAd var_A8
  loc_9D15E4: FStAdFuncNoPop
  loc_9D15E7: CastAd
  loc_9D15EA: FStAdFunc var_90
  loc_9D15ED: FLdRfVar var_90
  loc_9D15F0: FLdPr Me
  loc_9D15F3: MemLdRfVar from_stack_1.global_60
  loc_9D15F6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D15FB: IStI2 Cancel
  loc_9D15FE: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9D1609: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_UnknownEvent_1 'AC0C04
  'Data Table: 464380
  loc_AC0624: FLdPr Me
  loc_AC0627: VCallAd Control_ID_DetaAsieFlex
  loc_AC062A: FStAdFunc var_88
  loc_AC062D: FLdPr var_88
  loc_AC0630: LateIdLdVar var_98 DispID_10 0
  loc_AC0637: CI4Var
  loc_AC0639: CVarI4
  loc_AC063D: PopAdLdVar
  loc_AC063E: LitVarI4
  loc_AC0646: PopAdLdVar
  loc_AC0647: FLdPr Me
  loc_AC064A: VCallAd Control_ID_DetaAsieFlex
  loc_AC064D: FStAdFunc var_DC
  loc_AC0650: FLdPr var_DC
  loc_AC0653: LateIdCallLdVar
  loc_AC065D: CStrVarTmp
  loc_AC065E: FStStrNoPop var_F0
  loc_AC0661: LitStr vbNullString
  loc_AC0664: NeStr
  loc_AC0666: FFree1Str var_F0
  loc_AC0669: FFreeAd var_88 = ""
  loc_AC0670: FFreeVar var_98 = ""
  loc_AC0677: BranchF loc_AC0738
  loc_AC067A: FLdPr Me
  loc_AC067D: VCallAd Control_ID_DetaAsieFlex
  loc_AC0680: FStAdFunc var_88
  loc_AC0683: FLdPr var_88
  loc_AC0686: LateIdLdVar var_98 DispID_11 0
  loc_AC068D: CI4Var
  loc_AC068F: LitI4 0
  loc_AC0694: EqI4
  loc_AC0695: FFree1Ad var_88
  loc_AC0698: FFree1Var var_98 = ""
  loc_AC069B: BranchF loc_AC0735
  loc_AC069E: FLdPr Me
  loc_AC06A1: VCallAd Control_ID_DetaAsieFlex
  loc_AC06A4: FStAdFunc var_88
  loc_AC06A7: FLdPr var_88
  loc_AC06AA: LateIdLdVar var_98 DispID_0 0
  loc_AC06B1: CStrVarTmp
  loc_AC06B2: FStStrNoPop var_F0
  loc_AC06B5: LitStr vbNullString
  loc_AC06B8: NeStr
  loc_AC06BA: FFree1Str var_F0
  loc_AC06BD: FFree1Ad var_88
  loc_AC06C0: FFree1Var var_98 = ""
  loc_AC06C3: BranchF loc_AC06EE
  loc_AC06C6: FLdPr Me
  loc_AC06C9: VCallAd Control_ID_DetaAsieFlex
  loc_AC06CC: FStAdFunc var_88
  loc_AC06CF: FLdPr var_88
  loc_AC06D2: LateIdLdVar var_98 DispID_0 0
  loc_AC06D9: CStrVarTmp
  loc_AC06DA: FStStrNoPop var_F0
  loc_AC06DD: Call Proc_104_21_B655E0()
  loc_AC06E2: FFree1Str var_F0
  loc_AC06E5: FFree1Ad var_88
  loc_AC06E8: FFree1Var var_98 = ""
  loc_AC06EB: Branch loc_AC0735
  loc_AC06EE: FLdPr Me
  loc_AC06F1: VCallAd Control_ID_DetaAsieFlex
  loc_AC06F4: FStAdFunc var_88
  loc_AC06F7: FLdPr var_88
  loc_AC06FA: LateIdLdVar var_98 DispID_10 0
  loc_AC0701: CI4Var
  loc_AC0703: CVarI4
  loc_AC0707: PopAdLdVar
  loc_AC0708: LitVarI4
  loc_AC0710: PopAdLdVar
  loc_AC0711: LitVarStr var_100, vbNullString
  loc_AC0716: PopAdLdVar
  loc_AC0717: FLdPr Me
  loc_AC071A: VCallAd Control_ID_DetaAsieFlex
  loc_AC071D: FStAdFunc var_DC
  loc_AC0720: FLdPr var_DC
  loc_AC0723: LateIdCallSt
  loc_AC072B: FFreeAd var_88 = ""
  loc_AC0732: FFree1Var var_98 = ""
  loc_AC0735: Branch loc_AC077F
  loc_AC0738: FLdPr Me
  loc_AC073B: VCallAd Control_ID_DetaAsieFlex
  loc_AC073E: FStAdFunc var_88
  loc_AC0741: FLdPr var_88
  loc_AC0744: LateIdLdVar var_98 DispID_10 0
  loc_AC074B: CI4Var
  loc_AC074D: CVarI4
  loc_AC0751: PopAdLdVar
  loc_AC0752: LitVarI4
  loc_AC075A: PopAdLdVar
  loc_AC075B: LitVarStr var_100, vbNullString
  loc_AC0760: PopAdLdVar
  loc_AC0761: FLdPr Me
  loc_AC0764: VCallAd Control_ID_DetaAsieFlex
  loc_AC0767: FStAdFunc var_DC
  loc_AC076A: FLdPr var_DC
  loc_AC076D: LateIdCallSt
  loc_AC0775: FFreeAd var_88 = ""
  loc_AC077C: FFree1Var var_98 = ""
  loc_AC077F: FLdPr Me
  loc_AC0782: VCallAd Control_ID_DetaAsieFlex
  loc_AC0785: FStAdFunc var_88
  loc_AC0788: FLdPr var_88
  loc_AC078B: LateIdLdVar var_98 DispID_10 0
  loc_AC0792: CI4Var
  loc_AC0794: CVarI4
  loc_AC0798: PopAdLdVar
  loc_AC0799: LitVarI4
  loc_AC07A1: PopAdLdVar
  loc_AC07A2: FLdPr Me
  loc_AC07A5: VCallAd Control_ID_DetaAsieFlex
  loc_AC07A8: FStAdFunc var_DC
  loc_AC07AB: FLdPr var_DC
  loc_AC07AE: LateIdCallLdVar
  loc_AC07B8: CStrVarTmp
  loc_AC07B9: FStStrNoPop var_F0
  loc_AC07BC: LitStr vbNullString
  loc_AC07BF: NeStr
  loc_AC07C1: FFree1Str var_F0
  loc_AC07C4: FFreeAd var_88 = ""
  loc_AC07CB: FFreeVar var_98 = ""
  loc_AC07D2: BranchF loc_AC08AA
  loc_AC07D5: FLdPr Me
  loc_AC07D8: VCallAd Control_ID_DetaAsieFlex
  loc_AC07DB: FStAdFunc var_88
  loc_AC07DE: FLdPr var_88
  loc_AC07E1: LateIdLdVar var_98 DispID_11 0
  loc_AC07E8: CI4Var
  loc_AC07EA: LitI4 2
  loc_AC07EF: EqI4
  loc_AC07F0: FFree1Ad var_88
  loc_AC07F3: FFree1Var var_98 = ""
  loc_AC07F6: BranchF loc_AC08AA
  loc_AC07F9: FLdPr Me
  loc_AC07FC: VCallAd Control_ID_DetaAsieFlex
  loc_AC07FF: FStAdFunc var_88
  loc_AC0802: FLdPr var_88
  loc_AC0805: LateIdLdVar var_98 DispID_0 0
  loc_AC080C: PopAd
  loc_AC080E: LitI4 1
  loc_AC0813: LitI4 1
  loc_AC0818: LitVarStr var_A8, "0.00"
  loc_AC081D: FStVarCopyObj var_120
  loc_AC0820: FLdRfVar var_120
  loc_AC0823: FLdRfVar var_98
  loc_AC0826: CStrVarTmp
  loc_AC0827: CVarStr var_EC
  loc_AC082A: FLdRfVar var_130
  loc_AC082D: ImpAdCallFPR4  = Format(, )
  loc_AC0832: FLdRfVar var_130
  loc_AC0835: CStrVarTmp
  loc_AC0836: CVarStr var_140
  loc_AC0839: PopAdLdVar
  loc_AC083A: FLdPr Me
  loc_AC083D: VCallAd Control_ID_DetaAsieFlex
  loc_AC0840: FStAdFunc var_DC
  loc_AC0843: FLdPr var_DC
  loc_AC0846: LateIdSt
  loc_AC084B: FFreeAd var_88 = ""
  loc_AC0852: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC085F: FLdPr Me
  loc_AC0862: VCallAd Control_ID_DetaAsieFlex
  loc_AC0865: FStAdFunc var_88
  loc_AC0868: FLdPr var_88
  loc_AC086B: LateIdLdVar var_98 DispID_10 0
  loc_AC0872: CI4Var
  loc_AC0874: CVarI4
  loc_AC0878: PopAdLdVar
  loc_AC0879: LitVarI4
  loc_AC0881: PopAdLdVar
  loc_AC0882: FLdPr Me
  loc_AC0885: MemLdRfVar from_stack_1.global_88
  loc_AC0888: CDargRef
  loc_AC088C: FLdPr Me
  loc_AC088F: VCallAd Control_ID_DetaAsieFlex
  loc_AC0892: FStAdFunc var_DC
  loc_AC0895: FLdPr var_DC
  loc_AC0898: LateIdCallSt
  loc_AC08A0: FFreeAd var_88 = ""
  loc_AC08A7: FFree1Var var_98 = ""
  loc_AC08AA: FLdPr Me
  loc_AC08AD: VCallAd Control_ID_DetaAsieFlex
  loc_AC08B0: FStAdFunc var_88
  loc_AC08B3: FLdPr var_88
  loc_AC08B6: LateIdLdVar var_98 DispID_10 0
  loc_AC08BD: CI4Var
  loc_AC08BF: CVarI4
  loc_AC08C3: PopAdLdVar
  loc_AC08C4: LitVarI4
  loc_AC08CC: PopAdLdVar
  loc_AC08CD: FLdPr Me
  loc_AC08D0: VCallAd Control_ID_DetaAsieFlex
  loc_AC08D3: FStAdFunc var_DC
  loc_AC08D6: FLdPr var_DC
  loc_AC08D9: LateIdCallLdVar
  loc_AC08E3: CStrVarTmp
  loc_AC08E4: FStStrNoPop var_F0
  loc_AC08E7: LitStr vbNullString
  loc_AC08EA: NeStr
  loc_AC08EC: FFree1Str var_F0
  loc_AC08EF: FFreeAd var_88 = ""
  loc_AC08F6: FFreeVar var_98 = ""
  loc_AC08FD: BranchF loc_AC09D5
  loc_AC0900: FLdPr Me
  loc_AC0903: VCallAd Control_ID_DetaAsieFlex
  loc_AC0906: FStAdFunc var_88
  loc_AC0909: FLdPr var_88
  loc_AC090C: LateIdLdVar var_98 DispID_11 0
  loc_AC0913: CI4Var
  loc_AC0915: LitI4 3
  loc_AC091A: EqI4
  loc_AC091B: FFree1Ad var_88
  loc_AC091E: FFree1Var var_98 = ""
  loc_AC0921: BranchF loc_AC09D5
  loc_AC0924: FLdPr Me
  loc_AC0927: VCallAd Control_ID_DetaAsieFlex
  loc_AC092A: FStAdFunc var_88
  loc_AC092D: FLdPr var_88
  loc_AC0930: LateIdLdVar var_98 DispID_0 0
  loc_AC0937: PopAd
  loc_AC0939: LitI4 1
  loc_AC093E: LitI4 1
  loc_AC0943: LitVarStr var_A8, "0.00"
  loc_AC0948: FStVarCopyObj var_120
  loc_AC094B: FLdRfVar var_120
  loc_AC094E: FLdRfVar var_98
  loc_AC0951: CStrVarTmp
  loc_AC0952: CVarStr var_EC
  loc_AC0955: FLdRfVar var_130
  loc_AC0958: ImpAdCallFPR4  = Format(, )
  loc_AC095D: FLdRfVar var_130
  loc_AC0960: CStrVarTmp
  loc_AC0961: CVarStr var_140
  loc_AC0964: PopAdLdVar
  loc_AC0965: FLdPr Me
  loc_AC0968: VCallAd Control_ID_DetaAsieFlex
  loc_AC096B: FStAdFunc var_DC
  loc_AC096E: FLdPr var_DC
  loc_AC0971: LateIdSt
  loc_AC0976: FFreeAd var_88 = ""
  loc_AC097D: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC098A: FLdPr Me
  loc_AC098D: VCallAd Control_ID_DetaAsieFlex
  loc_AC0990: FStAdFunc var_88
  loc_AC0993: FLdPr var_88
  loc_AC0996: LateIdLdVar var_98 DispID_10 0
  loc_AC099D: CI4Var
  loc_AC099F: CVarI4
  loc_AC09A3: PopAdLdVar
  loc_AC09A4: LitVarI4
  loc_AC09AC: PopAdLdVar
  loc_AC09AD: FLdPr Me
  loc_AC09B0: MemLdRfVar from_stack_1.global_84
  loc_AC09B3: CDargRef
  loc_AC09B7: FLdPr Me
  loc_AC09BA: VCallAd Control_ID_DetaAsieFlex
  loc_AC09BD: FStAdFunc var_DC
  loc_AC09C0: FLdPr var_DC
  loc_AC09C3: LateIdCallSt
  loc_AC09CB: FFreeAd var_88 = ""
  loc_AC09D2: FFree1Var var_98 = ""
  loc_AC09D5: LitI2_Byte 0
  loc_AC09D7: CR8I2
  loc_AC09D8: FLdPr Me
  loc_AC09DB: MemStFPR8 global_64
  loc_AC09DE: LitI2_Byte 0
  loc_AC09E0: CR8I2
  loc_AC09E1: FLdPr Me
  loc_AC09E4: MemStFPR8 global_72
  loc_AC09E7: LitI2_Byte 1
  loc_AC09E9: FLdPr Me
  loc_AC09EC: MemLdRfVar from_stack_1.global_80
  loc_AC09EF: FLdPr Me
  loc_AC09F2: VCallAd Control_ID_DetaAsieFlex
  loc_AC09F5: FStAdFunc var_88
  loc_AC09F8: FLdPr var_88
  loc_AC09FB: LateIdLdVar var_98 DispID_4 0
  loc_AC0A02: CI4Var
  loc_AC0A04: LitI4 1
  loc_AC0A09: SubI4
  loc_AC0A0A: CI2I4
  loc_AC0A0B: FFree1Ad var_88
  loc_AC0A0E: FFree1Var var_98 = ""
  loc_AC0A11: ForI2 var_144
  loc_AC0A17: FLdPr Me
  loc_AC0A1A: MemLdI2 global_80
  loc_AC0A1D: CI4UI1
  loc_AC0A1E: CVarI4
  loc_AC0A22: PopAdLdVar
  loc_AC0A23: LitVarI4
  loc_AC0A2B: PopAdLdVar
  loc_AC0A2C: FLdPr Me
  loc_AC0A2F: VCallAd Control_ID_DetaAsieFlex
  loc_AC0A32: FStAdFunc var_88
  loc_AC0A35: FLdPr var_88
  loc_AC0A38: LateIdCallLdVar
  loc_AC0A42: CStrVarTmp
  loc_AC0A43: CVarStr var_EC
  loc_AC0A46: ImpAdCallI2 IsNumeric()
  loc_AC0A4B: FFree1Ad var_88
  loc_AC0A4E: FFreeVar var_98 = ""
  loc_AC0A55: BranchF loc_AC0AE5
  loc_AC0A58: FLdPr Me
  loc_AC0A5B: MemLdI2 global_80
  loc_AC0A5E: CI4UI1
  loc_AC0A5F: CVarI4
  loc_AC0A63: PopAdLdVar
  loc_AC0A64: LitVarI4
  loc_AC0A6C: PopAdLdVar
  loc_AC0A6D: FLdPr Me
  loc_AC0A70: VCallAd Control_ID_DetaAsieFlex
  loc_AC0A73: FStAdFunc var_88
  loc_AC0A76: FLdPr var_88
  loc_AC0A79: LateIdCallLdVar
  loc_AC0A83: CStrVarTmp
  loc_AC0A84: CVarStr var_EC
  loc_AC0A87: ImpAdCallI2 IsNumeric()
  loc_AC0A8C: FFree1Ad var_88
  loc_AC0A8F: FFreeVar var_98 = ""
  loc_AC0A96: BranchF loc_AC0AE5
  loc_AC0A99: FLdPr Me
  loc_AC0A9C: MemLdI2 global_80
  loc_AC0A9F: CI4UI1
  loc_AC0AA0: CVarI4
  loc_AC0AA4: PopAdLdVar
  loc_AC0AA5: LitVarI4
  loc_AC0AAD: PopAdLdVar
  loc_AC0AAE: FLdPr Me
  loc_AC0AB1: VCallAd Control_ID_DetaAsieFlex
  loc_AC0AB4: FStAdFunc var_88
  loc_AC0AB7: FLdPr var_88
  loc_AC0ABA: LateIdCallLdVar
  loc_AC0AC4: PopAd
  loc_AC0AC6: FLdPr Me
  loc_AC0AC9: MemLdFPR8 global_64
  loc_AC0ACC: FLdRfVar var_98
  loc_AC0ACF: CStrVarTmp
  loc_AC0AD0: FStStrNoPop var_F0
  loc_AC0AD3: CR8Str
  loc_AC0AD5: AddR8
  loc_AC0AD6: FLdPr Me
  loc_AC0AD9: MemStFPR8 global_64
  loc_AC0ADC: FFree1Str var_F0
  loc_AC0ADF: FFree1Ad var_88
  loc_AC0AE2: FFree1Var var_98 = ""
  loc_AC0AE5: FLdPr Me
  loc_AC0AE8: MemLdI2 global_80
  loc_AC0AEB: CI4UI1
  loc_AC0AEC: CVarI4
  loc_AC0AF0: PopAdLdVar
  loc_AC0AF1: LitVarI4
  loc_AC0AF9: PopAdLdVar
  loc_AC0AFA: FLdPr Me
  loc_AC0AFD: VCallAd Control_ID_DetaAsieFlex
  loc_AC0B00: FStAdFunc var_88
  loc_AC0B03: FLdPr var_88
  loc_AC0B06: LateIdCallLdVar
  loc_AC0B10: CStrVarTmp
  loc_AC0B11: CVarStr var_EC
  loc_AC0B14: ImpAdCallI2 IsNumeric()
  loc_AC0B19: FFree1Ad var_88
  loc_AC0B1C: FFreeVar var_98 = ""
  loc_AC0B23: BranchF loc_AC0BB3
  loc_AC0B26: FLdPr Me
  loc_AC0B29: MemLdI2 global_80
  loc_AC0B2C: CI4UI1
  loc_AC0B2D: CVarI4
  loc_AC0B31: PopAdLdVar
  loc_AC0B32: LitVarI4
  loc_AC0B3A: PopAdLdVar
  loc_AC0B3B: FLdPr Me
  loc_AC0B3E: VCallAd Control_ID_DetaAsieFlex
  loc_AC0B41: FStAdFunc var_88
  loc_AC0B44: FLdPr var_88
  loc_AC0B47: LateIdCallLdVar
  loc_AC0B51: CStrVarTmp
  loc_AC0B52: CVarStr var_EC
  loc_AC0B55: ImpAdCallI2 IsNumeric()
  loc_AC0B5A: FFree1Ad var_88
  loc_AC0B5D: FFreeVar var_98 = ""
  loc_AC0B64: BranchF loc_AC0BB3
  loc_AC0B67: FLdPr Me
  loc_AC0B6A: MemLdI2 global_80
  loc_AC0B6D: CI4UI1
  loc_AC0B6E: CVarI4
  loc_AC0B72: PopAdLdVar
  loc_AC0B73: LitVarI4
  loc_AC0B7B: PopAdLdVar
  loc_AC0B7C: FLdPr Me
  loc_AC0B7F: VCallAd Control_ID_DetaAsieFlex
  loc_AC0B82: FStAdFunc var_88
  loc_AC0B85: FLdPr var_88
  loc_AC0B88: LateIdCallLdVar
  loc_AC0B92: PopAd
  loc_AC0B94: FLdPr Me
  loc_AC0B97: MemLdFPR8 global_72
  loc_AC0B9A: FLdRfVar var_98
  loc_AC0B9D: CStrVarTmp
  loc_AC0B9E: FStStrNoPop var_F0
  loc_AC0BA1: CR8Str
  loc_AC0BA3: AddR8
  loc_AC0BA4: FLdPr Me
  loc_AC0BA7: MemStFPR8 global_72
  loc_AC0BAA: FFree1Str var_F0
  loc_AC0BAD: FFree1Ad var_88
  loc_AC0BB0: FFree1Var var_98 = ""
  loc_AC0BB3: FLdPr Me
  loc_AC0BB6: MemLdRfVar from_stack_1.global_80
  loc_AC0BB9: NextI2 var_144, loc_AC0A17
  loc_AC0BBE: FLdPr Me
  loc_AC0BC1: MemLdFPR8 global_64
  loc_AC0BC4: CStrR8
  loc_AC0BC6: FStStrNoPop var_F0
  loc_AC0BC9: FLdPr Me
  loc_AC0BCC: VCallAd Control_ID_TotaDebeLbl
  loc_AC0BCF: FStAdFunc var_88
  loc_AC0BD2: FLdPr var_88
  loc_AC0BD5: Me.Caption = from_stack_1
  loc_AC0BDA: FFree1Str var_F0
  loc_AC0BDD: FFree1Ad var_88
  loc_AC0BE0: FLdPr Me
  loc_AC0BE3: MemLdFPR8 global_72
  loc_AC0BE6: CStrR8
  loc_AC0BE8: FStStrNoPop var_F0
  loc_AC0BEB: FLdPr Me
  loc_AC0BEE: VCallAd Control_ID_TotaHaberLbl
  loc_AC0BF1: FStAdFunc var_88
  loc_AC0BF4: FLdPr var_88
  loc_AC0BF7: Me.Caption = from_stack_1
  loc_AC0BFC: FFree1Str var_F0
  loc_AC0BFF: FFree1Ad var_88
  loc_AC0C02: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A9C664
  'Data Table: 464380
  loc_A9C1BC: ILdI2 KeyCode
  loc_A9C1BF: CI4UI1
  loc_A9C1C0: LitI4 &H2E
  loc_A9C1C5: EqI4
  loc_A9C1C6: BranchF loc_A9C456
  loc_A9C1C9: FLdPr Me
  loc_A9C1CC: VCallAd Control_ID_DetaAsieFlex
  loc_A9C1CF: FStAdFunc var_88
  loc_A9C1D2: FLdPr var_88
  loc_A9C1D5: LateIdLdVar var_98 DispID_10 0
  loc_A9C1DC: CI4Var
  loc_A9C1DE: LitI4 0
  loc_A9C1E3: NeI4
  loc_A9C1E4: FFree1Ad var_88
  loc_A9C1E7: FFree1Var var_98 = ""
  loc_A9C1EA: BranchF loc_A9C456
  loc_A9C1ED: OnErrorGoto loc_A9C456
  loc_A9C1F0: FLdPr Me
  loc_A9C1F3: VCallAd Control_ID_DetaAsieFlex
  loc_A9C1F6: FStAdFunc var_88
  loc_A9C1F9: FLdPr var_88
  loc_A9C1FC: LateIdLdVar var_98 DispID_10 0
  loc_A9C203: CI4Var
  loc_A9C205: CVarI4
  loc_A9C209: PopAdLdVar
  loc_A9C20A: FLdPr Me
  loc_A9C20D: VCallAd Control_ID_DetaAsieFlex
  loc_A9C210: FStAdFunc var_BC
  loc_A9C213: FLdPr var_BC
  loc_A9C216: LateIdCall
  loc_A9C21E: FFreeAd var_88 = ""
  loc_A9C225: FFree1Var var_98 = ""
  loc_A9C228: LitI2_Byte 0
  loc_A9C22A: CR8I2
  loc_A9C22B: FLdPr Me
  loc_A9C22E: MemStFPR8 global_64
  loc_A9C231: LitI2_Byte 0
  loc_A9C233: CR8I2
  loc_A9C234: FLdPr Me
  loc_A9C237: MemStFPR8 global_72
  loc_A9C23A: LitI2_Byte 1
  loc_A9C23C: FLdPr Me
  loc_A9C23F: MemLdRfVar from_stack_1.global_80
  loc_A9C242: FLdPr Me
  loc_A9C245: VCallAd Control_ID_DetaAsieFlex
  loc_A9C248: FStAdFunc var_88
  loc_A9C24B: FLdPr var_88
  loc_A9C24E: LateIdLdVar var_98 DispID_4 0
  loc_A9C255: CI4Var
  loc_A9C257: LitI4 1
  loc_A9C25C: SubI4
  loc_A9C25D: CI2I4
  loc_A9C25E: FFree1Ad var_88
  loc_A9C261: FFree1Var var_98 = ""
  loc_A9C264: ForI2 var_C0
  loc_A9C26A: FLdPr Me
  loc_A9C26D: MemLdI2 global_80
  loc_A9C270: CI4UI1
  loc_A9C271: CVarI4
  loc_A9C275: PopAdLdVar
  loc_A9C276: LitVarI4
  loc_A9C27E: PopAdLdVar
  loc_A9C27F: FLdPr Me
  loc_A9C282: VCallAd Control_ID_DetaAsieFlex
  loc_A9C285: FStAdFunc var_88
  loc_A9C288: FLdPr var_88
  loc_A9C28B: LateIdCallLdVar
  loc_A9C295: CStrVarTmp
  loc_A9C296: CVarStr var_F0
  loc_A9C299: ImpAdCallI2 IsNumeric()
  loc_A9C29E: FFree1Ad var_88
  loc_A9C2A1: FFreeVar var_98 = ""
  loc_A9C2A8: BranchF loc_A9C338
  loc_A9C2AB: FLdPr Me
  loc_A9C2AE: MemLdI2 global_80
  loc_A9C2B1: CI4UI1
  loc_A9C2B2: CVarI4
  loc_A9C2B6: PopAdLdVar
  loc_A9C2B7: LitVarI4
  loc_A9C2BF: PopAdLdVar
  loc_A9C2C0: FLdPr Me
  loc_A9C2C3: VCallAd Control_ID_DetaAsieFlex
  loc_A9C2C6: FStAdFunc var_88
  loc_A9C2C9: FLdPr var_88
  loc_A9C2CC: LateIdCallLdVar
  loc_A9C2D6: CStrVarTmp
  loc_A9C2D7: CVarStr var_F0
  loc_A9C2DA: ImpAdCallI2 IsNumeric()
  loc_A9C2DF: FFree1Ad var_88
  loc_A9C2E2: FFreeVar var_98 = ""
  loc_A9C2E9: BranchF loc_A9C338
  loc_A9C2EC: FLdPr Me
  loc_A9C2EF: MemLdI2 global_80
  loc_A9C2F2: CI4UI1
  loc_A9C2F3: CVarI4
  loc_A9C2F7: PopAdLdVar
  loc_A9C2F8: LitVarI4
  loc_A9C300: PopAdLdVar
  loc_A9C301: FLdPr Me
  loc_A9C304: VCallAd Control_ID_DetaAsieFlex
  loc_A9C307: FStAdFunc var_88
  loc_A9C30A: FLdPr var_88
  loc_A9C30D: LateIdCallLdVar
  loc_A9C317: PopAd
  loc_A9C319: FLdPr Me
  loc_A9C31C: MemLdFPR8 global_64
  loc_A9C31F: FLdRfVar var_98
  loc_A9C322: CStrVarTmp
  loc_A9C323: FStStrNoPop var_F4
  loc_A9C326: CR8Str
  loc_A9C328: AddR8
  loc_A9C329: FLdPr Me
  loc_A9C32C: MemStFPR8 global_64
  loc_A9C32F: FFree1Str var_F4
  loc_A9C332: FFree1Ad var_88
  loc_A9C335: FFree1Var var_98 = ""
  loc_A9C338: FLdPr Me
  loc_A9C33B: MemLdI2 global_80
  loc_A9C33E: CI4UI1
  loc_A9C33F: CVarI4
  loc_A9C343: PopAdLdVar
  loc_A9C344: LitVarI4
  loc_A9C34C: PopAdLdVar
  loc_A9C34D: FLdPr Me
  loc_A9C350: VCallAd Control_ID_DetaAsieFlex
  loc_A9C353: FStAdFunc var_88
  loc_A9C356: FLdPr var_88
  loc_A9C359: LateIdCallLdVar
  loc_A9C363: CStrVarTmp
  loc_A9C364: CVarStr var_F0
  loc_A9C367: ImpAdCallI2 IsNumeric()
  loc_A9C36C: FFree1Ad var_88
  loc_A9C36F: FFreeVar var_98 = ""
  loc_A9C376: BranchF loc_A9C406
  loc_A9C379: FLdPr Me
  loc_A9C37C: MemLdI2 global_80
  loc_A9C37F: CI4UI1
  loc_A9C380: CVarI4
  loc_A9C384: PopAdLdVar
  loc_A9C385: LitVarI4
  loc_A9C38D: PopAdLdVar
  loc_A9C38E: FLdPr Me
  loc_A9C391: VCallAd Control_ID_DetaAsieFlex
  loc_A9C394: FStAdFunc var_88
  loc_A9C397: FLdPr var_88
  loc_A9C39A: LateIdCallLdVar
  loc_A9C3A4: CStrVarTmp
  loc_A9C3A5: CVarStr var_F0
  loc_A9C3A8: ImpAdCallI2 IsNumeric()
  loc_A9C3AD: FFree1Ad var_88
  loc_A9C3B0: FFreeVar var_98 = ""
  loc_A9C3B7: BranchF loc_A9C406
  loc_A9C3BA: FLdPr Me
  loc_A9C3BD: MemLdI2 global_80
  loc_A9C3C0: CI4UI1
  loc_A9C3C1: CVarI4
  loc_A9C3C5: PopAdLdVar
  loc_A9C3C6: LitVarI4
  loc_A9C3CE: PopAdLdVar
  loc_A9C3CF: FLdPr Me
  loc_A9C3D2: VCallAd Control_ID_DetaAsieFlex
  loc_A9C3D5: FStAdFunc var_88
  loc_A9C3D8: FLdPr var_88
  loc_A9C3DB: LateIdCallLdVar
  loc_A9C3E5: PopAd
  loc_A9C3E7: FLdPr Me
  loc_A9C3EA: MemLdFPR8 global_72
  loc_A9C3ED: FLdRfVar var_98
  loc_A9C3F0: CStrVarTmp
  loc_A9C3F1: FStStrNoPop var_F4
  loc_A9C3F4: CR8Str
  loc_A9C3F6: AddR8
  loc_A9C3F7: FLdPr Me
  loc_A9C3FA: MemStFPR8 global_72
  loc_A9C3FD: FFree1Str var_F4
  loc_A9C400: FFree1Ad var_88
  loc_A9C403: FFree1Var var_98 = ""
  loc_A9C406: FLdPr Me
  loc_A9C409: MemLdRfVar from_stack_1.global_80
  loc_A9C40C: NextI2 var_C0, loc_A9C26A
  loc_A9C411: FLdPr Me
  loc_A9C414: MemLdFPR8 global_64
  loc_A9C417: CStrR8
  loc_A9C419: FStStrNoPop var_F4
  loc_A9C41C: FLdPr Me
  loc_A9C41F: VCallAd Control_ID_TotaDebeLbl
  loc_A9C422: FStAdFunc var_88
  loc_A9C425: FLdPr var_88
  loc_A9C428: Me.Caption = from_stack_1
  loc_A9C42D: FFree1Str var_F4
  loc_A9C430: FFree1Ad var_88
  loc_A9C433: FLdPr Me
  loc_A9C436: MemLdFPR8 global_72
  loc_A9C439: CStrR8
  loc_A9C43B: FStStrNoPop var_F4
  loc_A9C43E: FLdPr Me
  loc_A9C441: VCallAd Control_ID_TotaHaberLbl
  loc_A9C444: FStAdFunc var_88
  loc_A9C447: FLdPr var_88
  loc_A9C44A: Me.Caption = from_stack_1
  loc_A9C44F: FFree1Str var_F4
  loc_A9C452: FFree1Ad var_88
  loc_A9C455: ExitProcHresult
  loc_A9C456: FLdRfVar var_F8
  loc_A9C459: ImpAdCallI2 Err 'rtcErrObj
  loc_A9C45E: FStAdFunc var_88
  loc_A9C461: FLdPr var_88
  loc_A9C464:  = Err.Number
  loc_A9C469: ILdRf var_F8
  loc_A9C46C: LitI4 &H753F
  loc_A9C471: EqI4
  loc_A9C472: FFree1Ad var_88
  loc_A9C475: BranchF loc_A9C663
  loc_A9C478: FLdPr Me
  loc_A9C47B: VCallAd Control_ID_DetaAsieFlex
  loc_A9C47E: FStAdFunc var_FC
  loc_A9C481: FLdPr var_FC
  loc_A9C484: LateIdCall
  loc_A9C48C: LitVarI4
  loc_A9C494: PopAdLdVar
  loc_A9C495: FLdPr var_FC
  loc_A9C498: LateIdSt
  loc_A9C49D: LitVarI4
  loc_A9C4A5: PopAdLdVar
  loc_A9C4A6: LitVarI4
  loc_A9C4AE: PopAdLdVar
  loc_A9C4AF: LitVarStr var_10C, "Cuenta"
  loc_A9C4B4: PopAdLdVar
  loc_A9C4B5: FLdPr var_FC
  loc_A9C4B8: LateIdCallSt
  loc_A9C4C0: LitVarI4
  loc_A9C4C8: PopAdLdVar
  loc_A9C4C9: LitVarI4
  loc_A9C4D1: PopAdLdVar
  loc_A9C4D2: LitVarStr var_10C, "Detalle"
  loc_A9C4D7: PopAdLdVar
  loc_A9C4D8: FLdPr var_FC
  loc_A9C4DB: LateIdCallSt
  loc_A9C4E3: LitVarI4
  loc_A9C4EB: PopAdLdVar
  loc_A9C4EC: LitVarI4
  loc_A9C4F4: PopAdLdVar
  loc_A9C4F5: LitVarStr var_10C, "Debe"
  loc_A9C4FA: PopAdLdVar
  loc_A9C4FB: FLdPr var_FC
  loc_A9C4FE: LateIdCallSt
  loc_A9C506: LitVarI4
  loc_A9C50E: PopAdLdVar
  loc_A9C50F: LitVarI4
  loc_A9C517: PopAdLdVar
  loc_A9C518: LitVarStr var_10C, "Haber"
  loc_A9C51D: PopAdLdVar
  loc_A9C51E: FLdPr var_FC
  loc_A9C521: LateIdCallSt
  loc_A9C529: FLdPr var_FC
  loc_A9C52C: LateIdCall
  loc_A9C534: LitNothing
  loc_A9C536: FStAd var_FC 
  loc_A9C53A: LitVarStr var_A8, vbNullString
  loc_A9C53F: LitI4 9
  loc_A9C544: FLdRfVar var_98
  loc_A9C547: ImpAdCallFPR4  = Chr()
  loc_A9C54C: FLdRfVar var_98
  loc_A9C54F: ConcatVar var_F0
  loc_A9C553: LitVarStr var_B8, " "
  loc_A9C558: ConcatVar var_12C
  loc_A9C55C: LitI4 9
  loc_A9C561: FLdRfVar var_13C
  loc_A9C564: ImpAdCallFPR4  = Chr()
  loc_A9C569: FLdRfVar var_13C
  loc_A9C56C: ConcatVar var_14C
  loc_A9C570: FLdPr Me
  loc_A9C573: MemLdStr global_84
  loc_A9C576: CVarStr var_D0
  loc_A9C579: ConcatVar var_15C
  loc_A9C57D: LitI4 9
  loc_A9C582: FLdRfVar var_16C
  loc_A9C585: ImpAdCallFPR4  = Chr()
  loc_A9C58A: FLdRfVar var_16C
  loc_A9C58D: ConcatVar var_17C
  loc_A9C591: FLdPr Me
  loc_A9C594: MemLdStr global_88
  loc_A9C597: CVarStr var_E0
  loc_A9C59A: ConcatVar var_18C
  loc_A9C59E: CStrVarTmp
  loc_A9C59F: CVarStr var_19C
  loc_A9C5A2: PopAdLdVar
  loc_A9C5A3: FLdPr Me
  loc_A9C5A6: VCallAd Control_ID_DetaAsieFlex
  loc_A9C5A9: FStAdFunc var_88
  loc_A9C5AC: FLdPr var_88
  loc_A9C5AF: LateIdCall
  loc_A9C5B7: FFree1Ad var_88
  loc_A9C5BA: FFreeVar var_98 = "": var_F0 = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = ""
  loc_A9C5D1: LitI4 1
  loc_A9C5D6: LitI4 1
  loc_A9C5DB: LitVarStr var_B8, "0.00"
  loc_A9C5E0: FStVarCopyObj var_F0
  loc_A9C5E3: FLdRfVar var_F0
  loc_A9C5E6: LitVarI2 var_98, 0
  loc_A9C5EB: FLdRfVar var_12C
  loc_A9C5EE: ImpAdCallFPR4  = Format(, )
  loc_A9C5F3: FLdRfVar var_12C
  loc_A9C5F6: CStrVarVal var_F4
  loc_A9C5FA: FLdPr Me
  loc_A9C5FD: VCallAd Control_ID_TotaDebeLbl
  loc_A9C600: FStAdFunc var_88
  loc_A9C603: FLdPr var_88
  loc_A9C606: Me.Caption = from_stack_1
  loc_A9C60B: FFree1Str var_F4
  loc_A9C60E: FFree1Ad var_88
  loc_A9C611: FFreeVar var_98 = "": var_F0 = ""
  loc_A9C61A: LitI4 1
  loc_A9C61F: LitI4 1
  loc_A9C624: LitVarStr var_B8, "0.00"
  loc_A9C629: FStVarCopyObj var_F0
  loc_A9C62C: FLdRfVar var_F0
  loc_A9C62F: LitVarI2 var_98, 0
  loc_A9C634: FLdRfVar var_12C
  loc_A9C637: ImpAdCallFPR4  = Format(, )
  loc_A9C63C: FLdRfVar var_12C
  loc_A9C63F: CStrVarVal var_F4
  loc_A9C643: FLdPr Me
  loc_A9C646: VCallAd Control_ID_TotaHaberLbl
  loc_A9C649: FStAdFunc var_88
  loc_A9C64C: FLdPr var_88
  loc_A9C64F: Me.Caption = from_stack_1
  loc_A9C654: FFree1Str var_F4
  loc_A9C657: FFree1Ad var_88
  loc_A9C65A: FFreeVar var_98 = "": var_F0 = ""
  loc_A9C663: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_KeyPress(KeyAscii As Integer) 'AC7058
  'Data Table: 464380
  loc_AC6A6C: ILdI2 KeyAscii
  loc_AC6A6F: LitI2_Byte &HD
  loc_AC6A71: EqI2
  loc_AC6A72: BranchF loc_AC6C32
  loc_AC6A75: FLdPr Me
  loc_AC6A78: VCallAd Control_ID_DetaAsieFlex
  loc_AC6A7B: FStAdFunc var_88
  loc_AC6A7E: FLdPr var_88
  loc_AC6A81: LateIdLdVar var_98 DispID_11 0
  loc_AC6A88: CI4Var
  loc_AC6A8A: LitI4 3
  loc_AC6A8F: LtI4
  loc_AC6A90: FFree1Ad var_88
  loc_AC6A93: FFree1Var var_98 = ""
  loc_AC6A96: BranchF loc_AC6AEE
  loc_AC6A99: FLdPr Me
  loc_AC6A9C: VCallAd Control_ID_DetaAsieFlex
  loc_AC6A9F: FStAdFunc var_88
  loc_AC6AA2: FLdPr var_88
  loc_AC6AA5: LateIdLdVar var_98 DispID_11 0
  loc_AC6AAC: CI4Var
  loc_AC6AAE: LitI4 1
  loc_AC6AB3: AddI4
  loc_AC6AB4: CVarI4
  loc_AC6AB8: PopAdLdVar
  loc_AC6AB9: FLdPr Me
  loc_AC6ABC: VCallAd Control_ID_DetaAsieFlex
  loc_AC6ABF: FStAdFunc var_BC
  loc_AC6AC2: FLdPr var_BC
  loc_AC6AC5: LateIdSt
  loc_AC6ACA: FFreeAd var_88 = ""
  loc_AC6AD1: FFree1Var var_98 = ""
  loc_AC6AD4: FLdPr Me
  loc_AC6AD7: VCallAd Control_ID_DetaAsieFlex
  loc_AC6ADA: FStAdFunc var_88
  loc_AC6ADD: FLdPr var_88
  loc_AC6AE0: LateIdCall
  loc_AC6AE8: FFree1Ad var_88
  loc_AC6AEB: Branch loc_AC6C2F
  loc_AC6AEE: LitVarStr var_A8, vbNullString
  loc_AC6AF3: LitI4 9
  loc_AC6AF8: FLdRfVar var_98
  loc_AC6AFB: ImpAdCallFPR4  = Chr()
  loc_AC6B00: FLdRfVar var_98
  loc_AC6B03: ConcatVar var_CC
  loc_AC6B07: LitVarStr var_B8, " "
  loc_AC6B0C: ConcatVar var_DC
  loc_AC6B10: LitI4 9
  loc_AC6B15: FLdRfVar var_EC
  loc_AC6B18: ImpAdCallFPR4  = Chr()
  loc_AC6B1D: FLdRfVar var_EC
  loc_AC6B20: ConcatVar var_FC
  loc_AC6B24: FLdPr Me
  loc_AC6B27: MemLdStr global_84
  loc_AC6B2A: CVarStr var_10C
  loc_AC6B2D: ConcatVar var_11C
  loc_AC6B31: LitI4 9
  loc_AC6B36: FLdRfVar var_12C
  loc_AC6B39: ImpAdCallFPR4  = Chr()
  loc_AC6B3E: FLdRfVar var_12C
  loc_AC6B41: ConcatVar var_13C
  loc_AC6B45: FLdPr Me
  loc_AC6B48: MemLdStr global_88
  loc_AC6B4B: CVarStr var_14C
  loc_AC6B4E: ConcatVar var_15C
  loc_AC6B52: CStrVarTmp
  loc_AC6B53: CVarStr var_16C
  loc_AC6B56: PopAdLdVar
  loc_AC6B57: FLdPr Me
  loc_AC6B5A: VCallAd Control_ID_DetaAsieFlex
  loc_AC6B5D: FStAdFunc var_88
  loc_AC6B60: FLdPr var_88
  loc_AC6B63: LateIdCall
  loc_AC6B6B: FFree1Ad var_88
  loc_AC6B6E: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = ""
  loc_AC6B85: FLdPr Me
  loc_AC6B88: VCallAd Control_ID_DetaAsieFlex
  loc_AC6B8B: FStAdFunc var_88
  loc_AC6B8E: FLdPr var_88
  loc_AC6B91: LateIdLdVar var_98 DispID_10 0
  loc_AC6B98: CI4Var
  loc_AC6B9A: LitI4 1
  loc_AC6B9F: AddI4
  loc_AC6BA0: CVarI4
  loc_AC6BA4: PopAdLdVar
  loc_AC6BA5: FLdPr Me
  loc_AC6BA8: VCallAd Control_ID_DetaAsieFlex
  loc_AC6BAB: FStAdFunc var_BC
  loc_AC6BAE: FLdPr var_BC
  loc_AC6BB1: LateIdSt
  loc_AC6BB6: FFreeAd var_88 = ""
  loc_AC6BBD: FFree1Var var_98 = ""
  loc_AC6BC0: LitVarI4
  loc_AC6BC8: PopAdLdVar
  loc_AC6BC9: FLdPr Me
  loc_AC6BCC: VCallAd Control_ID_DetaAsieFlex
  loc_AC6BCF: FStAdFunc var_88
  loc_AC6BD2: FLdPr var_88
  loc_AC6BD5: LateIdSt
  loc_AC6BDA: FFree1Ad var_88
  loc_AC6BDD: FLdPr Me
  loc_AC6BE0: VCallAd Control_ID_DetaAsieFlex
  loc_AC6BE3: FStAdFunc var_88
  loc_AC6BE6: FLdPr var_88
  loc_AC6BE9: LateIdLdVar var_98 DispID_8 0
  loc_AC6BF0: CI4Var
  loc_AC6BF2: LitI4 1
  loc_AC6BF7: AddI4
  loc_AC6BF8: CVarI4
  loc_AC6BFC: PopAdLdVar
  loc_AC6BFD: FLdPr Me
  loc_AC6C00: VCallAd Control_ID_DetaAsieFlex
  loc_AC6C03: FStAdFunc var_BC
  loc_AC6C06: FLdPr var_BC
  loc_AC6C09: LateIdSt
  loc_AC6C0E: FFreeAd var_88 = ""
  loc_AC6C15: FFree1Var var_98 = ""
  loc_AC6C18: FLdPr Me
  loc_AC6C1B: VCallAd Control_ID_DetaAsieFlex
  loc_AC6C1E: FStAdFunc var_88
  loc_AC6C21: FLdPr var_88
  loc_AC6C24: LateIdCall
  loc_AC6C2C: FFree1Ad var_88
  loc_AC6C2F: Branch loc_AC7055
  loc_AC6C32: ILdI2 KeyAscii
  loc_AC6C35: LitI2_Byte &H20
  loc_AC6C37: EqI2
  loc_AC6C38: BranchF loc_AC6D34
  loc_AC6C3B: FLdPr Me
  loc_AC6C3E: VCallAd Control_ID_DetaAsieFlex
  loc_AC6C41: FStAdFunc var_88
  loc_AC6C44: FLdPr var_88
  loc_AC6C47: LateIdLdVar var_98 DispID_11 0
  loc_AC6C4E: CI4Var
  loc_AC6C50: LitI4 0
  loc_AC6C55: EqI4
  loc_AC6C56: FFree1Ad var_88
  loc_AC6C59: FFree1Var var_98 = ""
  loc_AC6C5C: BranchF loc_AC6D31
  loc_AC6C5F: LitVar_Missing var_B8
  loc_AC6C62: PopAdLdVar
  loc_AC6C63: LitVarI4
  loc_AC6C6B: PopAdLdVar
  loc_AC6C6C: ImpAdLdRf MemVar_C3D6C0
  loc_AC6C6F: NewIfNullPr bscCuentaContable
  loc_AC6C72: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_AC6C77: FLdRfVar var_180
  loc_AC6C7A: FLdRfVar var_88
  loc_AC6C7D: ImpAdLdRf MemVar_C3D6C0
  loc_AC6C80: NewIfNullPr bscCuentaContable
  loc_AC6C83: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AC6C88: FLdPr var_88
  loc_AC6C8B: from_stack_1 = clsbase.RecordCount
  loc_AC6C90: ILdRf var_180
  loc_AC6C93: LitI4 0
  loc_AC6C98: GtI4
  loc_AC6C99: FFree1Ad var_88
  loc_AC6C9C: BranchF loc_AC6D0C
  loc_AC6C9F: FLdRfVar var_98
  loc_AC6CA2: FLdRfVar var_188
  loc_AC6CA5: LitVarStr var_A8, "CodiCuco"
  loc_AC6CAA: PopAdLdVar
  loc_AC6CAB: FLdRfVar var_184
  loc_AC6CAE: FLdRfVar var_BC
  loc_AC6CB1: FLdRfVar var_88
  loc_AC6CB4: ImpAdLdRf MemVar_C3D6C0
  loc_AC6CB7: NewIfNullPr bscCuentaContable
  loc_AC6CBA: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AC6CBF: FLdPr var_88
  loc_AC6CC2: from_stack_1v = clsbase.RsFrmGet()
  loc_AC6CC7: FLdPr var_BC
  loc_AC6CCA:  = Me.Fields
  loc_AC6CCF: FLdPr var_184
  loc_AC6CD2: from_stack_2 = Me.Item(from_stack_1)
  loc_AC6CD7: FLdPr var_188
  loc_AC6CDA:  = Me.Value
  loc_AC6CDF: FLdRfVar var_98
  loc_AC6CE2: CStrVarTmp
  loc_AC6CE3: CVarStr var_CC
  loc_AC6CE6: PopAdLdVar
  loc_AC6CE7: FLdPr Me
  loc_AC6CEA: VCallAd Control_ID_DetaAsieFlex
  loc_AC6CED: FStAdFunc var_18C
  loc_AC6CF0: FLdPr var_18C
  loc_AC6CF3: LateIdSt
  loc_AC6CF8: FFreeAd var_88 = "": var_BC = "": var_184 = "": var_188 = ""
  loc_AC6D05: FFreeVar var_98 = ""
  loc_AC6D0C: FLdPr Me
  loc_AC6D0F: VCallAd Control_ID_DetaAsieFlex
  loc_AC6D12: FStAdFunc var_88
  loc_AC6D15: FLdPr var_88
  loc_AC6D18: LateIdLdVar var_98 DispID_0 0
  loc_AC6D1F: CStrVarTmp
  loc_AC6D20: FStStrNoPop var_190
  loc_AC6D23: Call Proc_104_21_B655E0()
  loc_AC6D28: FFree1Str var_190
  loc_AC6D2B: FFree1Ad var_88
  loc_AC6D2E: FFree1Var var_98 = ""
  loc_AC6D31: Branch loc_AC7055
  loc_AC6D34: ILdI2 KeyAscii
  loc_AC6D37: LitI2_Byte 8
  loc_AC6D39: EqI2
  loc_AC6D3A: BranchF loc_AC6E17
  loc_AC6D3D: FLdPr Me
  loc_AC6D40: VCallAd Control_ID_DetaAsieFlex
  loc_AC6D43: FStAdFunc var_88
  loc_AC6D46: FLdPr var_88
  loc_AC6D49: LateIdLdVar var_98 DispID_11 0
  loc_AC6D50: CI4Var
  loc_AC6D52: FStR4 var_194
  loc_AC6D55: FFree1Ad var_88
  loc_AC6D58: FFree1Var var_98 = ""
  loc_AC6D5B: ILdRf var_194
  loc_AC6D5E: LitI4 0
  loc_AC6D63: EqI4
  loc_AC6D64: BranchT loc_AC6D7F
  loc_AC6D67: ILdRf var_194
  loc_AC6D6A: LitI4 2
  loc_AC6D6F: EqI4
  loc_AC6D70: BranchT loc_AC6D7F
  loc_AC6D73: ILdRf var_194
  loc_AC6D76: LitI4 3
  loc_AC6D7B: EqI4
  loc_AC6D7C: BranchF loc_AC6E14
  loc_AC6D7F: FLdPr Me
  loc_AC6D82: VCallAd Control_ID_DetaAsieFlex
  loc_AC6D85: FStAdFunc var_88
  loc_AC6D88: FLdPr var_88
  loc_AC6D8B: LateIdLdVar var_98 DispID_0 0
  loc_AC6D92: CStrVarTmp
  loc_AC6D93: FStStrNoPop var_190
  loc_AC6D96: LitStr vbNullString
  loc_AC6D99: NeStr
  loc_AC6D9B: FFree1Str var_190
  loc_AC6D9E: FFree1Ad var_88
  loc_AC6DA1: FFree1Var var_98 = ""
  loc_AC6DA4: BranchF loc_AC6E14
  loc_AC6DA7: FLdPr Me
  loc_AC6DAA: VCallAd Control_ID_DetaAsieFlex
  loc_AC6DAD: FStAdFunc var_88
  loc_AC6DB0: FLdPr var_88
  loc_AC6DB3: LateIdLdVar var_98 DispID_0 0
  loc_AC6DBA: PopAd
  loc_AC6DBC: FLdPr Me
  loc_AC6DBF: VCallAd Control_ID_DetaAsieFlex
  loc_AC6DC2: FStAdFunc var_BC
  loc_AC6DC5: FLdPr var_BC
  loc_AC6DC8: LateIdLdVar var_CC DispID_0 0
  loc_AC6DCF: CStrVarTmp
  loc_AC6DD0: FStStrNoPop var_190
  loc_AC6DD3: FnLenStr
  loc_AC6DD4: LitI4 1
  loc_AC6DD9: SubI4
  loc_AC6DDA: FLdRfVar var_98
  loc_AC6DDD: CStrVarTmp
  loc_AC6DDE: FStStrNoPop var_198
  loc_AC6DE1: ImpAdCallI2 Left$(, )
  loc_AC6DE6: CVarStr var_DC
  loc_AC6DE9: PopAdLdVar
  loc_AC6DEA: FLdPr Me
  loc_AC6DED: VCallAd Control_ID_DetaAsieFlex
  loc_AC6DF0: FStAdFunc var_184
  loc_AC6DF3: FLdPr var_184
  loc_AC6DF6: LateIdSt
  loc_AC6DFB: FFreeStr var_190 = ""
  loc_AC6E02: FFreeAd var_88 = "": var_BC = ""
  loc_AC6E0B: FFreeVar var_98 = "": var_CC = ""
  loc_AC6E14: Branch loc_AC7055
  loc_AC6E17: FLdPr Me
  loc_AC6E1A: VCallAd Control_ID_DetaAsieFlex
  loc_AC6E1D: FStAdFunc var_88
  loc_AC6E20: FLdPr var_88
  loc_AC6E23: LateIdLdVar var_98 DispID_11 0
  loc_AC6E2A: CI4Var
  loc_AC6E2C: FStR4 var_19C
  loc_AC6E2F: FFree1Ad var_88
  loc_AC6E32: FFree1Var var_98 = ""
  loc_AC6E35: ILdRf var_19C
  loc_AC6E38: LitI4 0
  loc_AC6E3D: EqI4
  loc_AC6E3E: BranchF loc_AC6EDC
  loc_AC6E41: LitStr "1234567890"
  loc_AC6E44: FStStrCopy var_190
  loc_AC6E47: FLdRfVar var_190
  loc_AC6E4A: ILdRf KeyAscii
  loc_AC6E4D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC6E52: IStI2 KeyAscii
  loc_AC6E55: FFree1Str var_190
  loc_AC6E58: FLdPr Me
  loc_AC6E5B: VCallAd Control_ID_DetaAsieFlex
  loc_AC6E5E: FStAdFunc var_88
  loc_AC6E61: FLdPr var_88
  loc_AC6E64: LateIdLdVar var_98 DispID_0 0
  loc_AC6E6B: CStrVarTmp
  loc_AC6E6C: FStStrNoPop var_190
  loc_AC6E6F: FnLenStr
  loc_AC6E70: LitI2_Byte &HA
  loc_AC6E72: CI2UI1
  loc_AC6E74: LitI2_Byte 1
  loc_AC6E76: SubI2
  loc_AC6E77: CI4UI1
  loc_AC6E78: LeI4
  loc_AC6E79: FFree1Str var_190
  loc_AC6E7C: FFree1Ad var_88
  loc_AC6E7F: FFree1Var var_98 = ""
  loc_AC6E82: BranchF loc_AC6ED9
  loc_AC6E85: FLdPr Me
  loc_AC6E88: VCallAd Control_ID_DetaAsieFlex
  loc_AC6E8B: FStAdFunc var_88
  loc_AC6E8E: FLdPr var_88
  loc_AC6E91: LateIdLdVar var_98 DispID_0 0
  loc_AC6E98: CStrVarTmp
  loc_AC6E99: CVarStr var_DC
  loc_AC6E9C: ILdI2 KeyAscii
  loc_AC6E9F: CI4UI1
  loc_AC6EA0: FLdRfVar var_CC
  loc_AC6EA3: ImpAdCallFPR4  = Chr()
  loc_AC6EA8: FLdRfVar var_CC
  loc_AC6EAB: AddVar var_EC
  loc_AC6EAF: CStrVarTmp
  loc_AC6EB0: CVarStr var_FC
  loc_AC6EB3: PopAdLdVar
  loc_AC6EB4: FLdPr Me
  loc_AC6EB7: VCallAd Control_ID_DetaAsieFlex
  loc_AC6EBA: FStAdFunc var_BC
  loc_AC6EBD: FLdPr var_BC
  loc_AC6EC0: LateIdSt
  loc_AC6EC5: FFreeAd var_88 = ""
  loc_AC6ECC: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC6ED9: Branch loc_AC7055
  loc_AC6EDC: ILdRf var_19C
  loc_AC6EDF: LitI4 2
  loc_AC6EE4: EqI4
  loc_AC6EE5: BranchF loc_AC6F9A
  loc_AC6EE8: ILdI2 KeyAscii
  loc_AC6EEB: LitStr "."
  loc_AC6EEE: ImpAdCallI2 Asc()
  loc_AC6EF3: EqI2
  loc_AC6EF4: BranchF loc_AC6F02
  loc_AC6EF7: LitStr ","
  loc_AC6EFA: ImpAdCallI2 Asc()
  loc_AC6EFF: IStI2 KeyAscii
  loc_AC6F02: LitStr "1234567890,"
  loc_AC6F05: FStStrCopy var_190
  loc_AC6F08: FLdRfVar var_190
  loc_AC6F0B: ILdRf KeyAscii
  loc_AC6F0E: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC6F13: IStI2 KeyAscii
  loc_AC6F16: FFree1Str var_190
  loc_AC6F19: FLdPr Me
  loc_AC6F1C: VCallAd Control_ID_DetaAsieFlex
  loc_AC6F1F: FStAdFunc var_88
  loc_AC6F22: FLdPr var_88
  loc_AC6F25: LateIdLdVar var_98 DispID_0 0
  loc_AC6F2C: CStrVarTmp
  loc_AC6F2D: FStStrNoPop var_190
  loc_AC6F30: FnLenStr
  loc_AC6F31: LitI4 &HC
  loc_AC6F36: LeI4
  loc_AC6F37: FFree1Str var_190
  loc_AC6F3A: FFree1Ad var_88
  loc_AC6F3D: FFree1Var var_98 = ""
  loc_AC6F40: BranchF loc_AC6F97
  loc_AC6F43: FLdPr Me
  loc_AC6F46: VCallAd Control_ID_DetaAsieFlex
  loc_AC6F49: FStAdFunc var_88
  loc_AC6F4C: FLdPr var_88
  loc_AC6F4F: LateIdLdVar var_98 DispID_0 0
  loc_AC6F56: CStrVarTmp
  loc_AC6F57: CVarStr var_DC
  loc_AC6F5A: ILdI2 KeyAscii
  loc_AC6F5D: CI4UI1
  loc_AC6F5E: FLdRfVar var_CC
  loc_AC6F61: ImpAdCallFPR4  = Chr()
  loc_AC6F66: FLdRfVar var_CC
  loc_AC6F69: AddVar var_EC
  loc_AC6F6D: CStrVarTmp
  loc_AC6F6E: CVarStr var_FC
  loc_AC6F71: PopAdLdVar
  loc_AC6F72: FLdPr Me
  loc_AC6F75: VCallAd Control_ID_DetaAsieFlex
  loc_AC6F78: FStAdFunc var_BC
  loc_AC6F7B: FLdPr var_BC
  loc_AC6F7E: LateIdSt
  loc_AC6F83: FFreeAd var_88 = ""
  loc_AC6F8A: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC6F97: Branch loc_AC7055
  loc_AC6F9A: ILdRf var_19C
  loc_AC6F9D: LitI4 3
  loc_AC6FA2: EqI4
  loc_AC6FA3: BranchF loc_AC7055
  loc_AC6FA6: ILdI2 KeyAscii
  loc_AC6FA9: LitStr "."
  loc_AC6FAC: ImpAdCallI2 Asc()
  loc_AC6FB1: EqI2
  loc_AC6FB2: BranchF loc_AC6FC0
  loc_AC6FB5: LitStr ","
  loc_AC6FB8: ImpAdCallI2 Asc()
  loc_AC6FBD: IStI2 KeyAscii
  loc_AC6FC0: LitStr "1234567890,"
  loc_AC6FC3: FStStrCopy var_190
  loc_AC6FC6: FLdRfVar var_190
  loc_AC6FC9: ILdRf KeyAscii
  loc_AC6FCC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC6FD1: IStI2 KeyAscii
  loc_AC6FD4: FFree1Str var_190
  loc_AC6FD7: FLdPr Me
  loc_AC6FDA: VCallAd Control_ID_DetaAsieFlex
  loc_AC6FDD: FStAdFunc var_88
  loc_AC6FE0: FLdPr var_88
  loc_AC6FE3: LateIdLdVar var_98 DispID_0 0
  loc_AC6FEA: CStrVarTmp
  loc_AC6FEB: FStStrNoPop var_190
  loc_AC6FEE: FnLenStr
  loc_AC6FEF: LitI4 &HC
  loc_AC6FF4: LeI4
  loc_AC6FF5: FFree1Str var_190
  loc_AC6FF8: FFree1Ad var_88
  loc_AC6FFB: FFree1Var var_98 = ""
  loc_AC6FFE: BranchF loc_AC7055
  loc_AC7001: FLdPr Me
  loc_AC7004: VCallAd Control_ID_DetaAsieFlex
  loc_AC7007: FStAdFunc var_88
  loc_AC700A: FLdPr var_88
  loc_AC700D: LateIdLdVar var_98 DispID_0 0
  loc_AC7014: CStrVarTmp
  loc_AC7015: CVarStr var_DC
  loc_AC7018: ILdI2 KeyAscii
  loc_AC701B: CI4UI1
  loc_AC701C: FLdRfVar var_CC
  loc_AC701F: ImpAdCallFPR4  = Chr()
  loc_AC7024: FLdRfVar var_CC
  loc_AC7027: AddVar var_EC
  loc_AC702B: CStrVarTmp
  loc_AC702C: CVarStr var_FC
  loc_AC702F: PopAdLdVar
  loc_AC7030: FLdPr Me
  loc_AC7033: VCallAd Control_ID_DetaAsieFlex
  loc_AC7036: FStAdFunc var_BC
  loc_AC7039: FLdPr var_BC
  loc_AC703C: LateIdSt
  loc_AC7041: FFreeAd var_88 = ""
  loc_AC7048: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC7055: ExitProcHresult
End Sub

Private Sub DetaAsieFlex_LeaveCell() 'AC5D64
  'Data Table: 464380
  loc_AC5760: LitI2_Byte 0
  loc_AC5762: CR8I2
  loc_AC5763: FLdPr Me
  loc_AC5766: MemStFPR8 global_64
  loc_AC5769: LitI2_Byte 0
  loc_AC576B: CR8I2
  loc_AC576C: FLdPr Me
  loc_AC576F: MemStFPR8 global_72
  loc_AC5772: FLdPr Me
  loc_AC5775: VCallAd Control_ID_DetaAsieFlex
  loc_AC5778: FStAdFunc var_88
  loc_AC577B: FLdPr var_88
  loc_AC577E: LateIdLdVar var_98 DispID_10 0
  loc_AC5785: CI4Var
  loc_AC5787: LitI4 0
  loc_AC578C: GtI4
  loc_AC578D: FFree1Ad var_88
  loc_AC5790: FFree1Var var_98 = ""
  loc_AC5793: BranchF loc_AC5D1E
  loc_AC5796: FLdPr Me
  loc_AC5799: VCallAd Control_ID_DetaAsieFlex
  loc_AC579C: FStAdFunc var_88
  loc_AC579F: FLdPr var_88
  loc_AC57A2: LateIdLdVar var_98 DispID_10 0
  loc_AC57A9: CI4Var
  loc_AC57AB: CVarI4
  loc_AC57AF: PopAdLdVar
  loc_AC57B0: LitVarI4
  loc_AC57B8: PopAdLdVar
  loc_AC57B9: FLdPr Me
  loc_AC57BC: VCallAd Control_ID_DetaAsieFlex
  loc_AC57BF: FStAdFunc var_DC
  loc_AC57C2: FLdPr var_DC
  loc_AC57C5: LateIdCallLdVar
  loc_AC57CF: CStrVarTmp
  loc_AC57D0: FStStrNoPop var_F0
  loc_AC57D3: LitStr vbNullString
  loc_AC57D6: NeStr
  loc_AC57D8: FFree1Str var_F0
  loc_AC57DB: FFreeAd var_88 = ""
  loc_AC57E2: FFreeVar var_98 = ""
  loc_AC57E9: BranchF loc_AC58AA
  loc_AC57EC: FLdPr Me
  loc_AC57EF: VCallAd Control_ID_DetaAsieFlex
  loc_AC57F2: FStAdFunc var_88
  loc_AC57F5: FLdPr var_88
  loc_AC57F8: LateIdLdVar var_98 DispID_11 0
  loc_AC57FF: CI4Var
  loc_AC5801: LitI4 0
  loc_AC5806: EqI4
  loc_AC5807: FFree1Ad var_88
  loc_AC580A: FFree1Var var_98 = ""
  loc_AC580D: BranchF loc_AC58A7
  loc_AC5810: FLdPr Me
  loc_AC5813: VCallAd Control_ID_DetaAsieFlex
  loc_AC5816: FStAdFunc var_88
  loc_AC5819: FLdPr var_88
  loc_AC581C: LateIdLdVar var_98 DispID_0 0
  loc_AC5823: CStrVarTmp
  loc_AC5824: FStStrNoPop var_F0
  loc_AC5827: LitStr vbNullString
  loc_AC582A: NeStr
  loc_AC582C: FFree1Str var_F0
  loc_AC582F: FFree1Ad var_88
  loc_AC5832: FFree1Var var_98 = ""
  loc_AC5835: BranchF loc_AC5860
  loc_AC5838: FLdPr Me
  loc_AC583B: VCallAd Control_ID_DetaAsieFlex
  loc_AC583E: FStAdFunc var_88
  loc_AC5841: FLdPr var_88
  loc_AC5844: LateIdLdVar var_98 DispID_0 0
  loc_AC584B: CStrVarTmp
  loc_AC584C: FStStrNoPop var_F0
  loc_AC584F: Call Proc_104_21_B655E0()
  loc_AC5854: FFree1Str var_F0
  loc_AC5857: FFree1Ad var_88
  loc_AC585A: FFree1Var var_98 = ""
  loc_AC585D: Branch loc_AC58A7
  loc_AC5860: FLdPr Me
  loc_AC5863: VCallAd Control_ID_DetaAsieFlex
  loc_AC5866: FStAdFunc var_88
  loc_AC5869: FLdPr var_88
  loc_AC586C: LateIdLdVar var_98 DispID_10 0
  loc_AC5873: CI4Var
  loc_AC5875: CVarI4
  loc_AC5879: PopAdLdVar
  loc_AC587A: LitVarI4
  loc_AC5882: PopAdLdVar
  loc_AC5883: LitVarStr var_100, vbNullString
  loc_AC5888: PopAdLdVar
  loc_AC5889: FLdPr Me
  loc_AC588C: VCallAd Control_ID_DetaAsieFlex
  loc_AC588F: FStAdFunc var_DC
  loc_AC5892: FLdPr var_DC
  loc_AC5895: LateIdCallSt
  loc_AC589D: FFreeAd var_88 = ""
  loc_AC58A4: FFree1Var var_98 = ""
  loc_AC58A7: Branch loc_AC58F1
  loc_AC58AA: FLdPr Me
  loc_AC58AD: VCallAd Control_ID_DetaAsieFlex
  loc_AC58B0: FStAdFunc var_88
  loc_AC58B3: FLdPr var_88
  loc_AC58B6: LateIdLdVar var_98 DispID_10 0
  loc_AC58BD: CI4Var
  loc_AC58BF: CVarI4
  loc_AC58C3: PopAdLdVar
  loc_AC58C4: LitVarI4
  loc_AC58CC: PopAdLdVar
  loc_AC58CD: LitVarStr var_100, vbNullString
  loc_AC58D2: PopAdLdVar
  loc_AC58D3: FLdPr Me
  loc_AC58D6: VCallAd Control_ID_DetaAsieFlex
  loc_AC58D9: FStAdFunc var_DC
  loc_AC58DC: FLdPr var_DC
  loc_AC58DF: LateIdCallSt
  loc_AC58E7: FFreeAd var_88 = ""
  loc_AC58EE: FFree1Var var_98 = ""
  loc_AC58F1: FLdPr Me
  loc_AC58F4: VCallAd Control_ID_DetaAsieFlex
  loc_AC58F7: FStAdFunc var_88
  loc_AC58FA: FLdPr var_88
  loc_AC58FD: LateIdLdVar var_98 DispID_10 0
  loc_AC5904: CI4Var
  loc_AC5906: CVarI4
  loc_AC590A: PopAdLdVar
  loc_AC590B: LitVarI4
  loc_AC5913: PopAdLdVar
  loc_AC5914: FLdPr Me
  loc_AC5917: VCallAd Control_ID_DetaAsieFlex
  loc_AC591A: FStAdFunc var_DC
  loc_AC591D: FLdPr var_DC
  loc_AC5920: LateIdCallLdVar
  loc_AC592A: CStrVarTmp
  loc_AC592B: FStStrNoPop var_F0
  loc_AC592E: LitStr vbNullString
  loc_AC5931: NeStr
  loc_AC5933: FFree1Str var_F0
  loc_AC5936: FFreeAd var_88 = ""
  loc_AC593D: FFreeVar var_98 = ""
  loc_AC5944: BranchF loc_AC5A1C
  loc_AC5947: FLdPr Me
  loc_AC594A: VCallAd Control_ID_DetaAsieFlex
  loc_AC594D: FStAdFunc var_88
  loc_AC5950: FLdPr var_88
  loc_AC5953: LateIdLdVar var_98 DispID_11 0
  loc_AC595A: CI4Var
  loc_AC595C: LitI4 2
  loc_AC5961: EqI4
  loc_AC5962: FFree1Ad var_88
  loc_AC5965: FFree1Var var_98 = ""
  loc_AC5968: BranchF loc_AC5A1C
  loc_AC596B: FLdPr Me
  loc_AC596E: VCallAd Control_ID_DetaAsieFlex
  loc_AC5971: FStAdFunc var_88
  loc_AC5974: FLdPr var_88
  loc_AC5977: LateIdLdVar var_98 DispID_0 0
  loc_AC597E: PopAd
  loc_AC5980: LitI4 1
  loc_AC5985: LitI4 1
  loc_AC598A: LitVarStr var_A8, "0.00"
  loc_AC598F: FStVarCopyObj var_120
  loc_AC5992: FLdRfVar var_120
  loc_AC5995: FLdRfVar var_98
  loc_AC5998: CStrVarTmp
  loc_AC5999: CVarStr var_EC
  loc_AC599C: FLdRfVar var_130
  loc_AC599F: ImpAdCallFPR4  = Format(, )
  loc_AC59A4: FLdRfVar var_130
  loc_AC59A7: CStrVarTmp
  loc_AC59A8: CVarStr var_140
  loc_AC59AB: PopAdLdVar
  loc_AC59AC: FLdPr Me
  loc_AC59AF: VCallAd Control_ID_DetaAsieFlex
  loc_AC59B2: FStAdFunc var_DC
  loc_AC59B5: FLdPr var_DC
  loc_AC59B8: LateIdSt
  loc_AC59BD: FFreeAd var_88 = ""
  loc_AC59C4: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC59D1: FLdPr Me
  loc_AC59D4: VCallAd Control_ID_DetaAsieFlex
  loc_AC59D7: FStAdFunc var_88
  loc_AC59DA: FLdPr var_88
  loc_AC59DD: LateIdLdVar var_98 DispID_10 0
  loc_AC59E4: CI4Var
  loc_AC59E6: CVarI4
  loc_AC59EA: PopAdLdVar
  loc_AC59EB: LitVarI4
  loc_AC59F3: PopAdLdVar
  loc_AC59F4: FLdPr Me
  loc_AC59F7: MemLdRfVar from_stack_1.global_88
  loc_AC59FA: CDargRef
  loc_AC59FE: FLdPr Me
  loc_AC5A01: VCallAd Control_ID_DetaAsieFlex
  loc_AC5A04: FStAdFunc var_DC
  loc_AC5A07: FLdPr var_DC
  loc_AC5A0A: LateIdCallSt
  loc_AC5A12: FFreeAd var_88 = ""
  loc_AC5A19: FFree1Var var_98 = ""
  loc_AC5A1C: FLdPr Me
  loc_AC5A1F: VCallAd Control_ID_DetaAsieFlex
  loc_AC5A22: FStAdFunc var_88
  loc_AC5A25: FLdPr var_88
  loc_AC5A28: LateIdLdVar var_98 DispID_10 0
  loc_AC5A2F: CI4Var
  loc_AC5A31: CVarI4
  loc_AC5A35: PopAdLdVar
  loc_AC5A36: LitVarI4
  loc_AC5A3E: PopAdLdVar
  loc_AC5A3F: FLdPr Me
  loc_AC5A42: VCallAd Control_ID_DetaAsieFlex
  loc_AC5A45: FStAdFunc var_DC
  loc_AC5A48: FLdPr var_DC
  loc_AC5A4B: LateIdCallLdVar
  loc_AC5A55: CStrVarTmp
  loc_AC5A56: FStStrNoPop var_F0
  loc_AC5A59: LitStr vbNullString
  loc_AC5A5C: NeStr
  loc_AC5A5E: FFree1Str var_F0
  loc_AC5A61: FFreeAd var_88 = ""
  loc_AC5A68: FFreeVar var_98 = ""
  loc_AC5A6F: BranchF loc_AC5B47
  loc_AC5A72: FLdPr Me
  loc_AC5A75: VCallAd Control_ID_DetaAsieFlex
  loc_AC5A78: FStAdFunc var_88
  loc_AC5A7B: FLdPr var_88
  loc_AC5A7E: LateIdLdVar var_98 DispID_11 0
  loc_AC5A85: CI4Var
  loc_AC5A87: LitI4 3
  loc_AC5A8C: EqI4
  loc_AC5A8D: FFree1Ad var_88
  loc_AC5A90: FFree1Var var_98 = ""
  loc_AC5A93: BranchF loc_AC5B47
  loc_AC5A96: FLdPr Me
  loc_AC5A99: VCallAd Control_ID_DetaAsieFlex
  loc_AC5A9C: FStAdFunc var_88
  loc_AC5A9F: FLdPr var_88
  loc_AC5AA2: LateIdLdVar var_98 DispID_0 0
  loc_AC5AA9: PopAd
  loc_AC5AAB: LitI4 1
  loc_AC5AB0: LitI4 1
  loc_AC5AB5: LitVarStr var_A8, "0.00"
  loc_AC5ABA: FStVarCopyObj var_120
  loc_AC5ABD: FLdRfVar var_120
  loc_AC5AC0: FLdRfVar var_98
  loc_AC5AC3: CStrVarTmp
  loc_AC5AC4: CVarStr var_EC
  loc_AC5AC7: FLdRfVar var_130
  loc_AC5ACA: ImpAdCallFPR4  = Format(, )
  loc_AC5ACF: FLdRfVar var_130
  loc_AC5AD2: CStrVarTmp
  loc_AC5AD3: CVarStr var_140
  loc_AC5AD6: PopAdLdVar
  loc_AC5AD7: FLdPr Me
  loc_AC5ADA: VCallAd Control_ID_DetaAsieFlex
  loc_AC5ADD: FStAdFunc var_DC
  loc_AC5AE0: FLdPr var_DC
  loc_AC5AE3: LateIdSt
  loc_AC5AE8: FFreeAd var_88 = ""
  loc_AC5AEF: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC5AFC: FLdPr Me
  loc_AC5AFF: VCallAd Control_ID_DetaAsieFlex
  loc_AC5B02: FStAdFunc var_88
  loc_AC5B05: FLdPr var_88
  loc_AC5B08: LateIdLdVar var_98 DispID_10 0
  loc_AC5B0F: CI4Var
  loc_AC5B11: CVarI4
  loc_AC5B15: PopAdLdVar
  loc_AC5B16: LitVarI4
  loc_AC5B1E: PopAdLdVar
  loc_AC5B1F: FLdPr Me
  loc_AC5B22: MemLdRfVar from_stack_1.global_84
  loc_AC5B25: CDargRef
  loc_AC5B29: FLdPr Me
  loc_AC5B2C: VCallAd Control_ID_DetaAsieFlex
  loc_AC5B2F: FStAdFunc var_DC
  loc_AC5B32: FLdPr var_DC
  loc_AC5B35: LateIdCallSt
  loc_AC5B3D: FFreeAd var_88 = ""
  loc_AC5B44: FFree1Var var_98 = ""
  loc_AC5B47: LitI2_Byte 1
  loc_AC5B49: FLdPr Me
  loc_AC5B4C: MemLdRfVar from_stack_1.global_80
  loc_AC5B4F: FLdPr Me
  loc_AC5B52: VCallAd Control_ID_DetaAsieFlex
  loc_AC5B55: FStAdFunc var_88
  loc_AC5B58: FLdPr var_88
  loc_AC5B5B: LateIdLdVar var_98 DispID_4 0
  loc_AC5B62: CI4Var
  loc_AC5B64: LitI4 1
  loc_AC5B69: SubI4
  loc_AC5B6A: CI2I4
  loc_AC5B6B: FFree1Ad var_88
  loc_AC5B6E: FFree1Var var_98 = ""
  loc_AC5B71: ForI2 var_144
  loc_AC5B77: FLdPr Me
  loc_AC5B7A: MemLdI2 global_80
  loc_AC5B7D: CI4UI1
  loc_AC5B7E: CVarI4
  loc_AC5B82: PopAdLdVar
  loc_AC5B83: LitVarI4
  loc_AC5B8B: PopAdLdVar
  loc_AC5B8C: FLdPr Me
  loc_AC5B8F: VCallAd Control_ID_DetaAsieFlex
  loc_AC5B92: FStAdFunc var_88
  loc_AC5B95: FLdPr var_88
  loc_AC5B98: LateIdCallLdVar
  loc_AC5BA2: CStrVarTmp
  loc_AC5BA3: CVarStr var_EC
  loc_AC5BA6: ImpAdCallI2 IsNumeric()
  loc_AC5BAB: FFree1Ad var_88
  loc_AC5BAE: FFreeVar var_98 = ""
  loc_AC5BB5: BranchF loc_AC5C45
  loc_AC5BB8: FLdPr Me
  loc_AC5BBB: MemLdI2 global_80
  loc_AC5BBE: CI4UI1
  loc_AC5BBF: CVarI4
  loc_AC5BC3: PopAdLdVar
  loc_AC5BC4: LitVarI4
  loc_AC5BCC: PopAdLdVar
  loc_AC5BCD: FLdPr Me
  loc_AC5BD0: VCallAd Control_ID_DetaAsieFlex
  loc_AC5BD3: FStAdFunc var_88
  loc_AC5BD6: FLdPr var_88
  loc_AC5BD9: LateIdCallLdVar
  loc_AC5BE3: CStrVarTmp
  loc_AC5BE4: CVarStr var_EC
  loc_AC5BE7: ImpAdCallI2 IsNumeric()
  loc_AC5BEC: FFree1Ad var_88
  loc_AC5BEF: FFreeVar var_98 = ""
  loc_AC5BF6: BranchF loc_AC5C45
  loc_AC5BF9: FLdPr Me
  loc_AC5BFC: MemLdI2 global_80
  loc_AC5BFF: CI4UI1
  loc_AC5C00: CVarI4
  loc_AC5C04: PopAdLdVar
  loc_AC5C05: LitVarI4
  loc_AC5C0D: PopAdLdVar
  loc_AC5C0E: FLdPr Me
  loc_AC5C11: VCallAd Control_ID_DetaAsieFlex
  loc_AC5C14: FStAdFunc var_88
  loc_AC5C17: FLdPr var_88
  loc_AC5C1A: LateIdCallLdVar
  loc_AC5C24: PopAd
  loc_AC5C26: FLdPr Me
  loc_AC5C29: MemLdFPR8 global_64
  loc_AC5C2C: FLdRfVar var_98
  loc_AC5C2F: CStrVarTmp
  loc_AC5C30: FStStrNoPop var_F0
  loc_AC5C33: CR8Str
  loc_AC5C35: AddR8
  loc_AC5C36: FLdPr Me
  loc_AC5C39: MemStFPR8 global_64
  loc_AC5C3C: FFree1Str var_F0
  loc_AC5C3F: FFree1Ad var_88
  loc_AC5C42: FFree1Var var_98 = ""
  loc_AC5C45: FLdPr Me
  loc_AC5C48: MemLdI2 global_80
  loc_AC5C4B: CI4UI1
  loc_AC5C4C: CVarI4
  loc_AC5C50: PopAdLdVar
  loc_AC5C51: LitVarI4
  loc_AC5C59: PopAdLdVar
  loc_AC5C5A: FLdPr Me
  loc_AC5C5D: VCallAd Control_ID_DetaAsieFlex
  loc_AC5C60: FStAdFunc var_88
  loc_AC5C63: FLdPr var_88
  loc_AC5C66: LateIdCallLdVar
  loc_AC5C70: CStrVarTmp
  loc_AC5C71: CVarStr var_EC
  loc_AC5C74: ImpAdCallI2 IsNumeric()
  loc_AC5C79: FFree1Ad var_88
  loc_AC5C7C: FFreeVar var_98 = ""
  loc_AC5C83: BranchF loc_AC5D13
  loc_AC5C86: FLdPr Me
  loc_AC5C89: MemLdI2 global_80
  loc_AC5C8C: CI4UI1
  loc_AC5C8D: CVarI4
  loc_AC5C91: PopAdLdVar
  loc_AC5C92: LitVarI4
  loc_AC5C9A: PopAdLdVar
  loc_AC5C9B: FLdPr Me
  loc_AC5C9E: VCallAd Control_ID_DetaAsieFlex
  loc_AC5CA1: FStAdFunc var_88
  loc_AC5CA4: FLdPr var_88
  loc_AC5CA7: LateIdCallLdVar
  loc_AC5CB1: CStrVarTmp
  loc_AC5CB2: CVarStr var_EC
  loc_AC5CB5: ImpAdCallI2 IsNumeric()
  loc_AC5CBA: FFree1Ad var_88
  loc_AC5CBD: FFreeVar var_98 = ""
  loc_AC5CC4: BranchF loc_AC5D13
  loc_AC5CC7: FLdPr Me
  loc_AC5CCA: MemLdI2 global_80
  loc_AC5CCD: CI4UI1
  loc_AC5CCE: CVarI4
  loc_AC5CD2: PopAdLdVar
  loc_AC5CD3: LitVarI4
  loc_AC5CDB: PopAdLdVar
  loc_AC5CDC: FLdPr Me
  loc_AC5CDF: VCallAd Control_ID_DetaAsieFlex
  loc_AC5CE2: FStAdFunc var_88
  loc_AC5CE5: FLdPr var_88
  loc_AC5CE8: LateIdCallLdVar
  loc_AC5CF2: PopAd
  loc_AC5CF4: FLdPr Me
  loc_AC5CF7: MemLdFPR8 global_72
  loc_AC5CFA: FLdRfVar var_98
  loc_AC5CFD: CStrVarTmp
  loc_AC5CFE: FStStrNoPop var_F0
  loc_AC5D01: CR8Str
  loc_AC5D03: AddR8
  loc_AC5D04: FLdPr Me
  loc_AC5D07: MemStFPR8 global_72
  loc_AC5D0A: FFree1Str var_F0
  loc_AC5D0D: FFree1Ad var_88
  loc_AC5D10: FFree1Var var_98 = ""
  loc_AC5D13: FLdPr Me
  loc_AC5D16: MemLdRfVar from_stack_1.global_80
  loc_AC5D19: NextI2 var_144, loc_AC5B77
  loc_AC5D1E: FLdPr Me
  loc_AC5D21: MemLdFPR8 global_64
  loc_AC5D24: CStrR8
  loc_AC5D26: FStStrNoPop var_F0
  loc_AC5D29: FLdPr Me
  loc_AC5D2C: VCallAd Control_ID_TotaDebeLbl
  loc_AC5D2F: FStAdFunc var_88
  loc_AC5D32: FLdPr var_88
  loc_AC5D35: Me.Caption = from_stack_1
  loc_AC5D3A: FFree1Str var_F0
  loc_AC5D3D: FFree1Ad var_88
  loc_AC5D40: FLdPr Me
  loc_AC5D43: MemLdFPR8 global_72
  loc_AC5D46: CStrR8
  loc_AC5D48: FStStrNoPop var_F0
  loc_AC5D4B: FLdPr Me
  loc_AC5D4E: VCallAd Control_ID_TotaHaberLbl
  loc_AC5D51: FStAdFunc var_88
  loc_AC5D54: FLdPr var_88
  loc_AC5D57: Me.Caption = from_stack_1
  loc_AC5D5C: FFree1Str var_F0
  loc_AC5D5F: FFree1Ad var_88
  loc_AC5D62: ExitProcHresult
End Sub

Private Sub CodiTiasMsk_UnknownEvent_0 '951618
  'Data Table: 464380
  loc_951604: FLdPr Me
  loc_951607: VCallAd Control_ID_CodiTiasMsk
  loc_95160A: CVarAd
  loc_95160E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951613: FFree1Var var_94 = ""
  loc_951616: ExitProcHresult
End Sub

Private Function CodiTiasMsk_UnknownEvent_8(arg_C) 'A028F4
  'Data Table: 464380
  loc_A027A4: FLdPr Me
  loc_A027A7: VCallAd Control_ID_CodiTiasMsk
  loc_A027AA: FStAdFunc var_88
  loc_A027AD: FLdPr var_88
  loc_A027B0: LateIdLdVar var_98 DispID_13 -32767
  loc_A027B7: CBoolVar
  loc_A027B9: FLdRfVar var_9E
  loc_A027BC: FLdPr Me
  loc_A027BF: VCallAd Control_ID_cmdCancelar
  loc_A027C2: FStAdFunc var_9C
  loc_A027C5: FLdPr var_9C
  loc_A027C8:  = Me.Value
  loc_A027CD: FLdI2 var_9E
  loc_A027D0: NotI4
  loc_A027D1: AndI4
  loc_A027D2: FFreeAd var_88 = ""
  loc_A027D9: FFree1Var var_98 = ""
  loc_A027DC: BranchF loc_A028F1
  loc_A027DF: FLdPr Me
  loc_A027E2: VCallAd Control_ID_CodiTiasMsk
  loc_A027E5: FStAdFunc var_88
  loc_A027E8: FLdPr var_88
  loc_A027EB: LateIdLdVar var_98 DispID_22 0
  loc_A027F2: PopAd
  loc_A027F4: FLdPr Me
  loc_A027F7: MemLdRfVar from_stack_1.global_96
  loc_A027FA: NewIfNullRf
  loc_A027FE: FLdRfVar var_98
  loc_A02801: CStrVarTmp
  loc_A02802: FStStrNoPop var_A4
  loc_A02805: ImpAdCallI2 Proc_266_9_99B050(, )
  loc_A0280A: FStStrNoPop var_A8
  loc_A0280D: FLdPr Me
  loc_A02810: MemStStrCopy
  loc_A02814: FFreeStr var_A4 = ""
  loc_A0281B: FFree1Ad var_88
  loc_A0281E: FFree1Var var_98 = ""
  loc_A02821: FLdPr Me
  loc_A02824: VCallAd Control_ID_CodiTiasMsk
  loc_A02827: FStAdFunc var_B0
  loc_A0282A: FLdPr Me
  loc_A0282D: VCallAd Control_ID_DetaTiasLbl
  loc_A02830: FStAdFunc var_AC
  loc_A02833: FLdRfVar var_AC
  loc_A02836: FLdZeroAd var_B0
  loc_A02839: FStAdFuncNoPop
  loc_A0283C: CastAd
  loc_A0283F: FStAdFunc var_9C
  loc_A02842: FLdRfVar var_9C
  loc_A02845: FLdPr Me
  loc_A02848: MemLdRfVar from_stack_1.global_60
  loc_A0284B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A02850: IStI2 arg_C
  loc_A02853: FFreeAd var_88 = "": var_9C = "": var_AC = ""
  loc_A0285E: ILdI2 arg_C
  loc_A02861: NotI4
  loc_A02862: BranchF loc_A028F1
  loc_A02865: FLdRfVar var_A4
  loc_A02868: FLdPr Me
  loc_A0286B: MemLdRfVar from_stack_1.global_96
  loc_A0286E: NewIfNullPr tbltipoasiento
  loc_A02871: from_stack_1v = tbltipoasiento.DetaTiasGet()
  loc_A02876: ILdRf var_A4
  loc_A02879: FLdPr Me
  loc_A0287C: VCallAd Control_ID_DetaTiasLbl
  loc_A0287F: FStAdFunc var_88
  loc_A02882: FLdPr var_88
  loc_A02885: Me.Caption = from_stack_1
  loc_A0288A: FFree1Str var_A4
  loc_A0288D: FFree1Ad var_88
  loc_A02890: FLdPr Me
  loc_A02893: VCallAd Control_ID_CodiTiasMsk
  loc_A02896: FStAdFunc var_88
  loc_A02899: FLdPr var_88
  loc_A0289C: LateIdLdVar var_98 DispID_22 0
  loc_A028A3: CStrVarTmp
  loc_A028A4: FStStrNoPop var_A4
  loc_A028A7: LitStr "7"
  loc_A028AA: EqStr
  loc_A028AC: FLdPr Me
  loc_A028AF: VCallAd Control_ID_CodiTiasMsk
  loc_A028B2: FStAdFunc var_9C
  loc_A028B5: FLdPr var_9C
  loc_A028B8: LateIdLdVar var_C0 DispID_22 0
  loc_A028BF: CStrVarTmp
  loc_A028C0: FStStrNoPop var_A8
  loc_A028C3: LitStr "8"
  loc_A028C6: EqStr
  loc_A028C8: OrI4
  loc_A028C9: FLdPr Me
  loc_A028CC: VCallAd Control_ID_NoleAsieTxt
  loc_A028CF: FStAdFunc var_AC
  loc_A028D2: FLdPr var_AC
  loc_A028D5: Me.Enabled = from_stack_1b
  loc_A028DA: FFreeStr var_A4 = ""
  loc_A028E1: FFreeAd var_88 = "": var_9C = ""
  loc_A028EA: FFreeVar var_98 = ""
  loc_A028F1: ExitProcHresult
End Function

Private Sub CodiTiasMsk_KeyPress(KeyAscii As Integer) '9EF324
  'Data Table: 464380
  loc_9EF1FC: ILdI2 KeyAscii
  loc_9EF1FF: CI4UI1
  loc_9EF200: LitI4 &H20
  loc_9EF205: EqI4
  loc_9EF206: BranchF loc_9EF321
  loc_9EF209: LitVar_Missing var_A4
  loc_9EF20C: PopAdLdVar
  loc_9EF20D: LitVarI4
  loc_9EF215: PopAdLdVar
  loc_9EF216: ImpAdLdRf MemVar_C3D774
  loc_9EF219: NewIfNullPr bscTipoAsiento
  loc_9EF21C: bscTipoAsiento.Show from_stack_1, from_stack_2
  loc_9EF221: FLdRfVar var_AC
  loc_9EF224: FLdRfVar var_A8
  loc_9EF227: ImpAdLdRf MemVar_C3D774
  loc_9EF22A: NewIfNullPr bscTipoAsiento
  loc_9EF22D: from_stack_1v = bscTipoAsiento.global_4292624Get()
  loc_9EF232: FLdPr var_A8
  loc_9EF235: from_stack_1 = clsbase.RecordCount
  loc_9EF23A: ILdRf var_AC
  loc_9EF23D: LitI4 0
  loc_9EF242: GtI4
  loc_9EF243: FFree1Ad var_A8
  loc_9EF246: BranchF loc_9EF321
  loc_9EF249: FLdRfVar var_C8
  loc_9EF24C: FLdRfVar var_B8
  loc_9EF24F: LitVarStr var_94, "CodiTias"
  loc_9EF254: PopAdLdVar
  loc_9EF255: FLdRfVar var_B4
  loc_9EF258: FLdRfVar var_B0
  loc_9EF25B: FLdRfVar var_A8
  loc_9EF25E: ImpAdLdRf MemVar_C3D774
  loc_9EF261: NewIfNullPr bscTipoAsiento
  loc_9EF264: from_stack_1v = bscTipoAsiento.global_4292624Get()
  loc_9EF269: FLdPr var_A8
  loc_9EF26C: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF271: FLdPr var_B0
  loc_9EF274:  = Me.Fields
  loc_9EF279: FLdPr var_B4
  loc_9EF27C: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF281: FLdPr var_B8
  loc_9EF284:  = Me.Value
  loc_9EF289: FLdRfVar var_C8
  loc_9EF28C: CStrVarTmp
  loc_9EF28D: CVarStr var_D8
  loc_9EF290: PopAdLdVar
  loc_9EF291: FLdPr Me
  loc_9EF294: VCallAd Control_ID_CodiTiasMsk
  loc_9EF297: FStAdFunc var_DC
  loc_9EF29A: FLdPr var_DC
  loc_9EF29D: LateIdSt
  loc_9EF2A2: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF2AF: FFreeVar var_C8 = ""
  loc_9EF2B6: FLdRfVar var_C8
  loc_9EF2B9: FLdRfVar var_B8
  loc_9EF2BC: LitVarStr var_94, "DetaTias"
  loc_9EF2C1: PopAdLdVar
  loc_9EF2C2: FLdRfVar var_B4
  loc_9EF2C5: FLdRfVar var_B0
  loc_9EF2C8: FLdRfVar var_A8
  loc_9EF2CB: ImpAdLdRf MemVar_C3D774
  loc_9EF2CE: NewIfNullPr bscTipoAsiento
  loc_9EF2D1: from_stack_1v = bscTipoAsiento.global_4292624Get()
  loc_9EF2D6: FLdPr var_A8
  loc_9EF2D9: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF2DE: FLdPr var_B0
  loc_9EF2E1:  = Me.Fields
  loc_9EF2E6: FLdPr var_B4
  loc_9EF2E9: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF2EE: FLdPr var_B8
  loc_9EF2F1:  = Me.Value
  loc_9EF2F6: FLdRfVar var_C8
  loc_9EF2F9: CStrVarTmp
  loc_9EF2FA: FStStrNoPop var_E0
  loc_9EF2FD: FLdPr Me
  loc_9EF300: VCallAd Control_ID_DetaTiasLbl
  loc_9EF303: FStAdFunc var_DC
  loc_9EF306: FLdPr var_DC
  loc_9EF309: Me.Caption = from_stack_1
  loc_9EF30E: FFree1Str var_E0
  loc_9EF311: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EF31E: FFree1Var var_C8 = ""
  loc_9EF321: ExitProcHresult
  loc_9EF322: LtI2
End Sub

Private Sub FechAsieMsk_UnknownEvent_0 'A17C98
  'Data Table: 464380
  loc_A17B38: FLdPr Me
  loc_A17B3B: VCallAd Control_ID_FechAsieMsk
  loc_A17B3E: CVarAd
  loc_A17B42: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_A17B47: FFree1Var var_94 = ""
  loc_A17B4A: FLdPr Me
  loc_A17B4D: VCallAd Control_ID_DetaAsieFlex
  loc_A17B50: FStAdFunc var_98
  loc_A17B53: FLdPr var_98
  loc_A17B56: LateIdLdVar var_94 DispID_13 -32767
  loc_A17B5D: CBoolVar
  loc_A17B5F: FLdRfVar var_9E
  loc_A17B62: FLdPr Me
  loc_A17B65: VCallAd Control_ID_cmdCancelar
  loc_A17B68: FStAdFunc var_9C
  loc_A17B6B: FLdPr var_9C
  loc_A17B6E:  = Me.Value
  loc_A17B73: FLdI2 var_9E
  loc_A17B76: NotI4
  loc_A17B77: AndI4
  loc_A17B78: FLdPr var_98
  loc_A17B7B: LateIdLdVar var_B0 DispID_10 0
  loc_A17B82: CI4Var
  loc_A17B84: LitI4 1
  loc_A17B89: GtI4
  loc_A17B8A: AndI4
  loc_A17B8B: FLdPr var_98
  loc_A17B8E: LateIdLdVar var_C0 DispID_10 0
  loc_A17B95: CI4Var
  loc_A17B97: CVarI4
  loc_A17B9B: PopAdLdVar
  loc_A17B9C: LitVarI4
  loc_A17BA4: PopAdLdVar
  loc_A17BA5: FLdPr var_98
  loc_A17BA8: LateIdCallLdVar
  loc_A17BB2: CStrVarTmp
  loc_A17BB3: FStStrNoPop var_114
  loc_A17BB6: LitStr vbNullString
  loc_A17BB9: EqStr
  loc_A17BBB: AndI4
  loc_A17BBC: FLdPr var_98
  loc_A17BBF: LateIdLdVar var_124 DispID_10 0
  loc_A17BC6: CI4Var
  loc_A17BC8: CVarI4
  loc_A17BCC: PopAdLdVar
  loc_A17BCD: LitVarI4
  loc_A17BD5: PopAdLdVar
  loc_A17BD6: FLdPr var_98
  loc_A17BD9: LateIdCallLdVar
  loc_A17BE3: CStrVarTmp
  loc_A17BE4: FStStrNoPop var_178
  loc_A17BE7: LitStr vbNullString
  loc_A17BEA: EqStr
  loc_A17BEC: AndI4
  loc_A17BED: FLdPr var_98
  loc_A17BF0: LateIdLdVar var_188 DispID_10 0
  loc_A17BF7: CI4Var
  loc_A17BF9: CVarI4
  loc_A17BFD: PopAdLdVar
  loc_A17BFE: LitVarI4
  loc_A17C06: PopAdLdVar
  loc_A17C07: FLdPr var_98
  loc_A17C0A: LateIdCallLdVar
  loc_A17C14: CStrVarTmp
  loc_A17C15: FStStrNoPop var_1DC
  loc_A17C18: LitStr vbNullString
  loc_A17C1B: EqStr
  loc_A17C1D: AndI4
  loc_A17C1E: FLdPr var_98
  loc_A17C21: LateIdLdVar var_1EC DispID_10 0
  loc_A17C28: CI4Var
  loc_A17C2A: CVarI4
  loc_A17C2E: PopAdLdVar
  loc_A17C2F: LitVarI4
  loc_A17C37: PopAdLdVar
  loc_A17C38: FLdPr var_98
  loc_A17C3B: LateIdCallLdVar
  loc_A17C45: CStrVarTmp
  loc_A17C46: FStStrNoPop var_240
  loc_A17C49: LitStr vbNullString
  loc_A17C4C: EqStr
  loc_A17C4E: AndI4
  loc_A17C4F: FFreeStr var_114 = "": var_178 = "": var_1DC = ""
  loc_A17C5A: FFree1Ad var_9C
  loc_A17C5D: FFreeVar var_94 = "": var_B0 = "": var_C0 = "": var_110 = "": var_124 = "": var_174 = "": var_188 = "": var_1D8 = "": var_1EC = ""
  loc_A17C74: BranchF loc_A17C8E
  loc_A17C77: FLdPr Me
  loc_A17C7A: VCallAd Control_ID_DetaAsieFlex
  loc_A17C7D: FStAdFunc var_9C
  loc_A17C80: FLdPr var_9C
  loc_A17C83: LateIdCall
  loc_A17C8B: FFree1Ad var_9C
  loc_A17C8E: LitNothing
  loc_A17C90: FStAd var_98 
  loc_A17C94: ExitProcHresult
End Sub

Private Sub FechAsieMsk_UnknownEvent_8 '9DF0C8
  'Data Table: 464380
  loc_9DEFD4: FLdPr Me
  loc_9DEFD7: VCallAd Control_ID_FechAsieMsk
  loc_9DEFDA: FStAdFunc var_88
  loc_9DEFDD: FLdPr var_88
  loc_9DEFE0: LateIdLdVar var_98 DispID_13 -32767
  loc_9DEFE7: CBoolVar
  loc_9DEFE9: FLdRfVar var_9E
  loc_9DEFEC: FLdPr Me
  loc_9DEFEF: VCallAd Control_ID_cmdCancelar
  loc_9DEFF2: FStAdFunc var_9C
  loc_9DEFF5: FLdPr var_9C
  loc_9DEFF8:  = Me.Value
  loc_9DEFFD: FLdI2 var_9E
  loc_9DF000: NotI4
  loc_9DF001: AndI4
  loc_9DF002: FFreeAd var_88 = ""
  loc_9DF009: FFree1Var var_98 = ""
  loc_9DF00C: BranchF loc_9DF0C7
  loc_9DF00F: FLdPr Me
  loc_9DF012: VCallAd Control_ID_FechAsieMsk
  loc_9DF015: FStAdFunc var_88
  loc_9DF018: FLdPr var_88
  loc_9DF01B: LateIdLdVar var_98 DispID_15 0
  loc_9DF022: PopAd
  loc_9DF024: ImpAdLdI2 MemVar_C3D064
  loc_9DF027: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_9DF02C: FStStr var_B4
  loc_9DF02F: FLdPr Me
  loc_9DF032: VCallAd Control_ID_FechAsieMsk
  loc_9DF035: FStAdFunc var_B8
  loc_9DF038: LitI2_Byte 0
  loc_9DF03A: PopTmpLdAd2 var_9E
  loc_9DF03D: FLdZeroAd var_B8
  loc_9DF040: FStAdFunc var_9C
  loc_9DF043: FLdRfVar var_9C
  loc_9DF046: FLdZeroAd var_B4
  loc_9DF049: FStStrNoPop var_A4
  loc_9DF04C: CDateStr
  loc_9DF04E: LitI2_Byte 1
  loc_9DF050: CR8I2
  loc_9DF051: AddR8
  loc_9DF052: CDateR8
  loc_9DF053: CStrDate
  loc_9DF055: FStStrNoPop var_AC
  loc_9DF058: LitI2_Byte 0
  loc_9DF05A: LitI2_Byte &HFF
  loc_9DF05C: FLdRfVar var_98
  loc_9DF05F: CStrVarTmp
  loc_9DF060: FStStrNoPop var_A8
  loc_9DF063: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DF068: FStStrNoPop var_B0
  loc_9DF06B: FLdPr Me
  loc_9DF06E: MemStStrCopy
  loc_9DF072: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_9DF07F: FFreeAd var_88 = "": var_9C = ""
  loc_9DF088: FFree1Var var_98 = ""
  loc_9DF08B: FLdPr Me
  loc_9DF08E: VCallAd Control_ID_FechAsieMsk
  loc_9DF091: FStAdFunc var_BC
  loc_9DF094: LitNothing
  loc_9DF096: CastAd
  loc_9DF099: FStAdFunc var_B8
  loc_9DF09C: FLdRfVar var_B8
  loc_9DF09F: FLdZeroAd var_BC
  loc_9DF0A2: FStAdFuncNoPop
  loc_9DF0A5: CastAd
  loc_9DF0A8: FStAdFunc var_9C
  loc_9DF0AB: FLdRfVar var_9C
  loc_9DF0AE: FLdPr Me
  loc_9DF0B1: MemLdRfVar from_stack_1.global_60
  loc_9DF0B4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DF0B9: IStI2 KeyAscii
  loc_9DF0BC: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DF0C7: ExitProcHresult
End Sub

Private Sub FechAsieMsk_KeyPress(KeyAscii As Integer) '985B28
  'Data Table: 464380
  loc_985AE4: ILdI2 KeyAscii
  loc_985AE7: CI4UI1
  loc_985AE8: LitI4 &H20
  loc_985AED: EqI4
  loc_985AEE: BranchF loc_985B24
  loc_985AF1: LitVar_Missing var_A4
  loc_985AF4: PopAdLdVar
  loc_985AF5: LitVarI4
  loc_985AFD: PopAdLdVar
  loc_985AFE: ImpAdLdRf MemVar_C3D9A8
  loc_985B01: NewIfNullPr frmCalendario
  loc_985B04: frmCalendario.Show from_stack_1, from_stack_2
  loc_985B09: ImpAdLdRf MemVar_C3D038
  loc_985B0C: CDargRef
  loc_985B10: FLdPr Me
  loc_985B13: VCallAd Control_ID_FechAsieMsk
  loc_985B16: FStAdFunc var_A8
  loc_985B19: FLdPr var_A8
  loc_985B1C: LateIdSt
  loc_985B21: FFree1Ad var_A8
  loc_985B24: ExitProcHresult
End Sub

Private Sub NoleAsieTxt_GotFocus() '951420
  'Data Table: 464380
  loc_95140C: FLdPr Me
  loc_95140F: VCallAd Control_ID_NoleAsieTxt
  loc_951412: CVarAd
  loc_951416: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95141B: FFree1Var var_94 = ""
  loc_95141E: ExitProcHresult
End Sub

Private Sub NoleAsieTxt_Validate(Cancel As Boolean) '9BF5A8
  'Data Table: 464380
  loc_9BF4EC: FLdRfVar var_8A
  loc_9BF4EF: FLdPr Me
  loc_9BF4F2: VCallAd Control_ID_cmdCancelar
  loc_9BF4F5: FStAdFunc var_88
  loc_9BF4F8: FLdPr var_88
  loc_9BF4FB:  = Me.Value
  loc_9BF500: FLdI2 var_8A
  loc_9BF503: NotI4
  loc_9BF504: FLdRfVar var_92
  loc_9BF507: FLdPr Me
  loc_9BF50A: VCallAd Control_ID_NoleAsieTxt
  loc_9BF50D: FStAdFunc var_90
  loc_9BF510: FLdPr var_90
  loc_9BF513:  = Me.Enabled
  loc_9BF518: FLdI2 var_92
  loc_9BF51B: AndI4
  loc_9BF51C: FFreeAd var_88 = ""
  loc_9BF523: BranchF loc_9BF5A4
  loc_9BF526: FLdRfVar var_98
  loc_9BF529: FLdPr Me
  loc_9BF52C: VCallAd Control_ID_NoleAsieTxt
  loc_9BF52F: FStAdFunc var_88
  loc_9BF532: FLdPr var_88
  loc_9BF535:  = Me.Text
  loc_9BF53A: LitI2_Byte 0
  loc_9BF53C: PopTmpLdAd2 var_9A
  loc_9BF53F: LitI2_Byte 0
  loc_9BF541: PopTmpLdAd2 var_92
  loc_9BF544: LitI2_Byte 0
  loc_9BF546: PopTmpLdAd2 var_8A
  loc_9BF549: ILdRf var_98
  loc_9BF54C: LitStr "Norma Legal"
  loc_9BF54F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BF554: FStStrNoPop var_A0
  loc_9BF557: FLdPr Me
  loc_9BF55A: MemStStrCopy
  loc_9BF55E: FFreeStr var_98 = ""
  loc_9BF565: FFree1Ad var_88
  loc_9BF568: FLdPr Me
  loc_9BF56B: VCallAd Control_ID_NoleAsieTxt
  loc_9BF56E: FStAdFunc var_A8
  loc_9BF571: LitNothing
  loc_9BF573: CastAd
  loc_9BF576: FStAdFunc var_A4
  loc_9BF579: FLdRfVar var_A4
  loc_9BF57C: FLdZeroAd var_A8
  loc_9BF57F: FStAdFuncNoPop
  loc_9BF582: CastAd
  loc_9BF585: FStAdFunc var_90
  loc_9BF588: FLdRfVar var_90
  loc_9BF58B: FLdPr Me
  loc_9BF58E: MemLdRfVar from_stack_1.global_60
  loc_9BF591: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BF596: IStI2 Cancel
  loc_9BF599: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BF5A4: ExitProcHresult
End Sub

Private Sub Form_Load() '9E7820
  'Data Table: 464380
  loc_9E76F0: LitI2_Byte 0
  loc_9E76F2: CR8I2
  loc_9E76F3: PopFPR4
  loc_9E76F4: FLdPr Me
  loc_9E76F7: Me.Left = from_stack_1s
  loc_9E76FC: LitI2_Byte 0
  loc_9E76FE: CR8I2
  loc_9E76FF: PopFPR4
  loc_9E7700: FLdPr Me
  loc_9E7703: Me.Top = from_stack_1s
  loc_9E7708: FLdPr Me
  loc_9E770B: VCallAd Control_ID_DetaAsieFlex
  loc_9E770E: FStAdFunc var_88
  loc_9E7711: LitVarI4
  loc_9E7719: PopAdLdVar
  loc_9E771A: LitVarI4
  loc_9E7722: PopAdLdVar
  loc_9E7723: FLdPr var_88
  loc_9E7726: LateIdCallSt
  loc_9E772E: LitVarI4
  loc_9E7736: PopAdLdVar
  loc_9E7737: LitVarI4
  loc_9E773F: PopAdLdVar
  loc_9E7740: FLdPr var_88
  loc_9E7743: LateIdCallSt
  loc_9E774B: LitVarI4
  loc_9E7753: PopAdLdVar
  loc_9E7754: LitVarI4
  loc_9E775C: PopAdLdVar
  loc_9E775D: FLdPr var_88
  loc_9E7760: LateIdCallSt
  loc_9E7768: LitVarI4
  loc_9E7770: PopAdLdVar
  loc_9E7771: LitVarI4
  loc_9E7779: PopAdLdVar
  loc_9E777A: FLdPr var_88
  loc_9E777D: LateIdCallSt
  loc_9E7785: LitVarI4
  loc_9E778D: PopAdLdVar
  loc_9E778E: LitVarI4
  loc_9E7796: PopAdLdVar
  loc_9E7797: LitVarStr var_D8, "Cuenta"
  loc_9E779C: PopAdLdVar
  loc_9E779D: FLdPr var_88
  loc_9E77A0: LateIdCallSt
  loc_9E77A8: LitVarI4
  loc_9E77B0: PopAdLdVar
  loc_9E77B1: LitVarI4
  loc_9E77B9: PopAdLdVar
  loc_9E77BA: LitVarStr var_D8, "Detalle"
  loc_9E77BF: PopAdLdVar
  loc_9E77C0: FLdPr var_88
  loc_9E77C3: LateIdCallSt
  loc_9E77CB: LitVarI4
  loc_9E77D3: PopAdLdVar
  loc_9E77D4: LitVarI4
  loc_9E77DC: PopAdLdVar
  loc_9E77DD: LitVarStr var_D8, "Debe"
  loc_9E77E2: PopAdLdVar
  loc_9E77E3: FLdPr var_88
  loc_9E77E6: LateIdCallSt
  loc_9E77EE: LitVarI4
  loc_9E77F6: PopAdLdVar
  loc_9E77F7: LitVarI4
  loc_9E77FF: PopAdLdVar
  loc_9E7800: LitVarStr var_D8, "Haber"
  loc_9E7805: PopAdLdVar
  loc_9E7806: FLdPr var_88
  loc_9E7809: LateIdCallSt
  loc_9E7811: LitNothing
  loc_9E7813: FStAd var_88 
  loc_9E7817: Call cmdCancelar_Click()
  loc_9E781C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949F74
  'Data Table: 464380
  loc_949F60: ILdI2 KeyAscii
  loc_949F63: CI4UI1
  loc_949F64: LitI4 &HD
  loc_949F69: EqI4
  loc_949F6A: BranchF loc_949F72
  loc_949F6D: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949F72: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '957C10
  'Data Table: 464380
  loc_957BF8: ILdI2 KeyCode
  loc_957BFB: ILdRf Me
  loc_957BFE: CastAd
  loc_957C01: FStAdFunc var_88
  loc_957C04: FLdRfVar var_88
  loc_957C07: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_957C0C: FFree1Ad var_88
  loc_957C0F: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A3D7C8
  'Data Table: 464380
  loc_A3D5B8: LitI2_Byte 0
  loc_A3D5BA: CUI1I2
  loc_A3D5BC: FLdPr Me
  loc_A3D5BF: MemStUI1
  loc_A3D5C3: ILdRf Me
  loc_A3D5C6: CastAd
  loc_A3D5C9: FStAdFunc var_88
  loc_A3D5CC: FLdRfVar var_88
  loc_A3D5CF: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A3D5D4: FFree1Ad var_88
  loc_A3D5D7: ILdRf Me
  loc_A3D5DA: CastAd
  loc_A3D5DD: FStAdFunc var_88
  loc_A3D5E0: FLdRfVar var_88
  loc_A3D5E3: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A3D5E8: FFree1Ad var_88
  loc_A3D5EB: ILdRf Me
  loc_A3D5EE: CastAd
  loc_A3D5F1: FStAdFunc var_88
  loc_A3D5F4: FLdRfVar var_88
  loc_A3D5F7: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A3D5FC: FFree1Ad var_88
  loc_A3D5FF: FLdPr Me
  loc_A3D602: VCallAd Control_ID_DetaAsieFlex
  loc_A3D605: FStAdFunc var_8C
  loc_A3D608: FLdPr var_8C
  loc_A3D60B: LateIdCall
  loc_A3D613: LitVarI4
  loc_A3D61B: PopAdLdVar
  loc_A3D61C: FLdPr var_8C
  loc_A3D61F: LateIdSt
  loc_A3D624: LitVarI4
  loc_A3D62C: PopAdLdVar
  loc_A3D62D: LitVarI4
  loc_A3D635: PopAdLdVar
  loc_A3D636: LitVarStr var_DC, "Cuenta"
  loc_A3D63B: PopAdLdVar
  loc_A3D63C: FLdPr var_8C
  loc_A3D63F: LateIdCallSt
  loc_A3D647: LitVarI4
  loc_A3D64F: PopAdLdVar
  loc_A3D650: LitVarI4
  loc_A3D658: PopAdLdVar
  loc_A3D659: LitVarStr var_DC, "Detalle"
  loc_A3D65E: PopAdLdVar
  loc_A3D65F: FLdPr var_8C
  loc_A3D662: LateIdCallSt
  loc_A3D66A: LitVarI4
  loc_A3D672: PopAdLdVar
  loc_A3D673: LitVarI4
  loc_A3D67B: PopAdLdVar
  loc_A3D67C: LitVarStr var_DC, "Debe"
  loc_A3D681: PopAdLdVar
  loc_A3D682: FLdPr var_8C
  loc_A3D685: LateIdCallSt
  loc_A3D68D: LitVarI4
  loc_A3D695: PopAdLdVar
  loc_A3D696: LitVarI4
  loc_A3D69E: PopAdLdVar
  loc_A3D69F: LitVarStr var_DC, "Haber"
  loc_A3D6A4: PopAdLdVar
  loc_A3D6A5: FLdPr var_8C
  loc_A3D6A8: LateIdCallSt
  loc_A3D6B0: FLdPr var_8C
  loc_A3D6B3: LateIdCall
  loc_A3D6BB: LitNothing
  loc_A3D6BD: FStAd var_8C 
  loc_A3D6C1: LitVarStr var_9C, vbNullString
  loc_A3D6C6: LitI4 9
  loc_A3D6CB: FLdRfVar var_FC
  loc_A3D6CE: ImpAdCallFPR4  = Chr()
  loc_A3D6D3: FLdRfVar var_FC
  loc_A3D6D6: ConcatVar var_10C
  loc_A3D6DA: LitVarStr var_AC, " "
  loc_A3D6DF: ConcatVar var_11C
  loc_A3D6E3: LitI4 9
  loc_A3D6E8: FLdRfVar var_12C
  loc_A3D6EB: ImpAdCallFPR4  = Chr()
  loc_A3D6F0: FLdRfVar var_12C
  loc_A3D6F3: ConcatVar var_13C
  loc_A3D6F7: FLdPr Me
  loc_A3D6FA: MemLdStr global_84
  loc_A3D6FD: CVarStr var_BC
  loc_A3D700: ConcatVar var_14C
  loc_A3D704: LitI4 9
  loc_A3D709: FLdRfVar var_15C
  loc_A3D70C: ImpAdCallFPR4  = Chr()
  loc_A3D711: FLdRfVar var_15C
  loc_A3D714: ConcatVar var_16C
  loc_A3D718: FLdPr Me
  loc_A3D71B: MemLdStr global_88
  loc_A3D71E: CVarStr var_CC
  loc_A3D721: ConcatVar var_17C
  loc_A3D725: CStrVarTmp
  loc_A3D726: CVarStr var_18C
  loc_A3D729: PopAdLdVar
  loc_A3D72A: FLdPr Me
  loc_A3D72D: VCallAd Control_ID_DetaAsieFlex
  loc_A3D730: FStAdFunc var_88
  loc_A3D733: FLdPr var_88
  loc_A3D736: LateIdCall
  loc_A3D73E: FFree1Ad var_88
  loc_A3D741: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = ""
  loc_A3D758: LitI2_Byte 0
  loc_A3D75A: CStrUI1
  loc_A3D75C: FStStrNoPop var_190
  loc_A3D75F: FLdPr Me
  loc_A3D762: VCallAd Control_ID_TotaDebeLbl
  loc_A3D765: FStAdFunc var_88
  loc_A3D768: FLdPr var_88
  loc_A3D76B: Me.Caption = from_stack_1
  loc_A3D770: FFree1Str var_190
  loc_A3D773: FFree1Ad var_88
  loc_A3D776: LitI2_Byte 0
  loc_A3D778: CStrUI1
  loc_A3D77A: FStStrNoPop var_190
  loc_A3D77D: FLdPr Me
  loc_A3D780: VCallAd Control_ID_TotaHaberLbl
  loc_A3D783: FStAdFunc var_88
  loc_A3D786: FLdPr var_88
  loc_A3D789: Me.Caption = from_stack_1
  loc_A3D78E: FFree1Str var_190
  loc_A3D791: FFree1Ad var_88
  loc_A3D794: LitI4 0
  loc_A3D799: LitI4 0
  loc_A3D79E: FLdRfVar var_194
  loc_A3D7A1: Redim
  loc_A3D7AB: FLdPr Me
  loc_A3D7AE: VCallAd Control_ID_DetaAsieFlex
  loc_A3D7B1: CVarAd
  loc_A3D7B5: ParmAry1St
  loc_A3D7BB: FLdRfVar var_194
  loc_A3D7BE: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A3D7C3: FLdRfVar var_194
  loc_A3D7C6: Erase
  loc_A3D7C7: ExitProcHresult
End Sub

Private Function Proc_104_21_B655E0(arg_C) 'B655E0
  'Data Table: 464380
  loc_B64A90: ILdRf arg_C
  loc_B64A93: FStStrCopy var_88
  loc_B64A96: LitI4 0
  loc_B64A9B: LitI4 4
  loc_B64AA0: FLdRfVar var_8C
  loc_B64AA3: Redim
  loc_B64AAD: LitVarStr var_9C, "114"
  loc_B64AB2: LitI4 0
  loc_B64AB7: ILdRf var_8C
  loc_B64ABA: Ary1StVarCopy
  loc_B64ABC: LitVarStr var_AC, "115"
  loc_B64AC1: LitI4 1
  loc_B64AC6: ILdRf var_8C
  loc_B64AC9: Ary1StVarCopy
  loc_B64ACB: LitVarStr var_BC, "116"
  loc_B64AD0: LitI4 2
  loc_B64AD5: ILdRf var_8C
  loc_B64AD8: Ary1StVarCopy
  loc_B64ADA: LitVarStr var_CC, "1170"
  loc_B64ADF: LitI4 3
  loc_B64AE4: ILdRf var_8C
  loc_B64AE7: Ary1StVarCopy
  loc_B64AE9: LitVarStr var_DC, "2"
  loc_B64AEE: LitI4 4
  loc_B64AF3: ILdRf var_8C
  loc_B64AF6: Ary1StVarCopy
  loc_B64AF8: FLdRfVar var_8C
  loc_B64AFB: FLdPr Me
  loc_B64AFE: MemLdRfVar from_stack_1.global_92
  loc_B64B01: NewIfNullRf
  loc_B64B05: ImpAdLdI2 MemVar_C3D064
  loc_B64B08: LitI2_Byte 0
  loc_B64B0A: ILdRf var_88
  loc_B64B0D: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64B12: FStStr var_E0
  loc_B64B15: FLdRfVar var_8C
  loc_B64B18: Erase
  loc_B64B19: ILdRf var_E0
  loc_B64B1C: FLdPr Me
  loc_B64B1F: MemStStrCopy
  loc_B64B23: FFree1Str var_E0
  loc_B64B26: FLdRfVar var_E0
  loc_B64B29: FLdPr Me
  loc_B64B2C: MemLdRfVar from_stack_1.global_92
  loc_B64B2F: NewIfNullPr tblcuentacontable
  loc_B64B32: from_stack_1v = tblcuentacontable.CodiTicuGet()
  loc_B64B37: ILdRf var_E0
  loc_B64B3A: LitStr "1130"
  loc_B64B3D: EqStr
  loc_B64B3F: FFree1Str var_E0
  loc_B64B42: BranchF loc_B64B7B
  loc_B64B45: FLdPr Me
  loc_B64B48: VCallAd Control_ID_CodiTiasMsk
  loc_B64B4B: FStAdFunc var_E4
  loc_B64B4E: FLdPr var_E4
  loc_B64B51: LateIdLdVar var_F4 DispID_22 0
  loc_B64B58: CStrVarTmp
  loc_B64B59: FStStrNoPop var_E0
  loc_B64B5C: CR8Str
  loc_B64B5E: LitI2_Byte &H12
  loc_B64B60: CR8I2
  loc_B64B61: EqR4
  loc_B64B62: FFree1Str var_E0
  loc_B64B65: FFree1Ad var_E4
  loc_B64B68: FFree1Var var_F4 = ""
  loc_B64B6B: BranchF loc_B64B78
  loc_B64B6E: LitStr vbNullString
  loc_B64B71: FLdPr Me
  loc_B64B74: MemStStrCopy
  loc_B64B78: Branch loc_B653E9
  loc_B64B7B: FLdPr Me
  loc_B64B7E: VCallAd Control_ID_CodiTiasMsk
  loc_B64B81: FStAdFunc var_E4
  loc_B64B84: FLdPr var_E4
  loc_B64B87: LateIdLdVar var_F4 DispID_22 0
  loc_B64B8E: CStrVarTmp
  loc_B64B8F: FStStr var_F8
  loc_B64B92: FFree1Ad var_E4
  loc_B64B95: FFree1Var var_F4 = ""
  loc_B64B98: ILdRf var_F8
  loc_B64B9B: LitStr "7"
  loc_B64B9E: EqStr
  loc_B64BA0: BranchT loc_B64BAE
  loc_B64BA3: ILdRf var_F8
  loc_B64BA6: LitStr "8"
  loc_B64BA9: EqStr
  loc_B64BAB: BranchF loc_B64C23
  loc_B64BAE: LitI4 0
  loc_B64BB3: LitI4 2
  loc_B64BB8: FLdRfVar var_8C
  loc_B64BBB: Redim
  loc_B64BC5: LitVarStr var_9C, "5"
  loc_B64BCA: LitI4 0
  loc_B64BCF: ILdRf var_8C
  loc_B64BD2: Ary1StVarCopy
  loc_B64BD4: LitVarStr var_AC, "7"
  loc_B64BD9: LitI4 1
  loc_B64BDE: ILdRf var_8C
  loc_B64BE1: Ary1StVarCopy
  loc_B64BE3: LitVarStr var_BC, "3"
  loc_B64BE8: LitI4 2
  loc_B64BED: ILdRf var_8C
  loc_B64BF0: Ary1StVarCopy
  loc_B64BF2: FLdRfVar var_8C
  loc_B64BF5: FLdPr Me
  loc_B64BF8: MemLdRfVar from_stack_1.global_92
  loc_B64BFB: NewIfNullRf
  loc_B64BFF: ImpAdLdI2 MemVar_C3D064
  loc_B64C02: LitI2_Byte &HFF
  loc_B64C04: ILdRf var_88
  loc_B64C07: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64C0C: FStStr var_E0
  loc_B64C0F: FLdRfVar var_8C
  loc_B64C12: Erase
  loc_B64C13: ILdRf var_E0
  loc_B64C16: FLdPr Me
  loc_B64C19: MemStStrCopy
  loc_B64C1D: FFree1Str var_E0
  loc_B64C20: Branch loc_B653E9
  loc_B64C23: ILdRf var_F8
  loc_B64C26: LitStr "15"
  loc_B64C29: EqStr
  loc_B64C2B: BranchT loc_B64C39
  loc_B64C2E: ILdRf var_F8
  loc_B64C31: LitStr "18"
  loc_B64C34: EqStr
  loc_B64C36: BranchF loc_B64CBD
  loc_B64C39: LitI4 0
  loc_B64C3E: LitI4 3
  loc_B64C43: FLdRfVar var_8C
  loc_B64C46: Redim
  loc_B64C50: LitVarStr var_9C, "1"
  loc_B64C55: LitI4 0
  loc_B64C5A: ILdRf var_8C
  loc_B64C5D: Ary1StVarCopy
  loc_B64C5F: LitVarStr var_AC, "2"
  loc_B64C64: LitI4 1
  loc_B64C69: ILdRf var_8C
  loc_B64C6C: Ary1StVarCopy
  loc_B64C6E: LitVarStr var_BC, "3"
  loc_B64C73: LitI4 2
  loc_B64C78: ILdRf var_8C
  loc_B64C7B: Ary1StVarCopy
  loc_B64C7D: LitVarStr var_CC, "4"
  loc_B64C82: LitI4 3
  loc_B64C87: ILdRf var_8C
  loc_B64C8A: Ary1StVarCopy
  loc_B64C8C: FLdRfVar var_8C
  loc_B64C8F: FLdPr Me
  loc_B64C92: MemLdRfVar from_stack_1.global_92
  loc_B64C95: NewIfNullRf
  loc_B64C99: ImpAdLdI2 MemVar_C3D064
  loc_B64C9C: LitI2_Byte &HFF
  loc_B64C9E: ILdRf var_88
  loc_B64CA1: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64CA6: FStStr var_E0
  loc_B64CA9: FLdRfVar var_8C
  loc_B64CAC: Erase
  loc_B64CAD: ILdRf var_E0
  loc_B64CB0: FLdPr Me
  loc_B64CB3: MemStStrCopy
  loc_B64CB7: FFree1Str var_E0
  loc_B64CBA: Branch loc_B653E9
  loc_B64CBD: ILdRf var_F8
  loc_B64CC0: LitStr "31"
  loc_B64CC3: EqStr
  loc_B64CC5: BranchF loc_B64E3D
  loc_B64CC8: LitStr "Municipalidad de Guaymallén"
  loc_B64CCB: FStStrCopy var_FC
  loc_B64CCE: ILdRf var_FC
  loc_B64CD1: LitStr "Municipalidad de San Carlos"
  loc_B64CD4: EqStr
  loc_B64CD6: BranchT loc_B64D1B
  loc_B64CD9: ILdRf var_FC
  loc_B64CDC: LitStr "Municipalidad de Malargüe"
  loc_B64CDF: EqStr
  loc_B64CE1: BranchT loc_B64D1B
  loc_B64CE4: ILdRf var_FC
  loc_B64CE7: LitStr "Municipalidad de Lavalle"
  loc_B64CEA: EqStr
  loc_B64CEC: BranchT loc_B64D1B
  loc_B64CEF: ILdRf var_FC
  loc_B64CF2: LitStr "Municipalidad de Rivadavia"
  loc_B64CF5: EqStr
  loc_B64CF7: BranchT loc_B64D1B
  loc_B64CFA: ILdRf var_FC
  loc_B64CFD: LitStr "Municipalidad de General Alvear"
  loc_B64D00: EqStr
  loc_B64D02: BranchT loc_B64D1B
  loc_B64D05: ILdRf var_FC
  loc_B64D08: LitStr "Municipalidad de Tunuyán"
  loc_B64D0B: EqStr
  loc_B64D0D: BranchT loc_B64D1B
  loc_B64D10: ILdRf var_FC
  loc_B64D13: LitStr "Municipalidad de Tupungato"
  loc_B64D16: EqStr
  loc_B64D18: BranchF loc_B64D9F
  loc_B64D1B: LitI4 0
  loc_B64D20: LitI4 3
  loc_B64D25: FLdRfVar var_8C
  loc_B64D28: Redim
  loc_B64D32: LitVarStr var_9C, "1"
  loc_B64D37: LitI4 0
  loc_B64D3C: ILdRf var_8C
  loc_B64D3F: Ary1StVarCopy
  loc_B64D41: LitVarStr var_AC, "2"
  loc_B64D46: LitI4 1
  loc_B64D4B: ILdRf var_8C
  loc_B64D4E: Ary1StVarCopy
  loc_B64D50: LitVarStr var_BC, "3"
  loc_B64D55: LitI4 2
  loc_B64D5A: ILdRf var_8C
  loc_B64D5D: Ary1StVarCopy
  loc_B64D5F: LitVarStr var_CC, "4"
  loc_B64D64: LitI4 3
  loc_B64D69: ILdRf var_8C
  loc_B64D6C: Ary1StVarCopy
  loc_B64D6E: FLdRfVar var_8C
  loc_B64D71: FLdPr Me
  loc_B64D74: MemLdRfVar from_stack_1.global_92
  loc_B64D77: NewIfNullRf
  loc_B64D7B: ImpAdLdI2 MemVar_C3D064
  loc_B64D7E: LitI2_Byte &HFF
  loc_B64D80: ILdRf var_88
  loc_B64D83: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64D88: FStStr var_E0
  loc_B64D8B: FLdRfVar var_8C
  loc_B64D8E: Erase
  loc_B64D8F: ILdRf var_E0
  loc_B64D92: FLdPr Me
  loc_B64D95: MemStStrCopy
  loc_B64D99: FFree1Str var_E0
  loc_B64D9C: Branch loc_B64E3A
  loc_B64D9F: ILdRf var_FC
  loc_B64DA2: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_B64DA5: EqStr
  loc_B64DA7: BranchF loc_B64E3A
  loc_B64DAA: LitI4 0
  loc_B64DAF: LitI4 4
  loc_B64DB4: FLdRfVar var_8C
  loc_B64DB7: Redim
  loc_B64DC1: LitVarStr var_9C, "1"
  loc_B64DC6: LitI4 0
  loc_B64DCB: ILdRf var_8C
  loc_B64DCE: Ary1StVarCopy
  loc_B64DD0: LitVarStr var_AC, "2"
  loc_B64DD5: LitI4 1
  loc_B64DDA: ILdRf var_8C
  loc_B64DDD: Ary1StVarCopy
  loc_B64DDF: LitVarStr var_BC, "3"
  loc_B64DE4: LitI4 2
  loc_B64DE9: ILdRf var_8C
  loc_B64DEC: Ary1StVarCopy
  loc_B64DEE: LitVarStr var_CC, "4"
  loc_B64DF3: LitI4 3
  loc_B64DF8: ILdRf var_8C
  loc_B64DFB: Ary1StVarCopy
  loc_B64DFD: LitVarStr var_DC, "9"
  loc_B64E02: LitI4 4
  loc_B64E07: ILdRf var_8C
  loc_B64E0A: Ary1StVarCopy
  loc_B64E0C: FLdRfVar var_8C
  loc_B64E0F: FLdPr Me
  loc_B64E12: MemLdRfVar from_stack_1.global_92
  loc_B64E15: NewIfNullRf
  loc_B64E19: ImpAdLdI2 MemVar_C3D064
  loc_B64E1C: LitI2_Byte &HFF
  loc_B64E1E: ILdRf var_88
  loc_B64E21: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64E26: FStStr var_E0
  loc_B64E29: FLdRfVar var_8C
  loc_B64E2C: Erase
  loc_B64E2D: ILdRf var_E0
  loc_B64E30: FLdPr Me
  loc_B64E33: MemStStrCopy
  loc_B64E37: FFree1Str var_E0
  loc_B64E3A: Branch loc_B653E9
  loc_B64E3D: ILdRf var_F8
  loc_B64E40: LitStr "32"
  loc_B64E43: EqStr
  loc_B64E45: BranchF loc_B64EFE
  loc_B64E48: LitStr "Municipalidad de Guaymallén"
  loc_B64E4B: FStStrCopy var_100
  loc_B64E4E: ILdRf var_100
  loc_B64E51: LitStr "Municipalidad de Maipú"
  loc_B64E54: EqStr
  loc_B64E56: BranchT loc_B64E7A
  loc_B64E59: ILdRf var_100
  loc_B64E5C: LitStr "Municipalidad de San Carlos"
  loc_B64E5F: EqStr
  loc_B64E61: BranchT loc_B64E7A
  loc_B64E64: ILdRf var_100
  loc_B64E67: LitStr "Municipalidad de La Paz"
  loc_B64E6A: EqStr
  loc_B64E6C: BranchT loc_B64E7A
  loc_B64E6F: ILdRf var_100
  loc_B64E72: LitStr "Municipalidad de Santa Rosa"
  loc_B64E75: EqStr
  loc_B64E77: BranchF loc_B64EFB
  loc_B64E7A: LitI4 0
  loc_B64E7F: LitI4 3
  loc_B64E84: FLdRfVar var_8C
  loc_B64E87: Redim
  loc_B64E91: LitVarStr var_9C, "1"
  loc_B64E96: LitI4 0
  loc_B64E9B: ILdRf var_8C
  loc_B64E9E: Ary1StVarCopy
  loc_B64EA0: LitVarStr var_AC, "2"
  loc_B64EA5: LitI4 1
  loc_B64EAA: ILdRf var_8C
  loc_B64EAD: Ary1StVarCopy
  loc_B64EAF: LitVarStr var_BC, "3"
  loc_B64EB4: LitI4 2
  loc_B64EB9: ILdRf var_8C
  loc_B64EBC: Ary1StVarCopy
  loc_B64EBE: LitVarStr var_CC, "4"
  loc_B64EC3: LitI4 3
  loc_B64EC8: ILdRf var_8C
  loc_B64ECB: Ary1StVarCopy
  loc_B64ECD: FLdRfVar var_8C
  loc_B64ED0: FLdPr Me
  loc_B64ED3: MemLdRfVar from_stack_1.global_92
  loc_B64ED6: NewIfNullRf
  loc_B64EDA: ImpAdLdI2 MemVar_C3D064
  loc_B64EDD: LitI2_Byte &HFF
  loc_B64EDF: ILdRf var_88
  loc_B64EE2: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64EE7: FStStr var_E0
  loc_B64EEA: FLdRfVar var_8C
  loc_B64EED: Erase
  loc_B64EEE: ILdRf var_E0
  loc_B64EF1: FLdPr Me
  loc_B64EF4: MemStStrCopy
  loc_B64EF8: FFree1Str var_E0
  loc_B64EFB: Branch loc_B653E9
  loc_B64EFE: ILdRf var_F8
  loc_B64F01: LitStr "34"
  loc_B64F04: EqStr
  loc_B64F06: BranchF loc_B64F98
  loc_B64F09: LitStr "Municipalidad de Guaymallén"
  loc_B64F0C: LitStr "Municipalidad de General Alvear"
  loc_B64F0F: EqStr
  loc_B64F11: BranchF loc_B64F95
  loc_B64F14: LitI4 0
  loc_B64F19: LitI4 3
  loc_B64F1E: FLdRfVar var_8C
  loc_B64F21: Redim
  loc_B64F2B: LitVarStr var_9C, "1"
  loc_B64F30: LitI4 0
  loc_B64F35: ILdRf var_8C
  loc_B64F38: Ary1StVarCopy
  loc_B64F3A: LitVarStr var_AC, "2"
  loc_B64F3F: LitI4 1
  loc_B64F44: ILdRf var_8C
  loc_B64F47: Ary1StVarCopy
  loc_B64F49: LitVarStr var_BC, "3"
  loc_B64F4E: LitI4 2
  loc_B64F53: ILdRf var_8C
  loc_B64F56: Ary1StVarCopy
  loc_B64F58: LitVarStr var_CC, "4"
  loc_B64F5D: LitI4 3
  loc_B64F62: ILdRf var_8C
  loc_B64F65: Ary1StVarCopy
  loc_B64F67: FLdRfVar var_8C
  loc_B64F6A: FLdPr Me
  loc_B64F6D: MemLdRfVar from_stack_1.global_92
  loc_B64F70: NewIfNullRf
  loc_B64F74: ImpAdLdI2 MemVar_C3D064
  loc_B64F77: LitI2_Byte &HFF
  loc_B64F79: ILdRf var_88
  loc_B64F7C: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B64F81: FStStr var_E0
  loc_B64F84: FLdRfVar var_8C
  loc_B64F87: Erase
  loc_B64F88: ILdRf var_E0
  loc_B64F8B: FLdPr Me
  loc_B64F8E: MemStStrCopy
  loc_B64F92: FFree1Str var_E0
  loc_B64F95: Branch loc_B653E9
  loc_B64F98: ILdRf var_F8
  loc_B64F9B: LitStr "50"
  loc_B64F9E: EqStr
  loc_B64FA0: BranchF loc_B65041
  loc_B64FA3: LitStr "Municipalidad de Guaymallén"
  loc_B64FA6: LitStr "Municipalidad de Guaymallén"
  loc_B64FA9: EqStr
  loc_B64FAB: BranchF loc_B6503E
  loc_B64FAE: LitI4 0
  loc_B64FB3: LitI4 4
  loc_B64FB8: FLdRfVar var_8C
  loc_B64FBB: Redim
  loc_B64FC5: LitVarStr var_9C, "1"
  loc_B64FCA: LitI4 0
  loc_B64FCF: ILdRf var_8C
  loc_B64FD2: Ary1StVarCopy
  loc_B64FD4: LitVarStr var_AC, "2"
  loc_B64FD9: LitI4 1
  loc_B64FDE: ILdRf var_8C
  loc_B64FE1: Ary1StVarCopy
  loc_B64FE3: LitVarStr var_BC, "3"
  loc_B64FE8: LitI4 2
  loc_B64FED: ILdRf var_8C
  loc_B64FF0: Ary1StVarCopy
  loc_B64FF2: LitVarStr var_CC, "4"
  loc_B64FF7: LitI4 3
  loc_B64FFC: ILdRf var_8C
  loc_B64FFF: Ary1StVarCopy
  loc_B65001: LitVarStr var_DC, "5"
  loc_B65006: LitI4 4
  loc_B6500B: ILdRf var_8C
  loc_B6500E: Ary1StVarCopy
  loc_B65010: FLdRfVar var_8C
  loc_B65013: FLdPr Me
  loc_B65016: MemLdRfVar from_stack_1.global_92
  loc_B65019: NewIfNullRf
  loc_B6501D: ImpAdLdI2 MemVar_C3D064
  loc_B65020: LitI2_Byte &HFF
  loc_B65022: ILdRf var_88
  loc_B65025: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B6502A: FStStr var_E0
  loc_B6502D: FLdRfVar var_8C
  loc_B65030: Erase
  loc_B65031: ILdRf var_E0
  loc_B65034: FLdPr Me
  loc_B65037: MemStStrCopy
  loc_B6503B: FFree1Str var_E0
  loc_B6503E: Branch loc_B653E9
  loc_B65041: ILdRf var_F8
  loc_B65044: LitStr "51"
  loc_B65047: EqStr
  loc_B65049: BranchF loc_B650DB
  loc_B6504C: LitStr "Municipalidad de Guaymallén"
  loc_B6504F: LitStr "Municipalidad de Guaymallén"
  loc_B65052: EqStr
  loc_B65054: BranchF loc_B650D8
  loc_B65057: LitI4 0
  loc_B6505C: LitI4 3
  loc_B65061: FLdRfVar var_8C
  loc_B65064: Redim
  loc_B6506E: LitVarStr var_9C, "1"
  loc_B65073: LitI4 0
  loc_B65078: ILdRf var_8C
  loc_B6507B: Ary1StVarCopy
  loc_B6507D: LitVarStr var_AC, "2"
  loc_B65082: LitI4 1
  loc_B65087: ILdRf var_8C
  loc_B6508A: Ary1StVarCopy
  loc_B6508C: LitVarStr var_BC, "3"
  loc_B65091: LitI4 2
  loc_B65096: ILdRf var_8C
  loc_B65099: Ary1StVarCopy
  loc_B6509B: LitVarStr var_CC, "4"
  loc_B650A0: LitI4 3
  loc_B650A5: ILdRf var_8C
  loc_B650A8: Ary1StVarCopy
  loc_B650AA: FLdRfVar var_8C
  loc_B650AD: FLdPr Me
  loc_B650B0: MemLdRfVar from_stack_1.global_92
  loc_B650B3: NewIfNullRf
  loc_B650B7: ImpAdLdI2 MemVar_C3D064
  loc_B650BA: LitI2_Byte &HFF
  loc_B650BC: ILdRf var_88
  loc_B650BF: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B650C4: FStStr var_E0
  loc_B650C7: FLdRfVar var_8C
  loc_B650CA: Erase
  loc_B650CB: ILdRf var_E0
  loc_B650CE: FLdPr Me
  loc_B650D1: MemStStrCopy
  loc_B650D5: FFree1Str var_E0
  loc_B650D8: Branch loc_B653E9
  loc_B650DB: ILdRf var_F8
  loc_B650DE: LitStr "54"
  loc_B650E1: EqStr
  loc_B650E3: BranchF loc_B65157
  loc_B650E6: LitStr "Municipalidad de Guaymallén"
  loc_B650E9: LitStr "Municipalidad de Guaymallén"
  loc_B650EC: EqStr
  loc_B650EE: BranchF loc_B65154
  loc_B650F1: LitI4 0
  loc_B650F6: LitI4 1
  loc_B650FB: FLdRfVar var_8C
  loc_B650FE: Redim
  loc_B65108: LitVarStr var_9C, "1120"
  loc_B6510D: LitI4 0
  loc_B65112: ILdRf var_8C
  loc_B65115: Ary1StVarCopy
  loc_B65117: LitVarStr var_AC, "2"
  loc_B6511C: LitI4 1
  loc_B65121: ILdRf var_8C
  loc_B65124: Ary1StVarCopy
  loc_B65126: FLdRfVar var_8C
  loc_B65129: FLdPr Me
  loc_B6512C: MemLdRfVar from_stack_1.global_92
  loc_B6512F: NewIfNullRf
  loc_B65133: ImpAdLdI2 MemVar_C3D064
  loc_B65136: LitI2_Byte &HFF
  loc_B65138: ILdRf var_88
  loc_B6513B: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B65140: FStStr var_E0
  loc_B65143: FLdRfVar var_8C
  loc_B65146: Erase
  loc_B65147: ILdRf var_E0
  loc_B6514A: FLdPr Me
  loc_B6514D: MemStStrCopy
  loc_B65151: FFree1Str var_E0
  loc_B65154: Branch loc_B653E9
  loc_B65157: ILdRf var_F8
  loc_B6515A: LitStr "55"
  loc_B6515D: EqStr
  loc_B6515F: BranchF loc_B651F1
  loc_B65162: LitStr "Municipalidad de Guaymallén"
  loc_B65165: LitStr "Municipalidad de Guaymallén"
  loc_B65168: EqStr
  loc_B6516A: BranchF loc_B651EE
  loc_B6516D: LitI4 0
  loc_B65172: LitI4 3
  loc_B65177: FLdRfVar var_8C
  loc_B6517A: Redim
  loc_B65184: LitVarStr var_9C, "1"
  loc_B65189: LitI4 0
  loc_B6518E: ILdRf var_8C
  loc_B65191: Ary1StVarCopy
  loc_B65193: LitVarStr var_AC, "2"
  loc_B65198: LitI4 1
  loc_B6519D: ILdRf var_8C
  loc_B651A0: Ary1StVarCopy
  loc_B651A2: LitVarStr var_BC, "3"
  loc_B651A7: LitI4 2
  loc_B651AC: ILdRf var_8C
  loc_B651AF: Ary1StVarCopy
  loc_B651B1: LitVarStr var_CC, "4"
  loc_B651B6: LitI4 3
  loc_B651BB: ILdRf var_8C
  loc_B651BE: Ary1StVarCopy
  loc_B651C0: FLdRfVar var_8C
  loc_B651C3: FLdPr Me
  loc_B651C6: MemLdRfVar from_stack_1.global_92
  loc_B651C9: NewIfNullRf
  loc_B651CD: ImpAdLdI2 MemVar_C3D064
  loc_B651D0: LitI2_Byte &HFF
  loc_B651D2: ILdRf var_88
  loc_B651D5: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B651DA: FStStr var_E0
  loc_B651DD: FLdRfVar var_8C
  loc_B651E0: Erase
  loc_B651E1: ILdRf var_E0
  loc_B651E4: FLdPr Me
  loc_B651E7: MemStStrCopy
  loc_B651EB: FFree1Str var_E0
  loc_B651EE: Branch loc_B653E9
  loc_B651F1: ILdRf var_F8
  loc_B651F4: LitStr "57"
  loc_B651F7: EqStr
  loc_B651F9: BranchF loc_B6528B
  loc_B651FC: LitStr "Municipalidad de Guaymallén"
  loc_B651FF: LitStr "Municipalidad de Guaymallén"
  loc_B65202: EqStr
  loc_B65204: BranchF loc_B65288
  loc_B65207: LitI4 0
  loc_B6520C: LitI4 3
  loc_B65211: FLdRfVar var_8C
  loc_B65214: Redim
  loc_B6521E: LitVarStr var_9C, "1"
  loc_B65223: LitI4 0
  loc_B65228: ILdRf var_8C
  loc_B6522B: Ary1StVarCopy
  loc_B6522D: LitVarStr var_AC, "2"
  loc_B65232: LitI4 1
  loc_B65237: ILdRf var_8C
  loc_B6523A: Ary1StVarCopy
  loc_B6523C: LitVarStr var_BC, "3"
  loc_B65241: LitI4 2
  loc_B65246: ILdRf var_8C
  loc_B65249: Ary1StVarCopy
  loc_B6524B: LitVarStr var_CC, "4"
  loc_B65250: LitI4 3
  loc_B65255: ILdRf var_8C
  loc_B65258: Ary1StVarCopy
  loc_B6525A: FLdRfVar var_8C
  loc_B6525D: FLdPr Me
  loc_B65260: MemLdRfVar from_stack_1.global_92
  loc_B65263: NewIfNullRf
  loc_B65267: ImpAdLdI2 MemVar_C3D064
  loc_B6526A: LitI2_Byte &HFF
  loc_B6526C: ILdRf var_88
  loc_B6526F: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B65274: FStStr var_E0
  loc_B65277: FLdRfVar var_8C
  loc_B6527A: Erase
  loc_B6527B: ILdRf var_E0
  loc_B6527E: FLdPr Me
  loc_B65281: MemStStrCopy
  loc_B65285: FFree1Str var_E0
  loc_B65288: Branch loc_B653E9
  loc_B6528B: ILdRf var_F8
  loc_B6528E: LitStr "58"
  loc_B65291: EqStr
  loc_B65293: BranchF loc_B65316
  loc_B65296: LitStr "Municipalidad de Guaymallén"
  loc_B65299: LitStr "Municipalidad de Guaymallén"
  loc_B6529C: EqStr
  loc_B6529E: BranchF loc_B65313
  loc_B652A1: LitI4 0
  loc_B652A6: LitI4 2
  loc_B652AB: FLdRfVar var_8C
  loc_B652AE: Redim
  loc_B652B8: LitVarStr var_9C, "1"
  loc_B652BD: LitI4 0
  loc_B652C2: ILdRf var_8C
  loc_B652C5: Ary1StVarCopy
  loc_B652C7: LitVarStr var_AC, "5"
  loc_B652CC: LitI4 1
  loc_B652D1: ILdRf var_8C
  loc_B652D4: Ary1StVarCopy
  loc_B652D6: LitVarStr var_BC, "7"
  loc_B652DB: LitI4 2
  loc_B652E0: ILdRf var_8C
  loc_B652E3: Ary1StVarCopy
  loc_B652E5: FLdRfVar var_8C
  loc_B652E8: FLdPr Me
  loc_B652EB: MemLdRfVar from_stack_1.global_92
  loc_B652EE: NewIfNullRf
  loc_B652F2: ImpAdLdI2 MemVar_C3D064
  loc_B652F5: LitI2_Byte &HFF
  loc_B652F7: ILdRf var_88
  loc_B652FA: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B652FF: FStStr var_E0
  loc_B65302: FLdRfVar var_8C
  loc_B65305: Erase
  loc_B65306: ILdRf var_E0
  loc_B65309: FLdPr Me
  loc_B6530C: MemStStrCopy
  loc_B65310: FFree1Str var_E0
  loc_B65313: Branch loc_B653E9
  loc_B65316: ILdRf var_F8
  loc_B65319: LitStr "60"
  loc_B6531C: EqStr
  loc_B6531E: BranchF loc_B653E9
  loc_B65321: LitStr "Municipalidad de Guaymallén"
  loc_B65324: LitStr "Municipalidad de Guaymallén"
  loc_B65327: EqStr
  loc_B65329: BranchF loc_B653E9
  loc_B6532C: LitI4 0
  loc_B65331: LitI4 7
  loc_B65336: FLdRfVar var_8C
  loc_B65339: Redim
  loc_B65343: LitVarStr var_9C, "1"
  loc_B65348: LitI4 0
  loc_B6534D: ILdRf var_8C
  loc_B65350: Ary1StVarCopy
  loc_B65352: LitVarStr var_AC, "2"
  loc_B65357: LitI4 1
  loc_B6535C: ILdRf var_8C
  loc_B6535F: Ary1StVarCopy
  loc_B65361: LitVarStr var_BC, "3"
  loc_B65366: LitI4 2
  loc_B6536B: ILdRf var_8C
  loc_B6536E: Ary1StVarCopy
  loc_B65370: LitVarStr var_CC, "4"
  loc_B65375: LitI4 3
  loc_B6537A: ILdRf var_8C
  loc_B6537D: Ary1StVarCopy
  loc_B6537F: LitVarStr var_DC, "5"
  loc_B65384: LitI4 4
  loc_B65389: ILdRf var_8C
  loc_B6538C: Ary1StVarCopy
  loc_B6538E: LitVarStr var_110, "6"
  loc_B65393: LitI4 5
  loc_B65398: ILdRf var_8C
  loc_B6539B: Ary1StVarCopy
  loc_B6539D: LitVarStr var_120, "7"
  loc_B653A2: LitI4 6
  loc_B653A7: ILdRf var_8C
  loc_B653AA: Ary1StVarCopy
  loc_B653AC: LitVarStr var_130, "8"
  loc_B653B1: LitI4 7
  loc_B653B6: ILdRf var_8C
  loc_B653B9: Ary1StVarCopy
  loc_B653BB: FLdRfVar var_8C
  loc_B653BE: FLdPr Me
  loc_B653C1: MemLdRfVar from_stack_1.global_92
  loc_B653C4: NewIfNullRf
  loc_B653C8: ImpAdLdI2 MemVar_C3D064
  loc_B653CB: LitI2_Byte &HFF
  loc_B653CD: ILdRf var_88
  loc_B653D0: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B653D5: FStStr var_E0
  loc_B653D8: FLdRfVar var_8C
  loc_B653DB: Erase
  loc_B653DC: ILdRf var_E0
  loc_B653DF: FLdPr Me
  loc_B653E2: MemStStrCopy
  loc_B653E6: FFree1Str var_E0
  loc_B653E9: LitVarStr var_9C, vbNullString
  loc_B653EE: PopAdLdVar
  loc_B653EF: FLdPr Me
  loc_B653F2: VCallAd Control_ID_DetaAsieFlex
  loc_B653F5: FStAdFunc var_E4
  loc_B653F8: FLdPr var_E4
  loc_B653FB: LateIdSt
  loc_B65400: FFree1Ad var_E4
  loc_B65403: FLdPr Me
  loc_B65406: MemLdStr global_60
  loc_B65409: LitStr vbNullString
  loc_B6540C: NeStr
  loc_B6540E: BranchF loc_B654B2
  loc_B65411: LitI4 0
  loc_B65416: FLdPr Me
  loc_B65419: MemLdStr global_60
  loc_B6541C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B65421: FLdPr Me
  loc_B65424: VCallAd Control_ID_DetaAsieFlex
  loc_B65427: FStAdFunc var_E4
  loc_B6542A: FLdPr var_E4
  loc_B6542D: LateIdLdVar var_F4 DispID_10 0
  loc_B65434: CI4Var
  loc_B65436: CVarI4
  loc_B6543A: PopAdLdVar
  loc_B6543B: LitVarI4
  loc_B65443: PopAdLdVar
  loc_B65444: LitVarStr var_DC, vbNullString
  loc_B65449: PopAdLdVar
  loc_B6544A: FLdPr Me
  loc_B6544D: VCallAd Control_ID_DetaAsieFlex
  loc_B65450: FStAdFunc var_134
  loc_B65453: FLdPr var_134
  loc_B65456: LateIdCallSt
  loc_B6545E: FFreeAd var_E4 = ""
  loc_B65465: FFree1Var var_F4 = ""
  loc_B65468: FLdPr Me
  loc_B6546B: VCallAd Control_ID_DetaAsieFlex
  loc_B6546E: FStAdFunc var_E4
  loc_B65471: FLdPr var_E4
  loc_B65474: LateIdLdVar var_F4 DispID_10 0
  loc_B6547B: CI4Var
  loc_B6547D: CVarI4
  loc_B65481: PopAdLdVar
  loc_B65482: LitVarI4
  loc_B6548A: PopAdLdVar
  loc_B6548B: LitVarStr var_DC, vbNullString
  loc_B65490: PopAdLdVar
  loc_B65491: FLdPr Me
  loc_B65494: VCallAd Control_ID_DetaAsieFlex
  loc_B65497: FStAdFunc var_134
  loc_B6549A: FLdPr var_134
  loc_B6549D: LateIdCallSt
  loc_B654A5: FFreeAd var_E4 = ""
  loc_B654AC: FFree1Var var_F4 = ""
  loc_B654AF: Branch loc_B655DC
  loc_B654B2: FLdPr Me
  loc_B654B5: VCallAd Control_ID_FechAsieMsk
  loc_B654B8: FStAdFunc var_E4
  loc_B654BB: FLdPr var_E4
  loc_B654BE: LateIdLdVar var_F4 DispID_15 0
  loc_B654C5: CStrVarTmp
  loc_B654C6: PopTmpLdAdStr
  loc_B654CA: FLdPr Me
  loc_B654CD: MemLdRfVar from_stack_1.global_92
  loc_B654D0: NewIfNullRf
  loc_B654D4: ILdRf var_88
  loc_B654D7: ImpAdLdI2 MemVar_C3D064
  loc_B654DA: CStrUI1
  loc_B654DC: FStStrNoPop var_E0
  loc_B654DF: ImpAdCallI2 Proc_259_8_ACF238(, , , )
  loc_B654E4: FFreeStr var_E0 = ""
  loc_B654EB: FFree1Ad var_E4
  loc_B654EE: FFree1Var var_F4 = ""
  loc_B654F1: BranchF loc_B655DC
  loc_B654F4: FLdPr Me
  loc_B654F7: VCallAd Control_ID_DetaAsieFlex
  loc_B654FA: FStAdFunc var_E4
  loc_B654FD: FLdPr var_E4
  loc_B65500: LateIdLdVar var_F4 DispID_10 0
  loc_B65507: CI4Var
  loc_B65509: CVarI4
  loc_B6550D: PopAdLdVar
  loc_B6550E: LitVarI4
  loc_B65516: PopAdLdVar
  loc_B65517: FLdRfVar var_E0
  loc_B6551A: FLdPr Me
  loc_B6551D: MemLdRfVar from_stack_1.global_92
  loc_B65520: NewIfNullPr tblcuentacontable
  loc_B65523: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_B65528: FLdZeroAd var_E0
  loc_B6552B: CVarStr var_148
  loc_B6552E: PopAdLdVar
  loc_B6552F: FLdPr Me
  loc_B65532: VCallAd Control_ID_DetaAsieFlex
  loc_B65535: FStAdFunc var_134
  loc_B65538: FLdPr var_134
  loc_B6553B: LateIdCallSt
  loc_B65543: FFreeAd var_E4 = ""
  loc_B6554A: FFreeVar var_F4 = ""
  loc_B65551: FLdRfVar var_E0
  loc_B65554: FLdPr Me
  loc_B65557: MemLdRfVar from_stack_1.global_92
  loc_B6555A: NewIfNullPr tblcuentacontable
  loc_B6555D: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_B65562: ILdRf var_E0
  loc_B65565: LitStr " : "
  loc_B65568: ConcatStr
  loc_B65569: FStStrNoPop var_138
  loc_B6556C: LitStr "Saldo Deudor: "
  loc_B6556F: ConcatStr
  loc_B65570: FStStrNoPop var_150
  loc_B65573: FLdRfVar var_14C
  loc_B65576: FLdPr Me
  loc_B65579: MemLdRfVar from_stack_1.global_92
  loc_B6557C: NewIfNullPr tblcuentacontable
  loc_B6557F: from_stack_1v = tblcuentacontable.SaldDeuGet()
  loc_B65584: ILdRf var_14C
  loc_B65587: ConcatStr
  loc_B65588: FStStrNoPop var_154
  loc_B6558B: LitStr " - "
  loc_B6558E: ConcatStr
  loc_B6558F: FStStrNoPop var_158
  loc_B65592: LitStr "Saldo Acreedor: "
  loc_B65595: ConcatStr
  loc_B65596: FStStrNoPop var_160
  loc_B65599: FLdRfVar var_15C
  loc_B6559C: FLdPr Me
  loc_B6559F: MemLdRfVar from_stack_1.global_92
  loc_B655A2: NewIfNullPr tblcuentacontable
  loc_B655A5: from_stack_1v = tblcuentacontable.SaldAcreGet()
  loc_B655AA: ILdRf var_15C
  loc_B655AD: ConcatStr
  loc_B655AE: CVarStr var_F4
  loc_B655B1: PopAdLdVar
  loc_B655B2: FLdPr Me
  loc_B655B5: VCallAd Control_ID_DetaAsieFlex
  loc_B655B8: FStAdFunc var_E4
  loc_B655BB: FLdPr var_E4
  loc_B655BE: LateIdSt
  loc_B655C3: FFreeStr var_E0 = "": var_138 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = "": var_160 = ""
  loc_B655D6: FFree1Ad var_E4
  loc_B655D9: FFree1Var var_F4 = ""
  loc_B655DC: ExitProcHresult
  loc_B655DD: ExitProcR4
End Function
