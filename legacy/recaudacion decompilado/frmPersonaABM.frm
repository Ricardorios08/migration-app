VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmPersonaABM
  Caption = "Persona"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmPersonaABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 11520
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 720
    Width = 4575
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 4920
    Width = 15135
    Height = 5532
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox ObsePersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 2640
      Width = 12612
      Height = 360
      TabIndex = 62
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
    Begin VB.TextBox CobrPersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 3960
      Width = 735
      Height = 360
      TabIndex = 44
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
    Begin VB.TextBox CocrPersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 3480
      Width = 735
      Height = 360
      TabIndex = 38
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
    Begin VB.CommandButton CocrPersCmd
      Left = 3120
      Top = 3480
      Width = 450
      Height = 345
      TabIndex = 39
      Picture = "frmPersonaABM.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DecrPersTxt
      ForeColor = &HFF0000&
      Left = 3600
      Top = 3480
      Width = 6855
      Height = 360
      TabIndex = 40
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
    Begin VB.TextBox NurePersTxt
      ForeColor = &HFF0000&
      Left = 12480
      Top = 3480
      Width = 1215
      Height = 360
      TabIndex = 42
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
    Begin VB.CommandButton CobrPersCmd
      Left = 3120
      Top = 3960
      Width = 450
      Height = 345
      TabIndex = 45
      Picture = "frmPersonaABM.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DebrPersTxt
      ForeColor = &HFF0000&
      Left = 3600
      Top = 3960
      Width = 6855
      Height = 360
      TabIndex = 46
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
    Begin VB.TextBox MarePersTxt
      ForeColor = &HFF0000&
      Left = 11400
      Top = 3960
      Width = 1215
      Height = 360
      TabIndex = 48
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
    Begin VB.TextBox CarePersTxt
      ForeColor = &HFF0000&
      Left = 13680
      Top = 3960
      Width = 1215
      Height = 360
      TabIndex = 50
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
    Begin VB.TextBox UbrePersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 4440
      Width = 12615
      Height = 360
      TabIndex = 52
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
    Begin VB.TextBox ColrPersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 4920
      Width = 735
      Height = 360
      TabIndex = 54
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
    Begin VB.CommandButton ColrPersCmd
      Left = 3120
      Top = 4920
      Width = 450
      Height = 345
      TabIndex = 55
      Picture = "frmPersonaABM.frx":343E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DelrPersTxt
      ForeColor = &HFF0000&
      Left = 3600
      Top = 4920
      Width = 6855
      Height = 360
      TabIndex = 56
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
    Begin VB.TextBox CoprPersTxt
      ForeColor = &HFF0000&
      Left = 12120
      Top = 4920
      Width = 1455
      Height = 360
      TabIndex = 58
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
    Begin VB.TextBox CodiPofiTxt
      ForeColor = &HFF0000&
      Left = 9720
      Top = 2160
      Width = 495
      Height = 360
      TabIndex = 33
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
    Begin VB.CommandButton CodiPofiCmd
      Left = 10320
      Top = 2160
      Width = 450
      Height = 345
      TabIndex = 34
      Picture = "frmPersonaABM.frx":3538
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiEsciTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 2160
      Width = 495
      Height = 360
      TabIndex = 29
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
    Begin VB.CommandButton CodiEsciCmd
      Left = 2880
      Top = 2160
      Width = 450
      Height = 345
      TabIndex = 30
      Picture = "frmPersonaABM.frx":3632
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FenaPersCmd
      Left = 14415
      Top = 1200
      Width = 450
      Height = 345
      TabIndex = 19
      Picture = "frmPersonaABM.frx":372C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox MailPersTxt
      ForeColor = &HFF0000&
      Left = 11760
      Top = 1680
      Width = 3135
      Height = 360
      TabIndex = 27
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
    Begin VB.TextBox NudoPersTxt
      ForeColor = &HFF0000&
      Left = 8640
      Top = 1200
      Width = 1695
      Height = 360
      TabIndex = 16
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
    Begin VB.CommandButton CodiTidoCmd
      Left = 2880
      Top = 1200
      Width = 450
      Height = 345
      TabIndex = 13
      Picture = "frmPersonaABM.frx":3C6E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiTidoTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 1200
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
    Begin VB.TextBox FaxsPersTxt
      ForeColor = &HFF0000&
      Left = 7800
      Top = 1680
      Width = 1695
      Height = 360
      TabIndex = 25
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
      Left = 2265
      Top = 1680
      Width = 1815
      Height = 360
      TabIndex = 21
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
    Begin VB.TextBox CeluPersTxt
      ForeColor = &HFF0000&
      Left = 5145
      Top = 1680
      Width = 1695
      Height = 360
      TabIndex = 23
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
    Begin VB.CheckBox JuriPersChk
      ForeColor = &HFF0000&
      Left = 13080
      Top = 720
      Width = 255
      Height = 360
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
    End
    Begin VB.TextBox DetaPersTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 720
      Width = 7575
      Height = 360
      TabIndex = 8
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
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 2265
      Top = 240
      Width = 1695
      Height = 360
      TabIndex = 5
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
    Begin MSMask.MaskEdBox FenaPersMsk
      Left = 12840
      Top = 1200
      Width = 1452
      Height = 348
      TabIndex = 18
      OleObjectBlob = "frmPersonaABM.frx":3D68
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label10
      Caption = "Observaciones:"
      Left = 480
      Top = 2640
      Width = 1656
      Height = 300
      TabIndex = 61
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
    Begin VB.Label Label30
      Caption = "                                                                                      Datos del domicilio real o Fiscal"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 3120
      Width = 15132
      Height = 252
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
    Begin VB.Label Label29
      Caption = "Calle:"
      Left = 1560
      Top = 3480
      Width = 588
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
    Begin VB.Label Label28
      Caption = "Nro de Puerta:"
      Left = 10920
      Top = 3480
      Width = 1536
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
    Begin VB.Label Label27
      Caption = "Barrio:"
      Left = 1560
      Top = 3960
      Width = 696
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
    Begin VB.Label Label26
      Caption = "Manz:"
      Left = 10680
      Top = 3960
      Width = 648
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
    Begin VB.Label Label25
      Caption = "Casa:"
      Left = 12960
      Top = 3960
      Width = 612
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
    Begin VB.Label Label24
      Caption = "Ubicacion:"
      Left = 1080
      Top = 4440
      Width = 1116
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
    Begin VB.Label Label23
      Caption = "Localidad:"
      Left = 1080
      Top = 4920
      Width = 1080
      Height = 300
      TabIndex = 53
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
      Left = 10800
      Top = 4920
      Width = 1272
      Height = 300
      TabIndex = 57
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
      Left = 8040
      Top = 2160
      Width = 1620
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
    Begin VB.Label DetaPofiLbl
      Left = 10920
      Top = 2160
      Width = 4092
      Height = 348
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
    Begin VB.Label Label13
      Caption = "Estado Civil:"
      Left = 840
      Top = 2160
      Width = 1296
      Height = 300
      TabIndex = 28
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
    Begin VB.Label DetaEsciLbl
      Left = 3480
      Top = 2160
      Width = 4212
      Height = 348
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
    Begin VB.Label Label7
      Caption = "Fecha Nacimiento:"
      Left = 10680
      Top = 1200
      Width = 1980
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
    Begin VB.Label Label8
      Caption = "Correo eléctronico:"
      Left = 9720
      Top = 1680
      Width = 1992
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
    Begin VB.Label Label6
      Caption = "Nro. Documento:"
      Left = 6720
      Top = 1200
      Width = 1800
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
    Begin VB.Label DetaTidoLbl
      Left = 3480
      Top = 1200
      Width = 2772
      Height = 348
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
    Begin VB.Label Label5
      Caption = "Tipo Doc.:"
      Left = 1080
      Top = 1200
      Width = 1068
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
    Begin VB.Label Label4
      Caption = "Fax:"
      Left = 7188
      Top = 1680
      Width = 456
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
      Caption = "Teléfono:"
      Left = 1320
      Top = 1680
      Width = 996
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
    Begin VB.Label Label12
      Caption = "Celular:"
      Left = 4308
      Top = 1680
      Width = 792
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
      Caption = "¿Persona Jurídica?:"
      Left = 10920
      Top = 720
      Width = 2088
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
    Begin VB.Label Label2
      Caption = "Apellido y Nombre:"
      Left = 240
      Top = 720
      Width = 1968
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
    Begin VB.Label Label9
      Caption = "CUIT/CUIL:"
      Left = 960
      Top = 240
      Width = 1236
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
    Begin VB.Label Label1
      Caption = "(sin espacios ni guiones)"
      Left = 4080
      Top = 240
      Width = 2592
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 15252
    Height = 3492
    TabIndex = 2
    OleObjectBlob = "frmPersonaABM.frx":3E18
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 720
    Width = 5775
    Height = 375
    TabIndex = 1
    OleObjectBlob = "frmPersonaABM.frx":43EA
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmPersonaABM.frx":4472
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15372
    Height = 528
    TabIndex = 59
    OleObjectBlob = "frmPersonaABM.frx":BFF0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 60
      TabStop = 0   'False
      Picture = "frmPersonaABM.frx":C54C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmPersonaABM"


Private Sub CeluPersTxt_GotFocus() '9C0560
  'Data Table: 529364
  loc_9C054C: FLdPr Me
  loc_9C054F: VCallAd Control_ID_CeluPersTxt
  loc_9C0552: CVarAd
  loc_9C0556: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C055B: FFree1Var var_94 = ""
  loc_9C055E: ExitProcHresult
End Sub

Private Sub CobrPersTxt_GotFocus() '9C02D8
  'Data Table: 529364
  loc_9C02C4: FLdPr Me
  loc_9C02C7: VCallAd Control_ID_CobrPersTxt
  loc_9C02CA: CVarAd
  loc_9C02CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C02D3: FFree1Var var_94 = ""
  loc_9C02D6: ExitProcHresult
End Sub

Private Sub CobrPersTxt_KeyPress(KeyAscii As Integer) '9DBECC
  'Data Table: 529364
  loc_9DBEB4: LitStr "0123456789"
  loc_9DBEB7: FStStrCopy var_88
  loc_9DBEBA: FLdRfVar var_88
  loc_9DBEBD: ILdRf KeyAscii
  loc_9DBEC0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DBEC5: IStI2 KeyAscii
  loc_9DBEC8: FFree1Str var_88
  loc_9DBECB: ExitProcHresult
End Sub

Private Sub CobrPersTxt_LostFocus() 'AAAF3C
  'Data Table: 529364
  loc_AAAE78: FLdRfVar var_8A
  loc_AAAE7B: FLdPr Me
  loc_AAAE7E: VCallAd Control_ID_cmdCancelar
  loc_AAAE81: FStAdFunc var_88
  loc_AAAE84: FLdPr var_88
  loc_AAAE87:  = Me.Value
  loc_AAAE8C: FLdI2 var_8A
  loc_AAAE8F: NotI4
  loc_AAAE90: FFree1Ad var_88
  loc_AAAE93: BranchF loc_AAAF3B
  loc_AAAE96: FLdRfVar var_90
  loc_AAAE99: FLdPr Me
  loc_AAAE9C: VCallAd Control_ID_CobrPersTxt
  loc_AAAE9F: FStAdFunc var_88
  loc_AAAEA2: FLdPr var_88
  loc_AAAEA5:  = Me.Text
  loc_AAAEAA: ILdRf var_90
  loc_AAAEAD: LitStr "0"
  loc_AAAEB0: NeStr
  loc_AAAEB2: FFree1Str var_90
  loc_AAAEB5: FFree1Ad var_88
  loc_AAAEB8: BranchF loc_AAAEF1
  loc_AAAEBB: LitI4 0
  loc_AAAEC0: LitI4 0
  loc_AAAEC5: FLdRfVar var_94
  loc_AAAEC8: Redim
  loc_AAAED2: FLdPr Me
  loc_AAAED5: VCallAd Control_ID_DebrPersTxt
  loc_AAAED8: CVarAd
  loc_AAAEDC: ParmAry1St
  loc_AAAEE2: FLdRfVar var_94
  loc_AAAEE5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AAAEEA: FLdRfVar var_94
  loc_AAAEED: Erase
  loc_AAAEEE: Branch loc_AAAF3B
  loc_AAAEF1: LitI4 0
  loc_AAAEF6: LitI4 0
  loc_AAAEFB: FLdRfVar var_94
  loc_AAAEFE: Redim
  loc_AAAF08: FLdPr Me
  loc_AAAF0B: VCallAd Control_ID_DebrPersTxt
  loc_AAAF0E: CVarAd
  loc_AAAF12: ParmAry1St
  loc_AAAF18: FLdRfVar var_94
  loc_AAAF1B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AAAF20: FLdRfVar var_94
  loc_AAAF23: Erase
  loc_AAAF24: LitStr vbNullString
  loc_AAAF27: FLdPr Me
  loc_AAAF2A: VCallAd Control_ID_DebrPersTxt
  loc_AAAF2D: FStAdFunc var_88
  loc_AAAF30: FLdPr var_88
  loc_AAAF33: Me.Text = from_stack_1
  loc_AAAF38: FFree1Ad var_88
  loc_AAAF3B: ExitProcHresult
End Sub

Private Sub CobrPersTxt_Validate(Cancel As Boolean) 'B06D18
  'Data Table: 529364
  loc_B06B14: FLdRfVar var_9A
  loc_B06B17: FLdPr Me
  loc_B06B1A: VCallAd Control_ID_cmdCancelar
  loc_B06B1D: FStAdFunc var_98
  loc_B06B20: FLdPr var_98
  loc_B06B23:  = Me.Value
  loc_B06B28: FLdI2 var_9A
  loc_B06B2B: NotI4
  loc_B06B2C: FLdRfVar var_A2
  loc_B06B2F: FLdPr Me
  loc_B06B32: VCallAd Control_ID_CobrPersTxt
  loc_B06B35: FStAdFunc var_A0
  loc_B06B38: FLdPr var_A0
  loc_B06B3B:  = Me.Enabled
  loc_B06B40: FLdI2 var_A2
  loc_B06B43: AndI4
  loc_B06B44: FLdRfVar var_AC
  loc_B06B47: FLdPr Me
  loc_B06B4A: VCallAd Control_ID_CobrPersTxt
  loc_B06B4D: FStAdFunc var_A8
  loc_B06B50: FLdPr var_A8
  loc_B06B53:  = Me.Text
  loc_B06B58: ILdRf var_AC
  loc_B06B5B: LitStr "0"
  loc_B06B5E: NeStr
  loc_B06B60: AndI4
  loc_B06B61: FFree1Str var_AC
  loc_B06B64: FFreeAd var_98 = "": var_A0 = ""
  loc_B06B6D: BranchF loc_B06D16
  loc_B06B70: FLdRfVar var_AC
  loc_B06B73: FLdPr Me
  loc_B06B76: VCallAd Control_ID_CobrPersTxt
  loc_B06B79: FStAdFunc var_98
  loc_B06B7C: FLdPr var_98
  loc_B06B7F:  = Me.Text
  loc_B06B84: ILdRf var_AC
  loc_B06B87: ImpAdCallI2 Proc_18_21_A58FBC()
  loc_B06B8C: FStStrNoPop var_B0
  loc_B06B8F: FLdPr Me
  loc_B06B92: MemStStrCopy
  loc_B06B96: FFreeStr var_AC = ""
  loc_B06B9D: FFree1Ad var_98
  loc_B06BA0: FLdPr Me
  loc_B06BA3: MemLdStr global_60
  loc_B06BA6: LitStr vbNullString
  loc_B06BA9: NeStr
  loc_B06BAB: BranchF loc_B06BEB
  loc_B06BAE: FLdPr Me
  loc_B06BB1: MemLdStr global_60
  loc_B06BB4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B06BB9: LitStr vbNullString
  loc_B06BBC: FLdPr Me
  loc_B06BBF: VCallAd Control_ID_DebrPersTxt
  loc_B06BC2: FStAdFunc var_98
  loc_B06BC5: FLdPr var_98
  loc_B06BC8: Me.Text = from_stack_1
  loc_B06BCD: FFree1Ad var_98
  loc_B06BD0: FLdPr Me
  loc_B06BD3: VCallAd Control_ID_CobrPersTxt
  loc_B06BD6: CVarAd
  loc_B06BDA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B06BDF: FFree1Var var_C0 = ""
  loc_B06BE2: LitI2_Byte &HFF
  loc_B06BE4: IStI2 Cancel
  loc_B06BE7: ExitProcHresult
  loc_B06BE8: Branch loc_B06D16
  loc_B06BEB: FLdRfVar var_AC
  loc_B06BEE: FLdPr Me
  loc_B06BF1: VCallAd Control_ID_CobrPersTxt
  loc_B06BF4: FStAdFunc var_98
  loc_B06BF7: FLdPr var_98
  loc_B06BFA:  = Me.Text
  loc_B06BFF: ILdRf var_AC
  loc_B06C02: CI4Str
  loc_B06C03: FLdRfVar var_C0
  loc_B06C06: ImpAdCallFPR4 Proc_270_66_B1D9B8(, )
  loc_B06C0B: FLdRfVar var_C0
  loc_B06C0E: FStVar var_94
  loc_B06C12: FFree1Str var_AC
  loc_B06C15: FFree1Ad var_98
  loc_B06C18: LitVarI2 var_D0, 1
  loc_B06C1D: PopAdLdVar
  loc_B06C1E: FLdRfVar var_94
  loc_B06C21: VarIndexLdVar
  loc_B06C27: CStrVarVal var_AC
  loc_B06C2B: FLdPr Me
  loc_B06C2E: VCallAd Control_ID_DebrPersTxt
  loc_B06C31: FStAdFunc var_98
  loc_B06C34: FLdPr var_98
  loc_B06C37: Me.Text = from_stack_1
  loc_B06C3C: FFree1Str var_AC
  loc_B06C3F: FFree1Ad var_98
  loc_B06C42: FFree1Var var_C0 = ""
  loc_B06C45: LitVarI2 var_D0, 2
  loc_B06C4A: PopAdLdVar
  loc_B06C4B: FLdRfVar var_94
  loc_B06C4E: VarIndexLdVar
  loc_B06C54: CStrVarVal var_AC
  loc_B06C58: FLdPr Me
  loc_B06C5B: VCallAd Control_ID_ColrPersTxt
  loc_B06C5E: FStAdFunc var_98
  loc_B06C61: FLdPr var_98
  loc_B06C64: Me.Text = from_stack_1
  loc_B06C69: FFree1Str var_AC
  loc_B06C6C: FFree1Ad var_98
  loc_B06C6F: FFree1Var var_C0 = ""
  loc_B06C72: LitVarI2 var_D0, 3
  loc_B06C77: PopAdLdVar
  loc_B06C78: FLdRfVar var_94
  loc_B06C7B: VarIndexLdVar
  loc_B06C81: CStrVarVal var_AC
  loc_B06C85: FLdPr Me
  loc_B06C88: VCallAd Control_ID_DelrPersTxt
  loc_B06C8B: FStAdFunc var_98
  loc_B06C8E: FLdPr var_98
  loc_B06C91: Me.Text = from_stack_1
  loc_B06C96: FFree1Str var_AC
  loc_B06C99: FFree1Ad var_98
  loc_B06C9C: FFree1Var var_C0 = ""
  loc_B06C9F: LitVarI2 var_D0, 4
  loc_B06CA4: PopAdLdVar
  loc_B06CA5: FLdRfVar var_94
  loc_B06CA8: VarIndexLdVar
  loc_B06CAE: CStrVarVal var_AC
  loc_B06CB2: FLdPr Me
  loc_B06CB5: VCallAd Control_ID_CoprPersTxt
  loc_B06CB8: FStAdFunc var_98
  loc_B06CBB: FLdPr var_98
  loc_B06CBE: Me.Text = from_stack_1
  loc_B06CC3: FFree1Str var_AC
  loc_B06CC6: FFree1Ad var_98
  loc_B06CC9: FFree1Var var_C0 = ""
  loc_B06CCC: LitVarI2 var_D0, 1
  loc_B06CD1: PopAdLdVar
  loc_B06CD2: FLdRfVar var_94
  loc_B06CD5: VarIndexLdVar
  loc_B06CDB: LitVarStr var_F0, "0"
  loc_B06CE0: HardType
  loc_B06CE1: EqVarBool
  loc_B06CE3: FFree1Var var_C0 = ""
  loc_B06CE6: BranchF loc_B06D16
  loc_B06CE9: LitStr "El BARRIO no EXISTE, verifique..."
  loc_B06CEC: FLdPr Me
  loc_B06CEF: MemStStrCopy
  loc_B06CF3: FLdPr Me
  loc_B06CF6: MemLdStr global_60
  loc_B06CF9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B06CFE: FLdPr Me
  loc_B06D01: VCallAd Control_ID_CobrPersTxt
  loc_B06D04: CVarAd
  loc_B06D08: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B06D0D: FFree1Var var_C0 = ""
  loc_B06D10: LitI2_Byte &HFF
  loc_B06D12: IStI2 Cancel
  loc_B06D15: ExitProcHresult
  loc_B06D16: ExitProcHresult
  loc_B06D17: PopAdLdVar
