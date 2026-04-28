VERSION 5.00
Begin VB.Form mdlImporte
  Caption = "Importes Hotel"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "mdlImporte.frx":0000
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
  Begin VB.TextBox ReteIvaTxt
    Left = 2280
    Top = 2280
    Width = 1815
    Height = 420
    TabIndex = 9
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox PercIvaTxt
    Left = 2280
    Top = 1800
    Width = 1815
    Height = 420
    TabIndex = 7
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox Impo27Txt
    Left = 2280
    Top = 1320
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
    Top = 840
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
    TabIndex = 11
  End
  Begin VB.CommandButton cmdAceptar
    Caption = "Aceptar"
    Left = 480
    Top = 3000
    Width = 2055
    Height = 495
    TabIndex = 10
  End
  Begin VB.TextBox Impo105Txt
    Left = 2280
    Top = 360
    Width = 1815
    Height = 420
    TabIndex = 1
    MaxLength = 14
    DataField = "ImpoImpu"
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.Label Label5
    Caption = "RETENCION IVA:"
    Left = 285
    Top = 2280
    Width = 1920
    Height = 300
    TabIndex = 8
    AutoSize = -1  'True
  End
  Begin VB.Label Label4
    Caption = "PERCEPCION IVA:"
    Left = 120
    Top = 1800
    Width = 2085
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "IVA 27,0%:"
    Left = 1005
    Top = 1320
    Width = 1200
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
  End
  Begin VB.Label Label2
    Caption = "IVA 21,0%:"
    Left = 1005
    Top = 840
    Width = 1200
    Height = 300
    TabIndex = 2
    AutoSize = -1  'True
  End
  Begin VB.Label Label1
    Caption = "IVA 10,5%:"
    Left = 1005
    Top = 360
    Width = 1200
    Height = 300
    TabIndex = 0
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "mdlImporte"

Public ImpoLimite As Double
Public Impo105 As Double
Public Impo21 As Double
Public Impo27 As Double
Public ImpoPercIva As Double
Public ImpoReteIva As Double


Private Sub cmdCancelar_Click() '98A1F0
  'Data Table: 432B0C
  loc_98A1AC: LitI2_Byte 0
  loc_98A1AE: CR8I2
  loc_98A1AF: FLdPr Me
  loc_98A1B2: MemStFPR8 Impo105
  loc_98A1B5: LitI2_Byte 0
  loc_98A1B7: CR8I2
  loc_98A1B8: FLdPr Me
  loc_98A1BB: MemStFPR8 Impo21
  loc_98A1BE: LitI2_Byte 0
  loc_98A1C0: CR8I2
  loc_98A1C1: FLdPr Me
  loc_98A1C4: MemStFPR8 Impo27
  loc_98A1C7: LitI2_Byte 0
  loc_98A1C9: CR8I2
  loc_98A1CA: FLdPr Me
  loc_98A1CD: MemStFPR8 ImpoPercIva
  loc_98A1D0: LitI2_Byte 0
  loc_98A1D2: CR8I2
  loc_98A1D3: FLdPr Me
  loc_98A1D6: MemStFPR8 ImpoReteIva
  loc_98A1D9: ILdRf Me
  loc_98A1DC: FStAdNoPop
  loc_98A1E0: ImpAdLdRf MemVar_C44F9C
  loc_98A1E3: NewIfNullPr Me
  loc_98A1E6: Me.Global.Unload from_stack_1
  loc_98A1EB: FFree1Ad var_88
  loc_98A1EE: ExitProcHresult
End Sub

