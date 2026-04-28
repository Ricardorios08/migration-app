VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmModificaciondeFacilidaddePago
  Caption = "Modificación de Facilidades de Pago"
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
  ClientHeight = 10152
  Begin VB.TextBox BajaMotiTxt
    ForeColor = &HFF0000&
    Left = 5520
    Top = 2040
    Width = 8940
    Height = 360
    TabIndex = 15
    MaxLength = 50
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Motivo por el cual es dado de baja la facilidad"
  End
  Begin VB.Frame Frame2
    Caption = "Repetir Estado"
    Left = 120
    Top = 5400
    Width = 3255
    Height = 3015
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
    Begin VB.CommandButton AgregarEstadoCmd
      Left = 960
      Top = 2520
      Width = 450
      Height = 345
      TabIndex = 10
      Picture = "frmModificaciondeFacilidaddePago.frx":0000
      Style = 1
    End
    Begin VB.ComboBox EstaFapa2Cbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 1920
      Width = 2055
      Height = 420
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
    Begin VB.CheckBox RepeEstaChk
      Caption = "Check1"
      Left = 120
      Top = 480
      Width = 255
      Height = 255
      TabIndex = 40
    End
    Begin VB.TextBox DesdCuotEstadoTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 960
      Width = 615
      Height = 345
      Text = "0"
      TabIndex = 7
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
    Begin VB.TextBox HastCuotEstadoTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 1440
      Width = 615
      Height = 345
      Text = "0"
      TabIndex = 8
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
    Begin VB.Label Label11
      Caption = "Estado:"
      Left = 120
      Top = 1920
      Width = 825
      Height = 300
      TabIndex = 43
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
    Begin VB.Label Label321
      Caption = "Repetir Estado"
      Left = 480
      Top = 480
      Width = 1605
      Height = 300
      TabIndex = 6
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
      Caption = "Desde Cuota:"
      Left = 120
      Top = 960
      Width = 1470
      Height = 300
      TabIndex = 42
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
      Caption = "Hasta Cuota:"
      Left = 120
      Top = 1440
      Width = 1410
      Height = 300
      TabIndex = 41
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
  Begin VB.Frame Frame1
    Caption = "Repetir Fecha"
    Left = 120
    Top = 2160
    Width = 3255
    Height = 2895
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
    Begin VB.CommandButton AgregarFechaCmd
      Left = 960
      Top = 2400
      Width = 450
      Height = 345
      TabIndex = 5
      Picture = "frmModificaciondeFacilidaddePago.frx":00E2
      Style = 1
    End
    Begin VB.CommandButton FepaFapa2Cmd
      Left = 2520
      Top = 1920
      Width = 495
      Height = 345
      TabIndex = 4
      Picture = "frmModificaciondeFacilidaddePago.frx":01C4
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox HastCuotfechaTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 1440
      Width = 615
      Height = 345
      Text = "0"
      TabIndex = 2
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
    Begin VB.TextBox DesdCuotfechaTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 960
      Width = 615
      Height = 345
      Text = "0"
      TabIndex = 1
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
    Begin VB.CheckBox RepeFechChk
      Caption = "Check1"
      Left = 120
      Top = 480
      Width = 255
      Height = 255
      TabIndex = 35
    End
    Begin MSMask.MaskEdBox FepaFapa2Msk
      Left = 960
      Top = 1920
      Width = 1455
      Height = 345
      TabIndex = 3
      OleObjectBlob = "frmModificaciondeFacilidaddePago.frx":0706
    End
    Begin VB.Label Label10
      Caption = "Fecha :"
      Left = 120
      Top = 1920
      Width = 795
      Height = 300
      TabIndex = 39
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
    Begin VB.Label Label7
      Caption = "Hasta Cuota:"
      Left = 120
      Top = 1440
      Width = 1410
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
    Begin VB.Label Label6
      Caption = "Desde Cuota:"
      Left = 120
      Top = 960
      Width = 1470
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
    Begin VB.Label Label123
      Caption = "Repetir Fecha"
      Left = 480
      Top = 480
      Width = 1515
      Height = 300
      TabIndex = 36
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
  Begin VB.OptionButton EstaDefaPagadaOpt
    Caption = "Pagada"
    Left = 10200
    Top = 9120
    Width = 1575
    Height = 375
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
  Begin VB.OptionButton EstaDefaPagoaCuentaOpt
    Caption = "Pago a Cuenta"
    Left = 8040
    Top = 9060
    Width = 1935
    Height = 495
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
  Begin VB.OptionButton EstaDefaCaidaOpt
    Caption = "Caida"
    Left = 6720
    Top = 9060
    Width = 975
    Height = 495
    TabIndex = 31
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
  Begin VB.OptionButton EstaDefaAnuladaOpt
    Caption = "Anulada"
    Left = 5280
    Top = 9120
    Width = 1215
    Height = 375
    TabIndex = 30
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
  Begin VB.OptionButton EstaDefaEmitidaOpt
    Caption = "Emitida"
    Left = 3600
    Top = 9120
    Width = 1455
    Height = 375
    TabIndex = 29
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
  Begin VB.ComboBox EstaFapaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 7200
    Top = 1560
    Width = 2055
    Height = 420
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
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdGenerarBoleto
    Caption = "Guardar Cambios"
    Left = 10080
    Top = 1320
    Width = 2055
    Height = 525
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
  Begin VB.CommandButton BuscaFacilidad
    Left = 3840
    Top = 240
    Width = 450
    Height = 345
    TabIndex = 12
    Picture = "frmModificaciondeFacilidaddePago.frx":07B6
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
  Begin VB.TextBox txtTotal
    BackColor = &H80000004&
    Left = 12720
    Top = 9240
    Width = 1575
    Height = 360
    TabIndex = 20
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
    Left = 13200
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 17
    Picture = "frmModificaciondeFacilidaddePago.frx":0898
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSFlexGridLib.MSFlexGrid CuotasFacilidadFlex
    Left = 3600
    Top = 2640
    Width = 11295
    Height = 6015
    TabIndex = 18
    OleObjectBlob = "frmModificaciondeFacilidaddePago.frx":0AEA
  End
  Begin MSMask.MaskEdBox FepaFapaMsk
    Left = 3720
    Top = 1560
    Width = 1455
    Height = 345
    TabIndex = 13
    OleObjectBlob = "frmModificaciondeFacilidaddePago.frx":0BD6
  End
  Begin VB.Label Label15
    Caption = "Cuenta:"
    Left = 1320
    Top = 1080
    Width = 840
    Height = 300
    TabIndex = 48
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
  Begin VB.Label CuenCtctLbl
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1080
    Width = 1695
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
  Begin VB.Label DetaOficLbl
    ForeColor = &HFF0000&
    Left = 2280
    Top = 720
    Width = 1695
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
  Begin VB.Label Label14
    Caption = "Oficina:"
    Left = 1320
    Top = 720
    Width = 795
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
  Begin VB.Label Label2
    Caption = "Motivo de Baja:"
    Left = 3840
    Top = 2040
    Width = 1620
    Height = 300
    TabIndex = 44
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
    Caption = "Fecha de Pago:"
    Left = 1920
    Top = 1560
    Width = 1680
    Height = 300
    TabIndex = 28
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
    Caption = "Estado:"
    Left = 6240
    Top = 1560
    Width = 825
    Height = 300
    TabIndex = 27
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
    Left = 6720
    Top = 720
    Width = 1725
    Height = 300
    TabIndex = 26
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
    Left = 6480
    Top = 240
    Width = 1965
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8520
    Top = 240
    Width = 5895
    Height = 315
    TabIndex = 24
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
    Left = 4440
    Top = 240
    Width = 1695
    Height = 315
    TabIndex = 23
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
    Left = 8520
    Top = 720
    Width = 6015
    Height = 315
    TabIndex = 22
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
    TabIndex = 21
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
    Caption = "Total:"
    Left = 11880
    Top = 9240
    Width = 690
    Height = 300
    TabIndex = 19
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

Attribute VB_Name = "frmModificaciondeFacilidaddePago"


Private Sub EstaFapaCbo_Click() 'A97630
  'Data Table: 5162A0
  loc_A97588: FLdRfVar var_8C
  loc_A9758B: FLdPr Me
  loc_A9758E: VCallAd Control_ID_EstaFapaCbo
  loc_A97591: FStAdFunc var_88
  loc_A97594: FLdPr var_88
  loc_A97597:  = Me.Text
  loc_A9759C: ILdRf var_8C
  loc_A9759F: LitStr "Anulada"
  loc_A975A2: EqStr
  loc_A975A4: FFree1Str var_8C
  loc_A975A7: FFree1Ad var_88
  loc_A975AA: BranchF loc_A975E3
  loc_A975AD: LitI4 0
  loc_A975B2: LitI4 0
  loc_A975B7: FLdRfVar var_90
  loc_A975BA: Redim
  loc_A975C4: FLdPr Me
  loc_A975C7: VCallAd Control_ID_BajaMotiTxt
  loc_A975CA: CVarAd
  loc_A975CE: ParmAry1St
  loc_A975D4: FLdRfVar var_90
  loc_A975D7: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A975DC: FLdRfVar var_90
  loc_A975DF: Erase
  loc_A975E0: Branch loc_A9762D
  loc_A975E3: LitI4 0
  loc_A975E8: LitI4 0
  loc_A975ED: FLdRfVar var_90
  loc_A975F0: Redim
  loc_A975FA: FLdPr Me
  loc_A975FD: VCallAd Control_ID_BajaMotiTxt
  loc_A97600: CVarAd
  loc_A97604: ParmAry1St
  loc_A9760A: FLdRfVar var_90
  loc_A9760D: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A97612: FLdRfVar var_90
  loc_A97615: Erase
  loc_A97616: LitStr vbNullString
  loc_A97619: FLdPr Me
  loc_A9761C: VCallAd Control_ID_BajaMotiTxt
  loc_A9761F: FStAdFunc var_88
  loc_A97622: FLdPr var_88
  loc_A97625: Me.Text = from_stack_1
  loc_A9762A: FFree1Ad var_88
  loc_A9762D: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_GotFocus() 'AD416C
  'Data Table: 5162A0
  loc_AD4064: Call Proc_290_42_AF15D4()
  loc_AD4069: LitVarStr var_94, vbNullString
  loc_AD406E: PopAdLdVar
  loc_AD406F: FLdPr Me
  loc_AD4072: VCallAd Control_ID_FepaFapaMsk
  loc_AD4075: FStAdFunc var_A8
  loc_AD4078: FLdPr var_A8
  loc_AD407B: LateIdSt
  loc_AD4080: FFree1Ad var_A8
  loc_AD4083: FLdPr Me
  loc_AD4086: VCallAd Control_ID_CodiFapaTxt
  loc_AD4089: CVarAd
  loc_AD408D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD4092: FFree1Var var_B8 = ""
  loc_AD4095: LitI4 0
  loc_AD409A: LitI4 &HA
  loc_AD409F: FLdRfVar var_BC
  loc_AD40A2: Redim
  loc_AD40AC: FLdPr Me
  loc_AD40AF: VCallAd Control_ID_RepeFechChk
  loc_AD40B2: CVarAd
  loc_AD40B6: ParmAry1St
  loc_AD40BC: FLdPr Me
  loc_AD40BF: VCallAd Control_ID_RepeEstaChk
  loc_AD40C2: CVarAd
  loc_AD40C6: ParmAry1St
  loc_AD40CC: FLdPr Me
  loc_AD40CF: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AD40D2: CVarAd
  loc_AD40D6: ParmAry1St
  loc_AD40DC: FLdPr Me
  loc_AD40DF: VCallAd Control_ID_HastCuotfechaTxt
  loc_AD40E2: CVarAd
  loc_AD40E6: ParmAry1St
  loc_AD40EC: FLdPr Me
  loc_AD40EF: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AD40F2: CVarAd
  loc_AD40F6: ParmAry1St
  loc_AD40FC: FLdPr Me
  loc_AD40FF: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AD4102: CVarAd
  loc_AD4106: ParmAry1St
  loc_AD410C: FLdPr Me
  loc_AD410F: VCallAd Control_ID_FepaFapa2Cmd
  loc_AD4112: CVarAd
  loc_AD4116: ParmAry1St
  loc_AD411C: FLdPr Me
  loc_AD411F: VCallAd Control_ID_FepaFapa2Msk
  loc_AD4122: CVarAd
  loc_AD4126: ParmAry1St
  loc_AD412C: FLdPr Me
  loc_AD412F: VCallAd Control_ID_EstaFapa2Cbo
  loc_AD4132: CVarAd
  loc_AD4136: ParmAry1St
  loc_AD413C: FLdPr Me
  loc_AD413F: VCallAd Control_ID_cmdGenerarBoleto
  loc_AD4142: CVarAd
  loc_AD4146: ParmAry1St
  loc_AD414C: FLdPr Me
  loc_AD414F: VCallAd Control_ID_EstaFapaCbo
  loc_AD4152: CVarAd
  loc_AD4156: ParmAry1St
  loc_AD415C: FLdRfVar var_BC
  loc_AD415F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AD4164: FLdRfVar var_BC
  loc_AD4167: Erase
  loc_AD4168: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_KeyPress(KeyAscii As Integer) 'AB32F0
  'Data Table: 5162A0
  loc_AB321C: LitStr "0123456789 "
  loc_AB321F: FStStrCopy var_88
  loc_AB3222: FLdRfVar var_88
  loc_AB3225: ILdRf KeyAscii
  loc_AB3228: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB322D: IStI2 KeyAscii
  loc_AB3230: FFree1Str var_88
  loc_AB3233: ILdI2 KeyAscii
  loc_AB3236: LitI2_Byte &H20
  loc_AB3238: EqI2
  loc_AB3239: BranchF loc_AB32EC
  loc_AB323C: LitI2_Byte 0
  loc_AB323E: IStI2 KeyAscii
  loc_AB3241: LitVar_Missing var_A8
  loc_AB3244: PopAdLdVar
  loc_AB3245: LitVarI4
  loc_AB324D: PopAdLdVar
  loc_AB324E: ImpAdLdRf MemVar_D942A0
  loc_AB3251: NewIfNullPr dlgBuscarFacilidaddePago
  loc_AB3254: dlgBuscarFacilidaddePago.Show from_stack_1, from_stack_2
  loc_AB3259: FLdRfVar var_B0
  loc_AB325C: FLdRfVar var_AC
  loc_AB325F: ImpAdLdRf MemVar_D942A0
  loc_AB3262: NewIfNullPr dlgBuscarFacilidaddePago
  loc_AB3265: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_AB326A: FLdPr var_AC
  loc_AB326D: from_stack_1 = clsbase.RecordCount
  loc_AB3272: ILdRf var_B0
  loc_AB3275: LitI4 0
  loc_AB327A: GtI4
  loc_AB327B: FFree1Ad var_AC
  loc_AB327E: BranchF loc_AB32EC
  loc_AB3281: FLdRfVar var_CC
  loc_AB3284: FLdRfVar var_BC
  loc_AB3287: LitVarStr var_98, "CodiFapa"
  loc_AB328C: PopAdLdVar
  loc_AB328D: FLdRfVar var_B8
  loc_AB3290: FLdRfVar var_B4
  loc_AB3293: FLdRfVar var_AC
  loc_AB3296: ImpAdLdRf MemVar_D942A0
  loc_AB3299: NewIfNullPr dlgBuscarFacilidaddePago
  loc_AB329C: from_stack_1v = dlgBuscarFacilidaddePago.global_4448448Get()
  loc_AB32A1: FLdPr var_AC
  loc_AB32A4: from_stack_1v = clsbase.RsFrmGet()
  loc_AB32A9: FLdPr var_B4
  loc_AB32AC:  = Me.Fields
  loc_AB32B1: FLdPr var_B8
  loc_AB32B4: from_stack_2 = Me.Item(from_stack_1)
  loc_AB32B9: FLdPr var_BC
  loc_AB32BC:  = Me.Value
  loc_AB32C1: FLdRfVar var_CC
  loc_AB32C4: CStrVarTmp
  loc_AB32C5: FStStrNoPop var_88
  loc_AB32C8: FLdPr Me
  loc_AB32CB: VCallAd Control_ID_CodiFapaTxt
  loc_AB32CE: FStAdFunc var_D0
  loc_AB32D1: FLdPr var_D0
  loc_AB32D4: Me.Text = from_stack_1
  loc_AB32D9: FFree1Str var_88
  loc_AB32DC: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AB32E9: FFree1Var var_CC = ""
  loc_AB32EC: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'B85864
  'Data Table: 5162A0
  loc_B8534C: FLdRfVar var_9C
  loc_B8534F: FLdPr Me
  loc_B85352: VCallAd Control_ID_CodiFapaTxt
  loc_B85355: FStAdFunc var_98
  loc_B85358: FLdPr var_98
  loc_B8535B:  = Me.Text
  loc_B85360: LitI2_Byte 0
  loc_B85362: LitI2_Byte 0
  loc_B85364: ILdRf var_9C
  loc_B85367: LitStr "el plan de pago "
  loc_B8536A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_B8536F: FStStrNoPop var_A0
  loc_B85372: FLdPr Me
  loc_B85375: MemStStrCopy
  loc_B85379: FFreeStr var_9C = ""
  loc_B85380: FFree1Ad var_98
  loc_B85383: FLdPr Me
  loc_B85386: MemLdStr global_88
  loc_B85389: LitStr vbNullString
  loc_B8538C: NeStr
  loc_B8538E: BranchF loc_B853B4
  loc_B85391: FLdPr Me
  loc_B85394: MemLdStr global_88
  loc_B85397: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8539C: FLdPr Me
  loc_B8539F: VCallAd Control_ID_CodiFapaTxt
  loc_B853A2: CVarAd
  loc_B853A6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B853AB: FFree1Var var_B0 = ""
  loc_B853AE: LitI2_Byte &HFF
  loc_B853B0: IStI2 Cancel
  loc_B853B3: ExitProcHresult
  loc_B853B4: LitStr "SELECT CodiFapa, facipago.CodiOfic, CuenCtct, CucuPers, EmitFapa, EstaFapa, DetaOfic"
  loc_B853B7: LitStr " FROM facipago "
  loc_B853BA: ConcatStr
  loc_B853BB: FStStrNoPop var_9C
  loc_B853BE: LitStr " INNER JOIN oficina ON oficina.CodiOfic = facipago.CodiOfic"
  loc_B853C1: ConcatStr
  loc_B853C2: FStStrNoPop var_A0
  loc_B853C5: LitStr " WHERE CodiFapa = "
  loc_B853C8: ConcatStr
  loc_B853C9: FStStrNoPop var_B8
  loc_B853CC: FLdRfVar var_B4
  loc_B853CF: FLdPr Me
  loc_B853D2: VCallAd Control_ID_CodiFapaTxt
  loc_B853D5: FStAdFunc var_98
  loc_B853D8: FLdPr var_98
  loc_B853DB:  = Me.Text
  loc_B853E0: ILdRf var_B4
  loc_B853E3: ConcatStr
  loc_B853E4: FStStrNoPop var_BC
  loc_B853E7: LitStr " ORDER BY CodiFapa"
  loc_B853EA: ConcatStr
  loc_B853EB: FStStrNoPop var_C0
  loc_B853EE: FLdPr Me
  loc_B853F1: MemLdRfVar from_stack_1.global_52
  loc_B853F4: NewIfNullPr clsfacipago
  loc_B853F7: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B853FC: FFreeStr var_9C = "": var_A0 = "": var_B8 = "": var_B4 = "": var_BC = ""
  loc_B8540B: FFree1Ad var_98
  loc_B8540E: FLdRfVar var_C4
  loc_B85411: FLdPr Me
  loc_B85414: MemLdRfVar from_stack_1.global_52
  loc_B85417: NewIfNullPr clsfacipago
  loc_B8541A: from_stack_1 = clsfacipago.RecordCount
  loc_B8541F: ILdRf var_C4
  loc_B85422: LitI4 1
  loc_B85427: EqI4
  loc_B85428: BranchF loc_B857C1
  loc_B8542B: FLdRfVar var_B0
  loc_B8542E: FLdRfVar var_DC
  loc_B85431: LitVarStr var_D8, "DetaOfic"
  loc_B85436: PopAdLdVar
  loc_B85437: FLdRfVar var_C8
  loc_B8543A: FLdRfVar var_98
  loc_B8543D: FLdPr Me
  loc_B85440: MemLdRfVar from_stack_1.global_52
  loc_B85443: NewIfNullPr clsfacipago
  loc_B85446: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B8544B: FLdPr var_98
  loc_B8544E:  = Me.Fields
  loc_B85453: FLdPr var_C8
  loc_B85456: from_stack_2 = Me.Item(from_stack_1)
  loc_B8545B: FLdPr var_DC
  loc_B8545E:  = Me.Value
  loc_B85463: FLdRfVar var_B0
  loc_B85466: CStrVarTmp
  loc_B85467: FStStrNoPop var_9C
  loc_B8546A: FLdPr Me
  loc_B8546D: VCallAd Control_ID_DetaOficLbl
  loc_B85470: FStAdFunc var_E0
  loc_B85473: FLdPr var_E0
  loc_B85476: Me.Caption = from_stack_1
  loc_B8547B: FFree1Str var_9C
  loc_B8547E: FFreeAd var_98 = "": var_C8 = "": var_DC = ""
  loc_B85489: FFree1Var var_B0 = ""
  loc_B8548C: FLdRfVar var_B0
  loc_B8548F: FLdRfVar var_DC
  loc_B85492: LitVarStr var_D8, "CuenCtct"
  loc_B85497: PopAdLdVar
  loc_B85498: FLdRfVar var_C8
  loc_B8549B: FLdRfVar var_98
  loc_B8549E: FLdPr Me
  loc_B854A1: MemLdRfVar from_stack_1.global_52
  loc_B854A4: NewIfNullPr clsfacipago
  loc_B854A7: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B854AC: FLdPr var_98
  loc_B854AF:  = Me.Fields
  loc_B854B4: FLdPr var_C8
  loc_B854B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B854BC: FLdPr var_DC
  loc_B854BF:  = Me.Value
  loc_B854C4: FLdRfVar var_B0
  loc_B854C7: CStrVarTmp
  loc_B854C8: FStStrNoPop var_9C
  loc_B854CB: FLdPr Me
  loc_B854CE: VCallAd Control_ID_CuenCtctLbl
  loc_B854D1: FStAdFunc var_E0
  loc_B854D4: FLdPr var_E0
  loc_B854D7: Me.Caption = from_stack_1
  loc_B854DC: FFree1Str var_9C
  loc_B854DF: FFreeAd var_98 = "": var_C8 = "": var_DC = ""
  loc_B854EA: FFree1Var var_B0 = ""
  loc_B854ED: FLdRfVar var_B0
  loc_B854F0: FLdRfVar var_DC
  loc_B854F3: LitVarStr var_D8, "CodiOfic"
  loc_B854F8: PopAdLdVar
  loc_B854F9: FLdRfVar var_C8
  loc_B854FC: FLdRfVar var_98
  loc_B854FF: FLdPr Me
  loc_B85502: MemLdRfVar from_stack_1.global_52
  loc_B85505: NewIfNullPr clsfacipago
  loc_B85508: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B8550D: FLdPr var_98
  loc_B85510:  = Me.Fields
  loc_B85515: FLdPr var_C8
  loc_B85518: from_stack_2 = Me.Item(from_stack_1)
  loc_B8551D: FLdPr var_DC
  loc_B85520:  = Me.Value
  loc_B85525: FLdRfVar var_B0
  loc_B85528: FnCIntVar
  loc_B8552A: LitI2_Byte 1
  loc_B8552C: EqI2
  loc_B8552D: FFreeAd var_98 = "": var_C8 = ""
  loc_B85536: FFree1Var var_B0 = ""
  loc_B85539: BranchF loc_B85650
  loc_B8553C: FLdRfVar var_9C
  loc_B8553F: FLdPr Me
  loc_B85542: MemLdRfVar from_stack_1.global_52
  loc_B85545: NewIfNullPr clsfacipago
  loc_B85548: from_stack_1 = clsfacipago.CucuPers
  loc_B8554D: FLdRfVar var_A0
  loc_B85550: FLdPr Me
  loc_B85553: MemLdRfVar from_stack_1.global_52
  loc_B85556: NewIfNullPr clsfacipago
  loc_B85559: from_stack_1 = clsfacipago.CuenCtct
  loc_B8555E: FLdPr Me
  loc_B85561: MemLdRfVar from_stack_1.global_68
  loc_B85564: NewIfNullRf
  loc_B85568: ILdRf var_A0
  loc_B8556B: ILdRf var_9C
  loc_B8556E: ImpAdCallI2  = Proc_270_14_BF20CC(, )
  loc_B85573: LitI2_Byte &HFF
  loc_B85575: EqI2
  loc_B85576: FFreeStr var_9C = ""
  loc_B8557D: BranchF loc_B8564D
  loc_B85580: FLdRfVar var_9C
  loc_B85583: FLdPr Me
  loc_B85586: MemLdRfVar from_stack_1.global_68
  loc_B85589: NewIfNullPr tblPersonaGIS
  loc_B8558C: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_B85591: ILdRf var_9C
  loc_B85594: FLdPr Me
  loc_B85597: VCallAd Control_ID_CucuPersLbl
  loc_B8559A: FStAdFunc var_98
  loc_B8559D: FLdPr var_98
  loc_B855A0: Me.Caption = from_stack_1
  loc_B855A5: FFree1Str var_9C
  loc_B855A8: FFree1Ad var_98
  loc_B855AB: FLdRfVar var_9C
  loc_B855AE: FLdPr Me
  loc_B855B1: MemLdRfVar from_stack_1.global_68
  loc_B855B4: NewIfNullPr tblPersonaGIS
  loc_B855B7: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_B855BC: ILdRf var_9C
  loc_B855BF: FLdPr Me
  loc_B855C2: VCallAd Control_ID_DetaPersLbl
  loc_B855C5: FStAdFunc var_98
  loc_B855C8: FLdPr var_98
  loc_B855CB: Me.Caption = from_stack_1
  loc_B855D0: FFree1Str var_9C
  loc_B855D3: FFree1Ad var_98
  loc_B855D6: FLdRfVar var_9C
  loc_B855D9: FLdPr Me
  loc_B855DC: MemLdRfVar from_stack_1.global_68
  loc_B855DF: NewIfNullPr tblPersonaGIS
  loc_B855E2: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_B855E7: ILdRf var_9C
  loc_B855EA: LitStr " "
  loc_B855ED: ConcatStr
  loc_B855EE: FStStrNoPop var_B4
  loc_B855F1: FLdRfVar var_A0
  loc_B855F4: FLdPr Me
  loc_B855F7: MemLdRfVar from_stack_1.global_68
  loc_B855FA: NewIfNullPr tblPersonaGIS
  loc_B855FD: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_B85602: ILdRf var_A0
  loc_B85605: ConcatStr
  loc_B85606: FStStrNoPop var_B8
  loc_B85609: LitStr " "
  loc_B8560C: ConcatStr
  loc_B8560D: FStStrNoPop var_C0
  loc_B85610: FLdRfVar var_BC
  loc_B85613: FLdPr Me
  loc_B85616: MemLdRfVar from_stack_1.global_68
  loc_B85619: NewIfNullPr tblPersonaGIS
  loc_B8561C: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_B85621: ILdRf var_BC
  loc_B85624: ConcatStr
  loc_B85625: FStStrNoPop var_E4
  loc_B85628: FLdPr Me
  loc_B8562B: VCallAd Control_ID_DomiPersLbl
  loc_B8562E: FStAdFunc var_98
  loc_B85631: FLdPr var_98
  loc_B85634: Me.Caption = from_stack_1
  loc_B85639: FFreeStr var_9C = "": var_B4 = "": var_A0 = "": var_B8 = "": var_C0 = "": var_BC = ""
  loc_B8564A: FFree1Ad var_98
  loc_B8564D: Branch loc_B857BE
  loc_B85650: FLdRfVar var_9C
  loc_B85653: FLdPr Me
  loc_B85656: MemLdRfVar from_stack_1.global_52
  loc_B85659: NewIfNullPr clsfacipago
  loc_B8565C: from_stack_1 = clsfacipago.CucuPers
  loc_B85661: FLdPr Me
  loc_B85664: MemLdRfVar from_stack_1.global_64
  loc_B85667: NewIfNullRf
  loc_B8566B: ILdRf var_9C
  loc_B8566E: ImpAdCallI2  = Proc_270_6_B02218()
  loc_B85673: LitI2_Byte &HFF
  loc_B85675: EqI2
  loc_B85676: FFree1Str var_9C
  loc_B85679: BranchF loc_B8574C
  loc_B8567C: FLdRfVar var_9C
  loc_B8567F: FLdPr Me
  loc_B85682: MemLdRfVar from_stack_1.global_64
  loc_B85685: NewIfNullPr tblPersona
  loc_B85688: from_stack_1v = tblPersona.CucuPersGet()
  loc_B8568D: ILdRf var_9C
  loc_B85690: FLdPr Me
  loc_B85693: VCallAd Control_ID_CucuPersLbl
  loc_B85696: FStAdFunc var_98
  loc_B85699: FLdPr var_98
  loc_B8569C: Me.Caption = from_stack_1
  loc_B856A1: FFree1Str var_9C
  loc_B856A4: FFree1Ad var_98
  loc_B856A7: FLdRfVar var_9C
  loc_B856AA: FLdPr Me
  loc_B856AD: MemLdRfVar from_stack_1.global_64
  loc_B856B0: NewIfNullPr tblPersona
  loc_B856B3: from_stack_1v = tblPersona.DetaPersGet()
  loc_B856B8: ILdRf var_9C
  loc_B856BB: FLdPr Me
  loc_B856BE: VCallAd Control_ID_DetaPersLbl
  loc_B856C1: FStAdFunc var_98
  loc_B856C4: FLdPr var_98
  loc_B856C7: Me.Caption = from_stack_1
  loc_B856CC: FFree1Str var_9C
  loc_B856CF: FFree1Ad var_98
  loc_B856D2: FLdRfVar var_9C
  loc_B856D5: FLdPr Me
  loc_B856D8: MemLdRfVar from_stack_1.global_64
  loc_B856DB: NewIfNullPr tblPersona
  loc_B856DE: from_stack_1v = tblPersona.DetaCallGet()
  loc_B856E3: ILdRf var_9C
  loc_B856E6: LitStr " "
  loc_B856E9: ConcatStr
  loc_B856EA: FStStrNoPop var_B4
  loc_B856ED: FLdRfVar var_A0
  loc_B856F0: FLdPr Me
  loc_B856F3: MemLdRfVar from_stack_1.global_64
  loc_B856F6: NewIfNullPr tblPersona
  loc_B856F9: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B856FE: ILdRf var_A0
  loc_B85701: ConcatStr
  loc_B85702: FStStrNoPop var_B8
  loc_B85705: LitStr " "
  loc_B85708: ConcatStr
  loc_B85709: FStStrNoPop var_C0
  loc_B8570C: FLdRfVar var_BC
  loc_B8570F: FLdPr Me
  loc_B85712: MemLdRfVar from_stack_1.global_64
  loc_B85715: NewIfNullPr tblPersona
  loc_B85718: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B8571D: ILdRf var_BC
  loc_B85720: ConcatStr
  loc_B85721: FStStrNoPop var_E4
  loc_B85724: FLdPr Me
  loc_B85727: VCallAd Control_ID_DomiPersLbl
  loc_B8572A: FStAdFunc var_98
  loc_B8572D: FLdPr var_98
  loc_B85730: Me.Caption = from_stack_1
  loc_B85735: FFreeStr var_9C = "": var_B4 = "": var_A0 = "": var_B8 = "": var_C0 = "": var_BC = ""
  loc_B85746: FFree1Ad var_98
  loc_B85749: Branch loc_B857BE
  loc_B8574C: LitStr vbNullString
  loc_B8574F: FLdPr Me
  loc_B85752: VCallAd Control_ID_CucuPersLbl
  loc_B85755: FStAdFunc var_98
  loc_B85758: FLdPr var_98
  loc_B8575B: Me.Caption = from_stack_1
  loc_B85760: FFree1Ad var_98
  loc_B85763: LitStr vbNullString
  loc_B85766: FLdPr Me
  loc_B85769: VCallAd Control_ID_DetaPersLbl
  loc_B8576C: FStAdFunc var_98
  loc_B8576F: FLdPr var_98
  loc_B85772: Me.Caption = from_stack_1
  loc_B85777: FFree1Ad var_98
  loc_B8577A: LitStr vbNullString
  loc_B8577D: FLdPr Me
  loc_B85780: VCallAd Control_ID_DomiPersLbl
  loc_B85783: FStAdFunc var_98
  loc_B85786: FLdPr var_98
  loc_B85789: Me.Caption = from_stack_1
  loc_B8578E: FFree1Ad var_98
  loc_B85791: LitStr "La persona no existe. Verifique"
  loc_B85794: FLdPr Me
  loc_B85797: MemStStrCopy
  loc_B8579B: FLdPr Me
  loc_B8579E: MemLdStr global_88
  loc_B857A1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B857A6: FLdPr Me
  loc_B857A9: VCallAd Control_ID_CodiFapaTxt
  loc_B857AC: CVarAd
  loc_B857B0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B857B5: FFree1Var var_B0 = ""
  loc_B857B8: LitI2_Byte &HFF
  loc_B857BA: IStI2 Cancel
  loc_B857BD: ExitProcHresult
  loc_B857BE: Branch loc_B85861
  loc_B857C1: LitStr vbNullString
  loc_B857C4: FLdPr Me
  loc_B857C7: VCallAd Control_ID_DetaOficLbl
  loc_B857CA: FStAdFunc var_98
  loc_B857CD: FLdPr var_98
  loc_B857D0: Me.Caption = from_stack_1
  loc_B857D5: FFree1Ad var_98
  loc_B857D8: LitStr vbNullString
  loc_B857DB: FLdPr Me
  loc_B857DE: VCallAd Control_ID_CuenCtctLbl
  loc_B857E1: FStAdFunc var_98
  loc_B857E4: FLdPr var_98
  loc_B857E7: Me.Caption = from_stack_1
  loc_B857EC: FFree1Ad var_98
  loc_B857EF: LitStr vbNullString
  loc_B857F2: FLdPr Me
  loc_B857F5: VCallAd Control_ID_CucuPersLbl
  loc_B857F8: FStAdFunc var_98
  loc_B857FB: FLdPr var_98
  loc_B857FE: Me.Caption = from_stack_1
  loc_B85803: FFree1Ad var_98
  loc_B85806: LitStr vbNullString
  loc_B85809: FLdPr Me
  loc_B8580C: VCallAd Control_ID_DetaPersLbl
  loc_B8580F: FStAdFunc var_98
  loc_B85812: FLdPr var_98
  loc_B85815: Me.Caption = from_stack_1
  loc_B8581A: FFree1Ad var_98
  loc_B8581D: LitStr vbNullString
  loc_B85820: FLdPr Me
  loc_B85823: VCallAd Control_ID_DomiPersLbl
  loc_B85826: FStAdFunc var_98
  loc_B85829: FLdPr var_98
  loc_B8582C: Me.Caption = from_stack_1
  loc_B85831: FFree1Ad var_98
  loc_B85834: LitStr "La facilidad de pago no existe. Verifique"
  loc_B85837: FLdPr Me
  loc_B8583A: MemStStrCopy
  loc_B8583E: FLdPr Me
  loc_B85841: MemLdStr global_88
  loc_B85844: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B85849: FLdPr Me
  loc_B8584C: VCallAd Control_ID_CodiFapaTxt
  loc_B8584F: CVarAd
  loc_B85853: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B85858: FFree1Var var_B0 = ""
  loc_B8585B: LitI2_Byte &HFF
  loc_B8585D: IStI2 Cancel
  loc_B85860: ExitProcHresult
  loc_B85861: ExitProcHresult