End Sub

Private Sub DebrPersTxt_GotFocus() '9BFA68
  'Data Table: 529364
  loc_9BFA54: FLdPr Me
  loc_9BFA57: VCallAd Control_ID_DebrPersTxt
  loc_9BFA5A: CVarAd
  loc_9BFA5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFA63: FFree1Var var_94 = ""
  loc_9BFA66: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AD3EBC
  'Data Table: 529364
  loc_AD3D7C: LitVarStr var_94, vbNullString
  loc_AD3D81: PopAdLdVar
  loc_AD3D82: FLdPr Me
  loc_AD3D85: VCallAd Control_ID_FiltroMsk
  loc_AD3D88: FStAdFunc var_A8
  loc_AD3D8B: FLdPr var_A8
  loc_AD3D8E: LateIdSt
  loc_AD3D93: FFree1Ad var_A8
  loc_AD3D96: FLdRfVar var_AA
  loc_AD3D99: FLdPr Me
  loc_AD3D9C: VCallAd Control_ID_FiltroCbo
  loc_AD3D9F: FStAdFunc var_A8
  loc_AD3DA2: FLdPr var_A8
  loc_AD3DA5:  = Me.ListIndex
  loc_AD3DAA: FLdI2 var_AA
  loc_AD3DAD: FStI2 var_AC
  loc_AD3DB0: FFree1Ad var_A8
  loc_AD3DB3: FLdI2 var_AC
  loc_AD3DB6: LitI2_Byte 0
  loc_AD3DB8: EqI2
  loc_AD3DB9: BranchF loc_AD3DD9
  loc_AD3DBC: LitVarStr var_94, "###########"
  loc_AD3DC1: PopAdLdVar
  loc_AD3DC2: FLdPr Me
  loc_AD3DC5: VCallAd Control_ID_FiltroMsk
  loc_AD3DC8: FStAdFunc var_A8
  loc_AD3DCB: FLdPr var_A8
  loc_AD3DCE: LateIdSt
  loc_AD3DD3: FFree1Ad var_A8
  loc_AD3DD6: Branch loc_AD3EBA
  loc_AD3DD9: FLdI2 var_AC
  loc_AD3DDC: LitI2_Byte 1
  loc_AD3DDE: EqI2
  loc_AD3DDF: BranchF loc_AD3DFF
  loc_AD3DE2: LitVarStr var_94, vbNullString
  loc_AD3DE7: PopAdLdVar
  loc_AD3DE8: FLdPr Me
  loc_AD3DEB: VCallAd Control_ID_FiltroMsk
  loc_AD3DEE: FStAdFunc var_A8
  loc_AD3DF1: FLdPr var_A8
  loc_AD3DF4: LateIdSt
  loc_AD3DF9: FFree1Ad var_A8
  loc_AD3DFC: Branch loc_AD3EBA
  loc_AD3DFF: FLdI2 var_AC
  loc_AD3E02: LitI2_Byte 2
  loc_AD3E04: EqI2
  loc_AD3E05: BranchF loc_AD3E25
  loc_AD3E08: LitVarStr var_94, "########"
  loc_AD3E0D: PopAdLdVar
  loc_AD3E0E: FLdPr Me
  loc_AD3E11: VCallAd Control_ID_FiltroMsk
  loc_AD3E14: FStAdFunc var_A8
  loc_AD3E17: FLdPr var_A8
  loc_AD3E1A: LateIdSt
  loc_AD3E1F: FFree1Ad var_A8
  loc_AD3E22: Branch loc_AD3EBA
  loc_AD3E25: FLdI2 var_AC
  loc_AD3E28: LitI2_Byte 3
  loc_AD3E2A: EqI2
  loc_AD3E2B: BranchF loc_AD3E4B
  loc_AD3E2E: LitVarStr var_94, vbNullString
  loc_AD3E33: PopAdLdVar
  loc_AD3E34: FLdPr Me
  loc_AD3E37: VCallAd Control_ID_FiltroMsk
  loc_AD3E3A: FStAdFunc var_A8
  loc_AD3E3D: FLdPr var_A8
  loc_AD3E40: LateIdSt
  loc_AD3E45: FFree1Ad var_A8
  loc_AD3E48: Branch loc_AD3EBA
  loc_AD3E4B: FLdI2 var_AC
  loc_AD3E4E: LitI2_Byte 4
  loc_AD3E50: EqI2
  loc_AD3E51: BranchF loc_AD3E71
  loc_AD3E54: LitVarStr var_94, vbNullString
  loc_AD3E59: PopAdLdVar
  loc_AD3E5A: FLdPr Me
  loc_AD3E5D: VCallAd Control_ID_FiltroMsk
  loc_AD3E60: FStAdFunc var_A8
  loc_AD3E63: FLdPr var_A8
  loc_AD3E66: LateIdSt
  loc_AD3E6B: FFree1Ad var_A8
  loc_AD3E6E: Branch loc_AD3EBA
  loc_AD3E71: FLdI2 var_AC
  loc_AD3E74: LitI2_Byte 5
  loc_AD3E76: EqI2
  loc_AD3E77: BranchF loc_AD3E97
  loc_AD3E7A: LitVarStr var_94, vbNullString
  loc_AD3E7F: PopAdLdVar
  loc_AD3E80: FLdPr Me
  loc_AD3E83: VCallAd Control_ID_FiltroMsk
  loc_AD3E86: FStAdFunc var_A8
  loc_AD3E89: FLdPr var_A8
  loc_AD3E8C: LateIdSt
  loc_AD3E91: FFree1Ad var_A8
  loc_AD3E94: Branch loc_AD3EBA
  loc_AD3E97: FLdI2 var_AC
  loc_AD3E9A: LitI2_Byte 6
  loc_AD3E9C: EqI2
  loc_AD3E9D: BranchF loc_AD3EBA
  loc_AD3EA0: LitVarStr var_94, vbNullString
  loc_AD3EA5: PopAdLdVar
  loc_AD3EA6: FLdPr Me
  loc_AD3EA9: VCallAd Control_ID_FiltroMsk
  loc_AD3EAC: FStAdFunc var_A8
  loc_AD3EAF: FLdPr var_A8
  loc_AD3EB2: LateIdSt
  loc_AD3EB7: FFree1Ad var_A8
  loc_AD3EBA: ExitProcHresult
End Sub

Private Sub ColrPersTxt_GotFocus() '9BFD80
  'Data Table: 529364
  loc_9BFD6C: FLdPr Me
  loc_9BFD6F: VCallAd Control_ID_ColrPersTxt
  loc_9BFD72: CVarAd
  loc_9BFD76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFD7B: FFree1Var var_94 = ""
  loc_9BFD7E: ExitProcHresult
End Sub

Private Sub ColrPersTxt_KeyPress(KeyAscii As Integer) '9DB928
  'Data Table: 529364
  loc_9DB910: LitStr "0123456789"
  loc_9DB913: FStStrCopy var_88
  loc_9DB916: FLdRfVar var_88
  loc_9DB919: ILdRf KeyAscii
  loc_9DB91C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB921: IStI2 KeyAscii
  loc_9DB924: FFree1Str var_88
  loc_9DB927: ExitProcHresult
End Sub

Private Sub ColrPersTxt_LostFocus() 'AAAA00
  'Data Table: 529364
  loc_AAA93C: FLdRfVar var_8A
  loc_AAA93F: FLdPr Me
  loc_AAA942: VCallAd Control_ID_cmdCancelar
  loc_AAA945: FStAdFunc var_88
  loc_AAA948: FLdPr var_88
  loc_AAA94B:  = Me.Value
  loc_AAA950: FLdI2 var_8A
  loc_AAA953: NotI4
  loc_AAA954: FFree1Ad var_88
  loc_AAA957: BranchF loc_AAA9FF
  loc_AAA95A: FLdRfVar var_90
  loc_AAA95D: FLdPr Me
  loc_AAA960: VCallAd Control_ID_ColrPersTxt
  loc_AAA963: FStAdFunc var_88
  loc_AAA966: FLdPr var_88
  loc_AAA969:  = Me.Text
  loc_AAA96E: ILdRf var_90
  loc_AAA971: LitStr "0"
  loc_AAA974: NeStr
  loc_AAA976: FFree1Str var_90
  loc_AAA979: FFree1Ad var_88
  loc_AAA97C: BranchF loc_AAA9B5
  loc_AAA97F: LitI4 0
  loc_AAA984: LitI4 0
  loc_AAA989: FLdRfVar var_94
  loc_AAA98C: Redim
  loc_AAA996: FLdPr Me
  loc_AAA999: VCallAd Control_ID_DelrPersTxt
  loc_AAA99C: CVarAd
  loc_AAA9A0: ParmAry1St
  loc_AAA9A6: FLdRfVar var_94
  loc_AAA9A9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AAA9AE: FLdRfVar var_94
  loc_AAA9B1: Erase
  loc_AAA9B2: Branch loc_AAA9FF
  loc_AAA9B5: LitI4 0
  loc_AAA9BA: LitI4 0
  loc_AAA9BF: FLdRfVar var_94
  loc_AAA9C2: Redim
  loc_AAA9CC: FLdPr Me
  loc_AAA9CF: VCallAd Control_ID_DelrPersTxt
  loc_AAA9D2: CVarAd
  loc_AAA9D6: ParmAry1St
  loc_AAA9DC: FLdRfVar var_94
  loc_AAA9DF: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AAA9E4: FLdRfVar var_94
  loc_AAA9E7: Erase
  loc_AAA9E8: LitStr vbNullString
  loc_AAA9EB: FLdPr Me
  loc_AAA9EE: VCallAd Control_ID_DelrPersTxt
  loc_AAA9F1: FStAdFunc var_88
  loc_AAA9F4: FLdPr var_88
  loc_AAA9F7: Me.Text = from_stack_1
  loc_AAA9FC: FFree1Ad var_88
  loc_AAA9FF: ExitProcHresult
End Sub

Private Sub ColrPersTxt_Validate(Cancel As Boolean) 'AED810
  'Data Table: 529364
  loc_AED688: FLdRfVar var_9A
  loc_AED68B: FLdPr Me
  loc_AED68E: VCallAd Control_ID_cmdCancelar
  loc_AED691: FStAdFunc var_98
  loc_AED694: FLdPr var_98
  loc_AED697:  = Me.Value
  loc_AED69C: FLdI2 var_9A
  loc_AED69F: NotI4
  loc_AED6A0: FLdRfVar var_A2
  loc_AED6A3: FLdPr Me
  loc_AED6A6: VCallAd Control_ID_ColrPersTxt
  loc_AED6A9: FStAdFunc var_A0
  loc_AED6AC: FLdPr var_A0
  loc_AED6AF:  = Me.Enabled
  loc_AED6B4: FLdI2 var_A2
  loc_AED6B7: AndI4
  loc_AED6B8: FFreeAd var_98 = ""
  loc_AED6BF: BranchF loc_AED80F
  loc_AED6C2: FLdRfVar var_A8
  loc_AED6C5: FLdPr Me
  loc_AED6C8: VCallAd Control_ID_ColrPersTxt
  loc_AED6CB: FStAdFunc var_98
  loc_AED6CE: FLdPr var_98
  loc_AED6D1:  = Me.Text
  loc_AED6D6: ILdRf var_A8
  loc_AED6D9: ImpAdCallI2 Proc_18_22_A588CC()
  loc_AED6DE: FStStrNoPop var_AC
  loc_AED6E1: FLdPr Me
  loc_AED6E4: MemStStrCopy
  loc_AED6E8: FFreeStr var_A8 = ""
  loc_AED6EF: FFree1Ad var_98
  loc_AED6F2: FLdPr Me
  loc_AED6F5: MemLdStr global_60
  loc_AED6F8: LitStr vbNullString
  loc_AED6FB: NeStr
  loc_AED6FD: BranchF loc_AED73D
  loc_AED700: FLdPr Me
  loc_AED703: MemLdStr global_60
  loc_AED706: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AED70B: LitStr vbNullString
  loc_AED70E: FLdPr Me
  loc_AED711: VCallAd Control_ID_DelrPersTxt
  loc_AED714: FStAdFunc var_98
  loc_AED717: FLdPr var_98
  loc_AED71A: Me.Text = from_stack_1
  loc_AED71F: FFree1Ad var_98
  loc_AED722: FLdPr Me
  loc_AED725: VCallAd Control_ID_ColrPersTxt
  loc_AED728: CVarAd
  loc_AED72C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AED731: FFree1Var var_BC = ""
  loc_AED734: LitI2_Byte &HFF
  loc_AED736: IStI2 Cancel
  loc_AED739: ExitProcHresult
  loc_AED73A: Branch loc_AED80F
  loc_AED73D: FLdRfVar var_A8
  loc_AED740: FLdPr Me
  loc_AED743: VCallAd Control_ID_ColrPersTxt
  loc_AED746: FStAdFunc var_98
  loc_AED749: FLdPr var_98
  loc_AED74C:  = Me.Text
  loc_AED751: ILdRf var_A8
  loc_AED754: CI2Str
  loc_AED756: FLdRfVar var_BC
  loc_AED759: ImpAdCallFPR4 Proc_270_67_AD14C8(, )
  loc_AED75E: FLdRfVar var_BC
  loc_AED761: FStVar var_94
  loc_AED765: FFree1Str var_A8
  loc_AED768: FFree1Ad var_98
  loc_AED76B: LitVarI2 var_CC, 1
  loc_AED770: PopAdLdVar
  loc_AED771: FLdRfVar var_94
  loc_AED774: VarIndexLdVar
  loc_AED77A: CStrVarVal var_A8
  loc_AED77E: FLdPr Me
  loc_AED781: VCallAd Control_ID_DelrPersTxt
  loc_AED784: FStAdFunc var_98
  loc_AED787: FLdPr var_98
  loc_AED78A: Me.Text = from_stack_1
  loc_AED78F: FFree1Str var_A8
  loc_AED792: FFree1Ad var_98
  loc_AED795: FFree1Var var_BC = ""
  loc_AED798: LitVarI2 var_CC, 2
  loc_AED79D: PopAdLdVar
  loc_AED79E: FLdRfVar var_94
  loc_AED7A1: VarIndexLdVar
  loc_AED7A7: CStrVarVal var_A8
  loc_AED7AB: FLdPr Me
  loc_AED7AE: VCallAd Control_ID_CoprPersTxt
  loc_AED7B1: FStAdFunc var_98
  loc_AED7B4: FLdPr var_98
  loc_AED7B7: Me.Text = from_stack_1
  loc_AED7BC: FFree1Str var_A8
  loc_AED7BF: FFree1Ad var_98
  loc_AED7C2: FFree1Var var_BC = ""
  loc_AED7C5: LitVarI2 var_CC, 1
  loc_AED7CA: PopAdLdVar
  loc_AED7CB: FLdRfVar var_94
  loc_AED7CE: VarIndexLdVar
  loc_AED7D4: LitVarStr var_EC, "0"
  loc_AED7D9: HardType
  loc_AED7DA: EqVarBool
  loc_AED7DC: FFree1Var var_BC = ""
  loc_AED7DF: BranchF loc_AED80F
  loc_AED7E2: LitStr "La LOCALIDAD no EXISTE, verifique..."
  loc_AED7E5: FLdPr Me
  loc_AED7E8: MemStStrCopy
  loc_AED7EC: FLdPr Me
  loc_AED7EF: MemLdStr global_60
  loc_AED7F2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AED7F7: FLdPr Me
  loc_AED7FA: VCallAd Control_ID_ColrPersTxt
  loc_AED7FD: CVarAd
  loc_AED801: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AED806: FFree1Var var_BC = ""
  loc_AED809: LitI2_Byte &HFF
  loc_AED80B: IStI2 Cancel
  loc_AED80E: ExitProcHresult
  loc_AED80F: ExitProcHresult
End Sub

Private Sub DelrPersTxt_GotFocus() '9BF480
  'Data Table: 529364
  loc_9BF46C: FLdPr Me
  loc_9BF46F: VCallAd Control_ID_DelrPersTxt
  loc_9BF472: CVarAd
  loc_9BF476: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF47B: FFree1Var var_94 = ""
  loc_9BF47E: ExitProcHresult
End Sub

Private Sub CoprPersTxt_GotFocus() '9BFC60
  'Data Table: 529364
  loc_9BFC4C: FLdPr Me
  loc_9BFC4F: VCallAd Control_ID_CoprPersTxt
  loc_9BFC52: CVarAd
  loc_9BFC56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFC5B: FFree1Var var_94 = ""
  loc_9BFC5E: ExitProcHresult
End Sub

Private Sub CocrPersTxt_GotFocus() '9C0128
  'Data Table: 529364
  loc_9C0114: FLdPr Me
  loc_9C0117: VCallAd Control_ID_CocrPersTxt
  loc_9C011A: CVarAd
  loc_9C011E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0123: FFree1Var var_94 = ""
  loc_9C0126: ExitProcHresult
End Sub

Private Sub CocrPersTxt_KeyPress(KeyAscii As Integer) '9DBD50
  'Data Table: 529364
  loc_9DBD38: LitStr "0123456789"
  loc_9DBD3B: FStStrCopy var_88
  loc_9DBD3E: FLdRfVar var_88
  loc_9DBD41: ILdRf KeyAscii
  loc_9DBD44: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DBD49: IStI2 KeyAscii
  loc_9DBD4C: FFree1Str var_88
  loc_9DBD4F: ExitProcHresult
End Sub

Private Sub CocrPersTxt_LostFocus() 'AA206C
  'Data Table: 529364
  loc_AA1FBC: FLdRfVar var_8A
  loc_AA1FBF: FLdPr Me
  loc_AA1FC2: VCallAd Control_ID_cmdCancelar
  loc_AA1FC5: FStAdFunc var_88
  loc_AA1FC8: FLdPr var_88
  loc_AA1FCB:  = Me.Value
  loc_AA1FD0: FLdI2 var_8A
  loc_AA1FD3: NotI4
  loc_AA1FD4: FFree1Ad var_88
  loc_AA1FD7: BranchF loc_AA2068
  loc_AA1FDA: FLdRfVar var_90
  loc_AA1FDD: FLdPr Me
  loc_AA1FE0: VCallAd Control_ID_CocrPersTxt
  loc_AA1FE3: FStAdFunc var_88
  loc_AA1FE6: FLdPr var_88
  loc_AA1FE9:  = Me.Text
  loc_AA1FEE: ILdRf var_90
  loc_AA1FF1: LitStr "0"
  loc_AA1FF4: NeStr
  loc_AA1FF6: FFree1Str var_90
  loc_AA1FF9: FFree1Ad var_88
  loc_AA1FFC: BranchF loc_AA2035
  loc_AA1FFF: LitI4 0
  loc_AA2004: LitI4 0
  loc_AA2009: FLdRfVar var_94
  loc_AA200C: Redim
  loc_AA2016: FLdPr Me
  loc_AA2019: VCallAd Control_ID_DecrPersTxt
  loc_AA201C: CVarAd
  loc_AA2020: ParmAry1St
  loc_AA2026: FLdRfVar var_94
  loc_AA2029: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AA202E: FLdRfVar var_94
  loc_AA2031: Erase
  loc_AA2032: Branch loc_AA2068
  loc_AA2035: LitI4 0
  loc_AA203A: LitI4 0
  loc_AA203F: FLdRfVar var_94
  loc_AA2042: Redim
  loc_AA204C: FLdPr Me
  loc_AA204F: VCallAd Control_ID_DecrPersTxt
  loc_AA2052: CVarAd
  loc_AA2056: ParmAry1St
  loc_AA205C: FLdRfVar var_94
  loc_AA205F: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2064: FLdRfVar var_94
  loc_AA2067: Erase
  loc_AA2068: ExitProcHresult
  loc_AA2069: SetLastSystemError
End Sub

