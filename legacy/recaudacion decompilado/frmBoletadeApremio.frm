VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmBoletadeApremio
  Caption = "Boleta de Apremio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmBoletadeApremio.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 10848
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 120
    Top = 840
    Width = 4575
    Height = 420
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 3120
    Width = 15255
    Height = 7575
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
    Begin VB.TextBox EstaEsapTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 6480
      Width = 4695
      Height = 360
      TabIndex = 71
      MaxLength = 50
      DataField = "DetaEsap"
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
    Begin VB.CheckBox CancApreChk
      Left = 9000
      Top = 6480
      Width = 255
      Height = 375
      TabIndex = 68
      DataField = "CancApre"
    End
    Begin VB.TextBox ObseApreTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 7080
      Width = 12855
      Height = 360
      TabIndex = 66
      MaxLength = 200
      DataField = "ObseApre"
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
    Begin VB.Frame Frame3
      Caption = "Domicilio del Hecho Imponible (Inmueble, Comercio, Deudores Varios, Etc) "
      Left = 240
      Top = 840
      Width = 12375
      Height = 1815
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.TextBox CalleRealTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 360
        Width = 6615
        Height = 360
        TabIndex = 15
        MaxLength = 40
        DataField = "CalleReal"
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
      Begin VB.TextBox NumePuertaRealTxt
        ForeColor = &HFF0000&
        Left = 8760
        Top = 360
        Width = 975
        Height = 360
        TabIndex = 17
        MaxLength = 40
        DataField = "NumePuertaReal"
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
      Begin VB.TextBox BarrioRealTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 840
        Width = 6615
        Height = 360
        TabIndex = 19
        MaxLength = 40
        DataField = "BarrioReal"
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
      Begin VB.TextBox ManzanaRealTxt
        ForeColor = &HFF0000&
        Left = 8760
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 21
        MaxLength = 40
        DataField = "ManzanaReal"
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
      Begin VB.TextBox CasaRealTxt
        ForeColor = &HFF0000&
        Left = 10800
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 23
        MaxLength = 40
        DataField = "CasaReal"
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
      Begin VB.TextBox LocalidadRealTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 1320
        Width = 4095
        Height = 360
        TabIndex = 25
        MaxLength = 40
        DataField = "LocalidadReal"
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
      Begin VB.TextBox CodigoPostalRealTxt
        ForeColor = &HFF0000&
        Left = 6240
        Top = 1320
        Width = 1335
        Height = 360
        TabIndex = 27
        MaxLength = 40
        DataField = "CodigoPostalReal"
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
        Caption = "Nro:"
        Left = 8280
        Top = 360
        Width = 435
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
      Begin VB.Label Label7
        Caption = "Calle:"
        Left = 600
        Top = 360
        Width = 585
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
      Begin VB.Label Label11
        Caption = "Mza:"
        Left = 8160
        Top = 840
        Width = 510
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
        Caption = "Casa:"
        Left = 10080
        Top = 840
        Width = 615
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
      Begin VB.Label Label13
        Caption = "Barrio:"
        Left = 495
        Top = 840
        Width = 690
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
      Begin VB.Label Label14
        Caption = "Localidad:"
        Left = 105
        Top = 1320
        Width = 1080
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
      Begin VB.Label Label15
        Caption = "C.P:"
        Left = 5640
        Top = 1320
        Width = 435
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
    End
    Begin VB.Frame Frame2
      Caption = "Domicilio Fiscal"
      Left = 240
      Top = 2640
      Width = 12375
      Height = 1815
      TabIndex = 28
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.TextBox CalleTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 360
        Width = 6615
        Height = 360
        TabIndex = 30
        MaxLength = 40
        DataField = "Calle"
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
      Begin VB.TextBox NumePuertaTxt
        ForeColor = &HFF0000&
        Left = 9000
        Top = 360
        Width = 975
        Height = 360
        TabIndex = 32
        MaxLength = 40
        DataField = "NumePuerta"
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
      Begin VB.TextBox BarrioTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 840
        Width = 6615
        Height = 360
        TabIndex = 34
        MaxLength = 40
        DataField = "Barrio"
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
      Begin VB.TextBox ManzanaTxt
        ForeColor = &HFF0000&
        Left = 9000
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 36
        MaxLength = 40
        DataField = "Manzana"
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
      Begin VB.TextBox CasaTxt
        ForeColor = &HFF0000&
        Left = 10800
        Top = 840
        Width = 975
        Height = 360
        TabIndex = 38
        MaxLength = 40
        DataField = "Casa"
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
      Begin VB.TextBox LocalidadTxt
        ForeColor = &HFF0000&
        Left = 1320
        Top = 1320
        Width = 4095
        Height = 360
        TabIndex = 40
        MaxLength = 40
        DataField = "Localidad"
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
      Begin VB.TextBox CodiPostalTxt
        ForeColor = &HFF0000&
        Left = 6240
        Top = 1320
        Width = 1335
        Height = 360
        TabIndex = 42
        MaxLength = 40
        DataField = "CodiPostal"
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
      Begin VB.Label Label21
        Caption = "Calle:"
        Left = 615
        Top = 360
        Width = 585
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
      Begin VB.Label Label22
        Caption = "Mza:"
        Left = 8400
        Top = 840
        Width = 510
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
      Begin VB.Label Label23
        Caption = "Nro:"
        Left = 8400
        Top = 360
        Width = 435
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
      Begin VB.Label Label24
        Caption = "Casa:"
        Left = 10080
        Top = 840
        Width = 615
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
        Caption = "Barrio:"
        Left = 510
        Top = 840
        Width = 690
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
      Begin VB.Label Label26
        Caption = "Localidad:"
        Left = 120
        Top = 1320
        Width = 1080
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
      Begin VB.Label Label27
        Caption = "C.P:"
        Left = 5760
        Top = 1320
        Width = 435
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
    Begin VB.TextBox TotaApreTxt
      ForeColor = &HFF0000&
      Left = 9000
      Top = 6000
      Width = 1335
      Height = 360
      TabIndex = 64
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox RecaApreTxt
      ForeColor = &HFF0000&
      Left = 9000
      Top = 5520
      Width = 1335
      Height = 360
      TabIndex = 58
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox CapiApreTxt
      ForeColor = &HFF0000&
      Left = 9000
      Top = 5040
      Width = 1335
      Height = 360
      TabIndex = 52
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 6000
      Top = 360
      Width = 1815
      Height = 360
      TabIndex = 10
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
      Left = 9960
      Top = 360
      Width = 5295
      Height = 360
      TabIndex = 12
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
    Begin VB.TextBox CodiRecaTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 5520
      Width = 615
      Height = 345
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
    Begin VB.TextBox CodiOfjuTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 6000
      Width = 615
      Height = 345
      TabIndex = 60
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
    Begin VB.CommandButton CodiRecaCmd
      Left = 2880
      Top = 6000
      Width = 450
      Height = 345
      TabIndex = 61
      Picture = "frmBoletadeApremio.frx":324A
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiOfjuCmd
      Left = 2880
      Top = 5520
      Width = 450
      Height = 345
      TabIndex = 55
      Picture = "frmBoletadeApremio.frx":3344
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton NumeApreCmd
      Left = 3480
      Top = 360
      Width = 450
      Height = 345
      TabIndex = 8
      Picture = "frmBoletadeApremio.frx":343E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CodiInjuTxt
      Left = 2160
      Top = 4560
      Width = 495
      Height = 360
      TabIndex = 44
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
    Begin VB.TextBox AutoApreTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 5040
      Width = 1335
      Height = 360
      TabIndex = 50
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
    Begin VB.TextBox NumeApreTxt
      ForeColor = &HFF0000&
      Left = 2040
      Top = 360
      Width = 1335
      Height = 360
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
    Begin MSMask.MaskEdBox FeemApreMsk
      Left = 9000
      Top = 4560
      Width = 1455
      Height = 345
      TabIndex = 47
      OleObjectBlob = "frmBoletadeApremio.frx":3538
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSDataGridLib.DataGrid ApreDetaDgd
      Left = 12720
      Top = 960
      Width = 2415
      Height = 3375
      TabIndex = 48
      OleObjectBlob = "frmBoletadeApremio.frx":35E8
    End
    Begin MSDataGridLib.DataGrid InstApreDgd
      Left = 10680
      Top = 4560
      Width = 4455
      Height = 1695
      TabIndex = 70
      OleObjectBlob = "frmBoletadeApremio.frx":37CE
    End
    Begin VB.Label Label28
      Caption = "Deuda Cancelada:"
      Left = 6960
      Top = 6480
      Width = 1980
      Height = 300
      TabIndex = 69
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
    Begin VB.Label Label17
      Caption = "Observaciones:"
      Left = 480
      Top = 7080
      Width = 1635
      Height = 300
      TabIndex = 67
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
    Begin VB.Label Label20
      Caption = "Estado:"
      Left = 1320
      Top = 6480
      Width = 825
      Height = 300
      TabIndex = 65
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
    Begin VB.Label Label19
      Caption = "Total:"
      Left = 8370
      Top = 6000
      Width = 585
      Height = 300
      TabIndex = 63
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
    Begin VB.Label Label18
      Caption = "Recargo:"
      Left = 7980
      Top = 5520
      Width = 975
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
    Begin VB.Label Label16
      Caption = "Capital:"
      Left = 8160
      Top = 5040
      Width = 795
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
    Begin VB.Label Label3
      Caption = "Recaudador:"
      Left = 720
      Top = 5520
      Width = 1380
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
    Begin VB.Label Label10
      Caption = "Oficial de Justicia:"
      Left = 240
      Top = 6000
      Width = 1890
      Height = 300
      TabIndex = 59
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
    Begin VB.Label DetaRecaLbl
      ForeColor = &HFF0000&
      Left = 3480
      Top = 5520
      Width = 4095
      Height = 315
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
    Begin VB.Label DetaOfjuLbl
      ForeColor = &HFF0000&
      Left = 3480
      Top = 6000
      Width = 4215
      Height = 315
      TabIndex = 62
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
      Caption = "Apellido y Nombre:"
      Left = 7920
      Top = 360
      Width = 1965
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
    Begin VB.Label Label5
      Caption = "C.U.I.T. - C.U.I.L.:"
      Left = 4080
      Top = 360
      Width = 1845
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
    Begin VB.Label DetaInjuLbl
      BackColor = &H8000000E&
      ForeColor = &HFF0000&
      Left = 2760
      Top = 4560
      Width = 4095
      Height = 375
      TabIndex = 45
      BackStyle = 0 'Transparent
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
      Caption = "Ultima Instancia:"
      Left = 360
      Top = 4560
      Width = 1770
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
    Begin VB.Label Label1
      Caption = "Auto:"
      Left = 1560
      Top = 5040
      Width = 570
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
    Begin VB.Label Label9
      Caption = "Fecha:"
      Left = 8160
      Top = 4560
      Width = 735
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
    Begin VB.Label Label2
      Caption = "Nro. de Boleta:"
      Left = 360
      Top = 360
      Width = 1575
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
    Top = 1440
    Width = 15135
    Height = 1575
    TabIndex = 4
    OleObjectBlob = "frmBoletadeApremio.frx":3B54
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmBoletadeApremio.frx":4072
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15372
    Height = 528
    TabIndex = 0
    OleObjectBlob = "frmBoletadeApremio.frx":BBF0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmBoletadeApremio.frx":C14C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4800
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 3
    OleObjectBlob = "frmBoletadeApremio.frx":CA16
  End
End

Attribute VB_Name = "frmBoletadeApremio"