End Sub

Private Sub CuotasFacilidadFlex_UnknownEvent_8 'AF0690
  'Data Table: 5162A0
  loc_AF04EC: LitI2_Byte 1
  loc_AF04EE: FLdRfVar var_86
  loc_AF04F1: FLdPr Me
  loc_AF04F4: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF04F7: FStAdFunc var_8C
  loc_AF04FA: FLdPr var_8C
  loc_AF04FD: LateIdLdVar var_9C DispID_4 0
  loc_AF0504: CI4Var
  loc_AF0506: LitI4 1
  loc_AF050B: SubI4
  loc_AF050C: CI2I4
  loc_AF050D: FFree1Ad var_8C
  loc_AF0510: FFree1Var var_9C = ""
  loc_AF0513: ForI2 var_A0
  loc_AF0519: FLdI2 var_86
  loc_AF051C: CI4UI1
  loc_AF051D: CVarI4
  loc_AF0521: PopAdLdVar
  loc_AF0522: LitVarI4
  loc_AF052A: PopAdLdVar
  loc_AF052B: FLdPr Me
  loc_AF052E: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF0531: FStAdFunc var_8C
  loc_AF0534: FLdPr var_8C
  loc_AF0537: LateIdCallLdVar
  loc_AF0541: CStrVarTmp
  loc_AF0542: FStStrNoPop var_E4
  loc_AF0545: LitStr vbNullString
  loc_AF0548: NeStr
  loc_AF054A: FFree1Str var_E4
  loc_AF054D: FFree1Ad var_8C
  loc_AF0550: FFree1Var var_9C = ""
  loc_AF0553: BranchF loc_AF0617
  loc_AF0556: FLdI2 var_86
  loc_AF0559: CI4UI1
  loc_AF055A: CVarI4
  loc_AF055E: PopAdLdVar
  loc_AF055F: LitVarI4
  loc_AF0567: PopAdLdVar
  loc_AF0568: FLdPr Me
  loc_AF056B: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF056E: FStAdFunc var_8C
  loc_AF0571: FLdPr var_8C
  loc_AF0574: LateIdCallLdVar
  loc_AF057E: CStrVarTmp
  loc_AF057F: FStStrNoPop var_E4
  loc_AF0582: ImpAdCallI2 Proc_18_6_A08898()
  loc_AF0587: FStStrNoPop var_E8
  loc_AF058A: FLdPr Me
  loc_AF058D: MemStStrCopy
  loc_AF0591: FFreeStr var_E4 = ""
  loc_AF0598: FFree1Ad var_8C
  loc_AF059B: FFree1Var var_9C = ""
  loc_AF059E: FLdPr Me
  loc_AF05A1: MemLdStr global_88
  loc_AF05A4: LitStr vbNullString
  loc_AF05A7: NeStr
  loc_AF05A9: BranchF loc_AF0617
  loc_AF05AC: LitStr "Ingrese una Fecha Valida para la Cuota  "
  loc_AF05AF: FLdI2 var_86
  loc_AF05B2: CStrUI1
  loc_AF05B4: FStStrNoPop var_E4
  loc_AF05B7: ConcatStr
  loc_AF05B8: FStStrNoPop var_E8
  loc_AF05BB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF05C0: FFreeStr var_E4 = ""
  loc_AF05C7: FLdI2 var_86
  loc_AF05CA: CI4UI1
  loc_AF05CB: CVarI4
  loc_AF05CF: PopAdLdVar
  loc_AF05D0: LitVarI4
  loc_AF05D8: PopAdLdVar
  loc_AF05D9: FLdPr Me
  loc_AF05DC: MemLdRfVar from_stack_1.global_76
  loc_AF05DF: CDargRef
  loc_AF05E3: FLdPr Me
  loc_AF05E6: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF05E9: FStAdFunc var_8C
  loc_AF05EC: FLdPr var_8C
  loc_AF05EF: LateIdCallSt
  loc_AF05F7: FFree1Ad var_8C
  loc_AF05FA: FLdPr Me
  loc_AF05FD: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF0600: FStAdFunc var_8C
  loc_AF0603: FLdPr var_8C
  loc_AF0606: LateIdCall
  loc_AF060E: FFree1Ad var_8C
  loc_AF0611: LitI2_Byte &HFF
  loc_AF0613: IStI2 Cancel
  loc_AF0616: ExitProcHresult
  loc_AF0617: FLdRfVar var_86
  loc_AF061A: NextI2 var_A0, loc_AF0519
  loc_AF061F: LitI2_Byte 0
  loc_AF0621: FLdPr Me
  loc_AF0624: VCallAd Control_ID_EstaDefaEmitidaOpt
  loc_AF0627: FStAdFunc var_8C
  loc_AF062A: FLdPr var_8C
  loc_AF062D: Me.Value = from_stack_1b
  loc_AF0632: FFree1Ad var_8C
  loc_AF0635: LitI2_Byte 0
  loc_AF0637: FLdPr Me
  loc_AF063A: VCallAd Control_ID_EstaDefaAnuladaOpt
  loc_AF063D: FStAdFunc var_8C
  loc_AF0640: FLdPr var_8C
  loc_AF0643: Me.Value = from_stack_1b
  loc_AF0648: FFree1Ad var_8C
  loc_AF064B: LitI2_Byte 0
  loc_AF064D: FLdPr Me
  loc_AF0650: VCallAd Control_ID_EstaDefaCaidaOpt
  loc_AF0653: FStAdFunc var_8C
  loc_AF0656: FLdPr var_8C
  loc_AF0659: Me.Value = from_stack_1b
  loc_AF065E: FFree1Ad var_8C
  loc_AF0661: LitI2_Byte 0
  loc_AF0663: FLdPr Me
  loc_AF0666: VCallAd Control_ID_EstaDefaPagoaCuentaOpt
  loc_AF0669: FStAdFunc var_8C
  loc_AF066C: FLdPr var_8C
  loc_AF066F: Me.Value = from_stack_1b
  loc_AF0674: FFree1Ad var_8C
  loc_AF0677: LitI2_Byte 0
  loc_AF0679: FLdPr Me
  loc_AF067C: VCallAd Control_ID_EstaDefaPagadaOpt
  loc_AF067F: FStAdFunc var_8C
  loc_AF0682: FLdPr var_8C
  loc_AF0685: Me.Value = from_stack_1b
  loc_AF068A: FFree1Ad var_8C
  loc_AF068D: ExitProcHresult
End Sub

Private Sub CuotasFacilidadFlex_KeyPress(KeyAscii As Integer) 'B2EC64
  'Data Table: 5162A0
  loc_B2E990: FLdPr Me
  loc_B2E993: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2E996: FStAdFunc var_88
  loc_B2E999: FLdPr var_88
  loc_B2E99C: LateIdLdVar var_98 DispID_11 0
  loc_B2E9A3: CI4Var
  loc_B2E9A5: LitI4 3
  loc_B2E9AA: EqI4
  loc_B2E9AB: FFree1Ad var_88
  loc_B2E9AE: FFree1Var var_98 = ""
  loc_B2E9B1: BranchF loc_B2EC60
  loc_B2E9B4: FLdPr Me
  loc_B2E9B7: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2E9BA: FStAdFunc var_88
  loc_B2E9BD: FLdPr var_88
  loc_B2E9C0: LateIdLdVar var_98 DispID_0 0
  loc_B2E9C7: CStrVarTmp
  loc_B2E9C8: FStStrNoPop var_9C
  loc_B2E9CB: FnLenStr
  loc_B2E9CC: LitI4 &HA
  loc_B2E9D1: EqI4
  loc_B2E9D2: FFree1Str var_9C
  loc_B2E9D5: FFree1Ad var_88
  loc_B2E9D8: FFree1Var var_98 = ""
  loc_B2E9DB: BranchF loc_B2EA05
  loc_B2E9DE: FLdPr Me
  loc_B2E9E1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2E9E4: FStAdFunc var_88
  loc_B2E9E7: FLdPr var_88
  loc_B2E9EA: LateIdLdVar var_98 DispID_0 0
  loc_B2E9F1: CStrVarTmp
  loc_B2E9F2: FStStrNoPop var_9C
  loc_B2E9F5: FLdPr Me
  loc_B2E9F8: MemStStrCopy
  loc_B2E9FC: FFree1Str var_9C
  loc_B2E9FF: FFree1Ad var_88
  loc_B2EA02: FFree1Var var_98 = ""
  loc_B2EA05: ILdI2 KeyAscii
  loc_B2EA08: CI4UI1
  loc_B2EA09: LitI4 8
  loc_B2EA0E: EqI4
  loc_B2EA0F: BranchF loc_B2EB80
  loc_B2EA12: FLdPr Me
  loc_B2EA15: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EA18: FStAdFunc var_88
  loc_B2EA1B: FLdPr var_88
  loc_B2EA1E: LateIdLdVar var_98 DispID_0 0
  loc_B2EA25: CStrVarTmp
  loc_B2EA26: FStStrNoPop var_9C
  loc_B2EA29: LitStr vbNullString
  loc_B2EA2C: NeStr
  loc_B2EA2E: FFree1Str var_9C
  loc_B2EA31: FFree1Ad var_88
  loc_B2EA34: FFree1Var var_98 = ""
  loc_B2EA37: BranchF loc_B2EAF8
  loc_B2EA3A: FLdPr Me
  loc_B2EA3D: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EA40: FStAdFunc var_88
  loc_B2EA43: FLdPr var_88
  loc_B2EA46: LateIdLdVar var_98 DispID_0 0
  loc_B2EA4D: PopAd
  loc_B2EA4F: FLdPr Me
  loc_B2EA52: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EA55: FStAdFunc var_A0
  loc_B2EA58: FLdPr var_A0
  loc_B2EA5B: LateIdLdVar var_B0 DispID_0 0
  loc_B2EA62: CStrVarTmp
  loc_B2EA63: FStStrNoPop var_9C
  loc_B2EA66: FnLenStr
  loc_B2EA67: LitI4 1
  loc_B2EA6C: SubI4
  loc_B2EA6D: FLdRfVar var_98
  loc_B2EA70: CStrVarTmp
  loc_B2EA71: CVarStr var_C0
  loc_B2EA74: FLdRfVar var_D0
  loc_B2EA77: ImpAdCallFPR4  = Left(, )
  loc_B2EA7C: FLdRfVar var_D0
  loc_B2EA7F: CStrVarTmp
  loc_B2EA80: CVarStr var_E0
  loc_B2EA83: PopAdLdVar
  loc_B2EA84: FLdPr Me
  loc_B2EA87: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EA8A: FStAdFunc var_F4
  loc_B2EA8D: FLdPr var_F4
  loc_B2EA90: LateIdSt
  loc_B2EA95: FFree1Str var_9C
  loc_B2EA98: FFreeAd var_88 = "": var_A0 = ""
  loc_B2EAA1: FFreeVar var_98 = "": var_B0 = "": var_C0 = "": var_D0 = ""
  loc_B2EAAE: FLdPr Me
  loc_B2EAB1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EAB4: FStAdFunc var_88
  loc_B2EAB7: FLdPr var_88
  loc_B2EABA: LateIdLdVar var_98 DispID_10 0
  loc_B2EAC1: CI4Var
  loc_B2EAC3: CVarI4
  loc_B2EAC7: PopAdLdVar
  loc_B2EAC8: LitVarI4
  loc_B2EAD0: PopAdLdVar
  loc_B2EAD1: LitVarStr var_134, "Si"
  loc_B2EAD6: PopAdLdVar
  loc_B2EAD7: FLdPr Me
  loc_B2EADA: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EADD: FStAdFunc var_A0
  loc_B2EAE0: FLdPr var_A0
  loc_B2EAE3: LateIdCallSt
  loc_B2EAEB: FFreeAd var_88 = ""
  loc_B2EAF2: FFree1Var var_98 = ""
  loc_B2EAF5: Branch loc_B2EB7D
  loc_B2EAF8: LitVar_Missing var_104
  loc_B2EAFB: PopAdLdVar
  loc_B2EAFC: LitVarI4
  loc_B2EB04: PopAdLdVar
  loc_B2EB05: ImpAdLdRf MemVar_D930A4
  loc_B2EB08: NewIfNullPr frmCalendario
  loc_B2EB0B: frmCalendario.Show from_stack_1, from_stack_2
  loc_B2EB10: ImpAdLdI4 MemVar_D93028
  loc_B2EB13: LitStr vbNullString
  loc_B2EB16: NeStr
  loc_B2EB18: BranchF loc_B2EB36
  loc_B2EB1B: ImpAdLdRf MemVar_D93028
  loc_B2EB1E: CDargRef
  loc_B2EB22: FLdPr Me
  loc_B2EB25: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EB28: FStAdFunc var_88
  loc_B2EB2B: FLdPr var_88
  loc_B2EB2E: LateIdSt
  loc_B2EB33: FFree1Ad var_88
  loc_B2EB36: FLdPr Me
  loc_B2EB39: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EB3C: FStAdFunc var_88
  loc_B2EB3F: FLdPr var_88
  loc_B2EB42: LateIdLdVar var_98 DispID_10 0
  loc_B2EB49: CI4Var
  loc_B2EB4B: CVarI4
  loc_B2EB4F: PopAdLdVar
  loc_B2EB50: LitVarI4
  loc_B2EB58: PopAdLdVar
  loc_B2EB59: LitVarStr var_134, "Si"
  loc_B2EB5E: PopAdLdVar
  loc_B2EB5F: FLdPr Me
  loc_B2EB62: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EB65: FStAdFunc var_A0
  loc_B2EB68: FLdPr var_A0
  loc_B2EB6B: LateIdCallSt
  loc_B2EB73: FFreeAd var_88 = ""
  loc_B2EB7A: FFree1Var var_98 = ""
  loc_B2EB7D: Branch loc_B2EC60
  loc_B2EB80: FLdPr Me
  loc_B2EB83: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EB86: FStAdFunc var_88
  loc_B2EB89: FLdPr var_88
  loc_B2EB8C: LateIdLdVar var_98 DispID_0 0
  loc_B2EB93: CStrVarTmp
  loc_B2EB94: FStStrNoPop var_9C
  loc_B2EB97: FnLenStr
  loc_B2EB98: LitI4 &HA
  loc_B2EB9D: LtI4
  loc_B2EB9E: FFree1Str var_9C
  loc_B2EBA1: FFree1Ad var_88
  loc_B2EBA4: FFree1Var var_98 = ""
  loc_B2EBA7: BranchF loc_B2EC60
  loc_B2EBAA: ILdI2 KeyAscii
  loc_B2EBAD: LitStr "0123456789/"
  loc_B2EBB0: FStStrCopy var_9C
  loc_B2EBB3: FLdRfVar var_9C
  loc_B2EBB6: ILdRf KeyAscii
  loc_B2EBB9: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_B2EBBE: EqI2
  loc_B2EBBF: FFree1Str var_9C
  loc_B2EBC2: BranchF loc_B2EC60
  loc_B2EBC5: FLdPr Me
  loc_B2EBC8: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EBCB: FStAdFunc var_88
  loc_B2EBCE: FLdPr var_88
  loc_B2EBD1: LateIdLdVar var_98 DispID_0 0
  loc_B2EBD8: CStrVarTmp
  loc_B2EBD9: CVarStr var_C0
  loc_B2EBDC: ILdI2 KeyAscii
  loc_B2EBDF: CI4UI1
  loc_B2EBE0: FLdRfVar var_B0
  loc_B2EBE3: ImpAdCallFPR4  = Chr()
  loc_B2EBE8: FLdRfVar var_B0
  loc_B2EBEB: AddVar var_D0
  loc_B2EBEF: CStrVarTmp
  loc_B2EBF0: CVarStr var_E0
  loc_B2EBF3: PopAdLdVar
  loc_B2EBF4: FLdPr Me
  loc_B2EBF7: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EBFA: FStAdFunc var_A0
  loc_B2EBFD: FLdPr var_A0
  loc_B2EC00: LateIdSt
  loc_B2EC05: FFreeAd var_88 = ""
  loc_B2EC0C: FFreeVar var_98 = "": var_C0 = "": var_B0 = "": var_D0 = ""
  loc_B2EC19: FLdPr Me
  loc_B2EC1C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EC1F: FStAdFunc var_88
  loc_B2EC22: FLdPr var_88
  loc_B2EC25: LateIdLdVar var_98 DispID_10 0
  loc_B2EC2C: CI4Var
  loc_B2EC2E: CVarI4
  loc_B2EC32: PopAdLdVar
  loc_B2EC33: LitVarI4
  loc_B2EC3B: PopAdLdVar
  loc_B2EC3C: LitVarStr var_134, "Si"
  loc_B2EC41: PopAdLdVar
  loc_B2EC42: FLdPr Me
  loc_B2EC45: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2EC48: FStAdFunc var_A0
  loc_B2EC4B: FLdPr var_A0
  loc_B2EC4E: LateIdCallSt
  loc_B2EC56: FFreeAd var_88 = ""
  loc_B2EC5D: FFree1Var var_98 = ""
  loc_B2EC60: ExitProcHresult
