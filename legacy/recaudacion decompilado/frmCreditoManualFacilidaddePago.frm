VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditoManualFacilidaddePago
  Caption = "Creditos Manual a Cuotas de plan de pago"
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
  ClientWidth = 15252
  ClientHeight = 7524
  Begin VB.CommandButton ConfirmarCmd
    Left = 5880
    Top = 6600
    Width = 1455
    Height = 615
    TabIndex = 18
    Picture = "frmCreditoManualFacilidaddePago.frx":0000
    Style = 1
  End
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 6420
    Top = 5640
    Width = 1695
    Height = 345
    TabIndex = 15
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
  End
  Begin VB.TextBox DetaCtctTxt
    ForeColor = &HFF0000&
    Left = 6420
    Top = 6120
    Width = 9015
    Height = 345
    TabIndex = 17
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
  Begin VB.CommandButton BuscaFacilidad
    Left = 3960
    Top = 240
    Width = 450
    Height = 345
    TabIndex = 1
    Picture = "frmCreditoManualFacilidaddePago.frx":032E
    Style = 1
  End
  Begin VB.TextBox CodiFapaTxt
    ForeColor = &HFF0000&
    Left = 2280
    Top = 240
    Width = 1455
    Height = 345
    Text = "0"
    TabIndex = 0
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
  Begin VB.TextBox txtTotaSele
    BackColor = &H80000004&
    Left = 2880
    Top = 4440
    Width = 1575
    Height = 360
    TabIndex = 6
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
  Begin VB.TextBox txtTotalCreditos
    BackColor = &H80000004&
    Left = 10080
    Top = 4440
    Width = 1575
    Height = 360
    TabIndex = 5
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
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 1440
    Width = 735
    Height = 615
    TabIndex = 3
    Picture = "frmCreditoManualFacilidaddePago.frx":0410
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid CuotasFacilidadFlex
    Left = 720
    Top = 1200
    Width = 5055
    Height = 3015
    TabIndex = 2
    OleObjectBlob = "frmCreditoManualFacilidaddePago.frx":0662
    Appearance = 0 'Flat
  End
  Begin MSFlexGridLib.MSFlexGrid CuotasImpagasFacilidadFlex
    Left = 8640
    Top = 1200
    Width = 5055
    Height = 3015
    TabIndex = 14
    OleObjectBlob = "frmCreditoManualFacilidaddePago.frx":074E
    Appearance = 0 'Flat
  End
  Begin VB.Label Label10
    Caption = "Expediente:"
    Left = 5040
    Top = 5640
    Width = 1260
    Height = 300
    TabIndex = 19
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
  Begin VB.Label Label11
    Caption = "Observaciones:"
    Left = 4680
    Top = 6120
    Width = 1635
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
  Begin VB.Label Label9
    Caption = "Domicilio Postal:"
    Left = 6840
    Top = 720
    Width = 1725
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
    Caption = "Apellido y Nombre:"
    Left = 6600
    Top = 240
    Width = 1965
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8760
    Top = 240
    Width = 5895
    Height = 315
    TabIndex = 11
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
    Left = 4680
    Top = 240
    Width = 1695
    Height = 315
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
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 8760
    Top = 720
    Width = 6015
    Height = 315
    TabIndex = 9
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
  Begin VB.Label Label4
    Caption = "Numero:"
    Left = 1200
    Top = 240
    Width = 900
    Height = 300
    TabIndex = 8
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
    Caption = "Total Seleccionado:"
    Left = 480
    Top = 4440
    Width = 2385
    Height = 300
    TabIndex = 7
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
    Caption = "Pendiente:"
    Left = 8640
    Top = 4440
    Width = 1305
    Height = 300
    TabIndex = 4
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
End

Attribute VB_Name = "frmCreditoManualFacilidaddePago"


