VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form dlgCreaPersona
  Caption = "Crea Persona"
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
  ClientHeight = 6264
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton GenerarCmd
    Caption = "Generar C.U.I.L"
    Left = 8160
    Top = 240
    Width = 2055
    Height = 465
    TabIndex = 57
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
  Begin VB.CommandButton CodiPofiCmd
    Left = 10200
    Top = 2280
    Width = 450
    Height = 345
    TabIndex = 15
    Picture = "dlgCreaPersona.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NudoPersTxt
    ForeColor = &HFF0000&
    Left = 8520
    Top = 1320
    Width = 1695
    Height = 360
    TabIndex = 5
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
  Begin VB.TextBox CucuPersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 360
    Width = 1695
    Height = 360
    TabIndex = 0
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
  Begin VB.TextBox DetaPersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 840
    Width = 7575
    Height = 360
    TabIndex = 1
    MaxLength = 70
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
  Begin VB.CheckBox JuriPersChk
    ForeColor = &HFF0000&
    Left = 12960
    Top = 840
    Width = 255
    Height = 360
    TabIndex = 2
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
  Begin VB.TextBox CeluPersTxt
    ForeColor = &HFF0000&
    Left = 5025
    Top = 1800
    Width = 1695
    Height = 360
    TabIndex = 9
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
  Begin VB.TextBox TelePersTxt
    ForeColor = &HFF0000&
    Left = 2145
    Top = 1800
    Width = 1815
    Height = 360
    TabIndex = 8
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
  Begin VB.TextBox FaxsPersTxt
    ForeColor = &HFF0000&
    Left = 7905
    Top = 1800
    Width = 1695
    Height = 360
    TabIndex = 10
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
  Begin VB.TextBox CodiTidoTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 1320
    Width = 495
    Height = 360
    TabIndex = 3
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
  Begin VB.CommandButton CodiTidoCmd
    Left = 2760
    Top = 1320
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "dlgCreaPersona.frx":00FA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox MailPersTxt
    ForeColor = &HFF0000&
    Left = 11760
    Top = 1800
    Width = 3135
    Height = 360
    TabIndex = 11
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
  End
  Begin VB.CommandButton FenaPersCmd
    Left = 14295
    Top = 1320
    Width = 450
    Height = 345
    TabIndex = 7
    Picture = "dlgCreaPersona.frx":01F4
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton CodiEsciCmd
    Left = 2760
    Top = 2280
    Width = 450
    Height = 345
    TabIndex = 13
    Picture = "dlgCreaPersona.frx":0736
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox CodiEsciTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 2280
    Width = 495
    Height = 360
    TabIndex = 12
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
  Begin VB.TextBox CodiPofiTxt
    ForeColor = &HFF0000&
    Left = 9600
    Top = 2280
    Width = 495
    Height = 360
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
  Begin VB.TextBox CoprPersTxt
    ForeColor = &HFF0000&
    Left = 12000
    Top = 4920
    Width = 1455
    Height = 360
    TabIndex = 29
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
  Begin VB.TextBox DelrPersTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 4920
    Width = 6855
    Height = 360
    TabIndex = 28
    MaxLength = 30
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
  Begin VB.CommandButton ColrPersCmd
    Left = 3000
    Top = 4920
    Width = 450
    Height = 345
    TabIndex = 27
    Picture = "dlgCreaPersona.frx":0830
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox ColrPersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 4920
    Width = 735
    Height = 360
    TabIndex = 26
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
  Begin VB.TextBox UbrePersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 4440
    Width = 12615
    Height = 360
    TabIndex = 25
    MaxLength = 80
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
  Begin VB.TextBox CarePersTxt
    ForeColor = &HFF0000&
    Left = 13560
    Top = 3960
    Width = 1215
    Height = 360
    TabIndex = 24
    MaxLength = 5
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
  Begin VB.TextBox MarePersTxt
    ForeColor = &HFF0000&
    Left = 11280
    Top = 3960
    Width = 1215
    Height = 360
    TabIndex = 23
    MaxLength = 5
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
  Begin VB.TextBox DebrPersTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 3960
    Width = 6855
    Height = 360
    TabIndex = 22
    MaxLength = 30
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
  Begin VB.CommandButton CobrPersCmd
    Left = 3000
    Top = 3960
    Width = 450
    Height = 345
    TabIndex = 21
    Picture = "dlgCreaPersona.frx":092A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NurePersTxt
    ForeColor = &HFF0000&
    Left = 12360
    Top = 3480
    Width = 1215
    Height = 360
    TabIndex = 19
    MaxLength = 6
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
  Begin VB.TextBox DecrPersTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 3480
    Width = 6855
    Height = 360
    TabIndex = 18
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
  Begin VB.CommandButton CocrPersCmd
    Left = 3000
    Top = 3480
    Width = 450
    Height = 345
    TabIndex = 17
    Picture = "dlgCreaPersona.frx":0A24
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox CocrPersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 3480
    Width = 735
    Height = 360
    TabIndex = 16
    MaxLength = 5
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
  Begin VB.TextBox CobrPersTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 3960
    Width = 735
    Height = 360
    TabIndex = 20
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 7080
    Top = 5520
    Width = 1215
    Height = 375
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
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 5160
    Top = 5520
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
  Begin MSMask.MaskEdBox FenaPersMsk
    Left = 12600
    Top = 1320
    Width = 1455
    Height = 345
    TabIndex = 6
    OleObjectBlob = "dlgCreaPersona.frx":0B1E
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin VB.Label DetaTidoLbl
    Left = 3360
    Top = 1320
    Width = 2775
    Height = 345
    TabIndex = 56
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
  Begin VB.Label DetaEsciLbl
    Left = 3360
    Top = 2280
    Width = 4215
    Height = 345
    TabIndex = 55
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
  Begin VB.Label DetaPofiLbl
    Left = 10800
    Top = 2280
    Width = 4215
    Height = 345
    TabIndex = 54
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
  Begin VB.Label Label30
    Caption = "                                                                                        Datos del domicilio real"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 0
    Top = 3000
    Width = 15135
    Height = 255
    TabIndex = 53
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
    Caption = "(sin espacios ni guiones)"
    Left = 3960
    Top = 360
    Width = 2595
    Height = 300
    TabIndex = 52
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
    Caption = "CUIT/CUIL:"
    Left = 840
    Top = 360
    Width = 1230
    Height = 300
    TabIndex = 51
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
    Caption = "Apellido y Nombre:"
    Left = 120
    Top = 840
    Width = 1965
    Height = 300
    TabIndex = 50
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
    Caption = "¿Persona Jurídica?:"
    Left = 10800
    Top = 840
    Width = 2085
    Height = 300
    TabIndex = 49
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
    Caption = "Celular:"
    Left = 4185
    Top = 1800
    Width = 795
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
  Begin VB.Label Label11
    Caption = "Teléfono:"
    Left = 1200
    Top = 1800
    Width = 990
    Height = 300
    TabIndex = 47
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
    Caption = "Fax:"
    Left = 7305
    Top = 1800
    Width = 450
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
  Begin VB.Label Label5
    Caption = "Tipo Doc.:"
    Left = 960
    Top = 1320
    Width = 1065
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
  Begin VB.Label Label6
    Caption = "Nro. Documento:"
    Left = 6600
    Top = 1320
    Width = 1800
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
  Begin VB.Label Label8
    Caption = "Correo eléctronico:"
    Left = 9720
    Top = 1800
    Width = 1995
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
  Begin VB.Label Label7
    Caption = "Fecha Nacimiento:"
    Left = 10560
    Top = 1320
    Width = 1980
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
  Begin VB.Label Label13
    Caption = "Estado Civil:"
    Left = 720
    Top = 2280
    Width = 1290
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
  Begin VB.Label Label14
    Caption = "Posicion Fiscal:"
    Left = 7920
    Top = 2280
    Width = 1620
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
  Begin VB.Label Label22
    Caption = "Cod. Postal:"
    Left = 10680
    Top = 4920
    Width = 1275
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
  Begin VB.Label Label23
    Caption = "Localidad:"
    Left = 960
    Top = 4920
    Width = 1080
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
  Begin VB.Label Label24
    Caption = "Ubicacion:"
    Left = 960
    Top = 4440
    Width = 1110
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
  Begin VB.Label Label25
    Caption = "Casa:"
    Left = 12840
    Top = 3960
    Width = 615
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
  Begin VB.Label Label26
    Caption = "Manz:"
    Left = 10560
    Top = 3960
    Width = 645
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
  Begin VB.Label Label27
    Caption = "Barrio:"
    Left = 1440
    Top = 3960
    Width = 690
    Height = 300
    TabIndex = 34
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
  Begin VB.Label Label28
    Caption = "Nro de Puerta:"
    Left = 10800
    Top = 3480
    Width = 1530
    Height = 300
    TabIndex = 33
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
  Begin VB.Label Label29
    Caption = "Calle:"
    Left = 1440
    Top = 3480
    Width = 585
    Height = 300
    TabIndex = 31
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

Attribute VB_Name = "dlgCreaPersona"

Public boAceptar As Boolean
Public sCucuPers As String
Public doValidaCuil As Boolean


Private Sub TelePersTxt_GotFocus() '9C0758
  'Data Table: 523FB8
  loc_9C0744: FLdPr Me
  loc_9C0747: VCallAd Control_ID_TelePersTxt
  loc_9C074A: CVarAd
  loc_9C074E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0753: FFree1Var var_94 = ""
  loc_9C0756: ExitProcHresult
End Sub

Private Sub NurePersTxt_GotFocus() '9C0830
  'Data Table: 523FB8
  loc_9C081C: FLdPr Me
  loc_9C081F: VCallAd Control_ID_NurePersTxt
  loc_9C0822: CVarAd
  loc_9C0826: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C082B: FFree1Var var_94 = ""
  loc_9C082E: ExitProcHresult
End Sub

Private Sub NurePersTxt_KeyPress(KeyAscii As Integer) '9D1710
  'Data Table: 523FB8
  loc_9D16F8: LitStr "0123456789"
  loc_9D16FB: FStStrCopy var_88
  loc_9D16FE: FLdRfVar var_88
  loc_9D1701: ILdRf KeyAscii
  loc_9D1704: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D1709: IStI2 KeyAscii
  loc_9D170C: FFree1Str var_88
  loc_9D170F: ExitProcHresult
End Sub

Private Sub NurePersTxt_Validate(Cancel As Boolean) 'A9501C
  'Data Table: 523FB8
  loc_A94F70: FLdRfVar var_8C
  loc_A94F73: FLdPr Me
  loc_A94F76: VCallAd Control_ID_NurePersTxt
  loc_A94F79: FStAdFunc var_88
  loc_A94F7C: FLdPr var_88
  loc_A94F7F:  = Me.Text
  loc_A94F84: FLdZeroAd var_8C
  loc_A94F87: CVarStr var_9C
  loc_A94F8A: ImpAdCallI2 IsNumeric()
  loc_A94F8F: NotI4
  loc_A94F90: FFree1Ad var_88
  loc_A94F93: FFree1Var var_9C = ""
  loc_A94F96: BranchF loc_A94FB0
  loc_A94F99: LitStr "0"
  loc_A94F9C: FLdPr Me
  loc_A94F9F: VCallAd Control_ID_NurePersTxt
  loc_A94FA2: FStAdFunc var_88
  loc_A94FA5: FLdPr var_88
  loc_A94FA8: Me.Text = from_stack_1
  loc_A94FAD: FFree1Ad var_88
  loc_A94FB0: FLdRfVar var_8C
  loc_A94FB3: FLdPr Me
  loc_A94FB6: VCallAd Control_ID_NurePersTxt
  loc_A94FB9: FStAdFunc var_88
  loc_A94FBC: FLdPr var_88
  loc_A94FBF:  = Me.Text
  loc_A94FC4: LitI2_Byte &HFF
  loc_A94FC6: LitI2_Byte 0
  loc_A94FC8: ILdRf var_8C
  loc_A94FCB: LitStr "Numero de Puerta Real"
  loc_A94FCE: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A94FD3: FStStrNoPop var_A0
  loc_A94FD6: FLdPr Me
  loc_A94FD9: MemStStrCopy
  loc_A94FDD: FFreeStr var_8C = ""
  loc_A94FE4: FFree1Ad var_88
  loc_A94FE7: FLdPr Me
  loc_A94FEA: MemLdStr global_72
  loc_A94FED: LitStr vbNullString
  loc_A94FF0: NeStr
  loc_A94FF2: BranchF loc_A95018
  loc_A94FF5: FLdPr Me
  loc_A94FF8: MemLdStr global_72
  loc_A94FFB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A95000: FLdPr Me
  loc_A95003: VCallAd Control_ID_NurePersTxt
  loc_A95006: CVarAd
  loc_A9500A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9500F: FFree1Var var_9C = ""
  loc_A95012: LitI2_Byte &HFF
  loc_A95014: IStI2 Cancel
  loc_A95017: ExitProcHresult
  loc_A95018: ExitProcHresult
End Sub

Private Sub MarePersTxt_GotFocus() '9C0998
  'Data Table: 523FB8
  loc_9C0984: FLdPr Me
  loc_9C0987: VCallAd Control_ID_MarePersTxt
  loc_9C098A: CVarAd
  loc_9C098E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0993: FFree1Var var_94 = ""
  loc_9C0996: ExitProcHresult
End Sub

Private Sub UbrePersTxt_GotFocus() '9C0710
  'Data Table: 523FB8
  loc_9C06FC: FLdPr Me
  loc_9C06FF: VCallAd Control_ID_UbrePersTxt
  loc_9C0702: CVarAd
  loc_9C0706: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C070B: FFree1Var var_94 = ""
  loc_9C070E: ExitProcHresult
End Sub