Private Sub cmdAceptar_Click() 'A41D90
  'Data Table: 432B0C
  loc_A41B3C: FLdRfVar var_8C
  loc_A41B3F: FLdPr Me
  loc_A41B42: VCallAd Control_ID_Impo105Txt
  loc_A41B45: FStAdFunc var_88
  loc_A41B48: FLdPr var_88
  loc_A41B4B:  = Me.Text
  loc_A41B50: FLdRfVar var_94
  loc_A41B53: FLdPr Me
  loc_A41B56: VCallAd Control_ID_Impo105Txt
  loc_A41B59: FStAdFunc var_90
  loc_A41B5C: FLdPr var_90
  loc_A41B5F:  = Me.Text
  loc_A41B64: FLdZeroAd var_94
  loc_A41B67: CVarStr var_D4
  loc_A41B6A: LitVarI2 var_C4, 0
  loc_A41B6F: ILdRf var_8C
  loc_A41B72: LitStr vbNullString
  loc_A41B75: EqStr
  loc_A41B77: CVarBoolI2 var_A4
  loc_A41B7B: FLdRfVar var_E4
  loc_A41B7E: ImpAdCallFPR4  = IIf(, , )
  loc_A41B83: FLdRfVar var_E4
  loc_A41B86: CR4Var
  loc_A41B87: FLdPr Me
  loc_A41B8A: MemStFPR8 Impo105
  loc_A41B8D: FFree1Str var_8C
  loc_A41B90: FFreeAd var_88 = ""
  loc_A41B97: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A41BA2: FLdRfVar var_8C
  loc_A41BA5: FLdPr Me
  loc_A41BA8: VCallAd Control_ID_Impo21Txt
  loc_A41BAB: FStAdFunc var_88
  loc_A41BAE: FLdPr var_88
  loc_A41BB1:  = Me.Text
  loc_A41BB6: FLdRfVar var_94
  loc_A41BB9: FLdPr Me
  loc_A41BBC: VCallAd Control_ID_Impo21Txt
  loc_A41BBF: FStAdFunc var_90
  loc_A41BC2: FLdPr var_90
  loc_A41BC5:  = Me.Text
  loc_A41BCA: FLdZeroAd var_94
  loc_A41BCD: CVarStr var_D4
  loc_A41BD0: LitVarI2 var_C4, 0
  loc_A41BD5: ILdRf var_8C
  loc_A41BD8: LitStr vbNullString
  loc_A41BDB: EqStr
  loc_A41BDD: CVarBoolI2 var_A4
  loc_A41BE1: FLdRfVar var_E4
  loc_A41BE4: ImpAdCallFPR4  = IIf(, , )
  loc_A41BE9: FLdRfVar var_E4
  loc_A41BEC: CR4Var
  loc_A41BED: FLdPr Me
  loc_A41BF0: MemStFPR8 Impo21
  loc_A41BF3: FFree1Str var_8C
  loc_A41BF6: FFreeAd var_88 = ""
  loc_A41BFD: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A41C08: FLdRfVar var_8C
  loc_A41C0B: FLdPr Me
  loc_A41C0E: VCallAd Control_ID_Impo27Txt
  loc_A41C11: FStAdFunc var_88
  loc_A41C14: FLdPr var_88
  loc_A41C17:  = Me.Text
  loc_A41C1C: FLdRfVar var_94
  loc_A41C1F: FLdPr Me
  loc_A41C22: VCallAd Control_ID_Impo27Txt
  loc_A41C25: FStAdFunc var_90
  loc_A41C28: FLdPr var_90
  loc_A41C2B:  = Me.Text
  loc_A41C30: FLdZeroAd var_94
  loc_A41C33: CVarStr var_D4
  loc_A41C36: LitVarI2 var_C4, 0
  loc_A41C3B: ILdRf var_8C
  loc_A41C3E: LitStr vbNullString
  loc_A41C41: EqStr
  loc_A41C43: CVarBoolI2 var_A4
  loc_A41C47: FLdRfVar var_E4
  loc_A41C4A: ImpAdCallFPR4  = IIf(, , )
  loc_A41C4F: FLdRfVar var_E4
  loc_A41C52: CR4Var
  loc_A41C53: FLdPr Me
  loc_A41C56: MemStFPR8 Impo27
  loc_A41C59: FFree1Str var_8C
  loc_A41C5C: FFreeAd var_88 = ""
  loc_A41C63: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A41C6E: FLdRfVar var_8C
  loc_A41C71: FLdPr Me
  loc_A41C74: VCallAd Control_ID_PercIvaTxt
  loc_A41C77: FStAdFunc var_88
  loc_A41C7A: FLdPr var_88
  loc_A41C7D:  = Me.Text
  loc_A41C82: FLdRfVar var_94
  loc_A41C85: FLdPr Me
  loc_A41C88: VCallAd Control_ID_PercIvaTxt
  loc_A41C8B: FStAdFunc var_90
  loc_A41C8E: FLdPr var_90
  loc_A41C91:  = Me.Text
  loc_A41C96: FLdZeroAd var_94
  loc_A41C99: CVarStr var_D4
  loc_A41C9C: LitVarI2 var_C4, 0
  loc_A41CA1: ILdRf var_8C
  loc_A41CA4: LitStr vbNullString
  loc_A41CA7: EqStr
  loc_A41CA9: CVarBoolI2 var_A4
  loc_A41CAD: FLdRfVar var_E4
  loc_A41CB0: ImpAdCallFPR4  = IIf(, , )
  loc_A41CB5: FLdRfVar var_E4
  loc_A41CB8: CR4Var
  loc_A41CB9: FLdPr Me
  loc_A41CBC: MemStFPR8 ImpoPercIva
  loc_A41CBF: FFree1Str var_8C
  loc_A41CC2: FFreeAd var_88 = ""
  loc_A41CC9: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A41CD4: FLdRfVar var_8C
  loc_A41CD7: FLdPr Me
  loc_A41CDA: VCallAd Control_ID_ReteIvaTxt
  loc_A41CDD: FStAdFunc var_88
  loc_A41CE0: FLdPr var_88
  loc_A41CE3:  = Me.Text
  loc_A41CE8: FLdRfVar var_94
  loc_A41CEB: FLdPr Me
  loc_A41CEE: VCallAd Control_ID_ReteIvaTxt
  loc_A41CF1: FStAdFunc var_90
  loc_A41CF4: FLdPr var_90
  loc_A41CF7:  = Me.Text
  loc_A41CFC: FLdZeroAd var_94
  loc_A41CFF: CVarStr var_D4
  loc_A41D02: LitVarI2 var_C4, 0
  loc_A41D07: ILdRf var_8C
  loc_A41D0A: LitStr vbNullString
  loc_A41D0D: EqStr
  loc_A41D0F: CVarBoolI2 var_A4
  loc_A41D13: FLdRfVar var_E4
  loc_A41D16: ImpAdCallFPR4  = IIf(, , )
  loc_A41D1B: FLdRfVar var_E4
  loc_A41D1E: CR4Var
  loc_A41D1F: FLdPr Me
  loc_A41D22: MemStFPR8 ImpoReteIva
  loc_A41D25: FFree1Str var_8C
  loc_A41D28: FFreeAd var_88 = ""
  loc_A41D2F: FFreeVar var_A4 = "": var_C4 = "": var_D4 = ""
  loc_A41D3A: FLdPr Me
  loc_A41D3D: MemLdFPR8 Impo105
  loc_A41D40: FLdPr Me
  loc_A41D43: MemLdFPR8 Impo21
  loc_A41D46: AddR8
  loc_A41D47: FLdPr Me
  loc_A41D4A: MemLdFPR8 Impo27
  loc_A41D4D: AddR8
  loc_A41D4E: FLdPr Me
  loc_A41D51: MemLdFPR8 ImpoPercIva
  loc_A41D54: AddR8
  loc_A41D55: FLdPr Me
  loc_A41D58: MemLdFPR8 ImpoReteIva
  loc_A41D5B: AddR8
  loc_A41D5C: CR8R8
  loc_A41D5D: FLdPr Me
  loc_A41D60: MemLdFPR8 ImpoLimite
  loc_A41D63: GtR4
  loc_A41D64: BranchF loc_A41D77
  loc_A41D67: LitI4 0
  loc_A41D6C: LitStr "Los importes ingresados superan el devengado. Verifique..."
  loc_A41D6F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A41D74: Branch loc_A41D8C
  loc_A41D77: ILdRf Me
  loc_A41D7A: FStAdNoPop
  loc_A41D7E: ImpAdLdRf MemVar_C44F9C
  loc_A41D81: NewIfNullPr Me
  loc_A41D84: Me.Global.Unload from_stack_1
  loc_A41D89: FFree1Ad var_88
  loc_A41D8C: ExitProcHresult