End Sub

Private Sub DesdCuotEstadoTxt_GotFocus() '9C3E30
  'Data Table: 5162A0
  loc_9C3E1C: FLdPr Me
  loc_9C3E1F: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_9C3E22: CVarAd
  loc_9C3E26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3E2B: FFree1Var var_94 = ""
  loc_9C3E2E: ExitProcHresult
End Sub

Private Sub DesdCuotEstadoTxt_KeyPress(KeyAscii As Integer) '9CF110
  'Data Table: 5162A0
  loc_9CF0F8: LitStr "0123456789"
  loc_9CF0FB: FStStrCopy var_88
  loc_9CF0FE: FLdRfVar var_88
  loc_9CF101: ILdRf KeyAscii
  loc_9CF104: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF109: IStI2 KeyAscii
  loc_9CF10C: FFree1Str var_88
  loc_9CF10F: ExitProcHresult
End Sub

Private Sub DesdCuotEstadoTxt_Validate(Cancel As Boolean) 'AF13D0
  'Data Table: 5162A0
  loc_AF1234: FLdRfVar var_8A
  loc_AF1237: FLdPr Me
  loc_AF123A: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF123D: FStAdFunc var_88
  loc_AF1240: FLdPr var_88
  loc_AF1243:  = Me.Enabled
  loc_AF1248: FLdI2 var_8A
  loc_AF124B: FFree1Ad var_88
  loc_AF124E: BranchF loc_AF13CE
  loc_AF1251: FLdRfVar var_90
  loc_AF1254: FLdPr Me
  loc_AF1257: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF125A: FStAdFunc var_88
  loc_AF125D: FLdPr var_88
  loc_AF1260:  = Me.Text
  loc_AF1265: LitI2_Byte &HFF
  loc_AF1267: LitI2_Byte 0
  loc_AF1269: ILdRf var_90
  loc_AF126C: LitStr "Cuota"
  loc_AF126F: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF1274: FStStrNoPop var_94
  loc_AF1277: FLdPr Me
  loc_AF127A: MemStStrCopy
  loc_AF127E: FFreeStr var_90 = ""
  loc_AF1285: FFree1Ad var_88
  loc_AF1288: FLdPr Me
  loc_AF128B: MemLdStr global_88
  loc_AF128E: LitStr vbNullString
  loc_AF1291: NeStr
  loc_AF1293: BranchF loc_AF12B9
  loc_AF1296: FLdPr Me
  loc_AF1299: MemLdStr global_88
  loc_AF129C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF12A1: FLdPr Me
  loc_AF12A4: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF12A7: CVarAd
  loc_AF12AB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF12B0: FFree1Var var_A4 = ""
  loc_AF12B3: LitI2_Byte &HFF
  loc_AF12B5: IStI2 Cancel
  loc_AF12B8: ExitProcHresult
  loc_AF12B9: LitVarI4
  loc_AF12C1: PopAdLdVar
  loc_AF12C2: LitVarI4
  loc_AF12CA: PopAdLdVar
  loc_AF12CB: FLdPr Me
  loc_AF12CE: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF12D1: FStAdFunc var_88
  loc_AF12D4: FLdPr var_88
  loc_AF12D7: LateIdCallLdVar
  loc_AF12E1: CStrVarTmp
  loc_AF12E2: FStStrNoPop var_90
  loc_AF12E5: CI2Str
  loc_AF12E7: FLdRfVar var_94
  loc_AF12EA: FLdPr Me
  loc_AF12ED: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF12F0: FStAdFunc var_E8
  loc_AF12F3: FLdPr var_E8
  loc_AF12F6:  = Me.Text
  loc_AF12FB: ILdRf var_94
  loc_AF12FE: CI2Str
  loc_AF1300: GtI2
  loc_AF1301: FFreeStr var_90 = ""
  loc_AF1308: FFreeAd var_88 = ""
  loc_AF130F: FFree1Var var_A4 = ""
  loc_AF1312: BranchF loc_AF1335
  loc_AF1315: LitStr "La cuota Desde no existe...Reintente"
  loc_AF1318: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF131D: FLdPr Me
  loc_AF1320: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF1323: CVarAd
  loc_AF1327: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF132C: FFree1Var var_A4 = ""
  loc_AF132F: LitI2_Byte &HFF
  loc_AF1331: IStI2 Cancel
  loc_AF1334: ExitProcHresult
  loc_AF1335: FLdPr Me
  loc_AF1338: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF133B: FStAdFunc var_88
  loc_AF133E: FLdPr var_88
  loc_AF1341: LateIdLdVar var_A4 DispID_4 0
  loc_AF1348: CI4Var
  loc_AF134A: LitI4 1
  loc_AF134F: SubI4
  loc_AF1350: CVarI4
  loc_AF1354: PopAdLdVar
  loc_AF1355: LitVarI4
  loc_AF135D: PopAdLdVar
  loc_AF135E: FLdPr Me
  loc_AF1361: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF1364: FStAdFunc var_E8
  loc_AF1367: FLdPr var_E8
  loc_AF136A: LateIdCallLdVar
  loc_AF1374: CStrVarTmp
  loc_AF1375: FStStrNoPop var_90
  loc_AF1378: CI2Str
  loc_AF137A: FLdRfVar var_94
  loc_AF137D: FLdPr Me
  loc_AF1380: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF1383: FStAdFunc var_FC
  loc_AF1386: FLdPr var_FC
  loc_AF1389:  = Me.Text
  loc_AF138E: ILdRf var_94
  loc_AF1391: CI2Str
  loc_AF1393: LtI2
  loc_AF1394: FFreeStr var_90 = ""
  loc_AF139B: FFreeAd var_88 = "": var_E8 = ""
  loc_AF13A4: FFreeVar var_A4 = ""
  loc_AF13AB: BranchF loc_AF13CE
  loc_AF13AE: LitStr "La cuota Desde supera el numero de fila...Reintente"
  loc_AF13B1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF13B6: FLdPr Me
  loc_AF13B9: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AF13BC: CVarAd
  loc_AF13C0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF13C5: FFree1Var var_A4 = ""
  loc_AF13C8: LitI2_Byte &HFF
  loc_AF13CA: IStI2 Cancel
  loc_AF13CD: ExitProcHresult
  loc_AF13CE: ExitProcHresult
End Sub

Private Sub HastCuotEstadoTxt_GotFocus() '9C3DA0
  'Data Table: 5162A0
  loc_9C3D8C: FLdPr Me
  loc_9C3D8F: VCallAd Control_ID_HastCuotEstadoTxt
  loc_9C3D92: CVarAd
  loc_9C3D96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3D9B: FFree1Var var_94 = ""
  loc_9C3D9E: ExitProcHresult
End Sub

Private Sub HastCuotEstadoTxt_KeyPress(KeyAscii As Integer) '9CF1F4
  'Data Table: 5162A0
  loc_9CF1DC: LitStr "0123456789"
  loc_9CF1DF: FStStrCopy var_88
  loc_9CF1E2: FLdRfVar var_88
  loc_9CF1E5: ILdRf KeyAscii
  loc_9CF1E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF1ED: IStI2 KeyAscii
  loc_9CF1F0: FFree1Str var_88
  loc_9CF1F3: ExitProcHresult
End Sub

Private Sub HastCuotEstadoTxt_Validate(Cancel As Boolean) 'AEC5DC
  'Data Table: 5162A0
  loc_AEC458: FLdRfVar var_8A
  loc_AEC45B: FLdPr Me
  loc_AEC45E: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC461: FStAdFunc var_88
  loc_AEC464: FLdPr var_88
  loc_AEC467:  = Me.Enabled
  loc_AEC46C: FLdI2 var_8A
  loc_AEC46F: FFree1Ad var_88
  loc_AEC472: BranchF loc_AEC5DA
  loc_AEC475: FLdRfVar var_90
  loc_AEC478: FLdPr Me
  loc_AEC47B: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC47E: FStAdFunc var_88
  loc_AEC481: FLdPr var_88
  loc_AEC484:  = Me.Text
  loc_AEC489: LitI2_Byte &HFF
  loc_AEC48B: LitI2_Byte 0
  loc_AEC48D: ILdRf var_90
  loc_AEC490: LitStr "Cuota"
  loc_AEC493: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AEC498: FStStrNoPop var_94
  loc_AEC49B: FLdPr Me
  loc_AEC49E: MemStStrCopy
  loc_AEC4A2: FFreeStr var_90 = ""
  loc_AEC4A9: FFree1Ad var_88
  loc_AEC4AC: FLdPr Me
  loc_AEC4AF: MemLdStr global_88
  loc_AEC4B2: LitStr vbNullString
  loc_AEC4B5: NeStr
  loc_AEC4B7: BranchF loc_AEC4DD
  loc_AEC4BA: FLdPr Me
  loc_AEC4BD: MemLdStr global_88
  loc_AEC4C0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC4C5: FLdPr Me
  loc_AEC4C8: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC4CB: CVarAd
  loc_AEC4CF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEC4D4: FFree1Var var_A4 = ""
  loc_AEC4D7: LitI2_Byte &HFF
  loc_AEC4D9: IStI2 Cancel
  loc_AEC4DC: ExitProcHresult
  loc_AEC4DD: FLdRfVar var_90
  loc_AEC4E0: FLdPr Me
  loc_AEC4E3: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AEC4E6: FStAdFunc var_88
  loc_AEC4E9: FLdPr var_88
  loc_AEC4EC:  = Me.Text
  loc_AEC4F1: ILdRf var_90
  loc_AEC4F4: CI2Str
  loc_AEC4F6: FLdRfVar var_94
  loc_AEC4F9: FLdPr Me
  loc_AEC4FC: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC4FF: FStAdFunc var_A8
  loc_AEC502: FLdPr var_A8
  loc_AEC505:  = Me.Text
  loc_AEC50A: ILdRf var_94
  loc_AEC50D: CI2Str
  loc_AEC50F: GtI2
  loc_AEC510: FFreeStr var_90 = ""
  loc_AEC517: FFreeAd var_88 = ""
  loc_AEC51E: BranchF loc_AEC541
  loc_AEC521: LitStr "La cuota Hasta no puede ser menor a la de Desde"
  loc_AEC524: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC529: FLdPr Me
  loc_AEC52C: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC52F: CVarAd
  loc_AEC533: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEC538: FFree1Var var_A4 = ""
  loc_AEC53B: LitI2_Byte &HFF
  loc_AEC53D: IStI2 Cancel
  loc_AEC540: ExitProcHresult
  loc_AEC541: FLdPr Me
  loc_AEC544: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AEC547: FStAdFunc var_88
  loc_AEC54A: FLdPr var_88
  loc_AEC54D: LateIdLdVar var_A4 DispID_4 0
  loc_AEC554: CI4Var
  loc_AEC556: LitI4 1
  loc_AEC55B: SubI4
  loc_AEC55C: CVarI4
  loc_AEC560: PopAdLdVar
  loc_AEC561: LitVarI4
  loc_AEC569: PopAdLdVar
  loc_AEC56A: FLdPr Me
  loc_AEC56D: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AEC570: FStAdFunc var_A8
  loc_AEC573: FLdPr var_A8
  loc_AEC576: LateIdCallLdVar
  loc_AEC580: CStrVarTmp
  loc_AEC581: FStStrNoPop var_90
  loc_AEC584: CI2Str
  loc_AEC586: FLdRfVar var_94
  loc_AEC589: FLdPr Me
  loc_AEC58C: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC58F: FStAdFunc var_FC
  loc_AEC592: FLdPr var_FC
  loc_AEC595:  = Me.Text
  loc_AEC59A: ILdRf var_94
  loc_AEC59D: CI2Str
  loc_AEC59F: LtI2
  loc_AEC5A0: FFreeStr var_90 = ""
  loc_AEC5A7: FFreeAd var_88 = "": var_A8 = ""
  loc_AEC5B0: FFreeVar var_A4 = ""
  loc_AEC5B7: BranchF loc_AEC5DA
  loc_AEC5BA: LitStr "La cuota Hasta supera el numero de fila...Reintente"
  loc_AEC5BD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEC5C2: FLdPr Me
  loc_AEC5C5: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AEC5C8: CVarAd
  loc_AEC5CC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEC5D1: FFree1Var var_A4 = ""
  loc_AEC5D4: LitI2_Byte &HFF
  loc_AEC5D6: IStI2 Cancel
  loc_AEC5D9: ExitProcHresult
  loc_AEC5DA: ExitProcHresult
End Sub

Private Sub HastCuotfechaTxt_GotFocus() '9C75E0
  'Data Table: 5162A0
  loc_9C75CC: FLdPr Me
  loc_9C75CF: VCallAd Control_ID_HastCuotfechaTxt
  loc_9C75D2: CVarAd
  loc_9C75D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C75DB: FFree1Var var_94 = ""
  loc_9C75DE: ExitProcHresult
End Sub

Private Sub HastCuotfechaTxt_KeyPress(KeyAscii As Integer) '9CEEFC
  'Data Table: 5162A0
  loc_9CEEE4: LitStr "0123456789"
  loc_9CEEE7: FStStrCopy var_88
  loc_9CEEEA: FLdRfVar var_88
  loc_9CEEED: ILdRf KeyAscii
  loc_9CEEF0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CEEF5: IStI2 KeyAscii
  loc_9CEEF8: FFree1Str var_88
  loc_9CEEFB: ExitProcHresult
End Sub

Private Sub HastCuotfechaTxt_Validate(Cancel As Boolean) 'AF32C4
  'Data Table: 5162A0
  loc_AF311C: FLdPr Me
  loc_AF311F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF3122: FStAdFunc var_88
  loc_AF3125: FLdPr var_88
  loc_AF3128: LateIdLdVar var_98 DispID_4 0
  loc_AF312F: CI4Var
  loc_AF3131: LitI4 1
  loc_AF3136: GtI4
  loc_AF3137: FFree1Ad var_88
  loc_AF313A: FFree1Var var_98 = ""
  loc_AF313D: BranchF loc_AF32C2
  loc_AF3140: FLdRfVar var_9A
  loc_AF3143: FLdPr Me
  loc_AF3146: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF3149: FStAdFunc var_88
  loc_AF314C: FLdPr var_88
  loc_AF314F:  = Me.Enabled
  loc_AF3154: FLdI2 var_9A
  loc_AF3157: FFree1Ad var_88
  loc_AF315A: BranchF loc_AF32C2
  loc_AF315D: FLdRfVar var_A0
  loc_AF3160: FLdPr Me
  loc_AF3163: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF3166: FStAdFunc var_88
  loc_AF3169: FLdPr var_88
  loc_AF316C:  = Me.Text
  loc_AF3171: LitI2_Byte &HFF
  loc_AF3173: LitI2_Byte 0
  loc_AF3175: ILdRf var_A0
  loc_AF3178: LitStr "Cuota"
  loc_AF317B: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF3180: FStStrNoPop var_A4
  loc_AF3183: FLdPr Me
  loc_AF3186: MemStStrCopy
  loc_AF318A: FFreeStr var_A0 = ""
  loc_AF3191: FFree1Ad var_88
  loc_AF3194: FLdPr Me
  loc_AF3197: MemLdStr global_88
  loc_AF319A: LitStr vbNullString
  loc_AF319D: NeStr
  loc_AF319F: BranchF loc_AF31C5
  loc_AF31A2: FLdPr Me
  loc_AF31A5: MemLdStr global_88
  loc_AF31A8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF31AD: FLdPr Me
  loc_AF31B0: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF31B3: CVarAd
  loc_AF31B7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF31BC: FFree1Var var_98 = ""
  loc_AF31BF: LitI2_Byte &HFF
  loc_AF31C1: IStI2 Cancel
  loc_AF31C4: ExitProcHresult
  loc_AF31C5: FLdRfVar var_A0
  loc_AF31C8: FLdPr Me
  loc_AF31CB: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF31CE: FStAdFunc var_88
  loc_AF31D1: FLdPr var_88
  loc_AF31D4:  = Me.Text
  loc_AF31D9: ILdRf var_A0
  loc_AF31DC: CI2Str
  loc_AF31DE: FLdRfVar var_A4
  loc_AF31E1: FLdPr Me
  loc_AF31E4: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF31E7: FStAdFunc var_A8
  loc_AF31EA: FLdPr var_A8
  loc_AF31ED:  = Me.Text
  loc_AF31F2: ILdRf var_A4
  loc_AF31F5: CI2Str
  loc_AF31F7: GtI2
  loc_AF31F8: FFreeStr var_A0 = ""
  loc_AF31FF: FFreeAd var_88 = ""
  loc_AF3206: BranchF loc_AF3229
  loc_AF3209: LitStr "La cuota Hasta no puede ser menor a la de Desde"
  loc_AF320C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF3211: FLdPr Me
  loc_AF3214: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF3217: CVarAd
  loc_AF321B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF3220: FFree1Var var_98 = ""
  loc_AF3223: LitI2_Byte &HFF
  loc_AF3225: IStI2 Cancel
  loc_AF3228: ExitProcHresult
  loc_AF3229: FLdPr Me
  loc_AF322C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF322F: FStAdFunc var_88
  loc_AF3232: FLdPr var_88
  loc_AF3235: LateIdLdVar var_98 DispID_4 0
  loc_AF323C: CI4Var
  loc_AF323E: LitI4 1
  loc_AF3243: SubI4
  loc_AF3244: CVarI4
  loc_AF3248: PopAdLdVar
  loc_AF3249: LitVarI4
  loc_AF3251: PopAdLdVar
  loc_AF3252: FLdPr Me
  loc_AF3255: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF3258: FStAdFunc var_A8
  loc_AF325B: FLdPr var_A8
  loc_AF325E: LateIdCallLdVar
  loc_AF3268: CStrVarTmp
  loc_AF3269: FStStrNoPop var_A0
  loc_AF326C: CI2Str
  loc_AF326E: FLdRfVar var_A4
  loc_AF3271: FLdPr Me
  loc_AF3274: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF3277: FStAdFunc var_FC
  loc_AF327A: FLdPr var_FC
  loc_AF327D:  = Me.Text
  loc_AF3282: ILdRf var_A4
  loc_AF3285: CI2Str
  loc_AF3287: LtI2
  loc_AF3288: FFreeStr var_A0 = ""
  loc_AF328F: FFreeAd var_88 = "": var_A8 = ""
  loc_AF3298: FFreeVar var_98 = ""
  loc_AF329F: BranchF loc_AF32C2
  loc_AF32A2: LitStr "La cuota Hasta supera el numero de fila...Reintente"
  loc_AF32A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF32AA: FLdPr Me
  loc_AF32AD: VCallAd Control_ID_HastCuotfechaTxt
  loc_AF32B0: CVarAd
  loc_AF32B4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF32B9: FFree1Var var_98 = ""
  loc_AF32BC: LitI2_Byte &HFF
  loc_AF32BE: IStI2 Cancel
  loc_AF32C1: ExitProcHresult
  loc_AF32C2: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CF324
  'Data Table: 5162A0
  loc_9CF30C: ILdRf Me
  loc_9CF30F: FStAdNoPop
  loc_9CF313: ImpAdLdRf MemVar_D9C5D8
  loc_9CF316: NewIfNullPr Global
  loc_9CF319: Global.Unload from_stack_1
  loc_9CF31E: FFree1Ad var_88
  loc_9CF321: ExitProcHresult
End Sub

Private Sub DesdCuotfechaTxt_GotFocus() '9C3FE0
  'Data Table: 5162A0
  loc_9C3FCC: FLdPr Me
  loc_9C3FCF: VCallAd Control_ID_DesdCuotfechaTxt
  loc_9C3FD2: CVarAd
  loc_9C3FD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3FDB: FFree1Var var_94 = ""
  loc_9C3FDE: ExitProcHresult
