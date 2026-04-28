VERSION 5.00
Begin VB.Form dlgCreaVehiculo
  Caption = "Crea Vehiculo"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 15132
  ClientHeight = 3972
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox PateVehiTxt
    ForeColor = &HFF0000&
    Left = 2145
    Top = 360
    Width = 1695
    Height = 360
    TabIndex = 0
    MaxLength = 10
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
  Begin VB.TextBox TipoVehiTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 840
    Width = 3855
    Height = 360
    TabIndex = 1
    MaxLength = 20
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
  Begin VB.TextBox ModeVehiTxt
    ForeColor = &HFF0000&
    Left = 2145
    Top = 1800
    Width = 7695
    Height = 360
    TabIndex = 3
    MaxLength = 40
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
  Begin VB.TextBox MarcVehiTxt
    ForeColor = &HFF0000&
    Left = 2145
    Top = 1320
    Width = 7695
    Height = 360
    TabIndex = 2
    MaxLength = 40
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
  Begin VB.TextBox ColoVehiTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 2280
    Width = 7695
    Height = 360
    TabIndex = 4
    MaxLength = 40
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 6840
    Top = 3000
    Width = 1215
    Height = 375
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
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 4680
    Top = 3000
    Width = 1215
    Height = 375
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
  Begin VB.Label Label9
    Caption = "Patente:"
    Left = 1200
    Top = 360
    Width = 900
    Height = 300
    TabIndex = 11
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
  Begin VB.Label Label2
    Caption = "Tipo:"
    Left = 1560
    Top = 840
    Width = 510
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
  Begin VB.Label Label12
    Caption = "Modelo:"
    Left = 1200
    Top = 1800
    Width = 840
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
  Begin VB.Label Label11
    Caption = "Marca:"
    Left = 1320
    Top = 1320
    Width = 720
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
  Begin VB.Label Label4
    Caption = "Color:"
    Left = 1545
    Top = 2280
    Width = 615
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
End

Attribute VB_Name = "dlgCreaVehiculo"

Public boAceptar As Boolean
Public sCucuPers As String
Public doValidaCuil As Boolean


Private Sub MarcVehiTxt_GotFocus() '9C0CB0
  'Data Table: 44246C
  loc_9C0C9C: FLdPr Me
  loc_9C0C9F: VCallAd Control_ID_MarcVehiTxt
  loc_9C0CA2: CVarAd
  loc_9C0CA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0CAB: FFree1Var var_94 = ""
  loc_9C0CAE: ExitProcHresult
End Sub

Private Sub MarcVehiTxt_Validate(Cancel As Boolean) 'A7FA54
  'Data Table: 44246C
  loc_A7F9D0: FLdRfVar var_8A
  loc_A7F9D3: FLdPr Me
  loc_A7F9D6: VCallAd Control_ID_MarcVehiTxt
  loc_A7F9D9: FStAdFunc var_88
  loc_A7F9DC: FLdPr var_88
  loc_A7F9DF:  = Me.Enabled
  loc_A7F9E4: FLdI2 var_8A
  loc_A7F9E7: FFree1Ad var_88
  loc_A7F9EA: BranchF loc_A7FA50
  loc_A7F9ED: FLdRfVar var_90
  loc_A7F9F0: FLdPr Me
  loc_A7F9F3: VCallAd Control_ID_MarcVehiTxt
  loc_A7F9F6: FStAdFunc var_88
  loc_A7F9F9: FLdPr var_88
  loc_A7F9FC:  = Me.Text
  loc_A7FA01: ILdRf var_90
  loc_A7FA04: LitStr "Tipo"
  loc_A7FA07: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7FA0C: FStStrNoPop var_94
  loc_A7FA0F: FLdPr Me
  loc_A7FA12: MemStStrCopy
  loc_A7FA16: FFreeStr var_90 = ""
  loc_A7FA1D: FFree1Ad var_88
  loc_A7FA20: FLdPr Me
  loc_A7FA23: MemLdStr global_72
  loc_A7FA26: LitStr vbNullString
  loc_A7FA29: NeStr
  loc_A7FA2B: BranchF loc_A7FA50
  loc_A7FA2E: FLdPr Me
  loc_A7FA31: MemLdStr global_72
  loc_A7FA34: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FA39: FLdPr Me
  loc_A7FA3C: VCallAd Control_ID_MarcVehiTxt
  loc_A7FA3F: CVarAd
  loc_A7FA43: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FA48: FFree1Var var_A4 = ""
  loc_A7FA4B: LitI2_Byte &HFF
  loc_A7FA4D: IStI2 Cancel
  loc_A7FA50: ExitProcHresult
  loc_A7FA51: StAryRecCopy
