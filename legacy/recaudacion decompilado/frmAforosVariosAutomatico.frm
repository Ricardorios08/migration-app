VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmAforosVariosAutomatico
  Caption = "Aforos Varios Automaticos/Fraccionamiento"
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
  ClientHeight = 10320
  Begin VB.TextBox txtTotaDere
    Left = 6120
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 29
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
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 28
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
    Left = 2040
    Top = 5160
    Width = 1815
    Height = 360
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
  Begin VB.TextBox txtTotal
    Left = 13200
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
  Begin VB.Frame Frame1
    Caption = "Datos del Aforo"
    Left = 240
    Top = 5760
    Width = 14775
    Height = 4212
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
    Begin VB.TextBox ImpoBombTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 3600
      Width = 1695
      Height = 345
      TabIndex = 18
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
    Begin VB.CommandButton BuscarValorCmd
      Left = 3840
      Top = 240
      Width = 612
      Height = 372
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmAforosVariosAutomatico.frx":0000
      Style = 1
    End
    Begin VB.TextBox UntrPageTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 240
      Width = 975
      Height = 345
      TabIndex = 10
      MaxLength = 6
      DataField = "UntrPage"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox HastaBimeCtct
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1680
      Width = 375
      Height = 348
      TabIndex = 39
      MaxLength = 2
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
    Begin VB.TextBox PeriCtctTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 720
      Width = 735
      Height = 348
      TabIndex = 13
      MaxLength = 4
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
    Begin VB.TextBox DesdeBimeCtct
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1200
      Width = 375
      Height = 348
      TabIndex = 14
      MaxLength = 2
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
      Left = 5640
      Top = 3480
      Width = 1335
      Height = 525
      TabIndex = 19
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmAforosVariosAutomatico.frx":00FA
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 3120
      Width = 1695
      Height = 345
      TabIndex = 17
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
      Left = 2640
      Top = 2640
      Width = 9015
      Height = 345
      TabIndex = 16
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
      Left = 2640
      Top = 2160
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
    Begin VB.Label Label15
      Caption = "Importe Bombero:"
      Left = 720
      Top = 3600
      Width = 1860
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
    Begin VB.Label Label14
      Caption = "U.T.M.:"
      Left = 1800
      Top = 240
      Width = 780
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
    Begin VB.Label Label9
      Caption = "Hasta Bimestre:"
      Left = 960
      Top = 1680
      Width = 1656
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
    Begin VB.Label Label1
      Caption = "Desde Bimestre:"
      Left = 840
      Top = 1200
      Width = 1728
      Height = 300
      TabIndex = 37
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
    Begin VB.Label Label13
      Caption = "Periodo:"
      Left = 1680
      Top = 720
      Width = 876
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
    Begin VB.Label Label12
      Caption = "Importe:"
      Left = 1728
      Top = 3120
      Width = 888
      Height = 300
      TabIndex = 24
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
      Left = 972
      Top = 2640
      Width = 1632
      Height = 300
      TabIndex = 23
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
      Left = 1356
      Top = 2160
      Width = 1260
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
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1440
    Top = 120
    Width = 2295
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
    Left = 5160
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 8
    Picture = "frmAforosVariosAutomatico.frx":0428
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6720
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmAforosVariosAutomatico.frx":050A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4800
    Top = 120
    Width = 1815
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
    Left = 14400
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 20
    Picture = "frmAforosVariosAutomatico.frx":0604
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 4200
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 7
    Picture = "frmAforosVariosAutomatico.frx":0856
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2640
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 6
    OleObjectBlob = "frmAforosVariosAutomatico.frx":0D98
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 12
    OleObjectBlob = "frmAforosVariosAutomatico.frx":0E48
    Appearance = 0 'Flat
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 7215
    Height = 315
    TabIndex = 36
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
    Left = 7320
    Top = 120
    Width = 1695
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9240
    Top = 120
    Width = 5175
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
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 4080
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 33
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
    Left = 8400
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
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 240
    Top = 5160
    Width = 1755
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
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12360
    Top = 5160
    Width = 690
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 600
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
    Left = 3960
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
  Begin VB.Label Label4
    Caption = "Fecha de Vencimiento:"
    Left = 165
    Top = 720
    Width = 2445
    Height = 300
    TabIndex = 5
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

Attribute VB_Name = "frmAforosVariosAutomatico"


Private Sub FechVencMsk_UnknownEvent_0 '9BD2C0
  'Data Table: 5083E0
  loc_9BD2AC: FLdPr Me
  loc_9BD2AF: VCallAd Control_ID_FechVencMsk
  loc_9BD2B2: CVarAd
  loc_9BD2B6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD2BB: FFree1Var var_94 = ""
  loc_9BD2BE: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_8 'ABED54
  'Data Table: 5083E0
  loc_ABEC5C: FLdPr Me
  loc_ABEC5F: VCallAd Control_ID_FechVencMsk
  loc_ABEC62: FStAdFunc var_88
  loc_ABEC65: FLdPr var_88
  loc_ABEC68: LateIdLdVar var_98 DispID_13 -32767
  loc_ABEC6F: CBoolVar
  loc_ABEC71: LitI2_Byte &HFF
  loc_ABEC73: EqI2
  loc_ABEC74: FFree1Ad var_88
  loc_ABEC77: FFree1Var var_98 = ""
  loc_ABEC7A: BranchF loc_ABED52
  loc_ABEC7D: LitVarStr var_A8, vbNullString
  loc_ABEC82: PopAdLdVar
  loc_ABEC83: FLdPr Me
  loc_ABEC86: VCallAd Control_ID_FechVencMsk
  loc_ABEC89: FStAdFunc var_88
  loc_ABEC8C: FLdPr var_88
  loc_ABEC8F: LateIdSt
  loc_ABEC94: FFree1Ad var_88
  loc_ABEC97: FLdPr Me
  loc_ABEC9A: VCallAd Control_ID_FechVencMsk
  loc_ABEC9D: FStAdFunc var_88
  loc_ABECA0: FLdPr var_88
  loc_ABECA3: LateIdLdVar var_98 DispID_22 0
  loc_ABECAA: CStrVarTmp
  loc_ABECAB: FStStrNoPop var_BC
  loc_ABECAE: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABECB3: FStStrNoPop var_C0
  loc_ABECB6: FLdPr Me
  loc_ABECB9: MemStStrCopy
  loc_ABECBD: FFreeStr var_BC = ""
  loc_ABECC4: FFree1Ad var_88
  loc_ABECC7: FFree1Var var_98 = ""
  loc_ABECCA: LitVarStr var_A8, "##/##/####"
  loc_ABECCF: PopAdLdVar
  loc_ABECD0: FLdPr Me
  loc_ABECD3: VCallAd Control_ID_FechVencMsk
  loc_ABECD6: FStAdFunc var_88
  loc_ABECD9: FLdPr var_88
  loc_ABECDC: LateIdSt
  loc_ABECE1: FFree1Ad var_88
  loc_ABECE4: LitVarI2 var_A8, 10
  loc_ABECE9: PopAdLdVar
  loc_ABECEA: FLdPr Me
  loc_ABECED: VCallAd Control_ID_FechVencMsk
  loc_ABECF0: FStAdFunc var_88
  loc_ABECF3: FLdPr var_88
  loc_ABECF6: LateIdSt
  loc_ABECFB: FFree1Ad var_88
  loc_ABECFE: FLdPr Me
  loc_ABED01: MemLdStr global_112
  loc_ABED04: LitStr vbNullString
  loc_ABED07: NeStr
  loc_ABED09: BranchF loc_ABED52
  loc_ABED0C: FLdPr Me
  loc_ABED0F: MemLdStr global_112
  loc_ABED12: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABED17: LitI2_Byte 0
  loc_ABED19: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABED1E: CStrDate
  loc_ABED20: CVarStr var_98
  loc_ABED23: PopAdLdVar
  loc_ABED24: FLdPr Me
  loc_ABED27: VCallAd Control_ID_FechVencMsk
  loc_ABED2A: FStAdFunc var_88
  loc_ABED2D: FLdPr var_88
  loc_ABED30: LateIdSt
  loc_ABED35: FFree1Ad var_88
  loc_ABED38: FFree1Var var_98 = ""
  loc_ABED3B: FLdPr Me
  loc_ABED3E: VCallAd Control_ID_FechVencMsk
  loc_ABED41: CVarAd
  loc_ABED45: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABED4A: FFree1Var var_98 = ""
  loc_ABED4D: LitI2_Byte &HFF
  loc_ABED4F: IStI2 KeyAscii
  loc_ABED52: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_GotFocus() '9BD110
  'Data Table: 5083E0
  loc_9BD0FC: FLdPr Me
  loc_9BD0FF: VCallAd Control_ID_PeriCtctTxt
  loc_9BD102: CVarAd
  loc_9BD106: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD10B: FFree1Var var_94 = ""
  loc_9BD10E: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_KeyPress(KeyAscii As Integer) '9CA8A0
  'Data Table: 5083E0
  loc_9CA888: LitStr "1234567890<"
  loc_9CA88B: FStStrCopy var_88
  loc_9CA88E: FLdRfVar var_88
  loc_9CA891: ILdRf KeyAscii
  loc_9CA894: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA899: IStI2 KeyAscii
  loc_9CA89C: FFree1Str var_88
  loc_9CA89F: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_Validate(Cancel As Boolean) 'A69300
  'Data Table: 5083E0
  loc_A69298: FLdRfVar var_8C
  loc_A6929B: FLdPr Me
  loc_A6929E: VCallAd Control_ID_PeriCtctTxt
  loc_A692A1: FStAdFunc var_88
  loc_A692A4: FLdPr var_88
  loc_A692A7:  = Me.Text
  loc_A692AC: LitI2_Byte 0
  loc_A692AE: ILdRf var_8C
  loc_A692B1: LitStr "el Año"
  loc_A692B4: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A692B9: FStStrNoPop var_90
  loc_A692BC: FLdPr Me
  loc_A692BF: MemStStrCopy
  loc_A692C3: FFreeStr var_8C = ""
  loc_A692CA: FFree1Ad var_88
  loc_A692CD: FLdPr Me
  loc_A692D0: MemLdStr global_112
  loc_A692D3: LitStr vbNullString
  loc_A692D6: NeStr
  loc_A692D8: BranchF loc_A692FD
  loc_A692DB: FLdPr Me
  loc_A692DE: MemLdStr global_112
  loc_A692E1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A692E6: FLdPr Me
  loc_A692E9: VCallAd Control_ID_PeriCtctTxt
  loc_A692EC: CVarAd
  loc_A692F0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A692F5: FFree1Var var_A0 = ""
  loc_A692F8: LitI2_Byte &HFF
  loc_A692FA: IStI2 Cancel
  loc_A692FD: ExitProcHresult
End Sub

Private Sub BuscarValorCmd_Click() 'B6FAC0
  'Data Table: 5083E0
  loc_B6F68C: FLdRfVar var_8C
  loc_B6F68F: FLdPr Me
  loc_B6F692: VCallAd Control_ID_UntrPageTxt
  loc_B6F695: FStAdFunc var_88
  loc_B6F698: FLdPr var_88
  loc_B6F69B:  = Me.Text
  loc_B6F6A0: ILdRf var_8C
  loc_B6F6A3: CR8Str
  loc_B6F6A5: ImpAdStFPR8 MemVar_D93084
  loc_B6F6A8: FFree1Str var_8C
  loc_B6F6AB: FFree1Ad var_88
  loc_B6F6AE: LitStr "SELECT vpadrones_parcela.nro_padron, IFNULL(vpadrones_parcela.parcela_ryb_cod,0) parcela_ryb_cod, IFNULL(parcela_ryb_descrip,'') parcela_ryb_descrip, IFNULL(vpadrones_parcela.parcela_avaluo,0) parcela_avaluo, IFNULL(vpadrones_parcela.parcela_superficie,'0') parcela_superficie, IFNULL(CUIT,'') CucuPers, denominacion, "
  loc_B6F6B1: LitStr " IFNULL(dependencia,'0') dependencia, distrito, IFNULL(seccion,'0') seccion, IFNULL(manzana,'0') manzana, IFNULL(parcela,'0') parcela, IFNULL(subparcela,'0') subparcela, IFNULL(dig_veri,'') dig_veri "
  loc_B6F6B4: ConcatStr
  loc_B6F6B5: FStStrNoPop var_8C
  loc_B6F6B8: LitStr " FROM vpadrones_parcela "
  loc_B6F6BB: ConcatStr
  loc_B6F6BC: FStStrNoPop var_90
  loc_B6F6BF: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron =  vpadrones_parcela.nro_padron"
  loc_B6F6C2: ConcatStr
  loc_B6F6C3: FStStrNoPop var_94
  loc_B6F6C6: LitStr " WHERE vpadrones_parcela.nro_padron = '"
  loc_B6F6C9: ConcatStr
  loc_B6F6CA: FStStrNoPop var_9C
  loc_B6F6CD: FLdRfVar var_98
  loc_B6F6D0: FLdPr Me
  loc_B6F6D3: VCallAd Control_ID_NumeCtaTxt
  loc_B6F6D6: FStAdFunc var_88
  loc_B6F6D9: FLdPr var_88
  loc_B6F6DC:  = Me.Text
  loc_B6F6E1: ILdRf var_98
  loc_B6F6E4: ConcatStr
  loc_B6F6E5: FStStrNoPop var_A0
  loc_B6F6E8: LitStr "'"
  loc_B6F6EB: ConcatStr
  loc_B6F6EC: FStStrNoPop var_A4
  loc_B6F6EF: LitStr " AND vpadrones_parcela.parcela_estado_codigo IN (10,11) "
  loc_B6F6F2: ConcatStr
  loc_B6F6F3: FStStrNoPop var_A8
  loc_B6F6F6: LitStr " AND principal = 'Si'"
  loc_B6F6F9: ConcatStr
  loc_B6F6FA: FStStrNoPop var_AC
  loc_B6F6FD: LitStr " GROUP BY vpadrones_parcela.nro_padron"
  loc_B6F700: ConcatStr
  loc_B6F701: FStStrNoPop var_B0
  loc_B6F704: FLdPr Me
  loc_B6F707: MemLdRfVar from_stack_1.global_60
  loc_B6F70A: NewIfNullPr clsInmueble
  loc_B6F70D: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_B6F712: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B6F729: FFree1Ad var_88
  loc_B6F72C: FLdRfVar var_B4
  loc_B6F72F: FLdRfVar var_88
  loc_B6F732: FLdPr Me
  loc_B6F735: MemLdRfVar from_stack_1.global_60
  loc_B6F738: NewIfNullPr clsInmueble
  loc_B6F73B: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F740: FLdPr var_88
  loc_B6F743:  = Me.RecordCount
  loc_B6F748: ILdRf var_B4
  loc_B6F74B: LitI4 0
  loc_B6F750: GtI4
  loc_B6F751: FFree1Ad var_88
  loc_B6F754: BranchF loc_B6FA6E
  loc_B6F757: FLdRfVar var_1DC
  loc_B6F75A: FLdRfVar var_CC
  loc_B6F75D: LitVarStr var_C8, "nro_padron"
  loc_B6F762: PopAdLdVar
  loc_B6F763: FLdRfVar var_B8
  loc_B6F766: FLdRfVar var_88
  loc_B6F769: FLdPr Me
  loc_B6F76C: MemLdRfVar from_stack_1.global_60
  loc_B6F76F: NewIfNullPr clsInmueble
  loc_B6F772: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F777: FLdPr var_88
  loc_B6F77A:  = Me.Fields
  loc_B6F77F: FLdPr var_B8
  loc_B6F782: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F787: FLdPr var_CC
  loc_B6F78A:  = Me.Value
  loc_B6F78F: FLdRfVar var_F8
  loc_B6F792: FLdRfVar var_E8
  loc_B6F795: LitVarStr var_E4, "parcela_ryb_cod"
  loc_B6F79A: PopAdLdVar
  loc_B6F79B: FLdRfVar var_D4
  loc_B6F79E: FLdRfVar var_D0
  loc_B6F7A1: FLdPr Me
  loc_B6F7A4: MemLdRfVar from_stack_1.global_60
  loc_B6F7A7: NewIfNullPr clsInmueble
  loc_B6F7AA: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F7AF: FLdPr var_D0
  loc_B6F7B2:  = Me.Fields
  loc_B6F7B7: FLdPr var_D4
  loc_B6F7BA: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F7BF: FLdPr var_E8
  loc_B6F7C2:  = Me.Value
  loc_B6F7C7: FLdRfVar var_134
  loc_B6F7CA: LitVarStr var_130, "parcela_ryb_cod"
  loc_B6F7CF: PopAdLdVar
  loc_B6F7D0: FLdRfVar var_120
  loc_B6F7D3: FLdRfVar var_11C
  loc_B6F7D6: FLdPr Me
  loc_B6F7D9: MemLdRfVar from_stack_1.global_60
  loc_B6F7DC: NewIfNullPr clsInmueble
  loc_B6F7DF: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F7E4: FLdPr var_11C
  loc_B6F7E7:  = Me.Fields
  loc_B6F7EC: FLdPr var_120
  loc_B6F7EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F7F4: FLdZeroAd var_134
  loc_B6F7F7: CVarAd
  loc_B6F7FB: LitVarI2 var_164, 0
  loc_B6F800: FLdRfVar var_F8
  loc_B6F803: LitVarStr var_108, vbNullString
  loc_B6F808: HardType
  loc_B6F809: EqVar var_118
  loc_B6F80D: FStVar var_144
  loc_B6F811: FLdRfVar var_144
  loc_B6F814: FLdRfVar var_184
  loc_B6F817: ImpAdCallFPR4  = IIf(, , )
  loc_B6F81C: FLdRfVar var_1EC
  loc_B6F81F: FLdRfVar var_1A0
  loc_B6F822: LitVarStr var_19C, "parcela_avaluo"
  loc_B6F827: PopAdLdVar
  loc_B6F828: FLdRfVar var_18C
  loc_B6F82B: FLdRfVar var_188
  loc_B6F82E: FLdPr Me
  loc_B6F831: MemLdRfVar from_stack_1.global_60
  loc_B6F834: NewIfNullPr clsInmueble
  loc_B6F837: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F83C: FLdPr var_188
  loc_B6F83F:  = Me.Fields
  loc_B6F844: FLdPr var_18C
  loc_B6F847: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F84C: FLdPr var_1A0
  loc_B6F84F:  = Me.Value
  loc_B6F854: FLdRfVar var_1CC
  loc_B6F857: FLdRfVar var_1BC
  loc_B6F85A: LitVarStr var_1B8, "parcela_superficie"
  loc_B6F85F: PopAdLdVar
  loc_B6F860: FLdRfVar var_1A8
  loc_B6F863: FLdRfVar var_1A4
  loc_B6F866: FLdPr Me
  loc_B6F869: MemLdRfVar from_stack_1.global_60
  loc_B6F86C: NewIfNullPr clsInmueble
  loc_B6F86F: from_stack_1v = clsInmueble.RsFrmGet()
  loc_B6F874: FLdPr var_1A4
  loc_B6F877:  = Me.Fields
  loc_B6F87C: FLdPr var_1A8
  loc_B6F87F: from_stack_2 = Me.Item(from_stack_1)
  loc_B6F884: FLdPr var_1BC
  loc_B6F887:  = Me.Value
  loc_B6F88C: LitI4 0
  loc_B6F891: LitI4 -1
  loc_B6F896: LitI4 1
  loc_B6F89B: LitStr ","
  loc_B6F89E: LitStr "."
  loc_B6F8A1: FLdRfVar var_1CC
  loc_B6F8A4: CStrVarTmp
  loc_B6F8A5: FStStrNoPop var_8C
  loc_B6F8A8: ImpAdCallI2 Replace(, , , , , )
  loc_B6F8AD: FStStr var_94
  loc_B6F8B0: FLdRfVar var_1FC
  loc_B6F8B3: FLdPr Me
  loc_B6F8B6: MemLdR8 global_96
  loc_B6F8B9: FLdZeroAd var_94
  loc_B6F8BC: FStStrNoPop var_90
  loc_B6F8BF: CR8Str
  loc_B6F8C1: PopFPR8
  loc_B6F8C2: FLdRfVar var_1EC
  loc_B6F8C5: CI4Var
  loc_B6F8C7: FLdRfVar var_184
  loc_B6F8CA: CI2Var
  loc_B6F8CB: FLdPr Me
  loc_B6F8CE: MemLdR8 global_88
  loc_B6F8D1: FLdRfVar var_1DC
  loc_B6F8D4: CI4Var
  loc_B6F8D6: FLdPr Me
  loc_B6F8D9: MemLdRfVar from_stack_1.global_56
  loc_B6F8DC: NewIfNullPr clsliqutasa
  loc_B6F8DF: from_stack_7v = clsliqutasa.ImportedelCalculodeLiquidacion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B6F8E4: FLdRfVar var_1FC
  loc_B6F8E7: FLdPr Me
  loc_B6F8EA: MemStVar
  loc_B6F8EE: FFreeStr var_8C = "": var_90 = ""
  loc_B6F8F7: FFreeAd var_88 = "": var_B8 = "": var_D0 = "": var_D4 = "": var_E8 = "": var_11C = "": var_120 = "": var_188 = "": var_18C = "": var_1A4 = "": var_1A8 = "": var_1BC = "": var_CC = ""
  loc_B6F916: FFreeVar var_F8 = "": var_144 = "": var_164 = "": var_174 = "": var_1CC = "": var_1DC = "": var_184 = "": var_1EC = ""
  loc_B6F92B: LitVarI2 var_C8, 1
  loc_B6F930: PopAdLdVar
  loc_B6F931: FLdPr Me
  loc_B6F934: MemLdRfVar from_stack_1.global_72
  loc_B6F937: VarIndexLdVar
  loc_B6F93D: PopAd
  loc_B6F93F: FLdRfVar var_8C
  loc_B6F942: FLdPr Me
  loc_B6F945: VCallAd Control_ID_UntrPageTxt
  loc_B6F948: FStAdFunc var_88
  loc_B6F94B: FLdPr var_88
  loc_B6F94E:  = Me.Text
  loc_B6F953: LitVarI2 var_108, 2
  loc_B6F958: PopAdLdVar
  loc_B6F959: FLdPr Me
  loc_B6F95C: MemLdRfVar from_stack_1.global_72
  loc_B6F95F: VarIndexLdVar
  loc_B6F965: PopAd
  loc_B6F967: LitVarI2 var_154, 4
  loc_B6F96C: PopAdLdVar
  loc_B6F96D: FLdPr Me
  loc_B6F970: MemLdRfVar from_stack_1.global_72
  loc_B6F973: VarIndexLdVar
  loc_B6F979: PopAd
  loc_B6F97B: LitI4 1
  loc_B6F980: LitI4 1
  loc_B6F985: LitVarStr var_20C, "0.00"
  loc_B6F98A: FStVarCopyObj var_174
  loc_B6F98D: FLdRfVar var_174
  loc_B6F990: FLdRfVar var_F8
  loc_B6F993: FnCDblVar
  loc_B6F995: LitI2_Byte &H16
  loc_B6F997: CR8I2
  loc_B6F998: ILdRf var_8C
  loc_B6F99B: CR8Str
  loc_B6F99D: MulR8
  loc_B6F99E: AddR8
  loc_B6F99F: FLdRfVar var_118
  loc_B6F9A2: FnCDblVar
  loc_B6F9A4: AddR8
  loc_B6F9A5: FLdRfVar var_144
  loc_B6F9A8: FnCDblVar
  loc_B6F9AA: AddR8
  loc_B6F9AB: CVarR8
  loc_B6F9AF: FLdRfVar var_184
  loc_B6F9B2: ImpAdCallFPR4  = Format(, )
  loc_B6F9B7: FLdRfVar var_184
  loc_B6F9BA: CStrVarVal var_90
  loc_B6F9BE: FLdPr Me
  loc_B6F9C1: VCallAd Control_ID_ImpoCtctTxt
  loc_B6F9C4: FStAdFunc var_B8
  loc_B6F9C7: FLdPr var_B8
  loc_B6F9CA: Me.Text = from_stack_1
  loc_B6F9CF: FFreeStr var_8C = ""
  loc_B6F9D6: FFreeAd var_88 = ""
  loc_B6F9DD: FFreeVar var_F8 = "": var_118 = "": var_144 = "": var_164 = "": var_174 = ""
  loc_B6F9EC: FLdRfVar var_8C
  loc_B6F9EF: FLdPr Me
  loc_B6F9F2: VCallAd Control_ID_UntrPageTxt
  loc_B6F9F5: FStAdFunc var_88
  loc_B6F9F8: FLdPr var_88
  loc_B6F9FB:  = Me.Text
  loc_B6FA00: LitI4 2
  loc_B6FA05: ILdRf var_8C
  loc_B6FA08: CR8Str
  loc_B6FA0A: LitI2_Byte 2
  loc_B6FA0C: CR8I2
  loc_B6FA0D: MulR8
  loc_B6FA0E: CVarR8
  loc_B6FA12: FLdRfVar var_118
  loc_B6FA15: ImpAdCallFPR4  = Round(, )
  loc_B6FA1A: LitI4 1
  loc_B6FA1F: LitI4 1
  loc_B6FA24: LitVarStr var_E4, "0.00"
  loc_B6FA29: FStVarCopyObj var_144
  loc_B6FA2C: FLdRfVar var_144
  loc_B6FA2F: FLdRfVar var_118
  loc_B6FA32: FLdRfVar var_164
  loc_B6FA35: ImpAdCallFPR4  = Format(, )
  loc_B6FA3A: FLdRfVar var_164
  loc_B6FA3D: CStrVarVal var_90
  loc_B6FA41: FLdPr Me
  loc_B6FA44: VCallAd Control_ID_ImpoBombTxt
  loc_B6FA47: FStAdFunc var_B8
  loc_B6FA4A: FLdPr var_B8
  loc_B6FA4D: Me.Text = from_stack_1
  loc_B6FA52: FFreeStr var_8C = ""
  loc_B6FA59: FFreeAd var_88 = ""
  loc_B6FA60: FFreeVar var_F8 = "": var_118 = "": var_144 = ""
  loc_B6FA6B: Branch loc_B6FABD
  loc_B6FA6E: LitI4 1
  loc_B6FA73: LitI4 1
  loc_B6FA78: LitVarStr var_E4, "0.00"
  loc_B6FA7D: FStVarCopyObj var_118
  loc_B6FA80: FLdRfVar var_118
  loc_B6FA83: LitVarStr var_C8, "0"
  loc_B6FA88: FStVarCopyObj var_F8
  loc_B6FA8B: FLdRfVar var_F8
  loc_B6FA8E: FLdRfVar var_144
  loc_B6FA91: ImpAdCallFPR4  = Format(, )
  loc_B6FA96: FLdRfVar var_144
  loc_B6FA99: CStrVarVal var_8C
  loc_B6FA9D: FLdPr Me
  loc_B6FAA0: VCallAd Control_ID_ImpoCtctTxt
  loc_B6FAA3: FStAdFunc var_88
  loc_B6FAA6: FLdPr var_88
  loc_B6FAA9: Me.Text = from_stack_1
  loc_B6FAAE: FFree1Str var_8C
  loc_B6FAB1: FFree1Ad var_88
  loc_B6FAB4: FFreeVar var_F8 = "": var_118 = ""
  loc_B6FABD: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_GotFocus() '9BF7E0
  'Data Table: 5083E0
  loc_9BF7CC: FLdPr Me
  loc_9BF7CF: VCallAd Control_ID_ImpoCtctTxt
  loc_9BF7D2: CVarAd
  loc_9BF7D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BF7DB: FFree1Var var_94 = ""
  loc_9BF7DE: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A07BF8
  'Data Table: 5083E0
  loc_A07BC4: LitStr "1234567890,."
  loc_A07BC7: FStStrCopy var_88
  loc_A07BCA: FLdRfVar var_88
  loc_A07BCD: ILdRf KeyAscii
  loc_A07BD0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07BD5: IStI2 KeyAscii
  loc_A07BD8: FFree1Str var_88
  loc_A07BDB: ILdI2 KeyAscii
  loc_A07BDE: LitStr "."
  loc_A07BE1: ImpAdCallI2 Asc()
  loc_A07BE6: EqI2
  loc_A07BE7: BranchF loc_A07BF5
  loc_A07BEA: LitStr ","
  loc_A07BED: ImpAdCallI2 Asc()
  loc_A07BF2: IStI2 KeyAscii
  loc_A07BF5: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_LostFocus() 'A75E38
  'Data Table: 5083E0
  loc_A75DD4: FLdRfVar var_8C
  loc_A75DD7: FLdPr Me
  loc_A75DDA: VCallAd Control_ID_ImpoCtctTxt
  loc_A75DDD: FStAdFunc var_88
  loc_A75DE0: FLdPr var_88
  loc_A75DE3:  = Me.Text
  loc_A75DE8: LitI4 1
  loc_A75DED: LitI4 1
  loc_A75DF2: LitVarStr var_AC, "0.00"
  loc_A75DF7: FStVarCopyObj var_BC
  loc_A75DFA: FLdRfVar var_BC
  loc_A75DFD: FLdZeroAd var_8C
  loc_A75E00: CVarStr var_9C
  loc_A75E03: FLdRfVar var_CC
  loc_A75E06: ImpAdCallFPR4  = Format(, )
  loc_A75E0B: FLdRfVar var_CC
  loc_A75E0E: CStrVarVal var_D0
  loc_A75E12: FLdPr Me
  loc_A75E15: VCallAd Control_ID_ImpoCtctTxt
  loc_A75E18: FStAdFunc var_D4
  loc_A75E1B: FLdPr var_D4
  loc_A75E1E: Me.Text = from_stack_1
  loc_A75E23: FFree1Str var_D0
  loc_A75E26: FFreeAd var_88 = ""
  loc_A75E2D: FFreeVar var_9C = "": var_BC = ""
  loc_A75E36: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'A6A410
  'Data Table: 5083E0
  loc_A6A3A8: FLdRfVar var_8C
  loc_A6A3AB: FLdPr Me
  loc_A6A3AE: VCallAd Control_ID_ImpoCtctTxt
  loc_A6A3B1: FStAdFunc var_88
  loc_A6A3B4: FLdPr var_88
  loc_A6A3B7:  = Me.Text
  loc_A6A3BC: LitI2_Byte 0
  loc_A6A3BE: LitI2_Byte 0
  loc_A6A3C0: ILdRf var_8C
  loc_A6A3C3: LitStr "el importe"
  loc_A6A3C6: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A6A3CB: FStStrNoPop var_90
  loc_A6A3CE: FLdPr Me
  loc_A6A3D1: MemStStrCopy
  loc_A6A3D5: FFreeStr var_8C = ""
  loc_A6A3DC: FFree1Ad var_88
  loc_A6A3DF: FLdPr Me
  loc_A6A3E2: MemLdStr global_112
  loc_A6A3E5: LitStr vbNullString
  loc_A6A3E8: NeStr
  loc_A6A3EA: BranchF loc_A6A40F
  loc_A6A3ED: FLdPr Me
  loc_A6A3F0: MemLdStr global_112
  loc_A6A3F3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6A3F8: FLdPr Me
  loc_A6A3FB: VCallAd Control_ID_ImpoCtctTxt
  loc_A6A3FE: CVarAd
  loc_A6A402: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6A407: FFree1Var var_A0 = ""
  loc_A6A40A: LitI2_Byte &HFF
  loc_A6A40C: IStI2 Cancel
  loc_A6A40F: ExitProcHresult