End Sub

Private Sub PercIvaTxt_GotFocus() '951FA8
  'Data Table: 432B0C
  loc_951F94: FLdPr Me
  loc_951F97: VCallAd Control_ID_PercIvaTxt
  loc_951F9A: CVarAd
  loc_951F9E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951FA3: FFree1Var var_94 = ""
  loc_951FA6: ExitProcHresult
End Sub

Private Sub PercIvaTxt_KeyPress(KeyAscii As Integer) '97D260
  'Data Table: 432B0C
  loc_97D22C: LitStr "1234567890,."
  loc_97D22F: FStStrCopy var_88
  loc_97D232: FLdRfVar var_88
  loc_97D235: ILdRf KeyAscii
  loc_97D238: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97D23D: IStI2 KeyAscii
  loc_97D240: FFree1Str var_88
  loc_97D243: ILdI2 KeyAscii
  loc_97D246: LitStr "."
  loc_97D249: ImpAdCallI2 Asc()
  loc_97D24E: EqI2
  loc_97D24F: BranchF loc_97D25D
  loc_97D252: LitStr ","
  loc_97D255: ImpAdCallI2 Asc()
  loc_97D25A: IStI2 KeyAscii
  loc_97D25D: ExitProcHresult
End Sub

Private Sub PercIvaTxt_Validate(Cancel As Boolean) '9D4014
  'Data Table: 432B0C
  loc_9D3F34: FLdRfVar var_8A
  loc_9D3F37: FLdPr Me
  loc_9D3F3A: VCallAd Control_ID_cmdCancelar
  loc_9D3F3D: FStAdFunc var_88
  loc_9D3F40: FLdPr var_88
  loc_9D3F43:  = Me.Value
  loc_9D3F48: FLdI2 var_8A
  loc_9D3F4B: NotI4
  loc_9D3F4C: FLdRfVar var_92
  loc_9D3F4F: FLdPr Me
  loc_9D3F52: VCallAd Control_ID_PercIvaTxt
  loc_9D3F55: FStAdFunc var_90
  loc_9D3F58: FLdPr var_90
  loc_9D3F5B:  = Me.Enabled
  loc_9D3F60: FLdI2 var_92
  loc_9D3F63: AndI4
  loc_9D3F64: FLdRfVar var_9C
  loc_9D3F67: FLdPr Me
  loc_9D3F6A: VCallAd Control_ID_PercIvaTxt
  loc_9D3F6D: FStAdFunc var_98
  loc_9D3F70: FLdPr var_98
  loc_9D3F73:  = Me.Text
  loc_9D3F78: ILdRf var_9C
  loc_9D3F7B: LitStr vbNullString
  loc_9D3F7E: NeStr
  loc_9D3F80: AndI4
  loc_9D3F81: FFree1Str var_9C
  loc_9D3F84: FFreeAd var_88 = "": var_90 = ""
  loc_9D3F8D: BranchF loc_9D4012
  loc_9D3F90: FLdRfVar var_9C
  loc_9D3F93: FLdPr Me
  loc_9D3F96: VCallAd Control_ID_PercIvaTxt
  loc_9D3F99: FStAdFunc var_88
  loc_9D3F9C: FLdPr var_88
  loc_9D3F9F:  = Me.Text
  loc_9D3FA4: FLdPr Me
  loc_9D3FA7: MemLdFPR8 ImpoLimite
  loc_9D3FAA: CStrR8
  loc_9D3FAC: FStStrNoPop var_A0
  loc_9D3FAF: LitI2_Byte &HFF
  loc_9D3FB1: LitI2_Byte 0
  loc_9D3FB3: LitI2_Byte 0
  loc_9D3FB5: ILdRf var_9C
  loc_9D3FB8: LitStr "Importe"
  loc_9D3FBB: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D3FC0: FStStrNoPop var_A4
  loc_9D3FC3: FLdPr Me
  loc_9D3FC6: MemStStrCopy
  loc_9D3FCA: FFreeStr var_9C = "": var_A0 = ""
  loc_9D3FD3: FFree1Ad var_88
  loc_9D3FD6: FLdPr Me
  loc_9D3FD9: VCallAd Control_ID_PercIvaTxt
  loc_9D3FDC: FStAdFunc var_A8
  loc_9D3FDF: LitNothing
  loc_9D3FE1: CastAd
  loc_9D3FE4: FStAdFunc var_98
  loc_9D3FE7: FLdRfVar var_98
  loc_9D3FEA: FLdZeroAd var_A8
  loc_9D3FED: FStAdFuncNoPop
  loc_9D3FF0: CastAd
  loc_9D3FF3: FStAdFunc var_90
  loc_9D3FF6: FLdRfVar var_90
  loc_9D3FF9: FLdPr Me
  loc_9D3FFC: MemLdRfVar from_stack_1.global_100
  loc_9D3FFF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D4004: IStI2 Cancel
  loc_9D4007: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D4012: ExitProcHresult
