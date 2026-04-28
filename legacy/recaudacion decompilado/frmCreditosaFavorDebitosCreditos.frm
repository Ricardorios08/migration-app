VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditosaFavorDebitosCreditos
  Caption = "Creditos a Favor"
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
  ClientHeight = 10152
  Begin VB.TextBox txtTotal
    Left = 13200
    Top = 5400
    Width = 1815
    Height = 345
    TabIndex = 25
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
  Begin VB.TextBox txtTotaReca
    Left = 10440
    Top = 5400
    Width = 1815
    Height = 345
    TabIndex = 24
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
    Left = 3240
    Top = 5400
    Width = 1815
    Height = 345
    TabIndex = 23
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 6000
    Width = 15015
    Height = 3855
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
    Begin VB.OptionButton DebitosOpt
      Caption = "Créditos a Favor"
      Left = 1920
      Top = 240
      Width = 2175
      Height = 375
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
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton CreditosOpt
      Caption = "Descuentos de Créditos a Favor"
      Left = 1920
      Top = 720
      Width = 3975
      Height = 375
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
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiConcTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1200
      Width = 1335
      Height = 345
      TabIndex = 13
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
    Begin VB.CommandButton ConfirmarCmd
      Left = 4680
      Top = 3120
      Width = 1335
      Height = 525
      TabIndex = 21
      Picture = "frmCreditosaFavorDebitosCreditos.frx":0000
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 2640
      Width = 1575
      Height = 345
      TabIndex = 20
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
      Left = 1920
      Top = 2160
      Width = 9015
      Height = 345
      TabIndex = 18
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
    Begin VB.TextBox ExpeCtctTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1680
      Width = 1695
      Height = 345
      TabIndex = 16
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
    Begin VB.Label DetaConcLbl
      Left = 3240
      Top = 1200
      Width = 5775
      Height = 345
      TabIndex = 14
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
    Begin VB.Label Label14
      Caption = "Recurso:"
      Left = 840
      Top = 1200
      Width = 960
      Height = 300
      TabIndex = 12
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
    Begin VB.Label Label12
      Caption = "Importe:"
      Left = 1005
      Top = 2640
      Width = 885
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
      Left = 255
      Top = 2160
      Width = 1635
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
      Left = 630
      Top = 1680
      Width = 1260
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
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1080
    Top = 120
    Width = 2175
    Height = 420
    TabIndex = 1
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
    Left = 6240
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmCreditosaFavorDebitosCreditos.frx":032E
    Style = 1
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4200
    Top = 120
    Width = 1935
    Height = 345
    TabIndex = 3
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
    Left = 14160
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 22
    Picture = "frmCreditosaFavorDebitosCreditos.frx":0410
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1080
    Width = 15015
    Height = 4095
    TabIndex = 8
    OleObjectBlob = "frmCreditosaFavorDebitosCreditos.frx":0662
    Appearance = 0 'Flat
  End
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12360
    Top = 5400
    Width = 690
    Height = 300
    TabIndex = 28
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
    Caption = "Total de créditos afectados en la cta cte:"
    Left = 5400
    Top = 5400
    Width = 4935
    Height = 300
    TabIndex = 27
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
    Caption = "Total Créditos:"
    Left = 1320
    Top = 5400
    Width = 1770
    Height = 300
    TabIndex = 26
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8880
    Top = 120
    Width = 5175
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 120
    Width = 1695
    Height = 315
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 600
    Width = 6855
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 240
    Top = 120
    Width = 795
    Height = 300
    TabIndex = 0
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
    Left = 3360
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 2
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

Attribute VB_Name = "frmCreditosaFavorDebitosCreditos"