Private Sub CocrPersTxt_Validate(Cancel As Boolean) 'B15790
  'Data Table: 529364
  loc_B15530: FLdRfVar var_9A
  loc_B15533: FLdPr Me
  loc_B15536: VCallAd Control_ID_cmdCancelar
  loc_B15539: FStAdFunc var_98
  loc_B1553C: FLdPr var_98
  loc_B1553F:  = Me.Value
  loc_B15544: FLdI2 var_9A
  loc_B15547: NotI4
  loc_B15548: FLdRfVar var_A2
  loc_B1554B: FLdPr Me
  loc_B1554E: VCallAd Control_ID_CocrPersTxt
  loc_B15551: FStAdFunc var_A0
  loc_B15554: FLdPr var_A0
  loc_B15557:  = Me.Enabled
  loc_B1555C: FLdI2 var_A2
  loc_B1555F: AndI4
  loc_B15560: FLdRfVar var_AC
  loc_B15563: FLdPr Me
  loc_B15566: VCallAd Control_ID_CocrPersTxt
  loc_B15569: FStAdFunc var_A8
  loc_B1556C: FLdPr var_A8
  loc_B1556F:  = Me.Text
  loc_B15574: ILdRf var_AC
  loc_B15577: LitStr "0"
  loc_B1557A: NeStr
  loc_B1557C: AndI4
  loc_B1557D: FFree1Str var_AC
  loc_B15580: FFreeAd var_98 = "": var_A0 = ""
  loc_B15589: BranchF loc_B1578C
  loc_B1558C: FLdRfVar var_AC
  loc_B1558F: FLdPr Me
  loc_B15592: VCallAd Control_ID_CocrPersTxt
  loc_B15595: FStAdFunc var_98
  loc_B15598: FLdPr var_98
  loc_B1559B:  = Me.Text
  loc_B155A0: ILdRf var_AC
  loc_B155A3: ImpAdCallI2 Proc_18_20_A590E4()
  loc_B155A8: FStStrNoPop var_B0
  loc_B155AB: FLdPr Me
  loc_B155AE: MemStStrCopy
  loc_B155B2: FFreeStr var_AC = ""
  loc_B155B9: FFree1Ad var_98
  loc_B155BC: FLdPr Me
  loc_B155BF: MemLdStr global_60
  loc_B155C2: LitStr vbNullString
  loc_B155C5: NeStr
  loc_B155C7: BranchF loc_B15607
  loc_B155CA: FLdPr Me
  loc_B155CD: MemLdStr global_60
  loc_B155D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B155D5: LitStr vbNullString
  loc_B155D8: FLdPr Me
  loc_B155DB: VCallAd Control_ID_DecrPersTxt
  loc_B155DE: FStAdFunc var_98
  loc_B155E1: FLdPr var_98
  loc_B155E4: Me.Text = from_stack_1
  loc_B155E9: FFree1Ad var_98
  loc_B155EC: FLdPr Me
  loc_B155EF: VCallAd Control_ID_CocrPersTxt
  loc_B155F2: CVarAd
  loc_B155F6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B155FB: FFree1Var var_C0 = ""
  loc_B155FE: LitI2_Byte &HFF
  loc_B15600: IStI2 Cancel
  loc_B15603: ExitProcHresult
  loc_B15604: Branch loc_B1578C
  loc_B15607: FLdRfVar var_AC
  loc_B1560A: FLdPr Me
  loc_B1560D: VCallAd Control_ID_CocrPersTxt
  loc_B15610: FStAdFunc var_98
  loc_B15613: FLdPr var_98
  loc_B15616:  = Me.Text
  loc_B1561B: ILdRf var_AC
  loc_B1561E: CI4Str
  loc_B1561F: FLdRfVar var_C0
  loc_B15622: ImpAdCallFPR4 Proc_270_65_B4B338(, )
  loc_B15627: FLdRfVar var_C0
  loc_B1562A: FStVar var_94
  loc_B1562E: FFree1Str var_AC
  loc_B15631: FFree1Ad var_98
  loc_B15634: LitVarI2 var_D0, 1
  loc_B15639: PopAdLdVar
  loc_B1563A: FLdRfVar var_94
  loc_B1563D: VarIndexLdVar
  loc_B15643: CStrVarVal var_AC
  loc_B15647: FLdPr Me
  loc_B1564A: VCallAd Control_ID_DecrPersTxt
  loc_B1564D: FStAdFunc var_98
  loc_B15650: FLdPr var_98
  loc_B15653: Me.Text = from_stack_1
  loc_B15658: FFree1Str var_AC
  loc_B1565B: FFree1Ad var_98
  loc_B1565E: FFree1Var var_C0 = ""
  loc_B15661: LitVarI2 var_D0, 2
  loc_B15666: PopAdLdVar
  loc_B15667: FLdRfVar var_94
  loc_B1566A: VarIndexLdVar
  loc_B15670: CStrVarVal var_AC
  loc_B15674: FLdPr Me
  loc_B15677: VCallAd Control_ID_CobrPersTxt
  loc_B1567A: FStAdFunc var_98
  loc_B1567D: FLdPr var_98
  loc_B15680: Me.Text = from_stack_1
  loc_B15685: FFree1Str var_AC
  loc_B15688: FFree1Ad var_98
  loc_B1568B: FFree1Var var_C0 = ""
  loc_B1568E: LitVarI2 var_D0, 3
  loc_B15693: PopAdLdVar
  loc_B15694: FLdRfVar var_94
  loc_B15697: VarIndexLdVar
  loc_B1569D: CStrVarVal var_AC
  loc_B156A1: FLdPr Me
  loc_B156A4: VCallAd Control_ID_DebrPersTxt
  loc_B156A7: FStAdFunc var_98
  loc_B156AA: FLdPr var_98
  loc_B156AD: Me.Text = from_stack_1
  loc_B156B2: FFree1Str var_AC
  loc_B156B5: FFree1Ad var_98
  loc_B156B8: FFree1Var var_C0 = ""
  loc_B156BB: LitVarI2 var_D0, 4
  loc_B156C0: PopAdLdVar
  loc_B156C1: FLdRfVar var_94
  loc_B156C4: VarIndexLdVar
  loc_B156CA: CStrVarVal var_AC
  loc_B156CE: FLdPr Me
  loc_B156D1: VCallAd Control_ID_ColrPersTxt
  loc_B156D4: FStAdFunc var_98
  loc_B156D7: FLdPr var_98
  loc_B156DA: Me.Text = from_stack_1
  loc_B156DF: FFree1Str var_AC
  loc_B156E2: FFree1Ad var_98
  loc_B156E5: FFree1Var var_C0 = ""
  loc_B156E8: LitVarI2 var_D0, 5
  loc_B156ED: PopAdLdVar
  loc_B156EE: FLdRfVar var_94
  loc_B156F1: VarIndexLdVar
  loc_B156F7: CStrVarVal var_AC
  loc_B156FB: FLdPr Me
  loc_B156FE: VCallAd Control_ID_DelrPersTxt
  loc_B15701: FStAdFunc var_98
  loc_B15704: FLdPr var_98
  loc_B15707: Me.Text = from_stack_1
  loc_B1570C: FFree1Str var_AC
  loc_B1570F: FFree1Ad var_98
  loc_B15712: FFree1Var var_C0 = ""
  loc_B15715: LitVarI2 var_D0, 6
  loc_B1571A: PopAdLdVar
  loc_B1571B: FLdRfVar var_94
  loc_B1571E: VarIndexLdVar
  loc_B15724: CStrVarVal var_AC
  loc_B15728: FLdPr Me
  loc_B1572B: VCallAd Control_ID_CoprPersTxt
  loc_B1572E: FStAdFunc var_98
  loc_B15731: FLdPr var_98
  loc_B15734: Me.Text = from_stack_1
  loc_B15739: FFree1Str var_AC
  loc_B1573C: FFree1Ad var_98
  loc_B1573F: FFree1Var var_C0 = ""
  loc_B15742: LitVarI2 var_D0, 1
  loc_B15747: PopAdLdVar
  loc_B15748: FLdRfVar var_94
  loc_B1574B: VarIndexLdVar
  loc_B15751: LitVarStr var_F0, "0"
  loc_B15756: HardType
  loc_B15757: EqVarBool
  loc_B15759: FFree1Var var_C0 = ""
  loc_B1575C: BranchF loc_B1578C
  loc_B1575F: LitStr "La CALLE no EXISTE, verifique..."
  loc_B15762: FLdPr Me
  loc_B15765: MemStStrCopy
  loc_B15769: FLdPr Me
  loc_B1576C: MemLdStr global_60
  loc_B1576F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B15774: FLdPr Me
  loc_B15777: VCallAd Control_ID_CocrPersTxt
  loc_B1577A: CVarAd
  loc_B1577E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B15783: FFree1Var var_C0 = ""
  loc_B15786: LitI2_Byte &HFF
  loc_B15788: IStI2 Cancel
  loc_B1578B: ExitProcHresult
  loc_B1578C: ExitProcHresult
End Sub

Private Sub DecrPersTxt_GotFocus() '9BF510
  'Data Table: 529364
  loc_9BF4FC: FLdPr Me
  loc_9BF4FF: VCallAd Control_ID_DecrPersTxt
  loc_9BF502: CVarAd
  loc_9BF506: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF50B: FFree1Var var_94 = ""
  loc_9BF50E: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_GotFocus() '9C0050
  'Data Table: 529364
  loc_9C003C: FLdPr Me
  loc_9C003F: VCallAd Control_ID_CodiEsciTxt
  loc_9C0042: CVarAd
  loc_9C0046: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C004B: FFree1Var var_94 = ""
  loc_9C004E: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_KeyPress(KeyAscii As Integer) '9DBBD4
  'Data Table: 529364
  loc_9DBBBC: LitStr "0123456789"
  loc_9DBBBF: FStStrCopy var_88
  loc_9DBBC2: FLdRfVar var_88
  loc_9DBBC5: ILdRf KeyAscii
  loc_9DBBC8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DBBCD: IStI2 KeyAscii
  loc_9DBBD0: FFree1Str var_88
  loc_9DBBD3: ExitProcHresult
End Sub

Private Sub CodiEsciTxt_Validate(Cancel As Boolean) 'AB4094
  'Data Table: 529364
  loc_AB3FB4: FLdRfVar var_8A
  loc_AB3FB7: FLdPr Me
  loc_AB3FBA: VCallAd Control_ID_cmdCancelar
  loc_AB3FBD: FStAdFunc var_88
  loc_AB3FC0: FLdPr var_88
  loc_AB3FC3:  = Me.Value
  loc_AB3FC8: FLdI2 var_8A
  loc_AB3FCB: NotI4
  loc_AB3FCC: FLdRfVar var_92
  loc_AB3FCF: FLdPr Me
  loc_AB3FD2: VCallAd Control_ID_CodiEsciTxt
  loc_AB3FD5: FStAdFunc var_90
  loc_AB3FD8: FLdPr var_90
  loc_AB3FDB:  = Me.Enabled
  loc_AB3FE0: FLdI2 var_92
  loc_AB3FE3: AndI4
  loc_AB3FE4: FFreeAd var_88 = ""
  loc_AB3FEB: BranchF loc_AB4092
  loc_AB3FEE: FLdRfVar var_98
  loc_AB3FF1: FLdPr Me
  loc_AB3FF4: VCallAd Control_ID_CodiEsciTxt
  loc_AB3FF7: FStAdFunc var_88
  loc_AB3FFA: FLdPr var_88
  loc_AB3FFD:  = Me.Text
  loc_AB4002: ILdRf var_98
  loc_AB4005: ImpAdCallI2 Proc_18_44_A56C78()
  loc_AB400A: FStStrNoPop var_9C
  loc_AB400D: FLdPr Me
  loc_AB4010: MemStStrCopy
  loc_AB4014: FFreeStr var_98 = ""
  loc_AB401B: FFree1Ad var_88
  loc_AB401E: FLdPr Me
  loc_AB4021: MemLdStr global_60
  loc_AB4024: LitStr vbNullString
  loc_AB4027: NeStr
  loc_AB4029: BranchF loc_AB4052
  loc_AB402C: FLdPr Me
  loc_AB402F: MemLdStr global_60
  loc_AB4032: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB4037: FLdPr Me
  loc_AB403A: VCallAd Control_ID_CodiEsciTxt
  loc_AB403D: CVarAd
  loc_AB4041: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB4046: FFree1Var var_AC = ""
  loc_AB4049: LitI2_Byte &HFF
  loc_AB404B: IStI2 Cancel
  loc_AB404E: ExitProcHresult
  loc_AB404F: Branch loc_AB4092
  loc_AB4052: FLdRfVar var_98
  loc_AB4055: FLdPr Me
  loc_AB4058: VCallAd Control_ID_CodiEsciTxt
  loc_AB405B: FStAdFunc var_88
  loc_AB405E: FLdPr var_88
  loc_AB4061:  = Me.Text
  loc_AB4066: ILdRf var_98
  loc_AB4069: CUI1Str
  loc_AB406B: ImpAdCallI2 Proc_270_45_A7B690()
  loc_AB4070: FStStrNoPop var_9C
  loc_AB4073: FLdPr Me
  loc_AB4076: VCallAd Control_ID_DetaEsciLbl
  loc_AB4079: FStAdFunc var_90
  loc_AB407C: FLdPr var_90
  loc_AB407F: Me.Caption = from_stack_1
  loc_AB4084: FFreeStr var_98 = ""
  loc_AB408B: FFreeAd var_88 = ""
  loc_AB4092: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9BFB40
  'Data Table: 529364
  loc_9BFB2C: FLdPr Me
  loc_9BFB2F: VCallAd Control_ID_CucuPersTxt
  loc_9BFB32: CVarAd
  loc_9BFB36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFB3B: FFree1Var var_94 = ""
  loc_9BFB3E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9DB08C
  'Data Table: 529364
  loc_9DB074: LitStr "1234567890"
  loc_9DB077: FStStrCopy var_88
  loc_9DB07A: FLdRfVar var_88
  loc_9DB07D: ILdRf KeyAscii
  loc_9DB080: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB085: IStI2 KeyAscii
  loc_9DB088: FFree1Str var_88
  loc_9DB08B: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'AE45F0
  'Data Table: 529364
  loc_AE448C: FLdRfVar var_8A
  loc_AE448F: FLdPr Me
  loc_AE4492: VCallAd Control_ID_cmdCancelar
  loc_AE4495: FStAdFunc var_88
  loc_AE4498: FLdPr var_88
  loc_AE449B:  = Me.Value
  loc_AE44A0: FLdI2 var_8A
  loc_AE44A3: NotI4
  loc_AE44A4: FLdRfVar var_92
  loc_AE44A7: FLdPr Me
  loc_AE44AA: VCallAd Control_ID_CucuPersTxt
  loc_AE44AD: FStAdFunc var_90
  loc_AE44B0: FLdPr var_90
  loc_AE44B3:  = Me.Enabled
  loc_AE44B8: FLdI2 var_92
  loc_AE44BB: AndI4
  loc_AE44BC: FFreeAd var_88 = ""
  loc_AE44C3: BranchF loc_AE45EC
  loc_AE44C6: FLdRfVar var_98
  loc_AE44C9: FLdPr Me
  loc_AE44CC: VCallAd Control_ID_CucuPersTxt
  loc_AE44CF: FStAdFunc var_88
  loc_AE44D2: FLdPr var_88
  loc_AE44D5:  = Me.Text
  loc_AE44DA: ILdRf var_98
  loc_AE44DD: ImpAdCallI2 Proc_18_125_AFE004()
  loc_AE44E2: FStStrNoPop var_9C
  loc_AE44E5: FLdPr Me
  loc_AE44E8: MemStStrCopy
  loc_AE44EC: FFreeStr var_98 = ""
  loc_AE44F3: FFree1Ad var_88
  loc_AE44F6: FLdPr Me
  loc_AE44F9: MemLdStr global_60
  loc_AE44FC: LitStr vbNullString
  loc_AE44FF: NeStr
  loc_AE4501: BranchF loc_AE4529
  loc_AE4504: FLdPr Me
  loc_AE4507: MemLdStr global_60
  loc_AE450A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE450F: FLdPr Me
  loc_AE4512: VCallAd Control_ID_CucuPersTxt
  loc_AE4515: CVarAd
  loc_AE4519: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE451E: FFree1Var var_AC = ""
  loc_AE4521: LitI2_Byte &HFF
  loc_AE4523: IStI2 Cancel
  loc_AE4526: Branch loc_AE45EC
  loc_AE4529: FLdRfVar var_9C
  loc_AE452C: FLdRfVar var_98
  loc_AE452F: FLdPr Me
  loc_AE4532: VCallAd Control_ID_CucuPersTxt
  loc_AE4535: FStAdFunc var_88
  loc_AE4538: FLdPr var_88
  loc_AE453B:  = Me.Text
  loc_AE4540: ILdRf var_98
  loc_AE4543: FLdPr Me
  loc_AE4546: MemLdRfVar from_stack_1.global_52
  loc_AE4549: NewIfNullPr clspersonas
  loc_AE454C: from_stack_2v = clspersonas.ValidaClave(from_stack_1v)
  loc_AE4551: ILdRf var_9C
  loc_AE4554: FLdPr Me
  loc_AE4557: MemStStrCopy
  loc_AE455B: FFreeStr var_98 = ""
  loc_AE4562: FFree1Ad var_88
  loc_AE4565: FLdPr Me
  loc_AE4568: MemLdStr global_60
  loc_AE456B: LitStr vbNullString
  loc_AE456E: NeStr
  loc_AE4570: BranchF loc_AE4595
  loc_AE4573: FLdPr Me
  loc_AE4576: MemLdStr global_60
  loc_AE4579: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE457E: FLdPr Me
  loc_AE4581: VCallAd Control_ID_CucuPersTxt
  loc_AE4584: CVarAd
  loc_AE4588: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE458D: FFree1Var var_AC = ""
  loc_AE4590: LitI2_Byte &HFF
  loc_AE4592: IStI2 Cancel
  loc_AE4595: FLdRfVar var_98
  loc_AE4598: FLdPr Me
  loc_AE459B: VCallAd Control_ID_CucuPersTxt
  loc_AE459E: FStAdFunc var_88
  loc_AE45A1: FLdPr var_88
  loc_AE45A4:  = Me.Text
  loc_AE45A9: LitVarI2 var_CC, 8
  loc_AE45AE: LitI4 3
  loc_AE45B3: FLdZeroAd var_98
  loc_AE45B6: CVarStr var_AC
  loc_AE45B9: FLdRfVar var_DC
  loc_AE45BC: ImpAdCallFPR4  = Mid(, , )
  loc_AE45C1: FLdRfVar var_DC
  loc_AE45C4: CStrVarVal var_9C
  loc_AE45C8: FLdPr Me
  loc_AE45CB: VCallAd Control_ID_NudoPersTxt
  loc_AE45CE: FStAdFunc var_90
  loc_AE45D1: FLdPr var_90
  loc_AE45D4: Me.Text = from_stack_1
  loc_AE45D9: FFree1Str var_9C
  loc_AE45DC: FFreeAd var_88 = ""
  loc_AE45E3: FFreeVar var_AC = "": var_CC = ""
  loc_AE45EC: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_GotFocus() '9C0008
  'Data Table: 529364
  loc_9BFFF4: FLdPr Me
  loc_9BFFF7: VCallAd Control_ID_CodiPofiTxt
  loc_9BFFFA: CVarAd
  loc_9BFFFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0003: FFree1Var var_94 = ""
  loc_9C0006: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_KeyPress(KeyAscii As Integer) '9DB974
  'Data Table: 529364
  loc_9DB95C: LitStr "0123456789"
  loc_9DB95F: FStStrCopy var_88
  loc_9DB962: FLdRfVar var_88
  loc_9DB965: ILdRf KeyAscii
  loc_9DB968: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB96D: IStI2 KeyAscii
  loc_9DB970: FFree1Str var_88
  loc_9DB973: ExitProcHresult
End Sub