End Sub

Private Sub UntrPageTxt_GotFocus() '9BD350
  'Data Table: 5083E0
  loc_9BD33C: FLdPr Me
  loc_9BD33F: VCallAd Control_ID_UntrPageTxt
  loc_9BD342: CVarAd
  loc_9BD346: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD34B: FFree1Var var_94 = ""
  loc_9BD34E: ExitProcHresult
End Sub

Private Sub UntrPageTxt_KeyPress(KeyAscii As Integer) 'A08550
  'Data Table: 5083E0
  loc_A0851C: LitStr "1234567890,."
  loc_A0851F: FStStrCopy var_88
  loc_A08522: FLdRfVar var_88
  loc_A08525: ILdRf KeyAscii
  loc_A08528: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0852D: IStI2 KeyAscii
  loc_A08530: FFree1Str var_88
  loc_A08533: ILdI2 KeyAscii
  loc_A08536: LitStr "."
  loc_A08539: ImpAdCallI2 Asc()
  loc_A0853E: EqI2
  loc_A0853F: BranchF loc_A0854D
  loc_A08542: LitStr ","
  loc_A08545: ImpAdCallI2 Asc()
  loc_A0854A: IStI2 KeyAscii
  loc_A0854D: ExitProcHresult
  loc_A0854E: FFree1Str arg_6803
End Sub

Private Sub UntrPageTxt_LostFocus() 'A73BD8
  'Data Table: 5083E0
  loc_A73B74: FLdRfVar var_8C
  loc_A73B77: FLdPr Me
  loc_A73B7A: VCallAd Control_ID_UntrPageTxt
  loc_A73B7D: FStAdFunc var_88
  loc_A73B80: FLdPr var_88
  loc_A73B83:  = Me.Text
  loc_A73B88: LitI4 1
  loc_A73B8D: LitI4 1
  loc_A73B92: LitVarStr var_AC, "0.00"
  loc_A73B97: FStVarCopyObj var_BC
  loc_A73B9A: FLdRfVar var_BC
  loc_A73B9D: FLdZeroAd var_8C
  loc_A73BA0: CVarStr var_9C
  loc_A73BA3: FLdRfVar var_CC
  loc_A73BA6: ImpAdCallFPR4  = Format(, )
  loc_A73BAB: FLdRfVar var_CC
  loc_A73BAE: CStrVarVal var_D0
  loc_A73BB2: FLdPr Me
  loc_A73BB5: VCallAd Control_ID_UntrPageTxt
  loc_A73BB8: FStAdFunc var_D4
  loc_A73BBB: FLdPr var_D4
  loc_A73BBE: Me.Text = from_stack_1
  loc_A73BC3: FFree1Str var_D0
  loc_A73BC6: FFreeAd var_88 = ""
  loc_A73BCD: FFreeVar var_9C = "": var_BC = ""
  loc_A73BD6: ExitProcHresult
End Sub

Private Sub UntrPageTxt_Validate(Cancel As Boolean) 'A8185C
  'Data Table: 5083E0
  loc_A817D4: FLdRfVar var_8A
  loc_A817D7: FLdPr Me
  loc_A817DA: VCallAd Control_ID_UntrPageTxt
  loc_A817DD: FStAdFunc var_88
  loc_A817E0: FLdPr var_88
  loc_A817E3:  = Me.Enabled
  loc_A817E8: FLdI2 var_8A
  loc_A817EB: FFree1Ad var_88
  loc_A817EE: BranchF loc_A81859
  loc_A817F1: FLdRfVar var_90
  loc_A817F4: FLdPr Me
  loc_A817F7: VCallAd Control_ID_UntrPageTxt
  loc_A817FA: FStAdFunc var_88
  loc_A817FD: FLdPr var_88
  loc_A81800:  = Me.Text
  loc_A81805: LitI2_Byte 0
  loc_A81807: LitI2_Byte 0
  loc_A81809: ILdRf var_90
  loc_A8180C: LitStr "Unidad Tributaria Municipal"
  loc_A8180F: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A81814: FStStrNoPop var_94
  loc_A81817: FLdPr Me
  loc_A8181A: MemStStrCopy
  loc_A8181E: FFreeStr var_90 = ""
  loc_A81825: FFree1Ad var_88
  loc_A81828: FLdPr Me
  loc_A8182B: MemLdStr global_112
  loc_A8182E: LitStr vbNullString
  loc_A81831: NeStr
  loc_A81833: BranchF loc_A81859
  loc_A81836: FLdPr Me
  loc_A81839: MemLdStr global_112
  loc_A8183C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81841: FLdPr Me
  loc_A81844: VCallAd Control_ID_UntrPageTxt
  loc_A81847: CVarAd
  loc_A8184B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81850: FFree1Var var_A4 = ""
  loc_A81853: LitI2_Byte &HFF
  loc_A81855: IStI2 Cancel
  loc_A81858: ExitProcHresult
  loc_A81859: ExitProcHresult
  loc_A8185A: CStr2Ansi
End Sub

Private Sub SalirCmd_Click() '9CA7BC
  'Data Table: 5083E0
  loc_9CA7A4: ILdRf Me
  loc_9CA7A7: FStAdNoPop
  loc_9CA7AB: ImpAdLdRf MemVar_D9C5D8
  loc_9CA7AE: NewIfNullPr Global
  loc_9CA7B1: Global.Unload from_stack_1
  loc_9CA7B6: FFree1Ad var_88
  loc_9CA7B9: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B356C8
  'Data Table: 5083E0
  loc_B353EC: FLdRfVar var_8A
  loc_B353EF: FLdPr Me
  loc_B353F2: VCallAd Control_ID_OficinaCbo
  loc_B353F5: FStAdFunc var_88
  loc_B353F8: FLdPr var_88
  loc_B353FB:  = Me.ListIndex
  loc_B35400: FLdI2 var_8A
  loc_B35403: FStI2 var_8C
  loc_B35406: FFree1Ad var_88
  loc_B35409: FLdI2 var_8C
  loc_B3540C: LitI2_Byte 0
  loc_B3540E: EqI2
  loc_B3540F: BranchF loc_B3541D
  loc_B35412: LitI2_Byte 1
  loc_B35414: CUI1I2
  loc_B35416: ImpAdStUI1 MemVar_D93038
  loc_B3541A: Branch loc_B35492
  loc_B3541D: FLdI2 var_8C
  loc_B35420: LitI2_Byte 1
  loc_B35422: EqI2
  loc_B35423: BranchF loc_B35431
  loc_B35426: LitI2_Byte 2
  loc_B35428: CUI1I2
  loc_B3542A: ImpAdStUI1 MemVar_D93038
  loc_B3542E: Branch loc_B35492
  loc_B35431: FLdI2 var_8C
  loc_B35434: LitI2_Byte 2
  loc_B35436: EqI2
  loc_B35437: BranchF loc_B35445
  loc_B3543A: LitI2_Byte 3
  loc_B3543C: CUI1I2
  loc_B3543E: ImpAdStUI1 MemVar_D93038
  loc_B35442: Branch loc_B35492
  loc_B35445: FLdI2 var_8C
  loc_B35448: LitI2_Byte 3
  loc_B3544A: EqI2
  loc_B3544B: BranchF loc_B35459
  loc_B3544E: LitI2_Byte 4
  loc_B35450: CUI1I2
  loc_B35452: ImpAdStUI1 MemVar_D93038
  loc_B35456: Branch loc_B35492
  loc_B35459: FLdI2 var_8C
  loc_B3545C: LitI2_Byte 4
  loc_B3545E: EqI2
  loc_B3545F: BranchF loc_B3546D
  loc_B35462: LitI2_Byte 5
  loc_B35464: CUI1I2
  loc_B35466: ImpAdStUI1 MemVar_D93038
  loc_B3546A: Branch loc_B35492
  loc_B3546D: FLdI2 var_8C
  loc_B35470: LitI2_Byte 5
  loc_B35472: EqI2
  loc_B35473: BranchF loc_B35481
  loc_B35476: LitI2_Byte 6
  loc_B35478: CUI1I2
  loc_B3547A: ImpAdStUI1 MemVar_D93038
  loc_B3547E: Branch loc_B35492
  loc_B35481: FLdI2 var_8C
  loc_B35484: LitI2_Byte 6
  loc_B35486: EqI2
  loc_B35487: BranchF loc_B35492
  loc_B3548A: LitI2_Byte 7
  loc_B3548C: CUI1I2
  loc_B3548E: ImpAdStUI1 MemVar_D93038
  loc_B35492: ImpAdLdUI1
  loc_B35496: CI2UI1
  loc_B35498: LitI2_Byte 0
  loc_B3549A: NeI2
  loc_B3549B: FLdRfVar var_90
  loc_B3549E: FLdPr Me
  loc_B354A1: VCallAd Control_ID_NumeCtaTxt
  loc_B354A4: FStAdFunc var_88
  loc_B354A7: FLdPr var_88
  loc_B354AA:  = Me.Text
  loc_B354AF: ILdRf var_90
  loc_B354B2: LitStr vbNullString
  loc_B354B5: NeStr
  loc_B354B7: AndI4
  loc_B354B8: FLdRfVar var_98
  loc_B354BB: FLdPr Me
  loc_B354BE: VCallAd Control_ID_NumeCtaTxt
  loc_B354C1: FStAdFunc var_94
  loc_B354C4: FLdPr var_94
  loc_B354C7:  = Me.Text
  loc_B354CC: ILdRf var_98
  loc_B354CF: LitStr "0"
  loc_B354D2: NeStr
  loc_B354D4: AndI4
  loc_B354D5: FFreeStr var_90 = ""
  loc_B354DC: FFreeAd var_88 = ""
  loc_B354E3: BranchF loc_B356C7
  loc_B354E6: FLdRfVar var_90
  loc_B354E9: FLdPr Me
  loc_B354EC: VCallAd Control_ID_NumeCtaTxt
  loc_B354EF: FStAdFunc var_88
  loc_B354F2: FLdPr var_88
  loc_B354F5:  = Me.Text
  loc_B354FA: FLdPr Me
  loc_B354FD: MemLdRfVar from_stack_1.global_68
  loc_B35500: NewIfNullRf
  loc_B35504: LitStr "Titular"
  loc_B35507: ILdRf var_90
  loc_B3550A: ImpAdLdUI1
  loc_B3550E: CStrI2
  loc_B35510: FStStrNoPop var_98
  loc_B35513: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B35518: FFreeStr var_98 = ""
  loc_B3551F: FFree1Ad var_88
  loc_B35522: BranchF loc_B35647
  loc_B35525: FLdRfVar var_90
  loc_B35528: FLdPr Me
  loc_B3552B: MemLdRfVar from_stack_1.global_68
  loc_B3552E: NewIfNullPr tblPersona
  loc_B35531: from_stack_1v = tblPersona.CucuPersGet()
  loc_B35536: ILdRf var_90
  loc_B35539: FLdPr Me
  loc_B3553C: VCallAd Control_ID_CucuPersLbl
  loc_B3553F: FStAdFunc var_88
  loc_B35542: FLdPr var_88
  loc_B35545: Me.Caption = from_stack_1
  loc_B3554A: FFree1Str var_90
  loc_B3554D: FFree1Ad var_88
  loc_B35550: FLdRfVar var_90
  loc_B35553: FLdPr Me
  loc_B35556: MemLdRfVar from_stack_1.global_68
  loc_B35559: NewIfNullPr tblPersona
  loc_B3555C: from_stack_1v = tblPersona.DetaPersGet()
  loc_B35561: ILdRf var_90
  loc_B35564: FLdPr Me
  loc_B35567: VCallAd Control_ID_DetaPersLbl
  loc_B3556A: FStAdFunc var_88
  loc_B3556D: FLdPr var_88
  loc_B35570: Me.Caption = from_stack_1
  loc_B35575: FFree1Str var_90
  loc_B35578: FFree1Ad var_88
  loc_B3557B: FLdRfVar var_98
  loc_B3557E: FLdPr Me
  loc_B35581: MemLdRfVar from_stack_1.global_68
  loc_B35584: NewIfNullPr tblPersona
  loc_B35587: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3558C: FLdRfVar var_9C
  loc_B3558F: FLdPr Me
  loc_B35592: MemLdRfVar from_stack_1.global_68
  loc_B35595: NewIfNullPr tblPersona
  loc_B35598: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3559D: FLdRfVar var_90
  loc_B355A0: FLdPr Me
  loc_B355A3: MemLdRfVar from_stack_1.global_68
  loc_B355A6: NewIfNullPr tblPersona
  loc_B355A9: from_stack_1v = tblPersona.DetaCallGet()
  loc_B355AE: ILdRf var_90
  loc_B355B1: LitStr " "
  loc_B355B4: ConcatStr
  loc_B355B5: CVarStr var_FC
  loc_B355B8: LitVarStr var_CC, vbNullString
  loc_B355BD: FStVarCopyObj var_DC
  loc_B355C0: FLdRfVar var_DC
  loc_B355C3: LitStr "Nro: "
  loc_B355C6: ILdRf var_9C
  loc_B355C9: ConcatStr
  loc_B355CA: CVarStr var_BC
  loc_B355CD: ILdRf var_98
  loc_B355D0: LitStr "0"
  loc_B355D3: NeStr
  loc_B355D5: CVarBoolI2 var_AC
  loc_B355D9: FLdRfVar var_EC
  loc_B355DC: ImpAdCallFPR4  = IIf(, , )
  loc_B355E1: FLdRfVar var_EC
  loc_B355E4: ConcatVar var_10C
  loc_B355E8: LitVarStr var_11C, " "
  loc_B355ED: ConcatVar var_12C
  loc_B355F1: FLdRfVar var_130
  loc_B355F4: FLdPr Me
  loc_B355F7: MemLdRfVar from_stack_1.global_68
  loc_B355FA: NewIfNullPr tblPersona
  loc_B355FD: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B35602: FLdZeroAd var_130
  loc_B35605: CVarStr var_140
  loc_B35608: ConcatVar var_150
  loc_B3560C: CStrVarVal var_154
  loc_B35610: FLdPr Me
  loc_B35613: VCallAd Control_ID_DomiPersLbl
  loc_B35616: FStAdFunc var_88
  loc_B35619: FLdPr var_88
  loc_B3561C: Me.Caption = from_stack_1
  loc_B35621: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B3562C: FFree1Ad var_88
  loc_B3562F: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B35644: Branch loc_B356C7
  loc_B35647: FLdRfVar var_90
  loc_B3564A: FLdPr Me
  loc_B3564D: MemLdRfVar from_stack_1.global_68
  loc_B35650: NewIfNullPr tblPersona
  loc_B35653: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B35658: ILdRf var_90
  loc_B3565B: FLdPr Me
  loc_B3565E: MemStStrCopy
  loc_B35662: FFree1Str var_90
  loc_B35665: FLdPr Me
  loc_B35668: MemLdStr global_112
  loc_B3566B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B35670: LitStr vbNullString
  loc_B35673: FLdPr Me
  loc_B35676: VCallAd Control_ID_CucuPersLbl
  loc_B35679: FStAdFunc var_88
  loc_B3567C: FLdPr var_88
  loc_B3567F: Me.Caption = from_stack_1
  loc_B35684: FFree1Ad var_88
  loc_B35687: LitStr vbNullString
  loc_B3568A: FLdPr Me
  loc_B3568D: VCallAd Control_ID_DetaPersLbl
  loc_B35690: FStAdFunc var_88
  loc_B35693: FLdPr var_88
  loc_B35696: Me.Caption = from_stack_1
  loc_B3569B: FFree1Ad var_88
  loc_B3569E: LitStr vbNullString
  loc_B356A1: FLdPr Me
  loc_B356A4: VCallAd Control_ID_DomiPersLbl
  loc_B356A7: FStAdFunc var_88
  loc_B356AA: FLdPr var_88
  loc_B356AD: Me.Caption = from_stack_1
  loc_B356B2: FFree1Ad var_88
  loc_B356B5: FLdPr Me
  loc_B356B8: VCallAd Control_ID_NumeCtaTxt
  loc_B356BB: CVarAd
  loc_B356BF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B356C4: FFree1Var var_BC = ""
  loc_B356C7: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() '9B0234
  'Data Table: 5083E0
  loc_9B022C: Call Proc_299_35_B17868()
  loc_9B0231: ExitProcHresult
End Sub

Private Sub ImpoBombTxt_GotFocus() '9C01B8
  'Data Table: 5083E0
  loc_9C01A4: FLdPr Me
  loc_9C01A7: VCallAd Control_ID_ImpoBombTxt
  loc_9C01AA: CVarAd
  loc_9C01AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C01B3: FFree1Var var_94 = ""
  loc_9C01B6: ExitProcHresult
End Sub

Private Sub ImpoBombTxt_KeyPress(KeyAscii As Integer) 'A07B90
  'Data Table: 5083E0
  loc_A07B5C: LitStr "1234567890,."
  loc_A07B5F: FStStrCopy var_88
  loc_A07B62: FLdRfVar var_88
  loc_A07B65: ILdRf KeyAscii
  loc_A07B68: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07B6D: IStI2 KeyAscii
  loc_A07B70: FFree1Str var_88
  loc_A07B73: ILdI2 KeyAscii
  loc_A07B76: LitStr "."
  loc_A07B79: ImpAdCallI2 Asc()
  loc_A07B7E: EqI2
  loc_A07B7F: BranchF loc_A07B8D
  loc_A07B82: LitStr ","
  loc_A07B85: ImpAdCallI2 Asc()
  loc_A07B8A: IStI2 KeyAscii
  loc_A07B8D: ExitProcHresult