Private Sub MailPersTxt_GotFocus() '9C09E0
  'Data Table: 523FB8
  loc_9C09CC: FLdPr Me
  loc_9C09CF: VCallAd Control_ID_MailPersTxt
  loc_9C09D2: CVarAd
  loc_9C09D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C09DB: FFree1Var var_94 = ""
  loc_9C09DE: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACD290
  'Data Table: 523FB8
  loc_ACD164: LitI2_Byte 0
  loc_ACD166: CStrUI1
  loc_ACD168: FStStrNoPop var_88
  loc_ACD16B: FLdPr Me
  loc_ACD16E: VCallAd Control_ID_CucuPersTxt
  loc_ACD171: FStAdFunc var_8C
  loc_ACD174: FLdPr var_8C
  loc_ACD177: Me.Text = from_stack_1
  loc_ACD17C: FFree1Str var_88
  loc_ACD17F: FFree1Ad var_8C
  loc_ACD182: LitI2_Byte 0
  loc_ACD184: CStrUI1
  loc_ACD186: FStStrNoPop var_88
  loc_ACD189: FLdPr Me
  loc_ACD18C: VCallAd Control_ID_CodiTidoTxt
  loc_ACD18F: FStAdFunc var_8C
  loc_ACD192: FLdPr var_8C
  loc_ACD195: Me.Text = from_stack_1
  loc_ACD19A: FFree1Str var_88
  loc_ACD19D: FFree1Ad var_8C
  loc_ACD1A0: LitI2_Byte 0
  loc_ACD1A2: CStrUI1
  loc_ACD1A4: FStStrNoPop var_88
  loc_ACD1A7: FLdPr Me
  loc_ACD1AA: VCallAd Control_ID_NudoPersTxt
  loc_ACD1AD: FStAdFunc var_8C
  loc_ACD1B0: FLdPr var_8C
  loc_ACD1B3: Me.Text = from_stack_1
  loc_ACD1B8: FFree1Str var_88
  loc_ACD1BB: FFree1Ad var_8C
  loc_ACD1BE: LitVarStr var_9C, vbNullString
  loc_ACD1C3: PopAdLdVar
  loc_ACD1C4: FLdPr Me
  loc_ACD1C7: VCallAd Control_ID_FenaPersMsk
  loc_ACD1CA: FStAdFunc var_8C
  loc_ACD1CD: FLdPr var_8C
  loc_ACD1D0: LateIdSt
  loc_ACD1D5: FFree1Ad var_8C
  loc_ACD1D8: LitI2_Byte 0
  loc_ACD1DA: CStrUI1
  loc_ACD1DC: FStStrNoPop var_88
  loc_ACD1DF: FLdPr Me
  loc_ACD1E2: VCallAd Control_ID_CodiEsciTxt
  loc_ACD1E5: FStAdFunc var_8C
  loc_ACD1E8: FLdPr var_8C
  loc_ACD1EB: Me.Text = from_stack_1
  loc_ACD1F0: FFree1Str var_88
  loc_ACD1F3: FFree1Ad var_8C
  loc_ACD1F6: LitI2_Byte 0
  loc_ACD1F8: CStrUI1
  loc_ACD1FA: FStStrNoPop var_88
  loc_ACD1FD: FLdPr Me
  loc_ACD200: VCallAd Control_ID_CodiPofiTxt
  loc_ACD203: FStAdFunc var_8C
  loc_ACD206: FLdPr var_8C
  loc_ACD209: Me.Text = from_stack_1
  loc_ACD20E: FFree1Str var_88
  loc_ACD211: FFree1Ad var_8C
  loc_ACD214: LitI2_Byte 0
  loc_ACD216: CStrUI1
  loc_ACD218: FStStrNoPop var_88
  loc_ACD21B: FLdPr Me
  loc_ACD21E: VCallAd Control_ID_CocrPersTxt
  loc_ACD221: FStAdFunc var_8C
  loc_ACD224: FLdPr var_8C
  loc_ACD227: Me.Text = from_stack_1
  loc_ACD22C: FFree1Str var_88
  loc_ACD22F: FFree1Ad var_8C
  loc_ACD232: LitI2_Byte 0
  loc_ACD234: CStrUI1
  loc_ACD236: FStStrNoPop var_88
  loc_ACD239: FLdPr Me
  loc_ACD23C: VCallAd Control_ID_NurePersTxt
  loc_ACD23F: FStAdFunc var_8C
  loc_ACD242: FLdPr var_8C
  loc_ACD245: Me.Text = from_stack_1
  loc_ACD24A: FFree1Str var_88
  loc_ACD24D: FFree1Ad var_8C
  loc_ACD250: LitI2_Byte 0
  loc_ACD252: CStrUI1
  loc_ACD254: FStStrNoPop var_88
  loc_ACD257: FLdPr Me
  loc_ACD25A: VCallAd Control_ID_CobrPersTxt
  loc_ACD25D: FStAdFunc var_8C
  loc_ACD260: FLdPr var_8C
  loc_ACD263: Me.Text = from_stack_1
  loc_ACD268: FFree1Str var_88
  loc_ACD26B: FFree1Ad var_8C
  loc_ACD26E: LitI2_Byte 0
  loc_ACD270: CStrUI1
  loc_ACD272: FStStrNoPop var_88
  loc_ACD275: FLdPr Me
  loc_ACD278: VCallAd Control_ID_ColrPersTxt
  loc_ACD27B: FStAdFunc var_8C
  loc_ACD27E: FLdPr var_8C
  loc_ACD281: Me.Text = from_stack_1
  loc_ACD286: FFree1Str var_88
  loc_ACD289: FFree1Ad var_8C
  loc_ACD28C: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'B50D20
  'Data Table: 523FB8
  loc_B50A10: LitI2_Byte &HFF
  loc_B50A12: PopTmpLdAd2 var_86
  loc_B50A15: Call CucuPersTxt_Validate(from_stack_1v)
  loc_B50A1A: FLdPr Me
  loc_B50A1D: MemLdStr global_72
  loc_B50A20: LitStr vbNullString
  loc_B50A23: NeStr
  loc_B50A25: BranchF loc_B50A29
  loc_B50A28: ExitProcHresult
  loc_B50A29: LitI2_Byte &HFF
  loc_B50A2B: PopTmpLdAd2 var_86
  loc_B50A2E: Call DetaPersTxt_Validate(from_stack_1v)
  loc_B50A33: FLdPr Me
  loc_B50A36: MemLdStr global_72
  loc_B50A39: LitStr vbNullString
  loc_B50A3C: NeStr
  loc_B50A3E: BranchF loc_B50A42
  loc_B50A41: ExitProcHresult
  loc_B50A42: FLdRfVar var_90
  loc_B50A45: FLdPr Me
  loc_B50A48: VCallAd Control_ID_CucuPersTxt
  loc_B50A4B: FStAdFunc var_8C
  loc_B50A4E: FLdPr var_8C
  loc_B50A51:  = Me.Text
  loc_B50A56: ILdRf var_90
  loc_B50A59: FLdPr Me
  loc_B50A5C: MemStStrCopy
  loc_B50A60: FFree1Str var_90
  loc_B50A63: FFree1Ad var_8C
  loc_B50A66: FLdRfVar var_90
  loc_B50A69: FLdPr Me
  loc_B50A6C: VCallAd Control_ID_CucuPersTxt
  loc_B50A6F: FStAdFunc var_8C
  loc_B50A72: FLdPr var_8C
  loc_B50A75:  = Me.Text
  loc_B50A7A: FLdRfVar var_98
  loc_B50A7D: FLdPr Me
  loc_B50A80: VCallAd Control_ID_DetaPersTxt
  loc_B50A83: FStAdFunc var_94
  loc_B50A86: FLdPr var_94
  loc_B50A89:  = Me.Text
  loc_B50A8E: FLdRfVar var_86
  loc_B50A91: FLdPr Me
  loc_B50A94: VCallAd Control_ID_JuriPersChk
  loc_B50A97: FStAdFunc var_9C
  loc_B50A9A: FLdPr var_9C
  loc_B50A9D:  = Me.Value
  loc_B50AA2: FLdRfVar var_A4
  loc_B50AA5: FLdPr Me
  loc_B50AA8: VCallAd Control_ID_TelePersTxt
  loc_B50AAB: FStAdFunc var_A0
  loc_B50AAE: FLdPr var_A0
  loc_B50AB1:  = Me.Text
  loc_B50AB6: FLdRfVar var_AC
  loc_B50AB9: FLdPr Me
  loc_B50ABC: VCallAd Control_ID_CeluPersTxt
  loc_B50ABF: FStAdFunc var_A8
  loc_B50AC2: FLdPr var_A8
  loc_B50AC5:  = Me.Text
  loc_B50ACA: FLdRfVar var_B4
  loc_B50ACD: FLdPr Me
  loc_B50AD0: VCallAd Control_ID_FaxsPersTxt
  loc_B50AD3: FStAdFunc var_B0
  loc_B50AD6: FLdPr var_B0
  loc_B50AD9:  = Me.Text
  loc_B50ADE: FLdRfVar var_BC
  loc_B50AE1: FLdPr Me
  loc_B50AE4: VCallAd Control_ID_MailPersTxt
  loc_B50AE7: FStAdFunc var_B8
  loc_B50AEA: FLdPr var_B8
  loc_B50AED:  = Me.Text
  loc_B50AF2: FLdRfVar var_C4
  loc_B50AF5: FLdPr Me
  loc_B50AF8: VCallAd Control_ID_CodiTidoTxt
  loc_B50AFB: FStAdFunc var_C0
  loc_B50AFE: FLdPr var_C0
  loc_B50B01:  = Me.Text
  loc_B50B06: FLdRfVar var_CC
  loc_B50B09: FLdPr Me
  loc_B50B0C: VCallAd Control_ID_NudoPersTxt
  loc_B50B0F: FStAdFunc var_C8
  loc_B50B12: FLdPr var_C8
  loc_B50B15:  = Me.Text
  loc_B50B1A: FLdPr Me
  loc_B50B1D: VCallAd Control_ID_FenaPersMsk
  loc_B50B20: FStAdFunc var_D0
  loc_B50B23: FLdPr var_D0
  loc_B50B26: LateIdLdVar var_E0 DispID_15 0
  loc_B50B2D: PopAd
  loc_B50B2F: FLdRfVar var_E8
  loc_B50B32: FLdPr Me
  loc_B50B35: VCallAd Control_ID_CodiEsciTxt
  loc_B50B38: FStAdFunc var_E4
  loc_B50B3B: FLdPr var_E4
  loc_B50B3E:  = Me.Text
  loc_B50B43: FLdRfVar var_F0
  loc_B50B46: FLdPr Me
  loc_B50B49: VCallAd Control_ID_CodiPofiTxt
  loc_B50B4C: FStAdFunc var_EC
  loc_B50B4F: FLdPr var_EC
  loc_B50B52:  = Me.Text
  loc_B50B57: FLdRfVar var_F8
  loc_B50B5A: FLdPr Me
  loc_B50B5D: VCallAd Control_ID_CocrPersTxt
  loc_B50B60: FStAdFunc var_F4
  loc_B50B63: FLdPr var_F4
  loc_B50B66:  = Me.Text
  loc_B50B6B: FLdRfVar var_100
  loc_B50B6E: FLdPr Me
  loc_B50B71: VCallAd Control_ID_DecrPersTxt
  loc_B50B74: FStAdFunc var_FC
  loc_B50B77: FLdPr var_FC
  loc_B50B7A:  = Me.Text
  loc_B50B7F: FLdRfVar var_108
  loc_B50B82: FLdPr Me
  loc_B50B85: VCallAd Control_ID_NurePersTxt
  loc_B50B88: FStAdFunc var_104
  loc_B50B8B: FLdPr var_104
  loc_B50B8E:  = Me.Text
  loc_B50B93: FLdRfVar var_110
  loc_B50B96: FLdPr Me
  loc_B50B99: VCallAd Control_ID_CobrPersTxt
  loc_B50B9C: FStAdFunc var_10C
  loc_B50B9F: FLdPr var_10C
  loc_B50BA2:  = Me.Text
  loc_B50BA7: FLdRfVar var_144
  loc_B50BAA: FLdPr Me
  loc_B50BAD: VCallAd Control_ID_DebrPersTxt
  loc_B50BB0: FStAdFunc var_140
  loc_B50BB3: FLdPr var_140
  loc_B50BB6:  = Me.Text
  loc_B50BBB: FLdRfVar var_118
  loc_B50BBE: FLdPr Me
  loc_B50BC1: VCallAd Control_ID_MarePersTxt
  loc_B50BC4: FStAdFunc var_114
  loc_B50BC7: FLdPr var_114
  loc_B50BCA:  = Me.Text
  loc_B50BCF: FLdRfVar var_120
  loc_B50BD2: FLdPr Me
  loc_B50BD5: VCallAd Control_ID_CarePersTxt
  loc_B50BD8: FStAdFunc var_11C
  loc_B50BDB: FLdPr var_11C
  loc_B50BDE:  = Me.Text
  loc_B50BE3: FLdRfVar var_128
  loc_B50BE6: FLdPr Me
  loc_B50BE9: VCallAd Control_ID_UbrePersTxt
  loc_B50BEC: FStAdFunc var_124
  loc_B50BEF: FLdPr var_124
  loc_B50BF2:  = Me.Text
  loc_B50BF7: FLdRfVar var_130
  loc_B50BFA: FLdPr Me
  loc_B50BFD: VCallAd Control_ID_ColrPersTxt
  loc_B50C00: FStAdFunc var_12C
  loc_B50C03: FLdPr var_12C
  loc_B50C06:  = Me.Text
  loc_B50C0B: FLdRfVar var_138
  loc_B50C0E: FLdPr Me
  loc_B50C11: VCallAd Control_ID_DelrPersTxt
  loc_B50C14: FStAdFunc var_134
  loc_B50C17: FLdPr var_134
  loc_B50C1A:  = Me.Text
  loc_B50C1F: FLdRfVar var_14C
  loc_B50C22: FLdPr Me
  loc_B50C25: VCallAd Control_ID_CoprPersTxt
  loc_B50C28: FStAdFunc var_148
  loc_B50C2B: FLdPr var_148
  loc_B50C2E:  = Me.Text
  loc_B50C33: ILdRf var_14C
  loc_B50C36: ILdRf var_138
  loc_B50C39: ILdRf var_130
  loc_B50C3C: ILdRf var_128
  loc_B50C3F: ILdRf var_120
  loc_B50C42: ILdRf var_118
  loc_B50C45: ILdRf var_144
  loc_B50C48: ILdRf var_110
  loc_B50C4B: CI2Str
  loc_B50C4D: ILdRf var_108
  loc_B50C50: CI4Str
  loc_B50C51: ILdRf var_100
  loc_B50C54: ILdRf var_F8
  loc_B50C57: CI4Str
  loc_B50C58: ILdRf var_F0
  loc_B50C5B: CUI1Str
  loc_B50C5D: ILdRf var_E8
  loc_B50C60: CUI1Str
  loc_B50C62: FLdRfVar var_E0
  loc_B50C65: CStrVarTmp
  loc_B50C66: FStStrNoPop var_13C
  loc_B50C69: ILdRf var_CC
  loc_B50C6C: CI4Str
  loc_B50C6D: ILdRf var_C4
  loc_B50C70: CUI1Str
  loc_B50C72: ILdRf var_BC
  loc_B50C75: ILdRf var_B4
  loc_B50C78: ILdRf var_AC
  loc_B50C7B: ILdRf var_A4
  loc_B50C7E: FLdI2 var_86
  loc_B50C81: CUI1I2
  loc_B50C83: ILdRf var_98
  loc_B50C86: FLdPr Me
  loc_B50C89: MemLdUI1 global_68
  loc_B50C8D: ILdRf var_90
  loc_B50C90: FLdPr Me
  loc_B50C93: MemLdRfVar from_stack_1.global_64
  loc_B50C96: NewIfNullPr clspersonas
  loc_B50C99: Call clspersonas.CreaPersona(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B50C9E: FFreeStr var_90 = "": var_98 = "": var_A4 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = "": var_13C = "": var_E8 = "": var_F0 = "": var_F8 = "": var_100 = "": var_108 = "": var_110 = "": var_144 = "": var_118 = "": var_120 = "": var_128 = "": var_130 = "": var_138 = ""
  loc_B50CCD: FFreeAd var_8C = "": var_94 = "": var_9C = "": var_A0 = "": var_A8 = "": var_B0 = "": var_B8 = "": var_C0 = "": var_C8 = "": var_D0 = "": var_E4 = "": var_EC = "": var_F4 = "": var_FC = "": var_104 = "": var_10C = "": var_114 = "": var_11C = "": var_124 = "": var_12C = "": var_134 = "": var_140 = ""
  loc_B50CFE: FFree1Var var_E0 = ""
  loc_B50D01: LitI2_Byte &HFF
  loc_B50D03: FLdPr Me
  loc_B50D06: MemStI2 boAceptar
  loc_B50D09: ILdRf Me
  loc_B50D0C: FStAdNoPop
  loc_B50D10: ImpAdLdRf MemVar_D9C5D8
  loc_B50D13: NewIfNullPr Global
  loc_B50D16: Global.Unload from_stack_1
  loc_B50D1B: FFree1Ad var_8C
  loc_B50D1E: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9E4C10
  'Data Table: 523FB8
  loc_9E4BF0: LitI2_Byte 0
  loc_9E4BF2: FLdPr Me
  loc_9E4BF5: MemStI2 boAceptar
  loc_9E4BF8: ILdRf Me
  loc_9E4BFB: FStAdNoPop
  loc_9E4BFF: ImpAdLdRf MemVar_D9C5D8
  loc_9E4C02: NewIfNullPr Global
  loc_9E4C05: Global.Unload from_stack_1
  loc_9E4C0A: FFree1Ad var_88
  loc_9E4C0D: ExitProcHresult
End Sub

Private Sub CodiTidoCmd_Click() 'A9835C
  'Data Table: 523FB8
  loc_A982A8: LitStr "SELECT CodiTido, DetaTido FROM infogov.tipodocu ORDER BY DetaTido"
  loc_A982AB: ImpAdLdRf MemVar_D94200
  loc_A982AE: NewIfNullPr dlgBuscarTipoDocumento
  loc_A982B1: Call dlgBuscarTipoDocumento.sPasaSelectPut(from_stack_1v)
  loc_A982B6: LitVar_Missing var_A4
  loc_A982B9: PopAdLdVar
  loc_A982BA: LitVarI4
  loc_A982C2: PopAdLdVar
  loc_A982C3: ImpAdLdRf MemVar_D94200
  loc_A982C6: NewIfNullPr dlgBuscarTipoDocumento
  loc_A982C9: dlgBuscarTipoDocumento.Show from_stack_1, from_stack_2
  loc_A982CE: FLdRfVar var_A8
  loc_A982D1: ImpAdLdRf MemVar_D94200
  loc_A982D4: NewIfNullPr dlgBuscarTipoDocumento
  loc_A982D7: from_stack_1v = dlgBuscarTipoDocumento.sPasaCodigoGet()
  loc_A982DC: ILdRf var_A8
  loc_A982DF: LitStr vbNullString
  loc_A982E2: NeStr
  loc_A982E4: FFree1Str var_A8
  loc_A982E7: BranchF loc_A98348
  loc_A982EA: FLdRfVar var_A8
  loc_A982ED: ImpAdLdRf MemVar_D94200
  loc_A982F0: NewIfNullPr dlgBuscarTipoDocumento
  loc_A982F3: from_stack_1v = dlgBuscarTipoDocumento.sPasaCodigoGet()
  loc_A982F8: ILdRf var_A8
  loc_A982FB: FLdPr Me
  loc_A982FE: VCallAd Control_ID_
  loc_A98301: FStAdFunc var_AC
  loc_A98304: FLdPr var_AC
  loc_A98307: dlgBuscarTipoDocumento.TextBox.Text = from_stack_1
  loc_A9830C: FFree1Str var_A8
  loc_A9830F: FFree1Ad var_AC
  loc_A98312: LitStr vbNullString
  loc_A98315: ImpAdLdRf MemVar_D94200
  loc_A98318: NewIfNullPr dlgBuscarTipoDocumento
  loc_A9831B: Call dlgBuscarTipoDocumento.sPasaCodigoPut(from_stack_1v)
  loc_A98320: FLdRfVar var_A8
  loc_A98323: ImpAdLdRf MemVar_D94200
  loc_A98326: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98329: from_stack_1v = dlgBuscarTipoDocumento.sPasaDetalleGet()
  loc_A9832E: ILdRf var_A8
  loc_A98331: FLdPr Me
  loc_A98334: VCallAd Control_ID_
  loc_A98337: FStAdFunc var_AC
  loc_A9833A: FLdPr var_AC
  loc_A9833D: dlgBuscarTipoDocumento.Label.Caption = from_stack_1
  loc_A98342: FFree1Str var_A8
  loc_A98345: FFree1Ad var_AC
  loc_A98348: FLdPr Me
  loc_A9834B: VCallAd Control_ID_CodiTidoTxt
  loc_A9834E: CVarAd
  loc_A98352: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98357: FFree1Var var_BC = ""
  loc_A9835A: ExitProcHresult
End Sub

Private Sub FenaPersCmd_Click() 'A4ACD8
  'Data Table: 523FB8
  loc_A4AC84: LitVar_Missing var_A4
  loc_A4AC87: PopAdLdVar
  loc_A4AC88: LitVarI4
  loc_A4AC90: PopAdLdVar
  loc_A4AC91: ImpAdLdRf MemVar_D930A4
  loc_A4AC94: NewIfNullPr frmCalendario
  loc_A4AC97: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4AC9C: ImpAdLdI4 MemVar_D93028
  loc_A4AC9F: LitStr vbNullString
  loc_A4ACA2: NeStr
  loc_A4ACA4: BranchF loc_A4ACC2
  loc_A4ACA7: ImpAdLdRf MemVar_D93028
  loc_A4ACAA: CDargRef
  loc_A4ACAE: FLdPr Me
  loc_A4ACB1: VCallAd Control_ID_FenaPersMsk
  loc_A4ACB4: FStAdFunc var_A8
  loc_A4ACB7: FLdPr var_A8
  loc_A4ACBA: LateIdSt
  loc_A4ACBF: FFree1Ad var_A8
  loc_A4ACC2: FLdPr Me
  loc_A4ACC5: VCallAd Control_ID_FenaPersMsk
  loc_A4ACC8: CVarAd
  loc_A4ACCC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4ACD1: FFree1Var var_B8 = ""
  loc_A4ACD4: ExitProcHresult
End Sub

Private Sub CodiEsciCmd_Click() 'A9916C
  'Data Table: 523FB8
  loc_A990B8: LitStr "SELECT CodiEsci, DetaEsci FROM infogov.estacivi ORDER BY DetaEsci"
  loc_A990BB: ImpAdLdRf MemVar_D94448
  loc_A990BE: NewIfNullPr dlgBuscarEstadoCivil
  loc_A990C1: Call dlgBuscarEstadoCivil.sPasaSelectPut(from_stack_1v)
  loc_A990C6: LitVar_Missing var_A4
  loc_A990C9: PopAdLdVar
  loc_A990CA: LitVarI4
  loc_A990D2: PopAdLdVar
  loc_A990D3: ImpAdLdRf MemVar_D94448
  loc_A990D6: NewIfNullPr dlgBuscarEstadoCivil
  loc_A990D9: dlgBuscarEstadoCivil.Show from_stack_1, from_stack_2
  loc_A990DE: FLdRfVar var_A8
  loc_A990E1: ImpAdLdRf MemVar_D94448
  loc_A990E4: NewIfNullPr dlgBuscarEstadoCivil
  loc_A990E7: from_stack_1v = dlgBuscarEstadoCivil.sPasaCodigoGet()
  loc_A990EC: ILdRf var_A8
  loc_A990EF: LitStr vbNullString
  loc_A990F2: NeStr
  loc_A990F4: FFree1Str var_A8
  loc_A990F7: BranchF loc_A99158
  loc_A990FA: FLdRfVar var_A8
  loc_A990FD: ImpAdLdRf MemVar_D94448
  loc_A99100: NewIfNullPr dlgBuscarEstadoCivil
  loc_A99103: from_stack_1v = dlgBuscarEstadoCivil.sPasaCodigoGet()
  loc_A99108: ILdRf var_A8
  loc_A9910B: FLdPr Me
  loc_A9910E: VCallAd Control_ID_
  loc_A99111: FStAdFunc var_AC
  loc_A99114: FLdPr var_AC
  loc_A99117: dlgBuscarEstadoCivil.TextBox.Text = from_stack_1
  loc_A9911C: FFree1Str var_A8
  loc_A9911F: FFree1Ad var_AC
  loc_A99122: LitStr vbNullString
  loc_A99125: ImpAdLdRf MemVar_D94448
  loc_A99128: NewIfNullPr dlgBuscarEstadoCivil
  loc_A9912B: Call dlgBuscarEstadoCivil.sPasaCodigoPut(from_stack_1v)
  loc_A99130: FLdRfVar var_A8
  loc_A99133: ImpAdLdRf MemVar_D94448
  loc_A99136: NewIfNullPr dlgBuscarEstadoCivil
  loc_A99139: from_stack_1v = dlgBuscarEstadoCivil.sPasaDetalleGet()
  loc_A9913E: ILdRf var_A8
  loc_A99141: FLdPr Me
  loc_A99144: VCallAd Control_ID_
  loc_A99147: FStAdFunc var_AC
  loc_A9914A: FLdPr var_AC
  loc_A9914D: dlgBuscarEstadoCivil.Label.Caption = from_stack_1
  loc_A99152: FFree1Str var_A8
  loc_A99155: FFree1Ad var_AC
  loc_A99158: FLdPr Me
  loc_A9915B: VCallAd Control_ID_CodiEsciTxt
  loc_A9915E: CVarAd
  loc_A99162: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A99167: FFree1Var var_BC = ""
  loc_A9916A: ExitProcHresult
End Sub

Private Sub CodiPofiCmd_Click() 'AA9644
  'Data Table: 523FB8
  loc_AA957C: LitVar_Missing var_A4
  loc_AA957F: PopAdLdVar
  loc_AA9580: LitVarI4
  loc_AA9588: PopAdLdVar
  loc_AA9589: ImpAdLdRf MemVar_D9440C
  loc_AA958C: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA958F: dlgBuscarPosicionFiscal.Show from_stack_1, from_stack_2
  loc_AA9594: FLdRfVar var_AC
  loc_AA9597: FLdRfVar var_A8
  loc_AA959A: ImpAdLdRf MemVar_D9440C
  loc_AA959D: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA95A0: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA95A5: FLdPr var_A8
  loc_AA95A8: from_stack_1 = clsposifisc.RecordCount
  loc_AA95AD: ILdRf var_AC
  loc_AA95B0: LitI4 0
  loc_AA95B5: GtI4
  loc_AA95B6: FFree1Ad var_A8
  loc_AA95B9: BranchF loc_AA9630
  loc_AA95BC: FLdRfVar var_AE
  loc_AA95BF: FLdRfVar var_A8
  loc_AA95C2: ImpAdLdRf MemVar_D9440C
  loc_AA95C5: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA95C8: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA95CD: FLdPr var_A8
  loc_AA95D0: from_stack_1 = clsposifisc.CodiPofi
  loc_AA95D5: FLdUI1
  loc_AA95D9: CStrI2
  loc_AA95DB: FStStrNoPop var_B4
  loc_AA95DE: FLdPr Me
  loc_AA95E1: VCallAd Control_ID_CodiPofiTxt
  loc_AA95E4: FStAdFunc var_B8
  loc_AA95E7: FLdPr var_B8
  loc_AA95EA: Me.Text = from_stack_1
  loc_AA95EF: FFree1Str var_B4
  loc_AA95F2: FFreeAd var_A8 = ""
  loc_AA95F9: FLdRfVar var_B4
  loc_AA95FC: FLdRfVar var_A8
  loc_AA95FF: ImpAdLdRf MemVar_D9440C
  loc_AA9602: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA9605: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA960A: FLdPr var_A8
  loc_AA960D: from_stack_1 = clsposifisc.DetaPofi
  loc_AA9612: ILdRf var_B4
  loc_AA9615: FLdPr Me
  loc_AA9618: VCallAd Control_ID_DetaPofiLbl
  loc_AA961B: FStAdFunc var_B8
  loc_AA961E: FLdPr var_B8
  loc_AA9621: Me.Caption = from_stack_1
  loc_AA9626: FFree1Str var_B4
  loc_AA9629: FFreeAd var_A8 = ""
  loc_AA9630: FLdPr Me
  loc_AA9633: VCallAd Control_ID_CodiPofiTxt
  loc_AA9636: CVarAd
  loc_AA963A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA963F: FFree1Var var_C8 = ""
  loc_AA9642: ExitProcHresult
End Sub

Private Sub CocrPersCmd_Click() 'A9907C
  'Data Table: 523FB8
  loc_A98FC8: LitStr vbNullString
  loc_A98FCB: ImpAdLdRf MemVar_D949C0
  loc_A98FCE: NewIfNullPr dlgBuscarCalle
  loc_A98FD1: Call dlgBuscarCalle.sPasaSelectPut(from_stack_1v)
  loc_A98FD6: LitVar_Missing var_A4
  loc_A98FD9: PopAdLdVar
  loc_A98FDA: LitVarI4
  loc_A98FE2: PopAdLdVar
  loc_A98FE3: ImpAdLdRf MemVar_D949C0
  loc_A98FE6: NewIfNullPr dlgBuscarCalle
  loc_A98FE9: dlgBuscarCalle.Show from_stack_1, from_stack_2
  loc_A98FEE: FLdRfVar var_A8
  loc_A98FF1: ImpAdLdRf MemVar_D949C0
  loc_A98FF4: NewIfNullPr dlgBuscarCalle
  loc_A98FF7: from_stack_1v = dlgBuscarCalle.sPasaCodigoGet()
  loc_A98FFC: ILdRf var_A8
  loc_A98FFF: LitStr vbNullString
  loc_A99002: NeStr
  loc_A99004: FFree1Str var_A8
  loc_A99007: BranchF loc_A99068
  loc_A9900A: FLdRfVar var_A8
  loc_A9900D: ImpAdLdRf MemVar_D949C0
  loc_A99010: NewIfNullPr dlgBuscarCalle
  loc_A99013: from_stack_1v = dlgBuscarCalle.sPasaCodigoGet()
  loc_A99018: ILdRf var_A8
  loc_A9901B: FLdPr Me
  loc_A9901E: VCallAd Control_ID_
  loc_A99021: FStAdFunc var_AC
  loc_A99024: FLdPr var_AC
  loc_A99027: dlgBuscarCalle.TextBox.Text = from_stack_1
  loc_A9902C: FFree1Str var_A8
  loc_A9902F: FFree1Ad var_AC
  loc_A99032: LitStr vbNullString
  loc_A99035: ImpAdLdRf MemVar_D949C0
  loc_A99038: NewIfNullPr dlgBuscarCalle
  loc_A9903B: Call dlgBuscarCalle.sPasaCodigoPut(from_stack_1v)
  loc_A99040: FLdRfVar var_A8
  loc_A99043: ImpAdLdRf MemVar_D949C0
  loc_A99046: NewIfNullPr dlgBuscarCalle
  loc_A99049: from_stack_1v = dlgBuscarCalle.sPasaDetalleGet()
  loc_A9904E: ILdRf var_A8
  loc_A99051: FLdPr Me
  loc_A99054: VCallAd Control_ID_
  loc_A99057: FStAdFunc var_AC
  loc_A9905A: FLdPr var_AC
  loc_A9905D: dlgBuscarCalle.TextBox.Text = from_stack_1
  loc_A99062: FFree1Str var_A8
  loc_A99065: FFree1Ad var_AC
  loc_A99068: FLdPr Me
  loc_A9906B: VCallAd Control_ID_CocrPersTxt
  loc_A9906E: CVarAd
  loc_A99072: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A99077: FFree1Var var_BC = ""
  loc_A9907A: ExitProcHresult
End Sub

Private Sub CobrPersCmd_Click() 'AA81A4
  'Data Table: 523FB8
  loc_AA80DC: LitVar_Missing var_A4
  loc_AA80DF: PopAdLdVar
  loc_AA80E0: LitVarI4
  loc_AA80E8: PopAdLdVar
  loc_AA80E9: ImpAdLdRf MemVar_D9428C
  loc_AA80EC: NewIfNullPr dlgBuscarBarrio
  loc_AA80EF: dlgBuscarBarrio.Show from_stack_1, from_stack_2
  loc_AA80F4: FLdRfVar var_AC
  loc_AA80F7: FLdRfVar var_A8
  loc_AA80FA: ImpAdLdRf MemVar_D9428C
  loc_AA80FD: NewIfNullPr dlgBuscarBarrio
  loc_AA8100: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA8105: FLdPr var_A8
  loc_AA8108: from_stack_1 = clsBarrio.RecordCount
  loc_AA810D: ILdRf var_AC
  loc_AA8110: LitI4 0
  loc_AA8115: GtI4
  loc_AA8116: FFree1Ad var_A8
  loc_AA8119: BranchF loc_AA818F
  loc_AA811C: FLdRfVar var_AE
  loc_AA811F: FLdRfVar var_A8
  loc_AA8122: ImpAdLdRf MemVar_D9428C
  loc_AA8125: NewIfNullPr dlgBuscarBarrio
  loc_AA8128: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA812D: FLdPr var_A8
  loc_AA8130: from_stack_1 = clsBarrio.CodiBarr
  loc_AA8135: FLdI2 var_AE
  loc_AA8138: CStrUI1
  loc_AA813A: FStStrNoPop var_B4
  loc_AA813D: FLdPr Me
  loc_AA8140: VCallAd Control_ID_CobrPersTxt
  loc_AA8143: FStAdFunc var_B8
  loc_AA8146: FLdPr var_B8
  loc_AA8149: Me.Text = from_stack_1
  loc_AA814E: FFree1Str var_B4
  loc_AA8151: FFreeAd var_A8 = ""
  loc_AA8158: FLdRfVar var_B4
  loc_AA815B: FLdRfVar var_A8
  loc_AA815E: ImpAdLdRf MemVar_D9428C
  loc_AA8161: NewIfNullPr dlgBuscarBarrio
  loc_AA8164: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA8169: FLdPr var_A8
  loc_AA816C: from_stack_1 = clsBarrio.DetaBarr
  loc_AA8171: ILdRf var_B4
  loc_AA8174: FLdPr Me
  loc_AA8177: VCallAd Control_ID_DebrPersTxt
  loc_AA817A: FStAdFunc var_B8
  loc_AA817D: FLdPr var_B8
  loc_AA8180: Me.Text = from_stack_1
  loc_AA8185: FFree1Str var_B4
  loc_AA8188: FFreeAd var_A8 = ""
  loc_AA818F: FLdPr Me
  loc_AA8192: VCallAd Control_ID_CobrPersTxt
  loc_AA8195: CVarAd
  loc_AA8199: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA819E: FFree1Var var_C8 = ""
  loc_AA81A1: ExitProcHresult
End Sub

Private Sub ColrPersCmd_Click() 'AA85C4
  'Data Table: 523FB8
  loc_AA84FC: LitVar_Missing var_A4
  loc_AA84FF: PopAdLdVar
  loc_AA8500: LitVarI4
  loc_AA8508: PopAdLdVar
  loc_AA8509: ImpAdLdRf MemVar_D94228
  loc_AA850C: NewIfNullPr dlgBuscarLocalidad
  loc_AA850F: dlgBuscarLocalidad.Show from_stack_1, from_stack_2
  loc_AA8514: FLdRfVar var_AC
  loc_AA8517: FLdRfVar var_A8
  loc_AA851A: ImpAdLdRf MemVar_D94228
  loc_AA851D: NewIfNullPr dlgBuscarLocalidad
  loc_AA8520: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8525: FLdPr var_A8
  loc_AA8528: from_stack_1 = clslocalidad.RecordCount
  loc_AA852D: ILdRf var_AC
  loc_AA8530: LitI4 0
  loc_AA8535: GtI4
  loc_AA8536: FFree1Ad var_A8
  loc_AA8539: BranchF loc_AA85AF
  loc_AA853C: FLdRfVar var_AE
  loc_AA853F: FLdRfVar var_A8
  loc_AA8542: ImpAdLdRf MemVar_D94228
  loc_AA8545: NewIfNullPr dlgBuscarLocalidad
  loc_AA8548: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA854D: FLdPr var_A8
  loc_AA8550: from_stack_1 = clslocalidad.CodiLoca
  loc_AA8555: FLdI2 var_AE
  loc_AA8558: CStrUI1
  loc_AA855A: FStStrNoPop var_B4
  loc_AA855D: FLdPr Me
  loc_AA8560: VCallAd Control_ID_ColrPersTxt
  loc_AA8563: FStAdFunc var_B8
  loc_AA8566: FLdPr var_B8
  loc_AA8569: Me.Text = from_stack_1
  loc_AA856E: FFree1Str var_B4
  loc_AA8571: FFreeAd var_A8 = ""
  loc_AA8578: FLdRfVar var_B4
  loc_AA857B: FLdRfVar var_A8
  loc_AA857E: ImpAdLdRf MemVar_D94228
  loc_AA8581: NewIfNullPr dlgBuscarLocalidad
  loc_AA8584: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8589: FLdPr var_A8
  loc_AA858C: from_stack_1 = clslocalidad.DetaLoca
  loc_AA8591: ILdRf var_B4
  loc_AA8594: FLdPr Me
  loc_AA8597: VCallAd Control_ID_DelrPersTxt
  loc_AA859A: FStAdFunc var_B8
  loc_AA859D: FLdPr var_B8
  loc_AA85A0: Me.Text = from_stack_1
  loc_AA85A5: FFree1Str var_B4
  loc_AA85A8: FFreeAd var_A8 = ""
  loc_AA85AF: FLdPr Me
  loc_AA85B2: VCallAd Control_ID_ColrPersTxt
  loc_AA85B5: CVarAd
  loc_AA85B9: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA85BE: FFree1Var var_C8 = ""
  loc_AA85C1: ExitProcHresult
End Sub

Private Sub CarePersTxt_GotFocus() '9C1718
  'Data Table: 523FB8
  loc_9C1704: FLdPr Me
  loc_9C1707: VCallAd Control_ID_CarePersTxt
  loc_9C170A: CVarAd
  loc_9C170E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1713: FFree1Var var_94 = ""
  loc_9C1716: ExitProcHresult
End Sub

Private Sub CeluPersTxt_GotFocus() '9C1328
  'Data Table: 523FB8
  loc_9C1314: FLdPr Me
  loc_9C1317: VCallAd Control_ID_CeluPersTxt
  loc_9C131A: CVarAd
  loc_9C131E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1323: FFree1Var var_94 = ""
  loc_9C1326: ExitProcHresult
End Sub

Private Sub CobrPersTxt_GotFocus() '9C12E0
  'Data Table: 523FB8
  loc_9C12CC: FLdPr Me
  loc_9C12CF: VCallAd Control_ID_CobrPersTxt
  loc_9C12D2: CVarAd
  loc_9C12D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C12DB: FFree1Var var_94 = ""
  loc_9C12DE: ExitProcHresult
End Sub

Private Sub CobrPersTxt_KeyPress(KeyAscii As Integer) '9D25E8
  'Data Table: 523FB8
  loc_9D25D0: LitStr "0123456789"
  loc_9D25D3: FStStrCopy var_88
  loc_9D25D6: FLdRfVar var_88
  loc_9D25D9: ILdRf KeyAscii
  loc_9D25DC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D25E1: IStI2 KeyAscii
  loc_9D25E4: FFree1Str var_88
  loc_9D25E7: ExitProcHresult
End Sub

Private Sub CobrPersTxt_LostFocus() 'A8A004
  'Data Table: 523FB8
  loc_A89F74: FLdRfVar var_8C
  loc_A89F77: FLdPr Me
  loc_A89F7A: VCallAd Control_ID_CobrPersTxt
  loc_A89F7D: FStAdFunc var_88
  loc_A89F80: FLdPr var_88
  loc_A89F83:  = Me.Text
  loc_A89F88: ILdRf var_8C
  loc_A89F8B: LitStr "0"
  loc_A89F8E: NeStr
  loc_A89F90: FFree1Str var_8C
  loc_A89F93: FFree1Ad var_88
  loc_A89F96: BranchF loc_A89FCF
  loc_A89F99: LitI4 0
  loc_A89F9E: LitI4 0
  loc_A89FA3: FLdRfVar var_90
  loc_A89FA6: Redim
  loc_A89FB0: FLdPr Me
  loc_A89FB3: VCallAd Control_ID_DebrPersTxt
  loc_A89FB6: CVarAd
  loc_A89FBA: ParmAry1St
  loc_A89FC0: FLdRfVar var_90
  loc_A89FC3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A89FC8: FLdRfVar var_90
  loc_A89FCB: Erase
  loc_A89FCC: Branch loc_A8A002
  loc_A89FCF: LitI4 0
  loc_A89FD4: LitI4 0
  loc_A89FD9: FLdRfVar var_90
  loc_A89FDC: Redim
  loc_A89FE6: FLdPr Me
  loc_A89FE9: VCallAd Control_ID_DebrPersTxt
  loc_A89FEC: CVarAd
  loc_A89FF0: ParmAry1St
  loc_A89FF6: FLdRfVar var_90
  loc_A89FF9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A89FFE: FLdRfVar var_90
  loc_A8A001: Erase
  loc_A8A002: ExitProcHresult
End Sub

Private Sub CobrPersTxt_Validate(Cancel As Boolean) 'B01940
  'Data Table: 523FB8
  loc_B01758: FLdRfVar var_9A
  loc_B0175B: FLdPr Me
  loc_B0175E: VCallAd Control_ID_CobrPersTxt
  loc_B01761: FStAdFunc var_98
  loc_B01764: FLdPr var_98
  loc_B01767:  = Me.Enabled
  loc_B0176C: FLdI2 var_9A
  loc_B0176F: FLdRfVar var_A4
  loc_B01772: FLdPr Me
  loc_B01775: VCallAd Control_ID_CobrPersTxt
  loc_B01778: FStAdFunc var_A0
  loc_B0177B: FLdPr var_A0
  loc_B0177E:  = Me.Text
  loc_B01783: ILdRf var_A4
  loc_B01786: LitStr "0"
  loc_B01789: NeStr
  loc_B0178B: AndI4
  loc_B0178C: FFree1Str var_A4
  loc_B0178F: FFreeAd var_98 = ""
  loc_B01796: BranchF loc_B0193F
  loc_B01799: FLdRfVar var_A4
  loc_B0179C: FLdPr Me
  loc_B0179F: VCallAd Control_ID_CobrPersTxt
  loc_B017A2: FStAdFunc var_98
  loc_B017A5: FLdPr var_98
  loc_B017A8:  = Me.Text
  loc_B017AD: ILdRf var_A4
  loc_B017B0: ImpAdCallI2 Proc_18_21_A58FBC()
  loc_B017B5: FStStrNoPop var_A8
  loc_B017B8: FLdPr Me
  loc_B017BB: MemStStrCopy
  loc_B017BF: FFreeStr var_A4 = ""
  loc_B017C6: FFree1Ad var_98
  loc_B017C9: FLdPr Me
  loc_B017CC: MemLdStr global_72
  loc_B017CF: LitStr vbNullString
  loc_B017D2: NeStr
  loc_B017D4: BranchF loc_B01814
  loc_B017D7: FLdPr Me
  loc_B017DA: MemLdStr global_72
  loc_B017DD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B017E2: LitStr vbNullString
  loc_B017E5: FLdPr Me
  loc_B017E8: VCallAd Control_ID_DebrPersTxt
  loc_B017EB: FStAdFunc var_98
  loc_B017EE: FLdPr var_98
  loc_B017F1: Me.Text = from_stack_1
  loc_B017F6: FFree1Ad var_98
  loc_B017F9: FLdPr Me
  loc_B017FC: VCallAd Control_ID_CobrPersTxt
  loc_B017FF: CVarAd
  loc_B01803: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B01808: FFree1Var var_B8 = ""
  loc_B0180B: LitI2_Byte &HFF
  loc_B0180D: IStI2 Cancel
  loc_B01810: ExitProcHresult
  loc_B01811: Branch loc_B0193F
  loc_B01814: FLdRfVar var_A4
  loc_B01817: FLdPr Me
  loc_B0181A: VCallAd Control_ID_CobrPersTxt
  loc_B0181D: FStAdFunc var_98
  loc_B01820: FLdPr var_98
  loc_B01823:  = Me.Text
  loc_B01828: ILdRf var_A4
  loc_B0182B: CI4Str
  loc_B0182C: FLdRfVar var_B8
  loc_B0182F: ImpAdCallFPR4 Proc_270_66_B1D9B8(, )
  loc_B01834: FLdRfVar var_B8
  loc_B01837: FStVar var_94
  loc_B0183B: FFree1Str var_A4
  loc_B0183E: FFree1Ad var_98
  loc_B01841: LitVarI2 var_C8, 1
  loc_B01846: PopAdLdVar
  loc_B01847: FLdRfVar var_94
  loc_B0184A: VarIndexLdVar
  loc_B01850: CStrVarVal var_A4
  loc_B01854: FLdPr Me
  loc_B01857: VCallAd Control_ID_DebrPersTxt
  loc_B0185A: FStAdFunc var_98
  loc_B0185D: FLdPr var_98
  loc_B01860: Me.Text = from_stack_1
  loc_B01865: FFree1Str var_A4
  loc_B01868: FFree1Ad var_98
  loc_B0186B: FFree1Var var_B8 = ""
  loc_B0186E: LitVarI2 var_C8, 2
  loc_B01873: PopAdLdVar
  loc_B01874: FLdRfVar var_94
  loc_B01877: VarIndexLdVar
  loc_B0187D: CStrVarVal var_A4
  loc_B01881: FLdPr Me
  loc_B01884: VCallAd Control_ID_ColrPersTxt
  loc_B01887: FStAdFunc var_98
  loc_B0188A: FLdPr var_98
  loc_B0188D: Me.Text = from_stack_1
  loc_B01892: FFree1Str var_A4
  loc_B01895: FFree1Ad var_98
  loc_B01898: FFree1Var var_B8 = ""
  loc_B0189B: LitVarI2 var_C8, 3
  loc_B018A0: PopAdLdVar
  loc_B018A1: FLdRfVar var_94
  loc_B018A4: VarIndexLdVar
  loc_B018AA: CStrVarVal var_A4
  loc_B018AE: FLdPr Me
  loc_B018B1: VCallAd Control_ID_DelrPersTxt
  loc_B018B4: FStAdFunc var_98
  loc_B018B7: FLdPr var_98
  loc_B018BA: Me.Text = from_stack_1
  loc_B018BF: FFree1Str var_A4
  loc_B018C2: FFree1Ad var_98
  loc_B018C5: FFree1Var var_B8 = ""
  loc_B018C8: LitVarI2 var_C8, 4
  loc_B018CD: PopAdLdVar
  loc_B018CE: FLdRfVar var_94
  loc_B018D1: VarIndexLdVar
  loc_B018D7: CStrVarVal var_A4
  loc_B018DB: FLdPr Me
  loc_B018DE: VCallAd Control_ID_CoprPersTxt
  loc_B018E1: FStAdFunc var_98
  loc_B018E4: FLdPr var_98
  loc_B018E7: Me.Text = from_stack_1
  loc_B018EC: FFree1Str var_A4
  loc_B018EF: FFree1Ad var_98
  loc_B018F2: FFree1Var var_B8 = ""
  loc_B018F5: LitVarI2 var_C8, 1
  loc_B018FA: PopAdLdVar
  loc_B018FB: FLdRfVar var_94
  loc_B018FE: VarIndexLdVar
  loc_B01904: LitVarStr var_E8, "0"
  loc_B01909: HardType
  loc_B0190A: EqVarBool
  loc_B0190C: FFree1Var var_B8 = ""
  loc_B0190F: BranchF loc_B0193F
  loc_B01912: LitStr "El BARRIO no EXISTE, verifique..."
  loc_B01915: FLdPr Me
  loc_B01918: MemStStrCopy
  loc_B0191C: FLdPr Me
  loc_B0191F: MemLdStr global_72
  loc_B01922: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B01927: FLdPr Me
  loc_B0192A: VCallAd Control_ID_CobrPersTxt
  loc_B0192D: CVarAd
  loc_B01931: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B01936: FFree1Var var_B8 = ""
  loc_B01939: LitI2_Byte &HFF
  loc_B0193B: IStI2 Cancel
  loc_B0193E: ExitProcHresult
  loc_B0193F: ExitProcHresult
End Sub

Private Sub DebrPersTxt_GotFocus() '9C0C20
  'Data Table: 523FB8
  loc_9C0C0C: FLdPr Me
  loc_9C0C0F: VCallAd Control_ID_DebrPersTxt
  loc_9C0C12: CVarAd
  loc_9C0C16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0C1B: FFree1Var var_94 = ""
  loc_9C0C1E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9C0CF8
  'Data Table: 523FB8
  loc_9C0CE4: FLdPr Me
  loc_9C0CE7: VCallAd Control_ID_CucuPersTxt
  loc_9C0CEA: CVarAd
  loc_9C0CEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0CF3: FFree1Var var_94 = ""
  loc_9C0CF6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9C9AF8
  'Data Table: 523FB8
  loc_9C9AE0: LitStr "1234567890"
  loc_9C9AE3: FStStrCopy var_88
  loc_9C9AE6: FLdRfVar var_88
  loc_9C9AE9: ILdRf KeyAscii
  loc_9C9AEC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9AF1: IStI2 KeyAscii
  loc_9C9AF4: FFree1Str var_88
  loc_9C9AF7: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B4A7FC
  'Data Table: 523FB8
  loc_B4A478: FLdRfVar var_8A
  loc_B4A47B: FLdPr Me
  loc_B4A47E: VCallAd Control_ID_CucuPersTxt
  loc_B4A481: FStAdFunc var_88
  loc_B4A484: FLdPr var_88
  loc_B4A487:  = Me.Enabled
  loc_B4A48C: FLdI2 var_8A
  loc_B4A48F: FFree1Ad var_88
  loc_B4A492: BranchF loc_B4A7F8
  loc_B4A495: FLdPr Me
  loc_B4A498: MemLdI2 doValidaCuil
  loc_B4A49B: LitI2_Byte &HFF
  loc_B4A49D: EqI2
  loc_B4A49E: BranchF loc_B4A5F3
  loc_B4A4A1: FLdRfVar var_90
  loc_B4A4A4: FLdPr Me
  loc_B4A4A7: VCallAd Control_ID_CucuPersTxt
  loc_B4A4AA: FStAdFunc var_88
  loc_B4A4AD: FLdPr var_88
  loc_B4A4B0:  = Me.Text
  loc_B4A4B5: ILdRf var_90
  loc_B4A4B8: ImpAdCallI2 Proc_18_125_AFE004()
  loc_B4A4BD: FStStrNoPop var_94
  loc_B4A4C0: FLdPr Me
  loc_B4A4C3: MemStStrCopy
  loc_B4A4C7: FFreeStr var_90 = ""
  loc_B4A4CE: FFree1Ad var_88
  loc_B4A4D1: FLdPr Me
  loc_B4A4D4: MemLdStr global_72
  loc_B4A4D7: LitStr vbNullString
  loc_B4A4DA: NeStr
  loc_B4A4DC: BranchF loc_B4A504
  loc_B4A4DF: FLdPr Me
  loc_B4A4E2: MemLdStr global_72
  loc_B4A4E5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4A4EA: FLdPr Me
  loc_B4A4ED: VCallAd Control_ID_CucuPersTxt
  loc_B4A4F0: CVarAd
  loc_B4A4F4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4A4F9: FFree1Var var_A4 = ""
  loc_B4A4FC: LitI2_Byte &HFF
  loc_B4A4FE: IStI2 Cancel
  loc_B4A501: Branch loc_B4A5E5
  loc_B4A504: FLdRfVar var_94
  loc_B4A507: FLdRfVar var_90
  loc_B4A50A: FLdPr Me
  loc_B4A50D: VCallAd Control_ID_CucuPersTxt
  loc_B4A510: FStAdFunc var_88
  loc_B4A513: FLdPr var_88
  loc_B4A516:  = Me.Text
  loc_B4A51B: ILdRf var_90
  loc_B4A51E: FLdPr Me
  loc_B4A521: MemLdRfVar from_stack_1.global_64
  loc_B4A524: NewIfNullPr clspersonas
  loc_B4A527: from_stack_2v = clspersonas.ValidaClave(from_stack_1v)
  loc_B4A52C: ILdRf var_94
  loc_B4A52F: FLdPr Me
  loc_B4A532: MemStStrCopy
  loc_B4A536: FFreeStr var_90 = ""
  loc_B4A53D: FFree1Ad var_88
  loc_B4A540: FLdPr Me
  loc_B4A543: MemLdStr global_72
  loc_B4A546: LitStr vbNullString
  loc_B4A549: NeStr
  loc_B4A54B: BranchF loc_B4A570
  loc_B4A54E: FLdPr Me
  loc_B4A551: MemLdStr global_72
  loc_B4A554: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4A559: FLdPr Me
  loc_B4A55C: VCallAd Control_ID_CucuPersTxt
  loc_B4A55F: CVarAd
  loc_B4A563: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4A568: FFree1Var var_A4 = ""
  loc_B4A56B: LitI2_Byte &HFF
  loc_B4A56D: IStI2 Cancel
  loc_B4A570: LitI2_Byte 1
  loc_B4A572: CStrUI1
  loc_B4A574: FStStrNoPop var_90
  loc_B4A577: FLdPr Me
  loc_B4A57A: VCallAd Control_ID_CodiTidoTxt
  loc_B4A57D: FStAdFunc var_88
  loc_B4A580: FLdPr var_88
  loc_B4A583: Me.Text = from_stack_1
  loc_B4A588: FFree1Str var_90
  loc_B4A58B: FFree1Ad var_88
  loc_B4A58E: FLdRfVar var_90
  loc_B4A591: FLdPr Me
  loc_B4A594: VCallAd Control_ID_CucuPersTxt
  loc_B4A597: FStAdFunc var_88
  loc_B4A59A: FLdPr var_88
  loc_B4A59D:  = Me.Text
  loc_B4A5A2: LitVarI2 var_C4, 8
  loc_B4A5A7: LitI4 3
  loc_B4A5AC: FLdZeroAd var_90
  loc_B4A5AF: CVarStr var_A4
  loc_B4A5B2: FLdRfVar var_D4
  loc_B4A5B5: ImpAdCallFPR4  = Mid(, , )
  loc_B4A5BA: FLdRfVar var_D4
  loc_B4A5BD: CStrVarVal var_94
  loc_B4A5C1: FLdPr Me
  loc_B4A5C4: VCallAd Control_ID_NudoPersTxt
  loc_B4A5C7: FStAdFunc var_D8
  loc_B4A5CA: FLdPr var_D8
  loc_B4A5CD: Me.Text = from_stack_1
  loc_B4A5D2: FFree1Str var_94
  loc_B4A5D5: FFreeAd var_88 = ""
  loc_B4A5DC: FFreeVar var_A4 = "": var_C4 = ""
  loc_B4A5E5: LitI2_Byte 1
  loc_B4A5E7: CUI1I2
  loc_B4A5E9: FLdPr Me
  loc_B4A5EC: MemStUI1
  loc_B4A5F0: Branch loc_B4A7F8
  loc_B4A5F3: FLdRfVar var_90
  loc_B4A5F6: FLdPr Me
  loc_B4A5F9: VCallAd Control_ID_CucuPersTxt
  loc_B4A5FC: FStAdFunc var_88
  loc_B4A5FF: FLdPr var_88
  loc_B4A602:  = Me.Text
  loc_B4A607: ILdRf var_90
  loc_B4A60A: ImpAdCallI2 Proc_18_125_AFE004()
  loc_B4A60F: FStStrNoPop var_94
  loc_B4A612: FLdPr Me
  loc_B4A615: MemStStrCopy
  loc_B4A619: FFreeStr var_90 = ""
  loc_B4A620: FFree1Ad var_88
  loc_B4A623: LitVarI2 var_C4, 1
  loc_B4A628: LitVarI2 var_A4, 0
  loc_B4A62D: FLdPr Me
  loc_B4A630: MemLdStr global_72
  loc_B4A633: LitStr vbNullString
  loc_B4A636: NeStr
  loc_B4A638: CVarBoolI2 var_B4
  loc_B4A63C: FLdRfVar var_D4
  loc_B4A63F: ImpAdCallFPR4  = IIf(, , )
  loc_B4A644: FLdRfVar var_D4
  loc_B4A647: CUI1Var
  loc_B4A649: FLdPr Me
  loc_B4A64C: MemStUI1
  loc_B4A650: FFreeVar var_B4 = "": var_A4 = "": var_C4 = ""
  loc_B4A65B: FLdRfVar var_90
  loc_B4A65E: FLdPr Me
  loc_B4A661: VCallAd Control_ID_CucuPersTxt
  loc_B4A664: FStAdFunc var_88
  loc_B4A667: FLdPr var_88
  loc_B4A66A:  = Me.Text
  loc_B4A66F: ILdRf var_90
  loc_B4A672: FnLenStr
  loc_B4A673: LitI4 &HB
  loc_B4A678: NeI4
  loc_B4A679: FFree1Str var_90
  loc_B4A67C: FFree1Ad var_88
  loc_B4A67F: BranchF loc_B4A6AF
  loc_B4A682: LitStr "El C.U.I.T. o C.U.I.L debe tener 11 digitos. Por favor verifique..."
  loc_B4A685: FLdPr Me
  loc_B4A688: MemStStrCopy
  loc_B4A68C: FLdPr Me
  loc_B4A68F: MemLdStr global_72
  loc_B4A692: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4A697: FLdPr Me
  loc_B4A69A: VCallAd Control_ID_CucuPersTxt
  loc_B4A69D: CVarAd
  loc_B4A6A1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4A6A6: FFree1Var var_A4 = ""
  loc_B4A6A9: LitI2_Byte &HFF
  loc_B4A6AB: IStI2 Cancel
  loc_B4A6AE: ExitProcHresult
  loc_B4A6AF: FLdRfVar var_90
  loc_B4A6B2: FLdPr Me
  loc_B4A6B5: VCallAd Control_ID_CucuPersTxt
  loc_B4A6B8: FStAdFunc var_88
  loc_B4A6BB: FLdPr var_88
  loc_B4A6BE:  = Me.Text
  loc_B4A6C3: LitVarI2 var_C4, 2
  loc_B4A6C8: LitI4 1
  loc_B4A6CD: FLdZeroAd var_90
  loc_B4A6D0: CVarStr var_A4
  loc_B4A6D3: FLdRfVar var_D4
  loc_B4A6D6: ImpAdCallFPR4  = Mid(, , )
  loc_B4A6DB: FLdRfVar var_D4
  loc_B4A6DE: LitVarStr var_E8, "00"
  loc_B4A6E3: HardType
  loc_B4A6E4: EqVarBool
  loc_B4A6E6: FFree1Ad var_88
  loc_B4A6E9: FFreeVar var_A4 = "": var_C4 = ""
  loc_B4A6F2: BranchF loc_B4A722
  loc_B4A6F5: LitStr "Los 2 primeros digitos deben ser distintos de cero. Por favor verifique..."
  loc_B4A6F8: FLdPr Me
  loc_B4A6FB: MemStStrCopy
  loc_B4A6FF: FLdPr Me
  loc_B4A702: MemLdStr global_72
  loc_B4A705: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4A70A: FLdPr Me
  loc_B4A70D: VCallAd Control_ID_CucuPersTxt
  loc_B4A710: CVarAd
  loc_B4A714: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4A719: FFree1Var var_A4 = ""
  loc_B4A71C: LitI2_Byte &HFF
  loc_B4A71E: IStI2 Cancel
  loc_B4A721: ExitProcHresult
  loc_B4A722: FLdRfVar var_90
  loc_B4A725: FLdPr Me
  loc_B4A728: VCallAd Control_ID_CucuPersTxt
  loc_B4A72B: FStAdFunc var_88
  loc_B4A72E: FLdPr var_88
  loc_B4A731:  = Me.Text
  loc_B4A736: ILdRf var_90
  loc_B4A739: ImpAdCallI2 Proc_18_68_A53924()
  loc_B4A73E: FStStrNoPop var_94
  loc_B4A741: FLdPr Me
  loc_B4A744: MemStStrCopy
  loc_B4A748: FFreeStr var_90 = ""
  loc_B4A74F: FFree1Ad var_88
  loc_B4A752: FLdPr Me
  loc_B4A755: MemLdStr global_72
  loc_B4A758: LitStr vbNullString
  loc_B4A75B: NeStr
  loc_B4A75D: BranchF loc_B4A783
  loc_B4A760: FLdPr Me
  loc_B4A763: MemLdStr global_72
  loc_B4A766: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B4A76B: FLdPr Me
  loc_B4A76E: VCallAd Control_ID_CucuPersTxt
  loc_B4A771: CVarAd
  loc_B4A775: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4A77A: FFree1Var var_A4 = ""
  loc_B4A77D: LitI2_Byte &HFF
  loc_B4A77F: IStI2 Cancel
  loc_B4A782: ExitProcHresult
  loc_B4A783: LitI2_Byte 1
  loc_B4A785: CStrUI1
  loc_B4A787: FStStrNoPop var_90
  loc_B4A78A: FLdPr Me
  loc_B4A78D: VCallAd Control_ID_CodiTidoTxt
  loc_B4A790: FStAdFunc var_88
  loc_B4A793: FLdPr var_88
  loc_B4A796: Me.Text = from_stack_1
  loc_B4A79B: FFree1Str var_90
  loc_B4A79E: FFree1Ad var_88
  loc_B4A7A1: FLdRfVar var_90
  loc_B4A7A4: FLdPr Me
  loc_B4A7A7: VCallAd Control_ID_CucuPersTxt
  loc_B4A7AA: FStAdFunc var_88
  loc_B4A7AD: FLdPr var_88
  loc_B4A7B0:  = Me.Text
  loc_B4A7B5: LitVarI2 var_C4, 8
  loc_B4A7BA: LitI4 3
  loc_B4A7BF: FLdZeroAd var_90
  loc_B4A7C2: CVarStr var_A4
  loc_B4A7C5: FLdRfVar var_D4
  loc_B4A7C8: ImpAdCallFPR4  = Mid(, , )
  loc_B4A7CD: FLdRfVar var_D4
  loc_B4A7D0: CStrVarVal var_94
  loc_B4A7D4: FLdPr Me
  loc_B4A7D7: VCallAd Control_ID_NudoPersTxt
  loc_B4A7DA: FStAdFunc var_D8
  loc_B4A7DD: FLdPr var_D8
  loc_B4A7E0: Me.Text = from_stack_1
  loc_B4A7E5: FFree1Str var_94
  loc_B4A7E8: FFreeAd var_88 = ""
  loc_B4A7EF: FFreeVar var_A4 = "": var_C4 = ""
  loc_B4A7F8: ExitProcHresult
End Sub

Private Sub ColrPersTxt_GotFocus() '9C0DD0
  'Data Table: 523FB8
  loc_9C0DBC: FLdPr Me
  loc_9C0DBF: VCallAd Control_ID_ColrPersTxt
  loc_9C0DC2: CVarAd
  loc_9C0DC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0DCB: FFree1Var var_94 = ""
  loc_9C0DCE: ExitProcHresult
End Sub

Private Sub ColrPersTxt_KeyPress(KeyAscii As Integer) '9D19BC
  'Data Table: 523FB8
  loc_9D19A4: LitStr "0123456789"
  loc_9D19A7: FStStrCopy var_88
  loc_9D19AA: FLdRfVar var_88
  loc_9D19AD: ILdRf KeyAscii
  loc_9D19B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D19B5: IStI2 KeyAscii
  loc_9D19B8: FFree1Str var_88
  loc_9D19BB: ExitProcHresult
End Sub

Private Sub ColrPersTxt_LostFocus() 'A8A514
  'Data Table: 523FB8
  loc_A8A484: FLdRfVar var_8C
  loc_A8A487: FLdPr Me
  loc_A8A48A: VCallAd Control_ID_ColrPersTxt
  loc_A8A48D: FStAdFunc var_88
  loc_A8A490: FLdPr var_88
  loc_A8A493:  = Me.Text
  loc_A8A498: ILdRf var_8C
  loc_A8A49B: LitStr "0"
  loc_A8A49E: NeStr
  loc_A8A4A0: FFree1Str var_8C
  loc_A8A4A3: FFree1Ad var_88
  loc_A8A4A6: BranchF loc_A8A4DF
  loc_A8A4A9: LitI4 0
  loc_A8A4AE: LitI4 0
  loc_A8A4B3: FLdRfVar var_90
  loc_A8A4B6: Redim
  loc_A8A4C0: FLdPr Me
  loc_A8A4C3: VCallAd Control_ID_DelrPersTxt
  loc_A8A4C6: CVarAd
  loc_A8A4CA: ParmAry1St
  loc_A8A4D0: FLdRfVar var_90
  loc_A8A4D3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A8A4D8: FLdRfVar var_90
  loc_A8A4DB: Erase
  loc_A8A4DC: Branch loc_A8A512
  loc_A8A4DF: LitI4 0
  loc_A8A4E4: LitI4 0
  loc_A8A4E9: FLdRfVar var_90
  loc_A8A4EC: Redim
  loc_A8A4F6: FLdPr Me
  loc_A8A4F9: VCallAd Control_ID_DelrPersTxt
  loc_A8A4FC: CVarAd
  loc_A8A500: ParmAry1St
  loc_A8A506: FLdRfVar var_90
  loc_A8A509: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8A50E: FLdRfVar var_90
  loc_A8A511: Erase
  loc_A8A512: ExitProcHresult
End Sub

Private Sub ColrPersTxt_Validate(Cancel As Boolean) 'AEEE2C
  'Data Table: 523FB8
  loc_AEEC9C: FLdRfVar var_9A
  loc_AEEC9F: FLdPr Me
  loc_AEECA2: VCallAd Control_ID_ColrPersTxt
  loc_AEECA5: FStAdFunc var_98
  loc_AEECA8: FLdPr var_98
  loc_AEECAB:  = Me.Enabled
  loc_AEECB0: FLdI2 var_9A
  loc_AEECB3: FLdRfVar var_A4
  loc_AEECB6: FLdPr Me
  loc_AEECB9: VCallAd Control_ID_ColrPersTxt
  loc_AEECBC: FStAdFunc var_A0
  loc_AEECBF: FLdPr var_A0
  loc_AEECC2:  = Me.Text
  loc_AEECC7: ILdRf var_A4
  loc_AEECCA: LitStr "0"
  loc_AEECCD: NeStr
  loc_AEECCF: AndI4
  loc_AEECD0: FFree1Str var_A4
  loc_AEECD3: FFreeAd var_98 = ""
  loc_AEECDA: BranchF loc_AEEE2A
  loc_AEECDD: FLdRfVar var_A4
  loc_AEECE0: FLdPr Me
  loc_AEECE3: VCallAd Control_ID_ColrPersTxt
  loc_AEECE6: FStAdFunc var_98
  loc_AEECE9: FLdPr var_98
  loc_AEECEC:  = Me.Text
  loc_AEECF1: ILdRf var_A4
  loc_AEECF4: ImpAdCallI2 Proc_18_22_A588CC()
  loc_AEECF9: FStStrNoPop var_A8
  loc_AEECFC: FLdPr Me
  loc_AEECFF: MemStStrCopy
  loc_AEED03: FFreeStr var_A4 = ""
  loc_AEED0A: FFree1Ad var_98
  loc_AEED0D: FLdPr Me
  loc_AEED10: MemLdStr global_72
  loc_AEED13: LitStr vbNullString
  loc_AEED16: NeStr
  loc_AEED18: BranchF loc_AEED58
  loc_AEED1B: FLdPr Me
  loc_AEED1E: MemLdStr global_72
  loc_AEED21: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEED26: LitStr vbNullString
  loc_AEED29: FLdPr Me
  loc_AEED2C: VCallAd Control_ID_DelrPersTxt
  loc_AEED2F: FStAdFunc var_98
  loc_AEED32: FLdPr var_98
  loc_AEED35: Me.Text = from_stack_1
  loc_AEED3A: FFree1Ad var_98
  loc_AEED3D: FLdPr Me
  loc_AEED40: VCallAd Control_ID_ColrPersTxt
  loc_AEED43: CVarAd
  loc_AEED47: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEED4C: FFree1Var var_B8 = ""
  loc_AEED4F: LitI2_Byte &HFF
  loc_AEED51: IStI2 Cancel
  loc_AEED54: ExitProcHresult
  loc_AEED55: Branch loc_AEEE2A
  loc_AEED58: FLdRfVar var_A4
  loc_AEED5B: FLdPr Me
  loc_AEED5E: VCallAd Control_ID_ColrPersTxt
  loc_AEED61: FStAdFunc var_98
  loc_AEED64: FLdPr var_98
  loc_AEED67:  = Me.Text
  loc_AEED6C: ILdRf var_A4
  loc_AEED6F: CI2Str
  loc_AEED71: FLdRfVar var_B8
  loc_AEED74: ImpAdCallFPR4 Proc_270_67_AD14C8(, )
  loc_AEED79: FLdRfVar var_B8
  loc_AEED7C: FStVar var_94
  loc_AEED80: FFree1Str var_A4
  loc_AEED83: FFree1Ad var_98
  loc_AEED86: LitVarI2 var_C8, 1
  loc_AEED8B: PopAdLdVar
  loc_AEED8C: FLdRfVar var_94
  loc_AEED8F: VarIndexLdVar
  loc_AEED95: CStrVarVal var_A4
  loc_AEED99: FLdPr Me
  loc_AEED9C: VCallAd Control_ID_DelrPersTxt
  loc_AEED9F: FStAdFunc var_98
  loc_AEEDA2: FLdPr var_98
  loc_AEEDA5: Me.Text = from_stack_1
  loc_AEEDAA: FFree1Str var_A4
  loc_AEEDAD: FFree1Ad var_98
  loc_AEEDB0: FFree1Var var_B8 = ""
  loc_AEEDB3: LitVarI2 var_C8, 2
  loc_AEEDB8: PopAdLdVar
  loc_AEEDB9: FLdRfVar var_94
  loc_AEEDBC: VarIndexLdVar
  loc_AEEDC2: CStrVarVal var_A4
  loc_AEEDC6: FLdPr Me
  loc_AEEDC9: VCallAd Control_ID_CoprPersTxt
  loc_AEEDCC: FStAdFunc var_98
  loc_AEEDCF: FLdPr var_98
  loc_AEEDD2: Me.Text = from_stack_1
  loc_AEEDD7: FFree1Str var_A4
  loc_AEEDDA: FFree1Ad var_98
  loc_AEEDDD: FFree1Var var_B8 = ""
  loc_AEEDE0: LitVarI2 var_C8, 1
  loc_AEEDE5: PopAdLdVar
  loc_AEEDE6: FLdRfVar var_94
  loc_AEEDE9: VarIndexLdVar
  loc_AEEDEF: LitVarStr var_E8, "0"
  loc_AEEDF4: HardType
  loc_AEEDF5: EqVarBool
  loc_AEEDF7: FFree1Var var_B8 = ""
  loc_AEEDFA: BranchF loc_AEEE2A
  loc_AEEDFD: LitStr "La LOCALIDAD no EXISTE, verifique..."
  loc_AEEE00: FLdPr Me
  loc_AEEE03: MemStStrCopy
  loc_AEEE07: FLdPr Me
  loc_AEEE0A: MemLdStr global_72
  loc_AEEE0D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEEE12: FLdPr Me
  loc_AEEE15: VCallAd Control_ID_ColrPersTxt
  loc_AEEE18: CVarAd
  loc_AEEE1C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEEE21: FFree1Var var_B8 = ""
  loc_AEEE24: LitI2_Byte &HFF
  loc_AEEE26: IStI2 Cancel
  loc_AEEE29: ExitProcHresult
  loc_AEEE2A: ExitProcHresult
End Sub

Private Sub DelrPersTxt_GotFocus() '9C0B90
  'Data Table: 523FB8
  loc_9C0B7C: FLdPr Me
  loc_9C0B7F: VCallAd Control_ID_DelrPersTxt
  loc_9C0B82: CVarAd
  loc_9C0B86: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0B8B: FFree1Var var_94 = ""
  loc_9C0B8E: ExitProcHresult
End Sub

Private Sub CoprPersTxt_GotFocus() '9C0D40
  'Data Table: 523FB8
  loc_9C0D2C: FLdPr Me
  loc_9C0D2F: VCallAd Control_ID_CoprPersTxt
  loc_9C0D32: CVarAd
  loc_9C0D36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0D3B: FFree1Var var_94 = ""
  loc_9C0D3E: ExitProcHresult
End Sub

Private Sub CocrPersTxt_GotFocus() '9C1250
  'Data Table: 523FB8
  loc_9C123C: FLdPr Me
  loc_9C123F: VCallAd Control_ID_CocrPersTxt
  loc_9C1242: CVarAd
  loc_9C1246: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C124B: FFree1Var var_94 = ""
  loc_9C124E: ExitProcHresult
End Sub

Private Sub CocrPersTxt_KeyPress(KeyAscii As Integer) '9C9DF0
  'Data Table: 523FB8
  loc_9C9DD8: LitStr "0123456789"
  loc_9C9DDB: FStStrCopy var_88
  loc_9C9DDE: FLdRfVar var_88
  loc_9C9DE1: ILdRf KeyAscii
  loc_9C9DE4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9DE9: IStI2 KeyAscii
  loc_9C9DEC: FFree1Str var_88
  loc_9C9DEF: ExitProcHresult
End Sub

Private Sub CocrPersTxt_LostFocus() 'AA36C8
  'Data Table: 523FB8
  loc_AA3614: FLdRfVar var_8C
  loc_AA3617: FLdPr Me
  loc_AA361A: VCallAd Control_ID_CocrPersTxt
  loc_AA361D: FStAdFunc var_88
  loc_AA3620: FLdPr var_88
  loc_AA3623:  = Me.Text
  loc_AA3628: ILdRf var_8C
  loc_AA362B: LitStr "0"
  loc_AA362E: NeStr
  loc_AA3630: FFree1Str var_8C
  loc_AA3633: FFree1Ad var_88
  loc_AA3636: BranchF loc_AA366F
  loc_AA3639: LitI4 0
  loc_AA363E: LitI4 0
  loc_AA3643: FLdRfVar var_90
  loc_AA3646: Redim
  loc_AA3650: FLdPr Me
  loc_AA3653: VCallAd Control_ID_DecrPersTxt
  loc_AA3656: CVarAd
  loc_AA365A: ParmAry1St
  loc_AA3660: FLdRfVar var_90
  loc_AA3663: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AA3668: FLdRfVar var_90
  loc_AA366B: Erase
  loc_AA366C: Branch loc_AA36C7
  loc_AA366F: FLdRfVar var_8C
  loc_AA3672: FLdPr Me
  loc_AA3675: VCallAd Control_ID_CocrPersTxt
  loc_AA3678: FStAdFunc var_88
  loc_AA367B: FLdPr var_88
  loc_AA367E:  = Me.Text
  loc_AA3683: ILdRf var_8C
  loc_AA3686: LitStr "0"
  loc_AA3689: EqStr
  loc_AA368B: FFree1Str var_8C
  loc_AA368E: FFree1Ad var_88
  loc_AA3691: BranchF loc_AA36C7
  loc_AA3694: LitI4 0
  loc_AA3699: LitI4 0
  loc_AA369E: FLdRfVar var_90
  loc_AA36A1: Redim
  loc_AA36AB: FLdPr Me
  loc_AA36AE: VCallAd Control_ID_DecrPersTxt
  loc_AA36B1: CVarAd
  loc_AA36B5: ParmAry1St
  loc_AA36BB: FLdRfVar var_90
  loc_AA36BE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA36C3: FLdRfVar var_90
  loc_AA36C6: Erase
  loc_AA36C7: ExitProcHresult
End Sub

Private Sub CocrPersTxt_Validate(Cancel As Boolean) 'B1BAC4
  'Data Table: 523FB8
  loc_B1B840: FLdRfVar var_9A
  loc_B1B843: FLdPr Me
  loc_B1B846: VCallAd Control_ID_CocrPersTxt
  loc_B1B849: FStAdFunc var_98
  loc_B1B84C: FLdPr var_98
  loc_B1B84F:  = Me.Enabled
  loc_B1B854: FLdI2 var_9A
  loc_B1B857: FLdRfVar var_A4
  loc_B1B85A: FLdPr Me
  loc_B1B85D: VCallAd Control_ID_CocrPersTxt
  loc_B1B860: FStAdFunc var_A0
  loc_B1B863: FLdPr var_A0
  loc_B1B866:  = Me.Text
  loc_B1B86B: ILdRf var_A4
  loc_B1B86E: LitStr "0"
  loc_B1B871: NeStr
  loc_B1B873: AndI4
  loc_B1B874: FFree1Str var_A4
  loc_B1B877: FFreeAd var_98 = ""
  loc_B1B87E: BranchF loc_B1BAC1
  loc_B1B881: FLdRfVar var_A4
  loc_B1B884: FLdPr Me
  loc_B1B887: VCallAd Control_ID_CocrPersTxt
  loc_B1B88A: FStAdFunc var_98
  loc_B1B88D: FLdPr var_98
  loc_B1B890:  = Me.Text
  loc_B1B895: FLdZeroAd var_A4
  loc_B1B898: CVarStr var_B4
  loc_B1B89B: ImpAdCallI2 IsNumeric()
  loc_B1B8A0: NotI4
  loc_B1B8A1: FFree1Ad var_98
  loc_B1B8A4: FFree1Var var_B4 = ""
  loc_B1B8A7: BranchF loc_B1B8C1
  loc_B1B8AA: LitStr "0"
  loc_B1B8AD: FLdPr Me
  loc_B1B8B0: VCallAd Control_ID_CocrPersTxt
  loc_B1B8B3: FStAdFunc var_98
  loc_B1B8B6: FLdPr var_98
  loc_B1B8B9: Me.Text = from_stack_1
  loc_B1B8BE: FFree1Ad var_98
  loc_B1B8C1: FLdRfVar var_A4
  loc_B1B8C4: FLdPr Me
  loc_B1B8C7: VCallAd Control_ID_CocrPersTxt
  loc_B1B8CA: FStAdFunc var_98
  loc_B1B8CD: FLdPr var_98
  loc_B1B8D0:  = Me.Text
  loc_B1B8D5: ILdRf var_A4
  loc_B1B8D8: ImpAdCallI2 Proc_18_20_A590E4()
  loc_B1B8DD: FStStrNoPop var_B8
  loc_B1B8E0: FLdPr Me
  loc_B1B8E3: MemStStrCopy
  loc_B1B8E7: FFreeStr var_A4 = ""
  loc_B1B8EE: FFree1Ad var_98
  loc_B1B8F1: FLdPr Me
  loc_B1B8F4: MemLdStr global_72
  loc_B1B8F7: LitStr vbNullString
  loc_B1B8FA: NeStr
  loc_B1B8FC: BranchF loc_B1B93C
  loc_B1B8FF: FLdPr Me
  loc_B1B902: MemLdStr global_72
  loc_B1B905: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1B90A: LitStr vbNullString
  loc_B1B90D: FLdPr Me
  loc_B1B910: VCallAd Control_ID_DecrPersTxt
  loc_B1B913: FStAdFunc var_98
  loc_B1B916: FLdPr var_98
  loc_B1B919: Me.Text = from_stack_1
  loc_B1B91E: FFree1Ad var_98
  loc_B1B921: FLdPr Me
  loc_B1B924: VCallAd Control_ID_CocrPersTxt
  loc_B1B927: CVarAd
  loc_B1B92B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1B930: FFree1Var var_B4 = ""
  loc_B1B933: LitI2_Byte &HFF
  loc_B1B935: IStI2 Cancel
  loc_B1B938: ExitProcHresult
  loc_B1B939: Branch loc_B1BAC1
  loc_B1B93C: FLdRfVar var_A4
  loc_B1B93F: FLdPr Me
  loc_B1B942: VCallAd Control_ID_CocrPersTxt
  loc_B1B945: FStAdFunc var_98
  loc_B1B948: FLdPr var_98
  loc_B1B94B:  = Me.Text
  loc_B1B950: ILdRf var_A4
  loc_B1B953: CI4Str
  loc_B1B954: FLdRfVar var_B4
  loc_B1B957: ImpAdCallFPR4 Proc_270_65_B4B338(, )
  loc_B1B95C: FLdRfVar var_B4
  loc_B1B95F: FStVar var_94
  loc_B1B963: FFree1Str var_A4
  loc_B1B966: FFree1Ad var_98
  loc_B1B969: LitVarI2 var_C8, 1
  loc_B1B96E: PopAdLdVar
  loc_B1B96F: FLdRfVar var_94
  loc_B1B972: VarIndexLdVar
  loc_B1B978: CStrVarVal var_A4
  loc_B1B97C: FLdPr Me
  loc_B1B97F: VCallAd Control_ID_DecrPersTxt
  loc_B1B982: FStAdFunc var_98
  loc_B1B985: FLdPr var_98
  loc_B1B988: Me.Text = from_stack_1
  loc_B1B98D: FFree1Str var_A4
  loc_B1B990: FFree1Ad var_98
  loc_B1B993: FFree1Var var_B4 = ""
  loc_B1B996: LitVarI2 var_C8, 2
  loc_B1B99B: PopAdLdVar
  loc_B1B99C: FLdRfVar var_94
  loc_B1B99F: VarIndexLdVar
  loc_B1B9A5: CStrVarVal var_A4
  loc_B1B9A9: FLdPr Me
  loc_B1B9AC: VCallAd Control_ID_CobrPersTxt
  loc_B1B9AF: FStAdFunc var_98
  loc_B1B9B2: FLdPr var_98
  loc_B1B9B5: Me.Text = from_stack_1
  loc_B1B9BA: FFree1Str var_A4
  loc_B1B9BD: FFree1Ad var_98
  loc_B1B9C0: FFree1Var var_B4 = ""
  loc_B1B9C3: LitVarI2 var_C8, 3
  loc_B1B9C8: PopAdLdVar
  loc_B1B9C9: FLdRfVar var_94
  loc_B1B9CC: VarIndexLdVar
  loc_B1B9D2: CStrVarVal var_A4
  loc_B1B9D6: FLdPr Me
  loc_B1B9D9: VCallAd Control_ID_DebrPersTxt
  loc_B1B9DC: FStAdFunc var_98
  loc_B1B9DF: FLdPr var_98
  loc_B1B9E2: Me.Text = from_stack_1
  loc_B1B9E7: FFree1Str var_A4
  loc_B1B9EA: FFree1Ad var_98
  loc_B1B9ED: FFree1Var var_B4 = ""
  loc_B1B9F0: LitVarI2 var_C8, 4
  loc_B1B9F5: PopAdLdVar
  loc_B1B9F6: FLdRfVar var_94
  loc_B1B9F9: VarIndexLdVar
  loc_B1B9FF: CStrVarVal var_A4
  loc_B1BA03: FLdPr Me
  loc_B1BA06: VCallAd Control_ID_ColrPersTxt
  loc_B1BA09: FStAdFunc var_98
  loc_B1BA0C: FLdPr var_98
  loc_B1BA0F: Me.Text = from_stack_1
  loc_B1BA14: FFree1Str var_A4
  loc_B1BA17: FFree1Ad var_98
  loc_B1BA1A: FFree1Var var_B4 = ""
  loc_B1BA1D: LitVarI2 var_C8, 5
  loc_B1BA22: PopAdLdVar
  loc_B1BA23: FLdRfVar var_94
  loc_B1BA26: VarIndexLdVar
  loc_B1BA2C: CStrVarVal var_A4
  loc_B1BA30: FLdPr Me
  loc_B1BA33: VCallAd Control_ID_DelrPersTxt
  loc_B1BA36: FStAdFunc var_98
  loc_B1BA39: FLdPr var_98
  loc_B1BA3C: Me.Text = from_stack_1
  loc_B1BA41: FFree1Str var_A4
  loc_B1BA44: FFree1Ad var_98
  loc_B1BA47: FFree1Var var_B4 = ""
  loc_B1BA4A: LitVarI2 var_C8, 6
  loc_B1BA4F: PopAdLdVar
  loc_B1BA50: FLdRfVar var_94
  loc_B1BA53: VarIndexLdVar
  loc_B1BA59: CStrVarVal var_A4
  loc_B1BA5D: FLdPr Me
  loc_B1BA60: VCallAd Control_ID_CoprPersTxt
  loc_B1BA63: FStAdFunc var_98
  loc_B1BA66: FLdPr var_98
  loc_B1BA69: Me.Text = from_stack_1
  loc_B1BA6E: FFree1Str var_A4
  loc_B1BA71: FFree1Ad var_98
  loc_B1BA74: FFree1Var var_B4 = ""
  loc_B1BA77: LitVarI2 var_C8, 1
  loc_B1BA7C: PopAdLdVar
  loc_B1BA7D: FLdRfVar var_94
  loc_B1BA80: VarIndexLdVar
  loc_B1BA86: LitVarStr var_E8, "0"
  loc_B1BA8B: HardType
  loc_B1BA8C: EqVarBool
  loc_B1BA8E: FFree1Var var_B4 = ""
  loc_B1BA91: BranchF loc_B1BAC1
  loc_B1BA94: LitStr "La CALLE no EXISTE, verifique..."
  loc_B1BA97: FLdPr Me
  loc_B1BA9A: MemStStrCopy
  loc_B1BA9E: FLdPr Me
  loc_B1BAA1: MemLdStr global_72
  loc_B1BAA4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1BAA9: FLdPr Me
  loc_B1BAAC: VCallAd Control_ID_CocrPersTxt
  loc_B1BAAF: CVarAd
  loc_B1BAB3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1BAB8: FFree1Var var_B4 = ""
  loc_B1BABB: LitI2_Byte &HFF
  loc_B1BABD: IStI2 Cancel
  loc_B1BAC0: ExitProcHresult
  loc_B1BAC1: ExitProcHresult
End Sub

Private Sub DecrPersTxt_GotFocus() '9C0BD8
  'Data Table: 523FB8
  loc_9C0BC4: FLdPr Me
  loc_9C0BC7: VCallAd Control_ID_DecrPersTxt
  loc_9C0BCA: CVarAd
  loc_9C0BCE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0BD3: FFree1Var var_94 = ""
  loc_9C0BD6: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_GotFocus() '9C1178
  'Data Table: 523FB8
  loc_9C1164: FLdPr Me
  loc_9C1167: VCallAd Control_ID_CodiEsciTxt
  loc_9C116A: CVarAd
  loc_9C116E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1173: FFree1Var var_94 = ""
  loc_9C1176: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_KeyPress(KeyAscii As Integer) '9D3214
  'Data Table: 523FB8
  loc_9D31FC: LitStr "0123456789"
  loc_9D31FF: FStStrCopy var_88
  loc_9D3202: FLdRfVar var_88
  loc_9D3205: ILdRf KeyAscii
  loc_9D3208: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D320D: IStI2 KeyAscii
  loc_9D3210: FFree1Str var_88
  loc_9D3213: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_Validate(Cancel As Boolean) 'AA7C78
  'Data Table: 523FB8
  loc_AA7BB4: FLdRfVar var_8A
  loc_AA7BB7: FLdPr Me
  loc_AA7BBA: VCallAd Control_ID_CodiEsciTxt
  loc_AA7BBD: FStAdFunc var_88
  loc_AA7BC0: FLdPr var_88
  loc_AA7BC3:  = Me.Enabled
  loc_AA7BC8: FLdI2 var_8A
  loc_AA7BCB: FFree1Ad var_88
  loc_AA7BCE: BranchF loc_AA7C75
  loc_AA7BD1: FLdRfVar var_90
  loc_AA7BD4: FLdPr Me
  loc_AA7BD7: VCallAd Control_ID_CodiEsciTxt
  loc_AA7BDA: FStAdFunc var_88
  loc_AA7BDD: FLdPr var_88
  loc_AA7BE0:  = Me.Text
  loc_AA7BE5: ILdRf var_90
  loc_AA7BE8: ImpAdCallI2 Proc_18_44_A56C78()
  loc_AA7BED: FStStrNoPop var_94
  loc_AA7BF0: FLdPr Me
  loc_AA7BF3: MemStStrCopy
  loc_AA7BF7: FFreeStr var_90 = ""
  loc_AA7BFE: FFree1Ad var_88
  loc_AA7C01: FLdPr Me
  loc_AA7C04: MemLdStr global_72
  loc_AA7C07: LitStr vbNullString
  loc_AA7C0A: NeStr
  loc_AA7C0C: BranchF loc_AA7C35
  loc_AA7C0F: FLdPr Me
  loc_AA7C12: MemLdStr global_72
  loc_AA7C15: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA7C1A: FLdPr Me
  loc_AA7C1D: VCallAd Control_ID_CodiEsciTxt
  loc_AA7C20: CVarAd
  loc_AA7C24: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7C29: FFree1Var var_A4 = ""
  loc_AA7C2C: LitI2_Byte &HFF
  loc_AA7C2E: IStI2 Cancel
  loc_AA7C31: ExitProcHresult
  loc_AA7C32: Branch loc_AA7C75
  loc_AA7C35: FLdRfVar var_90
  loc_AA7C38: FLdPr Me
  loc_AA7C3B: VCallAd Control_ID_CodiEsciTxt
  loc_AA7C3E: FStAdFunc var_88
  loc_AA7C41: FLdPr var_88
  loc_AA7C44:  = Me.Text
  loc_AA7C49: ILdRf var_90
  loc_AA7C4C: CUI1Str
  loc_AA7C4E: ImpAdCallI2 Proc_270_45_A7B690()
  loc_AA7C53: FStStrNoPop var_94
  loc_AA7C56: FLdPr Me
  loc_AA7C59: VCallAd Control_ID_DetaEsciLbl
  loc_AA7C5C: FStAdFunc var_A8
  loc_AA7C5F: FLdPr var_A8
  loc_AA7C62: Me.Caption = from_stack_1
  loc_AA7C67: FFreeStr var_90 = ""
  loc_AA7C6E: FFreeAd var_88 = ""
  loc_AA7C75: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_GotFocus() '9C0FC8
  'Data Table: 523FB8
  loc_9C0FB4: FLdPr Me
  loc_9C0FB7: VCallAd Control_ID_CodiPofiTxt
  loc_9C0FBA: CVarAd
  loc_9C0FBE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0FC3: FFree1Var var_94 = ""
  loc_9C0FC6: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_KeyPress(KeyAscii As Integer) '9C9C74
  'Data Table: 523FB8
  loc_9C9C5C: LitStr "0123456789"
  loc_9C9C5F: FStStrCopy var_88
  loc_9C9C62: FLdRfVar var_88
  loc_9C9C65: ILdRf KeyAscii
  loc_9C9C68: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9C6D: IStI2 KeyAscii
  loc_9C9C70: FFree1Str var_88
  loc_9C9C73: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_Validate(Cancel As Boolean) 'AA88D8
  'Data Table: 523FB8
  loc_AA8814: FLdRfVar var_8A
  loc_AA8817: FLdPr Me
  loc_AA881A: VCallAd Control_ID_CodiPofiTxt
  loc_AA881D: FStAdFunc var_88
  loc_AA8820: FLdPr var_88
  loc_AA8823:  = Me.Enabled
  loc_AA8828: FLdI2 var_8A
  loc_AA882B: FFree1Ad var_88
  loc_AA882E: BranchF loc_AA88D5
  loc_AA8831: FLdRfVar var_90
  loc_AA8834: FLdPr Me
  loc_AA8837: VCallAd Control_ID_CodiPofiTxt
  loc_AA883A: FStAdFunc var_88
  loc_AA883D: FLdPr var_88
  loc_AA8840:  = Me.Text
  loc_AA8845: ILdRf var_90
  loc_AA8848: ImpAdCallI2 Proc_18_62_A592A0()
  loc_AA884D: FStStrNoPop var_94
  loc_AA8850: FLdPr Me
  loc_AA8853: MemStStrCopy
  loc_AA8857: FFreeStr var_90 = ""
  loc_AA885E: FFree1Ad var_88
  loc_AA8861: FLdPr Me
  loc_AA8864: MemLdStr global_72
  loc_AA8867: LitStr vbNullString
  loc_AA886A: NeStr
  loc_AA886C: BranchF loc_AA8895
  loc_AA886F: FLdPr Me
  loc_AA8872: MemLdStr global_72
  loc_AA8875: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA887A: FLdPr Me
  loc_AA887D: VCallAd Control_ID_CodiPofiTxt
  loc_AA8880: CVarAd
  loc_AA8884: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA8889: FFree1Var var_A4 = ""
  loc_AA888C: LitI2_Byte &HFF
  loc_AA888E: IStI2 Cancel
  loc_AA8891: ExitProcHresult
  loc_AA8892: Branch loc_AA88D5
  loc_AA8895: FLdRfVar var_90
  loc_AA8898: FLdPr Me
  loc_AA889B: VCallAd Control_ID_CodiPofiTxt
  loc_AA889E: FStAdFunc var_88
  loc_AA88A1: FLdPr var_88
  loc_AA88A4:  = Me.Text
  loc_AA88A9: ILdRf var_90
  loc_AA88AC: CI2Str
  loc_AA88AE: ImpAdCallI2 Proc_270_74_A7B188()
  loc_AA88B3: FStStrNoPop var_94
  loc_AA88B6: FLdPr Me
  loc_AA88B9: VCallAd Control_ID_DetaPofiLbl
  loc_AA88BC: FStAdFunc var_A8
  loc_AA88BF: FLdPr var_A8
  loc_AA88C2: Me.Caption = from_stack_1
  loc_AA88C7: FFreeStr var_90 = ""
  loc_AA88CE: FFreeAd var_88 = ""
  loc_AA88D5: ExitProcHresult
End Sub

Private Sub CodiTidoTxt_GotFocus() '9C0EA8
  'Data Table: 523FB8
  loc_9C0E94: FLdPr Me
  loc_9C0E97: VCallAd Control_ID_CodiTidoTxt
  loc_9C0E9A: CVarAd
  loc_9C0E9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0EA3: FFree1Var var_94 = ""
  loc_9C0EA6: ExitProcHresult
End Sub

Private Sub CodiTidoTxt_KeyPress(KeyAscii As Integer) '9C9BDC
  'Data Table: 523FB8
  loc_9C9BC4: LitStr "0123456789"
  loc_9C9BC7: FStStrCopy var_88
  loc_9C9BCA: FLdRfVar var_88
  loc_9C9BCD: ILdRf KeyAscii
  loc_9C9BD0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C9BD5: IStI2 KeyAscii
  loc_9C9BD8: FFree1Str var_88
  loc_9C9BDB: ExitProcHresult
End Sub

Private Sub CodiTidoTxt_Validate(Cancel As Boolean) 'AD21E0
  'Data Table: 523FB8
  loc_AD20B4: FLdRfVar var_8A
  loc_AD20B7: FLdPr Me
  loc_AD20BA: VCallAd Control_ID_CodiTidoTxt
  loc_AD20BD: FStAdFunc var_88
  loc_AD20C0: FLdPr var_88
  loc_AD20C3:  = Me.Enabled
  loc_AD20C8: FLdI2 var_8A
  loc_AD20CB: FFree1Ad var_88
  loc_AD20CE: BranchF loc_AD21DF
  loc_AD20D1: FLdRfVar var_A0
  loc_AD20D4: FLdRfVar var_90
  loc_AD20D7: FLdPr Me
  loc_AD20DA: VCallAd Control_ID_CodiTidoTxt
  loc_AD20DD: FStAdFunc var_88
  loc_AD20E0: FLdPr var_88
  loc_AD20E3:  = Me.Text
  loc_AD20E8: ILdRf var_90
  loc_AD20EB: FLdPr Me
  loc_AD20EE: MemLdRfVar from_stack_1.global_64
  loc_AD20F1: NewIfNullPr clspersonas
  loc_AD20F4: from_stack_2v = clspersonas.CodiTidoValidate(from_stack_1v)
  loc_AD20F9: FLdRfVar var_A0
  loc_AD20FC: CStrVarTmp
  loc_AD20FD: FStStrNoPop var_A4
  loc_AD2100: FLdPr Me
  loc_AD2103: MemStStrCopy
  loc_AD2107: FFreeStr var_90 = ""
  loc_AD210E: FFree1Ad var_88
  loc_AD2111: FFree1Var var_A0 = ""
  loc_AD2114: FLdPr Me
  loc_AD2117: MemLdStr global_72
  loc_AD211A: LitStr vbNullString
  loc_AD211D: NeStr
  loc_AD211F: BranchF loc_AD2148
  loc_AD2122: FLdPr Me
  loc_AD2125: MemLdStr global_72
  loc_AD2128: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD212D: FLdPr Me
  loc_AD2130: VCallAd Control_ID_CodiTidoTxt
  loc_AD2133: CVarAd
  loc_AD2137: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD213C: FFree1Var var_A0 = ""
  loc_AD213F: LitI2_Byte &HFF
  loc_AD2141: IStI2 Cancel
  loc_AD2144: ExitProcHresult
  loc_AD2145: Branch loc_AD21DF
  loc_AD2148: FLdRfVar var_A0
  loc_AD214B: FLdRfVar var_90
  loc_AD214E: FLdPr Me
  loc_AD2151: VCallAd Control_ID_CodiTidoTxt
  loc_AD2154: FStAdFunc var_88
  loc_AD2157: FLdPr var_88
  loc_AD215A:  = Me.Text
  loc_AD215F: ILdRf var_90
  loc_AD2162: CUI1Str
  loc_AD2164: FLdPr Me
  loc_AD2167: MemLdRfVar from_stack_1.global_64
  loc_AD216A: NewIfNullPr clspersonas
  loc_AD216D: from_stack_2v = clspersonas.BuscaDetalleTipoDocumento(from_stack_1v)
  loc_AD2172: FLdRfVar var_A0
  loc_AD2175: CStrVarVal var_A4
  loc_AD2179: FLdPr Me
  loc_AD217C: VCallAd Control_ID_DetaTidoLbl
  loc_AD217F: FStAdFunc var_A8
  loc_AD2182: FLdPr var_A8
  loc_AD2185: Me.Caption = from_stack_1
  loc_AD218A: FFreeStr var_90 = ""
  loc_AD2191: FFreeAd var_88 = ""
  loc_AD2198: FFree1Var var_A0 = ""
  loc_AD219B: FLdPr Me
  loc_AD219E: MemLdStr global_72
  loc_AD21A1: LitStr vbNullString
  loc_AD21A4: NeStr
  loc_AD21A6: BranchF loc_AD21DF
  loc_AD21A9: FLdPr Me
  loc_AD21AC: MemLdStr global_72
  loc_AD21AF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD21B4: FLdRfVar var_90
  loc_AD21B7: FLdPr Me
  loc_AD21BA: VCallAd Control_ID_CodiTidoTxt
  loc_AD21BD: FStAdFunc var_88
  loc_AD21C0: FLdPr var_88
  loc_AD21C3:  = Me.Text
  loc_AD21C8: FLdZeroAd var_90
  loc_AD21CB: CVarStr var_A0
  loc_AD21CE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD21D3: FFree1Ad var_88
  loc_AD21D6: FFree1Var var_A0 = ""
  loc_AD21D9: LitI2_Byte &HFF
  loc_AD21DB: IStI2 Cancel
  loc_AD21DE: ExitProcHresult
  loc_AD21DF: ExitProcHresult
End Sub

Private Sub GenerarCmd_Click() '9D2AF8
  'Data Table: 523FB8
  loc_9D2ADC: LitVar_Missing var_A4
  loc_9D2ADF: PopAdLdVar
  loc_9D2AE0: LitVarI4
  loc_9D2AE8: PopAdLdVar
  loc_9D2AE9: ImpAdLdRf MemVar_D94B7C
  loc_9D2AEC: NewIfNullPr dlgSugerirCuil
  loc_9D2AEF: dlgSugerirCuil.Show from_stack_1, from_stack_2
  loc_9D2AF4: ExitProcHresult
End Sub

Private Sub NudoPersTxt_GotFocus() '9C0950
  'Data Table: 523FB8
  loc_9C093C: FLdPr Me
  loc_9C093F: VCallAd Control_ID_NudoPersTxt
  loc_9C0942: CVarAd
  loc_9C0946: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C094B: FFree1Var var_94 = ""
  loc_9C094E: ExitProcHresult
End Sub

Private Sub NudoPersTxt_KeyPress(KeyAscii As Integer) '9D16C4
  'Data Table: 523FB8
  loc_9D16AC: LitStr "0123456789"
  loc_9D16AF: FStStrCopy var_88
  loc_9D16B2: FLdRfVar var_88
  loc_9D16B5: ILdRf KeyAscii
  loc_9D16B8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D16BD: IStI2 KeyAscii
  loc_9D16C0: FFree1Str var_88
  loc_9D16C3: ExitProcHresult
End Sub

Private Sub NudoPersTxt_Validate(Cancel As Boolean) 'A72594
  'Data Table: 523FB8
  loc_A72528: FLdRfVar var_8C
  loc_A7252B: FLdPr Me
  loc_A7252E: VCallAd Control_ID_NudoPersTxt
  loc_A72531: FStAdFunc var_88
  loc_A72534: FLdPr var_88
  loc_A72537:  = Me.Text
  loc_A7253C: LitI2_Byte 0
  loc_A7253E: LitI2_Byte 0
  loc_A72540: ILdRf var_8C
  loc_A72543: LitStr "Numero de Documento"
  loc_A72546: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7254B: FStStrNoPop var_90
  loc_A7254E: FLdPr Me
  loc_A72551: MemStStrCopy
  loc_A72555: FFreeStr var_8C = ""
  loc_A7255C: FFree1Ad var_88
  loc_A7255F: FLdPr Me
  loc_A72562: MemLdStr global_72
  loc_A72565: LitStr vbNullString
  loc_A72568: NeStr
  loc_A7256A: BranchF loc_A72590
  loc_A7256D: FLdPr Me
  loc_A72570: MemLdStr global_72
  loc_A72573: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A72578: FLdPr Me
  loc_A7257B: VCallAd Control_ID_NudoPersTxt
  loc_A7257E: CVarAd
  loc_A72582: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A72587: FFree1Var var_A0 = ""
  loc_A7258A: LitI2_Byte &HFF
  loc_A7258C: IStI2 Cancel
  loc_A7258F: ExitProcHresult
  loc_A72590: ExitProcHresult
End Sub

Private Sub DetaPersTxt_GotFocus() '9C0B48
  'Data Table: 523FB8
  loc_9C0B34: FLdPr Me
  loc_9C0B37: VCallAd Control_ID_DetaPersTxt
  loc_9C0B3A: CVarAd
  loc_9C0B3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0B43: FFree1Var var_94 = ""
  loc_9C0B46: ExitProcHresult
End Sub

Private Sub DetaPersTxt_Validate(Cancel As Boolean) 'A7F060
  'Data Table: 523FB8
  loc_A7EFDC: FLdRfVar var_8A
  loc_A7EFDF: FLdPr Me
  loc_A7EFE2: VCallAd Control_ID_DetaPersTxt
  loc_A7EFE5: FStAdFunc var_88
  loc_A7EFE8: FLdPr var_88
  loc_A7EFEB:  = Me.Enabled
  loc_A7EFF0: FLdI2 var_8A
  loc_A7EFF3: FFree1Ad var_88
  loc_A7EFF6: BranchF loc_A7F05C
  loc_A7EFF9: FLdRfVar var_90
  loc_A7EFFC: FLdPr Me
  loc_A7EFFF: VCallAd Control_ID_DetaPersTxt
  loc_A7F002: FStAdFunc var_88
  loc_A7F005: FLdPr var_88
  loc_A7F008:  = Me.Text
  loc_A7F00D: ILdRf var_90
  loc_A7F010: LitStr "Apeliido y Nombre"
  loc_A7F013: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7F018: FStStrNoPop var_94
  loc_A7F01B: FLdPr Me
  loc_A7F01E: MemStStrCopy
  loc_A7F022: FFreeStr var_90 = ""
  loc_A7F029: FFree1Ad var_88
  loc_A7F02C: FLdPr Me
  loc_A7F02F: MemLdStr global_72
  loc_A7F032: LitStr vbNullString
  loc_A7F035: NeStr
  loc_A7F037: BranchF loc_A7F05C
  loc_A7F03A: FLdPr Me
  loc_A7F03D: MemLdStr global_72
  loc_A7F040: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7F045: FLdPr Me
  loc_A7F048: VCallAd Control_ID_DetaPersTxt
  loc_A7F04B: CVarAd
  loc_A7F04F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7F054: FFree1Var var_A4 = ""
  loc_A7F057: LitI2_Byte &HFF
  loc_A7F059: IStI2 Cancel
  loc_A7F05C: ExitProcHresult
End Sub

Private Sub FaxsPersTxt_GotFocus() '9C0AB8
  'Data Table: 523FB8
  loc_9C0AA4: FLdPr Me
  loc_9C0AA7: VCallAd Control_ID_FaxsPersTxt
  loc_9C0AAA: CVarAd
  loc_9C0AAE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0AB3: FFree1Var var_94 = ""
  loc_9C0AB6: ExitProcHresult
End Sub

Private Sub FenaPersMsk_UnknownEvent_0 '9C0A70
  'Data Table: 523FB8
  loc_9C0A5C: FLdPr Me
  loc_9C0A5F: VCallAd Control_ID_FenaPersMsk
  loc_9C0A62: CVarAd
  loc_9C0A66: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0A6B: FFree1Var var_94 = ""
  loc_9C0A6E: ExitProcHresult
End Sub

Private Function FenaPersMsk_UnknownEvent_8(arg_C) 'AD0274
  'Data Table: 523FB8
  loc_AD0154: FLdPr Me
  loc_AD0157: VCallAd Control_ID_FenaPersMsk
  loc_AD015A: FStAdFunc var_88
  loc_AD015D: FLdPr var_88
  loc_AD0160: LateIdLdVar var_98 DispID_13 -32767
  loc_AD0167: CBoolVar
  loc_AD0169: LitI2_Byte &HFF
  loc_AD016B: EqI2
  loc_AD016C: FLdPr Me
  loc_AD016F: VCallAd Control_ID_FenaPersMsk
  loc_AD0172: FStAdFunc var_9C
  loc_AD0175: FLdPr var_9C
  loc_AD0178: LateIdLdVar var_AC DispID_22 0
  loc_AD017F: CStrVarTmp
  loc_AD0180: CVarStr var_BC
  loc_AD0183: ImpAdCallI2 IsDate()
  loc_AD0188: AndI4
  loc_AD0189: FFreeAd var_88 = ""
  loc_AD0190: FFreeVar var_98 = "": var_AC = ""
  loc_AD0199: BranchF loc_AD0271
  loc_AD019C: LitVarStr var_CC, vbNullString
  loc_AD01A1: PopAdLdVar
  loc_AD01A2: FLdPr Me
  loc_AD01A5: VCallAd Control_ID_FenaPersMsk
  loc_AD01A8: FStAdFunc var_88
  loc_AD01AB: FLdPr var_88
  loc_AD01AE: LateIdSt
  loc_AD01B3: FFree1Ad var_88
  loc_AD01B6: FLdPr Me
  loc_AD01B9: VCallAd Control_ID_FenaPersMsk
  loc_AD01BC: FStAdFunc var_88
  loc_AD01BF: FLdPr var_88
  loc_AD01C2: LateIdLdVar var_98 DispID_22 0
  loc_AD01C9: CStrVarTmp
  loc_AD01CA: FStStrNoPop var_E0
  loc_AD01CD: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_AD01D2: FStStrNoPop var_E4
  loc_AD01D5: FLdPr Me
  loc_AD01D8: MemStStrCopy
  loc_AD01DC: FFreeStr var_E0 = ""
  loc_AD01E3: FFree1Ad var_88
  loc_AD01E6: FFree1Var var_98 = ""
  loc_AD01E9: LitVarStr var_CC, "##/##/####"
  loc_AD01EE: PopAdLdVar
  loc_AD01EF: FLdPr Me
  loc_AD01F2: VCallAd Control_ID_FenaPersMsk
  loc_AD01F5: FStAdFunc var_88
  loc_AD01F8: FLdPr var_88
  loc_AD01FB: LateIdSt
  loc_AD0200: FFree1Ad var_88
  loc_AD0203: LitVarI2 var_CC, 10
  loc_AD0208: PopAdLdVar
  loc_AD0209: FLdPr Me
  loc_AD020C: VCallAd Control_ID_FenaPersMsk
  loc_AD020F: FStAdFunc var_88
  loc_AD0212: FLdPr var_88
  loc_AD0215: LateIdSt
  loc_AD021A: FFree1Ad var_88
  loc_AD021D: FLdPr Me
  loc_AD0220: MemLdStr global_72
  loc_AD0223: LitStr vbNullString
  loc_AD0226: NeStr
  loc_AD0228: BranchF loc_AD0271
  loc_AD022B: FLdPr Me
  loc_AD022E: MemLdStr global_72
  loc_AD0231: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD0236: LitI2_Byte 0
  loc_AD0238: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD023D: CStrDate
  loc_AD023F: CVarStr var_98
  loc_AD0242: PopAdLdVar
  loc_AD0243: FLdPr Me
  loc_AD0246: VCallAd Control_ID_FenaPersMsk
  loc_AD0249: FStAdFunc var_88
  loc_AD024C: FLdPr var_88
  loc_AD024F: LateIdSt
  loc_AD0254: FFree1Ad var_88
  loc_AD0257: FFree1Var var_98 = ""
  loc_AD025A: FLdPr Me
  loc_AD025D: VCallAd Control_ID_FenaPersMsk
  loc_AD0260: CVarAd
  loc_AD0264: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD0269: FFree1Var var_98 = ""
  loc_AD026C: LitI2_Byte &HFF
  loc_AD026E: IStI2 arg_C
  loc_AD0271: ExitProcHresult
End Function

Public Function boAceptarGet() '526450
  boAceptarGet = boAceptar
End Function

Public Sub boAceptarPut(Value) '52645F
  boAceptar = Value
End Sub

Public Function sCucuPersGet() '52646E
  sCucuPersGet = sCucuPers
End Function

Public Sub sCucuPersPut(Value) '52647D
  sCucuPers = Value
End Sub

Public Function doValidaCuilGet() '52648C
  doValidaCuilGet = doValidaCuil
End Function

Public Sub doValidaCuilPut(Value) '52649B
  doValidaCuil = Value
End Sub