Private Sub CodiPofiTxt_Validate(Cancel As Boolean) 'AB41B8
  'Data Table: 529364
  loc_AB40D8: FLdRfVar var_8A
  loc_AB40DB: FLdPr Me
  loc_AB40DE: VCallAd Control_ID_cmdCancelar
  loc_AB40E1: FStAdFunc var_88
  loc_AB40E4: FLdPr var_88
  loc_AB40E7:  = Me.Value
  loc_AB40EC: FLdI2 var_8A
  loc_AB40EF: NotI4
  loc_AB40F0: FLdRfVar var_92
  loc_AB40F3: FLdPr Me
  loc_AB40F6: VCallAd Control_ID_CodiPofiTxt
  loc_AB40F9: FStAdFunc var_90
  loc_AB40FC: FLdPr var_90
  loc_AB40FF:  = Me.Enabled
  loc_AB4104: FLdI2 var_92
  loc_AB4107: AndI4
  loc_AB4108: FFreeAd var_88 = ""
  loc_AB410F: BranchF loc_AB41B6
  loc_AB4112: FLdRfVar var_98
  loc_AB4115: FLdPr Me
  loc_AB4118: VCallAd Control_ID_CodiPofiTxt
  loc_AB411B: FStAdFunc var_88
  loc_AB411E: FLdPr var_88
  loc_AB4121:  = Me.Text
  loc_AB4126: ILdRf var_98
  loc_AB4129: ImpAdCallI2 Proc_18_62_A592A0()
  loc_AB412E: FStStrNoPop var_9C
  loc_AB4131: FLdPr Me
  loc_AB4134: MemStStrCopy
  loc_AB4138: FFreeStr var_98 = ""
  loc_AB413F: FFree1Ad var_88
  loc_AB4142: FLdPr Me
  loc_AB4145: MemLdStr global_60
  loc_AB4148: LitStr vbNullString
  loc_AB414B: NeStr
  loc_AB414D: BranchF loc_AB4176
  loc_AB4150: FLdPr Me
  loc_AB4153: MemLdStr global_60
  loc_AB4156: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB415B: FLdPr Me
  loc_AB415E: VCallAd Control_ID_CodiPofiTxt
  loc_AB4161: CVarAd
  loc_AB4165: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB416A: FFree1Var var_AC = ""
  loc_AB416D: LitI2_Byte &HFF
  loc_AB416F: IStI2 Cancel
  loc_AB4172: ExitProcHresult
  loc_AB4173: Branch loc_AB41B6
  loc_AB4176: FLdRfVar var_98
  loc_AB4179: FLdPr Me
  loc_AB417C: VCallAd Control_ID_CodiPofiTxt
  loc_AB417F: FStAdFunc var_88
  loc_AB4182: FLdPr var_88
  loc_AB4185:  = Me.Text
  loc_AB418A: ILdRf var_98
  loc_AB418D: CI2Str
  loc_AB418F: ImpAdCallI2 Proc_270_74_A7B188()
  loc_AB4194: FStStrNoPop var_9C
  loc_AB4197: FLdPr Me
  loc_AB419A: VCallAd Control_ID_DetaPofiLbl
  loc_AB419D: FStAdFunc var_90
  loc_AB41A0: FLdPr var_90
  loc_AB41A3: Me.Caption = from_stack_1
  loc_AB41A8: FFreeStr var_98 = ""
  loc_AB41AF: FFreeAd var_88 = ""
  loc_AB41B6: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BE7F70
  'Data Table: 529364
  loc_BE78A4: ILdRf Button
  loc_BE78A7: FStAd var_88 
  loc_BE78AB: FLdRfVar var_8C
  loc_BE78AE: FLdPr var_88
  loc_BE78B1:  = Me.Key
  loc_BE78B6: FLdZeroAd var_8C
  loc_BE78B9: FStStr var_90
  loc_BE78BC: ILdRf var_90
  loc_BE78BF: LitStr "btnCrear"
  loc_BE78C2: EqStr
  loc_BE78C4: BranchF loc_BE78CA
  loc_BE78C7: Branch loc_BE7F6D
  loc_BE78CA: ILdRf var_90
  loc_BE78CD: LitStr "btnModificar"
  loc_BE78D0: EqStr
  loc_BE78D2: BranchF loc_BE7B4B
  loc_BE78D5: FLdRfVar var_94
  loc_BE78D8: FLdPr Me
  loc_BE78DB: MemLdRfVar from_stack_1.global_52
  loc_BE78DE: NewIfNullPr clspersonas
  loc_BE78E1: from_stack_1 = clspersonas.RecordCount
  loc_BE78E6: ILdRf var_94
  loc_BE78E9: LitI4 0
  loc_BE78EE: GtI4
  loc_BE78EF: BranchF loc_BE7B48
  loc_BE78F2: LitI2_Byte 2
  loc_BE78F4: FLdPr Me
  loc_BE78F7: MemStI2 global_56
  loc_BE78FA: ILdRf Me
  loc_BE78FD: CastAd
  loc_BE7900: FStAdFunc var_98
  loc_BE7903: FLdRfVar var_98
  loc_BE7906: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BE790B: FFree1Ad var_98
  loc_BE790E: LitI4 0
  loc_BE7913: LitI4 0
  loc_BE7918: FLdRfVar var_9C
  loc_BE791B: Redim
  loc_BE7925: FLdPr Me
  loc_BE7928: VCallAd Control_ID_dgdABMS
  loc_BE792B: CVarAd
  loc_BE792F: ParmAry1St
  loc_BE7935: FLdRfVar var_9C
  loc_BE7938: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BE793D: FLdRfVar var_9C
  loc_BE7940: Erase
  loc_BE7941: ILdRf Me
  loc_BE7944: CastAd
  loc_BE7947: FStAdFunc var_98
  loc_BE794A: FLdRfVar var_98
  loc_BE794D: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BE7952: FFree1Ad var_98
  loc_BE7955: LitI4 0
  loc_BE795A: LitI4 &H1C
  loc_BE795F: FLdRfVar var_9C
  loc_BE7962: Redim
  loc_BE796C: FLdPr Me
  loc_BE796F: VCallAd Control_ID_DetaPersTxt
  loc_BE7972: CVarAd
  loc_BE7976: ParmAry1St
  loc_BE797C: FLdPr Me
  loc_BE797F: VCallAd Control_ID_JuriPersChk
  loc_BE7982: CVarAd
  loc_BE7986: ParmAry1St
  loc_BE798C: FLdPr Me
  loc_BE798F: VCallAd Control_ID_TelePersTxt
  loc_BE7992: CVarAd
  loc_BE7996: ParmAry1St
  loc_BE799C: FLdPr Me
  loc_BE799F: VCallAd Control_ID_CeluPersTxt
  loc_BE79A2: CVarAd
  loc_BE79A6: ParmAry1St
  loc_BE79AC: FLdPr Me
  loc_BE79AF: VCallAd Control_ID_FaxsPersTxt
  loc_BE79B2: CVarAd
  loc_BE79B6: ParmAry1St
  loc_BE79BC: FLdPr Me
  loc_BE79BF: VCallAd Control_ID_MailPersTxt
  loc_BE79C2: CVarAd
  loc_BE79C6: ParmAry1St
  loc_BE79CC: FLdPr Me
  loc_BE79CF: VCallAd Control_ID_CodiTidoTxt
  loc_BE79D2: CVarAd
  loc_BE79D6: ParmAry1St
  loc_BE79DC: FLdPr Me
  loc_BE79DF: VCallAd Control_ID_CodiTidoCmd
  loc_BE79E2: CVarAd
  loc_BE79E6: ParmAry1St
  loc_BE79EC: FLdPr Me
  loc_BE79EF: VCallAd Control_ID_NudoPersTxt
  loc_BE79F2: CVarAd
  loc_BE79F6: ParmAry1St
  loc_BE79FC: FLdPr Me
  loc_BE79FF: VCallAd Control_ID_FenaPersMsk
  loc_BE7A02: CVarAd
  loc_BE7A06: ParmAry1St
  loc_BE7A0C: FLdPr Me
  loc_BE7A0F: VCallAd Control_ID_FenaPersCmd
  loc_BE7A12: CVarAd
  loc_BE7A16: ParmAry1St
  loc_BE7A1C: FLdPr Me
  loc_BE7A1F: VCallAd Control_ID_CodiEsciTxt
  loc_BE7A22: CVarAd
  loc_BE7A26: ParmAry1St
  loc_BE7A2C: FLdPr Me
  loc_BE7A2F: VCallAd Control_ID_CodiEsciCmd
  loc_BE7A32: CVarAd
  loc_BE7A36: ParmAry1St
  loc_BE7A3C: FLdPr Me
  loc_BE7A3F: VCallAd Control_ID_CodiPofiTxt
  loc_BE7A42: CVarAd
  loc_BE7A46: ParmAry1St
  loc_BE7A4C: FLdPr Me
  loc_BE7A4F: VCallAd Control_ID_CodiPofiCmd
  loc_BE7A52: CVarAd
  loc_BE7A56: ParmAry1St
  loc_BE7A5C: FLdPr Me
  loc_BE7A5F: VCallAd Control_ID_CocrPersTxt
  loc_BE7A62: CVarAd
  loc_BE7A66: ParmAry1St
  loc_BE7A6C: FLdPr Me
  loc_BE7A6F: VCallAd Control_ID_CocrPersCmd
  loc_BE7A72: CVarAd
  loc_BE7A76: ParmAry1St
  loc_BE7A7C: FLdPr Me
  loc_BE7A7F: VCallAd Control_ID_DecrPersTxt
  loc_BE7A82: CVarAd
  loc_BE7A86: ParmAry1St
  loc_BE7A8C: FLdPr Me
  loc_BE7A8F: VCallAd Control_ID_NurePersTxt
  loc_BE7A92: CVarAd
  loc_BE7A96: ParmAry1St
  loc_BE7A9C: FLdPr Me
  loc_BE7A9F: VCallAd Control_ID_CobrPersTxt
  loc_BE7AA2: CVarAd
  loc_BE7AA6: ParmAry1St
  loc_BE7AAC: FLdPr Me
  loc_BE7AAF: VCallAd Control_ID_CobrPersCmd
  loc_BE7AB2: CVarAd
  loc_BE7AB6: ParmAry1St
  loc_BE7ABC: FLdPr Me
  loc_BE7ABF: VCallAd Control_ID_DebrPersTxt
  loc_BE7AC2: CVarAd
  loc_BE7AC6: ParmAry1St
  loc_BE7ACC: FLdPr Me
  loc_BE7ACF: VCallAd Control_ID_CarePersTxt
  loc_BE7AD2: CVarAd
  loc_BE7AD6: ParmAry1St
  loc_BE7ADC: FLdPr Me
  loc_BE7ADF: VCallAd Control_ID_MarePersTxt
  loc_BE7AE2: CVarAd
  loc_BE7AE6: ParmAry1St
  loc_BE7AEC: FLdPr Me
  loc_BE7AEF: VCallAd Control_ID_UbrePersTxt
  loc_BE7AF2: CVarAd
  loc_BE7AF6: ParmAry1St
  loc_BE7AFC: FLdPr Me
  loc_BE7AFF: VCallAd Control_ID_ColrPersTxt
  loc_BE7B02: CVarAd
  loc_BE7B06: ParmAry1St
  loc_BE7B0C: FLdPr Me
  loc_BE7B0F: VCallAd Control_ID_ColrPersCmd
  loc_BE7B12: CVarAd
  loc_BE7B16: ParmAry1St
  loc_BE7B1C: FLdPr Me
  loc_BE7B1F: VCallAd Control_ID_DelrPersTxt
  loc_BE7B22: CVarAd
  loc_BE7B26: ParmAry1St
  loc_BE7B2C: FLdPr Me
  loc_BE7B2F: VCallAd Control_ID_CoprPersTxt
  loc_BE7B32: CVarAd
  loc_BE7B36: ParmAry1St
  loc_BE7B3C: FLdRfVar var_9C
  loc_BE7B3F: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BE7B44: FLdRfVar var_9C
  loc_BE7B47: Erase
  loc_BE7B48: Branch loc_BE7F6D
  loc_BE7B4B: ILdRf var_90
  loc_BE7B4E: LitStr "btnEliminar"
  loc_BE7B51: EqStr
  loc_BE7B53: BranchF loc_BE7B59
  loc_BE7B56: Branch loc_BE7F6D
  loc_BE7B59: ILdRf var_90
  loc_BE7B5C: LitStr "btnGuardar"
  loc_BE7B5F: EqStr
  loc_BE7B61: BranchF loc_BE7E69
  loc_BE7B64: LitI2_Byte &HFF
  loc_BE7B66: PopTmpLdAd2 var_26E
  loc_BE7B69: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BE7B6E: FLdPr Me
  loc_BE7B71: MemLdStr global_60
  loc_BE7B74: LitStr vbNullString
  loc_BE7B77: NeStr
  loc_BE7B79: BranchF loc_BE7B7D
  loc_BE7B7C: ExitProcHresult
  loc_BE7B7D: LitI2_Byte &HFF
  loc_BE7B7F: PopTmpLdAd2 var_26E
  loc_BE7B82: Call DetaPersTxt_Validate(from_stack_1v)
  loc_BE7B87: FLdPr Me
  loc_BE7B8A: MemLdStr global_60
  loc_BE7B8D: LitStr vbNullString
  loc_BE7B90: NeStr
  loc_BE7B92: BranchF loc_BE7B96
  loc_BE7B95: ExitProcHresult
  loc_BE7B96: LitI2_Byte &HFF
  loc_BE7B98: PopTmpLdAd2 var_26E
  loc_BE7B9B: Call CodiPofiTxt_Validate(from_stack_1v)
  loc_BE7BA0: FLdPr Me
  loc_BE7BA3: MemLdStr global_60
  loc_BE7BA6: LitStr vbNullString
  loc_BE7BA9: NeStr
  loc_BE7BAB: BranchF loc_BE7BAF
  loc_BE7BAE: ExitProcHresult
  loc_BE7BAF: FLdPr Me
  loc_BE7BB2: MemLdI2 global_56
  loc_BE7BB5: FStI2 var_270
  loc_BE7BB8: FLdI2 var_270
  loc_BE7BBB: LitI2_Byte 1
  loc_BE7BBD: EqI2
  loc_BE7BBE: BranchF loc_BE7BC4
  loc_BE7BC1: Branch loc_BE7E61
  loc_BE7BC4: FLdI2 var_270
  loc_BE7BC7: LitI2_Byte 2
  loc_BE7BC9: EqI2
  loc_BE7BCA: BranchF loc_BE7E61
  loc_BE7BCD: FLdRfVar var_8C
  loc_BE7BD0: FLdPr Me
  loc_BE7BD3: VCallAd Control_ID_CucuPersTxt
  loc_BE7BD6: FStAdFunc var_98
  loc_BE7BD9: FLdPr var_98
  loc_BE7BDC:  = Me.Text
  loc_BE7BE1: FLdRfVar var_278
  loc_BE7BE4: FLdPr Me
  loc_BE7BE7: VCallAd Control_ID_DetaPersTxt
  loc_BE7BEA: FStAdFunc var_274
  loc_BE7BED: FLdPr var_274
  loc_BE7BF0:  = Me.Text
  loc_BE7BF5: FLdRfVar var_26E
  loc_BE7BF8: FLdPr Me
  loc_BE7BFB: VCallAd Control_ID_JuriPersChk
  loc_BE7BFE: FStAdFunc var_27C
  loc_BE7C01: FLdPr var_27C
  loc_BE7C04:  = Me.Value
  loc_BE7C09: FLdRfVar var_284
  loc_BE7C0C: FLdPr Me
  loc_BE7C0F: VCallAd Control_ID_TelePersTxt
  loc_BE7C12: FStAdFunc var_280
  loc_BE7C15: FLdPr var_280
  loc_BE7C18:  = Me.Text
  loc_BE7C1D: FLdRfVar var_28C
  loc_BE7C20: FLdPr Me
  loc_BE7C23: VCallAd Control_ID_CeluPersTxt
  loc_BE7C26: FStAdFunc var_288
  loc_BE7C29: FLdPr var_288
  loc_BE7C2C:  = Me.Text
  loc_BE7C31: FLdRfVar var_294
  loc_BE7C34: FLdPr Me
  loc_BE7C37: VCallAd Control_ID_FaxsPersTxt
  loc_BE7C3A: FStAdFunc var_290
  loc_BE7C3D: FLdPr var_290
  loc_BE7C40:  = Me.Text
  loc_BE7C45: FLdRfVar var_29C
  loc_BE7C48: FLdPr Me
  loc_BE7C4B: VCallAd Control_ID_MailPersTxt
  loc_BE7C4E: FStAdFunc var_298
  loc_BE7C51: FLdPr var_298
  loc_BE7C54:  = Me.Text
  loc_BE7C59: FLdRfVar var_2A4
  loc_BE7C5C: FLdPr Me
  loc_BE7C5F: VCallAd Control_ID_CodiTidoTxt
  loc_BE7C62: FStAdFunc var_2A0
  loc_BE7C65: FLdPr var_2A0
  loc_BE7C68:  = Me.Text
  loc_BE7C6D: FLdRfVar var_2AC
  loc_BE7C70: FLdPr Me
  loc_BE7C73: VCallAd Control_ID_NudoPersTxt
  loc_BE7C76: FStAdFunc var_2A8
  loc_BE7C79: FLdPr var_2A8
  loc_BE7C7C:  = Me.Text
  loc_BE7C81: FLdPr Me
  loc_BE7C84: VCallAd Control_ID_FenaPersMsk
  loc_BE7C87: FStAdFunc var_2B0
  loc_BE7C8A: FLdPr var_2B0
  loc_BE7C8D: LateIdLdVar var_AC DispID_15 0
  loc_BE7C94: PopAd
  loc_BE7C96: FLdRfVar var_2B8
  loc_BE7C99: FLdPr Me
  loc_BE7C9C: VCallAd Control_ID_CodiEsciTxt
  loc_BE7C9F: FStAdFunc var_2B4
  loc_BE7CA2: FLdPr var_2B4
  loc_BE7CA5:  = Me.Text
  loc_BE7CAA: FLdRfVar var_2C0
  loc_BE7CAD: FLdPr Me
  loc_BE7CB0: VCallAd Control_ID_CodiPofiTxt
  loc_BE7CB3: FStAdFunc var_2BC
  loc_BE7CB6: FLdPr var_2BC
  loc_BE7CB9:  = Me.Text
  loc_BE7CBE: FLdRfVar var_2C8
  loc_BE7CC1: FLdPr Me
  loc_BE7CC4: VCallAd Control_ID_CocrPersTxt
  loc_BE7CC7: FStAdFunc var_2C4
  loc_BE7CCA: FLdPr var_2C4
  loc_BE7CCD:  = Me.Text
  loc_BE7CD2: FLdRfVar var_2D0
  loc_BE7CD5: FLdPr Me
  loc_BE7CD8: VCallAd Control_ID_DecrPersTxt
  loc_BE7CDB: FStAdFunc var_2CC
  loc_BE7CDE: FLdPr var_2CC
  loc_BE7CE1:  = Me.Text
  loc_BE7CE6: FLdRfVar var_2D8
  loc_BE7CE9: FLdPr Me
  loc_BE7CEC: VCallAd Control_ID_NurePersTxt
  loc_BE7CEF: FStAdFunc var_2D4
  loc_BE7CF2: FLdPr var_2D4
  loc_BE7CF5:  = Me.Text
  loc_BE7CFA: FLdRfVar var_2E0
  loc_BE7CFD: FLdPr Me
  loc_BE7D00: VCallAd Control_ID_CobrPersTxt
  loc_BE7D03: FStAdFunc var_2DC
  loc_BE7D06: FLdPr var_2DC
  loc_BE7D09:  = Me.Text
  loc_BE7D0E: FLdRfVar var_314
  loc_BE7D11: FLdPr Me
  loc_BE7D14: VCallAd Control_ID_DebrPersTxt
  loc_BE7D17: FStAdFunc var_310
  loc_BE7D1A: FLdPr var_310
  loc_BE7D1D:  = Me.Text
  loc_BE7D22: FLdRfVar var_2E8
  loc_BE7D25: FLdPr Me
  loc_BE7D28: VCallAd Control_ID_MarePersTxt
  loc_BE7D2B: FStAdFunc var_2E4
  loc_BE7D2E: FLdPr var_2E4
  loc_BE7D31:  = Me.Text
  loc_BE7D36: FLdRfVar var_2F0
  loc_BE7D39: FLdPr Me
  loc_BE7D3C: VCallAd Control_ID_CarePersTxt
  loc_BE7D3F: FStAdFunc var_2EC
  loc_BE7D42: FLdPr var_2EC
  loc_BE7D45:  = Me.Text
  loc_BE7D4A: FLdRfVar var_2F8
  loc_BE7D4D: FLdPr Me
  loc_BE7D50: VCallAd Control_ID_UbrePersTxt
  loc_BE7D53: FStAdFunc var_2F4
  loc_BE7D56: FLdPr var_2F4
  loc_BE7D59:  = Me.Text
  loc_BE7D5E: FLdRfVar var_300
  loc_BE7D61: FLdPr Me
  loc_BE7D64: VCallAd Control_ID_ColrPersTxt
  loc_BE7D67: FStAdFunc var_2FC
  loc_BE7D6A: FLdPr var_2FC
  loc_BE7D6D:  = Me.Text
  loc_BE7D72: FLdRfVar var_308
  loc_BE7D75: FLdPr Me
  loc_BE7D78: VCallAd Control_ID_DelrPersTxt
  loc_BE7D7B: FStAdFunc var_304
  loc_BE7D7E: FLdPr var_304
  loc_BE7D81:  = Me.Text
  loc_BE7D86: FLdRfVar var_31C
  loc_BE7D89: FLdPr Me
  loc_BE7D8C: VCallAd Control_ID_CoprPersTxt
  loc_BE7D8F: FStAdFunc var_318
  loc_BE7D92: FLdPr var_318
  loc_BE7D95:  = Me.Text
  loc_BE7D9A: ILdRf var_31C
  loc_BE7D9D: ILdRf var_308
  loc_BE7DA0: ILdRf var_300
  loc_BE7DA3: ILdRf var_2F8
  loc_BE7DA6: ILdRf var_2F0
  loc_BE7DA9: ILdRf var_2E8
  loc_BE7DAC: ILdRf var_314
  loc_BE7DAF: ILdRf var_2E0
  loc_BE7DB2: CI2Str
  loc_BE7DB4: ILdRf var_2D8
  loc_BE7DB7: CI4Str
  loc_BE7DB8: ILdRf var_2D0
  loc_BE7DBB: ILdRf var_2C8
  loc_BE7DBE: CI4Str
  loc_BE7DBF: ILdRf var_2C0
  loc_BE7DC2: CUI1Str
  loc_BE7DC4: ILdRf var_2B8
  loc_BE7DC7: CUI1Str
  loc_BE7DC9: FLdRfVar var_AC
  loc_BE7DCC: CStrVarTmp
  loc_BE7DCD: FStStrNoPop var_30C
  loc_BE7DD0: ILdRf var_2AC
  loc_BE7DD3: CI4Str
  loc_BE7DD4: ILdRf var_2A4
  loc_BE7DD7: CUI1Str
  loc_BE7DD9: ILdRf var_29C
  loc_BE7DDC: ILdRf var_294
  loc_BE7DDF: ILdRf var_28C
  loc_BE7DE2: ILdRf var_284
  loc_BE7DE5: FLdI2 var_26E
  loc_BE7DE8: CUI1I2
  loc_BE7DEA: ILdRf var_278
  loc_BE7DED: ILdRf var_8C
  loc_BE7DF0: FLdPr Me
  loc_BE7DF3: MemLdRfVar from_stack_1.global_52
  loc_BE7DF6: NewIfNullPr clspersonas
  loc_BE7DF9: Call clspersonas.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BE7DFE: FFreeStr var_8C = "": var_278 = "": var_284 = "": var_28C = "": var_294 = "": var_29C = "": var_2A4 = "": var_2AC = "": var_30C = "": var_2B8 = "": var_2C0 = "": var_2C8 = "": var_2D0 = "": var_2D8 = "": var_2E0 = "": var_314 = "": var_2E8 = "": var_2F0 = "": var_2F8 = "": var_300 = "": var_308 = ""
  loc_BE7E2D: FFreeAd var_98 = "": var_274 = "": var_27C = "": var_280 = "": var_288 = "": var_290 = "": var_298 = "": var_2A0 = "": var_2A8 = "": var_2B0 = "": var_2B4 = "": var_2BC = "": var_2C4 = "": var_2CC = "": var_2D4 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_2F4 = "": var_2FC = "": var_304 = "": var_310 = ""
  loc_BE7E5E: FFree1Var var_AC = ""
  loc_BE7E61: Call cmdCancelar_Click()
  loc_BE7E66: Branch loc_BE7F6D
  loc_BE7E69: ILdRf var_90
  loc_BE7E6C: LitStr "btnCancelar"
  loc_BE7E6F: EqStr
  loc_BE7E71: BranchF loc_BE7E7C
  loc_BE7E74: Call cmdCancelar_Click()
  loc_BE7E79: Branch loc_BE7F6D
  loc_BE7E7C: ILdRf var_90
  loc_BE7E7F: LitStr "btnPrimero"
  loc_BE7E82: EqStr
  loc_BE7E84: BranchF loc_BE7E98
  loc_BE7E87: FLdPr Me
  loc_BE7E8A: MemLdRfVar from_stack_1.global_52
  loc_BE7E8D: NewIfNullPr clspersonas
  loc_BE7E90: Call clspersonas.MoveFirst()
  loc_BE7E95: Branch loc_BE7F6D
  loc_BE7E98: ILdRf var_90
  loc_BE7E9B: LitStr "btnAnterior"
  loc_BE7E9E: EqStr
  loc_BE7EA0: BranchF loc_BE7EB4
  loc_BE7EA3: FLdPr Me
  loc_BE7EA6: MemLdRfVar from_stack_1.global_52
  loc_BE7EA9: NewIfNullPr clspersonas
  loc_BE7EAC: Call clspersonas.MovePrevious()
  loc_BE7EB1: Branch loc_BE7F6D
  loc_BE7EB4: ILdRf var_90
  loc_BE7EB7: LitStr "btnSiguiente"
  loc_BE7EBA: EqStr
  loc_BE7EBC: BranchF loc_BE7ED0
  loc_BE7EBF: FLdPr Me
  loc_BE7EC2: MemLdRfVar from_stack_1.global_52
  loc_BE7EC5: NewIfNullPr clspersonas
  loc_BE7EC8: Call clspersonas.MoveNext()
  loc_BE7ECD: Branch loc_BE7F6D
  loc_BE7ED0: ILdRf var_90
  loc_BE7ED3: LitStr "btnUltimo"
  loc_BE7ED6: EqStr
  loc_BE7ED8: BranchF loc_BE7EEC
  loc_BE7EDB: FLdPr Me
  loc_BE7EDE: MemLdRfVar from_stack_1.global_52
  loc_BE7EE1: NewIfNullPr clspersonas
  loc_BE7EE4: Call clspersonas.MoveLast()
  loc_BE7EE9: Branch loc_BE7F6D
  loc_BE7EEC: ILdRf var_90
  loc_BE7EEF: LitStr "btnFiltrar"
  loc_BE7EF2: EqStr
  loc_BE7EF4: BranchF loc_BE7EFA
  loc_BE7EF7: Branch loc_BE7F6D
  loc_BE7EFA: ILdRf var_90
  loc_BE7EFD: LitStr "btnBuscar"
  loc_BE7F00: EqStr
  loc_BE7F02: BranchF loc_BE7F08
  loc_BE7F05: Branch loc_BE7F6D
  loc_BE7F08: ILdRf var_90
  loc_BE7F0B: LitStr "btnImprimir"
  loc_BE7F0E: EqStr
  loc_BE7F10: BranchF loc_BE7F16
  loc_BE7F13: Branch loc_BE7F6D
  loc_BE7F16: ILdRf var_90
  loc_BE7F19: LitStr "btnAyuda"
  loc_BE7F1C: EqStr
  loc_BE7F1E: BranchF loc_BE7F4D
  loc_BE7F21: LitVar_Missing var_DC
  loc_BE7F24: LitVar_Missing var_CC
  loc_BE7F27: LitVar_Missing var_BC
  loc_BE7F2A: LitI4 0
  loc_BE7F2F: LitVarStr var_32C, "Opcion no disponible en esta version."
  loc_BE7F34: FStVarCopyObj var_AC
  loc_BE7F37: FLdRfVar var_AC
  loc_BE7F3A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BE7F3F: FFreeVar var_AC = "": var_BC = "": var_CC = ""
  loc_BE7F4A: Branch loc_BE7F6D
  loc_BE7F4D: ILdRf var_90
  loc_BE7F50: LitStr "btnSalir"
  loc_BE7F53: EqStr
  loc_BE7F55: BranchF loc_BE7F6D
  loc_BE7F58: ILdRf Me
  loc_BE7F5B: FStAdNoPop
  loc_BE7F5F: ImpAdLdRf MemVar_D9C5D8
  loc_BE7F62: NewIfNullPr Global
  loc_BE7F65: Global.Unload from_stack_1
  loc_BE7F6A: FFree1Ad var_98
  loc_BE7F6D: ExitProcHresult
  loc_BE7F6E: FLdFPR4 var_1400
