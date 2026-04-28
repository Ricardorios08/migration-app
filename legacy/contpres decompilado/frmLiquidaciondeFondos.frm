VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmLiquidaciondeFondos
  Caption = "Liquidación por Cuenta Contable"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmLiquidaciondeFondos.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15300
  ClientHeight = 9240
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Moveable = 0   'False
  Begin VB.ComboBox cboCuentaContable
    Style = 2
    Left = 2280
    Top = 4800
    Width = 10575
    Height = 420
    TabIndex = 11
  End
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmLiquidaciondeFondos.frx":08CA
    End
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 3120
    Width = 12735
    Height = 495
    Visible = 0   'False
    TabIndex = 4
    OleObjectBlob = "frmLiquidaciondeFondos.frx":092A
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Selecciona Todo"
    Left = 8280
    Top = 4320
    Width = 2175
    Height = 255
    TabIndex = 9
  End
  Begin VB.TextBox DetaLiquTxt
    ForeColor = &HC00000&
    Left = 1080
    Top = 5400
    Width = 11775
    Height = 1095
    TabIndex = 13
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 200
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12735
    Height = 1935
    TabIndex = 3
    OleObjectBlob = "frmLiquidaciondeFondos.frx":0992
  End
  Begin MSFlexGridLib.MSFlexGrid DevengadoFlex
    Left = 120
    Top = 6600
    Width = 12855
    Height = 3495
    TabIndex = 14
    OleObjectBlob = "frmLiquidaciondeFondos.frx":0CBA
  End
  Begin MSMask.MaskEdBox FechLiquMsk
    Left = 1080
    Top = 4200
    Width = 1455
    Height = 360
    TabIndex = 6
    OleObjectBlob = "frmLiquidaciondeFondos.frx":0DA6
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmLiquidaciondeFondos.frx":0E56
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15300
    Height = 660
    TabIndex = 16
    OleObjectBlob = "frmLiquidaciondeFondos.frx":89D4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 17
      TabStop = 0   'False
      Picture = "frmLiquidaciondeFondos.frx":8F30
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label lblCuentaContable
    Caption = "Cuenta Contable:"
    Left = 240
    Top = 4800
    Width = 1935
    Height = 375
    TabIndex = 10
  End
  Begin VB.Label Label2
    Caption = "Detalle:"
    Index = 1
    Left = 0
    Top = 0
    Width = 810
    Height = 300
    TabIndex = 18
    AutoSize = -1  'True
  End
  Begin VB.Label Label5
    Caption = "Liquidación por Cuenta Contable"
    Left = 120
    Top = 3720
    Width = 3945
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
  Begin VB.Label lblTotalExpeImpu
    Left = 5280
    Top = 4200
    Width = 360
    Height = 360
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "Total del Exp. de Pago:"
    Left = 2760
    Top = 4200
    Width = 2430
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
  End
  Begin VB.Label Label2
    Caption = "Detalle:"
    Index = 0
    Left = 180
    Top = 5400
    Width = 810
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
  End
  Begin VB.Label Label1
    Caption = "Fecha:"
    Left = 225
    Top = 4200
    Width = 735
    Height = 300
    TabIndex = 5
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

Attribute VB_Name = "frmLiquidaciondeFondos"


Private Function DevengadoFlex_UnknownEvent_8(arg_C) 'AF3294
  'Data Table: 4782C4
  loc_AF2B70: FLdPr Me
  loc_AF2B73: VCallAd Control_ID_DevengadoFlex
  loc_AF2B76: FStAdFunc var_88
  loc_AF2B79: FLdPr var_88
  loc_AF2B7C: LateIdLdVar var_98 DispID_13 -32767
  loc_AF2B83: CBoolVar
  loc_AF2B85: FFree1Ad var_88
  loc_AF2B88: FFree1Var var_98 = ""
  loc_AF2B8B: BranchF loc_AF3292
  loc_AF2B8E: FLdPr Me
  loc_AF2B91: VCallAd Control_ID_DevengadoFlex
  loc_AF2B94: FStAdFunc var_88
  loc_AF2B97: FLdPr var_88
  loc_AF2B9A: LateIdLdVar var_98 DispID_11 0
  loc_AF2BA1: CI4Var
  loc_AF2BA3: LitI4 8
  loc_AF2BA8: EqI4
  loc_AF2BA9: FFree1Ad var_88
  loc_AF2BAC: FFree1Var var_98 = ""
  loc_AF2BAF: BranchF loc_AF30CB
  loc_AF2BB2: FLdPr Me
  loc_AF2BB5: VCallAd Control_ID_DevengadoFlex
  loc_AF2BB8: FStAdFunc var_88
  loc_AF2BBB: FLdPr var_88
  loc_AF2BBE: LateIdLdVar var_98 DispID_10 0
  loc_AF2BC5: CI4Var
  loc_AF2BC7: CVarI4
  loc_AF2BCB: PopAdLdVar
  loc_AF2BCC: LitVarI4
  loc_AF2BD4: PopAdLdVar
  loc_AF2BD5: FLdPr Me
  loc_AF2BD8: VCallAd Control_ID_DevengadoFlex
  loc_AF2BDB: FStAdFunc var_DC
  loc_AF2BDE: FLdPr var_DC
  loc_AF2BE1: LateIdCallLdVar
  loc_AF2BEB: CStrVarTmp
  loc_AF2BEC: CVarStr var_FC
  loc_AF2BEF: ImpAdCallI2 IsNumeric()
  loc_AF2BF4: FFreeAd var_88 = ""
  loc_AF2BFB: FFreeVar var_98 = "": var_EC = ""
  loc_AF2C04: BranchF loc_AF2F03
  loc_AF2C07: FLdPr Me
  loc_AF2C0A: VCallAd Control_ID_DevengadoFlex
  loc_AF2C0D: FStAdFunc var_88
  loc_AF2C10: FLdPr var_88
  loc_AF2C13: LateIdLdVar var_98 DispID_10 0
  loc_AF2C1A: CI4Var
  loc_AF2C1C: CVarI4
  loc_AF2C20: PopAdLdVar
  loc_AF2C21: LitVarI4
  loc_AF2C29: PopAdLdVar
  loc_AF2C2A: FLdPr Me
  loc_AF2C2D: VCallAd Control_ID_DevengadoFlex
  loc_AF2C30: FStAdFunc var_DC
  loc_AF2C33: FLdPr var_DC
  loc_AF2C36: LateIdCallLdVar
  loc_AF2C40: PopAd
  loc_AF2C42: LitStr "0"
  loc_AF2C45: LitI2_Byte &HFF
  loc_AF2C47: LitI2_Byte 0
  loc_AF2C49: LitI2_Byte 0
  loc_AF2C4B: FLdRfVar var_EC
  loc_AF2C4E: CStrVarTmp
  loc_AF2C4F: FStStrNoPop var_100
  loc_AF2C52: LitStr "importe"
  loc_AF2C55: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AF2C5A: FStStrNoPop var_104
  loc_AF2C5D: FLdPr Me
  loc_AF2C60: MemStStrCopy
  loc_AF2C64: FFreeStr var_100 = ""
  loc_AF2C6B: FFreeAd var_88 = ""
  loc_AF2C72: FFreeVar var_98 = ""
  loc_AF2C79: FLdPr Me
  loc_AF2C7C: MemLdStr global_64
  loc_AF2C7F: LitStr vbNullString
  loc_AF2C82: NeStr
  loc_AF2C84: BranchF loc_AF2CB4
  loc_AF2C87: LitI4 0
  loc_AF2C8C: FLdPr Me
  loc_AF2C8F: MemLdStr global_64
  loc_AF2C92: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF2C97: FLdPr Me
  loc_AF2C9A: VCallAd Control_ID_DevengadoFlex
  loc_AF2C9D: FStAdFunc var_88
  loc_AF2CA0: FLdPr var_88
  loc_AF2CA3: LateIdCall
  loc_AF2CAB: FFree1Ad var_88
  loc_AF2CAE: LitI2_Byte &HFF
  loc_AF2CB0: IStI2 arg_C
  loc_AF2CB3: ExitProcHresult
  loc_AF2CB4: FLdPr Me
  loc_AF2CB7: VCallAd Control_ID_DevengadoFlex
  loc_AF2CBA: FStAdFunc var_108
  loc_AF2CBD: FLdPr var_108
  loc_AF2CC0: LateIdLdVar var_FC DispID_10 0
  loc_AF2CC7: CI4Var
  loc_AF2CC9: CVarI4
  loc_AF2CCD: PopAdLdVar
  loc_AF2CCE: LitVarI4
  loc_AF2CD6: PopAdLdVar
  loc_AF2CD7: FLdPr Me
  loc_AF2CDA: VCallAd Control_ID_DevengadoFlex
  loc_AF2CDD: FStAdFunc var_14C
  loc_AF2CE0: FLdPr var_14C
  loc_AF2CE3: LateIdCallLdVar
  loc_AF2CED: PopAd
  loc_AF2CEF: FLdPr Me
  loc_AF2CF2: VCallAd Control_ID_DevengadoFlex
  loc_AF2CF5: FStAdFunc var_88
  loc_AF2CF8: FLdPr var_88
  loc_AF2CFB: LateIdLdVar var_98 DispID_10 0
  loc_AF2D02: CI4Var
  loc_AF2D04: CVarI4
  loc_AF2D08: PopAdLdVar
  loc_AF2D09: LitVarI4
  loc_AF2D11: PopAdLdVar
  loc_AF2D12: FLdPr Me
  loc_AF2D15: VCallAd Control_ID_DevengadoFlex
  loc_AF2D18: FStAdFunc var_DC
  loc_AF2D1B: FLdPr var_DC
  loc_AF2D1E: LateIdCallLdVar
  loc_AF2D28: CStrVarTmp
  loc_AF2D29: FStStrNoPop var_100
  loc_AF2D2C: CR8Str
  loc_AF2D2E: FLdRfVar var_15C
  loc_AF2D31: CStrVarTmp
  loc_AF2D32: FStStrNoPop var_104
  loc_AF2D35: CR8Str
  loc_AF2D37: GtR4
  loc_AF2D38: FFreeStr var_100 = ""
  loc_AF2D3F: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF2D4A: FFreeVar var_98 = "": var_EC = "": var_FC = ""
  loc_AF2D55: BranchF loc_AF2F00
  loc_AF2D58: FLdPr Me
  loc_AF2D5B: VCallAd Control_ID_DevengadoFlex
  loc_AF2D5E: FStAdFunc var_88
  loc_AF2D61: FLdPr var_88
  loc_AF2D64: LateIdLdVar var_98 DispID_10 0
  loc_AF2D6B: CI4Var
  loc_AF2D6D: CVarI4
  loc_AF2D71: PopAdLdVar
  loc_AF2D72: LitVarI4
  loc_AF2D7A: PopAdLdVar
  loc_AF2D7B: FLdPr Me
  loc_AF2D7E: VCallAd Control_ID_DevengadoFlex
  loc_AF2D81: FStAdFunc var_DC
  loc_AF2D84: FLdPr var_DC
  loc_AF2D87: LateIdCallLdVar
  loc_AF2D91: PopAd
  loc_AF2D93: LitVarStr var_138, "El importe no debe ser mayor al valor inicial: "
  loc_AF2D98: LitI4 1
  loc_AF2D9D: LitI4 1
  loc_AF2DA2: LitVarStr var_128, "0.00"
  loc_AF2DA7: FStVarCopyObj var_15C
  loc_AF2DAA: FLdRfVar var_15C
  loc_AF2DAD: FLdRfVar var_EC
  loc_AF2DB0: CStrVarTmp
  loc_AF2DB1: FStStrNoPop var_100
  loc_AF2DB4: CR8Str
  loc_AF2DB6: CVarR8
  loc_AF2DBA: FLdRfVar var_16C
  loc_AF2DBD: ImpAdCallFPR4  = Format(, )
  loc_AF2DC2: FLdRfVar var_16C
  loc_AF2DC5: ConcatVar var_17C
  loc_AF2DC9: LitVarStr var_148, ". Verifique..."
  loc_AF2DCE: ConcatVar var_18C
  loc_AF2DD2: CStrVarTmp
  loc_AF2DD3: FStStrNoPop var_104
  loc_AF2DD6: FLdPr Me
  loc_AF2DD9: MemStStrCopy
  loc_AF2DDD: FFreeStr var_100 = ""
  loc_AF2DE4: FFreeAd var_88 = ""
  loc_AF2DEB: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_16C = "": var_17C = ""
  loc_AF2DFC: LitI4 0
  loc_AF2E01: FLdPr Me
  loc_AF2E04: MemLdStr global_64
  loc_AF2E07: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF2E0C: FLdPr Me
  loc_AF2E0F: VCallAd Control_ID_DevengadoFlex
  loc_AF2E12: FStAdFunc var_88
  loc_AF2E15: FLdPr var_88
  loc_AF2E18: LateIdLdVar var_98 DispID_10 0
  loc_AF2E1F: CI4Var
  loc_AF2E21: CVarI4
  loc_AF2E25: PopAdLdVar
  loc_AF2E26: LitVarI4
  loc_AF2E2E: PopAdLdVar
  loc_AF2E2F: FLdPr Me
  loc_AF2E32: VCallAd Control_ID_DevengadoFlex
  loc_AF2E35: FStAdFunc var_DC
  loc_AF2E38: FLdPr var_DC
  loc_AF2E3B: LateIdCallLdVar
  loc_AF2E45: PopAd
  loc_AF2E47: FLdPr Me
  loc_AF2E4A: VCallAd Control_ID_DevengadoFlex
  loc_AF2E4D: FStAdFunc var_108
  loc_AF2E50: FLdPr var_108
  loc_AF2E53: LateIdLdVar var_17C DispID_10 0
  loc_AF2E5A: CI4Var
  loc_AF2E5C: CVarI4
  loc_AF2E60: PopAdLdVar
  loc_AF2E61: LitVarI4
  loc_AF2E69: PopAdLdVar
  loc_AF2E6A: LitI4 1
  loc_AF2E6F: LitI4 1
  loc_AF2E74: LitVarStr var_118, "0.00"
  loc_AF2E79: FStVarCopyObj var_15C
  loc_AF2E7C: FLdRfVar var_15C
  loc_AF2E7F: FLdRfVar var_EC
  loc_AF2E82: CStrVarTmp
  loc_AF2E83: CVarStr var_FC
  loc_AF2E86: FLdRfVar var_16C
  loc_AF2E89: ImpAdCallFPR4  = Format(, )
  loc_AF2E8E: FLdRfVar var_16C
  loc_AF2E91: CStrVarTmp
  loc_AF2E92: CVarStr var_18C
  loc_AF2E95: PopAdLdVar
  loc_AF2E96: FLdPr Me
  loc_AF2E99: VCallAd Control_ID_DevengadoFlex
  loc_AF2E9C: FStAdFunc var_14C
  loc_AF2E9F: FLdPr var_14C
  loc_AF2EA2: LateIdCallSt
  loc_AF2EAA: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF2EB5: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF2EC6: LitVarI4
  loc_AF2ECE: PopAdLdVar
  loc_AF2ECF: FLdPr Me
  loc_AF2ED2: VCallAd Control_ID_DevengadoFlex
  loc_AF2ED5: FStAdFunc var_88
  loc_AF2ED8: FLdPr var_88
  loc_AF2EDB: LateIdSt
  loc_AF2EE0: FFree1Ad var_88
  loc_AF2EE3: FLdPr Me
  loc_AF2EE6: VCallAd Control_ID_DevengadoFlex
  loc_AF2EE9: FStAdFunc var_88
  loc_AF2EEC: FLdPr var_88
  loc_AF2EEF: LateIdCall
  loc_AF2EF7: FFree1Ad var_88
  loc_AF2EFA: LitI2_Byte &HFF
  loc_AF2EFC: IStI2 arg_C
  loc_AF2EFF: ExitProcHresult
  loc_AF2F00: Branch loc_AF3011
  loc_AF2F03: LitStr "Ingrese un importe valido. Verifique..."
  loc_AF2F06: FLdPr Me
  loc_AF2F09: MemStStrCopy
  loc_AF2F0D: LitI4 0
  loc_AF2F12: FLdPr Me
  loc_AF2F15: MemLdStr global_64
  loc_AF2F18: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF2F1D: FLdPr Me
  loc_AF2F20: VCallAd Control_ID_DevengadoFlex
  loc_AF2F23: FStAdFunc var_88
  loc_AF2F26: FLdPr var_88
  loc_AF2F29: LateIdLdVar var_98 DispID_10 0
  loc_AF2F30: CI4Var
  loc_AF2F32: CVarI4
  loc_AF2F36: PopAdLdVar
  loc_AF2F37: LitVarI4
  loc_AF2F3F: PopAdLdVar
  loc_AF2F40: FLdPr Me
  loc_AF2F43: VCallAd Control_ID_DevengadoFlex
  loc_AF2F46: FStAdFunc var_DC
  loc_AF2F49: FLdPr var_DC
  loc_AF2F4C: LateIdCallLdVar
  loc_AF2F56: PopAd
  loc_AF2F58: FLdPr Me
  loc_AF2F5B: VCallAd Control_ID_DevengadoFlex
  loc_AF2F5E: FStAdFunc var_108
  loc_AF2F61: FLdPr var_108
  loc_AF2F64: LateIdLdVar var_17C DispID_10 0
  loc_AF2F6B: CI4Var
  loc_AF2F6D: CVarI4
  loc_AF2F71: PopAdLdVar
  loc_AF2F72: LitVarI4
  loc_AF2F7A: PopAdLdVar
  loc_AF2F7B: LitI4 1
  loc_AF2F80: LitI4 1
  loc_AF2F85: LitVarStr var_118, "0.00"
  loc_AF2F8A: FStVarCopyObj var_15C
  loc_AF2F8D: FLdRfVar var_15C
  loc_AF2F90: FLdRfVar var_EC
  loc_AF2F93: CStrVarTmp
  loc_AF2F94: CVarStr var_FC
  loc_AF2F97: FLdRfVar var_16C
  loc_AF2F9A: ImpAdCallFPR4  = Format(, )
  loc_AF2F9F: FLdRfVar var_16C
  loc_AF2FA2: CStrVarTmp
  loc_AF2FA3: CVarStr var_18C
  loc_AF2FA6: PopAdLdVar
  loc_AF2FA7: FLdPr Me
  loc_AF2FAA: VCallAd Control_ID_DevengadoFlex
  loc_AF2FAD: FStAdFunc var_14C
  loc_AF2FB0: FLdPr var_14C
  loc_AF2FB3: LateIdCallSt
  loc_AF2FBB: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF2FC6: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF2FD7: LitVarI4
  loc_AF2FDF: PopAdLdVar
  loc_AF2FE0: FLdPr Me
  loc_AF2FE3: VCallAd Control_ID_DevengadoFlex
  loc_AF2FE6: FStAdFunc var_88
  loc_AF2FE9: FLdPr var_88
  loc_AF2FEC: LateIdSt
  loc_AF2FF1: FFree1Ad var_88
  loc_AF2FF4: FLdPr Me
  loc_AF2FF7: VCallAd Control_ID_DevengadoFlex
  loc_AF2FFA: FStAdFunc var_88
  loc_AF2FFD: FLdPr var_88
  loc_AF3000: LateIdCall
  loc_AF3008: FFree1Ad var_88
  loc_AF300B: LitI2_Byte &HFF
  loc_AF300D: IStI2 arg_C
  loc_AF3010: ExitProcHresult
  loc_AF3011: FLdPr Me
  loc_AF3014: VCallAd Control_ID_DevengadoFlex
  loc_AF3017: FStAdFunc var_88
  loc_AF301A: FLdPr var_88
  loc_AF301D: LateIdLdVar var_98 DispID_10 0
  loc_AF3024: CI4Var
  loc_AF3026: CVarI4
  loc_AF302A: PopAdLdVar
  loc_AF302B: LitVarI4
  loc_AF3033: PopAdLdVar
  loc_AF3034: FLdPr Me
  loc_AF3037: VCallAd Control_ID_DevengadoFlex
  loc_AF303A: FStAdFunc var_DC
  loc_AF303D: FLdPr var_DC
  loc_AF3040: LateIdCallLdVar
  loc_AF304A: PopAd
  loc_AF304C: FLdPr Me
  loc_AF304F: VCallAd Control_ID_DevengadoFlex
  loc_AF3052: FStAdFunc var_108
  loc_AF3055: FLdPr var_108
  loc_AF3058: LateIdLdVar var_17C DispID_10 0
  loc_AF305F: CI4Var
  loc_AF3061: CVarI4
  loc_AF3065: PopAdLdVar
  loc_AF3066: LitVarI4
  loc_AF306E: PopAdLdVar
  loc_AF306F: LitI4 1
  loc_AF3074: LitI4 1
  loc_AF3079: LitVarStr var_118, "###,###,##0.00"
  loc_AF307E: FStVarCopyObj var_15C
  loc_AF3081: FLdRfVar var_15C
  loc_AF3084: FLdRfVar var_EC
  loc_AF3087: CStrVarTmp
  loc_AF3088: CVarStr var_FC
  loc_AF308B: FLdRfVar var_16C
  loc_AF308E: ImpAdCallFPR4  = Format(, )
  loc_AF3093: FLdRfVar var_16C
  loc_AF3096: CStrVarTmp
  loc_AF3097: CVarStr var_18C
  loc_AF309A: PopAdLdVar
  loc_AF309B: FLdPr Me
  loc_AF309E: VCallAd Control_ID_DevengadoFlex
  loc_AF30A1: FStAdFunc var_14C
  loc_AF30A4: FLdPr var_14C
  loc_AF30A7: LateIdCallSt
  loc_AF30AF: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF30BA: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF30CB: LitI2_Byte 1
  loc_AF30CD: FLdPr Me
  loc_AF30D0: MemLdRfVar from_stack_1.global_68
  loc_AF30D3: FLdPr Me
  loc_AF30D6: VCallAd Control_ID_DevengadoFlex
  loc_AF30D9: FStAdFunc var_88
  loc_AF30DC: FLdPr var_88
  loc_AF30DF: LateIdLdVar var_98 DispID_4 0
  loc_AF30E6: CI4Var
  loc_AF30E8: LitI4 1
  loc_AF30ED: SubI4
  loc_AF30EE: CI2I4
  loc_AF30EF: FFree1Ad var_88
  loc_AF30F2: FFree1Var var_98 = ""
  loc_AF30F5: ForI2 var_1B0
  loc_AF30FB: FLdPr Me
  loc_AF30FE: MemLdI2 global_68
  loc_AF3101: CI4UI1
  loc_AF3102: CVarI4
  loc_AF3106: PopAdLdVar
  loc_AF3107: LitVarI4
  loc_AF310F: PopAdLdVar
  loc_AF3110: FLdPr Me
  loc_AF3113: VCallAd Control_ID_DevengadoFlex
  loc_AF3116: FStAdFunc var_88
  loc_AF3119: FLdPr var_88
  loc_AF311C: LateIdCallLdVar
  loc_AF3126: CStrVarTmp
  loc_AF3127: FStStrNoPop var_100
  loc_AF312A: LitStr "Si"
  loc_AF312D: EqStr
  loc_AF312F: FFree1Str var_100
  loc_AF3132: FFree1Ad var_88
  loc_AF3135: FFree1Var var_98 = ""
  loc_AF3138: BranchF loc_AF3287
  loc_AF313B: FLdPr Me
  loc_AF313E: MemLdI2 global_68
  loc_AF3141: CI4UI1
  loc_AF3142: CVarI4
  loc_AF3146: PopAdLdVar
  loc_AF3147: LitVarI4
  loc_AF314F: PopAdLdVar
  loc_AF3150: FLdPr Me
  loc_AF3153: VCallAd Control_ID_DevengadoFlex
  loc_AF3156: FStAdFunc var_DC
  loc_AF3159: FLdPr var_DC
  loc_AF315C: LateIdCallLdVar
  loc_AF3166: PopAd
  loc_AF3168: FLdPr Me
  loc_AF316B: MemLdI2 global_68
  loc_AF316E: CI4UI1
  loc_AF316F: CVarI4
  loc_AF3173: PopAdLdVar
  loc_AF3174: LitVarI4
  loc_AF317C: PopAdLdVar
  loc_AF317D: FLdPr Me
  loc_AF3180: VCallAd Control_ID_DevengadoFlex
  loc_AF3183: FStAdFunc var_88
  loc_AF3186: FLdPr var_88
  loc_AF3189: LateIdCallLdVar
  loc_AF3193: CStrVarTmp
  loc_AF3194: FStStrNoPop var_100
  loc_AF3197: CR8Str
  loc_AF3199: FLdRfVar var_EC
  loc_AF319C: CStrVarTmp
  loc_AF319D: FStStrNoPop var_104
  loc_AF31A0: CR8Str
  loc_AF31A2: GtR4
  loc_AF31A3: FFreeStr var_100 = ""
  loc_AF31AA: FFreeAd var_88 = ""
  loc_AF31B1: FFreeVar var_98 = ""
  loc_AF31B8: BranchF loc_AF3287
  loc_AF31BB: FLdPr Me
  loc_AF31BE: MemLdI2 global_68
  loc_AF31C1: CI4UI1
  loc_AF31C2: CVarI4
  loc_AF31C6: PopAdLdVar
  loc_AF31C7: LitVarI4
  loc_AF31CF: PopAdLdVar
  loc_AF31D0: FLdPr Me
  loc_AF31D3: VCallAd Control_ID_DevengadoFlex
  loc_AF31D6: FStAdFunc var_88
  loc_AF31D9: FLdPr var_88
  loc_AF31DC: LateIdCallLdVar
  loc_AF31E6: PopAd
  loc_AF31E8: LitStr "El importe no debe ser mayor al valor inicial: "
  loc_AF31EB: LitI4 1
  loc_AF31F0: LitI4 1
  loc_AF31F5: LitVarStr var_128, "0.00"
  loc_AF31FA: FStVarCopyObj var_FC
  loc_AF31FD: FLdRfVar var_FC
  loc_AF3200: FLdRfVar var_98
  loc_AF3203: CStrVarTmp
  loc_AF3204: FStStrNoPop var_100
  loc_AF3207: CR8Str
  loc_AF3209: CVarR8
  loc_AF320D: ImpAdCallI2 Format$(, )
  loc_AF3212: FStStrNoPop var_104
  loc_AF3215: ConcatStr
  loc_AF3216: FStStrNoPop var_1B4
  loc_AF3219: LitStr ". En la fila Numero: "
  loc_AF321C: ConcatStr
  loc_AF321D: FStStrNoPop var_1B8
  loc_AF3220: FLdPr Me
  loc_AF3223: MemLdI2 global_68
  loc_AF3226: CStrUI1
  loc_AF3228: FStStrNoPop var_1BC
  loc_AF322B: ConcatStr
  loc_AF322C: FStStrNoPop var_1C0
  loc_AF322F: LitStr ". Verifique..."
  loc_AF3232: ConcatStr
  loc_AF3233: FStStrNoPop var_1C4
  loc_AF3236: FLdPr Me
  loc_AF3239: MemStStrCopy
  loc_AF323D: FFreeStr var_100 = "": var_104 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_AF324E: FFree1Ad var_88
  loc_AF3251: FFreeVar var_98 = "": var_EC = ""
  loc_AF325A: LitI4 0
  loc_AF325F: FLdPr Me
  loc_AF3262: MemLdStr global_64
  loc_AF3265: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF326A: FLdPr Me
  loc_AF326D: VCallAd Control_ID_DevengadoFlex
  loc_AF3270: FStAdFunc var_88
  loc_AF3273: FLdPr var_88
  loc_AF3276: LateIdCall
  loc_AF327E: FFree1Ad var_88
  loc_AF3281: LitI2_Byte &HFF
  loc_AF3283: IStI2 arg_C
  loc_AF3286: ExitProcHresult
  loc_AF3287: FLdPr Me
  loc_AF328A: MemLdRfVar from_stack_1.global_68
  loc_AF328D: NextI2 var_1B0, loc_AF30FB
  loc_AF3292: ExitProcHresult
End Function