End Sub

Private Sub ReteIvaTxt_GotFocus() '951E40
  'Data Table: 432B0C
  loc_951E2C: FLdPr Me
  loc_951E2F: VCallAd Control_ID_ReteIvaTxt
  loc_951E32: CVarAd
  loc_951E36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951E3B: FFree1Var var_94 = ""
  loc_951E3E: ExitProcHresult
End Sub

Private Sub ReteIvaTxt_KeyPress(KeyAscii As Integer) '980458
  'Data Table: 432B0C
  loc_980424: LitStr "1234567890,."
  loc_980427: FStStrCopy var_88
  loc_98042A: FLdRfVar var_88
  loc_98042D: ILdRf KeyAscii
  loc_980430: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_980435: IStI2 KeyAscii
  loc_980438: FFree1Str var_88
  loc_98043B: ILdI2 KeyAscii
  loc_98043E: LitStr "."
  loc_980441: ImpAdCallI2 Asc()
  loc_980446: EqI2
  loc_980447: BranchF loc_980455
  loc_98044A: LitStr ","
  loc_98044D: ImpAdCallI2 Asc()
  loc_980452: IStI2 KeyAscii
  loc_980455: ExitProcHresult
End Sub

Private Sub ReteIvaTxt_Validate(Cancel As Boolean) '9D4398
  'Data Table: 432B0C
  loc_9D42B8: FLdRfVar var_8A
  loc_9D42BB: FLdPr Me
  loc_9D42BE: VCallAd Control_ID_cmdCancelar
  loc_9D42C1: FStAdFunc var_88
  loc_9D42C4: FLdPr var_88
  loc_9D42C7:  = Me.Value
  loc_9D42CC: FLdI2 var_8A
  loc_9D42CF: NotI4
  loc_9D42D0: FLdRfVar var_92
  loc_9D42D3: FLdPr Me
  loc_9D42D6: VCallAd Control_ID_ReteIvaTxt
  loc_9D42D9: FStAdFunc var_90
  loc_9D42DC: FLdPr var_90
  loc_9D42DF:  = Me.Enabled
  loc_9D42E4: FLdI2 var_92
  loc_9D42E7: AndI4
  loc_9D42E8: FLdRfVar var_9C
  loc_9D42EB: FLdPr Me
  loc_9D42EE: VCallAd Control_ID_ReteIvaTxt
  loc_9D42F1: FStAdFunc var_98
  loc_9D42F4: FLdPr var_98
  loc_9D42F7:  = Me.Text
  loc_9D42FC: ILdRf var_9C
  loc_9D42FF: LitStr vbNullString
  loc_9D4302: NeStr
  loc_9D4304: AndI4
  loc_9D4305: FFree1Str var_9C
  loc_9D4308: FFreeAd var_88 = "": var_90 = ""
  loc_9D4311: BranchF loc_9D4396
  loc_9D4314: FLdRfVar var_9C
  loc_9D4317: FLdPr Me
  loc_9D431A: VCallAd Control_ID_ReteIvaTxt
  loc_9D431D: FStAdFunc var_88
  loc_9D4320: FLdPr var_88
  loc_9D4323:  = Me.Text
  loc_9D4328: FLdPr Me
  loc_9D432B: MemLdFPR8 ImpoLimite
  loc_9D432E: CStrR8
  loc_9D4330: FStStrNoPop var_A0
  loc_9D4333: LitI2_Byte &HFF
  loc_9D4335: LitI2_Byte 0
  loc_9D4337: LitI2_Byte 0
  loc_9D4339: ILdRf var_9C
  loc_9D433C: LitStr "Importe"
  loc_9D433F: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D4344: FStStrNoPop var_A4
  loc_9D4347: FLdPr Me
  loc_9D434A: MemStStrCopy
  loc_9D434E: FFreeStr var_9C = "": var_A0 = ""
  loc_9D4357: FFree1Ad var_88
  loc_9D435A: FLdPr Me
  loc_9D435D: VCallAd Control_ID_ReteIvaTxt
  loc_9D4360: FStAdFunc var_A8
  loc_9D4363: LitNothing
  loc_9D4365: CastAd
  loc_9D4368: FStAdFunc var_98
  loc_9D436B: FLdRfVar var_98
  loc_9D436E: FLdZeroAd var_A8
  loc_9D4371: FStAdFuncNoPop
  loc_9D4374: CastAd
  loc_9D4377: FStAdFunc var_90
  loc_9D437A: FLdRfVar var_90
  loc_9D437D: FLdPr Me
  loc_9D4380: MemLdRfVar from_stack_1.global_100
  loc_9D4383: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D4388: IStI2 Cancel
  loc_9D438B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D4396: ExitProcHresult