End Sub

Private Sub CodiTidoTxt_GotFocus() '9BFFC0
  'Data Table: 529364
  loc_9BFFAC: FLdPr Me
  loc_9BFFAF: VCallAd Control_ID_CodiTidoTxt
  loc_9BFFB2: CVarAd
  loc_9BFFB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFFBB: FFree1Var var_94 = ""
  loc_9BFFBE: ExitProcHresult
End Sub

Private Sub CodiTidoTxt_KeyPress(KeyAscii As Integer) '9DB7F8
  'Data Table: 529364
  loc_9DB7E0: LitStr "0123456789"
  loc_9DB7E3: FStStrCopy var_88
  loc_9DB7E6: FLdRfVar var_88
  loc_9DB7E9: ILdRf KeyAscii
  loc_9DB7EC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB7F1: IStI2 KeyAscii
  loc_9DB7F4: FFree1Str var_88
  loc_9DB7F7: ExitProcHresult
End Sub

Private Sub CodiTidoTxt_Validate(Cancel As Boolean) 'ADC31C
  'Data Table: 529364
  loc_ADC1D0: FLdRfVar var_8A
  loc_ADC1D3: FLdPr Me
  loc_ADC1D6: VCallAd Control_ID_cmdCancelar
  loc_ADC1D9: FStAdFunc var_88
  loc_ADC1DC: FLdPr var_88
  loc_ADC1DF:  = Me.Value
  loc_ADC1E4: FLdI2 var_8A
  loc_ADC1E7: NotI4
  loc_ADC1E8: FLdRfVar var_92
  loc_ADC1EB: FLdPr Me
  loc_ADC1EE: VCallAd Control_ID_CodiTidoTxt
  loc_ADC1F1: FStAdFunc var_90
  loc_ADC1F4: FLdPr var_90
  loc_ADC1F7:  = Me.Enabled
  loc_ADC1FC: FLdI2 var_92
  loc_ADC1FF: AndI4
  loc_ADC200: FFreeAd var_88 = ""
  loc_ADC207: BranchF loc_ADC318
  loc_ADC20A: FLdRfVar var_A8
  loc_ADC20D: FLdRfVar var_98
  loc_ADC210: FLdPr Me
  loc_ADC213: VCallAd Control_ID_CodiTidoTxt
  loc_ADC216: FStAdFunc var_88
  loc_ADC219: FLdPr var_88
  loc_ADC21C:  = Me.Text
  loc_ADC221: ILdRf var_98
  loc_ADC224: FLdPr Me
  loc_ADC227: MemLdRfVar from_stack_1.global_52
  loc_ADC22A: NewIfNullPr clspersonas
  loc_ADC22D: from_stack_2v = clspersonas.CodiTidoValidate(from_stack_1v)
  loc_ADC232: FLdRfVar var_A8
  loc_ADC235: CStrVarTmp
  loc_ADC236: FStStrNoPop var_AC
  loc_ADC239: FLdPr Me
  loc_ADC23C: MemStStrCopy
  loc_ADC240: FFreeStr var_98 = ""
  loc_ADC247: FFree1Ad var_88
  loc_ADC24A: FFree1Var var_A8 = ""
  loc_ADC24D: FLdPr Me
  loc_ADC250: MemLdStr global_60
  loc_ADC253: LitStr vbNullString
  loc_ADC256: NeStr
  loc_ADC258: BranchF loc_ADC281
  loc_ADC25B: FLdPr Me
  loc_ADC25E: MemLdStr global_60
  loc_ADC261: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADC266: FLdPr Me
  loc_ADC269: VCallAd Control_ID_CodiTidoTxt
  loc_ADC26C: CVarAd
  loc_ADC270: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADC275: FFree1Var var_A8 = ""
  loc_ADC278: LitI2_Byte &HFF
  loc_ADC27A: IStI2 Cancel
  loc_ADC27D: ExitProcHresult
  loc_ADC27E: Branch loc_ADC318
  loc_ADC281: FLdRfVar var_A8
  loc_ADC284: FLdRfVar var_98
  loc_ADC287: FLdPr Me
  loc_ADC28A: VCallAd Control_ID_CodiTidoTxt
  loc_ADC28D: FStAdFunc var_88
  loc_ADC290: FLdPr var_88
  loc_ADC293:  = Me.Text
  loc_ADC298: ILdRf var_98
  loc_ADC29B: CUI1Str
  loc_ADC29D: FLdPr Me
  loc_ADC2A0: MemLdRfVar from_stack_1.global_52
  loc_ADC2A3: NewIfNullPr clspersonas
  loc_ADC2A6: from_stack_2v = clspersonas.BuscaDetalleTipoDocumento(from_stack_1v)
  loc_ADC2AB: FLdRfVar var_A8
  loc_ADC2AE: CStrVarVal var_AC
  loc_ADC2B2: FLdPr Me
  loc_ADC2B5: VCallAd Control_ID_DetaTidoLbl
  loc_ADC2B8: FStAdFunc var_90
  loc_ADC2BB: FLdPr var_90
  loc_ADC2BE: Me.Caption = from_stack_1
  loc_ADC2C3: FFreeStr var_98 = ""
  loc_ADC2CA: FFreeAd var_88 = ""
  loc_ADC2D1: FFree1Var var_A8 = ""
  loc_ADC2D4: FLdPr Me
  loc_ADC2D7: MemLdStr global_60
  loc_ADC2DA: LitStr vbNullString
  loc_ADC2DD: NeStr
  loc_ADC2DF: BranchF loc_ADC318
  loc_ADC2E2: FLdPr Me
  loc_ADC2E5: MemLdStr global_60
  loc_ADC2E8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADC2ED: FLdRfVar var_98
  loc_ADC2F0: FLdPr Me
  loc_ADC2F3: VCallAd Control_ID_CodiTidoTxt
  loc_ADC2F6: FStAdFunc var_88
  loc_ADC2F9: FLdPr var_88
  loc_ADC2FC:  = Me.Text
  loc_ADC301: FLdZeroAd var_98
  loc_ADC304: CVarStr var_A8
  loc_ADC307: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ADC30C: FFree1Ad var_88
  loc_ADC30F: FFree1Var var_A8 = ""
  loc_ADC312: LitI2_Byte &HFF
  loc_ADC314: IStI2 Cancel
  loc_ADC317: ExitProcHresult
  loc_ADC318: ExitProcHresult
End Sub