End Sub

Private Sub ImpoBombTxt_LostFocus() 'A75288
  'Data Table: 5083E0
  loc_A75224: FLdRfVar var_8C
  loc_A75227: FLdPr Me
  loc_A7522A: VCallAd Control_ID_ImpoBombTxt
  loc_A7522D: FStAdFunc var_88
  loc_A75230: FLdPr var_88
  loc_A75233:  = Me.Text
  loc_A75238: LitI4 1
  loc_A7523D: LitI4 1
  loc_A75242: LitVarStr var_AC, "0.00"
  loc_A75247: FStVarCopyObj var_BC
  loc_A7524A: FLdRfVar var_BC
  loc_A7524D: FLdZeroAd var_8C
  loc_A75250: CVarStr var_9C
  loc_A75253: FLdRfVar var_CC
  loc_A75256: ImpAdCallFPR4  = Format(, )
  loc_A7525B: FLdRfVar var_CC
  loc_A7525E: CStrVarVal var_D0
  loc_A75262: FLdPr Me
  loc_A75265: VCallAd Control_ID_ImpoBombTxt
  loc_A75268: FStAdFunc var_D4
  loc_A7526B: FLdPr var_D4
  loc_A7526E: Me.Text = from_stack_1
  loc_A75273: FFree1Str var_D0
  loc_A75276: FFreeAd var_88 = ""
  loc_A7527D: FFreeVar var_9C = "": var_BC = ""
  loc_A75286: ExitProcHresult
End Sub