End Sub

Private Sub DesdCuotfechaTxt_KeyPress(KeyAscii As Integer) '9CEBB8
  'Data Table: 5162A0
  loc_9CEBA0: LitStr "0123456789"
  loc_9CEBA3: FStStrCopy var_88
  loc_9CEBA6: FLdRfVar var_88
  loc_9CEBA9: ILdRf KeyAscii
  loc_9CEBAC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CEBB1: IStI2 KeyAscii
  loc_9CEBB4: FFree1Str var_88
  loc_9CEBB7: ExitProcHresult
End Sub

Private Sub DesdCuotfechaTxt_Validate(Cancel As Boolean) 'AF0E18
  'Data Table: 5162A0
  loc_AF0C7C: FLdRfVar var_8A
  loc_AF0C7F: FLdPr Me
  loc_AF0C82: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0C85: FStAdFunc var_88
  loc_AF0C88: FLdPr var_88
  loc_AF0C8B:  = Me.Enabled
  loc_AF0C90: FLdI2 var_8A
  loc_AF0C93: FFree1Ad var_88
  loc_AF0C96: BranchF loc_AF0E16
  loc_AF0C99: FLdRfVar var_90
  loc_AF0C9C: FLdPr Me
  loc_AF0C9F: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0CA2: FStAdFunc var_88
  loc_AF0CA5: FLdPr var_88
  loc_AF0CA8:  = Me.Text
  loc_AF0CAD: LitI2_Byte &HFF
  loc_AF0CAF: LitI2_Byte 0
  loc_AF0CB1: ILdRf var_90
  loc_AF0CB4: LitStr "Cuota"
  loc_AF0CB7: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AF0CBC: FStStrNoPop var_94
  loc_AF0CBF: FLdPr Me
  loc_AF0CC2: MemStStrCopy
  loc_AF0CC6: FFreeStr var_90 = ""
  loc_AF0CCD: FFree1Ad var_88
  loc_AF0CD0: FLdPr Me
  loc_AF0CD3: MemLdStr global_88
  loc_AF0CD6: LitStr vbNullString
  loc_AF0CD9: NeStr
  loc_AF0CDB: BranchF loc_AF0D01
  loc_AF0CDE: FLdPr Me
  loc_AF0CE1: MemLdStr global_88
  loc_AF0CE4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF0CE9: FLdPr Me
  loc_AF0CEC: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0CEF: CVarAd
  loc_AF0CF3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF0CF8: FFree1Var var_A4 = ""
  loc_AF0CFB: LitI2_Byte &HFF
  loc_AF0CFD: IStI2 Cancel
  loc_AF0D00: ExitProcHresult
  loc_AF0D01: LitVarI4
  loc_AF0D09: PopAdLdVar
  loc_AF0D0A: LitVarI4
  loc_AF0D12: PopAdLdVar
  loc_AF0D13: FLdPr Me
  loc_AF0D16: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF0D19: FStAdFunc var_88
  loc_AF0D1C: FLdPr var_88
  loc_AF0D1F: LateIdCallLdVar
  loc_AF0D29: CStrVarTmp
  loc_AF0D2A: FStStrNoPop var_90
  loc_AF0D2D: CI2Str
  loc_AF0D2F: FLdRfVar var_94
  loc_AF0D32: FLdPr Me
  loc_AF0D35: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0D38: FStAdFunc var_E8
  loc_AF0D3B: FLdPr var_E8
  loc_AF0D3E:  = Me.Text
  loc_AF0D43: ILdRf var_94
  loc_AF0D46: CI2Str
  loc_AF0D48: GtI2
  loc_AF0D49: FFreeStr var_90 = ""
  loc_AF0D50: FFreeAd var_88 = ""
  loc_AF0D57: FFree1Var var_A4 = ""
  loc_AF0D5A: BranchF loc_AF0D7D
  loc_AF0D5D: LitStr "La cuota Desde no existe...Reintente"
  loc_AF0D60: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF0D65: FLdPr Me
  loc_AF0D68: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0D6B: CVarAd
  loc_AF0D6F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF0D74: FFree1Var var_A4 = ""
  loc_AF0D77: LitI2_Byte &HFF
  loc_AF0D79: IStI2 Cancel
  loc_AF0D7C: ExitProcHresult
  loc_AF0D7D: FLdPr Me
  loc_AF0D80: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF0D83: FStAdFunc var_88
  loc_AF0D86: FLdPr var_88
  loc_AF0D89: LateIdLdVar var_A4 DispID_4 0
  loc_AF0D90: CI4Var
  loc_AF0D92: LitI4 1
  loc_AF0D97: SubI4
  loc_AF0D98: CVarI4
  loc_AF0D9C: PopAdLdVar
  loc_AF0D9D: LitVarI4
  loc_AF0DA5: PopAdLdVar
  loc_AF0DA6: FLdPr Me
  loc_AF0DA9: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF0DAC: FStAdFunc var_E8
  loc_AF0DAF: FLdPr var_E8
  loc_AF0DB2: LateIdCallLdVar
  loc_AF0DBC: CStrVarTmp
  loc_AF0DBD: FStStrNoPop var_90
  loc_AF0DC0: CI2Str
  loc_AF0DC2: FLdRfVar var_94
  loc_AF0DC5: FLdPr Me
  loc_AF0DC8: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0DCB: FStAdFunc var_FC
  loc_AF0DCE: FLdPr var_FC
  loc_AF0DD1:  = Me.Text
  loc_AF0DD6: ILdRf var_94
  loc_AF0DD9: CI2Str
  loc_AF0DDB: LtI2
  loc_AF0DDC: FFreeStr var_90 = ""
  loc_AF0DE3: FFreeAd var_88 = "": var_E8 = ""
  loc_AF0DEC: FFreeVar var_A4 = ""
  loc_AF0DF3: BranchF loc_AF0E16
  loc_AF0DF6: LitStr "La cuota Desde supera el numero de fila...Reintente"
  loc_AF0DF9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF0DFE: FLdPr Me
  loc_AF0E01: VCallAd Control_ID_DesdCuotfechaTxt
  loc_AF0E04: CVarAd
  loc_AF0E08: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF0E0D: FFree1Var var_A4 = ""
  loc_AF0E10: LitI2_Byte &HFF
  loc_AF0E12: IStI2 Cancel
  loc_AF0E15: ExitProcHresult
  loc_AF0E16: ExitProcHresult
End Sub

Private Sub FepaFapa2Msk_UnknownEvent_0 '9C3EC0
  'Data Table: 5162A0
  loc_9C3EAC: FLdPr Me
  loc_9C3EAF: VCallAd Control_ID_FepaFapa2Msk
  loc_9C3EB2: CVarAd
  loc_9C3EB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3EBB: FFree1Var var_94 = ""
  loc_9C3EBE: ExitProcHresult
End Sub

Private Sub FepaFapa2Msk_UnknownEvent_8 'ACFCC4
  'Data Table: 5162A0
  loc_ACFBA4: FLdPr Me
  loc_ACFBA7: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFBAA: FStAdFunc var_88
  loc_ACFBAD: FLdPr var_88
  loc_ACFBB0: LateIdLdVar var_98 DispID_13 -32767
  loc_ACFBB7: CBoolVar
  loc_ACFBB9: LitI2_Byte &HFF
  loc_ACFBBB: EqI2
  loc_ACFBBC: FLdPr Me
  loc_ACFBBF: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFBC2: FStAdFunc var_9C
  loc_ACFBC5: FLdPr var_9C
  loc_ACFBC8: LateIdLdVar var_AC DispID_22 0
  loc_ACFBCF: CStrVarTmp
  loc_ACFBD0: CVarStr var_BC
  loc_ACFBD3: ImpAdCallI2 IsDate()
  loc_ACFBD8: AndI4
  loc_ACFBD9: FFreeAd var_88 = ""
  loc_ACFBE0: FFreeVar var_98 = "": var_AC = ""
  loc_ACFBE9: BranchF loc_ACFCC1
  loc_ACFBEC: LitVarStr var_CC, vbNullString
  loc_ACFBF1: PopAdLdVar
  loc_ACFBF2: FLdPr Me
  loc_ACFBF5: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFBF8: FStAdFunc var_88
  loc_ACFBFB: FLdPr var_88
  loc_ACFBFE: LateIdSt
  loc_ACFC03: FFree1Ad var_88
  loc_ACFC06: FLdPr Me
  loc_ACFC09: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFC0C: FStAdFunc var_88
  loc_ACFC0F: FLdPr var_88
  loc_ACFC12: LateIdLdVar var_98 DispID_22 0
  loc_ACFC19: CStrVarTmp
  loc_ACFC1A: FStStrNoPop var_E0
  loc_ACFC1D: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_ACFC22: FStStrNoPop var_E4
  loc_ACFC25: FLdPr Me
  loc_ACFC28: MemStStrCopy
  loc_ACFC2C: FFreeStr var_E0 = ""
  loc_ACFC33: FFree1Ad var_88
  loc_ACFC36: FFree1Var var_98 = ""
  loc_ACFC39: LitVarStr var_CC, "##/##/####"
  loc_ACFC3E: PopAdLdVar
  loc_ACFC3F: FLdPr Me
  loc_ACFC42: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFC45: FStAdFunc var_88
  loc_ACFC48: FLdPr var_88
  loc_ACFC4B: LateIdSt
  loc_ACFC50: FFree1Ad var_88
  loc_ACFC53: LitVarI2 var_CC, 10
  loc_ACFC58: PopAdLdVar
  loc_ACFC59: FLdPr Me
  loc_ACFC5C: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFC5F: FStAdFunc var_88
  loc_ACFC62: FLdPr var_88
  loc_ACFC65: LateIdSt
  loc_ACFC6A: FFree1Ad var_88
  loc_ACFC6D: FLdPr Me
  loc_ACFC70: MemLdStr global_88
  loc_ACFC73: LitStr vbNullString
  loc_ACFC76: NeStr
  loc_ACFC78: BranchF loc_ACFCC1
  loc_ACFC7B: FLdPr Me
  loc_ACFC7E: MemLdStr global_88
  loc_ACFC81: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACFC86: LitI2_Byte 0
  loc_ACFC88: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ACFC8D: CStrDate
  loc_ACFC8F: CVarStr var_98
  loc_ACFC92: PopAdLdVar
  loc_ACFC93: FLdPr Me
  loc_ACFC96: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFC99: FStAdFunc var_88
  loc_ACFC9C: FLdPr var_88
  loc_ACFC9F: LateIdSt
  loc_ACFCA4: FFree1Ad var_88
  loc_ACFCA7: FFree1Var var_98 = ""
  loc_ACFCAA: FLdPr Me
  loc_ACFCAD: VCallAd Control_ID_FepaFapa2Msk
  loc_ACFCB0: CVarAd
  loc_ACFCB4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACFCB9: FFree1Var var_98 = ""
  loc_ACFCBC: LitI2_Byte &HFF
  loc_ACFCBE: IStI2 Cancel
  loc_ACFCC1: ExitProcHresult
End Sub

Private Sub FepaFapaMsk_UnknownEvent_0 '9C4268
  'Data Table: 5162A0
  loc_9C4254: FLdPr Me
  loc_9C4257: VCallAd Control_ID_FepaFapaMsk
  loc_9C425A: CVarAd
  loc_9C425E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4263: FFree1Var var_94 = ""
  loc_9C4266: ExitProcHresult
End Sub

Private Sub FepaFapaMsk_UnknownEvent_8 'ACFB58
  'Data Table: 5162A0
  loc_ACFA38: FLdPr Me
  loc_ACFA3B: VCallAd Control_ID_FepaFapaMsk
  loc_ACFA3E: FStAdFunc var_88
  loc_ACFA41: FLdPr var_88
  loc_ACFA44: LateIdLdVar var_98 DispID_13 -32767
  loc_ACFA4B: CBoolVar
  loc_ACFA4D: LitI2_Byte &HFF
  loc_ACFA4F: EqI2
  loc_ACFA50: FLdPr Me
  loc_ACFA53: VCallAd Control_ID_FepaFapaMsk
  loc_ACFA56: FStAdFunc var_9C
  loc_ACFA59: FLdPr var_9C
  loc_ACFA5C: LateIdLdVar var_AC DispID_22 0
  loc_ACFA63: CStrVarTmp
  loc_ACFA64: CVarStr var_BC
  loc_ACFA67: ImpAdCallI2 IsDate()
  loc_ACFA6C: AndI4
  loc_ACFA6D: FFreeAd var_88 = ""
  loc_ACFA74: FFreeVar var_98 = "": var_AC = ""
  loc_ACFA7D: BranchF loc_ACFB55
  loc_ACFA80: LitVarStr var_CC, vbNullString
  loc_ACFA85: PopAdLdVar
  loc_ACFA86: FLdPr Me
  loc_ACFA89: VCallAd Control_ID_FepaFapaMsk
  loc_ACFA8C: FStAdFunc var_88
  loc_ACFA8F: FLdPr var_88
  loc_ACFA92: LateIdSt
  loc_ACFA97: FFree1Ad var_88
  loc_ACFA9A: FLdPr Me
  loc_ACFA9D: VCallAd Control_ID_FepaFapaMsk
  loc_ACFAA0: FStAdFunc var_88
  loc_ACFAA3: FLdPr var_88
  loc_ACFAA6: LateIdLdVar var_98 DispID_22 0
  loc_ACFAAD: CStrVarTmp
  loc_ACFAAE: FStStrNoPop var_E0
  loc_ACFAB1: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_ACFAB6: FStStrNoPop var_E4
  loc_ACFAB9: FLdPr Me
  loc_ACFABC: MemStStrCopy
  loc_ACFAC0: FFreeStr var_E0 = ""
  loc_ACFAC7: FFree1Ad var_88
  loc_ACFACA: FFree1Var var_98 = ""
  loc_ACFACD: LitVarStr var_CC, "##/##/####"
  loc_ACFAD2: PopAdLdVar
  loc_ACFAD3: FLdPr Me
  loc_ACFAD6: VCallAd Control_ID_FepaFapaMsk
  loc_ACFAD9: FStAdFunc var_88
  loc_ACFADC: FLdPr var_88
  loc_ACFADF: LateIdSt
  loc_ACFAE4: FFree1Ad var_88
  loc_ACFAE7: LitVarI2 var_CC, 10
  loc_ACFAEC: PopAdLdVar
  loc_ACFAED: FLdPr Me
  loc_ACFAF0: VCallAd Control_ID_FepaFapaMsk
  loc_ACFAF3: FStAdFunc var_88
  loc_ACFAF6: FLdPr var_88
  loc_ACFAF9: LateIdSt
  loc_ACFAFE: FFree1Ad var_88
  loc_ACFB01: FLdPr Me
  loc_ACFB04: MemLdStr global_88
  loc_ACFB07: LitStr vbNullString
  loc_ACFB0A: NeStr
  loc_ACFB0C: BranchF loc_ACFB55
  loc_ACFB0F: FLdPr Me
  loc_ACFB12: MemLdStr global_88
  loc_ACFB15: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACFB1A: LitI2_Byte 0
  loc_ACFB1C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ACFB21: CStrDate
  loc_ACFB23: CVarStr var_98
  loc_ACFB26: PopAdLdVar
  loc_ACFB27: FLdPr Me
  loc_ACFB2A: VCallAd Control_ID_FepaFapaMsk
  loc_ACFB2D: FStAdFunc var_88
  loc_ACFB30: FLdPr var_88
  loc_ACFB33: LateIdSt
  loc_ACFB38: FFree1Ad var_88
  loc_ACFB3B: FFree1Var var_98 = ""
  loc_ACFB3E: FLdPr Me
  loc_ACFB41: VCallAd Control_ID_FepaFapaMsk
  loc_ACFB44: CVarAd
  loc_ACFB48: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACFB4D: FFree1Var var_98 = ""
  loc_ACFB50: LitI2_Byte &HFF
  loc_ACFB52: IStI2 Cancel
  loc_ACFB55: ExitProcHresult
End Sub

Private Sub FepaFapaMsk_KeyPress(KeyAscii As Integer) 'A55B24
  'Data Table: 5162A0
  loc_A55AC8: ILdI2 KeyAscii
  loc_A55ACB: CI4UI1
  loc_A55ACC: LitI4 &H20
  loc_A55AD1: EqI4
  loc_A55AD2: BranchF loc_A55B21
  loc_A55AD5: LitVar_Missing var_A4
  loc_A55AD8: PopAdLdVar
  loc_A55AD9: LitVarI4
  loc_A55AE1: PopAdLdVar
  loc_A55AE2: ImpAdLdRf MemVar_D930A4
  loc_A55AE5: NewIfNullPr frmCalendario
  loc_A55AE8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A55AED: ImpAdLdRf MemVar_D93028
  loc_A55AF0: CDargRef
  loc_A55AF4: FLdPr Me
  loc_A55AF7: VCallAd Control_ID_FepaFapaMsk
  loc_A55AFA: FStAdFunc var_A8
  loc_A55AFD: FLdPr var_A8
  loc_A55B00: LateIdSt
  loc_A55B05: FFree1Ad var_A8
  loc_A55B08: LitStr vbNullString
  loc_A55B0B: ImpAdStStrCopy MemVar_D93028
  loc_A55B0F: FLdPr Me
  loc_A55B12: VCallAd Control_ID_FepaFapaMsk
  loc_A55B15: CVarAd
  loc_A55B19: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A55B1E: FFree1Var var_B8 = ""
  loc_A55B21: ExitProcHresult
End Sub

Private Sub RepeFechChk_Click() 'ACC340
  'Data Table: 5162A0
  loc_ACC234: FLdRfVar var_8A
  loc_ACC237: FLdPr Me
  loc_ACC23A: VCallAd Control_ID_RepeFechChk
  loc_ACC23D: FStAdFunc var_88
  loc_ACC240: FLdPr var_88
  loc_ACC243:  = Me.Value
  loc_ACC248: FLdI2 var_8A
  loc_ACC24B: LitI2_Byte 1
  loc_ACC24D: EqI2
  loc_ACC24E: FFree1Ad var_88
  loc_ACC251: BranchF loc_ACC2CA
  loc_ACC254: LitI4 0
  loc_ACC259: LitI4 4
  loc_ACC25E: FLdRfVar var_90
  loc_ACC261: Redim
  loc_ACC26B: FLdPr Me
  loc_ACC26E: VCallAd Control_ID_DesdCuotfechaTxt
  loc_ACC271: CVarAd
  loc_ACC275: ParmAry1St
  loc_ACC27B: FLdPr Me
  loc_ACC27E: VCallAd Control_ID_HastCuotfechaTxt
  loc_ACC281: CVarAd
  loc_ACC285: ParmAry1St
  loc_ACC28B: FLdPr Me
  loc_ACC28E: VCallAd Control_ID_FepaFapa2Msk
  loc_ACC291: CVarAd
  loc_ACC295: ParmAry1St
  loc_ACC29B: FLdPr Me
  loc_ACC29E: VCallAd Control_ID_FepaFapa2Cmd
  loc_ACC2A1: CVarAd
  loc_ACC2A5: ParmAry1St
  loc_ACC2AB: FLdPr Me
  loc_ACC2AE: VCallAd Control_ID_AgregarFechaCmd
  loc_ACC2B1: CVarAd
  loc_ACC2B5: ParmAry1St
  loc_ACC2BB: FLdRfVar var_90
  loc_ACC2BE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ACC2C3: FLdRfVar var_90
  loc_ACC2C6: Erase
  loc_ACC2C7: Branch loc_ACC33D
  loc_ACC2CA: LitI4 0
  loc_ACC2CF: LitI4 4
  loc_ACC2D4: FLdRfVar var_90
  loc_ACC2D7: Redim
  loc_ACC2E1: FLdPr Me
  loc_ACC2E4: VCallAd Control_ID_DesdCuotfechaTxt
  loc_ACC2E7: CVarAd
  loc_ACC2EB: ParmAry1St
  loc_ACC2F1: FLdPr Me
  loc_ACC2F4: VCallAd Control_ID_HastCuotfechaTxt
  loc_ACC2F7: CVarAd
  loc_ACC2FB: ParmAry1St
  loc_ACC301: FLdPr Me
  loc_ACC304: VCallAd Control_ID_FepaFapa2Msk
  loc_ACC307: CVarAd
  loc_ACC30B: ParmAry1St
  loc_ACC311: FLdPr Me
  loc_ACC314: VCallAd Control_ID_FepaFapa2Cmd
  loc_ACC317: CVarAd
  loc_ACC31B: ParmAry1St
  loc_ACC321: FLdPr Me
  loc_ACC324: VCallAd Control_ID_AgregarFechaCmd
  loc_ACC327: CVarAd
  loc_ACC32B: ParmAry1St
  loc_ACC331: FLdRfVar var_90
  loc_ACC334: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ACC339: FLdRfVar var_90
  loc_ACC33C: Erase
  loc_ACC33D: ExitProcHresult
End Sub

Private Sub RepeEstaChk_Click() 'ABFBEC
  'Data Table: 5162A0
  loc_ABFB00: FLdRfVar var_8A
  loc_ABFB03: FLdPr Me
  loc_ABFB06: VCallAd Control_ID_RepeEstaChk
  loc_ABFB09: FStAdFunc var_88
  loc_ABFB0C: FLdPr var_88
  loc_ABFB0F:  = Me.Value
  loc_ABFB14: FLdI2 var_8A
  loc_ABFB17: LitI2_Byte 1
  loc_ABFB19: EqI2
  loc_ABFB1A: FFree1Ad var_88
  loc_ABFB1D: BranchF loc_ABFB86
  loc_ABFB20: LitI4 0
  loc_ABFB25: LitI4 3
  loc_ABFB2A: FLdRfVar var_90
  loc_ABFB2D: Redim
  loc_ABFB37: FLdPr Me
  loc_ABFB3A: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_ABFB3D: CVarAd
  loc_ABFB41: ParmAry1St
  loc_ABFB47: FLdPr Me
  loc_ABFB4A: VCallAd Control_ID_HastCuotEstadoTxt
  loc_ABFB4D: CVarAd
  loc_ABFB51: ParmAry1St
  loc_ABFB57: FLdPr Me
  loc_ABFB5A: VCallAd Control_ID_EstaFapa2Cbo
  loc_ABFB5D: CVarAd
  loc_ABFB61: ParmAry1St
  loc_ABFB67: FLdPr Me
  loc_ABFB6A: VCallAd Control_ID_AgregarEstadoCmd
  loc_ABFB6D: CVarAd
  loc_ABFB71: ParmAry1St
  loc_ABFB77: FLdRfVar var_90
  loc_ABFB7A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ABFB7F: FLdRfVar var_90
  loc_ABFB82: Erase
  loc_ABFB83: Branch loc_ABFBE9
  loc_ABFB86: LitI4 0
  loc_ABFB8B: LitI4 3
  loc_ABFB90: FLdRfVar var_90
  loc_ABFB93: Redim
  loc_ABFB9D: FLdPr Me
  loc_ABFBA0: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_ABFBA3: CVarAd
  loc_ABFBA7: ParmAry1St
  loc_ABFBAD: FLdPr Me
  loc_ABFBB0: VCallAd Control_ID_HastCuotEstadoTxt
  loc_ABFBB3: CVarAd
  loc_ABFBB7: ParmAry1St
  loc_ABFBBD: FLdPr Me
  loc_ABFBC0: VCallAd Control_ID_EstaFapa2Cbo
  loc_ABFBC3: CVarAd
  loc_ABFBC7: ParmAry1St
  loc_ABFBCD: FLdPr Me
  loc_ABFBD0: VCallAd Control_ID_AgregarEstadoCmd
  loc_ABFBD3: CVarAd
  loc_ABFBD7: ParmAry1St
  loc_ABFBDD: FLdRfVar var_90
  loc_ABFBE0: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_ABFBE5: FLdRfVar var_90
  loc_ABFBE8: Erase
  loc_ABFBE9: ExitProcHresult
End Sub