Private Sub dgdABMS_UnknownEvent_0 '9CA55C
  'Data Table: 52C1B8
  loc_9CA544: FLdPr Me
  loc_9CA547: VCallAd Control_ID_dgdABMS
  loc_9CA54A: FStAdFunc var_88
  loc_9CA54D: FLdRfVar var_88
  loc_9CA550: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CA555: FFree1Ad var_88
  loc_9CA558: ExitProcHresult
  loc_9CA559: ThisVCall 15C
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CA3E0
  'Data Table: 52C1B8
  loc_9CA3C8: FLdPr Me
  loc_9CA3CB: VCallAd Control_ID_dgdABMS
  loc_9CA3CE: FStAdFunc var_88
  loc_9CA3D1: FLdRfVar var_88
  loc_9CA3D4: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CA3D9: FFree1Ad var_88
  loc_9CA3DC: ExitProcHresult
  loc_9CA3DD: AryDescTemp 825
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A6823C
  'Data Table: 52C1B8
  loc_A681E0: FLdRfVar var_B4
  loc_A681E3: FLdRfVar var_B0
  loc_A681E6: FLdI2 ColIndex
  loc_A681E9: CVarI2 var_A8
  loc_A681EC: PopAdLdVar
  loc_A681ED: FLdPr Me
  loc_A681F0: VCallAd Control_ID_dgdABMS
  loc_A681F3: FStAdFunc var_88
  loc_A681F6: FLdPr var_88
  loc_A681F9: LateIdLdVar var_98 DispID_105 0
  loc_A68200: CastAdVar Me
  loc_A68204: FStAdFunc var_AC
  loc_A68207: FLdPr var_AC
  loc_A6820A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A6820F: FLdPr var_B0
  loc_A68212:  = Me.DataField
  loc_A68217: FLdZeroAd var_B4
  loc_A6821A: PopTmpLdAdStr
  loc_A6821E: FLdPr Me
  loc_A68221: MemLdRfVar from_stack_1.global_52
  loc_A68224: NewIfNullPr clsapremio
  loc_A68227: Call clsapremio.Sort(from_stack_1v)
  loc_A6822C: FFree1Str var_B8
  loc_A6822F: FFreeAd var_88 = "": var_AC = ""
  loc_A68238: FFree1Var var_98 = ""
  loc_A6823B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AE47A4
  'Data Table: 52C1B8
  loc_AE463C: FLdPr Me
  loc_AE463F: MemLdI2 global_64
  loc_AE4642: LitI2_Byte 0
  loc_AE4644: EqI2
  loc_AE4645: FLdRfVar var_88
  loc_AE4648: FLdPr Me
  loc_AE464B: MemLdRfVar from_stack_1.global_52
  loc_AE464E: NewIfNullPr clsapremio
  loc_AE4651: from_stack_1 = clsapremio.RecordCount
  loc_AE4656: ILdRf var_88
  loc_AE4659: LitI4 0
  loc_AE465E: GtI4
  loc_AE465F: AndI4
  loc_AE4660: BranchF loc_AE4744
  loc_AE4663: FLdRfVar var_8A
  loc_AE4666: FLdPr Me
  loc_AE4669: MemLdRfVar from_stack_1.global_52
  loc_AE466C: NewIfNullPr clsapremio
  loc_AE466F: from_stack_1 = clsapremio.BOF
  loc_AE4674: FLdI2 var_8A
  loc_AE4677: BranchF loc_AE4688
  loc_AE467A: FLdPr Me
  loc_AE467D: MemLdRfVar from_stack_1.global_52
  loc_AE4680: NewIfNullPr clsapremio
  loc_AE4683: Call clsapremio.MoveFirst()
  loc_AE4688: FLdRfVar var_8A
  loc_AE468B: FLdPr Me
  loc_AE468E: MemLdRfVar from_stack_1.global_52
  loc_AE4691: NewIfNullPr clsapremio
  loc_AE4694: from_stack_1 = clsapremio.EOF
  loc_AE4699: FLdI2 var_8A
  loc_AE469C: BranchF loc_AE46AD
  loc_AE469F: FLdPr Me
  loc_AE46A2: MemLdRfVar from_stack_1.global_52
  loc_AE46A5: NewIfNullPr clsapremio
  loc_AE46A8: Call clsapremio.MoveLast()
  loc_AE46AD: LitStr "SELECT PeriCtct, BimeCtct FROM apredeta WHERE NumeApre = "
  loc_AE46B0: FLdRfVar var_88
  loc_AE46B3: FLdPr Me
  loc_AE46B6: MemLdRfVar from_stack_1.global_52
  loc_AE46B9: NewIfNullPr clsapremio
  loc_AE46BC: from_stack_1 = clsapremio.NumeApre
  loc_AE46C1: ILdRf var_88
  loc_AE46C4: CStrI4
  loc_AE46C6: FStStrNoPop var_90
  loc_AE46C9: ConcatStr
  loc_AE46CA: FStStrNoPop var_94
  loc_AE46CD: LitStr " ORDER BY NumeApre, CodiOfic, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_AE46D0: ConcatStr
  loc_AE46D1: FStStrNoPop var_98
  loc_AE46D4: FLdPr Me
  loc_AE46D7: MemLdRfVar from_stack_1.global_56
  loc_AE46DA: NewIfNullPr clsapremio
  loc_AE46DD: Call clsapremio.RedefineRS(from_stack_1v)
  loc_AE46E2: FFreeStr var_90 = "": var_94 = ""
  loc_AE46EB: LitStr "SELECT instapre.CodiInju, instapre.CodiReca, recaudador.DetaReca, instapre.CodiOfju, oficjust.DetaOfju FROM instapre "
  loc_AE46EE: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = instapre.CodiReca "
  loc_AE46F1: ConcatStr
  loc_AE46F2: FStStrNoPop var_90
  loc_AE46F5: LitStr " INNER JOIN oficjust ON oficjust.CodiOfju = instapre.CodiOfju "
  loc_AE46F8: ConcatStr
  loc_AE46F9: FStStrNoPop var_94
  loc_AE46FC: LitStr " WHERE NumeApre = "
  loc_AE46FF: ConcatStr
  loc_AE4700: FStStrNoPop var_98
  loc_AE4703: FLdRfVar var_88
  loc_AE4706: FLdPr Me
  loc_AE4709: MemLdRfVar from_stack_1.global_52
  loc_AE470C: NewIfNullPr clsapremio
  loc_AE470F: from_stack_1 = clsapremio.NumeApre
  loc_AE4714: ILdRf var_88
  loc_AE4717: CStrI4
  loc_AE4719: FStStrNoPop var_9C
  loc_AE471C: ConcatStr
  loc_AE471D: FStStrNoPop var_A0
  loc_AE4720: LitStr " ORDER BY NumeApre, CodiInju"
  loc_AE4723: ConcatStr
  loc_AE4724: FStStrNoPop var_A4
  loc_AE4727: FLdPr Me
  loc_AE472A: MemLdRfVar from_stack_1.global_60
  loc_AE472D: NewIfNullPr clsinstapre
  loc_AE4730: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_AE4735: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AE4744: FLdRfVar var_88
  loc_AE4747: FLdPr Me
  loc_AE474A: MemLdRfVar from_stack_1.global_56
  loc_AE474D: NewIfNullPr clsapremio
  loc_AE4750: from_stack_1 = clsapremio.RecordCount
  loc_AE4755: ILdRf var_88
  loc_AE4758: LitI4 0
  loc_AE475D: EqI4
  loc_AE475E: BranchF loc_AE47A1
  loc_AE4761: LitStr "SELECT PeriCtct, BimeCtct FROM apredeta WHERE NumeApre = 0 ORDER BY NumeApre, CodiOfic, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_AE4764: FLdPr Me
  loc_AE4767: MemLdRfVar from_stack_1.global_56
  loc_AE476A: NewIfNullPr clsapremio
  loc_AE476D: Call clsapremio.RedefineRS(from_stack_1v)
  loc_AE4772: LitStr "SELECT instapre.CodiInju, instapre.CodiReca, recaudador.DetaReca, instapre.CodiOfju, oficjust.DetaOfju FROM instapre "
  loc_AE4775: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = instapre.CodiReca "
  loc_AE4778: ConcatStr
  loc_AE4779: FStStrNoPop var_90
  loc_AE477C: LitStr " INNER JOIN oficjust ON oficjust.CodiOfju = instapre.CodiOfju "
  loc_AE477F: ConcatStr
  loc_AE4780: FStStrNoPop var_94
  loc_AE4783: LitStr " WHERE NumeApre = 0 ORDER BY NumeApre, CodiInju"
  loc_AE4786: ConcatStr
  loc_AE4787: FStStrNoPop var_98
  loc_AE478A: FLdPr Me
  loc_AE478D: MemLdRfVar from_stack_1.global_60
  loc_AE4790: NewIfNullPr clsinstapre
  loc_AE4793: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_AE4798: FFreeStr var_90 = "": var_94 = ""
  loc_AE47A1: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AC6C5C
  'Data Table: 52C1B8
  loc_AC6B40: LitVarStr var_94, vbNullString
  loc_AC6B45: PopAdLdVar
  loc_AC6B46: FLdPr Me
  loc_AC6B49: VCallAd Control_ID_FiltroMsk
  loc_AC6B4C: FStAdFunc var_A8
  loc_AC6B4F: FLdPr var_A8
  loc_AC6B52: LateIdSt
  loc_AC6B57: FFree1Ad var_A8
  loc_AC6B5A: FLdRfVar var_AA
  loc_AC6B5D: FLdPr Me
  loc_AC6B60: VCallAd Control_ID_FiltroCbo
  loc_AC6B63: FStAdFunc var_A8
  loc_AC6B66: FLdPr var_A8
  loc_AC6B69:  = Me.ListIndex
  loc_AC6B6E: FLdI2 var_AA
  loc_AC6B71: FStI2 var_AC
  loc_AC6B74: FFree1Ad var_A8
  loc_AC6B77: FLdI2 var_AC
  loc_AC6B7A: LitI2_Byte 0
  loc_AC6B7C: EqI2
  loc_AC6B7D: BranchF loc_AC6B9D
  loc_AC6B80: LitVarStr var_94, "#########"
  loc_AC6B85: PopAdLdVar
  loc_AC6B86: FLdPr Me
  loc_AC6B89: VCallAd Control_ID_FiltroMsk
  loc_AC6B8C: FStAdFunc var_A8
  loc_AC6B8F: FLdPr var_A8
  loc_AC6B92: LateIdSt
  loc_AC6B97: FFree1Ad var_A8
  loc_AC6B9A: Branch loc_AC6C58
  loc_AC6B9D: FLdI2 var_AC
  loc_AC6BA0: LitI2_Byte 1
  loc_AC6BA2: EqI2
  loc_AC6BA3: BranchF loc_AC6BC3
  loc_AC6BA6: LitVarStr var_94, vbNullString
  loc_AC6BAB: PopAdLdVar
  loc_AC6BAC: FLdPr Me
  loc_AC6BAF: VCallAd Control_ID_FiltroMsk
  loc_AC6BB2: FStAdFunc var_A8
  loc_AC6BB5: FLdPr var_A8
  loc_AC6BB8: LateIdSt
  loc_AC6BBD: FFree1Ad var_A8
  loc_AC6BC0: Branch loc_AC6C58
  loc_AC6BC3: FLdI2 var_AC
  loc_AC6BC6: LitI2_Byte 2
  loc_AC6BC8: EqI2
  loc_AC6BC9: BranchF loc_AC6BE9
  loc_AC6BCC: LitVarStr var_94, vbNullString
  loc_AC6BD1: PopAdLdVar
  loc_AC6BD2: FLdPr Me
  loc_AC6BD5: VCallAd Control_ID_FiltroMsk
  loc_AC6BD8: FStAdFunc var_A8
  loc_AC6BDB: FLdPr var_A8
  loc_AC6BDE: LateIdSt
  loc_AC6BE3: FFree1Ad var_A8
  loc_AC6BE6: Branch loc_AC6C58
  loc_AC6BE9: FLdI2 var_AC
  loc_AC6BEC: LitI2_Byte 3
  loc_AC6BEE: EqI2
  loc_AC6BEF: BranchF loc_AC6C0F
  loc_AC6BF2: LitVarStr var_94, "########"
  loc_AC6BF7: PopAdLdVar
  loc_AC6BF8: FLdPr Me
  loc_AC6BFB: VCallAd Control_ID_FiltroMsk
  loc_AC6BFE: FStAdFunc var_A8
  loc_AC6C01: FLdPr var_A8
  loc_AC6C04: LateIdSt
  loc_AC6C09: FFree1Ad var_A8
  loc_AC6C0C: Branch loc_AC6C58
  loc_AC6C0F: FLdI2 var_AC
  loc_AC6C12: LitI2_Byte 4
  loc_AC6C14: EqI2
  loc_AC6C15: BranchF loc_AC6C35
  loc_AC6C18: LitVarStr var_94, "###########"
  loc_AC6C1D: PopAdLdVar
  loc_AC6C1E: FLdPr Me
  loc_AC6C21: VCallAd Control_ID_FiltroMsk
  loc_AC6C24: FStAdFunc var_A8
  loc_AC6C27: FLdPr var_A8
  loc_AC6C2A: LateIdSt
  loc_AC6C2F: FFree1Ad var_A8
  loc_AC6C32: Branch loc_AC6C58
  loc_AC6C35: FLdI2 var_AC
  loc_AC6C38: LitI2_Byte 5
  loc_AC6C3A: EqI2
  loc_AC6C3B: BranchF loc_AC6C58
  loc_AC6C3E: LitVarStr var_94, "########"
  loc_AC6C43: PopAdLdVar
  loc_AC6C44: FLdPr Me
  loc_AC6C47: VCallAd Control_ID_FiltroMsk
  loc_AC6C4A: FStAdFunc var_A8
  loc_AC6C4D: FLdPr var_A8
  loc_AC6C50: LateIdSt
  loc_AC6C55: FFree1Ad var_A8
  loc_AC6C58: ExitProcHresult