Private Sub ImpoBombTxt_Validate(Cancel As Boolean) 'A6B7C0
  'Data Table: 5083E0
  loc_A6B758: FLdRfVar var_8C
  loc_A6B75B: FLdPr Me
  loc_A6B75E: VCallAd Control_ID_ImpoBombTxt
  loc_A6B761: FStAdFunc var_88
  loc_A6B764: FLdPr var_88
  loc_A6B767:  = Me.Text
  loc_A6B76C: LitI2_Byte 0
  loc_A6B76E: LitI2_Byte 0
  loc_A6B770: ILdRf var_8C
  loc_A6B773: LitStr "el importe"
  loc_A6B776: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A6B77B: FStStrNoPop var_90
  loc_A6B77E: FLdPr Me
  loc_A6B781: MemStStrCopy
  loc_A6B785: FFreeStr var_8C = ""
  loc_A6B78C: FFree1Ad var_88
  loc_A6B78F: FLdPr Me
  loc_A6B792: MemLdStr global_112
  loc_A6B795: LitStr vbNullString
  loc_A6B798: NeStr
  loc_A6B79A: BranchF loc_A6B7BF
  loc_A6B79D: FLdPr Me
  loc_A6B7A0: MemLdStr global_112
  loc_A6B7A3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6B7A8: FLdPr Me
  loc_A6B7AB: VCallAd Control_ID_ImpoBombTxt
  loc_A6B7AE: CVarAd
  loc_A6B7B2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6B7B7: FFree1Var var_A0 = ""
  loc_A6B7BA: LitI2_Byte &HFF
  loc_A6B7BC: IStI2 Cancel
  loc_A6B7BF: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'BCA094
  'Data Table: 5083E0
  loc_BC99B0: LitStr vbNullString
  loc_BC99B3: FLdPr Me
  loc_BC99B6: MemStStrCopy
  loc_BC99BA: LitI2_Byte 0
  loc_BC99BC: PopTmpLdAd2 var_92
  loc_BC99BF: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_BC99C4: FLdPr Me
  loc_BC99C7: MemLdStr global_112
  loc_BC99CA: LitStr vbNullString
  loc_BC99CD: NeStr
  loc_BC99CF: BranchF loc_BC99D3
  loc_BC99D2: ExitProcHresult
  loc_BC99D3: LitI2_Byte 0
  loc_BC99D5: PopTmpLdAd2 var_92
  loc_BC99D8: Call PeriCtctTxt_Validate(from_stack_1v)
  loc_BC99DD: FLdPr Me
  loc_BC99E0: MemLdStr global_112
  loc_BC99E3: LitStr vbNullString
  loc_BC99E6: NeStr
  loc_BC99E8: BranchF loc_BC99EC
  loc_BC99EB: ExitProcHresult
  loc_BC99EC: LitI2_Byte 0
  loc_BC99EE: PopTmpLdAd2 var_92
  loc_BC99F1: Call DesdeBimeCtct_Validate(from_stack_1v)
  loc_BC99F6: FLdPr Me
  loc_BC99F9: MemLdStr global_112
  loc_BC99FC: LitStr vbNullString
  loc_BC99FF: NeStr
  loc_BC9A01: BranchF loc_BC9A05
  loc_BC9A04: ExitProcHresult
  loc_BC9A05: LitI2_Byte 0
  loc_BC9A07: PopTmpLdAd2 var_92
  loc_BC9A0A: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_BC9A0F: FLdPr Me
  loc_BC9A12: MemLdStr global_112
  loc_BC9A15: LitStr vbNullString
  loc_BC9A18: NeStr
  loc_BC9A1A: BranchF loc_BC9A1E
  loc_BC9A1D: ExitProcHresult
  loc_BC9A1E: LitI2_Byte 0
  loc_BC9A20: PopTmpLdAd2 var_92
  loc_BC9A23: Call ImpoBombTxt_Validate(from_stack_1v)
  loc_BC9A28: FLdPr Me
  loc_BC9A2B: MemLdStr global_112
  loc_BC9A2E: LitStr vbNullString
  loc_BC9A31: NeStr
  loc_BC9A33: BranchF loc_BC9A37
  loc_BC9A36: ExitProcHresult
  loc_BC9A37: LitVarStr var_A4, "##/##/####"
  loc_BC9A3C: PopAdLdVar
  loc_BC9A3D: FLdPr Me
  loc_BC9A40: VCallAd Control_ID_FechVencMsk
  loc_BC9A43: FStAdFunc var_B8
  loc_BC9A46: FLdPr var_B8
  loc_BC9A49: LateIdSt
  loc_BC9A4E: FFree1Ad var_B8
  loc_BC9A51: FLdRfVar var_92
  loc_BC9A54: FLdPr Me
  loc_BC9A57: VCallAd Control_ID_OficinaCbo
  loc_BC9A5A: FStAdFunc var_B8
  loc_BC9A5D: FLdPr var_B8
  loc_BC9A60:  = Me.ListIndex
  loc_BC9A65: FLdI2 var_92
  loc_BC9A68: FStI2 var_BA
  loc_BC9A6B: FFree1Ad var_B8
  loc_BC9A6E: FLdI2 var_BA
  loc_BC9A71: LitI2_Byte 0
  loc_BC9A73: EqI2
  loc_BC9A74: BranchF loc_BC9A82
  loc_BC9A77: LitI2_Byte 1
  loc_BC9A79: CUI1I2
  loc_BC9A7B: ImpAdStUI1 MemVar_D93038
  loc_BC9A7F: Branch loc_BC9AF7
  loc_BC9A82: FLdI2 var_BA
  loc_BC9A85: LitI2_Byte 1
  loc_BC9A87: EqI2
  loc_BC9A88: BranchF loc_BC9A96
  loc_BC9A8B: LitI2_Byte 2
  loc_BC9A8D: CUI1I2
  loc_BC9A8F: ImpAdStUI1 MemVar_D93038
  loc_BC9A93: Branch loc_BC9AF7
  loc_BC9A96: FLdI2 var_BA
  loc_BC9A99: LitI2_Byte 2
  loc_BC9A9B: EqI2
  loc_BC9A9C: BranchF loc_BC9AAA
  loc_BC9A9F: LitI2_Byte 3
  loc_BC9AA1: CUI1I2
  loc_BC9AA3: ImpAdStUI1 MemVar_D93038
  loc_BC9AA7: Branch loc_BC9AF7
  loc_BC9AAA: FLdI2 var_BA
  loc_BC9AAD: LitI2_Byte 3
  loc_BC9AAF: EqI2
  loc_BC9AB0: BranchF loc_BC9ABE
  loc_BC9AB3: LitI2_Byte 4
  loc_BC9AB5: CUI1I2
  loc_BC9AB7: ImpAdStUI1 MemVar_D93038
  loc_BC9ABB: Branch loc_BC9AF7
  loc_BC9ABE: FLdI2 var_BA
  loc_BC9AC1: LitI2_Byte 4
  loc_BC9AC3: EqI2
  loc_BC9AC4: BranchF loc_BC9AD2
  loc_BC9AC7: LitI2_Byte 5
  loc_BC9AC9: CUI1I2
  loc_BC9ACB: ImpAdStUI1 MemVar_D93038
  loc_BC9ACF: Branch loc_BC9AF7
  loc_BC9AD2: FLdI2 var_BA
  loc_BC9AD5: LitI2_Byte 5
  loc_BC9AD7: EqI2
  loc_BC9AD8: BranchF loc_BC9AE6
  loc_BC9ADB: LitI2_Byte 6
  loc_BC9ADD: CUI1I2
  loc_BC9ADF: ImpAdStUI1 MemVar_D93038
  loc_BC9AE3: Branch loc_BC9AF7
  loc_BC9AE6: FLdI2 var_BA
  loc_BC9AE9: LitI2_Byte 6
  loc_BC9AEB: EqI2
  loc_BC9AEC: BranchF loc_BC9AF7
  loc_BC9AEF: LitI2_Byte 7
  loc_BC9AF1: CUI1I2
  loc_BC9AF3: ImpAdStUI1 MemVar_D93038
  loc_BC9AF7: LitI2_Byte &HB
  loc_BC9AF9: FLdPr Me
  loc_BC9AFC: Me.MousePointer = from_stack_1
  loc_BC9B01: FLdRfVar var_C0
  loc_BC9B04: FLdPr Me
  loc_BC9B07: VCallAd Control_ID_DesdeBimeCtct
  loc_BC9B0A: FStAdFunc var_B8
  loc_BC9B0D: FLdPr var_B8
  loc_BC9B10:  = Me.Text
  loc_BC9B15: ILdRf var_C0
  loc_BC9B18: CR8Str
  loc_BC9B1A: CI2R8
  loc_BC9B1B: FLdRfVar var_8A
  loc_BC9B1E: FLdRfVar var_C8
  loc_BC9B21: FLdPr Me
  loc_BC9B24: VCallAd Control_ID_HastaBimeCtct
  loc_BC9B27: FStAdFunc var_C4
  loc_BC9B2A: FLdPr var_C4
  loc_BC9B2D:  = Me.Text
  loc_BC9B32: ILdRf var_C8
  loc_BC9B35: CR8Str
  loc_BC9B37: CI2R8
  loc_BC9B38: FFreeStr var_C0 = ""
  loc_BC9B3F: FFreeAd var_B8 = ""
  loc_BC9B46: ForI2 var_CC
  loc_BC9B4C: LitI2_Byte 0
  loc_BC9B4E: FLdPr Me
  loc_BC9B51: VCallAd Control_ID_ConfirmarCmd
  loc_BC9B54: FStAdFunc var_B8
  loc_BC9B57: FLdPr var_B8
  loc_BC9B5A: Me.Enabled = from_stack_1b
  loc_BC9B5F: FFree1Ad var_B8
  loc_BC9B62: FLdRfVar var_C0
  loc_BC9B65: FLdPr Me
  loc_BC9B68: VCallAd Control_ID_PeriCtctTxt
  loc_BC9B6B: FStAdFunc var_B8
  loc_BC9B6E: FLdPr var_B8
  loc_BC9B71:  = Me.Text
  loc_BC9B76: LitI2_Byte 1
  loc_BC9B78: CUI1I2
  loc_BC9B7A: LitI2_Byte 1
  loc_BC9B7C: CUI1I2
  loc_BC9B7E: FLdI2 var_8A
  loc_BC9B81: CUI1I2
  loc_BC9B83: ILdRf var_C0
  loc_BC9B86: CI2Str
  loc_BC9B88: ImpAdCallI2  = Proc_270_61_ABC3B4()
  loc_BC9B8D: FStStr var_90
  loc_BC9B90: FFree1Str var_C0
  loc_BC9B93: FFree1Ad var_B8
  loc_BC9B96: FLdRfVar var_D0
  loc_BC9B99: FLdRfVar var_C0
  loc_BC9B9C: FLdPr Me
  loc_BC9B9F: VCallAd Control_ID_PeriCtctTxt
  loc_BC9BA2: FStAdFunc var_B8
  loc_BC9BA5: FLdPr var_B8
  loc_BC9BA8:  = Me.Text
  loc_BC9BAD: ILdRf var_C0
  loc_BC9BB0: CI2Str
  loc_BC9BB2: FLdPr Me
  loc_BC9BB5: MemLdRfVar from_stack_1.global_52
  loc_BC9BB8: NewIfNullPr clsctacte
  loc_BC9BBB: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_BC9BC0: ILdRf var_D0
  loc_BC9BC3: FStR4 var_88
  loc_BC9BC6: FFree1Str var_C0
  loc_BC9BC9: FFree1Ad var_B8
  loc_BC9BCC: FLdRfVar var_C0
  loc_BC9BCF: FLdPr Me
  loc_BC9BD2: VCallAd Control_ID_NumeCtaTxt
  loc_BC9BD5: FStAdFunc var_B8
  loc_BC9BD8: FLdPr var_B8
  loc_BC9BDB:  = Me.Text
  loc_BC9BE0: FLdRfVar var_C8
  loc_BC9BE3: FLdPr Me
  loc_BC9BE6: VCallAd Control_ID_PeriCtctTxt
  loc_BC9BE9: FStAdFunc var_C4
  loc_BC9BEC: FLdPr var_C4
  loc_BC9BEF:  = Me.Text
  loc_BC9BF4: FLdPr Me
  loc_BC9BF7: MemLdRfVar from_stack_1.global_88
  loc_BC9BFA: CVarRef
  loc_BC9BFF: FLdRfVar var_E0
  loc_BC9C02: ImpAdCallFPR4  = Year()
  loc_BC9C07: FLdRfVar var_E8
  loc_BC9C0A: FLdPr Me
  loc_BC9C0D: VCallAd Control_ID_ExpeCtctTxt
  loc_BC9C10: FStAdFunc var_E4
  loc_BC9C13: FLdPr var_E4
  loc_BC9C16:  = Me.Text
  loc_BC9C1B: FLdRfVar var_F0
  loc_BC9C1E: FLdPr Me
  loc_BC9C21: VCallAd Control_ID_DetaCtctTxt
  loc_BC9C24: FStAdFunc var_EC
  loc_BC9C27: FLdPr var_EC
  loc_BC9C2A:  = Me.Text
  loc_BC9C2F: FLdRfVar var_F8
  loc_BC9C32: FLdPr Me
  loc_BC9C35: VCallAd Control_ID_ImpoCtctTxt
  loc_BC9C38: FStAdFunc var_F4
  loc_BC9C3B: FLdPr var_F4
  loc_BC9C3E:  = Me.Text
  loc_BC9C43: LitI2_Byte 0
  loc_BC9C45: CR8I2
  loc_BC9C46: PopFPR8
  loc_BC9C47: ILdRf var_F8
  loc_BC9C4A: CR8Str
  loc_BC9C4C: PopFPR8
  loc_BC9C4D: LitStr "Fraccionamiento. "
  loc_BC9C50: ILdRf var_F0
  loc_BC9C53: ConcatStr
  loc_BC9C54: FStStrNoPop var_10C
  loc_BC9C57: LitI4 0
  loc_BC9C5C: LitI2_Byte 0
  loc_BC9C5E: LitStr vbNullString
  loc_BC9C61: ILdRf var_E8
  loc_BC9C64: LitI2_Byte 1
  loc_BC9C66: CUI1I2
  loc_BC9C68: LitI4 0
  loc_BC9C6D: LitI2_Byte 0
  loc_BC9C6F: LitI4 0
  loc_BC9C74: FLdPr Me
  loc_BC9C77: MemLdStr global_108
  loc_BC9C7A: FLdRfVar var_E0
  loc_BC9C7D: CI2Var
  loc_BC9C7E: LitI2_Byte 0
  loc_BC9C80: LitStr vbNullString
  loc_BC9C83: ILdRf var_90
  loc_BC9C86: CVarStr var_108
  loc_BC9C89: PopAdLdVar
  loc_BC9C8A: FLdPr Me
  loc_BC9C8D: MemLdFPR8 global_88
  loc_BC9C90: CVarDate var_B4
  loc_BC9C94: PopAdLdVar
  loc_BC9C95: LitStr "Aforos Varios"
  loc_BC9C98: LitI4 0
  loc_BC9C9D: LitI2_Byte 0
  loc_BC9C9F: LitI2_Byte 0
  loc_BC9CA1: LitI2_Byte 0
  loc_BC9CA3: CUI1I2
  loc_BC9CA5: LitI2_Byte 1
  loc_BC9CA7: ILdRf var_88
  loc_BC9CAA: FLdI2 var_8A
  loc_BC9CAD: ILdRf var_C8
  loc_BC9CB0: CI2Str
  loc_BC9CB2: ILdRf var_C0
  loc_BC9CB5: ImpAdLdUI1
  loc_BC9CB9: FLdPr Me
  loc_BC9CBC: MemLdRfVar from_stack_1.global_52
  loc_BC9CBF: NewIfNullPr clsctacte
  loc_BC9CC2: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BC9CC7: FFreeStr var_F0 = "": var_C0 = "": var_C8 = "": var_E8 = "": var_10C = ""
  loc_BC9CD6: FFreeAd var_B8 = "": var_C4 = "": var_E4 = "": var_EC = ""
  loc_BC9CE3: FFree1Var var_E0 = ""
  loc_BC9CE6: FLdRfVar var_D0
  loc_BC9CE9: FLdRfVar var_C0
  loc_BC9CEC: FLdPr Me
  loc_BC9CEF: VCallAd Control_ID_PeriCtctTxt
  loc_BC9CF2: FStAdFunc var_B8
  loc_BC9CF5: FLdPr var_B8
  loc_BC9CF8:  = Me.Text
  loc_BC9CFD: ILdRf var_C0
  loc_BC9D00: CI2Str
  loc_BC9D02: FLdPr Me
  loc_BC9D05: MemLdRfVar from_stack_1.global_52
  loc_BC9D08: NewIfNullPr clsctacte
  loc_BC9D0B: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_BC9D10: ILdRf var_D0
  loc_BC9D13: FStR4 var_88
  loc_BC9D16: FFree1Str var_C0
  loc_BC9D19: FFree1Ad var_B8
  loc_BC9D1C: FLdRfVar var_C0
  loc_BC9D1F: FLdPr Me
  loc_BC9D22: VCallAd Control_ID_NumeCtaTxt
  loc_BC9D25: FStAdFunc var_B8
  loc_BC9D28: FLdPr var_B8
  loc_BC9D2B:  = Me.Text
  loc_BC9D30: FLdRfVar var_C8
  loc_BC9D33: FLdPr Me
  loc_BC9D36: VCallAd Control_ID_PeriCtctTxt
  loc_BC9D39: FStAdFunc var_C4
  loc_BC9D3C: FLdPr var_C4
  loc_BC9D3F:  = Me.Text
  loc_BC9D44: FLdPr Me
  loc_BC9D47: MemLdRfVar from_stack_1.global_88
  loc_BC9D4A: CVarRef
  loc_BC9D4F: FLdRfVar var_E0
  loc_BC9D52: ImpAdCallFPR4  = Year()
  loc_BC9D57: FLdRfVar var_E8
  loc_BC9D5A: FLdPr Me
  loc_BC9D5D: VCallAd Control_ID_ExpeCtctTxt
  loc_BC9D60: FStAdFunc var_E4
  loc_BC9D63: FLdPr var_E4
  loc_BC9D66:  = Me.Text
  loc_BC9D6B: FLdRfVar var_F0
  loc_BC9D6E: FLdPr Me
  loc_BC9D71: VCallAd Control_ID_DetaCtctTxt
  loc_BC9D74: FStAdFunc var_EC
  loc_BC9D77: FLdPr var_EC
  loc_BC9D7A:  = Me.Text
  loc_BC9D7F: FLdRfVar var_F8
  loc_BC9D82: FLdPr Me
  loc_BC9D85: VCallAd Control_ID_ImpoBombTxt
  loc_BC9D88: FStAdFunc var_F4
  loc_BC9D8B: FLdPr var_F4
  loc_BC9D8E:  = Me.Text
  loc_BC9D93: LitI2_Byte 0
  loc_BC9D95: CR8I2
  loc_BC9D96: PopFPR8
  loc_BC9D97: ILdRf var_F8
  loc_BC9D9A: CR8Str
  loc_BC9D9C: PopFPR8
  loc_BC9D9D: LitStr "Fraccionamiento. "
  loc_BC9DA0: ILdRf var_F0
  loc_BC9DA3: ConcatStr
  loc_BC9DA4: FStStrNoPop var_10C
  loc_BC9DA7: LitI4 0
  loc_BC9DAC: LitI2_Byte 0
  loc_BC9DAE: LitStr vbNullString
  loc_BC9DB1: ILdRf var_E8
  loc_BC9DB4: LitI2_Byte 1
  loc_BC9DB6: CUI1I2
  loc_BC9DB8: LitI4 0
  loc_BC9DBD: LitI2_Byte 0
  loc_BC9DBF: LitI4 0
  loc_BC9DC4: LitStr "13031500"
  loc_BC9DC7: FLdRfVar var_E0
  loc_BC9DCA: CI2Var
  loc_BC9DCB: LitI2_Byte 0
  loc_BC9DCD: LitStr vbNullString
  loc_BC9DD0: ILdRf var_90
  loc_BC9DD3: CVarStr var_108
  loc_BC9DD6: PopAdLdVar
  loc_BC9DD7: FLdPr Me
  loc_BC9DDA: MemLdFPR8 global_88
  loc_BC9DDD: CVarDate var_B4
  loc_BC9DE1: PopAdLdVar
  loc_BC9DE2: LitStr "Aforos Varios"
  loc_BC9DE5: LitI4 0
  loc_BC9DEA: LitI2_Byte 0
  loc_BC9DEC: LitI2_Byte 0
  loc_BC9DEE: LitI2_Byte 0
  loc_BC9DF0: CUI1I2
  loc_BC9DF2: LitI2_Byte 1
  loc_BC9DF4: ILdRf var_88
  loc_BC9DF7: FLdI2 var_8A
  loc_BC9DFA: ILdRf var_C8
  loc_BC9DFD: CI2Str
  loc_BC9DFF: ILdRf var_C0
  loc_BC9E02: ImpAdLdUI1
  loc_BC9E06: FLdPr Me
  loc_BC9E09: MemLdRfVar from_stack_1.global_52
  loc_BC9E0C: NewIfNullPr clsctacte
  loc_BC9E0F: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BC9E14: FFreeStr var_F0 = "": var_C0 = "": var_C8 = "": var_E8 = "": var_10C = ""
  loc_BC9E23: FFreeAd var_B8 = "": var_C4 = "": var_E4 = "": var_EC = ""
  loc_BC9E30: FFree1Var var_E0 = ""
  loc_BC9E33: FLdRfVar var_8A
  loc_BC9E36: NextI2 var_CC, loc_BC9B4C
  loc_BC9E3B: LitI2_Byte 0
  loc_BC9E3D: FLdPr Me
  loc_BC9E40: Me.MousePointer = from_stack_1
  loc_BC9E45: LitStr "El AFORO se realizó con éxito"
  loc_BC9E48: FLdPr Me
  loc_BC9E4B: MemStStrCopy
  loc_BC9E4F: FLdPr Me
  loc_BC9E52: MemLdStr global_112
  loc_BC9E55: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC9E5A: LitI4 1
  loc_BC9E5F: LitI4 1
  loc_BC9E64: LitVarStr var_B4, "0.00"
  loc_BC9E69: FStVarCopyObj var_11C
  loc_BC9E6C: FLdRfVar var_11C
  loc_BC9E6F: LitVarI2 var_E0, 0
  loc_BC9E74: FLdRfVar var_12C
  loc_BC9E77: ImpAdCallFPR4  = Format(, )
  loc_BC9E7C: FLdRfVar var_12C
  loc_BC9E7F: CStrVarVal var_C0
  loc_BC9E83: FLdPr Me
  loc_BC9E86: VCallAd Control_ID_txtTotaApre
  loc_BC9E89: FStAdFunc var_B8
  loc_BC9E8C: FLdPr var_B8
  loc_BC9E8F: Me.Text = from_stack_1
  loc_BC9E94: FFree1Str var_C0
  loc_BC9E97: FFree1Ad var_B8
  loc_BC9E9A: FFreeVar var_E0 = "": var_11C = ""
  loc_BC9EA3: LitI4 1
  loc_BC9EA8: LitI4 1
  loc_BC9EAD: LitVarStr var_B4, "0.00"
  loc_BC9EB2: FStVarCopyObj var_11C
  loc_BC9EB5: FLdRfVar var_11C
  loc_BC9EB8: LitVarI2 var_E0, 0
  loc_BC9EBD: FLdRfVar var_12C
  loc_BC9EC0: ImpAdCallFPR4  = Format(, )
  loc_BC9EC5: FLdRfVar var_12C
  loc_BC9EC8: CStrVarVal var_C0
  loc_BC9ECC: FLdPr Me
  loc_BC9ECF: VCallAd Control_ID_txtTotaDere
  loc_BC9ED2: FStAdFunc var_B8
  loc_BC9ED5: FLdPr var_B8
  loc_BC9ED8: Me.Text = from_stack_1
  loc_BC9EDD: FFree1Str var_C0
  loc_BC9EE0: FFree1Ad var_B8
  loc_BC9EE3: FFreeVar var_E0 = "": var_11C = ""
  loc_BC9EEC: LitI4 1
  loc_BC9EF1: LitI4 1
  loc_BC9EF6: LitVarStr var_B4, "0.00"
  loc_BC9EFB: FStVarCopyObj var_11C
  loc_BC9EFE: FLdRfVar var_11C
  loc_BC9F01: LitVarI2 var_E0, 0
  loc_BC9F06: FLdRfVar var_12C
  loc_BC9F09: ImpAdCallFPR4  = Format(, )
  loc_BC9F0E: FLdRfVar var_12C
  loc_BC9F11: CStrVarVal var_C0
  loc_BC9F15: FLdPr Me
  loc_BC9F18: VCallAd Control_ID_txtTotaReca
  loc_BC9F1B: FStAdFunc var_B8
  loc_BC9F1E: FLdPr var_B8
  loc_BC9F21: Me.Text = from_stack_1
  loc_BC9F26: FFree1Str var_C0
  loc_BC9F29: FFree1Ad var_B8
  loc_BC9F2C: FFreeVar var_E0 = "": var_11C = ""
  loc_BC9F35: LitI4 1
  loc_BC9F3A: LitI4 1
  loc_BC9F3F: LitVarStr var_B4, "0.00"
  loc_BC9F44: FStVarCopyObj var_11C
  loc_BC9F47: FLdRfVar var_11C
  loc_BC9F4A: LitVarI2 var_E0, 0
  loc_BC9F4F: FLdRfVar var_12C
  loc_BC9F52: ImpAdCallFPR4  = Format(, )
  loc_BC9F57: FLdRfVar var_12C
  loc_BC9F5A: CStrVarVal var_C0
  loc_BC9F5E: FLdPr Me
  loc_BC9F61: VCallAd Control_ID_txtTotal
  loc_BC9F64: FStAdFunc var_B8
  loc_BC9F67: FLdPr var_B8
  loc_BC9F6A: Me.Text = from_stack_1
  loc_BC9F6F: FFree1Str var_C0
  loc_BC9F72: FFree1Ad var_B8
  loc_BC9F75: FFreeVar var_E0 = "": var_11C = ""
  loc_BC9F7E: LitI2_Byte 0
  loc_BC9F80: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BC9F85: CStrDate
  loc_BC9F87: CVarStr var_E0
  loc_BC9F8A: PopAdLdVar
  loc_BC9F8B: FLdPr Me
  loc_BC9F8E: VCallAd Control_ID_FechVencMsk
  loc_BC9F91: FStAdFunc var_B8
  loc_BC9F94: FLdPr var_B8
  loc_BC9F97: LateIdSt
  loc_BC9F9C: FFree1Ad var_B8
  loc_BC9F9F: FFree1Var var_E0 = ""
  loc_BC9FA2: FLdPr Me
  loc_BC9FA5: MemLdRfVar from_stack_1.global_88
  loc_BC9FA8: CVarRef
  loc_BC9FAD: FLdRfVar var_E0
  loc_BC9FB0: ImpAdCallFPR4  = Year()
  loc_BC9FB5: FLdRfVar var_E0
  loc_BC9FB8: CStrVarVal var_C0
  loc_BC9FBC: FLdPr Me
  loc_BC9FBF: VCallAd Control_ID_PeriCtctTxt
  loc_BC9FC2: FStAdFunc var_B8
  loc_BC9FC5: FLdPr var_B8
  loc_BC9FC8: Me.Text = from_stack_1
  loc_BC9FCD: FFree1Str var_C0
  loc_BC9FD0: FFree1Ad var_B8
  loc_BC9FD3: FFree1Var var_E0 = ""
  loc_BC9FD6: LitI4 1
  loc_BC9FDB: LitI4 1
  loc_BC9FE0: LitVarStr var_B4, "0.00"
  loc_BC9FE5: FStVarCopyObj var_11C
  loc_BC9FE8: FLdRfVar var_11C
  loc_BC9FEB: LitVarI2 var_E0, 0
  loc_BC9FF0: FLdRfVar var_12C
  loc_BC9FF3: ImpAdCallFPR4  = Format(, )
  loc_BC9FF8: FLdRfVar var_12C
  loc_BC9FFB: CStrVarVal var_C0
  loc_BC9FFF: FLdPr Me
  loc_BCA002: VCallAd Control_ID_ImpoCtctTxt
  loc_BCA005: FStAdFunc var_B8
  loc_BCA008: FLdPr var_B8
  loc_BCA00B: Me.Text = from_stack_1
  loc_BCA010: FFree1Str var_C0
  loc_BCA013: FFree1Ad var_B8
  loc_BCA016: FFreeVar var_E0 = "": var_11C = ""
  loc_BCA01F: LitI4 1
  loc_BCA024: LitI4 1
  loc_BCA029: LitVarStr var_B4, "0.00"
  loc_BCA02E: FStVarCopyObj var_11C
  loc_BCA031: FLdRfVar var_11C
  loc_BCA034: LitVarI2 var_E0, 0
  loc_BCA039: FLdRfVar var_12C
  loc_BCA03C: ImpAdCallFPR4  = Format(, )
  loc_BCA041: FLdRfVar var_12C
  loc_BCA044: CStrVarVal var_C0
  loc_BCA048: FLdPr Me
  loc_BCA04B: VCallAd Control_ID_ImpoBombTxt
  loc_BCA04E: FStAdFunc var_B8
  loc_BCA051: FLdPr var_B8
  loc_BCA054: Me.Text = from_stack_1
  loc_BCA059: FFree1Str var_C0
  loc_BCA05C: FFree1Ad var_B8
  loc_BCA05F: FFreeVar var_E0 = "": var_11C = ""
  loc_BCA068: LitI2_Byte &HFF
  loc_BCA06A: FLdPr Me
  loc_BCA06D: VCallAd Control_ID_ConfirmarCmd
  loc_BCA070: FStAdFunc var_B8
  loc_BCA073: FLdPr var_B8
  loc_BCA076: Me.Enabled = from_stack_1b
  loc_BCA07B: FFree1Ad var_B8
  loc_BCA07E: FLdPr Me
  loc_BCA081: VCallAd Control_ID_PeriCtctTxt
  loc_BCA084: FStAdFunc var_B8
  loc_BCA087: FLdPr var_B8
  loc_BCA08A: Me.SetFocus
  loc_BCA08F: FFree1Ad var_B8
  loc_BCA092: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C3EC78
  'Data Table: 5083E0
  loc_C3E120: Call Proc_299_35_B17868()
  loc_C3E125: LitVarStr var_F4, vbNullString
  loc_C3E12A: PopAdLdVar
  loc_C3E12B: FLdPr Me
  loc_C3E12E: VCallAd Control_ID_FechVencMsk
  loc_C3E131: FStAdFunc var_108
  loc_C3E134: FLdPr var_108
  loc_C3E137: LateIdSt
  loc_C3E13C: FFree1Ad var_108
  loc_C3E13F: FLdRfVar var_10A
  loc_C3E142: FLdPr Me
  loc_C3E145: VCallAd Control_ID_OficinaCbo
  loc_C3E148: FStAdFunc var_108
  loc_C3E14B: FLdPr var_108
  loc_C3E14E:  = Me.ListIndex
  loc_C3E153: FLdI2 var_10A
  loc_C3E156: FStI2 var_10C
  loc_C3E159: FFree1Ad var_108
  loc_C3E15C: FLdI2 var_10C
  loc_C3E15F: LitI2_Byte 0
  loc_C3E161: EqI2
  loc_C3E162: BranchF loc_C3E170
  loc_C3E165: LitI2_Byte 1
  loc_C3E167: CUI1I2
  loc_C3E169: ImpAdStUI1 MemVar_D93038
  loc_C3E16D: Branch loc_C3E1E5
  loc_C3E170: FLdI2 var_10C
  loc_C3E173: LitI2_Byte 1
  loc_C3E175: EqI2
  loc_C3E176: BranchF loc_C3E184
  loc_C3E179: LitI2_Byte 2
  loc_C3E17B: CUI1I2
  loc_C3E17D: ImpAdStUI1 MemVar_D93038
  loc_C3E181: Branch loc_C3E1E5
  loc_C3E184: FLdI2 var_10C
  loc_C3E187: LitI2_Byte 2
  loc_C3E189: EqI2
  loc_C3E18A: BranchF loc_C3E198
  loc_C3E18D: LitI2_Byte 3
  loc_C3E18F: CUI1I2
  loc_C3E191: ImpAdStUI1 MemVar_D93038
  loc_C3E195: Branch loc_C3E1E5
  loc_C3E198: FLdI2 var_10C
  loc_C3E19B: LitI2_Byte 3
  loc_C3E19D: EqI2
  loc_C3E19E: BranchF loc_C3E1AC
  loc_C3E1A1: LitI2_Byte 4
  loc_C3E1A3: CUI1I2
  loc_C3E1A5: ImpAdStUI1 MemVar_D93038
  loc_C3E1A9: Branch loc_C3E1E5
  loc_C3E1AC: FLdI2 var_10C
  loc_C3E1AF: LitI2_Byte 4
  loc_C3E1B1: EqI2
  loc_C3E1B2: BranchF loc_C3E1C0
  loc_C3E1B5: LitI2_Byte 5
  loc_C3E1B7: CUI1I2
  loc_C3E1B9: ImpAdStUI1 MemVar_D93038
  loc_C3E1BD: Branch loc_C3E1E5
  loc_C3E1C0: FLdI2 var_10C
  loc_C3E1C3: LitI2_Byte 5
  loc_C3E1C5: EqI2
  loc_C3E1C6: BranchF loc_C3E1D4
  loc_C3E1C9: LitI2_Byte 6
  loc_C3E1CB: CUI1I2
  loc_C3E1CD: ImpAdStUI1 MemVar_D93038
  loc_C3E1D1: Branch loc_C3E1E5
  loc_C3E1D4: FLdI2 var_10C
  loc_C3E1D7: LitI2_Byte 6
  loc_C3E1D9: EqI2
  loc_C3E1DA: BranchF loc_C3E1E5
  loc_C3E1DD: LitI2_Byte 7
  loc_C3E1DF: CUI1I2
  loc_C3E1E1: ImpAdStUI1 MemVar_D93038
  loc_C3E1E5: LitI2_Byte 0
  loc_C3E1E7: CR8I2
  loc_C3E1E8: FStFPR8 var_CC
  loc_C3E1EB: LitI2_Byte 0
  loc_C3E1ED: CR8I2
  loc_C3E1EE: FStFPR8 var_D4
  loc_C3E1F1: LitI2_Byte 0
  loc_C3E1F3: CR8I2
  loc_C3E1F4: FStFPR8 var_DC
  loc_C3E1F7: LitI2_Byte 0
  loc_C3E1F9: CR8I2
  loc_C3E1FA: FStFPR8 var_E4
  loc_C3E1FD: LitI4 1
  loc_C3E202: LitI4 1
  loc_C3E207: LitVarStr var_104, "0.00"
  loc_C3E20C: FStVarCopyObj var_11C
  loc_C3E20F: FLdRfVar var_11C
  loc_C3E212: FLdRfVar var_CC
  loc_C3E215: CVarRef
  loc_C3E21A: FLdRfVar var_12C
  loc_C3E21D: ImpAdCallFPR4  = Format(, )
  loc_C3E222: FLdRfVar var_12C
  loc_C3E225: CStrVarVal var_130
  loc_C3E229: FLdPr Me
  loc_C3E22C: VCallAd Control_ID_txtTotaDere
  loc_C3E22F: FStAdFunc var_108
  loc_C3E232: FLdPr var_108
  loc_C3E235: Me.Text = from_stack_1
  loc_C3E23A: FFree1Str var_130
  loc_C3E23D: FFree1Ad var_108
  loc_C3E240: FFreeVar var_11C = ""
  loc_C3E247: LitI4 1
  loc_C3E24C: LitI4 1
  loc_C3E251: LitVarStr var_104, "0.00"
  loc_C3E256: FStVarCopyObj var_11C
  loc_C3E259: FLdRfVar var_11C
  loc_C3E25C: FLdRfVar var_D4
  loc_C3E25F: CVarRef
  loc_C3E264: FLdRfVar var_12C
  loc_C3E267: ImpAdCallFPR4  = Format(, )
  loc_C3E26C: FLdRfVar var_12C
  loc_C3E26F: CStrVarVal var_130
  loc_C3E273: FLdPr Me
  loc_C3E276: VCallAd Control_ID_txtTotaReca
  loc_C3E279: FStAdFunc var_108
  loc_C3E27C: FLdPr var_108
  loc_C3E27F: Me.Text = from_stack_1
  loc_C3E284: FFree1Str var_130
  loc_C3E287: FFree1Ad var_108
  loc_C3E28A: FFreeVar var_11C = ""
  loc_C3E291: LitI4 1
  loc_C3E296: LitI4 1
  loc_C3E29B: LitVarStr var_104, "0.00"
  loc_C3E2A0: FStVarCopyObj var_11C
  loc_C3E2A3: FLdRfVar var_11C
  loc_C3E2A6: FLdRfVar var_DC
  loc_C3E2A9: CVarRef
  loc_C3E2AE: FLdRfVar var_12C
  loc_C3E2B1: ImpAdCallFPR4  = Format(, )
  loc_C3E2B6: FLdRfVar var_12C
  loc_C3E2B9: CStrVarVal var_130
  loc_C3E2BD: FLdPr Me
  loc_C3E2C0: VCallAd Control_ID_txtTotaApre
  loc_C3E2C3: FStAdFunc var_108
  loc_C3E2C6: FLdPr var_108
  loc_C3E2C9: Me.Text = from_stack_1
  loc_C3E2CE: FFree1Str var_130
  loc_C3E2D1: FFree1Ad var_108
  loc_C3E2D4: FFreeVar var_11C = ""
  loc_C3E2DB: LitI4 2
  loc_C3E2E0: FLdRfVar var_CC
  loc_C3E2E3: CVarRef
  loc_C3E2E8: FLdRfVar var_11C
  loc_C3E2EB: ImpAdCallFPR4  = Round(, )
  loc_C3E2F0: FLdRfVar var_11C
  loc_C3E2F3: LitI4 2
  loc_C3E2F8: FLdRfVar var_D4
  loc_C3E2FB: CVarRef
  loc_C3E300: FLdRfVar var_12C
  loc_C3E303: ImpAdCallFPR4  = Round(, )
  loc_C3E308: FLdRfVar var_12C
  loc_C3E30B: AddVar var_140
  loc_C3E30F: LitI4 2
  loc_C3E314: FLdRfVar var_DC
  loc_C3E317: CVarRef
  loc_C3E31C: FLdRfVar var_160
  loc_C3E31F: ImpAdCallFPR4  = Round(, )
  loc_C3E324: FLdRfVar var_160
  loc_C3E327: AddVar var_170
  loc_C3E32B: CR4Var
  loc_C3E32C: FStFPR8 var_E4
  loc_C3E32F: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C3E33C: LitI4 1
  loc_C3E341: LitI4 1
  loc_C3E346: LitVarStr var_104, "0.00"
  loc_C3E34B: FStVarCopyObj var_11C
  loc_C3E34E: FLdRfVar var_11C
  loc_C3E351: FLdRfVar var_E4
  loc_C3E354: CVarRef
  loc_C3E359: FLdRfVar var_12C
  loc_C3E35C: ImpAdCallFPR4  = Format(, )
  loc_C3E361: FLdRfVar var_12C
  loc_C3E364: CStrVarVal var_130
  loc_C3E368: FLdPr Me
  loc_C3E36B: VCallAd Control_ID_txtTotal
  loc_C3E36E: FStAdFunc var_108
  loc_C3E371: FLdPr var_108
  loc_C3E374: Me.Text = from_stack_1
  loc_C3E379: FFree1Str var_130
  loc_C3E37C: FFree1Ad var_108
  loc_C3E37F: FFreeVar var_11C = ""
  loc_C3E386: FLdPr Me
  loc_C3E389: VCallAd Control_ID_FechVencMsk
  loc_C3E38C: FStAdFunc var_184
  loc_C3E38F: FLdPr var_184
  loc_C3E392: LateIdLdVar var_11C DispID_15 0
  loc_C3E399: PopAd
  loc_C3E39B: LitStr "CALL nDeuda`('"
  loc_C3E39E: ImpAdLdUI1
  loc_C3E3A2: CStrI2
  loc_C3E3A4: FStStrNoPop var_130
  loc_C3E3A7: ConcatStr
  loc_C3E3A8: FStStrNoPop var_174
  loc_C3E3AB: LitStr "', '"
  loc_C3E3AE: ConcatStr
  loc_C3E3AF: FStStrNoPop var_17C
  loc_C3E3B2: FLdRfVar var_178
  loc_C3E3B5: FLdPr Me
  loc_C3E3B8: VCallAd Control_ID_NumeCtaTxt
  loc_C3E3BB: FStAdFunc var_108
  loc_C3E3BE: FLdPr var_108
  loc_C3E3C1:  = Me.Text
  loc_C3E3C6: ILdRf var_178
  loc_C3E3C9: ConcatStr
  loc_C3E3CA: FStStrNoPop var_180
  loc_C3E3CD: LitStr "', '"
  loc_C3E3D0: ConcatStr
  loc_C3E3D1: CVarStr var_170
  loc_C3E3D4: LitI4 1
  loc_C3E3D9: LitI4 1
  loc_C3E3DE: LitVarStr var_F4, "yyyy-mm-dd"
  loc_C3E3E3: FStVarCopyObj var_140
  loc_C3E3E6: FLdRfVar var_140
  loc_C3E3E9: FLdRfVar var_11C
  loc_C3E3EC: CStrVarTmp
  loc_C3E3ED: CVarStr var_12C
  loc_C3E3F0: FLdRfVar var_160
  loc_C3E3F3: ImpAdCallFPR4  = Format(, )
  loc_C3E3F8: FLdRfVar var_160
  loc_C3E3FB: ConcatVar var_194
  loc_C3E3FF: LitVarStr var_104, "')"
  loc_C3E404: ConcatVar var_1A4
  loc_C3E408: CStrVarVal var_1A8
  loc_C3E40C: FLdPr Me
  loc_C3E40F: MemLdRfVar from_stack_1.global_52
  loc_C3E412: NewIfNullPr clsctacte
  loc_C3E415: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3E41A: FFreeStr var_130 = "": var_174 = "": var_17C = "": var_178 = "": var_180 = ""
  loc_C3E429: FFreeAd var_108 = ""
  loc_C3E430: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_170 = "": var_160 = "": var_194 = ""
  loc_C3E441: LitStr "SELECT * FROM tmp_ctacteboleto "
  loc_C3E444: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C3E447: ConcatStr
  loc_C3E448: FStStrNoPop var_130
  loc_C3E44B: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C3E44E: ConcatStr
  loc_C3E44F: FStStrNoPop var_174
  loc_C3E452: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C3E455: ConcatStr
  loc_C3E456: FStStrNoPop var_178
  loc_C3E459: FLdPr Me
  loc_C3E45C: MemLdRfVar from_stack_1.global_52
  loc_C3E45F: NewIfNullPr clsctacte
  loc_C3E462: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3E467: FFreeStr var_130 = "": var_174 = ""
  loc_C3E470: FLdRfVar var_1AC
  loc_C3E473: FLdPr Me
  loc_C3E476: MemLdRfVar from_stack_1.global_52
  loc_C3E479: NewIfNullPr clsctacte
  loc_C3E47C: from_stack_1 = clsctacte.RecordCount
  loc_C3E481: ILdRf var_1AC
  loc_C3E484: LitI4 0
  loc_C3E489: GtI4
  loc_C3E48A: BranchF loc_C3EC74
  loc_C3E48D: FLdPr Me
  loc_C3E490: MemLdRfVar from_stack_1.global_52
  loc_C3E493: NewIfNullPr clsctacte
  loc_C3E496: Call clsctacte.MoveFirst()
  loc_C3E49B: FLdRfVar var_10A
  loc_C3E49E: FLdPr Me
  loc_C3E4A1: MemLdRfVar from_stack_1.global_52
  loc_C3E4A4: NewIfNullPr clsctacte
  loc_C3E4A7: from_stack_1 = clsctacte.EOF
  loc_C3E4AC: FLdI2 var_10A
  loc_C3E4AF: NotI4
  loc_C3E4B0: BranchF loc_C3EAEB
  loc_C3E4B3: FLdRfVar var_1B4
  loc_C3E4B6: FLdPr Me
  loc_C3E4B9: MemLdRfVar from_stack_1.global_52
  loc_C3E4BC: NewIfNullPr clsctacte
  loc_C3E4BF: from_stack_1 = clsctacte.SaldCtct
  loc_C3E4C4: FLdFPR8 var_1B4
  loc_C3E4C7: FnCDblR8
  loc_C3E4C9: LitI2_Byte 0
  loc_C3E4CB: CR8I2
  loc_C3E4CC: GtR4
  loc_C3E4CD: BranchF loc_C3EADA
  loc_C3E4D0: LitI2_Byte 0
  loc_C3E4D2: CR8I2
  loc_C3E4D3: FStFPR8 var_DC
  loc_C3E4D6: FLdRfVar var_1B4
  loc_C3E4D9: FLdPr Me
  loc_C3E4DC: MemLdRfVar from_stack_1.global_52
  loc_C3E4DF: NewIfNullPr clsctacte
  loc_C3E4E2: from_stack_1 = clsctacte.SaldCtct
  loc_C3E4E7: LitI4 2
  loc_C3E4EC: FLdFPR8 var_CC
  loc_C3E4EF: FnCDblR8
  loc_C3E4F1: FLdFPR8 var_1B4
  loc_C3E4F4: FnCDblR8
  loc_C3E4F6: AddR8
  loc_C3E4F7: CVarR8
  loc_C3E4FB: FLdRfVar var_12C
  loc_C3E4FE: ImpAdCallFPR4  = Round(, )
  loc_C3E503: FLdRfVar var_12C
  loc_C3E506: CR4Var
  loc_C3E507: FStFPR8 var_CC
  loc_C3E50A: FFreeVar var_11C = ""
  loc_C3E511: FLdRfVar var_1B4
  loc_C3E514: FLdPr Me
  loc_C3E517: MemLdRfVar from_stack_1.global_52
  loc_C3E51A: NewIfNullPr clsctacte
  loc_C3E51D: from_stack_1 = clsctacte.RecaCtct
  loc_C3E522: LitI4 2
  loc_C3E527: FLdFPR8 var_D4
  loc_C3E52A: FnCDblR8
  loc_C3E52C: FLdFPR8 var_1B4
  loc_C3E52F: FnCDblR8
  loc_C3E531: AddR8
  loc_C3E532: CVarR8
  loc_C3E536: FLdRfVar var_12C
  loc_C3E539: ImpAdCallFPR4  = Round(, )
  loc_C3E53E: FLdRfVar var_12C
  loc_C3E541: CR4Var
  loc_C3E542: FStFPR8 var_D4
  loc_C3E545: FFreeVar var_11C = ""
  loc_C3E54C: FLdRfVar var_10A
  loc_C3E54F: FLdPr Me
  loc_C3E552: MemLdRfVar from_stack_1.global_52
  loc_C3E555: NewIfNullPr clsctacte
  loc_C3E558: from_stack_1 = clsctacte.BimeCtct
  loc_C3E55D: LitI4 1
  loc_C3E562: LitI4 1
  loc_C3E567: LitVarStr var_104, "00"
  loc_C3E56C: FStVarCopyObj var_12C
  loc_C3E56F: FLdRfVar var_12C
  loc_C3E572: FLdI2 var_10A
  loc_C3E575: CVarI2 var_11C
  loc_C3E578: FLdRfVar var_140
  loc_C3E57B: ImpAdCallFPR4  = Format(, )
  loc_C3E580: FLdRfVar var_140
  loc_C3E583: LitVarStr var_150, "/"
  loc_C3E588: ConcatVar var_160
  loc_C3E58C: FLdRfVar var_1B6
  loc_C3E58F: FLdPr Me
  loc_C3E592: MemLdRfVar from_stack_1.global_52
  loc_C3E595: NewIfNullPr clsctacte
  loc_C3E598: from_stack_1 = clsctacte.PeriCtct
  loc_C3E59D: FLdI2 var_1B6
  loc_C3E5A0: CVarI2 var_1C8
  loc_C3E5A3: ConcatVar var_170
  loc_C3E5A7: CStrVarTmp
  loc_C3E5A8: FLdRfVar var_96
  loc_C3E5AB: StFixedStrFree
  loc_C3E5AF: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C3E5BC: FLdRfVar var_1AC
  loc_C3E5BF: FLdPr Me
  loc_C3E5C2: MemLdRfVar from_stack_1.global_52
  loc_C3E5C5: NewIfNullPr clsctacte
  loc_C3E5C8: from_stack_1 = clsctacte.NumeBole
  loc_C3E5CD: FLdRfVar var_10A
  loc_C3E5D0: FLdPr Me
  loc_C3E5D3: MemLdRfVar from_stack_1.global_52
  loc_C3E5D6: NewIfNullPr clsctacte
  loc_C3E5D9: from_stack_1 = clsctacte.PeriBole
  loc_C3E5DE: LitI4 1
  loc_C3E5E3: LitI4 1
  loc_C3E5E8: LitVarStr var_104, "#######0"
  loc_C3E5ED: FStVarCopyObj var_12C
  loc_C3E5F0: FLdRfVar var_12C
  loc_C3E5F3: ILdRf var_1AC
  loc_C3E5F6: CVarI4
  loc_C3E5FA: FLdRfVar var_140
  loc_C3E5FD: ImpAdCallFPR4  = Format(, )
  loc_C3E602: FLdRfVar var_140
  loc_C3E605: LitVarStr var_150, "-"
  loc_C3E60A: ConcatVar var_160
  loc_C3E60E: LitI4 1
  loc_C3E613: LitI4 1
  loc_C3E618: LitVarStr var_1D8, "0000"
  loc_C3E61D: FStVarCopyObj var_194
  loc_C3E620: FLdRfVar var_194
  loc_C3E623: FLdI2 var_10A
  loc_C3E626: CVarI2 var_170
  loc_C3E629: FLdRfVar var_1A4
  loc_C3E62C: ImpAdCallFPR4  = Format(, )
  loc_C3E631: FLdRfVar var_1A4
  loc_C3E634: ConcatVar var_1E8
  loc_C3E638: CStrVarTmp
  loc_C3E639: FLdRfVar var_B0
  loc_C3E63C: StFixedStrFree
  loc_C3E640: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_170 = "": var_194 = "": var_160 = "": var_1A4 = ""
  loc_C3E653: FLdRfVar var_1B4
  loc_C3E656: FLdPr Me
  loc_C3E659: MemLdRfVar from_stack_1.global_52
  loc_C3E65C: NewIfNullPr clsctacte
  loc_C3E65F: from_stack_1 = clsctacte.SaldCtct
  loc_C3E664: FLdFPR8 var_1B4
  loc_C3E667: FnCDblR8
  loc_C3E669: LitI2_Byte 0
  loc_C3E66B: CR8I2
  loc_C3E66C: NeR8
  loc_C3E66D: BranchF loc_C3E6B8
  loc_C3E670: FLdRfVar var_1B4
  loc_C3E673: FLdPr Me
  loc_C3E676: MemLdRfVar from_stack_1.global_52
  loc_C3E679: NewIfNullPr clsctacte
  loc_C3E67C: from_stack_1 = clsctacte.SaldCtct
  loc_C3E681: LitI4 1
  loc_C3E686: LitI4 1
  loc_C3E68B: LitVarStr var_104, "0.00"
  loc_C3E690: FStVarCopyObj var_12C
  loc_C3E693: FLdRfVar var_12C
  loc_C3E696: FLdFPR8 var_1B4
  loc_C3E699: CVarR8
  loc_C3E69D: FLdRfVar var_140
  loc_C3E6A0: ImpAdCallFPR4  = Format(, )
  loc_C3E6A5: FLdRfVar var_140
  loc_C3E6A8: CStrVarTmp
  loc_C3E6A9: FStStr var_B8
  loc_C3E6AC: FFreeVar var_11C = "": var_12C = ""
  loc_C3E6B5: Branch loc_C3E6BE
  loc_C3E6B8: LitStr vbNullString
  loc_C3E6BB: FStStrCopy var_B8
  loc_C3E6BE: LitStr vbNullString
  loc_C3E6C1: FStStrCopy var_BC
  loc_C3E6C4: FLdRfVar var_1B4
  loc_C3E6C7: FLdPr Me
  loc_C3E6CA: MemLdRfVar from_stack_1.global_52
  loc_C3E6CD: NewIfNullPr clsctacte
  loc_C3E6D0: from_stack_1 = clsctacte.RecaCtct
  loc_C3E6D5: FLdFPR8 var_1B4
  loc_C3E6D8: FnCDblR8
  loc_C3E6DA: LitI2_Byte 0
  loc_C3E6DC: CR8I2
  loc_C3E6DD: NeR8
  loc_C3E6DE: BranchF loc_C3E729
  loc_C3E6E1: FLdRfVar var_1B4
  loc_C3E6E4: FLdPr Me
  loc_C3E6E7: MemLdRfVar from_stack_1.global_52
  loc_C3E6EA: NewIfNullPr clsctacte
  loc_C3E6ED: from_stack_1 = clsctacte.RecaCtct
  loc_C3E6F2: LitI4 1
  loc_C3E6F7: LitI4 1
  loc_C3E6FC: LitVarStr var_104, "0.00"
  loc_C3E701: FStVarCopyObj var_12C
  loc_C3E704: FLdRfVar var_12C
  loc_C3E707: FLdFPR8 var_1B4
  loc_C3E70A: CVarR8
  loc_C3E70E: FLdRfVar var_140
  loc_C3E711: ImpAdCallFPR4  = Format(, )
  loc_C3E716: FLdRfVar var_140
  loc_C3E719: CStrVarTmp
  loc_C3E71A: FStStr var_C0
  loc_C3E71D: FFreeVar var_11C = "": var_12C = ""
  loc_C3E726: Branch loc_C3E72F
  loc_C3E729: LitStr vbNullString
  loc_C3E72C: FStStrCopy var_C0
  loc_C3E72F: FLdRfVar var_1B4
  loc_C3E732: FLdPr Me
  loc_C3E735: MemLdRfVar from_stack_1.global_52
  loc_C3E738: NewIfNullPr clsctacte
  loc_C3E73B: from_stack_1 = clsctacte.SaldCtct
  loc_C3E740: FLdRfVar var_1F0
  loc_C3E743: FLdPr Me
  loc_C3E746: MemLdRfVar from_stack_1.global_52
  loc_C3E749: NewIfNullPr clsctacte
  loc_C3E74C: from_stack_1 = clsctacte.RecaCtct
  loc_C3E751: LitI4 2
  loc_C3E756: FLdFPR8 var_1B4
  loc_C3E759: FnCDblR8
  loc_C3E75B: FLdFPR8 var_1F0
  loc_C3E75E: FnCDblR8
  loc_C3E760: AddR8
  loc_C3E761: CVarR8
  loc_C3E765: FLdRfVar var_12C
  loc_C3E768: ImpAdCallFPR4  = Round(, )
  loc_C3E76D: LitI4 1
  loc_C3E772: LitI4 1
  loc_C3E777: LitVarStr var_104, "0.00"
  loc_C3E77C: FStVarCopyObj var_140
  loc_C3E77F: FLdRfVar var_140
  loc_C3E782: FLdRfVar var_12C
  loc_C3E785: FLdRfVar var_160
  loc_C3E788: ImpAdCallFPR4  = Format(, )
  loc_C3E78D: FLdRfVar var_160
  loc_C3E790: CStrVarTmp
  loc_C3E791: FStStr var_C4
  loc_C3E794: FFreeVar var_11C = "": var_12C = "": var_140 = ""
  loc_C3E79F: FLdRfVar var_10A
  loc_C3E7A2: FLdPr Me
  loc_C3E7A5: MemLdRfVar from_stack_1.global_52
  loc_C3E7A8: NewIfNullPr clsctacte
  loc_C3E7AB: from_stack_1 = clsctacte.CodiOfic
  loc_C3E7B0: FLdI2 var_10A
  loc_C3E7B3: CVarI2 var_F4
  loc_C3E7B6: LitI4 9
  loc_C3E7BB: FLdRfVar var_11C
  loc_C3E7BE: ImpAdCallFPR4  = Chr()
  loc_C3E7C3: FLdRfVar var_11C
  loc_C3E7C6: ConcatVar var_12C
  loc_C3E7CA: FLdRfVar var_130
  loc_C3E7CD: FLdPr Me
  loc_C3E7D0: MemLdRfVar from_stack_1.global_52
  loc_C3E7D3: NewIfNullPr clsctacte
  loc_C3E7D6: from_stack_1 = clsctacte.CuenCtct
  loc_C3E7DB: FLdZeroAd var_130
  loc_C3E7DE: CVarStr var_140
  loc_C3E7E1: ConcatVar var_160
  loc_C3E7E5: LitI4 9
  loc_C3E7EA: FLdRfVar var_170
  loc_C3E7ED: ImpAdCallFPR4  = Chr()
  loc_C3E7F2: FLdRfVar var_170
  loc_C3E7F5: ConcatVar var_194
  loc_C3E7F9: FLdRfVar var_96
  loc_C3E7FC: LdFixedStr
  loc_C3E7FF: CVarStr var_1A4
  loc_C3E802: ConcatVar var_1E8
  loc_C3E806: LitI4 9
  loc_C3E80B: FLdRfVar var_200
  loc_C3E80E: ImpAdCallFPR4  = Chr()
  loc_C3E813: FLdRfVar var_200
  loc_C3E816: ConcatVar var_210
  loc_C3E81A: FLdRfVar var_B0
  loc_C3E81D: LdFixedStr
  loc_C3E820: CVarStr var_220
  loc_C3E823: ConcatVar var_230
  loc_C3E827: LitI4 9
  loc_C3E82C: FLdRfVar var_240
  loc_C3E82F: ImpAdCallFPR4  = Chr()
  loc_C3E834: FLdRfVar var_240
  loc_C3E837: ConcatVar var_250
  loc_C3E83B: FLdRfVar var_174
  loc_C3E83E: FLdPr Me
  loc_C3E841: MemLdRfVar from_stack_1.global_52
  loc_C3E844: NewIfNullPr clsctacte
  loc_C3E847: from_stack_1 = clsctacte.FealCtct
  loc_C3E84C: FLdZeroAd var_174
  loc_C3E84F: CVarStr var_260
  loc_C3E852: ConcatVar var_270
  loc_C3E856: LitI4 9
  loc_C3E85B: FLdRfVar var_280
  loc_C3E85E: ImpAdCallFPR4  = Chr()
  loc_C3E863: FLdRfVar var_280
  loc_C3E866: ConcatVar var_290
  loc_C3E86A: FLdRfVar var_2A0
  loc_C3E86D: FLdPr Me
  loc_C3E870: MemLdRfVar from_stack_1.global_52
  loc_C3E873: NewIfNullPr clsctacte
  loc_C3E876: from_stack_1 = clsctacte.FeveCtct
  loc_C3E87B: FLdRfVar var_2A0
  loc_C3E87E: ConcatVar var_2B0
  loc_C3E882: LitI4 9
  loc_C3E887: FLdRfVar var_2C0
  loc_C3E88A: ImpAdCallFPR4  = Chr()
  loc_C3E88F: FLdRfVar var_2C0
  loc_C3E892: ConcatVar var_2D0
  loc_C3E896: FLdRfVar var_178
  loc_C3E899: FLdPr Me
  loc_C3E89C: MemLdRfVar from_stack_1.global_52
  loc_C3E89F: NewIfNullPr clsctacte
  loc_C3E8A2: from_stack_1 = clsctacte.CodiConc
  loc_C3E8A7: FLdZeroAd var_178
  loc_C3E8AA: CVarStr var_2E0
  loc_C3E8AD: ConcatVar var_2F0
  loc_C3E8B1: LitI4 9
  loc_C3E8B6: FLdRfVar var_300
  loc_C3E8B9: ImpAdCallFPR4  = Chr()
  loc_C3E8BE: FLdRfVar var_300
  loc_C3E8C1: ConcatVar var_310
  loc_C3E8C5: FLdRfVar var_1AC
  loc_C3E8C8: FLdPr Me
  loc_C3E8CB: MemLdRfVar from_stack_1.global_52
  loc_C3E8CE: NewIfNullPr clsctacte
  loc_C3E8D1: from_stack_1 = clsctacte.CodiFapa
  loc_C3E8D6: ILdRf var_1AC
  loc_C3E8D9: CVarI4
  loc_C3E8DD: ConcatVar var_320
  loc_C3E8E1: LitI4 9
  loc_C3E8E6: FLdRfVar var_330
  loc_C3E8E9: ImpAdCallFPR4  = Chr()
  loc_C3E8EE: FLdRfVar var_330
  loc_C3E8F1: ConcatVar var_340
  loc_C3E8F5: FLdRfVar var_344
  loc_C3E8F8: FLdPr Me
  loc_C3E8FB: MemLdRfVar from_stack_1.global_52
  loc_C3E8FE: NewIfNullPr clsctacte
  loc_C3E901: from_stack_1 = clsctacte.NumeApre
  loc_C3E906: ILdRf var_344
  loc_C3E909: CVarI4
  loc_C3E90D: ConcatVar var_354
  loc_C3E911: LitI4 9
  loc_C3E916: FLdRfVar var_364
  loc_C3E919: ImpAdCallFPR4  = Chr()
  loc_C3E91E: FLdRfVar var_364
  loc_C3E921: ConcatVar var_374
  loc_C3E925: FLdRfVar var_17C
  loc_C3E928: FLdPr Me
  loc_C3E92B: MemLdRfVar from_stack_1.global_52
  loc_C3E92E: NewIfNullPr clsctacte
  loc_C3E931: from_stack_1 = clsctacte.ExpeCtct
  loc_C3E936: FLdZeroAd var_17C
  loc_C3E939: CVarStr var_384
  loc_C3E93C: ConcatVar var_394
  loc_C3E940: LitI4 9
  loc_C3E945: FLdRfVar var_3A4
  loc_C3E948: ImpAdCallFPR4  = Chr()
  loc_C3E94D: FLdRfVar var_3A4
  loc_C3E950: ConcatVar var_3B4
  loc_C3E954: FLdRfVar var_180
  loc_C3E957: FLdPr Me
  loc_C3E95A: MemLdRfVar from_stack_1.global_52
  loc_C3E95D: NewIfNullPr clsctacte
  loc_C3E960: from_stack_1 = clsctacte.AbreTimo
  loc_C3E965: FLdZeroAd var_180
  loc_C3E968: CVarStr var_3C4
  loc_C3E96B: ConcatVar var_3D4
  loc_C3E96F: LitI4 9
  loc_C3E974: FLdRfVar var_3E4
  loc_C3E977: ImpAdCallFPR4  = Chr()
  loc_C3E97C: FLdRfVar var_3E4
  loc_C3E97F: ConcatVar var_3F4
  loc_C3E983: ILdRf var_B8
  loc_C3E986: CVarStr var_1C8
  loc_C3E989: ConcatVar var_404
  loc_C3E98D: LitI4 9
  loc_C3E992: FLdRfVar var_414
  loc_C3E995: ImpAdCallFPR4  = Chr()
  loc_C3E99A: FLdRfVar var_414
  loc_C3E99D: ConcatVar var_424
  loc_C3E9A1: ILdRf var_C0
  loc_C3E9A4: CVarStr var_1D8
  loc_C3E9A7: ConcatVar var_434
  loc_C3E9AB: LitI4 9
  loc_C3E9B0: FLdRfVar var_444
  loc_C3E9B3: ImpAdCallFPR4  = Chr()
  loc_C3E9B8: FLdRfVar var_444
  loc_C3E9BB: ConcatVar var_454
  loc_C3E9BF: ILdRf var_C4
  loc_C3E9C2: CVarStr var_464
  loc_C3E9C5: ConcatVar var_474
  loc_C3E9C9: LitI4 9
  loc_C3E9CE: FLdRfVar var_484
  loc_C3E9D1: ImpAdCallFPR4  = Chr()
  loc_C3E9D6: FLdRfVar var_484
  loc_C3E9D9: ConcatVar var_494
  loc_C3E9DD: LitVarStr var_4A4, "No"
  loc_C3E9E2: ConcatVar var_4B4
  loc_C3E9E6: LitI4 9
  loc_C3E9EB: FLdRfVar var_4C4
  loc_C3E9EE: ImpAdCallFPR4  = Chr()
  loc_C3E9F3: FLdRfVar var_4C4
  loc_C3E9F6: ConcatVar var_4D4
  loc_C3E9FA: FLdRfVar var_4D8
  loc_C3E9FD: FLdPr Me
  loc_C3EA00: MemLdRfVar from_stack_1.global_52
  loc_C3EA03: NewIfNullPr clsctacte
  loc_C3EA06: from_stack_1 = clsctacte.NumeCtct
  loc_C3EA0B: ILdRf var_4D8
  loc_C3EA0E: CVarI4
  loc_C3EA12: ConcatVar var_4F8
  loc_C3EA16: LitI4 9
  loc_C3EA1B: FLdRfVar var_508
  loc_C3EA1E: ImpAdCallFPR4  = Chr()
  loc_C3EA23: FLdRfVar var_508
  loc_C3EA26: ConcatVar var_518
  loc_C3EA2A: FLdRfVar var_1B6
  loc_C3EA2D: FLdPr Me
  loc_C3EA30: MemLdRfVar from_stack_1.global_52
  loc_C3EA33: NewIfNullPr clsctacte
  loc_C3EA36: from_stack_1 = clsctacte.MoviCtct
  loc_C3EA3B: FLdI2 var_1B6
  loc_C3EA3E: CVarI2 var_528
  loc_C3EA41: ConcatVar var_538
  loc_C3EA45: CStrVarTmp
  loc_C3EA46: FStStr var_B4
  loc_C3EA49: FFreeVar var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_474 = "": var_484 = "": var_494 = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F8 = "": var_508 = "": var_518 = "": var_538 = "": var_11C = "": var_12C = "": var_140 = "": var_160 = "": var_170 = "": var_194 = "": var_1A4 = "": var_1E8 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_310 = "": var_320 = "": var_330 = "": var_340 = ""
  loc_C3EABC: FLdRfVar var_B4
  loc_C3EABF: CDargRef
  loc_C3EAC3: FLdPr Me
  loc_C3EAC6: VCallAd Control_ID_ctacteFlex
  loc_C3EAC9: FStAdFunc var_108
  loc_C3EACC: FLdPr var_108
  loc_C3EACF: LateIdCall
  loc_C3EAD7: FFree1Ad var_108
  loc_C3EADA: FLdPr Me
  loc_C3EADD: MemLdRfVar from_stack_1.global_52
  loc_C3EAE0: NewIfNullPr clsctacte
  loc_C3EAE3: Call clsctacte.MoveSiguiente()
  loc_C3EAE8: Branch loc_C3E49B
  loc_C3EAEB: LitI4 1
  loc_C3EAF0: LitI4 1
  loc_C3EAF5: LitVarStr var_104, "###,###,##0.00"
  loc_C3EAFA: FStVarCopyObj var_11C
  loc_C3EAFD: FLdRfVar var_11C
  loc_C3EB00: FLdRfVar var_CC
  loc_C3EB03: CVarRef
  loc_C3EB08: FLdRfVar var_12C
  loc_C3EB0B: ImpAdCallFPR4  = Format(, )
  loc_C3EB10: FLdRfVar var_12C
  loc_C3EB13: CStrVarVal var_130
  loc_C3EB17: FLdPr Me
  loc_C3EB1A: VCallAd Control_ID_txtTotaDere
  loc_C3EB1D: FStAdFunc var_108
  loc_C3EB20: FLdPr var_108
  loc_C3EB23: Me.Text = from_stack_1
  loc_C3EB28: FFree1Str var_130
  loc_C3EB2B: FFree1Ad var_108
  loc_C3EB2E: FFreeVar var_11C = ""
  loc_C3EB35: LitI4 1
  loc_C3EB3A: LitI4 1
  loc_C3EB3F: LitVarStr var_104, "###,###,##0.00"
  loc_C3EB44: FStVarCopyObj var_11C
  loc_C3EB47: FLdRfVar var_11C
  loc_C3EB4A: FLdRfVar var_D4
  loc_C3EB4D: CVarRef
  loc_C3EB52: FLdRfVar var_12C
  loc_C3EB55: ImpAdCallFPR4  = Format(, )
  loc_C3EB5A: FLdRfVar var_12C
  loc_C3EB5D: CStrVarVal var_130
  loc_C3EB61: FLdPr Me
  loc_C3EB64: VCallAd Control_ID_txtTotaReca
  loc_C3EB67: FStAdFunc var_108
  loc_C3EB6A: FLdPr var_108
  loc_C3EB6D: Me.Text = from_stack_1
  loc_C3EB72: FFree1Str var_130
  loc_C3EB75: FFree1Ad var_108
  loc_C3EB78: FFreeVar var_11C = ""
  loc_C3EB7F: LitI4 1
  loc_C3EB84: LitI4 1
  loc_C3EB89: LitVarStr var_104, "###,###,##0.00"
  loc_C3EB8E: FStVarCopyObj var_11C
  loc_C3EB91: FLdRfVar var_11C
  loc_C3EB94: FLdRfVar var_DC
  loc_C3EB97: CVarRef
  loc_C3EB9C: FLdRfVar var_12C
  loc_C3EB9F: ImpAdCallFPR4  = Format(, )
  loc_C3EBA4: FLdRfVar var_12C
  loc_C3EBA7: CStrVarVal var_130
  loc_C3EBAB: FLdPr Me
  loc_C3EBAE: VCallAd Control_ID_txtTotaApre
  loc_C3EBB1: FStAdFunc var_108
  loc_C3EBB4: FLdPr var_108
  loc_C3EBB7: Me.Text = from_stack_1
  loc_C3EBBC: FFree1Str var_130
  loc_C3EBBF: FFree1Ad var_108
  loc_C3EBC2: FFreeVar var_11C = ""
  loc_C3EBC9: LitI4 2
  loc_C3EBCE: FLdRfVar var_CC
  loc_C3EBD1: CVarRef
  loc_C3EBD6: FLdRfVar var_11C
  loc_C3EBD9: ImpAdCallFPR4  = Round(, )
  loc_C3EBDE: FLdRfVar var_11C
  loc_C3EBE1: LitI4 2
  loc_C3EBE6: FLdRfVar var_D4
  loc_C3EBE9: CVarRef
  loc_C3EBEE: FLdRfVar var_12C
  loc_C3EBF1: ImpAdCallFPR4  = Round(, )
  loc_C3EBF6: FLdRfVar var_12C
  loc_C3EBF9: AddVar var_140
  loc_C3EBFD: LitI4 2
  loc_C3EC02: FLdRfVar var_DC
  loc_C3EC05: CVarRef
  loc_C3EC0A: FLdRfVar var_160
  loc_C3EC0D: ImpAdCallFPR4  = Round(, )
  loc_C3EC12: FLdRfVar var_160
  loc_C3EC15: AddVar var_170
  loc_C3EC19: CR4Var
  loc_C3EC1A: FStFPR8 var_E4
  loc_C3EC1D: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C3EC2A: LitI4 1
  loc_C3EC2F: LitI4 1
  loc_C3EC34: LitVarStr var_104, "###,###,##0.00"
  loc_C3EC39: FStVarCopyObj var_11C
  loc_C3EC3C: FLdRfVar var_11C
  loc_C3EC3F: FLdRfVar var_E4
  loc_C3EC42: CVarRef
  loc_C3EC47: FLdRfVar var_12C
  loc_C3EC4A: ImpAdCallFPR4  = Format(, )
  loc_C3EC4F: FLdRfVar var_12C
  loc_C3EC52: CStrVarVal var_130
  loc_C3EC56: FLdPr Me
  loc_C3EC59: VCallAd Control_ID_txtTotal
  loc_C3EC5C: FStAdFunc var_108
  loc_C3EC5F: FLdPr var_108
  loc_C3EC62: Me.Text = from_stack_1
  loc_C3EC67: FFree1Str var_130
  loc_C3EC6A: FFree1Ad var_108
  loc_C3EC6D: FFreeVar var_11C = ""
  loc_C3EC74: ExitProcHresult
  loc_C3EC75: VCallFPR8 0