Private Sub DevengadoFlex_Click() '9DA1BC
  'Data Table: 4782C4
  loc_9DA0C0: FLdPr Me
  loc_9DA0C3: VCallAd Control_ID_DevengadoFlex
  loc_9DA0C6: FStAdFunc var_88
  loc_9DA0C9: FLdPr var_88
  loc_9DA0CC: LateIdLdVar var_98 DispID_13 -32767
  loc_9DA0D3: CBoolVar
  loc_9DA0D5: FFree1Ad var_88
  loc_9DA0D8: FFree1Var var_98 = ""
  loc_9DA0DB: BranchF loc_9DA1BB
  loc_9DA0DE: FLdPr Me
  loc_9DA0E1: VCallAd Control_ID_DevengadoFlex
  loc_9DA0E4: FStAdFunc var_88
  loc_9DA0E7: FLdPr var_88
  loc_9DA0EA: LateIdLdVar var_98 DispID_11 0
  loc_9DA0F1: CI4Var
  loc_9DA0F3: LitI4 8
  loc_9DA0F8: NeI4
  loc_9DA0F9: FFree1Ad var_88
  loc_9DA0FC: FFree1Var var_98 = ""
  loc_9DA0FF: BranchF loc_9DA1BB
  loc_9DA102: FLdPr Me
  loc_9DA105: VCallAd Control_ID_DevengadoFlex
  loc_9DA108: FStAdFunc var_88
  loc_9DA10B: FLdPr var_88
  loc_9DA10E: LateIdLdVar var_98 DispID_10 0
  loc_9DA115: CI4Var
  loc_9DA117: CVarI4
  loc_9DA11B: PopAdLdVar
  loc_9DA11C: LitVarI4
  loc_9DA124: PopAdLdVar
  loc_9DA125: FLdPr Me
  loc_9DA128: VCallAd Control_ID_DevengadoFlex
  loc_9DA12B: FStAdFunc var_DC
  loc_9DA12E: FLdPr var_DC
  loc_9DA131: LateIdCallLdVar
  loc_9DA13B: CStrVarTmp
  loc_9DA13C: FStStrNoPop var_F0
  loc_9DA13F: LitStr "No"
  loc_9DA142: EqStr
  loc_9DA144: FFree1Str var_F0
  loc_9DA147: FFreeAd var_88 = ""
  loc_9DA14E: FFreeVar var_98 = ""
  loc_9DA155: BranchF loc_9DA160
  loc_9DA158: Call Proc_120_26_A1C2F4()
  loc_9DA15D: Branch loc_9DA1BB
  loc_9DA160: FLdPr Me
  loc_9DA163: VCallAd Control_ID_DevengadoFlex
  loc_9DA166: FStAdFunc var_88
  loc_9DA169: FLdPr var_88
  loc_9DA16C: LateIdLdVar var_98 DispID_10 0
  loc_9DA173: CI4Var
  loc_9DA175: CVarI4
  loc_9DA179: PopAdLdVar
  loc_9DA17A: LitVarI4
  loc_9DA182: PopAdLdVar
  loc_9DA183: FLdPr Me
  loc_9DA186: VCallAd Control_ID_DevengadoFlex
  loc_9DA189: FStAdFunc var_DC
  loc_9DA18C: FLdPr var_DC
  loc_9DA18F: LateIdCallLdVar
  loc_9DA199: CStrVarTmp
  loc_9DA19A: FStStrNoPop var_F0
  loc_9DA19D: LitStr "Si"
  loc_9DA1A0: EqStr
  loc_9DA1A2: FFree1Str var_F0
  loc_9DA1A5: FFreeAd var_88 = ""
  loc_9DA1AC: FFreeVar var_98 = ""
  loc_9DA1B3: BranchF loc_9DA1BB
  loc_9DA1B6: Call Proc_120_27_9BBFDC()
  loc_9DA1BB: ExitProcHresult
End Sub

Private Sub DevengadoFlex_KeyPress(KeyAscii As Integer) 'A36A54
  'Data Table: 4782C4
  loc_A36850: ILdI2 KeyAscii
  loc_A36853: CI4UI1
  loc_A36854: LitI4 &H20
  loc_A36859: EqI4
  loc_A3685A: BranchF loc_A36862
  loc_A3685D: Call DevengadoFlex_Click()
  loc_A36862: FLdPr Me
  loc_A36865: VCallAd Control_ID_DevengadoFlex
  loc_A36868: FStAdFunc var_88
  loc_A3686B: FLdPr var_88
  loc_A3686E: LateIdLdVar var_98 DispID_10 0
  loc_A36875: CI4Var
  loc_A36877: CVarI4
  loc_A3687B: PopAdLdVar
  loc_A3687C: LitVarI4
  loc_A36884: PopAdLdVar
  loc_A36885: FLdPr Me
  loc_A36888: VCallAd Control_ID_DevengadoFlex
  loc_A3688B: FStAdFunc var_DC
  loc_A3688E: FLdPr var_DC
  loc_A36891: LateIdCallLdVar
  loc_A3689B: CStrVarTmp
  loc_A3689C: FStStrNoPop var_F0
  loc_A3689F: LitStr "Si"
  loc_A368A2: EqStr
  loc_A368A4: FFree1Str var_F0
  loc_A368A7: FFreeAd var_88 = ""
  loc_A368AE: FFreeVar var_98 = ""
  loc_A368B5: BranchF loc_A36A50
  loc_A368B8: ILdI2 KeyAscii
  loc_A368BB: LitI2_Byte 8
  loc_A368BD: EqI2
  loc_A368BE: BranchF loc_A3697D
  loc_A368C1: FLdPr Me
  loc_A368C4: VCallAd Control_ID_DevengadoFlex
  loc_A368C7: FStAdFunc var_88
  loc_A368CA: FLdPr var_88
  loc_A368CD: LateIdLdVar var_98 DispID_11 0
  loc_A368D4: CI4Var
  loc_A368D6: LitI4 8
  loc_A368DB: EqI4
  loc_A368DC: FFree1Ad var_88
  loc_A368DF: FFree1Var var_98 = ""
  loc_A368E2: BranchF loc_A3697A
  loc_A368E5: FLdPr Me
  loc_A368E8: VCallAd Control_ID_DevengadoFlex
  loc_A368EB: FStAdFunc var_88
  loc_A368EE: FLdPr var_88
  loc_A368F1: LateIdLdVar var_98 DispID_0 0
  loc_A368F8: CStrVarTmp
  loc_A368F9: FStStrNoPop var_F0
  loc_A368FC: LitStr vbNullString
  loc_A368FF: NeStr
  loc_A36901: FFree1Str var_F0
  loc_A36904: FFree1Ad var_88
  loc_A36907: FFree1Var var_98 = ""
  loc_A3690A: BranchF loc_A3697A
  loc_A3690D: FLdPr Me
  loc_A36910: VCallAd Control_ID_DevengadoFlex
  loc_A36913: FStAdFunc var_88
  loc_A36916: FLdPr var_88
  loc_A36919: LateIdLdVar var_98 DispID_0 0
  loc_A36920: PopAd
  loc_A36922: FLdPr Me
  loc_A36925: VCallAd Control_ID_DevengadoFlex
  loc_A36928: FStAdFunc var_DC
  loc_A3692B: FLdPr var_DC
  loc_A3692E: LateIdLdVar var_EC DispID_0 0
  loc_A36935: CStrVarTmp
  loc_A36936: FStStrNoPop var_F0
  loc_A36939: FnLenStr
  loc_A3693A: LitI4 1
  loc_A3693F: SubI4
  loc_A36940: FLdRfVar var_98
  loc_A36943: CStrVarTmp
  loc_A36944: FStStrNoPop var_F4
  loc_A36947: ImpAdCallI2 Left$(, )
  loc_A3694C: CVarStr var_104
  loc_A3694F: PopAdLdVar
  loc_A36950: FLdPr Me
  loc_A36953: VCallAd Control_ID_DevengadoFlex
  loc_A36956: FStAdFunc var_108
  loc_A36959: FLdPr var_108
  loc_A3695C: LateIdSt
  loc_A36961: FFreeStr var_F0 = ""
  loc_A36968: FFreeAd var_88 = "": var_DC = ""
  loc_A36971: FFreeVar var_98 = "": var_EC = ""
  loc_A3697A: Branch loc_A36A50
  loc_A3697D: FLdPr Me
  loc_A36980: VCallAd Control_ID_DevengadoFlex
  loc_A36983: FStAdFunc var_88
  loc_A36986: FLdPr var_88
  loc_A36989: LateIdLdVar var_98 DispID_11 0
  loc_A36990: CI4Var
  loc_A36992: LitI4 8
  loc_A36997: EqI4
  loc_A36998: FFree1Ad var_88
  loc_A3699B: FFree1Var var_98 = ""
  loc_A3699E: BranchF loc_A36A50
  loc_A369A1: FLdPr Me
  loc_A369A4: VCallAd Control_ID_DevengadoFlex
  loc_A369A7: FStAdFunc var_88
  loc_A369AA: FLdPr var_88
  loc_A369AD: LateIdLdVar var_98 DispID_0 0
  loc_A369B4: CStrVarTmp
  loc_A369B5: FStStrNoPop var_F0
  loc_A369B8: FnLenStr
  loc_A369B9: LitI4 &HC
  loc_A369BE: LeI4
  loc_A369BF: FFree1Str var_F0
  loc_A369C2: FFree1Ad var_88
  loc_A369C5: FFree1Var var_98 = ""
  loc_A369C8: BranchF loc_A36A50
  loc_A369CB: ILdI2 KeyAscii
  loc_A369CE: LitStr "."
  loc_A369D1: ImpAdCallI2 Asc()
  loc_A369D6: EqI2
  loc_A369D7: BranchF loc_A369E5
  loc_A369DA: LitStr ","
  loc_A369DD: ImpAdCallI2 Asc()
  loc_A369E2: IStI2 KeyAscii
  loc_A369E5: LitStr "1234567890.,"
  loc_A369E8: FStStrCopy var_F0
  loc_A369EB: FLdRfVar var_F0
  loc_A369EE: ILdRf KeyAscii
  loc_A369F1: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A369F6: IStI2 KeyAscii
  loc_A369F9: FFree1Str var_F0
  loc_A369FC: FLdPr Me
  loc_A369FF: VCallAd Control_ID_DevengadoFlex
  loc_A36A02: FStAdFunc var_88
  loc_A36A05: FLdPr var_88
  loc_A36A08: LateIdLdVar var_98 DispID_0 0
  loc_A36A0F: CStrVarTmp
  loc_A36A10: CVarStr var_104
  loc_A36A13: ILdI2 KeyAscii
  loc_A36A16: CI4UI1
  loc_A36A17: FLdRfVar var_EC
  loc_A36A1A: ImpAdCallFPR4  = Chr()
  loc_A36A1F: FLdRfVar var_EC
  loc_A36A22: AddVar var_118
  loc_A36A26: CStrVarTmp
  loc_A36A27: CVarStr var_128
  loc_A36A2A: PopAdLdVar
  loc_A36A2B: FLdPr Me
  loc_A36A2E: VCallAd Control_ID_DevengadoFlex
  loc_A36A31: FStAdFunc var_DC
  loc_A36A34: FLdPr var_DC
  loc_A36A37: LateIdSt
  loc_A36A3C: FFreeAd var_88 = ""
  loc_A36A43: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A36A50: ExitProcHresult
End Sub

Private Sub DevengadoFlex_LeaveCell() 'AE2EF8
  'Data Table: 4782C4
  loc_AE2830: FLdPr Me
  loc_AE2833: VCallAd Control_ID_DevengadoFlex
  loc_AE2836: FStAdFunc var_88
  loc_AE2839: FLdPr var_88
  loc_AE283C: LateIdLdVar var_98 DispID_10 0
  loc_AE2843: CI4Var
  loc_AE2845: CVarI4
  loc_AE2849: PopAdLdVar
  loc_AE284A: LitVarI4
  loc_AE2852: PopAdLdVar
  loc_AE2853: FLdPr Me
  loc_AE2856: VCallAd Control_ID_DevengadoFlex
  loc_AE2859: FStAdFunc var_DC
  loc_AE285C: FLdPr var_DC
  loc_AE285F: LateIdCallLdVar
  loc_AE2869: CStrVarTmp
  loc_AE286A: FStStrNoPop var_F0
  loc_AE286D: LitStr "Si"
  loc_AE2870: EqStr
  loc_AE2872: FFree1Str var_F0
  loc_AE2875: FFreeAd var_88 = ""
  loc_AE287C: FFreeVar var_98 = ""
  loc_AE2883: BranchF loc_AE2EF4
  loc_AE2886: FLdPr Me
  loc_AE2889: VCallAd Control_ID_DevengadoFlex
  loc_AE288C: FStAdFunc var_88
  loc_AE288F: FLdPr var_88
  loc_AE2892: LateIdLdVar var_98 DispID_11 0
  loc_AE2899: CI4Var
  loc_AE289B: LitI4 8
  loc_AE28A0: EqI4
  loc_AE28A1: FFree1Ad var_88
  loc_AE28A4: FFree1Var var_98 = ""
  loc_AE28A7: BranchF loc_AE2EF4
  loc_AE28AA: FLdPr Me
  loc_AE28AD: VCallAd Control_ID_DevengadoFlex
  loc_AE28B0: FStAdFunc var_88
  loc_AE28B3: FLdPr var_88
  loc_AE28B6: LateIdLdVar var_98 DispID_10 0
  loc_AE28BD: CI4Var
  loc_AE28BF: CVarI4
  loc_AE28C3: PopAdLdVar
  loc_AE28C4: LitVarI4
  loc_AE28CC: PopAdLdVar
  loc_AE28CD: FLdPr Me
  loc_AE28D0: VCallAd Control_ID_DevengadoFlex
  loc_AE28D3: FStAdFunc var_DC
  loc_AE28D6: FLdPr var_DC
  loc_AE28D9: LateIdCallLdVar
  loc_AE28E3: CStrVarTmp
  loc_AE28E4: CVarStr var_100
  loc_AE28E7: ImpAdCallI2 IsNumeric()
  loc_AE28EC: FFreeAd var_88 = ""
  loc_AE28F3: FFreeVar var_98 = "": var_EC = ""
  loc_AE28FC: BranchF loc_AE2C6F
  loc_AE28FF: FLdPr Me
  loc_AE2902: VCallAd Control_ID_DevengadoFlex
  loc_AE2905: FStAdFunc var_88
  loc_AE2908: FLdPr var_88
  loc_AE290B: LateIdLdVar var_98 DispID_10 0
  loc_AE2912: CI4Var
  loc_AE2914: CVarI4
  loc_AE2918: PopAdLdVar
  loc_AE2919: LitVarI4
  loc_AE2921: PopAdLdVar
  loc_AE2922: FLdPr Me
  loc_AE2925: VCallAd Control_ID_DevengadoFlex
  loc_AE2928: FStAdFunc var_DC
  loc_AE292B: FLdPr var_DC
  loc_AE292E: LateIdCallLdVar
  loc_AE2938: PopAd
  loc_AE293A: LitStr "0"
  loc_AE293D: LitI2_Byte &HFF
  loc_AE293F: LitI2_Byte 0
  loc_AE2941: LitI2_Byte 0
  loc_AE2943: FLdRfVar var_EC
  loc_AE2946: CStrVarTmp
  loc_AE2947: FStStrNoPop var_F0
  loc_AE294A: LitStr "Importe"
  loc_AE294D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AE2952: FStStrNoPop var_104
  loc_AE2955: FLdPr Me
  loc_AE2958: MemStStrCopy
  loc_AE295C: FFreeStr var_F0 = ""
  loc_AE2963: FFreeAd var_88 = ""
  loc_AE296A: FFreeVar var_98 = ""
  loc_AE2971: FLdPr Me
  loc_AE2974: MemLdStr global_64
  loc_AE2977: LitStr vbNullString
  loc_AE297A: NeStr
  loc_AE297C: BranchF loc_AE2A32
  loc_AE297F: LitI4 0
  loc_AE2984: FLdPr Me
  loc_AE2987: MemLdStr global_64
  loc_AE298A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE298F: FLdPr Me
  loc_AE2992: VCallAd Control_ID_DevengadoFlex
  loc_AE2995: FStAdFunc var_108
  loc_AE2998: FLdPr var_108
  loc_AE299B: LateIdLdVar var_100 DispID_10 0
  loc_AE29A2: CI4Var
  loc_AE29A4: CVarI4
  loc_AE29A8: PopAdLdVar
  loc_AE29A9: LitVarI4
  loc_AE29B1: PopAdLdVar
  loc_AE29B2: FLdPr Me
  loc_AE29B5: VCallAd Control_ID_DevengadoFlex
  loc_AE29B8: FStAdFunc var_88
  loc_AE29BB: FLdPr var_88
  loc_AE29BE: LateIdLdVar var_98 DispID_10 0
  loc_AE29C5: CI4Var
  loc_AE29C7: CVarI4
  loc_AE29CB: PopAdLdVar
  loc_AE29CC: LitVarI4
  loc_AE29D4: PopAdLdVar
  loc_AE29D5: FLdPr Me
  loc_AE29D8: VCallAd Control_ID_DevengadoFlex
  loc_AE29DB: FStAdFunc var_DC
  loc_AE29DE: FLdPr var_DC
  loc_AE29E1: LateIdCallLdVar
  loc_AE29EB: CStrVarTmp
  loc_AE29EC: CVarStr var_158
  loc_AE29EF: PopAdLdVar
  loc_AE29F0: FLdPr Me
  loc_AE29F3: VCallAd Control_ID_DevengadoFlex
  loc_AE29F6: FStAdFunc var_16C
  loc_AE29F9: FLdPr var_16C
  loc_AE29FC: LateIdCallSt
  loc_AE2A04: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2A0F: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE2A1A: FLdPr Me
  loc_AE2A1D: VCallAd Control_ID_DevengadoFlex
  loc_AE2A20: FStAdFunc var_88
  loc_AE2A23: FLdPr var_88
  loc_AE2A26: LateIdCall
  loc_AE2A2E: FFree1Ad var_88
  loc_AE2A31: ExitProcHresult
  loc_AE2A32: FLdPr Me
  loc_AE2A35: VCallAd Control_ID_DevengadoFlex
  loc_AE2A38: FStAdFunc var_108
  loc_AE2A3B: FLdPr var_108
  loc_AE2A3E: LateIdLdVar var_100 DispID_10 0
  loc_AE2A45: CI4Var
  loc_AE2A47: CVarI4
  loc_AE2A4B: PopAdLdVar
  loc_AE2A4C: LitVarI4
  loc_AE2A54: PopAdLdVar
  loc_AE2A55: FLdPr Me
  loc_AE2A58: VCallAd Control_ID_DevengadoFlex
  loc_AE2A5B: FStAdFunc var_16C
  loc_AE2A5E: FLdPr var_16C
  loc_AE2A61: LateIdCallLdVar
  loc_AE2A6B: PopAd
  loc_AE2A6D: FLdPr Me
  loc_AE2A70: VCallAd Control_ID_DevengadoFlex
  loc_AE2A73: FStAdFunc var_88
  loc_AE2A76: FLdPr var_88
  loc_AE2A79: LateIdLdVar var_98 DispID_10 0
  loc_AE2A80: CI4Var
  loc_AE2A82: CVarI4
  loc_AE2A86: PopAdLdVar
  loc_AE2A87: LitVarI4
  loc_AE2A8F: PopAdLdVar
  loc_AE2A90: FLdPr Me
  loc_AE2A93: VCallAd Control_ID_DevengadoFlex
  loc_AE2A96: FStAdFunc var_DC
  loc_AE2A99: FLdPr var_DC
  loc_AE2A9C: LateIdCallLdVar
  loc_AE2AA6: CStrVarTmp
  loc_AE2AA7: FStStrNoPop var_F0
  loc_AE2AAA: CR8Str
  loc_AE2AAC: FLdRfVar var_158
  loc_AE2AAF: CStrVarTmp
  loc_AE2AB0: FStStrNoPop var_104
  loc_AE2AB3: CR8Str
  loc_AE2AB5: GtR4
  loc_AE2AB6: FFreeStr var_F0 = ""
  loc_AE2ABD: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2AC8: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE2AD3: BranchF loc_AE2C6C
  loc_AE2AD6: FLdPr Me
  loc_AE2AD9: VCallAd Control_ID_DevengadoFlex
  loc_AE2ADC: FStAdFunc var_88
  loc_AE2ADF: FLdPr var_88
  loc_AE2AE2: LateIdLdVar var_98 DispID_10 0
  loc_AE2AE9: CI4Var
  loc_AE2AEB: CVarI4
  loc_AE2AEF: PopAdLdVar
  loc_AE2AF0: LitVarI4
  loc_AE2AF8: PopAdLdVar
  loc_AE2AF9: FLdPr Me
  loc_AE2AFC: VCallAd Control_ID_DevengadoFlex
  loc_AE2AFF: FStAdFunc var_DC
  loc_AE2B02: FLdPr var_DC
  loc_AE2B05: LateIdCallLdVar
  loc_AE2B0F: PopAd
  loc_AE2B11: LitI4 1
  loc_AE2B16: LitI4 1
  loc_AE2B1B: LitVarStr var_128, "0.00"
  loc_AE2B20: FStVarCopyObj var_158
  loc_AE2B23: FLdRfVar var_158
  loc_AE2B26: FLdRfVar var_EC
  loc_AE2B29: CStrVarTmp
  loc_AE2B2A: FStStrNoPop var_F0
  loc_AE2B2D: CR8Str
  loc_AE2B2F: CVarR8
  loc_AE2B33: FLdRfVar var_17C
  loc_AE2B36: ImpAdCallFPR4  = Format(, )
  loc_AE2B3B: LitI4 0
  loc_AE2B40: LitVarStr var_138, "El importe no debe ser mayor al valor inicial: "
  loc_AE2B45: FLdRfVar var_17C
  loc_AE2B48: ConcatVar var_18C
  loc_AE2B4C: LitVarStr var_148, ". Verifique..."
  loc_AE2B51: ConcatVar var_19C
  loc_AE2B55: CStrVarVal var_104
  loc_AE2B59: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE2B5E: FFreeStr var_F0 = ""
  loc_AE2B65: FFreeAd var_88 = ""
  loc_AE2B6C: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = "": var_18C = ""
  loc_AE2B7D: FLdPr Me
  loc_AE2B80: VCallAd Control_ID_DevengadoFlex
  loc_AE2B83: FStAdFunc var_88
  loc_AE2B86: FLdPr var_88
  loc_AE2B89: LateIdLdVar var_98 DispID_10 0
  loc_AE2B90: CI4Var
  loc_AE2B92: CVarI4
  loc_AE2B96: PopAdLdVar
  loc_AE2B97: LitVarI4
  loc_AE2B9F: PopAdLdVar
  loc_AE2BA0: FLdPr Me
  loc_AE2BA3: VCallAd Control_ID_DevengadoFlex
  loc_AE2BA6: FStAdFunc var_DC
  loc_AE2BA9: FLdPr var_DC
  loc_AE2BAC: LateIdCallLdVar
  loc_AE2BB6: PopAd
  loc_AE2BB8: FLdPr Me
  loc_AE2BBB: VCallAd Control_ID_DevengadoFlex
  loc_AE2BBE: FStAdFunc var_108
  loc_AE2BC1: FLdPr var_108
  loc_AE2BC4: LateIdLdVar var_18C DispID_10 0
  loc_AE2BCB: CI4Var
  loc_AE2BCD: CVarI4
  loc_AE2BD1: PopAdLdVar
  loc_AE2BD2: LitVarI4
  loc_AE2BDA: PopAdLdVar
  loc_AE2BDB: LitI4 1
  loc_AE2BE0: LitI4 1
  loc_AE2BE5: LitVarStr var_118, "###,###,##0.00"
  loc_AE2BEA: FStVarCopyObj var_158
  loc_AE2BED: FLdRfVar var_158
  loc_AE2BF0: FLdRfVar var_EC
  loc_AE2BF3: CStrVarTmp
  loc_AE2BF4: CVarStr var_100
  loc_AE2BF7: FLdRfVar var_17C
  loc_AE2BFA: ImpAdCallFPR4  = Format(, )
  loc_AE2BFF: FLdRfVar var_17C
  loc_AE2C02: CStrVarTmp
  loc_AE2C03: CVarStr var_19C
  loc_AE2C06: PopAdLdVar
  loc_AE2C07: FLdPr Me
  loc_AE2C0A: VCallAd Control_ID_DevengadoFlex
  loc_AE2C0D: FStAdFunc var_16C
  loc_AE2C10: FLdPr var_16C
  loc_AE2C13: LateIdCallSt
  loc_AE2C1B: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2C26: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_18C = "": var_17C = ""
  loc_AE2C37: LitVarI4
  loc_AE2C3F: PopAdLdVar
  loc_AE2C40: FLdPr Me
  loc_AE2C43: VCallAd Control_ID_DevengadoFlex
  loc_AE2C46: FStAdFunc var_88
  loc_AE2C49: FLdPr var_88
  loc_AE2C4C: LateIdSt
  loc_AE2C51: FFree1Ad var_88
  loc_AE2C54: FLdPr Me
  loc_AE2C57: VCallAd Control_ID_DevengadoFlex
  loc_AE2C5A: FStAdFunc var_88
  loc_AE2C5D: FLdPr var_88
  loc_AE2C60: LateIdCall
  loc_AE2C68: FFree1Ad var_88
  loc_AE2C6B: ExitProcHresult
  loc_AE2C6C: Branch loc_AE2D62
  loc_AE2C6F: LitI4 0
  loc_AE2C74: LitStr "Ingrese un importe valido. Verifique..."
  loc_AE2C77: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE2C7C: FLdPr Me
  loc_AE2C7F: VCallAd Control_ID_DevengadoFlex
  loc_AE2C82: FStAdFunc var_88
  loc_AE2C85: FLdPr var_88
  loc_AE2C88: LateIdLdVar var_98 DispID_10 0
  loc_AE2C8F: CI4Var
  loc_AE2C91: CVarI4
  loc_AE2C95: PopAdLdVar
  loc_AE2C96: LitVarI4
  loc_AE2C9E: PopAdLdVar
  loc_AE2C9F: FLdPr Me
  loc_AE2CA2: VCallAd Control_ID_DevengadoFlex
  loc_AE2CA5: FStAdFunc var_DC
  loc_AE2CA8: FLdPr var_DC
  loc_AE2CAB: LateIdCallLdVar
  loc_AE2CB5: PopAd
  loc_AE2CB7: FLdPr Me
  loc_AE2CBA: VCallAd Control_ID_DevengadoFlex
  loc_AE2CBD: FStAdFunc var_108
  loc_AE2CC0: FLdPr var_108
  loc_AE2CC3: LateIdLdVar var_17C DispID_10 0
  loc_AE2CCA: CI4Var
  loc_AE2CCC: CVarI4
  loc_AE2CD0: PopAdLdVar
  loc_AE2CD1: LitVarI4
  loc_AE2CD9: PopAdLdVar
  loc_AE2CDA: LitI4 1
  loc_AE2CDF: LitI4 1
  loc_AE2CE4: LitVarStr var_118, "###,###,##0.00"
  loc_AE2CE9: FStVarCopyObj var_158
  loc_AE2CEC: FLdRfVar var_158
  loc_AE2CEF: FLdRfVar var_EC
  loc_AE2CF2: CStrVarTmp
  loc_AE2CF3: CVarStr var_100
  loc_AE2CF6: ImpAdCallI2 Format$(, )
  loc_AE2CFB: CVarStr var_18C
  loc_AE2CFE: PopAdLdVar
  loc_AE2CFF: FLdPr Me
  loc_AE2D02: VCallAd Control_ID_DevengadoFlex
  loc_AE2D05: FStAdFunc var_16C
  loc_AE2D08: FLdPr var_16C
  loc_AE2D0B: LateIdCallSt
  loc_AE2D13: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2D1E: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = ""
  loc_AE2D2D: LitVarI4
  loc_AE2D35: PopAdLdVar
  loc_AE2D36: FLdPr Me
  loc_AE2D39: VCallAd Control_ID_DevengadoFlex
  loc_AE2D3C: FStAdFunc var_88
  loc_AE2D3F: FLdPr var_88
  loc_AE2D42: LateIdSt
  loc_AE2D47: FFree1Ad var_88
  loc_AE2D4A: FLdPr Me
  loc_AE2D4D: VCallAd Control_ID_DevengadoFlex
  loc_AE2D50: FStAdFunc var_88
  loc_AE2D53: FLdPr var_88
  loc_AE2D56: LateIdCall
  loc_AE2D5E: FFree1Ad var_88
  loc_AE2D61: ExitProcHresult
  loc_AE2D62: FLdPr Me
  loc_AE2D65: VCallAd Control_ID_DevengadoFlex
  loc_AE2D68: FStAdFunc var_88
  loc_AE2D6B: FLdPr var_88
  loc_AE2D6E: LateIdLdVar var_98 DispID_10 0
  loc_AE2D75: CI4Var
  loc_AE2D77: CVarI4
  loc_AE2D7B: PopAdLdVar
  loc_AE2D7C: LitVarI4
  loc_AE2D84: PopAdLdVar
  loc_AE2D85: FLdPr Me
  loc_AE2D88: VCallAd Control_ID_DevengadoFlex
  loc_AE2D8B: FStAdFunc var_DC
  loc_AE2D8E: FLdPr var_DC
  loc_AE2D91: LateIdCallLdVar
  loc_AE2D9B: PopAd
  loc_AE2D9D: FLdPr Me
  loc_AE2DA0: VCallAd Control_ID_DevengadoFlex
  loc_AE2DA3: FStAdFunc var_108
  loc_AE2DA6: FLdPr var_108
  loc_AE2DA9: LateIdLdVar var_17C DispID_10 0
  loc_AE2DB0: CI4Var
  loc_AE2DB2: CVarI4
  loc_AE2DB6: PopAdLdVar
  loc_AE2DB7: LitVarI4
  loc_AE2DBF: PopAdLdVar
  loc_AE2DC0: LitI4 1
  loc_AE2DC5: LitI4 1
  loc_AE2DCA: LitVarStr var_118, "###,###,##0.00"
  loc_AE2DCF: FStVarCopyObj var_158
  loc_AE2DD2: FLdRfVar var_158
  loc_AE2DD5: FLdRfVar var_EC
  loc_AE2DD8: CStrVarTmp
  loc_AE2DD9: CVarStr var_100
  loc_AE2DDC: ImpAdCallI2 Format$(, )
  loc_AE2DE1: CVarStr var_18C
  loc_AE2DE4: PopAdLdVar
  loc_AE2DE5: FLdPr Me
  loc_AE2DE8: VCallAd Control_ID_DevengadoFlex
  loc_AE2DEB: FStAdFunc var_16C
  loc_AE2DEE: FLdPr var_16C
  loc_AE2DF1: LateIdCallSt
  loc_AE2DF9: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2E04: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = ""
  loc_AE2E13: FLdPr Me
  loc_AE2E16: VCallAd Control_ID_DevengadoFlex
  loc_AE2E19: FStAdFunc var_108
  loc_AE2E1C: FLdPr var_108
  loc_AE2E1F: LateIdLdVar var_100 DispID_10 0
  loc_AE2E26: CI4Var
  loc_AE2E28: CVarI4
  loc_AE2E2C: PopAdLdVar
  loc_AE2E2D: LitVarI4
  loc_AE2E35: PopAdLdVar
  loc_AE2E36: FLdPr Me
  loc_AE2E39: VCallAd Control_ID_DevengadoFlex
  loc_AE2E3C: FStAdFunc var_16C
  loc_AE2E3F: FLdPr var_16C
  loc_AE2E42: LateIdCallLdVar
  loc_AE2E4C: PopAd
  loc_AE2E4E: FLdPr Me
  loc_AE2E51: VCallAd Control_ID_DevengadoFlex
  loc_AE2E54: FStAdFunc var_88
  loc_AE2E57: FLdPr var_88
  loc_AE2E5A: LateIdLdVar var_98 DispID_10 0
  loc_AE2E61: CI4Var
  loc_AE2E63: CVarI4
  loc_AE2E67: PopAdLdVar
  loc_AE2E68: LitVarI4
  loc_AE2E70: PopAdLdVar
  loc_AE2E71: FLdPr Me
  loc_AE2E74: VCallAd Control_ID_DevengadoFlex
  loc_AE2E77: FStAdFunc var_DC
  loc_AE2E7A: FLdPr var_DC
  loc_AE2E7D: LateIdCallLdVar
  loc_AE2E87: CStrVarTmp
  loc_AE2E88: FStStrNoPop var_F0
  loc_AE2E8B: CR8Str
  loc_AE2E8D: FLdRfVar var_158
  loc_AE2E90: CStrVarTmp
  loc_AE2E91: FStStrNoPop var_104
  loc_AE2E94: CR8Str
  loc_AE2E96: LtR8
  loc_AE2E97: FFreeStr var_F0 = ""
  loc_AE2E9E: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE2EA9: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE2EB4: BranchF loc_AE2ED7
  loc_AE2EB7: LitVarI4
  loc_AE2EBF: PopAdLdVar
  loc_AE2EC0: FLdPr Me
  loc_AE2EC3: VCallAd Control_ID_DevengadoFlex
  loc_AE2EC6: FStAdFunc var_88
  loc_AE2EC9: FLdPr var_88
  loc_AE2ECC: LateIdSt
  loc_AE2ED1: FFree1Ad var_88
  loc_AE2ED4: Branch loc_AE2EF4
  loc_AE2ED7: LitVarI4
  loc_AE2EDF: PopAdLdVar
  loc_AE2EE0: FLdPr Me
  loc_AE2EE3: VCallAd Control_ID_DevengadoFlex
  loc_AE2EE6: FStAdFunc var_88
  loc_AE2EE9: FLdPr var_88
  loc_AE2EEC: LateIdSt
  loc_AE2EF1: FFree1Ad var_88
  loc_AE2EF4: ExitProcHresult
  loc_AE2EF5: MulI4
  loc_AE2EF6: EqI2