End Sub

Private Sub Impo21Txt_GotFocus() '94EC30
  'Data Table: 432B0C
  loc_94EC1C: FLdPr Me
  loc_94EC1F: VCallAd Control_ID_Impo21Txt
  loc_94EC22: CVarAd
  loc_94EC26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EC2B: FFree1Var var_94 = ""
  loc_94EC2E: ExitProcHresult
End Sub

Private Sub Impo21Txt_KeyPress(KeyAscii As Integer) '97D400
  'Data Table: 432B0C
  loc_97D3CC: LitStr "1234567890,."
  loc_97D3CF: FStStrCopy var_88
  loc_97D3D2: FLdRfVar var_88
  loc_97D3D5: ILdRf KeyAscii
  loc_97D3D8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97D3DD: IStI2 KeyAscii
  loc_97D3E0: FFree1Str var_88
  loc_97D3E3: ILdI2 KeyAscii
  loc_97D3E6: LitStr "."
  loc_97D3E9: ImpAdCallI2 Asc()
  loc_97D3EE: EqI2
  loc_97D3EF: BranchF loc_97D3FD
  loc_97D3F2: LitStr ","
  loc_97D3F5: ImpAdCallI2 Asc()
  loc_97D3FA: IStI2 KeyAscii
  loc_97D3FD: ExitProcHresult
End Sub