End Sub

Private Sub NumeCtaCmd_Click() 'B4DE44
  'Data Table: 5083E0
  loc_B4DAAC: FLdRfVar var_8A
  loc_B4DAAF: FLdPr Me
  loc_B4DAB2: VCallAd Control_ID_OficinaCbo
  loc_B4DAB5: FStAdFunc var_88
  loc_B4DAB8: FLdPr var_88
  loc_B4DABB:  = Me.ListIndex
  loc_B4DAC0: FLdI2 var_8A
  loc_B4DAC3: FStI2 var_8C
  loc_B4DAC6: FFree1Ad var_88
  loc_B4DAC9: FLdI2 var_8C
  loc_B4DACC: LitI2_Byte 0
  loc_B4DACE: EqI2
  loc_B4DACF: BranchF loc_B4DADD
  loc_B4DAD2: LitI2_Byte 1
  loc_B4DAD4: CUI1I2
  loc_B4DAD6: ImpAdStUI1 MemVar_D93038
  loc_B4DADA: Branch loc_B4DB52
  loc_B4DADD: FLdI2 var_8C
  loc_B4DAE0: LitI2_Byte 1
  loc_B4DAE2: EqI2
  loc_B4DAE3: BranchF loc_B4DAF1
  loc_B4DAE6: LitI2_Byte 2
  loc_B4DAE8: CUI1I2
  loc_B4DAEA: ImpAdStUI1 MemVar_D93038
  loc_B4DAEE: Branch loc_B4DB52
  loc_B4DAF1: FLdI2 var_8C
  loc_B4DAF4: LitI2_Byte 2
  loc_B4DAF6: EqI2
  loc_B4DAF7: BranchF loc_B4DB05
  loc_B4DAFA: LitI2_Byte 3
  loc_B4DAFC: CUI1I2
  loc_B4DAFE: ImpAdStUI1 MemVar_D93038
  loc_B4DB02: Branch loc_B4DB52
  loc_B4DB05: FLdI2 var_8C
  loc_B4DB08: LitI2_Byte 3
  loc_B4DB0A: EqI2
  loc_B4DB0B: BranchF loc_B4DB19
  loc_B4DB0E: LitI2_Byte 4
  loc_B4DB10: CUI1I2
  loc_B4DB12: ImpAdStUI1 MemVar_D93038
  loc_B4DB16: Branch loc_B4DB52
  loc_B4DB19: FLdI2 var_8C
  loc_B4DB1C: LitI2_Byte 4
  loc_B4DB1E: EqI2
  loc_B4DB1F: BranchF loc_B4DB2D
  loc_B4DB22: LitI2_Byte 5
  loc_B4DB24: CUI1I2
  loc_B4DB26: ImpAdStUI1 MemVar_D93038
  loc_B4DB2A: Branch loc_B4DB52
  loc_B4DB2D: FLdI2 var_8C
  loc_B4DB30: LitI2_Byte 5
  loc_B4DB32: EqI2
  loc_B4DB33: BranchF loc_B4DB41
  loc_B4DB36: LitI2_Byte 6
  loc_B4DB38: CUI1I2
  loc_B4DB3A: ImpAdStUI1 MemVar_D93038
  loc_B4DB3E: Branch loc_B4DB52
  loc_B4DB41: FLdI2 var_8C
  loc_B4DB44: LitI2_Byte 6
  loc_B4DB46: EqI2
  loc_B4DB47: BranchF loc_B4DB52
  loc_B4DB4A: LitI2_Byte 7
  loc_B4DB4C: CUI1I2
  loc_B4DB4E: ImpAdStUI1 MemVar_D93038
  loc_B4DB52: LitVar_Missing var_AC
  loc_B4DB55: PopAdLdVar
  loc_B4DB56: LitVarI4
  loc_B4DB5E: PopAdLdVar
  loc_B4DB5F: ImpAdLdRf MemVar_D94034
  loc_B4DB62: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4DB65: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4DB6A: FLdRfVar var_B0
  loc_B4DB6D: FLdRfVar var_88
  loc_B4DB70: ImpAdLdRf MemVar_D94034
  loc_B4DB73: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4DB76: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4DB7B: FLdPr var_88
  loc_B4DB7E: from_stack_1 = clsbase.RecordCount
  loc_B4DB83: ILdRf var_B0
  loc_B4DB86: LitI4 0
  loc_B4DB8B: GtI4
  loc_B4DB8C: FFree1Ad var_88
  loc_B4DB8F: BranchF loc_B4DE2F
  loc_B4DB92: FLdRfVar var_CC
  loc_B4DB95: FLdRfVar var_BC
  loc_B4DB98: LitVarStr var_9C, "CodiOfic"
  loc_B4DB9D: PopAdLdVar
  loc_B4DB9E: FLdRfVar var_B8
  loc_B4DBA1: FLdRfVar var_B4
  loc_B4DBA4: FLdRfVar var_88
  loc_B4DBA7: ImpAdLdRf MemVar_D94034
  loc_B4DBAA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4DBAD: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4DBB2: FLdPr var_88
  loc_B4DBB5: from_stack_1v = clsbase.RsFrmGet()
  loc_B4DBBA: FLdPr var_B4
  loc_B4DBBD:  = Me.Fields
  loc_B4DBC2: FLdPr var_B8
  loc_B4DBC5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DBCA: FLdPr var_BC
  loc_B4DBCD:  = Me.Value
  loc_B4DBD2: FLdRfVar var_CC
  loc_B4DBD5: FStVar var_DC
  loc_B4DBD9: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4DBE4: FLdRfVar var_DC
  loc_B4DBE7: LitVarI2 var_9C, 1
  loc_B4DBEC: HardType
  loc_B4DBED: EqVarBool
  loc_B4DBEF: BranchF loc_B4DC29
  loc_B4DBF2: FLdRfVar var_E0
  loc_B4DBF5: LitI2_Byte 0
  loc_B4DBF7: FLdPr Me
  loc_B4DBFA: VCallAd Control_ID_OficinaCbo
  loc_B4DBFD: FStAdFunc var_88
  loc_B4DC00: FLdPr var_88
  loc_B4DC03: from_stack_2 = Me.List(from_stack_1)
  loc_B4DC08: ILdRf var_E0
  loc_B4DC0B: FLdPr Me
  loc_B4DC0E: VCallAd Control_ID_OficinaCbo
  loc_B4DC11: FStAdFunc var_B4
  loc_B4DC14: FLdPr var_B4
  loc_B4DC17: Me.Text = from_stack_1
  loc_B4DC1C: FFree1Str var_E0
  loc_B4DC1F: FFreeAd var_88 = ""
  loc_B4DC26: Branch loc_B4DDC4
  loc_B4DC29: FLdRfVar var_DC
  loc_B4DC2C: LitVarI2 var_9C, 2
  loc_B4DC31: HardType
  loc_B4DC32: EqVarBool
  loc_B4DC34: BranchF loc_B4DC6E
  loc_B4DC37: FLdRfVar var_E0
  loc_B4DC3A: LitI2_Byte 1
  loc_B4DC3C: FLdPr Me
  loc_B4DC3F: VCallAd Control_ID_OficinaCbo
  loc_B4DC42: FStAdFunc var_88
  loc_B4DC45: FLdPr var_88
  loc_B4DC48: from_stack_2 = Me.List(from_stack_1)
  loc_B4DC4D: ILdRf var_E0
  loc_B4DC50: FLdPr Me
  loc_B4DC53: VCallAd Control_ID_OficinaCbo
  loc_B4DC56: FStAdFunc var_B4
  loc_B4DC59: FLdPr var_B4
  loc_B4DC5C: Me.Text = from_stack_1
  loc_B4DC61: FFree1Str var_E0
  loc_B4DC64: FFreeAd var_88 = ""
  loc_B4DC6B: Branch loc_B4DDC4
  loc_B4DC6E: FLdRfVar var_DC
  loc_B4DC71: LitVarI2 var_9C, 3
  loc_B4DC76: HardType
  loc_B4DC77: EqVarBool
  loc_B4DC79: BranchF loc_B4DCB3
  loc_B4DC7C: FLdRfVar var_E0
  loc_B4DC7F: LitI2_Byte 2
  loc_B4DC81: FLdPr Me
  loc_B4DC84: VCallAd Control_ID_OficinaCbo
  loc_B4DC87: FStAdFunc var_88
  loc_B4DC8A: FLdPr var_88
  loc_B4DC8D: from_stack_2 = Me.List(from_stack_1)
  loc_B4DC92: ILdRf var_E0
  loc_B4DC95: FLdPr Me
  loc_B4DC98: VCallAd Control_ID_OficinaCbo
  loc_B4DC9B: FStAdFunc var_B4
  loc_B4DC9E: FLdPr var_B4
  loc_B4DCA1: Me.Text = from_stack_1
  loc_B4DCA6: FFree1Str var_E0
  loc_B4DCA9: FFreeAd var_88 = ""
  loc_B4DCB0: Branch loc_B4DDC4
  loc_B4DCB3: FLdRfVar var_DC
  loc_B4DCB6: LitVarI2 var_9C, 4
  loc_B4DCBB: HardType
  loc_B4DCBC: EqVarBool
  loc_B4DCBE: BranchF loc_B4DCF8
  loc_B4DCC1: FLdRfVar var_E0
  loc_B4DCC4: LitI2_Byte 3
  loc_B4DCC6: FLdPr Me
  loc_B4DCC9: VCallAd Control_ID_OficinaCbo
  loc_B4DCCC: FStAdFunc var_88
  loc_B4DCCF: FLdPr var_88
  loc_B4DCD2: from_stack_2 = Me.List(from_stack_1)
  loc_B4DCD7: ILdRf var_E0
  loc_B4DCDA: FLdPr Me
  loc_B4DCDD: VCallAd Control_ID_OficinaCbo
  loc_B4DCE0: FStAdFunc var_B4
  loc_B4DCE3: FLdPr var_B4
  loc_B4DCE6: Me.Text = from_stack_1
  loc_B4DCEB: FFree1Str var_E0
  loc_B4DCEE: FFreeAd var_88 = ""
  loc_B4DCF5: Branch loc_B4DDC4
  loc_B4DCF8: FLdRfVar var_DC
  loc_B4DCFB: LitVarI2 var_9C, 5
  loc_B4DD00: HardType
  loc_B4DD01: EqVarBool
  loc_B4DD03: BranchF loc_B4DD3D
  loc_B4DD06: FLdRfVar var_E0
  loc_B4DD09: LitI2_Byte 4
  loc_B4DD0B: FLdPr Me
  loc_B4DD0E: VCallAd Control_ID_OficinaCbo
  loc_B4DD11: FStAdFunc var_88
  loc_B4DD14: FLdPr var_88
  loc_B4DD17: from_stack_2 = Me.List(from_stack_1)
  loc_B4DD1C: ILdRf var_E0
  loc_B4DD1F: FLdPr Me
  loc_B4DD22: VCallAd Control_ID_OficinaCbo
  loc_B4DD25: FStAdFunc var_B4
  loc_B4DD28: FLdPr var_B4
  loc_B4DD2B: Me.Text = from_stack_1
  loc_B4DD30: FFree1Str var_E0
  loc_B4DD33: FFreeAd var_88 = ""
  loc_B4DD3A: Branch loc_B4DDC4
  loc_B4DD3D: FLdRfVar var_DC
  loc_B4DD40: LitVarI2 var_9C, 6
  loc_B4DD45: HardType
  loc_B4DD46: EqVarBool
  loc_B4DD48: BranchF loc_B4DD82
  loc_B4DD4B: FLdRfVar var_E0
  loc_B4DD4E: LitI2_Byte 5
  loc_B4DD50: FLdPr Me
  loc_B4DD53: VCallAd Control_ID_OficinaCbo
  loc_B4DD56: FStAdFunc var_88
  loc_B4DD59: FLdPr var_88
  loc_B4DD5C: from_stack_2 = Me.List(from_stack_1)
  loc_B4DD61: ILdRf var_E0
  loc_B4DD64: FLdPr Me
  loc_B4DD67: VCallAd Control_ID_OficinaCbo
  loc_B4DD6A: FStAdFunc var_B4
  loc_B4DD6D: FLdPr var_B4
  loc_B4DD70: Me.Text = from_stack_1
  loc_B4DD75: FFree1Str var_E0
  loc_B4DD78: FFreeAd var_88 = ""
  loc_B4DD7F: Branch loc_B4DDC4
  loc_B4DD82: FLdRfVar var_DC
  loc_B4DD85: LitVarI2 var_9C, 7
  loc_B4DD8A: HardType
  loc_B4DD8B: EqVarBool
  loc_B4DD8D: BranchF loc_B4DDC4
  loc_B4DD90: FLdRfVar var_E0
  loc_B4DD93: LitI2_Byte 6
  loc_B4DD95: FLdPr Me
  loc_B4DD98: VCallAd Control_ID_OficinaCbo
  loc_B4DD9B: FStAdFunc var_88
  loc_B4DD9E: FLdPr var_88
  loc_B4DDA1: from_stack_2 = Me.List(from_stack_1)
  loc_B4DDA6: ILdRf var_E0
  loc_B4DDA9: FLdPr Me
  loc_B4DDAC: VCallAd Control_ID_OficinaCbo
  loc_B4DDAF: FStAdFunc var_B4
  loc_B4DDB2: FLdPr var_B4
  loc_B4DDB5: Me.Text = from_stack_1
  loc_B4DDBA: FFree1Str var_E0
  loc_B4DDBD: FFreeAd var_88 = ""
  loc_B4DDC4: FLdRfVar var_CC
  loc_B4DDC7: FLdRfVar var_BC
  loc_B4DDCA: LitVarStr var_9C, "CuenCtct"
  loc_B4DDCF: PopAdLdVar
  loc_B4DDD0: FLdRfVar var_B8
  loc_B4DDD3: FLdRfVar var_B4
  loc_B4DDD6: FLdRfVar var_88
  loc_B4DDD9: ImpAdLdRf MemVar_D94034
  loc_B4DDDC: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4DDDF: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4DDE4: FLdPr var_88
  loc_B4DDE7: from_stack_1v = clsbase.RsFrmGet()
  loc_B4DDEC: FLdPr var_B4
  loc_B4DDEF:  = Me.Fields
  loc_B4DDF4: FLdPr var_B8
  loc_B4DDF7: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DDFC: FLdPr var_BC
  loc_B4DDFF:  = Me.Value
  loc_B4DE04: FLdRfVar var_CC
  loc_B4DE07: CStrVarTmp
  loc_B4DE08: FStStrNoPop var_E0
  loc_B4DE0B: FLdPr Me
  loc_B4DE0E: VCallAd Control_ID_NumeCtaTxt
  loc_B4DE11: FStAdFunc var_E4
  loc_B4DE14: FLdPr var_E4
  loc_B4DE17: Me.Text = from_stack_1
  loc_B4DE1C: FFree1Str var_E0
  loc_B4DE1F: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4DE2C: FFree1Var var_CC = ""
  loc_B4DE2F: FLdPr Me
  loc_B4DE32: VCallAd Control_ID_NumeCtaTxt
  loc_B4DE35: CVarAd
  loc_B4DE39: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4DE3E: FFree1Var var_CC = ""
  loc_B4DE41: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A75340
  'Data Table: 5083E0
  loc_A752D4: FLdPrThis
  loc_A752D5: VCallAd Control_ID_NumeCtaTxt
  loc_A752D8: CVarAd
  loc_A752DC: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A752E1: FFree1Var var_94 = ""
  loc_A752E4: Call Proc_299_35_B17868()
  loc_A752E9: FLdRfVar var_9A
  loc_A752EC: FLdPr Me
  loc_A752EF: VCallAd Control_ID_ConfirmarCmd
  loc_A752F2: FStAdFunc var_98
  loc_A752F5: FLdPr var_98
  loc_A752F8:  = Me.Enabled
  loc_A752FD: FLdI2 var_9A
  loc_A75300: LitI2_Byte 0
  loc_A75302: EqI2
  loc_A75303: FFree1Ad var_98
  loc_A75306: BranchF loc_A7533C
  loc_A75309: LitI4 0
  loc_A7530E: LitI4 0
  loc_A75313: FLdRfVar var_A0
  loc_A75316: Redim
  loc_A75320: FLdPr Me
  loc_A75323: VCallAd Control_ID_ConfirmarCmd
  loc_A75326: CVarAd
  loc_A7532A: ParmAry1St
  loc_A75330: FLdRfVar var_A0
  loc_A75333: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A75338: FLdRfVar var_A0
  loc_A7533B: Erase
  loc_A7533C: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B5AA54
  'Data Table: 5083E0
  loc_B5A678: FLdRfVar var_8A
  loc_B5A67B: FLdPr Me
  loc_B5A67E: VCallAd Control_ID_NumeCtaTxt
  loc_B5A681: FStAdFunc var_88
  loc_B5A684: FLdPr var_88
  loc_B5A687:  = Me.Enabled
  loc_B5A68C: FLdI2 var_8A
  loc_B5A68F: FFree1Ad var_88
  loc_B5A692: BranchF loc_B5AA50
  loc_B5A695: FLdRfVar var_90
  loc_B5A698: FLdPr Me
  loc_B5A69B: VCallAd Control_ID_NumeCtaTxt
  loc_B5A69E: FStAdFunc var_88
  loc_B5A6A1: FLdPr var_88
  loc_B5A6A4:  = Me.Text
  loc_B5A6A9: FLdZeroAd var_90
  loc_B5A6AC: CVarStr var_A0
  loc_B5A6AF: FLdRfVar var_B0
  loc_B5A6B2: ImpAdCallFPR4  = Trim()
  loc_B5A6B7: FLdRfVar var_B0
  loc_B5A6BA: CStrVarVal var_B4
  loc_B5A6BE: FLdPr Me
  loc_B5A6C1: VCallAd Control_ID_NumeCtaTxt
  loc_B5A6C4: FStAdFunc var_B8
  loc_B5A6C7: FLdPr var_B8
  loc_B5A6CA: Me.Text = from_stack_1
  loc_B5A6CF: FFree1Str var_B4
  loc_B5A6D2: FFreeAd var_88 = ""
  loc_B5A6D9: FFreeVar var_A0 = ""
  loc_B5A6E0: FLdRfVar var_8A
  loc_B5A6E3: FLdPr Me
  loc_B5A6E6: VCallAd Control_ID_OficinaCbo
  loc_B5A6E9: FStAdFunc var_88
  loc_B5A6EC: FLdPr var_88
  loc_B5A6EF:  = Me.ListIndex
  loc_B5A6F4: FLdI2 var_8A
  loc_B5A6F7: FStI2 var_BA
  loc_B5A6FA: FFree1Ad var_88
  loc_B5A6FD: FLdI2 var_BA
  loc_B5A700: LitI2_Byte 0
  loc_B5A702: EqI2
  loc_B5A703: BranchF loc_B5A711
  loc_B5A706: LitI2_Byte 1
  loc_B5A708: CUI1I2
  loc_B5A70A: ImpAdStUI1 MemVar_D93038
  loc_B5A70E: Branch loc_B5A786
  loc_B5A711: FLdI2 var_BA
  loc_B5A714: LitI2_Byte 1
  loc_B5A716: EqI2
  loc_B5A717: BranchF loc_B5A725
  loc_B5A71A: LitI2_Byte 2
  loc_B5A71C: CUI1I2
  loc_B5A71E: ImpAdStUI1 MemVar_D93038
  loc_B5A722: Branch loc_B5A786
  loc_B5A725: FLdI2 var_BA
  loc_B5A728: LitI2_Byte 2
  loc_B5A72A: EqI2
  loc_B5A72B: BranchF loc_B5A739
  loc_B5A72E: LitI2_Byte 3
  loc_B5A730: CUI1I2
  loc_B5A732: ImpAdStUI1 MemVar_D93038
  loc_B5A736: Branch loc_B5A786
  loc_B5A739: FLdI2 var_BA
  loc_B5A73C: LitI2_Byte 3
  loc_B5A73E: EqI2
  loc_B5A73F: BranchF loc_B5A74D
  loc_B5A742: LitI2_Byte 4
  loc_B5A744: CUI1I2
  loc_B5A746: ImpAdStUI1 MemVar_D93038
  loc_B5A74A: Branch loc_B5A786
  loc_B5A74D: FLdI2 var_BA
  loc_B5A750: LitI2_Byte 4
  loc_B5A752: EqI2
  loc_B5A753: BranchF loc_B5A761
  loc_B5A756: LitI2_Byte 5
  loc_B5A758: CUI1I2
  loc_B5A75A: ImpAdStUI1 MemVar_D93038
  loc_B5A75E: Branch loc_B5A786
  loc_B5A761: FLdI2 var_BA
  loc_B5A764: LitI2_Byte 5
  loc_B5A766: EqI2
  loc_B5A767: BranchF loc_B5A775
  loc_B5A76A: LitI2_Byte 6
  loc_B5A76C: CUI1I2
  loc_B5A76E: ImpAdStUI1 MemVar_D93038
  loc_B5A772: Branch loc_B5A786
  loc_B5A775: FLdI2 var_BA
  loc_B5A778: LitI2_Byte 6
  loc_B5A77A: EqI2
  loc_B5A77B: BranchF loc_B5A786
  loc_B5A77E: LitI2_Byte 7
  loc_B5A780: CUI1I2
  loc_B5A782: ImpAdStUI1 MemVar_D93038
  loc_B5A786: FLdRfVar var_90
  loc_B5A789: FLdPr Me
  loc_B5A78C: VCallAd Control_ID_NumeCtaTxt
  loc_B5A78F: FStAdFunc var_88
  loc_B5A792: FLdPr var_88
  loc_B5A795:  = Me.Text
  loc_B5A79A: FLdPr Me
  loc_B5A79D: MemLdRfVar from_stack_1.global_68
  loc_B5A7A0: NewIfNullRf
  loc_B5A7A4: LitStr "Titular"
  loc_B5A7A7: ILdRf var_90
  loc_B5A7AA: ImpAdLdUI1
  loc_B5A7AE: CStrI2
  loc_B5A7B0: FStStrNoPop var_B4
  loc_B5A7B3: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B5A7B8: FFreeStr var_B4 = ""
  loc_B5A7BF: FFree1Ad var_88
  loc_B5A7C2: BranchF loc_B5A8E7
  loc_B5A7C5: FLdRfVar var_90
  loc_B5A7C8: FLdPr Me
  loc_B5A7CB: MemLdRfVar from_stack_1.global_68
  loc_B5A7CE: NewIfNullPr tblPersona
  loc_B5A7D1: from_stack_1v = tblPersona.CucuPersGet()
  loc_B5A7D6: ILdRf var_90
  loc_B5A7D9: FLdPr Me
  loc_B5A7DC: VCallAd Control_ID_CucuPersLbl
  loc_B5A7DF: FStAdFunc var_88
  loc_B5A7E2: FLdPr var_88
  loc_B5A7E5: Me.Caption = from_stack_1
  loc_B5A7EA: FFree1Str var_90
  loc_B5A7ED: FFree1Ad var_88
  loc_B5A7F0: FLdRfVar var_90
  loc_B5A7F3: FLdPr Me
  loc_B5A7F6: MemLdRfVar from_stack_1.global_68
  loc_B5A7F9: NewIfNullPr tblPersona
  loc_B5A7FC: from_stack_1v = tblPersona.DetaPersGet()
  loc_B5A801: ILdRf var_90
  loc_B5A804: FLdPr Me
  loc_B5A807: VCallAd Control_ID_DetaPersLbl
  loc_B5A80A: FStAdFunc var_88
  loc_B5A80D: FLdPr var_88
  loc_B5A810: Me.Caption = from_stack_1
  loc_B5A815: FFree1Str var_90
  loc_B5A818: FFree1Ad var_88
  loc_B5A81B: FLdRfVar var_B4
  loc_B5A81E: FLdPr Me
  loc_B5A821: MemLdRfVar from_stack_1.global_68
  loc_B5A824: NewIfNullPr tblPersona
  loc_B5A827: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B5A82C: FLdRfVar var_C0
  loc_B5A82F: FLdPr Me
  loc_B5A832: MemLdRfVar from_stack_1.global_68
  loc_B5A835: NewIfNullPr tblPersona
  loc_B5A838: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B5A83D: FLdRfVar var_90
  loc_B5A840: FLdPr Me
  loc_B5A843: MemLdRfVar from_stack_1.global_68
  loc_B5A846: NewIfNullPr tblPersona
  loc_B5A849: from_stack_1v = tblPersona.DetaCallGet()
  loc_B5A84E: ILdRf var_90
  loc_B5A851: LitStr " "
  loc_B5A854: ConcatStr
  loc_B5A855: CVarStr var_100
  loc_B5A858: LitVarStr var_E0, vbNullString
  loc_B5A85D: FStVarCopyObj var_B0
  loc_B5A860: FLdRfVar var_B0
  loc_B5A863: LitStr "Nro: "
  loc_B5A866: ILdRf var_C0
  loc_B5A869: ConcatStr
  loc_B5A86A: CVarStr var_A0
  loc_B5A86D: ILdRf var_B4
  loc_B5A870: LitStr "0"
  loc_B5A873: NeStr
  loc_B5A875: CVarBoolI2 var_D0
  loc_B5A879: FLdRfVar var_F0
  loc_B5A87C: ImpAdCallFPR4  = IIf(, , )
  loc_B5A881: FLdRfVar var_F0
  loc_B5A884: ConcatVar var_110
  loc_B5A888: LitVarStr var_120, " "
  loc_B5A88D: ConcatVar var_130
  loc_B5A891: FLdRfVar var_134
  loc_B5A894: FLdPr Me
  loc_B5A897: MemLdRfVar from_stack_1.global_68
  loc_B5A89A: NewIfNullPr tblPersona
  loc_B5A89D: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B5A8A2: FLdZeroAd var_134
  loc_B5A8A5: CVarStr var_144
  loc_B5A8A8: ConcatVar var_154
  loc_B5A8AC: CStrVarVal var_158
  loc_B5A8B0: FLdPr Me
  loc_B5A8B3: VCallAd Control_ID_DomiPersLbl
  loc_B5A8B6: FStAdFunc var_88
  loc_B5A8B9: FLdPr var_88
  loc_B5A8BC: Me.Caption = from_stack_1
  loc_B5A8C1: FFreeStr var_90 = "": var_B4 = "": var_C0 = ""
  loc_B5A8CC: FFree1Ad var_88
  loc_B5A8CF: FFreeVar var_D0 = "": var_A0 = "": var_B0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = ""
  loc_B5A8E4: Branch loc_B5A96D
  loc_B5A8E7: FLdRfVar var_90
  loc_B5A8EA: FLdPr Me
  loc_B5A8ED: MemLdRfVar from_stack_1.global_68
  loc_B5A8F0: NewIfNullPr tblPersona
  loc_B5A8F3: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B5A8F8: ILdRf var_90
  loc_B5A8FB: FLdPr Me
  loc_B5A8FE: MemStStrCopy
  loc_B5A902: FFree1Str var_90
  loc_B5A905: FLdPr Me
  loc_B5A908: MemLdStr global_112
  loc_B5A90B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5A910: LitStr vbNullString
  loc_B5A913: FLdPr Me
  loc_B5A916: VCallAd Control_ID_CucuPersLbl
  loc_B5A919: FStAdFunc var_88
  loc_B5A91C: FLdPr var_88
  loc_B5A91F: Me.Caption = from_stack_1
  loc_B5A924: FFree1Ad var_88
  loc_B5A927: LitStr vbNullString
  loc_B5A92A: FLdPr Me
  loc_B5A92D: VCallAd Control_ID_DetaPersLbl
  loc_B5A930: FStAdFunc var_88
  loc_B5A933: FLdPr var_88
  loc_B5A936: Me.Caption = from_stack_1
  loc_B5A93B: FFree1Ad var_88
  loc_B5A93E: LitStr vbNullString
  loc_B5A941: FLdPr Me
  loc_B5A944: VCallAd Control_ID_DomiPersLbl
  loc_B5A947: FStAdFunc var_88
  loc_B5A94A: FLdPr var_88
  loc_B5A94D: Me.Caption = from_stack_1
  loc_B5A952: FFree1Ad var_88
  loc_B5A955: FLdPr Me
  loc_B5A958: VCallAd Control_ID_NumeCtaTxt
  loc_B5A95B: CVarAd
  loc_B5A95F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5A964: FFree1Var var_A0 = ""
  loc_B5A967: LitI2_Byte &HFF
  loc_B5A969: IStI2 Cancel
  loc_B5A96C: ExitProcHresult
  loc_B5A96D: LitStr "Municipalidad de Guaymallén"
  loc_B5A970: LitStr "Municipalidad de Guaymallén"
  loc_B5A973: EqStr
  loc_B5A975: BranchF loc_B5AA50
  loc_B5A978: ImpAdLdUI1
  loc_B5A97C: CI2UI1
  loc_B5A97E: LitI2_Byte 2
  loc_B5A980: EqI2
  loc_B5A981: BranchF loc_B5A9E4
  loc_B5A984: FLdRfVar var_90
  loc_B5A987: FLdPr Me
  loc_B5A98A: VCallAd Control_ID_NumeCtaTxt
  loc_B5A98D: FStAdFunc var_88
  loc_B5A990: FLdPr var_88
  loc_B5A993:  = Me.Text
  loc_B5A998: ILdRf var_90
  loc_B5A99B: ImpAdCallI2 Proc_18_117_A5E6FC()
  loc_B5A9A0: FStStrNoPop var_B4
  loc_B5A9A3: FLdPr Me
  loc_B5A9A6: MemStStrCopy
  loc_B5A9AA: FFreeStr var_90 = ""
  loc_B5A9B1: FFree1Ad var_88
  loc_B5A9B4: FLdPr Me
  loc_B5A9B7: MemLdStr global_112
  loc_B5A9BA: LitStr vbNullString
  loc_B5A9BD: NeStr
  loc_B5A9BF: BranchF loc_B5A9E4
  loc_B5A9C2: FLdPr Me
  loc_B5A9C5: MemLdStr global_112
  loc_B5A9C8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5A9CD: FLdPr Me
  loc_B5A9D0: VCallAd Control_ID_NumeCtaTxt
  loc_B5A9D3: CVarAd
  loc_B5A9D7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5A9DC: FFree1Var var_A0 = ""
  loc_B5A9DF: LitI2_Byte &HFF
  loc_B5A9E1: IStI2 Cancel
  loc_B5A9E4: ImpAdLdUI1
  loc_B5A9E8: CI2UI1
  loc_B5A9EA: LitI2_Byte 3
  loc_B5A9EC: EqI2
  loc_B5A9ED: BranchF loc_B5AA50
  loc_B5A9F0: FLdRfVar var_90
  loc_B5A9F3: FLdPr Me
  loc_B5A9F6: VCallAd Control_ID_NumeCtaTxt
  loc_B5A9F9: FStAdFunc var_88
  loc_B5A9FC: FLdPr var_88
  loc_B5A9FF:  = Me.Text
  loc_B5AA04: ILdRf var_90
  loc_B5AA07: ImpAdCallI2 Proc_18_102_AA2D00()
  loc_B5AA0C: FStStrNoPop var_B4
  loc_B5AA0F: FLdPr Me
  loc_B5AA12: MemStStrCopy
  loc_B5AA16: FFreeStr var_90 = ""
  loc_B5AA1D: FFree1Ad var_88
  loc_B5AA20: FLdPr Me
  loc_B5AA23: MemLdStr global_112
  loc_B5AA26: LitStr vbNullString
  loc_B5AA29: NeStr
  loc_B5AA2B: BranchF loc_B5AA50
  loc_B5AA2E: FLdPr Me
  loc_B5AA31: MemLdStr global_112
  loc_B5AA34: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5AA39: FLdPr Me
  loc_B5AA3C: VCallAd Control_ID_NumeCtaTxt
  loc_B5AA3F: CVarAd
  loc_B5AA43: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5AA48: FFree1Var var_A0 = ""
  loc_B5AA4B: LitI2_Byte &HFF
  loc_B5AA4D: IStI2 Cancel
  loc_B5AA50: ExitProcHresult