Private Sub AgregarFechaCmd_Click() 'B2253C
  'Data Table: 5162A0
  loc_B222A4: FLdPr Me
  loc_B222A7: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B222AA: FStAdFunc var_88
  loc_B222AD: FLdPr var_88
  loc_B222B0: LateIdLdVar var_98 DispID_4 0
  loc_B222B7: CI4Var
  loc_B222B9: LitI4 1
  loc_B222BE: GtI4
  loc_B222BF: FFree1Ad var_88
  loc_B222C2: FFree1Var var_98 = ""
  loc_B222C5: BranchF loc_B2253B
  loc_B222C8: FLdRfVar var_9C
  loc_B222CB: FLdPr Me
  loc_B222CE: VCallAd Control_ID_HastCuotfechaTxt
  loc_B222D1: FStAdFunc var_88
  loc_B222D4: FLdPr var_88
  loc_B222D7:  = Me.Text
  loc_B222DC: ILdRf var_9C
  loc_B222DF: CR8Str
  loc_B222E1: LitI2_Byte 0
  loc_B222E3: CR8I2
  loc_B222E4: NeR8
  loc_B222E5: FFree1Str var_9C
  loc_B222E8: FFree1Ad var_88
  loc_B222EB: BranchF loc_B2253B
  loc_B222EE: LitI2_Byte 0
  loc_B222F0: PopTmpLdAd2 var_9E
  loc_B222F3: Call DesdCuotfechaTxt_Validate(from_stack_1v)
  loc_B222F8: FLdPr Me
  loc_B222FB: MemLdStr global_88
  loc_B222FE: LitStr vbNullString
  loc_B22301: NeStr
  loc_B22303: BranchF loc_B22307
  loc_B22306: ExitProcHresult
  loc_B22307: LitI2_Byte 0
  loc_B22309: PopTmpLdAd2 var_9E
  loc_B2230C: Call HastCuotfechaTxt_Validate(from_stack_1v)
  loc_B22311: FLdPr Me
  loc_B22314: MemLdStr global_88
  loc_B22317: LitStr vbNullString
  loc_B2231A: NeStr
  loc_B2231C: BranchF loc_B22320
  loc_B2231F: ExitProcHresult
  loc_B22320: LitI2_Byte 0
  loc_B22322: PopTmpLdAd2 var_9E
  loc_B22325: Call FepaFapa2Msk_UnknownEvent_8()
  loc_B2232A: FLdPr Me
  loc_B2232D: MemLdStr global_88
  loc_B22330: LitStr vbNullString
  loc_B22333: NeStr
  loc_B22335: BranchF loc_B22339
  loc_B22338: ExitProcHresult
  loc_B22339: LitI2_Byte 1
  loc_B2233B: FLdPr Me
  loc_B2233E: MemLdRfVar from_stack_1.global_72
  loc_B22341: FLdPr Me
  loc_B22344: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B22347: FStAdFunc var_88
  loc_B2234A: FLdPr var_88
  loc_B2234D: LateIdLdVar var_98 DispID_4 0
  loc_B22354: CI4Var
  loc_B22356: LitI4 1
  loc_B2235B: SubI4
  loc_B2235C: CI2I4
  loc_B2235D: FFree1Ad var_88
  loc_B22360: FFree1Var var_98 = ""
  loc_B22363: ForI2 var_A2
  loc_B22369: FLdPr Me
  loc_B2236C: MemLdI2 global_72
  loc_B2236F: CI4UI1
  loc_B22370: CVarI4
  loc_B22374: PopAdLdVar
  loc_B22375: LitVarI4
  loc_B2237D: PopAdLdVar
  loc_B2237E: FLdPr Me
  loc_B22381: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B22384: FStAdFunc var_88
  loc_B22387: FLdPr var_88
  loc_B2238A: LateIdCallLdVar
  loc_B22394: CStrVarTmp
  loc_B22395: FStStrNoPop var_9C
  loc_B22398: CI2Str
  loc_B2239A: FLdRfVar var_EC
  loc_B2239D: FLdPr Me
  loc_B223A0: VCallAd Control_ID_DesdCuotfechaTxt
  loc_B223A3: FStAdFunc var_E8
  loc_B223A6: FLdPr var_E8
  loc_B223A9:  = Me.Text
  loc_B223AE: ILdRf var_EC
  loc_B223B1: CI2Str
  loc_B223B3: GeI2
  loc_B223B4: FLdPr Me
  loc_B223B7: MemLdI2 global_72
  loc_B223BA: CI4UI1
  loc_B223BB: CVarI4
  loc_B223BF: PopAdLdVar
  loc_B223C0: LitVarI4
  loc_B223C8: PopAdLdVar
  loc_B223C9: FLdPr Me
  loc_B223CC: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B223CF: FStAdFunc var_130
  loc_B223D2: FLdPr var_130
  loc_B223D5: LateIdCallLdVar
  loc_B223DF: CStrVarTmp
  loc_B223E0: FStStrNoPop var_144
  loc_B223E3: CI2Str
  loc_B223E5: FLdRfVar var_14C
  loc_B223E8: FLdPr Me
  loc_B223EB: VCallAd Control_ID_HastCuotfechaTxt
  loc_B223EE: FStAdFunc var_148
  loc_B223F1: FLdPr var_148
  loc_B223F4:  = Me.Text
  loc_B223F9: ILdRf var_14C
  loc_B223FC: CI2Str
  loc_B223FE: LeI2
  loc_B223FF: AndI4
  loc_B22400: FFreeStr var_9C = "": var_EC = "": var_144 = ""
  loc_B2240B: FFreeAd var_88 = "": var_E8 = "": var_130 = ""
  loc_B22416: FFreeVar var_98 = ""
  loc_B2241D: BranchF loc_B22530
  loc_B22420: FLdPr Me
  loc_B22423: VCallAd Control_ID_FepaFapa2Msk
  loc_B22426: FStAdFunc var_88
  loc_B22429: FLdPr var_88
  loc_B2242C: LateIdLdVar var_98 DispID_22 0
  loc_B22433: CStrVarTmp
  loc_B22434: FStStrNoPop var_9C
  loc_B22437: LitStr vbNullString
  loc_B2243A: EqStr
  loc_B2243C: FFree1Str var_9C
  loc_B2243F: FFree1Ad var_88
  loc_B22442: FFree1Var var_98 = ""
  loc_B22445: BranchF loc_B224AF
  loc_B22448: FLdPr Me
  loc_B2244B: MemLdI2 global_72
  loc_B2244E: CI4UI1
  loc_B2244F: CVarI4
  loc_B22453: PopAdLdVar
  loc_B22454: LitVarI4
  loc_B2245C: PopAdLdVar
  loc_B2245D: LitVarStr var_FC, vbNullString
  loc_B22462: PopAdLdVar
  loc_B22463: FLdPr Me
  loc_B22466: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B22469: FStAdFunc var_88
  loc_B2246C: FLdPr var_88
  loc_B2246F: LateIdCallSt
  loc_B22477: FFree1Ad var_88
  loc_B2247A: FLdPr Me
  loc_B2247D: MemLdI2 global_72
  loc_B22480: CI4UI1
  loc_B22481: CVarI4
  loc_B22485: PopAdLdVar
  loc_B22486: LitVarI4
  loc_B2248E: PopAdLdVar
  loc_B2248F: LitVarStr var_FC, "Si"
  loc_B22494: PopAdLdVar
  loc_B22495: FLdPr Me
  loc_B22498: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2249B: FStAdFunc var_88
  loc_B2249E: FLdPr var_88
  loc_B224A1: LateIdCallSt
  loc_B224A9: FFree1Ad var_88
  loc_B224AC: Branch loc_B22530
  loc_B224AF: FLdPr Me
  loc_B224B2: MemLdI2 global_72
  loc_B224B5: CI4UI1
  loc_B224B6: CVarI4
  loc_B224BA: PopAdLdVar
  loc_B224BB: LitVarI4
  loc_B224C3: PopAdLdVar
  loc_B224C4: FLdPr Me
  loc_B224C7: VCallAd Control_ID_FepaFapa2Msk
  loc_B224CA: FStAdFunc var_88
  loc_B224CD: FLdPr var_88
  loc_B224D0: LateIdLdVar var_98 DispID_15 0
  loc_B224D7: CStrVarTmp
  loc_B224D8: CVarStr var_140
  loc_B224DB: PopAdLdVar
  loc_B224DC: FLdPr Me
  loc_B224DF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B224E2: FStAdFunc var_E8
  loc_B224E5: FLdPr var_E8
  loc_B224E8: LateIdCallSt
  loc_B224F0: FFreeAd var_88 = ""
  loc_B224F7: FFreeVar var_98 = ""
  loc_B224FE: FLdPr Me
  loc_B22501: MemLdI2 global_72
  loc_B22504: CI4UI1
  loc_B22505: CVarI4
  loc_B22509: PopAdLdVar
  loc_B2250A: LitVarI4
  loc_B22512: PopAdLdVar
  loc_B22513: LitVarStr var_FC, "Si"
  loc_B22518: PopAdLdVar
  loc_B22519: FLdPr Me
  loc_B2251C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B2251F: FStAdFunc var_88
  loc_B22522: FLdPr var_88
  loc_B22525: LateIdCallSt
  loc_B2252D: FFree1Ad var_88
  loc_B22530: FLdPr Me
  loc_B22533: MemLdRfVar from_stack_1.global_72
  loc_B22536: NextI2 var_A2, loc_B22369
  loc_B2253B: ExitProcHresult
End Sub

Private Sub AgregarEstadoCmd_Click() 'AFD32C
  'Data Table: 5162A0
  loc_AFD160: LitI2_Byte 0
  loc_AFD162: PopTmpLdAd2 var_86
  loc_AFD165: Call DesdCuotEstadoTxt_Validate(from_stack_1v)
  loc_AFD16A: FLdPr Me
  loc_AFD16D: MemLdStr global_88
  loc_AFD170: LitStr vbNullString
  loc_AFD173: NeStr
  loc_AFD175: BranchF loc_AFD179
  loc_AFD178: ExitProcHresult
  loc_AFD179: LitI2_Byte 0
  loc_AFD17B: PopTmpLdAd2 var_86
  loc_AFD17E: Call HastCuotEstadoTxt_Validate(from_stack_1v)
  loc_AFD183: FLdPr Me
  loc_AFD186: MemLdStr global_88
  loc_AFD189: LitStr vbNullString
  loc_AFD18C: NeStr
  loc_AFD18E: BranchF loc_AFD192
  loc_AFD191: ExitProcHresult
  loc_AFD192: FLdPr Me
  loc_AFD195: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD198: FStAdFunc var_8C
  loc_AFD19B: FLdPr var_8C
  loc_AFD19E: LateIdLdVar var_9C DispID_4 0
  loc_AFD1A5: CI4Var
  loc_AFD1A7: LitI4 1
  loc_AFD1AC: GtI4
  loc_AFD1AD: FFree1Ad var_8C
  loc_AFD1B0: FFree1Var var_9C = ""
  loc_AFD1B3: BranchF loc_AFD328
  loc_AFD1B6: LitI2_Byte 1
  loc_AFD1B8: FLdPr Me
  loc_AFD1BB: MemLdRfVar from_stack_1.global_72
  loc_AFD1BE: FLdPr Me
  loc_AFD1C1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD1C4: FStAdFunc var_8C
  loc_AFD1C7: FLdPr var_8C
  loc_AFD1CA: LateIdLdVar var_9C DispID_4 0
  loc_AFD1D1: CI4Var
  loc_AFD1D3: LitI4 1
  loc_AFD1D8: SubI4
  loc_AFD1D9: CI2I4
  loc_AFD1DA: FFree1Ad var_8C
  loc_AFD1DD: FFree1Var var_9C = ""
  loc_AFD1E0: ForI2 var_A0
  loc_AFD1E6: FLdPr Me
  loc_AFD1E9: MemLdI2 global_72
  loc_AFD1EC: CI4UI1
  loc_AFD1ED: CVarI4
  loc_AFD1F1: PopAdLdVar
  loc_AFD1F2: LitVarI4
  loc_AFD1FA: PopAdLdVar
  loc_AFD1FB: FLdPr Me
  loc_AFD1FE: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD201: FStAdFunc var_8C
  loc_AFD204: FLdPr var_8C
  loc_AFD207: LateIdCallLdVar
  loc_AFD211: CStrVarTmp
  loc_AFD212: FStStrNoPop var_E4
  loc_AFD215: CI2Str
  loc_AFD217: FLdRfVar var_EC
  loc_AFD21A: FLdPr Me
  loc_AFD21D: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_AFD220: FStAdFunc var_E8
  loc_AFD223: FLdPr var_E8
  loc_AFD226:  = Me.Text
  loc_AFD22B: ILdRf var_EC
  loc_AFD22E: CI2Str
  loc_AFD230: GeI2
  loc_AFD231: FLdPr Me
  loc_AFD234: MemLdI2 global_72
  loc_AFD237: CI4UI1
  loc_AFD238: CVarI4
  loc_AFD23C: PopAdLdVar
  loc_AFD23D: LitVarI4
  loc_AFD245: PopAdLdVar
  loc_AFD246: FLdPr Me
  loc_AFD249: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD24C: FStAdFunc var_130
  loc_AFD24F: FLdPr var_130
  loc_AFD252: LateIdCallLdVar
  loc_AFD25C: CStrVarTmp
  loc_AFD25D: FStStrNoPop var_144
  loc_AFD260: CI2Str
  loc_AFD262: FLdRfVar var_14C
  loc_AFD265: FLdPr Me
  loc_AFD268: VCallAd Control_ID_HastCuotEstadoTxt
  loc_AFD26B: FStAdFunc var_148
  loc_AFD26E: FLdPr var_148
  loc_AFD271:  = Me.Text
  loc_AFD276: ILdRf var_14C
  loc_AFD279: CI2Str
  loc_AFD27B: LeI2
  loc_AFD27C: AndI4
  loc_AFD27D: FFreeStr var_E4 = "": var_EC = "": var_144 = ""
  loc_AFD288: FFreeAd var_8C = "": var_E8 = "": var_130 = ""
  loc_AFD293: FFreeVar var_9C = ""
  loc_AFD29A: BranchF loc_AFD31D
  loc_AFD29D: FLdPr Me
  loc_AFD2A0: MemLdI2 global_72
  loc_AFD2A3: CI4UI1
  loc_AFD2A4: CVarI4
  loc_AFD2A8: PopAdLdVar
  loc_AFD2A9: LitVarI4
  loc_AFD2B1: PopAdLdVar
  loc_AFD2B2: FLdRfVar var_E4
  loc_AFD2B5: FLdPr Me
  loc_AFD2B8: VCallAd Control_ID_EstaFapa2Cbo
  loc_AFD2BB: FStAdFunc var_8C
  loc_AFD2BE: FLdPr var_8C
  loc_AFD2C1:  = Me.Text
  loc_AFD2C6: FLdZeroAd var_E4
  loc_AFD2C9: CVarStr var_9C
  loc_AFD2CC: PopAdLdVar
  loc_AFD2CD: FLdPr Me
  loc_AFD2D0: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD2D3: FStAdFunc var_E8
  loc_AFD2D6: FLdPr var_E8
  loc_AFD2D9: LateIdCallSt
  loc_AFD2E1: FFreeAd var_8C = ""
  loc_AFD2E8: FFree1Var var_9C = ""
  loc_AFD2EB: FLdPr Me
  loc_AFD2EE: MemLdI2 global_72
  loc_AFD2F1: CI4UI1
  loc_AFD2F2: CVarI4
  loc_AFD2F6: PopAdLdVar
  loc_AFD2F7: LitVarI4
  loc_AFD2FF: PopAdLdVar
  loc_AFD300: LitVarStr var_FC, "Si"
  loc_AFD305: PopAdLdVar
  loc_AFD306: FLdPr Me
  loc_AFD309: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AFD30C: FStAdFunc var_8C
  loc_AFD30F: FLdPr var_8C
  loc_AFD312: LateIdCallSt
  loc_AFD31A: FFree1Ad var_8C
  loc_AFD31D: FLdPr Me
  loc_AFD320: MemLdRfVar from_stack_1.global_72
  loc_AFD323: NextI2 var_A0, loc_AFD1E6
  loc_AFD328: ExitProcHresult
End Sub

Private Sub EstaDefaAnuladaOpt_Click() 'AAC98C
  'Data Table: 5162A0
  loc_AAC8B8: FLdPr Me
  loc_AAC8BB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAC8BE: FStAdFunc var_88
  loc_AAC8C1: FLdPr var_88
  loc_AAC8C4: LateIdLdVar var_98 DispID_11 0
  loc_AAC8CB: CI4Var
  loc_AAC8CD: LitI4 1
  loc_AAC8D2: EqI4
  loc_AAC8D3: FFree1Ad var_88
  loc_AAC8D6: FFree1Var var_98 = ""
  loc_AAC8D9: BranchF loc_AAC98A
  loc_AAC8DC: FLdRfVar var_9A
  loc_AAC8DF: FLdPr Me
  loc_AAC8E2: VCallAd Control_ID_EstaDefaAnuladaOpt
  loc_AAC8E5: FStAdFunc var_88
  loc_AAC8E8: FLdPr var_88
  loc_AAC8EB:  = Me.Value
  loc_AAC8F0: FLdI2 var_9A
  loc_AAC8F3: LitI2_Byte &HFF
  loc_AAC8F5: EqI2
  loc_AAC8F6: FFree1Ad var_88
  loc_AAC8F9: BranchF loc_AAC98A
  loc_AAC8FC: FLdPr Me
  loc_AAC8FF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAC902: FStAdFunc var_88
  loc_AAC905: FLdPr var_88
  loc_AAC908: LateIdLdVar var_98 DispID_10 0
  loc_AAC90F: CI4Var
  loc_AAC911: CVarI4
  loc_AAC915: PopAdLdVar
  loc_AAC916: LitVarI4
  loc_AAC91E: PopAdLdVar
  loc_AAC91F: LitVarStr var_EC, "Anulada"
  loc_AAC924: PopAdLdVar
  loc_AAC925: FLdPr Me
  loc_AAC928: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAC92B: FStAdFunc var_100
  loc_AAC92E: FLdPr var_100
  loc_AAC931: LateIdCallSt
  loc_AAC939: FFreeAd var_88 = ""
  loc_AAC940: FFree1Var var_98 = ""
  loc_AAC943: FLdPr Me
  loc_AAC946: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAC949: FStAdFunc var_88
  loc_AAC94C: FLdPr var_88
  loc_AAC94F: LateIdLdVar var_98 DispID_10 0
  loc_AAC956: CI4Var
  loc_AAC958: CVarI4
  loc_AAC95C: PopAdLdVar
  loc_AAC95D: LitVarI4
  loc_AAC965: PopAdLdVar
  loc_AAC966: LitVarStr var_EC, "Si"
  loc_AAC96B: PopAdLdVar
  loc_AAC96C: FLdPr Me
  loc_AAC96F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAC972: FStAdFunc var_100
  loc_AAC975: FLdPr var_100
  loc_AAC978: LateIdCallSt
  loc_AAC980: FFreeAd var_88 = ""
  loc_AAC987: FFree1Var var_98 = ""
  loc_AAC98A: ExitProcHresult
End Sub

Private Sub EstaDefaPagoaCuentaOpt_Click() 'AACBAC
  'Data Table: 5162A0
  loc_AACAD8: FLdPr Me
  loc_AACADB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AACADE: FStAdFunc var_88
  loc_AACAE1: FLdPr var_88
  loc_AACAE4: LateIdLdVar var_98 DispID_11 0
  loc_AACAEB: CI4Var
  loc_AACAED: LitI4 1
  loc_AACAF2: EqI4
  loc_AACAF3: FFree1Ad var_88
  loc_AACAF6: FFree1Var var_98 = ""
  loc_AACAF9: BranchF loc_AACBAA
  loc_AACAFC: FLdRfVar var_9A
  loc_AACAFF: FLdPr Me
  loc_AACB02: VCallAd Control_ID_EstaDefaPagoaCuentaOpt
  loc_AACB05: FStAdFunc var_88
  loc_AACB08: FLdPr var_88
  loc_AACB0B:  = Me.Value
  loc_AACB10: FLdI2 var_9A
  loc_AACB13: LitI2_Byte &HFF
  loc_AACB15: EqI2
  loc_AACB16: FFree1Ad var_88
  loc_AACB19: BranchF loc_AACBAA
  loc_AACB1C: FLdPr Me
  loc_AACB1F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AACB22: FStAdFunc var_88
  loc_AACB25: FLdPr var_88
  loc_AACB28: LateIdLdVar var_98 DispID_10 0
  loc_AACB2F: CI4Var
  loc_AACB31: CVarI4
  loc_AACB35: PopAdLdVar
  loc_AACB36: LitVarI4
  loc_AACB3E: PopAdLdVar
  loc_AACB3F: LitVarStr var_EC, "Pago a Cuenta"
  loc_AACB44: PopAdLdVar
  loc_AACB45: FLdPr Me
  loc_AACB48: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AACB4B: FStAdFunc var_100
  loc_AACB4E: FLdPr var_100
  loc_AACB51: LateIdCallSt
  loc_AACB59: FFreeAd var_88 = ""
  loc_AACB60: FFree1Var var_98 = ""
  loc_AACB63: FLdPr Me
  loc_AACB66: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AACB69: FStAdFunc var_88
  loc_AACB6C: FLdPr var_88
  loc_AACB6F: LateIdLdVar var_98 DispID_10 0
  loc_AACB76: CI4Var
  loc_AACB78: CVarI4
  loc_AACB7C: PopAdLdVar
  loc_AACB7D: LitVarI4
  loc_AACB85: PopAdLdVar
  loc_AACB86: LitVarStr var_EC, "Si"
  loc_AACB8B: PopAdLdVar
  loc_AACB8C: FLdPr Me
  loc_AACB8F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AACB92: FStAdFunc var_100
  loc_AACB95: FLdPr var_100
  loc_AACB98: LateIdCallSt
  loc_AACBA0: FFreeAd var_88 = ""
  loc_AACBA7: FFree1Var var_98 = ""
  loc_AACBAA: ExitProcHresult
End Sub

Private Sub EstaDefaPagadaOpt_Click() 'AAD97C
  'Data Table: 5162A0
  loc_AAD8A8: FLdPr Me
  loc_AAD8AB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD8AE: FStAdFunc var_88
  loc_AAD8B1: FLdPr var_88
  loc_AAD8B4: LateIdLdVar var_98 DispID_11 0
  loc_AAD8BB: CI4Var
  loc_AAD8BD: LitI4 1
  loc_AAD8C2: EqI4
  loc_AAD8C3: FFree1Ad var_88
  loc_AAD8C6: FFree1Var var_98 = ""
  loc_AAD8C9: BranchF loc_AAD97A
  loc_AAD8CC: FLdRfVar var_9A
  loc_AAD8CF: FLdPr Me
  loc_AAD8D2: VCallAd Control_ID_EstaDefaPagadaOpt
  loc_AAD8D5: FStAdFunc var_88
  loc_AAD8D8: FLdPr var_88
  loc_AAD8DB:  = Me.Value
  loc_AAD8E0: FLdI2 var_9A
  loc_AAD8E3: LitI2_Byte &HFF
  loc_AAD8E5: EqI2
  loc_AAD8E6: FFree1Ad var_88
  loc_AAD8E9: BranchF loc_AAD97A
  loc_AAD8EC: FLdPr Me
  loc_AAD8EF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD8F2: FStAdFunc var_88
  loc_AAD8F5: FLdPr var_88
  loc_AAD8F8: LateIdLdVar var_98 DispID_10 0
  loc_AAD8FF: CI4Var
  loc_AAD901: CVarI4
  loc_AAD905: PopAdLdVar
  loc_AAD906: LitVarI4
  loc_AAD90E: PopAdLdVar
  loc_AAD90F: LitVarStr var_EC, "Pagada"
  loc_AAD914: PopAdLdVar
  loc_AAD915: FLdPr Me
  loc_AAD918: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD91B: FStAdFunc var_100
  loc_AAD91E: FLdPr var_100
  loc_AAD921: LateIdCallSt
  loc_AAD929: FFreeAd var_88 = ""
  loc_AAD930: FFree1Var var_98 = ""
  loc_AAD933: FLdPr Me
  loc_AAD936: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD939: FStAdFunc var_88
  loc_AAD93C: FLdPr var_88
  loc_AAD93F: LateIdLdVar var_98 DispID_10 0
  loc_AAD946: CI4Var
  loc_AAD948: CVarI4
  loc_AAD94C: PopAdLdVar
  loc_AAD94D: LitVarI4
  loc_AAD955: PopAdLdVar
  loc_AAD956: LitVarStr var_EC, "Si"
  loc_AAD95B: PopAdLdVar
  loc_AAD95C: FLdPr Me
  loc_AAD95F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD962: FStAdFunc var_100
  loc_AAD965: FLdPr var_100
  loc_AAD968: LateIdCallSt
  loc_AAD970: FFreeAd var_88 = ""
  loc_AAD977: FFree1Var var_98 = ""
  loc_AAD97A: ExitProcHresult