Private Sub Impo21Txt_Validate(Cancel As Boolean) '9D37E0
  'Data Table: 432B0C
  loc_9D3700: FLdRfVar var_8A
  loc_9D3703: FLdPr Me
  loc_9D3706: VCallAd Control_ID_cmdCancelar
  loc_9D3709: FStAdFunc var_88
  loc_9D370C: FLdPr var_88
  loc_9D370F:  = Me.Value
  loc_9D3714: FLdI2 var_8A
  loc_9D3717: NotI4
  loc_9D3718: FLdRfVar var_92
  loc_9D371B: FLdPr Me
  loc_9D371E: VCallAd Control_ID_Impo21Txt
  loc_9D3721: FStAdFunc var_90
  loc_9D3724: FLdPr var_90
  loc_9D3727:  = Me.Enabled
  loc_9D372C: FLdI2 var_92
  loc_9D372F: AndI4
  loc_9D3730: FLdRfVar var_9C
  loc_9D3733: FLdPr Me
  loc_9D3736: VCallAd Control_ID_Impo21Txt
  loc_9D3739: FStAdFunc var_98
  loc_9D373C: FLdPr var_98
  loc_9D373F:  = Me.Text
  loc_9D3744: ILdRf var_9C
  loc_9D3747: LitStr vbNullString
  loc_9D374A: NeStr
  loc_9D374C: AndI4
  loc_9D374D: FFree1Str var_9C
  loc_9D3750: FFreeAd var_88 = "": var_90 = ""
  loc_9D3759: BranchF loc_9D37DE
  loc_9D375C: FLdRfVar var_9C
  loc_9D375F: FLdPr Me
  loc_9D3762: VCallAd Control_ID_Impo21Txt
  loc_9D3765: FStAdFunc var_88
  loc_9D3768: FLdPr var_88
  loc_9D376B:  = Me.Text
  loc_9D3770: FLdPr Me
  loc_9D3773: MemLdFPR8 ImpoLimite
  loc_9D3776: CStrR8
  loc_9D3778: FStStrNoPop var_A0
  loc_9D377B: LitI2_Byte &HFF
  loc_9D377D: LitI2_Byte 0
  loc_9D377F: LitI2_Byte 0
  loc_9D3781: ILdRf var_9C
  loc_9D3784: LitStr "Importe"
  loc_9D3787: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D378C: FStStrNoPop var_A4
  loc_9D378F: FLdPr Me
  loc_9D3792: MemStStrCopy
  loc_9D3796: FFreeStr var_9C = "": var_A0 = ""
  loc_9D379F: FFree1Ad var_88
  loc_9D37A2: FLdPr Me
  loc_9D37A5: VCallAd Control_ID_Impo21Txt
  loc_9D37A8: FStAdFunc var_A8
  loc_9D37AB: LitNothing
  loc_9D37AD: CastAd
  loc_9D37B0: FStAdFunc var_98
  loc_9D37B3: FLdRfVar var_98
  loc_9D37B6: FLdZeroAd var_A8
  loc_9D37B9: FStAdFuncNoPop
  loc_9D37BC: CastAd
  loc_9D37BF: FStAdFunc var_90
  loc_9D37C2: FLdRfVar var_90
  loc_9D37C5: FLdPr Me
  loc_9D37C8: MemLdRfVar from_stack_1.global_100
  loc_9D37CB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D37D0: IStI2 Cancel
  loc_9D37D3: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D37DE: ExitProcHresult
End Sub

Private Sub Impo105Txt_GotFocus() '94ED08
  'Data Table: 432B0C
  loc_94ECF4: FLdPr Me
  loc_94ECF7: VCallAd Control_ID_Impo105Txt
  loc_94ECFA: CVarAd
  loc_94ECFE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94ED03: FFree1Var var_94 = ""
  loc_94ED06: ExitProcHresult
End Sub

Private Sub Impo105Txt_KeyPress(KeyAscii As Integer) '9809A0
  'Data Table: 432B0C
  loc_98096C: LitStr "1234567890,."
  loc_98096F: FStStrCopy var_88
  loc_980972: FLdRfVar var_88
  loc_980975: ILdRf KeyAscii
  loc_980978: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98097D: IStI2 KeyAscii
  loc_980980: FFree1Str var_88
  loc_980983: ILdI2 KeyAscii
  loc_980986: LitStr "."
  loc_980989: ImpAdCallI2 Asc()
  loc_98098E: EqI2
  loc_98098F: BranchF loc_98099D
  loc_980992: LitStr ","
  loc_980995: ImpAdCallI2 Asc()
  loc_98099A: IStI2 KeyAscii
  loc_98099D: ExitProcHresult
End Sub