End Sub

Private Sub DesdeBimeCtct_GotFocus() '9BD308
  'Data Table: 5083E0
  loc_9BD2F4: FLdPr Me
  loc_9BD2F7: VCallAd Control_ID_DesdeBimeCtct
  loc_9BD2FA: CVarAd
  loc_9BD2FE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD303: FFree1Var var_94 = ""
  loc_9BD306: ExitProcHresult
End Sub

Private Sub DesdeBimeCtct_KeyPress(KeyAscii As Integer) '9CA8EC
  'Data Table: 5083E0
  loc_9CA8D4: LitStr "1234567890"
  loc_9CA8D7: FStStrCopy var_88
  loc_9CA8DA: FLdRfVar var_88
  loc_9CA8DD: ILdRf KeyAscii
  loc_9CA8E0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA8E5: IStI2 KeyAscii
  loc_9CA8E8: FFree1Str var_88
  loc_9CA8EB: ExitProcHresult
End Sub

Private Sub DesdeBimeCtct_Validate(Cancel As Boolean) 'A82414
  'Data Table: 5083E0
  loc_A8238C: FLdRfVar var_8A
  loc_A8238F: FLdPr Me
  loc_A82392: VCallAd Control_ID_DesdeBimeCtct
  loc_A82395: FStAdFunc var_88
  loc_A82398: FLdPr var_88
  loc_A8239B:  = Me.Enabled
  loc_A823A0: FLdI2 var_8A
  loc_A823A3: FFree1Ad var_88
  loc_A823A6: BranchF loc_A82411
  loc_A823A9: FLdRfVar var_90
  loc_A823AC: FLdPr Me
  loc_A823AF: VCallAd Control_ID_DesdeBimeCtct
  loc_A823B2: FStAdFunc var_88
  loc_A823B5: FLdPr var_88
  loc_A823B8:  = Me.Text
  loc_A823BD: LitI2_Byte 0
  loc_A823BF: LitI2_Byte 0
  loc_A823C1: ILdRf var_90
  loc_A823C4: LitStr "bimestre"
  loc_A823C7: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A823CC: FStStrNoPop var_94
  loc_A823CF: FLdPr Me
  loc_A823D2: MemStStrCopy
  loc_A823D6: FFreeStr var_90 = ""
  loc_A823DD: FFree1Ad var_88
  loc_A823E0: FLdPr Me
  loc_A823E3: MemLdStr global_112
  loc_A823E6: LitStr vbNullString
  loc_A823E9: NeStr
  loc_A823EB: BranchF loc_A82411
  loc_A823EE: FLdPr Me
  loc_A823F1: MemLdStr global_112
  loc_A823F4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A823F9: FLdPr Me
  loc_A823FC: VCallAd Control_ID_DesdeBimeCtct
  loc_A823FF: CVarAd
  loc_A82403: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A82408: FFree1Var var_A4 = ""
  loc_A8240B: LitI2_Byte &HFF
  loc_A8240D: IStI2 Cancel
  loc_A82410: ExitProcHresult
  loc_A82411: ExitProcHresult
  loc_A82412: CopyBytes