Private Sub DetaCtctTxt_Validate(Cancel As Boolean) 'A7FFB0
  'Data Table: 47F2B0
  loc_A7FF2C: FLdRfVar var_8A
  loc_A7FF2F: FLdPr Me
  loc_A7FF32: VCallAd Control_ID_DetaCtctTxt
  loc_A7FF35: FStAdFunc var_88
  loc_A7FF38: FLdPr var_88
  loc_A7FF3B:  = Me.Enabled
  loc_A7FF40: FLdI2 var_8A
  loc_A7FF43: FFree1Ad var_88
  loc_A7FF46: BranchF loc_A7FFAC
  loc_A7FF49: FLdRfVar var_90
  loc_A7FF4C: FLdPr Me
  loc_A7FF4F: VCallAd Control_ID_DetaCtctTxt
  loc_A7FF52: FStAdFunc var_88
  loc_A7FF55: FLdPr var_88
  loc_A7FF58:  = Me.Text
  loc_A7FF5D: ILdRf var_90
  loc_A7FF60: LitStr "Detalle del Crédito Manual"
  loc_A7FF63: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7FF68: FStStrNoPop var_94
  loc_A7FF6B: FLdPr Me
  loc_A7FF6E: MemStStrCopy
  loc_A7FF72: FFreeStr var_90 = ""
  loc_A7FF79: FFree1Ad var_88
  loc_A7FF7C: FLdPr Me
  loc_A7FF7F: MemLdStr global_92
  loc_A7FF82: LitStr vbNullString
  loc_A7FF85: NeStr
  loc_A7FF87: BranchF loc_A7FFAC
  loc_A7FF8A: FLdPr Me
  loc_A7FF8D: MemLdStr global_92
  loc_A7FF90: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FF95: FLdPr Me
  loc_A7FF98: VCallAd Control_ID_DetaCtctTxt
  loc_A7FF9B: CVarAd
  loc_A7FF9F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FFA4: FFree1Var var_A4 = ""
  loc_A7FFA7: LitI2_Byte &HFF
  loc_A7FFA9: IStI2 Cancel
  loc_A7FFAC: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CD820
  'Data Table: 47F2B0
  loc_9CD808: ILdRf Me
  loc_9CD80B: FStAdNoPop
  loc_9CD80F: ImpAdLdRf MemVar_D9C5D8
  loc_9CD812: NewIfNullPr Global
  loc_9CD815: Global.Unload from_stack_1
  loc_9CD81A: FFree1Ad var_88
  loc_9CD81D: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B3F1B0
  'Data Table: 47F2B0
  loc_B3EE9C: FLdPr Me
  loc_B3EE9F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B3EEA2: FStAdFunc var_8C
  loc_B3EEA5: FLdPr var_8C
  loc_B3EEA8: LateIdLdVar var_9C DispID_4 0
  loc_B3EEAF: CI4Var
  loc_B3EEB1: LitI4 1
  loc_B3EEB6: LeI4
  loc_B3EEB7: FFree1Ad var_8C
  loc_B3EEBA: FFree1Var var_9C = ""
  loc_B3EEBD: BranchF loc_B3EEF2
  loc_B3EEC0: LitVar_Missing var_10C
  loc_B3EEC3: LitVar_Missing var_EC
  loc_B3EEC6: LitVarStr var_BC, "InfoGov"
  loc_B3EECB: FStVarCopyObj var_CC
  loc_B3EECE: FLdRfVar var_CC
  loc_B3EED1: LitI4 &H30
  loc_B3EED6: LitVarStr var_AC, "No existe deuda para generar boleto. Reintente..."
  loc_B3EEDB: FStVarCopyObj var_9C
  loc_B3EEDE: FLdRfVar var_9C
  loc_B3EEE1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B3EEE6: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_B3EEF1: ExitProcHresult
  loc_B3EEF2: LitI2_Byte 1
  loc_B3EEF4: FLdPr Me
  loc_B3EEF7: MemLdRfVar from_stack_1.global_72
  loc_B3EEFA: FLdPr Me
  loc_B3EEFD: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B3EF00: FStAdFunc var_8C
  loc_B3EF03: FLdPr var_8C
  loc_B3EF06: LateIdLdVar var_9C DispID_4 0
  loc_B3EF0D: CI4Var
  loc_B3EF0F: LitI4 1
  loc_B3EF14: SubI4
  loc_B3EF15: CI2I4
  loc_B3EF16: FFree1Ad var_8C
  loc_B3EF19: FFree1Var var_9C = ""
  loc_B3EF1C: ForI2 var_110
  loc_B3EF22: FLdPr Me
  loc_B3EF25: MemLdI2 global_72
  loc_B3EF28: CI4UI1
  loc_B3EF29: CVarI4
  loc_B3EF2D: PopAdLdVar
  loc_B3EF2E: LitVarI4
  loc_B3EF36: PopAdLdVar
  loc_B3EF37: FLdPr Me
  loc_B3EF3A: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B3EF3D: FStAdFunc var_8C
  loc_B3EF40: FLdPr var_8C
  loc_B3EF43: LateIdCallLdVar
  loc_B3EF4D: CStrVarTmp
  loc_B3EF4E: FStStrNoPop var_114
  loc_B3EF51: LitStr "Si"
  loc_B3EF54: EqStr
  loc_B3EF56: FFree1Str var_114
  loc_B3EF59: FFree1Ad var_8C
  loc_B3EF5C: FFree1Var var_9C = ""
  loc_B3EF5F: BranchF loc_B3EF9F
  loc_B3EF62: FLdPr Me
  loc_B3EF65: MemLdI2 global_72
  loc_B3EF68: CI4UI1
  loc_B3EF69: CVarI4
  loc_B3EF6D: PopAdLdVar
  loc_B3EF6E: LitVarI4
  loc_B3EF76: PopAdLdVar
  loc_B3EF77: FLdPr Me
  loc_B3EF7A: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B3EF7D: FStAdFunc var_8C
  loc_B3EF80: FLdPr var_8C
  loc_B3EF83: LateIdCallLdVar
  loc_B3EF8D: CStrVarTmp
  loc_B3EF8E: FStStrNoPop var_114
  loc_B3EF91: CI2Str
  loc_B3EF93: FStI2 var_86
  loc_B3EF96: FFree1Str var_114
  loc_B3EF99: FFree1Ad var_8C
  loc_B3EF9C: FFree1Var var_9C = ""
  loc_B3EF9F: FLdPr Me
  loc_B3EFA2: MemLdRfVar from_stack_1.global_72
  loc_B3EFA5: NextI2 var_110, loc_B3EF22
  loc_B3EFAA: LitI2_Byte 1
  loc_B3EFAC: FLdPr Me
  loc_B3EFAF: MemLdRfVar from_stack_1.global_72
  loc_B3EFB2: FLdPr Me
  loc_B3EFB5: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B3EFB8: FStAdFunc var_8C
  loc_B3EFBB: FLdPr var_8C
  loc_B3EFBE: LateIdLdVar var_9C DispID_4 0
  loc_B3EFC5: CI4Var
  loc_B3EFC7: LitI4 1
  loc_B3EFCC: SubI4
  loc_B3EFCD: CI2I4
  loc_B3EFCE: FFree1Ad var_8C
  loc_B3EFD1: FFree1Var var_9C = ""
  loc_B3EFD4: ForI2 var_118
  loc_B3EFDA: FLdPr Me
  loc_B3EFDD: MemLdI2 global_72
  loc_B3EFE0: CI4UI1
  loc_B3EFE1: CVarI4
  loc_B3EFE5: PopAdLdVar
  loc_B3EFE6: LitVarI4
  loc_B3EFEE: PopAdLdVar
  loc_B3EFEF: FLdPr Me
  loc_B3EFF2: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B3EFF5: FStAdFunc var_8C
  loc_B3EFF8: FLdPr var_8C
  loc_B3EFFB: LateIdCallLdVar
  loc_B3F005: CStrVarTmp
  loc_B3F006: FStStrNoPop var_114
  loc_B3F009: LitStr "Si"
  loc_B3F00C: EqStr
  loc_B3F00E: FFree1Str var_114
  loc_B3F011: FFree1Ad var_8C
  loc_B3F014: FFree1Var var_9C = ""
  loc_B3F017: BranchF loc_B3F057
  loc_B3F01A: FLdPr Me
  loc_B3F01D: MemLdI2 global_72
  loc_B3F020: CI4UI1
  loc_B3F021: CVarI4
  loc_B3F025: PopAdLdVar
  loc_B3F026: LitVarI4
  loc_B3F02E: PopAdLdVar
  loc_B3F02F: FLdPr Me
  loc_B3F032: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B3F035: FStAdFunc var_8C
  loc_B3F038: FLdPr var_8C
  loc_B3F03B: LateIdCallLdVar
  loc_B3F045: CStrVarTmp
  loc_B3F046: FStStrNoPop var_114
  loc_B3F049: CI2Str
  loc_B3F04B: FStI2 var_88
  loc_B3F04E: FFree1Str var_114
  loc_B3F051: FFree1Ad var_8C
  loc_B3F054: FFree1Var var_9C = ""
  loc_B3F057: FLdPr Me
  loc_B3F05A: MemLdRfVar from_stack_1.global_72
  loc_B3F05D: NextI2 var_118, loc_B3EFDA
  loc_B3F062: FLdRfVar var_114
  loc_B3F065: FLdPr Me
  loc_B3F068: VCallAd Control_ID_CodiFapaTxt
  loc_B3F06B: FStAdFunc var_8C
  loc_B3F06E: FLdPr var_8C
  loc_B3F071:  = Me.Text
  loc_B3F076: FLdRfVar var_120
  loc_B3F079: FLdPr Me
  loc_B3F07C: VCallAd Control_ID_ExpeCtctTxt
  loc_B3F07F: FStAdFunc var_11C
  loc_B3F082: FLdPr var_11C
  loc_B3F085:  = Me.Text
  loc_B3F08A: FLdRfVar var_128
  loc_B3F08D: FLdPr Me
  loc_B3F090: VCallAd Control_ID_DetaCtctTxt
  loc_B3F093: FStAdFunc var_124
  loc_B3F096: FLdPr var_124
  loc_B3F099:  = Me.Text
  loc_B3F09E: FLdI2 var_88
  loc_B3F0A1: ILdRf var_128
  loc_B3F0A4: ILdRf var_120
  loc_B3F0A7: FLdI2 var_86
  loc_B3F0AA: ILdRf var_114
  loc_B3F0AD: CI4Str
  loc_B3F0AE: FLdPr Me
  loc_B3F0B1: MemLdRfVar from_stack_1.global_64
  loc_B3F0B4: NewIfNullPr clsctacte
  loc_B3F0B7: Call clsctacte.CreaDebitosCtaCteCuotadePlanDePago(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B3F0BC: FFreeStr var_114 = "": var_120 = ""
  loc_B3F0C5: FFreeAd var_8C = "": var_11C = ""
  loc_B3F0CE: ILdRf Me
  loc_B3F0D1: CastAd
  loc_B3F0D4: FStAdFunc var_8C
  loc_B3F0D7: FLdRfVar var_8C
  loc_B3F0DA: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_B3F0DF: FFree1Ad var_8C
  loc_B3F0E2: Call Proc_335_12_AE8784()
  loc_B3F0E7: LitI4 1
  loc_B3F0EC: LitI4 1
  loc_B3F0F1: LitVarStr var_BC, "0.00"
  loc_B3F0F6: FStVarCopyObj var_CC
  loc_B3F0F9: FLdRfVar var_CC
  loc_B3F0FC: LitVarI2 var_9C, 0
  loc_B3F101: FLdRfVar var_EC
  loc_B3F104: ImpAdCallFPR4  = Format(, )
  loc_B3F109: FLdRfVar var_EC
  loc_B3F10C: CStrVarVal var_114
  loc_B3F110: FLdPr Me
  loc_B3F113: VCallAd Control_ID_txtTotalCreditos
  loc_B3F116: FStAdFunc var_8C
  loc_B3F119: FLdPr var_8C
  loc_B3F11C: Me.Text = from_stack_1
  loc_B3F121: FFree1Str var_114
  loc_B3F124: FFree1Ad var_8C
  loc_B3F127: FFreeVar var_9C = "": var_CC = ""
  loc_B3F130: LitI4 1
  loc_B3F135: LitI4 1
  loc_B3F13A: LitVarStr var_BC, "0.00"
  loc_B3F13F: FStVarCopyObj var_CC
  loc_B3F142: FLdRfVar var_CC
  loc_B3F145: LitVarI2 var_9C, 0
  loc_B3F14A: FLdRfVar var_EC
  loc_B3F14D: ImpAdCallFPR4  = Format(, )
  loc_B3F152: FLdRfVar var_EC
  loc_B3F155: CStrVarVal var_114
  loc_B3F159: FLdPr Me
  loc_B3F15C: VCallAd Control_ID_txtTotaSele
  loc_B3F15F: FStAdFunc var_8C
  loc_B3F162: FLdPr var_8C
  loc_B3F165: Me.Text = from_stack_1
  loc_B3F16A: FFree1Str var_114
  loc_B3F16D: FFree1Ad var_8C
  loc_B3F170: FFreeVar var_9C = "": var_CC = ""
  loc_B3F179: LitI4 0
  loc_B3F17E: LitI4 0
  loc_B3F183: FLdRfVar var_12C
  loc_B3F186: Redim
  loc_B3F190: FLdPr Me
  loc_B3F193: VCallAd Control_ID_ConfirmarCmd
  loc_B3F196: CVarAd
  loc_B3F19A: ParmAry1St
  loc_B3F1A0: FLdRfVar var_12C
  loc_B3F1A3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B3F1A8: FLdRfVar var_12C
  loc_B3F1AB: Erase
  loc_B3F1AC: ExitProcHresult
End Sub

Private Sub CuotasFacilidadFlex_Click() 'B8E9F4
  'Data Table: 47F2B0
  loc_B8E494: FLdPr Me
  loc_B8E497: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E49A: FStAdFunc var_88
  loc_B8E49D: FLdPr var_88
  loc_B8E4A0: LateIdLdVar var_98 DispID_4 0
  loc_B8E4A7: CI4Var
  loc_B8E4A9: LitI4 1
  loc_B8E4AE: GtI4
  loc_B8E4AF: FFree1Ad var_88
  loc_B8E4B2: FFree1Var var_98 = ""
  loc_B8E4B5: BranchF loc_B8E85E
  loc_B8E4B8: FLdPr Me
  loc_B8E4BB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E4BE: FStAdFunc var_88
  loc_B8E4C1: FLdPr var_88
  loc_B8E4C4: LateIdLdVar var_98 DispID_10 0
  loc_B8E4CB: CI4Var
  loc_B8E4CD: CVarI4
  loc_B8E4D1: PopAdLdVar
  loc_B8E4D2: LitVarI4
  loc_B8E4DA: PopAdLdVar
  loc_B8E4DB: FLdPr Me
  loc_B8E4DE: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E4E1: FStAdFunc var_DC
  loc_B8E4E4: FLdPr var_DC
  loc_B8E4E7: LateIdCallLdVar
  loc_B8E4F1: CStrVarTmp
  loc_B8E4F2: FStStrNoPop var_F0
  loc_B8E4F5: LitStr "Si"
  loc_B8E4F8: EqStr
  loc_B8E4FA: FFree1Str var_F0
  loc_B8E4FD: FFreeAd var_88 = ""
  loc_B8E504: FFreeVar var_98 = ""
  loc_B8E50B: BranchF loc_B8E666
  loc_B8E50E: LitI2_Byte 0
  loc_B8E510: FLdPr Me
  loc_B8E513: MemLdRfVar from_stack_1.global_72
  loc_B8E516: FLdPr Me
  loc_B8E519: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E51C: FStAdFunc var_88
  loc_B8E51F: FLdPr var_88
  loc_B8E522: LateIdLdVar var_98 DispID_5 0
  loc_B8E529: CI4Var
  loc_B8E52B: LitI4 1
  loc_B8E530: SubI4
  loc_B8E531: CI2I4
  loc_B8E532: FFree1Ad var_88
  loc_B8E535: FFree1Var var_98 = ""
  loc_B8E538: ForI2 var_F4
  loc_B8E53E: FLdPr Me
  loc_B8E541: MemLdI2 global_72
  loc_B8E544: CI4UI1
  loc_B8E545: CVarI4
  loc_B8E549: PopAdLdVar
  loc_B8E54A: FLdPr Me
  loc_B8E54D: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E550: FStAdFunc var_88
  loc_B8E553: FLdPr var_88
  loc_B8E556: LateIdSt
  loc_B8E55B: FFree1Ad var_88
  loc_B8E55E: LitVarI4
  loc_B8E566: PopAdLdVar
  loc_B8E567: FLdPr Me
  loc_B8E56A: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E56D: FStAdFunc var_88
  loc_B8E570: FLdPr var_88
  loc_B8E573: LateIdSt
  loc_B8E578: FFree1Ad var_88
  loc_B8E57B: FLdPr Me
  loc_B8E57E: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E581: FStAdFunc var_88
  loc_B8E584: FLdPr var_88
  loc_B8E587: LateIdLdVar var_98 DispID_10 0
  loc_B8E58E: CI4Var
  loc_B8E590: CVarI4
  loc_B8E594: PopAdLdVar
  loc_B8E595: LitVarI4
  loc_B8E59D: PopAdLdVar
  loc_B8E59E: LitVarStr var_104, "No"
  loc_B8E5A3: PopAdLdVar
  loc_B8E5A4: FLdPr Me
  loc_B8E5A7: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E5AA: FStAdFunc var_DC
  loc_B8E5AD: FLdPr var_DC
  loc_B8E5B0: LateIdCallSt
  loc_B8E5B8: FFreeAd var_88 = ""
  loc_B8E5BF: FFree1Var var_98 = ""
  loc_B8E5C2: FLdPr Me
  loc_B8E5C5: MemLdI2 global_72
  loc_B8E5C8: LitI2_Byte 0
  loc_B8E5CA: EqI2
  loc_B8E5CB: BranchF loc_B8E5CE
  loc_B8E5CE: FLdPr Me
  loc_B8E5D1: MemLdI2 global_72
  loc_B8E5D4: LitI2_Byte 2
  loc_B8E5D6: EqI2
  loc_B8E5D7: BranchF loc_B8E658
  loc_B8E5DA: FLdPr Me
  loc_B8E5DD: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E5E0: FStAdFunc var_88
  loc_B8E5E3: FLdPr var_88
  loc_B8E5E6: LateIdLdVar var_98 DispID_10 0
  loc_B8E5ED: CI4Var
  loc_B8E5EF: CVarI4
  loc_B8E5F3: PopAdLdVar
  loc_B8E5F4: FLdPr Me
  loc_B8E5F7: MemLdI2 global_72
  loc_B8E5FA: CI4UI1
  loc_B8E5FB: CVarI4
  loc_B8E5FF: PopAdLdVar
  loc_B8E600: FLdPr Me
  loc_B8E603: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E606: FStAdFunc var_DC
  loc_B8E609: FLdPr var_DC
  loc_B8E60C: LateIdCallLdVar
  loc_B8E616: PopAd
  loc_B8E618: LitI4 2
  loc_B8E61D: FLdPr Me
  loc_B8E620: MemLdFPR8 global_76
  loc_B8E623: FLdRfVar var_EC
  loc_B8E626: CStrVarTmp
  loc_B8E627: FStStrNoPop var_F0
  loc_B8E62A: CR8Str
  loc_B8E62C: SubR4
  loc_B8E62D: CVarR8
  loc_B8E631: FLdRfVar var_134
  loc_B8E634: ImpAdCallFPR4  = Round(, )
  loc_B8E639: FLdRfVar var_134
  loc_B8E63C: CR4Var
  loc_B8E63D: FLdPr Me
  loc_B8E640: MemStFPR8 global_76
  loc_B8E643: FFree1Str var_F0
  loc_B8E646: FFreeAd var_88 = ""
  loc_B8E64D: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B8E658: FLdPr Me
  loc_B8E65B: MemLdRfVar from_stack_1.global_72
  loc_B8E65E: NextI2 var_F4, loc_B8E53E
  loc_B8E663: Branch loc_B8E811
  loc_B8E666: FLdPr Me
  loc_B8E669: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E66C: FStAdFunc var_88
  loc_B8E66F: FLdPr var_88
  loc_B8E672: LateIdLdVar var_98 DispID_10 0
  loc_B8E679: CI4Var
  loc_B8E67B: CVarI4
  loc_B8E67F: PopAdLdVar
  loc_B8E680: LitVarI4
  loc_B8E688: PopAdLdVar
  loc_B8E689: FLdPr Me
  loc_B8E68C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E68F: FStAdFunc var_DC
  loc_B8E692: FLdPr var_DC
  loc_B8E695: LateIdCallLdVar
  loc_B8E69F: CStrVarTmp
  loc_B8E6A0: FStStrNoPop var_F0
  loc_B8E6A3: LitStr "No"
  loc_B8E6A6: EqStr
  loc_B8E6A8: FFree1Str var_F0
  loc_B8E6AB: FFreeAd var_88 = ""
  loc_B8E6B2: FFreeVar var_98 = ""
  loc_B8E6B9: BranchF loc_B8E811
  loc_B8E6BC: LitI2_Byte 0
  loc_B8E6BE: FLdPr Me
  loc_B8E6C1: MemLdRfVar from_stack_1.global_72
  loc_B8E6C4: FLdPr Me
  loc_B8E6C7: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E6CA: FStAdFunc var_88
  loc_B8E6CD: FLdPr var_88
  loc_B8E6D0: LateIdLdVar var_98 DispID_5 0
  loc_B8E6D7: CI4Var
  loc_B8E6D9: LitI4 1
  loc_B8E6DE: SubI4
  loc_B8E6DF: CI2I4
  loc_B8E6E0: FFree1Ad var_88
  loc_B8E6E3: FFree1Var var_98 = ""
  loc_B8E6E6: ForI2 var_138
  loc_B8E6EC: FLdPr Me
  loc_B8E6EF: MemLdI2 global_72
  loc_B8E6F2: CI4UI1
  loc_B8E6F3: CVarI4
  loc_B8E6F7: PopAdLdVar
  loc_B8E6F8: FLdPr Me
  loc_B8E6FB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E6FE: FStAdFunc var_88
  loc_B8E701: FLdPr var_88
  loc_B8E704: LateIdSt
  loc_B8E709: FFree1Ad var_88
  loc_B8E70C: LitVarI4
  loc_B8E714: PopAdLdVar
  loc_B8E715: FLdPr Me
  loc_B8E718: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E71B: FStAdFunc var_88
  loc_B8E71E: FLdPr var_88
  loc_B8E721: LateIdSt
  loc_B8E726: FFree1Ad var_88
  loc_B8E729: FLdPr Me
  loc_B8E72C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E72F: FStAdFunc var_88
  loc_B8E732: FLdPr var_88
  loc_B8E735: LateIdLdVar var_98 DispID_10 0
  loc_B8E73C: CI4Var
  loc_B8E73E: CVarI4
  loc_B8E742: PopAdLdVar
  loc_B8E743: LitVarI4
  loc_B8E74B: PopAdLdVar
  loc_B8E74C: LitVarStr var_104, "Si"
  loc_B8E751: PopAdLdVar
  loc_B8E752: FLdPr Me
  loc_B8E755: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E758: FStAdFunc var_DC
  loc_B8E75B: FLdPr var_DC
  loc_B8E75E: LateIdCallSt
  loc_B8E766: FFreeAd var_88 = ""
  loc_B8E76D: FFree1Var var_98 = ""
  loc_B8E770: FLdPr Me
  loc_B8E773: MemLdI2 global_72
  loc_B8E776: LitI2_Byte 0
  loc_B8E778: EqI2
  loc_B8E779: BranchF loc_B8E77C
  loc_B8E77C: FLdPr Me
  loc_B8E77F: MemLdI2 global_72
  loc_B8E782: LitI2_Byte 2
  loc_B8E784: EqI2
  loc_B8E785: BranchF loc_B8E806
  loc_B8E788: FLdPr Me
  loc_B8E78B: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E78E: FStAdFunc var_88
  loc_B8E791: FLdPr var_88
  loc_B8E794: LateIdLdVar var_98 DispID_10 0
  loc_B8E79B: CI4Var
  loc_B8E79D: CVarI4
  loc_B8E7A1: PopAdLdVar
  loc_B8E7A2: FLdPr Me
  loc_B8E7A5: MemLdI2 global_72
  loc_B8E7A8: CI4UI1
  loc_B8E7A9: CVarI4
  loc_B8E7AD: PopAdLdVar
  loc_B8E7AE: FLdPr Me
  loc_B8E7B1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E7B4: FStAdFunc var_DC
  loc_B8E7B7: FLdPr var_DC
  loc_B8E7BA: LateIdCallLdVar
  loc_B8E7C4: PopAd
  loc_B8E7C6: LitI4 2
  loc_B8E7CB: FLdPr Me
  loc_B8E7CE: MemLdFPR8 global_76
  loc_B8E7D1: FLdRfVar var_EC
  loc_B8E7D4: CStrVarTmp
  loc_B8E7D5: FStStrNoPop var_F0
  loc_B8E7D8: CR8Str
  loc_B8E7DA: AddR8
  loc_B8E7DB: CVarR8
  loc_B8E7DF: FLdRfVar var_134
  loc_B8E7E2: ImpAdCallFPR4  = Round(, )
  loc_B8E7E7: FLdRfVar var_134
  loc_B8E7EA: CR4Var
  loc_B8E7EB: FLdPr Me
  loc_B8E7EE: MemStFPR8 global_76
  loc_B8E7F1: FFree1Str var_F0
  loc_B8E7F4: FFreeAd var_88 = ""
  loc_B8E7FB: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B8E806: FLdPr Me
  loc_B8E809: MemLdRfVar from_stack_1.global_72
  loc_B8E80C: NextI2 var_138, loc_B8E6EC
  loc_B8E811: LitI4 1
  loc_B8E816: LitI4 1
  loc_B8E81B: LitVarStr var_B8, "###,###,##0.00"
  loc_B8E820: FStVarCopyObj var_98
  loc_B8E823: FLdRfVar var_98
  loc_B8E826: FLdPr Me
  loc_B8E829: MemLdRfVar from_stack_1.global_76
  loc_B8E82C: CVarRef
  loc_B8E831: FLdRfVar var_EC
  loc_B8E834: ImpAdCallFPR4  = Format(, )
  loc_B8E839: FLdRfVar var_EC
  loc_B8E83C: CStrVarVal var_F0
  loc_B8E840: FLdPr Me
  loc_B8E843: VCallAd Control_ID_txtTotaSele
  loc_B8E846: FStAdFunc var_88
  loc_B8E849: FLdPr var_88
  loc_B8E84C: Me.Text = from_stack_1
  loc_B8E851: FFree1Str var_F0
  loc_B8E854: FFree1Ad var_88
  loc_B8E857: FFreeVar var_98 = ""
  loc_B8E85E: LitI2_Byte 0
  loc_B8E860: FLdPr Me
  loc_B8E863: MemStI2 global_96
  loc_B8E866: LitI2_Byte 0
  loc_B8E868: FLdPr Me
  loc_B8E86B: MemStI2 global_98
  loc_B8E86E: LitI2_Byte 1
  loc_B8E870: FLdPr Me
  loc_B8E873: MemLdRfVar from_stack_1.global_72
  loc_B8E876: FLdPr Me
  loc_B8E879: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E87C: FStAdFunc var_88
  loc_B8E87F: FLdPr var_88
  loc_B8E882: LateIdLdVar var_98 DispID_4 0
  loc_B8E889: CI4Var
  loc_B8E88B: LitI4 1
  loc_B8E890: SubI4
  loc_B8E891: CI2I4
  loc_B8E892: FFree1Ad var_88
  loc_B8E895: FFree1Var var_98 = ""
  loc_B8E898: ForI2 var_13C
  loc_B8E89E: FLdPr Me
  loc_B8E8A1: MemLdI2 global_72
  loc_B8E8A4: CI4UI1
  loc_B8E8A5: CVarI4
  loc_B8E8A9: PopAdLdVar
  loc_B8E8AA: LitVarI4
  loc_B8E8B2: PopAdLdVar
  loc_B8E8B3: FLdPr Me
  loc_B8E8B6: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E8B9: FStAdFunc var_88
  loc_B8E8BC: FLdPr var_88
  loc_B8E8BF: LateIdCallLdVar
  loc_B8E8C9: CStrVarTmp
  loc_B8E8CA: FStStrNoPop var_F0
  loc_B8E8CD: LitStr "Si"
  loc_B8E8D0: EqStr
  loc_B8E8D2: FFree1Str var_F0
  loc_B8E8D5: FFree1Ad var_88
  loc_B8E8D8: FFree1Var var_98 = ""
  loc_B8E8DB: BranchF loc_B8E8E6
  loc_B8E8DE: LitI2_Byte &HFF
  loc_B8E8E0: FLdPr Me
  loc_B8E8E3: MemStI2 global_96
  loc_B8E8E6: FLdPr Me
  loc_B8E8E9: MemLdRfVar from_stack_1.global_72
  loc_B8E8EC: NextI2 var_13C, loc_B8E89E
  loc_B8E8F1: LitI2_Byte 1
  loc_B8E8F3: FLdPr Me
  loc_B8E8F6: MemLdRfVar from_stack_1.global_72
  loc_B8E8F9: FLdPr Me
  loc_B8E8FC: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E8FF: FStAdFunc var_88
  loc_B8E902: FLdPr var_88
  loc_B8E905: LateIdLdVar var_98 DispID_4 0
  loc_B8E90C: CI4Var
  loc_B8E90E: LitI4 1
  loc_B8E913: SubI4
  loc_B8E914: CI2I4
  loc_B8E915: FFree1Ad var_88
  loc_B8E918: FFree1Var var_98 = ""
  loc_B8E91B: ForI2 var_140
  loc_B8E921: FLdPr Me
  loc_B8E924: MemLdI2 global_72
  loc_B8E927: CI4UI1
  loc_B8E928: CVarI4
  loc_B8E92C: PopAdLdVar
  loc_B8E92D: LitVarI4
  loc_B8E935: PopAdLdVar
  loc_B8E936: FLdPr Me
  loc_B8E939: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E93C: FStAdFunc var_88
  loc_B8E93F: FLdPr var_88
  loc_B8E942: LateIdCallLdVar
  loc_B8E94C: CStrVarTmp
  loc_B8E94D: FStStrNoPop var_F0
  loc_B8E950: LitStr "Si"
  loc_B8E953: EqStr
  loc_B8E955: FFree1Str var_F0
  loc_B8E958: FFree1Ad var_88
  loc_B8E95B: FFree1Var var_98 = ""
  loc_B8E95E: BranchF loc_B8E969
  loc_B8E961: LitI2_Byte &HFF
  loc_B8E963: FLdPr Me
  loc_B8E966: MemStI2 global_98
  loc_B8E969: FLdPr Me
  loc_B8E96C: MemLdRfVar from_stack_1.global_72
  loc_B8E96F: NextI2 var_140, loc_B8E921
  loc_B8E974: FLdPr Me
  loc_B8E977: MemLdI2 global_96
  loc_B8E97A: LitI2_Byte &HFF
  loc_B8E97C: EqI2
  loc_B8E97D: FLdPr Me
  loc_B8E980: MemLdI2 global_98
  loc_B8E983: LitI2_Byte &HFF
  loc_B8E985: EqI2
  loc_B8E986: AndI4
  loc_B8E987: BranchF loc_B8E9C0
  loc_B8E98A: LitI4 0
  loc_B8E98F: LitI4 0
  loc_B8E994: FLdRfVar var_144
  loc_B8E997: Redim
  loc_B8E9A1: FLdPr Me
  loc_B8E9A4: VCallAd Control_ID_ConfirmarCmd
  loc_B8E9A7: CVarAd
  loc_B8E9AB: ParmAry1St
  loc_B8E9B1: FLdRfVar var_144
  loc_B8E9B4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8E9B9: FLdRfVar var_144
  loc_B8E9BC: Erase
  loc_B8E9BD: Branch loc_B8E9F3
  loc_B8E9C0: LitI4 0
  loc_B8E9C5: LitI4 0
  loc_B8E9CA: FLdRfVar var_144
  loc_B8E9CD: Redim
  loc_B8E9D7: FLdPr Me
  loc_B8E9DA: VCallAd Control_ID_ConfirmarCmd
  loc_B8E9DD: CVarAd
  loc_B8E9E1: ParmAry1St
  loc_B8E9E7: FLdRfVar var_144
  loc_B8E9EA: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8E9EF: FLdRfVar var_144
  loc_B8E9F2: Erase
  loc_B8E9F3: ExitProcHresult
End Sub

Private Sub CuotasFacilidadFlex_KeyPress(KeyAscii As Integer) 'B0F9A4
  'Data Table: 47F2B0
  loc_B0F770: ILdI2 KeyAscii
  loc_B0F773: LitI2_Byte &HD
  loc_B0F775: EqI2
  loc_B0F776: BranchF loc_B0F9A2
  loc_B0F779: FLdPr Me
  loc_B0F77C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F77F: FStAdFunc var_88
  loc_B0F782: FLdPr var_88
  loc_B0F785: LateIdLdVar var_98 DispID_4 0
  loc_B0F78C: CI4Var
  loc_B0F78E: LitI4 1
  loc_B0F793: GtI4
  loc_B0F794: FFree1Ad var_88
  loc_B0F797: FFree1Var var_98 = ""
  loc_B0F79A: BranchF loc_B0F9A2
  loc_B0F79D: FLdPr Me
  loc_B0F7A0: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F7A3: FStAdFunc var_88
  loc_B0F7A6: FLdPr var_88
  loc_B0F7A9: LateIdLdVar var_98 DispID_10 0
  loc_B0F7B0: CI4Var
  loc_B0F7B2: CVarI4
  loc_B0F7B6: PopAdLdVar
  loc_B0F7B7: LitVarI4
  loc_B0F7BF: PopAdLdVar
  loc_B0F7C0: FLdPr Me
  loc_B0F7C3: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F7C6: FStAdFunc var_DC
  loc_B0F7C9: FLdPr var_DC
  loc_B0F7CC: LateIdCallLdVar
  loc_B0F7D6: CStrVarTmp
  loc_B0F7D7: FStStrNoPop var_F0
  loc_B0F7DA: CR8Str
  loc_B0F7DC: LitI2_Byte 0
  loc_B0F7DE: CR8I2
  loc_B0F7DF: NeR8
  loc_B0F7E0: FFree1Str var_F0
  loc_B0F7E3: FFreeAd var_88 = ""
  loc_B0F7EA: FFreeVar var_98 = ""
  loc_B0F7F1: BranchF loc_B0F7FD
  loc_B0F7F4: LitStr "No se puede realizar un PAGO a CUENTA de una cuota con APREMIO. Verifique"
  loc_B0F7F7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0F7FC: ExitProcHresult
  loc_B0F7FD: FLdPr Me
  loc_B0F800: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F803: FStAdFunc var_88
  loc_B0F806: FLdPr var_88
  loc_B0F809: LateIdLdVar var_98 DispID_10 0
  loc_B0F810: CI4Var
  loc_B0F812: CVarI4
  loc_B0F816: PopAdLdVar
  loc_B0F817: LitVarI4
  loc_B0F81F: PopAdLdVar
  loc_B0F820: FLdPr Me
  loc_B0F823: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F826: FStAdFunc var_DC
  loc_B0F829: FLdPr var_DC
  loc_B0F82C: LateIdCallLdVar
  loc_B0F836: CStrVarTmp
  loc_B0F837: FStStrNoPop var_F0
  loc_B0F83A: LitStr "Si"
  loc_B0F83D: EqStr
  loc_B0F83F: FFree1Str var_F0
  loc_B0F842: FFreeAd var_88 = ""
  loc_B0F849: FFreeVar var_98 = ""
  loc_B0F850: BranchF loc_B0F9A2
  loc_B0F853: LitI2_Byte 0
  loc_B0F855: FLdPr Me
  loc_B0F858: MemLdRfVar from_stack_1.global_72
  loc_B0F85B: FLdPr Me
  loc_B0F85E: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F861: FStAdFunc var_88
  loc_B0F864: FLdPr var_88
  loc_B0F867: LateIdLdVar var_98 DispID_5 0
  loc_B0F86E: CI4Var
  loc_B0F870: LitI4 1
  loc_B0F875: SubI4
  loc_B0F876: CI2I4
  loc_B0F877: FFree1Ad var_88
  loc_B0F87A: FFree1Var var_98 = ""
  loc_B0F87D: ForI2 var_F4
  loc_B0F883: FLdPr Me
  loc_B0F886: MemLdI2 global_72
  loc_B0F889: CI4UI1
  loc_B0F88A: CVarI4
  loc_B0F88E: PopAdLdVar
  loc_B0F88F: FLdPr Me
  loc_B0F892: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F895: FStAdFunc var_88
  loc_B0F898: FLdPr var_88
  loc_B0F89B: LateIdSt
  loc_B0F8A0: FFree1Ad var_88
  loc_B0F8A3: LitVarI4
  loc_B0F8AB: PopAdLdVar
  loc_B0F8AC: FLdPr Me
  loc_B0F8AF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F8B2: FStAdFunc var_88
  loc_B0F8B5: FLdPr var_88
  loc_B0F8B8: LateIdSt
  loc_B0F8BD: FFree1Ad var_88
  loc_B0F8C0: FLdPr Me
  loc_B0F8C3: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F8C6: FStAdFunc var_88
  loc_B0F8C9: FLdPr var_88
  loc_B0F8CC: LateIdLdVar var_98 DispID_10 0
  loc_B0F8D3: CI4Var
  loc_B0F8D5: CVarI4
  loc_B0F8D9: PopAdLdVar
  loc_B0F8DA: LitVarI4
  loc_B0F8E2: PopAdLdVar
  loc_B0F8E3: LitVarStr var_104, "SS"
  loc_B0F8E8: PopAdLdVar
  loc_B0F8E9: FLdPr Me
  loc_B0F8EC: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F8EF: FStAdFunc var_DC
  loc_B0F8F2: FLdPr var_DC
  loc_B0F8F5: LateIdCallSt
  loc_B0F8FD: FFreeAd var_88 = ""
  loc_B0F904: FFree1Var var_98 = ""
  loc_B0F907: FLdPr Me
  loc_B0F90A: MemLdI2 global_72
  loc_B0F90D: LitI2_Byte 0
  loc_B0F90F: EqI2
  loc_B0F910: BranchF loc_B0F997
  loc_B0F913: FLdRfVar var_F0
  loc_B0F916: FLdPr Me
  loc_B0F919: VCallAd Control_ID_CodiFapaTxt
  loc_B0F91C: FStAdFunc var_88
  loc_B0F91F: FLdPr var_88
  loc_B0F922:  = Me.Text
  loc_B0F927: FLdPr Me
  loc_B0F92A: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F92D: FStAdFunc var_DC
  loc_B0F930: FLdPr var_DC
  loc_B0F933: LateIdLdVar var_98 DispID_10 0
  loc_B0F93A: CI4Var
  loc_B0F93C: CVarI4
  loc_B0F940: PopAdLdVar
  loc_B0F941: LitVarI4
  loc_B0F949: PopAdLdVar
  loc_B0F94A: FLdPr Me
  loc_B0F94D: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B0F950: FStAdFunc var_118
  loc_B0F953: FLdPr var_118
  loc_B0F956: LateIdCallLdVar
  loc_B0F960: PopAd
  loc_B0F962: LitStr "SS"
  loc_B0F965: FLdRfVar var_EC
  loc_B0F968: CStrVarTmp
  loc_B0F969: FStStrNoPop var_11C
  loc_B0F96C: CI2Str
  loc_B0F96E: ILdRf var_F0
  loc_B0F971: CI4Str
  loc_B0F972: FLdPr Me
  loc_B0F975: MemLdRfVar from_stack_1.global_56
  loc_B0F978: NewIfNullPr clsdetafapa
  loc_B0F97B: Call clsdetafapa.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B0F980: FFreeStr var_F0 = ""
  loc_B0F987: FFreeAd var_88 = "": var_DC = ""
  loc_B0F990: FFreeVar var_98 = ""
  loc_B0F997: FLdPr Me
  loc_B0F99A: MemLdRfVar from_stack_1.global_72
  loc_B0F99D: NextI2 var_F4, loc_B0F883
  loc_B0F9A2: ExitProcHresult
End Sub

Private Sub BuscaFacilidad_Click() 'B84D2C
  'Data Table: 47F2B0
  loc_B84854: LitI2_Byte 0
  loc_B84856: CR8I2
  loc_B84857: FLdPr Me
  loc_B8485A: MemStFPR8 global_76
  loc_B8485D: LitI2_Byte 0
  loc_B8485F: CR8I2
  loc_B84860: FLdPr Me
  loc_B84863: MemStFPR8 global_84
  loc_B84866: Call Proc_335_12_AE8784()
  loc_B8486B: LitI2_Byte 0
  loc_B8486D: PopTmpLdAd2 var_8A
  loc_B84870: Call CodiFapaTxt_Validate(from_stack_1v)
  loc_B84875: FLdPr Me
  loc_B84878: MemLdStr global_92
  loc_B8487B: LitStr vbNullString
  loc_B8487E: NeStr
  loc_B84880: BranchF loc_B84884
  loc_B84883: ExitProcHresult
  loc_B84884: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_faci;"
  loc_B84887: LitStr " CREATE TEMPORARY TABLE tmp_faci"
  loc_B8488A: ConcatStr
  loc_B8488B: FStStrNoPop var_90
  loc_B8488E: LitStr " SELECT FeenAcpa, NumeAcpa, PeriBole, NumeBole, CodiFapa, CuotDefa"
  loc_B84891: ConcatStr
  loc_B84892: FStStrNoPop var_94
  loc_B84895: LitStr " FROM detapago WHERE CodiFapa = "
  loc_B84898: ConcatStr
  loc_B84899: FStStrNoPop var_A0
  loc_B8489C: FLdRfVar var_9C
  loc_B8489F: FLdPr Me
  loc_B848A2: VCallAd Control_ID_CodiFapaTxt
  loc_B848A5: FStAdFunc var_98
  loc_B848A8: FLdPr var_98
  loc_B848AB:  = Me.Text
  loc_B848B0: ILdRf var_9C
  loc_B848B3: ConcatStr
  loc_B848B4: FStStrNoPop var_A4
  loc_B848B7: LitStr " ANd ActuDepa = 'Si'"
  loc_B848BA: ConcatStr
  loc_B848BB: FStStrNoPop var_A8
  loc_B848BE: LitStr " GROUP BY CodiFapa, CuotDefa, FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_B848C1: ConcatStr
  loc_B848C2: FStStrNoPop var_AC
  loc_B848C5: FLdPr Me
  loc_B848C8: MemLdRfVar from_stack_1.global_56
  loc_B848CB: NewIfNullPr clsdetafapa
  loc_B848CE: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B848D3: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = "": var_A8 = ""
  loc_B848E4: FFree1Ad var_98
  loc_B848E7: LitStr "SELECT count(tmp_faci.CuotDefa) cant, tmp_faci.*, TotaDefa "
  loc_B848EA: LitStr " FROM tmp_faci"
  loc_B848ED: ConcatStr
  loc_B848EE: FStStrNoPop var_90
  loc_B848F1: LitStr " INNER JOIN detafapa ON detafapa.CodiFapa = tmp_faci.CodiFapa AND detafapa.CuotDefa = tmp_faci.CuotDefa"
  loc_B848F4: ConcatStr
  loc_B848F5: FStStrNoPop var_94
  loc_B848F8: LitStr " GROUP BY tmp_faci.CuotDefa HAVING cant > 1"
  loc_B848FB: ConcatStr
  loc_B848FC: FStStrNoPop var_9C
  loc_B848FF: FLdPr Me
  loc_B84902: MemLdRfVar from_stack_1.global_56
  loc_B84905: NewIfNullPr clsdetafapa
  loc_B84908: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B8490D: FFreeStr var_90 = "": var_94 = ""
  loc_B84916: FLdRfVar var_B0
  loc_B84919: FLdRfVar var_98
  loc_B8491C: FLdPr Me
  loc_B8491F: MemLdRfVar from_stack_1.global_56
  loc_B84922: NewIfNullPr clsdetafapa
  loc_B84925: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B8492A: FLdPr var_98
  loc_B8492D:  = Me.RecordCount
  loc_B84932: ILdRf var_B0
  loc_B84935: LitI4 0
  loc_B8493A: GtI4
  loc_B8493B: FFree1Ad var_98
  loc_B8493E: BranchF loc_B84AD6
  loc_B84941: FLdRfVar var_98
  loc_B84944: FLdPr Me
  loc_B84947: MemLdRfVar from_stack_1.global_56
  loc_B8494A: NewIfNullPr clsdetafapa
  loc_B8494D: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84952: FLdPr var_98
  loc_B84955: Me.MoveFirst
  loc_B8495A: FFree1Ad var_98
  loc_B8495D: FLdRfVar var_8A
  loc_B84960: FLdPr Me
  loc_B84963: MemLdRfVar from_stack_1.global_56
  loc_B84966: NewIfNullPr clsdetafapa
  loc_B84969: from_stack_1 = clsdetafapa.EOF
  loc_B8496E: FLdI2 var_8A
  loc_B84971: NotI4
  loc_B84972: BranchF loc_B84AD6
  loc_B84975: FLdRfVar var_E8
  loc_B84978: FLdRfVar var_C8
  loc_B8497B: LitVarStr var_C4, "CodiFapa"
  loc_B84980: PopAdLdVar
  loc_B84981: FLdRfVar var_B4
  loc_B84984: FLdRfVar var_98
  loc_B84987: FLdPr Me
  loc_B8498A: MemLdRfVar from_stack_1.global_56
  loc_B8498D: NewIfNullPr clsdetafapa
  loc_B84990: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84995: FLdPr var_98
  loc_B84998:  = Me.Fields
  loc_B8499D: FLdPr var_B4
  loc_B849A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B849A5: FLdPr var_C8
  loc_B849A8:  = Me.Value
  loc_B849AD: FLdRfVar var_E8
  loc_B849B0: LitI4 9
  loc_B849B5: FLdRfVar var_D8
  loc_B849B8: ImpAdCallFPR4  = Chr()
  loc_B849BD: FLdRfVar var_D8
  loc_B849C0: ConcatVar var_F8
  loc_B849C4: FLdRfVar var_124
  loc_B849C7: FLdRfVar var_114
  loc_B849CA: LitVarStr var_110, "CuotDefa"
  loc_B849CF: PopAdLdVar
  loc_B849D0: FLdRfVar var_100
  loc_B849D3: FLdRfVar var_FC
  loc_B849D6: FLdPr Me
  loc_B849D9: MemLdRfVar from_stack_1.global_56
  loc_B849DC: NewIfNullPr clsdetafapa
  loc_B849DF: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B849E4: FLdPr var_FC
  loc_B849E7:  = Me.Fields
  loc_B849EC: FLdPr var_100
  loc_B849EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B849F4: FLdPr var_114
  loc_B849F7:  = Me.Value
  loc_B849FC: FLdRfVar var_124
  loc_B849FF: ConcatVar var_134
  loc_B84A03: LitI4 9
  loc_B84A08: FLdRfVar var_144
  loc_B84A0B: ImpAdCallFPR4  = Chr()
  loc_B84A10: FLdRfVar var_144
  loc_B84A13: ConcatVar var_154
  loc_B84A17: FLdRfVar var_180
  loc_B84A1A: FLdRfVar var_170
  loc_B84A1D: LitVarStr var_16C, "TotaDefa"
  loc_B84A22: PopAdLdVar
  loc_B84A23: FLdRfVar var_15C
  loc_B84A26: FLdRfVar var_158
  loc_B84A29: FLdPr Me
  loc_B84A2C: MemLdRfVar from_stack_1.global_56
  loc_B84A2F: NewIfNullPr clsdetafapa
  loc_B84A32: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84A37: FLdPr var_158
  loc_B84A3A:  = Me.Fields
  loc_B84A3F: FLdPr var_15C
  loc_B84A42: from_stack_2 = Me.Item(from_stack_1)
  loc_B84A47: FLdPr var_170
  loc_B84A4A:  = Me.Value
  loc_B84A4F: FLdRfVar var_180
  loc_B84A52: ConcatVar var_190
  loc_B84A56: LitI4 9
  loc_B84A5B: FLdRfVar var_1A0
  loc_B84A5E: ImpAdCallFPR4  = Chr()
  loc_B84A63: FLdRfVar var_1A0
  loc_B84A66: ConcatVar var_1B0
  loc_B84A6A: LitVarStr var_1C0, "No"
  loc_B84A6F: ConcatVar var_1D0
  loc_B84A73: CStrVarTmp
  loc_B84A74: FStStr var_88
  loc_B84A77: FFreeAd var_98 = "": var_B4 = "": var_C8 = "": var_FC = "": var_100 = "": var_114 = "": var_158 = "": var_15C = ""
  loc_B84A8C: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = ""
  loc_B84AA7: FLdRfVar var_88
  loc_B84AAA: CDargRef
  loc_B84AAE: FLdPr Me
  loc_B84AB1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B84AB4: FStAdFunc var_98
  loc_B84AB7: FLdPr var_98
  loc_B84ABA: LateIdCall
  loc_B84AC2: FFree1Ad var_98
  loc_B84AC5: FLdPr Me
  loc_B84AC8: MemLdRfVar from_stack_1.global_56
  loc_B84ACB: NewIfNullPr clsdetafapa
  loc_B84ACE: Call clsdetafapa.MoveSiguiente()
  loc_B84AD3: Branch loc_B8495D
  loc_B84AD6: LitStr "SELECT * FROM detafapa"
  loc_B84AD9: LitStr " WHERE CodiFapa = "
  loc_B84ADC: ConcatStr
  loc_B84ADD: FStStrNoPop var_94
  loc_B84AE0: FLdRfVar var_90
  loc_B84AE3: FLdPr Me
  loc_B84AE6: VCallAd Control_ID_CodiFapaTxt
  loc_B84AE9: FStAdFunc var_98
  loc_B84AEC: FLdPr var_98
  loc_B84AEF:  = Me.Text
  loc_B84AF4: ILdRf var_90
  loc_B84AF7: ConcatStr
  loc_B84AF8: FStStrNoPop var_9C
  loc_B84AFB: LitStr " AND FepaDefa IS NULL"
  loc_B84AFE: ConcatStr
  loc_B84AFF: FStStrNoPop var_A0
  loc_B84B02: FLdPr Me
  loc_B84B05: MemLdRfVar from_stack_1.global_56
  loc_B84B08: NewIfNullPr clsdetafapa
  loc_B84B0B: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B84B10: FFreeStr var_94 = "": var_90 = "": var_9C = ""
  loc_B84B1B: FFree1Ad var_98
  loc_B84B1E: FLdRfVar var_B0
  loc_B84B21: FLdRfVar var_98
  loc_B84B24: FLdPr Me
  loc_B84B27: MemLdRfVar from_stack_1.global_56
  loc_B84B2A: NewIfNullPr clsdetafapa
  loc_B84B2D: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84B32: FLdPr var_98
  loc_B84B35:  = Me.RecordCount
  loc_B84B3A: ILdRf var_B0
  loc_B84B3D: LitI4 0
  loc_B84B42: GtI4
  loc_B84B43: FFree1Ad var_98
  loc_B84B46: BranchF loc_B84CDE
  loc_B84B49: FLdRfVar var_98
  loc_B84B4C: FLdPr Me
  loc_B84B4F: MemLdRfVar from_stack_1.global_56
  loc_B84B52: NewIfNullPr clsdetafapa
  loc_B84B55: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84B5A: FLdPr var_98
  loc_B84B5D: Me.MoveFirst
  loc_B84B62: FFree1Ad var_98
  loc_B84B65: FLdRfVar var_8A
  loc_B84B68: FLdPr Me
  loc_B84B6B: MemLdRfVar from_stack_1.global_56
  loc_B84B6E: NewIfNullPr clsdetafapa
  loc_B84B71: from_stack_1 = clsdetafapa.EOF
  loc_B84B76: FLdI2 var_8A
  loc_B84B79: NotI4
  loc_B84B7A: BranchF loc_B84CDE
  loc_B84B7D: FLdRfVar var_E8
  loc_B84B80: FLdRfVar var_C8
  loc_B84B83: LitVarStr var_C4, "CodiFapa"
  loc_B84B88: PopAdLdVar
  loc_B84B89: FLdRfVar var_B4
  loc_B84B8C: FLdRfVar var_98
  loc_B84B8F: FLdPr Me
  loc_B84B92: MemLdRfVar from_stack_1.global_56
  loc_B84B95: NewIfNullPr clsdetafapa
  loc_B84B98: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84B9D: FLdPr var_98
  loc_B84BA0:  = Me.Fields
  loc_B84BA5: FLdPr var_B4
  loc_B84BA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B84BAD: FLdPr var_C8
  loc_B84BB0:  = Me.Value
  loc_B84BB5: FLdRfVar var_E8
  loc_B84BB8: LitI4 9
  loc_B84BBD: FLdRfVar var_D8
  loc_B84BC0: ImpAdCallFPR4  = Chr()
  loc_B84BC5: FLdRfVar var_D8
  loc_B84BC8: ConcatVar var_F8
  loc_B84BCC: FLdRfVar var_124
  loc_B84BCF: FLdRfVar var_114
  loc_B84BD2: LitVarStr var_110, "CuotDefa"
  loc_B84BD7: PopAdLdVar
  loc_B84BD8: FLdRfVar var_100
  loc_B84BDB: FLdRfVar var_FC
  loc_B84BDE: FLdPr Me
  loc_B84BE1: MemLdRfVar from_stack_1.global_56
  loc_B84BE4: NewIfNullPr clsdetafapa
  loc_B84BE7: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84BEC: FLdPr var_FC
  loc_B84BEF:  = Me.Fields
  loc_B84BF4: FLdPr var_100
  loc_B84BF7: from_stack_2 = Me.Item(from_stack_1)
  loc_B84BFC: FLdPr var_114
  loc_B84BFF:  = Me.Value
  loc_B84C04: FLdRfVar var_124
  loc_B84C07: ConcatVar var_134
  loc_B84C0B: LitI4 9
  loc_B84C10: FLdRfVar var_144
  loc_B84C13: ImpAdCallFPR4  = Chr()
  loc_B84C18: FLdRfVar var_144
  loc_B84C1B: ConcatVar var_154
  loc_B84C1F: FLdRfVar var_180
  loc_B84C22: FLdRfVar var_170
  loc_B84C25: LitVarStr var_16C, "TotaDefa"
  loc_B84C2A: PopAdLdVar
  loc_B84C2B: FLdRfVar var_15C
  loc_B84C2E: FLdRfVar var_158
  loc_B84C31: FLdPr Me
  loc_B84C34: MemLdRfVar from_stack_1.global_56
  loc_B84C37: NewIfNullPr clsdetafapa
  loc_B84C3A: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B84C3F: FLdPr var_158
  loc_B84C42:  = Me.Fields
  loc_B84C47: FLdPr var_15C
  loc_B84C4A: from_stack_2 = Me.Item(from_stack_1)
  loc_B84C4F: FLdPr var_170
  loc_B84C52:  = Me.Value
  loc_B84C57: FLdRfVar var_180
  loc_B84C5A: ConcatVar var_190
  loc_B84C5E: LitI4 9
  loc_B84C63: FLdRfVar var_1A0
  loc_B84C66: ImpAdCallFPR4  = Chr()
  loc_B84C6B: FLdRfVar var_1A0
  loc_B84C6E: ConcatVar var_1B0
  loc_B84C72: LitVarStr var_1C0, "No"
  loc_B84C77: ConcatVar var_1D0
  loc_B84C7B: CStrVarTmp
  loc_B84C7C: FStStr var_88
  loc_B84C7F: FFreeAd var_98 = "": var_B4 = "": var_C8 = "": var_FC = "": var_100 = "": var_114 = "": var_158 = "": var_15C = ""
  loc_B84C94: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = ""
  loc_B84CAF: FLdRfVar var_88
  loc_B84CB2: CDargRef
  loc_B84CB6: FLdPr Me
  loc_B84CB9: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B84CBC: FStAdFunc var_98
  loc_B84CBF: FLdPr var_98
  loc_B84CC2: LateIdCall
  loc_B84CCA: FFree1Ad var_98
  loc_B84CCD: FLdPr Me
  loc_B84CD0: MemLdRfVar from_stack_1.global_56
  loc_B84CD3: NewIfNullPr clsdetafapa
  loc_B84CD6: Call clsdetafapa.MoveSiguiente()
  loc_B84CDB: Branch loc_B84B65
  loc_B84CDE: LitI4 1
  loc_B84CE3: LitI4 1
  loc_B84CE8: LitVarStr var_110, "###,###,##0.00"
  loc_B84CED: FStVarCopyObj var_D8
  loc_B84CF0: FLdRfVar var_D8
  loc_B84CF3: FLdPr Me
  loc_B84CF6: MemLdRfVar from_stack_1.global_76
  loc_B84CF9: CVarRef
  loc_B84CFE: FLdRfVar var_E8
  loc_B84D01: ImpAdCallFPR4  = Format(, )
  loc_B84D06: FLdRfVar var_E8
  loc_B84D09: CStrVarVal var_90
  loc_B84D0D: FLdPr Me
  loc_B84D10: VCallAd Control_ID_txtTotaSele
  loc_B84D13: FStAdFunc var_98
  loc_B84D16: FLdPr var_98
  loc_B84D19: Me.Text = from_stack_1
  loc_B84D1E: FFree1Str var_90
  loc_B84D21: FFree1Ad var_98
  loc_B84D24: FFreeVar var_D8 = ""
  loc_B84D2B: ExitProcHresult
End Sub

Private Sub CuotasImpagasFacilidadFlex_Click() 'B8E43C
  'Data Table: 47F2B0
  loc_B8DEDC: FLdPr Me
  loc_B8DEDF: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DEE2: FStAdFunc var_88
  loc_B8DEE5: FLdPr var_88
  loc_B8DEE8: LateIdLdVar var_98 DispID_4 0
  loc_B8DEEF: CI4Var
  loc_B8DEF1: LitI4 1
  loc_B8DEF6: GtI4
  loc_B8DEF7: FFree1Ad var_88
  loc_B8DEFA: FFree1Var var_98 = ""
  loc_B8DEFD: BranchF loc_B8E2A6
  loc_B8DF00: FLdPr Me
  loc_B8DF03: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DF06: FStAdFunc var_88
  loc_B8DF09: FLdPr var_88
  loc_B8DF0C: LateIdLdVar var_98 DispID_10 0
  loc_B8DF13: CI4Var
  loc_B8DF15: CVarI4
  loc_B8DF19: PopAdLdVar
  loc_B8DF1A: LitVarI4
  loc_B8DF22: PopAdLdVar
  loc_B8DF23: FLdPr Me
  loc_B8DF26: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DF29: FStAdFunc var_DC
  loc_B8DF2C: FLdPr var_DC
  loc_B8DF2F: LateIdCallLdVar
  loc_B8DF39: CStrVarTmp
  loc_B8DF3A: FStStrNoPop var_F0
  loc_B8DF3D: LitStr "Si"
  loc_B8DF40: EqStr
  loc_B8DF42: FFree1Str var_F0
  loc_B8DF45: FFreeAd var_88 = ""
  loc_B8DF4C: FFreeVar var_98 = ""
  loc_B8DF53: BranchF loc_B8E0AE
  loc_B8DF56: LitI2_Byte 0
  loc_B8DF58: FLdPr Me
  loc_B8DF5B: MemLdRfVar from_stack_1.global_72
  loc_B8DF5E: FLdPr Me
  loc_B8DF61: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DF64: FStAdFunc var_88
  loc_B8DF67: FLdPr var_88
  loc_B8DF6A: LateIdLdVar var_98 DispID_5 0
  loc_B8DF71: CI4Var
  loc_B8DF73: LitI4 1
  loc_B8DF78: SubI4
  loc_B8DF79: CI2I4
  loc_B8DF7A: FFree1Ad var_88
  loc_B8DF7D: FFree1Var var_98 = ""
  loc_B8DF80: ForI2 var_F4
  loc_B8DF86: FLdPr Me
  loc_B8DF89: MemLdI2 global_72
  loc_B8DF8C: CI4UI1
  loc_B8DF8D: CVarI4
  loc_B8DF91: PopAdLdVar
  loc_B8DF92: FLdPr Me
  loc_B8DF95: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DF98: FStAdFunc var_88
  loc_B8DF9B: FLdPr var_88
  loc_B8DF9E: LateIdSt
  loc_B8DFA3: FFree1Ad var_88
  loc_B8DFA6: LitVarI4
  loc_B8DFAE: PopAdLdVar
  loc_B8DFAF: FLdPr Me
  loc_B8DFB2: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DFB5: FStAdFunc var_88
  loc_B8DFB8: FLdPr var_88
  loc_B8DFBB: LateIdSt
  loc_B8DFC0: FFree1Ad var_88
  loc_B8DFC3: FLdPr Me
  loc_B8DFC6: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DFC9: FStAdFunc var_88
  loc_B8DFCC: FLdPr var_88
  loc_B8DFCF: LateIdLdVar var_98 DispID_10 0
  loc_B8DFD6: CI4Var
  loc_B8DFD8: CVarI4
  loc_B8DFDC: PopAdLdVar
  loc_B8DFDD: LitVarI4
  loc_B8DFE5: PopAdLdVar
  loc_B8DFE6: LitVarStr var_104, "No"
  loc_B8DFEB: PopAdLdVar
  loc_B8DFEC: FLdPr Me
  loc_B8DFEF: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8DFF2: FStAdFunc var_DC
  loc_B8DFF5: FLdPr var_DC
  loc_B8DFF8: LateIdCallSt
  loc_B8E000: FFreeAd var_88 = ""
  loc_B8E007: FFree1Var var_98 = ""
  loc_B8E00A: FLdPr Me
  loc_B8E00D: MemLdI2 global_72
  loc_B8E010: LitI2_Byte 0
  loc_B8E012: EqI2
  loc_B8E013: BranchF loc_B8E016
  loc_B8E016: FLdPr Me
  loc_B8E019: MemLdI2 global_72
  loc_B8E01C: LitI2_Byte 2
  loc_B8E01E: EqI2
  loc_B8E01F: BranchF loc_B8E0A0
  loc_B8E022: FLdPr Me
  loc_B8E025: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E028: FStAdFunc var_88
  loc_B8E02B: FLdPr var_88
  loc_B8E02E: LateIdLdVar var_98 DispID_10 0
  loc_B8E035: CI4Var
  loc_B8E037: CVarI4
  loc_B8E03B: PopAdLdVar
  loc_B8E03C: FLdPr Me
  loc_B8E03F: MemLdI2 global_72
  loc_B8E042: CI4UI1
  loc_B8E043: CVarI4
  loc_B8E047: PopAdLdVar
  loc_B8E048: FLdPr Me
  loc_B8E04B: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E04E: FStAdFunc var_DC
  loc_B8E051: FLdPr var_DC
  loc_B8E054: LateIdCallLdVar
  loc_B8E05E: PopAd
  loc_B8E060: LitI4 2
  loc_B8E065: FLdPr Me
  loc_B8E068: MemLdFPR8 global_84
  loc_B8E06B: FLdRfVar var_EC
  loc_B8E06E: CStrVarTmp
  loc_B8E06F: FStStrNoPop var_F0
  loc_B8E072: CR8Str
  loc_B8E074: SubR4
  loc_B8E075: CVarR8
  loc_B8E079: FLdRfVar var_134
  loc_B8E07C: ImpAdCallFPR4  = Round(, )
  loc_B8E081: FLdRfVar var_134
  loc_B8E084: CR4Var
  loc_B8E085: FLdPr Me
  loc_B8E088: MemStFPR8 global_84
  loc_B8E08B: FFree1Str var_F0
  loc_B8E08E: FFreeAd var_88 = ""
  loc_B8E095: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B8E0A0: FLdPr Me
  loc_B8E0A3: MemLdRfVar from_stack_1.global_72
  loc_B8E0A6: NextI2 var_F4, loc_B8DF86
  loc_B8E0AB: Branch loc_B8E259
  loc_B8E0AE: FLdPr Me
  loc_B8E0B1: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E0B4: FStAdFunc var_88
  loc_B8E0B7: FLdPr var_88
  loc_B8E0BA: LateIdLdVar var_98 DispID_10 0
  loc_B8E0C1: CI4Var
  loc_B8E0C3: CVarI4
  loc_B8E0C7: PopAdLdVar
  loc_B8E0C8: LitVarI4
  loc_B8E0D0: PopAdLdVar
  loc_B8E0D1: FLdPr Me
  loc_B8E0D4: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E0D7: FStAdFunc var_DC
  loc_B8E0DA: FLdPr var_DC
  loc_B8E0DD: LateIdCallLdVar
  loc_B8E0E7: CStrVarTmp
  loc_B8E0E8: FStStrNoPop var_F0
  loc_B8E0EB: LitStr "No"
  loc_B8E0EE: EqStr
  loc_B8E0F0: FFree1Str var_F0
  loc_B8E0F3: FFreeAd var_88 = ""
  loc_B8E0FA: FFreeVar var_98 = ""
  loc_B8E101: BranchF loc_B8E259
  loc_B8E104: LitI2_Byte 0
  loc_B8E106: FLdPr Me
  loc_B8E109: MemLdRfVar from_stack_1.global_72
  loc_B8E10C: FLdPr Me
  loc_B8E10F: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E112: FStAdFunc var_88
  loc_B8E115: FLdPr var_88
  loc_B8E118: LateIdLdVar var_98 DispID_5 0
  loc_B8E11F: CI4Var
  loc_B8E121: LitI4 1
  loc_B8E126: SubI4
  loc_B8E127: CI2I4
  loc_B8E128: FFree1Ad var_88
  loc_B8E12B: FFree1Var var_98 = ""
  loc_B8E12E: ForI2 var_138
  loc_B8E134: FLdPr Me
  loc_B8E137: MemLdI2 global_72
  loc_B8E13A: CI4UI1
  loc_B8E13B: CVarI4
  loc_B8E13F: PopAdLdVar
  loc_B8E140: FLdPr Me
  loc_B8E143: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E146: FStAdFunc var_88
  loc_B8E149: FLdPr var_88
  loc_B8E14C: LateIdSt
  loc_B8E151: FFree1Ad var_88
  loc_B8E154: LitVarI4
  loc_B8E15C: PopAdLdVar
  loc_B8E15D: FLdPr Me
  loc_B8E160: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E163: FStAdFunc var_88
  loc_B8E166: FLdPr var_88
  loc_B8E169: LateIdSt
  loc_B8E16E: FFree1Ad var_88
  loc_B8E171: FLdPr Me
  loc_B8E174: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E177: FStAdFunc var_88
  loc_B8E17A: FLdPr var_88
  loc_B8E17D: LateIdLdVar var_98 DispID_10 0
  loc_B8E184: CI4Var
  loc_B8E186: CVarI4
  loc_B8E18A: PopAdLdVar
  loc_B8E18B: LitVarI4
  loc_B8E193: PopAdLdVar
  loc_B8E194: LitVarStr var_104, "Si"
  loc_B8E199: PopAdLdVar
  loc_B8E19A: FLdPr Me
  loc_B8E19D: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E1A0: FStAdFunc var_DC
  loc_B8E1A3: FLdPr var_DC
  loc_B8E1A6: LateIdCallSt
  loc_B8E1AE: FFreeAd var_88 = ""
  loc_B8E1B5: FFree1Var var_98 = ""
  loc_B8E1B8: FLdPr Me
  loc_B8E1BB: MemLdI2 global_72
  loc_B8E1BE: LitI2_Byte 0
  loc_B8E1C0: EqI2
  loc_B8E1C1: BranchF loc_B8E1C4
  loc_B8E1C4: FLdPr Me
  loc_B8E1C7: MemLdI2 global_72
  loc_B8E1CA: LitI2_Byte 2
  loc_B8E1CC: EqI2
  loc_B8E1CD: BranchF loc_B8E24E
  loc_B8E1D0: FLdPr Me
  loc_B8E1D3: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E1D6: FStAdFunc var_88
  loc_B8E1D9: FLdPr var_88
  loc_B8E1DC: LateIdLdVar var_98 DispID_10 0
  loc_B8E1E3: CI4Var
  loc_B8E1E5: CVarI4
  loc_B8E1E9: PopAdLdVar
  loc_B8E1EA: FLdPr Me
  loc_B8E1ED: MemLdI2 global_72
  loc_B8E1F0: CI4UI1
  loc_B8E1F1: CVarI4
  loc_B8E1F5: PopAdLdVar
  loc_B8E1F6: FLdPr Me
  loc_B8E1F9: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E1FC: FStAdFunc var_DC
  loc_B8E1FF: FLdPr var_DC
  loc_B8E202: LateIdCallLdVar
  loc_B8E20C: PopAd
  loc_B8E20E: LitI4 2
  loc_B8E213: FLdPr Me
  loc_B8E216: MemLdFPR8 global_84
  loc_B8E219: FLdRfVar var_EC
  loc_B8E21C: CStrVarTmp
  loc_B8E21D: FStStrNoPop var_F0
  loc_B8E220: CR8Str
  loc_B8E222: AddR8
  loc_B8E223: CVarR8
  loc_B8E227: FLdRfVar var_134
  loc_B8E22A: ImpAdCallFPR4  = Round(, )
  loc_B8E22F: FLdRfVar var_134
  loc_B8E232: CR4Var
  loc_B8E233: FLdPr Me
  loc_B8E236: MemStFPR8 global_84
  loc_B8E239: FFree1Str var_F0
  loc_B8E23C: FFreeAd var_88 = ""
  loc_B8E243: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B8E24E: FLdPr Me
  loc_B8E251: MemLdRfVar from_stack_1.global_72
  loc_B8E254: NextI2 var_138, loc_B8E134
  loc_B8E259: LitI4 1
  loc_B8E25E: LitI4 1
  loc_B8E263: LitVarStr var_B8, "###,###,##0.00"
  loc_B8E268: FStVarCopyObj var_98
  loc_B8E26B: FLdRfVar var_98
  loc_B8E26E: FLdPr Me
  loc_B8E271: MemLdRfVar from_stack_1.global_84
  loc_B8E274: CVarRef
  loc_B8E279: FLdRfVar var_EC
  loc_B8E27C: ImpAdCallFPR4  = Format(, )
  loc_B8E281: FLdRfVar var_EC
  loc_B8E284: CStrVarVal var_F0
  loc_B8E288: FLdPr Me
  loc_B8E28B: VCallAd Control_ID_txtTotalCreditos
  loc_B8E28E: FStAdFunc var_88
  loc_B8E291: FLdPr var_88
  loc_B8E294: Me.Text = from_stack_1
  loc_B8E299: FFree1Str var_F0
  loc_B8E29C: FFree1Ad var_88
  loc_B8E29F: FFreeVar var_98 = ""
  loc_B8E2A6: LitI2_Byte 0
  loc_B8E2A8: FLdPr Me
  loc_B8E2AB: MemStI2 global_96
  loc_B8E2AE: LitI2_Byte 0
  loc_B8E2B0: FLdPr Me
  loc_B8E2B3: MemStI2 global_98
  loc_B8E2B6: LitI2_Byte 1
  loc_B8E2B8: FLdPr Me
  loc_B8E2BB: MemLdRfVar from_stack_1.global_72
  loc_B8E2BE: FLdPr Me
  loc_B8E2C1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E2C4: FStAdFunc var_88
  loc_B8E2C7: FLdPr var_88
  loc_B8E2CA: LateIdLdVar var_98 DispID_4 0
  loc_B8E2D1: CI4Var
  loc_B8E2D3: LitI4 1
  loc_B8E2D8: SubI4
  loc_B8E2D9: CI2I4
  loc_B8E2DA: FFree1Ad var_88
  loc_B8E2DD: FFree1Var var_98 = ""
  loc_B8E2E0: ForI2 var_13C
  loc_B8E2E6: FLdPr Me
  loc_B8E2E9: MemLdI2 global_72
  loc_B8E2EC: CI4UI1
  loc_B8E2ED: CVarI4
  loc_B8E2F1: PopAdLdVar
  loc_B8E2F2: LitVarI4
  loc_B8E2FA: PopAdLdVar
  loc_B8E2FB: FLdPr Me
  loc_B8E2FE: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B8E301: FStAdFunc var_88
  loc_B8E304: FLdPr var_88
  loc_B8E307: LateIdCallLdVar
  loc_B8E311: CStrVarTmp
  loc_B8E312: FStStrNoPop var_F0
  loc_B8E315: LitStr "Si"
  loc_B8E318: EqStr
  loc_B8E31A: FFree1Str var_F0
  loc_B8E31D: FFree1Ad var_88
  loc_B8E320: FFree1Var var_98 = ""
  loc_B8E323: BranchF loc_B8E32E
  loc_B8E326: LitI2_Byte &HFF
  loc_B8E328: FLdPr Me
  loc_B8E32B: MemStI2 global_96
  loc_B8E32E: FLdPr Me
  loc_B8E331: MemLdRfVar from_stack_1.global_72
  loc_B8E334: NextI2 var_13C, loc_B8E2E6
  loc_B8E339: LitI2_Byte 1
  loc_B8E33B: FLdPr Me
  loc_B8E33E: MemLdRfVar from_stack_1.global_72
  loc_B8E341: FLdPr Me
  loc_B8E344: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E347: FStAdFunc var_88
  loc_B8E34A: FLdPr var_88
  loc_B8E34D: LateIdLdVar var_98 DispID_4 0
  loc_B8E354: CI4Var
  loc_B8E356: LitI4 1
  loc_B8E35B: SubI4
  loc_B8E35C: CI2I4
  loc_B8E35D: FFree1Ad var_88
  loc_B8E360: FFree1Var var_98 = ""
  loc_B8E363: ForI2 var_140
  loc_B8E369: FLdPr Me
  loc_B8E36C: MemLdI2 global_72
  loc_B8E36F: CI4UI1
  loc_B8E370: CVarI4
  loc_B8E374: PopAdLdVar
  loc_B8E375: LitVarI4
  loc_B8E37D: PopAdLdVar
  loc_B8E37E: FLdPr Me
  loc_B8E381: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B8E384: FStAdFunc var_88
  loc_B8E387: FLdPr var_88
  loc_B8E38A: LateIdCallLdVar
  loc_B8E394: CStrVarTmp
  loc_B8E395: FStStrNoPop var_F0
  loc_B8E398: LitStr "Si"
  loc_B8E39B: EqStr
  loc_B8E39D: FFree1Str var_F0
  loc_B8E3A0: FFree1Ad var_88
  loc_B8E3A3: FFree1Var var_98 = ""
  loc_B8E3A6: BranchF loc_B8E3B1
  loc_B8E3A9: LitI2_Byte &HFF
  loc_B8E3AB: FLdPr Me
  loc_B8E3AE: MemStI2 global_98
  loc_B8E3B1: FLdPr Me
  loc_B8E3B4: MemLdRfVar from_stack_1.global_72
  loc_B8E3B7: NextI2 var_140, loc_B8E369
  loc_B8E3BC: FLdPr Me
  loc_B8E3BF: MemLdI2 global_96
  loc_B8E3C2: LitI2_Byte &HFF
  loc_B8E3C4: EqI2
  loc_B8E3C5: FLdPr Me
  loc_B8E3C8: MemLdI2 global_98
  loc_B8E3CB: LitI2_Byte &HFF
  loc_B8E3CD: EqI2
  loc_B8E3CE: AndI4
  loc_B8E3CF: BranchF loc_B8E408
  loc_B8E3D2: LitI4 0
  loc_B8E3D7: LitI4 0
  loc_B8E3DC: FLdRfVar var_144
  loc_B8E3DF: Redim
  loc_B8E3E9: FLdPr Me
  loc_B8E3EC: VCallAd Control_ID_ConfirmarCmd
  loc_B8E3EF: CVarAd
  loc_B8E3F3: ParmAry1St
  loc_B8E3F9: FLdRfVar var_144
  loc_B8E3FC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B8E401: FLdRfVar var_144
  loc_B8E404: Erase
  loc_B8E405: Branch loc_B8E43B
  loc_B8E408: LitI4 0
  loc_B8E40D: LitI4 0
  loc_B8E412: FLdRfVar var_144
  loc_B8E415: Redim
  loc_B8E41F: FLdPr Me
  loc_B8E422: VCallAd Control_ID_ConfirmarCmd
  loc_B8E425: CVarAd
  loc_B8E429: ParmAry1St
  loc_B8E42F: FLdRfVar var_144
  loc_B8E432: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8E437: FLdRfVar var_144
  loc_B8E43A: Erase
  loc_B8E43B: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_GotFocus() '9CD6F0
  'Data Table: 47F2B0
  loc_9CD6D8: Call Proc_335_12_AE8784()
  loc_9CD6DD: FLdPr Me
  loc_9CD6E0: VCallAd Control_ID_CodiFapaTxt
  loc_9CD6E3: CVarAd
  loc_9CD6E7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9CD6EC: FFree1Var var_94 = ""
  loc_9CD6EF: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_KeyPress(KeyAscii As Integer) 'ABA854
  'Data Table: 47F2B0
  loc_ABA770: LitStr "0123456789 "
  loc_ABA773: FStStrCopy var_88
  loc_ABA776: FLdRfVar var_88
  loc_ABA779: ILdRf KeyAscii
  loc_ABA77C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_ABA781: IStI2 KeyAscii
  loc_ABA784: FFree1Str var_88
  loc_ABA787: ILdI2 KeyAscii
  loc_ABA78A: LitI2_Byte &H20
  loc_ABA78C: EqI2
  loc_ABA78D: BranchF loc_ABA852
  loc_ABA790: LitI2_Byte 0
  loc_ABA792: IStI2 KeyAscii
  loc_ABA795: LitVar_Missing var_A8
  loc_ABA798: PopAdLdVar
  loc_ABA799: LitVarI4
  loc_ABA7A1: PopAdLdVar
  loc_ABA7A2: ImpAdLdRf MemVar_D942A0
  loc_ABA7A5: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA7A8: dlgBuscarFacilidaddePago.Show from_stack_1, from_stack_2
  loc_ABA7AD: FLdRfVar var_B0
  loc_ABA7B0: FLdRfVar var_AC
  loc_ABA7B3: ImpAdLdRf MemVar_D942A0
  loc_ABA7B6: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA7B9: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABA7BE: FLdPr var_AC
  loc_ABA7C1: from_stack_1 = clsbase.RecordCount
  loc_ABA7C6: ILdRf var_B0
  loc_ABA7C9: LitI4 0
  loc_ABA7CE: GtI4
  loc_ABA7CF: FFree1Ad var_AC
  loc_ABA7D2: BranchF loc_ABA840
  loc_ABA7D5: FLdRfVar var_CC
  loc_ABA7D8: FLdRfVar var_BC
  loc_ABA7DB: LitVarStr var_98, "CodiFapa"
  loc_ABA7E0: PopAdLdVar
  loc_ABA7E1: FLdRfVar var_B8
  loc_ABA7E4: FLdRfVar var_B4
  loc_ABA7E7: FLdRfVar var_AC
  loc_ABA7EA: ImpAdLdRf MemVar_D942A0
  loc_ABA7ED: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA7F0: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABA7F5: FLdPr var_AC
  loc_ABA7F8: from_stack_1v = clsbase.RsFrmGet()
  loc_ABA7FD: FLdPr var_B4
  loc_ABA800:  = Me.Fields
  loc_ABA805: FLdPr var_B8
  loc_ABA808: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA80D: FLdPr var_BC
  loc_ABA810:  = Me.Value
  loc_ABA815: FLdRfVar var_CC
  loc_ABA818: CStrVarTmp
  loc_ABA819: FStStrNoPop var_88
  loc_ABA81C: FLdPr Me
  loc_ABA81F: VCallAd Control_ID_CodiFapaTxt
  loc_ABA822: FStAdFunc var_D0
  loc_ABA825: FLdPr var_D0
  loc_ABA828: Me.Text = from_stack_1
  loc_ABA82D: FFree1Str var_88
  loc_ABA830: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ABA83D: FFree1Var var_CC = ""
  loc_ABA840: FLdPr Me
  loc_ABA843: VCallAd Control_ID_CodiFapaTxt
  loc_ABA846: CVarAd
  loc_ABA84A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABA84F: FFree1Var var_CC = ""
  loc_ABA852: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'B1C8E8
  'Data Table: 47F2B0
  loc_B1C660: FLdRfVar var_9C
  loc_B1C663: FLdPr Me
  loc_B1C666: VCallAd Control_ID_CodiFapaTxt
  loc_B1C669: FStAdFunc var_98
  loc_B1C66C: FLdPr var_98
  loc_B1C66F:  = Me.Text
  loc_B1C674: LitI2_Byte 0
  loc_B1C676: LitI2_Byte 0
  loc_B1C678: ILdRf var_9C
  loc_B1C67B: LitStr "el plan de pago "
  loc_B1C67E: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_B1C683: FStStrNoPop var_A0
  loc_B1C686: FLdPr Me
  loc_B1C689: MemStStrCopy
  loc_B1C68D: FFreeStr var_9C = ""
  loc_B1C694: FFree1Ad var_98
  loc_B1C697: FLdPr Me
  loc_B1C69A: MemLdStr global_92
  loc_B1C69D: LitStr vbNullString
  loc_B1C6A0: NeStr
  loc_B1C6A2: BranchF loc_B1C6C8
  loc_B1C6A5: FLdPr Me
  loc_B1C6A8: MemLdStr global_92
  loc_B1C6AB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C6B0: FLdPr Me
  loc_B1C6B3: VCallAd Control_ID_CodiFapaTxt
  loc_B1C6B6: CVarAd
  loc_B1C6BA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C6BF: FFree1Var var_B0 = ""
  loc_B1C6C2: LitI2_Byte &HFF
  loc_B1C6C4: IStI2 Cancel
  loc_B1C6C7: ExitProcHresult
  loc_B1C6C8: LitStr "SELECT CodiFapa, CodiOfic, CuenCtct, CucuPers, EmitFapa, EstaFapa, FealFapa, CodiTifa FROM facipago WHERE CodiFapa = "
  loc_B1C6CB: FLdRfVar var_9C
  loc_B1C6CE: FLdPr Me
  loc_B1C6D1: VCallAd Control_ID_CodiFapaTxt
  loc_B1C6D4: FStAdFunc var_98
  loc_B1C6D7: FLdPr var_98
  loc_B1C6DA:  = Me.Text
  loc_B1C6DF: ILdRf var_9C
  loc_B1C6E2: ConcatStr
  loc_B1C6E3: FStStrNoPop var_A0
  loc_B1C6E6: LitStr " ORDER BY CodiFapa"
  loc_B1C6E9: ConcatStr
  loc_B1C6EA: FStStrNoPop var_B4
  loc_B1C6ED: FLdPr Me
  loc_B1C6F0: MemLdRfVar from_stack_1.global_52
  loc_B1C6F3: NewIfNullPr clsfacipago
  loc_B1C6F6: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B1C6FB: FFreeStr var_9C = "": var_A0 = ""
  loc_B1C704: FFree1Ad var_98
  loc_B1C707: FLdRfVar var_B8
  loc_B1C70A: FLdPr Me
  loc_B1C70D: MemLdRfVar from_stack_1.global_52
  loc_B1C710: NewIfNullPr clsfacipago
  loc_B1C713: from_stack_1 = clsfacipago.RecordCount
  loc_B1C718: ILdRf var_B8
  loc_B1C71B: LitI4 1
  loc_B1C720: EqI4
  loc_B1C721: BranchF loc_B1C874
  loc_B1C724: LitStr "Municipalidad de Guaymallén"
  loc_B1C727: LitStr "Municipalidad de Guaymallén"
  loc_B1C72A: NeStr
  loc_B1C72C: BranchF loc_B1C7F2
  loc_B1C72F: FLdRfVar var_9C
  loc_B1C732: FLdPr Me
  loc_B1C735: MemLdRfVar from_stack_1.global_52
  loc_B1C738: NewIfNullPr clsfacipago
  loc_B1C73B: from_stack_1 = clsfacipago.EstaFapa
  loc_B1C740: ILdRf var_9C
  loc_B1C743: LitStr "Activa"
  loc_B1C746: NeStr
  loc_B1C748: FFree1Str var_9C
  loc_B1C74B: BranchF loc_B1C7A3
  loc_B1C74E: LitStr "El estado de la facilidad de pago es: "
  loc_B1C751: FLdRfVar var_9C
  loc_B1C754: FLdPr Me
  loc_B1C757: MemLdRfVar from_stack_1.global_52
  loc_B1C75A: NewIfNullPr clsfacipago
  loc_B1C75D: from_stack_1 = clsfacipago.EstaFapa
  loc_B1C762: ILdRf var_9C
  loc_B1C765: ConcatStr
  loc_B1C766: FStStrNoPop var_A0
  loc_B1C769: LitStr " por favor verifique."
  loc_B1C76C: ConcatStr
  loc_B1C76D: FStStrNoPop var_B4
  loc_B1C770: FLdPr Me
  loc_B1C773: MemStStrCopy
  loc_B1C777: FFreeStr var_9C = "": var_A0 = ""
  loc_B1C780: FLdPr Me
  loc_B1C783: MemLdStr global_92
  loc_B1C786: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C78B: FLdPr Me
  loc_B1C78E: VCallAd Control_ID_CodiFapaTxt
  loc_B1C791: CVarAd
  loc_B1C795: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C79A: FFree1Var var_B0 = ""
  loc_B1C79D: LitI2_Byte &HFF
  loc_B1C79F: IStI2 Cancel
  loc_B1C7A2: ExitProcHresult
  loc_B1C7A3: FLdRfVar var_9C
  loc_B1C7A6: FLdPr Me
  loc_B1C7A9: MemLdRfVar from_stack_1.global_52
  loc_B1C7AC: NewIfNullPr clsfacipago
  loc_B1C7AF: from_stack_1 = clsfacipago.EmitFapa
  loc_B1C7B4: ILdRf var_9C
  loc_B1C7B7: LitStr "No"
  loc_B1C7BA: EqStr
  loc_B1C7BC: FFree1Str var_9C
  loc_B1C7BF: BranchF loc_B1C7EF
  loc_B1C7C2: LitStr "La facildiad de pago no se puede emitir. Por favor verifique."
  loc_B1C7C5: FLdPr Me
  loc_B1C7C8: MemStStrCopy
  loc_B1C7CC: FLdPr Me
  loc_B1C7CF: MemLdStr global_92
  loc_B1C7D2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C7D7: FLdPr Me
  loc_B1C7DA: VCallAd Control_ID_CodiFapaTxt
  loc_B1C7DD: CVarAd
  loc_B1C7E1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C7E6: FFree1Var var_B0 = ""
  loc_B1C7E9: LitI2_Byte &HFF
  loc_B1C7EB: IStI2 Cancel
  loc_B1C7EE: ExitProcHresult
  loc_B1C7EF: Branch loc_B1C871
  loc_B1C7F2: FLdRfVar var_B0
  loc_B1C7F5: FLdRfVar var_D0
  loc_B1C7F8: LitVarStr var_CC, "FealFapa"
  loc_B1C7FD: PopAdLdVar
  loc_B1C7FE: FLdRfVar var_BC
  loc_B1C801: FLdRfVar var_98
  loc_B1C804: FLdPr Me
  loc_B1C807: MemLdRfVar from_stack_1.global_52
  loc_B1C80A: NewIfNullPr clsfacipago
  loc_B1C80D: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B1C812: FLdPr var_98
  loc_B1C815:  = Me.Fields
  loc_B1C81A: FLdPr var_BC
  loc_B1C81D: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C822: FLdPr var_D0
  loc_B1C825:  = Me.Value
  loc_B1C82A: FLdRfVar var_B0
  loc_B1C82D: FnCDateVar
  loc_B1C82F: LitStr "2018-07-10"
  loc_B1C832: CDateStr
  loc_B1C834: LtR8
  loc_B1C835: FFreeAd var_98 = "": var_BC = ""
  loc_B1C83E: FFree1Var var_B0 = ""
  loc_B1C841: BranchF loc_B1C871
  loc_B1C844: LitStr "Debe ser una facilidad de pago generada por el NUEVO SISTEMA"
  loc_B1C847: FLdPr Me
  loc_B1C84A: MemStStrCopy
  loc_B1C84E: FLdPr Me
  loc_B1C851: MemLdStr global_92
  loc_B1C854: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C859: FLdPr Me
  loc_B1C85C: VCallAd Control_ID_CodiFapaTxt
  loc_B1C85F: CVarAd
  loc_B1C863: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C868: FFree1Var var_B0 = ""
  loc_B1C86B: LitI2_Byte &HFF
  loc_B1C86D: IStI2 Cancel
  loc_B1C870: ExitProcHresult
  loc_B1C871: Branch loc_B1C8E6
  loc_B1C874: LitStr vbNullString
  loc_B1C877: FLdPr Me
  loc_B1C87A: VCallAd Control_ID_CucuPersLbl
  loc_B1C87D: FStAdFunc var_98
  loc_B1C880: FLdPr var_98
  loc_B1C883: Me.Caption = from_stack_1
  loc_B1C888: FFree1Ad var_98
  loc_B1C88B: LitStr vbNullString
  loc_B1C88E: FLdPr Me
  loc_B1C891: VCallAd Control_ID_DetaPersLbl
  loc_B1C894: FStAdFunc var_98
  loc_B1C897: FLdPr var_98
  loc_B1C89A: Me.Caption = from_stack_1
  loc_B1C89F: FFree1Ad var_98
  loc_B1C8A2: LitStr vbNullString
  loc_B1C8A5: FLdPr Me
  loc_B1C8A8: VCallAd Control_ID_DomiPersLbl
  loc_B1C8AB: FStAdFunc var_98
  loc_B1C8AE: FLdPr var_98
  loc_B1C8B1: Me.Caption = from_stack_1
  loc_B1C8B6: FFree1Ad var_98
  loc_B1C8B9: LitStr "La facilidad de pago no existe. Verifique"
  loc_B1C8BC: FLdPr Me
  loc_B1C8BF: MemStStrCopy
  loc_B1C8C3: FLdPr Me
  loc_B1C8C6: MemLdStr global_92
  loc_B1C8C9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C8CE: FLdPr Me
  loc_B1C8D1: VCallAd Control_ID_CodiFapaTxt
  loc_B1C8D4: CVarAd
  loc_B1C8D8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C8DD: FFree1Var var_B0 = ""
  loc_B1C8E0: LitI2_Byte &HFF
  loc_B1C8E2: IStI2 Cancel
  loc_B1C8E5: ExitProcHresult
  loc_B1C8E6: ExitProcHresult
End Sub

Private Sub Form_Load() 'B11D60
  'Data Table: 47F2B0
  loc_B11B0C: LitI4 0
  loc_B11B11: LitI4 0
  loc_B11B16: FLdRfVar var_88
  loc_B11B19: Redim
  loc_B11B23: FLdPr Me
  loc_B11B26: VCallAd Control_ID_ConfirmarCmd
  loc_B11B29: CVarAd
  loc_B11B2D: ParmAry1St
  loc_B11B33: FLdRfVar var_88
  loc_B11B36: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B11B3B: FLdRfVar var_88
  loc_B11B3E: Erase
  loc_B11B3F: FLdPr Me
  loc_B11B42: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B11B45: FStAdFunc var_9C
  loc_B11B48: LitVarI4
  loc_B11B50: PopAdLdVar
  loc_B11B51: LitVarI4
  loc_B11B59: PopAdLdVar
  loc_B11B5A: FLdPr var_9C
  loc_B11B5D: LateIdCallSt
  loc_B11B65: LitVarI4
  loc_B11B6D: PopAdLdVar
  loc_B11B6E: LitVarI4
  loc_B11B76: PopAdLdVar
  loc_B11B77: FLdPr var_9C
  loc_B11B7A: LateIdCallSt
  loc_B11B82: LitVarI4
  loc_B11B8A: PopAdLdVar
  loc_B11B8B: LitVarI4
  loc_B11B93: PopAdLdVar
  loc_B11B94: FLdPr var_9C
  loc_B11B97: LateIdCallSt
  loc_B11B9F: LitVarI4
  loc_B11BA7: PopAdLdVar
  loc_B11BA8: LitVarI4
  loc_B11BB0: PopAdLdVar
  loc_B11BB1: FLdPr var_9C
  loc_B11BB4: LateIdCallSt
  loc_B11BBC: LitVarI4
  loc_B11BC4: PopAdLdVar
  loc_B11BC5: LitVarI4
  loc_B11BCD: PopAdLdVar
  loc_B11BCE: LitVarStr var_EC, "Facilidad"
  loc_B11BD3: PopAdLdVar
  loc_B11BD4: FLdPr var_9C
  loc_B11BD7: LateIdCallSt
  loc_B11BDF: LitVarI4
  loc_B11BE7: PopAdLdVar
  loc_B11BE8: LitVarI4
  loc_B11BF0: PopAdLdVar
  loc_B11BF1: LitVarStr var_EC, "Cuota"
  loc_B11BF6: PopAdLdVar
  loc_B11BF7: FLdPr var_9C
  loc_B11BFA: LateIdCallSt
  loc_B11C02: LitVarI4
  loc_B11C0A: PopAdLdVar
  loc_B11C0B: LitVarI4
  loc_B11C13: PopAdLdVar
  loc_B11C14: LitVarStr var_EC, "Total"
  loc_B11C19: PopAdLdVar
  loc_B11C1A: FLdPr var_9C
  loc_B11C1D: LateIdCallSt
  loc_B11C25: LitVarI4
  loc_B11C2D: PopAdLdVar
  loc_B11C2E: LitVarI4
  loc_B11C36: PopAdLdVar
  loc_B11C37: LitVarStr var_EC, "Sel"
  loc_B11C3C: PopAdLdVar
  loc_B11C3D: FLdPr var_9C
  loc_B11C40: LateIdCallSt
  loc_B11C48: LitNothing
  loc_B11C4A: FStAd var_9C 
  loc_B11C4E: FLdPr Me
  loc_B11C51: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B11C54: FStAdFunc var_100
  loc_B11C57: LitVarI4
  loc_B11C5F: PopAdLdVar
  loc_B11C60: LitVarI4
  loc_B11C68: PopAdLdVar
  loc_B11C69: FLdPr var_100
  loc_B11C6C: LateIdCallSt
  loc_B11C74: LitVarI4
  loc_B11C7C: PopAdLdVar
  loc_B11C7D: LitVarI4
  loc_B11C85: PopAdLdVar
  loc_B11C86: FLdPr var_100
  loc_B11C89: LateIdCallSt
  loc_B11C91: LitVarI4
  loc_B11C99: PopAdLdVar
  loc_B11C9A: LitVarI4
  loc_B11CA2: PopAdLdVar
  loc_B11CA3: FLdPr var_100
  loc_B11CA6: LateIdCallSt
  loc_B11CAE: LitVarI4
  loc_B11CB6: PopAdLdVar
  loc_B11CB7: LitVarI4
  loc_B11CBF: PopAdLdVar
  loc_B11CC0: FLdPr var_100
  loc_B11CC3: LateIdCallSt
  loc_B11CCB: LitVarI4
  loc_B11CD3: PopAdLdVar
  loc_B11CD4: LitVarI4
  loc_B11CDC: PopAdLdVar
  loc_B11CDD: LitVarStr var_EC, "Facilidad"
  loc_B11CE2: PopAdLdVar
  loc_B11CE3: FLdPr var_100
  loc_B11CE6: LateIdCallSt
  loc_B11CEE: LitVarI4
  loc_B11CF6: PopAdLdVar
  loc_B11CF7: LitVarI4
  loc_B11CFF: PopAdLdVar
  loc_B11D00: LitVarStr var_EC, "Cuota"
  loc_B11D05: PopAdLdVar
  loc_B11D06: FLdPr var_100
  loc_B11D09: LateIdCallSt
  loc_B11D11: LitVarI4
  loc_B11D19: PopAdLdVar
  loc_B11D1A: LitVarI4
  loc_B11D22: PopAdLdVar
  loc_B11D23: LitVarStr var_EC, "Total"
  loc_B11D28: PopAdLdVar
  loc_B11D29: FLdPr var_100
  loc_B11D2C: LateIdCallSt
  loc_B11D34: LitVarI4
  loc_B11D3C: PopAdLdVar
  loc_B11D3D: LitVarI4
  loc_B11D45: PopAdLdVar
  loc_B11D46: LitVarStr var_EC, "Sel"
  loc_B11D4B: PopAdLdVar
  loc_B11D4C: FLdPr var_100
  loc_B11D4F: LateIdCallSt
  loc_B11D57: LitNothing
  loc_B11D59: FStAd var_100 
  loc_B11D5D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA54C
  'Data Table: 47F2B0
  loc_9BA538: ILdI2 KeyCode
  loc_9BA53B: CI4UI1
  loc_9BA53C: LitI4 &H78
  loc_9BA541: EqI4
  loc_9BA542: BranchF loc_9BA54A
  loc_9BA545: Call SalirCmd_Click()
  loc_9BA54A: ExitProcHresult
End Sub

Private Function Proc_335_12_AE8784() 'AE8784
  'Data Table: 47F2B0
  loc_AE85FC: FLdPr Me
  loc_AE85FF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AE8602: FStAdFunc var_88
  loc_AE8605: FLdPr var_88
  loc_AE8608: LateIdCall
  loc_AE8610: LitVarI4
  loc_AE8618: PopAdLdVar
  loc_AE8619: FLdPr var_88
  loc_AE861C: LateIdSt
  loc_AE8621: LitVarI4
  loc_AE8629: PopAdLdVar
  loc_AE862A: LitVarI4
  loc_AE8632: PopAdLdVar
  loc_AE8633: LitVarStr var_D8, "Facilidad"
  loc_AE8638: PopAdLdVar
  loc_AE8639: FLdPr var_88
  loc_AE863C: LateIdCallSt
  loc_AE8644: LitVarI4
  loc_AE864C: PopAdLdVar
  loc_AE864D: LitVarI4
  loc_AE8655: PopAdLdVar
  loc_AE8656: LitVarStr var_D8, "Cuota"
  loc_AE865B: PopAdLdVar
  loc_AE865C: FLdPr var_88
  loc_AE865F: LateIdCallSt
  loc_AE8667: LitVarI4
  loc_AE866F: PopAdLdVar
  loc_AE8670: LitVarI4
  loc_AE8678: PopAdLdVar
  loc_AE8679: LitVarStr var_D8, "Total"
  loc_AE867E: PopAdLdVar
  loc_AE867F: FLdPr var_88
  loc_AE8682: LateIdCallSt
  loc_AE868A: LitVarI4
  loc_AE8692: PopAdLdVar
  loc_AE8693: LitVarI4
  loc_AE869B: PopAdLdVar
  loc_AE869C: LitVarStr var_D8, "Sel"
  loc_AE86A1: PopAdLdVar
  loc_AE86A2: FLdPr var_88
  loc_AE86A5: LateIdCallSt
  loc_AE86AD: FLdPr var_88
  loc_AE86B0: LateIdCall
  loc_AE86B8: LitNothing
  loc_AE86BA: FStAd var_88 
  loc_AE86BE: FLdPr Me
  loc_AE86C1: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_AE86C4: FStAdFunc var_EC
  loc_AE86C7: FLdPr var_EC
  loc_AE86CA: LateIdCall
  loc_AE86D2: LitVarI4
  loc_AE86DA: PopAdLdVar
  loc_AE86DB: FLdPr var_EC
  loc_AE86DE: LateIdSt
  loc_AE86E3: LitVarI4
  loc_AE86EB: PopAdLdVar
  loc_AE86EC: LitVarI4
  loc_AE86F4: PopAdLdVar
  loc_AE86F5: LitVarStr var_D8, "Facilidad"
  loc_AE86FA: PopAdLdVar
  loc_AE86FB: FLdPr var_EC
  loc_AE86FE: LateIdCallSt
  loc_AE8706: LitVarI4
  loc_AE870E: PopAdLdVar
  loc_AE870F: LitVarI4
  loc_AE8717: PopAdLdVar
  loc_AE8718: LitVarStr var_D8, "Cuota"
  loc_AE871D: PopAdLdVar
  loc_AE871E: FLdPr var_EC
  loc_AE8721: LateIdCallSt
  loc_AE8729: LitVarI4
  loc_AE8731: PopAdLdVar
  loc_AE8732: LitVarI4
  loc_AE873A: PopAdLdVar
  loc_AE873B: LitVarStr var_D8, "Total"
  loc_AE8740: PopAdLdVar
  loc_AE8741: FLdPr var_EC
  loc_AE8744: LateIdCallSt
  loc_AE874C: LitVarI4
  loc_AE8754: PopAdLdVar
  loc_AE8755: LitVarI4
  loc_AE875D: PopAdLdVar
  loc_AE875E: LitVarStr var_D8, "Sel"
  loc_AE8763: PopAdLdVar
  loc_AE8764: FLdPr var_EC
  loc_AE8767: LateIdCallSt
  loc_AE876F: FLdPr var_EC
  loc_AE8772: LateIdCall
  loc_AE877A: LitNothing
  loc_AE877C: FStAd var_EC 
  loc_AE8780: ExitProcHresult
End Function