Private Sub Impo105Txt_Validate(Cancel As Boolean) '9D264C
  'Data Table: 432B0C
  loc_9D256C: FLdRfVar var_8A
  loc_9D256F: FLdPr Me
  loc_9D2572: VCallAd Control_ID_cmdCancelar
  loc_9D2575: FStAdFunc var_88
  loc_9D2578: FLdPr var_88
  loc_9D257B:  = Me.Value
  loc_9D2580: FLdI2 var_8A
  loc_9D2583: NotI4
  loc_9D2584: FLdRfVar var_92
  loc_9D2587: FLdPr Me
  loc_9D258A: VCallAd Control_ID_Impo105Txt
  loc_9D258D: FStAdFunc var_90
  loc_9D2590: FLdPr var_90
  loc_9D2593:  = Me.Enabled
  loc_9D2598: FLdI2 var_92
  loc_9D259B: AndI4
  loc_9D259C: FLdRfVar var_9C
  loc_9D259F: FLdPr Me
  loc_9D25A2: VCallAd Control_ID_Impo105Txt
  loc_9D25A5: FStAdFunc var_98
  loc_9D25A8: FLdPr var_98
  loc_9D25AB:  = Me.Text
  loc_9D25B0: ILdRf var_9C
  loc_9D25B3: LitStr vbNullString
  loc_9D25B6: NeStr
  loc_9D25B8: AndI4
  loc_9D25B9: FFree1Str var_9C
  loc_9D25BC: FFreeAd var_88 = "": var_90 = ""
  loc_9D25C5: BranchF loc_9D264A
  loc_9D25C8: FLdRfVar var_9C
  loc_9D25CB: FLdPr Me
  loc_9D25CE: VCallAd Control_ID_Impo105Txt
  loc_9D25D1: FStAdFunc var_88
  loc_9D25D4: FLdPr var_88
  loc_9D25D7:  = Me.Text
  loc_9D25DC: FLdPr Me
  loc_9D25DF: MemLdFPR8 ImpoLimite
  loc_9D25E2: CStrR8
  loc_9D25E4: FStStrNoPop var_A0
  loc_9D25E7: LitI2_Byte &HFF
  loc_9D25E9: LitI2_Byte 0
  loc_9D25EB: LitI2_Byte 0
  loc_9D25ED: ILdRf var_9C
  loc_9D25F0: LitStr "Importe"
  loc_9D25F3: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D25F8: FStStrNoPop var_A4
  loc_9D25FB: FLdPr Me
  loc_9D25FE: MemStStrCopy
  loc_9D2602: FFreeStr var_9C = "": var_A0 = ""
  loc_9D260B: FFree1Ad var_88
  loc_9D260E: FLdPr Me
  loc_9D2611: VCallAd Control_ID_Impo105Txt
  loc_9D2614: FStAdFunc var_A8
  loc_9D2617: LitNothing
  loc_9D2619: CastAd
  loc_9D261C: FStAdFunc var_98
  loc_9D261F: FLdRfVar var_98
  loc_9D2622: FLdZeroAd var_A8
  loc_9D2625: FStAdFuncNoPop
  loc_9D2628: CastAd
  loc_9D262B: FStAdFunc var_90
  loc_9D262E: FLdRfVar var_90
  loc_9D2631: FLdPr Me
  loc_9D2634: MemLdRfVar from_stack_1.global_100
  loc_9D2637: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D263C: IStI2 Cancel
  loc_9D263F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D264A: ExitProcHresult
End Sub

Private Sub Impo27Txt_GotFocus() '94ED98
  'Data Table: 432B0C
  loc_94ED84: FLdPr Me
  loc_94ED87: VCallAd Control_ID_Impo27Txt
  loc_94ED8A: CVarAd
  loc_94ED8E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94ED93: FFree1Var var_94 = ""
  loc_94ED96: ExitProcHresult
End Sub

Private Sub Impo27Txt_KeyPress(KeyAscii As Integer) '9808D0
  'Data Table: 432B0C
  loc_98089C: LitStr "1234567890,."
  loc_98089F: FStStrCopy var_88
  loc_9808A2: FLdRfVar var_88
  loc_9808A5: ILdRf KeyAscii
  loc_9808A8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9808AD: IStI2 KeyAscii
  loc_9808B0: FFree1Str var_88
  loc_9808B3: ILdI2 KeyAscii
  loc_9808B6: LitStr "."
  loc_9808B9: ImpAdCallI2 Asc()
  loc_9808BE: EqI2
  loc_9808BF: BranchF loc_9808CD
  loc_9808C2: LitStr ","
  loc_9808C5: ImpAdCallI2 Asc()
  loc_9808CA: IStI2 KeyAscii
  loc_9808CD: ExitProcHresult
End Sub