End Sub

Private Sub ModeVehiTxt_GotFocus() '9C07E8
  'Data Table: 44246C
  loc_9C07D4: FLdPr Me
  loc_9C07D7: VCallAd Control_ID_ModeVehiTxt
  loc_9C07DA: CVarAd
  loc_9C07DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C07E3: FFree1Var var_94 = ""
  loc_9C07E6: ExitProcHresult
End Sub

Private Sub ModeVehiTxt_Validate(Cancel As Boolean) 'A7FB18
  'Data Table: 44246C
  loc_A7FA94: FLdRfVar var_8A
  loc_A7FA97: FLdPr Me
  loc_A7FA9A: VCallAd Control_ID_ModeVehiTxt
  loc_A7FA9D: FStAdFunc var_88
  loc_A7FAA0: FLdPr var_88
  loc_A7FAA3:  = Me.Enabled
  loc_A7FAA8: FLdI2 var_8A
  loc_A7FAAB: FFree1Ad var_88
  loc_A7FAAE: BranchF loc_A7FB14
  loc_A7FAB1: FLdRfVar var_90
  loc_A7FAB4: FLdPr Me
  loc_A7FAB7: VCallAd Control_ID_ModeVehiTxt
  loc_A7FABA: FStAdFunc var_88
  loc_A7FABD: FLdPr var_88
  loc_A7FAC0:  = Me.Text
  loc_A7FAC5: ILdRf var_90
  loc_A7FAC8: LitStr "Modelo"
  loc_A7FACB: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7FAD0: FStStrNoPop var_94
  loc_A7FAD3: FLdPr Me
  loc_A7FAD6: MemStStrCopy
  loc_A7FADA: FFreeStr var_90 = ""
  loc_A7FAE1: FFree1Ad var_88
  loc_A7FAE4: FLdPr Me
  loc_A7FAE7: MemLdStr global_72
  loc_A7FAEA: LitStr vbNullString
  loc_A7FAED: NeStr
  loc_A7FAEF: BranchF loc_A7FB14
  loc_A7FAF2: FLdPr Me
  loc_A7FAF5: MemLdStr global_72
  loc_A7FAF8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FAFD: FLdPr Me
  loc_A7FB00: VCallAd Control_ID_ModeVehiTxt
  loc_A7FB03: CVarAd
  loc_A7FB07: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FB0C: FFree1Var var_A4 = ""
  loc_A7FB0F: LitI2_Byte &HFF
  loc_A7FB11: IStI2 Cancel
  loc_A7FB14: ExitProcHresult
End Sub

Private Sub TipoVehiTxt_Validate(Cancel As Boolean) 'A7FE28
  'Data Table: 44246C
  loc_A7FDA4: FLdRfVar var_8A
  loc_A7FDA7: FLdPr Me
  loc_A7FDAA: VCallAd Control_ID_TipoVehiTxt
  loc_A7FDAD: FStAdFunc var_88
  loc_A7FDB0: FLdPr var_88
  loc_A7FDB3:  = Me.Enabled
  loc_A7FDB8: FLdI2 var_8A
  loc_A7FDBB: FFree1Ad var_88
  loc_A7FDBE: BranchF loc_A7FE24
  loc_A7FDC1: FLdRfVar var_90
  loc_A7FDC4: FLdPr Me
  loc_A7FDC7: VCallAd Control_ID_TipoVehiTxt
  loc_A7FDCA: FStAdFunc var_88
  loc_A7FDCD: FLdPr var_88
  loc_A7FDD0:  = Me.Text
  loc_A7FDD5: ILdRf var_90
  loc_A7FDD8: LitStr "Tipo"
  loc_A7FDDB: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7FDE0: FStStrNoPop var_94
  loc_A7FDE3: FLdPr Me
  loc_A7FDE6: MemStStrCopy
  loc_A7FDEA: FFreeStr var_90 = ""
  loc_A7FDF1: FFree1Ad var_88
  loc_A7FDF4: FLdPr Me
  loc_A7FDF7: MemLdStr global_72
  loc_A7FDFA: LitStr vbNullString
  loc_A7FDFD: NeStr
  loc_A7FDFF: BranchF loc_A7FE24
  loc_A7FE02: FLdPr Me
  loc_A7FE05: MemLdStr global_72
  loc_A7FE08: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FE0D: FLdPr Me
  loc_A7FE10: VCallAd Control_ID_TipoVehiTxt
  loc_A7FE13: CVarAd
  loc_A7FE17: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FE1C: FFree1Var var_A4 = ""
  loc_A7FE1F: LitI2_Byte &HFF
  loc_A7FE21: IStI2 Cancel
  loc_A7FE24: ExitProcHresult