Private Sub Form_Load() 'B67444
  'Data Table: 529364
  loc_B66FE4: LitI2_Byte 0
  loc_B66FE6: CR8I2
  loc_B66FE7: PopFPR4
  loc_B66FE8: FLdPr Me
  loc_B66FEB: Me.Left = from_stack_1s
  loc_B66FF0: LitI2_Byte 0
  loc_B66FF2: CR8I2
  loc_B66FF3: PopFPR4
  loc_B66FF4: FLdPr Me
  loc_B66FF7: Me.Top = from_stack_1s
  loc_B66FFC: Call Proc_179_63_A65144()
  loc_B67001: LitStr "CucuPers"
  loc_B67004: FLdPr Me
  loc_B67007: VCallAd Control_ID_CucuPersTxt
  loc_B6700A: FStAdFunc var_88
  loc_B6700D: FLdPr var_88
  loc_B67010: Me.DataField = from_stack_1
  loc_B67015: FFree1Ad var_88
  loc_B67018: LitStr "DetaPers"
  loc_B6701B: FLdPr Me
  loc_B6701E: VCallAd Control_ID_DetaPersTxt
  loc_B67021: FStAdFunc var_88
  loc_B67024: FLdPr var_88
  loc_B67027: Me.DataField = from_stack_1
  loc_B6702C: FFree1Ad var_88
  loc_B6702F: LitStr "JuriPers"
  loc_B67032: FLdPr Me
  loc_B67035: VCallAd Control_ID_JuriPersChk
  loc_B67038: FStAdFunc var_88
  loc_B6703B: FLdPr var_88
  loc_B6703E: Me.DataField = from_stack_1
  loc_B67043: FFree1Ad var_88
  loc_B67046: LitStr "TelePers"
  loc_B67049: FLdPr Me
  loc_B6704C: VCallAd Control_ID_TelePersTxt
  loc_B6704F: FStAdFunc var_88
  loc_B67052: FLdPr var_88
  loc_B67055: Me.DataField = from_stack_1
  loc_B6705A: FFree1Ad var_88
  loc_B6705D: LitStr "CeluPers"
  loc_B67060: FLdPr Me
  loc_B67063: VCallAd Control_ID_CeluPersTxt
  loc_B67066: FStAdFunc var_88
  loc_B67069: FLdPr var_88
  loc_B6706C: Me.DataField = from_stack_1
  loc_B67071: FFree1Ad var_88
  loc_B67074: LitStr "MailPers"
  loc_B67077: FLdPr Me
  loc_B6707A: VCallAd Control_ID_MailPersTxt
  loc_B6707D: FStAdFunc var_88
  loc_B67080: FLdPr var_88
  loc_B67083: Me.DataField = from_stack_1
  loc_B67088: FFree1Ad var_88
  loc_B6708B: LitStr "CodiTido"
  loc_B6708E: FLdPr Me
  loc_B67091: VCallAd Control_ID_CodiTidoTxt
  loc_B67094: FStAdFunc var_88
  loc_B67097: FLdPr var_88
  loc_B6709A: Me.DataField = from_stack_1
  loc_B6709F: FFree1Ad var_88
  loc_B670A2: LitStr "DetaTido"
  loc_B670A5: FLdPr Me
  loc_B670A8: VCallAd Control_ID_DetaTidoLbl
  loc_B670AB: FStAdFunc var_88
  loc_B670AE: FLdPr var_88
  loc_B670B1: Me.DataField = from_stack_1
  loc_B670B6: FFree1Ad var_88
  loc_B670B9: LitStr "NudoPers"
  loc_B670BC: FLdPr Me
  loc_B670BF: VCallAd Control_ID_NudoPersTxt
  loc_B670C2: FStAdFunc var_88
  loc_B670C5: FLdPr var_88
  loc_B670C8: Me.DataField = from_stack_1
  loc_B670CD: FFree1Ad var_88
  loc_B670D0: LitVarStr var_98, "FenaPers"
  loc_B670D5: PopAdLdVar
  loc_B670D6: FLdPr Me
  loc_B670D9: VCallAd Control_ID_FenaPersMsk
  loc_B670DC: FStAdFunc var_88
  loc_B670DF: FLdPr var_88
  loc_B670E2: LateIdSt
  loc_B670E7: FFree1Ad var_88
  loc_B670EA: LitStr "CodiEsci"
  loc_B670ED: FLdPr Me
  loc_B670F0: VCallAd Control_ID_CodiEsciTxt
  loc_B670F3: FStAdFunc var_88
  loc_B670F6: FLdPr var_88
  loc_B670F9: Me.DataField = from_stack_1
  loc_B670FE: FFree1Ad var_88
  loc_B67101: LitStr "DetaEsci"
  loc_B67104: FLdPr Me
  loc_B67107: VCallAd Control_ID_DetaEsciLbl
  loc_B6710A: FStAdFunc var_88
  loc_B6710D: FLdPr var_88
  loc_B67110: Me.DataField = from_stack_1
  loc_B67115: FFree1Ad var_88
  loc_B67118: LitStr "CodiPofi"
  loc_B6711B: FLdPr Me
  loc_B6711E: VCallAd Control_ID_CodiPofiTxt
  loc_B67121: FStAdFunc var_88
  loc_B67124: FLdPr var_88
  loc_B67127: Me.DataField = from_stack_1
  loc_B6712C: FFree1Ad var_88
  loc_B6712F: LitStr "DetaPofi"
  loc_B67132: FLdPr Me
  loc_B67135: VCallAd Control_ID_DetaPofiLbl
  loc_B67138: FStAdFunc var_88
  loc_B6713B: FLdPr var_88
  loc_B6713E: Me.DataField = from_stack_1
  loc_B67143: FFree1Ad var_88
  loc_B67146: LitStr "CocrPers"
  loc_B67149: FLdPr Me
  loc_B6714C: VCallAd Control_ID_CocrPersTxt
  loc_B6714F: FStAdFunc var_88
  loc_B67152: FLdPr var_88
  loc_B67155: Me.DataField = from_stack_1
  loc_B6715A: FFree1Ad var_88
  loc_B6715D: LitStr "DecrPers"
  loc_B67160: FLdPr Me
  loc_B67163: VCallAd Control_ID_DecrPersTxt
  loc_B67166: FStAdFunc var_88
  loc_B67169: FLdPr var_88
  loc_B6716C: Me.DataField = from_stack_1
  loc_B67171: FFree1Ad var_88
  loc_B67174: LitStr "NurePers"
  loc_B67177: FLdPr Me
  loc_B6717A: VCallAd Control_ID_NurePersTxt
  loc_B6717D: FStAdFunc var_88
  loc_B67180: FLdPr var_88
  loc_B67183: Me.DataField = from_stack_1
  loc_B67188: FFree1Ad var_88
  loc_B6718B: LitStr "CobrPers"
  loc_B6718E: FLdPr Me
  loc_B67191: VCallAd Control_ID_CobrPersTxt
  loc_B67194: FStAdFunc var_88
  loc_B67197: FLdPr var_88
  loc_B6719A: Me.DataField = from_stack_1
  loc_B6719F: FFree1Ad var_88
  loc_B671A2: LitStr "DebrPers"
  loc_B671A5: FLdPr Me
  loc_B671A8: VCallAd Control_ID_DebrPersTxt
  loc_B671AB: FStAdFunc var_88
  loc_B671AE: FLdPr var_88
  loc_B671B1: Me.DataField = from_stack_1
  loc_B671B6: FFree1Ad var_88
  loc_B671B9: LitStr "MarePers"
  loc_B671BC: FLdPr Me
  loc_B671BF: VCallAd Control_ID_MarePersTxt
  loc_B671C2: FStAdFunc var_88
  loc_B671C5: FLdPr var_88
  loc_B671C8: Me.DataField = from_stack_1
  loc_B671CD: FFree1Ad var_88
  loc_B671D0: LitStr "CarePers"
  loc_B671D3: FLdPr Me
  loc_B671D6: VCallAd Control_ID_CarePersTxt
  loc_B671D9: FStAdFunc var_88
  loc_B671DC: FLdPr var_88
  loc_B671DF: Me.DataField = from_stack_1
  loc_B671E4: FFree1Ad var_88
  loc_B671E7: LitStr "UbrePers"
  loc_B671EA: FLdPr Me
  loc_B671ED: VCallAd Control_ID_UbrePersTxt
  loc_B671F0: FStAdFunc var_88
  loc_B671F3: FLdPr var_88
  loc_B671F6: Me.DataField = from_stack_1
  loc_B671FB: FFree1Ad var_88
  loc_B671FE: LitStr "ColrPers"
  loc_B67201: FLdPr Me
  loc_B67204: VCallAd Control_ID_ColrPersTxt
  loc_B67207: FStAdFunc var_88
  loc_B6720A: FLdPr var_88
  loc_B6720D: Me.DataField = from_stack_1
  loc_B67212: FFree1Ad var_88
  loc_B67215: LitStr "DelrPers"
  loc_B67218: FLdPr Me
  loc_B6721B: VCallAd Control_ID_DelrPersTxt
  loc_B6721E: FStAdFunc var_88
  loc_B67221: FLdPr var_88
  loc_B67224: Me.DataField = from_stack_1
  loc_B67229: FFree1Ad var_88
  loc_B6722C: LitStr "CoprPers"
  loc_B6722F: FLdPr Me
  loc_B67232: VCallAd Control_ID_CoprPersTxt
  loc_B67235: FStAdFunc var_88
  loc_B67238: FLdPr var_88
  loc_B6723B: Me.DataField = from_stack_1
  loc_B67240: FFree1Ad var_88
  loc_B67243: LitStr "Obsepers"
  loc_B67246: FLdPr Me
  loc_B67249: VCallAd Control_ID_ObsePersTxt
  loc_B6724C: FStAdFunc var_88
  loc_B6724F: FLdPr var_88
  loc_B67252: Me.DataField = from_stack_1
  loc_B67257: FFree1Ad var_88
  loc_B6725A: LitI4 0
  loc_B6725F: LitI4 1
  loc_B67264: FLdRfVar var_AC
  loc_B67267: Redim
  loc_B67271: FLdPr Me
  loc_B67274: MemLdRfVar from_stack_1.global_52
  loc_B67277: NewIfNullAd
  loc_B6727A: FStAd var_88 
  loc_B6727E: FLdRfVar var_88
  loc_B67281: CVarRef
  loc_B67286: ParmAry1St
  loc_B6728C: FLdPr Me
  loc_B6728F: VCallAd Control_ID_dgdABMS
  loc_B67292: CVarAd
  loc_B67296: ParmAry1St
  loc_B6729C: FLdRfVar var_AC
  loc_B6729F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B672A4: ILdRf var_88
  loc_B672A7: CastAd
  loc_B672AA: FLdPr Me
  loc_B672AD: MemStAdFunc
  loc_B672B1: FLdRfVar var_AC
  loc_B672B4: Erase
  loc_B672B5: FFree1Ad var_88
  loc_B672B8: FLdPr Me
  loc_B672BB: MemLdRfVar from_stack_1.global_52
  loc_B672BE: NewIfNullAd
  loc_B672C1: FStAd var_C0 
  loc_B672C5: FLdRfVar var_C0
  loc_B672C8: CVarRef
  loc_B672CD: ILdRf Me
  loc_B672D0: CastAd
  loc_B672D3: FStAdFunc var_88
  loc_B672D6: FLdRfVar var_88
  loc_B672D9: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_B672DE: ILdRf var_C0
  loc_B672E1: CastAd
  loc_B672E4: FLdPr Me
  loc_B672E7: MemStAdFunc
  loc_B672EB: FFreeAd var_88 = ""
  loc_B672F2: ILdRf Me
  loc_B672F5: CastAd
  loc_B672F8: FStAdFunc var_88
  loc_B672FB: FLdRfVar var_88
  loc_B672FE: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B67303: FFree1Ad var_88
  loc_B67306: LitI2_Byte 0
  loc_B67308: ILdRf Me
  loc_B6730B: CastAd
  loc_B6730E: FStAdFunc var_88
  loc_B67311: FLdRfVar var_88
  loc_B67314: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B67319: FFree1Ad var_88
  loc_B6731C: LitVarI2 var_98, 0
  loc_B67321: PopAdLdVar
  loc_B67322: LitStr "C.U.I.L/C.U.I.T"
  loc_B67325: FLdPr Me
  loc_B67328: VCallAd Control_ID_FiltroCbo
  loc_B6732B: FStAdFunc var_88
  loc_B6732E: FLdPr var_88
  loc_B67331: Me.AddItem from_stack_1, from_stack_2
  loc_B67336: FFree1Ad var_88
  loc_B67339: LitVarI2 var_98, 1
  loc_B6733E: PopAdLdVar
  loc_B6733F: LitStr "Apellido y Nombre"
  loc_B67342: FLdPr Me
  loc_B67345: VCallAd Control_ID_FiltroCbo
  loc_B67348: FStAdFunc var_88
  loc_B6734B: FLdPr var_88
  loc_B6734E: Me.AddItem from_stack_1, from_stack_2
  loc_B67353: FFree1Ad var_88
  loc_B67356: LitVarI2 var_98, 2
  loc_B6735B: PopAdLdVar
  loc_B6735C: LitStr "Numero de Documento"
  loc_B6735F: FLdPr Me
  loc_B67362: VCallAd Control_ID_FiltroCbo
  loc_B67365: FStAdFunc var_88
  loc_B67368: FLdPr var_88
  loc_B6736B: Me.AddItem from_stack_1, from_stack_2
  loc_B67370: FFree1Ad var_88
  loc_B67373: LitVarI2 var_98, 3
  loc_B67378: PopAdLdVar
  loc_B67379: LitStr "Calle (Detalle)"
  loc_B6737C: FLdPr Me
  loc_B6737F: VCallAd Control_ID_FiltroCbo
  loc_B67382: FStAdFunc var_88
  loc_B67385: FLdPr var_88
  loc_B67388: Me.AddItem from_stack_1, from_stack_2
  loc_B6738D: FFree1Ad var_88
  loc_B67390: LitVarI2 var_98, 4
  loc_B67395: PopAdLdVar
  loc_B67396: LitStr "Barrio (Detalle)"
  loc_B67399: FLdPr Me
  loc_B6739C: VCallAd Control_ID_FiltroCbo
  loc_B6739F: FStAdFunc var_88
  loc_B673A2: FLdPr var_88
  loc_B673A5: Me.AddItem from_stack_1, from_stack_2
  loc_B673AA: FFree1Ad var_88
  loc_B673AD: LitVarI2 var_98, 5
  loc_B673B2: PopAdLdVar
  loc_B673B3: LitStr "Ubicación (Detalle)"
  loc_B673B6: FLdPr Me
  loc_B673B9: VCallAd Control_ID_FiltroCbo
  loc_B673BC: FStAdFunc var_88
  loc_B673BF: FLdPr var_88
  loc_B673C2: Me.AddItem from_stack_1, from_stack_2
  loc_B673C7: FFree1Ad var_88
  loc_B673CA: LitVarI2 var_98, 6
  loc_B673CF: PopAdLdVar
  loc_B673D0: LitStr "Localidad (Detalle)"
  loc_B673D3: FLdPr Me
  loc_B673D6: VCallAd Control_ID_FiltroCbo
  loc_B673D9: FStAdFunc var_88
  loc_B673DC: FLdPr var_88
  loc_B673DF: Me.AddItem from_stack_1, from_stack_2
  loc_B673E4: FFree1Ad var_88
  loc_B673E7: LitI2_Byte 0
  loc_B673E9: FLdPr Me
  loc_B673EC: VCallAd Control_ID_FiltroCbo
  loc_B673EF: FStAdFunc var_88
  loc_B673F2: FLdPr var_88
  loc_B673F5: Me.ListIndex = from_stack_1
  loc_B673FA: FFree1Ad var_88
  loc_B673FD: LitI4 0
  loc_B67402: LitI4 1
  loc_B67407: FLdRfVar var_AC
  loc_B6740A: Redim
  loc_B67414: FLdPr Me
  loc_B67417: VCallAd Control_ID_FiltroCbo
  loc_B6741A: CVarAd
  loc_B6741E: ParmAry1St
  loc_B67424: FLdPr Me
  loc_B67427: VCallAd Control_ID_FiltroMsk
  loc_B6742A: CVarAd
  loc_B6742E: ParmAry1St
  loc_B67434: FLdRfVar var_AC
  loc_B67437: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6743C: FLdRfVar var_AC
  loc_B6743F: Erase
  loc_B67440: ExitProcHresult
  loc_B67441: EqR4
End Sub

Private Sub Form_Activate() 'A649C0
  'Data Table: 529364
  loc_A64964: FLdRfVar var_C2
  loc_A64967: FLdRfVar var_C0
  loc_A6496A: LitVarI2 var_B8, 1
  loc_A6496F: FLdPr Me
  loc_A64972: VCallAd Control_ID_tlbABMS
  loc_A64975: FStAdFunc var_88
  loc_A64978: FLdPr var_88
  loc_A6497B: LateIdLdVar var_98 DispID_3 0
  loc_A64982: CastAdVar Me
  loc_A64986: FStAdFunc var_BC
  loc_A64989: FLdPr var_BC
  loc_A6498C:  = Me.Buttons.ControlDefault
  loc_A64991: FLdPr var_C0
  loc_A64994:  = Me.Enabled
  loc_A64999: FLdI2 var_C2
  loc_A6499C: FFreeAd var_88 = "": var_BC = ""
  loc_A649A5: FFreeVar var_98 = ""
  loc_A649AC: BranchF loc_A649BD
  loc_A649AF: FLdPr Me
  loc_A649B2: MemLdRfVar from_stack_1.global_52
  loc_A649B5: NewIfNullPr clspersonas
  loc_A649B8: Call clspersonas.Requery()
  loc_A649BD: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DA83C
  'Data Table: 529364
  loc_9DA824: ILdI2 KeyCode
  loc_9DA827: ILdRf Me
  loc_9DA82A: CastAd
  loc_9DA82D: FStAdFunc var_88
  loc_9DA830: FLdRfVar var_88
  loc_9DA833: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9DA838: FFree1Ad var_88
  loc_9DA83B: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AB97B4
  'Data Table: 529364
  loc_AB96D0: LitI2_Byte 0
  loc_AB96D2: FLdPr Me
  loc_AB96D5: MemStI2 global_56
  loc_AB96D8: LitI2_Byte 0
  loc_AB96DA: ILdRf Me
  loc_AB96DD: CastAd
  loc_AB96E0: FStAdFunc var_88
  loc_AB96E3: FLdRfVar var_88
  loc_AB96E6: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AB96EB: FFree1Ad var_88
  loc_AB96EE: LitI4 0
  loc_AB96F3: LitI4 0
  loc_AB96F8: FLdRfVar var_8C
  loc_AB96FB: Redim
  loc_AB9705: FLdPr Me
  loc_AB9708: VCallAd Control_ID_dgdABMS
  loc_AB970B: CVarAd
  loc_AB970F: ParmAry1St
  loc_AB9715: FLdRfVar var_8C
  loc_AB9718: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB971D: FLdRfVar var_8C
  loc_AB9720: Erase
  loc_AB9721: FLdPr Me
  loc_AB9724: MemLdRfVar from_stack_1.global_52
  loc_AB9727: NewIfNullAd
  loc_AB972A: FStAd var_A0 
  loc_AB972E: FLdRfVar var_A0
  loc_AB9731: CVarRef
  loc_AB9736: ILdRf Me
  loc_AB9739: CastAd
  loc_AB973C: FStAdFunc var_88
  loc_AB973F: FLdRfVar var_88
  loc_AB9742: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AB9747: ILdRf var_A0
  loc_AB974A: CastAd
  loc_AB974D: FLdPr Me
  loc_AB9750: MemStAdFunc
  loc_AB9754: FFreeAd var_88 = ""
  loc_AB975B: ILdRf Me
  loc_AB975E: CastAd
  loc_AB9761: FStAdFunc var_88
  loc_AB9764: FLdRfVar var_88
  loc_AB9767: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AB976C: FFree1Ad var_88
  loc_AB976F: LitI4 0
  loc_AB9774: LitI4 1
  loc_AB9779: FLdRfVar var_8C
  loc_AB977C: Redim
  loc_AB9786: FLdPr Me
  loc_AB9789: VCallAd Control_ID_FiltroCbo
  loc_AB978C: CVarAd
  loc_AB9790: ParmAry1St
  loc_AB9796: FLdPr Me
  loc_AB9799: VCallAd Control_ID_FiltroMsk
  loc_AB979C: CVarAd
  loc_AB97A0: ParmAry1St
  loc_AB97A6: FLdRfVar var_8C
  loc_AB97A9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB97AE: FLdRfVar var_8C
  loc_AB97B1: Erase
  loc_AB97B2: ExitProcHresult
  loc_AB97B3: ExitProcR4
End Sub

Private Sub FaxsPersTxt_GotFocus() '9BEE08
  'Data Table: 529364
  loc_9BEDF4: FLdPr Me
  loc_9BEDF7: VCallAd Control_ID_FaxsPersTxt
  loc_9BEDFA: CVarAd
  loc_9BEDFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEE03: FFree1Var var_94 = ""
  loc_9BEE06: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9C1760
  'Data Table: 529364
  loc_9C174C: FLdPr Me
  loc_9C174F: VCallAd Control_ID_FiltroMsk
  loc_9C1752: CVarAd
  loc_9C1756: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C175B: FFree1Var var_94 = ""
  loc_9C175E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AF8730
  'Data Table: 529364
  loc_AF8560: FLdRfVar var_8A
  loc_AF8563: FLdPr Me
  loc_AF8566: VCallAd Control_ID_FiltroCbo
  loc_AF8569: FStAdFunc var_88
  loc_AF856C: FLdPr var_88
  loc_AF856F:  = Me.ListIndex
  loc_AF8574: FLdI2 var_8A
  loc_AF8577: FStI2 var_8C
  loc_AF857A: FFree1Ad var_88
  loc_AF857D: FLdI2 var_8C
  loc_AF8580: LitI2_Byte 0
  loc_AF8582: EqI2
  loc_AF8583: BranchF loc_AF85BB
  loc_AF8586: LitStr "C.U.I.L./C.U.I.T.: "
  loc_AF8589: FLdPr Me
  loc_AF858C: VCallAd Control_ID_FiltroMsk
  loc_AF858F: FStAdFunc var_88
  loc_AF8592: FLdPr var_88
  loc_AF8595: LateIdLdVar var_9C DispID_22 0
  loc_AF859C: CStrVarTmp
  loc_AF859D: FStStrNoPop var_A0
  loc_AF85A0: ConcatStr
  loc_AF85A1: FStStrNoPop var_A4
  loc_AF85A4: FLdPr Me
  loc_AF85A7: MemStStrCopy
  loc_AF85AB: FFreeStr var_A0 = ""
  loc_AF85B2: FFree1Ad var_88
  loc_AF85B5: FFree1Var var_9C = ""
  loc_AF85B8: Branch loc_AF872C
  loc_AF85BB: FLdI2 var_8C
  loc_AF85BE: LitI2_Byte 1
  loc_AF85C0: EqI2
  loc_AF85C1: BranchF loc_AF85F9
  loc_AF85C4: LitStr "Apellido y Nombre que contiene. "
  loc_AF85C7: FLdPr Me
  loc_AF85CA: VCallAd Control_ID_FiltroMsk
  loc_AF85CD: FStAdFunc var_88
  loc_AF85D0: FLdPr var_88
  loc_AF85D3: LateIdLdVar var_9C DispID_22 0
  loc_AF85DA: CStrVarTmp
  loc_AF85DB: FStStrNoPop var_A0
  loc_AF85DE: ConcatStr
  loc_AF85DF: FStStrNoPop var_A4
  loc_AF85E2: FLdPr Me
  loc_AF85E5: MemStStrCopy
  loc_AF85E9: FFreeStr var_A0 = ""
  loc_AF85F0: FFree1Ad var_88
  loc_AF85F3: FFree1Var var_9C = ""
  loc_AF85F6: Branch loc_AF872C
  loc_AF85F9: FLdI2 var_8C
  loc_AF85FC: LitI2_Byte 2
  loc_AF85FE: EqI2
  loc_AF85FF: BranchF loc_AF8637
  loc_AF8602: LitStr "Numero de Documento. "
  loc_AF8605: FLdPr Me
  loc_AF8608: VCallAd Control_ID_FiltroMsk
  loc_AF860B: FStAdFunc var_88
  loc_AF860E: FLdPr var_88
  loc_AF8611: LateIdLdVar var_9C DispID_22 0
  loc_AF8618: CStrVarTmp
  loc_AF8619: FStStrNoPop var_A0
  loc_AF861C: ConcatStr
  loc_AF861D: FStStrNoPop var_A4
  loc_AF8620: FLdPr Me
  loc_AF8623: MemStStrCopy
  loc_AF8627: FFreeStr var_A0 = ""
  loc_AF862E: FFree1Ad var_88
  loc_AF8631: FFree1Var var_9C = ""
  loc_AF8634: Branch loc_AF872C
  loc_AF8637: FLdI2 var_8C
  loc_AF863A: LitI2_Byte 3
  loc_AF863C: EqI2
  loc_AF863D: BranchF loc_AF8675
  loc_AF8640: LitStr "Calle (Detalle): "
  loc_AF8643: FLdPr Me
  loc_AF8646: VCallAd Control_ID_FiltroMsk
  loc_AF8649: FStAdFunc var_88
  loc_AF864C: FLdPr var_88
  loc_AF864F: LateIdLdVar var_9C DispID_22 0
  loc_AF8656: CStrVarTmp
  loc_AF8657: FStStrNoPop var_A0
  loc_AF865A: ConcatStr
  loc_AF865B: FStStrNoPop var_A4
  loc_AF865E: FLdPr Me
  loc_AF8661: MemStStrCopy
  loc_AF8665: FFreeStr var_A0 = ""
  loc_AF866C: FFree1Ad var_88
  loc_AF866F: FFree1Var var_9C = ""
  loc_AF8672: Branch loc_AF872C
  loc_AF8675: FLdI2 var_8C
  loc_AF8678: LitI2_Byte 4
  loc_AF867A: EqI2
  loc_AF867B: BranchF loc_AF86B3
  loc_AF867E: LitStr "Barrio (Detalle)"
  loc_AF8681: FLdPr Me
  loc_AF8684: VCallAd Control_ID_FiltroMsk
  loc_AF8687: FStAdFunc var_88
  loc_AF868A: FLdPr var_88
  loc_AF868D: LateIdLdVar var_9C DispID_22 0
  loc_AF8694: CStrVarTmp
  loc_AF8695: FStStrNoPop var_A0
  loc_AF8698: ConcatStr
  loc_AF8699: FStStrNoPop var_A4
  loc_AF869C: FLdPr Me
  loc_AF869F: MemStStrCopy
  loc_AF86A3: FFreeStr var_A0 = ""
  loc_AF86AA: FFree1Ad var_88
  loc_AF86AD: FFree1Var var_9C = ""
  loc_AF86B0: Branch loc_AF872C
  loc_AF86B3: FLdI2 var_8C
  loc_AF86B6: LitI2_Byte 5
  loc_AF86B8: EqI2
  loc_AF86B9: BranchF loc_AF86F1
  loc_AF86BC: LitStr "Ubicación (Detalle)"
  loc_AF86BF: FLdPr Me
  loc_AF86C2: VCallAd Control_ID_FiltroMsk
  loc_AF86C5: FStAdFunc var_88
  loc_AF86C8: FLdPr var_88
  loc_AF86CB: LateIdLdVar var_9C DispID_22 0
  loc_AF86D2: CStrVarTmp
  loc_AF86D3: FStStrNoPop var_A0
  loc_AF86D6: ConcatStr
  loc_AF86D7: FStStrNoPop var_A4
  loc_AF86DA: FLdPr Me
  loc_AF86DD: MemStStrCopy
  loc_AF86E1: FFreeStr var_A0 = ""
  loc_AF86E8: FFree1Ad var_88
  loc_AF86EB: FFree1Var var_9C = ""
  loc_AF86EE: Branch loc_AF872C
  loc_AF86F1: FLdI2 var_8C
  loc_AF86F4: LitI2_Byte 6
  loc_AF86F6: EqI2
  loc_AF86F7: BranchF loc_AF872C
  loc_AF86FA: LitStr "Localidad (Detalle)"
  loc_AF86FD: FLdPr Me
  loc_AF8700: VCallAd Control_ID_FiltroMsk
  loc_AF8703: FStAdFunc var_88
  loc_AF8706: FLdPr var_88
  loc_AF8709: LateIdLdVar var_9C DispID_22 0
  loc_AF8710: CStrVarTmp
  loc_AF8711: FStStrNoPop var_A0
  loc_AF8714: ConcatStr
  loc_AF8715: FStStrNoPop var_A4
  loc_AF8718: FLdPr Me
  loc_AF871B: MemStStrCopy
  loc_AF871F: FFreeStr var_A0 = ""
  loc_AF8726: FFree1Ad var_88
  loc_AF8729: FFree1Var var_9C = ""
  loc_AF872C: ExitProcHresult
  loc_AF872D: ConcatStr
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9C11C4
  'Data Table: 529364
  loc_9C11AC: ILdI2 KeyAscii
  loc_9C11AF: CI4UI1
  loc_9C11B0: LitI4 &HD
  loc_9C11B5: EqI4
  loc_9C11B6: BranchF loc_9C11C3
  loc_9C11B9: Call Proc_179_63_A65144()
  loc_9C11BE: Call cmdCancelar_Click()
  loc_9C11C3: ExitProcHresult