End Sub

Private Sub Form_Load() 'B515B4
  'Data Table: 52C1B8
  loc_B51200: LitI2_Byte 0
  loc_B51202: CR8I2
  loc_B51203: PopFPR4
  loc_B51204: FLdPr Me
  loc_B51207: Me.Left = from_stack_1s
  loc_B5120C: LitI2_Byte 0
  loc_B5120E: CR8I2
  loc_B5120F: PopFPR4
  loc_B51210: FLdPr Me
  loc_B51213: Me.Top = from_stack_1s
  loc_B51218: Call Proc_298_31_A63344()
  loc_B5121D: LitStr "NumeApre"
  loc_B51220: FLdPr Me
  loc_B51223: VCallAd Control_ID_NumeApreTxt
  loc_B51226: FStAdFunc var_88
  loc_B51229: FLdPr var_88
  loc_B5122C: Me.DataField = from_stack_1
  loc_B51231: FFree1Ad var_88
  loc_B51234: LitStr "CucuPers"
  loc_B51237: FLdPr Me
  loc_B5123A: VCallAd Control_ID_CucuPersTxt
  loc_B5123D: FStAdFunc var_88
  loc_B51240: FLdPr var_88
  loc_B51243: Me.DataField = from_stack_1
  loc_B51248: FFree1Ad var_88
  loc_B5124B: LitStr "TituApre"
  loc_B5124E: FLdPr Me
  loc_B51251: VCallAd Control_ID_DetaPersTxt
  loc_B51254: FStAdFunc var_88
  loc_B51257: FLdPr var_88
  loc_B5125A: Me.DataField = from_stack_1
  loc_B5125F: FFree1Ad var_88
  loc_B51262: LitVarStr var_98, "FeemApre"
  loc_B51267: PopAdLdVar
  loc_B51268: FLdPr Me
  loc_B5126B: VCallAd Control_ID_FeemApreMsk
  loc_B5126E: FStAdFunc var_88
  loc_B51271: FLdPr var_88
  loc_B51274: LateIdSt
  loc_B51279: FFree1Ad var_88
  loc_B5127C: LitStr "CodiInju"
  loc_B5127F: FLdPr Me
  loc_B51282: VCallAd Control_ID_CodiInjuTxt
  loc_B51285: FStAdFunc var_88
  loc_B51288: FLdPr var_88
  loc_B5128B: Me.DataField = from_stack_1
  loc_B51290: FFree1Ad var_88
  loc_B51293: LitStr "DetaInju"
  loc_B51296: FLdPr Me
  loc_B51299: VCallAd Control_ID_DetaInjuLbl
  loc_B5129C: FStAdFunc var_88
  loc_B5129F: FLdPr var_88
  loc_B512A2: Me.DataField = from_stack_1
  loc_B512A7: FFree1Ad var_88
  loc_B512AA: LitStr "AutoApre"
  loc_B512AD: FLdPr Me
  loc_B512B0: VCallAd Control_ID_AutoApreTxt
  loc_B512B3: FStAdFunc var_88
  loc_B512B6: FLdPr var_88
  loc_B512B9: Me.DataField = from_stack_1
  loc_B512BE: FFree1Ad var_88
  loc_B512C1: LitStr "CodiReca"
  loc_B512C4: FLdPr Me
  loc_B512C7: VCallAd Control_ID_CodiRecaTxt
  loc_B512CA: FStAdFunc var_88
  loc_B512CD: FLdPr var_88
  loc_B512D0: Me.DataField = from_stack_1
  loc_B512D5: FFree1Ad var_88
  loc_B512D8: LitStr "DetaReca"
  loc_B512DB: FLdPr Me
  loc_B512DE: VCallAd Control_ID_DetaRecaLbl
  loc_B512E1: FStAdFunc var_88
  loc_B512E4: FLdPr var_88
  loc_B512E7: Me.DataField = from_stack_1
  loc_B512EC: FFree1Ad var_88
  loc_B512EF: LitStr "CodiOfju"
  loc_B512F2: FLdPr Me
  loc_B512F5: VCallAd Control_ID_CodiOfjuTxt
  loc_B512F8: FStAdFunc var_88
  loc_B512FB: FLdPr var_88
  loc_B512FE: Me.DataField = from_stack_1
  loc_B51303: FFree1Ad var_88
  loc_B51306: LitStr "DetaOfju"
  loc_B51309: FLdPr Me
  loc_B5130C: VCallAd Control_ID_DetaOfjuLbl
  loc_B5130F: FStAdFunc var_88
  loc_B51312: FLdPr var_88
  loc_B51315: Me.DataField = from_stack_1
  loc_B5131A: FFree1Ad var_88
  loc_B5131D: LitStr "CapiApre"
  loc_B51320: FLdPr Me
  loc_B51323: VCallAd Control_ID_CapiApreTxt
  loc_B51326: FStAdFunc var_88
  loc_B51329: FLdPr var_88
  loc_B5132C: Me.DataField = from_stack_1
  loc_B51331: FFree1Ad var_88
  loc_B51334: LitStr "RecaApre"
  loc_B51337: FLdPr Me
  loc_B5133A: VCallAd Control_ID_RecaApreTxt
  loc_B5133D: FStAdFunc var_88
  loc_B51340: FLdPr var_88
  loc_B51343: Me.DataField = from_stack_1
  loc_B51348: FFree1Ad var_88
  loc_B5134B: LitStr "TotaApre"
  loc_B5134E: FLdPr Me
  loc_B51351: VCallAd Control_ID_TotaApreTxt
  loc_B51354: FStAdFunc var_88
  loc_B51357: FLdPr var_88
  loc_B5135A: Me.DataField = from_stack_1
  loc_B5135F: FFree1Ad var_88
  loc_B51362: LitI4 0
  loc_B51367: LitI4 1
  loc_B5136C: FLdRfVar var_AC
  loc_B5136F: Redim
  loc_B51379: FLdPr Me
  loc_B5137C: MemLdRfVar from_stack_1.global_52
  loc_B5137F: NewIfNullAd
  loc_B51382: FStAd var_88 
  loc_B51386: FLdRfVar var_88
  loc_B51389: CVarRef
  loc_B5138E: ParmAry1St
  loc_B51394: FLdPr Me
  loc_B51397: VCallAd Control_ID_dgdABMS
  loc_B5139A: CVarAd
  loc_B5139E: ParmAry1St
  loc_B513A4: FLdRfVar var_AC
  loc_B513A7: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B513AC: ILdRf var_88
  loc_B513AF: CastAd
  loc_B513B2: FLdPr Me
  loc_B513B5: MemStAdFunc
  loc_B513B9: FLdRfVar var_AC
  loc_B513BC: Erase
  loc_B513BD: FFree1Ad var_88
  loc_B513C0: LitI4 0
  loc_B513C5: LitI4 1
  loc_B513CA: FLdRfVar var_AC
  loc_B513CD: Redim
  loc_B513D7: FLdPr Me
  loc_B513DA: MemLdRfVar from_stack_1.global_56
  loc_B513DD: NewIfNullAd
  loc_B513E0: FStAd var_88 
  loc_B513E4: FLdRfVar var_88
  loc_B513E7: CVarRef
  loc_B513EC: ParmAry1St
  loc_B513F2: FLdPr Me
  loc_B513F5: VCallAd Control_ID_ApreDetaDgd
  loc_B513F8: CVarAd
  loc_B513FC: ParmAry1St
  loc_B51402: FLdRfVar var_AC
  loc_B51405: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B5140A: ILdRf var_88
  loc_B5140D: CastAd
  loc_B51410: FLdPr Me
  loc_B51413: MemStAdFunc
  loc_B51417: FLdRfVar var_AC
  loc_B5141A: Erase
  loc_B5141B: FFree1Ad var_88
  loc_B5141E: LitI4 0
  loc_B51423: LitI4 1
  loc_B51428: FLdRfVar var_AC
  loc_B5142B: Redim
  loc_B51435: FLdPr Me
  loc_B51438: MemLdRfVar from_stack_1.global_60
  loc_B5143B: NewIfNullAd
  loc_B5143E: FStAd var_88 
  loc_B51442: FLdRfVar var_88
  loc_B51445: CVarRef
  loc_B5144A: ParmAry1St
  loc_B51450: FLdPr Me
  loc_B51453: VCallAd Control_ID_InstApreDgd
  loc_B51456: CVarAd
  loc_B5145A: ParmAry1St
  loc_B51460: FLdRfVar var_AC
  loc_B51463: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B51468: ILdRf var_88
  loc_B5146B: CastAd
  loc_B5146E: FLdPr Me
  loc_B51471: MemStAdFunc
  loc_B51475: FLdRfVar var_AC
  loc_B51478: Erase
  loc_B51479: FFree1Ad var_88
  loc_B5147C: Call EnlazaTodo()
  loc_B51481: ILdRf Me
  loc_B51484: CastAd
  loc_B51487: FStAdFunc var_88
  loc_B5148A: FLdRfVar var_88
  loc_B5148D: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_B51492: FFree1Ad var_88
  loc_B51495: LitI2_Byte 0
  loc_B51497: ILdRf Me
  loc_B5149A: CastAd
  loc_B5149D: FStAdFunc var_88
  loc_B514A0: FLdRfVar var_88
  loc_B514A3: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_B514A8: FFree1Ad var_88
  loc_B514AB: LitVarI2 var_98, 0
  loc_B514B0: PopAdLdVar
  loc_B514B1: LitStr "Boleta de Apremio"
  loc_B514B4: FLdPr Me
  loc_B514B7: VCallAd Control_ID_FiltroCbo
  loc_B514BA: FStAdFunc var_88
  loc_B514BD: FLdPr var_88
  loc_B514C0: Me.AddItem from_stack_1, from_stack_2
  loc_B514C5: FFree1Ad var_88
  loc_B514C8: LitVarI2 var_98, 1
  loc_B514CD: PopAdLdVar
  loc_B514CE: LitStr "Apellido y Nombre"
  loc_B514D1: FLdPr Me
  loc_B514D4: VCallAd Control_ID_FiltroCbo
  loc_B514D7: FStAdFunc var_88
  loc_B514DA: FLdPr var_88
  loc_B514DD: Me.AddItem from_stack_1, from_stack_2
  loc_B514E2: FFree1Ad var_88
  loc_B514E5: LitVarI2 var_98, 2
  loc_B514EA: PopAdLdVar
  loc_B514EB: LitStr "Numero de Cuenta"
  loc_B514EE: FLdPr Me
  loc_B514F1: VCallAd Control_ID_FiltroCbo
  loc_B514F4: FStAdFunc var_88
  loc_B514F7: FLdPr var_88
  loc_B514FA: Me.AddItem from_stack_1, from_stack_2
  loc_B514FF: FFree1Ad var_88
  loc_B51502: LitVarI2 var_98, 3
  loc_B51507: PopAdLdVar
  loc_B51508: LitStr "Auto"
  loc_B5150B: FLdPr Me
  loc_B5150E: VCallAd Control_ID_FiltroCbo
  loc_B51511: FStAdFunc var_88
  loc_B51514: FLdPr var_88
  loc_B51517: Me.AddItem from_stack_1, from_stack_2
  loc_B5151C: FFree1Ad var_88
  loc_B5151F: LitVarI2 var_98, 4
  loc_B51524: PopAdLdVar
  loc_B51525: LitStr "C.U.I.L"
  loc_B51528: FLdPr Me
  loc_B5152B: VCallAd Control_ID_FiltroCbo
  loc_B5152E: FStAdFunc var_88
  loc_B51531: FLdPr var_88
  loc_B51534: Me.AddItem from_stack_1, from_stack_2
  loc_B51539: FFree1Ad var_88
  loc_B5153C: LitVarI2 var_98, 5
  loc_B51541: PopAdLdVar
  loc_B51542: LitStr "Documento"
  loc_B51545: FLdPr Me
  loc_B51548: VCallAd Control_ID_FiltroCbo
  loc_B5154B: FStAdFunc var_88
  loc_B5154E: FLdPr var_88
  loc_B51551: Me.AddItem from_stack_1, from_stack_2
  loc_B51556: FFree1Ad var_88
  loc_B51559: LitI2_Byte 0
  loc_B5155B: FLdPr Me
  loc_B5155E: VCallAd Control_ID_FiltroCbo
  loc_B51561: FStAdFunc var_88
  loc_B51564: FLdPr var_88
  loc_B51567: Me.ListIndex = from_stack_1
  loc_B5156C: FFree1Ad var_88
  loc_B5156F: LitI4 0
  loc_B51574: LitI4 1
  loc_B51579: FLdRfVar var_AC
  loc_B5157C: Redim
  loc_B51586: FLdPr Me
  loc_B51589: VCallAd Control_ID_FiltroCbo
  loc_B5158C: CVarAd
  loc_B51590: ParmAry1St
  loc_B51596: FLdPr Me
  loc_B51599: VCallAd Control_ID_FiltroMsk
  loc_B5159C: CVarAd
  loc_B515A0: ParmAry1St
  loc_B515A6: FLdRfVar var_AC
  loc_B515A9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B515AE: FLdRfVar var_AC
  loc_B515B1: Erase
  loc_B515B2: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A64740
  'Data Table: 52C1B8
  loc_A646E4: FLdRfVar var_C2
  loc_A646E7: FLdRfVar var_C0
  loc_A646EA: LitVarI2 var_B8, 1
  loc_A646EF: FLdPr Me
  loc_A646F2: VCallAd Control_ID_tlbABMS
  loc_A646F5: FStAdFunc var_88
  loc_A646F8: FLdPr var_88
  loc_A646FB: LateIdLdVar var_98 DispID_3 0
  loc_A64702: CastAdVar Me
  loc_A64706: FStAdFunc var_BC
  loc_A64709: FLdPr var_BC
  loc_A6470C:  = Me.Buttons.ControlDefault
  loc_A64711: FLdPr var_C0
  loc_A64714:  = Me.Enabled
  loc_A64719: FLdI2 var_C2
  loc_A6471C: FFreeAd var_88 = "": var_BC = ""
  loc_A64725: FFreeVar var_98 = ""
  loc_A6472C: BranchF loc_A6473D
  loc_A6472F: FLdPr Me
  loc_A64732: MemLdRfVar from_stack_1.global_52
  loc_A64735: NewIfNullPr clsapremio
  loc_A64738: Call clsapremio.Requery()
  loc_A6473D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CA4C4
  'Data Table: 52C1B8
  loc_9CA4AC: ILdI2 KeyCode
  loc_9CA4AF: ILdRf Me
  loc_9CA4B2: CastAd
  loc_9CA4B5: FStAdFunc var_88
  loc_9CA4B8: FLdRfVar var_88
  loc_9CA4BB: ImpAdCallFPR4  = Proc_272_5_B525D4()
  loc_9CA4C0: FFree1Ad var_88
  loc_9CA4C3: ExitProcHresult