End Sub

Private Sub HastaBimeCtct_GotFocus() '9BD428
  'Data Table: 5083E0
  loc_9BD414: FLdPr Me
  loc_9BD417: VCallAd Control_ID_HastaBimeCtct
  loc_9BD41A: CVarAd
  loc_9BD41E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BD423: FFree1Var var_94 = ""
  loc_9BD426: ExitProcHresult
End Sub

Private Sub HastaBimeCtct_KeyPress(KeyAscii As Integer) '9CA938
  'Data Table: 5083E0
  loc_9CA920: LitStr "1234567890"
  loc_9CA923: FStStrCopy var_88
  loc_9CA926: FLdRfVar var_88
  loc_9CA929: ILdRf KeyAscii
  loc_9CA92C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CA931: IStI2 KeyAscii
  loc_9CA934: FFree1Str var_88
  loc_9CA937: ExitProcHresult
End Sub

Private Sub HastaBimeCtct_Validate(Cancel As Boolean) 'A819EC
  'Data Table: 5083E0
  loc_A81964: FLdRfVar var_8A
  loc_A81967: FLdPr Me
  loc_A8196A: VCallAd Control_ID_HastaBimeCtct
  loc_A8196D: FStAdFunc var_88
  loc_A81970: FLdPr var_88
  loc_A81973:  = Me.Enabled
  loc_A81978: FLdI2 var_8A
  loc_A8197B: FFree1Ad var_88
  loc_A8197E: BranchF loc_A819E9
  loc_A81981: FLdRfVar var_90
  loc_A81984: FLdPr Me
  loc_A81987: VCallAd Control_ID_HastaBimeCtct
  loc_A8198A: FStAdFunc var_88
  loc_A8198D: FLdPr var_88
  loc_A81990:  = Me.Text
  loc_A81995: LitI2_Byte 0
  loc_A81997: LitI2_Byte 0
  loc_A81999: ILdRf var_90
  loc_A8199C: LitStr "bimestre"
  loc_A8199F: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A819A4: FStStrNoPop var_94
  loc_A819A7: FLdPr Me
  loc_A819AA: MemStStrCopy
  loc_A819AE: FFreeStr var_90 = ""
  loc_A819B5: FFree1Ad var_88
  loc_A819B8: FLdPr Me
  loc_A819BB: MemLdStr global_112
  loc_A819BE: LitStr vbNullString
  loc_A819C1: NeStr
  loc_A819C3: BranchF loc_A819E9
  loc_A819C6: FLdPr Me
  loc_A819C9: MemLdStr global_112
  loc_A819CC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A819D1: FLdPr Me
  loc_A819D4: VCallAd Control_ID_HastaBimeCtct
  loc_A819D7: CVarAd
  loc_A819DB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A819E0: FFree1Var var_A4 = ""
  loc_A819E3: LitI2_Byte &HFF
  loc_A819E5: IStI2 Cancel
  loc_A819E8: ExitProcHresult
  loc_A819E9: ExitProcHresult
End Sub