End Sub

Private Sub EstaDefaCaidaOpt_Click() 'AAD31C
  'Data Table: 5162A0
  loc_AAD248: FLdPr Me
  loc_AAD24B: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD24E: FStAdFunc var_88
  loc_AAD251: FLdPr var_88
  loc_AAD254: LateIdLdVar var_98 DispID_11 0
  loc_AAD25B: CI4Var
  loc_AAD25D: LitI4 1
  loc_AAD262: EqI4
  loc_AAD263: FFree1Ad var_88
  loc_AAD266: FFree1Var var_98 = ""
  loc_AAD269: BranchF loc_AAD31A
  loc_AAD26C: FLdRfVar var_9A
  loc_AAD26F: FLdPr Me
  loc_AAD272: VCallAd Control_ID_EstaDefaCaidaOpt
  loc_AAD275: FStAdFunc var_88
  loc_AAD278: FLdPr var_88
  loc_AAD27B:  = Me.Value
  loc_AAD280: FLdI2 var_9A
  loc_AAD283: LitI2_Byte &HFF
  loc_AAD285: EqI2
  loc_AAD286: FFree1Ad var_88
  loc_AAD289: BranchF loc_AAD31A
  loc_AAD28C: FLdPr Me
  loc_AAD28F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD292: FStAdFunc var_88
  loc_AAD295: FLdPr var_88
  loc_AAD298: LateIdLdVar var_98 DispID_10 0
  loc_AAD29F: CI4Var
  loc_AAD2A1: CVarI4
  loc_AAD2A5: PopAdLdVar
  loc_AAD2A6: LitVarI4
  loc_AAD2AE: PopAdLdVar
  loc_AAD2AF: LitVarStr var_EC, "Caida"
  loc_AAD2B4: PopAdLdVar
  loc_AAD2B5: FLdPr Me
  loc_AAD2B8: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD2BB: FStAdFunc var_100
  loc_AAD2BE: FLdPr var_100
  loc_AAD2C1: LateIdCallSt
  loc_AAD2C9: FFreeAd var_88 = ""
  loc_AAD2D0: FFree1Var var_98 = ""
  loc_AAD2D3: FLdPr Me
  loc_AAD2D6: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD2D9: FStAdFunc var_88
  loc_AAD2DC: FLdPr var_88
  loc_AAD2DF: LateIdLdVar var_98 DispID_10 0
  loc_AAD2E6: CI4Var
  loc_AAD2E8: CVarI4
  loc_AAD2EC: PopAdLdVar
  loc_AAD2ED: LitVarI4
  loc_AAD2F5: PopAdLdVar
  loc_AAD2F6: LitVarStr var_EC, "Si"
  loc_AAD2FB: PopAdLdVar
  loc_AAD2FC: FLdPr Me
  loc_AAD2FF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD302: FStAdFunc var_100
  loc_AAD305: FLdPr var_100
  loc_AAD308: LateIdCallSt
  loc_AAD310: FFreeAd var_88 = ""
  loc_AAD317: FFree1Var var_98 = ""
  loc_AAD31A: ExitProcHresult
End Sub

Private Sub EstaDefaEmitidaOpt_Click() 'AADA8C
  'Data Table: 5162A0
  loc_AAD9B8: FLdPr Me
  loc_AAD9BB: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AAD9BE: FStAdFunc var_88
  loc_AAD9C1: FLdPr var_88
  loc_AAD9C4: LateIdLdVar var_98 DispID_11 0
  loc_AAD9CB: CI4Var
  loc_AAD9CD: LitI4 1
  loc_AAD9D2: EqI4
  loc_AAD9D3: FFree1Ad var_88
  loc_AAD9D6: FFree1Var var_98 = ""
  loc_AAD9D9: BranchF loc_AADA8A
  loc_AAD9DC: FLdRfVar var_9A
  loc_AAD9DF: FLdPr Me
  loc_AAD9E2: VCallAd Control_ID_EstaDefaEmitidaOpt
  loc_AAD9E5: FStAdFunc var_88
  loc_AAD9E8: FLdPr var_88
  loc_AAD9EB:  = Me.Value
  loc_AAD9F0: FLdI2 var_9A
  loc_AAD9F3: LitI2_Byte &HFF
  loc_AAD9F5: EqI2
  loc_AAD9F6: FFree1Ad var_88
  loc_AAD9F9: BranchF loc_AADA8A
  loc_AAD9FC: FLdPr Me
  loc_AAD9FF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AADA02: FStAdFunc var_88
  loc_AADA05: FLdPr var_88
  loc_AADA08: LateIdLdVar var_98 DispID_10 0
  loc_AADA0F: CI4Var
  loc_AADA11: CVarI4
  loc_AADA15: PopAdLdVar
  loc_AADA16: LitVarI4
  loc_AADA1E: PopAdLdVar
  loc_AADA1F: LitVarStr var_EC, "Emitida"
  loc_AADA24: PopAdLdVar
  loc_AADA25: FLdPr Me
  loc_AADA28: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AADA2B: FStAdFunc var_100
  loc_AADA2E: FLdPr var_100
  loc_AADA31: LateIdCallSt
  loc_AADA39: FFreeAd var_88 = ""
  loc_AADA40: FFree1Var var_98 = ""
  loc_AADA43: FLdPr Me
  loc_AADA46: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AADA49: FStAdFunc var_88
  loc_AADA4C: FLdPr var_88
  loc_AADA4F: LateIdLdVar var_98 DispID_10 0
  loc_AADA56: CI4Var
  loc_AADA58: CVarI4
  loc_AADA5C: PopAdLdVar
  loc_AADA5D: LitVarI4
  loc_AADA65: PopAdLdVar
  loc_AADA66: LitVarStr var_EC, "Si"
  loc_AADA6B: PopAdLdVar
  loc_AADA6C: FLdPr Me
  loc_AADA6F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AADA72: FStAdFunc var_100
  loc_AADA75: FLdPr var_100
  loc_AADA78: LateIdCallSt
  loc_AADA80: FFreeAd var_88 = ""
  loc_AADA87: FFree1Var var_98 = ""
  loc_AADA8A: ExitProcHresult
End Sub

Private Sub FepaFapa2Cmd_Click() 'A50AE8
  'Data Table: 5162A0
  loc_A50A94: LitVar_Missing var_A4
  loc_A50A97: PopAdLdVar
  loc_A50A98: LitVarI4
  loc_A50AA0: PopAdLdVar
  loc_A50AA1: ImpAdLdRf MemVar_D930A4
  loc_A50AA4: NewIfNullPr frmCalendario
  loc_A50AA7: frmCalendario.Show from_stack_1, from_stack_2
  loc_A50AAC: ImpAdLdI4 MemVar_D93028
  loc_A50AAF: LitStr vbNullString
  loc_A50AB2: NeStr
  loc_A50AB4: BranchF loc_A50AD2
  loc_A50AB7: ImpAdLdRf MemVar_D93028
  loc_A50ABA: CDargRef
  loc_A50ABE: FLdPr Me
  loc_A50AC1: VCallAd Control_ID_FepaFapa2Msk
  loc_A50AC4: FStAdFunc var_A8
  loc_A50AC7: FLdPr var_A8
  loc_A50ACA: LateIdSt
  loc_A50ACF: FFree1Ad var_A8
  loc_A50AD2: FLdPr Me
  loc_A50AD5: VCallAd Control_ID_FepaFapa2Msk
  loc_A50AD8: CVarAd
  loc_A50ADC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A50AE1: FFree1Var var_B8 = ""
  loc_A50AE4: ExitProcHresult
End Sub

Private Sub BuscaFacilidad_Click() 'BE56B4
  'Data Table: 5162A0
  loc_BE4FB0: LitI2_Byte 0
  loc_BE4FB2: CR8I2
  loc_BE4FB3: FLdPr Me
  loc_BE4FB6: MemStFPR8 global_80
  loc_BE4FB9: Call Proc_290_42_AF15D4()
  loc_BE4FBE: LitI2_Byte 0
  loc_BE4FC0: PopTmpLdAd2 var_8A
  loc_BE4FC3: Call CodiFapaTxt_Validate(from_stack_1v)
  loc_BE4FC8: FLdPr Me
  loc_BE4FCB: MemLdStr global_88
  loc_BE4FCE: LitStr vbNullString
  loc_BE4FD1: NeStr
  loc_BE4FD3: BranchF loc_BE4FD7
  loc_BE4FD6: ExitProcHresult
  loc_BE4FD7: LitStr "Municipalidad de Guaymallén"
  loc_BE4FDA: LitStr "Municipalidad de Guaymallén"
  loc_BE4FDD: EqStr
  loc_BE4FDF: BranchF loc_BE5024
  loc_BE4FE2: LitStr "SELECT * FROM facipago WHERE CodiFapa = "
  loc_BE4FE5: FLdRfVar var_94
  loc_BE4FE8: FLdPr Me
  loc_BE4FEB: VCallAd Control_ID_CodiFapaTxt
  loc_BE4FEE: FStAdFunc var_90
  loc_BE4FF1: FLdPr var_90
  loc_BE4FF4:  = Me.Text
  loc_BE4FF9: ILdRf var_94
  loc_BE4FFC: ConcatStr
  loc_BE4FFD: FStStrNoPop var_98
  loc_BE5000: LitStr " AND NovaFapa = 0 ORDER BY CodiFapa"
  loc_BE5003: ConcatStr
  loc_BE5004: FStStrNoPop var_9C
  loc_BE5007: FLdPr Me
  loc_BE500A: MemLdRfVar from_stack_1.global_52
  loc_BE500D: NewIfNullPr clsfacipago
  loc_BE5010: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_BE5015: FFreeStr var_94 = "": var_98 = ""
  loc_BE501E: FFree1Ad var_90
  loc_BE5021: Branch loc_BE5063
  loc_BE5024: LitStr "SELECT * FROM facipago WHERE CodiFapa = "
  loc_BE5027: FLdRfVar var_94
  loc_BE502A: FLdPr Me
  loc_BE502D: VCallAd Control_ID_CodiFapaTxt
  loc_BE5030: FStAdFunc var_90
  loc_BE5033: FLdPr var_90
  loc_BE5036:  = Me.Text
  loc_BE503B: ILdRf var_94
  loc_BE503E: ConcatStr
  loc_BE503F: FStStrNoPop var_98
  loc_BE5042: LitStr " ORDER BY CodiFapa"
  loc_BE5045: ConcatStr
  loc_BE5046: FStStrNoPop var_9C
  loc_BE5049: FLdPr Me
  loc_BE504C: MemLdRfVar from_stack_1.global_52
  loc_BE504F: NewIfNullPr clsfacipago
  loc_BE5052: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_BE5057: FFreeStr var_94 = "": var_98 = ""
  loc_BE5060: FFree1Ad var_90
  loc_BE5063: FLdRfVar var_A0
  loc_BE5066: FLdPr Me
  loc_BE5069: MemLdRfVar from_stack_1.global_52
  loc_BE506C: NewIfNullPr clsfacipago
  loc_BE506F: from_stack_1 = clsfacipago.RecordCount
  loc_BE5074: ILdRf var_A0
  loc_BE5077: LitI4 1
  loc_BE507C: EqI4
  loc_BE507D: BranchF loc_BE557E
  loc_BE5080: FLdPr Me
  loc_BE5083: MemLdRfVar from_stack_1.global_52
  loc_BE5086: NewIfNullPr clsfacipago
  loc_BE5089: Call clsfacipago.MoveFirst()
  loc_BE508E: FLdRfVar var_B0
  loc_BE5091: FLdPr Me
  loc_BE5094: MemLdRfVar from_stack_1.global_52
  loc_BE5097: NewIfNullPr clsfacipago
  loc_BE509A: from_stack_1 = clsfacipago.FepaFapa
  loc_BE509F: FLdRfVar var_B0
  loc_BE50A2: ImpAdCallI2 IsNull()
  loc_BE50A7: NotI4
  loc_BE50A8: FFree1Var var_B0 = ""
  loc_BE50AB: BranchF loc_BE50E2
  loc_BE50AE: FLdRfVar var_B0
  loc_BE50B1: FLdPr Me
  loc_BE50B4: MemLdRfVar from_stack_1.global_52
  loc_BE50B7: NewIfNullPr clsfacipago
  loc_BE50BA: from_stack_1 = clsfacipago.FepaFapa
  loc_BE50BF: FLdRfVar var_B0
  loc_BE50C2: CStrVarTmp
  loc_BE50C3: CVarStr var_C0
  loc_BE50C6: PopAdLdVar
  loc_BE50C7: FLdPr Me
  loc_BE50CA: VCallAd Control_ID_FepaFapaMsk
  loc_BE50CD: FStAdFunc var_90
  loc_BE50D0: FLdPr var_90
  loc_BE50D3: LateIdSt
  loc_BE50D8: FFree1Ad var_90
  loc_BE50DB: FFreeVar var_B0 = ""
  loc_BE50E2: FLdRfVar var_94
  loc_BE50E5: FLdPr Me
  loc_BE50E8: MemLdRfVar from_stack_1.global_52
  loc_BE50EB: NewIfNullPr clsfacipago
  loc_BE50EE: from_stack_1 = clsfacipago.EstaFapa
  loc_BE50F3: ILdRf var_94
  loc_BE50F6: FLdPr Me
  loc_BE50F9: VCallAd Control_ID_EstaFapaCbo
  loc_BE50FC: FStAdFunc var_90
  loc_BE50FF: FLdPr var_90
  loc_BE5102: Me.Text = from_stack_1
  loc_BE5107: FFree1Str var_94
  loc_BE510A: FFree1Ad var_90
  loc_BE510D: LitStr "SELECT * FROM detafapa WHERE CodiFapa = "
  loc_BE5110: FLdRfVar var_A0
  loc_BE5113: FLdPr Me
  loc_BE5116: MemLdRfVar from_stack_1.global_52
  loc_BE5119: NewIfNullPr clsfacipago
  loc_BE511C: from_stack_1 = clsfacipago.CodiFapa
  loc_BE5121: ILdRf var_A0
  loc_BE5124: CStrI4
  loc_BE5126: FStStrNoPop var_94
  loc_BE5129: ConcatStr
  loc_BE512A: FStStrNoPop var_98
  loc_BE512D: LitStr " ORDER BY CodiFapa, CuotDefa"
  loc_BE5130: ConcatStr
  loc_BE5131: FStStrNoPop var_9C
  loc_BE5134: FLdPr Me
  loc_BE5137: MemLdRfVar from_stack_1.global_60
  loc_BE513A: NewIfNullPr clsdetafapa
  loc_BE513D: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_BE5142: FFreeStr var_94 = "": var_98 = ""
  loc_BE514B: FLdRfVar var_A0
  loc_BE514E: FLdPr Me
  loc_BE5151: MemLdRfVar from_stack_1.global_60
  loc_BE5154: NewIfNullPr clsdetafapa
  loc_BE5157: from_stack_1 = clsdetafapa.RecordCount
  loc_BE515C: ILdRf var_A0
  loc_BE515F: LitI4 0
  loc_BE5164: GtI4
  loc_BE5165: BranchF loc_BE5531
  loc_BE5168: FLdPr Me
  loc_BE516B: MemLdRfVar from_stack_1.global_60
  loc_BE516E: NewIfNullPr clsdetafapa
  loc_BE5171: Call clsdetafapa.MoveFirst()
  loc_BE5176: FLdRfVar var_8A
  loc_BE5179: FLdPr Me
  loc_BE517C: MemLdRfVar from_stack_1.global_60
  loc_BE517F: NewIfNullPr clsdetafapa
  loc_BE5182: from_stack_1 = clsdetafapa.EOF
  loc_BE5187: FLdI2 var_8A
  loc_BE518A: NotI4
  loc_BE518B: BranchF loc_BE5531
  loc_BE518E: FLdRfVar var_1B0
  loc_BE5191: FLdPr Me
  loc_BE5194: MemLdRfVar from_stack_1.global_60
  loc_BE5197: NewIfNullPr clsdetafapa
  loc_BE519A: from_stack_1 = clsdetafapa.CapiDefa
  loc_BE519F: FLdRfVar var_238
  loc_BE51A2: FLdPr Me
  loc_BE51A5: MemLdRfVar from_stack_1.global_60
  loc_BE51A8: NewIfNullPr clsdetafapa
  loc_BE51AB: from_stack_1 = clsdetafapa.RecaDefa
  loc_BE51B0: FLdRfVar var_2C0
  loc_BE51B3: FLdPr Me
  loc_BE51B6: MemLdRfVar from_stack_1.global_60
  loc_BE51B9: NewIfNullPr clsdetafapa
  loc_BE51BC: from_stack_1 = clsdetafapa.DecaDefa
  loc_BE51C1: FLdRfVar var_348
  loc_BE51C4: FLdPr Me
  loc_BE51C7: MemLdRfVar from_stack_1.global_60
  loc_BE51CA: NewIfNullPr clsdetafapa
  loc_BE51CD: from_stack_1 = clsdetafapa.ApreDefa
  loc_BE51D2: FLdRfVar var_3D0
  loc_BE51D5: FLdPr Me
  loc_BE51D8: MemLdRfVar from_stack_1.global_60
  loc_BE51DB: NewIfNullPr clsdetafapa
  loc_BE51DE: from_stack_1 = clsdetafapa.InteDefa
  loc_BE51E3: FLdRfVar var_458
  loc_BE51E6: FLdPr Me
  loc_BE51E9: MemLdRfVar from_stack_1.global_60
  loc_BE51EC: NewIfNullPr clsdetafapa
  loc_BE51EF: from_stack_1 = clsdetafapa.TotaDefa
  loc_BE51F4: FLdRfVar var_C0
  loc_BE51F7: FLdRfVar var_D8
  loc_BE51FA: LitVarStr var_D0, "CuotDefa"
  loc_BE51FF: PopAdLdVar
  loc_BE5200: FLdRfVar var_D4
  loc_BE5203: FLdRfVar var_90
  loc_BE5206: FLdPr Me
  loc_BE5209: MemLdRfVar from_stack_1.global_60
  loc_BE520C: NewIfNullPr clsdetafapa
  loc_BE520F: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_BE5214: FLdPr var_90
  loc_BE5217:  = Me.Fields
  loc_BE521C: FLdPr var_D4
  loc_BE521F: from_stack_2 = Me.Item(from_stack_1)
  loc_BE5224: FLdPr var_D8
  loc_BE5227:  = Me.Value
  loc_BE522C: FLdRfVar var_C0
  loc_BE522F: LitI4 9
  loc_BE5234: FLdRfVar var_B0
  loc_BE5237: ImpAdCallFPR4  = Chr()
  loc_BE523C: FLdRfVar var_B0
  loc_BE523F: ConcatVar var_E8
  loc_BE5243: FLdRfVar var_94
  loc_BE5246: FLdPr Me
  loc_BE5249: MemLdRfVar from_stack_1.global_60
  loc_BE524C: NewIfNullPr clsdetafapa
  loc_BE524F: from_stack_1 = clsdetafapa.EstaDefa
  loc_BE5254: FLdZeroAd var_94
  loc_BE5257: CVarStr var_F8
  loc_BE525A: ConcatVar var_108
  loc_BE525E: LitI4 9
  loc_BE5263: FLdRfVar var_118
  loc_BE5266: ImpAdCallFPR4  = Chr()
  loc_BE526B: FLdRfVar var_118
  loc_BE526E: ConcatVar var_128
  loc_BE5272: FLdRfVar var_138
  loc_BE5275: FLdPr Me
  loc_BE5278: MemLdRfVar from_stack_1.global_60
  loc_BE527B: NewIfNullPr clsdetafapa
  loc_BE527E: from_stack_1 = clsdetafapa.FeveDefa
  loc_BE5283: FLdRfVar var_138
  loc_BE5286: ConcatVar var_148
  loc_BE528A: LitI4 9
  loc_BE528F: FLdRfVar var_158
  loc_BE5292: ImpAdCallFPR4  = Chr()
  loc_BE5297: FLdRfVar var_158
  loc_BE529A: ConcatVar var_168
  loc_BE529E: FLdRfVar var_178
  loc_BE52A1: FLdPr Me
  loc_BE52A4: MemLdRfVar from_stack_1.global_60
  loc_BE52A7: NewIfNullPr clsdetafapa
  loc_BE52AA: from_stack_1 = clsdetafapa.FepaDefa
  loc_BE52AF: FLdRfVar var_178
  loc_BE52B2: ConcatVar var_188
  loc_BE52B6: LitI4 9
  loc_BE52BB: FLdRfVar var_198
  loc_BE52BE: ImpAdCallFPR4  = Chr()
  loc_BE52C3: FLdRfVar var_198
  loc_BE52C6: ConcatVar var_1A8
  loc_BE52CA: LitI4 1
  loc_BE52CF: LitI4 1
  loc_BE52D4: LitVarStr var_1E0, "0.00"
  loc_BE52D9: FStVarCopyObj var_1F0
  loc_BE52DC: FLdRfVar var_1F0
  loc_BE52DF: FLdFPR8 var_1B0
  loc_BE52E2: CVarR8
  loc_BE52E6: FLdRfVar var_200
  loc_BE52E9: ImpAdCallFPR4  = Format(, )
  loc_BE52EE: FLdRfVar var_200
  loc_BE52F1: ConcatVar var_210
  loc_BE52F5: LitI4 9
  loc_BE52FA: FLdRfVar var_220
  loc_BE52FD: ImpAdCallFPR4  = Chr()
  loc_BE5302: FLdRfVar var_220
  loc_BE5305: ConcatVar var_230
  loc_BE5309: LitI4 1
  loc_BE530E: LitI4 1
  loc_BE5313: LitVarStr var_268, "0.00"
  loc_BE5318: FStVarCopyObj var_278
  loc_BE531B: FLdRfVar var_278
  loc_BE531E: FLdFPR8 var_238
  loc_BE5321: CVarR8
  loc_BE5325: FLdRfVar var_288
  loc_BE5328: ImpAdCallFPR4  = Format(, )
  loc_BE532D: FLdRfVar var_288
  loc_BE5330: ConcatVar var_298
  loc_BE5334: LitI4 9
  loc_BE5339: FLdRfVar var_2A8
  loc_BE533C: ImpAdCallFPR4  = Chr()
  loc_BE5341: FLdRfVar var_2A8
  loc_BE5344: ConcatVar var_2B8
  loc_BE5348: LitI4 1
  loc_BE534D: LitI4 1
  loc_BE5352: LitVarStr var_2F0, "0.00"
  loc_BE5357: FStVarCopyObj var_300
  loc_BE535A: FLdRfVar var_300
  loc_BE535D: FLdFPR8 var_2C0
  loc_BE5360: CVarR8
  loc_BE5364: FLdRfVar var_310
  loc_BE5367: ImpAdCallFPR4  = Format(, )
  loc_BE536C: FLdRfVar var_310
  loc_BE536F: ConcatVar var_320
  loc_BE5373: LitI4 9
  loc_BE5378: FLdRfVar var_330
  loc_BE537B: ImpAdCallFPR4  = Chr()
  loc_BE5380: FLdRfVar var_330
  loc_BE5383: ConcatVar var_340
  loc_BE5387: LitI4 1
  loc_BE538C: LitI4 1
  loc_BE5391: LitVarStr var_378, "0.00"
  loc_BE5396: FStVarCopyObj var_388
  loc_BE5399: FLdRfVar var_388
  loc_BE539C: FLdFPR8 var_348
  loc_BE539F: CVarR8
  loc_BE53A3: FLdRfVar var_398
  loc_BE53A6: ImpAdCallFPR4  = Format(, )
  loc_BE53AB: FLdRfVar var_398
  loc_BE53AE: ConcatVar var_3A8
  loc_BE53B2: LitI4 9
  loc_BE53B7: FLdRfVar var_3B8
  loc_BE53BA: ImpAdCallFPR4  = Chr()
  loc_BE53BF: FLdRfVar var_3B8
  loc_BE53C2: ConcatVar var_3C8
  loc_BE53C6: LitI4 1
  loc_BE53CB: LitI4 1
  loc_BE53D0: LitVarStr var_400, "0.00"
  loc_BE53D5: FStVarCopyObj var_410
  loc_BE53D8: FLdRfVar var_410
  loc_BE53DB: FLdFPR8 var_3D0
  loc_BE53DE: CVarR8
  loc_BE53E2: FLdRfVar var_420
  loc_BE53E5: ImpAdCallFPR4  = Format(, )
  loc_BE53EA: FLdRfVar var_420
  loc_BE53ED: ConcatVar var_430
  loc_BE53F1: LitI4 9
  loc_BE53F6: FLdRfVar var_440
  loc_BE53F9: ImpAdCallFPR4  = Chr()
  loc_BE53FE: FLdRfVar var_440
  loc_BE5401: ConcatVar var_450
  loc_BE5405: LitI4 1
  loc_BE540A: LitI4 1
  loc_BE540F: LitVarStr var_488, "0.00"
  loc_BE5414: FStVarCopyObj var_498
  loc_BE5417: FLdRfVar var_498
  loc_BE541A: FLdFPR8 var_458
  loc_BE541D: CVarR8
  loc_BE5421: FLdRfVar var_4A8
  loc_BE5424: ImpAdCallFPR4  = Format(, )
  loc_BE5429: FLdRfVar var_4A8
  loc_BE542C: ConcatVar var_4B8
  loc_BE5430: LitI4 9
  loc_BE5435: FLdRfVar var_4C8
  loc_BE5438: ImpAdCallFPR4  = Chr()
  loc_BE543D: FLdRfVar var_4C8
  loc_BE5440: ConcatVar var_4D8
  loc_BE5444: LitVarStr var_4E8, "No"
  loc_BE5449: ConcatVar var_4F8
  loc_BE544D: CStrVarTmp
  loc_BE544E: FStStr var_88
  loc_BE5451: FFreeAd var_90 = "": var_D4 = ""
  loc_BE545A: FFreeVar var_320 = "": var_330 = "": var_368 = "": var_388 = "": var_340 = "": var_398 = "": var_3A8 = "": var_3B8 = "": var_3F0 = "": var_410 = "": var_3C8 = "": var_420 = "": var_430 = "": var_440 = "": var_478 = "": var_498 = "": var_450 = "": var_4A8 = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4F8 = "": var_C0 = "": var_B0 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1D0 = "": var_1F0 = "": var_1A8 = "": var_200 = "": var_210 = "": var_220 = "": var_258 = "": var_278 = "": var_230 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2E0 = "": var_300 = "": var_2B8 = ""
  loc_BE54C5: FLdRfVar var_88
  loc_BE54C8: CDargRef
  loc_BE54CC: FLdPr Me
  loc_BE54CF: VCallAd Control_ID_CuotasFacilidadFlex
  loc_BE54D2: FStAdFunc var_90
  loc_BE54D5: FLdPr var_90
  loc_BE54D8: LateIdCall
  loc_BE54E0: FFree1Ad var_90
  loc_BE54E3: FLdRfVar var_1B0
  loc_BE54E6: FLdPr Me
  loc_BE54E9: MemLdRfVar from_stack_1.global_60
  loc_BE54EC: NewIfNullPr clsdetafapa
  loc_BE54EF: from_stack_1 = clsdetafapa.TotaDefa
  loc_BE54F4: LitI4 2
  loc_BE54F9: FLdPr Me
  loc_BE54FC: MemLdFPR8 global_80
  loc_BE54FF: FLdFPR8 var_1B0
  loc_BE5502: AddR8
  loc_BE5503: CVarR8
  loc_BE5507: FLdRfVar var_C0
  loc_BE550A: ImpAdCallFPR4  = Round(, )
  loc_BE550F: FLdRfVar var_C0
  loc_BE5512: CR4Var
  loc_BE5513: FLdPr Me
  loc_BE5516: MemStFPR8 global_80
  loc_BE5519: FFreeVar var_B0 = ""
  loc_BE5520: FLdPr Me
  loc_BE5523: MemLdRfVar from_stack_1.global_60
  loc_BE5526: NewIfNullPr clsdetafapa
  loc_BE5529: Call clsdetafapa.MoveSiguiente()
  loc_BE552E: Branch loc_BE5176
  loc_BE5531: LitI4 1
  loc_BE5536: LitI4 1
  loc_BE553B: LitVarStr var_1C0, "0.00"
  loc_BE5540: FStVarCopyObj var_B0
  loc_BE5543: FLdRfVar var_B0
  loc_BE5546: FLdPr Me
  loc_BE5549: MemLdRfVar from_stack_1.global_80
  loc_BE554C: CVarRef
  loc_BE5551: FLdRfVar var_C0
  loc_BE5554: ImpAdCallFPR4  = Format(, )
  loc_BE5559: FLdRfVar var_C0
  loc_BE555C: CStrVarVal var_94
  loc_BE5560: FLdPr Me
  loc_BE5563: VCallAd Control_ID_txtTotal
  loc_BE5566: FStAdFunc var_90
  loc_BE5569: FLdPr var_90
  loc_BE556C: Me.Text = from_stack_1
  loc_BE5571: FFree1Str var_94
  loc_BE5574: FFree1Ad var_90
  loc_BE5577: FFreeVar var_B0 = ""
  loc_BE557E: LitI4 0
  loc_BE5583: LitI4 1
  loc_BE5588: FLdRfVar var_4FC
  loc_BE558B: Redim
  loc_BE5595: FLdPr Me
  loc_BE5598: VCallAd Control_ID_RepeFechChk
  loc_BE559B: CVarAd
  loc_BE559F: ParmAry1St
  loc_BE55A5: FLdPr Me
  loc_BE55A8: VCallAd Control_ID_RepeEstaChk
  loc_BE55AB: CVarAd
  loc_BE55AF: ParmAry1St
  loc_BE55B5: FLdRfVar var_4FC
  loc_BE55B8: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BE55BD: FLdRfVar var_4FC
  loc_BE55C0: Erase
  loc_BE55C1: LitI2_Byte 0
  loc_BE55C3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BE55C8: CStrDate
  loc_BE55CA: CVarStr var_B0
  loc_BE55CD: PopAdLdVar
  loc_BE55CE: FLdPr Me
  loc_BE55D1: VCallAd Control_ID_FepaFapa2Msk
  loc_BE55D4: FStAdFunc var_90
  loc_BE55D7: FLdPr var_90
  loc_BE55DA: LateIdSt
  loc_BE55DF: FFree1Ad var_90
  loc_BE55E2: FFree1Var var_B0 = ""
  loc_BE55E5: FLdRfVar var_94
  loc_BE55E8: FLdPr Me
  loc_BE55EB: VCallAd Control_ID_EstaFapaCbo
  loc_BE55EE: FStAdFunc var_90
  loc_BE55F1: FLdPr var_90
  loc_BE55F4:  = Me.Text
  loc_BE55F9: ILdRf var_94
  loc_BE55FC: LitStr "Anulada"
  loc_BE55FF: EqStr
  loc_BE5601: FFree1Str var_94
  loc_BE5604: FFree1Ad var_90
  loc_BE5607: BranchF loc_BE5660
  loc_BE560A: LitI4 0
  loc_BE560F: LitI4 2
  loc_BE5614: FLdRfVar var_4FC
  loc_BE5617: Redim
  loc_BE5621: FLdPr Me
  loc_BE5624: VCallAd Control_ID_cmdGenerarBoleto
  loc_BE5627: CVarAd
  loc_BE562B: ParmAry1St
  loc_BE5631: FLdPr Me
  loc_BE5634: VCallAd Control_ID_EstaFapaCbo
  loc_BE5637: CVarAd
  loc_BE563B: ParmAry1St
  loc_BE5641: FLdPr Me
  loc_BE5644: VCallAd Control_ID_FepaFapaMsk
  loc_BE5647: CVarAd
  loc_BE564B: ParmAry1St
  loc_BE5651: FLdRfVar var_4FC
  loc_BE5654: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BE5659: FLdRfVar var_4FC
  loc_BE565C: Erase
  loc_BE565D: Branch loc_BE56B3
  loc_BE5660: LitI4 0
  loc_BE5665: LitI4 2
  loc_BE566A: FLdRfVar var_4FC
  loc_BE566D: Redim
  loc_BE5677: FLdPr Me
  loc_BE567A: VCallAd Control_ID_cmdGenerarBoleto
  loc_BE567D: CVarAd
  loc_BE5681: ParmAry1St
  loc_BE5687: FLdPr Me
  loc_BE568A: VCallAd Control_ID_EstaFapaCbo
  loc_BE568D: CVarAd
  loc_BE5691: ParmAry1St
  loc_BE5697: FLdPr Me
  loc_BE569A: VCallAd Control_ID_FepaFapaMsk
  loc_BE569D: CVarAd
  loc_BE56A1: ParmAry1St
  loc_BE56A7: FLdRfVar var_4FC
  loc_BE56AA: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BE56AF: FLdRfVar var_4FC
  loc_BE56B2: Erase
  loc_BE56B3: ExitProcHresult