End Sub

Private Sub ObseApreTxt_GotFocus() '9BEDC0
  'Data Table: 52C1B8
  loc_9BEDAC: FLdPr Me
  loc_9BEDAF: VCallAd Control_ID_ObseApreTxt
  loc_9BEDB2: CVarAd
  loc_9BEDB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEDBB: FFree1Var var_94 = ""
  loc_9BEDBE: ExitProcHresult
End Sub

Private Sub ObseApreTxt_Validate(Cancel As Boolean) 'AA7750
  'Data Table: 52C1B8
  loc_AA768C: FLdRfVar var_8A
  loc_AA768F: FLdPr Me
  loc_AA7692: VCallAd Control_ID_cmdCancelar
  loc_AA7695: FStAdFunc var_88
  loc_AA7698: FLdPr var_88
  loc_AA769B:  = Me.Value
  loc_AA76A0: FLdI2 var_8A
  loc_AA76A3: NotI4
  loc_AA76A4: FLdRfVar var_92
  loc_AA76A7: FLdPr Me
  loc_AA76AA: VCallAd Control_ID_ObseApreTxt
  loc_AA76AD: FStAdFunc var_90
  loc_AA76B0: FLdPr var_90
  loc_AA76B3:  = Me.Enabled
  loc_AA76B8: FLdI2 var_92
  loc_AA76BB: AndI4
  loc_AA76BC: FFreeAd var_88 = ""
  loc_AA76C3: BranchF loc_AA774F
  loc_AA76C6: FLdRfVar var_98
  loc_AA76C9: FLdPr Me
  loc_AA76CC: VCallAd Control_ID_ObseApreTxt
  loc_AA76CF: FStAdFunc var_88
  loc_AA76D2: FLdPr var_88
  loc_AA76D5:  = Me.Text
  loc_AA76DA: ILdRf var_98
  loc_AA76DD: LitStr vbNullString
  loc_AA76E0: NeStr
  loc_AA76E2: FFree1Str var_98
  loc_AA76E5: FFree1Ad var_88
  loc_AA76E8: BranchF loc_AA774F
  loc_AA76EB: FLdRfVar var_98
  loc_AA76EE: FLdPr Me
  loc_AA76F1: VCallAd Control_ID_ObseApreTxt
  loc_AA76F4: FStAdFunc var_88
  loc_AA76F7: FLdPr var_88
  loc_AA76FA:  = Me.Text
  loc_AA76FF: ILdRf var_98
  loc_AA7702: LitStr "Observaciones"
  loc_AA7705: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA770A: FStStrNoPop var_9C
  loc_AA770D: FLdPr Me
  loc_AA7710: MemStStrCopy
  loc_AA7714: FFreeStr var_98 = ""
  loc_AA771B: FFree1Ad var_88
  loc_AA771E: FLdPr Me
  loc_AA7721: MemLdStr global_68
  loc_AA7724: LitStr vbNullString
  loc_AA7727: NeStr
  loc_AA7729: BranchF loc_AA774F
  loc_AA772C: FLdPr Me
  loc_AA772F: MemLdStr global_68
  loc_AA7732: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA7737: FLdPr Me
  loc_AA773A: VCallAd Control_ID_ObseApreTxt
  loc_AA773D: CVarAd
  loc_AA7741: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA7746: FFree1Var var_AC = ""
  loc_AA7749: LitI2_Byte &HFF
  loc_AA774B: IStI2 Cancel
  loc_AA774E: ExitProcHresult
  loc_AA774F: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'AE3390
  'Data Table: 52C1B8
  loc_AE3238: ILdRf Button
  loc_AE323B: FStAd var_88 
  loc_AE323F: FLdRfVar var_8C
  loc_AE3242: FLdPr var_88
  loc_AE3245:  = Me.Key
  loc_AE324A: FLdZeroAd var_8C
  loc_AE324D: FStStr var_90
  loc_AE3250: ILdRf var_90
  loc_AE3253: LitStr "btnCrear"
  loc_AE3256: EqStr
  loc_AE3258: BranchF loc_AE325E
  loc_AE325B: Branch loc_AE338C
  loc_AE325E: ILdRf var_90
  loc_AE3261: LitStr "btnModificar"
  loc_AE3264: EqStr
  loc_AE3266: BranchF loc_AE326C
  loc_AE3269: Branch loc_AE338C
  loc_AE326C: ILdRf var_90
  loc_AE326F: LitStr "btnEliminar"
  loc_AE3272: EqStr
  loc_AE3274: BranchF loc_AE327A
  loc_AE3277: Branch loc_AE338C
  loc_AE327A: ILdRf var_90
  loc_AE327D: LitStr "btnGuardar"
  loc_AE3280: EqStr
  loc_AE3282: BranchF loc_AE3288
  loc_AE3285: Branch loc_AE338C
  loc_AE3288: ILdRf var_90
  loc_AE328B: LitStr "btnCancelar"
  loc_AE328E: EqStr
  loc_AE3290: BranchF loc_AE329B
  loc_AE3293: Call cmdCancelar_Click()
  loc_AE3298: Branch loc_AE338C
  loc_AE329B: ILdRf var_90
  loc_AE329E: LitStr "btnPrimero"
  loc_AE32A1: EqStr
  loc_AE32A3: BranchF loc_AE32B7
  loc_AE32A6: FLdPr Me
  loc_AE32A9: MemLdRfVar from_stack_1.global_52
  loc_AE32AC: NewIfNullPr clsapremio
  loc_AE32AF: Call clsapremio.MoveFirst()
  loc_AE32B4: Branch loc_AE338C
  loc_AE32B7: ILdRf var_90
  loc_AE32BA: LitStr "btnAnterior"
  loc_AE32BD: EqStr
  loc_AE32BF: BranchF loc_AE32D3
  loc_AE32C2: FLdPr Me
  loc_AE32C5: MemLdRfVar from_stack_1.global_52
  loc_AE32C8: NewIfNullPr clsapremio
  loc_AE32CB: Call clsapremio.MovePrevious()
  loc_AE32D0: Branch loc_AE338C
  loc_AE32D3: ILdRf var_90
  loc_AE32D6: LitStr "btnSiguiente"
  loc_AE32D9: EqStr
  loc_AE32DB: BranchF loc_AE32EF
  loc_AE32DE: FLdPr Me
  loc_AE32E1: MemLdRfVar from_stack_1.global_52
  loc_AE32E4: NewIfNullPr clsapremio
  loc_AE32E7: Call clsapremio.MoveNext()
  loc_AE32EC: Branch loc_AE338C
  loc_AE32EF: ILdRf var_90
  loc_AE32F2: LitStr "btnUltimo"
  loc_AE32F5: EqStr
  loc_AE32F7: BranchF loc_AE330B
  loc_AE32FA: FLdPr Me
  loc_AE32FD: MemLdRfVar from_stack_1.global_52
  loc_AE3300: NewIfNullPr clsapremio
  loc_AE3303: Call clsapremio.MoveLast()
  loc_AE3308: Branch loc_AE338C
  loc_AE330B: ILdRf var_90
  loc_AE330E: LitStr "btnFiltrar"
  loc_AE3311: EqStr
  loc_AE3313: BranchF loc_AE3319
  loc_AE3316: Branch loc_AE338C
  loc_AE3319: ILdRf var_90
  loc_AE331C: LitStr "btnBuscar"
  loc_AE331F: EqStr
  loc_AE3321: BranchF loc_AE3327
  loc_AE3324: Branch loc_AE338C
  loc_AE3327: ILdRf var_90
  loc_AE332A: LitStr "btnImprimir"
  loc_AE332D: EqStr
  loc_AE332F: BranchF loc_AE3335
  loc_AE3332: Branch loc_AE338C
  loc_AE3335: ILdRf var_90
  loc_AE3338: LitStr "btnAyuda"
  loc_AE333B: EqStr
  loc_AE333D: BranchF loc_AE336C
  loc_AE3340: LitVar_Missing var_110
  loc_AE3343: LitVar_Missing var_F0
  loc_AE3346: LitVar_Missing var_D0
  loc_AE3349: LitI4 0
  loc_AE334E: LitVarStr var_A0, "Opcion no disponible en esta version."
  loc_AE3353: FStVarCopyObj var_B0
  loc_AE3356: FLdRfVar var_B0
  loc_AE3359: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AE335E: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_AE3369: Branch loc_AE338C
  loc_AE336C: ILdRf var_90
  loc_AE336F: LitStr "btnSalir"
  loc_AE3372: EqStr
  loc_AE3374: BranchF loc_AE338C
  loc_AE3377: ILdRf Me
  loc_AE337A: FStAdNoPop
  loc_AE337E: ImpAdLdRf MemVar_D9C5D8
  loc_AE3381: NewIfNullPr Global
  loc_AE3384: Global.Unload from_stack_1
  loc_AE3389: FFree1Ad var_114
  loc_AE338C: ExitProcHresult
  loc_AE338D: LeR8
  loc_AE338E: Ary1StI2