End Sub

Private Sub Form_Load() 'A5933C
  'Data Table: 44246C
  loc_A592DC: LitStr vbNullString
  loc_A592DF: FLdPr Me
  loc_A592E2: VCallAd Control_ID_TipoVehiTxt
  loc_A592E5: FStAdFunc var_88
  loc_A592E8: FLdPr var_88
  loc_A592EB: Me.Text = from_stack_1
  loc_A592F0: FFree1Ad var_88
  loc_A592F3: LitStr vbNullString
  loc_A592F6: FLdPr Me
  loc_A592F9: VCallAd Control_ID_MarcVehiTxt
  loc_A592FC: FStAdFunc var_88
  loc_A592FF: FLdPr var_88
  loc_A59302: Me.Text = from_stack_1
  loc_A59307: FFree1Ad var_88
  loc_A5930A: LitStr vbNullString
  loc_A5930D: FLdPr Me
  loc_A59310: VCallAd Control_ID_ModeVehiTxt
  loc_A59313: FStAdFunc var_88
  loc_A59316: FLdPr var_88
  loc_A59319: Me.Text = from_stack_1
  loc_A5931E: FFree1Ad var_88
  loc_A59321: LitStr vbNullString
  loc_A59324: FLdPr Me
  loc_A59327: VCallAd Control_ID_ColoVehiTxt
  loc_A5932A: FStAdFunc var_88
  loc_A5932D: FLdPr var_88
  loc_A59330: Me.Text = from_stack_1
  loc_A59335: FFree1Ad var_88
  loc_A59338: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9AED68
  'Data Table: 44246C
  loc_9AED64: ExitProcHresult
End Sub

Private Sub PateVehiTxt_GotFocus() '9C06C8
  'Data Table: 44246C
  loc_9C06B4: FLdPr Me
  loc_9C06B7: VCallAd Control_ID_PateVehiTxt
  loc_9C06BA: CVarAd
  loc_9C06BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C06C3: FFree1Var var_94 = ""
  loc_9C06C6: ExitProcHresult
End Sub

Private Sub PateVehiTxt_Validate(Cancel As Boolean) 'A7FD64
  'Data Table: 44246C
  loc_A7FCE0: FLdRfVar var_8A
  loc_A7FCE3: FLdPr Me
  loc_A7FCE6: VCallAd Control_ID_PateVehiTxt
  loc_A7FCE9: FStAdFunc var_88
  loc_A7FCEC: FLdPr var_88
  loc_A7FCEF:  = Me.Enabled
  loc_A7FCF4: FLdI2 var_8A
  loc_A7FCF7: FFree1Ad var_88
  loc_A7FCFA: BranchF loc_A7FD60
  loc_A7FCFD: FLdRfVar var_90
  loc_A7FD00: FLdPr Me
  loc_A7FD03: VCallAd Control_ID_PateVehiTxt
  loc_A7FD06: FStAdFunc var_88
  loc_A7FD09: FLdPr var_88
  loc_A7FD0C:  = Me.Text
  loc_A7FD11: ILdRf var_90
  loc_A7FD14: LitStr "Patente"
  loc_A7FD17: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7FD1C: FStStrNoPop var_94
  loc_A7FD1F: FLdPr Me
  loc_A7FD22: MemStStrCopy
  loc_A7FD26: FFreeStr var_90 = ""
  loc_A7FD2D: FFree1Ad var_88
  loc_A7FD30: FLdPr Me
  loc_A7FD33: MemLdStr global_72
  loc_A7FD36: LitStr vbNullString
  loc_A7FD39: NeStr
  loc_A7FD3B: BranchF loc_A7FD60
  loc_A7FD3E: FLdPr Me
  loc_A7FD41: MemLdStr global_72
  loc_A7FD44: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FD49: FLdPr Me
  loc_A7FD4C: VCallAd Control_ID_PateVehiTxt
  loc_A7FD4F: CVarAd
  loc_A7FD53: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FD58: FFree1Var var_A4 = ""
  loc_A7FD5B: LitI2_Byte &HFF
  loc_A7FD5D: IStI2 Cancel
  loc_A7FD60: ExitProcHresult
  loc_A7FD61: StAryCopy
