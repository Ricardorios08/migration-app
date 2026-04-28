VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditoManualFacilidaddePagoPorExpediente
  Caption = "Creditos Manual a Cuotas de plan de pago por Expediente"
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
  ClientHeight = 8904
  Begin VB.CommandButton ConfirmarCmd
    Left = 5880
    Top = 7080
    Width = 1455
    Height = 615
    TabIndex = 15
    Picture = "frmCreditoManualFacilidaddePagoPorExpediente.frx":0000
    Style = 1
  End
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 6360
    Top = 6000
    Width = 1695
    Height = 345
    TabIndex = 12
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
    Left = 6360
    Top = 6480
    Width = 9015
    Height = 345
    TabIndex = 14
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
    Picture = "frmCreditoManualFacilidaddePagoPorExpediente.frx":032E
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
  Begin VB.TextBox txtTotalCreditos
    BackColor = &H80000004&
    Left = 6360
    Top = 5520
    Width = 1575
    Height = 360
    TabIndex = 4
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
    TabIndex = 2
    Picture = "frmCreditoManualFacilidaddePagoPorExpediente.frx":0410
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid CuotasImpagasFacilidadFlex
    Left = 4080
    Top = 1440
    Width = 5055
    Height = 3615
    TabIndex = 11
    OleObjectBlob = "frmCreditoManualFacilidaddePagoPorExpediente.frx":0662
    Appearance = 0 'Flat
  End
  Begin VB.Label Label14
    Caption = "Oficina:"
    Left = 1320
    Top = 720
    Width = 795
    Height = 300
    TabIndex = 20
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
  Begin VB.Label DetaOficLbl
    ForeColor = &HFF0000&
    Left = 2280
    Top = 720
    Width = 1695
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
  Begin VB.Label CuenCtctLbl
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1080
    Width = 1695
    Height = 315
    TabIndex = 18
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
  Begin VB.Label Label15
    Caption = "Cuenta:"
    Left = 1320
    Top = 1080
    Width = 840
    Height = 300
    TabIndex = 17
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
  Begin VB.Label Label10
    Caption = "Expediente:"
    Left = 5040
    Top = 6000
    Width = 1260
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
  Begin VB.Label Label11
    Caption = "Observaciones:"
    Left = 4680
    Top = 6480
    Width = 1635
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
  Begin VB.Label Label9
    Caption = "Domicilio Postal:"
    Left = 6840
    Top = 720
    Width = 1725
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
  Begin VB.Label Label5
    Caption = "Apellido y Nombre:"
    Left = 6600
    Top = 240
    Width = 1965
    Height = 300
    TabIndex = 9
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
  End
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 4680
    Top = 240
    Width = 1695
    Height = 315
    TabIndex = 7
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
  Begin VB.Label Label4
    Caption = "Numero:"
    Left = 1200
    Top = 240
    Width = 900
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
  Begin VB.Label Label8
    Caption = "Total Seleccionado:"
    Left = 3840
    Top = 5520
    Width = 2385
    Height = 300
    TabIndex = 3
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

Attribute VB_Name = "frmCreditoManualFacilidaddePagoPorExpediente"


Private Sub BuscaFacilidad_Click() 'B30F2C
  'Data Table: 481134
  loc_B30C90: LitI2_Byte 0
  loc_B30C92: CR8I2
  loc_B30C93: FLdPr Me
  loc_B30C96: MemStFPR8 global_80
  loc_B30C99: LitI2_Byte 0
  loc_B30C9B: CR8I2
  loc_B30C9C: FLdPr Me
  loc_B30C9F: MemStFPR8 global_88
  loc_B30CA2: Call Proc_322_10_AA2748()
  loc_B30CA7: LitI2_Byte 0
  loc_B30CA9: PopTmpLdAd2 var_8A
  loc_B30CAC: Call CodiFapaTxt_Validate(from_stack_1v)
  loc_B30CB1: FLdPr Me
  loc_B30CB4: MemLdStr global_96
  loc_B30CB7: LitStr vbNullString
  loc_B30CBA: NeStr
  loc_B30CBC: BranchF loc_B30CC0
  loc_B30CBF: ExitProcHresult
  loc_B30CC0: LitStr "SELECT * FROM detafapa"
  loc_B30CC3: LitStr " WHERE CodiFapa = "
  loc_B30CC6: ConcatStr
  loc_B30CC7: FStStrNoPop var_98
  loc_B30CCA: FLdRfVar var_94
  loc_B30CCD: FLdPr Me
  loc_B30CD0: VCallAd Control_ID_CodiFapaTxt
  loc_B30CD3: FStAdFunc var_90
  loc_B30CD6: FLdPr var_90
  loc_B30CD9:  = Me.Text
  loc_B30CDE: ILdRf var_94
  loc_B30CE1: ConcatStr
  loc_B30CE2: FStStrNoPop var_9C
  loc_B30CE5: LitStr " AND FepaDefa IS NULL"
  loc_B30CE8: ConcatStr
  loc_B30CE9: FStStrNoPop var_A0
  loc_B30CEC: FLdPr Me
  loc_B30CEF: MemLdRfVar from_stack_1.global_56
  loc_B30CF2: NewIfNullPr clsdetafapa
  loc_B30CF5: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B30CFA: FFreeStr var_98 = "": var_94 = "": var_9C = ""
  loc_B30D05: FFree1Ad var_90
  loc_B30D08: FLdRfVar var_A4
  loc_B30D0B: FLdRfVar var_90
  loc_B30D0E: FLdPr Me
  loc_B30D11: MemLdRfVar from_stack_1.global_56
  loc_B30D14: NewIfNullPr clsdetafapa
  loc_B30D17: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B30D1C: FLdPr var_90
  loc_B30D1F:  = Me.RecordCount
  loc_B30D24: ILdRf var_A4
  loc_B30D27: LitI4 0
  loc_B30D2C: GtI4
  loc_B30D2D: FFree1Ad var_90
  loc_B30D30: BranchF loc_B30EC8
  loc_B30D33: FLdRfVar var_90
  loc_B30D36: FLdPr Me
  loc_B30D39: MemLdRfVar from_stack_1.global_56
  loc_B30D3C: NewIfNullPr clsdetafapa
  loc_B30D3F: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B30D44: FLdPr var_90
  loc_B30D47: Me.MoveFirst
  loc_B30D4C: FFree1Ad var_90
  loc_B30D4F: FLdRfVar var_8A
  loc_B30D52: FLdPr Me
  loc_B30D55: MemLdRfVar from_stack_1.global_56
  loc_B30D58: NewIfNullPr clsdetafapa
  loc_B30D5B: from_stack_1 = clsdetafapa.EOF
  loc_B30D60: FLdI2 var_8A
  loc_B30D63: NotI4
  loc_B30D64: BranchF loc_B30EC8
  loc_B30D67: FLdRfVar var_DC
  loc_B30D6A: FLdRfVar var_BC
  loc_B30D6D: LitVarStr var_B8, "CodiFapa"
  loc_B30D72: PopAdLdVar
  loc_B30D73: FLdRfVar var_A8
  loc_B30D76: FLdRfVar var_90
  loc_B30D79: FLdPr Me
  loc_B30D7C: MemLdRfVar from_stack_1.global_56
  loc_B30D7F: NewIfNullPr clsdetafapa
  loc_B30D82: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B30D87: FLdPr var_90
  loc_B30D8A:  = Me.Fields
  loc_B30D8F: FLdPr var_A8
  loc_B30D92: from_stack_2 = Me.Item(from_stack_1)
  loc_B30D97: FLdPr var_BC
  loc_B30D9A:  = Me.Value
  loc_B30D9F: FLdRfVar var_DC
  loc_B30DA2: LitI4 9
  loc_B30DA7: FLdRfVar var_CC
  loc_B30DAA: ImpAdCallFPR4  = Chr()
  loc_B30DAF: FLdRfVar var_CC
  loc_B30DB2: ConcatVar var_EC
  loc_B30DB6: FLdRfVar var_118
  loc_B30DB9: FLdRfVar var_108
  loc_B30DBC: LitVarStr var_104, "CuotDefa"
  loc_B30DC1: PopAdLdVar
  loc_B30DC2: FLdRfVar var_F4
  loc_B30DC5: FLdRfVar var_F0
  loc_B30DC8: FLdPr Me
  loc_B30DCB: MemLdRfVar from_stack_1.global_56
  loc_B30DCE: NewIfNullPr clsdetafapa
  loc_B30DD1: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B30DD6: FLdPr var_F0
  loc_B30DD9:  = Me.Fields
  loc_B30DDE: FLdPr var_F4
  loc_B30DE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B30DE6: FLdPr var_108
  loc_B30DE9:  = Me.Value
  loc_B30DEE: FLdRfVar var_118
  loc_B30DF1: ConcatVar var_128
  loc_B30DF5: LitI4 9
  loc_B30DFA: FLdRfVar var_138
  loc_B30DFD: ImpAdCallFPR4  = Chr()
  loc_B30E02: FLdRfVar var_138
  loc_B30E05: ConcatVar var_148
  loc_B30E09: FLdRfVar var_174
  loc_B30E0C: FLdRfVar var_164
  loc_B30E0F: LitVarStr var_160, "TotaDefa"
  loc_B30E14: PopAdLdVar
  loc_B30E15: FLdRfVar var_150
  loc_B30E18: FLdRfVar var_14C
  loc_B30E1B: FLdPr Me
  loc_B30E1E: MemLdRfVar from_stack_1.global_56
  loc_B30E21: NewIfNullPr clsdetafapa
  loc_B30E24: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B30E29: FLdPr var_14C
  loc_B30E2C:  = Me.Fields
  loc_B30E31: FLdPr var_150
  loc_B30E34: from_stack_2 = Me.Item(from_stack_1)
  loc_B30E39: FLdPr var_164
  loc_B30E3C:  = Me.Value
  loc_B30E41: FLdRfVar var_174
  loc_B30E44: ConcatVar var_184
  loc_B30E48: LitI4 9
  loc_B30E4D: FLdRfVar var_194
  loc_B30E50: ImpAdCallFPR4  = Chr()
  loc_B30E55: FLdRfVar var_194
  loc_B30E58: ConcatVar var_1A4
  loc_B30E5C: LitVarStr var_1B4, "No"
  loc_B30E61: ConcatVar var_1C4
  loc_B30E65: CStrVarTmp
  loc_B30E66: FStStr var_88
  loc_B30E69: FFreeAd var_90 = "": var_A8 = "": var_BC = "": var_F0 = "": var_F4 = "": var_108 = "": var_14C = "": var_150 = ""
  loc_B30E7E: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = ""
  loc_B30E99: FLdRfVar var_88
  loc_B30E9C: CDargRef
  loc_B30EA0: FLdPr Me
  loc_B30EA3: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B30EA6: FStAdFunc var_90
  loc_B30EA9: FLdPr var_90
  loc_B30EAC: LateIdCall
  loc_B30EB4: FFree1Ad var_90
  loc_B30EB7: FLdPr Me
  loc_B30EBA: MemLdRfVar from_stack_1.global_56
  loc_B30EBD: NewIfNullPr clsdetafapa
  loc_B30EC0: Call clsdetafapa.MoveSiguiente()
  loc_B30EC5: Branch loc_B30D4F
  loc_B30EC8: LitI4 1
  loc_B30ECD: LitI4 1
  loc_B30ED2: LitVarStr var_104, "###,###,##0.00"
  loc_B30ED7: FStVarCopyObj var_CC
  loc_B30EDA: FLdRfVar var_CC
  loc_B30EDD: FLdPr Me
  loc_B30EE0: MemLdRfVar from_stack_1.global_80
  loc_B30EE3: CVarRef
  loc_B30EE8: FLdRfVar var_DC
  loc_B30EEB: ImpAdCallFPR4  = Format(, )
  loc_B30EF0: FLdRfVar var_DC
  loc_B30EF3: CStrVarVal var_94
  loc_B30EF7: FLdPr Me
  loc_B30EFA: VCallAd Control_ID_txtTotalCreditos
  loc_B30EFD: FStAdFunc var_90
  loc_B30F00: FLdPr var_90
  loc_B30F03: Me.Text = from_stack_1
  loc_B30F08: FFree1Str var_94
  loc_B30F0B: FFree1Ad var_90
  loc_B30F0E: FFreeVar var_CC = ""
  loc_B30F15: LitI2_Byte &HFF
  loc_B30F17: FLdPr Me
  loc_B30F1A: VCallAd Control_ID_ConfirmarCmd
  loc_B30F1D: FStAdFunc var_90
  loc_B30F20: FLdPr var_90
  loc_B30F23: Me.Enabled = from_stack_1b
  loc_B30F28: FFree1Ad var_90
  loc_B30F2B: ExitProcHresult