End Sub

Private Sub CodiRecaTxt_GotFocus() '9BE5E0
  'Data Table: 52C1B8
  loc_9BE5CC: FLdPr Me
  loc_9BE5CF: VCallAd Control_ID_CodiRecaTxt
  loc_9BE5D2: CVarAd
  loc_9BE5D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE5DB: FFree1Var var_94 = ""
  loc_9BE5DE: ExitProcHresult
End Sub

Private Sub CodiRecaTxt_KeyPress(KeyAscii As Integer) '9C84B4
  'Data Table: 52C1B8
  loc_9C849C: LitStr "0123456789"
  loc_9C849F: FStStrCopy var_88
  loc_9C84A2: FLdRfVar var_88
  loc_9C84A5: ILdRf KeyAscii
  loc_9C84A8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C84AD: IStI2 KeyAscii
  loc_9C84B0: FFree1Str var_88
  loc_9C84B3: ExitProcHresult
End Sub

Private Sub CodiRecaTxt_Validate(Cancel As Boolean) 'ACDC4C
  'Data Table: 52C1B8
  loc_ACDB28: FLdRfVar var_8A
  loc_ACDB2B: FLdPr Me
  loc_ACDB2E: VCallAd Control_ID_cmdCancelar
  loc_ACDB31: FStAdFunc var_88
  loc_ACDB34: FLdPr var_88
  loc_ACDB37:  = Me.Value
  loc_ACDB3C: FLdI2 var_8A
  loc_ACDB3F: NotI4
  loc_ACDB40: FLdRfVar var_92
  loc_ACDB43: FLdPr Me
  loc_ACDB46: VCallAd Control_ID_CodiRecaTxt
  loc_ACDB49: FStAdFunc var_90
  loc_ACDB4C: FLdPr var_90
  loc_ACDB4F:  = Me.Enabled
  loc_ACDB54: FLdI2 var_92
  loc_ACDB57: AndI4
  loc_ACDB58: FFreeAd var_88 = ""
  loc_ACDB5F: BranchF loc_ACDC4A
  loc_ACDB62: FLdRfVar var_98
  loc_ACDB65: FLdPr Me
  loc_ACDB68: VCallAd Control_ID_CodiRecaTxt
  loc_ACDB6B: FStAdFunc var_88
  loc_ACDB6E: FLdPr var_88
  loc_ACDB71:  = Me.Text
  loc_ACDB76: ILdRf var_98
  loc_ACDB79: ImpAdCallI2 Proc_18_40_A5686C()
  loc_ACDB7E: FStStrNoPop var_9C
  loc_ACDB81: FLdPr Me
  loc_ACDB84: MemStStrCopy
  loc_ACDB88: FFreeStr var_98 = ""
  loc_ACDB8F: FFree1Ad var_88
  loc_ACDB92: FLdPr Me
  loc_ACDB95: MemLdStr global_68
  loc_ACDB98: LitStr vbNullString
  loc_ACDB9B: NeStr
  loc_ACDB9D: BranchF loc_ACDBC6
  loc_ACDBA0: FLdPr Me
  loc_ACDBA3: MemLdStr global_68
  loc_ACDBA6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACDBAB: FLdPr Me
  loc_ACDBAE: VCallAd Control_ID_CodiRecaTxt
  loc_ACDBB1: CVarAd
  loc_ACDBB5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACDBBA: FFree1Var var_AC = ""
  loc_ACDBBD: LitI2_Byte &HFF
  loc_ACDBBF: IStI2 Cancel
  loc_ACDBC2: ExitProcHresult
  loc_ACDBC3: Branch loc_ACDC4A
  loc_ACDBC6: FLdRfVar var_98
  loc_ACDBC9: FLdPr Me
  loc_ACDBCC: VCallAd Control_ID_CodiRecaTxt
  loc_ACDBCF: FStAdFunc var_88
  loc_ACDBD2: FLdPr var_88
  loc_ACDBD5:  = Me.Text
  loc_ACDBDA: ILdRf var_98
  loc_ACDBDD: CUI1Str
  loc_ACDBDF: ImpAdCallI2  = Proc_270_46_A7A9A0()
  loc_ACDBE4: FStStrNoPop var_9C
  loc_ACDBE7: FLdPr Me
  loc_ACDBEA: VCallAd Control_ID_DetaRecaLbl
  loc_ACDBED: FStAdFunc var_90
  loc_ACDBF0: FLdPr var_90
  loc_ACDBF3: Me.Caption = from_stack_1
  loc_ACDBF8: FFreeStr var_98 = ""
  loc_ACDBFF: FFreeAd var_88 = ""
  loc_ACDC06: FLdPr Me
  loc_ACDC09: MemLdStr global_68
  loc_ACDC0C: LitStr vbNullString
  loc_ACDC0F: NeStr
  loc_ACDC11: BranchF loc_ACDC4A
  loc_ACDC14: FLdPr Me
  loc_ACDC17: MemLdStr global_68
  loc_ACDC1A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACDC1F: FLdRfVar var_98
  loc_ACDC22: FLdPr Me
  loc_ACDC25: VCallAd Control_ID_CodiRecaTxt
  loc_ACDC28: FStAdFunc var_88
  loc_ACDC2B: FLdPr var_88
  loc_ACDC2E:  = Me.Text
  loc_ACDC33: FLdZeroAd var_98
  loc_ACDC36: CVarStr var_AC
  loc_ACDC39: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACDC3E: FFree1Ad var_88
  loc_ACDC41: FFree1Var var_AC = ""
  loc_ACDC44: LitI2_Byte &HFF
  loc_ACDC46: IStI2 Cancel
  loc_ACDC49: ExitProcHresult
  loc_ACDC4A: ExitProcHresult
End Sub

Private Sub CodiOfjuCmd_Click() 'A98F8C
  'Data Table: 52C1B8
  loc_A98ED8: LitStr "SELECT CodiReca, DetaReca FROM recaudador ORDER BY DetaReca"
  loc_A98EDB: ImpAdLdRf MemVar_D9419C
  loc_A98EDE: NewIfNullPr dlgBuscarRecaudador
  loc_A98EE1: Call dlgBuscarRecaudador.sPasaSelectPut(from_stack_1v)
  loc_A98EE6: LitVar_Missing var_A4
  loc_A98EE9: PopAdLdVar
  loc_A98EEA: LitVarI4
  loc_A98EF2: PopAdLdVar
  loc_A98EF3: ImpAdLdRf MemVar_D9419C
  loc_A98EF6: NewIfNullPr dlgBuscarRecaudador
  loc_A98EF9: dlgBuscarRecaudador.Show from_stack_1, from_stack_2
  loc_A98EFE: FLdRfVar var_A8
  loc_A98F01: ImpAdLdRf MemVar_D9419C
  loc_A98F04: NewIfNullPr dlgBuscarRecaudador
  loc_A98F07: from_stack_1v = dlgBuscarRecaudador.sPasaCodigoGet()
  loc_A98F0C: ILdRf var_A8
  loc_A98F0F: LitStr vbNullString
  loc_A98F12: NeStr
  loc_A98F14: FFree1Str var_A8
  loc_A98F17: BranchF loc_A98F78
  loc_A98F1A: FLdRfVar var_A8
  loc_A98F1D: ImpAdLdRf MemVar_D9419C
  loc_A98F20: NewIfNullPr dlgBuscarRecaudador
  loc_A98F23: from_stack_1v = dlgBuscarRecaudador.sPasaCodigoGet()
  loc_A98F28: ILdRf var_A8
  loc_A98F2B: FLdPr Me
  loc_A98F2E: VCallAd Control_ID_
  loc_A98F31: FStAdFunc var_AC
  loc_A98F34: FLdPr var_AC
  loc_A98F37: dlgBuscarRecaudador.TextBox.Text = from_stack_1
  loc_A98F3C: FFree1Str var_A8
  loc_A98F3F: FFree1Ad var_AC
  loc_A98F42: LitStr vbNullString
  loc_A98F45: ImpAdLdRf MemVar_D9419C
  loc_A98F48: NewIfNullPr dlgBuscarRecaudador
  loc_A98F4B: Call dlgBuscarRecaudador.sPasaCodigoPut(from_stack_1v)
  loc_A98F50: FLdRfVar var_A8
  loc_A98F53: ImpAdLdRf MemVar_D9419C
  loc_A98F56: NewIfNullPr dlgBuscarRecaudador
  loc_A98F59: from_stack_1v = dlgBuscarRecaudador.sPasaDetalleGet()
  loc_A98F5E: ILdRf var_A8
  loc_A98F61: FLdPr Me
  loc_A98F64: VCallAd Control_ID_
  loc_A98F67: FStAdFunc var_AC
  loc_A98F6A: FLdPr var_AC
  loc_A98F6D: dlgBuscarRecaudador.Label.Caption = from_stack_1
  loc_A98F72: FFree1Str var_A8
  loc_A98F75: FFree1Ad var_AC
  loc_A98F78: FLdPr Me
  loc_A98F7B: VCallAd Control_ID_CodiRecaTxt
  loc_A98F7E: CVarAd
  loc_A98F82: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98F87: FFree1Var var_BC = ""
  loc_A98F8A: ExitProcHresult
