VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditoManual
  Caption = "Credito Manual"
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
  ClientWidth = 15228
  ClientHeight = 10152
  Begin VB.TextBox txtDereSele
    Left = 5640
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 37
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
  Begin VB.TextBox txtRecaSele
    Left = 9480
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 36
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
    Left = 5640
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 27
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
    Left = 9480
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 26
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
  Begin VB.TextBox txtTotaApre
    Left = 1920
    Top = 5160
    Width = 1695
    Height = 360
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
  Begin VB.TextBox txtTotal
    Left = 13200
    Top = 5160
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
  Begin VB.TextBox txtTotaSele
    Left = 13200
    Top = 5640
    Width = 1815
    Height = 360
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
    Caption = "Datos del Credito Manual "
    Left = 120
    Top = 6120
    Width = 15015
    Height = 3255
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
    Begin VB.CheckBox CredParcialChk
      Caption = "Crédito Parcial"
      Left = 1800
      Top = 2400
      Width = 2175
      Height = 255
      TabIndex = 40
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
      Left = 5400
      Top = 2520
      Width = 1335
      Height = 525
      TabIndex = 13
      Picture = "frmCreditoManual.frx":0000
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 1800
      Top = 1920
      Width = 1575
      Height = 345
      TabIndex = 12
      MaxLength = 12
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
      Left = 1800
      Top = 1440
      Width = 9015
      Height = 345
      TabIndex = 11
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
      Left = 1800
      Top = 960
      Width = 1695
      Height = 345
      TabIndex = 10
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
    Begin VB.CommandButton FeveCtctCmd
      Left = 3240
      Top = 480
      Width = 450
      Height = 345
      TabIndex = 9
      Picture = "frmCreditoManual.frx":032E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeveCtctMsk
      Left = 1800
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmCreditoManual.frx":0870
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label12
      Caption = "Importe:"
      Left = 765
      Top = 1920
      Width = 885
      Height = 300
      TabIndex = 22
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
      Left = 60
      Top = 1440
      Width = 1635
      Height = 300
      TabIndex = 21
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
      Left = 420
      Top = 960
      Width = 1260
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
    Begin VB.Label Label9
      Caption = "Fecha:"
      Left = 870
      Top = 480
      Width = 735
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
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5040
    Top = 720
    Width = 2175
    Height = 255
    TabIndex = 17
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
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1680
    Top = 120
    Width = 2055
    Height = 420
    TabIndex = 0
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
    Left = 4440
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 6
    Picture = "frmCreditoManual.frx":0920
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6840
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 2
    Picture = "frmCreditoManual.frx":0A02
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4800
    Top = 120
    Width = 1935
    Height = 345
    TabIndex = 1
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
    Left = 14400
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 14
    Picture = "frmCreditoManual.frx":0AFC
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3840
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 5
    Picture = "frmCreditoManual.frx":0D4E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 3
    OleObjectBlob = "frmCreditoManual.frx":1290
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 7
    OleObjectBlob = "frmCreditoManual.frx":1340
    Appearance = 0 'Flat
  End
  Begin VB.Label Label14
    Caption = "Seleccionado:"
    Left = 11400
    Top = 5640
    Width = 1710
    Height = 300
    TabIndex = 39
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
  Begin VB.Label Label13
    Caption = "Seleccionado:"
    Left = 7680
    Top = 5640
    Width = 1710
    Height = 300
    TabIndex = 38
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
    Left = 9360
    Top = 120
    Width = 5175
    Height = 315
    TabIndex = 35
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
    Left = 7440
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 34
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
    Left = 7320
    Top = 600
    Width = 6975
    Height = 315
    TabIndex = 33
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
    Caption = "Total Derecho:"
    Left = 3765
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 32
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
    Caption = "Total Recargo:"
    Left = 7605
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 31
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
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 120
    Top = 5160
    Width = 1755
    Height = 300
    TabIndex = 30
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
    Caption = "Total:"
    Left = 12420
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 29
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
  Begin VB.Label Label1
    Caption = "Seleccionado:"
    Left = 3840
    Top = 5640
    Width = 1710
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 795
    Top = 120
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3960
    Top = 120
    Width = 840
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
  Begin VB.Label Label4
    Caption = "Fecha Vencimiento:"
    Left = 120
    Top = 720
    Width = 2115
    Height = 300
    TabIndex = 4
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

Attribute VB_Name = "frmCreditoManual"


Private Sub SeleTodoChk_Click() 'B7BD1C
  'Data Table: 504878
  loc_B7B828: LitI2_Byte 0
  loc_B7B82A: CR8I2
  loc_B7B82B: FLdPr Me
  loc_B7B82E: MemStFPR8 global_72
  loc_B7B831: LitI2_Byte 0
  loc_B7B833: CR8I2
  loc_B7B834: FLdPr Me
  loc_B7B837: MemStFPR8 global_80
  loc_B7B83A: LitI2_Byte 0
  loc_B7B83C: CR8I2
  loc_B7B83D: FLdPr Me
  loc_B7B840: MemStFPR8 global_88
  loc_B7B843: FLdPr Me
  loc_B7B846: VCallAd Control_ID_ctacteFlex
  loc_B7B849: FStAdFunc var_88
  loc_B7B84C: FLdPr var_88
  loc_B7B84F: LateIdLdVar var_98 DispID_4 0
  loc_B7B856: CI4Var
  loc_B7B858: LitI4 1
  loc_B7B85D: GtI4
  loc_B7B85E: FFree1Ad var_88
  loc_B7B861: FFree1Var var_98 = ""
  loc_B7B864: BranchF loc_B7BC34
  loc_B7B867: LitI2_Byte 1
  loc_B7B869: FLdPr Me
  loc_B7B86C: MemLdRfVar from_stack_1.global_68
  loc_B7B86F: FLdPr Me
  loc_B7B872: VCallAd Control_ID_ctacteFlex
  loc_B7B875: FStAdFunc var_88
  loc_B7B878: FLdPr var_88
  loc_B7B87B: LateIdLdVar var_98 DispID_4 0
  loc_B7B882: CI4Var
  loc_B7B884: LitI4 1
  loc_B7B889: SubI4
  loc_B7B88A: CI2I4
  loc_B7B88B: FFree1Ad var_88
  loc_B7B88E: FFree1Var var_98 = ""
  loc_B7B891: ForI2 var_9C
  loc_B7B897: FLdPr Me
  loc_B7B89A: MemLdI2 global_68
  loc_B7B89D: CI4UI1
  loc_B7B89E: CVarI4
  loc_B7B8A2: PopAdLdVar
  loc_B7B8A3: LitVarI4
  loc_B7B8AB: PopAdLdVar
  loc_B7B8AC: FLdPr Me
  loc_B7B8AF: VCallAd Control_ID_ctacteFlex
  loc_B7B8B2: FStAdFunc var_88
  loc_B7B8B5: FLdPr var_88
  loc_B7B8B8: LateIdCallLdVar
  loc_B7B8C2: CStrVarTmp
  loc_B7B8C3: FStStrNoPop var_E0
  loc_B7B8C6: CI4Str
  loc_B7B8C7: LitI4 0
  loc_B7B8CC: EqI4
  loc_B7B8CD: FFree1Str var_E0
  loc_B7B8D0: FFree1Ad var_88
  loc_B7B8D3: FFree1Var var_98 = ""
  loc_B7B8D6: BranchF loc_B7BC29
  loc_B7B8D9: FLdPr Me
  loc_B7B8DC: MemLdI2 global_68
  loc_B7B8DF: CI4UI1
  loc_B7B8E0: CVarI4
  loc_B7B8E4: PopAdLdVar
  loc_B7B8E5: FLdPr Me
  loc_B7B8E8: VCallAd Control_ID_ctacteFlex
  loc_B7B8EB: FStAdFunc var_88
  loc_B7B8EE: FLdPr var_88
  loc_B7B8F1: LateIdSt
  loc_B7B8F6: FFree1Ad var_88
  loc_B7B8F9: LitI2_Byte 0
  loc_B7B8FB: FLdPr Me
  loc_B7B8FE: MemLdRfVar from_stack_1.global_70
  loc_B7B901: FLdPr Me
  loc_B7B904: VCallAd Control_ID_ctacteFlex
  loc_B7B907: FStAdFunc var_88
  loc_B7B90A: FLdPr var_88
  loc_B7B90D: LateIdLdVar var_98 DispID_5 0
  loc_B7B914: CI4Var
  loc_B7B916: LitI4 1
  loc_B7B91B: SubI4
  loc_B7B91C: CI2I4
  loc_B7B91D: FFree1Ad var_88
  loc_B7B920: FFree1Var var_98 = ""
  loc_B7B923: ForI2 var_E4
  loc_B7B929: FLdPr Me
  loc_B7B92C: MemLdI2 global_70
  loc_B7B92F: CI4UI1
  loc_B7B930: CVarI4
  loc_B7B934: PopAdLdVar
  loc_B7B935: FLdPr Me
  loc_B7B938: VCallAd Control_ID_ctacteFlex
  loc_B7B93B: FStAdFunc var_88
  loc_B7B93E: FLdPr var_88
  loc_B7B941: LateIdSt
  loc_B7B946: FFree1Ad var_88
  loc_B7B949: FLdRfVar var_E6
  loc_B7B94C: FLdPr Me
  loc_B7B94F: VCallAd Control_ID_SeleTodoChk
  loc_B7B952: FStAdFunc var_88
  loc_B7B955: FLdPr var_88
  loc_B7B958:  = Me.Value
  loc_B7B95D: FLdI2 var_E6
  loc_B7B960: LitI2_Byte 0
  loc_B7B962: EqI2
  loc_B7B963: FFree1Ad var_88
  loc_B7B966: BranchF loc_B7BA03
  loc_B7B969: LitVarI4
  loc_B7B971: PopAdLdVar
  loc_B7B972: FLdPr Me
  loc_B7B975: VCallAd Control_ID_ctacteFlex
  loc_B7B978: FStAdFunc var_88
  loc_B7B97B: FLdPr var_88
  loc_B7B97E: LateIdSt
  loc_B7B983: FFree1Ad var_88
  loc_B7B986: FLdPr Me
  loc_B7B989: MemLdI2 global_70
  loc_B7B98C: LitI2_Byte 0
  loc_B7B98E: EqI2
  loc_B7B98F: BranchF loc_B7B9D9
  loc_B7B992: FLdPr Me
  loc_B7B995: VCallAd Control_ID_ctacteFlex
  loc_B7B998: FStAdFunc var_88
  loc_B7B99B: FLdPr var_88
  loc_B7B99E: LateIdLdVar var_98 DispID_10 0
  loc_B7B9A5: CI4Var
  loc_B7B9A7: CVarI4
  loc_B7B9AB: PopAdLdVar
  loc_B7B9AC: LitVarI4
  loc_B7B9B4: PopAdLdVar
  loc_B7B9B5: LitVarStr var_F8, "No"
  loc_B7B9BA: PopAdLdVar
  loc_B7B9BB: FLdPr Me
  loc_B7B9BE: VCallAd Control_ID_ctacteFlex
  loc_B7B9C1: FStAdFunc var_10C
  loc_B7B9C4: FLdPr var_10C
  loc_B7B9C7: LateIdCallSt
  loc_B7B9CF: FFreeAd var_88 = ""
  loc_B7B9D6: FFree1Var var_98 = ""
  loc_B7B9D9: FLdPr Me
  loc_B7B9DC: MemLdI2 global_70
  loc_B7B9DF: LitI2_Byte &HD
  loc_B7B9E1: EqI2
  loc_B7B9E2: BranchF loc_B7BA00
  loc_B7B9E5: LitI2_Byte 0
  loc_B7B9E7: CR8I2
  loc_B7B9E8: FLdPr Me
  loc_B7B9EB: MemStFPR8 global_72
  loc_B7B9EE: LitI2_Byte 0
  loc_B7B9F0: CR8I2
  loc_B7B9F1: FLdPr Me
  loc_B7B9F4: MemStFPR8 global_80
  loc_B7B9F7: LitI2_Byte 0
  loc_B7B9F9: CR8I2
  loc_B7B9FA: FLdPr Me
  loc_B7B9FD: MemStFPR8 global_88
  loc_B7BA00: Branch loc_B7BC1E
  loc_B7BA03: LitVarI4
  loc_B7BA0B: PopAdLdVar
  loc_B7BA0C: FLdPr Me
  loc_B7BA0F: VCallAd Control_ID_ctacteFlex
  loc_B7BA12: FStAdFunc var_88
  loc_B7BA15: FLdPr var_88
  loc_B7BA18: LateIdSt
  loc_B7BA1D: FFree1Ad var_88
  loc_B7BA20: FLdPr Me
  loc_B7BA23: MemLdI2 global_70
  loc_B7BA26: LitI2_Byte 0
  loc_B7BA28: EqI2
  loc_B7BA29: BranchF loc_B7BA73
  loc_B7BA2C: FLdPr Me
  loc_B7BA2F: VCallAd Control_ID_ctacteFlex
  loc_B7BA32: FStAdFunc var_88
  loc_B7BA35: FLdPr var_88
  loc_B7BA38: LateIdLdVar var_98 DispID_10 0
  loc_B7BA3F: CI4Var
  loc_B7BA41: CVarI4
  loc_B7BA45: PopAdLdVar
  loc_B7BA46: LitVarI4
  loc_B7BA4E: PopAdLdVar
  loc_B7BA4F: LitVarStr var_F8, "Si"
  loc_B7BA54: PopAdLdVar
  loc_B7BA55: FLdPr Me
  loc_B7BA58: VCallAd Control_ID_ctacteFlex
  loc_B7BA5B: FStAdFunc var_10C
  loc_B7BA5E: FLdPr var_10C
  loc_B7BA61: LateIdCallSt
  loc_B7BA69: FFreeAd var_88 = ""
  loc_B7BA70: FFree1Var var_98 = ""
  loc_B7BA73: FLdPr Me
  loc_B7BA76: MemLdI2 global_70
  loc_B7BA79: LitI2_Byte &HB
  loc_B7BA7B: EqI2
  loc_B7BA7C: BranchF loc_B7BAE4
  loc_B7BA7F: FLdPr Me
  loc_B7BA82: VCallAd Control_ID_ctacteFlex
  loc_B7BA85: FStAdFunc var_88
  loc_B7BA88: FLdPr var_88
  loc_B7BA8B: LateIdLdVar var_98 DispID_10 0
  loc_B7BA92: CI4Var
  loc_B7BA94: CVarI4
  loc_B7BA98: PopAdLdVar
  loc_B7BA99: FLdPr Me
  loc_B7BA9C: MemLdI2 global_70
  loc_B7BA9F: CI4UI1
  loc_B7BAA0: CVarI4
  loc_B7BAA4: PopAdLdVar
  loc_B7BAA5: FLdPr Me
  loc_B7BAA8: VCallAd Control_ID_ctacteFlex
  loc_B7BAAB: FStAdFunc var_10C
  loc_B7BAAE: FLdPr var_10C
  loc_B7BAB1: LateIdCallLdVar
  loc_B7BABB: PopAd
  loc_B7BABD: FLdPr Me
  loc_B7BAC0: MemLdFPR8 global_72
  loc_B7BAC3: FLdRfVar var_11C
  loc_B7BAC6: CStrVarTmp
  loc_B7BAC7: FStStrNoPop var_E0
  loc_B7BACA: CR8Str
  loc_B7BACC: AddR8
  loc_B7BACD: FLdPr Me
  loc_B7BAD0: MemStFPR8 global_72
  loc_B7BAD3: FFree1Str var_E0
  loc_B7BAD6: FFreeAd var_88 = ""
  loc_B7BADD: FFreeVar var_98 = ""
  loc_B7BAE4: FLdPr Me
  loc_B7BAE7: MemLdI2 global_70
  loc_B7BAEA: LitI2_Byte &HC
  loc_B7BAEC: EqI2
  loc_B7BAED: BranchF loc_B7BBAD
  loc_B7BAF0: FLdPr Me
  loc_B7BAF3: VCallAd Control_ID_ctacteFlex
  loc_B7BAF6: FStAdFunc var_88
  loc_B7BAF9: FLdPr var_88
  loc_B7BAFC: LateIdLdVar var_98 DispID_10 0
  loc_B7BB03: CI4Var
  loc_B7BB05: CVarI4
  loc_B7BB09: PopAdLdVar
  loc_B7BB0A: FLdPr Me
  loc_B7BB0D: MemLdI2 global_70
  loc_B7BB10: CI4UI1
  loc_B7BB11: CVarI4
  loc_B7BB15: PopAdLdVar
  loc_B7BB16: FLdPr Me
  loc_B7BB19: VCallAd Control_ID_ctacteFlex
  loc_B7BB1C: FStAdFunc var_10C
  loc_B7BB1F: FLdPr var_10C
  loc_B7BB22: LateIdCallLdVar
  loc_B7BB2C: CStrVarTmp
  loc_B7BB2D: CVarStr var_12C
  loc_B7BB30: ImpAdCallI2 IsNumeric()
  loc_B7BB35: FFreeAd var_88 = ""
  loc_B7BB3C: FFreeVar var_98 = "": var_11C = ""
  loc_B7BB45: BranchF loc_B7BBAD
  loc_B7BB48: FLdPr Me
  loc_B7BB4B: VCallAd Control_ID_ctacteFlex
  loc_B7BB4E: FStAdFunc var_88
  loc_B7BB51: FLdPr var_88
  loc_B7BB54: LateIdLdVar var_98 DispID_10 0
  loc_B7BB5B: CI4Var
  loc_B7BB5D: CVarI4
  loc_B7BB61: PopAdLdVar
  loc_B7BB62: FLdPr Me
  loc_B7BB65: MemLdI2 global_70
  loc_B7BB68: CI4UI1
  loc_B7BB69: CVarI4
  loc_B7BB6D: PopAdLdVar
  loc_B7BB6E: FLdPr Me
  loc_B7BB71: VCallAd Control_ID_ctacteFlex
  loc_B7BB74: FStAdFunc var_10C
  loc_B7BB77: FLdPr var_10C
  loc_B7BB7A: LateIdCallLdVar
  loc_B7BB84: PopAd
  loc_B7BB86: FLdPr Me
  loc_B7BB89: MemLdFPR8 global_80
  loc_B7BB8C: FLdRfVar var_11C
  loc_B7BB8F: CStrVarTmp
  loc_B7BB90: FStStrNoPop var_E0
  loc_B7BB93: CR8Str
  loc_B7BB95: AddR8
  loc_B7BB96: FLdPr Me
  loc_B7BB99: MemStFPR8 global_80
  loc_B7BB9C: FFree1Str var_E0
  loc_B7BB9F: FFreeAd var_88 = ""
  loc_B7BBA6: FFreeVar var_98 = ""
  loc_B7BBAD: FLdPr Me
  loc_B7BBB0: MemLdI2 global_70
  loc_B7BBB3: LitI2_Byte &HD
  loc_B7BBB5: EqI2
  loc_B7BBB6: BranchF loc_B7BC1E
  loc_B7BBB9: FLdPr Me
  loc_B7BBBC: VCallAd Control_ID_ctacteFlex
  loc_B7BBBF: FStAdFunc var_88
  loc_B7BBC2: FLdPr var_88
  loc_B7BBC5: LateIdLdVar var_98 DispID_10 0
  loc_B7BBCC: CI4Var
  loc_B7BBCE: CVarI4
  loc_B7BBD2: PopAdLdVar
  loc_B7BBD3: FLdPr Me
  loc_B7BBD6: MemLdI2 global_70
  loc_B7BBD9: CI4UI1
  loc_B7BBDA: CVarI4
  loc_B7BBDE: PopAdLdVar
  loc_B7BBDF: FLdPr Me
  loc_B7BBE2: VCallAd Control_ID_ctacteFlex
  loc_B7BBE5: FStAdFunc var_10C
  loc_B7BBE8: FLdPr var_10C
  loc_B7BBEB: LateIdCallLdVar
  loc_B7BBF5: PopAd
  loc_B7BBF7: FLdPr Me
  loc_B7BBFA: MemLdFPR8 global_88
  loc_B7BBFD: FLdRfVar var_11C
  loc_B7BC00: CStrVarTmp
  loc_B7BC01: FStStrNoPop var_E0
  loc_B7BC04: CR8Str
  loc_B7BC06: AddR8
  loc_B7BC07: FLdPr Me
  loc_B7BC0A: MemStFPR8 global_88
  loc_B7BC0D: FFree1Str var_E0
  loc_B7BC10: FFreeAd var_88 = ""
  loc_B7BC17: FFreeVar var_98 = ""
  loc_B7BC1E: FLdPr Me
  loc_B7BC21: MemLdRfVar from_stack_1.global_70
  loc_B7BC24: NextI2 var_E4, loc_B7B929
  loc_B7BC29: FLdPr Me
  loc_B7BC2C: MemLdRfVar from_stack_1.global_68
  loc_B7BC2F: NextI2 var_9C, loc_B7B897
  loc_B7BC34: LitI4 1
  loc_B7BC39: LitI4 1
  loc_B7BC3E: LitVarStr var_BC, "0.00"
  loc_B7BC43: FStVarCopyObj var_98
  loc_B7BC46: FLdRfVar var_98
  loc_B7BC49: FLdPr Me
  loc_B7BC4C: MemLdRfVar from_stack_1.global_72
  loc_B7BC4F: CVarRef
  loc_B7BC54: FLdRfVar var_11C
  loc_B7BC57: ImpAdCallFPR4  = Format(, )
  loc_B7BC5C: FLdRfVar var_11C
  loc_B7BC5F: CStrVarVal var_E0
  loc_B7BC63: FLdPr Me
  loc_B7BC66: VCallAd Control_ID_txtDereSele
  loc_B7BC69: FStAdFunc var_88
  loc_B7BC6C: FLdPr var_88
  loc_B7BC6F: Me.Text = from_stack_1
  loc_B7BC74: FFree1Str var_E0
  loc_B7BC77: FFree1Ad var_88
  loc_B7BC7A: FFreeVar var_98 = ""
  loc_B7BC81: LitI4 1
  loc_B7BC86: LitI4 1
  loc_B7BC8B: LitVarStr var_BC, "0.00"
  loc_B7BC90: FStVarCopyObj var_98
  loc_B7BC93: FLdRfVar var_98
  loc_B7BC96: FLdPr Me
  loc_B7BC99: MemLdRfVar from_stack_1.global_80
  loc_B7BC9C: CVarRef
  loc_B7BCA1: FLdRfVar var_11C
  loc_B7BCA4: ImpAdCallFPR4  = Format(, )
  loc_B7BCA9: FLdRfVar var_11C
  loc_B7BCAC: CStrVarVal var_E0
  loc_B7BCB0: FLdPr Me
  loc_B7BCB3: VCallAd Control_ID_txtRecaSele
  loc_B7BCB6: FStAdFunc var_88
  loc_B7BCB9: FLdPr var_88
  loc_B7BCBC: Me.Text = from_stack_1
  loc_B7BCC1: FFree1Str var_E0
  loc_B7BCC4: FFree1Ad var_88
  loc_B7BCC7: FFreeVar var_98 = ""
  loc_B7BCCE: LitI4 1
  loc_B7BCD3: LitI4 1
  loc_B7BCD8: LitVarStr var_BC, "0.00"
  loc_B7BCDD: FStVarCopyObj var_98
  loc_B7BCE0: FLdRfVar var_98
  loc_B7BCE3: FLdPr Me
  loc_B7BCE6: MemLdRfVar from_stack_1.global_88
  loc_B7BCE9: CVarRef
  loc_B7BCEE: FLdRfVar var_11C
  loc_B7BCF1: ImpAdCallFPR4  = Format(, )
  loc_B7BCF6: FLdRfVar var_11C
  loc_B7BCF9: CStrVarVal var_E0
  loc_B7BCFD: FLdPr Me
  loc_B7BD00: VCallAd Control_ID_txtTotaSele
  loc_B7BD03: FStAdFunc var_88
  loc_B7BD06: FLdPr var_88
  loc_B7BD09: Me.Text = from_stack_1
  loc_B7BD0E: FFree1Str var_E0
  loc_B7BD11: FFree1Ad var_88
  loc_B7BD14: FFreeVar var_98 = ""
  loc_B7BD1B: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C64B8
  'Data Table: 504878
  loc_9C64A4: FLdPr Me
  loc_9C64A7: VCallAd Control_ID_FechVencMsk
  loc_9C64AA: CVarAd
  loc_9C64AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C64B3: FFree1Var var_94 = ""
  loc_9C64B6: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABF5DC
  'Data Table: 504878
  loc_ABF4E4: FLdPr Me
  loc_ABF4E7: VCallAd Control_ID_FechVencMsk
  loc_ABF4EA: FStAdFunc var_88
  loc_ABF4ED: FLdPr var_88
  loc_ABF4F0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABF4F7: CBoolVar
  loc_ABF4F9: LitI2_Byte &HFF
  loc_ABF4FB: EqI2
  loc_ABF4FC: FFree1Ad var_88
  loc_ABF4FF: FFree1Var var_98 = ""
  loc_ABF502: BranchF loc_ABF5DA
  loc_ABF505: LitVarStr var_A8, vbNullString
  loc_ABF50A: PopAdLdVar
  loc_ABF50B: FLdPr Me
  loc_ABF50E: VCallAd Control_ID_FechVencMsk
  loc_ABF511: FStAdFunc var_88
  loc_ABF514: FLdPr var_88
  loc_ABF517: LateIdSt
  loc_ABF51C: FFree1Ad var_88
  loc_ABF51F: FLdPr Me
  loc_ABF522: VCallAd Control_ID_FechVencMsk
  loc_ABF525: FStAdFunc var_88
  loc_ABF528: FLdPr var_88
  loc_ABF52B: LateIdLdVar var_98 DispID_22 0
  loc_ABF532: CStrVarTmp
  loc_ABF533: FStStrNoPop var_BC
  loc_ABF536: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABF53B: FStStrNoPop var_C0
  loc_ABF53E: FLdPr Me
  loc_ABF541: MemStStrCopy
  loc_ABF545: FFreeStr var_BC = ""
  loc_ABF54C: FFree1Ad var_88
  loc_ABF54F: FFree1Var var_98 = ""
  loc_ABF552: LitVarStr var_A8, "##/##/####"
  loc_ABF557: PopAdLdVar
  loc_ABF558: FLdPr Me
  loc_ABF55B: VCallAd Control_ID_FechVencMsk
  loc_ABF55E: FStAdFunc var_88
  loc_ABF561: FLdPr var_88
  loc_ABF564: LateIdSt
  loc_ABF569: FFree1Ad var_88
  loc_ABF56C: LitVarI2 var_A8, 10
  loc_ABF571: PopAdLdVar
  loc_ABF572: FLdPr Me
  loc_ABF575: VCallAd Control_ID_FechVencMsk
  loc_ABF578: FStAdFunc var_88
  loc_ABF57B: FLdPr var_88
  loc_ABF57E: LateIdSt
  loc_ABF583: FFree1Ad var_88
  loc_ABF586: FLdPr Me
  loc_ABF589: MemLdStr global_100
  loc_ABF58C: LitStr vbNullString
  loc_ABF58F: NeStr
  loc_ABF591: BranchF loc_ABF5DA
  loc_ABF594: FLdPr Me
  loc_ABF597: MemLdStr global_100
  loc_ABF59A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF59F: LitI2_Byte 0
  loc_ABF5A1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABF5A6: CStrDate
  loc_ABF5A8: CVarStr var_98
  loc_ABF5AB: PopAdLdVar
  loc_ABF5AC: FLdPr Me
  loc_ABF5AF: VCallAd Control_ID_FechVencMsk
  loc_ABF5B2: FStAdFunc var_88
  loc_ABF5B5: FLdPr var_88
  loc_ABF5B8: LateIdSt
  loc_ABF5BD: FFree1Ad var_88
  loc_ABF5C0: FFree1Var var_98 = ""
  loc_ABF5C3: FLdPr Me
  loc_ABF5C6: VCallAd Control_ID_FechVencMsk
  loc_ABF5C9: CVarAd
  loc_ABF5CD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF5D2: FFree1Var var_98 = ""
  loc_ABF5D5: LitI2_Byte &HFF
  loc_ABF5D7: IStI2 arg_C
  loc_ABF5DA: ExitProcHresult
End Function

Private Sub FeveCtctMsk_UnknownEvent_0 '9C63E0
  'Data Table: 504878
  loc_9C63CC: FLdPr Me
  loc_9C63CF: VCallAd Control_ID_FeveCtctMsk
  loc_9C63D2: CVarAd
  loc_9C63D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C63DB: FFree1Var var_94 = ""
  loc_9C63DE: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'ABEE8C
  'Data Table: 504878
  loc_ABED94: FLdPr Me
  loc_ABED97: VCallAd Control_ID_FeveCtctMsk
  loc_ABED9A: FStAdFunc var_88
  loc_ABED9D: FLdPr var_88
  loc_ABEDA0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABEDA7: CBoolVar
  loc_ABEDA9: LitI2_Byte &HFF
  loc_ABEDAB: EqI2
  loc_ABEDAC: FFree1Ad var_88
  loc_ABEDAF: FFree1Var var_98 = ""
  loc_ABEDB2: BranchF loc_ABEE8A
  loc_ABEDB5: LitVarStr var_A8, vbNullString
  loc_ABEDBA: PopAdLdVar
  loc_ABEDBB: FLdPr Me
  loc_ABEDBE: VCallAd Control_ID_FeveCtctMsk
  loc_ABEDC1: FStAdFunc var_88
  loc_ABEDC4: FLdPr var_88
  loc_ABEDC7: LateIdSt
  loc_ABEDCC: FFree1Ad var_88
  loc_ABEDCF: FLdPr Me
  loc_ABEDD2: VCallAd Control_ID_FeveCtctMsk
  loc_ABEDD5: FStAdFunc var_88
  loc_ABEDD8: FLdPr var_88
  loc_ABEDDB: LateIdLdVar var_98 DispID_22 0
  loc_ABEDE2: CStrVarTmp
  loc_ABEDE3: FStStrNoPop var_BC
  loc_ABEDE6: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABEDEB: FStStrNoPop var_C0
  loc_ABEDEE: FLdPr Me
  loc_ABEDF1: MemStStrCopy
  loc_ABEDF5: FFreeStr var_BC = ""
  loc_ABEDFC: FFree1Ad var_88
  loc_ABEDFF: FFree1Var var_98 = ""
  loc_ABEE02: LitVarStr var_A8, "##/##/####"
  loc_ABEE07: PopAdLdVar
  loc_ABEE08: FLdPr Me
  loc_ABEE0B: VCallAd Control_ID_FeveCtctMsk
  loc_ABEE0E: FStAdFunc var_88
  loc_ABEE11: FLdPr var_88
  loc_ABEE14: LateIdSt
  loc_ABEE19: FFree1Ad var_88
  loc_ABEE1C: LitVarI2 var_A8, 10
  loc_ABEE21: PopAdLdVar
  loc_ABEE22: FLdPr Me
  loc_ABEE25: VCallAd Control_ID_FeveCtctMsk
  loc_ABEE28: FStAdFunc var_88
  loc_ABEE2B: FLdPr var_88
  loc_ABEE2E: LateIdSt
  loc_ABEE33: FFree1Ad var_88
  loc_ABEE36: FLdPr Me
  loc_ABEE39: MemLdStr global_100
  loc_ABEE3C: LitStr vbNullString
  loc_ABEE3F: NeStr
  loc_ABEE41: BranchF loc_ABEE8A
  loc_ABEE44: FLdPr Me
  loc_ABEE47: MemLdStr global_100
  loc_ABEE4A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABEE4F: LitI2_Byte 0
  loc_ABEE51: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABEE56: CStrDate
  loc_ABEE58: CVarStr var_98
  loc_ABEE5B: PopAdLdVar
  loc_ABEE5C: FLdPr Me
  loc_ABEE5F: VCallAd Control_ID_FeveCtctMsk
  loc_ABEE62: FStAdFunc var_88
  loc_ABEE65: FLdPr var_88
  loc_ABEE68: LateIdSt
  loc_ABEE6D: FFree1Ad var_88
  loc_ABEE70: FFree1Var var_98 = ""
  loc_ABEE73: FLdPr Me
  loc_ABEE76: VCallAd Control_ID_FeveCtctMsk
  loc_ABEE79: CVarAd
  loc_ABEE7D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABEE82: FFree1Var var_98 = ""
  loc_ABEE85: LitI2_Byte &HFF
  loc_ABEE87: IStI2 arg_C
  loc_ABEE8A: ExitProcHresult
End Function

Private Sub DetaCtctTxt_Validate(Cancel As Boolean) 'A80D78
  'Data Table: 504878
  loc_A80CF4: FLdRfVar var_8A
  loc_A80CF7: FLdPr Me
  loc_A80CFA: VCallAd Control_ID_DetaCtctTxt
  loc_A80CFD: FStAdFunc var_88
  loc_A80D00: FLdPr var_88
  loc_A80D03:  = Me.Enabled
  loc_A80D08: FLdI2 var_8A
  loc_A80D0B: FFree1Ad var_88
  loc_A80D0E: BranchF loc_A80D74
  loc_A80D11: FLdRfVar var_90
  loc_A80D14: FLdPr Me
  loc_A80D17: VCallAd Control_ID_DetaCtctTxt
  loc_A80D1A: FStAdFunc var_88
  loc_A80D1D: FLdPr var_88
  loc_A80D20:  = Me.Text
  loc_A80D25: ILdRf var_90
  loc_A80D28: LitStr "Detalle del Crédito Manual"
  loc_A80D2B: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A80D30: FStStrNoPop var_94
  loc_A80D33: FLdPr Me
  loc_A80D36: MemStStrCopy
  loc_A80D3A: FFreeStr var_90 = ""
  loc_A80D41: FFree1Ad var_88
  loc_A80D44: FLdPr Me
  loc_A80D47: MemLdStr global_100
  loc_A80D4A: LitStr vbNullString
  loc_A80D4D: NeStr
  loc_A80D4F: BranchF loc_A80D74
  loc_A80D52: FLdPr Me
  loc_A80D55: MemLdStr global_100
  loc_A80D58: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A80D5D: FLdPr Me
  loc_A80D60: VCallAd Control_ID_DetaCtctTxt
  loc_A80D63: CVarAd
  loc_A80D67: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A80D6C: FFree1Var var_A4 = ""
  loc_A80D6F: LitI2_Byte &HFF
  loc_A80D71: IStI2 Cancel
  loc_A80D74: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_GotFocus() '9C5D20
  'Data Table: 504878
  loc_9C5D0C: FLdPr Me
  loc_9C5D0F: VCallAd Control_ID_ImpoCtctTxt
  loc_9C5D12: CVarAd
  loc_9C5D16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5D1B: FFree1Var var_94 = ""
  loc_9C5D1E: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A07C60
  'Data Table: 504878
  loc_A07C2C: LitStr "1234567890,."
  loc_A07C2F: FStStrCopy var_88
  loc_A07C32: FLdRfVar var_88
  loc_A07C35: ILdRf KeyAscii
  loc_A07C38: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07C3D: IStI2 KeyAscii
  loc_A07C40: FFree1Str var_88
  loc_A07C43: ILdI2 KeyAscii
  loc_A07C46: LitStr "."
  loc_A07C49: ImpAdCallI2 Asc()
  loc_A07C4E: EqI2
  loc_A07C4F: BranchF loc_A07C5D
  loc_A07C52: LitStr ","
  loc_A07C55: ImpAdCallI2 Asc()
  loc_A07C5A: IStI2 KeyAscii
  loc_A07C5D: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'B3CBB4
  'Data Table: 504878
  loc_B3C8AC: FLdRfVar var_8A
  loc_B3C8AF: FLdPr Me
  loc_B3C8B2: VCallAd Control_ID_CredParcialChk
  loc_B3C8B5: FStAdFunc var_88
  loc_B3C8B8: FLdPr var_88
  loc_B3C8BB:  = Me.Value
  loc_B3C8C0: FLdI2 var_8A
  loc_B3C8C3: LitI2_Byte 1
  loc_B3C8C5: EqI2
  loc_B3C8C6: FFree1Ad var_88
  loc_B3C8C9: BranchF loc_B3C92F
  loc_B3C8CC: FLdRfVar var_90
  loc_B3C8CF: FLdPr Me
  loc_B3C8D2: VCallAd Control_ID_ImpoCtctTxt
  loc_B3C8D5: FStAdFunc var_88
  loc_B3C8D8: FLdPr var_88
  loc_B3C8DB:  = Me.Text
  loc_B3C8E0: LitI2_Byte 0
  loc_B3C8E2: LitI2_Byte 0
  loc_B3C8E4: ILdRf var_90
  loc_B3C8E7: LitStr " el importe"
  loc_B3C8EA: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_B3C8EF: FStStrNoPop var_94
  loc_B3C8F2: FLdPr Me
  loc_B3C8F5: MemStStrCopy
  loc_B3C8F9: FFreeStr var_90 = ""
  loc_B3C900: FFree1Ad var_88
  loc_B3C903: FLdPr Me
  loc_B3C906: MemLdStr global_100
  loc_B3C909: LitStr vbNullString
  loc_B3C90C: NeStr
  loc_B3C90E: BranchF loc_B3C92F
  loc_B3C911: FLdPr Me
  loc_B3C914: MemLdStr global_100
  loc_B3C917: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3C91C: FLdPr Me
  loc_B3C91F: VCallAd Control_ID_ImpoCtctTxt
  loc_B3C922: CVarAd
  loc_B3C926: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3C92B: FFree1Var var_A4 = ""
  loc_B3C92E: ExitProcHresult
  loc_B3C92F: LitI2_Byte 1
  loc_B3C931: FLdPr Me
  loc_B3C934: MemLdRfVar from_stack_1.global_68
  loc_B3C937: FLdPr Me
  loc_B3C93A: VCallAd Control_ID_ctacteFlex
  loc_B3C93D: FStAdFunc var_88
  loc_B3C940: FLdPr var_88
  loc_B3C943: LateIdLdVar var_A4 DispID_4 0
  loc_B3C94A: CI4Var
  loc_B3C94C: LitI4 1
  loc_B3C951: SubI4
  loc_B3C952: CI2I4
  loc_B3C953: FFree1Ad var_88
  loc_B3C956: FFree1Var var_A4 = ""
  loc_B3C959: ForI2 var_A8
  loc_B3C95F: FLdPr Me
  loc_B3C962: MemLdI2 global_68
  loc_B3C965: CI4UI1
  loc_B3C966: CVarI4
  loc_B3C96A: PopAdLdVar
  loc_B3C96B: LitVarI4
  loc_B3C973: PopAdLdVar
  loc_B3C974: FLdPr Me
  loc_B3C977: VCallAd Control_ID_ctacteFlex
  loc_B3C97A: FStAdFunc var_88
  loc_B3C97D: FLdPr var_88
  loc_B3C980: LateIdCallLdVar
  loc_B3C98A: CStrVarTmp
  loc_B3C98B: FStStrNoPop var_90
  loc_B3C98E: LitStr "SS"
  loc_B3C991: EqStr
  loc_B3C993: FLdPr Me
  loc_B3C996: MemLdI2 global_68
  loc_B3C999: CI4UI1
  loc_B3C99A: CVarI4
  loc_B3C99E: PopAdLdVar
  loc_B3C99F: LitVarI4
  loc_B3C9A7: PopAdLdVar
  loc_B3C9A8: FLdPr Me
  loc_B3C9AB: VCallAd Control_ID_ctacteFlex
  loc_B3C9AE: FStAdFunc var_12C
  loc_B3C9B1: FLdPr var_12C
  loc_B3C9B4: LateIdCallLdVar
  loc_B3C9BE: CStrVarTmp
  loc_B3C9BF: FStStrNoPop var_94
  loc_B3C9C2: LitStr "Si"
  loc_B3C9C5: EqStr
  loc_B3C9C7: OrI4
  loc_B3C9C8: FFreeStr var_90 = ""
  loc_B3C9CF: FFreeAd var_88 = ""
  loc_B3C9D6: FFreeVar var_A4 = ""
  loc_B3C9DD: BranchF loc_B3CB3D
  loc_B3C9E0: FLdPr Me
  loc_B3C9E3: MemLdI2 global_68
  loc_B3C9E6: CI4UI1
  loc_B3C9E7: CVarI4
  loc_B3C9EB: PopAdLdVar
  loc_B3C9EC: LitVarI4
  loc_B3C9F4: PopAdLdVar
  loc_B3C9F5: FLdPr Me
  loc_B3C9F8: VCallAd Control_ID_ctacteFlex
  loc_B3C9FB: FStAdFunc var_12C
  loc_B3C9FE: FLdPr var_12C
  loc_B3CA01: LateIdCallLdVar
  loc_B3CA0B: PopAd
  loc_B3CA0D: FLdRfVar var_90
  loc_B3CA10: FLdPr Me
  loc_B3CA13: VCallAd Control_ID_ImpoCtctTxt
  loc_B3CA16: FStAdFunc var_88
  loc_B3CA19: FLdPr var_88
  loc_B3CA1C:  = Me.Text
  loc_B3CA21: ILdRf var_90
  loc_B3CA24: CR8Str
  loc_B3CA26: FLdRfVar var_A4
  loc_B3CA29: CStrVarTmp
  loc_B3CA2A: FStStrNoPop var_94
  loc_B3CA2D: CR8Str
  loc_B3CA2F: GtR4
  loc_B3CA30: FFreeStr var_90 = ""
  loc_B3CA37: FFreeAd var_88 = ""
  loc_B3CA3E: FFree1Var var_A4 = ""
  loc_B3CA41: BranchF loc_B3CB3D
  loc_B3CA44: FLdPr Me
  loc_B3CA47: MemLdI2 global_68
  loc_B3CA4A: CI4UI1
  loc_B3CA4B: CVarI4
  loc_B3CA4F: PopAdLdVar
  loc_B3CA50: LitVarI4
  loc_B3CA58: PopAdLdVar
  loc_B3CA59: FLdPr Me
  loc_B3CA5C: VCallAd Control_ID_ctacteFlex
  loc_B3CA5F: FStAdFunc var_12C
  loc_B3CA62: FLdPr var_12C
  loc_B3CA65: LateIdCallLdVar
  loc_B3CA6F: PopAd
  loc_B3CA71: LitStr "El importe del credito a realizar no puede ser mayor al importe seleccionado. Verifique, Periodo:  "
  loc_B3CA74: FLdPr Me
  loc_B3CA77: MemLdI2 global_68
  loc_B3CA7A: CI4UI1
  loc_B3CA7B: CVarI4
  loc_B3CA7F: PopAdLdVar
  loc_B3CA80: LitVarI4
  loc_B3CA88: PopAdLdVar
  loc_B3CA89: FLdPr Me
  loc_B3CA8C: VCallAd Control_ID_ctacteFlex
  loc_B3CA8F: FStAdFunc var_88
  loc_B3CA92: FLdPr var_88
  loc_B3CA95: LateIdCallLdVar
  loc_B3CA9F: CStrVarTmp
  loc_B3CAA0: FStStrNoPop var_90
  loc_B3CAA3: ConcatStr
  loc_B3CAA4: FStStrNoPop var_94
  loc_B3CAA7: LitStr " Importe: "
  loc_B3CAAA: ConcatStr
  loc_B3CAAB: CVarStr var_1A0
  loc_B3CAAE: LitI4 1
  loc_B3CAB3: LitI4 1
  loc_B3CAB8: LitVarStr var_170, "0.00"
  loc_B3CABD: FStVarCopyObj var_180
  loc_B3CAC0: FLdRfVar var_180
  loc_B3CAC3: FLdRfVar var_13C
  loc_B3CAC6: CStrVarTmp
  loc_B3CAC7: FStStrNoPop var_140
  loc_B3CACA: CR8Str
  loc_B3CACC: CVarR8
  loc_B3CAD0: FLdRfVar var_190
  loc_B3CAD3: ImpAdCallFPR4  = Format(, )
  loc_B3CAD8: FLdRfVar var_190
  loc_B3CADB: ConcatVar var_1B0
  loc_B3CADF: CStrVarTmp
  loc_B3CAE0: FStStrNoPop var_1B4
  loc_B3CAE3: FLdPr Me
  loc_B3CAE6: MemStStrCopy
  loc_B3CAEA: FFreeStr var_90 = "": var_94 = "": var_140 = ""
  loc_B3CAF5: FFreeAd var_88 = ""
  loc_B3CAFC: FFreeVar var_A4 = "": var_13C = "": var_160 = "": var_180 = "": var_1A0 = "": var_190 = ""
  loc_B3CB0D: FLdPr Me
  loc_B3CB10: MemLdStr global_100
  loc_B3CB13: LitStr vbNullString
  loc_B3CB16: NeStr
  loc_B3CB18: BranchF loc_B3CB3D
  loc_B3CB1B: FLdPr Me
  loc_B3CB1E: MemLdStr global_100
  loc_B3CB21: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3CB26: FLdPr Me
  loc_B3CB29: VCallAd Control_ID_ImpoCtctTxt
  loc_B3CB2C: CVarAd
  loc_B3CB30: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3CB35: FFree1Var var_A4 = ""
  loc_B3CB38: LitI2_Byte &HFF
  loc_B3CB3A: IStI2 Cancel
  loc_B3CB3D: FLdPr Me
  loc_B3CB40: MemLdRfVar from_stack_1.global_68
  loc_B3CB43: NextI2 var_A8, loc_B3C95F
  loc_B3CB48: FLdRfVar var_90
  loc_B3CB4B: FLdPr Me
  loc_B3CB4E: VCallAd Control_ID_ImpoCtctTxt
  loc_B3CB51: FStAdFunc var_88
  loc_B3CB54: FLdPr var_88
  loc_B3CB57:  = Me.Text
  loc_B3CB5C: LitI4 1
  loc_B3CB61: LitI4 1
  loc_B3CB66: LitVarStr var_C8, "0.00"
  loc_B3CB6B: FStVarCopyObj var_13C
  loc_B3CB6E: FLdRfVar var_13C
  loc_B3CB71: ILdRf var_90
  loc_B3CB74: CR8Str
  loc_B3CB76: CVarR8
  loc_B3CB7A: FLdRfVar var_160
  loc_B3CB7D: ImpAdCallFPR4  = Format(, )
  loc_B3CB82: FLdRfVar var_160
  loc_B3CB85: CStrVarVal var_94
  loc_B3CB89: FLdPr Me
  loc_B3CB8C: VCallAd Control_ID_ImpoCtctTxt
  loc_B3CB8F: FStAdFunc var_12C
  loc_B3CB92: FLdPr var_12C
  loc_B3CB95: Me.Text = from_stack_1
  loc_B3CB9A: FFreeStr var_90 = ""
  loc_B3CBA1: FFreeAd var_88 = ""
  loc_B3CBA8: FFreeVar var_A4 = "": var_13C = ""
  loc_B3CBB1: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D3720
  'Data Table: 504878
  loc_9D3708: ILdRf Me
  loc_9D370B: FStAdNoPop
  loc_9D370F: ImpAdLdRf MemVar_D9C5D8
  loc_9D3712: NewIfNullPr Global
  loc_9D3715: Global.Unload from_stack_1
  loc_9D371A: FFree1Ad var_88
  loc_9D371D: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B35D58
  'Data Table: 504878
  loc_B35A7C: FLdRfVar var_8A
  loc_B35A7F: FLdPr Me
  loc_B35A82: VCallAd Control_ID_OficinaCbo
  loc_B35A85: FStAdFunc var_88
  loc_B35A88: FLdPr var_88
  loc_B35A8B:  = Me.ListIndex
  loc_B35A90: FLdI2 var_8A
  loc_B35A93: FStI2 var_8C
  loc_B35A96: FFree1Ad var_88
  loc_B35A99: FLdI2 var_8C
  loc_B35A9C: LitI2_Byte 0
  loc_B35A9E: EqI2
  loc_B35A9F: BranchF loc_B35AAD
  loc_B35AA2: LitI2_Byte 1
  loc_B35AA4: CUI1I2
  loc_B35AA6: ImpAdStUI1 MemVar_D93038
  loc_B35AAA: Branch loc_B35B22
  loc_B35AAD: FLdI2 var_8C
  loc_B35AB0: LitI2_Byte 1
  loc_B35AB2: EqI2
  loc_B35AB3: BranchF loc_B35AC1
  loc_B35AB6: LitI2_Byte 2
  loc_B35AB8: CUI1I2
  loc_B35ABA: ImpAdStUI1 MemVar_D93038
  loc_B35ABE: Branch loc_B35B22
  loc_B35AC1: FLdI2 var_8C
  loc_B35AC4: LitI2_Byte 2
  loc_B35AC6: EqI2
  loc_B35AC7: BranchF loc_B35AD5
  loc_B35ACA: LitI2_Byte 3
  loc_B35ACC: CUI1I2
  loc_B35ACE: ImpAdStUI1 MemVar_D93038
  loc_B35AD2: Branch loc_B35B22
  loc_B35AD5: FLdI2 var_8C
  loc_B35AD8: LitI2_Byte 3
  loc_B35ADA: EqI2
  loc_B35ADB: BranchF loc_B35AE9
  loc_B35ADE: LitI2_Byte 4
  loc_B35AE0: CUI1I2
  loc_B35AE2: ImpAdStUI1 MemVar_D93038
  loc_B35AE6: Branch loc_B35B22
  loc_B35AE9: FLdI2 var_8C
  loc_B35AEC: LitI2_Byte 4
  loc_B35AEE: EqI2
  loc_B35AEF: BranchF loc_B35AFD
  loc_B35AF2: LitI2_Byte 5
  loc_B35AF4: CUI1I2
  loc_B35AF6: ImpAdStUI1 MemVar_D93038
  loc_B35AFA: Branch loc_B35B22
  loc_B35AFD: FLdI2 var_8C
  loc_B35B00: LitI2_Byte 5
  loc_B35B02: EqI2
  loc_B35B03: BranchF loc_B35B11
  loc_B35B06: LitI2_Byte 6
  loc_B35B08: CUI1I2
  loc_B35B0A: ImpAdStUI1 MemVar_D93038
  loc_B35B0E: Branch loc_B35B22
  loc_B35B11: FLdI2 var_8C
  loc_B35B14: LitI2_Byte 6
  loc_B35B16: EqI2
  loc_B35B17: BranchF loc_B35B22
  loc_B35B1A: LitI2_Byte 7
  loc_B35B1C: CUI1I2
  loc_B35B1E: ImpAdStUI1 MemVar_D93038
  loc_B35B22: ImpAdLdUI1
  loc_B35B26: CI2UI1
  loc_B35B28: LitI2_Byte 0
  loc_B35B2A: NeI2
  loc_B35B2B: FLdRfVar var_90
  loc_B35B2E: FLdPr Me
  loc_B35B31: VCallAd Control_ID_NumeCtaTxt
  loc_B35B34: FStAdFunc var_88
  loc_B35B37: FLdPr var_88
  loc_B35B3A:  = Me.Text
  loc_B35B3F: ILdRf var_90
  loc_B35B42: LitStr vbNullString
  loc_B35B45: NeStr
  loc_B35B47: AndI4
  loc_B35B48: FLdRfVar var_98
  loc_B35B4B: FLdPr Me
  loc_B35B4E: VCallAd Control_ID_NumeCtaTxt
  loc_B35B51: FStAdFunc var_94
  loc_B35B54: FLdPr var_94
  loc_B35B57:  = Me.Text
  loc_B35B5C: ILdRf var_98
  loc_B35B5F: LitStr "0"
  loc_B35B62: NeStr
  loc_B35B64: AndI4
  loc_B35B65: FFreeStr var_90 = ""
  loc_B35B6C: FFreeAd var_88 = ""
  loc_B35B73: BranchF loc_B35D57
  loc_B35B76: FLdRfVar var_90
  loc_B35B79: FLdPr Me
  loc_B35B7C: VCallAd Control_ID_NumeCtaTxt
  loc_B35B7F: FStAdFunc var_88
  loc_B35B82: FLdPr var_88
  loc_B35B85:  = Me.Text
  loc_B35B8A: FLdPr Me
  loc_B35B8D: MemLdRfVar from_stack_1.global_64
  loc_B35B90: NewIfNullRf
  loc_B35B94: LitStr "Titular"
  loc_B35B97: ILdRf var_90
  loc_B35B9A: ImpAdLdUI1
  loc_B35B9E: CStrI2
  loc_B35BA0: FStStrNoPop var_98
  loc_B35BA3: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B35BA8: FFreeStr var_98 = ""
  loc_B35BAF: FFree1Ad var_88
  loc_B35BB2: BranchF loc_B35CD7
  loc_B35BB5: FLdRfVar var_90
  loc_B35BB8: FLdPr Me
  loc_B35BBB: MemLdRfVar from_stack_1.global_64
  loc_B35BBE: NewIfNullPr tblPersona
  loc_B35BC1: from_stack_1v = tblPersona.CucuPersGet()
  loc_B35BC6: ILdRf var_90
  loc_B35BC9: FLdPr Me
  loc_B35BCC: VCallAd Control_ID_CucuPersLbl
  loc_B35BCF: FStAdFunc var_88
  loc_B35BD2: FLdPr var_88
  loc_B35BD5: Me.Caption = from_stack_1
  loc_B35BDA: FFree1Str var_90
  loc_B35BDD: FFree1Ad var_88
  loc_B35BE0: FLdRfVar var_90
  loc_B35BE3: FLdPr Me
  loc_B35BE6: MemLdRfVar from_stack_1.global_64
  loc_B35BE9: NewIfNullPr tblPersona
  loc_B35BEC: from_stack_1v = tblPersona.DetaPersGet()
  loc_B35BF1: ILdRf var_90
  loc_B35BF4: FLdPr Me
  loc_B35BF7: VCallAd Control_ID_DetaPersLbl
  loc_B35BFA: FStAdFunc var_88
  loc_B35BFD: FLdPr var_88
  loc_B35C00: Me.Caption = from_stack_1
  loc_B35C05: FFree1Str var_90
  loc_B35C08: FFree1Ad var_88
  loc_B35C0B: FLdRfVar var_98
  loc_B35C0E: FLdPr Me
  loc_B35C11: MemLdRfVar from_stack_1.global_64
  loc_B35C14: NewIfNullPr tblPersona
  loc_B35C17: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B35C1C: FLdRfVar var_9C
  loc_B35C1F: FLdPr Me
  loc_B35C22: MemLdRfVar from_stack_1.global_64
  loc_B35C25: NewIfNullPr tblPersona
  loc_B35C28: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B35C2D: FLdRfVar var_90
  loc_B35C30: FLdPr Me
  loc_B35C33: MemLdRfVar from_stack_1.global_64
  loc_B35C36: NewIfNullPr tblPersona
  loc_B35C39: from_stack_1v = tblPersona.DetaCallGet()
  loc_B35C3E: ILdRf var_90
  loc_B35C41: LitStr " "
  loc_B35C44: ConcatStr
  loc_B35C45: CVarStr var_FC
  loc_B35C48: LitVarStr var_CC, vbNullString
  loc_B35C4D: FStVarCopyObj var_DC
  loc_B35C50: FLdRfVar var_DC
  loc_B35C53: LitStr "Nro: "
  loc_B35C56: ILdRf var_9C
  loc_B35C59: ConcatStr
  loc_B35C5A: CVarStr var_BC
  loc_B35C5D: ILdRf var_98
  loc_B35C60: LitStr "0"
  loc_B35C63: NeStr
  loc_B35C65: CVarBoolI2 var_AC
  loc_B35C69: FLdRfVar var_EC
  loc_B35C6C: ImpAdCallFPR4  = IIf(, , )
  loc_B35C71: FLdRfVar var_EC
  loc_B35C74: ConcatVar var_10C
  loc_B35C78: LitVarStr var_11C, " "
  loc_B35C7D: ConcatVar var_12C
  loc_B35C81: FLdRfVar var_130
  loc_B35C84: FLdPr Me
  loc_B35C87: MemLdRfVar from_stack_1.global_64
  loc_B35C8A: NewIfNullPr tblPersona
  loc_B35C8D: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B35C92: FLdZeroAd var_130
  loc_B35C95: CVarStr var_140
  loc_B35C98: ConcatVar var_150
  loc_B35C9C: CStrVarVal var_154
  loc_B35CA0: FLdPr Me
  loc_B35CA3: VCallAd Control_ID_DomiPersLbl
  loc_B35CA6: FStAdFunc var_88
  loc_B35CA9: FLdPr var_88
  loc_B35CAC: Me.Caption = from_stack_1
  loc_B35CB1: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B35CBC: FFree1Ad var_88
  loc_B35CBF: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B35CD4: Branch loc_B35D57
  loc_B35CD7: FLdRfVar var_90
  loc_B35CDA: FLdPr Me
  loc_B35CDD: MemLdRfVar from_stack_1.global_64
  loc_B35CE0: NewIfNullPr tblPersona
  loc_B35CE3: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B35CE8: ILdRf var_90
  loc_B35CEB: FLdPr Me
  loc_B35CEE: MemStStrCopy
  loc_B35CF2: FFree1Str var_90
  loc_B35CF5: FLdPr Me
  loc_B35CF8: MemLdStr global_100
  loc_B35CFB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B35D00: LitStr vbNullString
  loc_B35D03: FLdPr Me
  loc_B35D06: VCallAd Control_ID_CucuPersLbl
  loc_B35D09: FStAdFunc var_88
  loc_B35D0C: FLdPr var_88
  loc_B35D0F: Me.Caption = from_stack_1
  loc_B35D14: FFree1Ad var_88
  loc_B35D17: LitStr vbNullString
  loc_B35D1A: FLdPr Me
  loc_B35D1D: VCallAd Control_ID_DetaPersLbl
  loc_B35D20: FStAdFunc var_88
  loc_B35D23: FLdPr var_88
  loc_B35D26: Me.Caption = from_stack_1
  loc_B35D2B: FFree1Ad var_88
  loc_B35D2E: LitStr vbNullString
  loc_B35D31: FLdPr Me
  loc_B35D34: VCallAd Control_ID_DomiPersLbl
  loc_B35D37: FStAdFunc var_88
  loc_B35D3A: FLdPr var_88
  loc_B35D3D: Me.Caption = from_stack_1
  loc_B35D42: FFree1Ad var_88
  loc_B35D45: FLdPr Me
  loc_B35D48: VCallAd Control_ID_NumeCtaTxt
  loc_B35D4B: CVarAd
  loc_B35D4F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B35D54: FFree1Var var_BC = ""
  loc_B35D57: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'B36744
  'Data Table: 504878
  loc_B36454: LitI4 0
  loc_B36459: LitI4 0
  loc_B3645E: FLdRfVar var_88
  loc_B36461: Redim
  loc_B3646B: FLdPr Me
  loc_B3646E: VCallAd Control_ID_ConfirmarCmd
  loc_B36471: CVarAd
  loc_B36475: ParmAry1St
  loc_B3647B: FLdRfVar var_88
  loc_B3647E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B36483: FLdRfVar var_88
  loc_B36486: Erase
  loc_B36487: Call Proc_300_24_B196A8()
  loc_B3648C: LitI2_Byte 0
  loc_B3648E: CR8I2
  loc_B3648F: FLdPr Me
  loc_B36492: MemStFPR8 global_104
  loc_B36495: LitI2_Byte 0
  loc_B36497: CR8I2
  loc_B36498: FLdPr Me
  loc_B3649B: MemStFPR8 global_112
  loc_B3649E: LitI2_Byte 0
  loc_B364A0: CR8I2
  loc_B364A1: FLdPr Me
  loc_B364A4: MemStFPR8 global_120
  loc_B364A7: LitI2_Byte 0
  loc_B364A9: CR8I2
  loc_B364AA: FLdPr Me
  loc_B364AD: MemStFPR8 global_128
  loc_B364B0: LitI2_Byte 0
  loc_B364B2: CR8I2
  loc_B364B3: FLdPr Me
  loc_B364B6: MemStFPR8 global_136
  loc_B364B9: LitI4 1
  loc_B364BE: LitI4 1
  loc_B364C3: LitVarStr var_B8, "0.00"
  loc_B364C8: FStVarCopyObj var_98
  loc_B364CB: FLdRfVar var_98
  loc_B364CE: FLdPr Me
  loc_B364D1: MemLdRfVar from_stack_1.global_104
  loc_B364D4: CVarRef
  loc_B364D9: FLdRfVar var_C8
  loc_B364DC: ImpAdCallFPR4  = Format(, )
  loc_B364E1: FLdRfVar var_C8
  loc_B364E4: CStrVarVal var_CC
  loc_B364E8: FLdPr Me
  loc_B364EB: VCallAd Control_ID_txtTotaDere
  loc_B364EE: FStAdFunc var_D0
  loc_B364F1: FLdPr var_D0
  loc_B364F4: Me.Text = from_stack_1
  loc_B364F9: FFree1Str var_CC
  loc_B364FC: FFree1Ad var_D0
  loc_B364FF: FFreeVar var_98 = ""
  loc_B36506: LitI4 1
  loc_B3650B: LitI4 1
  loc_B36510: LitVarStr var_B8, "0.00"
  loc_B36515: FStVarCopyObj var_98
  loc_B36518: FLdRfVar var_98
  loc_B3651B: FLdPr Me
  loc_B3651E: MemLdRfVar from_stack_1.global_112
  loc_B36521: CVarRef
  loc_B36526: FLdRfVar var_C8
  loc_B36529: ImpAdCallFPR4  = Format(, )
  loc_B3652E: FLdRfVar var_C8
  loc_B36531: CStrVarVal var_CC
  loc_B36535: FLdPr Me
  loc_B36538: VCallAd Control_ID_txtTotaReca
  loc_B3653B: FStAdFunc var_D0
  loc_B3653E: FLdPr var_D0
  loc_B36541: Me.Text = from_stack_1
  loc_B36546: FFree1Str var_CC
  loc_B36549: FFree1Ad var_D0
  loc_B3654C: FFreeVar var_98 = ""
  loc_B36553: LitI4 1
  loc_B36558: LitI4 1
  loc_B3655D: LitVarStr var_B8, "0.00"
  loc_B36562: FStVarCopyObj var_98
  loc_B36565: FLdRfVar var_98
  loc_B36568: FLdPr Me
  loc_B3656B: MemLdRfVar from_stack_1.global_120
  loc_B3656E: CVarRef
  loc_B36573: FLdRfVar var_C8
  loc_B36576: ImpAdCallFPR4  = Format(, )
  loc_B3657B: FLdRfVar var_C8
  loc_B3657E: CStrVarVal var_CC
  loc_B36582: FLdPr Me
  loc_B36585: VCallAd Control_ID_txtTotaApre
  loc_B36588: FStAdFunc var_D0
  loc_B3658B: FLdPr var_D0
  loc_B3658E: Me.Text = from_stack_1
  loc_B36593: FFree1Str var_CC
  loc_B36596: FFree1Ad var_D0
  loc_B36599: FFreeVar var_98 = ""
  loc_B365A0: LitI4 2
  loc_B365A5: FLdPr Me
  loc_B365A8: MemLdRfVar from_stack_1.global_104
  loc_B365AB: CVarRef
  loc_B365B0: FLdRfVar var_98
  loc_B365B3: ImpAdCallFPR4  = Round(, )
  loc_B365B8: FLdRfVar var_98
  loc_B365BB: LitI4 2
  loc_B365C0: FLdPr Me
  loc_B365C3: MemLdRfVar from_stack_1.global_112
  loc_B365C6: CVarRef
  loc_B365CB: FLdRfVar var_C8
  loc_B365CE: ImpAdCallFPR4  = Round(, )
  loc_B365D3: FLdRfVar var_C8
  loc_B365D6: AddVar var_E0
  loc_B365DA: LitI4 2
  loc_B365DF: FLdPr Me
  loc_B365E2: MemLdRfVar from_stack_1.global_120
  loc_B365E5: CVarRef
  loc_B365EA: FLdRfVar var_100
  loc_B365ED: ImpAdCallFPR4  = Round(, )
  loc_B365F2: FLdRfVar var_100
  loc_B365F5: AddVar var_110
  loc_B365F9: CR4Var
  loc_B365FA: FLdPr Me
  loc_B365FD: MemStFPR8 global_128
  loc_B36600: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B3660D: LitI4 1
  loc_B36612: LitI4 1
  loc_B36617: LitVarStr var_B8, "0.00"
  loc_B3661C: FStVarCopyObj var_98
  loc_B3661F: FLdRfVar var_98
  loc_B36622: FLdPr Me
  loc_B36625: MemLdRfVar from_stack_1.global_128
  loc_B36628: CVarRef
  loc_B3662D: FLdRfVar var_C8
  loc_B36630: ImpAdCallFPR4  = Format(, )
  loc_B36635: FLdRfVar var_C8
  loc_B36638: CStrVarVal var_CC
  loc_B3663C: FLdPr Me
  loc_B3663F: VCallAd Control_ID_txtTotal
  loc_B36642: FStAdFunc var_D0
  loc_B36645: FLdPr var_D0
  loc_B36648: Me.Text = from_stack_1
  loc_B3664D: FFree1Str var_CC
  loc_B36650: FFree1Ad var_D0
  loc_B36653: FFreeVar var_98 = ""
  loc_B3665A: LitI4 1
  loc_B3665F: LitI4 1
  loc_B36664: LitVarStr var_B8, "0.00"
  loc_B36669: FStVarCopyObj var_98
  loc_B3666C: FLdRfVar var_98
  loc_B3666F: FLdPr Me
  loc_B36672: MemLdRfVar from_stack_1.global_104
  loc_B36675: CVarRef
  loc_B3667A: FLdRfVar var_C8
  loc_B3667D: ImpAdCallFPR4  = Format(, )
  loc_B36682: FLdRfVar var_C8
  loc_B36685: CStrVarVal var_CC
  loc_B36689: FLdPr Me
  loc_B3668C: VCallAd Control_ID_txtDereSele
  loc_B3668F: FStAdFunc var_D0
  loc_B36692: FLdPr var_D0
  loc_B36695: Me.Text = from_stack_1
  loc_B3669A: FFree1Str var_CC
  loc_B3669D: FFree1Ad var_D0
  loc_B366A0: FFreeVar var_98 = ""
  loc_B366A7: LitI4 1
  loc_B366AC: LitI4 1
  loc_B366B1: LitVarStr var_B8, "0.00"
  loc_B366B6: FStVarCopyObj var_98
  loc_B366B9: FLdRfVar var_98
  loc_B366BC: FLdPr Me
  loc_B366BF: MemLdRfVar from_stack_1.global_112
  loc_B366C2: CVarRef
  loc_B366C7: FLdRfVar var_C8
  loc_B366CA: ImpAdCallFPR4  = Format(, )
  loc_B366CF: FLdRfVar var_C8
  loc_B366D2: CStrVarVal var_CC
  loc_B366D6: FLdPr Me
  loc_B366D9: VCallAd Control_ID_txtRecaSele
  loc_B366DC: FStAdFunc var_D0
  loc_B366DF: FLdPr var_D0
  loc_B366E2: Me.Text = from_stack_1
  loc_B366E7: FFree1Str var_CC
  loc_B366EA: FFree1Ad var_D0
  loc_B366ED: FFreeVar var_98 = ""
  loc_B366F4: LitI4 1
  loc_B366F9: LitI4 1
  loc_B366FE: LitVarStr var_B8, "0.00"
  loc_B36703: FStVarCopyObj var_98
  loc_B36706: FLdRfVar var_98
  loc_B36709: FLdPr Me
  loc_B3670C: MemLdRfVar from_stack_1.global_136
  loc_B3670F: CVarRef
  loc_B36714: FLdRfVar var_C8
  loc_B36717: ImpAdCallFPR4  = Format(, )
  loc_B3671C: FLdRfVar var_C8
  loc_B3671F: CStrVarVal var_CC
  loc_B36723: FLdPr Me
  loc_B36726: VCallAd Control_ID_txtTotaSele
  loc_B36729: FStAdFunc var_D0
  loc_B3672C: FLdPr var_D0
  loc_B3672F: Me.Text = from_stack_1
  loc_B36734: FFree1Str var_CC
  loc_B36737: FFree1Ad var_D0
  loc_B3673A: FFreeVar var_98 = ""
  loc_B36741: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'CA5780
  'Data Table: 504878
  loc_CA3A40: LitI2_Byte 0
  loc_CA3A42: PopTmpLdAd2 var_9A
  loc_CA3A45: from_stack_2v = FeveCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_CA3A4A: FLdPr Me
  loc_CA3A4D: MemLdStr global_100
  loc_CA3A50: LitStr vbNullString
  loc_CA3A53: NeStr
  loc_CA3A55: BranchF loc_CA3A59
  loc_CA3A58: ExitProcHresult
  loc_CA3A59: LitI2_Byte 0
  loc_CA3A5B: PopTmpLdAd2 var_9A
  loc_CA3A5E: Call DetaCtctTxt_Validate(from_stack_1v)
  loc_CA3A63: FLdPr Me
  loc_CA3A66: MemLdStr global_100
  loc_CA3A69: LitStr vbNullString
  loc_CA3A6C: NeStr
  loc_CA3A6E: BranchF loc_CA3A72
  loc_CA3A71: ExitProcHresult
  loc_CA3A72: LitI2_Byte 0
  loc_CA3A74: PopTmpLdAd2 var_9A
  loc_CA3A77: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_CA3A7C: FLdPr Me
  loc_CA3A7F: MemLdStr global_100
  loc_CA3A82: LitStr vbNullString
  loc_CA3A85: NeStr
  loc_CA3A87: BranchF loc_CA3A8B
  loc_CA3A8A: ExitProcHresult
  loc_CA3A8B: FLdPr Me
  loc_CA3A8E: VCallAd Control_ID_ctacteFlex
  loc_CA3A91: FStAdFunc var_A0
  loc_CA3A94: FLdPr var_A0
  loc_CA3A97: LateIdLdVar var_B0 DispID_4 0
  loc_CA3A9E: CI4Var
  loc_CA3AA0: LitI4 1
  loc_CA3AA5: LeI4
  loc_CA3AA6: FFree1Ad var_A0
  loc_CA3AA9: FFree1Var var_B0 = ""
  loc_CA3AAC: BranchF loc_CA3AE1
  loc_CA3AAF: LitVar_Missing var_120
  loc_CA3AB2: LitVar_Missing var_100
  loc_CA3AB5: LitVarStr var_D0, "InfoGov"
  loc_CA3ABA: FStVarCopyObj var_E0
  loc_CA3ABD: FLdRfVar var_E0
  loc_CA3AC0: LitI4 &H30
  loc_CA3AC5: LitVarStr var_C0, "No existe deuda seleccionada para realizar el credito. Reintente..."
  loc_CA3ACA: FStVarCopyObj var_B0
  loc_CA3ACD: FLdRfVar var_B0
  loc_CA3AD0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CA3AD5: FFreeVar var_B0 = "": var_E0 = "": var_100 = ""
  loc_CA3AE0: ExitProcHresult
  loc_CA3AE1: LitI2_Byte 0
  loc_CA3AE3: FStI2 var_8A
  loc_CA3AE6: LitI2_Byte 1
  loc_CA3AE8: FLdPr Me
  loc_CA3AEB: MemLdRfVar from_stack_1.global_68
  loc_CA3AEE: FLdPr Me
  loc_CA3AF1: VCallAd Control_ID_ctacteFlex
  loc_CA3AF4: FStAdFunc var_A0
  loc_CA3AF7: FLdPr var_A0
  loc_CA3AFA: LateIdLdVar var_B0 DispID_4 0
  loc_CA3B01: CI4Var
  loc_CA3B03: LitI4 1
  loc_CA3B08: SubI4
  loc_CA3B09: CI2I4
  loc_CA3B0A: FFree1Ad var_A0
  loc_CA3B0D: FFree1Var var_B0 = ""
  loc_CA3B10: ForI2 var_124
  loc_CA3B16: FLdPr Me
  loc_CA3B19: MemLdI2 global_68
  loc_CA3B1C: CI4UI1
  loc_CA3B1D: CVarI4
  loc_CA3B21: PopAdLdVar
  loc_CA3B22: LitVarI4
  loc_CA3B2A: PopAdLdVar
  loc_CA3B2B: FLdPr Me
  loc_CA3B2E: VCallAd Control_ID_ctacteFlex
  loc_CA3B31: FStAdFunc var_A0
  loc_CA3B34: FLdPr var_A0
  loc_CA3B37: LateIdCallLdVar
  loc_CA3B41: CStrVarTmp
  loc_CA3B42: FStStrNoPop var_128
  loc_CA3B45: LitStr "Si"
  loc_CA3B48: EqStr
  loc_CA3B4A: FLdPr Me
  loc_CA3B4D: MemLdI2 global_68
  loc_CA3B50: CI4UI1
  loc_CA3B51: CVarI4
  loc_CA3B55: PopAdLdVar
  loc_CA3B56: LitVarI4
  loc_CA3B5E: PopAdLdVar
  loc_CA3B5F: FLdPr Me
  loc_CA3B62: VCallAd Control_ID_ctacteFlex
  loc_CA3B65: FStAdFunc var_16C
  loc_CA3B68: FLdPr var_16C
  loc_CA3B6B: LateIdCallLdVar
  loc_CA3B75: CStrVarTmp
  loc_CA3B76: FStStrNoPop var_170
  loc_CA3B79: LitStr "SS"
  loc_CA3B7C: EqStr
  loc_CA3B7E: OrI4
  loc_CA3B7F: FFreeStr var_128 = ""
  loc_CA3B86: FFreeAd var_A0 = ""
  loc_CA3B8D: FFreeVar var_B0 = ""
  loc_CA3B94: BranchF loc_CA3B9C
  loc_CA3B97: LitI2_Byte &HFF
  loc_CA3B99: FStI2 var_8A
  loc_CA3B9C: FLdPr Me
  loc_CA3B9F: MemLdRfVar from_stack_1.global_68
  loc_CA3BA2: NextI2 var_124, loc_CA3B16
  loc_CA3BA7: FLdI2 var_8A
  loc_CA3BAA: LitI2_Byte 0
  loc_CA3BAC: EqI2
  loc_CA3BAD: BranchF loc_CA3BE2
  loc_CA3BB0: LitVar_Missing var_120
  loc_CA3BB3: LitVar_Missing var_100
  loc_CA3BB6: LitVarStr var_D0, "InfoGov"
  loc_CA3BBB: FStVarCopyObj var_E0
  loc_CA3BBE: FLdRfVar var_E0
  loc_CA3BC1: LitI4 &H30
  loc_CA3BC6: LitVarStr var_C0, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_CA3BCB: FStVarCopyObj var_B0
  loc_CA3BCE: FLdRfVar var_B0
  loc_CA3BD1: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CA3BD6: FFreeVar var_B0 = "": var_E0 = "": var_100 = ""
  loc_CA3BE1: ExitProcHresult
  loc_CA3BE2: LitI2_Byte 1
  loc_CA3BE4: FLdPr Me
  loc_CA3BE7: MemLdRfVar from_stack_1.global_68
  loc_CA3BEA: FLdPr Me
  loc_CA3BED: VCallAd Control_ID_ctacteFlex
  loc_CA3BF0: FStAdFunc var_A0
  loc_CA3BF3: FLdPr var_A0
  loc_CA3BF6: LateIdLdVar var_B0 DispID_4 0
  loc_CA3BFD: CI4Var
  loc_CA3BFF: LitI4 1
  loc_CA3C04: SubI4
  loc_CA3C05: CI2I4
  loc_CA3C06: FFree1Ad var_A0
  loc_CA3C09: FFree1Var var_B0 = ""
  loc_CA3C0C: ForI2 var_174
  loc_CA3C12: FLdPr Me
  loc_CA3C15: MemLdI2 global_68
  loc_CA3C18: CI4UI1
  loc_CA3C19: CVarI4
  loc_CA3C1D: PopAdLdVar
  loc_CA3C1E: LitVarI4
  loc_CA3C26: PopAdLdVar
  loc_CA3C27: FLdPr Me
  loc_CA3C2A: VCallAd Control_ID_ctacteFlex
  loc_CA3C2D: FStAdFunc var_A0
  loc_CA3C30: FLdPr var_A0
  loc_CA3C33: LateIdCallLdVar
  loc_CA3C3D: CStrVarTmp
  loc_CA3C3E: FStStrNoPop var_128
  loc_CA3C41: LitStr "Si"
  loc_CA3C44: EqStr
  loc_CA3C46: FFree1Str var_128
  loc_CA3C49: FFree1Ad var_A0
  loc_CA3C4C: FFree1Var var_B0 = ""
  loc_CA3C4F: BranchF loc_CA4C3F
  loc_CA3C52: FLdPr Me
  loc_CA3C55: MemLdI2 global_68
  loc_CA3C58: CI4UI1
  loc_CA3C59: CVarI4
  loc_CA3C5D: PopAdLdVar
  loc_CA3C5E: LitVarI4
  loc_CA3C66: PopAdLdVar
  loc_CA3C67: FLdPr Me
  loc_CA3C6A: VCallAd Control_ID_ctacteFlex
  loc_CA3C6D: FStAdFunc var_1CC
  loc_CA3C70: FLdPr var_1CC
  loc_CA3C73: LateIdCallLdVar
  loc_CA3C7D: CStrVarTmp
  loc_CA3C7E: CVarStr var_120
  loc_CA3C81: FLdRfVar var_1DC
  loc_CA3C84: ImpAdCallFPR4  = Trim()
  loc_CA3C89: FLdPr Me
  loc_CA3C8C: MemLdI2 global_68
  loc_CA3C8F: CI4UI1
  loc_CA3C90: CVarI4
  loc_CA3C94: PopAdLdVar
  loc_CA3C95: LitVarI4
  loc_CA3C9D: PopAdLdVar
  loc_CA3C9E: FLdPr Me
  loc_CA3CA1: VCallAd Control_ID_ctacteFlex
  loc_CA3CA4: FStAdFunc var_270
  loc_CA3CA7: FLdPr var_270
  loc_CA3CAA: LateIdCallLdVar
  loc_CA3CB4: PopAd
  loc_CA3CB6: LitStr "SELECT * FROM ctacte "
  loc_CA3CB9: LitStr " WHERE ctacte.CodiOfic = "
  loc_CA3CBC: ConcatStr
  loc_CA3CBD: FStStrNoPop var_128
  loc_CA3CC0: FLdPr Me
  loc_CA3CC3: MemLdI2 global_68
  loc_CA3CC6: CI4UI1
  loc_CA3CC7: CVarI4
  loc_CA3CCB: PopAdLdVar
  loc_CA3CCC: LitVarI4
  loc_CA3CD4: PopAdLdVar
  loc_CA3CD5: FLdPr Me
  loc_CA3CD8: VCallAd Control_ID_ctacteFlex
  loc_CA3CDB: FStAdFunc var_A0
  loc_CA3CDE: FLdPr var_A0
  loc_CA3CE1: LateIdCallLdVar
  loc_CA3CEB: CStrVarTmp
  loc_CA3CEC: FStStrNoPop var_170
  loc_CA3CEF: ConcatStr
  loc_CA3CF0: FStStrNoPop var_178
  loc_CA3CF3: LitStr " AND ctacte.CuenCtct = '"
  loc_CA3CF6: ConcatStr
  loc_CA3CF7: FStStrNoPop var_17C
  loc_CA3CFA: FLdPr Me
  loc_CA3CFD: MemLdI2 global_68
  loc_CA3D00: CI4UI1
  loc_CA3D01: CVarI4
  loc_CA3D05: PopAdLdVar
  loc_CA3D06: LitVarI4
  loc_CA3D0E: PopAdLdVar
  loc_CA3D0F: FLdPr Me
  loc_CA3D12: VCallAd Control_ID_ctacteFlex
  loc_CA3D15: FStAdFunc var_16C
  loc_CA3D18: FLdPr var_16C
  loc_CA3D1B: LateIdCallLdVar
  loc_CA3D25: CStrVarTmp
  loc_CA3D26: FStStrNoPop var_180
  loc_CA3D29: ConcatStr
  loc_CA3D2A: FStStrNoPop var_184
  loc_CA3D2D: LitStr "'"
  loc_CA3D30: ConcatStr
  loc_CA3D31: FStStrNoPop var_188
  loc_CA3D34: LitStr " AND ctacte.PeriCtct = "
  loc_CA3D37: ConcatStr
  loc_CA3D38: CVarStr var_1FC
  loc_CA3D3B: LitI4 4
  loc_CA3D40: FLdRfVar var_1DC
  loc_CA3D43: FLdRfVar var_1EC
  loc_CA3D46: ImpAdCallFPR4  = Right(, )
  loc_CA3D4B: FLdRfVar var_1EC
  loc_CA3D4E: ConcatVar var_20C
  loc_CA3D52: LitVarStr var_21C, " AND ctacte.BimeCtct = "
  loc_CA3D57: ConcatVar var_22C
  loc_CA3D5B: LitI4 1
  loc_CA3D60: FLdPr Me
  loc_CA3D63: MemLdI2 global_68
  loc_CA3D66: CI4UI1
  loc_CA3D67: CVarI4
  loc_CA3D6B: PopAdLdVar
  loc_CA3D6C: LitVarI4
  loc_CA3D74: PopAdLdVar
  loc_CA3D75: FLdPr Me
  loc_CA3D78: VCallAd Control_ID_ctacteFlex
  loc_CA3D7B: FStAdFunc var_2C4
  loc_CA3D7E: FLdPr var_2C4
  loc_CA3D81: LateIdCallLdVar
  loc_CA3D8B: CStrVarTmp
  loc_CA3D8C: FStStrNoPop var_2D8
  loc_CA3D8F: LitStr "/"
  loc_CA3D92: LitI4 0
  loc_CA3D97: FnInStr4
  loc_CA3D99: LitI4 1
  loc_CA3D9E: SubI4
  loc_CA3D9F: CVarI4
  loc_CA3DA3: LitI4 1
  loc_CA3DA8: FLdRfVar var_280
  loc_CA3DAB: CStrVarTmp
  loc_CA3DAC: CVarStr var_2E8
  loc_CA3DAF: FLdRfVar var_318
  loc_CA3DB2: ImpAdCallFPR4  = Mid(, , )
  loc_CA3DB7: FLdRfVar var_318
  loc_CA3DBA: ConcatVar var_328
  loc_CA3DBE: LitVarStr var_338, " AND ctacte.NumeCtct = "
  loc_CA3DC3: ConcatVar var_348
  loc_CA3DC7: FLdPr Me
  loc_CA3DCA: MemLdI2 global_68
  loc_CA3DCD: CI4UI1
  loc_CA3DCE: CVarI4
  loc_CA3DD2: PopAdLdVar
  loc_CA3DD3: LitVarI4
  loc_CA3DDB: PopAdLdVar
  loc_CA3DDC: FLdPr Me
  loc_CA3DDF: VCallAd Control_ID_ctacteFlex
  loc_CA3DE2: FStAdFunc var_38C
  loc_CA3DE5: FLdPr var_38C
  loc_CA3DE8: LateIdCallLdVar
  loc_CA3DF2: CStrVarTmp
  loc_CA3DF3: CVarStr var_3AC
  loc_CA3DF6: ConcatVar var_3BC
  loc_CA3DFA: LitVarStr var_3CC, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_CA3DFF: ConcatVar var_3DC
  loc_CA3E03: CStrVarVal var_3E0
  loc_CA3E07: FLdPr Me
  loc_CA3E0A: MemLdRfVar from_stack_1.global_52
  loc_CA3E0D: NewIfNullPr clsctacte
  loc_CA3E10: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA3E15: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_2D8 = ""
  loc_CA3E2A: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_2C4 = ""
  loc_CA3E39: FFreeVar var_B0 = "": var_E0 = "": var_100 = "": var_120 = "": var_1DC = "": var_1FC = "": var_1EC = "": var_20C = "": var_280 = "": var_2D4 = "": var_2E8 = "": var_308 = "": var_22C = "": var_318 = "": var_328 = "": var_39C = "": var_348 = "": var_3AC = "": var_3BC = ""
  loc_CA3E64: FLdRfVar var_3E4
  loc_CA3E67: FLdPr Me
  loc_CA3E6A: MemLdRfVar from_stack_1.global_52
  loc_CA3E6D: NewIfNullPr clsctacte
  loc_CA3E70: from_stack_1 = clsctacte.RecordCount
  loc_CA3E75: ILdRf var_3E4
  loc_CA3E78: LitI4 1
  loc_CA3E7D: GeI4
  loc_CA3E7E: BranchF loc_CA4331
  loc_CA3E81: FLdPr Me
  loc_CA3E84: MemLdRfVar from_stack_1.global_52
  loc_CA3E87: NewIfNullPr clsctacte
  loc_CA3E8A: Call clsctacte.MoveLast()
  loc_CA3E8F: FLdRfVar var_9A
  loc_CA3E92: FLdPr Me
  loc_CA3E95: MemLdRfVar from_stack_1.global_52
  loc_CA3E98: NewIfNullPr clsctacte
  loc_CA3E9B: from_stack_1 = clsctacte.MoviCtct
  loc_CA3EA0: FLdI2 var_9A
  loc_CA3EA3: LitI2_Byte 1
  loc_CA3EA5: AddI2
  loc_CA3EA6: FStI2 var_8C
  loc_CA3EA9: LitVarStr var_C0, vbNullString
  loc_CA3EAE: PopAdLdVar
  loc_CA3EAF: FLdPr Me
  loc_CA3EB2: VCallAd Control_ID_FeveCtctMsk
  loc_CA3EB5: FStAdFunc var_A0
  loc_CA3EB8: FLdPr var_A0
  loc_CA3EBB: LateIdSt
  loc_CA3EC0: FFree1Ad var_A0
  loc_CA3EC3: FLdRfVar var_9A
  loc_CA3EC6: FLdPr Me
  loc_CA3EC9: VCallAd Control_ID_CredParcialChk
  loc_CA3ECC: FStAdFunc var_A0
  loc_CA3ECF: FLdPr var_A0
  loc_CA3ED2:  = Me.Value
  loc_CA3ED7: FLdI2 var_9A
  loc_CA3EDA: LitI2_Byte 0
  loc_CA3EDC: EqI2
  loc_CA3EDD: FFree1Ad var_A0
  loc_CA3EE0: BranchF loc_CA3F23
  loc_CA3EE3: FLdPr Me
  loc_CA3EE6: MemLdI2 global_68
  loc_CA3EE9: CI4UI1
  loc_CA3EEA: CVarI4
  loc_CA3EEE: PopAdLdVar
  loc_CA3EEF: LitVarI4
  loc_CA3EF7: PopAdLdVar
  loc_CA3EF8: FLdPr Me
  loc_CA3EFB: VCallAd Control_ID_ctacteFlex
  loc_CA3EFE: FStAdFunc var_A0
  loc_CA3F01: FLdPr var_A0
  loc_CA3F04: LateIdCallLdVar
  loc_CA3F0E: CStrVarTmp
  loc_CA3F0F: FStStrNoPop var_128
  loc_CA3F12: CR8Str
  loc_CA3F14: FStFPR8 var_98
  loc_CA3F17: FFree1Str var_128
  loc_CA3F1A: FFree1Ad var_A0
  loc_CA3F1D: FFree1Var var_B0 = ""
  loc_CA3F20: Branch loc_CA3F65
  loc_CA3F23: FLdRfVar var_9A
  loc_CA3F26: FLdPr Me
  loc_CA3F29: VCallAd Control_ID_CredParcialChk
  loc_CA3F2C: FStAdFunc var_A0
  loc_CA3F2F: FLdPr var_A0
  loc_CA3F32:  = Me.Value
  loc_CA3F37: FLdI2 var_9A
  loc_CA3F3A: LitI2_Byte 1
  loc_CA3F3C: EqI2
  loc_CA3F3D: FFree1Ad var_A0
  loc_CA3F40: BranchF loc_CA3F65
  loc_CA3F43: FLdRfVar var_128
  loc_CA3F46: FLdPr Me
  loc_CA3F49: VCallAd Control_ID_ImpoCtctTxt
  loc_CA3F4C: FStAdFunc var_A0
  loc_CA3F4F: FLdPr var_A0
  loc_CA3F52:  = Me.Text
  loc_CA3F57: ILdRf var_128
  loc_CA3F5A: CR8Str
  loc_CA3F5C: FStFPR8 var_98
  loc_CA3F5F: FFree1Str var_128
  loc_CA3F62: FFree1Ad var_A0
  loc_CA3F65: LitStr "Municipalidad de Guaymallén"
  loc_CA3F68: LitStr "Municipalidad de Guaymallén"
  loc_CA3F6B: EqStr
  loc_CA3F6D: BranchF loc_CA416A
  loc_CA3F70: FLdRfVar var_9A
  loc_CA3F73: FLdPr Me
  loc_CA3F76: MemLdRfVar from_stack_1.global_52
  loc_CA3F79: NewIfNullPr clsctacte
  loc_CA3F7C: from_stack_1 = clsctacte.CodiOfic
  loc_CA3F81: FLdRfVar var_128
  loc_CA3F84: FLdPr Me
  loc_CA3F87: MemLdRfVar from_stack_1.global_52
  loc_CA3F8A: NewIfNullPr clsctacte
  loc_CA3F8D: from_stack_1 = clsctacte.CuenCtct
  loc_CA3F92: FLdRfVar var_3E6
  loc_CA3F95: FLdPr Me
  loc_CA3F98: MemLdRfVar from_stack_1.global_52
  loc_CA3F9B: NewIfNullPr clsctacte
  loc_CA3F9E: from_stack_1 = clsctacte.PeriCtct
  loc_CA3FA3: FLdRfVar var_3E8
  loc_CA3FA6: FLdPr Me
  loc_CA3FA9: MemLdRfVar from_stack_1.global_52
  loc_CA3FAC: NewIfNullPr clsctacte
  loc_CA3FAF: from_stack_1 = clsctacte.BimeCtct
  loc_CA3FB4: FLdRfVar var_3E4
  loc_CA3FB7: FLdPr Me
  loc_CA3FBA: MemLdRfVar from_stack_1.global_52
  loc_CA3FBD: NewIfNullPr clsctacte
  loc_CA3FC0: from_stack_1 = clsctacte.NumeCtct
  loc_CA3FC5: FLdRfVar var_3EA
  loc_CA3FC8: FLdPr Me
  loc_CA3FCB: MemLdRfVar from_stack_1.global_52
  loc_CA3FCE: NewIfNullPr clsctacte
  loc_CA3FD1: from_stack_1 = clsctacte.PeriBole
  loc_CA3FD6: FLdRfVar var_3F0
  loc_CA3FD9: FLdPr Me
  loc_CA3FDC: MemLdRfVar from_stack_1.global_52
  loc_CA3FDF: NewIfNullPr clsctacte
  loc_CA3FE2: from_stack_1 = clsctacte.NumeBole
  loc_CA3FE7: FLdRfVar var_170
  loc_CA3FEA: FLdPr Me
  loc_CA3FED: MemLdRfVar from_stack_1.global_52
  loc_CA3FF0: NewIfNullPr clsctacte
  loc_CA3FF3: from_stack_1 = clsctacte.TipoCtct
  loc_CA3FF8: LitI2_Byte 0
  loc_CA3FFA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA3FFF: FStFPR8 var_408
  loc_CA4002: FLdPr Me
  loc_CA4005: VCallAd Control_ID_FeveCtctMsk
  loc_CA4008: FStAdFunc var_A0
  loc_CA400B: FLdPr var_A0
  loc_CA400E: LateIdLdVar var_B0 DispID_22 0
  loc_CA4015: PopAd
  loc_CA4017: FLdRfVar var_3F2
  loc_CA401A: FLdPr Me
  loc_CA401D: MemLdRfVar from_stack_1.global_52
  loc_CA4020: NewIfNullPr clsctacte
  loc_CA4023: from_stack_1 = clsctacte.PeriInfo
  loc_CA4028: FLdRfVar var_178
  loc_CA402B: FLdPr Me
  loc_CA402E: MemLdRfVar from_stack_1.global_52
  loc_CA4031: NewIfNullPr clsctacte
  loc_CA4034: from_stack_1 = clsctacte.CodiConc
  loc_CA4039: FLdRfVar var_3F8
  loc_CA403C: FLdPr Me
  loc_CA403F: MemLdRfVar from_stack_1.global_52
  loc_CA4042: NewIfNullPr clsctacte
  loc_CA4045: from_stack_1 = clsctacte.CodiFapa
  loc_CA404A: FLdRfVar var_3FA
  loc_CA404D: FLdPr Me
  loc_CA4050: MemLdRfVar from_stack_1.global_52
  loc_CA4053: NewIfNullPr clsctacte
  loc_CA4056: from_stack_1 = clsctacte.CuotDefa
  loc_CA405B: FLdRfVar var_400
  loc_CA405E: FLdPr Me
  loc_CA4061: MemLdRfVar from_stack_1.global_52
  loc_CA4064: NewIfNullPr clsctacte
  loc_CA4067: from_stack_1 = clsctacte.NumeApre
  loc_CA406C: FLdRfVar var_17C
  loc_CA406F: FLdPr Me
  loc_CA4072: VCallAd Control_ID_ExpeCtctTxt
  loc_CA4075: FStAdFunc var_16C
  loc_CA4078: FLdPr var_16C
  loc_CA407B:  = Me.Text
  loc_CA4080: FLdRfVar var_100
  loc_CA4083: FLdRfVar var_2C4
  loc_CA4086: LitVarStr var_C0, "CompCtct"
  loc_CA408B: PopAdLdVar
  loc_CA408C: FLdRfVar var_270
  loc_CA408F: FLdRfVar var_1CC
  loc_CA4092: FLdPr Me
  loc_CA4095: MemLdRfVar from_stack_1.global_52
  loc_CA4098: NewIfNullPr clsctacte
  loc_CA409B: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA40A0: FLdPr var_1CC
  loc_CA40A3:  = Me.Fields
  loc_CA40A8: FLdPr var_270
  loc_CA40AB: from_stack_2 = Me.Item(from_stack_1)
  loc_CA40B0: FLdPr var_2C4
  loc_CA40B3:  = Me.Value
  loc_CA40B8: FLdRfVar var_180
  loc_CA40BB: FLdPr Me
  loc_CA40BE: VCallAd Control_ID_DetaCtctTxt
  loc_CA40C1: FStAdFunc var_38C
  loc_CA40C4: FLdPr var_38C
  loc_CA40C7:  = Me.Text
  loc_CA40CC: FLdR8 var_98
  loc_CA40CF: LitI2_Byte 0
  loc_CA40D1: CR8I2
  loc_CA40D2: PopFPR8
  loc_CA40D3: ILdRf var_180
  loc_CA40D6: LitI4 0
  loc_CA40DB: LitI2_Byte 0
  loc_CA40DD: FLdRfVar var_100
  loc_CA40E0: CStrVarTmp
  loc_CA40E1: FStStrNoPop var_184
  loc_CA40E4: ILdRf var_17C
  loc_CA40E7: LitI2_Byte &HB
  loc_CA40E9: CUI1I2
  loc_CA40EB: ILdRf var_400
  loc_CA40EE: FLdI2 var_3FA
  loc_CA40F1: ILdRf var_3F8
  loc_CA40F4: ILdRf var_178
  loc_CA40F7: FLdI2 var_3F2
  loc_CA40FA: LitI2_Byte 0
  loc_CA40FC: LitStr vbNullString
  loc_CA40FF: FLdRfVar var_B0
  loc_CA4102: CStrVarTmp
  loc_CA4103: CVarStr var_E0
  loc_CA4106: PopAdLdVar
  loc_CA4107: FLdFPR8 var_408
  loc_CA410A: CVarDate var_D0
  loc_CA410E: PopAdLdVar
  loc_CA410F: ILdRf var_170
  loc_CA4112: ILdRf var_3F0
  loc_CA4115: FLdI2 var_3EA
  loc_CA4118: LitI2_Byte 0
  loc_CA411A: LitI2_Byte 0
  loc_CA411C: CUI1I2
  loc_CA411E: FLdI2 var_8C
  loc_CA4121: ILdRf var_3E4
  loc_CA4124: FLdI2 var_3E8
  loc_CA4127: FLdI2 var_3E6
  loc_CA412A: ILdRf var_128
  loc_CA412D: FLdI2 var_9A
  loc_CA4130: CUI1I2
  loc_CA4132: FLdPr Me
  loc_CA4135: MemLdRfVar from_stack_1.global_52
  loc_CA4138: NewIfNullPr clsctacte
  loc_CA413B: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA4140: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_184 = ""
  loc_CA414F: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_38C = ""
  loc_CA415E: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA4167: Branch loc_CA432E
  loc_CA416A: FLdRfVar var_9A
  loc_CA416D: FLdPr Me
  loc_CA4170: MemLdRfVar from_stack_1.global_52
  loc_CA4173: NewIfNullPr clsctacte
  loc_CA4176: from_stack_1 = clsctacte.CodiOfic
  loc_CA417B: FLdRfVar var_128
  loc_CA417E: FLdPr Me
  loc_CA4181: MemLdRfVar from_stack_1.global_52
  loc_CA4184: NewIfNullPr clsctacte
  loc_CA4187: from_stack_1 = clsctacte.CuenCtct
  loc_CA418C: FLdRfVar var_3E6
  loc_CA418F: FLdPr Me
  loc_CA4192: MemLdRfVar from_stack_1.global_52
  loc_CA4195: NewIfNullPr clsctacte
  loc_CA4198: from_stack_1 = clsctacte.PeriCtct
  loc_CA419D: FLdRfVar var_3E8
  loc_CA41A0: FLdPr Me
  loc_CA41A3: MemLdRfVar from_stack_1.global_52
  loc_CA41A6: NewIfNullPr clsctacte
  loc_CA41A9: from_stack_1 = clsctacte.BimeCtct
  loc_CA41AE: FLdRfVar var_3E4
  loc_CA41B1: FLdPr Me
  loc_CA41B4: MemLdRfVar from_stack_1.global_52
  loc_CA41B7: NewIfNullPr clsctacte
  loc_CA41BA: from_stack_1 = clsctacte.NumeCtct
  loc_CA41BF: FLdRfVar var_3EA
  loc_CA41C2: FLdPr Me
  loc_CA41C5: MemLdRfVar from_stack_1.global_52
  loc_CA41C8: NewIfNullPr clsctacte
  loc_CA41CB: from_stack_1 = clsctacte.PeriBole
  loc_CA41D0: FLdRfVar var_3F0
  loc_CA41D3: FLdPr Me
  loc_CA41D6: MemLdRfVar from_stack_1.global_52
  loc_CA41D9: NewIfNullPr clsctacte
  loc_CA41DC: from_stack_1 = clsctacte.NumeBole
  loc_CA41E1: FLdRfVar var_170
  loc_CA41E4: FLdPr Me
  loc_CA41E7: MemLdRfVar from_stack_1.global_52
  loc_CA41EA: NewIfNullPr clsctacte
  loc_CA41ED: from_stack_1 = clsctacte.TipoCtct
  loc_CA41F2: LitI2_Byte 0
  loc_CA41F4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA41F9: FStFPR8 var_408
  loc_CA41FC: FLdPr Me
  loc_CA41FF: VCallAd Control_ID_FeveCtctMsk
  loc_CA4202: FStAdFunc var_A0
  loc_CA4205: FLdPr var_A0
  loc_CA4208: LateIdLdVar var_B0 DispID_22 0
  loc_CA420F: PopAd
  loc_CA4211: FLdRfVar var_3F2
  loc_CA4214: FLdPr Me
  loc_CA4217: MemLdRfVar from_stack_1.global_52
  loc_CA421A: NewIfNullPr clsctacte
  loc_CA421D: from_stack_1 = clsctacte.PeriInfo
  loc_CA4222: FLdRfVar var_178
  loc_CA4225: FLdPr Me
  loc_CA4228: MemLdRfVar from_stack_1.global_52
  loc_CA422B: NewIfNullPr clsctacte
  loc_CA422E: from_stack_1 = clsctacte.CodiConc
  loc_CA4233: FLdRfVar var_3F8
  loc_CA4236: FLdPr Me
  loc_CA4239: MemLdRfVar from_stack_1.global_52
  loc_CA423C: NewIfNullPr clsctacte
  loc_CA423F: from_stack_1 = clsctacte.CodiFapa
  loc_CA4244: FLdRfVar var_3FA
  loc_CA4247: FLdPr Me
  loc_CA424A: MemLdRfVar from_stack_1.global_52
  loc_CA424D: NewIfNullPr clsctacte
  loc_CA4250: from_stack_1 = clsctacte.CuotDefa
  loc_CA4255: FLdRfVar var_400
  loc_CA4258: FLdPr Me
  loc_CA425B: MemLdRfVar from_stack_1.global_52
  loc_CA425E: NewIfNullPr clsctacte
  loc_CA4261: from_stack_1 = clsctacte.NumeApre
  loc_CA4266: FLdRfVar var_17C
  loc_CA4269: FLdPr Me
  loc_CA426C: VCallAd Control_ID_ExpeCtctTxt
  loc_CA426F: FStAdFunc var_16C
  loc_CA4272: FLdPr var_16C
  loc_CA4275:  = Me.Text
  loc_CA427A: FLdRfVar var_180
  loc_CA427D: FLdPr Me
  loc_CA4280: MemLdRfVar from_stack_1.global_52
  loc_CA4283: NewIfNullPr clsctacte
  loc_CA4286: from_stack_1 = clsctacte.TifaCtct
  loc_CA428B: FLdRfVar var_184
  loc_CA428E: FLdPr Me
  loc_CA4291: VCallAd Control_ID_DetaCtctTxt
  loc_CA4294: FStAdFunc var_1CC
  loc_CA4297: FLdPr var_1CC
  loc_CA429A:  = Me.Text
  loc_CA429F: FLdR8 var_98
  loc_CA42A2: LitI2_Byte 0
  loc_CA42A4: CR8I2
  loc_CA42A5: PopFPR8
  loc_CA42A6: ILdRf var_184
  loc_CA42A9: LitI4 0
  loc_CA42AE: LitI2_Byte 0
  loc_CA42B0: ILdRf var_180
  loc_CA42B3: ILdRf var_17C
  loc_CA42B6: LitI2_Byte &HB
  loc_CA42B8: CUI1I2
  loc_CA42BA: ILdRf var_400
  loc_CA42BD: FLdI2 var_3FA
  loc_CA42C0: ILdRf var_3F8
  loc_CA42C3: ILdRf var_178
  loc_CA42C6: FLdI2 var_3F2
  loc_CA42C9: LitI2_Byte 0
  loc_CA42CB: LitStr vbNullString
  loc_CA42CE: FLdRfVar var_B0
  loc_CA42D1: CStrVarTmp
  loc_CA42D2: CVarStr var_E0
  loc_CA42D5: PopAdLdVar
  loc_CA42D6: FLdFPR8 var_408
  loc_CA42D9: CVarDate var_C0
  loc_CA42DD: PopAdLdVar
  loc_CA42DE: ILdRf var_170
  loc_CA42E1: ILdRf var_3F0
  loc_CA42E4: FLdI2 var_3EA
  loc_CA42E7: LitI2_Byte 0
  loc_CA42E9: LitI2_Byte 0
  loc_CA42EB: CUI1I2
  loc_CA42ED: FLdI2 var_8C
  loc_CA42F0: ILdRf var_3E4
  loc_CA42F3: FLdI2 var_3E8
  loc_CA42F6: FLdI2 var_3E6
  loc_CA42F9: ILdRf var_128
  loc_CA42FC: FLdI2 var_9A
  loc_CA42FF: CUI1I2
  loc_CA4301: FLdPr Me
  loc_CA4304: MemLdRfVar from_stack_1.global_52
  loc_CA4307: NewIfNullPr clsctacte
  loc_CA430A: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA430F: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_CA431E: FFreeAd var_A0 = "": var_16C = ""
  loc_CA4327: FFreeVar var_B0 = ""
  loc_CA432E: Branch loc_CA4C3F
  loc_CA4331: LitStr "SELECT * FROM detafapa "
  loc_CA4334: LitStr " WHERE CodiFapa = "
  loc_CA4337: ConcatStr
  loc_CA4338: FStStrNoPop var_128
  loc_CA433B: FLdPr Me
  loc_CA433E: MemLdI2 global_68
  loc_CA4341: CI4UI1
  loc_CA4342: CVarI4
  loc_CA4346: PopAdLdVar
  loc_CA4347: LitVarI4
  loc_CA434F: PopAdLdVar
  loc_CA4350: FLdPr Me
  loc_CA4353: VCallAd Control_ID_ctacteFlex
  loc_CA4356: FStAdFunc var_A0
  loc_CA4359: FLdPr var_A0
  loc_CA435C: LateIdCallLdVar
  loc_CA4366: CStrVarTmp
  loc_CA4367: FStStrNoPop var_170
  loc_CA436A: ConcatStr
  loc_CA436B: FStStrNoPop var_178
  loc_CA436E: LitStr " AND CuotDefa = "
  loc_CA4371: ConcatStr
  loc_CA4372: FStStrNoPop var_17C
  loc_CA4375: FLdPr Me
  loc_CA4378: MemLdI2 global_68
  loc_CA437B: CI4UI1
  loc_CA437C: CVarI4
  loc_CA4380: PopAdLdVar
  loc_CA4381: LitVarI4
  loc_CA4389: PopAdLdVar
  loc_CA438A: FLdPr Me
  loc_CA438D: VCallAd Control_ID_ctacteFlex
  loc_CA4390: FStAdFunc var_16C
  loc_CA4393: FLdPr var_16C
  loc_CA4396: LateIdCallLdVar
  loc_CA43A0: CStrVarTmp
  loc_CA43A1: FStStrNoPop var_180
  loc_CA43A4: ConcatStr
  loc_CA43A5: FStStrNoPop var_184
  loc_CA43A8: FLdPr Me
  loc_CA43AB: MemLdRfVar from_stack_1.global_52
  loc_CA43AE: NewIfNullPr clsctacte
  loc_CA43B1: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA43B6: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_CA43C5: FFreeAd var_A0 = ""
  loc_CA43CC: FFreeVar var_B0 = ""
  loc_CA43D3: FLdRfVar var_3E4
  loc_CA43D6: FLdPr Me
  loc_CA43D9: MemLdRfVar from_stack_1.global_52
  loc_CA43DC: NewIfNullPr clsctacte
  loc_CA43DF: from_stack_1 = clsctacte.RecordCount
  loc_CA43E4: ILdRf var_3E4
  loc_CA43E7: LitI4 1
  loc_CA43EC: GeI4
  loc_CA43ED: BranchF loc_CA4C3F
  loc_CA43F0: FLdRfVar var_B0
  loc_CA43F3: FLdRfVar var_1CC
  loc_CA43F6: LitVarStr var_C0, "CodiFapa"
  loc_CA43FB: PopAdLdVar
  loc_CA43FC: FLdRfVar var_16C
  loc_CA43FF: FLdRfVar var_A0
  loc_CA4402: FLdPr Me
  loc_CA4405: MemLdRfVar from_stack_1.global_52
  loc_CA4408: NewIfNullPr clsctacte
  loc_CA440B: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA4410: FLdPr var_A0
  loc_CA4413:  = Me.Fields
  loc_CA4418: FLdPr var_16C
  loc_CA441B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA4420: FLdPr var_1CC
  loc_CA4423:  = Me.Value
  loc_CA4428: FLdRfVar var_B0
  loc_CA442B: CI4Var
  loc_CA442D: ImpAdCallUI1 Proc_270_146_A802BC()
  loc_CA4433: CI2UI1
  loc_CA4435: LitI2_Byte 1
  loc_CA4437: EqI2
  loc_CA4438: FFreeAd var_A0 = "": var_16C = ""
  loc_CA4441: FFree1Var var_B0 = ""
  loc_CA4444: BranchF loc_CA4C3F
  loc_CA4447: FLdPr Me
  loc_CA444A: MemLdI2 global_68
  loc_CA444D: CI4UI1
  loc_CA444E: CVarI4
  loc_CA4452: PopAdLdVar
  loc_CA4453: LitVarI4
  loc_CA445B: PopAdLdVar
  loc_CA445C: FLdPr Me
  loc_CA445F: VCallAd Control_ID_ctacteFlex
  loc_CA4462: FStAdFunc var_A0
  loc_CA4465: FLdPr var_A0
  loc_CA4468: LateIdCallLdVar
  loc_CA4472: CStrVarTmp
  loc_CA4473: CVarStr var_E0
  loc_CA4476: FLdRfVar var_100
  loc_CA4479: ImpAdCallFPR4  = Trim()
  loc_CA447E: LitI4 4
  loc_CA4483: FLdRfVar var_100
  loc_CA4486: FLdRfVar var_120
  loc_CA4489: ImpAdCallFPR4  = Right(, )
  loc_CA448E: FLdRfVar var_3E4
  loc_CA4491: FLdRfVar var_120
  loc_CA4494: CI2Var
  loc_CA4495: FLdPr Me
  loc_CA4498: MemLdRfVar from_stack_1.global_52
  loc_CA449B: NewIfNullPr clsctacte
  loc_CA449E: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_CA44A3: ILdRf var_3E4
  loc_CA44A6: FStR4 var_88
  loc_CA44A9: FFree1Ad var_A0
  loc_CA44AC: FFreeVar var_B0 = "": var_E0 = "": var_100 = ""
  loc_CA44B7: FLdRfVar var_B0
  loc_CA44BA: FLdRfVar var_1CC
  loc_CA44BD: LitVarStr var_C0, "CodiFapa"
  loc_CA44C2: PopAdLdVar
  loc_CA44C3: FLdRfVar var_16C
  loc_CA44C6: FLdRfVar var_A0
  loc_CA44C9: FLdPr Me
  loc_CA44CC: MemLdRfVar from_stack_1.global_52
  loc_CA44CF: NewIfNullPr clsctacte
  loc_CA44D2: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA44D7: FLdPr var_A0
  loc_CA44DA:  = Me.Fields
  loc_CA44DF: FLdPr var_16C
  loc_CA44E2: from_stack_2 = Me.Item(from_stack_1)
  loc_CA44E7: FLdPr var_1CC
  loc_CA44EA:  = Me.Value
  loc_CA44EF: FLdRfVar var_E0
  loc_CA44F2: FLdRfVar var_38C
  loc_CA44F5: LitVarStr var_D0, "CuotDefa"
  loc_CA44FA: PopAdLdVar
  loc_CA44FB: FLdRfVar var_2C4
  loc_CA44FE: FLdRfVar var_270
  loc_CA4501: FLdPr Me
  loc_CA4504: MemLdRfVar from_stack_1.global_52
  loc_CA4507: NewIfNullPr clsctacte
  loc_CA450A: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA450F: FLdPr var_270
  loc_CA4512:  = Me.Fields
  loc_CA4517: FLdPr var_2C4
  loc_CA451A: from_stack_2 = Me.Item(from_stack_1)
  loc_CA451F: FLdPr var_38C
  loc_CA4522:  = Me.Value
  loc_CA4527: LitI2_Byte 0
  loc_CA4529: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA452E: FStFPR8 var_408
  loc_CA4531: FLdRfVar var_100
  loc_CA4534: FLdFPR8 var_408
  loc_CA4537: CStrDate
  loc_CA4539: FStStrNoPop var_128
  loc_CA453C: LitStr "Anulada"
  loc_CA453F: FLdRfVar var_E0
  loc_CA4542: CI4Var
  loc_CA4544: FLdRfVar var_B0
  loc_CA4547: CI4Var
  loc_CA4549: FLdPr Me
  loc_CA454C: MemLdRfVar from_stack_1.global_56
  loc_CA454F: NewIfNullPr clsdetafapa
  loc_CA4552: from_stack_5v = clsdetafapa.ModificaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CA4557: FFree1Str var_128
  loc_CA455A: FFreeAd var_A0 = "": var_16C = "": var_270 = "": var_2C4 = "": var_1CC = ""
  loc_CA4569: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA4572: LitI2_Byte 1
  loc_CA4574: FStI2 var_8C
  loc_CA4577: FLdPr Me
  loc_CA457A: MemLdI2 global_68
  loc_CA457D: CI4UI1
  loc_CA457E: CVarI4
  loc_CA4582: PopAdLdVar
  loc_CA4583: LitVarI4
  loc_CA458B: PopAdLdVar
  loc_CA458C: FLdPr Me
  loc_CA458F: VCallAd Control_ID_ctacteFlex
  loc_CA4592: FStAdFunc var_A0
  loc_CA4595: FLdPr var_A0
  loc_CA4598: LateIdCallLdVar
  loc_CA45A2: CStrVarTmp
  loc_CA45A3: FStStrNoPop var_128
  loc_CA45A6: CR8Str
  loc_CA45A8: FStFPR8 var_98
  loc_CA45AB: FFree1Str var_128
  loc_CA45AE: FFree1Ad var_A0
  loc_CA45B1: FFree1Var var_B0 = ""
  loc_CA45B4: FLdPr Me
  loc_CA45B7: MemLdI2 global_68
  loc_CA45BA: CI4UI1
  loc_CA45BB: CVarI4
  loc_CA45BF: PopAdLdVar
  loc_CA45C0: LitVarI4
  loc_CA45C8: PopAdLdVar
  loc_CA45C9: FLdPr Me
  loc_CA45CC: VCallAd Control_ID_ctacteFlex
  loc_CA45CF: FStAdFunc var_A0
  loc_CA45D2: FLdPr var_A0
  loc_CA45D5: LateIdCallLdVar
  loc_CA45DF: PopAd
  loc_CA45E1: FLdPr Me
  loc_CA45E4: MemLdI2 global_68
  loc_CA45E7: CI4UI1
  loc_CA45E8: CVarI4
  loc_CA45EC: PopAdLdVar
  loc_CA45ED: LitVarI4
  loc_CA45F5: PopAdLdVar
  loc_CA45F6: FLdPr Me
  loc_CA45F9: VCallAd Control_ID_ctacteFlex
  loc_CA45FC: FStAdFunc var_16C
  loc_CA45FF: FLdPr var_16C
  loc_CA4602: LateIdCallLdVar
  loc_CA460C: PopAd
  loc_CA460E: FLdPr Me
  loc_CA4611: MemLdI2 global_68
  loc_CA4614: CI4UI1
  loc_CA4615: CVarI4
  loc_CA4619: PopAdLdVar
  loc_CA461A: LitVarI4
  loc_CA4622: PopAdLdVar
  loc_CA4623: FLdPr Me
  loc_CA4626: VCallAd Control_ID_ctacteFlex
  loc_CA4629: FStAdFunc var_1CC
  loc_CA462C: FLdPr var_1CC
  loc_CA462F: LateIdCallLdVar
  loc_CA4639: CStrVarTmp
  loc_CA463A: CVarStr var_120
  loc_CA463D: FLdRfVar var_1DC
  loc_CA4640: ImpAdCallFPR4  = Trim()
  loc_CA4645: LitI4 4
  loc_CA464A: FLdRfVar var_1DC
  loc_CA464D: FLdRfVar var_1EC
  loc_CA4650: ImpAdCallFPR4  = Right(, )
  loc_CA4655: FLdPr Me
  loc_CA4658: MemLdI2 global_68
  loc_CA465B: CI4UI1
  loc_CA465C: CVarI4
  loc_CA4660: PopAdLdVar
  loc_CA4661: LitVarI4
  loc_CA4669: PopAdLdVar
  loc_CA466A: FLdPr Me
  loc_CA466D: VCallAd Control_ID_ctacteFlex
  loc_CA4670: FStAdFunc var_270
  loc_CA4673: FLdPr var_270
  loc_CA4676: LateIdCallLdVar
  loc_CA4680: PopAd
  loc_CA4682: LitI4 1
  loc_CA4687: FLdPr Me
  loc_CA468A: MemLdI2 global_68
  loc_CA468D: CI4UI1
  loc_CA468E: CVarI4
  loc_CA4692: PopAdLdVar
  loc_CA4693: LitVarI4
  loc_CA469B: PopAdLdVar
  loc_CA469C: FLdPr Me
  loc_CA469F: VCallAd Control_ID_ctacteFlex
  loc_CA46A2: FStAdFunc var_2C4
  loc_CA46A5: FLdPr var_2C4
  loc_CA46A8: LateIdCallLdVar
  loc_CA46B2: CStrVarTmp
  loc_CA46B3: FStStrNoPop var_128
  loc_CA46B6: LitStr "/"
  loc_CA46B9: LitI4 0
  loc_CA46BE: FnInStr4
  loc_CA46C0: LitI4 1
  loc_CA46C5: SubI4
  loc_CA46C6: CVarI4
  loc_CA46CA: LitI4 1
  loc_CA46CF: FLdRfVar var_1FC
  loc_CA46D2: CStrVarTmp
  loc_CA46D3: CVarStr var_22C
  loc_CA46D6: FLdRfVar var_2D4
  loc_CA46D9: ImpAdCallFPR4  = Mid(, , )
  loc_CA46DE: LitI2_Byte 0
  loc_CA46E0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA46E5: FStFPR8 var_408
  loc_CA46E8: FLdPr Me
  loc_CA46EB: VCallAd Control_ID_FeveCtctMsk
  loc_CA46EE: FStAdFunc var_38C
  loc_CA46F1: FLdPr var_38C
  loc_CA46F4: LateIdLdVar var_2E8 DispID_15 0
  loc_CA46FB: PopAd
  loc_CA46FD: LitI2_Byte 0
  loc_CA46FF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA4704: CVarDate var_308
  loc_CA4708: FLdRfVar var_318
  loc_CA470B: ImpAdCallFPR4  = Year()
  loc_CA4710: FLdRfVar var_328
  loc_CA4713: FLdRfVar var_414
  loc_CA4716: LitVarStr var_338, "CodiFapa"
  loc_CA471B: PopAdLdVar
  loc_CA471C: FLdRfVar var_410
  loc_CA471F: FLdRfVar var_40C
  loc_CA4722: FLdPr Me
  loc_CA4725: MemLdRfVar from_stack_1.global_52
  loc_CA4728: NewIfNullPr clsctacte
  loc_CA472B: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA4730: FLdPr var_40C
  loc_CA4733:  = Me.Fields
  loc_CA4738: FLdPr var_410
  loc_CA473B: from_stack_2 = Me.Item(from_stack_1)
  loc_CA4740: FLdPr var_414
  loc_CA4743:  = Me.Value
  loc_CA4748: FLdRfVar var_328
  loc_CA474B: CI4Var
  loc_CA474D: ImpAdCallI2 Proc_270_147_A7D530()
  loc_CA4752: FStStr var_188
  loc_CA4755: FLdRfVar var_3E4
  loc_CA4758: FLdPr Me
  loc_CA475B: MemLdRfVar from_stack_1.global_52
  loc_CA475E: NewIfNullPr clsctacte
  loc_CA4761: from_stack_1 = clsctacte.CodiFapa
  loc_CA4766: FLdRfVar var_9A
  loc_CA4769: FLdPr Me
  loc_CA476C: MemLdRfVar from_stack_1.global_52
  loc_CA476F: NewIfNullPr clsctacte
  loc_CA4772: from_stack_1 = clsctacte.CuotDefa
  loc_CA4777: FLdRfVar var_170
  loc_CA477A: FLdPr Me
  loc_CA477D: VCallAd Control_ID_ExpeCtctTxt
  loc_CA4780: FStAdFunc var_418
  loc_CA4783: FLdPr var_418
  loc_CA4786:  = Me.Text
  loc_CA478B: FLdRfVar var_178
  loc_CA478E: FLdPr Me
  loc_CA4791: VCallAd Control_ID_DetaCtctTxt
  loc_CA4794: FStAdFunc var_41C
  loc_CA4797: FLdPr var_41C
  loc_CA479A:  = Me.Text
  loc_CA479F: LitI2_Byte 0
  loc_CA47A1: CR8I2
  loc_CA47A2: PopFPR8
  loc_CA47A3: FLdR8 var_98
  loc_CA47A6: ILdRf var_178
  loc_CA47A9: LitI4 0
  loc_CA47AE: LitI2_Byte 0
  loc_CA47B0: LitStr vbNullString
  loc_CA47B3: ILdRf var_170
  loc_CA47B6: LitI2_Byte 1
  loc_CA47B8: CUI1I2
  loc_CA47BA: LitI4 0
  loc_CA47BF: FLdI2 var_9A
  loc_CA47C2: ILdRf var_3E4
  loc_CA47C5: FLdZeroAd var_188
  loc_CA47C8: FStStrNoPop var_184
  loc_CA47CB: FLdRfVar var_318
  loc_CA47CE: CI2Var
  loc_CA47CF: LitI2_Byte 0
  loc_CA47D1: LitStr vbNullString
  loc_CA47D4: FLdRfVar var_2E8
  loc_CA47D7: CStrVarTmp
  loc_CA47D8: CVarStr var_348
  loc_CA47DB: PopAdLdVar
  loc_CA47DC: FLdFPR8 var_408
  loc_CA47DF: CVarDate var_358
  loc_CA47E3: PopAdLdVar
  loc_CA47E4: LitStr "Aforos Varios"
  loc_CA47E7: LitI4 0
  loc_CA47EC: LitI2_Byte 0
  loc_CA47EE: LitI2_Byte 0
  loc_CA47F0: LitI2_Byte 0
  loc_CA47F2: CUI1I2
  loc_CA47F4: FLdI2 var_8C
  loc_CA47F7: ILdRf var_88
  loc_CA47FA: FLdRfVar var_2D4
  loc_CA47FD: CI2Var
  loc_CA47FE: FLdRfVar var_1EC
  loc_CA4801: CI2Var
  loc_CA4802: FLdRfVar var_E0
  loc_CA4805: CStrVarTmp
  loc_CA4806: FStStrNoPop var_180
  loc_CA4809: FLdRfVar var_B0
  loc_CA480C: CStrVarTmp
  loc_CA480D: FStStrNoPop var_17C
  loc_CA4810: CUI1Str
  loc_CA4812: FLdPr Me
  loc_CA4815: MemLdRfVar from_stack_1.global_52
  loc_CA4818: NewIfNullPr clsctacte
  loc_CA481B: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA4820: FFreeStr var_128 = "": var_17C = "": var_180 = "": var_184 = "": var_170 = "": var_178 = ""
  loc_CA4831: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_2C4 = "": var_38C = "": var_40C = "": var_410 = "": var_414 = "": var_418 = ""
  loc_CA484A: FFreeVar var_B0 = "": var_E0 = "": var_100 = "": var_120 = "": var_1DC = "": var_1FC = "": var_20C = "": var_22C = "": var_280 = "": var_2E8 = "": var_308 = "": var_328 = "": var_1EC = "": var_2D4 = "": var_348 = ""
  loc_CA486D: LitI2_Byte 2
  loc_CA486F: FStI2 var_8C
  loc_CA4872: FLdPr Me
  loc_CA4875: MemLdI2 global_68
  loc_CA4878: CI4UI1
  loc_CA4879: CVarI4
  loc_CA487D: PopAdLdVar
  loc_CA487E: LitVarI4
  loc_CA4886: PopAdLdVar
  loc_CA4887: FLdPr Me
  loc_CA488A: VCallAd Control_ID_ctacteFlex
  loc_CA488D: FStAdFunc var_A0
  loc_CA4890: FLdPr var_A0
  loc_CA4893: LateIdCallLdVar
  loc_CA489D: PopAd
  loc_CA489F: FLdPr Me
  loc_CA48A2: MemLdI2 global_68
  loc_CA48A5: CI4UI1
  loc_CA48A6: CVarI4
  loc_CA48AA: PopAdLdVar
  loc_CA48AB: LitVarI4
  loc_CA48B3: PopAdLdVar
  loc_CA48B4: FLdPr Me
  loc_CA48B7: VCallAd Control_ID_ctacteFlex
  loc_CA48BA: FStAdFunc var_16C
  loc_CA48BD: FLdPr var_16C
  loc_CA48C0: LateIdCallLdVar
  loc_CA48CA: PopAd
  loc_CA48CC: FLdPr Me
  loc_CA48CF: MemLdI2 global_68
  loc_CA48D2: CI4UI1
  loc_CA48D3: CVarI4
  loc_CA48D7: PopAdLdVar
  loc_CA48D8: LitVarI4
  loc_CA48E0: PopAdLdVar
  loc_CA48E1: FLdPr Me
  loc_CA48E4: VCallAd Control_ID_ctacteFlex
  loc_CA48E7: FStAdFunc var_1CC
  loc_CA48EA: FLdPr var_1CC
  loc_CA48ED: LateIdCallLdVar
  loc_CA48F7: CStrVarTmp
  loc_CA48F8: CVarStr var_120
  loc_CA48FB: FLdRfVar var_1DC
  loc_CA48FE: ImpAdCallFPR4  = Trim()
  loc_CA4903: LitI4 4
  loc_CA4908: FLdRfVar var_1DC
  loc_CA490B: FLdRfVar var_1EC
  loc_CA490E: ImpAdCallFPR4  = Right(, )
  loc_CA4913: FLdPr Me
  loc_CA4916: MemLdI2 global_68
  loc_CA4919: CI4UI1
  loc_CA491A: CVarI4
  loc_CA491E: PopAdLdVar
  loc_CA491F: LitVarI4
  loc_CA4927: PopAdLdVar
  loc_CA4928: FLdPr Me
  loc_CA492B: VCallAd Control_ID_ctacteFlex
  loc_CA492E: FStAdFunc var_270
  loc_CA4931: FLdPr var_270
  loc_CA4934: LateIdCallLdVar
  loc_CA493E: PopAd
  loc_CA4940: LitI4 1
  loc_CA4945: FLdPr Me
  loc_CA4948: MemLdI2 global_68
  loc_CA494B: CI4UI1
  loc_CA494C: CVarI4
  loc_CA4950: PopAdLdVar
  loc_CA4951: LitVarI4
  loc_CA4959: PopAdLdVar
  loc_CA495A: FLdPr Me
  loc_CA495D: VCallAd Control_ID_ctacteFlex
  loc_CA4960: FStAdFunc var_2C4
  loc_CA4963: FLdPr var_2C4
  loc_CA4966: LateIdCallLdVar
  loc_CA4970: CStrVarTmp
  loc_CA4971: FStStrNoPop var_128
  loc_CA4974: LitStr "/"
  loc_CA4977: LitI4 0
  loc_CA497C: FnInStr4
  loc_CA497E: LitI4 1
  loc_CA4983: SubI4
  loc_CA4984: CVarI4
  loc_CA4988: LitI4 1
  loc_CA498D: FLdRfVar var_1FC
  loc_CA4990: CStrVarTmp
  loc_CA4991: CVarStr var_22C
  loc_CA4994: FLdRfVar var_2D4
  loc_CA4997: ImpAdCallFPR4  = Mid(, , )
  loc_CA499C: LitI2_Byte 0
  loc_CA499E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA49A3: FStFPR8 var_408
  loc_CA49A6: FLdPr Me
  loc_CA49A9: VCallAd Control_ID_FeveCtctMsk
  loc_CA49AC: FStAdFunc var_38C
  loc_CA49AF: FLdPr var_38C
  loc_CA49B2: LateIdLdVar var_2E8 DispID_15 0
  loc_CA49B9: PopAd
  loc_CA49BB: LitI2_Byte 0
  loc_CA49BD: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA49C2: CVarDate var_308
  loc_CA49C6: FLdRfVar var_318
  loc_CA49C9: ImpAdCallFPR4  = Year()
  loc_CA49CE: FLdRfVar var_328
  loc_CA49D1: FLdRfVar var_414
  loc_CA49D4: LitVarStr var_338, "CodiFapa"
  loc_CA49D9: PopAdLdVar
  loc_CA49DA: FLdRfVar var_410
  loc_CA49DD: FLdRfVar var_40C
  loc_CA49E0: FLdPr Me
  loc_CA49E3: MemLdRfVar from_stack_1.global_52
  loc_CA49E6: NewIfNullPr clsctacte
  loc_CA49E9: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA49EE: FLdPr var_40C
  loc_CA49F1:  = Me.Fields
  loc_CA49F6: FLdPr var_410
  loc_CA49F9: from_stack_2 = Me.Item(from_stack_1)
  loc_CA49FE: FLdPr var_414
  loc_CA4A01:  = Me.Value
  loc_CA4A06: FLdRfVar var_328
  loc_CA4A09: CI4Var
  loc_CA4A0B: ImpAdCallI2 Proc_270_147_A7D530()
  loc_CA4A10: FStStr var_188
  loc_CA4A13: FLdRfVar var_3E4
  loc_CA4A16: FLdPr Me
  loc_CA4A19: MemLdRfVar from_stack_1.global_52
  loc_CA4A1C: NewIfNullPr clsctacte
  loc_CA4A1F: from_stack_1 = clsctacte.CodiFapa
  loc_CA4A24: FLdRfVar var_9A
  loc_CA4A27: FLdPr Me
  loc_CA4A2A: MemLdRfVar from_stack_1.global_52
  loc_CA4A2D: NewIfNullPr clsctacte
  loc_CA4A30: from_stack_1 = clsctacte.CuotDefa
  loc_CA4A35: FLdRfVar var_170
  loc_CA4A38: FLdPr Me
  loc_CA4A3B: VCallAd Control_ID_ExpeCtctTxt
  loc_CA4A3E: FStAdFunc var_418
  loc_CA4A41: FLdPr var_418
  loc_CA4A44:  = Me.Text
  loc_CA4A49: FLdRfVar var_178
  loc_CA4A4C: FLdPr Me
  loc_CA4A4F: VCallAd Control_ID_DetaCtctTxt
  loc_CA4A52: FStAdFunc var_41C
  loc_CA4A55: FLdPr var_41C
  loc_CA4A58:  = Me.Text
  loc_CA4A5D: FLdR8 var_98
  loc_CA4A60: LitI2_Byte 0
  loc_CA4A62: CR8I2
  loc_CA4A63: PopFPR8
  loc_CA4A64: ILdRf var_178
  loc_CA4A67: LitI4 0
  loc_CA4A6C: LitI2_Byte 0
  loc_CA4A6E: LitStr vbNullString
  loc_CA4A71: ILdRf var_170
  loc_CA4A74: LitI2_Byte &HB
  loc_CA4A76: CUI1I2
  loc_CA4A78: LitI4 0
  loc_CA4A7D: FLdI2 var_9A
  loc_CA4A80: ILdRf var_3E4
  loc_CA4A83: FLdZeroAd var_188
  loc_CA4A86: FStStrNoPop var_184
  loc_CA4A89: FLdRfVar var_318
  loc_CA4A8C: CI2Var
  loc_CA4A8D: LitI2_Byte 0
  loc_CA4A8F: LitStr vbNullString
  loc_CA4A92: FLdRfVar var_2E8
  loc_CA4A95: CStrVarTmp
  loc_CA4A96: CVarStr var_348
  loc_CA4A99: PopAdLdVar
  loc_CA4A9A: FLdFPR8 var_408
  loc_CA4A9D: CVarDate var_358
  loc_CA4AA1: PopAdLdVar
  loc_CA4AA2: LitStr "Aforos Varios"
  loc_CA4AA5: LitI4 0
  loc_CA4AAA: LitI2_Byte 0
  loc_CA4AAC: LitI2_Byte 0
  loc_CA4AAE: LitI2_Byte 0
  loc_CA4AB0: CUI1I2
  loc_CA4AB2: FLdI2 var_8C
  loc_CA4AB5: ILdRf var_88
  loc_CA4AB8: FLdRfVar var_2D4
  loc_CA4ABB: CI2Var
  loc_CA4ABC: FLdRfVar var_1EC
  loc_CA4ABF: CI2Var
  loc_CA4AC0: FLdRfVar var_E0
  loc_CA4AC3: CStrVarTmp
  loc_CA4AC4: FStStrNoPop var_180
  loc_CA4AC7: FLdRfVar var_B0
  loc_CA4ACA: CStrVarTmp
  loc_CA4ACB: FStStrNoPop var_17C
  loc_CA4ACE: CUI1Str
  loc_CA4AD0: FLdPr Me
  loc_CA4AD3: MemLdRfVar from_stack_1.global_52
  loc_CA4AD6: NewIfNullPr clsctacte
  loc_CA4AD9: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA4ADE: FFreeStr var_128 = "": var_17C = "": var_180 = "": var_184 = "": var_170 = "": var_178 = ""
  loc_CA4AEF: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_2C4 = "": var_38C = "": var_40C = "": var_410 = "": var_414 = "": var_418 = ""
  loc_CA4B08: FFreeVar var_B0 = "": var_E0 = "": var_100 = "": var_120 = "": var_1DC = "": var_1FC = "": var_20C = "": var_22C = "": var_280 = "": var_2E8 = "": var_308 = "": var_328 = "": var_1EC = "": var_2D4 = "": var_348 = ""
  loc_CA4B2B: FLdRfVar var_9A
  loc_CA4B2E: FLdRfVar var_B0
  loc_CA4B31: FLdRfVar var_1CC
  loc_CA4B34: LitVarStr var_C0, "CodiFapa"
  loc_CA4B39: PopAdLdVar
  loc_CA4B3A: FLdRfVar var_16C
  loc_CA4B3D: FLdRfVar var_A0
  loc_CA4B40: FLdPr Me
  loc_CA4B43: MemLdRfVar from_stack_1.global_52
  loc_CA4B46: NewIfNullPr clsctacte
  loc_CA4B49: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA4B4E: FLdPr var_A0
  loc_CA4B51:  = Me.Fields
  loc_CA4B56: FLdPr var_16C
  loc_CA4B59: from_stack_2 = Me.Item(from_stack_1)
  loc_CA4B5E: FLdPr var_1CC
  loc_CA4B61:  = Me.Value
  loc_CA4B66: FLdRfVar var_B0
  loc_CA4B69: CI4Var
  loc_CA4B6B: FLdPr Me
  loc_CA4B6E: MemLdRfVar from_stack_1.global_56
  loc_CA4B71: NewIfNullPr clsdetafapa
  loc_CA4B74: from_stack_2v = clsdetafapa.BuscaCuotasImpagas(from_stack_1v)
  loc_CA4B79: FLdI2 var_9A
  loc_CA4B7C: LitI2_Byte &HFF
  loc_CA4B7E: EqI2
  loc_CA4B7F: FFreeAd var_A0 = "": var_16C = ""
  loc_CA4B88: FFree1Var var_B0 = ""
  loc_CA4B8B: BranchF loc_CA4C3C
  loc_CA4B8E: FLdRfVar var_B0
  loc_CA4B91: FLdRfVar var_1CC
  loc_CA4B94: LitVarStr var_C0, "CodiFapa"
  loc_CA4B99: PopAdLdVar
  loc_CA4B9A: FLdRfVar var_16C
  loc_CA4B9D: FLdRfVar var_A0
  loc_CA4BA0: FLdPr Me
  loc_CA4BA3: MemLdRfVar from_stack_1.global_52
  loc_CA4BA6: NewIfNullPr clsctacte
  loc_CA4BA9: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA4BAE: FLdPr var_A0
  loc_CA4BB1:  = Me.Fields
  loc_CA4BB6: FLdPr var_16C
  loc_CA4BB9: from_stack_2 = Me.Item(from_stack_1)
  loc_CA4BBE: FLdPr var_1CC
  loc_CA4BC1:  = Me.Value
  loc_CA4BC6: FLdRfVar var_E0
  loc_CA4BC9: FLdRfVar var_38C
  loc_CA4BCC: LitVarStr var_D0, "CuotDefa"
  loc_CA4BD1: PopAdLdVar
  loc_CA4BD2: FLdRfVar var_2C4
  loc_CA4BD5: FLdRfVar var_270
  loc_CA4BD8: FLdPr Me
  loc_CA4BDB: MemLdRfVar from_stack_1.global_52
  loc_CA4BDE: NewIfNullPr clsctacte
  loc_CA4BE1: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA4BE6: FLdPr var_270
  loc_CA4BE9:  = Me.Fields
  loc_CA4BEE: FLdPr var_2C4
  loc_CA4BF1: from_stack_2 = Me.Item(from_stack_1)
  loc_CA4BF6: FLdPr var_38C
  loc_CA4BF9:  = Me.Value
  loc_CA4BFE: FLdRfVar var_100
  loc_CA4C01: LitStr "POR CREDITO MANUAL"
  loc_CA4C04: LitStr "Anulada"
  loc_CA4C07: FLdRfVar var_E0
  loc_CA4C0A: CStrVarTmp
  loc_CA4C0B: FStStrNoPop var_128
  loc_CA4C0E: FLdRfVar var_B0
  loc_CA4C11: CI4Var
  loc_CA4C13: FLdPr Me
  loc_CA4C16: MemLdRfVar from_stack_1.global_60
  loc_CA4C19: NewIfNullPr clsfacipago
  loc_CA4C1C: from_stack_5v = clsfacipago.ModificaFacilidad(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CA4C21: FFree1Str var_128
  loc_CA4C24: FFreeAd var_A0 = "": var_16C = "": var_270 = "": var_2C4 = "": var_1CC = ""
  loc_CA4C33: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA4C3C: Branch loc_CA4C3F
  loc_CA4C3F: FLdPr Me
  loc_CA4C42: MemLdI2 global_68
  loc_CA4C45: CI4UI1
  loc_CA4C46: CVarI4
  loc_CA4C4A: PopAdLdVar
  loc_CA4C4B: LitVarI4
  loc_CA4C53: PopAdLdVar
  loc_CA4C54: FLdPr Me
  loc_CA4C57: VCallAd Control_ID_ctacteFlex
  loc_CA4C5A: FStAdFunc var_A0
  loc_CA4C5D: FLdPr var_A0
  loc_CA4C60: LateIdCallLdVar
  loc_CA4C6A: CStrVarTmp
  loc_CA4C6B: FStStrNoPop var_128
  loc_CA4C6E: LitStr "SS"
  loc_CA4C71: EqStr
  loc_CA4C73: FFree1Str var_128
  loc_CA4C76: FFree1Ad var_A0
  loc_CA4C79: FFree1Var var_B0 = ""
  loc_CA4C7C: BranchF loc_CA52EF
  loc_CA4C7F: FLdPr Me
  loc_CA4C82: MemLdI2 global_68
  loc_CA4C85: CI4UI1
  loc_CA4C86: CVarI4
  loc_CA4C8A: PopAdLdVar
  loc_CA4C8B: LitVarI4
  loc_CA4C93: PopAdLdVar
  loc_CA4C94: FLdPr Me
  loc_CA4C97: VCallAd Control_ID_ctacteFlex
  loc_CA4C9A: FStAdFunc var_1CC
  loc_CA4C9D: FLdPr var_1CC
  loc_CA4CA0: LateIdCallLdVar
  loc_CA4CAA: CStrVarTmp
  loc_CA4CAB: CVarStr var_120
  loc_CA4CAE: FLdRfVar var_1DC
  loc_CA4CB1: ImpAdCallFPR4  = Trim()
  loc_CA4CB6: FLdPr Me
  loc_CA4CB9: MemLdI2 global_68
  loc_CA4CBC: CI4UI1
  loc_CA4CBD: CVarI4
  loc_CA4CC1: PopAdLdVar
  loc_CA4CC2: LitVarI4
  loc_CA4CCA: PopAdLdVar
  loc_CA4CCB: FLdPr Me
  loc_CA4CCE: VCallAd Control_ID_ctacteFlex
  loc_CA4CD1: FStAdFunc var_270
  loc_CA4CD4: FLdPr var_270
  loc_CA4CD7: LateIdCallLdVar
  loc_CA4CE1: PopAd
  loc_CA4CE3: LitStr "SELECT * FROM ctacte "
  loc_CA4CE6: LitStr " WHERE ctacte.CodiOfic = "
  loc_CA4CE9: ConcatStr
  loc_CA4CEA: FStStrNoPop var_128
  loc_CA4CED: FLdPr Me
  loc_CA4CF0: MemLdI2 global_68
  loc_CA4CF3: CI4UI1
  loc_CA4CF4: CVarI4
  loc_CA4CF8: PopAdLdVar
  loc_CA4CF9: LitVarI4
  loc_CA4D01: PopAdLdVar
  loc_CA4D02: FLdPr Me
  loc_CA4D05: VCallAd Control_ID_ctacteFlex
  loc_CA4D08: FStAdFunc var_A0
  loc_CA4D0B: FLdPr var_A0
  loc_CA4D0E: LateIdCallLdVar
  loc_CA4D18: CStrVarTmp
  loc_CA4D19: FStStrNoPop var_170
  loc_CA4D1C: ConcatStr
  loc_CA4D1D: FStStrNoPop var_178
  loc_CA4D20: LitStr " AND ctacte.CuenCtct = '"
  loc_CA4D23: ConcatStr
  loc_CA4D24: FStStrNoPop var_17C
  loc_CA4D27: FLdPr Me
  loc_CA4D2A: MemLdI2 global_68
  loc_CA4D2D: CI4UI1
  loc_CA4D2E: CVarI4
  loc_CA4D32: PopAdLdVar
  loc_CA4D33: LitVarI4
  loc_CA4D3B: PopAdLdVar
  loc_CA4D3C: FLdPr Me
  loc_CA4D3F: VCallAd Control_ID_ctacteFlex
  loc_CA4D42: FStAdFunc var_16C
  loc_CA4D45: FLdPr var_16C
  loc_CA4D48: LateIdCallLdVar
  loc_CA4D52: CStrVarTmp
  loc_CA4D53: FStStrNoPop var_180
  loc_CA4D56: ConcatStr
  loc_CA4D57: FStStrNoPop var_184
  loc_CA4D5A: LitStr "'"
  loc_CA4D5D: ConcatStr
  loc_CA4D5E: FStStrNoPop var_188
  loc_CA4D61: LitStr " AND ctacte.PeriCtct = "
  loc_CA4D64: ConcatStr
  loc_CA4D65: CVarStr var_1FC
  loc_CA4D68: LitI4 4
  loc_CA4D6D: FLdRfVar var_1DC
  loc_CA4D70: FLdRfVar var_1EC
  loc_CA4D73: ImpAdCallFPR4  = Right(, )
  loc_CA4D78: FLdRfVar var_1EC
  loc_CA4D7B: ConcatVar var_20C
  loc_CA4D7F: LitVarStr var_21C, " AND ctacte.BimeCtct = "
  loc_CA4D84: ConcatVar var_22C
  loc_CA4D88: LitI4 1
  loc_CA4D8D: FLdPr Me
  loc_CA4D90: MemLdI2 global_68
  loc_CA4D93: CI4UI1
  loc_CA4D94: CVarI4
  loc_CA4D98: PopAdLdVar
  loc_CA4D99: LitVarI4
  loc_CA4DA1: PopAdLdVar
  loc_CA4DA2: FLdPr Me
  loc_CA4DA5: VCallAd Control_ID_ctacteFlex
  loc_CA4DA8: FStAdFunc var_2C4
  loc_CA4DAB: FLdPr var_2C4
  loc_CA4DAE: LateIdCallLdVar
  loc_CA4DB8: CStrVarTmp
  loc_CA4DB9: FStStrNoPop var_2D8
  loc_CA4DBC: LitStr "/"
  loc_CA4DBF: LitI4 0
  loc_CA4DC4: FnInStr4
  loc_CA4DC6: LitI4 1
  loc_CA4DCB: SubI4
  loc_CA4DCC: CVarI4
  loc_CA4DD0: LitI4 1
  loc_CA4DD5: FLdRfVar var_280
  loc_CA4DD8: CStrVarTmp
  loc_CA4DD9: CVarStr var_2E8
  loc_CA4DDC: FLdRfVar var_318
  loc_CA4DDF: ImpAdCallFPR4  = Mid(, , )
  loc_CA4DE4: FLdRfVar var_318
  loc_CA4DE7: ConcatVar var_328
  loc_CA4DEB: LitVarStr var_338, " AND ctacte.NumeCtct = "
  loc_CA4DF0: ConcatVar var_348
  loc_CA4DF4: FLdPr Me
  loc_CA4DF7: MemLdI2 global_68
  loc_CA4DFA: CI4UI1
  loc_CA4DFB: CVarI4
  loc_CA4DFF: PopAdLdVar
  loc_CA4E00: LitVarI4
  loc_CA4E08: PopAdLdVar
  loc_CA4E09: FLdPr Me
  loc_CA4E0C: VCallAd Control_ID_ctacteFlex
  loc_CA4E0F: FStAdFunc var_38C
  loc_CA4E12: FLdPr var_38C
  loc_CA4E15: LateIdCallLdVar
  loc_CA4E1F: CStrVarTmp
  loc_CA4E20: CVarStr var_3AC
  loc_CA4E23: ConcatVar var_3BC
  loc_CA4E27: LitVarStr var_3CC, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_CA4E2C: ConcatVar var_3DC
  loc_CA4E30: CStrVarVal var_3E0
  loc_CA4E34: FLdPr Me
  loc_CA4E37: MemLdRfVar from_stack_1.global_52
  loc_CA4E3A: NewIfNullPr clsctacte
  loc_CA4E3D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA4E42: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_2D8 = ""
  loc_CA4E57: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_2C4 = ""
  loc_CA4E66: FFreeVar var_B0 = "": var_E0 = "": var_100 = "": var_120 = "": var_1DC = "": var_1FC = "": var_1EC = "": var_20C = "": var_280 = "": var_2D4 = "": var_2E8 = "": var_308 = "": var_22C = "": var_318 = "": var_328 = "": var_39C = "": var_348 = "": var_3AC = "": var_3BC = ""
  loc_CA4E91: FLdRfVar var_3E4
  loc_CA4E94: FLdPr Me
  loc_CA4E97: MemLdRfVar from_stack_1.global_52
  loc_CA4E9A: NewIfNullPr clsctacte
  loc_CA4E9D: from_stack_1 = clsctacte.RecordCount
  loc_CA4EA2: ILdRf var_3E4
  loc_CA4EA5: LitI4 1
  loc_CA4EAA: GeI4
  loc_CA4EAB: BranchF loc_CA52EF
  loc_CA4EAE: FLdPr Me
  loc_CA4EB1: MemLdRfVar from_stack_1.global_52
  loc_CA4EB4: NewIfNullPr clsctacte
  loc_CA4EB7: Call clsctacte.MoveLast()
  loc_CA4EBC: FLdRfVar var_9A
  loc_CA4EBF: FLdPr Me
  loc_CA4EC2: MemLdRfVar from_stack_1.global_52
  loc_CA4EC5: NewIfNullPr clsctacte
  loc_CA4EC8: from_stack_1 = clsctacte.MoviCtct
  loc_CA4ECD: FLdI2 var_9A
  loc_CA4ED0: LitI2_Byte 1
  loc_CA4ED2: AddI2
  loc_CA4ED3: FStI2 var_8C
  loc_CA4ED6: LitVarStr var_C0, vbNullString
  loc_CA4EDB: PopAdLdVar
  loc_CA4EDC: FLdPr Me
  loc_CA4EDF: VCallAd Control_ID_FeveCtctMsk
  loc_CA4EE2: FStAdFunc var_A0
  loc_CA4EE5: FLdPr var_A0
  loc_CA4EE8: LateIdSt
  loc_CA4EED: FFree1Ad var_A0
  loc_CA4EF0: LitStr "Municipalidad de Guaymallén"
  loc_CA4EF3: LitStr "Municipalidad de Guaymallén"
  loc_CA4EF6: EqStr
  loc_CA4EF8: BranchF loc_CA5110
  loc_CA4EFB: FLdRfVar var_9A
  loc_CA4EFE: FLdPr Me
  loc_CA4F01: MemLdRfVar from_stack_1.global_52
  loc_CA4F04: NewIfNullPr clsctacte
  loc_CA4F07: from_stack_1 = clsctacte.CodiOfic
  loc_CA4F0C: FLdRfVar var_128
  loc_CA4F0F: FLdPr Me
  loc_CA4F12: MemLdRfVar from_stack_1.global_52
  loc_CA4F15: NewIfNullPr clsctacte
  loc_CA4F18: from_stack_1 = clsctacte.CuenCtct
  loc_CA4F1D: FLdRfVar var_3E6
  loc_CA4F20: FLdPr Me
  loc_CA4F23: MemLdRfVar from_stack_1.global_52
  loc_CA4F26: NewIfNullPr clsctacte
  loc_CA4F29: from_stack_1 = clsctacte.PeriCtct
  loc_CA4F2E: FLdRfVar var_3E8
  loc_CA4F31: FLdPr Me
  loc_CA4F34: MemLdRfVar from_stack_1.global_52
  loc_CA4F37: NewIfNullPr clsctacte
  loc_CA4F3A: from_stack_1 = clsctacte.BimeCtct
  loc_CA4F3F: FLdRfVar var_3E4
  loc_CA4F42: FLdPr Me
  loc_CA4F45: MemLdRfVar from_stack_1.global_52
  loc_CA4F48: NewIfNullPr clsctacte
  loc_CA4F4B: from_stack_1 = clsctacte.NumeCtct
  loc_CA4F50: FLdRfVar var_3EA
  loc_CA4F53: FLdPr Me
  loc_CA4F56: MemLdRfVar from_stack_1.global_52
  loc_CA4F59: NewIfNullPr clsctacte
  loc_CA4F5C: from_stack_1 = clsctacte.PeriBole
  loc_CA4F61: FLdRfVar var_3F0
  loc_CA4F64: FLdPr Me
  loc_CA4F67: MemLdRfVar from_stack_1.global_52
  loc_CA4F6A: NewIfNullPr clsctacte
  loc_CA4F6D: from_stack_1 = clsctacte.NumeBole
  loc_CA4F72: FLdRfVar var_170
  loc_CA4F75: FLdPr Me
  loc_CA4F78: MemLdRfVar from_stack_1.global_52
  loc_CA4F7B: NewIfNullPr clsctacte
  loc_CA4F7E: from_stack_1 = clsctacte.TipoCtct
  loc_CA4F83: LitI2_Byte 0
  loc_CA4F85: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA4F8A: FStFPR8 var_408
  loc_CA4F8D: FLdPr Me
  loc_CA4F90: VCallAd Control_ID_FeveCtctMsk
  loc_CA4F93: FStAdFunc var_A0
  loc_CA4F96: FLdPr var_A0
  loc_CA4F99: LateIdLdVar var_B0 DispID_22 0
  loc_CA4FA0: PopAd
  loc_CA4FA2: FLdRfVar var_3F2
  loc_CA4FA5: FLdPr Me
  loc_CA4FA8: MemLdRfVar from_stack_1.global_52
  loc_CA4FAB: NewIfNullPr clsctacte
  loc_CA4FAE: from_stack_1 = clsctacte.PeriInfo
  loc_CA4FB3: FLdRfVar var_178
  loc_CA4FB6: FLdPr Me
  loc_CA4FB9: MemLdRfVar from_stack_1.global_52
  loc_CA4FBC: NewIfNullPr clsctacte
  loc_CA4FBF: from_stack_1 = clsctacte.CodiConc
  loc_CA4FC4: FLdRfVar var_3F8
  loc_CA4FC7: FLdPr Me
  loc_CA4FCA: MemLdRfVar from_stack_1.global_52
  loc_CA4FCD: NewIfNullPr clsctacte
  loc_CA4FD0: from_stack_1 = clsctacte.CodiFapa
  loc_CA4FD5: FLdRfVar var_3FA
  loc_CA4FD8: FLdPr Me
  loc_CA4FDB: MemLdRfVar from_stack_1.global_52
  loc_CA4FDE: NewIfNullPr clsctacte
  loc_CA4FE1: from_stack_1 = clsctacte.CuotDefa
  loc_CA4FE6: FLdRfVar var_400
  loc_CA4FE9: FLdPr Me
  loc_CA4FEC: MemLdRfVar from_stack_1.global_52
  loc_CA4FEF: NewIfNullPr clsctacte
  loc_CA4FF2: from_stack_1 = clsctacte.NumeApre
  loc_CA4FF7: FLdRfVar var_17C
  loc_CA4FFA: FLdPr Me
  loc_CA4FFD: VCallAd Control_ID_ExpeCtctTxt
  loc_CA5000: FStAdFunc var_16C
  loc_CA5003: FLdPr var_16C
  loc_CA5006:  = Me.Text
  loc_CA500B: FLdRfVar var_100
  loc_CA500E: FLdRfVar var_2C4
  loc_CA5011: LitVarStr var_C0, "CompCtct"
  loc_CA5016: PopAdLdVar
  loc_CA5017: FLdRfVar var_270
  loc_CA501A: FLdRfVar var_1CC
  loc_CA501D: FLdPr Me
  loc_CA5020: MemLdRfVar from_stack_1.global_52
  loc_CA5023: NewIfNullPr clsctacte
  loc_CA5026: from_stack_1v = clsctacte.RsFrmGet()
  loc_CA502B: FLdPr var_1CC
  loc_CA502E:  = Me.Fields
  loc_CA5033: FLdPr var_270
  loc_CA5036: from_stack_2 = Me.Item(from_stack_1)
  loc_CA503B: FLdPr var_2C4
  loc_CA503E:  = Me.Value
  loc_CA5043: FLdRfVar var_180
  loc_CA5046: FLdPr Me
  loc_CA5049: VCallAd Control_ID_DetaCtctTxt
  loc_CA504C: FStAdFunc var_38C
  loc_CA504F: FLdPr var_38C
  loc_CA5052:  = Me.Text
  loc_CA5057: FLdRfVar var_184
  loc_CA505A: FLdPr Me
  loc_CA505D: VCallAd Control_ID_ImpoCtctTxt
  loc_CA5060: FStAdFunc var_40C
  loc_CA5063: FLdPr var_40C
  loc_CA5066:  = Me.Text
  loc_CA506B: ILdRf var_184
  loc_CA506E: CR8Str
  loc_CA5070: PopFPR8
  loc_CA5071: LitI2_Byte 0
  loc_CA5073: CR8I2
  loc_CA5074: PopFPR8
  loc_CA5075: ILdRf var_180
  loc_CA5078: LitI4 0
  loc_CA507D: LitI2_Byte 0
  loc_CA507F: FLdRfVar var_100
  loc_CA5082: CStrVarTmp
  loc_CA5083: FStStrNoPop var_188
  loc_CA5086: ILdRf var_17C
  loc_CA5089: LitI2_Byte &HB
  loc_CA508B: CUI1I2
  loc_CA508D: ILdRf var_400
  loc_CA5090: FLdI2 var_3FA
  loc_CA5093: ILdRf var_3F8
  loc_CA5096: ILdRf var_178
  loc_CA5099: FLdI2 var_3F2
  loc_CA509C: LitI2_Byte 0
  loc_CA509E: LitStr vbNullString
  loc_CA50A1: FLdRfVar var_B0
  loc_CA50A4: CStrVarTmp
  loc_CA50A5: CVarStr var_E0
  loc_CA50A8: PopAdLdVar
  loc_CA50A9: FLdFPR8 var_408
  loc_CA50AC: CVarDate var_D0
  loc_CA50B0: PopAdLdVar
  loc_CA50B1: ILdRf var_170
  loc_CA50B4: ILdRf var_3F0
  loc_CA50B7: FLdI2 var_3EA
  loc_CA50BA: LitI2_Byte 0
  loc_CA50BC: LitI2_Byte 0
  loc_CA50BE: CUI1I2
  loc_CA50C0: FLdI2 var_8C
  loc_CA50C3: ILdRf var_3E4
  loc_CA50C6: FLdI2 var_3E8
  loc_CA50C9: FLdI2 var_3E6
  loc_CA50CC: ILdRf var_128
  loc_CA50CF: FLdI2 var_9A
  loc_CA50D2: CUI1I2
  loc_CA50D4: FLdPr Me
  loc_CA50D7: MemLdRfVar from_stack_1.global_52
  loc_CA50DA: NewIfNullPr clsctacte
  loc_CA50DD: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA50E2: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_188 = "": var_180 = ""
  loc_CA50F3: FFreeAd var_A0 = "": var_16C = "": var_1CC = "": var_270 = "": var_38C = "": var_40C = ""
  loc_CA5104: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA510D: Branch loc_CA52EF
  loc_CA5110: FLdRfVar var_9A
  loc_CA5113: FLdPr Me
  loc_CA5116: MemLdRfVar from_stack_1.global_52
  loc_CA5119: NewIfNullPr clsctacte
  loc_CA511C: from_stack_1 = clsctacte.CodiOfic
  loc_CA5121: FLdRfVar var_128
  loc_CA5124: FLdPr Me
  loc_CA5127: MemLdRfVar from_stack_1.global_52
  loc_CA512A: NewIfNullPr clsctacte
  loc_CA512D: from_stack_1 = clsctacte.CuenCtct
  loc_CA5132: FLdRfVar var_3E6
  loc_CA5135: FLdPr Me
  loc_CA5138: MemLdRfVar from_stack_1.global_52
  loc_CA513B: NewIfNullPr clsctacte
  loc_CA513E: from_stack_1 = clsctacte.PeriCtct
  loc_CA5143: FLdRfVar var_3E8
  loc_CA5146: FLdPr Me
  loc_CA5149: MemLdRfVar from_stack_1.global_52
  loc_CA514C: NewIfNullPr clsctacte
  loc_CA514F: from_stack_1 = clsctacte.BimeCtct
  loc_CA5154: FLdRfVar var_3E4
  loc_CA5157: FLdPr Me
  loc_CA515A: MemLdRfVar from_stack_1.global_52
  loc_CA515D: NewIfNullPr clsctacte
  loc_CA5160: from_stack_1 = clsctacte.NumeCtct
  loc_CA5165: FLdRfVar var_3EA
  loc_CA5168: FLdPr Me
  loc_CA516B: MemLdRfVar from_stack_1.global_52
  loc_CA516E: NewIfNullPr clsctacte
  loc_CA5171: from_stack_1 = clsctacte.PeriBole
  loc_CA5176: FLdRfVar var_3F0
  loc_CA5179: FLdPr Me
  loc_CA517C: MemLdRfVar from_stack_1.global_52
  loc_CA517F: NewIfNullPr clsctacte
  loc_CA5182: from_stack_1 = clsctacte.NumeBole
  loc_CA5187: FLdRfVar var_170
  loc_CA518A: FLdPr Me
  loc_CA518D: MemLdRfVar from_stack_1.global_52
  loc_CA5190: NewIfNullPr clsctacte
  loc_CA5193: from_stack_1 = clsctacte.TipoCtct
  loc_CA5198: LitI2_Byte 0
  loc_CA519A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA519F: FStFPR8 var_408
  loc_CA51A2: FLdPr Me
  loc_CA51A5: VCallAd Control_ID_FeveCtctMsk
  loc_CA51A8: FStAdFunc var_A0
  loc_CA51AB: FLdPr var_A0
  loc_CA51AE: LateIdLdVar var_B0 DispID_22 0
  loc_CA51B5: PopAd
  loc_CA51B7: FLdRfVar var_3F2
  loc_CA51BA: FLdPr Me
  loc_CA51BD: MemLdRfVar from_stack_1.global_52
  loc_CA51C0: NewIfNullPr clsctacte
  loc_CA51C3: from_stack_1 = clsctacte.PeriInfo
  loc_CA51C8: FLdRfVar var_178
  loc_CA51CB: FLdPr Me
  loc_CA51CE: MemLdRfVar from_stack_1.global_52
  loc_CA51D1: NewIfNullPr clsctacte
  loc_CA51D4: from_stack_1 = clsctacte.CodiConc
  loc_CA51D9: FLdRfVar var_3F8
  loc_CA51DC: FLdPr Me
  loc_CA51DF: MemLdRfVar from_stack_1.global_52
  loc_CA51E2: NewIfNullPr clsctacte
  loc_CA51E5: from_stack_1 = clsctacte.CodiFapa
  loc_CA51EA: FLdRfVar var_3FA
  loc_CA51ED: FLdPr Me
  loc_CA51F0: MemLdRfVar from_stack_1.global_52
  loc_CA51F3: NewIfNullPr clsctacte
  loc_CA51F6: from_stack_1 = clsctacte.CuotDefa
  loc_CA51FB: FLdRfVar var_400
  loc_CA51FE: FLdPr Me
  loc_CA5201: MemLdRfVar from_stack_1.global_52
  loc_CA5204: NewIfNullPr clsctacte
  loc_CA5207: from_stack_1 = clsctacte.NumeApre
  loc_CA520C: FLdRfVar var_17C
  loc_CA520F: FLdPr Me
  loc_CA5212: VCallAd Control_ID_ExpeCtctTxt
  loc_CA5215: FStAdFunc var_16C
  loc_CA5218: FLdPr var_16C
  loc_CA521B:  = Me.Text
  loc_CA5220: FLdRfVar var_180
  loc_CA5223: FLdPr Me
  loc_CA5226: MemLdRfVar from_stack_1.global_52
  loc_CA5229: NewIfNullPr clsctacte
  loc_CA522C: from_stack_1 = clsctacte.TifaCtct
  loc_CA5231: FLdRfVar var_184
  loc_CA5234: FLdPr Me
  loc_CA5237: VCallAd Control_ID_DetaCtctTxt
  loc_CA523A: FStAdFunc var_1CC
  loc_CA523D: FLdPr var_1CC
  loc_CA5240:  = Me.Text
  loc_CA5245: FLdRfVar var_188
  loc_CA5248: FLdPr Me
  loc_CA524B: VCallAd Control_ID_ImpoCtctTxt
  loc_CA524E: FStAdFunc var_270
  loc_CA5251: FLdPr var_270
  loc_CA5254:  = Me.Text
  loc_CA5259: ILdRf var_188
  loc_CA525C: CR8Str
  loc_CA525E: PopFPR8
  loc_CA525F: LitI2_Byte 0
  loc_CA5261: CR8I2
  loc_CA5262: PopFPR8
  loc_CA5263: ILdRf var_184
  loc_CA5266: LitI4 0
  loc_CA526B: LitI2_Byte 0
  loc_CA526D: ILdRf var_180
  loc_CA5270: ILdRf var_17C
  loc_CA5273: LitI2_Byte &HB
  loc_CA5275: CUI1I2
  loc_CA5277: ILdRf var_400
  loc_CA527A: FLdI2 var_3FA
  loc_CA527D: ILdRf var_3F8
  loc_CA5280: ILdRf var_178
  loc_CA5283: FLdI2 var_3F2
  loc_CA5286: LitI2_Byte 0
  loc_CA5288: LitStr vbNullString
  loc_CA528B: FLdRfVar var_B0
  loc_CA528E: CStrVarTmp
  loc_CA528F: CVarStr var_E0
  loc_CA5292: PopAdLdVar
  loc_CA5293: FLdFPR8 var_408
  loc_CA5296: CVarDate var_C0
  loc_CA529A: PopAdLdVar
  loc_CA529B: ILdRf var_170
  loc_CA529E: ILdRf var_3F0
  loc_CA52A1: FLdI2 var_3EA
  loc_CA52A4: LitI2_Byte 0
  loc_CA52A6: LitI2_Byte 0
  loc_CA52A8: CUI1I2
  loc_CA52AA: FLdI2 var_8C
  loc_CA52AD: ILdRf var_3E4
  loc_CA52B0: FLdI2 var_3E8
  loc_CA52B3: FLdI2 var_3E6
  loc_CA52B6: ILdRf var_128
  loc_CA52B9: FLdI2 var_9A
  loc_CA52BC: CUI1I2
  loc_CA52BE: FLdPr Me
  loc_CA52C1: MemLdRfVar from_stack_1.global_52
  loc_CA52C4: NewIfNullPr clsctacte
  loc_CA52C7: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CA52CC: FFreeStr var_128 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_CA52DD: FFreeAd var_A0 = "": var_16C = "": var_1CC = ""
  loc_CA52E8: FFreeVar var_B0 = ""
  loc_CA52EF: FLdPr Me
  loc_CA52F2: MemLdRfVar from_stack_1.global_68
  loc_CA52F5: NextI2 var_174, loc_CA3C12
  loc_CA52FA: LitStr "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_CA52FD: ImpAdLdUI1
  loc_CA5301: CStrI2
  loc_CA5303: FStStrNoPop var_128
  loc_CA5306: ConcatStr
  loc_CA5307: FStStrNoPop var_170
  loc_CA530A: LitStr " AND CuenCtct = '"
  loc_CA530D: ConcatStr
  loc_CA530E: FStStrNoPop var_17C
  loc_CA5311: FLdRfVar var_178
  loc_CA5314: FLdPr Me
  loc_CA5317: VCallAd Control_ID_NumeCtaTxt
  loc_CA531A: FStAdFunc var_A0
  loc_CA531D: FLdPr var_A0
  loc_CA5320:  = Me.Text
  loc_CA5325: ILdRf var_178
  loc_CA5328: ConcatStr
  loc_CA5329: FStStrNoPop var_180
  loc_CA532C: LitStr "'"
  loc_CA532F: ConcatStr
  loc_CA5330: FStStrNoPop var_184
  loc_CA5333: LitStr " AND NumeApre <> 0"
  loc_CA5336: ConcatStr
  loc_CA5337: FStStrNoPop var_188
  loc_CA533A: LitStr " GROUP BY CodiOfic, CuenCtct, NumeApre"
  loc_CA533D: ConcatStr
  loc_CA533E: FStStrNoPop var_2D8
  loc_CA5341: FLdPr Me
  loc_CA5344: MemLdRfVar from_stack_1.global_52
  loc_CA5347: NewIfNullPr clsctacte
  loc_CA534A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CA534F: FFreeStr var_128 = "": var_170 = "": var_17C = "": var_178 = "": var_180 = "": var_184 = "": var_188 = ""
  loc_CA5362: FFree1Ad var_A0
  loc_CA5365: FLdRfVar var_3E4
  loc_CA5368: FLdPr Me
  loc_CA536B: MemLdRfVar from_stack_1.global_52
  loc_CA536E: NewIfNullPr clsctacte
  loc_CA5371: from_stack_1 = clsctacte.RecordCount
  loc_CA5376: ILdRf var_3E4
  loc_CA5379: LitI4 0
  loc_CA537E: GtI4
  loc_CA537F: BranchF loc_CA548E
  loc_CA5382: FLdPr Me
  loc_CA5385: MemLdRfVar from_stack_1.global_52
  loc_CA5388: NewIfNullPr clsctacte
  loc_CA538B: Call clsctacte.MoveFirst()
  loc_CA5390: FLdRfVar var_9A
  loc_CA5393: FLdPr Me
  loc_CA5396: MemLdRfVar from_stack_1.global_52
  loc_CA5399: NewIfNullPr clsctacte
  loc_CA539C: from_stack_1 = clsctacte.EOF
  loc_CA53A1: FLdI2 var_9A
  loc_CA53A4: NotI4
  loc_CA53A5: BranchF loc_CA548E
  loc_CA53A8: FLdRfVar var_9A
  loc_CA53AB: FLdPr Me
  loc_CA53AE: MemLdRfVar from_stack_1.global_52
  loc_CA53B1: NewIfNullPr clsctacte
  loc_CA53B4: from_stack_1 = clsctacte.CodiOfic
  loc_CA53B9: FLdRfVar var_128
  loc_CA53BC: FLdPr Me
  loc_CA53BF: MemLdRfVar from_stack_1.global_52
  loc_CA53C2: NewIfNullPr clsctacte
  loc_CA53C5: from_stack_1 = clsctacte.CuenCtct
  loc_CA53CA: FLdRfVar var_3E4
  loc_CA53CD: FLdPr Me
  loc_CA53D0: MemLdRfVar from_stack_1.global_52
  loc_CA53D3: NewIfNullPr clsctacte
  loc_CA53D6: from_stack_1 = clsctacte.NumeApre
  loc_CA53DB: ILdRf var_3E4
  loc_CA53DE: ILdRf var_128
  loc_CA53E1: FLdI2 var_9A
  loc_CA53E4: CUI1I2
  loc_CA53E6: ImpAdCallI2  = Proc_270_133_AEB914(, )
  loc_CA53EB: LitI2_Byte 0
  loc_CA53ED: EqI2
  loc_CA53EE: FFree1Str var_128
  loc_CA53F1: BranchF loc_CA547D
  loc_CA53F4: LitStr " UPDATE apremio SET CancApre = 1 WHERE NumeApre = "
  loc_CA53F7: FLdRfVar var_3E4
  loc_CA53FA: FLdPr Me
  loc_CA53FD: MemLdRfVar from_stack_1.global_52
  loc_CA5400: NewIfNullPr clsctacte
  loc_CA5403: from_stack_1 = clsctacte.NumeApre
  loc_CA5408: ILdRf var_3E4
  loc_CA540B: CStrI4
  loc_CA540D: FStStrNoPop var_128
  loc_CA5410: ConcatStr
  loc_CA5411: FStStrNoPop var_170
  loc_CA5414: FLdPr Me
  loc_CA5417: MemLdRfVar from_stack_1.global_52
  loc_CA541A: NewIfNullPr clsctacte
  loc_CA541D: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_CA5422: FFreeStr var_128 = ""
  loc_CA5429: FLdRfVar var_3E4
  loc_CA542C: FLdPr Me
  loc_CA542F: MemLdRfVar from_stack_1.global_52
  loc_CA5432: NewIfNullPr clsctacte
  loc_CA5435: from_stack_1 = clsctacte.NumeApre
  loc_CA543A: ILdRf var_3E4
  loc_CA543D: ImpAdCallI2 Proc_270_134_A40038()
  loc_CA5442: LitI2_Byte &HFF
  loc_CA5444: EqI2
  loc_CA5445: BranchF loc_CA547D
  loc_CA5448: LitStr " UPDATE apremio SET EstaApre = 7, ObseApre = 'CANCELADO - POR MEDIO DE CREDITO MANUAL' WHERE NumeApre = "
  loc_CA544B: FLdRfVar var_3E4
  loc_CA544E: FLdPr Me
  loc_CA5451: MemLdRfVar from_stack_1.global_52
  loc_CA5454: NewIfNullPr clsctacte
  loc_CA5457: from_stack_1 = clsctacte.NumeApre
  loc_CA545C: ILdRf var_3E4
  loc_CA545F: CStrI4
  loc_CA5461: FStStrNoPop var_128
  loc_CA5464: ConcatStr
  loc_CA5465: FStStrNoPop var_170
  loc_CA5468: FLdPr Me
  loc_CA546B: MemLdRfVar from_stack_1.global_52
  loc_CA546E: NewIfNullPr clsctacte
  loc_CA5471: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_CA5476: FFreeStr var_128 = ""
  loc_CA547D: FLdPr Me
  loc_CA5480: MemLdRfVar from_stack_1.global_52
  loc_CA5483: NewIfNullPr clsctacte
  loc_CA5486: Call clsctacte.MoveSiguiente()
  loc_CA548B: Branch loc_CA5390
  loc_CA548E: LitStr "El CREDITO MANUAL se realizo con exito"
  loc_CA5491: FLdPr Me
  loc_CA5494: MemStStrCopy
  loc_CA5498: FLdPr Me
  loc_CA549B: MemLdStr global_100
  loc_CA549E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CA54A3: Call Proc_300_24_B196A8()
  loc_CA54A8: LitI4 1
  loc_CA54AD: LitI4 1
  loc_CA54B2: LitVarStr var_D0, "0.00"
  loc_CA54B7: FStVarCopyObj var_E0
  loc_CA54BA: FLdRfVar var_E0
  loc_CA54BD: LitVarI2 var_B0, 0
  loc_CA54C2: FLdRfVar var_100
  loc_CA54C5: ImpAdCallFPR4  = Format(, )
  loc_CA54CA: FLdRfVar var_100
  loc_CA54CD: CStrVarVal var_128
  loc_CA54D1: FLdPr Me
  loc_CA54D4: VCallAd Control_ID_txtTotaApre
  loc_CA54D7: FStAdFunc var_A0
  loc_CA54DA: FLdPr var_A0
  loc_CA54DD: Me.Text = from_stack_1
  loc_CA54E2: FFree1Str var_128
  loc_CA54E5: FFree1Ad var_A0
  loc_CA54E8: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA54F1: LitI4 1
  loc_CA54F6: LitI4 1
  loc_CA54FB: LitVarStr var_D0, "0.00"
  loc_CA5500: FStVarCopyObj var_E0
  loc_CA5503: FLdRfVar var_E0
  loc_CA5506: LitVarI2 var_B0, 0
  loc_CA550B: FLdRfVar var_100
  loc_CA550E: ImpAdCallFPR4  = Format(, )
  loc_CA5513: FLdRfVar var_100
  loc_CA5516: CStrVarVal var_128
  loc_CA551A: FLdPr Me
  loc_CA551D: VCallAd Control_ID_txtTotaDere
  loc_CA5520: FStAdFunc var_A0
  loc_CA5523: FLdPr var_A0
  loc_CA5526: Me.Text = from_stack_1
  loc_CA552B: FFree1Str var_128
  loc_CA552E: FFree1Ad var_A0
  loc_CA5531: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA553A: LitI4 1
  loc_CA553F: LitI4 1
  loc_CA5544: LitVarStr var_D0, "0.00"
  loc_CA5549: FStVarCopyObj var_E0
  loc_CA554C: FLdRfVar var_E0
  loc_CA554F: LitVarI2 var_B0, 0
  loc_CA5554: FLdRfVar var_100
  loc_CA5557: ImpAdCallFPR4  = Format(, )
  loc_CA555C: FLdRfVar var_100
  loc_CA555F: CStrVarVal var_128
  loc_CA5563: FLdPr Me
  loc_CA5566: VCallAd Control_ID_txtTotaReca
  loc_CA5569: FStAdFunc var_A0
  loc_CA556C: FLdPr var_A0
  loc_CA556F: Me.Text = from_stack_1
  loc_CA5574: FFree1Str var_128
  loc_CA5577: FFree1Ad var_A0
  loc_CA557A: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA5583: LitI4 1
  loc_CA5588: LitI4 1
  loc_CA558D: LitVarStr var_D0, "0.00"
  loc_CA5592: FStVarCopyObj var_E0
  loc_CA5595: FLdRfVar var_E0
  loc_CA5598: LitVarI2 var_B0, 0
  loc_CA559D: FLdRfVar var_100
  loc_CA55A0: ImpAdCallFPR4  = Format(, )
  loc_CA55A5: FLdRfVar var_100
  loc_CA55A8: CStrVarVal var_128
  loc_CA55AC: FLdPr Me
  loc_CA55AF: VCallAd Control_ID_txtTotal
  loc_CA55B2: FStAdFunc var_A0
  loc_CA55B5: FLdPr var_A0
  loc_CA55B8: Me.Text = from_stack_1
  loc_CA55BD: FFree1Str var_128
  loc_CA55C0: FFree1Ad var_A0
  loc_CA55C3: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA55CC: LitI4 1
  loc_CA55D1: LitI4 1
  loc_CA55D6: LitVarStr var_D0, "0.00"
  loc_CA55DB: FStVarCopyObj var_E0
  loc_CA55DE: FLdRfVar var_E0
  loc_CA55E1: LitVarI2 var_B0, 0
  loc_CA55E6: FLdRfVar var_100
  loc_CA55E9: ImpAdCallFPR4  = Format(, )
  loc_CA55EE: FLdRfVar var_100
  loc_CA55F1: CStrVarVal var_128
  loc_CA55F5: FLdPr Me
  loc_CA55F8: VCallAd Control_ID_txtDereSele
  loc_CA55FB: FStAdFunc var_A0
  loc_CA55FE: FLdPr var_A0
  loc_CA5601: Me.Text = from_stack_1
  loc_CA5606: FFree1Str var_128
  loc_CA5609: FFree1Ad var_A0
  loc_CA560C: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA5615: LitI4 1
  loc_CA561A: LitI4 1
  loc_CA561F: LitVarStr var_D0, "0.00"
  loc_CA5624: FStVarCopyObj var_E0
  loc_CA5627: FLdRfVar var_E0
  loc_CA562A: LitVarI2 var_B0, 0
  loc_CA562F: FLdRfVar var_100
  loc_CA5632: ImpAdCallFPR4  = Format(, )
  loc_CA5637: FLdRfVar var_100
  loc_CA563A: CStrVarVal var_128
  loc_CA563E: FLdPr Me
  loc_CA5641: VCallAd Control_ID_txtRecaSele
  loc_CA5644: FStAdFunc var_A0
  loc_CA5647: FLdPr var_A0
  loc_CA564A: Me.Text = from_stack_1
  loc_CA564F: FFree1Str var_128
  loc_CA5652: FFree1Ad var_A0
  loc_CA5655: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA565E: LitI4 1
  loc_CA5663: LitI4 1
  loc_CA5668: LitVarStr var_D0, "0.00"
  loc_CA566D: FStVarCopyObj var_E0
  loc_CA5670: FLdRfVar var_E0
  loc_CA5673: LitVarI2 var_B0, 0
  loc_CA5678: FLdRfVar var_100
  loc_CA567B: ImpAdCallFPR4  = Format(, )
  loc_CA5680: FLdRfVar var_100
  loc_CA5683: CStrVarVal var_128
  loc_CA5687: FLdPr Me
  loc_CA568A: VCallAd Control_ID_txtTotaSele
  loc_CA568D: FStAdFunc var_A0
  loc_CA5690: FLdPr var_A0
  loc_CA5693: Me.Text = from_stack_1
  loc_CA5698: FFree1Str var_128
  loc_CA569B: FFree1Ad var_A0
  loc_CA569E: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA56A7: LitI2_Byte 0
  loc_CA56A9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA56AE: CStrDate
  loc_CA56B0: CVarStr var_B0
  loc_CA56B3: PopAdLdVar
  loc_CA56B4: FLdPr Me
  loc_CA56B7: VCallAd Control_ID_FechVencMsk
  loc_CA56BA: FStAdFunc var_A0
  loc_CA56BD: FLdPr var_A0
  loc_CA56C0: LateIdSt
  loc_CA56C5: FFree1Ad var_A0
  loc_CA56C8: FFree1Var var_B0 = ""
  loc_CA56CB: LitI2_Byte 0
  loc_CA56CD: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CA56D2: CStrDate
  loc_CA56D4: CVarStr var_B0
  loc_CA56D7: PopAdLdVar
  loc_CA56D8: FLdPr Me
  loc_CA56DB: VCallAd Control_ID_FeveCtctMsk
  loc_CA56DE: FStAdFunc var_A0
  loc_CA56E1: FLdPr var_A0
  loc_CA56E4: LateIdSt
  loc_CA56E9: FFree1Ad var_A0
  loc_CA56EC: FFree1Var var_B0 = ""
  loc_CA56EF: LitI4 1
  loc_CA56F4: LitI4 1
  loc_CA56F9: LitVarStr var_D0, "0.00"
  loc_CA56FE: FStVarCopyObj var_E0
  loc_CA5701: FLdRfVar var_E0
  loc_CA5704: LitVarI2 var_B0, 0
  loc_CA5709: FLdRfVar var_100
  loc_CA570C: ImpAdCallFPR4  = Format(, )
  loc_CA5711: FLdRfVar var_100
  loc_CA5714: CStrVarVal var_128
  loc_CA5718: FLdPr Me
  loc_CA571B: VCallAd Control_ID_ImpoCtctTxt
  loc_CA571E: FStAdFunc var_A0
  loc_CA5721: FLdPr var_A0
  loc_CA5724: Me.Text = from_stack_1
  loc_CA5729: FFree1Str var_128
  loc_CA572C: FFree1Ad var_A0
  loc_CA572F: FFreeVar var_B0 = "": var_E0 = ""
  loc_CA5738: LitI4 0
  loc_CA573D: LitI4 0
  loc_CA5742: FLdRfVar var_420
  loc_CA5745: Redim
  loc_CA574F: FLdPr Me
  loc_CA5752: VCallAd Control_ID_ConfirmarCmd
  loc_CA5755: CVarAd
  loc_CA5759: ParmAry1St
  loc_CA575F: FLdRfVar var_420
  loc_CA5762: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CA5767: FLdRfVar var_420
  loc_CA576A: Erase
  loc_CA576B: FLdPr Me
  loc_CA576E: VCallAd Control_ID_OficinaCbo
  loc_CA5771: FStAdFunc var_A0
  loc_CA5774: FLdPr var_A0
  loc_CA5777: Me.SetFocus
  loc_CA577C: FFree1Ad var_A0
  loc_CA577F: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C4C100
  'Data Table: 504878
  loc_C4B428: LitStr "Municipalidad de Guaymallén"
  loc_C4B42B: LitStr "Municipalidad de San Carlos"
  loc_C4B42E: EqStr
  loc_C4B430: LitStr "Municipalidad de Guaymallén"
  loc_C4B433: LitStr "Municipalidad de Rivadavia"
  loc_C4B436: EqStr
  loc_C4B438: OrI4
  loc_C4B439: BranchF loc_C4B48A
  loc_C4B43C: FLdPr Me
  loc_C4B43F: VCallAd Control_ID_FechVencMsk
  loc_C4B442: FStAdFunc var_CC
  loc_C4B445: FLdPr var_CC
  loc_C4B448: LateIdLdVar var_DC DispID_15 0
  loc_C4B44F: CStrVarTmp
  loc_C4B450: PopTmpLdAdStr
  loc_C4B454: ImpAdCallI2 Proc_18_100_A771AC()
  loc_C4B459: FStStrNoPop var_E4
  loc_C4B45C: FLdPr Me
  loc_C4B45F: MemStStrCopy
  loc_C4B463: FFreeStr var_E0 = ""
  loc_C4B46A: FFree1Ad var_CC
  loc_C4B46D: FFree1Var var_DC = ""
  loc_C4B470: FLdPr Me
  loc_C4B473: MemLdStr global_100
  loc_C4B476: LitStr vbNullString
  loc_C4B479: NeStr
  loc_C4B47B: BranchF loc_C4B48A
  loc_C4B47E: FLdPr Me
  loc_C4B481: MemLdStr global_100
  loc_C4B484: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4B489: ExitProcHresult
  loc_C4B48A: Call Proc_300_24_B196A8()
  loc_C4B48F: LitI2_Byte 0
  loc_C4B491: FLdPr Me
  loc_C4B494: VCallAd Control_ID_SeleTodoChk
  loc_C4B497: FStAdFunc var_CC
  loc_C4B49A: FLdPr var_CC
  loc_C4B49D: Me.Value = from_stack_1
  loc_C4B4A2: FFree1Ad var_CC
  loc_C4B4A5: LitI2_Byte 0
  loc_C4B4A7: FLdPr Me
  loc_C4B4AA: VCallAd Control_ID_CredParcialChk
  loc_C4B4AD: FStAdFunc var_CC
  loc_C4B4B0: FLdPr var_CC
  loc_C4B4B3: Me.Value = from_stack_1
  loc_C4B4B8: FFree1Ad var_CC
  loc_C4B4BB: LitI2_Byte 0
  loc_C4B4BD: CR8I2
  loc_C4B4BE: FLdPr Me
  loc_C4B4C1: MemStFPR8 global_72
  loc_C4B4C4: LitI2_Byte 0
  loc_C4B4C6: CR8I2
  loc_C4B4C7: FLdPr Me
  loc_C4B4CA: MemStFPR8 global_80
  loc_C4B4CD: LitI2_Byte 0
  loc_C4B4CF: CR8I2
  loc_C4B4D0: FLdPr Me
  loc_C4B4D3: MemStFPR8 global_88
  loc_C4B4D6: LitVarStr var_F4, vbNullString
  loc_C4B4DB: PopAdLdVar
  loc_C4B4DC: FLdPr Me
  loc_C4B4DF: VCallAd Control_ID_FechVencMsk
  loc_C4B4E2: FStAdFunc var_CC
  loc_C4B4E5: FLdPr var_CC
  loc_C4B4E8: LateIdSt
  loc_C4B4ED: FFree1Ad var_CC
  loc_C4B4F0: FLdRfVar var_106
  loc_C4B4F3: FLdPr Me
  loc_C4B4F6: VCallAd Control_ID_OficinaCbo
  loc_C4B4F9: FStAdFunc var_CC
  loc_C4B4FC: FLdPr var_CC
  loc_C4B4FF:  = Me.ListIndex
  loc_C4B504: FLdI2 var_106
  loc_C4B507: FStI2 var_108
  loc_C4B50A: FFree1Ad var_CC
  loc_C4B50D: FLdI2 var_108
  loc_C4B510: LitI2_Byte 0
  loc_C4B512: EqI2
  loc_C4B513: BranchF loc_C4B521
  loc_C4B516: LitI2_Byte 1
  loc_C4B518: CUI1I2
  loc_C4B51A: ImpAdStUI1 MemVar_D93038
  loc_C4B51E: Branch loc_C4B55A
  loc_C4B521: FLdI2 var_108
  loc_C4B524: LitI2_Byte 1
  loc_C4B526: EqI2
  loc_C4B527: BranchF loc_C4B535
  loc_C4B52A: LitI2_Byte 2
  loc_C4B52C: CUI1I2
  loc_C4B52E: ImpAdStUI1 MemVar_D93038
  loc_C4B532: Branch loc_C4B55A
  loc_C4B535: FLdI2 var_108
  loc_C4B538: LitI2_Byte 2
  loc_C4B53A: EqI2
  loc_C4B53B: BranchF loc_C4B549
  loc_C4B53E: LitI2_Byte 3
  loc_C4B540: CUI1I2
  loc_C4B542: ImpAdStUI1 MemVar_D93038
  loc_C4B546: Branch loc_C4B55A
  loc_C4B549: FLdI2 var_108
  loc_C4B54C: LitI2_Byte 3
  loc_C4B54E: EqI2
  loc_C4B54F: BranchF loc_C4B55A
  loc_C4B552: LitI2_Byte 4
  loc_C4B554: CUI1I2
  loc_C4B556: ImpAdStUI1 MemVar_D93038
  loc_C4B55A: LitI2_Byte 0
  loc_C4B55C: CR8I2
  loc_C4B55D: FLdPr Me
  loc_C4B560: MemStFPR8 global_104
  loc_C4B563: LitI2_Byte 0
  loc_C4B565: CR8I2
  loc_C4B566: FLdPr Me
  loc_C4B569: MemStFPR8 global_112
  loc_C4B56C: LitI2_Byte 0
  loc_C4B56E: CR8I2
  loc_C4B56F: FLdPr Me
  loc_C4B572: MemStFPR8 global_120
  loc_C4B575: LitI2_Byte 0
  loc_C4B577: CR8I2
  loc_C4B578: FLdPr Me
  loc_C4B57B: MemStFPR8 global_128
  loc_C4B57E: LitI2_Byte 0
  loc_C4B580: CR8I2
  loc_C4B581: FLdPr Me
  loc_C4B584: MemStFPR8 global_136
  loc_C4B587: LitI4 1
  loc_C4B58C: LitI4 1
  loc_C4B591: LitVarStr var_104, "0.00"
  loc_C4B596: FStVarCopyObj var_DC
  loc_C4B599: FLdRfVar var_DC
  loc_C4B59C: FLdPr Me
  loc_C4B59F: MemLdRfVar from_stack_1.global_104
  loc_C4B5A2: CVarRef
  loc_C4B5A7: FLdRfVar var_118
  loc_C4B5AA: ImpAdCallFPR4  = Format(, )
  loc_C4B5AF: FLdRfVar var_118
  loc_C4B5B2: CStrVarVal var_E0
  loc_C4B5B6: FLdPr Me
  loc_C4B5B9: VCallAd Control_ID_txtTotaDere
  loc_C4B5BC: FStAdFunc var_CC
  loc_C4B5BF: FLdPr var_CC
  loc_C4B5C2: Me.Text = from_stack_1
  loc_C4B5C7: FFree1Str var_E0
  loc_C4B5CA: FFree1Ad var_CC
  loc_C4B5CD: FFreeVar var_DC = ""
  loc_C4B5D4: LitI4 1
  loc_C4B5D9: LitI4 1
  loc_C4B5DE: LitVarStr var_104, "0.00"
  loc_C4B5E3: FStVarCopyObj var_DC
  loc_C4B5E6: FLdRfVar var_DC
  loc_C4B5E9: FLdPr Me
  loc_C4B5EC: MemLdRfVar from_stack_1.global_112
  loc_C4B5EF: CVarRef
  loc_C4B5F4: FLdRfVar var_118
  loc_C4B5F7: ImpAdCallFPR4  = Format(, )
  loc_C4B5FC: FLdRfVar var_118
  loc_C4B5FF: CStrVarVal var_E0
  loc_C4B603: FLdPr Me
  loc_C4B606: VCallAd Control_ID_txtTotaReca
  loc_C4B609: FStAdFunc var_CC
  loc_C4B60C: FLdPr var_CC
  loc_C4B60F: Me.Text = from_stack_1
  loc_C4B614: FFree1Str var_E0
  loc_C4B617: FFree1Ad var_CC
  loc_C4B61A: FFreeVar var_DC = ""
  loc_C4B621: LitI4 1
  loc_C4B626: LitI4 1
  loc_C4B62B: LitVarStr var_104, "0.00"
  loc_C4B630: FStVarCopyObj var_DC
  loc_C4B633: FLdRfVar var_DC
  loc_C4B636: FLdPr Me
  loc_C4B639: MemLdRfVar from_stack_1.global_120
  loc_C4B63C: CVarRef
  loc_C4B641: FLdRfVar var_118
  loc_C4B644: ImpAdCallFPR4  = Format(, )
  loc_C4B649: FLdRfVar var_118
  loc_C4B64C: CStrVarVal var_E0
  loc_C4B650: FLdPr Me
  loc_C4B653: VCallAd Control_ID_txtTotaApre
  loc_C4B656: FStAdFunc var_CC
  loc_C4B659: FLdPr var_CC
  loc_C4B65C: Me.Text = from_stack_1
  loc_C4B661: FFree1Str var_E0
  loc_C4B664: FFree1Ad var_CC
  loc_C4B667: FFreeVar var_DC = ""
  loc_C4B66E: LitI4 2
  loc_C4B673: FLdPr Me
  loc_C4B676: MemLdRfVar from_stack_1.global_104
  loc_C4B679: CVarRef
  loc_C4B67E: FLdRfVar var_DC
  loc_C4B681: ImpAdCallFPR4  = Round(, )
  loc_C4B686: FLdRfVar var_DC
  loc_C4B689: LitI4 2
  loc_C4B68E: FLdPr Me
  loc_C4B691: MemLdRfVar from_stack_1.global_112
  loc_C4B694: CVarRef
  loc_C4B699: FLdRfVar var_118
  loc_C4B69C: ImpAdCallFPR4  = Round(, )
  loc_C4B6A1: FLdRfVar var_118
  loc_C4B6A4: AddVar var_128
  loc_C4B6A8: LitI4 2
  loc_C4B6AD: FLdPr Me
  loc_C4B6B0: MemLdRfVar from_stack_1.global_120
  loc_C4B6B3: CVarRef
  loc_C4B6B8: FLdRfVar var_148
  loc_C4B6BB: ImpAdCallFPR4  = Round(, )
  loc_C4B6C0: FLdRfVar var_148
  loc_C4B6C3: AddVar var_158
  loc_C4B6C7: CR4Var
  loc_C4B6C8: FLdPr Me
  loc_C4B6CB: MemStFPR8 global_128
  loc_C4B6CE: FFreeVar var_DC = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C4B6DB: LitI4 1
  loc_C4B6E0: LitI4 1
  loc_C4B6E5: LitVarStr var_104, "0.00"
  loc_C4B6EA: FStVarCopyObj var_DC
  loc_C4B6ED: FLdRfVar var_DC
  loc_C4B6F0: FLdPr Me
  loc_C4B6F3: MemLdRfVar from_stack_1.global_128
  loc_C4B6F6: CVarRef
  loc_C4B6FB: FLdRfVar var_118
  loc_C4B6FE: ImpAdCallFPR4  = Format(, )
  loc_C4B703: FLdRfVar var_118
  loc_C4B706: CStrVarVal var_E0
  loc_C4B70A: FLdPr Me
  loc_C4B70D: VCallAd Control_ID_txtTotal
  loc_C4B710: FStAdFunc var_CC
  loc_C4B713: FLdPr var_CC
  loc_C4B716: Me.Text = from_stack_1
  loc_C4B71B: FFree1Str var_E0
  loc_C4B71E: FFree1Ad var_CC
  loc_C4B721: FFreeVar var_DC = ""
  loc_C4B728: LitI4 1
  loc_C4B72D: LitI4 1
  loc_C4B732: LitVarStr var_104, "0.00"
  loc_C4B737: FStVarCopyObj var_DC
  loc_C4B73A: FLdRfVar var_DC
  loc_C4B73D: FLdPr Me
  loc_C4B740: MemLdRfVar from_stack_1.global_136
  loc_C4B743: CVarRef
  loc_C4B748: FLdRfVar var_118
  loc_C4B74B: ImpAdCallFPR4  = Format(, )
  loc_C4B750: FLdRfVar var_118
  loc_C4B753: CStrVarVal var_E0
  loc_C4B757: FLdPr Me
  loc_C4B75A: VCallAd Control_ID_txtTotaSele
  loc_C4B75D: FStAdFunc var_CC
  loc_C4B760: FLdPr var_CC
  loc_C4B763: Me.Text = from_stack_1
  loc_C4B768: FFree1Str var_E0
  loc_C4B76B: FFree1Ad var_CC
  loc_C4B76E: FFreeVar var_DC = ""
  loc_C4B775: LitStr "Municipalidad de Guaymallén"
  loc_C4B778: LitStr "Municipalidad de Guaymallén"
  loc_C4B77B: EqStr
  loc_C4B77D: BranchF loc_C4B86D
  loc_C4B780: FLdPr Me
  loc_C4B783: VCallAd Control_ID_FechVencMsk
  loc_C4B786: FStAdFunc var_168
  loc_C4B789: FLdPr var_168
  loc_C4B78C: LateIdLdVar var_DC DispID_15 0
  loc_C4B793: PopAd
  loc_C4B795: LitStr "CALL nDeuda`('"
  loc_C4B798: ImpAdLdUI1
  loc_C4B79C: CStrI2
  loc_C4B79E: FStStrNoPop var_E0
  loc_C4B7A1: ConcatStr
  loc_C4B7A2: FStStrNoPop var_E4
  loc_C4B7A5: LitStr "', '"
  loc_C4B7A8: ConcatStr
  loc_C4B7A9: FStStrNoPop var_160
  loc_C4B7AC: FLdRfVar var_15C
  loc_C4B7AF: FLdPr Me
  loc_C4B7B2: VCallAd Control_ID_NumeCtaTxt
  loc_C4B7B5: FStAdFunc var_CC
  loc_C4B7B8: FLdPr var_CC
  loc_C4B7BB:  = Me.Text
  loc_C4B7C0: ILdRf var_15C
  loc_C4B7C3: ConcatStr
  loc_C4B7C4: FStStrNoPop var_164
  loc_C4B7C7: LitStr "', '"
  loc_C4B7CA: ConcatStr
  loc_C4B7CB: CVarStr var_158
  loc_C4B7CE: LitI4 1
  loc_C4B7D3: LitI4 1
  loc_C4B7D8: LitVarStr var_F4, "yyyy-mm-dd"
  loc_C4B7DD: FStVarCopyObj var_128
  loc_C4B7E0: FLdRfVar var_128
  loc_C4B7E3: FLdRfVar var_DC
  loc_C4B7E6: CStrVarTmp
  loc_C4B7E7: CVarStr var_118
  loc_C4B7EA: FLdRfVar var_148
  loc_C4B7ED: ImpAdCallFPR4  = Format(, )
  loc_C4B7F2: FLdRfVar var_148
  loc_C4B7F5: ConcatVar var_178
  loc_C4B7F9: LitVarStr var_104, "')"
  loc_C4B7FE: ConcatVar var_188
  loc_C4B802: CStrVarVal var_18C
  loc_C4B806: FLdPr Me
  loc_C4B809: MemLdRfVar from_stack_1.global_52
  loc_C4B80C: NewIfNullPr clsctacte
  loc_C4B80F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4B814: FFreeStr var_E0 = "": var_E4 = "": var_160 = "": var_15C = "": var_164 = ""
  loc_C4B823: FFreeAd var_CC = ""
  loc_C4B82A: FFreeVar var_DC = "": var_118 = "": var_128 = "": var_158 = "": var_148 = "": var_178 = ""
  loc_C4B83B: LitStr "SELECT * FROM tmp_ctacteboleto "
  loc_C4B83E: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C4B841: ConcatStr
  loc_C4B842: FStStrNoPop var_E0
  loc_C4B845: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C4B848: ConcatStr
  loc_C4B849: FStStrNoPop var_E4
  loc_C4B84C: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C4B84F: ConcatStr
  loc_C4B850: FStStrNoPop var_15C
  loc_C4B853: FLdPr Me
  loc_C4B856: MemLdRfVar from_stack_1.global_52
  loc_C4B859: NewIfNullPr clsctacte
  loc_C4B85C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4B861: FFreeStr var_E0 = "": var_E4 = ""
  loc_C4B86A: Branch loc_C4B8E1
  loc_C4B86D: FLdRfVar var_E0
  loc_C4B870: FLdPr Me
  loc_C4B873: VCallAd Control_ID_NumeCtaTxt
  loc_C4B876: FStAdFunc var_CC
  loc_C4B879: FLdPr var_CC
  loc_C4B87C:  = Me.Text
  loc_C4B881: FLdPr Me
  loc_C4B884: VCallAd Control_ID_FechVencMsk
  loc_C4B887: FStAdFunc var_168
  loc_C4B88A: FLdPr var_168
  loc_C4B88D: LateIdLdVar var_DC DispID_22 0
  loc_C4B894: PopAd
  loc_C4B896: LitStr "tmp_ctactecredito"
  loc_C4B899: FLdRfVar var_DC
  loc_C4B89C: CStrVarTmp
  loc_C4B89D: FStStrNoPop var_E4
  loc_C4B8A0: ILdRf var_E0
  loc_C4B8A3: ImpAdLdUI1
  loc_C4B8A7: FLdPr Me
  loc_C4B8AA: MemLdRfVar from_stack_1.global_52
  loc_C4B8AD: NewIfNullPr clsctacte
  loc_C4B8B0: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C4B8B5: FFreeStr var_E0 = ""
  loc_C4B8BC: FFreeAd var_CC = ""
  loc_C4B8C3: FFree1Var var_DC = ""
  loc_C4B8C6: LitStr "SELECT * FROM tmp_ctactecredito LEFT JOIN tipomovi ON tmp_ctactecredito.CodiTimo = tipomovi.CodiTimo"
  loc_C4B8C9: LitStr " ORDER BY tmp_ctactecredito.CodiOfic, tmp_ctactecredito.CuenCtct, tmp_ctactecredito.PeriCtct desc, tmp_ctactecredito.BimeCtct desc, tmp_ctactecredito.NumeCtct, tmp_ctactecredito.MoviCtct"
  loc_C4B8CC: ConcatStr
  loc_C4B8CD: FStStrNoPop var_E0
  loc_C4B8D0: FLdPr Me
  loc_C4B8D3: MemLdRfVar from_stack_1.global_52
  loc_C4B8D6: NewIfNullPr clsctacte
  loc_C4B8D9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C4B8DE: FFree1Str var_E0
  loc_C4B8E1: FLdRfVar var_190
  loc_C4B8E4: FLdPr Me
  loc_C4B8E7: MemLdRfVar from_stack_1.global_52
  loc_C4B8EA: NewIfNullPr clsctacte
  loc_C4B8ED: from_stack_1 = clsctacte.RecordCount
  loc_C4B8F2: ILdRf var_190
  loc_C4B8F5: LitI4 0
  loc_C4B8FA: GtI4
  loc_C4B8FB: BranchF loc_C4C0E6
  loc_C4B8FE: FLdPr Me
  loc_C4B901: MemLdRfVar from_stack_1.global_52
  loc_C4B904: NewIfNullPr clsctacte
  loc_C4B907: Call clsctacte.MoveFirst()
  loc_C4B90C: FLdRfVar var_106
  loc_C4B90F: FLdPr Me
  loc_C4B912: MemLdRfVar from_stack_1.global_52
  loc_C4B915: NewIfNullPr clsctacte
  loc_C4B918: from_stack_1 = clsctacte.EOF
  loc_C4B91D: FLdI2 var_106
  loc_C4B920: NotI4
  loc_C4B921: BranchF loc_C4BF45
  loc_C4B924: FLdRfVar var_198
  loc_C4B927: FLdPr Me
  loc_C4B92A: MemLdRfVar from_stack_1.global_52
  loc_C4B92D: NewIfNullPr clsctacte
  loc_C4B930: from_stack_1 = clsctacte.SaldCtct
  loc_C4B935: FLdFPR8 var_198
  loc_C4B938: FnCDblR8
  loc_C4B93A: LitI2_Byte 0
  loc_C4B93C: CR8I2
  loc_C4B93D: GtR4
  loc_C4B93E: BranchF loc_C4BF34
  loc_C4B941: LitI2_Byte 0
  loc_C4B943: CR8I2
  loc_C4B944: FLdPr Me
  loc_C4B947: MemStFPR8 global_120
  loc_C4B94A: FLdRfVar var_198
  loc_C4B94D: FLdPr Me
  loc_C4B950: MemLdRfVar from_stack_1.global_52
  loc_C4B953: NewIfNullPr clsctacte
  loc_C4B956: from_stack_1 = clsctacte.SaldCtct
  loc_C4B95B: LitI4 2
  loc_C4B960: FLdPr Me
  loc_C4B963: MemLdFPR8 global_104
  loc_C4B966: FnCDblR8
  loc_C4B968: FLdFPR8 var_198
  loc_C4B96B: FnCDblR8
  loc_C4B96D: AddR8
  loc_C4B96E: CVarR8
  loc_C4B972: FLdRfVar var_118
  loc_C4B975: ImpAdCallFPR4  = Round(, )
  loc_C4B97A: FLdRfVar var_118
  loc_C4B97D: CR4Var
  loc_C4B97E: FLdPr Me
  loc_C4B981: MemStFPR8 global_104
  loc_C4B984: FFreeVar var_DC = ""
  loc_C4B98B: FLdRfVar var_198
  loc_C4B98E: FLdPr Me
  loc_C4B991: MemLdRfVar from_stack_1.global_52
  loc_C4B994: NewIfNullPr clsctacte
  loc_C4B997: from_stack_1 = clsctacte.RecaCtct
  loc_C4B99C: LitI4 2
  loc_C4B9A1: FLdPr Me
  loc_C4B9A4: MemLdFPR8 global_112
  loc_C4B9A7: FnCDblR8
  loc_C4B9A9: FLdFPR8 var_198
  loc_C4B9AC: FnCDblR8
  loc_C4B9AE: AddR8
  loc_C4B9AF: CVarR8
  loc_C4B9B3: FLdRfVar var_118
  loc_C4B9B6: ImpAdCallFPR4  = Round(, )
  loc_C4B9BB: FLdRfVar var_118
  loc_C4B9BE: CR4Var
  loc_C4B9BF: FLdPr Me
  loc_C4B9C2: MemStFPR8 global_112
  loc_C4B9C5: FFreeVar var_DC = ""
  loc_C4B9CC: FLdRfVar var_106
  loc_C4B9CF: FLdPr Me
  loc_C4B9D2: MemLdRfVar from_stack_1.global_52
  loc_C4B9D5: NewIfNullPr clsctacte
  loc_C4B9D8: from_stack_1 = clsctacte.BimeCtct
  loc_C4B9DD: LitI4 1
  loc_C4B9E2: LitI4 1
  loc_C4B9E7: LitVarStr var_104, "#00"
  loc_C4B9EC: FStVarCopyObj var_118
  loc_C4B9EF: FLdRfVar var_118
  loc_C4B9F2: FLdI2 var_106
  loc_C4B9F5: CVarI2 var_DC
  loc_C4B9F8: FLdRfVar var_128
  loc_C4B9FB: ImpAdCallFPR4  = Format(, )
  loc_C4BA00: FLdRfVar var_128
  loc_C4BA03: LitVarStr var_138, "/"
  loc_C4BA08: ConcatVar var_148
  loc_C4BA0C: FLdRfVar var_19A
  loc_C4BA0F: FLdPr Me
  loc_C4BA12: MemLdRfVar from_stack_1.global_52
  loc_C4BA15: NewIfNullPr clsctacte
  loc_C4BA18: from_stack_1 = clsctacte.PeriCtct
  loc_C4BA1D: FLdI2 var_19A
  loc_C4BA20: CVarI2 var_1AC
  loc_C4BA23: ConcatVar var_158
  loc_C4BA27: CStrVarTmp
  loc_C4BA28: FLdRfVar var_98
  loc_C4BA2B: StFixedStrFree
  loc_C4BA2F: FFreeVar var_DC = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C4BA3C: FLdRfVar var_190
  loc_C4BA3F: FLdPr Me
  loc_C4BA42: MemLdRfVar from_stack_1.global_52
  loc_C4BA45: NewIfNullPr clsctacte
  loc_C4BA48: from_stack_1 = clsctacte.NumeBole
  loc_C4BA4D: LitI4 1
  loc_C4BA52: LitI4 1
  loc_C4BA57: LitVarStr var_104, "#######0"
  loc_C4BA5C: FStVarCopyObj var_118
  loc_C4BA5F: FLdRfVar var_118
  loc_C4BA62: ILdRf var_190
  loc_C4BA65: CVarI4
  loc_C4BA69: FLdRfVar var_128
  loc_C4BA6C: ImpAdCallFPR4  = Format(, )
  loc_C4BA71: FLdRfVar var_128
  loc_C4BA74: LitVarStr var_138, "-"
  loc_C4BA79: ConcatVar var_148
  loc_C4BA7D: FLdRfVar var_106
  loc_C4BA80: FLdPr Me
  loc_C4BA83: MemLdRfVar from_stack_1.global_52
  loc_C4BA86: NewIfNullPr clsctacte
  loc_C4BA89: from_stack_1 = clsctacte.PeriBole
  loc_C4BA8E: FLdI2 var_106
  loc_C4BA91: CVarI2 var_1AC
  loc_C4BA94: ConcatVar var_158
  loc_C4BA98: CStrVarTmp
  loc_C4BA99: FLdRfVar var_B2
  loc_C4BA9C: StFixedStrFree
  loc_C4BAA0: FFreeVar var_DC = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C4BAAD: FLdRfVar var_198
  loc_C4BAB0: FLdPr Me
  loc_C4BAB3: MemLdRfVar from_stack_1.global_52
  loc_C4BAB6: NewIfNullPr clsctacte
  loc_C4BAB9: from_stack_1 = clsctacte.SaldCtct
  loc_C4BABE: FLdFPR8 var_198
  loc_C4BAC1: FnCDblR8
  loc_C4BAC3: LitI2_Byte 0
  loc_C4BAC5: CR8I2
  loc_C4BAC6: NeR8
  loc_C4BAC7: BranchF loc_C4BB12
  loc_C4BACA: FLdRfVar var_198
  loc_C4BACD: FLdPr Me
  loc_C4BAD0: MemLdRfVar from_stack_1.global_52
  loc_C4BAD3: NewIfNullPr clsctacte
  loc_C4BAD6: from_stack_1 = clsctacte.SaldCtct
  loc_C4BADB: LitI4 1
  loc_C4BAE0: LitI4 1
  loc_C4BAE5: LitVarStr var_104, "###,###,##0.00"
  loc_C4BAEA: FStVarCopyObj var_118
  loc_C4BAED: FLdRfVar var_118
  loc_C4BAF0: FLdFPR8 var_198
  loc_C4BAF3: CVarR8
  loc_C4BAF7: FLdRfVar var_128
  loc_C4BAFA: ImpAdCallFPR4  = Format(, )
  loc_C4BAFF: FLdRfVar var_128
  loc_C4BB02: CStrVarTmp
  loc_C4BB03: FStStr var_BC
  loc_C4BB06: FFreeVar var_DC = "": var_118 = ""
  loc_C4BB0F: Branch loc_C4BB18
  loc_C4BB12: LitStr vbNullString
  loc_C4BB15: FStStrCopy var_BC
  loc_C4BB18: LitStr vbNullString
  loc_C4BB1B: FStStrCopy var_C0
  loc_C4BB1E: FLdRfVar var_198
  loc_C4BB21: FLdPr Me
  loc_C4BB24: MemLdRfVar from_stack_1.global_52
  loc_C4BB27: NewIfNullPr clsctacte
  loc_C4BB2A: from_stack_1 = clsctacte.RecaCtct
  loc_C4BB2F: FLdFPR8 var_198
  loc_C4BB32: FnCDblR8
  loc_C4BB34: LitI2_Byte 0
  loc_C4BB36: CR8I2
  loc_C4BB37: NeR8
  loc_C4BB38: BranchF loc_C4BB83
  loc_C4BB3B: FLdRfVar var_198
  loc_C4BB3E: FLdPr Me
  loc_C4BB41: MemLdRfVar from_stack_1.global_52
  loc_C4BB44: NewIfNullPr clsctacte
  loc_C4BB47: from_stack_1 = clsctacte.RecaCtct
  loc_C4BB4C: LitI4 1
  loc_C4BB51: LitI4 1
  loc_C4BB56: LitVarStr var_104, "###,###,##0.00"
  loc_C4BB5B: FStVarCopyObj var_118
  loc_C4BB5E: FLdRfVar var_118
  loc_C4BB61: FLdFPR8 var_198
  loc_C4BB64: CVarR8
  loc_C4BB68: FLdRfVar var_128
  loc_C4BB6B: ImpAdCallFPR4  = Format(, )
  loc_C4BB70: FLdRfVar var_128
  loc_C4BB73: CStrVarTmp
  loc_C4BB74: FStStr var_C4
  loc_C4BB77: FFreeVar var_DC = "": var_118 = ""
  loc_C4BB80: Branch loc_C4BB89
  loc_C4BB83: LitStr vbNullString
  loc_C4BB86: FStStrCopy var_C4
  loc_C4BB89: FLdRfVar var_198
  loc_C4BB8C: FLdPr Me
  loc_C4BB8F: MemLdRfVar from_stack_1.global_52
  loc_C4BB92: NewIfNullPr clsctacte
  loc_C4BB95: from_stack_1 = clsctacte.SaldCtct
  loc_C4BB9A: FLdRfVar var_1B4
  loc_C4BB9D: FLdPr Me
  loc_C4BBA0: MemLdRfVar from_stack_1.global_52
  loc_C4BBA3: NewIfNullPr clsctacte
  loc_C4BBA6: from_stack_1 = clsctacte.RecaCtct
  loc_C4BBAB: LitI4 2
  loc_C4BBB0: FLdFPR8 var_198
  loc_C4BBB3: FnCDblR8
  loc_C4BBB5: FLdFPR8 var_1B4
  loc_C4BBB8: FnCDblR8
  loc_C4BBBA: AddR8
  loc_C4BBBB: CVarR8
  loc_C4BBBF: FLdRfVar var_118
  loc_C4BBC2: ImpAdCallFPR4  = Round(, )
  loc_C4BBC7: LitI4 1
  loc_C4BBCC: LitI4 1
  loc_C4BBD1: LitVarStr var_104, "0.00"
  loc_C4BBD6: FStVarCopyObj var_128
  loc_C4BBD9: FLdRfVar var_128
  loc_C4BBDC: FLdRfVar var_118
  loc_C4BBDF: FLdRfVar var_148
  loc_C4BBE2: ImpAdCallFPR4  = Format(, )
  loc_C4BBE7: FLdRfVar var_148
  loc_C4BBEA: CStrVarTmp
  loc_C4BBEB: FStStr var_C8
  loc_C4BBEE: FFreeVar var_DC = "": var_118 = "": var_128 = ""
  loc_C4BBF9: FLdRfVar var_106
  loc_C4BBFC: FLdPr Me
  loc_C4BBFF: MemLdRfVar from_stack_1.global_52
  loc_C4BC02: NewIfNullPr clsctacte
  loc_C4BC05: from_stack_1 = clsctacte.CodiOfic
  loc_C4BC0A: FLdI2 var_106
  loc_C4BC0D: CVarI2 var_F4
  loc_C4BC10: LitI4 9
  loc_C4BC15: FLdRfVar var_DC
  loc_C4BC18: ImpAdCallFPR4  = Chr()
  loc_C4BC1D: FLdRfVar var_DC
  loc_C4BC20: ConcatVar var_118
  loc_C4BC24: FLdRfVar var_E0
  loc_C4BC27: FLdPr Me
  loc_C4BC2A: MemLdRfVar from_stack_1.global_52
  loc_C4BC2D: NewIfNullPr clsctacte
  loc_C4BC30: from_stack_1 = clsctacte.CuenCtct
  loc_C4BC35: FLdZeroAd var_E0
  loc_C4BC38: CVarStr var_128
  loc_C4BC3B: ConcatVar var_148
  loc_C4BC3F: LitI4 9
  loc_C4BC44: FLdRfVar var_158
  loc_C4BC47: ImpAdCallFPR4  = Chr()
  loc_C4BC4C: FLdRfVar var_158
  loc_C4BC4F: ConcatVar var_178
  loc_C4BC53: FLdRfVar var_98
  loc_C4BC56: LdFixedStr
  loc_C4BC59: CVarStr var_188
  loc_C4BC5C: ConcatVar var_1C4
  loc_C4BC60: LitI4 9
  loc_C4BC65: FLdRfVar var_1D4
  loc_C4BC68: ImpAdCallFPR4  = Chr()
  loc_C4BC6D: FLdRfVar var_1D4
  loc_C4BC70: ConcatVar var_1E4
  loc_C4BC74: FLdRfVar var_B2
  loc_C4BC77: LdFixedStr
  loc_C4BC7A: CVarStr var_1F4
  loc_C4BC7D: ConcatVar var_204
  loc_C4BC81: LitI4 9
  loc_C4BC86: FLdRfVar var_214
  loc_C4BC89: ImpAdCallFPR4  = Chr()
  loc_C4BC8E: FLdRfVar var_214
  loc_C4BC91: ConcatVar var_224
  loc_C4BC95: FLdRfVar var_E4
  loc_C4BC98: FLdPr Me
  loc_C4BC9B: MemLdRfVar from_stack_1.global_52
  loc_C4BC9E: NewIfNullPr clsctacte
  loc_C4BCA1: from_stack_1 = clsctacte.FealCtct
  loc_C4BCA6: FLdZeroAd var_E4
  loc_C4BCA9: CVarStr var_234
  loc_C4BCAC: ConcatVar var_244
  loc_C4BCB0: LitI4 9
  loc_C4BCB5: FLdRfVar var_254
  loc_C4BCB8: ImpAdCallFPR4  = Chr()
  loc_C4BCBD: FLdRfVar var_254
  loc_C4BCC0: ConcatVar var_264
  loc_C4BCC4: FLdRfVar var_274
  loc_C4BCC7: FLdPr Me
  loc_C4BCCA: MemLdRfVar from_stack_1.global_52
  loc_C4BCCD: NewIfNullPr clsctacte
  loc_C4BCD0: from_stack_1 = clsctacte.FeveCtct
  loc_C4BCD5: FLdRfVar var_274
  loc_C4BCD8: ConcatVar var_284
  loc_C4BCDC: LitI4 9
  loc_C4BCE1: FLdRfVar var_294
  loc_C4BCE4: ImpAdCallFPR4  = Chr()
  loc_C4BCE9: FLdRfVar var_294
  loc_C4BCEC: ConcatVar var_2A4
  loc_C4BCF0: FLdRfVar var_15C
  loc_C4BCF3: FLdPr Me
  loc_C4BCF6: MemLdRfVar from_stack_1.global_52
  loc_C4BCF9: NewIfNullPr clsctacte
  loc_C4BCFC: from_stack_1 = clsctacte.CodiConc
  loc_C4BD01: FLdZeroAd var_15C
  loc_C4BD04: CVarStr var_2B4
  loc_C4BD07: ConcatVar var_2C4
  loc_C4BD0B: LitI4 9
  loc_C4BD10: FLdRfVar var_2D4
  loc_C4BD13: ImpAdCallFPR4  = Chr()
  loc_C4BD18: FLdRfVar var_2D4
  loc_C4BD1B: ConcatVar var_2E4
  loc_C4BD1F: FLdRfVar var_190
  loc_C4BD22: FLdPr Me
  loc_C4BD25: MemLdRfVar from_stack_1.global_52
  loc_C4BD28: NewIfNullPr clsctacte
  loc_C4BD2B: from_stack_1 = clsctacte.CodiFapa
  loc_C4BD30: ILdRf var_190
  loc_C4BD33: CVarI4
  loc_C4BD37: ConcatVar var_2F4
  loc_C4BD3B: LitI4 9
  loc_C4BD40: FLdRfVar var_304
  loc_C4BD43: ImpAdCallFPR4  = Chr()
  loc_C4BD48: FLdRfVar var_304
  loc_C4BD4B: ConcatVar var_314
  loc_C4BD4F: FLdRfVar var_318
  loc_C4BD52: FLdPr Me
  loc_C4BD55: MemLdRfVar from_stack_1.global_52
  loc_C4BD58: NewIfNullPr clsctacte
  loc_C4BD5B: from_stack_1 = clsctacte.NumeApre
  loc_C4BD60: ILdRf var_318
  loc_C4BD63: CVarI4
  loc_C4BD67: ConcatVar var_328
  loc_C4BD6B: LitI4 9
  loc_C4BD70: FLdRfVar var_338
  loc_C4BD73: ImpAdCallFPR4  = Chr()
  loc_C4BD78: FLdRfVar var_338
  loc_C4BD7B: ConcatVar var_348
  loc_C4BD7F: FLdRfVar var_160
  loc_C4BD82: FLdPr Me
  loc_C4BD85: MemLdRfVar from_stack_1.global_52
  loc_C4BD88: NewIfNullPr clsctacte
  loc_C4BD8B: from_stack_1 = clsctacte.ExpeCtct
  loc_C4BD90: FLdZeroAd var_160
  loc_C4BD93: CVarStr var_358
  loc_C4BD96: ConcatVar var_368
  loc_C4BD9A: LitI4 9
  loc_C4BD9F: FLdRfVar var_378
  loc_C4BDA2: ImpAdCallFPR4  = Chr()
  loc_C4BDA7: FLdRfVar var_378
  loc_C4BDAA: ConcatVar var_388
  loc_C4BDAE: FLdRfVar var_164
  loc_C4BDB1: FLdPr Me
  loc_C4BDB4: MemLdRfVar from_stack_1.global_52
  loc_C4BDB7: NewIfNullPr clsctacte
  loc_C4BDBA: from_stack_1 = clsctacte.AbreTimo
  loc_C4BDBF: FLdZeroAd var_164
  loc_C4BDC2: CVarStr var_398
  loc_C4BDC5: ConcatVar var_3A8
  loc_C4BDC9: LitI4 9
  loc_C4BDCE: FLdRfVar var_3B8
  loc_C4BDD1: ImpAdCallFPR4  = Chr()
  loc_C4BDD6: FLdRfVar var_3B8
  loc_C4BDD9: ConcatVar var_3C8
  loc_C4BDDD: ILdRf var_BC
  loc_C4BDE0: CVarStr var_1AC
  loc_C4BDE3: ConcatVar var_3D8
  loc_C4BDE7: LitI4 9
  loc_C4BDEC: FLdRfVar var_3E8
  loc_C4BDEF: ImpAdCallFPR4  = Chr()
  loc_C4BDF4: FLdRfVar var_3E8
  loc_C4BDF7: ConcatVar var_3F8
  loc_C4BDFB: ILdRf var_C4
  loc_C4BDFE: CVarStr var_408
  loc_C4BE01: ConcatVar var_418
  loc_C4BE05: LitI4 9
  loc_C4BE0A: FLdRfVar var_428
  loc_C4BE0D: ImpAdCallFPR4  = Chr()
  loc_C4BE12: FLdRfVar var_428
  loc_C4BE15: ConcatVar var_438
  loc_C4BE19: ILdRf var_C8
  loc_C4BE1C: CVarStr var_448
  loc_C4BE1F: ConcatVar var_458
  loc_C4BE23: LitI4 9
  loc_C4BE28: FLdRfVar var_468
  loc_C4BE2B: ImpAdCallFPR4  = Chr()
  loc_C4BE30: FLdRfVar var_468
  loc_C4BE33: ConcatVar var_478
  loc_C4BE37: LitVarStr var_488, "No"
  loc_C4BE3C: ConcatVar var_498
  loc_C4BE40: LitI4 9
  loc_C4BE45: FLdRfVar var_4A8
  loc_C4BE48: ImpAdCallFPR4  = Chr()
  loc_C4BE4D: FLdRfVar var_4A8
  loc_C4BE50: ConcatVar var_4B8
  loc_C4BE54: FLdRfVar var_4BC
  loc_C4BE57: FLdPr Me
  loc_C4BE5A: MemLdRfVar from_stack_1.global_52
  loc_C4BE5D: NewIfNullPr clsctacte
  loc_C4BE60: from_stack_1 = clsctacte.NumeCtct
  loc_C4BE65: ILdRf var_4BC
  loc_C4BE68: CVarI4
  loc_C4BE6C: ConcatVar var_4DC
  loc_C4BE70: LitI4 9
  loc_C4BE75: FLdRfVar var_4EC
  loc_C4BE78: ImpAdCallFPR4  = Chr()
  loc_C4BE7D: FLdRfVar var_4EC
  loc_C4BE80: ConcatVar var_4FC
  loc_C4BE84: FLdRfVar var_19A
  loc_C4BE87: FLdPr Me
  loc_C4BE8A: MemLdRfVar from_stack_1.global_52
  loc_C4BE8D: NewIfNullPr clsctacte
  loc_C4BE90: from_stack_1 = clsctacte.MoviCtct
  loc_C4BE95: FLdI2 var_19A
  loc_C4BE98: CVarI2 var_50C
  loc_C4BE9B: ConcatVar var_51C
  loc_C4BE9F: CStrVarTmp
  loc_C4BEA0: FStStr var_B8
  loc_C4BEA3: FFreeVar var_338 = "": var_348 = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_418 = "": var_428 = "": var_438 = "": var_458 = "": var_468 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4B8 = "": var_4DC = "": var_4EC = "": var_4FC = "": var_51C = "": var_DC = "": var_118 = "": var_128 = "": var_148 = "": var_158 = "": var_178 = "": var_188 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2C4 = "": var_2D4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_314 = ""
  loc_C4BF16: FLdRfVar var_B8
  loc_C4BF19: CDargRef
  loc_C4BF1D: FLdPr Me
  loc_C4BF20: VCallAd Control_ID_ctacteFlex
  loc_C4BF23: FStAdFunc var_CC
  loc_C4BF26: FLdPr var_CC
  loc_C4BF29: LateIdCall
  loc_C4BF31: FFree1Ad var_CC
  loc_C4BF34: FLdPr Me
  loc_C4BF37: MemLdRfVar from_stack_1.global_52
  loc_C4BF3A: NewIfNullPr clsctacte
  loc_C4BF3D: Call clsctacte.MoveSiguiente()
  loc_C4BF42: Branch loc_C4B90C
  loc_C4BF45: LitI4 1
  loc_C4BF4A: LitI4 1
  loc_C4BF4F: LitVarStr var_104, "###,###,##0.00"
  loc_C4BF54: FStVarCopyObj var_DC
  loc_C4BF57: FLdRfVar var_DC
  loc_C4BF5A: FLdPr Me
  loc_C4BF5D: MemLdRfVar from_stack_1.global_104
  loc_C4BF60: CVarRef
  loc_C4BF65: FLdRfVar var_118
  loc_C4BF68: ImpAdCallFPR4  = Format(, )
  loc_C4BF6D: FLdRfVar var_118
  loc_C4BF70: CStrVarVal var_E0
  loc_C4BF74: FLdPr Me
  loc_C4BF77: VCallAd Control_ID_txtTotaDere
  loc_C4BF7A: FStAdFunc var_CC
  loc_C4BF7D: FLdPr var_CC
  loc_C4BF80: Me.Text = from_stack_1
  loc_C4BF85: FFree1Str var_E0
  loc_C4BF88: FFree1Ad var_CC
  loc_C4BF8B: FFreeVar var_DC = ""
  loc_C4BF92: LitI4 1
  loc_C4BF97: LitI4 1
  loc_C4BF9C: LitVarStr var_104, "###,###,##0.00"
  loc_C4BFA1: FStVarCopyObj var_DC
  loc_C4BFA4: FLdRfVar var_DC
  loc_C4BFA7: FLdPr Me
  loc_C4BFAA: MemLdRfVar from_stack_1.global_112
  loc_C4BFAD: CVarRef
  loc_C4BFB2: FLdRfVar var_118
  loc_C4BFB5: ImpAdCallFPR4  = Format(, )
  loc_C4BFBA: FLdRfVar var_118
  loc_C4BFBD: CStrVarVal var_E0
  loc_C4BFC1: FLdPr Me
  loc_C4BFC4: VCallAd Control_ID_txtTotaReca
  loc_C4BFC7: FStAdFunc var_CC
  loc_C4BFCA: FLdPr var_CC
  loc_C4BFCD: Me.Text = from_stack_1
  loc_C4BFD2: FFree1Str var_E0
  loc_C4BFD5: FFree1Ad var_CC
  loc_C4BFD8: FFreeVar var_DC = ""
  loc_C4BFDF: LitI4 1
  loc_C4BFE4: LitI4 1
  loc_C4BFE9: LitVarStr var_104, "###,###,##0.00"
  loc_C4BFEE: FStVarCopyObj var_DC
  loc_C4BFF1: FLdRfVar var_DC
  loc_C4BFF4: FLdPr Me
  loc_C4BFF7: MemLdRfVar from_stack_1.global_120
  loc_C4BFFA: CVarRef
  loc_C4BFFF: FLdRfVar var_118
  loc_C4C002: ImpAdCallFPR4  = Format(, )
  loc_C4C007: FLdRfVar var_118
  loc_C4C00A: CStrVarVal var_E0
  loc_C4C00E: FLdPr Me
  loc_C4C011: VCallAd Control_ID_txtTotaApre
  loc_C4C014: FStAdFunc var_CC
  loc_C4C017: FLdPr var_CC
  loc_C4C01A: Me.Text = from_stack_1
  loc_C4C01F: FFree1Str var_E0
  loc_C4C022: FFree1Ad var_CC
  loc_C4C025: FFreeVar var_DC = ""
  loc_C4C02C: LitI4 2
  loc_C4C031: FLdPr Me
  loc_C4C034: MemLdRfVar from_stack_1.global_104
  loc_C4C037: CVarRef
  loc_C4C03C: FLdRfVar var_DC
  loc_C4C03F: ImpAdCallFPR4  = Round(, )
  loc_C4C044: FLdRfVar var_DC
  loc_C4C047: LitI4 2
  loc_C4C04C: FLdPr Me
  loc_C4C04F: MemLdRfVar from_stack_1.global_112
  loc_C4C052: CVarRef
  loc_C4C057: FLdRfVar var_118
  loc_C4C05A: ImpAdCallFPR4  = Round(, )
  loc_C4C05F: FLdRfVar var_118
  loc_C4C062: AddVar var_128
  loc_C4C066: LitI4 2
  loc_C4C06B: FLdPr Me
  loc_C4C06E: MemLdRfVar from_stack_1.global_120
  loc_C4C071: CVarRef
  loc_C4C076: FLdRfVar var_148
  loc_C4C079: ImpAdCallFPR4  = Round(, )
  loc_C4C07E: FLdRfVar var_148
  loc_C4C081: AddVar var_158
  loc_C4C085: CR4Var
  loc_C4C086: FLdPr Me
  loc_C4C089: MemStFPR8 global_128
  loc_C4C08C: FFreeVar var_DC = "": var_118 = "": var_128 = "": var_148 = ""
  loc_C4C099: LitI4 1
  loc_C4C09E: LitI4 1
  loc_C4C0A3: LitVarStr var_104, "###,###,##0.00"
  loc_C4C0A8: FStVarCopyObj var_DC
  loc_C4C0AB: FLdRfVar var_DC
  loc_C4C0AE: FLdPr Me
  loc_C4C0B1: MemLdRfVar from_stack_1.global_128
  loc_C4C0B4: CVarRef
  loc_C4C0B9: FLdRfVar var_118
  loc_C4C0BC: ImpAdCallFPR4  = Format(, )
  loc_C4C0C1: FLdRfVar var_118
  loc_C4C0C4: CStrVarVal var_E0
  loc_C4C0C8: FLdPr Me
  loc_C4C0CB: VCallAd Control_ID_txtTotal
  loc_C4C0CE: FStAdFunc var_CC
  loc_C4C0D1: FLdPr var_CC
  loc_C4C0D4: Me.Text = from_stack_1
  loc_C4C0D9: FFree1Str var_E0
  loc_C4C0DC: FFree1Ad var_CC
  loc_C4C0DF: FFreeVar var_DC = ""
  loc_C4C0E6: LitI2_Byte &HFF
  loc_C4C0E8: FLdPr Me
  loc_C4C0EB: VCallAd Control_ID_ConfirmarCmd
  loc_C4C0EE: FStAdFunc var_CC
  loc_C4C0F1: FLdPr var_CC
  loc_C4C0F4: Me.Enabled = from_stack_1b
  loc_C4C0F9: FFree1Ad var_CC
  loc_C4C0FC: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'B398EC
  'Data Table: 504878
  loc_B395EC: LitI4 0
  loc_B395F1: LitI4 0
  loc_B395F6: FLdRfVar var_88
  loc_B395F9: Redim
  loc_B39603: FLdPr Me
  loc_B39606: VCallAd Control_ID_ConfirmarCmd
  loc_B39609: CVarAd
  loc_B3960D: ParmAry1St
  loc_B39613: FLdRfVar var_88
  loc_B39616: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B3961B: FLdRfVar var_88
  loc_B3961E: Erase
  loc_B3961F: Call Proc_300_24_B196A8()
  loc_B39624: FLdPrThis
  loc_B39625: VCallAd Control_ID_NumeCtaTxt
  loc_B39628: CVarAd
  loc_B3962C: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_B39631: FFree1Var var_98 = ""
  loc_B39634: LitI2_Byte 0
  loc_B39636: CR8I2
  loc_B39637: FLdPr Me
  loc_B3963A: MemStFPR8 global_104
  loc_B3963D: LitI2_Byte 0
  loc_B3963F: CR8I2
  loc_B39640: FLdPr Me
  loc_B39643: MemStFPR8 global_112
  loc_B39646: LitI2_Byte 0
  loc_B39648: CR8I2
  loc_B39649: FLdPr Me
  loc_B3964C: MemStFPR8 global_120
  loc_B3964F: LitI2_Byte 0
  loc_B39651: CR8I2
  loc_B39652: FLdPr Me
  loc_B39655: MemStFPR8 global_128
  loc_B39658: LitI2_Byte 0
  loc_B3965A: CR8I2
  loc_B3965B: FLdPr Me
  loc_B3965E: MemStFPR8 global_136
  loc_B39661: LitI4 1
  loc_B39666: LitI4 1
  loc_B3966B: LitVarStr var_B8, "0.00"
  loc_B39670: FStVarCopyObj var_98
  loc_B39673: FLdRfVar var_98
  loc_B39676: FLdPr Me
  loc_B39679: MemLdRfVar from_stack_1.global_104
  loc_B3967C: CVarRef
  loc_B39681: FLdRfVar var_C8
  loc_B39684: ImpAdCallFPR4  = Format(, )
  loc_B39689: FLdRfVar var_C8
  loc_B3968C: CStrVarVal var_CC
  loc_B39690: FLdPr Me
  loc_B39693: VCallAd Control_ID_txtTotaDere
  loc_B39696: FStAdFunc var_D0
  loc_B39699: FLdPr var_D0
  loc_B3969C: Me.Text = from_stack_1
  loc_B396A1: FFree1Str var_CC
  loc_B396A4: FFree1Ad var_D0
  loc_B396A7: FFreeVar var_98 = ""
  loc_B396AE: LitI4 1
  loc_B396B3: LitI4 1
  loc_B396B8: LitVarStr var_B8, "0.00"
  loc_B396BD: FStVarCopyObj var_98
  loc_B396C0: FLdRfVar var_98
  loc_B396C3: FLdPr Me
  loc_B396C6: MemLdRfVar from_stack_1.global_112
  loc_B396C9: CVarRef
  loc_B396CE: FLdRfVar var_C8
  loc_B396D1: ImpAdCallFPR4  = Format(, )
  loc_B396D6: FLdRfVar var_C8
  loc_B396D9: CStrVarVal var_CC
  loc_B396DD: FLdPr Me
  loc_B396E0: VCallAd Control_ID_txtTotaReca
  loc_B396E3: FStAdFunc var_D0
  loc_B396E6: FLdPr var_D0
  loc_B396E9: Me.Text = from_stack_1
  loc_B396EE: FFree1Str var_CC
  loc_B396F1: FFree1Ad var_D0
  loc_B396F4: FFreeVar var_98 = ""
  loc_B396FB: LitI4 1
  loc_B39700: LitI4 1
  loc_B39705: LitVarStr var_B8, "0.00"
  loc_B3970A: FStVarCopyObj var_98
  loc_B3970D: FLdRfVar var_98
  loc_B39710: FLdPr Me
  loc_B39713: MemLdRfVar from_stack_1.global_120
  loc_B39716: CVarRef
  loc_B3971B: FLdRfVar var_C8
  loc_B3971E: ImpAdCallFPR4  = Format(, )
  loc_B39723: FLdRfVar var_C8
  loc_B39726: CStrVarVal var_CC
  loc_B3972A: FLdPr Me
  loc_B3972D: VCallAd Control_ID_txtTotaApre
  loc_B39730: FStAdFunc var_D0
  loc_B39733: FLdPr var_D0
  loc_B39736: Me.Text = from_stack_1
  loc_B3973B: FFree1Str var_CC
  loc_B3973E: FFree1Ad var_D0
  loc_B39741: FFreeVar var_98 = ""
  loc_B39748: LitI4 2
  loc_B3974D: FLdPr Me
  loc_B39750: MemLdRfVar from_stack_1.global_104
  loc_B39753: CVarRef
  loc_B39758: FLdRfVar var_98
  loc_B3975B: ImpAdCallFPR4  = Round(, )
  loc_B39760: FLdRfVar var_98
  loc_B39763: LitI4 2
  loc_B39768: FLdPr Me
  loc_B3976B: MemLdRfVar from_stack_1.global_112
  loc_B3976E: CVarRef
  loc_B39773: FLdRfVar var_C8
  loc_B39776: ImpAdCallFPR4  = Round(, )
  loc_B3977B: FLdRfVar var_C8
  loc_B3977E: AddVar var_E0
  loc_B39782: LitI4 2
  loc_B39787: FLdPr Me
  loc_B3978A: MemLdRfVar from_stack_1.global_120
  loc_B3978D: CVarRef
  loc_B39792: FLdRfVar var_100
  loc_B39795: ImpAdCallFPR4  = Round(, )
  loc_B3979A: FLdRfVar var_100
  loc_B3979D: AddVar var_110
  loc_B397A1: CR4Var
  loc_B397A2: FLdPr Me
  loc_B397A5: MemStFPR8 global_128
  loc_B397A8: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B397B5: LitI4 1
  loc_B397BA: LitI4 1
  loc_B397BF: LitVarStr var_B8, "0.00"
  loc_B397C4: FStVarCopyObj var_98
  loc_B397C7: FLdRfVar var_98
  loc_B397CA: FLdPr Me
  loc_B397CD: MemLdRfVar from_stack_1.global_128
  loc_B397D0: CVarRef
  loc_B397D5: FLdRfVar var_C8
  loc_B397D8: ImpAdCallFPR4  = Format(, )
  loc_B397DD: FLdRfVar var_C8
  loc_B397E0: CStrVarVal var_CC
  loc_B397E4: FLdPr Me
  loc_B397E7: VCallAd Control_ID_txtTotal
  loc_B397EA: FStAdFunc var_D0
  loc_B397ED: FLdPr var_D0
  loc_B397F0: Me.Text = from_stack_1
  loc_B397F5: FFree1Str var_CC
  loc_B397F8: FFree1Ad var_D0
  loc_B397FB: FFreeVar var_98 = ""
  loc_B39802: LitI4 1
  loc_B39807: LitI4 1
  loc_B3980C: LitVarStr var_B8, "0.00"
  loc_B39811: FStVarCopyObj var_98
  loc_B39814: FLdRfVar var_98
  loc_B39817: FLdPr Me
  loc_B3981A: MemLdRfVar from_stack_1.global_104
  loc_B3981D: CVarRef
  loc_B39822: FLdRfVar var_C8
  loc_B39825: ImpAdCallFPR4  = Format(, )
  loc_B3982A: FLdRfVar var_C8
  loc_B3982D: CStrVarVal var_CC
  loc_B39831: FLdPr Me
  loc_B39834: VCallAd Control_ID_txtDereSele
  loc_B39837: FStAdFunc var_D0
  loc_B3983A: FLdPr var_D0
  loc_B3983D: Me.Text = from_stack_1
  loc_B39842: FFree1Str var_CC
  loc_B39845: FFree1Ad var_D0
  loc_B39848: FFreeVar var_98 = ""
  loc_B3984F: LitI4 1
  loc_B39854: LitI4 1
  loc_B39859: LitVarStr var_B8, "0.00"
  loc_B3985E: FStVarCopyObj var_98
  loc_B39861: FLdRfVar var_98
  loc_B39864: FLdPr Me
  loc_B39867: MemLdRfVar from_stack_1.global_112
  loc_B3986A: CVarRef
  loc_B3986F: FLdRfVar var_C8
  loc_B39872: ImpAdCallFPR4  = Format(, )
  loc_B39877: FLdRfVar var_C8
  loc_B3987A: CStrVarVal var_CC
  loc_B3987E: FLdPr Me
  loc_B39881: VCallAd Control_ID_txtRecaSele
  loc_B39884: FStAdFunc var_D0
  loc_B39887: FLdPr var_D0
  loc_B3988A: Me.Text = from_stack_1
  loc_B3988F: FFree1Str var_CC
  loc_B39892: FFree1Ad var_D0
  loc_B39895: FFreeVar var_98 = ""
  loc_B3989C: LitI4 1
  loc_B398A1: LitI4 1
  loc_B398A6: LitVarStr var_B8, "0.00"
  loc_B398AB: FStVarCopyObj var_98
  loc_B398AE: FLdRfVar var_98
  loc_B398B1: FLdPr Me
  loc_B398B4: MemLdRfVar from_stack_1.global_136
  loc_B398B7: CVarRef
  loc_B398BC: FLdRfVar var_C8
  loc_B398BF: ImpAdCallFPR4  = Format(, )
  loc_B398C4: FLdRfVar var_C8
  loc_B398C7: CStrVarVal var_CC
  loc_B398CB: FLdPr Me
  loc_B398CE: VCallAd Control_ID_txtTotaSele
  loc_B398D1: FStAdFunc var_D0
  loc_B398D4: FLdPr var_D0
  loc_B398D7: Me.Text = from_stack_1
  loc_B398DC: FFree1Str var_CC
  loc_B398DF: FFree1Ad var_D0
  loc_B398E2: FFreeVar var_98 = ""
  loc_B398E9: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B3B3D0
  'Data Table: 504878
  loc_B3B0D8: FLdRfVar var_8A
  loc_B3B0DB: FLdPr Me
  loc_B3B0DE: VCallAd Control_ID_NumeCtaTxt
  loc_B3B0E1: FStAdFunc var_88
  loc_B3B0E4: FLdPr var_88
  loc_B3B0E7:  = Me.Enabled
  loc_B3B0EC: FLdI2 var_8A
  loc_B3B0EF: FFree1Ad var_88
  loc_B3B0F2: BranchF loc_B3B3CD
  loc_B3B0F5: FLdRfVar var_90
  loc_B3B0F8: FLdPr Me
  loc_B3B0FB: VCallAd Control_ID_NumeCtaTxt
  loc_B3B0FE: FStAdFunc var_88
  loc_B3B101: FLdPr var_88
  loc_B3B104:  = Me.Text
  loc_B3B109: FLdZeroAd var_90
  loc_B3B10C: CVarStr var_A0
  loc_B3B10F: FLdRfVar var_B0
  loc_B3B112: ImpAdCallFPR4  = Trim()
  loc_B3B117: FLdRfVar var_B0
  loc_B3B11A: CStrVarVal var_B4
  loc_B3B11E: FLdPr Me
  loc_B3B121: VCallAd Control_ID_NumeCtaTxt
  loc_B3B124: FStAdFunc var_B8
  loc_B3B127: FLdPr var_B8
  loc_B3B12A: Me.Text = from_stack_1
  loc_B3B12F: FFree1Str var_B4
  loc_B3B132: FFreeAd var_88 = ""
  loc_B3B139: FFreeVar var_A0 = ""
  loc_B3B140: FLdRfVar var_8A
  loc_B3B143: FLdPr Me
  loc_B3B146: VCallAd Control_ID_OficinaCbo
  loc_B3B149: FStAdFunc var_88
  loc_B3B14C: FLdPr var_88
  loc_B3B14F:  = Me.ListIndex
  loc_B3B154: FLdI2 var_8A
  loc_B3B157: FStI2 var_BA
  loc_B3B15A: FFree1Ad var_88
  loc_B3B15D: FLdI2 var_BA
  loc_B3B160: LitI2_Byte 0
  loc_B3B162: EqI2
  loc_B3B163: BranchF loc_B3B171
  loc_B3B166: LitI2_Byte 1
  loc_B3B168: CUI1I2
  loc_B3B16A: ImpAdStUI1 MemVar_D93038
  loc_B3B16E: Branch loc_B3B1E6
  loc_B3B171: FLdI2 var_BA
  loc_B3B174: LitI2_Byte 1
  loc_B3B176: EqI2
  loc_B3B177: BranchF loc_B3B185
  loc_B3B17A: LitI2_Byte 2
  loc_B3B17C: CUI1I2
  loc_B3B17E: ImpAdStUI1 MemVar_D93038
  loc_B3B182: Branch loc_B3B1E6
  loc_B3B185: FLdI2 var_BA
  loc_B3B188: LitI2_Byte 2
  loc_B3B18A: EqI2
  loc_B3B18B: BranchF loc_B3B199
  loc_B3B18E: LitI2_Byte 3
  loc_B3B190: CUI1I2
  loc_B3B192: ImpAdStUI1 MemVar_D93038
  loc_B3B196: Branch loc_B3B1E6
  loc_B3B199: FLdI2 var_BA
  loc_B3B19C: LitI2_Byte 3
  loc_B3B19E: EqI2
  loc_B3B19F: BranchF loc_B3B1AD
  loc_B3B1A2: LitI2_Byte 4
  loc_B3B1A4: CUI1I2
  loc_B3B1A6: ImpAdStUI1 MemVar_D93038
  loc_B3B1AA: Branch loc_B3B1E6
  loc_B3B1AD: FLdI2 var_BA
  loc_B3B1B0: LitI2_Byte 4
  loc_B3B1B2: EqI2
  loc_B3B1B3: BranchF loc_B3B1C1
  loc_B3B1B6: LitI2_Byte 5
  loc_B3B1B8: CUI1I2
  loc_B3B1BA: ImpAdStUI1 MemVar_D93038
  loc_B3B1BE: Branch loc_B3B1E6
  loc_B3B1C1: FLdI2 var_BA
  loc_B3B1C4: LitI2_Byte 5
  loc_B3B1C6: EqI2
  loc_B3B1C7: BranchF loc_B3B1D5
  loc_B3B1CA: LitI2_Byte 6
  loc_B3B1CC: CUI1I2
  loc_B3B1CE: ImpAdStUI1 MemVar_D93038
  loc_B3B1D2: Branch loc_B3B1E6
  loc_B3B1D5: FLdI2 var_BA
  loc_B3B1D8: LitI2_Byte 6
  loc_B3B1DA: EqI2
  loc_B3B1DB: BranchF loc_B3B1E6
  loc_B3B1DE: LitI2_Byte 7
  loc_B3B1E0: CUI1I2
  loc_B3B1E2: ImpAdStUI1 MemVar_D93038
  loc_B3B1E6: FLdRfVar var_90
  loc_B3B1E9: FLdPr Me
  loc_B3B1EC: VCallAd Control_ID_NumeCtaTxt
  loc_B3B1EF: FStAdFunc var_88
  loc_B3B1F2: FLdPr var_88
  loc_B3B1F5:  = Me.Text
  loc_B3B1FA: FLdPr Me
  loc_B3B1FD: MemLdRfVar from_stack_1.global_64
  loc_B3B200: NewIfNullRf
  loc_B3B204: LitStr "Titular"
  loc_B3B207: ILdRf var_90
  loc_B3B20A: ImpAdLdUI1
  loc_B3B20E: CStrI2
  loc_B3B210: FStStrNoPop var_B4
  loc_B3B213: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B3B218: FFreeStr var_B4 = ""
  loc_B3B21F: FFree1Ad var_88
  loc_B3B222: BranchF loc_B3B347
  loc_B3B225: FLdRfVar var_90
  loc_B3B228: FLdPr Me
  loc_B3B22B: MemLdRfVar from_stack_1.global_64
  loc_B3B22E: NewIfNullPr tblPersona
  loc_B3B231: from_stack_1v = tblPersona.CucuPersGet()
  loc_B3B236: ILdRf var_90
  loc_B3B239: FLdPr Me
  loc_B3B23C: VCallAd Control_ID_CucuPersLbl
  loc_B3B23F: FStAdFunc var_88
  loc_B3B242: FLdPr var_88
  loc_B3B245: Me.Caption = from_stack_1
  loc_B3B24A: FFree1Str var_90
  loc_B3B24D: FFree1Ad var_88
  loc_B3B250: FLdRfVar var_90
  loc_B3B253: FLdPr Me
  loc_B3B256: MemLdRfVar from_stack_1.global_64
  loc_B3B259: NewIfNullPr tblPersona
  loc_B3B25C: from_stack_1v = tblPersona.DetaPersGet()
  loc_B3B261: ILdRf var_90
  loc_B3B264: FLdPr Me
  loc_B3B267: VCallAd Control_ID_DetaPersLbl
  loc_B3B26A: FStAdFunc var_88
  loc_B3B26D: FLdPr var_88
  loc_B3B270: Me.Caption = from_stack_1
  loc_B3B275: FFree1Str var_90
  loc_B3B278: FFree1Ad var_88
  loc_B3B27B: FLdRfVar var_B4
  loc_B3B27E: FLdPr Me
  loc_B3B281: MemLdRfVar from_stack_1.global_64
  loc_B3B284: NewIfNullPr tblPersona
  loc_B3B287: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3B28C: FLdRfVar var_C0
  loc_B3B28F: FLdPr Me
  loc_B3B292: MemLdRfVar from_stack_1.global_64
  loc_B3B295: NewIfNullPr tblPersona
  loc_B3B298: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3B29D: FLdRfVar var_90
  loc_B3B2A0: FLdPr Me
  loc_B3B2A3: MemLdRfVar from_stack_1.global_64
  loc_B3B2A6: NewIfNullPr tblPersona
  loc_B3B2A9: from_stack_1v = tblPersona.DetaCallGet()
  loc_B3B2AE: ILdRf var_90
  loc_B3B2B1: LitStr " "
  loc_B3B2B4: ConcatStr
  loc_B3B2B5: CVarStr var_100
  loc_B3B2B8: LitVarStr var_E0, vbNullString
  loc_B3B2BD: FStVarCopyObj var_B0
  loc_B3B2C0: FLdRfVar var_B0
  loc_B3B2C3: LitStr "Nro: "
  loc_B3B2C6: ILdRf var_C0
  loc_B3B2C9: ConcatStr
  loc_B3B2CA: CVarStr var_A0
  loc_B3B2CD: ILdRf var_B4
  loc_B3B2D0: LitStr "0"
  loc_B3B2D3: NeStr
  loc_B3B2D5: CVarBoolI2 var_D0
  loc_B3B2D9: FLdRfVar var_F0
  loc_B3B2DC: ImpAdCallFPR4  = IIf(, , )
  loc_B3B2E1: FLdRfVar var_F0
  loc_B3B2E4: ConcatVar var_110
  loc_B3B2E8: LitVarStr var_120, " "
  loc_B3B2ED: ConcatVar var_130
  loc_B3B2F1: FLdRfVar var_134
  loc_B3B2F4: FLdPr Me
  loc_B3B2F7: MemLdRfVar from_stack_1.global_64
  loc_B3B2FA: NewIfNullPr tblPersona
  loc_B3B2FD: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B3B302: FLdZeroAd var_134
  loc_B3B305: CVarStr var_144
  loc_B3B308: ConcatVar var_154
  loc_B3B30C: CStrVarVal var_158
  loc_B3B310: FLdPr Me
  loc_B3B313: VCallAd Control_ID_DomiPersLbl
  loc_B3B316: FStAdFunc var_88
  loc_B3B319: FLdPr var_88
  loc_B3B31C: Me.Caption = from_stack_1
  loc_B3B321: FFreeStr var_90 = "": var_B4 = "": var_C0 = ""
  loc_B3B32C: FFree1Ad var_88
  loc_B3B32F: FFreeVar var_D0 = "": var_A0 = "": var_B0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = ""
  loc_B3B344: Branch loc_B3B3CD
  loc_B3B347: FLdRfVar var_90
  loc_B3B34A: FLdPr Me
  loc_B3B34D: MemLdRfVar from_stack_1.global_64
  loc_B3B350: NewIfNullPr tblPersona
  loc_B3B353: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B3B358: ILdRf var_90
  loc_B3B35B: FLdPr Me
  loc_B3B35E: MemStStrCopy
  loc_B3B362: FFree1Str var_90
  loc_B3B365: FLdPr Me
  loc_B3B368: MemLdStr global_100
  loc_B3B36B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B3B370: LitStr vbNullString
  loc_B3B373: FLdPr Me
  loc_B3B376: VCallAd Control_ID_CucuPersLbl
  loc_B3B379: FStAdFunc var_88
  loc_B3B37C: FLdPr var_88
  loc_B3B37F: Me.Caption = from_stack_1
  loc_B3B384: FFree1Ad var_88
  loc_B3B387: LitStr vbNullString
  loc_B3B38A: FLdPr Me
  loc_B3B38D: VCallAd Control_ID_DetaPersLbl
  loc_B3B390: FStAdFunc var_88
  loc_B3B393: FLdPr var_88
  loc_B3B396: Me.Caption = from_stack_1
  loc_B3B39B: FFree1Ad var_88
  loc_B3B39E: LitStr vbNullString
  loc_B3B3A1: FLdPr Me
  loc_B3B3A4: VCallAd Control_ID_DomiPersLbl
  loc_B3B3A7: FStAdFunc var_88
  loc_B3B3AA: FLdPr var_88
  loc_B3B3AD: Me.Caption = from_stack_1
  loc_B3B3B2: FFree1Ad var_88
  loc_B3B3B5: FLdPr Me
  loc_B3B3B8: VCallAd Control_ID_NumeCtaTxt
  loc_B3B3BB: CVarAd
  loc_B3B3BF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B3B3C4: FFree1Var var_A0 = ""
  loc_B3B3C7: LitI2_Byte &HFF
  loc_B3B3C9: IStI2 Cancel
  loc_B3B3CC: ExitProcHresult
  loc_B3B3CD: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'B4D674
  'Data Table: 504878
  loc_B4D2DC: FLdRfVar var_8A
  loc_B4D2DF: FLdPr Me
  loc_B4D2E2: VCallAd Control_ID_OficinaCbo
  loc_B4D2E5: FStAdFunc var_88
  loc_B4D2E8: FLdPr var_88
  loc_B4D2EB:  = Me.ListIndex
  loc_B4D2F0: FLdI2 var_8A
  loc_B4D2F3: FStI2 var_8C
  loc_B4D2F6: FFree1Ad var_88
  loc_B4D2F9: FLdI2 var_8C
  loc_B4D2FC: LitI2_Byte 0
  loc_B4D2FE: EqI2
  loc_B4D2FF: BranchF loc_B4D30D
  loc_B4D302: LitI2_Byte 1
  loc_B4D304: CUI1I2
  loc_B4D306: ImpAdStUI1 MemVar_D93038
  loc_B4D30A: Branch loc_B4D382
  loc_B4D30D: FLdI2 var_8C
  loc_B4D310: LitI2_Byte 1
  loc_B4D312: EqI2
  loc_B4D313: BranchF loc_B4D321
  loc_B4D316: LitI2_Byte 2
  loc_B4D318: CUI1I2
  loc_B4D31A: ImpAdStUI1 MemVar_D93038
  loc_B4D31E: Branch loc_B4D382
  loc_B4D321: FLdI2 var_8C
  loc_B4D324: LitI2_Byte 2
  loc_B4D326: EqI2
  loc_B4D327: BranchF loc_B4D335
  loc_B4D32A: LitI2_Byte 3
  loc_B4D32C: CUI1I2
  loc_B4D32E: ImpAdStUI1 MemVar_D93038
  loc_B4D332: Branch loc_B4D382
  loc_B4D335: FLdI2 var_8C
  loc_B4D338: LitI2_Byte 3
  loc_B4D33A: EqI2
  loc_B4D33B: BranchF loc_B4D349
  loc_B4D33E: LitI2_Byte 4
  loc_B4D340: CUI1I2
  loc_B4D342: ImpAdStUI1 MemVar_D93038
  loc_B4D346: Branch loc_B4D382
  loc_B4D349: FLdI2 var_8C
  loc_B4D34C: LitI2_Byte 4
  loc_B4D34E: EqI2
  loc_B4D34F: BranchF loc_B4D35D
  loc_B4D352: LitI2_Byte 5
  loc_B4D354: CUI1I2
  loc_B4D356: ImpAdStUI1 MemVar_D93038
  loc_B4D35A: Branch loc_B4D382
  loc_B4D35D: FLdI2 var_8C
  loc_B4D360: LitI2_Byte 5
  loc_B4D362: EqI2
  loc_B4D363: BranchF loc_B4D371
  loc_B4D366: LitI2_Byte 6
  loc_B4D368: CUI1I2
  loc_B4D36A: ImpAdStUI1 MemVar_D93038
  loc_B4D36E: Branch loc_B4D382
  loc_B4D371: FLdI2 var_8C
  loc_B4D374: LitI2_Byte 6
  loc_B4D376: EqI2
  loc_B4D377: BranchF loc_B4D382
  loc_B4D37A: LitI2_Byte 7
  loc_B4D37C: CUI1I2
  loc_B4D37E: ImpAdStUI1 MemVar_D93038
  loc_B4D382: LitVar_Missing var_AC
  loc_B4D385: PopAdLdVar
  loc_B4D386: LitVarI4
  loc_B4D38E: PopAdLdVar
  loc_B4D38F: ImpAdLdRf MemVar_D94034
  loc_B4D392: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D395: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4D39A: FLdRfVar var_B0
  loc_B4D39D: FLdRfVar var_88
  loc_B4D3A0: ImpAdLdRf MemVar_D94034
  loc_B4D3A3: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D3A6: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D3AB: FLdPr var_88
  loc_B4D3AE: from_stack_1 = clsbase.RecordCount
  loc_B4D3B3: ILdRf var_B0
  loc_B4D3B6: LitI4 0
  loc_B4D3BB: GtI4
  loc_B4D3BC: FFree1Ad var_88
  loc_B4D3BF: BranchF loc_B4D65F
  loc_B4D3C2: FLdRfVar var_CC
  loc_B4D3C5: FLdRfVar var_BC
  loc_B4D3C8: LitVarStr var_9C, "CodiOfic"
  loc_B4D3CD: PopAdLdVar
  loc_B4D3CE: FLdRfVar var_B8
  loc_B4D3D1: FLdRfVar var_B4
  loc_B4D3D4: FLdRfVar var_88
  loc_B4D3D7: ImpAdLdRf MemVar_D94034
  loc_B4D3DA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D3DD: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D3E2: FLdPr var_88
  loc_B4D3E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B4D3EA: FLdPr var_B4
  loc_B4D3ED:  = Me.Fields
  loc_B4D3F2: FLdPr var_B8
  loc_B4D3F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D3FA: FLdPr var_BC
  loc_B4D3FD:  = Me.Value
  loc_B4D402: FLdRfVar var_CC
  loc_B4D405: FStVar var_DC
  loc_B4D409: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4D414: FLdRfVar var_DC
  loc_B4D417: LitVarI2 var_9C, 1
  loc_B4D41C: HardType
  loc_B4D41D: EqVarBool
  loc_B4D41F: BranchF loc_B4D459
  loc_B4D422: FLdRfVar var_E0
  loc_B4D425: LitI2_Byte 0
  loc_B4D427: FLdPr Me
  loc_B4D42A: VCallAd Control_ID_OficinaCbo
  loc_B4D42D: FStAdFunc var_88
  loc_B4D430: FLdPr var_88
  loc_B4D433: from_stack_2 = Me.List(from_stack_1)
  loc_B4D438: ILdRf var_E0
  loc_B4D43B: FLdPr Me
  loc_B4D43E: VCallAd Control_ID_OficinaCbo
  loc_B4D441: FStAdFunc var_B4
  loc_B4D444: FLdPr var_B4
  loc_B4D447: Me.Text = from_stack_1
  loc_B4D44C: FFree1Str var_E0
  loc_B4D44F: FFreeAd var_88 = ""
  loc_B4D456: Branch loc_B4D5F4
  loc_B4D459: FLdRfVar var_DC
  loc_B4D45C: LitVarI2 var_9C, 2
  loc_B4D461: HardType
  loc_B4D462: EqVarBool
  loc_B4D464: BranchF loc_B4D49E
  loc_B4D467: FLdRfVar var_E0
  loc_B4D46A: LitI2_Byte 1
  loc_B4D46C: FLdPr Me
  loc_B4D46F: VCallAd Control_ID_OficinaCbo
  loc_B4D472: FStAdFunc var_88
  loc_B4D475: FLdPr var_88
  loc_B4D478: from_stack_2 = Me.List(from_stack_1)
  loc_B4D47D: ILdRf var_E0
  loc_B4D480: FLdPr Me
  loc_B4D483: VCallAd Control_ID_OficinaCbo
  loc_B4D486: FStAdFunc var_B4
  loc_B4D489: FLdPr var_B4
  loc_B4D48C: Me.Text = from_stack_1
  loc_B4D491: FFree1Str var_E0
  loc_B4D494: FFreeAd var_88 = ""
  loc_B4D49B: Branch loc_B4D5F4
  loc_B4D49E: FLdRfVar var_DC
  loc_B4D4A1: LitVarI2 var_9C, 3
  loc_B4D4A6: HardType
  loc_B4D4A7: EqVarBool
  loc_B4D4A9: BranchF loc_B4D4E3
  loc_B4D4AC: FLdRfVar var_E0
  loc_B4D4AF: LitI2_Byte 2
  loc_B4D4B1: FLdPr Me
  loc_B4D4B4: VCallAd Control_ID_OficinaCbo
  loc_B4D4B7: FStAdFunc var_88
  loc_B4D4BA: FLdPr var_88
  loc_B4D4BD: from_stack_2 = Me.List(from_stack_1)
  loc_B4D4C2: ILdRf var_E0
  loc_B4D4C5: FLdPr Me
  loc_B4D4C8: VCallAd Control_ID_OficinaCbo
  loc_B4D4CB: FStAdFunc var_B4
  loc_B4D4CE: FLdPr var_B4
  loc_B4D4D1: Me.Text = from_stack_1
  loc_B4D4D6: FFree1Str var_E0
  loc_B4D4D9: FFreeAd var_88 = ""
  loc_B4D4E0: Branch loc_B4D5F4
  loc_B4D4E3: FLdRfVar var_DC
  loc_B4D4E6: LitVarI2 var_9C, 4
  loc_B4D4EB: HardType
  loc_B4D4EC: EqVarBool
  loc_B4D4EE: BranchF loc_B4D528
  loc_B4D4F1: FLdRfVar var_E0
  loc_B4D4F4: LitI2_Byte 3
  loc_B4D4F6: FLdPr Me
  loc_B4D4F9: VCallAd Control_ID_OficinaCbo
  loc_B4D4FC: FStAdFunc var_88
  loc_B4D4FF: FLdPr var_88
  loc_B4D502: from_stack_2 = Me.List(from_stack_1)
  loc_B4D507: ILdRf var_E0
  loc_B4D50A: FLdPr Me
  loc_B4D50D: VCallAd Control_ID_OficinaCbo
  loc_B4D510: FStAdFunc var_B4
  loc_B4D513: FLdPr var_B4
  loc_B4D516: Me.Text = from_stack_1
  loc_B4D51B: FFree1Str var_E0
  loc_B4D51E: FFreeAd var_88 = ""
  loc_B4D525: Branch loc_B4D5F4
  loc_B4D528: FLdRfVar var_DC
  loc_B4D52B: LitVarI2 var_9C, 5
  loc_B4D530: HardType
  loc_B4D531: EqVarBool
  loc_B4D533: BranchF loc_B4D56D
  loc_B4D536: FLdRfVar var_E0
  loc_B4D539: LitI2_Byte 4
  loc_B4D53B: FLdPr Me
  loc_B4D53E: VCallAd Control_ID_OficinaCbo
  loc_B4D541: FStAdFunc var_88
  loc_B4D544: FLdPr var_88
  loc_B4D547: from_stack_2 = Me.List(from_stack_1)
  loc_B4D54C: ILdRf var_E0
  loc_B4D54F: FLdPr Me
  loc_B4D552: VCallAd Control_ID_OficinaCbo
  loc_B4D555: FStAdFunc var_B4
  loc_B4D558: FLdPr var_B4
  loc_B4D55B: Me.Text = from_stack_1
  loc_B4D560: FFree1Str var_E0
  loc_B4D563: FFreeAd var_88 = ""
  loc_B4D56A: Branch loc_B4D5F4
  loc_B4D56D: FLdRfVar var_DC
  loc_B4D570: LitVarI2 var_9C, 6
  loc_B4D575: HardType
  loc_B4D576: EqVarBool
  loc_B4D578: BranchF loc_B4D5B2
  loc_B4D57B: FLdRfVar var_E0
  loc_B4D57E: LitI2_Byte 5
  loc_B4D580: FLdPr Me
  loc_B4D583: VCallAd Control_ID_OficinaCbo
  loc_B4D586: FStAdFunc var_88
  loc_B4D589: FLdPr var_88
  loc_B4D58C: from_stack_2 = Me.List(from_stack_1)
  loc_B4D591: ILdRf var_E0
  loc_B4D594: FLdPr Me
  loc_B4D597: VCallAd Control_ID_OficinaCbo
  loc_B4D59A: FStAdFunc var_B4
  loc_B4D59D: FLdPr var_B4
  loc_B4D5A0: Me.Text = from_stack_1
  loc_B4D5A5: FFree1Str var_E0
  loc_B4D5A8: FFreeAd var_88 = ""
  loc_B4D5AF: Branch loc_B4D5F4
  loc_B4D5B2: FLdRfVar var_DC
  loc_B4D5B5: LitVarI2 var_9C, 7
  loc_B4D5BA: HardType
  loc_B4D5BB: EqVarBool
  loc_B4D5BD: BranchF loc_B4D5F4
  loc_B4D5C0: FLdRfVar var_E0
  loc_B4D5C3: LitI2_Byte 6
  loc_B4D5C5: FLdPr Me
  loc_B4D5C8: VCallAd Control_ID_OficinaCbo
  loc_B4D5CB: FStAdFunc var_88
  loc_B4D5CE: FLdPr var_88
  loc_B4D5D1: from_stack_2 = Me.List(from_stack_1)
  loc_B4D5D6: ILdRf var_E0
  loc_B4D5D9: FLdPr Me
  loc_B4D5DC: VCallAd Control_ID_OficinaCbo
  loc_B4D5DF: FStAdFunc var_B4
  loc_B4D5E2: FLdPr var_B4
  loc_B4D5E5: Me.Text = from_stack_1
  loc_B4D5EA: FFree1Str var_E0
  loc_B4D5ED: FFreeAd var_88 = ""
  loc_B4D5F4: FLdRfVar var_CC
  loc_B4D5F7: FLdRfVar var_BC
  loc_B4D5FA: LitVarStr var_9C, "CuenCtct"
  loc_B4D5FF: PopAdLdVar
  loc_B4D600: FLdRfVar var_B8
  loc_B4D603: FLdRfVar var_B4
  loc_B4D606: FLdRfVar var_88
  loc_B4D609: ImpAdLdRf MemVar_D94034
  loc_B4D60C: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D60F: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D614: FLdPr var_88
  loc_B4D617: from_stack_1v = clsbase.RsFrmGet()
  loc_B4D61C: FLdPr var_B4
  loc_B4D61F:  = Me.Fields
  loc_B4D624: FLdPr var_B8
  loc_B4D627: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D62C: FLdPr var_BC
  loc_B4D62F:  = Me.Value
  loc_B4D634: FLdRfVar var_CC
  loc_B4D637: CStrVarTmp
  loc_B4D638: FStStrNoPop var_E0
  loc_B4D63B: FLdPr Me
  loc_B4D63E: VCallAd Control_ID_NumeCtaTxt
  loc_B4D641: FStAdFunc var_E4
  loc_B4D644: FLdPr var_E4
  loc_B4D647: Me.Text = from_stack_1
  loc_B4D64C: FFree1Str var_E0
  loc_B4D64F: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4D65C: FFree1Var var_CC = ""
  loc_B4D65F: FLdPr Me
  loc_B4D662: VCallAd Control_ID_NumeCtaTxt
  loc_B4D665: CVarAd
  loc_B4D669: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4D66E: FFree1Var var_CC = ""
  loc_B4D671: ExitProcHresult
End Sub

Private Sub FeveCtctCmd_Click() 'A4B020
  'Data Table: 504878
  loc_A4AFCC: LitVar_Missing var_A4
  loc_A4AFCF: PopAdLdVar
  loc_A4AFD0: LitVarI4
  loc_A4AFD8: PopAdLdVar
  loc_A4AFD9: ImpAdLdRf MemVar_D930A4
  loc_A4AFDC: NewIfNullPr frmCalendario
  loc_A4AFDF: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4AFE4: ImpAdLdI4 MemVar_D93028
  loc_A4AFE7: LitStr vbNullString
  loc_A4AFEA: NeStr
  loc_A4AFEC: BranchF loc_A4B00A
  loc_A4AFEF: ImpAdLdRf MemVar_D93028
  loc_A4AFF2: CDargRef
  loc_A4AFF6: FLdPr Me
  loc_A4AFF9: VCallAd Control_ID_FeveCtctMsk
  loc_A4AFFC: FStAdFunc var_A8
  loc_A4AFFF: FLdPr var_A8
  loc_A4B002: LateIdSt
  loc_A4B007: FFree1Ad var_A8
  loc_A4B00A: FLdPr Me
  loc_A4B00D: VCallAd Control_ID_FeveCtctMsk
  loc_A4B010: CVarAd
  loc_A4B014: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4B019: FFree1Var var_B8 = ""
  loc_A4B01C: ExitProcHresult
End Sub

Private Sub Form_Load() 'B9FFB8
  'Data Table: 504878
  loc_B9F9D4: LitVar_Missing var_94
  loc_B9F9D7: PopAdLdVar
  loc_B9F9D8: LitStr "Inmueble"
  loc_B9F9DB: FLdPr Me
  loc_B9F9DE: VCallAd Control_ID_OficinaCbo
  loc_B9F9E1: FStAdFunc var_98
  loc_B9F9E4: FLdPr var_98
  loc_B9F9E7: Me.AddItem from_stack_1, from_stack_2
  loc_B9F9EC: FFree1Ad var_98
  loc_B9F9EF: LitVar_Missing var_94
  loc_B9F9F2: PopAdLdVar
  loc_B9F9F3: LitStr "Comercio"
  loc_B9F9F6: FLdPr Me
  loc_B9F9F9: VCallAd Control_ID_OficinaCbo
  loc_B9F9FC: FStAdFunc var_98
  loc_B9F9FF: FLdPr var_98
  loc_B9FA02: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA07: FFree1Ad var_98
  loc_B9FA0A: LitVar_Missing var_94
  loc_B9FA0D: PopAdLdVar
  loc_B9FA0E: LitStr "Deudores Varios"
  loc_B9FA11: FLdPr Me
  loc_B9FA14: VCallAd Control_ID_OficinaCbo
  loc_B9FA17: FStAdFunc var_98
  loc_B9FA1A: FLdPr var_98
  loc_B9FA1D: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA22: FFree1Ad var_98
  loc_B9FA25: LitVar_Missing var_94
  loc_B9FA28: PopAdLdVar
  loc_B9FA29: LitStr "Cementerio"
  loc_B9FA2C: FLdPr Me
  loc_B9FA2F: VCallAd Control_ID_OficinaCbo
  loc_B9FA32: FStAdFunc var_98
  loc_B9FA35: FLdPr var_98
  loc_B9FA38: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA3D: FFree1Ad var_98
  loc_B9FA40: LitVar_Missing var_94
  loc_B9FA43: PopAdLdVar
  loc_B9FA44: LitStr "Transito"
  loc_B9FA47: FLdPr Me
  loc_B9FA4A: VCallAd Control_ID_OficinaCbo
  loc_B9FA4D: FStAdFunc var_98
  loc_B9FA50: FLdPr var_98
  loc_B9FA53: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA58: FFree1Ad var_98
  loc_B9FA5B: LitVar_Missing var_94
  loc_B9FA5E: PopAdLdVar
  loc_B9FA5F: LitStr "Publicidad"
  loc_B9FA62: FLdPr Me
  loc_B9FA65: VCallAd Control_ID_OficinaCbo
  loc_B9FA68: FStAdFunc var_98
  loc_B9FA6B: FLdPr var_98
  loc_B9FA6E: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA73: FFree1Ad var_98
  loc_B9FA76: LitVar_Missing var_94
  loc_B9FA79: PopAdLdVar
  loc_B9FA7A: LitStr "Antena"
  loc_B9FA7D: FLdPr Me
  loc_B9FA80: VCallAd Control_ID_OficinaCbo
  loc_B9FA83: FStAdFunc var_98
  loc_B9FA86: FLdPr var_98
  loc_B9FA89: Me.AddItem from_stack_1, from_stack_2
  loc_B9FA8E: FFree1Ad var_98
  loc_B9FA91: LitI2_Byte 0
  loc_B9FA93: FLdPr Me
  loc_B9FA96: VCallAd Control_ID_OficinaCbo
  loc_B9FA99: FStAdFunc var_98
  loc_B9FA9C: FLdPr var_98
  loc_B9FA9F: Me.ListIndex = from_stack_1
  loc_B9FAA4: FFree1Ad var_98
  loc_B9FAA7: LitStr "0"
  loc_B9FAAA: FLdPr Me
  loc_B9FAAD: VCallAd Control_ID_NumeCtaTxt
  loc_B9FAB0: FStAdFunc var_98
  loc_B9FAB3: FLdPr var_98
  loc_B9FAB6: Me.Text = from_stack_1
  loc_B9FABB: FFree1Ad var_98
  loc_B9FABE: LitI2_Byte 0
  loc_B9FAC0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9FAC5: CStrDate
  loc_B9FAC7: CVarStr var_A8
  loc_B9FACA: PopAdLdVar
  loc_B9FACB: FLdPr Me
  loc_B9FACE: VCallAd Control_ID_FechVencMsk
  loc_B9FAD1: FStAdFunc var_98
  loc_B9FAD4: FLdPr var_98
  loc_B9FAD7: LateIdSt
  loc_B9FADC: FFree1Ad var_98
  loc_B9FADF: FFree1Var var_A8 = ""
  loc_B9FAE2: LitI2_Byte 0
  loc_B9FAE4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9FAE9: CStrDate
  loc_B9FAEB: CVarStr var_A8
  loc_B9FAEE: PopAdLdVar
  loc_B9FAEF: FLdPr Me
  loc_B9FAF2: VCallAd Control_ID_FeveCtctMsk
  loc_B9FAF5: FStAdFunc var_98
  loc_B9FAF8: FLdPr var_98
  loc_B9FAFB: LateIdSt
  loc_B9FB00: FFree1Ad var_98
  loc_B9FB03: FFree1Var var_A8 = ""
  loc_B9FB06: LitI4 1
  loc_B9FB0B: LitI4 1
  loc_B9FB10: LitVarStr var_B8, "0.00"
  loc_B9FB15: FStVarCopyObj var_C8
  loc_B9FB18: FLdRfVar var_C8
  loc_B9FB1B: LitVarI2 var_A8, 0
  loc_B9FB20: FLdRfVar var_D8
  loc_B9FB23: ImpAdCallFPR4  = Format(, )
  loc_B9FB28: FLdRfVar var_D8
  loc_B9FB2B: CStrVarVal var_DC
  loc_B9FB2F: FLdPr Me
  loc_B9FB32: VCallAd Control_ID_ImpoCtctTxt
  loc_B9FB35: FStAdFunc var_98
  loc_B9FB38: FLdPr var_98
  loc_B9FB3B: Me.Text = from_stack_1
  loc_B9FB40: FFree1Str var_DC
  loc_B9FB43: FFree1Ad var_98
  loc_B9FB46: FFreeVar var_A8 = "": var_C8 = ""
  loc_B9FB4F: LitI2_Byte 0
  loc_B9FB51: FLdPr Me
  loc_B9FB54: VCallAd Control_ID_ImpoCtctTxt
  loc_B9FB57: FStAdFunc var_98
  loc_B9FB5A: FLdPr var_98
  loc_B9FB5D: Me.Enabled = from_stack_1b
  loc_B9FB62: FFree1Ad var_98
  loc_B9FB65: FLdPr Me
  loc_B9FB68: VCallAd Control_ID_ctacteFlex
  loc_B9FB6B: FStAdFunc var_E0
  loc_B9FB6E: LitVarI4
  loc_B9FB76: PopAdLdVar
  loc_B9FB77: LitVarI4
  loc_B9FB7F: PopAdLdVar
  loc_B9FB80: FLdPr var_E0
  loc_B9FB83: LateIdCallSt
  loc_B9FB8B: LitVarI4
  loc_B9FB93: PopAdLdVar
  loc_B9FB94: LitVarI4
  loc_B9FB9C: PopAdLdVar
  loc_B9FB9D: FLdPr var_E0
  loc_B9FBA0: LateIdCallSt
  loc_B9FBA8: LitVarI4
  loc_B9FBB0: PopAdLdVar
  loc_B9FBB1: LitVarI4
  loc_B9FBB9: PopAdLdVar
  loc_B9FBBA: FLdPr var_E0
  loc_B9FBBD: LateIdCallSt
  loc_B9FBC5: LitVarI4
  loc_B9FBCD: PopAdLdVar
  loc_B9FBCE: LitVarI4
  loc_B9FBD6: PopAdLdVar
  loc_B9FBD7: FLdPr var_E0
  loc_B9FBDA: LateIdCallSt
  loc_B9FBE2: LitVarI4
  loc_B9FBEA: PopAdLdVar
  loc_B9FBEB: LitVarI4
  loc_B9FBF3: PopAdLdVar
  loc_B9FBF4: FLdPr var_E0
  loc_B9FBF7: LateIdCallSt
  loc_B9FBFF: LitVarI4
  loc_B9FC07: PopAdLdVar
  loc_B9FC08: LitVarI4
  loc_B9FC10: PopAdLdVar
  loc_B9FC11: FLdPr var_E0
  loc_B9FC14: LateIdCallSt
  loc_B9FC1C: LitVarI4
  loc_B9FC24: PopAdLdVar
  loc_B9FC25: LitVarI4
  loc_B9FC2D: PopAdLdVar
  loc_B9FC2E: FLdPr var_E0
  loc_B9FC31: LateIdCallSt
  loc_B9FC39: LitVarI4
  loc_B9FC41: PopAdLdVar
  loc_B9FC42: LitVarI4
  loc_B9FC4A: PopAdLdVar
  loc_B9FC4B: FLdPr var_E0
  loc_B9FC4E: LateIdCallSt
  loc_B9FC56: LitVarI4
  loc_B9FC5E: PopAdLdVar
  loc_B9FC5F: LitVarI4
  loc_B9FC67: PopAdLdVar
  loc_B9FC68: FLdPr var_E0
  loc_B9FC6B: LateIdCallSt
  loc_B9FC73: LitVarI4
  loc_B9FC7B: PopAdLdVar
  loc_B9FC7C: LitVarI4
  loc_B9FC84: PopAdLdVar
  loc_B9FC85: FLdPr var_E0
  loc_B9FC88: LateIdCallSt
  loc_B9FC90: LitVarI4
  loc_B9FC98: PopAdLdVar
  loc_B9FC99: LitVarI4
  loc_B9FCA1: PopAdLdVar
  loc_B9FCA2: FLdPr var_E0
  loc_B9FCA5: LateIdCallSt
  loc_B9FCAD: LitVarI4
  loc_B9FCB5: PopAdLdVar
  loc_B9FCB6: LitVarI4
  loc_B9FCBE: PopAdLdVar
  loc_B9FCBF: FLdPr var_E0
  loc_B9FCC2: LateIdCallSt
  loc_B9FCCA: LitVarI4
  loc_B9FCD2: PopAdLdVar
  loc_B9FCD3: LitVarI4
  loc_B9FCDB: PopAdLdVar
  loc_B9FCDC: FLdPr var_E0
  loc_B9FCDF: LateIdCallSt
  loc_B9FCE7: LitVarI4
  loc_B9FCEF: PopAdLdVar
  loc_B9FCF0: LitVarI4
  loc_B9FCF8: PopAdLdVar
  loc_B9FCF9: FLdPr var_E0
  loc_B9FCFC: LateIdCallSt
  loc_B9FD04: LitVarI4
  loc_B9FD0C: PopAdLdVar
  loc_B9FD0D: LitVarI4
  loc_B9FD15: PopAdLdVar
  loc_B9FD16: FLdPr var_E0
  loc_B9FD19: LateIdCallSt
  loc_B9FD21: LitVarI4
  loc_B9FD29: PopAdLdVar
  loc_B9FD2A: LitVarI4
  loc_B9FD32: PopAdLdVar
  loc_B9FD33: FLdPr var_E0
  loc_B9FD36: LateIdCallSt
  loc_B9FD3E: LitVarI4
  loc_B9FD46: PopAdLdVar
  loc_B9FD47: LitVarI4
  loc_B9FD4F: PopAdLdVar
  loc_B9FD50: FLdPr var_E0
  loc_B9FD53: LateIdCallSt
  loc_B9FD5B: LitVarI4
  loc_B9FD63: PopAdLdVar
  loc_B9FD64: LitVarI4
  loc_B9FD6C: PopAdLdVar
  loc_B9FD6D: LitVarStr var_110, "Of"
  loc_B9FD72: PopAdLdVar
  loc_B9FD73: FLdPr var_E0
  loc_B9FD76: LateIdCallSt
  loc_B9FD7E: LitVarI4
  loc_B9FD86: PopAdLdVar
  loc_B9FD87: LitVarI4
  loc_B9FD8F: PopAdLdVar
  loc_B9FD90: LitVarStr var_110, "Cuenta"
  loc_B9FD95: PopAdLdVar
  loc_B9FD96: FLdPr var_E0
  loc_B9FD99: LateIdCallSt
  loc_B9FDA1: LitVarI4
  loc_B9FDA9: PopAdLdVar
  loc_B9FDAA: LitVarI4
  loc_B9FDB2: PopAdLdVar
  loc_B9FDB3: LitVarStr var_110, "Periodo"
  loc_B9FDB8: PopAdLdVar
  loc_B9FDB9: FLdPr var_E0
  loc_B9FDBC: LateIdCallSt
  loc_B9FDC4: LitVarI4
  loc_B9FDCC: PopAdLdVar
  loc_B9FDCD: LitVarI4
  loc_B9FDD5: PopAdLdVar
  loc_B9FDD6: LitVarStr var_110, "Boleto"
  loc_B9FDDB: PopAdLdVar
  loc_B9FDDC: FLdPr var_E0
  loc_B9FDDF: LateIdCallSt
  loc_B9FDE7: LitVarI4
  loc_B9FDEF: PopAdLdVar
  loc_B9FDF0: LitVarI4
  loc_B9FDF8: PopAdLdVar
  loc_B9FDF9: LitVarStr var_110, "Emision"
  loc_B9FDFE: PopAdLdVar
  loc_B9FDFF: FLdPr var_E0
  loc_B9FE02: LateIdCallSt
  loc_B9FE0A: LitVarI4
  loc_B9FE12: PopAdLdVar
  loc_B9FE13: LitVarI4
  loc_B9FE1B: PopAdLdVar
  loc_B9FE1C: LitVarStr var_110, "Vencimiento"
  loc_B9FE21: PopAdLdVar
  loc_B9FE22: FLdPr var_E0
  loc_B9FE25: LateIdCallSt
  loc_B9FE2D: LitVarI4
  loc_B9FE35: PopAdLdVar
  loc_B9FE36: LitVarI4
  loc_B9FE3E: PopAdLdVar
  loc_B9FE3F: LitVarStr var_110, "Concepto"
  loc_B9FE44: PopAdLdVar
  loc_B9FE45: FLdPr var_E0
  loc_B9FE48: LateIdCallSt
  loc_B9FE50: LitVarI4
  loc_B9FE58: PopAdLdVar
  loc_B9FE59: LitVarI4
  loc_B9FE61: PopAdLdVar
  loc_B9FE62: LitVarStr var_110, "Facilidad"
  loc_B9FE67: PopAdLdVar
  loc_B9FE68: FLdPr var_E0
  loc_B9FE6B: LateIdCallSt
  loc_B9FE73: LitVarI4
  loc_B9FE7B: PopAdLdVar
  loc_B9FE7C: LitVarI4
  loc_B9FE84: PopAdLdVar
  loc_B9FE85: LitVarStr var_110, "Apremio"
  loc_B9FE8A: PopAdLdVar
  loc_B9FE8B: FLdPr var_E0
  loc_B9FE8E: LateIdCallSt
  loc_B9FE96: LitVarI4
  loc_B9FE9E: PopAdLdVar
  loc_B9FE9F: LitVarI4
  loc_B9FEA7: PopAdLdVar
  loc_B9FEA8: LitVarStr var_110, "Exp/Comp"
  loc_B9FEAD: PopAdLdVar
  loc_B9FEAE: FLdPr var_E0
  loc_B9FEB1: LateIdCallSt
  loc_B9FEB9: LitVarI4
  loc_B9FEC1: PopAdLdVar
  loc_B9FEC2: LitVarI4
  loc_B9FECA: PopAdLdVar
  loc_B9FECB: LitVarStr var_110, "Tipo Movi."
  loc_B9FED0: PopAdLdVar
  loc_B9FED1: FLdPr var_E0
  loc_B9FED4: LateIdCallSt
  loc_B9FEDC: LitVarI4
  loc_B9FEE4: PopAdLdVar
  loc_B9FEE5: LitVarI4
  loc_B9FEED: PopAdLdVar
  loc_B9FEEE: LitVarStr var_110, "Debito"
  loc_B9FEF3: PopAdLdVar
  loc_B9FEF4: FLdPr var_E0
  loc_B9FEF7: LateIdCallSt
  loc_B9FEFF: LitVarI4
  loc_B9FF07: PopAdLdVar
  loc_B9FF08: LitVarI4
  loc_B9FF10: PopAdLdVar
  loc_B9FF11: LitVarStr var_110, "Recargo"
  loc_B9FF16: PopAdLdVar
  loc_B9FF17: FLdPr var_E0
  loc_B9FF1A: LateIdCallSt
  loc_B9FF22: LitVarI4
  loc_B9FF2A: PopAdLdVar
  loc_B9FF2B: LitVarI4
  loc_B9FF33: PopAdLdVar
  loc_B9FF34: LitVarStr var_110, "Saldo"
  loc_B9FF39: PopAdLdVar
  loc_B9FF3A: FLdPr var_E0
  loc_B9FF3D: LateIdCallSt
  loc_B9FF45: LitVarI4
  loc_B9FF4D: PopAdLdVar
  loc_B9FF4E: LitVarI4
  loc_B9FF56: PopAdLdVar
  loc_B9FF57: LitVarStr var_110, "Sel"
  loc_B9FF5C: PopAdLdVar
  loc_B9FF5D: FLdPr var_E0
  loc_B9FF60: LateIdCallSt
  loc_B9FF68: LitVarI4
  loc_B9FF70: PopAdLdVar
  loc_B9FF71: LitVarI4
  loc_B9FF79: PopAdLdVar
  loc_B9FF7A: LitVarStr var_110, "Numero"
  loc_B9FF7F: PopAdLdVar
  loc_B9FF80: FLdPr var_E0
  loc_B9FF83: LateIdCallSt
  loc_B9FF8B: LitVarI4
  loc_B9FF93: PopAdLdVar
  loc_B9FF94: LitVarI4
  loc_B9FF9C: PopAdLdVar
  loc_B9FF9D: LitVarStr var_110, "Mov"
  loc_B9FFA2: PopAdLdVar
  loc_B9FFA3: FLdPr var_E0
  loc_B9FFA6: LateIdCallSt
  loc_B9FFAE: LitNothing
  loc_B9FFB0: FStAd var_E0 
  loc_B9FFB4: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA87C
  'Data Table: 504878
  loc_9BA868: ILdI2 KeyCode
  loc_9BA86B: CI4UI1
  loc_9BA86C: LitI4 &H78
  loc_9BA871: EqI4
  loc_9BA872: BranchF loc_9BA87A
  loc_9BA875: Call SalirCmd_Click()
  loc_9BA87A: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'BACDEC
  'Data Table: 504878
  loc_BAC7A4: FLdPr Me
  loc_BAC7A7: VCallAd Control_ID_ctacteFlex
  loc_BAC7AA: FStAdFunc var_88
  loc_BAC7AD: FLdPr var_88
  loc_BAC7B0: LateIdLdVar var_98 DispID_4 0
  loc_BAC7B7: CI4Var
  loc_BAC7B9: LitI4 1
  loc_BAC7BE: GtI4
  loc_BAC7BF: FFree1Ad var_88
  loc_BAC7C2: FFree1Var var_98 = ""
  loc_BAC7C5: BranchF loc_BACDE8
  loc_BAC7C8: LitI2_Byte 0
  loc_BAC7CA: FLdPr Me
  loc_BAC7CD: MemLdRfVar from_stack_1.global_68
  loc_BAC7D0: FLdPr Me
  loc_BAC7D3: VCallAd Control_ID_ctacteFlex
  loc_BAC7D6: FStAdFunc var_88
  loc_BAC7D9: FLdPr var_88
  loc_BAC7DC: LateIdLdVar var_98 DispID_5 0
  loc_BAC7E3: CI4Var
  loc_BAC7E5: LitI4 1
  loc_BAC7EA: SubI4
  loc_BAC7EB: CI2I4
  loc_BAC7EC: FFree1Ad var_88
  loc_BAC7EF: FFree1Var var_98 = ""
  loc_BAC7F2: ForI2 var_9C
  loc_BAC7F8: FLdPr Me
  loc_BAC7FB: MemLdI2 global_68
  loc_BAC7FE: CI4UI1
  loc_BAC7FF: CVarI4
  loc_BAC803: PopAdLdVar
  loc_BAC804: FLdPr Me
  loc_BAC807: VCallAd Control_ID_ctacteFlex
  loc_BAC80A: FStAdFunc var_88
  loc_BAC80D: FLdPr var_88
  loc_BAC810: LateIdSt
  loc_BAC815: FFree1Ad var_88
  loc_BAC818: FLdPr Me
  loc_BAC81B: VCallAd Control_ID_ctacteFlex
  loc_BAC81E: FStAdFunc var_88
  loc_BAC821: FLdPr var_88
  loc_BAC824: LateIdLdVar var_98 DispID_10 0
  loc_BAC82B: CI4Var
  loc_BAC82D: CVarI4
  loc_BAC831: PopAdLdVar
  loc_BAC832: LitVarI4
  loc_BAC83A: PopAdLdVar
  loc_BAC83B: FLdPr Me
  loc_BAC83E: VCallAd Control_ID_ctacteFlex
  loc_BAC841: FStAdFunc var_E0
  loc_BAC844: FLdPr var_E0
  loc_BAC847: LateIdCallLdVar
  loc_BAC851: CStrVarTmp
  loc_BAC852: FStStrNoPop var_F4
  loc_BAC855: LitStr "Si"
  loc_BAC858: EqStr
  loc_BAC85A: FLdPr Me
  loc_BAC85D: VCallAd Control_ID_ctacteFlex
  loc_BAC860: FStAdFunc var_F8
  loc_BAC863: FLdPr var_F8
  loc_BAC866: LateIdLdVar var_108 DispID_10 0
  loc_BAC86D: CI4Var
  loc_BAC86F: CVarI4
  loc_BAC873: PopAdLdVar
  loc_BAC874: LitVarI4
  loc_BAC87C: PopAdLdVar
  loc_BAC87D: FLdPr Me
  loc_BAC880: VCallAd Control_ID_ctacteFlex
  loc_BAC883: FStAdFunc var_14C
  loc_BAC886: FLdPr var_14C
  loc_BAC889: LateIdCallLdVar
  loc_BAC893: CStrVarTmp
  loc_BAC894: FStStrNoPop var_160
  loc_BAC897: LitStr "SS"
  loc_BAC89A: EqStr
  loc_BAC89C: OrI4
  loc_BAC89D: FFreeStr var_F4 = ""
  loc_BAC8A4: FFreeAd var_88 = "": var_E0 = "": var_F8 = ""
  loc_BAC8AF: FFreeVar var_98 = "": var_F0 = "": var_108 = ""
  loc_BAC8BA: BranchF loc_BACADB
  loc_BAC8BD: LitVarI4
  loc_BAC8C5: PopAdLdVar
  loc_BAC8C6: FLdPr Me
  loc_BAC8C9: VCallAd Control_ID_ctacteFlex
  loc_BAC8CC: FStAdFunc var_88
  loc_BAC8CF: FLdPr var_88
  loc_BAC8D2: LateIdSt
  loc_BAC8D7: FFree1Ad var_88
  loc_BAC8DA: FLdPr Me
  loc_BAC8DD: MemLdI2 global_68
  loc_BAC8E0: LitI2_Byte &HB
  loc_BAC8E2: EqI2
  loc_BAC8E3: BranchF loc_BAC94B
  loc_BAC8E6: FLdPr Me
  loc_BAC8E9: VCallAd Control_ID_ctacteFlex
  loc_BAC8EC: FStAdFunc var_88
  loc_BAC8EF: FLdPr var_88
  loc_BAC8F2: LateIdLdVar var_98 DispID_10 0
  loc_BAC8F9: CI4Var
  loc_BAC8FB: CVarI4
  loc_BAC8FF: PopAdLdVar
  loc_BAC900: FLdPr Me
  loc_BAC903: MemLdI2 global_68
  loc_BAC906: CI4UI1
  loc_BAC907: CVarI4
  loc_BAC90B: PopAdLdVar
  loc_BAC90C: FLdPr Me
  loc_BAC90F: VCallAd Control_ID_ctacteFlex
  loc_BAC912: FStAdFunc var_E0
  loc_BAC915: FLdPr var_E0
  loc_BAC918: LateIdCallLdVar
  loc_BAC922: PopAd
  loc_BAC924: FLdPr Me
  loc_BAC927: MemLdFPR8 global_72
  loc_BAC92A: FLdRfVar var_F0
  loc_BAC92D: CStrVarTmp
  loc_BAC92E: FStStrNoPop var_F4
  loc_BAC931: CR8Str
  loc_BAC933: SubR4
  loc_BAC934: FLdPr Me
  loc_BAC937: MemStFPR8 global_72
  loc_BAC93A: FFree1Str var_F4
  loc_BAC93D: FFreeAd var_88 = ""
  loc_BAC944: FFreeVar var_98 = ""
  loc_BAC94B: FLdPr Me
  loc_BAC94E: MemLdI2 global_68
  loc_BAC951: LitI2_Byte &HC
  loc_BAC953: EqI2
  loc_BAC954: BranchF loc_BACA14
  loc_BAC957: FLdPr Me
  loc_BAC95A: VCallAd Control_ID_ctacteFlex
  loc_BAC95D: FStAdFunc var_88
  loc_BAC960: FLdPr var_88
  loc_BAC963: LateIdLdVar var_98 DispID_10 0
  loc_BAC96A: CI4Var
  loc_BAC96C: CVarI4
  loc_BAC970: PopAdLdVar
  loc_BAC971: FLdPr Me
  loc_BAC974: MemLdI2 global_68
  loc_BAC977: CI4UI1
  loc_BAC978: CVarI4
  loc_BAC97C: PopAdLdVar
  loc_BAC97D: FLdPr Me
  loc_BAC980: VCallAd Control_ID_ctacteFlex
  loc_BAC983: FStAdFunc var_E0
  loc_BAC986: FLdPr var_E0
  loc_BAC989: LateIdCallLdVar
  loc_BAC993: CStrVarTmp
  loc_BAC994: CVarStr var_108
  loc_BAC997: ImpAdCallI2 IsNumeric()
  loc_BAC99C: FFreeAd var_88 = ""
  loc_BAC9A3: FFreeVar var_98 = "": var_F0 = ""
  loc_BAC9AC: BranchF loc_BACA14
  loc_BAC9AF: FLdPr Me
  loc_BAC9B2: VCallAd Control_ID_ctacteFlex
  loc_BAC9B5: FStAdFunc var_88
  loc_BAC9B8: FLdPr var_88
  loc_BAC9BB: LateIdLdVar var_98 DispID_10 0
  loc_BAC9C2: CI4Var
  loc_BAC9C4: CVarI4
  loc_BAC9C8: PopAdLdVar
  loc_BAC9C9: FLdPr Me
  loc_BAC9CC: MemLdI2 global_68
  loc_BAC9CF: CI4UI1
  loc_BAC9D0: CVarI4
  loc_BAC9D4: PopAdLdVar
  loc_BAC9D5: FLdPr Me
  loc_BAC9D8: VCallAd Control_ID_ctacteFlex
  loc_BAC9DB: FStAdFunc var_E0
  loc_BAC9DE: FLdPr var_E0
  loc_BAC9E1: LateIdCallLdVar
  loc_BAC9EB: PopAd
  loc_BAC9ED: FLdPr Me
  loc_BAC9F0: MemLdFPR8 global_80
  loc_BAC9F3: FLdRfVar var_F0
  loc_BAC9F6: CStrVarTmp
  loc_BAC9F7: FStStrNoPop var_F4
  loc_BAC9FA: CR8Str
  loc_BAC9FC: SubR4
  loc_BAC9FD: FLdPr Me
  loc_BACA00: MemStFPR8 global_80
  loc_BACA03: FFree1Str var_F4
  loc_BACA06: FFreeAd var_88 = ""
  loc_BACA0D: FFreeVar var_98 = ""
  loc_BACA14: FLdPr Me
  loc_BACA17: MemLdI2 global_68
  loc_BACA1A: LitI2_Byte &HD
  loc_BACA1C: EqI2
  loc_BACA1D: BranchF loc_BACA85
  loc_BACA20: FLdPr Me
  loc_BACA23: VCallAd Control_ID_ctacteFlex
  loc_BACA26: FStAdFunc var_88
  loc_BACA29: FLdPr var_88
  loc_BACA2C: LateIdLdVar var_98 DispID_10 0
  loc_BACA33: CI4Var
  loc_BACA35: CVarI4
  loc_BACA39: PopAdLdVar
  loc_BACA3A: FLdPr Me
  loc_BACA3D: MemLdI2 global_68
  loc_BACA40: CI4UI1
  loc_BACA41: CVarI4
  loc_BACA45: PopAdLdVar
  loc_BACA46: FLdPr Me
  loc_BACA49: VCallAd Control_ID_ctacteFlex
  loc_BACA4C: FStAdFunc var_E0
  loc_BACA4F: FLdPr var_E0
  loc_BACA52: LateIdCallLdVar
  loc_BACA5C: PopAd
  loc_BACA5E: FLdPr Me
  loc_BACA61: MemLdFPR8 global_88
  loc_BACA64: FLdRfVar var_F0
  loc_BACA67: CStrVarTmp
  loc_BACA68: FStStrNoPop var_F4
  loc_BACA6B: CR8Str
  loc_BACA6D: SubR4
  loc_BACA6E: FLdPr Me
  loc_BACA71: MemStFPR8 global_88
  loc_BACA74: FFree1Str var_F4
  loc_BACA77: FFreeAd var_88 = ""
  loc_BACA7E: FFreeVar var_98 = ""
  loc_BACA85: FLdPr Me
  loc_BACA88: MemLdI2 global_68
  loc_BACA8B: LitI2_Byte &H10
  loc_BACA8D: EqI2
  loc_BACA8E: BranchF loc_BACAD8
  loc_BACA91: FLdPr Me
  loc_BACA94: VCallAd Control_ID_ctacteFlex
  loc_BACA97: FStAdFunc var_88
  loc_BACA9A: FLdPr var_88
  loc_BACA9D: LateIdLdVar var_98 DispID_10 0
  loc_BACAA4: CI4Var
  loc_BACAA6: CVarI4
  loc_BACAAA: PopAdLdVar
  loc_BACAAB: LitVarI4
  loc_BACAB3: PopAdLdVar
  loc_BACAB4: LitVarStr var_118, "No"
  loc_BACAB9: PopAdLdVar
  loc_BACABA: FLdPr Me
  loc_BACABD: VCallAd Control_ID_ctacteFlex
  loc_BACAC0: FStAdFunc var_E0
  loc_BACAC3: FLdPr var_E0
  loc_BACAC6: LateIdCallSt
  loc_BACACE: FFreeAd var_88 = ""
  loc_BACAD5: FFree1Var var_98 = ""
  loc_BACAD8: Branch loc_BACCF6
  loc_BACADB: LitVarI4
  loc_BACAE3: PopAdLdVar
  loc_BACAE4: FLdPr Me
  loc_BACAE7: VCallAd Control_ID_ctacteFlex
  loc_BACAEA: FStAdFunc var_88
  loc_BACAED: FLdPr var_88
  loc_BACAF0: LateIdSt
  loc_BACAF5: FFree1Ad var_88
  loc_BACAF8: FLdPr Me
  loc_BACAFB: MemLdI2 global_68
  loc_BACAFE: LitI2_Byte &HB
  loc_BACB00: EqI2
  loc_BACB01: BranchF loc_BACB69
  loc_BACB04: FLdPr Me
  loc_BACB07: VCallAd Control_ID_ctacteFlex
  loc_BACB0A: FStAdFunc var_88
  loc_BACB0D: FLdPr var_88
  loc_BACB10: LateIdLdVar var_98 DispID_10 0
  loc_BACB17: CI4Var
  loc_BACB19: CVarI4
  loc_BACB1D: PopAdLdVar
  loc_BACB1E: FLdPr Me
  loc_BACB21: MemLdI2 global_68
  loc_BACB24: CI4UI1
  loc_BACB25: CVarI4
  loc_BACB29: PopAdLdVar
  loc_BACB2A: FLdPr Me
  loc_BACB2D: VCallAd Control_ID_ctacteFlex
  loc_BACB30: FStAdFunc var_E0
  loc_BACB33: FLdPr var_E0
  loc_BACB36: LateIdCallLdVar
  loc_BACB40: PopAd
  loc_BACB42: FLdPr Me
  loc_BACB45: MemLdFPR8 global_72
  loc_BACB48: FLdRfVar var_F0
  loc_BACB4B: CStrVarTmp
  loc_BACB4C: FStStrNoPop var_F4
  loc_BACB4F: CR8Str
  loc_BACB51: AddR8
  loc_BACB52: FLdPr Me
  loc_BACB55: MemStFPR8 global_72
  loc_BACB58: FFree1Str var_F4
  loc_BACB5B: FFreeAd var_88 = ""
  loc_BACB62: FFreeVar var_98 = ""
  loc_BACB69: FLdPr Me
  loc_BACB6C: MemLdI2 global_68
  loc_BACB6F: LitI2_Byte &HC
  loc_BACB71: EqI2
  loc_BACB72: BranchF loc_BACC32
  loc_BACB75: FLdPr Me
  loc_BACB78: VCallAd Control_ID_ctacteFlex
  loc_BACB7B: FStAdFunc var_88
  loc_BACB7E: FLdPr var_88
  loc_BACB81: LateIdLdVar var_98 DispID_10 0
  loc_BACB88: CI4Var
  loc_BACB8A: CVarI4
  loc_BACB8E: PopAdLdVar
  loc_BACB8F: FLdPr Me
  loc_BACB92: MemLdI2 global_68
  loc_BACB95: CI4UI1
  loc_BACB96: CVarI4
  loc_BACB9A: PopAdLdVar
  loc_BACB9B: FLdPr Me
  loc_BACB9E: VCallAd Control_ID_ctacteFlex
  loc_BACBA1: FStAdFunc var_E0
  loc_BACBA4: FLdPr var_E0
  loc_BACBA7: LateIdCallLdVar
  loc_BACBB1: CStrVarTmp
  loc_BACBB2: CVarStr var_108
  loc_BACBB5: ImpAdCallI2 IsNumeric()
  loc_BACBBA: FFreeAd var_88 = ""
  loc_BACBC1: FFreeVar var_98 = "": var_F0 = ""
  loc_BACBCA: BranchF loc_BACC32
  loc_BACBCD: FLdPr Me
  loc_BACBD0: VCallAd Control_ID_ctacteFlex
  loc_BACBD3: FStAdFunc var_88
  loc_BACBD6: FLdPr var_88
  loc_BACBD9: LateIdLdVar var_98 DispID_10 0
  loc_BACBE0: CI4Var
  loc_BACBE2: CVarI4
  loc_BACBE6: PopAdLdVar
  loc_BACBE7: FLdPr Me
  loc_BACBEA: MemLdI2 global_68
  loc_BACBED: CI4UI1
  loc_BACBEE: CVarI4
  loc_BACBF2: PopAdLdVar
  loc_BACBF3: FLdPr Me
  loc_BACBF6: VCallAd Control_ID_ctacteFlex
  loc_BACBF9: FStAdFunc var_E0
  loc_BACBFC: FLdPr var_E0
  loc_BACBFF: LateIdCallLdVar
  loc_BACC09: PopAd
  loc_BACC0B: FLdPr Me
  loc_BACC0E: MemLdFPR8 global_80
  loc_BACC11: FLdRfVar var_F0
  loc_BACC14: CStrVarTmp
  loc_BACC15: FStStrNoPop var_F4
  loc_BACC18: CR8Str
  loc_BACC1A: AddR8
  loc_BACC1B: FLdPr Me
  loc_BACC1E: MemStFPR8 global_80
  loc_BACC21: FFree1Str var_F4
  loc_BACC24: FFreeAd var_88 = ""
  loc_BACC2B: FFreeVar var_98 = ""
  loc_BACC32: FLdPr Me
  loc_BACC35: MemLdI2 global_68
  loc_BACC38: LitI2_Byte &HD
  loc_BACC3A: EqI2
  loc_BACC3B: BranchF loc_BACCA3
  loc_BACC3E: FLdPr Me
  loc_BACC41: VCallAd Control_ID_ctacteFlex
  loc_BACC44: FStAdFunc var_88
  loc_BACC47: FLdPr var_88
  loc_BACC4A: LateIdLdVar var_98 DispID_10 0
  loc_BACC51: CI4Var
  loc_BACC53: CVarI4
  loc_BACC57: PopAdLdVar
  loc_BACC58: FLdPr Me
  loc_BACC5B: MemLdI2 global_68
  loc_BACC5E: CI4UI1
  loc_BACC5F: CVarI4
  loc_BACC63: PopAdLdVar
  loc_BACC64: FLdPr Me
  loc_BACC67: VCallAd Control_ID_ctacteFlex
  loc_BACC6A: FStAdFunc var_E0
  loc_BACC6D: FLdPr var_E0
  loc_BACC70: LateIdCallLdVar
  loc_BACC7A: PopAd
  loc_BACC7C: FLdPr Me
  loc_BACC7F: MemLdFPR8 global_88
  loc_BACC82: FLdRfVar var_F0
  loc_BACC85: CStrVarTmp
  loc_BACC86: FStStrNoPop var_F4
  loc_BACC89: CR8Str
  loc_BACC8B: AddR8
  loc_BACC8C: FLdPr Me
  loc_BACC8F: MemStFPR8 global_88
  loc_BACC92: FFree1Str var_F4
  loc_BACC95: FFreeAd var_88 = ""
  loc_BACC9C: FFreeVar var_98 = ""
  loc_BACCA3: FLdPr Me
  loc_BACCA6: MemLdI2 global_68
  loc_BACCA9: LitI2_Byte &H10
  loc_BACCAB: EqI2
  loc_BACCAC: BranchF loc_BACCF6
  loc_BACCAF: FLdPr Me
  loc_BACCB2: VCallAd Control_ID_ctacteFlex
  loc_BACCB5: FStAdFunc var_88
  loc_BACCB8: FLdPr var_88
  loc_BACCBB: LateIdLdVar var_98 DispID_10 0
  loc_BACCC2: CI4Var
  loc_BACCC4: CVarI4
  loc_BACCC8: PopAdLdVar
  loc_BACCC9: LitVarI4
  loc_BACCD1: PopAdLdVar
  loc_BACCD2: LitVarStr var_118, "Si"
  loc_BACCD7: PopAdLdVar
  loc_BACCD8: FLdPr Me
  loc_BACCDB: VCallAd Control_ID_ctacteFlex
  loc_BACCDE: FStAdFunc var_E0
  loc_BACCE1: FLdPr var_E0
  loc_BACCE4: LateIdCallSt
  loc_BACCEC: FFreeAd var_88 = ""
  loc_BACCF3: FFree1Var var_98 = ""
  loc_BACCF6: FLdPr Me
  loc_BACCF9: MemLdRfVar from_stack_1.global_68
  loc_BACCFC: NextI2 var_9C, loc_BAC7F8
  loc_BACD01: LitI4 1
  loc_BACD06: LitI4 1
  loc_BACD0B: LitVarStr var_BC, "0.00"
  loc_BACD10: FStVarCopyObj var_98
  loc_BACD13: FLdRfVar var_98
  loc_BACD16: FLdPr Me
  loc_BACD19: MemLdRfVar from_stack_1.global_72
  loc_BACD1C: CVarRef
  loc_BACD21: FLdRfVar var_F0
  loc_BACD24: ImpAdCallFPR4  = Format(, )
  loc_BACD29: FLdRfVar var_F0
  loc_BACD2C: CStrVarVal var_F4
  loc_BACD30: FLdPr Me
  loc_BACD33: VCallAd Control_ID_txtDereSele
  loc_BACD36: FStAdFunc var_88
  loc_BACD39: FLdPr var_88
  loc_BACD3C: Me.Text = from_stack_1
  loc_BACD41: FFree1Str var_F4
  loc_BACD44: FFree1Ad var_88
  loc_BACD47: FFreeVar var_98 = ""
  loc_BACD4E: LitI4 1
  loc_BACD53: LitI4 1
  loc_BACD58: LitVarStr var_BC, "0.00"
  loc_BACD5D: FStVarCopyObj var_98
  loc_BACD60: FLdRfVar var_98
  loc_BACD63: FLdPr Me
  loc_BACD66: MemLdRfVar from_stack_1.global_80
  loc_BACD69: CVarRef
  loc_BACD6E: FLdRfVar var_F0
  loc_BACD71: ImpAdCallFPR4  = Format(, )
  loc_BACD76: FLdRfVar var_F0
  loc_BACD79: CStrVarVal var_F4
  loc_BACD7D: FLdPr Me
  loc_BACD80: VCallAd Control_ID_txtRecaSele
  loc_BACD83: FStAdFunc var_88
  loc_BACD86: FLdPr var_88
  loc_BACD89: Me.Text = from_stack_1
  loc_BACD8E: FFree1Str var_F4
  loc_BACD91: FFree1Ad var_88
  loc_BACD94: FFreeVar var_98 = ""
  loc_BACD9B: LitI4 1
  loc_BACDA0: LitI4 1
  loc_BACDA5: LitVarStr var_BC, "0.00"
  loc_BACDAA: FStVarCopyObj var_98
  loc_BACDAD: FLdRfVar var_98
  loc_BACDB0: FLdPr Me
  loc_BACDB3: MemLdRfVar from_stack_1.global_88
  loc_BACDB6: CVarRef
  loc_BACDBB: FLdRfVar var_F0
  loc_BACDBE: ImpAdCallFPR4  = Format(, )
  loc_BACDC3: FLdRfVar var_F0
  loc_BACDC6: CStrVarVal var_F4
  loc_BACDCA: FLdPr Me
  loc_BACDCD: VCallAd Control_ID_txtTotaSele
  loc_BACDD0: FStAdFunc var_88
  loc_BACDD3: FLdPr var_88
  loc_BACDD6: Me.Text = from_stack_1
  loc_BACDDB: FFree1Str var_F4
  loc_BACDDE: FFree1Ad var_88
  loc_BACDE1: FFreeVar var_98 = ""
  loc_BACDE8: ExitProcHresult
  loc_BACDE9: PrintObj
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) 'B3433C
  'Data Table: 504878
  loc_B34040: ILdI2 KeyAscii
  loc_B34043: LitI2_Byte &HD
  loc_B34045: EqI2
  loc_B34046: BranchF loc_B3433A
  loc_B34049: FLdPr Me
  loc_B3404C: VCallAd Control_ID_ctacteFlex
  loc_B3404F: FStAdFunc var_88
  loc_B34052: FLdPr var_88
  loc_B34055: LateIdLdVar var_98 DispID_4 0
  loc_B3405C: CI4Var
  loc_B3405E: LitI4 1
  loc_B34063: GtI4
  loc_B34064: FFree1Ad var_88
  loc_B34067: FFree1Var var_98 = ""
  loc_B3406A: BranchF loc_B3433A
  loc_B3406D: LitI2_Byte &HFF
  loc_B3406F: FLdPr Me
  loc_B34072: VCallAd Control_ID_ImpoCtctTxt
  loc_B34075: FStAdFunc var_88
  loc_B34078: FLdPr var_88
  loc_B3407B: Me.Enabled = from_stack_1b
  loc_B34080: FFree1Ad var_88
  loc_B34083: FLdPr Me
  loc_B34086: VCallAd Control_ID_ctacteFlex
  loc_B34089: FStAdFunc var_88
  loc_B3408C: FLdPr var_88
  loc_B3408F: LateIdLdVar var_98 DispID_10 0
  loc_B34096: CI4Var
  loc_B34098: CVarI4
  loc_B3409C: PopAdLdVar
  loc_B3409D: LitVarI4
  loc_B340A5: PopAdLdVar
  loc_B340A6: FLdPr Me
  loc_B340A9: VCallAd Control_ID_ctacteFlex
  loc_B340AC: FStAdFunc var_DC
  loc_B340AF: FLdPr var_DC
  loc_B340B2: LateIdCallLdVar
  loc_B340BC: CStrVarTmp
  loc_B340BD: FStStrNoPop var_F0
  loc_B340C0: FLdPr Me
  loc_B340C3: VCallAd Control_ID_ImpoCtctTxt
  loc_B340C6: FStAdFunc var_F4
  loc_B340C9: FLdPr var_F4
  loc_B340CC: Me.Text = from_stack_1
  loc_B340D1: FFree1Str var_F0
  loc_B340D4: FFreeAd var_88 = "": var_DC = ""
  loc_B340DD: FFreeVar var_98 = ""
  loc_B340E4: FLdPr Me
  loc_B340E7: VCallAd Control_ID_ctacteFlex
  loc_B340EA: FStAdFunc var_88
  loc_B340ED: FLdPr var_88
  loc_B340F0: LateIdLdVar var_98 DispID_10 0
  loc_B340F7: CI4Var
  loc_B340F9: CI2I4
  loc_B340FA: FLdPr Me
  loc_B340FD: MemStI2 global_98
  loc_B34100: FFree1Ad var_88
  loc_B34103: FFree1Var var_98 = ""
  loc_B34106: FLdPr Me
  loc_B34109: MemLdI2 global_96
  loc_B3410C: LitI2_Byte 0
  loc_B3410E: NeI2
  loc_B3410F: BranchF loc_B34215
  loc_B34112: FLdPr Me
  loc_B34115: MemLdI2 global_96
  loc_B34118: CI4UI1
  loc_B34119: CVarI4
  loc_B3411D: PopAdLdVar
  loc_B3411E: FLdPr Me
  loc_B34121: VCallAd Control_ID_ctacteFlex
  loc_B34124: FStAdFunc var_88
  loc_B34127: FLdPr var_88
  loc_B3412A: LateIdSt
  loc_B3412F: FFree1Ad var_88
  loc_B34132: LitI2_Byte 0
  loc_B34134: FLdPr Me
  loc_B34137: MemLdRfVar from_stack_1.global_68
  loc_B3413A: FLdPr Me
  loc_B3413D: VCallAd Control_ID_ctacteFlex
  loc_B34140: FStAdFunc var_88
  loc_B34143: FLdPr var_88
  loc_B34146: LateIdLdVar var_98 DispID_5 0
  loc_B3414D: CI4Var
  loc_B3414F: LitI4 1
  loc_B34154: SubI4
  loc_B34155: CI2I4
  loc_B34156: FFree1Ad var_88
  loc_B34159: FFree1Var var_98 = ""
  loc_B3415C: ForI2 var_F8
  loc_B34162: FLdPr Me
  loc_B34165: MemLdI2 global_68
  loc_B34168: CI4UI1
  loc_B34169: CVarI4
  loc_B3416D: PopAdLdVar
  loc_B3416E: FLdPr Me
  loc_B34171: VCallAd Control_ID_ctacteFlex
  loc_B34174: FStAdFunc var_88
  loc_B34177: FLdPr var_88
  loc_B3417A: LateIdSt
  loc_B3417F: FFree1Ad var_88
  loc_B34182: FLdPr Me
  loc_B34185: VCallAd Control_ID_ctacteFlex
  loc_B34188: FStAdFunc var_88
  loc_B3418B: FLdPr var_88
  loc_B3418E: LateIdLdVar var_98 DispID_38 0
  loc_B34195: CI4Var
  loc_B34197: LitI4 &HFF
  loc_B3419C: EqI4
  loc_B3419D: FFree1Ad var_88
  loc_B341A0: FFree1Var var_98 = ""
  loc_B341A3: BranchF loc_B3420A
  loc_B341A6: LitVarI4
  loc_B341AE: PopAdLdVar
  loc_B341AF: FLdPr Me
  loc_B341B2: VCallAd Control_ID_ctacteFlex
  loc_B341B5: FStAdFunc var_88
  loc_B341B8: FLdPr var_88
  loc_B341BB: LateIdSt
  loc_B341C0: FFree1Ad var_88
  loc_B341C3: FLdPr Me
  loc_B341C6: VCallAd Control_ID_ctacteFlex
  loc_B341C9: FStAdFunc var_88
  loc_B341CC: FLdPr var_88
  loc_B341CF: LateIdLdVar var_98 DispID_10 0
  loc_B341D6: CI4Var
  loc_B341D8: CVarI4
  loc_B341DC: PopAdLdVar
  loc_B341DD: LitVarI4
  loc_B341E5: PopAdLdVar
  loc_B341E6: LitVarStr var_108, "No"
  loc_B341EB: PopAdLdVar
  loc_B341EC: FLdPr Me
  loc_B341EF: VCallAd Control_ID_ctacteFlex
  loc_B341F2: FStAdFunc var_DC
  loc_B341F5: FLdPr var_DC
  loc_B341F8: LateIdCallSt
  loc_B34200: FFreeAd var_88 = ""
  loc_B34207: FFree1Var var_98 = ""
  loc_B3420A: FLdPr Me
  loc_B3420D: MemLdRfVar from_stack_1.global_68
  loc_B34210: NextI2 var_F8, loc_B34162
  loc_B34215: FLdPr Me
  loc_B34218: MemLdI2 global_98
  loc_B3421B: CI4UI1
  loc_B3421C: CVarI4
  loc_B34220: PopAdLdVar
  loc_B34221: FLdPr Me
  loc_B34224: VCallAd Control_ID_ctacteFlex
  loc_B34227: FStAdFunc var_88
  loc_B3422A: FLdPr var_88
  loc_B3422D: LateIdSt
  loc_B34232: FFree1Ad var_88
  loc_B34235: LitI2_Byte 0
  loc_B34237: FLdPr Me
  loc_B3423A: MemLdRfVar from_stack_1.global_68
  loc_B3423D: FLdPr Me
  loc_B34240: VCallAd Control_ID_ctacteFlex
  loc_B34243: FStAdFunc var_88
  loc_B34246: FLdPr var_88
  loc_B34249: LateIdLdVar var_98 DispID_5 0
  loc_B34250: CI4Var
  loc_B34252: LitI4 1
  loc_B34257: SubI4
  loc_B34258: CI2I4
  loc_B34259: FFree1Ad var_88
  loc_B3425C: FFree1Var var_98 = ""
  loc_B3425F: ForI2 var_11C
  loc_B34265: FLdPr Me
  loc_B34268: MemLdI2 global_68
  loc_B3426B: CI4UI1
  loc_B3426C: CVarI4
  loc_B34270: PopAdLdVar
  loc_B34271: FLdPr Me
  loc_B34274: VCallAd Control_ID_ctacteFlex
  loc_B34277: FStAdFunc var_88
  loc_B3427A: FLdPr var_88
  loc_B3427D: LateIdSt
  loc_B34282: FFree1Ad var_88
  loc_B34285: FLdPr Me
  loc_B34288: VCallAd Control_ID_ctacteFlex
  loc_B3428B: FStAdFunc var_88
  loc_B3428E: FLdPr var_88
  loc_B34291: LateIdLdVar var_98 DispID_38 0
  loc_B34298: CI4Var
  loc_B3429A: LitI4 &HFF
  loc_B3429F: NeI4
  loc_B342A0: FFree1Ad var_88
  loc_B342A3: FFree1Var var_98 = ""
  loc_B342A6: BranchF loc_B3430D
  loc_B342A9: LitVarI4
  loc_B342B1: PopAdLdVar
  loc_B342B2: FLdPr Me
  loc_B342B5: VCallAd Control_ID_ctacteFlex
  loc_B342B8: FStAdFunc var_88
  loc_B342BB: FLdPr var_88
  loc_B342BE: LateIdSt
  loc_B342C3: FFree1Ad var_88
  loc_B342C6: FLdPr Me
  loc_B342C9: VCallAd Control_ID_ctacteFlex
  loc_B342CC: FStAdFunc var_88
  loc_B342CF: FLdPr var_88
  loc_B342D2: LateIdLdVar var_98 DispID_10 0
  loc_B342D9: CI4Var
  loc_B342DB: CVarI4
  loc_B342DF: PopAdLdVar
  loc_B342E0: LitVarI4
  loc_B342E8: PopAdLdVar
  loc_B342E9: LitVarStr var_108, "SS"
  loc_B342EE: PopAdLdVar
  loc_B342EF: FLdPr Me
  loc_B342F2: VCallAd Control_ID_ctacteFlex
  loc_B342F5: FStAdFunc var_DC
  loc_B342F8: FLdPr var_DC
  loc_B342FB: LateIdCallSt
  loc_B34303: FFreeAd var_88 = ""
  loc_B3430A: FFree1Var var_98 = ""
  loc_B3430D: FLdPr Me
  loc_B34310: MemLdRfVar from_stack_1.global_68
  loc_B34313: NextI2 var_11C, loc_B34265
  loc_B34318: FLdPr Me
  loc_B3431B: VCallAd Control_ID_ctacteFlex
  loc_B3431E: FStAdFunc var_88
  loc_B34321: FLdPr var_88
  loc_B34324: LateIdLdVar var_98 DispID_10 0
  loc_B3432B: CI4Var
  loc_B3432D: CI2I4
  loc_B3432E: FLdPr Me
  loc_B34331: MemStI2 global_96
  loc_B34334: FFree1Ad var_88
  loc_B34337: FFree1Var var_98 = ""
  loc_B3433A: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A4AF94
  'Data Table: 504878
  loc_A4AF40: LitVar_Missing var_A4
  loc_A4AF43: PopAdLdVar
  loc_A4AF44: LitVarI4
  loc_A4AF4C: PopAdLdVar
  loc_A4AF4D: ImpAdLdRf MemVar_D930A4
  loc_A4AF50: NewIfNullPr frmCalendario
  loc_A4AF53: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4AF58: ImpAdLdI4 MemVar_D93028
  loc_A4AF5B: LitStr vbNullString
  loc_A4AF5E: NeStr
  loc_A4AF60: BranchF loc_A4AF7E
  loc_A4AF63: ImpAdLdRf MemVar_D93028
  loc_A4AF66: CDargRef
  loc_A4AF6A: FLdPr Me
  loc_A4AF6D: VCallAd Control_ID_FechVencMsk
  loc_A4AF70: FStAdFunc var_A8
  loc_A4AF73: FLdPr var_A8
  loc_A4AF76: LateIdSt
  loc_A4AF7B: FFree1Ad var_A8
  loc_A4AF7E: FLdPr Me
  loc_A4AF81: VCallAd Control_ID_FechVencMsk
  loc_A4AF84: CVarAd
  loc_A4AF88: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4AF8D: FFree1Var var_B8 = ""
  loc_A4AF90: ExitProcHresult
End Sub

Private Sub CredParcialChk_Click() 'B72D00
  'Data Table: 504878
  loc_B72854: LitI4 1
  loc_B72859: LitI4 1
  loc_B7285E: LitVarStr var_B4, "0.00"
  loc_B72863: FStVarCopyObj var_C4
  loc_B72866: FLdRfVar var_C4
  loc_B72869: LitVarI2 var_A4, 0
  loc_B7286E: FLdRfVar var_D4
  loc_B72871: ImpAdCallFPR4  = Format(, )
  loc_B72876: FLdRfVar var_D4
  loc_B72879: CStrVarVal var_D8
  loc_B7287D: FLdPr Me
  loc_B72880: VCallAd Control_ID_ImpoCtctTxt
  loc_B72883: FStAdFunc var_DC
  loc_B72886: FLdPr var_DC
  loc_B72889: Me.Text = from_stack_1
  loc_B7288E: FFree1Str var_D8
  loc_B72891: FFree1Ad var_DC
  loc_B72894: FFreeVar var_A4 = "": var_C4 = ""
  loc_B7289D: FLdRfVar var_DE
  loc_B728A0: FLdPr Me
  loc_B728A3: VCallAd Control_ID_CredParcialChk
  loc_B728A6: FStAdFunc var_DC
  loc_B728A9: FLdPr var_DC
  loc_B728AC:  = Me.Value
  loc_B728B1: FLdI2 var_DE
  loc_B728B4: LitI2_Byte 1
  loc_B728B6: EqI2
  loc_B728B7: FFree1Ad var_DC
  loc_B728BA: BranchF loc_B728D6
  loc_B728BD: LitI2_Byte &HFF
  loc_B728BF: FLdPr Me
  loc_B728C2: VCallAd Control_ID_ImpoCtctTxt
  loc_B728C5: FStAdFunc var_DC
  loc_B728C8: FLdPr var_DC
  loc_B728CB: Me.Enabled = from_stack_1b
  loc_B728D0: FFree1Ad var_DC
  loc_B728D3: Branch loc_B72CFF
  loc_B728D6: LitI2_Byte 0
  loc_B728D8: FLdPr Me
  loc_B728DB: VCallAd Control_ID_ImpoCtctTxt
  loc_B728DE: FStAdFunc var_DC
  loc_B728E1: FLdPr var_DC
  loc_B728E4: Me.Enabled = from_stack_1b
  loc_B728E9: FFree1Ad var_DC
  loc_B728EC: LitI2_Byte 1
  loc_B728EE: FLdPr Me
  loc_B728F1: MemLdRfVar from_stack_1.global_68
  loc_B728F4: FLdPr Me
  loc_B728F7: VCallAd Control_ID_ctacteFlex
  loc_B728FA: FStAdFunc var_DC
  loc_B728FD: FLdPr var_DC
  loc_B72900: LateIdLdVar var_A4 DispID_4 0
  loc_B72907: CI4Var
  loc_B72909: LitI4 1
  loc_B7290E: SubI4
  loc_B7290F: CI2I4
  loc_B72910: FFree1Ad var_DC
  loc_B72913: FFree1Var var_A4 = ""
  loc_B72916: ForI2 var_E2
  loc_B7291C: FLdPr Me
  loc_B7291F: MemLdI2 global_68
  loc_B72922: CI4UI1
  loc_B72923: CVarI4
  loc_B72927: PopAdLdVar
  loc_B72928: LitVarI4
  loc_B72930: PopAdLdVar
  loc_B72931: FLdPr Me
  loc_B72934: VCallAd Control_ID_ctacteFlex
  loc_B72937: FStAdFunc var_DC
  loc_B7293A: FLdPr var_DC
  loc_B7293D: LateIdCallLdVar
  loc_B72947: CStrVarTmp
  loc_B72948: FStStrNoPop var_D8
  loc_B7294B: LitStr "SS"
  loc_B7294E: EqStr
  loc_B72950: FFree1Str var_D8
  loc_B72953: FFree1Ad var_DC
  loc_B72956: FFree1Var var_A4 = ""
  loc_B72959: BranchF loc_B72CF4
  loc_B7295C: FLdPr Me
  loc_B7295F: MemLdI2 global_68
  loc_B72962: CI4UI1
  loc_B72963: CVarI4
  loc_B72967: PopAdLdVar
  loc_B72968: FLdPr Me
  loc_B7296B: VCallAd Control_ID_ctacteFlex
  loc_B7296E: FStAdFunc var_DC
  loc_B72971: FLdPr var_DC
  loc_B72974: LateIdSt
  loc_B72979: FFree1Ad var_DC
  loc_B7297C: LitI2_Byte 0
  loc_B7297E: FLdPr Me
  loc_B72981: MemLdRfVar from_stack_1.global_70
  loc_B72984: FLdPr Me
  loc_B72987: VCallAd Control_ID_ctacteFlex
  loc_B7298A: FStAdFunc var_DC
  loc_B7298D: FLdPr var_DC
  loc_B72990: LateIdLdVar var_A4 DispID_5 0
  loc_B72997: CI4Var
  loc_B72999: LitI4 1
  loc_B7299E: SubI4
  loc_B7299F: CI2I4
  loc_B729A0: FFree1Ad var_DC
  loc_B729A3: FFree1Var var_A4 = ""
  loc_B729A6: ForI2 var_108
  loc_B729AC: FLdPr Me
  loc_B729AF: MemLdI2 global_70
  loc_B729B2: CI4UI1
  loc_B729B3: CVarI4
  loc_B729B7: PopAdLdVar
  loc_B729B8: FLdPr Me
  loc_B729BB: VCallAd Control_ID_ctacteFlex
  loc_B729BE: FStAdFunc var_DC
  loc_B729C1: FLdPr var_DC
  loc_B729C4: LateIdSt
  loc_B729C9: FFree1Ad var_DC
  loc_B729CC: LitVarI4
  loc_B729D4: PopAdLdVar
  loc_B729D5: FLdPr Me
  loc_B729D8: VCallAd Control_ID_ctacteFlex
  loc_B729DB: FStAdFunc var_DC
  loc_B729DE: FLdPr var_DC
  loc_B729E1: LateIdSt
  loc_B729E6: FFree1Ad var_DC
  loc_B729E9: FLdPr Me
  loc_B729EC: MemLdI2 global_70
  loc_B729EF: LitI2_Byte &HB
  loc_B729F1: EqI2
  loc_B729F2: BranchF loc_B72AB0
  loc_B729F5: FLdRfVar var_D8
  loc_B729F8: FLdPr Me
  loc_B729FB: VCallAd Control_ID_txtDereSele
  loc_B729FE: FStAdFunc var_DC
  loc_B72A01: FLdPr var_DC
  loc_B72A04:  = Me.Text
  loc_B72A09: FLdPr Me
  loc_B72A0C: VCallAd Control_ID_ctacteFlex
  loc_B72A0F: FStAdFunc var_10C
  loc_B72A12: FLdPr var_10C
  loc_B72A15: LateIdLdVar var_A4 DispID_10 0
  loc_B72A1C: CI4Var
  loc_B72A1E: CVarI4
  loc_B72A22: PopAdLdVar
  loc_B72A23: FLdPr Me
  loc_B72A26: MemLdI2 global_70
  loc_B72A29: CI4UI1
  loc_B72A2A: CVarI4
  loc_B72A2E: PopAdLdVar
  loc_B72A2F: FLdPr Me
  loc_B72A32: VCallAd Control_ID_ctacteFlex
  loc_B72A35: FStAdFunc var_110
  loc_B72A38: FLdPr var_110
  loc_B72A3B: LateIdCallLdVar
  loc_B72A45: PopAd
  loc_B72A47: LitI4 1
  loc_B72A4C: LitI4 1
  loc_B72A51: LitVarStr var_134, "0.00"
  loc_B72A56: FStVarCopyObj var_144
  loc_B72A59: FLdRfVar var_144
  loc_B72A5C: ILdRf var_D8
  loc_B72A5F: CR8Str
  loc_B72A61: FLdRfVar var_C4
  loc_B72A64: CStrVarTmp
  loc_B72A65: FStStrNoPop var_114
  loc_B72A68: CR8Str
  loc_B72A6A: SubR4
  loc_B72A6B: CVarR8
  loc_B72A6F: FLdRfVar var_154
  loc_B72A72: ImpAdCallFPR4  = Format(, )
  loc_B72A77: FLdRfVar var_154
  loc_B72A7A: CStrVarVal var_158
  loc_B72A7E: FLdPr Me
  loc_B72A81: VCallAd Control_ID_txtDereSele
  loc_B72A84: FStAdFunc var_15C
  loc_B72A87: FLdPr var_15C
  loc_B72A8A: Me.Text = from_stack_1
  loc_B72A8F: FFreeStr var_D8 = "": var_114 = ""
  loc_B72A98: FFreeAd var_DC = "": var_10C = "": var_110 = ""
  loc_B72AA3: FFreeVar var_A4 = "": var_C4 = "": var_D4 = "": var_144 = ""
  loc_B72AB0: FLdPr Me
  loc_B72AB3: MemLdI2 global_70
  loc_B72AB6: LitI2_Byte &HC
  loc_B72AB8: EqI2
  loc_B72AB9: BranchF loc_B72BCF
  loc_B72ABC: FLdPr Me
  loc_B72ABF: VCallAd Control_ID_ctacteFlex
  loc_B72AC2: FStAdFunc var_DC
  loc_B72AC5: FLdPr var_DC
  loc_B72AC8: LateIdLdVar var_A4 DispID_10 0
  loc_B72ACF: CI4Var
  loc_B72AD1: CVarI4
  loc_B72AD5: PopAdLdVar
  loc_B72AD6: FLdPr Me
  loc_B72AD9: MemLdI2 global_70
  loc_B72ADC: CI4UI1
  loc_B72ADD: CVarI4
  loc_B72AE1: PopAdLdVar
  loc_B72AE2: FLdPr Me
  loc_B72AE5: VCallAd Control_ID_ctacteFlex
  loc_B72AE8: FStAdFunc var_10C
  loc_B72AEB: FLdPr var_10C
  loc_B72AEE: LateIdCallLdVar
  loc_B72AF8: CStrVarTmp
  loc_B72AF9: CVarStr var_D4
  loc_B72AFC: ImpAdCallI2 IsNumeric()
  loc_B72B01: FFreeAd var_DC = ""
  loc_B72B08: FFreeVar var_A4 = "": var_C4 = ""
  loc_B72B11: BranchF loc_B72BCF
  loc_B72B14: FLdRfVar var_D8
  loc_B72B17: FLdPr Me
  loc_B72B1A: VCallAd Control_ID_txtRecaSele
  loc_B72B1D: FStAdFunc var_DC
  loc_B72B20: FLdPr var_DC
  loc_B72B23:  = Me.Text
  loc_B72B28: FLdPr Me
  loc_B72B2B: VCallAd Control_ID_ctacteFlex
  loc_B72B2E: FStAdFunc var_10C
  loc_B72B31: FLdPr var_10C
  loc_B72B34: LateIdLdVar var_A4 DispID_10 0
  loc_B72B3B: CI4Var
  loc_B72B3D: CVarI4
  loc_B72B41: PopAdLdVar
  loc_B72B42: FLdPr Me
  loc_B72B45: MemLdI2 global_70
  loc_B72B48: CI4UI1
  loc_B72B49: CVarI4
  loc_B72B4D: PopAdLdVar
  loc_B72B4E: FLdPr Me
  loc_B72B51: VCallAd Control_ID_ctacteFlex
  loc_B72B54: FStAdFunc var_110
  loc_B72B57: FLdPr var_110
  loc_B72B5A: LateIdCallLdVar
  loc_B72B64: PopAd
  loc_B72B66: LitI4 1
  loc_B72B6B: LitI4 1
  loc_B72B70: LitVarStr var_134, "0.00"
  loc_B72B75: FStVarCopyObj var_144
  loc_B72B78: FLdRfVar var_144
  loc_B72B7B: ILdRf var_D8
  loc_B72B7E: CR8Str
  loc_B72B80: FLdRfVar var_C4
  loc_B72B83: CStrVarTmp
  loc_B72B84: FStStrNoPop var_114
  loc_B72B87: CR8Str
  loc_B72B89: SubR4
  loc_B72B8A: CVarR8
  loc_B72B8E: FLdRfVar var_154
  loc_B72B91: ImpAdCallFPR4  = Format(, )
  loc_B72B96: FLdRfVar var_154
  loc_B72B99: CStrVarVal var_158
  loc_B72B9D: FLdPr Me
  loc_B72BA0: VCallAd Control_ID_txtRecaSele
  loc_B72BA3: FStAdFunc var_15C
  loc_B72BA6: FLdPr var_15C
  loc_B72BA9: Me.Text = from_stack_1
  loc_B72BAE: FFreeStr var_D8 = "": var_114 = ""
  loc_B72BB7: FFreeAd var_DC = "": var_10C = "": var_110 = ""
  loc_B72BC2: FFreeVar var_A4 = "": var_C4 = "": var_D4 = "": var_144 = ""
  loc_B72BCF: FLdPr Me
  loc_B72BD2: MemLdI2 global_70
  loc_B72BD5: LitI2_Byte &HD
  loc_B72BD7: EqI2
  loc_B72BD8: BranchF loc_B72C96
  loc_B72BDB: FLdRfVar var_D8
  loc_B72BDE: FLdPr Me
  loc_B72BE1: VCallAd Control_ID_txtTotaSele
  loc_B72BE4: FStAdFunc var_DC
  loc_B72BE7: FLdPr var_DC
  loc_B72BEA:  = Me.Text
  loc_B72BEF: FLdPr Me
  loc_B72BF2: VCallAd Control_ID_ctacteFlex
  loc_B72BF5: FStAdFunc var_10C
  loc_B72BF8: FLdPr var_10C
  loc_B72BFB: LateIdLdVar var_A4 DispID_10 0
  loc_B72C02: CI4Var
  loc_B72C04: CVarI4
  loc_B72C08: PopAdLdVar
  loc_B72C09: FLdPr Me
  loc_B72C0C: MemLdI2 global_70
  loc_B72C0F: CI4UI1
  loc_B72C10: CVarI4
  loc_B72C14: PopAdLdVar
  loc_B72C15: FLdPr Me
  loc_B72C18: VCallAd Control_ID_ctacteFlex
  loc_B72C1B: FStAdFunc var_110
  loc_B72C1E: FLdPr var_110
  loc_B72C21: LateIdCallLdVar
  loc_B72C2B: PopAd
  loc_B72C2D: LitI4 1
  loc_B72C32: LitI4 1
  loc_B72C37: LitVarStr var_134, "0.00"
  loc_B72C3C: FStVarCopyObj var_144
  loc_B72C3F: FLdRfVar var_144
  loc_B72C42: ILdRf var_D8
  loc_B72C45: CR8Str
  loc_B72C47: FLdRfVar var_C4
  loc_B72C4A: CStrVarTmp
  loc_B72C4B: FStStrNoPop var_114
  loc_B72C4E: CR8Str
  loc_B72C50: SubR4
  loc_B72C51: CVarR8
  loc_B72C55: FLdRfVar var_154
  loc_B72C58: ImpAdCallFPR4  = Format(, )
  loc_B72C5D: FLdRfVar var_154
  loc_B72C60: CStrVarVal var_158
  loc_B72C64: FLdPr Me
  loc_B72C67: VCallAd Control_ID_txtTotaSele
  loc_B72C6A: FStAdFunc var_15C
  loc_B72C6D: FLdPr var_15C
  loc_B72C70: Me.Text = from_stack_1
  loc_B72C75: FFreeStr var_D8 = "": var_114 = ""
  loc_B72C7E: FFreeAd var_DC = "": var_10C = "": var_110 = ""
  loc_B72C89: FFreeVar var_A4 = "": var_C4 = "": var_D4 = "": var_144 = ""
  loc_B72C96: FLdPr Me
  loc_B72C99: MemLdI2 global_70
  loc_B72C9C: LitI2_Byte &H10
  loc_B72C9E: EqI2
  loc_B72C9F: BranchF loc_B72CE9
  loc_B72CA2: FLdPr Me
  loc_B72CA5: VCallAd Control_ID_ctacteFlex
  loc_B72CA8: FStAdFunc var_DC
  loc_B72CAB: FLdPr var_DC
  loc_B72CAE: LateIdLdVar var_A4 DispID_10 0
  loc_B72CB5: CI4Var
  loc_B72CB7: CVarI4
  loc_B72CBB: PopAdLdVar
  loc_B72CBC: LitVarI4
  loc_B72CC4: PopAdLdVar
  loc_B72CC5: LitVarStr var_124, "No"
  loc_B72CCA: PopAdLdVar
  loc_B72CCB: FLdPr Me
  loc_B72CCE: VCallAd Control_ID_ctacteFlex
  loc_B72CD1: FStAdFunc var_10C
  loc_B72CD4: FLdPr var_10C
  loc_B72CD7: LateIdCallSt
  loc_B72CDF: FFreeAd var_DC = ""
  loc_B72CE6: FFree1Var var_A4 = ""
  loc_B72CE9: FLdPr Me
  loc_B72CEC: MemLdRfVar from_stack_1.global_70
  loc_B72CEF: NextI2 var_108, loc_B729AC
  loc_B72CF4: FLdPr Me
  loc_B72CF7: MemLdRfVar from_stack_1.global_68
  loc_B72CFA: NextI2 var_E2, loc_B7291C
  loc_B72CFF: ExitProcHresult
End Sub

Private Function Proc_300_24_B196A8() 'B196A8
  'Data Table: 504878
  loc_B1941C: FLdPr Me
  loc_B1941F: VCallAd Control_ID_ctacteFlex
  loc_B19422: FStAdFunc var_88
  loc_B19425: FLdPr var_88
  loc_B19428: LateIdCall
  loc_B19430: LitVarI4
  loc_B19438: PopAdLdVar
  loc_B19439: FLdPr var_88
  loc_B1943C: LateIdSt
  loc_B19441: LitVarI4
  loc_B19449: PopAdLdVar
  loc_B1944A: LitVarI4
  loc_B19452: PopAdLdVar
  loc_B19453: LitVarStr var_D8, "Of"
  loc_B19458: PopAdLdVar
  loc_B19459: FLdPr var_88
  loc_B1945C: LateIdCallSt
  loc_B19464: LitVarI4
  loc_B1946C: PopAdLdVar
  loc_B1946D: LitVarI4
  loc_B19475: PopAdLdVar
  loc_B19476: LitVarStr var_D8, "Cuenta"
  loc_B1947B: PopAdLdVar
  loc_B1947C: FLdPr var_88
  loc_B1947F: LateIdCallSt
  loc_B19487: LitVarI4
  loc_B1948F: PopAdLdVar
  loc_B19490: LitVarI4
  loc_B19498: PopAdLdVar
  loc_B19499: LitVarStr var_D8, "Periodo"
  loc_B1949E: PopAdLdVar
  loc_B1949F: FLdPr var_88
  loc_B194A2: LateIdCallSt
  loc_B194AA: LitVarI4
  loc_B194B2: PopAdLdVar
  loc_B194B3: LitVarI4
  loc_B194BB: PopAdLdVar
  loc_B194BC: LitVarStr var_D8, "Boleto"
  loc_B194C1: PopAdLdVar
  loc_B194C2: FLdPr var_88
  loc_B194C5: LateIdCallSt
  loc_B194CD: LitVarI4
  loc_B194D5: PopAdLdVar
  loc_B194D6: LitVarI4
  loc_B194DE: PopAdLdVar
  loc_B194DF: LitVarStr var_D8, "Emision"
  loc_B194E4: PopAdLdVar
  loc_B194E5: FLdPr var_88
  loc_B194E8: LateIdCallSt
  loc_B194F0: LitVarI4
  loc_B194F8: PopAdLdVar
  loc_B194F9: LitVarI4
  loc_B19501: PopAdLdVar
  loc_B19502: LitVarStr var_D8, "Vencimiento"
  loc_B19507: PopAdLdVar
  loc_B19508: FLdPr var_88
  loc_B1950B: LateIdCallSt
  loc_B19513: LitVarI4
  loc_B1951B: PopAdLdVar
  loc_B1951C: LitVarI4
  loc_B19524: PopAdLdVar
  loc_B19525: LitVarStr var_D8, "Concepto"
  loc_B1952A: PopAdLdVar
  loc_B1952B: FLdPr var_88
  loc_B1952E: LateIdCallSt
  loc_B19536: LitVarI4
  loc_B1953E: PopAdLdVar
  loc_B1953F: LitVarI4
  loc_B19547: PopAdLdVar
  loc_B19548: LitVarStr var_D8, "Facilidad"
  loc_B1954D: PopAdLdVar
  loc_B1954E: FLdPr var_88
  loc_B19551: LateIdCallSt
  loc_B19559: LitVarI4
  loc_B19561: PopAdLdVar
  loc_B19562: LitVarI4
  loc_B1956A: PopAdLdVar
  loc_B1956B: LitVarStr var_D8, "Apremio"
  loc_B19570: PopAdLdVar
  loc_B19571: FLdPr var_88
  loc_B19574: LateIdCallSt
  loc_B1957C: LitVarI4
  loc_B19584: PopAdLdVar
  loc_B19585: LitVarI4
  loc_B1958D: PopAdLdVar
  loc_B1958E: LitVarStr var_D8, "Exp/Comp"
  loc_B19593: PopAdLdVar
  loc_B19594: FLdPr var_88
  loc_B19597: LateIdCallSt
  loc_B1959F: LitVarI4
  loc_B195A7: PopAdLdVar
  loc_B195A8: LitVarI4
  loc_B195B0: PopAdLdVar
  loc_B195B1: LitVarStr var_D8, "Tipo Movi."
  loc_B195B6: PopAdLdVar
  loc_B195B7: FLdPr var_88
  loc_B195BA: LateIdCallSt
  loc_B195C2: LitVarI4
  loc_B195CA: PopAdLdVar
  loc_B195CB: LitVarI4
  loc_B195D3: PopAdLdVar
  loc_B195D4: LitVarStr var_D8, "Debito"
  loc_B195D9: PopAdLdVar
  loc_B195DA: FLdPr var_88
  loc_B195DD: LateIdCallSt
  loc_B195E5: LitVarI4
  loc_B195ED: PopAdLdVar
  loc_B195EE: LitVarI4
  loc_B195F6: PopAdLdVar
  loc_B195F7: LitVarStr var_D8, "Recargo"
  loc_B195FC: PopAdLdVar
  loc_B195FD: FLdPr var_88
  loc_B19600: LateIdCallSt
  loc_B19608: LitVarI4
  loc_B19610: PopAdLdVar
  loc_B19611: LitVarI4
  loc_B19619: PopAdLdVar
  loc_B1961A: LitVarStr var_D8, "Saldo"
  loc_B1961F: PopAdLdVar
  loc_B19620: FLdPr var_88
  loc_B19623: LateIdCallSt
  loc_B1962B: LitVarI4
  loc_B19633: PopAdLdVar
  loc_B19634: LitVarI4
  loc_B1963C: PopAdLdVar
  loc_B1963D: LitVarStr var_D8, "Sel"
  loc_B19642: PopAdLdVar
  loc_B19643: FLdPr var_88
  loc_B19646: LateIdCallSt
  loc_B1964E: LitVarI4
  loc_B19656: PopAdLdVar
  loc_B19657: LitVarI4
  loc_B1965F: PopAdLdVar
  loc_B19660: LitVarStr var_D8, "Numero"
  loc_B19665: PopAdLdVar
  loc_B19666: FLdPr var_88
  loc_B19669: LateIdCallSt
  loc_B19671: LitVarI4
  loc_B19679: PopAdLdVar
  loc_B1967A: LitVarI4
  loc_B19682: PopAdLdVar
  loc_B19683: LitVarStr var_D8, "Mov"
  loc_B19688: PopAdLdVar
  loc_B19689: FLdPr var_88
  loc_B1968C: LateIdCallSt
  loc_B19694: FLdPr var_88
  loc_B19697: LateIdCall
  loc_B1969F: LitNothing
  loc_B196A1: FStAd var_88 
  loc_B196A5: ExitProcHresult
End Function