End Sub

Private Sub FenaPersMsk_UnknownEvent_0 '9BEA18
  'Data Table: 529364
  loc_9BEA04: FLdPr Me
  loc_9BEA07: VCallAd Control_ID_FenaPersMsk
  loc_9BEA0A: CVarAd
  loc_9BEA0E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BEA13: FFree1Var var_94 = ""
  loc_9BEA16: ExitProcHresult
End Sub

Private Sub FenaPersMsk_UnknownEvent_8 'AD06B8
  'Data Table: 529364
  loc_AD0598: FLdPr Me
  loc_AD059B: VCallAd Control_ID_FenaPersMsk
  loc_AD059E: FStAdFunc var_88
  loc_AD05A1: FLdPr var_88
  loc_AD05A4: LateIdLdVar var_98 DispID_13 -32767
  loc_AD05AB: CBoolVar
  loc_AD05AD: LitI2_Byte &HFF
  loc_AD05AF: EqI2
  loc_AD05B0: FLdPr Me
  loc_AD05B3: VCallAd Control_ID_FenaPersMsk
  loc_AD05B6: FStAdFunc var_9C
  loc_AD05B9: FLdPr var_9C
  loc_AD05BC: LateIdLdVar var_AC DispID_22 0
  loc_AD05C3: CStrVarTmp
  loc_AD05C4: CVarStr var_BC
  loc_AD05C7: ImpAdCallI2 IsDate()
  loc_AD05CC: AndI4
  loc_AD05CD: FFreeAd var_88 = ""
  loc_AD05D4: FFreeVar var_98 = "": var_AC = ""
  loc_AD05DD: BranchF loc_AD06B5
  loc_AD05E0: LitVarStr var_CC, vbNullString
  loc_AD05E5: PopAdLdVar
  loc_AD05E6: FLdPr Me
  loc_AD05E9: VCallAd Control_ID_FenaPersMsk
  loc_AD05EC: FStAdFunc var_88
  loc_AD05EF: FLdPr var_88
  loc_AD05F2: LateIdSt
  loc_AD05F7: FFree1Ad var_88
  loc_AD05FA: FLdPr Me
  loc_AD05FD: VCallAd Control_ID_FenaPersMsk
  loc_AD0600: FStAdFunc var_88
  loc_AD0603: FLdPr var_88
  loc_AD0606: LateIdLdVar var_98 DispID_22 0
  loc_AD060D: CStrVarTmp
  loc_AD060E: FStStrNoPop var_E0
  loc_AD0611: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_AD0616: FStStrNoPop var_E4
  loc_AD0619: FLdPr Me
  loc_AD061C: MemStStrCopy
  loc_AD0620: FFreeStr var_E0 = ""
  loc_AD0627: FFree1Ad var_88
  loc_AD062A: FFree1Var var_98 = ""
  loc_AD062D: LitVarStr var_CC, "##/##/####"
  loc_AD0632: PopAdLdVar
  loc_AD0633: FLdPr Me
  loc_AD0636: VCallAd Control_ID_FenaPersMsk
  loc_AD0639: FStAdFunc var_88
  loc_AD063C: FLdPr var_88
  loc_AD063F: LateIdSt
  loc_AD0644: FFree1Ad var_88
  loc_AD0647: LitVarI2 var_CC, 10
  loc_AD064C: PopAdLdVar
  loc_AD064D: FLdPr Me
  loc_AD0650: VCallAd Control_ID_FenaPersMsk
  loc_AD0653: FStAdFunc var_88
  loc_AD0656: FLdPr var_88
  loc_AD0659: LateIdSt
  loc_AD065E: FFree1Ad var_88
  loc_AD0661: FLdPr Me
  loc_AD0664: MemLdStr global_60
  loc_AD0667: LitStr vbNullString
  loc_AD066A: NeStr
  loc_AD066C: BranchF loc_AD06B5
  loc_AD066F: FLdPr Me
  loc_AD0672: MemLdStr global_60
  loc_AD0675: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD067A: LitI2_Byte 0
  loc_AD067C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD0681: CStrDate
  loc_AD0683: CVarStr var_98
  loc_AD0686: PopAdLdVar
  loc_AD0687: FLdPr Me
  loc_AD068A: VCallAd Control_ID_FenaPersMsk
  loc_AD068D: FStAdFunc var_88
  loc_AD0690: FLdPr var_88
  loc_AD0693: LateIdSt
  loc_AD0698: FFree1Ad var_88
  loc_AD069B: FFree1Var var_98 = ""
  loc_AD069E: FLdPr Me
  loc_AD06A1: VCallAd Control_ID_FenaPersMsk
  loc_AD06A4: CVarAd
  loc_AD06A8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD06AD: FFree1Var var_98 = ""
  loc_AD06B0: LitI2_Byte &HFF
  loc_AD06B2: IStI2 KeyAscii
  loc_AD06B5: ExitProcHresult
End Sub

Private Sub TelePersTxt_GotFocus() '9BD548
  'Data Table: 529364
  loc_9BD534: FLdPr Me
  loc_9BD537: VCallAd Control_ID_TelePersTxt
  loc_9BD53A: CVarAd
  loc_9BD53E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD543: FFree1Var var_94 = ""
  loc_9BD546: ExitProcHresult
  loc_9BD547: ExitProc
End Sub

Private Sub MailPersTxt_GotFocus() '9BE748
  'Data Table: 529364
  loc_9BE734: FLdPr Me
  loc_9BE737: VCallAd Control_ID_MailPersTxt
  loc_9BE73A: CVarAd
  loc_9BE73E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE743: FFree1Var var_94 = ""
  loc_9BE746: ExitProcHresult
End Sub

Private Sub NurePersTxt_GotFocus() '9BD860
  'Data Table: 529364
  loc_9BD84C: FLdPr Me
  loc_9BD84F: VCallAd Control_ID_NurePersTxt
  loc_9BD852: CVarAd
  loc_9BD856: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD85B: FFree1Var var_94 = ""
  loc_9BD85E: ExitProcHresult
End Sub

Private Sub NurePersTxt_KeyPress(KeyAscii As Integer) '9DA414
  'Data Table: 529364
  loc_9DA3FC: LitStr "0123456789"
  loc_9DA3FF: FStStrCopy var_88
  loc_9DA402: FLdRfVar var_88
  loc_9DA405: ILdRf KeyAscii
  loc_9DA408: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA40D: IStI2 KeyAscii
  loc_9DA410: FFree1Str var_88
  loc_9DA413: ExitProcHresult
End Sub

Private Sub NurePersTxt_Validate(Cancel As Boolean) 'A832EC
  'Data Table: 529364
  loc_A83264: FLdRfVar var_8A
  loc_A83267: FLdPr Me
  loc_A8326A: VCallAd Control_ID_cmdCancelar
  loc_A8326D: FStAdFunc var_88
  loc_A83270: FLdPr var_88
  loc_A83273:  = Me.Value
  loc_A83278: FLdI2 var_8A
  loc_A8327B: NotI4
  loc_A8327C: FFree1Ad var_88
  loc_A8327F: BranchF loc_A832EA
  loc_A83282: FLdRfVar var_90
  loc_A83285: FLdPr Me
  loc_A83288: VCallAd Control_ID_NurePersTxt
  loc_A8328B: FStAdFunc var_88
  loc_A8328E: FLdPr var_88
  loc_A83291:  = Me.Text
  loc_A83296: LitI2_Byte &HFF
  loc_A83298: LitI2_Byte 0
  loc_A8329A: ILdRf var_90
  loc_A8329D: LitStr "Numero de Puerta Real"
  loc_A832A0: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A832A5: FStStrNoPop var_94
  loc_A832A8: FLdPr Me
  loc_A832AB: MemStStrCopy
  loc_A832AF: FFreeStr var_90 = ""
  loc_A832B6: FFree1Ad var_88
  loc_A832B9: FLdPr Me
  loc_A832BC: MemLdStr global_60
  loc_A832BF: LitStr vbNullString
  loc_A832C2: NeStr
  loc_A832C4: BranchF loc_A832EA
  loc_A832C7: FLdPr Me
  loc_A832CA: MemLdStr global_60
  loc_A832CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A832D2: FLdPr Me
  loc_A832D5: VCallAd Control_ID_NurePersTxt
  loc_A832D8: CVarAd
  loc_A832DC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A832E1: FFree1Var var_A4 = ""
  loc_A832E4: LitI2_Byte &HFF
  loc_A832E6: IStI2 Cancel
  loc_A832E9: ExitProcHresult
  loc_A832EA: ExitProcHresult
End Sub

Private Sub MarePersTxt_GotFocus() '9BE700
  'Data Table: 529364
  loc_9BE6EC: FLdPr Me
  loc_9BE6EF: VCallAd Control_ID_MarePersTxt
  loc_9BE6F2: CVarAd
  loc_9BE6F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE6FB: FFree1Var var_94 = ""
  loc_9BE6FE: ExitProcHresult
End Sub

Private Sub UbrePersTxt_GotFocus() '9C0200
  'Data Table: 529364
  loc_9C01EC: FLdPr Me
  loc_9C01EF: VCallAd Control_ID_UbrePersTxt
  loc_9C01F2: CVarAd
  loc_9C01F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C01FB: FFree1Var var_94 = ""
  loc_9C01FE: ExitProcHresult
End Sub

Private Sub DetaPersTxt_GotFocus() '9BF120
  'Data Table: 529364
  loc_9BF10C: FLdPr Me
  loc_9BF10F: VCallAd Control_ID_DetaPersTxt
  loc_9BF112: CVarAd
  loc_9BF116: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF11B: FFree1Var var_94 = ""
  loc_9BF11E: ExitProcHresult
End Sub

Private Sub DetaPersTxt_Validate(Cancel As Boolean) 'A8FFDC
  'Data Table: 529364
  loc_A8FF3C: FLdRfVar var_8A
  loc_A8FF3F: FLdPr Me
  loc_A8FF42: VCallAd Control_ID_cmdCancelar
  loc_A8FF45: FStAdFunc var_88
  loc_A8FF48: FLdPr var_88
  loc_A8FF4B:  = Me.Value
  loc_A8FF50: FLdI2 var_8A
  loc_A8FF53: NotI4
  loc_A8FF54: FLdRfVar var_92
  loc_A8FF57: FLdPr Me
  loc_A8FF5A: VCallAd Control_ID_DetaPersTxt
  loc_A8FF5D: FStAdFunc var_90
  loc_A8FF60: FLdPr var_90
  loc_A8FF63:  = Me.Enabled
  loc_A8FF68: FLdI2 var_92
  loc_A8FF6B: AndI4
  loc_A8FF6C: FFreeAd var_88 = ""
  loc_A8FF73: BranchF loc_A8FFD9
  loc_A8FF76: FLdRfVar var_98
  loc_A8FF79: FLdPr Me
  loc_A8FF7C: VCallAd Control_ID_DetaPersTxt
  loc_A8FF7F: FStAdFunc var_88
  loc_A8FF82: FLdPr var_88
  loc_A8FF85:  = Me.Text
  loc_A8FF8A: ILdRf var_98
  loc_A8FF8D: LitStr "Apeliido y Nombre"
  loc_A8FF90: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8FF95: FStStrNoPop var_9C
  loc_A8FF98: FLdPr Me
  loc_A8FF9B: MemStStrCopy
  loc_A8FF9F: FFreeStr var_98 = ""
  loc_A8FFA6: FFree1Ad var_88
  loc_A8FFA9: FLdPr Me
  loc_A8FFAC: MemLdStr global_60
  loc_A8FFAF: LitStr vbNullString
  loc_A8FFB2: NeStr
  loc_A8FFB4: BranchF loc_A8FFD9
  loc_A8FFB7: FLdPr Me
  loc_A8FFBA: MemLdStr global_60
  loc_A8FFBD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8FFC2: FLdPr Me
  loc_A8FFC5: VCallAd Control_ID_DetaPersTxt
  loc_A8FFC8: CVarAd
  loc_A8FFCC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8FFD1: FFree1Var var_AC = ""
  loc_A8FFD4: LitI2_Byte &HFF
  loc_A8FFD6: IStI2 Cancel
  loc_A8FFD9: ExitProcHresult
End Sub

Private Sub NudoPersTxt_GotFocus() '9BE118
  'Data Table: 529364
  loc_9BE104: FLdPr Me
  loc_9BE107: VCallAd Control_ID_NudoPersTxt
  loc_9BE10A: CVarAd
  loc_9BE10E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE113: FFree1Var var_94 = ""
  loc_9BE116: ExitProcHresult
  loc_9BE117: ExitProcCy
End Sub

Private Sub NudoPersTxt_KeyPress(KeyAscii As Integer) '9DA330
  'Data Table: 529364
  loc_9DA318: LitStr "0123456789"
  loc_9DA31B: FStStrCopy var_88
  loc_9DA31E: FLdRfVar var_88
  loc_9DA321: ILdRf KeyAscii
  loc_9DA324: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA329: IStI2 KeyAscii
  loc_9DA32C: FFree1Str var_88
  loc_9DA32F: ExitProcHresult
End Sub

Private Sub NudoPersTxt_Validate(Cancel As Boolean) 'A8347C
  'Data Table: 529364
  loc_A833F4: FLdRfVar var_8A
  loc_A833F7: FLdPr Me
  loc_A833FA: VCallAd Control_ID_cmdCancelar
  loc_A833FD: FStAdFunc var_88
  loc_A83400: FLdPr var_88
  loc_A83403:  = Me.Value
  loc_A83408: FLdI2 var_8A
  loc_A8340B: NotI4
  loc_A8340C: FFree1Ad var_88
  loc_A8340F: BranchF loc_A8347A
  loc_A83412: FLdRfVar var_90
  loc_A83415: FLdPr Me
  loc_A83418: VCallAd Control_ID_NudoPersTxt
  loc_A8341B: FStAdFunc var_88
  loc_A8341E: FLdPr var_88
  loc_A83421:  = Me.Text
  loc_A83426: LitI2_Byte &HFF
  loc_A83428: LitI2_Byte 0
  loc_A8342A: ILdRf var_90
  loc_A8342D: LitStr "Numero de Documento"
  loc_A83430: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A83435: FStStrNoPop var_94
  loc_A83438: FLdPr Me
  loc_A8343B: MemStStrCopy
  loc_A8343F: FFreeStr var_90 = ""
  loc_A83446: FFree1Ad var_88
  loc_A83449: FLdPr Me
  loc_A8344C: MemLdStr global_60
  loc_A8344F: LitStr vbNullString
  loc_A83452: NeStr
  loc_A83454: BranchF loc_A8347A
  loc_A83457: FLdPr Me
  loc_A8345A: MemLdStr global_60
  loc_A8345D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83462: FLdPr Me
  loc_A83465: VCallAd Control_ID_NudoPersTxt
  loc_A83468: CVarAd
  loc_A8346C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83471: FFree1Var var_A4 = ""
  loc_A83474: LitI2_Byte &HFF
  loc_A83476: IStI2 Cancel
  loc_A83479: ExitProcHresult
  loc_A8347A: ExitProcHresult
End Sub

Private Sub CodiTidoCmd_Click() 'A98BCC
  'Data Table: 529364
  loc_A98B18: LitStr "SELECT CodiTido, DetaTido FROM infogov.tipodocu ORDER BY DetaTido"
  loc_A98B1B: ImpAdLdRf MemVar_D94200
  loc_A98B1E: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B21: Call dlgBuscarTipoDocumento.sPasaSelectPut(from_stack_1v)
  loc_A98B26: LitVar_Missing var_A4
  loc_A98B29: PopAdLdVar
  loc_A98B2A: LitVarI4
  loc_A98B32: PopAdLdVar
  loc_A98B33: ImpAdLdRf MemVar_D94200
  loc_A98B36: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B39: dlgBuscarTipoDocumento.Show from_stack_1, from_stack_2
  loc_A98B3E: FLdRfVar var_A8
  loc_A98B41: ImpAdLdRf MemVar_D94200
  loc_A98B44: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B47: from_stack_1v = dlgBuscarTipoDocumento.sPasaCodigoGet()
  loc_A98B4C: ILdRf var_A8
  loc_A98B4F: LitStr vbNullString
  loc_A98B52: NeStr
  loc_A98B54: FFree1Str var_A8
  loc_A98B57: BranchF loc_A98BB8
  loc_A98B5A: FLdRfVar var_A8
  loc_A98B5D: ImpAdLdRf MemVar_D94200
  loc_A98B60: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B63: from_stack_1v = dlgBuscarTipoDocumento.sPasaCodigoGet()
  loc_A98B68: ILdRf var_A8
  loc_A98B6B: FLdPr Me
  loc_A98B6E: VCallAd Control_ID_
  loc_A98B71: FStAdFunc var_AC
  loc_A98B74: FLdPr var_AC
  loc_A98B77: dlgBuscarTipoDocumento.TextBox.Text = from_stack_1
  loc_A98B7C: FFree1Str var_A8
  loc_A98B7F: FFree1Ad var_AC
  loc_A98B82: LitStr vbNullString
  loc_A98B85: ImpAdLdRf MemVar_D94200
  loc_A98B88: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B8B: Call dlgBuscarTipoDocumento.sPasaCodigoPut(from_stack_1v)
  loc_A98B90: FLdRfVar var_A8
  loc_A98B93: ImpAdLdRf MemVar_D94200
  loc_A98B96: NewIfNullPr dlgBuscarTipoDocumento
  loc_A98B99: from_stack_1v = dlgBuscarTipoDocumento.sPasaDetalleGet()
  loc_A98B9E: ILdRf var_A8
  loc_A98BA1: FLdPr Me
  loc_A98BA4: VCallAd Control_ID_
  loc_A98BA7: FStAdFunc var_AC
  loc_A98BAA: FLdPr var_AC
  loc_A98BAD: dlgBuscarTipoDocumento.Label.Caption = from_stack_1
  loc_A98BB2: FFree1Str var_A8
  loc_A98BB5: FFree1Ad var_AC
  loc_A98BB8: FLdPr Me
  loc_A98BBB: VCallAd Control_ID_CodiTidoTxt
  loc_A98BBE: CVarAd
  loc_A98BC2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98BC7: FFree1Var var_BC = ""
  loc_A98BCA: ExitProcHresult
End Sub