Private Sub DebitosOpt_Click() 'B06AD4
  'Data Table: 4CF43C
  loc_B068C0: FLdRfVar var_8A
  loc_B068C3: FLdPr Me
  loc_B068C6: VCallAd Control_ID_DebitosOpt
  loc_B068C9: FStAdFunc var_88
  loc_B068CC: FLdPr var_88
  loc_B068CF:  = Me.Value
  loc_B068D4: FLdI2 var_8A
  loc_B068D7: LitI2_Byte &HFF
  loc_B068D9: EqI2
  loc_B068DA: FFree1Ad var_88
  loc_B068DD: BranchF loc_B06AD0
  loc_B068E0: LitI2_Byte 1
  loc_B068E2: FLdPr Me
  loc_B068E5: MemLdRfVar from_stack_1.global_60
  loc_B068E8: FLdPr Me
  loc_B068EB: VCallAd Control_ID_ctacteFlex
  loc_B068EE: FStAdFunc var_88
  loc_B068F1: FLdPr var_88
  loc_B068F4: LateIdLdVar var_9C DispID_4 0
  loc_B068FB: CI4Var
  loc_B068FD: LitI4 1
  loc_B06902: SubI4
  loc_B06903: CI2I4
  loc_B06904: FFree1Ad var_88
  loc_B06907: FFree1Var var_9C = ""
  loc_B0690A: ForI2 var_A0
  loc_B06910: FLdPr Me
  loc_B06913: MemLdI2 global_60
  loc_B06916: CI4UI1
  loc_B06917: CVarI4
  loc_B0691B: PopAdLdVar
  loc_B0691C: LitVarI4
  loc_B06924: PopAdLdVar
  loc_B06925: FLdPr Me
  loc_B06928: VCallAd Control_ID_ctacteFlex
  loc_B0692B: FStAdFunc var_88
  loc_B0692E: FLdPr var_88
  loc_B06931: LateIdCallLdVar
  loc_B0693B: CStrVarTmp
  loc_B0693C: CVarStr var_F0
  loc_B0693F: ImpAdCallI2 IsNumeric()
  loc_B06944: FFree1Ad var_88
  loc_B06947: FFreeVar var_9C = ""
  loc_B0694E: BranchF loc_B06AC5
  loc_B06951: FLdPr Me
  loc_B06954: MemLdI2 global_60
  loc_B06957: CI4UI1
  loc_B06958: CVarI4
  loc_B0695C: PopAdLdVar
  loc_B0695D: LitVarI4
  loc_B06965: PopAdLdVar
  loc_B06966: FLdPr Me
  loc_B06969: VCallAd Control_ID_ctacteFlex
  loc_B0696C: FStAdFunc var_88
  loc_B0696F: FLdPr var_88
  loc_B06972: LateIdCallLdVar
  loc_B0697C: CStrVarTmp
  loc_B0697D: FStStrNoPop var_F4
  loc_B06980: CR8Str
  loc_B06982: LitI2_Byte 1
  loc_B06984: CR8I2
  loc_B06985: EqR4
  loc_B06986: FFree1Str var_F4
  loc_B06989: FFree1Ad var_88
  loc_B0698C: FFree1Var var_9C = ""
  loc_B0698F: BranchF loc_B06A2D
  loc_B06992: FLdPr Me
  loc_B06995: MemLdI2 global_60
  loc_B06998: CI4UI1
  loc_B06999: CVarI4
  loc_B0699D: PopAdLdVar
  loc_B0699E: FLdPr Me
  loc_B069A1: VCallAd Control_ID_ctacteFlex
  loc_B069A4: FStAdFunc var_88
  loc_B069A7: FLdPr var_88
  loc_B069AA: LateIdSt
  loc_B069AF: FFree1Ad var_88
  loc_B069B2: LitI2_Byte 0
  loc_B069B4: FLdPr Me
  loc_B069B7: MemLdRfVar from_stack_1.global_62
  loc_B069BA: FLdPr Me
  loc_B069BD: VCallAd Control_ID_ctacteFlex
  loc_B069C0: FStAdFunc var_88
  loc_B069C3: FLdPr var_88
  loc_B069C6: LateIdLdVar var_9C DispID_5 0
  loc_B069CD: CI4Var
  loc_B069CF: LitI4 1
  loc_B069D4: SubI4
  loc_B069D5: CI2I4
  loc_B069D6: FFree1Ad var_88
  loc_B069D9: FFree1Var var_9C = ""
  loc_B069DC: ForI2 var_F8
  loc_B069E2: FLdPr Me
  loc_B069E5: MemLdI2 global_62
  loc_B069E8: CI4UI1
  loc_B069E9: CVarI4
  loc_B069ED: PopAdLdVar
  loc_B069EE: FLdPr Me
  loc_B069F1: VCallAd Control_ID_ctacteFlex
  loc_B069F4: FStAdFunc var_88
  loc_B069F7: FLdPr var_88
  loc_B069FA: LateIdSt
  loc_B069FF: FFree1Ad var_88
  loc_B06A02: LitVarI4
  loc_B06A0A: PopAdLdVar
  loc_B06A0B: FLdPr Me
  loc_B06A0E: VCallAd Control_ID_ctacteFlex
  loc_B06A11: FStAdFunc var_88
  loc_B06A14: FLdPr var_88
  loc_B06A17: LateIdSt
  loc_B06A1C: FFree1Ad var_88
  loc_B06A1F: FLdPr Me
  loc_B06A22: MemLdRfVar from_stack_1.global_62
  loc_B06A25: NextI2 var_F8, loc_B069E2
  loc_B06A2A: Branch loc_B06AC5
  loc_B06A2D: FLdPr Me
  loc_B06A30: MemLdI2 global_60
  loc_B06A33: CI4UI1
  loc_B06A34: CVarI4
  loc_B06A38: PopAdLdVar
  loc_B06A39: FLdPr Me
  loc_B06A3C: VCallAd Control_ID_ctacteFlex
  loc_B06A3F: FStAdFunc var_88
  loc_B06A42: FLdPr var_88
  loc_B06A45: LateIdSt
  loc_B06A4A: FFree1Ad var_88
  loc_B06A4D: LitI2_Byte 0
  loc_B06A4F: FLdPr Me
  loc_B06A52: MemLdRfVar from_stack_1.global_62
  loc_B06A55: FLdPr Me
  loc_B06A58: VCallAd Control_ID_ctacteFlex
  loc_B06A5B: FStAdFunc var_88
  loc_B06A5E: FLdPr var_88
  loc_B06A61: LateIdLdVar var_9C DispID_5 0
  loc_B06A68: CI4Var
  loc_B06A6A: LitI4 1
  loc_B06A6F: SubI4
  loc_B06A70: CI2I4
  loc_B06A71: FFree1Ad var_88
  loc_B06A74: FFree1Var var_9C = ""
  loc_B06A77: ForI2 var_FC
  loc_B06A7D: FLdPr Me
  loc_B06A80: MemLdI2 global_62
  loc_B06A83: CI4UI1
  loc_B06A84: CVarI4
  loc_B06A88: PopAdLdVar
  loc_B06A89: FLdPr Me
  loc_B06A8C: VCallAd Control_ID_ctacteFlex
  loc_B06A8F: FStAdFunc var_88
  loc_B06A92: FLdPr var_88
  loc_B06A95: LateIdSt
  loc_B06A9A: FFree1Ad var_88
  loc_B06A9D: LitVarI4
  loc_B06AA5: PopAdLdVar
  loc_B06AA6: FLdPr Me
  loc_B06AA9: VCallAd Control_ID_ctacteFlex
  loc_B06AAC: FStAdFunc var_88
  loc_B06AAF: FLdPr var_88
  loc_B06AB2: LateIdSt
  loc_B06AB7: FFree1Ad var_88
  loc_B06ABA: FLdPr Me
  loc_B06ABD: MemLdRfVar from_stack_1.global_62
  loc_B06AC0: NextI2 var_FC, loc_B06A7D
  loc_B06AC5: FLdPr Me
  loc_B06AC8: MemLdRfVar from_stack_1.global_60
  loc_B06ACB: NextI2 var_A0, loc_B06910
  loc_B06AD0: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A48EBC
  'Data Table: 4CF43C
  loc_A48E70: Call Proc_178_21_B11AD8()
  loc_A48E75: LitI4 0
  loc_A48E7A: LitI4 0
  loc_A48E7F: FLdRfVar var_88
  loc_A48E82: Redim
  loc_A48E8C: FLdPr Me
  loc_A48E8F: VCallAd Control_ID_ConfirmarCmd
  loc_A48E92: CVarAd
  loc_A48E96: ParmAry1St
  loc_A48E9C: FLdRfVar var_88
  loc_A48E9F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A48EA4: FLdRfVar var_88
  loc_A48EA7: Erase
  loc_A48EA8: FLdPrThis
  loc_A48EA9: VCallAd Control_ID_NumeCtaTxt
  loc_A48EAC: CVarAd
  loc_A48EB0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A48EB5: FFree1Var var_98 = ""
  loc_A48EB8: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B21F64
  'Data Table: 4CF43C
  loc_B21CC4: LitStr "1234567890 "
  loc_B21CC7: FStStrCopy var_88
  loc_B21CCA: FLdRfVar var_88
  loc_B21CCD: ILdRf KeyAscii
  loc_B21CD0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_B21CD5: IStI2 KeyAscii
  loc_B21CD8: FFree1Str var_88
  loc_B21CDB: ILdI2 KeyAscii
  loc_B21CDE: LitI2_Byte &H20
  loc_B21CE0: EqI2
  loc_B21CE1: BranchF loc_B21F61
  loc_B21CE4: LitI2_Byte 0
  loc_B21CE6: IStI2 KeyAscii
  loc_B21CE9: FLdRfVar var_8E
  loc_B21CEC: FLdPr Me
  loc_B21CEF: VCallAd Control_ID_OficinaCbo
  loc_B21CF2: FStAdFunc var_8C
  loc_B21CF5: FLdPr var_8C
  loc_B21CF8:  = Me.ListIndex
  loc_B21CFD: FLdI2 var_8E
  loc_B21D00: FStI2 var_90
  loc_B21D03: FFree1Ad var_8C
  loc_B21D06: FLdI2 var_90
  loc_B21D09: LitI2_Byte 0
  loc_B21D0B: EqI2
  loc_B21D0C: BranchF loc_B21D1A
  loc_B21D0F: LitI2_Byte 1
  loc_B21D11: CUI1I2
  loc_B21D13: ImpAdStUI1 MemVar_D93038
  loc_B21D17: Branch loc_B21D53
  loc_B21D1A: FLdI2 var_90
  loc_B21D1D: LitI2_Byte 1
  loc_B21D1F: EqI2
  loc_B21D20: BranchF loc_B21D2E
  loc_B21D23: LitI2_Byte 2
  loc_B21D25: CUI1I2
  loc_B21D27: ImpAdStUI1 MemVar_D93038
  loc_B21D2B: Branch loc_B21D53
  loc_B21D2E: FLdI2 var_90
  loc_B21D31: LitI2_Byte 2
  loc_B21D33: EqI2
  loc_B21D34: BranchF loc_B21D42
  loc_B21D37: LitI2_Byte 3
  loc_B21D39: CUI1I2
  loc_B21D3B: ImpAdStUI1 MemVar_D93038
  loc_B21D3F: Branch loc_B21D53
  loc_B21D42: FLdI2 var_90
  loc_B21D45: LitI2_Byte 3
  loc_B21D47: EqI2
  loc_B21D48: BranchF loc_B21D53
  loc_B21D4B: LitI2_Byte 4
  loc_B21D4D: CUI1I2
  loc_B21D4F: ImpAdStUI1 MemVar_D93038
  loc_B21D53: LitVar_Missing var_B0
  loc_B21D56: PopAdLdVar
  loc_B21D57: LitVarI4
  loc_B21D5F: PopAdLdVar
  loc_B21D60: ImpAdLdRf MemVar_D94034
  loc_B21D63: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21D66: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B21D6B: FLdRfVar var_B4
  loc_B21D6E: FLdRfVar var_8C
  loc_B21D71: ImpAdLdRf MemVar_D94034
  loc_B21D74: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21D77: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21D7C: FLdPr var_8C
  loc_B21D7F: from_stack_1 = clsbase.RecordCount
  loc_B21D84: ILdRf var_B4
  loc_B21D87: LitI4 0
  loc_B21D8C: GtI4
  loc_B21D8D: FFree1Ad var_8C
  loc_B21D90: BranchF loc_B21F61
  loc_B21D93: FLdRfVar var_D0
  loc_B21D96: FLdRfVar var_C0
  loc_B21D99: LitVarStr var_A0, "CodiOfic"
  loc_B21D9E: PopAdLdVar
  loc_B21D9F: FLdRfVar var_BC
  loc_B21DA2: FLdRfVar var_B8
  loc_B21DA5: FLdRfVar var_8C
  loc_B21DA8: ImpAdLdRf MemVar_D94034
  loc_B21DAB: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21DAE: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21DB3: FLdPr var_8C
  loc_B21DB6: from_stack_1v = clsbase.RsFrmGet()
  loc_B21DBB: FLdPr var_B8
  loc_B21DBE:  = Me.Fields
  loc_B21DC3: FLdPr var_BC
  loc_B21DC6: from_stack_2 = Me.Item(from_stack_1)
  loc_B21DCB: FLdPr var_C0
  loc_B21DCE:  = Me.Value
  loc_B21DD3: FLdRfVar var_D0
  loc_B21DD6: FStVar var_E0
  loc_B21DDA: FFreeAd var_8C = "": var_B8 = "": var_BC = ""
  loc_B21DE5: FLdRfVar var_E0
  loc_B21DE8: LitVarI2 var_A0, 1
  loc_B21DED: HardType
  loc_B21DEE: EqVarBool
  loc_B21DF0: BranchF loc_B21E2A
  loc_B21DF3: FLdRfVar var_88
  loc_B21DF6: LitI2_Byte 0
  loc_B21DF8: FLdPr Me
  loc_B21DFB: VCallAd Control_ID_OficinaCbo
  loc_B21DFE: FStAdFunc var_8C
  loc_B21E01: FLdPr var_8C
  loc_B21E04: from_stack_2 = Me.List(from_stack_1)
  loc_B21E09: ILdRf var_88
  loc_B21E0C: FLdPr Me
  loc_B21E0F: VCallAd Control_ID_OficinaCbo
  loc_B21E12: FStAdFunc var_B8
  loc_B21E15: FLdPr var_B8
  loc_B21E18: Me.Text = from_stack_1
  loc_B21E1D: FFree1Str var_88
  loc_B21E20: FFreeAd var_8C = ""
  loc_B21E27: Branch loc_B21EF6
  loc_B21E2A: FLdRfVar var_E0
  loc_B21E2D: LitVarI2 var_A0, 2
  loc_B21E32: HardType
  loc_B21E33: EqVarBool
  loc_B21E35: BranchF loc_B21E6F
  loc_B21E38: FLdRfVar var_88
  loc_B21E3B: LitI2_Byte 1
  loc_B21E3D: FLdPr Me
  loc_B21E40: VCallAd Control_ID_OficinaCbo
  loc_B21E43: FStAdFunc var_8C
  loc_B21E46: FLdPr var_8C
  loc_B21E49: from_stack_2 = Me.List(from_stack_1)
  loc_B21E4E: ILdRf var_88
  loc_B21E51: FLdPr Me
  loc_B21E54: VCallAd Control_ID_OficinaCbo
  loc_B21E57: FStAdFunc var_B8
  loc_B21E5A: FLdPr var_B8
  loc_B21E5D: Me.Text = from_stack_1
  loc_B21E62: FFree1Str var_88
  loc_B21E65: FFreeAd var_8C = ""
  loc_B21E6C: Branch loc_B21EF6
  loc_B21E6F: FLdRfVar var_E0
  loc_B21E72: LitVarI2 var_A0, 3
  loc_B21E77: HardType
  loc_B21E78: EqVarBool
  loc_B21E7A: BranchF loc_B21EB4
  loc_B21E7D: FLdRfVar var_88
  loc_B21E80: LitI2_Byte 2
  loc_B21E82: FLdPr Me
  loc_B21E85: VCallAd Control_ID_OficinaCbo
  loc_B21E88: FStAdFunc var_8C
  loc_B21E8B: FLdPr var_8C
  loc_B21E8E: from_stack_2 = Me.List(from_stack_1)
  loc_B21E93: ILdRf var_88
  loc_B21E96: FLdPr Me
  loc_B21E99: VCallAd Control_ID_OficinaCbo
  loc_B21E9C: FStAdFunc var_B8
  loc_B21E9F: FLdPr var_B8
  loc_B21EA2: Me.Text = from_stack_1
  loc_B21EA7: FFree1Str var_88
  loc_B21EAA: FFreeAd var_8C = ""
  loc_B21EB1: Branch loc_B21EF6
  loc_B21EB4: FLdRfVar var_E0
  loc_B21EB7: LitVarI2 var_A0, 4
  loc_B21EBC: HardType
  loc_B21EBD: EqVarBool
  loc_B21EBF: BranchF loc_B21EF6
  loc_B21EC2: FLdRfVar var_88
  loc_B21EC5: LitI2_Byte 3
  loc_B21EC7: FLdPr Me
  loc_B21ECA: VCallAd Control_ID_OficinaCbo
  loc_B21ECD: FStAdFunc var_8C
  loc_B21ED0: FLdPr var_8C
  loc_B21ED3: from_stack_2 = Me.List(from_stack_1)
  loc_B21ED8: ILdRf var_88
  loc_B21EDB: FLdPr Me
  loc_B21EDE: VCallAd Control_ID_OficinaCbo
  loc_B21EE1: FStAdFunc var_B8
  loc_B21EE4: FLdPr var_B8
  loc_B21EE7: Me.Text = from_stack_1
  loc_B21EEC: FFree1Str var_88
  loc_B21EEF: FFreeAd var_8C = ""
  loc_B21EF6: FLdRfVar var_D0
  loc_B21EF9: FLdRfVar var_C0
  loc_B21EFC: LitVarStr var_A0, "CuenCtct"
  loc_B21F01: PopAdLdVar
  loc_B21F02: FLdRfVar var_BC
  loc_B21F05: FLdRfVar var_B8
  loc_B21F08: FLdRfVar var_8C
  loc_B21F0B: ImpAdLdRf MemVar_D94034
  loc_B21F0E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B21F11: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B21F16: FLdPr var_8C
  loc_B21F19: from_stack_1v = clsbase.RsFrmGet()
  loc_B21F1E: FLdPr var_B8
  loc_B21F21:  = Me.Fields
  loc_B21F26: FLdPr var_BC
  loc_B21F29: from_stack_2 = Me.Item(from_stack_1)
  loc_B21F2E: FLdPr var_C0
  loc_B21F31:  = Me.Value
  loc_B21F36: FLdRfVar var_D0
  loc_B21F39: CStrVarTmp
  loc_B21F3A: FStStrNoPop var_88
  loc_B21F3D: FLdPr Me
  loc_B21F40: VCallAd Control_ID_NumeCtaTxt
  loc_B21F43: FStAdFunc var_E4
  loc_B21F46: FLdPr var_E4
  loc_B21F49: Me.Text = from_stack_1
  loc_B21F4E: FFree1Str var_88
  loc_B21F51: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B21F5E: FFree1Var var_D0 = ""
  loc_B21F61: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_LostFocus() 'A5D2E4
  'Data Table: 4CF43C
  loc_A5D284: FLdRfVar var_8A
  loc_A5D287: FLdPr Me
  loc_A5D28A: VCallAd Control_ID_NumeCtaTxt
  loc_A5D28D: FStAdFunc var_88
  loc_A5D290: FLdPr var_88
  loc_A5D293:  = Me.Enabled
  loc_A5D298: FLdI2 var_8A
  loc_A5D29B: FFree1Ad var_88
  loc_A5D29E: BranchF loc_A5D2E1
  loc_A5D2A1: FLdRfVar var_90
  loc_A5D2A4: FLdPr Me
  loc_A5D2A7: VCallAd Control_ID_NumeCtaTxt
  loc_A5D2AA: FStAdFunc var_88
  loc_A5D2AD: FLdPr var_88
  loc_A5D2B0:  = Me.Text
  loc_A5D2B5: FLdZeroAd var_90
  loc_A5D2B8: CVarStr var_A0
  loc_A5D2BB: ImpAdCallI2 IsNumeric()
  loc_A5D2C0: NotI4
  loc_A5D2C1: FFree1Ad var_88
  loc_A5D2C4: FFree1Var var_A0 = ""
  loc_A5D2C7: BranchF loc_A5D2E1
  loc_A5D2CA: LitStr "0"
  loc_A5D2CD: FLdPr Me
  loc_A5D2D0: VCallAd Control_ID_NumeCtaTxt
  loc_A5D2D3: FStAdFunc var_88
  loc_A5D2D6: FLdPr var_88
  loc_A5D2D9: Me.Text = from_stack_1
  loc_A5D2DE: FFree1Ad var_88
  loc_A5D2E1: ExitProcHresult
  loc_A5D2E2: AddR8
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B1D430
  'Data Table: 4CF43C
  loc_B1D1C0: FLdRfVar var_8A
  loc_B1D1C3: FLdPr Me
  loc_B1D1C6: VCallAd Control_ID_NumeCtaTxt
  loc_B1D1C9: FStAdFunc var_88
  loc_B1D1CC: FLdPr var_88
  loc_B1D1CF:  = Me.Enabled
  loc_B1D1D4: FLdI2 var_8A
  loc_B1D1D7: FFree1Ad var_88
  loc_B1D1DA: BranchF loc_B1D42E
  loc_B1D1DD: FLdRfVar var_8A
  loc_B1D1E0: FLdPr Me
  loc_B1D1E3: VCallAd Control_ID_OficinaCbo
  loc_B1D1E6: FStAdFunc var_88
  loc_B1D1E9: FLdPr var_88
  loc_B1D1EC:  = Me.ListIndex
  loc_B1D1F1: FLdI2 var_8A
  loc_B1D1F4: FStI2 var_8C
  loc_B1D1F7: FFree1Ad var_88
  loc_B1D1FA: FLdI2 var_8C
  loc_B1D1FD: LitI2_Byte 0
  loc_B1D1FF: EqI2
  loc_B1D200: BranchF loc_B1D20E
  loc_B1D203: LitI2_Byte 1
  loc_B1D205: CUI1I2
  loc_B1D207: ImpAdStUI1 MemVar_D93038
  loc_B1D20B: Branch loc_B1D247
  loc_B1D20E: FLdI2 var_8C
  loc_B1D211: LitI2_Byte 1
  loc_B1D213: EqI2
  loc_B1D214: BranchF loc_B1D222
  loc_B1D217: LitI2_Byte 2
  loc_B1D219: CUI1I2
  loc_B1D21B: ImpAdStUI1 MemVar_D93038
  loc_B1D21F: Branch loc_B1D247
  loc_B1D222: FLdI2 var_8C
  loc_B1D225: LitI2_Byte 2
  loc_B1D227: EqI2
  loc_B1D228: BranchF loc_B1D236
  loc_B1D22B: LitI2_Byte 3
  loc_B1D22D: CUI1I2
  loc_B1D22F: ImpAdStUI1 MemVar_D93038
  loc_B1D233: Branch loc_B1D247
  loc_B1D236: FLdI2 var_8C
  loc_B1D239: LitI2_Byte 3
  loc_B1D23B: EqI2
  loc_B1D23C: BranchF loc_B1D247
  loc_B1D23F: LitI2_Byte 4
  loc_B1D241: CUI1I2
  loc_B1D243: ImpAdStUI1 MemVar_D93038
  loc_B1D247: FLdRfVar var_90
  loc_B1D24A: FLdPr Me
  loc_B1D24D: VCallAd Control_ID_NumeCtaTxt
  loc_B1D250: FStAdFunc var_88
  loc_B1D253: FLdPr var_88
  loc_B1D256:  = Me.Text
  loc_B1D25B: FLdPr Me
  loc_B1D25E: MemLdRfVar from_stack_1.global_56
  loc_B1D261: NewIfNullRf
  loc_B1D265: LitStr "Titular"
  loc_B1D268: ILdRf var_90
  loc_B1D26B: ImpAdLdUI1
  loc_B1D26F: CStrI2
  loc_B1D271: FStStrNoPop var_94
  loc_B1D274: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B1D279: FFreeStr var_94 = ""
  loc_B1D280: FFree1Ad var_88
  loc_B1D283: BranchF loc_B1D3A8
  loc_B1D286: FLdRfVar var_90
  loc_B1D289: FLdPr Me
  loc_B1D28C: MemLdRfVar from_stack_1.global_56
  loc_B1D28F: NewIfNullPr tblPersona
  loc_B1D292: from_stack_1v = tblPersona.CucuPersGet()
  loc_B1D297: ILdRf var_90
  loc_B1D29A: FLdPr Me
  loc_B1D29D: VCallAd Control_ID_CucuPersLbl
  loc_B1D2A0: FStAdFunc var_88
  loc_B1D2A3: FLdPr var_88
  loc_B1D2A6: Me.Caption = from_stack_1
  loc_B1D2AB: FFree1Str var_90
  loc_B1D2AE: FFree1Ad var_88
  loc_B1D2B1: FLdRfVar var_90
  loc_B1D2B4: FLdPr Me
  loc_B1D2B7: MemLdRfVar from_stack_1.global_56
  loc_B1D2BA: NewIfNullPr tblPersona
  loc_B1D2BD: from_stack_1v = tblPersona.DetaPersGet()
  loc_B1D2C2: ILdRf var_90
  loc_B1D2C5: FLdPr Me
  loc_B1D2C8: VCallAd Control_ID_DetaPersLbl
  loc_B1D2CB: FStAdFunc var_88
  loc_B1D2CE: FLdPr var_88
  loc_B1D2D1: Me.Caption = from_stack_1
  loc_B1D2D6: FFree1Str var_90
  loc_B1D2D9: FFree1Ad var_88
  loc_B1D2DC: FLdRfVar var_94
  loc_B1D2DF: FLdPr Me
  loc_B1D2E2: MemLdRfVar from_stack_1.global_56
  loc_B1D2E5: NewIfNullPr tblPersona
  loc_B1D2E8: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1D2ED: FLdRfVar var_98
  loc_B1D2F0: FLdPr Me
  loc_B1D2F3: MemLdRfVar from_stack_1.global_56
  loc_B1D2F6: NewIfNullPr tblPersona
  loc_B1D2F9: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1D2FE: FLdRfVar var_90
  loc_B1D301: FLdPr Me
  loc_B1D304: MemLdRfVar from_stack_1.global_56
  loc_B1D307: NewIfNullPr tblPersona
  loc_B1D30A: from_stack_1v = tblPersona.DetaCallGet()
  loc_B1D30F: ILdRf var_90
  loc_B1D312: LitStr " "
  loc_B1D315: ConcatStr
  loc_B1D316: CVarStr var_F8
  loc_B1D319: LitVarStr var_C8, vbNullString
  loc_B1D31E: FStVarCopyObj var_D8
  loc_B1D321: FLdRfVar var_D8
  loc_B1D324: LitStr "Nro: "
  loc_B1D327: ILdRf var_98
  loc_B1D32A: ConcatStr
  loc_B1D32B: CVarStr var_B8
  loc_B1D32E: ILdRf var_94
  loc_B1D331: LitStr "0"
  loc_B1D334: NeStr
  loc_B1D336: CVarBoolI2 var_A8
  loc_B1D33A: FLdRfVar var_E8
  loc_B1D33D: ImpAdCallFPR4  = IIf(, , )
  loc_B1D342: FLdRfVar var_E8
  loc_B1D345: ConcatVar var_108
  loc_B1D349: LitVarStr var_118, " "
  loc_B1D34E: ConcatVar var_128
  loc_B1D352: FLdRfVar var_12C
  loc_B1D355: FLdPr Me
  loc_B1D358: MemLdRfVar from_stack_1.global_56
  loc_B1D35B: NewIfNullPr tblPersona
  loc_B1D35E: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B1D363: FLdZeroAd var_12C
  loc_B1D366: CVarStr var_13C
  loc_B1D369: ConcatVar var_14C
  loc_B1D36D: CStrVarVal var_150
  loc_B1D371: FLdPr Me
  loc_B1D374: VCallAd Control_ID_DomiPersLbl
  loc_B1D377: FStAdFunc var_88
  loc_B1D37A: FLdPr var_88
  loc_B1D37D: Me.Caption = from_stack_1
  loc_B1D382: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B1D38D: FFree1Ad var_88
  loc_B1D390: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B1D3A5: Branch loc_B1D42E
  loc_B1D3A8: FLdRfVar var_90
  loc_B1D3AB: FLdPr Me
  loc_B1D3AE: MemLdRfVar from_stack_1.global_56
  loc_B1D3B1: NewIfNullPr tblPersona
  loc_B1D3B4: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B1D3B9: ILdRf var_90
  loc_B1D3BC: FLdPr Me
  loc_B1D3BF: MemStStrCopy
  loc_B1D3C3: FFree1Str var_90
  loc_B1D3C6: FLdPr Me
  loc_B1D3C9: MemLdStr global_64
  loc_B1D3CC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1D3D1: LitStr vbNullString
  loc_B1D3D4: FLdPr Me
  loc_B1D3D7: VCallAd Control_ID_CucuPersLbl
  loc_B1D3DA: FStAdFunc var_88
  loc_B1D3DD: FLdPr var_88
  loc_B1D3E0: Me.Caption = from_stack_1
  loc_B1D3E5: FFree1Ad var_88
  loc_B1D3E8: LitStr vbNullString
  loc_B1D3EB: FLdPr Me
  loc_B1D3EE: VCallAd Control_ID_DetaPersLbl
  loc_B1D3F1: FStAdFunc var_88
  loc_B1D3F4: FLdPr var_88
  loc_B1D3F7: Me.Caption = from_stack_1
  loc_B1D3FC: FFree1Ad var_88
  loc_B1D3FF: LitStr vbNullString
  loc_B1D402: FLdPr Me
  loc_B1D405: VCallAd Control_ID_DomiPersLbl
  loc_B1D408: FStAdFunc var_88
  loc_B1D40B: FLdPr var_88
  loc_B1D40E: Me.Caption = from_stack_1
  loc_B1D413: FFree1Ad var_88
  loc_B1D416: FLdPr Me
  loc_B1D419: VCallAd Control_ID_NumeCtaTxt
  loc_B1D41C: CVarAd
  loc_B1D420: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1D425: FFree1Var var_B8 = ""
  loc_B1D428: LitI2_Byte &HFF
  loc_B1D42A: IStI2 Cancel
  loc_B1D42D: ExitProcHresult
  loc_B1D42E: ExitProcHresult
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) 'B601D8
  'Data Table: 4CF43C
  loc_B5FDCC: ILdI2 KeyAscii
  loc_B5FDCF: LitI2_Byte &HD
  loc_B5FDD1: EqI2
  loc_B5FDD2: FLdPr Me
  loc_B5FDD5: VCallAd Control_ID_ctacteFlex
  loc_B5FDD8: FStAdFunc var_88
  loc_B5FDDB: FLdPr var_88
  loc_B5FDDE: LateIdLdVar var_98 DispID_10 0
  loc_B5FDE5: CI4Var
  loc_B5FDE7: CVarI4
  loc_B5FDEB: PopAdLdVar
  loc_B5FDEC: LitVarI4
  loc_B5FDF4: PopAdLdVar
  loc_B5FDF5: FLdPr Me
  loc_B5FDF8: VCallAd Control_ID_ctacteFlex
  loc_B5FDFB: FStAdFunc var_DC
  loc_B5FDFE: FLdPr var_DC
  loc_B5FE01: LateIdCallLdVar
  loc_B5FE0B: CStrVarTmp
  loc_B5FE0C: FStStrNoPop var_F0
  loc_B5FE0F: CR8Str
  loc_B5FE11: LitI2_Byte 1
  loc_B5FE13: CR8I2
  loc_B5FE14: EqR4
  loc_B5FE15: AndI4
  loc_B5FE16: FLdRfVar var_F6
  loc_B5FE19: FLdPr Me
  loc_B5FE1C: VCallAd Control_ID_CreditosOpt
  loc_B5FE1F: FStAdFunc var_F4
  loc_B5FE22: FLdPr var_F4
  loc_B5FE25:  = Me.Value
  loc_B5FE2A: FLdI2 var_F6
  loc_B5FE2D: LitI2_Byte &HFF
  loc_B5FE2F: EqI2
  loc_B5FE30: AndI4
  loc_B5FE31: FFree1Str var_F0
  loc_B5FE34: FFreeAd var_88 = "": var_DC = ""
  loc_B5FE3D: FFreeVar var_98 = ""
  loc_B5FE44: BranchF loc_B601D7
  loc_B5FE47: FLdPr Me
  loc_B5FE4A: VCallAd Control_ID_ctacteFlex
  loc_B5FE4D: FStAdFunc var_88
  loc_B5FE50: FLdPr var_88
  loc_B5FE53: LateIdLdVar var_98 DispID_10 0
  loc_B5FE5A: CI4Var
  loc_B5FE5C: CVarI4
  loc_B5FE60: PopAdLdVar
  loc_B5FE61: LitVarI4
  loc_B5FE69: PopAdLdVar
  loc_B5FE6A: FLdPr Me
  loc_B5FE6D: VCallAd Control_ID_ctacteFlex
  loc_B5FE70: FStAdFunc var_DC
  loc_B5FE73: FLdPr var_DC
  loc_B5FE76: LateIdCallLdVar
  loc_B5FE80: PopAd
  loc_B5FE82: FLdPr Me
  loc_B5FE85: VCallAd Control_ID_ctacteFlex
  loc_B5FE88: FStAdFunc var_F4
  loc_B5FE8B: FLdPr var_F4
  loc_B5FE8E: LateIdLdVar var_108 DispID_10 0
  loc_B5FE95: CI4Var
  loc_B5FE97: CVarI4
  loc_B5FE9B: PopAdLdVar
  loc_B5FE9C: LitVarI4
  loc_B5FEA4: PopAdLdVar
  loc_B5FEA5: FLdPr Me
  loc_B5FEA8: VCallAd Control_ID_ctacteFlex
  loc_B5FEAB: FStAdFunc var_14C
  loc_B5FEAE: FLdPr var_14C
  loc_B5FEB1: LateIdCallLdVar
  loc_B5FEBB: PopAd
  loc_B5FEBD: FLdPr Me
  loc_B5FEC0: VCallAd Control_ID_ctacteFlex
  loc_B5FEC3: FStAdFunc var_160
  loc_B5FEC6: FLdPr var_160
  loc_B5FEC9: LateIdLdVar var_170 DispID_10 0
  loc_B5FED0: CI4Var
  loc_B5FED2: CVarI4
  loc_B5FED6: PopAdLdVar
  loc_B5FED7: LitVarI4
  loc_B5FEDF: PopAdLdVar
  loc_B5FEE0: FLdPr Me
  loc_B5FEE3: VCallAd Control_ID_ctacteFlex
  loc_B5FEE6: FStAdFunc var_1B4
  loc_B5FEE9: FLdPr var_1B4
  loc_B5FEEC: LateIdCallLdVar
  loc_B5FEF6: PopAd
  loc_B5FEF8: FLdRfVar var_1D4
  loc_B5FEFB: FLdRfVar var_1C4
  loc_B5FEFE: CStrVarTmp
  loc_B5FEFF: FStStrNoPop var_1CC
  loc_B5FF02: CI4Str
  loc_B5FF03: FLdRfVar var_15C
  loc_B5FF06: CStrVarTmp
  loc_B5FF07: FStStrNoPop var_1C8
  loc_B5FF0A: FLdRfVar var_EC
  loc_B5FF0D: CStrVarTmp
  loc_B5FF0E: FStStrNoPop var_F0
  loc_B5FF11: CUI1Str
  loc_B5FF13: FLdPr Me
  loc_B5FF16: MemLdRfVar from_stack_1.global_52
  loc_B5FF19: NewIfNullPr clscreditos
  loc_B5FF1C: from_stack_4v = clscreditos.BuscaSaldoPorNumero(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B5FF21: FLdFPR8 var_1D4
  loc_B5FF24: LitI2_Byte 0
  loc_B5FF26: CR8I2
  loc_B5FF27: GtR4
  loc_B5FF28: FFreeStr var_F0 = "": var_1C8 = ""
  loc_B5FF31: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_14C = "": var_160 = ""
  loc_B5FF40: FFreeVar var_98 = "": var_EC = "": var_108 = "": var_15C = "": var_170 = ""
  loc_B5FF4F: BranchF loc_B601CF
  loc_B5FF52: FLdPr Me
  loc_B5FF55: VCallAd Control_ID_ctacteFlex
  loc_B5FF58: FStAdFunc var_88
  loc_B5FF5B: FLdPr var_88
  loc_B5FF5E: LateIdLdVar var_98 DispID_4 0
  loc_B5FF65: CI4Var
  loc_B5FF67: LitI4 1
  loc_B5FF6C: GtI4
  loc_B5FF6D: FFree1Ad var_88
  loc_B5FF70: FFree1Var var_98 = ""
  loc_B5FF73: BranchF loc_B601CC
  loc_B5FF76: FLdPr Me
  loc_B5FF79: VCallAd Control_ID_ctacteFlex
  loc_B5FF7C: FStAdFunc var_88
  loc_B5FF7F: FLdPr var_88
  loc_B5FF82: LateIdLdVar var_98 DispID_10 0
  loc_B5FF89: CI4Var
  loc_B5FF8B: CI2I4
  loc_B5FF8C: FLdPr Me
  loc_B5FF8F: MemStI2 global_72
  loc_B5FF92: FFree1Ad var_88
  loc_B5FF95: FFree1Var var_98 = ""
  loc_B5FF98: FLdPr Me
  loc_B5FF9B: MemLdI2 global_70
  loc_B5FF9E: LitI2_Byte 0
  loc_B5FFA0: NeI2
  loc_B5FFA1: BranchF loc_B600A7
  loc_B5FFA4: FLdPr Me
  loc_B5FFA7: MemLdI2 global_70
  loc_B5FFAA: CI4UI1
  loc_B5FFAB: CVarI4
  loc_B5FFAF: PopAdLdVar
  loc_B5FFB0: FLdPr Me
  loc_B5FFB3: VCallAd Control_ID_ctacteFlex
  loc_B5FFB6: FStAdFunc var_88
  loc_B5FFB9: FLdPr var_88
  loc_B5FFBC: LateIdSt
  loc_B5FFC1: FFree1Ad var_88
  loc_B5FFC4: LitI2_Byte 0
  loc_B5FFC6: FLdPr Me
  loc_B5FFC9: MemLdRfVar from_stack_1.global_60
  loc_B5FFCC: FLdPr Me
  loc_B5FFCF: VCallAd Control_ID_ctacteFlex
  loc_B5FFD2: FStAdFunc var_88
  loc_B5FFD5: FLdPr var_88
  loc_B5FFD8: LateIdLdVar var_98 DispID_5 0
  loc_B5FFDF: CI4Var
  loc_B5FFE1: LitI4 1
  loc_B5FFE6: SubI4
  loc_B5FFE7: CI2I4
  loc_B5FFE8: FFree1Ad var_88
  loc_B5FFEB: FFree1Var var_98 = ""
  loc_B5FFEE: ForI2 var_1D8
  loc_B5FFF4: FLdPr Me
  loc_B5FFF7: MemLdI2 global_60
  loc_B5FFFA: CI4UI1
  loc_B5FFFB: CVarI4
  loc_B5FFFF: PopAdLdVar
  loc_B60000: FLdPr Me
  loc_B60003: VCallAd Control_ID_ctacteFlex
  loc_B60006: FStAdFunc var_88
  loc_B60009: FLdPr var_88
  loc_B6000C: LateIdSt
  loc_B60011: FFree1Ad var_88
  loc_B60014: FLdPr Me
  loc_B60017: VCallAd Control_ID_ctacteFlex
  loc_B6001A: FStAdFunc var_88
  loc_B6001D: FLdPr var_88
  loc_B60020: LateIdLdVar var_98 DispID_38 0
  loc_B60027: CI4Var
  loc_B60029: LitI4 &HFF
  loc_B6002E: EqI4
  loc_B6002F: FFree1Ad var_88
  loc_B60032: FFree1Var var_98 = ""
  loc_B60035: BranchF loc_B6009C
  loc_B60038: LitVarI4
  loc_B60040: PopAdLdVar
  loc_B60041: FLdPr Me
  loc_B60044: VCallAd Control_ID_ctacteFlex
  loc_B60047: FStAdFunc var_88
  loc_B6004A: FLdPr var_88
  loc_B6004D: LateIdSt
  loc_B60052: FFree1Ad var_88
  loc_B60055: FLdPr Me
  loc_B60058: VCallAd Control_ID_ctacteFlex
  loc_B6005B: FStAdFunc var_88
  loc_B6005E: FLdPr var_88
  loc_B60061: LateIdLdVar var_98 DispID_10 0
  loc_B60068: CI4Var
  loc_B6006A: CVarI4
  loc_B6006E: PopAdLdVar
  loc_B6006F: LitVarI4
  loc_B60077: PopAdLdVar
  loc_B60078: LitVarStr var_118, "No"
  loc_B6007D: PopAdLdVar
  loc_B6007E: FLdPr Me
  loc_B60081: VCallAd Control_ID_ctacteFlex
  loc_B60084: FStAdFunc var_DC
  loc_B60087: FLdPr var_DC
  loc_B6008A: LateIdCallSt
  loc_B60092: FFreeAd var_88 = ""
  loc_B60099: FFree1Var var_98 = ""
  loc_B6009C: FLdPr Me
  loc_B6009F: MemLdRfVar from_stack_1.global_60
  loc_B600A2: NextI2 var_1D8, loc_B5FFF4
  loc_B600A7: FLdPr Me
  loc_B600AA: MemLdI2 global_72
  loc_B600AD: CI4UI1
  loc_B600AE: CVarI4
  loc_B600B2: PopAdLdVar
  loc_B600B3: FLdPr Me
  loc_B600B6: VCallAd Control_ID_ctacteFlex
  loc_B600B9: FStAdFunc var_88
  loc_B600BC: FLdPr var_88
  loc_B600BF: LateIdSt
  loc_B600C4: FFree1Ad var_88
  loc_B600C7: LitI2_Byte 0
  loc_B600C9: FLdPr Me
  loc_B600CC: MemLdRfVar from_stack_1.global_60
  loc_B600CF: FLdPr Me
  loc_B600D2: VCallAd Control_ID_ctacteFlex
  loc_B600D5: FStAdFunc var_88
  loc_B600D8: FLdPr var_88
  loc_B600DB: LateIdLdVar var_98 DispID_5 0
  loc_B600E2: CI4Var
  loc_B600E4: LitI4 1
  loc_B600E9: SubI4
  loc_B600EA: CI2I4
  loc_B600EB: FFree1Ad var_88
  loc_B600EE: FFree1Var var_98 = ""
  loc_B600F1: ForI2 var_1DC
  loc_B600F7: FLdPr Me
  loc_B600FA: MemLdI2 global_60
  loc_B600FD: CI4UI1
  loc_B600FE: CVarI4
  loc_B60102: PopAdLdVar
  loc_B60103: FLdPr Me
  loc_B60106: VCallAd Control_ID_ctacteFlex
  loc_B60109: FStAdFunc var_88
  loc_B6010C: FLdPr var_88
  loc_B6010F: LateIdSt
  loc_B60114: FFree1Ad var_88
  loc_B60117: FLdPr Me
  loc_B6011A: VCallAd Control_ID_ctacteFlex
  loc_B6011D: FStAdFunc var_88
  loc_B60120: FLdPr var_88
  loc_B60123: LateIdLdVar var_98 DispID_38 0
  loc_B6012A: CI4Var
  loc_B6012C: LitI4 &HFF
  loc_B60131: NeI4
  loc_B60132: FFree1Ad var_88
  loc_B60135: FFree1Var var_98 = ""
  loc_B60138: BranchF loc_B6019F
  loc_B6013B: LitVarI4
  loc_B60143: PopAdLdVar
  loc_B60144: FLdPr Me
  loc_B60147: VCallAd Control_ID_ctacteFlex
  loc_B6014A: FStAdFunc var_88
  loc_B6014D: FLdPr var_88
  loc_B60150: LateIdSt
  loc_B60155: FFree1Ad var_88
  loc_B60158: FLdPr Me
  loc_B6015B: VCallAd Control_ID_ctacteFlex
  loc_B6015E: FStAdFunc var_88
  loc_B60161: FLdPr var_88
  loc_B60164: LateIdLdVar var_98 DispID_10 0
  loc_B6016B: CI4Var
  loc_B6016D: CVarI4
  loc_B60171: PopAdLdVar
  loc_B60172: LitVarI4
  loc_B6017A: PopAdLdVar
  loc_B6017B: LitVarStr var_118, "Si"
  loc_B60180: PopAdLdVar
  loc_B60181: FLdPr Me
  loc_B60184: VCallAd Control_ID_ctacteFlex
  loc_B60187: FStAdFunc var_DC
  loc_B6018A: FLdPr var_DC
  loc_B6018D: LateIdCallSt
  loc_B60195: FFreeAd var_88 = ""
  loc_B6019C: FFree1Var var_98 = ""
  loc_B6019F: FLdPr Me
  loc_B601A2: MemLdRfVar from_stack_1.global_60
  loc_B601A5: NextI2 var_1DC, loc_B600F7
  loc_B601AA: FLdPr Me
  loc_B601AD: VCallAd Control_ID_ctacteFlex
  loc_B601B0: FStAdFunc var_88
  loc_B601B3: FLdPr var_88
  loc_B601B6: LateIdLdVar var_98 DispID_10 0
  loc_B601BD: CI4Var
  loc_B601BF: CI2I4
  loc_B601C0: FLdPr Me
  loc_B601C3: MemStI2 global_70
  loc_B601C6: FFree1Ad var_88
  loc_B601C9: FFree1Var var_98 = ""
  loc_B601CC: Branch loc_B601D7
  loc_B601CF: LitStr "El saldo es cero, no se puede seleccionar el ítem"
  loc_B601D2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B601D7: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CDACC
  'Data Table: 4CF43C
  loc_9CDAB4: ILdRf Me
  loc_9CDAB7: FStAdNoPop
  loc_9CDABB: ImpAdLdRf MemVar_D9C5D8
  loc_9CDABE: NewIfNullPr Global
  loc_9CDAC1: Global.Unload from_stack_1
  loc_9CDAC6: FFree1Ad var_88
  loc_9CDAC9: ExitProcHresult
End Sub

Private Sub CodiConcTxt_GotFocus() '9BDED8
  'Data Table: 4CF43C
  loc_9BDEC4: FLdPr Me
  loc_9BDEC7: VCallAd Control_ID_CodiConcTxt
  loc_9BDECA: CVarAd
  loc_9BDECE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDED3: FFree1Var var_94 = ""
  loc_9BDED6: ExitProcHresult
End Sub

Private Sub CodiConcTxt_KeyPress(KeyAscii As Integer) 'AC1C30
  'Data Table: 4CF43C
  loc_AC1B2C: FLdRfVar var_8A
  loc_AC1B2F: FLdPr Me
  loc_AC1B32: VCallAd Control_ID_DebitosOpt
  loc_AC1B35: FStAdFunc var_88
  loc_AC1B38: FLdPr var_88
  loc_AC1B3B:  = Me.Value
  loc_AC1B40: FLdI2 var_8A
  loc_AC1B43: LitI2_Byte &HFF
  loc_AC1B45: EqI2
  loc_AC1B46: FFree1Ad var_88
  loc_AC1B49: BranchF loc_AC1C2D
  loc_AC1B4C: LitStr "0123456789 "
  loc_AC1B4F: FStStrCopy var_90
  loc_AC1B52: FLdRfVar var_90
  loc_AC1B55: ILdRf KeyAscii
  loc_AC1B58: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AC1B5D: IStI2 KeyAscii
  loc_AC1B60: FFree1Str var_90
  loc_AC1B63: ILdI2 KeyAscii
  loc_AC1B66: LitI2_Byte &H20
  loc_AC1B68: EqI2
  loc_AC1B69: BranchF loc_AC1C2D
  loc_AC1B6C: LitI2_Byte 0
  loc_AC1B6E: IStI2 KeyAscii
  loc_AC1B71: ImpAdLdI2 MemVar_D93034
  loc_AC1B74: ImpAdLdRf MemVar_D947E0
  loc_AC1B77: NewIfNullPr dlgBuscarConcepto
  loc_AC1B7A: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AC1B7F: LitVar_Missing var_B0
  loc_AC1B82: PopAdLdVar
  loc_AC1B83: LitVarI4
  loc_AC1B8B: PopAdLdVar
  loc_AC1B8C: ImpAdLdRf MemVar_D947E0
  loc_AC1B8F: NewIfNullPr dlgBuscarConcepto
  loc_AC1B92: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AC1B97: FLdRfVar var_B4
  loc_AC1B9A: FLdRfVar var_88
  loc_AC1B9D: ImpAdLdRf MemVar_D947E0
  loc_AC1BA0: NewIfNullPr dlgBuscarConcepto
  loc_AC1BA3: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC1BA8: FLdPr var_88
  loc_AC1BAB: from_stack_1 = clsconcepto.RecordCount
  loc_AC1BB0: ILdRf var_B4
  loc_AC1BB3: LitI4 0
  loc_AC1BB8: GtI4
  loc_AC1BB9: FFree1Ad var_88
  loc_AC1BBC: BranchF loc_AC1C2D
  loc_AC1BBF: FLdRfVar var_90
  loc_AC1BC2: FLdRfVar var_88
  loc_AC1BC5: ImpAdLdRf MemVar_D947E0
  loc_AC1BC8: NewIfNullPr dlgBuscarConcepto
  loc_AC1BCB: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC1BD0: FLdPr var_88
  loc_AC1BD3: from_stack_1 = clsconcepto.CodiConc
  loc_AC1BD8: ILdRf var_90
  loc_AC1BDB: FLdPr Me
  loc_AC1BDE: VCallAd Control_ID_CodiConcTxt
  loc_AC1BE1: FStAdFunc var_B8
  loc_AC1BE4: FLdPr var_B8
  loc_AC1BE7: Me.Text = from_stack_1
  loc_AC1BEC: FFree1Str var_90
  loc_AC1BEF: FFreeAd var_88 = ""
  loc_AC1BF6: FLdRfVar var_90
  loc_AC1BF9: FLdRfVar var_88
  loc_AC1BFC: ImpAdLdRf MemVar_D947E0
  loc_AC1BFF: NewIfNullPr dlgBuscarConcepto
  loc_AC1C02: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AC1C07: FLdPr var_88
  loc_AC1C0A: from_stack_1 = clsconcepto.DetaConc
  loc_AC1C0F: ILdRf var_90
  loc_AC1C12: FLdPr Me
  loc_AC1C15: VCallAd Control_ID_DetaConcLbl
  loc_AC1C18: FStAdFunc var_B8
  loc_AC1C1B: FLdPr var_B8
  loc_AC1C1E: Me.Caption = from_stack_1
  loc_AC1C23: FFree1Str var_90
  loc_AC1C26: FFreeAd var_88 = ""
  loc_AC1C2D: ExitProcHresult
End Sub

Private Sub CodiConcTxt_Validate(Cancel As Boolean) 'AD4478
  'Data Table: 4CF43C
  loc_AD434C: FLdRfVar var_8A
  loc_AD434F: FLdPr Me
  loc_AD4352: VCallAd Control_ID_CodiConcTxt
  loc_AD4355: FStAdFunc var_88
  loc_AD4358: FLdPr var_88
  loc_AD435B:  = Me.Enabled
  loc_AD4360: FLdI2 var_8A
  loc_AD4363: FLdRfVar var_92
  loc_AD4366: FLdPr Me
  loc_AD4369: VCallAd Control_ID_DebitosOpt
  loc_AD436C: FStAdFunc var_90
  loc_AD436F: FLdPr var_90
  loc_AD4372:  = Me.Value
  loc_AD4377: FLdI2 var_92
  loc_AD437A: LitI2_Byte &HFF
  loc_AD437C: EqI2
  loc_AD437D: AndI4
  loc_AD437E: FFreeAd var_88 = ""
  loc_AD4385: BranchF loc_AD4474
  loc_AD4388: FLdRfVar var_98
  loc_AD438B: FLdPr Me
  loc_AD438E: VCallAd Control_ID_CodiConcTxt
  loc_AD4391: FStAdFunc var_88
  loc_AD4394: FLdPr var_88
  loc_AD4397:  = Me.Text
  loc_AD439C: LitI2_Byte 0
  loc_AD439E: LitI2_Byte 0
  loc_AD43A0: LitI2_Byte 0
  loc_AD43A2: LitI2_Byte 0
  loc_AD43A4: LitI2_Byte 0
  loc_AD43A6: LitI2_Byte &HFF
  loc_AD43A8: LitI2_Byte 0
  loc_AD43AA: LitI2_Byte 0
  loc_AD43AC: LitI2_Byte &HFF
  loc_AD43AE: ILdRf var_98
  loc_AD43B1: ImpAdLdI2 MemVar_D93034
  loc_AD43B4: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AD43B9: FStStrNoPop var_9C
  loc_AD43BC: FLdPr Me
  loc_AD43BF: MemStStrCopy
  loc_AD43C3: FFreeStr var_98 = ""
  loc_AD43CA: FFree1Ad var_88
  loc_AD43CD: FLdPr Me
  loc_AD43D0: MemLdStr global_64
  loc_AD43D3: LitStr vbNullString
  loc_AD43D6: NeStr
  loc_AD43D8: BranchF loc_AD4418
  loc_AD43DB: FLdPr Me
  loc_AD43DE: MemLdStr global_64
  loc_AD43E1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD43E6: LitStr vbNullString
  loc_AD43E9: FLdPr Me
  loc_AD43EC: VCallAd Control_ID_DetaConcLbl
  loc_AD43EF: FStAdFunc var_88
  loc_AD43F2: FLdPr var_88
  loc_AD43F5: Me.Caption = from_stack_1
  loc_AD43FA: FFree1Ad var_88
  loc_AD43FD: FLdPr Me
  loc_AD4400: VCallAd Control_ID_CodiConcTxt
  loc_AD4403: CVarAd
  loc_AD4407: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD440C: FFree1Var var_AC = ""
  loc_AD440F: LitI2_Byte &HFF
  loc_AD4411: IStI2 Cancel
  loc_AD4414: ExitProcHresult
  loc_AD4415: Branch loc_AD4474
  loc_AD4418: LitI2_Byte 0
  loc_AD441A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD441F: CVarDate var_AC
  loc_AD4423: FLdRfVar var_CC
  loc_AD4426: ImpAdCallFPR4  = Year()
  loc_AD442B: FLdRfVar var_98
  loc_AD442E: FLdPr Me
  loc_AD4431: VCallAd Control_ID_CodiConcTxt
  loc_AD4434: FStAdFunc var_88
  loc_AD4437: FLdPr var_88
  loc_AD443A:  = Me.Text
  loc_AD443F: ILdRf var_98
  loc_AD4442: FLdRfVar var_CC
  loc_AD4445: CI2Var
  loc_AD4446: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AD444B: FStStrNoPop var_9C
  loc_AD444E: FLdPr Me
  loc_AD4451: VCallAd Control_ID_DetaConcLbl
  loc_AD4454: FStAdFunc var_90
  loc_AD4457: FLdPr var_90
  loc_AD445A: Me.Caption = from_stack_1
  loc_AD445F: FFreeStr var_98 = ""
  loc_AD4466: FFreeAd var_88 = ""
  loc_AD446D: FFreeVar var_AC = ""
  loc_AD4474: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C31EDC
  'Data Table: 4CF43C
  loc_C31450: Call Proc_178_21_B11AD8()
  loc_C31455: FLdRfVar var_DA
  loc_C31458: FLdPr Me
  loc_C3145B: VCallAd Control_ID_OficinaCbo
  loc_C3145E: FStAdFunc var_D8
  loc_C31461: FLdPr var_D8
  loc_C31464:  = Me.ListIndex
  loc_C31469: FLdI2 var_DA
  loc_C3146C: FStI2 var_DC
  loc_C3146F: FFree1Ad var_D8
  loc_C31472: FLdI2 var_DC
  loc_C31475: LitI2_Byte 0
  loc_C31477: EqI2
  loc_C31478: BranchF loc_C31486
  loc_C3147B: LitI2_Byte 1
  loc_C3147D: CUI1I2
  loc_C3147F: ImpAdStUI1 MemVar_D93038
  loc_C31483: Branch loc_C314BF
  loc_C31486: FLdI2 var_DC
  loc_C31489: LitI2_Byte 1
  loc_C3148B: EqI2
  loc_C3148C: BranchF loc_C3149A
  loc_C3148F: LitI2_Byte 2
  loc_C31491: CUI1I2
  loc_C31493: ImpAdStUI1 MemVar_D93038
  loc_C31497: Branch loc_C314BF
  loc_C3149A: FLdI2 var_DC
  loc_C3149D: LitI2_Byte 2
  loc_C3149F: EqI2
  loc_C314A0: BranchF loc_C314AE
  loc_C314A3: LitI2_Byte 3
  loc_C314A5: CUI1I2
  loc_C314A7: ImpAdStUI1 MemVar_D93038
  loc_C314AB: Branch loc_C314BF
  loc_C314AE: FLdI2 var_DC
  loc_C314B1: LitI2_Byte 3
  loc_C314B3: EqI2
  loc_C314B4: BranchF loc_C314BF
  loc_C314B7: LitI2_Byte 4
  loc_C314B9: CUI1I2
  loc_C314BB: ImpAdStUI1 MemVar_D93038
  loc_C314BF: LitI2_Byte 0
  loc_C314C1: CR8I2
  loc_C314C2: FStFPR8 var_CC
  loc_C314C5: LitI2_Byte 0
  loc_C314C7: CR8I2
  loc_C314C8: FStFPR8 var_D4
  loc_C314CB: LitI2_Byte 0
  loc_C314CD: CR8I2
  loc_C314CE: FStFPR8 var_C4
  loc_C314D1: LitI4 1
  loc_C314D6: LitI4 1
  loc_C314DB: LitVarStr var_FC, "0.00"
  loc_C314E0: FStVarCopyObj var_10C
  loc_C314E3: FLdRfVar var_10C
  loc_C314E6: FLdRfVar var_CC
  loc_C314E9: CVarRef
  loc_C314EE: FLdRfVar var_11C
  loc_C314F1: ImpAdCallFPR4  = Format(, )
  loc_C314F6: FLdRfVar var_11C
  loc_C314F9: CStrVarVal var_120
  loc_C314FD: FLdPr Me
  loc_C31500: VCallAd Control_ID_txtTotaDere
  loc_C31503: FStAdFunc var_D8
  loc_C31506: FLdPr var_D8
  loc_C31509: Me.Text = from_stack_1
  loc_C3150E: FFree1Str var_120
  loc_C31511: FFree1Ad var_D8
  loc_C31514: FFreeVar var_10C = ""
  loc_C3151B: LitI4 1
  loc_C31520: LitI4 1
  loc_C31525: LitVarStr var_FC, "0.00"
  loc_C3152A: FStVarCopyObj var_10C
  loc_C3152D: FLdRfVar var_10C
  loc_C31530: FLdRfVar var_D4
  loc_C31533: CVarRef
  loc_C31538: FLdRfVar var_11C
  loc_C3153B: ImpAdCallFPR4  = Format(, )
  loc_C31540: FLdRfVar var_11C
  loc_C31543: CStrVarVal var_120
  loc_C31547: FLdPr Me
  loc_C3154A: VCallAd Control_ID_txtTotaReca
  loc_C3154D: FStAdFunc var_D8
  loc_C31550: FLdPr var_D8
  loc_C31553: Me.Text = from_stack_1
  loc_C31558: FFree1Str var_120
  loc_C3155B: FFree1Ad var_D8
  loc_C3155E: FFreeVar var_10C = ""
  loc_C31565: LitI4 2
  loc_C3156A: FLdFPR8 var_CC
  loc_C3156D: FLdFPR8 var_D4
  loc_C31570: SubR4
  loc_C31571: CVarR8
  loc_C31575: FLdRfVar var_11C
  loc_C31578: ImpAdCallFPR4  = Round(, )
  loc_C3157D: LitI4 1
  loc_C31582: LitI4 1
  loc_C31587: LitVarStr var_FC, "0.00"
  loc_C3158C: FStVarCopyObj var_130
  loc_C3158F: FLdRfVar var_130
  loc_C31592: FLdRfVar var_11C
  loc_C31595: FLdRfVar var_140
  loc_C31598: ImpAdCallFPR4  = Format(, )
  loc_C3159D: FLdRfVar var_140
  loc_C315A0: CStrVarVal var_120
  loc_C315A4: FLdPr Me
  loc_C315A7: VCallAd Control_ID_txtTotal
  loc_C315AA: FStAdFunc var_D8
  loc_C315AD: FLdPr var_D8
  loc_C315B0: Me.Text = from_stack_1
  loc_C315B5: FFree1Str var_120
  loc_C315B8: FFree1Ad var_D8
  loc_C315BB: FFreeVar var_10C = "": var_11C = "": var_130 = ""
  loc_C315C6: LitStr "SELECT * FROM creditos LEFT JOIN tipomovi ON tipomovi.CodiTimo = creditos.CodiTimo"
  loc_C315C9: LitStr " WHERE CodiOfic = "
  loc_C315CC: ConcatStr
  loc_C315CD: FStStrNoPop var_120
  loc_C315D0: ImpAdLdUI1
  loc_C315D4: CStrI2
  loc_C315D6: FStStrNoPop var_144
  loc_C315D9: ConcatStr
  loc_C315DA: FStStrNoPop var_148
  loc_C315DD: LitStr " AND CuenCtct = '"
  loc_C315E0: ConcatStr
  loc_C315E1: FStStrNoPop var_150
  loc_C315E4: FLdRfVar var_14C
  loc_C315E7: FLdPr Me
  loc_C315EA: VCallAd Control_ID_NumeCtaTxt
  loc_C315ED: FStAdFunc var_D8
  loc_C315F0: FLdPr var_D8
  loc_C315F3:  = Me.Text
  loc_C315F8: ILdRf var_14C
  loc_C315FB: ConcatStr
  loc_C315FC: FStStrNoPop var_154
  loc_C315FF: LitStr "'"
  loc_C31602: ConcatStr
  loc_C31603: FStStrNoPop var_158
  loc_C31606: LitStr " ORDER BY creditos.CodiOfic, creditos.CuenCtct, creditos.NumeCred"
  loc_C31609: ConcatStr
  loc_C3160A: FStStrNoPop var_15C
  loc_C3160D: FLdPr Me
  loc_C31610: MemLdRfVar from_stack_1.global_52
  loc_C31613: NewIfNullPr clscreditos
  loc_C31616: Call clscreditos.RedefineRS(from_stack_1v)
  loc_C3161B: FFreeStr var_120 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = ""
  loc_C3162E: FFree1Ad var_D8
  loc_C31631: FLdRfVar var_160
  loc_C31634: FLdPr Me
  loc_C31637: MemLdRfVar from_stack_1.global_52
  loc_C3163A: NewIfNullPr clscreditos
  loc_C3163D: from_stack_1 = clscreditos.RecordCount
  loc_C31642: ILdRf var_160
  loc_C31645: LitI4 0
  loc_C3164A: GtI4
  loc_C3164B: BranchF loc_C31E7B
  loc_C3164E: FLdPr Me
  loc_C31651: MemLdRfVar from_stack_1.global_52
  loc_C31654: NewIfNullPr clscreditos
  loc_C31657: Call clscreditos.MoveFirst()
  loc_C3165C: FLdRfVar var_DA
  loc_C3165F: FLdPr Me
  loc_C31662: MemLdRfVar from_stack_1.global_52
  loc_C31665: NewIfNullPr clscreditos
  loc_C31668: from_stack_1 = clscreditos.EOF
  loc_C3166D: FLdI2 var_DA
  loc_C31670: NotI4
  loc_C31671: BranchF loc_C31D98
  loc_C31674: FLdRfVar var_168
  loc_C31677: FLdPr Me
  loc_C3167A: MemLdRfVar from_stack_1.global_52
  loc_C3167D: NewIfNullPr clscreditos
  loc_C31680: from_stack_1 = clscreditos.DebeCred
  loc_C31685: LitI4 2
  loc_C3168A: FLdFPR8 var_CC
  loc_C3168D: FnCDblR8
  loc_C3168F: FLdFPR8 var_168
  loc_C31692: FnCDblR8
  loc_C31694: AddR8
  loc_C31695: CVarR8
  loc_C31699: FLdRfVar var_11C
  loc_C3169C: ImpAdCallFPR4  = Round(, )
  loc_C316A1: FLdRfVar var_11C
  loc_C316A4: CR4Var
  loc_C316A5: FStFPR8 var_CC
  loc_C316A8: FFreeVar var_10C = ""
  loc_C316AF: FLdRfVar var_168
  loc_C316B2: FLdPr Me
  loc_C316B5: MemLdRfVar from_stack_1.global_52
  loc_C316B8: NewIfNullPr clscreditos
  loc_C316BB: from_stack_1 = clscreditos.CredCred
  loc_C316C0: LitI4 2
  loc_C316C5: FLdFPR8 var_D4
  loc_C316C8: FnCDblR8
  loc_C316CA: FLdFPR8 var_168
  loc_C316CD: FnCDblR8
  loc_C316CF: AddR8
  loc_C316D0: CVarR8
  loc_C316D4: FLdRfVar var_11C
  loc_C316D7: ImpAdCallFPR4  = Round(, )
  loc_C316DC: FLdRfVar var_11C
  loc_C316DF: CR4Var
  loc_C316E0: FStFPR8 var_D4
  loc_C316E3: FFreeVar var_10C = ""
  loc_C316EA: FLdRfVar var_DA
  loc_C316ED: FLdPr Me
  loc_C316F0: MemLdRfVar from_stack_1.global_52
  loc_C316F3: NewIfNullPr clscreditos
  loc_C316F6: from_stack_1 = clscreditos.BimeCtct
  loc_C316FB: LitI4 1
  loc_C31700: LitI4 1
  loc_C31705: LitVarStr var_FC, "00"
  loc_C3170A: FStVarCopyObj var_11C
  loc_C3170D: FLdRfVar var_11C
  loc_C31710: FLdI2 var_DA
  loc_C31713: CVarI2 var_10C
  loc_C31716: FLdRfVar var_130
  loc_C31719: ImpAdCallFPR4  = Format(, )
  loc_C3171E: FLdRfVar var_130
  loc_C31721: LitVarStr var_178, "/"
  loc_C31726: ConcatVar var_140
  loc_C3172A: FLdRfVar var_17A
  loc_C3172D: FLdPr Me
  loc_C31730: MemLdRfVar from_stack_1.global_52
  loc_C31733: NewIfNullPr clscreditos
  loc_C31736: from_stack_1 = clscreditos.PeriCtct
  loc_C3173B: FLdI2 var_17A
  loc_C3173E: CVarI2 var_18C
  loc_C31741: ConcatVar var_19C
  loc_C31745: CStrVarTmp
  loc_C31746: FLdRfVar var_92
  loc_C31749: StFixedStrFree
  loc_C3174D: FFreeVar var_10C = "": var_11C = "": var_130 = "": var_140 = ""
  loc_C3175A: FLdRfVar var_160
  loc_C3175D: FLdPr Me
  loc_C31760: MemLdRfVar from_stack_1.global_52
  loc_C31763: NewIfNullPr clscreditos
  loc_C31766: from_stack_1 = clscreditos.NumeBole
  loc_C3176B: LitI4 1
  loc_C31770: LitI4 1
  loc_C31775: LitVarStr var_FC, "#######0"
  loc_C3177A: FStVarCopyObj var_11C
  loc_C3177D: FLdRfVar var_11C
  loc_C31780: ILdRf var_160
  loc_C31783: CVarI4
  loc_C31787: FLdRfVar var_130
  loc_C3178A: ImpAdCallFPR4  = Format(, )
  loc_C3178F: FLdRfVar var_130
  loc_C31792: LitVarStr var_178, "-"
  loc_C31797: ConcatVar var_140
  loc_C3179B: FLdRfVar var_DA
  loc_C3179E: FLdPr Me
  loc_C317A1: MemLdRfVar from_stack_1.global_52
  loc_C317A4: NewIfNullPr clscreditos
  loc_C317A7: from_stack_1 = clscreditos.PeriBole
  loc_C317AC: FLdI2 var_DA
  loc_C317AF: CVarI2 var_18C
  loc_C317B2: ConcatVar var_19C
  loc_C317B6: CStrVarTmp
  loc_C317B7: FLdRfVar var_AC
  loc_C317BA: StFixedStrFree
  loc_C317BE: FFreeVar var_10C = "": var_11C = "": var_130 = "": var_140 = ""
  loc_C317CB: FLdRfVar var_168
  loc_C317CE: FLdPr Me
  loc_C317D1: MemLdRfVar from_stack_1.global_52
  loc_C317D4: NewIfNullPr clscreditos
  loc_C317D7: from_stack_1 = clscreditos.DebeCred
  loc_C317DC: FLdFPR8 var_168
  loc_C317DF: FnCDblR8
  loc_C317E1: LitI2_Byte 0
  loc_C317E3: CR8I2
  loc_C317E4: NeR8
  loc_C317E5: BranchF loc_C31830
  loc_C317E8: FLdRfVar var_168
  loc_C317EB: FLdPr Me
  loc_C317EE: MemLdRfVar from_stack_1.global_52
  loc_C317F1: NewIfNullPr clscreditos
  loc_C317F4: from_stack_1 = clscreditos.DebeCred
  loc_C317F9: LitI4 1
  loc_C317FE: LitI4 1
  loc_C31803: LitVarStr var_FC, "0.00"
  loc_C31808: FStVarCopyObj var_11C
  loc_C3180B: FLdRfVar var_11C
  loc_C3180E: FLdFPR8 var_168
  loc_C31811: CVarR8
  loc_C31815: FLdRfVar var_130
  loc_C31818: ImpAdCallFPR4  = Format(, )
  loc_C3181D: FLdRfVar var_130
  loc_C31820: CStrVarTmp
  loc_C31821: FStStr var_B4
  loc_C31824: FFreeVar var_10C = "": var_11C = ""
  loc_C3182D: Branch loc_C31836
  loc_C31830: LitStr vbNullString
  loc_C31833: FStStrCopy var_B4
  loc_C31836: FLdRfVar var_168
  loc_C31839: FLdPr Me
  loc_C3183C: MemLdRfVar from_stack_1.global_52
  loc_C3183F: NewIfNullPr clscreditos
  loc_C31842: from_stack_1 = clscreditos.CredCred
  loc_C31847: FLdFPR8 var_168
  loc_C3184A: FnCDblR8
  loc_C3184C: LitI2_Byte 0
  loc_C3184E: CR8I2
  loc_C3184F: NeR8
  loc_C31850: BranchF loc_C3189B
  loc_C31853: FLdRfVar var_168
  loc_C31856: FLdPr Me
  loc_C31859: MemLdRfVar from_stack_1.global_52
  loc_C3185C: NewIfNullPr clscreditos
  loc_C3185F: from_stack_1 = clscreditos.CredCred
  loc_C31864: LitI4 1
  loc_C31869: LitI4 1
  loc_C3186E: LitVarStr var_FC, "0.00"
  loc_C31873: FStVarCopyObj var_11C
  loc_C31876: FLdRfVar var_11C
  loc_C31879: FLdFPR8 var_168
  loc_C3187C: CVarR8
  loc_C31880: FLdRfVar var_130
  loc_C31883: ImpAdCallFPR4  = Format(, )
  loc_C31888: FLdRfVar var_130
  loc_C3188B: CStrVarTmp
  loc_C3188C: FStStr var_B8
  loc_C3188F: FFreeVar var_10C = "": var_11C = ""
  loc_C31898: Branch loc_C318A1
  loc_C3189B: LitStr vbNullString
  loc_C3189E: FStStrCopy var_B8
  loc_C318A1: FLdRfVar var_168
  loc_C318A4: FLdPr Me
  loc_C318A7: MemLdRfVar from_stack_1.global_52
  loc_C318AA: NewIfNullPr clscreditos
  loc_C318AD: from_stack_1 = clscreditos.DebeCred
  loc_C318B2: FLdRfVar var_1A4
  loc_C318B5: FLdPr Me
  loc_C318B8: MemLdRfVar from_stack_1.global_52
  loc_C318BB: NewIfNullPr clscreditos
  loc_C318BE: from_stack_1 = clscreditos.CredCred
  loc_C318C3: FLdFPR8 var_C4
  loc_C318C6: FLdFPR8 var_168
  loc_C318C9: FnCDblR8
  loc_C318CB: AddR8
  loc_C318CC: FLdFPR8 var_1A4
  loc_C318CF: FnCDblR8
  loc_C318D1: SubR4
  loc_C318D2: FStFPR8 var_C4
  loc_C318D5: FLdRfVar var_DA
  loc_C318D8: FLdPr Me
  loc_C318DB: MemLdRfVar from_stack_1.global_52
  loc_C318DE: NewIfNullPr clscreditos
  loc_C318E1: from_stack_1 = clscreditos.CodiOfic
  loc_C318E6: FLdUI1
  loc_C318EA: CVarUI1
  loc_C318EE: LitI4 9
  loc_C318F3: FLdRfVar var_10C
  loc_C318F6: ImpAdCallFPR4  = Chr()
  loc_C318FB: FLdRfVar var_10C
  loc_C318FE: ConcatVar var_11C
  loc_C31902: FLdRfVar var_120
  loc_C31905: FLdPr Me
  loc_C31908: MemLdRfVar from_stack_1.global_52
  loc_C3190B: NewIfNullPr clscreditos
  loc_C3190E: from_stack_1 = clscreditos.CuenCtct
  loc_C31913: FLdZeroAd var_120
  loc_C31916: CVarStr var_130
  loc_C31919: ConcatVar var_140
  loc_C3191D: LitI4 9
  loc_C31922: FLdRfVar var_19C
  loc_C31925: ImpAdCallFPR4  = Chr()
  loc_C3192A: FLdRfVar var_19C
  loc_C3192D: ConcatVar var_1B4
  loc_C31931: FLdRfVar var_92
  loc_C31934: LdFixedStr
  loc_C31937: CVarStr var_1C4
  loc_C3193A: ConcatVar var_1D4
  loc_C3193E: LitI4 9
  loc_C31943: FLdRfVar var_1E4
  loc_C31946: ImpAdCallFPR4  = Chr()
  loc_C3194B: FLdRfVar var_1E4
  loc_C3194E: ConcatVar var_1F4
  loc_C31952: FLdRfVar var_AC
  loc_C31955: LdFixedStr
  loc_C31958: CVarStr var_204
  loc_C3195B: ConcatVar var_214
  loc_C3195F: LitI4 9
  loc_C31964: FLdRfVar var_224
  loc_C31967: ImpAdCallFPR4  = Chr()
  loc_C3196C: FLdRfVar var_224
  loc_C3196F: ConcatVar var_234
  loc_C31973: FLdRfVar var_144
  loc_C31976: FLdPr Me
  loc_C31979: MemLdRfVar from_stack_1.global_52
  loc_C3197C: NewIfNullPr clscreditos
  loc_C3197F: from_stack_1 = clscreditos.FealCtct
  loc_C31984: FLdZeroAd var_144
  loc_C31987: CVarStr var_244
  loc_C3198A: ConcatVar var_254
  loc_C3198E: LitI4 9
  loc_C31993: FLdRfVar var_264
  loc_C31996: ImpAdCallFPR4  = Chr()
  loc_C3199B: FLdRfVar var_264
  loc_C3199E: ConcatVar var_274
  loc_C319A2: FLdRfVar var_17A
  loc_C319A5: FLdPr Me
  loc_C319A8: MemLdRfVar from_stack_1.global_52
  loc_C319AB: NewIfNullPr clscreditos
  loc_C319AE: from_stack_1 = clscreditos.CodiTili
  loc_C319B3: FLdUI1
  loc_C319B7: CVarUI1
  loc_C319BB: ConcatVar var_284
  loc_C319BF: LitI4 9
  loc_C319C4: FLdRfVar var_294
  loc_C319C7: ImpAdCallFPR4  = Chr()
  loc_C319CC: FLdRfVar var_294
  loc_C319CF: ConcatVar var_2A4
  loc_C319D3: FLdRfVar var_2A6
  loc_C319D6: FLdPr Me
  loc_C319D9: MemLdRfVar from_stack_1.global_52
  loc_C319DC: NewIfNullPr clscreditos
  loc_C319DF: from_stack_1 = clscreditos.NumeLiqu
  loc_C319E4: FLdI2 var_2A6
  loc_C319E7: CVarI2 var_178
  loc_C319EA: ConcatVar var_2B8
  loc_C319EE: LitI4 9
  loc_C319F3: FLdRfVar var_2C8
  loc_C319F6: ImpAdCallFPR4  = Chr()
  loc_C319FB: FLdRfVar var_2C8
  loc_C319FE: ConcatVar var_2D8
  loc_C31A02: FLdRfVar var_148
  loc_C31A05: FLdPr Me
  loc_C31A08: MemLdRfVar from_stack_1.global_52
  loc_C31A0B: NewIfNullPr clscreditos
  loc_C31A0E: from_stack_1 = clscreditos.CodiConc
  loc_C31A13: FLdZeroAd var_148
  loc_C31A16: CVarStr var_2E8
  loc_C31A19: ConcatVar var_2F8
  loc_C31A1D: LitI4 9
  loc_C31A22: FLdRfVar var_308
  loc_C31A25: ImpAdCallFPR4  = Chr()
  loc_C31A2A: FLdRfVar var_308
  loc_C31A2D: ConcatVar var_318
  loc_C31A31: FLdRfVar var_14C
  loc_C31A34: FLdPr Me
  loc_C31A37: MemLdRfVar from_stack_1.global_52
  loc_C31A3A: NewIfNullPr clscreditos
  loc_C31A3D: from_stack_1 = clscreditos.ExpeCred
  loc_C31A42: FLdZeroAd var_14C
  loc_C31A45: CVarStr var_328
  loc_C31A48: ConcatVar var_338
  loc_C31A4C: LitI4 9
  loc_C31A51: FLdRfVar var_348
  loc_C31A54: ImpAdCallFPR4  = Chr()
  loc_C31A59: FLdRfVar var_348
  loc_C31A5C: ConcatVar var_358
  loc_C31A60: FLdRfVar var_150
  loc_C31A63: FLdPr Me
  loc_C31A66: MemLdRfVar from_stack_1.global_52
  loc_C31A69: NewIfNullPr clscreditos
  loc_C31A6C: from_stack_1 = clscreditos.AbreTimo
  loc_C31A71: FLdZeroAd var_150
  loc_C31A74: CVarStr var_368
  loc_C31A77: ConcatVar var_378
  loc_C31A7B: LitI4 9
  loc_C31A80: FLdRfVar var_388
  loc_C31A83: ImpAdCallFPR4  = Chr()
  loc_C31A88: FLdRfVar var_388
  loc_C31A8B: ConcatVar var_398
  loc_C31A8F: ILdRf var_B4
  loc_C31A92: CVarStr var_18C
  loc_C31A95: ConcatVar var_3A8
  loc_C31A99: LitI4 9
  loc_C31A9E: FLdRfVar var_3B8
  loc_C31AA1: ImpAdCallFPR4  = Chr()
  loc_C31AA6: FLdRfVar var_3B8
  loc_C31AA9: ConcatVar var_3C8
  loc_C31AAD: ILdRf var_B8
  loc_C31AB0: CVarStr var_3D8
  loc_C31AB3: ConcatVar var_3E8
  loc_C31AB7: LitI4 9
  loc_C31ABC: FLdRfVar var_3F8
  loc_C31ABF: ImpAdCallFPR4  = Chr()
  loc_C31AC4: FLdRfVar var_3F8
  loc_C31AC7: ConcatVar var_408
  loc_C31ACB: LitI4 1
  loc_C31AD0: LitI4 1
  loc_C31AD5: LitVarStr var_428, "0.00"
  loc_C31ADA: FStVarCopyObj var_438
  loc_C31ADD: FLdRfVar var_438
  loc_C31AE0: FLdRfVar var_C4
  loc_C31AE3: CVarRef
  loc_C31AE8: FLdRfVar var_448
  loc_C31AEB: ImpAdCallFPR4  = Format(, )
  loc_C31AF0: FLdRfVar var_448
  loc_C31AF3: ConcatVar var_458
  loc_C31AF7: LitI4 9
  loc_C31AFC: FLdRfVar var_468
  loc_C31AFF: ImpAdCallFPR4  = Chr()
  loc_C31B04: FLdRfVar var_468
  loc_C31B07: ConcatVar var_478
  loc_C31B0B: FLdRfVar var_160
  loc_C31B0E: FLdPr Me
  loc_C31B11: MemLdRfVar from_stack_1.global_52
  loc_C31B14: NewIfNullPr clscreditos
  loc_C31B17: from_stack_1 = clscreditos.NumeCred
  loc_C31B1C: ILdRf var_160
  loc_C31B1F: CVarI4
  loc_C31B23: ConcatVar var_498
  loc_C31B27: LitI4 9
  loc_C31B2C: FLdRfVar var_4A8
  loc_C31B2F: ImpAdCallFPR4  = Chr()
  loc_C31B34: FLdRfVar var_4A8
  loc_C31B37: ConcatVar var_4B8
  loc_C31B3B: FLdRfVar var_4BA
  loc_C31B3E: FLdPr Me
  loc_C31B41: MemLdRfVar from_stack_1.global_52
  loc_C31B44: NewIfNullPr clscreditos
  loc_C31B47: from_stack_1 = clscreditos.MoviCred
  loc_C31B4C: FLdI2 var_4BA
  loc_C31B4F: CVarI2 var_4CC
  loc_C31B52: ConcatVar var_4DC
  loc_C31B56: LitI4 9
  loc_C31B5B: FLdRfVar var_4EC
  loc_C31B5E: ImpAdCallFPR4  = Chr()
  loc_C31B63: FLdRfVar var_4EC
  loc_C31B66: ConcatVar var_4FC
  loc_C31B6A: LitVarStr var_50C, vbNullString
  loc_C31B6F: ConcatVar var_51C
  loc_C31B73: CStrVarTmp
  loc_C31B74: FStStr var_B0
  loc_C31B77: FFreeVar var_348 = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3C8 = "": var_3E8 = "": var_3F8 = "": var_438 = "": var_408 = "": var_448 = "": var_458 = "": var_468 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4B8 = "": var_4DC = "": var_4EC = "": var_4FC = "": var_51C = "": var_10C = "": var_11C = "": var_130 = "": var_140 = "": var_19C = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_318 = "": var_328 = ""
  loc_C31BE6: FLdRfVar var_B0
  loc_C31BE9: CDargRef
  loc_C31BED: FLdPr Me
  loc_C31BF0: VCallAd Control_ID_ctacteFlex
  loc_C31BF3: FStAdFunc var_D8
  loc_C31BF6: FLdPr var_D8
  loc_C31BF9: LateIdCall
  loc_C31C01: FFree1Ad var_D8
  loc_C31C04: FLdRfVar var_DA
  loc_C31C07: FLdPr Me
  loc_C31C0A: MemLdRfVar from_stack_1.global_52
  loc_C31C0D: NewIfNullPr clscreditos
  loc_C31C10: from_stack_1 = clscreditos.MoviCred
  loc_C31C15: FLdI2 var_DA
  loc_C31C18: LitI2_Byte 1
  loc_C31C1A: EqI2
  loc_C31C1B: BranchF loc_C31CD4
  loc_C31C1E: FLdPr Me
  loc_C31C21: VCallAd Control_ID_ctacteFlex
  loc_C31C24: FStAdFunc var_D8
  loc_C31C27: FLdPr var_D8
  loc_C31C2A: LateIdLdVar var_10C DispID_4 0
  loc_C31C31: CI4Var
  loc_C31C33: LitI4 1
  loc_C31C38: SubI4
  loc_C31C39: CVarI4
  loc_C31C3D: PopAdLdVar
  loc_C31C3E: FLdPr Me
  loc_C31C41: VCallAd Control_ID_ctacteFlex
  loc_C31C44: FStAdFunc var_520
  loc_C31C47: FLdPr var_520
  loc_C31C4A: LateIdSt
  loc_C31C4F: FFreeAd var_D8 = ""
  loc_C31C56: FFree1Var var_10C = ""
  loc_C31C59: LitI2_Byte 0
  loc_C31C5B: FLdPr Me
  loc_C31C5E: MemLdRfVar from_stack_1.global_62
  loc_C31C61: FLdPr Me
  loc_C31C64: VCallAd Control_ID_ctacteFlex
  loc_C31C67: FStAdFunc var_D8
  loc_C31C6A: FLdPr var_D8
  loc_C31C6D: LateIdLdVar var_10C DispID_5 0
  loc_C31C74: CI4Var
  loc_C31C76: LitI4 1
  loc_C31C7B: SubI4
  loc_C31C7C: CI2I4
  loc_C31C7D: FFree1Ad var_D8
  loc_C31C80: FFree1Var var_10C = ""
  loc_C31C83: ForI2 var_524
  loc_C31C89: FLdPr Me
  loc_C31C8C: MemLdI2 global_62
  loc_C31C8F: CI4UI1
  loc_C31C90: CVarI4
  loc_C31C94: PopAdLdVar
  loc_C31C95: FLdPr Me
  loc_C31C98: VCallAd Control_ID_ctacteFlex
  loc_C31C9B: FStAdFunc var_D8
  loc_C31C9E: FLdPr var_D8
  loc_C31CA1: LateIdSt
  loc_C31CA6: FFree1Ad var_D8
  loc_C31CA9: LitVarI4
  loc_C31CB1: PopAdLdVar
  loc_C31CB2: FLdPr Me
  loc_C31CB5: VCallAd Control_ID_ctacteFlex
  loc_C31CB8: FStAdFunc var_D8
  loc_C31CBB: FLdPr var_D8
  loc_C31CBE: LateIdSt
  loc_C31CC3: FFree1Ad var_D8
  loc_C31CC6: FLdPr Me
  loc_C31CC9: MemLdRfVar from_stack_1.global_62
  loc_C31CCC: NextI2 var_524, loc_C31C89
  loc_C31CD1: Branch loc_C31D87
  loc_C31CD4: FLdPr Me
  loc_C31CD7: VCallAd Control_ID_ctacteFlex
  loc_C31CDA: FStAdFunc var_D8
  loc_C31CDD: FLdPr var_D8
  loc_C31CE0: LateIdLdVar var_10C DispID_4 0
  loc_C31CE7: CI4Var
  loc_C31CE9: LitI4 1
  loc_C31CEE: SubI4
  loc_C31CEF: CVarI4
  loc_C31CF3: PopAdLdVar
  loc_C31CF4: FLdPr Me
  loc_C31CF7: VCallAd Control_ID_ctacteFlex
  loc_C31CFA: FStAdFunc var_520
  loc_C31CFD: FLdPr var_520
  loc_C31D00: LateIdSt
  loc_C31D05: FFreeAd var_D8 = ""
  loc_C31D0C: FFree1Var var_10C = ""
  loc_C31D0F: LitI2_Byte 0
  loc_C31D11: FLdPr Me
  loc_C31D14: MemLdRfVar from_stack_1.global_62
  loc_C31D17: FLdPr Me
  loc_C31D1A: VCallAd Control_ID_ctacteFlex
  loc_C31D1D: FStAdFunc var_D8
  loc_C31D20: FLdPr var_D8
  loc_C31D23: LateIdLdVar var_10C DispID_5 0
  loc_C31D2A: CI4Var
  loc_C31D2C: LitI4 1
  loc_C31D31: SubI4
  loc_C31D32: CI2I4
  loc_C31D33: FFree1Ad var_D8
  loc_C31D36: FFree1Var var_10C = ""
  loc_C31D39: ForI2 var_528
  loc_C31D3F: FLdPr Me
  loc_C31D42: MemLdI2 global_62
  loc_C31D45: CI4UI1
  loc_C31D46: CVarI4
  loc_C31D4A: PopAdLdVar
  loc_C31D4B: FLdPr Me
  loc_C31D4E: VCallAd Control_ID_ctacteFlex
  loc_C31D51: FStAdFunc var_D8
  loc_C31D54: FLdPr var_D8
  loc_C31D57: LateIdSt
  loc_C31D5C: FFree1Ad var_D8
  loc_C31D5F: LitVarI4
  loc_C31D67: PopAdLdVar
  loc_C31D68: FLdPr Me
  loc_C31D6B: VCallAd Control_ID_ctacteFlex
  loc_C31D6E: FStAdFunc var_D8
  loc_C31D71: FLdPr var_D8
  loc_C31D74: LateIdSt
  loc_C31D79: FFree1Ad var_D8
  loc_C31D7C: FLdPr Me
  loc_C31D7F: MemLdRfVar from_stack_1.global_62
  loc_C31D82: NextI2 var_528, loc_C31D3F
  loc_C31D87: FLdPr Me
  loc_C31D8A: MemLdRfVar from_stack_1.global_52
  loc_C31D8D: NewIfNullPr clscreditos
  loc_C31D90: Call clscreditos.MoveSiguiente()
  loc_C31D95: Branch loc_C3165C
  loc_C31D98: LitI4 1
  loc_C31D9D: LitI4 1
  loc_C31DA2: LitVarStr var_FC, "###,###,##0.00"
  loc_C31DA7: FStVarCopyObj var_10C
  loc_C31DAA: FLdRfVar var_10C
  loc_C31DAD: FLdRfVar var_CC
  loc_C31DB0: CVarRef
  loc_C31DB5: FLdRfVar var_11C
  loc_C31DB8: ImpAdCallFPR4  = Format(, )
  loc_C31DBD: FLdRfVar var_11C
  loc_C31DC0: CStrVarVal var_120
  loc_C31DC4: FLdPr Me
  loc_C31DC7: VCallAd Control_ID_txtTotaDere
  loc_C31DCA: FStAdFunc var_D8
  loc_C31DCD: FLdPr var_D8
  loc_C31DD0: Me.Text = from_stack_1
  loc_C31DD5: FFree1Str var_120
  loc_C31DD8: FFree1Ad var_D8
  loc_C31DDB: FFreeVar var_10C = ""
  loc_C31DE2: LitI4 1
  loc_C31DE7: LitI4 1
  loc_C31DEC: LitVarStr var_FC, "###,###,##0.00"
  loc_C31DF1: FStVarCopyObj var_10C
  loc_C31DF4: FLdRfVar var_10C
  loc_C31DF7: FLdRfVar var_D4
  loc_C31DFA: CVarRef
  loc_C31DFF: FLdRfVar var_11C
  loc_C31E02: ImpAdCallFPR4  = Format(, )
  loc_C31E07: FLdRfVar var_11C
  loc_C31E0A: CStrVarVal var_120
  loc_C31E0E: FLdPr Me
  loc_C31E11: VCallAd Control_ID_txtTotaReca
  loc_C31E14: FStAdFunc var_D8
  loc_C31E17: FLdPr var_D8
  loc_C31E1A: Me.Text = from_stack_1
  loc_C31E1F: FFree1Str var_120
  loc_C31E22: FFree1Ad var_D8
  loc_C31E25: FFreeVar var_10C = ""
  loc_C31E2C: LitI4 1
  loc_C31E31: LitI4 1
  loc_C31E36: LitVarStr var_FC, "###,###,##0.00"
  loc_C31E3B: FStVarCopyObj var_11C
  loc_C31E3E: FLdRfVar var_11C
  loc_C31E41: FLdFPR8 var_CC
  loc_C31E44: FLdFPR8 var_D4
  loc_C31E47: SubR4
  loc_C31E48: CVarR8
  loc_C31E4C: FLdRfVar var_130
  loc_C31E4F: ImpAdCallFPR4  = Format(, )
  loc_C31E54: FLdRfVar var_130
  loc_C31E57: CStrVarVal var_120
  loc_C31E5B: FLdPr Me
  loc_C31E5E: VCallAd Control_ID_txtTotal
  loc_C31E61: FStAdFunc var_D8
  loc_C31E64: FLdPr var_D8
  loc_C31E67: Me.Text = from_stack_1
  loc_C31E6C: FFree1Str var_120
  loc_C31E6F: FFree1Ad var_D8
  loc_C31E72: FFreeVar var_10C = "": var_11C = ""
  loc_C31E7B: LitI4 1
  loc_C31E80: LitI4 1
  loc_C31E85: LitVarStr var_FC, "0.00"
  loc_C31E8A: FStVarCopyObj var_11C
  loc_C31E8D: FLdRfVar var_11C
  loc_C31E90: LitVarI2 var_10C, 0
  loc_C31E95: FLdRfVar var_130
  loc_C31E98: ImpAdCallFPR4  = Format(, )
  loc_C31E9D: FLdRfVar var_130
  loc_C31EA0: CStrVarVal var_120
  loc_C31EA4: FLdPr Me
  loc_C31EA7: VCallAd Control_ID_ImpoCtctTxt
  loc_C31EAA: FStAdFunc var_D8
  loc_C31EAD: FLdPr var_D8
  loc_C31EB0: Me.Text = from_stack_1
  loc_C31EB5: FFree1Str var_120
  loc_C31EB8: FFree1Ad var_D8
  loc_C31EBB: FFreeVar var_10C = "": var_11C = ""
  loc_C31EC4: LitI2_Byte &HFF
  loc_C31EC6: FLdPr Me
  loc_C31EC9: VCallAd Control_ID_ConfirmarCmd
  loc_C31ECC: FStAdFunc var_D8
  loc_C31ECF: FLdPr var_D8
  loc_C31ED2: Me.Enabled = from_stack_1b
  loc_C31ED7: FFree1Ad var_D8
  loc_C31EDA: ExitProcHresult
End Sub

Private Sub Form_Load() 'B8A054
  'Data Table: 4CF43C
  loc_B89B18: LitVar_Missing var_94
  loc_B89B1B: PopAdLdVar
  loc_B89B1C: LitStr "Inmueble"
  loc_B89B1F: FLdPr Me
  loc_B89B22: VCallAd Control_ID_OficinaCbo
  loc_B89B25: FStAdFunc var_98
  loc_B89B28: FLdPr var_98
  loc_B89B2B: Me.AddItem from_stack_1, from_stack_2
  loc_B89B30: FFree1Ad var_98
  loc_B89B33: LitVar_Missing var_94
  loc_B89B36: PopAdLdVar
  loc_B89B37: LitStr "Comercio"
  loc_B89B3A: FLdPr Me
  loc_B89B3D: VCallAd Control_ID_OficinaCbo
  loc_B89B40: FStAdFunc var_98
  loc_B89B43: FLdPr var_98
  loc_B89B46: Me.AddItem from_stack_1, from_stack_2
  loc_B89B4B: FFree1Ad var_98
  loc_B89B4E: LitVar_Missing var_94
  loc_B89B51: PopAdLdVar
  loc_B89B52: LitStr "Deudores Varios"
  loc_B89B55: FLdPr Me
  loc_B89B58: VCallAd Control_ID_OficinaCbo
  loc_B89B5B: FStAdFunc var_98
  loc_B89B5E: FLdPr var_98
  loc_B89B61: Me.AddItem from_stack_1, from_stack_2
  loc_B89B66: FFree1Ad var_98
  loc_B89B69: LitVar_Missing var_94
  loc_B89B6C: PopAdLdVar
  loc_B89B6D: LitStr "Cementerio"
  loc_B89B70: FLdPr Me
  loc_B89B73: VCallAd Control_ID_OficinaCbo
  loc_B89B76: FStAdFunc var_98
  loc_B89B79: FLdPr var_98
  loc_B89B7C: Me.AddItem from_stack_1, from_stack_2
  loc_B89B81: FFree1Ad var_98
  loc_B89B84: LitI2_Byte 0
  loc_B89B86: FLdPr Me
  loc_B89B89: VCallAd Control_ID_OficinaCbo
  loc_B89B8C: FStAdFunc var_98
  loc_B89B8F: FLdPr var_98
  loc_B89B92: Me.ListIndex = from_stack_1
  loc_B89B97: FFree1Ad var_98
  loc_B89B9A: LitStr "0"
  loc_B89B9D: FLdPr Me
  loc_B89BA0: VCallAd Control_ID_NumeCtaTxt
  loc_B89BA3: FStAdFunc var_98
  loc_B89BA6: FLdPr var_98
  loc_B89BA9: Me.Text = from_stack_1
  loc_B89BAE: FFree1Ad var_98
  loc_B89BB1: LitI4 1
  loc_B89BB6: LitI4 1
  loc_B89BBB: LitVarStr var_B8, "0.00"
  loc_B89BC0: FStVarCopyObj var_C8
  loc_B89BC3: FLdRfVar var_C8
  loc_B89BC6: LitVarI2 var_A8, 0
  loc_B89BCB: FLdRfVar var_D8
  loc_B89BCE: ImpAdCallFPR4  = Format(, )
  loc_B89BD3: FLdRfVar var_D8
  loc_B89BD6: CStrVarVal var_DC
  loc_B89BDA: FLdPr Me
  loc_B89BDD: VCallAd Control_ID_ImpoCtctTxt
  loc_B89BE0: FStAdFunc var_98
  loc_B89BE3: FLdPr var_98
  loc_B89BE6: Me.Text = from_stack_1
  loc_B89BEB: FFree1Str var_DC
  loc_B89BEE: FFree1Ad var_98
  loc_B89BF1: FFreeVar var_A8 = "": var_C8 = ""
  loc_B89BFA: FLdPr Me
  loc_B89BFD: VCallAd Control_ID_ctacteFlex
  loc_B89C00: FStAdFunc var_E0
  loc_B89C03: LitVarI4
  loc_B89C0B: PopAdLdVar
  loc_B89C0C: LitVarI4
  loc_B89C14: PopAdLdVar
  loc_B89C15: FLdPr var_E0
  loc_B89C18: LateIdCallSt
  loc_B89C20: LitVarI4
  loc_B89C28: PopAdLdVar
  loc_B89C29: LitVarI4
  loc_B89C31: PopAdLdVar
  loc_B89C32: FLdPr var_E0
  loc_B89C35: LateIdCallSt
  loc_B89C3D: LitVarI4
  loc_B89C45: PopAdLdVar
  loc_B89C46: LitVarI4
  loc_B89C4E: PopAdLdVar
  loc_B89C4F: FLdPr var_E0
  loc_B89C52: LateIdCallSt
  loc_B89C5A: LitVarI4
  loc_B89C62: PopAdLdVar
  loc_B89C63: LitVarI4
  loc_B89C6B: PopAdLdVar
  loc_B89C6C: FLdPr var_E0
  loc_B89C6F: LateIdCallSt
  loc_B89C77: LitVarI4
  loc_B89C7F: PopAdLdVar
  loc_B89C80: LitVarI4
  loc_B89C88: PopAdLdVar
  loc_B89C89: FLdPr var_E0
  loc_B89C8C: LateIdCallSt
  loc_B89C94: LitVarI4
  loc_B89C9C: PopAdLdVar
  loc_B89C9D: LitVarI4
  loc_B89CA5: PopAdLdVar
  loc_B89CA6: FLdPr var_E0
  loc_B89CA9: LateIdCallSt
  loc_B89CB1: LitVarI4
  loc_B89CB9: PopAdLdVar
  loc_B89CBA: LitVarI4
  loc_B89CC2: PopAdLdVar
  loc_B89CC3: FLdPr var_E0
  loc_B89CC6: LateIdCallSt
  loc_B89CCE: LitVarI4
  loc_B89CD6: PopAdLdVar
  loc_B89CD7: LitVarI4
  loc_B89CDF: PopAdLdVar
  loc_B89CE0: FLdPr var_E0
  loc_B89CE3: LateIdCallSt
  loc_B89CEB: LitVarI4
  loc_B89CF3: PopAdLdVar
  loc_B89CF4: LitVarI4
  loc_B89CFC: PopAdLdVar
  loc_B89CFD: FLdPr var_E0
  loc_B89D00: LateIdCallSt
  loc_B89D08: LitVarI4
  loc_B89D10: PopAdLdVar
  loc_B89D11: LitVarI4
  loc_B89D19: PopAdLdVar
  loc_B89D1A: FLdPr var_E0
  loc_B89D1D: LateIdCallSt
  loc_B89D25: LitVarI4
  loc_B89D2D: PopAdLdVar
  loc_B89D2E: LitVarI4
  loc_B89D36: PopAdLdVar
  loc_B89D37: FLdPr var_E0
  loc_B89D3A: LateIdCallSt
  loc_B89D42: LitVarI4
  loc_B89D4A: PopAdLdVar
  loc_B89D4B: LitVarI4
  loc_B89D53: PopAdLdVar
  loc_B89D54: FLdPr var_E0
  loc_B89D57: LateIdCallSt
  loc_B89D5F: LitVarI4
  loc_B89D67: PopAdLdVar
  loc_B89D68: LitVarI4
  loc_B89D70: PopAdLdVar
  loc_B89D71: FLdPr var_E0
  loc_B89D74: LateIdCallSt
  loc_B89D7C: LitVarI4
  loc_B89D84: PopAdLdVar
  loc_B89D85: LitVarI4
  loc_B89D8D: PopAdLdVar
  loc_B89D8E: FLdPr var_E0
  loc_B89D91: LateIdCallSt
  loc_B89D99: LitVarI4
  loc_B89DA1: PopAdLdVar
  loc_B89DA2: LitVarI4
  loc_B89DAA: PopAdLdVar
  loc_B89DAB: FLdPr var_E0
  loc_B89DAE: LateIdCallSt
  loc_B89DB6: LitVarI4
  loc_B89DBE: PopAdLdVar
  loc_B89DBF: LitVarI4
  loc_B89DC7: PopAdLdVar
  loc_B89DC8: FLdPr var_E0
  loc_B89DCB: LateIdCallSt
  loc_B89DD3: LitVarI4
  loc_B89DDB: PopAdLdVar
  loc_B89DDC: LitVarI4
  loc_B89DE4: PopAdLdVar
  loc_B89DE5: LitVarStr var_110, "Of"
  loc_B89DEA: PopAdLdVar
  loc_B89DEB: FLdPr var_E0
  loc_B89DEE: LateIdCallSt
  loc_B89DF6: LitVarI4
  loc_B89DFE: PopAdLdVar
  loc_B89DFF: LitVarI4
  loc_B89E07: PopAdLdVar
  loc_B89E08: LitVarStr var_110, "Cuenta"
  loc_B89E0D: PopAdLdVar
  loc_B89E0E: FLdPr var_E0
  loc_B89E11: LateIdCallSt
  loc_B89E19: LitVarI4
  loc_B89E21: PopAdLdVar
  loc_B89E22: LitVarI4
  loc_B89E2A: PopAdLdVar
  loc_B89E2B: LitVarStr var_110, "Periodo"
  loc_B89E30: PopAdLdVar
  loc_B89E31: FLdPr var_E0
  loc_B89E34: LateIdCallSt
  loc_B89E3C: LitVarI4
  loc_B89E44: PopAdLdVar
  loc_B89E45: LitVarI4
  loc_B89E4D: PopAdLdVar
  loc_B89E4E: LitVarStr var_110, "Boleto"
  loc_B89E53: PopAdLdVar
  loc_B89E54: FLdPr var_E0
  loc_B89E57: LateIdCallSt
  loc_B89E5F: LitVarI4
  loc_B89E67: PopAdLdVar
  loc_B89E68: LitVarI4
  loc_B89E70: PopAdLdVar
  loc_B89E71: LitVarStr var_110, "Fecha Alta"
  loc_B89E76: PopAdLdVar
  loc_B89E77: FLdPr var_E0
  loc_B89E7A: LateIdCallSt
  loc_B89E82: LitVarI4
  loc_B89E8A: PopAdLdVar
  loc_B89E8B: LitVarI4
  loc_B89E93: PopAdLdVar
  loc_B89E94: LitVarStr var_110, "Liqu."
  loc_B89E99: PopAdLdVar
  loc_B89E9A: FLdPr var_E0
  loc_B89E9D: LateIdCallSt
  loc_B89EA5: LitVarI4
  loc_B89EAD: PopAdLdVar
  loc_B89EAE: LitVarI4
  loc_B89EB6: PopAdLdVar
  loc_B89EB7: LitVarStr var_110, "Nro Liqu."
  loc_B89EBC: PopAdLdVar
  loc_B89EBD: FLdPr var_E0
  loc_B89EC0: LateIdCallSt
  loc_B89EC8: LitVarI4
  loc_B89ED0: PopAdLdVar
  loc_B89ED1: LitVarI4
  loc_B89ED9: PopAdLdVar
  loc_B89EDA: LitVarStr var_110, "Concepto"
  loc_B89EDF: PopAdLdVar
  loc_B89EE0: FLdPr var_E0
  loc_B89EE3: LateIdCallSt
  loc_B89EEB: LitVarI4
  loc_B89EF3: PopAdLdVar
  loc_B89EF4: LitVarI4
  loc_B89EFC: PopAdLdVar
  loc_B89EFD: LitVarStr var_110, "Exp/Comp"
  loc_B89F02: PopAdLdVar
  loc_B89F03: FLdPr var_E0
  loc_B89F06: LateIdCallSt
  loc_B89F0E: LitVarI4
  loc_B89F16: PopAdLdVar
  loc_B89F17: LitVarI4
  loc_B89F1F: PopAdLdVar
  loc_B89F20: LitVarStr var_110, "Tipo Movi."
  loc_B89F25: PopAdLdVar
  loc_B89F26: FLdPr var_E0
  loc_B89F29: LateIdCallSt
  loc_B89F31: LitVarI4
  loc_B89F39: PopAdLdVar
  loc_B89F3A: LitVarI4
  loc_B89F42: PopAdLdVar
  loc_B89F43: LitVarStr var_110, "Creditos"
  loc_B89F48: PopAdLdVar
  loc_B89F49: FLdPr var_E0
  loc_B89F4C: LateIdCallSt
  loc_B89F54: LitVarI4
  loc_B89F5C: PopAdLdVar
  loc_B89F5D: LitVarI4
  loc_B89F65: PopAdLdVar
  loc_B89F66: LitVarStr var_110, "Creditos"
  loc_B89F6B: PopAdLdVar
  loc_B89F6C: FLdPr var_E0
  loc_B89F6F: LateIdCallSt
  loc_B89F77: LitVarI4
  loc_B89F7F: PopAdLdVar
  loc_B89F80: LitVarI4
  loc_B89F88: PopAdLdVar
  loc_B89F89: LitVarStr var_110, "Saldo"
  loc_B89F8E: PopAdLdVar
  loc_B89F8F: FLdPr var_E0
  loc_B89F92: LateIdCallSt
  loc_B89F9A: LitVarI4
  loc_B89FA2: PopAdLdVar
  loc_B89FA3: LitVarI4
  loc_B89FAB: PopAdLdVar
  loc_B89FAC: LitVarStr var_110, "Numero"
  loc_B89FB1: PopAdLdVar
  loc_B89FB2: FLdPr var_E0
  loc_B89FB5: LateIdCallSt
  loc_B89FBD: LitVarI4
  loc_B89FC5: PopAdLdVar
  loc_B89FC6: LitVarI4
  loc_B89FCE: PopAdLdVar
  loc_B89FCF: LitVarStr var_110, "Mov"
  loc_B89FD4: PopAdLdVar
  loc_B89FD5: FLdPr var_E0
  loc_B89FD8: LateIdCallSt
  loc_B89FE0: LitVarI4
  loc_B89FE8: PopAdLdVar
  loc_B89FE9: LitVarI4
  loc_B89FF1: PopAdLdVar
  loc_B89FF2: LitVarStr var_110, "Sel"
  loc_B89FF7: PopAdLdVar
  loc_B89FF8: FLdPr var_E0
  loc_B89FFB: LateIdCallSt
  loc_B8A003: LitNothing
  loc_B8A005: FStAd var_E0 
  loc_B8A009: LitI4 0
  loc_B8A00E: LitI4 0
  loc_B8A013: FLdRfVar var_124
  loc_B8A016: Redim
  loc_B8A020: FLdPr Me
  loc_B8A023: VCallAd Control_ID_ConfirmarCmd
  loc_B8A026: CVarAd
  loc_B8A02A: ParmAry1St
  loc_B8A030: FLdRfVar var_124
  loc_B8A033: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B8A038: FLdRfVar var_124
  loc_B8A03B: Erase
  loc_B8A03C: LitI2_Byte &HFF
  loc_B8A03E: FLdPr Me
  loc_B8A041: VCallAd Control_ID_DebitosOpt
  loc_B8A044: FStAdFunc var_98
  loc_B8A047: FLdPr var_98
  loc_B8A04A: Me.Value = from_stack_1b
  loc_B8A04F: FFree1Ad var_98
  loc_B8A052: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA904
  'Data Table: 4CF43C
  loc_9BA8F0: ILdI2 KeyCode
  loc_9BA8F3: CI4UI1
  loc_9BA8F4: LitI4 &H78
  loc_9BA8F9: EqI4
  loc_9BA8FA: BranchF loc_9BA902
  loc_9BA8FD: Call SalirCmd_Click()
  loc_9BA902: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B37104
  'Data Table: 4CF43C
  loc_B36E30: FLdRfVar var_8A
  loc_B36E33: FLdPr Me
  loc_B36E36: VCallAd Control_ID_OficinaCbo
  loc_B36E39: FStAdFunc var_88
  loc_B36E3C: FLdPr var_88
  loc_B36E3F:  = Me.ListIndex
  loc_B36E44: FLdI2 var_8A
  loc_B36E47: FStI2 var_8C
  loc_B36E4A: FFree1Ad var_88
  loc_B36E4D: FLdI2 var_8C
  loc_B36E50: LitI2_Byte 0
  loc_B36E52: EqI2
  loc_B36E53: BranchF loc_B36E61
  loc_B36E56: LitI2_Byte 1
  loc_B36E58: CUI1I2
  loc_B36E5A: ImpAdStUI1 MemVar_D93038
  loc_B36E5E: Branch loc_B36E9A
  loc_B36E61: FLdI2 var_8C
  loc_B36E64: LitI2_Byte 1
  loc_B36E66: EqI2
  loc_B36E67: BranchF loc_B36E75
  loc_B36E6A: LitI2_Byte 2
  loc_B36E6C: CUI1I2
  loc_B36E6E: ImpAdStUI1 MemVar_D93038
  loc_B36E72: Branch loc_B36E9A
  loc_B36E75: FLdI2 var_8C
  loc_B36E78: LitI2_Byte 2
  loc_B36E7A: EqI2
  loc_B36E7B: BranchF loc_B36E89
  loc_B36E7E: LitI2_Byte 3
  loc_B36E80: CUI1I2
  loc_B36E82: ImpAdStUI1 MemVar_D93038
  loc_B36E86: Branch loc_B36E9A
  loc_B36E89: FLdI2 var_8C
  loc_B36E8C: LitI2_Byte 3
  loc_B36E8E: EqI2
  loc_B36E8F: BranchF loc_B36E9A
  loc_B36E92: LitI2_Byte 4
  loc_B36E94: CUI1I2
  loc_B36E96: ImpAdStUI1 MemVar_D93038
  loc_B36E9A: ImpAdLdUI1
  loc_B36E9E: CI2UI1
  loc_B36EA0: LitI2_Byte 0
  loc_B36EA2: NeI2
  loc_B36EA3: FLdRfVar var_90
  loc_B36EA6: FLdPr Me
  loc_B36EA9: VCallAd Control_ID_NumeCtaTxt
  loc_B36EAC: FStAdFunc var_88
  loc_B36EAF: FLdPr var_88
  loc_B36EB2:  = Me.Text
  loc_B36EB7: ILdRf var_90
  loc_B36EBA: LitStr vbNullString
  loc_B36EBD: NeStr
  loc_B36EBF: AndI4
  loc_B36EC0: FLdRfVar var_98
  loc_B36EC3: FLdPr Me
  loc_B36EC6: VCallAd Control_ID_NumeCtaTxt
  loc_B36EC9: FStAdFunc var_94
  loc_B36ECC: FLdPr var_94
  loc_B36ECF:  = Me.Text
  loc_B36ED4: ILdRf var_98
  loc_B36ED7: LitStr "0"
  loc_B36EDA: NeStr
  loc_B36EDC: AndI4
  loc_B36EDD: FFreeStr var_90 = ""
  loc_B36EE4: FFreeAd var_88 = ""
  loc_B36EEB: BranchF loc_B37102
  loc_B36EEE: FLdRfVar var_90
  loc_B36EF1: FLdPr Me
  loc_B36EF4: VCallAd Control_ID_NumeCtaTxt
  loc_B36EF7: FStAdFunc var_88
  loc_B36EFA: FLdPr var_88
  loc_B36EFD:  = Me.Text
  loc_B36F02: FLdPr Me
  loc_B36F05: MemLdRfVar from_stack_1.global_56
  loc_B36F08: NewIfNullRf
  loc_B36F0C: LitStr "Titular"
  loc_B36F0F: ILdRf var_90
  loc_B36F12: ImpAdLdUI1
  loc_B36F16: CStrI2
  loc_B36F18: FStStrNoPop var_98
  loc_B36F1B: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B36F20: FFreeStr var_98 = ""
  loc_B36F27: FFree1Ad var_88
  loc_B36F2A: BranchF loc_B37082
  loc_B36F2D: FLdRfVar var_90
  loc_B36F30: FLdPr Me
  loc_B36F33: MemLdRfVar from_stack_1.global_56
  loc_B36F36: NewIfNullPr tblPersona
  loc_B36F39: from_stack_1v = tblPersona.CucuPersGet()
  loc_B36F3E: ILdRf var_90
  loc_B36F41: FLdPr Me
  loc_B36F44: VCallAd Control_ID_CucuPersLbl
  loc_B36F47: FStAdFunc var_88
  loc_B36F4A: FLdPr var_88
  loc_B36F4D: Me.Caption = from_stack_1
  loc_B36F52: FFree1Str var_90
  loc_B36F55: FFree1Ad var_88
  loc_B36F58: FLdRfVar var_90
  loc_B36F5B: FLdPr Me
  loc_B36F5E: MemLdRfVar from_stack_1.global_56
  loc_B36F61: NewIfNullPr tblPersona
  loc_B36F64: from_stack_1v = tblPersona.DetaPersGet()
  loc_B36F69: ILdRf var_90
  loc_B36F6C: FLdPr Me
  loc_B36F6F: VCallAd Control_ID_DetaPersLbl
  loc_B36F72: FStAdFunc var_88
  loc_B36F75: FLdPr var_88
  loc_B36F78: Me.Caption = from_stack_1
  loc_B36F7D: FFree1Str var_90
  loc_B36F80: FFree1Ad var_88
  loc_B36F83: FLdRfVar var_98
  loc_B36F86: FLdPr Me
  loc_B36F89: MemLdRfVar from_stack_1.global_56
  loc_B36F8C: NewIfNullPr tblPersona
  loc_B36F8F: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B36F94: FLdRfVar var_9C
  loc_B36F97: FLdPr Me
  loc_B36F9A: MemLdRfVar from_stack_1.global_56
  loc_B36F9D: NewIfNullPr tblPersona
  loc_B36FA0: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B36FA5: FLdRfVar var_90
  loc_B36FA8: FLdPr Me
  loc_B36FAB: MemLdRfVar from_stack_1.global_56
  loc_B36FAE: NewIfNullPr tblPersona
  loc_B36FB1: from_stack_1v = tblPersona.DetaCallGet()
  loc_B36FB6: ILdRf var_90
  loc_B36FB9: LitStr " "
  loc_B36FBC: ConcatStr
  loc_B36FBD: CVarStr var_FC
  loc_B36FC0: LitVarStr var_CC, vbNullString
  loc_B36FC5: FStVarCopyObj var_DC
  loc_B36FC8: FLdRfVar var_DC
  loc_B36FCB: LitStr "Nro: "
  loc_B36FCE: ILdRf var_9C
  loc_B36FD1: ConcatStr
  loc_B36FD2: CVarStr var_BC
  loc_B36FD5: ILdRf var_98
  loc_B36FD8: LitStr "0"
  loc_B36FDB: NeStr
  loc_B36FDD: CVarBoolI2 var_AC
  loc_B36FE1: FLdRfVar var_EC
  loc_B36FE4: ImpAdCallFPR4  = IIf(, , )
  loc_B36FE9: FLdRfVar var_EC
  loc_B36FEC: ConcatVar var_10C
  loc_B36FF0: LitVarStr var_11C, " "
  loc_B36FF5: ConcatVar var_12C
  loc_B36FF9: FLdRfVar var_130
  loc_B36FFC: FLdPr Me
  loc_B36FFF: MemLdRfVar from_stack_1.global_56
  loc_B37002: NewIfNullPr tblPersona
  loc_B37005: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B3700A: FLdZeroAd var_130
  loc_B3700D: CVarStr var_140
  loc_B37010: ConcatVar var_150
  loc_B37014: CStrVarVal var_154
  loc_B37018: FLdPr Me
  loc_B3701B: VCallAd Control_ID_DomiPersLbl
  loc_B3701E: FStAdFunc var_88
  loc_B37021: FLdPr var_88
  loc_B37024: Me.Caption = from_stack_1
  loc_B37029: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B37034: FFree1Ad var_88
  loc_B37037: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B3704C: LitI4 0
  loc_B37051: LitI4 0
  loc_B37056: FLdRfVar var_158
  loc_B37059: Redim
  loc_B37063: FLdPr Me
  loc_B37066: VCallAd Control_ID_ConfirmarCmd
  loc_B37069: CVarAd
  loc_B3706D: ParmAry1St
  loc_B37073: FLdRfVar var_158
  loc_B37076: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B3707B: FLdRfVar var_158
  loc_B3707E: Erase
  loc_B3707F: Branch loc_B37102
  loc_B37082: FLdRfVar var_90
  loc_B37085: FLdPr Me
  loc_B37088: MemLdRfVar from_stack_1.global_56
  loc_B3708B: NewIfNullPr tblPersona
  loc_B3708E: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B37093: ILdRf var_90
  loc_B37096: FLdPr Me
  loc_B37099: MemStStrCopy
  loc_B3709D: FFree1Str var_90
  loc_B370A0: FLdPr Me
  loc_B370A3: MemLdStr global_64
  loc_B370A6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B370AB: LitStr vbNullString
  loc_B370AE: FLdPr Me
  loc_B370B1: VCallAd Control_ID_CucuPersLbl
  loc_B370B4: FStAdFunc var_88
  loc_B370B7: FLdPr var_88
  loc_B370BA: Me.Caption = from_stack_1
  loc_B370BF: FFree1Ad var_88
  loc_B370C2: LitStr vbNullString
  loc_B370C5: FLdPr Me
  loc_B370C8: VCallAd Control_ID_DetaPersLbl
  loc_B370CB: FStAdFunc var_88
  loc_B370CE: FLdPr var_88
  loc_B370D1: Me.Caption = from_stack_1
  loc_B370D6: FFree1Ad var_88
  loc_B370D9: LitStr vbNullString
  loc_B370DC: FLdPr Me
  loc_B370DF: VCallAd Control_ID_DomiPersLbl
  loc_B370E2: FStAdFunc var_88
  loc_B370E5: FLdPr var_88
  loc_B370E8: Me.Caption = from_stack_1
  loc_B370ED: FFree1Ad var_88
  loc_B370F0: FLdPr Me
  loc_B370F3: VCallAd Control_ID_NumeCtaTxt
  loc_B370F6: CVarAd
  loc_B370FA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B370FF: FFree1Var var_BC = ""
  loc_B37102: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'A22C40
  'Data Table: 4CF43C
  loc_A22C04: Call Proc_178_21_B11AD8()
  loc_A22C09: LitI4 0
  loc_A22C0E: LitI4 0
  loc_A22C13: FLdRfVar var_88
  loc_A22C16: Redim
  loc_A22C20: FLdPr Me
  loc_A22C23: VCallAd Control_ID_ConfirmarCmd
  loc_A22C26: CVarAd
  loc_A22C2A: ParmAry1St
  loc_A22C30: FLdRfVar var_88
  loc_A22C33: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A22C38: FLdRfVar var_88
  loc_A22C3B: Erase
  loc_A22C3C: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B718C8
  'Data Table: 4CF43C
  loc_B71450: LitI2_Byte 0
  loc_B71452: PopTmpLdAd2 var_86
  loc_B71455: Call CodiConcTxt_Validate(from_stack_1v)
  loc_B7145A: FLdPr Me
  loc_B7145D: MemLdStr global_64
  loc_B71460: LitStr vbNullString
  loc_B71463: NeStr
  loc_B71465: BranchF loc_B71469
  loc_B71468: ExitProcHresult
  loc_B71469: LitI2_Byte 0
  loc_B7146B: PopTmpLdAd2 var_86
  loc_B7146E: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_B71473: FLdPr Me
  loc_B71476: MemLdStr global_64
  loc_B71479: LitStr vbNullString
  loc_B7147C: NeStr
  loc_B7147E: BranchF loc_B71482
  loc_B71481: ExitProcHresult
  loc_B71482: FLdRfVar var_86
  loc_B71485: FLdPr Me
  loc_B71488: VCallAd Control_ID_DebitosOpt
  loc_B7148B: FStAdFunc var_8C
  loc_B7148E: FLdPr var_8C
  loc_B71491:  = Me.Value
  loc_B71496: FLdI2 var_86
  loc_B71499: LitI2_Byte &HFF
  loc_B7149B: EqI2
  loc_B7149C: FFree1Ad var_8C
  loc_B7149F: BranchF loc_B71578
  loc_B714A2: LitI2_Byte &H16
  loc_B714A4: FLdPr Me
  loc_B714A7: MemStI2 global_68
  loc_B714AA: FLdRfVar var_90
  loc_B714AD: FLdPr Me
  loc_B714B0: VCallAd Control_ID_NumeCtaTxt
  loc_B714B3: FStAdFunc var_8C
  loc_B714B6: FLdPr var_8C
  loc_B714B9:  = Me.Text
  loc_B714BE: FLdRfVar var_98
  loc_B714C1: FLdPr Me
  loc_B714C4: VCallAd Control_ID_CodiConcTxt
  loc_B714C7: FStAdFunc var_94
  loc_B714CA: FLdPr var_94
  loc_B714CD:  = Me.Text
  loc_B714D2: FLdRfVar var_A0
  loc_B714D5: FLdPr Me
  loc_B714D8: VCallAd Control_ID_ExpeCtctTxt
  loc_B714DB: FStAdFunc var_9C
  loc_B714DE: FLdPr var_9C
  loc_B714E1:  = Me.Text
  loc_B714E6: FLdRfVar var_A8
  loc_B714E9: FLdPr Me
  loc_B714EC: VCallAd Control_ID_DetaCtctTxt
  loc_B714EF: FStAdFunc var_A4
  loc_B714F2: FLdPr var_A4
  loc_B714F5:  = Me.Text
  loc_B714FA: FLdRfVar var_B0
  loc_B714FD: FLdPr Me
  loc_B71500: VCallAd Control_ID_ImpoCtctTxt
  loc_B71503: FStAdFunc var_AC
  loc_B71506: FLdPr var_AC
  loc_B71509:  = Me.Text
  loc_B7150E: LitI2_Byte 0
  loc_B71510: CR8I2
  loc_B71511: PopFPR8
  loc_B71512: ILdRf var_B0
  loc_B71515: CR8Str
  loc_B71517: PopFPR8
  loc_B71518: ILdRf var_A8
  loc_B7151B: ILdRf var_A0
  loc_B7151E: FLdPr Me
  loc_B71521: MemLdI2 global_68
  loc_B71524: CUI1I2
  loc_B71526: ILdRf var_98
  loc_B71529: ImpAdLdI2 MemVar_D93034
  loc_B7152C: LitI4 0
  loc_B71531: LitI2_Byte 0
  loc_B71533: LitI2_Byte 0
  loc_B71535: LitI2_Byte 0
  loc_B71537: CUI1I2
  loc_B71539: LitI2_Byte 0
  loc_B7153B: LitI4 0
  loc_B71540: LitI2_Byte 0
  loc_B71542: CUI1I2
  loc_B71544: LitI2_Byte 0
  loc_B71546: ILdRf var_90
  loc_B71549: ImpAdLdUI1
  loc_B7154D: FLdPr Me
  loc_B71550: MemLdRfVar from_stack_1.global_52
  loc_B71553: NewIfNullPr clscreditos
  loc_B71556: Call clscreditos.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B7155B: FFreeStr var_90 = "": var_98 = "": var_A0 = "": var_A8 = ""
  loc_B71568: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = ""
  loc_B71575: Branch loc_B7172E
  loc_B71578: FLdPr Me
  loc_B7157B: VCallAd Control_ID_ctacteFlex
  loc_B7157E: FStAdFunc var_8C
  loc_B71581: FLdPr var_8C
  loc_B71584: LateIdLdVar var_C0 DispID_10 0
  loc_B7158B: CI4Var
  loc_B7158D: CVarI4
  loc_B71591: PopAdLdVar
  loc_B71592: LitVarI4
  loc_B7159A: PopAdLdVar
  loc_B7159B: FLdPr Me
  loc_B7159E: VCallAd Control_ID_ctacteFlex
  loc_B715A1: FStAdFunc var_94
  loc_B715A4: FLdPr var_94
  loc_B715A7: LateIdCallLdVar
  loc_B715B1: CStrVarTmp
  loc_B715B2: FStStrNoPop var_90
  loc_B715B5: LitStr "Si"
  loc_B715B8: EqStr
  loc_B715BA: FFree1Str var_90
  loc_B715BD: FFreeAd var_8C = ""
  loc_B715C4: FFreeVar var_C0 = ""
  loc_B715CB: BranchF loc_B71725
  loc_B715CE: LitI2_Byte &H17
  loc_B715D0: FLdPr Me
  loc_B715D3: MemStI2 global_68
  loc_B715D6: FLdRfVar var_90
  loc_B715D9: FLdPr Me
  loc_B715DC: VCallAd Control_ID_NumeCtaTxt
  loc_B715DF: FStAdFunc var_8C
  loc_B715E2: FLdPr var_8C
  loc_B715E5:  = Me.Text
  loc_B715EA: FLdPr Me
  loc_B715ED: VCallAd Control_ID_ctacteFlex
  loc_B715F0: FStAdFunc var_94
  loc_B715F3: FLdPr var_94
  loc_B715F6: LateIdLdVar var_C0 DispID_10 0
  loc_B715FD: CI4Var
  loc_B715FF: CVarI4
  loc_B71603: PopAdLdVar
  loc_B71604: LitVarI4
  loc_B7160C: PopAdLdVar
  loc_B7160D: FLdPr Me
  loc_B71610: VCallAd Control_ID_ctacteFlex
  loc_B71613: FStAdFunc var_9C
  loc_B71616: FLdPr var_9C
  loc_B71619: LateIdCallLdVar
  loc_B71623: PopAd
  loc_B71625: FLdPr Me
  loc_B71628: VCallAd Control_ID_ctacteFlex
  loc_B7162B: FStAdFunc var_A4
  loc_B7162E: FLdPr var_A4
  loc_B71631: LateIdLdVar var_120 DispID_10 0
  loc_B71638: CI4Var
  loc_B7163A: CVarI4
  loc_B7163E: PopAdLdVar
  loc_B7163F: LitVarI4
  loc_B71647: PopAdLdVar
  loc_B71648: FLdPr Me
  loc_B7164B: VCallAd Control_ID_ctacteFlex
  loc_B7164E: FStAdFunc var_AC
  loc_B71651: FLdPr var_AC
  loc_B71654: LateIdCallLdVar
  loc_B7165E: PopAd
  loc_B71660: FLdRfVar var_98
  loc_B71663: FLdPr Me
  loc_B71666: VCallAd Control_ID_ExpeCtctTxt
  loc_B71669: FStAdFunc var_174
  loc_B7166C: FLdPr var_174
  loc_B7166F:  = Me.Text
  loc_B71674: FLdRfVar var_A0
  loc_B71677: FLdPr Me
  loc_B7167A: VCallAd Control_ID_DetaCtctTxt
  loc_B7167D: FStAdFunc var_178
  loc_B71680: FLdPr var_178
  loc_B71683:  = Me.Text
  loc_B71688: FLdRfVar var_A8
  loc_B7168B: FLdPr Me
  loc_B7168E: VCallAd Control_ID_ImpoCtctTxt
  loc_B71691: FStAdFunc var_17C
  loc_B71694: FLdPr var_17C
  loc_B71697:  = Me.Text
  loc_B7169C: ILdRf var_A8
  loc_B7169F: CR8Str
  loc_B716A1: PopFPR8
  loc_B716A2: LitI2_Byte 0
  loc_B716A4: CR8I2
  loc_B716A5: PopFPR8
  loc_B716A6: ILdRf var_A0
  loc_B716A9: ILdRf var_98
  loc_B716AC: FLdPr Me
  loc_B716AF: MemLdI2 global_68
  loc_B716B2: CUI1I2
  loc_B716B4: FLdRfVar var_170
  loc_B716B7: CStrVarTmp
  loc_B716B8: FStStrNoPop var_180
  loc_B716BB: ImpAdLdI2 MemVar_D93034
  loc_B716BE: LitI4 0
  loc_B716C3: LitI2_Byte 0
  loc_B716C5: LitI2_Byte 0
  loc_B716C7: LitI2_Byte 0
  loc_B716C9: CUI1I2
  loc_B716CB: LitI2_Byte 0
  loc_B716CD: LitI4 0
  loc_B716D2: LitI2_Byte 0
  loc_B716D4: CUI1I2
  loc_B716D6: LitI2_Byte 0
  loc_B716D8: FLdRfVar var_110
  loc_B716DB: CStrVarTmp
  loc_B716DC: FStStrNoPop var_B0
  loc_B716DF: CI4Str
  loc_B716E0: ILdRf var_90
  loc_B716E3: ImpAdLdUI1
  loc_B716E7: FLdPr Me
  loc_B716EA: MemLdRfVar from_stack_1.global_52
  loc_B716ED: NewIfNullPr clscreditos
  loc_B716F0: Call clscreditos.AddNewCreditos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B716F5: FFreeStr var_90 = "": var_B0 = "": var_180 = "": var_98 = "": var_A0 = ""
  loc_B71704: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A4 = "": var_AC = "": var_174 = "": var_178 = ""
  loc_B71717: FFreeVar var_C0 = "": var_110 = "": var_120 = ""
  loc_B71722: Branch loc_B7172E
  loc_B71725: LitStr "No existe ningún ítem seleccionado para efectuar el crédito a favor. Verifique..."
  loc_B71728: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7172D: ExitProcHresult
  loc_B7172E: LitStr "La operación se realizó con exito"
  loc_B71731: FLdPr Me
  loc_B71734: MemStStrCopy
  loc_B71738: FLdPr Me
  loc_B7173B: MemLdStr global_64
  loc_B7173E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B71743: Call Proc_178_21_B11AD8()
  loc_B71748: ILdRf Me
  loc_B7174B: CastAd
  loc_B7174E: FStAdFunc var_8C
  loc_B71751: FLdRfVar var_8C
  loc_B71754: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B71759: FFree1Ad var_8C
  loc_B7175C: LitI4 1
  loc_B71761: LitI4 1
  loc_B71766: LitVarStr var_E0, "0.00"
  loc_B7176B: FStVarCopyObj var_110
  loc_B7176E: FLdRfVar var_110
  loc_B71771: LitVarI2 var_C0, 0
  loc_B71776: FLdRfVar var_120
  loc_B71779: ImpAdCallFPR4  = Format(, )
  loc_B7177E: FLdRfVar var_120
  loc_B71781: CStrVarVal var_90
  loc_B71785: FLdPr Me
  loc_B71788: VCallAd Control_ID_txtTotaDere
  loc_B7178B: FStAdFunc var_8C
  loc_B7178E: FLdPr var_8C
  loc_B71791: Me.Text = from_stack_1
  loc_B71796: FFree1Str var_90
  loc_B71799: FFree1Ad var_8C
  loc_B7179C: FFreeVar var_C0 = "": var_110 = ""
  loc_B717A5: LitI4 1
  loc_B717AA: LitI4 1
  loc_B717AF: LitVarStr var_E0, "0.00"
  loc_B717B4: FStVarCopyObj var_110
  loc_B717B7: FLdRfVar var_110
  loc_B717BA: LitVarI2 var_C0, 0
  loc_B717BF: FLdRfVar var_120
  loc_B717C2: ImpAdCallFPR4  = Format(, )
  loc_B717C7: FLdRfVar var_120
  loc_B717CA: CStrVarVal var_90
  loc_B717CE: FLdPr Me
  loc_B717D1: VCallAd Control_ID_txtTotaReca
  loc_B717D4: FStAdFunc var_8C
  loc_B717D7: FLdPr var_8C
  loc_B717DA: Me.Text = from_stack_1
  loc_B717DF: FFree1Str var_90
  loc_B717E2: FFree1Ad var_8C
  loc_B717E5: FFreeVar var_C0 = "": var_110 = ""
  loc_B717EE: LitI4 1
  loc_B717F3: LitI4 1
  loc_B717F8: LitVarStr var_E0, "0.00"
  loc_B717FD: FStVarCopyObj var_110
  loc_B71800: FLdRfVar var_110
  loc_B71803: LitVarI2 var_C0, 0
  loc_B71808: FLdRfVar var_120
  loc_B7180B: ImpAdCallFPR4  = Format(, )
  loc_B71810: FLdRfVar var_120
  loc_B71813: CStrVarVal var_90
  loc_B71817: FLdPr Me
  loc_B7181A: VCallAd Control_ID_txtTotal
  loc_B7181D: FStAdFunc var_8C
  loc_B71820: FLdPr var_8C
  loc_B71823: Me.Text = from_stack_1
  loc_B71828: FFree1Str var_90
  loc_B7182B: FFree1Ad var_8C
  loc_B7182E: FFreeVar var_C0 = "": var_110 = ""
  loc_B71837: LitI4 1
  loc_B7183C: LitI4 1
  loc_B71841: LitVarStr var_E0, "0.00"
  loc_B71846: FStVarCopyObj var_110
  loc_B71849: FLdRfVar var_110
  loc_B7184C: LitVarI2 var_C0, 0
  loc_B71851: FLdRfVar var_120
  loc_B71854: ImpAdCallFPR4  = Format(, )
  loc_B71859: FLdRfVar var_120
  loc_B7185C: CStrVarVal var_90
  loc_B71860: FLdPr Me
  loc_B71863: VCallAd Control_ID_ImpoCtctTxt
  loc_B71866: FStAdFunc var_8C
  loc_B71869: FLdPr var_8C
  loc_B7186C: Me.Text = from_stack_1
  loc_B71871: FFree1Str var_90
  loc_B71874: FFree1Ad var_8C
  loc_B71877: FFreeVar var_C0 = "": var_110 = ""
  loc_B71880: LitI4 0
  loc_B71885: LitI4 0
  loc_B7188A: FLdRfVar var_184
  loc_B7188D: Redim
  loc_B71897: FLdPr Me
  loc_B7189A: VCallAd Control_ID_ConfirmarCmd
  loc_B7189D: CVarAd
  loc_B718A1: ParmAry1St
  loc_B718A7: FLdRfVar var_184
  loc_B718AA: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B718AF: FLdRfVar var_184
  loc_B718B2: Erase
  loc_B718B3: FLdPr Me
  loc_B718B6: VCallAd Control_ID_OficinaCbo
  loc_B718B9: FStAdFunc var_8C
  loc_B718BC: FLdPr var_8C
  loc_B718BF: Me.SetFocus
  loc_B718C4: FFree1Ad var_8C
  loc_B718C7: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_GotFocus() '9BDF68
  'Data Table: 4CF43C
  loc_9BDF54: FLdPr Me
  loc_9BDF57: VCallAd Control_ID_ImpoCtctTxt
  loc_9BDF5A: CVarAd
  loc_9BDF5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDF63: FFree1Var var_94 = ""
  loc_9BDF66: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A078B8
  'Data Table: 4CF43C
  loc_A07884: LitStr "1234567890,."
  loc_A07887: FStStrCopy var_88
  loc_A0788A: FLdRfVar var_88
  loc_A0788D: ILdRf KeyAscii
  loc_A07890: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07895: IStI2 KeyAscii
  loc_A07898: FFree1Str var_88
  loc_A0789B: ILdI2 KeyAscii
  loc_A0789E: LitStr "."
  loc_A078A1: ImpAdCallI2 Asc()
  loc_A078A6: EqI2
  loc_A078A7: BranchF loc_A078B5
  loc_A078AA: LitStr ","
  loc_A078AD: ImpAdCallI2 Asc()
  loc_A078B2: IStI2 KeyAscii
  loc_A078B5: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_LostFocus() 'A75758
  'Data Table: 4CF43C
  loc_A756F4: FLdRfVar var_8C
  loc_A756F7: FLdPr Me
  loc_A756FA: VCallAd Control_ID_ImpoCtctTxt
  loc_A756FD: FStAdFunc var_88
  loc_A75700: FLdPr var_88
  loc_A75703:  = Me.Text
  loc_A75708: LitI4 1
  loc_A7570D: LitI4 1
  loc_A75712: LitVarStr var_AC, "0.00"
  loc_A75717: FStVarCopyObj var_BC
  loc_A7571A: FLdRfVar var_BC
  loc_A7571D: FLdZeroAd var_8C
  loc_A75720: CVarStr var_9C
  loc_A75723: FLdRfVar var_CC
  loc_A75726: ImpAdCallFPR4  = Format(, )
  loc_A7572B: FLdRfVar var_CC
  loc_A7572E: CStrVarVal var_D0
  loc_A75732: FLdPr Me
  loc_A75735: VCallAd Control_ID_ImpoCtctTxt
  loc_A75738: FStAdFunc var_D4
  loc_A7573B: FLdPr var_D4
  loc_A7573E: Me.Text = from_stack_1
  loc_A75743: FFree1Str var_D0
  loc_A75746: FFreeAd var_88 = ""
  loc_A7574D: FFreeVar var_9C = "": var_BC = ""
  loc_A75756: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'B0929C
  'Data Table: 4CF43C
  loc_B090AC: FLdRfVar var_8A
  loc_B090AF: FLdPr Me
  loc_B090B2: VCallAd Control_ID_ImpoCtctTxt
  loc_B090B5: FStAdFunc var_88
  loc_B090B8: FLdPr var_88
  loc_B090BB:  = Me.Enabled
  loc_B090C0: FLdI2 var_8A
  loc_B090C3: LitI2_Byte &HFF
  loc_B090C5: EqI2
  loc_B090C6: FFree1Ad var_88
  loc_B090C9: BranchF loc_B09299
  loc_B090CC: FLdRfVar var_90
  loc_B090CF: FLdPr Me
  loc_B090D2: VCallAd Control_ID_ImpoCtctTxt
  loc_B090D5: FStAdFunc var_88
  loc_B090D8: FLdPr var_88
  loc_B090DB:  = Me.Text
  loc_B090E0: LitI2_Byte 0
  loc_B090E2: LitI2_Byte 0
  loc_B090E4: ILdRf var_90
  loc_B090E7: LitStr "Importe"
  loc_B090EA: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_B090EF: FStStrNoPop var_94
  loc_B090F2: FLdPr Me
  loc_B090F5: MemStStrCopy
  loc_B090F9: FFreeStr var_90 = ""
  loc_B09100: FFree1Ad var_88
  loc_B09103: FLdPr Me
  loc_B09106: MemLdStr global_64
  loc_B09109: LitStr vbNullString
  loc_B0910C: NeStr
  loc_B0910E: BranchF loc_B09134
  loc_B09111: FLdPr Me
  loc_B09114: MemLdStr global_64
  loc_B09117: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0911C: FLdPr Me
  loc_B0911F: VCallAd Control_ID_ImpoCtctTxt
  loc_B09122: CVarAd
  loc_B09126: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B0912B: FFree1Var var_A4 = ""
  loc_B0912E: LitI2_Byte &HFF
  loc_B09130: IStI2 Cancel
  loc_B09133: ExitProcHresult
  loc_B09134: FLdRfVar var_8A
  loc_B09137: FLdPr Me
  loc_B0913A: VCallAd Control_ID_CreditosOpt
  loc_B0913D: FStAdFunc var_88
  loc_B09140: FLdPr var_88
  loc_B09143:  = Me.Value
  loc_B09148: FLdI2 var_8A
  loc_B0914B: LitI2_Byte &HFF
  loc_B0914D: EqI2
  loc_B0914E: FFree1Ad var_88
  loc_B09151: BranchF loc_B09299
  loc_B09154: FLdPr Me
  loc_B09157: VCallAd Control_ID_ctacteFlex
  loc_B0915A: FStAdFunc var_A8
  loc_B0915D: FLdPr var_A8
  loc_B09160: LateIdLdVar var_A4 DispID_10 0
  loc_B09167: CI4Var
  loc_B09169: CVarI4
  loc_B0916D: PopAdLdVar
  loc_B0916E: LitVarI4
  loc_B09176: PopAdLdVar
  loc_B09177: FLdPr Me
  loc_B0917A: VCallAd Control_ID_ctacteFlex
  loc_B0917D: FStAdFunc var_EC
  loc_B09180: FLdPr var_EC
  loc_B09183: LateIdCallLdVar
  loc_B0918D: PopAd
  loc_B0918F: FLdPr Me
  loc_B09192: VCallAd Control_ID_ctacteFlex
  loc_B09195: FStAdFunc var_100
  loc_B09198: FLdPr var_100
  loc_B0919B: LateIdLdVar var_110 DispID_10 0
  loc_B091A2: CI4Var
  loc_B091A4: CVarI4
  loc_B091A8: PopAdLdVar
  loc_B091A9: LitVarI4
  loc_B091B1: PopAdLdVar
  loc_B091B2: FLdPr Me
  loc_B091B5: VCallAd Control_ID_ctacteFlex
  loc_B091B8: FStAdFunc var_154
  loc_B091BB: FLdPr var_154
  loc_B091BE: LateIdCallLdVar
  loc_B091C8: PopAd
  loc_B091CA: FLdPr Me
  loc_B091CD: VCallAd Control_ID_ctacteFlex
  loc_B091D0: FStAdFunc var_168
  loc_B091D3: FLdPr var_168
  loc_B091D6: LateIdLdVar var_178 DispID_10 0
  loc_B091DD: CI4Var
  loc_B091DF: CVarI4
  loc_B091E3: PopAdLdVar
  loc_B091E4: LitVarI4
  loc_B091EC: PopAdLdVar
  loc_B091ED: FLdPr Me
  loc_B091F0: VCallAd Control_ID_ctacteFlex
  loc_B091F3: FStAdFunc var_1BC
  loc_B091F6: FLdPr var_1BC
  loc_B091F9: LateIdCallLdVar
  loc_B09203: PopAd
  loc_B09205: FLdRfVar var_1DC
  loc_B09208: FLdRfVar var_1CC
  loc_B0920B: CStrVarTmp
  loc_B0920C: FStStrNoPop var_1D4
  loc_B0920F: CI4Str
  loc_B09210: FLdRfVar var_164
  loc_B09213: CStrVarTmp
  loc_B09214: FStStrNoPop var_1D0
  loc_B09217: FLdRfVar var_FC
  loc_B0921A: CStrVarTmp
  loc_B0921B: FStStrNoPop var_94
  loc_B0921E: CUI1Str
  loc_B09220: FLdPr Me
  loc_B09223: MemLdRfVar from_stack_1.global_52
  loc_B09226: NewIfNullPr clscreditos
  loc_B09229: from_stack_4v = clscreditos.BuscaSaldoPorNumero(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B0922E: FLdRfVar var_90
  loc_B09231: FLdPr Me
  loc_B09234: VCallAd Control_ID_ImpoCtctTxt
  loc_B09237: FStAdFunc var_88
  loc_B0923A: FLdPr var_88
  loc_B0923D:  = Me.Text
  loc_B09242: ILdRf var_90
  loc_B09245: CR8Str
  loc_B09247: FLdFPR8 var_1DC
  loc_B0924A: GtR4
  loc_B0924B: FFreeStr var_90 = "": var_94 = "": var_1D0 = ""
  loc_B09256: FFreeAd var_88 = "": var_A8 = "": var_EC = "": var_100 = "": var_154 = "": var_168 = ""
  loc_B09267: FFreeVar var_A4 = "": var_FC = "": var_110 = "": var_164 = "": var_178 = ""
  loc_B09276: BranchF loc_B09299
  loc_B09279: LitStr "El importe no puede ser mayor al saldo. Verifique..."
  loc_B0927C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B09281: FLdPr Me
  loc_B09284: VCallAd Control_ID_ImpoCtctTxt
  loc_B09287: CVarAd
  loc_B0928B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B09290: FFree1Var var_A4 = ""
  loc_B09293: LitI2_Byte &HFF
  loc_B09295: IStI2 Cancel
  loc_B09298: ExitProcHresult
  loc_B09299: ExitProcHresult
End Sub

Private Function Proc_178_20_B1E560() 'B1E560
  'Data Table: 4CF43C
  loc_B1E2D4: FLdRfVar var_8A
  loc_B1E2D7: FLdPr Me
  loc_B1E2DA: VCallAd Control_ID_OficinaCbo
  loc_B1E2DD: FStAdFunc var_88
  loc_B1E2E0: FLdPr var_88
  loc_B1E2E3:  = Me.ListIndex
  loc_B1E2E8: FLdI2 var_8A
  loc_B1E2EB: FStI2 var_8C
  loc_B1E2EE: FFree1Ad var_88
  loc_B1E2F1: FLdI2 var_8C
  loc_B1E2F4: LitI2_Byte 0
  loc_B1E2F6: EqI2
  loc_B1E2F7: BranchF loc_B1E305
  loc_B1E2FA: LitI2_Byte 1
  loc_B1E2FC: CUI1I2
  loc_B1E2FE: ImpAdStUI1 MemVar_D93038
  loc_B1E302: Branch loc_B1E33E
  loc_B1E305: FLdI2 var_8C
  loc_B1E308: LitI2_Byte 1
  loc_B1E30A: EqI2
  loc_B1E30B: BranchF loc_B1E319
  loc_B1E30E: LitI2_Byte 2
  loc_B1E310: CUI1I2
  loc_B1E312: ImpAdStUI1 MemVar_D93038
  loc_B1E316: Branch loc_B1E33E
  loc_B1E319: FLdI2 var_8C
  loc_B1E31C: LitI2_Byte 2
  loc_B1E31E: EqI2
  loc_B1E31F: BranchF loc_B1E32D
  loc_B1E322: LitI2_Byte 3
  loc_B1E324: CUI1I2
  loc_B1E326: ImpAdStUI1 MemVar_D93038
  loc_B1E32A: Branch loc_B1E33E
  loc_B1E32D: FLdI2 var_8C
  loc_B1E330: LitI2_Byte 3
  loc_B1E332: EqI2
  loc_B1E333: BranchF loc_B1E33E
  loc_B1E336: LitI2_Byte 4
  loc_B1E338: CUI1I2
  loc_B1E33A: ImpAdStUI1 MemVar_D93038
  loc_B1E33E: LitVar_Missing var_AC
  loc_B1E341: PopAdLdVar
  loc_B1E342: LitVarI4
  loc_B1E34A: PopAdLdVar
  loc_B1E34B: ImpAdLdRf MemVar_D94034
  loc_B1E34E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E351: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B1E356: FLdRfVar var_B0
  loc_B1E359: FLdRfVar var_88
  loc_B1E35C: ImpAdLdRf MemVar_D94034
  loc_B1E35F: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E362: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E367: FLdPr var_88
  loc_B1E36A: from_stack_1 = clsbase.RecordCount
  loc_B1E36F: ILdRf var_B0
  loc_B1E372: LitI4 0
  loc_B1E377: GtI4
  loc_B1E378: FFree1Ad var_88
  loc_B1E37B: BranchF loc_B1E54C
  loc_B1E37E: FLdRfVar var_CC
  loc_B1E381: FLdRfVar var_BC
  loc_B1E384: LitVarStr var_9C, "CodiOfic"
  loc_B1E389: PopAdLdVar
  loc_B1E38A: FLdRfVar var_B8
  loc_B1E38D: FLdRfVar var_B4
  loc_B1E390: FLdRfVar var_88
  loc_B1E393: ImpAdLdRf MemVar_D94034
  loc_B1E396: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E399: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E39E: FLdPr var_88
  loc_B1E3A1: from_stack_1v = clsbase.RsFrmGet()
  loc_B1E3A6: FLdPr var_B4
  loc_B1E3A9:  = Me.Fields
  loc_B1E3AE: FLdPr var_B8
  loc_B1E3B1: from_stack_2 = Me.Item(from_stack_1)
  loc_B1E3B6: FLdPr var_BC
  loc_B1E3B9:  = Me.Value
  loc_B1E3BE: FLdRfVar var_CC
  loc_B1E3C1: FStVar var_DC
  loc_B1E3C5: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B1E3D0: FLdRfVar var_DC
  loc_B1E3D3: LitVarI2 var_9C, 1
  loc_B1E3D8: HardType
  loc_B1E3D9: EqVarBool
  loc_B1E3DB: BranchF loc_B1E415
  loc_B1E3DE: FLdRfVar var_E0
  loc_B1E3E1: LitI2_Byte 0
  loc_B1E3E3: FLdPr Me
  loc_B1E3E6: VCallAd Control_ID_OficinaCbo
  loc_B1E3E9: FStAdFunc var_88
  loc_B1E3EC: FLdPr var_88
  loc_B1E3EF: from_stack_2 = Me.List(from_stack_1)
  loc_B1E3F4: ILdRf var_E0
  loc_B1E3F7: FLdPr Me
  loc_B1E3FA: VCallAd Control_ID_OficinaCbo
  loc_B1E3FD: FStAdFunc var_B4
  loc_B1E400: FLdPr var_B4
  loc_B1E403: Me.Text = from_stack_1
  loc_B1E408: FFree1Str var_E0
  loc_B1E40B: FFreeAd var_88 = ""
  loc_B1E412: Branch loc_B1E4E1
  loc_B1E415: FLdRfVar var_DC
  loc_B1E418: LitVarI2 var_9C, 2
  loc_B1E41D: HardType
  loc_B1E41E: EqVarBool
  loc_B1E420: BranchF loc_B1E45A
  loc_B1E423: FLdRfVar var_E0
  loc_B1E426: LitI2_Byte 1
  loc_B1E428: FLdPr Me
  loc_B1E42B: VCallAd Control_ID_OficinaCbo
  loc_B1E42E: FStAdFunc var_88
  loc_B1E431: FLdPr var_88
  loc_B1E434: from_stack_2 = Me.List(from_stack_1)
  loc_B1E439: ILdRf var_E0
  loc_B1E43C: FLdPr Me
  loc_B1E43F: VCallAd Control_ID_OficinaCbo
  loc_B1E442: FStAdFunc var_B4
  loc_B1E445: FLdPr var_B4
  loc_B1E448: Me.Text = from_stack_1
  loc_B1E44D: FFree1Str var_E0
  loc_B1E450: FFreeAd var_88 = ""
  loc_B1E457: Branch loc_B1E4E1
  loc_B1E45A: FLdRfVar var_DC
  loc_B1E45D: LitVarI2 var_9C, 3
  loc_B1E462: HardType
  loc_B1E463: EqVarBool
  loc_B1E465: BranchF loc_B1E49F
  loc_B1E468: FLdRfVar var_E0
  loc_B1E46B: LitI2_Byte 2
  loc_B1E46D: FLdPr Me
  loc_B1E470: VCallAd Control_ID_OficinaCbo
  loc_B1E473: FStAdFunc var_88
  loc_B1E476: FLdPr var_88
  loc_B1E479: from_stack_2 = Me.List(from_stack_1)
  loc_B1E47E: ILdRf var_E0
  loc_B1E481: FLdPr Me
  loc_B1E484: VCallAd Control_ID_OficinaCbo
  loc_B1E487: FStAdFunc var_B4
  loc_B1E48A: FLdPr var_B4
  loc_B1E48D: Me.Text = from_stack_1
  loc_B1E492: FFree1Str var_E0
  loc_B1E495: FFreeAd var_88 = ""
  loc_B1E49C: Branch loc_B1E4E1
  loc_B1E49F: FLdRfVar var_DC
  loc_B1E4A2: LitVarI2 var_9C, 4
  loc_B1E4A7: HardType
  loc_B1E4A8: EqVarBool
  loc_B1E4AA: BranchF loc_B1E4E1
  loc_B1E4AD: FLdRfVar var_E0
  loc_B1E4B0: LitI2_Byte 3
  loc_B1E4B2: FLdPr Me
  loc_B1E4B5: VCallAd Control_ID_OficinaCbo
  loc_B1E4B8: FStAdFunc var_88
  loc_B1E4BB: FLdPr var_88
  loc_B1E4BE: from_stack_2 = Me.List(from_stack_1)
  loc_B1E4C3: ILdRf var_E0
  loc_B1E4C6: FLdPr Me
  loc_B1E4C9: VCallAd Control_ID_OficinaCbo
  loc_B1E4CC: FStAdFunc var_B4
  loc_B1E4CF: FLdPr var_B4
  loc_B1E4D2: Me.Text = from_stack_1
  loc_B1E4D7: FFree1Str var_E0
  loc_B1E4DA: FFreeAd var_88 = ""
  loc_B1E4E1: FLdRfVar var_CC
  loc_B1E4E4: FLdRfVar var_BC
  loc_B1E4E7: LitVarStr var_9C, "CuenCtct"
  loc_B1E4EC: PopAdLdVar
  loc_B1E4ED: FLdRfVar var_B8
  loc_B1E4F0: FLdRfVar var_B4
  loc_B1E4F3: FLdRfVar var_88
  loc_B1E4F6: ImpAdLdRf MemVar_D94034
  loc_B1E4F9: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E4FC: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E501: FLdPr var_88
  loc_B1E504: from_stack_1v = clsbase.RsFrmGet()
  loc_B1E509: FLdPr var_B4
  loc_B1E50C:  = Me.Fields
  loc_B1E511: FLdPr var_B8
  loc_B1E514: from_stack_2 = Me.Item(from_stack_1)
  loc_B1E519: FLdPr var_BC
  loc_B1E51C:  = Me.Value
  loc_B1E521: FLdRfVar var_CC
  loc_B1E524: CStrVarTmp
  loc_B1E525: FStStrNoPop var_E0
  loc_B1E528: FLdPr Me
  loc_B1E52B: VCallAd Control_ID_NumeCtaTxt
  loc_B1E52E: FStAdFunc var_E4
  loc_B1E531: FLdPr var_E4
  loc_B1E534: Me.Text = from_stack_1
  loc_B1E539: FFree1Str var_E0
  loc_B1E53C: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1E549: FFree1Var var_CC = ""
  loc_B1E54C: FLdPr Me
  loc_B1E54F: VCallAd Control_ID_NumeCtaTxt
  loc_B1E552: CVarAd
  loc_B1E556: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1E55B: FFree1Var var_CC = ""
  loc_B1E55E: ExitProcHresult
End Function

Private Function Proc_178_21_B11AD8() 'B11AD8
  'Data Table: 4CF43C
  loc_B11870: FLdPr Me
  loc_B11873: VCallAd Control_ID_ctacteFlex
  loc_B11876: FStAdFunc var_88
  loc_B11879: FLdPr var_88
  loc_B1187C: LateIdCall
  loc_B11884: LitVarI4
  loc_B1188C: PopAdLdVar
  loc_B1188D: FLdPr var_88
  loc_B11890: LateIdSt
  loc_B11895: LitVarI4
  loc_B1189D: PopAdLdVar
  loc_B1189E: LitVarI4
  loc_B118A6: PopAdLdVar
  loc_B118A7: LitVarStr var_D8, "Of"
  loc_B118AC: PopAdLdVar
  loc_B118AD: FLdPr var_88
  loc_B118B0: LateIdCallSt
  loc_B118B8: LitVarI4
  loc_B118C0: PopAdLdVar
  loc_B118C1: LitVarI4
  loc_B118C9: PopAdLdVar
  loc_B118CA: LitVarStr var_D8, "Cuenta"
  loc_B118CF: PopAdLdVar
  loc_B118D0: FLdPr var_88
  loc_B118D3: LateIdCallSt
  loc_B118DB: LitVarI4
  loc_B118E3: PopAdLdVar
  loc_B118E4: LitVarI4
  loc_B118EC: PopAdLdVar
  loc_B118ED: LitVarStr var_D8, "Periodo"
  loc_B118F2: PopAdLdVar
  loc_B118F3: FLdPr var_88
  loc_B118F6: LateIdCallSt
  loc_B118FE: LitVarI4
  loc_B11906: PopAdLdVar
  loc_B11907: LitVarI4
  loc_B1190F: PopAdLdVar
  loc_B11910: LitVarStr var_D8, "Boleto"
  loc_B11915: PopAdLdVar
  loc_B11916: FLdPr var_88
  loc_B11919: LateIdCallSt
  loc_B11921: LitVarI4
  loc_B11929: PopAdLdVar
  loc_B1192A: LitVarI4
  loc_B11932: PopAdLdVar
  loc_B11933: LitVarStr var_D8, "Fecha Alta"
  loc_B11938: PopAdLdVar
  loc_B11939: FLdPr var_88
  loc_B1193C: LateIdCallSt
  loc_B11944: LitVarI4
  loc_B1194C: PopAdLdVar
  loc_B1194D: LitVarI4
  loc_B11955: PopAdLdVar
  loc_B11956: LitVarStr var_D8, "Liqu."
  loc_B1195B: PopAdLdVar
  loc_B1195C: FLdPr var_88
  loc_B1195F: LateIdCallSt
  loc_B11967: LitVarI4
  loc_B1196F: PopAdLdVar
  loc_B11970: LitVarI4
  loc_B11978: PopAdLdVar
  loc_B11979: LitVarStr var_D8, "Nro Liqu."
  loc_B1197E: PopAdLdVar
  loc_B1197F: FLdPr var_88
  loc_B11982: LateIdCallSt
  loc_B1198A: LitVarI4
  loc_B11992: PopAdLdVar
  loc_B11993: LitVarI4
  loc_B1199B: PopAdLdVar
  loc_B1199C: LitVarStr var_D8, "Concepto"
  loc_B119A1: PopAdLdVar
  loc_B119A2: FLdPr var_88
  loc_B119A5: LateIdCallSt
  loc_B119AD: LitVarI4
  loc_B119B5: PopAdLdVar
  loc_B119B6: LitVarI4
  loc_B119BE: PopAdLdVar
  loc_B119BF: LitVarStr var_D8, "Exp/Comp"
  loc_B119C4: PopAdLdVar
  loc_B119C5: FLdPr var_88
  loc_B119C8: LateIdCallSt
  loc_B119D0: LitVarI4
  loc_B119D8: PopAdLdVar
  loc_B119D9: LitVarI4
  loc_B119E1: PopAdLdVar
  loc_B119E2: LitVarStr var_D8, "Tipo Movi."
  loc_B119E7: PopAdLdVar
  loc_B119E8: FLdPr var_88
  loc_B119EB: LateIdCallSt
  loc_B119F3: LitVarI4
  loc_B119FB: PopAdLdVar
  loc_B119FC: LitVarI4
  loc_B11A04: PopAdLdVar
  loc_B11A05: LitVarStr var_D8, "Creditos"
  loc_B11A0A: PopAdLdVar
  loc_B11A0B: FLdPr var_88
  loc_B11A0E: LateIdCallSt
  loc_B11A16: LitVarI4
  loc_B11A1E: PopAdLdVar
  loc_B11A1F: LitVarI4
  loc_B11A27: PopAdLdVar
  loc_B11A28: LitVarStr var_D8, "Creditos"
  loc_B11A2D: PopAdLdVar
  loc_B11A2E: FLdPr var_88
  loc_B11A31: LateIdCallSt
  loc_B11A39: LitVarI4
  loc_B11A41: PopAdLdVar
  loc_B11A42: LitVarI4
  loc_B11A4A: PopAdLdVar
  loc_B11A4B: LitVarStr var_D8, "Saldo"
  loc_B11A50: PopAdLdVar
  loc_B11A51: FLdPr var_88
  loc_B11A54: LateIdCallSt
  loc_B11A5C: LitVarI4
  loc_B11A64: PopAdLdVar
  loc_B11A65: LitVarI4
  loc_B11A6D: PopAdLdVar
  loc_B11A6E: LitVarStr var_D8, "Numero"
  loc_B11A73: PopAdLdVar
  loc_B11A74: FLdPr var_88
  loc_B11A77: LateIdCallSt
  loc_B11A7F: LitVarI4
  loc_B11A87: PopAdLdVar
  loc_B11A88: LitVarI4
  loc_B11A90: PopAdLdVar
  loc_B11A91: LitVarStr var_D8, "Mov"
  loc_B11A96: PopAdLdVar
  loc_B11A97: FLdPr var_88
  loc_B11A9A: LateIdCallSt
  loc_B11AA2: LitVarI4
  loc_B11AAA: PopAdLdVar
  loc_B11AAB: LitVarI4
  loc_B11AB3: PopAdLdVar
  loc_B11AB4: LitVarStr var_D8, "Sel"
  loc_B11AB9: PopAdLdVar
  loc_B11ABA: FLdPr var_88
  loc_B11ABD: LateIdCallSt
  loc_B11AC5: FLdPr var_88
  loc_B11AC8: LateIdCall
  loc_B11AD0: LitNothing
  loc_B11AD2: FStAd var_88 
  loc_B11AD6: ExitProcHresult
  loc_B11AD7: NeI4
End Function