End Sub

Private Sub CodiRecaCmd_Click() 'A98E9C
  'Data Table: 52C1B8
  loc_A98DE8: LitStr "SELECT CodiOfju, DetaOfju FROM oficjust ORDER BY DetaOfju"
  loc_A98DEB: ImpAdLdRf MemVar_D94138
  loc_A98DEE: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98DF1: Call dlgBuscarOficialdeJusticia.sPasaSelectPut(from_stack_1v)
  loc_A98DF6: LitVar_Missing var_A4
  loc_A98DF9: PopAdLdVar
  loc_A98DFA: LitVarI4
  loc_A98E02: PopAdLdVar
  loc_A98E03: ImpAdLdRf MemVar_D94138
  loc_A98E06: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98E09: dlgBuscarOficialdeJusticia.Show from_stack_1, from_stack_2
  loc_A98E0E: FLdRfVar var_A8
  loc_A98E11: ImpAdLdRf MemVar_D94138
  loc_A98E14: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98E17: from_stack_1v = dlgBuscarOficialdeJusticia.sPasaCodigoGet()
  loc_A98E1C: ILdRf var_A8
  loc_A98E1F: LitStr vbNullString
  loc_A98E22: NeStr
  loc_A98E24: FFree1Str var_A8
  loc_A98E27: BranchF loc_A98E88
  loc_A98E2A: FLdRfVar var_A8
  loc_A98E2D: ImpAdLdRf MemVar_D94138
  loc_A98E30: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98E33: from_stack_1v = dlgBuscarOficialdeJusticia.sPasaCodigoGet()
  loc_A98E38: ILdRf var_A8
  loc_A98E3B: FLdPr Me
  loc_A98E3E: VCallAd Control_ID_
  loc_A98E41: FStAdFunc var_AC
  loc_A98E44: FLdPr var_AC
  loc_A98E47: dlgBuscarOficialdeJusticia.TextBox.Text = from_stack_1
  loc_A98E4C: FFree1Str var_A8
  loc_A98E4F: FFree1Ad var_AC
  loc_A98E52: LitStr vbNullString
  loc_A98E55: ImpAdLdRf MemVar_D94138
  loc_A98E58: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98E5B: Call dlgBuscarOficialdeJusticia.sPasaCodigoPut(from_stack_1v)
  loc_A98E60: FLdRfVar var_A8
  loc_A98E63: ImpAdLdRf MemVar_D94138
  loc_A98E66: NewIfNullPr dlgBuscarOficialdeJusticia
  loc_A98E69: from_stack_1v = dlgBuscarOficialdeJusticia.sPasaDetalleGet()
  loc_A98E6E: ILdRf var_A8
  loc_A98E71: FLdPr Me
  loc_A98E74: VCallAd Control_ID_
  loc_A98E77: FStAdFunc var_AC
  loc_A98E7A: FLdPr var_AC
  loc_A98E7D: dlgBuscarOficialdeJusticia.Label.Caption = from_stack_1
  loc_A98E82: FFree1Str var_A8
  loc_A98E85: FFree1Ad var_AC
  loc_A98E88: FLdPr Me
  loc_A98E8B: VCallAd Control_ID_CodiOfjuTxt
  loc_A98E8E: CVarAd
  loc_A98E92: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98E97: FFree1Var var_BC = ""
  loc_A98E9A: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AA225C
  'Data Table: 52C1B8
  loc_AA21AC: LitI2_Byte 0
  loc_AA21AE: FLdPr Me
  loc_AA21B1: MemStI2 global_64
  loc_AA21B4: LitI2_Byte 0
  loc_AA21B6: ILdRf Me
  loc_AA21B9: CastAd
  loc_AA21BC: FStAdFunc var_88
  loc_AA21BF: FLdRfVar var_88
  loc_AA21C2: ImpAdCallFPR4  = Proc_272_3_B44A88()
  loc_AA21C7: FFree1Ad var_88
  loc_AA21CA: LitI4 0
  loc_AA21CF: LitI4 0
  loc_AA21D4: FLdRfVar var_8C
  loc_AA21D7: Redim
  loc_AA21E1: FLdPr Me
  loc_AA21E4: VCallAd Control_ID_dgdABMS
  loc_AA21E7: CVarAd
  loc_AA21EB: ParmAry1St
  loc_AA21F1: FLdRfVar var_8C
  loc_AA21F4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA21F9: FLdRfVar var_8C
  loc_AA21FC: Erase
  loc_AA21FD: Call EnlazaTodo()
  loc_AA2202: ILdRf Me
  loc_AA2205: CastAd
  loc_AA2208: FStAdFunc var_88
  loc_AA220B: FLdRfVar var_88
  loc_AA220E: ImpAdCallFPR4  = Proc_272_16_AA0A60()
  loc_AA2213: FFree1Ad var_88
  loc_AA2216: LitI4 0
  loc_AA221B: LitI4 1
  loc_AA2220: FLdRfVar var_8C
  loc_AA2223: Redim
  loc_AA222D: FLdPr Me
  loc_AA2230: VCallAd Control_ID_FiltroCbo
  loc_AA2233: CVarAd
  loc_AA2237: ParmAry1St
  loc_AA223D: FLdPr Me
  loc_AA2240: VCallAd Control_ID_FiltroMsk
  loc_AA2243: CVarAd
  loc_AA2247: ParmAry1St
  loc_AA224D: FLdRfVar var_8C
  loc_AA2250: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA2255: FLdRfVar var_8C
  loc_AA2258: Erase
  loc_AA2259: ExitProcHresult
End Sub

Private Sub CodiOfjuTxt_GotFocus() '9BC3D8
  'Data Table: 52C1B8
  loc_9BC3C4: FLdPr Me
  loc_9BC3C7: VCallAd Control_ID_CodiOfjuTxt
  loc_9BC3CA: CVarAd
  loc_9BC3CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC3D3: FFree1Var var_94 = ""
  loc_9BC3D6: ExitProcHresult
End Sub

Private Sub CodiOfjuTxt_KeyPress(KeyAscii As Integer) '9C8500
  'Data Table: 52C1B8
  loc_9C84E8: LitStr "0123456789"
  loc_9C84EB: FStStrCopy var_88
  loc_9C84EE: FLdRfVar var_88
  loc_9C84F1: ILdRf KeyAscii
  loc_9C84F4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C84F9: IStI2 KeyAscii
  loc_9C84FC: FFree1Str var_88
  loc_9C84FF: ExitProcHresult
End Sub

Private Sub CodiOfjuTxt_Validate(Cancel As Boolean) 'AD875C
  'Data Table: 52C1B8
  loc_AD861C: FLdRfVar var_8A
  loc_AD861F: FLdPr Me
  loc_AD8622: VCallAd Control_ID_cmdCancelar
  loc_AD8625: FStAdFunc var_88
  loc_AD8628: FLdPr var_88
  loc_AD862B:  = Me.Value
  loc_AD8630: FLdI2 var_8A
  loc_AD8633: NotI4
  loc_AD8634: FLdRfVar var_92
  loc_AD8637: FLdPr Me
  loc_AD863A: VCallAd Control_ID_CodiOfjuTxt
  loc_AD863D: FStAdFunc var_90
  loc_AD8640: FLdPr var_90
  loc_AD8643:  = Me.Enabled
  loc_AD8648: FLdI2 var_92
  loc_AD864B: AndI4
  loc_AD864C: FFreeAd var_88 = ""
  loc_AD8653: BranchF loc_AD8758
  loc_AD8656: FLdRfVar var_9C
  loc_AD8659: FLdRfVar var_98
  loc_AD865C: FLdPr Me
  loc_AD865F: VCallAd Control_ID_CodiOfjuTxt
  loc_AD8662: FStAdFunc var_88
  loc_AD8665: FLdPr var_88
  loc_AD8668:  = Me.Text
  loc_AD866D: ILdRf var_98
  loc_AD8670: CI2Str
  loc_AD8672: FLdPr Me
  loc_AD8675: MemLdRfVar from_stack_1.global_52
  loc_AD8678: NewIfNullPr clsapremio
  loc_AD867B: from_stack_2v = clsapremio.CodiOfjuValidate(from_stack_1v)
  loc_AD8680: ILdRf var_9C
  loc_AD8683: FLdPr Me
  loc_AD8686: MemStStrCopy
  loc_AD868A: FFreeStr var_98 = ""
  loc_AD8691: FFree1Ad var_88
  loc_AD8694: FLdPr Me
  loc_AD8697: MemLdStr global_68
  loc_AD869A: LitStr vbNullString
  loc_AD869D: NeStr
  loc_AD869F: BranchF loc_AD86C8
  loc_AD86A2: FLdPr Me
  loc_AD86A5: MemLdStr global_68
  loc_AD86A8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD86AD: FLdPr Me
  loc_AD86B0: VCallAd Control_ID_CodiOfjuTxt
  loc_AD86B3: CVarAd
  loc_AD86B7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD86BC: FFree1Var var_AC = ""
  loc_AD86BF: LitI2_Byte &HFF
  loc_AD86C1: IStI2 Cancel
  loc_AD86C4: ExitProcHresult
  loc_AD86C5: Branch loc_AD8758
  loc_AD86C8: FLdRfVar var_9C
  loc_AD86CB: FLdRfVar var_98
  loc_AD86CE: FLdPr Me
  loc_AD86D1: VCallAd Control_ID_CodiOfjuTxt
  loc_AD86D4: FStAdFunc var_88
  loc_AD86D7: FLdPr var_88
  loc_AD86DA:  = Me.Text
  loc_AD86DF: ILdRf var_98
  loc_AD86E2: CI2Str
  loc_AD86E4: FLdPr Me
  loc_AD86E7: MemLdRfVar from_stack_1.global_52
  loc_AD86EA: NewIfNullPr clsapremio
  loc_AD86ED: from_stack_2v = clsapremio.BuscaDetalleOficialJusticia(from_stack_1v)
  loc_AD86F2: ILdRf var_9C
  loc_AD86F5: FLdPr Me
  loc_AD86F8: VCallAd Control_ID_DetaOfjuLbl
  loc_AD86FB: FStAdFunc var_90
  loc_AD86FE: FLdPr var_90
  loc_AD8701: Me.Caption = from_stack_1
  loc_AD8706: FFreeStr var_98 = ""
  loc_AD870D: FFreeAd var_88 = ""
  loc_AD8714: FLdPr Me
  loc_AD8717: MemLdStr global_68
  loc_AD871A: LitStr vbNullString
  loc_AD871D: NeStr
  loc_AD871F: BranchF loc_AD8758
  loc_AD8722: FLdPr Me
  loc_AD8725: MemLdStr global_68
  loc_AD8728: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD872D: FLdRfVar var_98
  loc_AD8730: FLdPr Me
  loc_AD8733: VCallAd Control_ID_CodiOfjuTxt
  loc_AD8736: FStAdFunc var_88
  loc_AD8739: FLdPr var_88
  loc_AD873C:  = Me.Text
  loc_AD8741: FLdZeroAd var_98
  loc_AD8744: CVarStr var_AC
  loc_AD8747: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AD874C: FFree1Ad var_88
  loc_AD874F: FFree1Var var_AC = ""
  loc_AD8752: LitI2_Byte &HFF
  loc_AD8754: IStI2 Cancel
  loc_AD8757: ExitProcHresult
  loc_AD8758: ExitProcHresult
  loc_AD8759: NotI4
  loc_AD875A: FFree1Str CodiOfjuTxt_Validate003
