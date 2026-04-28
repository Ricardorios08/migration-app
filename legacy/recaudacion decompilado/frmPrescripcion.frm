VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmPrescripcion
  Caption = "Prescripción y/o Condonación de Deuda"
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
  ClientTop = 432
  ClientWidth = 15180
  ClientHeight = 10164
  Begin VB.TextBox txtDereSele
    Left = 5640
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
  Begin VB.TextBox txtRecaSele
    Left = 9480
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 35
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
  Begin VB.TextBox txtTotaReca
    Left = 9480
    Top = 5160
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
  Begin VB.TextBox txtTotaApre
    Left = 1920
    Top = 5160
    Width = 1695
    Height = 360
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
  Begin VB.TextBox txtTotal
    Left = 13200
    Top = 5160
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
  Begin VB.TextBox txtTotaSele
    Left = 13200
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 22
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
    Height = 3975
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
    Begin VB.CommandButton SelePeriodoCmd
      Left = 10560
      Top = 720
      Width = 450
      Height = 345
      TabIndex = 42
      Picture = "frmPrescripcion.frx":0000
      Style = 1
    End
    Begin VB.OptionButton ExencionOpt
      Caption = "Exención"
      Left = 4800
      Top = 2880
      Width = 1935
      Height = 375
      TabIndex = 41
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
    Begin VB.OptionButton CondonacionOpt
      Caption = "Condonación"
      Left = 4800
      Top = 2400
      Width = 1935
      Height = 375
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
    Begin VB.OptionButton PrescripcionOpt
      Caption = "Prescripción"
      Left = 4800
      Top = 1920
      Width = 1935
      Height = 375
      TabIndex = 39
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
      Left = 5040
      Top = 3360
      Width = 1335
      Height = 525
      TabIndex = 12
      Picture = "frmPrescripcion.frx":00E2
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 1800
      Top = 1920
      Width = 1575
      Height = 345
      TabIndex = 11
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
      Left = 1800
      Top = 1440
      Width = 9015
      Height = 345
      TabIndex = 10
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
      TabIndex = 9
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
      TabIndex = 8
      Picture = "frmPrescripcion.frx":0410
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeveCtctMsk
      Left = 1800
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 7
      OleObjectBlob = "frmPrescripcion.frx":0952
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSMask.MaskEdBox DesdePeriodoMsk
      Left = 9720
      Top = 360
      Width = 732
      Height = 360
      TabIndex = 43
      OleObjectBlob = "frmPrescripcion.frx":0A02
      DataField = "PeriOrde"
    End
    Begin MSMask.MaskEdBox HastaPeriodoMsk
      Left = 9720
      Top = 720
      Width = 732
      Height = 360
      TabIndex = 44
      OleObjectBlob = "frmPrescripcion.frx":0A92
      DataField = "PeriOrde"
    End
    Begin VB.Label Label16
      Caption = "Desde:"
      Left = 8880
      Top = 360
      Width = 768
      Height = 300
      TabIndex = 46
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
    Begin VB.Label Label15
      Caption = "Hasta:"
      Left = 8880
      Top = 720
      Width = 708
      Height = 300
      TabIndex = 45
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
      Left = 765
      Top = 1920
      Width = 885
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
    Begin VB.Label Label11
      Caption = "Observaciones:"
      Left = 60
      Top = 1440
      Width = 1635
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
    Begin VB.Label Label10
      Caption = "Expediente:"
      Left = 420
      Top = 960
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
    Begin VB.Label Label9
      Caption = "Fecha:"
      Left = 870
      Top = 480
      Width = 735
      Height = 300
      TabIndex = 18
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
    TabIndex = 16
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
    TabIndex = 5
    Picture = "frmPrescripcion.frx":0B22
    Style = 1
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
    TabIndex = 13
    Picture = "frmPrescripcion.frx":0C04
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3840
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmPrescripcion.frx":0E56
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmPrescripcion.frx":1398
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 6
    OleObjectBlob = "frmPrescripcion.frx":1448
    Appearance = 0 'Flat
  End
  Begin VB.Label Label14
    Caption = "Seleccionado:"
    Left = 11400
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
  Begin VB.Label Label13
    Caption = "Seleccionado:"
    Left = 7680
    Top = 5640
    Width = 1710
    Height = 300
    TabIndex = 37
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
    Left = 8760
    Top = 120
    Width = 6252
    Height = 312
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 6840
    Top = 120
    Width = 1692
    Height = 312
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 6975
    Height = 315
    TabIndex = 32
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
  Begin VB.Label Label6
    Caption = "Total Recargo:"
    Left = 7605
    Top = 5160
    Width = 1785
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
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 120
    Top = 5160
    Width = 1755
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
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12420
    Top = 5160
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
  Begin VB.Label Label1
    Caption = "Seleccionado:"
    Left = 3840
    Top = 5640
    Width = 1710
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 795
    Top = 120
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3960
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 14
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
    TabIndex = 3
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

Attribute VB_Name = "frmPrescripcion"


Private Sub FechVencMsk_UnknownEvent_0 '9C2600
  'Data Table: 510008
  loc_9C25EC: FLdPr Me
  loc_9C25EF: VCallAd Control_ID_FechVencMsk
  loc_9C25F2: CVarAd
  loc_9C25F6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C25FB: FFree1Var var_94 = ""
  loc_9C25FE: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABF0FC
  'Data Table: 510008
  loc_ABF004: FLdPr Me
  loc_ABF007: VCallAd Control_ID_FechVencMsk
  loc_ABF00A: FStAdFunc var_88
  loc_ABF00D: FLdPr var_88
  loc_ABF010: LateIdLdVar var_98 DispID_13 -32767
  loc_ABF017: CBoolVar
  loc_ABF019: LitI2_Byte &HFF
  loc_ABF01B: EqI2
  loc_ABF01C: FFree1Ad var_88
  loc_ABF01F: FFree1Var var_98 = ""
  loc_ABF022: BranchF loc_ABF0FA
  loc_ABF025: LitVarStr var_A8, vbNullString
  loc_ABF02A: PopAdLdVar
  loc_ABF02B: FLdPr Me
  loc_ABF02E: VCallAd Control_ID_FechVencMsk
  loc_ABF031: FStAdFunc var_88
  loc_ABF034: FLdPr var_88
  loc_ABF037: LateIdSt
  loc_ABF03C: FFree1Ad var_88
  loc_ABF03F: FLdPr Me
  loc_ABF042: VCallAd Control_ID_FechVencMsk
  loc_ABF045: FStAdFunc var_88
  loc_ABF048: FLdPr var_88
  loc_ABF04B: LateIdLdVar var_98 DispID_22 0
  loc_ABF052: CStrVarTmp
  loc_ABF053: FStStrNoPop var_BC
  loc_ABF056: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABF05B: FStStrNoPop var_C0
  loc_ABF05E: FLdPr Me
  loc_ABF061: MemStStrCopy
  loc_ABF065: FFreeStr var_BC = ""
  loc_ABF06C: FFree1Ad var_88
  loc_ABF06F: FFree1Var var_98 = ""
  loc_ABF072: LitVarStr var_A8, "##/##/####"
  loc_ABF077: PopAdLdVar
  loc_ABF078: FLdPr Me
  loc_ABF07B: VCallAd Control_ID_FechVencMsk
  loc_ABF07E: FStAdFunc var_88
  loc_ABF081: FLdPr var_88
  loc_ABF084: LateIdSt
  loc_ABF089: FFree1Ad var_88
  loc_ABF08C: LitVarI2 var_A8, 10
  loc_ABF091: PopAdLdVar
  loc_ABF092: FLdPr Me
  loc_ABF095: VCallAd Control_ID_FechVencMsk
  loc_ABF098: FStAdFunc var_88
  loc_ABF09B: FLdPr var_88
  loc_ABF09E: LateIdSt
  loc_ABF0A3: FFree1Ad var_88
  loc_ABF0A6: FLdPr Me
  loc_ABF0A9: MemLdStr global_92
  loc_ABF0AC: LitStr vbNullString
  loc_ABF0AF: NeStr
  loc_ABF0B1: BranchF loc_ABF0FA
  loc_ABF0B4: FLdPr Me
  loc_ABF0B7: MemLdStr global_92
  loc_ABF0BA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF0BF: LitI2_Byte 0
  loc_ABF0C1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABF0C6: CStrDate
  loc_ABF0C8: CVarStr var_98
  loc_ABF0CB: PopAdLdVar
  loc_ABF0CC: FLdPr Me
  loc_ABF0CF: VCallAd Control_ID_FechVencMsk
  loc_ABF0D2: FStAdFunc var_88
  loc_ABF0D5: FLdPr var_88
  loc_ABF0D8: LateIdSt
  loc_ABF0DD: FFree1Ad var_88
  loc_ABF0E0: FFree1Var var_98 = ""
  loc_ABF0E3: FLdPr Me
  loc_ABF0E6: VCallAd Control_ID_FechVencMsk
  loc_ABF0E9: CVarAd
  loc_ABF0ED: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF0F2: FFree1Var var_98 = ""
  loc_ABF0F5: LitI2_Byte &HFF
  loc_ABF0F7: IStI2 arg_C
  loc_ABF0FA: ExitProcHresult
  loc_ABF0FB: PopAdLdVar
End Function

Private Sub ImpoCtctTxt_GotFocus() '9C2330
  'Data Table: 510008
  loc_9C231C: FLdPr Me
  loc_9C231F: VCallAd Control_ID_ImpoCtctTxt
  loc_9C2322: CVarAd
  loc_9C2326: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C232B: FFree1Var var_94 = ""
  loc_9C232E: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A072A0
  'Data Table: 510008
  loc_A0726C: LitStr "1234567890,."
  loc_A0726F: FStStrCopy var_88
  loc_A07272: FLdRfVar var_88
  loc_A07275: ILdRf KeyAscii
  loc_A07278: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0727D: IStI2 KeyAscii
  loc_A07280: FFree1Str var_88
  loc_A07283: ILdI2 KeyAscii
  loc_A07286: LitStr "."
  loc_A07289: ImpAdCallI2 Asc()
  loc_A0728E: EqI2
  loc_A0728F: BranchF loc_A0729D
  loc_A07292: LitStr ","
  loc_A07295: ImpAdCallI2 Asc()
  loc_A0729A: IStI2 KeyAscii
  loc_A0729D: ExitProcHresult
  loc_A0729E: FLdPr var_6FF8
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'AECEEC
  'Data Table: 510008
  loc_AECD68: LitI2_Byte 1
  loc_AECD6A: FLdPr Me
  loc_AECD6D: MemLdRfVar from_stack_1.global_60
  loc_AECD70: FLdPr Me
  loc_AECD73: VCallAd Control_ID_ctacteFlex
  loc_AECD76: FStAdFunc var_88
  loc_AECD79: FLdPr var_88
  loc_AECD7C: LateIdLdVar var_98 DispID_4 0
  loc_AECD83: CI4Var
  loc_AECD85: LitI4 1
  loc_AECD8A: SubI4
  loc_AECD8B: CI2I4
  loc_AECD8C: FFree1Ad var_88
  loc_AECD8F: FFree1Var var_98 = ""
  loc_AECD92: ForI2 var_9C
  loc_AECD98: FLdPr Me
  loc_AECD9B: MemLdI2 global_60
  loc_AECD9E: CI4UI1
  loc_AECD9F: CVarI4
  loc_AECDA3: PopAdLdVar
  loc_AECDA4: LitVarI4
  loc_AECDAC: PopAdLdVar
  loc_AECDAD: FLdPr Me
  loc_AECDB0: VCallAd Control_ID_ctacteFlex
  loc_AECDB3: FStAdFunc var_88
  loc_AECDB6: FLdPr var_88
  loc_AECDB9: LateIdCallLdVar
  loc_AECDC3: CStrVarTmp
  loc_AECDC4: FStStrNoPop var_E0
  loc_AECDC7: LitStr "SS"
  loc_AECDCA: EqStr
  loc_AECDCC: FFree1Str var_E0
  loc_AECDCF: FFree1Ad var_88
  loc_AECDD2: FFree1Var var_98 = ""
  loc_AECDD5: BranchF loc_AECE76
  loc_AECDD8: FLdPr Me
  loc_AECDDB: MemLdI2 global_60
  loc_AECDDE: CI4UI1
  loc_AECDDF: CVarI4
  loc_AECDE3: PopAdLdVar
  loc_AECDE4: LitVarI4
  loc_AECDEC: PopAdLdVar
  loc_AECDED: FLdPr Me
  loc_AECDF0: VCallAd Control_ID_ctacteFlex
  loc_AECDF3: FStAdFunc var_E4
  loc_AECDF6: FLdPr var_E4
  loc_AECDF9: LateIdCallLdVar
  loc_AECE03: PopAd
  loc_AECE05: FLdRfVar var_E0
  loc_AECE08: FLdPr Me
  loc_AECE0B: VCallAd Control_ID_ImpoCtctTxt
  loc_AECE0E: FStAdFunc var_88
  loc_AECE11: FLdPr var_88
  loc_AECE14:  = Me.Text
  loc_AECE19: ILdRf var_E0
  loc_AECE1C: CR8Str
  loc_AECE1E: FLdRfVar var_98
  loc_AECE21: CStrVarTmp
  loc_AECE22: FStStrNoPop var_E8
  loc_AECE25: CR8Str
  loc_AECE27: GtR4
  loc_AECE28: FFreeStr var_E0 = ""
  loc_AECE2F: FFreeAd var_88 = ""
  loc_AECE36: FFree1Var var_98 = ""
  loc_AECE39: BranchF loc_AECE76
  loc_AECE3C: LitStr "El importe del credito a realizar no puede ser mayor al importe seleccionado, verifique..."
  loc_AECE3F: FLdPr Me
  loc_AECE42: MemStStrCopy
  loc_AECE46: FLdPr Me
  loc_AECE49: MemLdStr global_92
  loc_AECE4C: LitStr vbNullString
  loc_AECE4F: NeStr
  loc_AECE51: BranchF loc_AECE76
  loc_AECE54: FLdPr Me
  loc_AECE57: MemLdStr global_92
  loc_AECE5A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AECE5F: FLdPr Me
  loc_AECE62: VCallAd Control_ID_ImpoCtctTxt
  loc_AECE65: CVarAd
  loc_AECE69: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AECE6E: FFree1Var var_98 = ""
  loc_AECE71: LitI2_Byte &HFF
  loc_AECE73: IStI2 Cancel
  loc_AECE76: FLdPr Me
  loc_AECE79: MemLdRfVar from_stack_1.global_60
  loc_AECE7C: NextI2 var_9C, loc_AECD98
  loc_AECE81: FLdRfVar var_E0
  loc_AECE84: FLdPr Me
  loc_AECE87: VCallAd Control_ID_ImpoCtctTxt
  loc_AECE8A: FStAdFunc var_88
  loc_AECE8D: FLdPr var_88
  loc_AECE90:  = Me.Text
  loc_AECE95: LitI4 1
  loc_AECE9A: LitI4 1
  loc_AECE9F: LitVarStr var_BC, "0.00"
  loc_AECEA4: FStVarCopyObj var_F8
  loc_AECEA7: FLdRfVar var_F8
  loc_AECEAA: ILdRf var_E0
  loc_AECEAD: CR8Str
  loc_AECEAF: CVarR8
  loc_AECEB3: FLdRfVar var_108
  loc_AECEB6: ImpAdCallFPR4  = Format(, )
  loc_AECEBB: FLdRfVar var_108
  loc_AECEBE: CStrVarVal var_E8
  loc_AECEC2: FLdPr Me
  loc_AECEC5: VCallAd Control_ID_ImpoCtctTxt
  loc_AECEC8: FStAdFunc var_E4
  loc_AECECB: FLdPr var_E4
  loc_AECECE: Me.Text = from_stack_1
  loc_AECED3: FFreeStr var_E0 = ""
  loc_AECEDA: FFreeAd var_88 = ""
  loc_AECEE1: FFreeVar var_98 = "": var_F8 = ""
  loc_AECEEA: ExitProcHresult
End Sub

Private Sub Form_Load() 'BA2BB0
  'Data Table: 510008
  loc_BA259C: LitVar_Missing var_94
  loc_BA259F: PopAdLdVar
  loc_BA25A0: LitStr "Inmueble"
  loc_BA25A3: FLdPr Me
  loc_BA25A6: VCallAd Control_ID_OficinaCbo
  loc_BA25A9: FStAdFunc var_98
  loc_BA25AC: FLdPr var_98
  loc_BA25AF: Me.AddItem from_stack_1, from_stack_2
  loc_BA25B4: FFree1Ad var_98
  loc_BA25B7: LitVar_Missing var_94
  loc_BA25BA: PopAdLdVar
  loc_BA25BB: LitStr "Comercio"
  loc_BA25BE: FLdPr Me
  loc_BA25C1: VCallAd Control_ID_OficinaCbo
  loc_BA25C4: FStAdFunc var_98
  loc_BA25C7: FLdPr var_98
  loc_BA25CA: Me.AddItem from_stack_1, from_stack_2
  loc_BA25CF: FFree1Ad var_98
  loc_BA25D2: LitVar_Missing var_94
  loc_BA25D5: PopAdLdVar
  loc_BA25D6: LitStr "Deudores Varios"
  loc_BA25D9: FLdPr Me
  loc_BA25DC: VCallAd Control_ID_OficinaCbo
  loc_BA25DF: FStAdFunc var_98
  loc_BA25E2: FLdPr var_98
  loc_BA25E5: Me.AddItem from_stack_1, from_stack_2
  loc_BA25EA: FFree1Ad var_98
  loc_BA25ED: LitVar_Missing var_94
  loc_BA25F0: PopAdLdVar
  loc_BA25F1: LitStr "Cementerio"
  loc_BA25F4: FLdPr Me
  loc_BA25F7: VCallAd Control_ID_OficinaCbo
  loc_BA25FA: FStAdFunc var_98
  loc_BA25FD: FLdPr var_98
  loc_BA2600: Me.AddItem from_stack_1, from_stack_2
  loc_BA2605: FFree1Ad var_98
  loc_BA2608: LitI2_Byte 0
  loc_BA260A: FLdPr Me
  loc_BA260D: VCallAd Control_ID_OficinaCbo
  loc_BA2610: FStAdFunc var_98
  loc_BA2613: FLdPr var_98
  loc_BA2616: Me.ListIndex = from_stack_1
  loc_BA261B: FFree1Ad var_98
  loc_BA261E: LitStr "0"
  loc_BA2621: FLdPr Me
  loc_BA2624: VCallAd Control_ID_NumeCtaTxt
  loc_BA2627: FStAdFunc var_98
  loc_BA262A: FLdPr var_98
  loc_BA262D: Me.Text = from_stack_1
  loc_BA2632: FFree1Ad var_98
  loc_BA2635: LitI2_Byte 0
  loc_BA2637: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA263C: CStrDate
  loc_BA263E: CVarStr var_A8
  loc_BA2641: PopAdLdVar
  loc_BA2642: FLdPr Me
  loc_BA2645: VCallAd Control_ID_FechVencMsk
  loc_BA2648: FStAdFunc var_98
  loc_BA264B: FLdPr var_98
  loc_BA264E: LateIdSt
  loc_BA2653: FFree1Ad var_98
  loc_BA2656: FFree1Var var_A8 = ""
  loc_BA2659: LitI2_Byte 0
  loc_BA265B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA2660: CStrDate
  loc_BA2662: CVarStr var_A8
  loc_BA2665: PopAdLdVar
  loc_BA2666: FLdPr Me
  loc_BA2669: VCallAd Control_ID_FeveCtctMsk
  loc_BA266C: FStAdFunc var_98
  loc_BA266F: FLdPr var_98
  loc_BA2672: LateIdSt
  loc_BA2677: FFree1Ad var_98
  loc_BA267A: FFree1Var var_A8 = ""
  loc_BA267D: LitI4 1
  loc_BA2682: LitI4 1
  loc_BA2687: LitVarStr var_B8, "0.00"
  loc_BA268C: FStVarCopyObj var_C8
  loc_BA268F: FLdRfVar var_C8
  loc_BA2692: LitVarI2 var_A8, 0
  loc_BA2697: FLdRfVar var_D8
  loc_BA269A: ImpAdCallFPR4  = Format(, )
  loc_BA269F: FLdRfVar var_D8
  loc_BA26A2: CStrVarVal var_DC
  loc_BA26A6: FLdPr Me
  loc_BA26A9: VCallAd Control_ID_ImpoCtctTxt
  loc_BA26AC: FStAdFunc var_98
  loc_BA26AF: FLdPr var_98
  loc_BA26B2: Me.Text = from_stack_1
  loc_BA26B7: FFree1Str var_DC
  loc_BA26BA: FFree1Ad var_98
  loc_BA26BD: FFreeVar var_A8 = "": var_C8 = ""
  loc_BA26C6: LitI2_Byte 0
  loc_BA26C8: FLdPr Me
  loc_BA26CB: VCallAd Control_ID_ImpoCtctTxt
  loc_BA26CE: FStAdFunc var_98
  loc_BA26D1: FLdPr var_98
  loc_BA26D4: Me.Enabled = from_stack_1b
  loc_BA26D9: FFree1Ad var_98
  loc_BA26DC: LitI2 1900
  loc_BA26DF: CStrUI1
  loc_BA26E1: CVarStr var_A8
  loc_BA26E4: PopAdLdVar
  loc_BA26E5: FLdPr Me
  loc_BA26E8: VCallAd Control_ID_DesdePeriodoMsk
  loc_BA26EB: FStAdFunc var_98
  loc_BA26EE: FLdPr var_98
  loc_BA26F1: LateIdSt
  loc_BA26F6: FFree1Ad var_98
  loc_BA26F9: FFree1Var var_A8 = ""
  loc_BA26FC: ImpAdLdI2 MemVar_D93036
  loc_BA26FF: CStrUI1
  loc_BA2701: CVarStr var_A8
  loc_BA2704: PopAdLdVar
  loc_BA2705: FLdPr Me
  loc_BA2708: VCallAd Control_ID_HastaPeriodoMsk
  loc_BA270B: FStAdFunc var_98
  loc_BA270E: FLdPr var_98
  loc_BA2711: LateIdSt
  loc_BA2716: FFree1Ad var_98
  loc_BA2719: FFree1Var var_A8 = ""
  loc_BA271C: FLdPr Me
  loc_BA271F: VCallAd Control_ID_ctacteFlex
  loc_BA2722: FStAdFunc var_E0
  loc_BA2725: LitVarI4
  loc_BA272D: PopAdLdVar
  loc_BA272E: LitVarI4
  loc_BA2736: PopAdLdVar
  loc_BA2737: FLdPr var_E0
  loc_BA273A: LateIdCallSt
  loc_BA2742: LitVarI4
  loc_BA274A: PopAdLdVar
  loc_BA274B: LitVarI4
  loc_BA2753: PopAdLdVar
  loc_BA2754: FLdPr var_E0
  loc_BA2757: LateIdCallSt
  loc_BA275F: LitVarI4
  loc_BA2767: PopAdLdVar
  loc_BA2768: LitVarI4
  loc_BA2770: PopAdLdVar
  loc_BA2771: FLdPr var_E0
  loc_BA2774: LateIdCallSt
  loc_BA277C: LitVarI4
  loc_BA2784: PopAdLdVar
  loc_BA2785: LitVarI4
  loc_BA278D: PopAdLdVar
  loc_BA278E: FLdPr var_E0
  loc_BA2791: LateIdCallSt
  loc_BA2799: LitVarI4
  loc_BA27A1: PopAdLdVar
  loc_BA27A2: LitVarI4
  loc_BA27AA: PopAdLdVar
  loc_BA27AB: FLdPr var_E0
  loc_BA27AE: LateIdCallSt
  loc_BA27B6: LitVarI4
  loc_BA27BE: PopAdLdVar
  loc_BA27BF: LitVarI4
  loc_BA27C7: PopAdLdVar
  loc_BA27C8: FLdPr var_E0
  loc_BA27CB: LateIdCallSt
  loc_BA27D3: LitVarI4
  loc_BA27DB: PopAdLdVar
  loc_BA27DC: LitVarI4
  loc_BA27E4: PopAdLdVar
  loc_BA27E5: FLdPr var_E0
  loc_BA27E8: LateIdCallSt
  loc_BA27F0: LitVarI4
  loc_BA27F8: PopAdLdVar
  loc_BA27F9: LitVarI4
  loc_BA2801: PopAdLdVar
  loc_BA2802: FLdPr var_E0
  loc_BA2805: LateIdCallSt
  loc_BA280D: LitVarI4
  loc_BA2815: PopAdLdVar
  loc_BA2816: LitVarI4
  loc_BA281E: PopAdLdVar
  loc_BA281F: FLdPr var_E0
  loc_BA2822: LateIdCallSt
  loc_BA282A: LitVarI4
  loc_BA2832: PopAdLdVar
  loc_BA2833: LitVarI4
  loc_BA283B: PopAdLdVar
  loc_BA283C: FLdPr var_E0
  loc_BA283F: LateIdCallSt
  loc_BA2847: LitVarI4
  loc_BA284F: PopAdLdVar
  loc_BA2850: LitVarI4
  loc_BA2858: PopAdLdVar
  loc_BA2859: FLdPr var_E0
  loc_BA285C: LateIdCallSt
  loc_BA2864: LitVarI4
  loc_BA286C: PopAdLdVar
  loc_BA286D: LitVarI4
  loc_BA2875: PopAdLdVar
  loc_BA2876: FLdPr var_E0
  loc_BA2879: LateIdCallSt
  loc_BA2881: LitVarI4
  loc_BA2889: PopAdLdVar
  loc_BA288A: LitVarI4
  loc_BA2892: PopAdLdVar
  loc_BA2893: FLdPr var_E0
  loc_BA2896: LateIdCallSt
  loc_BA289E: LitVarI4
  loc_BA28A6: PopAdLdVar
  loc_BA28A7: LitVarI4
  loc_BA28AF: PopAdLdVar
  loc_BA28B0: FLdPr var_E0
  loc_BA28B3: LateIdCallSt
  loc_BA28BB: LitVarI4
  loc_BA28C3: PopAdLdVar
  loc_BA28C4: LitVarI4
  loc_BA28CC: PopAdLdVar
  loc_BA28CD: FLdPr var_E0
  loc_BA28D0: LateIdCallSt
  loc_BA28D8: LitVarI4
  loc_BA28E0: PopAdLdVar
  loc_BA28E1: LitVarI4
  loc_BA28E9: PopAdLdVar
  loc_BA28EA: FLdPr var_E0
  loc_BA28ED: LateIdCallSt
  loc_BA28F5: LitVarI4
  loc_BA28FD: PopAdLdVar
  loc_BA28FE: LitVarI4
  loc_BA2906: PopAdLdVar
  loc_BA2907: FLdPr var_E0
  loc_BA290A: LateIdCallSt
  loc_BA2912: LitVarI4
  loc_BA291A: PopAdLdVar
  loc_BA291B: LitVarI4
  loc_BA2923: PopAdLdVar
  loc_BA2924: LitVarStr var_110, "Of"
  loc_BA2929: PopAdLdVar
  loc_BA292A: FLdPr var_E0
  loc_BA292D: LateIdCallSt
  loc_BA2935: LitVarI4
  loc_BA293D: PopAdLdVar
  loc_BA293E: LitVarI4
  loc_BA2946: PopAdLdVar
  loc_BA2947: LitVarStr var_110, "Cuenta"
  loc_BA294C: PopAdLdVar
  loc_BA294D: FLdPr var_E0
  loc_BA2950: LateIdCallSt
  loc_BA2958: LitVarI4
  loc_BA2960: PopAdLdVar
  loc_BA2961: LitVarI4
  loc_BA2969: PopAdLdVar
  loc_BA296A: LitVarStr var_110, "Periodo"
  loc_BA296F: PopAdLdVar
  loc_BA2970: FLdPr var_E0
  loc_BA2973: LateIdCallSt
  loc_BA297B: LitVarI4
  loc_BA2983: PopAdLdVar
  loc_BA2984: LitVarI4
  loc_BA298C: PopAdLdVar
  loc_BA298D: LitVarStr var_110, "Boleto"
  loc_BA2992: PopAdLdVar
  loc_BA2993: FLdPr var_E0
  loc_BA2996: LateIdCallSt
  loc_BA299E: LitVarI4
  loc_BA29A6: PopAdLdVar
  loc_BA29A7: LitVarI4
  loc_BA29AF: PopAdLdVar
  loc_BA29B0: LitVarStr var_110, "Emision"
  loc_BA29B5: PopAdLdVar
  loc_BA29B6: FLdPr var_E0
  loc_BA29B9: LateIdCallSt
  loc_BA29C1: LitVarI4
  loc_BA29C9: PopAdLdVar
  loc_BA29CA: LitVarI4
  loc_BA29D2: PopAdLdVar
  loc_BA29D3: LitVarStr var_110, "Vencimiento"
  loc_BA29D8: PopAdLdVar
  loc_BA29D9: FLdPr var_E0
  loc_BA29DC: LateIdCallSt
  loc_BA29E4: LitVarI4
  loc_BA29EC: PopAdLdVar
  loc_BA29ED: LitVarI4
  loc_BA29F5: PopAdLdVar
  loc_BA29F6: LitVarStr var_110, "Concepto"
  loc_BA29FB: PopAdLdVar
  loc_BA29FC: FLdPr var_E0
  loc_BA29FF: LateIdCallSt
  loc_BA2A07: LitVarI4
  loc_BA2A0F: PopAdLdVar
  loc_BA2A10: LitVarI4
  loc_BA2A18: PopAdLdVar
  loc_BA2A19: LitVarStr var_110, "Facilidad"
  loc_BA2A1E: PopAdLdVar
  loc_BA2A1F: FLdPr var_E0
  loc_BA2A22: LateIdCallSt
  loc_BA2A2A: LitVarI4
  loc_BA2A32: PopAdLdVar
  loc_BA2A33: LitVarI4
  loc_BA2A3B: PopAdLdVar
  loc_BA2A3C: LitVarStr var_110, "Apremio"
  loc_BA2A41: PopAdLdVar
  loc_BA2A42: FLdPr var_E0
  loc_BA2A45: LateIdCallSt
  loc_BA2A4D: LitVarI4
  loc_BA2A55: PopAdLdVar
  loc_BA2A56: LitVarI4
  loc_BA2A5E: PopAdLdVar
  loc_BA2A5F: LitVarStr var_110, "Exp/Comp"
  loc_BA2A64: PopAdLdVar
  loc_BA2A65: FLdPr var_E0
  loc_BA2A68: LateIdCallSt
  loc_BA2A70: LitVarI4
  loc_BA2A78: PopAdLdVar
  loc_BA2A79: LitVarI4
  loc_BA2A81: PopAdLdVar
  loc_BA2A82: LitVarStr var_110, "Tipo Movi."
  loc_BA2A87: PopAdLdVar
  loc_BA2A88: FLdPr var_E0
  loc_BA2A8B: LateIdCallSt
  loc_BA2A93: LitVarI4
  loc_BA2A9B: PopAdLdVar
  loc_BA2A9C: LitVarI4
  loc_BA2AA4: PopAdLdVar
  loc_BA2AA5: LitVarStr var_110, "Debito"
  loc_BA2AAA: PopAdLdVar
  loc_BA2AAB: FLdPr var_E0
  loc_BA2AAE: LateIdCallSt
  loc_BA2AB6: LitVarI4
  loc_BA2ABE: PopAdLdVar
  loc_BA2ABF: LitVarI4
  loc_BA2AC7: PopAdLdVar
  loc_BA2AC8: LitVarStr var_110, "Recargo"
  loc_BA2ACD: PopAdLdVar
  loc_BA2ACE: FLdPr var_E0
  loc_BA2AD1: LateIdCallSt
  loc_BA2AD9: LitVarI4
  loc_BA2AE1: PopAdLdVar
  loc_BA2AE2: LitVarI4
  loc_BA2AEA: PopAdLdVar
  loc_BA2AEB: LitVarStr var_110, "Saldo"
  loc_BA2AF0: PopAdLdVar
  loc_BA2AF1: FLdPr var_E0
  loc_BA2AF4: LateIdCallSt
  loc_BA2AFC: LitVarI4
  loc_BA2B04: PopAdLdVar
  loc_BA2B05: LitVarI4
  loc_BA2B0D: PopAdLdVar
  loc_BA2B0E: LitVarStr var_110, "Sel"
  loc_BA2B13: PopAdLdVar
  loc_BA2B14: FLdPr var_E0
  loc_BA2B17: LateIdCallSt
  loc_BA2B1F: LitVarI4
  loc_BA2B27: PopAdLdVar
  loc_BA2B28: LitVarI4
  loc_BA2B30: PopAdLdVar
  loc_BA2B31: LitVarStr var_110, "Numero"
  loc_BA2B36: PopAdLdVar
  loc_BA2B37: FLdPr var_E0
  loc_BA2B3A: LateIdCallSt
  loc_BA2B42: LitVarI4
  loc_BA2B4A: PopAdLdVar
  loc_BA2B4B: LitVarI4
  loc_BA2B53: PopAdLdVar
  loc_BA2B54: LitVarStr var_110, "Mov"
  loc_BA2B59: PopAdLdVar
  loc_BA2B5A: FLdPr var_E0
  loc_BA2B5D: LateIdCallSt
  loc_BA2B65: LitNothing
  loc_BA2B67: FStAd var_E0 
  loc_BA2B6B: LitI2_Byte 0
  loc_BA2B6D: FLdPr Me
  loc_BA2B70: VCallAd Control_ID_ConfirmarCmd
  loc_BA2B73: FStAdFunc var_98
  loc_BA2B76: FLdPr var_98
  loc_BA2B79: Me.Enabled = from_stack_1b
  loc_BA2B7E: FFree1Ad var_98
  loc_BA2B81: LitI2_Byte &HFF
  loc_BA2B83: FLdPr Me
  loc_BA2B86: VCallAd Control_ID_PrescripcionOpt
  loc_BA2B89: FStAdFunc var_98
  loc_BA2B8C: FLdPr var_98
  loc_BA2B8F: Me.Value = from_stack_1b
  loc_BA2B94: FFree1Ad var_98
  loc_BA2B97: LitI2_Byte 0
  loc_BA2B99: FLdPr Me
  loc_BA2B9C: VCallAd Control_ID_CondonacionOpt
  loc_BA2B9F: FStAdFunc var_98
  loc_BA2BA2: FLdPr var_98
  loc_BA2BA5: Me.Value = from_stack_1b
  loc_BA2BAA: FFree1Ad var_98
  loc_BA2BAD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9FFC
  'Data Table: 510008
  loc_9B9FE8: ILdI2 KeyCode
  loc_9B9FEB: CI4UI1
  loc_9B9FEC: LitI4 &H78
  loc_9B9FF1: EqI4
  loc_9B9FF2: BranchF loc_9B9FFA
  loc_9B9FF5: Call SalirCmd_Click()
  loc_9B9FFA: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'B39C44
  'Data Table: 510008
  loc_B39944: LitI4 0
  loc_B39949: LitI4 0
  loc_B3994E: FLdRfVar var_88
  loc_B39951: Redim
  loc_B3995B: FLdPr Me
  loc_B3995E: VCallAd Control_ID_ConfirmarCmd
  loc_B39961: CVarAd
  loc_B39965: ParmAry1St
  loc_B3996B: FLdRfVar var_88
  loc_B3996E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B39973: FLdRfVar var_88
  loc_B39976: Erase
  loc_B39977: Call Proc_24_27_B18E68()
  loc_B3997C: FLdPrThis
  loc_B3997D: VCallAd Control_ID_NumeCtaTxt
  loc_B39980: CVarAd
  loc_B39984: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_B39989: FFree1Var var_98 = ""
  loc_B3998C: LitI2_Byte 0
  loc_B3998E: CR8I2
  loc_B3998F: FLdPr Me
  loc_B39992: MemStFPR8 global_96
  loc_B39995: LitI2_Byte 0
  loc_B39997: CR8I2
  loc_B39998: FLdPr Me
  loc_B3999B: MemStFPR8 global_104
  loc_B3999E: LitI2_Byte 0
  loc_B399A0: CR8I2
  loc_B399A1: FLdPr Me
  loc_B399A4: MemStFPR8 global_112
  loc_B399A7: LitI2_Byte 0
  loc_B399A9: CR8I2
  loc_B399AA: FLdPr Me
  loc_B399AD: MemStFPR8 global_120
  loc_B399B0: LitI2_Byte 0
  loc_B399B2: CR8I2
  loc_B399B3: FLdPr Me
  loc_B399B6: MemStFPR8 global_128
  loc_B399B9: LitI4 1
  loc_B399BE: LitI4 1
  loc_B399C3: LitVarStr var_B8, "0.00"
  loc_B399C8: FStVarCopyObj var_98
  loc_B399CB: FLdRfVar var_98
  loc_B399CE: FLdPr Me
  loc_B399D1: MemLdRfVar from_stack_1.global_96
  loc_B399D4: CVarRef
  loc_B399D9: FLdRfVar var_C8
  loc_B399DC: ImpAdCallFPR4  = Format(, )
  loc_B399E1: FLdRfVar var_C8
  loc_B399E4: CStrVarVal var_CC
  loc_B399E8: FLdPr Me
  loc_B399EB: VCallAd Control_ID_txtTotaDere
  loc_B399EE: FStAdFunc var_D0
  loc_B399F1: FLdPr var_D0
  loc_B399F4: Me.Text = from_stack_1
  loc_B399F9: FFree1Str var_CC
  loc_B399FC: FFree1Ad var_D0
  loc_B399FF: FFreeVar var_98 = ""
  loc_B39A06: LitI4 1
  loc_B39A0B: LitI4 1
  loc_B39A10: LitVarStr var_B8, "0.00"
  loc_B39A15: FStVarCopyObj var_98
  loc_B39A18: FLdRfVar var_98
  loc_B39A1B: FLdPr Me
  loc_B39A1E: MemLdRfVar from_stack_1.global_104
  loc_B39A21: CVarRef
  loc_B39A26: FLdRfVar var_C8
  loc_B39A29: ImpAdCallFPR4  = Format(, )
  loc_B39A2E: FLdRfVar var_C8
  loc_B39A31: CStrVarVal var_CC
  loc_B39A35: FLdPr Me
  loc_B39A38: VCallAd Control_ID_txtTotaReca
  loc_B39A3B: FStAdFunc var_D0
  loc_B39A3E: FLdPr var_D0
  loc_B39A41: Me.Text = from_stack_1
  loc_B39A46: FFree1Str var_CC
  loc_B39A49: FFree1Ad var_D0
  loc_B39A4C: FFreeVar var_98 = ""
  loc_B39A53: LitI4 1
  loc_B39A58: LitI4 1
  loc_B39A5D: LitVarStr var_B8, "0.00"
  loc_B39A62: FStVarCopyObj var_98
  loc_B39A65: FLdRfVar var_98
  loc_B39A68: FLdPr Me
  loc_B39A6B: MemLdRfVar from_stack_1.global_112
  loc_B39A6E: CVarRef
  loc_B39A73: FLdRfVar var_C8
  loc_B39A76: ImpAdCallFPR4  = Format(, )
  loc_B39A7B: FLdRfVar var_C8
  loc_B39A7E: CStrVarVal var_CC
  loc_B39A82: FLdPr Me
  loc_B39A85: VCallAd Control_ID_txtTotaApre
  loc_B39A88: FStAdFunc var_D0
  loc_B39A8B: FLdPr var_D0
  loc_B39A8E: Me.Text = from_stack_1
  loc_B39A93: FFree1Str var_CC
  loc_B39A96: FFree1Ad var_D0
  loc_B39A99: FFreeVar var_98 = ""
  loc_B39AA0: LitI4 2
  loc_B39AA5: FLdPr Me
  loc_B39AA8: MemLdRfVar from_stack_1.global_96
  loc_B39AAB: CVarRef
  loc_B39AB0: FLdRfVar var_98
  loc_B39AB3: ImpAdCallFPR4  = Round(, )
  loc_B39AB8: FLdRfVar var_98
  loc_B39ABB: LitI4 2
  loc_B39AC0: FLdPr Me
  loc_B39AC3: MemLdRfVar from_stack_1.global_104
  loc_B39AC6: CVarRef
  loc_B39ACB: FLdRfVar var_C8
  loc_B39ACE: ImpAdCallFPR4  = Round(, )
  loc_B39AD3: FLdRfVar var_C8
  loc_B39AD6: AddVar var_E0
  loc_B39ADA: LitI4 2
  loc_B39ADF: FLdPr Me
  loc_B39AE2: MemLdRfVar from_stack_1.global_112
  loc_B39AE5: CVarRef
  loc_B39AEA: FLdRfVar var_100
  loc_B39AED: ImpAdCallFPR4  = Round(, )
  loc_B39AF2: FLdRfVar var_100
  loc_B39AF5: AddVar var_110
  loc_B39AF9: CR4Var
  loc_B39AFA: FLdPr Me
  loc_B39AFD: MemStFPR8 global_120
  loc_B39B00: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B39B0D: LitI4 1
  loc_B39B12: LitI4 1
  loc_B39B17: LitVarStr var_B8, "0.00"
  loc_B39B1C: FStVarCopyObj var_98
  loc_B39B1F: FLdRfVar var_98
  loc_B39B22: FLdPr Me
  loc_B39B25: MemLdRfVar from_stack_1.global_120
  loc_B39B28: CVarRef
  loc_B39B2D: FLdRfVar var_C8
  loc_B39B30: ImpAdCallFPR4  = Format(, )
  loc_B39B35: FLdRfVar var_C8
  loc_B39B38: CStrVarVal var_CC
  loc_B39B3C: FLdPr Me
  loc_B39B3F: VCallAd Control_ID_txtTotal
  loc_B39B42: FStAdFunc var_D0
  loc_B39B45: FLdPr var_D0
  loc_B39B48: Me.Text = from_stack_1
  loc_B39B4D: FFree1Str var_CC
  loc_B39B50: FFree1Ad var_D0
  loc_B39B53: FFreeVar var_98 = ""
  loc_B39B5A: LitI4 1
  loc_B39B5F: LitI4 1
  loc_B39B64: LitVarStr var_B8, "0.00"
  loc_B39B69: FStVarCopyObj var_98
  loc_B39B6C: FLdRfVar var_98
  loc_B39B6F: FLdPr Me
  loc_B39B72: MemLdRfVar from_stack_1.global_96
  loc_B39B75: CVarRef
  loc_B39B7A: FLdRfVar var_C8
  loc_B39B7D: ImpAdCallFPR4  = Format(, )
  loc_B39B82: FLdRfVar var_C8
  loc_B39B85: CStrVarVal var_CC
  loc_B39B89: FLdPr Me
  loc_B39B8C: VCallAd Control_ID_txtDereSele
  loc_B39B8F: FStAdFunc var_D0
  loc_B39B92: FLdPr var_D0
  loc_B39B95: Me.Text = from_stack_1
  loc_B39B9A: FFree1Str var_CC
  loc_B39B9D: FFree1Ad var_D0
  loc_B39BA0: FFreeVar var_98 = ""
  loc_B39BA7: LitI4 1
  loc_B39BAC: LitI4 1
  loc_B39BB1: LitVarStr var_B8, "0.00"
  loc_B39BB6: FStVarCopyObj var_98
  loc_B39BB9: FLdRfVar var_98
  loc_B39BBC: FLdPr Me
  loc_B39BBF: MemLdRfVar from_stack_1.global_104
  loc_B39BC2: CVarRef
  loc_B39BC7: FLdRfVar var_C8
  loc_B39BCA: ImpAdCallFPR4  = Format(, )
  loc_B39BCF: FLdRfVar var_C8
  loc_B39BD2: CStrVarVal var_CC
  loc_B39BD6: FLdPr Me
  loc_B39BD9: VCallAd Control_ID_txtRecaSele
  loc_B39BDC: FStAdFunc var_D0
  loc_B39BDF: FLdPr var_D0
  loc_B39BE2: Me.Text = from_stack_1
  loc_B39BE7: FFree1Str var_CC
  loc_B39BEA: FFree1Ad var_D0
  loc_B39BED: FFreeVar var_98 = ""
  loc_B39BF4: LitI4 1
  loc_B39BF9: LitI4 1
  loc_B39BFE: LitVarStr var_B8, "0.00"
  loc_B39C03: FStVarCopyObj var_98
  loc_B39C06: FLdRfVar var_98
  loc_B39C09: FLdPr Me
  loc_B39C0C: MemLdRfVar from_stack_1.global_128
  loc_B39C0F: CVarRef
  loc_B39C14: FLdRfVar var_C8
  loc_B39C17: ImpAdCallFPR4  = Format(, )
  loc_B39C1C: FLdRfVar var_C8
  loc_B39C1F: CStrVarVal var_CC
  loc_B39C23: FLdPr Me
  loc_B39C26: VCallAd Control_ID_txtTotaSele
  loc_B39C29: FStAdFunc var_D0
  loc_B39C2C: FLdPr var_D0
  loc_B39C2F: Me.Text = from_stack_1
  loc_B39C34: FFree1Str var_CC
  loc_B39C37: FFree1Ad var_D0
  loc_B39C3A: FFreeVar var_98 = ""
  loc_B39C41: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B35A2C
  'Data Table: 510008
  loc_B35734: ILdI2 KeyAscii
  loc_B35737: CI4UI1
  loc_B35738: LitI4 &H20
  loc_B3573D: EqI4
  loc_B3573E: BranchF loc_B35A29
  loc_B35741: LitI2_Byte 0
  loc_B35743: IStI2 KeyAscii
  loc_B35746: FLdRfVar var_8A
  loc_B35749: FLdPr Me
  loc_B3574C: VCallAd Control_ID_OficinaCbo
  loc_B3574F: FStAdFunc var_88
  loc_B35752: FLdPr var_88
  loc_B35755:  = Me.ListIndex
  loc_B3575A: FLdI2 var_8A
  loc_B3575D: FStI2 var_8C
  loc_B35760: FFree1Ad var_88
  loc_B35763: FLdI2 var_8C
  loc_B35766: LitI2_Byte 0
  loc_B35768: EqI2
  loc_B35769: BranchF loc_B35777
  loc_B3576C: LitI2_Byte 1
  loc_B3576E: CUI1I2
  loc_B35770: ImpAdStUI1 MemVar_D93038
  loc_B35774: Branch loc_B357C4
  loc_B35777: FLdI2 var_8C
  loc_B3577A: LitI2_Byte 1
  loc_B3577C: EqI2
  loc_B3577D: BranchF loc_B3578B
  loc_B35780: LitI2_Byte 2
  loc_B35782: CUI1I2
  loc_B35784: ImpAdStUI1 MemVar_D93038
  loc_B35788: Branch loc_B357C4
  loc_B3578B: FLdI2 var_8C
  loc_B3578E: LitI2_Byte 2
  loc_B35790: EqI2
  loc_B35791: BranchF loc_B3579F
  loc_B35794: LitI2_Byte 3
  loc_B35796: CUI1I2
  loc_B35798: ImpAdStUI1 MemVar_D93038
  loc_B3579C: Branch loc_B357C4
  loc_B3579F: FLdI2 var_8C
  loc_B357A2: LitI2_Byte 3
  loc_B357A4: EqI2
  loc_B357A5: BranchF loc_B357B3
  loc_B357A8: LitI2_Byte 4
  loc_B357AA: CUI1I2
  loc_B357AC: ImpAdStUI1 MemVar_D93038
  loc_B357B0: Branch loc_B357C4
  loc_B357B3: FLdI2 var_8C
  loc_B357B6: LitI2_Byte 4
  loc_B357B8: EqI2
  loc_B357B9: BranchF loc_B357C4
  loc_B357BC: LitI2_Byte 5
  loc_B357BE: CUI1I2
  loc_B357C0: ImpAdStUI1 MemVar_D93038
  loc_B357C4: LitVar_Missing var_AC
  loc_B357C7: PopAdLdVar
  loc_B357C8: LitVarI4
  loc_B357D0: PopAdLdVar
  loc_B357D1: ImpAdLdRf MemVar_D94034
  loc_B357D4: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B357D7: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B357DC: FLdRfVar var_B0
  loc_B357DF: FLdRfVar var_88
  loc_B357E2: ImpAdLdRf MemVar_D94034
  loc_B357E5: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B357E8: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B357ED: FLdPr var_88
  loc_B357F0: from_stack_1 = clsbase.RecordCount
  loc_B357F5: ILdRf var_B0
  loc_B357F8: LitI4 0
  loc_B357FD: GtI4
  loc_B357FE: FFree1Ad var_88
  loc_B35801: BranchF loc_B35A17
  loc_B35804: FLdRfVar var_CC
  loc_B35807: FLdRfVar var_BC
  loc_B3580A: LitVarStr var_9C, "CodiOfic"
  loc_B3580F: PopAdLdVar
  loc_B35810: FLdRfVar var_B8
  loc_B35813: FLdRfVar var_B4
  loc_B35816: FLdRfVar var_88
  loc_B35819: ImpAdLdRf MemVar_D94034
  loc_B3581C: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B3581F: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B35824: FLdPr var_88
  loc_B35827: from_stack_1v = clsbase.RsFrmGet()
  loc_B3582C: FLdPr var_B4
  loc_B3582F:  = Me.Fields
  loc_B35834: FLdPr var_B8
  loc_B35837: from_stack_2 = Me.Item(from_stack_1)
  loc_B3583C: FLdPr var_BC
  loc_B3583F:  = Me.Value
  loc_B35844: FLdRfVar var_CC
  loc_B35847: FStVar var_DC
  loc_B3584B: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B35856: FLdRfVar var_DC
  loc_B35859: LitVarI2 var_9C, 1
  loc_B3585E: HardType
  loc_B3585F: EqVarBool
  loc_B35861: BranchF loc_B3589B
  loc_B35864: FLdRfVar var_E0
  loc_B35867: LitI2_Byte 0
  loc_B35869: FLdPr Me
  loc_B3586C: VCallAd Control_ID_OficinaCbo
  loc_B3586F: FStAdFunc var_88
  loc_B35872: FLdPr var_88
  loc_B35875: from_stack_2 = Me.List(from_stack_1)
  loc_B3587A: ILdRf var_E0
  loc_B3587D: FLdPr Me
  loc_B35880: VCallAd Control_ID_OficinaCbo
  loc_B35883: FStAdFunc var_B4
  loc_B35886: FLdPr var_B4
  loc_B35889: Me.Text = from_stack_1
  loc_B3588E: FFree1Str var_E0
  loc_B35891: FFreeAd var_88 = ""
  loc_B35898: Branch loc_B359AC
  loc_B3589B: FLdRfVar var_DC
  loc_B3589E: LitVarI2 var_9C, 2
  loc_B358A3: HardType
  loc_B358A4: EqVarBool
  loc_B358A6: BranchF loc_B358E0
  loc_B358A9: FLdRfVar var_E0
  loc_B358AC: LitI2_Byte 1
  loc_B358AE: FLdPr Me
  loc_B358B1: VCallAd Control_ID_OficinaCbo
  loc_B358B4: FStAdFunc var_88
  loc_B358B7: FLdPr var_88
  loc_B358BA: from_stack_2 = Me.List(from_stack_1)
  loc_B358BF: ILdRf var_E0
  loc_B358C2: FLdPr Me
  loc_B358C5: VCallAd Control_ID_OficinaCbo
  loc_B358C8: FStAdFunc var_B4
  loc_B358CB: FLdPr var_B4
  loc_B358CE: Me.Text = from_stack_1
  loc_B358D3: FFree1Str var_E0
  loc_B358D6: FFreeAd var_88 = ""
  loc_B358DD: Branch loc_B359AC
  loc_B358E0: FLdRfVar var_DC
  loc_B358E3: LitVarI2 var_9C, 3
  loc_B358E8: HardType
  loc_B358E9: EqVarBool
  loc_B358EB: BranchF loc_B35925
  loc_B358EE: FLdRfVar var_E0
  loc_B358F1: LitI2_Byte 2
  loc_B358F3: FLdPr Me
  loc_B358F6: VCallAd Control_ID_OficinaCbo
  loc_B358F9: FStAdFunc var_88
  loc_B358FC: FLdPr var_88
  loc_B358FF: from_stack_2 = Me.List(from_stack_1)
  loc_B35904: ILdRf var_E0
  loc_B35907: FLdPr Me
  loc_B3590A: VCallAd Control_ID_OficinaCbo
  loc_B3590D: FStAdFunc var_B4
  loc_B35910: FLdPr var_B4
  loc_B35913: Me.Text = from_stack_1
  loc_B35918: FFree1Str var_E0
  loc_B3591B: FFreeAd var_88 = ""
  loc_B35922: Branch loc_B359AC
  loc_B35925: FLdRfVar var_DC
  loc_B35928: LitVarI2 var_9C, 4
  loc_B3592D: HardType
  loc_B3592E: EqVarBool
  loc_B35930: BranchF loc_B3596A
  loc_B35933: FLdRfVar var_E0
  loc_B35936: LitI2_Byte 3
  loc_B35938: FLdPr Me
  loc_B3593B: VCallAd Control_ID_OficinaCbo
  loc_B3593E: FStAdFunc var_88
  loc_B35941: FLdPr var_88
  loc_B35944: from_stack_2 = Me.List(from_stack_1)
  loc_B35949: ILdRf var_E0
  loc_B3594C: FLdPr Me
  loc_B3594F: VCallAd Control_ID_OficinaCbo
  loc_B35952: FStAdFunc var_B4
  loc_B35955: FLdPr var_B4
  loc_B35958: Me.Text = from_stack_1
  loc_B3595D: FFree1Str var_E0
  loc_B35960: FFreeAd var_88 = ""
  loc_B35967: Branch loc_B359AC
  loc_B3596A: FLdRfVar var_DC
  loc_B3596D: LitVarI2 var_9C, 5
  loc_B35972: HardType
  loc_B35973: EqVarBool
  loc_B35975: BranchF loc_B359AC
  loc_B35978: FLdRfVar var_E0
  loc_B3597B: LitI2_Byte 4
  loc_B3597D: FLdPr Me
  loc_B35980: VCallAd Control_ID_OficinaCbo
  loc_B35983: FStAdFunc var_88
  loc_B35986: FLdPr var_88
  loc_B35989: from_stack_2 = Me.List(from_stack_1)
  loc_B3598E: ILdRf var_E0
  loc_B35991: FLdPr Me
  loc_B35994: VCallAd Control_ID_OficinaCbo
  loc_B35997: FStAdFunc var_B4
  loc_B3599A: FLdPr var_B4
  loc_B3599D: Me.Text = from_stack_1
  loc_B359A2: FFree1Str var_E0
  loc_B359A5: FFreeAd var_88 = ""
  loc_B359AC: FLdRfVar var_CC
  loc_B359AF: FLdRfVar var_BC
  loc_B359B2: LitVarStr var_9C, "CuenCtct"
  loc_B359B7: PopAdLdVar
  loc_B359B8: FLdRfVar var_B8
  loc_B359BB: FLdRfVar var_B4
  loc_B359BE: FLdRfVar var_88
  loc_B359C1: ImpAdLdRf MemVar_D94034
  loc_B359C4: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B359C7: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B359CC: FLdPr var_88
  loc_B359CF: from_stack_1v = clsbase.RsFrmGet()
  loc_B359D4: FLdPr var_B4
  loc_B359D7:  = Me.Fields
  loc_B359DC: FLdPr var_B8
  loc_B359DF: from_stack_2 = Me.Item(from_stack_1)
  loc_B359E4: FLdPr var_BC
  loc_B359E7:  = Me.Value
  loc_B359EC: FLdRfVar var_CC
  loc_B359EF: CStrVarTmp
  loc_B359F0: FStStrNoPop var_E0
  loc_B359F3: FLdPr Me
  loc_B359F6: VCallAd Control_ID_NumeCtaTxt
  loc_B359F9: FStAdFunc var_E4
  loc_B359FC: FLdPr var_E4
  loc_B359FF: Me.Text = from_stack_1
  loc_B35A04: FFree1Str var_E0
  loc_B35A07: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B35A14: FFree1Var var_CC = ""
  loc_B35A17: FLdPr Me
  loc_B35A1A: VCallAd Control_ID_NumeCtaTxt
  loc_B35A1D: CVarAd
  loc_B35A21: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B35A26: FFree1Var var_CC = ""
  loc_B35A29: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B32C58
  'Data Table: 510008
  loc_B32988: FLdRfVar var_8A
  loc_B3298B: FLdPr Me
  loc_B3298E: VCallAd Control_ID_NumeCtaTxt
  loc_B32991: FStAdFunc var_88
  loc_B32994: FLdPr var_88
  loc_B32997:  = Me.Enabled
  loc_B3299C: FLdI2 var_8A
  loc_B3299F: FFree1Ad var_88
  loc_B329A2: BranchF loc_B32C55
  loc_B329A5: FLdRfVar var_90
  loc_B329A8: FLdPr Me
  loc_B329AB: VCallAd Control_ID_NumeCtaTxt
  loc_B329AE: FStAdFunc var_88
  loc_B329B1: FLdPr var_88
  loc_B329B4:  = Me.Text
  loc_B329B9: FLdZeroAd var_90
  loc_B329BC: CVarStr var_A0
  loc_B329BF: FLdRfVar var_B0
  loc_B329C2: ImpAdCallFPR4  = Trim()
  loc_B329C7: FLdRfVar var_B0
  loc_B329CA: CStrVarVal var_B4
  loc_B329CE: FLdPr Me
  loc_B329D1: VCallAd Control_ID_NumeCtaTxt
  loc_B329D4: FStAdFunc var_B8
  loc_B329D7: FLdPr var_B8
  loc_B329DA: Me.Text = from_stack_1
  loc_B329DF: FFree1Str var_B4
  loc_B329E2: FFreeAd var_88 = ""
  loc_B329E9: FFreeVar var_A0 = ""
  loc_B329F0: FLdRfVar var_8A
  loc_B329F3: FLdPr Me
  loc_B329F6: VCallAd Control_ID_OficinaCbo
  loc_B329F9: FStAdFunc var_88
  loc_B329FC: FLdPr var_88
  loc_B329FF:  = Me.ListIndex
  loc_B32A04: FLdI2 var_8A
  loc_B32A07: FStI2 var_BA
  loc_B32A0A: FFree1Ad var_88
  loc_B32A0D: FLdI2 var_BA
  loc_B32A10: LitI2_Byte 0
  loc_B32A12: EqI2
  loc_B32A13: BranchF loc_B32A21
  loc_B32A16: LitI2_Byte 1
  loc_B32A18: CUI1I2
  loc_B32A1A: ImpAdStUI1 MemVar_D93038
  loc_B32A1E: Branch loc_B32A6E
  loc_B32A21: FLdI2 var_BA
  loc_B32A24: LitI2_Byte 1
  loc_B32A26: EqI2
  loc_B32A27: BranchF loc_B32A35
  loc_B32A2A: LitI2_Byte 2
  loc_B32A2C: CUI1I2
  loc_B32A2E: ImpAdStUI1 MemVar_D93038
  loc_B32A32: Branch loc_B32A6E
  loc_B32A35: FLdI2 var_BA
  loc_B32A38: LitI2_Byte 2
  loc_B32A3A: EqI2
  loc_B32A3B: BranchF loc_B32A49
  loc_B32A3E: LitI2_Byte 3
  loc_B32A40: CUI1I2
  loc_B32A42: ImpAdStUI1 MemVar_D93038
  loc_B32A46: Branch loc_B32A6E
  loc_B32A49: FLdI2 var_BA
  loc_B32A4C: LitI2_Byte 3
  loc_B32A4E: EqI2
  loc_B32A4F: BranchF loc_B32A5D
  loc_B32A52: LitI2_Byte 4
  loc_B32A54: CUI1I2
  loc_B32A56: ImpAdStUI1 MemVar_D93038
  loc_B32A5A: Branch loc_B32A6E
  loc_B32A5D: FLdI2 var_BA
  loc_B32A60: LitI2_Byte 4
  loc_B32A62: EqI2
  loc_B32A63: BranchF loc_B32A6E
  loc_B32A66: LitI2_Byte 5
  loc_B32A68: CUI1I2
  loc_B32A6A: ImpAdStUI1 MemVar_D93038
  loc_B32A6E: FLdRfVar var_90
  loc_B32A71: FLdPr Me
  loc_B32A74: VCallAd Control_ID_NumeCtaTxt
  loc_B32A77: FStAdFunc var_88
  loc_B32A7A: FLdPr var_88
  loc_B32A7D:  = Me.Text
  loc_B32A82: FLdPr Me
  loc_B32A85: MemLdRfVar from_stack_1.global_56
  loc_B32A88: NewIfNullRf
  loc_B32A8C: LitStr "Titular"
  loc_B32A8F: ILdRf var_90
  loc_B32A92: ImpAdLdUI1
  loc_B32A96: CStrI2
  loc_B32A98: FStStrNoPop var_B4
  loc_B32A9B: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B32AA0: FFreeStr var_B4 = ""
  loc_B32AA7: FFree1Ad var_88
  loc_B32AAA: BranchF loc_B32BCF
  loc_B32AAD: FLdRfVar var_90
  loc_B32AB0: FLdPr Me
  loc_B32AB3: MemLdRfVar from_stack_1.global_56
  loc_B32AB6: NewIfNullPr tblPersona
  loc_B32AB9: from_stack_1v = tblPersona.CucuPersGet()
  loc_B32ABE: ILdRf var_90
  loc_B32AC1: FLdPr Me
  loc_B32AC4: VCallAd Control_ID_CucuPersLbl
  loc_B32AC7: FStAdFunc var_88
  loc_B32ACA: FLdPr var_88
  loc_B32ACD: Me.Caption = from_stack_1
  loc_B32AD2: FFree1Str var_90
  loc_B32AD5: FFree1Ad var_88
  loc_B32AD8: FLdRfVar var_90
  loc_B32ADB: FLdPr Me
  loc_B32ADE: MemLdRfVar from_stack_1.global_56
  loc_B32AE1: NewIfNullPr tblPersona
  loc_B32AE4: from_stack_1v = tblPersona.DetaPersGet()
  loc_B32AE9: ILdRf var_90
  loc_B32AEC: FLdPr Me
  loc_B32AEF: VCallAd Control_ID_DetaPersLbl
  loc_B32AF2: FStAdFunc var_88
  loc_B32AF5: FLdPr var_88
  loc_B32AF8: Me.Caption = from_stack_1
  loc_B32AFD: FFree1Str var_90
  loc_B32B00: FFree1Ad var_88
  loc_B32B03: FLdRfVar var_B4
  loc_B32B06: FLdPr Me
  loc_B32B09: MemLdRfVar from_stack_1.global_56
  loc_B32B0C: NewIfNullPr tblPersona
  loc_B32B0F: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B32B14: FLdRfVar var_C0
  loc_B32B17: FLdPr Me
  loc_B32B1A: MemLdRfVar from_stack_1.global_56
  loc_B32B1D: NewIfNullPr tblPersona
  loc_B32B20: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B32B25: FLdRfVar var_90
  loc_B32B28: FLdPr Me
  loc_B32B2B: MemLdRfVar from_stack_1.global_56
  loc_B32B2E: NewIfNullPr tblPersona
  loc_B32B31: from_stack_1v = tblPersona.DetaCallGet()
  loc_B32B36: ILdRf var_90
  loc_B32B39: LitStr " "
  loc_B32B3C: ConcatStr
  loc_B32B3D: CVarStr var_100
  loc_B32B40: LitVarStr var_E0, vbNullString
  loc_B32B45: FStVarCopyObj var_B0
  loc_B32B48: FLdRfVar var_B0
  loc_B32B4B: LitStr "Nro: "
  loc_B32B4E: ILdRf var_C0
  loc_B32B51: ConcatStr
  loc_B32B52: CVarStr var_A0
  loc_B32B55: ILdRf var_B4
  loc_B32B58: LitStr "0"
  loc_B32B5B: NeStr
  loc_B32B5D: CVarBoolI2 var_D0
  loc_B32B61: FLdRfVar var_F0
  loc_B32B64: ImpAdCallFPR4  = IIf(, , )
  loc_B32B69: FLdRfVar var_F0
  loc_B32B6C: ConcatVar var_110
  loc_B32B70: LitVarStr var_120, " "
  loc_B32B75: ConcatVar var_130
  loc_B32B79: FLdRfVar var_134
  loc_B32B7C: FLdPr Me
  loc_B32B7F: MemLdRfVar from_stack_1.global_56
  loc_B32B82: NewIfNullPr tblPersona
  loc_B32B85: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B32B8A: FLdZeroAd var_134
  loc_B32B8D: CVarStr var_144
  loc_B32B90: ConcatVar var_154
  loc_B32B94: CStrVarVal var_158
  loc_B32B98: FLdPr Me
  loc_B32B9B: VCallAd Control_ID_DomiPersLbl
  loc_B32B9E: FStAdFunc var_88
  loc_B32BA1: FLdPr var_88
  loc_B32BA4: Me.Caption = from_stack_1
  loc_B32BA9: FFreeStr var_90 = "": var_B4 = "": var_C0 = ""
  loc_B32BB4: FFree1Ad var_88
  loc_B32BB7: FFreeVar var_D0 = "": var_A0 = "": var_B0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = ""
  loc_B32BCC: Branch loc_B32C55
  loc_B32BCF: FLdRfVar var_90
  loc_B32BD2: FLdPr Me
  loc_B32BD5: MemLdRfVar from_stack_1.global_56
  loc_B32BD8: NewIfNullPr tblPersona
  loc_B32BDB: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B32BE0: ILdRf var_90
  loc_B32BE3: FLdPr Me
  loc_B32BE6: MemStStrCopy
  loc_B32BEA: FFree1Str var_90
  loc_B32BED: FLdPr Me
  loc_B32BF0: MemLdStr global_92
  loc_B32BF3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B32BF8: LitStr vbNullString
  loc_B32BFB: FLdPr Me
  loc_B32BFE: VCallAd Control_ID_CucuPersLbl
  loc_B32C01: FStAdFunc var_88
  loc_B32C04: FLdPr var_88
  loc_B32C07: Me.Caption = from_stack_1
  loc_B32C0C: FFree1Ad var_88
  loc_B32C0F: LitStr vbNullString
  loc_B32C12: FLdPr Me
  loc_B32C15: VCallAd Control_ID_DetaPersLbl
  loc_B32C18: FStAdFunc var_88
  loc_B32C1B: FLdPr var_88
  loc_B32C1E: Me.Caption = from_stack_1
  loc_B32C23: FFree1Ad var_88
  loc_B32C26: LitStr vbNullString
  loc_B32C29: FLdPr Me
  loc_B32C2C: VCallAd Control_ID_DomiPersLbl
  loc_B32C2F: FStAdFunc var_88
  loc_B32C32: FLdPr var_88
  loc_B32C35: Me.Caption = from_stack_1
  loc_B32C3A: FFree1Ad var_88
  loc_B32C3D: FLdPr Me
  loc_B32C40: VCallAd Control_ID_NumeCtaTxt
  loc_B32C43: CVarAd
  loc_B32C47: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B32C4C: FFree1Var var_A0 = ""
  loc_B32C4F: LitI2_Byte &HFF
  loc_B32C51: IStI2 Cancel
  loc_B32C54: ExitProcHresult
  loc_B32C55: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D17A8
  'Data Table: 510008
  loc_9D1790: ILdRf Me
  loc_9D1793: FStAdNoPop
  loc_9D1797: ImpAdLdRf MemVar_D9C5D8
  loc_9D179A: NewIfNullPr Global
  loc_9D179D: Global.Unload from_stack_1
  loc_9D17A2: FFree1Ad var_88
  loc_9D17A5: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'C71148
  'Data Table: 510008
  loc_C6FF98: FLdPr Me
  loc_C6FF9B: VCallAd Control_ID_ctacteFlex
  loc_C6FF9E: FStAdFunc var_88
  loc_C6FFA1: FLdPr var_88
  loc_C6FFA4: LateIdLdVar var_98 DispID_4 0
  loc_C6FFAB: CI4Var
  loc_C6FFAD: LitI4 1
  loc_C6FFB2: GtI4
  loc_C6FFB3: FFree1Ad var_88
  loc_C6FFB6: FFree1Var var_98 = ""
  loc_C6FFB9: BranchF loc_C71147
  loc_C6FFBC: LitStr "Municipalidad de Guaymallén"
  loc_C6FFBF: LitStr "Municipalidad de Guaymallén"
  loc_C6FFC2: NeStr
  loc_C6FFC4: BranchF loc_C70B61
  loc_C6FFC7: FLdPr Me
  loc_C6FFCA: VCallAd Control_ID_ctacteFlex
  loc_C6FFCD: FStAdFunc var_88
  loc_C6FFD0: FLdPr var_88
  loc_C6FFD3: LateIdLdVar var_98 DispID_10 0
  loc_C6FFDA: CI4Var
  loc_C6FFDC: CVarI4
  loc_C6FFE0: PopAdLdVar
  loc_C6FFE1: LitVarI4
  loc_C6FFE9: PopAdLdVar
  loc_C6FFEA: FLdPr Me
  loc_C6FFED: VCallAd Control_ID_ctacteFlex
  loc_C6FFF0: FStAdFunc var_DC
  loc_C6FFF3: FLdPr var_DC
  loc_C6FFF6: LateIdCallLdVar
  loc_C70000: CStrVarTmp
  loc_C70001: FStStrNoPop var_F0
  loc_C70004: CI4Str
  loc_C70005: LitI4 0
  loc_C7000A: EqI4
  loc_C7000B: FFree1Str var_F0
  loc_C7000E: FFreeAd var_88 = ""
  loc_C70015: FFreeVar var_98 = ""
  loc_C7001C: BranchF loc_C70521
  loc_C7001F: LitI4 1
  loc_C70024: LitI4 1
  loc_C70029: LitVarStr var_B8, "0.00"
  loc_C7002E: FStVarCopyObj var_EC
  loc_C70031: FLdRfVar var_EC
  loc_C70034: LitVarI2 var_98, 0
  loc_C70039: FLdRfVar var_100
  loc_C7003C: ImpAdCallFPR4  = Format(, )
  loc_C70041: FLdRfVar var_100
  loc_C70044: CStrVarVal var_F0
  loc_C70048: FLdPr Me
  loc_C7004B: VCallAd Control_ID_ImpoCtctTxt
  loc_C7004E: FStAdFunc var_88
  loc_C70051: FLdPr var_88
  loc_C70054: Me.Text = from_stack_1
  loc_C70059: FFree1Str var_F0
  loc_C7005C: FFree1Ad var_88
  loc_C7005F: FFreeVar var_98 = "": var_EC = ""
  loc_C70068: LitI2_Byte 0
  loc_C7006A: FLdPr Me
  loc_C7006D: VCallAd Control_ID_ImpoCtctTxt
  loc_C70070: FStAdFunc var_88
  loc_C70073: FLdPr var_88
  loc_C70076: Me.Enabled = from_stack_1b
  loc_C7007B: FFree1Ad var_88
  loc_C7007E: LitI2_Byte 0
  loc_C70080: FLdPr Me
  loc_C70083: MemLdRfVar from_stack_1.global_60
  loc_C70086: FLdPr Me
  loc_C70089: VCallAd Control_ID_ctacteFlex
  loc_C7008C: FStAdFunc var_88
  loc_C7008F: FLdPr var_88
  loc_C70092: LateIdLdVar var_98 DispID_5 0
  loc_C70099: CI4Var
  loc_C7009B: LitI4 1
  loc_C700A0: SubI4
  loc_C700A1: CI2I4
  loc_C700A2: FFree1Ad var_88
  loc_C700A5: FFree1Var var_98 = ""
  loc_C700A8: ForI2 var_104
  loc_C700AE: FLdPr Me
  loc_C700B1: MemLdI2 global_60
  loc_C700B4: CI4UI1
  loc_C700B5: CVarI4
  loc_C700B9: PopAdLdVar
  loc_C700BA: FLdPr Me
  loc_C700BD: VCallAd Control_ID_ctacteFlex
  loc_C700C0: FStAdFunc var_88
  loc_C700C3: FLdPr var_88
  loc_C700C6: LateIdSt
  loc_C700CB: FFree1Ad var_88
  loc_C700CE: FLdPr Me
  loc_C700D1: VCallAd Control_ID_ctacteFlex
  loc_C700D4: FStAdFunc var_88
  loc_C700D7: FLdPr var_88
  loc_C700DA: LateIdLdVar var_98 DispID_38 0
  loc_C700E1: CI4Var
  loc_C700E3: LitI4 &HFFFF80
  loc_C700E8: EqI4
  loc_C700E9: FFree1Ad var_88
  loc_C700EC: FFree1Var var_98 = ""
  loc_C700EF: BranchF loc_C70304
  loc_C700F2: LitVarI4
  loc_C700FA: PopAdLdVar
  loc_C700FB: FLdPr Me
  loc_C700FE: VCallAd Control_ID_ctacteFlex
  loc_C70101: FStAdFunc var_88
  loc_C70104: FLdPr var_88
  loc_C70107: LateIdSt
  loc_C7010C: FFree1Ad var_88
  loc_C7010F: FLdPr Me
  loc_C70112: VCallAd Control_ID_ctacteFlex
  loc_C70115: FStAdFunc var_88
  loc_C70118: FLdPr var_88
  loc_C7011B: LateIdLdVar var_98 DispID_10 0
  loc_C70122: CI4Var
  loc_C70124: CVarI4
  loc_C70128: PopAdLdVar
  loc_C70129: LitVarI4
  loc_C70131: PopAdLdVar
  loc_C70132: LitVarStr var_114, "No"
  loc_C70137: PopAdLdVar
  loc_C70138: FLdPr Me
  loc_C7013B: VCallAd Control_ID_ctacteFlex
  loc_C7013E: FStAdFunc var_DC
  loc_C70141: FLdPr var_DC
  loc_C70144: LateIdCallSt
  loc_C7014C: FFreeAd var_88 = ""
  loc_C70153: FFree1Var var_98 = ""
  loc_C70156: FLdPr Me
  loc_C70159: MemLdI2 global_60
  loc_C7015C: LitI2_Byte &HB
  loc_C7015E: EqI2
  loc_C7015F: BranchF loc_C701C7
  loc_C70162: FLdPr Me
  loc_C70165: VCallAd Control_ID_ctacteFlex
  loc_C70168: FStAdFunc var_88
  loc_C7016B: FLdPr var_88
  loc_C7016E: LateIdLdVar var_98 DispID_10 0
  loc_C70175: CI4Var
  loc_C70177: CVarI4
  loc_C7017B: PopAdLdVar
  loc_C7017C: FLdPr Me
  loc_C7017F: MemLdI2 global_60
  loc_C70182: CI4UI1
  loc_C70183: CVarI4
  loc_C70187: PopAdLdVar
  loc_C70188: FLdPr Me
  loc_C7018B: VCallAd Control_ID_ctacteFlex
  loc_C7018E: FStAdFunc var_DC
  loc_C70191: FLdPr var_DC
  loc_C70194: LateIdCallLdVar
  loc_C7019E: PopAd
  loc_C701A0: FLdPr Me
  loc_C701A3: MemLdFPR8 global_64
  loc_C701A6: FLdRfVar var_EC
  loc_C701A9: CStrVarTmp
  loc_C701AA: FStStrNoPop var_F0
  loc_C701AD: CR8Str
  loc_C701AF: SubR4
  loc_C701B0: FLdPr Me
  loc_C701B3: MemStFPR8 global_64
  loc_C701B6: FFree1Str var_F0
  loc_C701B9: FFreeAd var_88 = ""
  loc_C701C0: FFreeVar var_98 = ""
  loc_C701C7: FLdPr Me
  loc_C701CA: MemLdI2 global_60
  loc_C701CD: LitI2_Byte &HC
  loc_C701CF: EqI2
  loc_C701D0: BranchF loc_C70290
  loc_C701D3: FLdPr Me
  loc_C701D6: VCallAd Control_ID_ctacteFlex
  loc_C701D9: FStAdFunc var_88
  loc_C701DC: FLdPr var_88
  loc_C701DF: LateIdLdVar var_98 DispID_10 0
  loc_C701E6: CI4Var
  loc_C701E8: CVarI4
  loc_C701EC: PopAdLdVar
  loc_C701ED: FLdPr Me
  loc_C701F0: MemLdI2 global_60
  loc_C701F3: CI4UI1
  loc_C701F4: CVarI4
  loc_C701F8: PopAdLdVar
  loc_C701F9: FLdPr Me
  loc_C701FC: VCallAd Control_ID_ctacteFlex
  loc_C701FF: FStAdFunc var_DC
  loc_C70202: FLdPr var_DC
  loc_C70205: LateIdCallLdVar
  loc_C7020F: CStrVarTmp
  loc_C70210: CVarStr var_100
  loc_C70213: ImpAdCallI2 IsNumeric()
  loc_C70218: FFreeAd var_88 = ""
  loc_C7021F: FFreeVar var_98 = "": var_EC = ""
  loc_C70228: BranchF loc_C70290
  loc_C7022B: FLdPr Me
  loc_C7022E: VCallAd Control_ID_ctacteFlex
  loc_C70231: FStAdFunc var_88
  loc_C70234: FLdPr var_88
  loc_C70237: LateIdLdVar var_98 DispID_10 0
  loc_C7023E: CI4Var
  loc_C70240: CVarI4
  loc_C70244: PopAdLdVar
  loc_C70245: FLdPr Me
  loc_C70248: MemLdI2 global_60
  loc_C7024B: CI4UI1
  loc_C7024C: CVarI4
  loc_C70250: PopAdLdVar
  loc_C70251: FLdPr Me
  loc_C70254: VCallAd Control_ID_ctacteFlex
  loc_C70257: FStAdFunc var_DC
  loc_C7025A: FLdPr var_DC
  loc_C7025D: LateIdCallLdVar
  loc_C70267: PopAd
  loc_C70269: FLdPr Me
  loc_C7026C: MemLdFPR8 global_72
  loc_C7026F: FLdRfVar var_EC
  loc_C70272: CStrVarTmp
  loc_C70273: FStStrNoPop var_F0
  loc_C70276: CR8Str
  loc_C70278: SubR4
  loc_C70279: FLdPr Me
  loc_C7027C: MemStFPR8 global_72
  loc_C7027F: FFree1Str var_F0
  loc_C70282: FFreeAd var_88 = ""
  loc_C70289: FFreeVar var_98 = ""
  loc_C70290: FLdPr Me
  loc_C70293: MemLdI2 global_60
  loc_C70296: LitI2_Byte &HD
  loc_C70298: EqI2
  loc_C70299: BranchF loc_C70301
  loc_C7029C: FLdPr Me
  loc_C7029F: VCallAd Control_ID_ctacteFlex
  loc_C702A2: FStAdFunc var_88
  loc_C702A5: FLdPr var_88
  loc_C702A8: LateIdLdVar var_98 DispID_10 0
  loc_C702AF: CI4Var
  loc_C702B1: CVarI4
  loc_C702B5: PopAdLdVar
  loc_C702B6: FLdPr Me
  loc_C702B9: MemLdI2 global_60
  loc_C702BC: CI4UI1
  loc_C702BD: CVarI4
  loc_C702C1: PopAdLdVar
  loc_C702C2: FLdPr Me
  loc_C702C5: VCallAd Control_ID_ctacteFlex
  loc_C702C8: FStAdFunc var_DC
  loc_C702CB: FLdPr var_DC
  loc_C702CE: LateIdCallLdVar
  loc_C702D8: PopAd
  loc_C702DA: FLdPr Me
  loc_C702DD: MemLdFPR8 global_80
  loc_C702E0: FLdRfVar var_EC
  loc_C702E3: CStrVarTmp
  loc_C702E4: FStStrNoPop var_F0
  loc_C702E7: CR8Str
  loc_C702E9: SubR4
  loc_C702EA: FLdPr Me
  loc_C702ED: MemStFPR8 global_80
  loc_C702F0: FFree1Str var_F0
  loc_C702F3: FFreeAd var_88 = ""
  loc_C702FA: FFreeVar var_98 = ""
  loc_C70301: Branch loc_C70513
  loc_C70304: LitVarI4
  loc_C7030C: PopAdLdVar
  loc_C7030D: FLdPr Me
  loc_C70310: VCallAd Control_ID_ctacteFlex
  loc_C70313: FStAdFunc var_88
  loc_C70316: FLdPr var_88
  loc_C70319: LateIdSt
  loc_C7031E: FFree1Ad var_88
  loc_C70321: FLdPr Me
  loc_C70324: VCallAd Control_ID_ctacteFlex
  loc_C70327: FStAdFunc var_88
  loc_C7032A: FLdPr var_88
  loc_C7032D: LateIdLdVar var_98 DispID_10 0
  loc_C70334: CI4Var
  loc_C70336: CVarI4
  loc_C7033A: PopAdLdVar
  loc_C7033B: LitVarI4
  loc_C70343: PopAdLdVar
  loc_C70344: LitVarStr var_114, "Si"
  loc_C70349: PopAdLdVar
  loc_C7034A: FLdPr Me
  loc_C7034D: VCallAd Control_ID_ctacteFlex
  loc_C70350: FStAdFunc var_DC
  loc_C70353: FLdPr var_DC
  loc_C70356: LateIdCallSt
  loc_C7035E: FFreeAd var_88 = ""
  loc_C70365: FFree1Var var_98 = ""
  loc_C70368: FLdPr Me
  loc_C7036B: MemLdI2 global_60
  loc_C7036E: LitI2_Byte &HB
  loc_C70370: EqI2
  loc_C70371: BranchF loc_C703D9
  loc_C70374: FLdPr Me
  loc_C70377: VCallAd Control_ID_ctacteFlex
  loc_C7037A: FStAdFunc var_88
  loc_C7037D: FLdPr var_88
  loc_C70380: LateIdLdVar var_98 DispID_10 0
  loc_C70387: CI4Var
  loc_C70389: CVarI4
  loc_C7038D: PopAdLdVar
  loc_C7038E: FLdPr Me
  loc_C70391: MemLdI2 global_60
  loc_C70394: CI4UI1
  loc_C70395: CVarI4
  loc_C70399: PopAdLdVar
  loc_C7039A: FLdPr Me
  loc_C7039D: VCallAd Control_ID_ctacteFlex
  loc_C703A0: FStAdFunc var_DC
  loc_C703A3: FLdPr var_DC
  loc_C703A6: LateIdCallLdVar
  loc_C703B0: PopAd
  loc_C703B2: FLdPr Me
  loc_C703B5: MemLdFPR8 global_64
  loc_C703B8: FLdRfVar var_EC
  loc_C703BB: CStrVarTmp
  loc_C703BC: FStStrNoPop var_F0
  loc_C703BF: CR8Str
  loc_C703C1: AddR8
  loc_C703C2: FLdPr Me
  loc_C703C5: MemStFPR8 global_64
  loc_C703C8: FFree1Str var_F0
  loc_C703CB: FFreeAd var_88 = ""
  loc_C703D2: FFreeVar var_98 = ""
  loc_C703D9: FLdPr Me
  loc_C703DC: MemLdI2 global_60
  loc_C703DF: LitI2_Byte &HC
  loc_C703E1: EqI2
  loc_C703E2: BranchF loc_C704A2
  loc_C703E5: FLdPr Me
  loc_C703E8: VCallAd Control_ID_ctacteFlex
  loc_C703EB: FStAdFunc var_88
  loc_C703EE: FLdPr var_88
  loc_C703F1: LateIdLdVar var_98 DispID_10 0
  loc_C703F8: CI4Var
  loc_C703FA: CVarI4
  loc_C703FE: PopAdLdVar
  loc_C703FF: FLdPr Me
  loc_C70402: MemLdI2 global_60
  loc_C70405: CI4UI1
  loc_C70406: CVarI4
  loc_C7040A: PopAdLdVar
  loc_C7040B: FLdPr Me
  loc_C7040E: VCallAd Control_ID_ctacteFlex
  loc_C70411: FStAdFunc var_DC
  loc_C70414: FLdPr var_DC
  loc_C70417: LateIdCallLdVar
  loc_C70421: CStrVarTmp
  loc_C70422: CVarStr var_100
  loc_C70425: ImpAdCallI2 IsNumeric()
  loc_C7042A: FFreeAd var_88 = ""
  loc_C70431: FFreeVar var_98 = "": var_EC = ""
  loc_C7043A: BranchF loc_C704A2
  loc_C7043D: FLdPr Me
  loc_C70440: VCallAd Control_ID_ctacteFlex
  loc_C70443: FStAdFunc var_88
  loc_C70446: FLdPr var_88
  loc_C70449: LateIdLdVar var_98 DispID_10 0
  loc_C70450: CI4Var
  loc_C70452: CVarI4
  loc_C70456: PopAdLdVar
  loc_C70457: FLdPr Me
  loc_C7045A: MemLdI2 global_60
  loc_C7045D: CI4UI1
  loc_C7045E: CVarI4
  loc_C70462: PopAdLdVar
  loc_C70463: FLdPr Me
  loc_C70466: VCallAd Control_ID_ctacteFlex
  loc_C70469: FStAdFunc var_DC
  loc_C7046C: FLdPr var_DC
  loc_C7046F: LateIdCallLdVar
  loc_C70479: PopAd
  loc_C7047B: FLdPr Me
  loc_C7047E: MemLdFPR8 global_72
  loc_C70481: FLdRfVar var_EC
  loc_C70484: CStrVarTmp
  loc_C70485: FStStrNoPop var_F0
  loc_C70488: CR8Str
  loc_C7048A: AddR8
  loc_C7048B: FLdPr Me
  loc_C7048E: MemStFPR8 global_72
  loc_C70491: FFree1Str var_F0
  loc_C70494: FFreeAd var_88 = ""
  loc_C7049B: FFreeVar var_98 = ""
  loc_C704A2: FLdPr Me
  loc_C704A5: MemLdI2 global_60
  loc_C704A8: LitI2_Byte &HD
  loc_C704AA: EqI2
  loc_C704AB: BranchF loc_C70513
  loc_C704AE: FLdPr Me
  loc_C704B1: VCallAd Control_ID_ctacteFlex
  loc_C704B4: FStAdFunc var_88
  loc_C704B7: FLdPr var_88
  loc_C704BA: LateIdLdVar var_98 DispID_10 0
  loc_C704C1: CI4Var
  loc_C704C3: CVarI4
  loc_C704C7: PopAdLdVar
  loc_C704C8: FLdPr Me
  loc_C704CB: MemLdI2 global_60
  loc_C704CE: CI4UI1
  loc_C704CF: CVarI4
  loc_C704D3: PopAdLdVar
  loc_C704D4: FLdPr Me
  loc_C704D7: VCallAd Control_ID_ctacteFlex
  loc_C704DA: FStAdFunc var_DC
  loc_C704DD: FLdPr var_DC
  loc_C704E0: LateIdCallLdVar
  loc_C704EA: PopAd
  loc_C704EC: FLdPr Me
  loc_C704EF: MemLdFPR8 global_80
  loc_C704F2: FLdRfVar var_EC
  loc_C704F5: CStrVarTmp
  loc_C704F6: FStStrNoPop var_F0
  loc_C704F9: CR8Str
  loc_C704FB: AddR8
  loc_C704FC: FLdPr Me
  loc_C704FF: MemStFPR8 global_80
  loc_C70502: FFree1Str var_F0
  loc_C70505: FFreeAd var_88 = ""
  loc_C7050C: FFreeVar var_98 = ""
  loc_C70513: FLdPr Me
  loc_C70516: MemLdRfVar from_stack_1.global_60
  loc_C70519: NextI2 var_104, loc_C700AE
  loc_C7051E: Branch loc_C70B5E
  loc_C70521: FLdPr Me
  loc_C70524: VCallAd Control_ID_ctacteFlex
  loc_C70527: FStAdFunc var_88
  loc_C7052A: FLdPr var_88
  loc_C7052D: LateIdLdVar var_98 DispID_10 0
  loc_C70534: CI4Var
  loc_C70536: CVarI4
  loc_C7053A: PopAdLdVar
  loc_C7053B: LitVarI4
  loc_C70543: PopAdLdVar
  loc_C70544: FLdPr Me
  loc_C70547: VCallAd Control_ID_ctacteFlex
  loc_C7054A: FStAdFunc var_DC
  loc_C7054D: FLdPr var_DC
  loc_C70550: LateIdCallLdVar
  loc_C7055A: CStrVarTmp
  loc_C7055B: FStStrNoPop var_F0
  loc_C7055E: CI4Str
  loc_C7055F: LitI4 0
  loc_C70564: NeI4
  loc_C70565: FFree1Str var_F0
  loc_C70568: FFreeAd var_88 = ""
  loc_C7056F: FFreeVar var_98 = ""
  loc_C70576: BranchF loc_C70B5E
  loc_C70579: LitI4 1
  loc_C7057E: LitI4 1
  loc_C70583: LitVarStr var_B8, "0.00"
  loc_C70588: FStVarCopyObj var_EC
  loc_C7058B: FLdRfVar var_EC
  loc_C7058E: LitVarI2 var_98, 0
  loc_C70593: FLdRfVar var_100
  loc_C70596: ImpAdCallFPR4  = Format(, )
  loc_C7059B: FLdRfVar var_100
  loc_C7059E: CStrVarVal var_F0
  loc_C705A2: FLdPr Me
  loc_C705A5: VCallAd Control_ID_ImpoCtctTxt
  loc_C705A8: FStAdFunc var_88
  loc_C705AB: FLdPr var_88
  loc_C705AE: Me.Text = from_stack_1
  loc_C705B3: FFree1Str var_F0
  loc_C705B6: FFree1Ad var_88
  loc_C705B9: FFreeVar var_98 = "": var_EC = ""
  loc_C705C2: LitI2_Byte 0
  loc_C705C4: FLdPr Me
  loc_C705C7: VCallAd Control_ID_ImpoCtctTxt
  loc_C705CA: FStAdFunc var_88
  loc_C705CD: FLdPr var_88
  loc_C705D0: Me.Enabled = from_stack_1b
  loc_C705D5: FFree1Ad var_88
  loc_C705D8: LitI2_Byte 1
  loc_C705DA: FLdPr Me
  loc_C705DD: MemLdRfVar from_stack_1.global_60
  loc_C705E0: FLdPr Me
  loc_C705E3: VCallAd Control_ID_ctacteFlex
  loc_C705E6: FStAdFunc var_88
  loc_C705E9: FLdPr var_88
  loc_C705EC: LateIdLdVar var_98 DispID_4 0
  loc_C705F3: CI4Var
  loc_C705F5: LitI4 1
  loc_C705FA: SubI4
  loc_C705FB: CI2I4
  loc_C705FC: FFree1Ad var_88
  loc_C705FF: FFree1Var var_98 = ""
  loc_C70602: ForI2 var_128
  loc_C70608: FLdPr Me
  loc_C7060B: MemLdI2 global_60
  loc_C7060E: CI4UI1
  loc_C7060F: CVarI4
  loc_C70613: PopAdLdVar
  loc_C70614: LitVarI4
  loc_C7061C: PopAdLdVar
  loc_C7061D: FLdPr Me
  loc_C70620: VCallAd Control_ID_ctacteFlex
  loc_C70623: FStAdFunc var_88
  loc_C70626: FLdPr var_88
  loc_C70629: LateIdCallLdVar
  loc_C70633: CStrVarTmp
  loc_C70634: FStStrNoPop var_F0
  loc_C70637: CI4Str
  loc_C70638: FLdPr Me
  loc_C7063B: VCallAd Control_ID_ctacteFlex
  loc_C7063E: FStAdFunc var_DC
  loc_C70641: FLdPr var_DC
  loc_C70644: LateIdLdVar var_EC DispID_10 0
  loc_C7064B: CI4Var
  loc_C7064D: CVarI4
  loc_C70651: PopAdLdVar
  loc_C70652: LitVarI4
  loc_C7065A: PopAdLdVar
  loc_C7065B: FLdPr Me
  loc_C7065E: VCallAd Control_ID_ctacteFlex
  loc_C70661: FStAdFunc var_14C
  loc_C70664: FLdPr var_14C
  loc_C70667: LateIdCallLdVar
  loc_C70671: CStrVarTmp
  loc_C70672: FStStrNoPop var_150
  loc_C70675: CI4Str
  loc_C70676: EqI4
  loc_C70677: FFreeStr var_F0 = ""
  loc_C7067E: FFreeAd var_88 = "": var_DC = ""
  loc_C70687: FFreeVar var_98 = "": var_EC = ""
  loc_C70690: BranchF loc_C70B53
  loc_C70693: FLdPr Me
  loc_C70696: MemLdI2 global_60
  loc_C70699: CI4UI1
  loc_C7069A: CVarI4
  loc_C7069E: PopAdLdVar
  loc_C7069F: FLdPr Me
  loc_C706A2: VCallAd Control_ID_ctacteFlex
  loc_C706A5: FStAdFunc var_88
  loc_C706A8: FLdPr var_88
  loc_C706AB: LateIdSt
  loc_C706B0: FFree1Ad var_88
  loc_C706B3: LitI2_Byte 0
  loc_C706B5: FLdPr Me
  loc_C706B8: MemLdRfVar from_stack_1.global_62
  loc_C706BB: FLdPr Me
  loc_C706BE: VCallAd Control_ID_ctacteFlex
  loc_C706C1: FStAdFunc var_88
  loc_C706C4: FLdPr var_88
  loc_C706C7: LateIdLdVar var_98 DispID_5 0
  loc_C706CE: CI4Var
  loc_C706D0: LitI4 1
  loc_C706D5: SubI4
  loc_C706D6: CI2I4
  loc_C706D7: FFree1Ad var_88
  loc_C706DA: FFree1Var var_98 = ""
  loc_C706DD: ForI2 var_154
  loc_C706E3: FLdPr Me
  loc_C706E6: MemLdI2 global_62
  loc_C706E9: CI4UI1
  loc_C706EA: CVarI4
  loc_C706EE: PopAdLdVar
  loc_C706EF: FLdPr Me
  loc_C706F2: VCallAd Control_ID_ctacteFlex
  loc_C706F5: FStAdFunc var_88
  loc_C706F8: FLdPr var_88
  loc_C706FB: LateIdSt
  loc_C70700: FFree1Ad var_88
  loc_C70703: FLdPr Me
  loc_C70706: VCallAd Control_ID_ctacteFlex
  loc_C70709: FStAdFunc var_88
  loc_C7070C: FLdPr var_88
  loc_C7070F: LateIdLdVar var_98 DispID_38 0
  loc_C70716: CI4Var
  loc_C70718: LitI4 &HFFFF80
  loc_C7071D: EqI4
  loc_C7071E: FFree1Ad var_88
  loc_C70721: FFree1Var var_98 = ""
  loc_C70724: BranchF loc_C70939
  loc_C70727: LitVarI4
  loc_C7072F: PopAdLdVar
  loc_C70730: FLdPr Me
  loc_C70733: VCallAd Control_ID_ctacteFlex
  loc_C70736: FStAdFunc var_88
  loc_C70739: FLdPr var_88
  loc_C7073C: LateIdSt
  loc_C70741: FFree1Ad var_88
  loc_C70744: FLdPr Me
  loc_C70747: VCallAd Control_ID_ctacteFlex
  loc_C7074A: FStAdFunc var_88
  loc_C7074D: FLdPr var_88
  loc_C70750: LateIdLdVar var_98 DispID_10 0
  loc_C70757: CI4Var
  loc_C70759: CVarI4
  loc_C7075D: PopAdLdVar
  loc_C7075E: LitVarI4
  loc_C70766: PopAdLdVar
  loc_C70767: LitVarStr var_114, "No"
  loc_C7076C: PopAdLdVar
  loc_C7076D: FLdPr Me
  loc_C70770: VCallAd Control_ID_ctacteFlex
  loc_C70773: FStAdFunc var_DC
  loc_C70776: FLdPr var_DC
  loc_C70779: LateIdCallSt
  loc_C70781: FFreeAd var_88 = ""
  loc_C70788: FFree1Var var_98 = ""
  loc_C7078B: FLdPr Me
  loc_C7078E: MemLdI2 global_62
  loc_C70791: LitI2_Byte &HB
  loc_C70793: EqI2
  loc_C70794: BranchF loc_C707FC
  loc_C70797: FLdPr Me
  loc_C7079A: VCallAd Control_ID_ctacteFlex
  loc_C7079D: FStAdFunc var_88
  loc_C707A0: FLdPr var_88
  loc_C707A3: LateIdLdVar var_98 DispID_10 0
  loc_C707AA: CI4Var
  loc_C707AC: CVarI4
  loc_C707B0: PopAdLdVar
  loc_C707B1: FLdPr Me
  loc_C707B4: MemLdI2 global_62
  loc_C707B7: CI4UI1
  loc_C707B8: CVarI4
  loc_C707BC: PopAdLdVar
  loc_C707BD: FLdPr Me
  loc_C707C0: VCallAd Control_ID_ctacteFlex
  loc_C707C3: FStAdFunc var_DC
  loc_C707C6: FLdPr var_DC
  loc_C707C9: LateIdCallLdVar
  loc_C707D3: PopAd
  loc_C707D5: FLdPr Me
  loc_C707D8: MemLdFPR8 global_64
  loc_C707DB: FLdRfVar var_EC
  loc_C707DE: CStrVarTmp
  loc_C707DF: FStStrNoPop var_F0
  loc_C707E2: CR8Str
  loc_C707E4: SubR4
  loc_C707E5: FLdPr Me
  loc_C707E8: MemStFPR8 global_64
  loc_C707EB: FFree1Str var_F0
  loc_C707EE: FFreeAd var_88 = ""
  loc_C707F5: FFreeVar var_98 = ""
  loc_C707FC: FLdPr Me
  loc_C707FF: MemLdI2 global_62
  loc_C70802: LitI2_Byte &HC
  loc_C70804: EqI2
  loc_C70805: BranchF loc_C708C5
  loc_C70808: FLdPr Me
  loc_C7080B: VCallAd Control_ID_ctacteFlex
  loc_C7080E: FStAdFunc var_88
  loc_C70811: FLdPr var_88
  loc_C70814: LateIdLdVar var_98 DispID_10 0
  loc_C7081B: CI4Var
  loc_C7081D: CVarI4
  loc_C70821: PopAdLdVar
  loc_C70822: FLdPr Me
  loc_C70825: MemLdI2 global_62
  loc_C70828: CI4UI1
  loc_C70829: CVarI4
  loc_C7082D: PopAdLdVar
  loc_C7082E: FLdPr Me
  loc_C70831: VCallAd Control_ID_ctacteFlex
  loc_C70834: FStAdFunc var_DC
  loc_C70837: FLdPr var_DC
  loc_C7083A: LateIdCallLdVar
  loc_C70844: CStrVarTmp
  loc_C70845: CVarStr var_100
  loc_C70848: ImpAdCallI2 IsNumeric()
  loc_C7084D: FFreeAd var_88 = ""
  loc_C70854: FFreeVar var_98 = "": var_EC = ""
  loc_C7085D: BranchF loc_C708C5
  loc_C70860: FLdPr Me
  loc_C70863: VCallAd Control_ID_ctacteFlex
  loc_C70866: FStAdFunc var_88
  loc_C70869: FLdPr var_88
  loc_C7086C: LateIdLdVar var_98 DispID_10 0
  loc_C70873: CI4Var
  loc_C70875: CVarI4
  loc_C70879: PopAdLdVar
  loc_C7087A: FLdPr Me
  loc_C7087D: MemLdI2 global_62
  loc_C70880: CI4UI1
  loc_C70881: CVarI4
  loc_C70885: PopAdLdVar
  loc_C70886: FLdPr Me
  loc_C70889: VCallAd Control_ID_ctacteFlex
  loc_C7088C: FStAdFunc var_DC
  loc_C7088F: FLdPr var_DC
  loc_C70892: LateIdCallLdVar
  loc_C7089C: PopAd
  loc_C7089E: FLdPr Me
  loc_C708A1: MemLdFPR8 global_72
  loc_C708A4: FLdRfVar var_EC
  loc_C708A7: CStrVarTmp
  loc_C708A8: FStStrNoPop var_F0
  loc_C708AB: CR8Str
  loc_C708AD: SubR4
  loc_C708AE: FLdPr Me
  loc_C708B1: MemStFPR8 global_72
  loc_C708B4: FFree1Str var_F0
  loc_C708B7: FFreeAd var_88 = ""
  loc_C708BE: FFreeVar var_98 = ""
  loc_C708C5: FLdPr Me
  loc_C708C8: MemLdI2 global_62
  loc_C708CB: LitI2_Byte &HD
  loc_C708CD: EqI2
  loc_C708CE: BranchF loc_C70936
  loc_C708D1: FLdPr Me
  loc_C708D4: VCallAd Control_ID_ctacteFlex
  loc_C708D7: FStAdFunc var_88
  loc_C708DA: FLdPr var_88
  loc_C708DD: LateIdLdVar var_98 DispID_10 0
  loc_C708E4: CI4Var
  loc_C708E6: CVarI4
  loc_C708EA: PopAdLdVar
  loc_C708EB: FLdPr Me
  loc_C708EE: MemLdI2 global_62
  loc_C708F1: CI4UI1
  loc_C708F2: CVarI4
  loc_C708F6: PopAdLdVar
  loc_C708F7: FLdPr Me
  loc_C708FA: VCallAd Control_ID_ctacteFlex
  loc_C708FD: FStAdFunc var_DC
  loc_C70900: FLdPr var_DC
  loc_C70903: LateIdCallLdVar
  loc_C7090D: PopAd
  loc_C7090F: FLdPr Me
  loc_C70912: MemLdFPR8 global_80
  loc_C70915: FLdRfVar var_EC
  loc_C70918: CStrVarTmp
  loc_C70919: FStStrNoPop var_F0
  loc_C7091C: CR8Str
  loc_C7091E: SubR4
  loc_C7091F: FLdPr Me
  loc_C70922: MemStFPR8 global_80
  loc_C70925: FFree1Str var_F0
  loc_C70928: FFreeAd var_88 = ""
  loc_C7092F: FFreeVar var_98 = ""
  loc_C70936: Branch loc_C70B48
  loc_C70939: LitVarI4
  loc_C70941: PopAdLdVar
  loc_C70942: FLdPr Me
  loc_C70945: VCallAd Control_ID_ctacteFlex
  loc_C70948: FStAdFunc var_88
  loc_C7094B: FLdPr var_88
  loc_C7094E: LateIdSt
  loc_C70953: FFree1Ad var_88
  loc_C70956: FLdPr Me
  loc_C70959: VCallAd Control_ID_ctacteFlex
  loc_C7095C: FStAdFunc var_88
  loc_C7095F: FLdPr var_88
  loc_C70962: LateIdLdVar var_98 DispID_10 0
  loc_C70969: CI4Var
  loc_C7096B: CVarI4
  loc_C7096F: PopAdLdVar
  loc_C70970: LitVarI4
  loc_C70978: PopAdLdVar
  loc_C70979: LitVarStr var_114, "Si"
  loc_C7097E: PopAdLdVar
  loc_C7097F: FLdPr Me
  loc_C70982: VCallAd Control_ID_ctacteFlex
  loc_C70985: FStAdFunc var_DC
  loc_C70988: FLdPr var_DC
  loc_C7098B: LateIdCallSt
  loc_C70993: FFreeAd var_88 = ""
  loc_C7099A: FFree1Var var_98 = ""
  loc_C7099D: FLdPr Me
  loc_C709A0: MemLdI2 global_62
  loc_C709A3: LitI2_Byte &HB
  loc_C709A5: EqI2
  loc_C709A6: BranchF loc_C70A0E
  loc_C709A9: FLdPr Me
  loc_C709AC: VCallAd Control_ID_ctacteFlex
  loc_C709AF: FStAdFunc var_88
  loc_C709B2: FLdPr var_88
  loc_C709B5: LateIdLdVar var_98 DispID_10 0
  loc_C709BC: CI4Var
  loc_C709BE: CVarI4
  loc_C709C2: PopAdLdVar
  loc_C709C3: FLdPr Me
  loc_C709C6: MemLdI2 global_62
  loc_C709C9: CI4UI1
  loc_C709CA: CVarI4
  loc_C709CE: PopAdLdVar
  loc_C709CF: FLdPr Me
  loc_C709D2: VCallAd Control_ID_ctacteFlex
  loc_C709D5: FStAdFunc var_DC
  loc_C709D8: FLdPr var_DC
  loc_C709DB: LateIdCallLdVar
  loc_C709E5: PopAd
  loc_C709E7: FLdPr Me
  loc_C709EA: MemLdFPR8 global_64
  loc_C709ED: FLdRfVar var_EC
  loc_C709F0: CStrVarTmp
  loc_C709F1: FStStrNoPop var_F0
  loc_C709F4: CR8Str
  loc_C709F6: AddR8
  loc_C709F7: FLdPr Me
  loc_C709FA: MemStFPR8 global_64
  loc_C709FD: FFree1Str var_F0
  loc_C70A00: FFreeAd var_88 = ""
  loc_C70A07: FFreeVar var_98 = ""
  loc_C70A0E: FLdPr Me
  loc_C70A11: MemLdI2 global_62
  loc_C70A14: LitI2_Byte &HC
  loc_C70A16: EqI2
  loc_C70A17: BranchF loc_C70AD7
  loc_C70A1A: FLdPr Me
  loc_C70A1D: VCallAd Control_ID_ctacteFlex
  loc_C70A20: FStAdFunc var_88
  loc_C70A23: FLdPr var_88
  loc_C70A26: LateIdLdVar var_98 DispID_10 0
  loc_C70A2D: CI4Var
  loc_C70A2F: CVarI4
  loc_C70A33: PopAdLdVar
  loc_C70A34: FLdPr Me
  loc_C70A37: MemLdI2 global_62
  loc_C70A3A: CI4UI1
  loc_C70A3B: CVarI4
  loc_C70A3F: PopAdLdVar
  loc_C70A40: FLdPr Me
  loc_C70A43: VCallAd Control_ID_ctacteFlex
  loc_C70A46: FStAdFunc var_DC
  loc_C70A49: FLdPr var_DC
  loc_C70A4C: LateIdCallLdVar
  loc_C70A56: CStrVarTmp
  loc_C70A57: CVarStr var_100
  loc_C70A5A: ImpAdCallI2 IsNumeric()
  loc_C70A5F: FFreeAd var_88 = ""
  loc_C70A66: FFreeVar var_98 = "": var_EC = ""
  loc_C70A6F: BranchF loc_C70AD7
  loc_C70A72: FLdPr Me
  loc_C70A75: VCallAd Control_ID_ctacteFlex
  loc_C70A78: FStAdFunc var_88
  loc_C70A7B: FLdPr var_88
  loc_C70A7E: LateIdLdVar var_98 DispID_10 0
  loc_C70A85: CI4Var
  loc_C70A87: CVarI4
  loc_C70A8B: PopAdLdVar
  loc_C70A8C: FLdPr Me
  loc_C70A8F: MemLdI2 global_62
  loc_C70A92: CI4UI1
  loc_C70A93: CVarI4
  loc_C70A97: PopAdLdVar
  loc_C70A98: FLdPr Me
  loc_C70A9B: VCallAd Control_ID_ctacteFlex
  loc_C70A9E: FStAdFunc var_DC
  loc_C70AA1: FLdPr var_DC
  loc_C70AA4: LateIdCallLdVar
  loc_C70AAE: PopAd
  loc_C70AB0: FLdPr Me
  loc_C70AB3: MemLdFPR8 global_72
  loc_C70AB6: FLdRfVar var_EC
  loc_C70AB9: CStrVarTmp
  loc_C70ABA: FStStrNoPop var_F0
  loc_C70ABD: CR8Str
  loc_C70ABF: AddR8
  loc_C70AC0: FLdPr Me
  loc_C70AC3: MemStFPR8 global_72
  loc_C70AC6: FFree1Str var_F0
  loc_C70AC9: FFreeAd var_88 = ""
  loc_C70AD0: FFreeVar var_98 = ""
  loc_C70AD7: FLdPr Me
  loc_C70ADA: MemLdI2 global_62
  loc_C70ADD: LitI2_Byte &HD
  loc_C70ADF: EqI2
  loc_C70AE0: BranchF loc_C70B48
  loc_C70AE3: FLdPr Me
  loc_C70AE6: VCallAd Control_ID_ctacteFlex
  loc_C70AE9: FStAdFunc var_88
  loc_C70AEC: FLdPr var_88
  loc_C70AEF: LateIdLdVar var_98 DispID_10 0
  loc_C70AF6: CI4Var
  loc_C70AF8: CVarI4
  loc_C70AFC: PopAdLdVar
  loc_C70AFD: FLdPr Me
  loc_C70B00: MemLdI2 global_62
  loc_C70B03: CI4UI1
  loc_C70B04: CVarI4
  loc_C70B08: PopAdLdVar
  loc_C70B09: FLdPr Me
  loc_C70B0C: VCallAd Control_ID_ctacteFlex
  loc_C70B0F: FStAdFunc var_DC
  loc_C70B12: FLdPr var_DC
  loc_C70B15: LateIdCallLdVar
  loc_C70B1F: PopAd
  loc_C70B21: FLdPr Me
  loc_C70B24: MemLdFPR8 global_80
  loc_C70B27: FLdRfVar var_EC
  loc_C70B2A: CStrVarTmp
  loc_C70B2B: FStStrNoPop var_F0
  loc_C70B2E: CR8Str
  loc_C70B30: AddR8
  loc_C70B31: FLdPr Me
  loc_C70B34: MemStFPR8 global_80
  loc_C70B37: FFree1Str var_F0
  loc_C70B3A: FFreeAd var_88 = ""
  loc_C70B41: FFreeVar var_98 = ""
  loc_C70B48: FLdPr Me
  loc_C70B4B: MemLdRfVar from_stack_1.global_62
  loc_C70B4E: NextI2 var_154, loc_C706E3
  loc_C70B53: FLdPr Me
  loc_C70B56: MemLdRfVar from_stack_1.global_60
  loc_C70B59: NextI2 var_128, loc_C70608
  loc_C70B5E: Branch loc_C71060
  loc_C70B61: LitI4 1
  loc_C70B66: LitI4 1
  loc_C70B6B: LitVarStr var_B8, "0.00"
  loc_C70B70: FStVarCopyObj var_EC
  loc_C70B73: FLdRfVar var_EC
  loc_C70B76: LitVarI2 var_98, 0
  loc_C70B7B: FLdRfVar var_100
  loc_C70B7E: ImpAdCallFPR4  = Format(, )
  loc_C70B83: FLdRfVar var_100
  loc_C70B86: CStrVarVal var_F0
  loc_C70B8A: FLdPr Me
  loc_C70B8D: VCallAd Control_ID_ImpoCtctTxt
  loc_C70B90: FStAdFunc var_88
  loc_C70B93: FLdPr var_88
  loc_C70B96: Me.Text = from_stack_1
  loc_C70B9B: FFree1Str var_F0
  loc_C70B9E: FFree1Ad var_88
  loc_C70BA1: FFreeVar var_98 = "": var_EC = ""
  loc_C70BAA: LitI2_Byte 0
  loc_C70BAC: FLdPr Me
  loc_C70BAF: VCallAd Control_ID_ImpoCtctTxt
  loc_C70BB2: FStAdFunc var_88
  loc_C70BB5: FLdPr var_88
  loc_C70BB8: Me.Enabled = from_stack_1b
  loc_C70BBD: FFree1Ad var_88
  loc_C70BC0: LitI2_Byte 0
  loc_C70BC2: FLdPr Me
  loc_C70BC5: MemLdRfVar from_stack_1.global_60
  loc_C70BC8: FLdPr Me
  loc_C70BCB: VCallAd Control_ID_ctacteFlex
  loc_C70BCE: FStAdFunc var_88
  loc_C70BD1: FLdPr var_88
  loc_C70BD4: LateIdLdVar var_98 DispID_5 0
  loc_C70BDB: CI4Var
  loc_C70BDD: LitI4 1
  loc_C70BE2: SubI4
  loc_C70BE3: CI2I4
  loc_C70BE4: FFree1Ad var_88
  loc_C70BE7: FFree1Var var_98 = ""
  loc_C70BEA: ForI2 var_158
  loc_C70BF0: FLdPr Me
  loc_C70BF3: MemLdI2 global_60
  loc_C70BF6: CI4UI1
  loc_C70BF7: CVarI4
  loc_C70BFB: PopAdLdVar
  loc_C70BFC: FLdPr Me
  loc_C70BFF: VCallAd Control_ID_ctacteFlex
  loc_C70C02: FStAdFunc var_88
  loc_C70C05: FLdPr var_88
  loc_C70C08: LateIdSt
  loc_C70C0D: FFree1Ad var_88
  loc_C70C10: FLdPr Me
  loc_C70C13: VCallAd Control_ID_ctacteFlex
  loc_C70C16: FStAdFunc var_88
  loc_C70C19: FLdPr var_88
  loc_C70C1C: LateIdLdVar var_98 DispID_38 0
  loc_C70C23: CI4Var
  loc_C70C25: LitI4 &HFFFF80
  loc_C70C2A: EqI4
  loc_C70C2B: FFree1Ad var_88
  loc_C70C2E: FFree1Var var_98 = ""
  loc_C70C31: BranchF loc_C70E46
  loc_C70C34: LitVarI4
  loc_C70C3C: PopAdLdVar
  loc_C70C3D: FLdPr Me
  loc_C70C40: VCallAd Control_ID_ctacteFlex
  loc_C70C43: FStAdFunc var_88
  loc_C70C46: FLdPr var_88
  loc_C70C49: LateIdSt
  loc_C70C4E: FFree1Ad var_88
  loc_C70C51: FLdPr Me
  loc_C70C54: VCallAd Control_ID_ctacteFlex
  loc_C70C57: FStAdFunc var_88
  loc_C70C5A: FLdPr var_88
  loc_C70C5D: LateIdLdVar var_98 DispID_10 0
  loc_C70C64: CI4Var
  loc_C70C66: CVarI4
  loc_C70C6A: PopAdLdVar
  loc_C70C6B: LitVarI4
  loc_C70C73: PopAdLdVar
  loc_C70C74: LitVarStr var_114, "No"
  loc_C70C79: PopAdLdVar
  loc_C70C7A: FLdPr Me
  loc_C70C7D: VCallAd Control_ID_ctacteFlex
  loc_C70C80: FStAdFunc var_DC
  loc_C70C83: FLdPr var_DC
  loc_C70C86: LateIdCallSt
  loc_C70C8E: FFreeAd var_88 = ""
  loc_C70C95: FFree1Var var_98 = ""
  loc_C70C98: FLdPr Me
  loc_C70C9B: MemLdI2 global_60
  loc_C70C9E: LitI2_Byte &HB
  loc_C70CA0: EqI2
  loc_C70CA1: BranchF loc_C70D09
  loc_C70CA4: FLdPr Me
  loc_C70CA7: VCallAd Control_ID_ctacteFlex
  loc_C70CAA: FStAdFunc var_88
  loc_C70CAD: FLdPr var_88
  loc_C70CB0: LateIdLdVar var_98 DispID_10 0
  loc_C70CB7: CI4Var
  loc_C70CB9: CVarI4
  loc_C70CBD: PopAdLdVar
  loc_C70CBE: FLdPr Me
  loc_C70CC1: MemLdI2 global_60
  loc_C70CC4: CI4UI1
  loc_C70CC5: CVarI4
  loc_C70CC9: PopAdLdVar
  loc_C70CCA: FLdPr Me
  loc_C70CCD: VCallAd Control_ID_ctacteFlex
  loc_C70CD0: FStAdFunc var_DC
  loc_C70CD3: FLdPr var_DC
  loc_C70CD6: LateIdCallLdVar
  loc_C70CE0: PopAd
  loc_C70CE2: FLdPr Me
  loc_C70CE5: MemLdFPR8 global_64
  loc_C70CE8: FLdRfVar var_EC
  loc_C70CEB: CStrVarTmp
  loc_C70CEC: FStStrNoPop var_F0
  loc_C70CEF: CR8Str
  loc_C70CF1: SubR4
  loc_C70CF2: FLdPr Me
  loc_C70CF5: MemStFPR8 global_64
  loc_C70CF8: FFree1Str var_F0
  loc_C70CFB: FFreeAd var_88 = ""
  loc_C70D02: FFreeVar var_98 = ""
  loc_C70D09: FLdPr Me
  loc_C70D0C: MemLdI2 global_60
  loc_C70D0F: LitI2_Byte &HC
  loc_C70D11: EqI2
  loc_C70D12: BranchF loc_C70DD2
  loc_C70D15: FLdPr Me
  loc_C70D18: VCallAd Control_ID_ctacteFlex
  loc_C70D1B: FStAdFunc var_88
  loc_C70D1E: FLdPr var_88
  loc_C70D21: LateIdLdVar var_98 DispID_10 0
  loc_C70D28: CI4Var
  loc_C70D2A: CVarI4
  loc_C70D2E: PopAdLdVar
  loc_C70D2F: FLdPr Me
  loc_C70D32: MemLdI2 global_60
  loc_C70D35: CI4UI1
  loc_C70D36: CVarI4
  loc_C70D3A: PopAdLdVar
  loc_C70D3B: FLdPr Me
  loc_C70D3E: VCallAd Control_ID_ctacteFlex
  loc_C70D41: FStAdFunc var_DC
  loc_C70D44: FLdPr var_DC
  loc_C70D47: LateIdCallLdVar
  loc_C70D51: CStrVarTmp
  loc_C70D52: CVarStr var_100
  loc_C70D55: ImpAdCallI2 IsNumeric()
  loc_C70D5A: FFreeAd var_88 = ""
  loc_C70D61: FFreeVar var_98 = "": var_EC = ""
  loc_C70D6A: BranchF loc_C70DD2
  loc_C70D6D: FLdPr Me
  loc_C70D70: VCallAd Control_ID_ctacteFlex
  loc_C70D73: FStAdFunc var_88
  loc_C70D76: FLdPr var_88
  loc_C70D79: LateIdLdVar var_98 DispID_10 0
  loc_C70D80: CI4Var
  loc_C70D82: CVarI4
  loc_C70D86: PopAdLdVar
  loc_C70D87: FLdPr Me
  loc_C70D8A: MemLdI2 global_60
  loc_C70D8D: CI4UI1
  loc_C70D8E: CVarI4
  loc_C70D92: PopAdLdVar
  loc_C70D93: FLdPr Me
  loc_C70D96: VCallAd Control_ID_ctacteFlex
  loc_C70D99: FStAdFunc var_DC
  loc_C70D9C: FLdPr var_DC
  loc_C70D9F: LateIdCallLdVar
  loc_C70DA9: PopAd
  loc_C70DAB: FLdPr Me
  loc_C70DAE: MemLdFPR8 global_72
  loc_C70DB1: FLdRfVar var_EC
  loc_C70DB4: CStrVarTmp
  loc_C70DB5: FStStrNoPop var_F0
  loc_C70DB8: CR8Str
  loc_C70DBA: SubR4
  loc_C70DBB: FLdPr Me
  loc_C70DBE: MemStFPR8 global_72
  loc_C70DC1: FFree1Str var_F0
  loc_C70DC4: FFreeAd var_88 = ""
  loc_C70DCB: FFreeVar var_98 = ""
  loc_C70DD2: FLdPr Me
  loc_C70DD5: MemLdI2 global_60
  loc_C70DD8: LitI2_Byte &HD
  loc_C70DDA: EqI2
  loc_C70DDB: BranchF loc_C70E43
  loc_C70DDE: FLdPr Me
  loc_C70DE1: VCallAd Control_ID_ctacteFlex
  loc_C70DE4: FStAdFunc var_88
  loc_C70DE7: FLdPr var_88
  loc_C70DEA: LateIdLdVar var_98 DispID_10 0
  loc_C70DF1: CI4Var
  loc_C70DF3: CVarI4
  loc_C70DF7: PopAdLdVar
  loc_C70DF8: FLdPr Me
  loc_C70DFB: MemLdI2 global_60
  loc_C70DFE: CI4UI1
  loc_C70DFF: CVarI4
  loc_C70E03: PopAdLdVar
  loc_C70E04: FLdPr Me
  loc_C70E07: VCallAd Control_ID_ctacteFlex
  loc_C70E0A: FStAdFunc var_DC
  loc_C70E0D: FLdPr var_DC
  loc_C70E10: LateIdCallLdVar
  loc_C70E1A: PopAd
  loc_C70E1C: FLdPr Me
  loc_C70E1F: MemLdFPR8 global_80
  loc_C70E22: FLdRfVar var_EC
  loc_C70E25: CStrVarTmp
  loc_C70E26: FStStrNoPop var_F0
  loc_C70E29: CR8Str
  loc_C70E2B: SubR4
  loc_C70E2C: FLdPr Me
  loc_C70E2F: MemStFPR8 global_80
  loc_C70E32: FFree1Str var_F0
  loc_C70E35: FFreeAd var_88 = ""
  loc_C70E3C: FFreeVar var_98 = ""
  loc_C70E43: Branch loc_C71055
  loc_C70E46: LitVarI4
  loc_C70E4E: PopAdLdVar
  loc_C70E4F: FLdPr Me
  loc_C70E52: VCallAd Control_ID_ctacteFlex
  loc_C70E55: FStAdFunc var_88
  loc_C70E58: FLdPr var_88
  loc_C70E5B: LateIdSt
  loc_C70E60: FFree1Ad var_88
  loc_C70E63: FLdPr Me
  loc_C70E66: VCallAd Control_ID_ctacteFlex
  loc_C70E69: FStAdFunc var_88
  loc_C70E6C: FLdPr var_88
  loc_C70E6F: LateIdLdVar var_98 DispID_10 0
  loc_C70E76: CI4Var
  loc_C70E78: CVarI4
  loc_C70E7C: PopAdLdVar
  loc_C70E7D: LitVarI4
  loc_C70E85: PopAdLdVar
  loc_C70E86: LitVarStr var_114, "Si"
  loc_C70E8B: PopAdLdVar
  loc_C70E8C: FLdPr Me
  loc_C70E8F: VCallAd Control_ID_ctacteFlex
  loc_C70E92: FStAdFunc var_DC
  loc_C70E95: FLdPr var_DC
  loc_C70E98: LateIdCallSt
  loc_C70EA0: FFreeAd var_88 = ""
  loc_C70EA7: FFree1Var var_98 = ""
  loc_C70EAA: FLdPr Me
  loc_C70EAD: MemLdI2 global_60
  loc_C70EB0: LitI2_Byte &HB
  loc_C70EB2: EqI2
  loc_C70EB3: BranchF loc_C70F1B
  loc_C70EB6: FLdPr Me
  loc_C70EB9: VCallAd Control_ID_ctacteFlex
  loc_C70EBC: FStAdFunc var_88
  loc_C70EBF: FLdPr var_88
  loc_C70EC2: LateIdLdVar var_98 DispID_10 0
  loc_C70EC9: CI4Var
  loc_C70ECB: CVarI4
  loc_C70ECF: PopAdLdVar
  loc_C70ED0: FLdPr Me
  loc_C70ED3: MemLdI2 global_60
  loc_C70ED6: CI4UI1
  loc_C70ED7: CVarI4
  loc_C70EDB: PopAdLdVar
  loc_C70EDC: FLdPr Me
  loc_C70EDF: VCallAd Control_ID_ctacteFlex
  loc_C70EE2: FStAdFunc var_DC
  loc_C70EE5: FLdPr var_DC
  loc_C70EE8: LateIdCallLdVar
  loc_C70EF2: PopAd
  loc_C70EF4: FLdPr Me
  loc_C70EF7: MemLdFPR8 global_64
  loc_C70EFA: FLdRfVar var_EC
  loc_C70EFD: CStrVarTmp
  loc_C70EFE: FStStrNoPop var_F0
  loc_C70F01: CR8Str
  loc_C70F03: AddR8
  loc_C70F04: FLdPr Me
  loc_C70F07: MemStFPR8 global_64
  loc_C70F0A: FFree1Str var_F0
  loc_C70F0D: FFreeAd var_88 = ""
  loc_C70F14: FFreeVar var_98 = ""
  loc_C70F1B: FLdPr Me
  loc_C70F1E: MemLdI2 global_60
  loc_C70F21: LitI2_Byte &HC
  loc_C70F23: EqI2
  loc_C70F24: BranchF loc_C70FE4
  loc_C70F27: FLdPr Me
  loc_C70F2A: VCallAd Control_ID_ctacteFlex
  loc_C70F2D: FStAdFunc var_88
  loc_C70F30: FLdPr var_88
  loc_C70F33: LateIdLdVar var_98 DispID_10 0
  loc_C70F3A: CI4Var
  loc_C70F3C: CVarI4
  loc_C70F40: PopAdLdVar
  loc_C70F41: FLdPr Me
  loc_C70F44: MemLdI2 global_60
  loc_C70F47: CI4UI1
  loc_C70F48: CVarI4
  loc_C70F4C: PopAdLdVar
  loc_C70F4D: FLdPr Me
  loc_C70F50: VCallAd Control_ID_ctacteFlex
  loc_C70F53: FStAdFunc var_DC
  loc_C70F56: FLdPr var_DC
  loc_C70F59: LateIdCallLdVar
  loc_C70F63: CStrVarTmp
  loc_C70F64: CVarStr var_100
  loc_C70F67: ImpAdCallI2 IsNumeric()
  loc_C70F6C: FFreeAd var_88 = ""
  loc_C70F73: FFreeVar var_98 = "": var_EC = ""
  loc_C70F7C: BranchF loc_C70FE4
  loc_C70F7F: FLdPr Me
  loc_C70F82: VCallAd Control_ID_ctacteFlex
  loc_C70F85: FStAdFunc var_88
  loc_C70F88: FLdPr var_88
  loc_C70F8B: LateIdLdVar var_98 DispID_10 0
  loc_C70F92: CI4Var
  loc_C70F94: CVarI4
  loc_C70F98: PopAdLdVar
  loc_C70F99: FLdPr Me
  loc_C70F9C: MemLdI2 global_60
  loc_C70F9F: CI4UI1
  loc_C70FA0: CVarI4
  loc_C70FA4: PopAdLdVar
  loc_C70FA5: FLdPr Me
  loc_C70FA8: VCallAd Control_ID_ctacteFlex
  loc_C70FAB: FStAdFunc var_DC
  loc_C70FAE: FLdPr var_DC
  loc_C70FB1: LateIdCallLdVar
  loc_C70FBB: PopAd
  loc_C70FBD: FLdPr Me
  loc_C70FC0: MemLdFPR8 global_72
  loc_C70FC3: FLdRfVar var_EC
  loc_C70FC6: CStrVarTmp
  loc_C70FC7: FStStrNoPop var_F0
  loc_C70FCA: CR8Str
  loc_C70FCC: AddR8
  loc_C70FCD: FLdPr Me
  loc_C70FD0: MemStFPR8 global_72
  loc_C70FD3: FFree1Str var_F0
  loc_C70FD6: FFreeAd var_88 = ""
  loc_C70FDD: FFreeVar var_98 = ""
  loc_C70FE4: FLdPr Me
  loc_C70FE7: MemLdI2 global_60
  loc_C70FEA: LitI2_Byte &HD
  loc_C70FEC: EqI2
  loc_C70FED: BranchF loc_C71055
  loc_C70FF0: FLdPr Me
  loc_C70FF3: VCallAd Control_ID_ctacteFlex
  loc_C70FF6: FStAdFunc var_88
  loc_C70FF9: FLdPr var_88
  loc_C70FFC: LateIdLdVar var_98 DispID_10 0
  loc_C71003: CI4Var
  loc_C71005: CVarI4
  loc_C71009: PopAdLdVar
  loc_C7100A: FLdPr Me
  loc_C7100D: MemLdI2 global_60
  loc_C71010: CI4UI1
  loc_C71011: CVarI4
  loc_C71015: PopAdLdVar
  loc_C71016: FLdPr Me
  loc_C71019: VCallAd Control_ID_ctacteFlex
  loc_C7101C: FStAdFunc var_DC
  loc_C7101F: FLdPr var_DC
  loc_C71022: LateIdCallLdVar
  loc_C7102C: PopAd
  loc_C7102E: FLdPr Me
  loc_C71031: MemLdFPR8 global_80
  loc_C71034: FLdRfVar var_EC
  loc_C71037: CStrVarTmp
  loc_C71038: FStStrNoPop var_F0
  loc_C7103B: CR8Str
  loc_C7103D: AddR8
  loc_C7103E: FLdPr Me
  loc_C71041: MemStFPR8 global_80
  loc_C71044: FFree1Str var_F0
  loc_C71047: FFreeAd var_88 = ""
  loc_C7104E: FFreeVar var_98 = ""
  loc_C71055: FLdPr Me
  loc_C71058: MemLdRfVar from_stack_1.global_60
  loc_C7105B: NextI2 var_158, loc_C70BF0
  loc_C71060: LitI4 1
  loc_C71065: LitI4 1
  loc_C7106A: LitVarStr var_B8, "0.00"
  loc_C7106F: FStVarCopyObj var_98
  loc_C71072: FLdRfVar var_98
  loc_C71075: FLdPr Me
  loc_C71078: MemLdRfVar from_stack_1.global_64
  loc_C7107B: CVarRef
  loc_C71080: FLdRfVar var_EC
  loc_C71083: ImpAdCallFPR4  = Format(, )
  loc_C71088: FLdRfVar var_EC
  loc_C7108B: CStrVarVal var_F0
  loc_C7108F: FLdPr Me
  loc_C71092: VCallAd Control_ID_txtDereSele
  loc_C71095: FStAdFunc var_88
  loc_C71098: FLdPr var_88
  loc_C7109B: Me.Text = from_stack_1
  loc_C710A0: FFree1Str var_F0
  loc_C710A3: FFree1Ad var_88
  loc_C710A6: FFreeVar var_98 = ""
  loc_C710AD: LitI4 1
  loc_C710B2: LitI4 1
  loc_C710B7: LitVarStr var_B8, "0.00"
  loc_C710BC: FStVarCopyObj var_98
  loc_C710BF: FLdRfVar var_98
  loc_C710C2: FLdPr Me
  loc_C710C5: MemLdRfVar from_stack_1.global_72
  loc_C710C8: CVarRef
  loc_C710CD: FLdRfVar var_EC
  loc_C710D0: ImpAdCallFPR4  = Format(, )
  loc_C710D5: FLdRfVar var_EC
  loc_C710D8: CStrVarVal var_F0
  loc_C710DC: FLdPr Me
  loc_C710DF: VCallAd Control_ID_txtRecaSele
  loc_C710E2: FStAdFunc var_88
  loc_C710E5: FLdPr var_88
  loc_C710E8: Me.Text = from_stack_1
  loc_C710ED: FFree1Str var_F0
  loc_C710F0: FFree1Ad var_88
  loc_C710F3: FFreeVar var_98 = ""
  loc_C710FA: LitI4 1
  loc_C710FF: LitI4 1
  loc_C71104: LitVarStr var_B8, "0.00"
  loc_C71109: FStVarCopyObj var_98
  loc_C7110C: FLdRfVar var_98
  loc_C7110F: FLdPr Me
  loc_C71112: MemLdRfVar from_stack_1.global_80
  loc_C71115: CVarRef
  loc_C7111A: FLdRfVar var_EC
  loc_C7111D: ImpAdCallFPR4  = Format(, )
  loc_C71122: FLdRfVar var_EC
  loc_C71125: CStrVarVal var_F0
  loc_C71129: FLdPr Me
  loc_C7112C: VCallAd Control_ID_txtTotaSele
  loc_C7112F: FStAdFunc var_88
  loc_C71132: FLdPr var_88
  loc_C71135: Me.Text = from_stack_1
  loc_C7113A: FFree1Str var_F0
  loc_C7113D: FFree1Ad var_88
  loc_C71140: FFreeVar var_98 = ""
  loc_C71147: ExitProcHresult
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) 'BABA20
  'Data Table: 510008
  loc_BAB3CC: ILdI2 KeyAscii
  loc_BAB3CF: LitI2_Byte &HD
  loc_BAB3D1: EqI2
  loc_BAB3D2: BranchF loc_BABA1D
  loc_BAB3D5: LitStr "Municipalidad de Guaymallén"
  loc_BAB3D8: LitStr "Municipalidad de Guaymallén"
  loc_BAB3DB: NeStr
  loc_BAB3DD: BranchF loc_BAB72C
  loc_BAB3E0: FLdPr Me
  loc_BAB3E3: VCallAd Control_ID_ctacteFlex
  loc_BAB3E6: FStAdFunc var_88
  loc_BAB3E9: FLdPr var_88
  loc_BAB3EC: LateIdLdVar var_98 DispID_4 0
  loc_BAB3F3: CI4Var
  loc_BAB3F5: LitI4 1
  loc_BAB3FA: GtI4
  loc_BAB3FB: FFree1Ad var_88
  loc_BAB3FE: FFree1Var var_98 = ""
  loc_BAB401: BranchF loc_BAB729
  loc_BAB404: FLdPr Me
  loc_BAB407: VCallAd Control_ID_ctacteFlex
  loc_BAB40A: FStAdFunc var_88
  loc_BAB40D: FLdPr var_88
  loc_BAB410: LateIdLdVar var_98 DispID_10 0
  loc_BAB417: CI4Var
  loc_BAB419: CVarI4
  loc_BAB41D: PopAdLdVar
  loc_BAB41E: LitVarI4
  loc_BAB426: PopAdLdVar
  loc_BAB427: FLdPr Me
  loc_BAB42A: VCallAd Control_ID_ctacteFlex
  loc_BAB42D: FStAdFunc var_DC
  loc_BAB430: FLdPr var_DC
  loc_BAB433: LateIdCallLdVar
  loc_BAB43D: CStrVarTmp
  loc_BAB43E: FStStrNoPop var_F0
  loc_BAB441: CI4Str
  loc_BAB442: LitI4 0
  loc_BAB447: EqI4
  loc_BAB448: FFree1Str var_F0
  loc_BAB44B: FFreeAd var_88 = ""
  loc_BAB452: FFreeVar var_98 = ""
  loc_BAB459: BranchF loc_BAB729
  loc_BAB45C: LitI2_Byte &HFF
  loc_BAB45E: FLdPr Me
  loc_BAB461: VCallAd Control_ID_ImpoCtctTxt
  loc_BAB464: FStAdFunc var_88
  loc_BAB467: FLdPr var_88
  loc_BAB46A: Me.Enabled = from_stack_1b
  loc_BAB46F: FFree1Ad var_88
  loc_BAB472: FLdPr Me
  loc_BAB475: VCallAd Control_ID_ctacteFlex
  loc_BAB478: FStAdFunc var_88
  loc_BAB47B: FLdPr var_88
  loc_BAB47E: LateIdLdVar var_98 DispID_10 0
  loc_BAB485: CI4Var
  loc_BAB487: CVarI4
  loc_BAB48B: PopAdLdVar
  loc_BAB48C: LitVarI4
  loc_BAB494: PopAdLdVar
  loc_BAB495: FLdPr Me
  loc_BAB498: VCallAd Control_ID_ctacteFlex
  loc_BAB49B: FStAdFunc var_DC
  loc_BAB49E: FLdPr var_DC
  loc_BAB4A1: LateIdCallLdVar
  loc_BAB4AB: CStrVarTmp
  loc_BAB4AC: FStStrNoPop var_F0
  loc_BAB4AF: FLdPr Me
  loc_BAB4B2: VCallAd Control_ID_ImpoCtctTxt
  loc_BAB4B5: FStAdFunc var_F4
  loc_BAB4B8: FLdPr var_F4
  loc_BAB4BB: Me.Text = from_stack_1
  loc_BAB4C0: FFree1Str var_F0
  loc_BAB4C3: FFreeAd var_88 = "": var_DC = ""
  loc_BAB4CC: FFreeVar var_98 = ""
  loc_BAB4D3: FLdPr Me
  loc_BAB4D6: VCallAd Control_ID_ctacteFlex
  loc_BAB4D9: FStAdFunc var_88
  loc_BAB4DC: FLdPr var_88
  loc_BAB4DF: LateIdLdVar var_98 DispID_10 0
  loc_BAB4E6: CI4Var
  loc_BAB4E8: CI2I4
  loc_BAB4E9: FLdPr Me
  loc_BAB4EC: MemStI2 global_90
  loc_BAB4EF: FFree1Ad var_88
  loc_BAB4F2: FFree1Var var_98 = ""
  loc_BAB4F5: FLdPr Me
  loc_BAB4F8: MemLdI2 global_88
  loc_BAB4FB: LitI2_Byte 0
  loc_BAB4FD: NeI2
  loc_BAB4FE: BranchF loc_BAB604
  loc_BAB501: FLdPr Me
  loc_BAB504: MemLdI2 global_88
  loc_BAB507: CI4UI1
  loc_BAB508: CVarI4
  loc_BAB50C: PopAdLdVar
  loc_BAB50D: FLdPr Me
  loc_BAB510: VCallAd Control_ID_ctacteFlex
  loc_BAB513: FStAdFunc var_88
  loc_BAB516: FLdPr var_88
  loc_BAB519: LateIdSt
  loc_BAB51E: FFree1Ad var_88
  loc_BAB521: LitI2_Byte 0
  loc_BAB523: FLdPr Me
  loc_BAB526: MemLdRfVar from_stack_1.global_60
  loc_BAB529: FLdPr Me
  loc_BAB52C: VCallAd Control_ID_ctacteFlex
  loc_BAB52F: FStAdFunc var_88
  loc_BAB532: FLdPr var_88
  loc_BAB535: LateIdLdVar var_98 DispID_5 0
  loc_BAB53C: CI4Var
  loc_BAB53E: LitI4 1
  loc_BAB543: SubI4
  loc_BAB544: CI2I4
  loc_BAB545: FFree1Ad var_88
  loc_BAB548: FFree1Var var_98 = ""
  loc_BAB54B: ForI2 var_F8
  loc_BAB551: FLdPr Me
  loc_BAB554: MemLdI2 global_60
  loc_BAB557: CI4UI1
  loc_BAB558: CVarI4
  loc_BAB55C: PopAdLdVar
  loc_BAB55D: FLdPr Me
  loc_BAB560: VCallAd Control_ID_ctacteFlex
  loc_BAB563: FStAdFunc var_88
  loc_BAB566: FLdPr var_88
  loc_BAB569: LateIdSt
  loc_BAB56E: FFree1Ad var_88
  loc_BAB571: FLdPr Me
  loc_BAB574: VCallAd Control_ID_ctacteFlex
  loc_BAB577: FStAdFunc var_88
  loc_BAB57A: FLdPr var_88
  loc_BAB57D: LateIdLdVar var_98 DispID_38 0
  loc_BAB584: CI4Var
  loc_BAB586: LitI4 &HFF
  loc_BAB58B: EqI4
  loc_BAB58C: FFree1Ad var_88
  loc_BAB58F: FFree1Var var_98 = ""
  loc_BAB592: BranchF loc_BAB5F9
  loc_BAB595: LitVarI4
  loc_BAB59D: PopAdLdVar
  loc_BAB59E: FLdPr Me
  loc_BAB5A1: VCallAd Control_ID_ctacteFlex
  loc_BAB5A4: FStAdFunc var_88
  loc_BAB5A7: FLdPr var_88
  loc_BAB5AA: LateIdSt
  loc_BAB5AF: FFree1Ad var_88
  loc_BAB5B2: FLdPr Me
  loc_BAB5B5: VCallAd Control_ID_ctacteFlex
  loc_BAB5B8: FStAdFunc var_88
  loc_BAB5BB: FLdPr var_88
  loc_BAB5BE: LateIdLdVar var_98 DispID_10 0
  loc_BAB5C5: CI4Var
  loc_BAB5C7: CVarI4
  loc_BAB5CB: PopAdLdVar
  loc_BAB5CC: LitVarI4
  loc_BAB5D4: PopAdLdVar
  loc_BAB5D5: LitVarStr var_108, "No"
  loc_BAB5DA: PopAdLdVar
  loc_BAB5DB: FLdPr Me
  loc_BAB5DE: VCallAd Control_ID_ctacteFlex
  loc_BAB5E1: FStAdFunc var_DC
  loc_BAB5E4: FLdPr var_DC
  loc_BAB5E7: LateIdCallSt
  loc_BAB5EF: FFreeAd var_88 = ""
  loc_BAB5F6: FFree1Var var_98 = ""
  loc_BAB5F9: FLdPr Me
  loc_BAB5FC: MemLdRfVar from_stack_1.global_60
  loc_BAB5FF: NextI2 var_F8, loc_BAB551
  loc_BAB604: FLdPr Me
  loc_BAB607: MemLdI2 global_90
  loc_BAB60A: CI4UI1
  loc_BAB60B: CVarI4
  loc_BAB60F: PopAdLdVar
  loc_BAB610: FLdPr Me
  loc_BAB613: VCallAd Control_ID_ctacteFlex
  loc_BAB616: FStAdFunc var_88
  loc_BAB619: FLdPr var_88
  loc_BAB61C: LateIdSt
  loc_BAB621: FFree1Ad var_88
  loc_BAB624: LitI2_Byte 0
  loc_BAB626: FLdPr Me
  loc_BAB629: MemLdRfVar from_stack_1.global_60
  loc_BAB62C: FLdPr Me
  loc_BAB62F: VCallAd Control_ID_ctacteFlex
  loc_BAB632: FStAdFunc var_88
  loc_BAB635: FLdPr var_88
  loc_BAB638: LateIdLdVar var_98 DispID_5 0
  loc_BAB63F: CI4Var
  loc_BAB641: LitI4 1
  loc_BAB646: SubI4
  loc_BAB647: CI2I4
  loc_BAB648: FFree1Ad var_88
  loc_BAB64B: FFree1Var var_98 = ""
  loc_BAB64E: ForI2 var_11C
  loc_BAB654: FLdPr Me
  loc_BAB657: MemLdI2 global_60
  loc_BAB65A: CI4UI1
  loc_BAB65B: CVarI4
  loc_BAB65F: PopAdLdVar
  loc_BAB660: FLdPr Me
  loc_BAB663: VCallAd Control_ID_ctacteFlex
  loc_BAB666: FStAdFunc var_88
  loc_BAB669: FLdPr var_88
  loc_BAB66C: LateIdSt
  loc_BAB671: FFree1Ad var_88
  loc_BAB674: FLdPr Me
  loc_BAB677: VCallAd Control_ID_ctacteFlex
  loc_BAB67A: FStAdFunc var_88
  loc_BAB67D: FLdPr var_88
  loc_BAB680: LateIdLdVar var_98 DispID_38 0
  loc_BAB687: CI4Var
  loc_BAB689: LitI4 &HFF
  loc_BAB68E: NeI4
  loc_BAB68F: FFree1Ad var_88
  loc_BAB692: FFree1Var var_98 = ""
  loc_BAB695: BranchF loc_BAB6FC
  loc_BAB698: LitVarI4
  loc_BAB6A0: PopAdLdVar
  loc_BAB6A1: FLdPr Me
  loc_BAB6A4: VCallAd Control_ID_ctacteFlex
  loc_BAB6A7: FStAdFunc var_88
  loc_BAB6AA: FLdPr var_88
  loc_BAB6AD: LateIdSt
  loc_BAB6B2: FFree1Ad var_88
  loc_BAB6B5: FLdPr Me
  loc_BAB6B8: VCallAd Control_ID_ctacteFlex
  loc_BAB6BB: FStAdFunc var_88
  loc_BAB6BE: FLdPr var_88
  loc_BAB6C1: LateIdLdVar var_98 DispID_10 0
  loc_BAB6C8: CI4Var
  loc_BAB6CA: CVarI4
  loc_BAB6CE: PopAdLdVar
  loc_BAB6CF: LitVarI4
  loc_BAB6D7: PopAdLdVar
  loc_BAB6D8: LitVarStr var_108, "SS"
  loc_BAB6DD: PopAdLdVar
  loc_BAB6DE: FLdPr Me
  loc_BAB6E1: VCallAd Control_ID_ctacteFlex
  loc_BAB6E4: FStAdFunc var_DC
  loc_BAB6E7: FLdPr var_DC
  loc_BAB6EA: LateIdCallSt
  loc_BAB6F2: FFreeAd var_88 = ""
  loc_BAB6F9: FFree1Var var_98 = ""
  loc_BAB6FC: FLdPr Me
  loc_BAB6FF: MemLdRfVar from_stack_1.global_60
  loc_BAB702: NextI2 var_11C, loc_BAB654
  loc_BAB707: FLdPr Me
  loc_BAB70A: VCallAd Control_ID_ctacteFlex
  loc_BAB70D: FStAdFunc var_88
  loc_BAB710: FLdPr var_88
  loc_BAB713: LateIdLdVar var_98 DispID_10 0
  loc_BAB71A: CI4Var
  loc_BAB71C: CI2I4
  loc_BAB71D: FLdPr Me
  loc_BAB720: MemStI2 global_88
  loc_BAB723: FFree1Ad var_88
  loc_BAB726: FFree1Var var_98 = ""
  loc_BAB729: Branch loc_BABA1D
  loc_BAB72C: FLdPr Me
  loc_BAB72F: VCallAd Control_ID_ctacteFlex
  loc_BAB732: FStAdFunc var_88
  loc_BAB735: FLdPr var_88
  loc_BAB738: LateIdLdVar var_98 DispID_4 0
  loc_BAB73F: CI4Var
  loc_BAB741: LitI4 1
  loc_BAB746: GtI4
  loc_BAB747: FFree1Ad var_88
  loc_BAB74A: FFree1Var var_98 = ""
  loc_BAB74D: BranchF loc_BABA1D
  loc_BAB750: LitI2_Byte &HFF
  loc_BAB752: FLdPr Me
  loc_BAB755: VCallAd Control_ID_ImpoCtctTxt
  loc_BAB758: FStAdFunc var_88
  loc_BAB75B: FLdPr var_88
  loc_BAB75E: Me.Enabled = from_stack_1b
  loc_BAB763: FFree1Ad var_88
  loc_BAB766: FLdPr Me
  loc_BAB769: VCallAd Control_ID_ctacteFlex
  loc_BAB76C: FStAdFunc var_88
  loc_BAB76F: FLdPr var_88
  loc_BAB772: LateIdLdVar var_98 DispID_10 0
  loc_BAB779: CI4Var
  loc_BAB77B: CVarI4
  loc_BAB77F: PopAdLdVar
  loc_BAB780: LitVarI4
  loc_BAB788: PopAdLdVar
  loc_BAB789: FLdPr Me
  loc_BAB78C: VCallAd Control_ID_ctacteFlex
  loc_BAB78F: FStAdFunc var_DC
  loc_BAB792: FLdPr var_DC
  loc_BAB795: LateIdCallLdVar
  loc_BAB79F: CStrVarTmp
  loc_BAB7A0: FStStrNoPop var_F0
  loc_BAB7A3: FLdPr Me
  loc_BAB7A6: VCallAd Control_ID_ImpoCtctTxt
  loc_BAB7A9: FStAdFunc var_F4
  loc_BAB7AC: FLdPr var_F4
  loc_BAB7AF: Me.Text = from_stack_1
  loc_BAB7B4: FFree1Str var_F0
  loc_BAB7B7: FFreeAd var_88 = "": var_DC = ""
  loc_BAB7C0: FFreeVar var_98 = ""
  loc_BAB7C7: FLdPr Me
  loc_BAB7CA: VCallAd Control_ID_ctacteFlex
  loc_BAB7CD: FStAdFunc var_88
  loc_BAB7D0: FLdPr var_88
  loc_BAB7D3: LateIdLdVar var_98 DispID_10 0
  loc_BAB7DA: CI4Var
  loc_BAB7DC: CI2I4
  loc_BAB7DD: FLdPr Me
  loc_BAB7E0: MemStI2 global_90
  loc_BAB7E3: FFree1Ad var_88
  loc_BAB7E6: FFree1Var var_98 = ""
  loc_BAB7E9: FLdPr Me
  loc_BAB7EC: MemLdI2 global_88
  loc_BAB7EF: LitI2_Byte 0
  loc_BAB7F1: NeI2
  loc_BAB7F2: BranchF loc_BAB8F8
  loc_BAB7F5: FLdPr Me
  loc_BAB7F8: MemLdI2 global_88
  loc_BAB7FB: CI4UI1
  loc_BAB7FC: CVarI4
  loc_BAB800: PopAdLdVar
  loc_BAB801: FLdPr Me
  loc_BAB804: VCallAd Control_ID_ctacteFlex
  loc_BAB807: FStAdFunc var_88
  loc_BAB80A: FLdPr var_88
  loc_BAB80D: LateIdSt
  loc_BAB812: FFree1Ad var_88
  loc_BAB815: LitI2_Byte 0
  loc_BAB817: FLdPr Me
  loc_BAB81A: MemLdRfVar from_stack_1.global_60
  loc_BAB81D: FLdPr Me
  loc_BAB820: VCallAd Control_ID_ctacteFlex
  loc_BAB823: FStAdFunc var_88
  loc_BAB826: FLdPr var_88
  loc_BAB829: LateIdLdVar var_98 DispID_5 0
  loc_BAB830: CI4Var
  loc_BAB832: LitI4 1
  loc_BAB837: SubI4
  loc_BAB838: CI2I4
  loc_BAB839: FFree1Ad var_88
  loc_BAB83C: FFree1Var var_98 = ""
  loc_BAB83F: ForI2 var_120
  loc_BAB845: FLdPr Me
  loc_BAB848: MemLdI2 global_60
  loc_BAB84B: CI4UI1
  loc_BAB84C: CVarI4
  loc_BAB850: PopAdLdVar
  loc_BAB851: FLdPr Me
  loc_BAB854: VCallAd Control_ID_ctacteFlex
  loc_BAB857: FStAdFunc var_88
  loc_BAB85A: FLdPr var_88
  loc_BAB85D: LateIdSt
  loc_BAB862: FFree1Ad var_88
  loc_BAB865: FLdPr Me
  loc_BAB868: VCallAd Control_ID_ctacteFlex
  loc_BAB86B: FStAdFunc var_88
  loc_BAB86E: FLdPr var_88
  loc_BAB871: LateIdLdVar var_98 DispID_38 0
  loc_BAB878: CI4Var
  loc_BAB87A: LitI4 &HFF
  loc_BAB87F: EqI4
  loc_BAB880: FFree1Ad var_88
  loc_BAB883: FFree1Var var_98 = ""
  loc_BAB886: BranchF loc_BAB8ED
  loc_BAB889: LitVarI4
  loc_BAB891: PopAdLdVar
  loc_BAB892: FLdPr Me
  loc_BAB895: VCallAd Control_ID_ctacteFlex
  loc_BAB898: FStAdFunc var_88
  loc_BAB89B: FLdPr var_88
  loc_BAB89E: LateIdSt
  loc_BAB8A3: FFree1Ad var_88
  loc_BAB8A6: FLdPr Me
  loc_BAB8A9: VCallAd Control_ID_ctacteFlex
  loc_BAB8AC: FStAdFunc var_88
  loc_BAB8AF: FLdPr var_88
  loc_BAB8B2: LateIdLdVar var_98 DispID_10 0
  loc_BAB8B9: CI4Var
  loc_BAB8BB: CVarI4
  loc_BAB8BF: PopAdLdVar
  loc_BAB8C0: LitVarI4
  loc_BAB8C8: PopAdLdVar
  loc_BAB8C9: LitVarStr var_108, "No"
  loc_BAB8CE: PopAdLdVar
  loc_BAB8CF: FLdPr Me
  loc_BAB8D2: VCallAd Control_ID_ctacteFlex
  loc_BAB8D5: FStAdFunc var_DC
  loc_BAB8D8: FLdPr var_DC
  loc_BAB8DB: LateIdCallSt
  loc_BAB8E3: FFreeAd var_88 = ""
  loc_BAB8EA: FFree1Var var_98 = ""
  loc_BAB8ED: FLdPr Me
  loc_BAB8F0: MemLdRfVar from_stack_1.global_60
  loc_BAB8F3: NextI2 var_120, loc_BAB845
  loc_BAB8F8: FLdPr Me
  loc_BAB8FB: MemLdI2 global_90
  loc_BAB8FE: CI4UI1
  loc_BAB8FF: CVarI4
  loc_BAB903: PopAdLdVar
  loc_BAB904: FLdPr Me
  loc_BAB907: VCallAd Control_ID_ctacteFlex
  loc_BAB90A: FStAdFunc var_88
  loc_BAB90D: FLdPr var_88
  loc_BAB910: LateIdSt
  loc_BAB915: FFree1Ad var_88
  loc_BAB918: LitI2_Byte 0
  loc_BAB91A: FLdPr Me
  loc_BAB91D: MemLdRfVar from_stack_1.global_60
  loc_BAB920: FLdPr Me
  loc_BAB923: VCallAd Control_ID_ctacteFlex
  loc_BAB926: FStAdFunc var_88
  loc_BAB929: FLdPr var_88
  loc_BAB92C: LateIdLdVar var_98 DispID_5 0
  loc_BAB933: CI4Var
  loc_BAB935: LitI4 1
  loc_BAB93A: SubI4
  loc_BAB93B: CI2I4
  loc_BAB93C: FFree1Ad var_88
  loc_BAB93F: FFree1Var var_98 = ""
  loc_BAB942: ForI2 var_124
  loc_BAB948: FLdPr Me
  loc_BAB94B: MemLdI2 global_60
  loc_BAB94E: CI4UI1
  loc_BAB94F: CVarI4
  loc_BAB953: PopAdLdVar
  loc_BAB954: FLdPr Me
  loc_BAB957: VCallAd Control_ID_ctacteFlex
  loc_BAB95A: FStAdFunc var_88
  loc_BAB95D: FLdPr var_88
  loc_BAB960: LateIdSt
  loc_BAB965: FFree1Ad var_88
  loc_BAB968: FLdPr Me
  loc_BAB96B: VCallAd Control_ID_ctacteFlex
  loc_BAB96E: FStAdFunc var_88
  loc_BAB971: FLdPr var_88
  loc_BAB974: LateIdLdVar var_98 DispID_38 0
  loc_BAB97B: CI4Var
  loc_BAB97D: LitI4 &HFF
  loc_BAB982: NeI4
  loc_BAB983: FFree1Ad var_88
  loc_BAB986: FFree1Var var_98 = ""
  loc_BAB989: BranchF loc_BAB9F0
  loc_BAB98C: LitVarI4
  loc_BAB994: PopAdLdVar
  loc_BAB995: FLdPr Me
  loc_BAB998: VCallAd Control_ID_ctacteFlex
  loc_BAB99B: FStAdFunc var_88
  loc_BAB99E: FLdPr var_88
  loc_BAB9A1: LateIdSt
  loc_BAB9A6: FFree1Ad var_88
  loc_BAB9A9: FLdPr Me
  loc_BAB9AC: VCallAd Control_ID_ctacteFlex
  loc_BAB9AF: FStAdFunc var_88
  loc_BAB9B2: FLdPr var_88
  loc_BAB9B5: LateIdLdVar var_98 DispID_10 0
  loc_BAB9BC: CI4Var
  loc_BAB9BE: CVarI4
  loc_BAB9C2: PopAdLdVar
  loc_BAB9C3: LitVarI4
  loc_BAB9CB: PopAdLdVar
  loc_BAB9CC: LitVarStr var_108, "SS"
  loc_BAB9D1: PopAdLdVar
  loc_BAB9D2: FLdPr Me
  loc_BAB9D5: VCallAd Control_ID_ctacteFlex
  loc_BAB9D8: FStAdFunc var_DC
  loc_BAB9DB: FLdPr var_DC
  loc_BAB9DE: LateIdCallSt
  loc_BAB9E6: FFreeAd var_88 = ""
  loc_BAB9ED: FFree1Var var_98 = ""
  loc_BAB9F0: FLdPr Me
  loc_BAB9F3: MemLdRfVar from_stack_1.global_60
  loc_BAB9F6: NextI2 var_124, loc_BAB948
  loc_BAB9FB: FLdPr Me
  loc_BAB9FE: VCallAd Control_ID_ctacteFlex
  loc_BABA01: FStAdFunc var_88
  loc_BABA04: FLdPr var_88
  loc_BABA07: LateIdLdVar var_98 DispID_10 0
  loc_BABA0E: CI4Var
  loc_BABA10: CI2I4
  loc_BABA11: FLdPr Me
  loc_BABA14: MemStI2 global_88
  loc_BABA17: FFree1Ad var_88
  loc_BABA1A: FFree1Var var_98 = ""
  loc_BABA1D: ExitProcHresult
  loc_BABA1E: ImpAdLdFPR4 MemVar_3000A
End Sub

Private Sub BuscarCmd_Click() 'C49734
  'Data Table: 510008
  loc_C48AD4: Call Proc_24_27_B18E68()
  loc_C48AD9: LitI2_Byte 0
  loc_C48ADB: FLdPr Me
  loc_C48ADE: VCallAd Control_ID_SeleTodoChk
  loc_C48AE1: FStAdFunc var_CC
  loc_C48AE4: FLdPr var_CC
  loc_C48AE7: Me.Value = from_stack_1
  loc_C48AEC: FFree1Ad var_CC
  loc_C48AEF: LitI2_Byte 0
  loc_C48AF1: CR8I2
  loc_C48AF2: FLdPr Me
  loc_C48AF5: MemStFPR8 global_64
  loc_C48AF8: LitI2_Byte 0
  loc_C48AFA: CR8I2
  loc_C48AFB: FLdPr Me
  loc_C48AFE: MemStFPR8 global_72
  loc_C48B01: LitI2_Byte 0
  loc_C48B03: CR8I2
  loc_C48B04: FLdPr Me
  loc_C48B07: MemStFPR8 global_80
  loc_C48B0A: LitVarStr var_DC, vbNullString
  loc_C48B0F: PopAdLdVar
  loc_C48B10: FLdPr Me
  loc_C48B13: VCallAd Control_ID_FechVencMsk
  loc_C48B16: FStAdFunc var_CC
  loc_C48B19: FLdPr var_CC
  loc_C48B1C: LateIdSt
  loc_C48B21: FFree1Ad var_CC
  loc_C48B24: FLdRfVar var_EE
  loc_C48B27: FLdPr Me
  loc_C48B2A: VCallAd Control_ID_OficinaCbo
  loc_C48B2D: FStAdFunc var_CC
  loc_C48B30: FLdPr var_CC
  loc_C48B33:  = Me.ListIndex
  loc_C48B38: FLdI2 var_EE
  loc_C48B3B: FStI2 var_F0
  loc_C48B3E: FFree1Ad var_CC
  loc_C48B41: FLdI2 var_F0
  loc_C48B44: LitI2_Byte 0
  loc_C48B46: EqI2
  loc_C48B47: BranchF loc_C48B55
  loc_C48B4A: LitI2_Byte 1
  loc_C48B4C: CUI1I2
  loc_C48B4E: ImpAdStUI1 MemVar_D93038
  loc_C48B52: Branch loc_C48B8E
  loc_C48B55: FLdI2 var_F0
  loc_C48B58: LitI2_Byte 1
  loc_C48B5A: EqI2
  loc_C48B5B: BranchF loc_C48B69
  loc_C48B5E: LitI2_Byte 2
  loc_C48B60: CUI1I2
  loc_C48B62: ImpAdStUI1 MemVar_D93038
  loc_C48B66: Branch loc_C48B8E
  loc_C48B69: FLdI2 var_F0
  loc_C48B6C: LitI2_Byte 2
  loc_C48B6E: EqI2
  loc_C48B6F: BranchF loc_C48B7D
  loc_C48B72: LitI2_Byte 3
  loc_C48B74: CUI1I2
  loc_C48B76: ImpAdStUI1 MemVar_D93038
  loc_C48B7A: Branch loc_C48B8E
  loc_C48B7D: FLdI2 var_F0
  loc_C48B80: LitI2_Byte 3
  loc_C48B82: EqI2
  loc_C48B83: BranchF loc_C48B8E
  loc_C48B86: LitI2_Byte 4
  loc_C48B88: CUI1I2
  loc_C48B8A: ImpAdStUI1 MemVar_D93038
  loc_C48B8E: LitI2_Byte 0
  loc_C48B90: CR8I2
  loc_C48B91: FLdPr Me
  loc_C48B94: MemStFPR8 global_96
  loc_C48B97: LitI2_Byte 0
  loc_C48B99: CR8I2
  loc_C48B9A: FLdPr Me
  loc_C48B9D: MemStFPR8 global_104
  loc_C48BA0: LitI2_Byte 0
  loc_C48BA2: CR8I2
  loc_C48BA3: FLdPr Me
  loc_C48BA6: MemStFPR8 global_112
  loc_C48BA9: LitI2_Byte 0
  loc_C48BAB: CR8I2
  loc_C48BAC: FLdPr Me
  loc_C48BAF: MemStFPR8 global_120
  loc_C48BB2: LitI2_Byte 0
  loc_C48BB4: CR8I2
  loc_C48BB5: FLdPr Me
  loc_C48BB8: MemStFPR8 global_128
  loc_C48BBB: LitI4 1
  loc_C48BC0: LitI4 1
  loc_C48BC5: LitVarStr var_EC, "0.00"
  loc_C48BCA: FStVarCopyObj var_100
  loc_C48BCD: FLdRfVar var_100
  loc_C48BD0: FLdPr Me
  loc_C48BD3: MemLdRfVar from_stack_1.global_96
  loc_C48BD6: CVarRef
  loc_C48BDB: FLdRfVar var_110
  loc_C48BDE: ImpAdCallFPR4  = Format(, )
  loc_C48BE3: FLdRfVar var_110
  loc_C48BE6: CStrVarVal var_114
  loc_C48BEA: FLdPr Me
  loc_C48BED: VCallAd Control_ID_txtTotaDere
  loc_C48BF0: FStAdFunc var_CC
  loc_C48BF3: FLdPr var_CC
  loc_C48BF6: Me.Text = from_stack_1
  loc_C48BFB: FFree1Str var_114
  loc_C48BFE: FFree1Ad var_CC
  loc_C48C01: FFreeVar var_100 = ""
  loc_C48C08: LitI4 1
  loc_C48C0D: LitI4 1
  loc_C48C12: LitVarStr var_EC, "0.00"
  loc_C48C17: FStVarCopyObj var_100
  loc_C48C1A: FLdRfVar var_100
  loc_C48C1D: FLdPr Me
  loc_C48C20: MemLdRfVar from_stack_1.global_104
  loc_C48C23: CVarRef
  loc_C48C28: FLdRfVar var_110
  loc_C48C2B: ImpAdCallFPR4  = Format(, )
  loc_C48C30: FLdRfVar var_110
  loc_C48C33: CStrVarVal var_114
  loc_C48C37: FLdPr Me
  loc_C48C3A: VCallAd Control_ID_txtTotaReca
  loc_C48C3D: FStAdFunc var_CC
  loc_C48C40: FLdPr var_CC
  loc_C48C43: Me.Text = from_stack_1
  loc_C48C48: FFree1Str var_114
  loc_C48C4B: FFree1Ad var_CC
  loc_C48C4E: FFreeVar var_100 = ""
  loc_C48C55: LitI4 1
  loc_C48C5A: LitI4 1
  loc_C48C5F: LitVarStr var_EC, "0.00"
  loc_C48C64: FStVarCopyObj var_100
  loc_C48C67: FLdRfVar var_100
  loc_C48C6A: FLdPr Me
  loc_C48C6D: MemLdRfVar from_stack_1.global_112
  loc_C48C70: CVarRef
  loc_C48C75: FLdRfVar var_110
  loc_C48C78: ImpAdCallFPR4  = Format(, )
  loc_C48C7D: FLdRfVar var_110
  loc_C48C80: CStrVarVal var_114
  loc_C48C84: FLdPr Me
  loc_C48C87: VCallAd Control_ID_txtTotaApre
  loc_C48C8A: FStAdFunc var_CC
  loc_C48C8D: FLdPr var_CC
  loc_C48C90: Me.Text = from_stack_1
  loc_C48C95: FFree1Str var_114
  loc_C48C98: FFree1Ad var_CC
  loc_C48C9B: FFreeVar var_100 = ""
  loc_C48CA2: LitI4 2
  loc_C48CA7: FLdPr Me
  loc_C48CAA: MemLdRfVar from_stack_1.global_96
  loc_C48CAD: CVarRef
  loc_C48CB2: FLdRfVar var_100
  loc_C48CB5: ImpAdCallFPR4  = Round(, )
  loc_C48CBA: FLdRfVar var_100
  loc_C48CBD: LitI4 2
  loc_C48CC2: FLdPr Me
  loc_C48CC5: MemLdRfVar from_stack_1.global_104
  loc_C48CC8: CVarRef
  loc_C48CCD: FLdRfVar var_110
  loc_C48CD0: ImpAdCallFPR4  = Round(, )
  loc_C48CD5: FLdRfVar var_110
  loc_C48CD8: AddVar var_124
  loc_C48CDC: LitI4 2
  loc_C48CE1: FLdPr Me
  loc_C48CE4: MemLdRfVar from_stack_1.global_112
  loc_C48CE7: CVarRef
  loc_C48CEC: FLdRfVar var_144
  loc_C48CEF: ImpAdCallFPR4  = Round(, )
  loc_C48CF4: FLdRfVar var_144
  loc_C48CF7: AddVar var_154
  loc_C48CFB: CR4Var
  loc_C48CFC: FLdPr Me
  loc_C48CFF: MemStFPR8 global_120
  loc_C48D02: FFreeVar var_100 = "": var_110 = "": var_124 = "": var_144 = ""
  loc_C48D0F: LitI4 1
  loc_C48D14: LitI4 1
  loc_C48D19: LitVarStr var_EC, "0.00"
  loc_C48D1E: FStVarCopyObj var_100
  loc_C48D21: FLdRfVar var_100
  loc_C48D24: FLdPr Me
  loc_C48D27: MemLdRfVar from_stack_1.global_120
  loc_C48D2A: CVarRef
  loc_C48D2F: FLdRfVar var_110
  loc_C48D32: ImpAdCallFPR4  = Format(, )
  loc_C48D37: FLdRfVar var_110
  loc_C48D3A: CStrVarVal var_114
  loc_C48D3E: FLdPr Me
  loc_C48D41: VCallAd Control_ID_txtTotal
  loc_C48D44: FStAdFunc var_CC
  loc_C48D47: FLdPr var_CC
  loc_C48D4A: Me.Text = from_stack_1
  loc_C48D4F: FFree1Str var_114
  loc_C48D52: FFree1Ad var_CC
  loc_C48D55: FFreeVar var_100 = ""
  loc_C48D5C: LitI4 1
  loc_C48D61: LitI4 1
  loc_C48D66: LitVarStr var_EC, "0.00"
  loc_C48D6B: FStVarCopyObj var_100
  loc_C48D6E: FLdRfVar var_100
  loc_C48D71: FLdPr Me
  loc_C48D74: MemLdRfVar from_stack_1.global_128
  loc_C48D77: CVarRef
  loc_C48D7C: FLdRfVar var_110
  loc_C48D7F: ImpAdCallFPR4  = Format(, )
  loc_C48D84: FLdRfVar var_110
  loc_C48D87: CStrVarVal var_114
  loc_C48D8B: FLdPr Me
  loc_C48D8E: VCallAd Control_ID_txtTotaSele
  loc_C48D91: FStAdFunc var_CC
  loc_C48D94: FLdPr var_CC
  loc_C48D97: Me.Text = from_stack_1
  loc_C48D9C: FFree1Str var_114
  loc_C48D9F: FFree1Ad var_CC
  loc_C48DA2: FFreeVar var_100 = ""
  loc_C48DA9: LitStr "Municipalidad de Guaymallén"
  loc_C48DAC: LitStr "Municipalidad de Guaymallén"
  loc_C48DAF: EqStr
  loc_C48DB1: BranchF loc_C48EA1
  loc_C48DB4: FLdPr Me
  loc_C48DB7: VCallAd Control_ID_FechVencMsk
  loc_C48DBA: FStAdFunc var_168
  loc_C48DBD: FLdPr var_168
  loc_C48DC0: LateIdLdVar var_100 DispID_15 0
  loc_C48DC7: PopAd
  loc_C48DC9: LitStr "CALL nDeuda`('"
  loc_C48DCC: ImpAdLdUI1
  loc_C48DD0: CStrI2
  loc_C48DD2: FStStrNoPop var_114
  loc_C48DD5: ConcatStr
  loc_C48DD6: FStStrNoPop var_158
  loc_C48DD9: LitStr "', '"
  loc_C48DDC: ConcatStr
  loc_C48DDD: FStStrNoPop var_160
  loc_C48DE0: FLdRfVar var_15C
  loc_C48DE3: FLdPr Me
  loc_C48DE6: VCallAd Control_ID_NumeCtaTxt
  loc_C48DE9: FStAdFunc var_CC
  loc_C48DEC: FLdPr var_CC
  loc_C48DEF:  = Me.Text
  loc_C48DF4: ILdRf var_15C
  loc_C48DF7: ConcatStr
  loc_C48DF8: FStStrNoPop var_164
  loc_C48DFB: LitStr "', '"
  loc_C48DFE: ConcatStr
  loc_C48DFF: CVarStr var_154
  loc_C48E02: LitI4 1
  loc_C48E07: LitI4 1
  loc_C48E0C: LitVarStr var_DC, "yyyy-mm-dd"
  loc_C48E11: FStVarCopyObj var_124
  loc_C48E14: FLdRfVar var_124
  loc_C48E17: FLdRfVar var_100
  loc_C48E1A: CStrVarTmp
  loc_C48E1B: CVarStr var_110
  loc_C48E1E: FLdRfVar var_144
  loc_C48E21: ImpAdCallFPR4  = Format(, )
  loc_C48E26: FLdRfVar var_144
  loc_C48E29: ConcatVar var_178
  loc_C48E2D: LitVarStr var_EC, "')"
  loc_C48E32: ConcatVar var_188
  loc_C48E36: CStrVarVal var_18C
  loc_C48E3A: FLdPr Me
  loc_C48E3D: MemLdRfVar from_stack_1.global_52
  loc_C48E40: NewIfNullPr clsctacte
  loc_C48E43: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48E48: FFreeStr var_114 = "": var_158 = "": var_160 = "": var_15C = "": var_164 = ""
  loc_C48E57: FFreeAd var_CC = ""
  loc_C48E5E: FFreeVar var_100 = "": var_110 = "": var_124 = "": var_154 = "": var_144 = "": var_178 = ""
  loc_C48E6F: LitStr "SELECT * FROM tmp_ctacteboleto "
  loc_C48E72: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C48E75: ConcatStr
  loc_C48E76: FStStrNoPop var_114
  loc_C48E79: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C48E7C: ConcatStr
  loc_C48E7D: FStStrNoPop var_158
  loc_C48E80: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C48E83: ConcatStr
  loc_C48E84: FStStrNoPop var_15C
  loc_C48E87: FLdPr Me
  loc_C48E8A: MemLdRfVar from_stack_1.global_52
  loc_C48E8D: NewIfNullPr clsctacte
  loc_C48E90: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48E95: FFreeStr var_114 = "": var_158 = ""
  loc_C48E9E: Branch loc_C48F15
  loc_C48EA1: FLdRfVar var_114
  loc_C48EA4: FLdPr Me
  loc_C48EA7: VCallAd Control_ID_NumeCtaTxt
  loc_C48EAA: FStAdFunc var_CC
  loc_C48EAD: FLdPr var_CC
  loc_C48EB0:  = Me.Text
  loc_C48EB5: FLdPr Me
  loc_C48EB8: VCallAd Control_ID_FechVencMsk
  loc_C48EBB: FStAdFunc var_168
  loc_C48EBE: FLdPr var_168
  loc_C48EC1: LateIdLdVar var_100 DispID_22 0
  loc_C48EC8: PopAd
  loc_C48ECA: LitStr "tmp_ctactecredito"
  loc_C48ECD: FLdRfVar var_100
  loc_C48ED0: CStrVarTmp
  loc_C48ED1: FStStrNoPop var_158
  loc_C48ED4: ILdRf var_114
  loc_C48ED7: ImpAdLdUI1
  loc_C48EDB: FLdPr Me
  loc_C48EDE: MemLdRfVar from_stack_1.global_52
  loc_C48EE1: NewIfNullPr clsctacte
  loc_C48EE4: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C48EE9: FFreeStr var_114 = ""
  loc_C48EF0: FFreeAd var_CC = ""
  loc_C48EF7: FFree1Var var_100 = ""
  loc_C48EFA: LitStr "SELECT * FROM tmp_ctactecredito LEFT JOIN tipomovi ON tmp_ctactecredito.CodiTimo = tipomovi.CodiTimo"
  loc_C48EFD: LitStr " ORDER BY tmp_ctactecredito.CodiOfic, tmp_ctactecredito.CuenCtct, tmp_ctactecredito.PeriCtct desc, tmp_ctactecredito.BimeCtct desc, tmp_ctactecredito.NumeCtct, tmp_ctactecredito.MoviCtct"
  loc_C48F00: ConcatStr
  loc_C48F01: FStStrNoPop var_114
  loc_C48F04: FLdPr Me
  loc_C48F07: MemLdRfVar from_stack_1.global_52
  loc_C48F0A: NewIfNullPr clsctacte
  loc_C48F0D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C48F12: FFree1Str var_114
  loc_C48F15: FLdRfVar var_190
  loc_C48F18: FLdPr Me
  loc_C48F1B: MemLdRfVar from_stack_1.global_52
  loc_C48F1E: NewIfNullPr clsctacte
  loc_C48F21: from_stack_1 = clsctacte.RecordCount
  loc_C48F26: ILdRf var_190
  loc_C48F29: LitI4 0
  loc_C48F2E: GtI4
  loc_C48F2F: BranchF loc_C4971A
  loc_C48F32: FLdPr Me
  loc_C48F35: MemLdRfVar from_stack_1.global_52
  loc_C48F38: NewIfNullPr clsctacte
  loc_C48F3B: Call clsctacte.MoveFirst()
  loc_C48F40: FLdRfVar var_EE
  loc_C48F43: FLdPr Me
  loc_C48F46: MemLdRfVar from_stack_1.global_52
  loc_C48F49: NewIfNullPr clsctacte
  loc_C48F4C: from_stack_1 = clsctacte.EOF
  loc_C48F51: FLdI2 var_EE
  loc_C48F54: NotI4
  loc_C48F55: BranchF loc_C49579
  loc_C48F58: FLdRfVar var_198
  loc_C48F5B: FLdPr Me
  loc_C48F5E: MemLdRfVar from_stack_1.global_52
  loc_C48F61: NewIfNullPr clsctacte
  loc_C48F64: from_stack_1 = clsctacte.SaldCtct
  loc_C48F69: FLdFPR8 var_198
  loc_C48F6C: FnCDblR8
  loc_C48F6E: LitI2_Byte 0
  loc_C48F70: CR8I2
  loc_C48F71: GtR4
  loc_C48F72: BranchF loc_C49568
  loc_C48F75: LitI2_Byte 0
  loc_C48F77: CR8I2
  loc_C48F78: FLdPr Me
  loc_C48F7B: MemStFPR8 global_112
  loc_C48F7E: FLdRfVar var_198
  loc_C48F81: FLdPr Me
  loc_C48F84: MemLdRfVar from_stack_1.global_52
  loc_C48F87: NewIfNullPr clsctacte
  loc_C48F8A: from_stack_1 = clsctacte.SaldCtct
  loc_C48F8F: LitI4 2
  loc_C48F94: FLdPr Me
  loc_C48F97: MemLdFPR8 global_96
  loc_C48F9A: FnCDblR8
  loc_C48F9C: FLdFPR8 var_198
  loc_C48F9F: FnCDblR8
  loc_C48FA1: AddR8
  loc_C48FA2: CVarR8
  loc_C48FA6: FLdRfVar var_110
  loc_C48FA9: ImpAdCallFPR4  = Round(, )
  loc_C48FAE: FLdRfVar var_110
  loc_C48FB1: CR4Var
  loc_C48FB2: FLdPr Me
  loc_C48FB5: MemStFPR8 global_96
  loc_C48FB8: FFreeVar var_100 = ""
  loc_C48FBF: FLdRfVar var_198
  loc_C48FC2: FLdPr Me
  loc_C48FC5: MemLdRfVar from_stack_1.global_52
  loc_C48FC8: NewIfNullPr clsctacte
  loc_C48FCB: from_stack_1 = clsctacte.RecaCtct
  loc_C48FD0: LitI4 2
  loc_C48FD5: FLdPr Me
  loc_C48FD8: MemLdFPR8 global_104
  loc_C48FDB: FnCDblR8
  loc_C48FDD: FLdFPR8 var_198
  loc_C48FE0: FnCDblR8
  loc_C48FE2: AddR8
  loc_C48FE3: CVarR8
  loc_C48FE7: FLdRfVar var_110
  loc_C48FEA: ImpAdCallFPR4  = Round(, )
  loc_C48FEF: FLdRfVar var_110
  loc_C48FF2: CR4Var
  loc_C48FF3: FLdPr Me
  loc_C48FF6: MemStFPR8 global_104
  loc_C48FF9: FFreeVar var_100 = ""
  loc_C49000: FLdRfVar var_EE
  loc_C49003: FLdPr Me
  loc_C49006: MemLdRfVar from_stack_1.global_52
  loc_C49009: NewIfNullPr clsctacte
  loc_C4900C: from_stack_1 = clsctacte.BimeCtct
  loc_C49011: LitI4 1
  loc_C49016: LitI4 1
  loc_C4901B: LitVarStr var_EC, "00"
  loc_C49020: FStVarCopyObj var_110
  loc_C49023: FLdRfVar var_110
  loc_C49026: FLdI2 var_EE
  loc_C49029: CVarI2 var_100
  loc_C4902C: FLdRfVar var_124
  loc_C4902F: ImpAdCallFPR4  = Format(, )
  loc_C49034: FLdRfVar var_124
  loc_C49037: LitVarStr var_134, "/"
  loc_C4903C: ConcatVar var_144
  loc_C49040: FLdRfVar var_19A
  loc_C49043: FLdPr Me
  loc_C49046: MemLdRfVar from_stack_1.global_52
  loc_C49049: NewIfNullPr clsctacte
  loc_C4904C: from_stack_1 = clsctacte.PeriCtct
  loc_C49051: FLdI2 var_19A
  loc_C49054: CVarI2 var_1AC
  loc_C49057: ConcatVar var_154
  loc_C4905B: CStrVarTmp
  loc_C4905C: FLdRfVar var_98
  loc_C4905F: StFixedStrFree
  loc_C49063: FFreeVar var_100 = "": var_110 = "": var_124 = "": var_144 = ""
  loc_C49070: FLdRfVar var_190
  loc_C49073: FLdPr Me
  loc_C49076: MemLdRfVar from_stack_1.global_52
  loc_C49079: NewIfNullPr clsctacte
  loc_C4907C: from_stack_1 = clsctacte.NumeBole
  loc_C49081: LitI4 1
  loc_C49086: LitI4 1
  loc_C4908B: LitVarStr var_EC, "#######0"
  loc_C49090: FStVarCopyObj var_110
  loc_C49093: FLdRfVar var_110
  loc_C49096: ILdRf var_190
  loc_C49099: CVarI4
  loc_C4909D: FLdRfVar var_124
  loc_C490A0: ImpAdCallFPR4  = Format(, )
  loc_C490A5: FLdRfVar var_124
  loc_C490A8: LitVarStr var_134, "-"
  loc_C490AD: ConcatVar var_144
  loc_C490B1: FLdRfVar var_EE
  loc_C490B4: FLdPr Me
  loc_C490B7: MemLdRfVar from_stack_1.global_52
  loc_C490BA: NewIfNullPr clsctacte
  loc_C490BD: from_stack_1 = clsctacte.PeriBole
  loc_C490C2: FLdI2 var_EE
  loc_C490C5: CVarI2 var_1AC
  loc_C490C8: ConcatVar var_154
  loc_C490CC: CStrVarTmp
  loc_C490CD: FLdRfVar var_B2
  loc_C490D0: StFixedStrFree
  loc_C490D4: FFreeVar var_100 = "": var_110 = "": var_124 = "": var_144 = ""
  loc_C490E1: FLdRfVar var_198
  loc_C490E4: FLdPr Me
  loc_C490E7: MemLdRfVar from_stack_1.global_52
  loc_C490EA: NewIfNullPr clsctacte
  loc_C490ED: from_stack_1 = clsctacte.SaldCtct
  loc_C490F2: FLdFPR8 var_198
  loc_C490F5: FnCDblR8
  loc_C490F7: LitI2_Byte 0
  loc_C490F9: CR8I2
  loc_C490FA: NeR8
  loc_C490FB: BranchF loc_C49146
  loc_C490FE: FLdRfVar var_198
  loc_C49101: FLdPr Me
  loc_C49104: MemLdRfVar from_stack_1.global_52
  loc_C49107: NewIfNullPr clsctacte
  loc_C4910A: from_stack_1 = clsctacte.SaldCtct
  loc_C4910F: LitI4 1
  loc_C49114: LitI4 1
  loc_C49119: LitVarStr var_EC, "###,###,##0.00"
  loc_C4911E: FStVarCopyObj var_110
  loc_C49121: FLdRfVar var_110
  loc_C49124: FLdFPR8 var_198
  loc_C49127: CVarR8
  loc_C4912B: FLdRfVar var_124
  loc_C4912E: ImpAdCallFPR4  = Format(, )
  loc_C49133: FLdRfVar var_124
  loc_C49136: CStrVarTmp
  loc_C49137: FStStr var_BC
  loc_C4913A: FFreeVar var_100 = "": var_110 = ""
  loc_C49143: Branch loc_C4914C
  loc_C49146: LitStr vbNullString
  loc_C49149: FStStrCopy var_BC
  loc_C4914C: LitStr vbNullString
  loc_C4914F: FStStrCopy var_C0
  loc_C49152: FLdRfVar var_198
  loc_C49155: FLdPr Me
  loc_C49158: MemLdRfVar from_stack_1.global_52
  loc_C4915B: NewIfNullPr clsctacte
  loc_C4915E: from_stack_1 = clsctacte.RecaCtct
  loc_C49163: FLdFPR8 var_198
  loc_C49166: FnCDblR8
  loc_C49168: LitI2_Byte 0
  loc_C4916A: CR8I2
  loc_C4916B: NeR8
  loc_C4916C: BranchF loc_C491B7
  loc_C4916F: FLdRfVar var_198
  loc_C49172: FLdPr Me
  loc_C49175: MemLdRfVar from_stack_1.global_52
  loc_C49178: NewIfNullPr clsctacte
  loc_C4917B: from_stack_1 = clsctacte.RecaCtct
  loc_C49180: LitI4 1
  loc_C49185: LitI4 1
  loc_C4918A: LitVarStr var_EC, "###,###,##0.00"
  loc_C4918F: FStVarCopyObj var_110
  loc_C49192: FLdRfVar var_110
  loc_C49195: FLdFPR8 var_198
  loc_C49198: CVarR8
  loc_C4919C: FLdRfVar var_124
  loc_C4919F: ImpAdCallFPR4  = Format(, )
  loc_C491A4: FLdRfVar var_124
  loc_C491A7: CStrVarTmp
  loc_C491A8: FStStr var_C4
  loc_C491AB: FFreeVar var_100 = "": var_110 = ""
  loc_C491B4: Branch loc_C491BD
  loc_C491B7: LitStr vbNullString
  loc_C491BA: FStStrCopy var_C4
  loc_C491BD: FLdRfVar var_198
  loc_C491C0: FLdPr Me
  loc_C491C3: MemLdRfVar from_stack_1.global_52
  loc_C491C6: NewIfNullPr clsctacte
  loc_C491C9: from_stack_1 = clsctacte.SaldCtct
  loc_C491CE: FLdRfVar var_1B4
  loc_C491D1: FLdPr Me
  loc_C491D4: MemLdRfVar from_stack_1.global_52
  loc_C491D7: NewIfNullPr clsctacte
  loc_C491DA: from_stack_1 = clsctacte.RecaCtct
  loc_C491DF: LitI4 2
  loc_C491E4: FLdFPR8 var_198
  loc_C491E7: FnCDblR8
  loc_C491E9: FLdFPR8 var_1B4
  loc_C491EC: FnCDblR8
  loc_C491EE: AddR8
  loc_C491EF: CVarR8
  loc_C491F3: FLdRfVar var_110
  loc_C491F6: ImpAdCallFPR4  = Round(, )
  loc_C491FB: LitI4 1
  loc_C49200: LitI4 1
  loc_C49205: LitVarStr var_EC, "0.00"
  loc_C4920A: FStVarCopyObj var_124
  loc_C4920D: FLdRfVar var_124
  loc_C49210: FLdRfVar var_110
  loc_C49213: FLdRfVar var_144
  loc_C49216: ImpAdCallFPR4  = Format(, )
  loc_C4921B: FLdRfVar var_144
  loc_C4921E: CStrVarTmp
  loc_C4921F: FStStr var_C8
  loc_C49222: FFreeVar var_100 = "": var_110 = "": var_124 = ""
  loc_C4922D: FLdRfVar var_EE
  loc_C49230: FLdPr Me
  loc_C49233: MemLdRfVar from_stack_1.global_52
  loc_C49236: NewIfNullPr clsctacte
  loc_C49239: from_stack_1 = clsctacte.CodiOfic
  loc_C4923E: FLdI2 var_EE
  loc_C49241: CVarI2 var_DC
  loc_C49244: LitI4 9
  loc_C49249: FLdRfVar var_100
  loc_C4924C: ImpAdCallFPR4  = Chr()
  loc_C49251: FLdRfVar var_100
  loc_C49254: ConcatVar var_110
  loc_C49258: FLdRfVar var_114
  loc_C4925B: FLdPr Me
  loc_C4925E: MemLdRfVar from_stack_1.global_52
  loc_C49261: NewIfNullPr clsctacte
  loc_C49264: from_stack_1 = clsctacte.CuenCtct
  loc_C49269: FLdZeroAd var_114
  loc_C4926C: CVarStr var_124
  loc_C4926F: ConcatVar var_144
  loc_C49273: LitI4 9
  loc_C49278: FLdRfVar var_154
  loc_C4927B: ImpAdCallFPR4  = Chr()
  loc_C49280: FLdRfVar var_154
  loc_C49283: ConcatVar var_178
  loc_C49287: FLdRfVar var_98
  loc_C4928A: LdFixedStr
  loc_C4928D: CVarStr var_188
  loc_C49290: ConcatVar var_1C4
  loc_C49294: LitI4 9
  loc_C49299: FLdRfVar var_1D4
  loc_C4929C: ImpAdCallFPR4  = Chr()
  loc_C492A1: FLdRfVar var_1D4
  loc_C492A4: ConcatVar var_1E4
  loc_C492A8: FLdRfVar var_B2
  loc_C492AB: LdFixedStr
  loc_C492AE: CVarStr var_1F4
  loc_C492B1: ConcatVar var_204
  loc_C492B5: LitI4 9
  loc_C492BA: FLdRfVar var_214
  loc_C492BD: ImpAdCallFPR4  = Chr()
  loc_C492C2: FLdRfVar var_214
  loc_C492C5: ConcatVar var_224
  loc_C492C9: FLdRfVar var_158
  loc_C492CC: FLdPr Me
  loc_C492CF: MemLdRfVar from_stack_1.global_52
  loc_C492D2: NewIfNullPr clsctacte
  loc_C492D5: from_stack_1 = clsctacte.FealCtct
  loc_C492DA: FLdZeroAd var_158
  loc_C492DD: CVarStr var_234
  loc_C492E0: ConcatVar var_244
  loc_C492E4: LitI4 9
  loc_C492E9: FLdRfVar var_254
  loc_C492EC: ImpAdCallFPR4  = Chr()
  loc_C492F1: FLdRfVar var_254
  loc_C492F4: ConcatVar var_264
  loc_C492F8: FLdRfVar var_274
  loc_C492FB: FLdPr Me
  loc_C492FE: MemLdRfVar from_stack_1.global_52
  loc_C49301: NewIfNullPr clsctacte
  loc_C49304: from_stack_1 = clsctacte.FeveCtct
  loc_C49309: FLdRfVar var_274
  loc_C4930C: ConcatVar var_284
  loc_C49310: LitI4 9
  loc_C49315: FLdRfVar var_294
  loc_C49318: ImpAdCallFPR4  = Chr()
  loc_C4931D: FLdRfVar var_294
  loc_C49320: ConcatVar var_2A4
  loc_C49324: FLdRfVar var_15C
  loc_C49327: FLdPr Me
  loc_C4932A: MemLdRfVar from_stack_1.global_52
  loc_C4932D: NewIfNullPr clsctacte
  loc_C49330: from_stack_1 = clsctacte.CodiConc
  loc_C49335: FLdZeroAd var_15C
  loc_C49338: CVarStr var_2B4
  loc_C4933B: ConcatVar var_2C4
  loc_C4933F: LitI4 9
  loc_C49344: FLdRfVar var_2D4
  loc_C49347: ImpAdCallFPR4  = Chr()
  loc_C4934C: FLdRfVar var_2D4
  loc_C4934F: ConcatVar var_2E4
  loc_C49353: FLdRfVar var_190
  loc_C49356: FLdPr Me
  loc_C49359: MemLdRfVar from_stack_1.global_52
  loc_C4935C: NewIfNullPr clsctacte
  loc_C4935F: from_stack_1 = clsctacte.CodiFapa
  loc_C49364: ILdRf var_190
  loc_C49367: CVarI4
  loc_C4936B: ConcatVar var_2F4
  loc_C4936F: LitI4 9
  loc_C49374: FLdRfVar var_304
  loc_C49377: ImpAdCallFPR4  = Chr()
  loc_C4937C: FLdRfVar var_304
  loc_C4937F: ConcatVar var_314
  loc_C49383: FLdRfVar var_318
  loc_C49386: FLdPr Me
  loc_C49389: MemLdRfVar from_stack_1.global_52
  loc_C4938C: NewIfNullPr clsctacte
  loc_C4938F: from_stack_1 = clsctacte.NumeApre
  loc_C49394: ILdRf var_318
  loc_C49397: CVarI4
  loc_C4939B: ConcatVar var_328
  loc_C4939F: LitI4 9
  loc_C493A4: FLdRfVar var_338
  loc_C493A7: ImpAdCallFPR4  = Chr()
  loc_C493AC: FLdRfVar var_338
  loc_C493AF: ConcatVar var_348
  loc_C493B3: FLdRfVar var_160
  loc_C493B6: FLdPr Me
  loc_C493B9: MemLdRfVar from_stack_1.global_52
  loc_C493BC: NewIfNullPr clsctacte
  loc_C493BF: from_stack_1 = clsctacte.ExpeCtct
  loc_C493C4: FLdZeroAd var_160
  loc_C493C7: CVarStr var_358
  loc_C493CA: ConcatVar var_368
  loc_C493CE: LitI4 9
  loc_C493D3: FLdRfVar var_378
  loc_C493D6: ImpAdCallFPR4  = Chr()
  loc_C493DB: FLdRfVar var_378
  loc_C493DE: ConcatVar var_388
  loc_C493E2: FLdRfVar var_164
  loc_C493E5: FLdPr Me
  loc_C493E8: MemLdRfVar from_stack_1.global_52
  loc_C493EB: NewIfNullPr clsctacte
  loc_C493EE: from_stack_1 = clsctacte.AbreTimo
  loc_C493F3: FLdZeroAd var_164
  loc_C493F6: CVarStr var_398
  loc_C493F9: ConcatVar var_3A8
  loc_C493FD: LitI4 9
  loc_C49402: FLdRfVar var_3B8
  loc_C49405: ImpAdCallFPR4  = Chr()
  loc_C4940A: FLdRfVar var_3B8
  loc_C4940D: ConcatVar var_3C8
  loc_C49411: ILdRf var_BC
  loc_C49414: CVarStr var_1AC
  loc_C49417: ConcatVar var_3D8
  loc_C4941B: LitI4 9
  loc_C49420: FLdRfVar var_3E8
  loc_C49423: ImpAdCallFPR4  = Chr()
  loc_C49428: FLdRfVar var_3E8
  loc_C4942B: ConcatVar var_3F8
  loc_C4942F: ILdRf var_C4
  loc_C49432: CVarStr var_408
  loc_C49435: ConcatVar var_418
  loc_C49439: LitI4 9
  loc_C4943E: FLdRfVar var_428
  loc_C49441: ImpAdCallFPR4  = Chr()
  loc_C49446: FLdRfVar var_428
  loc_C49449: ConcatVar var_438
  loc_C4944D: ILdRf var_C8
  loc_C49450: CVarStr var_448
  loc_C49453: ConcatVar var_458
  loc_C49457: LitI4 9
  loc_C4945C: FLdRfVar var_468
  loc_C4945F: ImpAdCallFPR4  = Chr()
  loc_C49464: FLdRfVar var_468
  loc_C49467: ConcatVar var_478
  loc_C4946B: LitVarStr var_488, "No"
  loc_C49470: ConcatVar var_498
  loc_C49474: LitI4 9
  loc_C49479: FLdRfVar var_4A8
  loc_C4947C: ImpAdCallFPR4  = Chr()
  loc_C49481: FLdRfVar var_4A8
  loc_C49484: ConcatVar var_4B8
  loc_C49488: FLdRfVar var_4BC
  loc_C4948B: FLdPr Me
  loc_C4948E: MemLdRfVar from_stack_1.global_52
  loc_C49491: NewIfNullPr clsctacte
  loc_C49494: from_stack_1 = clsctacte.NumeCtct
  loc_C49499: ILdRf var_4BC
  loc_C4949C: CVarI4
  loc_C494A0: ConcatVar var_4DC
  loc_C494A4: LitI4 9
  loc_C494A9: FLdRfVar var_4EC
  loc_C494AC: ImpAdCallFPR4  = Chr()
  loc_C494B1: FLdRfVar var_4EC
  loc_C494B4: ConcatVar var_4FC
  loc_C494B8: FLdRfVar var_19A
  loc_C494BB: FLdPr Me
  loc_C494BE: MemLdRfVar from_stack_1.global_52
  loc_C494C1: NewIfNullPr clsctacte
  loc_C494C4: from_stack_1 = clsctacte.MoviCtct
  loc_C494C9: FLdI2 var_19A
  loc_C494CC: CVarI2 var_50C
  loc_C494CF: ConcatVar var_51C
  loc_C494D3: CStrVarTmp
  loc_C494D4: FStStr var_B8
  loc_C494D7: FFreeVar var_338 = "": var_348 = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_418 = "": var_428 = "": var_438 = "": var_458 = "": var_468 = "": var_478 = "": var_498 = "": var_4A8 = "": var_4B8 = "": var_4DC = "": var_4EC = "": var_4FC = "": var_51C = "": var_100 = "": var_110 = "": var_124 = "": var_144 = "": var_154 = "": var_178 = "": var_188 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_224 = "": var_234 = "": var_244 = "": var_254 = "": var_264 = "": var_274 = "": var_284 = "": var_294 = "": var_2A4 = "": var_2B4 = "": var_2C4 = "": var_2D4 = "": var_2E4 = "": var_2F4 = "": var_304 = "": var_314 = ""
  loc_C4954A: FLdRfVar var_B8
  loc_C4954D: CDargRef
  loc_C49551: FLdPr Me
  loc_C49554: VCallAd Control_ID_ctacteFlex
  loc_C49557: FStAdFunc var_CC
  loc_C4955A: FLdPr var_CC
  loc_C4955D: LateIdCall
  loc_C49565: FFree1Ad var_CC
  loc_C49568: FLdPr Me
  loc_C4956B: MemLdRfVar from_stack_1.global_52
  loc_C4956E: NewIfNullPr clsctacte
  loc_C49571: Call clsctacte.MoveSiguiente()
  loc_C49576: Branch loc_C48F40
  loc_C49579: LitI4 1
  loc_C4957E: LitI4 1
  loc_C49583: LitVarStr var_EC, "###,###,##0.00"
  loc_C49588: FStVarCopyObj var_100
  loc_C4958B: FLdRfVar var_100
  loc_C4958E: FLdPr Me
  loc_C49591: MemLdRfVar from_stack_1.global_96
  loc_C49594: CVarRef
  loc_C49599: FLdRfVar var_110
  loc_C4959C: ImpAdCallFPR4  = Format(, )
  loc_C495A1: FLdRfVar var_110
  loc_C495A4: CStrVarVal var_114
  loc_C495A8: FLdPr Me
  loc_C495AB: VCallAd Control_ID_txtTotaDere
  loc_C495AE: FStAdFunc var_CC
  loc_C495B1: FLdPr var_CC
  loc_C495B4: Me.Text = from_stack_1
  loc_C495B9: FFree1Str var_114
  loc_C495BC: FFree1Ad var_CC
  loc_C495BF: FFreeVar var_100 = ""
  loc_C495C6: LitI4 1
  loc_C495CB: LitI4 1
  loc_C495D0: LitVarStr var_EC, "###,###,##0.00"
  loc_C495D5: FStVarCopyObj var_100
  loc_C495D8: FLdRfVar var_100
  loc_C495DB: FLdPr Me
  loc_C495DE: MemLdRfVar from_stack_1.global_104
  loc_C495E1: CVarRef
  loc_C495E6: FLdRfVar var_110
  loc_C495E9: ImpAdCallFPR4  = Format(, )
  loc_C495EE: FLdRfVar var_110
  loc_C495F1: CStrVarVal var_114
  loc_C495F5: FLdPr Me
  loc_C495F8: VCallAd Control_ID_txtTotaReca
  loc_C495FB: FStAdFunc var_CC
  loc_C495FE: FLdPr var_CC
  loc_C49601: Me.Text = from_stack_1
  loc_C49606: FFree1Str var_114
  loc_C49609: FFree1Ad var_CC
  loc_C4960C: FFreeVar var_100 = ""
  loc_C49613: LitI4 1
  loc_C49618: LitI4 1
  loc_C4961D: LitVarStr var_EC, "###,###,##0.00"
  loc_C49622: FStVarCopyObj var_100
  loc_C49625: FLdRfVar var_100
  loc_C49628: FLdPr Me
  loc_C4962B: MemLdRfVar from_stack_1.global_112
  loc_C4962E: CVarRef
  loc_C49633: FLdRfVar var_110
  loc_C49636: ImpAdCallFPR4  = Format(, )
  loc_C4963B: FLdRfVar var_110
  loc_C4963E: CStrVarVal var_114
  loc_C49642: FLdPr Me
  loc_C49645: VCallAd Control_ID_txtTotaApre
  loc_C49648: FStAdFunc var_CC
  loc_C4964B: FLdPr var_CC
  loc_C4964E: Me.Text = from_stack_1
  loc_C49653: FFree1Str var_114
  loc_C49656: FFree1Ad var_CC
  loc_C49659: FFreeVar var_100 = ""
  loc_C49660: LitI4 2
  loc_C49665: FLdPr Me
  loc_C49668: MemLdRfVar from_stack_1.global_96
  loc_C4966B: CVarRef
  loc_C49670: FLdRfVar var_100
  loc_C49673: ImpAdCallFPR4  = Round(, )
  loc_C49678: FLdRfVar var_100
  loc_C4967B: LitI4 2
  loc_C49680: FLdPr Me
  loc_C49683: MemLdRfVar from_stack_1.global_104
  loc_C49686: CVarRef
  loc_C4968B: FLdRfVar var_110
  loc_C4968E: ImpAdCallFPR4  = Round(, )
  loc_C49693: FLdRfVar var_110
  loc_C49696: AddVar var_124
  loc_C4969A: LitI4 2
  loc_C4969F: FLdPr Me
  loc_C496A2: MemLdRfVar from_stack_1.global_112
  loc_C496A5: CVarRef
  loc_C496AA: FLdRfVar var_144
  loc_C496AD: ImpAdCallFPR4  = Round(, )
  loc_C496B2: FLdRfVar var_144
  loc_C496B5: AddVar var_154
  loc_C496B9: CR4Var
  loc_C496BA: FLdPr Me
  loc_C496BD: MemStFPR8 global_120
  loc_C496C0: FFreeVar var_100 = "": var_110 = "": var_124 = "": var_144 = ""
  loc_C496CD: LitI4 1
  loc_C496D2: LitI4 1
  loc_C496D7: LitVarStr var_EC, "###,###,##0.00"
  loc_C496DC: FStVarCopyObj var_100
  loc_C496DF: FLdRfVar var_100
  loc_C496E2: FLdPr Me
  loc_C496E5: MemLdRfVar from_stack_1.global_120
  loc_C496E8: CVarRef
  loc_C496ED: FLdRfVar var_110
  loc_C496F0: ImpAdCallFPR4  = Format(, )
  loc_C496F5: FLdRfVar var_110
  loc_C496F8: CStrVarVal var_114
  loc_C496FC: FLdPr Me
  loc_C496FF: VCallAd Control_ID_txtTotal
  loc_C49702: FStAdFunc var_CC
  loc_C49705: FLdPr var_CC
  loc_C49708: Me.Text = from_stack_1
  loc_C4970D: FFree1Str var_114
  loc_C49710: FFree1Ad var_CC
  loc_C49713: FFreeVar var_100 = ""
  loc_C4971A: LitI2_Byte &HFF
  loc_C4971C: FLdPr Me
  loc_C4971F: VCallAd Control_ID_ConfirmarCmd
  loc_C49722: FStAdFunc var_CC
  loc_C49725: FLdPr var_CC
  loc_C49728: Me.Enabled = from_stack_1b
  loc_C4972D: FFree1Ad var_CC
  loc_C49730: ExitProcHresult
End Sub

Private Sub HastaPeriodoMsk_UnknownEvent_0 '9C7988
  'Data Table: 510008
  loc_9C7974: FLdPr Me
  loc_9C7977: VCallAd Control_ID_HastaPeriodoMsk
  loc_9C797A: CVarAd
  loc_9C797E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7983: FFree1Var var_94 = ""
  loc_9C7986: ExitProcHresult
End Sub

Private Function HastaPeriodoMsk_UnknownEvent_8(arg_C) 'A86838
  'Data Table: 510008
  loc_A867A8: FLdPr Me
  loc_A867AB: VCallAd Control_ID_HastaPeriodoMsk
  loc_A867AE: FStAdFunc var_88
  loc_A867B1: FLdPr var_88
  loc_A867B4: LateIdLdVar var_98 DispID_13 -32767
  loc_A867BB: CBoolVar
  loc_A867BD: FFree1Ad var_88
  loc_A867C0: FFree1Var var_98 = ""
  loc_A867C3: BranchF loc_A86835
  loc_A867C6: FLdPr Me
  loc_A867C9: VCallAd Control_ID_HastaPeriodoMsk
  loc_A867CC: FStAdFunc var_88
  loc_A867CF: FLdPr var_88
  loc_A867D2: LateIdLdVar var_98 DispID_22 0
  loc_A867D9: PopAd
  loc_A867DB: LitI2_Byte 0
  loc_A867DD: LitI2_Byte 0
  loc_A867DF: FLdRfVar var_98
  loc_A867E2: CStrVarTmp
  loc_A867E3: FStStrNoPop var_9C
  loc_A867E6: LitStr "Hasta Periodo"
  loc_A867E9: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A867EE: FStStrNoPop var_A0
  loc_A867F1: FLdPr Me
  loc_A867F4: MemStStrCopy
  loc_A867F8: FFreeStr var_9C = ""
  loc_A867FF: FFree1Ad var_88
  loc_A86802: FFree1Var var_98 = ""
  loc_A86805: FLdPr Me
  loc_A86808: MemLdStr global_92
  loc_A8680B: LitStr vbNullString
  loc_A8680E: NeStr
  loc_A86810: BranchF loc_A86835
  loc_A86813: FLdPr Me
  loc_A86816: MemLdStr global_92
  loc_A86819: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8681E: FLdPr Me
  loc_A86821: VCallAd Control_ID_HastaPeriodoMsk
  loc_A86824: CVarAd
  loc_A86828: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8682D: FFree1Var var_98 = ""
  loc_A86830: LitI2_Byte &HFF
  loc_A86832: IStI2 arg_C
  loc_A86835: ExitProcHresult
End Function

Private Sub FeveCtctCmd_Click() 'A504E4
  'Data Table: 510008
  loc_A50490: LitVar_Missing var_A4
  loc_A50493: PopAdLdVar
  loc_A50494: LitVarI4
  loc_A5049C: PopAdLdVar
  loc_A5049D: ImpAdLdRf MemVar_D930A4
  loc_A504A0: NewIfNullPr frmCalendario
  loc_A504A3: frmCalendario.Show from_stack_1, from_stack_2
  loc_A504A8: ImpAdLdI4 MemVar_D93028
  loc_A504AB: LitStr vbNullString
  loc_A504AE: NeStr
  loc_A504B0: BranchF loc_A504CE
  loc_A504B3: ImpAdLdRf MemVar_D93028
  loc_A504B6: CDargRef
  loc_A504BA: FLdPr Me
  loc_A504BD: VCallAd Control_ID_FeveCtctMsk
  loc_A504C0: FStAdFunc var_A8
  loc_A504C3: FLdPr var_A8
  loc_A504C6: LateIdSt
  loc_A504CB: FFree1Ad var_A8
  loc_A504CE: FLdPr Me
  loc_A504D1: VCallAd Control_ID_FeveCtctMsk
  loc_A504D4: CVarAd
  loc_A504D8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A504DD: FFree1Var var_B8 = ""
  loc_A504E0: ExitProcHresult
  loc_A504E1: LitI2FP 2050
End Sub

Private Sub FechVencCmd_Click() 'A505FC
  'Data Table: 510008
  loc_A505A8: LitVar_Missing var_A4
  loc_A505AB: PopAdLdVar
  loc_A505AC: LitVarI4
  loc_A505B4: PopAdLdVar
  loc_A505B5: ImpAdLdRf MemVar_D930A4
  loc_A505B8: NewIfNullPr frmCalendario
  loc_A505BB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A505C0: ImpAdLdI4 MemVar_D93028
  loc_A505C3: LitStr vbNullString
  loc_A505C6: NeStr
  loc_A505C8: BranchF loc_A505E6
  loc_A505CB: ImpAdLdRf MemVar_D93028
  loc_A505CE: CDargRef
  loc_A505D2: FLdPr Me
  loc_A505D5: VCallAd Control_ID_FechVencMsk
  loc_A505D8: FStAdFunc var_A8
  loc_A505DB: FLdPr var_A8
  loc_A505DE: LateIdSt
  loc_A505E3: FFree1Ad var_A8
  loc_A505E6: FLdPr Me
  loc_A505E9: VCallAd Control_ID_FechVencMsk
  loc_A505EC: CVarAd
  loc_A505F0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A505F5: FFree1Var var_B8 = ""
  loc_A505F8: ExitProcHresult
  loc_A505F9: PopAdLdVar
  loc_A505FA: FLdPr var_6FF8
End Sub

Private Sub SelePeriodoCmd_Click() 'C00A94
  'Data Table: 510008
  loc_C0019C: FLdPr Me
  loc_C0019F: VCallAd Control_ID_ctacteFlex
  loc_C001A2: FStAdFunc var_88
  loc_C001A5: FLdPr var_88
  loc_C001A8: LateIdLdVar var_98 DispID_4 0
  loc_C001AF: CI4Var
  loc_C001B1: LitI4 1
  loc_C001B6: GtI4
  loc_C001B7: FFree1Ad var_88
  loc_C001BA: FFree1Var var_98 = ""
  loc_C001BD: BranchF loc_C009A9
  loc_C001C0: LitI2_Byte 1
  loc_C001C2: FLdPr Me
  loc_C001C5: MemLdRfVar from_stack_1.global_60
  loc_C001C8: FLdPr Me
  loc_C001CB: VCallAd Control_ID_ctacteFlex
  loc_C001CE: FStAdFunc var_88
  loc_C001D1: FLdPr var_88
  loc_C001D4: LateIdLdVar var_98 DispID_4 0
  loc_C001DB: CI4Var
  loc_C001DD: LitI4 1
  loc_C001E2: SubI4
  loc_C001E3: CI2I4
  loc_C001E4: FFree1Ad var_88
  loc_C001E7: FFree1Var var_98 = ""
  loc_C001EA: ForI2 var_9C
  loc_C001F0: FLdPr Me
  loc_C001F3: MemLdI2 global_60
  loc_C001F6: CI4UI1
  loc_C001F7: CVarI4
  loc_C001FB: PopAdLdVar
  loc_C001FC: LitVarI4
  loc_C00204: PopAdLdVar
  loc_C00205: FLdPr Me
  loc_C00208: VCallAd Control_ID_ctacteFlex
  loc_C0020B: FStAdFunc var_88
  loc_C0020E: FLdPr var_88
  loc_C00211: LateIdCallLdVar
  loc_C0021B: CStrVarTmp
  loc_C0021C: FStStrNoPop var_E0
  loc_C0021F: CI4Str
  loc_C00220: LitI4 0
  loc_C00225: EqI4
  loc_C00226: FFree1Str var_E0
  loc_C00229: FFree1Ad var_88
  loc_C0022C: FFree1Var var_98 = ""
  loc_C0022F: BranchF loc_C00344
  loc_C00232: FLdPr Me
  loc_C00235: MemLdI2 global_60
  loc_C00238: CI4UI1
  loc_C00239: CVarI4
  loc_C0023D: PopAdLdVar
  loc_C0023E: FLdPr Me
  loc_C00241: VCallAd Control_ID_ctacteFlex
  loc_C00244: FStAdFunc var_88
  loc_C00247: FLdPr var_88
  loc_C0024A: LateIdSt
  loc_C0024F: FFree1Ad var_88
  loc_C00252: LitI2_Byte 0
  loc_C00254: FLdPr Me
  loc_C00257: MemLdRfVar from_stack_1.global_62
  loc_C0025A: FLdPr Me
  loc_C0025D: VCallAd Control_ID_ctacteFlex
  loc_C00260: FStAdFunc var_88
  loc_C00263: FLdPr var_88
  loc_C00266: LateIdLdVar var_98 DispID_5 0
  loc_C0026D: CI4Var
  loc_C0026F: LitI4 1
  loc_C00274: SubI4
  loc_C00275: CI2I4
  loc_C00276: FFree1Ad var_88
  loc_C00279: FFree1Var var_98 = ""
  loc_C0027C: ForI2 var_E4
  loc_C00282: FLdPr Me
  loc_C00285: MemLdI2 global_62
  loc_C00288: CI4UI1
  loc_C00289: CVarI4
  loc_C0028D: PopAdLdVar
  loc_C0028E: FLdPr Me
  loc_C00291: VCallAd Control_ID_ctacteFlex
  loc_C00294: FStAdFunc var_88
  loc_C00297: FLdPr var_88
  loc_C0029A: LateIdSt
  loc_C0029F: FFree1Ad var_88
  loc_C002A2: LitVarI4
  loc_C002AA: PopAdLdVar
  loc_C002AB: FLdPr Me
  loc_C002AE: VCallAd Control_ID_ctacteFlex
  loc_C002B1: FStAdFunc var_88
  loc_C002B4: FLdPr var_88
  loc_C002B7: LateIdSt
  loc_C002BC: FFree1Ad var_88
  loc_C002BF: FLdPr Me
  loc_C002C2: MemLdI2 global_62
  loc_C002C5: LitI2_Byte 0
  loc_C002C7: EqI2
  loc_C002C8: BranchF loc_C00312
  loc_C002CB: FLdPr Me
  loc_C002CE: VCallAd Control_ID_ctacteFlex
  loc_C002D1: FStAdFunc var_88
  loc_C002D4: FLdPr var_88
  loc_C002D7: LateIdLdVar var_98 DispID_10 0
  loc_C002DE: CI4Var
  loc_C002E0: CVarI4
  loc_C002E4: PopAdLdVar
  loc_C002E5: LitVarI4
  loc_C002ED: PopAdLdVar
  loc_C002EE: LitVarStr var_F4, "No"
  loc_C002F3: PopAdLdVar
  loc_C002F4: FLdPr Me
  loc_C002F7: VCallAd Control_ID_ctacteFlex
  loc_C002FA: FStAdFunc var_108
  loc_C002FD: FLdPr var_108
  loc_C00300: LateIdCallSt
  loc_C00308: FFreeAd var_88 = ""
  loc_C0030F: FFree1Var var_98 = ""
  loc_C00312: FLdPr Me
  loc_C00315: MemLdI2 global_62
  loc_C00318: LitI2_Byte &HD
  loc_C0031A: EqI2
  loc_C0031B: BranchF loc_C00339
  loc_C0031E: LitI2_Byte 0
  loc_C00320: CR8I2
  loc_C00321: FLdPr Me
  loc_C00324: MemStFPR8 global_64
  loc_C00327: LitI2_Byte 0
  loc_C00329: CR8I2
  loc_C0032A: FLdPr Me
  loc_C0032D: MemStFPR8 global_72
  loc_C00330: LitI2_Byte 0
  loc_C00332: CR8I2
  loc_C00333: FLdPr Me
  loc_C00336: MemStFPR8 global_80
  loc_C00339: FLdPr Me
  loc_C0033C: MemLdRfVar from_stack_1.global_62
  loc_C0033F: NextI2 var_E4, loc_C00282
  loc_C00344: FLdPr Me
  loc_C00347: MemLdRfVar from_stack_1.global_60
  loc_C0034A: NextI2 var_9C, loc_C001F0
  loc_C0034F: LitI2_Byte 1
  loc_C00351: FLdPr Me
  loc_C00354: MemLdRfVar from_stack_1.global_60
  loc_C00357: FLdPr Me
  loc_C0035A: VCallAd Control_ID_ctacteFlex
  loc_C0035D: FStAdFunc var_88
  loc_C00360: FLdPr var_88
  loc_C00363: LateIdLdVar var_98 DispID_4 0
  loc_C0036A: CI4Var
  loc_C0036C: LitI4 1
  loc_C00371: SubI4
  loc_C00372: CI2I4
  loc_C00373: FFree1Ad var_88
  loc_C00376: FFree1Var var_98 = ""
  loc_C00379: ForI2 var_10C
  loc_C0037F: FLdPr Me
  loc_C00382: MemLdI2 global_60
  loc_C00385: CI4UI1
  loc_C00386: CVarI4
  loc_C0038A: PopAdLdVar
  loc_C0038B: LitVarI4
  loc_C00393: PopAdLdVar
  loc_C00394: FLdPr Me
  loc_C00397: VCallAd Control_ID_ctacteFlex
  loc_C0039A: FStAdFunc var_108
  loc_C0039D: FLdPr var_108
  loc_C003A0: LateIdCallLdVar
  loc_C003AA: CStrVarTmp
  loc_C003AB: CVarStr var_14C
  loc_C003AE: FLdRfVar var_15C
  loc_C003B1: ImpAdCallFPR4  = Trim()
  loc_C003B6: FLdPr Me
  loc_C003B9: VCallAd Control_ID_DesdePeriodoMsk
  loc_C003BC: FStAdFunc var_170
  loc_C003BF: FLdPr var_170
  loc_C003C2: LateIdLdVar var_180 DispID_22 0
  loc_C003C9: PopAd
  loc_C003CB: FLdPr Me
  loc_C003CE: MemLdI2 global_60
  loc_C003D1: CI4UI1
  loc_C003D2: CVarI4
  loc_C003D6: PopAdLdVar
  loc_C003D7: LitVarI4
  loc_C003DF: PopAdLdVar
  loc_C003E0: FLdPr Me
  loc_C003E3: VCallAd Control_ID_ctacteFlex
  loc_C003E6: FStAdFunc var_1C8
  loc_C003E9: FLdPr var_1C8
  loc_C003EC: LateIdCallLdVar
  loc_C003F6: CStrVarTmp
  loc_C003F7: CVarStr var_1E8
  loc_C003FA: FLdRfVar var_1F8
  loc_C003FD: ImpAdCallFPR4  = Trim()
  loc_C00402: FLdPr Me
  loc_C00405: VCallAd Control_ID_HastaPeriodoMsk
  loc_C00408: FStAdFunc var_20C
  loc_C0040B: FLdPr var_20C
  loc_C0040E: LateIdLdVar var_21C DispID_22 0
  loc_C00415: PopAd
  loc_C00417: FLdPr Me
  loc_C0041A: MemLdI2 global_60
  loc_C0041D: CI4UI1
  loc_C0041E: CVarI4
  loc_C00422: PopAdLdVar
  loc_C00423: LitVarI4
  loc_C0042B: PopAdLdVar
  loc_C0042C: FLdPr Me
  loc_C0042F: VCallAd Control_ID_ctacteFlex
  loc_C00432: FStAdFunc var_88
  loc_C00435: FLdPr var_88
  loc_C00438: LateIdCallLdVar
  loc_C00442: CStrVarTmp
  loc_C00443: FStStrNoPop var_E0
  loc_C00446: CI4Str
  loc_C00447: LitI4 0
  loc_C0044C: EqI4
  loc_C0044D: LitI4 4
  loc_C00452: FLdRfVar var_15C
  loc_C00455: FLdRfVar var_16C
  loc_C00458: ImpAdCallFPR4  = Right(, )
  loc_C0045D: FLdRfVar var_16C
  loc_C00460: FnCIntVar
  loc_C00462: CR8I2
  loc_C00463: FLdRfVar var_180
  loc_C00466: CStrVarTmp
  loc_C00467: FStStrNoPop var_184
  loc_C0046A: CR8Str
  loc_C0046C: GeR8
  loc_C0046D: AndI4
  loc_C0046E: LitI4 4
  loc_C00473: FLdRfVar var_1F8
  loc_C00476: FLdRfVar var_208
  loc_C00479: ImpAdCallFPR4  = Right(, )
  loc_C0047E: FLdRfVar var_208
  loc_C00481: FnCIntVar
  loc_C00483: CR8I2
  loc_C00484: FLdRfVar var_21C
  loc_C00487: CStrVarTmp
  loc_C00488: FStStrNoPop var_220
  loc_C0048B: CR8Str
  loc_C0048D: LeR8
  loc_C0048E: AndI4
  loc_C0048F: FFreeStr var_E0 = "": var_184 = ""
  loc_C00498: FFreeAd var_88 = "": var_108 = "": var_170 = "": var_1C8 = ""
  loc_C004A5: FFreeVar var_98 = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_16C = "": var_180 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_208 = ""
  loc_C004C2: BranchF loc_C0099E
  loc_C004C5: FLdPr Me
  loc_C004C8: MemLdI2 global_60
  loc_C004CB: CI4UI1
  loc_C004CC: CVarI4
  loc_C004D0: PopAdLdVar
  loc_C004D1: FLdPr Me
  loc_C004D4: VCallAd Control_ID_ctacteFlex
  loc_C004D7: FStAdFunc var_88
  loc_C004DA: FLdPr var_88
  loc_C004DD: LateIdSt
  loc_C004E2: FFree1Ad var_88
  loc_C004E5: LitI2_Byte 0
  loc_C004E7: FLdPr Me
  loc_C004EA: MemLdRfVar from_stack_1.global_62
  loc_C004ED: FLdPr Me
  loc_C004F0: VCallAd Control_ID_ctacteFlex
  loc_C004F3: FStAdFunc var_88
  loc_C004F6: FLdPr var_88
  loc_C004F9: LateIdLdVar var_98 DispID_5 0
  loc_C00500: CI4Var
  loc_C00502: LitI4 1
  loc_C00507: SubI4
  loc_C00508: CI2I4
  loc_C00509: FFree1Ad var_88
  loc_C0050C: FFree1Var var_98 = ""
  loc_C0050F: ForI2 var_224
  loc_C00515: FLdPr Me
  loc_C00518: MemLdI2 global_62
  loc_C0051B: CI4UI1
  loc_C0051C: CVarI4
  loc_C00520: PopAdLdVar
  loc_C00521: FLdPr Me
  loc_C00524: VCallAd Control_ID_ctacteFlex
  loc_C00527: FStAdFunc var_88
  loc_C0052A: FLdPr var_88
  loc_C0052D: LateIdSt
  loc_C00532: FFree1Ad var_88
  loc_C00535: FLdPr Me
  loc_C00538: VCallAd Control_ID_ctacteFlex
  loc_C0053B: FStAdFunc var_88
  loc_C0053E: FLdPr var_88
  loc_C00541: LateIdLdVar var_98 DispID_38 0
  loc_C00548: CI4Var
  loc_C0054A: LitI4 &HFFFF80
  loc_C0054F: EqI4
  loc_C00550: FFree1Ad var_88
  loc_C00553: FFree1Var var_98 = ""
  loc_C00556: BranchF loc_C00784
  loc_C00559: LitVarI4
  loc_C00561: PopAdLdVar
  loc_C00562: FLdPr Me
  loc_C00565: VCallAd Control_ID_ctacteFlex
  loc_C00568: FStAdFunc var_88
  loc_C0056B: FLdPr var_88
  loc_C0056E: LateIdSt
  loc_C00573: FFree1Ad var_88
  loc_C00576: FLdPr Me
  loc_C00579: VCallAd Control_ID_ctacteFlex
  loc_C0057C: FStAdFunc var_88
  loc_C0057F: FLdPr var_88
  loc_C00582: LateIdLdVar var_98 DispID_10 0
  loc_C00589: CI4Var
  loc_C0058B: CVarI4
  loc_C0058F: PopAdLdVar
  loc_C00590: LitVarI4
  loc_C00598: PopAdLdVar
  loc_C00599: LitVarStr var_F4, "No"
  loc_C0059E: PopAdLdVar
  loc_C0059F: FLdPr Me
  loc_C005A2: VCallAd Control_ID_ctacteFlex
  loc_C005A5: FStAdFunc var_108
  loc_C005A8: FLdPr var_108
  loc_C005AB: LateIdCallSt
  loc_C005B3: FFreeAd var_88 = ""
  loc_C005BA: FFree1Var var_98 = ""
  loc_C005BD: FLdPr Me
  loc_C005C0: MemLdI2 global_62
  loc_C005C3: LitI2_Byte &HB
  loc_C005C5: EqI2
  loc_C005C6: BranchF loc_C0062E
  loc_C005C9: FLdPr Me
  loc_C005CC: VCallAd Control_ID_ctacteFlex
  loc_C005CF: FStAdFunc var_88
  loc_C005D2: FLdPr var_88
  loc_C005D5: LateIdLdVar var_98 DispID_10 0
  loc_C005DC: CI4Var
  loc_C005DE: CVarI4
  loc_C005E2: PopAdLdVar
  loc_C005E3: FLdPr Me
  loc_C005E6: MemLdI2 global_62
  loc_C005E9: CI4UI1
  loc_C005EA: CVarI4
  loc_C005EE: PopAdLdVar
  loc_C005EF: FLdPr Me
  loc_C005F2: VCallAd Control_ID_ctacteFlex
  loc_C005F5: FStAdFunc var_108
  loc_C005F8: FLdPr var_108
  loc_C005FB: LateIdCallLdVar
  loc_C00605: PopAd
  loc_C00607: FLdPr Me
  loc_C0060A: MemLdFPR8 global_64
  loc_C0060D: FLdRfVar var_13C
  loc_C00610: CStrVarTmp
  loc_C00611: FStStrNoPop var_E0
  loc_C00614: CR8Str
  loc_C00616: SubR4
  loc_C00617: FLdPr Me
  loc_C0061A: MemStFPR8 global_64
  loc_C0061D: FFree1Str var_E0
  loc_C00620: FFreeAd var_88 = ""
  loc_C00627: FFreeVar var_98 = ""
  loc_C0062E: FLdPr Me
  loc_C00631: MemLdI2 global_62
  loc_C00634: LitI2_Byte &HC
  loc_C00636: EqI2
  loc_C00637: BranchF loc_C006F7
  loc_C0063A: FLdPr Me
  loc_C0063D: VCallAd Control_ID_ctacteFlex
  loc_C00640: FStAdFunc var_88
  loc_C00643: FLdPr var_88
  loc_C00646: LateIdLdVar var_98 DispID_10 0
  loc_C0064D: CI4Var
  loc_C0064F: CVarI4
  loc_C00653: PopAdLdVar
  loc_C00654: FLdPr Me
  loc_C00657: MemLdI2 global_62
  loc_C0065A: CI4UI1
  loc_C0065B: CVarI4
  loc_C0065F: PopAdLdVar
  loc_C00660: FLdPr Me
  loc_C00663: VCallAd Control_ID_ctacteFlex
  loc_C00666: FStAdFunc var_108
  loc_C00669: FLdPr var_108
  loc_C0066C: LateIdCallLdVar
  loc_C00676: CStrVarTmp
  loc_C00677: CVarStr var_14C
  loc_C0067A: ImpAdCallI2 IsNumeric()
  loc_C0067F: FFreeAd var_88 = ""
  loc_C00686: FFreeVar var_98 = "": var_13C = ""
  loc_C0068F: BranchF loc_C006F7
  loc_C00692: FLdPr Me
  loc_C00695: VCallAd Control_ID_ctacteFlex
  loc_C00698: FStAdFunc var_88
  loc_C0069B: FLdPr var_88
  loc_C0069E: LateIdLdVar var_98 DispID_10 0
  loc_C006A5: CI4Var
  loc_C006A7: CVarI4
  loc_C006AB: PopAdLdVar
  loc_C006AC: FLdPr Me
  loc_C006AF: MemLdI2 global_62
  loc_C006B2: CI4UI1
  loc_C006B3: CVarI4
  loc_C006B7: PopAdLdVar
  loc_C006B8: FLdPr Me
  loc_C006BB: VCallAd Control_ID_ctacteFlex
  loc_C006BE: FStAdFunc var_108
  loc_C006C1: FLdPr var_108
  loc_C006C4: LateIdCallLdVar
  loc_C006CE: PopAd
  loc_C006D0: FLdPr Me
  loc_C006D3: MemLdFPR8 global_72
  loc_C006D6: FLdRfVar var_13C
  loc_C006D9: CStrVarTmp
  loc_C006DA: FStStrNoPop var_E0
  loc_C006DD: CR8Str
  loc_C006DF: SubR4
  loc_C006E0: FLdPr Me
  loc_C006E3: MemStFPR8 global_72
  loc_C006E6: FFree1Str var_E0
  loc_C006E9: FFreeAd var_88 = ""
  loc_C006F0: FFreeVar var_98 = ""
  loc_C006F7: FLdPr Me
  loc_C006FA: MemLdI2 global_62
  loc_C006FD: LitI2_Byte &HD
  loc_C006FF: EqI2
  loc_C00700: BranchF loc_C00781
  loc_C00703: FLdPr Me
  loc_C00706: VCallAd Control_ID_ctacteFlex
  loc_C00709: FStAdFunc var_88
  loc_C0070C: FLdPr var_88
  loc_C0070F: LateIdLdVar var_98 DispID_10 0
  loc_C00716: CI4Var
  loc_C00718: CVarI4
  loc_C0071C: PopAdLdVar
  loc_C0071D: FLdPr Me
  loc_C00720: MemLdI2 global_62
  loc_C00723: CI4UI1
  loc_C00724: CVarI4
  loc_C00728: PopAdLdVar
  loc_C00729: FLdPr Me
  loc_C0072C: VCallAd Control_ID_ctacteFlex
  loc_C0072F: FStAdFunc var_108
  loc_C00732: FLdPr var_108
  loc_C00735: LateIdCallLdVar
  loc_C0073F: PopAd
  loc_C00741: LitI4 2
  loc_C00746: FLdPr Me
  loc_C00749: MemLdFPR8 global_80
  loc_C0074C: FLdRfVar var_13C
  loc_C0074F: CStrVarTmp
  loc_C00750: FStStrNoPop var_E0
  loc_C00753: CR8Str
  loc_C00755: SubR4
  loc_C00756: CVarR8
  loc_C0075A: FLdRfVar var_15C
  loc_C0075D: ImpAdCallFPR4  = Round(, )
  loc_C00762: FLdRfVar var_15C
  loc_C00765: CR4Var
  loc_C00766: FLdPr Me
  loc_C00769: MemStFPR8 global_80
  loc_C0076C: FFree1Str var_E0
  loc_C0076F: FFreeAd var_88 = ""
  loc_C00776: FFreeVar var_98 = "": var_13C = "": var_14C = ""
  loc_C00781: Branch loc_C00993
  loc_C00784: LitVarI4
  loc_C0078C: PopAdLdVar
  loc_C0078D: FLdPr Me
  loc_C00790: VCallAd Control_ID_ctacteFlex
  loc_C00793: FStAdFunc var_88
  loc_C00796: FLdPr var_88
  loc_C00799: LateIdSt
  loc_C0079E: FFree1Ad var_88
  loc_C007A1: FLdPr Me
  loc_C007A4: VCallAd Control_ID_ctacteFlex
  loc_C007A7: FStAdFunc var_88
  loc_C007AA: FLdPr var_88
  loc_C007AD: LateIdLdVar var_98 DispID_10 0
  loc_C007B4: CI4Var
  loc_C007B6: CVarI4
  loc_C007BA: PopAdLdVar
  loc_C007BB: LitVarI4
  loc_C007C3: PopAdLdVar
  loc_C007C4: LitVarStr var_F4, "Si"
  loc_C007C9: PopAdLdVar
  loc_C007CA: FLdPr Me
  loc_C007CD: VCallAd Control_ID_ctacteFlex
  loc_C007D0: FStAdFunc var_108
  loc_C007D3: FLdPr var_108
  loc_C007D6: LateIdCallSt
  loc_C007DE: FFreeAd var_88 = ""
  loc_C007E5: FFree1Var var_98 = ""
  loc_C007E8: FLdPr Me
  loc_C007EB: MemLdI2 global_62
  loc_C007EE: LitI2_Byte &HB
  loc_C007F0: EqI2
  loc_C007F1: BranchF loc_C00859
  loc_C007F4: FLdPr Me
  loc_C007F7: VCallAd Control_ID_ctacteFlex
  loc_C007FA: FStAdFunc var_88
  loc_C007FD: FLdPr var_88
  loc_C00800: LateIdLdVar var_98 DispID_10 0
  loc_C00807: CI4Var
  loc_C00809: CVarI4
  loc_C0080D: PopAdLdVar
  loc_C0080E: FLdPr Me
  loc_C00811: MemLdI2 global_62
  loc_C00814: CI4UI1
  loc_C00815: CVarI4
  loc_C00819: PopAdLdVar
  loc_C0081A: FLdPr Me
  loc_C0081D: VCallAd Control_ID_ctacteFlex
  loc_C00820: FStAdFunc var_108
  loc_C00823: FLdPr var_108
  loc_C00826: LateIdCallLdVar
  loc_C00830: PopAd
  loc_C00832: FLdPr Me
  loc_C00835: MemLdFPR8 global_64
  loc_C00838: FLdRfVar var_13C
  loc_C0083B: CStrVarTmp
  loc_C0083C: FStStrNoPop var_E0
  loc_C0083F: CR8Str
  loc_C00841: AddR8
  loc_C00842: FLdPr Me
  loc_C00845: MemStFPR8 global_64
  loc_C00848: FFree1Str var_E0
  loc_C0084B: FFreeAd var_88 = ""
  loc_C00852: FFreeVar var_98 = ""
  loc_C00859: FLdPr Me
  loc_C0085C: MemLdI2 global_62
  loc_C0085F: LitI2_Byte &HC
  loc_C00861: EqI2
  loc_C00862: BranchF loc_C00922
  loc_C00865: FLdPr Me
  loc_C00868: VCallAd Control_ID_ctacteFlex
  loc_C0086B: FStAdFunc var_88
  loc_C0086E: FLdPr var_88
  loc_C00871: LateIdLdVar var_98 DispID_10 0
  loc_C00878: CI4Var
  loc_C0087A: CVarI4
  loc_C0087E: PopAdLdVar
  loc_C0087F: FLdPr Me
  loc_C00882: MemLdI2 global_62
  loc_C00885: CI4UI1
  loc_C00886: CVarI4
  loc_C0088A: PopAdLdVar
  loc_C0088B: FLdPr Me
  loc_C0088E: VCallAd Control_ID_ctacteFlex
  loc_C00891: FStAdFunc var_108
  loc_C00894: FLdPr var_108
  loc_C00897: LateIdCallLdVar
  loc_C008A1: CStrVarTmp
  loc_C008A2: CVarStr var_14C
  loc_C008A5: ImpAdCallI2 IsNumeric()
  loc_C008AA: FFreeAd var_88 = ""
  loc_C008B1: FFreeVar var_98 = "": var_13C = ""
  loc_C008BA: BranchF loc_C00922
  loc_C008BD: FLdPr Me
  loc_C008C0: VCallAd Control_ID_ctacteFlex
  loc_C008C3: FStAdFunc var_88
  loc_C008C6: FLdPr var_88
  loc_C008C9: LateIdLdVar var_98 DispID_10 0
  loc_C008D0: CI4Var
  loc_C008D2: CVarI4
  loc_C008D6: PopAdLdVar
  loc_C008D7: FLdPr Me
  loc_C008DA: MemLdI2 global_62
  loc_C008DD: CI4UI1
  loc_C008DE: CVarI4
  loc_C008E2: PopAdLdVar
  loc_C008E3: FLdPr Me
  loc_C008E6: VCallAd Control_ID_ctacteFlex
  loc_C008E9: FStAdFunc var_108
  loc_C008EC: FLdPr var_108
  loc_C008EF: LateIdCallLdVar
  loc_C008F9: PopAd
  loc_C008FB: FLdPr Me
  loc_C008FE: MemLdFPR8 global_72
  loc_C00901: FLdRfVar var_13C
  loc_C00904: CStrVarTmp
  loc_C00905: FStStrNoPop var_E0
  loc_C00908: CR8Str
  loc_C0090A: AddR8
  loc_C0090B: FLdPr Me
  loc_C0090E: MemStFPR8 global_72
  loc_C00911: FFree1Str var_E0
  loc_C00914: FFreeAd var_88 = ""
  loc_C0091B: FFreeVar var_98 = ""
  loc_C00922: FLdPr Me
  loc_C00925: MemLdI2 global_62
  loc_C00928: LitI2_Byte &HD
  loc_C0092A: EqI2
  loc_C0092B: BranchF loc_C00993
  loc_C0092E: FLdPr Me
  loc_C00931: VCallAd Control_ID_ctacteFlex
  loc_C00934: FStAdFunc var_88
  loc_C00937: FLdPr var_88
  loc_C0093A: LateIdLdVar var_98 DispID_10 0
  loc_C00941: CI4Var
  loc_C00943: CVarI4
  loc_C00947: PopAdLdVar
  loc_C00948: FLdPr Me
  loc_C0094B: MemLdI2 global_62
  loc_C0094E: CI4UI1
  loc_C0094F: CVarI4
  loc_C00953: PopAdLdVar
  loc_C00954: FLdPr Me
  loc_C00957: VCallAd Control_ID_ctacteFlex
  loc_C0095A: FStAdFunc var_108
  loc_C0095D: FLdPr var_108
  loc_C00960: LateIdCallLdVar
  loc_C0096A: PopAd
  loc_C0096C: FLdPr Me
  loc_C0096F: MemLdFPR8 global_80
  loc_C00972: FLdRfVar var_13C
  loc_C00975: CStrVarTmp
  loc_C00976: FStStrNoPop var_E0
  loc_C00979: CR8Str
  loc_C0097B: AddR8
  loc_C0097C: FLdPr Me
  loc_C0097F: MemStFPR8 global_80
  loc_C00982: FFree1Str var_E0
  loc_C00985: FFreeAd var_88 = ""
  loc_C0098C: FFreeVar var_98 = ""
  loc_C00993: FLdPr Me
  loc_C00996: MemLdRfVar from_stack_1.global_62
  loc_C00999: NextI2 var_224, loc_C00515
  loc_C0099E: FLdPr Me
  loc_C009A1: MemLdRfVar from_stack_1.global_60
  loc_C009A4: NextI2 var_10C, loc_C0037F
  loc_C009A9: LitI4 1
  loc_C009AE: LitI4 1
  loc_C009B3: LitVarStr var_BC, "0.00"
  loc_C009B8: FStVarCopyObj var_98
  loc_C009BB: FLdRfVar var_98
  loc_C009BE: FLdPr Me
  loc_C009C1: MemLdRfVar from_stack_1.global_64
  loc_C009C4: CVarRef
  loc_C009C9: FLdRfVar var_13C
  loc_C009CC: ImpAdCallFPR4  = Format(, )
  loc_C009D1: FLdRfVar var_13C
  loc_C009D4: CStrVarVal var_E0
  loc_C009D8: FLdPr Me
  loc_C009DB: VCallAd Control_ID_txtDereSele
  loc_C009DE: FStAdFunc var_88
  loc_C009E1: FLdPr var_88
  loc_C009E4: Me.Text = from_stack_1
  loc_C009E9: FFree1Str var_E0
  loc_C009EC: FFree1Ad var_88
  loc_C009EF: FFreeVar var_98 = ""
  loc_C009F6: LitI4 1
  loc_C009FB: LitI4 1
  loc_C00A00: LitVarStr var_BC, "0.00"
  loc_C00A05: FStVarCopyObj var_98
  loc_C00A08: FLdRfVar var_98
  loc_C00A0B: FLdPr Me
  loc_C00A0E: MemLdRfVar from_stack_1.global_72
  loc_C00A11: CVarRef
  loc_C00A16: FLdRfVar var_13C
  loc_C00A19: ImpAdCallFPR4  = Format(, )
  loc_C00A1E: FLdRfVar var_13C
  loc_C00A21: CStrVarVal var_E0
  loc_C00A25: FLdPr Me
  loc_C00A28: VCallAd Control_ID_txtRecaSele
  loc_C00A2B: FStAdFunc var_88
  loc_C00A2E: FLdPr var_88
  loc_C00A31: Me.Text = from_stack_1
  loc_C00A36: FFree1Str var_E0
  loc_C00A39: FFree1Ad var_88
  loc_C00A3C: FFreeVar var_98 = ""
  loc_C00A43: LitI4 1
  loc_C00A48: LitI4 1
  loc_C00A4D: LitVarStr var_BC, "0.00"
  loc_C00A52: FStVarCopyObj var_98
  loc_C00A55: FLdRfVar var_98
  loc_C00A58: FLdPr Me
  loc_C00A5B: MemLdRfVar from_stack_1.global_80
  loc_C00A5E: CVarRef
  loc_C00A63: FLdRfVar var_13C
  loc_C00A66: ImpAdCallFPR4  = Format(, )
  loc_C00A6B: FLdRfVar var_13C
  loc_C00A6E: CStrVarVal var_E0
  loc_C00A72: FLdPr Me
  loc_C00A75: VCallAd Control_ID_txtTotaSele
  loc_C00A78: FStAdFunc var_88
  loc_C00A7B: FLdPr var_88
  loc_C00A7E: Me.Text = from_stack_1
  loc_C00A83: FFree1Str var_E0
  loc_C00A86: FFree1Ad var_88
  loc_C00A89: FFreeVar var_98 = ""
  loc_C00A90: ExitProcHresult
  loc_C00A91: CVarI4
End Sub

Private Sub DesdePeriodoMsk_UnknownEvent_0 '9C6D70
  'Data Table: 510008
  loc_9C6D5C: FLdPr Me
  loc_9C6D5F: VCallAd Control_ID_DesdePeriodoMsk
  loc_9C6D62: CVarAd
  loc_9C6D66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6D6B: FFree1Var var_94 = ""
  loc_9C6D6E: ExitProcHresult
End Sub

Private Function DesdePeriodoMsk_UnknownEvent_8(arg_C) 'A86288
  'Data Table: 510008
  loc_A861F8: FLdPr Me
  loc_A861FB: VCallAd Control_ID_DesdePeriodoMsk
  loc_A861FE: FStAdFunc var_88
  loc_A86201: FLdPr var_88
  loc_A86204: LateIdLdVar var_98 DispID_13 -32767
  loc_A8620B: CBoolVar
  loc_A8620D: FFree1Ad var_88
  loc_A86210: FFree1Var var_98 = ""
  loc_A86213: BranchF loc_A86285
  loc_A86216: FLdPr Me
  loc_A86219: VCallAd Control_ID_DesdePeriodoMsk
  loc_A8621C: FStAdFunc var_88
  loc_A8621F: FLdPr var_88
  loc_A86222: LateIdLdVar var_98 DispID_22 0
  loc_A86229: PopAd
  loc_A8622B: LitI2_Byte 0
  loc_A8622D: LitI2_Byte 0
  loc_A8622F: FLdRfVar var_98
  loc_A86232: CStrVarTmp
  loc_A86233: FStStrNoPop var_9C
  loc_A86236: LitStr "Desde Periodo"
  loc_A86239: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A8623E: FStStrNoPop var_A0
  loc_A86241: FLdPr Me
  loc_A86244: MemStStrCopy
  loc_A86248: FFreeStr var_9C = ""
  loc_A8624F: FFree1Ad var_88
  loc_A86252: FFree1Var var_98 = ""
  loc_A86255: FLdPr Me
  loc_A86258: MemLdStr global_92
  loc_A8625B: LitStr vbNullString
  loc_A8625E: NeStr
  loc_A86260: BranchF loc_A86285
  loc_A86263: FLdPr Me
  loc_A86266: MemLdStr global_92
  loc_A86269: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8626E: FLdPr Me
  loc_A86271: VCallAd Control_ID_DesdePeriodoMsk
  loc_A86274: CVarAd
  loc_A86278: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8627D: FFree1Var var_98 = ""
  loc_A86280: LitI2_Byte &HFF
  loc_A86282: IStI2 arg_C
  loc_A86285: ExitProcHresult
End Function

Private Sub SeleTodoChk_Click() 'B7C794
  'Data Table: 510008
  loc_B7C2A0: LitI2_Byte 0
  loc_B7C2A2: CR8I2
  loc_B7C2A3: FLdPr Me
  loc_B7C2A6: MemStFPR8 global_64
  loc_B7C2A9: LitI2_Byte 0
  loc_B7C2AB: CR8I2
  loc_B7C2AC: FLdPr Me
  loc_B7C2AF: MemStFPR8 global_72
  loc_B7C2B2: LitI2_Byte 0
  loc_B7C2B4: CR8I2
  loc_B7C2B5: FLdPr Me
  loc_B7C2B8: MemStFPR8 global_80
  loc_B7C2BB: FLdPr Me
  loc_B7C2BE: VCallAd Control_ID_ctacteFlex
  loc_B7C2C1: FStAdFunc var_88
  loc_B7C2C4: FLdPr var_88
  loc_B7C2C7: LateIdLdVar var_98 DispID_4 0
  loc_B7C2CE: CI4Var
  loc_B7C2D0: LitI4 1
  loc_B7C2D5: GtI4
  loc_B7C2D6: FFree1Ad var_88
  loc_B7C2D9: FFree1Var var_98 = ""
  loc_B7C2DC: BranchF loc_B7C6AC
  loc_B7C2DF: LitI2_Byte 1
  loc_B7C2E1: FLdPr Me
  loc_B7C2E4: MemLdRfVar from_stack_1.global_60
  loc_B7C2E7: FLdPr Me
  loc_B7C2EA: VCallAd Control_ID_ctacteFlex
  loc_B7C2ED: FStAdFunc var_88
  loc_B7C2F0: FLdPr var_88
  loc_B7C2F3: LateIdLdVar var_98 DispID_4 0
  loc_B7C2FA: CI4Var
  loc_B7C2FC: LitI4 1
  loc_B7C301: SubI4
  loc_B7C302: CI2I4
  loc_B7C303: FFree1Ad var_88
  loc_B7C306: FFree1Var var_98 = ""
  loc_B7C309: ForI2 var_9C
  loc_B7C30F: FLdPr Me
  loc_B7C312: MemLdI2 global_60
  loc_B7C315: CI4UI1
  loc_B7C316: CVarI4
  loc_B7C31A: PopAdLdVar
  loc_B7C31B: LitVarI4
  loc_B7C323: PopAdLdVar
  loc_B7C324: FLdPr Me
  loc_B7C327: VCallAd Control_ID_ctacteFlex
  loc_B7C32A: FStAdFunc var_88
  loc_B7C32D: FLdPr var_88
  loc_B7C330: LateIdCallLdVar
  loc_B7C33A: CStrVarTmp
  loc_B7C33B: FStStrNoPop var_E0
  loc_B7C33E: CI4Str
  loc_B7C33F: LitI4 0
  loc_B7C344: EqI4
  loc_B7C345: FFree1Str var_E0
  loc_B7C348: FFree1Ad var_88
  loc_B7C34B: FFree1Var var_98 = ""
  loc_B7C34E: BranchF loc_B7C6A1
  loc_B7C351: FLdPr Me
  loc_B7C354: MemLdI2 global_60
  loc_B7C357: CI4UI1
  loc_B7C358: CVarI4
  loc_B7C35C: PopAdLdVar
  loc_B7C35D: FLdPr Me
  loc_B7C360: VCallAd Control_ID_ctacteFlex
  loc_B7C363: FStAdFunc var_88
  loc_B7C366: FLdPr var_88
  loc_B7C369: LateIdSt
  loc_B7C36E: FFree1Ad var_88
  loc_B7C371: LitI2_Byte 0
  loc_B7C373: FLdPr Me
  loc_B7C376: MemLdRfVar from_stack_1.global_62
  loc_B7C379: FLdPr Me
  loc_B7C37C: VCallAd Control_ID_ctacteFlex
  loc_B7C37F: FStAdFunc var_88
  loc_B7C382: FLdPr var_88
  loc_B7C385: LateIdLdVar var_98 DispID_5 0
  loc_B7C38C: CI4Var
  loc_B7C38E: LitI4 1
  loc_B7C393: SubI4
  loc_B7C394: CI2I4
  loc_B7C395: FFree1Ad var_88
  loc_B7C398: FFree1Var var_98 = ""
  loc_B7C39B: ForI2 var_E4
  loc_B7C3A1: FLdPr Me
  loc_B7C3A4: MemLdI2 global_62
  loc_B7C3A7: CI4UI1
  loc_B7C3A8: CVarI4
  loc_B7C3AC: PopAdLdVar
  loc_B7C3AD: FLdPr Me
  loc_B7C3B0: VCallAd Control_ID_ctacteFlex
  loc_B7C3B3: FStAdFunc var_88
  loc_B7C3B6: FLdPr var_88
  loc_B7C3B9: LateIdSt
  loc_B7C3BE: FFree1Ad var_88
  loc_B7C3C1: FLdRfVar var_E6
  loc_B7C3C4: FLdPr Me
  loc_B7C3C7: VCallAd Control_ID_SeleTodoChk
  loc_B7C3CA: FStAdFunc var_88
  loc_B7C3CD: FLdPr var_88
  loc_B7C3D0:  = Me.Value
  loc_B7C3D5: FLdI2 var_E6
  loc_B7C3D8: LitI2_Byte 0
  loc_B7C3DA: EqI2
  loc_B7C3DB: FFree1Ad var_88
  loc_B7C3DE: BranchF loc_B7C47B
  loc_B7C3E1: LitVarI4
  loc_B7C3E9: PopAdLdVar
  loc_B7C3EA: FLdPr Me
  loc_B7C3ED: VCallAd Control_ID_ctacteFlex
  loc_B7C3F0: FStAdFunc var_88
  loc_B7C3F3: FLdPr var_88
  loc_B7C3F6: LateIdSt
  loc_B7C3FB: FFree1Ad var_88
  loc_B7C3FE: FLdPr Me
  loc_B7C401: MemLdI2 global_62
  loc_B7C404: LitI2_Byte 0
  loc_B7C406: EqI2
  loc_B7C407: BranchF loc_B7C451
  loc_B7C40A: FLdPr Me
  loc_B7C40D: VCallAd Control_ID_ctacteFlex
  loc_B7C410: FStAdFunc var_88
  loc_B7C413: FLdPr var_88
  loc_B7C416: LateIdLdVar var_98 DispID_10 0
  loc_B7C41D: CI4Var
  loc_B7C41F: CVarI4
  loc_B7C423: PopAdLdVar
  loc_B7C424: LitVarI4
  loc_B7C42C: PopAdLdVar
  loc_B7C42D: LitVarStr var_F8, "No"
  loc_B7C432: PopAdLdVar
  loc_B7C433: FLdPr Me
  loc_B7C436: VCallAd Control_ID_ctacteFlex
  loc_B7C439: FStAdFunc var_10C
  loc_B7C43C: FLdPr var_10C
  loc_B7C43F: LateIdCallSt
  loc_B7C447: FFreeAd var_88 = ""
  loc_B7C44E: FFree1Var var_98 = ""
  loc_B7C451: FLdPr Me
  loc_B7C454: MemLdI2 global_62
  loc_B7C457: LitI2_Byte &HD
  loc_B7C459: EqI2
  loc_B7C45A: BranchF loc_B7C478
  loc_B7C45D: LitI2_Byte 0
  loc_B7C45F: CR8I2
  loc_B7C460: FLdPr Me
  loc_B7C463: MemStFPR8 global_64
  loc_B7C466: LitI2_Byte 0
  loc_B7C468: CR8I2
  loc_B7C469: FLdPr Me
  loc_B7C46C: MemStFPR8 global_72
  loc_B7C46F: LitI2_Byte 0
  loc_B7C471: CR8I2
  loc_B7C472: FLdPr Me
  loc_B7C475: MemStFPR8 global_80
  loc_B7C478: Branch loc_B7C696
  loc_B7C47B: LitVarI4
  loc_B7C483: PopAdLdVar
  loc_B7C484: FLdPr Me
  loc_B7C487: VCallAd Control_ID_ctacteFlex
  loc_B7C48A: FStAdFunc var_88
  loc_B7C48D: FLdPr var_88
  loc_B7C490: LateIdSt
  loc_B7C495: FFree1Ad var_88
  loc_B7C498: FLdPr Me
  loc_B7C49B: MemLdI2 global_62
  loc_B7C49E: LitI2_Byte 0
  loc_B7C4A0: EqI2
  loc_B7C4A1: BranchF loc_B7C4EB
  loc_B7C4A4: FLdPr Me
  loc_B7C4A7: VCallAd Control_ID_ctacteFlex
  loc_B7C4AA: FStAdFunc var_88
  loc_B7C4AD: FLdPr var_88
  loc_B7C4B0: LateIdLdVar var_98 DispID_10 0
  loc_B7C4B7: CI4Var
  loc_B7C4B9: CVarI4
  loc_B7C4BD: PopAdLdVar
  loc_B7C4BE: LitVarI4
  loc_B7C4C6: PopAdLdVar
  loc_B7C4C7: LitVarStr var_F8, "Si"
  loc_B7C4CC: PopAdLdVar
  loc_B7C4CD: FLdPr Me
  loc_B7C4D0: VCallAd Control_ID_ctacteFlex
  loc_B7C4D3: FStAdFunc var_10C
  loc_B7C4D6: FLdPr var_10C
  loc_B7C4D9: LateIdCallSt
  loc_B7C4E1: FFreeAd var_88 = ""
  loc_B7C4E8: FFree1Var var_98 = ""
  loc_B7C4EB: FLdPr Me
  loc_B7C4EE: MemLdI2 global_62
  loc_B7C4F1: LitI2_Byte &HB
  loc_B7C4F3: EqI2
  loc_B7C4F4: BranchF loc_B7C55C
  loc_B7C4F7: FLdPr Me
  loc_B7C4FA: VCallAd Control_ID_ctacteFlex
  loc_B7C4FD: FStAdFunc var_88
  loc_B7C500: FLdPr var_88
  loc_B7C503: LateIdLdVar var_98 DispID_10 0
  loc_B7C50A: CI4Var
  loc_B7C50C: CVarI4
  loc_B7C510: PopAdLdVar
  loc_B7C511: FLdPr Me
  loc_B7C514: MemLdI2 global_62
  loc_B7C517: CI4UI1
  loc_B7C518: CVarI4
  loc_B7C51C: PopAdLdVar
  loc_B7C51D: FLdPr Me
  loc_B7C520: VCallAd Control_ID_ctacteFlex
  loc_B7C523: FStAdFunc var_10C
  loc_B7C526: FLdPr var_10C
  loc_B7C529: LateIdCallLdVar
  loc_B7C533: PopAd
  loc_B7C535: FLdPr Me
  loc_B7C538: MemLdFPR8 global_64
  loc_B7C53B: FLdRfVar var_11C
  loc_B7C53E: CStrVarTmp
  loc_B7C53F: FStStrNoPop var_E0
  loc_B7C542: CR8Str
  loc_B7C544: AddR8
  loc_B7C545: FLdPr Me
  loc_B7C548: MemStFPR8 global_64
  loc_B7C54B: FFree1Str var_E0
  loc_B7C54E: FFreeAd var_88 = ""
  loc_B7C555: FFreeVar var_98 = ""
  loc_B7C55C: FLdPr Me
  loc_B7C55F: MemLdI2 global_62
  loc_B7C562: LitI2_Byte &HC
  loc_B7C564: EqI2
  loc_B7C565: BranchF loc_B7C625
  loc_B7C568: FLdPr Me
  loc_B7C56B: VCallAd Control_ID_ctacteFlex
  loc_B7C56E: FStAdFunc var_88
  loc_B7C571: FLdPr var_88
  loc_B7C574: LateIdLdVar var_98 DispID_10 0
  loc_B7C57B: CI4Var
  loc_B7C57D: CVarI4
  loc_B7C581: PopAdLdVar
  loc_B7C582: FLdPr Me
  loc_B7C585: MemLdI2 global_62
  loc_B7C588: CI4UI1
  loc_B7C589: CVarI4
  loc_B7C58D: PopAdLdVar
  loc_B7C58E: FLdPr Me
  loc_B7C591: VCallAd Control_ID_ctacteFlex
  loc_B7C594: FStAdFunc var_10C
  loc_B7C597: FLdPr var_10C
  loc_B7C59A: LateIdCallLdVar
  loc_B7C5A4: CStrVarTmp
  loc_B7C5A5: CVarStr var_12C
  loc_B7C5A8: ImpAdCallI2 IsNumeric()
  loc_B7C5AD: FFreeAd var_88 = ""
  loc_B7C5B4: FFreeVar var_98 = "": var_11C = ""
  loc_B7C5BD: BranchF loc_B7C625
  loc_B7C5C0: FLdPr Me
  loc_B7C5C3: VCallAd Control_ID_ctacteFlex
  loc_B7C5C6: FStAdFunc var_88
  loc_B7C5C9: FLdPr var_88
  loc_B7C5CC: LateIdLdVar var_98 DispID_10 0
  loc_B7C5D3: CI4Var
  loc_B7C5D5: CVarI4
  loc_B7C5D9: PopAdLdVar
  loc_B7C5DA: FLdPr Me
  loc_B7C5DD: MemLdI2 global_62
  loc_B7C5E0: CI4UI1
  loc_B7C5E1: CVarI4
  loc_B7C5E5: PopAdLdVar
  loc_B7C5E6: FLdPr Me
  loc_B7C5E9: VCallAd Control_ID_ctacteFlex
  loc_B7C5EC: FStAdFunc var_10C
  loc_B7C5EF: FLdPr var_10C
  loc_B7C5F2: LateIdCallLdVar
  loc_B7C5FC: PopAd
  loc_B7C5FE: FLdPr Me
  loc_B7C601: MemLdFPR8 global_72
  loc_B7C604: FLdRfVar var_11C
  loc_B7C607: CStrVarTmp
  loc_B7C608: FStStrNoPop var_E0
  loc_B7C60B: CR8Str
  loc_B7C60D: AddR8
  loc_B7C60E: FLdPr Me
  loc_B7C611: MemStFPR8 global_72
  loc_B7C614: FFree1Str var_E0
  loc_B7C617: FFreeAd var_88 = ""
  loc_B7C61E: FFreeVar var_98 = ""
  loc_B7C625: FLdPr Me
  loc_B7C628: MemLdI2 global_62
  loc_B7C62B: LitI2_Byte &HD
  loc_B7C62D: EqI2
  loc_B7C62E: BranchF loc_B7C696
  loc_B7C631: FLdPr Me
  loc_B7C634: VCallAd Control_ID_ctacteFlex
  loc_B7C637: FStAdFunc var_88
  loc_B7C63A: FLdPr var_88
  loc_B7C63D: LateIdLdVar var_98 DispID_10 0
  loc_B7C644: CI4Var
  loc_B7C646: CVarI4
  loc_B7C64A: PopAdLdVar
  loc_B7C64B: FLdPr Me
  loc_B7C64E: MemLdI2 global_62
  loc_B7C651: CI4UI1
  loc_B7C652: CVarI4
  loc_B7C656: PopAdLdVar
  loc_B7C657: FLdPr Me
  loc_B7C65A: VCallAd Control_ID_ctacteFlex
  loc_B7C65D: FStAdFunc var_10C
  loc_B7C660: FLdPr var_10C
  loc_B7C663: LateIdCallLdVar
  loc_B7C66D: PopAd
  loc_B7C66F: FLdPr Me
  loc_B7C672: MemLdFPR8 global_80
  loc_B7C675: FLdRfVar var_11C
  loc_B7C678: CStrVarTmp
  loc_B7C679: FStStrNoPop var_E0
  loc_B7C67C: CR8Str
  loc_B7C67E: AddR8
  loc_B7C67F: FLdPr Me
  loc_B7C682: MemStFPR8 global_80
  loc_B7C685: FFree1Str var_E0
  loc_B7C688: FFreeAd var_88 = ""
  loc_B7C68F: FFreeVar var_98 = ""
  loc_B7C696: FLdPr Me
  loc_B7C699: MemLdRfVar from_stack_1.global_62
  loc_B7C69C: NextI2 var_E4, loc_B7C3A1
  loc_B7C6A1: FLdPr Me
  loc_B7C6A4: MemLdRfVar from_stack_1.global_60
  loc_B7C6A7: NextI2 var_9C, loc_B7C30F
  loc_B7C6AC: LitI4 1
  loc_B7C6B1: LitI4 1
  loc_B7C6B6: LitVarStr var_BC, "0.00"
  loc_B7C6BB: FStVarCopyObj var_98
  loc_B7C6BE: FLdRfVar var_98
  loc_B7C6C1: FLdPr Me
  loc_B7C6C4: MemLdRfVar from_stack_1.global_64
  loc_B7C6C7: CVarRef
  loc_B7C6CC: FLdRfVar var_11C
  loc_B7C6CF: ImpAdCallFPR4  = Format(, )
  loc_B7C6D4: FLdRfVar var_11C
  loc_B7C6D7: CStrVarVal var_E0
  loc_B7C6DB: FLdPr Me
  loc_B7C6DE: VCallAd Control_ID_txtDereSele
  loc_B7C6E1: FStAdFunc var_88
  loc_B7C6E4: FLdPr var_88
  loc_B7C6E7: Me.Text = from_stack_1
  loc_B7C6EC: FFree1Str var_E0
  loc_B7C6EF: FFree1Ad var_88
  loc_B7C6F2: FFreeVar var_98 = ""
  loc_B7C6F9: LitI4 1
  loc_B7C6FE: LitI4 1
  loc_B7C703: LitVarStr var_BC, "0.00"
  loc_B7C708: FStVarCopyObj var_98
  loc_B7C70B: FLdRfVar var_98
  loc_B7C70E: FLdPr Me
  loc_B7C711: MemLdRfVar from_stack_1.global_72
  loc_B7C714: CVarRef
  loc_B7C719: FLdRfVar var_11C
  loc_B7C71C: ImpAdCallFPR4  = Format(, )
  loc_B7C721: FLdRfVar var_11C
  loc_B7C724: CStrVarVal var_E0
  loc_B7C728: FLdPr Me
  loc_B7C72B: VCallAd Control_ID_txtRecaSele
  loc_B7C72E: FStAdFunc var_88
  loc_B7C731: FLdPr var_88
  loc_B7C734: Me.Text = from_stack_1
  loc_B7C739: FFree1Str var_E0
  loc_B7C73C: FFree1Ad var_88
  loc_B7C73F: FFreeVar var_98 = ""
  loc_B7C746: LitI4 1
  loc_B7C74B: LitI4 1
  loc_B7C750: LitVarStr var_BC, "0.00"
  loc_B7C755: FStVarCopyObj var_98
  loc_B7C758: FLdRfVar var_98
  loc_B7C75B: FLdPr Me
  loc_B7C75E: MemLdRfVar from_stack_1.global_80
  loc_B7C761: CVarRef
  loc_B7C766: FLdRfVar var_11C
  loc_B7C769: ImpAdCallFPR4  = Format(, )
  loc_B7C76E: FLdRfVar var_11C
  loc_B7C771: CStrVarVal var_E0
  loc_B7C775: FLdPr Me
  loc_B7C778: VCallAd Control_ID_txtTotaSele
  loc_B7C77B: FStAdFunc var_88
  loc_B7C77E: FLdPr var_88
  loc_B7C781: Me.Text = from_stack_1
  loc_B7C786: FFree1Str var_E0
  loc_B7C789: FFree1Ad var_88
  loc_B7C78C: FFreeVar var_98 = ""
  loc_B7C793: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B37AE8
  'Data Table: 510008
  loc_B37814: FLdRfVar var_8A
  loc_B37817: FLdPr Me
  loc_B3781A: VCallAd Control_ID_OficinaCbo
  loc_B3781D: FStAdFunc var_88
  loc_B37820: FLdPr var_88
  loc_B37823:  = Me.ListIndex
  loc_B37828: FLdI2 var_8A
  loc_B3782B: FStI2 var_8C
  loc_B3782E: FFree1Ad var_88
  loc_B37831: FLdI2 var_8C
  loc_B37834: LitI2_Byte 0
  loc_B37836: EqI2
  loc_B37837: BranchF loc_B37845
  loc_B3783A: LitI2_Byte 1
  loc_B3783C: CUI1I2
  loc_B3783E: ImpAdStUI1 MemVar_D93038
  loc_B37842: Branch loc_B3787E
  loc_B37845: FLdI2 var_8C
  loc_B37848: LitI2_Byte 1
  loc_B3784A: EqI2
  loc_B3784B: BranchF loc_B37859
  loc_B3784E: LitI2_Byte 2
  loc_B37850: CUI1I2
  loc_B37852: ImpAdStUI1 MemVar_D93038
  loc_B37856: Branch loc_B3787E
  loc_B37859: FLdI2 var_8C
  loc_B3785C: LitI2_Byte 2
  loc_B3785E: EqI2
  loc_B3785F: BranchF loc_B3786D
  loc_B37862: LitI2_Byte 3
  loc_B37864: CUI1I2
  loc_B37866: ImpAdStUI1 MemVar_D93038
  loc_B3786A: Branch loc_B3787E
  loc_B3786D: FLdI2 var_8C
  loc_B37870: LitI2_Byte 3
  loc_B37872: EqI2
  loc_B37873: BranchF loc_B3787E
  loc_B37876: LitI2_Byte 4
  loc_B37878: CUI1I2
  loc_B3787A: ImpAdStUI1 MemVar_D93038
  loc_B3787E: ImpAdLdUI1
  loc_B37882: CI2UI1
  loc_B37884: LitI2_Byte 0
  loc_B37886: NeI2
  loc_B37887: FLdRfVar var_90
  loc_B3788A: FLdPr Me
  loc_B3788D: VCallAd Control_ID_NumeCtaTxt
  loc_B37890: FStAdFunc var_88
  loc_B37893: FLdPr var_88
  loc_B37896:  = Me.Text
  loc_B3789B: ILdRf var_90
  loc_B3789E: LitStr vbNullString
  loc_B378A1: NeStr
  loc_B378A3: AndI4
  loc_B378A4: FLdRfVar var_98
  loc_B378A7: FLdPr Me
  loc_B378AA: VCallAd Control_ID_NumeCtaTxt
  loc_B378AD: FStAdFunc var_94
  loc_B378B0: FLdPr var_94
  loc_B378B3:  = Me.Text
  loc_B378B8: ILdRf var_98
  loc_B378BB: LitStr "0"
  loc_B378BE: NeStr
  loc_B378C0: AndI4
  loc_B378C1: FFreeStr var_90 = ""
  loc_B378C8: FFreeAd var_88 = ""
  loc_B378CF: BranchF loc_B37AE6
  loc_B378D2: FLdRfVar var_90
  loc_B378D5: FLdPr Me
  loc_B378D8: VCallAd Control_ID_NumeCtaTxt
  loc_B378DB: FStAdFunc var_88
  loc_B378DE: FLdPr var_88
  loc_B378E1:  = Me.Text
  loc_B378E6: FLdPr Me
  loc_B378E9: MemLdRfVar from_stack_1.global_56
  loc_B378EC: NewIfNullRf
  loc_B378F0: LitStr "Titular"
  loc_B378F3: ILdRf var_90
  loc_B378F6: ImpAdLdUI1
  loc_B378FA: CStrI2
  loc_B378FC: FStStrNoPop var_98
  loc_B378FF: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B37904: FFreeStr var_98 = ""
  loc_B3790B: FFree1Ad var_88
  loc_B3790E: BranchF loc_B37A66
  loc_B37911: FLdRfVar var_90
  loc_B37914: FLdPr Me
  loc_B37917: MemLdRfVar from_stack_1.global_56
  loc_B3791A: NewIfNullPr tblPersona
  loc_B3791D: from_stack_1v = tblPersona.CucuPersGet()
  loc_B37922: ILdRf var_90
  loc_B37925: FLdPr Me
  loc_B37928: VCallAd Control_ID_CucuPersLbl
  loc_B3792B: FStAdFunc var_88
  loc_B3792E: FLdPr var_88
  loc_B37931: Me.Caption = from_stack_1
  loc_B37936: FFree1Str var_90
  loc_B37939: FFree1Ad var_88
  loc_B3793C: FLdRfVar var_90
  loc_B3793F: FLdPr Me
  loc_B37942: MemLdRfVar from_stack_1.global_56
  loc_B37945: NewIfNullPr tblPersona
  loc_B37948: from_stack_1v = tblPersona.DetaPersGet()
  loc_B3794D: ILdRf var_90
  loc_B37950: FLdPr Me
  loc_B37953: VCallAd Control_ID_DetaPersLbl
  loc_B37956: FStAdFunc var_88
  loc_B37959: FLdPr var_88
  loc_B3795C: Me.Caption = from_stack_1
  loc_B37961: FFree1Str var_90
  loc_B37964: FFree1Ad var_88
  loc_B37967: FLdRfVar var_98
  loc_B3796A: FLdPr Me
  loc_B3796D: MemLdRfVar from_stack_1.global_56
  loc_B37970: NewIfNullPr tblPersona
  loc_B37973: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B37978: FLdRfVar var_9C
  loc_B3797B: FLdPr Me
  loc_B3797E: MemLdRfVar from_stack_1.global_56
  loc_B37981: NewIfNullPr tblPersona
  loc_B37984: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B37989: FLdRfVar var_90
  loc_B3798C: FLdPr Me
  loc_B3798F: MemLdRfVar from_stack_1.global_56
  loc_B37992: NewIfNullPr tblPersona
  loc_B37995: from_stack_1v = tblPersona.DetaCallGet()
  loc_B3799A: ILdRf var_90
  loc_B3799D: LitStr " "
  loc_B379A0: ConcatStr
  loc_B379A1: CVarStr var_FC
  loc_B379A4: LitVarStr var_CC, vbNullString
  loc_B379A9: FStVarCopyObj var_DC
  loc_B379AC: FLdRfVar var_DC
  loc_B379AF: LitStr "Nro: "
  loc_B379B2: ILdRf var_9C
  loc_B379B5: ConcatStr
  loc_B379B6: CVarStr var_BC
  loc_B379B9: ILdRf var_98
  loc_B379BC: LitStr "0"
  loc_B379BF: NeStr
  loc_B379C1: CVarBoolI2 var_AC
  loc_B379C5: FLdRfVar var_EC
  loc_B379C8: ImpAdCallFPR4  = IIf(, , )
  loc_B379CD: FLdRfVar var_EC
  loc_B379D0: ConcatVar var_10C
  loc_B379D4: LitVarStr var_11C, " "
  loc_B379D9: ConcatVar var_12C
  loc_B379DD: FLdRfVar var_130
  loc_B379E0: FLdPr Me
  loc_B379E3: MemLdRfVar from_stack_1.global_56
  loc_B379E6: NewIfNullPr tblPersona
  loc_B379E9: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B379EE: FLdZeroAd var_130
  loc_B379F1: CVarStr var_140
  loc_B379F4: ConcatVar var_150
  loc_B379F8: CStrVarVal var_154
  loc_B379FC: FLdPr Me
  loc_B379FF: VCallAd Control_ID_DomiPersLbl
  loc_B37A02: FStAdFunc var_88
  loc_B37A05: FLdPr var_88
  loc_B37A08: Me.Caption = from_stack_1
  loc_B37A0D: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B37A18: FFree1Ad var_88
  loc_B37A1B: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B37A30: LitI4 0
  loc_B37A35: LitI4 0
  loc_B37A3A: FLdRfVar var_158
  loc_B37A3D: Redim
  loc_B37A47: FLdPr Me
  loc_B37A4A: VCallAd Control_ID_ConfirmarCmd
  loc_B37A4D: CVarAd
  loc_B37A51: ParmAry1St
  loc_B37A57: FLdRfVar var_158
  loc_B37A5A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B37A5F: FLdRfVar var_158
  loc_B37A62: Erase
  loc_B37A63: Branch loc_B37AE6
  loc_B37A66: FLdRfVar var_90
  loc_B37A69: FLdPr Me
  loc_B37A6C: MemLdRfVar from_stack_1.global_56
  loc_B37A6F: NewIfNullPr tblPersona
  loc_B37A72: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B37A77: ILdRf var_90
  loc_B37A7A: FLdPr Me
  loc_B37A7D: MemStStrCopy
  loc_B37A81: FFree1Str var_90
  loc_B37A84: FLdPr Me
  loc_B37A87: MemLdStr global_92
  loc_B37A8A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B37A8F: LitStr vbNullString
  loc_B37A92: FLdPr Me
  loc_B37A95: VCallAd Control_ID_CucuPersLbl
  loc_B37A98: FStAdFunc var_88
  loc_B37A9B: FLdPr var_88
  loc_B37A9E: Me.Caption = from_stack_1
  loc_B37AA3: FFree1Ad var_88
  loc_B37AA6: LitStr vbNullString
  loc_B37AA9: FLdPr Me
  loc_B37AAC: VCallAd Control_ID_DetaPersLbl
  loc_B37AAF: FStAdFunc var_88
  loc_B37AB2: FLdPr var_88
  loc_B37AB5: Me.Caption = from_stack_1
  loc_B37ABA: FFree1Ad var_88
  loc_B37ABD: LitStr vbNullString
  loc_B37AC0: FLdPr Me
  loc_B37AC3: VCallAd Control_ID_DomiPersLbl
  loc_B37AC6: FStAdFunc var_88
  loc_B37AC9: FLdPr var_88
  loc_B37ACC: Me.Caption = from_stack_1
  loc_B37AD1: FFree1Ad var_88
  loc_B37AD4: FLdPr Me
  loc_B37AD7: VCallAd Control_ID_NumeCtaTxt
  loc_B37ADA: CVarAd
  loc_B37ADE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B37AE3: FFree1Var var_BC = ""
  loc_B37AE6: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'B35394
  'Data Table: 510008
  loc_B350A4: LitI4 0
  loc_B350A9: LitI4 0
  loc_B350AE: FLdRfVar var_88
  loc_B350B1: Redim
  loc_B350BB: FLdPr Me
  loc_B350BE: VCallAd Control_ID_ConfirmarCmd
  loc_B350C1: CVarAd
  loc_B350C5: ParmAry1St
  loc_B350CB: FLdRfVar var_88
  loc_B350CE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B350D3: FLdRfVar var_88
  loc_B350D6: Erase
  loc_B350D7: Call Proc_24_27_B18E68()
  loc_B350DC: LitI2_Byte 0
  loc_B350DE: CR8I2
  loc_B350DF: FLdPr Me
  loc_B350E2: MemStFPR8 global_96
  loc_B350E5: LitI2_Byte 0
  loc_B350E7: CR8I2
  loc_B350E8: FLdPr Me
  loc_B350EB: MemStFPR8 global_104
  loc_B350EE: LitI2_Byte 0
  loc_B350F0: CR8I2
  loc_B350F1: FLdPr Me
  loc_B350F4: MemStFPR8 global_112
  loc_B350F7: LitI2_Byte 0
  loc_B350F9: CR8I2
  loc_B350FA: FLdPr Me
  loc_B350FD: MemStFPR8 global_120
  loc_B35100: LitI2_Byte 0
  loc_B35102: CR8I2
  loc_B35103: FLdPr Me
  loc_B35106: MemStFPR8 global_128
  loc_B35109: LitI4 1
  loc_B3510E: LitI4 1
  loc_B35113: LitVarStr var_B8, "0.00"
  loc_B35118: FStVarCopyObj var_98
  loc_B3511B: FLdRfVar var_98
  loc_B3511E: FLdPr Me
  loc_B35121: MemLdRfVar from_stack_1.global_96
  loc_B35124: CVarRef
  loc_B35129: FLdRfVar var_C8
  loc_B3512C: ImpAdCallFPR4  = Format(, )
  loc_B35131: FLdRfVar var_C8
  loc_B35134: CStrVarVal var_CC
  loc_B35138: FLdPr Me
  loc_B3513B: VCallAd Control_ID_txtTotaDere
  loc_B3513E: FStAdFunc var_D0
  loc_B35141: FLdPr var_D0
  loc_B35144: Me.Text = from_stack_1
  loc_B35149: FFree1Str var_CC
  loc_B3514C: FFree1Ad var_D0
  loc_B3514F: FFreeVar var_98 = ""
  loc_B35156: LitI4 1
  loc_B3515B: LitI4 1
  loc_B35160: LitVarStr var_B8, "0.00"
  loc_B35165: FStVarCopyObj var_98
  loc_B35168: FLdRfVar var_98
  loc_B3516B: FLdPr Me
  loc_B3516E: MemLdRfVar from_stack_1.global_104
  loc_B35171: CVarRef
  loc_B35176: FLdRfVar var_C8
  loc_B35179: ImpAdCallFPR4  = Format(, )
  loc_B3517E: FLdRfVar var_C8
  loc_B35181: CStrVarVal var_CC
  loc_B35185: FLdPr Me
  loc_B35188: VCallAd Control_ID_txtTotaReca
  loc_B3518B: FStAdFunc var_D0
  loc_B3518E: FLdPr var_D0
  loc_B35191: Me.Text = from_stack_1
  loc_B35196: FFree1Str var_CC
  loc_B35199: FFree1Ad var_D0
  loc_B3519C: FFreeVar var_98 = ""
  loc_B351A3: LitI4 1
  loc_B351A8: LitI4 1
  loc_B351AD: LitVarStr var_B8, "0.00"
  loc_B351B2: FStVarCopyObj var_98
  loc_B351B5: FLdRfVar var_98
  loc_B351B8: FLdPr Me
  loc_B351BB: MemLdRfVar from_stack_1.global_112
  loc_B351BE: CVarRef
  loc_B351C3: FLdRfVar var_C8
  loc_B351C6: ImpAdCallFPR4  = Format(, )
  loc_B351CB: FLdRfVar var_C8
  loc_B351CE: CStrVarVal var_CC
  loc_B351D2: FLdPr Me
  loc_B351D5: VCallAd Control_ID_txtTotaApre
  loc_B351D8: FStAdFunc var_D0
  loc_B351DB: FLdPr var_D0
  loc_B351DE: Me.Text = from_stack_1
  loc_B351E3: FFree1Str var_CC
  loc_B351E6: FFree1Ad var_D0
  loc_B351E9: FFreeVar var_98 = ""
  loc_B351F0: LitI4 2
  loc_B351F5: FLdPr Me
  loc_B351F8: MemLdRfVar from_stack_1.global_96
  loc_B351FB: CVarRef
  loc_B35200: FLdRfVar var_98
  loc_B35203: ImpAdCallFPR4  = Round(, )
  loc_B35208: FLdRfVar var_98
  loc_B3520B: LitI4 2
  loc_B35210: FLdPr Me
  loc_B35213: MemLdRfVar from_stack_1.global_104
  loc_B35216: CVarRef
  loc_B3521B: FLdRfVar var_C8
  loc_B3521E: ImpAdCallFPR4  = Round(, )
  loc_B35223: FLdRfVar var_C8
  loc_B35226: AddVar var_E0
  loc_B3522A: LitI4 2
  loc_B3522F: FLdPr Me
  loc_B35232: MemLdRfVar from_stack_1.global_112
  loc_B35235: CVarRef
  loc_B3523A: FLdRfVar var_100
  loc_B3523D: ImpAdCallFPR4  = Round(, )
  loc_B35242: FLdRfVar var_100
  loc_B35245: AddVar var_110
  loc_B35249: CR4Var
  loc_B3524A: FLdPr Me
  loc_B3524D: MemStFPR8 global_120
  loc_B35250: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B3525D: LitI4 1
  loc_B35262: LitI4 1
  loc_B35267: LitVarStr var_B8, "0.00"
  loc_B3526C: FStVarCopyObj var_98
  loc_B3526F: FLdRfVar var_98
  loc_B35272: FLdPr Me
  loc_B35275: MemLdRfVar from_stack_1.global_120
  loc_B35278: CVarRef
  loc_B3527D: FLdRfVar var_C8
  loc_B35280: ImpAdCallFPR4  = Format(, )
  loc_B35285: FLdRfVar var_C8
  loc_B35288: CStrVarVal var_CC
  loc_B3528C: FLdPr Me
  loc_B3528F: VCallAd Control_ID_txtTotal
  loc_B35292: FStAdFunc var_D0
  loc_B35295: FLdPr var_D0
  loc_B35298: Me.Text = from_stack_1
  loc_B3529D: FFree1Str var_CC
  loc_B352A0: FFree1Ad var_D0
  loc_B352A3: FFreeVar var_98 = ""
  loc_B352AA: LitI4 1
  loc_B352AF: LitI4 1
  loc_B352B4: LitVarStr var_B8, "0.00"
  loc_B352B9: FStVarCopyObj var_98
  loc_B352BC: FLdRfVar var_98
  loc_B352BF: FLdPr Me
  loc_B352C2: MemLdRfVar from_stack_1.global_96
  loc_B352C5: CVarRef
  loc_B352CA: FLdRfVar var_C8
  loc_B352CD: ImpAdCallFPR4  = Format(, )
  loc_B352D2: FLdRfVar var_C8
  loc_B352D5: CStrVarVal var_CC
  loc_B352D9: FLdPr Me
  loc_B352DC: VCallAd Control_ID_txtDereSele
  loc_B352DF: FStAdFunc var_D0
  loc_B352E2: FLdPr var_D0
  loc_B352E5: Me.Text = from_stack_1
  loc_B352EA: FFree1Str var_CC
  loc_B352ED: FFree1Ad var_D0
  loc_B352F0: FFreeVar var_98 = ""
  loc_B352F7: LitI4 1
  loc_B352FC: LitI4 1
  loc_B35301: LitVarStr var_B8, "0.00"
  loc_B35306: FStVarCopyObj var_98
  loc_B35309: FLdRfVar var_98
  loc_B3530C: FLdPr Me
  loc_B3530F: MemLdRfVar from_stack_1.global_104
  loc_B35312: CVarRef
  loc_B35317: FLdRfVar var_C8
  loc_B3531A: ImpAdCallFPR4  = Format(, )
  loc_B3531F: FLdRfVar var_C8
  loc_B35322: CStrVarVal var_CC
  loc_B35326: FLdPr Me
  loc_B35329: VCallAd Control_ID_txtRecaSele
  loc_B3532C: FStAdFunc var_D0
  loc_B3532F: FLdPr var_D0
  loc_B35332: Me.Text = from_stack_1
  loc_B35337: FFree1Str var_CC
  loc_B3533A: FFree1Ad var_D0
  loc_B3533D: FFreeVar var_98 = ""
  loc_B35344: LitI4 1
  loc_B35349: LitI4 1
  loc_B3534E: LitVarStr var_B8, "0.00"
  loc_B35353: FStVarCopyObj var_98
  loc_B35356: FLdRfVar var_98
  loc_B35359: FLdPr Me
  loc_B3535C: MemLdRfVar from_stack_1.global_128
  loc_B3535F: CVarRef
  loc_B35364: FLdRfVar var_C8
  loc_B35367: ImpAdCallFPR4  = Format(, )
  loc_B3536C: FLdRfVar var_C8
  loc_B3536F: CStrVarVal var_CC
  loc_B35373: FLdPr Me
  loc_B35376: VCallAd Control_ID_txtTotaSele
  loc_B35379: FStAdFunc var_D0
  loc_B3537C: FLdPr var_D0
  loc_B3537F: Me.Text = from_stack_1
  loc_B35384: FFree1Str var_CC
  loc_B35387: FFree1Ad var_D0
  loc_B3538A: FFreeVar var_98 = ""
  loc_B35391: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'C83B8C
  'Data Table: 510008
  loc_C82670: LitI2_Byte 0
  loc_C82672: PopTmpLdAd2 var_8E
  loc_C82675: Call FeveCtctMsk_UnknownEvent_8()
  loc_C8267A: FLdPr Me
  loc_C8267D: MemLdStr global_92
  loc_C82680: LitStr vbNullString
  loc_C82683: NeStr
  loc_C82685: BranchF loc_C82689
  loc_C82688: ExitProcHresult
  loc_C82689: LitI2_Byte 0
  loc_C8268B: PopTmpLdAd2 var_8E
  loc_C8268E: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_C82693: FLdPr Me
  loc_C82696: MemLdStr global_92
  loc_C82699: LitStr vbNullString
  loc_C8269C: NeStr
  loc_C8269E: BranchF loc_C826A2
  loc_C826A1: ExitProcHresult
  loc_C826A2: FLdPr Me
  loc_C826A5: VCallAd Control_ID_ctacteFlex
  loc_C826A8: FStAdFunc var_94
  loc_C826AB: FLdPr var_94
  loc_C826AE: LateIdLdVar var_A4 DispID_4 0
  loc_C826B5: CI4Var
  loc_C826B7: LitI4 1
  loc_C826BC: LeI4
  loc_C826BD: FFree1Ad var_94
  loc_C826C0: FFree1Var var_A4 = ""
  loc_C826C3: BranchF loc_C826F8
  loc_C826C6: LitVar_Missing var_114
  loc_C826C9: LitVar_Missing var_F4
  loc_C826CC: LitVarStr var_C4, "InfoGov"
  loc_C826D1: FStVarCopyObj var_D4
  loc_C826D4: FLdRfVar var_D4
  loc_C826D7: LitI4 &H30
  loc_C826DC: LitVarStr var_B4, "No existe deuda seleccionada para realizar el credito. Reintente..."
  loc_C826E1: FStVarCopyObj var_A4
  loc_C826E4: FLdRfVar var_A4
  loc_C826E7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C826EC: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C826F7: ExitProcHresult
  loc_C826F8: LitI2_Byte 0
  loc_C826FA: FStI2 var_86
  loc_C826FD: LitI2_Byte 1
  loc_C826FF: FLdPr Me
  loc_C82702: MemLdRfVar from_stack_1.global_60
  loc_C82705: FLdPr Me
  loc_C82708: VCallAd Control_ID_ctacteFlex
  loc_C8270B: FStAdFunc var_94
  loc_C8270E: FLdPr var_94
  loc_C82711: LateIdLdVar var_A4 DispID_4 0
  loc_C82718: CI4Var
  loc_C8271A: LitI4 1
  loc_C8271F: SubI4
  loc_C82720: CI2I4
  loc_C82721: FFree1Ad var_94
  loc_C82724: FFree1Var var_A4 = ""
  loc_C82727: ForI2 var_118
  loc_C8272D: FLdPr Me
  loc_C82730: MemLdI2 global_60
  loc_C82733: CI4UI1
  loc_C82734: CVarI4
  loc_C82738: PopAdLdVar
  loc_C82739: LitVarI4
  loc_C82741: PopAdLdVar
  loc_C82742: FLdPr Me
  loc_C82745: VCallAd Control_ID_ctacteFlex
  loc_C82748: FStAdFunc var_94
  loc_C8274B: FLdPr var_94
  loc_C8274E: LateIdCallLdVar
  loc_C82758: CStrVarTmp
  loc_C82759: FStStrNoPop var_11C
  loc_C8275C: LitStr "Si"
  loc_C8275F: EqStr
  loc_C82761: FLdPr Me
  loc_C82764: MemLdI2 global_60
  loc_C82767: CI4UI1
  loc_C82768: CVarI4
  loc_C8276C: PopAdLdVar
  loc_C8276D: LitVarI4
  loc_C82775: PopAdLdVar
  loc_C82776: FLdPr Me
  loc_C82779: VCallAd Control_ID_ctacteFlex
  loc_C8277C: FStAdFunc var_160
  loc_C8277F: FLdPr var_160
  loc_C82782: LateIdCallLdVar
  loc_C8278C: CStrVarTmp
  loc_C8278D: FStStrNoPop var_164
  loc_C82790: LitStr "SS"
  loc_C82793: EqStr
  loc_C82795: OrI4
  loc_C82796: FFreeStr var_11C = ""
  loc_C8279D: FFreeAd var_94 = ""
  loc_C827A4: FFreeVar var_A4 = ""
  loc_C827AB: BranchF loc_C827B3
  loc_C827AE: LitI2_Byte &HFF
  loc_C827B0: FStI2 var_86
  loc_C827B3: FLdPr Me
  loc_C827B6: MemLdRfVar from_stack_1.global_60
  loc_C827B9: NextI2 var_118, loc_C8272D
  loc_C827BE: FLdI2 var_86
  loc_C827C1: LitI2_Byte 0
  loc_C827C3: EqI2
  loc_C827C4: BranchF loc_C827F9
  loc_C827C7: LitVar_Missing var_114
  loc_C827CA: LitVar_Missing var_F4
  loc_C827CD: LitVarStr var_C4, "InfoGov"
  loc_C827D2: FStVarCopyObj var_D4
  loc_C827D5: FLdRfVar var_D4
  loc_C827D8: LitI4 &H30
  loc_C827DD: LitVarStr var_B4, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_C827E2: FStVarCopyObj var_A4
  loc_C827E5: FLdRfVar var_A4
  loc_C827E8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C827ED: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C827F8: ExitProcHresult
  loc_C827F9: FLdRfVar var_8E
  loc_C827FC: FLdPr Me
  loc_C827FF: VCallAd Control_ID_PrescripcionOpt
  loc_C82802: FStAdFunc var_94
  loc_C82805: FLdPr var_94
  loc_C82808:  = Me.Value
  loc_C8280D: FLdI2 var_8E
  loc_C82810: LitI2_Byte &HFF
  loc_C82812: EqI2
  loc_C82813: FFree1Ad var_94
  loc_C82816: BranchF loc_C82821
  loc_C82819: LitI2_Byte &HC
  loc_C8281B: CUI1I2
  loc_C8281D: FStUI1 var_8C
  loc_C82821: FLdRfVar var_8E
  loc_C82824: FLdPr Me
  loc_C82827: VCallAd Control_ID_CondonacionOpt
  loc_C8282A: FStAdFunc var_94
  loc_C8282D: FLdPr var_94
  loc_C82830:  = Me.Value
  loc_C82835: FLdI2 var_8E
  loc_C82838: LitI2_Byte &HFF
  loc_C8283A: EqI2
  loc_C8283B: FFree1Ad var_94
  loc_C8283E: BranchF loc_C82849
  loc_C82841: LitI2_Byte &HE
  loc_C82843: CUI1I2
  loc_C82845: FStUI1 var_8C
  loc_C82849: FLdRfVar var_8E
  loc_C8284C: FLdPr Me
  loc_C8284F: VCallAd Control_ID_ExencionOpt
  loc_C82852: FStAdFunc var_94
  loc_C82855: FLdPr var_94
  loc_C82858:  = Me.Value
  loc_C8285D: FLdI2 var_8E
  loc_C82860: LitI2_Byte &HFF
  loc_C82862: EqI2
  loc_C82863: FFree1Ad var_94
  loc_C82866: BranchF loc_C82871
  loc_C82869: LitI2_Byte &HF
  loc_C8286B: CUI1I2
  loc_C8286D: FStUI1 var_8C
  loc_C82871: LitI2_Byte 1
  loc_C82873: FLdPr Me
  loc_C82876: MemLdRfVar from_stack_1.global_60
  loc_C82879: FLdPr Me
  loc_C8287C: VCallAd Control_ID_ctacteFlex
  loc_C8287F: FStAdFunc var_94
  loc_C82882: FLdPr var_94
  loc_C82885: LateIdLdVar var_A4 DispID_4 0
  loc_C8288C: CI4Var
  loc_C8288E: LitI4 1
  loc_C82893: SubI4
  loc_C82894: CI2I4
  loc_C82895: FFree1Ad var_94
  loc_C82898: FFree1Var var_A4 = ""
  loc_C8289B: ForI2 var_168
  loc_C828A1: FLdPr Me
  loc_C828A4: MemLdI2 global_60
  loc_C828A7: CI4UI1
  loc_C828A8: CVarI4
  loc_C828AC: PopAdLdVar
  loc_C828AD: LitVarI4
  loc_C828B5: PopAdLdVar
  loc_C828B6: FLdPr Me
  loc_C828B9: VCallAd Control_ID_ctacteFlex
  loc_C828BC: FStAdFunc var_94
  loc_C828BF: FLdPr var_94
  loc_C828C2: LateIdCallLdVar
  loc_C828CC: CStrVarTmp
  loc_C828CD: FStStrNoPop var_11C
  loc_C828D0: LitStr "Si"
  loc_C828D3: EqStr
  loc_C828D5: FFree1Str var_11C
  loc_C828D8: FFree1Ad var_94
  loc_C828DB: FFree1Var var_A4 = ""
  loc_C828DE: BranchF loc_C82F8E
  loc_C828E1: FLdPr Me
  loc_C828E4: MemLdI2 global_60
  loc_C828E7: CI4UI1
  loc_C828E8: CVarI4
  loc_C828EC: PopAdLdVar
  loc_C828ED: LitVarI4
  loc_C828F5: PopAdLdVar
  loc_C828F6: FLdPr Me
  loc_C828F9: VCallAd Control_ID_ctacteFlex
  loc_C828FC: FStAdFunc var_1C0
  loc_C828FF: FLdPr var_1C0
  loc_C82902: LateIdCallLdVar
  loc_C8290C: CStrVarTmp
  loc_C8290D: CVarStr var_114
  loc_C82910: FLdRfVar var_1D0
  loc_C82913: ImpAdCallFPR4  = Trim()
  loc_C82918: FLdPr Me
  loc_C8291B: MemLdI2 global_60
  loc_C8291E: CI4UI1
  loc_C8291F: CVarI4
  loc_C82923: PopAdLdVar
  loc_C82924: LitVarI4
  loc_C8292C: PopAdLdVar
  loc_C8292D: FLdPr Me
  loc_C82930: VCallAd Control_ID_ctacteFlex
  loc_C82933: FStAdFunc var_264
  loc_C82936: FLdPr var_264
  loc_C82939: LateIdCallLdVar
  loc_C82943: PopAd
  loc_C82945: LitStr "SELECT * FROM ctacte "
  loc_C82948: LitStr " WHERE ctacte.CodiOfic = "
  loc_C8294B: ConcatStr
  loc_C8294C: FStStrNoPop var_11C
  loc_C8294F: FLdPr Me
  loc_C82952: MemLdI2 global_60
  loc_C82955: CI4UI1
  loc_C82956: CVarI4
  loc_C8295A: PopAdLdVar
  loc_C8295B: LitVarI4
  loc_C82963: PopAdLdVar
  loc_C82964: FLdPr Me
  loc_C82967: VCallAd Control_ID_ctacteFlex
  loc_C8296A: FStAdFunc var_94
  loc_C8296D: FLdPr var_94
  loc_C82970: LateIdCallLdVar
  loc_C8297A: CStrVarTmp
  loc_C8297B: FStStrNoPop var_164
  loc_C8297E: ConcatStr
  loc_C8297F: FStStrNoPop var_16C
  loc_C82982: LitStr " AND ctacte.CuenCtct = '"
  loc_C82985: ConcatStr
  loc_C82986: FStStrNoPop var_170
  loc_C82989: FLdPr Me
  loc_C8298C: MemLdI2 global_60
  loc_C8298F: CI4UI1
  loc_C82990: CVarI4
  loc_C82994: PopAdLdVar
  loc_C82995: LitVarI4
  loc_C8299D: PopAdLdVar
  loc_C8299E: FLdPr Me
  loc_C829A1: VCallAd Control_ID_ctacteFlex
  loc_C829A4: FStAdFunc var_160
  loc_C829A7: FLdPr var_160
  loc_C829AA: LateIdCallLdVar
  loc_C829B4: CStrVarTmp
  loc_C829B5: FStStrNoPop var_174
  loc_C829B8: ConcatStr
  loc_C829B9: FStStrNoPop var_178
  loc_C829BC: LitStr "'"
  loc_C829BF: ConcatStr
  loc_C829C0: FStStrNoPop var_17C
  loc_C829C3: LitStr " AND ctacte.PeriCtct = "
  loc_C829C6: ConcatStr
  loc_C829C7: CVarStr var_1F0
  loc_C829CA: LitI4 4
  loc_C829CF: FLdRfVar var_1D0
  loc_C829D2: FLdRfVar var_1E0
  loc_C829D5: ImpAdCallFPR4  = Right(, )
  loc_C829DA: FLdRfVar var_1E0
  loc_C829DD: ConcatVar var_200
  loc_C829E1: LitVarStr var_210, " AND ctacte.BimeCtct = "
  loc_C829E6: ConcatVar var_220
  loc_C829EA: LitI4 1
  loc_C829EF: FLdPr Me
  loc_C829F2: MemLdI2 global_60
  loc_C829F5: CI4UI1
  loc_C829F6: CVarI4
  loc_C829FA: PopAdLdVar
  loc_C829FB: LitVarI4
  loc_C82A03: PopAdLdVar
  loc_C82A04: FLdPr Me
  loc_C82A07: VCallAd Control_ID_ctacteFlex
  loc_C82A0A: FStAdFunc var_2B8
  loc_C82A0D: FLdPr var_2B8
  loc_C82A10: LateIdCallLdVar
  loc_C82A1A: CStrVarTmp
  loc_C82A1B: FStStrNoPop var_2CC
  loc_C82A1E: LitStr "/"
  loc_C82A21: LitI4 0
  loc_C82A26: FnInStr4
  loc_C82A28: LitI4 1
  loc_C82A2D: SubI4
  loc_C82A2E: CVarI4
  loc_C82A32: LitI4 1
  loc_C82A37: FLdRfVar var_274
  loc_C82A3A: CStrVarTmp
  loc_C82A3B: CVarStr var_2DC
  loc_C82A3E: FLdRfVar var_30C
  loc_C82A41: ImpAdCallFPR4  = Mid(, , )
  loc_C82A46: FLdRfVar var_30C
  loc_C82A49: ConcatVar var_31C
  loc_C82A4D: LitVarStr var_32C, " AND ctacte.NumeCtct = "
  loc_C82A52: ConcatVar var_33C
  loc_C82A56: FLdPr Me
  loc_C82A59: MemLdI2 global_60
  loc_C82A5C: CI4UI1
  loc_C82A5D: CVarI4
  loc_C82A61: PopAdLdVar
  loc_C82A62: LitVarI4
  loc_C82A6A: PopAdLdVar
  loc_C82A6B: FLdPr Me
  loc_C82A6E: VCallAd Control_ID_ctacteFlex
  loc_C82A71: FStAdFunc var_380
  loc_C82A74: FLdPr var_380
  loc_C82A77: LateIdCallLdVar
  loc_C82A81: CStrVarTmp
  loc_C82A82: CVarStr var_3A0
  loc_C82A85: ConcatVar var_3B0
  loc_C82A89: LitVarStr var_3C0, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C82A8E: ConcatVar var_3D0
  loc_C82A92: CStrVarVal var_3D4
  loc_C82A96: FLdPr Me
  loc_C82A99: MemLdRfVar from_stack_1.global_52
  loc_C82A9C: NewIfNullPr clsctacte
  loc_C82A9F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C82AA4: FFreeStr var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_2CC = ""
  loc_C82AB9: FFreeAd var_94 = "": var_160 = "": var_1C0 = "": var_264 = "": var_2B8 = ""
  loc_C82AC8: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_1D0 = "": var_1F0 = "": var_1E0 = "": var_200 = "": var_274 = "": var_2C8 = "": var_2DC = "": var_2FC = "": var_220 = "": var_30C = "": var_31C = "": var_390 = "": var_33C = "": var_3A0 = "": var_3B0 = ""
  loc_C82AF3: FLdRfVar var_3D8
  loc_C82AF6: FLdPr Me
  loc_C82AF9: MemLdRfVar from_stack_1.global_52
  loc_C82AFC: NewIfNullPr clsctacte
  loc_C82AFF: from_stack_1 = clsctacte.RecordCount
  loc_C82B04: ILdRf var_3D8
  loc_C82B07: LitI4 1
  loc_C82B0C: GeI4
  loc_C82B0D: BranchF loc_C82F8E
  loc_C82B10: FLdPr Me
  loc_C82B13: MemLdRfVar from_stack_1.global_52
  loc_C82B16: NewIfNullPr clsctacte
  loc_C82B19: Call clsctacte.MoveLast()
  loc_C82B1E: FLdRfVar var_8E
  loc_C82B21: FLdPr Me
  loc_C82B24: MemLdRfVar from_stack_1.global_52
  loc_C82B27: NewIfNullPr clsctacte
  loc_C82B2A: from_stack_1 = clsctacte.MoviCtct
  loc_C82B2F: FLdI2 var_8E
  loc_C82B32: LitI2_Byte 1
  loc_C82B34: AddI2
  loc_C82B35: FStI2 var_88
  loc_C82B38: LitVarStr var_B4, vbNullString
  loc_C82B3D: PopAdLdVar
  loc_C82B3E: FLdPr Me
  loc_C82B41: VCallAd Control_ID_FeveCtctMsk
  loc_C82B44: FStAdFunc var_94
  loc_C82B47: FLdPr var_94
  loc_C82B4A: LateIdSt
  loc_C82B4F: FFree1Ad var_94
  loc_C82B52: LitStr "Municipalidad de Guaymallén"
  loc_C82B55: LitStr "Municipalidad de Guaymallén"
  loc_C82B58: EqStr
  loc_C82B5A: LitStr "Municipalidad de Guaymallén"
  loc_C82B5D: LitStr "Municipalidad de Santa Rosa"
  loc_C82B60: EqStr
  loc_C82B62: OrI4
  loc_C82B63: BranchF loc_C82D95
  loc_C82B66: FLdRfVar var_8E
  loc_C82B69: FLdPr Me
  loc_C82B6C: MemLdRfVar from_stack_1.global_52
  loc_C82B6F: NewIfNullPr clsctacte
  loc_C82B72: from_stack_1 = clsctacte.CodiOfic
  loc_C82B77: FLdRfVar var_11C
  loc_C82B7A: FLdPr Me
  loc_C82B7D: MemLdRfVar from_stack_1.global_52
  loc_C82B80: NewIfNullPr clsctacte
  loc_C82B83: from_stack_1 = clsctacte.CuenCtct
  loc_C82B88: FLdRfVar var_3DA
  loc_C82B8B: FLdPr Me
  loc_C82B8E: MemLdRfVar from_stack_1.global_52
  loc_C82B91: NewIfNullPr clsctacte
  loc_C82B94: from_stack_1 = clsctacte.PeriCtct
  loc_C82B99: FLdRfVar var_3DC
  loc_C82B9C: FLdPr Me
  loc_C82B9F: MemLdRfVar from_stack_1.global_52
  loc_C82BA2: NewIfNullPr clsctacte
  loc_C82BA5: from_stack_1 = clsctacte.BimeCtct
  loc_C82BAA: FLdRfVar var_3D8
  loc_C82BAD: FLdPr Me
  loc_C82BB0: MemLdRfVar from_stack_1.global_52
  loc_C82BB3: NewIfNullPr clsctacte
  loc_C82BB6: from_stack_1 = clsctacte.NumeCtct
  loc_C82BBB: FLdRfVar var_3DE
  loc_C82BBE: FLdPr Me
  loc_C82BC1: MemLdRfVar from_stack_1.global_52
  loc_C82BC4: NewIfNullPr clsctacte
  loc_C82BC7: from_stack_1 = clsctacte.PeriBole
  loc_C82BCC: FLdRfVar var_3E4
  loc_C82BCF: FLdPr Me
  loc_C82BD2: MemLdRfVar from_stack_1.global_52
  loc_C82BD5: NewIfNullPr clsctacte
  loc_C82BD8: from_stack_1 = clsctacte.NumeBole
  loc_C82BDD: FLdRfVar var_164
  loc_C82BE0: FLdPr Me
  loc_C82BE3: MemLdRfVar from_stack_1.global_52
  loc_C82BE6: NewIfNullPr clsctacte
  loc_C82BE9: from_stack_1 = clsctacte.TipoCtct
  loc_C82BEE: LitI2_Byte 0
  loc_C82BF0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C82BF5: FStFPR8 var_400
  loc_C82BF8: FLdPr Me
  loc_C82BFB: VCallAd Control_ID_FeveCtctMsk
  loc_C82BFE: FStAdFunc var_94
  loc_C82C01: FLdPr var_94
  loc_C82C04: LateIdLdVar var_A4 DispID_22 0
  loc_C82C0B: PopAd
  loc_C82C0D: FLdRfVar var_3E6
  loc_C82C10: FLdPr Me
  loc_C82C13: MemLdRfVar from_stack_1.global_52
  loc_C82C16: NewIfNullPr clsctacte
  loc_C82C19: from_stack_1 = clsctacte.PeriInfo
  loc_C82C1E: FLdRfVar var_16C
  loc_C82C21: FLdPr Me
  loc_C82C24: MemLdRfVar from_stack_1.global_52
  loc_C82C27: NewIfNullPr clsctacte
  loc_C82C2A: from_stack_1 = clsctacte.CodiConc
  loc_C82C2F: FLdRfVar var_3EC
  loc_C82C32: FLdPr Me
  loc_C82C35: MemLdRfVar from_stack_1.global_52
  loc_C82C38: NewIfNullPr clsctacte
  loc_C82C3B: from_stack_1 = clsctacte.CodiFapa
  loc_C82C40: FLdRfVar var_3EE
  loc_C82C43: FLdPr Me
  loc_C82C46: MemLdRfVar from_stack_1.global_52
  loc_C82C49: NewIfNullPr clsctacte
  loc_C82C4C: from_stack_1 = clsctacte.CuotDefa
  loc_C82C51: FLdRfVar var_3F4
  loc_C82C54: FLdPr Me
  loc_C82C57: MemLdRfVar from_stack_1.global_52
  loc_C82C5A: NewIfNullPr clsctacte
  loc_C82C5D: from_stack_1 = clsctacte.NumeApre
  loc_C82C62: FLdRfVar var_170
  loc_C82C65: FLdPr Me
  loc_C82C68: VCallAd Control_ID_ExpeCtctTxt
  loc_C82C6B: FStAdFunc var_160
  loc_C82C6E: FLdPr var_160
  loc_C82C71:  = Me.Text
  loc_C82C76: FLdRfVar var_114
  loc_C82C79: FLdRfVar var_2B8
  loc_C82C7C: LitVarStr var_B4, "CompCtct"
  loc_C82C81: PopAdLdVar
  loc_C82C82: FLdRfVar var_264
  loc_C82C85: FLdRfVar var_1C0
  loc_C82C88: FLdPr Me
  loc_C82C8B: MemLdRfVar from_stack_1.global_52
  loc_C82C8E: NewIfNullPr clsctacte
  loc_C82C91: from_stack_1v = clsctacte.RsFrmGet()
  loc_C82C96: FLdPr var_1C0
  loc_C82C99:  = Me.Fields
  loc_C82C9E: FLdPr var_264
  loc_C82CA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C82CA6: FLdPr var_2B8
  loc_C82CA9:  = Me.Value
  loc_C82CAE: FLdRfVar var_174
  loc_C82CB1: FLdPr Me
  loc_C82CB4: VCallAd Control_ID_DetaCtctTxt
  loc_C82CB7: FStAdFunc var_380
  loc_C82CBA: FLdPr var_380
  loc_C82CBD:  = Me.Text
  loc_C82CC2: FLdPr Me
  loc_C82CC5: MemLdI2 global_60
  loc_C82CC8: CI4UI1
  loc_C82CC9: CVarI4
  loc_C82CCD: PopAdLdVar
  loc_C82CCE: LitVarI4
  loc_C82CD6: PopAdLdVar
  loc_C82CD7: FLdPr Me
  loc_C82CDA: VCallAd Control_ID_ctacteFlex
  loc_C82CDD: FStAdFunc var_3F8
  loc_C82CE0: FLdPr var_3F8
  loc_C82CE3: LateIdCallLdVar
  loc_C82CED: CStrVarTmp
  loc_C82CEE: FStStrNoPop var_178
  loc_C82CF1: CR8Str
  loc_C82CF3: PopFPR8
  loc_C82CF4: LitI2_Byte 0
  loc_C82CF6: CR8I2
  loc_C82CF7: PopFPR8
  loc_C82CF8: ILdRf var_174
  loc_C82CFB: LitI4 0
  loc_C82D00: LitI2_Byte 0
  loc_C82D02: FLdRfVar var_114
  loc_C82D05: CStrVarTmp
  loc_C82D06: FStStrNoPop var_17C
  loc_C82D09: ILdRf var_170
  loc_C82D0C: FLdUI1
  loc_C82D10: ILdRf var_3F4
  loc_C82D13: FLdI2 var_3EE
  loc_C82D16: ILdRf var_3EC
  loc_C82D19: ILdRf var_16C
  loc_C82D1C: FLdI2 var_3E6
  loc_C82D1F: LitI2_Byte 0
  loc_C82D21: LitStr vbNullString
  loc_C82D24: FLdRfVar var_A4
  loc_C82D27: CStrVarTmp
  loc_C82D28: CVarStr var_F4
  loc_C82D2B: PopAdLdVar
  loc_C82D2C: FLdFPR8 var_400
  loc_C82D2F: CVarDate var_13C
  loc_C82D33: PopAdLdVar
  loc_C82D34: ILdRf var_164
  loc_C82D37: ILdRf var_3E4
  loc_C82D3A: FLdI2 var_3DE
  loc_C82D3D: LitI2_Byte 0
  loc_C82D3F: LitI2_Byte 0
  loc_C82D41: CUI1I2
  loc_C82D43: FLdI2 var_88
  loc_C82D46: ILdRf var_3D8
  loc_C82D49: FLdI2 var_3DC
  loc_C82D4C: FLdI2 var_3DA
  loc_C82D4F: ILdRf var_11C
  loc_C82D52: FLdI2 var_8E
  loc_C82D55: CUI1I2
  loc_C82D57: FLdPr Me
  loc_C82D5A: MemLdRfVar from_stack_1.global_52
  loc_C82D5D: NewIfNullPr clsctacte
  loc_C82D60: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C82D65: FFreeStr var_178 = "": var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_17C = ""
  loc_C82D76: FFreeAd var_94 = "": var_160 = "": var_1C0 = "": var_264 = "": var_380 = "": var_3F8 = ""
  loc_C82D87: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C82D92: Branch loc_C82F8E
  loc_C82D95: FLdRfVar var_8E
  loc_C82D98: FLdPr Me
  loc_C82D9B: MemLdRfVar from_stack_1.global_52
  loc_C82D9E: NewIfNullPr clsctacte
  loc_C82DA1: from_stack_1 = clsctacte.CodiOfic
  loc_C82DA6: FLdRfVar var_11C
  loc_C82DA9: FLdPr Me
  loc_C82DAC: MemLdRfVar from_stack_1.global_52
  loc_C82DAF: NewIfNullPr clsctacte
  loc_C82DB2: from_stack_1 = clsctacte.CuenCtct
  loc_C82DB7: FLdRfVar var_3DA
  loc_C82DBA: FLdPr Me
  loc_C82DBD: MemLdRfVar from_stack_1.global_52
  loc_C82DC0: NewIfNullPr clsctacte
  loc_C82DC3: from_stack_1 = clsctacte.PeriCtct
  loc_C82DC8: FLdRfVar var_3DC
  loc_C82DCB: FLdPr Me
  loc_C82DCE: MemLdRfVar from_stack_1.global_52
  loc_C82DD1: NewIfNullPr clsctacte
  loc_C82DD4: from_stack_1 = clsctacte.BimeCtct
  loc_C82DD9: FLdRfVar var_3D8
  loc_C82DDC: FLdPr Me
  loc_C82DDF: MemLdRfVar from_stack_1.global_52
  loc_C82DE2: NewIfNullPr clsctacte
  loc_C82DE5: from_stack_1 = clsctacte.NumeCtct
  loc_C82DEA: FLdRfVar var_3DE
  loc_C82DED: FLdPr Me
  loc_C82DF0: MemLdRfVar from_stack_1.global_52
  loc_C82DF3: NewIfNullPr clsctacte
  loc_C82DF6: from_stack_1 = clsctacte.PeriBole
  loc_C82DFB: FLdRfVar var_3E4
  loc_C82DFE: FLdPr Me
  loc_C82E01: MemLdRfVar from_stack_1.global_52
  loc_C82E04: NewIfNullPr clsctacte
  loc_C82E07: from_stack_1 = clsctacte.NumeBole
  loc_C82E0C: FLdRfVar var_164
  loc_C82E0F: FLdPr Me
  loc_C82E12: MemLdRfVar from_stack_1.global_52
  loc_C82E15: NewIfNullPr clsctacte
  loc_C82E18: from_stack_1 = clsctacte.TipoCtct
  loc_C82E1D: LitI2_Byte 0
  loc_C82E1F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C82E24: FStFPR8 var_400
  loc_C82E27: FLdPr Me
  loc_C82E2A: VCallAd Control_ID_FeveCtctMsk
  loc_C82E2D: FStAdFunc var_94
  loc_C82E30: FLdPr var_94
  loc_C82E33: LateIdLdVar var_A4 DispID_22 0
  loc_C82E3A: PopAd
  loc_C82E3C: FLdRfVar var_3E6
  loc_C82E3F: FLdPr Me
  loc_C82E42: MemLdRfVar from_stack_1.global_52
  loc_C82E45: NewIfNullPr clsctacte
  loc_C82E48: from_stack_1 = clsctacte.PeriInfo
  loc_C82E4D: FLdRfVar var_16C
  loc_C82E50: FLdPr Me
  loc_C82E53: MemLdRfVar from_stack_1.global_52
  loc_C82E56: NewIfNullPr clsctacte
  loc_C82E59: from_stack_1 = clsctacte.CodiConc
  loc_C82E5E: FLdRfVar var_3EC
  loc_C82E61: FLdPr Me
  loc_C82E64: MemLdRfVar from_stack_1.global_52
  loc_C82E67: NewIfNullPr clsctacte
  loc_C82E6A: from_stack_1 = clsctacte.CodiFapa
  loc_C82E6F: FLdRfVar var_3EE
  loc_C82E72: FLdPr Me
  loc_C82E75: MemLdRfVar from_stack_1.global_52
  loc_C82E78: NewIfNullPr clsctacte
  loc_C82E7B: from_stack_1 = clsctacte.CuotDefa
  loc_C82E80: FLdRfVar var_3F4
  loc_C82E83: FLdPr Me
  loc_C82E86: MemLdRfVar from_stack_1.global_52
  loc_C82E89: NewIfNullPr clsctacte
  loc_C82E8C: from_stack_1 = clsctacte.NumeApre
  loc_C82E91: FLdRfVar var_170
  loc_C82E94: FLdPr Me
  loc_C82E97: VCallAd Control_ID_ExpeCtctTxt
  loc_C82E9A: FStAdFunc var_160
  loc_C82E9D: FLdPr var_160
  loc_C82EA0:  = Me.Text
  loc_C82EA5: FLdRfVar var_174
  loc_C82EA8: FLdPr Me
  loc_C82EAB: MemLdRfVar from_stack_1.global_52
  loc_C82EAE: NewIfNullPr clsctacte
  loc_C82EB1: from_stack_1 = clsctacte.TifaCtct
  loc_C82EB6: FLdRfVar var_178
  loc_C82EB9: FLdPr Me
  loc_C82EBC: VCallAd Control_ID_DetaCtctTxt
  loc_C82EBF: FStAdFunc var_1C0
  loc_C82EC2: FLdPr var_1C0
  loc_C82EC5:  = Me.Text
  loc_C82ECA: FLdPr Me
  loc_C82ECD: MemLdI2 global_60
  loc_C82ED0: CI4UI1
  loc_C82ED1: CVarI4
  loc_C82ED5: PopAdLdVar
  loc_C82ED6: LitVarI4
  loc_C82EDE: PopAdLdVar
  loc_C82EDF: FLdPr Me
  loc_C82EE2: VCallAd Control_ID_ctacteFlex
  loc_C82EE5: FStAdFunc var_264
  loc_C82EE8: FLdPr var_264
  loc_C82EEB: LateIdCallLdVar
  loc_C82EF5: CStrVarTmp
  loc_C82EF6: FStStrNoPop var_17C
  loc_C82EF9: CR8Str
  loc_C82EFB: PopFPR8
  loc_C82EFC: LitI2_Byte 0
  loc_C82EFE: CR8I2
  loc_C82EFF: PopFPR8
  loc_C82F00: ILdRf var_178
  loc_C82F03: LitI4 0
  loc_C82F08: LitI2_Byte 0
  loc_C82F0A: ILdRf var_174
  loc_C82F0D: ILdRf var_170
  loc_C82F10: FLdUI1
  loc_C82F14: ILdRf var_3F4
  loc_C82F17: FLdI2 var_3EE
  loc_C82F1A: ILdRf var_3EC
  loc_C82F1D: ILdRf var_16C
  loc_C82F20: FLdI2 var_3E6
  loc_C82F23: LitI2_Byte 0
  loc_C82F25: LitStr vbNullString
  loc_C82F28: FLdRfVar var_A4
  loc_C82F2B: CStrVarTmp
  loc_C82F2C: CVarStr var_F4
  loc_C82F2F: PopAdLdVar
  loc_C82F30: FLdFPR8 var_400
  loc_C82F33: CVarDate var_12C
  loc_C82F37: PopAdLdVar
  loc_C82F38: ILdRf var_164
  loc_C82F3B: ILdRf var_3E4
  loc_C82F3E: FLdI2 var_3DE
  loc_C82F41: LitI2_Byte 0
  loc_C82F43: LitI2_Byte 0
  loc_C82F45: CUI1I2
  loc_C82F47: FLdI2 var_88
  loc_C82F4A: ILdRf var_3D8
  loc_C82F4D: FLdI2 var_3DC
  loc_C82F50: FLdI2 var_3DA
  loc_C82F53: ILdRf var_11C
  loc_C82F56: FLdI2 var_8E
  loc_C82F59: CUI1I2
  loc_C82F5B: FLdPr Me
  loc_C82F5E: MemLdRfVar from_stack_1.global_52
  loc_C82F61: NewIfNullPr clsctacte
  loc_C82F64: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C82F69: FFreeStr var_17C = "": var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_C82F7A: FFreeAd var_94 = "": var_160 = "": var_1C0 = ""
  loc_C82F85: FFreeVar var_A4 = "": var_D4 = ""
  loc_C82F8E: FLdPr Me
  loc_C82F91: MemLdI2 global_60
  loc_C82F94: CI4UI1
  loc_C82F95: CVarI4
  loc_C82F99: PopAdLdVar
  loc_C82F9A: LitVarI4
  loc_C82FA2: PopAdLdVar
  loc_C82FA3: FLdPr Me
  loc_C82FA6: VCallAd Control_ID_ctacteFlex
  loc_C82FA9: FStAdFunc var_94
  loc_C82FAC: FLdPr var_94
  loc_C82FAF: LateIdCallLdVar
  loc_C82FB9: CStrVarTmp
  loc_C82FBA: FStStrNoPop var_11C
  loc_C82FBD: LitStr "SS"
  loc_C82FC0: EqStr
  loc_C82FC2: FFree1Str var_11C
  loc_C82FC5: FFree1Ad var_94
  loc_C82FC8: FFree1Var var_A4 = ""
  loc_C82FCB: BranchF loc_C8363E
  loc_C82FCE: FLdPr Me
  loc_C82FD1: MemLdI2 global_60
  loc_C82FD4: CI4UI1
  loc_C82FD5: CVarI4
  loc_C82FD9: PopAdLdVar
  loc_C82FDA: LitVarI4
  loc_C82FE2: PopAdLdVar
  loc_C82FE3: FLdPr Me
  loc_C82FE6: VCallAd Control_ID_ctacteFlex
  loc_C82FE9: FStAdFunc var_1C0
  loc_C82FEC: FLdPr var_1C0
  loc_C82FEF: LateIdCallLdVar
  loc_C82FF9: CStrVarTmp
  loc_C82FFA: CVarStr var_114
  loc_C82FFD: FLdRfVar var_1D0
  loc_C83000: ImpAdCallFPR4  = Trim()
  loc_C83005: FLdPr Me
  loc_C83008: MemLdI2 global_60
  loc_C8300B: CI4UI1
  loc_C8300C: CVarI4
  loc_C83010: PopAdLdVar
  loc_C83011: LitVarI4
  loc_C83019: PopAdLdVar
  loc_C8301A: FLdPr Me
  loc_C8301D: VCallAd Control_ID_ctacteFlex
  loc_C83020: FStAdFunc var_264
  loc_C83023: FLdPr var_264
  loc_C83026: LateIdCallLdVar
  loc_C83030: PopAd
  loc_C83032: LitStr "SELECT * FROM ctacte "
  loc_C83035: LitStr " WHERE ctacte.CodiOfic = "
  loc_C83038: ConcatStr
  loc_C83039: FStStrNoPop var_11C
  loc_C8303C: FLdPr Me
  loc_C8303F: MemLdI2 global_60
  loc_C83042: CI4UI1
  loc_C83043: CVarI4
  loc_C83047: PopAdLdVar
  loc_C83048: LitVarI4
  loc_C83050: PopAdLdVar
  loc_C83051: FLdPr Me
  loc_C83054: VCallAd Control_ID_ctacteFlex
  loc_C83057: FStAdFunc var_94
  loc_C8305A: FLdPr var_94
  loc_C8305D: LateIdCallLdVar
  loc_C83067: CStrVarTmp
  loc_C83068: FStStrNoPop var_164
  loc_C8306B: ConcatStr
  loc_C8306C: FStStrNoPop var_16C
  loc_C8306F: LitStr " AND ctacte.CuenCtct = '"
  loc_C83072: ConcatStr
  loc_C83073: FStStrNoPop var_170
  loc_C83076: FLdPr Me
  loc_C83079: MemLdI2 global_60
  loc_C8307C: CI4UI1
  loc_C8307D: CVarI4
  loc_C83081: PopAdLdVar
  loc_C83082: LitVarI4
  loc_C8308A: PopAdLdVar
  loc_C8308B: FLdPr Me
  loc_C8308E: VCallAd Control_ID_ctacteFlex
  loc_C83091: FStAdFunc var_160
  loc_C83094: FLdPr var_160
  loc_C83097: LateIdCallLdVar
  loc_C830A1: CStrVarTmp
  loc_C830A2: FStStrNoPop var_174
  loc_C830A5: ConcatStr
  loc_C830A6: FStStrNoPop var_178
  loc_C830A9: LitStr "'"
  loc_C830AC: ConcatStr
  loc_C830AD: FStStrNoPop var_17C
  loc_C830B0: LitStr " AND ctacte.PeriCtct = "
  loc_C830B3: ConcatStr
  loc_C830B4: CVarStr var_1F0
  loc_C830B7: LitI4 4
  loc_C830BC: FLdRfVar var_1D0
  loc_C830BF: FLdRfVar var_1E0
  loc_C830C2: ImpAdCallFPR4  = Right(, )
  loc_C830C7: FLdRfVar var_1E0
  loc_C830CA: ConcatVar var_200
  loc_C830CE: LitVarStr var_210, " AND ctacte.BimeCtct = "
  loc_C830D3: ConcatVar var_220
  loc_C830D7: LitI4 1
  loc_C830DC: FLdPr Me
  loc_C830DF: MemLdI2 global_60
  loc_C830E2: CI4UI1
  loc_C830E3: CVarI4
  loc_C830E7: PopAdLdVar
  loc_C830E8: LitVarI4
  loc_C830F0: PopAdLdVar
  loc_C830F1: FLdPr Me
  loc_C830F4: VCallAd Control_ID_ctacteFlex
  loc_C830F7: FStAdFunc var_2B8
  loc_C830FA: FLdPr var_2B8
  loc_C830FD: LateIdCallLdVar
  loc_C83107: CStrVarTmp
  loc_C83108: FStStrNoPop var_2CC
  loc_C8310B: LitStr "/"
  loc_C8310E: LitI4 0
  loc_C83113: FnInStr4
  loc_C83115: LitI4 1
  loc_C8311A: SubI4
  loc_C8311B: CVarI4
  loc_C8311F: LitI4 1
  loc_C83124: FLdRfVar var_274
  loc_C83127: CStrVarTmp
  loc_C83128: CVarStr var_2DC
  loc_C8312B: FLdRfVar var_30C
  loc_C8312E: ImpAdCallFPR4  = Mid(, , )
  loc_C83133: FLdRfVar var_30C
  loc_C83136: ConcatVar var_31C
  loc_C8313A: LitVarStr var_32C, " AND ctacte.NumeCtct = "
  loc_C8313F: ConcatVar var_33C
  loc_C83143: FLdPr Me
  loc_C83146: MemLdI2 global_60
  loc_C83149: CI4UI1
  loc_C8314A: CVarI4
  loc_C8314E: PopAdLdVar
  loc_C8314F: LitVarI4
  loc_C83157: PopAdLdVar
  loc_C83158: FLdPr Me
  loc_C8315B: VCallAd Control_ID_ctacteFlex
  loc_C8315E: FStAdFunc var_380
  loc_C83161: FLdPr var_380
  loc_C83164: LateIdCallLdVar
  loc_C8316E: CStrVarTmp
  loc_C8316F: CVarStr var_3A0
  loc_C83172: ConcatVar var_3B0
  loc_C83176: LitVarStr var_3C0, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C8317B: ConcatVar var_3D0
  loc_C8317F: CStrVarVal var_3D4
  loc_C83183: FLdPr Me
  loc_C83186: MemLdRfVar from_stack_1.global_52
  loc_C83189: NewIfNullPr clsctacte
  loc_C8318C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C83191: FFreeStr var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_2CC = ""
  loc_C831A6: FFreeAd var_94 = "": var_160 = "": var_1C0 = "": var_264 = "": var_2B8 = ""
  loc_C831B5: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_1D0 = "": var_1F0 = "": var_1E0 = "": var_200 = "": var_274 = "": var_2C8 = "": var_2DC = "": var_2FC = "": var_220 = "": var_30C = "": var_31C = "": var_390 = "": var_33C = "": var_3A0 = "": var_3B0 = ""
  loc_C831E0: FLdRfVar var_3D8
  loc_C831E3: FLdPr Me
  loc_C831E6: MemLdRfVar from_stack_1.global_52
  loc_C831E9: NewIfNullPr clsctacte
  loc_C831EC: from_stack_1 = clsctacte.RecordCount
  loc_C831F1: ILdRf var_3D8
  loc_C831F4: LitI4 1
  loc_C831F9: GeI4
  loc_C831FA: BranchF loc_C8363E
  loc_C831FD: FLdPr Me
  loc_C83200: MemLdRfVar from_stack_1.global_52
  loc_C83203: NewIfNullPr clsctacte
  loc_C83206: Call clsctacte.MoveLast()
  loc_C8320B: FLdRfVar var_8E
  loc_C8320E: FLdPr Me
  loc_C83211: MemLdRfVar from_stack_1.global_52
  loc_C83214: NewIfNullPr clsctacte
  loc_C83217: from_stack_1 = clsctacte.MoviCtct
  loc_C8321C: FLdI2 var_8E
  loc_C8321F: LitI2_Byte 1
  loc_C83221: AddI2
  loc_C83222: FStI2 var_88
  loc_C83225: LitVarStr var_B4, vbNullString
  loc_C8322A: PopAdLdVar
  loc_C8322B: FLdPr Me
  loc_C8322E: VCallAd Control_ID_FeveCtctMsk
  loc_C83231: FStAdFunc var_94
  loc_C83234: FLdPr var_94
  loc_C83237: LateIdSt
  loc_C8323C: FFree1Ad var_94
  loc_C8323F: LitStr "Municipalidad de Guaymallén"
  loc_C83242: LitStr "Municipalidad de Guaymallén"
  loc_C83245: EqStr
  loc_C83247: BranchF loc_C8345F
  loc_C8324A: FLdRfVar var_8E
  loc_C8324D: FLdPr Me
  loc_C83250: MemLdRfVar from_stack_1.global_52
  loc_C83253: NewIfNullPr clsctacte
  loc_C83256: from_stack_1 = clsctacte.CodiOfic
  loc_C8325B: FLdRfVar var_11C
  loc_C8325E: FLdPr Me
  loc_C83261: MemLdRfVar from_stack_1.global_52
  loc_C83264: NewIfNullPr clsctacte
  loc_C83267: from_stack_1 = clsctacte.CuenCtct
  loc_C8326C: FLdRfVar var_3DA
  loc_C8326F: FLdPr Me
  loc_C83272: MemLdRfVar from_stack_1.global_52
  loc_C83275: NewIfNullPr clsctacte
  loc_C83278: from_stack_1 = clsctacte.PeriCtct
  loc_C8327D: FLdRfVar var_3DC
  loc_C83280: FLdPr Me
  loc_C83283: MemLdRfVar from_stack_1.global_52
  loc_C83286: NewIfNullPr clsctacte
  loc_C83289: from_stack_1 = clsctacte.BimeCtct
  loc_C8328E: FLdRfVar var_3D8
  loc_C83291: FLdPr Me
  loc_C83294: MemLdRfVar from_stack_1.global_52
  loc_C83297: NewIfNullPr clsctacte
  loc_C8329A: from_stack_1 = clsctacte.NumeCtct
  loc_C8329F: FLdRfVar var_3DE
  loc_C832A2: FLdPr Me
  loc_C832A5: MemLdRfVar from_stack_1.global_52
  loc_C832A8: NewIfNullPr clsctacte
  loc_C832AB: from_stack_1 = clsctacte.PeriBole
  loc_C832B0: FLdRfVar var_3E4
  loc_C832B3: FLdPr Me
  loc_C832B6: MemLdRfVar from_stack_1.global_52
  loc_C832B9: NewIfNullPr clsctacte
  loc_C832BC: from_stack_1 = clsctacte.NumeBole
  loc_C832C1: FLdRfVar var_164
  loc_C832C4: FLdPr Me
  loc_C832C7: MemLdRfVar from_stack_1.global_52
  loc_C832CA: NewIfNullPr clsctacte
  loc_C832CD: from_stack_1 = clsctacte.TipoCtct
  loc_C832D2: LitI2_Byte 0
  loc_C832D4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C832D9: FStFPR8 var_400
  loc_C832DC: FLdPr Me
  loc_C832DF: VCallAd Control_ID_FeveCtctMsk
  loc_C832E2: FStAdFunc var_94
  loc_C832E5: FLdPr var_94
  loc_C832E8: LateIdLdVar var_A4 DispID_22 0
  loc_C832EF: PopAd
  loc_C832F1: FLdRfVar var_3E6
  loc_C832F4: FLdPr Me
  loc_C832F7: MemLdRfVar from_stack_1.global_52
  loc_C832FA: NewIfNullPr clsctacte
  loc_C832FD: from_stack_1 = clsctacte.PeriInfo
  loc_C83302: FLdRfVar var_16C
  loc_C83305: FLdPr Me
  loc_C83308: MemLdRfVar from_stack_1.global_52
  loc_C8330B: NewIfNullPr clsctacte
  loc_C8330E: from_stack_1 = clsctacte.CodiConc
  loc_C83313: FLdRfVar var_3EC
  loc_C83316: FLdPr Me
  loc_C83319: MemLdRfVar from_stack_1.global_52
  loc_C8331C: NewIfNullPr clsctacte
  loc_C8331F: from_stack_1 = clsctacte.CodiFapa
  loc_C83324: FLdRfVar var_3EE
  loc_C83327: FLdPr Me
  loc_C8332A: MemLdRfVar from_stack_1.global_52
  loc_C8332D: NewIfNullPr clsctacte
  loc_C83330: from_stack_1 = clsctacte.CuotDefa
  loc_C83335: FLdRfVar var_3F4
  loc_C83338: FLdPr Me
  loc_C8333B: MemLdRfVar from_stack_1.global_52
  loc_C8333E: NewIfNullPr clsctacte
  loc_C83341: from_stack_1 = clsctacte.NumeApre
  loc_C83346: FLdRfVar var_170
  loc_C83349: FLdPr Me
  loc_C8334C: VCallAd Control_ID_ExpeCtctTxt
  loc_C8334F: FStAdFunc var_160
  loc_C83352: FLdPr var_160
  loc_C83355:  = Me.Text
  loc_C8335A: FLdRfVar var_F4
  loc_C8335D: FLdRfVar var_2B8
  loc_C83360: LitVarStr var_B4, "CompCtct"
  loc_C83365: PopAdLdVar
  loc_C83366: FLdRfVar var_264
  loc_C83369: FLdRfVar var_1C0
  loc_C8336C: FLdPr Me
  loc_C8336F: MemLdRfVar from_stack_1.global_52
  loc_C83372: NewIfNullPr clsctacte
  loc_C83375: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8337A: FLdPr var_1C0
  loc_C8337D:  = Me.Fields
  loc_C83382: FLdPr var_264
  loc_C83385: from_stack_2 = Me.Item(from_stack_1)
  loc_C8338A: FLdPr var_2B8
  loc_C8338D:  = Me.Value
  loc_C83392: FLdRfVar var_174
  loc_C83395: FLdPr Me
  loc_C83398: VCallAd Control_ID_DetaCtctTxt
  loc_C8339B: FStAdFunc var_380
  loc_C8339E: FLdPr var_380
  loc_C833A1:  = Me.Text
  loc_C833A6: FLdRfVar var_178
  loc_C833A9: FLdPr Me
  loc_C833AC: VCallAd Control_ID_ImpoCtctTxt
  loc_C833AF: FStAdFunc var_3F8
  loc_C833B2: FLdPr var_3F8
  loc_C833B5:  = Me.Text
  loc_C833BA: ILdRf var_178
  loc_C833BD: CR8Str
  loc_C833BF: PopFPR8
  loc_C833C0: LitI2_Byte 0
  loc_C833C2: CR8I2
  loc_C833C3: PopFPR8
  loc_C833C4: ILdRf var_174
  loc_C833C7: LitI4 0
  loc_C833CC: LitI2_Byte 0
  loc_C833CE: FLdRfVar var_F4
  loc_C833D1: CStrVarTmp
  loc_C833D2: FStStrNoPop var_17C
  loc_C833D5: ILdRf var_170
  loc_C833D8: FLdUI1
  loc_C833DC: ILdRf var_3F4
  loc_C833DF: FLdI2 var_3EE
  loc_C833E2: ILdRf var_3EC
  loc_C833E5: ILdRf var_16C
  loc_C833E8: FLdI2 var_3E6
  loc_C833EB: LitI2_Byte 0
  loc_C833ED: LitStr vbNullString
  loc_C833F0: FLdRfVar var_A4
  loc_C833F3: CStrVarTmp
  loc_C833F4: CVarStr var_D4
  loc_C833F7: PopAdLdVar
  loc_C833F8: FLdFPR8 var_400
  loc_C833FB: CVarDate var_C4
  loc_C833FF: PopAdLdVar
  loc_C83400: ILdRf var_164
  loc_C83403: ILdRf var_3E4
  loc_C83406: FLdI2 var_3DE
  loc_C83409: LitI2_Byte 0
  loc_C8340B: LitI2_Byte 0
  loc_C8340D: CUI1I2
  loc_C8340F: FLdI2 var_88
  loc_C83412: ILdRf var_3D8
  loc_C83415: FLdI2 var_3DC
  loc_C83418: FLdI2 var_3DA
  loc_C8341B: ILdRf var_11C
  loc_C8341E: FLdI2 var_8E
  loc_C83421: CUI1I2
  loc_C83423: FLdPr Me
  loc_C83426: MemLdRfVar from_stack_1.global_52
  loc_C83429: NewIfNullPr clsctacte
  loc_C8342C: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C83431: FFreeStr var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_17C = "": var_174 = ""
  loc_C83442: FFreeAd var_94 = "": var_160 = "": var_1C0 = "": var_264 = "": var_380 = "": var_3F8 = ""
  loc_C83453: FFreeVar var_A4 = "": var_D4 = ""
  loc_C8345C: Branch loc_C8363E
  loc_C8345F: FLdRfVar var_8E
  loc_C83462: FLdPr Me
  loc_C83465: MemLdRfVar from_stack_1.global_52
  loc_C83468: NewIfNullPr clsctacte
  loc_C8346B: from_stack_1 = clsctacte.CodiOfic
  loc_C83470: FLdRfVar var_11C
  loc_C83473: FLdPr Me
  loc_C83476: MemLdRfVar from_stack_1.global_52
  loc_C83479: NewIfNullPr clsctacte
  loc_C8347C: from_stack_1 = clsctacte.CuenCtct
  loc_C83481: FLdRfVar var_3DA
  loc_C83484: FLdPr Me
  loc_C83487: MemLdRfVar from_stack_1.global_52
  loc_C8348A: NewIfNullPr clsctacte
  loc_C8348D: from_stack_1 = clsctacte.PeriCtct
  loc_C83492: FLdRfVar var_3DC
  loc_C83495: FLdPr Me
  loc_C83498: MemLdRfVar from_stack_1.global_52
  loc_C8349B: NewIfNullPr clsctacte
  loc_C8349E: from_stack_1 = clsctacte.BimeCtct
  loc_C834A3: FLdRfVar var_3D8
  loc_C834A6: FLdPr Me
  loc_C834A9: MemLdRfVar from_stack_1.global_52
  loc_C834AC: NewIfNullPr clsctacte
  loc_C834AF: from_stack_1 = clsctacte.NumeCtct
  loc_C834B4: FLdRfVar var_3DE
  loc_C834B7: FLdPr Me
  loc_C834BA: MemLdRfVar from_stack_1.global_52
  loc_C834BD: NewIfNullPr clsctacte
  loc_C834C0: from_stack_1 = clsctacte.PeriBole
  loc_C834C5: FLdRfVar var_3E4
  loc_C834C8: FLdPr Me
  loc_C834CB: MemLdRfVar from_stack_1.global_52
  loc_C834CE: NewIfNullPr clsctacte
  loc_C834D1: from_stack_1 = clsctacte.NumeBole
  loc_C834D6: FLdRfVar var_164
  loc_C834D9: FLdPr Me
  loc_C834DC: MemLdRfVar from_stack_1.global_52
  loc_C834DF: NewIfNullPr clsctacte
  loc_C834E2: from_stack_1 = clsctacte.TipoCtct
  loc_C834E7: LitI2_Byte 0
  loc_C834E9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C834EE: FStFPR8 var_400
  loc_C834F1: FLdPr Me
  loc_C834F4: VCallAd Control_ID_FeveCtctMsk
  loc_C834F7: FStAdFunc var_94
  loc_C834FA: FLdPr var_94
  loc_C834FD: LateIdLdVar var_A4 DispID_22 0
  loc_C83504: PopAd
  loc_C83506: FLdRfVar var_3E6
  loc_C83509: FLdPr Me
  loc_C8350C: MemLdRfVar from_stack_1.global_52
  loc_C8350F: NewIfNullPr clsctacte
  loc_C83512: from_stack_1 = clsctacte.PeriInfo
  loc_C83517: FLdRfVar var_16C
  loc_C8351A: FLdPr Me
  loc_C8351D: MemLdRfVar from_stack_1.global_52
  loc_C83520: NewIfNullPr clsctacte
  loc_C83523: from_stack_1 = clsctacte.CodiConc
  loc_C83528: FLdRfVar var_3EC
  loc_C8352B: FLdPr Me
  loc_C8352E: MemLdRfVar from_stack_1.global_52
  loc_C83531: NewIfNullPr clsctacte
  loc_C83534: from_stack_1 = clsctacte.CodiFapa
  loc_C83539: FLdRfVar var_3EE
  loc_C8353C: FLdPr Me
  loc_C8353F: MemLdRfVar from_stack_1.global_52
  loc_C83542: NewIfNullPr clsctacte
  loc_C83545: from_stack_1 = clsctacte.CuotDefa
  loc_C8354A: FLdRfVar var_3F4
  loc_C8354D: FLdPr Me
  loc_C83550: MemLdRfVar from_stack_1.global_52
  loc_C83553: NewIfNullPr clsctacte
  loc_C83556: from_stack_1 = clsctacte.NumeApre
  loc_C8355B: FLdRfVar var_170
  loc_C8355E: FLdPr Me
  loc_C83561: VCallAd Control_ID_ExpeCtctTxt
  loc_C83564: FStAdFunc var_160
  loc_C83567: FLdPr var_160
  loc_C8356A:  = Me.Text
  loc_C8356F: FLdRfVar var_174
  loc_C83572: FLdPr Me
  loc_C83575: MemLdRfVar from_stack_1.global_52
  loc_C83578: NewIfNullPr clsctacte
  loc_C8357B: from_stack_1 = clsctacte.TifaCtct
  loc_C83580: FLdRfVar var_178
  loc_C83583: FLdPr Me
  loc_C83586: VCallAd Control_ID_DetaCtctTxt
  loc_C83589: FStAdFunc var_1C0
  loc_C8358C: FLdPr var_1C0
  loc_C8358F:  = Me.Text
  loc_C83594: FLdRfVar var_17C
  loc_C83597: FLdPr Me
  loc_C8359A: VCallAd Control_ID_ImpoCtctTxt
  loc_C8359D: FStAdFunc var_264
  loc_C835A0: FLdPr var_264
  loc_C835A3:  = Me.Text
  loc_C835A8: ILdRf var_17C
  loc_C835AB: CR8Str
  loc_C835AD: PopFPR8
  loc_C835AE: LitI2_Byte 0
  loc_C835B0: CR8I2
  loc_C835B1: PopFPR8
  loc_C835B2: ILdRf var_178
  loc_C835B5: LitI4 0
  loc_C835BA: LitI2_Byte 0
  loc_C835BC: ILdRf var_174
  loc_C835BF: ILdRf var_170
  loc_C835C2: FLdUI1
  loc_C835C6: ILdRf var_3F4
  loc_C835C9: FLdI2 var_3EE
  loc_C835CC: ILdRf var_3EC
  loc_C835CF: ILdRf var_16C
  loc_C835D2: FLdI2 var_3E6
  loc_C835D5: LitI2_Byte 0
  loc_C835D7: LitStr vbNullString
  loc_C835DA: FLdRfVar var_A4
  loc_C835DD: CStrVarTmp
  loc_C835DE: CVarStr var_D4
  loc_C835E1: PopAdLdVar
  loc_C835E2: FLdFPR8 var_400
  loc_C835E5: CVarDate var_B4
  loc_C835E9: PopAdLdVar
  loc_C835EA: ILdRf var_164
  loc_C835ED: ILdRf var_3E4
  loc_C835F0: FLdI2 var_3DE
  loc_C835F3: LitI2_Byte 0
  loc_C835F5: LitI2_Byte 0
  loc_C835F7: CUI1I2
  loc_C835F9: FLdI2 var_88
  loc_C835FC: ILdRf var_3D8
  loc_C835FF: FLdI2 var_3DC
  loc_C83602: FLdI2 var_3DA
  loc_C83605: ILdRf var_11C
  loc_C83608: FLdI2 var_8E
  loc_C8360B: CUI1I2
  loc_C8360D: FLdPr Me
  loc_C83610: MemLdRfVar from_stack_1.global_52
  loc_C83613: NewIfNullPr clsctacte
  loc_C83616: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C8361B: FFreeStr var_11C = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_C8362C: FFreeAd var_94 = "": var_160 = "": var_1C0 = ""
  loc_C83637: FFreeVar var_A4 = ""
  loc_C8363E: FLdPr Me
  loc_C83641: MemLdRfVar from_stack_1.global_60
  loc_C83644: NextI2 var_168, loc_C828A1
  loc_C83649: LitStr "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_C8364C: ImpAdLdUI1
  loc_C83650: CStrI2
  loc_C83652: FStStrNoPop var_11C
  loc_C83655: ConcatStr
  loc_C83656: FStStrNoPop var_164
  loc_C83659: LitStr " AND CuenCtct = '"
  loc_C8365C: ConcatStr
  loc_C8365D: FStStrNoPop var_170
  loc_C83660: FLdRfVar var_16C
  loc_C83663: FLdPr Me
  loc_C83666: VCallAd Control_ID_NumeCtaTxt
  loc_C83669: FStAdFunc var_94
  loc_C8366C: FLdPr var_94
  loc_C8366F:  = Me.Text
  loc_C83674: ILdRf var_16C
  loc_C83677: ConcatStr
  loc_C83678: FStStrNoPop var_174
  loc_C8367B: LitStr "'"
  loc_C8367E: ConcatStr
  loc_C8367F: FStStrNoPop var_178
  loc_C83682: LitStr " AND NumeApre <> 0"
  loc_C83685: ConcatStr
  loc_C83686: FStStrNoPop var_17C
  loc_C83689: LitStr " GROUP BY CodiOfic, CuenCtct, NumeApre"
  loc_C8368C: ConcatStr
  loc_C8368D: FStStrNoPop var_2CC
  loc_C83690: FLdPr Me
  loc_C83693: MemLdRfVar from_stack_1.global_52
  loc_C83696: NewIfNullPr clsctacte
  loc_C83699: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8369E: FFreeStr var_11C = "": var_164 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = ""
  loc_C836B1: FFree1Ad var_94
  loc_C836B4: FLdRfVar var_3D8
  loc_C836B7: FLdPr Me
  loc_C836BA: MemLdRfVar from_stack_1.global_52
  loc_C836BD: NewIfNullPr clsctacte
  loc_C836C0: from_stack_1 = clsctacte.RecordCount
  loc_C836C5: ILdRf var_3D8
  loc_C836C8: LitI4 0
  loc_C836CD: GtI4
  loc_C836CE: BranchF loc_C83832
  loc_C836D1: FLdPr Me
  loc_C836D4: MemLdRfVar from_stack_1.global_52
  loc_C836D7: NewIfNullPr clsctacte
  loc_C836DA: Call clsctacte.MoveFirst()
  loc_C836DF: FLdRfVar var_8E
  loc_C836E2: FLdPr Me
  loc_C836E5: MemLdRfVar from_stack_1.global_52
  loc_C836E8: NewIfNullPr clsctacte
  loc_C836EB: from_stack_1 = clsctacte.EOF
  loc_C836F0: FLdI2 var_8E
  loc_C836F3: NotI4
  loc_C836F4: BranchF loc_C83832
  loc_C836F7: FLdRfVar var_8E
  loc_C836FA: FLdPr Me
  loc_C836FD: MemLdRfVar from_stack_1.global_52
  loc_C83700: NewIfNullPr clsctacte
  loc_C83703: from_stack_1 = clsctacte.CodiOfic
  loc_C83708: FLdRfVar var_11C
  loc_C8370B: FLdPr Me
  loc_C8370E: MemLdRfVar from_stack_1.global_52
  loc_C83711: NewIfNullPr clsctacte
  loc_C83714: from_stack_1 = clsctacte.CuenCtct
  loc_C83719: FLdRfVar var_3D8
  loc_C8371C: FLdPr Me
  loc_C8371F: MemLdRfVar from_stack_1.global_52
  loc_C83722: NewIfNullPr clsctacte
  loc_C83725: from_stack_1 = clsctacte.NumeApre
  loc_C8372A: ILdRf var_3D8
  loc_C8372D: ILdRf var_11C
  loc_C83730: FLdI2 var_8E
  loc_C83733: CUI1I2
  loc_C83735: ImpAdCallI2 Proc_270_133_AEB914(, , )
  loc_C8373A: LitI2_Byte 0
  loc_C8373C: EqI2
  loc_C8373D: FFree1Str var_11C
  loc_C83740: BranchF loc_C83821
  loc_C83743: LitStr " UPDATE apremio SET CancApre = 1 WHERE NumeApre = "
  loc_C83746: FLdRfVar var_3D8
  loc_C83749: FLdPr Me
  loc_C8374C: MemLdRfVar from_stack_1.global_52
  loc_C8374F: NewIfNullPr clsctacte
  loc_C83752: from_stack_1 = clsctacte.NumeApre
  loc_C83757: ILdRf var_3D8
  loc_C8375A: CStrI4
  loc_C8375C: FStStrNoPop var_11C
  loc_C8375F: ConcatStr
  loc_C83760: FStStrNoPop var_164
  loc_C83763: FLdPr Me
  loc_C83766: MemLdRfVar from_stack_1.global_52
  loc_C83769: NewIfNullPr clsctacte
  loc_C8376C: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_C83771: FFreeStr var_11C = ""
  loc_C83778: FLdRfVar var_3D8
  loc_C8377B: FLdPr Me
  loc_C8377E: MemLdRfVar from_stack_1.global_52
  loc_C83781: NewIfNullPr clsctacte
  loc_C83784: from_stack_1 = clsctacte.NumeApre
  loc_C83789: ILdRf var_3D8
  loc_C8378C: ImpAdCallI2 Proc_270_134_A40038()
  loc_C83791: LitI2_Byte &HFF
  loc_C83793: EqI2
  loc_C83794: BranchF loc_C83821
  loc_C83797: LitStr "Municipalidad de Guaymallén"
  loc_C8379A: LitStr "Municipalidad de Lavalle"
  loc_C8379D: EqStr
  loc_C8379F: LitStr "Municipalidad de Guaymallén"
  loc_C837A2: LitStr "Municipalidad de Guaymallén"
  loc_C837A5: EqStr
  loc_C837A7: OrI4
  loc_C837A8: LitStr "Municipalidad de Guaymallén"
  loc_C837AB: LitStr "Municipalidad de Tupungato"
  loc_C837AE: EqStr
  loc_C837B0: OrI4
  loc_C837B1: BranchF loc_C837EC
  loc_C837B4: LitStr " UPDATE apremio SET EstaApre = 7, ObseApre = 'CANCELADO - POR MEDIO DE PRESCRIPCIÓN o CONDONACIÓN o EXENCIÓN' WHERE NumeApre = "
  loc_C837B7: FLdRfVar var_3D8
  loc_C837BA: FLdPr Me
  loc_C837BD: MemLdRfVar from_stack_1.global_52
  loc_C837C0: NewIfNullPr clsctacte
  loc_C837C3: from_stack_1 = clsctacte.NumeApre
  loc_C837C8: ILdRf var_3D8
  loc_C837CB: CStrI4
  loc_C837CD: FStStrNoPop var_11C
  loc_C837D0: ConcatStr
  loc_C837D1: FStStrNoPop var_164
  loc_C837D4: FLdPr Me
  loc_C837D7: MemLdRfVar from_stack_1.global_52
  loc_C837DA: NewIfNullPr clsctacte
  loc_C837DD: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_C837E2: FFreeStr var_11C = ""
  loc_C837E9: Branch loc_C83821
  loc_C837EC: LitStr " UPDATE apremio SET EstaApre = 'Pagado y Actualizado' WHERE NumeApre = "
  loc_C837EF: FLdRfVar var_3D8
  loc_C837F2: FLdPr Me
  loc_C837F5: MemLdRfVar from_stack_1.global_52
  loc_C837F8: NewIfNullPr clsctacte
  loc_C837FB: from_stack_1 = clsctacte.NumeApre
  loc_C83800: ILdRf var_3D8
  loc_C83803: CStrI4
  loc_C83805: FStStrNoPop var_11C
  loc_C83808: ConcatStr
  loc_C83809: FStStrNoPop var_164
  loc_C8380C: FLdPr Me
  loc_C8380F: MemLdRfVar from_stack_1.global_52
  loc_C83812: NewIfNullPr clsctacte
  loc_C83815: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_C8381A: FFreeStr var_11C = ""
  loc_C83821: FLdPr Me
  loc_C83824: MemLdRfVar from_stack_1.global_52
  loc_C83827: NewIfNullPr clsctacte
  loc_C8382A: Call clsctacte.MoveSiguiente()
  loc_C8382F: Branch loc_C836DF
  loc_C83832: FLdRfVar var_8E
  loc_C83835: FLdPr Me
  loc_C83838: VCallAd Control_ID_PrescripcionOpt
  loc_C8383B: FStAdFunc var_94
  loc_C8383E: FLdPr var_94
  loc_C83841:  = Me.Value
  loc_C83846: LitVarStr var_104, "La "
  loc_C8384B: LitVarStr var_E4, "CONDONACIÓN"
  loc_C83850: FStVarCopyObj var_D4
  loc_C83853: FLdRfVar var_D4
  loc_C83856: LitVarStr var_C4, "PRESCRIPCIÓN"
  loc_C8385B: FStVarCopyObj var_A4
  loc_C8385E: FLdRfVar var_A4
  loc_C83861: FLdI2 var_8E
  loc_C83864: LitI2_Byte &HFF
  loc_C83866: EqI2
  loc_C83867: CVarBoolI2 var_B4
  loc_C8386B: FLdRfVar var_F4
  loc_C8386E: ImpAdCallFPR4  = IIf(, , )
  loc_C83873: FLdRfVar var_F4
  loc_C83876: ConcatVar var_114
  loc_C8387A: LitVarStr var_12C, " de DEUDA se realizo con exito"
  loc_C8387F: ConcatVar var_1D0
  loc_C83883: CStrVarTmp
  loc_C83884: FStStrNoPop var_11C
  loc_C83887: FLdPr Me
  loc_C8388A: MemStStrCopy
  loc_C8388E: FFree1Str var_11C
  loc_C83891: FFree1Ad var_94
  loc_C83894: FFreeVar var_B4 = "": var_A4 = "": var_D4 = "": var_F4 = "": var_114 = ""
  loc_C838A3: FLdPr Me
  loc_C838A6: MemLdStr global_92
  loc_C838A9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C838AE: Call Proc_24_27_B18E68()
  loc_C838B3: LitI4 1
  loc_C838B8: LitI4 1
  loc_C838BD: LitVarStr var_C4, "0.00"
  loc_C838C2: FStVarCopyObj var_D4
  loc_C838C5: FLdRfVar var_D4
  loc_C838C8: LitVarI2 var_A4, 0
  loc_C838CD: FLdRfVar var_F4
  loc_C838D0: ImpAdCallFPR4  = Format(, )
  loc_C838D5: FLdRfVar var_F4
  loc_C838D8: CStrVarVal var_11C
  loc_C838DC: FLdPr Me
  loc_C838DF: VCallAd Control_ID_txtTotaApre
  loc_C838E2: FStAdFunc var_94
  loc_C838E5: FLdPr var_94
  loc_C838E8: Me.Text = from_stack_1
  loc_C838ED: FFree1Str var_11C
  loc_C838F0: FFree1Ad var_94
  loc_C838F3: FFreeVar var_A4 = "": var_D4 = ""
  loc_C838FC: LitI4 1
  loc_C83901: LitI4 1
  loc_C83906: LitVarStr var_C4, "0.00"
  loc_C8390B: FStVarCopyObj var_D4
  loc_C8390E: FLdRfVar var_D4
  loc_C83911: LitVarI2 var_A4, 0
  loc_C83916: FLdRfVar var_F4
  loc_C83919: ImpAdCallFPR4  = Format(, )
  loc_C8391E: FLdRfVar var_F4
  loc_C83921: CStrVarVal var_11C
  loc_C83925: FLdPr Me
  loc_C83928: VCallAd Control_ID_txtTotaDere
  loc_C8392B: FStAdFunc var_94
  loc_C8392E: FLdPr var_94
  loc_C83931: Me.Text = from_stack_1
  loc_C83936: FFree1Str var_11C
  loc_C83939: FFree1Ad var_94
  loc_C8393C: FFreeVar var_A4 = "": var_D4 = ""
  loc_C83945: LitI4 1
  loc_C8394A: LitI4 1
  loc_C8394F: LitVarStr var_C4, "0.00"
  loc_C83954: FStVarCopyObj var_D4
  loc_C83957: FLdRfVar var_D4
  loc_C8395A: LitVarI2 var_A4, 0
  loc_C8395F: FLdRfVar var_F4
  loc_C83962: ImpAdCallFPR4  = Format(, )
  loc_C83967: FLdRfVar var_F4
  loc_C8396A: CStrVarVal var_11C
  loc_C8396E: FLdPr Me
  loc_C83971: VCallAd Control_ID_txtTotaReca
  loc_C83974: FStAdFunc var_94
  loc_C83977: FLdPr var_94
  loc_C8397A: Me.Text = from_stack_1
  loc_C8397F: FFree1Str var_11C
  loc_C83982: FFree1Ad var_94
  loc_C83985: FFreeVar var_A4 = "": var_D4 = ""
  loc_C8398E: LitI4 1
  loc_C83993: LitI4 1
  loc_C83998: LitVarStr var_C4, "0.00"
  loc_C8399D: FStVarCopyObj var_D4
  loc_C839A0: FLdRfVar var_D4
  loc_C839A3: LitVarI2 var_A4, 0
  loc_C839A8: FLdRfVar var_F4
  loc_C839AB: ImpAdCallFPR4  = Format(, )
  loc_C839B0: FLdRfVar var_F4
  loc_C839B3: CStrVarVal var_11C
  loc_C839B7: FLdPr Me
  loc_C839BA: VCallAd Control_ID_txtTotal
  loc_C839BD: FStAdFunc var_94
  loc_C839C0: FLdPr var_94
  loc_C839C3: Me.Text = from_stack_1
  loc_C839C8: FFree1Str var_11C
  loc_C839CB: FFree1Ad var_94
  loc_C839CE: FFreeVar var_A4 = "": var_D4 = ""
  loc_C839D7: LitI4 1
  loc_C839DC: LitI4 1
  loc_C839E1: LitVarStr var_C4, "0.00"
  loc_C839E6: FStVarCopyObj var_D4
  loc_C839E9: FLdRfVar var_D4
  loc_C839EC: LitVarI2 var_A4, 0
  loc_C839F1: FLdRfVar var_F4
  loc_C839F4: ImpAdCallFPR4  = Format(, )
  loc_C839F9: FLdRfVar var_F4
  loc_C839FC: CStrVarVal var_11C
  loc_C83A00: FLdPr Me
  loc_C83A03: VCallAd Control_ID_txtDereSele
  loc_C83A06: FStAdFunc var_94
  loc_C83A09: FLdPr var_94
  loc_C83A0C: Me.Text = from_stack_1
  loc_C83A11: FFree1Str var_11C
  loc_C83A14: FFree1Ad var_94
  loc_C83A17: FFreeVar var_A4 = "": var_D4 = ""
  loc_C83A20: LitI4 1
  loc_C83A25: LitI4 1
  loc_C83A2A: LitVarStr var_C4, "0.00"
  loc_C83A2F: FStVarCopyObj var_D4
  loc_C83A32: FLdRfVar var_D4
  loc_C83A35: LitVarI2 var_A4, 0
  loc_C83A3A: FLdRfVar var_F4
  loc_C83A3D: ImpAdCallFPR4  = Format(, )
  loc_C83A42: FLdRfVar var_F4
  loc_C83A45: CStrVarVal var_11C
  loc_C83A49: FLdPr Me
  loc_C83A4C: VCallAd Control_ID_txtRecaSele
  loc_C83A4F: FStAdFunc var_94
  loc_C83A52: FLdPr var_94
  loc_C83A55: Me.Text = from_stack_1
  loc_C83A5A: FFree1Str var_11C
  loc_C83A5D: FFree1Ad var_94
  loc_C83A60: FFreeVar var_A4 = "": var_D4 = ""
  loc_C83A69: LitI4 1
  loc_C83A6E: LitI4 1
  loc_C83A73: LitVarStr var_C4, "0.00"
  loc_C83A78: FStVarCopyObj var_D4
  loc_C83A7B: FLdRfVar var_D4
  loc_C83A7E: LitVarI2 var_A4, 0
  loc_C83A83: FLdRfVar var_F4
  loc_C83A86: ImpAdCallFPR4  = Format(, )
  loc_C83A8B: FLdRfVar var_F4
  loc_C83A8E: CStrVarVal var_11C
  loc_C83A92: FLdPr Me
  loc_C83A95: VCallAd Control_ID_txtTotaSele
  loc_C83A98: FStAdFunc var_94
  loc_C83A9B: FLdPr var_94
  loc_C83A9E: Me.Text = from_stack_1
  loc_C83AA3: FFree1Str var_11C
  loc_C83AA6: FFree1Ad var_94
  loc_C83AA9: FFreeVar var_A4 = "": var_D4 = ""
  loc_C83AB2: LitI2_Byte 0
  loc_C83AB4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C83AB9: CStrDate
  loc_C83ABB: CVarStr var_A4
  loc_C83ABE: PopAdLdVar
  loc_C83ABF: FLdPr Me
  loc_C83AC2: VCallAd Control_ID_FechVencMsk
  loc_C83AC5: FStAdFunc var_94
  loc_C83AC8: FLdPr var_94
  loc_C83ACB: LateIdSt
  loc_C83AD0: FFree1Ad var_94
  loc_C83AD3: FFree1Var var_A4 = ""
  loc_C83AD6: LitI2_Byte 0
  loc_C83AD8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C83ADD: CStrDate
  loc_C83ADF: CVarStr var_A4
  loc_C83AE2: PopAdLdVar
  loc_C83AE3: FLdPr Me
  loc_C83AE6: VCallAd Control_ID_FeveCtctMsk
  loc_C83AE9: FStAdFunc var_94
  loc_C83AEC: FLdPr var_94
  loc_C83AEF: LateIdSt
  loc_C83AF4: FFree1Ad var_94
  loc_C83AF7: FFree1Var var_A4 = ""
  loc_C83AFA: LitI4 1
  loc_C83AFF: LitI4 1
  loc_C83B04: LitVarStr var_C4, "0.00"
  loc_C83B09: FStVarCopyObj var_D4
  loc_C83B0C: FLdRfVar var_D4
  loc_C83B0F: LitVarI2 var_A4, 0
  loc_C83B14: FLdRfVar var_F4
  loc_C83B17: ImpAdCallFPR4  = Format(, )
  loc_C83B1C: FLdRfVar var_F4
  loc_C83B1F: CStrVarVal var_11C
  loc_C83B23: FLdPr Me
  loc_C83B26: VCallAd Control_ID_ImpoCtctTxt
  loc_C83B29: FStAdFunc var_94
  loc_C83B2C: FLdPr var_94
  loc_C83B2F: Me.Text = from_stack_1
  loc_C83B34: FFree1Str var_11C
  loc_C83B37: FFree1Ad var_94
  loc_C83B3A: FFreeVar var_A4 = "": var_D4 = ""
  loc_C83B43: LitI4 0
  loc_C83B48: LitI4 0
  loc_C83B4D: FLdRfVar var_404
  loc_C83B50: Redim
  loc_C83B5A: FLdPr Me
  loc_C83B5D: VCallAd Control_ID_ConfirmarCmd
  loc_C83B60: CVarAd
  loc_C83B64: ParmAry1St
  loc_C83B6A: FLdRfVar var_404
  loc_C83B6D: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C83B72: FLdRfVar var_404
  loc_C83B75: Erase
  loc_C83B76: FLdPr Me
  loc_C83B79: VCallAd Control_ID_OficinaCbo
  loc_C83B7C: FStAdFunc var_94
  loc_C83B7F: FLdPr var_94
  loc_C83B82: Me.SetFocus
  loc_C83B87: FFree1Ad var_94
  loc_C83B8A: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9C26D8
  'Data Table: 510008
  loc_9C26C4: FLdPr Me
  loc_9C26C7: VCallAd Control_ID_FeveCtctMsk
  loc_9C26CA: CVarAd
  loc_9C26CE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C26D3: FFree1Var var_94 = ""
  loc_9C26D6: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'ABF234
  'Data Table: 510008
  loc_ABF13C: FLdPr Me
  loc_ABF13F: VCallAd Control_ID_FeveCtctMsk
  loc_ABF142: FStAdFunc var_88
  loc_ABF145: FLdPr var_88
  loc_ABF148: LateIdLdVar var_98 DispID_13 -32767
  loc_ABF14F: CBoolVar
  loc_ABF151: LitI2_Byte &HFF
  loc_ABF153: EqI2
  loc_ABF154: FFree1Ad var_88
  loc_ABF157: FFree1Var var_98 = ""
  loc_ABF15A: BranchF loc_ABF232
  loc_ABF15D: LitVarStr var_A8, vbNullString
  loc_ABF162: PopAdLdVar
  loc_ABF163: FLdPr Me
  loc_ABF166: VCallAd Control_ID_FeveCtctMsk
  loc_ABF169: FStAdFunc var_88
  loc_ABF16C: FLdPr var_88
  loc_ABF16F: LateIdSt
  loc_ABF174: FFree1Ad var_88
  loc_ABF177: FLdPr Me
  loc_ABF17A: VCallAd Control_ID_FeveCtctMsk
  loc_ABF17D: FStAdFunc var_88
  loc_ABF180: FLdPr var_88
  loc_ABF183: LateIdLdVar var_98 DispID_22 0
  loc_ABF18A: CStrVarTmp
  loc_ABF18B: FStStrNoPop var_BC
  loc_ABF18E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABF193: FStStrNoPop var_C0
  loc_ABF196: FLdPr Me
  loc_ABF199: MemStStrCopy
  loc_ABF19D: FFreeStr var_BC = ""
  loc_ABF1A4: FFree1Ad var_88
  loc_ABF1A7: FFree1Var var_98 = ""
  loc_ABF1AA: LitVarStr var_A8, "##/##/####"
  loc_ABF1AF: PopAdLdVar
  loc_ABF1B0: FLdPr Me
  loc_ABF1B3: VCallAd Control_ID_FeveCtctMsk
  loc_ABF1B6: FStAdFunc var_88
  loc_ABF1B9: FLdPr var_88
  loc_ABF1BC: LateIdSt
  loc_ABF1C1: FFree1Ad var_88
  loc_ABF1C4: LitVarI2 var_A8, 10
  loc_ABF1C9: PopAdLdVar
  loc_ABF1CA: FLdPr Me
  loc_ABF1CD: VCallAd Control_ID_FeveCtctMsk
  loc_ABF1D0: FStAdFunc var_88
  loc_ABF1D3: FLdPr var_88
  loc_ABF1D6: LateIdSt
  loc_ABF1DB: FFree1Ad var_88
  loc_ABF1DE: FLdPr Me
  loc_ABF1E1: MemLdStr global_92
  loc_ABF1E4: LitStr vbNullString
  loc_ABF1E7: NeStr
  loc_ABF1E9: BranchF loc_ABF232
  loc_ABF1EC: FLdPr Me
  loc_ABF1EF: MemLdStr global_92
  loc_ABF1F2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF1F7: LitI2_Byte 0
  loc_ABF1F9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABF1FE: CStrDate
  loc_ABF200: CVarStr var_98
  loc_ABF203: PopAdLdVar
  loc_ABF204: FLdPr Me
  loc_ABF207: VCallAd Control_ID_FeveCtctMsk
  loc_ABF20A: FStAdFunc var_88
  loc_ABF20D: FLdPr var_88
  loc_ABF210: LateIdSt
  loc_ABF215: FFree1Ad var_88
  loc_ABF218: FFree1Var var_98 = ""
  loc_ABF21B: FLdPr Me
  loc_ABF21E: VCallAd Control_ID_FeveCtctMsk
  loc_ABF221: CVarAd
  loc_ABF225: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF22A: FFree1Var var_98 = ""
  loc_ABF22D: LitI2_Byte &HFF
  loc_ABF22F: IStI2 arg_C
  loc_ABF232: ExitProcHresult
End Function

Private Function Proc_24_27_B18E68() 'B18E68
  'Data Table: 510008
  loc_B18BDC: FLdPr Me
  loc_B18BDF: VCallAd Control_ID_ctacteFlex
  loc_B18BE2: FStAdFunc var_88
  loc_B18BE5: FLdPr var_88
  loc_B18BE8: LateIdCall
  loc_B18BF0: LitVarI4
  loc_B18BF8: PopAdLdVar
  loc_B18BF9: FLdPr var_88
  loc_B18BFC: LateIdSt
  loc_B18C01: LitVarI4
  loc_B18C09: PopAdLdVar
  loc_B18C0A: LitVarI4
  loc_B18C12: PopAdLdVar
  loc_B18C13: LitVarStr var_D8, "Of"
  loc_B18C18: PopAdLdVar
  loc_B18C19: FLdPr var_88
  loc_B18C1C: LateIdCallSt
  loc_B18C24: LitVarI4
  loc_B18C2C: PopAdLdVar
  loc_B18C2D: LitVarI4
  loc_B18C35: PopAdLdVar
  loc_B18C36: LitVarStr var_D8, "Cuenta"
  loc_B18C3B: PopAdLdVar
  loc_B18C3C: FLdPr var_88
  loc_B18C3F: LateIdCallSt
  loc_B18C47: LitVarI4
  loc_B18C4F: PopAdLdVar
  loc_B18C50: LitVarI4
  loc_B18C58: PopAdLdVar
  loc_B18C59: LitVarStr var_D8, "Periodo"
  loc_B18C5E: PopAdLdVar
  loc_B18C5F: FLdPr var_88
  loc_B18C62: LateIdCallSt
  loc_B18C6A: LitVarI4
  loc_B18C72: PopAdLdVar
  loc_B18C73: LitVarI4
  loc_B18C7B: PopAdLdVar
  loc_B18C7C: LitVarStr var_D8, "Boleto"
  loc_B18C81: PopAdLdVar
  loc_B18C82: FLdPr var_88
  loc_B18C85: LateIdCallSt
  loc_B18C8D: LitVarI4
  loc_B18C95: PopAdLdVar
  loc_B18C96: LitVarI4
  loc_B18C9E: PopAdLdVar
  loc_B18C9F: LitVarStr var_D8, "Emision"
  loc_B18CA4: PopAdLdVar
  loc_B18CA5: FLdPr var_88
  loc_B18CA8: LateIdCallSt
  loc_B18CB0: LitVarI4
  loc_B18CB8: PopAdLdVar
  loc_B18CB9: LitVarI4
  loc_B18CC1: PopAdLdVar
  loc_B18CC2: LitVarStr var_D8, "Vencimiento"
  loc_B18CC7: PopAdLdVar
  loc_B18CC8: FLdPr var_88
  loc_B18CCB: LateIdCallSt
  loc_B18CD3: LitVarI4
  loc_B18CDB: PopAdLdVar
  loc_B18CDC: LitVarI4
  loc_B18CE4: PopAdLdVar
  loc_B18CE5: LitVarStr var_D8, "Concepto"
  loc_B18CEA: PopAdLdVar
  loc_B18CEB: FLdPr var_88
  loc_B18CEE: LateIdCallSt
  loc_B18CF6: LitVarI4
  loc_B18CFE: PopAdLdVar
  loc_B18CFF: LitVarI4
  loc_B18D07: PopAdLdVar
  loc_B18D08: LitVarStr var_D8, "Facilidad"
  loc_B18D0D: PopAdLdVar
  loc_B18D0E: FLdPr var_88
  loc_B18D11: LateIdCallSt
  loc_B18D19: LitVarI4
  loc_B18D21: PopAdLdVar
  loc_B18D22: LitVarI4
  loc_B18D2A: PopAdLdVar
  loc_B18D2B: LitVarStr var_D8, "Apremio"
  loc_B18D30: PopAdLdVar
  loc_B18D31: FLdPr var_88
  loc_B18D34: LateIdCallSt
  loc_B18D3C: LitVarI4
  loc_B18D44: PopAdLdVar
  loc_B18D45: LitVarI4
  loc_B18D4D: PopAdLdVar
  loc_B18D4E: LitVarStr var_D8, "Exp/Comp"
  loc_B18D53: PopAdLdVar
  loc_B18D54: FLdPr var_88
  loc_B18D57: LateIdCallSt
  loc_B18D5F: LitVarI4
  loc_B18D67: PopAdLdVar
  loc_B18D68: LitVarI4
  loc_B18D70: PopAdLdVar
  loc_B18D71: LitVarStr var_D8, "Tipo Movi."
  loc_B18D76: PopAdLdVar
  loc_B18D77: FLdPr var_88
  loc_B18D7A: LateIdCallSt
  loc_B18D82: LitVarI4
  loc_B18D8A: PopAdLdVar
  loc_B18D8B: LitVarI4
  loc_B18D93: PopAdLdVar
  loc_B18D94: LitVarStr var_D8, "Debito"
  loc_B18D99: PopAdLdVar
  loc_B18D9A: FLdPr var_88
  loc_B18D9D: LateIdCallSt
  loc_B18DA5: LitVarI4
  loc_B18DAD: PopAdLdVar
  loc_B18DAE: LitVarI4
  loc_B18DB6: PopAdLdVar
  loc_B18DB7: LitVarStr var_D8, "Recargo"
  loc_B18DBC: PopAdLdVar
  loc_B18DBD: FLdPr var_88
  loc_B18DC0: LateIdCallSt
  loc_B18DC8: LitVarI4
  loc_B18DD0: PopAdLdVar
  loc_B18DD1: LitVarI4
  loc_B18DD9: PopAdLdVar
  loc_B18DDA: LitVarStr var_D8, "Saldo"
  loc_B18DDF: PopAdLdVar
  loc_B18DE0: FLdPr var_88
  loc_B18DE3: LateIdCallSt
  loc_B18DEB: LitVarI4
  loc_B18DF3: PopAdLdVar
  loc_B18DF4: LitVarI4
  loc_B18DFC: PopAdLdVar
  loc_B18DFD: LitVarStr var_D8, "Sel"
  loc_B18E02: PopAdLdVar
  loc_B18E03: FLdPr var_88
  loc_B18E06: LateIdCallSt
  loc_B18E0E: LitVarI4
  loc_B18E16: PopAdLdVar
  loc_B18E17: LitVarI4
  loc_B18E1F: PopAdLdVar
  loc_B18E20: LitVarStr var_D8, "Numero"
  loc_B18E25: PopAdLdVar
  loc_B18E26: FLdPr var_88
  loc_B18E29: LateIdCallSt
  loc_B18E31: LitVarI4
  loc_B18E39: PopAdLdVar
  loc_B18E3A: LitVarI4
  loc_B18E42: PopAdLdVar
  loc_B18E43: LitVarStr var_D8, "Mov"
  loc_B18E48: PopAdLdVar
  loc_B18E49: FLdPr var_88
  loc_B18E4C: LateIdCallSt
  loc_B18E54: FLdPr var_88
  loc_B18E57: LateIdCall
  loc_B18E5F: LitNothing
  loc_B18E61: FStAd var_88 
  loc_B18E65: ExitProcHresult
  loc_B18E66: IStDarg var_7000
End Function