Private Sub Impo27Txt_Validate(Cancel As Boolean) '9D426C
  'Data Table: 432B0C
  loc_9D418C: FLdRfVar var_8A
  loc_9D418F: FLdPr Me
  loc_9D4192: VCallAd Control_ID_cmdCancelar
  loc_9D4195: FStAdFunc var_88
  loc_9D4198: FLdPr var_88
  loc_9D419B:  = Me.Value
  loc_9D41A0: FLdI2 var_8A
  loc_9D41A3: NotI4
  loc_9D41A4: FLdRfVar var_92
  loc_9D41A7: FLdPr Me
  loc_9D41AA: VCallAd Control_ID_Impo27Txt
  loc_9D41AD: FStAdFunc var_90
  loc_9D41B0: FLdPr var_90
  loc_9D41B3:  = Me.Enabled
  loc_9D41B8: FLdI2 var_92
  loc_9D41BB: AndI4
  loc_9D41BC: FLdRfVar var_9C
  loc_9D41BF: FLdPr Me
  loc_9D41C2: VCallAd Control_ID_Impo27Txt
  loc_9D41C5: FStAdFunc var_98
  loc_9D41C8: FLdPr var_98
  loc_9D41CB:  = Me.Text
  loc_9D41D0: ILdRf var_9C
  loc_9D41D3: LitStr vbNullString
  loc_9D41D6: NeStr
  loc_9D41D8: AndI4
  loc_9D41D9: FFree1Str var_9C
  loc_9D41DC: FFreeAd var_88 = "": var_90 = ""
  loc_9D41E5: BranchF loc_9D426A
  loc_9D41E8: FLdRfVar var_9C
  loc_9D41EB: FLdPr Me
  loc_9D41EE: VCallAd Control_ID_Impo27Txt
  loc_9D41F1: FStAdFunc var_88
  loc_9D41F4: FLdPr var_88
  loc_9D41F7:  = Me.Text
  loc_9D41FC: FLdPr Me
  loc_9D41FF: MemLdFPR8 ImpoLimite
  loc_9D4202: CStrR8
  loc_9D4204: FStStrNoPop var_A0
  loc_9D4207: LitI2_Byte &HFF
  loc_9D4209: LitI2_Byte 0
  loc_9D420B: LitI2_Byte 0
  loc_9D420D: ILdRf var_9C
  loc_9D4210: LitStr "Importe"
  loc_9D4213: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9D4218: FStStrNoPop var_A4
  loc_9D421B: FLdPr Me
  loc_9D421E: MemStStrCopy
  loc_9D4222: FFreeStr var_9C = "": var_A0 = ""
  loc_9D422B: FFree1Ad var_88
  loc_9D422E: FLdPr Me
  loc_9D4231: VCallAd Control_ID_Impo27Txt
  loc_9D4234: FStAdFunc var_A8
  loc_9D4237: LitNothing
  loc_9D4239: CastAd
  loc_9D423C: FStAdFunc var_98
  loc_9D423F: FLdRfVar var_98
  loc_9D4242: FLdZeroAd var_A8
  loc_9D4245: FStAdFuncNoPop
  loc_9D4248: CastAd
  loc_9D424B: FStAdFunc var_90
  loc_9D424E: FLdRfVar var_90
  loc_9D4251: FLdPr Me
  loc_9D4254: MemLdRfVar from_stack_1.global_100
  loc_9D4257: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D425C: IStI2 Cancel
  loc_9D425F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D426A: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948280
  'Data Table: 432B0C
  loc_94826C: ILdI2 KeyAscii
  loc_94826F: CI4UI1
  loc_948270: LitI4 &HD
  loc_948275: EqI4
  loc_948276: BranchF loc_94827E
  loc_948279: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94827E: ExitProcHresult
End Sub

Public Function ImpoLimiteGet() '4333B4
  ImpoLimiteGet = ImpoLimite
End Function

Public Sub ImpoLimitePut(Value) '4333C3
  ImpoLimite = Value
End Sub

Public Function Impo105Get() '4333D2
  Impo105Get = Impo105
End Function

Public Sub Impo105Put(Value) '4333E1
  Impo105 = Value
End Sub

Public Function Impo21Get() '4333F0
  Impo21Get = Impo21
End Function

Public Sub Impo21Put(Value) '4333FF
  Impo21 = Value
End Sub

Public Function Impo27Get() '43340E
  Impo27Get = Impo27
End Function

Public Sub Impo27Put(Value) '43341D
  Impo27 = Value
End Sub

Public Function ImpoPercIvaGet() '43342C
  ImpoPercIvaGet = ImpoPercIva
End Function

Public Sub ImpoPercIvaPut(Value) '43343B
  ImpoPercIva = Value
End Sub

Public Function ImpoReteIvaGet() '43344A
  ImpoReteIvaGet = ImpoReteIva
End Function

Public Sub ImpoReteIvaPut(Value) '433459
  ImpoReteIva = Value
End Sub