End Sub

Private Sub NumeApreTxt_GotFocus() '9BE940
  'Data Table: 52C1B8
  loc_9BE92C: FLdPr Me
  loc_9BE92F: VCallAd Control_ID_NumeApreTxt
  loc_9BE932: CVarAd
  loc_9BE936: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE93B: FFree1Var var_94 = ""
  loc_9BE93E: ExitProcHresult
End Sub

Private Sub CapiApreTxt_GotFocus() '9BC6F0
  'Data Table: 52C1B8
  loc_9BC6DC: FLdPr Me
  loc_9BC6DF: VCallAd Control_ID_CapiApreTxt
  loc_9BC6E2: CVarAd
  loc_9BC6E6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC6EB: FFree1Var var_94 = ""
  loc_9BC6EE: ExitProcHresult
End Sub

Private Sub CapiApreTxt_KeyPress(KeyAscii As Integer) 'A06EF8
  'Data Table: 52C1B8
  loc_A06EC4: LitStr "1234567890,."
  loc_A06EC7: FStStrCopy var_88
  loc_A06ECA: FLdRfVar var_88
  loc_A06ECD: ILdRf KeyAscii
  loc_A06ED0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06ED5: IStI2 KeyAscii
  loc_A06ED8: FFree1Str var_88
  loc_A06EDB: ILdI2 KeyAscii
  loc_A06EDE: LitStr "."
  loc_A06EE1: ImpAdCallI2 Asc()
  loc_A06EE6: EqI2
  loc_A06EE7: BranchF loc_A06EF5
  loc_A06EEA: LitStr ","
  loc_A06EED: ImpAdCallI2 Asc()
  loc_A06EF2: IStI2 KeyAscii
  loc_A06EF5: ExitProcHresult
End Sub

Private Sub CapiApreTxt_LostFocus() 'A75968
  'Data Table: 52C1B8
  loc_A75904: FLdRfVar var_8C
  loc_A75907: FLdPr Me
  loc_A7590A: VCallAd Control_ID_CapiApreTxt
  loc_A7590D: FStAdFunc var_88
  loc_A75910: FLdPr var_88
  loc_A75913:  = Me.Text
  loc_A75918: LitI4 1
  loc_A7591D: LitI4 1
  loc_A75922: LitVarStr var_AC, "0.00"
  loc_A75927: FStVarCopyObj var_BC
  loc_A7592A: FLdRfVar var_BC
  loc_A7592D: FLdZeroAd var_8C
  loc_A75930: CVarStr var_9C
  loc_A75933: FLdRfVar var_CC
  loc_A75936: ImpAdCallFPR4  = Format(, )
  loc_A7593B: FLdRfVar var_CC
  loc_A7593E: CStrVarVal var_D0
  loc_A75942: FLdPr Me
  loc_A75945: VCallAd Control_ID_CapiApreTxt
  loc_A75948: FStAdFunc var_D4
  loc_A7594B: FLdPr var_D4
  loc_A7594E: Me.Text = from_stack_1
  loc_A75953: FFree1Str var_D0
  loc_A75956: FFreeAd var_88 = ""
  loc_A7595D: FFreeVar var_9C = "": var_BC = ""
  loc_A75966: ExitProcHresult
End Sub

Private Sub CapiApreTxt_Validate(Cancel As Boolean) 'A931EC
  'Data Table: 52C1B8
  loc_A93148: FLdRfVar var_8A
  loc_A9314B: FLdPr Me
  loc_A9314E: VCallAd Control_ID_cmdCancelar
  loc_A93151: FStAdFunc var_88
  loc_A93154: FLdPr var_88
  loc_A93157:  = Me.Value
  loc_A9315C: FLdI2 var_8A
  loc_A9315F: NotI4
  loc_A93160: FLdRfVar var_92
  loc_A93163: FLdPr Me
  loc_A93166: VCallAd Control_ID_CapiApreTxt
  loc_A93169: FStAdFunc var_90
  loc_A9316C: FLdPr var_90
  loc_A9316F:  = Me.Enabled
  loc_A93174: FLdI2 var_92
  loc_A93177: AndI4
  loc_A93178: FFreeAd var_88 = ""
  loc_A9317F: BranchF loc_A931EA
  loc_A93182: FLdRfVar var_98
  loc_A93185: FLdPr Me
  loc_A93188: VCallAd Control_ID_CapiApreTxt
  loc_A9318B: FStAdFunc var_88
  loc_A9318E: FLdPr var_88
  loc_A93191:  = Me.Text
  loc_A93196: LitI2_Byte &HFF
  loc_A93198: LitI2_Byte 0
  loc_A9319A: ILdRf var_98
  loc_A9319D: LitStr "Capital"
  loc_A931A0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A931A5: FStStrNoPop var_9C
  loc_A931A8: FLdPr Me
  loc_A931AB: MemStStrCopy
  loc_A931AF: FFreeStr var_98 = ""
  loc_A931B6: FFree1Ad var_88
  loc_A931B9: FLdPr Me
  loc_A931BC: MemLdStr global_68
  loc_A931BF: LitStr vbNullString
  loc_A931C2: NeStr
  loc_A931C4: BranchF loc_A931EA
  loc_A931C7: FLdPr Me
  loc_A931CA: MemLdStr global_68
  loc_A931CD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A931D2: FLdPr Me
  loc_A931D5: VCallAd Control_ID_CapiApreTxt
  loc_A931D8: CVarAd
  loc_A931DC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A931E1: FFree1Var var_AC = ""
  loc_A931E4: LitI2_Byte &HFF
  loc_A931E6: IStI2 Cancel
  loc_A931E9: ExitProcHresult
  loc_A931EA: ExitProcHresult
End Sub

Private Sub AutoApreTxt_GotFocus() '9BCDB0
  'Data Table: 52C1B8
  loc_9BCD9C: FLdPr Me
  loc_9BCD9F: VCallAd Control_ID_AutoApreTxt
  loc_9BCDA2: CVarAd
  loc_9BCDA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCDAB: FFree1Var var_94 = ""
  loc_9BCDAE: ExitProcHresult
End Sub