End Sub

Private Sub CuotasImpagasFacilidadFlex_Click() 'B55AA8
  'Data Table: 481134
  loc_B556DC: FLdPr Me
  loc_B556DF: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B556E2: FStAdFunc var_88
  loc_B556E5: FLdPr var_88
  loc_B556E8: LateIdLdVar var_98 DispID_4 0
  loc_B556EF: CI4Var
  loc_B556F1: LitI4 1
  loc_B556F6: GtI4
  loc_B556F7: FFree1Ad var_88
  loc_B556FA: FFree1Var var_98 = ""
  loc_B556FD: BranchF loc_B55AA6
  loc_B55700: FLdPr Me
  loc_B55703: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55706: FStAdFunc var_88
  loc_B55709: FLdPr var_88
  loc_B5570C: LateIdLdVar var_98 DispID_10 0
  loc_B55713: CI4Var
  loc_B55715: CVarI4
  loc_B55719: PopAdLdVar
  loc_B5571A: LitVarI4
  loc_B55722: PopAdLdVar
  loc_B55723: FLdPr Me
  loc_B55726: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55729: FStAdFunc var_DC
  loc_B5572C: FLdPr var_DC
  loc_B5572F: LateIdCallLdVar
  loc_B55739: CStrVarTmp
  loc_B5573A: FStStrNoPop var_F0
  loc_B5573D: LitStr "Si"
  loc_B55740: EqStr
  loc_B55742: FFree1Str var_F0
  loc_B55745: FFreeAd var_88 = ""
  loc_B5574C: FFreeVar var_98 = ""
  loc_B55753: BranchF loc_B558AE
  loc_B55756: LitI2_Byte 0
  loc_B55758: FLdPr Me
  loc_B5575B: MemLdRfVar from_stack_1.global_76
  loc_B5575E: FLdPr Me
  loc_B55761: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55764: FStAdFunc var_88
  loc_B55767: FLdPr var_88
  loc_B5576A: LateIdLdVar var_98 DispID_5 0
  loc_B55771: CI4Var
  loc_B55773: LitI4 1
  loc_B55778: SubI4
  loc_B55779: CI2I4
  loc_B5577A: FFree1Ad var_88
  loc_B5577D: FFree1Var var_98 = ""
  loc_B55780: ForI2 var_F4
  loc_B55786: FLdPr Me
  loc_B55789: MemLdI2 global_76
  loc_B5578C: CI4UI1
  loc_B5578D: CVarI4
  loc_B55791: PopAdLdVar
  loc_B55792: FLdPr Me
  loc_B55795: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55798: FStAdFunc var_88
  loc_B5579B: FLdPr var_88
  loc_B5579E: LateIdSt
  loc_B557A3: FFree1Ad var_88
  loc_B557A6: LitVarI4
  loc_B557AE: PopAdLdVar
  loc_B557AF: FLdPr Me
  loc_B557B2: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B557B5: FStAdFunc var_88
  loc_B557B8: FLdPr var_88
  loc_B557BB: LateIdSt
  loc_B557C0: FFree1Ad var_88
  loc_B557C3: FLdPr Me
  loc_B557C6: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B557C9: FStAdFunc var_88
  loc_B557CC: FLdPr var_88
  loc_B557CF: LateIdLdVar var_98 DispID_10 0
  loc_B557D6: CI4Var
  loc_B557D8: CVarI4
  loc_B557DC: PopAdLdVar
  loc_B557DD: LitVarI4
  loc_B557E5: PopAdLdVar
  loc_B557E6: LitVarStr var_104, "No"
  loc_B557EB: PopAdLdVar
  loc_B557EC: FLdPr Me
  loc_B557EF: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B557F2: FStAdFunc var_DC
  loc_B557F5: FLdPr var_DC
  loc_B557F8: LateIdCallSt
  loc_B55800: FFreeAd var_88 = ""
  loc_B55807: FFree1Var var_98 = ""
  loc_B5580A: FLdPr Me
  loc_B5580D: MemLdI2 global_76
  loc_B55810: LitI2_Byte 0
  loc_B55812: EqI2
  loc_B55813: BranchF loc_B55816
  loc_B55816: FLdPr Me
  loc_B55819: MemLdI2 global_76
  loc_B5581C: LitI2_Byte 2
  loc_B5581E: EqI2
  loc_B5581F: BranchF loc_B558A0
  loc_B55822: FLdPr Me
  loc_B55825: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55828: FStAdFunc var_88
  loc_B5582B: FLdPr var_88
  loc_B5582E: LateIdLdVar var_98 DispID_10 0
  loc_B55835: CI4Var
  loc_B55837: CVarI4
  loc_B5583B: PopAdLdVar
  loc_B5583C: FLdPr Me
  loc_B5583F: MemLdI2 global_76
  loc_B55842: CI4UI1
  loc_B55843: CVarI4
  loc_B55847: PopAdLdVar
  loc_B55848: FLdPr Me
  loc_B5584B: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B5584E: FStAdFunc var_DC
  loc_B55851: FLdPr var_DC
  loc_B55854: LateIdCallLdVar
  loc_B5585E: PopAd
  loc_B55860: LitI4 2
  loc_B55865: FLdPr Me
  loc_B55868: MemLdFPR8 global_88
  loc_B5586B: FLdRfVar var_EC
  loc_B5586E: CStrVarTmp
  loc_B5586F: FStStrNoPop var_F0
  loc_B55872: CR8Str
  loc_B55874: SubR4
  loc_B55875: CVarR8
  loc_B55879: FLdRfVar var_134
  loc_B5587C: ImpAdCallFPR4  = Round(, )
  loc_B55881: FLdRfVar var_134
  loc_B55884: CR4Var
  loc_B55885: FLdPr Me
  loc_B55888: MemStFPR8 global_88
  loc_B5588B: FFree1Str var_F0
  loc_B5588E: FFreeAd var_88 = ""
  loc_B55895: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B558A0: FLdPr Me
  loc_B558A3: MemLdRfVar from_stack_1.global_76
  loc_B558A6: NextI2 var_F4, loc_B55786
  loc_B558AB: Branch loc_B55A59
  loc_B558AE: FLdPr Me
  loc_B558B1: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B558B4: FStAdFunc var_88
  loc_B558B7: FLdPr var_88
  loc_B558BA: LateIdLdVar var_98 DispID_10 0
  loc_B558C1: CI4Var
  loc_B558C3: CVarI4
  loc_B558C7: PopAdLdVar
  loc_B558C8: LitVarI4
  loc_B558D0: PopAdLdVar
  loc_B558D1: FLdPr Me
  loc_B558D4: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B558D7: FStAdFunc var_DC
  loc_B558DA: FLdPr var_DC
  loc_B558DD: LateIdCallLdVar
  loc_B558E7: CStrVarTmp
  loc_B558E8: FStStrNoPop var_F0
  loc_B558EB: LitStr "No"
  loc_B558EE: EqStr
  loc_B558F0: FFree1Str var_F0
  loc_B558F3: FFreeAd var_88 = ""
  loc_B558FA: FFreeVar var_98 = ""
  loc_B55901: BranchF loc_B55A59
  loc_B55904: LitI2_Byte 0
  loc_B55906: FLdPr Me
  loc_B55909: MemLdRfVar from_stack_1.global_76
  loc_B5590C: FLdPr Me
  loc_B5590F: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55912: FStAdFunc var_88
  loc_B55915: FLdPr var_88
  loc_B55918: LateIdLdVar var_98 DispID_5 0
  loc_B5591F: CI4Var
  loc_B55921: LitI4 1
  loc_B55926: SubI4
  loc_B55927: CI2I4
  loc_B55928: FFree1Ad var_88
  loc_B5592B: FFree1Var var_98 = ""
  loc_B5592E: ForI2 var_138
  loc_B55934: FLdPr Me
  loc_B55937: MemLdI2 global_76
  loc_B5593A: CI4UI1
  loc_B5593B: CVarI4
  loc_B5593F: PopAdLdVar
  loc_B55940: FLdPr Me
  loc_B55943: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55946: FStAdFunc var_88
  loc_B55949: FLdPr var_88
  loc_B5594C: LateIdSt
  loc_B55951: FFree1Ad var_88
  loc_B55954: LitVarI4
  loc_B5595C: PopAdLdVar
  loc_B5595D: FLdPr Me
  loc_B55960: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55963: FStAdFunc var_88
  loc_B55966: FLdPr var_88
  loc_B55969: LateIdSt
  loc_B5596E: FFree1Ad var_88
  loc_B55971: FLdPr Me
  loc_B55974: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B55977: FStAdFunc var_88
  loc_B5597A: FLdPr var_88
  loc_B5597D: LateIdLdVar var_98 DispID_10 0
  loc_B55984: CI4Var
  loc_B55986: CVarI4
  loc_B5598A: PopAdLdVar
  loc_B5598B: LitVarI4
  loc_B55993: PopAdLdVar
  loc_B55994: LitVarStr var_104, "Si"
  loc_B55999: PopAdLdVar
  loc_B5599A: FLdPr Me
  loc_B5599D: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B559A0: FStAdFunc var_DC
  loc_B559A3: FLdPr var_DC
  loc_B559A6: LateIdCallSt
  loc_B559AE: FFreeAd var_88 = ""
  loc_B559B5: FFree1Var var_98 = ""
  loc_B559B8: FLdPr Me
  loc_B559BB: MemLdI2 global_76
  loc_B559BE: LitI2_Byte 0
  loc_B559C0: EqI2
  loc_B559C1: BranchF loc_B559C4
  loc_B559C4: FLdPr Me
  loc_B559C7: MemLdI2 global_76
  loc_B559CA: LitI2_Byte 2
  loc_B559CC: EqI2
  loc_B559CD: BranchF loc_B55A4E
  loc_B559D0: FLdPr Me
  loc_B559D3: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B559D6: FStAdFunc var_88
  loc_B559D9: FLdPr var_88
  loc_B559DC: LateIdLdVar var_98 DispID_10 0
  loc_B559E3: CI4Var
  loc_B559E5: CVarI4
  loc_B559E9: PopAdLdVar
  loc_B559EA: FLdPr Me
  loc_B559ED: MemLdI2 global_76
  loc_B559F0: CI4UI1
  loc_B559F1: CVarI4
  loc_B559F5: PopAdLdVar
  loc_B559F6: FLdPr Me
  loc_B559F9: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B559FC: FStAdFunc var_DC
  loc_B559FF: FLdPr var_DC
  loc_B55A02: LateIdCallLdVar
  loc_B55A0C: PopAd
  loc_B55A0E: LitI4 2
  loc_B55A13: FLdPr Me
  loc_B55A16: MemLdFPR8 global_88
  loc_B55A19: FLdRfVar var_EC
  loc_B55A1C: CStrVarTmp
  loc_B55A1D: FStStrNoPop var_F0
  loc_B55A20: CR8Str
  loc_B55A22: AddR8
  loc_B55A23: CVarR8
  loc_B55A27: FLdRfVar var_134
  loc_B55A2A: ImpAdCallFPR4  = Round(, )
  loc_B55A2F: FLdRfVar var_134
  loc_B55A32: CR4Var
  loc_B55A33: FLdPr Me
  loc_B55A36: MemStFPR8 global_88
  loc_B55A39: FFree1Str var_F0
  loc_B55A3C: FFreeAd var_88 = ""
  loc_B55A43: FFreeVar var_98 = "": var_EC = "": var_124 = ""
  loc_B55A4E: FLdPr Me
  loc_B55A51: MemLdRfVar from_stack_1.global_76
  loc_B55A54: NextI2 var_138, loc_B55934
  loc_B55A59: LitI4 1
  loc_B55A5E: LitI4 1
  loc_B55A63: LitVarStr var_B8, "###,###,##0.00"
  loc_B55A68: FStVarCopyObj var_98
  loc_B55A6B: FLdRfVar var_98
  loc_B55A6E: FLdPr Me
  loc_B55A71: MemLdRfVar from_stack_1.global_88
  loc_B55A74: CVarRef
  loc_B55A79: FLdRfVar var_EC
  loc_B55A7C: ImpAdCallFPR4  = Format(, )
  loc_B55A81: FLdRfVar var_EC
  loc_B55A84: CStrVarVal var_F0
  loc_B55A88: FLdPr Me
  loc_B55A8B: VCallAd Control_ID_txtTotalCreditos
  loc_B55A8E: FStAdFunc var_88
  loc_B55A91: FLdPr var_88
  loc_B55A94: Me.Text = from_stack_1
  loc_B55A99: FFree1Str var_F0
  loc_B55A9C: FFree1Ad var_88
  loc_B55A9F: FFreeVar var_98 = ""
  loc_B55AA6: ExitProcHresult