End Sub

Private Sub cmdGenerarBoleto_Click() 'B6181C
  'Data Table: 5162A0
  loc_B61430: FLdPr Me
  loc_B61433: VCallAd Control_ID_FepaFapaMsk
  loc_B61436: FStAdFunc var_8C
  loc_B61439: FLdPr var_8C
  loc_B6143C: LateIdLdVar var_9C DispID_15 0
  loc_B61443: CStrVarTmp
  loc_B61444: CVarStr var_AC
  loc_B61447: ImpAdCallI2 IsDate()
  loc_B6144C: FFree1Ad var_8C
  loc_B6144F: FFreeVar var_9C = ""
  loc_B61456: BranchF loc_B61479
  loc_B61459: FLdPr Me
  loc_B6145C: VCallAd Control_ID_FepaFapaMsk
  loc_B6145F: FStAdFunc var_8C
  loc_B61462: FLdPr var_8C
  loc_B61465: LateIdLdVar var_9C DispID_15 0
  loc_B6146C: CStrVarTmp
  loc_B6146D: FStStr var_88
  loc_B61470: FFree1Ad var_8C
  loc_B61473: FFree1Var var_9C = ""
  loc_B61476: Branch loc_B6147F
  loc_B61479: LitStr vbNullString
  loc_B6147C: FStStrCopy var_88
  loc_B6147F: LitI2_Byte 0
  loc_B61481: PopTmpLdAd2 var_AE
  loc_B61484: Call BajaMotiTxt_Validate(from_stack_1v)
  loc_B61489: FLdPr Me
  loc_B6148C: MemLdStr global_88
  loc_B6148F: LitStr vbNullString
  loc_B61492: NeStr
  loc_B61494: BranchF loc_B61498
  loc_B61497: ExitProcHresult
  loc_B61498: LitI2_Byte 0
  loc_B6149A: PopTmpLdAd2 var_AE
  loc_B6149D: Call CuotasFacilidadFlex_UnknownEvent_8()
  loc_B614A2: FLdPr Me
  loc_B614A5: MemLdStr global_88
  loc_B614A8: LitStr vbNullString
  loc_B614AB: NeStr
  loc_B614AD: BranchF loc_B614B1
  loc_B614B0: ExitProcHresult
  loc_B614B1: FLdRfVar var_B4
  loc_B614B4: FLdPr Me
  loc_B614B7: VCallAd Control_ID_EstaFapaCbo
  loc_B614BA: FStAdFunc var_8C
  loc_B614BD: FLdPr var_8C
  loc_B614C0:  = Me.Text
  loc_B614C5: ILdRf var_B4
  loc_B614C8: LitStr "Anulada"
  loc_B614CB: EqStr
  loc_B614CD: FFree1Str var_B4
  loc_B614D0: FFree1Ad var_8C
  loc_B614D3: BranchF loc_B615A6
  loc_B614D6: LitStr "CALL nAnulaFacilidad`('"
  loc_B614D9: FLdRfVar var_B4
  loc_B614DC: FLdPr Me
  loc_B614DF: VCallAd Control_ID_CodiFapaTxt
  loc_B614E2: FStAdFunc var_8C
  loc_B614E5: FLdPr var_8C
  loc_B614E8:  = Me.Text
  loc_B614ED: ILdRf var_B4
  loc_B614F0: ConcatStr
  loc_B614F1: FStStrNoPop var_B8
  loc_B614F4: LitStr "', '"
  loc_B614F7: ConcatStr
  loc_B614F8: FStStrNoPop var_BC
  loc_B614FB: FLdRfVar var_AE
  loc_B614FE: FLdPr Me
  loc_B61501: MemLdRfVar from_stack_1.global_52
  loc_B61504: NewIfNullPr clsfacipago
  loc_B61507: from_stack_1 = clsfacipago.CodiOfic
  loc_B6150C: FLdUI1
  loc_B61510: CStrI2
  loc_B61512: FStStrNoPop var_C0
  loc_B61515: ConcatStr
  loc_B61516: FStStrNoPop var_C4
  loc_B61519: LitStr "', '"
  loc_B6151C: ConcatStr
  loc_B6151D: FStStrNoPop var_CC
  loc_B61520: FLdRfVar var_C8
  loc_B61523: FLdPr Me
  loc_B61526: MemLdRfVar from_stack_1.global_52
  loc_B61529: NewIfNullPr clsfacipago
  loc_B6152C: from_stack_1 = clsfacipago.CuenCtct
  loc_B61531: ILdRf var_C8
  loc_B61534: ConcatStr
  loc_B61535: FStStrNoPop var_D0
  loc_B61538: LitStr "', '"
  loc_B6153B: ConcatStr
  loc_B6153C: FStStrNoPop var_D4
  loc_B6153F: ImpAdLdI4 MemVar_D9302C
  loc_B61542: ConcatStr
  loc_B61543: FStStrNoPop var_D8
  loc_B61546: LitStr "', '"
  loc_B61549: ConcatStr
  loc_B6154A: FStStrNoPop var_E4
  loc_B6154D: FLdRfVar var_E0
  loc_B61550: FLdPr Me
  loc_B61553: VCallAd Control_ID_BajaMotiTxt
  loc_B61556: FStAdFunc var_DC
  loc_B61559: FLdPr var_DC
  loc_B6155C:  = Me.Text
  loc_B61561: ILdRf var_E0
  loc_B61564: ConcatStr
  loc_B61565: FStStrNoPop var_E8
  loc_B61568: LitStr "')"
  loc_B6156B: ConcatStr
  loc_B6156C: FStStrNoPop var_EC
  loc_B6156F: FLdPr Me
  loc_B61572: MemLdRfVar from_stack_1.global_56
  loc_B61575: NewIfNullPr clsfacipago
  loc_B61578: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B6157D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E0 = "": var_E8 = ""
  loc_B6159C: FFreeAd var_8C = ""
  loc_B615A3: Branch loc_B61708
  loc_B615A6: LitI2_Byte 1
  loc_B615A8: FLdPr Me
  loc_B615AB: MemLdRfVar from_stack_1.global_72
  loc_B615AE: FLdPr Me
  loc_B615B1: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B615B4: FStAdFunc var_8C
  loc_B615B7: FLdPr var_8C
  loc_B615BA: LateIdLdVar var_9C DispID_4 0
  loc_B615C1: CI4Var
  loc_B615C3: LitI4 1
  loc_B615C8: SubI4
  loc_B615C9: CI2I4
  loc_B615CA: FFree1Ad var_8C
  loc_B615CD: FFree1Var var_9C = ""
  loc_B615D0: ForI2 var_F0
  loc_B615D6: FLdPr Me
  loc_B615D9: MemLdI2 global_72
  loc_B615DC: CI4UI1
  loc_B615DD: CVarI4
  loc_B615E1: PopAdLdVar
  loc_B615E2: LitVarI4
  loc_B615EA: PopAdLdVar
  loc_B615EB: FLdPr Me
  loc_B615EE: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B615F1: FStAdFunc var_8C
  loc_B615F4: FLdPr var_8C
  loc_B615F7: LateIdCallLdVar
  loc_B61601: CStrVarTmp
  loc_B61602: FStStrNoPop var_B4
  loc_B61605: LitStr "Si"
  loc_B61608: EqStr
  loc_B6160A: FFree1Str var_B4
  loc_B6160D: FFree1Ad var_8C
  loc_B61610: FFree1Var var_9C = ""
  loc_B61613: BranchF loc_B616FD
  loc_B61616: FLdRfVar var_B4
  loc_B61619: FLdPr Me
  loc_B6161C: VCallAd Control_ID_CodiFapaTxt
  loc_B6161F: FStAdFunc var_8C
  loc_B61622: FLdPr var_8C
  loc_B61625:  = Me.Text
  loc_B6162A: FLdPr Me
  loc_B6162D: MemLdI2 global_72
  loc_B61630: CI4UI1
  loc_B61631: CVarI4
  loc_B61635: PopAdLdVar
  loc_B61636: LitVarI4
  loc_B6163E: PopAdLdVar
  loc_B6163F: FLdPr Me
  loc_B61642: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B61645: FStAdFunc var_DC
  loc_B61648: FLdPr var_DC
  loc_B6164B: LateIdCallLdVar
  loc_B61655: PopAd
  loc_B61657: FLdPr Me
  loc_B6165A: MemLdI2 global_72
  loc_B6165D: CI4UI1
  loc_B6165E: CVarI4
  loc_B61662: PopAdLdVar
  loc_B61663: LitVarI4
  loc_B6166B: PopAdLdVar
  loc_B6166C: FLdPr Me
  loc_B6166F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B61672: FStAdFunc var_174
  loc_B61675: FLdPr var_174
  loc_B61678: LateIdCallLdVar
  loc_B61682: PopAd
  loc_B61684: FLdPr Me
  loc_B61687: MemLdI2 global_72
  loc_B6168A: CI4UI1
  loc_B6168B: CVarI4
  loc_B6168F: PopAdLdVar
  loc_B61690: LitVarI4
  loc_B61698: PopAdLdVar
  loc_B61699: FLdPr Me
  loc_B6169C: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B6169F: FStAdFunc var_1B8
  loc_B616A2: FLdPr var_1B8
  loc_B616A5: LateIdCallLdVar
  loc_B616AF: PopAd
  loc_B616B1: FLdRfVar var_1D8
  loc_B616B4: FLdRfVar var_1C8
  loc_B616B7: CStrVarTmp
  loc_B616B8: FStStrNoPop var_C0
  loc_B616BB: FLdRfVar var_AC
  loc_B616BE: CStrVarTmp
  loc_B616BF: FStStrNoPop var_BC
  loc_B616C2: FLdRfVar var_9C
  loc_B616C5: CStrVarTmp
  loc_B616C6: FStStrNoPop var_B8
  loc_B616C9: CI4Str
  loc_B616CA: ILdRf var_B4
  loc_B616CD: CI4Str
  loc_B616CE: FLdPr Me
  loc_B616D1: MemLdRfVar from_stack_1.global_60
  loc_B616D4: NewIfNullPr clsdetafapa
  loc_B616D7: from_stack_5v = clsdetafapa.ModificaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B616DC: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B616E7: FFreeAd var_8C = "": var_DC = "": var_174 = ""
  loc_B616F2: FFreeVar var_9C = "": var_AC = "": var_1C8 = ""
  loc_B616FD: FLdPr Me
  loc_B61700: MemLdRfVar from_stack_1.global_72
  loc_B61703: NextI2 var_F0, loc_B615D6
  loc_B61708: LitStr "Se realizo con éxito la modificación"
  loc_B6170B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B61710: ILdRf Me
  loc_B61713: CastAd
  loc_B61716: FStAdFunc var_8C
  loc_B61719: FLdRfVar var_8C
  loc_B6171C: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_B61721: FFree1Ad var_8C
  loc_B61724: LitStr "0"
  loc_B61727: FLdPr Me
  loc_B6172A: VCallAd Control_ID_CodiFapaTxt
  loc_B6172D: FStAdFunc var_8C
  loc_B61730: FLdPr var_8C
  loc_B61733: Me.Text = from_stack_1
  loc_B61738: FFree1Ad var_8C
  loc_B6173B: FLdPr Me
  loc_B6173E: VCallAd Control_ID_CodiFapaTxt
  loc_B61741: CVarAd
  loc_B61745: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B6174A: FFree1Var var_9C = ""
  loc_B6174D: LitStr "0"
  loc_B61750: FLdPr Me
  loc_B61753: VCallAd Control_ID_DesdCuotfechaTxt
  loc_B61756: FStAdFunc var_8C
  loc_B61759: FLdPr var_8C
  loc_B6175C: Me.Text = from_stack_1
  loc_B61761: FFree1Ad var_8C
  loc_B61764: LitStr "0"
  loc_B61767: FLdPr Me
  loc_B6176A: VCallAd Control_ID_HastCuotfechaTxt
  loc_B6176D: FStAdFunc var_8C
  loc_B61770: FLdPr var_8C
  loc_B61773: Me.Text = from_stack_1
  loc_B61778: FFree1Ad var_8C
  loc_B6177B: LitStr "0"
  loc_B6177E: FLdPr Me
  loc_B61781: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_B61784: FStAdFunc var_8C
  loc_B61787: FLdPr var_8C
  loc_B6178A: Me.Text = from_stack_1
  loc_B6178F: FFree1Ad var_8C
  loc_B61792: LitStr "0"
  loc_B61795: FLdPr Me
  loc_B61798: VCallAd Control_ID_HastCuotEstadoTxt
  loc_B6179B: FStAdFunc var_8C
  loc_B6179E: FLdPr var_8C
  loc_B617A1: Me.Text = from_stack_1
  loc_B617A6: FFree1Ad var_8C
  loc_B617A9: LitI2_Byte 0
  loc_B617AB: FLdPr Me
  loc_B617AE: VCallAd Control_ID_RepeFechChk
  loc_B617B1: FStAdFunc var_8C
  loc_B617B4: FLdPr var_8C
  loc_B617B7: Me.Value = from_stack_1
  loc_B617BC: FFree1Ad var_8C
  loc_B617BF: LitI2_Byte 0
  loc_B617C1: FLdPr Me
  loc_B617C4: VCallAd Control_ID_RepeEstaChk
  loc_B617C7: FStAdFunc var_8C
  loc_B617CA: FLdPr var_8C
  loc_B617CD: Me.Value = from_stack_1
  loc_B617D2: FFree1Ad var_8C
  loc_B617D5: LitI4 0
  loc_B617DA: LitI4 1
  loc_B617DF: FLdRfVar var_1DC
  loc_B617E2: Redim
  loc_B617EC: FLdPr Me
  loc_B617EF: VCallAd Control_ID_AgregarFechaCmd
  loc_B617F2: CVarAd
  loc_B617F6: ParmAry1St
  loc_B617FC: FLdPr Me
  loc_B617FF: VCallAd Control_ID_AgregarEstadoCmd
  loc_B61802: CVarAd
  loc_B61806: ParmAry1St
  loc_B6180C: FLdRfVar var_1DC
  loc_B6180F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B61814: FLdRfVar var_1DC
  loc_B61817: Erase
  loc_B61818: ExitProcHresult
End Sub