Private Sub AutoApreTxt_KeyPress(KeyAscii As Integer) '9C8714
  'Data Table: 52C1B8
  loc_9C86FC: LitStr "0123456789"
  loc_9C86FF: FStStrCopy var_88
  loc_9C8702: FLdRfVar var_88
  loc_9C8705: ILdRf KeyAscii
  loc_9C8708: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9C870D: IStI2 KeyAscii
  loc_9C8710: FFree1Str var_88
  loc_9C8713: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9BC930
  'Data Table: 52C1B8
  loc_9BC91C: FLdPr Me
  loc_9BC91F: VCallAd Control_ID_FiltroMsk
  loc_9BC922: CVarAd
  loc_9BC926: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC92B: FFree1Var var_94 = ""
  loc_9BC92E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AECB58
  'Data Table: 52C1B8
  loc_AEC9C8: FLdRfVar var_8A
  loc_AEC9CB: FLdPr Me
  loc_AEC9CE: VCallAd Control_ID_FiltroCbo
  loc_AEC9D1: FStAdFunc var_88
  loc_AEC9D4: FLdPr var_88
  loc_AEC9D7:  = Me.ListIndex
  loc_AEC9DC: FLdI2 var_8A
  loc_AEC9DF: FStI2 var_8C
  loc_AEC9E2: FFree1Ad var_88
  loc_AEC9E5: FLdI2 var_8C
  loc_AEC9E8: LitI2_Byte 0
  loc_AEC9EA: EqI2
  loc_AEC9EB: BranchF loc_AECA23
  loc_AEC9EE: LitStr "Boleta de Apremio mayor o igual que: "
  loc_AEC9F1: FLdPr Me
  loc_AEC9F4: VCallAd Control_ID_FiltroMsk
  loc_AEC9F7: FStAdFunc var_88
  loc_AEC9FA: FLdPr var_88
  loc_AEC9FD: LateIdLdVar var_9C DispID_22 0
  loc_AECA04: CStrVarTmp
  loc_AECA05: FStStrNoPop var_A0
  loc_AECA08: ConcatStr
  loc_AECA09: FStStrNoPop var_A4
  loc_AECA0C: FLdPr Me
  loc_AECA0F: MemStStrCopy
  loc_AECA13: FFreeStr var_A0 = ""
  loc_AECA1A: FFree1Ad var_88
  loc_AECA1D: FFree1Var var_9C = ""
  loc_AECA20: Branch loc_AECB56
  loc_AECA23: FLdI2 var_8C
  loc_AECA26: LitI2_Byte 1
  loc_AECA28: EqI2
  loc_AECA29: BranchF loc_AECA61
  loc_AECA2C: LitStr "Apellido y Nombre que contiene. "
  loc_AECA2F: FLdPr Me
  loc_AECA32: VCallAd Control_ID_FiltroMsk
  loc_AECA35: FStAdFunc var_88
  loc_AECA38: FLdPr var_88
  loc_AECA3B: LateIdLdVar var_9C DispID_22 0
  loc_AECA42: CStrVarTmp
  loc_AECA43: FStStrNoPop var_A0
  loc_AECA46: ConcatStr
  loc_AECA47: FStStrNoPop var_A4
  loc_AECA4A: FLdPr Me
  loc_AECA4D: MemStStrCopy
  loc_AECA51: FFreeStr var_A0 = ""
  loc_AECA58: FFree1Ad var_88
  loc_AECA5B: FFree1Var var_9C = ""
  loc_AECA5E: Branch loc_AECB56
  loc_AECA61: FLdI2 var_8C
  loc_AECA64: LitI2_Byte 2
  loc_AECA66: EqI2
  loc_AECA67: BranchF loc_AECA9F
  loc_AECA6A: LitStr "Numero de Cuenta: "
  loc_AECA6D: FLdPr Me
  loc_AECA70: VCallAd Control_ID_FiltroMsk
  loc_AECA73: FStAdFunc var_88
  loc_AECA76: FLdPr var_88
  loc_AECA79: LateIdLdVar var_9C DispID_22 0
  loc_AECA80: CStrVarTmp
  loc_AECA81: FStStrNoPop var_A0
  loc_AECA84: ConcatStr
  loc_AECA85: FStStrNoPop var_A4
  loc_AECA88: FLdPr Me
  loc_AECA8B: MemStStrCopy
  loc_AECA8F: FFreeStr var_A0 = ""
  loc_AECA96: FFree1Ad var_88
  loc_AECA99: FFree1Var var_9C = ""
  loc_AECA9C: Branch loc_AECB56
  loc_AECA9F: FLdI2 var_8C
  loc_AECAA2: LitI2_Byte 3
  loc_AECAA4: EqI2
  loc_AECAA5: BranchF loc_AECADD
  loc_AECAA8: LitStr "Nro de Auto igual a: "
  loc_AECAAB: FLdPr Me
  loc_AECAAE: VCallAd Control_ID_FiltroMsk
  loc_AECAB1: FStAdFunc var_88
  loc_AECAB4: FLdPr var_88
  loc_AECAB7: LateIdLdVar var_9C DispID_22 0
  loc_AECABE: CStrVarTmp
  loc_AECABF: FStStrNoPop var_A0
  loc_AECAC2: ConcatStr
  loc_AECAC3: FStStrNoPop var_A4
  loc_AECAC6: FLdPr Me
  loc_AECAC9: MemStStrCopy
  loc_AECACD: FFreeStr var_A0 = ""
  loc_AECAD4: FFree1Ad var_88
  loc_AECAD7: FFree1Var var_9C = ""
  loc_AECADA: Branch loc_AECB56
  loc_AECADD: FLdI2 var_8C
  loc_AECAE0: LitI2_Byte 4
  loc_AECAE2: EqI2
  loc_AECAE3: BranchF loc_AECB1B
  loc_AECAE6: LitStr "Nro de CUIL igual a: "
  loc_AECAE9: FLdPr Me
  loc_AECAEC: VCallAd Control_ID_FiltroMsk
  loc_AECAEF: FStAdFunc var_88
  loc_AECAF2: FLdPr var_88
  loc_AECAF5: LateIdLdVar var_9C DispID_22 0
  loc_AECAFC: CStrVarTmp
  loc_AECAFD: FStStrNoPop var_A0
  loc_AECB00: ConcatStr
  loc_AECB01: FStStrNoPop var_A4
  loc_AECB04: FLdPr Me
  loc_AECB07: MemStStrCopy
  loc_AECB0B: FFreeStr var_A0 = ""
  loc_AECB12: FFree1Ad var_88
  loc_AECB15: FFree1Var var_9C = ""
  loc_AECB18: Branch loc_AECB56
  loc_AECB1B: FLdI2 var_8C
  loc_AECB1E: LitI2_Byte 5
  loc_AECB20: EqI2
  loc_AECB21: BranchF loc_AECB56
  loc_AECB24: LitStr "Nro de Documento igual a: "
  loc_AECB27: FLdPr Me
  loc_AECB2A: VCallAd Control_ID_FiltroMsk
  loc_AECB2D: FStAdFunc var_88
  loc_AECB30: FLdPr var_88
  loc_AECB33: LateIdLdVar var_9C DispID_22 0
  loc_AECB3A: CStrVarTmp
  loc_AECB3B: FStStrNoPop var_A0
  loc_AECB3E: ConcatStr
  loc_AECB3F: FStStrNoPop var_A4
  loc_AECB42: FLdPr Me
  loc_AECB45: MemStStrCopy
  loc_AECB49: FFreeStr var_A0 = ""
  loc_AECB50: FFree1Ad var_88
  loc_AECB53: FFree1Var var_9C = ""
  loc_AECB56: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9BC8A4
  'Data Table: 52C1B8
  loc_9BC88C: ILdI2 KeyAscii
  loc_9BC88F: CI4UI1
  loc_9BC890: LitI4 &HD
  loc_9BC895: EqI4
  loc_9BC896: BranchF loc_9BC8A3
  loc_9BC899: Call Proc_298_31_A63344()
  loc_9BC89E: Call cmdCancelar_Click()
  loc_9BC8A3: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'B2A440
  'Data Table: 52C1B8
  loc_B2A1E4: FLdRfVar var_88
  loc_B2A1E7: FLdPr Me
  loc_B2A1EA: MemLdRfVar from_stack_1.global_52
  loc_B2A1ED: NewIfNullPr clsapremio
  loc_B2A1F0: from_stack_1 = clsapremio.RecordCount
  loc_B2A1F5: ILdRf var_88
  loc_B2A1F8: LitI4 0
  loc_B2A1FD: GtI4
  loc_B2A1FE: BranchF loc_B2A43F
  loc_B2A201: LitI4 0
  loc_B2A206: LitI4 &H1F
  loc_B2A20B: FLdRfVar var_8C
  loc_B2A20E: Redim
  loc_B2A218: FLdPr Me
  loc_B2A21B: MemLdRfVar from_stack_1.global_52
  loc_B2A21E: NewIfNullAd
  loc_B2A221: FStAd var_90 
  loc_B2A225: FLdRfVar var_90
  loc_B2A228: CVarRef
  loc_B2A22D: ParmAry1St
  loc_B2A233: FLdPr Me
  loc_B2A236: VCallAd Control_ID_NumeApreTxt
  loc_B2A239: CVarAd
  loc_B2A23D: ParmAry1St
  loc_B2A243: FLdPr Me
  loc_B2A246: VCallAd Control_ID_CucuPersTxt
  loc_B2A249: CVarAd
  loc_B2A24D: ParmAry1St
  loc_B2A253: FLdPr Me
  loc_B2A256: VCallAd Control_ID_DetaPersTxt
  loc_B2A259: CVarAd
  loc_B2A25D: ParmAry1St
  loc_B2A263: FLdPr Me
  loc_B2A266: VCallAd Control_ID_CalleRealTxt
  loc_B2A269: CVarAd
  loc_B2A26D: ParmAry1St
  loc_B2A273: FLdPr Me
  loc_B2A276: VCallAd Control_ID_NumePuertaRealTxt
  loc_B2A279: CVarAd
  loc_B2A27D: ParmAry1St
  loc_B2A283: FLdPr Me
  loc_B2A286: VCallAd Control_ID_BarrioRealTxt
  loc_B2A289: CVarAd
  loc_B2A28D: ParmAry1St
  loc_B2A293: FLdPr Me
  loc_B2A296: VCallAd Control_ID_ManzanaRealTxt
  loc_B2A299: CVarAd
  loc_B2A29D: ParmAry1St
  loc_B2A2A3: FLdPr Me
  loc_B2A2A6: VCallAd Control_ID_CasaRealTxt
  loc_B2A2A9: CVarAd
  loc_B2A2AD: ParmAry1St
  loc_B2A2B3: FLdPr Me
  loc_B2A2B6: VCallAd Control_ID_LocalidadRealTxt
  loc_B2A2B9: CVarAd
  loc_B2A2BD: ParmAry1St
  loc_B2A2C3: FLdPr Me
  loc_B2A2C6: VCallAd Control_ID_CodigoPostalRealTxt
  loc_B2A2C9: CVarAd
  loc_B2A2CD: ParmAry1St
  loc_B2A2D3: FLdPr Me
  loc_B2A2D6: VCallAd Control_ID_CalleTxt
  loc_B2A2D9: CVarAd
  loc_B2A2DD: ParmAry1St
  loc_B2A2E3: FLdPr Me
  loc_B2A2E6: VCallAd Control_ID_NumePuertaTxt
  loc_B2A2E9: CVarAd
  loc_B2A2ED: ParmAry1St
  loc_B2A2F3: FLdPr Me
  loc_B2A2F6: VCallAd Control_ID_BarrioTxt
  loc_B2A2F9: CVarAd
  loc_B2A2FD: ParmAry1St
  loc_B2A303: FLdPr Me
  loc_B2A306: VCallAd Control_ID_ManzanaTxt
  loc_B2A309: CVarAd
  loc_B2A30D: ParmAry1St
  loc_B2A313: FLdPr Me
  loc_B2A316: VCallAd Control_ID_CasaTxt
  loc_B2A319: CVarAd
  loc_B2A31D: ParmAry1St
  loc_B2A323: FLdPr Me
  loc_B2A326: VCallAd Control_ID_LocalidadTxt
  loc_B2A329: CVarAd
  loc_B2A32D: ParmAry1St
  loc_B2A333: FLdPr Me
  loc_B2A336: VCallAd Control_ID_CodiPostalTxt
  loc_B2A339: CVarAd
  loc_B2A33D: ParmAry1St
  loc_B2A343: FLdPr Me
  loc_B2A346: VCallAd Control_ID_FeemApreMsk
  loc_B2A349: CVarAd
  loc_B2A34D: ParmAry1St
  loc_B2A353: FLdPr Me
  loc_B2A356: VCallAd Control_ID_AutoApreTxt
  loc_B2A359: CVarAd
  loc_B2A35D: ParmAry1St
  loc_B2A363: FLdPr Me
  loc_B2A366: VCallAd Control_ID_CodiInjuTxt
  loc_B2A369: CVarAd
  loc_B2A36D: ParmAry1St
  loc_B2A373: FLdPr Me
  loc_B2A376: VCallAd Control_ID_DetaInjuLbl
  loc_B2A379: CVarAd
  loc_B2A37D: ParmAry1St
  loc_B2A383: FLdPr Me
  loc_B2A386: VCallAd Control_ID_CodiRecaTxt
  loc_B2A389: CVarAd
  loc_B2A38D: ParmAry1St
  loc_B2A393: FLdPr Me
  loc_B2A396: VCallAd Control_ID_DetaRecaLbl
  loc_B2A399: CVarAd
  loc_B2A39D: ParmAry1St
  loc_B2A3A3: FLdPr Me
  loc_B2A3A6: VCallAd Control_ID_CodiOfjuTxt
  loc_B2A3A9: CVarAd
  loc_B2A3AD: ParmAry1St
  loc_B2A3B3: FLdPr Me
  loc_B2A3B6: VCallAd Control_ID_DetaOfjuLbl
  loc_B2A3B9: CVarAd
  loc_B2A3BD: ParmAry1St
  loc_B2A3C3: FLdPr Me
  loc_B2A3C6: VCallAd Control_ID_CapiApreTxt
  loc_B2A3C9: CVarAd
  loc_B2A3CD: ParmAry1St
  loc_B2A3D3: FLdPr Me
  loc_B2A3D6: VCallAd Control_ID_RecaApreTxt
  loc_B2A3D9: CVarAd
  loc_B2A3DD: ParmAry1St
  loc_B2A3E3: FLdPr Me
  loc_B2A3E6: VCallAd Control_ID_TotaApreTxt
  loc_B2A3E9: CVarAd
  loc_B2A3ED: ParmAry1St
  loc_B2A3F3: FLdPr Me
  loc_B2A3F6: VCallAd Control_ID_EstaEsapTxt
  loc_B2A3F9: CVarAd
  loc_B2A3FD: ParmAry1St
  loc_B2A403: FLdPr Me
  loc_B2A406: VCallAd Control_ID_ObseApreTxt
  loc_B2A409: CVarAd
  loc_B2A40D: ParmAry1St
  loc_B2A413: FLdPr Me
  loc_B2A416: VCallAd Control_ID_CancApreChk
  loc_B2A419: CVarAd
  loc_B2A41D: ParmAry1St
  loc_B2A423: FLdRfVar var_8C
  loc_B2A426: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B2A42B: ILdRf var_90
  loc_B2A42E: CastAd
  loc_B2A431: FLdPr Me
  loc_B2A434: MemStAdFunc
  loc_B2A438: FLdRfVar var_8C
  loc_B2A43B: Erase
  loc_B2A43C: FFree1Ad var_90
  loc_B2A43F: ExitProcHresult
End Sub

Private Function Proc_298_31_A63344() 'A63344
  'Data Table: 52C1B8
  loc_A632E4: LitI4 &HB
  loc_A632E9: CI2I4
  loc_A632EA: FLdPr Me
  loc_A632ED: Me.MousePointer = from_stack_1
  loc_A632F2: FLdPr Me
  loc_A632F5: VCallAd Control_ID_FiltroMsk
  loc_A632F8: FStAdFunc var_88
  loc_A632FB: FLdPr var_88
  loc_A632FE: LateIdLdVar var_98 DispID_22 0
  loc_A63305: PopAd
  loc_A63307: FLdPr Me
  loc_A6330A: VCallAd Control_ID_FiltroCbo
  loc_A6330D: FStAdFuncNoPop
  loc_A63310: FLdRfVar var_98
  loc_A63313: CStrVarTmp
  loc_A63314: FStStrNoPop var_9C
  loc_A63317: FLdPr Me
  loc_A6331A: MemLdRfVar from_stack_1.global_52
  loc_A6331D: NewIfNullPr clsapremio
  loc_A63320: Call clsapremio.sSelect(from_stack_1v, from_stack_2v)
  loc_A63325: FFree1Str var_9C
  loc_A63328: FFreeAd var_88 = ""
  loc_A6332F: FFree1Var var_98 = ""
  loc_A63332: LitI4 0
  loc_A63337: CI2I4
  loc_A63338: FLdPr Me
  loc_A6333B: Me.MousePointer = from_stack_1
  loc_A63340: ExitProcHresult
End Function