Private Sub FenaPersCmd_Click() 'A50228
  'Data Table: 529364
  loc_A501D4: LitVar_Missing var_A4
  loc_A501D7: PopAdLdVar
  loc_A501D8: LitVarI4
  loc_A501E0: PopAdLdVar
  loc_A501E1: ImpAdLdRf MemVar_D930A4
  loc_A501E4: NewIfNullPr frmCalendario
  loc_A501E7: frmCalendario.Show from_stack_1, from_stack_2
  loc_A501EC: ImpAdLdI4 MemVar_D93028
  loc_A501EF: LitStr vbNullString
  loc_A501F2: NeStr
  loc_A501F4: BranchF loc_A50212
  loc_A501F7: ImpAdLdRf MemVar_D93028
  loc_A501FA: CDargRef
  loc_A501FE: FLdPr Me
  loc_A50201: VCallAd Control_ID_FenaPersMsk
  loc_A50204: FStAdFunc var_A8
  loc_A50207: FLdPr var_A8
  loc_A5020A: LateIdSt
  loc_A5020F: FFree1Ad var_A8
  loc_A50212: FLdPr Me
  loc_A50215: VCallAd Control_ID_FenaPersMsk
  loc_A50218: CVarAd
  loc_A5021C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A50221: FFree1Var var_B8 = ""
  loc_A50224: ExitProcHresult
End Sub

Private Sub CodiEsciCmd_Click() 'A97EAC
  'Data Table: 529364
  loc_A97DF8: LitStr "SELECT CodiEsci, DetaEsci FROM infogov.estacivi ORDER BY DetaEsci"
  loc_A97DFB: ImpAdLdRf MemVar_D94448
  loc_A97DFE: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E01: Call dlgBuscarEstadoCivil.sPasaSelectPut(from_stack_1v)
  loc_A97E06: LitVar_Missing var_A4
  loc_A97E09: PopAdLdVar
  loc_A97E0A: LitVarI4
  loc_A97E12: PopAdLdVar
  loc_A97E13: ImpAdLdRf MemVar_D94448
  loc_A97E16: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E19: dlgBuscarEstadoCivil.Show from_stack_1, from_stack_2
  loc_A97E1E: FLdRfVar var_A8
  loc_A97E21: ImpAdLdRf MemVar_D94448
  loc_A97E24: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E27: from_stack_1v = dlgBuscarEstadoCivil.sPasaCodigoGet()
  loc_A97E2C: ILdRf var_A8
  loc_A97E2F: LitStr vbNullString
  loc_A97E32: NeStr
  loc_A97E34: FFree1Str var_A8
  loc_A97E37: BranchF loc_A97E98
  loc_A97E3A: FLdRfVar var_A8
  loc_A97E3D: ImpAdLdRf MemVar_D94448
  loc_A97E40: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E43: from_stack_1v = dlgBuscarEstadoCivil.sPasaCodigoGet()
  loc_A97E48: ILdRf var_A8
  loc_A97E4B: FLdPr Me
  loc_A97E4E: VCallAd Control_ID_
  loc_A97E51: FStAdFunc var_AC
  loc_A97E54: FLdPr var_AC
  loc_A97E57: dlgBuscarEstadoCivil.TextBox.Text = from_stack_1
  loc_A97E5C: FFree1Str var_A8
  loc_A97E5F: FFree1Ad var_AC
  loc_A97E62: LitStr vbNullString
  loc_A97E65: ImpAdLdRf MemVar_D94448
  loc_A97E68: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E6B: Call dlgBuscarEstadoCivil.sPasaCodigoPut(from_stack_1v)
  loc_A97E70: FLdRfVar var_A8
  loc_A97E73: ImpAdLdRf MemVar_D94448
  loc_A97E76: NewIfNullPr dlgBuscarEstadoCivil
  loc_A97E79: from_stack_1v = dlgBuscarEstadoCivil.sPasaDetalleGet()
  loc_A97E7E: ILdRf var_A8
  loc_A97E81: FLdPr Me
  loc_A97E84: VCallAd Control_ID_
  loc_A97E87: FStAdFunc var_AC
  loc_A97E8A: FLdPr var_AC
  loc_A97E8D: dlgBuscarEstadoCivil.Label.Caption = from_stack_1
  loc_A97E92: FFree1Str var_A8
  loc_A97E95: FFree1Ad var_AC
  loc_A97E98: FLdPr Me
  loc_A97E9B: VCallAd Control_ID_CodiEsciTxt
  loc_A97E9E: CVarAd
  loc_A97EA2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A97EA7: FFree1Var var_BC = ""
  loc_A97EAA: ExitProcHresult
End Sub

Private Sub CodiPofiCmd_Click() 'AA84BC
  'Data Table: 529364
  loc_AA83F4: LitVar_Missing var_A4
  loc_AA83F7: PopAdLdVar
  loc_AA83F8: LitVarI4
  loc_AA8400: PopAdLdVar
  loc_AA8401: ImpAdLdRf MemVar_D9440C
  loc_AA8404: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA8407: dlgBuscarPosicionFiscal.Show from_stack_1, from_stack_2
  loc_AA840C: FLdRfVar var_AC
  loc_AA840F: FLdRfVar var_A8
  loc_AA8412: ImpAdLdRf MemVar_D9440C
  loc_AA8415: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA8418: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA841D: FLdPr var_A8
  loc_AA8420: from_stack_1 = clsposifisc.RecordCount
  loc_AA8425: ILdRf var_AC
  loc_AA8428: LitI4 0
  loc_AA842D: GtI4
  loc_AA842E: FFree1Ad var_A8
  loc_AA8431: BranchF loc_AA84A8
  loc_AA8434: FLdRfVar var_AE
  loc_AA8437: FLdRfVar var_A8
  loc_AA843A: ImpAdLdRf MemVar_D9440C
  loc_AA843D: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA8440: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA8445: FLdPr var_A8
  loc_AA8448: from_stack_1 = clsposifisc.CodiPofi
  loc_AA844D: FLdUI1
  loc_AA8451: CStrI2
  loc_AA8453: FStStrNoPop var_B4
  loc_AA8456: FLdPr Me
  loc_AA8459: VCallAd Control_ID_CodiPofiTxt
  loc_AA845C: FStAdFunc var_B8
  loc_AA845F: FLdPr var_B8
  loc_AA8462: Me.Text = from_stack_1
  loc_AA8467: FFree1Str var_B4
  loc_AA846A: FFreeAd var_A8 = ""
  loc_AA8471: FLdRfVar var_B4
  loc_AA8474: FLdRfVar var_A8
  loc_AA8477: ImpAdLdRf MemVar_D9440C
  loc_AA847A: NewIfNullPr dlgBuscarPosicionFiscal
  loc_AA847D: from_stack_1v = dlgBuscarPosicionFiscal.global_4276344Get()
  loc_AA8482: FLdPr var_A8
  loc_AA8485: from_stack_1 = clsposifisc.DetaPofi
  loc_AA848A: ILdRf var_B4
  loc_AA848D: FLdPr Me
  loc_AA8490: VCallAd Control_ID_DetaPofiLbl
  loc_AA8493: FStAdFunc var_B8
  loc_AA8496: FLdPr var_B8
  loc_AA8499: Me.Caption = from_stack_1
  loc_AA849E: FFree1Str var_B4
  loc_AA84A1: FFreeAd var_A8 = ""
  loc_AA84A8: FLdPr Me
  loc_AA84AB: VCallAd Control_ID_CodiPofiTxt
  loc_AA84AE: CVarAd
  loc_AA84B2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA84B7: FFree1Var var_C8 = ""
  loc_AA84BA: ExitProcHresult
End Sub

Private Sub CocrPersCmd_Click() 'A9880C
  'Data Table: 529364
  loc_A98758: LitStr vbNullString
  loc_A9875B: ImpAdLdRf MemVar_D949C0
  loc_A9875E: NewIfNullPr dlgBuscarCalle
  loc_A98761: Call dlgBuscarCalle.sPasaSelectPut(from_stack_1v)
  loc_A98766: LitVar_Missing var_A4
  loc_A98769: PopAdLdVar
  loc_A9876A: LitVarI4
  loc_A98772: PopAdLdVar
  loc_A98773: ImpAdLdRf MemVar_D949C0
  loc_A98776: NewIfNullPr dlgBuscarCalle
  loc_A98779: dlgBuscarCalle.Show from_stack_1, from_stack_2
  loc_A9877E: FLdRfVar var_A8
  loc_A98781: ImpAdLdRf MemVar_D949C0
  loc_A98784: NewIfNullPr dlgBuscarCalle
  loc_A98787: from_stack_1v = dlgBuscarCalle.sPasaCodigoGet()
  loc_A9878C: ILdRf var_A8
  loc_A9878F: LitStr vbNullString
  loc_A98792: NeStr
  loc_A98794: FFree1Str var_A8
  loc_A98797: BranchF loc_A987F8
  loc_A9879A: FLdRfVar var_A8
  loc_A9879D: ImpAdLdRf MemVar_D949C0
  loc_A987A0: NewIfNullPr dlgBuscarCalle
  loc_A987A3: from_stack_1v = dlgBuscarCalle.sPasaCodigoGet()
  loc_A987A8: ILdRf var_A8
  loc_A987AB: FLdPr Me
  loc_A987AE: VCallAd Control_ID_Label3
  loc_A987B1: FStAdFunc var_AC
  loc_A987B4: FLdPr var_AC
  loc_A987B7: dlgBuscarCalle.TextBox.Text = from_stack_1
  loc_A987BC: FFree1Str var_A8
  loc_A987BF: FFree1Ad var_AC
  loc_A987C2: LitStr vbNullString
  loc_A987C5: ImpAdLdRf MemVar_D949C0
  loc_A987C8: NewIfNullPr dlgBuscarCalle
  loc_A987CB: Call dlgBuscarCalle.sPasaCodigoPut(from_stack_1v)
  loc_A987D0: FLdRfVar var_A8
  loc_A987D3: ImpAdLdRf MemVar_D949C0
  loc_A987D6: NewIfNullPr dlgBuscarCalle
  loc_A987D9: from_stack_1v = dlgBuscarCalle.sPasaDetalleGet()
  loc_A987DE: ILdRf var_A8
  loc_A987E1: FLdPr Me
  loc_A987E4: VCallAd Control_ID_dgdABMS
  loc_A987E7: FStAdFunc var_AC
  loc_A987EA: FLdPr var_AC
  loc_A987ED: dlgBuscarCalle.TextBox.Text = from_stack_1
  loc_A987F2: FFree1Str var_A8
  loc_A987F5: FFree1Ad var_AC
  loc_A987F8: FLdPr Me
  loc_A987FB: VCallAd Control_ID_CocrPersTxt
  loc_A987FE: CVarAd
  loc_A98802: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98807: FFree1Var var_BC = ""
  loc_A9880A: ExitProcHresult
  loc_A9880B: Ary1LdCy
End Sub

Private Sub CobrPersCmd_Click() 'AA7A6C
  'Data Table: 529364
  loc_AA79A4: LitVar_Missing var_A4
  loc_AA79A7: PopAdLdVar
  loc_AA79A8: LitVarI4
  loc_AA79B0: PopAdLdVar
  loc_AA79B1: ImpAdLdRf MemVar_D9428C
  loc_AA79B4: NewIfNullPr dlgBuscarBarrio
  loc_AA79B7: dlgBuscarBarrio.Show from_stack_1, from_stack_2
  loc_AA79BC: FLdRfVar var_AC
  loc_AA79BF: FLdRfVar var_A8
  loc_AA79C2: ImpAdLdRf MemVar_D9428C
  loc_AA79C5: NewIfNullPr dlgBuscarBarrio
  loc_AA79C8: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA79CD: FLdPr var_A8
  loc_AA79D0: from_stack_1 = clsBarrio.RecordCount
  loc_AA79D5: ILdRf var_AC
  loc_AA79D8: LitI4 0
  loc_AA79DD: GtI4
  loc_AA79DE: FFree1Ad var_A8
  loc_AA79E1: BranchF loc_AA7A57
  loc_AA79E4: FLdRfVar var_AE
  loc_AA79E7: FLdRfVar var_A8
  loc_AA79EA: ImpAdLdRf MemVar_D9428C
  loc_AA79ED: NewIfNullPr dlgBuscarBarrio
  loc_AA79F0: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA79F5: FLdPr var_A8
  loc_AA79F8: from_stack_1 = clsBarrio.CodiBarr
  loc_AA79FD: FLdI2 var_AE
  loc_AA7A00: CStrUI1
  loc_AA7A02: FStStrNoPop var_B4
  loc_AA7A05: FLdPr Me
  loc_AA7A08: VCallAd Control_ID_CobrPersTxt
  loc_AA7A0B: FStAdFunc var_B8
  loc_AA7A0E: FLdPr var_B8
  loc_AA7A11: Me.Text = from_stack_1
  loc_AA7A16: FFree1Str var_B4
  loc_AA7A19: FFreeAd var_A8 = ""
  loc_AA7A20: FLdRfVar var_B4
  loc_AA7A23: FLdRfVar var_A8
  loc_AA7A26: ImpAdLdRf MemVar_D9428C
  loc_AA7A29: NewIfNullPr dlgBuscarBarrio
  loc_AA7A2C: from_stack_1v = dlgBuscarBarrio.global_4295556Get()
  loc_AA7A31: FLdPr var_A8
  loc_AA7A34: from_stack_1 = clsBarrio.DetaBarr
  loc_AA7A39: ILdRf var_B4
  loc_AA7A3C: FLdPr Me
  loc_AA7A3F: VCallAd Control_ID_DebrPersTxt
  loc_AA7A42: FStAdFunc var_B8
  loc_AA7A45: FLdPr var_B8
  loc_AA7A48: Me.Text = from_stack_1
  loc_AA7A4D: FFree1Str var_B4
  loc_AA7A50: FFreeAd var_A8 = ""
  loc_AA7A57: FLdPr Me
  loc_AA7A5A: VCallAd Control_ID_CobrPersTxt
  loc_AA7A5D: CVarAd
  loc_AA7A61: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7A66: FFree1Var var_C8 = ""
  loc_AA7A69: ExitProcHresult
End Sub

Private Sub ColrPersCmd_Click() 'AA8AEC
  'Data Table: 529364
  loc_AA8A24: LitVar_Missing var_A4
  loc_AA8A27: PopAdLdVar
  loc_AA8A28: LitVarI4
  loc_AA8A30: PopAdLdVar
  loc_AA8A31: ImpAdLdRf MemVar_D94228
  loc_AA8A34: NewIfNullPr dlgBuscarLocalidad
  loc_AA8A37: dlgBuscarLocalidad.Show from_stack_1, from_stack_2
  loc_AA8A3C: FLdRfVar var_AC
  loc_AA8A3F: FLdRfVar var_A8
  loc_AA8A42: ImpAdLdRf MemVar_D94228
  loc_AA8A45: NewIfNullPr dlgBuscarLocalidad
  loc_AA8A48: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8A4D: FLdPr var_A8
  loc_AA8A50: from_stack_1 = clslocalidad.RecordCount
  loc_AA8A55: ILdRf var_AC
  loc_AA8A58: LitI4 0
  loc_AA8A5D: GtI4
  loc_AA8A5E: FFree1Ad var_A8
  loc_AA8A61: BranchF loc_AA8AD7
  loc_AA8A64: FLdRfVar var_AE
  loc_AA8A67: FLdRfVar var_A8
  loc_AA8A6A: ImpAdLdRf MemVar_D94228
  loc_AA8A6D: NewIfNullPr dlgBuscarLocalidad
  loc_AA8A70: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8A75: FLdPr var_A8
  loc_AA8A78: from_stack_1 = clslocalidad.CodiLoca
  loc_AA8A7D: FLdI2 var_AE
  loc_AA8A80: CStrUI1
  loc_AA8A82: FStStrNoPop var_B4
  loc_AA8A85: FLdPr Me
  loc_AA8A88: VCallAd Control_ID_ColrPersTxt
  loc_AA8A8B: FStAdFunc var_B8
  loc_AA8A8E: FLdPr var_B8
  loc_AA8A91: Me.Text = from_stack_1
  loc_AA8A96: FFree1Str var_B4
  loc_AA8A99: FFreeAd var_A8 = ""
  loc_AA8AA0: FLdRfVar var_B4
  loc_AA8AA3: FLdRfVar var_A8
  loc_AA8AA6: ImpAdLdRf MemVar_D94228
  loc_AA8AA9: NewIfNullPr dlgBuscarLocalidad
  loc_AA8AAC: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AA8AB1: FLdPr var_A8
  loc_AA8AB4: from_stack_1 = clslocalidad.DetaLoca
  loc_AA8AB9: ILdRf var_B4
  loc_AA8ABC: FLdPr Me
  loc_AA8ABF: VCallAd Control_ID_DelrPersTxt
  loc_AA8AC2: FStAdFunc var_B8
  loc_AA8AC5: FLdPr var_B8
  loc_AA8AC8: Me.Text = from_stack_1
  loc_AA8ACD: FFree1Str var_B4
  loc_AA8AD0: FFreeAd var_A8 = ""
  loc_AA8AD7: FLdPr Me
  loc_AA8ADA: VCallAd Control_ID_ColrPersTxt
  loc_AA8ADD: CVarAd
  loc_AA8AE1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA8AE6: FFree1Var var_C8 = ""
  loc_AA8AE9: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A667F8
  'Data Table: 529364
  loc_A6679C: FLdRfVar var_B4
  loc_A6679F: FLdRfVar var_B0
  loc_A667A2: FLdI2 ColIndex
  loc_A667A5: CVarI2 var_A8
  loc_A667A8: PopAdLdVar
  loc_A667A9: FLdPr Me
  loc_A667AC: VCallAd Control_ID_dgdABMS
  loc_A667AF: FStAdFunc var_88
  loc_A667B2: FLdPr var_88
  loc_A667B5: LateIdLdVar var_98 DispID_105 0
  loc_A667BC: CastAdVar Me
  loc_A667C0: FStAdFunc var_AC
  loc_A667C3: FLdPr var_AC
  loc_A667C6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A667CB: FLdPr var_B0
  loc_A667CE:  = Me.DataField
  loc_A667D3: FLdZeroAd var_B4
  loc_A667D6: PopTmpLdAdStr
  loc_A667DA: FLdPr Me
  loc_A667DD: MemLdRfVar from_stack_1.global_52
  loc_A667E0: NewIfNullPr clspersonas
  loc_A667E3: Call clspersonas.Sort(from_stack_1v)
  loc_A667E8: FFree1Str var_B8
  loc_A667EB: FFreeAd var_88 = "": var_AC = ""
  loc_A667F4: FFree1Var var_98 = ""
  loc_A667F7: ExitProcHresult
End Sub

Private Sub CarePersTxt_GotFocus() '9C1688
  'Data Table: 529364
  loc_9C1674: FLdPr Me
  loc_9C1677: VCallAd Control_ID_CarePersTxt
  loc_9C167A: CVarAd
  loc_9C167E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1683: FFree1Var var_94 = ""
  loc_9C1686: ExitProcHresult
End Sub

Private Function Proc_179_62_9AE98C() '9AE98C
  'Data Table: 529364
  loc_9AE988: ExitProcHresult
  loc_9AE989: FLdPr arg_0
End Function

Private Function Proc_179_63_A65144() 'A65144
  'Data Table: 529364
  loc_A650E4: LitI4 &HB
  loc_A650E9: CI2I4
  loc_A650EA: FLdPr Me
  loc_A650ED: Me.MousePointer = from_stack_1
  loc_A650F2: FLdPr Me
  loc_A650F5: VCallAd Control_ID_FiltroMsk
  loc_A650F8: FStAdFunc var_88
  loc_A650FB: FLdPr var_88
  loc_A650FE: LateIdLdVar var_98 DispID_22 0
  loc_A65105: PopAd
  loc_A65107: FLdPr Me
  loc_A6510A: VCallAd Control_ID_FiltroCbo
  loc_A6510D: FStAdFuncNoPop
  loc_A65110: FLdRfVar var_98
  loc_A65113: CStrVarTmp
  loc_A65114: FStStrNoPop var_9C
  loc_A65117: FLdPr Me
  loc_A6511A: MemLdRfVar from_stack_1.global_52
  loc_A6511D: NewIfNullPr clspersonas
  loc_A65120: Call clspersonas.sSelect(from_stack_1v, from_stack_2v)
  loc_A65125: FFree1Str var_9C
  loc_A65128: FFreeAd var_88 = ""
  loc_A6512F: FFree1Var var_98 = ""
  loc_A65132: LitI4 0
  loc_A65137: CI2I4
  loc_A65138: FLdPr Me
  loc_A6513B: Me.MousePointer = from_stack_1
  loc_A65140: ExitProcHresult
End Function