Private Sub Form_Load() 'B83788
  'Data Table: 5162A0
  loc_B8328C: FLdPr Me
  loc_B8328F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_B83292: FStAdFunc var_88
  loc_B83295: LitVarI4
  loc_B8329D: PopAdLdVar
  loc_B8329E: LitVarI4
  loc_B832A6: PopAdLdVar
  loc_B832A7: FLdPr var_88
  loc_B832AA: LateIdCallSt
  loc_B832B2: LitVarI4
  loc_B832BA: PopAdLdVar
  loc_B832BB: LitVarI4
  loc_B832C3: PopAdLdVar
  loc_B832C4: FLdPr var_88
  loc_B832C7: LateIdCallSt
  loc_B832CF: LitVarI4
  loc_B832D7: PopAdLdVar
  loc_B832D8: LitVarI4
  loc_B832E0: PopAdLdVar
  loc_B832E1: FLdPr var_88
  loc_B832E4: LateIdCallSt
  loc_B832EC: LitVarI4
  loc_B832F4: PopAdLdVar
  loc_B832F5: LitVarI4
  loc_B832FD: PopAdLdVar
  loc_B832FE: FLdPr var_88
  loc_B83301: LateIdCallSt
  loc_B83309: LitVarI4
  loc_B83311: PopAdLdVar
  loc_B83312: LitVarI4
  loc_B8331A: PopAdLdVar
  loc_B8331B: FLdPr var_88
  loc_B8331E: LateIdCallSt
  loc_B83326: LitVarI4
  loc_B8332E: PopAdLdVar
  loc_B8332F: LitVarI4
  loc_B83337: PopAdLdVar
  loc_B83338: FLdPr var_88
  loc_B8333B: LateIdCallSt
  loc_B83343: LitVarI4
  loc_B8334B: PopAdLdVar
  loc_B8334C: LitVarI4
  loc_B83354: PopAdLdVar
  loc_B83355: FLdPr var_88
  loc_B83358: LateIdCallSt
  loc_B83360: LitVarI4
  loc_B83368: PopAdLdVar
  loc_B83369: LitVarI4
  loc_B83371: PopAdLdVar
  loc_B83372: FLdPr var_88
  loc_B83375: LateIdCallSt
  loc_B8337D: LitVarI4
  loc_B83385: PopAdLdVar
  loc_B83386: LitVarI4
  loc_B8338E: PopAdLdVar
  loc_B8338F: FLdPr var_88
  loc_B83392: LateIdCallSt
  loc_B8339A: LitVarI4
  loc_B833A2: PopAdLdVar
  loc_B833A3: LitVarI4
  loc_B833AB: PopAdLdVar
  loc_B833AC: FLdPr var_88
  loc_B833AF: LateIdCallSt
  loc_B833B7: LitVarI4
  loc_B833BF: PopAdLdVar
  loc_B833C0: LitVarI4
  loc_B833C8: PopAdLdVar
  loc_B833C9: FLdPr var_88
  loc_B833CC: LateIdCallSt
  loc_B833D4: LitVarI4
  loc_B833DC: PopAdLdVar
  loc_B833DD: LitVarI4
  loc_B833E5: PopAdLdVar
  loc_B833E6: LitVarStr var_D8, "Cuotas"
  loc_B833EB: PopAdLdVar
  loc_B833EC: FLdPr var_88
  loc_B833EF: LateIdCallSt
  loc_B833F7: LitVarI4
  loc_B833FF: PopAdLdVar
  loc_B83400: LitVarI4
  loc_B83408: PopAdLdVar
  loc_B83409: LitVarStr var_D8, "Estado"
  loc_B8340E: PopAdLdVar
  loc_B8340F: FLdPr var_88
  loc_B83412: LateIdCallSt
  loc_B8341A: LitVarI4
  loc_B83422: PopAdLdVar
  loc_B83423: LitVarI4
  loc_B8342B: PopAdLdVar
  loc_B8342C: LitVarStr var_D8, "Vencimiento"
  loc_B83431: PopAdLdVar
  loc_B83432: FLdPr var_88
  loc_B83435: LateIdCallSt
  loc_B8343D: LitVarI4
  loc_B83445: PopAdLdVar
  loc_B83446: LitVarI4
  loc_B8344E: PopAdLdVar
  loc_B8344F: LitVarStr var_D8, "Fecha Pago"
  loc_B83454: PopAdLdVar
  loc_B83455: FLdPr var_88
  loc_B83458: LateIdCallSt
  loc_B83460: LitVarI4
  loc_B83468: PopAdLdVar
  loc_B83469: LitVarI4
  loc_B83471: PopAdLdVar
  loc_B83472: LitVarStr var_D8, "Capital"
  loc_B83477: PopAdLdVar
  loc_B83478: FLdPr var_88
  loc_B8347B: LateIdCallSt
  loc_B83483: LitVarI4
  loc_B8348B: PopAdLdVar
  loc_B8348C: LitVarI4
  loc_B83494: PopAdLdVar
  loc_B83495: LitVarStr var_D8, "Recargo"
  loc_B8349A: PopAdLdVar
  loc_B8349B: FLdPr var_88
  loc_B8349E: LateIdCallSt
  loc_B834A6: LitVarI4
  loc_B834AE: PopAdLdVar
  loc_B834AF: LitVarI4
  loc_B834B7: PopAdLdVar
  loc_B834B8: LitVarStr var_D8, "Descuento"
  loc_B834BD: PopAdLdVar
  loc_B834BE: FLdPr var_88
  loc_B834C1: LateIdCallSt
  loc_B834C9: LitVarI4
  loc_B834D1: PopAdLdVar
  loc_B834D2: LitVarI4
  loc_B834DA: PopAdLdVar
  loc_B834DB: LitVarStr var_D8, "Apremio"
  loc_B834E0: PopAdLdVar
  loc_B834E1: FLdPr var_88
  loc_B834E4: LateIdCallSt
  loc_B834EC: LitVarI4
  loc_B834F4: PopAdLdVar
  loc_B834F5: LitVarI4
  loc_B834FD: PopAdLdVar
  loc_B834FE: LitVarStr var_D8, "Interes"
  loc_B83503: PopAdLdVar
  loc_B83504: FLdPr var_88
  loc_B83507: LateIdCallSt
  loc_B8350F: LitVarI4
  loc_B83517: PopAdLdVar
  loc_B83518: LitVarI4
  loc_B83520: PopAdLdVar
  loc_B83521: LitVarStr var_D8, "Total"
  loc_B83526: PopAdLdVar
  loc_B83527: FLdPr var_88
  loc_B8352A: LateIdCallSt
  loc_B83532: LitVarI4
  loc_B8353A: PopAdLdVar
  loc_B8353B: LitVarI4
  loc_B83543: PopAdLdVar
  loc_B83544: LitVarStr var_D8, "Sel"
  loc_B83549: PopAdLdVar
  loc_B8354A: FLdPr var_88
  loc_B8354D: LateIdCallSt
  loc_B83555: LitNothing
  loc_B83557: FStAd var_88 
  loc_B8355B: LitVar_Missing var_98
  loc_B8355E: PopAdLdVar
  loc_B8355F: LitStr "Activa"
  loc_B83562: FLdPr Me
  loc_B83565: VCallAd Control_ID_EstaFapaCbo
  loc_B83568: FStAdFunc var_EC
  loc_B8356B: FLdPr var_EC
  loc_B8356E: Me.AddItem from_stack_1, from_stack_2
  loc_B83573: FFree1Ad var_EC
  loc_B83576: LitVar_Missing var_98
  loc_B83579: PopAdLdVar
  loc_B8357A: LitStr "Anulada"
  loc_B8357D: FLdPr Me
  loc_B83580: VCallAd Control_ID_EstaFapaCbo
  loc_B83583: FStAdFunc var_EC
  loc_B83586: FLdPr var_EC
  loc_B83589: Me.AddItem from_stack_1, from_stack_2
  loc_B8358E: FFree1Ad var_EC
  loc_B83591: LitVar_Missing var_98
  loc_B83594: PopAdLdVar
  loc_B83595: LitStr "Caida"
  loc_B83598: FLdPr Me
  loc_B8359B: VCallAd Control_ID_EstaFapaCbo
  loc_B8359E: FStAdFunc var_EC
  loc_B835A1: FLdPr var_EC
  loc_B835A4: Me.AddItem from_stack_1, from_stack_2
  loc_B835A9: FFree1Ad var_EC
  loc_B835AC: LitVar_Missing var_98
  loc_B835AF: PopAdLdVar
  loc_B835B0: LitStr "Pago a Cuenta"
  loc_B835B3: FLdPr Me
  loc_B835B6: VCallAd Control_ID_EstaFapaCbo
  loc_B835B9: FStAdFunc var_EC
  loc_B835BC: FLdPr var_EC
  loc_B835BF: Me.AddItem from_stack_1, from_stack_2
  loc_B835C4: FFree1Ad var_EC
  loc_B835C7: LitVar_Missing var_98
  loc_B835CA: PopAdLdVar
  loc_B835CB: LitStr "Pagada"
  loc_B835CE: FLdPr Me
  loc_B835D1: VCallAd Control_ID_EstaFapaCbo
  loc_B835D4: FStAdFunc var_EC
  loc_B835D7: FLdPr var_EC
  loc_B835DA: Me.AddItem from_stack_1, from_stack_2
  loc_B835DF: FFree1Ad var_EC
  loc_B835E2: LitVar_Missing var_98
  loc_B835E5: PopAdLdVar
  loc_B835E6: LitStr "Emitida"
  loc_B835E9: FLdPr Me
  loc_B835EC: VCallAd Control_ID_EstaFapa2Cbo
  loc_B835EF: FStAdFunc var_EC
  loc_B835F2: FLdPr var_EC
  loc_B835F5: Me.AddItem from_stack_1, from_stack_2
  loc_B835FA: FFree1Ad var_EC
  loc_B835FD: LitVar_Missing var_98
  loc_B83600: PopAdLdVar
  loc_B83601: LitStr "Anulada"
  loc_B83604: FLdPr Me
  loc_B83607: VCallAd Control_ID_EstaFapa2Cbo
  loc_B8360A: FStAdFunc var_EC
  loc_B8360D: FLdPr var_EC
  loc_B83610: Me.AddItem from_stack_1, from_stack_2
  loc_B83615: FFree1Ad var_EC
  loc_B83618: LitVar_Missing var_98
  loc_B8361B: PopAdLdVar
  loc_B8361C: LitStr "Caida"
  loc_B8361F: FLdPr Me
  loc_B83622: VCallAd Control_ID_EstaFapa2Cbo
  loc_B83625: FStAdFunc var_EC
  loc_B83628: FLdPr var_EC
  loc_B8362B: Me.AddItem from_stack_1, from_stack_2
  loc_B83630: FFree1Ad var_EC
  loc_B83633: LitVar_Missing var_98
  loc_B83636: PopAdLdVar
  loc_B83637: LitStr "Pago a Cuenta"
  loc_B8363A: FLdPr Me
  loc_B8363D: VCallAd Control_ID_EstaFapa2Cbo
  loc_B83640: FStAdFunc var_EC
  loc_B83643: FLdPr var_EC
  loc_B83646: Me.AddItem from_stack_1, from_stack_2
  loc_B8364B: FFree1Ad var_EC
  loc_B8364E: LitVar_Missing var_98
  loc_B83651: PopAdLdVar
  loc_B83652: LitStr "Pagada"
  loc_B83655: FLdPr Me
  loc_B83658: VCallAd Control_ID_EstaFapa2Cbo
  loc_B8365B: FStAdFunc var_EC
  loc_B8365E: FLdPr var_EC
  loc_B83661: Me.AddItem from_stack_1, from_stack_2
  loc_B83666: FFree1Ad var_EC
  loc_B83669: LitI2_Byte 0
  loc_B8366B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B83670: CStrDate
  loc_B83672: CVarStr var_FC
  loc_B83675: PopAdLdVar
  loc_B83676: FLdPr Me
  loc_B83679: VCallAd Control_ID_FepaFapa2Msk
  loc_B8367C: FStAdFunc var_EC
  loc_B8367F: FLdPr var_EC
  loc_B83682: LateIdSt
  loc_B83687: FFree1Ad var_EC
  loc_B8368A: FFree1Var var_FC = ""
  loc_B8368D: LitStr "Emitida"
  loc_B83690: FLdPr Me
  loc_B83693: VCallAd Control_ID_EstaFapa2Cbo
  loc_B83696: FStAdFunc var_EC
  loc_B83699: FLdPr var_EC
  loc_B8369C: Me.Text = from_stack_1
  loc_B836A1: FFree1Ad var_EC
  loc_B836A4: LitI4 0
  loc_B836A9: LitI4 &HB
  loc_B836AE: FLdRfVar var_100
  loc_B836B1: Redim
  loc_B836BB: FLdPr Me
  loc_B836BE: VCallAd Control_ID_DesdCuotfechaTxt
  loc_B836C1: CVarAd
  loc_B836C5: ParmAry1St
  loc_B836CB: FLdPr Me
  loc_B836CE: VCallAd Control_ID_HastCuotfechaTxt
  loc_B836D1: CVarAd
  loc_B836D5: ParmAry1St
  loc_B836DB: FLdPr Me
  loc_B836DE: VCallAd Control_ID_FepaFapa2Msk
  loc_B836E1: CVarAd
  loc_B836E5: ParmAry1St
  loc_B836EB: FLdPr Me
  loc_B836EE: VCallAd Control_ID_FepaFapa2Cmd
  loc_B836F1: CVarAd
  loc_B836F5: ParmAry1St
  loc_B836FB: FLdPr Me
  loc_B836FE: VCallAd Control_ID_AgregarFechaCmd
  loc_B83701: CVarAd
  loc_B83705: ParmAry1St
  loc_B8370B: FLdPr Me
  loc_B8370E: VCallAd Control_ID_DesdCuotEstadoTxt
  loc_B83711: CVarAd
  loc_B83715: ParmAry1St
  loc_B8371B: FLdPr Me
  loc_B8371E: VCallAd Control_ID_HastCuotEstadoTxt
  loc_B83721: CVarAd
  loc_B83725: ParmAry1St
  loc_B8372B: FLdPr Me
  loc_B8372E: VCallAd Control_ID_EstaFapa2Cbo
  loc_B83731: CVarAd
  loc_B83735: ParmAry1St
  loc_B8373B: FLdPr Me
  loc_B8373E: VCallAd Control_ID_AgregarEstadoCmd
  loc_B83741: CVarAd
  loc_B83745: ParmAry1St
  loc_B8374B: FLdPr Me
  loc_B8374E: VCallAd Control_ID_RepeEstaChk
  loc_B83751: CVarAd
  loc_B83755: ParmAry1St
  loc_B8375B: FLdPr Me
  loc_B8375E: VCallAd Control_ID_RepeFechChk
  loc_B83761: CVarAd
  loc_B83765: ParmAry1St
  loc_B8376B: FLdPr Me
  loc_B8376E: VCallAd Control_ID_BajaMotiTxt
  loc_B83771: CVarAd
  loc_B83775: ParmAry1St
  loc_B8377B: FLdRfVar var_100
  loc_B8377E: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B83783: FLdRfVar var_100
  loc_B83786: Erase
  loc_B83787: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA260
  'Data Table: 5162A0
  loc_9BA24C: ILdI2 KeyCode
  loc_9BA24F: CI4UI1
  loc_9BA250: LitI4 &H78
  loc_9BA255: EqI4
  loc_9BA256: BranchF loc_9BA25E
  loc_9BA259: Call SalirCmd_Click()
  loc_9BA25E: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_GotFocus() '9C4190
  'Data Table: 5162A0
  loc_9C417C: FLdPr Me
  loc_9C417F: VCallAd Control_ID_BajaMotiTxt
  loc_9C4182: CVarAd
  loc_9C4186: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C418B: FFree1Var var_94 = ""
  loc_9C418E: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_Validate(Cancel As Boolean) 'A94B7C
  'Data Table: 5162A0
  loc_A94AD4: FLdRfVar var_8C
  loc_A94AD7: FLdPr Me
  loc_A94ADA: VCallAd Control_ID_EstaFapaCbo
  loc_A94ADD: FStAdFunc var_88
  loc_A94AE0: FLdPr var_88
  loc_A94AE3:  = Me.Text
  loc_A94AE8: ILdRf var_8C
  loc_A94AEB: LitStr "Anulada"
  loc_A94AEE: EqStr
  loc_A94AF0: FLdRfVar var_92
  loc_A94AF3: FLdPr Me
  loc_A94AF6: VCallAd Control_ID_BajaMotiTxt
  loc_A94AF9: FStAdFunc var_90
  loc_A94AFC: FLdPr var_90
  loc_A94AFF:  = Me.Enabled
  loc_A94B04: FLdI2 var_92
  loc_A94B07: AndI4
  loc_A94B08: FFree1Str var_8C
  loc_A94B0B: FFreeAd var_88 = ""
  loc_A94B12: BranchF loc_A94B79
  loc_A94B15: FLdRfVar var_8C
  loc_A94B18: FLdPr Me
  loc_A94B1B: VCallAd Control_ID_BajaMotiTxt
  loc_A94B1E: FStAdFunc var_88
  loc_A94B21: FLdPr var_88
  loc_A94B24:  = Me.Text
  loc_A94B29: ILdRf var_8C
  loc_A94B2C: LitStr "Motivio de Baja"
  loc_A94B2F: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A94B34: FStStrNoPop var_98
  loc_A94B37: FLdPr Me
  loc_A94B3A: MemStStrCopy
  loc_A94B3E: FFreeStr var_8C = ""
  loc_A94B45: FFree1Ad var_88
  loc_A94B48: FLdPr Me
  loc_A94B4B: MemLdStr global_88
  loc_A94B4E: LitStr vbNullString
  loc_A94B51: NeStr
  loc_A94B53: BranchF loc_A94B79
  loc_A94B56: FLdPr Me
  loc_A94B59: MemLdStr global_88
  loc_A94B5C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A94B61: FLdPr Me
  loc_A94B64: VCallAd Control_ID_BajaMotiTxt
  loc_A94B67: CVarAd
  loc_A94B6B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A94B70: FFree1Var var_A8 = ""
  loc_A94B73: LitI2_Byte &HFF
  loc_A94B75: IStI2 Cancel
  loc_A94B78: ExitProcHresult
  loc_A94B79: ExitProcHresult
End Sub

Private Function Proc_290_40_9C3F98() '9C3F98
  'Data Table: 5162A0
  loc_9C3F84: FLdPr Me
  loc_9C3F87: VCallAd Control_ID_FepaFapa2Msk
  loc_9C3F8A: CVarAd
  loc_9C3F8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3F93: FFree1Var var_94 = ""
  loc_9C3F96: ExitProcHresult
End Function

Private Function Proc_290_41_A508B8() 'A508B8
  'Data Table: 5162A0
  loc_A50864: LitVar_Missing var_A4
  loc_A50867: PopAdLdVar
  loc_A50868: LitVarI4
  loc_A50870: PopAdLdVar
  loc_A50871: ImpAdLdRf MemVar_D930A4
  loc_A50874: NewIfNullPr frmCalendario
  loc_A50877: frmCalendario.Show from_stack_1, from_stack_2
  loc_A5087C: ImpAdLdI4 MemVar_D93028
  loc_A5087F: LitStr vbNullString
  loc_A50882: NeStr
  loc_A50884: BranchF loc_A508A2
  loc_A50887: ImpAdLdRf MemVar_D93028
  loc_A5088A: CDargRef
  loc_A5088E: FLdPr Me
  loc_A50891: VCallAd Control_ID_FepaFapaMsk
  loc_A50894: FStAdFunc var_A8
  loc_A50897: FLdPr var_A8
  loc_A5089A: LateIdSt
  loc_A5089F: FFree1Ad var_A8
  loc_A508A2: FLdPr Me
  loc_A508A5: VCallAd Control_ID_FepaFapaMsk
  loc_A508A8: CVarAd
  loc_A508AC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A508B1: FFree1Var var_B8 = ""
  loc_A508B4: ExitProcHresult
End Function

Private Function Proc_290_42_AF15D4() 'AF15D4
  'Data Table: 5162A0
  loc_AF141C: FLdPr Me
  loc_AF141F: VCallAd Control_ID_CuotasFacilidadFlex
  loc_AF1422: FStAdFunc var_88
  loc_AF1425: FLdPr var_88
  loc_AF1428: LateIdCall
  loc_AF1430: LitVarI4
  loc_AF1438: PopAdLdVar
  loc_AF1439: FLdPr var_88
  loc_AF143C: LateIdSt
  loc_AF1441: LitVarI4
  loc_AF1449: PopAdLdVar
  loc_AF144A: LitVarI4
  loc_AF1452: PopAdLdVar
  loc_AF1453: LitVarStr var_D8, "Cuotas"
  loc_AF1458: PopAdLdVar
  loc_AF1459: FLdPr var_88
  loc_AF145C: LateIdCallSt
  loc_AF1464: LitVarI4
  loc_AF146C: PopAdLdVar
  loc_AF146D: LitVarI4
  loc_AF1475: PopAdLdVar
  loc_AF1476: LitVarStr var_D8, "Estado"
  loc_AF147B: PopAdLdVar
  loc_AF147C: FLdPr var_88
  loc_AF147F: LateIdCallSt
  loc_AF1487: LitVarI4
  loc_AF148F: PopAdLdVar
  loc_AF1490: LitVarI4
  loc_AF1498: PopAdLdVar
  loc_AF1499: LitVarStr var_D8, "Vencimiento"
  loc_AF149E: PopAdLdVar
  loc_AF149F: FLdPr var_88
  loc_AF14A2: LateIdCallSt
  loc_AF14AA: LitVarI4
  loc_AF14B2: PopAdLdVar
  loc_AF14B3: LitVarI4
  loc_AF14BB: PopAdLdVar
  loc_AF14BC: LitVarStr var_D8, "Fecha Pago"
  loc_AF14C1: PopAdLdVar
  loc_AF14C2: FLdPr var_88
  loc_AF14C5: LateIdCallSt
  loc_AF14CD: LitVarI4
  loc_AF14D5: PopAdLdVar
  loc_AF14D6: LitVarI4
  loc_AF14DE: PopAdLdVar
  loc_AF14DF: LitVarStr var_D8, "Capital"
  loc_AF14E4: PopAdLdVar
  loc_AF14E5: FLdPr var_88
  loc_AF14E8: LateIdCallSt
  loc_AF14F0: LitVarI4
  loc_AF14F8: PopAdLdVar
  loc_AF14F9: LitVarI4
  loc_AF1501: PopAdLdVar
  loc_AF1502: LitVarStr var_D8, "Recargo"
  loc_AF1507: PopAdLdVar
  loc_AF1508: FLdPr var_88
  loc_AF150B: LateIdCallSt
  loc_AF1513: LitVarI4
  loc_AF151B: PopAdLdVar
  loc_AF151C: LitVarI4
  loc_AF1524: PopAdLdVar
  loc_AF1525: LitVarStr var_D8, "Descuento"
  loc_AF152A: PopAdLdVar
  loc_AF152B: FLdPr var_88
  loc_AF152E: LateIdCallSt
  loc_AF1536: LitVarI4
  loc_AF153E: PopAdLdVar
  loc_AF153F: LitVarI4
  loc_AF1547: PopAdLdVar
  loc_AF1548: LitVarStr var_D8, "Apremio"
  loc_AF154D: PopAdLdVar
  loc_AF154E: FLdPr var_88
  loc_AF1551: LateIdCallSt
  loc_AF1559: LitVarI4
  loc_AF1561: PopAdLdVar
  loc_AF1562: LitVarI4
  loc_AF156A: PopAdLdVar
  loc_AF156B: LitVarStr var_D8, "Interes"
  loc_AF1570: PopAdLdVar
  loc_AF1571: FLdPr var_88
  loc_AF1574: LateIdCallSt
  loc_AF157C: LitVarI4
  loc_AF1584: PopAdLdVar
  loc_AF1585: LitVarI4
  loc_AF158D: PopAdLdVar
  loc_AF158E: LitVarStr var_D8, "Total"
  loc_AF1593: PopAdLdVar
  loc_AF1594: FLdPr var_88
  loc_AF1597: LateIdCallSt
  loc_AF159F: LitVarI4
  loc_AF15A7: PopAdLdVar
  loc_AF15A8: LitVarI4
  loc_AF15B0: PopAdLdVar
  loc_AF15B1: LitVarStr var_D8, "Sel"
  loc_AF15B6: PopAdLdVar
  loc_AF15B7: FLdPr var_88
  loc_AF15BA: LateIdCallSt
  loc_AF15C2: FLdPr var_88
  loc_AF15C5: LateIdCall
  loc_AF15CD: LitNothing
  loc_AF15CF: FStAd var_88 
  loc_AF15D3: ExitProcHresult
End Function