End Sub

Private Sub Form_Load() 'AD9C9C
  'Data Table: 481134
  loc_AD9B58: LitI4 0
  loc_AD9B5D: LitI4 0
  loc_AD9B62: FLdRfVar var_88
  loc_AD9B65: Redim
  loc_AD9B6F: FLdPr Me
  loc_AD9B72: VCallAd Control_ID_ConfirmarCmd
  loc_AD9B75: CVarAd
  loc_AD9B79: ParmAry1St
  loc_AD9B7F: FLdRfVar var_88
  loc_AD9B82: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AD9B87: FLdRfVar var_88
  loc_AD9B8A: Erase
  loc_AD9B8B: FLdPr Me
  loc_AD9B8E: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_AD9B91: FStAdFunc var_9C
  loc_AD9B94: LitVarI4
  loc_AD9B9C: PopAdLdVar
  loc_AD9B9D: LitVarI4
  loc_AD9BA5: PopAdLdVar
  loc_AD9BA6: FLdPr var_9C
  loc_AD9BA9: LateIdCallSt
  loc_AD9BB1: LitVarI4
  loc_AD9BB9: PopAdLdVar
  loc_AD9BBA: LitVarI4
  loc_AD9BC2: PopAdLdVar
  loc_AD9BC3: FLdPr var_9C
  loc_AD9BC6: LateIdCallSt
  loc_AD9BCE: LitVarI4
  loc_AD9BD6: PopAdLdVar
  loc_AD9BD7: LitVarI4
  loc_AD9BDF: PopAdLdVar
  loc_AD9BE0: FLdPr var_9C
  loc_AD9BE3: LateIdCallSt
  loc_AD9BEB: LitVarI4
  loc_AD9BF3: PopAdLdVar
  loc_AD9BF4: LitVarI4
  loc_AD9BFC: PopAdLdVar
  loc_AD9BFD: FLdPr var_9C
  loc_AD9C00: LateIdCallSt
  loc_AD9C08: LitVarI4
  loc_AD9C10: PopAdLdVar
  loc_AD9C11: LitVarI4
  loc_AD9C19: PopAdLdVar
  loc_AD9C1A: LitVarStr var_EC, "Facilidad"
  loc_AD9C1F: PopAdLdVar
  loc_AD9C20: FLdPr var_9C
  loc_AD9C23: LateIdCallSt
  loc_AD9C2B: LitVarI4
  loc_AD9C33: PopAdLdVar
  loc_AD9C34: LitVarI4
  loc_AD9C3C: PopAdLdVar
  loc_AD9C3D: LitVarStr var_EC, "Cuota"
  loc_AD9C42: PopAdLdVar
  loc_AD9C43: FLdPr var_9C
  loc_AD9C46: LateIdCallSt
  loc_AD9C4E: LitVarI4
  loc_AD9C56: PopAdLdVar
  loc_AD9C57: LitVarI4
  loc_AD9C5F: PopAdLdVar
  loc_AD9C60: LitVarStr var_EC, "Total"
  loc_AD9C65: PopAdLdVar
  loc_AD9C66: FLdPr var_9C
  loc_AD9C69: LateIdCallSt
  loc_AD9C71: LitVarI4
  loc_AD9C79: PopAdLdVar
  loc_AD9C7A: LitVarI4
  loc_AD9C82: PopAdLdVar
  loc_AD9C83: LitVarStr var_EC, "Sel"
  loc_AD9C88: PopAdLdVar
  loc_AD9C89: FLdPr var_9C
  loc_AD9C8C: LateIdCallSt
  loc_AD9C94: LitNothing
  loc_AD9C96: FStAd var_9C 
  loc_AD9C9A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB4F8
  'Data Table: 481134
  loc_9BB4E4: ILdI2 KeyCode
  loc_9BB4E7: CI4UI1
  loc_9BB4E8: LitI4 &H78
  loc_9BB4ED: EqI4
  loc_9BB4EE: BranchF loc_9BB4F6
  loc_9BB4F1: Call SalirCmd_Click()
  loc_9BB4F6: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_GotFocus() '9C93D8
  'Data Table: 481134
  loc_9C93C0: Call Proc_322_10_AA2748()
  loc_9C93C5: FLdPr Me
  loc_9C93C8: VCallAd Control_ID_CodiFapaTxt
  loc_9C93CB: CVarAd
  loc_9C93CF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C93D4: FFree1Var var_94 = ""
  loc_9C93D7: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_KeyPress(KeyAscii As Integer) 'ABA4C4
  'Data Table: 481134
  loc_ABA3E0: LitStr "0123456789 "
  loc_ABA3E3: FStStrCopy var_88
  loc_ABA3E6: FLdRfVar var_88
  loc_ABA3E9: ILdRf KeyAscii
  loc_ABA3EC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_ABA3F1: IStI2 KeyAscii
  loc_ABA3F4: FFree1Str var_88
  loc_ABA3F7: ILdI2 KeyAscii
  loc_ABA3FA: LitI2_Byte &H20
  loc_ABA3FC: EqI2
  loc_ABA3FD: BranchF loc_ABA4C2
  loc_ABA400: LitI2_Byte 0
  loc_ABA402: IStI2 KeyAscii
  loc_ABA405: LitVar_Missing var_A8
  loc_ABA408: PopAdLdVar
  loc_ABA409: LitVarI4
  loc_ABA411: PopAdLdVar
  loc_ABA412: ImpAdLdRf MemVar_D942A0
  loc_ABA415: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA418: dlgBuscarFacilidaddePago.Show from_stack_1, from_stack_2
  loc_ABA41D: FLdRfVar var_B0
  loc_ABA420: FLdRfVar var_AC
  loc_ABA423: ImpAdLdRf MemVar_D942A0
  loc_ABA426: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA429: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABA42E: FLdPr var_AC
  loc_ABA431: from_stack_1 = clsbase.RecordCount
  loc_ABA436: ILdRf var_B0
  loc_ABA439: LitI4 0
  loc_ABA43E: GtI4
  loc_ABA43F: FFree1Ad var_AC
  loc_ABA442: BranchF loc_ABA4B0
  loc_ABA445: FLdRfVar var_CC
  loc_ABA448: FLdRfVar var_BC
  loc_ABA44B: LitVarStr var_98, "CodiFapa"
  loc_ABA450: PopAdLdVar
  loc_ABA451: FLdRfVar var_B8
  loc_ABA454: FLdRfVar var_B4
  loc_ABA457: FLdRfVar var_AC
  loc_ABA45A: ImpAdLdRf MemVar_D942A0
  loc_ABA45D: NewIfNullPr dlgBuscarFacilidaddePago
  loc_ABA460: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_ABA465: FLdPr var_AC
  loc_ABA468: from_stack_1v = clsbase.RsFrmGet()
  loc_ABA46D: FLdPr var_B4
  loc_ABA470:  = Me.Fields
  loc_ABA475: FLdPr var_B8
  loc_ABA478: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA47D: FLdPr var_BC
  loc_ABA480:  = Me.Value
  loc_ABA485: FLdRfVar var_CC
  loc_ABA488: CStrVarTmp
  loc_ABA489: FStStrNoPop var_88
  loc_ABA48C: FLdPr Me
  loc_ABA48F: VCallAd Control_ID_CodiFapaTxt
  loc_ABA492: FStAdFunc var_D0
  loc_ABA495: FLdPr var_D0
  loc_ABA498: Me.Text = from_stack_1
  loc_ABA49D: FFree1Str var_88
  loc_ABA4A0: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ABA4AD: FFree1Var var_CC = ""
  loc_ABA4B0: FLdPr Me
  loc_ABA4B3: VCallAd Control_ID_CodiFapaTxt
  loc_ABA4B6: CVarAd
  loc_ABA4BA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABA4BF: FFree1Var var_CC = ""
  loc_ABA4C2: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'BD5B78
  'Data Table: 481134
  loc_BD5438: FLdRfVar var_9C
  loc_BD543B: FLdPr Me
  loc_BD543E: VCallAd Control_ID_CodiFapaTxt
  loc_BD5441: FStAdFunc var_98
  loc_BD5444: FLdPr var_98
  loc_BD5447:  = Me.Text
  loc_BD544C: LitI2_Byte 0
  loc_BD544E: LitI2_Byte 0
  loc_BD5450: ILdRf var_9C
  loc_BD5453: LitStr "el plan de pago "
  loc_BD5456: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_BD545B: FStStrNoPop var_A0
  loc_BD545E: FLdPr Me
  loc_BD5461: MemStStrCopy
  loc_BD5465: FFreeStr var_9C = ""
  loc_BD546C: FFree1Ad var_98
  loc_BD546F: FLdPr Me
  loc_BD5472: MemLdStr global_96
  loc_BD5475: LitStr vbNullString
  loc_BD5478: NeStr
  loc_BD547A: BranchF loc_BD54A0
  loc_BD547D: FLdPr Me
  loc_BD5480: MemLdStr global_96
  loc_BD5483: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5488: FLdPr Me
  loc_BD548B: VCallAd Control_ID_CodiFapaTxt
  loc_BD548E: CVarAd
  loc_BD5492: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5497: FFree1Var var_B0 = ""
  loc_BD549A: LitI2_Byte &HFF
  loc_BD549C: IStI2 Cancel
  loc_BD549F: ExitProcHresult
  loc_BD54A0: LitStr "Municipalidad de Guaymallén"
  loc_BD54A3: LitStr "Municipalidad de Guaymallén"
  loc_BD54A6: NeStr
  loc_BD54A8: BranchF loc_BD566D
  loc_BD54AB: LitStr "SELECT CodiFapa, CodiOfic, CuenCtct, CucuPers, EmitFapa, EstaFapa, FealFapa, CodiTifa FROM facipago WHERE CodiFapa = "
  loc_BD54AE: FLdRfVar var_9C
  loc_BD54B1: FLdPr Me
  loc_BD54B4: VCallAd Control_ID_CodiFapaTxt
  loc_BD54B7: FStAdFunc var_98
  loc_BD54BA: FLdPr var_98
  loc_BD54BD:  = Me.Text
  loc_BD54C2: ILdRf var_9C
  loc_BD54C5: ConcatStr
  loc_BD54C6: FStStrNoPop var_A0
  loc_BD54C9: LitStr " ORDER BY CodiFapa"
  loc_BD54CC: ConcatStr
  loc_BD54CD: FStStrNoPop var_B4
  loc_BD54D0: FLdPr Me
  loc_BD54D3: MemLdRfVar from_stack_1.global_52
  loc_BD54D6: NewIfNullPr clsfacipago
  loc_BD54D9: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_BD54DE: FFreeStr var_9C = "": var_A0 = ""
  loc_BD54E7: FFree1Ad var_98
  loc_BD54EA: FLdRfVar var_B8
  loc_BD54ED: FLdPr Me
  loc_BD54F0: MemLdRfVar from_stack_1.global_52
  loc_BD54F3: NewIfNullPr clsfacipago
  loc_BD54F6: from_stack_1 = clsfacipago.RecordCount
  loc_BD54FB: ILdRf var_B8
  loc_BD54FE: LitI4 1
  loc_BD5503: EqI4
  loc_BD5504: BranchF loc_BD55CA
  loc_BD5507: FLdRfVar var_9C
  loc_BD550A: FLdPr Me
  loc_BD550D: MemLdRfVar from_stack_1.global_52
  loc_BD5510: NewIfNullPr clsfacipago
  loc_BD5513: from_stack_1 = clsfacipago.EstaFapa
  loc_BD5518: ILdRf var_9C
  loc_BD551B: LitStr "Activa"
  loc_BD551E: NeStr
  loc_BD5520: FFree1Str var_9C
  loc_BD5523: BranchF loc_BD557B
  loc_BD5526: LitStr "El estado de la facilidad de pago es: "
  loc_BD5529: FLdRfVar var_9C
  loc_BD552C: FLdPr Me
  loc_BD552F: MemLdRfVar from_stack_1.global_52
  loc_BD5532: NewIfNullPr clsfacipago
  loc_BD5535: from_stack_1 = clsfacipago.EstaFapa
  loc_BD553A: ILdRf var_9C
  loc_BD553D: ConcatStr
  loc_BD553E: FStStrNoPop var_A0
  loc_BD5541: LitStr " por favor verifique."
  loc_BD5544: ConcatStr
  loc_BD5545: FStStrNoPop var_B4
  loc_BD5548: FLdPr Me
  loc_BD554B: MemStStrCopy
  loc_BD554F: FFreeStr var_9C = "": var_A0 = ""
  loc_BD5558: FLdPr Me
  loc_BD555B: MemLdStr global_96
  loc_BD555E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5563: FLdPr Me
  loc_BD5566: VCallAd Control_ID_CodiFapaTxt
  loc_BD5569: CVarAd
  loc_BD556D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5572: FFree1Var var_B0 = ""
  loc_BD5575: LitI2_Byte &HFF
  loc_BD5577: IStI2 Cancel
  loc_BD557A: ExitProcHresult
  loc_BD557B: FLdRfVar var_9C
  loc_BD557E: FLdPr Me
  loc_BD5581: MemLdRfVar from_stack_1.global_52
  loc_BD5584: NewIfNullPr clsfacipago
  loc_BD5587: from_stack_1 = clsfacipago.EmitFapa
  loc_BD558C: ILdRf var_9C
  loc_BD558F: LitStr "No"
  loc_BD5592: EqStr
  loc_BD5594: FFree1Str var_9C
  loc_BD5597: BranchF loc_BD55C7
  loc_BD559A: LitStr "La facildiad de pago no se puede emitir. Por favor verifique."
  loc_BD559D: FLdPr Me
  loc_BD55A0: MemStStrCopy
  loc_BD55A4: FLdPr Me
  loc_BD55A7: MemLdStr global_96
  loc_BD55AA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD55AF: FLdPr Me
  loc_BD55B2: VCallAd Control_ID_CodiFapaTxt
  loc_BD55B5: CVarAd
  loc_BD55B9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD55BE: FFree1Var var_B0 = ""
  loc_BD55C1: LitI2_Byte &HFF
  loc_BD55C3: IStI2 Cancel
  loc_BD55C6: ExitProcHresult
  loc_BD55C7: Branch loc_BD566A
  loc_BD55CA: LitStr vbNullString
  loc_BD55CD: FLdPr Me
  loc_BD55D0: VCallAd Control_ID_DetaOficLbl
  loc_BD55D3: FStAdFunc var_98
  loc_BD55D6: FLdPr var_98
  loc_BD55D9: Me.Caption = from_stack_1
  loc_BD55DE: FFree1Ad var_98
  loc_BD55E1: LitStr vbNullString
  loc_BD55E4: FLdPr Me
  loc_BD55E7: VCallAd Control_ID_CuenCtctLbl
  loc_BD55EA: FStAdFunc var_98
  loc_BD55ED: FLdPr var_98
  loc_BD55F0: Me.Caption = from_stack_1
  loc_BD55F5: FFree1Ad var_98
  loc_BD55F8: LitStr vbNullString
  loc_BD55FB: FLdPr Me
  loc_BD55FE: VCallAd Control_ID_CucuPersLbl
  loc_BD5601: FStAdFunc var_98
  loc_BD5604: FLdPr var_98
  loc_BD5607: Me.Caption = from_stack_1
  loc_BD560C: FFree1Ad var_98
  loc_BD560F: LitStr vbNullString
  loc_BD5612: FLdPr Me
  loc_BD5615: VCallAd Control_ID_DetaPersLbl
  loc_BD5618: FStAdFunc var_98
  loc_BD561B: FLdPr var_98
  loc_BD561E: Me.Caption = from_stack_1
  loc_BD5623: FFree1Ad var_98
  loc_BD5626: LitStr vbNullString
  loc_BD5629: FLdPr Me
  loc_BD562C: VCallAd Control_ID_DomiPersLbl
  loc_BD562F: FStAdFunc var_98
  loc_BD5632: FLdPr var_98
  loc_BD5635: Me.Caption = from_stack_1
  loc_BD563A: FFree1Ad var_98
  loc_BD563D: LitStr "La facilidad de pago no existe. Verifique"
  loc_BD5640: FLdPr Me
  loc_BD5643: MemStStrCopy
  loc_BD5647: FLdPr Me
  loc_BD564A: MemLdStr global_96
  loc_BD564D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5652: FLdPr Me
  loc_BD5655: VCallAd Control_ID_CodiFapaTxt
  loc_BD5658: CVarAd
  loc_BD565C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5661: FFree1Var var_B0 = ""
  loc_BD5664: LitI2_Byte &HFF
  loc_BD5666: IStI2 Cancel
  loc_BD5669: ExitProcHresult
  loc_BD566A: Branch loc_BD5B76
  loc_BD566D: LitStr "SELECT CodiFapa, facipago.CodiOfic, CuenCtct, CucuPers, EmitFapa, EstaFapa, DetaOfic"
  loc_BD5670: LitStr " FROM facipago "
  loc_BD5673: ConcatStr
  loc_BD5674: FStStrNoPop var_9C
  loc_BD5677: LitStr " INNER JOIN oficina ON oficina.CodiOfic = facipago.CodiOfic"
  loc_BD567A: ConcatStr
  loc_BD567B: FStStrNoPop var_A0
  loc_BD567E: LitStr " WHERE CodiFapa = "
  loc_BD5681: ConcatStr
  loc_BD5682: FStStrNoPop var_BC
  loc_BD5685: FLdRfVar var_B4
  loc_BD5688: FLdPr Me
  loc_BD568B: VCallAd Control_ID_CodiFapaTxt
  loc_BD568E: FStAdFunc var_98
  loc_BD5691: FLdPr var_98
  loc_BD5694:  = Me.Text
  loc_BD5699: ILdRf var_B4
  loc_BD569C: ConcatStr
  loc_BD569D: FStStrNoPop var_C0
  loc_BD56A0: LitStr " ORDER BY CodiFapa"
  loc_BD56A3: ConcatStr
  loc_BD56A4: FStStrNoPop var_C4
  loc_BD56A7: FLdPr Me
  loc_BD56AA: MemLdRfVar from_stack_1.global_52
  loc_BD56AD: NewIfNullPr clsfacipago
  loc_BD56B0: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_BD56B5: FFreeStr var_9C = "": var_A0 = "": var_BC = "": var_B4 = "": var_C0 = ""
  loc_BD56C4: FFree1Ad var_98
  loc_BD56C7: FLdRfVar var_B8
  loc_BD56CA: FLdPr Me
  loc_BD56CD: MemLdRfVar from_stack_1.global_52
  loc_BD56D0: NewIfNullPr clsfacipago
  loc_BD56D3: from_stack_1 = clsfacipago.RecordCount
  loc_BD56D8: ILdRf var_B8
  loc_BD56DB: LitI4 1
  loc_BD56E0: EqI4
  loc_BD56E1: BranchF loc_BD5AD6
  loc_BD56E4: FLdRfVar var_B0
  loc_BD56E7: FLdRfVar var_DC
  loc_BD56EA: LitVarStr var_D8, "DetaOfic"
  loc_BD56EF: PopAdLdVar
  loc_BD56F0: FLdRfVar var_C8
  loc_BD56F3: FLdRfVar var_98
  loc_BD56F6: FLdPr Me
  loc_BD56F9: MemLdRfVar from_stack_1.global_52
  loc_BD56FC: NewIfNullPr clsfacipago
  loc_BD56FF: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BD5704: FLdPr var_98
  loc_BD5707:  = Me.Fields
  loc_BD570C: FLdPr var_C8
  loc_BD570F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5714: FLdPr var_DC
  loc_BD5717:  = Me.Value
  loc_BD571C: FLdRfVar var_B0
  loc_BD571F: CStrVarTmp
  loc_BD5720: FStStrNoPop var_9C
  loc_BD5723: FLdPr Me
  loc_BD5726: VCallAd Control_ID_DetaOficLbl
  loc_BD5729: FStAdFunc var_E0
  loc_BD572C: FLdPr var_E0
  loc_BD572F: Me.Caption = from_stack_1
  loc_BD5734: FFree1Str var_9C
  loc_BD5737: FFreeAd var_98 = "": var_C8 = "": var_DC = ""
  loc_BD5742: FFree1Var var_B0 = ""
  loc_BD5745: FLdRfVar var_B0
  loc_BD5748: FLdRfVar var_DC
  loc_BD574B: LitVarStr var_D8, "CuenCtct"
  loc_BD5750: PopAdLdVar
  loc_BD5751: FLdRfVar var_C8
  loc_BD5754: FLdRfVar var_98
  loc_BD5757: FLdPr Me
  loc_BD575A: MemLdRfVar from_stack_1.global_52
  loc_BD575D: NewIfNullPr clsfacipago
  loc_BD5760: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BD5765: FLdPr var_98
  loc_BD5768:  = Me.Fields
  loc_BD576D: FLdPr var_C8
  loc_BD5770: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5775: FLdPr var_DC
  loc_BD5778:  = Me.Value
  loc_BD577D: FLdRfVar var_B0
  loc_BD5780: CStrVarTmp
  loc_BD5781: FStStrNoPop var_9C
  loc_BD5784: FLdPr Me
  loc_BD5787: VCallAd Control_ID_CuenCtctLbl
  loc_BD578A: FStAdFunc var_E0
  loc_BD578D: FLdPr var_E0
  loc_BD5790: Me.Caption = from_stack_1
  loc_BD5795: FFree1Str var_9C
  loc_BD5798: FFreeAd var_98 = "": var_C8 = "": var_DC = ""
  loc_BD57A3: FFree1Var var_B0 = ""
  loc_BD57A6: FLdRfVar var_B0
  loc_BD57A9: FLdRfVar var_DC
  loc_BD57AC: LitVarStr var_D8, "CodiOfic"
  loc_BD57B1: PopAdLdVar
  loc_BD57B2: FLdRfVar var_C8
  loc_BD57B5: FLdRfVar var_98
  loc_BD57B8: FLdPr Me
  loc_BD57BB: MemLdRfVar from_stack_1.global_52
  loc_BD57BE: NewIfNullPr clsfacipago
  loc_BD57C1: from_stack_1v = clsfacipago.RsFrmGet()
  loc_BD57C6: FLdPr var_98
  loc_BD57C9:  = Me.Fields
  loc_BD57CE: FLdPr var_C8
  loc_BD57D1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD57D6: FLdPr var_DC
  loc_BD57D9:  = Me.Value
  loc_BD57DE: FLdRfVar var_B0
  loc_BD57E1: FnCIntVar
  loc_BD57E3: LitI2_Byte 1
  loc_BD57E5: EqI2
  loc_BD57E6: FFreeAd var_98 = "": var_C8 = ""
  loc_BD57EF: FFree1Var var_B0 = ""
  loc_BD57F2: BranchF loc_BD58F1
  loc_BD57F5: FLdRfVar var_9C
  loc_BD57F8: FLdPr Me
  loc_BD57FB: MemLdRfVar from_stack_1.global_52
  loc_BD57FE: NewIfNullPr clsfacipago
  loc_BD5801: from_stack_1 = clsfacipago.CuenCtct
  loc_BD5806: FLdPr Me
  loc_BD5809: MemLdRfVar from_stack_1.global_72
  loc_BD580C: NewIfNullRf
  loc_BD5810: ILdRf var_9C
  loc_BD5813: ImpAdCallI2  = Proc_270_13_C86920()
  loc_BD5818: LitI2_Byte &HFF
  loc_BD581A: EqI2
  loc_BD581B: FFree1Str var_9C
  loc_BD581E: BranchF loc_BD58EE
  loc_BD5821: FLdRfVar var_9C
  loc_BD5824: FLdPr Me
  loc_BD5827: MemLdRfVar from_stack_1.global_72
  loc_BD582A: NewIfNullPr tblPersonaGIS
  loc_BD582D: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_BD5832: ILdRf var_9C
  loc_BD5835: FLdPr Me
  loc_BD5838: VCallAd Control_ID_CucuPersLbl
  loc_BD583B: FStAdFunc var_98
  loc_BD583E: FLdPr var_98
  loc_BD5841: Me.Caption = from_stack_1
  loc_BD5846: FFree1Str var_9C
  loc_BD5849: FFree1Ad var_98
  loc_BD584C: FLdRfVar var_9C
  loc_BD584F: FLdPr Me
  loc_BD5852: MemLdRfVar from_stack_1.global_72
  loc_BD5855: NewIfNullPr tblPersonaGIS
  loc_BD5858: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_BD585D: ILdRf var_9C
  loc_BD5860: FLdPr Me
  loc_BD5863: VCallAd Control_ID_DetaPersLbl
  loc_BD5866: FStAdFunc var_98
  loc_BD5869: FLdPr var_98
  loc_BD586C: Me.Caption = from_stack_1
  loc_BD5871: FFree1Str var_9C
  loc_BD5874: FFree1Ad var_98
  loc_BD5877: FLdRfVar var_9C
  loc_BD587A: FLdPr Me
  loc_BD587D: MemLdRfVar from_stack_1.global_72
  loc_BD5880: NewIfNullPr tblPersonaGIS
  loc_BD5883: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_BD5888: ILdRf var_9C
  loc_BD588B: LitStr " "
  loc_BD588E: ConcatStr
  loc_BD588F: FStStrNoPop var_B4
  loc_BD5892: FLdRfVar var_A0
  loc_BD5895: FLdPr Me
  loc_BD5898: MemLdRfVar from_stack_1.global_72
  loc_BD589B: NewIfNullPr tblPersonaGIS
  loc_BD589E: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_BD58A3: ILdRf var_A0
  loc_BD58A6: ConcatStr
  loc_BD58A7: FStStrNoPop var_BC
  loc_BD58AA: LitStr " "
  loc_BD58AD: ConcatStr
  loc_BD58AE: FStStrNoPop var_C4
  loc_BD58B1: FLdRfVar var_C0
  loc_BD58B4: FLdPr Me
  loc_BD58B7: MemLdRfVar from_stack_1.global_72
  loc_BD58BA: NewIfNullPr tblPersonaGIS
  loc_BD58BD: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_BD58C2: ILdRf var_C0
  loc_BD58C5: ConcatStr
  loc_BD58C6: FStStrNoPop var_E4
  loc_BD58C9: FLdPr Me
  loc_BD58CC: VCallAd Control_ID_DomiPersLbl
  loc_BD58CF: FStAdFunc var_98
  loc_BD58D2: FLdPr var_98
  loc_BD58D5: Me.Caption = from_stack_1
  loc_BD58DA: FFreeStr var_9C = "": var_B4 = "": var_A0 = "": var_BC = "": var_C4 = "": var_C0 = ""
  loc_BD58EB: FFree1Ad var_98
  loc_BD58EE: Branch loc_BD5A5F
  loc_BD58F1: FLdRfVar var_9C
  loc_BD58F4: FLdPr Me
  loc_BD58F7: MemLdRfVar from_stack_1.global_52
  loc_BD58FA: NewIfNullPr clsfacipago
  loc_BD58FD: from_stack_1 = clsfacipago.CucuPers
  loc_BD5902: FLdPr Me
  loc_BD5905: MemLdRfVar from_stack_1.global_68
  loc_BD5908: NewIfNullRf
  loc_BD590C: ILdRf var_9C
  loc_BD590F: ImpAdCallI2  = Proc_270_6_B02218()
  loc_BD5914: LitI2_Byte &HFF
  loc_BD5916: EqI2
  loc_BD5917: FFree1Str var_9C
  loc_BD591A: BranchF loc_BD59ED
  loc_BD591D: FLdRfVar var_9C
  loc_BD5920: FLdPr Me
  loc_BD5923: MemLdRfVar from_stack_1.global_68
  loc_BD5926: NewIfNullPr tblPersona
  loc_BD5929: from_stack_1v = tblPersona.CucuPersGet()
  loc_BD592E: ILdRf var_9C
  loc_BD5931: FLdPr Me
  loc_BD5934: VCallAd Control_ID_CucuPersLbl
  loc_BD5937: FStAdFunc var_98
  loc_BD593A: FLdPr var_98
  loc_BD593D: Me.Caption = from_stack_1
  loc_BD5942: FFree1Str var_9C
  loc_BD5945: FFree1Ad var_98
  loc_BD5948: FLdRfVar var_9C
  loc_BD594B: FLdPr Me
  loc_BD594E: MemLdRfVar from_stack_1.global_68
  loc_BD5951: NewIfNullPr tblPersona
  loc_BD5954: from_stack_1v = tblPersona.DetaPersGet()
  loc_BD5959: ILdRf var_9C
  loc_BD595C: FLdPr Me
  loc_BD595F: VCallAd Control_ID_DetaPersLbl
  loc_BD5962: FStAdFunc var_98
  loc_BD5965: FLdPr var_98
  loc_BD5968: Me.Caption = from_stack_1
  loc_BD596D: FFree1Str var_9C
  loc_BD5970: FFree1Ad var_98
  loc_BD5973: FLdRfVar var_9C
  loc_BD5976: FLdPr Me
  loc_BD5979: MemLdRfVar from_stack_1.global_68
  loc_BD597C: NewIfNullPr tblPersona
  loc_BD597F: from_stack_1v = tblPersona.DetaCallGet()
  loc_BD5984: ILdRf var_9C
  loc_BD5987: LitStr " "
  loc_BD598A: ConcatStr
  loc_BD598B: FStStrNoPop var_B4
  loc_BD598E: FLdRfVar var_A0
  loc_BD5991: FLdPr Me
  loc_BD5994: MemLdRfVar from_stack_1.global_68
  loc_BD5997: NewIfNullPr tblPersona
  loc_BD599A: from_stack_1v = tblPersona.NumeCasaGet()
  loc_BD599F: ILdRf var_A0
  loc_BD59A2: ConcatStr
  loc_BD59A3: FStStrNoPop var_BC
  loc_BD59A6: LitStr " "
  loc_BD59A9: ConcatStr
  loc_BD59AA: FStStrNoPop var_C4
  loc_BD59AD: FLdRfVar var_C0
  loc_BD59B0: FLdPr Me
  loc_BD59B3: MemLdRfVar from_stack_1.global_68
  loc_BD59B6: NewIfNullPr tblPersona
  loc_BD59B9: from_stack_1v = tblPersona.DetaLocaGet()
  loc_BD59BE: ILdRf var_C0
  loc_BD59C1: ConcatStr
  loc_BD59C2: FStStrNoPop var_E4
  loc_BD59C5: FLdPr Me
  loc_BD59C8: VCallAd Control_ID_DomiPersLbl
  loc_BD59CB: FStAdFunc var_98
  loc_BD59CE: FLdPr var_98
  loc_BD59D1: Me.Caption = from_stack_1
  loc_BD59D6: FFreeStr var_9C = "": var_B4 = "": var_A0 = "": var_BC = "": var_C4 = "": var_C0 = ""
  loc_BD59E7: FFree1Ad var_98
  loc_BD59EA: Branch loc_BD5A5F
  loc_BD59ED: LitStr vbNullString
  loc_BD59F0: FLdPr Me
  loc_BD59F3: VCallAd Control_ID_CucuPersLbl
  loc_BD59F6: FStAdFunc var_98
  loc_BD59F9: FLdPr var_98
  loc_BD59FC: Me.Caption = from_stack_1
  loc_BD5A01: FFree1Ad var_98
  loc_BD5A04: LitStr vbNullString
  loc_BD5A07: FLdPr Me
  loc_BD5A0A: VCallAd Control_ID_DetaPersLbl
  loc_BD5A0D: FStAdFunc var_98
  loc_BD5A10: FLdPr var_98
  loc_BD5A13: Me.Caption = from_stack_1
  loc_BD5A18: FFree1Ad var_98
  loc_BD5A1B: LitStr vbNullString
  loc_BD5A1E: FLdPr Me
  loc_BD5A21: VCallAd Control_ID_DomiPersLbl
  loc_BD5A24: FStAdFunc var_98
  loc_BD5A27: FLdPr var_98
  loc_BD5A2A: Me.Caption = from_stack_1
  loc_BD5A2F: FFree1Ad var_98
  loc_BD5A32: LitStr "La persona no existe. Verifique"
  loc_BD5A35: FLdPr Me
  loc_BD5A38: MemStStrCopy
  loc_BD5A3C: FLdPr Me
  loc_BD5A3F: MemLdStr global_96
  loc_BD5A42: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5A47: FLdPr Me
  loc_BD5A4A: VCallAd Control_ID_CodiFapaTxt
  loc_BD5A4D: CVarAd
  loc_BD5A51: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5A56: FFree1Var var_B0 = ""
  loc_BD5A59: LitI2_Byte &HFF
  loc_BD5A5B: IStI2 Cancel
  loc_BD5A5E: ExitProcHresult
  loc_BD5A5F: FLdRfVar var_9C
  loc_BD5A62: FLdPr Me
  loc_BD5A65: MemLdRfVar from_stack_1.global_52
  loc_BD5A68: NewIfNullPr clsfacipago
  loc_BD5A6B: from_stack_1 = clsfacipago.EstaFapa
  loc_BD5A70: ILdRf var_9C
  loc_BD5A73: LitStr "Activa"
  loc_BD5A76: NeStr
  loc_BD5A78: FFree1Str var_9C
  loc_BD5A7B: BranchF loc_BD5AD3
  loc_BD5A7E: LitStr "El estado de la facilidad de pago es: "
  loc_BD5A81: FLdRfVar var_9C
  loc_BD5A84: FLdPr Me
  loc_BD5A87: MemLdRfVar from_stack_1.global_52
  loc_BD5A8A: NewIfNullPr clsfacipago
  loc_BD5A8D: from_stack_1 = clsfacipago.EstaFapa
  loc_BD5A92: ILdRf var_9C
  loc_BD5A95: ConcatStr
  loc_BD5A96: FStStrNoPop var_A0
  loc_BD5A99: LitStr " por favor verifique."
  loc_BD5A9C: ConcatStr
  loc_BD5A9D: FStStrNoPop var_B4
  loc_BD5AA0: FLdPr Me
  loc_BD5AA3: MemStStrCopy
  loc_BD5AA7: FFreeStr var_9C = "": var_A0 = ""
  loc_BD5AB0: FLdPr Me
  loc_BD5AB3: MemLdStr global_96
  loc_BD5AB6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5ABB: FLdPr Me
  loc_BD5ABE: VCallAd Control_ID_CodiFapaTxt
  loc_BD5AC1: CVarAd
  loc_BD5AC5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5ACA: FFree1Var var_B0 = ""
  loc_BD5ACD: LitI2_Byte &HFF
  loc_BD5ACF: IStI2 Cancel
  loc_BD5AD2: ExitProcHresult
  loc_BD5AD3: Branch loc_BD5B76
  loc_BD5AD6: LitStr vbNullString
  loc_BD5AD9: FLdPr Me
  loc_BD5ADC: VCallAd Control_ID_DetaOficLbl
  loc_BD5ADF: FStAdFunc var_98
  loc_BD5AE2: FLdPr var_98
  loc_BD5AE5: Me.Caption = from_stack_1
  loc_BD5AEA: FFree1Ad var_98
  loc_BD5AED: LitStr vbNullString
  loc_BD5AF0: FLdPr Me
  loc_BD5AF3: VCallAd Control_ID_CuenCtctLbl
  loc_BD5AF6: FStAdFunc var_98
  loc_BD5AF9: FLdPr var_98
  loc_BD5AFC: Me.Caption = from_stack_1
  loc_BD5B01: FFree1Ad var_98
  loc_BD5B04: LitStr vbNullString
  loc_BD5B07: FLdPr Me
  loc_BD5B0A: VCallAd Control_ID_CucuPersLbl
  loc_BD5B0D: FStAdFunc var_98
  loc_BD5B10: FLdPr var_98
  loc_BD5B13: Me.Caption = from_stack_1
  loc_BD5B18: FFree1Ad var_98
  loc_BD5B1B: LitStr vbNullString
  loc_BD5B1E: FLdPr Me
  loc_BD5B21: VCallAd Control_ID_DetaPersLbl
  loc_BD5B24: FStAdFunc var_98
  loc_BD5B27: FLdPr var_98
  loc_BD5B2A: Me.Caption = from_stack_1
  loc_BD5B2F: FFree1Ad var_98
  loc_BD5B32: LitStr vbNullString
  loc_BD5B35: FLdPr Me
  loc_BD5B38: VCallAd Control_ID_DomiPersLbl
  loc_BD5B3B: FStAdFunc var_98
  loc_BD5B3E: FLdPr var_98
  loc_BD5B41: Me.Caption = from_stack_1
  loc_BD5B46: FFree1Ad var_98
  loc_BD5B49: LitStr "La facilidad de pago no existe. Verifique"
  loc_BD5B4C: FLdPr Me
  loc_BD5B4F: MemStStrCopy
  loc_BD5B53: FLdPr Me
  loc_BD5B56: MemLdStr global_96
  loc_BD5B59: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5B5E: FLdPr Me
  loc_BD5B61: VCallAd Control_ID_CodiFapaTxt
  loc_BD5B64: CVarAd
  loc_BD5B68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BD5B6D: FFree1Var var_B0 = ""
  loc_BD5B70: LitI2_Byte &HFF
  loc_BD5B72: IStI2 Cancel
  loc_BD5B75: ExitProcHresult
  loc_BD5B76: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B34668
  'Data Table: 481134
  loc_B34384: FLdPr Me
  loc_B34387: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B3438A: FStAdFunc var_8C
  loc_B3438D: FLdPr var_8C
  loc_B34390: LateIdLdVar var_9C DispID_4 0
  loc_B34397: CI4Var
  loc_B34399: LitI4 1
  loc_B3439E: LeI4
  loc_B3439F: FFree1Ad var_8C
  loc_B343A2: FFree1Var var_9C = ""
  loc_B343A5: BranchF loc_B343DA
  loc_B343A8: LitVar_Missing var_10C
  loc_B343AB: LitVar_Missing var_EC
  loc_B343AE: LitVarStr var_BC, "InfoGov"
  loc_B343B3: FStVarCopyObj var_CC
  loc_B343B6: FLdRfVar var_CC
  loc_B343B9: LitI4 &H30
  loc_B343BE: LitVarStr var_AC, "No existe deuda seleccionada para realizar el credito. Reintente..."
  loc_B343C3: FStVarCopyObj var_9C
  loc_B343C6: FLdRfVar var_9C
  loc_B343C9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B343CE: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_B343D9: ExitProcHresult
  loc_B343DA: LitI2_Byte 0
  loc_B343DC: FStI2 var_88
  loc_B343DF: LitI2_Byte 1
  loc_B343E1: FLdPr Me
  loc_B343E4: MemLdRfVar from_stack_1.global_76
  loc_B343E7: FLdPr Me
  loc_B343EA: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B343ED: FStAdFunc var_8C
  loc_B343F0: FLdPr var_8C
  loc_B343F3: LateIdLdVar var_9C DispID_4 0
  loc_B343FA: CI4Var
  loc_B343FC: LitI4 1
  loc_B34401: SubI4
  loc_B34402: CI2I4
  loc_B34403: FFree1Ad var_8C
  loc_B34406: FFree1Var var_9C = ""
  loc_B34409: ForI2 var_110
  loc_B3440F: FLdPr Me
  loc_B34412: MemLdI2 global_76
  loc_B34415: CI4UI1
  loc_B34416: CVarI4
  loc_B3441A: PopAdLdVar
  loc_B3441B: LitVarI4
  loc_B34423: PopAdLdVar
  loc_B34424: FLdPr Me
  loc_B34427: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B3442A: FStAdFunc var_8C
  loc_B3442D: FLdPr var_8C
  loc_B34430: LateIdCallLdVar
  loc_B3443A: CStrVarTmp
  loc_B3443B: FStStrNoPop var_114
  loc_B3443E: LitStr "Si"
  loc_B34441: EqStr
  loc_B34443: FFree1Str var_114
  loc_B34446: FFree1Ad var_8C
  loc_B34449: FFree1Var var_9C = ""
  loc_B3444C: BranchF loc_B34454
  loc_B3444F: LitI2_Byte &HFF
  loc_B34451: FStI2 var_88
  loc_B34454: FLdPr Me
  loc_B34457: MemLdRfVar from_stack_1.global_76
  loc_B3445A: NextI2 var_110, loc_B3440F
  loc_B3445F: FLdI2 var_88
  loc_B34462: LitI2_Byte 0
  loc_B34464: EqI2
  loc_B34465: BranchF loc_B3449A
  loc_B34468: LitVar_Missing var_10C
  loc_B3446B: LitVar_Missing var_EC
  loc_B3446E: LitVarStr var_BC, "InfoGov"
  loc_B34473: FStVarCopyObj var_CC
  loc_B34476: FLdRfVar var_CC
  loc_B34479: LitI4 &H30
  loc_B3447E: LitVarStr var_AC, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_B34483: FStVarCopyObj var_9C
  loc_B34486: FLdRfVar var_9C
  loc_B34489: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B3448E: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_B34499: ExitProcHresult
  loc_B3449A: LitI2_Byte 1
  loc_B3449C: FLdPr Me
  loc_B3449F: MemLdRfVar from_stack_1.global_76
  loc_B344A2: FLdPr Me
  loc_B344A5: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B344A8: FStAdFunc var_8C
  loc_B344AB: FLdPr var_8C
  loc_B344AE: LateIdLdVar var_9C DispID_4 0
  loc_B344B5: CI4Var
  loc_B344B7: LitI4 1
  loc_B344BC: SubI4
  loc_B344BD: CI2I4
  loc_B344BE: FFree1Ad var_8C
  loc_B344C1: FFree1Var var_9C = ""
  loc_B344C4: ForI2 var_118
  loc_B344CA: FLdPr Me
  loc_B344CD: MemLdI2 global_76
  loc_B344D0: CI4UI1
  loc_B344D1: CVarI4
  loc_B344D5: PopAdLdVar
  loc_B344D6: LitVarI4
  loc_B344DE: PopAdLdVar
  loc_B344DF: FLdPr Me
  loc_B344E2: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B344E5: FStAdFunc var_8C
  loc_B344E8: FLdPr var_8C
  loc_B344EB: LateIdCallLdVar
  loc_B344F5: CStrVarTmp
  loc_B344F6: FStStrNoPop var_114
  loc_B344F9: LitStr "Si"
  loc_B344FC: EqStr
  loc_B344FE: FFree1Str var_114
  loc_B34501: FFree1Ad var_8C
  loc_B34504: FFree1Var var_9C = ""
  loc_B34507: BranchF loc_B345B0
  loc_B3450A: FLdPr Me
  loc_B3450D: MemLdI2 global_76
  loc_B34510: CI4UI1
  loc_B34511: CVarI4
  loc_B34515: PopAdLdVar
  loc_B34516: LitVarI4
  loc_B3451E: PopAdLdVar
  loc_B3451F: FLdPr Me
  loc_B34522: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_B34525: FStAdFunc var_8C
  loc_B34528: FLdPr var_8C
  loc_B3452B: LateIdCallLdVar
  loc_B34535: CStrVarTmp
  loc_B34536: FStStrNoPop var_114
  loc_B34539: CI2Str
  loc_B3453B: FStI2 var_86
  loc_B3453E: FFree1Str var_114
  loc_B34541: FFree1Ad var_8C
  loc_B34544: FFree1Var var_9C = ""
  loc_B34547: FLdRfVar var_114
  loc_B3454A: FLdPr Me
  loc_B3454D: VCallAd Control_ID_CodiFapaTxt
  loc_B34550: FStAdFunc var_8C
  loc_B34553: FLdPr var_8C
  loc_B34556:  = Me.Text
  loc_B3455B: FLdRfVar var_120
  loc_B3455E: FLdPr Me
  loc_B34561: VCallAd Control_ID_ExpeCtctTxt
  loc_B34564: FStAdFunc var_11C
  loc_B34567: FLdPr var_11C
  loc_B3456A:  = Me.Text
  loc_B3456F: FLdRfVar var_128
  loc_B34572: FLdPr Me
  loc_B34575: VCallAd Control_ID_DetaCtctTxt
  loc_B34578: FStAdFunc var_124
  loc_B3457B: FLdPr var_124
  loc_B3457E:  = Me.Text
  loc_B34583: FLdI2 var_86
  loc_B34586: ILdRf var_128
  loc_B34589: ILdRf var_120
  loc_B3458C: ILdRf var_114
  loc_B3458F: CI4Str
  loc_B34590: FLdPr Me
  loc_B34593: MemLdRfVar from_stack_1.global_64
  loc_B34596: NewIfNullPr clsctacte
  loc_B34599: Call clsctacte.CreaCreditosCtaCteCuotadePlanDePago(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B3459E: FFreeStr var_114 = "": var_120 = ""
  loc_B345A7: FFreeAd var_8C = "": var_11C = ""
  loc_B345B0: FLdPr Me
  loc_B345B3: MemLdRfVar from_stack_1.global_76
  loc_B345B6: NextI2 var_118, loc_B344CA
  loc_B345BB: LitStr "El CREDITO MANUAL se realizo con exito"
  loc_B345BE: FLdPr Me
  loc_B345C1: MemStStrCopy
  loc_B345C5: FLdPr Me
  loc_B345C8: MemLdStr global_96
  loc_B345CB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B345D0: ILdRf Me
  loc_B345D3: CastAd
  loc_B345D6: FStAdFunc var_8C
  loc_B345D9: FLdRfVar var_8C
  loc_B345DC: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_B345E1: FFree1Ad var_8C
  loc_B345E4: Call Proc_322_10_AA2748()
  loc_B345E9: LitI4 1
  loc_B345EE: LitI4 1
  loc_B345F3: LitVarStr var_BC, "0.00"
  loc_B345F8: FStVarCopyObj var_CC
  loc_B345FB: FLdRfVar var_CC
  loc_B345FE: LitVarI2 var_9C, 0
  loc_B34603: FLdRfVar var_EC
  loc_B34606: ImpAdCallFPR4  = Format(, )
  loc_B3460B: FLdRfVar var_EC
  loc_B3460E: CStrVarVal var_114
  loc_B34612: FLdPr Me
  loc_B34615: VCallAd Control_ID_txtTotalCreditos
  loc_B34618: FStAdFunc var_8C
  loc_B3461B: FLdPr var_8C
  loc_B3461E: Me.Text = from_stack_1
  loc_B34623: FFree1Str var_114
  loc_B34626: FFree1Ad var_8C
  loc_B34629: FFreeVar var_9C = "": var_CC = ""
  loc_B34632: LitI4 0
  loc_B34637: LitI4 0
  loc_B3463C: FLdRfVar var_12C
  loc_B3463F: Redim
  loc_B34649: FLdPr Me
  loc_B3464C: VCallAd Control_ID_ConfirmarCmd
  loc_B3464F: CVarAd
  loc_B34653: ParmAry1St
  loc_B34659: FLdRfVar var_12C
  loc_B3465C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B34661: FLdRfVar var_12C
  loc_B34664: Erase
  loc_B34665: ExitProcHresult
End Sub

Private Sub DetaCtctTxt_Validate(Cancel As Boolean) 'A80448
  'Data Table: 481134
  loc_A803C4: FLdRfVar var_8A
  loc_A803C7: FLdPr Me
  loc_A803CA: VCallAd Control_ID_DetaCtctTxt
  loc_A803CD: FStAdFunc var_88
  loc_A803D0: FLdPr var_88
  loc_A803D3:  = Me.Enabled
  loc_A803D8: FLdI2 var_8A
  loc_A803DB: FFree1Ad var_88
  loc_A803DE: BranchF loc_A80444
  loc_A803E1: FLdRfVar var_90
  loc_A803E4: FLdPr Me
  loc_A803E7: VCallAd Control_ID_DetaCtctTxt
  loc_A803EA: FStAdFunc var_88
  loc_A803ED: FLdPr var_88
  loc_A803F0:  = Me.Text
  loc_A803F5: ILdRf var_90
  loc_A803F8: LitStr "Detalle del Crédito Manual"
  loc_A803FB: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A80400: FStStrNoPop var_94
  loc_A80403: FLdPr Me
  loc_A80406: MemStStrCopy
  loc_A8040A: FFreeStr var_90 = ""
  loc_A80411: FFree1Ad var_88
  loc_A80414: FLdPr Me
  loc_A80417: MemLdStr global_96
  loc_A8041A: LitStr vbNullString
  loc_A8041D: NeStr
  loc_A8041F: BranchF loc_A80444
  loc_A80422: FLdPr Me
  loc_A80425: MemLdStr global_96
  loc_A80428: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8042D: FLdPr Me
  loc_A80430: VCallAd Control_ID_DetaCtctTxt
  loc_A80433: CVarAd
  loc_A80437: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8043C: FFree1Var var_A4 = ""
  loc_A8043F: LitI2_Byte &HFF
  loc_A80441: IStI2 Cancel
  loc_A80444: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CDA34
  'Data Table: 481134
  loc_9CDA1C: ILdRf Me
  loc_9CDA1F: FStAdNoPop
  loc_9CDA23: ImpAdLdRf MemVar_D9C5D8
  loc_9CDA26: NewIfNullPr Global
  loc_9CDA29: Global.Unload from_stack_1
  loc_9CDA2E: FFree1Ad var_88
  loc_9CDA31: ExitProcHresult
End Sub

Private Function Proc_322_10_AA2748() 'AA2748
  'Data Table: 481134
  loc_AA2684: FLdPr Me
  loc_AA2687: VCallAd Control_ID_CuotasImpagasFacilidadFlex
  loc_AA268A: FStAdFunc var_88
  loc_AA268D: FLdPr var_88
  loc_AA2690: LateIdCall
  loc_AA2698: LitVarI4
  loc_AA26A0: PopAdLdVar
  loc_AA26A1: FLdPr var_88
  loc_AA26A4: LateIdSt
  loc_AA26A9: LitVarI4
  loc_AA26B1: PopAdLdVar
  loc_AA26B2: LitVarI4
  loc_AA26BA: PopAdLdVar
  loc_AA26BB: LitVarStr var_D8, "Facilidad"
  loc_AA26C0: PopAdLdVar
  loc_AA26C1: FLdPr var_88
  loc_AA26C4: LateIdCallSt
  loc_AA26CC: LitVarI4
  loc_AA26D4: PopAdLdVar
  loc_AA26D5: LitVarI4
  loc_AA26DD: PopAdLdVar
  loc_AA26DE: LitVarStr var_D8, "Cuota"
  loc_AA26E3: PopAdLdVar
  loc_AA26E4: FLdPr var_88
  loc_AA26E7: LateIdCallSt
  loc_AA26EF: LitVarI4
  loc_AA26F7: PopAdLdVar
  loc_AA26F8: LitVarI4
  loc_AA2700: PopAdLdVar
  loc_AA2701: LitVarStr var_D8, "Total"
  loc_AA2706: PopAdLdVar
  loc_AA2707: FLdPr var_88
  loc_AA270A: LateIdCallSt
  loc_AA2712: LitVarI4
  loc_AA271A: PopAdLdVar
  loc_AA271B: LitVarI4
  loc_AA2723: PopAdLdVar
  loc_AA2724: LitVarStr var_D8, "Sel"
  loc_AA2729: PopAdLdVar
  loc_AA272A: FLdPr var_88
  loc_AA272D: LateIdCallSt
  loc_AA2735: FLdPr var_88
  loc_AA2738: LateIdCall
  loc_AA2740: LitNothing
  loc_AA2742: FStAd var_88 
  loc_AA2746: ExitProcHresult
End Function