End Sub

Private Sub FechLiquMsk_UnknownEvent_0 '9533E8
  'Data Table: 4782C4
  loc_9533D4: FLdPr Me
  loc_9533D7: VCallAd Control_ID_FechLiquMsk
  loc_9533DA: CVarAd
  loc_9533DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9533E3: FFree1Var var_94 = ""
  loc_9533E6: ExitProcHresult
End Sub

Private Function FechLiquMsk_UnknownEvent_8(arg_C) 'A1DF38
  'Data Table: 4782C4
  loc_A1DDC0: FLdRfVar var_8A
  loc_A1DDC3: FLdPr Me
  loc_A1DDC6: VCallAd Control_ID_cmdCancelar
  loc_A1DDC9: FStAdFunc var_88
  loc_A1DDCC: FLdPr var_88
  loc_A1DDCF:  = Me.Value
  loc_A1DDD4: FLdI2 var_8A
  loc_A1DDD7: NotI4
  loc_A1DDD8: FLdPr Me
  loc_A1DDDB: VCallAd Control_ID_FechLiquMsk
  loc_A1DDDE: FStAdFunc var_90
  loc_A1DDE1: FLdPr var_90
  loc_A1DDE4: LateIdLdVar var_A0 DispID_13 -32767
  loc_A1DDEB: CBoolVar
  loc_A1DDED: AndI4
  loc_A1DDEE: FFreeAd var_88 = ""
  loc_A1DDF5: FFree1Var var_A0 = ""
  loc_A1DDF8: BranchF loc_A1DF35
  loc_A1DDFB: FLdPr Me
  loc_A1DDFE: VCallAd Control_ID_FechLiquMsk
  loc_A1DE01: FStAdFunc var_88
  loc_A1DE04: FLdPr var_88
  loc_A1DE07: LateIdLdVar var_A0 DispID_15 0
  loc_A1DE0E: PopAd
  loc_A1DE10: FLdRfVar var_E4
  loc_A1DE13: FLdRfVar var_B8
  loc_A1DE16: LitVarStr var_B4, "PeriInfo"
  loc_A1DE1B: PopAdLdVar
  loc_A1DE1C: FLdRfVar var_A4
  loc_A1DE1F: FLdRfVar var_90
  loc_A1DE22: FLdPr Me
  loc_A1DE25: MemLdRfVar from_stack_1.global_52
  loc_A1DE28: NewIfNullPr clsimputacion
  loc_A1DE2B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A1DE30: FLdPr var_90
  loc_A1DE33:  = Me.Fields
  loc_A1DE38: FLdPr var_A4
  loc_A1DE3B: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DE40: FLdPr var_B8
  loc_A1DE43:  = Me.Value
  loc_A1DE48: FLdRfVar var_F4
  loc_A1DE4B: FLdRfVar var_D4
  loc_A1DE4E: LitVarStr var_D0, "ExpeImpu"
  loc_A1DE53: PopAdLdVar
  loc_A1DE54: FLdRfVar var_C0
  loc_A1DE57: FLdRfVar var_BC
  loc_A1DE5A: FLdPr Me
  loc_A1DE5D: MemLdRfVar from_stack_1.global_52
  loc_A1DE60: NewIfNullPr clsimputacion
  loc_A1DE63: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A1DE68: FLdPr var_BC
  loc_A1DE6B:  = Me.Fields
  loc_A1DE70: FLdPr var_C0
  loc_A1DE73: from_stack_2 = Me.Item(from_stack_1)
  loc_A1DE78: FLdPr var_D4
  loc_A1DE7B:  = Me.Value
  loc_A1DE80: FLdRfVar var_FC
  loc_A1DE83: FLdRfVar var_F4
  loc_A1DE86: CStrVarTmp
  loc_A1DE87: FStStrNoPop var_F8
  loc_A1DE8A: FLdRfVar var_E4
  loc_A1DE8D: CI2Var
  loc_A1DE8E: FLdPr Me
  loc_A1DE91: MemLdRfVar from_stack_1.global_52
  loc_A1DE94: NewIfNullPr clsimputacion
  loc_A1DE97: from_stack_3v = clsimputacion.UltimaFechImpuDevengado(from_stack_1v, from_stack_2v)
  loc_A1DE9C: FLdPr Me
  loc_A1DE9F: VCallAd Control_ID_FechLiquMsk
  loc_A1DEA2: FStAdFunc var_10C
  loc_A1DEA5: LitI2_Byte &HFF
  loc_A1DEA7: PopTmpLdAd2 var_8A
  loc_A1DEAA: FLdZeroAd var_10C
  loc_A1DEAD: FStAdFunc var_104
  loc_A1DEB0: FLdRfVar var_104
  loc_A1DEB3: ILdRf var_FC
  loc_A1DEB6: LitI2_Byte &HFF
  loc_A1DEB8: LitI2_Byte &HFF
  loc_A1DEBA: FLdRfVar var_A0
  loc_A1DEBD: CStrVarTmp
  loc_A1DEBE: FStStrNoPop var_100
  loc_A1DEC1: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A1DEC6: FStStrNoPop var_108
  loc_A1DEC9: FLdPr Me
  loc_A1DECC: MemStStrCopy
  loc_A1DED0: FFreeStr var_F8 = "": var_100 = "": var_FC = ""
  loc_A1DEDB: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_BC = "": var_C0 = "": var_B8 = "": var_D4 = "": var_104 = ""
  loc_A1DEF0: FFreeVar var_A0 = "": var_E4 = ""
  loc_A1DEF9: FLdPr Me
  loc_A1DEFC: VCallAd Control_ID_FechLiquMsk
  loc_A1DEFF: FStAdFunc var_B8
  loc_A1DF02: LitNothing
  loc_A1DF04: CastAd
  loc_A1DF07: FStAdFunc var_A4
  loc_A1DF0A: FLdRfVar var_A4
  loc_A1DF0D: FLdZeroAd var_B8
  loc_A1DF10: FStAdFuncNoPop
  loc_A1DF13: CastAd
  loc_A1DF16: FStAdFunc var_90
  loc_A1DF19: FLdRfVar var_90
  loc_A1DF1C: FLdPr Me
  loc_A1DF1F: MemLdRfVar from_stack_1.global_64
  loc_A1DF22: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A1DF27: IStI2 arg_C
  loc_A1DF2A: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A1DF35: ExitProcHresult
End Function