End Sub

Private Sub CancelButton_Click() '9E9494
  'Data Table: 44246C
  loc_9E9474: LitI2_Byte 0
  loc_9E9476: FLdPr Me
  loc_9E9479: MemStI2 boAceptar
  loc_9E947C: ILdRf Me
  loc_9E947F: FStAdNoPop
  loc_9E9483: ImpAdLdRf MemVar_D9C5D8
  loc_9E9486: NewIfNullPr Global
  loc_9E9489: Global.Unload from_stack_1
  loc_9E948E: FFree1Ad var_88
  loc_9E9491: ExitProcHresult
  loc_9E9492: FLdFPR8 var_BB0
End Sub

Private Sub ColoVehiTxt_Validate(Cancel As Boolean) 'A7F808
  'Data Table: 44246C
  loc_A7F784: FLdRfVar var_8A
  loc_A7F787: FLdPr Me
  loc_A7F78A: VCallAd Control_ID_ColoVehiTxt
  loc_A7F78D: FStAdFunc var_88
  loc_A7F790: FLdPr var_88
  loc_A7F793:  = Me.Enabled
  loc_A7F798: FLdI2 var_8A
  loc_A7F79B: FFree1Ad var_88
  loc_A7F79E: BranchF loc_A7F804
  loc_A7F7A1: FLdRfVar var_90
  loc_A7F7A4: FLdPr Me
  loc_A7F7A7: VCallAd Control_ID_ColoVehiTxt
  loc_A7F7AA: FStAdFunc var_88
  loc_A7F7AD: FLdPr var_88
  loc_A7F7B0:  = Me.Text
  loc_A7F7B5: ILdRf var_90
  loc_A7F7B8: LitStr "Color"
  loc_A7F7BB: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7F7C0: FStStrNoPop var_94
  loc_A7F7C3: FLdPr Me
  loc_A7F7C6: MemStStrCopy
  loc_A7F7CA: FFreeStr var_90 = ""
  loc_A7F7D1: FFree1Ad var_88
  loc_A7F7D4: FLdPr Me
  loc_A7F7D7: MemLdStr global_72
  loc_A7F7DA: LitStr vbNullString
  loc_A7F7DD: NeStr
  loc_A7F7DF: BranchF loc_A7F804
  loc_A7F7E2: FLdPr Me
  loc_A7F7E5: MemLdStr global_72
  loc_A7F7E8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7F7ED: FLdPr Me
  loc_A7F7F0: VCallAd Control_ID_ColoVehiTxt
  loc_A7F7F3: CVarAd
  loc_A7F7F7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7F7FC: FFree1Var var_A4 = ""
  loc_A7F7FF: LitI2_Byte &HFF
  loc_A7F801: IStI2 Cancel
  loc_A7F804: ExitProcHresult
End Sub

Public Function boAceptarGet() '442CA4
  boAceptarGet = boAceptar
End Function

Public Sub boAceptarPut(Value) '442CB3
  boAceptar = Value
End Sub

Public Function sCucuPersGet() '442CC2
  sCucuPersGet = sCucuPers
End Function

Public Sub sCucuPersPut(Value) '442CD1
  sCucuPers = Value
End Sub

Public Function doValidaCuilGet() '442CE0
  doValidaCuilGet = doValidaCuil
End Function

Public Sub doValidaCuilPut(Value) '442CEF
  doValidaCuil = Value
End Sub