Private Sub Form_Load() 'BDD798
  'Data Table: 5083E0
  loc_BDD00C: LitVar_Missing var_94
  loc_BDD00F: PopAdLdVar
  loc_BDD010: LitStr "Inmueble"
  loc_BDD013: FLdPr Me
  loc_BDD016: VCallAd Control_ID_OficinaCbo
  loc_BDD019: FStAdFunc var_98
  loc_BDD01C: FLdPr var_98
  loc_BDD01F: Me.AddItem from_stack_1, from_stack_2
  loc_BDD024: FFree1Ad var_98
  loc_BDD027: LitVar_Missing var_94
  loc_BDD02A: PopAdLdVar
  loc_BDD02B: LitStr "Comercio"
  loc_BDD02E: FLdPr Me
  loc_BDD031: VCallAd Control_ID_OficinaCbo
  loc_BDD034: FStAdFunc var_98
  loc_BDD037: FLdPr var_98
  loc_BDD03A: Me.AddItem from_stack_1, from_stack_2
  loc_BDD03F: FFree1Ad var_98
  loc_BDD042: LitVar_Missing var_94
  loc_BDD045: PopAdLdVar
  loc_BDD046: LitStr "Deudores Varios"
  loc_BDD049: FLdPr Me
  loc_BDD04C: VCallAd Control_ID_OficinaCbo
  loc_BDD04F: FStAdFunc var_98
  loc_BDD052: FLdPr var_98
  loc_BDD055: Me.AddItem from_stack_1, from_stack_2
  loc_BDD05A: FFree1Ad var_98
  loc_BDD05D: LitVar_Missing var_94
  loc_BDD060: PopAdLdVar
  loc_BDD061: LitStr "Cementerio"
  loc_BDD064: FLdPr Me
  loc_BDD067: VCallAd Control_ID_OficinaCbo
  loc_BDD06A: FStAdFunc var_98
  loc_BDD06D: FLdPr var_98
  loc_BDD070: Me.AddItem from_stack_1, from_stack_2
  loc_BDD075: FFree1Ad var_98
  loc_BDD078: LitVar_Missing var_94
  loc_BDD07B: PopAdLdVar
  loc_BDD07C: LitStr "Transito"
  loc_BDD07F: FLdPr Me
  loc_BDD082: VCallAd Control_ID_OficinaCbo
  loc_BDD085: FStAdFunc var_98
  loc_BDD088: FLdPr var_98
  loc_BDD08B: Me.AddItem from_stack_1, from_stack_2
  loc_BDD090: FFree1Ad var_98
  loc_BDD093: LitVar_Missing var_94
  loc_BDD096: PopAdLdVar
  loc_BDD097: LitStr "Publicidad"
  loc_BDD09A: FLdPr Me
  loc_BDD09D: VCallAd Control_ID_OficinaCbo
  loc_BDD0A0: FStAdFunc var_98
  loc_BDD0A3: FLdPr var_98
  loc_BDD0A6: Me.AddItem from_stack_1, from_stack_2
  loc_BDD0AB: FFree1Ad var_98
  loc_BDD0AE: LitVar_Missing var_94
  loc_BDD0B1: PopAdLdVar
  loc_BDD0B2: LitStr "Antena"
  loc_BDD0B5: FLdPr Me
  loc_BDD0B8: VCallAd Control_ID_OficinaCbo
  loc_BDD0BB: FStAdFunc var_98
  loc_BDD0BE: FLdPr var_98
  loc_BDD0C1: Me.AddItem from_stack_1, from_stack_2
  loc_BDD0C6: FFree1Ad var_98
  loc_BDD0C9: LitI2_Byte 0
  loc_BDD0CB: FLdPr Me
  loc_BDD0CE: VCallAd Control_ID_OficinaCbo
  loc_BDD0D1: FStAdFunc var_98
  loc_BDD0D4: FLdPr var_98
  loc_BDD0D7: Me.ListIndex = from_stack_1
  loc_BDD0DC: FFree1Ad var_98
  loc_BDD0DF: LitI2_Byte 0
  loc_BDD0E1: FLdPr Me
  loc_BDD0E4: VCallAd Control_ID_OficinaCbo
  loc_BDD0E7: FStAdFunc var_98
  loc_BDD0EA: FLdPr var_98
  loc_BDD0ED: Me.Enabled = from_stack_1b
  loc_BDD0F2: FFree1Ad var_98
  loc_BDD0F5: LitStr "0"
  loc_BDD0F8: FLdPr Me
  loc_BDD0FB: VCallAd Control_ID_NumeCtaTxt
  loc_BDD0FE: FStAdFunc var_98
  loc_BDD101: FLdPr var_98
  loc_BDD104: Me.Text = from_stack_1
  loc_BDD109: FFree1Ad var_98
  loc_BDD10C: LitI2_Byte 0
  loc_BDD10E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BDD113: FLdPr Me
  loc_BDD116: MemStFPR8 global_88
  loc_BDD119: FLdPr Me
  loc_BDD11C: MemLdFPR8 global_88
  loc_BDD11F: CStrDate
  loc_BDD121: CVarStr var_A8
  loc_BDD124: PopAdLdVar
  loc_BDD125: FLdPr Me
  loc_BDD128: VCallAd Control_ID_FechVencMsk
  loc_BDD12B: FStAdFunc var_98
  loc_BDD12E: FLdPr var_98
  loc_BDD131: LateIdSt
  loc_BDD136: FFree1Ad var_98
  loc_BDD139: FFree1Var var_A8 = ""
  loc_BDD13C: LitI4 1
  loc_BDD141: LitI4 1
  loc_BDD146: LitVarStr var_B8, "0.00"
  loc_BDD14B: FStVarCopyObj var_A8
  loc_BDD14E: FLdRfVar var_A8
  loc_BDD151: ImpAdLdRf MemVar_D93084
  loc_BDD154: CVarRef
  loc_BDD159: FLdRfVar var_C8
  loc_BDD15C: ImpAdCallFPR4  = Format(, )
  loc_BDD161: FLdRfVar var_C8
  loc_BDD164: CStrVarVal var_CC
  loc_BDD168: FLdPr Me
  loc_BDD16B: VCallAd Control_ID_UntrPageTxt
  loc_BDD16E: FStAdFunc var_98
  loc_BDD171: FLdPr var_98
  loc_BDD174: Me.Text = from_stack_1
  loc_BDD179: FFree1Str var_CC
  loc_BDD17C: FFree1Ad var_98
  loc_BDD17F: FFreeVar var_A8 = ""
  loc_BDD186: LitI2_Byte 0
  loc_BDD188: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BDD18D: CVarDate var_A8
  loc_BDD191: FLdRfVar var_C8
  loc_BDD194: ImpAdCallFPR4  = Year()
  loc_BDD199: FLdRfVar var_C8
  loc_BDD19C: CStrVarVal var_CC
  loc_BDD1A0: FLdPr Me
  loc_BDD1A3: VCallAd Control_ID_PeriCtctTxt
  loc_BDD1A6: FStAdFunc var_98
  loc_BDD1A9: FLdPr var_98
  loc_BDD1AC: Me.Text = from_stack_1
  loc_BDD1B1: FFree1Str var_CC
  loc_BDD1B4: FFree1Ad var_98
  loc_BDD1B7: FFreeVar var_A8 = ""
  loc_BDD1BE: LitI2_Byte 1
  loc_BDD1C0: CStrUI1
  loc_BDD1C2: FStStrNoPop var_CC
  loc_BDD1C5: FLdPr Me
  loc_BDD1C8: VCallAd Control_ID_DesdeBimeCtct
  loc_BDD1CB: FStAdFunc var_98
  loc_BDD1CE: FLdPr var_98
  loc_BDD1D1: Me.Text = from_stack_1
  loc_BDD1D6: FFree1Str var_CC
  loc_BDD1D9: FFree1Ad var_98
  loc_BDD1DC: LitI2_Byte 6
  loc_BDD1DE: CStrUI1
  loc_BDD1E0: FStStrNoPop var_CC
  loc_BDD1E3: FLdPr Me
  loc_BDD1E6: VCallAd Control_ID_HastaBimeCtct
  loc_BDD1E9: FStAdFunc var_98
  loc_BDD1EC: FLdPr var_98
  loc_BDD1EF: Me.Text = from_stack_1
  loc_BDD1F4: FFree1Str var_CC
  loc_BDD1F7: FFree1Ad var_98
  loc_BDD1FA: LitI4 1
  loc_BDD1FF: LitI4 1
  loc_BDD204: LitVarStr var_B8, "0.00"
  loc_BDD209: FStVarCopyObj var_C8
  loc_BDD20C: FLdRfVar var_C8
  loc_BDD20F: LitVarI2 var_A8, 0
  loc_BDD214: FLdRfVar var_DC
  loc_BDD217: ImpAdCallFPR4  = Format(, )
  loc_BDD21C: FLdRfVar var_DC
  loc_BDD21F: CStrVarVal var_CC
  loc_BDD223: FLdPr Me
  loc_BDD226: VCallAd Control_ID_ImpoCtctTxt
  loc_BDD229: FStAdFunc var_98
  loc_BDD22C: FLdPr var_98
  loc_BDD22F: Me.Text = from_stack_1
  loc_BDD234: FFree1Str var_CC
  loc_BDD237: FFree1Ad var_98
  loc_BDD23A: FFreeVar var_A8 = "": var_C8 = ""
  loc_BDD243: LitI4 1
  loc_BDD248: LitI4 1
  loc_BDD24D: LitVarStr var_B8, "0.00"
  loc_BDD252: FStVarCopyObj var_C8
  loc_BDD255: FLdRfVar var_C8
  loc_BDD258: LitVarI2 var_A8, 0
  loc_BDD25D: FLdRfVar var_DC
  loc_BDD260: ImpAdCallFPR4  = Format(, )
  loc_BDD265: FLdRfVar var_DC
  loc_BDD268: CStrVarVal var_CC
  loc_BDD26C: FLdPr Me
  loc_BDD26F: VCallAd Control_ID_ImpoBombTxt
  loc_BDD272: FStAdFunc var_98
  loc_BDD275: FLdPr var_98
  loc_BDD278: Me.Text = from_stack_1
  loc_BDD27D: FFree1Str var_CC
  loc_BDD280: FFree1Ad var_98
  loc_BDD283: FFreeVar var_A8 = "": var_C8 = ""
  loc_BDD28C: FLdPr Me
  loc_BDD28F: VCallAd Control_ID_ctacteFlex
  loc_BDD292: FStAdFunc var_E0
  loc_BDD295: LitVarI4
  loc_BDD29D: PopAdLdVar
  loc_BDD29E: LitVarI4
  loc_BDD2A6: PopAdLdVar
  loc_BDD2A7: FLdPr var_E0
  loc_BDD2AA: LateIdCallSt
  loc_BDD2B2: LitVarI4
  loc_BDD2BA: PopAdLdVar
  loc_BDD2BB: LitVarI4
  loc_BDD2C3: PopAdLdVar
  loc_BDD2C4: FLdPr var_E0
  loc_BDD2C7: LateIdCallSt
  loc_BDD2CF: LitVarI4
  loc_BDD2D7: PopAdLdVar
  loc_BDD2D8: LitVarI4
  loc_BDD2E0: PopAdLdVar
  loc_BDD2E1: FLdPr var_E0
  loc_BDD2E4: LateIdCallSt
  loc_BDD2EC: LitVarI4
  loc_BDD2F4: PopAdLdVar
  loc_BDD2F5: LitVarI4
  loc_BDD2FD: PopAdLdVar
  loc_BDD2FE: FLdPr var_E0
  loc_BDD301: LateIdCallSt
  loc_BDD309: LitVarI4
  loc_BDD311: PopAdLdVar
  loc_BDD312: LitVarI4
  loc_BDD31A: PopAdLdVar
  loc_BDD31B: FLdPr var_E0
  loc_BDD31E: LateIdCallSt
  loc_BDD326: LitVarI4
  loc_BDD32E: PopAdLdVar
  loc_BDD32F: LitVarI4
  loc_BDD337: PopAdLdVar
  loc_BDD338: FLdPr var_E0
  loc_BDD33B: LateIdCallSt
  loc_BDD343: LitVarI4
  loc_BDD34B: PopAdLdVar
  loc_BDD34C: LitVarI4
  loc_BDD354: PopAdLdVar
  loc_BDD355: FLdPr var_E0
  loc_BDD358: LateIdCallSt
  loc_BDD360: LitVarI4
  loc_BDD368: PopAdLdVar
  loc_BDD369: LitVarI4
  loc_BDD371: PopAdLdVar
  loc_BDD372: FLdPr var_E0
  loc_BDD375: LateIdCallSt
  loc_BDD37D: LitVarI4
  loc_BDD385: PopAdLdVar
  loc_BDD386: LitVarI4
  loc_BDD38E: PopAdLdVar
  loc_BDD38F: FLdPr var_E0
  loc_BDD392: LateIdCallSt
  loc_BDD39A: LitVarI4
  loc_BDD3A2: PopAdLdVar
  loc_BDD3A3: LitVarI4
  loc_BDD3AB: PopAdLdVar
  loc_BDD3AC: FLdPr var_E0
  loc_BDD3AF: LateIdCallSt
  loc_BDD3B7: LitVarI4
  loc_BDD3BF: PopAdLdVar
  loc_BDD3C0: LitVarI4
  loc_BDD3C8: PopAdLdVar
  loc_BDD3C9: FLdPr var_E0
  loc_BDD3CC: LateIdCallSt
  loc_BDD3D4: LitVarI4
  loc_BDD3DC: PopAdLdVar
  loc_BDD3DD: LitVarI4
  loc_BDD3E5: PopAdLdVar
  loc_BDD3E6: FLdPr var_E0
  loc_BDD3E9: LateIdCallSt
  loc_BDD3F1: LitVarI4
  loc_BDD3F9: PopAdLdVar
  loc_BDD3FA: LitVarI4
  loc_BDD402: PopAdLdVar
  loc_BDD403: FLdPr var_E0
  loc_BDD406: LateIdCallSt
  loc_BDD40E: LitVarI4
  loc_BDD416: PopAdLdVar
  loc_BDD417: LitVarI4
  loc_BDD41F: PopAdLdVar
  loc_BDD420: FLdPr var_E0
  loc_BDD423: LateIdCallSt
  loc_BDD42B: LitVarI4
  loc_BDD433: PopAdLdVar
  loc_BDD434: LitVarI4
  loc_BDD43C: PopAdLdVar
  loc_BDD43D: FLdPr var_E0
  loc_BDD440: LateIdCallSt
  loc_BDD448: LitVarI4
  loc_BDD450: PopAdLdVar
  loc_BDD451: LitVarI4
  loc_BDD459: PopAdLdVar
  loc_BDD45A: FLdPr var_E0
  loc_BDD45D: LateIdCallSt
  loc_BDD465: LitVarI4
  loc_BDD46D: PopAdLdVar
  loc_BDD46E: LitVarI4
  loc_BDD476: PopAdLdVar
  loc_BDD477: FLdPr var_E0
  loc_BDD47A: LateIdCallSt
  loc_BDD482: LitVarI4
  loc_BDD48A: PopAdLdVar
  loc_BDD48B: LitVarI4
  loc_BDD493: PopAdLdVar
  loc_BDD494: LitVarStr var_110, "Of"
  loc_BDD499: PopAdLdVar
  loc_BDD49A: FLdPr var_E0
  loc_BDD49D: LateIdCallSt
  loc_BDD4A5: LitVarI4
  loc_BDD4AD: PopAdLdVar
  loc_BDD4AE: LitVarI4
  loc_BDD4B6: PopAdLdVar
  loc_BDD4B7: LitVarStr var_110, "Cuenta"
  loc_BDD4BC: PopAdLdVar
  loc_BDD4BD: FLdPr var_E0
  loc_BDD4C0: LateIdCallSt
  loc_BDD4C8: LitVarI4
  loc_BDD4D0: PopAdLdVar
  loc_BDD4D1: LitVarI4
  loc_BDD4D9: PopAdLdVar
  loc_BDD4DA: LitVarStr var_110, "Periodo"
  loc_BDD4DF: PopAdLdVar
  loc_BDD4E0: FLdPr var_E0
  loc_BDD4E3: LateIdCallSt
  loc_BDD4EB: LitVarI4
  loc_BDD4F3: PopAdLdVar
  loc_BDD4F4: LitVarI4
  loc_BDD4FC: PopAdLdVar
  loc_BDD4FD: LitVarStr var_110, "Boleto"
  loc_BDD502: PopAdLdVar
  loc_BDD503: FLdPr var_E0
  loc_BDD506: LateIdCallSt
  loc_BDD50E: LitVarI4
  loc_BDD516: PopAdLdVar
  loc_BDD517: LitVarI4
  loc_BDD51F: PopAdLdVar
  loc_BDD520: LitVarStr var_110, "Emision"
  loc_BDD525: PopAdLdVar
  loc_BDD526: FLdPr var_E0
  loc_BDD529: LateIdCallSt
  loc_BDD531: LitVarI4
  loc_BDD539: PopAdLdVar
  loc_BDD53A: LitVarI4
  loc_BDD542: PopAdLdVar
  loc_BDD543: LitVarStr var_110, "Vencimiento"
  loc_BDD548: PopAdLdVar
  loc_BDD549: FLdPr var_E0
  loc_BDD54C: LateIdCallSt
  loc_BDD554: LitVarI4
  loc_BDD55C: PopAdLdVar
  loc_BDD55D: LitVarI4
  loc_BDD565: PopAdLdVar
  loc_BDD566: LitVarStr var_110, "Concepto"
  loc_BDD56B: PopAdLdVar
  loc_BDD56C: FLdPr var_E0
  loc_BDD56F: LateIdCallSt
  loc_BDD577: LitVarI4
  loc_BDD57F: PopAdLdVar
  loc_BDD580: LitVarI4
  loc_BDD588: PopAdLdVar
  loc_BDD589: LitVarStr var_110, "Facilidad"
  loc_BDD58E: PopAdLdVar
  loc_BDD58F: FLdPr var_E0
  loc_BDD592: LateIdCallSt
  loc_BDD59A: LitVarI4
  loc_BDD5A2: PopAdLdVar
  loc_BDD5A3: LitVarI4
  loc_BDD5AB: PopAdLdVar
  loc_BDD5AC: LitVarStr var_110, "Apremio"
  loc_BDD5B1: PopAdLdVar
  loc_BDD5B2: FLdPr var_E0
  loc_BDD5B5: LateIdCallSt
  loc_BDD5BD: LitVarI4
  loc_BDD5C5: PopAdLdVar
  loc_BDD5C6: LitVarI4
  loc_BDD5CE: PopAdLdVar
  loc_BDD5CF: LitVarStr var_110, "Exp/Comp"
  loc_BDD5D4: PopAdLdVar
  loc_BDD5D5: FLdPr var_E0
  loc_BDD5D8: LateIdCallSt
  loc_BDD5E0: LitVarI4
  loc_BDD5E8: PopAdLdVar
  loc_BDD5E9: LitVarI4
  loc_BDD5F1: PopAdLdVar
  loc_BDD5F2: LitVarStr var_110, "Tipo Movi."
  loc_BDD5F7: PopAdLdVar
  loc_BDD5F8: FLdPr var_E0
  loc_BDD5FB: LateIdCallSt
  loc_BDD603: LitVarI4
  loc_BDD60B: PopAdLdVar
  loc_BDD60C: LitVarI4
  loc_BDD614: PopAdLdVar
  loc_BDD615: LitVarStr var_110, "Debito"
  loc_BDD61A: PopAdLdVar
  loc_BDD61B: FLdPr var_E0
  loc_BDD61E: LateIdCallSt
  loc_BDD626: LitVarI4
  loc_BDD62E: PopAdLdVar
  loc_BDD62F: LitVarI4
  loc_BDD637: PopAdLdVar
  loc_BDD638: LitVarStr var_110, "Recargo"
  loc_BDD63D: PopAdLdVar
  loc_BDD63E: FLdPr var_E0
  loc_BDD641: LateIdCallSt
  loc_BDD649: LitVarI4
  loc_BDD651: PopAdLdVar
  loc_BDD652: LitVarI4
  loc_BDD65A: PopAdLdVar
  loc_BDD65B: LitVarStr var_110, "Saldo"
  loc_BDD660: PopAdLdVar
  loc_BDD661: FLdPr var_E0
  loc_BDD664: LateIdCallSt
  loc_BDD66C: LitVarI4
  loc_BDD674: PopAdLdVar
  loc_BDD675: LitVarI4
  loc_BDD67D: PopAdLdVar
  loc_BDD67E: LitVarStr var_110, "Sel"
  loc_BDD683: PopAdLdVar
  loc_BDD684: FLdPr var_E0
  loc_BDD687: LateIdCallSt
  loc_BDD68F: LitVarI4
  loc_BDD697: PopAdLdVar
  loc_BDD698: LitVarI4
  loc_BDD6A0: PopAdLdVar
  loc_BDD6A1: LitVarStr var_110, "Numero"
  loc_BDD6A6: PopAdLdVar
  loc_BDD6A7: FLdPr var_E0
  loc_BDD6AA: LateIdCallSt
  loc_BDD6B2: LitVarI4
  loc_BDD6BA: PopAdLdVar
  loc_BDD6BB: LitVarI4
  loc_BDD6C3: PopAdLdVar
  loc_BDD6C4: LitVarStr var_110, "Mov"
  loc_BDD6C9: PopAdLdVar
  loc_BDD6CA: FLdPr var_E0
  loc_BDD6CD: LateIdCallSt
  loc_BDD6D5: LitNothing
  loc_BDD6D7: FStAd var_E0 
  loc_BDD6DB: LitStr "SELECT ConcTili, CoreTili, DescTili, DeanTili, GastTili, CogaTili FROM tipoliqu "
  loc_BDD6DE: LitStr " WHERE CodiOfic = 1"
  loc_BDD6E1: ConcatStr
  loc_BDD6E2: FStStrNoPop var_CC
  loc_BDD6E5: LitStr " AND CodiTili = 1 ORDER BY CodiOfic, CodiTili"
  loc_BDD6E8: ConcatStr
  loc_BDD6E9: FStStrNoPop var_124
  loc_BDD6EC: FLdPr Me
  loc_BDD6EF: MemLdRfVar from_stack_1.global_64
  loc_BDD6F2: NewIfNullPr clstipoliqu
  loc_BDD6F5: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_BDD6FA: FFreeStr var_CC = ""
  loc_BDD701: FLdRfVar var_128
  loc_BDD704: FLdPr Me
  loc_BDD707: MemLdRfVar from_stack_1.global_64
  loc_BDD70A: NewIfNullPr clstipoliqu
  loc_BDD70D: from_stack_1 = clstipoliqu.RecordCount
  loc_BDD712: ILdRf var_128
  loc_BDD715: LitI4 1
  loc_BDD71A: EqI4
  loc_BDD71B: BranchF loc_BDD779
  loc_BDD71E: FLdRfVar var_130
  loc_BDD721: FLdPr Me
  loc_BDD724: MemLdRfVar from_stack_1.global_64
  loc_BDD727: NewIfNullPr clstipoliqu
  loc_BDD72A: from_stack_1 = clstipoliqu.GastTili
  loc_BDD72F: FLdFPR8 var_130
  loc_BDD732: FnCDblR8
  loc_BDD734: FLdPr Me
  loc_BDD737: MemStFPR8 global_96
  loc_BDD73A: FLdRfVar var_CC
  loc_BDD73D: FLdPr Me
  loc_BDD740: MemLdRfVar from_stack_1.global_64
  loc_BDD743: NewIfNullPr clstipoliqu
  loc_BDD746: from_stack_1 = clstipoliqu.CoreTili
  loc_BDD74B: ILdRf var_CC
  loc_BDD74E: FLdPr Me
  loc_BDD751: MemStStrCopy
  loc_BDD755: FFree1Str var_CC
  loc_BDD758: FLdRfVar var_CC
  loc_BDD75B: FLdPr Me
  loc_BDD75E: MemLdRfVar from_stack_1.global_64
  loc_BDD761: NewIfNullPr clstipoliqu
  loc_BDD764: from_stack_1 = clstipoliqu.ConcTili
  loc_BDD769: ILdRf var_CC
  loc_BDD76C: FLdPr Me
  loc_BDD76F: MemStStrCopy
  loc_BDD773: FFree1Str var_CC
  loc_BDD776: Branch loc_BDD796
  loc_BDD779: LitI2_Byte 0
  loc_BDD77B: CR8I2
  loc_BDD77C: FLdPr Me
  loc_BDD77F: MemStFPR8 global_96
  loc_BDD782: LitStr vbNullString
  loc_BDD785: FLdPr Me
  loc_BDD788: MemStStrCopy
  loc_BDD78C: LitStr vbNullString
  loc_BDD78F: FLdPr Me
  loc_BDD792: MemStStrCopy
  loc_BDD796: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9D10
  'Data Table: 5083E0
  loc_9B9CFC: ILdI2 KeyCode
  loc_9B9CFF: CI4UI1
  loc_9B9D00: LitI4 &H78
  loc_9B9D05: EqI4
  loc_9B9D06: BranchF loc_9B9D0E
  loc_9B9D09: Call SalirCmd_Click()
  loc_9B9D0E: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A49B58
  'Data Table: 5083E0
  loc_A49B04: LitVar_Missing var_A4
  loc_A49B07: PopAdLdVar
  loc_A49B08: LitVarI4
  loc_A49B10: PopAdLdVar
  loc_A49B11: ImpAdLdRf MemVar_D930A4
  loc_A49B14: NewIfNullPr frmCalendario
  loc_A49B17: frmCalendario.Show from_stack_1, from_stack_2
  loc_A49B1C: ImpAdLdI4 MemVar_D93028
  loc_A49B1F: LitStr vbNullString
  loc_A49B22: NeStr
  loc_A49B24: BranchF loc_A49B42
  loc_A49B27: ImpAdLdRf MemVar_D93028
  loc_A49B2A: CDargRef
  loc_A49B2E: FLdPr Me
  loc_A49B31: VCallAd Control_ID_FechVencMsk
  loc_A49B34: FStAdFunc var_A8
  loc_A49B37: FLdPr var_A8
  loc_A49B3A: LateIdSt
  loc_A49B3F: FFree1Ad var_A8
  loc_A49B42: FLdPr Me
  loc_A49B45: VCallAd Control_ID_FechVencMsk
  loc_A49B48: CVarAd
  loc_A49B4C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A49B51: FFree1Var var_B8 = ""
  loc_A49B54: ExitProcHresult
End Sub

Private Function Proc_299_35_B17868() 'B17868
  'Data Table: 5083E0
  loc_B175DC: FLdPr Me
  loc_B175DF: VCallAd Control_ID_ctacteFlex
  loc_B175E2: FStAdFunc var_88
  loc_B175E5: FLdPr var_88
  loc_B175E8: LateIdCall
  loc_B175F0: LitVarI4
  loc_B175F8: PopAdLdVar
  loc_B175F9: FLdPr var_88
  loc_B175FC: LateIdSt
  loc_B17601: LitVarI4
  loc_B17609: PopAdLdVar
  loc_B1760A: LitVarI4
  loc_B17612: PopAdLdVar
  loc_B17613: LitVarStr var_D8, "Of"
  loc_B17618: PopAdLdVar
  loc_B17619: FLdPr var_88
  loc_B1761C: LateIdCallSt
  loc_B17624: LitVarI4
  loc_B1762C: PopAdLdVar
  loc_B1762D: LitVarI4
  loc_B17635: PopAdLdVar
  loc_B17636: LitVarStr var_D8, "Cuenta"
  loc_B1763B: PopAdLdVar
  loc_B1763C: FLdPr var_88
  loc_B1763F: LateIdCallSt
  loc_B17647: LitVarI4
  loc_B1764F: PopAdLdVar
  loc_B17650: LitVarI4
  loc_B17658: PopAdLdVar
  loc_B17659: LitVarStr var_D8, "Periodo"
  loc_B1765E: PopAdLdVar
  loc_B1765F: FLdPr var_88
  loc_B17662: LateIdCallSt
  loc_B1766A: LitVarI4
  loc_B17672: PopAdLdVar
  loc_B17673: LitVarI4
  loc_B1767B: PopAdLdVar
  loc_B1767C: LitVarStr var_D8, "Boleto"
  loc_B17681: PopAdLdVar
  loc_B17682: FLdPr var_88
  loc_B17685: LateIdCallSt
  loc_B1768D: LitVarI4
  loc_B17695: PopAdLdVar
  loc_B17696: LitVarI4
  loc_B1769E: PopAdLdVar
  loc_B1769F: LitVarStr var_D8, "Emision"
  loc_B176A4: PopAdLdVar
  loc_B176A5: FLdPr var_88
  loc_B176A8: LateIdCallSt
  loc_B176B0: LitVarI4
  loc_B176B8: PopAdLdVar
  loc_B176B9: LitVarI4
  loc_B176C1: PopAdLdVar
  loc_B176C2: LitVarStr var_D8, "Vencimiento"
  loc_B176C7: PopAdLdVar
  loc_B176C8: FLdPr var_88
  loc_B176CB: LateIdCallSt
  loc_B176D3: LitVarI4
  loc_B176DB: PopAdLdVar
  loc_B176DC: LitVarI4
  loc_B176E4: PopAdLdVar
  loc_B176E5: LitVarStr var_D8, "Concepto"
  loc_B176EA: PopAdLdVar
  loc_B176EB: FLdPr var_88
  loc_B176EE: LateIdCallSt
  loc_B176F6: LitVarI4
  loc_B176FE: PopAdLdVar
  loc_B176FF: LitVarI4
  loc_B17707: PopAdLdVar
  loc_B17708: LitVarStr var_D8, "Facilidad"
  loc_B1770D: PopAdLdVar
  loc_B1770E: FLdPr var_88
  loc_B17711: LateIdCallSt
  loc_B17719: LitVarI4
  loc_B17721: PopAdLdVar
  loc_B17722: LitVarI4
  loc_B1772A: PopAdLdVar
  loc_B1772B: LitVarStr var_D8, "Apremio"
  loc_B17730: PopAdLdVar
  loc_B17731: FLdPr var_88
  loc_B17734: LateIdCallSt
  loc_B1773C: LitVarI4
  loc_B17744: PopAdLdVar
  loc_B17745: LitVarI4
  loc_B1774D: PopAdLdVar
  loc_B1774E: LitVarStr var_D8, "Exp/Comp"
  loc_B17753: PopAdLdVar
  loc_B17754: FLdPr var_88
  loc_B17757: LateIdCallSt
  loc_B1775F: LitVarI4
  loc_B17767: PopAdLdVar
  loc_B17768: LitVarI4
  loc_B17770: PopAdLdVar
  loc_B17771: LitVarStr var_D8, "Tipo Movi."
  loc_B17776: PopAdLdVar
  loc_B17777: FLdPr var_88
  loc_B1777A: LateIdCallSt
  loc_B17782: LitVarI4
  loc_B1778A: PopAdLdVar
  loc_B1778B: LitVarI4
  loc_B17793: PopAdLdVar
  loc_B17794: LitVarStr var_D8, "Debito"
  loc_B17799: PopAdLdVar
  loc_B1779A: FLdPr var_88
  loc_B1779D: LateIdCallSt
  loc_B177A5: LitVarI4
  loc_B177AD: PopAdLdVar
  loc_B177AE: LitVarI4
  loc_B177B6: PopAdLdVar
  loc_B177B7: LitVarStr var_D8, "Recargo"
  loc_B177BC: PopAdLdVar
  loc_B177BD: FLdPr var_88
  loc_B177C0: LateIdCallSt
  loc_B177C8: LitVarI4
  loc_B177D0: PopAdLdVar
  loc_B177D1: LitVarI4
  loc_B177D9: PopAdLdVar
  loc_B177DA: LitVarStr var_D8, "Saldo"
  loc_B177DF: PopAdLdVar
  loc_B177E0: FLdPr var_88
  loc_B177E3: LateIdCallSt
  loc_B177EB: LitVarI4
  loc_B177F3: PopAdLdVar
  loc_B177F4: LitVarI4
  loc_B177FC: PopAdLdVar
  loc_B177FD: LitVarStr var_D8, "Sel"
  loc_B17802: PopAdLdVar
  loc_B17803: FLdPr var_88
  loc_B17806: LateIdCallSt
  loc_B1780E: LitVarI4
  loc_B17816: PopAdLdVar
  loc_B17817: LitVarI4
  loc_B1781F: PopAdLdVar
  loc_B17820: LitVarStr var_D8, "Numero"
  loc_B17825: PopAdLdVar
  loc_B17826: FLdPr var_88
  loc_B17829: LateIdCallSt
  loc_B17831: LitVarI4
  loc_B17839: PopAdLdVar
  loc_B1783A: LitVarI4
  loc_B17842: PopAdLdVar
  loc_B17843: LitVarStr var_D8, "Mov"
  loc_B17848: PopAdLdVar
  loc_B17849: FLdPr var_88
  loc_B1784C: LateIdCallSt
  loc_B17854: FLdPr var_88
  loc_B17857: LateIdCall
  loc_B1785F: LitNothing
  loc_B17861: FStAd var_88 
  loc_B17865: ExitProcHresult
End Function