Private Sub FechLiquMsk_KeyPress(KeyAscii As Integer) '98CA60
  'Data Table: 4782C4
  loc_98CA18: ILdI2 KeyAscii
  loc_98CA1B: CI4UI1
  loc_98CA1C: LitI4 &H20
  loc_98CA21: EqI4
  loc_98CA22: BranchF loc_98CA5F
  loc_98CA25: LitVar_Missing var_A4
  loc_98CA28: PopAdLdVar
  loc_98CA29: LitVarI4
  loc_98CA31: PopAdLdVar
  loc_98CA32: ImpAdLdRf MemVar_C3D9A8
  loc_98CA35: NewIfNullPr frmCalendario
  loc_98CA38: frmCalendario.Show from_stack_1, from_stack_2
  loc_98CA3D: ImpAdLdRf MemVar_C3D038
  loc_98CA40: CDargRef
  loc_98CA44: FLdPr Me
  loc_98CA47: VCallAd Control_ID_FechLiquMsk
  loc_98CA4A: FStAdFunc var_A8
  loc_98CA4D: FLdPr var_A8
  loc_98CA50: LateIdSt
  loc_98CA55: FFree1Ad var_A8
  loc_98CA58: LitStr vbNullString
  loc_98CA5B: ImpAdStStrCopy MemVar_C3D038
  loc_98CA5F: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() '9CAF7C
  'Data Table: 4782C4
  loc_9CAE94: FLdRfVar var_8A
  loc_9CAE97: FLdPr Me
  loc_9CAE9A: VCallAd Control_ID_SeleTodoChk
  loc_9CAE9D: FStAdFunc var_88
  loc_9CAEA0: FLdPr var_88
  loc_9CAEA3:  = Me.Value
  loc_9CAEA8: FLdI2 var_8A
  loc_9CAEAB: CI4UI1
  loc_9CAEAC: LitI4 0
  loc_9CAEB1: EqI4
  loc_9CAEB2: FFree1Ad var_88
  loc_9CAEB5: BranchF loc_9CAF1B
  loc_9CAEB8: LitI2_Byte 1
  loc_9CAEBA: FLdPr Me
  loc_9CAEBD: MemLdRfVar from_stack_1.global_68
  loc_9CAEC0: FLdPr Me
  loc_9CAEC3: VCallAd Control_ID_DevengadoFlex
  loc_9CAEC6: FStAdFunc var_88
  loc_9CAEC9: FLdPr var_88
  loc_9CAECC: LateIdLdVar var_9C DispID_4 0
  loc_9CAED3: CI4Var
  loc_9CAED5: LitI4 1
  loc_9CAEDA: SubI4
  loc_9CAEDB: CI2I4
  loc_9CAEDC: FFree1Ad var_88
  loc_9CAEDF: FFree1Var var_9C = ""
  loc_9CAEE2: ForI2 var_A0
  loc_9CAEE8: FLdPr Me
  loc_9CAEEB: MemLdI2 global_68
  loc_9CAEEE: CI4UI1
  loc_9CAEEF: CVarI4
  loc_9CAEF3: PopAdLdVar
  loc_9CAEF4: FLdPr Me
  loc_9CAEF7: VCallAd Control_ID_DevengadoFlex
  loc_9CAEFA: FStAdFunc var_88
  loc_9CAEFD: FLdPr var_88
  loc_9CAF00: LateIdSt
  loc_9CAF05: FFree1Ad var_88
  loc_9CAF08: Call Proc_120_27_9BBFDC()
  loc_9CAF0D: FLdPr Me
  loc_9CAF10: MemLdRfVar from_stack_1.global_68
  loc_9CAF13: NextI2 var_A0, loc_9CAEE8
  loc_9CAF18: Branch loc_9CAF7B
  loc_9CAF1B: LitI2_Byte 1
  loc_9CAF1D: FLdPr Me
  loc_9CAF20: MemLdRfVar from_stack_1.global_68
  loc_9CAF23: FLdPr Me
  loc_9CAF26: VCallAd Control_ID_DevengadoFlex
  loc_9CAF29: FStAdFunc var_88
  loc_9CAF2C: FLdPr var_88
  loc_9CAF2F: LateIdLdVar var_9C DispID_4 0
  loc_9CAF36: CI4Var
  loc_9CAF38: LitI4 1
  loc_9CAF3D: SubI4
  loc_9CAF3E: CI2I4
  loc_9CAF3F: FFree1Ad var_88
  loc_9CAF42: FFree1Var var_9C = ""
  loc_9CAF45: ForI2 var_C4
  loc_9CAF4B: FLdPr Me
  loc_9CAF4E: MemLdI2 global_68
  loc_9CAF51: CI4UI1
  loc_9CAF52: CVarI4
  loc_9CAF56: PopAdLdVar
  loc_9CAF57: FLdPr Me
  loc_9CAF5A: VCallAd Control_ID_DevengadoFlex
  loc_9CAF5D: FStAdFunc var_88
  loc_9CAF60: FLdPr var_88
  loc_9CAF63: LateIdSt
  loc_9CAF68: FFree1Ad var_88
  loc_9CAF6B: Call Proc_120_26_A1C2F4()
  loc_9CAF70: FLdPr Me
  loc_9CAF73: MemLdRfVar from_stack_1.global_68
  loc_9CAF76: NextI2 var_C4, loc_9CAF4B
  loc_9CAF7B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B17060
  'Data Table: 4782C4
  loc_B16800: ILdRf Button
  loc_B16803: FStAd var_88 
  loc_B16807: FLdRfVar var_8C
  loc_B1680A: FLdPr var_88
  loc_B1680D:  = Me.Key
  loc_B16812: FLdZeroAd var_8C
  loc_B16815: FStStr var_90
  loc_B16818: ILdRf var_90
  loc_B1681B: LitStr "btnCrear"
  loc_B1681E: EqStr
  loc_B16820: BranchF loc_B16AB7
  loc_B16823: FLdRfVar var_94
  loc_B16826: FLdPr Me
  loc_B16829: MemLdRfVar from_stack_1.global_52
  loc_B1682C: NewIfNullPr clsimputacion
  loc_B1682F: from_stack_1 = clsimputacion.RecordCount
  loc_B16834: ILdRf var_94
  loc_B16837: LitI4 0
  loc_B1683C: GtI4
  loc_B1683D: BranchF loc_B16AA7
  loc_B16840: LitI2_Byte 1
  loc_B16842: FLdPr Me
  loc_B16845: MemStUI1
  loc_B16849: ILdRf Me
  loc_B1684C: CastAd
  loc_B1684F: FStAdFunc var_98
  loc_B16852: FLdRfVar var_98
  loc_B16855: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B1685A: FFree1Ad var_98
  loc_B1685D: LitI4 0
  loc_B16862: LitI4 0
  loc_B16867: FLdRfVar var_9C
  loc_B1686A: Redim
  loc_B16874: FLdPr Me
  loc_B16877: VCallAd Control_ID_dgdABMS
  loc_B1687A: CVarAd
  loc_B1687E: ParmAry1St
  loc_B16884: FLdRfVar var_9C
  loc_B16887: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B1688C: FLdRfVar var_9C
  loc_B1688F: Erase
  loc_B16890: LitI4 0
  loc_B16895: LitI4 0
  loc_B1689A: FLdRfVar var_9C
  loc_B1689D: Redim
  loc_B168A7: FLdPr Me
  loc_B168AA: VCallAd Control_ID_DevengadoFlex
  loc_B168AD: CVarAd
  loc_B168B1: ParmAry1St
  loc_B168B7: FLdRfVar var_9C
  loc_B168BA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B168BF: FLdRfVar var_9C
  loc_B168C2: Erase
  loc_B168C3: FLdRfVar var_94
  loc_B168C6: FLdPr Me
  loc_B168C9: MemLdRfVar from_stack_1.global_52
  loc_B168CC: NewIfNullPr clsimputacion
  loc_B168CF: from_stack_1 = clsimputacion.RecordCount
  loc_B168D4: ILdRf var_94
  loc_B168D7: LitI4 0
  loc_B168DC: GtI4
  loc_B168DD: BranchF loc_B169E2
  loc_B168E0: FLdRfVar var_AC
  loc_B168E3: FLdRfVar var_C4
  loc_B168E6: LitVarStr var_C0, "ExpeImpu"
  loc_B168EB: PopAdLdVar
  loc_B168EC: FLdRfVar var_B0
  loc_B168EF: FLdRfVar var_98
  loc_B168F2: FLdPr Me
  loc_B168F5: MemLdRfVar from_stack_1.global_52
  loc_B168F8: NewIfNullPr clsimputacion
  loc_B168FB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16900: FLdPr var_98
  loc_B16903:  = Me.Fields
  loc_B16908: FLdPr var_B0
  loc_B1690B: from_stack_2 = Me.Item(from_stack_1)
  loc_B16910: FLdPr var_C4
  loc_B16913:  = Me.Value
  loc_B16918: FLdRfVar var_F0
  loc_B1691B: FLdRfVar var_E0
  loc_B1691E: LitVarStr var_DC, "Tipo"
  loc_B16923: PopAdLdVar
  loc_B16924: FLdRfVar var_CC
  loc_B16927: FLdRfVar var_C8
  loc_B1692A: FLdPr Me
  loc_B1692D: MemLdRfVar from_stack_1.global_52
  loc_B16930: NewIfNullPr clsimputacion
  loc_B16933: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16938: FLdPr var_C8
  loc_B1693B:  = Me.Fields
  loc_B16940: FLdPr var_CC
  loc_B16943: from_stack_2 = Me.Item(from_stack_1)
  loc_B16948: FLdPr var_E0
  loc_B1694B:  = Me.Value
  loc_B16950: FLdRfVar var_F8
  loc_B16953: FLdRfVar var_F0
  loc_B16956: CStrVarTmp
  loc_B16957: FStStrNoPop var_F4
  loc_B1695A: FLdRfVar var_AC
  loc_B1695D: CStrVarTmp
  loc_B1695E: FStStrNoPop var_8C
  loc_B16961: ImpAdLdI2 MemVar_C3D064
  loc_B16964: FLdPr Me
  loc_B16967: MemLdRfVar from_stack_1.global_56
  loc_B1696A: NewIfNullPr clsliquidacion
  loc_B1696D: from_stack_4v = clsliquidacion.UltimaFechLiqu(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B16972: FLdZeroAd var_F8
  loc_B16975: CVarStr var_108
  loc_B16978: PopAdLdVar
  loc_B16979: FLdPr Me
  loc_B1697C: VCallAd Control_ID_FechLiquMsk
  loc_B1697F: FStAdFunc var_11C
  loc_B16982: FLdPr var_11C
  loc_B16985: LateIdSt
  loc_B1698A: FFreeStr var_8C = ""
  loc_B16991: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_C4 = "": var_E0 = ""
  loc_B169A2: FFreeVar var_AC = "": var_F0 = ""
  loc_B169AB: FLdPr Me
  loc_B169AE: VCallAd Control_ID_FechLiquMsk
  loc_B169B1: FStAdFunc var_98
  loc_B169B4: FLdPr var_98
  loc_B169B7: LateIdLdVar var_AC DispID_11 -32767
  loc_B169BE: CStrVarTmp
  loc_B169BF: CVarStr var_F0
  loc_B169C2: PopAdLdVar
  loc_B169C3: FLdPr Me
  loc_B169C6: VCallAd Control_ID_FechLiquMsk
  loc_B169C9: FStAdFunc var_B0
  loc_B169CC: FLdPr var_B0
  loc_B169CF: LateIdSt
  loc_B169D4: FFreeAd var_98 = ""
  loc_B169DB: FFreeVar var_AC = ""
  loc_B169E2: ImpAdLdFPR8 MemVar_C3D04C
  loc_B169E5: CStrDate
  loc_B169E7: CVarStr var_AC
  loc_B169EA: PopAdLdVar
  loc_B169EB: FLdPr Me
  loc_B169EE: VCallAd Control_ID_FechLiquMsk
  loc_B169F1: FStAdFunc var_98
  loc_B169F4: FLdPr var_98
  loc_B169F7: LateIdSt
  loc_B169FC: FFree1Ad var_98
  loc_B169FF: FFree1Var var_AC = ""
  loc_B16A02: ILdRf Me
  loc_B16A05: CastAd
  loc_B16A08: FStAdFunc var_98
  loc_B16A0B: FLdRfVar var_98
  loc_B16A0E: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B16A13: FFree1Ad var_98
  loc_B16A16: FLdRfVar var_94
  loc_B16A19: FLdPr Me
  loc_B16A1C: MemLdRfVar from_stack_1.global_52
  loc_B16A1F: NewIfNullPr clsimputacion
  loc_B16A22: from_stack_1 = clsimputacion.RecordCount
  loc_B16A27: ILdRf var_94
  loc_B16A2A: LitI4 0
  loc_B16A2F: GtI4
  loc_B16A30: BranchF loc_B16A88
  loc_B16A33: LitStr "Páguese en Concepto de: "
  loc_B16A36: LitVarI4
  loc_B16A3E: PopAdLdVar
  loc_B16A3F: LitVarI4
  loc_B16A47: PopAdLdVar
  loc_B16A48: FLdPr Me
  loc_B16A4B: VCallAd Control_ID_DevengadoFlex
  loc_B16A4E: FStAdFunc var_98
  loc_B16A51: FLdPr var_98
  loc_B16A54: LateIdCallLdVar
  loc_B16A5E: CStrVarTmp
  loc_B16A5F: FStStrNoPop var_8C
  loc_B16A62: ConcatStr
  loc_B16A63: FStStrNoPop var_F4
  loc_B16A66: FLdPr Me
  loc_B16A69: VCallAd Control_ID_DetaLiquTxt
  loc_B16A6C: FStAdFunc var_B0
  loc_B16A6F: FLdPr var_B0
  loc_B16A72: Me.Text = from_stack_1
  loc_B16A77: FFreeStr var_8C = ""
  loc_B16A7E: FFreeAd var_98 = ""
  loc_B16A85: FFree1Var var_AC = ""
  loc_B16A88: LitStr vbNullString
  loc_B16A8B: FLdPr Me
  loc_B16A8E: MemStStrCopy
  loc_B16A92: FLdPr Me
  loc_B16A95: VCallAd Control_ID_FechLiquMsk
  loc_B16A98: CVarAd
  loc_B16A9C: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B16AA1: FFree1Var var_AC = ""
  loc_B16AA4: Branch loc_B16AB4
  loc_B16AA7: LitI4 0
  loc_B16AAC: LitStr "Seleccionar un expediente. Verifique..."
  loc_B16AAF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B16AB4: Branch loc_B1705F
  loc_B16AB7: ILdRf var_90
  loc_B16ABA: LitStr "btnModificar"
  loc_B16ABD: EqStr
  loc_B16ABF: BranchF loc_B16AC5
  loc_B16AC2: Branch loc_B1705F
  loc_B16AC5: ILdRf var_90
  loc_B16AC8: LitStr "btnEliminar"
  loc_B16ACB: EqStr
  loc_B16ACD: BranchF loc_B16AD3
  loc_B16AD0: Branch loc_B1705F
  loc_B16AD3: ILdRf var_90
  loc_B16AD6: LitStr "btnGuardar"
  loc_B16AD9: EqStr
  loc_B16ADB: BranchF loc_B16EAE
  loc_B16ADE: LitStr vbNullString
  loc_B16AE1: FLdPr Me
  loc_B16AE4: MemStStrCopy
  loc_B16AE8: LitI2_Byte 0
  loc_B16AEA: PopTmpLdAd2 var_12E
  loc_B16AED: from_stack_2v = FechLiquMsk_UnknownEvent_8(from_stack_1v)
  loc_B16AF2: FLdPr Me
  loc_B16AF5: MemLdStr global_64
  loc_B16AF8: LitStr vbNullString
  loc_B16AFB: NeStr
  loc_B16AFD: BranchF loc_B16B01
  loc_B16B00: ExitProcHresult
  loc_B16B01: LitI2_Byte 0
  loc_B16B03: PopTmpLdAd2 var_12E
  loc_B16B06: Call DetaLiquTxt_Validate(from_stack_1v)
  loc_B16B0B: FLdPr Me
  loc_B16B0E: MemLdStr global_64
  loc_B16B11: LitStr vbNullString
  loc_B16B14: NeStr
  loc_B16B16: BranchF loc_B16B1A
  loc_B16B19: ExitProcHresult
  loc_B16B1A: LitStr vbNullString
  loc_B16B1D: FLdPr Me
  loc_B16B20: MemStStrCopy
  loc_B16B24: LitI2_Byte 0
  loc_B16B26: PopTmpLdAd2 var_12E
  loc_B16B29: from_stack_2v = DevengadoFlex_UnknownEvent_8(from_stack_1v)
  loc_B16B2E: FLdPr Me
  loc_B16B31: MemLdStr global_64
  loc_B16B34: LitStr vbNullString
  loc_B16B37: NeStr
  loc_B16B39: BranchF loc_B16B3D
  loc_B16B3C: ExitProcHresult
  loc_B16B3D: FLdPr Me
  loc_B16B40: MemLdUI1 global_60
  loc_B16B44: FStUI1 var_130
  loc_B16B48: FLdUI1
  loc_B16B4C: LitI2_Byte 2
  loc_B16B4E: EqI2
  loc_B16B4F: BranchF loc_B16B55
  loc_B16B52: Branch loc_B16E7F
  loc_B16B55: FLdUI1
  loc_B16B59: LitI2_Byte 1
  loc_B16B5B: EqI2
  loc_B16B5C: BranchF loc_B16E7F
  loc_B16B5F: LitI2_Byte 0
  loc_B16B61: FStI2 var_134
  loc_B16B64: LitI2_Byte 1
  loc_B16B66: FLdPr Me
  loc_B16B69: MemLdRfVar from_stack_1.global_68
  loc_B16B6C: FLdPr Me
  loc_B16B6F: VCallAd Control_ID_DevengadoFlex
  loc_B16B72: FStAdFunc var_98
  loc_B16B75: FLdPr var_98
  loc_B16B78: LateIdLdVar var_AC DispID_4 0
  loc_B16B7F: CI4Var
  loc_B16B81: LitI4 1
  loc_B16B86: SubI4
  loc_B16B87: CI2I4
  loc_B16B88: FFree1Ad var_98
  loc_B16B8B: FFree1Var var_AC = ""
  loc_B16B8E: ForI2 var_138
  loc_B16B94: FLdPr Me
  loc_B16B97: MemLdI2 global_68
  loc_B16B9A: CI4UI1
  loc_B16B9B: CVarI4
  loc_B16B9F: PopAdLdVar
  loc_B16BA0: LitVarI4
  loc_B16BA8: PopAdLdVar
  loc_B16BA9: FLdPr Me
  loc_B16BAC: VCallAd Control_ID_DevengadoFlex
  loc_B16BAF: FStAdFunc var_98
  loc_B16BB2: FLdPr var_98
  loc_B16BB5: LateIdCallLdVar
  loc_B16BBF: CStrVarTmp
  loc_B16BC0: FStStrNoPop var_8C
  loc_B16BC3: LitStr "Si"
  loc_B16BC6: EqStr
  loc_B16BC8: FFree1Str var_8C
  loc_B16BCB: FFree1Ad var_98
  loc_B16BCE: FFree1Var var_AC = ""
  loc_B16BD1: BranchF loc_B16BDC
  loc_B16BD4: LitI2_Byte &HFF
  loc_B16BD6: FStI2 var_134
  loc_B16BD9: Branch loc_B16BE7
  loc_B16BDC: FLdPr Me
  loc_B16BDF: MemLdRfVar from_stack_1.global_68
  loc_B16BE2: NextI2 var_138, loc_B16B94
  loc_B16BE7: FLdI2 var_134
  loc_B16BEA: LitI2_Byte 0
  loc_B16BEC: EqI2
  loc_B16BED: BranchF loc_B16BFE
  loc_B16BF0: LitI4 0
  loc_B16BF5: LitStr "Debe Seleccionar al menos un Devengado. Verifique..."
  loc_B16BF8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B16BFD: ExitProcHresult
  loc_B16BFE: LitVar_TRUE var_C0
  loc_B16C01: PopAdLdVar
  loc_B16C02: FLdPr Me
  loc_B16C05: VCallAd Control_ID_ProgressBar
  loc_B16C08: FStAdFunc var_98
  loc_B16C0B: FLdPr var_98
  loc_B16C0E: LateIdSt
  loc_B16C13: FFree1Ad var_98
  loc_B16C16: FLdRfVar var_F0
  loc_B16C19: FLdRfVar var_C4
  loc_B16C1C: LitVarStr var_C0, "ExpeImpu"
  loc_B16C21: PopAdLdVar
  loc_B16C22: FLdRfVar var_B0
  loc_B16C25: FLdRfVar var_98
  loc_B16C28: FLdPr Me
  loc_B16C2B: MemLdRfVar from_stack_1.global_52
  loc_B16C2E: NewIfNullPr clsimputacion
  loc_B16C31: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16C36: FLdPr var_98
  loc_B16C39:  = Me.Fields
  loc_B16C3E: FLdPr var_B0
  loc_B16C41: from_stack_2 = Me.Item(from_stack_1)
  loc_B16C46: FLdPr var_C4
  loc_B16C49:  = Me.Value
  loc_B16C4E: FLdPr Me
  loc_B16C51: VCallAd Control_ID_FechLiquMsk
  loc_B16C54: FStAdFunc var_C8
  loc_B16C57: FLdPr var_C8
  loc_B16C5A: LateIdLdVar var_AC DispID_15 0
  loc_B16C61: PopAd
  loc_B16C63: FLdRfVar var_140
  loc_B16C66: FLdPr Me
  loc_B16C69: VCallAd Control_ID_DetaLiquTxt
  loc_B16C6C: FStAdFunc var_13C
  loc_B16C6F: FLdPr var_13C
  loc_B16C72:  = Me.Text
  loc_B16C77: FLdRfVar var_108
  loc_B16C7A: FLdRfVar var_11C
  loc_B16C7D: LitVarStr var_DC, "Tipo"
  loc_B16C82: PopAdLdVar
  loc_B16C83: FLdRfVar var_E0
  loc_B16C86: FLdRfVar var_CC
  loc_B16C89: FLdPr Me
  loc_B16C8C: MemLdRfVar from_stack_1.global_52
  loc_B16C8F: NewIfNullPr clsimputacion
  loc_B16C92: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16C97: FLdPr var_CC
  loc_B16C9A:  = Me.Fields
  loc_B16C9F: FLdPr var_E0
  loc_B16CA2: from_stack_2 = Me.Item(from_stack_1)
  loc_B16CA7: FLdPr var_11C
  loc_B16CAA:  = Me.Value
  loc_B16CAF: FLdRfVar var_8C
  loc_B16CB2: FLdPr Me
  loc_B16CB5:  = Me.Name
  loc_B16CBA: FLdPr Me
  loc_B16CBD: VCallAd Control_ID_DevengadoFlex
  loc_B16CC0: FStAdFunc var_14C
  loc_B16CC3: FLdRfVar var_12E
  loc_B16CC6: FLdZeroAd var_14C
  loc_B16CC9: FStAdFunc var_148
  loc_B16CCC: FLdRfVar var_148
  loc_B16CCF: ILdRf var_8C
  loc_B16CD2: FLdRfVar var_108
  loc_B16CD5: CStrVarTmp
  loc_B16CD6: FStStrNoPop var_144
  loc_B16CD9: ILdRf var_140
  loc_B16CDC: FLdRfVar var_AC
  loc_B16CDF: CStrVarTmp
  loc_B16CE0: FStStrNoPop var_F8
  loc_B16CE3: FLdRfVar var_F0
  loc_B16CE6: CStrVarTmp
  loc_B16CE7: FStStrNoPop var_F4
  loc_B16CEA: FLdPr Me
  loc_B16CED: MemLdRfVar from_stack_1.global_56
  loc_B16CF0: NewIfNullPr clsliquidacion
  loc_B16CF3: from_stack_7v = clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B16CF8: FLdI2 var_12E
  loc_B16CFB: FStI2 var_132
  loc_B16CFE: FFreeStr var_F4 = "": var_F8 = "": var_140 = "": var_144 = ""
  loc_B16D0B: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_E0 = "": var_C4 = "": var_13C = "": var_11C = "": var_148 = ""
  loc_B16D22: FFreeVar var_AC = "": var_F0 = ""
  loc_B16D2B: FLdI2 var_132
  loc_B16D2E: LitI2_Byte 0
  loc_B16D30: GtI2
  loc_B16D31: BranchF loc_B16E7F
  loc_B16D34: LitI4 0
  loc_B16D39: LitVarStr var_DC, "Se generó la Liquidación: "
  loc_B16D3E: FLdRfVar var_AC
  loc_B16D41: FLdRfVar var_C4
  loc_B16D44: LitVarStr var_C0, "ExpeImpu"
  loc_B16D49: PopAdLdVar
  loc_B16D4A: FLdRfVar var_B0
  loc_B16D4D: FLdRfVar var_98
  loc_B16D50: FLdPr Me
  loc_B16D53: MemLdRfVar from_stack_1.global_52
  loc_B16D56: NewIfNullPr clsimputacion
  loc_B16D59: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16D5E: FLdPr var_98
  loc_B16D61:  = Me.Fields
  loc_B16D66: FLdPr var_B0
  loc_B16D69: from_stack_2 = Me.Item(from_stack_1)
  loc_B16D6E: FLdPr var_C4
  loc_B16D71:  = Me.Value
  loc_B16D76: FLdRfVar var_AC
  loc_B16D79: ConcatVar var_F0
  loc_B16D7D: LitVarStr var_118, " - Número: "
  loc_B16D82: ConcatVar var_108
  loc_B16D86: FLdI2 var_132
  loc_B16D89: CVarI2 var_12C
  loc_B16D8C: ConcatVar var_15C
  loc_B16D90: CStrVarVal var_8C
  loc_B16D94: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B16D99: FFree1Str var_8C
  loc_B16D9C: FFreeAd var_98 = "": var_B0 = ""
  loc_B16DA5: FFreeVar var_AC = "": var_F0 = "": var_108 = ""
  loc_B16DB0: LitI2_Byte &HFF
  loc_B16DB2: PopTmpLdAd2 var_15E
  loc_B16DB5: LitI2_Byte 0
  loc_B16DB7: PopTmpLdAd2 var_12E
  loc_B16DBA: LitStr "¿Imprime el Volante de Liquidación del Gasto?"
  loc_B16DBD: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B16DC2: CI4UI1
  loc_B16DC3: LitI4 6
  loc_B16DC8: EqI4
  loc_B16DC9: BranchF loc_B16E7F
  loc_B16DCC: ImpAdLdRf MemVar_C3DAC0
  loc_B16DCF: NewIfNullAd
  loc_B16DD2: CastAd
  loc_B16DD5: FStAdFuncNoPop
  loc_B16DD8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B16DDD: FFree1Ad var_98
  loc_B16DE0: FLdRfVar var_AC
  loc_B16DE3: FLdRfVar var_C4
  loc_B16DE6: LitVarStr var_C0, "ExpeImpu"
  loc_B16DEB: PopAdLdVar
  loc_B16DEC: FLdRfVar var_B0
  loc_B16DEF: FLdRfVar var_98
  loc_B16DF2: FLdPr Me
  loc_B16DF5: MemLdRfVar from_stack_1.global_52
  loc_B16DF8: NewIfNullPr clsimputacion
  loc_B16DFB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16E00: FLdPr var_98
  loc_B16E03:  = Me.Fields
  loc_B16E08: FLdPr var_B0
  loc_B16E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_B16E10: FLdPr var_C4
  loc_B16E13:  = Me.Value
  loc_B16E18: FLdRfVar var_AC
  loc_B16E1B: CStrVarTmp
  loc_B16E1C: FStStrNoPop var_8C
  loc_B16E1F: ImpAdLdRf MemVar_C3DAC0
  loc_B16E22: NewIfNullPr rptVolantedeLiquidacion
  loc_B16E25: VCallAd Control_ID_cboExpeImpu
  loc_B16E28: FStAdFunc var_C8
  loc_B16E2B: FLdPr var_C8
  loc_B16E2E: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B16E33: FFree1Str var_8C
  loc_B16E36: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B16E41: FFree1Var var_AC = ""
  loc_B16E44: FLdI2 var_132
  loc_B16E47: CStrUI1
  loc_B16E49: CVarStr var_AC
  loc_B16E4C: PopAdLdVar
  loc_B16E4D: ImpAdLdRf MemVar_C3DAC0
  loc_B16E50: NewIfNullPr rptVolantedeLiquidacion
  loc_B16E53: VCallAd Control_ID_NumeLiquMsk
  loc_B16E56: FStAdFunc var_98
  loc_B16E59: FLdPr var_98
  loc_B16E5C: LateIdSt
  loc_B16E61: FFree1Ad var_98
  loc_B16E64: FFree1Var var_AC = ""
  loc_B16E67: LitVar_Missing var_DC
  loc_B16E6A: PopAdLdVar
  loc_B16E6B: LitVarI4
  loc_B16E73: PopAdLdVar
  loc_B16E74: ImpAdLdRf MemVar_C3DAC0
  loc_B16E77: NewIfNullPr rptVolantedeLiquidacion
  loc_B16E7A: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B16E7F: LitVar_FALSE
  loc_B16E83: PopAdLdVar
  loc_B16E84: FLdPr Me
  loc_B16E87: VCallAd Control_ID_ProgressBar
  loc_B16E8A: FStAdFunc var_98
  loc_B16E8D: FLdPr var_98
  loc_B16E90: LateIdSt
  loc_B16E95: FFree1Ad var_98
  loc_B16E98: FLdPr Me
  loc_B16E9B: MemLdRfVar from_stack_1.global_52
  loc_B16E9E: NewIfNullPr clsimputacion
  loc_B16EA1: Call clsimputacion.Requery()
  loc_B16EA6: Call cmdCancelar_Click()
  loc_B16EAB: Branch loc_B1705F
  loc_B16EAE: ILdRf var_90
  loc_B16EB1: LitStr "btnCancelar"
  loc_B16EB4: EqStr
  loc_B16EB6: BranchF loc_B16EC1
  loc_B16EB9: Call cmdCancelar_Click()
  loc_B16EBE: Branch loc_B1705F
  loc_B16EC1: ILdRf var_90
  loc_B16EC4: LitStr "btnPrimero"
  loc_B16EC7: EqStr
  loc_B16EC9: BranchF loc_B16EDD
  loc_B16ECC: FLdPr Me
  loc_B16ECF: MemLdRfVar from_stack_1.global_52
  loc_B16ED2: NewIfNullPr clsimputacion
  loc_B16ED5: Call clsimputacion.MoveFirst()
  loc_B16EDA: Branch loc_B1705F
  loc_B16EDD: ILdRf var_90
  loc_B16EE0: LitStr "btnAnterior"
  loc_B16EE3: EqStr
  loc_B16EE5: BranchF loc_B16EF9
  loc_B16EE8: FLdPr Me
  loc_B16EEB: MemLdRfVar from_stack_1.global_52
  loc_B16EEE: NewIfNullPr clsimputacion
  loc_B16EF1: Call clsimputacion.MovePrevious()
  loc_B16EF6: Branch loc_B1705F
  loc_B16EF9: ILdRf var_90
  loc_B16EFC: LitStr "btnSiguiente"
  loc_B16EFF: EqStr
  loc_B16F01: BranchF loc_B16F15
  loc_B16F04: FLdPr Me
  loc_B16F07: MemLdRfVar from_stack_1.global_52
  loc_B16F0A: NewIfNullPr clsimputacion
  loc_B16F0D: Call clsimputacion.MoveNext()
  loc_B16F12: Branch loc_B1705F
  loc_B16F15: ILdRf var_90
  loc_B16F18: LitStr "btnUltimo"
  loc_B16F1B: EqStr
  loc_B16F1D: BranchF loc_B16F31
  loc_B16F20: FLdPr Me
  loc_B16F23: MemLdRfVar from_stack_1.global_52
  loc_B16F26: NewIfNullPr clsimputacion
  loc_B16F29: Call clsimputacion.MoveLast()
  loc_B16F2E: Branch loc_B1705F
  loc_B16F31: ILdRf var_90
  loc_B16F34: LitStr "btnFiltrar"
  loc_B16F37: EqStr
  loc_B16F39: BranchF loc_B16F3F
  loc_B16F3C: Branch loc_B1705F
  loc_B16F3F: ILdRf var_90
  loc_B16F42: LitStr "btnBuscar"
  loc_B16F45: EqStr
  loc_B16F47: BranchF loc_B16F4D
  loc_B16F4A: Branch loc_B1705F
  loc_B16F4D: ILdRf var_90
  loc_B16F50: LitStr "btnImprimir"
  loc_B16F53: EqStr
  loc_B16F55: BranchF loc_B17008
  loc_B16F58: ImpAdLdRf MemVar_C3DAC0
  loc_B16F5B: NewIfNullAd
  loc_B16F5E: CastAd
  loc_B16F61: FStAdFuncNoPop
  loc_B16F64: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B16F69: FFree1Ad var_98
  loc_B16F6C: FLdRfVar var_94
  loc_B16F6F: FLdPr Me
  loc_B16F72: MemLdRfVar from_stack_1.global_52
  loc_B16F75: NewIfNullPr clsimputacion
  loc_B16F78: from_stack_1 = clsimputacion.RecordCount
  loc_B16F7D: ILdRf var_94
  loc_B16F80: LitI4 0
  loc_B16F85: GtI4
  loc_B16F86: BranchF loc_B16FED
  loc_B16F89: FLdRfVar var_AC
  loc_B16F8C: FLdRfVar var_C4
  loc_B16F8F: LitVarStr var_C0, "ExpeImpu"
  loc_B16F94: PopAdLdVar
  loc_B16F95: FLdRfVar var_B0
  loc_B16F98: FLdRfVar var_98
  loc_B16F9B: FLdPr Me
  loc_B16F9E: MemLdRfVar from_stack_1.global_52
  loc_B16FA1: NewIfNullPr clsimputacion
  loc_B16FA4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B16FA9: FLdPr var_98
  loc_B16FAC:  = Me.Fields
  loc_B16FB1: FLdPr var_B0
  loc_B16FB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B16FB9: FLdPr var_C4
  loc_B16FBC:  = Me.Value
  loc_B16FC1: FLdRfVar var_AC
  loc_B16FC4: CStrVarTmp
  loc_B16FC5: FStStrNoPop var_8C
  loc_B16FC8: ImpAdLdRf MemVar_C3DAC0
  loc_B16FCB: NewIfNullPr rptVolantedeLiquidacion
  loc_B16FCE: VCallAd Control_ID_cboExpeImpu
  loc_B16FD1: FStAdFunc var_C8
  loc_B16FD4: FLdPr var_C8
  loc_B16FD7: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B16FDC: FFree1Str var_8C
  loc_B16FDF: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B16FEA: FFree1Var var_AC = ""
  loc_B16FED: LitVar_Missing var_DC
  loc_B16FF0: PopAdLdVar
  loc_B16FF1: LitVarI4
  loc_B16FF9: PopAdLdVar
  loc_B16FFA: ImpAdLdRf MemVar_C3DAC0
  loc_B16FFD: NewIfNullPr rptVolantedeLiquidacion
  loc_B17000: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B17005: Branch loc_B1705F
  loc_B17008: ILdRf var_90
  loc_B1700B: LitStr "btnAyuda"
  loc_B1700E: EqStr
  loc_B17010: BranchF loc_B1703F
  loc_B17013: LitVar_Missing var_15C
  loc_B17016: LitVar_Missing var_108
  loc_B17019: LitVar_Missing var_F0
  loc_B1701C: LitI4 0
  loc_B17021: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B17026: FStVarCopyObj var_AC
  loc_B17029: FLdRfVar var_AC
  loc_B1702C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B17031: FFreeVar var_AC = "": var_F0 = "": var_108 = ""
  loc_B1703C: Branch loc_B1705F
  loc_B1703F: ILdRf var_90
  loc_B17042: LitStr "btnSalir"
  loc_B17045: EqStr
  loc_B17047: BranchF loc_B1705F
  loc_B1704A: ILdRf Me
  loc_B1704D: FStAdNoPop
  loc_B17051: ImpAdLdRf MemVar_C44F9C
  loc_B17054: NewIfNullPr Me
  loc_B17057: Me.Global.Unload from_stack_1
  loc_B1705C: FFree1Ad var_98
  loc_B1705F: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95CB54
  'Data Table: 4782C4
  loc_95CB3C: FLdPr Me
  loc_95CB3F: VCallAd Control_ID_dgdABMS
  loc_95CB42: FStAdFunc var_88
  loc_95CB45: FLdRfVar var_88
  loc_95CB48: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95CB4D: FFree1Ad var_88
  loc_95CB50: ExitProcHresult
  loc_95CB51: FnStrComp3Var
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95CABC
  'Data Table: 4782C4
  loc_95CAA4: FLdPr Me
  loc_95CAA7: VCallAd Control_ID_dgdABMS
  loc_95CAAA: FStAdFunc var_88
  loc_95CAAD: FLdRfVar var_88
  loc_95CAB0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95CAB5: FFree1Ad var_88
  loc_95CAB8: ExitProcHresult
  loc_95CAB9: CRec2Uni MeFF
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BC70
  'Data Table: 4782C4
  loc_99BC14: FLdRfVar var_B4
  loc_99BC17: FLdRfVar var_B0
  loc_99BC1A: FLdI2 ColIndex
  loc_99BC1D: CVarI2 var_A8
  loc_99BC20: PopAdLdVar
  loc_99BC21: FLdPr Me
  loc_99BC24: VCallAd Control_ID_dgdABMS
  loc_99BC27: FStAdFunc var_88
  loc_99BC2A: FLdPr var_88
  loc_99BC2D: LateIdLdVar var_98 DispID_105 0
  loc_99BC34: CastAdVar Me
  loc_99BC38: FStAdFunc var_AC
  loc_99BC3B: FLdPr var_AC
  loc_99BC3E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BC43: FLdPr var_B0
  loc_99BC46:  = Me.DataField
  loc_99BC4B: FLdZeroAd var_B4
  loc_99BC4E: PopTmpLdAdStr
  loc_99BC52: FLdPr Me
  loc_99BC55: MemLdRfVar from_stack_1.global_52
  loc_99BC58: NewIfNullPr clsimputacion
  loc_99BC5B: Call clsimputacion.Sort(from_stack_1v)
  loc_99BC60: FFree1Str var_B8
  loc_99BC63: FFreeAd var_88 = "": var_AC = ""
  loc_99BC6C: FFree1Var var_98 = ""
  loc_99BC6F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BB9F40
  'Data Table: 4782C4
  loc_BB8FD4: Call Proc_120_24_A1F490()
  loc_BB8FD9: LitI2_Byte 0
  loc_BB8FDB: CR8I2
  loc_BB8FDC: FStFPR8 var_8C
  loc_BB8FDF: FLdRfVar var_90
  loc_BB8FE2: FLdPr Me
  loc_BB8FE5: MemLdRfVar from_stack_1.global_52
  loc_BB8FE8: NewIfNullPr clsimputacion
  loc_BB8FEB: from_stack_1 = clsimputacion.RecordCount
  loc_BB8FF0: ILdRf var_90
  loc_BB8FF3: LitI4 0
  loc_BB8FF8: GtI4
  loc_BB8FF9: BranchF loc_BB9F3E
  loc_BB8FFC: FLdRfVar var_92
  loc_BB8FFF: FLdPr Me
  loc_BB9002: MemLdRfVar from_stack_1.global_52
  loc_BB9005: NewIfNullPr clsimputacion
  loc_BB9008: from_stack_1 = clsimputacion.BOF
  loc_BB900D: FLdI2 var_92
  loc_BB9010: BranchF loc_BB9021
  loc_BB9013: FLdPr Me
  loc_BB9016: MemLdRfVar from_stack_1.global_52
  loc_BB9019: NewIfNullPr clsimputacion
  loc_BB901C: Call clsimputacion.MoveFirst()
  loc_BB9021: FLdRfVar var_92
  loc_BB9024: FLdPr Me
  loc_BB9027: MemLdRfVar from_stack_1.global_52
  loc_BB902A: NewIfNullPr clsimputacion
  loc_BB902D: from_stack_1 = clsimputacion.EOF
  loc_BB9032: FLdI2 var_92
  loc_BB9035: BranchF loc_BB9046
  loc_BB9038: FLdPr Me
  loc_BB903B: MemLdRfVar from_stack_1.global_52
  loc_BB903E: NewIfNullPr clsimputacion
  loc_BB9041: Call clsimputacion.MoveLast()
  loc_BB9046: FLdRfVar var_C0
  loc_BB9049: FLdRfVar var_B0
  loc_BB904C: LitVarStr var_AC, "Tipo"
  loc_BB9051: PopAdLdVar
  loc_BB9052: FLdRfVar var_9C
  loc_BB9055: FLdRfVar var_98
  loc_BB9058: FLdPr Me
  loc_BB905B: MemLdRfVar from_stack_1.global_52
  loc_BB905E: NewIfNullPr clsimputacion
  loc_BB9061: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB9066: FLdPr var_98
  loc_BB9069:  = Me.Fields
  loc_BB906E: FLdPr var_9C
  loc_BB9071: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9076: FLdPr var_B0
  loc_BB9079:  = Me.Value
  loc_BB907E: FLdRfVar var_C0
  loc_BB9081: LitVarStr var_D0, "Devengado"
  loc_BB9086: HardType
  loc_BB9087: EqVarBool
  loc_BB9089: FFreeAd var_98 = "": var_9C = ""
  loc_BB9092: FFree1Var var_C0 = ""
  loc_BB9095: BranchF loc_BB97C9
  loc_BB9098: LitStr "SELECT IF( (SELECT r.CucuPers FROM retexprov r WHERE r.PeriInfo = i.PeriInfo AND r.CucuPers = i.CucuPers LIMIT 1) IS NULL,'No','Si') TieneRete"
  loc_BB909B: LitStr ", @id:=IF(DeveImpu!=0,IdImpu,0) IdImpu"
  loc_BB909E: ConcatStr
  loc_BB909F: FStStrNoPop var_E4
  loc_BB90A2: LitStr ", i.CodiPart, i.CodiOrga, i.DetaImpu, i.CucuPers, i.CodiOrco"
  loc_BB90A5: ConcatStr
  loc_BB90A6: FStStrNoPop var_E8
  loc_BB90A9: LitStr ", DetaProv, DetaImpu, CodiOrco"
  loc_BB90AC: ConcatStr
  loc_BB90AD: FStStrNoPop var_EC
  loc_BB90B0: LitStr ", Left(NumeFact,3) TifaDeve, Substr(NumeFact,4,4) SufaDeve, Right(NumeFact,8) NufaDeve"
  loc_BB90B3: ConcatStr
  loc_BB90B4: FStStrNoPop var_F0
  loc_BB90B7: LitStr ", Sum(DeveImpu-LiquImpu) SaldDeve"
  loc_BB90BA: ConcatStr
  loc_BB90BB: FStStrNoPop var_F4
  loc_BB90BE: LitStr " FROM imputacion i"
  loc_BB90C1: ConcatStr
  loc_BB90C2: FStStrNoPop var_F8
  loc_BB90C5: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_BB90C8: ConcatStr
  loc_BB90C9: FStStrNoPop var_FC
  loc_BB90CC: LitStr " WHERE i.PeriInfo = "
  loc_BB90CF: ConcatStr
  loc_BB90D0: FStStrNoPop var_100
  loc_BB90D3: ImpAdLdI2 MemVar_C3D064
  loc_BB90D6: CStrUI1
  loc_BB90D8: FStStrNoPop var_104
  loc_BB90DB: ConcatStr
  loc_BB90DC: FStStrNoPop var_108
  loc_BB90DF: LitStr " AND i.ExpeImpu = '"
  loc_BB90E2: ConcatStr
  loc_BB90E3: CVarStr var_E0
  loc_BB90E6: FLdRfVar var_C0
  loc_BB90E9: FLdRfVar var_B0
  loc_BB90EC: LitVarStr var_AC, "ExpeImpu"
  loc_BB90F1: PopAdLdVar
  loc_BB90F2: FLdRfVar var_9C
  loc_BB90F5: FLdRfVar var_98
  loc_BB90F8: FLdPr Me
  loc_BB90FB: MemLdRfVar from_stack_1.global_52
  loc_BB90FE: NewIfNullPr clsimputacion
  loc_BB9101: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB9106: FLdPr var_98
  loc_BB9109:  = Me.Fields
  loc_BB910E: FLdPr var_9C
  loc_BB9111: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9116: FLdPr var_B0
  loc_BB9119:  = Me.Value
  loc_BB911E: FLdRfVar var_C0
  loc_BB9121: ConcatVar var_118
  loc_BB9125: LitVarStr var_D0, "' AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_BB912A: ConcatVar var_128
  loc_BB912E: LitVarStr var_138, " GROUP BY i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga, i.ExorImpu, i.ExpeImpu, i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, i.CodiRece, i.NumeFact"
  loc_BB9133: ConcatVar var_148
  loc_BB9137: LitVarStr var_158, " HAVING SaldDeve > 0"
  loc_BB913C: ConcatVar var_168
  loc_BB9140: LitVarStr var_178, " ORDER BY i.ExpeImpu, DetaProv, i.CucuPers, i.ExorImpu, i.CodiPart, i.CodiOrga;"
  loc_BB9145: ConcatVar var_188
  loc_BB9149: CStrVarVal var_18C
  loc_BB914D: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BB9152: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BB916B: FFreeAd var_98 = "": var_9C = ""
  loc_BB9174: FFreeVar var_E0 = "": var_C0 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_BB9185: FLdRfVar var_90
  loc_BB9188: ImpAdLdPr unk_47830A
  loc_BB918B: MemLdPr global_0
  loc_BB918E:  = Me.RecordCount
  loc_BB9193: ILdRf var_90
  loc_BB9196: LitI4 0
  loc_BB919B: GtI4
  loc_BB919C: BranchF loc_BB97C6
  loc_BB919F: FLdRfVar var_90
  loc_BB91A2: ImpAdLdPr unk_47830A
  loc_BB91A5: MemLdPr global_0
  loc_BB91A8:  = Me.RecordCount
  loc_BB91AD: ILdRf var_90
  loc_BB91B0: CI2I4
  loc_BB91B1: FLdPr Me
  loc_BB91B4: MemStI2 global_70
  loc_BB91B7: Call Proc_120_24_A1F490()
  loc_BB91BC: LitI2_Byte 0
  loc_BB91BE: CR8I2
  loc_BB91BF: FStFPR8 var_8C
  loc_BB91C2: ImpAdLdPr unk_47830A
  loc_BB91C5: MemLdPr global_0
  loc_BB91C8: Me.MoveFirst
  loc_BB91CD: LitI2_Byte 1
  loc_BB91CF: FLdPr Me
  loc_BB91D2: MemLdRfVar from_stack_1.global_68
  loc_BB91D5: FLdPr Me
  loc_BB91D8: MemLdI2 global_70
  loc_BB91DB: ForI2 var_190
  loc_BB91E1: FLdRfVar var_264
  loc_BB91E4: LitVarStr var_260, "SufaDeve"
  loc_BB91E9: PopAdLdVar
  loc_BB91EA: FLdRfVar var_250
  loc_BB91ED: ImpAdLdPr unk_47830A
  loc_BB91F0: MemLdPr global_0
  loc_BB91F3:  = Me.Fields
  loc_BB91F8: FLdPr var_250
  loc_BB91FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9200: FLdRfVar var_2CC
  loc_BB9203: LitVarStr var_2C8, "NufaDeve"
  loc_BB9208: PopAdLdVar
  loc_BB9209: FLdRfVar var_2B8
  loc_BB920C: ImpAdLdPr unk_47830A
  loc_BB920F: MemLdPr global_0
  loc_BB9212:  = Me.Fields
  loc_BB9217: FLdPr var_2B8
  loc_BB921A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB921F: FLdRfVar var_45C
  loc_BB9222: LitVarStr var_458, "SaldDeve"
  loc_BB9227: PopAdLdVar
  loc_BB9228: FLdRfVar var_448
  loc_BB922B: ImpAdLdPr unk_47830A
  loc_BB922E: MemLdPr global_0
  loc_BB9231:  = Me.Fields
  loc_BB9236: FLdPr var_448
  loc_BB9239: from_stack_2 = Me.Item(from_stack_1)
  loc_BB923E: FLdRfVar var_524
  loc_BB9241: LitVarStr var_520, "SaldDeve"
  loc_BB9246: PopAdLdVar
  loc_BB9247: FLdRfVar var_510
  loc_BB924A: ImpAdLdPr unk_47830A
  loc_BB924D: MemLdPr global_0
  loc_BB9250:  = Me.Fields
  loc_BB9255: FLdPr var_510
  loc_BB9258: from_stack_2 = Me.Item(from_stack_1)
  loc_BB925D: FLdRfVar var_E0
  loc_BB9260: FLdRfVar var_9C
  loc_BB9263: LitVarStr var_AC, "TieneRete"
  loc_BB9268: PopAdLdVar
  loc_BB9269: FLdRfVar var_98
  loc_BB926C: ImpAdLdPr unk_47830A
  loc_BB926F: MemLdPr global_0
  loc_BB9272:  = Me.Fields
  loc_BB9277: FLdPr var_98
  loc_BB927A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB927F: FLdPr var_9C
  loc_BB9282:  = Me.Value
  loc_BB9287: FLdRfVar var_E0
  loc_BB928A: LitI4 9
  loc_BB928F: FLdRfVar var_C0
  loc_BB9292: ImpAdCallFPR4  = Chr()
  loc_BB9297: FLdRfVar var_C0
  loc_BB929A: ConcatVar var_118
  loc_BB929E: FLdRfVar var_128
  loc_BB92A1: FLdRfVar var_194
  loc_BB92A4: LitVarStr var_D0, "CodiPart"
  loc_BB92A9: PopAdLdVar
  loc_BB92AA: FLdRfVar var_B0
  loc_BB92AD: ImpAdLdPr unk_47830A
  loc_BB92B0: MemLdPr global_0
  loc_BB92B3:  = Me.Fields
  loc_BB92B8: FLdPr var_B0
  loc_BB92BB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB92C0: FLdPr var_194
  loc_BB92C3:  = Me.Value
  loc_BB92C8: FLdRfVar var_128
  loc_BB92CB: ConcatVar var_148
  loc_BB92CF: LitI4 9
  loc_BB92D4: FLdRfVar var_168
  loc_BB92D7: ImpAdCallFPR4  = Chr()
  loc_BB92DC: FLdRfVar var_168
  loc_BB92DF: ConcatVar var_188
  loc_BB92E3: FLdRfVar var_1AC
  loc_BB92E6: FLdRfVar var_19C
  loc_BB92E9: LitVarStr var_138, "CodiOrga"
  loc_BB92EE: PopAdLdVar
  loc_BB92EF: FLdRfVar var_198
  loc_BB92F2: ImpAdLdPr unk_47830A
  loc_BB92F5: MemLdPr global_0
  loc_BB92F8:  = Me.Fields
  loc_BB92FD: FLdPr var_198
  loc_BB9300: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9305: FLdPr var_19C
  loc_BB9308:  = Me.Value
  loc_BB930D: FLdRfVar var_1AC
  loc_BB9310: ConcatVar var_1BC
  loc_BB9314: LitI4 9
  loc_BB9319: FLdRfVar var_1CC
  loc_BB931C: ImpAdCallFPR4  = Chr()
  loc_BB9321: FLdRfVar var_1CC
  loc_BB9324: ConcatVar var_1DC
  loc_BB9328: FLdRfVar var_1F4
  loc_BB932B: FLdRfVar var_1E4
  loc_BB932E: LitVarStr var_158, "IdImpu"
  loc_BB9333: PopAdLdVar
  loc_BB9334: FLdRfVar var_1E0
  loc_BB9337: ImpAdLdPr unk_47830A
  loc_BB933A: MemLdPr global_0
  loc_BB933D:  = Me.Fields
  loc_BB9342: FLdPr var_1E0
  loc_BB9345: from_stack_2 = Me.Item(from_stack_1)
  loc_BB934A: FLdPr var_1E4
  loc_BB934D:  = Me.Value
  loc_BB9352: FLdRfVar var_1F4
  loc_BB9355: ConcatVar var_204
  loc_BB9359: LitI4 9
  loc_BB935E: FLdRfVar var_214
  loc_BB9361: ImpAdCallFPR4  = Chr()
  loc_BB9366: FLdRfVar var_214
  loc_BB9369: ConcatVar var_224
  loc_BB936D: FLdRfVar var_23C
  loc_BB9370: FLdRfVar var_22C
  loc_BB9373: LitVarStr var_178, "TifaDeve"
  loc_BB9378: PopAdLdVar
  loc_BB9379: FLdRfVar var_228
  loc_BB937C: ImpAdLdPr unk_47830A
  loc_BB937F: MemLdPr global_0
  loc_BB9382:  = Me.Fields
  loc_BB9387: FLdPr var_228
  loc_BB938A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB938F: FLdPr var_22C
  loc_BB9392:  = Me.Value
  loc_BB9397: FLdRfVar var_23C
  loc_BB939A: ConcatVar var_24C
  loc_BB939E: LitI4 1
  loc_BB93A3: LitI4 1
  loc_BB93A8: LitVarStr var_284, "0000"
  loc_BB93AD: FStVarCopyObj var_294
  loc_BB93B0: FLdRfVar var_294
  loc_BB93B3: FLdZeroAd var_264
  loc_BB93B6: CVarAd
  loc_BB93BA: ImpAdCallI2 Format$(, )
  loc_BB93BF: CVarStr var_2A4
  loc_BB93C2: ConcatVar var_2B4
  loc_BB93C6: LitI4 1
  loc_BB93CB: LitI4 1
  loc_BB93D0: LitVarStr var_2EC, "00000000"
  loc_BB93D5: FStVarCopyObj var_2FC
  loc_BB93D8: FLdRfVar var_2FC
  loc_BB93DB: FLdZeroAd var_2CC
  loc_BB93DE: CVarAd
  loc_BB93E2: ImpAdCallI2 Format$(, )
  loc_BB93E7: CVarStr var_30C
  loc_BB93EA: ConcatVar var_31C
  loc_BB93EE: LitI4 9
  loc_BB93F3: FLdRfVar var_32C
  loc_BB93F6: ImpAdCallFPR4  = Chr()
  loc_BB93FB: FLdRfVar var_32C
  loc_BB93FE: ConcatVar var_33C
  loc_BB9402: FLdRfVar var_364
  loc_BB9405: FLdRfVar var_354
  loc_BB9408: LitVarStr var_350, "CucuPers"
  loc_BB940D: PopAdLdVar
  loc_BB940E: FLdRfVar var_340
  loc_BB9411: ImpAdLdPr unk_47830A
  loc_BB9414: MemLdPr global_0
  loc_BB9417:  = Me.Fields
  loc_BB941C: FLdPr var_340
  loc_BB941F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9424: FLdPr var_354
  loc_BB9427:  = Me.Value
  loc_BB942C: FLdRfVar var_364
  loc_BB942F: ConcatVar var_374
  loc_BB9433: LitI4 9
  loc_BB9438: FLdRfVar var_384
  loc_BB943B: ImpAdCallFPR4  = Chr()
  loc_BB9440: FLdRfVar var_384
  loc_BB9443: ConcatVar var_394
  loc_BB9447: FLdRfVar var_3BC
  loc_BB944A: FLdRfVar var_3AC
  loc_BB944D: LitVarStr var_3A8, "DetaProv"
  loc_BB9452: PopAdLdVar
  loc_BB9453: FLdRfVar var_398
  loc_BB9456: ImpAdLdPr unk_47830A
  loc_BB9459: MemLdPr global_0
  loc_BB945C:  = Me.Fields
  loc_BB9461: FLdPr var_398
  loc_BB9464: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9469: FLdPr var_3AC
  loc_BB946C:  = Me.Value
  loc_BB9471: FLdRfVar var_3BC
  loc_BB9474: ConcatVar var_3CC
  loc_BB9478: LitI4 9
  loc_BB947D: FLdRfVar var_3DC
  loc_BB9480: ImpAdCallFPR4  = Chr()
  loc_BB9485: FLdRfVar var_3DC
  loc_BB9488: ConcatVar var_3EC
  loc_BB948C: FLdRfVar var_414
  loc_BB948F: FLdRfVar var_404
  loc_BB9492: LitVarStr var_400, "DetaImpu"
  loc_BB9497: PopAdLdVar
  loc_BB9498: FLdRfVar var_3F0
  loc_BB949B: ImpAdLdPr unk_47830A
  loc_BB949E: MemLdPr global_0
  loc_BB94A1:  = Me.Fields
  loc_BB94A6: FLdPr var_3F0
  loc_BB94A9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB94AE: FLdPr var_404
  loc_BB94B1:  = Me.Value
  loc_BB94B6: FLdRfVar var_414
  loc_BB94B9: ConcatVar var_424
  loc_BB94BD: LitI4 9
  loc_BB94C2: FLdRfVar var_434
  loc_BB94C5: ImpAdCallFPR4  = Chr()
  loc_BB94CA: FLdRfVar var_434
  loc_BB94CD: ConcatVar var_444
  loc_BB94D1: LitI4 1
  loc_BB94D6: LitI4 1
  loc_BB94DB: LitVarStr var_47C, "###,###,##0.00"
  loc_BB94E0: FStVarCopyObj var_48C
  loc_BB94E3: FLdRfVar var_48C
  loc_BB94E6: FLdZeroAd var_45C
  loc_BB94E9: CVarAd
  loc_BB94ED: ImpAdCallI2 Format$(, )
  loc_BB94F2: CVarStr var_49C
  loc_BB94F5: ConcatVar var_4AC
  loc_BB94F9: LitI4 9
  loc_BB94FE: FLdRfVar var_4BC
  loc_BB9501: ImpAdCallFPR4  = Chr()
  loc_BB9506: FLdRfVar var_4BC
  loc_BB9509: ConcatVar var_4CC
  loc_BB950D: LitVarStr var_4DC, "No"
  loc_BB9512: ConcatVar var_4EC
  loc_BB9516: LitI4 9
  loc_BB951B: FLdRfVar var_4FC
  loc_BB951E: ImpAdCallFPR4  = Chr()
  loc_BB9523: FLdRfVar var_4FC
  loc_BB9526: ConcatVar var_50C
  loc_BB952A: LitI4 1
  loc_BB952F: LitI4 1
  loc_BB9534: LitVarStr var_544, "0.00"
  loc_BB9539: FStVarCopyObj var_554
  loc_BB953C: FLdRfVar var_554
  loc_BB953F: FLdZeroAd var_524
  loc_BB9542: CVarAd
  loc_BB9546: ImpAdCallI2 Format$(, )
  loc_BB954B: CVarStr var_564
  loc_BB954E: ConcatVar var_574
  loc_BB9552: LitI4 9
  loc_BB9557: FLdRfVar var_584
  loc_BB955A: ImpAdCallFPR4  = Chr()
  loc_BB955F: FLdRfVar var_584
  loc_BB9562: ConcatVar var_594
  loc_BB9566: FLdRfVar var_5BC
  loc_BB9569: FLdRfVar var_5AC
  loc_BB956C: LitVarStr var_5A8, "CodiOrco"
  loc_BB9571: PopAdLdVar
  loc_BB9572: FLdRfVar var_598
  loc_BB9575: ImpAdLdPr unk_47830A
  loc_BB9578: MemLdPr global_0
  loc_BB957B:  = Me.Fields
  loc_BB9580: FLdPr var_598
  loc_BB9583: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9588: FLdPr var_5AC
  loc_BB958B:  = Me.Value
  loc_BB9590: FLdRfVar var_5BC
  loc_BB9593: ConcatVar var_5CC
  loc_BB9597: CStrVarTmp
  loc_BB9598: CVarStr var_5DC
  loc_BB959B: PopAdLdVar
  loc_BB959C: FLdPr Me
  loc_BB959F: VCallAd Control_ID_DevengadoFlex
  loc_BB95A2: FStAdFunc var_5F0
  loc_BB95A5: FLdPr var_5F0
  loc_BB95A8: LateIdCall
  loc_BB95B0: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_194 = "": var_198 = "": var_19C = "": var_1E0 = "": var_1E4 = "": var_228 = "": var_22C = "": var_250 = "": var_2B8 = "": var_340 = "": var_354 = "": var_398 = "": var_3AC = "": var_3F0 = "": var_404 = "": var_448 = "": var_510 = "": var_598 = "": var_5AC = ""
  loc_BB95E1: FFreeVar var_394 = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_414 = "": var_424 = "": var_434 = "": var_46C = "": var_48C = "": var_444 = "": var_49C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4EC = "": var_4FC = "": var_534 = "": var_554 = "": var_50C = "": var_564 = "": var_574 = "": var_584 = "": var_594 = "": var_5BC = "": var_5CC = "": var_5DC = "": var_E0 = "": var_C0 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_23C = "": var_274 = "": var_294 = "": var_24C = "": var_2A4 = "": var_2DC = "": var_2FC = "": var_2B4 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_364 = "": var_374 = ""
  loc_BB9656: FLdPr Me
  loc_BB9659: VCallAd Control_ID_DevengadoFlex
  loc_BB965C: FStAdFunc var_98
  loc_BB965F: FLdPr var_98
  loc_BB9662: LateIdLdVar var_C0 DispID_4 0
  loc_BB9669: CI4Var
  loc_BB966B: LitI4 1
  loc_BB9670: SubI4
  loc_BB9671: CVarI4
  loc_BB9675: PopAdLdVar
  loc_BB9676: FLdPr Me
  loc_BB9679: VCallAd Control_ID_DevengadoFlex
  loc_BB967C: FStAdFunc var_9C
  loc_BB967F: FLdPr var_9C
  loc_BB9682: LateIdSt
  loc_BB9687: FFreeAd var_98 = ""
  loc_BB968E: FFree1Var var_C0 = ""
  loc_BB9691: LitVarI4
  loc_BB9699: PopAdLdVar
  loc_BB969A: FLdPr Me
  loc_BB969D: VCallAd Control_ID_DevengadoFlex
  loc_BB96A0: FStAdFunc var_98
  loc_BB96A3: FLdPr var_98
  loc_BB96A6: LateIdSt
  loc_BB96AB: FFree1Ad var_98
  loc_BB96AE: FLdRfVar var_C0
  loc_BB96B1: FLdRfVar var_9C
  loc_BB96B4: LitVarStr var_AC, "TieneRete"
  loc_BB96B9: PopAdLdVar
  loc_BB96BA: FLdRfVar var_98
  loc_BB96BD: ImpAdLdPr unk_47830A
  loc_BB96C0: MemLdPr global_0
  loc_BB96C3:  = Me.Fields
  loc_BB96C8: FLdPr var_98
  loc_BB96CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB96D0: FLdPr var_9C
  loc_BB96D3:  = Me.Value
  loc_BB96D8: FLdRfVar var_C0
  loc_BB96DB: LitVarStr var_D0, "Si"
  loc_BB96E0: HardType
  loc_BB96E1: EqVarBool
  loc_BB96E3: FFreeAd var_98 = ""
  loc_BB96EA: FFree1Var var_C0 = ""
  loc_BB96ED: BranchF loc_BB9710
  loc_BB96F0: LitVarI4
  loc_BB96F8: PopAdLdVar
  loc_BB96F9: FLdPr Me
  loc_BB96FC: VCallAd Control_ID_DevengadoFlex
  loc_BB96FF: FStAdFunc var_98
  loc_BB9702: FLdPr var_98
  loc_BB9705: LateIdSt
  loc_BB970A: FFree1Ad var_98
  loc_BB970D: Branch loc_BB972D
  loc_BB9710: LitVarI4
  loc_BB9718: PopAdLdVar
  loc_BB9719: FLdPr Me
  loc_BB971C: VCallAd Control_ID_DevengadoFlex
  loc_BB971F: FStAdFunc var_98
  loc_BB9722: FLdPr var_98
  loc_BB9725: LateIdSt
  loc_BB972A: FFree1Ad var_98
  loc_BB972D: FLdFPR8 var_8C
  loc_BB9730: CVarR8
  loc_BB9734: FLdRfVar var_C0
  loc_BB9737: FLdRfVar var_9C
  loc_BB973A: LitVarStr var_AC, "SaldDeve"
  loc_BB973F: PopAdLdVar
  loc_BB9740: FLdRfVar var_98
  loc_BB9743: ImpAdLdPr unk_47830A
  loc_BB9746: MemLdPr global_0
  loc_BB9749:  = Me.Fields
  loc_BB974E: FLdPr var_98
  loc_BB9751: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9756: FLdPr var_9C
  loc_BB9759:  = Me.Value
  loc_BB975E: FLdRfVar var_C0
  loc_BB9761: AddVar var_E0
  loc_BB9765: CR4Var
  loc_BB9766: FStFPR8 var_8C
  loc_BB9769: FFreeAd var_98 = ""
  loc_BB9770: FFreeVar var_C0 = ""
  loc_BB9777: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BB977C: FLdPr Me
  loc_BB977F: MemLdRfVar from_stack_1.global_68
  loc_BB9782: NextI2 var_190, loc_BB91E1
  loc_BB9787: LitI4 1
  loc_BB978C: LitI4 1
  loc_BB9791: LitVarStr var_D0, "currency"
  loc_BB9796: FStVarCopyObj var_C0
  loc_BB9799: FLdRfVar var_C0
  loc_BB979C: FLdRfVar var_8C
  loc_BB979F: CVarRef
  loc_BB97A4: ImpAdCallI2 Format$(, )
  loc_BB97A9: FStStrNoPop var_E4
  loc_BB97AC: FLdPr Me
  loc_BB97AF: VCallAd Control_ID_lblTotalExpeImpu
  loc_BB97B2: FStAdFunc var_98
  loc_BB97B5: FLdPr var_98
  loc_BB97B8: Me.Caption = from_stack_1
  loc_BB97BD: FFree1Str var_E4
  loc_BB97C0: FFree1Ad var_98
  loc_BB97C3: FFree1Var var_C0 = ""
  loc_BB97C6: Branch loc_BB9F3E
  loc_BB97C9: FLdRfVar var_C0
  loc_BB97CC: FLdRfVar var_B0
  loc_BB97CF: LitVarStr var_AC, "Tipo"
  loc_BB97D4: PopAdLdVar
  loc_BB97D5: FLdRfVar var_9C
  loc_BB97D8: FLdRfVar var_98
  loc_BB97DB: FLdPr Me
  loc_BB97DE: MemLdRfVar from_stack_1.global_52
  loc_BB97E1: NewIfNullPr clsimputacion
  loc_BB97E4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB97E9: FLdPr var_98
  loc_BB97EC:  = Me.Fields
  loc_BB97F1: FLdPr var_9C
  loc_BB97F4: from_stack_2 = Me.Item(from_stack_1)
  loc_BB97F9: FLdPr var_B0
  loc_BB97FC:  = Me.Value
  loc_BB9801: FLdRfVar var_C0
  loc_BB9804: LitVarStr var_D0, "Debito"
  loc_BB9809: HardType
  loc_BB980A: EqVarBool
  loc_BB980C: FFreeAd var_98 = "": var_9C = ""
  loc_BB9815: FFree1Var var_C0 = ""
  loc_BB9818: BranchF loc_BB9F3E
  loc_BB981B: LitStr "SELECT (SELECT IF(r.CucuPers IS NULL,'No','Si') FROM retexprov r WHERE r.PeriInfo = d.PeriInfo AND r.CucuPers = d.CucuPers GROUP BY r.CucuPers) TieneRete, d.*"
  loc_BB981E: LitStr ", Left(d.NumeFact,3) TifaDeve, Mid(d.NumeFact,4,4) SufaDeve, Right(d.NumeFact,8) NufaDeve"
  loc_BB9821: ConcatStr
  loc_BB9822: FStStrNoPop var_E4
  loc_BB9825: LitStr ", DetaProv, 0 AS CodiOrco"
  loc_BB9828: ConcatStr
  loc_BB9829: FStStrNoPop var_E8
  loc_BB982C: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo"
  loc_BB982F: ConcatStr
  loc_BB9830: FStStrNoPop var_EC
  loc_BB9833: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_BB9836: ConcatStr
  loc_BB9837: FStStrNoPop var_F0
  loc_BB983A: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_BB983D: ConcatStr
  loc_BB983E: FStStrNoPop var_F4
  loc_BB9841: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi"
  loc_BB9844: ConcatStr
  loc_BB9845: FStStrNoPop var_F8
  loc_BB9848: LitStr " AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_BB984B: ConcatStr
  loc_BB984C: FStStrNoPop var_FC
  loc_BB984F: LitStr " AND FeanLide IS NULL"
  loc_BB9852: ConcatStr
  loc_BB9853: FStStrNoPop var_100
  loc_BB9856: LitStr " WHERE d.PeriInfo = "
  loc_BB9859: ConcatStr
  loc_BB985A: FStStrNoPop var_104
  loc_BB985D: ImpAdLdI2 MemVar_C3D064
  loc_BB9860: CStrUI1
  loc_BB9862: FStStrNoPop var_108
  loc_BB9865: ConcatStr
  loc_BB9866: FStStrNoPop var_18C
  loc_BB9869: LitStr " AND d.ExpeImpu = '"
  loc_BB986C: ConcatStr
  loc_BB986D: CVarStr var_E0
  loc_BB9870: FLdRfVar var_C0
  loc_BB9873: FLdRfVar var_B0
  loc_BB9876: LitVarStr var_AC, "ExpeImpu"
  loc_BB987B: PopAdLdVar
  loc_BB987C: FLdRfVar var_9C
  loc_BB987F: FLdRfVar var_98
  loc_BB9882: FLdPr Me
  loc_BB9885: MemLdRfVar from_stack_1.global_52
  loc_BB9888: NewIfNullPr clsimputacion
  loc_BB988B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB9890: FLdPr var_98
  loc_BB9893:  = Me.Fields
  loc_BB9898: FLdPr var_9C
  loc_BB989B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB98A0: FLdPr var_B0
  loc_BB98A3:  = Me.Value
  loc_BB98A8: FLdRfVar var_C0
  loc_BB98AB: ConcatVar var_118
  loc_BB98AF: LitVarStr var_D0, "'"
  loc_BB98B4: ConcatVar var_128
  loc_BB98B8: LitVarStr var_138, " AND FeanDebi Is Null"
  loc_BB98BD: ConcatVar var_148
  loc_BB98C1: LitVarStr var_158, " GROUP BY d.PeriInfo, d.NumeDebi"
  loc_BB98C6: ConcatVar var_168
  loc_BB98CA: LitVarStr var_178, " HAVING saldo > 0"
  loc_BB98CF: ConcatVar var_188
  loc_BB98D3: LitVarStr var_260, " ORDER BY d.ExpeImpu, DetaProv, d.CucuPers, d.ExpeImpu, d.CodiCuco, d.NumeDebi"
  loc_BB98D8: ConcatVar var_1AC
  loc_BB98DC: CStrVarVal var_5F4
  loc_BB98E0: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BB98E5: FFreeStr var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_18C = ""
  loc_BB9900: FFreeAd var_98 = "": var_9C = ""
  loc_BB9909: FFreeVar var_E0 = "": var_C0 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = ""
  loc_BB991C: FLdRfVar var_90
  loc_BB991F: ImpAdLdPr unk_47830A
  loc_BB9922: MemLdPr global_0
  loc_BB9925:  = Me.RecordCount
  loc_BB992A: ILdRf var_90
  loc_BB992D: LitI4 0
  loc_BB9932: GtI4
  loc_BB9933: BranchF loc_BB9F3E
  loc_BB9936: Call Proc_120_24_A1F490()
  loc_BB993B: LitI2_Byte 0
  loc_BB993D: CR8I2
  loc_BB993E: FStFPR8 var_8C
  loc_BB9941: ImpAdLdPr unk_47830A
  loc_BB9944: MemLdPr global_0
  loc_BB9947: Me.MoveFirst
  loc_BB994C: FLdRfVar var_92
  loc_BB994F: ImpAdLdPr unk_47830A
  loc_BB9952: MemLdPr global_0
  loc_BB9955:  = Me.EOF
  loc_BB995A: FLdI2 var_92
  loc_BB995D: NotI4
  loc_BB995E: BranchF loc_BB9EFF
  loc_BB9961: FLdRfVar var_264
  loc_BB9964: LitVarStr var_260, "SufaDeve"
  loc_BB9969: PopAdLdVar
  loc_BB996A: FLdRfVar var_250
  loc_BB996D: ImpAdLdPr unk_47830A
  loc_BB9970: MemLdPr global_0
  loc_BB9973:  = Me.Fields
  loc_BB9978: FLdPr var_250
  loc_BB997B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9980: FLdRfVar var_2CC
  loc_BB9983: LitVarStr var_2C8, "NufaDeve"
  loc_BB9988: PopAdLdVar
  loc_BB9989: FLdRfVar var_2B8
  loc_BB998C: ImpAdLdPr unk_47830A
  loc_BB998F: MemLdPr global_0
  loc_BB9992:  = Me.Fields
  loc_BB9997: FLdPr var_2B8
  loc_BB999A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB999F: FLdRfVar var_45C
  loc_BB99A2: LitVarStr var_458, "Saldo"
  loc_BB99A7: PopAdLdVar
  loc_BB99A8: FLdRfVar var_448
  loc_BB99AB: ImpAdLdPr unk_47830A
  loc_BB99AE: MemLdPr global_0
  loc_BB99B1:  = Me.Fields
  loc_BB99B6: FLdPr var_448
  loc_BB99B9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB99BE: FLdRfVar var_524
  loc_BB99C1: LitVarStr var_520, "Saldo"
  loc_BB99C6: PopAdLdVar
  loc_BB99C7: FLdRfVar var_510
  loc_BB99CA: ImpAdLdPr unk_47830A
  loc_BB99CD: MemLdPr global_0
  loc_BB99D0:  = Me.Fields
  loc_BB99D5: FLdPr var_510
  loc_BB99D8: from_stack_2 = Me.Item(from_stack_1)
  loc_BB99DD: FLdRfVar var_E0
  loc_BB99E0: FLdRfVar var_9C
  loc_BB99E3: LitVarStr var_AC, "TieneRete"
  loc_BB99E8: PopAdLdVar
  loc_BB99E9: FLdRfVar var_98
  loc_BB99EC: ImpAdLdPr unk_47830A
  loc_BB99EF: MemLdPr global_0
  loc_BB99F2:  = Me.Fields
  loc_BB99F7: FLdPr var_98
  loc_BB99FA: from_stack_2 = Me.Item(from_stack_1)
  loc_BB99FF: FLdPr var_9C
  loc_BB9A02:  = Me.Value
  loc_BB9A07: FLdRfVar var_E0
  loc_BB9A0A: LitI4 9
  loc_BB9A0F: FLdRfVar var_C0
  loc_BB9A12: ImpAdCallFPR4  = Chr()
  loc_BB9A17: FLdRfVar var_C0
  loc_BB9A1A: ConcatVar var_118
  loc_BB9A1E: FLdRfVar var_128
  loc_BB9A21: FLdRfVar var_194
  loc_BB9A24: LitVarStr var_D0, "CodiCuco"
  loc_BB9A29: PopAdLdVar
  loc_BB9A2A: FLdRfVar var_B0
  loc_BB9A2D: ImpAdLdPr unk_47830A
  loc_BB9A30: MemLdPr global_0
  loc_BB9A33:  = Me.Fields
  loc_BB9A38: FLdPr var_B0
  loc_BB9A3B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9A40: FLdPr var_194
  loc_BB9A43:  = Me.Value
  loc_BB9A48: FLdRfVar var_128
  loc_BB9A4B: ConcatVar var_148
  loc_BB9A4F: LitI4 9
  loc_BB9A54: FLdRfVar var_168
  loc_BB9A57: ImpAdCallFPR4  = Chr()
  loc_BB9A5C: FLdRfVar var_168
  loc_BB9A5F: ConcatVar var_188
  loc_BB9A63: FLdRfVar var_1AC
  loc_BB9A66: FLdRfVar var_19C
  loc_BB9A69: LitVarStr var_138, "CodiOrga"
  loc_BB9A6E: PopAdLdVar
  loc_BB9A6F: FLdRfVar var_198
  loc_BB9A72: ImpAdLdPr unk_47830A
  loc_BB9A75: MemLdPr global_0
  loc_BB9A78:  = Me.Fields
  loc_BB9A7D: FLdPr var_198
  loc_BB9A80: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9A85: FLdPr var_19C
  loc_BB9A88:  = Me.Value
  loc_BB9A8D: FLdRfVar var_1AC
  loc_BB9A90: ConcatVar var_1BC
  loc_BB9A94: LitI4 9
  loc_BB9A99: FLdRfVar var_1CC
  loc_BB9A9C: ImpAdCallFPR4  = Chr()
  loc_BB9AA1: FLdRfVar var_1CC
  loc_BB9AA4: ConcatVar var_1DC
  loc_BB9AA8: FLdRfVar var_1F4
  loc_BB9AAB: FLdRfVar var_1E4
  loc_BB9AAE: LitVarStr var_158, "NumeDebi"
  loc_BB9AB3: PopAdLdVar
  loc_BB9AB4: FLdRfVar var_1E0
  loc_BB9AB7: ImpAdLdPr unk_47830A
  loc_BB9ABA: MemLdPr global_0
  loc_BB9ABD:  = Me.Fields
  loc_BB9AC2: FLdPr var_1E0
  loc_BB9AC5: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9ACA: FLdPr var_1E4
  loc_BB9ACD:  = Me.Value
  loc_BB9AD2: FLdRfVar var_1F4
  loc_BB9AD5: ConcatVar var_204
  loc_BB9AD9: LitI4 9
  loc_BB9ADE: FLdRfVar var_214
  loc_BB9AE1: ImpAdCallFPR4  = Chr()
  loc_BB9AE6: FLdRfVar var_214
  loc_BB9AE9: ConcatVar var_224
  loc_BB9AED: FLdRfVar var_23C
  loc_BB9AF0: FLdRfVar var_22C
  loc_BB9AF3: LitVarStr var_178, "TifaDeve"
  loc_BB9AF8: PopAdLdVar
  loc_BB9AF9: FLdRfVar var_228
  loc_BB9AFC: ImpAdLdPr unk_47830A
  loc_BB9AFF: MemLdPr global_0
  loc_BB9B02:  = Me.Fields
  loc_BB9B07: FLdPr var_228
  loc_BB9B0A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9B0F: FLdPr var_22C
  loc_BB9B12:  = Me.Value
  loc_BB9B17: FLdRfVar var_23C
  loc_BB9B1A: ConcatVar var_24C
  loc_BB9B1E: LitI4 1
  loc_BB9B23: LitI4 1
  loc_BB9B28: LitVarStr var_284, "0000"
  loc_BB9B2D: FStVarCopyObj var_294
  loc_BB9B30: FLdRfVar var_294
  loc_BB9B33: FLdZeroAd var_264
  loc_BB9B36: CVarAd
  loc_BB9B3A: ImpAdCallI2 Format$(, )
  loc_BB9B3F: CVarStr var_2A4
  loc_BB9B42: ConcatVar var_2B4
  loc_BB9B46: LitI4 1
  loc_BB9B4B: LitI4 1
  loc_BB9B50: LitVarStr var_2EC, "00000000"
  loc_BB9B55: FStVarCopyObj var_2FC
  loc_BB9B58: FLdRfVar var_2FC
  loc_BB9B5B: FLdZeroAd var_2CC
  loc_BB9B5E: CVarAd
  loc_BB9B62: ImpAdCallI2 Format$(, )
  loc_BB9B67: CVarStr var_30C
  loc_BB9B6A: ConcatVar var_31C
  loc_BB9B6E: LitI4 9
  loc_BB9B73: FLdRfVar var_32C
  loc_BB9B76: ImpAdCallFPR4  = Chr()
  loc_BB9B7B: FLdRfVar var_32C
  loc_BB9B7E: ConcatVar var_33C
  loc_BB9B82: FLdRfVar var_364
  loc_BB9B85: FLdRfVar var_354
  loc_BB9B88: LitVarStr var_350, "CucuPers"
  loc_BB9B8D: PopAdLdVar
  loc_BB9B8E: FLdRfVar var_340
  loc_BB9B91: ImpAdLdPr unk_47830A
  loc_BB9B94: MemLdPr global_0
  loc_BB9B97:  = Me.Fields
  loc_BB9B9C: FLdPr var_340
  loc_BB9B9F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9BA4: FLdPr var_354
  loc_BB9BA7:  = Me.Value
  loc_BB9BAC: FLdRfVar var_364
  loc_BB9BAF: ConcatVar var_374
  loc_BB9BB3: LitI4 9
  loc_BB9BB8: FLdRfVar var_384
  loc_BB9BBB: ImpAdCallFPR4  = Chr()
  loc_BB9BC0: FLdRfVar var_384
  loc_BB9BC3: ConcatVar var_394
  loc_BB9BC7: FLdRfVar var_3BC
  loc_BB9BCA: FLdRfVar var_3AC
  loc_BB9BCD: LitVarStr var_3A8, "DetaProv"
  loc_BB9BD2: PopAdLdVar
  loc_BB9BD3: FLdRfVar var_398
  loc_BB9BD6: ImpAdLdPr unk_47830A
  loc_BB9BD9: MemLdPr global_0
  loc_BB9BDC:  = Me.Fields
  loc_BB9BE1: FLdPr var_398
  loc_BB9BE4: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9BE9: FLdPr var_3AC
  loc_BB9BEC:  = Me.Value
  loc_BB9BF1: FLdRfVar var_3BC
  loc_BB9BF4: ConcatVar var_3CC
  loc_BB9BF8: LitI4 9
  loc_BB9BFD: FLdRfVar var_3DC
  loc_BB9C00: ImpAdCallFPR4  = Chr()
  loc_BB9C05: FLdRfVar var_3DC
  loc_BB9C08: ConcatVar var_3EC
  loc_BB9C0C: FLdRfVar var_414
  loc_BB9C0F: FLdRfVar var_404
  loc_BB9C12: LitVarStr var_400, "DetaDebi"
  loc_BB9C17: PopAdLdVar
  loc_BB9C18: FLdRfVar var_3F0
  loc_BB9C1B: ImpAdLdPr unk_47830A
  loc_BB9C1E: MemLdPr global_0
  loc_BB9C21:  = Me.Fields
  loc_BB9C26: FLdPr var_3F0
  loc_BB9C29: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9C2E: FLdPr var_404
  loc_BB9C31:  = Me.Value
  loc_BB9C36: FLdRfVar var_414
  loc_BB9C39: ConcatVar var_424
  loc_BB9C3D: LitI4 9
  loc_BB9C42: FLdRfVar var_434
  loc_BB9C45: ImpAdCallFPR4  = Chr()
  loc_BB9C4A: FLdRfVar var_434
  loc_BB9C4D: ConcatVar var_444
  loc_BB9C51: LitI4 1
  loc_BB9C56: LitI4 1
  loc_BB9C5B: LitVarStr var_47C, "0.00"
  loc_BB9C60: FStVarCopyObj var_48C
  loc_BB9C63: FLdRfVar var_48C
  loc_BB9C66: FLdZeroAd var_45C
  loc_BB9C69: CVarAd
  loc_BB9C6D: ImpAdCallI2 Format$(, )
  loc_BB9C72: CVarStr var_49C
  loc_BB9C75: ConcatVar var_4AC
  loc_BB9C79: LitI4 9
  loc_BB9C7E: FLdRfVar var_4BC
  loc_BB9C81: ImpAdCallFPR4  = Chr()
  loc_BB9C86: FLdRfVar var_4BC
  loc_BB9C89: ConcatVar var_4CC
  loc_BB9C8D: LitVarStr var_4DC, "No"
  loc_BB9C92: ConcatVar var_4EC
  loc_BB9C96: LitI4 9
  loc_BB9C9B: FLdRfVar var_4FC
  loc_BB9C9E: ImpAdCallFPR4  = Chr()
  loc_BB9CA3: FLdRfVar var_4FC
  loc_BB9CA6: ConcatVar var_50C
  loc_BB9CAA: LitI4 1
  loc_BB9CAF: LitI4 1
  loc_BB9CB4: LitVarStr var_544, "0.00"
  loc_BB9CB9: FStVarCopyObj var_554
  loc_BB9CBC: FLdRfVar var_554
  loc_BB9CBF: FLdZeroAd var_524
  loc_BB9CC2: CVarAd
  loc_BB9CC6: ImpAdCallI2 Format$(, )
  loc_BB9CCB: CVarStr var_564
  loc_BB9CCE: ConcatVar var_574
  loc_BB9CD2: LitI4 9
  loc_BB9CD7: FLdRfVar var_584
  loc_BB9CDA: ImpAdCallFPR4  = Chr()
  loc_BB9CDF: FLdRfVar var_584
  loc_BB9CE2: ConcatVar var_594
  loc_BB9CE6: FLdRfVar var_5BC
  loc_BB9CE9: FLdRfVar var_5AC
  loc_BB9CEC: LitVarStr var_5A8, "CodiOrco"
  loc_BB9CF1: PopAdLdVar
  loc_BB9CF2: FLdRfVar var_598
  loc_BB9CF5: ImpAdLdPr unk_47830A
  loc_BB9CF8: MemLdPr global_0
  loc_BB9CFB:  = Me.Fields
  loc_BB9D00: FLdPr var_598
  loc_BB9D03: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9D08: FLdPr var_5AC
  loc_BB9D0B:  = Me.Value
  loc_BB9D10: FLdRfVar var_5BC
  loc_BB9D13: ConcatVar var_5CC
  loc_BB9D17: CStrVarTmp
  loc_BB9D18: CVarStr var_5DC
  loc_BB9D1B: PopAdLdVar
  loc_BB9D1C: FLdPr Me
  loc_BB9D1F: VCallAd Control_ID_DevengadoFlex
  loc_BB9D22: FStAdFunc var_5F0
  loc_BB9D25: FLdPr var_5F0
  loc_BB9D28: LateIdCall
  loc_BB9D30: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_194 = "": var_198 = "": var_19C = "": var_1E0 = "": var_1E4 = "": var_228 = "": var_22C = "": var_250 = "": var_2B8 = "": var_340 = "": var_354 = "": var_398 = "": var_3AC = "": var_3F0 = "": var_404 = "": var_448 = "": var_510 = "": var_598 = "": var_5AC = ""
  loc_BB9D61: FFreeVar var_394 = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_414 = "": var_424 = "": var_434 = "": var_46C = "": var_48C = "": var_444 = "": var_49C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4EC = "": var_4FC = "": var_534 = "": var_554 = "": var_50C = "": var_564 = "": var_574 = "": var_584 = "": var_594 = "": var_5BC = "": var_5CC = "": var_5DC = "": var_E0 = "": var_C0 = "": var_118 = "": var_128 = "": var_148 = "": var_168 = "": var_188 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_23C = "": var_274 = "": var_294 = "": var_24C = "": var_2A4 = "": var_2DC = "": var_2FC = "": var_2B4 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_364 = "": var_374 = ""
  loc_BB9DD6: FLdPr Me
  loc_BB9DD9: VCallAd Control_ID_DevengadoFlex
  loc_BB9DDC: FStAdFunc var_98
  loc_BB9DDF: FLdPr var_98
  loc_BB9DE2: LateIdLdVar var_C0 DispID_4 0
  loc_BB9DE9: CI4Var
  loc_BB9DEB: LitI4 1
  loc_BB9DF0: SubI4
  loc_BB9DF1: CVarI4
  loc_BB9DF5: PopAdLdVar
  loc_BB9DF6: FLdPr Me
  loc_BB9DF9: VCallAd Control_ID_DevengadoFlex
  loc_BB9DFC: FStAdFunc var_9C
  loc_BB9DFF: FLdPr var_9C
  loc_BB9E02: LateIdSt
  loc_BB9E07: FFreeAd var_98 = ""
  loc_BB9E0E: FFree1Var var_C0 = ""
  loc_BB9E11: LitVarI4
  loc_BB9E19: PopAdLdVar
  loc_BB9E1A: FLdPr Me
  loc_BB9E1D: VCallAd Control_ID_DevengadoFlex
  loc_BB9E20: FStAdFunc var_98
  loc_BB9E23: FLdPr var_98
  loc_BB9E26: LateIdSt
  loc_BB9E2B: FFree1Ad var_98
  loc_BB9E2E: FLdRfVar var_C0
  loc_BB9E31: FLdRfVar var_9C
  loc_BB9E34: LitVarStr var_AC, "TieneRete"
  loc_BB9E39: PopAdLdVar
  loc_BB9E3A: FLdRfVar var_98
  loc_BB9E3D: ImpAdLdPr unk_47830A
  loc_BB9E40: MemLdPr global_0
  loc_BB9E43:  = Me.Fields
  loc_BB9E48: FLdPr var_98
  loc_BB9E4B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9E50: FLdPr var_9C
  loc_BB9E53:  = Me.Value
  loc_BB9E58: FLdRfVar var_C0
  loc_BB9E5B: LitVarStr var_D0, "Si"
  loc_BB9E60: HardType
  loc_BB9E61: EqVarBool
  loc_BB9E63: FFreeAd var_98 = ""
  loc_BB9E6A: FFree1Var var_C0 = ""
  loc_BB9E6D: BranchF loc_BB9E90
  loc_BB9E70: LitVarI4
  loc_BB9E78: PopAdLdVar
  loc_BB9E79: FLdPr Me
  loc_BB9E7C: VCallAd Control_ID_DevengadoFlex
  loc_BB9E7F: FStAdFunc var_98
  loc_BB9E82: FLdPr var_98
  loc_BB9E85: LateIdSt
  loc_BB9E8A: FFree1Ad var_98
  loc_BB9E8D: Branch loc_BB9EAD
  loc_BB9E90: LitVarI4
  loc_BB9E98: PopAdLdVar
  loc_BB9E99: FLdPr Me
  loc_BB9E9C: VCallAd Control_ID_DevengadoFlex
  loc_BB9E9F: FStAdFunc var_98
  loc_BB9EA2: FLdPr var_98
  loc_BB9EA5: LateIdSt
  loc_BB9EAA: FFree1Ad var_98
  loc_BB9EAD: FLdFPR8 var_8C
  loc_BB9EB0: CVarR8
  loc_BB9EB4: FLdRfVar var_C0
  loc_BB9EB7: FLdRfVar var_9C
  loc_BB9EBA: LitVarStr var_AC, "Saldo"
  loc_BB9EBF: PopAdLdVar
  loc_BB9EC0: FLdRfVar var_98
  loc_BB9EC3: ImpAdLdPr unk_47830A
  loc_BB9EC6: MemLdPr global_0
  loc_BB9EC9:  = Me.Fields
  loc_BB9ECE: FLdPr var_98
  loc_BB9ED1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB9ED6: FLdPr var_9C
  loc_BB9ED9:  = Me.Value
  loc_BB9EDE: FLdRfVar var_C0
  loc_BB9EE1: AddVar var_E0
  loc_BB9EE5: CR4Var
  loc_BB9EE6: FStFPR8 var_8C
  loc_BB9EE9: FFreeAd var_98 = ""
  loc_BB9EF0: FFreeVar var_C0 = ""
  loc_BB9EF7: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BB9EFC: Branch loc_BB994C
  loc_BB9EFF: LitI4 1
  loc_BB9F04: LitI4 1
  loc_BB9F09: LitVarStr var_D0, "currency"
  loc_BB9F0E: FStVarCopyObj var_C0
  loc_BB9F11: FLdRfVar var_C0
  loc_BB9F14: FLdRfVar var_8C
  loc_BB9F17: CVarRef
  loc_BB9F1C: ImpAdCallI2 Format$(, )
  loc_BB9F21: FStStrNoPop var_E4
  loc_BB9F24: FLdPr Me
  loc_BB9F27: VCallAd Control_ID_lblTotalExpeImpu
  loc_BB9F2A: FStAdFunc var_98
  loc_BB9F2D: FLdPr var_98
  loc_BB9F30: Me.Caption = from_stack_1
  loc_BB9F35: FFree1Str var_E4
  loc_BB9F38: FFree1Ad var_98
  loc_BB9F3B: FFree1Var var_C0 = ""
  loc_BB9F3E: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_GotFocus() '94FA88
  'Data Table: 4782C4
  loc_94FA74: FLdPr Me
  loc_94FA77: VCallAd Control_ID_DetaLiquTxt
  loc_94FA7A: CVarAd
  loc_94FA7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FA83: FFree1Var var_94 = ""
  loc_94FA86: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_Validate(Cancel As Boolean) '9BEA7C
  'Data Table: 4782C4
  loc_9BE9C0: FLdRfVar var_8A
  loc_9BE9C3: FLdPr Me
  loc_9BE9C6: VCallAd Control_ID_cmdCancelar
  loc_9BE9C9: FStAdFunc var_88
  loc_9BE9CC: FLdPr var_88
  loc_9BE9CF:  = Me.Value
  loc_9BE9D4: FLdI2 var_8A
  loc_9BE9D7: NotI4
  loc_9BE9D8: FLdRfVar var_92
  loc_9BE9DB: FLdPr Me
  loc_9BE9DE: VCallAd Control_ID_DetaLiquTxt
  loc_9BE9E1: FStAdFunc var_90
  loc_9BE9E4: FLdPr var_90
  loc_9BE9E7:  = Me.Enabled
  loc_9BE9EC: FLdI2 var_92
  loc_9BE9EF: AndI4
  loc_9BE9F0: FFreeAd var_88 = ""
  loc_9BE9F7: BranchF loc_9BEA78
  loc_9BE9FA: FLdRfVar var_98
  loc_9BE9FD: FLdPr Me
  loc_9BEA00: VCallAd Control_ID_DetaLiquTxt
  loc_9BEA03: FStAdFunc var_88
  loc_9BEA06: FLdPr var_88
  loc_9BEA09:  = Me.Text
  loc_9BEA0E: LitI2_Byte 0
  loc_9BEA10: PopTmpLdAd2 var_9A
  loc_9BEA13: LitI2_Byte 0
  loc_9BEA15: PopTmpLdAd2 var_92
  loc_9BEA18: LitI2_Byte 0
  loc_9BEA1A: PopTmpLdAd2 var_8A
  loc_9BEA1D: ILdRf var_98
  loc_9BEA20: LitStr "Detalle de Liquidación"
  loc_9BEA23: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BEA28: FStStrNoPop var_A0
  loc_9BEA2B: FLdPr Me
  loc_9BEA2E: MemStStrCopy
  loc_9BEA32: FFreeStr var_98 = ""
  loc_9BEA39: FFree1Ad var_88
  loc_9BEA3C: FLdPr Me
  loc_9BEA3F: VCallAd Control_ID_DetaLiquTxt
  loc_9BEA42: FStAdFunc var_A8
  loc_9BEA45: LitNothing
  loc_9BEA47: CastAd
  loc_9BEA4A: FStAdFunc var_A4
  loc_9BEA4D: FLdRfVar var_A4
  loc_9BEA50: FLdZeroAd var_A8
  loc_9BEA53: FStAdFuncNoPop
  loc_9BEA56: CastAd
  loc_9BEA59: FStAdFunc var_90
  loc_9BEA5C: FLdRfVar var_90
  loc_9BEA5F: FLdPr Me
  loc_9BEA62: MemLdRfVar from_stack_1.global_64
  loc_9BEA65: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BEA6A: IStI2 Cancel
  loc_9BEA6D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BEA78: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '953478
  'Data Table: 4782C4
  loc_953464: FLdPr Me
  loc_953467: VCallAd Control_ID_FiltroMsk
  loc_95346A: CVarAd
  loc_95346E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953473: FFree1Var var_94 = ""
  loc_953476: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A641D4
  'Data Table: 4782C4
  loc_A63E94: ILdRf Me
  loc_A63E97: CastAd
  loc_A63E9A: FStAdFunc var_88
  loc_A63E9D: FLdRfVar var_88
  loc_A63EA0: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A63EA5: FFree1Ad var_88
  loc_A63EA8: FLdPr Me
  loc_A63EAB: VCallAd Control_ID_FiltroMsk
  loc_A63EAE: FStAdFunc var_88
  loc_A63EB1: FLdPr var_88
  loc_A63EB4: LateIdLdVar var_98 DispID_22 0
  loc_A63EBB: CStrVarTmp
  loc_A63EBC: FStStrNoPop var_9C
  loc_A63EBF: ImpAdCallI2 Trim$()
  loc_A63EC4: FStStrNoPop var_A0
  loc_A63EC7: LitStr vbNullString
  loc_A63ECA: NeStr
  loc_A63ECC: FFreeStr var_9C = ""
  loc_A63ED3: FFree1Ad var_88
  loc_A63ED6: FFree1Var var_98 = ""
  loc_A63ED9: BranchF loc_A640A4
  loc_A63EDC: FLdRfVar var_A2
  loc_A63EDF: FLdPr Me
  loc_A63EE2: VCallAd Control_ID_FiltroCbo
  loc_A63EE5: FStAdFunc var_88
  loc_A63EE8: FLdPr var_88
  loc_A63EEB:  = Me.ListIndex
  loc_A63EF0: FLdI2 var_A2
  loc_A63EF3: LitI2_Byte 0
  loc_A63EF5: EqI2
  loc_A63EF6: FFree1Ad var_88
  loc_A63EF9: BranchF loc_A63F74
  loc_A63EFC: LitStr "ExpeImpu LIKE '"
  loc_A63EFF: FLdPr Me
  loc_A63F02: VCallAd Control_ID_FiltroMsk
  loc_A63F05: FStAdFunc var_88
  loc_A63F08: FLdPr var_88
  loc_A63F0B: LateIdLdVar var_98 DispID_22 0
  loc_A63F12: CStrVarTmp
  loc_A63F13: FStStrNoPop var_9C
  loc_A63F16: ConcatStr
  loc_A63F17: FStStrNoPop var_A0
  loc_A63F1A: LitStr Chr(37) & "'"
  loc_A63F1D: ConcatStr
  loc_A63F1E: PopTmpLdAdStr
  loc_A63F22: FLdPr Me
  loc_A63F25: MemLdRfVar from_stack_1.global_52
  loc_A63F28: NewIfNullPr clsimputacion
  loc_A63F2B: Call clsimputacion.Filter(from_stack_1v)
  loc_A63F30: FFreeStr var_9C = "": var_A0 = ""
  loc_A63F39: FFree1Ad var_88
  loc_A63F3C: FFree1Var var_98 = ""
  loc_A63F3F: LitStr "Expediente de pago que comience con "
  loc_A63F42: FLdPr Me
  loc_A63F45: VCallAd Control_ID_FiltroMsk
  loc_A63F48: FStAdFunc var_88
  loc_A63F4B: FLdPr var_88
  loc_A63F4E: LateIdLdVar var_98 DispID_22 0
  loc_A63F55: CStrVarTmp
  loc_A63F56: FStStrNoPop var_9C
  loc_A63F59: ConcatStr
  loc_A63F5A: FStStrNoPop var_A0
  loc_A63F5D: FLdPr Me
  loc_A63F60: MemStStrCopy
  loc_A63F64: FFreeStr var_9C = ""
  loc_A63F6B: FFree1Ad var_88
  loc_A63F6E: FFree1Var var_98 = ""
  loc_A63F71: Branch loc_A640A1
  loc_A63F74: FLdRfVar var_A2
  loc_A63F77: FLdPr Me
  loc_A63F7A: VCallAd Control_ID_FiltroCbo
  loc_A63F7D: FStAdFunc var_88
  loc_A63F80: FLdPr var_88
  loc_A63F83:  = Me.ListIndex
  loc_A63F88: FLdI2 var_A2
  loc_A63F8B: LitI2_Byte 1
  loc_A63F8D: EqI2
  loc_A63F8E: FFree1Ad var_88
  loc_A63F91: BranchF loc_A6400C
  loc_A63F94: LitStr "ExorImpu LIKE '"
  loc_A63F97: FLdPr Me
  loc_A63F9A: VCallAd Control_ID_FiltroMsk
  loc_A63F9D: FStAdFunc var_88
  loc_A63FA0: FLdPr var_88
  loc_A63FA3: LateIdLdVar var_98 DispID_22 0
  loc_A63FAA: CStrVarTmp
  loc_A63FAB: FStStrNoPop var_9C
  loc_A63FAE: ConcatStr
  loc_A63FAF: FStStrNoPop var_A0
  loc_A63FB2: LitStr Chr(37) & "'"
  loc_A63FB5: ConcatStr
  loc_A63FB6: PopTmpLdAdStr
  loc_A63FBA: FLdPr Me
  loc_A63FBD: MemLdRfVar from_stack_1.global_52
  loc_A63FC0: NewIfNullPr clsimputacion
  loc_A63FC3: Call clsimputacion.Filter(from_stack_1v)
  loc_A63FC8: FFreeStr var_9C = "": var_A0 = ""
  loc_A63FD1: FFree1Ad var_88
  loc_A63FD4: FFree1Var var_98 = ""
  loc_A63FD7: LitStr "Expediente Original que comience con "
  loc_A63FDA: FLdPr Me
  loc_A63FDD: VCallAd Control_ID_FiltroMsk
  loc_A63FE0: FStAdFunc var_88
  loc_A63FE3: FLdPr var_88
  loc_A63FE6: LateIdLdVar var_98 DispID_22 0
  loc_A63FED: CStrVarTmp
  loc_A63FEE: FStStrNoPop var_9C
  loc_A63FF1: ConcatStr
  loc_A63FF2: FStStrNoPop var_A0
  loc_A63FF5: FLdPr Me
  loc_A63FF8: MemStStrCopy
  loc_A63FFC: FFreeStr var_9C = ""
  loc_A64003: FFree1Ad var_88
  loc_A64006: FFree1Var var_98 = ""
  loc_A64009: Branch loc_A640A1
  loc_A6400C: FLdRfVar var_A2
  loc_A6400F: FLdPr Me
  loc_A64012: VCallAd Control_ID_FiltroCbo
  loc_A64015: FStAdFunc var_88
  loc_A64018: FLdPr var_88
  loc_A6401B:  = Me.ListIndex
  loc_A64020: FLdI2 var_A2
  loc_A64023: LitI2_Byte 2
  loc_A64025: EqI2
  loc_A64026: FFree1Ad var_88
  loc_A64029: BranchF loc_A640A1
  loc_A6402C: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A6402F: FLdPr Me
  loc_A64032: VCallAd Control_ID_FiltroMsk
  loc_A64035: FStAdFunc var_88
  loc_A64038: FLdPr var_88
  loc_A6403B: LateIdLdVar var_98 DispID_22 0
  loc_A64042: CStrVarTmp
  loc_A64043: FStStrNoPop var_9C
  loc_A64046: ConcatStr
  loc_A64047: FStStrNoPop var_A0
  loc_A6404A: LitStr Chr(37) & "'"
  loc_A6404D: ConcatStr
  loc_A6404E: PopTmpLdAdStr
  loc_A64052: FLdPr Me
  loc_A64055: MemLdRfVar from_stack_1.global_52
  loc_A64058: NewIfNullPr clsimputacion
  loc_A6405B: Call clsimputacion.Filter(from_stack_1v)
  loc_A64060: FFreeStr var_9C = "": var_A0 = ""
  loc_A64069: FFree1Ad var_88
  loc_A6406C: FFree1Var var_98 = ""
  loc_A6406F: LitStr "nombre del Proveedor contiene: "
  loc_A64072: FLdPr Me
  loc_A64075: VCallAd Control_ID_FiltroMsk
  loc_A64078: FStAdFunc var_88
  loc_A6407B: FLdPr var_88
  loc_A6407E: LateIdLdVar var_98 DispID_22 0
  loc_A64085: CStrVarTmp
  loc_A64086: FStStrNoPop var_9C
  loc_A64089: ConcatStr
  loc_A6408A: FStStrNoPop var_A0
  loc_A6408D: FLdPr Me
  loc_A64090: MemStStrCopy
  loc_A64094: FFreeStr var_9C = ""
  loc_A6409B: FFree1Ad var_88
  loc_A6409E: FFree1Var var_98 = ""
  loc_A640A1: Branch loc_A640C8
  loc_A640A4: LitStr vbNullString
  loc_A640A7: FStStrCopy var_9C
  loc_A640AA: FLdRfVar var_9C
  loc_A640AD: FLdPr Me
  loc_A640B0: MemLdRfVar from_stack_1.global_52
  loc_A640B3: NewIfNullPr clsimputacion
  loc_A640B6: Call clsimputacion.Filter(from_stack_1v)
  loc_A640BB: FFree1Str var_9C
  loc_A640BE: LitStr vbNullString
  loc_A640C1: FLdPr Me
  loc_A640C4: MemStStrCopy
  loc_A640C8: FLdRfVar var_AC
  loc_A640CB: FLdPr Me
  loc_A640CE: MemLdRfVar from_stack_1.global_52
  loc_A640D1: NewIfNullPr clsimputacion
  loc_A640D4: from_stack_1 = clsimputacion.RecordCount
  loc_A640D9: ILdRf var_AC
  loc_A640DC: LitI4 0
  loc_A640E1: GtI4
  loc_A640E2: BranchF loc_A6418F
  loc_A640E5: FLdPr Me
  loc_A640E8: MemLdRfVar from_stack_1.global_52
  loc_A640EB: NewIfNullAd
  loc_A640EE: FStAd var_B0 
  loc_A640F2: FLdRfVar var_B0
  loc_A640F5: CVarRef
  loc_A640FA: ILdRf Me
  loc_A640FD: CastAd
  loc_A64100: FStAdFunc var_88
  loc_A64103: FLdRfVar var_88
  loc_A64106: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A6410B: ILdRf var_B0
  loc_A6410E: CastAd
  loc_A64111: FLdPr Me
  loc_A64114: MemStAdFunc
  loc_A64118: FFreeAd var_88 = ""
  loc_A6411F: LitI4 0
  loc_A64124: LitI4 1
  loc_A64129: FLdRfVar var_C4
  loc_A6412C: Redim
  loc_A64136: FLdPr Me
  loc_A64139: MemLdRfVar from_stack_1.global_52
  loc_A6413C: NewIfNullAd
  loc_A6413F: FStAd var_88 
  loc_A64143: FLdRfVar var_88
  loc_A64146: CVarRef
  loc_A6414B: ParmAry1St
  loc_A64151: FLdPr Me
  loc_A64154: VCallAd Control_ID_dgdABMS
  loc_A64157: CVarAd
  loc_A6415B: ParmAry1St
  loc_A64161: FLdRfVar var_C4
  loc_A64164: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A64169: ILdRf var_88
  loc_A6416C: CastAd
  loc_A6416F: FLdPr Me
  loc_A64172: MemStAdFunc
  loc_A64176: FLdRfVar var_C4
  loc_A64179: Erase
  loc_A6417A: FFree1Ad var_88
  loc_A6417D: LitI2_Byte 0
  loc_A6417F: LitVarI2 var_98, 0
  loc_A64184: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A64189: FFree1Var var_98 = ""
  loc_A6418C: Branch loc_A641A3
  loc_A6418F: ILdRf Me
  loc_A64192: CastAd
  loc_A64195: FStAdFunc var_88
  loc_A64198: FLdRfVar var_88
  loc_A6419B: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A641A0: FFree1Ad var_88
  loc_A641A3: FLdPr Me
  loc_A641A6: VCallAd Control_ID_dgdABMS
  loc_A641A9: FStAdFunc var_B0
  loc_A641AC: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_A641AF: FStStrCopy var_9C
  loc_A641B2: FLdRfVar var_9C
  loc_A641B5: FLdPr Me
  loc_A641B8: MemLdStr global_72
  loc_A641BB: FLdZeroAd var_B0
  loc_A641BE: FStAdFunc var_88
  loc_A641C1: FLdRfVar var_88
  loc_A641C4: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A641C9: FFree1Str var_9C
  loc_A641CC: FFreeAd var_88 = ""
  loc_A641D3: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997764
  'Data Table: 4782C4
  loc_997700: ILdI2 KeyAscii
  loc_997703: LitI2_Byte &H27
  loc_997705: EqI2
  loc_997706: BranchF loc_99770E
  loc_997709: LitI2_Byte 0
  loc_99770B: IStI2 KeyAscii
  loc_99770E: FLdRfVar var_88
  loc_997711: FLdPr Me
  loc_997714: MemLdRfVar from_stack_1.global_52
  loc_997717: NewIfNullPr clsimputacion
  loc_99771A: from_stack_1 = clsimputacion.RecordCount
  loc_99771F: ILdRf var_88
  loc_997722: LitI4 0
  loc_997727: EqI4
  loc_997728: ILdI2 KeyAscii
  loc_99772B: CI4UI1
  loc_99772C: LitI4 8
  loc_997731: NeI4
  loc_997732: AndI4
  loc_997733: FLdPr Me
  loc_997736: VCallAd Control_ID_FiltroMsk
  loc_997739: FStAdFunc var_8C
  loc_99773C: FLdPr var_8C
  loc_99773F: LateIdLdVar var_9C DispID_16 0
  loc_997746: CStrVarTmp
  loc_997747: FStStrNoPop var_A0
  loc_99774A: LitStr vbNullString
  loc_99774D: EqStr
  loc_99774F: AndI4
  loc_997750: FFree1Str var_A0
  loc_997753: FFree1Ad var_8C
  loc_997756: FFree1Var var_9C = ""
  loc_997759: BranchF loc_997761
  loc_99775C: LitI2_Byte 0
  loc_99775E: IStI2 KeyAscii
  loc_997761: ExitProcHresult
  loc_997762: LitVar_Missing FiltroMsk_KeyPressC20
End Sub

Private Sub FiltroCbo_Click() '9D44DC
  'Data Table: 4782C4
  loc_9D43E4: LitVarStr var_94, vbNullString
  loc_9D43E9: PopAdLdVar
  loc_9D43EA: FLdPr Me
  loc_9D43ED: VCallAd Control_ID_FiltroMsk
  loc_9D43F0: FStAdFunc var_A8
  loc_9D43F3: FLdPr var_A8
  loc_9D43F6: LateIdSt
  loc_9D43FB: FFree1Ad var_A8
  loc_9D43FE: FLdRfVar var_AA
  loc_9D4401: FLdPr Me
  loc_9D4404: VCallAd Control_ID_FiltroCbo
  loc_9D4407: FStAdFunc var_A8
  loc_9D440A: FLdPr var_A8
  loc_9D440D:  = Me.ListIndex
  loc_9D4412: FLdI2 var_AA
  loc_9D4415: FStI2 var_AC
  loc_9D4418: FFree1Ad var_A8
  loc_9D441B: FLdI2 var_AC
  loc_9D441E: LitI2_Byte 0
  loc_9D4420: EqI2
  loc_9D4421: BranchF loc_9D445B
  loc_9D4424: LitVarStr var_94, vbNullString
  loc_9D4429: PopAdLdVar
  loc_9D442A: FLdPr Me
  loc_9D442D: VCallAd Control_ID_FiltroMsk
  loc_9D4430: FStAdFunc var_A8
  loc_9D4433: FLdPr var_A8
  loc_9D4436: LateIdSt
  loc_9D443B: FFree1Ad var_A8
  loc_9D443E: LitStr "ExpeImpu"
  loc_9D4441: FStStrCopy var_B0
  loc_9D4444: FLdRfVar var_B0
  loc_9D4447: FLdPr Me
  loc_9D444A: MemLdRfVar from_stack_1.global_52
  loc_9D444D: NewIfNullPr clsimputacion
  loc_9D4450: Call clsimputacion.Sort(from_stack_1v)
  loc_9D4455: FFree1Str var_B0
  loc_9D4458: Branch loc_9D44D8
  loc_9D445B: FLdI2 var_AC
  loc_9D445E: LitI2_Byte 1
  loc_9D4460: EqI2
  loc_9D4461: BranchF loc_9D449B
  loc_9D4464: LitVarStr var_94, vbNullString
  loc_9D4469: PopAdLdVar
  loc_9D446A: FLdPr Me
  loc_9D446D: VCallAd Control_ID_FiltroMsk
  loc_9D4470: FStAdFunc var_A8
  loc_9D4473: FLdPr var_A8
  loc_9D4476: LateIdSt
  loc_9D447B: FFree1Ad var_A8
  loc_9D447E: LitStr "ExorImpu"
  loc_9D4481: FStStrCopy var_B0
  loc_9D4484: FLdRfVar var_B0
  loc_9D4487: FLdPr Me
  loc_9D448A: MemLdRfVar from_stack_1.global_52
  loc_9D448D: NewIfNullPr clsimputacion
  loc_9D4490: Call clsimputacion.Sort(from_stack_1v)
  loc_9D4495: FFree1Str var_B0
  loc_9D4498: Branch loc_9D44D8
  loc_9D449B: FLdI2 var_AC
  loc_9D449E: LitI2_Byte 2
  loc_9D44A0: EqI2
  loc_9D44A1: BranchF loc_9D44D8
  loc_9D44A4: LitVarStr var_94, vbNullString
  loc_9D44A9: PopAdLdVar
  loc_9D44AA: FLdPr Me
  loc_9D44AD: VCallAd Control_ID_FiltroMsk
  loc_9D44B0: FStAdFunc var_A8
  loc_9D44B3: FLdPr var_A8
  loc_9D44B6: LateIdSt
  loc_9D44BB: FFree1Ad var_A8
  loc_9D44BE: LitStr "DetaProv"
  loc_9D44C1: FStStrCopy var_B0
  loc_9D44C4: FLdRfVar var_B0
  loc_9D44C7: FLdPr Me
  loc_9D44CA: MemLdRfVar from_stack_1.global_52
  loc_9D44CD: NewIfNullPr clsimputacion
  loc_9D44D0: Call clsimputacion.Sort(from_stack_1v)
  loc_9D44D5: FFree1Str var_B0
  loc_9D44D8: ExitProcHresult
  loc_9D44D9: ImpAdStCy MemVar_5D4328
End Sub

Private Sub cmdCancelar_Click() '9FC308
  'Data Table: 4782C4
  loc_9FC1C4: LitI2_Byte 0
  loc_9FC1C6: CUI1I2
  loc_9FC1C8: FLdPr Me
  loc_9FC1CB: MemStUI1
  loc_9FC1CF: ILdRf Me
  loc_9FC1D2: CastAd
  loc_9FC1D5: FStAdFunc var_88
  loc_9FC1D8: FLdRfVar var_88
  loc_9FC1DB: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9FC1E0: FFree1Ad var_88
  loc_9FC1E3: LitI4 0
  loc_9FC1E8: LitI4 0
  loc_9FC1ED: FLdRfVar var_8C
  loc_9FC1F0: Redim
  loc_9FC1FA: FLdPr Me
  loc_9FC1FD: VCallAd Control_ID_dgdABMS
  loc_9FC200: CVarAd
  loc_9FC204: ParmAry1St
  loc_9FC20A: FLdRfVar var_8C
  loc_9FC20D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FC212: FLdRfVar var_8C
  loc_9FC215: Erase
  loc_9FC216: LitI4 0
  loc_9FC21B: LitI4 0
  loc_9FC220: FLdRfVar var_8C
  loc_9FC223: Redim
  loc_9FC22D: FLdPr Me
  loc_9FC230: VCallAd Control_ID_DevengadoFlex
  loc_9FC233: CVarAd
  loc_9FC237: ParmAry1St
  loc_9FC23D: FLdRfVar var_8C
  loc_9FC240: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9FC245: FLdRfVar var_8C
  loc_9FC248: Erase
  loc_9FC249: LitI2_Byte 0
  loc_9FC24B: LitVarI2 var_9C, 0
  loc_9FC250: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9FC255: FFree1Var var_9C = ""
  loc_9FC258: LitVarStr var_AC, vbNullString
  loc_9FC25D: PopAdLdVar
  loc_9FC25E: FLdPr Me
  loc_9FC261: VCallAd Control_ID_FechLiquMsk
  loc_9FC264: FStAdFunc var_88
  loc_9FC267: FLdPr var_88
  loc_9FC26A: LateIdSt
  loc_9FC26F: FFree1Ad var_88
  loc_9FC272: LitStr vbNullString
  loc_9FC275: FLdPr Me
  loc_9FC278: VCallAd Control_ID_DetaLiquTxt
  loc_9FC27B: FStAdFunc var_88
  loc_9FC27E: FLdPr var_88
  loc_9FC281: Me.Text = from_stack_1
  loc_9FC286: FFree1Ad var_88
  loc_9FC289: LitI2_Byte 0
  loc_9FC28B: FLdPr Me
  loc_9FC28E: VCallAd Control_ID_SeleTodoChk
  loc_9FC291: FStAdFunc var_88
  loc_9FC294: FLdPr var_88
  loc_9FC297: Me.Value = from_stack_1
  loc_9FC29C: FFree1Ad var_88
  loc_9FC29F: ILdRf Me
  loc_9FC2A2: CastAd
  loc_9FC2A5: FStAdFunc var_88
  loc_9FC2A8: FLdRfVar var_88
  loc_9FC2AB: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9FC2B0: FFree1Ad var_88
  loc_9FC2B3: LitI2_Byte 0
  loc_9FC2B5: CUI1I2
  loc_9FC2B7: FLdPr Me
  loc_9FC2BA: MemStUI1
  loc_9FC2BE: FLdPr Me
  loc_9FC2C1: VCallAd Control_ID_dgdABMS
  loc_9FC2C4: FStAdFunc var_C4
  loc_9FC2C7: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_9FC2CA: FStStrCopy var_C0
  loc_9FC2CD: FLdRfVar var_C0
  loc_9FC2D0: FLdPr Me
  loc_9FC2D3: MemLdStr global_72
  loc_9FC2D6: FLdZeroAd var_C4
  loc_9FC2D9: FStAdFunc var_88
  loc_9FC2DC: FLdRfVar var_88
  loc_9FC2DF: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9FC2E4: FFree1Str var_C0
  loc_9FC2E7: FFreeAd var_88 = ""
  loc_9FC2EE: LitVar_FALSE
  loc_9FC2F2: PopAdLdVar
  loc_9FC2F3: FLdPr Me
  loc_9FC2F6: VCallAd Control_ID_ProgressBar
  loc_9FC2F9: FStAdFunc var_88
  loc_9FC2FC: FLdPr var_88
  loc_9FC2FF: LateIdSt
  loc_9FC304: FFree1Ad var_88
  loc_9FC307: ExitProcHresult
End Sub

Private Sub Form_Load() 'AF9688
  'Data Table: 4782C4
  loc_AF8F88: ImpAdLdI2 MemVar_C3D064
  loc_AF8F8B: LitI2 2025
  loc_AF8F8E: LeI2
  loc_AF8F8F: BranchF loc_AF8FAF
  loc_AF8F92: LitVarI4
  loc_AF8F9A: PopAdLdVar
  loc_AF8F9B: FLdPr Me
  loc_AF8F9E: VCallAd Control_ID_dgdABMS
  loc_AF8FA1: FStAdFunc var_A8
  loc_AF8FA4: FLdPr var_A8
  loc_AF8FA7: LateIdSt
  loc_AF8FAC: FFree1Ad var_A8
  loc_AF8FAF: LitI2_Byte 0
  loc_AF8FB1: CR8I2
  loc_AF8FB2: PopFPR4
  loc_AF8FB3: FLdPr Me
  loc_AF8FB6: Me.Left = from_stack_1s
  loc_AF8FBB: LitI2_Byte 0
  loc_AF8FBD: CR8I2
  loc_AF8FBE: PopFPR4
  loc_AF8FBF: FLdPr Me
  loc_AF8FC2: Me.Top = from_stack_1s
  loc_AF8FC7: FLdPr Me
  loc_AF8FCA: VCallAd Control_ID_DevengadoFlex
  loc_AF8FCD: FStAdFunc var_AC
  loc_AF8FD0: LitVarI4
  loc_AF8FD8: PopAdLdVar
  loc_AF8FD9: LitVarI4
  loc_AF8FE1: PopAdLdVar
  loc_AF8FE2: FLdPr var_AC
  loc_AF8FE5: LateIdCallSt
  loc_AF8FED: LitVarI4
  loc_AF8FF5: PopAdLdVar
  loc_AF8FF6: LitVarI4
  loc_AF8FFE: PopAdLdVar
  loc_AF8FFF: FLdPr var_AC
  loc_AF9002: LateIdCallSt
  loc_AF900A: LitVarI4
  loc_AF9012: PopAdLdVar
  loc_AF9013: LitVarI4
  loc_AF901B: PopAdLdVar
  loc_AF901C: FLdPr var_AC
  loc_AF901F: LateIdCallSt
  loc_AF9027: LitVarI4
  loc_AF902F: PopAdLdVar
  loc_AF9030: LitVarI4
  loc_AF9038: PopAdLdVar
  loc_AF9039: FLdPr var_AC
  loc_AF903C: LateIdCallSt
  loc_AF9044: LitVarI4
  loc_AF904C: PopAdLdVar
  loc_AF904D: LitVarI4
  loc_AF9055: PopAdLdVar
  loc_AF9056: FLdPr var_AC
  loc_AF9059: LateIdCallSt
  loc_AF9061: LitVarI4
  loc_AF9069: PopAdLdVar
  loc_AF906A: LitVarI4
  loc_AF9072: PopAdLdVar
  loc_AF9073: FLdPr var_AC
  loc_AF9076: LateIdCallSt
  loc_AF907E: LitVarI4
  loc_AF9086: PopAdLdVar
  loc_AF9087: LitVarI4
  loc_AF908F: PopAdLdVar
  loc_AF9090: FLdPr var_AC
  loc_AF9093: LateIdCallSt
  loc_AF909B: LitVarI4
  loc_AF90A3: PopAdLdVar
  loc_AF90A4: LitVarI4
  loc_AF90AC: PopAdLdVar
  loc_AF90AD: FLdPr var_AC
  loc_AF90B0: LateIdCallSt
  loc_AF90B8: LitVarI4
  loc_AF90C0: PopAdLdVar
  loc_AF90C1: LitVarI4
  loc_AF90C9: PopAdLdVar
  loc_AF90CA: FLdPr var_AC
  loc_AF90CD: LateIdCallSt
  loc_AF90D5: LitVarI4
  loc_AF90DD: PopAdLdVar
  loc_AF90DE: LitVarI4
  loc_AF90E6: PopAdLdVar
  loc_AF90E7: FLdPr var_AC
  loc_AF90EA: LateIdCallSt
  loc_AF90F2: LitVarI4
  loc_AF90FA: PopAdLdVar
  loc_AF90FB: LitVarI4
  loc_AF9103: PopAdLdVar
  loc_AF9104: FLdPr var_AC
  loc_AF9107: LateIdCallSt
  loc_AF910F: LitNothing
  loc_AF9111: FStAd var_AC 
  loc_AF9115: Call Proc_120_24_A1F490()
  loc_AF911A: LitStr "Municipalidad de Guaymallén"
  loc_AF911D: LitStr "Municipalidad de Guaymallén"
  loc_AF9120: EqStr
  loc_AF9122: BranchF loc_AF9167
  loc_AF9125: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF9128: LitStr " FROM infogov.cuentacontable cc"
  loc_AF912B: ConcatStr
  loc_AF912C: FStStrNoPop var_D0
  loc_AF912F: LitStr " WHERE cc.PeriInfo = "
  loc_AF9132: ConcatStr
  loc_AF9133: FStStrNoPop var_D4
  loc_AF9136: ImpAdLdI2 MemVar_C3D064
  loc_AF9139: CStrUI1
  loc_AF913B: FStStrNoPop var_D8
  loc_AF913E: ConcatStr
  loc_AF913F: FStStrNoPop var_DC
  loc_AF9142: LitStr " AND cc.ImpuCuco = 1 AND (cc.CodiTicu IN ('1120','1154','1155') OR cc.CodiCuco IN ('8101010000','8101020000','8102040000') );"
  loc_AF9145: ConcatStr
  loc_AF9146: FStStrNoPop var_E0
  loc_AF9149: FLdPr Me
  loc_AF914C: MemLdRfVar from_stack_1.global_52
  loc_AF914F: NewIfNullPr clsimputacion
  loc_AF9152: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF9157: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF9164: Branch loc_AF93C1
  loc_AF9167: LitStr "Municipalidad de Guaymallén"
  loc_AF916A: LitStr "Municipalidad de La Paz"
  loc_AF916D: EqStr
  loc_AF916F: BranchF loc_AF91B4
  loc_AF9172: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF9175: LitStr " FROM infogov.cuentacontable cc"
  loc_AF9178: ConcatStr
  loc_AF9179: FStStrNoPop var_D0
  loc_AF917C: LitStr " WHERE cc.PeriInfo = "
  loc_AF917F: ConcatStr
  loc_AF9180: FStStrNoPop var_D4
  loc_AF9183: ImpAdLdI2 MemVar_C3D064
  loc_AF9186: CStrUI1
  loc_AF9188: FStStrNoPop var_D8
  loc_AF918B: ConcatStr
  loc_AF918C: FStStrNoPop var_DC
  loc_AF918F: LitStr " AND cc.ImpuCuco = 1 AND (cc.CodiTicu IN ('1120','2113','2116','2117','2120') OR cc.CodiCuco IN ('1171000000','1172010000') );"
  loc_AF9192: ConcatStr
  loc_AF9193: FStStrNoPop var_E0
  loc_AF9196: FLdPr Me
  loc_AF9199: MemLdRfVar from_stack_1.global_52
  loc_AF919C: NewIfNullPr clsimputacion
  loc_AF919F: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF91A4: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF91B1: Branch loc_AF93C1
  loc_AF91B4: LitStr "Municipalidad de Guaymallén"
  loc_AF91B7: LitStr "Municipalidad de Tunuyán"
  loc_AF91BA: EqStr
  loc_AF91BC: BranchF loc_AF9201
  loc_AF91BF: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF91C2: LitStr " FROM infogov.cuentacontable cc"
  loc_AF91C5: ConcatStr
  loc_AF91C6: FStStrNoPop var_D0
  loc_AF91C9: LitStr " WHERE cc.PeriInfo = "
  loc_AF91CC: ConcatStr
  loc_AF91CD: FStStrNoPop var_D4
  loc_AF91D0: ImpAdLdI2 MemVar_C3D064
  loc_AF91D3: CStrUI1
  loc_AF91D5: FStStrNoPop var_D8
  loc_AF91D8: ConcatStr
  loc_AF91D9: FStStrNoPop var_DC
  loc_AF91DC: LitStr " AND cc.ImpuCuco = 1 AND (cc.CodiTicu IN ('1120','2113','2115') OR cc.CodiCuco = '11502020000');"
  loc_AF91DF: ConcatStr
  loc_AF91E0: FStStrNoPop var_E0
  loc_AF91E3: FLdPr Me
  loc_AF91E6: MemLdRfVar from_stack_1.global_52
  loc_AF91E9: NewIfNullPr clsimputacion
  loc_AF91EC: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF91F1: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF91FE: Branch loc_AF93C1
  loc_AF9201: LitStr "Municipalidad de Guaymallén"
  loc_AF9204: LitStr "Municipalidad de Tupungato"
  loc_AF9207: EqStr
  loc_AF9209: BranchF loc_AF924E
  loc_AF920C: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF920F: LitStr " FROM infogov.cuentacontable cc"
  loc_AF9212: ConcatStr
  loc_AF9213: FStStrNoPop var_D0
  loc_AF9216: LitStr " WHERE cc.PeriInfo = "
  loc_AF9219: ConcatStr
  loc_AF921A: FStStrNoPop var_D4
  loc_AF921D: ImpAdLdI2 MemVar_C3D064
  loc_AF9220: CStrUI1
  loc_AF9222: FStStrNoPop var_D8
  loc_AF9225: ConcatStr
  loc_AF9226: FStStrNoPop var_DC
  loc_AF9229: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','1155','2114');"
  loc_AF922C: ConcatStr
  loc_AF922D: FStStrNoPop var_E0
  loc_AF9230: FLdPr Me
  loc_AF9233: MemLdRfVar from_stack_1.global_52
  loc_AF9236: NewIfNullPr clsimputacion
  loc_AF9239: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF923E: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF924B: Branch loc_AF93C1
  loc_AF924E: LitStr "Municipalidad de Guaymallén"
  loc_AF9251: LitStr "Municipalidad de Santa Rosa"
  loc_AF9254: EqStr
  loc_AF9256: BranchF loc_AF929B
  loc_AF9259: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF925C: LitStr " FROM infogov.cuentacontable cc"
  loc_AF925F: ConcatStr
  loc_AF9260: FStStrNoPop var_D0
  loc_AF9263: LitStr " WHERE cc.PeriInfo = "
  loc_AF9266: ConcatStr
  loc_AF9267: FStStrNoPop var_D4
  loc_AF926A: ImpAdLdI2 MemVar_C3D064
  loc_AF926D: CStrUI1
  loc_AF926F: FStStrNoPop var_D8
  loc_AF9272: ConcatStr
  loc_AF9273: FStStrNoPop var_DC
  loc_AF9276: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','2113','2210');"
  loc_AF9279: ConcatStr
  loc_AF927A: FStStrNoPop var_E0
  loc_AF927D: FLdPr Me
  loc_AF9280: MemLdRfVar from_stack_1.global_52
  loc_AF9283: NewIfNullPr clsimputacion
  loc_AF9286: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF928B: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF9298: Branch loc_AF93C1
  loc_AF929B: LitStr "Municipalidad de Guaymallén"
  loc_AF929E: LitStr "Municipalidad de Lavalle"
  loc_AF92A1: EqStr
  loc_AF92A3: BranchF loc_AF92E8
  loc_AF92A6: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF92A9: LitStr " FROM infogov.cuentacontable cc"
  loc_AF92AC: ConcatStr
  loc_AF92AD: FStStrNoPop var_D0
  loc_AF92B0: LitStr " WHERE cc.PeriInfo = "
  loc_AF92B3: ConcatStr
  loc_AF92B4: FStStrNoPop var_D4
  loc_AF92B7: ImpAdLdI2 MemVar_C3D064
  loc_AF92BA: CStrUI1
  loc_AF92BC: FStStrNoPop var_D8
  loc_AF92BF: ConcatStr
  loc_AF92C0: FStStrNoPop var_DC
  loc_AF92C3: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','2117','2123');"
  loc_AF92C6: ConcatStr
  loc_AF92C7: FStStrNoPop var_E0
  loc_AF92CA: FLdPr Me
  loc_AF92CD: MemLdRfVar from_stack_1.global_52
  loc_AF92D0: NewIfNullPr clsimputacion
  loc_AF92D3: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF92D8: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF92E5: Branch loc_AF93C1
  loc_AF92E8: LitStr "Municipalidad de Guaymallén"
  loc_AF92EB: LitStr "Municipalidad de General Alvear"
  loc_AF92EE: EqStr
  loc_AF92F0: BranchF loc_AF9335
  loc_AF92F3: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF92F6: LitStr " FROM infogov.cuentacontable cc"
  loc_AF92F9: ConcatStr
  loc_AF92FA: FStStrNoPop var_D0
  loc_AF92FD: LitStr " WHERE cc.PeriInfo = "
  loc_AF9300: ConcatStr
  loc_AF9301: FStStrNoPop var_D4
  loc_AF9304: ImpAdLdI2 MemVar_C3D064
  loc_AF9307: CStrUI1
  loc_AF9309: FStStrNoPop var_D8
  loc_AF930C: ConcatStr
  loc_AF930D: FStStrNoPop var_DC
  loc_AF9310: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','1160','2113');"
  loc_AF9313: ConcatStr
  loc_AF9314: FStStrNoPop var_E0
  loc_AF9317: FLdPr Me
  loc_AF931A: MemLdRfVar from_stack_1.global_52
  loc_AF931D: NewIfNullPr clsimputacion
  loc_AF9320: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF9325: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF9332: Branch loc_AF93C1
  loc_AF9335: LitStr "Municipalidad de Guaymallén"
  loc_AF9338: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_AF933B: EqStr
  loc_AF933D: BranchF loc_AF9382
  loc_AF9340: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF9343: LitStr " FROM infogov.cuentacontable cc"
  loc_AF9346: ConcatStr
  loc_AF9347: FStStrNoPop var_D0
  loc_AF934A: LitStr " WHERE cc.PeriInfo = "
  loc_AF934D: ConcatStr
  loc_AF934E: FStStrNoPop var_D4
  loc_AF9351: ImpAdLdI2 MemVar_C3D064
  loc_AF9354: CStrUI1
  loc_AF9356: FStStrNoPop var_D8
  loc_AF9359: ConcatStr
  loc_AF935A: FStStrNoPop var_DC
  loc_AF935D: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','1150','2113');"
  loc_AF9360: ConcatStr
  loc_AF9361: FStStrNoPop var_E0
  loc_AF9364: FLdPr Me
  loc_AF9367: MemLdRfVar from_stack_1.global_52
  loc_AF936A: NewIfNullPr clsimputacion
  loc_AF936D: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF9372: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF937F: Branch loc_AF93C1
  loc_AF9382: LitStr "SELECT CodiCuco, DetaCuco"
  loc_AF9385: LitStr " FROM infogov.cuentacontable cc"
  loc_AF9388: ConcatStr
  loc_AF9389: FStStrNoPop var_D0
  loc_AF938C: LitStr " WHERE cc.PeriInfo = "
  loc_AF938F: ConcatStr
  loc_AF9390: FStStrNoPop var_D4
  loc_AF9393: ImpAdLdI2 MemVar_C3D064
  loc_AF9396: CStrUI1
  loc_AF9398: FStStrNoPop var_D8
  loc_AF939B: ConcatStr
  loc_AF939C: FStStrNoPop var_DC
  loc_AF939F: LitStr " AND cc.ImpuCuco = 1 AND cc.CodiTicu IN ('1120','2113');"
  loc_AF93A2: ConcatStr
  loc_AF93A3: FStStrNoPop var_E0
  loc_AF93A6: FLdPr Me
  loc_AF93A9: MemLdRfVar from_stack_1.global_52
  loc_AF93AC: NewIfNullPr clsimputacion
  loc_AF93AF: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF93B4: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF93C1: FLdRfVar var_E4
  loc_AF93C4: FLdPr Me
  loc_AF93C7: MemLdRfVar from_stack_1.global_52
  loc_AF93CA: NewIfNullPr clsimputacion
  loc_AF93CD: from_stack_1 = clsimputacion.RecordCount
  loc_AF93D2: ILdRf var_E4
  loc_AF93D5: LitI4 0
  loc_AF93DA: GtI4
  loc_AF93DB: BranchF loc_AF94D8
  loc_AF93DE: FLdRfVar var_E6
  loc_AF93E1: FLdPr Me
  loc_AF93E4: MemLdRfVar from_stack_1.global_52
  loc_AF93E7: NewIfNullPr clsimputacion
  loc_AF93EA: from_stack_1 = clsimputacion.EOF
  loc_AF93EF: FLdI2 var_E6
  loc_AF93F2: NotI4
  loc_AF93F3: BranchF loc_AF94C2
  loc_AF93F6: LitVar_Missing var_CC
  loc_AF93F9: PopAdLdVar
  loc_AF93FA: FLdRfVar var_100
  loc_AF93FD: FLdRfVar var_F0
  loc_AF9400: LitVarStr var_94, "CodiCuco"
  loc_AF9405: PopAdLdVar
  loc_AF9406: FLdRfVar var_EC
  loc_AF9409: FLdRfVar var_A8
  loc_AF940C: FLdPr Me
  loc_AF940F: MemLdRfVar from_stack_1.global_52
  loc_AF9412: NewIfNullPr clsimputacion
  loc_AF9415: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF941A: FLdPr var_A8
  loc_AF941D:  = Me.Fields
  loc_AF9422: FLdPr var_EC
  loc_AF9425: from_stack_2 = Me.Item(from_stack_1)
  loc_AF942A: FLdPr var_F0
  loc_AF942D:  = Me.Value
  loc_AF9432: FLdRfVar var_100
  loc_AF9435: LitVarStr var_A4, " - "
  loc_AF943A: ConcatVar var_110
  loc_AF943E: FLdRfVar var_12C
  loc_AF9441: FLdRfVar var_11C
  loc_AF9444: LitVarStr var_BC, "DetaCuco"
  loc_AF9449: PopAdLdVar
  loc_AF944A: FLdRfVar var_118
  loc_AF944D: FLdRfVar var_114
  loc_AF9450: FLdPr Me
  loc_AF9453: MemLdRfVar from_stack_1.global_52
  loc_AF9456: NewIfNullPr clsimputacion
  loc_AF9459: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF945E: FLdPr var_114
  loc_AF9461:  = Me.Fields
  loc_AF9466: FLdPr var_118
  loc_AF9469: from_stack_2 = Me.Item(from_stack_1)
  loc_AF946E: FLdPr var_11C
  loc_AF9471:  = Me.Value
  loc_AF9476: FLdRfVar var_12C
  loc_AF9479: ConcatVar var_13C
  loc_AF947D: CStrVarVal var_D0
  loc_AF9481: FLdPr Me
  loc_AF9484: VCallAd Control_ID_cboCuentaContable
  loc_AF9487: FStAdFunc var_140
  loc_AF948A: FLdPr var_140
  loc_AF948D: Me.AddItem from_stack_1, from_stack_2
  loc_AF9492: FFree1Str var_D0
  loc_AF9495: FFreeAd var_A8 = "": var_EC = "": var_F0 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_AF94A6: FFreeVar var_100 = "": var_110 = "": var_12C = ""
  loc_AF94B1: FLdPr Me
  loc_AF94B4: MemLdRfVar from_stack_1.global_52
  loc_AF94B7: NewIfNullPr clsimputacion
  loc_AF94BA: Call clsimputacion.MoveSiguiente()
  loc_AF94BF: Branch loc_AF93DE
  loc_AF94C2: LitI2_Byte 0
  loc_AF94C4: FLdPr Me
  loc_AF94C7: VCallAd Control_ID_cboCuentaContable
  loc_AF94CA: FStAdFunc var_A8
  loc_AF94CD: FLdPr var_A8
  loc_AF94D0: Me.ListIndex = from_stack_1
  loc_AF94D5: FFree1Ad var_A8
  loc_AF94D8: LitStr "SELECT 'Devengado' Tipo, i.PeriInfo, i.ExpeImpu, i.ExorImpu, i.CucuPers, DetaProv, Sum(DeveImpu-LiquImpu) SaldDeve"
  loc_AF94DB: LitStr " FROM imputacion i"
  loc_AF94DE: ConcatStr
  loc_AF94DF: FStStrNoPop var_D0
  loc_AF94E2: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_AF94E5: ConcatStr
  loc_AF94E6: FStStrNoPop var_D4
  loc_AF94E9: LitStr " WHERE i.PeriInfo = "
  loc_AF94EC: ConcatStr
  loc_AF94ED: FStStrNoPop var_D8
  loc_AF94F0: ImpAdLdI2 MemVar_C3D064
  loc_AF94F3: CStrUI1
  loc_AF94F5: FStStrNoPop var_DC
  loc_AF94F8: ConcatStr
  loc_AF94F9: FStStrNoPop var_E0
  loc_AF94FC: LitStr " AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_AF94FF: ConcatStr
  loc_AF9500: FStStrNoPop var_144
  loc_AF9503: LitStr " GROUP BY ExpeImpu, ExorImpu, CucuPers"
  loc_AF9506: ConcatStr
  loc_AF9507: FStStrNoPop var_148
  loc_AF950A: LitStr " HAVING SaldDeve > 0 "
  loc_AF950D: ConcatStr
  loc_AF950E: FStStrNoPop var_14C
  loc_AF9511: LitStr " UNION ALL"
  loc_AF9514: ConcatStr
  loc_AF9515: FStStrNoPop var_150
  loc_AF9518: LitStr " SELECT 'Debito' Tipo, d.PeriInfo, d.ExpeImpu, d.ExorImpu, d.CucuPers, DetaProv"
  loc_AF951B: ConcatStr
  loc_AF951C: FStStrNoPop var_154
  loc_AF951F: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo"
  loc_AF9522: ConcatStr
  loc_AF9523: FStStrNoPop var_158
  loc_AF9526: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_AF9529: ConcatStr
  loc_AF952A: FStStrNoPop var_15C
  loc_AF952D: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_AF9530: ConcatStr
  loc_AF9531: FStStrNoPop var_160
  loc_AF9534: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi"
  loc_AF9537: ConcatStr
  loc_AF9538: FStStrNoPop var_164
  loc_AF953B: LitStr " AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_AF953E: ConcatStr
  loc_AF953F: FStStrNoPop var_168
  loc_AF9542: LitStr " AND FeanLide IS NULL"
  loc_AF9545: ConcatStr
  loc_AF9546: FStStrNoPop var_16C
  loc_AF9549: LitStr " WHERE d.PeriInfo = "
  loc_AF954C: ConcatStr
  loc_AF954D: FStStrNoPop var_170
  loc_AF9550: ImpAdLdI2 MemVar_C3D064
  loc_AF9553: CStrUI1
  loc_AF9555: FStStrNoPop var_174
  loc_AF9558: ConcatStr
  loc_AF9559: FStStrNoPop var_178
  loc_AF955C: LitStr " AND FeanDebi Is Null"
  loc_AF955F: ConcatStr
  loc_AF9560: FStStrNoPop var_17C
  loc_AF9563: LitStr " GROUP BY d.NumeDebi /* ExpeImpu, ExorImpu, CucuPers */"
  loc_AF9566: ConcatStr
  loc_AF9567: FStStrNoPop var_180
  loc_AF956A: LitStr " HAVING saldo > 0"
  loc_AF956D: ConcatStr
  loc_AF956E: FStStrNoPop var_184
  loc_AF9571: LitStr " ORDER BY Tipo, ExpeImpu, ExorImpu, DetaProv;"
  loc_AF9574: ConcatStr
  loc_AF9575: FStStrNoPop var_188
  loc_AF9578: FLdPr Me
  loc_AF957B: MemLdRfVar from_stack_1.global_52
  loc_AF957E: NewIfNullPr clsimputacion
  loc_AF9581: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF9586: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_AF95B7: LitVarI2 var_94, 0
  loc_AF95BC: PopAdLdVar
  loc_AF95BD: LitStr "Expediente de Pago"
  loc_AF95C0: FLdPr Me
  loc_AF95C3: VCallAd Control_ID_FiltroCbo
  loc_AF95C6: FStAdFunc var_A8
  loc_AF95C9: FLdPr var_A8
  loc_AF95CC: Me.AddItem from_stack_1, from_stack_2
  loc_AF95D1: FFree1Ad var_A8
  loc_AF95D4: LitVarI2 var_94, 1
  loc_AF95D9: PopAdLdVar
  loc_AF95DA: LitStr "Expediente Original"
  loc_AF95DD: FLdPr Me
  loc_AF95E0: VCallAd Control_ID_FiltroCbo
  loc_AF95E3: FStAdFunc var_A8
  loc_AF95E6: FLdPr var_A8
  loc_AF95E9: Me.AddItem from_stack_1, from_stack_2
  loc_AF95EE: FFree1Ad var_A8
  loc_AF95F1: LitVarI2 var_94, 2
  loc_AF95F6: PopAdLdVar
  loc_AF95F7: LitStr "Proveedor (Nombre)"
  loc_AF95FA: FLdPr Me
  loc_AF95FD: VCallAd Control_ID_FiltroCbo
  loc_AF9600: FStAdFunc var_A8
  loc_AF9603: FLdPr var_A8
  loc_AF9606: Me.AddItem from_stack_1, from_stack_2
  loc_AF960B: FFree1Ad var_A8
  loc_AF960E: LitI2_Byte 0
  loc_AF9610: FLdPr Me
  loc_AF9613: VCallAd Control_ID_FiltroCbo
  loc_AF9616: FStAdFunc var_A8
  loc_AF9619: FLdPr var_A8
  loc_AF961C: Me.ListIndex = from_stack_1
  loc_AF9621: FFree1Ad var_A8
  loc_AF9624: Call cmdCancelar_Click()
  loc_AF9629: LitI4 0
  loc_AF962E: LitI4 1
  loc_AF9633: FLdRfVar var_18C
  loc_AF9636: Redim
  loc_AF9640: FLdPr Me
  loc_AF9643: MemLdRfVar from_stack_1.global_52
  loc_AF9646: NewIfNullAd
  loc_AF9649: FStAd var_A8 
  loc_AF964D: FLdRfVar var_A8
  loc_AF9650: CVarRef
  loc_AF9655: ParmAry1St
  loc_AF965B: FLdPr Me
  loc_AF965E: VCallAd Control_ID_dgdABMS
  loc_AF9661: CVarAd
  loc_AF9665: ParmAry1St
  loc_AF966B: FLdRfVar var_18C
  loc_AF966E: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AF9673: ILdRf var_A8
  loc_AF9676: CastAd
  loc_AF9679: FLdPr Me
  loc_AF967C: MemStAdFunc
  loc_AF9680: FLdRfVar var_18C
  loc_AF9683: Erase
  loc_AF9684: FFree1Ad var_A8
  loc_AF9687: ExitProcHresult
End Sub

Private Sub Form_Activate() '9976BC
  'Data Table: 4782C4
  loc_997660: FLdRfVar var_C2
  loc_997663: FLdRfVar var_C0
  loc_997666: LitVarI2 var_B8, 1
  loc_99766B: FLdPr Me
  loc_99766E: VCallAd Control_ID_tlbABMS
  loc_997671: FStAdFunc var_88
  loc_997674: FLdPr var_88
  loc_997677: LateIdLdVar var_98 DispID_3 0
  loc_99767E: CastAdVar Me
  loc_997682: FStAdFunc var_BC
  loc_997685: FLdPr var_BC
  loc_997688:  = Me.Buttons.ControlDefault
  loc_99768D: FLdPr var_C0
  loc_997690:  = Me.Enabled
  loc_997695: FLdI2 var_C2
  loc_997698: FFreeAd var_88 = "": var_BC = ""
  loc_9976A1: FFreeVar var_98 = ""
  loc_9976A8: BranchF loc_9976B9
  loc_9976AB: FLdPr Me
  loc_9976AE: MemLdRfVar from_stack_1.global_52
  loc_9976B1: NewIfNullPr clsimputacion
  loc_9976B4: Call clsimputacion.Requery()
  loc_9976B9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '940370
  'Data Table: 4782C4
  loc_94036C: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95C85C
  'Data Table: 4782C4
  loc_95C844: ILdI2 KeyCode
  loc_95C847: ILdRf Me
  loc_95C84A: CastAd
  loc_95C84D: FStAdFunc var_88
  loc_95C850: FLdRfVar var_88
  loc_95C853: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95C858: FFree1Ad var_88
  loc_95C85B: ExitProcHresult
End Sub

Private Function Proc_120_24_A1F490() 'A1F490
  'Data Table: 4782C4
  loc_A1F2D8: FLdPr Me
  loc_A1F2DB: VCallAd Control_ID_DevengadoFlex
  loc_A1F2DE: FStAdFunc var_88
  loc_A1F2E1: FLdPr var_88
  loc_A1F2E4: LateIdCall
  loc_A1F2EC: LitVarI4
  loc_A1F2F4: PopAdLdVar
  loc_A1F2F5: FLdPr var_88
  loc_A1F2F8: LateIdSt
  loc_A1F2FD: LitVarI4
  loc_A1F305: PopAdLdVar
  loc_A1F306: LitVarI4
  loc_A1F30E: PopAdLdVar
  loc_A1F30F: LitVarStr var_D8, "Periodo"
  loc_A1F314: PopAdLdVar
  loc_A1F315: FLdPr var_88
  loc_A1F318: LateIdCallSt
  loc_A1F320: LitVarI4
  loc_A1F328: PopAdLdVar
  loc_A1F329: LitVarI4
  loc_A1F331: PopAdLdVar
  loc_A1F332: LitVarStr var_D8, "Partida"
  loc_A1F337: PopAdLdVar
  loc_A1F338: FLdPr var_88
  loc_A1F33B: LateIdCallSt
  loc_A1F343: LitVarI4
  loc_A1F34B: PopAdLdVar
  loc_A1F34C: LitVarI4
  loc_A1F354: PopAdLdVar
  loc_A1F355: LitVarStr var_D8, "Organigrama"
  loc_A1F35A: PopAdLdVar
  loc_A1F35B: FLdPr var_88
  loc_A1F35E: LateIdCallSt
  loc_A1F366: LitVarI4
  loc_A1F36E: PopAdLdVar
  loc_A1F36F: LitVarI4
  loc_A1F377: PopAdLdVar
  loc_A1F378: LitVarStr var_D8, "Imput."
  loc_A1F37D: PopAdLdVar
  loc_A1F37E: FLdPr var_88
  loc_A1F381: LateIdCallSt
  loc_A1F389: LitVarI4
  loc_A1F391: PopAdLdVar
  loc_A1F392: LitVarI4
  loc_A1F39A: PopAdLdVar
  loc_A1F39B: LitVarStr var_D8, "Nro. de Factura"
  loc_A1F3A0: PopAdLdVar
  loc_A1F3A1: FLdPr var_88
  loc_A1F3A4: LateIdCallSt
  loc_A1F3AC: LitVarI4
  loc_A1F3B4: PopAdLdVar
  loc_A1F3B5: LitVarI4
  loc_A1F3BD: PopAdLdVar
  loc_A1F3BE: LitVarStr var_D8, "CUIT/CUIL"
  loc_A1F3C3: PopAdLdVar
  loc_A1F3C4: FLdPr var_88
  loc_A1F3C7: LateIdCallSt
  loc_A1F3CF: LitVarI4
  loc_A1F3D7: PopAdLdVar
  loc_A1F3D8: LitVarI4
  loc_A1F3E0: PopAdLdVar
  loc_A1F3E1: LitVarStr var_D8, "Proveedor"
  loc_A1F3E6: PopAdLdVar
  loc_A1F3E7: FLdPr var_88
  loc_A1F3EA: LateIdCallSt
  loc_A1F3F2: LitVarI4
  loc_A1F3FA: PopAdLdVar
  loc_A1F3FB: LitVarI4
  loc_A1F403: PopAdLdVar
  loc_A1F404: LitVarStr var_D8, "Detalle"
  loc_A1F409: PopAdLdVar
  loc_A1F40A: FLdPr var_88
  loc_A1F40D: LateIdCallSt
  loc_A1F415: LitVarI4
  loc_A1F41D: PopAdLdVar
  loc_A1F41E: LitVarI4
  loc_A1F426: PopAdLdVar
  loc_A1F427: LitVarStr var_D8, "Importe"
  loc_A1F42C: PopAdLdVar
  loc_A1F42D: FLdPr var_88
  loc_A1F430: LateIdCallSt
  loc_A1F438: LitVarI4
  loc_A1F440: PopAdLdVar
  loc_A1F441: LitVarI4
  loc_A1F449: PopAdLdVar
  loc_A1F44A: LitVarStr var_D8, "Sel"
  loc_A1F44F: PopAdLdVar
  loc_A1F450: FLdPr var_88
  loc_A1F453: LateIdCallSt
  loc_A1F45B: LitVarI4
  loc_A1F463: PopAdLdVar
  loc_A1F464: LitVarI4
  loc_A1F46C: PopAdLdVar
  loc_A1F46D: LitVarStr var_D8, "Imp. Ini"
  loc_A1F472: PopAdLdVar
  loc_A1F473: FLdPr var_88
  loc_A1F476: LateIdCallSt
  loc_A1F47E: FLdPr var_88
  loc_A1F481: LateIdCall
  loc_A1F489: LitNothing
  loc_A1F48B: FStAd var_88 
  loc_A1F48F: ExitProcHresult
End Function

Private Function Proc_120_25_9E7AD4() '9E7AD4
  'Data Table: 4782C4
  loc_9E79B8: FLdPr Me
  loc_9E79BB: MemLdStr global_76
  loc_9E79BE: LitStr vbNullString
  loc_9E79C1: EqStr
  loc_9E79C3: BranchF loc_9E7A3B
  loc_9E79C6: FLdPr Me
  loc_9E79C9: VCallAd Control_ID_DevengadoFlex
  loc_9E79CC: FStAdFunc var_8C
  loc_9E79CF: FLdPr var_8C
  loc_9E79D2: LateIdLdVar var_9C DispID_10 0
  loc_9E79D9: CI4Var
  loc_9E79DB: CVarI4
  loc_9E79DF: PopAdLdVar
  loc_9E79E0: LitVarI4
  loc_9E79E8: PopAdLdVar
  loc_9E79E9: FLdPr Me
  loc_9E79EC: VCallAd Control_ID_DevengadoFlex
  loc_9E79EF: FStAdFunc var_E0
  loc_9E79F2: FLdPr var_E0
  loc_9E79F5: LateIdCallLdVar
  loc_9E79FF: PopAd
  loc_9E7A01: FLdRfVar var_F8
  loc_9E7A04: FLdRfVar var_F0
  loc_9E7A07: CStrVarTmp
  loc_9E7A08: FStStrNoPop var_F4
  loc_9E7A0B: ImpAdLdI2 MemVar_C3D064
  loc_9E7A0E: FLdPr Me
  loc_9E7A11: MemLdRfVar from_stack_1.global_52
  loc_9E7A14: NewIfNullPr clsimputacion
  loc_9E7A17: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_9E7A1C: ILdRf var_F8
  loc_9E7A1F: FLdPr Me
  loc_9E7A22: MemStStrCopy
  loc_9E7A26: FFreeStr var_F4 = ""
  loc_9E7A2D: FFreeAd var_8C = ""
  loc_9E7A34: FFreeVar var_9C = ""
  loc_9E7A3B: FLdPr Me
  loc_9E7A3E: VCallAd Control_ID_DevengadoFlex
  loc_9E7A41: FStAdFunc var_8C
  loc_9E7A44: FLdPr var_8C
  loc_9E7A47: LateIdLdVar var_9C DispID_10 0
  loc_9E7A4E: CI4Var
  loc_9E7A50: CVarI4
  loc_9E7A54: PopAdLdVar
  loc_9E7A55: LitVarI4
  loc_9E7A5D: PopAdLdVar
  loc_9E7A5E: FLdPr Me
  loc_9E7A61: VCallAd Control_ID_DevengadoFlex
  loc_9E7A64: FStAdFunc var_E0
  loc_9E7A67: FLdPr var_E0
  loc_9E7A6A: LateIdCallLdVar
  loc_9E7A74: PopAd
  loc_9E7A76: FLdPr Me
  loc_9E7A79: MemLdStr global_76
  loc_9E7A7C: FLdRfVar var_F8
  loc_9E7A7F: FLdRfVar var_F0
  loc_9E7A82: CStrVarTmp
  loc_9E7A83: FStStrNoPop var_F4
  loc_9E7A86: ImpAdLdI2 MemVar_C3D064
  loc_9E7A89: FLdPr Me
  loc_9E7A8C: MemLdRfVar from_stack_1.global_52
  loc_9E7A8F: NewIfNullPr clsimputacion
  loc_9E7A92: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_9E7A97: ILdRf var_F8
  loc_9E7A9A: EqStr
  loc_9E7A9C: FFreeStr var_F4 = ""
  loc_9E7AA3: FFreeAd var_8C = ""
  loc_9E7AAA: FFreeVar var_9C = ""
  loc_9E7AB1: BranchF loc_9E7ABC
  loc_9E7AB4: LitI2_Byte &HFF
  loc_9E7AB6: FStI2 var_86
  loc_9E7AB9: Branch loc_9E7ACE
  loc_9E7ABC: LitI4 0
  loc_9E7AC1: LitStr "Debe seleccionar un solo tipo de pago (Presupuestario,Extrapresup.,Residuo presup,Residuo extrapresup.). Verifique..."
  loc_9E7AC4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9E7AC9: LitI2_Byte 0
  loc_9E7ACB: FStI2 var_86
  loc_9E7ACE: ExitProcCbHresult
End Function

Private Function Proc_120_26_A1C2F4() 'A1C2F4
  'Data Table: 4782C4
  loc_A1C16C: FLdPr Me
  loc_A1C16F: VCallAd Control_ID_DevengadoFlex
  loc_A1C172: FStAdFunc var_88
  loc_A1C175: FLdPr var_88
  loc_A1C178: LateIdLdVar var_98 DispID_10 0
  loc_A1C17F: CI4Var
  loc_A1C181: CVarI4
  loc_A1C185: PopAdLdVar
  loc_A1C186: LitVarI4
  loc_A1C18E: PopAdLdVar
  loc_A1C18F: FLdPr Me
  loc_A1C192: VCallAd Control_ID_DevengadoFlex
  loc_A1C195: FStAdFunc var_DC
  loc_A1C198: FLdPr var_DC
  loc_A1C19B: LateIdCallLdVar
  loc_A1C1A5: PopAd
  loc_A1C1A7: FLdPr Me
  loc_A1C1AA: VCallAd Control_ID_DevengadoFlex
  loc_A1C1AD: FStAdFunc var_F0
  loc_A1C1B0: FLdPr var_F0
  loc_A1C1B3: LateIdLdVar var_100 DispID_10 0
  loc_A1C1BA: CI4Var
  loc_A1C1BC: CVarI4
  loc_A1C1C0: PopAdLdVar
  loc_A1C1C1: LitVarI4
  loc_A1C1C9: PopAdLdVar
  loc_A1C1CA: FLdPr Me
  loc_A1C1CD: VCallAd Control_ID_DevengadoFlex
  loc_A1C1D0: FStAdFunc var_144
  loc_A1C1D3: FLdPr var_144
  loc_A1C1D6: LateIdCallLdVar
  loc_A1C1E0: PopAd
  loc_A1C1E2: FLdRfVar var_15E
  loc_A1C1E5: FLdRfVar var_154
  loc_A1C1E8: CStrVarTmp
  loc_A1C1E9: FStStrNoPop var_15C
  loc_A1C1EC: CI4Str
  loc_A1C1ED: FLdRfVar var_EC
  loc_A1C1F0: CStrVarTmp
  loc_A1C1F1: FStStrNoPop var_158
  loc_A1C1F4: FLdPr Me
  loc_A1C1F7: MemLdRfVar from_stack_1.global_52
  loc_A1C1FA: NewIfNullPr clsimputacion
  loc_A1C1FD: from_stack_3v = clsimputacion.ValidoElInventario(from_stack_1v, from_stack_2v)
  loc_A1C202: FLdI2 var_15E
  loc_A1C205: FLdRfVar var_160
  loc_A1C208: from_stack_1v = Proc_120_25_9E7AD4()
  loc_A1C20D: FLdI2 var_160
  loc_A1C210: AndI4
  loc_A1C211: FFreeStr var_158 = ""
  loc_A1C218: FFreeAd var_88 = "": var_DC = "": var_F0 = ""
  loc_A1C223: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_A1C22E: BranchF loc_A1C2F0
  loc_A1C231: FLdPr Me
  loc_A1C234: VCallAd Control_ID_DevengadoFlex
  loc_A1C237: FStAdFunc var_88
  loc_A1C23A: FLdPr var_88
  loc_A1C23D: LateIdLdVar var_98 DispID_10 0
  loc_A1C244: CI4Var
  loc_A1C246: CVarI4
  loc_A1C24A: PopAdLdVar
  loc_A1C24B: LitVarI4
  loc_A1C253: PopAdLdVar
  loc_A1C254: LitVarStr var_110, "Si"
  loc_A1C259: PopAdLdVar
  loc_A1C25A: FLdPr Me
  loc_A1C25D: VCallAd Control_ID_DevengadoFlex
  loc_A1C260: FStAdFunc var_DC
  loc_A1C263: FLdPr var_DC
  loc_A1C266: LateIdCallSt
  loc_A1C26E: FFreeAd var_88 = ""
  loc_A1C275: FFree1Var var_98 = ""
  loc_A1C278: LitI2_Byte 1
  loc_A1C27A: FLdPr Me
  loc_A1C27D: MemLdRfVar from_stack_1.global_70
  loc_A1C280: FLdPr Me
  loc_A1C283: VCallAd Control_ID_DevengadoFlex
  loc_A1C286: FStAdFunc var_88
  loc_A1C289: FLdPr var_88
  loc_A1C28C: LateIdLdVar var_98 DispID_5 0
  loc_A1C293: CI4Var
  loc_A1C295: LitI4 1
  loc_A1C29A: SubI4
  loc_A1C29B: CI2I4
  loc_A1C29C: FFree1Ad var_88
  loc_A1C29F: FFree1Var var_98 = ""
  loc_A1C2A2: ForI2 var_164
  loc_A1C2A8: FLdPr Me
  loc_A1C2AB: MemLdI2 global_70
  loc_A1C2AE: CI4UI1
  loc_A1C2AF: CVarI4
  loc_A1C2B3: PopAdLdVar
  loc_A1C2B4: FLdPr Me
  loc_A1C2B7: VCallAd Control_ID_DevengadoFlex
  loc_A1C2BA: FStAdFunc var_88
  loc_A1C2BD: FLdPr var_88
  loc_A1C2C0: LateIdSt
  loc_A1C2C5: FFree1Ad var_88
  loc_A1C2C8: LitVarI4
  loc_A1C2D0: PopAdLdVar
  loc_A1C2D1: FLdPr Me
  loc_A1C2D4: VCallAd Control_ID_DevengadoFlex
  loc_A1C2D7: FStAdFunc var_88
  loc_A1C2DA: FLdPr var_88
  loc_A1C2DD: LateIdSt
  loc_A1C2E2: FFree1Ad var_88
  loc_A1C2E5: FLdPr Me
  loc_A1C2E8: MemLdRfVar from_stack_1.global_70
  loc_A1C2EB: NextI2 var_164, loc_A1C2A8
  loc_A1C2F0: ExitProcHresult
End Function

Private Function Proc_120_27_9BBFDC() '9BBFDC
  'Data Table: 4782C4
  loc_9BBF1C: FLdPr Me
  loc_9BBF1F: VCallAd Control_ID_DevengadoFlex
  loc_9BBF22: FStAdFunc var_88
  loc_9BBF25: FLdPr var_88
  loc_9BBF28: LateIdLdVar var_98 DispID_10 0
  loc_9BBF2F: CI4Var
  loc_9BBF31: CVarI4
  loc_9BBF35: PopAdLdVar
  loc_9BBF36: LitVarI4
  loc_9BBF3E: PopAdLdVar
  loc_9BBF3F: LitVarStr var_E8, "No"
  loc_9BBF44: PopAdLdVar
  loc_9BBF45: FLdPr Me
  loc_9BBF48: VCallAd Control_ID_DevengadoFlex
  loc_9BBF4B: FStAdFunc var_FC
  loc_9BBF4E: FLdPr var_FC
  loc_9BBF51: LateIdCallSt
  loc_9BBF59: FFreeAd var_88 = ""
  loc_9BBF60: FFree1Var var_98 = ""
  loc_9BBF63: LitI2_Byte 1
  loc_9BBF65: FLdPr Me
  loc_9BBF68: MemLdRfVar from_stack_1.global_70
  loc_9BBF6B: FLdPr Me
  loc_9BBF6E: VCallAd Control_ID_DevengadoFlex
  loc_9BBF71: FStAdFunc var_88
  loc_9BBF74: FLdPr var_88
  loc_9BBF77: LateIdLdVar var_98 DispID_5 0
  loc_9BBF7E: CI4Var
  loc_9BBF80: LitI4 1
  loc_9BBF85: SubI4
  loc_9BBF86: CI2I4
  loc_9BBF87: FFree1Ad var_88
  loc_9BBF8A: FFree1Var var_98 = ""
  loc_9BBF8D: ForI2 var_100
  loc_9BBF93: FLdPr Me
  loc_9BBF96: MemLdI2 global_70
  loc_9BBF99: CI4UI1
  loc_9BBF9A: CVarI4
  loc_9BBF9E: PopAdLdVar
  loc_9BBF9F: FLdPr Me
  loc_9BBFA2: VCallAd Control_ID_DevengadoFlex
  loc_9BBFA5: FStAdFunc var_88
  loc_9BBFA8: FLdPr var_88
  loc_9BBFAB: LateIdSt
  loc_9BBFB0: FFree1Ad var_88
  loc_9BBFB3: LitVarI4
  loc_9BBFBB: PopAdLdVar
  loc_9BBFBC: FLdPr Me
  loc_9BBFBF: VCallAd Control_ID_DevengadoFlex
  loc_9BBFC2: FStAdFunc var_88
  loc_9BBFC5: FLdPr var_88
  loc_9BBFC8: LateIdSt
  loc_9BBFCD: FFree1Ad var_88
  loc_9BBFD0: FLdPr Me
  loc_9BBFD3: MemLdRfVar from_stack_1.global_70
  loc_9BBFD6: NextI2 var_100, loc_9BBF93
  loc_9BBFDB: ExitProcHresult
End Function
