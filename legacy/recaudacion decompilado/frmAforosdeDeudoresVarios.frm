VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmAforosdeDeudoresVarios
  Caption = "Aforos de Deudores Varios"
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
  ClientHeight = 10272
  Begin VB.TextBox CompCtctTxt
    ForeColor = &HFF0000&
    Left = 11880
    Top = 5760
    Width = 2055
    Height = 345
    TabIndex = 30
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
  Begin VB.CheckBox RedondeoChk
    Caption = "Redondeo"
    Left = 12840
    Top = 6360
    Width = 1575
    Height = 255
    TabIndex = 45
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
  Begin VB.CommandButton CreaPersonaCmd
    Caption = "Crea Deudores Varios"
    Left = 13080
    Top = 720
    Width = 1935
    Height = 900
    TabIndex = 44
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4200
    Top = 120
    Width = 1695
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
  Begin VB.CommandButton NumeCtaCmd
    Left = 6000
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmAforosdeDeudoresVarios.frx":0000
    Style = 1
    CausesValidation = 0   'False
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 6000
    Top = 9600
    Width = 1935
    Height = 495
    TabIndex = 42
    Picture = "frmAforosdeDeudoresVarios.frx":00FA
    Style = 1
  End
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 9120
    Top = 5760
    Width = 615
    Height = 345
    TabIndex = 27
    MaxLength = 3
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
  Begin VB.TextBox DetalleTxt
    ForeColor = &HFF0000&
    Left = 1140
    Top = 8640
    Width = 7935
    Height = 735
    TabIndex = 36
    MultiLine = -1  'True
    ScrollBars = 2
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
  Begin VB.TextBox TotaBoleTxt
    Left = 10980
    Top = 8520
    Width = 1455
    Height = 330
    TabIndex = 33
    Alignment = 1 'Right Justify
    MaxLength = 10
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
  Begin VB.CheckBox DescuentoChk
    Caption = "Descuento"
    Left = 13260
    Top = 8520
    Width = 1575
    Height = 255
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
  Begin VB.TextBox TotalTxt
    Left = 10980
    Top = 9480
    Width = 1455
    Height = 330
    TabIndex = 41
    Alignment = 1 'Right Justify
    MaxLength = 10
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
  Begin VB.TextBox DescBoleTxt
    ForeColor = &H0&
    Left = 10980
    Top = 9000
    Width = 1455
    Height = 345
    TabIndex = 39
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin VB.TextBox PorcDescTxt
    ForeColor = &H0&
    Left = 13260
    Top = 8880
    Width = 1455
    Height = 345
    TabIndex = 37
    Alignment = 1 'Right Justify
    MaxLength = 12
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
    Left = 6000
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 15
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
    Left = 10320
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 17
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
    Width = 1815
    Height = 360
    TabIndex = 13
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
    Left = 13080
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 19
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
  Begin VB.CommandButton BuscarCmd
    Left = 5760
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 10
    Picture = "frmAforosdeDeudoresVarios.frx":0428
    Style = 1
  End
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 0
    Width = 735
    Height = 615
    TabIndex = 43
    Picture = "frmAforosdeDeudoresVarios.frx":050A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 4200
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 9
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":075C
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1560
    Width = 15015
    Height = 3495
    TabIndex = 11
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":080C
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox FeveCtctMsk
    Left = 2880
    Top = 5760
    Width = 1335
    Height = 345
    TabIndex = 21
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":08F8
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSFlexGridLib.MSFlexGrid ServDevaFlex
    Left = 1200
    Top = 6240
    Width = 11535
    Height = 2295
    TabIndex = 31
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":09A8
  End
  Begin MSMask.MaskEdBox PeriCtctMsk
    Left = 5400
    Top = 5760
    Width = 650
    Height = 345
    TabIndex = 23
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":0A94
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSMask.MaskEdBox BimeCtctMsk
    Left = 6360
    Top = 5760
    Width = 375
    Height = 345
    TabIndex = 24
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":0B24
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSMask.MaskEdBox ExpeCtct1Msk
    Left = 8040
    Top = 5760
    Width = 1005
    Height = 345
    TabIndex = 26
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":0BB0
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSMask.MaskEdBox ExpeCtct2Msk
    Left = 9840
    Top = 5760
    Width = 405
    Height = 345
    TabIndex = 28
    OleObjectBlob = "frmAforosdeDeudoresVarios.frx":0C44
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin VB.Label Label12
    Caption = "Resolución:"
    Left = 10560
    Top = 5760
    Width = 1245
    Height = 300
    TabIndex = 29
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
  Begin VB.Label LocaPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 1200
    Width = 6615
    Height = 315
    TabIndex = 47
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
  Begin VB.Label BarrPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 840
    Width = 6615
    Height = 315
    TabIndex = 46
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
  Begin VB.Line Line1
    X1 = 6120
    Y1 = 6000
    X2 = 6240
    Y2 = 5760
  End
  Begin VB.Label Label13
    Caption = "Periodo:"
    Left = 4440
    Top = 5760
    Width = 870
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 480
    Width = 6495
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 6600
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8520
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
  Begin VB.Label Label10
    Caption = "Expediente:"
    Left = 6750
    Top = 5760
    Width = 1260
    Height = 300
    TabIndex = 25
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
    Caption = "Fecha de Vencimiento:"
    Left = 315
    Top = 5760
    Width = 2445
    Height = 300
    TabIndex = 20
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
    Caption = "Detalle:"
    Left = 240
    Top = 8640
    Width = 810
    Height = 300
    TabIndex = 35
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
    Caption = "Total del Boleto:"
    Left = 9180
    Top = 8520
    Width = 1710
    Height = 300
    TabIndex = 32
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
  Begin VB.Label DescBoleLbl
    Caption = "Descuento:"
    Left = 9660
    Top = 9000
    Width = 1230
    Height = 300
    TabIndex = 38
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
  Begin VB.Label TotalLbl
    Caption = "Total:"
    Left = 10260
    Top = 9480
    Width = 585
    Height = 300
    TabIndex = 40
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
    Caption = "Total Derecho:"
    Left = 3960
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 14
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
    Left = 8280
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 16
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
    TabIndex = 12
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
    Left = 12240
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 18
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
  Begin VB.Label Label4
    Caption = "Fecha:"
    Left = 3360
    Top = 720
    Width = 735
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
End

Attribute VB_Name = "frmAforosdeDeudoresVarios"


Private Sub BimeCtctMsk_UnknownEvent_0 '9BBFE8
  'Data Table: 518504
  loc_9BBFD4: FLdPr Me
  loc_9BBFD7: VCallAd Control_ID_BimeCtctMsk
  loc_9BBFDA: CVarAd
  loc_9BBFDE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBFE3: FFree1Var var_94 = ""
  loc_9BBFE6: ExitProcHresult
End Sub

Private Function BimeCtctMsk_UnknownEvent_8(arg_C) 'A86428
  'Data Table: 518504
  loc_A86398: FLdPr Me
  loc_A8639B: VCallAd Control_ID_BimeCtctMsk
  loc_A8639E: FStAdFunc var_88
  loc_A863A1: FLdPr var_88
  loc_A863A4: LateIdLdVar var_98 DispID_13 -32767
  loc_A863AB: CBoolVar
  loc_A863AD: FFree1Ad var_88
  loc_A863B0: FFree1Var var_98 = ""
  loc_A863B3: BranchF loc_A86426
  loc_A863B6: FLdPr Me
  loc_A863B9: VCallAd Control_ID_BimeCtctMsk
  loc_A863BC: FStAdFunc var_88
  loc_A863BF: FLdPr var_88
  loc_A863C2: LateIdLdVar var_98 DispID_22 0
  loc_A863C9: PopAd
  loc_A863CB: LitI2_Byte 0
  loc_A863CD: LitI2_Byte 0
  loc_A863CF: FLdRfVar var_98
  loc_A863D2: CStrVarTmp
  loc_A863D3: FStStrNoPop var_9C
  loc_A863D6: LitStr "bimestre"
  loc_A863D9: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A863DE: FStStrNoPop var_A0
  loc_A863E1: FLdPr Me
  loc_A863E4: MemStStrCopy
  loc_A863E8: FFreeStr var_9C = ""
  loc_A863EF: FFree1Ad var_88
  loc_A863F2: FFree1Var var_98 = ""
  loc_A863F5: FLdPr Me
  loc_A863F8: MemLdStr global_68
  loc_A863FB: LitStr vbNullString
  loc_A863FE: NeStr
  loc_A86400: BranchF loc_A86426
  loc_A86403: FLdPr Me
  loc_A86406: MemLdStr global_68
  loc_A86409: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8640E: FLdPr Me
  loc_A86411: VCallAd Control_ID_BimeCtctMsk
  loc_A86414: CVarAd
  loc_A86418: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8641D: FFree1Var var_98 = ""
  loc_A86420: LitI2_Byte &HFF
  loc_A86422: IStI2 arg_C
  loc_A86425: ExitProcHresult
  loc_A86426: ExitProcHresult
End Function

Private Sub SalirCmd_Click() '9CC948
  'Data Table: 518504
  loc_9CC930: ILdRf Me
  loc_9CC933: FStAdNoPop
  loc_9CC937: ImpAdLdRf MemVar_D9C5D8
  loc_9CC93A: NewIfNullPr Global
  loc_9CC93D: Global.Unload from_stack_1
  loc_9CC942: FFree1Ad var_88
  loc_9CC945: ExitProcHresult
End Sub

Private Sub ServDevaFlex_UnknownEvent_8 'B31C44
  'Data Table: 518504
  loc_B31968: LitI2_Byte 1
  loc_B3196A: FLdPr Me
  loc_B3196D: MemLdRfVar from_stack_1.global_72
  loc_B31970: FLdPr Me
  loc_B31973: VCallAd Control_ID_ServDevaFlex
  loc_B31976: FStAdFunc var_88
  loc_B31979: FLdPr var_88
  loc_B3197C: LateIdLdVar var_98 DispID_4 0
  loc_B31983: CI4Var
  loc_B31985: LitI4 1
  loc_B3198A: SubI4
  loc_B3198B: CI2I4
  loc_B3198C: FFree1Ad var_88
  loc_B3198F: FFree1Var var_98 = ""
  loc_B31992: ForI2 var_9C
  loc_B31998: FLdPr Me
  loc_B3199B: MemLdI2 global_72
  loc_B3199E: CI4UI1
  loc_B3199F: CVarI4
  loc_B319A3: PopAdLdVar
  loc_B319A4: LitVarI4
  loc_B319AC: PopAdLdVar
  loc_B319AD: FLdPr Me
  loc_B319B0: VCallAd Control_ID_ServDevaFlex
  loc_B319B3: FStAdFunc var_88
  loc_B319B6: FLdPr var_88
  loc_B319B9: LateIdCallLdVar
  loc_B319C3: CStrVarTmp
  loc_B319C4: CVarStr var_EC
  loc_B319C7: ImpAdCallI2 IsNumeric()
  loc_B319CC: FLdPr Me
  loc_B319CF: MemLdI2 global_72
  loc_B319D2: CI4UI1
  loc_B319D3: CVarI4
  loc_B319D7: PopAdLdVar
  loc_B319D8: LitVarI4
  loc_B319E0: PopAdLdVar
  loc_B319E1: FLdPr Me
  loc_B319E4: VCallAd Control_ID_ServDevaFlex
  loc_B319E7: FStAdFunc var_130
  loc_B319EA: FLdPr var_130
  loc_B319ED: LateIdCallLdVar
  loc_B319F7: CStrVarTmp
  loc_B319F8: CVarStr var_150
  loc_B319FB: ImpAdCallI2 IsNumeric()
  loc_B31A00: AndI4
  loc_B31A01: FFreeAd var_88 = ""
  loc_B31A08: FFreeVar var_98 = "": var_EC = "": var_140 = ""
  loc_B31A13: BranchF loc_B31C32
  loc_B31A16: FLdPr Me
  loc_B31A19: MemLdI2 global_72
  loc_B31A1C: CI4UI1
  loc_B31A1D: CVarI4
  loc_B31A21: PopAdLdVar
  loc_B31A22: LitVarI4
  loc_B31A2A: PopAdLdVar
  loc_B31A2B: FLdPr Me
  loc_B31A2E: VCallAd Control_ID_ServDevaFlex
  loc_B31A31: FStAdFunc var_88
  loc_B31A34: FLdPr var_88
  loc_B31A37: LateIdCallLdVar
  loc_B31A41: PopAd
  loc_B31A43: FLdPr Me
  loc_B31A46: MemLdI2 global_72
  loc_B31A49: CI4UI1
  loc_B31A4A: CVarI4
  loc_B31A4E: PopAdLdVar
  loc_B31A4F: LitVarI4
  loc_B31A57: PopAdLdVar
  loc_B31A58: LitI4 1
  loc_B31A5D: LitI4 1
  loc_B31A62: LitVarStr var_10C, "0.00"
  loc_B31A67: FStVarCopyObj var_140
  loc_B31A6A: FLdRfVar var_140
  loc_B31A6D: FLdRfVar var_98
  loc_B31A70: CStrVarTmp
  loc_B31A71: FStStrNoPop var_154
  loc_B31A74: CR8Str
  loc_B31A76: CVarR8
  loc_B31A7A: FLdRfVar var_150
  loc_B31A7D: ImpAdCallFPR4  = Format(, )
  loc_B31A82: FLdRfVar var_150
  loc_B31A85: CStrVarTmp
  loc_B31A86: CVarStr var_184
  loc_B31A89: PopAdLdVar
  loc_B31A8A: FLdPr Me
  loc_B31A8D: VCallAd Control_ID_ServDevaFlex
  loc_B31A90: FStAdFunc var_130
  loc_B31A93: FLdPr var_130
  loc_B31A96: LateIdCallSt
  loc_B31A9E: FFree1Str var_154
  loc_B31AA1: FFreeAd var_88 = ""
  loc_B31AA8: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B31AB5: FLdPr Me
  loc_B31AB8: MemLdI2 global_72
  loc_B31ABB: CI4UI1
  loc_B31ABC: CVarI4
  loc_B31AC0: PopAdLdVar
  loc_B31AC1: LitVarI4
  loc_B31AC9: PopAdLdVar
  loc_B31ACA: FLdPr Me
  loc_B31ACD: VCallAd Control_ID_ServDevaFlex
  loc_B31AD0: FStAdFunc var_88
  loc_B31AD3: FLdPr var_88
  loc_B31AD6: LateIdCallLdVar
  loc_B31AE0: PopAd
  loc_B31AE2: FLdPr Me
  loc_B31AE5: MemLdI2 global_72
  loc_B31AE8: CI4UI1
  loc_B31AE9: CVarI4
  loc_B31AED: PopAdLdVar
  loc_B31AEE: LitVarI4
  loc_B31AF6: PopAdLdVar
  loc_B31AF7: LitI4 1
  loc_B31AFC: LitI4 1
  loc_B31B01: LitVarStr var_10C, "0.00"
  loc_B31B06: FStVarCopyObj var_140
  loc_B31B09: FLdRfVar var_140
  loc_B31B0C: FLdRfVar var_98
  loc_B31B0F: CStrVarTmp
  loc_B31B10: FStStrNoPop var_154
  loc_B31B13: CR8Str
  loc_B31B15: CVarR8
  loc_B31B19: FLdRfVar var_150
  loc_B31B1C: ImpAdCallFPR4  = Format(, )
  loc_B31B21: FLdRfVar var_150
  loc_B31B24: CStrVarTmp
  loc_B31B25: CVarStr var_184
  loc_B31B28: PopAdLdVar
  loc_B31B29: FLdPr Me
  loc_B31B2C: VCallAd Control_ID_ServDevaFlex
  loc_B31B2F: FStAdFunc var_130
  loc_B31B32: FLdPr var_130
  loc_B31B35: LateIdCallSt
  loc_B31B3D: FFree1Str var_154
  loc_B31B40: FFreeAd var_88 = ""
  loc_B31B47: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B31B54: FLdPr Me
  loc_B31B57: MemLdI2 global_72
  loc_B31B5A: CI4UI1
  loc_B31B5B: CVarI4
  loc_B31B5F: PopAdLdVar
  loc_B31B60: LitVarI4
  loc_B31B68: PopAdLdVar
  loc_B31B69: FLdPr Me
  loc_B31B6C: VCallAd Control_ID_ServDevaFlex
  loc_B31B6F: FStAdFunc var_88
  loc_B31B72: FLdPr var_88
  loc_B31B75: LateIdCallLdVar
  loc_B31B7F: PopAd
  loc_B31B81: FLdPr Me
  loc_B31B84: MemLdI2 global_72
  loc_B31B87: CI4UI1
  loc_B31B88: CVarI4
  loc_B31B8C: PopAdLdVar
  loc_B31B8D: LitVarI4
  loc_B31B95: PopAdLdVar
  loc_B31B96: FLdPr Me
  loc_B31B99: VCallAd Control_ID_ServDevaFlex
  loc_B31B9C: FStAdFunc var_130
  loc_B31B9F: FLdPr var_130
  loc_B31BA2: LateIdCallLdVar
  loc_B31BAC: PopAd
  loc_B31BAE: FLdPr Me
  loc_B31BB1: MemLdI2 global_72
  loc_B31BB4: CI4UI1
  loc_B31BB5: CVarI4
  loc_B31BB9: PopAdLdVar
  loc_B31BBA: LitVarI4
  loc_B31BC2: PopAdLdVar
  loc_B31BC3: LitI4 1
  loc_B31BC8: LitI4 1
  loc_B31BCD: LitVarStr var_174, "0.00"
  loc_B31BD2: FStVarCopyObj var_150
  loc_B31BD5: FLdRfVar var_150
  loc_B31BD8: FLdRfVar var_98
  loc_B31BDB: CStrVarTmp
  loc_B31BDC: FStStrNoPop var_154
  loc_B31BDF: CR8Str
  loc_B31BE1: FLdRfVar var_EC
  loc_B31BE4: CStrVarTmp
  loc_B31BE5: FStStrNoPop var_198
  loc_B31BE8: CR8Str
  loc_B31BEA: MulR8
  loc_B31BEB: CVarR8
  loc_B31BEF: FLdRfVar var_184
  loc_B31BF2: ImpAdCallFPR4  = Format(, )
  loc_B31BF7: FLdRfVar var_184
  loc_B31BFA: CStrVarTmp
  loc_B31BFB: CVarStr var_1D8
  loc_B31BFE: PopAdLdVar
  loc_B31BFF: FLdPr Me
  loc_B31C02: VCallAd Control_ID_ServDevaFlex
  loc_B31C05: FStAdFunc var_1EC
  loc_B31C08: FLdPr var_1EC
  loc_B31C0B: LateIdCallSt
  loc_B31C13: FFreeStr var_154 = ""
  loc_B31C1A: FFreeAd var_88 = "": var_130 = ""
  loc_B31C23: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = "": var_184 = ""
  loc_B31C32: FLdPr Me
  loc_B31C35: MemLdRfVar from_stack_1.global_72
  loc_B31C38: NextI2 var_9C, loc_B31998
  loc_B31C3D: Call Proc_330_40_B2D988()
  loc_B31C42: ExitProcHresult
End Sub

Private Sub ServDevaFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'B257E0
  'Data Table: 518504
  loc_B25578: ILdI2 KeyCode
  loc_B2557B: CI4UI1
  loc_B2557C: LitI4 &H2E
  loc_B25581: EqI4
  loc_B25582: BranchF loc_B255E7
  loc_B25585: FLdPr Me
  loc_B25588: VCallAd Control_ID_ServDevaFlex
  loc_B2558B: FStAdFunc var_88
  loc_B2558E: FLdPr var_88
  loc_B25591: LateIdLdVar var_98 DispID_4 0
  loc_B25598: CI4Var
  loc_B2559A: LitI4 1
  loc_B2559F: GtI4
  loc_B255A0: FFree1Ad var_88
  loc_B255A3: FFree1Var var_98 = ""
  loc_B255A6: BranchF loc_B255E4
  loc_B255A9: OnErrorGoto loc_B257B2
  loc_B255AC: FLdPr Me
  loc_B255AF: VCallAd Control_ID_ServDevaFlex
  loc_B255B2: FStAdFunc var_88
  loc_B255B5: FLdPr var_88
  loc_B255B8: LateIdLdVar var_98 DispID_10 0
  loc_B255BF: CI4Var
  loc_B255C1: CVarI4
  loc_B255C5: PopAdLdVar
  loc_B255C6: FLdPr Me
  loc_B255C9: VCallAd Control_ID_ServDevaFlex
  loc_B255CC: FStAdFunc var_BC
  loc_B255CF: FLdPr var_BC
  loc_B255D2: LateIdCall
  loc_B255DA: FFreeAd var_88 = ""
  loc_B255E1: FFree1Var var_98 = ""
  loc_B255E4: Branch loc_B257B2
  loc_B255E7: ILdI2 KeyCode
  loc_B255EA: CI4UI1
  loc_B255EB: LitI4 &H2D
  loc_B255F0: EqI4
  loc_B255F1: BranchF loc_B257B2
  loc_B255F4: LitVarStr var_A8, vbNullString
  loc_B255F9: LitI4 9
  loc_B255FE: FLdRfVar var_98
  loc_B25601: ImpAdCallFPR4  = Chr()
  loc_B25606: FLdRfVar var_98
  loc_B25609: ConcatVar var_CC
  loc_B2560D: LitVarStr var_B8, vbNullString
  loc_B25612: ConcatVar var_DC
  loc_B25616: LitI4 9
  loc_B2561B: FLdRfVar var_EC
  loc_B2561E: ImpAdCallFPR4  = Chr()
  loc_B25623: FLdRfVar var_EC
  loc_B25626: ConcatVar var_FC
  loc_B2562A: LitVarStr var_10C, vbNullString
  loc_B2562F: ConcatVar var_11C
  loc_B25633: LitI4 9
  loc_B25638: FLdRfVar var_12C
  loc_B2563B: ImpAdCallFPR4  = Chr()
  loc_B25640: FLdRfVar var_12C
  loc_B25643: ConcatVar var_13C
  loc_B25647: LitVarStr var_14C, vbNullString
  loc_B2564C: ConcatVar var_15C
  loc_B25650: LitI4 9
  loc_B25655: FLdRfVar var_16C
  loc_B25658: ImpAdCallFPR4  = Chr()
  loc_B2565D: FLdRfVar var_16C
  loc_B25660: ConcatVar var_17C
  loc_B25664: LitVarStr var_18C, vbNullString
  loc_B25669: ConcatVar var_19C
  loc_B2566D: LitI4 9
  loc_B25672: FLdRfVar var_1AC
  loc_B25675: ImpAdCallFPR4  = Chr()
  loc_B2567A: FLdRfVar var_1AC
  loc_B2567D: ConcatVar var_1BC
  loc_B25681: LitVarStr var_1CC, vbNullString
  loc_B25686: ConcatVar var_1DC
  loc_B2568A: LitI4 9
  loc_B2568F: FLdRfVar var_1EC
  loc_B25692: ImpAdCallFPR4  = Chr()
  loc_B25697: FLdRfVar var_1EC
  loc_B2569A: ConcatVar var_1FC
  loc_B2569E: LitVarStr var_20C, vbNullString
  loc_B256A3: ConcatVar var_21C
  loc_B256A7: LitI4 9
  loc_B256AC: FLdRfVar var_22C
  loc_B256AF: ImpAdCallFPR4  = Chr()
  loc_B256B4: FLdRfVar var_22C
  loc_B256B7: ConcatVar var_23C
  loc_B256BB: LitVarStr var_24C, "0"
  loc_B256C0: ConcatVar var_25C
  loc_B256C4: LitI4 9
  loc_B256C9: FLdRfVar var_26C
  loc_B256CC: ImpAdCallFPR4  = Chr()
  loc_B256D1: FLdRfVar var_26C
  loc_B256D4: ConcatVar var_27C
  loc_B256D8: LitVarStr var_28C, "0"
  loc_B256DD: ConcatVar var_29C
  loc_B256E1: CStrVarTmp
  loc_B256E2: FStStrNoPop var_2A0
  loc_B256E5: FLdPr Me
  loc_B256E8: MemStStrCopy
  loc_B256EC: FFree1Str var_2A0
  loc_B256EF: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = ""
  loc_B25722: FLdPr Me
  loc_B25725: MemLdRfVar from_stack_1.global_76
  loc_B25728: CDargRef
  loc_B2572C: FLdPr Me
  loc_B2572F: VCallAd Control_ID_ServDevaFlex
  loc_B25732: FStAdFunc var_88
  loc_B25735: FLdPr var_88
  loc_B25738: LateIdCall
  loc_B25740: FFree1Ad var_88
  loc_B25743: FLdPr Me
  loc_B25746: VCallAd Control_ID_ServDevaFlex
  loc_B25749: FStAdFunc var_88
  loc_B2574C: FLdPr var_88
  loc_B2574F: LateIdLdVar var_98 DispID_10 0
  loc_B25756: CI4Var
  loc_B25758: LitI4 1
  loc_B2575D: AddI4
  loc_B2575E: CVarI4
  loc_B25762: PopAdLdVar
  loc_B25763: FLdPr Me
  loc_B25766: VCallAd Control_ID_ServDevaFlex
  loc_B25769: FStAdFunc var_BC
  loc_B2576C: FLdPr var_BC
  loc_B2576F: LateIdSt
  loc_B25774: FFreeAd var_88 = ""
  loc_B2577B: FFree1Var var_98 = ""
  loc_B2577E: LitVarI4
  loc_B25786: PopAdLdVar
  loc_B25787: FLdPr Me
  loc_B2578A: VCallAd Control_ID_ServDevaFlex
  loc_B2578D: FStAdFunc var_88
  loc_B25790: FLdPr var_88
  loc_B25793: LateIdSt
  loc_B25798: FFree1Ad var_88
  loc_B2579B: FLdPr Me
  loc_B2579E: VCallAd Control_ID_ServDevaFlex
  loc_B257A1: FStAdFunc var_88
  loc_B257A4: FLdPr var_88
  loc_B257A7: LateIdCall
  loc_B257AF: FFree1Ad var_88
  loc_B257B2: FLdRfVar var_2A4
  loc_B257B5: ImpAdCallI2 Err 'rtcErrObj
  loc_B257BA: FStAdFunc var_88
  loc_B257BD: FLdPr var_88
  loc_B257C0:  = Err.Number
  loc_B257C5: ILdRf var_2A4
  loc_B257C8: LitI4 &H753F
  loc_B257CD: EqI4
  loc_B257CE: FFree1Ad var_88
  loc_B257D1: BranchF loc_B257D9
  loc_B257D4: Call Proc_330_39_B3A61C()
  loc_B257D9: Call Proc_330_40_B2D988()
  loc_B257DE: ExitProcHresult
End Sub

Private Sub ServDevaFlex_KeyPress(KeyAscii As Integer) 'C527D8
  'Data Table: 518504
  loc_C5198C: ILdI2 KeyAscii
  loc_C5198F: LitI2_Byte 8
  loc_C51991: EqI2
  loc_C51992: BranchF loc_C51B92
  loc_C51995: FLdPr Me
  loc_C51998: VCallAd Control_ID_ServDevaFlex
  loc_C5199B: FStAdFunc var_88
  loc_C5199E: FLdPr var_88
  loc_C519A1: LateIdLdVar var_98 DispID_11 0
  loc_C519A8: CI4Var
  loc_C519AA: LitI4 0
  loc_C519AF: EqI4
  loc_C519B0: FLdPr Me
  loc_C519B3: VCallAd Control_ID_ServDevaFlex
  loc_C519B6: FStAdFunc var_9C
  loc_C519B9: FLdPr var_9C
  loc_C519BC: LateIdLdVar var_AC DispID_11 0
  loc_C519C3: CI4Var
  loc_C519C5: LitI4 1
  loc_C519CA: EqI4
  loc_C519CB: OrI4
  loc_C519CC: FFreeAd var_88 = ""
  loc_C519D3: FFreeVar var_98 = ""
  loc_C519DA: BranchF loc_C51A79
  loc_C519DD: FLdPr Me
  loc_C519E0: VCallAd Control_ID_ServDevaFlex
  loc_C519E3: FStAdFunc var_88
  loc_C519E6: FLdPr var_88
  loc_C519E9: LateIdLdVar var_98 DispID_0 0
  loc_C519F0: CStrVarTmp
  loc_C519F1: FStStrNoPop var_B0
  loc_C519F4: LitStr vbNullString
  loc_C519F7: NeStr
  loc_C519F9: FFree1Str var_B0
  loc_C519FC: FFree1Ad var_88
  loc_C519FF: FFree1Var var_98 = ""
  loc_C51A02: BranchF loc_C51A79
  loc_C51A05: FLdPr Me
  loc_C51A08: VCallAd Control_ID_ServDevaFlex
  loc_C51A0B: FStAdFunc var_88
  loc_C51A0E: FLdPr var_88
  loc_C51A11: LateIdLdVar var_98 DispID_0 0
  loc_C51A18: PopAd
  loc_C51A1A: FLdPr Me
  loc_C51A1D: VCallAd Control_ID_ServDevaFlex
  loc_C51A20: FStAdFunc var_9C
  loc_C51A23: FLdPr var_9C
  loc_C51A26: LateIdLdVar var_AC DispID_0 0
  loc_C51A2D: CStrVarTmp
  loc_C51A2E: FStStrNoPop var_B0
  loc_C51A31: FnLenStr
  loc_C51A32: LitI4 1
  loc_C51A37: SubI4
  loc_C51A38: FLdRfVar var_98
  loc_C51A3B: CStrVarTmp
  loc_C51A3C: CVarStr var_C0
  loc_C51A3F: FLdRfVar var_D0
  loc_C51A42: ImpAdCallFPR4  = Left(, )
  loc_C51A47: FLdRfVar var_D0
  loc_C51A4A: CStrVarTmp
  loc_C51A4B: CVarStr var_E0
  loc_C51A4E: PopAdLdVar
  loc_C51A4F: FLdPr Me
  loc_C51A52: VCallAd Control_ID_ServDevaFlex
  loc_C51A55: FStAdFunc var_F4
  loc_C51A58: FLdPr var_F4
  loc_C51A5B: LateIdSt
  loc_C51A60: FFree1Str var_B0
  loc_C51A63: FFreeAd var_88 = "": var_9C = ""
  loc_C51A6C: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C51A79: FLdPr Me
  loc_C51A7C: VCallAd Control_ID_ServDevaFlex
  loc_C51A7F: FStAdFunc var_88
  loc_C51A82: FLdPr var_88
  loc_C51A85: LateIdLdVar var_98 DispID_11 0
  loc_C51A8C: CI4Var
  loc_C51A8E: LitI4 3
  loc_C51A93: EqI4
  loc_C51A94: FFree1Ad var_88
  loc_C51A97: FFree1Var var_98 = ""
  loc_C51A9A: BranchF loc_C51B8F
  loc_C51A9D: FLdPr Me
  loc_C51AA0: VCallAd Control_ID_ServDevaFlex
  loc_C51AA3: FStAdFunc var_88
  loc_C51AA6: FLdPr var_88
  loc_C51AA9: LateIdLdVar var_98 DispID_10 0
  loc_C51AB0: CI4Var
  loc_C51AB2: CVarI4
  loc_C51AB6: PopAdLdVar
  loc_C51AB7: LitVarI4
  loc_C51ABF: PopAdLdVar
  loc_C51AC0: FLdPr Me
  loc_C51AC3: VCallAd Control_ID_ServDevaFlex
  loc_C51AC6: FStAdFunc var_9C
  loc_C51AC9: FLdPr var_9C
  loc_C51ACC: LateIdCallLdVar
  loc_C51AD6: CStrVarTmp
  loc_C51AD7: FStStrNoPop var_B0
  loc_C51ADA: LitStr "1"
  loc_C51ADD: EqStr
  loc_C51ADF: FFree1Str var_B0
  loc_C51AE2: FFreeAd var_88 = ""
  loc_C51AE9: FFreeVar var_98 = ""
  loc_C51AF0: BranchF loc_C51B8F
  loc_C51AF3: FLdPr Me
  loc_C51AF6: VCallAd Control_ID_ServDevaFlex
  loc_C51AF9: FStAdFunc var_88
  loc_C51AFC: FLdPr var_88
  loc_C51AFF: LateIdLdVar var_98 DispID_0 0
  loc_C51B06: CStrVarTmp
  loc_C51B07: FStStrNoPop var_B0
  loc_C51B0A: LitStr vbNullString
  loc_C51B0D: NeStr
  loc_C51B0F: FFree1Str var_B0
  loc_C51B12: FFree1Ad var_88
  loc_C51B15: FFree1Var var_98 = ""
  loc_C51B18: BranchF loc_C51B8F
  loc_C51B1B: FLdPr Me
  loc_C51B1E: VCallAd Control_ID_ServDevaFlex
  loc_C51B21: FStAdFunc var_88
  loc_C51B24: FLdPr var_88
  loc_C51B27: LateIdLdVar var_98 DispID_0 0
  loc_C51B2E: PopAd
  loc_C51B30: FLdPr Me
  loc_C51B33: VCallAd Control_ID_ServDevaFlex
  loc_C51B36: FStAdFunc var_9C
  loc_C51B39: FLdPr var_9C
  loc_C51B3C: LateIdLdVar var_AC DispID_0 0
  loc_C51B43: CStrVarTmp
  loc_C51B44: FStStrNoPop var_B0
  loc_C51B47: FnLenStr
  loc_C51B48: LitI4 1
  loc_C51B4D: SubI4
  loc_C51B4E: FLdRfVar var_98
  loc_C51B51: CStrVarTmp
  loc_C51B52: CVarStr var_C0
  loc_C51B55: FLdRfVar var_D0
  loc_C51B58: ImpAdCallFPR4  = Left(, )
  loc_C51B5D: FLdRfVar var_D0
  loc_C51B60: CStrVarTmp
  loc_C51B61: CVarStr var_E0
  loc_C51B64: PopAdLdVar
  loc_C51B65: FLdPr Me
  loc_C51B68: VCallAd Control_ID_ServDevaFlex
  loc_C51B6B: FStAdFunc var_F4
  loc_C51B6E: FLdPr var_F4
  loc_C51B71: LateIdSt
  loc_C51B76: FFree1Str var_B0
  loc_C51B79: FFreeAd var_88 = "": var_9C = ""
  loc_C51B82: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C51B8F: Branch loc_C527D7
  loc_C51B92: ILdI2 KeyAscii
  loc_C51B95: LitI2_Byte &H20
  loc_C51B97: EqI2
  loc_C51B98: BranchF loc_C52522
  loc_C51B9B: FLdPr Me
  loc_C51B9E: VCallAd Control_ID_ServDevaFlex
  loc_C51BA1: FStAdFunc var_88
  loc_C51BA4: FLdPr var_88
  loc_C51BA7: LateIdLdVar var_98 DispID_11 0
  loc_C51BAE: CI4Var
  loc_C51BB0: LitI4 1
  loc_C51BB5: EqI4
  loc_C51BB6: FLdPr Me
  loc_C51BB9: VCallAd Control_ID_ServDevaFlex
  loc_C51BBC: FStAdFunc var_9C
  loc_C51BBF: FLdPr var_9C
  loc_C51BC2: LateIdLdVar var_AC DispID_11 0
  loc_C51BC9: CI4Var
  loc_C51BCB: LitI4 2
  loc_C51BD0: EqI4
  loc_C51BD1: OrI4
  loc_C51BD2: FFreeAd var_88 = ""
  loc_C51BD9: FFreeVar var_98 = ""
  loc_C51BE0: BranchF loc_C5251A
  loc_C51BE3: LitStr "1"
  loc_C51BE6: CUI1Str
  loc_C51BE8: ImpAdLdRf MemVar_D94A24
  loc_C51BEB: NewIfNullPr dlgBuscarServDeva
  loc_C51BEE: Call dlgBuscarServDeva.byCtctSedePut(from_stack_1v)
  loc_C51BF3: ImpAdLdUI1
  loc_C51BF7: ImpAdLdRf MemVar_D94A24
  loc_C51BFA: NewIfNullPr dlgBuscarServDeva
  loc_C51BFD: Call dlgBuscarServDeva.byCodiOficPut(from_stack_1v)
  loc_C51C02: LitVar_Missing var_104
  loc_C51C05: PopAdLdVar
  loc_C51C06: LitVarI4
  loc_C51C0E: PopAdLdVar
  loc_C51C0F: ImpAdLdRf MemVar_D94A24
  loc_C51C12: NewIfNullPr dlgBuscarServDeva
  loc_C51C15: dlgBuscarServDeva.Show from_stack_1, from_stack_2
  loc_C51C1A: FLdRfVar var_128
  loc_C51C1D: FLdRfVar var_9C
  loc_C51C20: FLdRfVar var_88
  loc_C51C23: ImpAdLdRf MemVar_D94A24
  loc_C51C26: NewIfNullPr dlgBuscarServDeva
  loc_C51C29: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51C2E: FLdPr var_88
  loc_C51C31: from_stack_1v = clsbase.RsFrmGet()
  loc_C51C36: FLdPr var_9C
  loc_C51C39:  = Me.RecordCount
  loc_C51C3E: ILdRf var_128
  loc_C51C41: LitI4 0
  loc_C51C46: GtI4
  loc_C51C47: FFreeAd var_88 = ""
  loc_C51C4E: BranchF loc_C5251A
  loc_C51C51: FLdRfVar var_98
  loc_C51C54: FLdRfVar var_12C
  loc_C51C57: LitVarStr var_F0, "PeriInfo"
  loc_C51C5C: PopAdLdVar
  loc_C51C5D: FLdRfVar var_F4
  loc_C51C60: FLdRfVar var_9C
  loc_C51C63: FLdRfVar var_88
  loc_C51C66: ImpAdLdRf MemVar_D94A24
  loc_C51C69: NewIfNullPr dlgBuscarServDeva
  loc_C51C6C: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51C71: FLdPr var_88
  loc_C51C74: from_stack_1v = clsbase.RsFrmGet()
  loc_C51C79: FLdPr var_9C
  loc_C51C7C:  = Me.Fields
  loc_C51C81: FLdPr var_F4
  loc_C51C84: from_stack_2 = Me.Item(from_stack_1)
  loc_C51C89: FLdPr var_12C
  loc_C51C8C:  = Me.Value
  loc_C51C91: FLdRfVar var_98
  loc_C51C94: FnCIntVar
  loc_C51C96: ImpAdLdI2 MemVar_D93034
  loc_C51C99: NeI2
  loc_C51C9A: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C51CA5: FFree1Var var_98 = ""
  loc_C51CA8: BranchF loc_C51CCB
  loc_C51CAB: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C51CAE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C51CB3: FLdPr Me
  loc_C51CB6: VCallAd Control_ID_ServDevaFlex
  loc_C51CB9: FStAdFunc var_88
  loc_C51CBC: FLdPr var_88
  loc_C51CBF: LateIdCall
  loc_C51CC7: FFree1Ad var_88
  loc_C51CCA: ExitProcHresult
  loc_C51CCB: FLdRfVar var_98
  loc_C51CCE: FLdRfVar var_12C
  loc_C51CD1: LitVarStr var_F0, "PeriInfo"
  loc_C51CD6: PopAdLdVar
  loc_C51CD7: FLdRfVar var_F4
  loc_C51CDA: FLdRfVar var_9C
  loc_C51CDD: FLdRfVar var_88
  loc_C51CE0: ImpAdLdRf MemVar_D94A24
  loc_C51CE3: NewIfNullPr dlgBuscarServDeva
  loc_C51CE6: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51CEB: FLdPr var_88
  loc_C51CEE: from_stack_1v = clsbase.RsFrmGet()
  loc_C51CF3: FLdPr var_9C
  loc_C51CF6:  = Me.Fields
  loc_C51CFB: FLdPr var_F4
  loc_C51CFE: from_stack_2 = Me.Item(from_stack_1)
  loc_C51D03: FLdPr var_12C
  loc_C51D06:  = Me.Value
  loc_C51D0B: FLdRfVar var_AC
  loc_C51D0E: FLdRfVar var_13C
  loc_C51D11: LitVarStr var_104, "CodiConc"
  loc_C51D16: PopAdLdVar
  loc_C51D17: FLdRfVar var_138
  loc_C51D1A: FLdRfVar var_134
  loc_C51D1D: FLdRfVar var_130
  loc_C51D20: ImpAdLdRf MemVar_D94A24
  loc_C51D23: NewIfNullPr dlgBuscarServDeva
  loc_C51D26: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51D2B: FLdPr var_130
  loc_C51D2E: from_stack_1v = clsbase.RsFrmGet()
  loc_C51D33: FLdPr var_134
  loc_C51D36:  = Me.Fields
  loc_C51D3B: FLdPr var_138
  loc_C51D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_C51D43: FLdPr var_13C
  loc_C51D46:  = Me.Value
  loc_C51D4B: FLdRfVar var_AC
  loc_C51D4E: CStrVarTmp
  loc_C51D4F: FStStrNoPop var_B0
  loc_C51D52: FLdRfVar var_98
  loc_C51D55: CI2Var
  loc_C51D56: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C51D5B: FStStrNoPop var_140
  loc_C51D5E: LitStr vbNullString
  loc_C51D61: EqStr
  loc_C51D63: FFreeStr var_B0 = ""
  loc_C51D6A: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_134 = "": var_138 = "": var_12C = ""
  loc_C51D7D: FFreeVar var_98 = ""
  loc_C51D84: BranchF loc_C51DFD
  loc_C51D87: LitVarStr var_104, "El recurso: "
  loc_C51D8C: FLdRfVar var_98
  loc_C51D8F: FLdRfVar var_12C
  loc_C51D92: LitVarStr var_F0, "CodiConc"
  loc_C51D97: PopAdLdVar
  loc_C51D98: FLdRfVar var_F4
  loc_C51D9B: FLdRfVar var_9C
  loc_C51D9E: FLdRfVar var_88
  loc_C51DA1: ImpAdLdRf MemVar_D94A24
  loc_C51DA4: NewIfNullPr dlgBuscarServDeva
  loc_C51DA7: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51DAC: FLdPr var_88
  loc_C51DAF: from_stack_1v = clsbase.RsFrmGet()
  loc_C51DB4: FLdPr var_9C
  loc_C51DB7:  = Me.Fields
  loc_C51DBC: FLdPr var_F4
  loc_C51DBF: from_stack_2 = Me.Item(from_stack_1)
  loc_C51DC4: FLdPr var_12C
  loc_C51DC7:  = Me.Value
  loc_C51DCC: FLdRfVar var_98
  loc_C51DCF: ConcatVar var_AC
  loc_C51DD3: LitVarStr var_114, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C51DD8: ConcatVar var_C0
  loc_C51DDC: CStrVarVal var_B0
  loc_C51DE0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C51DE5: FFree1Str var_B0
  loc_C51DE8: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C51DF3: FFreeVar var_98 = "": var_AC = ""
  loc_C51DFC: ExitProcHresult
  loc_C51DFD: FLdRfVar var_98
  loc_C51E00: FLdRfVar var_12C
  loc_C51E03: LitVarStr var_F0, "TiafConc"
  loc_C51E08: PopAdLdVar
  loc_C51E09: FLdRfVar var_F4
  loc_C51E0C: FLdRfVar var_9C
  loc_C51E0F: FLdRfVar var_88
  loc_C51E12: ImpAdLdRf MemVar_D94A24
  loc_C51E15: NewIfNullPr dlgBuscarServDeva
  loc_C51E18: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51E1D: FLdPr var_88
  loc_C51E20: from_stack_1v = clsbase.RsFrmGet()
  loc_C51E25: FLdPr var_9C
  loc_C51E28:  = Me.Fields
  loc_C51E2D: FLdPr var_F4
  loc_C51E30: from_stack_2 = Me.Item(from_stack_1)
  loc_C51E35: FLdPr var_12C
  loc_C51E38:  = Me.Value
  loc_C51E3D: FLdRfVar var_98
  loc_C51E40: LitVarI2 var_104, 0
  loc_C51E45: HardType
  loc_C51E46: EqVarBool
  loc_C51E48: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C51E53: FFree1Var var_98 = ""
  loc_C51E56: BranchF loc_C51E62
  loc_C51E59: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_C51E5C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C51E61: ExitProcHresult
  loc_C51E62: FLdPr Me
  loc_C51E65: VCallAd Control_ID_ServDevaFlex
  loc_C51E68: FStAdFunc var_130
  loc_C51E6B: FLdPr var_130
  loc_C51E6E: LateIdLdVar var_98 DispID_10 0
  loc_C51E75: CI4Var
  loc_C51E77: CVarI4
  loc_C51E7B: PopAdLdVar
  loc_C51E7C: LitVarI4
  loc_C51E84: PopAdLdVar
  loc_C51E85: FLdRfVar var_AC
  loc_C51E88: FLdRfVar var_12C
  loc_C51E8B: LitVarStr var_F0, "CodiSede"
  loc_C51E90: PopAdLdVar
  loc_C51E91: FLdRfVar var_F4
  loc_C51E94: FLdRfVar var_9C
  loc_C51E97: FLdRfVar var_88
  loc_C51E9A: ImpAdLdRf MemVar_D94A24
  loc_C51E9D: NewIfNullPr dlgBuscarServDeva
  loc_C51EA0: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51EA5: FLdPr var_88
  loc_C51EA8: from_stack_1v = clsbase.RsFrmGet()
  loc_C51EAD: FLdPr var_9C
  loc_C51EB0:  = Me.Fields
  loc_C51EB5: FLdPr var_F4
  loc_C51EB8: from_stack_2 = Me.Item(from_stack_1)
  loc_C51EBD: FLdPr var_12C
  loc_C51EC0:  = Me.Value
  loc_C51EC5: FLdRfVar var_AC
  loc_C51EC8: CStrVarTmp
  loc_C51EC9: CVarStr var_C0
  loc_C51ECC: PopAdLdVar
  loc_C51ECD: FLdPr Me
  loc_C51ED0: VCallAd Control_ID_ServDevaFlex
  loc_C51ED3: FStAdFunc var_134
  loc_C51ED6: FLdPr var_134
  loc_C51ED9: LateIdCallSt
  loc_C51EE1: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C51EF0: FFreeVar var_98 = "": var_AC = ""
  loc_C51EF9: FLdPr Me
  loc_C51EFC: VCallAd Control_ID_ServDevaFlex
  loc_C51EFF: FStAdFunc var_130
  loc_C51F02: FLdPr var_130
  loc_C51F05: LateIdLdVar var_98 DispID_10 0
  loc_C51F0C: CI4Var
  loc_C51F0E: CVarI4
  loc_C51F12: PopAdLdVar
  loc_C51F13: LitVarI4
  loc_C51F1B: PopAdLdVar
  loc_C51F1C: FLdRfVar var_AC
  loc_C51F1F: FLdRfVar var_12C
  loc_C51F22: LitVarStr var_F0, "DetaSede"
  loc_C51F27: PopAdLdVar
  loc_C51F28: FLdRfVar var_F4
  loc_C51F2B: FLdRfVar var_9C
  loc_C51F2E: FLdRfVar var_88
  loc_C51F31: ImpAdLdRf MemVar_D94A24
  loc_C51F34: NewIfNullPr dlgBuscarServDeva
  loc_C51F37: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51F3C: FLdPr var_88
  loc_C51F3F: from_stack_1v = clsbase.RsFrmGet()
  loc_C51F44: FLdPr var_9C
  loc_C51F47:  = Me.Fields
  loc_C51F4C: FLdPr var_F4
  loc_C51F4F: from_stack_2 = Me.Item(from_stack_1)
  loc_C51F54: FLdPr var_12C
  loc_C51F57:  = Me.Value
  loc_C51F5C: FLdRfVar var_AC
  loc_C51F5F: CStrVarTmp
  loc_C51F60: CVarStr var_C0
  loc_C51F63: PopAdLdVar
  loc_C51F64: FLdPr Me
  loc_C51F67: VCallAd Control_ID_ServDevaFlex
  loc_C51F6A: FStAdFunc var_134
  loc_C51F6D: FLdPr var_134
  loc_C51F70: LateIdCallSt
  loc_C51F78: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C51F87: FFreeVar var_98 = "": var_AC = ""
  loc_C51F90: FLdRfVar var_12C
  loc_C51F93: LitVarStr var_F0, "ImpoSede"
  loc_C51F98: PopAdLdVar
  loc_C51F99: FLdRfVar var_F4
  loc_C51F9C: FLdRfVar var_9C
  loc_C51F9F: FLdRfVar var_88
  loc_C51FA2: ImpAdLdRf MemVar_D94A24
  loc_C51FA5: NewIfNullPr dlgBuscarServDeva
  loc_C51FA8: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C51FAD: FLdPr var_88
  loc_C51FB0: from_stack_1v = clsbase.RsFrmGet()
  loc_C51FB5: FLdPr var_9C
  loc_C51FB8:  = Me.Fields
  loc_C51FBD: FLdPr var_F4
  loc_C51FC0: from_stack_2 = Me.Item(from_stack_1)
  loc_C51FC5: FLdPr Me
  loc_C51FC8: VCallAd Control_ID_ServDevaFlex
  loc_C51FCB: FStAdFunc var_130
  loc_C51FCE: FLdPr var_130
  loc_C51FD1: LateIdLdVar var_D0 DispID_10 0
  loc_C51FD8: CI4Var
  loc_C51FDA: CVarI4
  loc_C51FDE: PopAdLdVar
  loc_C51FDF: LitVarI4
  loc_C51FE7: PopAdLdVar
  loc_C51FE8: LitI4 1
  loc_C51FED: LitI4 1
  loc_C51FF2: LitVarStr var_104, "0.00"
  loc_C51FF7: FStVarCopyObj var_AC
  loc_C51FFA: FLdRfVar var_AC
  loc_C51FFD: FLdZeroAd var_12C
  loc_C52000: CVarAd
  loc_C52004: FLdRfVar var_C0
  loc_C52007: ImpAdCallFPR4  = Format(, )
  loc_C5200C: FLdRfVar var_C0
  loc_C5200F: CStrVarTmp
  loc_C52010: CVarStr var_E0
  loc_C52013: PopAdLdVar
  loc_C52014: FLdPr Me
  loc_C52017: VCallAd Control_ID_ServDevaFlex
  loc_C5201A: FStAdFunc var_134
  loc_C5201D: FLdPr var_134
  loc_C52020: LateIdCallSt
  loc_C52028: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = ""
  loc_C52035: FFreeVar var_98 = "": var_AC = "": var_D0 = "": var_C0 = ""
  loc_C52042: FLdPr Me
  loc_C52045: VCallAd Control_ID_ServDevaFlex
  loc_C52048: FStAdFunc var_88
  loc_C5204B: FLdPr var_88
  loc_C5204E: LateIdLdVar var_98 DispID_10 0
  loc_C52055: CI4Var
  loc_C52057: CVarI4
  loc_C5205B: PopAdLdVar
  loc_C5205C: LitVarI4
  loc_C52064: PopAdLdVar
  loc_C52065: FLdPr Me
  loc_C52068: VCallAd Control_ID_ServDevaFlex
  loc_C5206B: FStAdFunc var_9C
  loc_C5206E: FLdPr var_9C
  loc_C52071: LateIdCallLdVar
  loc_C5207B: CStrVarTmp
  loc_C5207C: CVarStr var_C0
  loc_C5207F: ImpAdCallI2 IsNumeric()
  loc_C52084: FLdPr Me
  loc_C52087: VCallAd Control_ID_ServDevaFlex
  loc_C5208A: FStAdFunc var_F4
  loc_C5208D: FLdPr var_F4
  loc_C52090: LateIdLdVar var_D0 DispID_10 0
  loc_C52097: CI4Var
  loc_C52099: CVarI4
  loc_C5209D: PopAdLdVar
  loc_C5209E: LitVarI4
  loc_C520A6: PopAdLdVar
  loc_C520A7: FLdPr Me
  loc_C520AA: VCallAd Control_ID_ServDevaFlex
  loc_C520AD: FStAdFunc var_12C
  loc_C520B0: FLdPr var_12C
  loc_C520B3: LateIdCallLdVar
  loc_C520BD: CStrVarTmp
  loc_C520BE: CVarStr var_190
  loc_C520C1: ImpAdCallI2 IsNumeric()
  loc_C520C6: AndI4
  loc_C520C7: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C520D2: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = ""
  loc_C520E1: BranchF loc_C521FB
  loc_C520E4: FLdPr Me
  loc_C520E7: VCallAd Control_ID_ServDevaFlex
  loc_C520EA: FStAdFunc var_88
  loc_C520ED: FLdPr var_88
  loc_C520F0: LateIdLdVar var_98 DispID_10 0
  loc_C520F7: CI4Var
  loc_C520F9: CVarI4
  loc_C520FD: PopAdLdVar
  loc_C520FE: LitVarI4
  loc_C52106: PopAdLdVar
  loc_C52107: FLdPr Me
  loc_C5210A: VCallAd Control_ID_ServDevaFlex
  loc_C5210D: FStAdFunc var_9C
  loc_C52110: FLdPr var_9C
  loc_C52113: LateIdCallLdVar
  loc_C5211D: PopAd
  loc_C5211F: FLdPr Me
  loc_C52122: VCallAd Control_ID_ServDevaFlex
  loc_C52125: FStAdFunc var_F4
  loc_C52128: FLdPr var_F4
  loc_C5212B: LateIdLdVar var_C0 DispID_10 0
  loc_C52132: CI4Var
  loc_C52134: CVarI4
  loc_C52138: PopAdLdVar
  loc_C52139: LitVarI4
  loc_C52141: PopAdLdVar
  loc_C52142: FLdPr Me
  loc_C52145: VCallAd Control_ID_ServDevaFlex
  loc_C52148: FStAdFunc var_12C
  loc_C5214B: FLdPr var_12C
  loc_C5214E: LateIdCallLdVar
  loc_C52158: PopAd
  loc_C5215A: FLdPr Me
  loc_C5215D: VCallAd Control_ID_ServDevaFlex
  loc_C52160: FStAdFunc var_130
  loc_C52163: FLdPr var_130
  loc_C52166: LateIdLdVar var_1D0 DispID_10 0
  loc_C5216D: CI4Var
  loc_C5216F: CVarI4
  loc_C52173: PopAdLdVar
  loc_C52174: LitVarI4
  loc_C5217C: PopAdLdVar
  loc_C5217D: LitI4 1
  loc_C52182: LitI4 1
  loc_C52187: LitVarStr var_1B0, "0.00"
  loc_C5218C: FStVarCopyObj var_190
  loc_C5218F: FLdRfVar var_190
  loc_C52192: FLdRfVar var_AC
  loc_C52195: CStrVarTmp
  loc_C52196: FStStrNoPop var_B0
  loc_C52199: CR8Str
  loc_C5219B: FLdRfVar var_D0
  loc_C5219E: CStrVarTmp
  loc_C5219F: FStStrNoPop var_140
  loc_C521A2: CR8Str
  loc_C521A4: MulR8
  loc_C521A5: CVarR8
  loc_C521A9: FLdRfVar var_1C0
  loc_C521AC: ImpAdCallFPR4  = Format(, )
  loc_C521B1: FLdRfVar var_1C0
  loc_C521B4: CStrVarTmp
  loc_C521B5: CVarStr var_220
  loc_C521B8: PopAdLdVar
  loc_C521B9: FLdPr Me
  loc_C521BC: VCallAd Control_ID_ServDevaFlex
  loc_C521BF: FStAdFunc var_134
  loc_C521C2: FLdPr var_134
  loc_C521C5: LateIdCallSt
  loc_C521CD: FFreeStr var_B0 = ""
  loc_C521D4: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_12C = "": var_130 = ""
  loc_C521E3: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = "": var_190 = "": var_1D0 = "": var_1C0 = ""
  loc_C521F8: Branch loc_C522BE
  loc_C521FB: FLdPr Me
  loc_C521FE: VCallAd Control_ID_ServDevaFlex
  loc_C52201: FStAdFunc var_88
  loc_C52204: FLdPr var_88
  loc_C52207: LateIdLdVar var_98 DispID_10 0
  loc_C5220E: CI4Var
  loc_C52210: CVarI4
  loc_C52214: PopAdLdVar
  loc_C52215: LitVarI4
  loc_C5221D: PopAdLdVar
  loc_C5221E: FLdPr Me
  loc_C52221: VCallAd Control_ID_ServDevaFlex
  loc_C52224: FStAdFunc var_9C
  loc_C52227: FLdPr var_9C
  loc_C5222A: LateIdCallLdVar
  loc_C52234: PopAd
  loc_C52236: FLdPr Me
  loc_C52239: VCallAd Control_ID_ServDevaFlex
  loc_C5223C: FStAdFunc var_F4
  loc_C5223F: FLdPr var_F4
  loc_C52242: LateIdLdVar var_190 DispID_10 0
  loc_C52249: CI4Var
  loc_C5224B: CVarI4
  loc_C5224F: PopAdLdVar
  loc_C52250: LitVarI4
  loc_C52258: PopAdLdVar
  loc_C52259: LitI4 1
  loc_C5225E: LitI4 1
  loc_C52263: LitVarStr var_160, "0.00"
  loc_C52268: FStVarCopyObj var_D0
  loc_C5226B: FLdRfVar var_D0
  loc_C5226E: FLdRfVar var_AC
  loc_C52271: CStrVarTmp
  loc_C52272: FStStrNoPop var_B0
  loc_C52275: CR8Str
  loc_C52277: CVarR8
  loc_C5227B: FLdRfVar var_E0
  loc_C5227E: ImpAdCallFPR4  = Format(, )
  loc_C52283: FLdRfVar var_E0
  loc_C52286: CStrVarTmp
  loc_C52287: CVarStr var_1C0
  loc_C5228A: PopAdLdVar
  loc_C5228B: FLdPr Me
  loc_C5228E: VCallAd Control_ID_ServDevaFlex
  loc_C52291: FStAdFunc var_12C
  loc_C52294: FLdPr var_12C
  loc_C52297: LateIdCallSt
  loc_C5229F: FFree1Str var_B0
  loc_C522A2: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C522AD: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_190 = "": var_E0 = ""
  loc_C522BE: FLdPr Me
  loc_C522C1: VCallAd Control_ID_ServDevaFlex
  loc_C522C4: FStAdFunc var_130
  loc_C522C7: FLdPr var_130
  loc_C522CA: LateIdLdVar var_98 DispID_10 0
  loc_C522D1: CI4Var
  loc_C522D3: CVarI4
  loc_C522D7: PopAdLdVar
  loc_C522D8: LitVarI4
  loc_C522E0: PopAdLdVar
  loc_C522E1: FLdRfVar var_AC
  loc_C522E4: FLdRfVar var_12C
  loc_C522E7: LitVarStr var_F0, "PeriInfo"
  loc_C522EC: PopAdLdVar
  loc_C522ED: FLdRfVar var_F4
  loc_C522F0: FLdRfVar var_9C
  loc_C522F3: FLdRfVar var_88
  loc_C522F6: ImpAdLdRf MemVar_D94A24
  loc_C522F9: NewIfNullPr dlgBuscarServDeva
  loc_C522FC: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52301: FLdPr var_88
  loc_C52304: from_stack_1v = clsbase.RsFrmGet()
  loc_C52309: FLdPr var_9C
  loc_C5230C:  = Me.Fields
  loc_C52311: FLdPr var_F4
  loc_C52314: from_stack_2 = Me.Item(from_stack_1)
  loc_C52319: FLdPr var_12C
  loc_C5231C:  = Me.Value
  loc_C52321: FLdRfVar var_AC
  loc_C52324: CStrVarTmp
  loc_C52325: CVarStr var_C0
  loc_C52328: PopAdLdVar
  loc_C52329: FLdPr Me
  loc_C5232C: VCallAd Control_ID_ServDevaFlex
  loc_C5232F: FStAdFunc var_134
  loc_C52332: FLdPr var_134
  loc_C52335: LateIdCallSt
  loc_C5233D: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C5234C: FFreeVar var_98 = "": var_AC = ""
  loc_C52355: FLdPr Me
  loc_C52358: VCallAd Control_ID_ServDevaFlex
  loc_C5235B: FStAdFunc var_130
  loc_C5235E: FLdPr var_130
  loc_C52361: LateIdLdVar var_98 DispID_10 0
  loc_C52368: CI4Var
  loc_C5236A: CVarI4
  loc_C5236E: PopAdLdVar
  loc_C5236F: LitVarI4
  loc_C52377: PopAdLdVar
  loc_C52378: FLdRfVar var_AC
  loc_C5237B: FLdRfVar var_12C
  loc_C5237E: LitVarStr var_F0, "CodiConc"
  loc_C52383: PopAdLdVar
  loc_C52384: FLdRfVar var_F4
  loc_C52387: FLdRfVar var_9C
  loc_C5238A: FLdRfVar var_88
  loc_C5238D: ImpAdLdRf MemVar_D94A24
  loc_C52390: NewIfNullPr dlgBuscarServDeva
  loc_C52393: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52398: FLdPr var_88
  loc_C5239B: from_stack_1v = clsbase.RsFrmGet()
  loc_C523A0: FLdPr var_9C
  loc_C523A3:  = Me.Fields
  loc_C523A8: FLdPr var_F4
  loc_C523AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C523B0: FLdPr var_12C
  loc_C523B3:  = Me.Value
  loc_C523B8: FLdRfVar var_AC
  loc_C523BB: CStrVarTmp
  loc_C523BC: CVarStr var_C0
  loc_C523BF: PopAdLdVar
  loc_C523C0: FLdPr Me
  loc_C523C3: VCallAd Control_ID_ServDevaFlex
  loc_C523C6: FStAdFunc var_134
  loc_C523C9: FLdPr var_134
  loc_C523CC: LateIdCallSt
  loc_C523D4: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C523E3: FFreeVar var_98 = "": var_AC = ""
  loc_C523EC: FLdPr Me
  loc_C523EF: VCallAd Control_ID_ServDevaFlex
  loc_C523F2: FStAdFunc var_130
  loc_C523F5: FLdPr var_130
  loc_C523F8: LateIdLdVar var_98 DispID_10 0
  loc_C523FF: CI4Var
  loc_C52401: CVarI4
  loc_C52405: PopAdLdVar
  loc_C52406: LitVarI4
  loc_C5240E: PopAdLdVar
  loc_C5240F: FLdRfVar var_AC
  loc_C52412: FLdRfVar var_12C
  loc_C52415: LitVarStr var_F0, "VariSede"
  loc_C5241A: PopAdLdVar
  loc_C5241B: FLdRfVar var_F4
  loc_C5241E: FLdRfVar var_9C
  loc_C52421: FLdRfVar var_88
  loc_C52424: ImpAdLdRf MemVar_D94A24
  loc_C52427: NewIfNullPr dlgBuscarServDeva
  loc_C5242A: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C5242F: FLdPr var_88
  loc_C52432: from_stack_1v = clsbase.RsFrmGet()
  loc_C52437: FLdPr var_9C
  loc_C5243A:  = Me.Fields
  loc_C5243F: FLdPr var_F4
  loc_C52442: from_stack_2 = Me.Item(from_stack_1)
  loc_C52447: FLdPr var_12C
  loc_C5244A:  = Me.Value
  loc_C5244F: FLdRfVar var_AC
  loc_C52452: CStrVarTmp
  loc_C52453: CVarStr var_C0
  loc_C52456: PopAdLdVar
  loc_C52457: FLdPr Me
  loc_C5245A: VCallAd Control_ID_ServDevaFlex
  loc_C5245D: FStAdFunc var_134
  loc_C52460: FLdPr var_134
  loc_C52463: LateIdCallSt
  loc_C5246B: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C5247A: FFreeVar var_98 = "": var_AC = ""
  loc_C52483: FLdPr Me
  loc_C52486: VCallAd Control_ID_ServDevaFlex
  loc_C52489: FStAdFunc var_130
  loc_C5248C: FLdPr var_130
  loc_C5248F: LateIdLdVar var_98 DispID_10 0
  loc_C52496: CI4Var
  loc_C52498: CVarI4
  loc_C5249C: PopAdLdVar
  loc_C5249D: LitVarI4
  loc_C524A5: PopAdLdVar
  loc_C524A6: FLdRfVar var_AC
  loc_C524A9: FLdRfVar var_12C
  loc_C524AC: LitVarStr var_F0, "TiafConc"
  loc_C524B1: PopAdLdVar
  loc_C524B2: FLdRfVar var_F4
  loc_C524B5: FLdRfVar var_9C
  loc_C524B8: FLdRfVar var_88
  loc_C524BB: ImpAdLdRf MemVar_D94A24
  loc_C524BE: NewIfNullPr dlgBuscarServDeva
  loc_C524C1: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C524C6: FLdPr var_88
  loc_C524C9: from_stack_1v = clsbase.RsFrmGet()
  loc_C524CE: FLdPr var_9C
  loc_C524D1:  = Me.Fields
  loc_C524D6: FLdPr var_F4
  loc_C524D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C524DE: FLdPr var_12C
  loc_C524E1:  = Me.Value
  loc_C524E6: FLdRfVar var_AC
  loc_C524E9: CStrVarTmp
  loc_C524EA: CVarStr var_C0
  loc_C524ED: PopAdLdVar
  loc_C524EE: FLdPr Me
  loc_C524F1: VCallAd Control_ID_ServDevaFlex
  loc_C524F4: FStAdFunc var_134
  loc_C524F7: FLdPr var_134
  loc_C524FA: LateIdCallSt
  loc_C52502: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C52511: FFreeVar var_98 = "": var_AC = ""
  loc_C5251A: Call Proc_330_40_B2D988()
  loc_C5251F: Branch loc_C527D7
  loc_C52522: FLdPr Me
  loc_C52525: VCallAd Control_ID_ServDevaFlex
  loc_C52528: FStAdFunc var_88
  loc_C5252B: FLdPr var_88
  loc_C5252E: LateIdLdVar var_98 DispID_11 0
  loc_C52535: CI4Var
  loc_C52537: LitI4 0
  loc_C5253C: EqI4
  loc_C5253D: FFree1Ad var_88
  loc_C52540: FFree1Var var_98 = ""
  loc_C52543: BranchF loc_C525F5
  loc_C52546: FLdPr Me
  loc_C52549: VCallAd Control_ID_ServDevaFlex
  loc_C5254C: FStAdFunc var_88
  loc_C5254F: FLdPr var_88
  loc_C52552: LateIdLdVar var_98 DispID_0 0
  loc_C52559: CStrVarTmp
  loc_C5255A: FStStrNoPop var_B0
  loc_C5255D: FnLenStr
  loc_C5255E: LitI4 4
  loc_C52563: LeI4
  loc_C52564: FFree1Str var_B0
  loc_C52567: FFree1Ad var_88
  loc_C5256A: FFree1Var var_98 = ""
  loc_C5256D: BranchF loc_C525F5
  loc_C52570: LitStr "1234567890,."
  loc_C52573: FStStrCopy var_B0
  loc_C52576: FLdRfVar var_B0
  loc_C52579: ILdRf KeyAscii
  loc_C5257C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C52581: IStI2 KeyAscii
  loc_C52584: FFree1Str var_B0
  loc_C52587: ILdI2 KeyAscii
  loc_C5258A: LitStr "."
  loc_C5258D: ImpAdCallI2 Asc()
  loc_C52592: EqI2
  loc_C52593: BranchF loc_C525A1
  loc_C52596: LitStr ","
  loc_C52599: ImpAdCallI2 Asc()
  loc_C5259E: IStI2 KeyAscii
  loc_C525A1: FLdPr Me
  loc_C525A4: VCallAd Control_ID_ServDevaFlex
  loc_C525A7: FStAdFunc var_88
  loc_C525AA: FLdPr var_88
  loc_C525AD: LateIdLdVar var_98 DispID_0 0
  loc_C525B4: CStrVarTmp
  loc_C525B5: CVarStr var_C0
  loc_C525B8: ILdI2 KeyAscii
  loc_C525BB: CI4UI1
  loc_C525BC: FLdRfVar var_AC
  loc_C525BF: ImpAdCallFPR4  = Chr()
  loc_C525C4: FLdRfVar var_AC
  loc_C525C7: AddVar var_D0
  loc_C525CB: CStrVarTmp
  loc_C525CC: CVarStr var_E0
  loc_C525CF: PopAdLdVar
  loc_C525D0: FLdPr Me
  loc_C525D3: VCallAd Control_ID_ServDevaFlex
  loc_C525D6: FStAdFunc var_9C
  loc_C525D9: FLdPr var_9C
  loc_C525DC: LateIdSt
  loc_C525E1: FFreeAd var_88 = ""
  loc_C525E8: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C525F5: FLdPr Me
  loc_C525F8: VCallAd Control_ID_ServDevaFlex
  loc_C525FB: FStAdFunc var_88
  loc_C525FE: FLdPr var_88
  loc_C52601: LateIdLdVar var_98 DispID_11 0
  loc_C52608: CI4Var
  loc_C5260A: LitI4 1
  loc_C5260F: EqI4
  loc_C52610: FFree1Ad var_88
  loc_C52613: FFree1Var var_98 = ""
  loc_C52616: BranchF loc_C526AE
  loc_C52619: FLdPr Me
  loc_C5261C: VCallAd Control_ID_ServDevaFlex
  loc_C5261F: FStAdFunc var_88
  loc_C52622: FLdPr var_88
  loc_C52625: LateIdLdVar var_98 DispID_0 0
  loc_C5262C: CStrVarTmp
  loc_C5262D: FStStrNoPop var_B0
  loc_C52630: FnLenStr
  loc_C52631: LitI4 4
  loc_C52636: LeI4
  loc_C52637: FFree1Str var_B0
  loc_C5263A: FFree1Ad var_88
  loc_C5263D: FFree1Var var_98 = ""
  loc_C52640: BranchF loc_C526AE
  loc_C52643: LitStr "1234567890"
  loc_C52646: FStStrCopy var_B0
  loc_C52649: FLdRfVar var_B0
  loc_C5264C: ILdRf KeyAscii
  loc_C5264F: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C52654: IStI2 KeyAscii
  loc_C52657: FFree1Str var_B0
  loc_C5265A: FLdPr Me
  loc_C5265D: VCallAd Control_ID_ServDevaFlex
  loc_C52660: FStAdFunc var_88
  loc_C52663: FLdPr var_88
  loc_C52666: LateIdLdVar var_98 DispID_0 0
  loc_C5266D: CStrVarTmp
  loc_C5266E: CVarStr var_C0
  loc_C52671: ILdI2 KeyAscii
  loc_C52674: CI4UI1
  loc_C52675: FLdRfVar var_AC
  loc_C52678: ImpAdCallFPR4  = Chr()
  loc_C5267D: FLdRfVar var_AC
  loc_C52680: AddVar var_D0
  loc_C52684: CStrVarTmp
  loc_C52685: CVarStr var_E0
  loc_C52688: PopAdLdVar
  loc_C52689: FLdPr Me
  loc_C5268C: VCallAd Control_ID_ServDevaFlex
  loc_C5268F: FStAdFunc var_9C
  loc_C52692: FLdPr var_9C
  loc_C52695: LateIdSt
  loc_C5269A: FFreeAd var_88 = ""
  loc_C526A1: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C526AE: FLdPr Me
  loc_C526B1: VCallAd Control_ID_ServDevaFlex
  loc_C526B4: FStAdFunc var_88
  loc_C526B7: FLdPr var_88
  loc_C526BA: LateIdLdVar var_98 DispID_11 0
  loc_C526C1: CI4Var
  loc_C526C3: LitI4 3
  loc_C526C8: EqI4
  loc_C526C9: FFree1Ad var_88
  loc_C526CC: FFree1Var var_98 = ""
  loc_C526CF: BranchF loc_C527D7
  loc_C526D2: FLdPr Me
  loc_C526D5: VCallAd Control_ID_ServDevaFlex
  loc_C526D8: FStAdFunc var_88
  loc_C526DB: FLdPr var_88
  loc_C526DE: LateIdLdVar var_98 DispID_10 0
  loc_C526E5: CI4Var
  loc_C526E7: CVarI4
  loc_C526EB: PopAdLdVar
  loc_C526EC: LitVarI4
  loc_C526F4: PopAdLdVar
  loc_C526F5: FLdPr Me
  loc_C526F8: VCallAd Control_ID_ServDevaFlex
  loc_C526FB: FStAdFunc var_9C
  loc_C526FE: FLdPr var_9C
  loc_C52701: LateIdCallLdVar
  loc_C5270B: CStrVarTmp
  loc_C5270C: FStStrNoPop var_B0
  loc_C5270F: LitStr "1"
  loc_C52712: EqStr
  loc_C52714: FFree1Str var_B0
  loc_C52717: FFreeAd var_88 = ""
  loc_C5271E: FFreeVar var_98 = ""
  loc_C52725: BranchF loc_C527D7
  loc_C52728: FLdPr Me
  loc_C5272B: VCallAd Control_ID_ServDevaFlex
  loc_C5272E: FStAdFunc var_88
  loc_C52731: FLdPr var_88
  loc_C52734: LateIdLdVar var_98 DispID_0 0
  loc_C5273B: CStrVarTmp
  loc_C5273C: FStStrNoPop var_B0
  loc_C5273F: FnLenStr
  loc_C52740: LitI4 &HA
  loc_C52745: LeI4
  loc_C52746: FFree1Str var_B0
  loc_C52749: FFree1Ad var_88
  loc_C5274C: FFree1Var var_98 = ""
  loc_C5274F: BranchF loc_C527D7
  loc_C52752: LitStr "1234567890,."
  loc_C52755: FStStrCopy var_B0
  loc_C52758: FLdRfVar var_B0
  loc_C5275B: ILdRf KeyAscii
  loc_C5275E: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C52763: IStI2 KeyAscii
  loc_C52766: FFree1Str var_B0
  loc_C52769: ILdI2 KeyAscii
  loc_C5276C: LitStr "."
  loc_C5276F: ImpAdCallI2 Asc()
  loc_C52774: EqI2
  loc_C52775: BranchF loc_C52783
  loc_C52778: LitStr ","
  loc_C5277B: ImpAdCallI2 Asc()
  loc_C52780: IStI2 KeyAscii
  loc_C52783: FLdPr Me
  loc_C52786: VCallAd Control_ID_ServDevaFlex
  loc_C52789: FStAdFunc var_88
  loc_C5278C: FLdPr var_88
  loc_C5278F: LateIdLdVar var_98 DispID_0 0
  loc_C52796: CStrVarTmp
  loc_C52797: CVarStr var_C0
  loc_C5279A: ILdI2 KeyAscii
  loc_C5279D: CI4UI1
  loc_C5279E: FLdRfVar var_AC
  loc_C527A1: ImpAdCallFPR4  = Chr()
  loc_C527A6: FLdRfVar var_AC
  loc_C527A9: AddVar var_D0
  loc_C527AD: CStrVarTmp
  loc_C527AE: CVarStr var_E0
  loc_C527B1: PopAdLdVar
  loc_C527B2: FLdPr Me
  loc_C527B5: VCallAd Control_ID_ServDevaFlex
  loc_C527B8: FStAdFunc var_9C
  loc_C527BB: FLdPr var_9C
  loc_C527BE: LateIdSt
  loc_C527C3: FFreeAd var_88 = ""
  loc_C527CA: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C527D7: ExitProcHresult
End Sub

Private Sub ServDevaFlex_LeaveCell() 'CBBCB0
  'Data Table: 518504
  loc_CB9A14: FLdPr Me
  loc_CB9A17: VCallAd Control_ID_ServDevaFlex
  loc_CB9A1A: FStAdFunc var_88
  loc_CB9A1D: FLdPr var_88
  loc_CB9A20: LateIdLdVar var_98 DispID_11 0
  loc_CB9A27: CI4Var
  loc_CB9A29: LitI4 0
  loc_CB9A2E: EqI4
  loc_CB9A2F: FFree1Ad var_88
  loc_CB9A32: FFree1Var var_98 = ""
  loc_CB9A35: BranchF loc_CB9D4E
  loc_CB9A38: FLdPr Me
  loc_CB9A3B: VCallAd Control_ID_ServDevaFlex
  loc_CB9A3E: FStAdFunc var_88
  loc_CB9A41: FLdPr var_88
  loc_CB9A44: LateIdLdVar var_98 DispID_10 0
  loc_CB9A4B: CI4Var
  loc_CB9A4D: CVarI4
  loc_CB9A51: PopAdLdVar
  loc_CB9A52: LitVarI4
  loc_CB9A5A: PopAdLdVar
  loc_CB9A5B: FLdPr Me
  loc_CB9A5E: VCallAd Control_ID_ServDevaFlex
  loc_CB9A61: FStAdFunc var_DC
  loc_CB9A64: FLdPr var_DC
  loc_CB9A67: LateIdCallLdVar
  loc_CB9A71: CStrVarTmp
  loc_CB9A72: CVarStr var_FC
  loc_CB9A75: ImpAdCallI2 IsNumeric()
  loc_CB9A7A: NotI4
  loc_CB9A7B: FFreeAd var_88 = ""
  loc_CB9A82: FFreeVar var_98 = "": var_EC = ""
  loc_CB9A8B: BranchF loc_CB9AD5
  loc_CB9A8E: FLdPr Me
  loc_CB9A91: VCallAd Control_ID_ServDevaFlex
  loc_CB9A94: FStAdFunc var_88
  loc_CB9A97: FLdPr var_88
  loc_CB9A9A: LateIdLdVar var_98 DispID_10 0
  loc_CB9AA1: CI4Var
  loc_CB9AA3: CVarI4
  loc_CB9AA7: PopAdLdVar
  loc_CB9AA8: LitVarI4
  loc_CB9AB0: PopAdLdVar
  loc_CB9AB1: LitVarStr var_10C, "1"
  loc_CB9AB6: PopAdLdVar
  loc_CB9AB7: FLdPr Me
  loc_CB9ABA: VCallAd Control_ID_ServDevaFlex
  loc_CB9ABD: FStAdFunc var_DC
  loc_CB9AC0: FLdPr var_DC
  loc_CB9AC3: LateIdCallSt
  loc_CB9ACB: FFreeAd var_88 = ""
  loc_CB9AD2: FFree1Var var_98 = ""
  loc_CB9AD5: FLdPr Me
  loc_CB9AD8: VCallAd Control_ID_ServDevaFlex
  loc_CB9ADB: FStAdFunc var_88
  loc_CB9ADE: FLdPr var_88
  loc_CB9AE1: LateIdLdVar var_98 DispID_10 0
  loc_CB9AE8: CI4Var
  loc_CB9AEA: CVarI4
  loc_CB9AEE: PopAdLdVar
  loc_CB9AEF: LitVarI4
  loc_CB9AF7: PopAdLdVar
  loc_CB9AF8: FLdPr Me
  loc_CB9AFB: VCallAd Control_ID_ServDevaFlex
  loc_CB9AFE: FStAdFunc var_DC
  loc_CB9B01: FLdPr var_DC
  loc_CB9B04: LateIdCallLdVar
  loc_CB9B0E: CStrVarTmp
  loc_CB9B0F: CVarStr var_FC
  loc_CB9B12: ImpAdCallI2 IsNumeric()
  loc_CB9B17: FLdPr Me
  loc_CB9B1A: VCallAd Control_ID_ServDevaFlex
  loc_CB9B1D: FStAdFunc var_120
  loc_CB9B20: FLdPr var_120
  loc_CB9B23: LateIdLdVar var_130 DispID_10 0
  loc_CB9B2A: CI4Var
  loc_CB9B2C: CVarI4
  loc_CB9B30: PopAdLdVar
  loc_CB9B31: LitVarI4
  loc_CB9B39: PopAdLdVar
  loc_CB9B3A: FLdPr Me
  loc_CB9B3D: VCallAd Control_ID_ServDevaFlex
  loc_CB9B40: FStAdFunc var_154
  loc_CB9B43: FLdPr var_154
  loc_CB9B46: LateIdCallLdVar
  loc_CB9B50: CStrVarTmp
  loc_CB9B51: CVarStr var_174
  loc_CB9B54: ImpAdCallI2 IsNumeric()
  loc_CB9B59: AndI4
  loc_CB9B5A: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CB9B65: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CB9B74: BranchF loc_CB9C8B
  loc_CB9B77: FLdPr Me
  loc_CB9B7A: VCallAd Control_ID_ServDevaFlex
  loc_CB9B7D: FStAdFunc var_88
  loc_CB9B80: FLdPr var_88
  loc_CB9B83: LateIdLdVar var_98 DispID_10 0
  loc_CB9B8A: CI4Var
  loc_CB9B8C: CVarI4
  loc_CB9B90: PopAdLdVar
  loc_CB9B91: LitVarI4
  loc_CB9B99: PopAdLdVar
  loc_CB9B9A: FLdPr Me
  loc_CB9B9D: VCallAd Control_ID_ServDevaFlex
  loc_CB9BA0: FStAdFunc var_DC
  loc_CB9BA3: FLdPr var_DC
  loc_CB9BA6: LateIdCallLdVar
  loc_CB9BB0: PopAd
  loc_CB9BB2: FLdPr Me
  loc_CB9BB5: VCallAd Control_ID_ServDevaFlex
  loc_CB9BB8: FStAdFunc var_120
  loc_CB9BBB: FLdPr var_120
  loc_CB9BBE: LateIdLdVar var_FC DispID_10 0
  loc_CB9BC5: CI4Var
  loc_CB9BC7: CVarI4
  loc_CB9BCB: PopAdLdVar
  loc_CB9BCC: LitVarI4
  loc_CB9BD4: PopAdLdVar
  loc_CB9BD5: FLdPr Me
  loc_CB9BD8: VCallAd Control_ID_ServDevaFlex
  loc_CB9BDB: FStAdFunc var_154
  loc_CB9BDE: FLdPr var_154
  loc_CB9BE1: LateIdCallLdVar
  loc_CB9BEB: PopAd
  loc_CB9BED: FLdPr Me
  loc_CB9BF0: VCallAd Control_ID_ServDevaFlex
  loc_CB9BF3: FStAdFunc var_1B0
  loc_CB9BF6: FLdPr var_1B0
  loc_CB9BF9: LateIdLdVar var_1C0 DispID_10 0
  loc_CB9C00: CI4Var
  loc_CB9C02: CVarI4
  loc_CB9C06: PopAdLdVar
  loc_CB9C07: LitVarI4
  loc_CB9C0F: PopAdLdVar
  loc_CB9C10: LitI4 1
  loc_CB9C15: LitI4 1
  loc_CB9C1A: LitVarStr var_19C, "0.00"
  loc_CB9C1F: FStVarCopyObj var_174
  loc_CB9C22: FLdRfVar var_174
  loc_CB9C25: FLdRfVar var_EC
  loc_CB9C28: CStrVarTmp
  loc_CB9C29: FStStrNoPop var_178
  loc_CB9C2C: CR8Str
  loc_CB9C2E: FLdRfVar var_130
  loc_CB9C31: CStrVarTmp
  loc_CB9C32: FStStrNoPop var_17C
  loc_CB9C35: CR8Str
  loc_CB9C37: MulR8
  loc_CB9C38: CVarR8
  loc_CB9C3C: FLdRfVar var_1AC
  loc_CB9C3F: ImpAdCallFPR4  = Format(, )
  loc_CB9C44: FLdRfVar var_1AC
  loc_CB9C47: CStrVarTmp
  loc_CB9C48: CVarStr var_210
  loc_CB9C4B: PopAdLdVar
  loc_CB9C4C: FLdPr Me
  loc_CB9C4F: VCallAd Control_ID_ServDevaFlex
  loc_CB9C52: FStAdFunc var_224
  loc_CB9C55: FLdPr var_224
  loc_CB9C58: LateIdCallSt
  loc_CB9C60: FFreeStr var_178 = ""
  loc_CB9C67: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CB9C76: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CB9C8B: FLdPr Me
  loc_CB9C8E: VCallAd Control_ID_ServDevaFlex
  loc_CB9C91: FStAdFunc var_88
  loc_CB9C94: FLdPr var_88
  loc_CB9C97: LateIdLdVar var_98 DispID_10 0
  loc_CB9C9E: CI4Var
  loc_CB9CA0: CVarI4
  loc_CB9CA4: PopAdLdVar
  loc_CB9CA5: LitVarI4
  loc_CB9CAD: PopAdLdVar
  loc_CB9CAE: FLdPr Me
  loc_CB9CB1: VCallAd Control_ID_ServDevaFlex
  loc_CB9CB4: FStAdFunc var_DC
  loc_CB9CB7: FLdPr var_DC
  loc_CB9CBA: LateIdCallLdVar
  loc_CB9CC4: PopAd
  loc_CB9CC6: FLdPr Me
  loc_CB9CC9: VCallAd Control_ID_ServDevaFlex
  loc_CB9CCC: FStAdFunc var_120
  loc_CB9CCF: FLdPr var_120
  loc_CB9CD2: LateIdLdVar var_174 DispID_10 0
  loc_CB9CD9: CI4Var
  loc_CB9CDB: CVarI4
  loc_CB9CDF: PopAdLdVar
  loc_CB9CE0: LitVarI4
  loc_CB9CE8: PopAdLdVar
  loc_CB9CE9: LitI4 1
  loc_CB9CEE: LitI4 1
  loc_CB9CF3: LitVarStr var_11C, "0.00"
  loc_CB9CF8: FStVarCopyObj var_130
  loc_CB9CFB: FLdRfVar var_130
  loc_CB9CFE: FLdRfVar var_EC
  loc_CB9D01: CStrVarTmp
  loc_CB9D02: FStStrNoPop var_178
  loc_CB9D05: CR8Str
  loc_CB9D07: CVarR8
  loc_CB9D0B: FLdRfVar var_164
  loc_CB9D0E: ImpAdCallFPR4  = Format(, )
  loc_CB9D13: FLdRfVar var_164
  loc_CB9D16: CStrVarTmp
  loc_CB9D17: CVarStr var_1AC
  loc_CB9D1A: PopAdLdVar
  loc_CB9D1B: FLdPr Me
  loc_CB9D1E: VCallAd Control_ID_ServDevaFlex
  loc_CB9D21: FStAdFunc var_154
  loc_CB9D24: FLdPr var_154
  loc_CB9D27: LateIdCallSt
  loc_CB9D2F: FFree1Str var_178
  loc_CB9D32: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CB9D3D: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CB9D4E: FLdPr Me
  loc_CB9D51: VCallAd Control_ID_ServDevaFlex
  loc_CB9D54: FStAdFunc var_88
  loc_CB9D57: FLdPr var_88
  loc_CB9D5A: LateIdLdVar var_98 DispID_11 0
  loc_CB9D61: CI4Var
  loc_CB9D63: LitI4 1
  loc_CB9D68: EqI4
  loc_CB9D69: FFree1Ad var_88
  loc_CB9D6C: FFree1Var var_98 = ""
  loc_CB9D6F: BranchF loc_CBB926
  loc_CB9D72: FLdPr Me
  loc_CB9D75: VCallAd Control_ID_ServDevaFlex
  loc_CB9D78: FStAdFunc var_88
  loc_CB9D7B: FLdPr var_88
  loc_CB9D7E: LateIdLdVar var_98 DispID_10 0
  loc_CB9D85: CI4Var
  loc_CB9D87: CVarI4
  loc_CB9D8B: PopAdLdVar
  loc_CB9D8C: LitVarI4
  loc_CB9D94: PopAdLdVar
  loc_CB9D95: FLdPr Me
  loc_CB9D98: VCallAd Control_ID_ServDevaFlex
  loc_CB9D9B: FStAdFunc var_DC
  loc_CB9D9E: FLdPr var_DC
  loc_CB9DA1: LateIdCallLdVar
  loc_CB9DAB: CStrVarTmp
  loc_CB9DAC: CVarStr var_FC
  loc_CB9DAF: ImpAdCallI2 IsNumeric()
  loc_CB9DB4: FFreeAd var_88 = ""
  loc_CB9DBB: FFreeVar var_98 = "": var_EC = ""
  loc_CB9DC4: BranchF loc_CBB926
  loc_CB9DC7: ImpAdLdUI1
  loc_CB9DCB: CI2UI1
  loc_CB9DCD: LitI2_Byte 1
  loc_CB9DCF: EqI2
  loc_CB9DD0: BranchF loc_CBAB5A
  loc_CB9DD3: LitStr "SELECT DetaSeca, ImpoSede * UntrPage as ImpoSede, concepto.PeriInfo, servcata.CodiConc, concepto.TiafConc FROM servcata "
  loc_CB9DD6: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CB9DD9: ConcatStr
  loc_CB9DDA: FStStrNoPop var_178
  loc_CB9DDD: ImpAdLdI2 MemVar_D93034
  loc_CB9DE0: CStrUI1
  loc_CB9DE2: FStStrNoPop var_17C
  loc_CB9DE5: ConcatStr
  loc_CB9DE6: FStStrNoPop var_228
  loc_CB9DE9: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_CB9DEC: ConcatStr
  loc_CB9DED: FStStrNoPop var_22C
  loc_CB9DF0: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CB9DF3: ConcatStr
  loc_CB9DF4: FStStrNoPop var_230
  loc_CB9DF7: LitStr " WHERE servcata.PeriOrde = "
  loc_CB9DFA: ConcatStr
  loc_CB9DFB: FStStrNoPop var_234
  loc_CB9DFE: ImpAdLdI2 MemVar_D93036
  loc_CB9E01: CStrUI1
  loc_CB9E03: FStStrNoPop var_238
  loc_CB9E06: ConcatStr
  loc_CB9E07: FStStrNoPop var_23C
  loc_CB9E0A: LitStr " AND CodiSeca = "
  loc_CB9E0D: ConcatStr
  loc_CB9E0E: FStStrNoPop var_240
  loc_CB9E11: FLdPr Me
  loc_CB9E14: VCallAd Control_ID_ServDevaFlex
  loc_CB9E17: FStAdFunc var_88
  loc_CB9E1A: FLdPr var_88
  loc_CB9E1D: LateIdLdVar var_98 DispID_10 0
  loc_CB9E24: CI4Var
  loc_CB9E26: CVarI4
  loc_CB9E2A: PopAdLdVar
  loc_CB9E2B: LitVarI4
  loc_CB9E33: PopAdLdVar
  loc_CB9E34: FLdPr Me
  loc_CB9E37: VCallAd Control_ID_ServDevaFlex
  loc_CB9E3A: FStAdFunc var_DC
  loc_CB9E3D: FLdPr var_DC
  loc_CB9E40: LateIdCallLdVar
  loc_CB9E4A: CStrVarTmp
  loc_CB9E4B: FStStrNoPop var_244
  loc_CB9E4E: ConcatStr
  loc_CB9E4F: FStStrNoPop var_248
  loc_CB9E52: FLdPr Me
  loc_CB9E55: MemLdRfVar from_stack_1.global_56
  loc_CB9E58: NewIfNullPr clsservdeva
  loc_CB9E5B: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CB9E60: FFreeStr var_178 = "": var_17C = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = ""
  loc_CB9E79: FFreeAd var_88 = ""
  loc_CB9E80: FFreeVar var_98 = ""
  loc_CB9E87: FLdRfVar var_24C
  loc_CB9E8A: FLdRfVar var_88
  loc_CB9E8D: FLdPr Me
  loc_CB9E90: MemLdRfVar from_stack_1.global_56
  loc_CB9E93: NewIfNullPr clsservdeva
  loc_CB9E96: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CB9E9B: FLdPr var_88
  loc_CB9E9E:  = Me.RecordCount
  loc_CB9EA3: ILdRf var_24C
  loc_CB9EA6: LitI4 0
  loc_CB9EAB: GtI4
  loc_CB9EAC: FFree1Ad var_88
  loc_CB9EAF: BranchF loc_CBA969
  loc_CB9EB2: FLdRfVar var_98
  loc_CB9EB5: FLdRfVar var_120
  loc_CB9EB8: LitVarStr var_A8, "PeriInfo"
  loc_CB9EBD: PopAdLdVar
  loc_CB9EBE: FLdRfVar var_DC
  loc_CB9EC1: FLdRfVar var_88
  loc_CB9EC4: FLdPr Me
  loc_CB9EC7: MemLdRfVar from_stack_1.global_56
  loc_CB9ECA: NewIfNullPr clsservdeva
  loc_CB9ECD: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CB9ED2: FLdPr var_88
  loc_CB9ED5:  = Me.Fields
  loc_CB9EDA: FLdPr var_DC
  loc_CB9EDD: from_stack_2 = Me.Item(from_stack_1)
  loc_CB9EE2: FLdPr var_120
  loc_CB9EE5:  = Me.Value
  loc_CB9EEA: FLdRfVar var_98
  loc_CB9EED: FnCIntVar
  loc_CB9EEF: ImpAdLdI2 MemVar_D93034
  loc_CB9EF2: NeI2
  loc_CB9EF3: FFreeAd var_88 = "": var_DC = ""
  loc_CB9EFC: FFree1Var var_98 = ""
  loc_CB9EFF: BranchF loc_CB9F25
  loc_CB9F02: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CB9F05: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB9F0A: FLdPr Me
  loc_CB9F0D: VCallAd Control_ID_ServDevaFlex
  loc_CB9F10: FStAdFunc var_88
  loc_CB9F13: FLdPr var_88
  loc_CB9F16: LateIdCall
  loc_CB9F1E: FFree1Ad var_88
  loc_CB9F21: ExitProcHresult
  loc_CB9F22: Branch loc_CBA966
  loc_CB9F25: FLdRfVar var_98
  loc_CB9F28: FLdRfVar var_120
  loc_CB9F2B: LitVarStr var_A8, "PeriInfo"
  loc_CB9F30: PopAdLdVar
  loc_CB9F31: FLdRfVar var_DC
  loc_CB9F34: FLdRfVar var_88
  loc_CB9F37: FLdPr Me
  loc_CB9F3A: MemLdRfVar from_stack_1.global_56
  loc_CB9F3D: NewIfNullPr clsservdeva
  loc_CB9F40: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CB9F45: FLdPr var_88
  loc_CB9F48:  = Me.Fields
  loc_CB9F4D: FLdPr var_DC
  loc_CB9F50: from_stack_2 = Me.Item(from_stack_1)
  loc_CB9F55: FLdPr var_120
  loc_CB9F58:  = Me.Value
  loc_CB9F5D: FLdRfVar var_EC
  loc_CB9F60: FLdRfVar var_224
  loc_CB9F63: LitVarStr var_B8, "CodiConc"
  loc_CB9F68: PopAdLdVar
  loc_CB9F69: FLdRfVar var_1B0
  loc_CB9F6C: FLdRfVar var_154
  loc_CB9F6F: FLdPr Me
  loc_CB9F72: MemLdRfVar from_stack_1.global_56
  loc_CB9F75: NewIfNullPr clsservdeva
  loc_CB9F78: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CB9F7D: FLdPr var_154
  loc_CB9F80:  = Me.Fields
  loc_CB9F85: FLdPr var_1B0
  loc_CB9F88: from_stack_2 = Me.Item(from_stack_1)
  loc_CB9F8D: FLdPr var_224
  loc_CB9F90:  = Me.Value
  loc_CB9F95: FLdRfVar var_EC
  loc_CB9F98: CStrVarTmp
  loc_CB9F99: FStStrNoPop var_178
  loc_CB9F9C: FLdRfVar var_98
  loc_CB9F9F: CI2Var
  loc_CB9FA0: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CB9FA5: FStStrNoPop var_17C
  loc_CB9FA8: LitStr vbNullString
  loc_CB9FAB: EqStr
  loc_CB9FAD: FFreeStr var_178 = ""
  loc_CB9FB4: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_1B0 = "": var_120 = ""
  loc_CB9FC3: FFreeVar var_98 = ""
  loc_CB9FCA: BranchF loc_CBA03C
  loc_CB9FCD: LitVarStr var_B8, "El recurso: "
  loc_CB9FD2: FLdRfVar var_98
  loc_CB9FD5: FLdRfVar var_120
  loc_CB9FD8: LitVarStr var_A8, "CodiConc"
  loc_CB9FDD: PopAdLdVar
  loc_CB9FDE: FLdRfVar var_DC
  loc_CB9FE1: FLdRfVar var_88
  loc_CB9FE4: FLdPr Me
  loc_CB9FE7: MemLdRfVar from_stack_1.global_56
  loc_CB9FEA: NewIfNullPr clsservdeva
  loc_CB9FED: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CB9FF2: FLdPr var_88
  loc_CB9FF5:  = Me.Fields
  loc_CB9FFA: FLdPr var_DC
  loc_CB9FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA002: FLdPr var_120
  loc_CBA005:  = Me.Value
  loc_CBA00A: FLdRfVar var_98
  loc_CBA00D: ConcatVar var_EC
  loc_CBA011: LitVarStr var_C8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBA016: ConcatVar var_FC
  loc_CBA01A: CStrVarVal var_178
  loc_CBA01E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBA023: FFree1Str var_178
  loc_CBA026: FFreeAd var_88 = "": var_DC = ""
  loc_CBA02F: FFreeVar var_98 = "": var_EC = ""
  loc_CBA038: ExitProcHresult
  loc_CBA039: Branch loc_CBA966
  loc_CBA03C: FLdRfVar var_98
  loc_CBA03F: FLdRfVar var_120
  loc_CBA042: LitVarStr var_A8, "TiafConc"
  loc_CBA047: PopAdLdVar
  loc_CBA048: FLdRfVar var_DC
  loc_CBA04B: FLdRfVar var_88
  loc_CBA04E: FLdPr Me
  loc_CBA051: MemLdRfVar from_stack_1.global_56
  loc_CBA054: NewIfNullPr clsservdeva
  loc_CBA057: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA05C: FLdPr var_88
  loc_CBA05F:  = Me.Fields
  loc_CBA064: FLdPr var_DC
  loc_CBA067: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA06C: FLdPr var_120
  loc_CBA06F:  = Me.Value
  loc_CBA074: FLdRfVar var_98
  loc_CBA077: LitVarI2 var_B8, 0
  loc_CBA07C: HardType
  loc_CBA07D: EqVarBool
  loc_CBA07F: FFreeAd var_88 = "": var_DC = ""
  loc_CBA088: FFree1Var var_98 = ""
  loc_CBA08B: BranchF loc_CBA09A
  loc_CBA08E: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBA091: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBA096: ExitProcHresult
  loc_CBA097: Branch loc_CBA966
  loc_CBA09A: FLdPr Me
  loc_CBA09D: VCallAd Control_ID_ServDevaFlex
  loc_CBA0A0: FStAdFunc var_88
  loc_CBA0A3: FLdPr var_88
  loc_CBA0A6: LateIdLdVar var_98 DispID_10 0
  loc_CBA0AD: CI4Var
  loc_CBA0AF: CVarI4
  loc_CBA0B3: PopAdLdVar
  loc_CBA0B4: LitVarI4
  loc_CBA0BC: PopAdLdVar
  loc_CBA0BD: LitI2_Byte 1
  loc_CBA0BF: CStrUI1
  loc_CBA0C1: CVarStr var_EC
  loc_CBA0C4: PopAdLdVar
  loc_CBA0C5: FLdPr Me
  loc_CBA0C8: VCallAd Control_ID_ServDevaFlex
  loc_CBA0CB: FStAdFunc var_DC
  loc_CBA0CE: FLdPr var_DC
  loc_CBA0D1: LateIdCallSt
  loc_CBA0D9: FFreeAd var_88 = ""
  loc_CBA0E0: FFreeVar var_98 = ""
  loc_CBA0E7: FLdPr Me
  loc_CBA0EA: VCallAd Control_ID_ServDevaFlex
  loc_CBA0ED: FStAdFunc var_154
  loc_CBA0F0: FLdPr var_154
  loc_CBA0F3: LateIdLdVar var_98 DispID_10 0
  loc_CBA0FA: CI4Var
  loc_CBA0FC: CVarI4
  loc_CBA100: PopAdLdVar
  loc_CBA101: LitVarI4
  loc_CBA109: PopAdLdVar
  loc_CBA10A: FLdRfVar var_EC
  loc_CBA10D: FLdRfVar var_120
  loc_CBA110: LitVarStr var_A8, "DetaSeca"
  loc_CBA115: PopAdLdVar
  loc_CBA116: FLdRfVar var_DC
  loc_CBA119: FLdRfVar var_88
  loc_CBA11C: FLdPr Me
  loc_CBA11F: MemLdRfVar from_stack_1.global_56
  loc_CBA122: NewIfNullPr clsservdeva
  loc_CBA125: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA12A: FLdPr var_88
  loc_CBA12D:  = Me.Fields
  loc_CBA132: FLdPr var_DC
  loc_CBA135: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA13A: FLdPr var_120
  loc_CBA13D:  = Me.Value
  loc_CBA142: FLdRfVar var_EC
  loc_CBA145: CStrVarTmp
  loc_CBA146: CVarStr var_FC
  loc_CBA149: PopAdLdVar
  loc_CBA14A: FLdPr Me
  loc_CBA14D: VCallAd Control_ID_ServDevaFlex
  loc_CBA150: FStAdFunc var_1B0
  loc_CBA153: FLdPr var_1B0
  loc_CBA156: LateIdCallSt
  loc_CBA15E: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBA16B: FFreeVar var_98 = "": var_EC = ""
  loc_CBA174: FLdPr Me
  loc_CBA177: VCallAd Control_ID_ServDevaFlex
  loc_CBA17A: FStAdFunc var_88
  loc_CBA17D: FLdPr var_88
  loc_CBA180: LateIdLdVar var_98 DispID_10 0
  loc_CBA187: CI4Var
  loc_CBA189: CVarI4
  loc_CBA18D: PopAdLdVar
  loc_CBA18E: LitVarI4
  loc_CBA196: PopAdLdVar
  loc_CBA197: FLdPr Me
  loc_CBA19A: VCallAd Control_ID_ServDevaFlex
  loc_CBA19D: FStAdFunc var_DC
  loc_CBA1A0: FLdPr var_DC
  loc_CBA1A3: LateIdCallLdVar
  loc_CBA1AD: CStrVarTmp
  loc_CBA1AE: FStStrNoPop var_178
  loc_CBA1B1: LitStr "0"
  loc_CBA1B4: EqStr
  loc_CBA1B6: FFree1Str var_178
  loc_CBA1B9: FFreeAd var_88 = ""
  loc_CBA1C0: FFreeVar var_98 = ""
  loc_CBA1C7: BranchF loc_CBA275
  loc_CBA1CA: FLdRfVar var_120
  loc_CBA1CD: LitVarStr var_A8, "ImpoSeca"
  loc_CBA1D2: PopAdLdVar
  loc_CBA1D3: FLdRfVar var_DC
  loc_CBA1D6: FLdRfVar var_88
  loc_CBA1D9: FLdPr Me
  loc_CBA1DC: MemLdRfVar from_stack_1.global_56
  loc_CBA1DF: NewIfNullPr clsservdeva
  loc_CBA1E2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA1E7: FLdPr var_88
  loc_CBA1EA:  = Me.Fields
  loc_CBA1EF: FLdPr var_DC
  loc_CBA1F2: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA1F7: FLdPr Me
  loc_CBA1FA: VCallAd Control_ID_ServDevaFlex
  loc_CBA1FD: FStAdFunc var_154
  loc_CBA200: FLdPr var_154
  loc_CBA203: LateIdLdVar var_130 DispID_10 0
  loc_CBA20A: CI4Var
  loc_CBA20C: CVarI4
  loc_CBA210: PopAdLdVar
  loc_CBA211: LitVarI4
  loc_CBA219: PopAdLdVar
  loc_CBA21A: LitI4 1
  loc_CBA21F: LitI4 1
  loc_CBA224: LitVarStr var_B8, "0.00"
  loc_CBA229: FStVarCopyObj var_EC
  loc_CBA22C: FLdRfVar var_EC
  loc_CBA22F: FLdZeroAd var_120
  loc_CBA232: CVarAd
  loc_CBA236: FLdRfVar var_FC
  loc_CBA239: ImpAdCallFPR4  = Format(, )
  loc_CBA23E: FLdRfVar var_FC
  loc_CBA241: CStrVarTmp
  loc_CBA242: CVarStr var_164
  loc_CBA245: PopAdLdVar
  loc_CBA246: FLdPr Me
  loc_CBA249: VCallAd Control_ID_ServDevaFlex
  loc_CBA24C: FStAdFunc var_1B0
  loc_CBA24F: FLdPr var_1B0
  loc_CBA252: LateIdCallSt
  loc_CBA25A: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBA265: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBA272: Branch loc_CBA4EE
  loc_CBA275: FLdPr Me
  loc_CBA278: VCallAd Control_ID_ServDevaFlex
  loc_CBA27B: FStAdFunc var_88
  loc_CBA27E: FLdPr var_88
  loc_CBA281: LateIdLdVar var_98 DispID_10 0
  loc_CBA288: CI4Var
  loc_CBA28A: CVarI4
  loc_CBA28E: PopAdLdVar
  loc_CBA28F: LitVarI4
  loc_CBA297: PopAdLdVar
  loc_CBA298: FLdPr Me
  loc_CBA29B: VCallAd Control_ID_ServDevaFlex
  loc_CBA29E: FStAdFunc var_DC
  loc_CBA2A1: FLdPr var_DC
  loc_CBA2A4: LateIdCallLdVar
  loc_CBA2AE: CStrVarTmp
  loc_CBA2AF: FStStrNoPop var_178
  loc_CBA2B2: LitStr "1"
  loc_CBA2B5: EqStr
  loc_CBA2B7: FLdRfVar var_FC
  loc_CBA2BA: FLdRfVar var_1B0
  loc_CBA2BD: LitVarStr var_10C, "ImpoSeca"
  loc_CBA2C2: PopAdLdVar
  loc_CBA2C3: FLdRfVar var_154
  loc_CBA2C6: FLdRfVar var_120
  loc_CBA2C9: FLdPr Me
  loc_CBA2CC: MemLdRfVar from_stack_1.global_56
  loc_CBA2CF: NewIfNullPr clsservdeva
  loc_CBA2D2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA2D7: FLdPr var_120
  loc_CBA2DA:  = Me.Fields
  loc_CBA2DF: FLdPr var_154
  loc_CBA2E2: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA2E7: FLdPr var_1B0
  loc_CBA2EA:  = Me.Value
  loc_CBA2EF: FLdRfVar var_FC
  loc_CBA2F2: FnCDblVar
  loc_CBA2F4: LitI2_Byte 0
  loc_CBA2F6: CR8I2
  loc_CBA2F7: EqR4
  loc_CBA2F8: AndI4
  loc_CBA2F9: FFree1Str var_178
  loc_CBA2FC: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBA309: FFreeVar var_98 = "": var_EC = ""
  loc_CBA312: BranchF loc_CBA3A6
  loc_CBA315: FLdPr Me
  loc_CBA318: VCallAd Control_ID_ServDevaFlex
  loc_CBA31B: FStAdFunc var_88
  loc_CBA31E: FLdPr var_88
  loc_CBA321: LateIdLdVar var_98 DispID_10 0
  loc_CBA328: CI4Var
  loc_CBA32A: CVarI4
  loc_CBA32E: PopAdLdVar
  loc_CBA32F: LitVarI4
  loc_CBA337: PopAdLdVar
  loc_CBA338: LitVarStr var_10C, vbNullString
  loc_CBA33D: PopAdLdVar
  loc_CBA33E: FLdPr Me
  loc_CBA341: VCallAd Control_ID_ServDevaFlex
  loc_CBA344: FStAdFunc var_DC
  loc_CBA347: FLdPr var_DC
  loc_CBA34A: LateIdCallSt
  loc_CBA352: FFreeAd var_88 = ""
  loc_CBA359: FFree1Var var_98 = ""
  loc_CBA35C: FLdPr Me
  loc_CBA35F: VCallAd Control_ID_ServDevaFlex
  loc_CBA362: FStAdFunc var_88
  loc_CBA365: FLdPr var_88
  loc_CBA368: LateIdLdVar var_98 DispID_10 0
  loc_CBA36F: CI4Var
  loc_CBA371: CVarI4
  loc_CBA375: PopAdLdVar
  loc_CBA376: LitVarI4
  loc_CBA37E: PopAdLdVar
  loc_CBA37F: LitVarStr var_10C, vbNullString
  loc_CBA384: PopAdLdVar
  loc_CBA385: FLdPr Me
  loc_CBA388: VCallAd Control_ID_ServDevaFlex
  loc_CBA38B: FStAdFunc var_DC
  loc_CBA38E: FLdPr var_DC
  loc_CBA391: LateIdCallSt
  loc_CBA399: FFreeAd var_88 = ""
  loc_CBA3A0: FFree1Var var_98 = ""
  loc_CBA3A3: Branch loc_CBA4EE
  loc_CBA3A6: FLdPr Me
  loc_CBA3A9: VCallAd Control_ID_ServDevaFlex
  loc_CBA3AC: FStAdFunc var_88
  loc_CBA3AF: FLdPr var_88
  loc_CBA3B2: LateIdLdVar var_98 DispID_10 0
  loc_CBA3B9: CI4Var
  loc_CBA3BB: CVarI4
  loc_CBA3BF: PopAdLdVar
  loc_CBA3C0: LitVarI4
  loc_CBA3C8: PopAdLdVar
  loc_CBA3C9: FLdPr Me
  loc_CBA3CC: VCallAd Control_ID_ServDevaFlex
  loc_CBA3CF: FStAdFunc var_DC
  loc_CBA3D2: FLdPr var_DC
  loc_CBA3D5: LateIdCallLdVar
  loc_CBA3DF: CStrVarTmp
  loc_CBA3E0: FStStrNoPop var_178
  loc_CBA3E3: LitStr "1"
  loc_CBA3E6: EqStr
  loc_CBA3E8: FLdRfVar var_FC
  loc_CBA3EB: FLdRfVar var_1B0
  loc_CBA3EE: LitVarStr var_10C, "ImpoSeca"
  loc_CBA3F3: PopAdLdVar
  loc_CBA3F4: FLdRfVar var_154
  loc_CBA3F7: FLdRfVar var_120
  loc_CBA3FA: FLdPr Me
  loc_CBA3FD: MemLdRfVar from_stack_1.global_56
  loc_CBA400: NewIfNullPr clsservdeva
  loc_CBA403: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA408: FLdPr var_120
  loc_CBA40B:  = Me.Fields
  loc_CBA410: FLdPr var_154
  loc_CBA413: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA418: FLdPr var_1B0
  loc_CBA41B:  = Me.Value
  loc_CBA420: FLdRfVar var_FC
  loc_CBA423: FnCDblVar
  loc_CBA425: LitI2_Byte 0
  loc_CBA427: CR8I2
  loc_CBA428: GtR4
  loc_CBA429: AndI4
  loc_CBA42A: FFree1Str var_178
  loc_CBA42D: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBA43A: FFreeVar var_98 = "": var_EC = ""
  loc_CBA443: BranchF loc_CBA4EE
  loc_CBA446: FLdRfVar var_120
  loc_CBA449: LitVarStr var_A8, "ImpoSeca"
  loc_CBA44E: PopAdLdVar
  loc_CBA44F: FLdRfVar var_DC
  loc_CBA452: FLdRfVar var_88
  loc_CBA455: FLdPr Me
  loc_CBA458: MemLdRfVar from_stack_1.global_56
  loc_CBA45B: NewIfNullPr clsservdeva
  loc_CBA45E: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA463: FLdPr var_88
  loc_CBA466:  = Me.Fields
  loc_CBA46B: FLdPr var_DC
  loc_CBA46E: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA473: FLdPr Me
  loc_CBA476: VCallAd Control_ID_ServDevaFlex
  loc_CBA479: FStAdFunc var_154
  loc_CBA47C: FLdPr var_154
  loc_CBA47F: LateIdLdVar var_130 DispID_10 0
  loc_CBA486: CI4Var
  loc_CBA488: CVarI4
  loc_CBA48C: PopAdLdVar
  loc_CBA48D: LitVarI4
  loc_CBA495: PopAdLdVar
  loc_CBA496: LitI4 1
  loc_CBA49B: LitI4 1
  loc_CBA4A0: LitVarStr var_B8, "0.00"
  loc_CBA4A5: FStVarCopyObj var_EC
  loc_CBA4A8: FLdRfVar var_EC
  loc_CBA4AB: FLdZeroAd var_120
  loc_CBA4AE: CVarAd
  loc_CBA4B2: FLdRfVar var_FC
  loc_CBA4B5: ImpAdCallFPR4  = Format(, )
  loc_CBA4BA: FLdRfVar var_FC
  loc_CBA4BD: CStrVarTmp
  loc_CBA4BE: CVarStr var_164
  loc_CBA4C1: PopAdLdVar
  loc_CBA4C2: FLdPr Me
  loc_CBA4C5: VCallAd Control_ID_ServDevaFlex
  loc_CBA4C8: FStAdFunc var_1B0
  loc_CBA4CB: FLdPr var_1B0
  loc_CBA4CE: LateIdCallSt
  loc_CBA4D6: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBA4E1: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBA4EE: FLdPr Me
  loc_CBA4F1: VCallAd Control_ID_ServDevaFlex
  loc_CBA4F4: FStAdFunc var_88
  loc_CBA4F7: FLdPr var_88
  loc_CBA4FA: LateIdLdVar var_98 DispID_10 0
  loc_CBA501: CI4Var
  loc_CBA503: CVarI4
  loc_CBA507: PopAdLdVar
  loc_CBA508: LitVarI4
  loc_CBA510: PopAdLdVar
  loc_CBA511: FLdPr Me
  loc_CBA514: VCallAd Control_ID_ServDevaFlex
  loc_CBA517: FStAdFunc var_DC
  loc_CBA51A: FLdPr var_DC
  loc_CBA51D: LateIdCallLdVar
  loc_CBA527: CStrVarTmp
  loc_CBA528: CVarStr var_FC
  loc_CBA52B: ImpAdCallI2 IsNumeric()
  loc_CBA530: FLdPr Me
  loc_CBA533: VCallAd Control_ID_ServDevaFlex
  loc_CBA536: FStAdFunc var_120
  loc_CBA539: FLdPr var_120
  loc_CBA53C: LateIdLdVar var_130 DispID_10 0
  loc_CBA543: CI4Var
  loc_CBA545: CVarI4
  loc_CBA549: PopAdLdVar
  loc_CBA54A: LitVarI4
  loc_CBA552: PopAdLdVar
  loc_CBA553: FLdPr Me
  loc_CBA556: VCallAd Control_ID_ServDevaFlex
  loc_CBA559: FStAdFunc var_154
  loc_CBA55C: FLdPr var_154
  loc_CBA55F: LateIdCallLdVar
  loc_CBA569: CStrVarTmp
  loc_CBA56A: CVarStr var_174
  loc_CBA56D: ImpAdCallI2 IsNumeric()
  loc_CBA572: AndI4
  loc_CBA573: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBA57E: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBA58D: BranchF loc_CBA6A7
  loc_CBA590: FLdPr Me
  loc_CBA593: VCallAd Control_ID_ServDevaFlex
  loc_CBA596: FStAdFunc var_88
  loc_CBA599: FLdPr var_88
  loc_CBA59C: LateIdLdVar var_98 DispID_10 0
  loc_CBA5A3: CI4Var
  loc_CBA5A5: CVarI4
  loc_CBA5A9: PopAdLdVar
  loc_CBA5AA: LitVarI4
  loc_CBA5B2: PopAdLdVar
  loc_CBA5B3: FLdPr Me
  loc_CBA5B6: VCallAd Control_ID_ServDevaFlex
  loc_CBA5B9: FStAdFunc var_DC
  loc_CBA5BC: FLdPr var_DC
  loc_CBA5BF: LateIdCallLdVar
  loc_CBA5C9: PopAd
  loc_CBA5CB: FLdPr Me
  loc_CBA5CE: VCallAd Control_ID_ServDevaFlex
  loc_CBA5D1: FStAdFunc var_120
  loc_CBA5D4: FLdPr var_120
  loc_CBA5D7: LateIdLdVar var_FC DispID_10 0
  loc_CBA5DE: CI4Var
  loc_CBA5E0: CVarI4
  loc_CBA5E4: PopAdLdVar
  loc_CBA5E5: LitVarI4
  loc_CBA5ED: PopAdLdVar
  loc_CBA5EE: FLdPr Me
  loc_CBA5F1: VCallAd Control_ID_ServDevaFlex
  loc_CBA5F4: FStAdFunc var_154
  loc_CBA5F7: FLdPr var_154
  loc_CBA5FA: LateIdCallLdVar
  loc_CBA604: PopAd
  loc_CBA606: FLdPr Me
  loc_CBA609: VCallAd Control_ID_ServDevaFlex
  loc_CBA60C: FStAdFunc var_1B0
  loc_CBA60F: FLdPr var_1B0
  loc_CBA612: LateIdLdVar var_1C0 DispID_10 0
  loc_CBA619: CI4Var
  loc_CBA61B: CVarI4
  loc_CBA61F: PopAdLdVar
  loc_CBA620: LitVarI4
  loc_CBA628: PopAdLdVar
  loc_CBA629: LitI4 1
  loc_CBA62E: LitI4 1
  loc_CBA633: LitVarStr var_19C, "0.00"
  loc_CBA638: FStVarCopyObj var_174
  loc_CBA63B: FLdRfVar var_174
  loc_CBA63E: FLdRfVar var_EC
  loc_CBA641: CStrVarTmp
  loc_CBA642: FStStrNoPop var_178
  loc_CBA645: CR8Str
  loc_CBA647: FLdRfVar var_130
  loc_CBA64A: CStrVarTmp
  loc_CBA64B: FStStrNoPop var_17C
  loc_CBA64E: CR8Str
  loc_CBA650: MulR8
  loc_CBA651: CVarR8
  loc_CBA655: FLdRfVar var_1AC
  loc_CBA658: ImpAdCallFPR4  = Format(, )
  loc_CBA65D: FLdRfVar var_1AC
  loc_CBA660: CStrVarTmp
  loc_CBA661: CVarStr var_210
  loc_CBA664: PopAdLdVar
  loc_CBA665: FLdPr Me
  loc_CBA668: VCallAd Control_ID_ServDevaFlex
  loc_CBA66B: FStAdFunc var_224
  loc_CBA66E: FLdPr var_224
  loc_CBA671: LateIdCallSt
  loc_CBA679: FFreeStr var_178 = ""
  loc_CBA680: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBA68F: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBA6A4: Branch loc_CBA7BF
  loc_CBA6A7: FLdPr Me
  loc_CBA6AA: VCallAd Control_ID_ServDevaFlex
  loc_CBA6AD: FStAdFunc var_88
  loc_CBA6B0: FLdPr var_88
  loc_CBA6B3: LateIdLdVar var_98 DispID_10 0
  loc_CBA6BA: CI4Var
  loc_CBA6BC: CVarI4
  loc_CBA6C0: PopAdLdVar
  loc_CBA6C1: LitVarI4
  loc_CBA6C9: PopAdLdVar
  loc_CBA6CA: FLdPr Me
  loc_CBA6CD: VCallAd Control_ID_ServDevaFlex
  loc_CBA6D0: FStAdFunc var_DC
  loc_CBA6D3: FLdPr var_DC
  loc_CBA6D6: LateIdCallLdVar
  loc_CBA6E0: CStrVarTmp
  loc_CBA6E1: CVarStr var_FC
  loc_CBA6E4: ImpAdCallI2 IsNumeric()
  loc_CBA6E9: FFreeAd var_88 = ""
  loc_CBA6F0: FFreeVar var_98 = "": var_EC = ""
  loc_CBA6F9: BranchF loc_CBA7BF
  loc_CBA6FC: FLdPr Me
  loc_CBA6FF: VCallAd Control_ID_ServDevaFlex
  loc_CBA702: FStAdFunc var_88
  loc_CBA705: FLdPr var_88
  loc_CBA708: LateIdLdVar var_98 DispID_10 0
  loc_CBA70F: CI4Var
  loc_CBA711: CVarI4
  loc_CBA715: PopAdLdVar
  loc_CBA716: LitVarI4
  loc_CBA71E: PopAdLdVar
  loc_CBA71F: FLdPr Me
  loc_CBA722: VCallAd Control_ID_ServDevaFlex
  loc_CBA725: FStAdFunc var_DC
  loc_CBA728: FLdPr var_DC
  loc_CBA72B: LateIdCallLdVar
  loc_CBA735: PopAd
  loc_CBA737: FLdPr Me
  loc_CBA73A: VCallAd Control_ID_ServDevaFlex
  loc_CBA73D: FStAdFunc var_120
  loc_CBA740: FLdPr var_120
  loc_CBA743: LateIdLdVar var_174 DispID_10 0
  loc_CBA74A: CI4Var
  loc_CBA74C: CVarI4
  loc_CBA750: PopAdLdVar
  loc_CBA751: LitVarI4
  loc_CBA759: PopAdLdVar
  loc_CBA75A: LitI4 1
  loc_CBA75F: LitI4 1
  loc_CBA764: LitVarStr var_11C, "0.00"
  loc_CBA769: FStVarCopyObj var_130
  loc_CBA76C: FLdRfVar var_130
  loc_CBA76F: FLdRfVar var_EC
  loc_CBA772: CStrVarTmp
  loc_CBA773: FStStrNoPop var_178
  loc_CBA776: CR8Str
  loc_CBA778: CVarR8
  loc_CBA77C: FLdRfVar var_164
  loc_CBA77F: ImpAdCallFPR4  = Format(, )
  loc_CBA784: FLdRfVar var_164
  loc_CBA787: CStrVarTmp
  loc_CBA788: CVarStr var_1AC
  loc_CBA78B: PopAdLdVar
  loc_CBA78C: FLdPr Me
  loc_CBA78F: VCallAd Control_ID_ServDevaFlex
  loc_CBA792: FStAdFunc var_154
  loc_CBA795: FLdPr var_154
  loc_CBA798: LateIdCallSt
  loc_CBA7A0: FFree1Str var_178
  loc_CBA7A3: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBA7AE: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBA7BF: FLdPr Me
  loc_CBA7C2: VCallAd Control_ID_ServDevaFlex
  loc_CBA7C5: FStAdFunc var_154
  loc_CBA7C8: FLdPr var_154
  loc_CBA7CB: LateIdLdVar var_98 DispID_10 0
  loc_CBA7D2: CI4Var
  loc_CBA7D4: CVarI4
  loc_CBA7D8: PopAdLdVar
  loc_CBA7D9: LitVarI4
  loc_CBA7E1: PopAdLdVar
  loc_CBA7E2: FLdRfVar var_EC
  loc_CBA7E5: FLdRfVar var_120
  loc_CBA7E8: LitVarStr var_A8, "PeriInfo"
  loc_CBA7ED: PopAdLdVar
  loc_CBA7EE: FLdRfVar var_DC
  loc_CBA7F1: FLdRfVar var_88
  loc_CBA7F4: FLdPr Me
  loc_CBA7F7: MemLdRfVar from_stack_1.global_56
  loc_CBA7FA: NewIfNullPr clsservdeva
  loc_CBA7FD: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA802: FLdPr var_88
  loc_CBA805:  = Me.Fields
  loc_CBA80A: FLdPr var_DC
  loc_CBA80D: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA812: FLdPr var_120
  loc_CBA815:  = Me.Value
  loc_CBA81A: FLdRfVar var_EC
  loc_CBA81D: CStrVarTmp
  loc_CBA81E: CVarStr var_FC
  loc_CBA821: PopAdLdVar
  loc_CBA822: FLdPr Me
  loc_CBA825: VCallAd Control_ID_ServDevaFlex
  loc_CBA828: FStAdFunc var_1B0
  loc_CBA82B: FLdPr var_1B0
  loc_CBA82E: LateIdCallSt
  loc_CBA836: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBA843: FFreeVar var_98 = "": var_EC = ""
  loc_CBA84C: FLdPr Me
  loc_CBA84F: VCallAd Control_ID_ServDevaFlex
  loc_CBA852: FStAdFunc var_154
  loc_CBA855: FLdPr var_154
  loc_CBA858: LateIdLdVar var_98 DispID_10 0
  loc_CBA85F: CI4Var
  loc_CBA861: CVarI4
  loc_CBA865: PopAdLdVar
  loc_CBA866: LitVarI4
  loc_CBA86E: PopAdLdVar
  loc_CBA86F: FLdRfVar var_EC
  loc_CBA872: FLdRfVar var_120
  loc_CBA875: LitVarStr var_A8, "CodiConc"
  loc_CBA87A: PopAdLdVar
  loc_CBA87B: FLdRfVar var_DC
  loc_CBA87E: FLdRfVar var_88
  loc_CBA881: FLdPr Me
  loc_CBA884: MemLdRfVar from_stack_1.global_56
  loc_CBA887: NewIfNullPr clsservdeva
  loc_CBA88A: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA88F: FLdPr var_88
  loc_CBA892:  = Me.Fields
  loc_CBA897: FLdPr var_DC
  loc_CBA89A: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA89F: FLdPr var_120
  loc_CBA8A2:  = Me.Value
  loc_CBA8A7: FLdRfVar var_EC
  loc_CBA8AA: CStrVarTmp
  loc_CBA8AB: CVarStr var_FC
  loc_CBA8AE: PopAdLdVar
  loc_CBA8AF: FLdPr Me
  loc_CBA8B2: VCallAd Control_ID_ServDevaFlex
  loc_CBA8B5: FStAdFunc var_1B0
  loc_CBA8B8: FLdPr var_1B0
  loc_CBA8BB: LateIdCallSt
  loc_CBA8C3: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBA8D0: FFreeVar var_98 = "": var_EC = ""
  loc_CBA8D9: FLdPr Me
  loc_CBA8DC: VCallAd Control_ID_ServDevaFlex
  loc_CBA8DF: FStAdFunc var_154
  loc_CBA8E2: FLdPr var_154
  loc_CBA8E5: LateIdLdVar var_98 DispID_10 0
  loc_CBA8EC: CI4Var
  loc_CBA8EE: CVarI4
  loc_CBA8F2: PopAdLdVar
  loc_CBA8F3: LitVarI4
  loc_CBA8FB: PopAdLdVar
  loc_CBA8FC: FLdRfVar var_EC
  loc_CBA8FF: FLdRfVar var_120
  loc_CBA902: LitVarStr var_A8, "TiafConc"
  loc_CBA907: PopAdLdVar
  loc_CBA908: FLdRfVar var_DC
  loc_CBA90B: FLdRfVar var_88
  loc_CBA90E: FLdPr Me
  loc_CBA911: MemLdRfVar from_stack_1.global_56
  loc_CBA914: NewIfNullPr clsservdeva
  loc_CBA917: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBA91C: FLdPr var_88
  loc_CBA91F:  = Me.Fields
  loc_CBA924: FLdPr var_DC
  loc_CBA927: from_stack_2 = Me.Item(from_stack_1)
  loc_CBA92C: FLdPr var_120
  loc_CBA92F:  = Me.Value
  loc_CBA934: FLdRfVar var_EC
  loc_CBA937: CStrVarTmp
  loc_CBA938: CVarStr var_FC
  loc_CBA93B: PopAdLdVar
  loc_CBA93C: FLdPr Me
  loc_CBA93F: VCallAd Control_ID_ServDevaFlex
  loc_CBA942: FStAdFunc var_1B0
  loc_CBA945: FLdPr var_1B0
  loc_CBA948: LateIdCallSt
  loc_CBA950: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBA95D: FFreeVar var_98 = "": var_EC = ""
  loc_CBA966: Branch loc_CBAB5A
  loc_CBA969: FLdPr Me
  loc_CBA96C: VCallAd Control_ID_ServDevaFlex
  loc_CBA96F: FStAdFunc var_88
  loc_CBA972: FLdPr var_88
  loc_CBA975: LateIdLdVar var_98 DispID_10 0
  loc_CBA97C: CI4Var
  loc_CBA97E: CVarI4
  loc_CBA982: PopAdLdVar
  loc_CBA983: LitVarI4
  loc_CBA98B: PopAdLdVar
  loc_CBA98C: LitVarStr var_10C, vbNullString
  loc_CBA991: PopAdLdVar
  loc_CBA992: FLdPr Me
  loc_CBA995: VCallAd Control_ID_ServDevaFlex
  loc_CBA998: FStAdFunc var_DC
  loc_CBA99B: FLdPr var_DC
  loc_CBA99E: LateIdCallSt
  loc_CBA9A6: FFreeAd var_88 = ""
  loc_CBA9AD: FFree1Var var_98 = ""
  loc_CBA9B0: FLdPr Me
  loc_CBA9B3: VCallAd Control_ID_ServDevaFlex
  loc_CBA9B6: FStAdFunc var_88
  loc_CBA9B9: FLdPr var_88
  loc_CBA9BC: LateIdLdVar var_98 DispID_10 0
  loc_CBA9C3: CI4Var
  loc_CBA9C5: CVarI4
  loc_CBA9C9: PopAdLdVar
  loc_CBA9CA: LitVarI4
  loc_CBA9D2: PopAdLdVar
  loc_CBA9D3: LitVarStr var_10C, vbNullString
  loc_CBA9D8: PopAdLdVar
  loc_CBA9D9: FLdPr Me
  loc_CBA9DC: VCallAd Control_ID_ServDevaFlex
  loc_CBA9DF: FStAdFunc var_DC
  loc_CBA9E2: FLdPr var_DC
  loc_CBA9E5: LateIdCallSt
  loc_CBA9ED: FFreeAd var_88 = ""
  loc_CBA9F4: FFree1Var var_98 = ""
  loc_CBA9F7: FLdPr Me
  loc_CBA9FA: VCallAd Control_ID_ServDevaFlex
  loc_CBA9FD: FStAdFunc var_88
  loc_CBAA00: FLdPr var_88
  loc_CBAA03: LateIdLdVar var_98 DispID_10 0
  loc_CBAA0A: CI4Var
  loc_CBAA0C: CVarI4
  loc_CBAA10: PopAdLdVar
  loc_CBAA11: LitVarI4
  loc_CBAA19: PopAdLdVar
  loc_CBAA1A: LitVarStr var_10C, vbNullString
  loc_CBAA1F: PopAdLdVar
  loc_CBAA20: FLdPr Me
  loc_CBAA23: VCallAd Control_ID_ServDevaFlex
  loc_CBAA26: FStAdFunc var_DC
  loc_CBAA29: FLdPr var_DC
  loc_CBAA2C: LateIdCallSt
  loc_CBAA34: FFreeAd var_88 = ""
  loc_CBAA3B: FFree1Var var_98 = ""
  loc_CBAA3E: FLdPr Me
  loc_CBAA41: VCallAd Control_ID_ServDevaFlex
  loc_CBAA44: FStAdFunc var_88
  loc_CBAA47: FLdPr var_88
  loc_CBAA4A: LateIdLdVar var_98 DispID_10 0
  loc_CBAA51: CI4Var
  loc_CBAA53: CVarI4
  loc_CBAA57: PopAdLdVar
  loc_CBAA58: LitVarI4
  loc_CBAA60: PopAdLdVar
  loc_CBAA61: LitVarStr var_10C, vbNullString
  loc_CBAA66: PopAdLdVar
  loc_CBAA67: FLdPr Me
  loc_CBAA6A: VCallAd Control_ID_ServDevaFlex
  loc_CBAA6D: FStAdFunc var_DC
  loc_CBAA70: FLdPr var_DC
  loc_CBAA73: LateIdCallSt
  loc_CBAA7B: FFreeAd var_88 = ""
  loc_CBAA82: FFree1Var var_98 = ""
  loc_CBAA85: FLdPr Me
  loc_CBAA88: VCallAd Control_ID_ServDevaFlex
  loc_CBAA8B: FStAdFunc var_88
  loc_CBAA8E: FLdPr var_88
  loc_CBAA91: LateIdLdVar var_98 DispID_10 0
  loc_CBAA98: CI4Var
  loc_CBAA9A: CVarI4
  loc_CBAA9E: PopAdLdVar
  loc_CBAA9F: LitVarI4
  loc_CBAAA7: PopAdLdVar
  loc_CBAAA8: LitVarStr var_10C, vbNullString
  loc_CBAAAD: PopAdLdVar
  loc_CBAAAE: FLdPr Me
  loc_CBAAB1: VCallAd Control_ID_ServDevaFlex
  loc_CBAAB4: FStAdFunc var_DC
  loc_CBAAB7: FLdPr var_DC
  loc_CBAABA: LateIdCallSt
  loc_CBAAC2: FFreeAd var_88 = ""
  loc_CBAAC9: FFree1Var var_98 = ""
  loc_CBAACC: FLdPr Me
  loc_CBAACF: VCallAd Control_ID_ServDevaFlex
  loc_CBAAD2: FStAdFunc var_88
  loc_CBAAD5: FLdPr var_88
  loc_CBAAD8: LateIdLdVar var_98 DispID_10 0
  loc_CBAADF: CI4Var
  loc_CBAAE1: CVarI4
  loc_CBAAE5: PopAdLdVar
  loc_CBAAE6: LitVarI4
  loc_CBAAEE: PopAdLdVar
  loc_CBAAEF: LitVarStr var_10C, vbNullString
  loc_CBAAF4: PopAdLdVar
  loc_CBAAF5: FLdPr Me
  loc_CBAAF8: VCallAd Control_ID_ServDevaFlex
  loc_CBAAFB: FStAdFunc var_DC
  loc_CBAAFE: FLdPr var_DC
  loc_CBAB01: LateIdCallSt
  loc_CBAB09: FFreeAd var_88 = ""
  loc_CBAB10: FFree1Var var_98 = ""
  loc_CBAB13: FLdPr Me
  loc_CBAB16: VCallAd Control_ID_ServDevaFlex
  loc_CBAB19: FStAdFunc var_88
  loc_CBAB1C: FLdPr var_88
  loc_CBAB1F: LateIdLdVar var_98 DispID_10 0
  loc_CBAB26: CI4Var
  loc_CBAB28: CVarI4
  loc_CBAB2C: PopAdLdVar
  loc_CBAB2D: LitVarI4
  loc_CBAB35: PopAdLdVar
  loc_CBAB36: LitVarStr var_10C, vbNullString
  loc_CBAB3B: PopAdLdVar
  loc_CBAB3C: FLdPr Me
  loc_CBAB3F: VCallAd Control_ID_ServDevaFlex
  loc_CBAB42: FStAdFunc var_DC
  loc_CBAB45: FLdPr var_DC
  loc_CBAB48: LateIdCallSt
  loc_CBAB50: FFreeAd var_88 = ""
  loc_CBAB57: FFree1Var var_98 = ""
  loc_CBAB5A: ImpAdLdUI1
  loc_CBAB5E: CI2UI1
  loc_CBAB60: LitI2_Byte 3
  loc_CBAB62: EqI2
  loc_CBAB63: BranchF loc_CBB926
  loc_CBAB66: LitStr "SELECT DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_CBAB69: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_CBAB6C: ConcatStr
  loc_CBAB6D: FStStrNoPop var_178
  loc_CBAB70: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_CBAB73: ConcatStr
  loc_CBAB74: FStStrNoPop var_17C
  loc_CBAB77: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CBAB7A: ConcatStr
  loc_CBAB7B: FStStrNoPop var_228
  loc_CBAB7E: LitStr " WHERE servdeva.PeriOrde = "
  loc_CBAB81: ConcatStr
  loc_CBAB82: FStStrNoPop var_22C
  loc_CBAB85: ImpAdLdI2 MemVar_D93036
  loc_CBAB88: CStrUI1
  loc_CBAB8A: FStStrNoPop var_230
  loc_CBAB8D: ConcatStr
  loc_CBAB8E: FStStrNoPop var_234
  loc_CBAB91: LitStr " AND CodiSede = "
  loc_CBAB94: ConcatStr
  loc_CBAB95: FStStrNoPop var_238
  loc_CBAB98: FLdPr Me
  loc_CBAB9B: VCallAd Control_ID_ServDevaFlex
  loc_CBAB9E: FStAdFunc var_88
  loc_CBABA1: FLdPr var_88
  loc_CBABA4: LateIdLdVar var_98 DispID_10 0
  loc_CBABAB: CI4Var
  loc_CBABAD: CVarI4
  loc_CBABB1: PopAdLdVar
  loc_CBABB2: LitVarI4
  loc_CBABBA: PopAdLdVar
  loc_CBABBB: FLdPr Me
  loc_CBABBE: VCallAd Control_ID_ServDevaFlex
  loc_CBABC1: FStAdFunc var_DC
  loc_CBABC4: FLdPr var_DC
  loc_CBABC7: LateIdCallLdVar
  loc_CBABD1: CStrVarTmp
  loc_CBABD2: FStStrNoPop var_23C
  loc_CBABD5: ConcatStr
  loc_CBABD6: FStStrNoPop var_240
  loc_CBABD9: LitStr " AND CtctSede = '1'"
  loc_CBABDC: ConcatStr
  loc_CBABDD: FStStrNoPop var_244
  loc_CBABE0: FLdPr Me
  loc_CBABE3: MemLdRfVar from_stack_1.global_56
  loc_CBABE6: NewIfNullPr clsservdeva
  loc_CBABE9: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CBABEE: FFreeStr var_178 = "": var_17C = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = ""
  loc_CBAC05: FFreeAd var_88 = ""
  loc_CBAC0C: FFreeVar var_98 = ""
  loc_CBAC13: FLdRfVar var_24C
  loc_CBAC16: FLdRfVar var_88
  loc_CBAC19: FLdPr Me
  loc_CBAC1C: MemLdRfVar from_stack_1.global_56
  loc_CBAC1F: NewIfNullPr clsservdeva
  loc_CBAC22: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAC27: FLdPr var_88
  loc_CBAC2A:  = Me.RecordCount
  loc_CBAC2F: ILdRf var_24C
  loc_CBAC32: LitI4 0
  loc_CBAC37: GtI4
  loc_CBAC38: FFree1Ad var_88
  loc_CBAC3B: BranchF loc_CBB735
  loc_CBAC3E: FLdRfVar var_98
  loc_CBAC41: FLdRfVar var_120
  loc_CBAC44: LitVarStr var_A8, "PeriInfo"
  loc_CBAC49: PopAdLdVar
  loc_CBAC4A: FLdRfVar var_DC
  loc_CBAC4D: FLdRfVar var_88
  loc_CBAC50: FLdPr Me
  loc_CBAC53: MemLdRfVar from_stack_1.global_56
  loc_CBAC56: NewIfNullPr clsservdeva
  loc_CBAC59: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAC5E: FLdPr var_88
  loc_CBAC61:  = Me.Fields
  loc_CBAC66: FLdPr var_DC
  loc_CBAC69: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAC6E: FLdPr var_120
  loc_CBAC71:  = Me.Value
  loc_CBAC76: FLdRfVar var_98
  loc_CBAC79: FnCIntVar
  loc_CBAC7B: ImpAdLdI2 MemVar_D93034
  loc_CBAC7E: NeI2
  loc_CBAC7F: FFreeAd var_88 = "": var_DC = ""
  loc_CBAC88: FFree1Var var_98 = ""
  loc_CBAC8B: BranchF loc_CBACB1
  loc_CBAC8E: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CBAC91: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBAC96: FLdPr Me
  loc_CBAC99: VCallAd Control_ID_ServDevaFlex
  loc_CBAC9C: FStAdFunc var_88
  loc_CBAC9F: FLdPr var_88
  loc_CBACA2: LateIdCall
  loc_CBACAA: FFree1Ad var_88
  loc_CBACAD: ExitProcHresult
  loc_CBACAE: Branch loc_CBB732
  loc_CBACB1: FLdRfVar var_98
  loc_CBACB4: FLdRfVar var_120
  loc_CBACB7: LitVarStr var_A8, "PeriInfo"
  loc_CBACBC: PopAdLdVar
  loc_CBACBD: FLdRfVar var_DC
  loc_CBACC0: FLdRfVar var_88
  loc_CBACC3: FLdPr Me
  loc_CBACC6: MemLdRfVar from_stack_1.global_56
  loc_CBACC9: NewIfNullPr clsservdeva
  loc_CBACCC: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBACD1: FLdPr var_88
  loc_CBACD4:  = Me.Fields
  loc_CBACD9: FLdPr var_DC
  loc_CBACDC: from_stack_2 = Me.Item(from_stack_1)
  loc_CBACE1: FLdPr var_120
  loc_CBACE4:  = Me.Value
  loc_CBACE9: FLdRfVar var_EC
  loc_CBACEC: FLdRfVar var_224
  loc_CBACEF: LitVarStr var_B8, "CodiConc"
  loc_CBACF4: PopAdLdVar
  loc_CBACF5: FLdRfVar var_1B0
  loc_CBACF8: FLdRfVar var_154
  loc_CBACFB: FLdPr Me
  loc_CBACFE: MemLdRfVar from_stack_1.global_56
  loc_CBAD01: NewIfNullPr clsservdeva
  loc_CBAD04: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAD09: FLdPr var_154
  loc_CBAD0C:  = Me.Fields
  loc_CBAD11: FLdPr var_1B0
  loc_CBAD14: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAD19: FLdPr var_224
  loc_CBAD1C:  = Me.Value
  loc_CBAD21: FLdRfVar var_EC
  loc_CBAD24: CStrVarTmp
  loc_CBAD25: FStStrNoPop var_178
  loc_CBAD28: FLdRfVar var_98
  loc_CBAD2B: CI2Var
  loc_CBAD2C: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CBAD31: FStStrNoPop var_17C
  loc_CBAD34: LitStr vbNullString
  loc_CBAD37: EqStr
  loc_CBAD39: FFreeStr var_178 = ""
  loc_CBAD40: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_1B0 = "": var_120 = ""
  loc_CBAD4F: FFreeVar var_98 = ""
  loc_CBAD56: BranchF loc_CBADC8
  loc_CBAD59: LitVarStr var_B8, "El recurso: "
  loc_CBAD5E: FLdRfVar var_98
  loc_CBAD61: FLdRfVar var_120
  loc_CBAD64: LitVarStr var_A8, "CodiConc"
  loc_CBAD69: PopAdLdVar
  loc_CBAD6A: FLdRfVar var_DC
  loc_CBAD6D: FLdRfVar var_88
  loc_CBAD70: FLdPr Me
  loc_CBAD73: MemLdRfVar from_stack_1.global_56
  loc_CBAD76: NewIfNullPr clsservdeva
  loc_CBAD79: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAD7E: FLdPr var_88
  loc_CBAD81:  = Me.Fields
  loc_CBAD86: FLdPr var_DC
  loc_CBAD89: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAD8E: FLdPr var_120
  loc_CBAD91:  = Me.Value
  loc_CBAD96: FLdRfVar var_98
  loc_CBAD99: ConcatVar var_EC
  loc_CBAD9D: LitVarStr var_C8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBADA2: ConcatVar var_FC
  loc_CBADA6: CStrVarVal var_178
  loc_CBADAA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBADAF: FFree1Str var_178
  loc_CBADB2: FFreeAd var_88 = "": var_DC = ""
  loc_CBADBB: FFreeVar var_98 = "": var_EC = ""
  loc_CBADC4: ExitProcHresult
  loc_CBADC5: Branch loc_CBB732
  loc_CBADC8: FLdRfVar var_98
  loc_CBADCB: FLdRfVar var_120
  loc_CBADCE: LitVarStr var_A8, "TiafConc"
  loc_CBADD3: PopAdLdVar
  loc_CBADD4: FLdRfVar var_DC
  loc_CBADD7: FLdRfVar var_88
  loc_CBADDA: FLdPr Me
  loc_CBADDD: MemLdRfVar from_stack_1.global_56
  loc_CBADE0: NewIfNullPr clsservdeva
  loc_CBADE3: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBADE8: FLdPr var_88
  loc_CBADEB:  = Me.Fields
  loc_CBADF0: FLdPr var_DC
  loc_CBADF3: from_stack_2 = Me.Item(from_stack_1)
  loc_CBADF8: FLdPr var_120
  loc_CBADFB:  = Me.Value
  loc_CBAE00: FLdRfVar var_98
  loc_CBAE03: LitVarI2 var_B8, 0
  loc_CBAE08: HardType
  loc_CBAE09: EqVarBool
  loc_CBAE0B: FFreeAd var_88 = "": var_DC = ""
  loc_CBAE14: FFree1Var var_98 = ""
  loc_CBAE17: BranchF loc_CBAE26
  loc_CBAE1A: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBAE1D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBAE22: ExitProcHresult
  loc_CBAE23: Branch loc_CBB732
  loc_CBAE26: FLdPr Me
  loc_CBAE29: VCallAd Control_ID_ServDevaFlex
  loc_CBAE2C: FStAdFunc var_154
  loc_CBAE2F: FLdPr var_154
  loc_CBAE32: LateIdLdVar var_98 DispID_10 0
  loc_CBAE39: CI4Var
  loc_CBAE3B: CVarI4
  loc_CBAE3F: PopAdLdVar
  loc_CBAE40: LitVarI4
  loc_CBAE48: PopAdLdVar
  loc_CBAE49: FLdRfVar var_EC
  loc_CBAE4C: FLdRfVar var_120
  loc_CBAE4F: LitVarStr var_A8, "VariSede"
  loc_CBAE54: PopAdLdVar
  loc_CBAE55: FLdRfVar var_DC
  loc_CBAE58: FLdRfVar var_88
  loc_CBAE5B: FLdPr Me
  loc_CBAE5E: MemLdRfVar from_stack_1.global_56
  loc_CBAE61: NewIfNullPr clsservdeva
  loc_CBAE64: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAE69: FLdPr var_88
  loc_CBAE6C:  = Me.Fields
  loc_CBAE71: FLdPr var_DC
  loc_CBAE74: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAE79: FLdPr var_120
  loc_CBAE7C:  = Me.Value
  loc_CBAE81: FLdRfVar var_EC
  loc_CBAE84: CStrVarTmp
  loc_CBAE85: CVarStr var_FC
  loc_CBAE88: PopAdLdVar
  loc_CBAE89: FLdPr Me
  loc_CBAE8C: VCallAd Control_ID_ServDevaFlex
  loc_CBAE8F: FStAdFunc var_1B0
  loc_CBAE92: FLdPr var_1B0
  loc_CBAE95: LateIdCallSt
  loc_CBAE9D: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBAEAA: FFreeVar var_98 = "": var_EC = ""
  loc_CBAEB3: FLdPr Me
  loc_CBAEB6: VCallAd Control_ID_ServDevaFlex
  loc_CBAEB9: FStAdFunc var_154
  loc_CBAEBC: FLdPr var_154
  loc_CBAEBF: LateIdLdVar var_98 DispID_10 0
  loc_CBAEC6: CI4Var
  loc_CBAEC8: CVarI4
  loc_CBAECC: PopAdLdVar
  loc_CBAECD: LitVarI4
  loc_CBAED5: PopAdLdVar
  loc_CBAED6: FLdRfVar var_EC
  loc_CBAED9: FLdRfVar var_120
  loc_CBAEDC: LitVarStr var_A8, "DetaSede"
  loc_CBAEE1: PopAdLdVar
  loc_CBAEE2: FLdRfVar var_DC
  loc_CBAEE5: FLdRfVar var_88
  loc_CBAEE8: FLdPr Me
  loc_CBAEEB: MemLdRfVar from_stack_1.global_56
  loc_CBAEEE: NewIfNullPr clsservdeva
  loc_CBAEF1: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAEF6: FLdPr var_88
  loc_CBAEF9:  = Me.Fields
  loc_CBAEFE: FLdPr var_DC
  loc_CBAF01: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAF06: FLdPr var_120
  loc_CBAF09:  = Me.Value
  loc_CBAF0E: FLdRfVar var_EC
  loc_CBAF11: CStrVarTmp
  loc_CBAF12: CVarStr var_FC
  loc_CBAF15: PopAdLdVar
  loc_CBAF16: FLdPr Me
  loc_CBAF19: VCallAd Control_ID_ServDevaFlex
  loc_CBAF1C: FStAdFunc var_1B0
  loc_CBAF1F: FLdPr var_1B0
  loc_CBAF22: LateIdCallSt
  loc_CBAF2A: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBAF37: FFreeVar var_98 = "": var_EC = ""
  loc_CBAF40: FLdPr Me
  loc_CBAF43: VCallAd Control_ID_ServDevaFlex
  loc_CBAF46: FStAdFunc var_88
  loc_CBAF49: FLdPr var_88
  loc_CBAF4C: LateIdLdVar var_98 DispID_10 0
  loc_CBAF53: CI4Var
  loc_CBAF55: CVarI4
  loc_CBAF59: PopAdLdVar
  loc_CBAF5A: LitVarI4
  loc_CBAF62: PopAdLdVar
  loc_CBAF63: FLdPr Me
  loc_CBAF66: VCallAd Control_ID_ServDevaFlex
  loc_CBAF69: FStAdFunc var_DC
  loc_CBAF6C: FLdPr var_DC
  loc_CBAF6F: LateIdCallLdVar
  loc_CBAF79: CStrVarTmp
  loc_CBAF7A: FStStrNoPop var_178
  loc_CBAF7D: LitStr "0"
  loc_CBAF80: EqStr
  loc_CBAF82: FFree1Str var_178
  loc_CBAF85: FFreeAd var_88 = ""
  loc_CBAF8C: FFreeVar var_98 = ""
  loc_CBAF93: BranchF loc_CBB041
  loc_CBAF96: FLdRfVar var_120
  loc_CBAF99: LitVarStr var_A8, "ImpoSede"
  loc_CBAF9E: PopAdLdVar
  loc_CBAF9F: FLdRfVar var_DC
  loc_CBAFA2: FLdRfVar var_88
  loc_CBAFA5: FLdPr Me
  loc_CBAFA8: MemLdRfVar from_stack_1.global_56
  loc_CBAFAB: NewIfNullPr clsservdeva
  loc_CBAFAE: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBAFB3: FLdPr var_88
  loc_CBAFB6:  = Me.Fields
  loc_CBAFBB: FLdPr var_DC
  loc_CBAFBE: from_stack_2 = Me.Item(from_stack_1)
  loc_CBAFC3: FLdPr Me
  loc_CBAFC6: VCallAd Control_ID_ServDevaFlex
  loc_CBAFC9: FStAdFunc var_154
  loc_CBAFCC: FLdPr var_154
  loc_CBAFCF: LateIdLdVar var_130 DispID_10 0
  loc_CBAFD6: CI4Var
  loc_CBAFD8: CVarI4
  loc_CBAFDC: PopAdLdVar
  loc_CBAFDD: LitVarI4
  loc_CBAFE5: PopAdLdVar
  loc_CBAFE6: LitI4 1
  loc_CBAFEB: LitI4 1
  loc_CBAFF0: LitVarStr var_B8, "0.00"
  loc_CBAFF5: FStVarCopyObj var_EC
  loc_CBAFF8: FLdRfVar var_EC
  loc_CBAFFB: FLdZeroAd var_120
  loc_CBAFFE: CVarAd
  loc_CBB002: FLdRfVar var_FC
  loc_CBB005: ImpAdCallFPR4  = Format(, )
  loc_CBB00A: FLdRfVar var_FC
  loc_CBB00D: CStrVarTmp
  loc_CBB00E: CVarStr var_164
  loc_CBB011: PopAdLdVar
  loc_CBB012: FLdPr Me
  loc_CBB015: VCallAd Control_ID_ServDevaFlex
  loc_CBB018: FStAdFunc var_1B0
  loc_CBB01B: FLdPr var_1B0
  loc_CBB01E: LateIdCallSt
  loc_CBB026: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBB031: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBB03E: Branch loc_CBB2BA
  loc_CBB041: FLdPr Me
  loc_CBB044: VCallAd Control_ID_ServDevaFlex
  loc_CBB047: FStAdFunc var_88
  loc_CBB04A: FLdPr var_88
  loc_CBB04D: LateIdLdVar var_98 DispID_10 0
  loc_CBB054: CI4Var
  loc_CBB056: CVarI4
  loc_CBB05A: PopAdLdVar
  loc_CBB05B: LitVarI4
  loc_CBB063: PopAdLdVar
  loc_CBB064: FLdPr Me
  loc_CBB067: VCallAd Control_ID_ServDevaFlex
  loc_CBB06A: FStAdFunc var_DC
  loc_CBB06D: FLdPr var_DC
  loc_CBB070: LateIdCallLdVar
  loc_CBB07A: CStrVarTmp
  loc_CBB07B: FStStrNoPop var_178
  loc_CBB07E: LitStr "1"
  loc_CBB081: EqStr
  loc_CBB083: FLdRfVar var_FC
  loc_CBB086: FLdRfVar var_1B0
  loc_CBB089: LitVarStr var_10C, "ImpoSede"
  loc_CBB08E: PopAdLdVar
  loc_CBB08F: FLdRfVar var_154
  loc_CBB092: FLdRfVar var_120
  loc_CBB095: FLdPr Me
  loc_CBB098: MemLdRfVar from_stack_1.global_56
  loc_CBB09B: NewIfNullPr clsservdeva
  loc_CBB09E: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB0A3: FLdPr var_120
  loc_CBB0A6:  = Me.Fields
  loc_CBB0AB: FLdPr var_154
  loc_CBB0AE: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB0B3: FLdPr var_1B0
  loc_CBB0B6:  = Me.Value
  loc_CBB0BB: FLdRfVar var_FC
  loc_CBB0BE: FnCDblVar
  loc_CBB0C0: LitI2_Byte 0
  loc_CBB0C2: CR8I2
  loc_CBB0C3: EqR4
  loc_CBB0C4: AndI4
  loc_CBB0C5: FFree1Str var_178
  loc_CBB0C8: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBB0D5: FFreeVar var_98 = "": var_EC = ""
  loc_CBB0DE: BranchF loc_CBB172
  loc_CBB0E1: FLdPr Me
  loc_CBB0E4: VCallAd Control_ID_ServDevaFlex
  loc_CBB0E7: FStAdFunc var_88
  loc_CBB0EA: FLdPr var_88
  loc_CBB0ED: LateIdLdVar var_98 DispID_10 0
  loc_CBB0F4: CI4Var
  loc_CBB0F6: CVarI4
  loc_CBB0FA: PopAdLdVar
  loc_CBB0FB: LitVarI4
  loc_CBB103: PopAdLdVar
  loc_CBB104: LitVarStr var_10C, vbNullString
  loc_CBB109: PopAdLdVar
  loc_CBB10A: FLdPr Me
  loc_CBB10D: VCallAd Control_ID_ServDevaFlex
  loc_CBB110: FStAdFunc var_DC
  loc_CBB113: FLdPr var_DC
  loc_CBB116: LateIdCallSt
  loc_CBB11E: FFreeAd var_88 = ""
  loc_CBB125: FFree1Var var_98 = ""
  loc_CBB128: FLdPr Me
  loc_CBB12B: VCallAd Control_ID_ServDevaFlex
  loc_CBB12E: FStAdFunc var_88
  loc_CBB131: FLdPr var_88
  loc_CBB134: LateIdLdVar var_98 DispID_10 0
  loc_CBB13B: CI4Var
  loc_CBB13D: CVarI4
  loc_CBB141: PopAdLdVar
  loc_CBB142: LitVarI4
  loc_CBB14A: PopAdLdVar
  loc_CBB14B: LitVarStr var_10C, vbNullString
  loc_CBB150: PopAdLdVar
  loc_CBB151: FLdPr Me
  loc_CBB154: VCallAd Control_ID_ServDevaFlex
  loc_CBB157: FStAdFunc var_DC
  loc_CBB15A: FLdPr var_DC
  loc_CBB15D: LateIdCallSt
  loc_CBB165: FFreeAd var_88 = ""
  loc_CBB16C: FFree1Var var_98 = ""
  loc_CBB16F: Branch loc_CBB2BA
  loc_CBB172: FLdPr Me
  loc_CBB175: VCallAd Control_ID_ServDevaFlex
  loc_CBB178: FStAdFunc var_88
  loc_CBB17B: FLdPr var_88
  loc_CBB17E: LateIdLdVar var_98 DispID_10 0
  loc_CBB185: CI4Var
  loc_CBB187: CVarI4
  loc_CBB18B: PopAdLdVar
  loc_CBB18C: LitVarI4
  loc_CBB194: PopAdLdVar
  loc_CBB195: FLdPr Me
  loc_CBB198: VCallAd Control_ID_ServDevaFlex
  loc_CBB19B: FStAdFunc var_DC
  loc_CBB19E: FLdPr var_DC
  loc_CBB1A1: LateIdCallLdVar
  loc_CBB1AB: CStrVarTmp
  loc_CBB1AC: FStStrNoPop var_178
  loc_CBB1AF: LitStr "1"
  loc_CBB1B2: EqStr
  loc_CBB1B4: FLdRfVar var_FC
  loc_CBB1B7: FLdRfVar var_1B0
  loc_CBB1BA: LitVarStr var_10C, "ImpoSede"
  loc_CBB1BF: PopAdLdVar
  loc_CBB1C0: FLdRfVar var_154
  loc_CBB1C3: FLdRfVar var_120
  loc_CBB1C6: FLdPr Me
  loc_CBB1C9: MemLdRfVar from_stack_1.global_56
  loc_CBB1CC: NewIfNullPr clsservdeva
  loc_CBB1CF: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB1D4: FLdPr var_120
  loc_CBB1D7:  = Me.Fields
  loc_CBB1DC: FLdPr var_154
  loc_CBB1DF: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB1E4: FLdPr var_1B0
  loc_CBB1E7:  = Me.Value
  loc_CBB1EC: FLdRfVar var_FC
  loc_CBB1EF: FnCDblVar
  loc_CBB1F1: LitI2_Byte 0
  loc_CBB1F3: CR8I2
  loc_CBB1F4: GtR4
  loc_CBB1F5: AndI4
  loc_CBB1F6: FFree1Str var_178
  loc_CBB1F9: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBB206: FFreeVar var_98 = "": var_EC = ""
  loc_CBB20F: BranchF loc_CBB2BA
  loc_CBB212: FLdRfVar var_120
  loc_CBB215: LitVarStr var_A8, "ImpoSede"
  loc_CBB21A: PopAdLdVar
  loc_CBB21B: FLdRfVar var_DC
  loc_CBB21E: FLdRfVar var_88
  loc_CBB221: FLdPr Me
  loc_CBB224: MemLdRfVar from_stack_1.global_56
  loc_CBB227: NewIfNullPr clsservdeva
  loc_CBB22A: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB22F: FLdPr var_88
  loc_CBB232:  = Me.Fields
  loc_CBB237: FLdPr var_DC
  loc_CBB23A: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB23F: FLdPr Me
  loc_CBB242: VCallAd Control_ID_ServDevaFlex
  loc_CBB245: FStAdFunc var_154
  loc_CBB248: FLdPr var_154
  loc_CBB24B: LateIdLdVar var_130 DispID_10 0
  loc_CBB252: CI4Var
  loc_CBB254: CVarI4
  loc_CBB258: PopAdLdVar
  loc_CBB259: LitVarI4
  loc_CBB261: PopAdLdVar
  loc_CBB262: LitI4 1
  loc_CBB267: LitI4 1
  loc_CBB26C: LitVarStr var_B8, "0.00"
  loc_CBB271: FStVarCopyObj var_EC
  loc_CBB274: FLdRfVar var_EC
  loc_CBB277: FLdZeroAd var_120
  loc_CBB27A: CVarAd
  loc_CBB27E: FLdRfVar var_FC
  loc_CBB281: ImpAdCallFPR4  = Format(, )
  loc_CBB286: FLdRfVar var_FC
  loc_CBB289: CStrVarTmp
  loc_CBB28A: CVarStr var_164
  loc_CBB28D: PopAdLdVar
  loc_CBB28E: FLdPr Me
  loc_CBB291: VCallAd Control_ID_ServDevaFlex
  loc_CBB294: FStAdFunc var_1B0
  loc_CBB297: FLdPr var_1B0
  loc_CBB29A: LateIdCallSt
  loc_CBB2A2: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBB2AD: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBB2BA: FLdPr Me
  loc_CBB2BD: VCallAd Control_ID_ServDevaFlex
  loc_CBB2C0: FStAdFunc var_88
  loc_CBB2C3: FLdPr var_88
  loc_CBB2C6: LateIdLdVar var_98 DispID_10 0
  loc_CBB2CD: CI4Var
  loc_CBB2CF: CVarI4
  loc_CBB2D3: PopAdLdVar
  loc_CBB2D4: LitVarI4
  loc_CBB2DC: PopAdLdVar
  loc_CBB2DD: FLdPr Me
  loc_CBB2E0: VCallAd Control_ID_ServDevaFlex
  loc_CBB2E3: FStAdFunc var_DC
  loc_CBB2E6: FLdPr var_DC
  loc_CBB2E9: LateIdCallLdVar
  loc_CBB2F3: CStrVarTmp
  loc_CBB2F4: CVarStr var_FC
  loc_CBB2F7: ImpAdCallI2 IsNumeric()
  loc_CBB2FC: FLdPr Me
  loc_CBB2FF: VCallAd Control_ID_ServDevaFlex
  loc_CBB302: FStAdFunc var_120
  loc_CBB305: FLdPr var_120
  loc_CBB308: LateIdLdVar var_130 DispID_10 0
  loc_CBB30F: CI4Var
  loc_CBB311: CVarI4
  loc_CBB315: PopAdLdVar
  loc_CBB316: LitVarI4
  loc_CBB31E: PopAdLdVar
  loc_CBB31F: FLdPr Me
  loc_CBB322: VCallAd Control_ID_ServDevaFlex
  loc_CBB325: FStAdFunc var_154
  loc_CBB328: FLdPr var_154
  loc_CBB32B: LateIdCallLdVar
  loc_CBB335: CStrVarTmp
  loc_CBB336: CVarStr var_174
  loc_CBB339: ImpAdCallI2 IsNumeric()
  loc_CBB33E: AndI4
  loc_CBB33F: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBB34A: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBB359: BranchF loc_CBB473
  loc_CBB35C: FLdPr Me
  loc_CBB35F: VCallAd Control_ID_ServDevaFlex
  loc_CBB362: FStAdFunc var_88
  loc_CBB365: FLdPr var_88
  loc_CBB368: LateIdLdVar var_98 DispID_10 0
  loc_CBB36F: CI4Var
  loc_CBB371: CVarI4
  loc_CBB375: PopAdLdVar
  loc_CBB376: LitVarI4
  loc_CBB37E: PopAdLdVar
  loc_CBB37F: FLdPr Me
  loc_CBB382: VCallAd Control_ID_ServDevaFlex
  loc_CBB385: FStAdFunc var_DC
  loc_CBB388: FLdPr var_DC
  loc_CBB38B: LateIdCallLdVar
  loc_CBB395: PopAd
  loc_CBB397: FLdPr Me
  loc_CBB39A: VCallAd Control_ID_ServDevaFlex
  loc_CBB39D: FStAdFunc var_120
  loc_CBB3A0: FLdPr var_120
  loc_CBB3A3: LateIdLdVar var_FC DispID_10 0
  loc_CBB3AA: CI4Var
  loc_CBB3AC: CVarI4
  loc_CBB3B0: PopAdLdVar
  loc_CBB3B1: LitVarI4
  loc_CBB3B9: PopAdLdVar
  loc_CBB3BA: FLdPr Me
  loc_CBB3BD: VCallAd Control_ID_ServDevaFlex
  loc_CBB3C0: FStAdFunc var_154
  loc_CBB3C3: FLdPr var_154
  loc_CBB3C6: LateIdCallLdVar
  loc_CBB3D0: PopAd
  loc_CBB3D2: FLdPr Me
  loc_CBB3D5: VCallAd Control_ID_ServDevaFlex
  loc_CBB3D8: FStAdFunc var_1B0
  loc_CBB3DB: FLdPr var_1B0
  loc_CBB3DE: LateIdLdVar var_1C0 DispID_10 0
  loc_CBB3E5: CI4Var
  loc_CBB3E7: CVarI4
  loc_CBB3EB: PopAdLdVar
  loc_CBB3EC: LitVarI4
  loc_CBB3F4: PopAdLdVar
  loc_CBB3F5: LitI4 1
  loc_CBB3FA: LitI4 1
  loc_CBB3FF: LitVarStr var_19C, "0.00"
  loc_CBB404: FStVarCopyObj var_174
  loc_CBB407: FLdRfVar var_174
  loc_CBB40A: FLdRfVar var_EC
  loc_CBB40D: CStrVarTmp
  loc_CBB40E: FStStrNoPop var_178
  loc_CBB411: CR8Str
  loc_CBB413: FLdRfVar var_130
  loc_CBB416: CStrVarTmp
  loc_CBB417: FStStrNoPop var_17C
  loc_CBB41A: CR8Str
  loc_CBB41C: MulR8
  loc_CBB41D: CVarR8
  loc_CBB421: FLdRfVar var_1AC
  loc_CBB424: ImpAdCallFPR4  = Format(, )
  loc_CBB429: FLdRfVar var_1AC
  loc_CBB42C: CStrVarTmp
  loc_CBB42D: CVarStr var_210
  loc_CBB430: PopAdLdVar
  loc_CBB431: FLdPr Me
  loc_CBB434: VCallAd Control_ID_ServDevaFlex
  loc_CBB437: FStAdFunc var_224
  loc_CBB43A: FLdPr var_224
  loc_CBB43D: LateIdCallSt
  loc_CBB445: FFreeStr var_178 = ""
  loc_CBB44C: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBB45B: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBB470: Branch loc_CBB58B
  loc_CBB473: FLdPr Me
  loc_CBB476: VCallAd Control_ID_ServDevaFlex
  loc_CBB479: FStAdFunc var_88
  loc_CBB47C: FLdPr var_88
  loc_CBB47F: LateIdLdVar var_98 DispID_10 0
  loc_CBB486: CI4Var
  loc_CBB488: CVarI4
  loc_CBB48C: PopAdLdVar
  loc_CBB48D: LitVarI4
  loc_CBB495: PopAdLdVar
  loc_CBB496: FLdPr Me
  loc_CBB499: VCallAd Control_ID_ServDevaFlex
  loc_CBB49C: FStAdFunc var_DC
  loc_CBB49F: FLdPr var_DC
  loc_CBB4A2: LateIdCallLdVar
  loc_CBB4AC: CStrVarTmp
  loc_CBB4AD: CVarStr var_FC
  loc_CBB4B0: ImpAdCallI2 IsNumeric()
  loc_CBB4B5: FFreeAd var_88 = ""
  loc_CBB4BC: FFreeVar var_98 = "": var_EC = ""
  loc_CBB4C5: BranchF loc_CBB58B
  loc_CBB4C8: FLdPr Me
  loc_CBB4CB: VCallAd Control_ID_ServDevaFlex
  loc_CBB4CE: FStAdFunc var_88
  loc_CBB4D1: FLdPr var_88
  loc_CBB4D4: LateIdLdVar var_98 DispID_10 0
  loc_CBB4DB: CI4Var
  loc_CBB4DD: CVarI4
  loc_CBB4E1: PopAdLdVar
  loc_CBB4E2: LitVarI4
  loc_CBB4EA: PopAdLdVar
  loc_CBB4EB: FLdPr Me
  loc_CBB4EE: VCallAd Control_ID_ServDevaFlex
  loc_CBB4F1: FStAdFunc var_DC
  loc_CBB4F4: FLdPr var_DC
  loc_CBB4F7: LateIdCallLdVar
  loc_CBB501: PopAd
  loc_CBB503: FLdPr Me
  loc_CBB506: VCallAd Control_ID_ServDevaFlex
  loc_CBB509: FStAdFunc var_120
  loc_CBB50C: FLdPr var_120
  loc_CBB50F: LateIdLdVar var_174 DispID_10 0
  loc_CBB516: CI4Var
  loc_CBB518: CVarI4
  loc_CBB51C: PopAdLdVar
  loc_CBB51D: LitVarI4
  loc_CBB525: PopAdLdVar
  loc_CBB526: LitI4 1
  loc_CBB52B: LitI4 1
  loc_CBB530: LitVarStr var_11C, "0.00"
  loc_CBB535: FStVarCopyObj var_130
  loc_CBB538: FLdRfVar var_130
  loc_CBB53B: FLdRfVar var_EC
  loc_CBB53E: CStrVarTmp
  loc_CBB53F: FStStrNoPop var_178
  loc_CBB542: CR8Str
  loc_CBB544: CVarR8
  loc_CBB548: FLdRfVar var_164
  loc_CBB54B: ImpAdCallFPR4  = Format(, )
  loc_CBB550: FLdRfVar var_164
  loc_CBB553: CStrVarTmp
  loc_CBB554: CVarStr var_1AC
  loc_CBB557: PopAdLdVar
  loc_CBB558: FLdPr Me
  loc_CBB55B: VCallAd Control_ID_ServDevaFlex
  loc_CBB55E: FStAdFunc var_154
  loc_CBB561: FLdPr var_154
  loc_CBB564: LateIdCallSt
  loc_CBB56C: FFree1Str var_178
  loc_CBB56F: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBB57A: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBB58B: FLdPr Me
  loc_CBB58E: VCallAd Control_ID_ServDevaFlex
  loc_CBB591: FStAdFunc var_154
  loc_CBB594: FLdPr var_154
  loc_CBB597: LateIdLdVar var_98 DispID_10 0
  loc_CBB59E: CI4Var
  loc_CBB5A0: CVarI4
  loc_CBB5A4: PopAdLdVar
  loc_CBB5A5: LitVarI4
  loc_CBB5AD: PopAdLdVar
  loc_CBB5AE: FLdRfVar var_EC
  loc_CBB5B1: FLdRfVar var_120
  loc_CBB5B4: LitVarStr var_A8, "PeriInfo"
  loc_CBB5B9: PopAdLdVar
  loc_CBB5BA: FLdRfVar var_DC
  loc_CBB5BD: FLdRfVar var_88
  loc_CBB5C0: FLdPr Me
  loc_CBB5C3: MemLdRfVar from_stack_1.global_56
  loc_CBB5C6: NewIfNullPr clsservdeva
  loc_CBB5C9: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB5CE: FLdPr var_88
  loc_CBB5D1:  = Me.Fields
  loc_CBB5D6: FLdPr var_DC
  loc_CBB5D9: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB5DE: FLdPr var_120
  loc_CBB5E1:  = Me.Value
  loc_CBB5E6: FLdRfVar var_EC
  loc_CBB5E9: CStrVarTmp
  loc_CBB5EA: CVarStr var_FC
  loc_CBB5ED: PopAdLdVar
  loc_CBB5EE: FLdPr Me
  loc_CBB5F1: VCallAd Control_ID_ServDevaFlex
  loc_CBB5F4: FStAdFunc var_1B0
  loc_CBB5F7: FLdPr var_1B0
  loc_CBB5FA: LateIdCallSt
  loc_CBB602: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBB60F: FFreeVar var_98 = "": var_EC = ""
  loc_CBB618: FLdPr Me
  loc_CBB61B: VCallAd Control_ID_ServDevaFlex
  loc_CBB61E: FStAdFunc var_154
  loc_CBB621: FLdPr var_154
  loc_CBB624: LateIdLdVar var_98 DispID_10 0
  loc_CBB62B: CI4Var
  loc_CBB62D: CVarI4
  loc_CBB631: PopAdLdVar
  loc_CBB632: LitVarI4
  loc_CBB63A: PopAdLdVar
  loc_CBB63B: FLdRfVar var_EC
  loc_CBB63E: FLdRfVar var_120
  loc_CBB641: LitVarStr var_A8, "CodiConc"
  loc_CBB646: PopAdLdVar
  loc_CBB647: FLdRfVar var_DC
  loc_CBB64A: FLdRfVar var_88
  loc_CBB64D: FLdPr Me
  loc_CBB650: MemLdRfVar from_stack_1.global_56
  loc_CBB653: NewIfNullPr clsservdeva
  loc_CBB656: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB65B: FLdPr var_88
  loc_CBB65E:  = Me.Fields
  loc_CBB663: FLdPr var_DC
  loc_CBB666: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB66B: FLdPr var_120
  loc_CBB66E:  = Me.Value
  loc_CBB673: FLdRfVar var_EC
  loc_CBB676: CStrVarTmp
  loc_CBB677: CVarStr var_FC
  loc_CBB67A: PopAdLdVar
  loc_CBB67B: FLdPr Me
  loc_CBB67E: VCallAd Control_ID_ServDevaFlex
  loc_CBB681: FStAdFunc var_1B0
  loc_CBB684: FLdPr var_1B0
  loc_CBB687: LateIdCallSt
  loc_CBB68F: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBB69C: FFreeVar var_98 = "": var_EC = ""
  loc_CBB6A5: FLdPr Me
  loc_CBB6A8: VCallAd Control_ID_ServDevaFlex
  loc_CBB6AB: FStAdFunc var_154
  loc_CBB6AE: FLdPr var_154
  loc_CBB6B1: LateIdLdVar var_98 DispID_10 0
  loc_CBB6B8: CI4Var
  loc_CBB6BA: CVarI4
  loc_CBB6BE: PopAdLdVar
  loc_CBB6BF: LitVarI4
  loc_CBB6C7: PopAdLdVar
  loc_CBB6C8: FLdRfVar var_EC
  loc_CBB6CB: FLdRfVar var_120
  loc_CBB6CE: LitVarStr var_A8, "TiafConc"
  loc_CBB6D3: PopAdLdVar
  loc_CBB6D4: FLdRfVar var_DC
  loc_CBB6D7: FLdRfVar var_88
  loc_CBB6DA: FLdPr Me
  loc_CBB6DD: MemLdRfVar from_stack_1.global_56
  loc_CBB6E0: NewIfNullPr clsservdeva
  loc_CBB6E3: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBB6E8: FLdPr var_88
  loc_CBB6EB:  = Me.Fields
  loc_CBB6F0: FLdPr var_DC
  loc_CBB6F3: from_stack_2 = Me.Item(from_stack_1)
  loc_CBB6F8: FLdPr var_120
  loc_CBB6FB:  = Me.Value
  loc_CBB700: FLdRfVar var_EC
  loc_CBB703: CStrVarTmp
  loc_CBB704: CVarStr var_FC
  loc_CBB707: PopAdLdVar
  loc_CBB708: FLdPr Me
  loc_CBB70B: VCallAd Control_ID_ServDevaFlex
  loc_CBB70E: FStAdFunc var_1B0
  loc_CBB711: FLdPr var_1B0
  loc_CBB714: LateIdCallSt
  loc_CBB71C: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBB729: FFreeVar var_98 = "": var_EC = ""
  loc_CBB732: Branch loc_CBB926
  loc_CBB735: FLdPr Me
  loc_CBB738: VCallAd Control_ID_ServDevaFlex
  loc_CBB73B: FStAdFunc var_88
  loc_CBB73E: FLdPr var_88
  loc_CBB741: LateIdLdVar var_98 DispID_10 0
  loc_CBB748: CI4Var
  loc_CBB74A: CVarI4
  loc_CBB74E: PopAdLdVar
  loc_CBB74F: LitVarI4
  loc_CBB757: PopAdLdVar
  loc_CBB758: LitVarStr var_10C, vbNullString
  loc_CBB75D: PopAdLdVar
  loc_CBB75E: FLdPr Me
  loc_CBB761: VCallAd Control_ID_ServDevaFlex
  loc_CBB764: FStAdFunc var_DC
  loc_CBB767: FLdPr var_DC
  loc_CBB76A: LateIdCallSt
  loc_CBB772: FFreeAd var_88 = ""
  loc_CBB779: FFree1Var var_98 = ""
  loc_CBB77C: FLdPr Me
  loc_CBB77F: VCallAd Control_ID_ServDevaFlex
  loc_CBB782: FStAdFunc var_88
  loc_CBB785: FLdPr var_88
  loc_CBB788: LateIdLdVar var_98 DispID_10 0
  loc_CBB78F: CI4Var
  loc_CBB791: CVarI4
  loc_CBB795: PopAdLdVar
  loc_CBB796: LitVarI4
  loc_CBB79E: PopAdLdVar
  loc_CBB79F: LitVarStr var_10C, vbNullString
  loc_CBB7A4: PopAdLdVar
  loc_CBB7A5: FLdPr Me
  loc_CBB7A8: VCallAd Control_ID_ServDevaFlex
  loc_CBB7AB: FStAdFunc var_DC
  loc_CBB7AE: FLdPr var_DC
  loc_CBB7B1: LateIdCallSt
  loc_CBB7B9: FFreeAd var_88 = ""
  loc_CBB7C0: FFree1Var var_98 = ""
  loc_CBB7C3: FLdPr Me
  loc_CBB7C6: VCallAd Control_ID_ServDevaFlex
  loc_CBB7C9: FStAdFunc var_88
  loc_CBB7CC: FLdPr var_88
  loc_CBB7CF: LateIdLdVar var_98 DispID_10 0
  loc_CBB7D6: CI4Var
  loc_CBB7D8: CVarI4
  loc_CBB7DC: PopAdLdVar
  loc_CBB7DD: LitVarI4
  loc_CBB7E5: PopAdLdVar
  loc_CBB7E6: LitVarStr var_10C, vbNullString
  loc_CBB7EB: PopAdLdVar
  loc_CBB7EC: FLdPr Me
  loc_CBB7EF: VCallAd Control_ID_ServDevaFlex
  loc_CBB7F2: FStAdFunc var_DC
  loc_CBB7F5: FLdPr var_DC
  loc_CBB7F8: LateIdCallSt
  loc_CBB800: FFreeAd var_88 = ""
  loc_CBB807: FFree1Var var_98 = ""
  loc_CBB80A: FLdPr Me
  loc_CBB80D: VCallAd Control_ID_ServDevaFlex
  loc_CBB810: FStAdFunc var_88
  loc_CBB813: FLdPr var_88
  loc_CBB816: LateIdLdVar var_98 DispID_10 0
  loc_CBB81D: CI4Var
  loc_CBB81F: CVarI4
  loc_CBB823: PopAdLdVar
  loc_CBB824: LitVarI4
  loc_CBB82C: PopAdLdVar
  loc_CBB82D: LitVarStr var_10C, vbNullString
  loc_CBB832: PopAdLdVar
  loc_CBB833: FLdPr Me
  loc_CBB836: VCallAd Control_ID_ServDevaFlex
  loc_CBB839: FStAdFunc var_DC
  loc_CBB83C: FLdPr var_DC
  loc_CBB83F: LateIdCallSt
  loc_CBB847: FFreeAd var_88 = ""
  loc_CBB84E: FFree1Var var_98 = ""
  loc_CBB851: FLdPr Me
  loc_CBB854: VCallAd Control_ID_ServDevaFlex
  loc_CBB857: FStAdFunc var_88
  loc_CBB85A: FLdPr var_88
  loc_CBB85D: LateIdLdVar var_98 DispID_10 0
  loc_CBB864: CI4Var
  loc_CBB866: CVarI4
  loc_CBB86A: PopAdLdVar
  loc_CBB86B: LitVarI4
  loc_CBB873: PopAdLdVar
  loc_CBB874: LitVarStr var_10C, vbNullString
  loc_CBB879: PopAdLdVar
  loc_CBB87A: FLdPr Me
  loc_CBB87D: VCallAd Control_ID_ServDevaFlex
  loc_CBB880: FStAdFunc var_DC
  loc_CBB883: FLdPr var_DC
  loc_CBB886: LateIdCallSt
  loc_CBB88E: FFreeAd var_88 = ""
  loc_CBB895: FFree1Var var_98 = ""
  loc_CBB898: FLdPr Me
  loc_CBB89B: VCallAd Control_ID_ServDevaFlex
  loc_CBB89E: FStAdFunc var_88
  loc_CBB8A1: FLdPr var_88
  loc_CBB8A4: LateIdLdVar var_98 DispID_10 0
  loc_CBB8AB: CI4Var
  loc_CBB8AD: CVarI4
  loc_CBB8B1: PopAdLdVar
  loc_CBB8B2: LitVarI4
  loc_CBB8BA: PopAdLdVar
  loc_CBB8BB: LitVarStr var_10C, vbNullString
  loc_CBB8C0: PopAdLdVar
  loc_CBB8C1: FLdPr Me
  loc_CBB8C4: VCallAd Control_ID_ServDevaFlex
  loc_CBB8C7: FStAdFunc var_DC
  loc_CBB8CA: FLdPr var_DC
  loc_CBB8CD: LateIdCallSt
  loc_CBB8D5: FFreeAd var_88 = ""
  loc_CBB8DC: FFree1Var var_98 = ""
  loc_CBB8DF: FLdPr Me
  loc_CBB8E2: VCallAd Control_ID_ServDevaFlex
  loc_CBB8E5: FStAdFunc var_88
  loc_CBB8E8: FLdPr var_88
  loc_CBB8EB: LateIdLdVar var_98 DispID_10 0
  loc_CBB8F2: CI4Var
  loc_CBB8F4: CVarI4
  loc_CBB8F8: PopAdLdVar
  loc_CBB8F9: LitVarI4
  loc_CBB901: PopAdLdVar
  loc_CBB902: LitVarStr var_10C, vbNullString
  loc_CBB907: PopAdLdVar
  loc_CBB908: FLdPr Me
  loc_CBB90B: VCallAd Control_ID_ServDevaFlex
  loc_CBB90E: FStAdFunc var_DC
  loc_CBB911: FLdPr var_DC
  loc_CBB914: LateIdCallSt
  loc_CBB91C: FFreeAd var_88 = ""
  loc_CBB923: FFree1Var var_98 = ""
  loc_CBB926: FLdPr Me
  loc_CBB929: VCallAd Control_ID_ServDevaFlex
  loc_CBB92C: FStAdFunc var_88
  loc_CBB92F: FLdPr var_88
  loc_CBB932: LateIdLdVar var_98 DispID_11 0
  loc_CBB939: CI4Var
  loc_CBB93B: LitI4 3
  loc_CBB940: EqI4
  loc_CBB941: FFree1Ad var_88
  loc_CBB944: FFree1Var var_98 = ""
  loc_CBB947: BranchF loc_CBBCA7
  loc_CBB94A: FLdPr Me
  loc_CBB94D: VCallAd Control_ID_ServDevaFlex
  loc_CBB950: FStAdFunc var_88
  loc_CBB953: FLdPr var_88
  loc_CBB956: LateIdLdVar var_98 DispID_10 0
  loc_CBB95D: CI4Var
  loc_CBB95F: CVarI4
  loc_CBB963: PopAdLdVar
  loc_CBB964: LitVarI4
  loc_CBB96C: PopAdLdVar
  loc_CBB96D: FLdPr Me
  loc_CBB970: VCallAd Control_ID_ServDevaFlex
  loc_CBB973: FStAdFunc var_DC
  loc_CBB976: FLdPr var_DC
  loc_CBB979: LateIdCallLdVar
  loc_CBB983: CStrVarTmp
  loc_CBB984: CVarStr var_FC
  loc_CBB987: ImpAdCallI2 IsNumeric()
  loc_CBB98C: FLdPr Me
  loc_CBB98F: VCallAd Control_ID_ServDevaFlex
  loc_CBB992: FStAdFunc var_120
  loc_CBB995: FLdPr var_120
  loc_CBB998: LateIdLdVar var_130 DispID_10 0
  loc_CBB99F: CI4Var
  loc_CBB9A1: CVarI4
  loc_CBB9A5: PopAdLdVar
  loc_CBB9A6: LitVarI4
  loc_CBB9AE: PopAdLdVar
  loc_CBB9AF: FLdPr Me
  loc_CBB9B2: VCallAd Control_ID_ServDevaFlex
  loc_CBB9B5: FStAdFunc var_154
  loc_CBB9B8: FLdPr var_154
  loc_CBB9BB: LateIdCallLdVar
  loc_CBB9C5: CStrVarTmp
  loc_CBB9C6: CVarStr var_174
  loc_CBB9C9: ImpAdCallI2 IsNumeric()
  loc_CBB9CE: AndI4
  loc_CBB9CF: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBB9DA: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBB9E9: BranchF loc_CBBBBD
  loc_CBB9EC: FLdPr Me
  loc_CBB9EF: VCallAd Control_ID_ServDevaFlex
  loc_CBB9F2: FStAdFunc var_88
  loc_CBB9F5: FLdPr var_88
  loc_CBB9F8: LateIdLdVar var_98 DispID_10 0
  loc_CBB9FF: CI4Var
  loc_CBBA01: CVarI4
  loc_CBBA05: PopAdLdVar
  loc_CBBA06: LitVarI4
  loc_CBBA0E: PopAdLdVar
  loc_CBBA0F: FLdPr Me
  loc_CBBA12: VCallAd Control_ID_ServDevaFlex
  loc_CBBA15: FStAdFunc var_DC
  loc_CBBA18: FLdPr var_DC
  loc_CBBA1B: LateIdCallLdVar
  loc_CBBA25: PopAd
  loc_CBBA27: FLdPr Me
  loc_CBBA2A: VCallAd Control_ID_ServDevaFlex
  loc_CBBA2D: FStAdFunc var_120
  loc_CBBA30: FLdPr var_120
  loc_CBBA33: LateIdLdVar var_174 DispID_10 0
  loc_CBBA3A: CI4Var
  loc_CBBA3C: CVarI4
  loc_CBBA40: PopAdLdVar
  loc_CBBA41: LitVarI4
  loc_CBBA49: PopAdLdVar
  loc_CBBA4A: LitI4 1
  loc_CBBA4F: LitI4 1
  loc_CBBA54: LitVarStr var_10C, "0.00"
  loc_CBBA59: FStVarCopyObj var_130
  loc_CBBA5C: FLdRfVar var_130
  loc_CBBA5F: FLdRfVar var_EC
  loc_CBBA62: CStrVarTmp
  loc_CBBA63: CVarStr var_FC
  loc_CBBA66: FLdRfVar var_164
  loc_CBBA69: ImpAdCallFPR4  = Format(, )
  loc_CBBA6E: FLdRfVar var_164
  loc_CBBA71: CStrVarTmp
  loc_CBBA72: CVarStr var_1AC
  loc_CBBA75: PopAdLdVar
  loc_CBBA76: FLdPr Me
  loc_CBBA79: VCallAd Control_ID_ServDevaFlex
  loc_CBBA7C: FStAdFunc var_154
  loc_CBBA7F: FLdPr var_154
  loc_CBBA82: LateIdCallSt
  loc_CBBA8A: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBBA95: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBBAA6: FLdPr Me
  loc_CBBAA9: VCallAd Control_ID_ServDevaFlex
  loc_CBBAAC: FStAdFunc var_88
  loc_CBBAAF: FLdPr var_88
  loc_CBBAB2: LateIdLdVar var_98 DispID_10 0
  loc_CBBAB9: CI4Var
  loc_CBBABB: CVarI4
  loc_CBBABF: PopAdLdVar
  loc_CBBAC0: LitVarI4
  loc_CBBAC8: PopAdLdVar
  loc_CBBAC9: FLdPr Me
  loc_CBBACC: VCallAd Control_ID_ServDevaFlex
  loc_CBBACF: FStAdFunc var_DC
  loc_CBBAD2: FLdPr var_DC
  loc_CBBAD5: LateIdCallLdVar
  loc_CBBADF: PopAd
  loc_CBBAE1: FLdPr Me
  loc_CBBAE4: VCallAd Control_ID_ServDevaFlex
  loc_CBBAE7: FStAdFunc var_120
  loc_CBBAEA: FLdPr var_120
  loc_CBBAED: LateIdLdVar var_FC DispID_10 0
  loc_CBBAF4: CI4Var
  loc_CBBAF6: CVarI4
  loc_CBBAFA: PopAdLdVar
  loc_CBBAFB: LitVarI4
  loc_CBBB03: PopAdLdVar
  loc_CBBB04: FLdPr Me
  loc_CBBB07: VCallAd Control_ID_ServDevaFlex
  loc_CBBB0A: FStAdFunc var_154
  loc_CBBB0D: FLdPr var_154
  loc_CBBB10: LateIdCallLdVar
  loc_CBBB1A: PopAd
  loc_CBBB1C: FLdPr Me
  loc_CBBB1F: VCallAd Control_ID_ServDevaFlex
  loc_CBBB22: FStAdFunc var_1B0
  loc_CBBB25: FLdPr var_1B0
  loc_CBBB28: LateIdLdVar var_1C0 DispID_10 0
  loc_CBBB2F: CI4Var
  loc_CBBB31: CVarI4
  loc_CBBB35: PopAdLdVar
  loc_CBBB36: LitVarI4
  loc_CBBB3E: PopAdLdVar
  loc_CBBB3F: LitI4 1
  loc_CBBB44: LitI4 1
  loc_CBBB49: LitVarStr var_19C, "0.00"
  loc_CBBB4E: FStVarCopyObj var_174
  loc_CBBB51: FLdRfVar var_174
  loc_CBBB54: FLdRfVar var_EC
  loc_CBBB57: CStrVarTmp
  loc_CBBB58: FStStrNoPop var_178
  loc_CBBB5B: CR8Str
  loc_CBBB5D: FLdRfVar var_130
  loc_CBBB60: CStrVarTmp
  loc_CBBB61: FStStrNoPop var_17C
  loc_CBBB64: CR8Str
  loc_CBBB66: MulR8
  loc_CBBB67: CVarR8
  loc_CBBB6B: FLdRfVar var_1AC
  loc_CBBB6E: ImpAdCallFPR4  = Format(, )
  loc_CBBB73: FLdRfVar var_1AC
  loc_CBBB76: CStrVarTmp
  loc_CBBB77: CVarStr var_210
  loc_CBBB7A: PopAdLdVar
  loc_CBBB7B: FLdPr Me
  loc_CBBB7E: VCallAd Control_ID_ServDevaFlex
  loc_CBBB81: FStAdFunc var_224
  loc_CBBB84: FLdPr var_224
  loc_CBBB87: LateIdCallSt
  loc_CBBB8F: FFreeStr var_178 = ""
  loc_CBBB96: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBBBA5: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBBBBA: Branch loc_CBBCA7
  loc_CBBBBD: FLdPr Me
  loc_CBBBC0: VCallAd Control_ID_ServDevaFlex
  loc_CBBBC3: FStAdFunc var_88
  loc_CBBBC6: FLdPr var_88
  loc_CBBBC9: LateIdLdVar var_130 DispID_10 0
  loc_CBBBD0: CI4Var
  loc_CBBBD2: CVarI4
  loc_CBBBD6: PopAdLdVar
  loc_CBBBD7: LitVarI4
  loc_CBBBDF: PopAdLdVar
  loc_CBBBE0: LitI4 1
  loc_CBBBE5: LitI4 1
  loc_CBBBEA: LitVarStr var_B8, "0.00"
  loc_CBBBEF: FStVarCopyObj var_EC
  loc_CBBBF2: FLdRfVar var_EC
  loc_CBBBF5: LitVarI2 var_98, 0
  loc_CBBBFA: FLdRfVar var_FC
  loc_CBBBFD: ImpAdCallFPR4  = Format(, )
  loc_CBBC02: FLdRfVar var_FC
  loc_CBBC05: CStrVarTmp
  loc_CBBC06: CVarStr var_164
  loc_CBBC09: PopAdLdVar
  loc_CBBC0A: FLdPr Me
  loc_CBBC0D: VCallAd Control_ID_ServDevaFlex
  loc_CBBC10: FStAdFunc var_DC
  loc_CBBC13: FLdPr var_DC
  loc_CBBC16: LateIdCallSt
  loc_CBBC1E: FFreeAd var_88 = ""
  loc_CBBC25: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBBC32: FLdPr Me
  loc_CBBC35: VCallAd Control_ID_ServDevaFlex
  loc_CBBC38: FStAdFunc var_88
  loc_CBBC3B: FLdPr var_88
  loc_CBBC3E: LateIdLdVar var_130 DispID_10 0
  loc_CBBC45: CI4Var
  loc_CBBC47: CVarI4
  loc_CBBC4B: PopAdLdVar
  loc_CBBC4C: LitVarI4
  loc_CBBC54: PopAdLdVar
  loc_CBBC55: LitI4 1
  loc_CBBC5A: LitI4 1
  loc_CBBC5F: LitVarStr var_B8, "0.00"
  loc_CBBC64: FStVarCopyObj var_EC
  loc_CBBC67: FLdRfVar var_EC
  loc_CBBC6A: LitVarI2 var_98, 0
  loc_CBBC6F: FLdRfVar var_FC
  loc_CBBC72: ImpAdCallFPR4  = Format(, )
  loc_CBBC77: FLdRfVar var_FC
  loc_CBBC7A: CStrVarTmp
  loc_CBBC7B: CVarStr var_164
  loc_CBBC7E: PopAdLdVar
  loc_CBBC7F: FLdPr Me
  loc_CBBC82: VCallAd Control_ID_ServDevaFlex
  loc_CBBC85: FStAdFunc var_DC
  loc_CBBC88: FLdPr var_DC
  loc_CBBC8B: LateIdCallSt
  loc_CBBC93: FFreeAd var_88 = ""
  loc_CBBC9A: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBBCA7: Call Proc_330_40_B2D988()
  loc_CBBCAC: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C38A34
  'Data Table: 518504
  loc_C37F78: LitStr "Municipalidad de Guaymallén"
  loc_C37F7B: LitStr "Municipalidad de San Carlos"
  loc_C37F7E: EqStr
  loc_C37F80: LitStr "Municipalidad de Guaymallén"
  loc_C37F83: LitStr "Municipalidad de Rivadavia"
  loc_C37F86: EqStr
  loc_C37F88: OrI4
  loc_C37F89: BranchF loc_C37FDA
  loc_C37F8C: FLdPr Me
  loc_C37F8F: VCallAd Control_ID_FechVencMsk
  loc_C37F92: FStAdFunc var_E8
  loc_C37F95: FLdPr var_E8
  loc_C37F98: LateIdLdVar var_F8 DispID_15 0
  loc_C37F9F: CStrVarTmp
  loc_C37FA0: PopTmpLdAdStr
  loc_C37FA4: ImpAdCallI2 Proc_18_100_A771AC()
  loc_C37FA9: FStStrNoPop var_100
  loc_C37FAC: FLdPr Me
  loc_C37FAF: MemStStrCopy
  loc_C37FB3: FFreeStr var_FC = ""
  loc_C37FBA: FFree1Ad var_E8
  loc_C37FBD: FFree1Var var_F8 = ""
  loc_C37FC0: FLdPr Me
  loc_C37FC3: MemLdStr global_68
  loc_C37FC6: LitStr vbNullString
  loc_C37FC9: NeStr
  loc_C37FCB: BranchF loc_C37FDA
  loc_C37FCE: FLdPr Me
  loc_C37FD1: MemLdStr global_68
  loc_C37FD4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C37FD9: ExitProcHresult
  loc_C37FDA: Call Proc_330_37_B18BA8()
  loc_C37FDF: LitVarStr var_110, vbNullString
  loc_C37FE4: PopAdLdVar
  loc_C37FE5: FLdPr Me
  loc_C37FE8: VCallAd Control_ID_FechVencMsk
  loc_C37FEB: FStAdFunc var_E8
  loc_C37FEE: FLdPr var_E8
  loc_C37FF1: LateIdSt
  loc_C37FF6: FFree1Ad var_E8
  loc_C37FF9: LitI2_Byte 0
  loc_C37FFB: CR8I2
  loc_C37FFC: FStFPR8 var_CC
  loc_C37FFF: LitI2_Byte 0
  loc_C38001: CR8I2
  loc_C38002: FStFPR8 var_D4
  loc_C38005: LitI2_Byte 0
  loc_C38007: CR8I2
  loc_C38008: FStFPR8 var_DC
  loc_C3800B: LitI2_Byte 0
  loc_C3800D: CR8I2
  loc_C3800E: FStFPR8 var_E4
  loc_C38011: LitI4 1
  loc_C38016: LitI4 1
  loc_C3801B: LitVarStr var_120, "0.00"
  loc_C38020: FStVarCopyObj var_F8
  loc_C38023: FLdRfVar var_F8
  loc_C38026: FLdRfVar var_CC
  loc_C38029: CVarRef
  loc_C3802E: FLdRfVar var_130
  loc_C38031: ImpAdCallFPR4  = Format(, )
  loc_C38036: FLdRfVar var_130
  loc_C38039: CStrVarVal var_FC
  loc_C3803D: FLdPr Me
  loc_C38040: VCallAd Control_ID_txtTotaDere
  loc_C38043: FStAdFunc var_E8
  loc_C38046: FLdPr var_E8
  loc_C38049: Me.Text = from_stack_1
  loc_C3804E: FFree1Str var_FC
  loc_C38051: FFree1Ad var_E8
  loc_C38054: FFreeVar var_F8 = ""
  loc_C3805B: LitI4 1
  loc_C38060: LitI4 1
  loc_C38065: LitVarStr var_120, "0.00"
  loc_C3806A: FStVarCopyObj var_F8
  loc_C3806D: FLdRfVar var_F8
  loc_C38070: FLdRfVar var_D4
  loc_C38073: CVarRef
  loc_C38078: FLdRfVar var_130
  loc_C3807B: ImpAdCallFPR4  = Format(, )
  loc_C38080: FLdRfVar var_130
  loc_C38083: CStrVarVal var_FC
  loc_C38087: FLdPr Me
  loc_C3808A: VCallAd Control_ID_txtTotaReca
  loc_C3808D: FStAdFunc var_E8
  loc_C38090: FLdPr var_E8
  loc_C38093: Me.Text = from_stack_1
  loc_C38098: FFree1Str var_FC
  loc_C3809B: FFree1Ad var_E8
  loc_C3809E: FFreeVar var_F8 = ""
  loc_C380A5: LitI4 1
  loc_C380AA: LitI4 1
  loc_C380AF: LitVarStr var_120, "0.00"
  loc_C380B4: FStVarCopyObj var_F8
  loc_C380B7: FLdRfVar var_F8
  loc_C380BA: FLdRfVar var_DC
  loc_C380BD: CVarRef
  loc_C380C2: FLdRfVar var_130
  loc_C380C5: ImpAdCallFPR4  = Format(, )
  loc_C380CA: FLdRfVar var_130
  loc_C380CD: CStrVarVal var_FC
  loc_C380D1: FLdPr Me
  loc_C380D4: VCallAd Control_ID_txtTotaApre
  loc_C380D7: FStAdFunc var_E8
  loc_C380DA: FLdPr var_E8
  loc_C380DD: Me.Text = from_stack_1
  loc_C380E2: FFree1Str var_FC
  loc_C380E5: FFree1Ad var_E8
  loc_C380E8: FFreeVar var_F8 = ""
  loc_C380EF: LitI4 2
  loc_C380F4: FLdRfVar var_CC
  loc_C380F7: CVarRef
  loc_C380FC: FLdRfVar var_F8
  loc_C380FF: ImpAdCallFPR4  = Round(, )
  loc_C38104: FLdRfVar var_F8
  loc_C38107: LitI4 2
  loc_C3810C: FLdRfVar var_D4
  loc_C3810F: CVarRef
  loc_C38114: FLdRfVar var_130
  loc_C38117: ImpAdCallFPR4  = Round(, )
  loc_C3811C: FLdRfVar var_130
  loc_C3811F: AddVar var_140
  loc_C38123: LitI4 2
  loc_C38128: FLdRfVar var_DC
  loc_C3812B: CVarRef
  loc_C38130: FLdRfVar var_160
  loc_C38133: ImpAdCallFPR4  = Round(, )
  loc_C38138: FLdRfVar var_160
  loc_C3813B: AddVar var_170
  loc_C3813F: CR4Var
  loc_C38140: FStFPR8 var_E4
  loc_C38143: FFreeVar var_F8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_C38150: LitI4 1
  loc_C38155: LitI4 1
  loc_C3815A: LitVarStr var_120, "0.00"
  loc_C3815F: FStVarCopyObj var_F8
  loc_C38162: FLdRfVar var_F8
  loc_C38165: FLdRfVar var_E4
  loc_C38168: CVarRef
  loc_C3816D: FLdRfVar var_130
  loc_C38170: ImpAdCallFPR4  = Format(, )
  loc_C38175: FLdRfVar var_130
  loc_C38178: CStrVarVal var_FC
  loc_C3817C: FLdPr Me
  loc_C3817F: VCallAd Control_ID_txtTotal
  loc_C38182: FStAdFunc var_E8
  loc_C38185: FLdPr var_E8
  loc_C38188: Me.Text = from_stack_1
  loc_C3818D: FFree1Str var_FC
  loc_C38190: FFree1Ad var_E8
  loc_C38193: FFreeVar var_F8 = ""
  loc_C3819A: FLdRfVar var_FC
  loc_C3819D: FLdPr Me
  loc_C381A0: VCallAd Control_ID_NumeCtaTxt
  loc_C381A3: FStAdFunc var_E8
  loc_C381A6: FLdPr var_E8
  loc_C381A9:  = Me.Text
  loc_C381AE: FLdPr Me
  loc_C381B1: VCallAd Control_ID_FechVencMsk
  loc_C381B4: FStAdFunc var_174
  loc_C381B7: FLdPr var_174
  loc_C381BA: LateIdLdVar var_F8 DispID_22 0
  loc_C381C1: PopAd
  loc_C381C3: LitStr "tmp_ctacte"
  loc_C381C6: FLdRfVar var_F8
  loc_C381C9: CStrVarTmp
  loc_C381CA: FStStrNoPop var_100
  loc_C381CD: ILdRf var_FC
  loc_C381D0: ImpAdLdUI1
  loc_C381D4: FLdPr Me
  loc_C381D7: MemLdRfVar from_stack_1.global_52
  loc_C381DA: NewIfNullPr clsctacte
  loc_C381DD: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C381E2: FFreeStr var_FC = ""
  loc_C381E9: FFreeAd var_E8 = ""
  loc_C381F0: FFree1Var var_F8 = ""
  loc_C381F3: LitStr "SELECT * FROM tmp_ctacte LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_C381F6: LitStr " WHERE SaldCtct > 0 "
  loc_C381F9: ConcatStr
  loc_C381FA: FStStrNoPop var_FC
  loc_C381FD: LitStr " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct desc, tmp_ctacte.BimeCtct desc, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_C38200: ConcatStr
  loc_C38201: FStStrNoPop var_100
  loc_C38204: FLdPr Me
  loc_C38207: MemLdRfVar from_stack_1.global_52
  loc_C3820A: NewIfNullPr clsctacte
  loc_C3820D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C38212: FFreeStr var_FC = ""
  loc_C38219: FLdRfVar var_178
  loc_C3821C: FLdPr Me
  loc_C3821F: MemLdRfVar from_stack_1.global_52
  loc_C38222: NewIfNullPr clsctacte
  loc_C38225: from_stack_1 = clsctacte.RecordCount
  loc_C3822A: ILdRf var_178
  loc_C3822D: LitI4 0
  loc_C38232: GtI4
  loc_C38233: BranchF loc_C389DA
  loc_C38236: FLdPr Me
  loc_C38239: MemLdRfVar from_stack_1.global_52
  loc_C3823C: NewIfNullPr clsctacte
  loc_C3823F: Call clsctacte.MoveFirst()
  loc_C38244: FLdRfVar var_17A
  loc_C38247: FLdPr Me
  loc_C3824A: MemLdRfVar from_stack_1.global_52
  loc_C3824D: NewIfNullPr clsctacte
  loc_C38250: from_stack_1 = clsctacte.EOF
  loc_C38255: FLdI2 var_17A
  loc_C38258: NotI4
  loc_C38259: BranchF loc_C38851
  loc_C3825C: LitI2_Byte 0
  loc_C3825E: CR8I2
  loc_C3825F: FStFPR8 var_DC
  loc_C38262: FLdRfVar var_184
  loc_C38265: FLdPr Me
  loc_C38268: MemLdRfVar from_stack_1.global_52
  loc_C3826B: NewIfNullPr clsctacte
  loc_C3826E: from_stack_1 = clsctacte.SaldCtct
  loc_C38273: LitI4 2
  loc_C38278: FLdFPR8 var_CC
  loc_C3827B: FnCDblR8
  loc_C3827D: FLdFPR8 var_184
  loc_C38280: FnCDblR8
  loc_C38282: AddR8
  loc_C38283: CVarR8
  loc_C38287: FLdRfVar var_130
  loc_C3828A: ImpAdCallFPR4  = Round(, )
  loc_C3828F: FLdRfVar var_130
  loc_C38292: CR4Var
  loc_C38293: FStFPR8 var_CC
  loc_C38296: FFreeVar var_F8 = ""
  loc_C3829D: FLdRfVar var_184
  loc_C382A0: FLdPr Me
  loc_C382A3: MemLdRfVar from_stack_1.global_52
  loc_C382A6: NewIfNullPr clsctacte
  loc_C382A9: from_stack_1 = clsctacte.RecaCtct
  loc_C382AE: LitI4 2
  loc_C382B3: FLdFPR8 var_D4
  loc_C382B6: FnCDblR8
  loc_C382B8: FLdFPR8 var_184
  loc_C382BB: FnCDblR8
  loc_C382BD: AddR8
  loc_C382BE: CVarR8
  loc_C382C2: FLdRfVar var_130
  loc_C382C5: ImpAdCallFPR4  = Round(, )
  loc_C382CA: FLdRfVar var_130
  loc_C382CD: CR4Var
  loc_C382CE: FStFPR8 var_D4
  loc_C382D1: FFreeVar var_F8 = ""
  loc_C382D8: FLdRfVar var_17A
  loc_C382DB: FLdPr Me
  loc_C382DE: MemLdRfVar from_stack_1.global_52
  loc_C382E1: NewIfNullPr clsctacte
  loc_C382E4: from_stack_1 = clsctacte.BimeCtct
  loc_C382E9: LitI4 1
  loc_C382EE: LitI4 1
  loc_C382F3: LitVarStr var_120, "00"
  loc_C382F8: FStVarCopyObj var_130
  loc_C382FB: FLdRfVar var_130
  loc_C382FE: FLdI2 var_17A
  loc_C38301: CVarI2 var_F8
  loc_C38304: FLdRfVar var_140
  loc_C38307: ImpAdCallFPR4  = Format(, )
  loc_C3830C: FLdRfVar var_140
  loc_C3830F: LitVarStr var_150, "/"
  loc_C38314: ConcatVar var_160
  loc_C38318: FLdRfVar var_186
  loc_C3831B: FLdPr Me
  loc_C3831E: MemLdRfVar from_stack_1.global_52
  loc_C38321: NewIfNullPr clsctacte
  loc_C38324: from_stack_1 = clsctacte.PeriCtct
  loc_C38329: FLdI2 var_186
  loc_C3832C: CVarI2 var_198
  loc_C3832F: ConcatVar var_170
  loc_C38333: CStrVarTmp
  loc_C38334: FLdRfVar var_96
  loc_C38337: StFixedStrFree
  loc_C3833B: FFreeVar var_F8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_C38348: FLdRfVar var_178
  loc_C3834B: FLdPr Me
  loc_C3834E: MemLdRfVar from_stack_1.global_52
  loc_C38351: NewIfNullPr clsctacte
  loc_C38354: from_stack_1 = clsctacte.NumeBole
  loc_C38359: LitI4 1
  loc_C3835E: LitI4 1
  loc_C38363: LitVarStr var_120, "#######0"
  loc_C38368: FStVarCopyObj var_130
  loc_C3836B: FLdRfVar var_130
  loc_C3836E: ILdRf var_178
  loc_C38371: CVarI4
  loc_C38375: FLdRfVar var_140
  loc_C38378: ImpAdCallFPR4  = Format(, )
  loc_C3837D: FLdRfVar var_140
  loc_C38380: LitVarStr var_150, "-"
  loc_C38385: ConcatVar var_160
  loc_C38389: FLdRfVar var_17A
  loc_C3838C: FLdPr Me
  loc_C3838F: MemLdRfVar from_stack_1.global_52
  loc_C38392: NewIfNullPr clsctacte
  loc_C38395: from_stack_1 = clsctacte.PeriBole
  loc_C3839A: FLdI2 var_17A
  loc_C3839D: CVarI2 var_198
  loc_C383A0: ConcatVar var_170
  loc_C383A4: CStrVarTmp
  loc_C383A5: FLdRfVar var_B0
  loc_C383A8: StFixedStrFree
  loc_C383AC: FFreeVar var_F8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_C383B9: FLdRfVar var_184
  loc_C383BC: FLdPr Me
  loc_C383BF: MemLdRfVar from_stack_1.global_52
  loc_C383C2: NewIfNullPr clsctacte
  loc_C383C5: from_stack_1 = clsctacte.SaldCtct
  loc_C383CA: FLdFPR8 var_184
  loc_C383CD: FnCDblR8
  loc_C383CF: LitI2_Byte 0
  loc_C383D1: CR8I2
  loc_C383D2: NeR8
  loc_C383D3: BranchF loc_C3841E
  loc_C383D6: FLdRfVar var_184
  loc_C383D9: FLdPr Me
  loc_C383DC: MemLdRfVar from_stack_1.global_52
  loc_C383DF: NewIfNullPr clsctacte
  loc_C383E2: from_stack_1 = clsctacte.SaldCtct
  loc_C383E7: LitI4 1
  loc_C383EC: LitI4 1
  loc_C383F1: LitVarStr var_120, "0.00"
  loc_C383F6: FStVarCopyObj var_130
  loc_C383F9: FLdRfVar var_130
  loc_C383FC: FLdFPR8 var_184
  loc_C383FF: CVarR8
  loc_C38403: FLdRfVar var_140
  loc_C38406: ImpAdCallFPR4  = Format(, )
  loc_C3840B: FLdRfVar var_140
  loc_C3840E: CStrVarTmp
  loc_C3840F: FStStr var_B8
  loc_C38412: FFreeVar var_F8 = "": var_130 = ""
  loc_C3841B: Branch loc_C38424
  loc_C3841E: LitStr vbNullString
  loc_C38421: FStStrCopy var_B8
  loc_C38424: LitStr vbNullString
  loc_C38427: FStStrCopy var_BC
  loc_C3842A: FLdRfVar var_184
  loc_C3842D: FLdPr Me
  loc_C38430: MemLdRfVar from_stack_1.global_52
  loc_C38433: NewIfNullPr clsctacte
  loc_C38436: from_stack_1 = clsctacte.RecaCtct
  loc_C3843B: FLdFPR8 var_184
  loc_C3843E: FnCDblR8
  loc_C38440: LitI2_Byte 0
  loc_C38442: CR8I2
  loc_C38443: NeR8
  loc_C38444: BranchF loc_C3848F
  loc_C38447: FLdRfVar var_184
  loc_C3844A: FLdPr Me
  loc_C3844D: MemLdRfVar from_stack_1.global_52
  loc_C38450: NewIfNullPr clsctacte
  loc_C38453: from_stack_1 = clsctacte.RecaCtct
  loc_C38458: LitI4 1
  loc_C3845D: LitI4 1
  loc_C38462: LitVarStr var_120, "0.00"
  loc_C38467: FStVarCopyObj var_130
  loc_C3846A: FLdRfVar var_130
  loc_C3846D: FLdFPR8 var_184
  loc_C38470: CVarR8
  loc_C38474: FLdRfVar var_140
  loc_C38477: ImpAdCallFPR4  = Format(, )
  loc_C3847C: FLdRfVar var_140
  loc_C3847F: CStrVarTmp
  loc_C38480: FStStr var_C0
  loc_C38483: FFreeVar var_F8 = "": var_130 = ""
  loc_C3848C: Branch loc_C38495
  loc_C3848F: LitStr vbNullString
  loc_C38492: FStStrCopy var_C0
  loc_C38495: FLdRfVar var_184
  loc_C38498: FLdPr Me
  loc_C3849B: MemLdRfVar from_stack_1.global_52
  loc_C3849E: NewIfNullPr clsctacte
  loc_C384A1: from_stack_1 = clsctacte.SaldCtct
  loc_C384A6: FLdRfVar var_1A0
  loc_C384A9: FLdPr Me
  loc_C384AC: MemLdRfVar from_stack_1.global_52
  loc_C384AF: NewIfNullPr clsctacte
  loc_C384B2: from_stack_1 = clsctacte.RecaCtct
  loc_C384B7: LitI4 2
  loc_C384BC: FLdFPR8 var_184
  loc_C384BF: FnCDblR8
  loc_C384C1: FLdFPR8 var_1A0
  loc_C384C4: FnCDblR8
  loc_C384C6: AddR8
  loc_C384C7: CVarR8
  loc_C384CB: FLdRfVar var_130
  loc_C384CE: ImpAdCallFPR4  = Round(, )
  loc_C384D3: LitI4 1
  loc_C384D8: LitI4 1
  loc_C384DD: LitVarStr var_120, "0.00"
  loc_C384E2: FStVarCopyObj var_140
  loc_C384E5: FLdRfVar var_140
  loc_C384E8: FLdRfVar var_130
  loc_C384EB: FLdRfVar var_160
  loc_C384EE: ImpAdCallFPR4  = Format(, )
  loc_C384F3: FLdRfVar var_160
  loc_C384F6: CStrVarTmp
  loc_C384F7: FStStr var_C4
  loc_C384FA: FFreeVar var_F8 = "": var_130 = "": var_140 = ""
  loc_C38505: FLdRfVar var_17A
  loc_C38508: FLdPr Me
  loc_C3850B: MemLdRfVar from_stack_1.global_52
  loc_C3850E: NewIfNullPr clsctacte
  loc_C38511: from_stack_1 = clsctacte.CodiOfic
  loc_C38516: FLdI2 var_17A
  loc_C38519: CVarI2 var_110
  loc_C3851C: LitI4 9
  loc_C38521: FLdRfVar var_F8
  loc_C38524: ImpAdCallFPR4  = Chr()
  loc_C38529: FLdRfVar var_F8
  loc_C3852C: ConcatVar var_130
  loc_C38530: FLdRfVar var_FC
  loc_C38533: FLdPr Me
  loc_C38536: MemLdRfVar from_stack_1.global_52
  loc_C38539: NewIfNullPr clsctacte
  loc_C3853C: from_stack_1 = clsctacte.CuenCtct
  loc_C38541: FLdZeroAd var_FC
  loc_C38544: CVarStr var_140
  loc_C38547: ConcatVar var_160
  loc_C3854B: LitI4 9
  loc_C38550: FLdRfVar var_170
  loc_C38553: ImpAdCallFPR4  = Chr()
  loc_C38558: FLdRfVar var_170
  loc_C3855B: ConcatVar var_1B0
  loc_C3855F: FLdRfVar var_96
  loc_C38562: LdFixedStr
  loc_C38565: CVarStr var_1C0
  loc_C38568: ConcatVar var_1D0
  loc_C3856C: LitI4 9
  loc_C38571: FLdRfVar var_1E0
  loc_C38574: ImpAdCallFPR4  = Chr()
  loc_C38579: FLdRfVar var_1E0
  loc_C3857C: ConcatVar var_1F0
  loc_C38580: FLdRfVar var_B0
  loc_C38583: LdFixedStr
  loc_C38586: CVarStr var_200
  loc_C38589: ConcatVar var_210
  loc_C3858D: LitI4 9
  loc_C38592: FLdRfVar var_220
  loc_C38595: ImpAdCallFPR4  = Chr()
  loc_C3859A: FLdRfVar var_220
  loc_C3859D: ConcatVar var_230
  loc_C385A1: FLdRfVar var_100
  loc_C385A4: FLdPr Me
  loc_C385A7: MemLdRfVar from_stack_1.global_52
  loc_C385AA: NewIfNullPr clsctacte
  loc_C385AD: from_stack_1 = clsctacte.FealCtct
  loc_C385B2: FLdZeroAd var_100
  loc_C385B5: CVarStr var_240
  loc_C385B8: ConcatVar var_250
  loc_C385BC: LitI4 9
  loc_C385C1: FLdRfVar var_260
  loc_C385C4: ImpAdCallFPR4  = Chr()
  loc_C385C9: FLdRfVar var_260
  loc_C385CC: ConcatVar var_270
  loc_C385D0: FLdRfVar var_280
  loc_C385D3: FLdPr Me
  loc_C385D6: MemLdRfVar from_stack_1.global_52
  loc_C385D9: NewIfNullPr clsctacte
  loc_C385DC: from_stack_1 = clsctacte.FeveCtct
  loc_C385E1: FLdRfVar var_280
  loc_C385E4: ConcatVar var_290
  loc_C385E8: LitI4 9
  loc_C385ED: FLdRfVar var_2A0
  loc_C385F0: ImpAdCallFPR4  = Chr()
  loc_C385F5: FLdRfVar var_2A0
  loc_C385F8: ConcatVar var_2B0
  loc_C385FC: FLdRfVar var_2B4
  loc_C385FF: FLdPr Me
  loc_C38602: MemLdRfVar from_stack_1.global_52
  loc_C38605: NewIfNullPr clsctacte
  loc_C38608: from_stack_1 = clsctacte.CodiConc
  loc_C3860D: FLdZeroAd var_2B4
  loc_C38610: CVarStr var_2C4
  loc_C38613: ConcatVar var_2D4
  loc_C38617: LitI4 9
  loc_C3861C: FLdRfVar var_2E4
  loc_C3861F: ImpAdCallFPR4  = Chr()
  loc_C38624: FLdRfVar var_2E4
  loc_C38627: ConcatVar var_2F4
  loc_C3862B: FLdRfVar var_178
  loc_C3862E: FLdPr Me
  loc_C38631: MemLdRfVar from_stack_1.global_52
  loc_C38634: NewIfNullPr clsctacte
  loc_C38637: from_stack_1 = clsctacte.CodiFapa
  loc_C3863C: ILdRf var_178
  loc_C3863F: CVarI4
  loc_C38643: ConcatVar var_304
  loc_C38647: LitI4 9
  loc_C3864C: FLdRfVar var_314
  loc_C3864F: ImpAdCallFPR4  = Chr()
  loc_C38654: FLdRfVar var_314
  loc_C38657: ConcatVar var_324
  loc_C3865B: FLdRfVar var_328
  loc_C3865E: FLdPr Me
  loc_C38661: MemLdRfVar from_stack_1.global_52
  loc_C38664: NewIfNullPr clsctacte
  loc_C38667: from_stack_1 = clsctacte.NumeApre
  loc_C3866C: ILdRf var_328
  loc_C3866F: CVarI4
  loc_C38673: ConcatVar var_338
  loc_C38677: LitI4 9
  loc_C3867C: FLdRfVar var_348
  loc_C3867F: ImpAdCallFPR4  = Chr()
  loc_C38684: FLdRfVar var_348
  loc_C38687: ConcatVar var_358
  loc_C3868B: FLdRfVar var_35C
  loc_C3868E: FLdPr Me
  loc_C38691: MemLdRfVar from_stack_1.global_52
  loc_C38694: NewIfNullPr clsctacte
  loc_C38697: from_stack_1 = clsctacte.ExpeCtct
  loc_C3869C: FLdZeroAd var_35C
  loc_C3869F: CVarStr var_36C
  loc_C386A2: ConcatVar var_37C
  loc_C386A6: LitI4 9
  loc_C386AB: FLdRfVar var_38C
  loc_C386AE: ImpAdCallFPR4  = Chr()
  loc_C386B3: FLdRfVar var_38C
  loc_C386B6: ConcatVar var_39C
  loc_C386BA: FLdRfVar var_3A0
  loc_C386BD: FLdPr Me
  loc_C386C0: MemLdRfVar from_stack_1.global_52
  loc_C386C3: NewIfNullPr clsctacte
  loc_C386C6: from_stack_1 = clsctacte.AbreTimo
  loc_C386CB: FLdZeroAd var_3A0
  loc_C386CE: CVarStr var_3B0
  loc_C386D1: ConcatVar var_3C0
  loc_C386D5: LitI4 9
  loc_C386DA: FLdRfVar var_3D0
  loc_C386DD: ImpAdCallFPR4  = Chr()
  loc_C386E2: FLdRfVar var_3D0
  loc_C386E5: ConcatVar var_3E0
  loc_C386E9: ILdRf var_B8
  loc_C386EC: CVarStr var_198
  loc_C386EF: ConcatVar var_3F0
  loc_C386F3: LitI4 9
  loc_C386F8: FLdRfVar var_400
  loc_C386FB: ImpAdCallFPR4  = Chr()
  loc_C38700: FLdRfVar var_400
  loc_C38703: ConcatVar var_410
  loc_C38707: ILdRf var_C0
  loc_C3870A: CVarStr var_420
  loc_C3870D: ConcatVar var_430
  loc_C38711: LitI4 9
  loc_C38716: FLdRfVar var_440
  loc_C38719: ImpAdCallFPR4  = Chr()
  loc_C3871E: FLdRfVar var_440
  loc_C38721: ConcatVar var_450
  loc_C38725: ILdRf var_C4
  loc_C38728: CVarStr var_460
  loc_C3872B: ConcatVar var_470
  loc_C3872F: LitI4 9
  loc_C38734: FLdRfVar var_480
  loc_C38737: ImpAdCallFPR4  = Chr()
  loc_C3873C: FLdRfVar var_480
  loc_C3873F: ConcatVar var_490
  loc_C38743: LitVarStr var_4A0, "No"
  loc_C38748: ConcatVar var_4B0
  loc_C3874C: LitI4 9
  loc_C38751: FLdRfVar var_4C0
  loc_C38754: ImpAdCallFPR4  = Chr()
  loc_C38759: FLdRfVar var_4C0
  loc_C3875C: ConcatVar var_4D0
  loc_C38760: FLdRfVar var_4D4
  loc_C38763: FLdPr Me
  loc_C38766: MemLdRfVar from_stack_1.global_52
  loc_C38769: NewIfNullPr clsctacte
  loc_C3876C: from_stack_1 = clsctacte.NumeCtct
  loc_C38771: ILdRf var_4D4
  loc_C38774: CVarI4
  loc_C38778: ConcatVar var_4F4
  loc_C3877C: LitI4 9
  loc_C38781: FLdRfVar var_504
  loc_C38784: ImpAdCallFPR4  = Chr()
  loc_C38789: FLdRfVar var_504
  loc_C3878C: ConcatVar var_514
  loc_C38790: FLdRfVar var_186
  loc_C38793: FLdPr Me
  loc_C38796: MemLdRfVar from_stack_1.global_52
  loc_C38799: NewIfNullPr clsctacte
  loc_C3879C: from_stack_1 = clsctacte.MoviCtct
  loc_C387A1: FLdI2 var_186
  loc_C387A4: CVarI2 var_524
  loc_C387A7: ConcatVar var_534
  loc_C387AB: CStrVarTmp
  loc_C387AC: FStStr var_B4
  loc_C387AF: FFreeVar var_348 = "": var_358 = "": var_36C = "": var_37C = "": var_38C = "": var_39C = "": var_3B0 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_400 = "": var_410 = "": var_430 = "": var_440 = "": var_450 = "": var_470 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4C0 = "": var_4D0 = "": var_4F4 = "": var_504 = "": var_514 = "": var_534 = "": var_F8 = "": var_130 = "": var_140 = "": var_160 = "": var_170 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C4 = "": var_2D4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_314 = "": var_324 = ""
  loc_C38822: FLdRfVar var_B4
  loc_C38825: CDargRef
  loc_C38829: FLdPr Me
  loc_C3882C: VCallAd Control_ID_ctacteFlex
  loc_C3882F: FStAdFunc var_E8
  loc_C38832: FLdPr var_E8
  loc_C38835: LateIdCall
  loc_C3883D: FFree1Ad var_E8
  loc_C38840: FLdPr Me
  loc_C38843: MemLdRfVar from_stack_1.global_52
  loc_C38846: NewIfNullPr clsctacte
  loc_C38849: Call clsctacte.MoveSiguiente()
  loc_C3884E: Branch loc_C38244
  loc_C38851: LitI4 1
  loc_C38856: LitI4 1
  loc_C3885B: LitVarStr var_120, "###,###,##0.00"
  loc_C38860: FStVarCopyObj var_F8
  loc_C38863: FLdRfVar var_F8
  loc_C38866: FLdRfVar var_CC
  loc_C38869: CVarRef
  loc_C3886E: FLdRfVar var_130
  loc_C38871: ImpAdCallFPR4  = Format(, )
  loc_C38876: FLdRfVar var_130
  loc_C38879: CStrVarVal var_FC
  loc_C3887D: FLdPr Me
  loc_C38880: VCallAd Control_ID_txtTotaDere
  loc_C38883: FStAdFunc var_E8
  loc_C38886: FLdPr var_E8
  loc_C38889: Me.Text = from_stack_1
  loc_C3888E: FFree1Str var_FC
  loc_C38891: FFree1Ad var_E8
  loc_C38894: FFreeVar var_F8 = ""
  loc_C3889B: LitI4 1
  loc_C388A0: LitI4 1
  loc_C388A5: LitVarStr var_120, "###,###,##0.00"
  loc_C388AA: FStVarCopyObj var_F8
  loc_C388AD: FLdRfVar var_F8
  loc_C388B0: FLdRfVar var_D4
  loc_C388B3: CVarRef
  loc_C388B8: FLdRfVar var_130
  loc_C388BB: ImpAdCallFPR4  = Format(, )
  loc_C388C0: FLdRfVar var_130
  loc_C388C3: CStrVarVal var_FC
  loc_C388C7: FLdPr Me
  loc_C388CA: VCallAd Control_ID_txtTotaReca
  loc_C388CD: FStAdFunc var_E8
  loc_C388D0: FLdPr var_E8
  loc_C388D3: Me.Text = from_stack_1
  loc_C388D8: FFree1Str var_FC
  loc_C388DB: FFree1Ad var_E8
  loc_C388DE: FFreeVar var_F8 = ""
  loc_C388E5: LitI4 1
  loc_C388EA: LitI4 1
  loc_C388EF: LitVarStr var_120, "###,###,##0.00"
  loc_C388F4: FStVarCopyObj var_F8
  loc_C388F7: FLdRfVar var_F8
  loc_C388FA: FLdRfVar var_DC
  loc_C388FD: CVarRef
  loc_C38902: FLdRfVar var_130
  loc_C38905: ImpAdCallFPR4  = Format(, )
  loc_C3890A: FLdRfVar var_130
  loc_C3890D: CStrVarVal var_FC
  loc_C38911: FLdPr Me
  loc_C38914: VCallAd Control_ID_txtTotaApre
  loc_C38917: FStAdFunc var_E8
  loc_C3891A: FLdPr var_E8
  loc_C3891D: Me.Text = from_stack_1
  loc_C38922: FFree1Str var_FC
  loc_C38925: FFree1Ad var_E8
  loc_C38928: FFreeVar var_F8 = ""
  loc_C3892F: LitI4 2
  loc_C38934: FLdRfVar var_CC
  loc_C38937: CVarRef
  loc_C3893C: FLdRfVar var_F8
  loc_C3893F: ImpAdCallFPR4  = Round(, )
  loc_C38944: FLdRfVar var_F8
  loc_C38947: LitI4 2
  loc_C3894C: FLdRfVar var_D4
  loc_C3894F: CVarRef
  loc_C38954: FLdRfVar var_130
  loc_C38957: ImpAdCallFPR4  = Round(, )
  loc_C3895C: FLdRfVar var_130
  loc_C3895F: AddVar var_140
  loc_C38963: LitI4 2
  loc_C38968: FLdRfVar var_DC
  loc_C3896B: CVarRef
  loc_C38970: FLdRfVar var_160
  loc_C38973: ImpAdCallFPR4  = Round(, )
  loc_C38978: FLdRfVar var_160
  loc_C3897B: AddVar var_170
  loc_C3897F: CR4Var
  loc_C38980: FStFPR8 var_E4
  loc_C38983: FFreeVar var_F8 = "": var_130 = "": var_140 = "": var_160 = ""
  loc_C38990: LitI4 1
  loc_C38995: LitI4 1
  loc_C3899A: LitVarStr var_120, "###,###,##0.00"
  loc_C3899F: FStVarCopyObj var_F8
  loc_C389A2: FLdRfVar var_F8
  loc_C389A5: FLdRfVar var_E4
  loc_C389A8: CVarRef
  loc_C389AD: FLdRfVar var_130
  loc_C389B0: ImpAdCallFPR4  = Format(, )
  loc_C389B5: FLdRfVar var_130
  loc_C389B8: CStrVarVal var_FC
  loc_C389BC: FLdPr Me
  loc_C389BF: VCallAd Control_ID_txtTotal
  loc_C389C2: FStAdFunc var_E8
  loc_C389C5: FLdPr var_E8
  loc_C389C8: Me.Text = from_stack_1
  loc_C389CD: FFree1Str var_FC
  loc_C389D0: FFree1Ad var_E8
  loc_C389D3: FFreeVar var_F8 = ""
  loc_C389DA: FLdPr Me
  loc_C389DD: VCallAd Control_ID_ctacteFlex
  loc_C389E0: FStAdFunc var_E8
  loc_C389E3: FLdPr var_E8
  loc_C389E6: LateIdLdVar var_F8 DispID_4 0
  loc_C389ED: CI4Var
  loc_C389EF: LitI4 1
  loc_C389F4: GtI4
  loc_C389F5: FFree1Ad var_E8
  loc_C389F8: FFree1Var var_F8 = ""
  loc_C389FB: BranchF loc_C38A31
  loc_C389FE: LitI4 0
  loc_C38A03: LitI4 0
  loc_C38A08: FLdRfVar var_538
  loc_C38A0B: Redim
  loc_C38A15: FLdPr Me
  loc_C38A18: VCallAd Control_ID_ConfirmarCmd
  loc_C38A1B: CVarAd
  loc_C38A1F: ParmAry1St
  loc_C38A25: FLdRfVar var_538
  loc_C38A28: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C38A2D: FLdRfVar var_538
  loc_C38A30: Erase
  loc_C38A31: ExitProcHresult
  loc_C38A32: FStFPR4 var_73FD
End Sub

Private Sub DetalleTxt_Validate(Cancel As Boolean) 'A7EB04
  'Data Table: 518504
  loc_A7EA80: FLdRfVar var_8A
  loc_A7EA83: FLdPr Me
  loc_A7EA86: VCallAd Control_ID_DetalleTxt
  loc_A7EA89: FStAdFunc var_88
  loc_A7EA8C: FLdPr var_88
  loc_A7EA8F:  = Me.Enabled
  loc_A7EA94: FLdI2 var_8A
  loc_A7EA97: FFree1Ad var_88
  loc_A7EA9A: BranchF loc_A7EB00
  loc_A7EA9D: FLdRfVar var_90
  loc_A7EAA0: FLdPr Me
  loc_A7EAA3: VCallAd Control_ID_DetalleTxt
  loc_A7EAA6: FStAdFunc var_88
  loc_A7EAA9: FLdPr var_88
  loc_A7EAAC:  = Me.Text
  loc_A7EAB1: ILdRf var_90
  loc_A7EAB4: LitStr "Detalle"
  loc_A7EAB7: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7EABC: FStStrNoPop var_94
  loc_A7EABF: FLdPr Me
  loc_A7EAC2: MemStStrCopy
  loc_A7EAC6: FFreeStr var_90 = ""
  loc_A7EACD: FFree1Ad var_88
  loc_A7EAD0: FLdPr Me
  loc_A7EAD3: MemLdStr global_68
  loc_A7EAD6: LitStr vbNullString
  loc_A7EAD9: NeStr
  loc_A7EADB: BranchF loc_A7EB00
  loc_A7EADE: FLdPr Me
  loc_A7EAE1: MemLdStr global_68
  loc_A7EAE4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7EAE9: FLdPr Me
  loc_A7EAEC: VCallAd Control_ID_DetalleTxt
  loc_A7EAEF: CVarAd
  loc_A7EAF3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7EAF8: FFree1Var var_A4 = ""
  loc_A7EAFB: LitI2_Byte &HFF
  loc_A7EAFD: IStI2 Cancel
  loc_A7EB00: ExitProcHresult
End Sub

Private Sub CompCtctTxt_GotFocus() '9BBFA0
  'Data Table: 518504
  loc_9BBF8C: FLdPr Me
  loc_9BBF8F: VCallAd Control_ID_CompCtctTxt
  loc_9BBF92: CVarAd
  loc_9BBF96: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BBF9B: FFree1Var var_94 = ""
  loc_9BBF9E: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() '9CCE0C
  'Data Table: 518504
  loc_9CCDF0: LitVar_Missing var_A4
  loc_9CCDF3: PopAdLdVar
  loc_9CCDF4: LitVarI4
  loc_9CCDFC: PopAdLdVar
  loc_9CCDFD: ImpAdLdRf MemVar_D94D64
  loc_9CCE00: NewIfNullPr dlgCreaDeudoresVariosConCreacion
  loc_9CCE03: dlgCreaDeudoresVariosConCreacion.Show from_stack_1, from_stack_2
  loc_9CCE08: ExitProcHresult
  loc_9CCE09: CCyI2
End Sub

Private Sub PorcDescTxt_GotFocus() '9BC300
  'Data Table: 518504
  loc_9BC2EC: FLdPr Me
  loc_9BC2EF: VCallAd Control_ID_PorcDescTxt
  loc_9BC2F2: CVarAd
  loc_9BC2F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC2FB: FFree1Var var_94 = ""
  loc_9BC2FE: ExitProcHresult
End Sub

Private Sub PorcDescTxt_KeyPress(KeyAscii As Integer) 'A06400
  'Data Table: 518504
  loc_A063CC: LitStr "1234567890,."
  loc_A063CF: FStStrCopy var_88
  loc_A063D2: FLdRfVar var_88
  loc_A063D5: ILdRf KeyAscii
  loc_A063D8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A063DD: IStI2 KeyAscii
  loc_A063E0: FFree1Str var_88
  loc_A063E3: ILdI2 KeyAscii
  loc_A063E6: LitStr "."
  loc_A063E9: ImpAdCallI2 Asc()
  loc_A063EE: EqI2
  loc_A063EF: BranchF loc_A063FD
  loc_A063F2: LitStr ","
  loc_A063F5: ImpAdCallI2 Asc()
  loc_A063FA: IStI2 KeyAscii
  loc_A063FD: ExitProcHresult
End Sub

Private Sub PorcDescTxt_LostFocus() 'AFA258
  'Data Table: 518504
  loc_AFA090: FLdRfVar var_8C
  loc_AFA093: FLdPr Me
  loc_AFA096: VCallAd Control_ID_TotaBoleTxt
  loc_AFA099: FStAdFunc var_88
  loc_AFA09C: FLdPr var_88
  loc_AFA09F:  = Me.Text
  loc_AFA0A4: FLdZeroAd var_8C
  loc_AFA0A7: CVarStr var_9C
  loc_AFA0AA: ImpAdCallI2 IsNumeric()
  loc_AFA0AF: FLdRfVar var_A4
  loc_AFA0B2: FLdPr Me
  loc_AFA0B5: VCallAd Control_ID_PorcDescTxt
  loc_AFA0B8: FStAdFunc var_A0
  loc_AFA0BB: FLdPr var_A0
  loc_AFA0BE:  = Me.Text
  loc_AFA0C3: FLdZeroAd var_A4
  loc_AFA0C6: CVarStr var_B4
  loc_AFA0C9: ImpAdCallI2 IsNumeric()
  loc_AFA0CE: AndI4
  loc_AFA0CF: FFreeAd var_88 = ""
  loc_AFA0D6: FFreeVar var_9C = ""
  loc_AFA0DD: BranchF loc_AFA254
  loc_AFA0E0: FLdRfVar var_8C
  loc_AFA0E3: FLdPr Me
  loc_AFA0E6: VCallAd Control_ID_TotaBoleTxt
  loc_AFA0E9: FStAdFunc var_88
  loc_AFA0EC: FLdPr var_88
  loc_AFA0EF:  = Me.Text
  loc_AFA0F4: FLdRfVar var_A4
  loc_AFA0F7: FLdPr Me
  loc_AFA0FA: VCallAd Control_ID_PorcDescTxt
  loc_AFA0FD: FStAdFunc var_A0
  loc_AFA100: FLdPr var_A0
  loc_AFA103:  = Me.Text
  loc_AFA108: LitI4 1
  loc_AFA10D: LitI4 1
  loc_AFA112: LitVarStr var_D4, "0.00"
  loc_AFA117: FStVarCopyObj var_B4
  loc_AFA11A: FLdRfVar var_B4
  loc_AFA11D: ILdRf var_8C
  loc_AFA120: CR8Str
  loc_AFA122: ILdRf var_A4
  loc_AFA125: CR8Str
  loc_AFA127: MulR8
  loc_AFA128: LitI2_Byte &H64
  loc_AFA12A: CR8I2
  loc_AFA12B: DivR8
  loc_AFA12C: CVarR8
  loc_AFA130: FLdRfVar var_E4
  loc_AFA133: ImpAdCallFPR4  = Format(, )
  loc_AFA138: FLdRfVar var_E4
  loc_AFA13B: CStrVarVal var_E8
  loc_AFA13F: FLdPr Me
  loc_AFA142: VCallAd Control_ID_DescBoleTxt
  loc_AFA145: FStAdFunc var_EC
  loc_AFA148: FLdPr var_EC
  loc_AFA14B: Me.Text = from_stack_1
  loc_AFA150: FFreeStr var_8C = "": var_A4 = ""
  loc_AFA159: FFreeAd var_88 = "": var_A0 = ""
  loc_AFA162: FFreeVar var_9C = "": var_B4 = ""
  loc_AFA16B: FLdRfVar var_8C
  loc_AFA16E: FLdPr Me
  loc_AFA171: VCallAd Control_ID_TotaBoleTxt
  loc_AFA174: FStAdFunc var_88
  loc_AFA177: FLdPr var_88
  loc_AFA17A:  = Me.Text
  loc_AFA17F: FLdRfVar var_A4
  loc_AFA182: FLdPr Me
  loc_AFA185: VCallAd Control_ID_DescBoleTxt
  loc_AFA188: FStAdFunc var_A0
  loc_AFA18B: FLdPr var_A0
  loc_AFA18E:  = Me.Text
  loc_AFA193: LitI4 1
  loc_AFA198: LitI4 1
  loc_AFA19D: LitVarStr var_D4, "0.00"
  loc_AFA1A2: FStVarCopyObj var_B4
  loc_AFA1A5: FLdRfVar var_B4
  loc_AFA1A8: ILdRf var_8C
  loc_AFA1AB: CR8Str
  loc_AFA1AD: ILdRf var_A4
  loc_AFA1B0: CR8Str
  loc_AFA1B2: SubR4
  loc_AFA1B3: CVarR8
  loc_AFA1B7: FLdRfVar var_E4
  loc_AFA1BA: ImpAdCallFPR4  = Format(, )
  loc_AFA1BF: FLdRfVar var_E4
  loc_AFA1C2: CStrVarVal var_E8
  loc_AFA1C6: FLdPr Me
  loc_AFA1C9: VCallAd Control_ID_TotalTxt
  loc_AFA1CC: FStAdFunc var_EC
  loc_AFA1CF: FLdPr var_EC
  loc_AFA1D2: Me.Text = from_stack_1
  loc_AFA1D7: FFreeStr var_8C = "": var_A4 = ""
  loc_AFA1E0: FFreeAd var_88 = "": var_A0 = ""
  loc_AFA1E9: FFreeVar var_9C = "": var_B4 = ""
  loc_AFA1F2: FLdRfVar var_8C
  loc_AFA1F5: FLdPr Me
  loc_AFA1F8: VCallAd Control_ID_PorcDescTxt
  loc_AFA1FB: FStAdFunc var_88
  loc_AFA1FE: FLdPr var_88
  loc_AFA201:  = Me.Text
  loc_AFA206: LitI4 1
  loc_AFA20B: LitI4 1
  loc_AFA210: LitVarStr var_C4, "0.00"
  loc_AFA215: FStVarCopyObj var_B4
  loc_AFA218: FLdRfVar var_B4
  loc_AFA21B: FLdZeroAd var_8C
  loc_AFA21E: CVarStr var_9C
  loc_AFA221: FLdRfVar var_E4
  loc_AFA224: ImpAdCallFPR4  = Format(, )
  loc_AFA229: FLdRfVar var_E4
  loc_AFA22C: CStrVarVal var_A4
  loc_AFA230: FLdPr Me
  loc_AFA233: VCallAd Control_ID_PorcDescTxt
  loc_AFA236: FStAdFunc var_A0
  loc_AFA239: FLdPr var_A0
  loc_AFA23C: Me.Text = from_stack_1
  loc_AFA241: FFree1Str var_A4
  loc_AFA244: FFreeAd var_88 = ""
  loc_AFA24B: FFreeVar var_9C = "": var_B4 = ""
  loc_AFA254: ExitProcHresult
End Sub

Private Sub DescuentoChk_Click() 'B0A130
  'Data Table: 518504
  loc_B09F0C: FLdRfVar var_8A
  loc_B09F0F: FLdPr Me
  loc_B09F12: VCallAd Control_ID_DescuentoChk
  loc_B09F15: FStAdFunc var_88
  loc_B09F18: FLdPr var_88
  loc_B09F1B:  = Me.Value
  loc_B09F20: FLdI2 var_8A
  loc_B09F23: LitI2_Byte 0
  loc_B09F25: EqI2
  loc_B09F26: FFree1Ad var_88
  loc_B09F29: BranchF loc_B0A02F
  loc_B09F2C: LitI2_Byte 0
  loc_B09F2E: FLdPr Me
  loc_B09F31: VCallAd Control_ID_PorcDescTxt
  loc_B09F34: FStAdFunc var_88
  loc_B09F37: FLdPr var_88
  loc_B09F3A: Me.Visible = from_stack_1b
  loc_B09F3F: FFree1Ad var_88
  loc_B09F42: LitI2_Byte 0
  loc_B09F44: FLdPr Me
  loc_B09F47: VCallAd Control_ID_DescBoleLbl
  loc_B09F4A: FStAdFunc var_88
  loc_B09F4D: FLdPr var_88
  loc_B09F50: Me.Visible = from_stack_1b
  loc_B09F55: FFree1Ad var_88
  loc_B09F58: LitI2_Byte 0
  loc_B09F5A: FLdPr Me
  loc_B09F5D: VCallAd Control_ID_DescBoleTxt
  loc_B09F60: FStAdFunc var_88
  loc_B09F63: FLdPr var_88
  loc_B09F66: Me.Visible = from_stack_1b
  loc_B09F6B: FFree1Ad var_88
  loc_B09F6E: LitI2_Byte 0
  loc_B09F70: FLdPr Me
  loc_B09F73: VCallAd Control_ID_TotalLbl
  loc_B09F76: FStAdFunc var_88
  loc_B09F79: FLdPr var_88
  loc_B09F7C: Me.Visible = from_stack_1b
  loc_B09F81: FFree1Ad var_88
  loc_B09F84: LitI2_Byte 0
  loc_B09F86: FLdPr Me
  loc_B09F89: VCallAd Control_ID_TotalTxt
  loc_B09F8C: FStAdFunc var_88
  loc_B09F8F: FLdPr var_88
  loc_B09F92: Me.Visible = from_stack_1b
  loc_B09F97: FFree1Ad var_88
  loc_B09F9A: LitI4 1
  loc_B09F9F: LitI4 1
  loc_B09FA4: LitVarStr var_BC, "0.00"
  loc_B09FA9: FStVarCopyObj var_CC
  loc_B09FAC: FLdRfVar var_CC
  loc_B09FAF: LitVarI2 var_AC, 0
  loc_B09FB4: FLdRfVar var_DC
  loc_B09FB7: ImpAdCallFPR4  = Format(, )
  loc_B09FBC: FLdRfVar var_DC
  loc_B09FBF: CStrVarVal var_E0
  loc_B09FC3: FLdPr Me
  loc_B09FC6: VCallAd Control_ID_DescBoleTxt
  loc_B09FC9: FStAdFunc var_88
  loc_B09FCC: FLdPr var_88
  loc_B09FCF: Me.Text = from_stack_1
  loc_B09FD4: FFree1Str var_E0
  loc_B09FD7: FFree1Ad var_88
  loc_B09FDA: FFreeVar var_AC = "": var_CC = ""
  loc_B09FE3: LitI4 1
  loc_B09FE8: LitI4 1
  loc_B09FED: LitVarStr var_BC, "0.00"
  loc_B09FF2: FStVarCopyObj var_CC
  loc_B09FF5: FLdRfVar var_CC
  loc_B09FF8: LitVarI2 var_AC, 0
  loc_B09FFD: FLdRfVar var_DC
  loc_B0A000: ImpAdCallFPR4  = Format(, )
  loc_B0A005: FLdRfVar var_DC
  loc_B0A008: CStrVarVal var_E0
  loc_B0A00C: FLdPr Me
  loc_B0A00F: VCallAd Control_ID_PorcDescTxt
  loc_B0A012: FStAdFunc var_88
  loc_B0A015: FLdPr var_88
  loc_B0A018: Me.Text = from_stack_1
  loc_B0A01D: FFree1Str var_E0
  loc_B0A020: FFree1Ad var_88
  loc_B0A023: FFreeVar var_AC = "": var_CC = ""
  loc_B0A02C: Branch loc_B0A12F
  loc_B0A02F: LitI2_Byte &HFF
  loc_B0A031: FLdPr Me
  loc_B0A034: VCallAd Control_ID_PorcDescTxt
  loc_B0A037: FStAdFunc var_88
  loc_B0A03A: FLdPr var_88
  loc_B0A03D: Me.Visible = from_stack_1b
  loc_B0A042: FFree1Ad var_88
  loc_B0A045: LitI2_Byte &HFF
  loc_B0A047: FLdPr Me
  loc_B0A04A: VCallAd Control_ID_DescBoleLbl
  loc_B0A04D: FStAdFunc var_88
  loc_B0A050: FLdPr var_88
  loc_B0A053: Me.Visible = from_stack_1b
  loc_B0A058: FFree1Ad var_88
  loc_B0A05B: LitI2_Byte &HFF
  loc_B0A05D: FLdPr Me
  loc_B0A060: VCallAd Control_ID_DescBoleTxt
  loc_B0A063: FStAdFunc var_88
  loc_B0A066: FLdPr var_88
  loc_B0A069: Me.Visible = from_stack_1b
  loc_B0A06E: FFree1Ad var_88
  loc_B0A071: LitI2_Byte &HFF
  loc_B0A073: FLdPr Me
  loc_B0A076: VCallAd Control_ID_TotalLbl
  loc_B0A079: FStAdFunc var_88
  loc_B0A07C: FLdPr var_88
  loc_B0A07F: Me.Visible = from_stack_1b
  loc_B0A084: FFree1Ad var_88
  loc_B0A087: LitI2_Byte &HFF
  loc_B0A089: FLdPr Me
  loc_B0A08C: VCallAd Control_ID_TotalTxt
  loc_B0A08F: FStAdFunc var_88
  loc_B0A092: FLdPr var_88
  loc_B0A095: Me.Visible = from_stack_1b
  loc_B0A09A: FFree1Ad var_88
  loc_B0A09D: LitI4 1
  loc_B0A0A2: LitI4 1
  loc_B0A0A7: LitVarStr var_BC, "0.00"
  loc_B0A0AC: FStVarCopyObj var_CC
  loc_B0A0AF: FLdRfVar var_CC
  loc_B0A0B2: LitVarI2 var_AC, 0
  loc_B0A0B7: FLdRfVar var_DC
  loc_B0A0BA: ImpAdCallFPR4  = Format(, )
  loc_B0A0BF: FLdRfVar var_DC
  loc_B0A0C2: CStrVarVal var_E0
  loc_B0A0C6: FLdPr Me
  loc_B0A0C9: VCallAd Control_ID_DescBoleTxt
  loc_B0A0CC: FStAdFunc var_88
  loc_B0A0CF: FLdPr var_88
  loc_B0A0D2: Me.Text = from_stack_1
  loc_B0A0D7: FFree1Str var_E0
  loc_B0A0DA: FFree1Ad var_88
  loc_B0A0DD: FFreeVar var_AC = "": var_CC = ""
  loc_B0A0E6: LitI4 1
  loc_B0A0EB: LitI4 1
  loc_B0A0F0: LitVarStr var_BC, "0.00"
  loc_B0A0F5: FStVarCopyObj var_CC
  loc_B0A0F8: FLdRfVar var_CC
  loc_B0A0FB: LitVarI2 var_AC, 0
  loc_B0A100: FLdRfVar var_DC
  loc_B0A103: ImpAdCallFPR4  = Format(, )
  loc_B0A108: FLdRfVar var_DC
  loc_B0A10B: CStrVarVal var_E0
  loc_B0A10F: FLdPr Me
  loc_B0A112: VCallAd Control_ID_PorcDescTxt
  loc_B0A115: FStAdFunc var_88
  loc_B0A118: FLdPr var_88
  loc_B0A11B: Me.Text = from_stack_1
  loc_B0A120: FFree1Str var_E0
  loc_B0A123: FFree1Ad var_88
  loc_B0A126: FFreeVar var_AC = "": var_CC = ""
  loc_B0A12F: ExitProcHresult
End Sub

Private Sub ExpeCtct1Msk_UnknownEvent_0 '9BBEC8
  'Data Table: 518504
  loc_9BBEB4: FLdPr Me
  loc_9BBEB7: VCallAd Control_ID_ExpeCtct1Msk
  loc_9BBEBA: CVarAd
  loc_9BBEBE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BBEC3: FFree1Var var_94 = ""
  loc_9BBEC6: ExitProcHresult
End Sub

Private Sub ExpeCtct1Msk_UnknownEvent_8 'A78820
  'Data Table: 518504
  loc_A787B8: FLdPr Me
  loc_A787BB: VCallAd Control_ID_ExpeCtct1Msk
  loc_A787BE: FStAdFunc var_88
  loc_A787C1: FLdPr var_88
  loc_A787C4: LateIdLdVar var_98 DispID_22 0
  loc_A787CB: PopAd
  loc_A787CD: LitI4 1
  loc_A787D2: LitI4 1
  loc_A787D7: LitVarStr var_B8, "000000"
  loc_A787DC: FStVarCopyObj var_C8
  loc_A787DF: FLdRfVar var_C8
  loc_A787E2: FLdRfVar var_98
  loc_A787E5: CStrVarTmp
  loc_A787E6: CVarStr var_A8
  loc_A787E9: FLdRfVar var_D8
  loc_A787EC: ImpAdCallFPR4  = Format(, )
  loc_A787F1: FLdRfVar var_D8
  loc_A787F4: CStrVarTmp
  loc_A787F5: CVarStr var_E8
  loc_A787F8: PopAdLdVar
  loc_A787F9: FLdPr Me
  loc_A787FC: VCallAd Control_ID_ExpeCtct1Msk
  loc_A787FF: FStAdFunc var_FC
  loc_A78802: FLdPr var_FC
  loc_A78805: LateIdSt
  loc_A7880A: FFreeAd var_88 = ""
  loc_A78811: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_A7881E: ExitProcHresult
End Sub

Private Sub ExpeCtct2Msk_UnknownEvent_0 '9BD158
  'Data Table: 518504
  loc_9BD144: FLdPr Me
  loc_9BD147: VCallAd Control_ID_ExpeCtct2Msk
  loc_9BD14A: CVarAd
  loc_9BD14E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD153: FFree1Var var_94 = ""
  loc_9BD156: ExitProcHresult
  loc_9BD157: GeI4
End Sub

Private Sub ExpeCtct2Msk_UnknownEvent_8 'A78FDC
  'Data Table: 518504
  loc_A78F74: FLdPr Me
  loc_A78F77: VCallAd Control_ID_ExpeCtct2Msk
  loc_A78F7A: FStAdFunc var_88
  loc_A78F7D: FLdPr var_88
  loc_A78F80: LateIdLdVar var_98 DispID_22 0
  loc_A78F87: PopAd
  loc_A78F89: LitI4 1
  loc_A78F8E: LitI4 1
  loc_A78F93: LitVarStr var_B8, "00"
  loc_A78F98: FStVarCopyObj var_C8
  loc_A78F9B: FLdRfVar var_C8
  loc_A78F9E: FLdRfVar var_98
  loc_A78FA1: CStrVarTmp
  loc_A78FA2: CVarStr var_A8
  loc_A78FA5: FLdRfVar var_D8
  loc_A78FA8: ImpAdCallFPR4  = Format(, )
  loc_A78FAD: FLdRfVar var_D8
  loc_A78FB0: CStrVarTmp
  loc_A78FB1: CVarStr var_E8
  loc_A78FB4: PopAdLdVar
  loc_A78FB5: FLdPr Me
  loc_A78FB8: VCallAd Control_ID_ExpeCtct2Msk
  loc_A78FBB: FStAdFunc var_FC
  loc_A78FBE: FLdPr var_FC
  loc_A78FC1: LateIdSt
  loc_A78FC6: FFreeAd var_88 = ""
  loc_A78FCD: FFreeVar var_98 = "": var_A8 = "": var_C8 = "": var_D8 = ""
  loc_A78FDA: ExitProcHresult
  loc_A78FDB: CStrVarTmp
End Sub

Private Sub PeriCtctMsk_UnknownEvent_0 '9BCA08
  'Data Table: 518504
  loc_9BC9F4: FLdPr Me
  loc_9BC9F7: VCallAd Control_ID_PeriCtctMsk
  loc_9BC9FA: CVarAd
  loc_9BC9FE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BCA03: FFree1Var var_94 = ""
  loc_9BCA06: ExitProcHresult
End Sub

Private Function PeriCtctMsk_UnknownEvent_8(arg_C) 'A73DF4
  'Data Table: 518504
  loc_A73D84: FLdPr Me
  loc_A73D87: VCallAd Control_ID_PeriCtctMsk
  loc_A73D8A: FStAdFunc var_88
  loc_A73D8D: FLdPr var_88
  loc_A73D90: LateIdLdVar var_98 DispID_22 0
  loc_A73D97: PopAd
  loc_A73D99: LitI2_Byte 0
  loc_A73D9B: FLdRfVar var_98
  loc_A73D9E: CStrVarTmp
  loc_A73D9F: FStStrNoPop var_9C
  loc_A73DA2: LitStr "el Año"
  loc_A73DA5: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A73DAA: FStStrNoPop var_A0
  loc_A73DAD: FLdPr Me
  loc_A73DB0: MemStStrCopy
  loc_A73DB4: FFreeStr var_9C = ""
  loc_A73DBB: FFree1Ad var_88
  loc_A73DBE: FFree1Var var_98 = ""
  loc_A73DC1: FLdPr Me
  loc_A73DC4: MemLdStr global_68
  loc_A73DC7: LitStr vbNullString
  loc_A73DCA: NeStr
  loc_A73DCC: BranchF loc_A73DF1
  loc_A73DCF: FLdPr Me
  loc_A73DD2: MemLdStr global_68
  loc_A73DD5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A73DDA: FLdPr Me
  loc_A73DDD: VCallAd Control_ID_PeriCtctMsk
  loc_A73DE0: CVarAd
  loc_A73DE4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A73DE9: FFree1Var var_98 = ""
  loc_A73DEC: LitI2_Byte &HFF
  loc_A73DEE: IStI2 arg_C
  loc_A73DF1: ExitProcHresult
End Function

Private Sub ExpeCtctTxt_GotFocus() '9BBC88
  'Data Table: 518504
  loc_9BBC74: FLdPr Me
  loc_9BBC77: VCallAd Control_ID_ExpeCtctTxt
  loc_9BBC7A: CVarAd
  loc_9BBC7E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BBC83: FFree1Var var_94 = ""
  loc_9BBC86: ExitProcHresult
End Sub

Private Sub ExpeCtctTxt_Validate(Cancel As Boolean) 'A52E78
  'Data Table: 518504
  loc_A52E20: FLdRfVar var_8C
  loc_A52E23: FLdPr Me
  loc_A52E26: VCallAd Control_ID_ExpeCtctTxt
  loc_A52E29: FStAdFunc var_88
  loc_A52E2C: FLdPr var_88
  loc_A52E2F:  = Me.Text
  loc_A52E34: ILdRf var_8C
  loc_A52E37: FLdPr Me
  loc_A52E3A: MemLdRfVar from_stack_1.global_92
  loc_A52E3D: StFixedStrR
  loc_A52E41: FFree1Str var_8C
  loc_A52E44: FFree1Ad var_88
  loc_A52E47: FLdPr Me
  loc_A52E4A: MemLdRfVar from_stack_1.global_92
  loc_A52E4D: LdFixedStr
  loc_A52E50: FStStrNoPop var_8C
  loc_A52E53: FLdPr Me
  loc_A52E56: VCallAd Control_ID_ExpeCtctTxt
  loc_A52E59: FStAdFunc var_88
  loc_A52E5C: FLdPr var_88
  loc_A52E5F: Me.Text = from_stack_1
  loc_A52E64: ILdRf var_8C
  loc_A52E67: FLdPr Me
  loc_A52E6A: MemLdRfVar from_stack_1.global_92
  loc_A52E6D: StFixedStr
  loc_A52E70: FFree1Str var_8C
  loc_A52E73: FFree1Ad var_88
  loc_A52E76: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A4C33C
  'Data Table: 518504
  loc_A4C2F0: Call Proc_330_37_B18BA8()
  loc_A4C2F5: LitI4 0
  loc_A4C2FA: LitI4 0
  loc_A4C2FF: FLdRfVar var_88
  loc_A4C302: Redim
  loc_A4C30C: FLdPr Me
  loc_A4C30F: VCallAd Control_ID_ConfirmarCmd
  loc_A4C312: CVarAd
  loc_A4C316: ParmAry1St
  loc_A4C31C: FLdRfVar var_88
  loc_A4C31F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A4C324: FLdRfVar var_88
  loc_A4C327: Erase
  loc_A4C328: FLdPrThis
  loc_A4C329: VCallAd Control_ID_NumeCtaTxt
  loc_A4C32C: CVarAd
  loc_A4C330: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4C335: FFree1Var var_98 = ""
  loc_A4C338: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B61CB8
  'Data Table: 518504
  loc_B618B4: FLdRfVar var_8A
  loc_B618B7: FLdPr Me
  loc_B618BA: VCallAd Control_ID_NumeCtaTxt
  loc_B618BD: FStAdFunc var_88
  loc_B618C0: FLdPr var_88
  loc_B618C3:  = Me.Enabled
  loc_B618C8: FLdI2 var_8A
  loc_B618CB: FFree1Ad var_88
  loc_B618CE: BranchF loc_B61CB5
  loc_B618D1: FLdRfVar var_8A
  loc_B618D4: FLdPr Me
  loc_B618D7: VCallAd Control_ID_OficinaCbo
  loc_B618DA: FStAdFunc var_88
  loc_B618DD: FLdPr var_88
  loc_B618E0:  = Me.ListIndex
  loc_B618E5: FLdI2 var_8A
  loc_B618E8: FStI2 var_8C
  loc_B618EB: FFree1Ad var_88
  loc_B618EE: FLdI2 var_8C
  loc_B618F1: LitI2_Byte 0
  loc_B618F3: EqI2
  loc_B618F4: BranchF loc_B61902
  loc_B618F7: LitI2_Byte 1
  loc_B618F9: CUI1I2
  loc_B618FB: ImpAdStUI1 MemVar_D93038
  loc_B618FF: Branch loc_B6193B
  loc_B61902: FLdI2 var_8C
  loc_B61905: LitI2_Byte 1
  loc_B61907: EqI2
  loc_B61908: BranchF loc_B61916
  loc_B6190B: LitI2_Byte 2
  loc_B6190D: CUI1I2
  loc_B6190F: ImpAdStUI1 MemVar_D93038
  loc_B61913: Branch loc_B6193B
  loc_B61916: FLdI2 var_8C
  loc_B61919: LitI2_Byte 2
  loc_B6191B: EqI2
  loc_B6191C: BranchF loc_B6192A
  loc_B6191F: LitI2_Byte 3
  loc_B61921: CUI1I2
  loc_B61923: ImpAdStUI1 MemVar_D93038
  loc_B61927: Branch loc_B6193B
  loc_B6192A: FLdI2 var_8C
  loc_B6192D: LitI2_Byte 3
  loc_B6192F: EqI2
  loc_B61930: BranchF loc_B6193B
  loc_B61933: LitI2_Byte 4
  loc_B61935: CUI1I2
  loc_B61937: ImpAdStUI1 MemVar_D93038
  loc_B6193B: FLdRfVar var_90
  loc_B6193E: FLdPr Me
  loc_B61941: VCallAd Control_ID_NumeCtaTxt
  loc_B61944: FStAdFunc var_88
  loc_B61947: FLdPr var_88
  loc_B6194A:  = Me.Text
  loc_B6194F: FLdPr Me
  loc_B61952: MemLdRfVar from_stack_1.global_64
  loc_B61955: NewIfNullRf
  loc_B61959: LitStr "Titular"
  loc_B6195C: ILdRf var_90
  loc_B6195F: ImpAdLdUI1
  loc_B61963: CStrI2
  loc_B61965: FStStrNoPop var_94
  loc_B61968: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B6196D: FFreeStr var_94 = ""
  loc_B61974: FFree1Ad var_88
  loc_B61977: BranchF loc_B61C01
  loc_B6197A: FLdRfVar var_90
  loc_B6197D: FLdPr Me
  loc_B61980: MemLdRfVar from_stack_1.global_64
  loc_B61983: NewIfNullPr tblPersona
  loc_B61986: from_stack_1v = tblPersona.CucuPersGet()
  loc_B6198B: ILdRf var_90
  loc_B6198E: FLdPr Me
  loc_B61991: VCallAd Control_ID_CucuPersLbl
  loc_B61994: FStAdFunc var_88
  loc_B61997: FLdPr var_88
  loc_B6199A: Me.Caption = from_stack_1
  loc_B6199F: FFree1Str var_90
  loc_B619A2: FFree1Ad var_88
  loc_B619A5: FLdRfVar var_90
  loc_B619A8: FLdPr Me
  loc_B619AB: MemLdRfVar from_stack_1.global_64
  loc_B619AE: NewIfNullPr tblPersona
  loc_B619B1: from_stack_1v = tblPersona.DetaPersGet()
  loc_B619B6: ILdRf var_90
  loc_B619B9: FLdPr Me
  loc_B619BC: VCallAd Control_ID_DetaPersLbl
  loc_B619BF: FStAdFunc var_88
  loc_B619C2: FLdPr var_88
  loc_B619C5: Me.Caption = from_stack_1
  loc_B619CA: FFree1Str var_90
  loc_B619CD: FFree1Ad var_88
  loc_B619D0: FLdRfVar var_94
  loc_B619D3: FLdPr Me
  loc_B619D6: MemLdRfVar from_stack_1.global_64
  loc_B619D9: NewIfNullPr tblPersona
  loc_B619DC: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B619E1: FLdRfVar var_98
  loc_B619E4: FLdPr Me
  loc_B619E7: MemLdRfVar from_stack_1.global_64
  loc_B619EA: NewIfNullPr tblPersona
  loc_B619ED: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B619F2: FLdRfVar var_90
  loc_B619F5: FLdPr Me
  loc_B619F8: MemLdRfVar from_stack_1.global_64
  loc_B619FB: NewIfNullPr tblPersona
  loc_B619FE: from_stack_1v = tblPersona.DetaCallGet()
  loc_B61A03: ILdRf var_90
  loc_B61A06: LitStr " "
  loc_B61A09: ConcatStr
  loc_B61A0A: CVarStr var_F8
  loc_B61A0D: LitVarStr var_C8, vbNullString
  loc_B61A12: FStVarCopyObj var_D8
  loc_B61A15: FLdRfVar var_D8
  loc_B61A18: LitStr "Nro: "
  loc_B61A1B: ILdRf var_98
  loc_B61A1E: ConcatStr
  loc_B61A1F: CVarStr var_B8
  loc_B61A22: ILdRf var_94
  loc_B61A25: LitStr "0"
  loc_B61A28: NeStr
  loc_B61A2A: CVarBoolI2 var_A8
  loc_B61A2E: FLdRfVar var_E8
  loc_B61A31: ImpAdCallFPR4  = IIf(, , )
  loc_B61A36: FLdRfVar var_E8
  loc_B61A39: ConcatVar var_108
  loc_B61A3D: CStrVarVal var_10C
  loc_B61A41: FLdPr Me
  loc_B61A44: VCallAd Control_ID_DomiPersLbl
  loc_B61A47: FStAdFunc var_88
  loc_B61A4A: FLdPr var_88
  loc_B61A4D: Me.Caption = from_stack_1
  loc_B61A52: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B61A5D: FFree1Ad var_88
  loc_B61A60: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_B61A6F: FLdRfVar var_94
  loc_B61A72: FLdPr Me
  loc_B61A75: MemLdRfVar from_stack_1.global_64
  loc_B61A78: NewIfNullPr tblPersona
  loc_B61A7B: from_stack_1v = tblPersona.ManzPersGet()
  loc_B61A80: FLdRfVar var_98
  loc_B61A83: FLdPr Me
  loc_B61A86: MemLdRfVar from_stack_1.global_64
  loc_B61A89: NewIfNullPr tblPersona
  loc_B61A8C: from_stack_1v = tblPersona.ManzPersGet()
  loc_B61A91: FLdRfVar var_10C
  loc_B61A94: FLdPr Me
  loc_B61A97: MemLdRfVar from_stack_1.global_64
  loc_B61A9A: NewIfNullPr tblPersona
  loc_B61A9D: from_stack_1v = tblPersona.CasaPersGet()
  loc_B61AA2: FLdRfVar var_130
  loc_B61AA5: FLdPr Me
  loc_B61AA8: MemLdRfVar from_stack_1.global_64
  loc_B61AAB: NewIfNullPr tblPersona
  loc_B61AAE: from_stack_1v = tblPersona.CasaPersGet()
  loc_B61AB3: FLdRfVar var_90
  loc_B61AB6: FLdPr Me
  loc_B61AB9: MemLdRfVar from_stack_1.global_64
  loc_B61ABC: NewIfNullPr tblPersona
  loc_B61ABF: from_stack_1v = tblPersona.DetaBarrGet()
  loc_B61AC4: ILdRf var_90
  loc_B61AC7: LitStr " "
  loc_B61ACA: ConcatStr
  loc_B61ACB: CVarStr var_F8
  loc_B61ACE: LitVarStr var_C8, vbNullString
  loc_B61AD3: FStVarCopyObj var_D8
  loc_B61AD6: FLdRfVar var_D8
  loc_B61AD9: LitStr "Manz: "
  loc_B61ADC: ILdRf var_98
  loc_B61ADF: ConcatStr
  loc_B61AE0: CVarStr var_B8
  loc_B61AE3: ILdRf var_94
  loc_B61AE6: LitStr vbNullString
  loc_B61AE9: NeStr
  loc_B61AEB: CVarBoolI2 var_A8
  loc_B61AEF: FLdRfVar var_E8
  loc_B61AF2: ImpAdCallFPR4  = IIf(, , )
  loc_B61AF7: FLdRfVar var_E8
  loc_B61AFA: ConcatVar var_108
  loc_B61AFE: LitVarStr var_11C, " "
  loc_B61B03: ConcatVar var_12C
  loc_B61B07: LitVarStr var_160, vbNullString
  loc_B61B0C: FStVarCopyObj var_170
  loc_B61B0F: FLdRfVar var_170
  loc_B61B12: LitStr "Casa: "
  loc_B61B15: ILdRf var_130
  loc_B61B18: ConcatStr
  loc_B61B19: CVarStr var_150
  loc_B61B1C: ILdRf var_10C
  loc_B61B1F: LitStr vbNullString
  loc_B61B22: NeStr
  loc_B61B24: CVarBoolI2 var_140
  loc_B61B28: FLdRfVar var_180
  loc_B61B2B: ImpAdCallFPR4  = IIf(, , )
  loc_B61B30: FLdRfVar var_180
  loc_B61B33: ConcatVar var_190
  loc_B61B37: CStrVarVal var_194
  loc_B61B3B: FLdPr Me
  loc_B61B3E: VCallAd Control_ID_BarrPersLbl
  loc_B61B41: FStAdFunc var_88
  loc_B61B44: FLdPr var_88
  loc_B61B47: Me.Caption = from_stack_1
  loc_B61B4C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_10C = "": var_130 = ""
  loc_B61B5B: FFree1Ad var_88
  loc_B61B5E: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = ""
  loc_B61B79: FLdRfVar var_90
  loc_B61B7C: FLdPr Me
  loc_B61B7F: MemLdRfVar from_stack_1.global_64
  loc_B61B82: NewIfNullPr tblPersona
  loc_B61B85: from_stack_1v = tblPersona.UbicPersGet()
  loc_B61B8A: ILdRf var_90
  loc_B61B8D: LitStr " "
  loc_B61B90: ConcatStr
  loc_B61B91: FStStrNoPop var_98
  loc_B61B94: FLdRfVar var_94
  loc_B61B97: FLdPr Me
  loc_B61B9A: MemLdRfVar from_stack_1.global_64
  loc_B61B9D: NewIfNullPr tblPersona
  loc_B61BA0: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B61BA5: ILdRf var_94
  loc_B61BA8: ConcatStr
  loc_B61BA9: FStStrNoPop var_10C
  loc_B61BAC: FLdPr Me
  loc_B61BAF: VCallAd Control_ID_LocaPersLbl
  loc_B61BB2: FStAdFunc var_88
  loc_B61BB5: FLdPr var_88
  loc_B61BB8: Me.Caption = from_stack_1
  loc_B61BBD: FFreeStr var_90 = "": var_98 = "": var_94 = ""
  loc_B61BC8: FFree1Ad var_88
  loc_B61BCB: LitI4 0
  loc_B61BD0: LitI4 0
  loc_B61BD5: FLdRfVar var_198
  loc_B61BD8: Redim
  loc_B61BE2: FLdPr Me
  loc_B61BE5: VCallAd Control_ID_ConfirmarCmd
  loc_B61BE8: CVarAd
  loc_B61BEC: ParmAry1St
  loc_B61BF2: FLdRfVar var_198
  loc_B61BF5: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B61BFA: FLdRfVar var_198
  loc_B61BFD: Erase
  loc_B61BFE: Branch loc_B61CB5
  loc_B61C01: FLdRfVar var_90
  loc_B61C04: FLdPr Me
  loc_B61C07: MemLdRfVar from_stack_1.global_64
  loc_B61C0A: NewIfNullPr tblPersona
  loc_B61C0D: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B61C12: ILdRf var_90
  loc_B61C15: FLdPr Me
  loc_B61C18: MemStStrCopy
  loc_B61C1C: FFree1Str var_90
  loc_B61C1F: FLdPr Me
  loc_B61C22: MemLdStr global_68
  loc_B61C25: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B61C2A: LitStr vbNullString
  loc_B61C2D: FLdPr Me
  loc_B61C30: VCallAd Control_ID_CucuPersLbl
  loc_B61C33: FStAdFunc var_88
  loc_B61C36: FLdPr var_88
  loc_B61C39: Me.Caption = from_stack_1
  loc_B61C3E: FFree1Ad var_88
  loc_B61C41: LitStr vbNullString
  loc_B61C44: FLdPr Me
  loc_B61C47: VCallAd Control_ID_DetaPersLbl
  loc_B61C4A: FStAdFunc var_88
  loc_B61C4D: FLdPr var_88
  loc_B61C50: Me.Caption = from_stack_1
  loc_B61C55: FFree1Ad var_88
  loc_B61C58: LitStr vbNullString
  loc_B61C5B: FLdPr Me
  loc_B61C5E: VCallAd Control_ID_DomiPersLbl
  loc_B61C61: FStAdFunc var_88
  loc_B61C64: FLdPr var_88
  loc_B61C67: Me.Caption = from_stack_1
  loc_B61C6C: FFree1Ad var_88
  loc_B61C6F: LitStr vbNullString
  loc_B61C72: FLdPr Me
  loc_B61C75: VCallAd Control_ID_BarrPersLbl
  loc_B61C78: FStAdFunc var_88
  loc_B61C7B: FLdPr var_88
  loc_B61C7E: Me.Caption = from_stack_1
  loc_B61C83: FFree1Ad var_88
  loc_B61C86: LitStr vbNullString
  loc_B61C89: FLdPr Me
  loc_B61C8C: VCallAd Control_ID_LocaPersLbl
  loc_B61C8F: FStAdFunc var_88
  loc_B61C92: FLdPr var_88
  loc_B61C95: Me.Caption = from_stack_1
  loc_B61C9A: FFree1Ad var_88
  loc_B61C9D: FLdPr Me
  loc_B61CA0: VCallAd Control_ID_NumeCtaTxt
  loc_B61CA3: CVarAd
  loc_B61CA7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B61CAC: FFree1Var var_B8 = ""
  loc_B61CAF: LitI2_Byte &HFF
  loc_B61CB1: IStI2 Cancel
  loc_B61CB4: ExitProcHresult
  loc_B61CB5: ExitProcHresult
  loc_B61CB6: CCyI2
  loc_B61CB7: LtCyR8
End Sub

Private Sub OficinaCbo_Click() 'B23400
  'Data Table: 518504
  loc_B23170: FLdRfVar var_8A
  loc_B23173: FLdPr Me
  loc_B23176: VCallAd Control_ID_OficinaCbo
  loc_B23179: FStAdFunc var_88
  loc_B2317C: FLdPr var_88
  loc_B2317F:  = Me.ListIndex
  loc_B23184: FLdI2 var_8A
  loc_B23187: FStI2 var_8C
  loc_B2318A: FFree1Ad var_88
  loc_B2318D: FLdI2 var_8C
  loc_B23190: LitI2_Byte 0
  loc_B23192: EqI2
  loc_B23193: BranchF loc_B231A1
  loc_B23196: LitI2_Byte 1
  loc_B23198: CUI1I2
  loc_B2319A: ImpAdStUI1 MemVar_D93038
  loc_B2319E: Branch loc_B231DA
  loc_B231A1: FLdI2 var_8C
  loc_B231A4: LitI2_Byte 1
  loc_B231A6: EqI2
  loc_B231A7: BranchF loc_B231B5
  loc_B231AA: LitI2_Byte 2
  loc_B231AC: CUI1I2
  loc_B231AE: ImpAdStUI1 MemVar_D93038
  loc_B231B2: Branch loc_B231DA
  loc_B231B5: FLdI2 var_8C
  loc_B231B8: LitI2_Byte 2
  loc_B231BA: EqI2
  loc_B231BB: BranchF loc_B231C9
  loc_B231BE: LitI2_Byte 3
  loc_B231C0: CUI1I2
  loc_B231C2: ImpAdStUI1 MemVar_D93038
  loc_B231C6: Branch loc_B231DA
  loc_B231C9: FLdI2 var_8C
  loc_B231CC: LitI2_Byte 3
  loc_B231CE: EqI2
  loc_B231CF: BranchF loc_B231DA
  loc_B231D2: LitI2_Byte 4
  loc_B231D4: CUI1I2
  loc_B231D6: ImpAdStUI1 MemVar_D93038
  loc_B231DA: ImpAdLdUI1
  loc_B231DE: CI2UI1
  loc_B231E0: LitI2_Byte 0
  loc_B231E2: NeI2
  loc_B231E3: FLdRfVar var_90
  loc_B231E6: FLdPr Me
  loc_B231E9: VCallAd Control_ID_NumeCtaTxt
  loc_B231EC: FStAdFunc var_88
  loc_B231EF: FLdPr var_88
  loc_B231F2:  = Me.Text
  loc_B231F7: ILdRf var_90
  loc_B231FA: LitStr vbNullString
  loc_B231FD: NeStr
  loc_B231FF: AndI4
  loc_B23200: FLdRfVar var_98
  loc_B23203: FLdPr Me
  loc_B23206: VCallAd Control_ID_NumeCtaTxt
  loc_B23209: FStAdFunc var_94
  loc_B2320C: FLdPr var_94
  loc_B2320F:  = Me.Text
  loc_B23214: ILdRf var_98
  loc_B23217: LitStr "0"
  loc_B2321A: NeStr
  loc_B2321C: AndI4
  loc_B2321D: FFreeStr var_90 = ""
  loc_B23224: FFreeAd var_88 = ""
  loc_B2322B: BranchF loc_B233FE
  loc_B2322E: FLdRfVar var_90
  loc_B23231: FLdPr Me
  loc_B23234: VCallAd Control_ID_NumeCtaTxt
  loc_B23237: FStAdFunc var_88
  loc_B2323A: FLdPr var_88
  loc_B2323D:  = Me.Text
  loc_B23242: FLdPr Me
  loc_B23245: MemLdRfVar from_stack_1.global_64
  loc_B23248: NewIfNullRf
  loc_B2324C: LitStr "Titular"
  loc_B2324F: ILdRf var_90
  loc_B23252: ImpAdLdUI1
  loc_B23256: CStrI2
  loc_B23258: FStStrNoPop var_98
  loc_B2325B: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B23260: FFreeStr var_98 = ""
  loc_B23267: FFree1Ad var_88
  loc_B2326A: BranchF loc_B2338F
  loc_B2326D: FLdRfVar var_90
  loc_B23270: FLdPr Me
  loc_B23273: MemLdRfVar from_stack_1.global_64
  loc_B23276: NewIfNullPr tblPersona
  loc_B23279: from_stack_1v = tblPersona.CucuPersGet()
  loc_B2327E: ILdRf var_90
  loc_B23281: FLdPr Me
  loc_B23284: VCallAd Control_ID_CucuPersLbl
  loc_B23287: FStAdFunc var_88
  loc_B2328A: FLdPr var_88
  loc_B2328D: Me.Caption = from_stack_1
  loc_B23292: FFree1Str var_90
  loc_B23295: FFree1Ad var_88
  loc_B23298: FLdRfVar var_90
  loc_B2329B: FLdPr Me
  loc_B2329E: MemLdRfVar from_stack_1.global_64
  loc_B232A1: NewIfNullPr tblPersona
  loc_B232A4: from_stack_1v = tblPersona.DetaPersGet()
  loc_B232A9: ILdRf var_90
  loc_B232AC: FLdPr Me
  loc_B232AF: VCallAd Control_ID_DetaPersLbl
  loc_B232B2: FStAdFunc var_88
  loc_B232B5: FLdPr var_88
  loc_B232B8: Me.Caption = from_stack_1
  loc_B232BD: FFree1Str var_90
  loc_B232C0: FFree1Ad var_88
  loc_B232C3: FLdRfVar var_98
  loc_B232C6: FLdPr Me
  loc_B232C9: MemLdRfVar from_stack_1.global_64
  loc_B232CC: NewIfNullPr tblPersona
  loc_B232CF: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B232D4: FLdRfVar var_9C
  loc_B232D7: FLdPr Me
  loc_B232DA: MemLdRfVar from_stack_1.global_64
  loc_B232DD: NewIfNullPr tblPersona
  loc_B232E0: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B232E5: FLdRfVar var_90
  loc_B232E8: FLdPr Me
  loc_B232EB: MemLdRfVar from_stack_1.global_64
  loc_B232EE: NewIfNullPr tblPersona
  loc_B232F1: from_stack_1v = tblPersona.DetaCallGet()
  loc_B232F6: ILdRf var_90
  loc_B232F9: LitStr " "
  loc_B232FC: ConcatStr
  loc_B232FD: CVarStr var_FC
  loc_B23300: LitVarStr var_CC, vbNullString
  loc_B23305: FStVarCopyObj var_DC
  loc_B23308: FLdRfVar var_DC
  loc_B2330B: LitStr "Nro: "
  loc_B2330E: ILdRf var_9C
  loc_B23311: ConcatStr
  loc_B23312: CVarStr var_BC
  loc_B23315: ILdRf var_98
  loc_B23318: LitStr "0"
  loc_B2331B: NeStr
  loc_B2331D: CVarBoolI2 var_AC
  loc_B23321: FLdRfVar var_EC
  loc_B23324: ImpAdCallFPR4  = IIf(, , )
  loc_B23329: FLdRfVar var_EC
  loc_B2332C: ConcatVar var_10C
  loc_B23330: LitVarStr var_11C, " "
  loc_B23335: ConcatVar var_12C
  loc_B23339: FLdRfVar var_130
  loc_B2333C: FLdPr Me
  loc_B2333F: MemLdRfVar from_stack_1.global_64
  loc_B23342: NewIfNullPr tblPersona
  loc_B23345: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B2334A: FLdZeroAd var_130
  loc_B2334D: CVarStr var_140
  loc_B23350: ConcatVar var_150
  loc_B23354: CStrVarVal var_154
  loc_B23358: FLdPr Me
  loc_B2335B: VCallAd Control_ID_DomiPersLbl
  loc_B2335E: FStAdFunc var_88
  loc_B23361: FLdPr var_88
  loc_B23364: Me.Caption = from_stack_1
  loc_B23369: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B23374: FFree1Ad var_88
  loc_B23377: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B2338C: Branch loc_B233FE
  loc_B2338F: FLdRfVar var_90
  loc_B23392: FLdPr Me
  loc_B23395: MemLdRfVar from_stack_1.global_64
  loc_B23398: NewIfNullPr tblPersona
  loc_B2339B: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B233A0: ILdRf var_90
  loc_B233A3: FLdPr Me
  loc_B233A6: MemStStrCopy
  loc_B233AA: FFree1Str var_90
  loc_B233AD: FLdPr Me
  loc_B233B0: MemLdStr global_68
  loc_B233B3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B233B8: LitStr vbNullString
  loc_B233BB: FLdPr Me
  loc_B233BE: VCallAd Control_ID_CucuPersLbl
  loc_B233C1: FStAdFunc var_88
  loc_B233C4: FLdPr var_88
  loc_B233C7: Me.Caption = from_stack_1
  loc_B233CC: FFree1Ad var_88
  loc_B233CF: LitStr vbNullString
  loc_B233D2: FLdPr Me
  loc_B233D5: VCallAd Control_ID_DetaPersLbl
  loc_B233D8: FStAdFunc var_88
  loc_B233DB: FLdPr var_88
  loc_B233DE: Me.Caption = from_stack_1
  loc_B233E3: FFree1Ad var_88
  loc_B233E6: LitStr vbNullString
  loc_B233E9: FLdPr Me
  loc_B233EC: VCallAd Control_ID_DomiPersLbl
  loc_B233EF: FStAdFunc var_88
  loc_B233F2: FLdPr var_88
  loc_B233F5: Me.Caption = from_stack_1
  loc_B233FA: FFree1Ad var_88
  loc_B233FD: ExitProcHresult
  loc_B233FE: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'A224FC
  'Data Table: 518504
  loc_A224C0: Call Proc_330_37_B18BA8()
  loc_A224C5: LitI4 0
  loc_A224CA: LitI4 0
  loc_A224CF: FLdRfVar var_88
  loc_A224D2: Redim
  loc_A224DC: FLdPr Me
  loc_A224DF: VCallAd Control_ID_ConfirmarCmd
  loc_A224E2: CVarAd
  loc_A224E6: ParmAry1St
  loc_A224EC: FLdRfVar var_88
  loc_A224EF: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A224F4: FLdRfVar var_88
  loc_A224F7: Erase
  loc_A224F8: ExitProcHresult
  loc_A224F9: InputItemI2
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9BC5D0
  'Data Table: 518504
  loc_9BC5BC: FLdPr Me
  loc_9BC5BF: VCallAd Control_ID_FechVencMsk
  loc_9BC5C2: CVarAd
  loc_9BC5C6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BC5CB: FFree1Var var_94 = ""
  loc_9BC5CE: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABC51C
  'Data Table: 518504
  loc_ABC424: FLdPr Me
  loc_ABC427: VCallAd Control_ID_FechVencMsk
  loc_ABC42A: FStAdFunc var_88
  loc_ABC42D: FLdPr var_88
  loc_ABC430: LateIdLdVar var_98 DispID_13 -32767
  loc_ABC437: CBoolVar
  loc_ABC439: LitI2_Byte &HFF
  loc_ABC43B: EqI2
  loc_ABC43C: FFree1Ad var_88
  loc_ABC43F: FFree1Var var_98 = ""
  loc_ABC442: BranchF loc_ABC51A
  loc_ABC445: LitVarStr var_A8, vbNullString
  loc_ABC44A: PopAdLdVar
  loc_ABC44B: FLdPr Me
  loc_ABC44E: VCallAd Control_ID_FechVencMsk
  loc_ABC451: FStAdFunc var_88
  loc_ABC454: FLdPr var_88
  loc_ABC457: LateIdSt
  loc_ABC45C: FFree1Ad var_88
  loc_ABC45F: FLdPr Me
  loc_ABC462: VCallAd Control_ID_FechVencMsk
  loc_ABC465: FStAdFunc var_88
  loc_ABC468: FLdPr var_88
  loc_ABC46B: LateIdLdVar var_98 DispID_22 0
  loc_ABC472: CStrVarTmp
  loc_ABC473: FStStrNoPop var_BC
  loc_ABC476: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABC47B: FStStrNoPop var_C0
  loc_ABC47E: FLdPr Me
  loc_ABC481: MemStStrCopy
  loc_ABC485: FFreeStr var_BC = ""
  loc_ABC48C: FFree1Ad var_88
  loc_ABC48F: FFree1Var var_98 = ""
  loc_ABC492: LitVarStr var_A8, "##/##/####"
  loc_ABC497: PopAdLdVar
  loc_ABC498: FLdPr Me
  loc_ABC49B: VCallAd Control_ID_FechVencMsk
  loc_ABC49E: FStAdFunc var_88
  loc_ABC4A1: FLdPr var_88
  loc_ABC4A4: LateIdSt
  loc_ABC4A9: FFree1Ad var_88
  loc_ABC4AC: LitVarI2 var_A8, 10
  loc_ABC4B1: PopAdLdVar
  loc_ABC4B2: FLdPr Me
  loc_ABC4B5: VCallAd Control_ID_FechVencMsk
  loc_ABC4B8: FStAdFunc var_88
  loc_ABC4BB: FLdPr var_88
  loc_ABC4BE: LateIdSt
  loc_ABC4C3: FFree1Ad var_88
  loc_ABC4C6: FLdPr Me
  loc_ABC4C9: MemLdStr global_68
  loc_ABC4CC: LitStr vbNullString
  loc_ABC4CF: NeStr
  loc_ABC4D1: BranchF loc_ABC51A
  loc_ABC4D4: FLdPr Me
  loc_ABC4D7: MemLdStr global_68
  loc_ABC4DA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABC4DF: LitI2_Byte 0
  loc_ABC4E1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABC4E6: CStrDate
  loc_ABC4E8: CVarStr var_98
  loc_ABC4EB: PopAdLdVar
  loc_ABC4EC: FLdPr Me
  loc_ABC4EF: VCallAd Control_ID_FechVencMsk
  loc_ABC4F2: FStAdFunc var_88
  loc_ABC4F5: FLdPr var_88
  loc_ABC4F8: LateIdSt
  loc_ABC4FD: FFree1Ad var_88
  loc_ABC500: FFree1Var var_98 = ""
  loc_ABC503: FLdPr Me
  loc_ABC506: VCallAd Control_ID_FechVencMsk
  loc_ABC509: CVarAd
  loc_ABC50D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABC512: FFree1Var var_98 = ""
  loc_ABC515: LitI2_Byte &HFF
  loc_ABC517: IStI2 arg_C
  loc_ABC51A: ExitProcHresult
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A229E0
  'Data Table: 518504
  loc_A22998: ILdI2 KeyAscii
  loc_A2299B: CI4UI1
  loc_A2299C: LitI4 &H20
  loc_A229A1: EqI4
  loc_A229A2: BranchF loc_A229DF
  loc_A229A5: LitVar_Missing var_A4
  loc_A229A8: PopAdLdVar
  loc_A229A9: LitVarI4
  loc_A229B1: PopAdLdVar
  loc_A229B2: ImpAdLdRf MemVar_D930A4
  loc_A229B5: NewIfNullPr frmCalendario
  loc_A229B8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A229BD: ImpAdLdRf MemVar_D93028
  loc_A229C0: CDargRef
  loc_A229C4: FLdPr Me
  loc_A229C7: VCallAd Control_ID_FechVencMsk
  loc_A229CA: FStAdFunc var_A8
  loc_A229CD: FLdPr var_A8
  loc_A229D0: LateIdSt
  loc_A229D5: FFree1Ad var_A8
  loc_A229D8: LitStr vbNullString
  loc_A229DB: ImpAdStStrCopy MemVar_D93028
  loc_A229DF: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'CC2928
  'Data Table: 518504
  loc_CC04D4: LitStr vbNullString
  loc_CC04D7: FLdPr Me
  loc_CC04DA: MemStStrCopy
  loc_CC04DE: LitI2_Byte 0
  loc_CC04E0: PopTmpLdAd2 var_9E
  loc_CC04E3: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_CC04E8: FLdPr Me
  loc_CC04EB: MemLdStr global_68
  loc_CC04EE: LitStr vbNullString
  loc_CC04F1: NeStr
  loc_CC04F3: BranchF loc_CC04F7
  loc_CC04F6: ExitProcHresult
  loc_CC04F7: LitI2_Byte 0
  loc_CC04F9: PopTmpLdAd2 var_9E
  loc_CC04FC: Call FeveCtctMsk_UnknownEvent_8()
  loc_CC0501: FLdPr Me
  loc_CC0504: MemLdStr global_68
  loc_CC0507: LitStr vbNullString
  loc_CC050A: NeStr
  loc_CC050C: BranchF loc_CC0510
  loc_CC050F: ExitProcHresult
  loc_CC0510: LitI2_Byte 0
  loc_CC0512: PopTmpLdAd2 var_9E
  loc_CC0515: Call ServDevaFlex_UnknownEvent_8()
  loc_CC051A: FLdPr Me
  loc_CC051D: MemLdStr global_68
  loc_CC0520: LitStr vbNullString
  loc_CC0523: NeStr
  loc_CC0525: BranchF loc_CC0529
  loc_CC0528: ExitProcHresult
  loc_CC0529: LitI2_Byte 0
  loc_CC052B: PopTmpLdAd2 var_9E
  loc_CC052E: Call DetalleTxt_Validate(from_stack_1v)
  loc_CC0533: FLdPr Me
  loc_CC0536: MemLdStr global_68
  loc_CC0539: LitStr vbNullString
  loc_CC053C: NeStr
  loc_CC053E: BranchF loc_CC0542
  loc_CC0541: ExitProcHresult
  loc_CC0542: LitI2_Byte 1
  loc_CC0544: FLdPr Me
  loc_CC0547: MemLdRfVar from_stack_1.global_72
  loc_CC054A: FLdPr Me
  loc_CC054D: VCallAd Control_ID_ServDevaFlex
  loc_CC0550: FStAdFunc var_A4
  loc_CC0553: FLdPr var_A4
  loc_CC0556: LateIdLdVar var_B4 DispID_4 0
  loc_CC055D: CI4Var
  loc_CC055F: LitI4 1
  loc_CC0564: SubI4
  loc_CC0565: CI2I4
  loc_CC0566: FFree1Ad var_A4
  loc_CC0569: FFree1Var var_B4 = ""
  loc_CC056C: ForI2 var_B8
  loc_CC0572: FLdPr Me
  loc_CC0575: MemLdI2 global_72
  loc_CC0578: CI4UI1
  loc_CC0579: CVarI4
  loc_CC057D: PopAdLdVar
  loc_CC057E: LitVarI4
  loc_CC0586: PopAdLdVar
  loc_CC0587: FLdPr Me
  loc_CC058A: VCallAd Control_ID_ServDevaFlex
  loc_CC058D: FStAdFunc var_A4
  loc_CC0590: FLdPr var_A4
  loc_CC0593: LateIdCallLdVar
  loc_CC059D: CStrVarTmp
  loc_CC059E: CVarStr var_108
  loc_CC05A1: ImpAdCallI2 IsNumeric()
  loc_CC05A6: NotI4
  loc_CC05A7: FFree1Ad var_A4
  loc_CC05AA: FFreeVar var_B4 = ""
  loc_CC05B1: BranchF loc_CC05E1
  loc_CC05B4: LitStr "Debe ingresar la cantidad. Verifique..."
  loc_CC05B7: FLdPr Me
  loc_CC05BA: MemStStrCopy
  loc_CC05BE: FLdPr Me
  loc_CC05C1: MemLdStr global_68
  loc_CC05C4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC05C9: FLdPr Me
  loc_CC05CC: VCallAd Control_ID_ServDevaFlex
  loc_CC05CF: FStAdFunc var_A4
  loc_CC05D2: FLdPr var_A4
  loc_CC05D5: LateIdCall
  loc_CC05DD: FFree1Ad var_A4
  loc_CC05E0: ExitProcHresult
  loc_CC05E1: FLdPr Me
  loc_CC05E4: MemLdI2 global_72
  loc_CC05E7: CI4UI1
  loc_CC05E8: CVarI4
  loc_CC05EC: PopAdLdVar
  loc_CC05ED: LitVarI4
  loc_CC05F5: PopAdLdVar
  loc_CC05F6: FLdPr Me
  loc_CC05F9: VCallAd Control_ID_ServDevaFlex
  loc_CC05FC: FStAdFunc var_A4
  loc_CC05FF: FLdPr var_A4
  loc_CC0602: LateIdCallLdVar
  loc_CC060C: CStrVarTmp
  loc_CC060D: CVarStr var_108
  loc_CC0610: ImpAdCallI2 IsNumeric()
  loc_CC0615: FFree1Ad var_A4
  loc_CC0618: FFreeVar var_B4 = ""
  loc_CC061F: BranchF loc_CC2115
  loc_CC0622: ImpAdLdUI1
  loc_CC0626: CI2UI1
  loc_CC0628: LitI2_Byte 1
  loc_CC062A: EqI2
  loc_CC062B: BranchF loc_CC1380
  loc_CC062E: LitStr "SELECT DetaSeca, ImpoSede * UntrPage as ImpoSede, concepto.PeriInfo, servcata.CodiConc, concepto.TiafConc FROM servcata "
  loc_CC0631: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CC0634: ConcatStr
  loc_CC0635: FStStrNoPop var_10C
  loc_CC0638: ImpAdLdI2 MemVar_D93034
  loc_CC063B: CStrUI1
  loc_CC063D: FStStrNoPop var_110
  loc_CC0640: ConcatStr
  loc_CC0641: FStStrNoPop var_114
  loc_CC0644: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_CC0647: ConcatStr
  loc_CC0648: FStStrNoPop var_118
  loc_CC064B: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CC064E: ConcatStr
  loc_CC064F: FStStrNoPop var_11C
  loc_CC0652: LitStr " WHERE servcata.PeriOrde = "
  loc_CC0655: ConcatStr
  loc_CC0656: FStStrNoPop var_120
  loc_CC0659: ImpAdLdI2 MemVar_D93036
  loc_CC065C: CStrUI1
  loc_CC065E: FStStrNoPop var_124
  loc_CC0661: ConcatStr
  loc_CC0662: FStStrNoPop var_128
  loc_CC0665: LitStr " AND CodiSeca = "
  loc_CC0668: ConcatStr
  loc_CC0669: FStStrNoPop var_12C
  loc_CC066C: FLdPr Me
  loc_CC066F: MemLdI2 global_72
  loc_CC0672: CI4UI1
  loc_CC0673: CVarI4
  loc_CC0677: PopAdLdVar
  loc_CC0678: LitVarI4
  loc_CC0680: PopAdLdVar
  loc_CC0681: FLdPr Me
  loc_CC0684: VCallAd Control_ID_ServDevaFlex
  loc_CC0687: FStAdFunc var_A4
  loc_CC068A: FLdPr var_A4
  loc_CC068D: LateIdCallLdVar
  loc_CC0697: CStrVarTmp
  loc_CC0698: FStStrNoPop var_130
  loc_CC069B: ConcatStr
  loc_CC069C: FStStrNoPop var_134
  loc_CC069F: FLdPr Me
  loc_CC06A2: MemLdRfVar from_stack_1.global_56
  loc_CC06A5: NewIfNullPr clsservdeva
  loc_CC06A8: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CC06AD: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_CC06C6: FFree1Ad var_A4
  loc_CC06C9: FFree1Var var_B4 = ""
  loc_CC06CC: FLdRfVar var_138
  loc_CC06CF: FLdRfVar var_A4
  loc_CC06D2: FLdPr Me
  loc_CC06D5: MemLdRfVar from_stack_1.global_56
  loc_CC06D8: NewIfNullPr clsservdeva
  loc_CC06DB: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC06E0: FLdPr var_A4
  loc_CC06E3:  = Me.RecordCount
  loc_CC06E8: ILdRf var_138
  loc_CC06EB: LitI4 0
  loc_CC06F0: GtI4
  loc_CC06F1: FFree1Ad var_A4
  loc_CC06F4: BranchF loc_CC11D0
  loc_CC06F7: FLdRfVar var_B4
  loc_CC06FA: FLdRfVar var_140
  loc_CC06FD: LitVarStr var_C8, "PeriInfo"
  loc_CC0702: PopAdLdVar
  loc_CC0703: FLdRfVar var_13C
  loc_CC0706: FLdRfVar var_A4
  loc_CC0709: FLdPr Me
  loc_CC070C: MemLdRfVar from_stack_1.global_56
  loc_CC070F: NewIfNullPr clsservdeva
  loc_CC0712: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC0717: FLdPr var_A4
  loc_CC071A:  = Me.Fields
  loc_CC071F: FLdPr var_13C
  loc_CC0722: from_stack_2 = Me.Item(from_stack_1)
  loc_CC0727: FLdPr var_140
  loc_CC072A:  = Me.Value
  loc_CC072F: FLdRfVar var_B4
  loc_CC0732: FnCIntVar
  loc_CC0734: ImpAdLdI2 MemVar_D93034
  loc_CC0737: NeI2
  loc_CC0738: FFreeAd var_A4 = "": var_13C = ""
  loc_CC0741: FFree1Var var_B4 = ""
  loc_CC0744: BranchF loc_CC08FA
  loc_CC0747: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CC074A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC074F: FLdPr Me
  loc_CC0752: VCallAd Control_ID_ServDevaFlex
  loc_CC0755: FStAdFunc var_A4
  loc_CC0758: FLdPr var_A4
  loc_CC075B: LateIdCall
  loc_CC0763: FFree1Ad var_A4
  loc_CC0766: FLdPr Me
  loc_CC0769: MemLdI2 global_72
  loc_CC076C: CI4UI1
  loc_CC076D: CVarI4
  loc_CC0771: PopAdLdVar
  loc_CC0772: LitVarI4
  loc_CC077A: PopAdLdVar
  loc_CC077B: LitVarStr var_150, vbNullString
  loc_CC0780: PopAdLdVar
  loc_CC0781: FLdPr Me
  loc_CC0784: VCallAd Control_ID_ServDevaFlex
  loc_CC0787: FStAdFunc var_A4
  loc_CC078A: FLdPr var_A4
  loc_CC078D: LateIdCallSt
  loc_CC0795: FFree1Ad var_A4
  loc_CC0798: FLdPr Me
  loc_CC079B: MemLdI2 global_72
  loc_CC079E: CI4UI1
  loc_CC079F: CVarI4
  loc_CC07A3: PopAdLdVar
  loc_CC07A4: LitVarI4
  loc_CC07AC: PopAdLdVar
  loc_CC07AD: LitVarStr var_150, vbNullString
  loc_CC07B2: PopAdLdVar
  loc_CC07B3: FLdPr Me
  loc_CC07B6: VCallAd Control_ID_ServDevaFlex
  loc_CC07B9: FStAdFunc var_A4
  loc_CC07BC: FLdPr var_A4
  loc_CC07BF: LateIdCallSt
  loc_CC07C7: FFree1Ad var_A4
  loc_CC07CA: FLdPr Me
  loc_CC07CD: MemLdI2 global_72
  loc_CC07D0: CI4UI1
  loc_CC07D1: CVarI4
  loc_CC07D5: PopAdLdVar
  loc_CC07D6: LitVarI4
  loc_CC07DE: PopAdLdVar
  loc_CC07DF: LitVarStr var_150, vbNullString
  loc_CC07E4: PopAdLdVar
  loc_CC07E5: FLdPr Me
  loc_CC07E8: VCallAd Control_ID_ServDevaFlex
  loc_CC07EB: FStAdFunc var_A4
  loc_CC07EE: FLdPr var_A4
  loc_CC07F1: LateIdCallSt
  loc_CC07F9: FFree1Ad var_A4
  loc_CC07FC: FLdPr Me
  loc_CC07FF: MemLdI2 global_72
  loc_CC0802: CI4UI1
  loc_CC0803: CVarI4
  loc_CC0807: PopAdLdVar
  loc_CC0808: LitVarI4
  loc_CC0810: PopAdLdVar
  loc_CC0811: LitVarStr var_150, vbNullString
  loc_CC0816: PopAdLdVar
  loc_CC0817: FLdPr Me
  loc_CC081A: VCallAd Control_ID_ServDevaFlex
  loc_CC081D: FStAdFunc var_A4
  loc_CC0820: FLdPr var_A4
  loc_CC0823: LateIdCallSt
  loc_CC082B: FFree1Ad var_A4
  loc_CC082E: FLdPr Me
  loc_CC0831: MemLdI2 global_72
  loc_CC0834: CI4UI1
  loc_CC0835: CVarI4
  loc_CC0839: PopAdLdVar
  loc_CC083A: LitVarI4
  loc_CC0842: PopAdLdVar
  loc_CC0843: LitVarStr var_150, vbNullString
  loc_CC0848: PopAdLdVar
  loc_CC0849: FLdPr Me
  loc_CC084C: VCallAd Control_ID_ServDevaFlex
  loc_CC084F: FStAdFunc var_A4
  loc_CC0852: FLdPr var_A4
  loc_CC0855: LateIdCallSt
  loc_CC085D: FFree1Ad var_A4
  loc_CC0860: FLdPr Me
  loc_CC0863: MemLdI2 global_72
  loc_CC0866: CI4UI1
  loc_CC0867: CVarI4
  loc_CC086B: PopAdLdVar
  loc_CC086C: LitVarI4
  loc_CC0874: PopAdLdVar
  loc_CC0875: LitVarStr var_150, vbNullString
  loc_CC087A: PopAdLdVar
  loc_CC087B: FLdPr Me
  loc_CC087E: VCallAd Control_ID_ServDevaFlex
  loc_CC0881: FStAdFunc var_A4
  loc_CC0884: FLdPr var_A4
  loc_CC0887: LateIdCallSt
  loc_CC088F: FFree1Ad var_A4
  loc_CC0892: FLdPr Me
  loc_CC0895: MemLdI2 global_72
  loc_CC0898: CI4UI1
  loc_CC0899: CVarI4
  loc_CC089D: PopAdLdVar
  loc_CC089E: LitVarI4
  loc_CC08A6: PopAdLdVar
  loc_CC08A7: LitVarStr var_150, vbNullString
  loc_CC08AC: PopAdLdVar
  loc_CC08AD: FLdPr Me
  loc_CC08B0: VCallAd Control_ID_ServDevaFlex
  loc_CC08B3: FStAdFunc var_A4
  loc_CC08B6: FLdPr var_A4
  loc_CC08B9: LateIdCallSt
  loc_CC08C1: FFree1Ad var_A4
  loc_CC08C4: FLdPr Me
  loc_CC08C7: MemLdI2 global_72
  loc_CC08CA: CI4UI1
  loc_CC08CB: CVarI4
  loc_CC08CF: PopAdLdVar
  loc_CC08D0: LitVarI4
  loc_CC08D8: PopAdLdVar
  loc_CC08D9: LitVarStr var_150, vbNullString
  loc_CC08DE: PopAdLdVar
  loc_CC08DF: FLdPr Me
  loc_CC08E2: VCallAd Control_ID_ServDevaFlex
  loc_CC08E5: FStAdFunc var_A4
  loc_CC08E8: FLdPr var_A4
  loc_CC08EB: LateIdCallSt
  loc_CC08F3: FFree1Ad var_A4
  loc_CC08F6: ExitProcHresult
  loc_CC08F7: Branch loc_CC11CD
  loc_CC08FA: FLdRfVar var_B4
  loc_CC08FD: FLdRfVar var_140
  loc_CC0900: LitVarStr var_C8, "PeriInfo"
  loc_CC0905: PopAdLdVar
  loc_CC0906: FLdRfVar var_13C
  loc_CC0909: FLdRfVar var_A4
  loc_CC090C: FLdPr Me
  loc_CC090F: MemLdRfVar from_stack_1.global_56
  loc_CC0912: NewIfNullPr clsservdeva
  loc_CC0915: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC091A: FLdPr var_A4
  loc_CC091D:  = Me.Fields
  loc_CC0922: FLdPr var_13C
  loc_CC0925: from_stack_2 = Me.Item(from_stack_1)
  loc_CC092A: FLdPr var_140
  loc_CC092D:  = Me.Value
  loc_CC0932: FLdRfVar var_108
  loc_CC0935: FLdRfVar var_16C
  loc_CC0938: LitVarStr var_D8, "CodiConc"
  loc_CC093D: PopAdLdVar
  loc_CC093E: FLdRfVar var_168
  loc_CC0941: FLdRfVar var_164
  loc_CC0944: FLdPr Me
  loc_CC0947: MemLdRfVar from_stack_1.global_56
  loc_CC094A: NewIfNullPr clsservdeva
  loc_CC094D: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC0952: FLdPr var_164
  loc_CC0955:  = Me.Fields
  loc_CC095A: FLdPr var_168
  loc_CC095D: from_stack_2 = Me.Item(from_stack_1)
  loc_CC0962: FLdPr var_16C
  loc_CC0965:  = Me.Value
  loc_CC096A: FLdRfVar var_108
  loc_CC096D: CStrVarTmp
  loc_CC096E: FStStrNoPop var_10C
  loc_CC0971: FLdRfVar var_B4
  loc_CC0974: CI2Var
  loc_CC0975: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CC097A: FStStrNoPop var_110
  loc_CC097D: LitStr vbNullString
  loc_CC0980: EqStr
  loc_CC0982: FFreeStr var_10C = ""
  loc_CC0989: FFreeAd var_A4 = "": var_13C = "": var_164 = "": var_168 = "": var_140 = ""
  loc_CC0998: FFreeVar var_B4 = ""
  loc_CC099F: BranchF loc_CC0A11
  loc_CC09A2: LitVarStr var_D8, "El recurso: "
  loc_CC09A7: FLdRfVar var_B4
  loc_CC09AA: FLdRfVar var_140
  loc_CC09AD: LitVarStr var_C8, "CodiConc"
  loc_CC09B2: PopAdLdVar
  loc_CC09B3: FLdRfVar var_13C
  loc_CC09B6: FLdRfVar var_A4
  loc_CC09B9: FLdPr Me
  loc_CC09BC: MemLdRfVar from_stack_1.global_56
  loc_CC09BF: NewIfNullPr clsservdeva
  loc_CC09C2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC09C7: FLdPr var_A4
  loc_CC09CA:  = Me.Fields
  loc_CC09CF: FLdPr var_13C
  loc_CC09D2: from_stack_2 = Me.Item(from_stack_1)
  loc_CC09D7: FLdPr var_140
  loc_CC09DA:  = Me.Value
  loc_CC09DF: FLdRfVar var_B4
  loc_CC09E2: ConcatVar var_108
  loc_CC09E6: LitVarStr var_E8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CC09EB: ConcatVar var_17C
  loc_CC09EF: CStrVarVal var_10C
  loc_CC09F3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC09F8: FFree1Str var_10C
  loc_CC09FB: FFreeAd var_A4 = "": var_13C = ""
  loc_CC0A04: FFreeVar var_B4 = "": var_108 = ""
  loc_CC0A0D: ExitProcHresult
  loc_CC0A0E: Branch loc_CC11CD
  loc_CC0A11: FLdRfVar var_B4
  loc_CC0A14: FLdRfVar var_140
  loc_CC0A17: LitVarStr var_C8, "TiafConc"
  loc_CC0A1C: PopAdLdVar
  loc_CC0A1D: FLdRfVar var_13C
  loc_CC0A20: FLdRfVar var_A4
  loc_CC0A23: FLdPr Me
  loc_CC0A26: MemLdRfVar from_stack_1.global_56
  loc_CC0A29: NewIfNullPr clsservdeva
  loc_CC0A2C: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC0A31: FLdPr var_A4
  loc_CC0A34:  = Me.Fields
  loc_CC0A39: FLdPr var_13C
  loc_CC0A3C: from_stack_2 = Me.Item(from_stack_1)
  loc_CC0A41: FLdPr var_140
  loc_CC0A44:  = Me.Value
  loc_CC0A49: FLdRfVar var_B4
  loc_CC0A4C: LitVarI2 var_D8, 0
  loc_CC0A51: HardType
  loc_CC0A52: EqVarBool
  loc_CC0A54: FFreeAd var_A4 = "": var_13C = ""
  loc_CC0A5D: FFree1Var var_B4 = ""
  loc_CC0A60: BranchF loc_CC0A6F
  loc_CC0A63: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CC0A66: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC0A6B: ExitProcHresult
  loc_CC0A6C: Branch loc_CC11CD
  loc_CC0A6F: FLdPr Me
  loc_CC0A72: MemLdI2 global_72
  loc_CC0A75: CI4UI1
  loc_CC0A76: CVarI4
  loc_CC0A7A: PopAdLdVar
  loc_CC0A7B: LitVarI4
  loc_CC0A83: PopAdLdVar
  loc_CC0A84: LitI2_Byte 1
  loc_CC0A86: CStrUI1
  loc_CC0A88: CVarStr var_B4
  loc_CC0A8B: PopAdLdVar
  loc_CC0A8C: FLdPr Me
  loc_CC0A8F: VCallAd Control_ID_ServDevaFlex
  loc_CC0A92: FStAdFunc var_A4
  loc_CC0A95: FLdPr var_A4
  loc_CC0A98: LateIdCallSt
  loc_CC0AA0: FFree1Ad var_A4
  loc_CC0AA3: FFree1Var var_B4 = ""
  loc_CC0AA6: FLdPr Me
  loc_CC0AA9: MemLdI2 global_72
  loc_CC0AAC: CI4UI1
  loc_CC0AAD: CVarI4
  loc_CC0AB1: PopAdLdVar
  loc_CC0AB2: LitVarI4
  loc_CC0ABA: PopAdLdVar
  loc_CC0ABB: FLdRfVar var_B4
  loc_CC0ABE: FLdRfVar var_140
  loc_CC0AC1: LitVarStr var_C8, "DetaSeca"
  loc_CC0AC6: PopAdLdVar
  loc_CC0AC7: FLdRfVar var_13C
  loc_CC0ACA: FLdRfVar var_A4
  loc_CC0ACD: FLdPr Me
  loc_CC0AD0: MemLdRfVar from_stack_1.global_56
  loc_CC0AD3: NewIfNullPr clsservdeva
  loc_CC0AD6: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC0ADB: FLdPr var_A4
  loc_CC0ADE:  = Me.Fields
  loc_CC0AE3: FLdPr var_13C
  loc_CC0AE6: from_stack_2 = Me.Item(from_stack_1)
  loc_CC0AEB: FLdPr var_140
  loc_CC0AEE:  = Me.Value
  loc_CC0AF3: FLdRfVar var_B4
  loc_CC0AF6: CStrVarTmp
  loc_CC0AF7: CVarStr var_108
  loc_CC0AFA: PopAdLdVar
  loc_CC0AFB: FLdPr Me
  loc_CC0AFE: VCallAd Control_ID_ServDevaFlex
  loc_CC0B01: FStAdFunc var_164
  loc_CC0B04: FLdPr var_164
  loc_CC0B07: LateIdCallSt
  loc_CC0B0F: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC0B1A: FFreeVar var_B4 = ""
  loc_CC0B21: FLdPr Me
  loc_CC0B24: MemLdI2 global_72
  loc_CC0B27: CI4UI1
  loc_CC0B28: CVarI4
  loc_CC0B2C: PopAdLdVar
  loc_CC0B2D: LitVarI4
  loc_CC0B35: PopAdLdVar
  loc_CC0B36: FLdPr Me
  loc_CC0B39: VCallAd Control_ID_ServDevaFlex
  loc_CC0B3C: FStAdFunc var_A4
  loc_CC0B3F: FLdPr var_A4
  loc_CC0B42: LateIdCallLdVar
  loc_CC0B4C: CStrVarTmp
  loc_CC0B4D: FStStrNoPop var_10C
  loc_CC0B50: LitStr "0"
  loc_CC0B53: EqStr
  loc_CC0B55: FFree1Str var_10C
  loc_CC0B58: FFree1Ad var_A4
  loc_CC0B5B: FFree1Var var_B4 = ""
  loc_CC0B5E: BranchF loc_CC0BFA
  loc_CC0B61: FLdRfVar var_140
  loc_CC0B64: LitVarStr var_C8, "ImpoSeca"
  loc_CC0B69: PopAdLdVar
  loc_CC0B6A: FLdRfVar var_13C
  loc_CC0B6D: FLdRfVar var_A4
  loc_CC0B70: FLdPr Me
  loc_CC0B73: MemLdRfVar from_stack_1.global_56
  loc_CC0B76: NewIfNullPr clsservdeva
  loc_CC0B79: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC0B7E: FLdPr var_A4
  loc_CC0B81:  = Me.Fields
  loc_CC0B86: FLdPr var_13C
  loc_CC0B89: from_stack_2 = Me.Item(from_stack_1)
  loc_CC0B8E: FLdPr Me
  loc_CC0B91: MemLdI2 global_72
  loc_CC0B94: CI4UI1
  loc_CC0B95: CVarI4
  loc_CC0B99: PopAdLdVar
  loc_CC0B9A: LitVarI4
  loc_CC0BA2: PopAdLdVar
  loc_CC0BA3: LitI4 1
  loc_CC0BA8: LitI4 1
  loc_CC0BAD: LitVarStr var_D8, "0.00"
  loc_CC0BB2: FStVarCopyObj var_108
  loc_CC0BB5: FLdRfVar var_108
  loc_CC0BB8: FLdZeroAd var_140
  loc_CC0BBB: CVarAd
  loc_CC0BBF: FLdRfVar var_17C
  loc_CC0BC2: ImpAdCallFPR4  = Format(, )
  loc_CC0BC7: FLdRfVar var_17C
  loc_CC0BCA: CStrVarTmp
  loc_CC0BCB: CVarStr var_18C
  loc_CC0BCE: PopAdLdVar
  loc_CC0BCF: FLdPr Me
  loc_CC0BD2: VCallAd Control_ID_ServDevaFlex
  loc_CC0BD5: FStAdFunc var_164
  loc_CC0BD8: FLdPr var_164
  loc_CC0BDB: LateIdCallSt
  loc_CC0BE3: FFreeAd var_A4 = "": var_13C = ""
  loc_CC0BEC: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC0BF7: Branch loc_CC0E06
  loc_CC0BFA: FLdPr Me
  loc_CC0BFD: MemLdI2 global_72
  loc_CC0C00: CI4UI1
  loc_CC0C01: CVarI4
  loc_CC0C05: PopAdLdVar
  loc_CC0C06: LitVarI4
  loc_CC0C0E: PopAdLdVar
  loc_CC0C0F: FLdPr Me
  loc_CC0C12: VCallAd Control_ID_ServDevaFlex
  loc_CC0C15: FStAdFunc var_A4
  loc_CC0C18: FLdPr var_A4
  loc_CC0C1B: LateIdCallLdVar
  loc_CC0C25: CStrVarTmp
  loc_CC0C26: FStStrNoPop var_10C
  loc_CC0C29: LitStr "1"
  loc_CC0C2C: EqStr
  loc_CC0C2E: FFree1Str var_10C
  loc_CC0C31: FFree1Ad var_A4
  loc_CC0C34: FFree1Var var_B4 = ""
  loc_CC0C37: BranchF loc_CC0E06
  loc_CC0C3A: FLdPr Me
  loc_CC0C3D: MemLdI2 global_72
  loc_CC0C40: CI4UI1
  loc_CC0C41: CVarI4
  loc_CC0C45: PopAdLdVar
  loc_CC0C46: LitVarI4
  loc_CC0C4E: PopAdLdVar
  loc_CC0C4F: FLdPr Me
  loc_CC0C52: VCallAd Control_ID_ServDevaFlex
  loc_CC0C55: FStAdFunc var_A4
  loc_CC0C58: FLdPr var_A4
  loc_CC0C5B: LateIdCallLdVar
  loc_CC0C65: CStrVarTmp
  loc_CC0C66: CVarStr var_108
  loc_CC0C69: ImpAdCallI2 IsNumeric()
  loc_CC0C6E: FLdPr Me
  loc_CC0C71: MemLdI2 global_72
  loc_CC0C74: CI4UI1
  loc_CC0C75: CVarI4
  loc_CC0C79: PopAdLdVar
  loc_CC0C7A: LitVarI4
  loc_CC0C82: PopAdLdVar
  loc_CC0C83: FLdPr Me
  loc_CC0C86: VCallAd Control_ID_ServDevaFlex
  loc_CC0C89: FStAdFunc var_13C
  loc_CC0C8C: FLdPr var_13C
  loc_CC0C8F: LateIdCallLdVar
  loc_CC0C99: CStrVarTmp
  loc_CC0C9A: CVarStr var_18C
  loc_CC0C9D: ImpAdCallI2 IsNumeric()
  loc_CC0CA2: AndI4
  loc_CC0CA3: FFreeAd var_A4 = ""
  loc_CC0CAA: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC0CB5: BranchF loc_CC0DA2
  loc_CC0CB8: FLdPr Me
  loc_CC0CBB: MemLdI2 global_72
  loc_CC0CBE: CI4UI1
  loc_CC0CBF: CVarI4
  loc_CC0CC3: PopAdLdVar
  loc_CC0CC4: LitVarI4
  loc_CC0CCC: PopAdLdVar
  loc_CC0CCD: FLdPr Me
  loc_CC0CD0: VCallAd Control_ID_ServDevaFlex
  loc_CC0CD3: FStAdFunc var_A4
  loc_CC0CD6: FLdPr var_A4
  loc_CC0CD9: LateIdCallLdVar
  loc_CC0CE3: CStrVarTmp
  loc_CC0CE4: FStStrNoPop var_10C
  loc_CC0CE7: CR8Str
  loc_CC0CE9: LitI2_Byte 0
  loc_CC0CEB: CR8I2
  loc_CC0CEC: EqR4
  loc_CC0CED: FLdPr Me
  loc_CC0CF0: MemLdI2 global_72
  loc_CC0CF3: CI4UI1
  loc_CC0CF4: CVarI4
  loc_CC0CF8: PopAdLdVar
  loc_CC0CF9: LitVarI4
  loc_CC0D01: PopAdLdVar
  loc_CC0D02: FLdPr Me
  loc_CC0D05: VCallAd Control_ID_ServDevaFlex
  loc_CC0D08: FStAdFunc var_13C
  loc_CC0D0B: FLdPr var_13C
  loc_CC0D0E: LateIdCallLdVar
  loc_CC0D18: CStrVarTmp
  loc_CC0D19: FStStrNoPop var_110
  loc_CC0D1C: CR8Str
  loc_CC0D1E: LitI2_Byte 0
  loc_CC0D20: CR8I2
  loc_CC0D21: EqR4
  loc_CC0D22: AndI4
  loc_CC0D23: FFreeStr var_10C = ""
  loc_CC0D2A: FFreeAd var_A4 = ""
  loc_CC0D31: FFreeVar var_B4 = ""
  loc_CC0D38: BranchF loc_CC0D9F
  loc_CC0D3B: FLdPr Me
  loc_CC0D3E: MemLdI2 global_72
  loc_CC0D41: CI4UI1
  loc_CC0D42: CVarI4
  loc_CC0D46: PopAdLdVar
  loc_CC0D47: LitVarI4
  loc_CC0D4F: PopAdLdVar
  loc_CC0D50: LitVarStr var_150, vbNullString
  loc_CC0D55: PopAdLdVar
  loc_CC0D56: FLdPr Me
  loc_CC0D59: VCallAd Control_ID_ServDevaFlex
  loc_CC0D5C: FStAdFunc var_A4
  loc_CC0D5F: FLdPr var_A4
  loc_CC0D62: LateIdCallSt
  loc_CC0D6A: FFree1Ad var_A4
  loc_CC0D6D: FLdPr Me
  loc_CC0D70: MemLdI2 global_72
  loc_CC0D73: CI4UI1
  loc_CC0D74: CVarI4
  loc_CC0D78: PopAdLdVar
  loc_CC0D79: LitVarI4
  loc_CC0D81: PopAdLdVar
  loc_CC0D82: LitVarStr var_150, vbNullString
  loc_CC0D87: PopAdLdVar
  loc_CC0D88: FLdPr Me
  loc_CC0D8B: VCallAd Control_ID_ServDevaFlex
  loc_CC0D8E: FStAdFunc var_A4
  loc_CC0D91: FLdPr var_A4
  loc_CC0D94: LateIdCallSt
  loc_CC0D9C: FFree1Ad var_A4
  loc_CC0D9F: Branch loc_CC0E06
  loc_CC0DA2: FLdPr Me
  loc_CC0DA5: MemLdI2 global_72
  loc_CC0DA8: CI4UI1
  loc_CC0DA9: CVarI4
  loc_CC0DAD: PopAdLdVar
  loc_CC0DAE: LitVarI4
  loc_CC0DB6: PopAdLdVar
  loc_CC0DB7: LitVarStr var_150, vbNullString
  loc_CC0DBC: PopAdLdVar
  loc_CC0DBD: FLdPr Me
  loc_CC0DC0: VCallAd Control_ID_ServDevaFlex
  loc_CC0DC3: FStAdFunc var_A4
  loc_CC0DC6: FLdPr var_A4
  loc_CC0DC9: LateIdCallSt
  loc_CC0DD1: FFree1Ad var_A4
  loc_CC0DD4: FLdPr Me
  loc_CC0DD7: MemLdI2 global_72
  loc_CC0DDA: CI4UI1
  loc_CC0DDB: CVarI4
  loc_CC0DDF: PopAdLdVar
  loc_CC0DE0: LitVarI4
  loc_CC0DE8: PopAdLdVar
  loc_CC0DE9: LitVarStr var_150, vbNullString
  loc_CC0DEE: PopAdLdVar
  loc_CC0DEF: FLdPr Me
  loc_CC0DF2: VCallAd Control_ID_ServDevaFlex
  loc_CC0DF5: FStAdFunc var_A4
  loc_CC0DF8: FLdPr var_A4
  loc_CC0DFB: LateIdCallSt
  loc_CC0E03: FFree1Ad var_A4
  loc_CC0E06: FLdPr Me
  loc_CC0E09: MemLdI2 global_72
  loc_CC0E0C: CI4UI1
  loc_CC0E0D: CVarI4
  loc_CC0E11: PopAdLdVar
  loc_CC0E12: LitVarI4
  loc_CC0E1A: PopAdLdVar
  loc_CC0E1B: FLdPr Me
  loc_CC0E1E: VCallAd Control_ID_ServDevaFlex
  loc_CC0E21: FStAdFunc var_A4
  loc_CC0E24: FLdPr var_A4
  loc_CC0E27: LateIdCallLdVar
  loc_CC0E31: CStrVarTmp
  loc_CC0E32: CVarStr var_108
  loc_CC0E35: ImpAdCallI2 IsNumeric()
  loc_CC0E3A: FLdPr Me
  loc_CC0E3D: MemLdI2 global_72
  loc_CC0E40: CI4UI1
  loc_CC0E41: CVarI4
  loc_CC0E45: PopAdLdVar
  loc_CC0E46: LitVarI4
  loc_CC0E4E: PopAdLdVar
  loc_CC0E4F: FLdPr Me
  loc_CC0E52: VCallAd Control_ID_ServDevaFlex
  loc_CC0E55: FStAdFunc var_13C
  loc_CC0E58: FLdPr var_13C
  loc_CC0E5B: LateIdCallLdVar
  loc_CC0E65: CStrVarTmp
  loc_CC0E66: CVarStr var_18C
  loc_CC0E69: ImpAdCallI2 IsNumeric()
  loc_CC0E6E: AndI4
  loc_CC0E6F: FFreeAd var_A4 = ""
  loc_CC0E76: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC0E81: BranchF loc_CC0F6C
  loc_CC0E84: FLdPr Me
  loc_CC0E87: MemLdI2 global_72
  loc_CC0E8A: CI4UI1
  loc_CC0E8B: CVarI4
  loc_CC0E8F: PopAdLdVar
  loc_CC0E90: LitVarI4
  loc_CC0E98: PopAdLdVar
  loc_CC0E99: FLdPr Me
  loc_CC0E9C: VCallAd Control_ID_ServDevaFlex
  loc_CC0E9F: FStAdFunc var_A4
  loc_CC0EA2: FLdPr var_A4
  loc_CC0EA5: LateIdCallLdVar
  loc_CC0EAF: PopAd
  loc_CC0EB1: FLdPr Me
  loc_CC0EB4: MemLdI2 global_72
  loc_CC0EB7: CI4UI1
  loc_CC0EB8: CVarI4
  loc_CC0EBC: PopAdLdVar
  loc_CC0EBD: LitVarI4
  loc_CC0EC5: PopAdLdVar
  loc_CC0EC6: FLdPr Me
  loc_CC0EC9: VCallAd Control_ID_ServDevaFlex
  loc_CC0ECC: FStAdFunc var_13C
  loc_CC0ECF: FLdPr var_13C
  loc_CC0ED2: LateIdCallLdVar
  loc_CC0EDC: PopAd
  loc_CC0EDE: FLdPr Me
  loc_CC0EE1: MemLdI2 global_72
  loc_CC0EE4: CI4UI1
  loc_CC0EE5: CVarI4
  loc_CC0EE9: PopAdLdVar
  loc_CC0EEA: LitVarI4
  loc_CC0EF2: PopAdLdVar
  loc_CC0EF3: LitI4 1
  loc_CC0EF8: LitI4 1
  loc_CC0EFD: LitVarStr var_1CC, "0.00"
  loc_CC0F02: FStVarCopyObj var_18C
  loc_CC0F05: FLdRfVar var_18C
  loc_CC0F08: FLdRfVar var_B4
  loc_CC0F0B: CStrVarTmp
  loc_CC0F0C: FStStrNoPop var_10C
  loc_CC0F0F: CR8Str
  loc_CC0F11: FLdRfVar var_108
  loc_CC0F14: CStrVarTmp
  loc_CC0F15: FStStrNoPop var_110
  loc_CC0F18: CR8Str
  loc_CC0F1A: MulR8
  loc_CC0F1B: FLdPr Me
  loc_CC0F1E: MemLdFPR8 global_84
  loc_CC0F21: AddR8
  loc_CC0F22: CVarR8
  loc_CC0F26: FLdRfVar var_1DC
  loc_CC0F29: ImpAdCallFPR4  = Format(, )
  loc_CC0F2E: FLdRfVar var_1DC
  loc_CC0F31: CStrVarTmp
  loc_CC0F32: CVarStr var_22C
  loc_CC0F35: PopAdLdVar
  loc_CC0F36: FLdPr Me
  loc_CC0F39: VCallAd Control_ID_ServDevaFlex
  loc_CC0F3C: FStAdFunc var_140
  loc_CC0F3F: FLdPr var_140
  loc_CC0F42: LateIdCallSt
  loc_CC0F4A: FFreeStr var_10C = ""
  loc_CC0F51: FFreeAd var_A4 = "": var_13C = ""
  loc_CC0F5A: FFreeVar var_B4 = "": var_108 = "": var_17C = "": var_18C = "": var_1DC = ""
  loc_CC0F69: Branch loc_CC1053
  loc_CC0F6C: FLdPr Me
  loc_CC0F6F: MemLdI2 global_72
  loc_CC0F72: CI4UI1
  loc_CC0F73: CVarI4
  loc_CC0F77: PopAdLdVar
  loc_CC0F78: LitVarI4
  loc_CC0F80: PopAdLdVar
  loc_CC0F81: FLdPr Me
  loc_CC0F84: VCallAd Control_ID_ServDevaFlex
  loc_CC0F87: FStAdFunc var_A4
  loc_CC0F8A: FLdPr var_A4
  loc_CC0F8D: LateIdCallLdVar
  loc_CC0F97: CStrVarTmp
  loc_CC0F98: CVarStr var_108
  loc_CC0F9B: ImpAdCallI2 IsNumeric()
  loc_CC0FA0: FFree1Ad var_A4
  loc_CC0FA3: FFreeVar var_B4 = ""
  loc_CC0FAA: BranchF loc_CC1053
  loc_CC0FAD: FLdPr Me
  loc_CC0FB0: MemLdI2 global_72
  loc_CC0FB3: CI4UI1
  loc_CC0FB4: CVarI4
  loc_CC0FB8: PopAdLdVar
  loc_CC0FB9: LitVarI4
  loc_CC0FC1: PopAdLdVar
  loc_CC0FC2: FLdPr Me
  loc_CC0FC5: VCallAd Control_ID_ServDevaFlex
  loc_CC0FC8: FStAdFunc var_A4
  loc_CC0FCB: FLdPr var_A4
  loc_CC0FCE: LateIdCallLdVar
  loc_CC0FD8: PopAd
  loc_CC0FDA: FLdPr Me
  loc_CC0FDD: MemLdI2 global_72
  loc_CC0FE0: CI4UI1
  loc_CC0FE1: CVarI4
  loc_CC0FE5: PopAdLdVar
  loc_CC0FE6: LitVarI4
  loc_CC0FEE: PopAdLdVar
  loc_CC0FEF: LitI4 1
  loc_CC0FF4: LitI4 1
  loc_CC0FF9: LitVarStr var_160, "0.00"
  loc_CC0FFE: FStVarCopyObj var_17C
  loc_CC1001: FLdRfVar var_17C
  loc_CC1004: FLdRfVar var_B4
  loc_CC1007: CStrVarTmp
  loc_CC1008: FStStrNoPop var_10C
  loc_CC100B: CR8Str
  loc_CC100D: FLdPr Me
  loc_CC1010: MemLdFPR8 global_84
  loc_CC1013: AddR8
  loc_CC1014: CVarR8
  loc_CC1018: FLdRfVar var_18C
  loc_CC101B: ImpAdCallFPR4  = Format(, )
  loc_CC1020: FLdRfVar var_18C
  loc_CC1023: CStrVarTmp
  loc_CC1024: CVarStr var_1DC
  loc_CC1027: PopAdLdVar
  loc_CC1028: FLdPr Me
  loc_CC102B: VCallAd Control_ID_ServDevaFlex
  loc_CC102E: FStAdFunc var_13C
  loc_CC1031: FLdPr var_13C
  loc_CC1034: LateIdCallSt
  loc_CC103C: FFree1Str var_10C
  loc_CC103F: FFreeAd var_A4 = ""
  loc_CC1046: FFreeVar var_B4 = "": var_108 = "": var_17C = "": var_18C = ""
  loc_CC1053: FLdPr Me
  loc_CC1056: MemLdI2 global_72
  loc_CC1059: CI4UI1
  loc_CC105A: CVarI4
  loc_CC105E: PopAdLdVar
  loc_CC105F: LitVarI4
  loc_CC1067: PopAdLdVar
  loc_CC1068: FLdRfVar var_B4
  loc_CC106B: FLdRfVar var_140
  loc_CC106E: LitVarStr var_C8, "PeriInfo"
  loc_CC1073: PopAdLdVar
  loc_CC1074: FLdRfVar var_13C
  loc_CC1077: FLdRfVar var_A4
  loc_CC107A: FLdPr Me
  loc_CC107D: MemLdRfVar from_stack_1.global_56
  loc_CC1080: NewIfNullPr clsservdeva
  loc_CC1083: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1088: FLdPr var_A4
  loc_CC108B:  = Me.Fields
  loc_CC1090: FLdPr var_13C
  loc_CC1093: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1098: FLdPr var_140
  loc_CC109B:  = Me.Value
  loc_CC10A0: FLdRfVar var_B4
  loc_CC10A3: CStrVarTmp
  loc_CC10A4: CVarStr var_108
  loc_CC10A7: PopAdLdVar
  loc_CC10A8: FLdPr Me
  loc_CC10AB: VCallAd Control_ID_ServDevaFlex
  loc_CC10AE: FStAdFunc var_164
  loc_CC10B1: FLdPr var_164
  loc_CC10B4: LateIdCallSt
  loc_CC10BC: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC10C7: FFreeVar var_B4 = ""
  loc_CC10CE: FLdPr Me
  loc_CC10D1: MemLdI2 global_72
  loc_CC10D4: CI4UI1
  loc_CC10D5: CVarI4
  loc_CC10D9: PopAdLdVar
  loc_CC10DA: LitVarI4
  loc_CC10E2: PopAdLdVar
  loc_CC10E3: FLdRfVar var_B4
  loc_CC10E6: FLdRfVar var_140
  loc_CC10E9: LitVarStr var_C8, "CodiConc"
  loc_CC10EE: PopAdLdVar
  loc_CC10EF: FLdRfVar var_13C
  loc_CC10F2: FLdRfVar var_A4
  loc_CC10F5: FLdPr Me
  loc_CC10F8: MemLdRfVar from_stack_1.global_56
  loc_CC10FB: NewIfNullPr clsservdeva
  loc_CC10FE: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1103: FLdPr var_A4
  loc_CC1106:  = Me.Fields
  loc_CC110B: FLdPr var_13C
  loc_CC110E: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1113: FLdPr var_140
  loc_CC1116:  = Me.Value
  loc_CC111B: FLdRfVar var_B4
  loc_CC111E: CStrVarTmp
  loc_CC111F: CVarStr var_108
  loc_CC1122: PopAdLdVar
  loc_CC1123: FLdPr Me
  loc_CC1126: VCallAd Control_ID_ServDevaFlex
  loc_CC1129: FStAdFunc var_164
  loc_CC112C: FLdPr var_164
  loc_CC112F: LateIdCallSt
  loc_CC1137: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC1142: FFreeVar var_B4 = ""
  loc_CC1149: FLdPr Me
  loc_CC114C: MemLdI2 global_72
  loc_CC114F: CI4UI1
  loc_CC1150: CVarI4
  loc_CC1154: PopAdLdVar
  loc_CC1155: LitVarI4
  loc_CC115D: PopAdLdVar
  loc_CC115E: FLdRfVar var_B4
  loc_CC1161: FLdRfVar var_140
  loc_CC1164: LitVarStr var_C8, "TiafConc"
  loc_CC1169: PopAdLdVar
  loc_CC116A: FLdRfVar var_13C
  loc_CC116D: FLdRfVar var_A4
  loc_CC1170: FLdPr Me
  loc_CC1173: MemLdRfVar from_stack_1.global_56
  loc_CC1176: NewIfNullPr clsservdeva
  loc_CC1179: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC117E: FLdPr var_A4
  loc_CC1181:  = Me.Fields
  loc_CC1186: FLdPr var_13C
  loc_CC1189: from_stack_2 = Me.Item(from_stack_1)
  loc_CC118E: FLdPr var_140
  loc_CC1191:  = Me.Value
  loc_CC1196: FLdRfVar var_B4
  loc_CC1199: CStrVarTmp
  loc_CC119A: CVarStr var_108
  loc_CC119D: PopAdLdVar
  loc_CC119E: FLdPr Me
  loc_CC11A1: VCallAd Control_ID_ServDevaFlex
  loc_CC11A4: FStAdFunc var_164
  loc_CC11A7: FLdPr var_164
  loc_CC11AA: LateIdCallSt
  loc_CC11B2: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC11BD: FFreeVar var_B4 = ""
  loc_CC11C4: LitI2_Byte 0
  loc_CC11C6: CR8I2
  loc_CC11C7: FLdPr Me
  loc_CC11CA: MemStFPR8 global_84
  loc_CC11CD: Branch loc_CC1380
  loc_CC11D0: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CC11D3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC11D8: FLdPr Me
  loc_CC11DB: VCallAd Control_ID_ServDevaFlex
  loc_CC11DE: FStAdFunc var_A4
  loc_CC11E1: FLdPr var_A4
  loc_CC11E4: LateIdCall
  loc_CC11EC: FFree1Ad var_A4
  loc_CC11EF: FLdPr Me
  loc_CC11F2: MemLdI2 global_72
  loc_CC11F5: CI4UI1
  loc_CC11F6: CVarI4
  loc_CC11FA: PopAdLdVar
  loc_CC11FB: LitVarI4
  loc_CC1203: PopAdLdVar
  loc_CC1204: LitVarStr var_150, vbNullString
  loc_CC1209: PopAdLdVar
  loc_CC120A: FLdPr Me
  loc_CC120D: VCallAd Control_ID_ServDevaFlex
  loc_CC1210: FStAdFunc var_A4
  loc_CC1213: FLdPr var_A4
  loc_CC1216: LateIdCallSt
  loc_CC121E: FFree1Ad var_A4
  loc_CC1221: FLdPr Me
  loc_CC1224: MemLdI2 global_72
  loc_CC1227: CI4UI1
  loc_CC1228: CVarI4
  loc_CC122C: PopAdLdVar
  loc_CC122D: LitVarI4
  loc_CC1235: PopAdLdVar
  loc_CC1236: LitVarStr var_150, vbNullString
  loc_CC123B: PopAdLdVar
  loc_CC123C: FLdPr Me
  loc_CC123F: VCallAd Control_ID_ServDevaFlex
  loc_CC1242: FStAdFunc var_A4
  loc_CC1245: FLdPr var_A4
  loc_CC1248: LateIdCallSt
  loc_CC1250: FFree1Ad var_A4
  loc_CC1253: FLdPr Me
  loc_CC1256: MemLdI2 global_72
  loc_CC1259: CI4UI1
  loc_CC125A: CVarI4
  loc_CC125E: PopAdLdVar
  loc_CC125F: LitVarI4
  loc_CC1267: PopAdLdVar
  loc_CC1268: LitVarStr var_150, vbNullString
  loc_CC126D: PopAdLdVar
  loc_CC126E: FLdPr Me
  loc_CC1271: VCallAd Control_ID_ServDevaFlex
  loc_CC1274: FStAdFunc var_A4
  loc_CC1277: FLdPr var_A4
  loc_CC127A: LateIdCallSt
  loc_CC1282: FFree1Ad var_A4
  loc_CC1285: FLdPr Me
  loc_CC1288: MemLdI2 global_72
  loc_CC128B: CI4UI1
  loc_CC128C: CVarI4
  loc_CC1290: PopAdLdVar
  loc_CC1291: LitVarI4
  loc_CC1299: PopAdLdVar
  loc_CC129A: LitVarStr var_150, vbNullString
  loc_CC129F: PopAdLdVar
  loc_CC12A0: FLdPr Me
  loc_CC12A3: VCallAd Control_ID_ServDevaFlex
  loc_CC12A6: FStAdFunc var_A4
  loc_CC12A9: FLdPr var_A4
  loc_CC12AC: LateIdCallSt
  loc_CC12B4: FFree1Ad var_A4
  loc_CC12B7: FLdPr Me
  loc_CC12BA: MemLdI2 global_72
  loc_CC12BD: CI4UI1
  loc_CC12BE: CVarI4
  loc_CC12C2: PopAdLdVar
  loc_CC12C3: LitVarI4
  loc_CC12CB: PopAdLdVar
  loc_CC12CC: LitVarStr var_150, vbNullString
  loc_CC12D1: PopAdLdVar
  loc_CC12D2: FLdPr Me
  loc_CC12D5: VCallAd Control_ID_ServDevaFlex
  loc_CC12D8: FStAdFunc var_A4
  loc_CC12DB: FLdPr var_A4
  loc_CC12DE: LateIdCallSt
  loc_CC12E6: FFree1Ad var_A4
  loc_CC12E9: FLdPr Me
  loc_CC12EC: MemLdI2 global_72
  loc_CC12EF: CI4UI1
  loc_CC12F0: CVarI4
  loc_CC12F4: PopAdLdVar
  loc_CC12F5: LitVarI4
  loc_CC12FD: PopAdLdVar
  loc_CC12FE: LitVarStr var_150, vbNullString
  loc_CC1303: PopAdLdVar
  loc_CC1304: FLdPr Me
  loc_CC1307: VCallAd Control_ID_ServDevaFlex
  loc_CC130A: FStAdFunc var_A4
  loc_CC130D: FLdPr var_A4
  loc_CC1310: LateIdCallSt
  loc_CC1318: FFree1Ad var_A4
  loc_CC131B: FLdPr Me
  loc_CC131E: MemLdI2 global_72
  loc_CC1321: CI4UI1
  loc_CC1322: CVarI4
  loc_CC1326: PopAdLdVar
  loc_CC1327: LitVarI4
  loc_CC132F: PopAdLdVar
  loc_CC1330: LitVarStr var_150, vbNullString
  loc_CC1335: PopAdLdVar
  loc_CC1336: FLdPr Me
  loc_CC1339: VCallAd Control_ID_ServDevaFlex
  loc_CC133C: FStAdFunc var_A4
  loc_CC133F: FLdPr var_A4
  loc_CC1342: LateIdCallSt
  loc_CC134A: FFree1Ad var_A4
  loc_CC134D: FLdPr Me
  loc_CC1350: MemLdI2 global_72
  loc_CC1353: CI4UI1
  loc_CC1354: CVarI4
  loc_CC1358: PopAdLdVar
  loc_CC1359: LitVarI4
  loc_CC1361: PopAdLdVar
  loc_CC1362: LitVarStr var_150, vbNullString
  loc_CC1367: PopAdLdVar
  loc_CC1368: FLdPr Me
  loc_CC136B: VCallAd Control_ID_ServDevaFlex
  loc_CC136E: FStAdFunc var_A4
  loc_CC1371: FLdPr var_A4
  loc_CC1374: LateIdCallSt
  loc_CC137C: FFree1Ad var_A4
  loc_CC137F: ExitProcHresult
  loc_CC1380: ImpAdLdUI1
  loc_CC1384: CI2UI1
  loc_CC1386: LitI2_Byte 3
  loc_CC1388: EqI2
  loc_CC1389: BranchF loc_CC2112
  loc_CC138C: LitStr "SELECT DetaSede, ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_CC138F: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_CC1392: ConcatStr
  loc_CC1393: FStStrNoPop var_10C
  loc_CC1396: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_CC1399: ConcatStr
  loc_CC139A: FStStrNoPop var_110
  loc_CC139D: LitStr " WHERE servdeva.PeriOrde = "
  loc_CC13A0: ConcatStr
  loc_CC13A1: FStStrNoPop var_114
  loc_CC13A4: ImpAdLdI2 MemVar_D93036
  loc_CC13A7: CStrUI1
  loc_CC13A9: FStStrNoPop var_118
  loc_CC13AC: ConcatStr
  loc_CC13AD: FStStrNoPop var_11C
  loc_CC13B0: LitStr " AND CodiSede = "
  loc_CC13B3: ConcatStr
  loc_CC13B4: FStStrNoPop var_120
  loc_CC13B7: FLdPr Me
  loc_CC13BA: MemLdI2 global_72
  loc_CC13BD: CI4UI1
  loc_CC13BE: CVarI4
  loc_CC13C2: PopAdLdVar
  loc_CC13C3: LitVarI4
  loc_CC13CB: PopAdLdVar
  loc_CC13CC: FLdPr Me
  loc_CC13CF: VCallAd Control_ID_ServDevaFlex
  loc_CC13D2: FStAdFunc var_A4
  loc_CC13D5: FLdPr var_A4
  loc_CC13D8: LateIdCallLdVar
  loc_CC13E2: CStrVarTmp
  loc_CC13E3: FStStrNoPop var_124
  loc_CC13E6: ConcatStr
  loc_CC13E7: FStStrNoPop var_128
  loc_CC13EA: LitStr " AND CtctSede = '1'"
  loc_CC13ED: ConcatStr
  loc_CC13EE: FStStrNoPop var_12C
  loc_CC13F1: FLdPr Me
  loc_CC13F4: MemLdRfVar from_stack_1.global_56
  loc_CC13F7: NewIfNullPr clsservdeva
  loc_CC13FA: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CC13FF: FFreeStr var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_CC1414: FFree1Ad var_A4
  loc_CC1417: FFree1Var var_B4 = ""
  loc_CC141A: FLdRfVar var_138
  loc_CC141D: FLdRfVar var_A4
  loc_CC1420: FLdPr Me
  loc_CC1423: MemLdRfVar from_stack_1.global_56
  loc_CC1426: NewIfNullPr clsservdeva
  loc_CC1429: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC142E: FLdPr var_A4
  loc_CC1431:  = Me.RecordCount
  loc_CC1436: ILdRf var_138
  loc_CC1439: LitI4 0
  loc_CC143E: GtI4
  loc_CC143F: FFree1Ad var_A4
  loc_CC1442: BranchF loc_CC1F62
  loc_CC1445: FLdRfVar var_B4
  loc_CC1448: FLdRfVar var_140
  loc_CC144B: LitVarStr var_C8, "PeriInfo"
  loc_CC1450: PopAdLdVar
  loc_CC1451: FLdRfVar var_13C
  loc_CC1454: FLdRfVar var_A4
  loc_CC1457: FLdPr Me
  loc_CC145A: MemLdRfVar from_stack_1.global_56
  loc_CC145D: NewIfNullPr clsservdeva
  loc_CC1460: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1465: FLdPr var_A4
  loc_CC1468:  = Me.Fields
  loc_CC146D: FLdPr var_13C
  loc_CC1470: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1475: FLdPr var_140
  loc_CC1478:  = Me.Value
  loc_CC147D: FLdRfVar var_B4
  loc_CC1480: FnCIntVar
  loc_CC1482: ImpAdLdI2 MemVar_D93034
  loc_CC1485: NeI2
  loc_CC1486: FFreeAd var_A4 = "": var_13C = ""
  loc_CC148F: FFree1Var var_B4 = ""
  loc_CC1492: BranchF loc_CC1648
  loc_CC1495: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CC1498: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC149D: FLdPr Me
  loc_CC14A0: VCallAd Control_ID_ServDevaFlex
  loc_CC14A3: FStAdFunc var_A4
  loc_CC14A6: FLdPr var_A4
  loc_CC14A9: LateIdCall
  loc_CC14B1: FFree1Ad var_A4
  loc_CC14B4: FLdPr Me
  loc_CC14B7: MemLdI2 global_72
  loc_CC14BA: CI4UI1
  loc_CC14BB: CVarI4
  loc_CC14BF: PopAdLdVar
  loc_CC14C0: LitVarI4
  loc_CC14C8: PopAdLdVar
  loc_CC14C9: LitVarStr var_150, vbNullString
  loc_CC14CE: PopAdLdVar
  loc_CC14CF: FLdPr Me
  loc_CC14D2: VCallAd Control_ID_ServDevaFlex
  loc_CC14D5: FStAdFunc var_A4
  loc_CC14D8: FLdPr var_A4
  loc_CC14DB: LateIdCallSt
  loc_CC14E3: FFree1Ad var_A4
  loc_CC14E6: FLdPr Me
  loc_CC14E9: MemLdI2 global_72
  loc_CC14EC: CI4UI1
  loc_CC14ED: CVarI4
  loc_CC14F1: PopAdLdVar
  loc_CC14F2: LitVarI4
  loc_CC14FA: PopAdLdVar
  loc_CC14FB: LitVarStr var_150, vbNullString
  loc_CC1500: PopAdLdVar
  loc_CC1501: FLdPr Me
  loc_CC1504: VCallAd Control_ID_ServDevaFlex
  loc_CC1507: FStAdFunc var_A4
  loc_CC150A: FLdPr var_A4
  loc_CC150D: LateIdCallSt
  loc_CC1515: FFree1Ad var_A4
  loc_CC1518: FLdPr Me
  loc_CC151B: MemLdI2 global_72
  loc_CC151E: CI4UI1
  loc_CC151F: CVarI4
  loc_CC1523: PopAdLdVar
  loc_CC1524: LitVarI4
  loc_CC152C: PopAdLdVar
  loc_CC152D: LitVarStr var_150, vbNullString
  loc_CC1532: PopAdLdVar
  loc_CC1533: FLdPr Me
  loc_CC1536: VCallAd Control_ID_ServDevaFlex
  loc_CC1539: FStAdFunc var_A4
  loc_CC153C: FLdPr var_A4
  loc_CC153F: LateIdCallSt
  loc_CC1547: FFree1Ad var_A4
  loc_CC154A: FLdPr Me
  loc_CC154D: MemLdI2 global_72
  loc_CC1550: CI4UI1
  loc_CC1551: CVarI4
  loc_CC1555: PopAdLdVar
  loc_CC1556: LitVarI4
  loc_CC155E: PopAdLdVar
  loc_CC155F: LitVarStr var_150, vbNullString
  loc_CC1564: PopAdLdVar
  loc_CC1565: FLdPr Me
  loc_CC1568: VCallAd Control_ID_ServDevaFlex
  loc_CC156B: FStAdFunc var_A4
  loc_CC156E: FLdPr var_A4
  loc_CC1571: LateIdCallSt
  loc_CC1579: FFree1Ad var_A4
  loc_CC157C: FLdPr Me
  loc_CC157F: MemLdI2 global_72
  loc_CC1582: CI4UI1
  loc_CC1583: CVarI4
  loc_CC1587: PopAdLdVar
  loc_CC1588: LitVarI4
  loc_CC1590: PopAdLdVar
  loc_CC1591: LitVarStr var_150, vbNullString
  loc_CC1596: PopAdLdVar
  loc_CC1597: FLdPr Me
  loc_CC159A: VCallAd Control_ID_ServDevaFlex
  loc_CC159D: FStAdFunc var_A4
  loc_CC15A0: FLdPr var_A4
  loc_CC15A3: LateIdCallSt
  loc_CC15AB: FFree1Ad var_A4
  loc_CC15AE: FLdPr Me
  loc_CC15B1: MemLdI2 global_72
  loc_CC15B4: CI4UI1
  loc_CC15B5: CVarI4
  loc_CC15B9: PopAdLdVar
  loc_CC15BA: LitVarI4
  loc_CC15C2: PopAdLdVar
  loc_CC15C3: LitVarStr var_150, vbNullString
  loc_CC15C8: PopAdLdVar
  loc_CC15C9: FLdPr Me
  loc_CC15CC: VCallAd Control_ID_ServDevaFlex
  loc_CC15CF: FStAdFunc var_A4
  loc_CC15D2: FLdPr var_A4
  loc_CC15D5: LateIdCallSt
  loc_CC15DD: FFree1Ad var_A4
  loc_CC15E0: FLdPr Me
  loc_CC15E3: MemLdI2 global_72
  loc_CC15E6: CI4UI1
  loc_CC15E7: CVarI4
  loc_CC15EB: PopAdLdVar
  loc_CC15EC: LitVarI4
  loc_CC15F4: PopAdLdVar
  loc_CC15F5: LitVarStr var_150, vbNullString
  loc_CC15FA: PopAdLdVar
  loc_CC15FB: FLdPr Me
  loc_CC15FE: VCallAd Control_ID_ServDevaFlex
  loc_CC1601: FStAdFunc var_A4
  loc_CC1604: FLdPr var_A4
  loc_CC1607: LateIdCallSt
  loc_CC160F: FFree1Ad var_A4
  loc_CC1612: FLdPr Me
  loc_CC1615: MemLdI2 global_72
  loc_CC1618: CI4UI1
  loc_CC1619: CVarI4
  loc_CC161D: PopAdLdVar
  loc_CC161E: LitVarI4
  loc_CC1626: PopAdLdVar
  loc_CC1627: LitVarStr var_150, vbNullString
  loc_CC162C: PopAdLdVar
  loc_CC162D: FLdPr Me
  loc_CC1630: VCallAd Control_ID_ServDevaFlex
  loc_CC1633: FStAdFunc var_A4
  loc_CC1636: FLdPr var_A4
  loc_CC1639: LateIdCallSt
  loc_CC1641: FFree1Ad var_A4
  loc_CC1644: ExitProcHresult
  loc_CC1645: Branch loc_CC1F5F
  loc_CC1648: FLdRfVar var_B4
  loc_CC164B: FLdRfVar var_140
  loc_CC164E: LitVarStr var_C8, "PeriInfo"
  loc_CC1653: PopAdLdVar
  loc_CC1654: FLdRfVar var_13C
  loc_CC1657: FLdRfVar var_A4
  loc_CC165A: FLdPr Me
  loc_CC165D: MemLdRfVar from_stack_1.global_56
  loc_CC1660: NewIfNullPr clsservdeva
  loc_CC1663: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1668: FLdPr var_A4
  loc_CC166B:  = Me.Fields
  loc_CC1670: FLdPr var_13C
  loc_CC1673: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1678: FLdPr var_140
  loc_CC167B:  = Me.Value
  loc_CC1680: FLdRfVar var_108
  loc_CC1683: FLdRfVar var_16C
  loc_CC1686: LitVarStr var_D8, "CodiConc"
  loc_CC168B: PopAdLdVar
  loc_CC168C: FLdRfVar var_168
  loc_CC168F: FLdRfVar var_164
  loc_CC1692: FLdPr Me
  loc_CC1695: MemLdRfVar from_stack_1.global_56
  loc_CC1698: NewIfNullPr clsservdeva
  loc_CC169B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC16A0: FLdPr var_164
  loc_CC16A3:  = Me.Fields
  loc_CC16A8: FLdPr var_168
  loc_CC16AB: from_stack_2 = Me.Item(from_stack_1)
  loc_CC16B0: FLdPr var_16C
  loc_CC16B3:  = Me.Value
  loc_CC16B8: FLdRfVar var_108
  loc_CC16BB: CStrVarTmp
  loc_CC16BC: FStStrNoPop var_10C
  loc_CC16BF: FLdRfVar var_B4
  loc_CC16C2: CI2Var
  loc_CC16C3: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CC16C8: FStStrNoPop var_110
  loc_CC16CB: LitStr vbNullString
  loc_CC16CE: EqStr
  loc_CC16D0: FFreeStr var_10C = ""
  loc_CC16D7: FFreeAd var_A4 = "": var_13C = "": var_164 = "": var_168 = "": var_140 = ""
  loc_CC16E6: FFreeVar var_B4 = ""
  loc_CC16ED: BranchF loc_CC175F
  loc_CC16F0: LitVarStr var_D8, "El recurso: "
  loc_CC16F5: FLdRfVar var_B4
  loc_CC16F8: FLdRfVar var_140
  loc_CC16FB: LitVarStr var_C8, "CodiConc"
  loc_CC1700: PopAdLdVar
  loc_CC1701: FLdRfVar var_13C
  loc_CC1704: FLdRfVar var_A4
  loc_CC1707: FLdPr Me
  loc_CC170A: MemLdRfVar from_stack_1.global_56
  loc_CC170D: NewIfNullPr clsservdeva
  loc_CC1710: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1715: FLdPr var_A4
  loc_CC1718:  = Me.Fields
  loc_CC171D: FLdPr var_13C
  loc_CC1720: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1725: FLdPr var_140
  loc_CC1728:  = Me.Value
  loc_CC172D: FLdRfVar var_B4
  loc_CC1730: ConcatVar var_108
  loc_CC1734: LitVarStr var_E8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CC1739: ConcatVar var_17C
  loc_CC173D: CStrVarVal var_10C
  loc_CC1741: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC1746: FFree1Str var_10C
  loc_CC1749: FFreeAd var_A4 = "": var_13C = ""
  loc_CC1752: FFreeVar var_B4 = "": var_108 = ""
  loc_CC175B: ExitProcHresult
  loc_CC175C: Branch loc_CC1F5F
  loc_CC175F: FLdRfVar var_B4
  loc_CC1762: FLdRfVar var_140
  loc_CC1765: LitVarStr var_C8, "TiafConc"
  loc_CC176A: PopAdLdVar
  loc_CC176B: FLdRfVar var_13C
  loc_CC176E: FLdRfVar var_A4
  loc_CC1771: FLdPr Me
  loc_CC1774: MemLdRfVar from_stack_1.global_56
  loc_CC1777: NewIfNullPr clsservdeva
  loc_CC177A: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC177F: FLdPr var_A4
  loc_CC1782:  = Me.Fields
  loc_CC1787: FLdPr var_13C
  loc_CC178A: from_stack_2 = Me.Item(from_stack_1)
  loc_CC178F: FLdPr var_140
  loc_CC1792:  = Me.Value
  loc_CC1797: FLdRfVar var_B4
  loc_CC179A: LitVarI2 var_D8, 0
  loc_CC179F: HardType
  loc_CC17A0: EqVarBool
  loc_CC17A2: FFreeAd var_A4 = "": var_13C = ""
  loc_CC17AB: FFree1Var var_B4 = ""
  loc_CC17AE: BranchF loc_CC17BD
  loc_CC17B1: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CC17B4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC17B9: ExitProcHresult
  loc_CC17BA: Branch loc_CC1F5F
  loc_CC17BD: FLdPr Me
  loc_CC17C0: MemLdI2 global_72
  loc_CC17C3: CI4UI1
  loc_CC17C4: CVarI4
  loc_CC17C8: PopAdLdVar
  loc_CC17C9: LitVarI4
  loc_CC17D1: PopAdLdVar
  loc_CC17D2: FLdRfVar var_B4
  loc_CC17D5: FLdRfVar var_140
  loc_CC17D8: LitVarStr var_C8, "VariSede"
  loc_CC17DD: PopAdLdVar
  loc_CC17DE: FLdRfVar var_13C
  loc_CC17E1: FLdRfVar var_A4
  loc_CC17E4: FLdPr Me
  loc_CC17E7: MemLdRfVar from_stack_1.global_56
  loc_CC17EA: NewIfNullPr clsservdeva
  loc_CC17ED: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC17F2: FLdPr var_A4
  loc_CC17F5:  = Me.Fields
  loc_CC17FA: FLdPr var_13C
  loc_CC17FD: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1802: FLdPr var_140
  loc_CC1805:  = Me.Value
  loc_CC180A: FLdRfVar var_B4
  loc_CC180D: CStrVarTmp
  loc_CC180E: CVarStr var_108
  loc_CC1811: PopAdLdVar
  loc_CC1812: FLdPr Me
  loc_CC1815: VCallAd Control_ID_ServDevaFlex
  loc_CC1818: FStAdFunc var_164
  loc_CC181B: FLdPr var_164
  loc_CC181E: LateIdCallSt
  loc_CC1826: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC1831: FFreeVar var_B4 = ""
  loc_CC1838: FLdPr Me
  loc_CC183B: MemLdI2 global_72
  loc_CC183E: CI4UI1
  loc_CC183F: CVarI4
  loc_CC1843: PopAdLdVar
  loc_CC1844: LitVarI4
  loc_CC184C: PopAdLdVar
  loc_CC184D: FLdRfVar var_B4
  loc_CC1850: FLdRfVar var_140
  loc_CC1853: LitVarStr var_C8, "DetaSede"
  loc_CC1858: PopAdLdVar
  loc_CC1859: FLdRfVar var_13C
  loc_CC185C: FLdRfVar var_A4
  loc_CC185F: FLdPr Me
  loc_CC1862: MemLdRfVar from_stack_1.global_56
  loc_CC1865: NewIfNullPr clsservdeva
  loc_CC1868: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC186D: FLdPr var_A4
  loc_CC1870:  = Me.Fields
  loc_CC1875: FLdPr var_13C
  loc_CC1878: from_stack_2 = Me.Item(from_stack_1)
  loc_CC187D: FLdPr var_140
  loc_CC1880:  = Me.Value
  loc_CC1885: FLdRfVar var_B4
  loc_CC1888: CStrVarTmp
  loc_CC1889: CVarStr var_108
  loc_CC188C: PopAdLdVar
  loc_CC188D: FLdPr Me
  loc_CC1890: VCallAd Control_ID_ServDevaFlex
  loc_CC1893: FStAdFunc var_164
  loc_CC1896: FLdPr var_164
  loc_CC1899: LateIdCallSt
  loc_CC18A1: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC18AC: FFreeVar var_B4 = ""
  loc_CC18B3: FLdPr Me
  loc_CC18B6: MemLdI2 global_72
  loc_CC18B9: CI4UI1
  loc_CC18BA: CVarI4
  loc_CC18BE: PopAdLdVar
  loc_CC18BF: LitVarI4
  loc_CC18C7: PopAdLdVar
  loc_CC18C8: FLdPr Me
  loc_CC18CB: VCallAd Control_ID_ServDevaFlex
  loc_CC18CE: FStAdFunc var_A4
  loc_CC18D1: FLdPr var_A4
  loc_CC18D4: LateIdCallLdVar
  loc_CC18DE: CStrVarTmp
  loc_CC18DF: FStStrNoPop var_10C
  loc_CC18E2: LitStr "0"
  loc_CC18E5: EqStr
  loc_CC18E7: FFree1Str var_10C
  loc_CC18EA: FFree1Ad var_A4
  loc_CC18ED: FFree1Var var_B4 = ""
  loc_CC18F0: BranchF loc_CC198C
  loc_CC18F3: FLdRfVar var_140
  loc_CC18F6: LitVarStr var_C8, "ImpoSede"
  loc_CC18FB: PopAdLdVar
  loc_CC18FC: FLdRfVar var_13C
  loc_CC18FF: FLdRfVar var_A4
  loc_CC1902: FLdPr Me
  loc_CC1905: MemLdRfVar from_stack_1.global_56
  loc_CC1908: NewIfNullPr clsservdeva
  loc_CC190B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1910: FLdPr var_A4
  loc_CC1913:  = Me.Fields
  loc_CC1918: FLdPr var_13C
  loc_CC191B: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1920: FLdPr Me
  loc_CC1923: MemLdI2 global_72
  loc_CC1926: CI4UI1
  loc_CC1927: CVarI4
  loc_CC192B: PopAdLdVar
  loc_CC192C: LitVarI4
  loc_CC1934: PopAdLdVar
  loc_CC1935: LitI4 1
  loc_CC193A: LitI4 1
  loc_CC193F: LitVarStr var_D8, "0.00"
  loc_CC1944: FStVarCopyObj var_108
  loc_CC1947: FLdRfVar var_108
  loc_CC194A: FLdZeroAd var_140
  loc_CC194D: CVarAd
  loc_CC1951: FLdRfVar var_17C
  loc_CC1954: ImpAdCallFPR4  = Format(, )
  loc_CC1959: FLdRfVar var_17C
  loc_CC195C: CStrVarTmp
  loc_CC195D: CVarStr var_18C
  loc_CC1960: PopAdLdVar
  loc_CC1961: FLdPr Me
  loc_CC1964: VCallAd Control_ID_ServDevaFlex
  loc_CC1967: FStAdFunc var_164
  loc_CC196A: FLdPr var_164
  loc_CC196D: LateIdCallSt
  loc_CC1975: FFreeAd var_A4 = "": var_13C = ""
  loc_CC197E: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC1989: Branch loc_CC1B98
  loc_CC198C: FLdPr Me
  loc_CC198F: MemLdI2 global_72
  loc_CC1992: CI4UI1
  loc_CC1993: CVarI4
  loc_CC1997: PopAdLdVar
  loc_CC1998: LitVarI4
  loc_CC19A0: PopAdLdVar
  loc_CC19A1: FLdPr Me
  loc_CC19A4: VCallAd Control_ID_ServDevaFlex
  loc_CC19A7: FStAdFunc var_A4
  loc_CC19AA: FLdPr var_A4
  loc_CC19AD: LateIdCallLdVar
  loc_CC19B7: CStrVarTmp
  loc_CC19B8: FStStrNoPop var_10C
  loc_CC19BB: LitStr "1"
  loc_CC19BE: EqStr
  loc_CC19C0: FFree1Str var_10C
  loc_CC19C3: FFree1Ad var_A4
  loc_CC19C6: FFree1Var var_B4 = ""
  loc_CC19C9: BranchF loc_CC1B98
  loc_CC19CC: FLdPr Me
  loc_CC19CF: MemLdI2 global_72
  loc_CC19D2: CI4UI1
  loc_CC19D3: CVarI4
  loc_CC19D7: PopAdLdVar
  loc_CC19D8: LitVarI4
  loc_CC19E0: PopAdLdVar
  loc_CC19E1: FLdPr Me
  loc_CC19E4: VCallAd Control_ID_ServDevaFlex
  loc_CC19E7: FStAdFunc var_A4
  loc_CC19EA: FLdPr var_A4
  loc_CC19ED: LateIdCallLdVar
  loc_CC19F7: CStrVarTmp
  loc_CC19F8: CVarStr var_108
  loc_CC19FB: ImpAdCallI2 IsNumeric()
  loc_CC1A00: FLdPr Me
  loc_CC1A03: MemLdI2 global_72
  loc_CC1A06: CI4UI1
  loc_CC1A07: CVarI4
  loc_CC1A0B: PopAdLdVar
  loc_CC1A0C: LitVarI4
  loc_CC1A14: PopAdLdVar
  loc_CC1A15: FLdPr Me
  loc_CC1A18: VCallAd Control_ID_ServDevaFlex
  loc_CC1A1B: FStAdFunc var_13C
  loc_CC1A1E: FLdPr var_13C
  loc_CC1A21: LateIdCallLdVar
  loc_CC1A2B: CStrVarTmp
  loc_CC1A2C: CVarStr var_18C
  loc_CC1A2F: ImpAdCallI2 IsNumeric()
  loc_CC1A34: AndI4
  loc_CC1A35: FFreeAd var_A4 = ""
  loc_CC1A3C: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC1A47: BranchF loc_CC1B34
  loc_CC1A4A: FLdPr Me
  loc_CC1A4D: MemLdI2 global_72
  loc_CC1A50: CI4UI1
  loc_CC1A51: CVarI4
  loc_CC1A55: PopAdLdVar
  loc_CC1A56: LitVarI4
  loc_CC1A5E: PopAdLdVar
  loc_CC1A5F: FLdPr Me
  loc_CC1A62: VCallAd Control_ID_ServDevaFlex
  loc_CC1A65: FStAdFunc var_A4
  loc_CC1A68: FLdPr var_A4
  loc_CC1A6B: LateIdCallLdVar
  loc_CC1A75: CStrVarTmp
  loc_CC1A76: FStStrNoPop var_10C
  loc_CC1A79: CR8Str
  loc_CC1A7B: LitI2_Byte 0
  loc_CC1A7D: CR8I2
  loc_CC1A7E: EqR4
  loc_CC1A7F: FLdPr Me
  loc_CC1A82: MemLdI2 global_72
  loc_CC1A85: CI4UI1
  loc_CC1A86: CVarI4
  loc_CC1A8A: PopAdLdVar
  loc_CC1A8B: LitVarI4
  loc_CC1A93: PopAdLdVar
  loc_CC1A94: FLdPr Me
  loc_CC1A97: VCallAd Control_ID_ServDevaFlex
  loc_CC1A9A: FStAdFunc var_13C
  loc_CC1A9D: FLdPr var_13C
  loc_CC1AA0: LateIdCallLdVar
  loc_CC1AAA: CStrVarTmp
  loc_CC1AAB: FStStrNoPop var_110
  loc_CC1AAE: CR8Str
  loc_CC1AB0: LitI2_Byte 0
  loc_CC1AB2: CR8I2
  loc_CC1AB3: EqR4
  loc_CC1AB4: AndI4
  loc_CC1AB5: FFreeStr var_10C = ""
  loc_CC1ABC: FFreeAd var_A4 = ""
  loc_CC1AC3: FFreeVar var_B4 = ""
  loc_CC1ACA: BranchF loc_CC1B31
  loc_CC1ACD: FLdPr Me
  loc_CC1AD0: MemLdI2 global_72
  loc_CC1AD3: CI4UI1
  loc_CC1AD4: CVarI4
  loc_CC1AD8: PopAdLdVar
  loc_CC1AD9: LitVarI4
  loc_CC1AE1: PopAdLdVar
  loc_CC1AE2: LitVarStr var_150, vbNullString
  loc_CC1AE7: PopAdLdVar
  loc_CC1AE8: FLdPr Me
  loc_CC1AEB: VCallAd Control_ID_ServDevaFlex
  loc_CC1AEE: FStAdFunc var_A4
  loc_CC1AF1: FLdPr var_A4
  loc_CC1AF4: LateIdCallSt
  loc_CC1AFC: FFree1Ad var_A4
  loc_CC1AFF: FLdPr Me
  loc_CC1B02: MemLdI2 global_72
  loc_CC1B05: CI4UI1
  loc_CC1B06: CVarI4
  loc_CC1B0A: PopAdLdVar
  loc_CC1B0B: LitVarI4
  loc_CC1B13: PopAdLdVar
  loc_CC1B14: LitVarStr var_150, vbNullString
  loc_CC1B19: PopAdLdVar
  loc_CC1B1A: FLdPr Me
  loc_CC1B1D: VCallAd Control_ID_ServDevaFlex
  loc_CC1B20: FStAdFunc var_A4
  loc_CC1B23: FLdPr var_A4
  loc_CC1B26: LateIdCallSt
  loc_CC1B2E: FFree1Ad var_A4
  loc_CC1B31: Branch loc_CC1B98
  loc_CC1B34: FLdPr Me
  loc_CC1B37: MemLdI2 global_72
  loc_CC1B3A: CI4UI1
  loc_CC1B3B: CVarI4
  loc_CC1B3F: PopAdLdVar
  loc_CC1B40: LitVarI4
  loc_CC1B48: PopAdLdVar
  loc_CC1B49: LitVarStr var_150, vbNullString
  loc_CC1B4E: PopAdLdVar
  loc_CC1B4F: FLdPr Me
  loc_CC1B52: VCallAd Control_ID_ServDevaFlex
  loc_CC1B55: FStAdFunc var_A4
  loc_CC1B58: FLdPr var_A4
  loc_CC1B5B: LateIdCallSt
  loc_CC1B63: FFree1Ad var_A4
  loc_CC1B66: FLdPr Me
  loc_CC1B69: MemLdI2 global_72
  loc_CC1B6C: CI4UI1
  loc_CC1B6D: CVarI4
  loc_CC1B71: PopAdLdVar
  loc_CC1B72: LitVarI4
  loc_CC1B7A: PopAdLdVar
  loc_CC1B7B: LitVarStr var_150, vbNullString
  loc_CC1B80: PopAdLdVar
  loc_CC1B81: FLdPr Me
  loc_CC1B84: VCallAd Control_ID_ServDevaFlex
  loc_CC1B87: FStAdFunc var_A4
  loc_CC1B8A: FLdPr var_A4
  loc_CC1B8D: LateIdCallSt
  loc_CC1B95: FFree1Ad var_A4
  loc_CC1B98: FLdPr Me
  loc_CC1B9B: MemLdI2 global_72
  loc_CC1B9E: CI4UI1
  loc_CC1B9F: CVarI4
  loc_CC1BA3: PopAdLdVar
  loc_CC1BA4: LitVarI4
  loc_CC1BAC: PopAdLdVar
  loc_CC1BAD: FLdPr Me
  loc_CC1BB0: VCallAd Control_ID_ServDevaFlex
  loc_CC1BB3: FStAdFunc var_A4
  loc_CC1BB6: FLdPr var_A4
  loc_CC1BB9: LateIdCallLdVar
  loc_CC1BC3: CStrVarTmp
  loc_CC1BC4: CVarStr var_108
  loc_CC1BC7: ImpAdCallI2 IsNumeric()
  loc_CC1BCC: FLdPr Me
  loc_CC1BCF: MemLdI2 global_72
  loc_CC1BD2: CI4UI1
  loc_CC1BD3: CVarI4
  loc_CC1BD7: PopAdLdVar
  loc_CC1BD8: LitVarI4
  loc_CC1BE0: PopAdLdVar
  loc_CC1BE1: FLdPr Me
  loc_CC1BE4: VCallAd Control_ID_ServDevaFlex
  loc_CC1BE7: FStAdFunc var_13C
  loc_CC1BEA: FLdPr var_13C
  loc_CC1BED: LateIdCallLdVar
  loc_CC1BF7: CStrVarTmp
  loc_CC1BF8: CVarStr var_18C
  loc_CC1BFB: ImpAdCallI2 IsNumeric()
  loc_CC1C00: AndI4
  loc_CC1C01: FFreeAd var_A4 = ""
  loc_CC1C08: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC1C13: BranchF loc_CC1CFE
  loc_CC1C16: FLdPr Me
  loc_CC1C19: MemLdI2 global_72
  loc_CC1C1C: CI4UI1
  loc_CC1C1D: CVarI4
  loc_CC1C21: PopAdLdVar
  loc_CC1C22: LitVarI4
  loc_CC1C2A: PopAdLdVar
  loc_CC1C2B: FLdPr Me
  loc_CC1C2E: VCallAd Control_ID_ServDevaFlex
  loc_CC1C31: FStAdFunc var_A4
  loc_CC1C34: FLdPr var_A4
  loc_CC1C37: LateIdCallLdVar
  loc_CC1C41: PopAd
  loc_CC1C43: FLdPr Me
  loc_CC1C46: MemLdI2 global_72
  loc_CC1C49: CI4UI1
  loc_CC1C4A: CVarI4
  loc_CC1C4E: PopAdLdVar
  loc_CC1C4F: LitVarI4
  loc_CC1C57: PopAdLdVar
  loc_CC1C58: FLdPr Me
  loc_CC1C5B: VCallAd Control_ID_ServDevaFlex
  loc_CC1C5E: FStAdFunc var_13C
  loc_CC1C61: FLdPr var_13C
  loc_CC1C64: LateIdCallLdVar
  loc_CC1C6E: PopAd
  loc_CC1C70: FLdPr Me
  loc_CC1C73: MemLdI2 global_72
  loc_CC1C76: CI4UI1
  loc_CC1C77: CVarI4
  loc_CC1C7B: PopAdLdVar
  loc_CC1C7C: LitVarI4
  loc_CC1C84: PopAdLdVar
  loc_CC1C85: LitI4 1
  loc_CC1C8A: LitI4 1
  loc_CC1C8F: LitVarStr var_1CC, "0.00"
  loc_CC1C94: FStVarCopyObj var_18C
  loc_CC1C97: FLdRfVar var_18C
  loc_CC1C9A: FLdRfVar var_B4
  loc_CC1C9D: CStrVarTmp
  loc_CC1C9E: FStStrNoPop var_10C
  loc_CC1CA1: CR8Str
  loc_CC1CA3: FLdRfVar var_108
  loc_CC1CA6: CStrVarTmp
  loc_CC1CA7: FStStrNoPop var_110
  loc_CC1CAA: CR8Str
  loc_CC1CAC: MulR8
  loc_CC1CAD: FLdPr Me
  loc_CC1CB0: MemLdFPR8 global_84
  loc_CC1CB3: AddR8
  loc_CC1CB4: CVarR8
  loc_CC1CB8: FLdRfVar var_1DC
  loc_CC1CBB: ImpAdCallFPR4  = Format(, )
  loc_CC1CC0: FLdRfVar var_1DC
  loc_CC1CC3: CStrVarTmp
  loc_CC1CC4: CVarStr var_22C
  loc_CC1CC7: PopAdLdVar
  loc_CC1CC8: FLdPr Me
  loc_CC1CCB: VCallAd Control_ID_ServDevaFlex
  loc_CC1CCE: FStAdFunc var_140
  loc_CC1CD1: FLdPr var_140
  loc_CC1CD4: LateIdCallSt
  loc_CC1CDC: FFreeStr var_10C = ""
  loc_CC1CE3: FFreeAd var_A4 = "": var_13C = ""
  loc_CC1CEC: FFreeVar var_B4 = "": var_108 = "": var_17C = "": var_18C = "": var_1DC = ""
  loc_CC1CFB: Branch loc_CC1DE5
  loc_CC1CFE: FLdPr Me
  loc_CC1D01: MemLdI2 global_72
  loc_CC1D04: CI4UI1
  loc_CC1D05: CVarI4
  loc_CC1D09: PopAdLdVar
  loc_CC1D0A: LitVarI4
  loc_CC1D12: PopAdLdVar
  loc_CC1D13: FLdPr Me
  loc_CC1D16: VCallAd Control_ID_ServDevaFlex
  loc_CC1D19: FStAdFunc var_A4
  loc_CC1D1C: FLdPr var_A4
  loc_CC1D1F: LateIdCallLdVar
  loc_CC1D29: CStrVarTmp
  loc_CC1D2A: CVarStr var_108
  loc_CC1D2D: ImpAdCallI2 IsNumeric()
  loc_CC1D32: FFree1Ad var_A4
  loc_CC1D35: FFreeVar var_B4 = ""
  loc_CC1D3C: BranchF loc_CC1DE5
  loc_CC1D3F: FLdPr Me
  loc_CC1D42: MemLdI2 global_72
  loc_CC1D45: CI4UI1
  loc_CC1D46: CVarI4
  loc_CC1D4A: PopAdLdVar
  loc_CC1D4B: LitVarI4
  loc_CC1D53: PopAdLdVar
  loc_CC1D54: FLdPr Me
  loc_CC1D57: VCallAd Control_ID_ServDevaFlex
  loc_CC1D5A: FStAdFunc var_A4
  loc_CC1D5D: FLdPr var_A4
  loc_CC1D60: LateIdCallLdVar
  loc_CC1D6A: PopAd
  loc_CC1D6C: FLdPr Me
  loc_CC1D6F: MemLdI2 global_72
  loc_CC1D72: CI4UI1
  loc_CC1D73: CVarI4
  loc_CC1D77: PopAdLdVar
  loc_CC1D78: LitVarI4
  loc_CC1D80: PopAdLdVar
  loc_CC1D81: LitI4 1
  loc_CC1D86: LitI4 1
  loc_CC1D8B: LitVarStr var_160, "0.00"
  loc_CC1D90: FStVarCopyObj var_17C
  loc_CC1D93: FLdRfVar var_17C
  loc_CC1D96: FLdRfVar var_B4
  loc_CC1D99: CStrVarTmp
  loc_CC1D9A: FStStrNoPop var_10C
  loc_CC1D9D: CR8Str
  loc_CC1D9F: FLdPr Me
  loc_CC1DA2: MemLdFPR8 global_84
  loc_CC1DA5: AddR8
  loc_CC1DA6: CVarR8
  loc_CC1DAA: FLdRfVar var_18C
  loc_CC1DAD: ImpAdCallFPR4  = Format(, )
  loc_CC1DB2: FLdRfVar var_18C
  loc_CC1DB5: CStrVarTmp
  loc_CC1DB6: CVarStr var_1DC
  loc_CC1DB9: PopAdLdVar
  loc_CC1DBA: FLdPr Me
  loc_CC1DBD: VCallAd Control_ID_ServDevaFlex
  loc_CC1DC0: FStAdFunc var_13C
  loc_CC1DC3: FLdPr var_13C
  loc_CC1DC6: LateIdCallSt
  loc_CC1DCE: FFree1Str var_10C
  loc_CC1DD1: FFreeAd var_A4 = ""
  loc_CC1DD8: FFreeVar var_B4 = "": var_108 = "": var_17C = "": var_18C = ""
  loc_CC1DE5: FLdPr Me
  loc_CC1DE8: MemLdI2 global_72
  loc_CC1DEB: CI4UI1
  loc_CC1DEC: CVarI4
  loc_CC1DF0: PopAdLdVar
  loc_CC1DF1: LitVarI4
  loc_CC1DF9: PopAdLdVar
  loc_CC1DFA: FLdRfVar var_B4
  loc_CC1DFD: FLdRfVar var_140
  loc_CC1E00: LitVarStr var_C8, "PeriInfo"
  loc_CC1E05: PopAdLdVar
  loc_CC1E06: FLdRfVar var_13C
  loc_CC1E09: FLdRfVar var_A4
  loc_CC1E0C: FLdPr Me
  loc_CC1E0F: MemLdRfVar from_stack_1.global_56
  loc_CC1E12: NewIfNullPr clsservdeva
  loc_CC1E15: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1E1A: FLdPr var_A4
  loc_CC1E1D:  = Me.Fields
  loc_CC1E22: FLdPr var_13C
  loc_CC1E25: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1E2A: FLdPr var_140
  loc_CC1E2D:  = Me.Value
  loc_CC1E32: FLdRfVar var_B4
  loc_CC1E35: CStrVarTmp
  loc_CC1E36: CVarStr var_108
  loc_CC1E39: PopAdLdVar
  loc_CC1E3A: FLdPr Me
  loc_CC1E3D: VCallAd Control_ID_ServDevaFlex
  loc_CC1E40: FStAdFunc var_164
  loc_CC1E43: FLdPr var_164
  loc_CC1E46: LateIdCallSt
  loc_CC1E4E: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC1E59: FFreeVar var_B4 = ""
  loc_CC1E60: FLdPr Me
  loc_CC1E63: MemLdI2 global_72
  loc_CC1E66: CI4UI1
  loc_CC1E67: CVarI4
  loc_CC1E6B: PopAdLdVar
  loc_CC1E6C: LitVarI4
  loc_CC1E74: PopAdLdVar
  loc_CC1E75: FLdRfVar var_B4
  loc_CC1E78: FLdRfVar var_140
  loc_CC1E7B: LitVarStr var_C8, "CodiConc"
  loc_CC1E80: PopAdLdVar
  loc_CC1E81: FLdRfVar var_13C
  loc_CC1E84: FLdRfVar var_A4
  loc_CC1E87: FLdPr Me
  loc_CC1E8A: MemLdRfVar from_stack_1.global_56
  loc_CC1E8D: NewIfNullPr clsservdeva
  loc_CC1E90: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1E95: FLdPr var_A4
  loc_CC1E98:  = Me.Fields
  loc_CC1E9D: FLdPr var_13C
  loc_CC1EA0: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1EA5: FLdPr var_140
  loc_CC1EA8:  = Me.Value
  loc_CC1EAD: FLdRfVar var_B4
  loc_CC1EB0: CStrVarTmp
  loc_CC1EB1: CVarStr var_108
  loc_CC1EB4: PopAdLdVar
  loc_CC1EB5: FLdPr Me
  loc_CC1EB8: VCallAd Control_ID_ServDevaFlex
  loc_CC1EBB: FStAdFunc var_164
  loc_CC1EBE: FLdPr var_164
  loc_CC1EC1: LateIdCallSt
  loc_CC1EC9: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC1ED4: FFreeVar var_B4 = ""
  loc_CC1EDB: FLdPr Me
  loc_CC1EDE: MemLdI2 global_72
  loc_CC1EE1: CI4UI1
  loc_CC1EE2: CVarI4
  loc_CC1EE6: PopAdLdVar
  loc_CC1EE7: LitVarI4
  loc_CC1EEF: PopAdLdVar
  loc_CC1EF0: FLdRfVar var_B4
  loc_CC1EF3: FLdRfVar var_140
  loc_CC1EF6: LitVarStr var_C8, "TiafConc"
  loc_CC1EFB: PopAdLdVar
  loc_CC1EFC: FLdRfVar var_13C
  loc_CC1EFF: FLdRfVar var_A4
  loc_CC1F02: FLdPr Me
  loc_CC1F05: MemLdRfVar from_stack_1.global_56
  loc_CC1F08: NewIfNullPr clsservdeva
  loc_CC1F0B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CC1F10: FLdPr var_A4
  loc_CC1F13:  = Me.Fields
  loc_CC1F18: FLdPr var_13C
  loc_CC1F1B: from_stack_2 = Me.Item(from_stack_1)
  loc_CC1F20: FLdPr var_140
  loc_CC1F23:  = Me.Value
  loc_CC1F28: FLdRfVar var_B4
  loc_CC1F2B: CStrVarTmp
  loc_CC1F2C: CVarStr var_108
  loc_CC1F2F: PopAdLdVar
  loc_CC1F30: FLdPr Me
  loc_CC1F33: VCallAd Control_ID_ServDevaFlex
  loc_CC1F36: FStAdFunc var_164
  loc_CC1F39: FLdPr var_164
  loc_CC1F3C: LateIdCallSt
  loc_CC1F44: FFreeAd var_A4 = "": var_13C = "": var_140 = ""
  loc_CC1F4F: FFreeVar var_B4 = ""
  loc_CC1F56: LitI2_Byte 0
  loc_CC1F58: CR8I2
  loc_CC1F59: FLdPr Me
  loc_CC1F5C: MemStFPR8 global_84
  loc_CC1F5F: Branch loc_CC2112
  loc_CC1F62: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CC1F65: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC1F6A: FLdPr Me
  loc_CC1F6D: VCallAd Control_ID_ServDevaFlex
  loc_CC1F70: FStAdFunc var_A4
  loc_CC1F73: FLdPr var_A4
  loc_CC1F76: LateIdCall
  loc_CC1F7E: FFree1Ad var_A4
  loc_CC1F81: FLdPr Me
  loc_CC1F84: MemLdI2 global_72
  loc_CC1F87: CI4UI1
  loc_CC1F88: CVarI4
  loc_CC1F8C: PopAdLdVar
  loc_CC1F8D: LitVarI4
  loc_CC1F95: PopAdLdVar
  loc_CC1F96: LitVarStr var_150, vbNullString
  loc_CC1F9B: PopAdLdVar
  loc_CC1F9C: FLdPr Me
  loc_CC1F9F: VCallAd Control_ID_ServDevaFlex
  loc_CC1FA2: FStAdFunc var_A4
  loc_CC1FA5: FLdPr var_A4
  loc_CC1FA8: LateIdCallSt
  loc_CC1FB0: FFree1Ad var_A4
  loc_CC1FB3: FLdPr Me
  loc_CC1FB6: MemLdI2 global_72
  loc_CC1FB9: CI4UI1
  loc_CC1FBA: CVarI4
  loc_CC1FBE: PopAdLdVar
  loc_CC1FBF: LitVarI4
  loc_CC1FC7: PopAdLdVar
  loc_CC1FC8: LitVarStr var_150, vbNullString
  loc_CC1FCD: PopAdLdVar
  loc_CC1FCE: FLdPr Me
  loc_CC1FD1: VCallAd Control_ID_ServDevaFlex
  loc_CC1FD4: FStAdFunc var_A4
  loc_CC1FD7: FLdPr var_A4
  loc_CC1FDA: LateIdCallSt
  loc_CC1FE2: FFree1Ad var_A4
  loc_CC1FE5: FLdPr Me
  loc_CC1FE8: MemLdI2 global_72
  loc_CC1FEB: CI4UI1
  loc_CC1FEC: CVarI4
  loc_CC1FF0: PopAdLdVar
  loc_CC1FF1: LitVarI4
  loc_CC1FF9: PopAdLdVar
  loc_CC1FFA: LitVarStr var_150, vbNullString
  loc_CC1FFF: PopAdLdVar
  loc_CC2000: FLdPr Me
  loc_CC2003: VCallAd Control_ID_ServDevaFlex
  loc_CC2006: FStAdFunc var_A4
  loc_CC2009: FLdPr var_A4
  loc_CC200C: LateIdCallSt
  loc_CC2014: FFree1Ad var_A4
  loc_CC2017: FLdPr Me
  loc_CC201A: MemLdI2 global_72
  loc_CC201D: CI4UI1
  loc_CC201E: CVarI4
  loc_CC2022: PopAdLdVar
  loc_CC2023: LitVarI4
  loc_CC202B: PopAdLdVar
  loc_CC202C: LitVarStr var_150, vbNullString
  loc_CC2031: PopAdLdVar
  loc_CC2032: FLdPr Me
  loc_CC2035: VCallAd Control_ID_ServDevaFlex
  loc_CC2038: FStAdFunc var_A4
  loc_CC203B: FLdPr var_A4
  loc_CC203E: LateIdCallSt
  loc_CC2046: FFree1Ad var_A4
  loc_CC2049: FLdPr Me
  loc_CC204C: MemLdI2 global_72
  loc_CC204F: CI4UI1
  loc_CC2050: CVarI4
  loc_CC2054: PopAdLdVar
  loc_CC2055: LitVarI4
  loc_CC205D: PopAdLdVar
  loc_CC205E: LitVarStr var_150, vbNullString
  loc_CC2063: PopAdLdVar
  loc_CC2064: FLdPr Me
  loc_CC2067: VCallAd Control_ID_ServDevaFlex
  loc_CC206A: FStAdFunc var_A4
  loc_CC206D: FLdPr var_A4
  loc_CC2070: LateIdCallSt
  loc_CC2078: FFree1Ad var_A4
  loc_CC207B: FLdPr Me
  loc_CC207E: MemLdI2 global_72
  loc_CC2081: CI4UI1
  loc_CC2082: CVarI4
  loc_CC2086: PopAdLdVar
  loc_CC2087: LitVarI4
  loc_CC208F: PopAdLdVar
  loc_CC2090: LitVarStr var_150, vbNullString
  loc_CC2095: PopAdLdVar
  loc_CC2096: FLdPr Me
  loc_CC2099: VCallAd Control_ID_ServDevaFlex
  loc_CC209C: FStAdFunc var_A4
  loc_CC209F: FLdPr var_A4
  loc_CC20A2: LateIdCallSt
  loc_CC20AA: FFree1Ad var_A4
  loc_CC20AD: FLdPr Me
  loc_CC20B0: MemLdI2 global_72
  loc_CC20B3: CI4UI1
  loc_CC20B4: CVarI4
  loc_CC20B8: PopAdLdVar
  loc_CC20B9: LitVarI4
  loc_CC20C1: PopAdLdVar
  loc_CC20C2: LitVarStr var_150, vbNullString
  loc_CC20C7: PopAdLdVar
  loc_CC20C8: FLdPr Me
  loc_CC20CB: VCallAd Control_ID_ServDevaFlex
  loc_CC20CE: FStAdFunc var_A4
  loc_CC20D1: FLdPr var_A4
  loc_CC20D4: LateIdCallSt
  loc_CC20DC: FFree1Ad var_A4
  loc_CC20DF: FLdPr Me
  loc_CC20E2: MemLdI2 global_72
  loc_CC20E5: CI4UI1
  loc_CC20E6: CVarI4
  loc_CC20EA: PopAdLdVar
  loc_CC20EB: LitVarI4
  loc_CC20F3: PopAdLdVar
  loc_CC20F4: LitVarStr var_150, vbNullString
  loc_CC20F9: PopAdLdVar
  loc_CC20FA: FLdPr Me
  loc_CC20FD: VCallAd Control_ID_ServDevaFlex
  loc_CC2100: FStAdFunc var_A4
  loc_CC2103: FLdPr var_A4
  loc_CC2106: LateIdCallSt
  loc_CC210E: FFree1Ad var_A4
  loc_CC2111: ExitProcHresult
  loc_CC2112: Branch loc_CC22D2
  loc_CC2115: LitStr "Debe ingresar el código. Verifique..."
  loc_CC2118: FLdPr Me
  loc_CC211B: MemStStrCopy
  loc_CC211F: FLdPr Me
  loc_CC2122: MemLdStr global_68
  loc_CC2125: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC212A: FLdPr Me
  loc_CC212D: MemLdI2 global_72
  loc_CC2130: CI4UI1
  loc_CC2131: CVarI4
  loc_CC2135: PopAdLdVar
  loc_CC2136: LitVarI4
  loc_CC213E: PopAdLdVar
  loc_CC213F: LitVarStr var_150, vbNullString
  loc_CC2144: PopAdLdVar
  loc_CC2145: FLdPr Me
  loc_CC2148: VCallAd Control_ID_ServDevaFlex
  loc_CC214B: FStAdFunc var_A4
  loc_CC214E: FLdPr var_A4
  loc_CC2151: LateIdCallSt
  loc_CC2159: FFree1Ad var_A4
  loc_CC215C: FLdPr Me
  loc_CC215F: MemLdI2 global_72
  loc_CC2162: CI4UI1
  loc_CC2163: CVarI4
  loc_CC2167: PopAdLdVar
  loc_CC2168: LitVarI4
  loc_CC2170: PopAdLdVar
  loc_CC2171: LitVarStr var_150, vbNullString
  loc_CC2176: PopAdLdVar
  loc_CC2177: FLdPr Me
  loc_CC217A: VCallAd Control_ID_ServDevaFlex
  loc_CC217D: FStAdFunc var_A4
  loc_CC2180: FLdPr var_A4
  loc_CC2183: LateIdCallSt
  loc_CC218B: FFree1Ad var_A4
  loc_CC218E: FLdPr Me
  loc_CC2191: MemLdI2 global_72
  loc_CC2194: CI4UI1
  loc_CC2195: CVarI4
  loc_CC2199: PopAdLdVar
  loc_CC219A: LitVarI4
  loc_CC21A2: PopAdLdVar
  loc_CC21A3: LitVarStr var_150, vbNullString
  loc_CC21A8: PopAdLdVar
  loc_CC21A9: FLdPr Me
  loc_CC21AC: VCallAd Control_ID_ServDevaFlex
  loc_CC21AF: FStAdFunc var_A4
  loc_CC21B2: FLdPr var_A4
  loc_CC21B5: LateIdCallSt
  loc_CC21BD: FFree1Ad var_A4
  loc_CC21C0: FLdPr Me
  loc_CC21C3: MemLdI2 global_72
  loc_CC21C6: CI4UI1
  loc_CC21C7: CVarI4
  loc_CC21CB: PopAdLdVar
  loc_CC21CC: LitVarI4
  loc_CC21D4: PopAdLdVar
  loc_CC21D5: LitVarStr var_150, vbNullString
  loc_CC21DA: PopAdLdVar
  loc_CC21DB: FLdPr Me
  loc_CC21DE: VCallAd Control_ID_ServDevaFlex
  loc_CC21E1: FStAdFunc var_A4
  loc_CC21E4: FLdPr var_A4
  loc_CC21E7: LateIdCallSt
  loc_CC21EF: FFree1Ad var_A4
  loc_CC21F2: FLdPr Me
  loc_CC21F5: MemLdI2 global_72
  loc_CC21F8: CI4UI1
  loc_CC21F9: CVarI4
  loc_CC21FD: PopAdLdVar
  loc_CC21FE: LitVarI4
  loc_CC2206: PopAdLdVar
  loc_CC2207: LitVarStr var_150, vbNullString
  loc_CC220C: PopAdLdVar
  loc_CC220D: FLdPr Me
  loc_CC2210: VCallAd Control_ID_ServDevaFlex
  loc_CC2213: FStAdFunc var_A4
  loc_CC2216: FLdPr var_A4
  loc_CC2219: LateIdCallSt
  loc_CC2221: FFree1Ad var_A4
  loc_CC2224: FLdPr Me
  loc_CC2227: MemLdI2 global_72
  loc_CC222A: CI4UI1
  loc_CC222B: CVarI4
  loc_CC222F: PopAdLdVar
  loc_CC2230: LitVarI4
  loc_CC2238: PopAdLdVar
  loc_CC2239: LitVarStr var_150, vbNullString
  loc_CC223E: PopAdLdVar
  loc_CC223F: FLdPr Me
  loc_CC2242: VCallAd Control_ID_ServDevaFlex
  loc_CC2245: FStAdFunc var_A4
  loc_CC2248: FLdPr var_A4
  loc_CC224B: LateIdCallSt
  loc_CC2253: FFree1Ad var_A4
  loc_CC2256: FLdPr Me
  loc_CC2259: MemLdI2 global_72
  loc_CC225C: CI4UI1
  loc_CC225D: CVarI4
  loc_CC2261: PopAdLdVar
  loc_CC2262: LitVarI4
  loc_CC226A: PopAdLdVar
  loc_CC226B: LitVarStr var_150, vbNullString
  loc_CC2270: PopAdLdVar
  loc_CC2271: FLdPr Me
  loc_CC2274: VCallAd Control_ID_ServDevaFlex
  loc_CC2277: FStAdFunc var_A4
  loc_CC227A: FLdPr var_A4
  loc_CC227D: LateIdCallSt
  loc_CC2285: FFree1Ad var_A4
  loc_CC2288: FLdPr Me
  loc_CC228B: MemLdI2 global_72
  loc_CC228E: CI4UI1
  loc_CC228F: CVarI4
  loc_CC2293: PopAdLdVar
  loc_CC2294: LitVarI4
  loc_CC229C: PopAdLdVar
  loc_CC229D: LitVarStr var_150, vbNullString
  loc_CC22A2: PopAdLdVar
  loc_CC22A3: FLdPr Me
  loc_CC22A6: VCallAd Control_ID_ServDevaFlex
  loc_CC22A9: FStAdFunc var_A4
  loc_CC22AC: FLdPr var_A4
  loc_CC22AF: LateIdCallSt
  loc_CC22B7: FFree1Ad var_A4
  loc_CC22BA: FLdPr Me
  loc_CC22BD: VCallAd Control_ID_ServDevaFlex
  loc_CC22C0: FStAdFunc var_A4
  loc_CC22C3: FLdPr var_A4
  loc_CC22C6: LateIdCall
  loc_CC22CE: FFree1Ad var_A4
  loc_CC22D1: ExitProcHresult
  loc_CC22D2: FLdPr Me
  loc_CC22D5: MemLdI2 global_72
  loc_CC22D8: CI4UI1
  loc_CC22D9: CVarI4
  loc_CC22DD: PopAdLdVar
  loc_CC22DE: LitVarI4
  loc_CC22E6: PopAdLdVar
  loc_CC22E7: FLdPr Me
  loc_CC22EA: VCallAd Control_ID_ServDevaFlex
  loc_CC22ED: FStAdFunc var_A4
  loc_CC22F0: FLdPr var_A4
  loc_CC22F3: LateIdCallLdVar
  loc_CC22FD: CStrVarTmp
  loc_CC22FE: CVarStr var_108
  loc_CC2301: ImpAdCallI2 IsNumeric()
  loc_CC2306: NotI4
  loc_CC2307: FFree1Ad var_A4
  loc_CC230A: FFreeVar var_B4 = ""
  loc_CC2311: BranchF loc_CC2344
  loc_CC2314: LitStr "Debe ingresar el precio unitario. Verifique..."
  loc_CC2317: FLdPr Me
  loc_CC231A: MemStStrCopy
  loc_CC231E: FLdPr Me
  loc_CC2321: MemLdStr global_68
  loc_CC2324: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC2329: FLdPr Me
  loc_CC232C: VCallAd Control_ID_ServDevaFlex
  loc_CC232F: FStAdFunc var_A4
  loc_CC2332: FLdPr var_A4
  loc_CC2335: LateIdCall
  loc_CC233D: FFree1Ad var_A4
  loc_CC2340: ExitProcHresult
  loc_CC2341: Branch loc_CC23B2
  loc_CC2344: FLdPr Me
  loc_CC2347: MemLdI2 global_72
  loc_CC234A: CI4UI1
  loc_CC234B: CVarI4
  loc_CC234F: PopAdLdVar
  loc_CC2350: LitVarI4
  loc_CC2358: PopAdLdVar
  loc_CC2359: FLdPr Me
  loc_CC235C: VCallAd Control_ID_ServDevaFlex
  loc_CC235F: FStAdFunc var_A4
  loc_CC2362: FLdPr var_A4
  loc_CC2365: LateIdCallLdVar
  loc_CC236F: CStrVarTmp
  loc_CC2370: FStStrNoPop var_10C
  loc_CC2373: CR8Str
  loc_CC2375: LitI2_Byte 0
  loc_CC2377: CR8I2
  loc_CC2378: LeR8
  loc_CC2379: FFree1Str var_10C
  loc_CC237C: FFree1Ad var_A4
  loc_CC237F: FFree1Var var_B4 = ""
  loc_CC2382: BranchF loc_CC23B2
  loc_CC2385: LitStr "El precio unitario debe ser mayor a cero. Verifique..."
  loc_CC2388: FLdPr Me
  loc_CC238B: MemStStrCopy
  loc_CC238F: FLdPr Me
  loc_CC2392: MemLdStr global_68
  loc_CC2395: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC239A: FLdPr Me
  loc_CC239D: VCallAd Control_ID_ServDevaFlex
  loc_CC23A0: FStAdFunc var_A4
  loc_CC23A3: FLdPr var_A4
  loc_CC23A6: LateIdCall
  loc_CC23AE: FFree1Ad var_A4
  loc_CC23B1: ExitProcHresult
  loc_CC23B2: FLdPr Me
  loc_CC23B5: MemLdI2 global_72
  loc_CC23B8: CI4UI1
  loc_CC23B9: CVarI4
  loc_CC23BD: PopAdLdVar
  loc_CC23BE: LitVarI4
  loc_CC23C6: PopAdLdVar
  loc_CC23C7: FLdPr Me
  loc_CC23CA: VCallAd Control_ID_ServDevaFlex
  loc_CC23CD: FStAdFunc var_A4
  loc_CC23D0: FLdPr var_A4
  loc_CC23D3: LateIdCallLdVar
  loc_CC23DD: CStrVarTmp
  loc_CC23DE: CVarStr var_108
  loc_CC23E1: ImpAdCallI2 IsNumeric()
  loc_CC23E6: NotI4
  loc_CC23E7: FFree1Ad var_A4
  loc_CC23EA: FFreeVar var_B4 = ""
  loc_CC23F1: BranchF loc_CC2424
  loc_CC23F4: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CC23F7: FLdPr Me
  loc_CC23FA: MemStStrCopy
  loc_CC23FE: FLdPr Me
  loc_CC2401: MemLdStr global_68
  loc_CC2404: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC2409: FLdPr Me
  loc_CC240C: VCallAd Control_ID_ServDevaFlex
  loc_CC240F: FStAdFunc var_A4
  loc_CC2412: FLdPr var_A4
  loc_CC2415: LateIdCall
  loc_CC241D: FFree1Ad var_A4
  loc_CC2420: ExitProcHresult
  loc_CC2421: Branch loc_CC2492
  loc_CC2424: FLdPr Me
  loc_CC2427: MemLdI2 global_72
  loc_CC242A: CI4UI1
  loc_CC242B: CVarI4
  loc_CC242F: PopAdLdVar
  loc_CC2430: LitVarI4
  loc_CC2438: PopAdLdVar
  loc_CC2439: FLdPr Me
  loc_CC243C: VCallAd Control_ID_ServDevaFlex
  loc_CC243F: FStAdFunc var_A4
  loc_CC2442: FLdPr var_A4
  loc_CC2445: LateIdCallLdVar
  loc_CC244F: CStrVarTmp
  loc_CC2450: FStStrNoPop var_10C
  loc_CC2453: CR8Str
  loc_CC2455: LitI2_Byte 0
  loc_CC2457: CR8I2
  loc_CC2458: LeR8
  loc_CC2459: FFree1Str var_10C
  loc_CC245C: FFree1Ad var_A4
  loc_CC245F: FFree1Var var_B4 = ""
  loc_CC2462: BranchF loc_CC2492
  loc_CC2465: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CC2468: FLdPr Me
  loc_CC246B: MemStStrCopy
  loc_CC246F: FLdPr Me
  loc_CC2472: MemLdStr global_68
  loc_CC2475: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC247A: FLdPr Me
  loc_CC247D: VCallAd Control_ID_ServDevaFlex
  loc_CC2480: FStAdFunc var_A4
  loc_CC2483: FLdPr var_A4
  loc_CC2486: LateIdCall
  loc_CC248E: FFree1Ad var_A4
  loc_CC2491: ExitProcHresult
  loc_CC2492: FLdPr Me
  loc_CC2495: MemLdRfVar from_stack_1.global_72
  loc_CC2498: NextI2 var_B8, loc_CC0572
  loc_CC249D: LitI2_Byte 1
  loc_CC249F: FLdPr Me
  loc_CC24A2: MemLdRfVar from_stack_1.global_72
  loc_CC24A5: FLdPr Me
  loc_CC24A8: VCallAd Control_ID_ServDevaFlex
  loc_CC24AB: FStAdFunc var_A4
  loc_CC24AE: FLdPr var_A4
  loc_CC24B1: LateIdLdVar var_B4 DispID_4 0
  loc_CC24B8: CI4Var
  loc_CC24BA: LitI4 1
  loc_CC24BF: SubI4
  loc_CC24C0: CI2I4
  loc_CC24C1: FFree1Ad var_A4
  loc_CC24C4: FFree1Var var_B4 = ""
  loc_CC24C7: ForI2 var_240
  loc_CC24CD: FLdPr Me
  loc_CC24D0: MemLdI2 global_72
  loc_CC24D3: CI4UI1
  loc_CC24D4: FLdPr Me
  loc_CC24D7: VCallAd Control_ID_ServDevaFlex
  loc_CC24DA: FStAdFunc var_A4
  loc_CC24DD: FLdPr var_A4
  loc_CC24E0: LateIdLdVar var_B4 DispID_10 0
  loc_CC24E7: CI4Var
  loc_CC24E9: NeI4
  loc_CC24EA: FFree1Ad var_A4
  loc_CC24ED: FFree1Var var_B4 = ""
  loc_CC24F0: BranchF loc_CC25C9
  loc_CC24F3: FLdPr Me
  loc_CC24F6: MemLdI2 global_72
  loc_CC24F9: CI4UI1
  loc_CC24FA: CVarI4
  loc_CC24FE: PopAdLdVar
  loc_CC24FF: LitVarI4
  loc_CC2507: PopAdLdVar
  loc_CC2508: FLdPr Me
  loc_CC250B: VCallAd Control_ID_ServDevaFlex
  loc_CC250E: FStAdFunc var_A4
  loc_CC2511: FLdPr var_A4
  loc_CC2514: LateIdCallLdVar
  loc_CC251E: CStrVarTmp
  loc_CC251F: FStStrNoPop var_10C
  loc_CC2522: FLdPr Me
  loc_CC2525: VCallAd Control_ID_ServDevaFlex
  loc_CC2528: FStAdFunc var_13C
  loc_CC252B: FLdPr var_13C
  loc_CC252E: LateIdLdVar var_108 DispID_10 0
  loc_CC2535: CI4Var
  loc_CC2537: CVarI4
  loc_CC253B: PopAdLdVar
  loc_CC253C: LitVarI4
  loc_CC2544: PopAdLdVar
  loc_CC2545: FLdPr Me
  loc_CC2548: VCallAd Control_ID_ServDevaFlex
  loc_CC254B: FStAdFunc var_140
  loc_CC254E: FLdPr var_140
  loc_CC2551: LateIdCallLdVar
  loc_CC255B: CStrVarTmp
  loc_CC255C: FStStrNoPop var_110
  loc_CC255F: EqStr
  loc_CC2561: FFreeStr var_10C = ""
  loc_CC2568: FFreeAd var_A4 = "": var_13C = ""
  loc_CC2571: FFreeVar var_B4 = "": var_108 = ""
  loc_CC257A: BranchF loc_CC25C9
  loc_CC257D: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_CC2580: FLdPr Me
  loc_CC2583: MemLdI2 global_72
  loc_CC2586: CStrUI1
  loc_CC2588: FStStrNoPop var_10C
  loc_CC258B: ConcatStr
  loc_CC258C: FStStrNoPop var_110
  loc_CC258F: LitStr ". Verifique"
  loc_CC2592: ConcatStr
  loc_CC2593: FStStrNoPop var_114
  loc_CC2596: FLdPr Me
  loc_CC2599: MemStStrCopy
  loc_CC259D: FFreeStr var_10C = "": var_110 = ""
  loc_CC25A6: FLdPr Me
  loc_CC25A9: MemLdStr global_68
  loc_CC25AC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC25B1: FLdPr Me
  loc_CC25B4: VCallAd Control_ID_ServDevaFlex
  loc_CC25B7: FStAdFunc var_A4
  loc_CC25BA: FLdPr var_A4
  loc_CC25BD: LateIdCall
  loc_CC25C5: FFree1Ad var_A4
  loc_CC25C8: ExitProcHresult
  loc_CC25C9: FLdPr Me
  loc_CC25CC: MemLdRfVar from_stack_1.global_72
  loc_CC25CF: NextI2 var_240, loc_CC24CD
  loc_CC25D4: Call Proc_330_40_B2D988()
  loc_CC25D9: FLdRfVar var_10C
  loc_CC25DC: FLdPr Me
  loc_CC25DF: VCallAd Control_ID_TotaBoleTxt
  loc_CC25E2: FStAdFunc var_A4
  loc_CC25E5: FLdPr var_A4
  loc_CC25E8:  = Me.Text
  loc_CC25ED: LitI4 2
  loc_CC25F2: ILdRf var_10C
  loc_CC25F5: CR8Str
  loc_CC25F7: CVarR8
  loc_CC25FB: FLdRfVar var_108
  loc_CC25FE: ImpAdCallFPR4  = Round(, )
  loc_CC2603: FLdRfVar var_108
  loc_CC2606: LitVarI2 var_D8, 0
  loc_CC260B: HardType
  loc_CC260C: LeVarBool
  loc_CC260E: FFree1Str var_10C
  loc_CC2611: FFree1Ad var_A4
  loc_CC2614: FFreeVar var_B4 = ""
  loc_CC261B: BranchF loc_CC264B
  loc_CC261E: LitStr "El TOTAL del boleto es incorrecto. Verifique..."
  loc_CC2621: FLdPr Me
  loc_CC2624: MemStStrCopy
  loc_CC2628: FLdPr Me
  loc_CC262B: MemLdStr global_68
  loc_CC262E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC2633: FLdPr Me
  loc_CC2636: VCallAd Control_ID_ServDevaFlex
  loc_CC2639: FStAdFunc var_A4
  loc_CC263C: FLdPr var_A4
  loc_CC263F: LateIdCall
  loc_CC2647: FFree1Ad var_A4
  loc_CC264A: ExitProcHresult
  loc_CC264B: LitI2_Byte &HB
  loc_CC264D: FLdPr Me
  loc_CC2650: Me.MousePointer = from_stack_1
  loc_CC2655: LitI2_Byte 0
  loc_CC2657: FLdPr Me
  loc_CC265A: VCallAd Control_ID_ConfirmarCmd
  loc_CC265D: FStAdFunc var_A4
  loc_CC2660: FLdPr var_A4
  loc_CC2663: Me.Enabled = from_stack_1b
  loc_CC2668: FFree1Ad var_A4
  loc_CC266B: LitVar_Missing var_18C
  loc_CC266E: LitVar_Missing var_17C
  loc_CC2671: LitVar_Missing var_108
  loc_CC2674: LitI4 &H44
  loc_CC2679: LitVarStr var_C8, "¿Desea imprimir el boleto?"
  loc_CC267E: FStVarCopyObj var_B4
  loc_CC2681: FLdRfVar var_B4
  loc_CC2684: ImpAdCallI2 MsgBox(, , , , )
  loc_CC2689: LitI4 6
  loc_CC268E: EqI4
  loc_CC268F: FFreeVar var_B4 = "": var_108 = "": var_17C = ""
  loc_CC269A: BranchF loc_CC26AD
  loc_CC269D: LitI2_Byte 0
  loc_CC269F: ImpAdStI2 MemVar_D93078
  loc_CC26A2: LitI2_Byte &HFF
  loc_CC26A4: FLdPr Me
  loc_CC26A7: MemStI2 global_80
  loc_CC26AA: Branch loc_CC26BA
  loc_CC26AD: LitI2_Byte 0
  loc_CC26AF: ImpAdStI2 MemVar_D93078
  loc_CC26B2: LitI2_Byte 0
  loc_CC26B4: FLdPr Me
  loc_CC26B7: MemStI2 global_80
  loc_CC26BA: FLdRfVar var_10C
  loc_CC26BD: FLdPr Me
  loc_CC26C0: VCallAd Control_ID_NumeCtaTxt
  loc_CC26C3: FStAdFunc var_A4
  loc_CC26C6: FLdPr var_A4
  loc_CC26C9:  = Me.Text
  loc_CC26CE: FLdPr Me
  loc_CC26D1: VCallAd Control_ID_PeriCtctMsk
  loc_CC26D4: FStAdFunc var_13C
  loc_CC26D7: FLdPr var_13C
  loc_CC26DA: LateIdLdVar var_B4 DispID_22 0
  loc_CC26E1: PopAd
  loc_CC26E3: FLdPr Me
  loc_CC26E6: VCallAd Control_ID_BimeCtctMsk
  loc_CC26E9: FStAdFunc var_140
  loc_CC26EC: FLdPr var_140
  loc_CC26EF: LateIdLdVar var_108 DispID_22 0
  loc_CC26F6: PopAd
  loc_CC26F8: FLdPr Me
  loc_CC26FB: VCallAd Control_ID_FeveCtctMsk
  loc_CC26FE: FStAdFunc var_164
  loc_CC2701: FLdPr var_164
  loc_CC2704: LateIdLdVar var_17C DispID_15 0
  loc_CC270B: PopAd
  loc_CC270D: FLdPr Me
  loc_CC2710: VCallAd Control_ID_ExpeCtct1Msk
  loc_CC2713: FStAdFunc var_168
  loc_CC2716: FLdPr var_168
  loc_CC2719: LateIdLdVar var_18C DispID_22 0
  loc_CC2720: PopAd
  loc_CC2722: LitI4 1
  loc_CC2727: LitI4 1
  loc_CC272C: LitVarStr var_C8, "000000"
  loc_CC2731: FStVarCopyObj var_22C
  loc_CC2734: FLdRfVar var_22C
  loc_CC2737: FLdRfVar var_18C
  loc_CC273A: CStrVarTmp
  loc_CC273B: CVarStr var_1DC
  loc_CC273E: FLdRfVar var_250
  loc_CC2741: ImpAdCallFPR4  = Format(, )
  loc_CC2746: FLdRfVar var_110
  loc_CC2749: FLdPr Me
  loc_CC274C: VCallAd Control_ID_ExpeCtctTxt
  loc_CC274F: FStAdFunc var_16C
  loc_CC2752: FLdPr var_16C
  loc_CC2755:  = Me.Text
  loc_CC275A: FLdPr Me
  loc_CC275D: VCallAd Control_ID_ExpeCtct2Msk
  loc_CC2760: FStAdFunc var_274
  loc_CC2763: FLdPr var_274
  loc_CC2766: LateIdLdVar var_284 DispID_22 0
  loc_CC276D: PopAd
  loc_CC276F: LitI4 1
  loc_CC2774: LitI4 1
  loc_CC2779: LitVarStr var_D8, "00"
  loc_CC277E: FStVarCopyObj var_2A4
  loc_CC2781: FLdRfVar var_2A4
  loc_CC2784: FLdRfVar var_284
  loc_CC2787: CStrVarTmp
  loc_CC2788: CVarStr var_294
  loc_CC278B: FLdRfVar var_2B4
  loc_CC278E: ImpAdCallFPR4  = Format(, )
  loc_CC2793: FLdRfVar var_114
  loc_CC2796: FLdPr Me
  loc_CC2799: VCallAd Control_ID_CompCtctTxt
  loc_CC279C: FStAdFunc var_2C8
  loc_CC279F: FLdPr var_2C8
  loc_CC27A2:  = Me.Text
  loc_CC27A7: FLdRfVar var_118
  loc_CC27AA: FLdPr Me
  loc_CC27AD: VCallAd Control_ID_DetalleTxt
  loc_CC27B0: FStAdFunc var_2CC
  loc_CC27B3: FLdPr var_2CC
  loc_CC27B6:  = Me.Text
  loc_CC27BB: FLdRfVar var_11C
  loc_CC27BE: FLdPr Me
  loc_CC27C1: VCallAd Control_ID_CucuPersLbl
  loc_CC27C4: FStAdFunc var_2D0
  loc_CC27C7: FLdPr var_2D0
  loc_CC27CA:  = Me.Caption
  loc_CC27CF: FLdRfVar var_120
  loc_CC27D2: FLdPr Me
  loc_CC27D5: VCallAd Control_ID_TotaBoleTxt
  loc_CC27D8: FStAdFunc var_2D4
  loc_CC27DB: FLdPr var_2D4
  loc_CC27DE:  = Me.Text
  loc_CC27E3: FLdRfVar var_124
  loc_CC27E6: FLdPr Me
  loc_CC27E9: VCallAd Control_ID_DescBoleTxt
  loc_CC27EC: FStAdFunc var_2D8
  loc_CC27EF: FLdPr var_2D8
  loc_CC27F2:  = Me.Text
  loc_CC27F7: FLdRfVar var_128
  loc_CC27FA: FLdPr Me
  loc_CC27FD: VCallAd Control_ID_TotalTxt
  loc_CC2800: FStAdFunc var_2DC
  loc_CC2803: FLdPr var_2DC
  loc_CC2806:  = Me.Text
  loc_CC280B: FLdRfVar var_12C
  loc_CC280E: FLdPr Me
  loc_CC2811: VCallAd Control_ID_PorcDescTxt
  loc_CC2814: FStAdFunc var_2E0
  loc_CC2817: FLdPr var_2E0
  loc_CC281A:  = Me.Text
  loc_CC281F: ILdRf var_12C
  loc_CC2822: CR8Str
  loc_CC2824: PopFPR8
  loc_CC2825: FLdPr Me
  loc_CC2828: MemLdI2 global_80
  loc_CC282B: ILdRf var_128
  loc_CC282E: CR8Str
  loc_CC2830: PopFPR8
  loc_CC2831: ILdRf var_124
  loc_CC2834: CR8Str
  loc_CC2836: PopFPR8
  loc_CC2837: ILdRf var_120
  loc_CC283A: CR8Str
  loc_CC283C: PopFPR8
  loc_CC283D: ImpAdLdI2 MemVar_D93078
  loc_CC2840: ILdRf var_11C
  loc_CC2843: ILdRf var_118
  loc_CC2846: ILdRf var_114
  loc_CC2849: FLdRfVar var_250
  loc_CC284C: FLdZeroAd var_110
  loc_CC284F: CVarStr var_260
  loc_CC2852: ConcatVar var_270
  loc_CC2856: FLdRfVar var_2B4
  loc_CC2859: ConcatVar var_2C4
  loc_CC285D: CStrVarVal var_2E8
  loc_CC2861: FLdRfVar var_17C
  loc_CC2864: CStrVarTmp
  loc_CC2865: FStStrNoPop var_2E4
  loc_CC2868: FLdRfVar var_108
  loc_CC286B: CStrVarTmp
  loc_CC286C: FStStrNoPop var_134
  loc_CC286F: CI2Str
  loc_CC2871: FLdRfVar var_B4
  loc_CC2874: CStrVarTmp
  loc_CC2875: FStStrNoPop var_130
  loc_CC2878: CI2Str
  loc_CC287A: ILdRf var_10C
  loc_CC287D: ImpAdLdUI1
  loc_CC2881: FLdPr Me
  loc_CC2884: MemLdRfVar from_stack_1.global_52
  loc_CC2887: NewIfNullPr clsctacte
  loc_CC288A: Call clsctacte.CreaServiciosCtacteDeudoresVarios(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CC288F: FFreeStr var_10C = "": var_130 = "": var_134 = "": var_2E4 = "": var_2E8 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_CC28AA: FFreeAd var_A4 = "": var_13C = "": var_140 = "": var_164 = "": var_168 = "": var_16C = "": var_274 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = ""
  loc_CC28C9: FFreeVar var_B4 = "": var_108 = "": var_17C = "": var_18C = "": var_1DC = "": var_22C = "": var_250 = "": var_260 = "": var_284 = "": var_294 = "": var_2A4 = "": var_270 = "": var_2B4 = ""
  loc_CC28E8: Call Proc_330_38_B2922C()
  loc_CC28ED: Call Proc_330_39_B3A61C()
  loc_CC28F2: LitI2_Byte &HFF
  loc_CC28F4: FLdPr Me
  loc_CC28F7: VCallAd Control_ID_ConfirmarCmd
  loc_CC28FA: FStAdFunc var_A4
  loc_CC28FD: FLdPr var_A4
  loc_CC2900: Me.Enabled = from_stack_1b
  loc_CC2905: FFree1Ad var_A4
  loc_CC2908: LitI2_Byte 0
  loc_CC290A: FLdPr Me
  loc_CC290D: Me.MousePointer = from_stack_1
  loc_CC2912: FLdPr Me
  loc_CC2915: VCallAd Control_ID_NumeCtaTxt
  loc_CC2918: FStAdFunc var_A4
  loc_CC291B: FLdPr var_A4
  loc_CC291E: Me.SetFocus
  loc_CC2923: FFree1Ad var_A4
  loc_CC2926: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9BBA48
  'Data Table: 518504
  loc_9BBA34: FLdPr Me
  loc_9BBA37: VCallAd Control_ID_FeveCtctMsk
  loc_9BBA3A: CVarAd
  loc_9BBA3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBA43: FFree1Var var_94 = ""
  loc_9BBA46: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'A7EED8
  'Data Table: 518504
  loc_A7EE54: FLdPr Me
  loc_A7EE57: VCallAd Control_ID_FeveCtctMsk
  loc_A7EE5A: FStAdFunc var_88
  loc_A7EE5D: FLdPr var_88
  loc_A7EE60: LateIdLdVar var_98 DispID_13 -32767
  loc_A7EE67: CBoolVar
  loc_A7EE69: FFree1Ad var_88
  loc_A7EE6C: FFree1Var var_98 = ""
  loc_A7EE6F: BranchF loc_A7EED5
  loc_A7EE72: FLdPr Me
  loc_A7EE75: VCallAd Control_ID_FeveCtctMsk
  loc_A7EE78: FStAdFunc var_88
  loc_A7EE7B: FLdPr var_88
  loc_A7EE7E: LateIdLdVar var_98 DispID_15 0
  loc_A7EE85: CStrVarTmp
  loc_A7EE86: FStStrNoPop var_9C
  loc_A7EE89: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A7EE8E: FStStrNoPop var_A0
  loc_A7EE91: FLdPr Me
  loc_A7EE94: MemStStrCopy
  loc_A7EE98: FFreeStr var_9C = ""
  loc_A7EE9F: FFree1Ad var_88
  loc_A7EEA2: FFree1Var var_98 = ""
  loc_A7EEA5: FLdPr Me
  loc_A7EEA8: MemLdStr global_68
  loc_A7EEAB: LitStr vbNullString
  loc_A7EEAE: NeStr
  loc_A7EEB0: BranchF loc_A7EED5
  loc_A7EEB3: FLdPr Me
  loc_A7EEB6: MemLdStr global_68
  loc_A7EEB9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7EEBE: FLdPr Me
  loc_A7EEC1: VCallAd Control_ID_FeveCtctMsk
  loc_A7EEC4: CVarAd
  loc_A7EEC8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7EECD: FFree1Var var_98 = ""
  loc_A7EED0: LitI2_Byte &HFF
  loc_A7EED2: IStI2 arg_C
  loc_A7EED5: ExitProcHresult
End Function

Private Sub FeveCtctMsk_KeyPress(KeyAscii As Integer) 'A20EC0
  'Data Table: 518504
  loc_A20E78: ILdI2 KeyAscii
  loc_A20E7B: CI4UI1
  loc_A20E7C: LitI4 &H20
  loc_A20E81: EqI4
  loc_A20E82: BranchF loc_A20EBF
  loc_A20E85: LitVar_Missing var_A4
  loc_A20E88: PopAdLdVar
  loc_A20E89: LitVarI4
  loc_A20E91: PopAdLdVar
  loc_A20E92: ImpAdLdRf MemVar_D930A4
  loc_A20E95: NewIfNullPr frmCalendario
  loc_A20E98: frmCalendario.Show from_stack_1, from_stack_2
  loc_A20E9D: ImpAdLdRf MemVar_D93028
  loc_A20EA0: CDargRef
  loc_A20EA4: FLdPr Me
  loc_A20EA7: VCallAd Control_ID_FeveCtctMsk
  loc_A20EAA: FStAdFunc var_A8
  loc_A20EAD: FLdPr var_A8
  loc_A20EB0: LateIdSt
  loc_A20EB5: FFree1Ad var_A8
  loc_A20EB8: LitStr vbNullString
  loc_A20EBB: ImpAdStStrCopy MemVar_D93028
  loc_A20EBF: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'B1EB18
  'Data Table: 518504
  loc_B1E88C: FLdRfVar var_8A
  loc_B1E88F: FLdPr Me
  loc_B1E892: VCallAd Control_ID_OficinaCbo
  loc_B1E895: FStAdFunc var_88
  loc_B1E898: FLdPr var_88
  loc_B1E89B:  = Me.ListIndex
  loc_B1E8A0: FLdI2 var_8A
  loc_B1E8A3: FStI2 var_8C
  loc_B1E8A6: FFree1Ad var_88
  loc_B1E8A9: FLdI2 var_8C
  loc_B1E8AC: LitI2_Byte 0
  loc_B1E8AE: EqI2
  loc_B1E8AF: BranchF loc_B1E8BD
  loc_B1E8B2: LitI2_Byte 1
  loc_B1E8B4: CUI1I2
  loc_B1E8B6: ImpAdStUI1 MemVar_D93038
  loc_B1E8BA: Branch loc_B1E8F6
  loc_B1E8BD: FLdI2 var_8C
  loc_B1E8C0: LitI2_Byte 1
  loc_B1E8C2: EqI2
  loc_B1E8C3: BranchF loc_B1E8D1
  loc_B1E8C6: LitI2_Byte 2
  loc_B1E8C8: CUI1I2
  loc_B1E8CA: ImpAdStUI1 MemVar_D93038
  loc_B1E8CE: Branch loc_B1E8F6
  loc_B1E8D1: FLdI2 var_8C
  loc_B1E8D4: LitI2_Byte 2
  loc_B1E8D6: EqI2
  loc_B1E8D7: BranchF loc_B1E8E5
  loc_B1E8DA: LitI2_Byte 3
  loc_B1E8DC: CUI1I2
  loc_B1E8DE: ImpAdStUI1 MemVar_D93038
  loc_B1E8E2: Branch loc_B1E8F6
  loc_B1E8E5: FLdI2 var_8C
  loc_B1E8E8: LitI2_Byte 3
  loc_B1E8EA: EqI2
  loc_B1E8EB: BranchF loc_B1E8F6
  loc_B1E8EE: LitI2_Byte 4
  loc_B1E8F0: CUI1I2
  loc_B1E8F2: ImpAdStUI1 MemVar_D93038
  loc_B1E8F6: LitVar_Missing var_AC
  loc_B1E8F9: PopAdLdVar
  loc_B1E8FA: LitVarI4
  loc_B1E902: PopAdLdVar
  loc_B1E903: ImpAdLdRf MemVar_D94034
  loc_B1E906: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E909: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B1E90E: FLdRfVar var_B0
  loc_B1E911: FLdRfVar var_88
  loc_B1E914: ImpAdLdRf MemVar_D94034
  loc_B1E917: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E91A: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E91F: FLdPr var_88
  loc_B1E922: from_stack_1 = clsbase.RecordCount
  loc_B1E927: ILdRf var_B0
  loc_B1E92A: LitI4 0
  loc_B1E92F: GtI4
  loc_B1E930: FFree1Ad var_88
  loc_B1E933: BranchF loc_B1EB04
  loc_B1E936: FLdRfVar var_CC
  loc_B1E939: FLdRfVar var_BC
  loc_B1E93C: LitVarStr var_9C, "CodiOfic"
  loc_B1E941: PopAdLdVar
  loc_B1E942: FLdRfVar var_B8
  loc_B1E945: FLdRfVar var_B4
  loc_B1E948: FLdRfVar var_88
  loc_B1E94B: ImpAdLdRf MemVar_D94034
  loc_B1E94E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E951: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E956: FLdPr var_88
  loc_B1E959: from_stack_1v = clsbase.RsFrmGet()
  loc_B1E95E: FLdPr var_B4
  loc_B1E961:  = Me.Fields
  loc_B1E966: FLdPr var_B8
  loc_B1E969: from_stack_2 = Me.Item(from_stack_1)
  loc_B1E96E: FLdPr var_BC
  loc_B1E971:  = Me.Value
  loc_B1E976: FLdRfVar var_CC
  loc_B1E979: FStVar var_DC
  loc_B1E97D: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B1E988: FLdRfVar var_DC
  loc_B1E98B: LitVarI2 var_9C, 1
  loc_B1E990: HardType
  loc_B1E991: EqVarBool
  loc_B1E993: BranchF loc_B1E9CD
  loc_B1E996: FLdRfVar var_E0
  loc_B1E999: LitI2_Byte 0
  loc_B1E99B: FLdPr Me
  loc_B1E99E: VCallAd Control_ID_OficinaCbo
  loc_B1E9A1: FStAdFunc var_88
  loc_B1E9A4: FLdPr var_88
  loc_B1E9A7: from_stack_2 = Me.List(from_stack_1)
  loc_B1E9AC: ILdRf var_E0
  loc_B1E9AF: FLdPr Me
  loc_B1E9B2: VCallAd Control_ID_OficinaCbo
  loc_B1E9B5: FStAdFunc var_B4
  loc_B1E9B8: FLdPr var_B4
  loc_B1E9BB: Me.Text = from_stack_1
  loc_B1E9C0: FFree1Str var_E0
  loc_B1E9C3: FFreeAd var_88 = ""
  loc_B1E9CA: Branch loc_B1EA99
  loc_B1E9CD: FLdRfVar var_DC
  loc_B1E9D0: LitVarI2 var_9C, 2
  loc_B1E9D5: HardType
  loc_B1E9D6: EqVarBool
  loc_B1E9D8: BranchF loc_B1EA12
  loc_B1E9DB: FLdRfVar var_E0
  loc_B1E9DE: LitI2_Byte 1
  loc_B1E9E0: FLdPr Me
  loc_B1E9E3: VCallAd Control_ID_OficinaCbo
  loc_B1E9E6: FStAdFunc var_88
  loc_B1E9E9: FLdPr var_88
  loc_B1E9EC: from_stack_2 = Me.List(from_stack_1)
  loc_B1E9F1: ILdRf var_E0
  loc_B1E9F4: FLdPr Me
  loc_B1E9F7: VCallAd Control_ID_OficinaCbo
  loc_B1E9FA: FStAdFunc var_B4
  loc_B1E9FD: FLdPr var_B4
  loc_B1EA00: Me.Text = from_stack_1
  loc_B1EA05: FFree1Str var_E0
  loc_B1EA08: FFreeAd var_88 = ""
  loc_B1EA0F: Branch loc_B1EA99
  loc_B1EA12: FLdRfVar var_DC
  loc_B1EA15: LitVarI2 var_9C, 3
  loc_B1EA1A: HardType
  loc_B1EA1B: EqVarBool
  loc_B1EA1D: BranchF loc_B1EA57
  loc_B1EA20: FLdRfVar var_E0
  loc_B1EA23: LitI2_Byte 2
  loc_B1EA25: FLdPr Me
  loc_B1EA28: VCallAd Control_ID_OficinaCbo
  loc_B1EA2B: FStAdFunc var_88
  loc_B1EA2E: FLdPr var_88
  loc_B1EA31: from_stack_2 = Me.List(from_stack_1)
  loc_B1EA36: ILdRf var_E0
  loc_B1EA39: FLdPr Me
  loc_B1EA3C: VCallAd Control_ID_OficinaCbo
  loc_B1EA3F: FStAdFunc var_B4
  loc_B1EA42: FLdPr var_B4
  loc_B1EA45: Me.Text = from_stack_1
  loc_B1EA4A: FFree1Str var_E0
  loc_B1EA4D: FFreeAd var_88 = ""
  loc_B1EA54: Branch loc_B1EA99
  loc_B1EA57: FLdRfVar var_DC
  loc_B1EA5A: LitVarI2 var_9C, 4
  loc_B1EA5F: HardType
  loc_B1EA60: EqVarBool
  loc_B1EA62: BranchF loc_B1EA99
  loc_B1EA65: FLdRfVar var_E0
  loc_B1EA68: LitI2_Byte 3
  loc_B1EA6A: FLdPr Me
  loc_B1EA6D: VCallAd Control_ID_OficinaCbo
  loc_B1EA70: FStAdFunc var_88
  loc_B1EA73: FLdPr var_88
  loc_B1EA76: from_stack_2 = Me.List(from_stack_1)
  loc_B1EA7B: ILdRf var_E0
  loc_B1EA7E: FLdPr Me
  loc_B1EA81: VCallAd Control_ID_OficinaCbo
  loc_B1EA84: FStAdFunc var_B4
  loc_B1EA87: FLdPr var_B4
  loc_B1EA8A: Me.Text = from_stack_1
  loc_B1EA8F: FFree1Str var_E0
  loc_B1EA92: FFreeAd var_88 = ""
  loc_B1EA99: FLdRfVar var_CC
  loc_B1EA9C: FLdRfVar var_BC
  loc_B1EA9F: LitVarStr var_9C, "CuenCtct"
  loc_B1EAA4: PopAdLdVar
  loc_B1EAA5: FLdRfVar var_B8
  loc_B1EAA8: FLdRfVar var_B4
  loc_B1EAAB: FLdRfVar var_88
  loc_B1EAAE: ImpAdLdRf MemVar_D94034
  loc_B1EAB1: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EAB4: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1EAB9: FLdPr var_88
  loc_B1EABC: from_stack_1v = clsbase.RsFrmGet()
  loc_B1EAC1: FLdPr var_B4
  loc_B1EAC4:  = Me.Fields
  loc_B1EAC9: FLdPr var_B8
  loc_B1EACC: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EAD1: FLdPr var_BC
  loc_B1EAD4:  = Me.Value
  loc_B1EAD9: FLdRfVar var_CC
  loc_B1EADC: CStrVarTmp
  loc_B1EADD: FStStrNoPop var_E0
  loc_B1EAE0: FLdPr Me
  loc_B1EAE3: VCallAd Control_ID_NumeCtaTxt
  loc_B1EAE6: FStAdFunc var_E4
  loc_B1EAE9: FLdPr var_E4
  loc_B1EAEC: Me.Text = from_stack_1
  loc_B1EAF1: FFree1Str var_E0
  loc_B1EAF4: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1EB01: FFree1Var var_CC = ""
  loc_B1EB04: FLdPr Me
  loc_B1EB07: VCallAd Control_ID_NumeCtaTxt
  loc_B1EB0A: CVarAd
  loc_B1EB0E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1EB13: FFree1Var var_CC = ""
  loc_B1EB16: ExitProcHresult
End Sub

Private Sub Form_Load() 'C1CBD4
  'Data Table: 518504
  loc_C1C1D4: LitVar_Missing var_94
  loc_C1C1D7: PopAdLdVar
  loc_C1C1D8: LitStr "Inmueble"
  loc_C1C1DB: FLdPr Me
  loc_C1C1DE: VCallAd Control_ID_OficinaCbo
  loc_C1C1E1: FStAdFunc var_98
  loc_C1C1E4: FLdPr var_98
  loc_C1C1E7: Me.AddItem from_stack_1, from_stack_2
  loc_C1C1EC: FFree1Ad var_98
  loc_C1C1EF: LitVar_Missing var_94
  loc_C1C1F2: PopAdLdVar
  loc_C1C1F3: LitStr "Comercio"
  loc_C1C1F6: FLdPr Me
  loc_C1C1F9: VCallAd Control_ID_OficinaCbo
  loc_C1C1FC: FStAdFunc var_98
  loc_C1C1FF: FLdPr var_98
  loc_C1C202: Me.AddItem from_stack_1, from_stack_2
  loc_C1C207: FFree1Ad var_98
  loc_C1C20A: LitVar_Missing var_94
  loc_C1C20D: PopAdLdVar
  loc_C1C20E: LitStr "Deudores Varios"
  loc_C1C211: FLdPr Me
  loc_C1C214: VCallAd Control_ID_OficinaCbo
  loc_C1C217: FStAdFunc var_98
  loc_C1C21A: FLdPr var_98
  loc_C1C21D: Me.AddItem from_stack_1, from_stack_2
  loc_C1C222: FFree1Ad var_98
  loc_C1C225: LitVar_Missing var_94
  loc_C1C228: PopAdLdVar
  loc_C1C229: LitStr "Cementerio"
  loc_C1C22C: FLdPr Me
  loc_C1C22F: VCallAd Control_ID_OficinaCbo
  loc_C1C232: FStAdFunc var_98
  loc_C1C235: FLdPr var_98
  loc_C1C238: Me.AddItem from_stack_1, from_stack_2
  loc_C1C23D: FFree1Ad var_98
  loc_C1C240: LitI2_Byte 2
  loc_C1C242: FLdPr Me
  loc_C1C245: VCallAd Control_ID_OficinaCbo
  loc_C1C248: FStAdFunc var_98
  loc_C1C24B: FLdPr var_98
  loc_C1C24E: Me.ListIndex = from_stack_1
  loc_C1C253: FFree1Ad var_98
  loc_C1C256: LitStr "0"
  loc_C1C259: FLdPr Me
  loc_C1C25C: VCallAd Control_ID_NumeCtaTxt
  loc_C1C25F: FStAdFunc var_98
  loc_C1C262: FLdPr var_98
  loc_C1C265: Me.Text = from_stack_1
  loc_C1C26A: FFree1Ad var_98
  loc_C1C26D: LitI2_Byte 0
  loc_C1C26F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1C274: CStrDate
  loc_C1C276: CVarStr var_A8
  loc_C1C279: PopAdLdVar
  loc_C1C27A: FLdPr Me
  loc_C1C27D: VCallAd Control_ID_FechVencMsk
  loc_C1C280: FStAdFunc var_98
  loc_C1C283: FLdPr var_98
  loc_C1C286: LateIdSt
  loc_C1C28B: FFree1Ad var_98
  loc_C1C28E: FFree1Var var_A8 = ""
  loc_C1C291: LitI2_Byte 0
  loc_C1C293: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1C298: CStrDate
  loc_C1C29A: CVarStr var_A8
  loc_C1C29D: PopAdLdVar
  loc_C1C29E: FLdPr Me
  loc_C1C2A1: VCallAd Control_ID_FeveCtctMsk
  loc_C1C2A4: FStAdFunc var_98
  loc_C1C2A7: FLdPr var_98
  loc_C1C2AA: LateIdSt
  loc_C1C2AF: FFree1Ad var_98
  loc_C1C2B2: FFree1Var var_A8 = ""
  loc_C1C2B5: LitI2_Byte 0
  loc_C1C2B7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1C2BC: CVarDate var_A8
  loc_C1C2C0: FLdRfVar var_B8
  loc_C1C2C3: ImpAdCallFPR4  = Year()
  loc_C1C2C8: FLdRfVar var_B8
  loc_C1C2CB: CStrVarTmp
  loc_C1C2CC: CVarStr var_C8
  loc_C1C2CF: PopAdLdVar
  loc_C1C2D0: FLdPr Me
  loc_C1C2D3: VCallAd Control_ID_PeriCtctMsk
  loc_C1C2D6: FStAdFunc var_98
  loc_C1C2D9: FLdPr var_98
  loc_C1C2DC: LateIdSt
  loc_C1C2E1: FFree1Ad var_98
  loc_C1C2E4: FFreeVar var_A8 = "": var_B8 = ""
  loc_C1C2ED: LitI2_Byte 0
  loc_C1C2EF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1C2F4: CVarDate var_A8
  loc_C1C2F8: FLdRfVar var_B8
  loc_C1C2FB: ImpAdCallFPR4  = Month()
  loc_C1C300: FLdRfVar var_B8
  loc_C1C303: CStrVarTmp
  loc_C1C304: CVarStr var_C8
  loc_C1C307: PopAdLdVar
  loc_C1C308: FLdPr Me
  loc_C1C30B: VCallAd Control_ID_BimeCtctMsk
  loc_C1C30E: FStAdFunc var_98
  loc_C1C311: FLdPr var_98
  loc_C1C314: LateIdSt
  loc_C1C319: FFree1Ad var_98
  loc_C1C31C: FFreeVar var_A8 = "": var_B8 = ""
  loc_C1C325: LitVarStr var_94, "000000"
  loc_C1C32A: PopAdLdVar
  loc_C1C32B: FLdPr Me
  loc_C1C32E: VCallAd Control_ID_ExpeCtct1Msk
  loc_C1C331: FStAdFunc var_98
  loc_C1C334: FLdPr var_98
  loc_C1C337: LateIdSt
  loc_C1C33C: FFree1Ad var_98
  loc_C1C33F: LitStr vbNullString
  loc_C1C342: FLdPr Me
  loc_C1C345: VCallAd Control_ID_ExpeCtctTxt
  loc_C1C348: FStAdFunc var_98
  loc_C1C34B: FLdPr var_98
  loc_C1C34E: Me.Text = from_stack_1
  loc_C1C353: FFree1Ad var_98
  loc_C1C356: LitVarStr var_94, "00"
  loc_C1C35B: PopAdLdVar
  loc_C1C35C: FLdPr Me
  loc_C1C35F: VCallAd Control_ID_ExpeCtct2Msk
  loc_C1C362: FStAdFunc var_98
  loc_C1C365: FLdPr var_98
  loc_C1C368: LateIdSt
  loc_C1C36D: FFree1Ad var_98
  loc_C1C370: LitI2_Byte 0
  loc_C1C372: FLdPr Me
  loc_C1C375: VCallAd Control_ID_RedondeoChk
  loc_C1C378: FStAdFunc var_98
  loc_C1C37B: FLdPr var_98
  loc_C1C37E: Me.Visible = from_stack_1b
  loc_C1C383: FFree1Ad var_98
  loc_C1C386: FLdPr Me
  loc_C1C389: VCallAd Control_ID_ctacteFlex
  loc_C1C38C: FStAdFunc var_DC
  loc_C1C38F: LitVarI4
  loc_C1C397: PopAdLdVar
  loc_C1C398: LitVarI4
  loc_C1C3A0: PopAdLdVar
  loc_C1C3A1: FLdPr var_DC
  loc_C1C3A4: LateIdCallSt
  loc_C1C3AC: LitVarI4
  loc_C1C3B4: PopAdLdVar
  loc_C1C3B5: LitVarI4
  loc_C1C3BD: PopAdLdVar
  loc_C1C3BE: FLdPr var_DC
  loc_C1C3C1: LateIdCallSt
  loc_C1C3C9: LitVarI4
  loc_C1C3D1: PopAdLdVar
  loc_C1C3D2: LitVarI4
  loc_C1C3DA: PopAdLdVar
  loc_C1C3DB: FLdPr var_DC
  loc_C1C3DE: LateIdCallSt
  loc_C1C3E6: LitVarI4
  loc_C1C3EE: PopAdLdVar
  loc_C1C3EF: LitVarI4
  loc_C1C3F7: PopAdLdVar
  loc_C1C3F8: FLdPr var_DC
  loc_C1C3FB: LateIdCallSt
  loc_C1C403: LitVarI4
  loc_C1C40B: PopAdLdVar
  loc_C1C40C: LitVarI4
  loc_C1C414: PopAdLdVar
  loc_C1C415: FLdPr var_DC
  loc_C1C418: LateIdCallSt
  loc_C1C420: LitVarI4
  loc_C1C428: PopAdLdVar
  loc_C1C429: LitVarI4
  loc_C1C431: PopAdLdVar
  loc_C1C432: FLdPr var_DC
  loc_C1C435: LateIdCallSt
  loc_C1C43D: LitVarI4
  loc_C1C445: PopAdLdVar
  loc_C1C446: LitVarI4
  loc_C1C44E: PopAdLdVar
  loc_C1C44F: FLdPr var_DC
  loc_C1C452: LateIdCallSt
  loc_C1C45A: LitVarI4
  loc_C1C462: PopAdLdVar
  loc_C1C463: LitVarI4
  loc_C1C46B: PopAdLdVar
  loc_C1C46C: FLdPr var_DC
  loc_C1C46F: LateIdCallSt
  loc_C1C477: LitVarI4
  loc_C1C47F: PopAdLdVar
  loc_C1C480: LitVarI4
  loc_C1C488: PopAdLdVar
  loc_C1C489: FLdPr var_DC
  loc_C1C48C: LateIdCallSt
  loc_C1C494: LitVarI4
  loc_C1C49C: PopAdLdVar
  loc_C1C49D: LitVarI4
  loc_C1C4A5: PopAdLdVar
  loc_C1C4A6: FLdPr var_DC
  loc_C1C4A9: LateIdCallSt
  loc_C1C4B1: LitVarI4
  loc_C1C4B9: PopAdLdVar
  loc_C1C4BA: LitVarI4
  loc_C1C4C2: PopAdLdVar
  loc_C1C4C3: FLdPr var_DC
  loc_C1C4C6: LateIdCallSt
  loc_C1C4CE: LitVarI4
  loc_C1C4D6: PopAdLdVar
  loc_C1C4D7: LitVarI4
  loc_C1C4DF: PopAdLdVar
  loc_C1C4E0: FLdPr var_DC
  loc_C1C4E3: LateIdCallSt
  loc_C1C4EB: LitVarI4
  loc_C1C4F3: PopAdLdVar
  loc_C1C4F4: LitVarI4
  loc_C1C4FC: PopAdLdVar
  loc_C1C4FD: FLdPr var_DC
  loc_C1C500: LateIdCallSt
  loc_C1C508: LitVarI4
  loc_C1C510: PopAdLdVar
  loc_C1C511: LitVarI4
  loc_C1C519: PopAdLdVar
  loc_C1C51A: FLdPr var_DC
  loc_C1C51D: LateIdCallSt
  loc_C1C525: LitVarI4
  loc_C1C52D: PopAdLdVar
  loc_C1C52E: LitVarI4
  loc_C1C536: PopAdLdVar
  loc_C1C537: FLdPr var_DC
  loc_C1C53A: LateIdCallSt
  loc_C1C542: LitVarI4
  loc_C1C54A: PopAdLdVar
  loc_C1C54B: LitVarI4
  loc_C1C553: PopAdLdVar
  loc_C1C554: FLdPr var_DC
  loc_C1C557: LateIdCallSt
  loc_C1C55F: LitVarI4
  loc_C1C567: PopAdLdVar
  loc_C1C568: LitVarI4
  loc_C1C570: PopAdLdVar
  loc_C1C571: FLdPr var_DC
  loc_C1C574: LateIdCallSt
  loc_C1C57C: LitVarI4
  loc_C1C584: PopAdLdVar
  loc_C1C585: LitVarI4
  loc_C1C58D: PopAdLdVar
  loc_C1C58E: LitVarStr var_10C, "Of"
  loc_C1C593: PopAdLdVar
  loc_C1C594: FLdPr var_DC
  loc_C1C597: LateIdCallSt
  loc_C1C59F: LitVarI4
  loc_C1C5A7: PopAdLdVar
  loc_C1C5A8: LitVarI4
  loc_C1C5B0: PopAdLdVar
  loc_C1C5B1: LitVarStr var_10C, "Cuenta"
  loc_C1C5B6: PopAdLdVar
  loc_C1C5B7: FLdPr var_DC
  loc_C1C5BA: LateIdCallSt
  loc_C1C5C2: LitVarI4
  loc_C1C5CA: PopAdLdVar
  loc_C1C5CB: LitVarI4
  loc_C1C5D3: PopAdLdVar
  loc_C1C5D4: LitVarStr var_10C, "Periodo"
  loc_C1C5D9: PopAdLdVar
  loc_C1C5DA: FLdPr var_DC
  loc_C1C5DD: LateIdCallSt
  loc_C1C5E5: LitVarI4
  loc_C1C5ED: PopAdLdVar
  loc_C1C5EE: LitVarI4
  loc_C1C5F6: PopAdLdVar
  loc_C1C5F7: LitVarStr var_10C, "Boleto"
  loc_C1C5FC: PopAdLdVar
  loc_C1C5FD: FLdPr var_DC
  loc_C1C600: LateIdCallSt
  loc_C1C608: LitVarI4
  loc_C1C610: PopAdLdVar
  loc_C1C611: LitVarI4
  loc_C1C619: PopAdLdVar
  loc_C1C61A: LitVarStr var_10C, "Emision"
  loc_C1C61F: PopAdLdVar
  loc_C1C620: FLdPr var_DC
  loc_C1C623: LateIdCallSt
  loc_C1C62B: LitVarI4
  loc_C1C633: PopAdLdVar
  loc_C1C634: LitVarI4
  loc_C1C63C: PopAdLdVar
  loc_C1C63D: LitVarStr var_10C, "Vencimiento"
  loc_C1C642: PopAdLdVar
  loc_C1C643: FLdPr var_DC
  loc_C1C646: LateIdCallSt
  loc_C1C64E: LitVarI4
  loc_C1C656: PopAdLdVar
  loc_C1C657: LitVarI4
  loc_C1C65F: PopAdLdVar
  loc_C1C660: LitVarStr var_10C, "Concepto"
  loc_C1C665: PopAdLdVar
  loc_C1C666: FLdPr var_DC
  loc_C1C669: LateIdCallSt
  loc_C1C671: LitVarI4
  loc_C1C679: PopAdLdVar
  loc_C1C67A: LitVarI4
  loc_C1C682: PopAdLdVar
  loc_C1C683: LitVarStr var_10C, "Facilidad"
  loc_C1C688: PopAdLdVar
  loc_C1C689: FLdPr var_DC
  loc_C1C68C: LateIdCallSt
  loc_C1C694: LitVarI4
  loc_C1C69C: PopAdLdVar
  loc_C1C69D: LitVarI4
  loc_C1C6A5: PopAdLdVar
  loc_C1C6A6: LitVarStr var_10C, "Apremio"
  loc_C1C6AB: PopAdLdVar
  loc_C1C6AC: FLdPr var_DC
  loc_C1C6AF: LateIdCallSt
  loc_C1C6B7: LitVarI4
  loc_C1C6BF: PopAdLdVar
  loc_C1C6C0: LitVarI4
  loc_C1C6C8: PopAdLdVar
  loc_C1C6C9: LitVarStr var_10C, "Exp/Comp"
  loc_C1C6CE: PopAdLdVar
  loc_C1C6CF: FLdPr var_DC
  loc_C1C6D2: LateIdCallSt
  loc_C1C6DA: LitVarI4
  loc_C1C6E2: PopAdLdVar
  loc_C1C6E3: LitVarI4
  loc_C1C6EB: PopAdLdVar
  loc_C1C6EC: LitVarStr var_10C, "Tipo Mov"
  loc_C1C6F1: PopAdLdVar
  loc_C1C6F2: FLdPr var_DC
  loc_C1C6F5: LateIdCallSt
  loc_C1C6FD: LitVarI4
  loc_C1C705: PopAdLdVar
  loc_C1C706: LitVarI4
  loc_C1C70E: PopAdLdVar
  loc_C1C70F: LitVarStr var_10C, "Debito"
  loc_C1C714: PopAdLdVar
  loc_C1C715: FLdPr var_DC
  loc_C1C718: LateIdCallSt
  loc_C1C720: LitVarI4
  loc_C1C728: PopAdLdVar
  loc_C1C729: LitVarI4
  loc_C1C731: PopAdLdVar
  loc_C1C732: LitVarStr var_10C, "Recargo"
  loc_C1C737: PopAdLdVar
  loc_C1C738: FLdPr var_DC
  loc_C1C73B: LateIdCallSt
  loc_C1C743: LitVarI4
  loc_C1C74B: PopAdLdVar
  loc_C1C74C: LitVarI4
  loc_C1C754: PopAdLdVar
  loc_C1C755: LitVarStr var_10C, "Saldo"
  loc_C1C75A: PopAdLdVar
  loc_C1C75B: FLdPr var_DC
  loc_C1C75E: LateIdCallSt
  loc_C1C766: LitVarI4
  loc_C1C76E: PopAdLdVar
  loc_C1C76F: LitVarI4
  loc_C1C777: PopAdLdVar
  loc_C1C778: LitVarStr var_10C, "Sel"
  loc_C1C77D: PopAdLdVar
  loc_C1C77E: FLdPr var_DC
  loc_C1C781: LateIdCallSt
  loc_C1C789: LitVarI4
  loc_C1C791: PopAdLdVar
  loc_C1C792: LitVarI4
  loc_C1C79A: PopAdLdVar
  loc_C1C79B: LitVarStr var_10C, "Numero"
  loc_C1C7A0: PopAdLdVar
  loc_C1C7A1: FLdPr var_DC
  loc_C1C7A4: LateIdCallSt
  loc_C1C7AC: LitVarI4
  loc_C1C7B4: PopAdLdVar
  loc_C1C7B5: LitVarI4
  loc_C1C7BD: PopAdLdVar
  loc_C1C7BE: LitVarStr var_10C, "Mov"
  loc_C1C7C3: PopAdLdVar
  loc_C1C7C4: FLdPr var_DC
  loc_C1C7C7: LateIdCallSt
  loc_C1C7CF: LitNothing
  loc_C1C7D1: FStAd var_DC 
  loc_C1C7D5: FLdPr Me
  loc_C1C7D8: VCallAd Control_ID_ServDevaFlex
  loc_C1C7DB: FStAdFunc var_120
  loc_C1C7DE: LitVarI4
  loc_C1C7E6: PopAdLdVar
  loc_C1C7E7: LitVarI4
  loc_C1C7EF: PopAdLdVar
  loc_C1C7F0: FLdPr var_120
  loc_C1C7F3: LateIdCallSt
  loc_C1C7FB: LitVarI4
  loc_C1C803: PopAdLdVar
  loc_C1C804: LitVarI4
  loc_C1C80C: PopAdLdVar
  loc_C1C80D: FLdPr var_120
  loc_C1C810: LateIdCallSt
  loc_C1C818: LitVarI4
  loc_C1C820: PopAdLdVar
  loc_C1C821: LitVarI4
  loc_C1C829: PopAdLdVar
  loc_C1C82A: FLdPr var_120
  loc_C1C82D: LateIdCallSt
  loc_C1C835: LitVarI4
  loc_C1C83D: PopAdLdVar
  loc_C1C83E: LitVarI4
  loc_C1C846: PopAdLdVar
  loc_C1C847: FLdPr var_120
  loc_C1C84A: LateIdCallSt
  loc_C1C852: LitVarI4
  loc_C1C85A: PopAdLdVar
  loc_C1C85B: LitVarI4
  loc_C1C863: PopAdLdVar
  loc_C1C864: FLdPr var_120
  loc_C1C867: LateIdCallSt
  loc_C1C86F: LitVarI4
  loc_C1C877: PopAdLdVar
  loc_C1C878: LitVarI4
  loc_C1C880: PopAdLdVar
  loc_C1C881: FLdPr var_120
  loc_C1C884: LateIdCallSt
  loc_C1C88C: LitVarI4
  loc_C1C894: PopAdLdVar
  loc_C1C895: LitVarI4
  loc_C1C89D: PopAdLdVar
  loc_C1C89E: FLdPr var_120
  loc_C1C8A1: LateIdCallSt
  loc_C1C8A9: LitVarI4
  loc_C1C8B1: PopAdLdVar
  loc_C1C8B2: LitVarI4
  loc_C1C8BA: PopAdLdVar
  loc_C1C8BB: FLdPr var_120
  loc_C1C8BE: LateIdCallSt
  loc_C1C8C6: LitVarI4
  loc_C1C8CE: PopAdLdVar
  loc_C1C8CF: LitVarI4
  loc_C1C8D7: PopAdLdVar
  loc_C1C8D8: FLdPr var_120
  loc_C1C8DB: LateIdCallSt
  loc_C1C8E3: LitVarI4
  loc_C1C8EB: PopAdLdVar
  loc_C1C8EC: LitVarI4
  loc_C1C8F4: PopAdLdVar
  loc_C1C8F5: LitVarStr var_10C, "Cant."
  loc_C1C8FA: PopAdLdVar
  loc_C1C8FB: FLdPr var_120
  loc_C1C8FE: LateIdCallSt
  loc_C1C906: LitVarI4
  loc_C1C90E: PopAdLdVar
  loc_C1C90F: LitVarI4
  loc_C1C917: PopAdLdVar
  loc_C1C918: LitVarStr var_10C, "Cod."
  loc_C1C91D: PopAdLdVar
  loc_C1C91E: FLdPr var_120
  loc_C1C921: LateIdCallSt
  loc_C1C929: LitVarI4
  loc_C1C931: PopAdLdVar
  loc_C1C932: LitVarI4
  loc_C1C93A: PopAdLdVar
  loc_C1C93B: LitVarStr var_10C, "Detalle o Servicio"
  loc_C1C940: PopAdLdVar
  loc_C1C941: FLdPr var_120
  loc_C1C944: LateIdCallSt
  loc_C1C94C: LitVarI4
  loc_C1C954: PopAdLdVar
  loc_C1C955: LitVarI4
  loc_C1C95D: PopAdLdVar
  loc_C1C95E: LitVarStr var_10C, "Importe"
  loc_C1C963: PopAdLdVar
  loc_C1C964: FLdPr var_120
  loc_C1C967: LateIdCallSt
  loc_C1C96F: LitVarI4
  loc_C1C977: PopAdLdVar
  loc_C1C978: LitVarI4
  loc_C1C980: PopAdLdVar
  loc_C1C981: LitVarStr var_10C, "Total"
  loc_C1C986: PopAdLdVar
  loc_C1C987: FLdPr var_120
  loc_C1C98A: LateIdCallSt
  loc_C1C992: LitVarI4
  loc_C1C99A: PopAdLdVar
  loc_C1C99B: LitVarI4
  loc_C1C9A3: PopAdLdVar
  loc_C1C9A4: LitVarStr var_10C, "Periodo"
  loc_C1C9A9: PopAdLdVar
  loc_C1C9AA: FLdPr var_120
  loc_C1C9AD: LateIdCallSt
  loc_C1C9B5: LitVarI4
  loc_C1C9BD: PopAdLdVar
  loc_C1C9BE: LitVarI4
  loc_C1C9C6: PopAdLdVar
  loc_C1C9C7: LitVarStr var_10C, "Concepto"
  loc_C1C9CC: PopAdLdVar
  loc_C1C9CD: FLdPr var_120
  loc_C1C9D0: LateIdCallSt
  loc_C1C9D8: LitVarI4
  loc_C1C9E0: PopAdLdVar
  loc_C1C9E1: LitVarI4
  loc_C1C9E9: PopAdLdVar
  loc_C1C9EA: LitVarStr var_10C, "Fijo"
  loc_C1C9EF: PopAdLdVar
  loc_C1C9F0: FLdPr var_120
  loc_C1C9F3: LateIdCallSt
  loc_C1C9FB: LitVarI4
  loc_C1CA03: PopAdLdVar
  loc_C1CA04: LitVarI4
  loc_C1CA0C: PopAdLdVar
  loc_C1CA0D: LitVarStr var_10C, "TiafConc"
  loc_C1CA12: PopAdLdVar
  loc_C1CA13: FLdPr var_120
  loc_C1CA16: LateIdCallSt
  loc_C1CA1E: LitNothing
  loc_C1CA20: FStAd var_120 
  loc_C1CA24: LitVarStr var_94, vbNullString
  loc_C1CA29: LitI4 9
  loc_C1CA2E: FLdRfVar var_A8
  loc_C1CA31: ImpAdCallFPR4  = Chr()
  loc_C1CA36: FLdRfVar var_A8
  loc_C1CA39: ConcatVar var_B8
  loc_C1CA3D: LitVarStr var_D8, vbNullString
  loc_C1CA42: ConcatVar var_C8
  loc_C1CA46: LitI4 9
  loc_C1CA4B: FLdRfVar var_130
  loc_C1CA4E: ImpAdCallFPR4  = Chr()
  loc_C1CA53: FLdRfVar var_130
  loc_C1CA56: ConcatVar var_140
  loc_C1CA5A: LitVarStr var_EC, vbNullString
  loc_C1CA5F: ConcatVar var_150
  loc_C1CA63: LitI4 9
  loc_C1CA68: FLdRfVar var_160
  loc_C1CA6B: ImpAdCallFPR4  = Chr()
  loc_C1CA70: FLdRfVar var_160
  loc_C1CA73: ConcatVar var_170
  loc_C1CA77: LitVarStr var_FC, vbNullString
  loc_C1CA7C: ConcatVar var_180
  loc_C1CA80: LitI4 9
  loc_C1CA85: FLdRfVar var_190
  loc_C1CA88: ImpAdCallFPR4  = Chr()
  loc_C1CA8D: FLdRfVar var_190
  loc_C1CA90: ConcatVar var_1A0
  loc_C1CA94: LitVarStr var_10C, vbNullString
  loc_C1CA99: ConcatVar var_1B0
  loc_C1CA9D: LitI4 9
  loc_C1CAA2: FLdRfVar var_1C0
  loc_C1CAA5: ImpAdCallFPR4  = Chr()
  loc_C1CAAA: FLdRfVar var_1C0
  loc_C1CAAD: ConcatVar var_1D0
  loc_C1CAB1: LitVarStr var_11C, vbNullString
  loc_C1CAB6: ConcatVar var_1E0
  loc_C1CABA: LitI4 9
  loc_C1CABF: FLdRfVar var_1F0
  loc_C1CAC2: ImpAdCallFPR4  = Chr()
  loc_C1CAC7: FLdRfVar var_1F0
  loc_C1CACA: ConcatVar var_200
  loc_C1CACE: LitVarStr var_210, vbNullString
  loc_C1CAD3: ConcatVar var_220
  loc_C1CAD7: LitI4 9
  loc_C1CADC: FLdRfVar var_230
  loc_C1CADF: ImpAdCallFPR4  = Chr()
  loc_C1CAE4: FLdRfVar var_230
  loc_C1CAE7: ConcatVar var_240
  loc_C1CAEB: LitVarStr var_250, "0"
  loc_C1CAF0: ConcatVar var_260
  loc_C1CAF4: LitI4 9
  loc_C1CAF9: FLdRfVar var_270
  loc_C1CAFC: ImpAdCallFPR4  = Chr()
  loc_C1CB01: FLdRfVar var_270
  loc_C1CB04: ConcatVar var_280
  loc_C1CB08: LitVarStr var_290, "0"
  loc_C1CB0D: ConcatVar var_2A0
  loc_C1CB11: CStrVarTmp
  loc_C1CB12: FStStrNoPop var_2A4
  loc_C1CB15: FLdPr Me
  loc_C1CB18: MemStStrCopy
  loc_C1CB1C: FFree1Str var_2A4
  loc_C1CB1F: FFreeVar var_A8 = "": var_B8 = "": var_C8 = "": var_130 = "": var_140 = "": var_150 = "": var_160 = "": var_170 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_220 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_280 = ""
  loc_C1CB52: FLdPr Me
  loc_C1CB55: MemLdRfVar from_stack_1.global_76
  loc_C1CB58: CDargRef
  loc_C1CB5C: FLdPr Me
  loc_C1CB5F: VCallAd Control_ID_ServDevaFlex
  loc_C1CB62: FStAdFunc var_98
  loc_C1CB65: FLdPr var_98
  loc_C1CB68: LateIdCall
  loc_C1CB70: FFree1Ad var_98
  loc_C1CB73: LitI2_Byte 0
  loc_C1CB75: FLdPr Me
  loc_C1CB78: VCallAd Control_ID_DescuentoChk
  loc_C1CB7B: FStAdFunc var_98
  loc_C1CB7E: FLdPr var_98
  loc_C1CB81: Me.Visible = from_stack_1b
  loc_C1CB86: FFree1Ad var_98
  loc_C1CB89: Call Proc_330_38_B2922C()
  loc_C1CB8E: LitI4 0
  loc_C1CB93: LitI4 1
  loc_C1CB98: FLdRfVar var_2A8
  loc_C1CB9B: Redim
  loc_C1CBA5: FLdPr Me
  loc_C1CBA8: VCallAd Control_ID_OficinaCbo
  loc_C1CBAB: CVarAd
  loc_C1CBAF: ParmAry1St
  loc_C1CBB5: FLdPr Me
  loc_C1CBB8: VCallAd Control_ID_ConfirmarCmd
  loc_C1CBBB: CVarAd
  loc_C1CBBF: ParmAry1St
  loc_C1CBC5: FLdRfVar var_2A8
  loc_C1CBC8: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C1CBCD: FLdRfVar var_2A8
  loc_C1CBD0: Erase
  loc_C1CBD1: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B92B4
  'Data Table: 518504
  loc_9B92A0: ILdI2 KeyCode
  loc_9B92A3: CI4UI1
  loc_9B92A4: LitI4 &H78
  loc_9B92A9: EqI4
  loc_9B92AA: BranchF loc_9B92B2
  loc_9B92AD: Call SalirCmd_Click()
  loc_9B92B2: ExitProcHresult
End Sub

Private Function Proc_330_37_B18BA8() 'B18BA8
  'Data Table: 518504
  loc_B1891C: FLdPr Me
  loc_B1891F: VCallAd Control_ID_ctacteFlex
  loc_B18922: FStAdFunc var_88
  loc_B18925: FLdPr var_88
  loc_B18928: LateIdCall
  loc_B18930: LitVarI4
  loc_B18938: PopAdLdVar
  loc_B18939: FLdPr var_88
  loc_B1893C: LateIdSt
  loc_B18941: LitVarI4
  loc_B18949: PopAdLdVar
  loc_B1894A: LitVarI4
  loc_B18952: PopAdLdVar
  loc_B18953: LitVarStr var_D8, "Of"
  loc_B18958: PopAdLdVar
  loc_B18959: FLdPr var_88
  loc_B1895C: LateIdCallSt
  loc_B18964: LitVarI4
  loc_B1896C: PopAdLdVar
  loc_B1896D: LitVarI4
  loc_B18975: PopAdLdVar
  loc_B18976: LitVarStr var_D8, "Cuenta"
  loc_B1897B: PopAdLdVar
  loc_B1897C: FLdPr var_88
  loc_B1897F: LateIdCallSt
  loc_B18987: LitVarI4
  loc_B1898F: PopAdLdVar
  loc_B18990: LitVarI4
  loc_B18998: PopAdLdVar
  loc_B18999: LitVarStr var_D8, "Periodo"
  loc_B1899E: PopAdLdVar
  loc_B1899F: FLdPr var_88
  loc_B189A2: LateIdCallSt
  loc_B189AA: LitVarI4
  loc_B189B2: PopAdLdVar
  loc_B189B3: LitVarI4
  loc_B189BB: PopAdLdVar
  loc_B189BC: LitVarStr var_D8, "Boleto"
  loc_B189C1: PopAdLdVar
  loc_B189C2: FLdPr var_88
  loc_B189C5: LateIdCallSt
  loc_B189CD: LitVarI4
  loc_B189D5: PopAdLdVar
  loc_B189D6: LitVarI4
  loc_B189DE: PopAdLdVar
  loc_B189DF: LitVarStr var_D8, "Emision"
  loc_B189E4: PopAdLdVar
  loc_B189E5: FLdPr var_88
  loc_B189E8: LateIdCallSt
  loc_B189F0: LitVarI4
  loc_B189F8: PopAdLdVar
  loc_B189F9: LitVarI4
  loc_B18A01: PopAdLdVar
  loc_B18A02: LitVarStr var_D8, "Vencimiento"
  loc_B18A07: PopAdLdVar
  loc_B18A08: FLdPr var_88
  loc_B18A0B: LateIdCallSt
  loc_B18A13: LitVarI4
  loc_B18A1B: PopAdLdVar
  loc_B18A1C: LitVarI4
  loc_B18A24: PopAdLdVar
  loc_B18A25: LitVarStr var_D8, "Concepto"
  loc_B18A2A: PopAdLdVar
  loc_B18A2B: FLdPr var_88
  loc_B18A2E: LateIdCallSt
  loc_B18A36: LitVarI4
  loc_B18A3E: PopAdLdVar
  loc_B18A3F: LitVarI4
  loc_B18A47: PopAdLdVar
  loc_B18A48: LitVarStr var_D8, "Facilidad"
  loc_B18A4D: PopAdLdVar
  loc_B18A4E: FLdPr var_88
  loc_B18A51: LateIdCallSt
  loc_B18A59: LitVarI4
  loc_B18A61: PopAdLdVar
  loc_B18A62: LitVarI4
  loc_B18A6A: PopAdLdVar
  loc_B18A6B: LitVarStr var_D8, "Apremio"
  loc_B18A70: PopAdLdVar
  loc_B18A71: FLdPr var_88
  loc_B18A74: LateIdCallSt
  loc_B18A7C: LitVarI4
  loc_B18A84: PopAdLdVar
  loc_B18A85: LitVarI4
  loc_B18A8D: PopAdLdVar
  loc_B18A8E: LitVarStr var_D8, "Exp/Comp"
  loc_B18A93: PopAdLdVar
  loc_B18A94: FLdPr var_88
  loc_B18A97: LateIdCallSt
  loc_B18A9F: LitVarI4
  loc_B18AA7: PopAdLdVar
  loc_B18AA8: LitVarI4
  loc_B18AB0: PopAdLdVar
  loc_B18AB1: LitVarStr var_D8, "Tipo Mov"
  loc_B18AB6: PopAdLdVar
  loc_B18AB7: FLdPr var_88
  loc_B18ABA: LateIdCallSt
  loc_B18AC2: LitVarI4
  loc_B18ACA: PopAdLdVar
  loc_B18ACB: LitVarI4
  loc_B18AD3: PopAdLdVar
  loc_B18AD4: LitVarStr var_D8, "Debito"
  loc_B18AD9: PopAdLdVar
  loc_B18ADA: FLdPr var_88
  loc_B18ADD: LateIdCallSt
  loc_B18AE5: LitVarI4
  loc_B18AED: PopAdLdVar
  loc_B18AEE: LitVarI4
  loc_B18AF6: PopAdLdVar
  loc_B18AF7: LitVarStr var_D8, "Recargo"
  loc_B18AFC: PopAdLdVar
  loc_B18AFD: FLdPr var_88
  loc_B18B00: LateIdCallSt
  loc_B18B08: LitVarI4
  loc_B18B10: PopAdLdVar
  loc_B18B11: LitVarI4
  loc_B18B19: PopAdLdVar
  loc_B18B1A: LitVarStr var_D8, "Saldo"
  loc_B18B1F: PopAdLdVar
  loc_B18B20: FLdPr var_88
  loc_B18B23: LateIdCallSt
  loc_B18B2B: LitVarI4
  loc_B18B33: PopAdLdVar
  loc_B18B34: LitVarI4
  loc_B18B3C: PopAdLdVar
  loc_B18B3D: LitVarStr var_D8, "Sel"
  loc_B18B42: PopAdLdVar
  loc_B18B43: FLdPr var_88
  loc_B18B46: LateIdCallSt
  loc_B18B4E: LitVarI4
  loc_B18B56: PopAdLdVar
  loc_B18B57: LitVarI4
  loc_B18B5F: PopAdLdVar
  loc_B18B60: LitVarStr var_D8, "Numero"
  loc_B18B65: PopAdLdVar
  loc_B18B66: FLdPr var_88
  loc_B18B69: LateIdCallSt
  loc_B18B71: LitVarI4
  loc_B18B79: PopAdLdVar
  loc_B18B7A: LitVarI4
  loc_B18B82: PopAdLdVar
  loc_B18B83: LitVarStr var_D8, "Mov"
  loc_B18B88: PopAdLdVar
  loc_B18B89: FLdPr var_88
  loc_B18B8C: LateIdCallSt
  loc_B18B94: FLdPr var_88
  loc_B18B97: LateIdCall
  loc_B18B9F: LitNothing
  loc_B18BA1: FStAd var_88 
  loc_B18BA5: ExitProcHresult
End Function

Private Function Proc_330_38_B2922C() 'B2922C
  'Data Table: 518504
  loc_B28F5C: LitI4 1
  loc_B28F61: LitI4 1
  loc_B28F66: LitVarStr var_B4, "0.00"
  loc_B28F6B: FStVarCopyObj var_C4
  loc_B28F6E: FLdRfVar var_C4
  loc_B28F71: LitVarI2 var_A4, 0
  loc_B28F76: FLdRfVar var_D4
  loc_B28F79: ImpAdCallFPR4  = Format(, )
  loc_B28F7E: FLdRfVar var_D4
  loc_B28F81: CStrVarVal var_D8
  loc_B28F85: FLdPr Me
  loc_B28F88: VCallAd Control_ID_txtTotaApre
  loc_B28F8B: FStAdFunc var_DC
  loc_B28F8E: FLdPr var_DC
  loc_B28F91: Me.Text = from_stack_1
  loc_B28F96: FFree1Str var_D8
  loc_B28F99: FFree1Ad var_DC
  loc_B28F9C: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28FA5: LitI4 1
  loc_B28FAA: LitI4 1
  loc_B28FAF: LitVarStr var_B4, "0.00"
  loc_B28FB4: FStVarCopyObj var_C4
  loc_B28FB7: FLdRfVar var_C4
  loc_B28FBA: LitVarI2 var_A4, 0
  loc_B28FBF: FLdRfVar var_D4
  loc_B28FC2: ImpAdCallFPR4  = Format(, )
  loc_B28FC7: FLdRfVar var_D4
  loc_B28FCA: CStrVarVal var_D8
  loc_B28FCE: FLdPr Me
  loc_B28FD1: VCallAd Control_ID_txtTotaDere
  loc_B28FD4: FStAdFunc var_DC
  loc_B28FD7: FLdPr var_DC
  loc_B28FDA: Me.Text = from_stack_1
  loc_B28FDF: FFree1Str var_D8
  loc_B28FE2: FFree1Ad var_DC
  loc_B28FE5: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28FEE: LitI4 1
  loc_B28FF3: LitI4 1
  loc_B28FF8: LitVarStr var_B4, "0.00"
  loc_B28FFD: FStVarCopyObj var_C4
  loc_B29000: FLdRfVar var_C4
  loc_B29003: LitVarI2 var_A4, 0
  loc_B29008: FLdRfVar var_D4
  loc_B2900B: ImpAdCallFPR4  = Format(, )
  loc_B29010: FLdRfVar var_D4
  loc_B29013: CStrVarVal var_D8
  loc_B29017: FLdPr Me
  loc_B2901A: VCallAd Control_ID_txtTotaReca
  loc_B2901D: FStAdFunc var_DC
  loc_B29020: FLdPr var_DC
  loc_B29023: Me.Text = from_stack_1
  loc_B29028: FFree1Str var_D8
  loc_B2902B: FFree1Ad var_DC
  loc_B2902E: FFreeVar var_A4 = "": var_C4 = ""
  loc_B29037: LitI4 1
  loc_B2903C: LitI4 1
  loc_B29041: LitVarStr var_B4, "0.00"
  loc_B29046: FStVarCopyObj var_C4
  loc_B29049: FLdRfVar var_C4
  loc_B2904C: LitVarI2 var_A4, 0
  loc_B29051: FLdRfVar var_D4
  loc_B29054: ImpAdCallFPR4  = Format(, )
  loc_B29059: FLdRfVar var_D4
  loc_B2905C: CStrVarVal var_D8
  loc_B29060: FLdPr Me
  loc_B29063: VCallAd Control_ID_txtTotal
  loc_B29066: FStAdFunc var_DC
  loc_B29069: FLdPr var_DC
  loc_B2906C: Me.Text = from_stack_1
  loc_B29071: FFree1Str var_D8
  loc_B29074: FFree1Ad var_DC
  loc_B29077: FFreeVar var_A4 = "": var_C4 = ""
  loc_B29080: LitI2_Byte 0
  loc_B29082: FLdPr Me
  loc_B29085: VCallAd Control_ID_PorcDescTxt
  loc_B29088: FStAdFunc var_DC
  loc_B2908B: FLdPr var_DC
  loc_B2908E: Me.Visible = from_stack_1b
  loc_B29093: FFree1Ad var_DC
  loc_B29096: LitI2_Byte 0
  loc_B29098: FLdPr Me
  loc_B2909B: VCallAd Control_ID_DescBoleLbl
  loc_B2909E: FStAdFunc var_DC
  loc_B290A1: FLdPr var_DC
  loc_B290A4: Me.Visible = from_stack_1b
  loc_B290A9: FFree1Ad var_DC
  loc_B290AC: LitI2_Byte 0
  loc_B290AE: FLdPr Me
  loc_B290B1: VCallAd Control_ID_DescBoleTxt
  loc_B290B4: FStAdFunc var_DC
  loc_B290B7: FLdPr var_DC
  loc_B290BA: Me.Visible = from_stack_1b
  loc_B290BF: FFree1Ad var_DC
  loc_B290C2: LitI2_Byte 0
  loc_B290C4: FLdPr Me
  loc_B290C7: VCallAd Control_ID_TotalLbl
  loc_B290CA: FStAdFunc var_DC
  loc_B290CD: FLdPr var_DC
  loc_B290D0: Me.Visible = from_stack_1b
  loc_B290D5: FFree1Ad var_DC
  loc_B290D8: LitI2_Byte 0
  loc_B290DA: FLdPr Me
  loc_B290DD: VCallAd Control_ID_TotalTxt
  loc_B290E0: FStAdFunc var_DC
  loc_B290E3: FLdPr var_DC
  loc_B290E6: Me.Visible = from_stack_1b
  loc_B290EB: FFree1Ad var_DC
  loc_B290EE: LitI2_Byte 0
  loc_B290F0: FLdPr Me
  loc_B290F3: VCallAd Control_ID_DescuentoChk
  loc_B290F6: FStAdFunc var_DC
  loc_B290F9: FLdPr var_DC
  loc_B290FC: Me.Value = from_stack_1
  loc_B29101: FFree1Ad var_DC
  loc_B29104: LitI4 1
  loc_B29109: LitI4 1
  loc_B2910E: LitVarStr var_B4, "0.00"
  loc_B29113: FStVarCopyObj var_C4
  loc_B29116: FLdRfVar var_C4
  loc_B29119: LitVarI2 var_A4, 0
  loc_B2911E: FLdRfVar var_D4
  loc_B29121: ImpAdCallFPR4  = Format(, )
  loc_B29126: FLdRfVar var_D4
  loc_B29129: CStrVarVal var_D8
  loc_B2912D: FLdPr Me
  loc_B29130: VCallAd Control_ID_PorcDescTxt
  loc_B29133: FStAdFunc var_DC
  loc_B29136: FLdPr var_DC
  loc_B29139: Me.Text = from_stack_1
  loc_B2913E: FFree1Str var_D8
  loc_B29141: FFree1Ad var_DC
  loc_B29144: FFreeVar var_A4 = "": var_C4 = ""
  loc_B2914D: LitI4 1
  loc_B29152: LitI4 1
  loc_B29157: LitVarStr var_B4, "0.00"
  loc_B2915C: FStVarCopyObj var_C4
  loc_B2915F: FLdRfVar var_C4
  loc_B29162: LitVarI2 var_A4, 0
  loc_B29167: FLdRfVar var_D4
  loc_B2916A: ImpAdCallFPR4  = Format(, )
  loc_B2916F: FLdRfVar var_D4
  loc_B29172: CStrVarVal var_D8
  loc_B29176: FLdPr Me
  loc_B29179: VCallAd Control_ID_TotaBoleTxt
  loc_B2917C: FStAdFunc var_DC
  loc_B2917F: FLdPr var_DC
  loc_B29182: Me.Text = from_stack_1
  loc_B29187: FFree1Str var_D8
  loc_B2918A: FFree1Ad var_DC
  loc_B2918D: FFreeVar var_A4 = "": var_C4 = ""
  loc_B29196: LitI4 1
  loc_B2919B: LitI4 1
  loc_B291A0: LitVarStr var_B4, "0.00"
  loc_B291A5: FStVarCopyObj var_C4
  loc_B291A8: FLdRfVar var_C4
  loc_B291AB: LitVarI2 var_A4, 0
  loc_B291B0: FLdRfVar var_D4
  loc_B291B3: ImpAdCallFPR4  = Format(, )
  loc_B291B8: FLdRfVar var_D4
  loc_B291BB: CStrVarVal var_D8
  loc_B291BF: FLdPr Me
  loc_B291C2: VCallAd Control_ID_DescBoleTxt
  loc_B291C5: FStAdFunc var_DC
  loc_B291C8: FLdPr var_DC
  loc_B291CB: Me.Text = from_stack_1
  loc_B291D0: FFree1Str var_D8
  loc_B291D3: FFree1Ad var_DC
  loc_B291D6: FFreeVar var_A4 = "": var_C4 = ""
  loc_B291DF: LitI4 1
  loc_B291E4: LitI4 1
  loc_B291E9: LitVarStr var_B4, "0.00"
  loc_B291EE: FStVarCopyObj var_C4
  loc_B291F1: FLdRfVar var_C4
  loc_B291F4: LitVarI2 var_A4, 0
  loc_B291F9: FLdRfVar var_D4
  loc_B291FC: ImpAdCallFPR4  = Format(, )
  loc_B29201: FLdRfVar var_D4
  loc_B29204: CStrVarVal var_D8
  loc_B29208: FLdPr Me
  loc_B2920B: VCallAd Control_ID_TotalTxt
  loc_B2920E: FStAdFunc var_DC
  loc_B29211: FLdPr var_DC
  loc_B29214: Me.Text = from_stack_1
  loc_B29219: FFree1Str var_D8
  loc_B2921C: FFree1Ad var_DC
  loc_B2921F: FFreeVar var_A4 = "": var_C4 = ""
  loc_B29228: ExitProcHresult
End Function

Private Function Proc_330_39_B3A61C() 'B3A61C
  'Data Table: 518504
  loc_B3A358: FLdPr Me
  loc_B3A35B: VCallAd Control_ID_ServDevaFlex
  loc_B3A35E: FStAdFunc var_88
  loc_B3A361: FLdPr var_88
  loc_B3A364: LateIdCall
  loc_B3A36C: LitVarI4
  loc_B3A374: PopAdLdVar
  loc_B3A375: FLdPr var_88
  loc_B3A378: LateIdSt
  loc_B3A37D: LitVarI4
  loc_B3A385: PopAdLdVar
  loc_B3A386: LitVarI4
  loc_B3A38E: PopAdLdVar
  loc_B3A38F: LitVarStr var_D8, "Cant."
  loc_B3A394: PopAdLdVar
  loc_B3A395: FLdPr var_88
  loc_B3A398: LateIdCallSt
  loc_B3A3A0: LitVarI4
  loc_B3A3A8: PopAdLdVar
  loc_B3A3A9: LitVarI4
  loc_B3A3B1: PopAdLdVar
  loc_B3A3B2: LitVarStr var_D8, "Cod."
  loc_B3A3B7: PopAdLdVar
  loc_B3A3B8: FLdPr var_88
  loc_B3A3BB: LateIdCallSt
  loc_B3A3C3: LitVarI4
  loc_B3A3CB: PopAdLdVar
  loc_B3A3CC: LitVarI4
  loc_B3A3D4: PopAdLdVar
  loc_B3A3D5: LitVarStr var_D8, "Detalle o Servicio"
  loc_B3A3DA: PopAdLdVar
  loc_B3A3DB: FLdPr var_88
  loc_B3A3DE: LateIdCallSt
  loc_B3A3E6: LitVarI4
  loc_B3A3EE: PopAdLdVar
  loc_B3A3EF: LitVarI4
  loc_B3A3F7: PopAdLdVar
  loc_B3A3F8: LitVarStr var_D8, "Importe"
  loc_B3A3FD: PopAdLdVar
  loc_B3A3FE: FLdPr var_88
  loc_B3A401: LateIdCallSt
  loc_B3A409: LitVarI4
  loc_B3A411: PopAdLdVar
  loc_B3A412: LitVarI4
  loc_B3A41A: PopAdLdVar
  loc_B3A41B: LitVarStr var_D8, "Total"
  loc_B3A420: PopAdLdVar
  loc_B3A421: FLdPr var_88
  loc_B3A424: LateIdCallSt
  loc_B3A42C: LitVarI4
  loc_B3A434: PopAdLdVar
  loc_B3A435: LitVarI4
  loc_B3A43D: PopAdLdVar
  loc_B3A43E: LitVarStr var_D8, "Periodo"
  loc_B3A443: PopAdLdVar
  loc_B3A444: FLdPr var_88
  loc_B3A447: LateIdCallSt
  loc_B3A44F: LitVarI4
  loc_B3A457: PopAdLdVar
  loc_B3A458: LitVarI4
  loc_B3A460: PopAdLdVar
  loc_B3A461: LitVarStr var_D8, "Concepto"
  loc_B3A466: PopAdLdVar
  loc_B3A467: FLdPr var_88
  loc_B3A46A: LateIdCallSt
  loc_B3A472: LitVarI4
  loc_B3A47A: PopAdLdVar
  loc_B3A47B: LitVarI4
  loc_B3A483: PopAdLdVar
  loc_B3A484: LitVarStr var_D8, "Fijo"
  loc_B3A489: PopAdLdVar
  loc_B3A48A: FLdPr var_88
  loc_B3A48D: LateIdCallSt
  loc_B3A495: LitVarI4
  loc_B3A49D: PopAdLdVar
  loc_B3A49E: LitVarI4
  loc_B3A4A6: PopAdLdVar
  loc_B3A4A7: LitVarStr var_D8, "TiafConc"
  loc_B3A4AC: PopAdLdVar
  loc_B3A4AD: FLdPr var_88
  loc_B3A4B0: LateIdCallSt
  loc_B3A4B8: FLdPr var_88
  loc_B3A4BB: LateIdCall
  loc_B3A4C3: LitNothing
  loc_B3A4C5: FStAd var_88 
  loc_B3A4C9: LitVarStr var_98, vbNullString
  loc_B3A4CE: LitI4 9
  loc_B3A4D3: FLdRfVar var_F8
  loc_B3A4D6: ImpAdCallFPR4  = Chr()
  loc_B3A4DB: FLdRfVar var_F8
  loc_B3A4DE: ConcatVar var_108
  loc_B3A4E2: LitVarStr var_A8, vbNullString
  loc_B3A4E7: ConcatVar var_118
  loc_B3A4EB: LitI4 9
  loc_B3A4F0: FLdRfVar var_128
  loc_B3A4F3: ImpAdCallFPR4  = Chr()
  loc_B3A4F8: FLdRfVar var_128
  loc_B3A4FB: ConcatVar var_138
  loc_B3A4FF: LitVarStr var_B8, vbNullString
  loc_B3A504: ConcatVar var_148
  loc_B3A508: LitI4 9
  loc_B3A50D: FLdRfVar var_158
  loc_B3A510: ImpAdCallFPR4  = Chr()
  loc_B3A515: FLdRfVar var_158
  loc_B3A518: ConcatVar var_168
  loc_B3A51C: LitVarStr var_C8, vbNullString
  loc_B3A521: ConcatVar var_178
  loc_B3A525: LitI4 9
  loc_B3A52A: FLdRfVar var_188
  loc_B3A52D: ImpAdCallFPR4  = Chr()
  loc_B3A532: FLdRfVar var_188
  loc_B3A535: ConcatVar var_198
  loc_B3A539: LitVarStr var_D8, vbNullString
  loc_B3A53E: ConcatVar var_1A8
  loc_B3A542: LitI4 9
  loc_B3A547: FLdRfVar var_1B8
  loc_B3A54A: ImpAdCallFPR4  = Chr()
  loc_B3A54F: FLdRfVar var_1B8
  loc_B3A552: ConcatVar var_1C8
  loc_B3A556: LitVarStr var_E8, vbNullString
  loc_B3A55B: ConcatVar var_1D8
  loc_B3A55F: LitI4 9
  loc_B3A564: FLdRfVar var_1E8
  loc_B3A567: ImpAdCallFPR4  = Chr()
  loc_B3A56C: FLdRfVar var_1E8
  loc_B3A56F: ConcatVar var_1F8
  loc_B3A573: LitVarStr var_208, vbNullString
  loc_B3A578: ConcatVar var_218
  loc_B3A57C: LitI4 9
  loc_B3A581: FLdRfVar var_228
  loc_B3A584: ImpAdCallFPR4  = Chr()
  loc_B3A589: FLdRfVar var_228
  loc_B3A58C: ConcatVar var_238
  loc_B3A590: LitVarStr var_248, "0"
  loc_B3A595: ConcatVar var_258
  loc_B3A599: LitI4 9
  loc_B3A59E: FLdRfVar var_268
  loc_B3A5A1: ImpAdCallFPR4  = Chr()
  loc_B3A5A6: FLdRfVar var_268
  loc_B3A5A9: ConcatVar var_278
  loc_B3A5AD: LitVarStr var_288, "0"
  loc_B3A5B2: ConcatVar var_298
  loc_B3A5B6: CStrVarTmp
  loc_B3A5B7: FStStrNoPop var_29C
  loc_B3A5BA: FLdPr Me
  loc_B3A5BD: MemStStrCopy
  loc_B3A5C1: FFree1Str var_29C
  loc_B3A5C4: FFreeVar var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = ""
  loc_B3A5F7: FLdPr Me
  loc_B3A5FA: MemLdRfVar from_stack_1.global_76
  loc_B3A5FD: CDargRef
  loc_B3A601: FLdPr Me
  loc_B3A604: VCallAd Control_ID_ServDevaFlex
  loc_B3A607: FStAdFunc var_2A0
  loc_B3A60A: FLdPr var_2A0
  loc_B3A60D: LateIdCall
  loc_B3A615: FFree1Ad var_2A0
  loc_B3A618: ExitProcHresult
End Function

Private Function Proc_330_40_B2D988() 'B2D988
  'Data Table: 518504
  loc_B2D6B4: LitI2_Byte 0
  loc_B2D6B6: CR8I2
  loc_B2D6B7: FStFPR8 var_8C
  loc_B2D6BA: LitI2_Byte 1
  loc_B2D6BC: FLdPr Me
  loc_B2D6BF: MemLdRfVar from_stack_1.global_72
  loc_B2D6C2: FLdPr Me
  loc_B2D6C5: VCallAd Control_ID_ServDevaFlex
  loc_B2D6C8: FStAdFunc var_90
  loc_B2D6CB: FLdPr var_90
  loc_B2D6CE: LateIdLdVar var_A0 DispID_4 0
  loc_B2D6D5: CI4Var
  loc_B2D6D7: LitI4 1
  loc_B2D6DC: SubI4
  loc_B2D6DD: CI2I4
  loc_B2D6DE: FFree1Ad var_90
  loc_B2D6E1: FFree1Var var_A0 = ""
  loc_B2D6E4: ForI2 var_A4
  loc_B2D6EA: FLdPr Me
  loc_B2D6ED: MemLdI2 global_72
  loc_B2D6F0: CI4UI1
  loc_B2D6F1: CVarI4
  loc_B2D6F5: PopAdLdVar
  loc_B2D6F6: LitVarI4
  loc_B2D6FE: PopAdLdVar
  loc_B2D6FF: FLdPr Me
  loc_B2D702: VCallAd Control_ID_ServDevaFlex
  loc_B2D705: FStAdFunc var_90
  loc_B2D708: FLdPr var_90
  loc_B2D70B: LateIdCallLdVar
  loc_B2D715: CStrVarTmp
  loc_B2D716: CVarStr var_F4
  loc_B2D719: ImpAdCallI2 IsNumeric()
  loc_B2D71E: FFree1Ad var_90
  loc_B2D721: FFreeVar var_A0 = ""
  loc_B2D728: BranchF loc_B2D771
  loc_B2D72B: FLdPr Me
  loc_B2D72E: MemLdI2 global_72
  loc_B2D731: CI4UI1
  loc_B2D732: CVarI4
  loc_B2D736: PopAdLdVar
  loc_B2D737: LitVarI4
  loc_B2D73F: PopAdLdVar
  loc_B2D740: FLdPr Me
  loc_B2D743: VCallAd Control_ID_ServDevaFlex
  loc_B2D746: FStAdFunc var_90
  loc_B2D749: FLdPr var_90
  loc_B2D74C: LateIdCallLdVar
  loc_B2D756: PopAd
  loc_B2D758: FLdFPR8 var_8C
  loc_B2D75B: FLdRfVar var_A0
  loc_B2D75E: CStrVarTmp
  loc_B2D75F: FStStrNoPop var_F8
  loc_B2D762: CR8Str
  loc_B2D764: AddR8
  loc_B2D765: FStFPR8 var_8C
  loc_B2D768: FFree1Str var_F8
  loc_B2D76B: FFree1Ad var_90
  loc_B2D76E: FFree1Var var_A0 = ""
  loc_B2D771: FLdPr Me
  loc_B2D774: MemLdRfVar from_stack_1.global_72
  loc_B2D777: NextI2 var_A4, loc_B2D6EA
  loc_B2D77C: LitI4 1
  loc_B2D781: LitI4 1
  loc_B2D786: LitVarStr var_C4, "0.00"
  loc_B2D78B: FStVarCopyObj var_A0
  loc_B2D78E: FLdRfVar var_A0
  loc_B2D791: FLdRfVar var_8C
  loc_B2D794: CVarRef
  loc_B2D799: FLdRfVar var_F4
  loc_B2D79C: ImpAdCallFPR4  = Format(, )
  loc_B2D7A1: FLdRfVar var_F4
  loc_B2D7A4: CStrVarVal var_F8
  loc_B2D7A8: FLdPr Me
  loc_B2D7AB: VCallAd Control_ID_TotaBoleTxt
  loc_B2D7AE: FStAdFunc var_90
  loc_B2D7B1: FLdPr var_90
  loc_B2D7B4: Me.Text = from_stack_1
  loc_B2D7B9: FFree1Str var_F8
  loc_B2D7BC: FFree1Ad var_90
  loc_B2D7BF: FFreeVar var_A0 = ""
  loc_B2D7C6: LitStr "Municipalidad de Guaymallén"
  loc_B2D7C9: LitStr "Municipalidad de Rivadavia"
  loc_B2D7CC: EqStr
  loc_B2D7CE: FLdRfVar var_FA
  loc_B2D7D1: FLdPr Me
  loc_B2D7D4: VCallAd Control_ID_RedondeoChk
  loc_B2D7D7: FStAdFunc var_90
  loc_B2D7DA: FLdPr var_90
  loc_B2D7DD:  = Me.Value
  loc_B2D7E2: FLdI2 var_FA
  loc_B2D7E5: LitI2_Byte 1
  loc_B2D7E7: EqI2
  loc_B2D7E8: AndI4
  loc_B2D7E9: FFree1Ad var_90
  loc_B2D7EC: BranchF loc_B2D8A7
  loc_B2D7EF: LitI2_Byte 0
  loc_B2D7F1: CR8I2
  loc_B2D7F2: FLdPr Me
  loc_B2D7F5: MemStFPR8 global_84
  loc_B2D7F8: FLdFPR8 var_8C
  loc_B2D7FB: CI4R8
  loc_B2D7FC: CVarI4
  loc_B2D800: HardType
  loc_B2D801: LitI4 2
  loc_B2D806: FLdRfVar var_8C
  loc_B2D809: CVarRef
  loc_B2D80E: FLdRfVar var_A0
  loc_B2D811: ImpAdCallFPR4  = Round(, )
  loc_B2D816: FLdRfVar var_A0
  loc_B2D819: NeVarBool
  loc_B2D81B: FFree1Var var_A0 = ""
  loc_B2D81E: BranchF loc_B2D8A7
  loc_B2D821: LitI4 2
  loc_B2D826: FLdFPR8 var_8C
  loc_B2D829: FnFixR8
  loc_B2D82B: LitI2_Byte 1
  loc_B2D82D: CR8I2
  loc_B2D82E: AddR8
  loc_B2D82F: FLdFPR8 var_8C
  loc_B2D832: SubR4
  loc_B2D833: CVarR8
  loc_B2D837: FLdRfVar var_F4
  loc_B2D83A: ImpAdCallFPR4  = Round(, )
  loc_B2D83F: FLdRfVar var_F4
  loc_B2D842: CR4Var
  loc_B2D843: FLdPr Me
  loc_B2D846: MemStFPR8 global_84
  loc_B2D849: FFreeVar var_A0 = ""
  loc_B2D850: FLdFPR8 var_8C
  loc_B2D853: FLdPr Me
  loc_B2D856: MemLdFPR8 global_84
  loc_B2D859: AddR8
  loc_B2D85A: FStFPR8 var_8C
  loc_B2D85D: LitI4 1
  loc_B2D862: LitI4 1
  loc_B2D867: LitVarStr var_C4, "0.00"
  loc_B2D86C: FStVarCopyObj var_A0
  loc_B2D86F: FLdRfVar var_A0
  loc_B2D872: FLdRfVar var_8C
  loc_B2D875: CVarRef
  loc_B2D87A: FLdRfVar var_F4
  loc_B2D87D: ImpAdCallFPR4  = Format(, )
  loc_B2D882: FLdRfVar var_F4
  loc_B2D885: CStrVarVal var_F8
  loc_B2D889: FLdPr Me
  loc_B2D88C: VCallAd Control_ID_TotaBoleTxt
  loc_B2D88F: FStAdFunc var_90
  loc_B2D892: FLdPr var_90
  loc_B2D895: Me.Text = from_stack_1
  loc_B2D89A: FFree1Str var_F8
  loc_B2D89D: FFree1Ad var_90
  loc_B2D8A0: FFreeVar var_A0 = ""
  loc_B2D8A7: FLdRfVar var_F8
  loc_B2D8AA: FLdPr Me
  loc_B2D8AD: VCallAd Control_ID_PorcDescTxt
  loc_B2D8B0: FStAdFunc var_90
  loc_B2D8B3: FLdPr var_90
  loc_B2D8B6:  = Me.Text
  loc_B2D8BB: LitI4 1
  loc_B2D8C0: LitI4 1
  loc_B2D8C5: LitVarStr var_C4, "0.00"
  loc_B2D8CA: FStVarCopyObj var_F4
  loc_B2D8CD: FLdRfVar var_F4
  loc_B2D8D0: FLdFPR8 var_8C
  loc_B2D8D3: ILdRf var_F8
  loc_B2D8D6: CR8Str
  loc_B2D8D8: MulR8
  loc_B2D8D9: LitI2_Byte &H64
  loc_B2D8DB: CR8I2
  loc_B2D8DC: DivR8
  loc_B2D8DD: CVarR8
  loc_B2D8E1: FLdRfVar var_10C
  loc_B2D8E4: ImpAdCallFPR4  = Format(, )
  loc_B2D8E9: FLdRfVar var_10C
  loc_B2D8EC: CStrVarVal var_110
  loc_B2D8F0: FLdPr Me
  loc_B2D8F3: VCallAd Control_ID_DescBoleTxt
  loc_B2D8F6: FStAdFunc var_114
  loc_B2D8F9: FLdPr var_114
  loc_B2D8FC: Me.Text = from_stack_1
  loc_B2D901: FFreeStr var_F8 = ""
  loc_B2D908: FFreeAd var_90 = ""
  loc_B2D90F: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2D918: FLdRfVar var_F8
  loc_B2D91B: FLdPr Me
  loc_B2D91E: VCallAd Control_ID_DescBoleTxt
  loc_B2D921: FStAdFunc var_90
  loc_B2D924: FLdPr var_90
  loc_B2D927:  = Me.Text
  loc_B2D92C: LitI4 1
  loc_B2D931: LitI4 1
  loc_B2D936: LitVarStr var_C4, "0.00"
  loc_B2D93B: FStVarCopyObj var_F4
  loc_B2D93E: FLdRfVar var_F4
  loc_B2D941: FLdFPR8 var_8C
  loc_B2D944: ILdRf var_F8
  loc_B2D947: CR8Str
  loc_B2D949: SubR4
  loc_B2D94A: CVarR8
  loc_B2D94E: FLdRfVar var_10C
  loc_B2D951: ImpAdCallFPR4  = Format(, )
  loc_B2D956: FLdRfVar var_10C
  loc_B2D959: CStrVarVal var_110
  loc_B2D95D: FLdPr Me
  loc_B2D960: VCallAd Control_ID_TotalTxt
  loc_B2D963: FStAdFunc var_114
  loc_B2D966: FLdPr var_114
  loc_B2D969: Me.Text = from_stack_1
  loc_B2D96E: FFreeStr var_F8 = ""
  loc_B2D975: FFreeAd var_90 = ""
  loc_B2D97C: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2D985: ExitProcHresult
End Function
