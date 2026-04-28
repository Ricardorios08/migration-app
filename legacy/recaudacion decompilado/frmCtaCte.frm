VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCtaCte
  Caption = "Cuenta Corriente"
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
  ClientWidth = 15444
  ClientHeight = 10632
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.TextBox CucuPersTxt
    ForeColor = &H800000&
    Left = 7200
    Top = 120
    Width = 2055
    Height = 360
    TabIndex = 177
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
  Begin VB.TextBox DomiPersTxt
    ForeColor = &H800000&
    Left = 7200
    Top = 600
    Width = 7215
    Height = 360
    TabIndex = 176
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
  Begin VB.TextBox DetaPerstxt
    ForeColor = &H800000&
    Left = 9240
    Top = 120
    Width = 5295
    Height = 360
    TabIndex = 175
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
  Begin VB.TextBox NotiDeudTxt
    BackColor = &H8000000F&
    ForeColor = &HFF&
    Left = 12960
    Top = 600
    Width = 1455
    Height = 420
    TabIndex = 121
    BorderStyle = 0 'None
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
    ToolTipText = "Usuario que realizó el Aforo, Crédito o Pago"
  End
  Begin VB.TextBox txtTotaCred
    Left = 7440
    Top = 5400
    Width = 1815
    Height = 345
    TabIndex = 93
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
  Begin VB.CommandButton ImprimirCmd
    Left = 6720
    Top = 600
    Width = 450
    Height = 345
    Enabled = 0   'False
    TabIndex = 5
    Picture = "frmCtaCte.frx":0000
    Style = 1
  End
  Begin VB.TextBox txtTotaDere
    Left = 4200
    Top = 5400
    Width = 2052
    Height = 345
    TabIndex = 68
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
    Left = 10560
    Top = 5400
    Width = 1695
    Height = 345
    TabIndex = 67
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
    Left = 1440
    Top = 5400
    Width = 1575
    Height = 360
    TabIndex = 66
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
    Top = 5400
    Width = 2052
    Height = 345
    TabIndex = 65
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
  Begin TabDlg.SSTab CtaCteTab
    Left = 240
    Top = 5880
    Width = 14895
    Height = 4695
    TabIndex = 10
    OleObjectBlob = "frmCtaCte.frx":0102
    Begin VB.TextBox CompCtctTxt
      ForeColor = &H800000&
      Left = 12360
      Top = 960
      Width = 2175
      Height = 420
      TabIndex = 129
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
      ToolTipText = "Comprobante"
    End
    Begin VB.TextBox ConcViejTxt
      ForeColor = &H800000&
      Left = 11400
      Top = 420
      Width = 615
      Height = 420
      TabIndex = 128
      Alignment = 2 'Center
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
      ToolTipText = "Usuario que realizó el Aforo, Crédito o Pago"
    End
    Begin VB.TextBox NumeOrdeTxt
      ForeColor = &H800000&
      Left = 13560
      Top = 3780
      Width = 1215
      Height = 420
      TabIndex = 123
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
    Begin VB.TextBox NumeLiquTxt
      ForeColor = &H800000&
      Left = 13560
      Top = 3300
      Width = 1215
      Height = 420
      TabIndex = 122
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
    Begin VB.TextBox CodiUsuaTxt
      ForeColor = &H800000&
      Left = 13080
      Top = 420
      Width = 1455
      Height = 420
      TabIndex = 118
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
      ToolTipText = "Usuario que realizó el Aforo, Crédito o Pago"
    End
    Begin VB.TextBox DetaConcTxt
      ForeColor = &H800000&
      Left = 1920
      Top = 420
      Width = 8055
      Height = 408
      TabIndex = 113
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
    Begin VB.Frame ComercioFrm
      Left = -74760
      Top = 1260
      Width = 14655
      Height = 4095
      TabIndex = 107
      Begin VB.TextBox EstaComeTxt
        ForeColor = &HFF0000&
        Left = 1200
        Top = 720
        Width = 3420
        Height = 345
        TabIndex = 171
        MaxLength = 50
        ToolTipText = "Expediente de Transferencia"
      End
      Begin VB.TextBox CodiInmuTxt
        ForeColor = &HFF0000&
        Left = 5880
        Top = 240
        Width = 8580
        Height = 345
        TabIndex = 170
        MaxLength = 15
        ToolTipText = "Expediente de Transferencia"
      End
      Begin VB.TextBox RasoComeTxt
        ForeColor = &HFF0000&
        Left = 1200
        Top = 240
        Width = 3420
        Height = 345
        TabIndex = 167
        MaxLength = 15
      End
      Begin VB.TextBox ExbaComeTxt
        ForeColor = &HFF0000&
        Left = 12360
        Top = 720
        Width = 2100
        Height = 345
        TabIndex = 108
        MaxLength = 15
        ToolTipText = "Expediente de Transferencia"
      End
      Begin MSMask.MaskEdBox FeesComeMsk
        Left = 5880
        Top = 720
        Width = 1455
        Height = 345
        TabIndex = 109
        OleObjectBlob = "frmCtaCte.frx":18BA
        ToolTipText = "Fecha de baja del Inmueble"
      End
      Begin MSDataGridLib.DataGrid dgdRubros
        Left = 0
        Top = 1320
        Width = 14490
        Height = 1860
        TabIndex = 112
        OleObjectBlob = "frmCtaCte.frx":196A
      End
      Begin MSMask.MaskEdBox FebaComeMsk
        Left = 8880
        Top = 720
        Width = 1455
        Height = 345
        TabIndex = 173
        OleObjectBlob = "frmCtaCte.frx":1EC8
        ToolTipText = "Fecha de baja del Inmueble"
      End
      Begin VB.Label Label1
        Caption = "F. Baja:"
        Index = 4
        Left = 8040
        Top = 720
        Width = 810
        Height = 300
        TabIndex = 174
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Estado:"
        Index = 3
        Left = 195
        Top = 720
        Width = 840
        Height = 300
        TabIndex = 172
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Padrón:"
        Index = 2
        Left = 4995
        Top = 240
        Width = 840
        Height = 300
        TabIndex = 169
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Fantasia:"
        Index = 1
        Left = 120
        Top = 240
        Width = 990
        Height = 300
        TabIndex = 168
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "F. Estado:"
        Index = 43
        Left = 4695
        Top = 720
        Width = 1110
        Height = 300
        TabIndex = 111
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Exped. de Baja:"
        Index = 44
        Left = 10680
        Top = 720
        Width = 1680
        Height = 300
        TabIndex = 110
        Alignment = 2 'Center
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame InmuebleFrm
      Left = -74760
      Top = 660
      Width = 14535
      Height = 4215
      TabIndex = 97
      Begin VB.TextBox ObseTxt
        ForeColor = &H0&
        Left = 240
        Top = 3360
        Width = 14205
        Height = 720
        TabIndex = 126
        MultiLine = -1  'True
        ScrollBars = 2
        MaxLength = 1000
        DataField = "ObseInmu"
        Locked = -1  'True
        ToolTipText = "Observaciones del Inmueble"
      End
      Begin VB.Label Label71
        Caption = "Fecha de Mod:"
        Left = 6600
        Top = 2880
        Width = 1590
        Height = 300
        TabIndex = 166
        AutoSize = -1  'True
      End
      Begin VB.Label FechModiLbl
        Caption = "Fecha Mod"
        ForeColor = &HFF0000&
        Left = 8280
        Top = 2880
        Width = 1335
        Height = 360
        TabIndex = 165
      End
      Begin VB.Label AvalInmuLbl
        Caption = "AvalInmu"
        ForeColor = &HFF0000&
        Left = 960
        Top = 2880
        Width = 1215
        Height = 360
        TabIndex = 164
      End
      Begin VB.Label Label68
        Caption = "Avaluo:"
        Left = 120
        Top = 2880
        Width = 780
        Height = 300
        TabIndex = 163
        AutoSize = -1  'True
      End
      Begin VB.Label SubpNomeLbl
        Caption = "SubpNome"
        ForeColor = &HFF0000&
        Left = 9720
        Top = 1680
        Width = 975
        Height = 360
        TabIndex = 162
      End
      Begin VB.Label Label59
        Caption = "Sub Parc:"
        Left = 8640
        Top = 1680
        Width = 1035
        Height = 300
        TabIndex = 161
        AutoSize = -1  'True
      End
      Begin VB.Label FechEstaLbl
        Caption = "Fecha Estado"
        ForeColor = &HFF0000&
        Left = 12360
        Top = 2520
        Width = 1575
        Height = 360
        TabIndex = 160
      End
      Begin VB.Label Label81
        Caption = "Fecha de Est.:"
        Left = 10680
        Top = 2520
        Width = 1545
        Height = 300
        TabIndex = 159
        AutoSize = -1  'True
      End
      Begin VB.Label FechAltaLbl
        Caption = "Fecha Alta"
        ForeColor = &HFF0000&
        Left = 5040
        Top = 2880
        Width = 1335
        Height = 360
        TabIndex = 158
      End
      Begin VB.Label Label50
        Caption = "Fecha de Alta:"
        Left = 3360
        Top = 2880
        Width = 1545
        Height = 300
        TabIndex = 157
        AutoSize = -1  'True
      End
      Begin VB.Label DetaEstaLbl
        Caption = "DetaEsta"
        ForeColor = &HFF0000&
        Left = 7200
        Top = 2520
        Width = 3375
        Height = 360
        TabIndex = 156
      End
      Begin VB.Label Label79
        Caption = "DATOS DEL INMUEBLE"
        Left = 120
        Top = 2160
        Width = 2670
        Height = 300
        TabIndex = 155
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
      Begin VB.Label Label78
        Caption = "D.V.:"
        Left = 10920
        Top = 1680
        Width = 525
        Height = 300
        TabIndex = 154
        AutoSize = -1  'True
      End
      Begin VB.Label DigiNomeLbl
        Caption = "DigiNome"
        ForeColor = &HFF0000&
        Left = 11640
        Top = 1680
        Width = 855
        Height = 360
        TabIndex = 153
      End
      Begin VB.Label Label76
        Caption = "Parc:"
        Left = 6720
        Top = 1680
        Width = 540
        Height = 300
        TabIndex = 152
        AutoSize = -1  'True
      End
      Begin VB.Label ParcNomeLbl
        Caption = "ParcNome"
        ForeColor = &HFF0000&
        Left = 7440
        Top = 1680
        Width = 855
        Height = 360
        TabIndex = 151
      End
      Begin VB.Label Label74
        Caption = "Manz:"
        Left = 5160
        Top = 1680
        Width = 645
        Height = 300
        TabIndex = 150
        AutoSize = -1  'True
      End
      Begin VB.Label ManzNomeLbl
        Caption = "ManzNome"
        ForeColor = &HFF0000&
        Left = 5880
        Top = 1680
        Width = 615
        Height = 360
        TabIndex = 149
      End
      Begin VB.Label Label72
        Caption = "Secc:"
        Left = 3360
        Top = 1680
        Width = 600
        Height = 300
        TabIndex = 148
        AutoSize = -1  'True
      End
      Begin VB.Label SeccNomeLbl
        Caption = "SeccNome"
        ForeColor = &HFF0000&
        Left = 4080
        Top = 1680
        Width = 615
        Height = 360
        TabIndex = 147
      End
      Begin VB.Label Label70
        Caption = "Dist:"
        Left = 1800
        Top = 1680
        Width = 480
        Height = 300
        TabIndex = 146
        AutoSize = -1  'True
      End
      Begin VB.Label DistNomeLbl
        Caption = "DistNome"
        ForeColor = &HFF0000&
        Left = 2520
        Top = 1680
        Width = 615
        Height = 360
        TabIndex = 145
      End
      Begin VB.Label Label67
        Caption = "Dpto:"
        Left = 120
        Top = 1680
        Width = 585
        Height = 300
        TabIndex = 144
        AutoSize = -1  'True
      End
      Begin VB.Label DptoNomeLbl
        Caption = "DptoNome"
        ForeColor = &HFF0000&
        Left = 840
        Top = 1680
        Width = 615
        Height = 360
        TabIndex = 143
      End
      Begin VB.Label Label65
        Caption = "NOMENCLATURA"
        Left = 120
        Top = 1320
        Width = 1995
        Height = 300
        TabIndex = 142
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
      Begin VB.Label Label63
        Caption = "UBICACION DEL INMUEBLE"
        Left = 120
        Top = 240
        Width = 3180
        Height = 300
        TabIndex = 141
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
      Begin VB.Label Label69
        Caption = "Localidad:"
        Left = 120
        Top = 960
        Width = 1080
        Height = 300
        TabIndex = 140
        AutoSize = -1  'True
      End
      Begin VB.Label DetaLocaLbl
        Caption = "Localidad"
        ForeColor = &HFF0000&
        Left = 1320
        Top = 960
        Width = 3975
        Height = 360
        TabIndex = 139
      End
      Begin VB.Label CasaRealLbl
        Caption = "Casa"
        ForeColor = &HFF0000&
        Left = 13800
        Top = 600
        Width = 735
        Height = 360
        TabIndex = 138
      End
      Begin VB.Label Label66
        Caption = "Casa:"
        Left = 13080
        Top = 600
        Width = 615
        Height = 300
        TabIndex = 137
        AutoSize = -1  'True
      End
      Begin VB.Label ManzRealLbl
        Caption = "Mza"
        ForeColor = &HFF0000&
        Left = 12000
        Top = 600
        Width = 735
        Height = 360
        TabIndex = 136
      End
      Begin VB.Label Label64
        Caption = "Mza:"
        Left = 11280
        Top = 600
        Width = 510
        Height = 300
        TabIndex = 135
        AutoSize = -1  'True
      End
      Begin VB.Label DetaBarrLbl
        Caption = "Barrio"
        ForeColor = &HFF0000&
        Left = 7320
        Top = 600
        Width = 3975
        Height = 360
        TabIndex = 134
      End
      Begin VB.Label Label62
        Caption = "Barrio:"
        Left = 6480
        Top = 600
        Width = 690
        Height = 300
        TabIndex = 133
        AutoSize = -1  'True
      End
      Begin VB.Label NumeCasaLbl
        Caption = "Nro"
        ForeColor = &HFF0000&
        Left = 5520
        Top = 600
        Width = 855
        Height = 360
        TabIndex = 132
      End
      Begin VB.Label Label49
        Caption = "Nro:"
        Left = 4920
        Top = 600
        Width = 435
        Height = 300
        TabIndex = 106
        AutoSize = -1  'True
      End
      Begin VB.Label DetaCallLbl
        Caption = "Label2"
        ForeColor = &HFF0000&
        Left = 840
        Top = 600
        Width = 3975
        Height = 360
        TabIndex = 105
      End
      Begin VB.Label Label45
        Caption = "Superficie:"
        Left = 120
        Top = 2520
        Width = 1125
        Height = 300
        TabIndex = 104
        AutoSize = -1  'True
      End
      Begin VB.Label SupeInmuLbl
        Caption = "SupeInmu"
        ForeColor = &HFF0000&
        Left = 1320
        Top = 2520
        Width = 1215
        Height = 360
        TabIndex = 103
      End
      Begin VB.Label Label46
        Caption = "Calle:"
        Left = 120
        Top = 600
        Width = 585
        Height = 300
        TabIndex = 102
        AutoSize = -1  'True
      End
      Begin VB.Label Label47
        Caption = "RyB:"
        Left = 2760
        Top = 2520
        Width = 510
        Height = 300
        TabIndex = 101
        AutoSize = -1  'True
      End
      Begin VB.Label CodiRyB
        Caption = "RyB"
        ForeColor = &HFF0000&
        Left = 3360
        Top = 2520
        Width = 2775
        Height = 360
        TabIndex = 100
      End
      Begin VB.Label DetaExceLbl
        ForeColor = &HFF0000&
        Left = 8280
        Top = 720
        Width = 1935
        Height = 315
        TabIndex = 99
        DataField = "DetaExce"
      End
      Begin VB.Label Label48
        Caption = "Estado:"
        Left = 6240
        Top = 2520
        Width = 825
        Height = 300
        TabIndex = 98
        AutoSize = -1  'True
      End
    End
    Begin VB.TextBox DetaCtctTxt
      ForeColor = &H800000&
      Left = 1920
      Top = 960
      Width = 9495
      Height = 420
      TabIndex = 96
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
    Begin VB.TextBox TotaApreTxt
      ForeColor = &H800000&
      Left = -68280
      Top = 1860
      Width = 1335
      Height = 420
      TabIndex = 87
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
    Begin VB.TextBox CapiApreTxt
      ForeColor = &H800000&
      Left = -73320
      Top = 1860
      Width = 1335
      Height = 420
      TabIndex = 84
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
    Begin VB.TextBox RecaApreTxt
      ForeColor = &H800000&
      Left = -70680
      Top = 1860
      Width = 1335
      Height = 420
      TabIndex = 83
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
    Begin VB.TextBox DetaOfjuTxt
      ForeColor = &H800000&
      Left = -66480
      Top = 1380
      Width = 4215
      Height = 420
      TabIndex = 80
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
    Begin VB.TextBox DetaRecaTxt
      ForeColor = &H800000&
      Left = -73320
      Top = 1380
      Width = 4215
      Height = 420
      TabIndex = 79
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
    Begin VB.TextBox FealApreTxt
      ForeColor = &H800000&
      Left = -70440
      Top = 900
      Width = 1575
      Height = 420
      TabIndex = 77
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
    Begin VB.TextBox AutoApreTxt
      ForeColor = &H800000&
      Left = -73320
      Top = 900
      Width = 1095
      Height = 420
      TabIndex = 74
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
    Begin VB.TextBox EstaApreTxt
      ForeColor = &H800000&
      Left = -67800
      Top = 900
      Width = 2535
      Height = 420
      TabIndex = 73
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
    Begin VB.TextBox CuotDefaTxt
      ForeColor = &H800000&
      Left = 13080
      Top = 1980
      Width = 615
      Height = 420
      TabIndex = 63
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
    Begin VB.TextBox CodiFapaTxt
      ForeColor = &H800000&
      Left = 13200
      Top = 1500
      Width = 1335
      Height = 420
      TabIndex = 61
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
    Begin VB.TextBox FeacPagoTxt
      ForeColor = &H800000&
      Left = 9960
      Top = 1980
      Width = 1575
      Height = 420
      TabIndex = 58
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
    Begin VB.TextBox FepaPagoTxt
      ForeColor = &H800000&
      Left = 6480
      Top = 1980
      Width = 1575
      Height = 420
      TabIndex = 56
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
    Begin VB.TextBox NumeAcpaTxt
      ForeColor = &H800000&
      Left = 4200
      Top = 1980
      Width = 495
      Height = 420
      TabIndex = 54
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
    Begin VB.TextBox FeenAcpaTxt
      ForeColor = &H800000&
      Left = 1920
      Top = 1980
      Width = 1455
      Height = 420
      TabIndex = 52
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
    Begin VB.TextBox TotaBoleTxt
      ForeColor = &H800000&
      Left = 13200
      Top = 2580
      Width = 1575
      Height = 420
      TabIndex = 50
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
    Begin VB.TextBox ApreBoleTxt
      ForeColor = &H800000&
      Left = 11400
      Top = 2460
      Width = 1095
      Height = 420
      TabIndex = 43
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
    Begin VB.TextBox InteBoleTxt
      ForeColor = &H800000&
      Left = 9360
      Top = 2460
      Width = 975
      Height = 420
      TabIndex = 42
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
    Begin VB.TextBox DereBoleTxt
      ForeColor = &H800000&
      Left = 7560
      Top = 2460
      Width = 855
      Height = 420
      TabIndex = 41
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
    Begin VB.TextBox DecaBoleTxt
      ForeColor = &H800000&
      Left = 3480
      Top = 2460
      Width = 975
      Height = 420
      TabIndex = 40
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
    Begin VB.TextBox RecaBoleTxt
      ForeColor = &H800000&
      Left = 5160
      Top = 2460
      Width = 1095
      Height = 420
      TabIndex = 39
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
    Begin VB.TextBox CapiBoleTxt
      ForeColor = &H800000&
      Left = 840
      Top = 2460
      Width = 1335
      Height = 420
      TabIndex = 38
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
    Begin VB.TextBox FeveBoleTxt
      ForeColor = &H800000&
      Left = 9960
      Top = 1500
      Width = 1575
      Height = 420
      TabIndex = 35
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
    Begin VB.TextBox FealBoleTxt
      ForeColor = &H800000&
      Left = 6480
      Top = 1500
      Width = 1575
      Height = 420
      TabIndex = 34
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
    Begin VB.TextBox EstaBoleTxt
      ForeColor = &H800000&
      Left = 3000
      Top = 1500
      Width = 1695
      Height = 420
      TabIndex = 32
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
    Begin VB.TextBox TipoBoleTxt
      ForeColor = &H800000&
      Left = 720
      Top = 1500
      Width = 1335
      Height = 420
      TabIndex = 30
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
    Begin MSDataGridLib.DataGrid dgdDetaFapa
      Left = -72600
      Top = 1140
      Width = 12375
      Height = 2895
      TabIndex = 11
      OleObjectBlob = "frmCtaCte.frx":1F78
    End
    Begin MSDataGridLib.DataGrid DetaPagoDgd
      Left = 360
      Top = 3120
      Width = 12372
      Height = 1212
      TabIndex = 60
      OleObjectBlob = "frmCtaCte.frx":277A
    End
    Begin MSDataGridLib.DataGrid InstApreDgd
      Left = -74880
      Top = 2340
      Width = 3735
      Height = 2055
      TabIndex = 89
      OleObjectBlob = "frmCtaCte.frx":2E16
    End
    Begin MSDataGridLib.DataGrid BoleApreDgd
      Left = -71040
      Top = 2340
      Width = 10815
      Height = 1575
      TabIndex = 90
      OleObjectBlob = "frmCtaCte.frx":3086
    End
    Begin MSDataGridLib.DataGrid CtaCteDetaDgd
      Left = 1920
      Top = 3000
      Width = 10572
      Height = 1452
      TabIndex = 117
      OleObjectBlob = "frmCtaCte.frx":37B0
    End
    Begin MSFlexGridLib.MSFlexGrid ctacteconceptoDetalleFlex
      Left = -74880
      Top = 2280
      Width = 14655
      Height = 2295
      TabIndex = 178
      OleObjectBlob = "frmCtaCte.frx":3BF4
      Appearance = 0 'Flat
    End
    Begin MSFlexGridLib.MSFlexGrid ctacteconceptoFlex
      Left = -74880
      Top = 480
      Width = 10695
      Height = 1695
      TabIndex = 179
      OleObjectBlob = "frmCtaCte.frx":3CE0
      Appearance = 0 'Flat
    End
    Begin MSDataGridLib.DataGrid RecaBoleDgd
      Left = 3000
      Top = 3120
      Width = 8532
      Height = 1212
      TabIndex = 180
      OleObjectBlob = "frmCtaCte.frx":3DCC
    End
    Begin VB.Label Label60
      Caption = "Comp:"
      Left = 11640
      Top = 900
      Width = 696
      Height = 300
      TabIndex = 130
      AutoSize = -1  'True
    End
    Begin VB.Label Label37
      Caption = "Conc. Viejo:"
      Left = 10080
      Top = 420
      Width = 1260
      Height = 300
      TabIndex = 127
      AutoSize = -1  'True
    End
    Begin VB.Label Label58
      Caption = "Orden:"
      Left = 12840
      Top = 3780
      Width = 720
      Height = 300
      TabIndex = 125
      AutoSize = -1  'True
    End
    Begin VB.Label Label57
      Caption = "Liqu:"
      Left = 13056
      Top = 3300
      Width = 516
      Height = 300
      TabIndex = 124
      AutoSize = -1  'True
    End
    Begin VB.Label Label56
      Caption = "Cap:"
      Left = 240
      Top = 2460
      Width = 492
      Height = 300
      TabIndex = 120
      AutoSize = -1  'True
    End
    Begin VB.Label Label55
      Caption = "Usuario:"
      Left = 12120
      Top = 420
      Width = 888
      Height = 300
      TabIndex = 119
      AutoSize = -1  'True
    End
    Begin VB.Label DereFepaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 2580
      Width = 1215
      Height = 285
      TabIndex = 116
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label54
      Caption = "Desc Rec:"
      Left = -74865
      Top = 2580
      Width = 945
      Height = 240
      TabIndex = 115
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label53
      Caption = "Concepto:"
      Left = 720
      Top = 420
      Width = 1092
      Height = 300
      TabIndex = 114
      AutoSize = -1  'True
    End
    Begin VB.Label Label44
      Caption = "Observaciones:"
      Left = 240
      Top = 960
      Width = 1692
      Height = 372
      TabIndex = 95
    End
    Begin VB.Label Label42
      Caption = "Total:"
      Left = -69000
      Top = 1860
      Width = 585
      Height = 300
      TabIndex = 88
      AutoSize = -1  'True
    End
    Begin VB.Label Label41
      Caption = "Capital:"
      Left = -74160
      Top = 1860
      Width = 795
      Height = 300
      TabIndex = 86
      AutoSize = -1  'True
    End
    Begin VB.Label Label40
      Caption = "Recargo:"
      Left = -71760
      Top = 1860
      Width = 975
      Height = 300
      TabIndex = 85
      AutoSize = -1  'True
    End
    Begin VB.Label Label39
      Caption = "Oficial de justicia:"
      Left = -68400
      Top = 1380
      Width = 1815
      Height = 300
      TabIndex = 82
      AutoSize = -1  'True
    End
    Begin VB.Label Label38
      Caption = "Recaudador:"
      Left = -74760
      Top = 1380
      Width = 1380
      Height = 300
      TabIndex = 81
      AutoSize = -1  'True
    End
    Begin VB.Label Label36
      Caption = "Fecha de Alta:"
      Left = -72000
      Top = 900
      Width = 1545
      Height = 300
      TabIndex = 78
      AutoSize = -1  'True
    End
    Begin VB.Label Label35
      Caption = "Nro de Auto:"
      Left = -74760
      Top = 900
      Width = 1335
      Height = 300
      TabIndex = 76
      AutoSize = -1  'True
    End
    Begin VB.Label Label34
      Caption = "Estado:"
      Left = -68640
      Top = 900
      Width = 825
      Height = 300
      TabIndex = 75
      AutoSize = -1  'True
    End
    Begin VB.Label Label33
      Caption = "Nro de Cuota:"
      Left = 11640
      Top = 1980
      Width = 1476
      Height = 300
      TabIndex = 64
      AutoSize = -1  'True
    End
    Begin VB.Label Label32
      Caption = "Plan de Pago:"
      Left = 11640
      Top = 1500
      Width = 1476
      Height = 300
      TabIndex = 62
      AutoSize = -1  'True
    End
    Begin VB.Label Label30
      Caption = "Fecha Actuali.:"
      Left = 8280
      Top = 1980
      Width = 1572
      Height = 300
      TabIndex = 59
      AutoSize = -1  'True
    End
    Begin VB.Label Label31
      Caption = "Fecha de Pago:"
      Left = 4788
      Top = 1980
      Width = 1680
      Height = 300
      TabIndex = 57
      AutoSize = -1  'True
    End
    Begin VB.Label Label29
      Caption = "Grupo:"
      Left = 3480
      Top = 1980
      Width = 732
      Height = 300
      TabIndex = 55
      AutoSize = -1  'True
    End
    Begin VB.Label Label28
      Caption = "Fecha de Envio:"
      Left = 120
      Top = 1980
      Width = 1716
      Height = 300
      TabIndex = 53
      AutoSize = -1  'True
    End
    Begin VB.Label Label27
      Caption = "Total:"
      Left = 12600
      Top = 2580
      Width = 588
      Height = 300
      TabIndex = 51
      AutoSize = -1  'True
    End
    Begin VB.Label Label26
      Caption = "Apremio:"
      Left = 10440
      Top = 2460
      Width = 948
      Height = 300
      TabIndex = 49
      AutoSize = -1  'True
    End
    Begin VB.Label Label25
      Caption = "Interes:"
      Left = 8520
      Top = 2460
      Width = 816
      Height = 300
      TabIndex = 48
      AutoSize = -1  'True
    End
    Begin VB.Label Label24
      Caption = "Rec.:"
      Left = 4560
      Top = 2460
      Width = 552
      Height = 300
      TabIndex = 47
      AutoSize = -1  'True
    End
    Begin VB.Label Label23
      Caption = "Desc. Rec:"
      Left = 6360
      Top = 2460
      Width = 1176
      Height = 300
      TabIndex = 46
      AutoSize = -1  'True
    End
    Begin VB.Label Label22
      Caption = "Desc. Cap:"
      Left = 2280
      Top = 2460
      Width = 1176
      Height = 300
      TabIndex = 45
      AutoSize = -1  'True
    End
    Begin VB.Label Label21
      Caption = "Capital:"
      Left = 120
      Top = 2040
      Width = 792
      Height = 300
      TabIndex = 44
      AutoSize = -1  'True
    End
    Begin VB.Label Label20
      Caption = "Fecha de Vto:"
      Left = 8400
      Top = 1500
      Width = 1500
      Height = 300
      TabIndex = 37
      AutoSize = -1  'True
    End
    Begin VB.Label Label19
      Caption = "Fecha de Alta:"
      Left = 4920
      Top = 1500
      Width = 1548
      Height = 300
      TabIndex = 36
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Estado:"
      Left = 2160
      Top = 1500
      Width = 828
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "Tipo:"
      Left = 120
      Top = 1500
      Width = 516
      Height = 300
      TabIndex = 31
      AutoSize = -1  'True
    End
    Begin VB.Label Label16
      Caption = "Tipo de Plan:"
      Left = -74880
      Top = 780
      Width = 1200
      Height = 240
      TabIndex = 29
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaTifalbl
      ForeColor = &HFF0000&
      Left = -73620
      Top = 780
      Width = 4215
      Height = 285
      TabIndex = 28
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label15
      Caption = "Total:"
      Left = -74430
      Top = 3660
      Width = 510
      Height = 240
      TabIndex = 27
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label14
      Caption = "Interes:"
      Left = -74565
      Top = 3300
      Width = 645
      Height = 240
      TabIndex = 26
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label13
      Caption = "Apremio:"
      Left = -74730
      Top = 2940
      Width = 810
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label12
      Caption = "Desc Cap:"
      Left = -74865
      Top = 2220
      Width = 945
      Height = 240
      TabIndex = 24
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label11
      Caption = "Recargo:"
      Left = -74760
      Top = 1860
      Width = 840
      Height = 240
      TabIndex = 23
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label10
      Caption = "Capital:"
      Left = -74595
      Top = 1500
      Width = 675
      Height = 240
      TabIndex = 22
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label TotaFapaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 3660
      Width = 1215
      Height = 285
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label InteFapaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 3300
      Width = 1215
      Height = 285
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label ApreFapaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 2940
      Width = 1215
      Height = 285
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DecaFepaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 2220
      Width = 1215
      Height = 285
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label RecaFepaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 1860
      Width = 1215
      Height = 285
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CapiFepaLbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 1500
      Width = 1215
      Height = 285
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label9
      Caption = "Estado:"
      Left = -69210
      Top = 780
      Width = 690
      Height = 240
      TabIndex = 15
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "F. de Alta:"
      Index = 0
      Left = -74805
      Top = 1140
      Width = 885
      Height = 240
      TabIndex = 14
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label EstaFapaLbl
      ForeColor = &HFF0000&
      Left = -68460
      Top = 780
      Width = 2655
      Height = 285
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label FealFepatlbl
      ForeColor = &HFF0000&
      Left = -73860
      Top = 1140
      Width = 1215
      Height = 285
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
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
    Left = 1680
    Top = 120
    Width = 2175
    Height = 420
    TabIndex = 0
    CausesValidation = 0   'False
  End
  Begin VB.CheckBox SoloDeudaChk
    Caption = "Solo Deuda"
    Left = 4320
    Top = 600
    Width = 1695
    Height = 345
    TabIndex = 3
  End
  Begin VB.CommandButton BuscarCmd
    Left = 6120
    Top = 600
    Width = 450
    Height = 345
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmCtaCte.frx":421E
    Style = 1
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4800
    Top = 120
    Width = 1695
    Height = 345
    TabIndex = 1
    MaxLength = 11
  End
  Begin VB.CommandButton SalirCmd
    Left = 14520
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmCtaCte.frx":4300
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 600
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmCtaCte.frx":4552
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 240
    Top = 1080
    Width = 15132
    Height = 4212
    TabIndex = 92
    OleObjectBlob = "frmCtaCte.frx":4602
    Appearance = 0 'Flat
  End
  Begin VB.Label Label61
    Caption = "Label2"
    ForeColor = &HFF0000&
    Left = 5760
    Top = 6480
    Width = 735
    Height = 360
    TabIndex = 131
  End
  Begin VB.Label Label43
    Caption = "Creditos:"
    Left = 6360
    Top = 5400
    Width = 1092
    Height = 300
    TabIndex = 94
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 91
  End
  Begin VB.Label Label2
    Caption = "Debitos:"
    Left = 3120
    Top = 5400
    Width = 1020
    Height = 300
    TabIndex = 72
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
    Caption = "Recargo:"
    Left = 9360
    Top = 5400
    Width = 1110
    Height = 300
    TabIndex = 71
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
    Caption = "Apremio:"
    Left = 240
    Top = 5400
    Width = 1080
    Height = 300
    TabIndex = 70
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
    Left = 12480
    Top = 5400
    Width = 690
    Height = 300
    TabIndex = 69
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
    Left = 840
    Top = 120
    Width = 795
    Height = 300
    TabIndex = 9
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3960
    Top = 120
    Width = 840
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
  Begin VB.Label Label4
    Caption = "Fecha Vencimiento:"
    Left = 120
    Top = 600
    Width = 2115
    Height = 300
    TabIndex = 6
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

Attribute VB_Name = "frmCtaCte"


Private Sub ctacteconceptoFlex_Click() 'C64F44
  'Data Table: 542B30
  loc_C6409C: FLdPr Me
  loc_C6409F: VCallAd Control_ID_ctacteconceptoFlex
  loc_C640A2: FStAdFunc var_C8
  loc_C640A5: FLdPr var_C8
  loc_C640A8: LateIdLdVar var_D8 DispID_4 0
  loc_C640AF: CI4Var
  loc_C640B1: LitI4 1
  loc_C640B6: GtI4
  loc_C640B7: FFree1Ad var_C8
  loc_C640BA: FFree1Var var_D8 = ""
  loc_C640BD: BranchF loc_C64F42
  loc_C640C0: Call Proc_266_28_B07D88()
  loc_C640C5: LitStr "SELECT tmp_ctacte.*, AbreTimo, concepto.ConcViej FROM tmp_ctacte "
  loc_C640C8: LitStr " LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_C640CB: ConcatStr
  loc_C640CC: FStStrNoPop var_DC
  loc_C640CF: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacte.PeriInfo"
  loc_C640D2: ConcatStr
  loc_C640D3: FStStrNoPop var_E0
  loc_C640D6: LitStr " AND concepto.CodiConc = tmp_ctacte.CodiConc"
  loc_C640D9: ConcatStr
  loc_C640DA: FStStrNoPop var_E4
  loc_C640DD: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_C640E0: ConcatStr
  loc_C640E1: FStStrNoPop var_E8
  loc_C640E4: ImpAdLdUI1
  loc_C640E8: CStrI2
  loc_C640EA: FStStrNoPop var_EC
  loc_C640ED: ConcatStr
  loc_C640EE: FStStrNoPop var_F0
  loc_C640F1: LitStr " AND tmp_ctacte.CuenCtct = '"
  loc_C640F4: ConcatStr
  loc_C640F5: FStStrNoPop var_F8
  loc_C640F8: FLdRfVar var_F4
  loc_C640FB: FLdPr Me
  loc_C640FE: VCallAd Control_ID_NumeCtaTxt
  loc_C64101: FStAdFunc var_C8
  loc_C64104: FLdPr var_C8
  loc_C64107:  = Me.Text
  loc_C6410C: ILdRf var_F4
  loc_C6410F: ConcatStr
  loc_C64110: FStStrNoPop var_FC
  loc_C64113: LitStr "'"
  loc_C64116: ConcatStr
  loc_C64117: FStStrNoPop var_100
  loc_C6411A: LitStr " AND tmp_ctacte.CodiConc = "
  loc_C6411D: ConcatStr
  loc_C6411E: FStStrNoPop var_15C
  loc_C64121: FLdPr Me
  loc_C64124: VCallAd Control_ID_ctacteconceptoFlex
  loc_C64127: FStAdFunc var_104
  loc_C6412A: FLdPr var_104
  loc_C6412D: LateIdLdVar var_D8 DispID_10 0
  loc_C64134: CI4Var
  loc_C64136: CVarI4
  loc_C6413A: PopAdLdVar
  loc_C6413B: LitVarI4
  loc_C64143: PopAdLdVar
  loc_C64144: FLdPr Me
  loc_C64147: VCallAd Control_ID_ctacteconceptoFlex
  loc_C6414A: FStAdFunc var_148
  loc_C6414D: FLdPr var_148
  loc_C64150: LateIdCallLdVar
  loc_C6415A: CStrVarTmp
  loc_C6415B: FStStrNoPop var_160
  loc_C6415E: ConcatStr
  loc_C6415F: FStStrNoPop var_164
  loc_C64162: LitStr " AND tmp_ctacte.FeveCtct >= '1000-01-01'"
  loc_C64165: ConcatStr
  loc_C64166: FStStrNoPop var_168
  loc_C64169: LitStr " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.CodiFapa, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_C6416C: ConcatStr
  loc_C6416D: FStStrNoPop var_16C
  loc_C64170: FLdPr Me
  loc_C64173: MemLdRfVar from_stack_1.global_60
  loc_C64176: NewIfNullPr clsctacte
  loc_C64179: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6417E: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F8 = "": var_F4 = "": var_FC = "": var_100 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C6419F: FFreeAd var_C8 = "": var_104 = ""
  loc_C641A8: FFreeVar var_D8 = ""
  loc_C641AF: FLdRfVar var_170
  loc_C641B2: FLdRfVar var_C8
  loc_C641B5: FLdPr Me
  loc_C641B8: MemLdRfVar from_stack_1.global_60
  loc_C641BB: NewIfNullPr clsctacte
  loc_C641BE: from_stack_1v = clsctacte.RsFrmGet()
  loc_C641C3: FLdPr var_C8
  loc_C641C6:  = Me.RecordCount
  loc_C641CB: ILdRf var_170
  loc_C641CE: LitI4 0
  loc_C641D3: GtI4
  loc_C641D4: FFree1Ad var_C8
  loc_C641D7: BranchF loc_C64F42
  loc_C641DA: FLdRfVar var_C8
  loc_C641DD: FLdPr Me
  loc_C641E0: MemLdRfVar from_stack_1.global_60
  loc_C641E3: NewIfNullPr clsctacte
  loc_C641E6: from_stack_1v = clsctacte.RsFrmGet()
  loc_C641EB: FLdPr var_C8
  loc_C641EE: Me.MoveFirst
  loc_C641F3: FFree1Ad var_C8
  loc_C641F6: FLdRfVar var_172
  loc_C641F9: FLdRfVar var_C8
  loc_C641FC: FLdPr Me
  loc_C641FF: MemLdRfVar from_stack_1.global_60
  loc_C64202: NewIfNullPr clsctacte
  loc_C64205: from_stack_1v = clsctacte.RsFrmGet()
  loc_C6420A: FLdPr var_C8
  loc_C6420D:  = Me.EOF
  loc_C64212: FLdI2 var_172
  loc_C64215: NotI4
  loc_C64216: FFree1Ad var_C8
  loc_C64219: BranchF loc_C64F42
  loc_C6421C: FLdRfVar var_148
  loc_C6421F: LitVarStr var_114, "BimeCtct"
  loc_C64224: PopAdLdVar
  loc_C64225: FLdRfVar var_104
  loc_C64228: FLdRfVar var_C8
  loc_C6422B: FLdPr Me
  loc_C6422E: MemLdRfVar from_stack_1.global_60
  loc_C64231: NewIfNullPr clsctacte
  loc_C64234: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64239: FLdPr var_C8
  loc_C6423C:  = Me.Fields
  loc_C64241: FLdPr var_104
  loc_C64244: from_stack_2 = Me.Item(from_stack_1)
  loc_C64249: LitI4 1
  loc_C6424E: LitI4 1
  loc_C64253: LitVarStr var_124, "#00"
  loc_C64258: FStVarCopyObj var_158
  loc_C6425B: FLdRfVar var_158
  loc_C6425E: FLdZeroAd var_148
  loc_C64261: CVarAd
  loc_C64265: FLdRfVar var_184
  loc_C64268: ImpAdCallFPR4  = Format(, )
  loc_C6426D: FLdRfVar var_184
  loc_C64270: LitVarStr var_134, "/"
  loc_C64275: ConcatVar var_194
  loc_C64279: FLdRfVar var_1B0
  loc_C6427C: FLdRfVar var_1A0
  loc_C6427F: LitVarStr var_144, "PeriCtct"
  loc_C64284: PopAdLdVar
  loc_C64285: FLdRfVar var_19C
  loc_C64288: FLdRfVar var_198
  loc_C6428B: FLdPr Me
  loc_C6428E: MemLdRfVar from_stack_1.global_60
  loc_C64291: NewIfNullPr clsctacte
  loc_C64294: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64299: FLdPr var_198
  loc_C6429C:  = Me.Fields
  loc_C642A1: FLdPr var_19C
  loc_C642A4: from_stack_2 = Me.Item(from_stack_1)
  loc_C642A9: FLdPr var_1A0
  loc_C642AC:  = Me.Value
  loc_C642B1: FLdRfVar var_1B0
  loc_C642B4: ConcatVar var_1C0
  loc_C642B8: CStrVarTmp
  loc_C642B9: FLdRfVar var_A8
  loc_C642BC: StFixedStrFree
  loc_C642C0: FFreeAd var_C8 = "": var_104 = "": var_198 = "": var_19C = ""
  loc_C642CD: FFreeVar var_D8 = "": var_158 = "": var_184 = "": var_194 = "": var_1B0 = ""
  loc_C642DC: FLdRfVar var_148
  loc_C642DF: LitVarStr var_114, "NumeBole"
  loc_C642E4: PopAdLdVar
  loc_C642E5: FLdRfVar var_104
  loc_C642E8: FLdRfVar var_C8
  loc_C642EB: FLdPr Me
  loc_C642EE: MemLdRfVar from_stack_1.global_60
  loc_C642F1: NewIfNullPr clsctacte
  loc_C642F4: from_stack_1v = clsctacte.RsFrmGet()
  loc_C642F9: FLdPr var_C8
  loc_C642FC:  = Me.Fields
  loc_C64301: FLdPr var_104
  loc_C64304: from_stack_2 = Me.Item(from_stack_1)
  loc_C64309: FLdRfVar var_1A0
  loc_C6430C: LitVarStr var_144, "PeriBole"
  loc_C64311: PopAdLdVar
  loc_C64312: FLdRfVar var_19C
  loc_C64315: FLdRfVar var_198
  loc_C64318: FLdPr Me
  loc_C6431B: MemLdRfVar from_stack_1.global_60
  loc_C6431E: NewIfNullPr clsctacte
  loc_C64321: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64326: FLdPr var_198
  loc_C64329:  = Me.Fields
  loc_C6432E: FLdPr var_19C
  loc_C64331: from_stack_2 = Me.Item(from_stack_1)
  loc_C64336: LitI4 1
  loc_C6433B: LitI4 1
  loc_C64340: LitVarStr var_124, "#######0"
  loc_C64345: FStVarCopyObj var_158
  loc_C64348: FLdRfVar var_158
  loc_C6434B: FLdZeroAd var_148
  loc_C6434E: CVarAd
  loc_C64352: FLdRfVar var_184
  loc_C64355: ImpAdCallFPR4  = Format(, )
  loc_C6435A: FLdRfVar var_184
  loc_C6435D: LitVarStr var_134, "-"
  loc_C64362: ConcatVar var_194
  loc_C64366: LitI4 1
  loc_C6436B: LitI4 1
  loc_C64370: LitVarStr var_1D0, "0000"
  loc_C64375: FStVarCopyObj var_1C0
  loc_C64378: FLdRfVar var_1C0
  loc_C6437B: FLdZeroAd var_1A0
  loc_C6437E: CVarAd
  loc_C64382: FLdRfVar var_1E0
  loc_C64385: ImpAdCallFPR4  = Format(, )
  loc_C6438A: FLdRfVar var_1E0
  loc_C6438D: ConcatVar var_1F0
  loc_C64391: CStrVarTmp
  loc_C64392: FLdRfVar var_C2
  loc_C64395: StFixedStrRFree
  loc_C64399: FFreeAd var_C8 = "": var_104 = "": var_198 = ""
  loc_C643A4: FFreeVar var_D8 = "": var_158 = "": var_184 = "": var_1B0 = "": var_1C0 = "": var_194 = "": var_1E0 = ""
  loc_C643B7: FLdRfVar var_148
  loc_C643BA: LitVarStr var_114, "BimeCtct"
  loc_C643BF: PopAdLdVar
  loc_C643C0: FLdRfVar var_104
  loc_C643C3: FLdRfVar var_C8
  loc_C643C6: FLdPr Me
  loc_C643C9: MemLdRfVar from_stack_1.global_60
  loc_C643CC: NewIfNullPr clsctacte
  loc_C643CF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C643D4: FLdPr var_C8
  loc_C643D7:  = Me.Fields
  loc_C643DC: FLdPr var_104
  loc_C643DF: from_stack_2 = Me.Item(from_stack_1)
  loc_C643E4: LitI4 1
  loc_C643E9: LitI4 1
  loc_C643EE: LitVarStr var_124, "#00"
  loc_C643F3: FStVarCopyObj var_158
  loc_C643F6: FLdRfVar var_158
  loc_C643F9: FLdZeroAd var_148
  loc_C643FC: CVarAd
  loc_C64400: FLdRfVar var_184
  loc_C64403: ImpAdCallFPR4  = Format(, )
  loc_C64408: FLdRfVar var_184
  loc_C6440B: LitVarStr var_134, "/"
  loc_C64410: ConcatVar var_194
  loc_C64414: FLdRfVar var_1B0
  loc_C64417: FLdRfVar var_1A0
  loc_C6441A: LitVarStr var_144, "PeriCtct"
  loc_C6441F: PopAdLdVar
  loc_C64420: FLdRfVar var_19C
  loc_C64423: FLdRfVar var_198
  loc_C64426: FLdPr Me
  loc_C64429: MemLdRfVar from_stack_1.global_60
  loc_C6442C: NewIfNullPr clsctacte
  loc_C6442F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64434: FLdPr var_198
  loc_C64437:  = Me.Fields
  loc_C6443C: FLdPr var_19C
  loc_C6443F: from_stack_2 = Me.Item(from_stack_1)
  loc_C64444: FLdPr var_1A0
  loc_C64447:  = Me.Value
  loc_C6444C: FLdRfVar var_1B0
  loc_C6444F: ConcatVar var_1C0
  loc_C64453: CStrVarTmp
  loc_C64454: FLdRfVar var_A8
  loc_C64457: StFixedStrFree
  loc_C6445B: FFreeAd var_C8 = "": var_104 = "": var_198 = "": var_19C = ""
  loc_C64468: FFreeVar var_D8 = "": var_158 = "": var_184 = "": var_194 = "": var_1B0 = ""
  loc_C64477: FLdRfVar var_148
  loc_C6447A: LitVarStr var_114, "NumeBole"
  loc_C6447F: PopAdLdVar
  loc_C64480: FLdRfVar var_104
  loc_C64483: FLdRfVar var_C8
  loc_C64486: FLdPr Me
  loc_C64489: MemLdRfVar from_stack_1.global_60
  loc_C6448C: NewIfNullPr clsctacte
  loc_C6448F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64494: FLdPr var_C8
  loc_C64497:  = Me.Fields
  loc_C6449C: FLdPr var_104
  loc_C6449F: from_stack_2 = Me.Item(from_stack_1)
  loc_C644A4: FLdRfVar var_1A0
  loc_C644A7: LitVarStr var_144, "PeriBole"
  loc_C644AC: PopAdLdVar
  loc_C644AD: FLdRfVar var_19C
  loc_C644B0: FLdRfVar var_198
  loc_C644B3: FLdPr Me
  loc_C644B6: MemLdRfVar from_stack_1.global_60
  loc_C644B9: NewIfNullPr clsctacte
  loc_C644BC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C644C1: FLdPr var_198
  loc_C644C4:  = Me.Fields
  loc_C644C9: FLdPr var_19C
  loc_C644CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C644D1: LitI4 1
  loc_C644D6: LitI4 1
  loc_C644DB: LitVarStr var_124, "#######0"
  loc_C644E0: FStVarCopyObj var_158
  loc_C644E3: FLdRfVar var_158
  loc_C644E6: FLdZeroAd var_148
  loc_C644E9: CVarAd
  loc_C644ED: FLdRfVar var_184
  loc_C644F0: ImpAdCallFPR4  = Format(, )
  loc_C644F5: FLdRfVar var_184
  loc_C644F8: LitVarStr var_134, "-"
  loc_C644FD: ConcatVar var_194
  loc_C64501: LitI4 1
  loc_C64506: LitI4 1
  loc_C6450B: LitVarStr var_1D0, "0000"
  loc_C64510: FStVarCopyObj var_1C0
  loc_C64513: FLdRfVar var_1C0
  loc_C64516: FLdZeroAd var_1A0
  loc_C64519: CVarAd
  loc_C6451D: FLdRfVar var_1E0
  loc_C64520: ImpAdCallFPR4  = Format(, )
  loc_C64525: FLdRfVar var_1E0
  loc_C64528: ConcatVar var_1F0
  loc_C6452C: CStrVarTmp
  loc_C6452D: FLdRfVar var_C2
  loc_C64530: StFixedStrRFree
  loc_C64534: FFreeAd var_C8 = "": var_104 = "": var_198 = ""
  loc_C6453F: FFreeVar var_D8 = "": var_158 = "": var_184 = "": var_1B0 = "": var_1C0 = "": var_194 = "": var_1E0 = ""
  loc_C64552: FLdRfVar var_D8
  loc_C64555: FLdRfVar var_148
  loc_C64558: LitVarStr var_114, "DebeCtct"
  loc_C6455D: PopAdLdVar
  loc_C6455E: FLdRfVar var_104
  loc_C64561: FLdRfVar var_C8
  loc_C64564: FLdPr Me
  loc_C64567: MemLdRfVar from_stack_1.global_60
  loc_C6456A: NewIfNullPr clsctacte
  loc_C6456D: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64572: FLdPr var_C8
  loc_C64575:  = Me.Fields
  loc_C6457A: FLdPr var_104
  loc_C6457D: from_stack_2 = Me.Item(from_stack_1)
  loc_C64582: FLdPr var_148
  loc_C64585:  = Me.Value
  loc_C6458A: FLdRfVar var_D8
  loc_C6458D: FnCDblVar
  loc_C6458F: LitI2_Byte 0
  loc_C64591: CR8I2
  loc_C64592: NeR8
  loc_C64593: FFreeAd var_C8 = "": var_104 = ""
  loc_C6459C: FFree1Var var_D8 = ""
  loc_C6459F: BranchF loc_C6460D
  loc_C645A2: FLdRfVar var_148
  loc_C645A5: LitVarStr var_114, "DebeCtct"
  loc_C645AA: PopAdLdVar
  loc_C645AB: FLdRfVar var_104
  loc_C645AE: FLdRfVar var_C8
  loc_C645B1: FLdPr Me
  loc_C645B4: MemLdRfVar from_stack_1.global_60
  loc_C645B7: NewIfNullPr clsctacte
  loc_C645BA: from_stack_1v = clsctacte.RsFrmGet()
  loc_C645BF: FLdPr var_C8
  loc_C645C2:  = Me.Fields
  loc_C645C7: FLdPr var_104
  loc_C645CA: from_stack_2 = Me.Item(from_stack_1)
  loc_C645CF: LitI4 1
  loc_C645D4: LitI4 1
  loc_C645D9: LitVarStr var_124, "###,###,##0.00"
  loc_C645DE: FStVarCopyObj var_158
  loc_C645E1: FLdRfVar var_158
  loc_C645E4: FLdZeroAd var_148
  loc_C645E7: CVarAd
  loc_C645EB: FLdRfVar var_184
  loc_C645EE: ImpAdCallFPR4  = Format(, )
  loc_C645F3: FLdRfVar var_184
  loc_C645F6: CStrVarTmp
  loc_C645F7: FStStr var_8C
  loc_C645FA: FFreeAd var_C8 = ""
  loc_C64601: FFreeVar var_D8 = "": var_158 = ""
  loc_C6460A: Branch loc_C64613
  loc_C6460D: LitStr vbNullString
  loc_C64610: FStStrCopy var_8C
  loc_C64613: FLdRfVar var_D8
  loc_C64616: FLdRfVar var_148
  loc_C64619: LitVarStr var_114, "CredCtct"
  loc_C6461E: PopAdLdVar
  loc_C6461F: FLdRfVar var_104
  loc_C64622: FLdRfVar var_C8
  loc_C64625: FLdPr Me
  loc_C64628: MemLdRfVar from_stack_1.global_60
  loc_C6462B: NewIfNullPr clsctacte
  loc_C6462E: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64633: FLdPr var_C8
  loc_C64636:  = Me.Fields
  loc_C6463B: FLdPr var_104
  loc_C6463E: from_stack_2 = Me.Item(from_stack_1)
  loc_C64643: FLdPr var_148
  loc_C64646:  = Me.Value
  loc_C6464B: FLdRfVar var_D8
  loc_C6464E: FnCDblVar
  loc_C64650: LitI2_Byte 0
  loc_C64652: CR8I2
  loc_C64653: NeR8
  loc_C64654: FFreeAd var_C8 = "": var_104 = ""
  loc_C6465D: FFree1Var var_D8 = ""
  loc_C64660: BranchF loc_C646CE
  loc_C64663: FLdRfVar var_148
  loc_C64666: LitVarStr var_114, "CredCtct"
  loc_C6466B: PopAdLdVar
  loc_C6466C: FLdRfVar var_104
  loc_C6466F: FLdRfVar var_C8
  loc_C64672: FLdPr Me
  loc_C64675: MemLdRfVar from_stack_1.global_60
  loc_C64678: NewIfNullPr clsctacte
  loc_C6467B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64680: FLdPr var_C8
  loc_C64683:  = Me.Fields
  loc_C64688: FLdPr var_104
  loc_C6468B: from_stack_2 = Me.Item(from_stack_1)
  loc_C64690: LitI4 1
  loc_C64695: LitI4 1
  loc_C6469A: LitVarStr var_124, "###,###,##0.00"
  loc_C6469F: FStVarCopyObj var_158
  loc_C646A2: FLdRfVar var_158
  loc_C646A5: FLdZeroAd var_148
  loc_C646A8: CVarAd
  loc_C646AC: FLdRfVar var_184
  loc_C646AF: ImpAdCallFPR4  = Format(, )
  loc_C646B4: FLdRfVar var_184
  loc_C646B7: CStrVarTmp
  loc_C646B8: FStStr var_90
  loc_C646BB: FFreeAd var_C8 = ""
  loc_C646C2: FFreeVar var_D8 = "": var_158 = ""
  loc_C646CB: Branch loc_C646D4
  loc_C646CE: LitStr vbNullString
  loc_C646D1: FStStrCopy var_90
  loc_C646D4: FLdRfVar var_D8
  loc_C646D7: FLdRfVar var_148
  loc_C646DA: LitVarStr var_114, "RecaCtct"
  loc_C646DF: PopAdLdVar
  loc_C646E0: FLdRfVar var_104
  loc_C646E3: FLdRfVar var_C8
  loc_C646E6: FLdPr Me
  loc_C646E9: MemLdRfVar from_stack_1.global_60
  loc_C646EC: NewIfNullPr clsctacte
  loc_C646EF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C646F4: FLdPr var_C8
  loc_C646F7:  = Me.Fields
  loc_C646FC: FLdPr var_104
  loc_C646FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C64704: FLdPr var_148
  loc_C64707:  = Me.Value
  loc_C6470C: FLdRfVar var_D8
  loc_C6470F: FnCDblVar
  loc_C64711: LitI2_Byte 0
  loc_C64713: CR8I2
  loc_C64714: NeR8
  loc_C64715: FFreeAd var_C8 = "": var_104 = ""
  loc_C6471E: FFree1Var var_D8 = ""
  loc_C64721: BranchF loc_C6478F
  loc_C64724: FLdRfVar var_148
  loc_C64727: LitVarStr var_114, "RecaCtct"
  loc_C6472C: PopAdLdVar
  loc_C6472D: FLdRfVar var_104
  loc_C64730: FLdRfVar var_C8
  loc_C64733: FLdPr Me
  loc_C64736: MemLdRfVar from_stack_1.global_60
  loc_C64739: NewIfNullPr clsctacte
  loc_C6473C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64741: FLdPr var_C8
  loc_C64744:  = Me.Fields
  loc_C64749: FLdPr var_104
  loc_C6474C: from_stack_2 = Me.Item(from_stack_1)
  loc_C64751: LitI4 1
  loc_C64756: LitI4 1
  loc_C6475B: LitVarStr var_124, "###,###,##0.00"
  loc_C64760: FStVarCopyObj var_158
  loc_C64763: FLdRfVar var_158
  loc_C64766: FLdZeroAd var_148
  loc_C64769: CVarAd
  loc_C6476D: FLdRfVar var_184
  loc_C64770: ImpAdCallFPR4  = Format(, )
  loc_C64775: FLdRfVar var_184
  loc_C64778: CStrVarTmp
  loc_C64779: FStStr var_94
  loc_C6477C: FFreeAd var_C8 = ""
  loc_C64783: FFreeVar var_D8 = "": var_158 = ""
  loc_C6478C: Branch loc_C64795
  loc_C6478F: LitStr vbNullString
  loc_C64792: FStStrCopy var_94
  loc_C64795: FLdRfVar var_D8
  loc_C64798: FLdRfVar var_148
  loc_C6479B: LitVarStr var_114, "SaldCtct"
  loc_C647A0: PopAdLdVar
  loc_C647A1: FLdRfVar var_104
  loc_C647A4: FLdRfVar var_C8
  loc_C647A7: FLdPr Me
  loc_C647AA: MemLdRfVar from_stack_1.global_60
  loc_C647AD: NewIfNullPr clsctacte
  loc_C647B0: from_stack_1v = clsctacte.RsFrmGet()
  loc_C647B5: FLdPr var_C8
  loc_C647B8:  = Me.Fields
  loc_C647BD: FLdPr var_104
  loc_C647C0: from_stack_2 = Me.Item(from_stack_1)
  loc_C647C5: FLdPr var_148
  loc_C647C8:  = Me.Value
  loc_C647CD: FLdRfVar var_158
  loc_C647D0: FLdRfVar var_1A0
  loc_C647D3: LitVarStr var_124, "RecaCtct"
  loc_C647D8: PopAdLdVar
  loc_C647D9: FLdRfVar var_19C
  loc_C647DC: FLdRfVar var_198
  loc_C647DF: FLdPr Me
  loc_C647E2: MemLdRfVar from_stack_1.global_60
  loc_C647E5: NewIfNullPr clsctacte
  loc_C647E8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C647ED: FLdPr var_198
  loc_C647F0:  = Me.Fields
  loc_C647F5: FLdPr var_19C
  loc_C647F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C647FD: FLdPr var_1A0
  loc_C64800:  = Me.Value
  loc_C64805: LitI4 2
  loc_C6480A: FLdRfVar var_D8
  loc_C6480D: FnCDblVar
  loc_C6480F: FLdRfVar var_158
  loc_C64812: FnCDblVar
  loc_C64814: AddR8
  loc_C64815: CVarR8
  loc_C64819: FLdRfVar var_194
  loc_C6481C: ImpAdCallFPR4  = Round(, )
  loc_C64821: LitI4 1
  loc_C64826: LitI4 1
  loc_C6482B: LitVarStr var_144, "###,###,##0.00"
  loc_C64830: FStVarCopyObj var_1B0
  loc_C64833: FLdRfVar var_1B0
  loc_C64836: FLdRfVar var_194
  loc_C64839: FLdRfVar var_1C0
  loc_C6483C: ImpAdCallFPR4  = Format(, )
  loc_C64841: FLdRfVar var_1C0
  loc_C64844: CStrVarTmp
  loc_C64845: FStStr var_98
  loc_C64848: FFreeAd var_C8 = "": var_104 = "": var_148 = "": var_198 = "": var_19C = ""
  loc_C64857: FFreeVar var_D8 = "": var_158 = "": var_184 = "": var_194 = "": var_1B0 = ""
  loc_C64866: FLdRfVar var_A8
  loc_C64869: LdFixedStr
  loc_C6486C: CVarStr var_158
  loc_C6486F: LitI4 9
  loc_C64874: FLdRfVar var_D8
  loc_C64877: ImpAdCallFPR4  = Chr()
  loc_C6487C: FLdRfVar var_D8
  loc_C6487F: ConcatVar var_184
  loc_C64883: FLdRfVar var_C2
  loc_C64886: LdFixedStr
  loc_C64889: CVarStr var_194
  loc_C6488C: ConcatVar var_1B0
  loc_C64890: LitI4 9
  loc_C64895: FLdRfVar var_1C0
  loc_C64898: ImpAdCallFPR4  = Chr()
  loc_C6489D: FLdRfVar var_1C0
  loc_C648A0: ConcatVar var_1E0
  loc_C648A4: FLdRfVar var_1F0
  loc_C648A7: FLdRfVar var_148
  loc_C648AA: LitVarStr var_114, "FealCtct"
  loc_C648AF: PopAdLdVar
  loc_C648B0: FLdRfVar var_104
  loc_C648B3: FLdRfVar var_C8
  loc_C648B6: FLdPr Me
  loc_C648B9: MemLdRfVar from_stack_1.global_60
  loc_C648BC: NewIfNullPr clsctacte
  loc_C648BF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C648C4: FLdPr var_C8
  loc_C648C7:  = Me.Fields
  loc_C648CC: FLdPr var_104
  loc_C648CF: from_stack_2 = Me.Item(from_stack_1)
  loc_C648D4: FLdPr var_148
  loc_C648D7:  = Me.Value
  loc_C648DC: FLdRfVar var_1F0
  loc_C648DF: ConcatVar var_200
  loc_C648E3: LitI4 9
  loc_C648E8: FLdRfVar var_210
  loc_C648EB: ImpAdCallFPR4  = Chr()
  loc_C648F0: FLdRfVar var_210
  loc_C648F3: ConcatVar var_220
  loc_C648F7: FLdRfVar var_230
  loc_C648FA: FLdRfVar var_1A0
  loc_C648FD: LitVarStr var_124, "FeveCtct"
  loc_C64902: PopAdLdVar
  loc_C64903: FLdRfVar var_19C
  loc_C64906: FLdRfVar var_198
  loc_C64909: FLdPr Me
  loc_C6490C: MemLdRfVar from_stack_1.global_60
  loc_C6490F: NewIfNullPr clsctacte
  loc_C64912: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64917: FLdPr var_198
  loc_C6491A:  = Me.Fields
  loc_C6491F: FLdPr var_19C
  loc_C64922: from_stack_2 = Me.Item(from_stack_1)
  loc_C64927: FLdPr var_1A0
  loc_C6492A:  = Me.Value
  loc_C6492F: FLdRfVar var_230
  loc_C64932: ConcatVar var_240
  loc_C64936: LitI4 9
  loc_C6493B: FLdRfVar var_250
  loc_C6493E: ImpAdCallFPR4  = Chr()
  loc_C64943: FLdRfVar var_250
  loc_C64946: ConcatVar var_260
  loc_C6494A: FLdRfVar var_27C
  loc_C6494D: FLdRfVar var_26C
  loc_C64950: LitVarStr var_134, "CodiConc"
  loc_C64955: PopAdLdVar
  loc_C64956: FLdRfVar var_268
  loc_C64959: FLdRfVar var_264
  loc_C6495C: FLdPr Me
  loc_C6495F: MemLdRfVar from_stack_1.global_60
  loc_C64962: NewIfNullPr clsctacte
  loc_C64965: from_stack_1v = clsctacte.RsFrmGet()
  loc_C6496A: FLdPr var_264
  loc_C6496D:  = Me.Fields
  loc_C64972: FLdPr var_268
  loc_C64975: from_stack_2 = Me.Item(from_stack_1)
  loc_C6497A: FLdPr var_26C
  loc_C6497D:  = Me.Value
  loc_C64982: FLdRfVar var_27C
  loc_C64985: ConcatVar var_28C
  loc_C64989: LitI4 9
  loc_C6498E: FLdRfVar var_29C
  loc_C64991: ImpAdCallFPR4  = Chr()
  loc_C64996: FLdRfVar var_29C
  loc_C64999: ConcatVar var_2AC
  loc_C6499D: FLdRfVar var_2C8
  loc_C649A0: FLdRfVar var_2B8
  loc_C649A3: LitVarStr var_144, "ConcViej"
  loc_C649A8: PopAdLdVar
  loc_C649A9: FLdRfVar var_2B4
  loc_C649AC: FLdRfVar var_2B0
  loc_C649AF: FLdPr Me
  loc_C649B2: MemLdRfVar from_stack_1.global_60
  loc_C649B5: NewIfNullPr clsctacte
  loc_C649B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C649BD: FLdPr var_2B0
  loc_C649C0:  = Me.Fields
  loc_C649C5: FLdPr var_2B4
  loc_C649C8: from_stack_2 = Me.Item(from_stack_1)
  loc_C649CD: FLdPr var_2B8
  loc_C649D0:  = Me.Value
  loc_C649D5: FLdRfVar var_2C8
  loc_C649D8: ConcatVar var_2D8
  loc_C649DC: LitI4 9
  loc_C649E1: FLdRfVar var_2E8
  loc_C649E4: ImpAdCallFPR4  = Chr()
  loc_C649E9: FLdRfVar var_2E8
  loc_C649EC: ConcatVar var_2F8
  loc_C649F0: FLdRfVar var_314
  loc_C649F3: FLdRfVar var_304
  loc_C649F6: LitVarStr var_1D0, "CodiFapa"
  loc_C649FB: PopAdLdVar
  loc_C649FC: FLdRfVar var_300
  loc_C649FF: FLdRfVar var_2FC
  loc_C64A02: FLdPr Me
  loc_C64A05: MemLdRfVar from_stack_1.global_60
  loc_C64A08: NewIfNullPr clsctacte
  loc_C64A0B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64A10: FLdPr var_2FC
  loc_C64A13:  = Me.Fields
  loc_C64A18: FLdPr var_300
  loc_C64A1B: from_stack_2 = Me.Item(from_stack_1)
  loc_C64A20: FLdPr var_304
  loc_C64A23:  = Me.Value
  loc_C64A28: FLdRfVar var_314
  loc_C64A2B: ConcatVar var_324
  loc_C64A2F: LitI4 9
  loc_C64A34: FLdRfVar var_334
  loc_C64A37: ImpAdCallFPR4  = Chr()
  loc_C64A3C: FLdRfVar var_334
  loc_C64A3F: ConcatVar var_344
  loc_C64A43: FLdRfVar var_370
  loc_C64A46: FLdRfVar var_360
  loc_C64A49: LitVarStr var_35C, "NumeApre"
  loc_C64A4E: PopAdLdVar
  loc_C64A4F: FLdRfVar var_34C
  loc_C64A52: FLdRfVar var_348
  loc_C64A55: FLdPr Me
  loc_C64A58: MemLdRfVar from_stack_1.global_60
  loc_C64A5B: NewIfNullPr clsctacte
  loc_C64A5E: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64A63: FLdPr var_348
  loc_C64A66:  = Me.Fields
  loc_C64A6B: FLdPr var_34C
  loc_C64A6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C64A73: FLdPr var_360
  loc_C64A76:  = Me.Value
  loc_C64A7B: FLdRfVar var_370
  loc_C64A7E: ConcatVar var_380
  loc_C64A82: LitI4 9
  loc_C64A87: FLdRfVar var_390
  loc_C64A8A: ImpAdCallFPR4  = Chr()
  loc_C64A8F: FLdRfVar var_390
  loc_C64A92: ConcatVar var_3A0
  loc_C64A96: FLdRfVar var_3CC
  loc_C64A99: FLdRfVar var_3BC
  loc_C64A9C: LitVarStr var_3B8, "ExpeCtct"
  loc_C64AA1: PopAdLdVar
  loc_C64AA2: FLdRfVar var_3A8
  loc_C64AA5: FLdRfVar var_3A4
  loc_C64AA8: FLdPr Me
  loc_C64AAB: MemLdRfVar from_stack_1.global_60
  loc_C64AAE: NewIfNullPr clsctacte
  loc_C64AB1: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64AB6: FLdPr var_3A4
  loc_C64AB9:  = Me.Fields
  loc_C64ABE: FLdPr var_3A8
  loc_C64AC1: from_stack_2 = Me.Item(from_stack_1)
  loc_C64AC6: FLdPr var_3BC
  loc_C64AC9:  = Me.Value
  loc_C64ACE: FLdRfVar var_3CC
  loc_C64AD1: ConcatVar var_3DC
  loc_C64AD5: LitI4 9
  loc_C64ADA: FLdRfVar var_3EC
  loc_C64ADD: ImpAdCallFPR4  = Chr()
  loc_C64AE2: FLdRfVar var_3EC
  loc_C64AE5: ConcatVar var_3FC
  loc_C64AE9: FLdRfVar var_428
  loc_C64AEC: FLdRfVar var_418
  loc_C64AEF: LitVarStr var_414, "AbreTimo"
  loc_C64AF4: PopAdLdVar
  loc_C64AF5: FLdRfVar var_404
  loc_C64AF8: FLdRfVar var_400
  loc_C64AFB: FLdPr Me
  loc_C64AFE: MemLdRfVar from_stack_1.global_60
  loc_C64B01: NewIfNullPr clsctacte
  loc_C64B04: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64B09: FLdPr var_400
  loc_C64B0C:  = Me.Fields
  loc_C64B11: FLdPr var_404
  loc_C64B14: from_stack_2 = Me.Item(from_stack_1)
  loc_C64B19: FLdPr var_418
  loc_C64B1C:  = Me.Value
  loc_C64B21: FLdRfVar var_428
  loc_C64B24: ConcatVar var_438
  loc_C64B28: LitI4 9
  loc_C64B2D: FLdRfVar var_448
  loc_C64B30: ImpAdCallFPR4  = Chr()
  loc_C64B35: FLdRfVar var_448
  loc_C64B38: ConcatVar var_458
  loc_C64B3C: ILdRf var_8C
  loc_C64B3F: CVarStr var_468
  loc_C64B42: ConcatVar var_478
  loc_C64B46: LitI4 9
  loc_C64B4B: FLdRfVar var_488
  loc_C64B4E: ImpAdCallFPR4  = Chr()
  loc_C64B53: FLdRfVar var_488
  loc_C64B56: ConcatVar var_498
  loc_C64B5A: ILdRf var_90
  loc_C64B5D: CVarStr var_4A8
  loc_C64B60: ConcatVar var_4B8
  loc_C64B64: LitI4 9
  loc_C64B69: FLdRfVar var_4C8
  loc_C64B6C: ImpAdCallFPR4  = Chr()
  loc_C64B71: FLdRfVar var_4C8
  loc_C64B74: ConcatVar var_4D8
  loc_C64B78: ILdRf var_94
  loc_C64B7B: CVarStr var_4E8
  loc_C64B7E: ConcatVar var_4F8
  loc_C64B82: LitI4 9
  loc_C64B87: FLdRfVar var_508
  loc_C64B8A: ImpAdCallFPR4  = Chr()
  loc_C64B8F: FLdRfVar var_508
  loc_C64B92: ConcatVar var_518
  loc_C64B96: ILdRf var_98
  loc_C64B99: CVarStr var_528
  loc_C64B9C: ConcatVar var_538
  loc_C64BA0: LitI4 9
  loc_C64BA5: FLdRfVar var_548
  loc_C64BA8: ImpAdCallFPR4  = Chr()
  loc_C64BAD: FLdRfVar var_548
  loc_C64BB0: ConcatVar var_558
  loc_C64BB4: FLdRfVar var_584
  loc_C64BB7: FLdRfVar var_574
  loc_C64BBA: LitVarStr var_570, "NumeCtct"
  loc_C64BBF: PopAdLdVar
  loc_C64BC0: FLdRfVar var_560
  loc_C64BC3: FLdRfVar var_55C
  loc_C64BC6: FLdPr Me
  loc_C64BC9: MemLdRfVar from_stack_1.global_60
  loc_C64BCC: NewIfNullPr clsctacte
  loc_C64BCF: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64BD4: FLdPr var_55C
  loc_C64BD7:  = Me.Fields
  loc_C64BDC: FLdPr var_560
  loc_C64BDF: from_stack_2 = Me.Item(from_stack_1)
  loc_C64BE4: FLdPr var_574
  loc_C64BE7:  = Me.Value
  loc_C64BEC: FLdRfVar var_584
  loc_C64BEF: ConcatVar var_594
  loc_C64BF3: LitI4 9
  loc_C64BF8: FLdRfVar var_5A4
  loc_C64BFB: ImpAdCallFPR4  = Chr()
  loc_C64C00: FLdRfVar var_5A4
  loc_C64C03: ConcatVar var_5B4
  loc_C64C07: FLdRfVar var_5E0
  loc_C64C0A: FLdRfVar var_5D0
  loc_C64C0D: LitVarStr var_5CC, "MoviCtct"
  loc_C64C12: PopAdLdVar
  loc_C64C13: FLdRfVar var_5BC
  loc_C64C16: FLdRfVar var_5B8
  loc_C64C19: FLdPr Me
  loc_C64C1C: MemLdRfVar from_stack_1.global_60
  loc_C64C1F: NewIfNullPr clsctacte
  loc_C64C22: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64C27: FLdPr var_5B8
  loc_C64C2A:  = Me.Fields
  loc_C64C2F: FLdPr var_5BC
  loc_C64C32: from_stack_2 = Me.Item(from_stack_1)
  loc_C64C37: FLdPr var_5D0
  loc_C64C3A:  = Me.Value
  loc_C64C3F: FLdRfVar var_5E0
  loc_C64C42: ConcatVar var_5F0
  loc_C64C46: LitI4 9
  loc_C64C4B: FLdRfVar var_600
  loc_C64C4E: ImpAdCallFPR4  = Chr()
  loc_C64C53: FLdRfVar var_600
  loc_C64C56: ConcatVar var_610
  loc_C64C5A: FLdRfVar var_63C
  loc_C64C5D: FLdRfVar var_62C
  loc_C64C60: LitVarStr var_628, "PeriInfo"
  loc_C64C65: PopAdLdVar
  loc_C64C66: FLdRfVar var_618
  loc_C64C69: FLdRfVar var_614
  loc_C64C6C: FLdPr Me
  loc_C64C6F: MemLdRfVar from_stack_1.global_60
  loc_C64C72: NewIfNullPr clsctacte
  loc_C64C75: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64C7A: FLdPr var_614
  loc_C64C7D:  = Me.Fields
  loc_C64C82: FLdPr var_618
  loc_C64C85: from_stack_2 = Me.Item(from_stack_1)
  loc_C64C8A: FLdPr var_62C
  loc_C64C8D:  = Me.Value
  loc_C64C92: FLdRfVar var_63C
  loc_C64C95: ConcatVar var_64C
  loc_C64C99: CStrVarTmp
  loc_C64C9A: FStStr var_88
  loc_C64C9D: FFreeAd var_614 = "": var_618 = "": var_62C = "": var_C8 = "": var_104 = "": var_148 = "": var_198 = "": var_19C = "": var_1A0 = "": var_264 = "": var_268 = "": var_26C = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2FC = "": var_300 = "": var_304 = "": var_348 = "": var_34C = "": var_360 = "": var_3A4 = "": var_3A8 = "": var_3BC = "": var_400 = "": var_404 = "": var_418 = "": var_55C = "": var_560 = "": var_574 = "": var_5B8 = "": var_5BC = ""
  loc_C64CE2: FFreeVar var_64C = "": var_3A0 = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3FC = "": var_428 = "": var_438 = "": var_448 = "": var_458 = "": var_478 = "": var_488 = "": var_498 = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4F8 = "": var_508 = "": var_518 = "": var_538 = "": var_548 = "": var_558 = "": var_584 = "": var_594 = "": var_5A4 = "": var_5B4 = "": var_5E0 = "": var_5F0 = "": var_600 = "": var_610 = "": var_63C = "": var_158 = "": var_D8 = "": var_184 = "": var_194 = "": var_1B0 = "": var_1C0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_314 = "": var_324 = "": var_334 = "": var_344 = "": var_370 = "": var_380 = ""
  loc_C64D5F: FLdRfVar var_88
  loc_C64D62: CDargRef
  loc_C64D66: FLdPr Me
  loc_C64D69: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64D6C: FStAdFunc var_C8
  loc_C64D6F: FLdPr var_C8
  loc_C64D72: LateIdCall
  loc_C64D7A: FFree1Ad var_C8
  loc_C64D7D: FLdRfVar var_D8
  loc_C64D80: FLdRfVar var_148
  loc_C64D83: LitVarStr var_114, "MoviCtct"
  loc_C64D88: PopAdLdVar
  loc_C64D89: FLdRfVar var_104
  loc_C64D8C: FLdRfVar var_C8
  loc_C64D8F: FLdPr Me
  loc_C64D92: MemLdRfVar from_stack_1.global_60
  loc_C64D95: NewIfNullPr clsctacte
  loc_C64D98: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64D9D: FLdPr var_C8
  loc_C64DA0:  = Me.Fields
  loc_C64DA5: FLdPr var_104
  loc_C64DA8: from_stack_2 = Me.Item(from_stack_1)
  loc_C64DAD: FLdPr var_148
  loc_C64DB0:  = Me.Value
  loc_C64DB5: FLdRfVar var_D8
  loc_C64DB8: FnCIntVar
  loc_C64DBA: LitI2_Byte 1
  loc_C64DBC: EqI2
  loc_C64DBD: FFreeAd var_C8 = "": var_104 = ""
  loc_C64DC6: FFree1Var var_D8 = ""
  loc_C64DC9: BranchF loc_C64E79
  loc_C64DCC: FLdPr Me
  loc_C64DCF: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64DD2: FStAdFunc var_C8
  loc_C64DD5: FLdPr var_C8
  loc_C64DD8: LateIdLdVar var_D8 DispID_4 0
  loc_C64DDF: CI4Var
  loc_C64DE1: LitI4 1
  loc_C64DE6: SubI4
  loc_C64DE7: CVarI4
  loc_C64DEB: PopAdLdVar
  loc_C64DEC: FLdPr Me
  loc_C64DEF: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64DF2: FStAdFunc var_104
  loc_C64DF5: FLdPr var_104
  loc_C64DF8: LateIdSt
  loc_C64DFD: FFreeAd var_C8 = ""
  loc_C64E04: FFree1Var var_D8 = ""
  loc_C64E07: LitI2_Byte 0
  loc_C64E09: FLdRfVar var_C4
  loc_C64E0C: FLdPr Me
  loc_C64E0F: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64E12: FStAdFunc var_C8
  loc_C64E15: FLdPr var_C8
  loc_C64E18: LateIdLdVar var_D8 DispID_5 0
  loc_C64E1F: CI4Var
  loc_C64E21: LitI4 1
  loc_C64E26: SubI4
  loc_C64E27: CI2I4
  loc_C64E28: FFree1Ad var_C8
  loc_C64E2B: FFree1Var var_D8 = ""
  loc_C64E2E: ForI2 var_650
  loc_C64E34: FLdI2 var_C4
  loc_C64E37: CI4UI1
  loc_C64E38: CVarI4
  loc_C64E3C: PopAdLdVar
  loc_C64E3D: FLdPr Me
  loc_C64E40: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64E43: FStAdFunc var_C8
  loc_C64E46: FLdPr var_C8
  loc_C64E49: LateIdSt
  loc_C64E4E: FFree1Ad var_C8
  loc_C64E51: LitVarI4
  loc_C64E59: PopAdLdVar
  loc_C64E5A: FLdPr Me
  loc_C64E5D: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64E60: FStAdFunc var_C8
  loc_C64E63: FLdPr var_C8
  loc_C64E66: LateIdSt
  loc_C64E6B: FFree1Ad var_C8
  loc_C64E6E: FLdRfVar var_C4
  loc_C64E71: NextI2 var_650, loc_C64E34
  loc_C64E76: Branch loc_C64F23
  loc_C64E79: FLdPr Me
  loc_C64E7C: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64E7F: FStAdFunc var_C8
  loc_C64E82: FLdPr var_C8
  loc_C64E85: LateIdLdVar var_D8 DispID_4 0
  loc_C64E8C: CI4Var
  loc_C64E8E: LitI4 1
  loc_C64E93: SubI4
  loc_C64E94: CVarI4
  loc_C64E98: PopAdLdVar
  loc_C64E99: FLdPr Me
  loc_C64E9C: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64E9F: FStAdFunc var_104
  loc_C64EA2: FLdPr var_104
  loc_C64EA5: LateIdSt
  loc_C64EAA: FFreeAd var_C8 = ""
  loc_C64EB1: FFree1Var var_D8 = ""
  loc_C64EB4: LitI2_Byte 0
  loc_C64EB6: FLdRfVar var_C4
  loc_C64EB9: FLdPr Me
  loc_C64EBC: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64EBF: FStAdFunc var_C8
  loc_C64EC2: FLdPr var_C8
  loc_C64EC5: LateIdLdVar var_D8 DispID_5 0
  loc_C64ECC: CI4Var
  loc_C64ECE: LitI4 1
  loc_C64ED3: SubI4
  loc_C64ED4: CI2I4
  loc_C64ED5: FFree1Ad var_C8
  loc_C64ED8: FFree1Var var_D8 = ""
  loc_C64EDB: ForI2 var_654
  loc_C64EE1: FLdI2 var_C4
  loc_C64EE4: CI4UI1
  loc_C64EE5: CVarI4
  loc_C64EE9: PopAdLdVar
  loc_C64EEA: FLdPr Me
  loc_C64EED: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64EF0: FStAdFunc var_C8
  loc_C64EF3: FLdPr var_C8
  loc_C64EF6: LateIdSt
  loc_C64EFB: FFree1Ad var_C8
  loc_C64EFE: LitVarI4
  loc_C64F06: PopAdLdVar
  loc_C64F07: FLdPr Me
  loc_C64F0A: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C64F0D: FStAdFunc var_C8
  loc_C64F10: FLdPr var_C8
  loc_C64F13: LateIdSt
  loc_C64F18: FFree1Ad var_C8
  loc_C64F1B: FLdRfVar var_C4
  loc_C64F1E: NextI2 var_654, loc_C64EE1
  loc_C64F23: FLdRfVar var_C8
  loc_C64F26: FLdPr Me
  loc_C64F29: MemLdRfVar from_stack_1.global_60
  loc_C64F2C: NewIfNullPr clsctacte
  loc_C64F2F: from_stack_1v = clsctacte.RsFrmGet()
  loc_C64F34: FLdPr var_C8
  loc_C64F37: Me.MoveNext
  loc_C64F3C: FFree1Ad var_C8
  loc_C64F3F: Branch loc_C641F6
  loc_C64F42: ExitProcHresult
End Sub

Private Sub CtaCteTab_Click(PreviousTab As Integer) '9AEB94
  'Data Table: 542B30
  loc_9AEB90: ExitProcHresult
  loc_9AEB91: LitI2FP -144
End Sub

Private Sub NumeCtaTxt_GotFocus() 'B2D348
  'Data Table: 542B30
  loc_B2D074: FLdPrThis
  loc_B2D075: VCallAd Control_ID_NumeCtaTxt
  loc_B2D078: CVarAd
  loc_B2D07C: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_B2D081: FFree1Var var_94 = ""
  loc_B2D084: Call Proc_266_24_B19C28()
  loc_B2D089: LitI2_Byte 0
  loc_B2D08B: FLdPr Me
  loc_B2D08E: VCallAd Control_ID_InmuebleFrm
  loc_B2D091: FStAdFunc var_98
  loc_B2D094: FLdPr var_98
  loc_B2D097: Me.Visible = from_stack_1b
  loc_B2D09C: FFree1Ad var_98
  loc_B2D09F: LitI2_Byte 0
  loc_B2D0A1: FLdPr Me
  loc_B2D0A4: VCallAd Control_ID_ComercioFrm
  loc_B2D0A7: FStAdFunc var_98
  loc_B2D0AA: FLdPr var_98
  loc_B2D0AD: Me.Visible = from_stack_1b
  loc_B2D0B2: FFree1Ad var_98
  loc_B2D0B5: Call Proc_266_22_ABE128()
  loc_B2D0BA: Call Proc_266_23_ACB704()
  loc_B2D0BF: Call Proc_266_25_B57BB4()
  loc_B2D0C4: LitI2_Byte 0
  loc_B2D0C6: CR8I2
  loc_B2D0C7: FLdPr Me
  loc_B2D0CA: MemStFPR8 global_144
  loc_B2D0CD: LitI2_Byte 0
  loc_B2D0CF: CR8I2
  loc_B2D0D0: FLdPr Me
  loc_B2D0D3: MemStFPR8 global_152
  loc_B2D0D6: LitI2_Byte 0
  loc_B2D0D8: CR8I2
  loc_B2D0D9: FLdPr Me
  loc_B2D0DC: MemStFPR8 global_168
  loc_B2D0DF: LitI2_Byte 0
  loc_B2D0E1: CR8I2
  loc_B2D0E2: FLdPr Me
  loc_B2D0E5: MemStFPR8 global_160
  loc_B2D0E8: LitI2_Byte 0
  loc_B2D0EA: CR8I2
  loc_B2D0EB: FLdPr Me
  loc_B2D0EE: MemStFPR8 global_184
  loc_B2D0F1: LitI2_Byte 0
  loc_B2D0F3: CR8I2
  loc_B2D0F4: FLdPr Me
  loc_B2D0F7: MemStFPR8 global_192
  loc_B2D0FA: LitI2_Byte 0
  loc_B2D0FC: CR8I2
  loc_B2D0FD: FLdPr Me
  loc_B2D100: MemStFPR8 global_200
  loc_B2D103: LitI2_Byte 0
  loc_B2D105: CR8I2
  loc_B2D106: FLdPr Me
  loc_B2D109: MemStFPR8 global_208
  loc_B2D10C: LitI2_Byte 0
  loc_B2D10E: CR8I2
  loc_B2D10F: FLdPr Me
  loc_B2D112: MemStFPR8 global_216
  loc_B2D115: LitI2_Byte 0
  loc_B2D117: FLdPr Me
  loc_B2D11A: VCallAd Control_ID_NotiDeudTxt
  loc_B2D11D: FStAdFunc var_98
  loc_B2D120: FLdPr var_98
  loc_B2D123: Me.Visible = from_stack_1b
  loc_B2D128: FFree1Ad var_98
  loc_B2D12B: LitStr vbNullString
  loc_B2D12E: FLdPr Me
  loc_B2D131: VCallAd Control_ID_NotiDeudTxt
  loc_B2D134: FStAdFunc var_98
  loc_B2D137: FLdPr var_98
  loc_B2D13A: Me.Text = from_stack_1
  loc_B2D13F: FFree1Ad var_98
  loc_B2D142: LitI4 1
  loc_B2D147: LitI4 1
  loc_B2D14C: LitVarStr var_B8, "0.00"
  loc_B2D151: FStVarCopyObj var_94
  loc_B2D154: FLdRfVar var_94
  loc_B2D157: FLdPr Me
  loc_B2D15A: MemLdRfVar from_stack_1.global_144
  loc_B2D15D: CVarRef
  loc_B2D162: FLdRfVar var_C8
  loc_B2D165: ImpAdCallFPR4  = Format(, )
  loc_B2D16A: FLdRfVar var_C8
  loc_B2D16D: CStrVarVal var_CC
  loc_B2D171: FLdPr Me
  loc_B2D174: VCallAd Control_ID_txtTotaDere
  loc_B2D177: FStAdFunc var_98
  loc_B2D17A: FLdPr var_98
  loc_B2D17D: Me.Text = from_stack_1
  loc_B2D182: FFree1Str var_CC
  loc_B2D185: FFree1Ad var_98
  loc_B2D188: FFreeVar var_94 = ""
  loc_B2D18F: LitI4 1
  loc_B2D194: LitI4 1
  loc_B2D199: LitVarStr var_B8, "0.00"
  loc_B2D19E: FStVarCopyObj var_94
  loc_B2D1A1: FLdRfVar var_94
  loc_B2D1A4: FLdPr Me
  loc_B2D1A7: MemLdRfVar from_stack_1.global_152
  loc_B2D1AA: CVarRef
  loc_B2D1AF: FLdRfVar var_C8
  loc_B2D1B2: ImpAdCallFPR4  = Format(, )
  loc_B2D1B7: FLdRfVar var_C8
  loc_B2D1BA: CStrVarVal var_CC
  loc_B2D1BE: FLdPr Me
  loc_B2D1C1: VCallAd Control_ID_txtTotaCred
  loc_B2D1C4: FStAdFunc var_98
  loc_B2D1C7: FLdPr var_98
  loc_B2D1CA: Me.Text = from_stack_1
  loc_B2D1CF: FFree1Str var_CC
  loc_B2D1D2: FFree1Ad var_98
  loc_B2D1D5: FFreeVar var_94 = ""
  loc_B2D1DC: LitI4 1
  loc_B2D1E1: LitI4 1
  loc_B2D1E6: LitVarStr var_B8, "0.00"
  loc_B2D1EB: FStVarCopyObj var_94
  loc_B2D1EE: FLdRfVar var_94
  loc_B2D1F1: FLdPr Me
  loc_B2D1F4: MemLdRfVar from_stack_1.global_168
  loc_B2D1F7: CVarRef
  loc_B2D1FC: FLdRfVar var_C8
  loc_B2D1FF: ImpAdCallFPR4  = Format(, )
  loc_B2D204: FLdRfVar var_C8
  loc_B2D207: CStrVarVal var_CC
  loc_B2D20B: FLdPr Me
  loc_B2D20E: VCallAd Control_ID_txtTotaReca
  loc_B2D211: FStAdFunc var_98
  loc_B2D214: FLdPr var_98
  loc_B2D217: Me.Text = from_stack_1
  loc_B2D21C: FFree1Str var_CC
  loc_B2D21F: FFree1Ad var_98
  loc_B2D222: FFreeVar var_94 = ""
  loc_B2D229: LitI4 1
  loc_B2D22E: LitI4 1
  loc_B2D233: LitVarStr var_B8, "0.00"
  loc_B2D238: FStVarCopyObj var_94
  loc_B2D23B: FLdRfVar var_94
  loc_B2D23E: FLdPr Me
  loc_B2D241: MemLdRfVar from_stack_1.global_160
  loc_B2D244: CVarRef
  loc_B2D249: FLdRfVar var_C8
  loc_B2D24C: ImpAdCallFPR4  = Format(, )
  loc_B2D251: FLdRfVar var_C8
  loc_B2D254: CStrVarVal var_CC
  loc_B2D258: FLdPr Me
  loc_B2D25B: VCallAd Control_ID_txtTotaApre
  loc_B2D25E: FStAdFunc var_98
  loc_B2D261: FLdPr var_98
  loc_B2D264: Me.Text = from_stack_1
  loc_B2D269: FFree1Str var_CC
  loc_B2D26C: FFree1Ad var_98
  loc_B2D26F: FFreeVar var_94 = ""
  loc_B2D276: LitI4 2
  loc_B2D27B: FLdPr Me
  loc_B2D27E: MemLdRfVar from_stack_1.global_144
  loc_B2D281: CVarRef
  loc_B2D286: FLdRfVar var_94
  loc_B2D289: ImpAdCallFPR4  = Round(, )
  loc_B2D28E: FLdRfVar var_94
  loc_B2D291: LitI4 2
  loc_B2D296: FLdPr Me
  loc_B2D299: MemLdRfVar from_stack_1.global_160
  loc_B2D29C: CVarRef
  loc_B2D2A1: FLdRfVar var_C8
  loc_B2D2A4: ImpAdCallFPR4  = Round(, )
  loc_B2D2A9: FLdRfVar var_C8
  loc_B2D2AC: AddVar var_DC
  loc_B2D2B0: LitI4 2
  loc_B2D2B5: FLdPr Me
  loc_B2D2B8: MemLdRfVar from_stack_1.global_168
  loc_B2D2BB: CVarRef
  loc_B2D2C0: FLdRfVar var_FC
  loc_B2D2C3: ImpAdCallFPR4  = Round(, )
  loc_B2D2C8: FLdRfVar var_FC
  loc_B2D2CB: AddVar var_10C
  loc_B2D2CF: CR4Var
  loc_B2D2D0: FLdPr Me
  loc_B2D2D3: MemStFPR8 global_184
  loc_B2D2D6: FFreeVar var_94 = "": var_C8 = "": var_DC = "": var_FC = ""
  loc_B2D2E3: LitI4 1
  loc_B2D2E8: LitI4 1
  loc_B2D2ED: LitVarStr var_B8, "0.00"
  loc_B2D2F2: FStVarCopyObj var_94
  loc_B2D2F5: FLdRfVar var_94
  loc_B2D2F8: FLdPr Me
  loc_B2D2FB: MemLdRfVar from_stack_1.global_184
  loc_B2D2FE: CVarRef
  loc_B2D303: FLdRfVar var_C8
  loc_B2D306: ImpAdCallFPR4  = Format(, )
  loc_B2D30B: FLdRfVar var_C8
  loc_B2D30E: CStrVarVal var_CC
  loc_B2D312: FLdPr Me
  loc_B2D315: VCallAd Control_ID_txtTotal
  loc_B2D318: FStAdFunc var_98
  loc_B2D31B: FLdPr var_98
  loc_B2D31E: Me.Text = from_stack_1
  loc_B2D323: FFree1Str var_CC
  loc_B2D326: FFree1Ad var_98
  loc_B2D329: FFreeVar var_94 = ""
  loc_B2D330: LitI2_Byte 0
  loc_B2D332: FLdPr Me
  loc_B2D335: VCallAd Control_ID_ImprimirCmd
  loc_B2D338: FStAdFunc var_98
  loc_B2D33B: FLdPr var_98
  loc_B2D33E: Me.Enabled = from_stack_1b
  loc_B2D343: FFree1Ad var_98
  loc_B2D346: ExitProcHresult
  loc_B2D347: PopFPR8
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B505C8
  'Data Table: 542B30
  loc_B50220: ILdI2 KeyAscii
  loc_B50223: CI4UI1
  loc_B50224: LitI4 &H20
  loc_B50229: EqI4
  loc_B5022A: BranchF loc_B505C7
  loc_B5022D: LitI2_Byte 0
  loc_B5022F: IStI2 KeyAscii
  loc_B50232: FLdRfVar var_8A
  loc_B50235: FLdPr Me
  loc_B50238: VCallAd Control_ID_OficinaCbo
  loc_B5023B: FStAdFunc var_88
  loc_B5023E: FLdPr var_88
  loc_B50241:  = Me.ListIndex
  loc_B50246: FLdI2 var_8A
  loc_B50249: FStI2 var_8C
  loc_B5024C: FFree1Ad var_88
  loc_B5024F: FLdI2 var_8C
  loc_B50252: LitI2_Byte 0
  loc_B50254: EqI2
  loc_B50255: BranchF loc_B50263
  loc_B50258: LitI2_Byte 1
  loc_B5025A: CUI1I2
  loc_B5025C: ImpAdStUI1 MemVar_D93038
  loc_B50260: Branch loc_B502D8
  loc_B50263: FLdI2 var_8C
  loc_B50266: LitI2_Byte 1
  loc_B50268: EqI2
  loc_B50269: BranchF loc_B50277
  loc_B5026C: LitI2_Byte 2
  loc_B5026E: CUI1I2
  loc_B50270: ImpAdStUI1 MemVar_D93038
  loc_B50274: Branch loc_B502D8
  loc_B50277: FLdI2 var_8C
  loc_B5027A: LitI2_Byte 2
  loc_B5027C: EqI2
  loc_B5027D: BranchF loc_B5028B
  loc_B50280: LitI2_Byte 3
  loc_B50282: CUI1I2
  loc_B50284: ImpAdStUI1 MemVar_D93038
  loc_B50288: Branch loc_B502D8
  loc_B5028B: FLdI2 var_8C
  loc_B5028E: LitI2_Byte 3
  loc_B50290: EqI2
  loc_B50291: BranchF loc_B5029F
  loc_B50294: LitI2_Byte 4
  loc_B50296: CUI1I2
  loc_B50298: ImpAdStUI1 MemVar_D93038
  loc_B5029C: Branch loc_B502D8
  loc_B5029F: FLdI2 var_8C
  loc_B502A2: LitI2_Byte 4
  loc_B502A4: EqI2
  loc_B502A5: BranchF loc_B502B3
  loc_B502A8: LitI2_Byte 5
  loc_B502AA: CUI1I2
  loc_B502AC: ImpAdStUI1 MemVar_D93038
  loc_B502B0: Branch loc_B502D8
  loc_B502B3: FLdI2 var_8C
  loc_B502B6: LitI2_Byte 5
  loc_B502B8: EqI2
  loc_B502B9: BranchF loc_B502C7
  loc_B502BC: LitI2_Byte 6
  loc_B502BE: CUI1I2
  loc_B502C0: ImpAdStUI1 MemVar_D93038
  loc_B502C4: Branch loc_B502D8
  loc_B502C7: FLdI2 var_8C
  loc_B502CA: LitI2_Byte 6
  loc_B502CC: EqI2
  loc_B502CD: BranchF loc_B502D8
  loc_B502D0: LitI2_Byte 7
  loc_B502D2: CUI1I2
  loc_B502D4: ImpAdStUI1 MemVar_D93038
  loc_B502D8: LitVar_Missing var_AC
  loc_B502DB: PopAdLdVar
  loc_B502DC: LitVarI4
  loc_B502E4: PopAdLdVar
  loc_B502E5: ImpAdLdRf MemVar_D94034
  loc_B502E8: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B502EB: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B502F0: FLdRfVar var_B0
  loc_B502F3: FLdRfVar var_88
  loc_B502F6: ImpAdLdRf MemVar_D94034
  loc_B502F9: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B502FC: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B50301: FLdPr var_88
  loc_B50304: from_stack_1 = clsbase.RecordCount
  loc_B50309: ILdRf var_B0
  loc_B5030C: LitI4 0
  loc_B50311: GtI4
  loc_B50312: FFree1Ad var_88
  loc_B50315: BranchF loc_B505B5
  loc_B50318: FLdRfVar var_CC
  loc_B5031B: FLdRfVar var_BC
  loc_B5031E: LitVarStr var_9C, "CodiOfic"
  loc_B50323: PopAdLdVar
  loc_B50324: FLdRfVar var_B8
  loc_B50327: FLdRfVar var_B4
  loc_B5032A: FLdRfVar var_88
  loc_B5032D: ImpAdLdRf MemVar_D94034
  loc_B50330: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B50333: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B50338: FLdPr var_88
  loc_B5033B: from_stack_1v = clsbase.RsFrmGet()
  loc_B50340: FLdPr var_B4
  loc_B50343:  = Me.Fields
  loc_B50348: FLdPr var_B8
  loc_B5034B: from_stack_2 = Me.Item(from_stack_1)
  loc_B50350: FLdPr var_BC
  loc_B50353:  = Me.Value
  loc_B50358: FLdRfVar var_CC
  loc_B5035B: FStVar var_DC
  loc_B5035F: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B5036A: FLdRfVar var_DC
  loc_B5036D: LitVarI2 var_9C, 1
  loc_B50372: HardType
  loc_B50373: EqVarBool
  loc_B50375: BranchF loc_B503AF
  loc_B50378: FLdRfVar var_E0
  loc_B5037B: LitI2_Byte 0
  loc_B5037D: FLdPr Me
  loc_B50380: VCallAd Control_ID_OficinaCbo
  loc_B50383: FStAdFunc var_88
  loc_B50386: FLdPr var_88
  loc_B50389: from_stack_2 = Me.List(from_stack_1)
  loc_B5038E: ILdRf var_E0
  loc_B50391: FLdPr Me
  loc_B50394: VCallAd Control_ID_OficinaCbo
  loc_B50397: FStAdFunc var_B4
  loc_B5039A: FLdPr var_B4
  loc_B5039D: Me.Text = from_stack_1
  loc_B503A2: FFree1Str var_E0
  loc_B503A5: FFreeAd var_88 = ""
  loc_B503AC: Branch loc_B5054A
  loc_B503AF: FLdRfVar var_DC
  loc_B503B2: LitVarI2 var_9C, 2
  loc_B503B7: HardType
  loc_B503B8: EqVarBool
  loc_B503BA: BranchF loc_B503F4
  loc_B503BD: FLdRfVar var_E0
  loc_B503C0: LitI2_Byte 1
  loc_B503C2: FLdPr Me
  loc_B503C5: VCallAd Control_ID_OficinaCbo
  loc_B503C8: FStAdFunc var_88
  loc_B503CB: FLdPr var_88
  loc_B503CE: from_stack_2 = Me.List(from_stack_1)
  loc_B503D3: ILdRf var_E0
  loc_B503D6: FLdPr Me
  loc_B503D9: VCallAd Control_ID_OficinaCbo
  loc_B503DC: FStAdFunc var_B4
  loc_B503DF: FLdPr var_B4
  loc_B503E2: Me.Text = from_stack_1
  loc_B503E7: FFree1Str var_E0
  loc_B503EA: FFreeAd var_88 = ""
  loc_B503F1: Branch loc_B5054A
  loc_B503F4: FLdRfVar var_DC
  loc_B503F7: LitVarI2 var_9C, 3
  loc_B503FC: HardType
  loc_B503FD: EqVarBool
  loc_B503FF: BranchF loc_B50439
  loc_B50402: FLdRfVar var_E0
  loc_B50405: LitI2_Byte 2
  loc_B50407: FLdPr Me
  loc_B5040A: VCallAd Control_ID_OficinaCbo
  loc_B5040D: FStAdFunc var_88
  loc_B50410: FLdPr var_88
  loc_B50413: from_stack_2 = Me.List(from_stack_1)
  loc_B50418: ILdRf var_E0
  loc_B5041B: FLdPr Me
  loc_B5041E: VCallAd Control_ID_OficinaCbo
  loc_B50421: FStAdFunc var_B4
  loc_B50424: FLdPr var_B4
  loc_B50427: Me.Text = from_stack_1
  loc_B5042C: FFree1Str var_E0
  loc_B5042F: FFreeAd var_88 = ""
  loc_B50436: Branch loc_B5054A
  loc_B50439: FLdRfVar var_DC
  loc_B5043C: LitVarI2 var_9C, 4
  loc_B50441: HardType
  loc_B50442: EqVarBool
  loc_B50444: BranchF loc_B5047E
  loc_B50447: FLdRfVar var_E0
  loc_B5044A: LitI2_Byte 3
  loc_B5044C: FLdPr Me
  loc_B5044F: VCallAd Control_ID_OficinaCbo
  loc_B50452: FStAdFunc var_88
  loc_B50455: FLdPr var_88
  loc_B50458: from_stack_2 = Me.List(from_stack_1)
  loc_B5045D: ILdRf var_E0
  loc_B50460: FLdPr Me
  loc_B50463: VCallAd Control_ID_OficinaCbo
  loc_B50466: FStAdFunc var_B4
  loc_B50469: FLdPr var_B4
  loc_B5046C: Me.Text = from_stack_1
  loc_B50471: FFree1Str var_E0
  loc_B50474: FFreeAd var_88 = ""
  loc_B5047B: Branch loc_B5054A
  loc_B5047E: FLdRfVar var_DC
  loc_B50481: LitVarI2 var_9C, 5
  loc_B50486: HardType
  loc_B50487: EqVarBool
  loc_B50489: BranchF loc_B504C3
  loc_B5048C: FLdRfVar var_E0
  loc_B5048F: LitI2_Byte 4
  loc_B50491: FLdPr Me
  loc_B50494: VCallAd Control_ID_OficinaCbo
  loc_B50497: FStAdFunc var_88
  loc_B5049A: FLdPr var_88
  loc_B5049D: from_stack_2 = Me.List(from_stack_1)
  loc_B504A2: ILdRf var_E0
  loc_B504A5: FLdPr Me
  loc_B504A8: VCallAd Control_ID_OficinaCbo
  loc_B504AB: FStAdFunc var_B4
  loc_B504AE: FLdPr var_B4
  loc_B504B1: Me.Text = from_stack_1
  loc_B504B6: FFree1Str var_E0
  loc_B504B9: FFreeAd var_88 = ""
  loc_B504C0: Branch loc_B5054A
  loc_B504C3: FLdRfVar var_DC
  loc_B504C6: LitVarI2 var_9C, 6
  loc_B504CB: HardType
  loc_B504CC: EqVarBool
  loc_B504CE: BranchF loc_B50508
  loc_B504D1: FLdRfVar var_E0
  loc_B504D4: LitI2_Byte 5
  loc_B504D6: FLdPr Me
  loc_B504D9: VCallAd Control_ID_OficinaCbo
  loc_B504DC: FStAdFunc var_88
  loc_B504DF: FLdPr var_88
  loc_B504E2: from_stack_2 = Me.List(from_stack_1)
  loc_B504E7: ILdRf var_E0
  loc_B504EA: FLdPr Me
  loc_B504ED: VCallAd Control_ID_OficinaCbo
  loc_B504F0: FStAdFunc var_B4
  loc_B504F3: FLdPr var_B4
  loc_B504F6: Me.Text = from_stack_1
  loc_B504FB: FFree1Str var_E0
  loc_B504FE: FFreeAd var_88 = ""
  loc_B50505: Branch loc_B5054A
  loc_B50508: FLdRfVar var_DC
  loc_B5050B: LitVarI2 var_9C, 7
  loc_B50510: HardType
  loc_B50511: EqVarBool
  loc_B50513: BranchF loc_B5054A
  loc_B50516: FLdRfVar var_E0
  loc_B50519: LitI2_Byte 6
  loc_B5051B: FLdPr Me
  loc_B5051E: VCallAd Control_ID_OficinaCbo
  loc_B50521: FStAdFunc var_88
  loc_B50524: FLdPr var_88
  loc_B50527: from_stack_2 = Me.List(from_stack_1)
  loc_B5052C: ILdRf var_E0
  loc_B5052F: FLdPr Me
  loc_B50532: VCallAd Control_ID_OficinaCbo
  loc_B50535: FStAdFunc var_B4
  loc_B50538: FLdPr var_B4
  loc_B5053B: Me.Text = from_stack_1
  loc_B50540: FFree1Str var_E0
  loc_B50543: FFreeAd var_88 = ""
  loc_B5054A: FLdRfVar var_CC
  loc_B5054D: FLdRfVar var_BC
  loc_B50550: LitVarStr var_9C, "CuenCtct"
  loc_B50555: PopAdLdVar
  loc_B50556: FLdRfVar var_B8
  loc_B50559: FLdRfVar var_B4
  loc_B5055C: FLdRfVar var_88
  loc_B5055F: ImpAdLdRf MemVar_D94034
  loc_B50562: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B50565: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B5056A: FLdPr var_88
  loc_B5056D: from_stack_1v = clsbase.RsFrmGet()
  loc_B50572: FLdPr var_B4
  loc_B50575:  = Me.Fields
  loc_B5057A: FLdPr var_B8
  loc_B5057D: from_stack_2 = Me.Item(from_stack_1)
  loc_B50582: FLdPr var_BC
  loc_B50585:  = Me.Value
  loc_B5058A: FLdRfVar var_CC
  loc_B5058D: CStrVarTmp
  loc_B5058E: FStStrNoPop var_E0
  loc_B50591: FLdPr Me
  loc_B50594: VCallAd Control_ID_NumeCtaTxt
  loc_B50597: FStAdFunc var_E4
  loc_B5059A: FLdPr var_E4
  loc_B5059D: Me.Text = from_stack_1
  loc_B505A2: FFree1Str var_E0
  loc_B505A5: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B505B2: FFree1Var var_CC = ""
  loc_B505B5: FLdPr Me
  loc_B505B8: VCallAd Control_ID_NumeCtaTxt
  loc_B505BB: CVarAd
  loc_B505BF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B505C4: FFree1Var var_CC = ""
  loc_B505C7: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B50998
  'Data Table: 542B30
  loc_B50618: FLdRfVar var_8A
  loc_B5061B: FLdPr Me
  loc_B5061E: VCallAd Control_ID_NumeCtaTxt
  loc_B50621: FStAdFunc var_88
  loc_B50624: FLdPr var_88
  loc_B50627:  = Me.Enabled
  loc_B5062C: FLdI2 var_8A
  loc_B5062F: FFree1Ad var_88
  loc_B50632: BranchF loc_B50997
  loc_B50635: FLdRfVar var_8A
  loc_B50638: FLdPr Me
  loc_B5063B: VCallAd Control_ID_OficinaCbo
  loc_B5063E: FStAdFunc var_88
  loc_B50641: FLdPr var_88
  loc_B50644:  = Me.ListIndex
  loc_B50649: FLdI2 var_8A
  loc_B5064C: FStI2 var_8C
  loc_B5064F: FFree1Ad var_88
  loc_B50652: FLdI2 var_8C
  loc_B50655: LitI2_Byte 0
  loc_B50657: EqI2
  loc_B50658: BranchF loc_B50666
  loc_B5065B: LitI2_Byte 1
  loc_B5065D: CUI1I2
  loc_B5065F: ImpAdStUI1 MemVar_D93038
  loc_B50663: Branch loc_B506DB
  loc_B50666: FLdI2 var_8C
  loc_B50669: LitI2_Byte 1
  loc_B5066B: EqI2
  loc_B5066C: BranchF loc_B5067A
  loc_B5066F: LitI2_Byte 2
  loc_B50671: CUI1I2
  loc_B50673: ImpAdStUI1 MemVar_D93038
  loc_B50677: Branch loc_B506DB
  loc_B5067A: FLdI2 var_8C
  loc_B5067D: LitI2_Byte 2
  loc_B5067F: EqI2
  loc_B50680: BranchF loc_B5068E
  loc_B50683: LitI2_Byte 3
  loc_B50685: CUI1I2
  loc_B50687: ImpAdStUI1 MemVar_D93038
  loc_B5068B: Branch loc_B506DB
  loc_B5068E: FLdI2 var_8C
  loc_B50691: LitI2_Byte 3
  loc_B50693: EqI2
  loc_B50694: BranchF loc_B506A2
  loc_B50697: LitI2_Byte 4
  loc_B50699: CUI1I2
  loc_B5069B: ImpAdStUI1 MemVar_D93038
  loc_B5069F: Branch loc_B506DB
  loc_B506A2: FLdI2 var_8C
  loc_B506A5: LitI2_Byte 4
  loc_B506A7: EqI2
  loc_B506A8: BranchF loc_B506B6
  loc_B506AB: LitI2_Byte 5
  loc_B506AD: CUI1I2
  loc_B506AF: ImpAdStUI1 MemVar_D93038
  loc_B506B3: Branch loc_B506DB
  loc_B506B6: FLdI2 var_8C
  loc_B506B9: LitI2_Byte 5
  loc_B506BB: EqI2
  loc_B506BC: BranchF loc_B506CA
  loc_B506BF: LitI2_Byte 6
  loc_B506C1: CUI1I2
  loc_B506C3: ImpAdStUI1 MemVar_D93038
  loc_B506C7: Branch loc_B506DB
  loc_B506CA: FLdI2 var_8C
  loc_B506CD: LitI2_Byte 6
  loc_B506CF: EqI2
  loc_B506D0: BranchF loc_B506DB
  loc_B506D3: LitI2_Byte 7
  loc_B506D5: CUI1I2
  loc_B506D7: ImpAdStUI1 MemVar_D93038
  loc_B506DB: FLdRfVar var_90
  loc_B506DE: FLdPr Me
  loc_B506E1: VCallAd Control_ID_NumeCtaTxt
  loc_B506E4: FStAdFunc var_88
  loc_B506E7: FLdPr var_88
  loc_B506EA:  = Me.Text
  loc_B506EF: FLdPr Me
  loc_B506F2: MemLdRfVar from_stack_1.global_128
  loc_B506F5: NewIfNullRf
  loc_B506F9: LitStr "Titular"
  loc_B506FC: ILdRf var_90
  loc_B506FF: ImpAdLdUI1
  loc_B50703: CStrI2
  loc_B50705: FStStrNoPop var_94
  loc_B50708: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B5070D: FFreeStr var_94 = ""
  loc_B50714: FFree1Ad var_88
  loc_B50717: BranchF loc_B50866
  loc_B5071A: FLdRfVar var_90
  loc_B5071D: FLdPr Me
  loc_B50720: MemLdRfVar from_stack_1.global_128
  loc_B50723: NewIfNullPr tblPersona
  loc_B50726: from_stack_1v = tblPersona.CucuPersGet()
  loc_B5072B: ILdRf var_90
  loc_B5072E: FLdPr Me
  loc_B50731: VCallAd Control_ID_CucuPersTxt
  loc_B50734: FStAdFunc var_88
  loc_B50737: FLdPr var_88
  loc_B5073A: Me.Text = from_stack_1
  loc_B5073F: FFree1Str var_90
  loc_B50742: FFree1Ad var_88
  loc_B50745: FLdRfVar var_90
  loc_B50748: FLdPr Me
  loc_B5074B: MemLdRfVar from_stack_1.global_128
  loc_B5074E: NewIfNullPr tblPersona
  loc_B50751: from_stack_1v = tblPersona.DetaPersGet()
  loc_B50756: ILdRf var_90
  loc_B50759: FLdPr Me
  loc_B5075C: VCallAd Control_ID_DetaPerstxt
  loc_B5075F: FStAdFunc var_88
  loc_B50762: FLdPr var_88
  loc_B50765: Me.Text = from_stack_1
  loc_B5076A: FFree1Str var_90
  loc_B5076D: FFree1Ad var_88
  loc_B50770: FLdRfVar var_94
  loc_B50773: FLdPr Me
  loc_B50776: MemLdRfVar from_stack_1.global_128
  loc_B50779: NewIfNullPr tblPersona
  loc_B5077C: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B50781: FLdRfVar var_98
  loc_B50784: FLdPr Me
  loc_B50787: MemLdRfVar from_stack_1.global_128
  loc_B5078A: NewIfNullPr tblPersona
  loc_B5078D: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B50792: FLdRfVar var_90
  loc_B50795: FLdPr Me
  loc_B50798: MemLdRfVar from_stack_1.global_128
  loc_B5079B: NewIfNullPr tblPersona
  loc_B5079E: from_stack_1v = tblPersona.DetaCallGet()
  loc_B507A3: ILdRf var_90
  loc_B507A6: LitStr " "
  loc_B507A9: ConcatStr
  loc_B507AA: CVarStr var_F8
  loc_B507AD: LitVarStr var_C8, vbNullString
  loc_B507B2: FStVarCopyObj var_D8
  loc_B507B5: FLdRfVar var_D8
  loc_B507B8: LitStr "Nro: "
  loc_B507BB: ILdRf var_98
  loc_B507BE: ConcatStr
  loc_B507BF: CVarStr var_B8
  loc_B507C2: ILdRf var_94
  loc_B507C5: LitStr "0"
  loc_B507C8: NeStr
  loc_B507CA: CVarBoolI2 var_A8
  loc_B507CE: FLdRfVar var_E8
  loc_B507D1: ImpAdCallFPR4  = IIf(, , )
  loc_B507D6: FLdRfVar var_E8
  loc_B507D9: ConcatVar var_108
  loc_B507DD: LitVarStr var_118, " "
  loc_B507E2: ConcatVar var_128
  loc_B507E6: FLdRfVar var_12C
  loc_B507E9: FLdPr Me
  loc_B507EC: MemLdRfVar from_stack_1.global_128
  loc_B507EF: NewIfNullPr tblPersona
  loc_B507F2: from_stack_1v = tblPersona.UbicPersGet()
  loc_B507F7: FLdZeroAd var_12C
  loc_B507FA: CVarStr var_13C
  loc_B507FD: ConcatVar var_14C
  loc_B50801: LitVarStr var_15C, " "
  loc_B50806: ConcatVar var_16C
  loc_B5080A: FLdRfVar var_170
  loc_B5080D: FLdPr Me
  loc_B50810: MemLdRfVar from_stack_1.global_128
  loc_B50813: NewIfNullPr tblPersona
  loc_B50816: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B5081B: FLdZeroAd var_170
  loc_B5081E: CVarStr var_180
  loc_B50821: ConcatVar var_190
  loc_B50825: CStrVarVal var_194
  loc_B50829: FLdPr Me
  loc_B5082C: VCallAd Control_ID_DomiPersTxt
  loc_B5082F: FStAdFunc var_88
  loc_B50832: FLdPr var_88
  loc_B50835: Me.Text = from_stack_1
  loc_B5083A: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B50845: FFree1Ad var_88
  loc_B50848: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = "": var_14C = "": var_16C = "": var_180 = ""
  loc_B50863: Branch loc_B508EC
  loc_B50866: FLdRfVar var_90
  loc_B50869: FLdPr Me
  loc_B5086C: MemLdRfVar from_stack_1.global_128
  loc_B5086F: NewIfNullPr tblPersona
  loc_B50872: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B50877: ILdRf var_90
  loc_B5087A: FLdPr Me
  loc_B5087D: MemStStrCopy
  loc_B50881: FFree1Str var_90
  loc_B50884: FLdPr Me
  loc_B50887: MemLdStr global_140
  loc_B5088A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5088F: LitStr vbNullString
  loc_B50892: FLdPr Me
  loc_B50895: VCallAd Control_ID_CucuPersTxt
  loc_B50898: FStAdFunc var_88
  loc_B5089B: FLdPr var_88
  loc_B5089E: Me.Text = from_stack_1
  loc_B508A3: FFree1Ad var_88
  loc_B508A6: LitStr vbNullString
  loc_B508A9: FLdPr Me
  loc_B508AC: VCallAd Control_ID_DetaPerstxt
  loc_B508AF: FStAdFunc var_88
  loc_B508B2: FLdPr var_88
  loc_B508B5: Me.Text = from_stack_1
  loc_B508BA: FFree1Ad var_88
  loc_B508BD: LitStr vbNullString
  loc_B508C0: FLdPr Me
  loc_B508C3: VCallAd Control_ID_DomiPersTxt
  loc_B508C6: FStAdFunc var_88
  loc_B508C9: FLdPr var_88
  loc_B508CC: Me.Text = from_stack_1
  loc_B508D1: FFree1Ad var_88
  loc_B508D4: FLdPr Me
  loc_B508D7: VCallAd Control_ID_NumeCtaTxt
  loc_B508DA: CVarAd
  loc_B508DE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B508E3: FFree1Var var_B8 = ""
  loc_B508E6: LitI2_Byte &HFF
  loc_B508E8: IStI2 Cancel
  loc_B508EB: ExitProcHresult
  loc_B508EC: FLdRfVar var_90
  loc_B508EF: FLdPr Me
  loc_B508F2: VCallAd Control_ID_NumeCtaTxt
  loc_B508F5: FStAdFunc var_88
  loc_B508F8: FLdPr var_88
  loc_B508FB:  = Me.Text
  loc_B50900: ILdRf var_90
  loc_B50903: ImpAdLdUI1
  loc_B50907: ImpAdCallI2 Proc_270_105_A8FD20(, )
  loc_B5090C: FLdPr Me
  loc_B5090F: MemStI2 global_224
  loc_B50912: FFree1Str var_90
  loc_B50915: FFree1Ad var_88
  loc_B50918: FLdPr Me
  loc_B5091B: MemLdI2 global_224
  loc_B5091E: LitI2_Byte 0
  loc_B50920: GtI2
  loc_B50921: BranchF loc_B5096A
  loc_B50924: LitI2_Byte &HFF
  loc_B50926: FLdPr Me
  loc_B50929: VCallAd Control_ID_NotiDeudTxt
  loc_B5092C: FStAdFunc var_88
  loc_B5092F: FLdPr var_88
  loc_B50932: Me.Visible = from_stack_1b
  loc_B50937: FFree1Ad var_88
  loc_B5093A: LitStr "Notif.: "
  loc_B5093D: FLdPr Me
  loc_B50940: MemLdI2 global_224
  loc_B50943: CStrUI1
  loc_B50945: FStStrNoPop var_90
  loc_B50948: ConcatStr
  loc_B50949: FStStrNoPop var_94
  loc_B5094C: FLdPr Me
  loc_B5094F: VCallAd Control_ID_NotiDeudTxt
  loc_B50952: FStAdFunc var_88
  loc_B50955: FLdPr var_88
  loc_B50958: Me.Text = from_stack_1
  loc_B5095D: FFreeStr var_90 = ""
  loc_B50964: FFree1Ad var_88
  loc_B50967: Branch loc_B50997
  loc_B5096A: LitI2_Byte 0
  loc_B5096C: FLdPr Me
  loc_B5096F: VCallAd Control_ID_NotiDeudTxt
  loc_B50972: FStAdFunc var_88
  loc_B50975: FLdPr var_88
  loc_B50978: Me.Visible = from_stack_1b
  loc_B5097D: FFree1Ad var_88
  loc_B50980: LitStr vbNullString
  loc_B50983: FLdPr Me
  loc_B50986: VCallAd Control_ID_NotiDeudTxt
  loc_B50989: FStAdFunc var_88
  loc_B5098C: FLdPr var_88
  loc_B5098F: Me.Text = from_stack_1
  loc_B50994: FFree1Ad var_88
  loc_B50997: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_0 '9D3DA8
  'Data Table: 542B30
  loc_9D3D90: FLdPr Me
  loc_9D3D93: VCallAd Control_ID_ctacteFlex
  loc_9D3D96: FStAdFunc var_88
  loc_9D3D99: FLdRfVar var_88
  loc_9D3D9C: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D3DA1: FFree1Ad var_88
  loc_9D3DA4: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_1 '9D3E40
  'Data Table: 542B30
  loc_9D3E28: FLdPr Me
  loc_9D3E2B: VCallAd Control_ID_ctacteFlex
  loc_9D3E2E: FStAdFunc var_88
  loc_9D3E31: FLdRfVar var_88
  loc_9D3E34: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D3E39: FFree1Ad var_88
  loc_9D3E3C: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'D53614
  'Data Table: 542B30
  loc_D4DD58: FLdPr Me
  loc_D4DD5B: VCallAd Control_ID_CtaCteTab
  loc_D4DD5E: FStAdFunc var_90
  loc_D4DD61: FLdPr var_90
  loc_D4DD64: LateIdLdVar var_A0 DispID_4 0
  loc_D4DD6B: CI2Var
  loc_D4DD6C: LitI2_Byte 1
  loc_D4DD6E: EqI2
  loc_D4DD6F: FFree1Ad var_90
  loc_D4DD72: FFree1Var var_A0 = ""
  loc_D4DD75: BranchF loc_D4E482
  loc_D4DD78: Call Proc_266_25_B57BB4()
  loc_D4DD7D: Call Proc_266_22_ABE128()
  loc_D4DD82: LitI4 0
  loc_D4DD87: LitI4 1
  loc_D4DD8C: FLdRfVar var_A4
  loc_D4DD8F: Redim
  loc_D4DD99: FLdPr Me
  loc_D4DD9C: MemLdRfVar from_stack_1.global_96
  loc_D4DD9F: NewIfNullAd
  loc_D4DDA2: FStAd var_90 
  loc_D4DDA6: FLdRfVar var_90
  loc_D4DDA9: CVarRef
  loc_D4DDAE: ParmAry1St
  loc_D4DDB4: FLdPr Me
  loc_D4DDB7: VCallAd Control_ID_InstApreDgd
  loc_D4DDBA: CVarAd
  loc_D4DDBE: ParmAry1St
  loc_D4DDC4: FLdRfVar var_A4
  loc_D4DDC7: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4DDCC: ILdRf var_90
  loc_D4DDCF: CastAd
  loc_D4DDD2: FLdPr Me
  loc_D4DDD5: MemStAdFunc
  loc_D4DDD9: FLdRfVar var_A4
  loc_D4DDDC: Erase
  loc_D4DDDD: FFree1Ad var_90
  loc_D4DDE0: LitI4 0
  loc_D4DDE5: LitI4 1
  loc_D4DDEA: FLdRfVar var_A4
  loc_D4DDED: Redim
  loc_D4DDF7: FLdPr Me
  loc_D4DDFA: MemLdRfVar from_stack_1.global_100
  loc_D4DDFD: NewIfNullAd
  loc_D4DE00: FStAd var_90 
  loc_D4DE04: FLdRfVar var_90
  loc_D4DE07: CVarRef
  loc_D4DE0C: ParmAry1St
  loc_D4DE12: FLdPr Me
  loc_D4DE15: VCallAd Control_ID_BoleApreDgd
  loc_D4DE18: CVarAd
  loc_D4DE1C: ParmAry1St
  loc_D4DE22: FLdRfVar var_A4
  loc_D4DE25: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4DE2A: ILdRf var_90
  loc_D4DE2D: CastAd
  loc_D4DE30: FLdPr Me
  loc_D4DE33: MemStAdFunc
  loc_D4DE37: FLdRfVar var_A4
  loc_D4DE3A: Erase
  loc_D4DE3B: FFree1Ad var_90
  loc_D4DE3E: FLdPr Me
  loc_D4DE41: VCallAd Control_ID_ctacteFlex
  loc_D4DE44: FStAdFunc var_90
  loc_D4DE47: FLdPr var_90
  loc_D4DE4A: LateIdLdVar var_A0 DispID_4 0
  loc_D4DE51: CI4Var
  loc_D4DE53: LitI4 1
  loc_D4DE58: GtI4
  loc_D4DE59: FFree1Ad var_90
  loc_D4DE5C: FFree1Var var_A0 = ""
  loc_D4DE5F: BranchF loc_D4E482
  loc_D4DE62: FLdPr Me
  loc_D4DE65: VCallAd Control_ID_ctacteFlex
  loc_D4DE68: FStAdFunc var_90
  loc_D4DE6B: FLdPr var_90
  loc_D4DE6E: LateIdLdVar var_A0 DispID_10 0
  loc_D4DE75: CI4Var
  loc_D4DE77: CVarI4
  loc_D4DE7B: PopAdLdVar
  loc_D4DE7C: LitVarI4
  loc_D4DE84: PopAdLdVar
  loc_D4DE85: FLdPr Me
  loc_D4DE88: VCallAd Control_ID_ctacteFlex
  loc_D4DE8B: FStAdFunc var_E8
  loc_D4DE8E: FLdPr var_E8
  loc_D4DE91: LateIdCallLdVar
  loc_D4DE9B: CStrVarTmp
  loc_D4DE9C: CVarStr var_108
  loc_D4DE9F: ImpAdCallI2 IsNumeric()
  loc_D4DEA4: FLdPr Me
  loc_D4DEA7: VCallAd Control_ID_ctacteFlex
  loc_D4DEAA: FStAdFunc var_10C
  loc_D4DEAD: FLdPr var_10C
  loc_D4DEB0: LateIdLdVar var_11C DispID_10 0
  loc_D4DEB7: CI4Var
  loc_D4DEB9: CVarI4
  loc_D4DEBD: PopAdLdVar
  loc_D4DEBE: LitVarI4
  loc_D4DEC6: PopAdLdVar
  loc_D4DEC7: FLdPr Me
  loc_D4DECA: VCallAd Control_ID_ctacteFlex
  loc_D4DECD: FStAdFunc var_160
  loc_D4DED0: FLdPr var_160
  loc_D4DED3: LateIdCallLdVar
  loc_D4DEDD: CStrVarTmp
  loc_D4DEDE: FStStrNoPop var_174
  loc_D4DEE1: CR8Str
  loc_D4DEE3: LitI2_Byte 0
  loc_D4DEE5: CR8I2
  loc_D4DEE6: NeR8
  loc_D4DEE7: AndI4
  loc_D4DEE8: FFree1Str var_174
  loc_D4DEEB: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4DEF6: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = ""
  loc_D4DF03: BranchF loc_D4E482
  loc_D4DF06: FLdPr Me
  loc_D4DF09: VCallAd Control_ID_CtaCteTab
  loc_D4DF0C: FStAdFunc var_90
  loc_D4DF0F: FLdPr var_90
  loc_D4DF12: LateIdLdVar var_A0 DispID_4 0
  loc_D4DF19: CI2Var
  loc_D4DF1A: LitI2_Byte 1
  loc_D4DF1C: EqI2
  loc_D4DF1D: FLdPr Me
  loc_D4DF20: VCallAd Control_ID_ctacteFlex
  loc_D4DF23: FStAdFunc var_E8
  loc_D4DF26: FLdPr var_E8
  loc_D4DF29: LateIdLdVar var_F8 DispID_10 0
  loc_D4DF30: CI4Var
  loc_D4DF32: CVarI4
  loc_D4DF36: PopAdLdVar
  loc_D4DF37: LitVarI4
  loc_D4DF3F: PopAdLdVar
  loc_D4DF40: FLdPr Me
  loc_D4DF43: VCallAd Control_ID_ctacteFlex
  loc_D4DF46: FStAdFunc var_10C
  loc_D4DF49: FLdPr var_10C
  loc_D4DF4C: LateIdCallLdVar
  loc_D4DF56: CStrVarTmp
  loc_D4DF57: FStStrNoPop var_174
  loc_D4DF5A: CR8Str
  loc_D4DF5C: LitI2_Byte 0
  loc_D4DF5E: CR8I2
  loc_D4DF5F: NeR8
  loc_D4DF60: AndI4
  loc_D4DF61: FFree1Str var_174
  loc_D4DF64: FFreeAd var_90 = "": var_E8 = ""
  loc_D4DF6D: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4DF76: BranchF loc_D4E41F
  loc_D4DF79: LitStr "SELECT tipofapa.DetaTifa, facipago.FealFapa, facipago.EstaFapa, facipago.CapiFapa, facipago.RecaFapa, facipago.DecaFapa, facipago.DereFapa, facipago.ApreFapa, facipago.InteFapa, facipago.TotaFapa  FROM facipago "
  loc_D4DF7C: LitStr " LEFT JOIN tipofapa ON facipago.Coditifa = tipofapa.CodiTifa"
  loc_D4DF7F: ConcatStr
  loc_D4DF80: FStStrNoPop var_174
  loc_D4DF83: LitStr " WHERE CodiFapa = "
  loc_D4DF86: ConcatStr
  loc_D4DF87: FStStrNoPop var_178
  loc_D4DF8A: FLdPr Me
  loc_D4DF8D: VCallAd Control_ID_ctacteFlex
  loc_D4DF90: FStAdFunc var_90
  loc_D4DF93: FLdPr var_90
  loc_D4DF96: LateIdLdVar var_A0 DispID_10 0
  loc_D4DF9D: CI4Var
  loc_D4DF9F: CVarI4
  loc_D4DFA3: PopAdLdVar
  loc_D4DFA4: LitVarI4
  loc_D4DFAC: PopAdLdVar
  loc_D4DFAD: FLdPr Me
  loc_D4DFB0: VCallAd Control_ID_ctacteFlex
  loc_D4DFB3: FStAdFunc var_E8
  loc_D4DFB6: FLdPr var_E8
  loc_D4DFB9: LateIdCallLdVar
  loc_D4DFC3: CStrVarTmp
  loc_D4DFC4: FStStrNoPop var_17C
  loc_D4DFC7: ConcatStr
  loc_D4DFC8: FStStrNoPop var_180
  loc_D4DFCB: LitStr " ORDER BY facipago.CodiFapa"
  loc_D4DFCE: ConcatStr
  loc_D4DFCF: FStStrNoPop var_184
  loc_D4DFD2: FLdPr Me
  loc_D4DFD5: MemLdRfVar from_stack_1.global_72
  loc_D4DFD8: NewIfNullPr clsfacipago
  loc_D4DFDB: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_D4DFE0: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_D4DFED: FFreeAd var_90 = ""
  loc_D4DFF4: FFreeVar var_A0 = ""
  loc_D4DFFB: FLdRfVar var_188
  loc_D4DFFE: FLdPr Me
  loc_D4E001: MemLdRfVar from_stack_1.global_72
  loc_D4E004: NewIfNullPr clsfacipago
  loc_D4E007: from_stack_1 = clsfacipago.RecordCount
  loc_D4E00C: ILdRf var_188
  loc_D4E00F: LitI4 0
  loc_D4E014: GtI4
  loc_D4E015: BranchF loc_D4E324
  loc_D4E018: FLdRfVar var_174
  loc_D4E01B: FLdPr Me
  loc_D4E01E: MemLdRfVar from_stack_1.global_72
  loc_D4E021: NewIfNullPr clsfacipago
  loc_D4E024: from_stack_1 = clsfacipago.DetaTifa
  loc_D4E029: ILdRf var_174
  loc_D4E02C: FLdPr Me
  loc_D4E02F: VCallAd Control_ID_DetaTifalbl
  loc_D4E032: FStAdFunc var_90
  loc_D4E035: FLdPr var_90
  loc_D4E038: Me.Caption = from_stack_1
  loc_D4E03D: FFree1Str var_174
  loc_D4E040: FFree1Ad var_90
  loc_D4E043: FLdRfVar var_A0
  loc_D4E046: FLdPr Me
  loc_D4E049: MemLdRfVar from_stack_1.global_72
  loc_D4E04C: NewIfNullPr clsfacipago
  loc_D4E04F: from_stack_1 = clsfacipago.FealFapa
  loc_D4E054: FLdRfVar var_A0
  loc_D4E057: CStrVarVal var_174
  loc_D4E05B: FLdPr Me
  loc_D4E05E: VCallAd Control_ID_FealFepatlbl
  loc_D4E061: FStAdFunc var_90
  loc_D4E064: FLdPr var_90
  loc_D4E067: Me.Caption = from_stack_1
  loc_D4E06C: FFree1Str var_174
  loc_D4E06F: FFree1Ad var_90
  loc_D4E072: FFree1Var var_A0 = ""
  loc_D4E075: FLdRfVar var_174
  loc_D4E078: FLdPr Me
  loc_D4E07B: MemLdRfVar from_stack_1.global_72
  loc_D4E07E: NewIfNullPr clsfacipago
  loc_D4E081: from_stack_1 = clsfacipago.EstaFapa
  loc_D4E086: ILdRf var_174
  loc_D4E089: FLdPr Me
  loc_D4E08C: VCallAd Control_ID_EstaFapaLbl
  loc_D4E08F: FStAdFunc var_90
  loc_D4E092: FLdPr var_90
  loc_D4E095: Me.Caption = from_stack_1
  loc_D4E09A: FFree1Str var_174
  loc_D4E09D: FFree1Ad var_90
  loc_D4E0A0: FLdRfVar var_190
  loc_D4E0A3: FLdPr Me
  loc_D4E0A6: MemLdRfVar from_stack_1.global_72
  loc_D4E0A9: NewIfNullPr clsfacipago
  loc_D4E0AC: from_stack_1 = clsfacipago.CapiFapa
  loc_D4E0B1: LitI4 1
  loc_D4E0B6: LitI4 1
  loc_D4E0BB: LitVarStr var_C4, "0.00"
  loc_D4E0C0: FStVarCopyObj var_F8
  loc_D4E0C3: FLdRfVar var_F8
  loc_D4E0C6: FLdFPR8 var_190
  loc_D4E0C9: CVarR8
  loc_D4E0CD: FLdRfVar var_108
  loc_D4E0D0: ImpAdCallFPR4  = Format(, )
  loc_D4E0D5: FLdRfVar var_108
  loc_D4E0D8: CStrVarVal var_174
  loc_D4E0DC: FLdPr Me
  loc_D4E0DF: VCallAd Control_ID_CapiFepaLbl
  loc_D4E0E2: FStAdFunc var_90
  loc_D4E0E5: FLdPr var_90
  loc_D4E0E8: Me.Caption = from_stack_1
  loc_D4E0ED: FFree1Str var_174
  loc_D4E0F0: FFree1Ad var_90
  loc_D4E0F3: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E0FC: FLdRfVar var_190
  loc_D4E0FF: FLdPr Me
  loc_D4E102: MemLdRfVar from_stack_1.global_72
  loc_D4E105: NewIfNullPr clsfacipago
  loc_D4E108: from_stack_1 = clsfacipago.RecaFapa
  loc_D4E10D: LitI4 1
  loc_D4E112: LitI4 1
  loc_D4E117: LitVarStr var_C4, "0.00"
  loc_D4E11C: FStVarCopyObj var_F8
  loc_D4E11F: FLdRfVar var_F8
  loc_D4E122: FLdFPR8 var_190
  loc_D4E125: CVarR8
  loc_D4E129: FLdRfVar var_108
  loc_D4E12C: ImpAdCallFPR4  = Format(, )
  loc_D4E131: FLdRfVar var_108
  loc_D4E134: CStrVarVal var_174
  loc_D4E138: FLdPr Me
  loc_D4E13B: VCallAd Control_ID_RecaFepaLbl
  loc_D4E13E: FStAdFunc var_90
  loc_D4E141: FLdPr var_90
  loc_D4E144: Me.Caption = from_stack_1
  loc_D4E149: FFree1Str var_174
  loc_D4E14C: FFree1Ad var_90
  loc_D4E14F: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E158: FLdRfVar var_190
  loc_D4E15B: FLdPr Me
  loc_D4E15E: MemLdRfVar from_stack_1.global_72
  loc_D4E161: NewIfNullPr clsfacipago
  loc_D4E164: from_stack_1 = clsfacipago.DecaFapa
  loc_D4E169: LitI4 1
  loc_D4E16E: LitI4 1
  loc_D4E173: LitVarStr var_C4, "0.00"
  loc_D4E178: FStVarCopyObj var_F8
  loc_D4E17B: FLdRfVar var_F8
  loc_D4E17E: FLdFPR8 var_190
  loc_D4E181: CVarR8
  loc_D4E185: FLdRfVar var_108
  loc_D4E188: ImpAdCallFPR4  = Format(, )
  loc_D4E18D: FLdRfVar var_108
  loc_D4E190: CStrVarVal var_174
  loc_D4E194: FLdPr Me
  loc_D4E197: VCallAd Control_ID_DecaFepaLbl
  loc_D4E19A: FStAdFunc var_90
  loc_D4E19D: FLdPr var_90
  loc_D4E1A0: Me.Caption = from_stack_1
  loc_D4E1A5: FFree1Str var_174
  loc_D4E1A8: FFree1Ad var_90
  loc_D4E1AB: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E1B4: FLdRfVar var_190
  loc_D4E1B7: FLdPr Me
  loc_D4E1BA: MemLdRfVar from_stack_1.global_72
  loc_D4E1BD: NewIfNullPr clsfacipago
  loc_D4E1C0: from_stack_1 = clsfacipago.DereFapa
  loc_D4E1C5: LitI4 1
  loc_D4E1CA: LitI4 1
  loc_D4E1CF: LitVarStr var_C4, "0.00"
  loc_D4E1D4: FStVarCopyObj var_F8
  loc_D4E1D7: FLdRfVar var_F8
  loc_D4E1DA: FLdFPR8 var_190
  loc_D4E1DD: CVarR8
  loc_D4E1E1: FLdRfVar var_108
  loc_D4E1E4: ImpAdCallFPR4  = Format(, )
  loc_D4E1E9: FLdRfVar var_108
  loc_D4E1EC: CStrVarVal var_174
  loc_D4E1F0: FLdPr Me
  loc_D4E1F3: VCallAd Control_ID_DereFepaLbl
  loc_D4E1F6: FStAdFunc var_90
  loc_D4E1F9: FLdPr var_90
  loc_D4E1FC: Me.Caption = from_stack_1
  loc_D4E201: FFree1Str var_174
  loc_D4E204: FFree1Ad var_90
  loc_D4E207: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E210: FLdRfVar var_190
  loc_D4E213: FLdPr Me
  loc_D4E216: MemLdRfVar from_stack_1.global_72
  loc_D4E219: NewIfNullPr clsfacipago
  loc_D4E21C: from_stack_1 = clsfacipago.ApreFapa
  loc_D4E221: LitI4 1
  loc_D4E226: LitI4 1
  loc_D4E22B: LitVarStr var_C4, "0.00"
  loc_D4E230: FStVarCopyObj var_F8
  loc_D4E233: FLdRfVar var_F8
  loc_D4E236: FLdFPR8 var_190
  loc_D4E239: CVarR8
  loc_D4E23D: FLdRfVar var_108
  loc_D4E240: ImpAdCallFPR4  = Format(, )
  loc_D4E245: FLdRfVar var_108
  loc_D4E248: CStrVarVal var_174
  loc_D4E24C: FLdPr Me
  loc_D4E24F: VCallAd Control_ID_ApreFapaLbl
  loc_D4E252: FStAdFunc var_90
  loc_D4E255: FLdPr var_90
  loc_D4E258: Me.Caption = from_stack_1
  loc_D4E25D: FFree1Str var_174
  loc_D4E260: FFree1Ad var_90
  loc_D4E263: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E26C: FLdRfVar var_190
  loc_D4E26F: FLdPr Me
  loc_D4E272: MemLdRfVar from_stack_1.global_72
  loc_D4E275: NewIfNullPr clsfacipago
  loc_D4E278: from_stack_1 = clsfacipago.InteFapa
  loc_D4E27D: LitI4 1
  loc_D4E282: LitI4 1
  loc_D4E287: LitVarStr var_C4, "0.00"
  loc_D4E28C: FStVarCopyObj var_F8
  loc_D4E28F: FLdRfVar var_F8
  loc_D4E292: FLdFPR8 var_190
  loc_D4E295: CVarR8
  loc_D4E299: FLdRfVar var_108
  loc_D4E29C: ImpAdCallFPR4  = Format(, )
  loc_D4E2A1: FLdRfVar var_108
  loc_D4E2A4: CStrVarVal var_174
  loc_D4E2A8: FLdPr Me
  loc_D4E2AB: VCallAd Control_ID_InteFapaLbl
  loc_D4E2AE: FStAdFunc var_90
  loc_D4E2B1: FLdPr var_90
  loc_D4E2B4: Me.Caption = from_stack_1
  loc_D4E2B9: FFree1Str var_174
  loc_D4E2BC: FFree1Ad var_90
  loc_D4E2BF: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E2C8: FLdRfVar var_190
  loc_D4E2CB: FLdPr Me
  loc_D4E2CE: MemLdRfVar from_stack_1.global_72
  loc_D4E2D1: NewIfNullPr clsfacipago
  loc_D4E2D4: from_stack_1 = clsfacipago.TotaFapa
  loc_D4E2D9: LitI4 1
  loc_D4E2DE: LitI4 1
  loc_D4E2E3: LitVarStr var_C4, "0.00"
  loc_D4E2E8: FStVarCopyObj var_F8
  loc_D4E2EB: FLdRfVar var_F8
  loc_D4E2EE: FLdFPR8 var_190
  loc_D4E2F1: CVarR8
  loc_D4E2F5: FLdRfVar var_108
  loc_D4E2F8: ImpAdCallFPR4  = Format(, )
  loc_D4E2FD: FLdRfVar var_108
  loc_D4E300: CStrVarVal var_174
  loc_D4E304: FLdPr Me
  loc_D4E307: VCallAd Control_ID_TotaFapaLbl
  loc_D4E30A: FStAdFunc var_90
  loc_D4E30D: FLdPr var_90
  loc_D4E310: Me.Caption = from_stack_1
  loc_D4E315: FFree1Str var_174
  loc_D4E318: FFree1Ad var_90
  loc_D4E31B: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E324: FLdPr Me
  loc_D4E327: VCallAd Control_ID_ctacteFlex
  loc_D4E32A: FStAdFunc var_90
  loc_D4E32D: FLdPr var_90
  loc_D4E330: LateIdLdVar var_A0 DispID_10 0
  loc_D4E337: CI4Var
  loc_D4E339: CVarI4
  loc_D4E33D: PopAdLdVar
  loc_D4E33E: LitVarI4
  loc_D4E346: PopAdLdVar
  loc_D4E347: FLdPr Me
  loc_D4E34A: VCallAd Control_ID_ctacteFlex
  loc_D4E34D: FStAdFunc var_E8
  loc_D4E350: FLdPr var_E8
  loc_D4E353: LateIdCallLdVar
  loc_D4E35D: PopAd
  loc_D4E35F: FLdPr Me
  loc_D4E362: VCallAd Control_ID_FechVencMsk
  loc_D4E365: FStAdFunc var_10C
  loc_D4E368: FLdPr var_10C
  loc_D4E36B: LateIdLdVar var_108 DispID_15 0
  loc_D4E372: PopAd
  loc_D4E374: LitStr "tmp_detafapaCtaCte"
  loc_D4E377: FLdRfVar var_108
  loc_D4E37A: CStrVarTmp
  loc_D4E37B: FStStrNoPop var_178
  loc_D4E37E: FLdRfVar var_F8
  loc_D4E381: CStrVarTmp
  loc_D4E382: FStStrNoPop var_174
  loc_D4E385: CI4Str
  loc_D4E386: FLdPr Me
  loc_D4E389: MemLdRfVar from_stack_1.global_76
  loc_D4E38C: NewIfNullPr clsdetafapa
  loc_D4E38F: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D4E394: FFreeStr var_174 = ""
  loc_D4E39B: FFreeAd var_90 = "": var_E8 = ""
  loc_D4E3A4: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E3AD: LitStr "SELECT * FROM tmp_detafapaCtaCte ORDER BY CodiFapa, CuotDefa"
  loc_D4E3B0: FLdPr Me
  loc_D4E3B3: MemLdRfVar from_stack_1.global_76
  loc_D4E3B6: NewIfNullPr clsdetafapa
  loc_D4E3B9: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_D4E3BE: LitI4 0
  loc_D4E3C3: LitI4 1
  loc_D4E3C8: FLdRfVar var_A4
  loc_D4E3CB: Redim
  loc_D4E3D5: FLdPr Me
  loc_D4E3D8: MemLdRfVar from_stack_1.global_76
  loc_D4E3DB: NewIfNullAd
  loc_D4E3DE: FStAd var_90 
  loc_D4E3E2: FLdRfVar var_90
  loc_D4E3E5: CVarRef
  loc_D4E3EA: ParmAry1St
  loc_D4E3F0: FLdPr Me
  loc_D4E3F3: VCallAd Control_ID_dgdDetaFapa
  loc_D4E3F6: CVarAd
  loc_D4E3FA: ParmAry1St
  loc_D4E400: FLdRfVar var_A4
  loc_D4E403: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4E408: ILdRf var_90
  loc_D4E40B: CastAd
  loc_D4E40E: FLdPr Me
  loc_D4E411: MemStAdFunc
  loc_D4E415: FLdRfVar var_A4
  loc_D4E418: Erase
  loc_D4E419: FFree1Ad var_90
  loc_D4E41C: Branch loc_D4E482
  loc_D4E41F: Call Proc_266_23_ACB704()
  loc_D4E424: LitI4 0
  loc_D4E429: LitI4 1
  loc_D4E42E: FLdRfVar var_A4
  loc_D4E431: Redim
  loc_D4E43B: FLdPr Me
  loc_D4E43E: MemLdRfVar from_stack_1.global_76
  loc_D4E441: NewIfNullAd
  loc_D4E444: FStAd var_90 
  loc_D4E448: FLdRfVar var_90
  loc_D4E44B: CVarRef
  loc_D4E450: ParmAry1St
  loc_D4E456: FLdPr Me
  loc_D4E459: VCallAd Control_ID_dgdDetaFapa
  loc_D4E45C: CVarAd
  loc_D4E460: ParmAry1St
  loc_D4E466: FLdRfVar var_A4
  loc_D4E469: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4E46E: ILdRf var_90
  loc_D4E471: CastAd
  loc_D4E474: FLdPr Me
  loc_D4E477: MemStAdFunc
  loc_D4E47B: FLdRfVar var_A4
  loc_D4E47E: Erase
  loc_D4E47F: FFree1Ad var_90
  loc_D4E482: FLdPr Me
  loc_D4E485: VCallAd Control_ID_CtaCteTab
  loc_D4E488: FStAdFunc var_90
  loc_D4E48B: FLdPr var_90
  loc_D4E48E: LateIdLdVar var_A0 DispID_4 0
  loc_D4E495: CI2Var
  loc_D4E496: LitI2_Byte 2
  loc_D4E498: EqI2
  loc_D4E499: FFree1Ad var_90
  loc_D4E49C: FFree1Var var_A0 = ""
  loc_D4E49F: BranchF loc_D4EB35
  loc_D4E4A2: Call Proc_266_25_B57BB4()
  loc_D4E4A7: Call Proc_266_23_ACB704()
  loc_D4E4AC: LitI4 0
  loc_D4E4B1: LitI4 1
  loc_D4E4B6: FLdRfVar var_A4
  loc_D4E4B9: Redim
  loc_D4E4C3: FLdPr Me
  loc_D4E4C6: MemLdRfVar from_stack_1.global_76
  loc_D4E4C9: NewIfNullAd
  loc_D4E4CC: FStAd var_90 
  loc_D4E4D0: FLdRfVar var_90
  loc_D4E4D3: CVarRef
  loc_D4E4D8: ParmAry1St
  loc_D4E4DE: FLdPr Me
  loc_D4E4E1: VCallAd Control_ID_dgdDetaFapa
  loc_D4E4E4: CVarAd
  loc_D4E4E8: ParmAry1St
  loc_D4E4EE: FLdRfVar var_A4
  loc_D4E4F1: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4E4F6: ILdRf var_90
  loc_D4E4F9: CastAd
  loc_D4E4FC: FLdPr Me
  loc_D4E4FF: MemStAdFunc
  loc_D4E503: FLdRfVar var_A4
  loc_D4E506: Erase
  loc_D4E507: FFree1Ad var_90
  loc_D4E50A: FLdPr Me
  loc_D4E50D: VCallAd Control_ID_ctacteFlex
  loc_D4E510: FStAdFunc var_90
  loc_D4E513: FLdPr var_90
  loc_D4E516: LateIdLdVar var_A0 DispID_4 0
  loc_D4E51D: CI4Var
  loc_D4E51F: LitI4 1
  loc_D4E524: GtI4
  loc_D4E525: FFree1Ad var_90
  loc_D4E528: FFree1Var var_A0 = ""
  loc_D4E52B: BranchF loc_D4EB35
  loc_D4E52E: FLdPr Me
  loc_D4E531: VCallAd Control_ID_ctacteFlex
  loc_D4E534: FStAdFunc var_90
  loc_D4E537: FLdPr var_90
  loc_D4E53A: LateIdLdVar var_A0 DispID_10 0
  loc_D4E541: CI4Var
  loc_D4E543: CVarI4
  loc_D4E547: PopAdLdVar
  loc_D4E548: LitVarI4
  loc_D4E550: PopAdLdVar
  loc_D4E551: FLdPr Me
  loc_D4E554: VCallAd Control_ID_ctacteFlex
  loc_D4E557: FStAdFunc var_E8
  loc_D4E55A: FLdPr var_E8
  loc_D4E55D: LateIdCallLdVar
  loc_D4E567: CStrVarTmp
  loc_D4E568: CVarStr var_108
  loc_D4E56B: ImpAdCallI2 IsNumeric()
  loc_D4E570: FLdPr Me
  loc_D4E573: VCallAd Control_ID_ctacteFlex
  loc_D4E576: FStAdFunc var_10C
  loc_D4E579: FLdPr var_10C
  loc_D4E57C: LateIdLdVar var_11C DispID_10 0
  loc_D4E583: CI4Var
  loc_D4E585: CVarI4
  loc_D4E589: PopAdLdVar
  loc_D4E58A: LitVarI4
  loc_D4E592: PopAdLdVar
  loc_D4E593: FLdPr Me
  loc_D4E596: VCallAd Control_ID_ctacteFlex
  loc_D4E599: FStAdFunc var_160
  loc_D4E59C: FLdPr var_160
  loc_D4E59F: LateIdCallLdVar
  loc_D4E5A9: CStrVarTmp
  loc_D4E5AA: FStStrNoPop var_174
  loc_D4E5AD: CR8Str
  loc_D4E5AF: LitI2_Byte 0
  loc_D4E5B1: CR8I2
  loc_D4E5B2: NeR8
  loc_D4E5B3: AndI4
  loc_D4E5B4: FFree1Str var_174
  loc_D4E5B7: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4E5C2: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = ""
  loc_D4E5CF: BranchF loc_D4EB35
  loc_D4E5D2: FLdPr Me
  loc_D4E5D5: VCallAd Control_ID_CtaCteTab
  loc_D4E5D8: FStAdFunc var_90
  loc_D4E5DB: FLdPr var_90
  loc_D4E5DE: LateIdLdVar var_A0 DispID_4 0
  loc_D4E5E5: CI2Var
  loc_D4E5E6: LitI2_Byte 2
  loc_D4E5E8: EqI2
  loc_D4E5E9: FLdPr Me
  loc_D4E5EC: VCallAd Control_ID_ctacteFlex
  loc_D4E5EF: FStAdFunc var_E8
  loc_D4E5F2: FLdPr var_E8
  loc_D4E5F5: LateIdLdVar var_F8 DispID_10 0
  loc_D4E5FC: CI4Var
  loc_D4E5FE: CVarI4
  loc_D4E602: PopAdLdVar
  loc_D4E603: LitVarI4
  loc_D4E60B: PopAdLdVar
  loc_D4E60C: FLdPr Me
  loc_D4E60F: VCallAd Control_ID_ctacteFlex
  loc_D4E612: FStAdFunc var_10C
  loc_D4E615: FLdPr var_10C
  loc_D4E618: LateIdCallLdVar
  loc_D4E622: CStrVarTmp
  loc_D4E623: FStStrNoPop var_174
  loc_D4E626: CR8Str
  loc_D4E628: LitI2_Byte 0
  loc_D4E62A: CR8I2
  loc_D4E62B: NeR8
  loc_D4E62C: AndI4
  loc_D4E62D: FFree1Str var_174
  loc_D4E630: FFreeAd var_90 = "": var_E8 = ""
  loc_D4E639: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E642: BranchF loc_D4EA74
  loc_D4E645: LitStr "SELECT NumeApre, AutoApre, apremio.CodiReca, IFNULL(recaudador.DetaReca,'FALTA EL RECAUDADOR') as DetaReca, apremio.CodiOfju, IFNULL(oficjust.DetaOfju,'FALTA EL OFICIAL DE JUSTICIA') as DetaOfju, CodiOfic, CuenCtct, FealApre, EstaApre, CodiInju, CapiApre, RecaApre FROM apremio "
  loc_D4E648: LitStr " LEFT JOIN recaudador ON apremio.CodiReca = recaudador.CodiReca"
  loc_D4E64B: ConcatStr
  loc_D4E64C: FStStrNoPop var_174
  loc_D4E64F: LitStr " LEFT JOIN oficjust ON apremio.CodiOfju = oficjust.CodiOfju"
  loc_D4E652: ConcatStr
  loc_D4E653: FStStrNoPop var_178
  loc_D4E656: LitStr " WHERE NumeApre = "
  loc_D4E659: ConcatStr
  loc_D4E65A: FStStrNoPop var_17C
  loc_D4E65D: FLdPr Me
  loc_D4E660: VCallAd Control_ID_ctacteFlex
  loc_D4E663: FStAdFunc var_90
  loc_D4E666: FLdPr var_90
  loc_D4E669: LateIdLdVar var_A0 DispID_10 0
  loc_D4E670: CI4Var
  loc_D4E672: CVarI4
  loc_D4E676: PopAdLdVar
  loc_D4E677: LitVarI4
  loc_D4E67F: PopAdLdVar
  loc_D4E680: FLdPr Me
  loc_D4E683: VCallAd Control_ID_ctacteFlex
  loc_D4E686: FStAdFunc var_E8
  loc_D4E689: FLdPr var_E8
  loc_D4E68C: LateIdCallLdVar
  loc_D4E696: CStrVarTmp
  loc_D4E697: FStStrNoPop var_180
  loc_D4E69A: ConcatStr
  loc_D4E69B: FStStrNoPop var_184
  loc_D4E69E: LitStr " ORDER BY NumeApre"
  loc_D4E6A1: ConcatStr
  loc_D4E6A2: FStStrNoPop var_194
  loc_D4E6A5: FLdPr Me
  loc_D4E6A8: MemLdRfVar from_stack_1.global_92
  loc_D4E6AB: NewIfNullPr clsapremio
  loc_D4E6AE: Call clsapremio.RedefineRS(from_stack_1v)
  loc_D4E6B3: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_D4E6C2: FFreeAd var_90 = ""
  loc_D4E6C9: FFreeVar var_A0 = ""
  loc_D4E6D0: FLdRfVar var_188
  loc_D4E6D3: FLdPr Me
  loc_D4E6D6: MemLdRfVar from_stack_1.global_92
  loc_D4E6D9: NewIfNullPr clsapremio
  loc_D4E6DC: from_stack_1 = clsapremio.RecordCount
  loc_D4E6E1: ILdRf var_188
  loc_D4E6E4: LitI4 1
  loc_D4E6E9: EqI4
  loc_D4E6EA: BranchF loc_D4E9B0
  loc_D4E6ED: FLdRfVar var_188
  loc_D4E6F0: FLdPr Me
  loc_D4E6F3: MemLdRfVar from_stack_1.global_92
  loc_D4E6F6: NewIfNullPr clsapremio
  loc_D4E6F9: from_stack_1 = clsapremio.AutoApre
  loc_D4E6FE: ILdRf var_188
  loc_D4E701: CStrI4
  loc_D4E703: FStStrNoPop var_174
  loc_D4E706: FLdPr Me
  loc_D4E709: VCallAd Control_ID_AutoApreTxt
  loc_D4E70C: FStAdFunc var_90
  loc_D4E70F: FLdPr var_90
  loc_D4E712: Me.Text = from_stack_1
  loc_D4E717: FFree1Str var_174
  loc_D4E71A: FFree1Ad var_90
  loc_D4E71D: FLdRfVar var_A0
  loc_D4E720: FLdPr Me
  loc_D4E723: MemLdRfVar from_stack_1.global_92
  loc_D4E726: NewIfNullPr clsapremio
  loc_D4E729: from_stack_1 = clsapremio.FealApre
  loc_D4E72E: FLdRfVar var_A0
  loc_D4E731: CStrVarVal var_174
  loc_D4E735: FLdPr Me
  loc_D4E738: VCallAd Control_ID_FealApreTxt
  loc_D4E73B: FStAdFunc var_90
  loc_D4E73E: FLdPr var_90
  loc_D4E741: Me.Text = from_stack_1
  loc_D4E746: FFree1Str var_174
  loc_D4E749: FFree1Ad var_90
  loc_D4E74C: FFree1Var var_A0 = ""
  loc_D4E74F: FLdRfVar var_174
  loc_D4E752: FLdPr Me
  loc_D4E755: MemLdRfVar from_stack_1.global_92
  loc_D4E758: NewIfNullPr clsapremio
  loc_D4E75B: from_stack_1 = clsapremio.EstaApre
  loc_D4E760: ILdRf var_174
  loc_D4E763: FLdPr Me
  loc_D4E766: VCallAd Control_ID_EstaApreTxt
  loc_D4E769: FStAdFunc var_90
  loc_D4E76C: FLdPr var_90
  loc_D4E76F: Me.Text = from_stack_1
  loc_D4E774: FFree1Str var_174
  loc_D4E777: FFree1Ad var_90
  loc_D4E77A: FLdRfVar var_174
  loc_D4E77D: FLdPr Me
  loc_D4E780: MemLdRfVar from_stack_1.global_92
  loc_D4E783: NewIfNullPr clsapremio
  loc_D4E786: from_stack_1 = clsapremio.DetaReca
  loc_D4E78B: ILdRf var_174
  loc_D4E78E: FLdPr Me
  loc_D4E791: VCallAd Control_ID_DetaRecaTxt
  loc_D4E794: FStAdFunc var_90
  loc_D4E797: FLdPr var_90
  loc_D4E79A: Me.Text = from_stack_1
  loc_D4E79F: FFree1Str var_174
  loc_D4E7A2: FFree1Ad var_90
  loc_D4E7A5: FLdRfVar var_A0
  loc_D4E7A8: FLdPr Me
  loc_D4E7AB: MemLdRfVar from_stack_1.global_92
  loc_D4E7AE: NewIfNullPr clsapremio
  loc_D4E7B1: from_stack_1 = clsapremio.DetaOfju
  loc_D4E7B6: FLdRfVar var_A0
  loc_D4E7B9: CStrVarVal var_174
  loc_D4E7BD: FLdPr Me
  loc_D4E7C0: VCallAd Control_ID_DetaOfjuTxt
  loc_D4E7C3: FStAdFunc var_90
  loc_D4E7C6: FLdPr var_90
  loc_D4E7C9: Me.Text = from_stack_1
  loc_D4E7CE: FFree1Str var_174
  loc_D4E7D1: FFree1Ad var_90
  loc_D4E7D4: FFree1Var var_A0 = ""
  loc_D4E7D7: FLdRfVar var_190
  loc_D4E7DA: FLdPr Me
  loc_D4E7DD: MemLdRfVar from_stack_1.global_92
  loc_D4E7E0: NewIfNullPr clsapremio
  loc_D4E7E3: from_stack_1 = clsapremio.CapiApre
  loc_D4E7E8: LitI4 1
  loc_D4E7ED: LitI4 1
  loc_D4E7F2: LitVarStr var_C4, "0.00"
  loc_D4E7F7: FStVarCopyObj var_F8
  loc_D4E7FA: FLdRfVar var_F8
  loc_D4E7FD: FLdFPR8 var_190
  loc_D4E800: CVarR8
  loc_D4E804: FLdRfVar var_108
  loc_D4E807: ImpAdCallFPR4  = Format(, )
  loc_D4E80C: FLdRfVar var_108
  loc_D4E80F: CStrVarVal var_174
  loc_D4E813: FLdPr Me
  loc_D4E816: VCallAd Control_ID_CapiApreTxt
  loc_D4E819: FStAdFunc var_90
  loc_D4E81C: FLdPr var_90
  loc_D4E81F: Me.Text = from_stack_1
  loc_D4E824: FFree1Str var_174
  loc_D4E827: FFree1Ad var_90
  loc_D4E82A: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E833: FLdRfVar var_190
  loc_D4E836: FLdPr Me
  loc_D4E839: MemLdRfVar from_stack_1.global_92
  loc_D4E83C: NewIfNullPr clsapremio
  loc_D4E83F: from_stack_1 = clsapremio.RecaApre
  loc_D4E844: LitI4 1
  loc_D4E849: LitI4 1
  loc_D4E84E: LitVarStr var_C4, "0.00"
  loc_D4E853: FStVarCopyObj var_F8
  loc_D4E856: FLdRfVar var_F8
  loc_D4E859: FLdFPR8 var_190
  loc_D4E85C: CVarR8
  loc_D4E860: FLdRfVar var_108
  loc_D4E863: ImpAdCallFPR4  = Format(, )
  loc_D4E868: FLdRfVar var_108
  loc_D4E86B: CStrVarVal var_174
  loc_D4E86F: FLdPr Me
  loc_D4E872: VCallAd Control_ID_RecaApreTxt
  loc_D4E875: FStAdFunc var_90
  loc_D4E878: FLdPr var_90
  loc_D4E87B: Me.Text = from_stack_1
  loc_D4E880: FFree1Str var_174
  loc_D4E883: FFree1Ad var_90
  loc_D4E886: FFreeVar var_A0 = "": var_F8 = ""
  loc_D4E88F: FLdRfVar var_190
  loc_D4E892: FLdPr Me
  loc_D4E895: MemLdRfVar from_stack_1.global_92
  loc_D4E898: NewIfNullPr clsapremio
  loc_D4E89B: from_stack_1 = clsapremio.CapiApre
  loc_D4E8A0: FLdRfVar var_19C
  loc_D4E8A3: FLdPr Me
  loc_D4E8A6: MemLdRfVar from_stack_1.global_92
  loc_D4E8A9: NewIfNullPr clsapremio
  loc_D4E8AC: from_stack_1 = clsapremio.RecaApre
  loc_D4E8B1: LitI4 2
  loc_D4E8B6: FLdFPR8 var_190
  loc_D4E8B9: FnCDblR8
  loc_D4E8BB: FLdFPR8 var_19C
  loc_D4E8BE: FnCDblR8
  loc_D4E8C0: AddR8
  loc_D4E8C1: CVarR8
  loc_D4E8C5: FLdRfVar var_F8
  loc_D4E8C8: ImpAdCallFPR4  = Round(, )
  loc_D4E8CD: LitI4 1
  loc_D4E8D2: LitI4 1
  loc_D4E8D7: LitVarStr var_C4, "0.00"
  loc_D4E8DC: FStVarCopyObj var_108
  loc_D4E8DF: FLdRfVar var_108
  loc_D4E8E2: FLdRfVar var_F8
  loc_D4E8E5: FLdRfVar var_11C
  loc_D4E8E8: ImpAdCallFPR4  = Format(, )
  loc_D4E8ED: FLdRfVar var_11C
  loc_D4E8F0: CStrVarVal var_174
  loc_D4E8F4: FLdPr Me
  loc_D4E8F7: VCallAd Control_ID_TotaApreTxt
  loc_D4E8FA: FStAdFunc var_90
  loc_D4E8FD: FLdPr var_90
  loc_D4E900: Me.Text = from_stack_1
  loc_D4E905: FFree1Str var_174
  loc_D4E908: FFree1Ad var_90
  loc_D4E90B: FFreeVar var_A0 = "": var_F8 = "": var_108 = ""
  loc_D4E916: LitStr "SELECT instapre.CodiInju, instjudi.DetaInju, instapre.FechInap FROM instapre "
  loc_D4E919: LitStr " LEFT JOIN instjudi ON instapre.CodiInju = instjudi.CodiInju"
  loc_D4E91C: ConcatStr
  loc_D4E91D: FStStrNoPop var_174
  loc_D4E920: LitStr " WHERE NumeApre = "
  loc_D4E923: ConcatStr
  loc_D4E924: FStStrNoPop var_178
  loc_D4E927: FLdRfVar var_188
  loc_D4E92A: FLdPr Me
  loc_D4E92D: MemLdRfVar from_stack_1.global_92
  loc_D4E930: NewIfNullPr clsapremio
  loc_D4E933: from_stack_1 = clsapremio.NumeApre
  loc_D4E938: ILdRf var_188
  loc_D4E93B: CStrI4
  loc_D4E93D: FStStrNoPop var_17C
  loc_D4E940: ConcatStr
  loc_D4E941: FStStrNoPop var_180
  loc_D4E944: LitStr " ORDER BY instapre.NumeApre, instapre.CodiInju"
  loc_D4E947: ConcatStr
  loc_D4E948: FStStrNoPop var_184
  loc_D4E94B: FLdPr Me
  loc_D4E94E: MemLdRfVar from_stack_1.global_96
  loc_D4E951: NewIfNullPr clsinstapre
  loc_D4E954: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_D4E959: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_D4E966: LitStr "SELECT * FROM boleapre "
  loc_D4E969: LitStr " WHERE NumeApre = "
  loc_D4E96C: ConcatStr
  loc_D4E96D: FStStrNoPop var_174
  loc_D4E970: FLdRfVar var_188
  loc_D4E973: FLdPr Me
  loc_D4E976: MemLdRfVar from_stack_1.global_92
  loc_D4E979: NewIfNullPr clsapremio
  loc_D4E97C: from_stack_1 = clsapremio.NumeApre
  loc_D4E981: ILdRf var_188
  loc_D4E984: CStrI4
  loc_D4E986: FStStrNoPop var_178
  loc_D4E989: ConcatStr
  loc_D4E98A: FStStrNoPop var_17C
  loc_D4E98D: LitStr " ORDER BY NumeApre"
  loc_D4E990: ConcatStr
  loc_D4E991: FStStrNoPop var_180
  loc_D4E994: FLdPr Me
  loc_D4E997: MemLdRfVar from_stack_1.global_100
  loc_D4E99A: NewIfNullPr clsboleapre
  loc_D4E99D: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_D4E9A2: FFreeStr var_174 = "": var_178 = "": var_17C = ""
  loc_D4E9AD: Branch loc_D4E9B5
  loc_D4E9B0: Call Proc_266_22_ABE128()
  loc_D4E9B5: LitI4 0
  loc_D4E9BA: LitI4 1
  loc_D4E9BF: FLdRfVar var_A4
  loc_D4E9C2: Redim
  loc_D4E9CC: FLdPr Me
  loc_D4E9CF: MemLdRfVar from_stack_1.global_96
  loc_D4E9D2: NewIfNullAd
  loc_D4E9D5: FStAd var_90 
  loc_D4E9D9: FLdRfVar var_90
  loc_D4E9DC: CVarRef
  loc_D4E9E1: ParmAry1St
  loc_D4E9E7: FLdPr Me
  loc_D4E9EA: VCallAd Control_ID_InstApreDgd
  loc_D4E9ED: CVarAd
  loc_D4E9F1: ParmAry1St
  loc_D4E9F7: FLdRfVar var_A4
  loc_D4E9FA: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4E9FF: ILdRf var_90
  loc_D4EA02: CastAd
  loc_D4EA05: FLdPr Me
  loc_D4EA08: MemStAdFunc
  loc_D4EA0C: FLdRfVar var_A4
  loc_D4EA0F: Erase
  loc_D4EA10: FFree1Ad var_90
  loc_D4EA13: LitI4 0
  loc_D4EA18: LitI4 1
  loc_D4EA1D: FLdRfVar var_A4
  loc_D4EA20: Redim
  loc_D4EA2A: FLdPr Me
  loc_D4EA2D: MemLdRfVar from_stack_1.global_100
  loc_D4EA30: NewIfNullAd
  loc_D4EA33: FStAd var_90 
  loc_D4EA37: FLdRfVar var_90
  loc_D4EA3A: CVarRef
  loc_D4EA3F: ParmAry1St
  loc_D4EA45: FLdPr Me
  loc_D4EA48: VCallAd Control_ID_BoleApreDgd
  loc_D4EA4B: CVarAd
  loc_D4EA4F: ParmAry1St
  loc_D4EA55: FLdRfVar var_A4
  loc_D4EA58: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EA5D: ILdRf var_90
  loc_D4EA60: CastAd
  loc_D4EA63: FLdPr Me
  loc_D4EA66: MemStAdFunc
  loc_D4EA6A: FLdRfVar var_A4
  loc_D4EA6D: Erase
  loc_D4EA6E: FFree1Ad var_90
  loc_D4EA71: Branch loc_D4EB35
  loc_D4EA74: Call Proc_266_22_ABE128()
  loc_D4EA79: LitI4 0
  loc_D4EA7E: LitI4 1
  loc_D4EA83: FLdRfVar var_A4
  loc_D4EA86: Redim
  loc_D4EA90: FLdPr Me
  loc_D4EA93: MemLdRfVar from_stack_1.global_96
  loc_D4EA96: NewIfNullAd
  loc_D4EA99: FStAd var_90 
  loc_D4EA9D: FLdRfVar var_90
  loc_D4EAA0: CVarRef
  loc_D4EAA5: ParmAry1St
  loc_D4EAAB: FLdPr Me
  loc_D4EAAE: VCallAd Control_ID_InstApreDgd
  loc_D4EAB1: CVarAd
  loc_D4EAB5: ParmAry1St
  loc_D4EABB: FLdRfVar var_A4
  loc_D4EABE: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EAC3: ILdRf var_90
  loc_D4EAC6: CastAd
  loc_D4EAC9: FLdPr Me
  loc_D4EACC: MemStAdFunc
  loc_D4EAD0: FLdRfVar var_A4
  loc_D4EAD3: Erase
  loc_D4EAD4: FFree1Ad var_90
  loc_D4EAD7: LitI4 0
  loc_D4EADC: LitI4 1
  loc_D4EAE1: FLdRfVar var_A4
  loc_D4EAE4: Redim
  loc_D4EAEE: FLdPr Me
  loc_D4EAF1: MemLdRfVar from_stack_1.global_100
  loc_D4EAF4: NewIfNullAd
  loc_D4EAF7: FStAd var_90 
  loc_D4EAFB: FLdRfVar var_90
  loc_D4EAFE: CVarRef
  loc_D4EB03: ParmAry1St
  loc_D4EB09: FLdPr Me
  loc_D4EB0C: VCallAd Control_ID_BoleApreDgd
  loc_D4EB0F: CVarAd
  loc_D4EB13: ParmAry1St
  loc_D4EB19: FLdRfVar var_A4
  loc_D4EB1C: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EB21: ILdRf var_90
  loc_D4EB24: CastAd
  loc_D4EB27: FLdPr Me
  loc_D4EB2A: MemStAdFunc
  loc_D4EB2E: FLdRfVar var_A4
  loc_D4EB31: Erase
  loc_D4EB32: FFree1Ad var_90
  loc_D4EB35: FLdPr Me
  loc_D4EB38: VCallAd Control_ID_CtaCteTab
  loc_D4EB3B: FStAdFunc var_90
  loc_D4EB3E: FLdPr var_90
  loc_D4EB41: LateIdLdVar var_A0 DispID_4 0
  loc_D4EB48: CI2Var
  loc_D4EB49: LitI2_Byte 3
  loc_D4EB4B: EqI2
  loc_D4EB4C: FFree1Ad var_90
  loc_D4EB4F: FFree1Var var_A0 = ""
  loc_D4EB52: BranchF loc_D53613
  loc_D4EB55: Call Proc_266_22_ABE128()
  loc_D4EB5A: LitI4 0
  loc_D4EB5F: LitI4 1
  loc_D4EB64: FLdRfVar var_A4
  loc_D4EB67: Redim
  loc_D4EB71: FLdPr Me
  loc_D4EB74: MemLdRfVar from_stack_1.global_96
  loc_D4EB77: NewIfNullAd
  loc_D4EB7A: FStAd var_90 
  loc_D4EB7E: FLdRfVar var_90
  loc_D4EB81: CVarRef
  loc_D4EB86: ParmAry1St
  loc_D4EB8C: FLdPr Me
  loc_D4EB8F: VCallAd Control_ID_InstApreDgd
  loc_D4EB92: CVarAd
  loc_D4EB96: ParmAry1St
  loc_D4EB9C: FLdRfVar var_A4
  loc_D4EB9F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EBA4: ILdRf var_90
  loc_D4EBA7: CastAd
  loc_D4EBAA: FLdPr Me
  loc_D4EBAD: MemStAdFunc
  loc_D4EBB1: FLdRfVar var_A4
  loc_D4EBB4: Erase
  loc_D4EBB5: FFree1Ad var_90
  loc_D4EBB8: LitI4 0
  loc_D4EBBD: LitI4 1
  loc_D4EBC2: FLdRfVar var_A4
  loc_D4EBC5: Redim
  loc_D4EBCF: FLdPr Me
  loc_D4EBD2: MemLdRfVar from_stack_1.global_100
  loc_D4EBD5: NewIfNullAd
  loc_D4EBD8: FStAd var_90 
  loc_D4EBDC: FLdRfVar var_90
  loc_D4EBDF: CVarRef
  loc_D4EBE4: ParmAry1St
  loc_D4EBEA: FLdPr Me
  loc_D4EBED: VCallAd Control_ID_BoleApreDgd
  loc_D4EBF0: CVarAd
  loc_D4EBF4: ParmAry1St
  loc_D4EBFA: FLdRfVar var_A4
  loc_D4EBFD: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EC02: ILdRf var_90
  loc_D4EC05: CastAd
  loc_D4EC08: FLdPr Me
  loc_D4EC0B: MemStAdFunc
  loc_D4EC0F: FLdRfVar var_A4
  loc_D4EC12: Erase
  loc_D4EC13: FFree1Ad var_90
  loc_D4EC16: Call Proc_266_23_ACB704()
  loc_D4EC1B: LitI4 0
  loc_D4EC20: LitI4 1
  loc_D4EC25: FLdRfVar var_A4
  loc_D4EC28: Redim
  loc_D4EC32: FLdPr Me
  loc_D4EC35: MemLdRfVar from_stack_1.global_76
  loc_D4EC38: NewIfNullAd
  loc_D4EC3B: FStAd var_90 
  loc_D4EC3F: FLdRfVar var_90
  loc_D4EC42: CVarRef
  loc_D4EC47: ParmAry1St
  loc_D4EC4D: FLdPr Me
  loc_D4EC50: VCallAd Control_ID_dgdDetaFapa
  loc_D4EC53: CVarAd
  loc_D4EC57: ParmAry1St
  loc_D4EC5D: FLdRfVar var_A4
  loc_D4EC60: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D4EC65: ILdRf var_90
  loc_D4EC68: CastAd
  loc_D4EC6B: FLdPr Me
  loc_D4EC6E: MemStAdFunc
  loc_D4EC72: FLdRfVar var_A4
  loc_D4EC75: Erase
  loc_D4EC76: FFree1Ad var_90
  loc_D4EC79: LitI4 0
  loc_D4EC7E: FStR4 var_88
  loc_D4EC81: LitI2_Byte 0
  loc_D4EC83: FStI2 var_8A
  loc_D4EC86: LitVar_FALSE
  loc_D4EC8A: PopAdLdVar
  loc_D4EC8B: FLdPr Me
  loc_D4EC8E: VCallAd Control_ID_RecaBoleDgd
  loc_D4EC91: FStAdFunc var_90
  loc_D4EC94: FLdPr var_90
  loc_D4EC97: LateIdSt
  loc_D4EC9C: FFree1Ad var_90
  loc_D4EC9F: FLdPr Me
  loc_D4ECA2: VCallAd Control_ID_ctacteFlex
  loc_D4ECA5: FStAdFunc var_90
  loc_D4ECA8: FLdPr var_90
  loc_D4ECAB: LateIdLdVar var_A0 DispID_4 0
  loc_D4ECB2: CI4Var
  loc_D4ECB4: LitI4 1
  loc_D4ECB9: GtI4
  loc_D4ECBA: FFree1Ad var_90
  loc_D4ECBD: FFree1Var var_A0 = ""
  loc_D4ECC0: BranchF loc_D53613
  loc_D4ECC3: FLdPr Me
  loc_D4ECC6: VCallAd Control_ID_ctacteFlex
  loc_D4ECC9: FStAdFunc var_90
  loc_D4ECCC: FLdPr var_90
  loc_D4ECCF: LateIdLdVar var_A0 DispID_10 0
  loc_D4ECD6: CI4Var
  loc_D4ECD8: CVarI4
  loc_D4ECDC: PopAdLdVar
  loc_D4ECDD: LitVarI4
  loc_D4ECE5: PopAdLdVar
  loc_D4ECE6: FLdPr Me
  loc_D4ECE9: VCallAd Control_ID_ctacteFlex
  loc_D4ECEC: FStAdFunc var_E8
  loc_D4ECEF: FLdPr var_E8
  loc_D4ECF2: LateIdCallLdVar
  loc_D4ECFC: CStrVarTmp
  loc_D4ECFD: FStStrNoPop var_174
  loc_D4ED00: CR8Str
  loc_D4ED02: LitI2_Byte 0
  loc_D4ED04: CR8I2
  loc_D4ED05: NeR8
  loc_D4ED06: FFree1Str var_174
  loc_D4ED09: FFreeAd var_90 = ""
  loc_D4ED10: FFreeVar var_A0 = ""
  loc_D4ED17: BranchF loc_D53613
  loc_D4ED1A: FLdPr Me
  loc_D4ED1D: VCallAd Control_ID_ctacteFlex
  loc_D4ED20: FStAdFunc var_90
  loc_D4ED23: FLdPr var_90
  loc_D4ED26: LateIdLdVar var_A0 DispID_10 0
  loc_D4ED2D: CI4Var
  loc_D4ED2F: CVarI4
  loc_D4ED33: PopAdLdVar
  loc_D4ED34: LitVarI4
  loc_D4ED3C: PopAdLdVar
  loc_D4ED3D: FLdPr Me
  loc_D4ED40: VCallAd Control_ID_ctacteFlex
  loc_D4ED43: FStAdFunc var_E8
  loc_D4ED46: FLdPr var_E8
  loc_D4ED49: LateIdCallLdVar
  loc_D4ED53: CStrVarTmp
  loc_D4ED54: FStStrNoPop var_174
  loc_D4ED57: LitStr vbNullString
  loc_D4ED5A: NeStr
  loc_D4ED5C: FLdPr Me
  loc_D4ED5F: VCallAd Control_ID_ctacteFlex
  loc_D4ED62: FStAdFunc var_10C
  loc_D4ED65: FLdPr var_10C
  loc_D4ED68: LateIdLdVar var_108 DispID_10 0
  loc_D4ED6F: CI4Var
  loc_D4ED71: CVarI4
  loc_D4ED75: PopAdLdVar
  loc_D4ED76: LitVarI4
  loc_D4ED7E: PopAdLdVar
  loc_D4ED7F: FLdPr Me
  loc_D4ED82: VCallAd Control_ID_ctacteFlex
  loc_D4ED85: FStAdFunc var_160
  loc_D4ED88: FLdPr var_160
  loc_D4ED8B: LateIdCallLdVar
  loc_D4ED95: CStrVarTmp
  loc_D4ED96: FStStrNoPop var_178
  loc_D4ED99: LitStr vbNullString
  loc_D4ED9C: NeStr
  loc_D4ED9E: AndI4
  loc_D4ED9F: FLdPr Me
  loc_D4EDA2: VCallAd Control_ID_ctacteFlex
  loc_D4EDA5: FStAdFunc var_1A0
  loc_D4EDA8: FLdPr var_1A0
  loc_D4EDAB: LateIdLdVar var_170 DispID_10 0
  loc_D4EDB2: CI4Var
  loc_D4EDB4: CVarI4
  loc_D4EDB8: PopAdLdVar
  loc_D4EDB9: LitVarI4
  loc_D4EDC1: PopAdLdVar
  loc_D4EDC2: FLdPr Me
  loc_D4EDC5: VCallAd Control_ID_ctacteFlex
  loc_D4EDC8: FStAdFunc var_1E4
  loc_D4EDCB: FLdPr var_1E4
  loc_D4EDCE: LateIdCallLdVar
  loc_D4EDD8: CStrVarTmp
  loc_D4EDD9: FStStrNoPop var_17C
  loc_D4EDDC: LitStr vbNullString
  loc_D4EDDF: NeStr
  loc_D4EDE1: AndI4
  loc_D4EDE2: FFreeStr var_174 = "": var_178 = ""
  loc_D4EDEB: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = ""
  loc_D4EDFA: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4EE09: BranchF loc_D504E6
  loc_D4EE0C: FLdPr Me
  loc_D4EE0F: VCallAd Control_ID_ctacteFlex
  loc_D4EE12: FStAdFunc var_90
  loc_D4EE15: FLdPr var_90
  loc_D4EE18: LateIdLdVar var_A0 DispID_10 0
  loc_D4EE1F: CI4Var
  loc_D4EE21: CVarI4
  loc_D4EE25: PopAdLdVar
  loc_D4EE26: LitVarI4
  loc_D4EE2E: PopAdLdVar
  loc_D4EE2F: FLdPr Me
  loc_D4EE32: VCallAd Control_ID_ctacteFlex
  loc_D4EE35: FStAdFunc var_E8
  loc_D4EE38: FLdPr var_E8
  loc_D4EE3B: LateIdCallLdVar
  loc_D4EE45: PopAd
  loc_D4EE47: FLdPr Me
  loc_D4EE4A: VCallAd Control_ID_ctacteFlex
  loc_D4EE4D: FStAdFunc var_10C
  loc_D4EE50: FLdPr var_10C
  loc_D4EE53: LateIdLdVar var_108 DispID_10 0
  loc_D4EE5A: CI4Var
  loc_D4EE5C: CVarI4
  loc_D4EE60: PopAdLdVar
  loc_D4EE61: LitVarI4
  loc_D4EE69: PopAdLdVar
  loc_D4EE6A: FLdPr Me
  loc_D4EE6D: VCallAd Control_ID_ctacteFlex
  loc_D4EE70: FStAdFunc var_160
  loc_D4EE73: FLdPr var_160
  loc_D4EE76: LateIdCallLdVar
  loc_D4EE80: PopAd
  loc_D4EE82: FLdPr Me
  loc_D4EE85: MemLdRfVar from_stack_1.global_136
  loc_D4EE88: NewIfNullRf
  loc_D4EE8C: FLdRfVar var_11C
  loc_D4EE8F: CStrVarTmp
  loc_D4EE90: FStStrNoPop var_178
  loc_D4EE93: FLdRfVar var_F8
  loc_D4EE96: CStrVarTmp
  loc_D4EE97: FStStrNoPop var_174
  loc_D4EE9A: CI2Str
  loc_D4EE9C: ImpAdCallI2 Proc_270_10_AFACE0(, , )
  loc_D4EEA1: FFreeStr var_174 = ""
  loc_D4EEA8: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4EEB3: FFreeVar var_A0 = "": var_F8 = "": var_108 = ""
  loc_D4EEBE: BranchF loc_D4EF1A
  loc_D4EEC1: FLdRfVar var_174
  loc_D4EEC4: FLdPr Me
  loc_D4EEC7: MemLdRfVar from_stack_1.global_136
  loc_D4EECA: NewIfNullPr tblConcepto
  loc_D4EECD: from_stack_1v = tblConcepto.DetaConcGet()
  loc_D4EED2: ILdRf var_174
  loc_D4EED5: FLdPr Me
  loc_D4EED8: VCallAd Control_ID_DetaConcTxt
  loc_D4EEDB: FStAdFunc var_90
  loc_D4EEDE: FLdPr var_90
  loc_D4EEE1: Me.Text = from_stack_1
  loc_D4EEE6: FFree1Str var_174
  loc_D4EEE9: FFree1Ad var_90
  loc_D4EEEC: FLdRfVar var_174
  loc_D4EEEF: FLdPr Me
  loc_D4EEF2: MemLdRfVar from_stack_1.global_136
  loc_D4EEF5: NewIfNullPr tblConcepto
  loc_D4EEF8: from_stack_1v = tblConcepto.ConcViejGet()
  loc_D4EEFD: ILdRf var_174
  loc_D4EF00: FLdPr Me
  loc_D4EF03: VCallAd Control_ID_ConcViejTxt
  loc_D4EF06: FStAdFunc var_90
  loc_D4EF09: FLdPr var_90
  loc_D4EF0C: Me.Text = from_stack_1
  loc_D4EF11: FFree1Str var_174
  loc_D4EF14: FFree1Ad var_90
  loc_D4EF17: Branch loc_D4EF48
  loc_D4EF1A: LitStr vbNullString
  loc_D4EF1D: FLdPr Me
  loc_D4EF20: VCallAd Control_ID_DetaConcTxt
  loc_D4EF23: FStAdFunc var_90
  loc_D4EF26: FLdPr var_90
  loc_D4EF29: Me.Text = from_stack_1
  loc_D4EF2E: FFree1Ad var_90
  loc_D4EF31: LitStr vbNullString
  loc_D4EF34: FLdPr Me
  loc_D4EF37: VCallAd Control_ID_ConcViejTxt
  loc_D4EF3A: FStAdFunc var_90
  loc_D4EF3D: FLdPr var_90
  loc_D4EF40: Me.Text = from_stack_1
  loc_D4EF45: FFree1Ad var_90
  loc_D4EF48: FLdPr Me
  loc_D4EF4B: VCallAd Control_ID_ctacteFlex
  loc_D4EF4E: FStAdFunc var_90
  loc_D4EF51: FLdPr var_90
  loc_D4EF54: LateIdLdVar var_A0 DispID_10 0
  loc_D4EF5B: CI4Var
  loc_D4EF5D: CVarI4
  loc_D4EF61: PopAdLdVar
  loc_D4EF62: LitVarI4
  loc_D4EF6A: PopAdLdVar
  loc_D4EF6B: FLdPr Me
  loc_D4EF6E: VCallAd Control_ID_ctacteFlex
  loc_D4EF71: FStAdFunc var_E8
  loc_D4EF74: FLdPr var_E8
  loc_D4EF77: LateIdCallLdVar
  loc_D4EF81: PopAd
  loc_D4EF83: LitI4 6
  loc_D4EF88: FLdRfVar var_F8
  loc_D4EF8B: CStrVarTmp
  loc_D4EF8C: CVarStr var_108
  loc_D4EF8F: FLdRfVar var_11C
  loc_D4EF92: ImpAdCallFPR4  = Left(, )
  loc_D4EF97: FLdRfVar var_11C
  loc_D4EF9A: LitVarStr var_12C, "Cuota:"
  loc_D4EF9F: HardType
  loc_D4EFA0: NeVarBool
  loc_D4EFA2: FFreeAd var_90 = ""
  loc_D4EFA9: FFreeVar var_A0 = "": var_F8 = "": var_108 = ""
  loc_D4EFB4: BranchF loc_D5037A
  loc_D4EFB7: FLdPr Me
  loc_D4EFBA: VCallAd Control_ID_ctacteFlex
  loc_D4EFBD: FStAdFunc var_E8
  loc_D4EFC0: FLdPr var_E8
  loc_D4EFC3: LateIdLdVar var_A0 DispID_10 0
  loc_D4EFCA: CI4Var
  loc_D4EFCC: CVarI4
  loc_D4EFD0: PopAdLdVar
  loc_D4EFD1: LitVarI4
  loc_D4EFD9: PopAdLdVar
  loc_D4EFDA: FLdPr Me
  loc_D4EFDD: VCallAd Control_ID_ctacteFlex
  loc_D4EFE0: FStAdFunc var_10C
  loc_D4EFE3: FLdPr var_10C
  loc_D4EFE6: LateIdCallLdVar
  loc_D4EFF0: CStrVarTmp
  loc_D4EFF1: CVarStr var_108
  loc_D4EFF4: FLdRfVar var_11C
  loc_D4EFF7: ImpAdCallFPR4  = Trim()
  loc_D4EFFC: FLdPr Me
  loc_D4EFFF: VCallAd Control_ID_ctacteFlex
  loc_D4F002: FStAdFunc var_160
  loc_D4F005: FLdPr var_160
  loc_D4F008: LateIdLdVar var_1F4 DispID_10 0
  loc_D4F00F: CI4Var
  loc_D4F011: CVarI4
  loc_D4F015: PopAdLdVar
  loc_D4F016: LitVarI4
  loc_D4F01E: PopAdLdVar
  loc_D4F01F: FLdPr Me
  loc_D4F022: VCallAd Control_ID_ctacteFlex
  loc_D4F025: FStAdFunc var_1A0
  loc_D4F028: FLdPr var_1A0
  loc_D4F02B: LateIdCallLdVar
  loc_D4F035: PopAd
  loc_D4F037: LitStr "SELECT CodiOfic, CuenCtct, ExpeCtct, CompCtct, CodiTimo, DetaCtct, CodiFapa, CuotDefa, AltaUsua, PeriCtct, BimeCtct, CodiTili, NumeLiqu, CodiConc FROM tmp_ctacte"
  loc_D4F03A: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_D4F03D: ConcatStr
  loc_D4F03E: FStStrNoPop var_174
  loc_D4F041: ImpAdLdUI1
  loc_D4F045: CStrI2
  loc_D4F047: FStStrNoPop var_178
  loc_D4F04A: ConcatStr
  loc_D4F04B: FStStrNoPop var_17C
  loc_D4F04E: LitStr " AND tmp_ctacte.CuenCtct = '"
  loc_D4F051: ConcatStr
  loc_D4F052: FStStrNoPop var_184
  loc_D4F055: FLdRfVar var_180
  loc_D4F058: FLdPr Me
  loc_D4F05B: VCallAd Control_ID_NumeCtaTxt
  loc_D4F05E: FStAdFunc var_90
  loc_D4F061: FLdPr var_90
  loc_D4F064:  = Me.Text
  loc_D4F069: ILdRf var_180
  loc_D4F06C: ConcatStr
  loc_D4F06D: FStStrNoPop var_194
  loc_D4F070: LitStr "'"
  loc_D4F073: ConcatStr
  loc_D4F074: FStStrNoPop var_1F8
  loc_D4F077: LitStr " AND tmp_ctacte.PeriCtct = "
  loc_D4F07A: ConcatStr
  loc_D4F07B: FStStrNoPop var_1FC
  loc_D4F07E: LitI4 4
  loc_D4F083: FLdRfVar var_11C
  loc_D4F086: FLdRfVar var_170
  loc_D4F089: ImpAdCallFPR4  = Right(, )
  loc_D4F08E: FLdRfVar var_170
  loc_D4F091: FnCIntVar
  loc_D4F093: CStrUI1
  loc_D4F095: FStStrNoPop var_200
  loc_D4F098: ConcatStr
  loc_D4F099: FStStrNoPop var_204
  loc_D4F09C: LitStr " AND tmp_ctacte.BimeCtct = "
  loc_D4F09F: ConcatStr
  loc_D4F0A0: FStStrNoPop var_280
  loc_D4F0A3: LitI4 1
  loc_D4F0A8: FLdPr Me
  loc_D4F0AB: VCallAd Control_ID_ctacteFlex
  loc_D4F0AE: FStAdFunc var_1E4
  loc_D4F0B1: FLdPr var_1E4
  loc_D4F0B4: LateIdLdVar var_224 DispID_10 0
  loc_D4F0BB: CI4Var
  loc_D4F0BD: CVarI4
  loc_D4F0C1: PopAdLdVar
  loc_D4F0C2: LitVarI4
  loc_D4F0CA: PopAdLdVar
  loc_D4F0CB: FLdPr Me
  loc_D4F0CE: VCallAd Control_ID_ctacteFlex
  loc_D4F0D1: FStAdFunc var_228
  loc_D4F0D4: FLdPr var_228
  loc_D4F0D7: LateIdCallLdVar
  loc_D4F0E1: CStrVarTmp
  loc_D4F0E2: FStStrNoPop var_23C
  loc_D4F0E5: LitStr "/"
  loc_D4F0E8: LitI4 0
  loc_D4F0ED: FnInStr4
  loc_D4F0EF: LitI4 1
  loc_D4F0F4: SubI4
  loc_D4F0F5: CVarI4
  loc_D4F0F9: LitI4 1
  loc_D4F0FE: FLdRfVar var_214
  loc_D4F101: CStrVarTmp
  loc_D4F102: CVarStr var_24C
  loc_D4F105: FLdRfVar var_27C
  loc_D4F108: ImpAdCallFPR4  = Mid(, , )
  loc_D4F10D: FLdRfVar var_27C
  loc_D4F110: FnCIntVar
  loc_D4F112: CStrUI1
  loc_D4F114: FStStrNoPop var_284
  loc_D4F117: ConcatStr
  loc_D4F118: FStStrNoPop var_288
  loc_D4F11B: LitStr " AND tmp_ctacte.NumeCtct = "
  loc_D4F11E: ConcatStr
  loc_D4F11F: FStStrNoPop var_2F4
  loc_D4F122: FLdPr Me
  loc_D4F125: VCallAd Control_ID_ctacteFlex
  loc_D4F128: FStAdFunc var_28C
  loc_D4F12B: FLdPr var_28C
  loc_D4F12E: LateIdLdVar var_29C DispID_10 0
  loc_D4F135: CI4Var
  loc_D4F137: CVarI4
  loc_D4F13B: PopAdLdVar
  loc_D4F13C: LitVarI4
  loc_D4F144: PopAdLdVar
  loc_D4F145: FLdPr Me
  loc_D4F148: VCallAd Control_ID_ctacteFlex
  loc_D4F14B: FStAdFunc var_2E0
  loc_D4F14E: FLdPr var_2E0
  loc_D4F151: LateIdCallLdVar
  loc_D4F15B: CStrVarTmp
  loc_D4F15C: FStStrNoPop var_2F8
  loc_D4F15F: ConcatStr
  loc_D4F160: FStStrNoPop var_2FC
  loc_D4F163: LitStr " AND tmp_ctacte.MoviCtct = "
  loc_D4F166: ConcatStr
  loc_D4F167: FStStrNoPop var_368
  loc_D4F16A: FLdPr Me
  loc_D4F16D: VCallAd Control_ID_ctacteFlex
  loc_D4F170: FStAdFunc var_300
  loc_D4F173: FLdPr var_300
  loc_D4F176: LateIdLdVar var_310 DispID_10 0
  loc_D4F17D: CI4Var
  loc_D4F17F: CVarI4
  loc_D4F183: PopAdLdVar
  loc_D4F184: LitVarI4
  loc_D4F18C: PopAdLdVar
  loc_D4F18D: FLdPr Me
  loc_D4F190: VCallAd Control_ID_ctacteFlex
  loc_D4F193: FStAdFunc var_354
  loc_D4F196: FLdPr var_354
  loc_D4F199: LateIdCallLdVar
  loc_D4F1A3: CStrVarTmp
  loc_D4F1A4: FStStrNoPop var_36C
  loc_D4F1A7: ConcatStr
  loc_D4F1A8: FStStrNoPop var_370
  loc_D4F1AB: LitStr " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_D4F1AE: ConcatStr
  loc_D4F1AF: FStStrNoPop var_374
  loc_D4F1B2: FLdPr Me
  loc_D4F1B5: MemLdRfVar from_stack_1.global_60
  loc_D4F1B8: NewIfNullPr clsctacte
  loc_D4F1BB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D4F1C0: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_184 = "": var_180 = "": var_194 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_204 = "": var_23C = "": var_280 = "": var_284 = "": var_288 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_368 = "": var_36C = "": var_370 = ""
  loc_D4F1ED: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = ""
  loc_D4F206: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = ""
  loc_D4F22D: FLdRfVar var_188
  loc_D4F230: FLdPr Me
  loc_D4F233: MemLdRfVar from_stack_1.global_60
  loc_D4F236: NewIfNullPr clsctacte
  loc_D4F239: from_stack_1 = clsctacte.RecordCount
  loc_D4F23E: ILdRf var_188
  loc_D4F241: LitI4 1
  loc_D4F246: EqI4
  loc_D4F247: BranchF loc_D502F7
  loc_D4F24A: FLdRfVar var_A0
  loc_D4F24D: FLdRfVar var_10C
  loc_D4F250: LitVarStr var_B4, "DetaCtct"
  loc_D4F255: PopAdLdVar
  loc_D4F256: FLdRfVar var_E8
  loc_D4F259: FLdRfVar var_90
  loc_D4F25C: FLdPr Me
  loc_D4F25F: MemLdRfVar from_stack_1.global_60
  loc_D4F262: NewIfNullPr clsctacte
  loc_D4F265: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F26A: FLdPr var_90
  loc_D4F26D:  = Me.Fields
  loc_D4F272: FLdPr var_E8
  loc_D4F275: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F27A: FLdPr var_10C
  loc_D4F27D:  = Me.Value
  loc_D4F282: FLdRfVar var_A0
  loc_D4F285: CStrVarTmp
  loc_D4F286: FStStrNoPop var_174
  loc_D4F289: FLdPr Me
  loc_D4F28C: VCallAd Control_ID_DetaCtctTxt
  loc_D4F28F: FStAdFunc var_160
  loc_D4F292: FLdPr var_160
  loc_D4F295: Me.Text = from_stack_1
  loc_D4F29A: FFree1Str var_174
  loc_D4F29D: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4F2A8: FFree1Var var_A0 = ""
  loc_D4F2AB: FLdRfVar var_A0
  loc_D4F2AE: FLdRfVar var_10C
  loc_D4F2B1: LitVarStr var_B4, "AltaUsua"
  loc_D4F2B6: PopAdLdVar
  loc_D4F2B7: FLdRfVar var_E8
  loc_D4F2BA: FLdRfVar var_90
  loc_D4F2BD: FLdPr Me
  loc_D4F2C0: MemLdRfVar from_stack_1.global_60
  loc_D4F2C3: NewIfNullPr clsctacte
  loc_D4F2C6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F2CB: FLdPr var_90
  loc_D4F2CE:  = Me.Fields
  loc_D4F2D3: FLdPr var_E8
  loc_D4F2D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F2DB: FLdPr var_10C
  loc_D4F2DE:  = Me.Value
  loc_D4F2E3: FLdRfVar var_A0
  loc_D4F2E6: CStrVarTmp
  loc_D4F2E7: FStStrNoPop var_174
  loc_D4F2EA: FLdPr Me
  loc_D4F2ED: VCallAd Control_ID_CodiUsuaTxt
  loc_D4F2F0: FStAdFunc var_160
  loc_D4F2F3: FLdPr var_160
  loc_D4F2F6: Me.Text = from_stack_1
  loc_D4F2FB: FFree1Str var_174
  loc_D4F2FE: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4F309: FFree1Var var_A0 = ""
  loc_D4F30C: FLdRfVar var_A0
  loc_D4F30F: FLdRfVar var_10C
  loc_D4F312: LitVarStr var_B4, "CompCtct"
  loc_D4F317: PopAdLdVar
  loc_D4F318: FLdRfVar var_E8
  loc_D4F31B: FLdRfVar var_90
  loc_D4F31E: FLdPr Me
  loc_D4F321: MemLdRfVar from_stack_1.global_60
  loc_D4F324: NewIfNullPr clsctacte
  loc_D4F327: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F32C: FLdPr var_90
  loc_D4F32F:  = Me.Fields
  loc_D4F334: FLdPr var_E8
  loc_D4F337: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F33C: FLdPr var_10C
  loc_D4F33F:  = Me.Value
  loc_D4F344: FLdRfVar var_A0
  loc_D4F347: CStrVarTmp
  loc_D4F348: FStStrNoPop var_174
  loc_D4F34B: FLdPr Me
  loc_D4F34E: VCallAd Control_ID_CompCtctTxt
  loc_D4F351: FStAdFunc var_160
  loc_D4F354: FLdPr var_160
  loc_D4F357: Me.Text = from_stack_1
  loc_D4F35C: FFree1Str var_174
  loc_D4F35F: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4F36A: FFree1Var var_A0 = ""
  loc_D4F36D: FLdRfVar var_A0
  loc_D4F370: FLdRfVar var_10C
  loc_D4F373: LitVarStr var_B4, "NumeLiqu"
  loc_D4F378: PopAdLdVar
  loc_D4F379: FLdRfVar var_E8
  loc_D4F37C: FLdRfVar var_90
  loc_D4F37F: FLdPr Me
  loc_D4F382: MemLdRfVar from_stack_1.global_60
  loc_D4F385: NewIfNullPr clsctacte
  loc_D4F388: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F38D: FLdPr var_90
  loc_D4F390:  = Me.Fields
  loc_D4F395: FLdPr var_E8
  loc_D4F398: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F39D: FLdPr var_10C
  loc_D4F3A0:  = Me.Value
  loc_D4F3A5: FLdRfVar var_A0
  loc_D4F3A8: CStrVarTmp
  loc_D4F3A9: FStStrNoPop var_174
  loc_D4F3AC: FLdPr Me
  loc_D4F3AF: VCallAd Control_ID_NumeLiquTxt
  loc_D4F3B2: FStAdFunc var_160
  loc_D4F3B5: FLdPr var_160
  loc_D4F3B8: Me.Text = from_stack_1
  loc_D4F3BD: FFree1Str var_174
  loc_D4F3C0: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D4F3CB: FFree1Var var_A0 = ""
  loc_D4F3CE: FLdRfVar var_A0
  loc_D4F3D1: FLdRfVar var_10C
  loc_D4F3D4: LitVarStr var_B4, "CodiFapa"
  loc_D4F3D9: PopAdLdVar
  loc_D4F3DA: FLdRfVar var_E8
  loc_D4F3DD: FLdRfVar var_90
  loc_D4F3E0: FLdPr Me
  loc_D4F3E3: MemLdRfVar from_stack_1.global_60
  loc_D4F3E6: NewIfNullPr clsctacte
  loc_D4F3E9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F3EE: FLdPr var_90
  loc_D4F3F1:  = Me.Fields
  loc_D4F3F6: FLdPr var_E8
  loc_D4F3F9: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F3FE: FLdPr var_10C
  loc_D4F401:  = Me.Value
  loc_D4F406: FLdRfVar var_A0
  loc_D4F409: CI4Var
  loc_D4F40B: FStR4 var_88
  loc_D4F40E: FFreeAd var_90 = "": var_E8 = ""
  loc_D4F417: FFree1Var var_A0 = ""
  loc_D4F41A: FLdRfVar var_A0
  loc_D4F41D: FLdRfVar var_10C
  loc_D4F420: LitVarStr var_B4, "CuotDefa"
  loc_D4F425: PopAdLdVar
  loc_D4F426: FLdRfVar var_E8
  loc_D4F429: FLdRfVar var_90
  loc_D4F42C: FLdPr Me
  loc_D4F42F: MemLdRfVar from_stack_1.global_60
  loc_D4F432: NewIfNullPr clsctacte
  loc_D4F435: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F43A: FLdPr var_90
  loc_D4F43D:  = Me.Fields
  loc_D4F442: FLdPr var_E8
  loc_D4F445: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F44A: FLdPr var_10C
  loc_D4F44D:  = Me.Value
  loc_D4F452: FLdRfVar var_A0
  loc_D4F455: CI2Var
  loc_D4F456: FStI2 var_8A
  loc_D4F459: FFreeAd var_90 = "": var_E8 = ""
  loc_D4F462: FFree1Var var_A0 = ""
  loc_D4F465: FLdRfVar var_A0
  loc_D4F468: FLdRfVar var_10C
  loc_D4F46B: LitVarStr var_B4, "CodiOfic"
  loc_D4F470: PopAdLdVar
  loc_D4F471: FLdRfVar var_E8
  loc_D4F474: FLdRfVar var_90
  loc_D4F477: FLdPr Me
  loc_D4F47A: MemLdRfVar from_stack_1.global_60
  loc_D4F47D: NewIfNullPr clsctacte
  loc_D4F480: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F485: FLdPr var_90
  loc_D4F488:  = Me.Fields
  loc_D4F48D: FLdPr var_E8
  loc_D4F490: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F495: FLdPr var_10C
  loc_D4F498:  = Me.Value
  loc_D4F49D: FLdRfVar var_A0
  loc_D4F4A0: LitVarI2 var_C4, 1
  loc_D4F4A5: HardType
  loc_D4F4A6: EqVarBool
  loc_D4F4A8: FFreeAd var_90 = "": var_E8 = ""
  loc_D4F4B1: FFree1Var var_A0 = ""
  loc_D4F4B4: BranchF loc_D4F680
  loc_D4F4B7: FLdRfVar var_A0
  loc_D4F4BA: FLdRfVar var_10C
  loc_D4F4BD: LitVarStr var_B4, "PeriCtct"
  loc_D4F4C2: PopAdLdVar
  loc_D4F4C3: FLdRfVar var_E8
  loc_D4F4C6: FLdRfVar var_90
  loc_D4F4C9: FLdPr Me
  loc_D4F4CC: MemLdRfVar from_stack_1.global_60
  loc_D4F4CF: NewIfNullPr clsctacte
  loc_D4F4D2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F4D7: FLdPr var_90
  loc_D4F4DA:  = Me.Fields
  loc_D4F4DF: FLdPr var_E8
  loc_D4F4E2: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F4E7: FLdPr var_10C
  loc_D4F4EA:  = Me.Value
  loc_D4F4EF: FLdRfVar var_F8
  loc_D4F4F2: FLdRfVar var_1E4
  loc_D4F4F5: LitVarStr var_C4, "BimeCtct"
  loc_D4F4FA: PopAdLdVar
  loc_D4F4FB: FLdRfVar var_1A0
  loc_D4F4FE: FLdRfVar var_160
  loc_D4F501: FLdPr Me
  loc_D4F504: MemLdRfVar from_stack_1.global_60
  loc_D4F507: NewIfNullPr clsctacte
  loc_D4F50A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F50F: FLdPr var_160
  loc_D4F512:  = Me.Fields
  loc_D4F517: FLdPr var_1A0
  loc_D4F51A: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F51F: FLdPr var_1E4
  loc_D4F522:  = Me.Value
  loc_D4F527: FLdRfVar var_108
  loc_D4F52A: FLdRfVar var_2E0
  loc_D4F52D: LitVarStr var_D4, "CodiTili"
  loc_D4F532: PopAdLdVar
  loc_D4F533: FLdRfVar var_28C
  loc_D4F536: FLdRfVar var_228
  loc_D4F539: FLdPr Me
  loc_D4F53C: MemLdRfVar from_stack_1.global_60
  loc_D4F53F: NewIfNullPr clsctacte
  loc_D4F542: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F547: FLdPr var_228
  loc_D4F54A:  = Me.Fields
  loc_D4F54F: FLdPr var_28C
  loc_D4F552: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F557: FLdPr var_2E0
  loc_D4F55A:  = Me.Value
  loc_D4F55F: FLdRfVar var_11C
  loc_D4F562: FLdRfVar var_378
  loc_D4F565: LitVarStr var_E4, "NumeLiqu"
  loc_D4F56A: PopAdLdVar
  loc_D4F56B: FLdRfVar var_354
  loc_D4F56E: FLdRfVar var_300
  loc_D4F571: FLdPr Me
  loc_D4F574: MemLdRfVar from_stack_1.global_60
  loc_D4F577: NewIfNullPr clsctacte
  loc_D4F57A: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F57F: FLdPr var_300
  loc_D4F582:  = Me.Fields
  loc_D4F587: FLdPr var_354
  loc_D4F58A: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F58F: FLdPr var_378
  loc_D4F592:  = Me.Value
  loc_D4F597: FLdRfVar var_170
  loc_D4F59A: FLdRfVar var_384
  loc_D4F59D: LitVarStr var_12C, "CuenCtct"
  loc_D4F5A2: PopAdLdVar
  loc_D4F5A3: FLdRfVar var_380
  loc_D4F5A6: FLdRfVar var_37C
  loc_D4F5A9: FLdPr Me
  loc_D4F5AC: MemLdRfVar from_stack_1.global_60
  loc_D4F5AF: NewIfNullPr clsctacte
  loc_D4F5B2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F5B7: FLdPr var_37C
  loc_D4F5BA:  = Me.Fields
  loc_D4F5BF: FLdPr var_380
  loc_D4F5C2: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F5C7: FLdPr var_384
  loc_D4F5CA:  = Me.Value
  loc_D4F5CF: FLdRfVar var_1F4
  loc_D4F5D2: FLdRfVar var_390
  loc_D4F5D5: LitVarStr var_13C, "CodiConc"
  loc_D4F5DA: PopAdLdVar
  loc_D4F5DB: FLdRfVar var_38C
  loc_D4F5DE: FLdRfVar var_388
  loc_D4F5E1: FLdPr Me
  loc_D4F5E4: MemLdRfVar from_stack_1.global_60
  loc_D4F5E7: NewIfNullPr clsctacte
  loc_D4F5EA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F5EF: FLdPr var_388
  loc_D4F5F2:  = Me.Fields
  loc_D4F5F7: FLdPr var_38C
  loc_D4F5FA: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F5FF: FLdPr var_390
  loc_D4F602:  = Me.Value
  loc_D4F607: FLdRfVar var_1F4
  loc_D4F60A: CStrVarTmp
  loc_D4F60B: FStStrNoPop var_174
  loc_D4F60E: FLdRfVar var_170
  loc_D4F611: CI4Var
  loc_D4F613: FLdRfVar var_11C
  loc_D4F616: CI2Var
  loc_D4F617: FLdRfVar var_108
  loc_D4F61A: CI2Var
  loc_D4F61B: FLdRfVar var_F8
  loc_D4F61E: CI2Var
  loc_D4F61F: FLdRfVar var_A0
  loc_D4F622: CI2Var
  loc_D4F623: ImpAdCallI2 Proc_270_111_B11FC0(, , , , , )
  loc_D4F628: CStrI4
  loc_D4F62A: FStStrNoPop var_178
  loc_D4F62D: FLdPr Me
  loc_D4F630: VCallAd Control_ID_NumeOrdeTxt
  loc_D4F633: FStAdFunc var_394
  loc_D4F636: FLdPr var_394
  loc_D4F639: Me.Text = from_stack_1
  loc_D4F63E: FFreeStr var_174 = ""
  loc_D4F645: FFreeAd var_90 = "": var_E8 = "": var_160 = "": var_1A0 = "": var_228 = "": var_28C = "": var_300 = "": var_354 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_10C = "": var_1E4 = "": var_2E0 = "": var_378 = "": var_384 = "": var_390 = ""
  loc_D4F66E: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4F67D: Branch loc_D4FEE9
  loc_D4F680: FLdRfVar var_A0
  loc_D4F683: FLdRfVar var_10C
  loc_D4F686: LitVarStr var_B4, "CodiOfic"
  loc_D4F68B: PopAdLdVar
  loc_D4F68C: FLdRfVar var_E8
  loc_D4F68F: FLdRfVar var_90
  loc_D4F692: FLdPr Me
  loc_D4F695: MemLdRfVar from_stack_1.global_60
  loc_D4F698: NewIfNullPr clsctacte
  loc_D4F69B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F6A0: FLdPr var_90
  loc_D4F6A3:  = Me.Fields
  loc_D4F6A8: FLdPr var_E8
  loc_D4F6AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F6B0: FLdPr var_10C
  loc_D4F6B3:  = Me.Value
  loc_D4F6B8: FLdRfVar var_A0
  loc_D4F6BB: LitVarI2 var_C4, 2
  loc_D4F6C0: HardType
  loc_D4F6C1: EqVarBool
  loc_D4F6C3: FFreeAd var_90 = "": var_E8 = ""
  loc_D4F6CC: FFree1Var var_A0 = ""
  loc_D4F6CF: BranchF loc_D4F89B
  loc_D4F6D2: FLdRfVar var_A0
  loc_D4F6D5: FLdRfVar var_10C
  loc_D4F6D8: LitVarStr var_B4, "PeriCtct"
  loc_D4F6DD: PopAdLdVar
  loc_D4F6DE: FLdRfVar var_E8
  loc_D4F6E1: FLdRfVar var_90
  loc_D4F6E4: FLdPr Me
  loc_D4F6E7: MemLdRfVar from_stack_1.global_60
  loc_D4F6EA: NewIfNullPr clsctacte
  loc_D4F6ED: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F6F2: FLdPr var_90
  loc_D4F6F5:  = Me.Fields
  loc_D4F6FA: FLdPr var_E8
  loc_D4F6FD: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F702: FLdPr var_10C
  loc_D4F705:  = Me.Value
  loc_D4F70A: FLdRfVar var_F8
  loc_D4F70D: FLdRfVar var_1E4
  loc_D4F710: LitVarStr var_C4, "BimeCtct"
  loc_D4F715: PopAdLdVar
  loc_D4F716: FLdRfVar var_1A0
  loc_D4F719: FLdRfVar var_160
  loc_D4F71C: FLdPr Me
  loc_D4F71F: MemLdRfVar from_stack_1.global_60
  loc_D4F722: NewIfNullPr clsctacte
  loc_D4F725: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F72A: FLdPr var_160
  loc_D4F72D:  = Me.Fields
  loc_D4F732: FLdPr var_1A0
  loc_D4F735: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F73A: FLdPr var_1E4
  loc_D4F73D:  = Me.Value
  loc_D4F742: FLdRfVar var_108
  loc_D4F745: FLdRfVar var_2E0
  loc_D4F748: LitVarStr var_D4, "CodiTili"
  loc_D4F74D: PopAdLdVar
  loc_D4F74E: FLdRfVar var_28C
  loc_D4F751: FLdRfVar var_228
  loc_D4F754: FLdPr Me
  loc_D4F757: MemLdRfVar from_stack_1.global_60
  loc_D4F75A: NewIfNullPr clsctacte
  loc_D4F75D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F762: FLdPr var_228
  loc_D4F765:  = Me.Fields
  loc_D4F76A: FLdPr var_28C
  loc_D4F76D: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F772: FLdPr var_2E0
  loc_D4F775:  = Me.Value
  loc_D4F77A: FLdRfVar var_11C
  loc_D4F77D: FLdRfVar var_378
  loc_D4F780: LitVarStr var_E4, "NumeLiqu"
  loc_D4F785: PopAdLdVar
  loc_D4F786: FLdRfVar var_354
  loc_D4F789: FLdRfVar var_300
  loc_D4F78C: FLdPr Me
  loc_D4F78F: MemLdRfVar from_stack_1.global_60
  loc_D4F792: NewIfNullPr clsctacte
  loc_D4F795: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F79A: FLdPr var_300
  loc_D4F79D:  = Me.Fields
  loc_D4F7A2: FLdPr var_354
  loc_D4F7A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F7AA: FLdPr var_378
  loc_D4F7AD:  = Me.Value
  loc_D4F7B2: FLdRfVar var_170
  loc_D4F7B5: FLdRfVar var_384
  loc_D4F7B8: LitVarStr var_12C, "CuenCtct"
  loc_D4F7BD: PopAdLdVar
  loc_D4F7BE: FLdRfVar var_380
  loc_D4F7C1: FLdRfVar var_37C
  loc_D4F7C4: FLdPr Me
  loc_D4F7C7: MemLdRfVar from_stack_1.global_60
  loc_D4F7CA: NewIfNullPr clsctacte
  loc_D4F7CD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F7D2: FLdPr var_37C
  loc_D4F7D5:  = Me.Fields
  loc_D4F7DA: FLdPr var_380
  loc_D4F7DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F7E2: FLdPr var_384
  loc_D4F7E5:  = Me.Value
  loc_D4F7EA: FLdRfVar var_1F4
  loc_D4F7ED: FLdRfVar var_390
  loc_D4F7F0: LitVarStr var_13C, "CodiConc"
  loc_D4F7F5: PopAdLdVar
  loc_D4F7F6: FLdRfVar var_38C
  loc_D4F7F9: FLdRfVar var_388
  loc_D4F7FC: FLdPr Me
  loc_D4F7FF: MemLdRfVar from_stack_1.global_60
  loc_D4F802: NewIfNullPr clsctacte
  loc_D4F805: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F80A: FLdPr var_388
  loc_D4F80D:  = Me.Fields
  loc_D4F812: FLdPr var_38C
  loc_D4F815: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F81A: FLdPr var_390
  loc_D4F81D:  = Me.Value
  loc_D4F822: FLdRfVar var_1F4
  loc_D4F825: CStrVarTmp
  loc_D4F826: FStStrNoPop var_174
  loc_D4F829: FLdRfVar var_170
  loc_D4F82C: CI4Var
  loc_D4F82E: FLdRfVar var_11C
  loc_D4F831: CI2Var
  loc_D4F832: FLdRfVar var_108
  loc_D4F835: CI2Var
  loc_D4F836: FLdRfVar var_F8
  loc_D4F839: CI2Var
  loc_D4F83A: FLdRfVar var_A0
  loc_D4F83D: CI2Var
  loc_D4F83E: ImpAdCallI2 Proc_270_112_AD6798(, , , , , )
  loc_D4F843: CStrI4
  loc_D4F845: FStStrNoPop var_178
  loc_D4F848: FLdPr Me
  loc_D4F84B: VCallAd Control_ID_NumeOrdeTxt
  loc_D4F84E: FStAdFunc var_394
  loc_D4F851: FLdPr var_394
  loc_D4F854: Me.Text = from_stack_1
  loc_D4F859: FFreeStr var_174 = ""
  loc_D4F860: FFreeAd var_90 = "": var_E8 = "": var_160 = "": var_1A0 = "": var_228 = "": var_28C = "": var_300 = "": var_354 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_10C = "": var_1E4 = "": var_2E0 = "": var_378 = "": var_384 = "": var_390 = ""
  loc_D4F889: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4F898: Branch loc_D4FEE9
  loc_D4F89B: FLdRfVar var_A0
  loc_D4F89E: FLdRfVar var_10C
  loc_D4F8A1: LitVarStr var_B4, "CodiOfic"
  loc_D4F8A6: PopAdLdVar
  loc_D4F8A7: FLdRfVar var_E8
  loc_D4F8AA: FLdRfVar var_90
  loc_D4F8AD: FLdPr Me
  loc_D4F8B0: MemLdRfVar from_stack_1.global_60
  loc_D4F8B3: NewIfNullPr clsctacte
  loc_D4F8B6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F8BB: FLdPr var_90
  loc_D4F8BE:  = Me.Fields
  loc_D4F8C3: FLdPr var_E8
  loc_D4F8C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F8CB: FLdPr var_10C
  loc_D4F8CE:  = Me.Value
  loc_D4F8D3: FLdRfVar var_A0
  loc_D4F8D6: LitVarI2 var_C4, 4
  loc_D4F8DB: HardType
  loc_D4F8DC: EqVarBool
  loc_D4F8DE: FFreeAd var_90 = "": var_E8 = ""
  loc_D4F8E7: FFree1Var var_A0 = ""
  loc_D4F8EA: BranchF loc_D4FAB6
  loc_D4F8ED: FLdRfVar var_A0
  loc_D4F8F0: FLdRfVar var_10C
  loc_D4F8F3: LitVarStr var_B4, "PeriCtct"
  loc_D4F8F8: PopAdLdVar
  loc_D4F8F9: FLdRfVar var_E8
  loc_D4F8FC: FLdRfVar var_90
  loc_D4F8FF: FLdPr Me
  loc_D4F902: MemLdRfVar from_stack_1.global_60
  loc_D4F905: NewIfNullPr clsctacte
  loc_D4F908: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F90D: FLdPr var_90
  loc_D4F910:  = Me.Fields
  loc_D4F915: FLdPr var_E8
  loc_D4F918: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F91D: FLdPr var_10C
  loc_D4F920:  = Me.Value
  loc_D4F925: FLdRfVar var_F8
  loc_D4F928: FLdRfVar var_1E4
  loc_D4F92B: LitVarStr var_C4, "BimeCtct"
  loc_D4F930: PopAdLdVar
  loc_D4F931: FLdRfVar var_1A0
  loc_D4F934: FLdRfVar var_160
  loc_D4F937: FLdPr Me
  loc_D4F93A: MemLdRfVar from_stack_1.global_60
  loc_D4F93D: NewIfNullPr clsctacte
  loc_D4F940: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F945: FLdPr var_160
  loc_D4F948:  = Me.Fields
  loc_D4F94D: FLdPr var_1A0
  loc_D4F950: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F955: FLdPr var_1E4
  loc_D4F958:  = Me.Value
  loc_D4F95D: FLdRfVar var_108
  loc_D4F960: FLdRfVar var_2E0
  loc_D4F963: LitVarStr var_D4, "CodiTili"
  loc_D4F968: PopAdLdVar
  loc_D4F969: FLdRfVar var_28C
  loc_D4F96C: FLdRfVar var_228
  loc_D4F96F: FLdPr Me
  loc_D4F972: MemLdRfVar from_stack_1.global_60
  loc_D4F975: NewIfNullPr clsctacte
  loc_D4F978: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F97D: FLdPr var_228
  loc_D4F980:  = Me.Fields
  loc_D4F985: FLdPr var_28C
  loc_D4F988: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F98D: FLdPr var_2E0
  loc_D4F990:  = Me.Value
  loc_D4F995: FLdRfVar var_11C
  loc_D4F998: FLdRfVar var_378
  loc_D4F99B: LitVarStr var_E4, "NumeLiqu"
  loc_D4F9A0: PopAdLdVar
  loc_D4F9A1: FLdRfVar var_354
  loc_D4F9A4: FLdRfVar var_300
  loc_D4F9A7: FLdPr Me
  loc_D4F9AA: MemLdRfVar from_stack_1.global_60
  loc_D4F9AD: NewIfNullPr clsctacte
  loc_D4F9B0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F9B5: FLdPr var_300
  loc_D4F9B8:  = Me.Fields
  loc_D4F9BD: FLdPr var_354
  loc_D4F9C0: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F9C5: FLdPr var_378
  loc_D4F9C8:  = Me.Value
  loc_D4F9CD: FLdRfVar var_170
  loc_D4F9D0: FLdRfVar var_384
  loc_D4F9D3: LitVarStr var_12C, "CuenCtct"
  loc_D4F9D8: PopAdLdVar
  loc_D4F9D9: FLdRfVar var_380
  loc_D4F9DC: FLdRfVar var_37C
  loc_D4F9DF: FLdPr Me
  loc_D4F9E2: MemLdRfVar from_stack_1.global_60
  loc_D4F9E5: NewIfNullPr clsctacte
  loc_D4F9E8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4F9ED: FLdPr var_37C
  loc_D4F9F0:  = Me.Fields
  loc_D4F9F5: FLdPr var_380
  loc_D4F9F8: from_stack_2 = Me.Item(from_stack_1)
  loc_D4F9FD: FLdPr var_384
  loc_D4FA00:  = Me.Value
  loc_D4FA05: FLdRfVar var_1F4
  loc_D4FA08: FLdRfVar var_390
  loc_D4FA0B: LitVarStr var_13C, "CodiConc"
  loc_D4FA10: PopAdLdVar
  loc_D4FA11: FLdRfVar var_38C
  loc_D4FA14: FLdRfVar var_388
  loc_D4FA17: FLdPr Me
  loc_D4FA1A: MemLdRfVar from_stack_1.global_60
  loc_D4FA1D: NewIfNullPr clsctacte
  loc_D4FA20: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FA25: FLdPr var_388
  loc_D4FA28:  = Me.Fields
  loc_D4FA2D: FLdPr var_38C
  loc_D4FA30: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FA35: FLdPr var_390
  loc_D4FA38:  = Me.Value
  loc_D4FA3D: FLdRfVar var_1F4
  loc_D4FA40: CStrVarTmp
  loc_D4FA41: FStStrNoPop var_174
  loc_D4FA44: FLdRfVar var_170
  loc_D4FA47: CI4Var
  loc_D4FA49: FLdRfVar var_11C
  loc_D4FA4C: CI2Var
  loc_D4FA4D: FLdRfVar var_108
  loc_D4FA50: CI2Var
  loc_D4FA51: FLdRfVar var_F8
  loc_D4FA54: CI2Var
  loc_D4FA55: FLdRfVar var_A0
  loc_D4FA58: CI2Var
  loc_D4FA59: ImpAdCallI2 Proc_270_115_AD64A0(, , , , , )
  loc_D4FA5E: CStrI4
  loc_D4FA60: FStStrNoPop var_178
  loc_D4FA63: FLdPr Me
  loc_D4FA66: VCallAd Control_ID_NumeOrdeTxt
  loc_D4FA69: FStAdFunc var_394
  loc_D4FA6C: FLdPr var_394
  loc_D4FA6F: Me.Text = from_stack_1
  loc_D4FA74: FFreeStr var_174 = ""
  loc_D4FA7B: FFreeAd var_90 = "": var_E8 = "": var_160 = "": var_1A0 = "": var_228 = "": var_28C = "": var_300 = "": var_354 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_10C = "": var_1E4 = "": var_2E0 = "": var_378 = "": var_384 = "": var_390 = ""
  loc_D4FAA4: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4FAB3: Branch loc_D4FEE9
  loc_D4FAB6: FLdRfVar var_A0
  loc_D4FAB9: FLdRfVar var_10C
  loc_D4FABC: LitVarStr var_B4, "CodiOfic"
  loc_D4FAC1: PopAdLdVar
  loc_D4FAC2: FLdRfVar var_E8
  loc_D4FAC5: FLdRfVar var_90
  loc_D4FAC8: FLdPr Me
  loc_D4FACB: MemLdRfVar from_stack_1.global_60
  loc_D4FACE: NewIfNullPr clsctacte
  loc_D4FAD1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FAD6: FLdPr var_90
  loc_D4FAD9:  = Me.Fields
  loc_D4FADE: FLdPr var_E8
  loc_D4FAE1: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FAE6: FLdPr var_10C
  loc_D4FAE9:  = Me.Value
  loc_D4FAEE: FLdRfVar var_A0
  loc_D4FAF1: LitVarI2 var_C4, 6
  loc_D4FAF6: HardType
  loc_D4FAF7: EqVarBool
  loc_D4FAF9: FFreeAd var_90 = "": var_E8 = ""
  loc_D4FB02: FFree1Var var_A0 = ""
  loc_D4FB05: BranchF loc_D4FCD1
  loc_D4FB08: FLdRfVar var_A0
  loc_D4FB0B: FLdRfVar var_10C
  loc_D4FB0E: LitVarStr var_B4, "PeriCtct"
  loc_D4FB13: PopAdLdVar
  loc_D4FB14: FLdRfVar var_E8
  loc_D4FB17: FLdRfVar var_90
  loc_D4FB1A: FLdPr Me
  loc_D4FB1D: MemLdRfVar from_stack_1.global_60
  loc_D4FB20: NewIfNullPr clsctacte
  loc_D4FB23: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FB28: FLdPr var_90
  loc_D4FB2B:  = Me.Fields
  loc_D4FB30: FLdPr var_E8
  loc_D4FB33: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FB38: FLdPr var_10C
  loc_D4FB3B:  = Me.Value
  loc_D4FB40: FLdRfVar var_F8
  loc_D4FB43: FLdRfVar var_1E4
  loc_D4FB46: LitVarStr var_C4, "BimeCtct"
  loc_D4FB4B: PopAdLdVar
  loc_D4FB4C: FLdRfVar var_1A0
  loc_D4FB4F: FLdRfVar var_160
  loc_D4FB52: FLdPr Me
  loc_D4FB55: MemLdRfVar from_stack_1.global_60
  loc_D4FB58: NewIfNullPr clsctacte
  loc_D4FB5B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FB60: FLdPr var_160
  loc_D4FB63:  = Me.Fields
  loc_D4FB68: FLdPr var_1A0
  loc_D4FB6B: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FB70: FLdPr var_1E4
  loc_D4FB73:  = Me.Value
  loc_D4FB78: FLdRfVar var_108
  loc_D4FB7B: FLdRfVar var_2E0
  loc_D4FB7E: LitVarStr var_D4, "CodiTili"
  loc_D4FB83: PopAdLdVar
  loc_D4FB84: FLdRfVar var_28C
  loc_D4FB87: FLdRfVar var_228
  loc_D4FB8A: FLdPr Me
  loc_D4FB8D: MemLdRfVar from_stack_1.global_60
  loc_D4FB90: NewIfNullPr clsctacte
  loc_D4FB93: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FB98: FLdPr var_228
  loc_D4FB9B:  = Me.Fields
  loc_D4FBA0: FLdPr var_28C
  loc_D4FBA3: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FBA8: FLdPr var_2E0
  loc_D4FBAB:  = Me.Value
  loc_D4FBB0: FLdRfVar var_11C
  loc_D4FBB3: FLdRfVar var_378
  loc_D4FBB6: LitVarStr var_E4, "NumeLiqu"
  loc_D4FBBB: PopAdLdVar
  loc_D4FBBC: FLdRfVar var_354
  loc_D4FBBF: FLdRfVar var_300
  loc_D4FBC2: FLdPr Me
  loc_D4FBC5: MemLdRfVar from_stack_1.global_60
  loc_D4FBC8: NewIfNullPr clsctacte
  loc_D4FBCB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FBD0: FLdPr var_300
  loc_D4FBD3:  = Me.Fields
  loc_D4FBD8: FLdPr var_354
  loc_D4FBDB: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FBE0: FLdPr var_378
  loc_D4FBE3:  = Me.Value
  loc_D4FBE8: FLdRfVar var_170
  loc_D4FBEB: FLdRfVar var_384
  loc_D4FBEE: LitVarStr var_12C, "CuenCtct"
  loc_D4FBF3: PopAdLdVar
  loc_D4FBF4: FLdRfVar var_380
  loc_D4FBF7: FLdRfVar var_37C
  loc_D4FBFA: FLdPr Me
  loc_D4FBFD: MemLdRfVar from_stack_1.global_60
  loc_D4FC00: NewIfNullPr clsctacte
  loc_D4FC03: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FC08: FLdPr var_37C
  loc_D4FC0B:  = Me.Fields
  loc_D4FC10: FLdPr var_380
  loc_D4FC13: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FC18: FLdPr var_384
  loc_D4FC1B:  = Me.Value
  loc_D4FC20: FLdRfVar var_1F4
  loc_D4FC23: FLdRfVar var_390
  loc_D4FC26: LitVarStr var_13C, "CodiConc"
  loc_D4FC2B: PopAdLdVar
  loc_D4FC2C: FLdRfVar var_38C
  loc_D4FC2F: FLdRfVar var_388
  loc_D4FC32: FLdPr Me
  loc_D4FC35: MemLdRfVar from_stack_1.global_60
  loc_D4FC38: NewIfNullPr clsctacte
  loc_D4FC3B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FC40: FLdPr var_388
  loc_D4FC43:  = Me.Fields
  loc_D4FC48: FLdPr var_38C
  loc_D4FC4B: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FC50: FLdPr var_390
  loc_D4FC53:  = Me.Value
  loc_D4FC58: FLdRfVar var_1F4
  loc_D4FC5B: CStrVarTmp
  loc_D4FC5C: FStStrNoPop var_174
  loc_D4FC5F: FLdRfVar var_170
  loc_D4FC62: CI4Var
  loc_D4FC64: FLdRfVar var_11C
  loc_D4FC67: CI2Var
  loc_D4FC68: FLdRfVar var_108
  loc_D4FC6B: CI2Var
  loc_D4FC6C: FLdRfVar var_F8
  loc_D4FC6F: CI2Var
  loc_D4FC70: FLdRfVar var_A0
  loc_D4FC73: CI2Var
  loc_D4FC74: ImpAdCallI2 Proc_270_114_AD6324(, , , , , )
  loc_D4FC79: CStrI4
  loc_D4FC7B: FStStrNoPop var_178
  loc_D4FC7E: FLdPr Me
  loc_D4FC81: VCallAd Control_ID_NumeOrdeTxt
  loc_D4FC84: FStAdFunc var_394
  loc_D4FC87: FLdPr var_394
  loc_D4FC8A: Me.Text = from_stack_1
  loc_D4FC8F: FFreeStr var_174 = ""
  loc_D4FC96: FFreeAd var_90 = "": var_E8 = "": var_160 = "": var_1A0 = "": var_228 = "": var_28C = "": var_300 = "": var_354 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_10C = "": var_1E4 = "": var_2E0 = "": var_378 = "": var_384 = "": var_390 = ""
  loc_D4FCBF: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4FCCE: Branch loc_D4FEE9
  loc_D4FCD1: FLdRfVar var_A0
  loc_D4FCD4: FLdRfVar var_10C
  loc_D4FCD7: LitVarStr var_B4, "CodiOfic"
  loc_D4FCDC: PopAdLdVar
  loc_D4FCDD: FLdRfVar var_E8
  loc_D4FCE0: FLdRfVar var_90
  loc_D4FCE3: FLdPr Me
  loc_D4FCE6: MemLdRfVar from_stack_1.global_60
  loc_D4FCE9: NewIfNullPr clsctacte
  loc_D4FCEC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FCF1: FLdPr var_90
  loc_D4FCF4:  = Me.Fields
  loc_D4FCF9: FLdPr var_E8
  loc_D4FCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FD01: FLdPr var_10C
  loc_D4FD04:  = Me.Value
  loc_D4FD09: FLdRfVar var_A0
  loc_D4FD0C: LitVarI2 var_C4, 7
  loc_D4FD11: HardType
  loc_D4FD12: EqVarBool
  loc_D4FD14: FFreeAd var_90 = "": var_E8 = ""
  loc_D4FD1D: FFree1Var var_A0 = ""
  loc_D4FD20: BranchF loc_D4FEE9
  loc_D4FD23: FLdRfVar var_A0
  loc_D4FD26: FLdRfVar var_10C
  loc_D4FD29: LitVarStr var_B4, "PeriCtct"
  loc_D4FD2E: PopAdLdVar
  loc_D4FD2F: FLdRfVar var_E8
  loc_D4FD32: FLdRfVar var_90
  loc_D4FD35: FLdPr Me
  loc_D4FD38: MemLdRfVar from_stack_1.global_60
  loc_D4FD3B: NewIfNullPr clsctacte
  loc_D4FD3E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FD43: FLdPr var_90
  loc_D4FD46:  = Me.Fields
  loc_D4FD4B: FLdPr var_E8
  loc_D4FD4E: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FD53: FLdPr var_10C
  loc_D4FD56:  = Me.Value
  loc_D4FD5B: FLdRfVar var_F8
  loc_D4FD5E: FLdRfVar var_1E4
  loc_D4FD61: LitVarStr var_C4, "BimeCtct"
  loc_D4FD66: PopAdLdVar
  loc_D4FD67: FLdRfVar var_1A0
  loc_D4FD6A: FLdRfVar var_160
  loc_D4FD6D: FLdPr Me
  loc_D4FD70: MemLdRfVar from_stack_1.global_60
  loc_D4FD73: NewIfNullPr clsctacte
  loc_D4FD76: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FD7B: FLdPr var_160
  loc_D4FD7E:  = Me.Fields
  loc_D4FD83: FLdPr var_1A0
  loc_D4FD86: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FD8B: FLdPr var_1E4
  loc_D4FD8E:  = Me.Value
  loc_D4FD93: FLdRfVar var_108
  loc_D4FD96: FLdRfVar var_2E0
  loc_D4FD99: LitVarStr var_D4, "CodiTili"
  loc_D4FD9E: PopAdLdVar
  loc_D4FD9F: FLdRfVar var_28C
  loc_D4FDA2: FLdRfVar var_228
  loc_D4FDA5: FLdPr Me
  loc_D4FDA8: MemLdRfVar from_stack_1.global_60
  loc_D4FDAB: NewIfNullPr clsctacte
  loc_D4FDAE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FDB3: FLdPr var_228
  loc_D4FDB6:  = Me.Fields
  loc_D4FDBB: FLdPr var_28C
  loc_D4FDBE: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FDC3: FLdPr var_2E0
  loc_D4FDC6:  = Me.Value
  loc_D4FDCB: FLdRfVar var_11C
  loc_D4FDCE: FLdRfVar var_378
  loc_D4FDD1: LitVarStr var_E4, "NumeLiqu"
  loc_D4FDD6: PopAdLdVar
  loc_D4FDD7: FLdRfVar var_354
  loc_D4FDDA: FLdRfVar var_300
  loc_D4FDDD: FLdPr Me
  loc_D4FDE0: MemLdRfVar from_stack_1.global_60
  loc_D4FDE3: NewIfNullPr clsctacte
  loc_D4FDE6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FDEB: FLdPr var_300
  loc_D4FDEE:  = Me.Fields
  loc_D4FDF3: FLdPr var_354
  loc_D4FDF6: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FDFB: FLdPr var_378
  loc_D4FDFE:  = Me.Value
  loc_D4FE03: FLdRfVar var_170
  loc_D4FE06: FLdRfVar var_384
  loc_D4FE09: LitVarStr var_12C, "CuenCtct"
  loc_D4FE0E: PopAdLdVar
  loc_D4FE0F: FLdRfVar var_380
  loc_D4FE12: FLdRfVar var_37C
  loc_D4FE15: FLdPr Me
  loc_D4FE18: MemLdRfVar from_stack_1.global_60
  loc_D4FE1B: NewIfNullPr clsctacte
  loc_D4FE1E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FE23: FLdPr var_37C
  loc_D4FE26:  = Me.Fields
  loc_D4FE2B: FLdPr var_380
  loc_D4FE2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FE33: FLdPr var_384
  loc_D4FE36:  = Me.Value
  loc_D4FE3B: FLdRfVar var_1F4
  loc_D4FE3E: FLdRfVar var_390
  loc_D4FE41: LitVarStr var_13C, "CodiConc"
  loc_D4FE46: PopAdLdVar
  loc_D4FE47: FLdRfVar var_38C
  loc_D4FE4A: FLdRfVar var_388
  loc_D4FE4D: FLdPr Me
  loc_D4FE50: MemLdRfVar from_stack_1.global_60
  loc_D4FE53: NewIfNullPr clsctacte
  loc_D4FE56: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FE5B: FLdPr var_388
  loc_D4FE5E:  = Me.Fields
  loc_D4FE63: FLdPr var_38C
  loc_D4FE66: from_stack_2 = Me.Item(from_stack_1)
  loc_D4FE6B: FLdPr var_390
  loc_D4FE6E:  = Me.Value
  loc_D4FE73: FLdRfVar var_1F4
  loc_D4FE76: CStrVarTmp
  loc_D4FE77: FStStrNoPop var_174
  loc_D4FE7A: FLdRfVar var_170
  loc_D4FE7D: CI4Var
  loc_D4FE7F: FLdRfVar var_11C
  loc_D4FE82: CI2Var
  loc_D4FE83: FLdRfVar var_108
  loc_D4FE86: CI2Var
  loc_D4FE87: FLdRfVar var_F8
  loc_D4FE8A: CI2Var
  loc_D4FE8B: FLdRfVar var_A0
  loc_D4FE8E: CI2Var
  loc_D4FE8F: ImpAdCallI2 Proc_270_113_AD6914(, , , , , )
  loc_D4FE94: CStrI4
  loc_D4FE96: FStStrNoPop var_178
  loc_D4FE99: FLdPr Me
  loc_D4FE9C: VCallAd Control_ID_NumeOrdeTxt
  loc_D4FE9F: FStAdFunc var_394
  loc_D4FEA2: FLdPr var_394
  loc_D4FEA5: Me.Text = from_stack_1
  loc_D4FEAA: FFreeStr var_174 = ""
  loc_D4FEB1: FFreeAd var_90 = "": var_E8 = "": var_160 = "": var_1A0 = "": var_228 = "": var_28C = "": var_300 = "": var_354 = "": var_37C = "": var_380 = "": var_388 = "": var_38C = "": var_10C = "": var_1E4 = "": var_2E0 = "": var_378 = "": var_384 = "": var_390 = ""
  loc_D4FEDA: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D4FEE9: FLdRfVar var_396
  loc_D4FEEC: FLdPr Me
  loc_D4FEEF: MemLdRfVar from_stack_1.global_60
  loc_D4FEF2: NewIfNullPr clsctacte
  loc_D4FEF5: from_stack_1 = clsctacte.CodiTimo
  loc_D4FEFA: FLdI2 var_396
  loc_D4FEFD: LitI2_Byte &HB
  loc_D4FEFF: EqI2
  loc_D4FF00: FLdRfVar var_398
  loc_D4FF03: FLdPr Me
  loc_D4FF06: MemLdRfVar from_stack_1.global_60
  loc_D4FF09: NewIfNullPr clsctacte
  loc_D4FF0C: from_stack_1 = clsctacte.CodiTimo
  loc_D4FF11: FLdI2 var_398
  loc_D4FF14: LitI2_Byte &HC
  loc_D4FF16: EqI2
  loc_D4FF17: OrI4
  loc_D4FF18: FLdRfVar var_39A
  loc_D4FF1B: FLdPr Me
  loc_D4FF1E: MemLdRfVar from_stack_1.global_60
  loc_D4FF21: NewIfNullPr clsctacte
  loc_D4FF24: from_stack_1 = clsctacte.CodiTimo
  loc_D4FF29: FLdI2 var_39A
  loc_D4FF2C: LitI2_Byte &HE
  loc_D4FF2E: EqI2
  loc_D4FF2F: OrI4
  loc_D4FF30: FLdRfVar var_39C
  loc_D4FF33: FLdPr Me
  loc_D4FF36: MemLdRfVar from_stack_1.global_60
  loc_D4FF39: NewIfNullPr clsctacte
  loc_D4FF3C: from_stack_1 = clsctacte.CodiTimo
  loc_D4FF41: FLdI2 var_39C
  loc_D4FF44: LitI2_Byte &HF
  loc_D4FF46: EqI2
  loc_D4FF47: OrI4
  loc_D4FF48: BranchF loc_D4FFD1
  loc_D4FF4B: FLdRfVar var_396
  loc_D4FF4E: FLdPr Me
  loc_D4FF51: MemLdRfVar from_stack_1.global_60
  loc_D4FF54: NewIfNullPr clsctacte
  loc_D4FF57: from_stack_1 = clsctacte.CodiOfic
  loc_D4FF5C: FLdRfVar var_178
  loc_D4FF5F: FLdPr Me
  loc_D4FF62: MemLdRfVar from_stack_1.global_60
  loc_D4FF65: NewIfNullPr clsctacte
  loc_D4FF68: from_stack_1 = clsctacte.CuenCtct
  loc_D4FF6D: FLdRfVar var_174
  loc_D4FF70: FLdPr Me
  loc_D4FF73: VCallAd Control_ID_DetaCtctTxt
  loc_D4FF76: FStAdFunc var_90
  loc_D4FF79: FLdPr var_90
  loc_D4FF7C:  = Me.Text
  loc_D4FF81: ILdRf var_174
  loc_D4FF84: FLdRfVar var_17C
  loc_D4FF87: FLdPr Me
  loc_D4FF8A: MemLdRfVar from_stack_1.global_60
  loc_D4FF8D: NewIfNullPr clsctacte
  loc_D4FF90: from_stack_1 = clsctacte.ExpeCtct
  loc_D4FF95: ILdRf var_17C
  loc_D4FF98: ILdRf var_178
  loc_D4FF9B: FLdI2 var_396
  loc_D4FF9E: CUI1I2
  loc_D4FFA0: ImpAdCallI2 Proc_270_101_AD5D38(, , )
  loc_D4FFA5: FStStrNoPop var_180
  loc_D4FFA8: ConcatStr
  loc_D4FFA9: FStStrNoPop var_184
  loc_D4FFAC: FLdPr Me
  loc_D4FFAF: VCallAd Control_ID_DetaCtctTxt
  loc_D4FFB2: FStAdFunc var_E8
  loc_D4FFB5: FLdPr var_E8
  loc_D4FFB8: Me.Text = from_stack_1
  loc_D4FFBD: FFreeStr var_178 = "": var_17C = "": var_174 = "": var_180 = ""
  loc_D4FFCA: FFreeAd var_90 = ""
  loc_D4FFD1: FLdRfVar var_A0
  loc_D4FFD4: FLdRfVar var_10C
  loc_D4FFD7: LitVarStr var_B4, "CodiConc"
  loc_D4FFDC: PopAdLdVar
  loc_D4FFDD: FLdRfVar var_E8
  loc_D4FFE0: FLdRfVar var_90
  loc_D4FFE3: FLdPr Me
  loc_D4FFE6: MemLdRfVar from_stack_1.global_60
  loc_D4FFE9: NewIfNullPr clsctacte
  loc_D4FFEC: from_stack_1v = clsctacte.RsFrmGet()
  loc_D4FFF1: FLdPr var_90
  loc_D4FFF4:  = Me.Fields
  loc_D4FFF9: FLdPr var_E8
  loc_D4FFFC: from_stack_2 = Me.Item(from_stack_1)
  loc_D50001: FLdPr var_10C
  loc_D50004:  = Me.Value
  loc_D50009: FLdRfVar var_A0
  loc_D5000C: LitVarStr var_C4, "13030202"
  loc_D50011: HardType
  loc_D50012: EqVarBool
  loc_D50014: FFreeAd var_90 = "": var_E8 = ""
  loc_D5001D: FFree1Var var_A0 = ""
  loc_D50020: BranchF loc_D502F4
  loc_D50023: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D50026: LitStr " AND NumeAcpa = 0"
  loc_D50029: ConcatStr
  loc_D5002A: FStStrNoPop var_174
  loc_D5002D: LitStr " AND PeriBole = 0"
  loc_D50030: ConcatStr
  loc_D50031: FStStrNoPop var_178
  loc_D50034: LitStr " AND NumeBole = 0"
  loc_D50037: ConcatStr
  loc_D50038: FStStrNoPop var_17C
  loc_D5003B: LitStr " AND PeriCtct = 0"
  loc_D5003E: ConcatStr
  loc_D5003F: FStStrNoPop var_180
  loc_D50042: LitStr " AND NumeCtct = 0"
  loc_D50045: ConcatStr
  loc_D50046: FStStrNoPop var_184
  loc_D50049: LitStr " AND MoviCtct = 0"
  loc_D5004C: ConcatStr
  loc_D5004D: FStStrNoPop var_194
  loc_D50050: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D50053: ConcatStr
  loc_D50054: FStStrNoPop var_1F8
  loc_D50057: FLdPr Me
  loc_D5005A: MemLdRfVar from_stack_1.global_88
  loc_D5005D: NewIfNullPr clsdetapago
  loc_D50060: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D50065: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D50076: LitI4 0
  loc_D5007B: LitI4 1
  loc_D50080: FLdRfVar var_A4
  loc_D50083: Redim
  loc_D5008D: FLdPr Me
  loc_D50090: MemLdRfVar from_stack_1.global_88
  loc_D50093: NewIfNullAd
  loc_D50096: FStAd var_90 
  loc_D5009A: FLdRfVar var_90
  loc_D5009D: CVarRef
  loc_D500A2: ParmAry1St
  loc_D500A8: FLdPr Me
  loc_D500AB: VCallAd Control_ID_DetaPagoDgd
  loc_D500AE: CVarAd
  loc_D500B2: ParmAry1St
  loc_D500B8: FLdRfVar var_A4
  loc_D500BB: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D500C0: ILdRf var_90
  loc_D500C3: CastAd
  loc_D500C6: FLdPr Me
  loc_D500C9: MemStAdFunc
  loc_D500CD: FLdRfVar var_A4
  loc_D500D0: Erase
  loc_D500D1: FFree1Ad var_90
  loc_D500D4: LitStr "SELECT CodiCtde, DebeCtde FROM ctactedeta WHERE CodiOfic = 0 AND CuenCtct = 0"
  loc_D500D7: FLdPr Me
  loc_D500DA: MemLdRfVar from_stack_1.global_56
  loc_D500DD: NewIfNullPr clsctacte
  loc_D500E0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D500E5: LitVar_FALSE
  loc_D500E9: PopAdLdVar
  loc_D500EA: FLdPr Me
  loc_D500ED: VCallAd Control_ID_CtaCteDetaDgd
  loc_D500F0: FStAdFunc var_90
  loc_D500F3: FLdPr var_90
  loc_D500F6: LateIdSt
  loc_D500FB: FFree1Ad var_90
  loc_D500FE: LitVar_FALSE
  loc_D50102: PopAdLdVar
  loc_D50103: FLdPr Me
  loc_D50106: VCallAd Control_ID_DetaPagoDgd
  loc_D50109: FStAdFunc var_90
  loc_D5010C: FLdPr var_90
  loc_D5010F: LateIdSt
  loc_D50114: FFree1Ad var_90
  loc_D50117: LitVar_TRUE var_B4
  loc_D5011A: PopAdLdVar
  loc_D5011B: FLdPr Me
  loc_D5011E: VCallAd Control_ID_RecaBoleDgd
  loc_D50121: FStAdFunc var_90
  loc_D50124: FLdPr var_90
  loc_D50127: LateIdSt
  loc_D5012C: FFree1Ad var_90
  loc_D5012F: LitStr "SELECT * FROM recabole"
  loc_D50132: LitStr " WHERE CodiOfic = "
  loc_D50135: ConcatStr
  loc_D50136: FStStrNoPop var_174
  loc_D50139: ImpAdLdUI1
  loc_D5013D: CStrI2
  loc_D5013F: FStStrNoPop var_178
  loc_D50142: ConcatStr
  loc_D50143: FStStrNoPop var_17C
  loc_D50146: LitStr " AND CuenCtct = '"
  loc_D50149: ConcatStr
  loc_D5014A: FStStrNoPop var_184
  loc_D5014D: FLdRfVar var_180
  loc_D50150: FLdPr Me
  loc_D50153: VCallAd Control_ID_NumeCtaTxt
  loc_D50156: FStAdFunc var_90
  loc_D50159: FLdPr var_90
  loc_D5015C:  = Me.Text
  loc_D50161: ILdRf var_180
  loc_D50164: ConcatStr
  loc_D50165: FStStrNoPop var_194
  loc_D50168: LitStr "'"
  loc_D5016B: ConcatStr
  loc_D5016C: FStStrNoPop var_1F8
  loc_D5016F: LitStr " AND PeriLiqu = "
  loc_D50172: ConcatStr
  loc_D50173: CVarStr var_F8
  loc_D50176: FLdRfVar var_A0
  loc_D50179: FLdRfVar var_160
  loc_D5017C: LitVarStr var_B4, "PeriCtct"
  loc_D50181: PopAdLdVar
  loc_D50182: FLdRfVar var_10C
  loc_D50185: FLdRfVar var_E8
  loc_D50188: FLdPr Me
  loc_D5018B: MemLdRfVar from_stack_1.global_60
  loc_D5018E: NewIfNullPr clsctacte
  loc_D50191: from_stack_1v = clsctacte.RsFrmGet()
  loc_D50196: FLdPr var_E8
  loc_D50199:  = Me.Fields
  loc_D5019E: FLdPr var_10C
  loc_D501A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D501A6: FLdPr var_160
  loc_D501A9:  = Me.Value
  loc_D501AE: FLdRfVar var_A0
  loc_D501B1: ConcatVar var_108
  loc_D501B5: LitVarStr var_C4, " AND CodiTili = "
  loc_D501BA: ConcatVar var_11C
  loc_D501BE: FLdRfVar var_170
  loc_D501C1: FLdRfVar var_228
  loc_D501C4: LitVarStr var_D4, "CodiTili"
  loc_D501C9: PopAdLdVar
  loc_D501CA: FLdRfVar var_1E4
  loc_D501CD: FLdRfVar var_1A0
  loc_D501D0: FLdPr Me
  loc_D501D3: MemLdRfVar from_stack_1.global_60
  loc_D501D6: NewIfNullPr clsctacte
  loc_D501D9: from_stack_1v = clsctacte.RsFrmGet()
  loc_D501DE: FLdPr var_1A0
  loc_D501E1:  = Me.Fields
  loc_D501E6: FLdPr var_1E4
  loc_D501E9: from_stack_2 = Me.Item(from_stack_1)
  loc_D501EE: FLdPr var_228
  loc_D501F1:  = Me.Value
  loc_D501F6: FLdRfVar var_170
  loc_D501F9: ConcatVar var_1F4
  loc_D501FD: LitVarStr var_E4, " AND NumeLiqu = "
  loc_D50202: ConcatVar var_214
  loc_D50206: FLdRfVar var_224
  loc_D50209: FLdRfVar var_300
  loc_D5020C: LitVarStr var_12C, "NumeLiqu"
  loc_D50211: PopAdLdVar
  loc_D50212: FLdRfVar var_2E0
  loc_D50215: FLdRfVar var_28C
  loc_D50218: FLdPr Me
  loc_D5021B: MemLdRfVar from_stack_1.global_60
  loc_D5021E: NewIfNullPr clsctacte
  loc_D50221: from_stack_1v = clsctacte.RsFrmGet()
  loc_D50226: FLdPr var_28C
  loc_D50229:  = Me.Fields
  loc_D5022E: FLdPr var_2E0
  loc_D50231: from_stack_2 = Me.Item(from_stack_1)
  loc_D50236: FLdPr var_300
  loc_D50239:  = Me.Value
  loc_D5023E: FLdRfVar var_224
  loc_D50241: ConcatVar var_238
  loc_D50245: CStrVarVal var_1FC
  loc_D50249: FLdPr Me
  loc_D5024C: MemLdRfVar from_stack_1.global_124
  loc_D5024F: NewIfNullPr clsrecabole
  loc_D50252: Call clsrecabole.RedefineRS(from_stack_1v)
  loc_D50257: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_184 = "": var_180 = "": var_194 = "": var_1F8 = ""
  loc_D5026A: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = ""
  loc_D50281: FFreeVar var_F8 = "": var_A0 = "": var_108 = "": var_11C = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = ""
  loc_D50296: LitI4 0
  loc_D5029B: LitI4 1
  loc_D502A0: FLdRfVar var_A4
  loc_D502A3: Redim
  loc_D502AD: FLdPr Me
  loc_D502B0: MemLdRfVar from_stack_1.global_124
  loc_D502B3: NewIfNullAd
  loc_D502B6: FStAd var_90 
  loc_D502BA: FLdRfVar var_90
  loc_D502BD: CVarRef
  loc_D502C2: ParmAry1St
  loc_D502C8: FLdPr Me
  loc_D502CB: VCallAd Control_ID_RecaBoleDgd
  loc_D502CE: CVarAd
  loc_D502D2: ParmAry1St
  loc_D502D8: FLdRfVar var_A4
  loc_D502DB: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D502E0: ILdRf var_90
  loc_D502E3: CastAd
  loc_D502E6: FLdPr Me
  loc_D502E9: MemStAdFunc
  loc_D502ED: FLdRfVar var_A4
  loc_D502F0: Erase
  loc_D502F1: FFree1Ad var_90
  loc_D502F4: Branch loc_D50377
  loc_D502F7: LitStr vbNullString
  loc_D502FA: FLdPr Me
  loc_D502FD: VCallAd Control_ID_DetaCtctTxt
  loc_D50300: FStAdFunc var_90
  loc_D50303: FLdPr var_90
  loc_D50306: Me.Text = from_stack_1
  loc_D5030B: FFree1Ad var_90
  loc_D5030E: LitStr vbNullString
  loc_D50311: FLdPr Me
  loc_D50314: VCallAd Control_ID_CodiUsuaTxt
  loc_D50317: FStAdFunc var_90
  loc_D5031A: FLdPr var_90
  loc_D5031D: Me.Text = from_stack_1
  loc_D50322: FFree1Ad var_90
  loc_D50325: LitStr vbNullString
  loc_D50328: FLdPr Me
  loc_D5032B: VCallAd Control_ID_CompCtctTxt
  loc_D5032E: FStAdFunc var_90
  loc_D50331: FLdPr var_90
  loc_D50334: Me.Text = from_stack_1
  loc_D50339: FFree1Ad var_90
  loc_D5033C: LitStr vbNullString
  loc_D5033F: FLdPr Me
  loc_D50342: VCallAd Control_ID_NumeLiquTxt
  loc_D50345: FStAdFunc var_90
  loc_D50348: FLdPr var_90
  loc_D5034B: Me.Text = from_stack_1
  loc_D50350: FFree1Ad var_90
  loc_D50353: LitStr vbNullString
  loc_D50356: FLdPr Me
  loc_D50359: VCallAd Control_ID_NumeOrdeTxt
  loc_D5035C: FStAdFunc var_90
  loc_D5035F: FLdPr var_90
  loc_D50362: Me.Text = from_stack_1
  loc_D50367: FFree1Ad var_90
  loc_D5036A: LitI4 0
  loc_D5036F: FStR4 var_88
  loc_D50372: LitI2_Byte 0
  loc_D50374: FStI2 var_8A
  loc_D50377: Branch loc_D504E3
  loc_D5037A: LitStr vbNullString
  loc_D5037D: FLdPr Me
  loc_D50380: VCallAd Control_ID_DetaCtctTxt
  loc_D50383: FStAdFunc var_90
  loc_D50386: FLdPr var_90
  loc_D50389: Me.Text = from_stack_1
  loc_D5038E: FFree1Ad var_90
  loc_D50391: LitStr vbNullString
  loc_D50394: FLdPr Me
  loc_D50397: VCallAd Control_ID_CodiUsuaTxt
  loc_D5039A: FStAdFunc var_90
  loc_D5039D: FLdPr var_90
  loc_D503A0: Me.Text = from_stack_1
  loc_D503A5: FFree1Ad var_90
  loc_D503A8: LitStr vbNullString
  loc_D503AB: FLdPr Me
  loc_D503AE: VCallAd Control_ID_CompCtctTxt
  loc_D503B1: FStAdFunc var_90
  loc_D503B4: FLdPr var_90
  loc_D503B7: Me.Text = from_stack_1
  loc_D503BC: FFree1Ad var_90
  loc_D503BF: LitStr vbNullString
  loc_D503C2: FLdPr Me
  loc_D503C5: VCallAd Control_ID_NumeLiquTxt
  loc_D503C8: FStAdFunc var_90
  loc_D503CB: FLdPr var_90
  loc_D503CE: Me.Text = from_stack_1
  loc_D503D3: FFree1Ad var_90
  loc_D503D6: LitStr vbNullString
  loc_D503D9: FLdPr Me
  loc_D503DC: VCallAd Control_ID_NumeOrdeTxt
  loc_D503DF: FStAdFunc var_90
  loc_D503E2: FLdPr var_90
  loc_D503E5: Me.Text = from_stack_1
  loc_D503EA: FFree1Ad var_90
  loc_D503ED: LitI4 0
  loc_D503F2: FStR4 var_88
  loc_D503F5: LitI2_Byte 0
  loc_D503F7: FStI2 var_8A
  loc_D503FA: LitStr "SELECT licodeta.CodiSubr CodiCtde, IFNULL(DetaSubr,'Gasto de Envio') DetaCtde, ImpoLcde ImpoLtde, DecaLcde DecaLtde, ExceLcde ExenLtde, TotaLcde TotaLtde FROM licodeta"
  loc_D503FD: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo"
  loc_D50400: ConcatStr
  loc_D50401: FStStrNoPop var_174
  loc_D50404: LitStr " AND subrubro.CodiRubr = licodeta.CodiRubr"
  loc_D50407: ConcatStr
  loc_D50408: FStStrNoPop var_178
  loc_D5040B: LitStr " AND subrubro.PeriOrde = licodeta.PeriLiqu"
  loc_D5040E: ConcatStr
  loc_D5040F: FStStrNoPop var_17C
  loc_D50412: LitStr " AND subrubro.CodiSubr = licodeta.CodiSubr"
  loc_D50415: ConcatStr
  loc_D50416: FStStrNoPop var_180
  loc_D50419: LitStr " WHERE licodeta.PeriLiqu = 0"
  loc_D5041C: ConcatStr
  loc_D5041D: FStStrNoPop var_184
  loc_D50420: LitStr " AND licodeta.BimeLiqu = 0"
  loc_D50423: ConcatStr
  loc_D50424: FStStrNoPop var_194
  loc_D50427: LitStr " AND licodeta.CodiTili = 0"
  loc_D5042A: ConcatStr
  loc_D5042B: FStStrNoPop var_1F8
  loc_D5042E: LitStr " AND licodeta.NumeLiqu = 0"
  loc_D50431: ConcatStr
  loc_D50432: FStStrNoPop var_1FC
  loc_D50435: LitStr " AND licodeta.CodiCome = 0"
  loc_D50438: ConcatStr
  loc_D50439: FStStrNoPop var_200
  loc_D5043C: LitStr " AND licodeta.TipoVenc = 1"
  loc_D5043F: ConcatStr
  loc_D50440: FStStrNoPop var_204
  loc_D50443: FLdPr Me
  loc_D50446: MemLdRfVar from_stack_1.global_56
  loc_D50449: NewIfNullPr clsctacte
  loc_D5044C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D50451: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = "": var_1F8 = "": var_1FC = "": var_200 = ""
  loc_D50468: FLdRfVar var_188
  loc_D5046B: FLdPr Me
  loc_D5046E: MemLdRfVar from_stack_1.global_56
  loc_D50471: NewIfNullPr clsctacte
  loc_D50474: from_stack_1 = clsctacte.RecordCount
  loc_D50479: ILdRf var_188
  loc_D5047C: LitI4 0
  loc_D50481: GtI4
  loc_D50482: BranchF loc_D504E3
  loc_D50485: LitI4 0
  loc_D5048A: LitI4 1
  loc_D5048F: FLdRfVar var_A4
  loc_D50492: Redim
  loc_D5049C: FLdPr Me
  loc_D5049F: MemLdRfVar from_stack_1.global_56
  loc_D504A2: NewIfNullAd
  loc_D504A5: FStAd var_90 
  loc_D504A9: FLdRfVar var_90
  loc_D504AC: CVarRef
  loc_D504B1: ParmAry1St
  loc_D504B7: FLdPr Me
  loc_D504BA: VCallAd Control_ID_CtaCteDetaDgd
  loc_D504BD: CVarAd
  loc_D504C1: ParmAry1St
  loc_D504C7: FLdRfVar var_A4
  loc_D504CA: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D504CF: ILdRf var_90
  loc_D504D2: CastAd
  loc_D504D5: FLdPr Me
  loc_D504D8: MemStAdFunc
  loc_D504DC: FLdRfVar var_A4
  loc_D504DF: Erase
  loc_D504E0: FFree1Ad var_90
  loc_D504E3: Branch loc_D5054F
  loc_D504E6: LitStr vbNullString
  loc_D504E9: FLdPr Me
  loc_D504EC: VCallAd Control_ID_DetaCtctTxt
  loc_D504EF: FStAdFunc var_90
  loc_D504F2: FLdPr var_90
  loc_D504F5: Me.Text = from_stack_1
  loc_D504FA: FFree1Ad var_90
  loc_D504FD: LitStr vbNullString
  loc_D50500: FLdPr Me
  loc_D50503: VCallAd Control_ID_CodiUsuaTxt
  loc_D50506: FStAdFunc var_90
  loc_D50509: FLdPr var_90
  loc_D5050C: Me.Text = from_stack_1
  loc_D50511: FFree1Ad var_90
  loc_D50514: LitStr vbNullString
  loc_D50517: FLdPr Me
  loc_D5051A: VCallAd Control_ID_NumeLiquTxt
  loc_D5051D: FStAdFunc var_90
  loc_D50520: FLdPr var_90
  loc_D50523: Me.Text = from_stack_1
  loc_D50528: FFree1Ad var_90
  loc_D5052B: LitStr vbNullString
  loc_D5052E: FLdPr Me
  loc_D50531: VCallAd Control_ID_NumeOrdeTxt
  loc_D50534: FStAdFunc var_90
  loc_D50537: FLdPr var_90
  loc_D5053A: Me.Text = from_stack_1
  loc_D5053F: FFree1Ad var_90
  loc_D50542: LitI4 0
  loc_D50547: FStR4 var_88
  loc_D5054A: LitI2_Byte 0
  loc_D5054C: FStI2 var_8A
  loc_D5054F: FLdPr Me
  loc_D50552: VCallAd Control_ID_ctacteFlex
  loc_D50555: FStAdFunc var_90
  loc_D50558: FLdPr var_90
  loc_D5055B: LateIdLdVar var_A0 DispID_10 0
  loc_D50562: CI4Var
  loc_D50564: CVarI4
  loc_D50568: PopAdLdVar
  loc_D50569: LitVarI4
  loc_D50571: PopAdLdVar
  loc_D50572: FLdPr Me
  loc_D50575: VCallAd Control_ID_ctacteFlex
  loc_D50578: FStAdFunc var_E8
  loc_D5057B: FLdPr var_E8
  loc_D5057E: LateIdCallLdVar
  loc_D50588: PopAd
  loc_D5058A: FLdPr Me
  loc_D5058D: VCallAd Control_ID_ctacteFlex
  loc_D50590: FStAdFunc var_10C
  loc_D50593: FLdPr var_10C
  loc_D50596: LateIdLdVar var_1F4 DispID_10 0
  loc_D5059D: CI4Var
  loc_D5059F: CVarI4
  loc_D505A3: PopAdLdVar
  loc_D505A4: LitVarI4
  loc_D505AC: PopAdLdVar
  loc_D505AD: FLdPr Me
  loc_D505B0: VCallAd Control_ID_ctacteFlex
  loc_D505B3: FStAdFunc var_160
  loc_D505B6: FLdPr var_160
  loc_D505B9: LateIdCallLdVar
  loc_D505C3: PopAd
  loc_D505C5: LitVarI2 var_11C, 4
  loc_D505CA: LitI4 &HA
  loc_D505CF: FLdRfVar var_F8
  loc_D505D2: CStrVarTmp
  loc_D505D3: CVarStr var_108
  loc_D505D6: FLdRfVar var_170
  loc_D505D9: ImpAdCallFPR4  = Mid(, , )
  loc_D505DE: FLdRfVar var_170
  loc_D505E1: FnCIntVar
  loc_D505E3: LitI2_Byte 0
  loc_D505E5: GtI2
  loc_D505E6: LitVarI2 var_238, 8
  loc_D505EB: LitI4 1
  loc_D505F0: FLdRfVar var_214
  loc_D505F3: CStrVarTmp
  loc_D505F4: CVarStr var_224
  loc_D505F7: FLdRfVar var_24C
  loc_D505FA: ImpAdCallFPR4  = Mid(, , )
  loc_D505FF: FLdRfVar var_24C
  loc_D50602: FnCLngVar
  loc_D50604: LitI4 0
  loc_D50609: GtI4
  loc_D5060A: AndI4
  loc_D5060B: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D50616: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = ""
  loc_D50631: BranchF loc_D51A14
  loc_D50634: FLdPr Me
  loc_D50637: VCallAd Control_ID_ctacteFlex
  loc_D5063A: FStAdFunc var_90
  loc_D5063D: FLdPr var_90
  loc_D50640: LateIdLdVar var_A0 DispID_10 0
  loc_D50647: CI4Var
  loc_D50649: CVarI4
  loc_D5064D: PopAdLdVar
  loc_D5064E: LitVarI4
  loc_D50656: PopAdLdVar
  loc_D50657: FLdPr Me
  loc_D5065A: VCallAd Control_ID_ctacteFlex
  loc_D5065D: FStAdFunc var_E8
  loc_D50660: FLdPr var_E8
  loc_D50663: LateIdCallLdVar
  loc_D5066D: PopAd
  loc_D5066F: FLdPr Me
  loc_D50672: VCallAd Control_ID_ctacteFlex
  loc_D50675: FStAdFunc var_10C
  loc_D50678: FLdPr var_10C
  loc_D5067B: LateIdLdVar var_1F4 DispID_10 0
  loc_D50682: CI4Var
  loc_D50684: CVarI4
  loc_D50688: PopAdLdVar
  loc_D50689: LitVarI4
  loc_D50691: PopAdLdVar
  loc_D50692: FLdPr Me
  loc_D50695: VCallAd Control_ID_ctacteFlex
  loc_D50698: FStAdFunc var_160
  loc_D5069B: FLdPr var_160
  loc_D5069E: LateIdCallLdVar
  loc_D506A8: PopAd
  loc_D506AA: LitStr "SELECT * FROM boleto WHERE PeriBole = "
  loc_D506AD: LitVarI2 var_11C, 4
  loc_D506B2: LitI4 &HA
  loc_D506B7: FLdRfVar var_F8
  loc_D506BA: CStrVarTmp
  loc_D506BB: CVarStr var_108
  loc_D506BE: FLdRfVar var_170
  loc_D506C1: ImpAdCallFPR4  = Mid(, , )
  loc_D506C6: FLdRfVar var_170
  loc_D506C9: FnCIntVar
  loc_D506CB: CStrUI1
  loc_D506CD: FStStrNoPop var_174
  loc_D506D0: ConcatStr
  loc_D506D1: FStStrNoPop var_178
  loc_D506D4: LitStr " AND NumeBole = "
  loc_D506D7: ConcatStr
  loc_D506D8: FStStrNoPop var_17C
  loc_D506DB: LitVarI2 var_238, 8
  loc_D506E0: LitI4 1
  loc_D506E5: FLdRfVar var_214
  loc_D506E8: CStrVarTmp
  loc_D506E9: CVarStr var_224
  loc_D506EC: FLdRfVar var_24C
  loc_D506EF: ImpAdCallFPR4  = Mid(, , )
  loc_D506F4: FLdRfVar var_24C
  loc_D506F7: FnCLngVar
  loc_D506F9: CStrI4
  loc_D506FB: FStStrNoPop var_180
  loc_D506FE: ConcatStr
  loc_D506FF: FStStrNoPop var_184
  loc_D50702: LitStr " ORDER BY PeriBole, NumeBole"
  loc_D50705: ConcatStr
  loc_D50706: FStStrNoPop var_194
  loc_D50709: FLdPr Me
  loc_D5070C: MemLdRfVar from_stack_1.global_80
  loc_D5070F: NewIfNullPr clsboleto
  loc_D50712: Call clsboleto.RedefineRS(from_stack_1v)
  loc_D50717: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_D50726: FFreeAd var_90 = "": var_E8 = "": var_10C = ""
  loc_D50731: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = ""
  loc_D5074C: FLdRfVar var_188
  loc_D5074F: FLdPr Me
  loc_D50752: MemLdRfVar from_stack_1.global_80
  loc_D50755: NewIfNullPr clsboleto
  loc_D50758: from_stack_1 = clsboleto.RecordCount
  loc_D5075D: ILdRf var_188
  loc_D50760: LitI4 1
  loc_D50765: EqI4
  loc_D50766: BranchF loc_D51651
  loc_D50769: FLdRfVar var_174
  loc_D5076C: FLdPr Me
  loc_D5076F: MemLdRfVar from_stack_1.global_80
  loc_D50772: NewIfNullPr clsboleto
  loc_D50775: from_stack_1 = clsboleto.EstaBole
  loc_D5077A: ILdRf var_174
  loc_D5077D: LitStr "Pagado"
  loc_D50780: EqStr
  loc_D50782: FLdRfVar var_178
  loc_D50785: FLdPr Me
  loc_D50788: MemLdRfVar from_stack_1.global_80
  loc_D5078B: NewIfNullPr clsboleto
  loc_D5078E: from_stack_1 = clsboleto.EstaBole
  loc_D50793: ILdRf var_178
  loc_D50796: LitStr "Actualizado"
  loc_D50799: EqStr
  loc_D5079B: OrI4
  loc_D5079C: FFreeStr var_174 = ""
  loc_D507A3: BranchF loc_D5114D
  loc_D507A6: LitStr "SELECT * FROM pago WHERE PeriBole = "
  loc_D507A9: FLdRfVar var_396
  loc_D507AC: FLdPr Me
  loc_D507AF: MemLdRfVar from_stack_1.global_80
  loc_D507B2: NewIfNullPr clsboleto
  loc_D507B5: from_stack_1 = clsboleto.PeriBole
  loc_D507BA: FLdI2 var_396
  loc_D507BD: CStrUI1
  loc_D507BF: FStStrNoPop var_174
  loc_D507C2: ConcatStr
  loc_D507C3: FStStrNoPop var_178
  loc_D507C6: LitStr " AND NumeBole = "
  loc_D507C9: ConcatStr
  loc_D507CA: FStStrNoPop var_17C
  loc_D507CD: FLdRfVar var_188
  loc_D507D0: FLdPr Me
  loc_D507D3: MemLdRfVar from_stack_1.global_80
  loc_D507D6: NewIfNullPr clsboleto
  loc_D507D9: from_stack_1 = clsboleto.NumeBole
  loc_D507DE: ILdRf var_188
  loc_D507E1: CStrI4
  loc_D507E3: FStStrNoPop var_180
  loc_D507E6: ConcatStr
  loc_D507E7: FStStrNoPop var_184
  loc_D507EA: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_D507ED: ConcatStr
  loc_D507EE: FStStrNoPop var_194
  loc_D507F1: FLdPr Me
  loc_D507F4: MemLdRfVar from_stack_1.global_84
  loc_D507F7: NewIfNullPr clspago
  loc_D507FA: Call clspago.RedefineRS(from_stack_1v)
  loc_D507FF: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_D5080E: FLdRfVar var_188
  loc_D50811: FLdPr Me
  loc_D50814: MemLdRfVar from_stack_1.global_84
  loc_D50817: NewIfNullPr clspago
  loc_D5081A: from_stack_1 = clspago.RecordCount
  loc_D5081F: ILdRf var_188
  loc_D50822: LitI4 0
  loc_D50827: GtI4
  loc_D50828: BranchF loc_D5103D
  loc_D5082B: FLdPr Me
  loc_D5082E: MemLdRfVar from_stack_1.global_84
  loc_D50831: NewIfNullPr clspago
  loc_D50834: Call clspago.MoveFirst()
  loc_D50839: FLdRfVar var_174
  loc_D5083C: FLdPr Me
  loc_D5083F: MemLdRfVar from_stack_1.global_84
  loc_D50842: NewIfNullPr clspago
  loc_D50845: from_stack_1 = clspago.FeenAcpa
  loc_D5084A: FLdZeroAd var_174
  loc_D5084D: CVarStr var_A0
  loc_D50850: ImpAdCallI2 IsNull()
  loc_D50855: NotI4
  loc_D50856: FFree1Var var_A0 = ""
  loc_D50859: BranchF loc_D50887
  loc_D5085C: FLdRfVar var_174
  loc_D5085F: FLdPr Me
  loc_D50862: MemLdRfVar from_stack_1.global_84
  loc_D50865: NewIfNullPr clspago
  loc_D50868: from_stack_1 = clspago.FeenAcpa
  loc_D5086D: ILdRf var_174
  loc_D50870: FLdPr Me
  loc_D50873: VCallAd Control_ID_FeenAcpaTxt
  loc_D50876: FStAdFunc var_90
  loc_D50879: FLdPr var_90
  loc_D5087C: Me.Text = from_stack_1
  loc_D50881: FFree1Str var_174
  loc_D50884: FFree1Ad var_90
  loc_D50887: FLdRfVar var_396
  loc_D5088A: FLdPr Me
  loc_D5088D: MemLdRfVar from_stack_1.global_84
  loc_D50890: NewIfNullPr clspago
  loc_D50893: from_stack_1 = clspago.NumeAcpa
  loc_D50898: FLdI2 var_396
  loc_D5089B: CStrUI1
  loc_D5089D: FStStrNoPop var_174
  loc_D508A0: FLdPr Me
  loc_D508A3: VCallAd Control_ID_NumeAcpaTxt
  loc_D508A6: FStAdFunc var_90
  loc_D508A9: FLdPr var_90
  loc_D508AC: Me.Text = from_stack_1
  loc_D508B1: FFree1Str var_174
  loc_D508B4: FFree1Ad var_90
  loc_D508B7: FLdRfVar var_A0
  loc_D508BA: FLdPr Me
  loc_D508BD: MemLdRfVar from_stack_1.global_84
  loc_D508C0: NewIfNullPr clspago
  loc_D508C3: from_stack_1 = clspago.FepaPago
  loc_D508C8: FLdRfVar var_A0
  loc_D508CB: ImpAdCallI2 IsNull()
  loc_D508D0: NotI4
  loc_D508D1: FFree1Var var_A0 = ""
  loc_D508D4: BranchF loc_D50909
  loc_D508D7: FLdRfVar var_A0
  loc_D508DA: FLdPr Me
  loc_D508DD: MemLdRfVar from_stack_1.global_84
  loc_D508E0: NewIfNullPr clspago
  loc_D508E3: from_stack_1 = clspago.FepaPago
  loc_D508E8: FLdRfVar var_A0
  loc_D508EB: CStrVarVal var_174
  loc_D508EF: FLdPr Me
  loc_D508F2: VCallAd Control_ID_FepaPagoTxt
  loc_D508F5: FStAdFunc var_90
  loc_D508F8: FLdPr var_90
  loc_D508FB: Me.Text = from_stack_1
  loc_D50900: FFree1Str var_174
  loc_D50903: FFree1Ad var_90
  loc_D50906: FFree1Var var_A0 = ""
  loc_D50909: FLdRfVar var_A0
  loc_D5090C: FLdPr Me
  loc_D5090F: MemLdRfVar from_stack_1.global_84
  loc_D50912: NewIfNullPr clspago
  loc_D50915: from_stack_1 = clspago.FeacPago
  loc_D5091A: FLdRfVar var_A0
  loc_D5091D: ImpAdCallI2 IsNull()
  loc_D50922: NotI4
  loc_D50923: FFree1Var var_A0 = ""
  loc_D50926: BranchF loc_D5095B
  loc_D50929: FLdRfVar var_A0
  loc_D5092C: FLdPr Me
  loc_D5092F: MemLdRfVar from_stack_1.global_84
  loc_D50932: NewIfNullPr clspago
  loc_D50935: from_stack_1 = clspago.FeacPago
  loc_D5093A: FLdRfVar var_A0
  loc_D5093D: CStrVarVal var_174
  loc_D50941: FLdPr Me
  loc_D50944: VCallAd Control_ID_FeacPagoTxt
  loc_D50947: FStAdFunc var_90
  loc_D5094A: FLdPr var_90
  loc_D5094D: Me.Text = from_stack_1
  loc_D50952: FFree1Str var_174
  loc_D50955: FFree1Ad var_90
  loc_D50958: FFree1Var var_A0 = ""
  loc_D5095B: FLdPr Me
  loc_D5095E: VCallAd Control_ID_ctacteFlex
  loc_D50961: FStAdFunc var_90
  loc_D50964: FLdPr var_90
  loc_D50967: LateIdLdVar var_A0 DispID_10 0
  loc_D5096E: CI4Var
  loc_D50970: CVarI4
  loc_D50974: PopAdLdVar
  loc_D50975: LitVarI4
  loc_D5097D: PopAdLdVar
  loc_D5097E: FLdPr Me
  loc_D50981: VCallAd Control_ID_ctacteFlex
  loc_D50984: FStAdFunc var_E8
  loc_D50987: FLdPr var_E8
  loc_D5098A: LateIdCallLdVar
  loc_D50994: CStrVarTmp
  loc_D50995: FStStrNoPop var_174
  loc_D50998: CR8Str
  loc_D5099A: LitI2_Byte 1
  loc_D5099C: CR8I2
  loc_D5099D: GtR4
  loc_D5099E: FFree1Str var_174
  loc_D509A1: FFreeAd var_90 = ""
  loc_D509A8: FFreeVar var_A0 = ""
  loc_D509AF: BranchF loc_D50F89
  loc_D509B2: FLdRfVar var_174
  loc_D509B5: FLdPr Me
  loc_D509B8: MemLdRfVar from_stack_1.global_84
  loc_D509BB: NewIfNullPr clspago
  loc_D509BE: from_stack_1 = clspago.FeenAcpa
  loc_D509C3: FLdRfVar var_178
  loc_D509C6: FLdPr Me
  loc_D509C9: MemLdRfVar from_stack_1.global_84
  loc_D509CC: NewIfNullPr clspago
  loc_D509CF: from_stack_1 = clspago.FeenAcpa
  loc_D509D4: FLdRfVar var_17C
  loc_D509D7: FLdPr Me
  loc_D509DA: MemLdRfVar from_stack_1.global_84
  loc_D509DD: NewIfNullPr clspago
  loc_D509E0: from_stack_1 = clspago.FeenAcpa
  loc_D509E5: FLdPr Me
  loc_D509E8: VCallAd Control_ID_ctacteFlex
  loc_D509EB: FStAdFunc var_90
  loc_D509EE: FLdPr var_90
  loc_D509F1: LateIdLdVar var_40C DispID_10 0
  loc_D509F8: CI4Var
  loc_D509FA: CVarI4
  loc_D509FE: PopAdLdVar
  loc_D509FF: LitVarI4
  loc_D50A07: PopAdLdVar
  loc_D50A08: FLdPr Me
  loc_D50A0B: VCallAd Control_ID_ctacteFlex
  loc_D50A0E: FStAdFunc var_E8
  loc_D50A11: FLdPr var_E8
  loc_D50A14: LateIdCallLdVar
  loc_D50A1E: CStrVarTmp
  loc_D50A1F: CVarStr var_42C
  loc_D50A22: FLdRfVar var_43C
  loc_D50A25: ImpAdCallFPR4  = Trim()
  loc_D50A2A: FLdPr Me
  loc_D50A2D: VCallAd Control_ID_ctacteFlex
  loc_D50A30: FStAdFunc var_10C
  loc_D50A33: FLdPr var_10C
  loc_D50A36: LateIdLdVar var_47C DispID_10 0
  loc_D50A3D: CI4Var
  loc_D50A3F: CVarI4
  loc_D50A43: PopAdLdVar
  loc_D50A44: LitVarI4
  loc_D50A4C: PopAdLdVar
  loc_D50A4D: FLdPr Me
  loc_D50A50: VCallAd Control_ID_ctacteFlex
  loc_D50A53: FStAdFunc var_160
  loc_D50A56: FLdPr var_160
  loc_D50A59: LateIdCallLdVar
  loc_D50A63: PopAd
  loc_D50A65: LitVarStr var_C4, "SELECT * FROM detapago WHERE FeenAcpa = '"
  loc_D50A6A: LitVarI2 var_F8, 4
  loc_D50A6F: LitI4 7
  loc_D50A74: FLdZeroAd var_174
  loc_D50A77: CVarStr var_A0
  loc_D50A7A: FLdRfVar var_108
  loc_D50A7D: ImpAdCallFPR4  = Mid(, , )
  loc_D50A82: FLdRfVar var_108
  loc_D50A85: ConcatVar var_11C
  loc_D50A89: LitVarStr var_D4, "-"
  loc_D50A8E: ConcatVar var_170
  loc_D50A92: LitVarI2 var_214, 2
  loc_D50A97: LitI4 4
  loc_D50A9C: FLdZeroAd var_178
  loc_D50A9F: CVarStr var_1F4
  loc_D50AA2: FLdRfVar var_224
  loc_D50AA5: ImpAdCallFPR4  = Mid(, , )
  loc_D50AAA: FLdRfVar var_224
  loc_D50AAD: ConcatVar var_238
  loc_D50AB1: LitVarStr var_12C, "-"
  loc_D50AB6: ConcatVar var_24C
  loc_D50ABA: LitVarI2 var_27C, 2
  loc_D50ABF: LitI4 1
  loc_D50AC4: FLdZeroAd var_17C
  loc_D50AC7: CVarStr var_26C
  loc_D50ACA: FLdRfVar var_29C
  loc_D50ACD: ImpAdCallFPR4  = Mid(, , )
  loc_D50AD2: FLdRfVar var_29C
  loc_D50AD5: ConcatVar var_2F0
  loc_D50AD9: LitVarStr var_14C, "'"
  loc_D50ADE: ConcatVar var_310
  loc_D50AE2: LitVarStr var_15C, " AND NumeAcpa = "
  loc_D50AE7: ConcatVar var_364
  loc_D50AEB: FLdRfVar var_396
  loc_D50AEE: FLdPr Me
  loc_D50AF1: MemLdRfVar from_stack_1.global_84
  loc_D50AF4: NewIfNullPr clspago
  loc_D50AF7: from_stack_1 = clspago.NumeAcpa
  loc_D50AFC: FLdI2 var_396
  loc_D50AFF: CVarI2 var_1B0
  loc_D50B02: ConcatVar var_3AC
  loc_D50B06: LitVarStr var_1C0, " AND PeriBole = "
  loc_D50B0B: ConcatVar var_3BC
  loc_D50B0F: FLdRfVar var_398
  loc_D50B12: FLdPr Me
  loc_D50B15: MemLdRfVar from_stack_1.global_84
  loc_D50B18: NewIfNullPr clspago
  loc_D50B1B: from_stack_1 = clspago.PeriBole
  loc_D50B20: FLdI2 var_398
  loc_D50B23: CVarI2 var_1D0
  loc_D50B26: ConcatVar var_3CC
  loc_D50B2A: LitVarStr var_1E0, " AND NumeBole = "
  loc_D50B2F: ConcatVar var_3DC
  loc_D50B33: FLdRfVar var_188
  loc_D50B36: FLdPr Me
  loc_D50B39: MemLdRfVar from_stack_1.global_84
  loc_D50B3C: NewIfNullPr clspago
  loc_D50B3F: from_stack_1 = clspago.NumeBole
  loc_D50B44: ILdRf var_188
  loc_D50B47: CVarI4
  loc_D50B4B: ConcatVar var_3EC
  loc_D50B4F: LitVarStr var_2AC, " AND PeriCtct = "
  loc_D50B54: ConcatVar var_3FC
  loc_D50B58: LitI4 4
  loc_D50B5D: FLdRfVar var_43C
  loc_D50B60: FLdRfVar var_44C
  loc_D50B63: ImpAdCallFPR4  = Right(, )
  loc_D50B68: FLdRfVar var_44C
  loc_D50B6B: FnCIntVar
  loc_D50B6D: CVarI2 var_330
  loc_D50B70: ConcatVar var_45C
  loc_D50B74: LitVarStr var_340, " AND BimeCtct = "
  loc_D50B79: ConcatVar var_46C
  loc_D50B7D: LitI4 1
  loc_D50B82: FLdPr Me
  loc_D50B85: VCallAd Control_ID_ctacteFlex
  loc_D50B88: FStAdFunc var_1A0
  loc_D50B8B: FLdPr var_1A0
  loc_D50B8E: LateIdLdVar var_4CC DispID_10 0
  loc_D50B95: CI4Var
  loc_D50B97: CVarI4
  loc_D50B9B: PopAdLdVar
  loc_D50B9C: LitVarI4
  loc_D50BA4: PopAdLdVar
  loc_D50BA5: FLdPr Me
  loc_D50BA8: VCallAd Control_ID_ctacteFlex
  loc_D50BAB: FStAdFunc var_1E4
  loc_D50BAE: FLdPr var_1E4
  loc_D50BB1: LateIdCallLdVar
  loc_D50BBB: CStrVarTmp
  loc_D50BBC: FStStrNoPop var_180
  loc_D50BBF: LitStr "/"
  loc_D50BC2: LitI4 0
  loc_D50BC7: FnInStr4
  loc_D50BC9: LitI4 1
  loc_D50BCE: SubI4
  loc_D50BCF: CVarI4
  loc_D50BD3: LitI4 1
  loc_D50BD8: FLdRfVar var_4BC
  loc_D50BDB: CStrVarTmp
  loc_D50BDC: CVarStr var_52C
  loc_D50BDF: FLdRfVar var_55C
  loc_D50BE2: ImpAdCallFPR4  = Mid(, , )
  loc_D50BE7: FLdRfVar var_55C
  loc_D50BEA: FnCIntVar
  loc_D50BEC: CVarI2 var_56C
  loc_D50BEF: ConcatVar var_57C
  loc_D50BF3: LitVarStr var_58C, " AND NumeCtct = "
  loc_D50BF8: ConcatVar var_59C
  loc_D50BFC: FLdPr Me
  loc_D50BFF: VCallAd Control_ID_ctacteFlex
  loc_D50C02: FStAdFunc var_228
  loc_D50C05: FLdPr var_228
  loc_D50C08: LateIdLdVar var_5AC DispID_10 0
  loc_D50C0F: CI4Var
  loc_D50C11: CVarI4
  loc_D50C15: PopAdLdVar
  loc_D50C16: LitVarI4
  loc_D50C1E: PopAdLdVar
  loc_D50C1F: FLdPr Me
  loc_D50C22: VCallAd Control_ID_ctacteFlex
  loc_D50C25: FStAdFunc var_28C
  loc_D50C28: FLdPr var_28C
  loc_D50C2B: LateIdCallLdVar
  loc_D50C35: CStrVarTmp
  loc_D50C36: CVarStr var_60C
  loc_D50C39: ConcatVar var_61C
  loc_D50C3D: LitVarStr var_62C, " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo"
  loc_D50C42: ConcatVar var_63C
  loc_D50C46: CStrVarVal var_184
  loc_D50C4A: FLdPr Me
  loc_D50C4D: MemLdRfVar from_stack_1.global_88
  loc_D50C50: NewIfNullPr clsdetapago
  loc_D50C53: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D50C58: FFreeStr var_180 = ""
  loc_D50C5F: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = ""
  loc_D50C72: FFreeVar var_4BC = "": var_4CC = "": var_51C = "": var_52C = "": var_54C = "": var_55C = "": var_55C = "": var_46C = "": var_57C = "": var_5AC = "": var_5FC = "": var_59C = "": var_60C = "": var_61C = "": var_63C = "": var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_1F4 = "": var_214 = "": var_170 = "": var_224 = "": var_238 = "": var_26C = "": var_27C = "": var_24C = "": var_29C = "": var_2F0 = "": var_310 = "": var_364 = "": var_3AC = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_40C = "": var_41C = "": var_42C = "": var_43C = "": var_44C = "": var_44C = "": var_3FC = "": var_45C = ""
  loc_D50CCF: FLdRfVar var_188
  loc_D50CD2: FLdPr Me
  loc_D50CD5: MemLdRfVar from_stack_1.global_88
  loc_D50CD8: NewIfNullPr clsdetapago
  loc_D50CDB: from_stack_1 = clsdetapago.RecordCount
  loc_D50CE0: ILdRf var_188
  loc_D50CE3: LitI4 0
  loc_D50CE8: GtI4
  loc_D50CE9: BranchF loc_D50D4F
  loc_D50CEC: FLdRfVar var_188
  loc_D50CEF: FLdPr Me
  loc_D50CF2: MemLdRfVar from_stack_1.global_88
  loc_D50CF5: NewIfNullPr clsdetapago
  loc_D50CF8: from_stack_1 = clsdetapago.CodiFapa
  loc_D50CFD: ILdRf var_188
  loc_D50D00: CStrI4
  loc_D50D02: FStStrNoPop var_174
  loc_D50D05: FLdPr Me
  loc_D50D08: VCallAd Control_ID_CodiFapaTxt
  loc_D50D0B: FStAdFunc var_90
  loc_D50D0E: FLdPr var_90
  loc_D50D11: Me.Text = from_stack_1
  loc_D50D16: FFree1Str var_174
  loc_D50D19: FFree1Ad var_90
  loc_D50D1C: FLdRfVar var_396
  loc_D50D1F: FLdPr Me
  loc_D50D22: MemLdRfVar from_stack_1.global_88
  loc_D50D25: NewIfNullPr clsdetapago
  loc_D50D28: from_stack_1 = clsdetapago.CuotDefa
  loc_D50D2D: FLdI2 var_396
  loc_D50D30: CStrUI1
  loc_D50D32: FStStrNoPop var_174
  loc_D50D35: FLdPr Me
  loc_D50D38: VCallAd Control_ID_CuotDefaTxt
  loc_D50D3B: FStAdFunc var_90
  loc_D50D3E: FLdPr var_90
  loc_D50D41: Me.Text = from_stack_1
  loc_D50D46: FFree1Str var_174
  loc_D50D49: FFree1Ad var_90
  loc_D50D4C: Branch loc_D50D8D
  loc_D50D4F: ILdRf var_88
  loc_D50D52: CStrI4
  loc_D50D54: FStStrNoPop var_174
  loc_D50D57: FLdPr Me
  loc_D50D5A: VCallAd Control_ID_CodiFapaTxt
  loc_D50D5D: FStAdFunc var_90
  loc_D50D60: FLdPr var_90
  loc_D50D63: Me.Text = from_stack_1
  loc_D50D68: FFree1Str var_174
  loc_D50D6B: FFree1Ad var_90
  loc_D50D6E: FLdI2 var_8A
  loc_D50D71: CStrUI1
  loc_D50D73: FStStrNoPop var_174
  loc_D50D76: FLdPr Me
  loc_D50D79: VCallAd Control_ID_CuotDefaTxt
  loc_D50D7C: FStAdFunc var_90
  loc_D50D7F: FLdPr var_90
  loc_D50D82: Me.Text = from_stack_1
  loc_D50D87: FFree1Str var_174
  loc_D50D8A: FFree1Ad var_90
  loc_D50D8D: LitVar_FALSE
  loc_D50D91: PopAdLdVar
  loc_D50D92: FLdPr Me
  loc_D50D95: VCallAd Control_ID_CtaCteDetaDgd
  loc_D50D98: FStAdFunc var_90
  loc_D50D9B: FLdPr var_90
  loc_D50D9E: LateIdSt
  loc_D50DA3: FFree1Ad var_90
  loc_D50DA6: LitVar_TRUE var_B4
  loc_D50DA9: PopAdLdVar
  loc_D50DAA: FLdPr Me
  loc_D50DAD: VCallAd Control_ID_DetaPagoDgd
  loc_D50DB0: FStAdFunc var_90
  loc_D50DB3: FLdPr var_90
  loc_D50DB6: LateIdSt
  loc_D50DBB: FFree1Ad var_90
  loc_D50DBE: FLdRfVar var_174
  loc_D50DC1: FLdPr Me
  loc_D50DC4: MemLdRfVar from_stack_1.global_84
  loc_D50DC7: NewIfNullPr clspago
  loc_D50DCA: from_stack_1 = clspago.FeenAcpa
  loc_D50DCF: FLdRfVar var_178
  loc_D50DD2: FLdPr Me
  loc_D50DD5: MemLdRfVar from_stack_1.global_84
  loc_D50DD8: NewIfNullPr clspago
  loc_D50DDB: from_stack_1 = clspago.FeenAcpa
  loc_D50DE0: FLdRfVar var_17C
  loc_D50DE3: FLdPr Me
  loc_D50DE6: MemLdRfVar from_stack_1.global_84
  loc_D50DE9: NewIfNullPr clspago
  loc_D50DEC: from_stack_1 = clspago.FeenAcpa
  loc_D50DF1: LitVarStr var_C4, "SELECT * FROM detapago WHERE FeenAcpa = '"
  loc_D50DF6: LitVarI2 var_F8, 4
  loc_D50DFB: LitI4 7
  loc_D50E00: FLdZeroAd var_174
  loc_D50E03: CVarStr var_A0
  loc_D50E06: FLdRfVar var_108
  loc_D50E09: ImpAdCallFPR4  = Mid(, , )
  loc_D50E0E: FLdRfVar var_108
  loc_D50E11: ConcatVar var_11C
  loc_D50E15: LitVarStr var_D4, "-"
  loc_D50E1A: ConcatVar var_170
  loc_D50E1E: LitVarI2 var_214, 2
  loc_D50E23: LitI4 4
  loc_D50E28: FLdZeroAd var_178
  loc_D50E2B: CVarStr var_1F4
  loc_D50E2E: FLdRfVar var_224
  loc_D50E31: ImpAdCallFPR4  = Mid(, , )
  loc_D50E36: FLdRfVar var_224
  loc_D50E39: ConcatVar var_238
  loc_D50E3D: LitVarStr var_12C, "-"
  loc_D50E42: ConcatVar var_24C
  loc_D50E46: LitVarI2 var_27C, 2
  loc_D50E4B: LitI4 1
  loc_D50E50: FLdZeroAd var_17C
  loc_D50E53: CVarStr var_26C
  loc_D50E56: FLdRfVar var_29C
  loc_D50E59: ImpAdCallFPR4  = Mid(, , )
  loc_D50E5E: FLdRfVar var_29C
  loc_D50E61: ConcatVar var_2F0
  loc_D50E65: LitVarStr var_14C, "'"
  loc_D50E6A: ConcatVar var_310
  loc_D50E6E: LitVarStr var_15C, " AND NumeAcpa = "
  loc_D50E73: ConcatVar var_364
  loc_D50E77: FLdRfVar var_396
  loc_D50E7A: FLdPr Me
  loc_D50E7D: MemLdRfVar from_stack_1.global_84
  loc_D50E80: NewIfNullPr clspago
  loc_D50E83: from_stack_1 = clspago.NumeAcpa
  loc_D50E88: FLdI2 var_396
  loc_D50E8B: CVarI2 var_1B0
  loc_D50E8E: ConcatVar var_3AC
  loc_D50E92: LitVarStr var_1C0, " AND PeriBole = "
  loc_D50E97: ConcatVar var_3BC
  loc_D50E9B: FLdRfVar var_398
  loc_D50E9E: FLdPr Me
  loc_D50EA1: MemLdRfVar from_stack_1.global_84
  loc_D50EA4: NewIfNullPr clspago
  loc_D50EA7: from_stack_1 = clspago.PeriBole
  loc_D50EAC: FLdI2 var_398
  loc_D50EAF: CVarI2 var_1D0
  loc_D50EB2: ConcatVar var_3CC
  loc_D50EB6: LitVarStr var_1E0, " AND NumeBole = "
  loc_D50EBB: ConcatVar var_3DC
  loc_D50EBF: FLdRfVar var_188
  loc_D50EC2: FLdPr Me
  loc_D50EC5: MemLdRfVar from_stack_1.global_84
  loc_D50EC8: NewIfNullPr clspago
  loc_D50ECB: from_stack_1 = clspago.NumeBole
  loc_D50ED0: ILdRf var_188
  loc_D50ED3: CVarI4
  loc_D50ED7: ConcatVar var_3EC
  loc_D50EDB: LitVarStr var_2AC, " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_D50EE0: ConcatVar var_3FC
  loc_D50EE4: CStrVarVal var_180
  loc_D50EE8: FLdPr Me
  loc_D50EEB: MemLdRfVar from_stack_1.global_88
  loc_D50EEE: NewIfNullPr clsdetapago
  loc_D50EF1: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D50EF6: FFree1Str var_180
  loc_D50EF9: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_1F4 = "": var_214 = "": var_170 = "": var_224 = "": var_238 = "": var_26C = "": var_27C = "": var_24C = "": var_29C = "": var_2F0 = "": var_310 = "": var_364 = "": var_3AC = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = ""
  loc_D50F28: LitI4 0
  loc_D50F2D: LitI4 1
  loc_D50F32: FLdRfVar var_A4
  loc_D50F35: Redim
  loc_D50F3F: FLdPr Me
  loc_D50F42: MemLdRfVar from_stack_1.global_88
  loc_D50F45: NewIfNullAd
  loc_D50F48: FStAd var_90 
  loc_D50F4C: FLdRfVar var_90
  loc_D50F4F: CVarRef
  loc_D50F54: ParmAry1St
  loc_D50F5A: FLdPr Me
  loc_D50F5D: VCallAd Control_ID_DetaPagoDgd
  loc_D50F60: CVarAd
  loc_D50F64: ParmAry1St
  loc_D50F6A: FLdRfVar var_A4
  loc_D50F6D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D50F72: ILdRf var_90
  loc_D50F75: CastAd
  loc_D50F78: FLdPr Me
  loc_D50F7B: MemStAdFunc
  loc_D50F7F: FLdRfVar var_A4
  loc_D50F82: Erase
  loc_D50F83: FFree1Ad var_90
  loc_D50F86: Branch loc_D5103A
  loc_D50F89: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D50F8C: LitStr " AND NumeAcpa = 0"
  loc_D50F8F: ConcatStr
  loc_D50F90: FStStrNoPop var_174
  loc_D50F93: LitStr " AND PeriBole = 0"
  loc_D50F96: ConcatStr
  loc_D50F97: FStStrNoPop var_178
  loc_D50F9A: LitStr " AND NumeBole = 0"
  loc_D50F9D: ConcatStr
  loc_D50F9E: FStStrNoPop var_17C
  loc_D50FA1: LitStr " AND PeriCtct = 0"
  loc_D50FA4: ConcatStr
  loc_D50FA5: FStStrNoPop var_180
  loc_D50FA8: LitStr " AND NumeCtct = 0"
  loc_D50FAB: ConcatStr
  loc_D50FAC: FStStrNoPop var_184
  loc_D50FAF: LitStr " AND MoviCtct = 0"
  loc_D50FB2: ConcatStr
  loc_D50FB3: FStStrNoPop var_194
  loc_D50FB6: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D50FB9: ConcatStr
  loc_D50FBA: FStStrNoPop var_1F8
  loc_D50FBD: FLdPr Me
  loc_D50FC0: MemLdRfVar from_stack_1.global_88
  loc_D50FC3: NewIfNullPr clsdetapago
  loc_D50FC6: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D50FCB: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D50FDC: LitI4 0
  loc_D50FE1: LitI4 1
  loc_D50FE6: FLdRfVar var_A4
  loc_D50FE9: Redim
  loc_D50FF3: FLdPr Me
  loc_D50FF6: MemLdRfVar from_stack_1.global_88
  loc_D50FF9: NewIfNullAd
  loc_D50FFC: FStAd var_90 
  loc_D51000: FLdRfVar var_90
  loc_D51003: CVarRef
  loc_D51008: ParmAry1St
  loc_D5100E: FLdPr Me
  loc_D51011: VCallAd Control_ID_DetaPagoDgd
  loc_D51014: CVarAd
  loc_D51018: ParmAry1St
  loc_D5101E: FLdRfVar var_A4
  loc_D51021: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D51026: ILdRf var_90
  loc_D51029: CastAd
  loc_D5102C: FLdPr Me
  loc_D5102F: MemStAdFunc
  loc_D51033: FLdRfVar var_A4
  loc_D51036: Erase
  loc_D51037: FFree1Ad var_90
  loc_D5103A: Branch loc_D5114A
  loc_D5103D: LitStr vbNullString
  loc_D51040: FLdPr Me
  loc_D51043: VCallAd Control_ID_FeenAcpaTxt
  loc_D51046: FStAdFunc var_90
  loc_D51049: FLdPr var_90
  loc_D5104C: Me.Text = from_stack_1
  loc_D51051: FFree1Ad var_90
  loc_D51054: LitStr vbNullString
  loc_D51057: FLdPr Me
  loc_D5105A: VCallAd Control_ID_NumeAcpaTxt
  loc_D5105D: FStAdFunc var_90
  loc_D51060: FLdPr var_90
  loc_D51063: Me.Text = from_stack_1
  loc_D51068: FFree1Ad var_90
  loc_D5106B: LitStr vbNullString
  loc_D5106E: FLdPr Me
  loc_D51071: VCallAd Control_ID_FepaPagoTxt
  loc_D51074: FStAdFunc var_90
  loc_D51077: FLdPr var_90
  loc_D5107A: Me.Text = from_stack_1
  loc_D5107F: FFree1Ad var_90
  loc_D51082: LitStr vbNullString
  loc_D51085: FLdPr Me
  loc_D51088: VCallAd Control_ID_FeacPagoTxt
  loc_D5108B: FStAdFunc var_90
  loc_D5108E: FLdPr var_90
  loc_D51091: Me.Text = from_stack_1
  loc_D51096: FFree1Ad var_90
  loc_D51099: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D5109C: LitStr " AND NumeAcpa = 0"
  loc_D5109F: ConcatStr
  loc_D510A0: FStStrNoPop var_174
  loc_D510A3: LitStr " AND PeriBole = 0"
  loc_D510A6: ConcatStr
  loc_D510A7: FStStrNoPop var_178
  loc_D510AA: LitStr " AND NumeBole = 0"
  loc_D510AD: ConcatStr
  loc_D510AE: FStStrNoPop var_17C
  loc_D510B1: LitStr " AND PeriCtct = 0"
  loc_D510B4: ConcatStr
  loc_D510B5: FStStrNoPop var_180
  loc_D510B8: LitStr " AND NumeCtct = 0"
  loc_D510BB: ConcatStr
  loc_D510BC: FStStrNoPop var_184
  loc_D510BF: LitStr " AND MoviCtct = 0"
  loc_D510C2: ConcatStr
  loc_D510C3: FStStrNoPop var_194
  loc_D510C6: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D510C9: ConcatStr
  loc_D510CA: FStStrNoPop var_1F8
  loc_D510CD: FLdPr Me
  loc_D510D0: MemLdRfVar from_stack_1.global_88
  loc_D510D3: NewIfNullPr clsdetapago
  loc_D510D6: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D510DB: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D510EC: LitI4 0
  loc_D510F1: LitI4 1
  loc_D510F6: FLdRfVar var_A4
  loc_D510F9: Redim
  loc_D51103: FLdPr Me
  loc_D51106: MemLdRfVar from_stack_1.global_88
  loc_D51109: NewIfNullAd
  loc_D5110C: FStAd var_90 
  loc_D51110: FLdRfVar var_90
  loc_D51113: CVarRef
  loc_D51118: ParmAry1St
  loc_D5111E: FLdPr Me
  loc_D51121: VCallAd Control_ID_DetaPagoDgd
  loc_D51124: CVarAd
  loc_D51128: ParmAry1St
  loc_D5112E: FLdRfVar var_A4
  loc_D51131: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D51136: ILdRf var_90
  loc_D51139: CastAd
  loc_D5113C: FLdPr Me
  loc_D5113F: MemStAdFunc
  loc_D51143: FLdRfVar var_A4
  loc_D51146: Erase
  loc_D51147: FFree1Ad var_90
  loc_D5114A: Branch loc_D51310
  loc_D5114D: LitStr vbNullString
  loc_D51150: FLdPr Me
  loc_D51153: VCallAd Control_ID_FeenAcpaTxt
  loc_D51156: FStAdFunc var_90
  loc_D51159: FLdPr var_90
  loc_D5115C: Me.Text = from_stack_1
  loc_D51161: FFree1Ad var_90
  loc_D51164: LitStr vbNullString
  loc_D51167: FLdPr Me
  loc_D5116A: VCallAd Control_ID_NumeAcpaTxt
  loc_D5116D: FStAdFunc var_90
  loc_D51170: FLdPr var_90
  loc_D51173: Me.Text = from_stack_1
  loc_D51178: FFree1Ad var_90
  loc_D5117B: LitStr vbNullString
  loc_D5117E: FLdPr Me
  loc_D51181: VCallAd Control_ID_FepaPagoTxt
  loc_D51184: FStAdFunc var_90
  loc_D51187: FLdPr var_90
  loc_D5118A: Me.Text = from_stack_1
  loc_D5118F: FFree1Ad var_90
  loc_D51192: LitStr vbNullString
  loc_D51195: FLdPr Me
  loc_D51198: VCallAd Control_ID_FeacPagoTxt
  loc_D5119B: FStAdFunc var_90
  loc_D5119E: FLdPr var_90
  loc_D511A1: Me.Text = from_stack_1
  loc_D511A6: FFree1Ad var_90
  loc_D511A9: LitStr vbNullString
  loc_D511AC: FLdPr Me
  loc_D511AF: VCallAd Control_ID_CodiFapaTxt
  loc_D511B2: FStAdFunc var_90
  loc_D511B5: FLdPr var_90
  loc_D511B8: Me.Text = from_stack_1
  loc_D511BD: FFree1Ad var_90
  loc_D511C0: LitStr vbNullString
  loc_D511C3: FLdPr Me
  loc_D511C6: VCallAd Control_ID_CuotDefaTxt
  loc_D511C9: FStAdFunc var_90
  loc_D511CC: FLdPr var_90
  loc_D511CF: Me.Text = from_stack_1
  loc_D511D4: FFree1Ad var_90
  loc_D511D7: FLdPr Me
  loc_D511DA: VCallAd Control_ID_ctacteFlex
  loc_D511DD: FStAdFunc var_90
  loc_D511E0: FLdPr var_90
  loc_D511E3: LateIdLdVar var_A0 DispID_10 0
  loc_D511EA: CI4Var
  loc_D511EC: CVarI4
  loc_D511F0: PopAdLdVar
  loc_D511F1: LitVarI4
  loc_D511F9: PopAdLdVar
  loc_D511FA: FLdPr Me
  loc_D511FD: VCallAd Control_ID_ctacteFlex
  loc_D51200: FStAdFunc var_E8
  loc_D51203: FLdPr var_E8
  loc_D51206: LateIdCallLdVar
  loc_D51210: CStrVarTmp
  loc_D51211: FStStrNoPop var_174
  loc_D51214: CR8Str
  loc_D51216: LitI2_Byte 1
  loc_D51218: CR8I2
  loc_D51219: GtR4
  loc_D5121A: FFree1Str var_174
  loc_D5121D: FFreeAd var_90 = ""
  loc_D51224: FFreeVar var_A0 = ""
  loc_D5122B: BranchF loc_D51310
  loc_D5122E: LitVar_FALSE
  loc_D51232: PopAdLdVar
  loc_D51233: FLdPr Me
  loc_D51236: VCallAd Control_ID_CtaCteDetaDgd
  loc_D51239: FStAdFunc var_90
  loc_D5123C: FLdPr var_90
  loc_D5123F: LateIdSt
  loc_D51244: FFree1Ad var_90
  loc_D51247: LitVar_TRUE var_B4
  loc_D5124A: PopAdLdVar
  loc_D5124B: FLdPr Me
  loc_D5124E: VCallAd Control_ID_DetaPagoDgd
  loc_D51251: FStAdFunc var_90
  loc_D51254: FLdPr var_90
  loc_D51257: LateIdSt
  loc_D5125C: FFree1Ad var_90
  loc_D5125F: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D51262: LitStr " AND NumeAcpa = 0"
  loc_D51265: ConcatStr
  loc_D51266: FStStrNoPop var_174
  loc_D51269: LitStr " AND PeriBole = 0"
  loc_D5126C: ConcatStr
  loc_D5126D: FStStrNoPop var_178
  loc_D51270: LitStr " AND NumeBole = 0"
  loc_D51273: ConcatStr
  loc_D51274: FStStrNoPop var_17C
  loc_D51277: LitStr " AND PeriCtct = 0"
  loc_D5127A: ConcatStr
  loc_D5127B: FStStrNoPop var_180
  loc_D5127E: LitStr " AND NumeCtct = 0"
  loc_D51281: ConcatStr
  loc_D51282: FStStrNoPop var_184
  loc_D51285: LitStr " AND MoviCtct = 0"
  loc_D51288: ConcatStr
  loc_D51289: FStStrNoPop var_194
  loc_D5128C: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D5128F: ConcatStr
  loc_D51290: FStStrNoPop var_1F8
  loc_D51293: FLdPr Me
  loc_D51296: MemLdRfVar from_stack_1.global_88
  loc_D51299: NewIfNullPr clsdetapago
  loc_D5129C: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D512A1: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D512B2: LitI4 0
  loc_D512B7: LitI4 1
  loc_D512BC: FLdRfVar var_A4
  loc_D512BF: Redim
  loc_D512C9: FLdPr Me
  loc_D512CC: MemLdRfVar from_stack_1.global_88
  loc_D512CF: NewIfNullAd
  loc_D512D2: FStAd var_90 
  loc_D512D6: FLdRfVar var_90
  loc_D512D9: CVarRef
  loc_D512DE: ParmAry1St
  loc_D512E4: FLdPr Me
  loc_D512E7: VCallAd Control_ID_DetaPagoDgd
  loc_D512EA: CVarAd
  loc_D512EE: ParmAry1St
  loc_D512F4: FLdRfVar var_A4
  loc_D512F7: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D512FC: ILdRf var_90
  loc_D512FF: CastAd
  loc_D51302: FLdPr Me
  loc_D51305: MemStAdFunc
  loc_D51309: FLdRfVar var_A4
  loc_D5130C: Erase
  loc_D5130D: FFree1Ad var_90
  loc_D51310: FLdRfVar var_174
  loc_D51313: FLdPr Me
  loc_D51316: MemLdRfVar from_stack_1.global_80
  loc_D51319: NewIfNullPr clsboleto
  loc_D5131C: from_stack_1 = clsboleto.TipoBole
  loc_D51321: ILdRf var_174
  loc_D51324: FLdPr Me
  loc_D51327: VCallAd Control_ID_TipoBoleTxt
  loc_D5132A: FStAdFunc var_90
  loc_D5132D: FLdPr var_90
  loc_D51330: Me.Text = from_stack_1
  loc_D51335: FFree1Str var_174
  loc_D51338: FFree1Ad var_90
  loc_D5133B: FLdRfVar var_174
  loc_D5133E: FLdPr Me
  loc_D51341: MemLdRfVar from_stack_1.global_80
  loc_D51344: NewIfNullPr clsboleto
  loc_D51347: from_stack_1 = clsboleto.EstaBole
  loc_D5134C: ILdRf var_174
  loc_D5134F: FLdPr Me
  loc_D51352: VCallAd Control_ID_EstaBoleTxt
  loc_D51355: FStAdFunc var_90
  loc_D51358: FLdPr var_90
  loc_D5135B: Me.Text = from_stack_1
  loc_D51360: FFree1Str var_174
  loc_D51363: FFree1Ad var_90
  loc_D51366: FLdRfVar var_A0
  loc_D51369: FLdPr Me
  loc_D5136C: MemLdRfVar from_stack_1.global_80
  loc_D5136F: NewIfNullPr clsboleto
  loc_D51372: from_stack_1 = clsboleto.FealBole
  loc_D51377: FLdRfVar var_A0
  loc_D5137A: CStrVarVal var_174
  loc_D5137E: FLdPr Me
  loc_D51381: VCallAd Control_ID_FealBoleTxt
  loc_D51384: FStAdFunc var_90
  loc_D51387: FLdPr var_90
  loc_D5138A: Me.Text = from_stack_1
  loc_D5138F: FFree1Str var_174
  loc_D51392: FFree1Ad var_90
  loc_D51395: FFree1Var var_A0 = ""
  loc_D51398: FLdRfVar var_A0
  loc_D5139B: FLdPr Me
  loc_D5139E: MemLdRfVar from_stack_1.global_80
  loc_D513A1: NewIfNullPr clsboleto
  loc_D513A4: from_stack_1 = clsboleto.FeveBole
  loc_D513A9: FLdRfVar var_A0
  loc_D513AC: CStrVarVal var_174
  loc_D513B0: FLdPr Me
  loc_D513B3: VCallAd Control_ID_FeveBoleTxt
  loc_D513B6: FStAdFunc var_90
  loc_D513B9: FLdPr var_90
  loc_D513BC: Me.Text = from_stack_1
  loc_D513C1: FFree1Str var_174
  loc_D513C4: FFree1Ad var_90
  loc_D513C7: FFree1Var var_A0 = ""
  loc_D513CA: FLdRfVar var_190
  loc_D513CD: FLdPr Me
  loc_D513D0: MemLdRfVar from_stack_1.global_80
  loc_D513D3: NewIfNullPr clsboleto
  loc_D513D6: from_stack_1 = clsboleto.CapiBole
  loc_D513DB: LitI4 1
  loc_D513E0: LitI4 1
  loc_D513E5: LitVarStr var_C4, "0.00"
  loc_D513EA: FStVarCopyObj var_F8
  loc_D513ED: FLdRfVar var_F8
  loc_D513F0: FLdFPR8 var_190
  loc_D513F3: CVarR8
  loc_D513F7: FLdRfVar var_108
  loc_D513FA: ImpAdCallFPR4  = Format(, )
  loc_D513FF: FLdRfVar var_108
  loc_D51402: CStrVarVal var_174
  loc_D51406: FLdPr Me
  loc_D51409: VCallAd Control_ID_CapiBoleTxt
  loc_D5140C: FStAdFunc var_90
  loc_D5140F: FLdPr var_90
  loc_D51412: Me.Text = from_stack_1
  loc_D51417: FFree1Str var_174
  loc_D5141A: FFree1Ad var_90
  loc_D5141D: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51426: FLdRfVar var_190
  loc_D51429: FLdPr Me
  loc_D5142C: MemLdRfVar from_stack_1.global_80
  loc_D5142F: NewIfNullPr clsboleto
  loc_D51432: from_stack_1 = clsboleto.RecaBole
  loc_D51437: LitI4 1
  loc_D5143C: LitI4 1
  loc_D51441: LitVarStr var_C4, "0.00"
  loc_D51446: FStVarCopyObj var_F8
  loc_D51449: FLdRfVar var_F8
  loc_D5144C: FLdFPR8 var_190
  loc_D5144F: CVarR8
  loc_D51453: FLdRfVar var_108
  loc_D51456: ImpAdCallFPR4  = Format(, )
  loc_D5145B: FLdRfVar var_108
  loc_D5145E: CStrVarVal var_174
  loc_D51462: FLdPr Me
  loc_D51465: VCallAd Control_ID_RecaBoleTxt
  loc_D51468: FStAdFunc var_90
  loc_D5146B: FLdPr var_90
  loc_D5146E: Me.Text = from_stack_1
  loc_D51473: FFree1Str var_174
  loc_D51476: FFree1Ad var_90
  loc_D51479: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51482: FLdRfVar var_190
  loc_D51485: FLdPr Me
  loc_D51488: MemLdRfVar from_stack_1.global_80
  loc_D5148B: NewIfNullPr clsboleto
  loc_D5148E: from_stack_1 = clsboleto.DecaBole
  loc_D51493: LitI4 1
  loc_D51498: LitI4 1
  loc_D5149D: LitVarStr var_C4, "0.00"
  loc_D514A2: FStVarCopyObj var_F8
  loc_D514A5: FLdRfVar var_F8
  loc_D514A8: FLdFPR8 var_190
  loc_D514AB: CVarR8
  loc_D514AF: FLdRfVar var_108
  loc_D514B2: ImpAdCallFPR4  = Format(, )
  loc_D514B7: FLdRfVar var_108
  loc_D514BA: CStrVarVal var_174
  loc_D514BE: FLdPr Me
  loc_D514C1: VCallAd Control_ID_DecaBoleTxt
  loc_D514C4: FStAdFunc var_90
  loc_D514C7: FLdPr var_90
  loc_D514CA: Me.Text = from_stack_1
  loc_D514CF: FFree1Str var_174
  loc_D514D2: FFree1Ad var_90
  loc_D514D5: FFreeVar var_A0 = "": var_F8 = ""
  loc_D514DE: FLdRfVar var_190
  loc_D514E1: FLdPr Me
  loc_D514E4: MemLdRfVar from_stack_1.global_80
  loc_D514E7: NewIfNullPr clsboleto
  loc_D514EA: from_stack_1 = clsboleto.DereBole
  loc_D514EF: LitI4 1
  loc_D514F4: LitI4 1
  loc_D514F9: LitVarStr var_C4, "0.00"
  loc_D514FE: FStVarCopyObj var_F8
  loc_D51501: FLdRfVar var_F8
  loc_D51504: FLdFPR8 var_190
  loc_D51507: CVarR8
  loc_D5150B: FLdRfVar var_108
  loc_D5150E: ImpAdCallFPR4  = Format(, )
  loc_D51513: FLdRfVar var_108
  loc_D51516: CStrVarVal var_174
  loc_D5151A: FLdPr Me
  loc_D5151D: VCallAd Control_ID_DereBoleTxt
  loc_D51520: FStAdFunc var_90
  loc_D51523: FLdPr var_90
  loc_D51526: Me.Text = from_stack_1
  loc_D5152B: FFree1Str var_174
  loc_D5152E: FFree1Ad var_90
  loc_D51531: FFreeVar var_A0 = "": var_F8 = ""
  loc_D5153A: FLdRfVar var_190
  loc_D5153D: FLdPr Me
  loc_D51540: MemLdRfVar from_stack_1.global_80
  loc_D51543: NewIfNullPr clsboleto
  loc_D51546: from_stack_1 = clsboleto.InteBole
  loc_D5154B: LitI4 1
  loc_D51550: LitI4 1
  loc_D51555: LitVarStr var_C4, "0.00"
  loc_D5155A: FStVarCopyObj var_F8
  loc_D5155D: FLdRfVar var_F8
  loc_D51560: FLdFPR8 var_190
  loc_D51563: CVarR8
  loc_D51567: FLdRfVar var_108
  loc_D5156A: ImpAdCallFPR4  = Format(, )
  loc_D5156F: FLdRfVar var_108
  loc_D51572: CStrVarVal var_174
  loc_D51576: FLdPr Me
  loc_D51579: VCallAd Control_ID_InteBoleTxt
  loc_D5157C: FStAdFunc var_90
  loc_D5157F: FLdPr var_90
  loc_D51582: Me.Text = from_stack_1
  loc_D51587: FFree1Str var_174
  loc_D5158A: FFree1Ad var_90
  loc_D5158D: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51596: FLdRfVar var_190
  loc_D51599: FLdPr Me
  loc_D5159C: MemLdRfVar from_stack_1.global_80
  loc_D5159F: NewIfNullPr clsboleto
  loc_D515A2: from_stack_1 = clsboleto.ApreBole
  loc_D515A7: LitI4 1
  loc_D515AC: LitI4 1
  loc_D515B1: LitVarStr var_C4, "0.00"
  loc_D515B6: FStVarCopyObj var_F8
  loc_D515B9: FLdRfVar var_F8
  loc_D515BC: FLdFPR8 var_190
  loc_D515BF: CVarR8
  loc_D515C3: FLdRfVar var_108
  loc_D515C6: ImpAdCallFPR4  = Format(, )
  loc_D515CB: FLdRfVar var_108
  loc_D515CE: CStrVarVal var_174
  loc_D515D2: FLdPr Me
  loc_D515D5: VCallAd Control_ID_ApreBoleTxt
  loc_D515D8: FStAdFunc var_90
  loc_D515DB: FLdPr var_90
  loc_D515DE: Me.Text = from_stack_1
  loc_D515E3: FFree1Str var_174
  loc_D515E6: FFree1Ad var_90
  loc_D515E9: FFreeVar var_A0 = "": var_F8 = ""
  loc_D515F2: FLdRfVar var_190
  loc_D515F5: FLdPr Me
  loc_D515F8: MemLdRfVar from_stack_1.global_80
  loc_D515FB: NewIfNullPr clsboleto
  loc_D515FE: from_stack_1 = clsboleto.TotaBole
  loc_D51603: LitI4 1
  loc_D51608: LitI4 1
  loc_D5160D: LitVarStr var_C4, "0.00"
  loc_D51612: FStVarCopyObj var_F8
  loc_D51615: FLdRfVar var_F8
  loc_D51618: FLdFPR8 var_190
  loc_D5161B: CVarR8
  loc_D5161F: FLdRfVar var_108
  loc_D51622: ImpAdCallFPR4  = Format(, )
  loc_D51627: FLdRfVar var_108
  loc_D5162A: CStrVarVal var_174
  loc_D5162E: FLdPr Me
  loc_D51631: VCallAd Control_ID_TotaBoleTxt
  loc_D51634: FStAdFunc var_90
  loc_D51637: FLdPr var_90
  loc_D5163A: Me.Text = from_stack_1
  loc_D5163F: FFree1Str var_174
  loc_D51642: FFree1Ad var_90
  loc_D51645: FFreeVar var_A0 = "": var_F8 = ""
  loc_D5164E: Branch loc_D51A11
  loc_D51651: LitStr vbNullString
  loc_D51654: FLdPr Me
  loc_D51657: VCallAd Control_ID_TipoBoleTxt
  loc_D5165A: FStAdFunc var_90
  loc_D5165D: FLdPr var_90
  loc_D51660: Me.Text = from_stack_1
  loc_D51665: FFree1Ad var_90
  loc_D51668: LitStr vbNullString
  loc_D5166B: FLdPr Me
  loc_D5166E: VCallAd Control_ID_EstaBoleTxt
  loc_D51671: FStAdFunc var_90
  loc_D51674: FLdPr var_90
  loc_D51677: Me.Text = from_stack_1
  loc_D5167C: FFree1Ad var_90
  loc_D5167F: LitStr vbNullString
  loc_D51682: FLdPr Me
  loc_D51685: VCallAd Control_ID_FealBoleTxt
  loc_D51688: FStAdFunc var_90
  loc_D5168B: FLdPr var_90
  loc_D5168E: Me.Text = from_stack_1
  loc_D51693: FFree1Ad var_90
  loc_D51696: LitStr vbNullString
  loc_D51699: FLdPr Me
  loc_D5169C: VCallAd Control_ID_FeveBoleTxt
  loc_D5169F: FStAdFunc var_90
  loc_D516A2: FLdPr var_90
  loc_D516A5: Me.Text = from_stack_1
  loc_D516AA: FFree1Ad var_90
  loc_D516AD: LitStr vbNullString
  loc_D516B0: FLdPr Me
  loc_D516B3: VCallAd Control_ID_FeenAcpaTxt
  loc_D516B6: FStAdFunc var_90
  loc_D516B9: FLdPr var_90
  loc_D516BC: Me.Text = from_stack_1
  loc_D516C1: FFree1Ad var_90
  loc_D516C4: LitStr vbNullString
  loc_D516C7: FLdPr Me
  loc_D516CA: VCallAd Control_ID_NumeAcpaTxt
  loc_D516CD: FStAdFunc var_90
  loc_D516D0: FLdPr var_90
  loc_D516D3: Me.Text = from_stack_1
  loc_D516D8: FFree1Ad var_90
  loc_D516DB: LitStr vbNullString
  loc_D516DE: FLdPr Me
  loc_D516E1: VCallAd Control_ID_FepaPagoTxt
  loc_D516E4: FStAdFunc var_90
  loc_D516E7: FLdPr var_90
  loc_D516EA: Me.Text = from_stack_1
  loc_D516EF: FFree1Ad var_90
  loc_D516F2: LitStr vbNullString
  loc_D516F5: FLdPr Me
  loc_D516F8: VCallAd Control_ID_FeacPagoTxt
  loc_D516FB: FStAdFunc var_90
  loc_D516FE: FLdPr var_90
  loc_D51701: Me.Text = from_stack_1
  loc_D51706: FFree1Ad var_90
  loc_D51709: LitStr vbNullString
  loc_D5170C: FLdPr Me
  loc_D5170F: VCallAd Control_ID_CodiFapaTxt
  loc_D51712: FStAdFunc var_90
  loc_D51715: FLdPr var_90
  loc_D51718: Me.Text = from_stack_1
  loc_D5171D: FFree1Ad var_90
  loc_D51720: LitStr vbNullString
  loc_D51723: FLdPr Me
  loc_D51726: VCallAd Control_ID_CuotDefaTxt
  loc_D51729: FStAdFunc var_90
  loc_D5172C: FLdPr var_90
  loc_D5172F: Me.Text = from_stack_1
  loc_D51734: FFree1Ad var_90
  loc_D51737: LitI4 1
  loc_D5173C: LitI4 1
  loc_D51741: LitVarStr var_C4, "0.00"
  loc_D51746: FStVarCopyObj var_F8
  loc_D51749: FLdRfVar var_F8
  loc_D5174C: LitVarStr var_B4, "0"
  loc_D51751: FStVarCopyObj var_A0
  loc_D51754: FLdRfVar var_A0
  loc_D51757: FLdRfVar var_108
  loc_D5175A: ImpAdCallFPR4  = Format(, )
  loc_D5175F: FLdRfVar var_108
  loc_D51762: CStrVarVal var_174
  loc_D51766: FLdPr Me
  loc_D51769: VCallAd Control_ID_CapiBoleTxt
  loc_D5176C: FStAdFunc var_90
  loc_D5176F: FLdPr var_90
  loc_D51772: Me.Text = from_stack_1
  loc_D51777: FFree1Str var_174
  loc_D5177A: FFree1Ad var_90
  loc_D5177D: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51786: LitI4 1
  loc_D5178B: LitI4 1
  loc_D51790: LitVarStr var_C4, "0.00"
  loc_D51795: FStVarCopyObj var_F8
  loc_D51798: FLdRfVar var_F8
  loc_D5179B: LitVarStr var_B4, "0"
  loc_D517A0: FStVarCopyObj var_A0
  loc_D517A3: FLdRfVar var_A0
  loc_D517A6: FLdRfVar var_108
  loc_D517A9: ImpAdCallFPR4  = Format(, )
  loc_D517AE: FLdRfVar var_108
  loc_D517B1: CStrVarVal var_174
  loc_D517B5: FLdPr Me
  loc_D517B8: VCallAd Control_ID_RecaBoleTxt
  loc_D517BB: FStAdFunc var_90
  loc_D517BE: FLdPr var_90
  loc_D517C1: Me.Text = from_stack_1
  loc_D517C6: FFree1Str var_174
  loc_D517C9: FFree1Ad var_90
  loc_D517CC: FFreeVar var_A0 = "": var_F8 = ""
  loc_D517D5: LitI4 1
  loc_D517DA: LitI4 1
  loc_D517DF: LitVarStr var_C4, "0.00"
  loc_D517E4: FStVarCopyObj var_F8
  loc_D517E7: FLdRfVar var_F8
  loc_D517EA: LitVarStr var_B4, "0"
  loc_D517EF: FStVarCopyObj var_A0
  loc_D517F2: FLdRfVar var_A0
  loc_D517F5: FLdRfVar var_108
  loc_D517F8: ImpAdCallFPR4  = Format(, )
  loc_D517FD: FLdRfVar var_108
  loc_D51800: CStrVarVal var_174
  loc_D51804: FLdPr Me
  loc_D51807: VCallAd Control_ID_DecaBoleTxt
  loc_D5180A: FStAdFunc var_90
  loc_D5180D: FLdPr var_90
  loc_D51810: Me.Text = from_stack_1
  loc_D51815: FFree1Str var_174
  loc_D51818: FFree1Ad var_90
  loc_D5181B: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51824: LitI4 1
  loc_D51829: LitI4 1
  loc_D5182E: LitVarStr var_C4, "0.00"
  loc_D51833: FStVarCopyObj var_F8
  loc_D51836: FLdRfVar var_F8
  loc_D51839: LitVarStr var_B4, "0"
  loc_D5183E: FStVarCopyObj var_A0
  loc_D51841: FLdRfVar var_A0
  loc_D51844: FLdRfVar var_108
  loc_D51847: ImpAdCallFPR4  = Format(, )
  loc_D5184C: FLdRfVar var_108
  loc_D5184F: CStrVarVal var_174
  loc_D51853: FLdPr Me
  loc_D51856: VCallAd Control_ID_DereBoleTxt
  loc_D51859: FStAdFunc var_90
  loc_D5185C: FLdPr var_90
  loc_D5185F: Me.Text = from_stack_1
  loc_D51864: FFree1Str var_174
  loc_D51867: FFree1Ad var_90
  loc_D5186A: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51873: LitI4 1
  loc_D51878: LitI4 1
  loc_D5187D: LitVarStr var_C4, "0.00"
  loc_D51882: FStVarCopyObj var_F8
  loc_D51885: FLdRfVar var_F8
  loc_D51888: LitVarStr var_B4, "0"
  loc_D5188D: FStVarCopyObj var_A0
  loc_D51890: FLdRfVar var_A0
  loc_D51893: FLdRfVar var_108
  loc_D51896: ImpAdCallFPR4  = Format(, )
  loc_D5189B: FLdRfVar var_108
  loc_D5189E: CStrVarVal var_174
  loc_D518A2: FLdPr Me
  loc_D518A5: VCallAd Control_ID_InteBoleTxt
  loc_D518A8: FStAdFunc var_90
  loc_D518AB: FLdPr var_90
  loc_D518AE: Me.Text = from_stack_1
  loc_D518B3: FFree1Str var_174
  loc_D518B6: FFree1Ad var_90
  loc_D518B9: FFreeVar var_A0 = "": var_F8 = ""
  loc_D518C2: LitI4 1
  loc_D518C7: LitI4 1
  loc_D518CC: LitVarStr var_C4, "0.00"
  loc_D518D1: FStVarCopyObj var_F8
  loc_D518D4: FLdRfVar var_F8
  loc_D518D7: LitVarStr var_B4, "0"
  loc_D518DC: FStVarCopyObj var_A0
  loc_D518DF: FLdRfVar var_A0
  loc_D518E2: FLdRfVar var_108
  loc_D518E5: ImpAdCallFPR4  = Format(, )
  loc_D518EA: FLdRfVar var_108
  loc_D518ED: CStrVarVal var_174
  loc_D518F1: FLdPr Me
  loc_D518F4: VCallAd Control_ID_ApreBoleTxt
  loc_D518F7: FStAdFunc var_90
  loc_D518FA: FLdPr var_90
  loc_D518FD: Me.Text = from_stack_1
  loc_D51902: FFree1Str var_174
  loc_D51905: FFree1Ad var_90
  loc_D51908: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51911: LitI4 1
  loc_D51916: LitI4 1
  loc_D5191B: LitVarStr var_C4, "0.00"
  loc_D51920: FStVarCopyObj var_F8
  loc_D51923: FLdRfVar var_F8
  loc_D51926: LitVarStr var_B4, "0"
  loc_D5192B: FStVarCopyObj var_A0
  loc_D5192E: FLdRfVar var_A0
  loc_D51931: FLdRfVar var_108
  loc_D51934: ImpAdCallFPR4  = Format(, )
  loc_D51939: FLdRfVar var_108
  loc_D5193C: CStrVarVal var_174
  loc_D51940: FLdPr Me
  loc_D51943: VCallAd Control_ID_TotaBoleTxt
  loc_D51946: FStAdFunc var_90
  loc_D51949: FLdPr var_90
  loc_D5194C: Me.Text = from_stack_1
  loc_D51951: FFree1Str var_174
  loc_D51954: FFree1Ad var_90
  loc_D51957: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51960: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D51963: LitStr " AND NumeAcpa = 0"
  loc_D51966: ConcatStr
  loc_D51967: FStStrNoPop var_174
  loc_D5196A: LitStr " AND PeriBole = 0"
  loc_D5196D: ConcatStr
  loc_D5196E: FStStrNoPop var_178
  loc_D51971: LitStr " AND NumeBole = 0"
  loc_D51974: ConcatStr
  loc_D51975: FStStrNoPop var_17C
  loc_D51978: LitStr " AND PeriCtct = 0"
  loc_D5197B: ConcatStr
  loc_D5197C: FStStrNoPop var_180
  loc_D5197F: LitStr " AND NumeCtct = 0"
  loc_D51982: ConcatStr
  loc_D51983: FStStrNoPop var_184
  loc_D51986: LitStr " AND MoviCtct = 0"
  loc_D51989: ConcatStr
  loc_D5198A: FStStrNoPop var_194
  loc_D5198D: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D51990: ConcatStr
  loc_D51991: FStStrNoPop var_1F8
  loc_D51994: FLdPr Me
  loc_D51997: MemLdRfVar from_stack_1.global_88
  loc_D5199A: NewIfNullPr clsdetapago
  loc_D5199D: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D519A2: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D519B3: LitI4 0
  loc_D519B8: LitI4 1
  loc_D519BD: FLdRfVar var_A4
  loc_D519C0: Redim
  loc_D519CA: FLdPr Me
  loc_D519CD: MemLdRfVar from_stack_1.global_88
  loc_D519D0: NewIfNullAd
  loc_D519D3: FStAd var_90 
  loc_D519D7: FLdRfVar var_90
  loc_D519DA: CVarRef
  loc_D519DF: ParmAry1St
  loc_D519E5: FLdPr Me
  loc_D519E8: VCallAd Control_ID_DetaPagoDgd
  loc_D519EB: CVarAd
  loc_D519EF: ParmAry1St
  loc_D519F5: FLdRfVar var_A4
  loc_D519F8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D519FD: ILdRf var_90
  loc_D51A00: CastAd
  loc_D51A03: FLdPr Me
  loc_D51A06: MemStAdFunc
  loc_D51A0A: FLdRfVar var_A4
  loc_D51A0D: Erase
  loc_D51A0E: FFree1Ad var_90
  loc_D51A11: Branch loc_D51E85
  loc_D51A14: FLdPr Me
  loc_D51A17: VCallAd Control_ID_ctacteFlex
  loc_D51A1A: FStAdFunc var_90
  loc_D51A1D: FLdPr var_90
  loc_D51A20: LateIdLdVar var_A0 DispID_10 0
  loc_D51A27: CI4Var
  loc_D51A29: CVarI4
  loc_D51A2D: PopAdLdVar
  loc_D51A2E: LitVarI4
  loc_D51A36: PopAdLdVar
  loc_D51A37: FLdPr Me
  loc_D51A3A: VCallAd Control_ID_ctacteFlex
  loc_D51A3D: FStAdFunc var_E8
  loc_D51A40: FLdPr var_E8
  loc_D51A43: LateIdCallLdVar
  loc_D51A4D: CStrVarTmp
  loc_D51A4E: FStStrNoPop var_174
  loc_D51A51: CR8Str
  loc_D51A53: LitI2_Byte 1
  loc_D51A55: CR8I2
  loc_D51A56: EqR4
  loc_D51A57: FFree1Str var_174
  loc_D51A5A: FFreeAd var_90 = ""
  loc_D51A61: FFreeVar var_A0 = ""
  loc_D51A68: BranchF loc_D51A6E
  loc_D51A6B: Branch loc_D51E85
  loc_D51A6E: FLdPr Me
  loc_D51A71: VCallAd Control_ID_ctacteFlex
  loc_D51A74: FStAdFunc var_90
  loc_D51A77: FLdPr var_90
  loc_D51A7A: LateIdLdVar var_A0 DispID_10 0
  loc_D51A81: CI4Var
  loc_D51A83: CVarI4
  loc_D51A87: PopAdLdVar
  loc_D51A88: LitVarI4
  loc_D51A90: PopAdLdVar
  loc_D51A91: FLdPr Me
  loc_D51A94: VCallAd Control_ID_ctacteFlex
  loc_D51A97: FStAdFunc var_E8
  loc_D51A9A: FLdPr var_E8
  loc_D51A9D: LateIdCallLdVar
  loc_D51AA7: CStrVarTmp
  loc_D51AA8: FStStrNoPop var_174
  loc_D51AAB: CR8Str
  loc_D51AAD: LitI2_Byte 1
  loc_D51AAF: CR8I2
  loc_D51AB0: GtR4
  loc_D51AB1: FFree1Str var_174
  loc_D51AB4: FFreeAd var_90 = ""
  loc_D51ABB: FFreeVar var_A0 = ""
  loc_D51AC2: BranchF loc_D51E85
  loc_D51AC5: LitStr vbNullString
  loc_D51AC8: FLdPr Me
  loc_D51ACB: VCallAd Control_ID_TipoBoleTxt
  loc_D51ACE: FStAdFunc var_90
  loc_D51AD1: FLdPr var_90
  loc_D51AD4: Me.Text = from_stack_1
  loc_D51AD9: FFree1Ad var_90
  loc_D51ADC: LitStr vbNullString
  loc_D51ADF: FLdPr Me
  loc_D51AE2: VCallAd Control_ID_EstaBoleTxt
  loc_D51AE5: FStAdFunc var_90
  loc_D51AE8: FLdPr var_90
  loc_D51AEB: Me.Text = from_stack_1
  loc_D51AF0: FFree1Ad var_90
  loc_D51AF3: LitStr vbNullString
  loc_D51AF6: FLdPr Me
  loc_D51AF9: VCallAd Control_ID_FealBoleTxt
  loc_D51AFC: FStAdFunc var_90
  loc_D51AFF: FLdPr var_90
  loc_D51B02: Me.Text = from_stack_1
  loc_D51B07: FFree1Ad var_90
  loc_D51B0A: LitStr vbNullString
  loc_D51B0D: FLdPr Me
  loc_D51B10: VCallAd Control_ID_FeveBoleTxt
  loc_D51B13: FStAdFunc var_90
  loc_D51B16: FLdPr var_90
  loc_D51B19: Me.Text = from_stack_1
  loc_D51B1E: FFree1Ad var_90
  loc_D51B21: LitStr vbNullString
  loc_D51B24: FLdPr Me
  loc_D51B27: VCallAd Control_ID_FeenAcpaTxt
  loc_D51B2A: FStAdFunc var_90
  loc_D51B2D: FLdPr var_90
  loc_D51B30: Me.Text = from_stack_1
  loc_D51B35: FFree1Ad var_90
  loc_D51B38: LitStr vbNullString
  loc_D51B3B: FLdPr Me
  loc_D51B3E: VCallAd Control_ID_NumeAcpaTxt
  loc_D51B41: FStAdFunc var_90
  loc_D51B44: FLdPr var_90
  loc_D51B47: Me.Text = from_stack_1
  loc_D51B4C: FFree1Ad var_90
  loc_D51B4F: LitStr vbNullString
  loc_D51B52: FLdPr Me
  loc_D51B55: VCallAd Control_ID_FepaPagoTxt
  loc_D51B58: FStAdFunc var_90
  loc_D51B5B: FLdPr var_90
  loc_D51B5E: Me.Text = from_stack_1
  loc_D51B63: FFree1Ad var_90
  loc_D51B66: LitStr vbNullString
  loc_D51B69: FLdPr Me
  loc_D51B6C: VCallAd Control_ID_FeacPagoTxt
  loc_D51B6F: FStAdFunc var_90
  loc_D51B72: FLdPr var_90
  loc_D51B75: Me.Text = from_stack_1
  loc_D51B7A: FFree1Ad var_90
  loc_D51B7D: LitStr vbNullString
  loc_D51B80: FLdPr Me
  loc_D51B83: VCallAd Control_ID_CodiFapaTxt
  loc_D51B86: FStAdFunc var_90
  loc_D51B89: FLdPr var_90
  loc_D51B8C: Me.Text = from_stack_1
  loc_D51B91: FFree1Ad var_90
  loc_D51B94: LitStr vbNullString
  loc_D51B97: FLdPr Me
  loc_D51B9A: VCallAd Control_ID_CuotDefaTxt
  loc_D51B9D: FStAdFunc var_90
  loc_D51BA0: FLdPr var_90
  loc_D51BA3: Me.Text = from_stack_1
  loc_D51BA8: FFree1Ad var_90
  loc_D51BAB: LitI4 1
  loc_D51BB0: LitI4 1
  loc_D51BB5: LitVarStr var_C4, "0.00"
  loc_D51BBA: FStVarCopyObj var_F8
  loc_D51BBD: FLdRfVar var_F8
  loc_D51BC0: LitVarStr var_B4, "0"
  loc_D51BC5: FStVarCopyObj var_A0
  loc_D51BC8: FLdRfVar var_A0
  loc_D51BCB: FLdRfVar var_108
  loc_D51BCE: ImpAdCallFPR4  = Format(, )
  loc_D51BD3: FLdRfVar var_108
  loc_D51BD6: CStrVarVal var_174
  loc_D51BDA: FLdPr Me
  loc_D51BDD: VCallAd Control_ID_CapiBoleTxt
  loc_D51BE0: FStAdFunc var_90
  loc_D51BE3: FLdPr var_90
  loc_D51BE6: Me.Text = from_stack_1
  loc_D51BEB: FFree1Str var_174
  loc_D51BEE: FFree1Ad var_90
  loc_D51BF1: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51BFA: LitI4 1
  loc_D51BFF: LitI4 1
  loc_D51C04: LitVarStr var_C4, "0.00"
  loc_D51C09: FStVarCopyObj var_F8
  loc_D51C0C: FLdRfVar var_F8
  loc_D51C0F: LitVarStr var_B4, "0"
  loc_D51C14: FStVarCopyObj var_A0
  loc_D51C17: FLdRfVar var_A0
  loc_D51C1A: FLdRfVar var_108
  loc_D51C1D: ImpAdCallFPR4  = Format(, )
  loc_D51C22: FLdRfVar var_108
  loc_D51C25: CStrVarVal var_174
  loc_D51C29: FLdPr Me
  loc_D51C2C: VCallAd Control_ID_RecaBoleTxt
  loc_D51C2F: FStAdFunc var_90
  loc_D51C32: FLdPr var_90
  loc_D51C35: Me.Text = from_stack_1
  loc_D51C3A: FFree1Str var_174
  loc_D51C3D: FFree1Ad var_90
  loc_D51C40: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51C49: LitI4 1
  loc_D51C4E: LitI4 1
  loc_D51C53: LitVarStr var_C4, "0.00"
  loc_D51C58: FStVarCopyObj var_F8
  loc_D51C5B: FLdRfVar var_F8
  loc_D51C5E: LitVarStr var_B4, "0"
  loc_D51C63: FStVarCopyObj var_A0
  loc_D51C66: FLdRfVar var_A0
  loc_D51C69: FLdRfVar var_108
  loc_D51C6C: ImpAdCallFPR4  = Format(, )
  loc_D51C71: FLdRfVar var_108
  loc_D51C74: CStrVarVal var_174
  loc_D51C78: FLdPr Me
  loc_D51C7B: VCallAd Control_ID_DecaBoleTxt
  loc_D51C7E: FStAdFunc var_90
  loc_D51C81: FLdPr var_90
  loc_D51C84: Me.Text = from_stack_1
  loc_D51C89: FFree1Str var_174
  loc_D51C8C: FFree1Ad var_90
  loc_D51C8F: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51C98: LitI4 1
  loc_D51C9D: LitI4 1
  loc_D51CA2: LitVarStr var_C4, "0.00"
  loc_D51CA7: FStVarCopyObj var_F8
  loc_D51CAA: FLdRfVar var_F8
  loc_D51CAD: LitVarStr var_B4, "0"
  loc_D51CB2: FStVarCopyObj var_A0
  loc_D51CB5: FLdRfVar var_A0
  loc_D51CB8: FLdRfVar var_108
  loc_D51CBB: ImpAdCallFPR4  = Format(, )
  loc_D51CC0: FLdRfVar var_108
  loc_D51CC3: CStrVarVal var_174
  loc_D51CC7: FLdPr Me
  loc_D51CCA: VCallAd Control_ID_DereBoleTxt
  loc_D51CCD: FStAdFunc var_90
  loc_D51CD0: FLdPr var_90
  loc_D51CD3: Me.Text = from_stack_1
  loc_D51CD8: FFree1Str var_174
  loc_D51CDB: FFree1Ad var_90
  loc_D51CDE: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51CE7: LitI4 1
  loc_D51CEC: LitI4 1
  loc_D51CF1: LitVarStr var_C4, "0.00"
  loc_D51CF6: FStVarCopyObj var_F8
  loc_D51CF9: FLdRfVar var_F8
  loc_D51CFC: LitVarStr var_B4, "0"
  loc_D51D01: FStVarCopyObj var_A0
  loc_D51D04: FLdRfVar var_A0
  loc_D51D07: FLdRfVar var_108
  loc_D51D0A: ImpAdCallFPR4  = Format(, )
  loc_D51D0F: FLdRfVar var_108
  loc_D51D12: CStrVarVal var_174
  loc_D51D16: FLdPr Me
  loc_D51D19: VCallAd Control_ID_InteBoleTxt
  loc_D51D1C: FStAdFunc var_90
  loc_D51D1F: FLdPr var_90
  loc_D51D22: Me.Text = from_stack_1
  loc_D51D27: FFree1Str var_174
  loc_D51D2A: FFree1Ad var_90
  loc_D51D2D: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51D36: LitI4 1
  loc_D51D3B: LitI4 1
  loc_D51D40: LitVarStr var_C4, "0.00"
  loc_D51D45: FStVarCopyObj var_F8
  loc_D51D48: FLdRfVar var_F8
  loc_D51D4B: LitVarStr var_B4, "0"
  loc_D51D50: FStVarCopyObj var_A0
  loc_D51D53: FLdRfVar var_A0
  loc_D51D56: FLdRfVar var_108
  loc_D51D59: ImpAdCallFPR4  = Format(, )
  loc_D51D5E: FLdRfVar var_108
  loc_D51D61: CStrVarVal var_174
  loc_D51D65: FLdPr Me
  loc_D51D68: VCallAd Control_ID_ApreBoleTxt
  loc_D51D6B: FStAdFunc var_90
  loc_D51D6E: FLdPr var_90
  loc_D51D71: Me.Text = from_stack_1
  loc_D51D76: FFree1Str var_174
  loc_D51D79: FFree1Ad var_90
  loc_D51D7C: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51D85: LitI4 1
  loc_D51D8A: LitI4 1
  loc_D51D8F: LitVarStr var_C4, "0.00"
  loc_D51D94: FStVarCopyObj var_F8
  loc_D51D97: FLdRfVar var_F8
  loc_D51D9A: LitVarStr var_B4, "0"
  loc_D51D9F: FStVarCopyObj var_A0
  loc_D51DA2: FLdRfVar var_A0
  loc_D51DA5: FLdRfVar var_108
  loc_D51DA8: ImpAdCallFPR4  = Format(, )
  loc_D51DAD: FLdRfVar var_108
  loc_D51DB0: CStrVarVal var_174
  loc_D51DB4: FLdPr Me
  loc_D51DB7: VCallAd Control_ID_TotaBoleTxt
  loc_D51DBA: FStAdFunc var_90
  loc_D51DBD: FLdPr var_90
  loc_D51DC0: Me.Text = from_stack_1
  loc_D51DC5: FFree1Str var_174
  loc_D51DC8: FFree1Ad var_90
  loc_D51DCB: FFreeVar var_A0 = "": var_F8 = ""
  loc_D51DD4: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D51DD7: LitStr " AND NumeAcpa = 0"
  loc_D51DDA: ConcatStr
  loc_D51DDB: FStStrNoPop var_174
  loc_D51DDE: LitStr " AND PeriBole = 0"
  loc_D51DE1: ConcatStr
  loc_D51DE2: FStStrNoPop var_178
  loc_D51DE5: LitStr " AND NumeBole = 0"
  loc_D51DE8: ConcatStr
  loc_D51DE9: FStStrNoPop var_17C
  loc_D51DEC: LitStr " AND PeriCtct = 0"
  loc_D51DEF: ConcatStr
  loc_D51DF0: FStStrNoPop var_180
  loc_D51DF3: LitStr " AND NumeCtct = 0"
  loc_D51DF6: ConcatStr
  loc_D51DF7: FStStrNoPop var_184
  loc_D51DFA: LitStr " AND MoviCtct = 0"
  loc_D51DFD: ConcatStr
  loc_D51DFE: FStStrNoPop var_194
  loc_D51E01: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D51E04: ConcatStr
  loc_D51E05: FStStrNoPop var_1F8
  loc_D51E08: FLdPr Me
  loc_D51E0B: MemLdRfVar from_stack_1.global_88
  loc_D51E0E: NewIfNullPr clsdetapago
  loc_D51E11: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D51E16: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D51E27: LitI4 0
  loc_D51E2C: LitI4 1
  loc_D51E31: FLdRfVar var_A4
  loc_D51E34: Redim
  loc_D51E3E: FLdPr Me
  loc_D51E41: MemLdRfVar from_stack_1.global_88
  loc_D51E44: NewIfNullAd
  loc_D51E47: FStAd var_90 
  loc_D51E4B: FLdRfVar var_90
  loc_D51E4E: CVarRef
  loc_D51E53: ParmAry1St
  loc_D51E59: FLdPr Me
  loc_D51E5C: VCallAd Control_ID_DetaPagoDgd
  loc_D51E5F: CVarAd
  loc_D51E63: ParmAry1St
  loc_D51E69: FLdRfVar var_A4
  loc_D51E6C: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D51E71: ILdRf var_90
  loc_D51E74: CastAd
  loc_D51E77: FLdPr Me
  loc_D51E7A: MemStAdFunc
  loc_D51E7E: FLdRfVar var_A4
  loc_D51E81: Erase
  loc_D51E82: FFree1Ad var_90
  loc_D51E85: FLdPr Me
  loc_D51E88: VCallAd Control_ID_ctacteFlex
  loc_D51E8B: FStAdFunc var_90
  loc_D51E8E: FLdPr var_90
  loc_D51E91: LateIdLdVar var_A0 DispID_10 0
  loc_D51E98: CI4Var
  loc_D51E9A: CVarI4
  loc_D51E9E: PopAdLdVar
  loc_D51E9F: LitVarI4
  loc_D51EA7: PopAdLdVar
  loc_D51EA8: FLdPr Me
  loc_D51EAB: VCallAd Control_ID_ctacteFlex
  loc_D51EAE: FStAdFunc var_E8
  loc_D51EB1: FLdPr var_E8
  loc_D51EB4: LateIdCallLdVar
  loc_D51EBE: CStrVarTmp
  loc_D51EBF: FStStrNoPop var_174
  loc_D51EC2: CR8Str
  loc_D51EC4: LitI2_Byte 1
  loc_D51EC6: CR8I2
  loc_D51EC7: EqR4
  loc_D51EC8: FFree1Str var_174
  loc_D51ECB: FFreeAd var_90 = ""
  loc_D51ED2: FFreeVar var_A0 = ""
  loc_D51ED9: BranchF loc_D532CF
  loc_D51EDC: LitVar_TRUE var_B4
  loc_D51EDF: PopAdLdVar
  loc_D51EE0: FLdPr Me
  loc_D51EE3: VCallAd Control_ID_CtaCteDetaDgd
  loc_D51EE6: FStAdFunc var_90
  loc_D51EE9: FLdPr var_90
  loc_D51EEC: LateIdSt
  loc_D51EF1: FFree1Ad var_90
  loc_D51EF4: LitI2 2000
  loc_D51EF7: CR8I2
  loc_D51EF8: CVarR4
  loc_D51EFC: PopAdLdVar
  loc_D51EFD: FLdPr Me
  loc_D51F00: VCallAd Control_ID_CtaCteDetaDgd
  loc_D51F03: FStAdFunc var_90
  loc_D51F06: FLdPr var_90
  loc_D51F09: LateIdSt
  loc_D51F0E: FFree1Ad var_90
  loc_D51F11: FLdPr Me
  loc_D51F14: VCallAd Control_ID_CtaCteDetaDgd
  loc_D51F17: FStAdFunc var_90
  loc_D51F1A: FLdPr var_90
  loc_D51F1D: LateIdCall
  loc_D51F25: FFree1Ad var_90
  loc_D51F28: ImpAdLdUI1
  loc_D51F2C: CI2UI1
  loc_D51F2E: LitI2_Byte 1
  loc_D51F30: EqI2
  loc_D51F31: BranchF loc_D52264
  loc_D51F34: FLdPr Me
  loc_D51F37: VCallAd Control_ID_ctacteFlex
  loc_D51F3A: FStAdFunc var_90
  loc_D51F3D: FLdPr var_90
  loc_D51F40: LateIdLdVar var_A0 DispID_10 0
  loc_D51F47: CI4Var
  loc_D51F49: CVarI4
  loc_D51F4D: PopAdLdVar
  loc_D51F4E: LitVarI4
  loc_D51F56: PopAdLdVar
  loc_D51F57: FLdPr Me
  loc_D51F5A: VCallAd Control_ID_ctacteFlex
  loc_D51F5D: FStAdFunc var_E8
  loc_D51F60: FLdPr var_E8
  loc_D51F63: LateIdCallLdVar
  loc_D51F6D: CStrVarTmp
  loc_D51F6E: CVarStr var_108
  loc_D51F71: FLdRfVar var_11C
  loc_D51F74: ImpAdCallFPR4  = Trim()
  loc_D51F79: LitI4 4
  loc_D51F7E: FLdRfVar var_11C
  loc_D51F81: FLdRfVar var_170
  loc_D51F84: ImpAdCallFPR4  = Right(, )
  loc_D51F89: FLdRfVar var_170
  loc_D51F8C: FnCIntVar
  loc_D51F8E: LitI2 2018
  loc_D51F91: GeI2
  loc_D51F92: FFreeAd var_90 = ""
  loc_D51F99: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D51FA8: BranchF loc_D52264
  loc_D51FAB: LitStr "SELECT litadeta.CodiSeca CodiCtde, DetaSeca DetaCtde, ImpoLtde ImpoLtde, DecaLtde, ExenLtde, TotaLtde FROM litadeta"
  loc_D51FAE: LitStr " LEFT JOIN servcata ON servcata.PeriOrde = litadeta.PeriOrde"
  loc_D51FB1: ConcatStr
  loc_D51FB2: FStStrNoPop var_174
  loc_D51FB5: LitStr " AND servcata.CodiSeca = litadeta.CodiSeca"
  loc_D51FB8: ConcatStr
  loc_D51FB9: FStStrNoPop var_178
  loc_D51FBC: LitStr " WHERE litadeta.PeriLiqu = "
  loc_D51FBF: ConcatStr
  loc_D51FC0: CVarStr var_F8
  loc_D51FC3: FLdRfVar var_A0
  loc_D51FC6: FLdRfVar var_10C
  loc_D51FC9: LitVarStr var_B4, "PeriCtct"
  loc_D51FCE: PopAdLdVar
  loc_D51FCF: FLdRfVar var_E8
  loc_D51FD2: FLdRfVar var_90
  loc_D51FD5: FLdPr Me
  loc_D51FD8: MemLdRfVar from_stack_1.global_60
  loc_D51FDB: NewIfNullPr clsctacte
  loc_D51FDE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D51FE3: FLdPr var_90
  loc_D51FE6:  = Me.Fields
  loc_D51FEB: FLdPr var_E8
  loc_D51FEE: from_stack_2 = Me.Item(from_stack_1)
  loc_D51FF3: FLdPr var_10C
  loc_D51FF6:  = Me.Value
  loc_D51FFB: FLdRfVar var_A0
  loc_D51FFE: ConcatVar var_108
  loc_D52002: LitVarStr var_C4, " AND litadeta.BimeLiqu = "
  loc_D52007: ConcatVar var_11C
  loc_D5200B: FLdRfVar var_170
  loc_D5200E: FLdRfVar var_1E4
  loc_D52011: LitVarStr var_D4, "BimeCtct"
  loc_D52016: PopAdLdVar
  loc_D52017: FLdRfVar var_1A0
  loc_D5201A: FLdRfVar var_160
  loc_D5201D: FLdPr Me
  loc_D52020: MemLdRfVar from_stack_1.global_60
  loc_D52023: NewIfNullPr clsctacte
  loc_D52026: from_stack_1v = clsctacte.RsFrmGet()
  loc_D5202B: FLdPr var_160
  loc_D5202E:  = Me.Fields
  loc_D52033: FLdPr var_1A0
  loc_D52036: from_stack_2 = Me.Item(from_stack_1)
  loc_D5203B: FLdPr var_1E4
  loc_D5203E:  = Me.Value
  loc_D52043: FLdRfVar var_170
  loc_D52046: ConcatVar var_1F4
  loc_D5204A: LitVarStr var_E4, " AND litadeta.CodiTili = "
  loc_D5204F: ConcatVar var_214
  loc_D52053: FLdRfVar var_224
  loc_D52056: FLdRfVar var_2E0
  loc_D52059: LitVarStr var_12C, "CodiTili"
  loc_D5205E: PopAdLdVar
  loc_D5205F: FLdRfVar var_28C
  loc_D52062: FLdRfVar var_228
  loc_D52065: FLdPr Me
  loc_D52068: MemLdRfVar from_stack_1.global_60
  loc_D5206B: NewIfNullPr clsctacte
  loc_D5206E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D52073: FLdPr var_228
  loc_D52076:  = Me.Fields
  loc_D5207B: FLdPr var_28C
  loc_D5207E: from_stack_2 = Me.Item(from_stack_1)
  loc_D52083: FLdPr var_2E0
  loc_D52086:  = Me.Value
  loc_D5208B: FLdRfVar var_224
  loc_D5208E: ConcatVar var_238
  loc_D52092: LitVarStr var_13C, " AND litadeta.NumeLiqu = "
  loc_D52097: ConcatVar var_24C
  loc_D5209B: FLdRfVar var_26C
  loc_D5209E: FLdRfVar var_378
  loc_D520A1: LitVarStr var_14C, "NumeLiqu"
  loc_D520A6: PopAdLdVar
  loc_D520A7: FLdRfVar var_354
  loc_D520AA: FLdRfVar var_300
  loc_D520AD: FLdPr Me
  loc_D520B0: MemLdRfVar from_stack_1.global_60
  loc_D520B3: NewIfNullPr clsctacte
  loc_D520B6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D520BB: FLdPr var_300
  loc_D520BE:  = Me.Fields
  loc_D520C3: FLdPr var_354
  loc_D520C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D520CB: FLdPr var_378
  loc_D520CE:  = Me.Value
  loc_D520D3: FLdRfVar var_26C
  loc_D520D6: ConcatVar var_27C
  loc_D520DA: LitVarStr var_15C, " AND litadeta.CodiInmu = "
  loc_D520DF: ConcatVar var_29C
  loc_D520E3: FLdRfVar var_2F0
  loc_D520E6: FLdRfVar var_384
  loc_D520E9: LitVarStr var_1B0, "CuenCtct"
  loc_D520EE: PopAdLdVar
  loc_D520EF: FLdRfVar var_380
  loc_D520F2: FLdRfVar var_37C
  loc_D520F5: FLdPr Me
  loc_D520F8: MemLdRfVar from_stack_1.global_60
  loc_D520FB: NewIfNullPr clsctacte
  loc_D520FE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D52103: FLdPr var_37C
  loc_D52106:  = Me.Fields
  loc_D5210B: FLdPr var_380
  loc_D5210E: from_stack_2 = Me.Item(from_stack_1)
  loc_D52113: FLdPr var_384
  loc_D52116:  = Me.Value
  loc_D5211B: FLdRfVar var_2F0
  loc_D5211E: ConcatVar var_310
  loc_D52122: LitVarStr var_1C0, " AND litadeta.CodiConc = '"
  loc_D52127: ConcatVar var_364
  loc_D5212B: FLdRfVar var_3AC
  loc_D5212E: FLdRfVar var_390
  loc_D52131: LitVarStr var_1D0, "CodiConc"
  loc_D52136: PopAdLdVar
  loc_D52137: FLdRfVar var_38C
  loc_D5213A: FLdRfVar var_388
  loc_D5213D: FLdPr Me
  loc_D52140: MemLdRfVar from_stack_1.global_60
  loc_D52143: NewIfNullPr clsctacte
  loc_D52146: from_stack_1v = clsctacte.RsFrmGet()
  loc_D5214B: FLdPr var_388
  loc_D5214E:  = Me.Fields
  loc_D52153: FLdPr var_38C
  loc_D52156: from_stack_2 = Me.Item(from_stack_1)
  loc_D5215B: FLdPr var_390
  loc_D5215E:  = Me.Value
  loc_D52163: FLdRfVar var_3AC
  loc_D52166: ConcatVar var_3BC
  loc_D5216A: LitVarStr var_1E0, "'"
  loc_D5216F: ConcatVar var_3CC
  loc_D52173: LitVarStr var_25C, " AND litadeta.TipoVenc = 1"
  loc_D52178: ConcatVar var_3DC
  loc_D5217C: CStrVarVal var_17C
  loc_D52180: FLdPr Me
  loc_D52183: MemLdRfVar from_stack_1.global_56
  loc_D52186: NewIfNullPr clsctacte
  loc_D52189: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D5218E: FFreeStr var_174 = "": var_178 = ""
  loc_D52197: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = "": var_354 = "": var_378 = "": var_37C = "": var_380 = "": var_384 = "": var_388 = "": var_38C = ""
  loc_D521BE: FFreeVar var_F8 = "": var_A0 = "": var_108 = "": var_11C = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = "": var_364 = "": var_3AC = "": var_3BC = "": var_3CC = ""
  loc_D521E9: FLdRfVar var_188
  loc_D521EC: FLdPr Me
  loc_D521EF: MemLdRfVar from_stack_1.global_56
  loc_D521F2: NewIfNullPr clsctacte
  loc_D521F5: from_stack_1 = clsctacte.RecordCount
  loc_D521FA: ILdRf var_188
  loc_D521FD: LitI4 0
  loc_D52202: GtI4
  loc_D52203: BranchF loc_D52264
  loc_D52206: LitI4 0
  loc_D5220B: LitI4 1
  loc_D52210: FLdRfVar var_A4
  loc_D52213: Redim
  loc_D5221D: FLdPr Me
  loc_D52220: MemLdRfVar from_stack_1.global_56
  loc_D52223: NewIfNullAd
  loc_D52226: FStAd var_90 
  loc_D5222A: FLdRfVar var_90
  loc_D5222D: CVarRef
  loc_D52232: ParmAry1St
  loc_D52238: FLdPr Me
  loc_D5223B: VCallAd Control_ID_CtaCteDetaDgd
  loc_D5223E: CVarAd
  loc_D52242: ParmAry1St
  loc_D52248: FLdRfVar var_A4
  loc_D5224B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D52250: ILdRf var_90
  loc_D52253: CastAd
  loc_D52256: FLdPr Me
  loc_D52259: MemStAdFunc
  loc_D5225D: FLdRfVar var_A4
  loc_D52260: Erase
  loc_D52261: FFree1Ad var_90
  loc_D52264: ImpAdLdUI1
  loc_D52268: CI2UI1
  loc_D5226A: LitI2_Byte 2
  loc_D5226C: EqI2
  loc_D5226D: BranchF loc_D525B2
  loc_D52270: FLdPr Me
  loc_D52273: VCallAd Control_ID_ctacteFlex
  loc_D52276: FStAdFunc var_90
  loc_D52279: FLdPr var_90
  loc_D5227C: LateIdLdVar var_A0 DispID_10 0
  loc_D52283: CI4Var
  loc_D52285: CVarI4
  loc_D52289: PopAdLdVar
  loc_D5228A: LitVarI4
  loc_D52292: PopAdLdVar
  loc_D52293: FLdPr Me
  loc_D52296: VCallAd Control_ID_ctacteFlex
  loc_D52299: FStAdFunc var_E8
  loc_D5229C: FLdPr var_E8
  loc_D5229F: LateIdCallLdVar
  loc_D522A9: CStrVarTmp
  loc_D522AA: CVarStr var_108
  loc_D522AD: FLdRfVar var_11C
  loc_D522B0: ImpAdCallFPR4  = Trim()
  loc_D522B5: LitI4 4
  loc_D522BA: FLdRfVar var_11C
  loc_D522BD: FLdRfVar var_170
  loc_D522C0: ImpAdCallFPR4  = Right(, )
  loc_D522C5: FLdRfVar var_170
  loc_D522C8: FnCIntVar
  loc_D522CA: LitI2 2018
  loc_D522CD: GeI2
  loc_D522CE: FFreeAd var_90 = ""
  loc_D522D5: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D522E4: BranchF loc_D525B2
  loc_D522E7: LitStr "SELECT licodeta.CodiSubr CodiCtde, IFNULL(DetaSubr,'Gasto de Envio') DetaCtde, ImpoLcde ImpoLtde, DecaLcde DecaLtde, ExceLcde ExenLtde, TotaLcde TotaLtde FROM licodeta"
  loc_D522EA: LitStr " LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo"
  loc_D522ED: ConcatStr
  loc_D522EE: FStStrNoPop var_174
  loc_D522F1: LitStr " AND subrubro.CodiRubr = licodeta.CodiRubr"
  loc_D522F4: ConcatStr
  loc_D522F5: FStStrNoPop var_178
  loc_D522F8: LitStr " AND subrubro.PeriOrde = licodeta.PeriLiqu"
  loc_D522FB: ConcatStr
  loc_D522FC: FStStrNoPop var_17C
  loc_D522FF: LitStr " AND subrubro.CodiSubr = licodeta.CodiSubr"
  loc_D52302: ConcatStr
  loc_D52303: FStStrNoPop var_180
  loc_D52306: LitStr " WHERE licodeta.PeriLiqu = "
  loc_D52309: ConcatStr
  loc_D5230A: CVarStr var_F8
  loc_D5230D: FLdRfVar var_A0
  loc_D52310: FLdRfVar var_10C
  loc_D52313: LitVarStr var_B4, "PeriCtct"
  loc_D52318: PopAdLdVar
  loc_D52319: FLdRfVar var_E8
  loc_D5231C: FLdRfVar var_90
  loc_D5231F: FLdPr Me
  loc_D52322: MemLdRfVar from_stack_1.global_60
  loc_D52325: NewIfNullPr clsctacte
  loc_D52328: from_stack_1v = clsctacte.RsFrmGet()
  loc_D5232D: FLdPr var_90
  loc_D52330:  = Me.Fields
  loc_D52335: FLdPr var_E8
  loc_D52338: from_stack_2 = Me.Item(from_stack_1)
  loc_D5233D: FLdPr var_10C
  loc_D52340:  = Me.Value
  loc_D52345: FLdRfVar var_A0
  loc_D52348: ConcatVar var_108
  loc_D5234C: LitVarStr var_C4, " AND licodeta.BimeLiqu = "
  loc_D52351: ConcatVar var_11C
  loc_D52355: FLdRfVar var_170
  loc_D52358: FLdRfVar var_1E4
  loc_D5235B: LitVarStr var_D4, "BimeCtct"
  loc_D52360: PopAdLdVar
  loc_D52361: FLdRfVar var_1A0
  loc_D52364: FLdRfVar var_160
  loc_D52367: FLdPr Me
  loc_D5236A: MemLdRfVar from_stack_1.global_60
  loc_D5236D: NewIfNullPr clsctacte
  loc_D52370: from_stack_1v = clsctacte.RsFrmGet()
  loc_D52375: FLdPr var_160
  loc_D52378:  = Me.Fields
  loc_D5237D: FLdPr var_1A0
  loc_D52380: from_stack_2 = Me.Item(from_stack_1)
  loc_D52385: FLdPr var_1E4
  loc_D52388:  = Me.Value
  loc_D5238D: FLdRfVar var_170
  loc_D52390: ConcatVar var_1F4
  loc_D52394: LitVarStr var_E4, " AND licodeta.CodiTili = "
  loc_D52399: ConcatVar var_214
  loc_D5239D: FLdRfVar var_224
  loc_D523A0: FLdRfVar var_2E0
  loc_D523A3: LitVarStr var_12C, "CodiTili"
  loc_D523A8: PopAdLdVar
  loc_D523A9: FLdRfVar var_28C
  loc_D523AC: FLdRfVar var_228
  loc_D523AF: FLdPr Me
  loc_D523B2: MemLdRfVar from_stack_1.global_60
  loc_D523B5: NewIfNullPr clsctacte
  loc_D523B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D523BD: FLdPr var_228
  loc_D523C0:  = Me.Fields
  loc_D523C5: FLdPr var_28C
  loc_D523C8: from_stack_2 = Me.Item(from_stack_1)
  loc_D523CD: FLdPr var_2E0
  loc_D523D0:  = Me.Value
  loc_D523D5: FLdRfVar var_224
  loc_D523D8: ConcatVar var_238
  loc_D523DC: LitVarStr var_13C, " AND licodeta.NumeLiqu = "
  loc_D523E1: ConcatVar var_24C
  loc_D523E5: FLdRfVar var_26C
  loc_D523E8: FLdRfVar var_378
  loc_D523EB: LitVarStr var_14C, "NumeLiqu"
  loc_D523F0: PopAdLdVar
  loc_D523F1: FLdRfVar var_354
  loc_D523F4: FLdRfVar var_300
  loc_D523F7: FLdPr Me
  loc_D523FA: MemLdRfVar from_stack_1.global_60
  loc_D523FD: NewIfNullPr clsctacte
  loc_D52400: from_stack_1v = clsctacte.RsFrmGet()
  loc_D52405: FLdPr var_300
  loc_D52408:  = Me.Fields
  loc_D5240D: FLdPr var_354
  loc_D52410: from_stack_2 = Me.Item(from_stack_1)
  loc_D52415: FLdPr var_378
  loc_D52418:  = Me.Value
  loc_D5241D: FLdRfVar var_26C
  loc_D52420: ConcatVar var_27C
  loc_D52424: LitVarStr var_15C, " AND licodeta.CodiCome = "
  loc_D52429: ConcatVar var_29C
  loc_D5242D: FLdRfVar var_2F0
  loc_D52430: FLdRfVar var_384
  loc_D52433: LitVarStr var_1B0, "CuenCtct"
  loc_D52438: PopAdLdVar
  loc_D52439: FLdRfVar var_380
  loc_D5243C: FLdRfVar var_37C
  loc_D5243F: FLdPr Me
  loc_D52442: MemLdRfVar from_stack_1.global_60
  loc_D52445: NewIfNullPr clsctacte
  loc_D52448: from_stack_1v = clsctacte.RsFrmGet()
  loc_D5244D: FLdPr var_37C
  loc_D52450:  = Me.Fields
  loc_D52455: FLdPr var_380
  loc_D52458: from_stack_2 = Me.Item(from_stack_1)
  loc_D5245D: FLdPr var_384
  loc_D52460:  = Me.Value
  loc_D52465: FLdRfVar var_2F0
  loc_D52468: ConcatVar var_310
  loc_D5246C: LitVarStr var_1C0, " AND licodeta.CodiConc = '"
  loc_D52471: ConcatVar var_364
  loc_D52475: FLdRfVar var_3AC
  loc_D52478: FLdRfVar var_390
  loc_D5247B: LitVarStr var_1D0, "CodiConc"
  loc_D52480: PopAdLdVar
  loc_D52481: FLdRfVar var_38C
  loc_D52484: FLdRfVar var_388
  loc_D52487: FLdPr Me
  loc_D5248A: MemLdRfVar from_stack_1.global_60
  loc_D5248D: NewIfNullPr clsctacte
  loc_D52490: from_stack_1v = clsctacte.RsFrmGet()
  loc_D52495: FLdPr var_388
  loc_D52498:  = Me.Fields
  loc_D5249D: FLdPr var_38C
  loc_D524A0: from_stack_2 = Me.Item(from_stack_1)
  loc_D524A5: FLdPr var_390
  loc_D524A8:  = Me.Value
  loc_D524AD: FLdRfVar var_3AC
  loc_D524B0: ConcatVar var_3BC
  loc_D524B4: LitVarStr var_1E0, "'"
  loc_D524B9: ConcatVar var_3CC
  loc_D524BD: LitVarStr var_25C, " AND licodeta.TipoVenc = 1"
  loc_D524C2: ConcatVar var_3DC
  loc_D524C6: CStrVarVal var_184
  loc_D524CA: FLdPr Me
  loc_D524CD: MemLdRfVar from_stack_1.global_56
  loc_D524D0: NewIfNullPr clsctacte
  loc_D524D3: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D524D8: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_D524E5: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = "": var_354 = "": var_378 = "": var_37C = "": var_380 = "": var_384 = "": var_388 = "": var_38C = ""
  loc_D5250C: FFreeVar var_F8 = "": var_A0 = "": var_108 = "": var_11C = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = "": var_364 = "": var_3AC = "": var_3BC = "": var_3CC = ""
  loc_D52537: FLdRfVar var_188
  loc_D5253A: FLdPr Me
  loc_D5253D: MemLdRfVar from_stack_1.global_56
  loc_D52540: NewIfNullPr clsctacte
  loc_D52543: from_stack_1 = clsctacte.RecordCount
  loc_D52548: ILdRf var_188
  loc_D5254B: LitI4 0
  loc_D52550: GtI4
  loc_D52551: BranchF loc_D525B2
  loc_D52554: LitI4 0
  loc_D52559: LitI4 1
  loc_D5255E: FLdRfVar var_A4
  loc_D52561: Redim
  loc_D5256B: FLdPr Me
  loc_D5256E: MemLdRfVar from_stack_1.global_56
  loc_D52571: NewIfNullAd
  loc_D52574: FStAd var_90 
  loc_D52578: FLdRfVar var_90
  loc_D5257B: CVarRef
  loc_D52580: ParmAry1St
  loc_D52586: FLdPr Me
  loc_D52589: VCallAd Control_ID_CtaCteDetaDgd
  loc_D5258C: CVarAd
  loc_D52590: ParmAry1St
  loc_D52596: FLdRfVar var_A4
  loc_D52599: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D5259E: ILdRf var_90
  loc_D525A1: CastAd
  loc_D525A4: FLdPr Me
  loc_D525A7: MemStAdFunc
  loc_D525AB: FLdRfVar var_A4
  loc_D525AE: Erase
  loc_D525AF: FFree1Ad var_90
  loc_D525B2: ImpAdLdUI1
  loc_D525B6: CI2UI1
  loc_D525B8: LitI2_Byte 2
  loc_D525BA: EqI2
  loc_D525BB: LitStr "Municipalidad de Guaymallén"
  loc_D525BE: LitStr "Municipalidad de Lavalle"
  loc_D525C1: EqStr
  loc_D525C3: LitStr "Municipalidad de Guaymallén"
  loc_D525C6: LitStr "Municipalidad de San Carlos"
  loc_D525C9: EqStr
  loc_D525CB: OrI4
  loc_D525CC: LitStr "Municipalidad de Guaymallén"
  loc_D525CF: LitStr "Municipalidad de Rivadavia"
  loc_D525D2: EqStr
  loc_D525D4: OrI4
  loc_D525D5: LitStr "Municipalidad de Guaymallén"
  loc_D525D8: LitStr "Municipalidad de Tunuyán"
  loc_D525DB: EqStr
  loc_D525DD: OrI4
  loc_D525DE: AndI4
  loc_D525DF: BranchF loc_D528D1
  loc_D525E2: FLdPr Me
  loc_D525E5: VCallAd Control_ID_ctacteFlex
  loc_D525E8: FStAdFunc var_E8
  loc_D525EB: FLdPr var_E8
  loc_D525EE: LateIdLdVar var_A0 DispID_10 0
  loc_D525F5: CI4Var
  loc_D525F7: CVarI4
  loc_D525FB: PopAdLdVar
  loc_D525FC: LitVarI4
  loc_D52604: PopAdLdVar
  loc_D52605: FLdPr Me
  loc_D52608: VCallAd Control_ID_ctacteFlex
  loc_D5260B: FStAdFunc var_10C
  loc_D5260E: FLdPr var_10C
  loc_D52611: LateIdCallLdVar
  loc_D5261B: CStrVarTmp
  loc_D5261C: CVarStr var_108
  loc_D5261F: FLdRfVar var_11C
  loc_D52622: ImpAdCallFPR4  = Trim()
  loc_D52627: FLdPr Me
  loc_D5262A: VCallAd Control_ID_ctacteFlex
  loc_D5262D: FStAdFunc var_160
  loc_D52630: FLdPr var_160
  loc_D52633: LateIdLdVar var_1F4 DispID_10 0
  loc_D5263A: CI4Var
  loc_D5263C: CVarI4
  loc_D52640: PopAdLdVar
  loc_D52641: LitVarI4
  loc_D52649: PopAdLdVar
  loc_D5264A: FLdPr Me
  loc_D5264D: VCallAd Control_ID_ctacteFlex
  loc_D52650: FStAdFunc var_1A0
  loc_D52653: FLdPr var_1A0
  loc_D52656: LateIdCallLdVar
  loc_D52660: PopAd
  loc_D52662: LitStr "SELECT CodiCtde, DebeCtde, DetaSubr as DetaCtde FROM ctactedeta"
  loc_D52665: LitStr " LEFT JOIN subrubro ON subrubro.PeriOrde = ctactedeta.PeriOrde"
  loc_D52668: ConcatStr
  loc_D52669: FStStrNoPop var_174
  loc_D5266C: LitStr " AND subrubro.CodiSubr = ctactedeta.CodiCtde"
  loc_D5266F: ConcatStr
  loc_D52670: FStStrNoPop var_178
  loc_D52673: LitStr " WHERE CodiOfic = "
  loc_D52676: ConcatStr
  loc_D52677: FStStrNoPop var_17C
  loc_D5267A: ImpAdLdUI1
  loc_D5267E: CStrI2
  loc_D52680: FStStrNoPop var_180
  loc_D52683: ConcatStr
  loc_D52684: FStStrNoPop var_184
  loc_D52687: LitStr " AND CuenCtct = '"
  loc_D5268A: ConcatStr
  loc_D5268B: FStStrNoPop var_1F8
  loc_D5268E: FLdRfVar var_194
  loc_D52691: FLdPr Me
  loc_D52694: VCallAd Control_ID_NumeCtaTxt
  loc_D52697: FStAdFunc var_90
  loc_D5269A: FLdPr var_90
  loc_D5269D:  = Me.Text
  loc_D526A2: ILdRf var_194
  loc_D526A5: ConcatStr
  loc_D526A6: FStStrNoPop var_1FC
  loc_D526A9: LitStr "'"
  loc_D526AC: ConcatStr
  loc_D526AD: FStStrNoPop var_200
  loc_D526B0: LitStr " AND PeriCtct = "
  loc_D526B3: ConcatStr
  loc_D526B4: FStStrNoPop var_204
  loc_D526B7: LitI4 4
  loc_D526BC: FLdRfVar var_11C
  loc_D526BF: FLdRfVar var_170
  loc_D526C2: ImpAdCallFPR4  = Right(, )
  loc_D526C7: FLdRfVar var_170
  loc_D526CA: FnCIntVar
  loc_D526CC: CStrUI1
  loc_D526CE: FStStrNoPop var_23C
  loc_D526D1: ConcatStr
  loc_D526D2: FStStrNoPop var_280
  loc_D526D5: LitStr " AND BimeCtct = "
  loc_D526D8: ConcatStr
  loc_D526D9: FStStrNoPop var_288
  loc_D526DC: LitI4 1
  loc_D526E1: FLdPr Me
  loc_D526E4: VCallAd Control_ID_ctacteFlex
  loc_D526E7: FStAdFunc var_1E4
  loc_D526EA: FLdPr var_1E4
  loc_D526ED: LateIdLdVar var_224 DispID_10 0
  loc_D526F4: CI4Var
  loc_D526F6: CVarI4
  loc_D526FA: PopAdLdVar
  loc_D526FB: LitVarI4
  loc_D52703: PopAdLdVar
  loc_D52704: FLdPr Me
  loc_D52707: VCallAd Control_ID_ctacteFlex
  loc_D5270A: FStAdFunc var_228
  loc_D5270D: FLdPr var_228
  loc_D52710: LateIdCallLdVar
  loc_D5271A: CStrVarTmp
  loc_D5271B: FStStrNoPop var_284
  loc_D5271E: LitStr "/"
  loc_D52721: LitI4 0
  loc_D52726: FnInStr4
  loc_D52728: LitI4 1
  loc_D5272D: SubI4
  loc_D5272E: CVarI4
  loc_D52732: LitI4 1
  loc_D52737: FLdRfVar var_214
  loc_D5273A: CStrVarTmp
  loc_D5273B: CVarStr var_24C
  loc_D5273E: FLdRfVar var_27C
  loc_D52741: ImpAdCallFPR4  = Mid(, , )
  loc_D52746: FLdRfVar var_27C
  loc_D52749: FnCIntVar
  loc_D5274B: CStrUI1
  loc_D5274D: FStStrNoPop var_2F4
  loc_D52750: ConcatStr
  loc_D52751: FStStrNoPop var_2F8
  loc_D52754: LitStr " AND NumeCtct = "
  loc_D52757: ConcatStr
  loc_D52758: FStStrNoPop var_2FC
  loc_D5275B: FLdPr Me
  loc_D5275E: VCallAd Control_ID_ctacteFlex
  loc_D52761: FStAdFunc var_28C
  loc_D52764: FLdPr var_28C
  loc_D52767: LateIdLdVar var_29C DispID_10 0
  loc_D5276E: CI4Var
  loc_D52770: CVarI4
  loc_D52774: PopAdLdVar
  loc_D52775: LitVarI4
  loc_D5277D: PopAdLdVar
  loc_D5277E: FLdPr Me
  loc_D52781: VCallAd Control_ID_ctacteFlex
  loc_D52784: FStAdFunc var_2E0
  loc_D52787: FLdPr var_2E0
  loc_D5278A: LateIdCallLdVar
  loc_D52794: CStrVarTmp
  loc_D52795: FStStrNoPop var_368
  loc_D52798: ConcatStr
  loc_D52799: FStStrNoPop var_36C
  loc_D5279C: LitStr " AND MoviCtct = "
  loc_D5279F: ConcatStr
  loc_D527A0: FStStrNoPop var_370
  loc_D527A3: FLdPr Me
  loc_D527A6: VCallAd Control_ID_ctacteFlex
  loc_D527A9: FStAdFunc var_300
  loc_D527AC: FLdPr var_300
  loc_D527AF: LateIdLdVar var_310 DispID_10 0
  loc_D527B6: CI4Var
  loc_D527B8: CVarI4
  loc_D527BC: PopAdLdVar
  loc_D527BD: LitVarI4
  loc_D527C5: PopAdLdVar
  loc_D527C6: FLdPr Me
  loc_D527C9: VCallAd Control_ID_ctacteFlex
  loc_D527CC: FStAdFunc var_354
  loc_D527CF: FLdPr var_354
  loc_D527D2: LateIdCallLdVar
  loc_D527DC: CStrVarTmp
  loc_D527DD: FStStrNoPop var_374
  loc_D527E0: ConcatStr
  loc_D527E1: FStStrNoPop var_640
  loc_D527E4: LitStr " AND MoviCtde = 1"
  loc_D527E7: ConcatStr
  loc_D527E8: FStStrNoPop var_644
  loc_D527EB: LitStr " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_D527EE: ConcatStr
  loc_D527EF: FStStrNoPop var_648
  loc_D527F2: FLdPr Me
  loc_D527F5: MemLdRfVar from_stack_1.global_56
  loc_D527F8: NewIfNullPr clsctacte
  loc_D527FB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D52800: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_1F8 = "": var_194 = "": var_1FC = "": var_200 = "": var_204 = "": var_23C = "": var_280 = "": var_284 = "": var_288 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_640 = "": var_644 = ""
  loc_D52833: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = ""
  loc_D5284C: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = ""
  loc_D52873: LitI4 0
  loc_D52878: LitI4 1
  loc_D5287D: FLdRfVar var_A4
  loc_D52880: Redim
  loc_D5288A: FLdPr Me
  loc_D5288D: MemLdRfVar from_stack_1.global_56
  loc_D52890: NewIfNullAd
  loc_D52893: FStAd var_90 
  loc_D52897: FLdRfVar var_90
  loc_D5289A: CVarRef
  loc_D5289F: ParmAry1St
  loc_D528A5: FLdPr Me
  loc_D528A8: VCallAd Control_ID_CtaCteDetaDgd
  loc_D528AB: CVarAd
  loc_D528AF: ParmAry1St
  loc_D528B5: FLdRfVar var_A4
  loc_D528B8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D528BD: ILdRf var_90
  loc_D528C0: CastAd
  loc_D528C3: FLdPr Me
  loc_D528C6: MemStAdFunc
  loc_D528CA: FLdRfVar var_A4
  loc_D528CD: Erase
  loc_D528CE: FFree1Ad var_90
  loc_D528D1: ImpAdLdUI1
  loc_D528D5: CI2UI1
  loc_D528D7: LitI2_Byte 3
  loc_D528D9: EqI2
  loc_D528DA: BranchF loc_D52BCC
  loc_D528DD: FLdPr Me
  loc_D528E0: VCallAd Control_ID_ctacteFlex
  loc_D528E3: FStAdFunc var_E8
  loc_D528E6: FLdPr var_E8
  loc_D528E9: LateIdLdVar var_A0 DispID_10 0
  loc_D528F0: CI4Var
  loc_D528F2: CVarI4
  loc_D528F6: PopAdLdVar
  loc_D528F7: LitVarI4
  loc_D528FF: PopAdLdVar
  loc_D52900: FLdPr Me
  loc_D52903: VCallAd Control_ID_ctacteFlex
  loc_D52906: FStAdFunc var_10C
  loc_D52909: FLdPr var_10C
  loc_D5290C: LateIdCallLdVar
  loc_D52916: CStrVarTmp
  loc_D52917: CVarStr var_108
  loc_D5291A: FLdRfVar var_11C
  loc_D5291D: ImpAdCallFPR4  = Trim()
  loc_D52922: FLdPr Me
  loc_D52925: VCallAd Control_ID_ctacteFlex
  loc_D52928: FStAdFunc var_160
  loc_D5292B: FLdPr var_160
  loc_D5292E: LateIdLdVar var_1F4 DispID_10 0
  loc_D52935: CI4Var
  loc_D52937: CVarI4
  loc_D5293B: PopAdLdVar
  loc_D5293C: LitVarI4
  loc_D52944: PopAdLdVar
  loc_D52945: FLdPr Me
  loc_D52948: VCallAd Control_ID_ctacteFlex
  loc_D5294B: FStAdFunc var_1A0
  loc_D5294E: FLdPr var_1A0
  loc_D52951: LateIdCallLdVar
  loc_D5295B: PopAd
  loc_D5295D: LitStr "SELECT CodiCtde, DebeCtde, DetaSede as DetaCtde FROM ctactedeta"
  loc_D52960: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = ctactedeta.PeriOrde"
  loc_D52963: ConcatStr
  loc_D52964: FStStrNoPop var_174
  loc_D52967: LitStr " AND servdeva.CodiSede = ctactedeta.CodiCtde"
  loc_D5296A: ConcatStr
  loc_D5296B: FStStrNoPop var_178
  loc_D5296E: LitStr " WHERE CodiOfic = "
  loc_D52971: ConcatStr
  loc_D52972: FStStrNoPop var_17C
  loc_D52975: ImpAdLdUI1
  loc_D52979: CStrI2
  loc_D5297B: FStStrNoPop var_180
  loc_D5297E: ConcatStr
  loc_D5297F: FStStrNoPop var_184
  loc_D52982: LitStr " AND CuenCtct = '"
  loc_D52985: ConcatStr
  loc_D52986: FStStrNoPop var_1F8
  loc_D52989: FLdRfVar var_194
  loc_D5298C: FLdPr Me
  loc_D5298F: VCallAd Control_ID_NumeCtaTxt
  loc_D52992: FStAdFunc var_90
  loc_D52995: FLdPr var_90
  loc_D52998:  = Me.Text
  loc_D5299D: ILdRf var_194
  loc_D529A0: ConcatStr
  loc_D529A1: FStStrNoPop var_1FC
  loc_D529A4: LitStr "'"
  loc_D529A7: ConcatStr
  loc_D529A8: FStStrNoPop var_200
  loc_D529AB: LitStr " AND PeriCtct = "
  loc_D529AE: ConcatStr
  loc_D529AF: FStStrNoPop var_204
  loc_D529B2: LitI4 4
  loc_D529B7: FLdRfVar var_11C
  loc_D529BA: FLdRfVar var_170
  loc_D529BD: ImpAdCallFPR4  = Right(, )
  loc_D529C2: FLdRfVar var_170
  loc_D529C5: FnCIntVar
  loc_D529C7: CStrUI1
  loc_D529C9: FStStrNoPop var_23C
  loc_D529CC: ConcatStr
  loc_D529CD: FStStrNoPop var_280
  loc_D529D0: LitStr " AND BimeCtct = "
  loc_D529D3: ConcatStr
  loc_D529D4: FStStrNoPop var_288
  loc_D529D7: LitI4 1
  loc_D529DC: FLdPr Me
  loc_D529DF: VCallAd Control_ID_ctacteFlex
  loc_D529E2: FStAdFunc var_1E4
  loc_D529E5: FLdPr var_1E4
  loc_D529E8: LateIdLdVar var_224 DispID_10 0
  loc_D529EF: CI4Var
  loc_D529F1: CVarI4
  loc_D529F5: PopAdLdVar
  loc_D529F6: LitVarI4
  loc_D529FE: PopAdLdVar
  loc_D529FF: FLdPr Me
  loc_D52A02: VCallAd Control_ID_ctacteFlex
  loc_D52A05: FStAdFunc var_228
  loc_D52A08: FLdPr var_228
  loc_D52A0B: LateIdCallLdVar
  loc_D52A15: CStrVarTmp
  loc_D52A16: FStStrNoPop var_284
  loc_D52A19: LitStr "/"
  loc_D52A1C: LitI4 0
  loc_D52A21: FnInStr4
  loc_D52A23: LitI4 1
  loc_D52A28: SubI4
  loc_D52A29: CVarI4
  loc_D52A2D: LitI4 1
  loc_D52A32: FLdRfVar var_214
  loc_D52A35: CStrVarTmp
  loc_D52A36: CVarStr var_24C
  loc_D52A39: FLdRfVar var_27C
  loc_D52A3C: ImpAdCallFPR4  = Mid(, , )
  loc_D52A41: FLdRfVar var_27C
  loc_D52A44: FnCIntVar
  loc_D52A46: CStrUI1
  loc_D52A48: FStStrNoPop var_2F4
  loc_D52A4B: ConcatStr
  loc_D52A4C: FStStrNoPop var_2F8
  loc_D52A4F: LitStr " AND NumeCtct = "
  loc_D52A52: ConcatStr
  loc_D52A53: FStStrNoPop var_2FC
  loc_D52A56: FLdPr Me
  loc_D52A59: VCallAd Control_ID_ctacteFlex
  loc_D52A5C: FStAdFunc var_28C
  loc_D52A5F: FLdPr var_28C
  loc_D52A62: LateIdLdVar var_29C DispID_10 0
  loc_D52A69: CI4Var
  loc_D52A6B: CVarI4
  loc_D52A6F: PopAdLdVar
  loc_D52A70: LitVarI4
  loc_D52A78: PopAdLdVar
  loc_D52A79: FLdPr Me
  loc_D52A7C: VCallAd Control_ID_ctacteFlex
  loc_D52A7F: FStAdFunc var_2E0
  loc_D52A82: FLdPr var_2E0
  loc_D52A85: LateIdCallLdVar
  loc_D52A8F: CStrVarTmp
  loc_D52A90: FStStrNoPop var_368
  loc_D52A93: ConcatStr
  loc_D52A94: FStStrNoPop var_36C
  loc_D52A97: LitStr " AND MoviCtct = "
  loc_D52A9A: ConcatStr
  loc_D52A9B: FStStrNoPop var_370
  loc_D52A9E: FLdPr Me
  loc_D52AA1: VCallAd Control_ID_ctacteFlex
  loc_D52AA4: FStAdFunc var_300
  loc_D52AA7: FLdPr var_300
  loc_D52AAA: LateIdLdVar var_310 DispID_10 0
  loc_D52AB1: CI4Var
  loc_D52AB3: CVarI4
  loc_D52AB7: PopAdLdVar
  loc_D52AB8: LitVarI4
  loc_D52AC0: PopAdLdVar
  loc_D52AC1: FLdPr Me
  loc_D52AC4: VCallAd Control_ID_ctacteFlex
  loc_D52AC7: FStAdFunc var_354
  loc_D52ACA: FLdPr var_354
  loc_D52ACD: LateIdCallLdVar
  loc_D52AD7: CStrVarTmp
  loc_D52AD8: FStStrNoPop var_374
  loc_D52ADB: ConcatStr
  loc_D52ADC: FStStrNoPop var_640
  loc_D52ADF: LitStr " AND MoviCtde = 1"
  loc_D52AE2: ConcatStr
  loc_D52AE3: FStStrNoPop var_644
  loc_D52AE6: LitStr " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_D52AE9: ConcatStr
  loc_D52AEA: FStStrNoPop var_648
  loc_D52AED: FLdPr Me
  loc_D52AF0: MemLdRfVar from_stack_1.global_56
  loc_D52AF3: NewIfNullPr clsctacte
  loc_D52AF6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D52AFB: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_1F8 = "": var_194 = "": var_1FC = "": var_200 = "": var_204 = "": var_23C = "": var_280 = "": var_284 = "": var_288 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_640 = "": var_644 = ""
  loc_D52B2E: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = ""
  loc_D52B47: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = ""
  loc_D52B6E: LitI4 0
  loc_D52B73: LitI4 1
  loc_D52B78: FLdRfVar var_A4
  loc_D52B7B: Redim
  loc_D52B85: FLdPr Me
  loc_D52B88: MemLdRfVar from_stack_1.global_56
  loc_D52B8B: NewIfNullAd
  loc_D52B8E: FStAd var_90 
  loc_D52B92: FLdRfVar var_90
  loc_D52B95: CVarRef
  loc_D52B9A: ParmAry1St
  loc_D52BA0: FLdPr Me
  loc_D52BA3: VCallAd Control_ID_CtaCteDetaDgd
  loc_D52BA6: CVarAd
  loc_D52BAA: ParmAry1St
  loc_D52BB0: FLdRfVar var_A4
  loc_D52BB3: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D52BB8: ILdRf var_90
  loc_D52BBB: CastAd
  loc_D52BBE: FLdPr Me
  loc_D52BC1: MemStAdFunc
  loc_D52BC5: FLdRfVar var_A4
  loc_D52BC8: Erase
  loc_D52BC9: FFree1Ad var_90
  loc_D52BCC: ImpAdLdUI1
  loc_D52BD0: CI2UI1
  loc_D52BD2: LitI2_Byte 4
  loc_D52BD4: EqI2
  loc_D52BD5: BranchF loc_D52FBB
  loc_D52BD8: FLdPr Me
  loc_D52BDB: VCallAd Control_ID_ctacteFlex
  loc_D52BDE: FStAdFunc var_90
  loc_D52BE1: FLdPr var_90
  loc_D52BE4: LateIdLdVar var_A0 DispID_10 0
  loc_D52BEB: CI4Var
  loc_D52BED: CVarI4
  loc_D52BF1: PopAdLdVar
  loc_D52BF2: LitVarI4
  loc_D52BFA: PopAdLdVar
  loc_D52BFB: FLdPr Me
  loc_D52BFE: VCallAd Control_ID_ctacteFlex
  loc_D52C01: FStAdFunc var_E8
  loc_D52C04: FLdPr var_E8
  loc_D52C07: LateIdCallLdVar
  loc_D52C11: CStrVarTmp
  loc_D52C12: CVarStr var_108
  loc_D52C15: FLdRfVar var_11C
  loc_D52C18: ImpAdCallFPR4  = Trim()
  loc_D52C1D: LitI4 4
  loc_D52C22: FLdRfVar var_11C
  loc_D52C25: FLdRfVar var_170
  loc_D52C28: ImpAdCallFPR4  = Right(, )
  loc_D52C2D: FLdRfVar var_170
  loc_D52C30: FnCIntVar
  loc_D52C32: CVarI2 var_1F4
  loc_D52C35: ImpAdCallI2 IsNumeric()
  loc_D52C3A: FFreeAd var_90 = ""
  loc_D52C41: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = ""
  loc_D52C52: BranchF loc_D52F5D
  loc_D52C55: FLdPr Me
  loc_D52C58: VCallAd Control_ID_ctacteFlex
  loc_D52C5B: FStAdFunc var_90
  loc_D52C5E: FLdPr var_90
  loc_D52C61: LateIdLdVar var_A0 DispID_10 0
  loc_D52C68: CI4Var
  loc_D52C6A: CVarI4
  loc_D52C6E: PopAdLdVar
  loc_D52C6F: LitVarI4
  loc_D52C77: PopAdLdVar
  loc_D52C78: FLdPr Me
  loc_D52C7B: VCallAd Control_ID_ctacteFlex
  loc_D52C7E: FStAdFunc var_E8
  loc_D52C81: FLdPr var_E8
  loc_D52C84: LateIdCallLdVar
  loc_D52C8E: CStrVarTmp
  loc_D52C8F: CVarStr var_108
  loc_D52C92: FLdRfVar var_11C
  loc_D52C95: ImpAdCallFPR4  = Trim()
  loc_D52C9A: LitI4 4
  loc_D52C9F: FLdRfVar var_11C
  loc_D52CA2: FLdRfVar var_170
  loc_D52CA5: ImpAdCallFPR4  = Right(, )
  loc_D52CAA: FLdRfVar var_170
  loc_D52CAD: FnCIntVar
  loc_D52CAF: LitI2 1960
  loc_D52CB2: GeI2
  loc_D52CB3: FFreeAd var_90 = ""
  loc_D52CBA: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = ""
  loc_D52CC9: BranchF loc_D52F5D
  loc_D52CCC: FLdPr Me
  loc_D52CCF: VCallAd Control_ID_ctacteFlex
  loc_D52CD2: FStAdFunc var_E8
  loc_D52CD5: FLdPr var_E8
  loc_D52CD8: LateIdLdVar var_A0 DispID_10 0
  loc_D52CDF: CI4Var
  loc_D52CE1: CVarI4
  loc_D52CE5: PopAdLdVar
  loc_D52CE6: LitVarI4
  loc_D52CEE: PopAdLdVar
  loc_D52CEF: FLdPr Me
  loc_D52CF2: VCallAd Control_ID_ctacteFlex
  loc_D52CF5: FStAdFunc var_10C
  loc_D52CF8: FLdPr var_10C
  loc_D52CFB: LateIdCallLdVar
  loc_D52D05: CStrVarTmp
  loc_D52D06: CVarStr var_108
  loc_D52D09: FLdRfVar var_11C
  loc_D52D0C: ImpAdCallFPR4  = Trim()
  loc_D52D11: FLdPr Me
  loc_D52D14: VCallAd Control_ID_ctacteFlex
  loc_D52D17: FStAdFunc var_160
  loc_D52D1A: FLdPr var_160
  loc_D52D1D: LateIdLdVar var_1F4 DispID_10 0
  loc_D52D24: CI4Var
  loc_D52D26: CVarI4
  loc_D52D2A: PopAdLdVar
  loc_D52D2B: LitVarI4
  loc_D52D33: PopAdLdVar
  loc_D52D34: FLdPr Me
  loc_D52D37: VCallAd Control_ID_ctacteFlex
  loc_D52D3A: FStAdFunc var_1A0
  loc_D52D3D: FLdPr var_1A0
  loc_D52D40: LateIdCallLdVar
  loc_D52D4A: PopAd
  loc_D52D4C: LitStr "SELECT CodiCtde, DebeCtde, DetaSece as DetaCtde FROM ctactedeta"
  loc_D52D4F: LitStr " LEFT JOIN servceme ON servceme.PeriOrde = ctactedeta.PeriOrde"
  loc_D52D52: ConcatStr
  loc_D52D53: FStStrNoPop var_174
  loc_D52D56: LitStr " AND servceme.CodiSece = ctactedeta.CodiCtde"
  loc_D52D59: ConcatStr
  loc_D52D5A: FStStrNoPop var_178
  loc_D52D5D: LitStr " WHERE CodiOfic = "
  loc_D52D60: ConcatStr
  loc_D52D61: FStStrNoPop var_17C
  loc_D52D64: ImpAdLdUI1
  loc_D52D68: CStrI2
  loc_D52D6A: FStStrNoPop var_180
  loc_D52D6D: ConcatStr
  loc_D52D6E: FStStrNoPop var_184
  loc_D52D71: LitStr " AND CuenCtct = '"
  loc_D52D74: ConcatStr
  loc_D52D75: FStStrNoPop var_1F8
  loc_D52D78: FLdRfVar var_194
  loc_D52D7B: FLdPr Me
  loc_D52D7E: VCallAd Control_ID_NumeCtaTxt
  loc_D52D81: FStAdFunc var_90
  loc_D52D84: FLdPr var_90
  loc_D52D87:  = Me.Text
  loc_D52D8C: ILdRf var_194
  loc_D52D8F: ConcatStr
  loc_D52D90: FStStrNoPop var_1FC
  loc_D52D93: LitStr "'"
  loc_D52D96: ConcatStr
  loc_D52D97: FStStrNoPop var_200
  loc_D52D9A: LitStr " AND PeriCtct = "
  loc_D52D9D: ConcatStr
  loc_D52D9E: FStStrNoPop var_204
  loc_D52DA1: LitI4 4
  loc_D52DA6: FLdRfVar var_11C
  loc_D52DA9: FLdRfVar var_170
  loc_D52DAC: ImpAdCallFPR4  = Right(, )
  loc_D52DB1: FLdRfVar var_170
  loc_D52DB4: FnCIntVar
  loc_D52DB6: CStrUI1
  loc_D52DB8: FStStrNoPop var_23C
  loc_D52DBB: ConcatStr
  loc_D52DBC: FStStrNoPop var_280
  loc_D52DBF: LitStr " AND BimeCtct = "
  loc_D52DC2: ConcatStr
  loc_D52DC3: FStStrNoPop var_288
  loc_D52DC6: LitI4 1
  loc_D52DCB: FLdPr Me
  loc_D52DCE: VCallAd Control_ID_ctacteFlex
  loc_D52DD1: FStAdFunc var_1E4
  loc_D52DD4: FLdPr var_1E4
  loc_D52DD7: LateIdLdVar var_224 DispID_10 0
  loc_D52DDE: CI4Var
  loc_D52DE0: CVarI4
  loc_D52DE4: PopAdLdVar
  loc_D52DE5: LitVarI4
  loc_D52DED: PopAdLdVar
  loc_D52DEE: FLdPr Me
  loc_D52DF1: VCallAd Control_ID_ctacteFlex
  loc_D52DF4: FStAdFunc var_228
  loc_D52DF7: FLdPr var_228
  loc_D52DFA: LateIdCallLdVar
  loc_D52E04: CStrVarTmp
  loc_D52E05: FStStrNoPop var_284
  loc_D52E08: LitStr "/"
  loc_D52E0B: LitI4 0
  loc_D52E10: FnInStr4
  loc_D52E12: LitI4 1
  loc_D52E17: SubI4
  loc_D52E18: CVarI4
  loc_D52E1C: LitI4 1
  loc_D52E21: FLdRfVar var_214
  loc_D52E24: CStrVarTmp
  loc_D52E25: CVarStr var_24C
  loc_D52E28: FLdRfVar var_27C
  loc_D52E2B: ImpAdCallFPR4  = Mid(, , )
  loc_D52E30: FLdRfVar var_27C
  loc_D52E33: FnCIntVar
  loc_D52E35: CStrUI1
  loc_D52E37: FStStrNoPop var_2F4
  loc_D52E3A: ConcatStr
  loc_D52E3B: FStStrNoPop var_2F8
  loc_D52E3E: LitStr " AND NumeCtct = "
  loc_D52E41: ConcatStr
  loc_D52E42: FStStrNoPop var_2FC
  loc_D52E45: FLdPr Me
  loc_D52E48: VCallAd Control_ID_ctacteFlex
  loc_D52E4B: FStAdFunc var_28C
  loc_D52E4E: FLdPr var_28C
  loc_D52E51: LateIdLdVar var_29C DispID_10 0
  loc_D52E58: CI4Var
  loc_D52E5A: CVarI4
  loc_D52E5E: PopAdLdVar
  loc_D52E5F: LitVarI4
  loc_D52E67: PopAdLdVar
  loc_D52E68: FLdPr Me
  loc_D52E6B: VCallAd Control_ID_ctacteFlex
  loc_D52E6E: FStAdFunc var_2E0
  loc_D52E71: FLdPr var_2E0
  loc_D52E74: LateIdCallLdVar
  loc_D52E7E: CStrVarTmp
  loc_D52E7F: FStStrNoPop var_368
  loc_D52E82: ConcatStr
  loc_D52E83: FStStrNoPop var_36C
  loc_D52E86: LitStr " AND MoviCtct = "
  loc_D52E89: ConcatStr
  loc_D52E8A: FStStrNoPop var_370
  loc_D52E8D: FLdPr Me
  loc_D52E90: VCallAd Control_ID_ctacteFlex
  loc_D52E93: FStAdFunc var_300
  loc_D52E96: FLdPr var_300
  loc_D52E99: LateIdLdVar var_310 DispID_10 0
  loc_D52EA0: CI4Var
  loc_D52EA2: CVarI4
  loc_D52EA6: PopAdLdVar
  loc_D52EA7: LitVarI4
  loc_D52EAF: PopAdLdVar
  loc_D52EB0: FLdPr Me
  loc_D52EB3: VCallAd Control_ID_ctacteFlex
  loc_D52EB6: FStAdFunc var_354
  loc_D52EB9: FLdPr var_354
  loc_D52EBC: LateIdCallLdVar
  loc_D52EC6: CStrVarTmp
  loc_D52EC7: FStStrNoPop var_374
  loc_D52ECA: ConcatStr
  loc_D52ECB: FStStrNoPop var_640
  loc_D52ECE: LitStr " AND MoviCtde = 1"
  loc_D52ED1: ConcatStr
  loc_D52ED2: FStStrNoPop var_644
  loc_D52ED5: LitStr " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_D52ED8: ConcatStr
  loc_D52ED9: FStStrNoPop var_648
  loc_D52EDC: FLdPr Me
  loc_D52EDF: MemLdRfVar from_stack_1.global_56
  loc_D52EE2: NewIfNullPr clsctacte
  loc_D52EE5: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D52EEA: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_1F8 = "": var_194 = "": var_1FC = "": var_200 = "": var_204 = "": var_23C = "": var_280 = "": var_284 = "": var_288 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_640 = "": var_644 = ""
  loc_D52F1D: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = ""
  loc_D52F36: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = ""
  loc_D52F5D: LitI4 0
  loc_D52F62: LitI4 1
  loc_D52F67: FLdRfVar var_A4
  loc_D52F6A: Redim
  loc_D52F74: FLdPr Me
  loc_D52F77: MemLdRfVar from_stack_1.global_56
  loc_D52F7A: NewIfNullAd
  loc_D52F7D: FStAd var_90 
  loc_D52F81: FLdRfVar var_90
  loc_D52F84: CVarRef
  loc_D52F89: ParmAry1St
  loc_D52F8F: FLdPr Me
  loc_D52F92: VCallAd Control_ID_CtaCteDetaDgd
  loc_D52F95: CVarAd
  loc_D52F99: ParmAry1St
  loc_D52F9F: FLdRfVar var_A4
  loc_D52FA2: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D52FA7: ILdRf var_90
  loc_D52FAA: CastAd
  loc_D52FAD: FLdPr Me
  loc_D52FB0: MemStAdFunc
  loc_D52FB4: FLdRfVar var_A4
  loc_D52FB7: Erase
  loc_D52FB8: FFree1Ad var_90
  loc_D52FBB: ImpAdLdUI1
  loc_D52FBF: CI2UI1
  loc_D52FC1: LitI2_Byte 5
  loc_D52FC3: EqI2
  loc_D52FC4: BranchF loc_D532B6
  loc_D52FC7: FLdPr Me
  loc_D52FCA: VCallAd Control_ID_ctacteFlex
  loc_D52FCD: FStAdFunc var_E8
  loc_D52FD0: FLdPr var_E8
  loc_D52FD3: LateIdLdVar var_A0 DispID_10 0
  loc_D52FDA: CI4Var
  loc_D52FDC: CVarI4
  loc_D52FE0: PopAdLdVar
  loc_D52FE1: LitVarI4
  loc_D52FE9: PopAdLdVar
  loc_D52FEA: FLdPr Me
  loc_D52FED: VCallAd Control_ID_ctacteFlex
  loc_D52FF0: FStAdFunc var_10C
  loc_D52FF3: FLdPr var_10C
  loc_D52FF6: LateIdCallLdVar
  loc_D53000: CStrVarTmp
  loc_D53001: CVarStr var_108
  loc_D53004: FLdRfVar var_11C
  loc_D53007: ImpAdCallFPR4  = Trim()
  loc_D5300C: FLdPr Me
  loc_D5300F: VCallAd Control_ID_ctacteFlex
  loc_D53012: FStAdFunc var_160
  loc_D53015: FLdPr var_160
  loc_D53018: LateIdLdVar var_1F4 DispID_10 0
  loc_D5301F: CI4Var
  loc_D53021: CVarI4
  loc_D53025: PopAdLdVar
  loc_D53026: LitVarI4
  loc_D5302E: PopAdLdVar
  loc_D5302F: FLdPr Me
  loc_D53032: VCallAd Control_ID_ctacteFlex
  loc_D53035: FStAdFunc var_1A0
  loc_D53038: FLdPr var_1A0
  loc_D5303B: LateIdCallLdVar
  loc_D53045: PopAd
  loc_D53047: LitStr "SELECT CodiCtde, DebeCtde, DetaSede as DetaCtde FROM ctactedeta"
  loc_D5304A: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = ctactedeta.PeriOrde"
  loc_D5304D: ConcatStr
  loc_D5304E: FStStrNoPop var_174
  loc_D53051: LitStr " AND servdeva.CodiSede = ctactedeta.CodiCtde"
  loc_D53054: ConcatStr
  loc_D53055: FStStrNoPop var_178
  loc_D53058: LitStr " WHERE CodiOfic = "
  loc_D5305B: ConcatStr
  loc_D5305C: FStStrNoPop var_17C
  loc_D5305F: ImpAdLdUI1
  loc_D53063: CStrI2
  loc_D53065: FStStrNoPop var_180
  loc_D53068: ConcatStr
  loc_D53069: FStStrNoPop var_184
  loc_D5306C: LitStr " AND CuenCtct = '"
  loc_D5306F: ConcatStr
  loc_D53070: FStStrNoPop var_1F8
  loc_D53073: FLdRfVar var_194
  loc_D53076: FLdPr Me
  loc_D53079: VCallAd Control_ID_NumeCtaTxt
  loc_D5307C: FStAdFunc var_90
  loc_D5307F: FLdPr var_90
  loc_D53082:  = Me.Text
  loc_D53087: ILdRf var_194
  loc_D5308A: ConcatStr
  loc_D5308B: FStStrNoPop var_1FC
  loc_D5308E: LitStr "'"
  loc_D53091: ConcatStr
  loc_D53092: FStStrNoPop var_200
  loc_D53095: LitStr " AND PeriCtct = "
  loc_D53098: ConcatStr
  loc_D53099: FStStrNoPop var_204
  loc_D5309C: LitI4 4
  loc_D530A1: FLdRfVar var_11C
  loc_D530A4: FLdRfVar var_170
  loc_D530A7: ImpAdCallFPR4  = Right(, )
  loc_D530AC: FLdRfVar var_170
  loc_D530AF: FnCIntVar
  loc_D530B1: CStrUI1
  loc_D530B3: FStStrNoPop var_23C
  loc_D530B6: ConcatStr
  loc_D530B7: FStStrNoPop var_280
  loc_D530BA: LitStr " AND BimeCtct = "
  loc_D530BD: ConcatStr
  loc_D530BE: FStStrNoPop var_288
  loc_D530C1: LitI4 1
  loc_D530C6: FLdPr Me
  loc_D530C9: VCallAd Control_ID_ctacteFlex
  loc_D530CC: FStAdFunc var_1E4
  loc_D530CF: FLdPr var_1E4
  loc_D530D2: LateIdLdVar var_224 DispID_10 0
  loc_D530D9: CI4Var
  loc_D530DB: CVarI4
  loc_D530DF: PopAdLdVar
  loc_D530E0: LitVarI4
  loc_D530E8: PopAdLdVar
  loc_D530E9: FLdPr Me
  loc_D530EC: VCallAd Control_ID_ctacteFlex
  loc_D530EF: FStAdFunc var_228
  loc_D530F2: FLdPr var_228
  loc_D530F5: LateIdCallLdVar
  loc_D530FF: CStrVarTmp
  loc_D53100: FStStrNoPop var_284
  loc_D53103: LitStr "/"
  loc_D53106: LitI4 0
  loc_D5310B: FnInStr4
  loc_D5310D: LitI4 1
  loc_D53112: SubI4
  loc_D53113: CVarI4
  loc_D53117: LitI4 1
  loc_D5311C: FLdRfVar var_214
  loc_D5311F: CStrVarTmp
  loc_D53120: CVarStr var_24C
  loc_D53123: FLdRfVar var_27C
  loc_D53126: ImpAdCallFPR4  = Mid(, , )
  loc_D5312B: FLdRfVar var_27C
  loc_D5312E: FnCIntVar
  loc_D53130: CStrUI1
  loc_D53132: FStStrNoPop var_2F4
  loc_D53135: ConcatStr
  loc_D53136: FStStrNoPop var_2F8
  loc_D53139: LitStr " AND NumeCtct = "
  loc_D5313C: ConcatStr
  loc_D5313D: FStStrNoPop var_2FC
  loc_D53140: FLdPr Me
  loc_D53143: VCallAd Control_ID_ctacteFlex
  loc_D53146: FStAdFunc var_28C
  loc_D53149: FLdPr var_28C
  loc_D5314C: LateIdLdVar var_29C DispID_10 0
  loc_D53153: CI4Var
  loc_D53155: CVarI4
  loc_D53159: PopAdLdVar
  loc_D5315A: LitVarI4
  loc_D53162: PopAdLdVar
  loc_D53163: FLdPr Me
  loc_D53166: VCallAd Control_ID_ctacteFlex
  loc_D53169: FStAdFunc var_2E0
  loc_D5316C: FLdPr var_2E0
  loc_D5316F: LateIdCallLdVar
  loc_D53179: CStrVarTmp
  loc_D5317A: FStStrNoPop var_368
  loc_D5317D: ConcatStr
  loc_D5317E: FStStrNoPop var_36C
  loc_D53181: LitStr " AND MoviCtct = "
  loc_D53184: ConcatStr
  loc_D53185: FStStrNoPop var_370
  loc_D53188: FLdPr Me
  loc_D5318B: VCallAd Control_ID_ctacteFlex
  loc_D5318E: FStAdFunc var_300
  loc_D53191: FLdPr var_300
  loc_D53194: LateIdLdVar var_310 DispID_10 0
  loc_D5319B: CI4Var
  loc_D5319D: CVarI4
  loc_D531A1: PopAdLdVar
  loc_D531A2: LitVarI4
  loc_D531AA: PopAdLdVar
  loc_D531AB: FLdPr Me
  loc_D531AE: VCallAd Control_ID_ctacteFlex
  loc_D531B1: FStAdFunc var_354
  loc_D531B4: FLdPr var_354
  loc_D531B7: LateIdCallLdVar
  loc_D531C1: CStrVarTmp
  loc_D531C2: FStStrNoPop var_374
  loc_D531C5: ConcatStr
  loc_D531C6: FStStrNoPop var_640
  loc_D531C9: LitStr " AND MoviCtde = 1"
  loc_D531CC: ConcatStr
  loc_D531CD: FStStrNoPop var_644
  loc_D531D0: LitStr " ORDER BY ctactedeta.CodiOfic, ctactedeta.CuenCtct, ctactedeta.PeriCtct, ctactedeta.BimeCtct, ctactedeta.NumeCtct, ctactedeta.MoviCtct, ctactedeta.PeriOrde, ctactedeta.CodiCtde, ctactedeta.NumeCtde, ctactedeta.MoviCtde"
  loc_D531D3: ConcatStr
  loc_D531D4: FStStrNoPop var_648
  loc_D531D7: FLdPr Me
  loc_D531DA: MemLdRfVar from_stack_1.global_56
  loc_D531DD: NewIfNullPr clsctacte
  loc_D531E0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D531E5: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_1F8 = "": var_194 = "": var_1FC = "": var_200 = "": var_204 = "": var_23C = "": var_280 = "": var_284 = "": var_288 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_640 = "": var_644 = ""
  loc_D53218: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = "": var_300 = ""
  loc_D53231: FFreeVar var_A0 = "": var_F8 = "": var_108 = "": var_11C = "": var_170 = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = "": var_238 = "": var_24C = "": var_26C = "": var_27C = "": var_27C = "": var_29C = "": var_2F0 = "": var_310 = ""
  loc_D53258: LitI4 0
  loc_D5325D: LitI4 1
  loc_D53262: FLdRfVar var_A4
  loc_D53265: Redim
  loc_D5326F: FLdPr Me
  loc_D53272: MemLdRfVar from_stack_1.global_56
  loc_D53275: NewIfNullAd
  loc_D53278: FStAd var_90 
  loc_D5327C: FLdRfVar var_90
  loc_D5327F: CVarRef
  loc_D53284: ParmAry1St
  loc_D5328A: FLdPr Me
  loc_D5328D: VCallAd Control_ID_CtaCteDetaDgd
  loc_D53290: CVarAd
  loc_D53294: ParmAry1St
  loc_D5329A: FLdRfVar var_A4
  loc_D5329D: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D532A2: ILdRf var_90
  loc_D532A5: CastAd
  loc_D532A8: FLdPr Me
  loc_D532AB: MemStAdFunc
  loc_D532AF: FLdRfVar var_A4
  loc_D532B2: Erase
  loc_D532B3: FFree1Ad var_90
  loc_D532B6: LitVar_FALSE
  loc_D532BA: PopAdLdVar
  loc_D532BB: FLdPr Me
  loc_D532BE: VCallAd Control_ID_DetaPagoDgd
  loc_D532C1: FStAdFunc var_90
  loc_D532C4: FLdPr var_90
  loc_D532C7: LateIdSt
  loc_D532CC: FFree1Ad var_90
  loc_D532CF: FLdPr Me
  loc_D532D2: VCallAd Control_ID_ctacteFlex
  loc_D532D5: FStAdFunc var_90
  loc_D532D8: FLdPr var_90
  loc_D532DB: LateIdLdVar var_A0 DispID_10 0
  loc_D532E2: CI4Var
  loc_D532E4: CVarI4
  loc_D532E8: PopAdLdVar
  loc_D532E9: LitVarI4
  loc_D532F1: PopAdLdVar
  loc_D532F2: FLdPr Me
  loc_D532F5: VCallAd Control_ID_ctacteFlex
  loc_D532F8: FStAdFunc var_E8
  loc_D532FB: FLdPr var_E8
  loc_D532FE: LateIdCallLdVar
  loc_D53308: CStrVarTmp
  loc_D53309: FStStrNoPop var_174
  loc_D5330C: LitStr "13030202"
  loc_D5330F: EqStr
  loc_D53311: FFree1Str var_174
  loc_D53314: FFreeAd var_90 = ""
  loc_D5331B: FFreeVar var_A0 = ""
  loc_D53322: BranchF loc_D53613
  loc_D53325: FLdRfVar var_188
  loc_D53328: FLdPr Me
  loc_D5332B: MemLdRfVar from_stack_1.global_60
  loc_D5332E: NewIfNullPr clsctacte
  loc_D53331: from_stack_1 = clsctacte.RecordCount
  loc_D53336: ILdRf var_188
  loc_D53339: LitI4 1
  loc_D5333E: EqI4
  loc_D5333F: BranchF loc_D53613
  loc_D53342: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_D53345: LitStr " AND NumeAcpa = 0"
  loc_D53348: ConcatStr
  loc_D53349: FStStrNoPop var_174
  loc_D5334C: LitStr " AND PeriBole = 0"
  loc_D5334F: ConcatStr
  loc_D53350: FStStrNoPop var_178
  loc_D53353: LitStr " AND NumeBole = 0"
  loc_D53356: ConcatStr
  loc_D53357: FStStrNoPop var_17C
  loc_D5335A: LitStr " AND PeriCtct = 0"
  loc_D5335D: ConcatStr
  loc_D5335E: FStStrNoPop var_180
  loc_D53361: LitStr " AND NumeCtct = 0"
  loc_D53364: ConcatStr
  loc_D53365: FStStrNoPop var_184
  loc_D53368: LitStr " AND MoviCtct = 0"
  loc_D5336B: ConcatStr
  loc_D5336C: FStStrNoPop var_194
  loc_D5336F: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_D53372: ConcatStr
  loc_D53373: FStStrNoPop var_1F8
  loc_D53376: FLdPr Me
  loc_D53379: MemLdRfVar from_stack_1.global_88
  loc_D5337C: NewIfNullPr clsdetapago
  loc_D5337F: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_D53384: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_194 = ""
  loc_D53395: LitI4 0
  loc_D5339A: LitI4 1
  loc_D5339F: FLdRfVar var_A4
  loc_D533A2: Redim
  loc_D533AC: FLdPr Me
  loc_D533AF: MemLdRfVar from_stack_1.global_88
  loc_D533B2: NewIfNullAd
  loc_D533B5: FStAd var_90 
  loc_D533B9: FLdRfVar var_90
  loc_D533BC: CVarRef
  loc_D533C1: ParmAry1St
  loc_D533C7: FLdPr Me
  loc_D533CA: VCallAd Control_ID_DetaPagoDgd
  loc_D533CD: CVarAd
  loc_D533D1: ParmAry1St
  loc_D533D7: FLdRfVar var_A4
  loc_D533DA: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D533DF: ILdRf var_90
  loc_D533E2: CastAd
  loc_D533E5: FLdPr Me
  loc_D533E8: MemStAdFunc
  loc_D533EC: FLdRfVar var_A4
  loc_D533EF: Erase
  loc_D533F0: FFree1Ad var_90
  loc_D533F3: LitStr "SELECT CodiCtde, DebeCtde FROM ctactedeta WHERE CodiOfic = 0 AND CuenCtct = 0"
  loc_D533F6: FLdPr Me
  loc_D533F9: MemLdRfVar from_stack_1.global_56
  loc_D533FC: NewIfNullPr clsctacte
  loc_D533FF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D53404: LitVar_FALSE
  loc_D53408: PopAdLdVar
  loc_D53409: FLdPr Me
  loc_D5340C: VCallAd Control_ID_CtaCteDetaDgd
  loc_D5340F: FStAdFunc var_90
  loc_D53412: FLdPr var_90
  loc_D53415: LateIdSt
  loc_D5341A: FFree1Ad var_90
  loc_D5341D: LitVar_FALSE
  loc_D53421: PopAdLdVar
  loc_D53422: FLdPr Me
  loc_D53425: VCallAd Control_ID_DetaPagoDgd
  loc_D53428: FStAdFunc var_90
  loc_D5342B: FLdPr var_90
  loc_D5342E: LateIdSt
  loc_D53433: FFree1Ad var_90
  loc_D53436: LitVar_TRUE var_B4
  loc_D53439: PopAdLdVar
  loc_D5343A: FLdPr Me
  loc_D5343D: VCallAd Control_ID_RecaBoleDgd
  loc_D53440: FStAdFunc var_90
  loc_D53443: FLdPr var_90
  loc_D53446: LateIdSt
  loc_D5344B: FFree1Ad var_90
  loc_D5344E: LitStr "SELECT * FROM recabole"
  loc_D53451: LitStr " WHERE CodiOfic = "
  loc_D53454: ConcatStr
  loc_D53455: FStStrNoPop var_174
  loc_D53458: ImpAdLdUI1
  loc_D5345C: CStrI2
  loc_D5345E: FStStrNoPop var_178
  loc_D53461: ConcatStr
  loc_D53462: FStStrNoPop var_17C
  loc_D53465: LitStr " AND CuenCtct = '"
  loc_D53468: ConcatStr
  loc_D53469: FStStrNoPop var_184
  loc_D5346C: FLdRfVar var_180
  loc_D5346F: FLdPr Me
  loc_D53472: VCallAd Control_ID_NumeCtaTxt
  loc_D53475: FStAdFunc var_90
  loc_D53478: FLdPr var_90
  loc_D5347B:  = Me.Text
  loc_D53480: ILdRf var_180
  loc_D53483: ConcatStr
  loc_D53484: FStStrNoPop var_194
  loc_D53487: LitStr "'"
  loc_D5348A: ConcatStr
  loc_D5348B: FStStrNoPop var_1F8
  loc_D5348E: LitStr " AND PeriLiqu = "
  loc_D53491: ConcatStr
  loc_D53492: CVarStr var_F8
  loc_D53495: FLdRfVar var_A0
  loc_D53498: FLdRfVar var_160
  loc_D5349B: LitVarStr var_B4, "PeriCtct"
  loc_D534A0: PopAdLdVar
  loc_D534A1: FLdRfVar var_10C
  loc_D534A4: FLdRfVar var_E8
  loc_D534A7: FLdPr Me
  loc_D534AA: MemLdRfVar from_stack_1.global_60
  loc_D534AD: NewIfNullPr clsctacte
  loc_D534B0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D534B5: FLdPr var_E8
  loc_D534B8:  = Me.Fields
  loc_D534BD: FLdPr var_10C
  loc_D534C0: from_stack_2 = Me.Item(from_stack_1)
  loc_D534C5: FLdPr var_160
  loc_D534C8:  = Me.Value
  loc_D534CD: FLdRfVar var_A0
  loc_D534D0: ConcatVar var_108
  loc_D534D4: LitVarStr var_C4, " AND CodiTili = "
  loc_D534D9: ConcatVar var_11C
  loc_D534DD: FLdRfVar var_170
  loc_D534E0: FLdRfVar var_228
  loc_D534E3: LitVarStr var_D4, "CodiTili"
  loc_D534E8: PopAdLdVar
  loc_D534E9: FLdRfVar var_1E4
  loc_D534EC: FLdRfVar var_1A0
  loc_D534EF: FLdPr Me
  loc_D534F2: MemLdRfVar from_stack_1.global_60
  loc_D534F5: NewIfNullPr clsctacte
  loc_D534F8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D534FD: FLdPr var_1A0
  loc_D53500:  = Me.Fields
  loc_D53505: FLdPr var_1E4
  loc_D53508: from_stack_2 = Me.Item(from_stack_1)
  loc_D5350D: FLdPr var_228
  loc_D53510:  = Me.Value
  loc_D53515: FLdRfVar var_170
  loc_D53518: ConcatVar var_1F4
  loc_D5351C: LitVarStr var_E4, " AND NumeLiqu = "
  loc_D53521: ConcatVar var_214
  loc_D53525: FLdRfVar var_224
  loc_D53528: FLdRfVar var_300
  loc_D5352B: LitVarStr var_12C, "NumeLiqu"
  loc_D53530: PopAdLdVar
  loc_D53531: FLdRfVar var_2E0
  loc_D53534: FLdRfVar var_28C
  loc_D53537: FLdPr Me
  loc_D5353A: MemLdRfVar from_stack_1.global_60
  loc_D5353D: NewIfNullPr clsctacte
  loc_D53540: from_stack_1v = clsctacte.RsFrmGet()
  loc_D53545: FLdPr var_28C
  loc_D53548:  = Me.Fields
  loc_D5354D: FLdPr var_2E0
  loc_D53550: from_stack_2 = Me.Item(from_stack_1)
  loc_D53555: FLdPr var_300
  loc_D53558:  = Me.Value
  loc_D5355D: FLdRfVar var_224
  loc_D53560: ConcatVar var_238
  loc_D53564: CStrVarVal var_1FC
  loc_D53568: FLdPr Me
  loc_D5356B: MemLdRfVar from_stack_1.global_124
  loc_D5356E: NewIfNullPr clsrecabole
  loc_D53571: Call clsrecabole.RedefineRS(from_stack_1v)
  loc_D53576: FFreeStr var_174 = "": var_178 = "": var_17C = "": var_184 = "": var_180 = "": var_194 = "": var_1F8 = ""
  loc_D53589: FFreeAd var_90 = "": var_E8 = "": var_10C = "": var_160 = "": var_1A0 = "": var_1E4 = "": var_228 = "": var_28C = "": var_2E0 = ""
  loc_D535A0: FFreeVar var_F8 = "": var_A0 = "": var_108 = "": var_11C = "": var_170 = "": var_1F4 = "": var_214 = "": var_224 = ""
  loc_D535B5: LitI4 0
  loc_D535BA: LitI4 1
  loc_D535BF: FLdRfVar var_A4
  loc_D535C2: Redim
  loc_D535CC: FLdPr Me
  loc_D535CF: MemLdRfVar from_stack_1.global_124
  loc_D535D2: NewIfNullAd
  loc_D535D5: FStAd var_90 
  loc_D535D9: FLdRfVar var_90
  loc_D535DC: CVarRef
  loc_D535E1: ParmAry1St
  loc_D535E7: FLdPr Me
  loc_D535EA: VCallAd Control_ID_RecaBoleDgd
  loc_D535ED: CVarAd
  loc_D535F1: ParmAry1St
  loc_D535F7: FLdRfVar var_A4
  loc_D535FA: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_D535FF: ILdRf var_90
  loc_D53602: CastAd
  loc_D53605: FLdPr Me
  loc_D53608: MemStAdFunc
  loc_D5360C: FLdRfVar var_A4
  loc_D5360F: Erase
  loc_D53610: FFree1Ad var_90
  loc_D53613: ExitProcHresult
End Sub

Private Sub ctacteFlex_RowColChange() '9AEE38
  'Data Table: 542B30
  loc_9AEE34: ExitProcHresult
  loc_9AEE35: ImpAdLdRf MemVar_690054
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C5618
  'Data Table: 542B30
  loc_9C5604: FLdPr Me
  loc_9C5607: VCallAd Control_ID_FechVencMsk
  loc_9C560A: CVarAd
  loc_9C560E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5613: FFree1Var var_94 = ""
  loc_9C5616: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'A8153C
  'Data Table: 542B30
  loc_A814B4: FLdPr Me
  loc_A814B7: VCallAd Control_ID_FechVencMsk
  loc_A814BA: FStAdFunc var_88
  loc_A814BD: FLdPr var_88
  loc_A814C0: LateIdLdVar var_98 DispID_13 -32767
  loc_A814C7: CBoolVar
  loc_A814C9: LitI2_Byte &HFF
  loc_A814CB: EqI2
  loc_A814CC: FFree1Ad var_88
  loc_A814CF: FFree1Var var_98 = ""
  loc_A814D2: BranchF loc_A81539
  loc_A814D5: FLdPr Me
  loc_A814D8: VCallAd Control_ID_FechVencMsk
  loc_A814DB: FStAdFunc var_88
  loc_A814DE: FLdPr var_88
  loc_A814E1: LateIdLdVar var_98 DispID_15 0
  loc_A814E8: CStrVarTmp
  loc_A814E9: FStStrNoPop var_9C
  loc_A814EC: ImpAdCallI2 Proc_18_6_A08898()
  loc_A814F1: FStStrNoPop var_A0
  loc_A814F4: FLdPr Me
  loc_A814F7: MemStStrCopy
  loc_A814FB: FFreeStr var_9C = ""
  loc_A81502: FFree1Ad var_88
  loc_A81505: FFree1Var var_98 = ""
  loc_A81508: FLdPr Me
  loc_A8150B: MemLdStr global_140
  loc_A8150E: LitStr vbNullString
  loc_A81511: NeStr
  loc_A81513: BranchF loc_A81539
  loc_A81516: FLdPr Me
  loc_A81519: MemLdStr global_140
  loc_A8151C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81521: FLdPr Me
  loc_A81524: VCallAd Control_ID_FechVencMsk
  loc_A81527: CVarAd
  loc_A8152B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81530: FFree1Var var_98 = ""
  loc_A81533: LitI2_Byte &HFF
  loc_A81535: IStI2 arg_C
  loc_A81538: ExitProcHresult
  loc_A81539: ExitProcHresult
  loc_A8153A: LitI2FP -18178
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A24294
  'Data Table: 542B30
  loc_A2424C: ILdI2 KeyAscii
  loc_A2424F: CI4UI1
  loc_A24250: LitI4 &H20
  loc_A24255: EqI4
  loc_A24256: BranchF loc_A24293
  loc_A24259: LitVar_Missing var_A4
  loc_A2425C: PopAdLdVar
  loc_A2425D: LitVarI4
  loc_A24265: PopAdLdVar
  loc_A24266: ImpAdLdRf MemVar_D930A4
  loc_A24269: NewIfNullPr frmCalendario
  loc_A2426C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24271: ImpAdLdRf MemVar_D93028
  loc_A24274: CDargRef
  loc_A24278: FLdPr Me
  loc_A2427B: VCallAd Control_ID_FechVencMsk
  loc_A2427E: FStAdFunc var_A8
  loc_A24281: FLdPr var_A8
  loc_A24284: LateIdSt
  loc_A24289: FFree1Ad var_A8
  loc_A2428C: LitStr vbNullString
  loc_A2428F: ImpAdStStrCopy MemVar_D93028
  loc_A24293: ExitProcHresult
End Sub

Private Sub dgdDetaFapa_DblClick() 'AD3600
  'Data Table: 542B30
  loc_AD34D4: FLdRfVar var_88
  loc_AD34D7: FLdPr Me
  loc_AD34DA: MemLdRfVar from_stack_1.global_72
  loc_AD34DD: NewIfNullPr clsfacipago
  loc_AD34E0: from_stack_1 = clsfacipago.RecordCount
  loc_AD34E5: ILdRf var_88
  loc_AD34E8: LitI4 0
  loc_AD34ED: GtI4
  loc_AD34EE: BranchF loc_AD35FE
  loc_AD34F1: FLdRfVar var_B4
  loc_AD34F4: FLdRfVar var_A4
  loc_AD34F7: LitVarStr var_A0, "CodiFapa"
  loc_AD34FC: PopAdLdVar
  loc_AD34FD: FLdRfVar var_90
  loc_AD3500: FLdRfVar var_8C
  loc_AD3503: FLdPr Me
  loc_AD3506: MemLdRfVar from_stack_1.global_76
  loc_AD3509: NewIfNullPr clsdetafapa
  loc_AD350C: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_AD3511: FLdPr var_8C
  loc_AD3514:  = Me.Fields
  loc_AD3519: FLdPr var_90
  loc_AD351C: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3521: FLdPr var_A4
  loc_AD3524:  = Me.Value
  loc_AD3529: FLdRfVar var_B4
  loc_AD352C: CI4Var
  loc_AD352E: ImpAdLdRf MemVar_D94678
  loc_AD3531: NewIfNullPr dlgConsultaFaciCtaCte
  loc_AD3534: Call dlgConsultaFaciCtaCte.lCodiFapaPut(from_stack_1v)
  loc_AD3539: FFreeAd var_8C = "": var_90 = ""
  loc_AD3542: FFree1Var var_B4 = ""
  loc_AD3545: FLdRfVar var_B4
  loc_AD3548: FLdRfVar var_A4
  loc_AD354B: LitVarStr var_A0, "CuotDefa"
  loc_AD3550: PopAdLdVar
  loc_AD3551: FLdRfVar var_90
  loc_AD3554: FLdRfVar var_8C
  loc_AD3557: FLdPr Me
  loc_AD355A: MemLdRfVar from_stack_1.global_76
  loc_AD355D: NewIfNullPr clsdetafapa
  loc_AD3560: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_AD3565: FLdPr var_8C
  loc_AD3568:  = Me.Fields
  loc_AD356D: FLdPr var_90
  loc_AD3570: from_stack_2 = Me.Item(from_stack_1)
  loc_AD3575: FLdPr var_A4
  loc_AD3578:  = Me.Value
  loc_AD357D: FLdRfVar var_B4
  loc_AD3580: CI2Var
  loc_AD3581: ImpAdLdRf MemVar_D94678
  loc_AD3584: NewIfNullPr dlgConsultaFaciCtaCte
  loc_AD3587: Call dlgConsultaFaciCtaCte.iCuotDefaPut(from_stack_1v)
  loc_AD358C: FFreeAd var_8C = "": var_90 = ""
  loc_AD3595: FFree1Var var_B4 = ""
  loc_AD3598: ImpAdLdUI1
  loc_AD359C: ImpAdLdRf MemVar_D94678
  loc_AD359F: NewIfNullPr dlgConsultaFaciCtaCte
  loc_AD35A2: Call dlgConsultaFaciCtaCte.byCodiOficPut(from_stack_1v)
  loc_AD35A7: FLdRfVar var_B8
  loc_AD35AA: FLdPr Me
  loc_AD35AD: VCallAd Control_ID_
  loc_AD35B0: FStAdFunc var_8C
  loc_AD35B3: FLdPr var_8C
  loc_AD35B6:  = dlgConsultaFaciCtaCte.TextBox.Text
  loc_AD35BB: ILdRf var_B8
  loc_AD35BE: ImpAdLdRf MemVar_D94678
  loc_AD35C1: NewIfNullPr dlgConsultaFaciCtaCte
  loc_AD35C4: Call dlgConsultaFaciCtaCte.sCuenCtctPut(from_stack_1v)
  loc_AD35C9: FFree1Str var_B8
  loc_AD35CC: FFree1Ad var_8C
  loc_AD35CF: LitVar_Missing var_C8
  loc_AD35D2: PopAdLdVar
  loc_AD35D3: LitVarI4
  loc_AD35DB: PopAdLdVar
  loc_AD35DC: ImpAdLdRf MemVar_D94678
  loc_AD35DF: NewIfNullPr dlgConsultaFaciCtaCte
  loc_AD35E2: dlgConsultaFaciCtaCte.Show from_stack_1, from_stack_2
  loc_AD35E7: FLdPr Me
  loc_AD35EA: VCallAd Control_ID_dgdDetaFapa
  loc_AD35ED: FStAdFunc var_8C
  loc_AD35F0: FLdPr var_8C
  loc_AD35F3: LateIdCall
  loc_AD35FB: FFree1Ad var_8C
  loc_AD35FE: ExitProcHresult
End Sub

Private Sub dgdDetaFapa_KeyPress(KeyAscii As Integer) '9B7BB8
  'Data Table: 542B30
  loc_9B7BA8: ILdI2 KeyAscii
  loc_9B7BAB: LitI2_Byte &HD
  loc_9B7BAD: EqI2
  loc_9B7BAE: BranchF loc_9B7BB6
  loc_9B7BB1: Call dgdDetaFapa_DblClick()
  loc_9B7BB6: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D5944
  'Data Table: 542B30
  loc_9D592C: ILdRf Me
  loc_9D592F: FStAdNoPop
  loc_9D5933: ImpAdLdRf MemVar_D9C5D8
  loc_9D5936: NewIfNullPr Global
  loc_9D5939: Global.Unload from_stack_1
  loc_9D593E: FFree1Ad var_88
  loc_9D5941: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'D29824
  'Data Table: 542B30
  loc_D25964: LitI2_Byte 0
  loc_D25966: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D2596B: FStFPR8 var_FC
  loc_D2596E: LitI2_Byte &HB
  loc_D25970: FLdPr Me
  loc_D25973: Me.MousePointer = from_stack_1
  loc_D25978: Call Proc_266_24_B19C28()
  loc_D2597D: Call Proc_266_27_ACC780()
  loc_D25982: Call Proc_266_28_B07D88()
  loc_D25987: LitVar_FALSE
  loc_D2598B: PopAdLdVar
  loc_D2598C: FLdPr Me
  loc_D2598F: VCallAd Control_ID_RecaBoleDgd
  loc_D25992: FStAdFunc var_120
  loc_D25995: FLdPr var_120
  loc_D25998: LateIdSt
  loc_D2599D: FFree1Ad var_120
  loc_D259A0: LitStr vbNullString
  loc_D259A3: FLdPr Me
  loc_D259A6: VCallAd Control_ID_DetaTifalbl
  loc_D259A9: FStAdFunc var_120
  loc_D259AC: FLdPr var_120
  loc_D259AF: Me.Caption = from_stack_1
  loc_D259B4: FFree1Ad var_120
  loc_D259B7: LitStr vbNullString
  loc_D259BA: FLdPr Me
  loc_D259BD: VCallAd Control_ID_FealFepatlbl
  loc_D259C0: FStAdFunc var_120
  loc_D259C3: FLdPr var_120
  loc_D259C6: Me.Caption = from_stack_1
  loc_D259CB: FFree1Ad var_120
  loc_D259CE: LitStr vbNullString
  loc_D259D1: FLdPr Me
  loc_D259D4: VCallAd Control_ID_EstaFapaLbl
  loc_D259D7: FStAdFunc var_120
  loc_D259DA: FLdPr var_120
  loc_D259DD: Me.Caption = from_stack_1
  loc_D259E2: FFree1Ad var_120
  loc_D259E5: LitStr vbNullString
  loc_D259E8: FLdPr Me
  loc_D259EB: VCallAd Control_ID_CapiFepaLbl
  loc_D259EE: FStAdFunc var_120
  loc_D259F1: FLdPr var_120
  loc_D259F4: Me.Caption = from_stack_1
  loc_D259F9: FFree1Ad var_120
  loc_D259FC: LitStr vbNullString
  loc_D259FF: FLdPr Me
  loc_D25A02: VCallAd Control_ID_RecaFepaLbl
  loc_D25A05: FStAdFunc var_120
  loc_D25A08: FLdPr var_120
  loc_D25A0B: Me.Caption = from_stack_1
  loc_D25A10: FFree1Ad var_120
  loc_D25A13: LitStr vbNullString
  loc_D25A16: FLdPr Me
  loc_D25A19: VCallAd Control_ID_DecaFepaLbl
  loc_D25A1C: FStAdFunc var_120
  loc_D25A1F: FLdPr var_120
  loc_D25A22: Me.Caption = from_stack_1
  loc_D25A27: FFree1Ad var_120
  loc_D25A2A: LitStr vbNullString
  loc_D25A2D: FLdPr Me
  loc_D25A30: VCallAd Control_ID_DereFepaLbl
  loc_D25A33: FStAdFunc var_120
  loc_D25A36: FLdPr var_120
  loc_D25A39: Me.Caption = from_stack_1
  loc_D25A3E: FFree1Ad var_120
  loc_D25A41: LitStr vbNullString
  loc_D25A44: FLdPr Me
  loc_D25A47: VCallAd Control_ID_ApreFapaLbl
  loc_D25A4A: FStAdFunc var_120
  loc_D25A4D: FLdPr var_120
  loc_D25A50: Me.Caption = from_stack_1
  loc_D25A55: FFree1Ad var_120
  loc_D25A58: LitStr vbNullString
  loc_D25A5B: FLdPr Me
  loc_D25A5E: VCallAd Control_ID_InteFapaLbl
  loc_D25A61: FStAdFunc var_120
  loc_D25A64: FLdPr var_120
  loc_D25A67: Me.Caption = from_stack_1
  loc_D25A6C: FFree1Ad var_120
  loc_D25A6F: LitStr vbNullString
  loc_D25A72: FLdPr Me
  loc_D25A75: VCallAd Control_ID_TotaFapaLbl
  loc_D25A78: FStAdFunc var_120
  loc_D25A7B: FLdPr var_120
  loc_D25A7E: Me.Caption = from_stack_1
  loc_D25A83: FFree1Ad var_120
  loc_D25A86: LitStr "SELECT * FROM facipago WHERE CodiFapa = 0 ORDER BY CodiFapa"
  loc_D25A89: FLdPr Me
  loc_D25A8C: MemLdRfVar from_stack_1.global_72
  loc_D25A8F: NewIfNullPr clsfacipago
  loc_D25A92: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_D25A97: LitStr "SELECT * FROM detafapa"
  loc_D25A9A: LitStr " WHERE CodiFapa = 0"
  loc_D25A9D: ConcatStr
  loc_D25A9E: FStStrNoPop var_124
  loc_D25AA1: LitStr " ORDER BY CodiFapa, CuotDefa"
  loc_D25AA4: ConcatStr
  loc_D25AA5: FStStrNoPop var_128
  loc_D25AA8: FLdPr Me
  loc_D25AAB: MemLdRfVar from_stack_1.global_76
  loc_D25AAE: NewIfNullPr clsdetafapa
  loc_D25AB1: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_D25AB6: FFreeStr var_124 = ""
  loc_D25ABD: LitVarStr var_10C, vbNullString
  loc_D25AC2: PopAdLdVar
  loc_D25AC3: FLdPr Me
  loc_D25AC6: VCallAd Control_ID_FechVencMsk
  loc_D25AC9: FStAdFunc var_120
  loc_D25ACC: FLdPr var_120
  loc_D25ACF: LateIdSt
  loc_D25AD4: FFree1Ad var_120
  loc_D25AD7: LitI2_Byte 0
  loc_D25AD9: CR8I2
  loc_D25ADA: FLdPr Me
  loc_D25ADD: MemStFPR8 global_144
  loc_D25AE0: LitI2_Byte 0
  loc_D25AE2: CR8I2
  loc_D25AE3: FLdPr Me
  loc_D25AE6: MemStFPR8 global_152
  loc_D25AE9: LitI2_Byte 0
  loc_D25AEB: CR8I2
  loc_D25AEC: FLdPr Me
  loc_D25AEF: MemStFPR8 global_168
  loc_D25AF2: LitI2_Byte 0
  loc_D25AF4: CR8I2
  loc_D25AF5: FLdPr Me
  loc_D25AF8: MemStFPR8 global_160
  loc_D25AFB: LitI2_Byte 0
  loc_D25AFD: CR8I2
  loc_D25AFE: FLdPr Me
  loc_D25B01: MemStFPR8 global_184
  loc_D25B04: LitI2_Byte 0
  loc_D25B06: CR8I2
  loc_D25B07: FLdPr Me
  loc_D25B0A: MemStFPR8 global_192
  loc_D25B0D: LitI2_Byte 0
  loc_D25B0F: CR8I2
  loc_D25B10: FLdPr Me
  loc_D25B13: MemStFPR8 global_200
  loc_D25B16: LitI2_Byte 0
  loc_D25B18: CR8I2
  loc_D25B19: FLdPr Me
  loc_D25B1C: MemStFPR8 global_208
  loc_D25B1F: LitI2_Byte 0
  loc_D25B21: CR8I2
  loc_D25B22: FLdPr Me
  loc_D25B25: MemStFPR8 global_216
  loc_D25B28: LitI4 1
  loc_D25B2D: LitI4 1
  loc_D25B32: LitVarStr var_11C, "0.00"
  loc_D25B37: FStVarCopyObj var_138
  loc_D25B3A: FLdRfVar var_138
  loc_D25B3D: FLdPr Me
  loc_D25B40: MemLdRfVar from_stack_1.global_144
  loc_D25B43: CVarRef
  loc_D25B48: FLdRfVar var_148
  loc_D25B4B: ImpAdCallFPR4  = Format(, )
  loc_D25B50: FLdRfVar var_148
  loc_D25B53: CStrVarVal var_124
  loc_D25B57: FLdPr Me
  loc_D25B5A: VCallAd Control_ID_txtTotaDere
  loc_D25B5D: FStAdFunc var_120
  loc_D25B60: FLdPr var_120
  loc_D25B63: Me.Text = from_stack_1
  loc_D25B68: FFree1Str var_124
  loc_D25B6B: FFree1Ad var_120
  loc_D25B6E: FFreeVar var_138 = ""
  loc_D25B75: LitI4 1
  loc_D25B7A: LitI4 1
  loc_D25B7F: LitVarStr var_11C, "0.00"
  loc_D25B84: FStVarCopyObj var_138
  loc_D25B87: FLdRfVar var_138
  loc_D25B8A: FLdPr Me
  loc_D25B8D: MemLdRfVar from_stack_1.global_152
  loc_D25B90: CVarRef
  loc_D25B95: FLdRfVar var_148
  loc_D25B98: ImpAdCallFPR4  = Format(, )
  loc_D25B9D: FLdRfVar var_148
  loc_D25BA0: CStrVarVal var_124
  loc_D25BA4: FLdPr Me
  loc_D25BA7: VCallAd Control_ID_txtTotaCred
  loc_D25BAA: FStAdFunc var_120
  loc_D25BAD: FLdPr var_120
  loc_D25BB0: Me.Text = from_stack_1
  loc_D25BB5: FFree1Str var_124
  loc_D25BB8: FFree1Ad var_120
  loc_D25BBB: FFreeVar var_138 = ""
  loc_D25BC2: LitI4 1
  loc_D25BC7: LitI4 1
  loc_D25BCC: LitVarStr var_11C, "0.00"
  loc_D25BD1: FStVarCopyObj var_138
  loc_D25BD4: FLdRfVar var_138
  loc_D25BD7: FLdPr Me
  loc_D25BDA: MemLdRfVar from_stack_1.global_168
  loc_D25BDD: CVarRef
  loc_D25BE2: FLdRfVar var_148
  loc_D25BE5: ImpAdCallFPR4  = Format(, )
  loc_D25BEA: FLdRfVar var_148
  loc_D25BED: CStrVarVal var_124
  loc_D25BF1: FLdPr Me
  loc_D25BF4: VCallAd Control_ID_txtTotaReca
  loc_D25BF7: FStAdFunc var_120
  loc_D25BFA: FLdPr var_120
  loc_D25BFD: Me.Text = from_stack_1
  loc_D25C02: FFree1Str var_124
  loc_D25C05: FFree1Ad var_120
  loc_D25C08: FFreeVar var_138 = ""
  loc_D25C0F: LitI4 1
  loc_D25C14: LitI4 1
  loc_D25C19: LitVarStr var_11C, "0.00"
  loc_D25C1E: FStVarCopyObj var_138
  loc_D25C21: FLdRfVar var_138
  loc_D25C24: FLdPr Me
  loc_D25C27: MemLdRfVar from_stack_1.global_160
  loc_D25C2A: CVarRef
  loc_D25C2F: FLdRfVar var_148
  loc_D25C32: ImpAdCallFPR4  = Format(, )
  loc_D25C37: FLdRfVar var_148
  loc_D25C3A: CStrVarVal var_124
  loc_D25C3E: FLdPr Me
  loc_D25C41: VCallAd Control_ID_txtTotaApre
  loc_D25C44: FStAdFunc var_120
  loc_D25C47: FLdPr var_120
  loc_D25C4A: Me.Text = from_stack_1
  loc_D25C4F: FFree1Str var_124
  loc_D25C52: FFree1Ad var_120
  loc_D25C55: FFreeVar var_138 = ""
  loc_D25C5C: LitI4 2
  loc_D25C61: FLdPr Me
  loc_D25C64: MemLdFPR8 global_144
  loc_D25C67: FLdPr Me
  loc_D25C6A: MemLdFPR8 global_152
  loc_D25C6D: SubR4
  loc_D25C6E: FLdPr Me
  loc_D25C71: MemLdFPR8 global_160
  loc_D25C74: AddR8
  loc_D25C75: FLdPr Me
  loc_D25C78: MemLdFPR8 global_168
  loc_D25C7B: AddR8
  loc_D25C7C: CVarR8
  loc_D25C80: FLdRfVar var_148
  loc_D25C83: ImpAdCallFPR4  = Round(, )
  loc_D25C88: FLdRfVar var_148
  loc_D25C8B: CR4Var
  loc_D25C8C: FLdPr Me
  loc_D25C8F: MemStFPR8 global_184
  loc_D25C92: FFreeVar var_138 = ""
  loc_D25C99: LitI4 1
  loc_D25C9E: LitI4 1
  loc_D25CA3: LitVarStr var_11C, "0.00"
  loc_D25CA8: FStVarCopyObj var_138
  loc_D25CAB: FLdRfVar var_138
  loc_D25CAE: FLdPr Me
  loc_D25CB1: MemLdRfVar from_stack_1.global_184
  loc_D25CB4: CVarRef
  loc_D25CB9: FLdRfVar var_148
  loc_D25CBC: ImpAdCallFPR4  = Format(, )
  loc_D25CC1: FLdRfVar var_148
  loc_D25CC4: CStrVarVal var_124
  loc_D25CC8: FLdPr Me
  loc_D25CCB: VCallAd Control_ID_txtTotal
  loc_D25CCE: FStAdFunc var_120
  loc_D25CD1: FLdPr var_120
  loc_D25CD4: Me.Text = from_stack_1
  loc_D25CD9: FFree1Str var_124
  loc_D25CDC: FFree1Ad var_120
  loc_D25CDF: FFreeVar var_138 = ""
  loc_D25CE6: FLdRfVar var_14A
  loc_D25CE9: FLdPr Me
  loc_D25CEC: VCallAd Control_ID_SoloDeudaChk
  loc_D25CEF: FStAdFunc var_120
  loc_D25CF2: FLdPr var_120
  loc_D25CF5:  = Me.Value
  loc_D25CFA: FLdI2 var_14A
  loc_D25CFD: LitI2_Byte 1
  loc_D25CFF: EqI2
  loc_D25D00: FFree1Ad var_120
  loc_D25D03: BranchF loc_D278D1
  loc_D25D06: FLdRfVar var_124
  loc_D25D09: FLdPr Me
  loc_D25D0C: VCallAd Control_ID_NumeCtaTxt
  loc_D25D0F: FStAdFunc var_120
  loc_D25D12: FLdPr var_120
  loc_D25D15:  = Me.Text
  loc_D25D1A: FLdPr Me
  loc_D25D1D: VCallAd Control_ID_FechVencMsk
  loc_D25D20: FStAdFunc var_150
  loc_D25D23: FLdPr var_150
  loc_D25D26: LateIdLdVar var_138 DispID_15 0
  loc_D25D2D: CStrVarTmp
  loc_D25D2E: FStStrNoPop var_128
  loc_D25D31: ILdRf var_124
  loc_D25D34: ImpAdLdUI1
  loc_D25D38: FLdPr Me
  loc_D25D3B: MemLdRfVar from_stack_1.global_52
  loc_D25D3E: NewIfNullPr clsctacte
  loc_D25D41: Call clsctacte.CreaTemporalDeuda(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D25D46: FFreeStr var_124 = ""
  loc_D25D4D: FFreeAd var_120 = ""
  loc_D25D54: FFree1Var var_138 = ""
  loc_D25D57: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacte WHERE NumeApre <> 0 "
  loc_D25D5A: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.NumeApre"
  loc_D25D5D: ConcatStr
  loc_D25D5E: FStStrNoPop var_124
  loc_D25D61: FLdPr Me
  loc_D25D64: MemLdRfVar from_stack_1.global_52
  loc_D25D67: NewIfNullPr clsctacte
  loc_D25D6A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D25D6F: FFree1Str var_124
  loc_D25D72: FLdRfVar var_154
  loc_D25D75: FLdRfVar var_120
  loc_D25D78: FLdPr Me
  loc_D25D7B: MemLdRfVar from_stack_1.global_52
  loc_D25D7E: NewIfNullPr clsctacte
  loc_D25D81: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25D86: FLdPr var_120
  loc_D25D89:  = Me.RecordCount
  loc_D25D8E: ILdRf var_154
  loc_D25D91: LitI4 0
  loc_D25D96: GtI4
  loc_D25D97: FFree1Ad var_120
  loc_D25D9A: BranchF loc_D25ECD
  loc_D25D9D: FLdRfVar var_14A
  loc_D25DA0: FLdPr Me
  loc_D25DA3: MemLdRfVar from_stack_1.global_52
  loc_D25DA6: NewIfNullPr clsctacte
  loc_D25DA9: from_stack_1 = clsctacte.EOF
  loc_D25DAE: FLdI2 var_14A
  loc_D25DB1: NotI4
  loc_D25DB2: BranchF loc_D25ECA
  loc_D25DB5: FLdRfVar var_138
  loc_D25DB8: FLdRfVar var_158
  loc_D25DBB: LitVarStr var_10C, "NumeApre"
  loc_D25DC0: PopAdLdVar
  loc_D25DC1: FLdRfVar var_150
  loc_D25DC4: FLdRfVar var_120
  loc_D25DC7: FLdPr Me
  loc_D25DCA: MemLdRfVar from_stack_1.global_52
  loc_D25DCD: NewIfNullPr clsctacte
  loc_D25DD0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25DD5: FLdPr var_120
  loc_D25DD8:  = Me.Fields
  loc_D25DDD: FLdPr var_150
  loc_D25DE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D25DE5: FLdPr var_158
  loc_D25DE8:  = Me.Value
  loc_D25DED: FLdRfVar var_148
  loc_D25DF0: FLdRfVar var_164
  loc_D25DF3: LitVarStr var_11C, "SaldCtct"
  loc_D25DF8: PopAdLdVar
  loc_D25DF9: FLdRfVar var_160
  loc_D25DFC: FLdRfVar var_15C
  loc_D25DFF: FLdPr Me
  loc_D25E02: MemLdRfVar from_stack_1.global_52
  loc_D25E05: NewIfNullPr clsctacte
  loc_D25E08: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25E0D: FLdPr var_15C
  loc_D25E10:  = Me.Fields
  loc_D25E15: FLdPr var_160
  loc_D25E18: from_stack_2 = Me.Item(from_stack_1)
  loc_D25E1D: FLdPr var_164
  loc_D25E20:  = Me.Value
  loc_D25E25: FLdRfVar var_190
  loc_D25E28: FLdRfVar var_180
  loc_D25E2B: LitVarStr var_17C, "RecaCtct"
  loc_D25E30: PopAdLdVar
  loc_D25E31: FLdRfVar var_16C
  loc_D25E34: FLdRfVar var_168
  loc_D25E37: FLdPr Me
  loc_D25E3A: MemLdRfVar from_stack_1.global_52
  loc_D25E3D: NewIfNullPr clsctacte
  loc_D25E40: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25E45: FLdPr var_168
  loc_D25E48:  = Me.Fields
  loc_D25E4D: FLdPr var_16C
  loc_D25E50: from_stack_2 = Me.Item(from_stack_1)
  loc_D25E55: FLdPr var_180
  loc_D25E58:  = Me.Value
  loc_D25E5D: FLdRfVar var_198
  loc_D25E60: FLdRfVar var_190
  loc_D25E63: CR4Var
  loc_D25E64: PopFPR8
  loc_D25E65: FLdRfVar var_148
  loc_D25E68: CR4Var
  loc_D25E69: PopFPR8
  loc_D25E6A: FLdRfVar var_138
  loc_D25E6D: CI4Var
  loc_D25E6F: FLdPr Me
  loc_D25E72: MemLdRfVar from_stack_1.global_92
  loc_D25E75: NewIfNullPr clsapremio
  loc_D25E78: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D25E7D: FLdPr Me
  loc_D25E80: MemLdFPR8 global_160
  loc_D25E83: FLdFPR8 var_198
  loc_D25E86: AddR8
  loc_D25E87: FLdPr Me
  loc_D25E8A: MemStFPR8 global_160
  loc_D25E8D: FFreeAd var_120 = "": var_150 = "": var_15C = "": var_160 = "": var_168 = "": var_16C = "": var_158 = "": var_164 = ""
  loc_D25EA2: FFreeVar var_138 = "": var_148 = ""
  loc_D25EAB: FLdRfVar var_120
  loc_D25EAE: FLdPr Me
  loc_D25EB1: MemLdRfVar from_stack_1.global_52
  loc_D25EB4: NewIfNullPr clsctacte
  loc_D25EB7: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25EBC: FLdPr var_120
  loc_D25EBF: Me.MoveNext
  loc_D25EC4: FFree1Ad var_120
  loc_D25EC7: Branch loc_D25D9D
  loc_D25ECA: Branch loc_D25ED6
  loc_D25ECD: LitI2_Byte 0
  loc_D25ECF: CR8I2
  loc_D25ED0: FLdPr Me
  loc_D25ED3: MemStFPR8 global_160
  loc_D25ED6: FLdFPR8 var_FC
  loc_D25ED9: ImpAdLdFPR8 MemVar_D9308C
  loc_D25EDC: GeR8
  loc_D25EDD: BranchF loc_D25EF4
  loc_D25EE0: LitStr "ERRORRRR"
  loc_D25EE3: FLdPr Me
  loc_D25EE6: MemLdRfVar from_stack_1.global_52
  loc_D25EE9: NewIfNullPr clsctacte
  loc_D25EEC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D25EF1: Branch loc_D25F0F
  loc_D25EF4: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct FROM tmp_ctacte "
  loc_D25EF7: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct"
  loc_D25EFA: ConcatStr
  loc_D25EFB: FStStrNoPop var_124
  loc_D25EFE: FLdPr Me
  loc_D25F01: MemLdRfVar from_stack_1.global_52
  loc_D25F04: NewIfNullPr clsctacte
  loc_D25F07: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D25F0C: FFree1Str var_124
  loc_D25F0F: FLdRfVar var_154
  loc_D25F12: FLdRfVar var_120
  loc_D25F15: FLdPr Me
  loc_D25F18: MemLdRfVar from_stack_1.global_52
  loc_D25F1B: NewIfNullPr clsctacte
  loc_D25F1E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25F23: FLdPr var_120
  loc_D25F26:  = Me.RecordCount
  loc_D25F2B: ILdRf var_154
  loc_D25F2E: LitI4 0
  loc_D25F33: GtI4
  loc_D25F34: FFree1Ad var_120
  loc_D25F37: BranchF loc_D277DB
  loc_D25F3A: FLdRfVar var_120
  loc_D25F3D: FLdPr Me
  loc_D25F40: MemLdRfVar from_stack_1.global_52
  loc_D25F43: NewIfNullPr clsctacte
  loc_D25F46: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25F4B: FLdPr var_120
  loc_D25F4E: Me.MoveFirst
  loc_D25F53: FFree1Ad var_120
  loc_D25F56: FLdRfVar var_14A
  loc_D25F59: FLdRfVar var_120
  loc_D25F5C: FLdPr Me
  loc_D25F5F: MemLdRfVar from_stack_1.global_52
  loc_D25F62: NewIfNullPr clsctacte
  loc_D25F65: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25F6A: FLdPr var_120
  loc_D25F6D:  = Me.EOF
  loc_D25F72: FLdI2 var_14A
  loc_D25F75: NotI4
  loc_D25F76: FFree1Ad var_120
  loc_D25F79: BranchF loc_D27539
  loc_D25F7C: LitI2_Byte 0
  loc_D25F7E: CR8I2
  loc_D25F7F: FLdPr Me
  loc_D25F82: MemStFPR8 global_192
  loc_D25F85: LitI2_Byte 0
  loc_D25F87: CR8I2
  loc_D25F88: FLdPr Me
  loc_D25F8B: MemStFPR8 global_200
  loc_D25F8E: LitI2_Byte 0
  loc_D25F90: CR8I2
  loc_D25F91: FLdPr Me
  loc_D25F94: MemStFPR8 global_208
  loc_D25F97: LitI2_Byte 0
  loc_D25F99: CR8I2
  loc_D25F9A: FLdPr Me
  loc_D25F9D: MemStFPR8 global_216
  loc_D25FA0: LitStr "SELECT tmp_ctacte.*, AbreTimo, concepto.ConcViej FROM tmp_ctacte "
  loc_D25FA3: LitStr " LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_D25FA6: ConcatStr
  loc_D25FA7: FStStrNoPop var_124
  loc_D25FAA: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacte.PeriInfo"
  loc_D25FAD: ConcatStr
  loc_D25FAE: FStStrNoPop var_128
  loc_D25FB1: LitStr " AND concepto.CodiConc = tmp_ctacte.CodiConc"
  loc_D25FB4: ConcatStr
  loc_D25FB5: FStStrNoPop var_19C
  loc_D25FB8: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_D25FBB: ConcatStr
  loc_D25FBC: CVarStr var_148
  loc_D25FBF: FLdRfVar var_138
  loc_D25FC2: FLdRfVar var_158
  loc_D25FC5: LitVarStr var_10C, "CodiOfic"
  loc_D25FCA: PopAdLdVar
  loc_D25FCB: FLdRfVar var_150
  loc_D25FCE: FLdRfVar var_120
  loc_D25FD1: FLdPr Me
  loc_D25FD4: MemLdRfVar from_stack_1.global_52
  loc_D25FD7: NewIfNullPr clsctacte
  loc_D25FDA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D25FDF: FLdPr var_120
  loc_D25FE2:  = Me.Fields
  loc_D25FE7: FLdPr var_150
  loc_D25FEA: from_stack_2 = Me.Item(from_stack_1)
  loc_D25FEF: FLdPr var_158
  loc_D25FF2:  = Me.Value
  loc_D25FF7: FLdRfVar var_138
  loc_D25FFA: ConcatVar var_190
  loc_D25FFE: LitVarStr var_11C, " AND tmp_ctacte.CuenCtct = '"
  loc_D26003: ConcatVar var_1AC
  loc_D26007: FLdRfVar var_1BC
  loc_D2600A: FLdRfVar var_164
  loc_D2600D: LitVarStr var_17C, "CuenCtct"
  loc_D26012: PopAdLdVar
  loc_D26013: FLdRfVar var_160
  loc_D26016: FLdRfVar var_15C
  loc_D26019: FLdPr Me
  loc_D2601C: MemLdRfVar from_stack_1.global_52
  loc_D2601F: NewIfNullPr clsctacte
  loc_D26022: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26027: FLdPr var_15C
  loc_D2602A:  = Me.Fields
  loc_D2602F: FLdPr var_160
  loc_D26032: from_stack_2 = Me.Item(from_stack_1)
  loc_D26037: FLdPr var_164
  loc_D2603A:  = Me.Value
  loc_D2603F: FLdRfVar var_1BC
  loc_D26042: ConcatVar var_1CC
  loc_D26046: LitVarStr var_1DC, "'"
  loc_D2604B: ConcatVar var_1EC
  loc_D2604F: LitVarStr var_1FC, " AND tmp_ctacte.PeriCtct = "
  loc_D26054: ConcatVar var_20C
  loc_D26058: FLdRfVar var_22C
  loc_D2605B: FLdRfVar var_180
  loc_D2605E: LitVarStr var_21C, "PeriCtct"
  loc_D26063: PopAdLdVar
  loc_D26064: FLdRfVar var_16C
  loc_D26067: FLdRfVar var_168
  loc_D2606A: FLdPr Me
  loc_D2606D: MemLdRfVar from_stack_1.global_52
  loc_D26070: NewIfNullPr clsctacte
  loc_D26073: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26078: FLdPr var_168
  loc_D2607B:  = Me.Fields
  loc_D26080: FLdPr var_16C
  loc_D26083: from_stack_2 = Me.Item(from_stack_1)
  loc_D26088: FLdPr var_180
  loc_D2608B:  = Me.Value
  loc_D26090: FLdRfVar var_22C
  loc_D26093: ConcatVar var_23C
  loc_D26097: LitVarStr var_24C, " AND tmp_ctacte.FeveCtct >= '1000-01-01'"
  loc_D2609C: ConcatVar var_25C
  loc_D260A0: LitVarStr var_26C, " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_D260A5: ConcatVar var_27C
  loc_D260A9: CStrVarVal var_280
  loc_D260AD: FLdPr Me
  loc_D260B0: MemLdRfVar from_stack_1.global_60
  loc_D260B3: NewIfNullPr clsctacte
  loc_D260B6: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D260BB: FFreeStr var_124 = "": var_128 = "": var_19C = ""
  loc_D260C6: FFreeAd var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_D260DB: FFreeVar var_148 = "": var_138 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = ""
  loc_D260F6: FLdRfVar var_154
  loc_D260F9: FLdRfVar var_120
  loc_D260FC: FLdPr Me
  loc_D260FF: MemLdRfVar from_stack_1.global_60
  loc_D26102: NewIfNullPr clsctacte
  loc_D26105: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2610A: FLdPr var_120
  loc_D2610D:  = Me.RecordCount
  loc_D26112: ILdRf var_154
  loc_D26115: LitI4 0
  loc_D2611A: GtI4
  loc_D2611B: FFree1Ad var_120
  loc_D2611E: BranchF loc_D2751A
  loc_D26121: FLdRfVar var_120
  loc_D26124: FLdPr Me
  loc_D26127: MemLdRfVar from_stack_1.global_60
  loc_D2612A: NewIfNullPr clsctacte
  loc_D2612D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26132: FLdPr var_120
  loc_D26135: Me.MoveFirst
  loc_D2613A: FFree1Ad var_120
  loc_D2613D: FLdRfVar var_14A
  loc_D26140: FLdRfVar var_120
  loc_D26143: FLdPr Me
  loc_D26146: MemLdRfVar from_stack_1.global_60
  loc_D26149: NewIfNullPr clsctacte
  loc_D2614C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26151: FLdPr var_120
  loc_D26154:  = Me.EOF
  loc_D26159: FLdI2 var_14A
  loc_D2615C: NotI4
  loc_D2615D: FFree1Ad var_120
  loc_D26160: BranchF loc_D270A5
  loc_D26163: FLdRfVar var_158
  loc_D26166: LitVarStr var_10C, "FeveCtct"
  loc_D2616B: PopAdLdVar
  loc_D2616C: FLdRfVar var_150
  loc_D2616F: FLdRfVar var_120
  loc_D26172: FLdPr Me
  loc_D26175: MemLdRfVar from_stack_1.global_60
  loc_D26178: NewIfNullPr clsctacte
  loc_D2617B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26180: FLdPr var_120
  loc_D26183:  = Me.Fields
  loc_D26188: FLdPr var_150
  loc_D2618B: from_stack_2 = Me.Item(from_stack_1)
  loc_D26190: FLdZeroAd var_158
  loc_D26193: CVarAd
  loc_D26197: ImpAdCallI2 IsDate()
  loc_D2619C: FFreeAd var_120 = ""
  loc_D261A3: FFree1Var var_138 = ""
  loc_D261A6: BranchF loc_D261A9
  loc_D261A9: FLdRfVar var_138
  loc_D261AC: FLdRfVar var_158
  loc_D261AF: LitVarStr var_10C, "DebeCtct"
  loc_D261B4: PopAdLdVar
  loc_D261B5: FLdRfVar var_150
  loc_D261B8: FLdRfVar var_120
  loc_D261BB: FLdPr Me
  loc_D261BE: MemLdRfVar from_stack_1.global_60
  loc_D261C1: NewIfNullPr clsctacte
  loc_D261C4: from_stack_1v = clsctacte.RsFrmGet()
  loc_D261C9: FLdPr var_120
  loc_D261CC:  = Me.Fields
  loc_D261D1: FLdPr var_150
  loc_D261D4: from_stack_2 = Me.Item(from_stack_1)
  loc_D261D9: FLdPr var_158
  loc_D261DC:  = Me.Value
  loc_D261E1: LitI4 2
  loc_D261E6: FLdPr Me
  loc_D261E9: MemLdFPR8 global_144
  loc_D261EC: FnCDblR8
  loc_D261EE: FLdRfVar var_138
  loc_D261F1: FnCDblVar
  loc_D261F3: AddR8
  loc_D261F4: CVarR8
  loc_D261F8: FLdRfVar var_190
  loc_D261FB: ImpAdCallFPR4  = Round(, )
  loc_D26200: FLdRfVar var_190
  loc_D26203: CR4Var
  loc_D26204: FLdPr Me
  loc_D26207: MemStFPR8 global_144
  loc_D2620A: FFreeAd var_120 = "": var_150 = ""
  loc_D26213: FFreeVar var_138 = "": var_148 = ""
  loc_D2621C: FLdRfVar var_138
  loc_D2621F: FLdRfVar var_158
  loc_D26222: LitVarStr var_10C, "CredCtct"
  loc_D26227: PopAdLdVar
  loc_D26228: FLdRfVar var_150
  loc_D2622B: FLdRfVar var_120
  loc_D2622E: FLdPr Me
  loc_D26231: MemLdRfVar from_stack_1.global_60
  loc_D26234: NewIfNullPr clsctacte
  loc_D26237: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2623C: FLdPr var_120
  loc_D2623F:  = Me.Fields
  loc_D26244: FLdPr var_150
  loc_D26247: from_stack_2 = Me.Item(from_stack_1)
  loc_D2624C: FLdPr var_158
  loc_D2624F:  = Me.Value
  loc_D26254: LitI4 2
  loc_D26259: FLdPr Me
  loc_D2625C: MemLdFPR8 global_152
  loc_D2625F: FnCDblR8
  loc_D26261: FLdRfVar var_138
  loc_D26264: FnCDblVar
  loc_D26266: AddR8
  loc_D26267: CVarR8
  loc_D2626B: FLdRfVar var_190
  loc_D2626E: ImpAdCallFPR4  = Round(, )
  loc_D26273: FLdRfVar var_190
  loc_D26276: CR4Var
  loc_D26277: FLdPr Me
  loc_D2627A: MemStFPR8 global_152
  loc_D2627D: FFreeAd var_120 = "": var_150 = ""
  loc_D26286: FFreeVar var_138 = "": var_148 = ""
  loc_D2628F: FLdRfVar var_138
  loc_D26292: FLdRfVar var_158
  loc_D26295: LitVarStr var_10C, "RecaCtct"
  loc_D2629A: PopAdLdVar
  loc_D2629B: FLdRfVar var_150
  loc_D2629E: FLdRfVar var_120
  loc_D262A1: FLdPr Me
  loc_D262A4: MemLdRfVar from_stack_1.global_60
  loc_D262A7: NewIfNullPr clsctacte
  loc_D262AA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D262AF: FLdPr var_120
  loc_D262B2:  = Me.Fields
  loc_D262B7: FLdPr var_150
  loc_D262BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D262BF: FLdPr var_158
  loc_D262C2:  = Me.Value
  loc_D262C7: LitI4 2
  loc_D262CC: FLdPr Me
  loc_D262CF: MemLdFPR8 global_168
  loc_D262D2: FnCDblR8
  loc_D262D4: FLdRfVar var_138
  loc_D262D7: FnCDblVar
  loc_D262D9: AddR8
  loc_D262DA: CVarR8
  loc_D262DE: FLdRfVar var_190
  loc_D262E1: ImpAdCallFPR4  = Round(, )
  loc_D262E6: FLdRfVar var_190
  loc_D262E9: CR4Var
  loc_D262EA: FLdPr Me
  loc_D262ED: MemStFPR8 global_168
  loc_D262F0: FFreeAd var_120 = "": var_150 = ""
  loc_D262F9: FFreeVar var_138 = "": var_148 = ""
  loc_D26302: FLdRfVar var_138
  loc_D26305: FLdRfVar var_158
  loc_D26308: LitVarStr var_10C, "DebeCtct"
  loc_D2630D: PopAdLdVar
  loc_D2630E: FLdRfVar var_150
  loc_D26311: FLdRfVar var_120
  loc_D26314: FLdPr Me
  loc_D26317: MemLdRfVar from_stack_1.global_60
  loc_D2631A: NewIfNullPr clsctacte
  loc_D2631D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26322: FLdPr var_120
  loc_D26325:  = Me.Fields
  loc_D2632A: FLdPr var_150
  loc_D2632D: from_stack_2 = Me.Item(from_stack_1)
  loc_D26332: FLdPr var_158
  loc_D26335:  = Me.Value
  loc_D2633A: LitI4 2
  loc_D2633F: FLdPr Me
  loc_D26342: MemLdFPR8 global_192
  loc_D26345: FnCDblR8
  loc_D26347: FLdRfVar var_138
  loc_D2634A: FnCDblVar
  loc_D2634C: AddR8
  loc_D2634D: CVarR8
  loc_D26351: FLdRfVar var_190
  loc_D26354: ImpAdCallFPR4  = Round(, )
  loc_D26359: FLdRfVar var_190
  loc_D2635C: CR4Var
  loc_D2635D: FLdPr Me
  loc_D26360: MemStFPR8 global_192
  loc_D26363: FFreeAd var_120 = "": var_150 = ""
  loc_D2636C: FFreeVar var_138 = "": var_148 = ""
  loc_D26375: FLdRfVar var_138
  loc_D26378: FLdRfVar var_158
  loc_D2637B: LitVarStr var_10C, "CredCtct"
  loc_D26380: PopAdLdVar
  loc_D26381: FLdRfVar var_150
  loc_D26384: FLdRfVar var_120
  loc_D26387: FLdPr Me
  loc_D2638A: MemLdRfVar from_stack_1.global_60
  loc_D2638D: NewIfNullPr clsctacte
  loc_D26390: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26395: FLdPr var_120
  loc_D26398:  = Me.Fields
  loc_D2639D: FLdPr var_150
  loc_D263A0: from_stack_2 = Me.Item(from_stack_1)
  loc_D263A5: FLdPr var_158
  loc_D263A8:  = Me.Value
  loc_D263AD: LitI4 2
  loc_D263B2: FLdPr Me
  loc_D263B5: MemLdFPR8 global_200
  loc_D263B8: FnCDblR8
  loc_D263BA: FLdRfVar var_138
  loc_D263BD: FnCDblVar
  loc_D263BF: AddR8
  loc_D263C0: CVarR8
  loc_D263C4: FLdRfVar var_190
  loc_D263C7: ImpAdCallFPR4  = Round(, )
  loc_D263CC: FLdRfVar var_190
  loc_D263CF: CR4Var
  loc_D263D0: FLdPr Me
  loc_D263D3: MemStFPR8 global_200
  loc_D263D6: FFreeAd var_120 = "": var_150 = ""
  loc_D263DF: FFreeVar var_138 = "": var_148 = ""
  loc_D263E8: FLdRfVar var_138
  loc_D263EB: FLdRfVar var_158
  loc_D263EE: LitVarStr var_10C, "RecaCtct"
  loc_D263F3: PopAdLdVar
  loc_D263F4: FLdRfVar var_150
  loc_D263F7: FLdRfVar var_120
  loc_D263FA: FLdPr Me
  loc_D263FD: MemLdRfVar from_stack_1.global_60
  loc_D26400: NewIfNullPr clsctacte
  loc_D26403: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26408: FLdPr var_120
  loc_D2640B:  = Me.Fields
  loc_D26410: FLdPr var_150
  loc_D26413: from_stack_2 = Me.Item(from_stack_1)
  loc_D26418: FLdPr var_158
  loc_D2641B:  = Me.Value
  loc_D26420: LitI4 2
  loc_D26425: FLdPr Me
  loc_D26428: MemLdFPR8 global_208
  loc_D2642B: FnCDblR8
  loc_D2642D: FLdRfVar var_138
  loc_D26430: FnCDblVar
  loc_D26432: AddR8
  loc_D26433: CVarR8
  loc_D26437: FLdRfVar var_190
  loc_D2643A: ImpAdCallFPR4  = Round(, )
  loc_D2643F: FLdRfVar var_190
  loc_D26442: CR4Var
  loc_D26443: FLdPr Me
  loc_D26446: MemStFPR8 global_208
  loc_D26449: FFreeAd var_120 = "": var_150 = ""
  loc_D26452: FFreeVar var_138 = "": var_148 = ""
  loc_D2645B: FLdRfVar var_138
  loc_D2645E: FLdRfVar var_158
  loc_D26461: LitVarStr var_10C, "PeriCtct"
  loc_D26466: PopAdLdVar
  loc_D26467: FLdRfVar var_150
  loc_D2646A: FLdRfVar var_120
  loc_D2646D: FLdPr Me
  loc_D26470: MemLdRfVar from_stack_1.global_52
  loc_D26473: NewIfNullPr clsctacte
  loc_D26476: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2647B: FLdPr var_120
  loc_D2647E:  = Me.Fields
  loc_D26483: FLdPr var_150
  loc_D26486: from_stack_2 = Me.Item(from_stack_1)
  loc_D2648B: FLdPr var_158
  loc_D2648E:  = Me.Value
  loc_D26493: FLdRfVar var_138
  loc_D26496: FnCIntVar
  loc_D26498: LitI2 2099
  loc_D2649B: EqI2
  loc_D2649C: FFreeAd var_120 = "": var_150 = ""
  loc_D264A5: FFree1Var var_138 = ""
  loc_D264A8: BranchF loc_D2651A
  loc_D264AB: FLdRfVar var_158
  loc_D264AE: LitVarStr var_10C, "BimeCtct"
  loc_D264B3: PopAdLdVar
  loc_D264B4: FLdRfVar var_150
  loc_D264B7: FLdRfVar var_120
  loc_D264BA: FLdPr Me
  loc_D264BD: MemLdRfVar from_stack_1.global_60
  loc_D264C0: NewIfNullPr clsctacte
  loc_D264C3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D264C8: FLdPr var_120
  loc_D264CB:  = Me.Fields
  loc_D264D0: FLdPr var_150
  loc_D264D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D264D8: LitI4 1
  loc_D264DD: LitI4 1
  loc_D264E2: LitVarStr var_11C, "00"
  loc_D264E7: FStVarCopyObj var_148
  loc_D264EA: FLdRfVar var_148
  loc_D264ED: FLdZeroAd var_158
  loc_D264F0: CVarAd
  loc_D264F4: FLdRfVar var_190
  loc_D264F7: ImpAdCallFPR4  = Format(, )
  loc_D264FC: FLdRfVar var_190
  loc_D264FF: CStrVarTmp
  loc_D26500: FLdRfVar var_AA
  loc_D26503: StFixedStrFree
  loc_D26507: FFreeAd var_120 = ""
  loc_D2650E: FFreeVar var_138 = "": var_148 = ""
  loc_D26517: Branch loc_D265DA
  loc_D2651A: FLdRfVar var_158
  loc_D2651D: LitVarStr var_10C, "BimeCtct"
  loc_D26522: PopAdLdVar
  loc_D26523: FLdRfVar var_150
  loc_D26526: FLdRfVar var_120
  loc_D26529: FLdPr Me
  loc_D2652C: MemLdRfVar from_stack_1.global_60
  loc_D2652F: NewIfNullPr clsctacte
  loc_D26532: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26537: FLdPr var_120
  loc_D2653A:  = Me.Fields
  loc_D2653F: FLdPr var_150
  loc_D26542: from_stack_2 = Me.Item(from_stack_1)
  loc_D26547: LitI4 1
  loc_D2654C: LitI4 1
  loc_D26551: LitVarStr var_11C, "#00"
  loc_D26556: FStVarCopyObj var_148
  loc_D26559: FLdRfVar var_148
  loc_D2655C: FLdZeroAd var_158
  loc_D2655F: CVarAd
  loc_D26563: FLdRfVar var_190
  loc_D26566: ImpAdCallFPR4  = Format(, )
  loc_D2656B: FLdRfVar var_190
  loc_D2656E: LitVarStr var_17C, "/"
  loc_D26573: ConcatVar var_1AC
  loc_D26577: FLdRfVar var_1BC
  loc_D2657A: FLdRfVar var_164
  loc_D2657D: LitVarStr var_1DC, "PeriCtct"
  loc_D26582: PopAdLdVar
  loc_D26583: FLdRfVar var_160
  loc_D26586: FLdRfVar var_15C
  loc_D26589: FLdPr Me
  loc_D2658C: MemLdRfVar from_stack_1.global_60
  loc_D2658F: NewIfNullPr clsctacte
  loc_D26592: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26597: FLdPr var_15C
  loc_D2659A:  = Me.Fields
  loc_D2659F: FLdPr var_160
  loc_D265A2: from_stack_2 = Me.Item(from_stack_1)
  loc_D265A7: FLdPr var_164
  loc_D265AA:  = Me.Value
  loc_D265AF: FLdRfVar var_1BC
  loc_D265B2: ConcatVar var_1CC
  loc_D265B6: CStrVarTmp
  loc_D265B7: FLdRfVar var_AA
  loc_D265BA: StFixedStrFree
  loc_D265BE: FFreeAd var_120 = "": var_150 = "": var_15C = "": var_160 = ""
  loc_D265CB: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = ""
  loc_D265DA: FLdRfVar var_158
  loc_D265DD: LitVarStr var_10C, "NumeBole"
  loc_D265E2: PopAdLdVar
  loc_D265E3: FLdRfVar var_150
  loc_D265E6: FLdRfVar var_120
  loc_D265E9: FLdPr Me
  loc_D265EC: MemLdRfVar from_stack_1.global_60
  loc_D265EF: NewIfNullPr clsctacte
  loc_D265F2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D265F7: FLdPr var_120
  loc_D265FA:  = Me.Fields
  loc_D265FF: FLdPr var_150
  loc_D26602: from_stack_2 = Me.Item(from_stack_1)
  loc_D26607: FLdRfVar var_164
  loc_D2660A: LitVarStr var_1DC, "PeriBole"
  loc_D2660F: PopAdLdVar
  loc_D26610: FLdRfVar var_160
  loc_D26613: FLdRfVar var_15C
  loc_D26616: FLdPr Me
  loc_D26619: MemLdRfVar from_stack_1.global_60
  loc_D2661C: NewIfNullPr clsctacte
  loc_D2661F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26624: FLdPr var_15C
  loc_D26627:  = Me.Fields
  loc_D2662C: FLdPr var_160
  loc_D2662F: from_stack_2 = Me.Item(from_stack_1)
  loc_D26634: LitI4 1
  loc_D26639: LitI4 1
  loc_D2663E: LitVarStr var_11C, "#######0"
  loc_D26643: FStVarCopyObj var_148
  loc_D26646: FLdRfVar var_148
  loc_D26649: FLdZeroAd var_158
  loc_D2664C: CVarAd
  loc_D26650: FLdRfVar var_190
  loc_D26653: ImpAdCallFPR4  = Format(, )
  loc_D26658: FLdRfVar var_190
  loc_D2665B: LitVarStr var_17C, "-"
  loc_D26660: ConcatVar var_1AC
  loc_D26664: LitI4 1
  loc_D26669: LitI4 1
  loc_D2666E: LitVarStr var_1FC, "0000"
  loc_D26673: FStVarCopyObj var_1CC
  loc_D26676: FLdRfVar var_1CC
  loc_D26679: FLdZeroAd var_164
  loc_D2667C: CVarAd
  loc_D26680: FLdRfVar var_1EC
  loc_D26683: ImpAdCallFPR4  = Format(, )
  loc_D26688: FLdRfVar var_1EC
  loc_D2668B: ConcatVar var_20C
  loc_D2668F: CStrVarTmp
  loc_D26690: FLdRfVar var_C4
  loc_D26693: StFixedStrRFree
  loc_D26697: FFreeAd var_120 = "": var_150 = "": var_15C = ""
  loc_D266A2: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1BC = "": var_1CC = "": var_1AC = "": var_1EC = ""
  loc_D266B5: FLdRfVar var_138
  loc_D266B8: FLdRfVar var_158
  loc_D266BB: LitVarStr var_10C, "DebeCtct"
  loc_D266C0: PopAdLdVar
  loc_D266C1: FLdRfVar var_150
  loc_D266C4: FLdRfVar var_120
  loc_D266C7: FLdPr Me
  loc_D266CA: MemLdRfVar from_stack_1.global_60
  loc_D266CD: NewIfNullPr clsctacte
  loc_D266D0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D266D5: FLdPr var_120
  loc_D266D8:  = Me.Fields
  loc_D266DD: FLdPr var_150
  loc_D266E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D266E5: FLdPr var_158
  loc_D266E8:  = Me.Value
  loc_D266ED: FLdRfVar var_138
  loc_D266F0: FnCDblVar
  loc_D266F2: LitI2_Byte 0
  loc_D266F4: CR8I2
  loc_D266F5: NeR8
  loc_D266F6: FFreeAd var_120 = "": var_150 = ""
  loc_D266FF: FFree1Var var_138 = ""
  loc_D26702: BranchF loc_D26770
  loc_D26705: FLdRfVar var_158
  loc_D26708: LitVarStr var_10C, "DebeCtct"
  loc_D2670D: PopAdLdVar
  loc_D2670E: FLdRfVar var_150
  loc_D26711: FLdRfVar var_120
  loc_D26714: FLdPr Me
  loc_D26717: MemLdRfVar from_stack_1.global_60
  loc_D2671A: NewIfNullPr clsctacte
  loc_D2671D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26722: FLdPr var_120
  loc_D26725:  = Me.Fields
  loc_D2672A: FLdPr var_150
  loc_D2672D: from_stack_2 = Me.Item(from_stack_1)
  loc_D26732: LitI4 1
  loc_D26737: LitI4 1
  loc_D2673C: LitVarStr var_11C, "###,###,##0.00"
  loc_D26741: FStVarCopyObj var_148
  loc_D26744: FLdRfVar var_148
  loc_D26747: FLdZeroAd var_158
  loc_D2674A: CVarAd
  loc_D2674E: FLdRfVar var_190
  loc_D26751: ImpAdCallFPR4  = Format(, )
  loc_D26756: FLdRfVar var_190
  loc_D26759: CStrVarTmp
  loc_D2675A: FStStr var_D0
  loc_D2675D: FFreeAd var_120 = ""
  loc_D26764: FFreeVar var_138 = "": var_148 = ""
  loc_D2676D: Branch loc_D26776
  loc_D26770: LitStr vbNullString
  loc_D26773: FStStrCopy var_D0
  loc_D26776: FLdRfVar var_138
  loc_D26779: FLdRfVar var_158
  loc_D2677C: LitVarStr var_10C, "CredCtct"
  loc_D26781: PopAdLdVar
  loc_D26782: FLdRfVar var_150
  loc_D26785: FLdRfVar var_120
  loc_D26788: FLdPr Me
  loc_D2678B: MemLdRfVar from_stack_1.global_60
  loc_D2678E: NewIfNullPr clsctacte
  loc_D26791: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26796: FLdPr var_120
  loc_D26799:  = Me.Fields
  loc_D2679E: FLdPr var_150
  loc_D267A1: from_stack_2 = Me.Item(from_stack_1)
  loc_D267A6: FLdPr var_158
  loc_D267A9:  = Me.Value
  loc_D267AE: FLdRfVar var_138
  loc_D267B1: FnCDblVar
  loc_D267B3: LitI2_Byte 0
  loc_D267B5: CR8I2
  loc_D267B6: NeR8
  loc_D267B7: FFreeAd var_120 = "": var_150 = ""
  loc_D267C0: FFree1Var var_138 = ""
  loc_D267C3: BranchF loc_D26831
  loc_D267C6: FLdRfVar var_158
  loc_D267C9: LitVarStr var_10C, "CredCtct"
  loc_D267CE: PopAdLdVar
  loc_D267CF: FLdRfVar var_150
  loc_D267D2: FLdRfVar var_120
  loc_D267D5: FLdPr Me
  loc_D267D8: MemLdRfVar from_stack_1.global_60
  loc_D267DB: NewIfNullPr clsctacte
  loc_D267DE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D267E3: FLdPr var_120
  loc_D267E6:  = Me.Fields
  loc_D267EB: FLdPr var_150
  loc_D267EE: from_stack_2 = Me.Item(from_stack_1)
  loc_D267F3: LitI4 1
  loc_D267F8: LitI4 1
  loc_D267FD: LitVarStr var_11C, "###,###,##0.00"
  loc_D26802: FStVarCopyObj var_148
  loc_D26805: FLdRfVar var_148
  loc_D26808: FLdZeroAd var_158
  loc_D2680B: CVarAd
  loc_D2680F: FLdRfVar var_190
  loc_D26812: ImpAdCallFPR4  = Format(, )
  loc_D26817: FLdRfVar var_190
  loc_D2681A: CStrVarTmp
  loc_D2681B: FStStr var_D4
  loc_D2681E: FFreeAd var_120 = ""
  loc_D26825: FFreeVar var_138 = "": var_148 = ""
  loc_D2682E: Branch loc_D26837
  loc_D26831: LitStr vbNullString
  loc_D26834: FStStrCopy var_D4
  loc_D26837: FLdRfVar var_138
  loc_D2683A: FLdRfVar var_158
  loc_D2683D: LitVarStr var_10C, "RecaCtct"
  loc_D26842: PopAdLdVar
  loc_D26843: FLdRfVar var_150
  loc_D26846: FLdRfVar var_120
  loc_D26849: FLdPr Me
  loc_D2684C: MemLdRfVar from_stack_1.global_60
  loc_D2684F: NewIfNullPr clsctacte
  loc_D26852: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26857: FLdPr var_120
  loc_D2685A:  = Me.Fields
  loc_D2685F: FLdPr var_150
  loc_D26862: from_stack_2 = Me.Item(from_stack_1)
  loc_D26867: FLdPr var_158
  loc_D2686A:  = Me.Value
  loc_D2686F: FLdRfVar var_138
  loc_D26872: FnCDblVar
  loc_D26874: LitI2_Byte 0
  loc_D26876: CR8I2
  loc_D26877: NeR8
  loc_D26878: FFreeAd var_120 = "": var_150 = ""
  loc_D26881: FFree1Var var_138 = ""
  loc_D26884: BranchF loc_D268F2
  loc_D26887: FLdRfVar var_158
  loc_D2688A: LitVarStr var_10C, "RecaCtct"
  loc_D2688F: PopAdLdVar
  loc_D26890: FLdRfVar var_150
  loc_D26893: FLdRfVar var_120
  loc_D26896: FLdPr Me
  loc_D26899: MemLdRfVar from_stack_1.global_60
  loc_D2689C: NewIfNullPr clsctacte
  loc_D2689F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D268A4: FLdPr var_120
  loc_D268A7:  = Me.Fields
  loc_D268AC: FLdPr var_150
  loc_D268AF: from_stack_2 = Me.Item(from_stack_1)
  loc_D268B4: LitI4 1
  loc_D268B9: LitI4 1
  loc_D268BE: LitVarStr var_11C, "###,###,##0.00"
  loc_D268C3: FStVarCopyObj var_148
  loc_D268C6: FLdRfVar var_148
  loc_D268C9: FLdZeroAd var_158
  loc_D268CC: CVarAd
  loc_D268D0: FLdRfVar var_190
  loc_D268D3: ImpAdCallFPR4  = Format(, )
  loc_D268D8: FLdRfVar var_190
  loc_D268DB: CStrVarTmp
  loc_D268DC: FStStr var_D8
  loc_D268DF: FFreeAd var_120 = ""
  loc_D268E6: FFreeVar var_138 = "": var_148 = ""
  loc_D268EF: Branch loc_D268F8
  loc_D268F2: LitStr vbNullString
  loc_D268F5: FStStrCopy var_D8
  loc_D268F8: FLdRfVar var_138
  loc_D268FB: FLdRfVar var_158
  loc_D268FE: LitVarStr var_10C, "SaldCtct"
  loc_D26903: PopAdLdVar
  loc_D26904: FLdRfVar var_150
  loc_D26907: FLdRfVar var_120
  loc_D2690A: FLdPr Me
  loc_D2690D: MemLdRfVar from_stack_1.global_60
  loc_D26910: NewIfNullPr clsctacte
  loc_D26913: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26918: FLdPr var_120
  loc_D2691B:  = Me.Fields
  loc_D26920: FLdPr var_150
  loc_D26923: from_stack_2 = Me.Item(from_stack_1)
  loc_D26928: FLdPr var_158
  loc_D2692B:  = Me.Value
  loc_D26930: FLdRfVar var_148
  loc_D26933: FLdRfVar var_164
  loc_D26936: LitVarStr var_11C, "RecaCtct"
  loc_D2693B: PopAdLdVar
  loc_D2693C: FLdRfVar var_160
  loc_D2693F: FLdRfVar var_15C
  loc_D26942: FLdPr Me
  loc_D26945: MemLdRfVar from_stack_1.global_60
  loc_D26948: NewIfNullPr clsctacte
  loc_D2694B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26950: FLdPr var_15C
  loc_D26953:  = Me.Fields
  loc_D26958: FLdPr var_160
  loc_D2695B: from_stack_2 = Me.Item(from_stack_1)
  loc_D26960: FLdPr var_164
  loc_D26963:  = Me.Value
  loc_D26968: LitI4 2
  loc_D2696D: FLdRfVar var_138
  loc_D26970: FnCDblVar
  loc_D26972: FLdRfVar var_148
  loc_D26975: FnCDblVar
  loc_D26977: AddR8
  loc_D26978: CVarR8
  loc_D2697C: FLdRfVar var_1AC
  loc_D2697F: ImpAdCallFPR4  = Round(, )
  loc_D26984: LitI4 1
  loc_D26989: LitI4 1
  loc_D2698E: LitVarStr var_1DC, "###,###,##0.00"
  loc_D26993: FStVarCopyObj var_1BC
  loc_D26996: FLdRfVar var_1BC
  loc_D26999: FLdRfVar var_1AC
  loc_D2699C: FLdRfVar var_1CC
  loc_D2699F: ImpAdCallFPR4  = Format(, )
  loc_D269A4: FLdRfVar var_1CC
  loc_D269A7: CStrVarTmp
  loc_D269A8: FStStr var_F4
  loc_D269AB: FFreeAd var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_D269BA: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = ""
  loc_D269C9: FLdRfVar var_AA
  loc_D269CC: LdFixedStr
  loc_D269CF: CVarStr var_148
  loc_D269D2: LitI4 9
  loc_D269D7: FLdRfVar var_138
  loc_D269DA: ImpAdCallFPR4  = Chr()
  loc_D269DF: FLdRfVar var_138
  loc_D269E2: ConcatVar var_190
  loc_D269E6: FLdRfVar var_C4
  loc_D269E9: LdFixedStr
  loc_D269EC: CVarStr var_1AC
  loc_D269EF: ConcatVar var_1BC
  loc_D269F3: LitI4 9
  loc_D269F8: FLdRfVar var_1CC
  loc_D269FB: ImpAdCallFPR4  = Chr()
  loc_D26A00: FLdRfVar var_1CC
  loc_D26A03: ConcatVar var_1EC
  loc_D26A07: FLdRfVar var_20C
  loc_D26A0A: FLdRfVar var_158
  loc_D26A0D: LitVarStr var_10C, "FealCtct"
  loc_D26A12: PopAdLdVar
  loc_D26A13: FLdRfVar var_150
  loc_D26A16: FLdRfVar var_120
  loc_D26A19: FLdPr Me
  loc_D26A1C: MemLdRfVar from_stack_1.global_60
  loc_D26A1F: NewIfNullPr clsctacte
  loc_D26A22: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26A27: FLdPr var_120
  loc_D26A2A:  = Me.Fields
  loc_D26A2F: FLdPr var_150
  loc_D26A32: from_stack_2 = Me.Item(from_stack_1)
  loc_D26A37: FLdPr var_158
  loc_D26A3A:  = Me.Value
  loc_D26A3F: FLdRfVar var_20C
  loc_D26A42: ConcatVar var_22C
  loc_D26A46: LitI4 9
  loc_D26A4B: FLdRfVar var_23C
  loc_D26A4E: ImpAdCallFPR4  = Chr()
  loc_D26A53: FLdRfVar var_23C
  loc_D26A56: ConcatVar var_25C
  loc_D26A5A: FLdRfVar var_27C
  loc_D26A5D: FLdRfVar var_164
  loc_D26A60: LitVarStr var_11C, "FeveCtct"
  loc_D26A65: PopAdLdVar
  loc_D26A66: FLdRfVar var_160
  loc_D26A69: FLdRfVar var_15C
  loc_D26A6C: FLdPr Me
  loc_D26A6F: MemLdRfVar from_stack_1.global_60
  loc_D26A72: NewIfNullPr clsctacte
  loc_D26A75: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26A7A: FLdPr var_15C
  loc_D26A7D:  = Me.Fields
  loc_D26A82: FLdPr var_160
  loc_D26A85: from_stack_2 = Me.Item(from_stack_1)
  loc_D26A8A: FLdPr var_164
  loc_D26A8D:  = Me.Value
  loc_D26A92: FLdRfVar var_27C
  loc_D26A95: ConcatVar var_290
  loc_D26A99: LitI4 9
  loc_D26A9E: FLdRfVar var_2A0
  loc_D26AA1: ImpAdCallFPR4  = Chr()
  loc_D26AA6: FLdRfVar var_2A0
  loc_D26AA9: ConcatVar var_2B0
  loc_D26AAD: FLdRfVar var_2C0
  loc_D26AB0: FLdRfVar var_180
  loc_D26AB3: LitVarStr var_17C, "CodiConc"
  loc_D26AB8: PopAdLdVar
  loc_D26AB9: FLdRfVar var_16C
  loc_D26ABC: FLdRfVar var_168
  loc_D26ABF: FLdPr Me
  loc_D26AC2: MemLdRfVar from_stack_1.global_60
  loc_D26AC5: NewIfNullPr clsctacte
  loc_D26AC8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26ACD: FLdPr var_168
  loc_D26AD0:  = Me.Fields
  loc_D26AD5: FLdPr var_16C
  loc_D26AD8: from_stack_2 = Me.Item(from_stack_1)
  loc_D26ADD: FLdPr var_180
  loc_D26AE0:  = Me.Value
  loc_D26AE5: FLdRfVar var_2C0
  loc_D26AE8: ConcatVar var_2D0
  loc_D26AEC: LitI4 9
  loc_D26AF1: FLdRfVar var_2E0
  loc_D26AF4: ImpAdCallFPR4  = Chr()
  loc_D26AF9: FLdRfVar var_2E0
  loc_D26AFC: ConcatVar var_2F0
  loc_D26B00: FLdRfVar var_30C
  loc_D26B03: FLdRfVar var_2FC
  loc_D26B06: LitVarStr var_1DC, "ConcViej"
  loc_D26B0B: PopAdLdVar
  loc_D26B0C: FLdRfVar var_2F8
  loc_D26B0F: FLdRfVar var_2F4
  loc_D26B12: FLdPr Me
  loc_D26B15: MemLdRfVar from_stack_1.global_60
  loc_D26B18: NewIfNullPr clsctacte
  loc_D26B1B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26B20: FLdPr var_2F4
  loc_D26B23:  = Me.Fields
  loc_D26B28: FLdPr var_2F8
  loc_D26B2B: from_stack_2 = Me.Item(from_stack_1)
  loc_D26B30: FLdPr var_2FC
  loc_D26B33:  = Me.Value
  loc_D26B38: FLdRfVar var_30C
  loc_D26B3B: ConcatVar var_31C
  loc_D26B3F: LitI4 9
  loc_D26B44: FLdRfVar var_32C
  loc_D26B47: ImpAdCallFPR4  = Chr()
  loc_D26B4C: FLdRfVar var_32C
  loc_D26B4F: ConcatVar var_33C
  loc_D26B53: FLdRfVar var_358
  loc_D26B56: FLdRfVar var_348
  loc_D26B59: LitVarStr var_1FC, "CodiFapa"
  loc_D26B5E: PopAdLdVar
  loc_D26B5F: FLdRfVar var_344
  loc_D26B62: FLdRfVar var_340
  loc_D26B65: FLdPr Me
  loc_D26B68: MemLdRfVar from_stack_1.global_60
  loc_D26B6B: NewIfNullPr clsctacte
  loc_D26B6E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26B73: FLdPr var_340
  loc_D26B76:  = Me.Fields
  loc_D26B7B: FLdPr var_344
  loc_D26B7E: from_stack_2 = Me.Item(from_stack_1)
  loc_D26B83: FLdPr var_348
  loc_D26B86:  = Me.Value
  loc_D26B8B: FLdRfVar var_358
  loc_D26B8E: ConcatVar var_368
  loc_D26B92: LitI4 9
  loc_D26B97: FLdRfVar var_378
  loc_D26B9A: ImpAdCallFPR4  = Chr()
  loc_D26B9F: FLdRfVar var_378
  loc_D26BA2: ConcatVar var_388
  loc_D26BA6: FLdRfVar var_3A4
  loc_D26BA9: FLdRfVar var_394
  loc_D26BAC: LitVarStr var_21C, "NumeApre"
  loc_D26BB1: PopAdLdVar
  loc_D26BB2: FLdRfVar var_390
  loc_D26BB5: FLdRfVar var_38C
  loc_D26BB8: FLdPr Me
  loc_D26BBB: MemLdRfVar from_stack_1.global_60
  loc_D26BBE: NewIfNullPr clsctacte
  loc_D26BC1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26BC6: FLdPr var_38C
  loc_D26BC9:  = Me.Fields
  loc_D26BCE: FLdPr var_390
  loc_D26BD1: from_stack_2 = Me.Item(from_stack_1)
  loc_D26BD6: FLdPr var_394
  loc_D26BD9:  = Me.Value
  loc_D26BDE: FLdRfVar var_3A4
  loc_D26BE1: ConcatVar var_3B4
  loc_D26BE5: LitI4 9
  loc_D26BEA: FLdRfVar var_3C4
  loc_D26BED: ImpAdCallFPR4  = Chr()
  loc_D26BF2: FLdRfVar var_3C4
  loc_D26BF5: ConcatVar var_3D4
  loc_D26BF9: FLdRfVar var_3F0
  loc_D26BFC: FLdRfVar var_3E0
  loc_D26BFF: LitVarStr var_24C, "ExpeCtct"
  loc_D26C04: PopAdLdVar
  loc_D26C05: FLdRfVar var_3DC
  loc_D26C08: FLdRfVar var_3D8
  loc_D26C0B: FLdPr Me
  loc_D26C0E: MemLdRfVar from_stack_1.global_60
  loc_D26C11: NewIfNullPr clsctacte
  loc_D26C14: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26C19: FLdPr var_3D8
  loc_D26C1C:  = Me.Fields
  loc_D26C21: FLdPr var_3DC
  loc_D26C24: from_stack_2 = Me.Item(from_stack_1)
  loc_D26C29: FLdPr var_3E0
  loc_D26C2C:  = Me.Value
  loc_D26C31: FLdRfVar var_3F0
  loc_D26C34: ConcatVar var_400
  loc_D26C38: LitI4 9
  loc_D26C3D: FLdRfVar var_410
  loc_D26C40: ImpAdCallFPR4  = Chr()
  loc_D26C45: FLdRfVar var_410
  loc_D26C48: ConcatVar var_420
  loc_D26C4C: FLdRfVar var_43C
  loc_D26C4F: FLdRfVar var_42C
  loc_D26C52: LitVarStr var_26C, "AbreTimo"
  loc_D26C57: PopAdLdVar
  loc_D26C58: FLdRfVar var_428
  loc_D26C5B: FLdRfVar var_424
  loc_D26C5E: FLdPr Me
  loc_D26C61: MemLdRfVar from_stack_1.global_60
  loc_D26C64: NewIfNullPr clsctacte
  loc_D26C67: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26C6C: FLdPr var_424
  loc_D26C6F:  = Me.Fields
  loc_D26C74: FLdPr var_428
  loc_D26C77: from_stack_2 = Me.Item(from_stack_1)
  loc_D26C7C: FLdPr var_42C
  loc_D26C7F:  = Me.Value
  loc_D26C84: FLdRfVar var_43C
  loc_D26C87: ConcatVar var_44C
  loc_D26C8B: LitI4 9
  loc_D26C90: FLdRfVar var_45C
  loc_D26C93: ImpAdCallFPR4  = Chr()
  loc_D26C98: FLdRfVar var_45C
  loc_D26C9B: ConcatVar var_46C
  loc_D26C9F: ILdRf var_D0
  loc_D26CA2: CVarStr var_47C
  loc_D26CA5: ConcatVar var_48C
  loc_D26CA9: LitI4 9
  loc_D26CAE: FLdRfVar var_49C
  loc_D26CB1: ImpAdCallFPR4  = Chr()
  loc_D26CB6: FLdRfVar var_49C
  loc_D26CB9: ConcatVar var_4AC
  loc_D26CBD: ILdRf var_D4
  loc_D26CC0: CVarStr var_4BC
  loc_D26CC3: ConcatVar var_4CC
  loc_D26CC7: LitI4 9
  loc_D26CCC: FLdRfVar var_4DC
  loc_D26CCF: ImpAdCallFPR4  = Chr()
  loc_D26CD4: FLdRfVar var_4DC
  loc_D26CD7: ConcatVar var_4EC
  loc_D26CDB: ILdRf var_D8
  loc_D26CDE: CVarStr var_4FC
  loc_D26CE1: ConcatVar var_50C
  loc_D26CE5: LitI4 9
  loc_D26CEA: FLdRfVar var_51C
  loc_D26CED: ImpAdCallFPR4  = Chr()
  loc_D26CF2: FLdRfVar var_51C
  loc_D26CF5: ConcatVar var_52C
  loc_D26CF9: ILdRf var_F4
  loc_D26CFC: CVarStr var_53C
  loc_D26CFF: ConcatVar var_54C
  loc_D26D03: LitI4 9
  loc_D26D08: FLdRfVar var_55C
  loc_D26D0B: ImpAdCallFPR4  = Chr()
  loc_D26D10: FLdRfVar var_55C
  loc_D26D13: ConcatVar var_56C
  loc_D26D17: FLdRfVar var_598
  loc_D26D1A: FLdRfVar var_588
  loc_D26D1D: LitVarStr var_584, "NumeCtct"
  loc_D26D22: PopAdLdVar
  loc_D26D23: FLdRfVar var_574
  loc_D26D26: FLdRfVar var_570
  loc_D26D29: FLdPr Me
  loc_D26D2C: MemLdRfVar from_stack_1.global_60
  loc_D26D2F: NewIfNullPr clsctacte
  loc_D26D32: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26D37: FLdPr var_570
  loc_D26D3A:  = Me.Fields
  loc_D26D3F: FLdPr var_574
  loc_D26D42: from_stack_2 = Me.Item(from_stack_1)
  loc_D26D47: FLdPr var_588
  loc_D26D4A:  = Me.Value
  loc_D26D4F: FLdRfVar var_598
  loc_D26D52: ConcatVar var_5A8
  loc_D26D56: LitI4 9
  loc_D26D5B: FLdRfVar var_5B8
  loc_D26D5E: ImpAdCallFPR4  = Chr()
  loc_D26D63: FLdRfVar var_5B8
  loc_D26D66: ConcatVar var_5C8
  loc_D26D6A: FLdRfVar var_5F4
  loc_D26D6D: FLdRfVar var_5E4
  loc_D26D70: LitVarStr var_5E0, "MoviCtct"
  loc_D26D75: PopAdLdVar
  loc_D26D76: FLdRfVar var_5D0
  loc_D26D79: FLdRfVar var_5CC
  loc_D26D7C: FLdPr Me
  loc_D26D7F: MemLdRfVar from_stack_1.global_60
  loc_D26D82: NewIfNullPr clsctacte
  loc_D26D85: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26D8A: FLdPr var_5CC
  loc_D26D8D:  = Me.Fields
  loc_D26D92: FLdPr var_5D0
  loc_D26D95: from_stack_2 = Me.Item(from_stack_1)
  loc_D26D9A: FLdPr var_5E4
  loc_D26D9D:  = Me.Value
  loc_D26DA2: FLdRfVar var_5F4
  loc_D26DA5: ConcatVar var_604
  loc_D26DA9: LitI4 9
  loc_D26DAE: FLdRfVar var_614
  loc_D26DB1: ImpAdCallFPR4  = Chr()
  loc_D26DB6: FLdRfVar var_614
  loc_D26DB9: ConcatVar var_624
  loc_D26DBD: FLdRfVar var_650
  loc_D26DC0: FLdRfVar var_640
  loc_D26DC3: LitVarStr var_63C, "PeriInfo"
  loc_D26DC8: PopAdLdVar
  loc_D26DC9: FLdRfVar var_62C
  loc_D26DCC: FLdRfVar var_628
  loc_D26DCF: FLdPr Me
  loc_D26DD2: MemLdRfVar from_stack_1.global_60
  loc_D26DD5: NewIfNullPr clsctacte
  loc_D26DD8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26DDD: FLdPr var_628
  loc_D26DE0:  = Me.Fields
  loc_D26DE5: FLdPr var_62C
  loc_D26DE8: from_stack_2 = Me.Item(from_stack_1)
  loc_D26DED: FLdPr var_640
  loc_D26DF0:  = Me.Value
  loc_D26DF5: FLdRfVar var_650
  loc_D26DF8: ConcatVar var_660
  loc_D26DFC: CStrVarTmp
  loc_D26DFD: FStStr var_C8
  loc_D26E00: FFreeAd var_628 = "": var_62C = "": var_640 = "": var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_180 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_340 = "": var_344 = "": var_348 = "": var_38C = "": var_390 = "": var_394 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_424 = "": var_428 = "": var_42C = "": var_570 = "": var_574 = "": var_588 = "": var_5CC = "": var_5D0 = ""
  loc_D26E45: FFreeVar var_660 = "": var_3D4 = "": var_3F0 = "": var_400 = "": var_410 = "": var_420 = "": var_43C = "": var_44C = "": var_45C = "": var_46C = "": var_48C = "": var_49C = "": var_4AC = "": var_4CC = "": var_4DC = "": var_4EC = "": var_50C = "": var_51C = "": var_52C = "": var_54C = "": var_55C = "": var_56C = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_604 = "": var_614 = "": var_624 = "": var_650 = "": var_148 = "": var_138 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = "": var_27C = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_3A4 = "": var_3B4 = ""
  loc_D26EC2: FLdRfVar var_C8
  loc_D26EC5: CDargRef
  loc_D26EC9: FLdPr Me
  loc_D26ECC: VCallAd Control_ID_ctacteFlex
  loc_D26ECF: FStAdFunc var_120
  loc_D26ED2: FLdPr var_120
  loc_D26ED5: LateIdCall
  loc_D26EDD: FFree1Ad var_120
  loc_D26EE0: FLdRfVar var_138
  loc_D26EE3: FLdRfVar var_158
  loc_D26EE6: LitVarStr var_10C, "MoviCtct"
  loc_D26EEB: PopAdLdVar
  loc_D26EEC: FLdRfVar var_150
  loc_D26EEF: FLdRfVar var_120
  loc_D26EF2: FLdPr Me
  loc_D26EF5: MemLdRfVar from_stack_1.global_60
  loc_D26EF8: NewIfNullPr clsctacte
  loc_D26EFB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D26F00: FLdPr var_120
  loc_D26F03:  = Me.Fields
  loc_D26F08: FLdPr var_150
  loc_D26F0B: from_stack_2 = Me.Item(from_stack_1)
  loc_D26F10: FLdPr var_158
  loc_D26F13:  = Me.Value
  loc_D26F18: FLdRfVar var_138
  loc_D26F1B: FnCIntVar
  loc_D26F1D: LitI2_Byte 1
  loc_D26F1F: EqI2
  loc_D26F20: FFreeAd var_120 = "": var_150 = ""
  loc_D26F29: FFree1Var var_138 = ""
  loc_D26F2C: BranchF loc_D26FDC
  loc_D26F2F: FLdPr Me
  loc_D26F32: VCallAd Control_ID_ctacteFlex
  loc_D26F35: FStAdFunc var_120
  loc_D26F38: FLdPr var_120
  loc_D26F3B: LateIdLdVar var_138 DispID_4 0
  loc_D26F42: CI4Var
  loc_D26F44: LitI4 1
  loc_D26F49: SubI4
  loc_D26F4A: CVarI4
  loc_D26F4E: PopAdLdVar
  loc_D26F4F: FLdPr Me
  loc_D26F52: VCallAd Control_ID_ctacteFlex
  loc_D26F55: FStAdFunc var_150
  loc_D26F58: FLdPr var_150
  loc_D26F5B: LateIdSt
  loc_D26F60: FFreeAd var_120 = ""
  loc_D26F67: FFree1Var var_138 = ""
  loc_D26F6A: LitI2_Byte 0
  loc_D26F6C: FLdRfVar var_CC
  loc_D26F6F: FLdPr Me
  loc_D26F72: VCallAd Control_ID_ctacteFlex
  loc_D26F75: FStAdFunc var_120
  loc_D26F78: FLdPr var_120
  loc_D26F7B: LateIdLdVar var_138 DispID_5 0
  loc_D26F82: CI4Var
  loc_D26F84: LitI4 1
  loc_D26F89: SubI4
  loc_D26F8A: CI2I4
  loc_D26F8B: FFree1Ad var_120
  loc_D26F8E: FFree1Var var_138 = ""
  loc_D26F91: ForI2 var_664
  loc_D26F97: FLdI2 var_CC
  loc_D26F9A: CI4UI1
  loc_D26F9B: CVarI4
  loc_D26F9F: PopAdLdVar
  loc_D26FA0: FLdPr Me
  loc_D26FA3: VCallAd Control_ID_ctacteFlex
  loc_D26FA6: FStAdFunc var_120
  loc_D26FA9: FLdPr var_120
  loc_D26FAC: LateIdSt
  loc_D26FB1: FFree1Ad var_120
  loc_D26FB4: LitVarI4
  loc_D26FBC: PopAdLdVar
  loc_D26FBD: FLdPr Me
  loc_D26FC0: VCallAd Control_ID_ctacteFlex
  loc_D26FC3: FStAdFunc var_120
  loc_D26FC6: FLdPr var_120
  loc_D26FC9: LateIdSt
  loc_D26FCE: FFree1Ad var_120
  loc_D26FD1: FLdRfVar var_CC
  loc_D26FD4: NextI2 var_664, loc_D26F97
  loc_D26FD9: Branch loc_D27086
  loc_D26FDC: FLdPr Me
  loc_D26FDF: VCallAd Control_ID_ctacteFlex
  loc_D26FE2: FStAdFunc var_120
  loc_D26FE5: FLdPr var_120
  loc_D26FE8: LateIdLdVar var_138 DispID_4 0
  loc_D26FEF: CI4Var
  loc_D26FF1: LitI4 1
  loc_D26FF6: SubI4
  loc_D26FF7: CVarI4
  loc_D26FFB: PopAdLdVar
  loc_D26FFC: FLdPr Me
  loc_D26FFF: VCallAd Control_ID_ctacteFlex
  loc_D27002: FStAdFunc var_150
  loc_D27005: FLdPr var_150
  loc_D27008: LateIdSt
  loc_D2700D: FFreeAd var_120 = ""
  loc_D27014: FFree1Var var_138 = ""
  loc_D27017: LitI2_Byte 0
  loc_D27019: FLdRfVar var_CC
  loc_D2701C: FLdPr Me
  loc_D2701F: VCallAd Control_ID_ctacteFlex
  loc_D27022: FStAdFunc var_120
  loc_D27025: FLdPr var_120
  loc_D27028: LateIdLdVar var_138 DispID_5 0
  loc_D2702F: CI4Var
  loc_D27031: LitI4 1
  loc_D27036: SubI4
  loc_D27037: CI2I4
  loc_D27038: FFree1Ad var_120
  loc_D2703B: FFree1Var var_138 = ""
  loc_D2703E: ForI2 var_668
  loc_D27044: FLdI2 var_CC
  loc_D27047: CI4UI1
  loc_D27048: CVarI4
  loc_D2704C: PopAdLdVar
  loc_D2704D: FLdPr Me
  loc_D27050: VCallAd Control_ID_ctacteFlex
  loc_D27053: FStAdFunc var_120
  loc_D27056: FLdPr var_120
  loc_D27059: LateIdSt
  loc_D2705E: FFree1Ad var_120
  loc_D27061: LitVarI4
  loc_D27069: PopAdLdVar
  loc_D2706A: FLdPr Me
  loc_D2706D: VCallAd Control_ID_ctacteFlex
  loc_D27070: FStAdFunc var_120
  loc_D27073: FLdPr var_120
  loc_D27076: LateIdSt
  loc_D2707B: FFree1Ad var_120
  loc_D2707E: FLdRfVar var_CC
  loc_D27081: NextI2 var_668, loc_D27044
  loc_D27086: FLdRfVar var_120
  loc_D27089: FLdPr Me
  loc_D2708C: MemLdRfVar from_stack_1.global_60
  loc_D2708F: NewIfNullPr clsctacte
  loc_D27092: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27097: FLdPr var_120
  loc_D2709A: Me.MoveNext
  loc_D2709F: FFree1Ad var_120
  loc_D270A2: Branch loc_D2613D
  loc_D270A5: FLdPr Me
  loc_D270A8: MemLdFPR8 global_216
  loc_D270AB: FLdPr Me
  loc_D270AE: MemLdFPR8 global_192
  loc_D270B1: AddR8
  loc_D270B2: FLdPr Me
  loc_D270B5: MemLdFPR8 global_200
  loc_D270B8: SubR4
  loc_D270B9: FLdPr Me
  loc_D270BC: MemLdFPR8 global_208
  loc_D270BF: AddR8
  loc_D270C0: FLdPr Me
  loc_D270C3: MemStFPR8 global_216
  loc_D270C6: LitI4 1
  loc_D270CB: LitI4 1
  loc_D270D0: LitVarStr var_53C, "###,###,##0.00"
  loc_D270D5: FStVarCopyObj var_3C4
  loc_D270D8: FLdRfVar var_3C4
  loc_D270DB: FLdPr Me
  loc_D270DE: MemLdRfVar from_stack_1.global_192
  loc_D270E1: CVarRef
  loc_D270E6: FLdRfVar var_3D4
  loc_D270E9: ImpAdCallFPR4  = Format(, )
  loc_D270EE: LitI4 1
  loc_D270F3: LitI4 1
  loc_D270F8: LitVarStr var_678, "###,###,##0.00"
  loc_D270FD: FStVarCopyObj var_44C
  loc_D27100: FLdRfVar var_44C
  loc_D27103: FLdPr Me
  loc_D27106: MemLdRfVar from_stack_1.global_200
  loc_D27109: CVarRef
  loc_D2710E: FLdRfVar var_45C
  loc_D27111: ImpAdCallFPR4  = Format(, )
  loc_D27116: LitI4 1
  loc_D2711B: LitI4 1
  loc_D27120: LitVarStr var_6B8, "###,###,##0.00"
  loc_D27125: FStVarCopyObj var_4DC
  loc_D27128: FLdRfVar var_4DC
  loc_D2712B: FLdPr Me
  loc_D2712E: MemLdRfVar from_stack_1.global_208
  loc_D27131: CVarRef
  loc_D27136: FLdRfVar var_4EC
  loc_D27139: ImpAdCallFPR4  = Format(, )
  loc_D2713E: LitI4 1
  loc_D27143: LitI4 1
  loc_D27148: LitVarStr var_6F8, "###,###,##0.00"
  loc_D2714D: FStVarCopyObj var_56C
  loc_D27150: FLdRfVar var_56C
  loc_D27153: FLdPr Me
  loc_D27156: MemLdRfVar from_stack_1.global_216
  loc_D27159: CVarRef
  loc_D2715E: FLdRfVar var_598
  loc_D27161: ImpAdCallFPR4  = Format(, )
  loc_D27166: LitVarStr var_10C, vbNullString
  loc_D2716B: LitI4 9
  loc_D27170: FLdRfVar var_138
  loc_D27173: ImpAdCallFPR4  = Chr()
  loc_D27178: FLdRfVar var_138
  loc_D2717B: ConcatVar var_148
  loc_D2717F: LitVarStr var_11C, vbNullString
  loc_D27184: ConcatVar var_190
  loc_D27188: LitI4 9
  loc_D2718D: FLdRfVar var_1AC
  loc_D27190: ImpAdCallFPR4  = Chr()
  loc_D27195: FLdRfVar var_1AC
  loc_D27198: ConcatVar var_1BC
  loc_D2719C: LitVarStr var_17C, vbNullString
  loc_D271A1: ConcatVar var_1CC
  loc_D271A5: LitI4 9
  loc_D271AA: FLdRfVar var_1EC
  loc_D271AD: ImpAdCallFPR4  = Chr()
  loc_D271B2: FLdRfVar var_1EC
  loc_D271B5: ConcatVar var_20C
  loc_D271B9: LitVarStr var_1DC, vbNullString
  loc_D271BE: ConcatVar var_22C
  loc_D271C2: LitI4 9
  loc_D271C7: FLdRfVar var_23C
  loc_D271CA: ImpAdCallFPR4  = Chr()
  loc_D271CF: FLdRfVar var_23C
  loc_D271D2: ConcatVar var_25C
  loc_D271D6: LitVarStr var_1FC, vbNullString
  loc_D271DB: ConcatVar var_27C
  loc_D271DF: LitI4 9
  loc_D271E4: FLdRfVar var_290
  loc_D271E7: ImpAdCallFPR4  = Chr()
  loc_D271EC: FLdRfVar var_290
  loc_D271EF: ConcatVar var_2A0
  loc_D271F3: LitVarStr var_21C, vbNullString
  loc_D271F8: ConcatVar var_2B0
  loc_D271FC: LitI4 9
  loc_D27201: FLdRfVar var_2C0
  loc_D27204: ImpAdCallFPR4  = Chr()
  loc_D27209: FLdRfVar var_2C0
  loc_D2720C: ConcatVar var_2D0
  loc_D27210: LitVarStr var_24C, vbNullString
  loc_D27215: ConcatVar var_2E0
  loc_D27219: LitI4 9
  loc_D2721E: FLdRfVar var_2F0
  loc_D27221: ImpAdCallFPR4  = Chr()
  loc_D27226: FLdRfVar var_2F0
  loc_D27229: ConcatVar var_30C
  loc_D2722D: LitVarStr var_26C, vbNullString
  loc_D27232: ConcatVar var_31C
  loc_D27236: LitI4 9
  loc_D2723B: FLdRfVar var_32C
  loc_D2723E: ImpAdCallFPR4  = Chr()
  loc_D27243: FLdRfVar var_32C
  loc_D27246: ConcatVar var_33C
  loc_D2724A: LitVarStr var_47C, vbNullString
  loc_D2724F: ConcatVar var_358
  loc_D27253: LitI4 9
  loc_D27258: FLdRfVar var_368
  loc_D2725B: ImpAdCallFPR4  = Chr()
  loc_D27260: FLdRfVar var_368
  loc_D27263: ConcatVar var_378
  loc_D27267: LitVarStr var_4BC, "Sub Total:"
  loc_D2726C: ConcatVar var_388
  loc_D27270: LitI4 9
  loc_D27275: FLdRfVar var_3A4
  loc_D27278: ImpAdCallFPR4  = Chr()
  loc_D2727D: FLdRfVar var_3A4
  loc_D27280: ConcatVar var_3B4
  loc_D27284: LitVarStr var_5E0, vbNullString
  loc_D27289: FStVarCopyObj var_3F0
  loc_D2728C: FLdRfVar var_3F0
  loc_D2728F: FLdRfVar var_3D4
  loc_D27292: FLdPr Me
  loc_D27295: MemLdFPR8 global_192
  loc_D27298: LitI2_Byte 0
  loc_D2729A: CR8I2
  loc_D2729B: NeR8
  loc_D2729C: CVarBoolI2 var_584
  loc_D272A0: FLdRfVar var_400
  loc_D272A3: ImpAdCallFPR4  = IIf(, , )
  loc_D272A8: FLdRfVar var_400
  loc_D272AB: ConcatVar var_410
  loc_D272AF: LitI4 9
  loc_D272B4: FLdRfVar var_420
  loc_D272B7: ImpAdCallFPR4  = Chr()
  loc_D272BC: FLdRfVar var_420
  loc_D272BF: ConcatVar var_43C
  loc_D272C3: LitVarStr var_698, vbNullString
  loc_D272C8: FStVarCopyObj var_46C
  loc_D272CB: FLdRfVar var_46C
  loc_D272CE: FLdRfVar var_45C
  loc_D272D1: FLdPr Me
  loc_D272D4: MemLdFPR8 global_200
  loc_D272D7: LitI2_Byte 0
  loc_D272D9: CR8I2
  loc_D272DA: NeR8
  loc_D272DB: CVarBoolI2 var_688
  loc_D272DF: FLdRfVar var_48C
  loc_D272E2: ImpAdCallFPR4  = IIf(, , )
  loc_D272E7: FLdRfVar var_48C
  loc_D272EA: ConcatVar var_49C
  loc_D272EE: LitI4 9
  loc_D272F3: FLdRfVar var_4AC
  loc_D272F6: ImpAdCallFPR4  = Chr()
  loc_D272FB: FLdRfVar var_4AC
  loc_D272FE: ConcatVar var_4CC
  loc_D27302: LitVarStr var_6D8, vbNullString
  loc_D27307: FStVarCopyObj var_50C
  loc_D2730A: FLdRfVar var_50C
  loc_D2730D: FLdRfVar var_4EC
  loc_D27310: FLdPr Me
  loc_D27313: MemLdFPR8 global_208
  loc_D27316: LitI2_Byte 0
  loc_D27318: CR8I2
  loc_D27319: NeR8
  loc_D2731A: CVarBoolI2 var_6C8
  loc_D2731E: FLdRfVar var_51C
  loc_D27321: ImpAdCallFPR4  = IIf(, , )
  loc_D27326: FLdRfVar var_51C
  loc_D27329: ConcatVar var_52C
  loc_D2732D: LitI4 9
  loc_D27332: FLdRfVar var_54C
  loc_D27335: ImpAdCallFPR4  = Chr()
  loc_D2733A: FLdRfVar var_54C
  loc_D2733D: ConcatVar var_55C
  loc_D27341: LitVarStr var_718, vbNullString
  loc_D27346: FStVarCopyObj var_5A8
  loc_D27349: FLdRfVar var_5A8
  loc_D2734C: FLdRfVar var_598
  loc_D2734F: FLdPr Me
  loc_D27352: MemLdFPR8 global_216
  loc_D27355: LitI2_Byte 0
  loc_D27357: CR8I2
  loc_D27358: NeR8
  loc_D27359: CVarBoolI2 var_708
  loc_D2735D: FLdRfVar var_5B8
  loc_D27360: ImpAdCallFPR4  = IIf(, , )
  loc_D27365: FLdRfVar var_5B8
  loc_D27368: ConcatVar var_5C8
  loc_D2736C: LitI4 9
  loc_D27371: FLdRfVar var_5F4
  loc_D27374: ImpAdCallFPR4  = Chr()
  loc_D27379: FLdRfVar var_5F4
  loc_D2737C: ConcatVar var_604
  loc_D27380: LitVarStr var_728, "0"
  loc_D27385: ConcatVar var_614
  loc_D27389: LitI4 9
  loc_D2738E: FLdRfVar var_624
  loc_D27391: ImpAdCallFPR4  = Chr()
  loc_D27396: FLdRfVar var_624
  loc_D27399: ConcatVar var_650
  loc_D2739D: LitVarStr var_738, "0"
  loc_D273A2: ConcatVar var_660
  loc_D273A6: LitI4 9
  loc_D273AB: FLdRfVar var_748
  loc_D273AE: ImpAdCallFPR4  = Chr()
  loc_D273B3: FLdRfVar var_748
  loc_D273B6: ConcatVar var_758
  loc_D273BA: LitVarStr var_768, "0"
  loc_D273BF: ConcatVar var_778
  loc_D273C3: CStrVarTmp
  loc_D273C4: FStStr var_C8
  loc_D273C7: FFreeVar var_604 = "": var_614 = "": var_624 = "": var_650 = "": var_660 = "": var_748 = "": var_758 = "": var_778 = "": var_3D4 = "": var_3F0 = "": var_3B4 = "": var_400 = "": var_410 = "": var_420 = "": var_44C = "": var_688 = "": var_45C = "": var_46C = "": var_43C = "": var_48C = "": var_49C = "": var_4AC = "": var_4DC = "": var_6C8 = "": var_4EC = "": var_50C = "": var_4CC = "": var_51C = "": var_52C = "": var_54C = "": var_56C = "": var_708 = "": var_598 = "": var_5A8 = "": var_55C = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = "": var_27C = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_3A4 = "": var_3C4 = ""
  loc_D27452: FLdRfVar var_C8
  loc_D27455: CDargRef
  loc_D27459: FLdPr Me
  loc_D2745C: VCallAd Control_ID_ctacteFlex
  loc_D2745F: FStAdFunc var_120
  loc_D27462: FLdPr var_120
  loc_D27465: LateIdCall
  loc_D2746D: FFree1Ad var_120
  loc_D27470: FLdPr Me
  loc_D27473: VCallAd Control_ID_ctacteFlex
  loc_D27476: FStAdFunc var_120
  loc_D27479: FLdPr var_120
  loc_D2747C: LateIdLdVar var_138 DispID_4 0
  loc_D27483: CI4Var
  loc_D27485: LitI4 1
  loc_D2748A: SubI4
  loc_D2748B: CVarI4
  loc_D2748F: PopAdLdVar
  loc_D27490: FLdPr Me
  loc_D27493: VCallAd Control_ID_ctacteFlex
  loc_D27496: FStAdFunc var_150
  loc_D27499: FLdPr var_150
  loc_D2749C: LateIdSt
  loc_D274A1: FFreeAd var_120 = ""
  loc_D274A8: FFree1Var var_138 = ""
  loc_D274AB: LitI2_Byte 0
  loc_D274AD: FLdRfVar var_CC
  loc_D274B0: FLdPr Me
  loc_D274B3: VCallAd Control_ID_ctacteFlex
  loc_D274B6: FStAdFunc var_120
  loc_D274B9: FLdPr var_120
  loc_D274BC: LateIdLdVar var_138 DispID_5 0
  loc_D274C3: CI4Var
  loc_D274C5: LitI4 1
  loc_D274CA: SubI4
  loc_D274CB: CI2I4
  loc_D274CC: FFree1Ad var_120
  loc_D274CF: FFree1Var var_138 = ""
  loc_D274D2: ForI2 var_77C
  loc_D274D8: FLdI2 var_CC
  loc_D274DB: CI4UI1
  loc_D274DC: CVarI4
  loc_D274E0: PopAdLdVar
  loc_D274E1: FLdPr Me
  loc_D274E4: VCallAd Control_ID_ctacteFlex
  loc_D274E7: FStAdFunc var_120
  loc_D274EA: FLdPr var_120
  loc_D274ED: LateIdSt
  loc_D274F2: FFree1Ad var_120
  loc_D274F5: LitVarI4
  loc_D274FD: PopAdLdVar
  loc_D274FE: FLdPr Me
  loc_D27501: VCallAd Control_ID_ctacteFlex
  loc_D27504: FStAdFunc var_120
  loc_D27507: FLdPr var_120
  loc_D2750A: LateIdSt
  loc_D2750F: FFree1Ad var_120
  loc_D27512: FLdRfVar var_CC
  loc_D27515: NextI2 var_77C, loc_D274D8
  loc_D2751A: FLdRfVar var_120
  loc_D2751D: FLdPr Me
  loc_D27520: MemLdRfVar from_stack_1.global_52
  loc_D27523: NewIfNullPr clsctacte
  loc_D27526: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2752B: FLdPr var_120
  loc_D2752E: Me.MoveNext
  loc_D27533: FFree1Ad var_120
  loc_D27536: Branch loc_D25F56
  loc_D27539: LitI4 1
  loc_D2753E: LitI4 1
  loc_D27543: LitVarStr var_11C, "###,###,##0.00"
  loc_D27548: FStVarCopyObj var_138
  loc_D2754B: FLdRfVar var_138
  loc_D2754E: FLdPr Me
  loc_D27551: MemLdRfVar from_stack_1.global_144
  loc_D27554: CVarRef
  loc_D27559: FLdRfVar var_148
  loc_D2755C: ImpAdCallFPR4  = Format(, )
  loc_D27561: FLdRfVar var_148
  loc_D27564: CStrVarVal var_124
  loc_D27568: FLdPr Me
  loc_D2756B: VCallAd Control_ID_txtTotaDere
  loc_D2756E: FStAdFunc var_120
  loc_D27571: FLdPr var_120
  loc_D27574: Me.Text = from_stack_1
  loc_D27579: FFree1Str var_124
  loc_D2757C: FFree1Ad var_120
  loc_D2757F: FFreeVar var_138 = ""
  loc_D27586: LitI4 1
  loc_D2758B: LitI4 1
  loc_D27590: LitVarStr var_11C, "###,###,##0.00"
  loc_D27595: FStVarCopyObj var_138
  loc_D27598: FLdRfVar var_138
  loc_D2759B: FLdPr Me
  loc_D2759E: MemLdRfVar from_stack_1.global_152
  loc_D275A1: CVarRef
  loc_D275A6: FLdRfVar var_148
  loc_D275A9: ImpAdCallFPR4  = Format(, )
  loc_D275AE: FLdRfVar var_148
  loc_D275B1: CStrVarVal var_124
  loc_D275B5: FLdPr Me
  loc_D275B8: VCallAd Control_ID_txtTotaCred
  loc_D275BB: FStAdFunc var_120
  loc_D275BE: FLdPr var_120
  loc_D275C1: Me.Text = from_stack_1
  loc_D275C6: FFree1Str var_124
  loc_D275C9: FFree1Ad var_120
  loc_D275CC: FFreeVar var_138 = ""
  loc_D275D3: LitI4 1
  loc_D275D8: LitI4 1
  loc_D275DD: LitVarStr var_11C, "###,###,##0.00"
  loc_D275E2: FStVarCopyObj var_138
  loc_D275E5: FLdRfVar var_138
  loc_D275E8: FLdPr Me
  loc_D275EB: MemLdRfVar from_stack_1.global_168
  loc_D275EE: CVarRef
  loc_D275F3: FLdRfVar var_148
  loc_D275F6: ImpAdCallFPR4  = Format(, )
  loc_D275FB: FLdRfVar var_148
  loc_D275FE: CStrVarVal var_124
  loc_D27602: FLdPr Me
  loc_D27605: VCallAd Control_ID_txtTotaReca
  loc_D27608: FStAdFunc var_120
  loc_D2760B: FLdPr var_120
  loc_D2760E: Me.Text = from_stack_1
  loc_D27613: FFree1Str var_124
  loc_D27616: FFree1Ad var_120
  loc_D27619: FFreeVar var_138 = ""
  loc_D27620: LitI4 1
  loc_D27625: LitI4 1
  loc_D2762A: LitVarStr var_11C, "###,###,##0.00"
  loc_D2762F: FStVarCopyObj var_138
  loc_D27632: FLdRfVar var_138
  loc_D27635: FLdPr Me
  loc_D27638: MemLdRfVar from_stack_1.global_160
  loc_D2763B: CVarRef
  loc_D27640: FLdRfVar var_148
  loc_D27643: ImpAdCallFPR4  = Format(, )
  loc_D27648: FLdRfVar var_148
  loc_D2764B: CStrVarVal var_124
  loc_D2764F: FLdPr Me
  loc_D27652: VCallAd Control_ID_txtTotaApre
  loc_D27655: FStAdFunc var_120
  loc_D27658: FLdPr var_120
  loc_D2765B: Me.Text = from_stack_1
  loc_D27660: FFree1Str var_124
  loc_D27663: FFree1Ad var_120
  loc_D27666: FFreeVar var_138 = ""
  loc_D2766D: LitI4 2
  loc_D27672: FLdPr Me
  loc_D27675: MemLdFPR8 global_144
  loc_D27678: FLdPr Me
  loc_D2767B: MemLdFPR8 global_152
  loc_D2767E: SubR4
  loc_D2767F: FLdPr Me
  loc_D27682: MemLdFPR8 global_168
  loc_D27685: AddR8
  loc_D27686: FLdPr Me
  loc_D27689: MemLdFPR8 global_160
  loc_D2768C: AddR8
  loc_D2768D: CVarR8
  loc_D27691: FLdRfVar var_148
  loc_D27694: ImpAdCallFPR4  = Round(, )
  loc_D27699: FLdRfVar var_148
  loc_D2769C: CR4Var
  loc_D2769D: FLdPr Me
  loc_D276A0: MemStFPR8 global_176
  loc_D276A3: FFreeVar var_138 = ""
  loc_D276AA: LitI4 1
  loc_D276AF: LitI4 1
  loc_D276B4: LitVarStr var_11C, "###,###,##0.00"
  loc_D276B9: FStVarCopyObj var_138
  loc_D276BC: FLdRfVar var_138
  loc_D276BF: FLdPr Me
  loc_D276C2: MemLdRfVar from_stack_1.global_176
  loc_D276C5: CVarRef
  loc_D276CA: FLdRfVar var_148
  loc_D276CD: ImpAdCallFPR4  = Format(, )
  loc_D276D2: FLdRfVar var_148
  loc_D276D5: CStrVarVal var_124
  loc_D276D9: FLdPr Me
  loc_D276DC: VCallAd Control_ID_txtTotal
  loc_D276DF: FStAdFunc var_120
  loc_D276E2: FLdPr var_120
  loc_D276E5: Me.Text = from_stack_1
  loc_D276EA: FFree1Str var_124
  loc_D276ED: FFree1Ad var_120
  loc_D276F0: FFreeVar var_138 = ""
  loc_D276F7: LitI2_Byte &HFF
  loc_D276F9: FLdPr Me
  loc_D276FC: VCallAd Control_ID_ImprimirCmd
  loc_D276FF: FStAdFunc var_120
  loc_D27702: FLdPr var_120
  loc_D27705: Me.Enabled = from_stack_1b
  loc_D2770A: FFree1Ad var_120
  loc_D2770D: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D27710: LitStr " LEFT JOIN  tmp_ctacte ON tmp_ctacte.NumeApre = apremio.NumeApre "
  loc_D27713: ConcatStr
  loc_D27714: FStStrNoPop var_124
  loc_D27717: LitStr " WHERE apremio.CodiOfic = "
  loc_D2771A: ConcatStr
  loc_D2771B: FStStrNoPop var_128
  loc_D2771E: ImpAdLdUI1
  loc_D27722: CStrI2
  loc_D27724: FStStrNoPop var_19C
  loc_D27727: ConcatStr
  loc_D27728: FStStrNoPop var_280
  loc_D2772B: LitStr " AND apremio.CuenCtct = '"
  loc_D2772E: ConcatStr
  loc_D2772F: FStStrNoPop var_784
  loc_D27732: FLdRfVar var_780
  loc_D27735: FLdPr Me
  loc_D27738: VCallAd Control_ID_NumeCtaTxt
  loc_D2773B: FStAdFunc var_120
  loc_D2773E: FLdPr var_120
  loc_D27741:  = Me.Text
  loc_D27746: ILdRf var_780
  loc_D27749: ConcatStr
  loc_D2774A: FStStrNoPop var_788
  loc_D2774D: LitStr "' AND EstaApre = 10"
  loc_D27750: ConcatStr
  loc_D27751: FStStrNoPop var_78C
  loc_D27754: LitStr " AND tmp_ctacte.CodiOfic IS NULL"
  loc_D27757: ConcatStr
  loc_D27758: FStStrNoPop var_790
  loc_D2775B: LitStr " GROUP BY apremio.NumeApre"
  loc_D2775E: ConcatStr
  loc_D2775F: FStStrNoPop var_794
  loc_D27762: FLdPr Me
  loc_D27765: MemLdRfVar from_stack_1.global_68
  loc_D27768: NewIfNullPr clsctacte
  loc_D2776B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D27770: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_280 = "": var_784 = "": var_780 = "": var_788 = "": var_78C = "": var_790 = ""
  loc_D27787: FFree1Ad var_120
  loc_D2778A: FLdRfVar var_154
  loc_D2778D: FLdPr Me
  loc_D27790: MemLdRfVar from_stack_1.global_68
  loc_D27793: NewIfNullPr clsctacte
  loc_D27796: from_stack_1 = clsctacte.RecordCount
  loc_D2779B: ILdRf var_154
  loc_D2779E: LitI4 0
  loc_D277A3: GtI4
  loc_D277A4: BranchF loc_D277D8
  loc_D277A7: LitVar_Missing var_1AC
  loc_D277AA: LitVar_Missing var_190
  loc_D277AD: LitVarStr var_11C, "Expediente"
  loc_D277B2: FStVarCopyObj var_148
  loc_D277B5: FLdRfVar var_148
  loc_D277B8: LitI4 &H40
  loc_D277BD: LitVarStr var_10C, "LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE...."
  loc_D277C2: FStVarCopyObj var_138
  loc_D277C5: FLdRfVar var_138
  loc_D277C8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D277CD: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D277D8: Branch loc_D278D1
  loc_D277DB: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D277DE: LitStr " LEFT JOIN  tmp_ctacte ON tmp_ctacte.NumeApre = apremio.NumeApre "
  loc_D277E1: ConcatStr
  loc_D277E2: FStStrNoPop var_124
  loc_D277E5: LitStr " WHERE apremio.CodiOfic = "
  loc_D277E8: ConcatStr
  loc_D277E9: FStStrNoPop var_128
  loc_D277EC: ImpAdLdUI1
  loc_D277F0: CStrI2
  loc_D277F2: FStStrNoPop var_19C
  loc_D277F5: ConcatStr
  loc_D277F6: FStStrNoPop var_280
  loc_D277F9: LitStr " AND apremio.CuenCtct = '"
  loc_D277FC: ConcatStr
  loc_D277FD: FStStrNoPop var_784
  loc_D27800: FLdRfVar var_780
  loc_D27803: FLdPr Me
  loc_D27806: VCallAd Control_ID_NumeCtaTxt
  loc_D27809: FStAdFunc var_120
  loc_D2780C: FLdPr var_120
  loc_D2780F:  = Me.Text
  loc_D27814: ILdRf var_780
  loc_D27817: ConcatStr
  loc_D27818: FStStrNoPop var_788
  loc_D2781B: LitStr "' AND EstaApre = 10"
  loc_D2781E: ConcatStr
  loc_D2781F: FStStrNoPop var_78C
  loc_D27822: LitStr " AND tmp_ctacte.CodiOfic IS NULL"
  loc_D27825: ConcatStr
  loc_D27826: FStStrNoPop var_790
  loc_D27829: LitStr " GROUP BY apremio.NumeApre"
  loc_D2782C: ConcatStr
  loc_D2782D: FStStrNoPop var_794
  loc_D27830: FLdPr Me
  loc_D27833: MemLdRfVar from_stack_1.global_68
  loc_D27836: NewIfNullPr clsctacte
  loc_D27839: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D2783E: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_280 = "": var_784 = "": var_780 = "": var_788 = "": var_78C = "": var_790 = ""
  loc_D27855: FFree1Ad var_120
  loc_D27858: FLdRfVar var_154
  loc_D2785B: FLdPr Me
  loc_D2785E: MemLdRfVar from_stack_1.global_68
  loc_D27861: NewIfNullPr clsctacte
  loc_D27864: from_stack_1 = clsctacte.RecordCount
  loc_D27869: ILdRf var_154
  loc_D2786C: LitI4 0
  loc_D27871: GtI4
  loc_D27872: BranchF loc_D278A6
  loc_D27875: LitVar_Missing var_1AC
  loc_D27878: LitVar_Missing var_190
  loc_D2787B: LitVarStr var_11C, "Expediente"
  loc_D27880: FStVarCopyObj var_148
  loc_D27883: FLdRfVar var_148
  loc_D27886: LitI4 &H40
  loc_D2788B: LitVarStr var_10C, "LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE...."
  loc_D27890: FStVarCopyObj var_138
  loc_D27893: FLdRfVar var_138
  loc_D27896: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D2789B: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D278A6: LitI2_Byte 0
  loc_D278A8: FLdPr Me
  loc_D278AB: VCallAd Control_ID_ImprimirCmd
  loc_D278AE: FStAdFunc var_120
  loc_D278B1: FLdPr var_120
  loc_D278B4: Me.Enabled = from_stack_1b
  loc_D278B9: FFree1Ad var_120
  loc_D278BC: LitStr "La cuenta seleccionada no posee DEUDA."
  loc_D278BF: FLdPr Me
  loc_D278C2: MemStStrCopy
  loc_D278C6: FLdPr Me
  loc_D278C9: MemLdStr global_140
  loc_D278CC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D278D1: FLdRfVar var_14A
  loc_D278D4: FLdPr Me
  loc_D278D7: VCallAd Control_ID_SoloDeudaChk
  loc_D278DA: FStAdFunc var_120
  loc_D278DD: FLdPr var_120
  loc_D278E0:  = Me.Value
  loc_D278E5: FLdI2 var_14A
  loc_D278E8: LitI2_Byte 0
  loc_D278EA: EqI2
  loc_D278EB: FFree1Ad var_120
  loc_D278EE: BranchF loc_D292D8
  loc_D278F1: FLdRfVar var_124
  loc_D278F4: FLdPr Me
  loc_D278F7: VCallAd Control_ID_NumeCtaTxt
  loc_D278FA: FStAdFunc var_120
  loc_D278FD: FLdPr var_120
  loc_D27900:  = Me.Text
  loc_D27905: FLdPr Me
  loc_D27908: VCallAd Control_ID_FechVencMsk
  loc_D2790B: FStAdFunc var_150
  loc_D2790E: FLdPr var_150
  loc_D27911: LateIdLdVar var_138 DispID_22 0
  loc_D27918: CStrVarTmp
  loc_D27919: FStStrNoPop var_128
  loc_D2791C: ILdRf var_124
  loc_D2791F: ImpAdLdUI1
  loc_D27923: FLdPr Me
  loc_D27926: MemLdRfVar from_stack_1.global_52
  loc_D27929: NewIfNullPr clsctacte
  loc_D2792C: Call clsctacte.CreaTemporalHistoCtaCte(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D27931: FFreeStr var_124 = ""
  loc_D27938: FFreeAd var_120 = ""
  loc_D2793F: FFree1Var var_138 = ""
  loc_D27942: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacte WHERE NumeApre <> 0 "
  loc_D27945: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.NumeApre"
  loc_D27948: ConcatStr
  loc_D27949: FStStrNoPop var_124
  loc_D2794C: LitStr " HAVING SaldCtct > 0"
  loc_D2794F: ConcatStr
  loc_D27950: FStStrNoPop var_128
  loc_D27953: FLdPr Me
  loc_D27956: MemLdRfVar from_stack_1.global_52
  loc_D27959: NewIfNullPr clsctacte
  loc_D2795C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D27961: FFreeStr var_124 = ""
  loc_D27968: FLdRfVar var_154
  loc_D2796B: FLdRfVar var_120
  loc_D2796E: FLdPr Me
  loc_D27971: MemLdRfVar from_stack_1.global_52
  loc_D27974: NewIfNullPr clsctacte
  loc_D27977: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2797C: FLdPr var_120
  loc_D2797F:  = Me.RecordCount
  loc_D27984: ILdRf var_154
  loc_D27987: LitI4 0
  loc_D2798C: GtI4
  loc_D2798D: FFree1Ad var_120
  loc_D27990: BranchF loc_D27AC3
  loc_D27993: FLdRfVar var_14A
  loc_D27996: FLdPr Me
  loc_D27999: MemLdRfVar from_stack_1.global_52
  loc_D2799C: NewIfNullPr clsctacte
  loc_D2799F: from_stack_1 = clsctacte.EOF
  loc_D279A4: FLdI2 var_14A
  loc_D279A7: NotI4
  loc_D279A8: BranchF loc_D27AC0
  loc_D279AB: FLdRfVar var_138
  loc_D279AE: FLdRfVar var_158
  loc_D279B1: LitVarStr var_10C, "NumeApre"
  loc_D279B6: PopAdLdVar
  loc_D279B7: FLdRfVar var_150
  loc_D279BA: FLdRfVar var_120
  loc_D279BD: FLdPr Me
  loc_D279C0: MemLdRfVar from_stack_1.global_52
  loc_D279C3: NewIfNullPr clsctacte
  loc_D279C6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D279CB: FLdPr var_120
  loc_D279CE:  = Me.Fields
  loc_D279D3: FLdPr var_150
  loc_D279D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D279DB: FLdPr var_158
  loc_D279DE:  = Me.Value
  loc_D279E3: FLdRfVar var_148
  loc_D279E6: FLdRfVar var_164
  loc_D279E9: LitVarStr var_11C, "SaldCtct"
  loc_D279EE: PopAdLdVar
  loc_D279EF: FLdRfVar var_160
  loc_D279F2: FLdRfVar var_15C
  loc_D279F5: FLdPr Me
  loc_D279F8: MemLdRfVar from_stack_1.global_52
  loc_D279FB: NewIfNullPr clsctacte
  loc_D279FE: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27A03: FLdPr var_15C
  loc_D27A06:  = Me.Fields
  loc_D27A0B: FLdPr var_160
  loc_D27A0E: from_stack_2 = Me.Item(from_stack_1)
  loc_D27A13: FLdPr var_164
  loc_D27A16:  = Me.Value
  loc_D27A1B: FLdRfVar var_190
  loc_D27A1E: FLdRfVar var_180
  loc_D27A21: LitVarStr var_17C, "RecaCtct"
  loc_D27A26: PopAdLdVar
  loc_D27A27: FLdRfVar var_16C
  loc_D27A2A: FLdRfVar var_168
  loc_D27A2D: FLdPr Me
  loc_D27A30: MemLdRfVar from_stack_1.global_52
  loc_D27A33: NewIfNullPr clsctacte
  loc_D27A36: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27A3B: FLdPr var_168
  loc_D27A3E:  = Me.Fields
  loc_D27A43: FLdPr var_16C
  loc_D27A46: from_stack_2 = Me.Item(from_stack_1)
  loc_D27A4B: FLdPr var_180
  loc_D27A4E:  = Me.Value
  loc_D27A53: FLdRfVar var_198
  loc_D27A56: FLdRfVar var_190
  loc_D27A59: CR4Var
  loc_D27A5A: PopFPR8
  loc_D27A5B: FLdRfVar var_148
  loc_D27A5E: CR4Var
  loc_D27A5F: PopFPR8
  loc_D27A60: FLdRfVar var_138
  loc_D27A63: CI4Var
  loc_D27A65: FLdPr Me
  loc_D27A68: MemLdRfVar from_stack_1.global_92
  loc_D27A6B: NewIfNullPr clsapremio
  loc_D27A6E: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D27A73: FLdPr Me
  loc_D27A76: MemLdFPR8 global_160
  loc_D27A79: FLdFPR8 var_198
  loc_D27A7C: AddR8
  loc_D27A7D: FLdPr Me
  loc_D27A80: MemStFPR8 global_160
  loc_D27A83: FFreeAd var_120 = "": var_150 = "": var_15C = "": var_160 = "": var_168 = "": var_16C = "": var_158 = "": var_164 = ""
  loc_D27A98: FFreeVar var_138 = "": var_148 = ""
  loc_D27AA1: FLdRfVar var_120
  loc_D27AA4: FLdPr Me
  loc_D27AA7: MemLdRfVar from_stack_1.global_52
  loc_D27AAA: NewIfNullPr clsctacte
  loc_D27AAD: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27AB2: FLdPr var_120
  loc_D27AB5: Me.MoveNext
  loc_D27ABA: FFree1Ad var_120
  loc_D27ABD: Branch loc_D27993
  loc_D27AC0: Branch loc_D27ACC
  loc_D27AC3: LitI2_Byte 0
  loc_D27AC5: CR8I2
  loc_D27AC6: FLdPr Me
  loc_D27AC9: MemStFPR8 global_160
  loc_D27ACC: LitStr "SELECT CodiOfic, CuenCtct, PeriCtct FROM tmp_ctacte "
  loc_D27ACF: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct"
  loc_D27AD2: ConcatStr
  loc_D27AD3: FStStrNoPop var_124
  loc_D27AD6: FLdPr Me
  loc_D27AD9: MemLdRfVar from_stack_1.global_52
  loc_D27ADC: NewIfNullPr clsctacte
  loc_D27ADF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D27AE4: FFree1Str var_124
  loc_D27AE7: FLdRfVar var_154
  loc_D27AEA: FLdPr Me
  loc_D27AED: MemLdRfVar from_stack_1.global_52
  loc_D27AF0: NewIfNullPr clsctacte
  loc_D27AF3: from_stack_1 = clsctacte.RecordCount
  loc_D27AF8: ILdRf var_154
  loc_D27AFB: LitI4 0
  loc_D27B00: GtI4
  loc_D27B01: BranchF loc_D291E2
  loc_D27B04: FLdPr Me
  loc_D27B07: MemLdRfVar from_stack_1.global_52
  loc_D27B0A: NewIfNullPr clsctacte
  loc_D27B0D: Call clsctacte.MoveFirst()
  loc_D27B12: FLdRfVar var_14A
  loc_D27B15: FLdPr Me
  loc_D27B18: MemLdRfVar from_stack_1.global_52
  loc_D27B1B: NewIfNullPr clsctacte
  loc_D27B1E: from_stack_1 = clsctacte.EOF
  loc_D27B23: FLdI2 var_14A
  loc_D27B26: NotI4
  loc_D27B27: BranchF loc_D28F40
  loc_D27B2A: LitI2_Byte 0
  loc_D27B2C: CR8I2
  loc_D27B2D: FLdPr Me
  loc_D27B30: MemStFPR8 global_192
  loc_D27B33: LitI2_Byte 0
  loc_D27B35: CR8I2
  loc_D27B36: FLdPr Me
  loc_D27B39: MemStFPR8 global_200
  loc_D27B3C: LitI2_Byte 0
  loc_D27B3E: CR8I2
  loc_D27B3F: FLdPr Me
  loc_D27B42: MemStFPR8 global_208
  loc_D27B45: LitI2_Byte 0
  loc_D27B47: CR8I2
  loc_D27B48: FLdPr Me
  loc_D27B4B: MemStFPR8 global_216
  loc_D27B4E: LitStr "SELECT tmp_ctacte.*, AbreTimo, concepto.ConcViej FROM tmp_ctacte "
  loc_D27B51: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacte.PeriInfo"
  loc_D27B54: ConcatStr
  loc_D27B55: FStStrNoPop var_124
  loc_D27B58: LitStr " AND concepto.CodiConc = tmp_ctacte.CodiConc"
  loc_D27B5B: ConcatStr
  loc_D27B5C: FStStrNoPop var_128
  loc_D27B5F: LitStr " LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_D27B62: ConcatStr
  loc_D27B63: FStStrNoPop var_19C
  loc_D27B66: LitStr " WHERE tmp_ctacte.CodiOfic = "
  loc_D27B69: ConcatStr
  loc_D27B6A: CVarStr var_148
  loc_D27B6D: FLdRfVar var_138
  loc_D27B70: FLdRfVar var_158
  loc_D27B73: LitVarStr var_10C, "CodiOfic"
  loc_D27B78: PopAdLdVar
  loc_D27B79: FLdRfVar var_150
  loc_D27B7C: FLdRfVar var_120
  loc_D27B7F: FLdPr Me
  loc_D27B82: MemLdRfVar from_stack_1.global_52
  loc_D27B85: NewIfNullPr clsctacte
  loc_D27B88: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27B8D: FLdPr var_120
  loc_D27B90:  = Me.Fields
  loc_D27B95: FLdPr var_150
  loc_D27B98: from_stack_2 = Me.Item(from_stack_1)
  loc_D27B9D: FLdPr var_158
  loc_D27BA0:  = Me.Value
  loc_D27BA5: FLdRfVar var_138
  loc_D27BA8: ConcatVar var_190
  loc_D27BAC: LitVarStr var_11C, " AND tmp_ctacte.CuenCtct = '"
  loc_D27BB1: ConcatVar var_1AC
  loc_D27BB5: FLdRfVar var_1BC
  loc_D27BB8: FLdRfVar var_164
  loc_D27BBB: LitVarStr var_17C, "CuenCtct"
  loc_D27BC0: PopAdLdVar
  loc_D27BC1: FLdRfVar var_160
  loc_D27BC4: FLdRfVar var_15C
  loc_D27BC7: FLdPr Me
  loc_D27BCA: MemLdRfVar from_stack_1.global_52
  loc_D27BCD: NewIfNullPr clsctacte
  loc_D27BD0: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27BD5: FLdPr var_15C
  loc_D27BD8:  = Me.Fields
  loc_D27BDD: FLdPr var_160
  loc_D27BE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D27BE5: FLdPr var_164
  loc_D27BE8:  = Me.Value
  loc_D27BED: FLdRfVar var_1BC
  loc_D27BF0: ConcatVar var_1CC
  loc_D27BF4: LitVarStr var_1DC, "'"
  loc_D27BF9: ConcatVar var_1EC
  loc_D27BFD: LitVarStr var_1FC, " AND tmp_ctacte.PeriCtct = "
  loc_D27C02: ConcatVar var_20C
  loc_D27C06: FLdRfVar var_22C
  loc_D27C09: FLdRfVar var_180
  loc_D27C0C: LitVarStr var_21C, "PeriCtct"
  loc_D27C11: PopAdLdVar
  loc_D27C12: FLdRfVar var_16C
  loc_D27C15: FLdRfVar var_168
  loc_D27C18: FLdPr Me
  loc_D27C1B: MemLdRfVar from_stack_1.global_52
  loc_D27C1E: NewIfNullPr clsctacte
  loc_D27C21: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27C26: FLdPr var_168
  loc_D27C29:  = Me.Fields
  loc_D27C2E: FLdPr var_16C
  loc_D27C31: from_stack_2 = Me.Item(from_stack_1)
  loc_D27C36: FLdPr var_180
  loc_D27C39:  = Me.Value
  loc_D27C3E: FLdRfVar var_22C
  loc_D27C41: ConcatVar var_23C
  loc_D27C45: LitVarStr var_24C, " AND tmp_ctacte.FeveCtct >= '1000-01-01'"
  loc_D27C4A: ConcatVar var_25C
  loc_D27C4E: LitVarStr var_26C, " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct, tmp_ctacte.BimeCtct, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_D27C53: ConcatVar var_27C
  loc_D27C57: CStrVarVal var_280
  loc_D27C5B: FLdPr Me
  loc_D27C5E: MemLdRfVar from_stack_1.global_60
  loc_D27C61: NewIfNullPr clsctacte
  loc_D27C64: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D27C69: FFreeStr var_124 = "": var_128 = "": var_19C = ""
  loc_D27C74: FFreeAd var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_D27C89: FFreeVar var_148 = "": var_138 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = ""
  loc_D27CA4: FLdRfVar var_154
  loc_D27CA7: FLdRfVar var_120
  loc_D27CAA: FLdPr Me
  loc_D27CAD: MemLdRfVar from_stack_1.global_60
  loc_D27CB0: NewIfNullPr clsctacte
  loc_D27CB3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27CB8: FLdPr var_120
  loc_D27CBB:  = Me.RecordCount
  loc_D27CC0: ILdRf var_154
  loc_D27CC3: LitI4 0
  loc_D27CC8: GtI4
  loc_D27CC9: FFree1Ad var_120
  loc_D27CCC: BranchF loc_D28F21
  loc_D27CCF: FLdRfVar var_120
  loc_D27CD2: FLdPr Me
  loc_D27CD5: MemLdRfVar from_stack_1.global_60
  loc_D27CD8: NewIfNullPr clsctacte
  loc_D27CDB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27CE0: FLdPr var_120
  loc_D27CE3: Me.MoveFirst
  loc_D27CE8: FFree1Ad var_120
  loc_D27CEB: FLdRfVar var_14A
  loc_D27CEE: FLdRfVar var_120
  loc_D27CF1: FLdPr Me
  loc_D27CF4: MemLdRfVar from_stack_1.global_60
  loc_D27CF7: NewIfNullPr clsctacte
  loc_D27CFA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27CFF: FLdPr var_120
  loc_D27D02:  = Me.EOF
  loc_D27D07: FLdI2 var_14A
  loc_D27D0A: NotI4
  loc_D27D0B: FFree1Ad var_120
  loc_D27D0E: BranchF loc_D28B54
  loc_D27D11: FLdRfVar var_138
  loc_D27D14: FLdRfVar var_158
  loc_D27D17: LitVarStr var_10C, "DebeCtct"
  loc_D27D1C: PopAdLdVar
  loc_D27D1D: FLdRfVar var_150
  loc_D27D20: FLdRfVar var_120
  loc_D27D23: FLdPr Me
  loc_D27D26: MemLdRfVar from_stack_1.global_60
  loc_D27D29: NewIfNullPr clsctacte
  loc_D27D2C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27D31: FLdPr var_120
  loc_D27D34:  = Me.Fields
  loc_D27D39: FLdPr var_150
  loc_D27D3C: from_stack_2 = Me.Item(from_stack_1)
  loc_D27D41: FLdPr var_158
  loc_D27D44:  = Me.Value
  loc_D27D49: LitI4 2
  loc_D27D4E: FLdPr Me
  loc_D27D51: MemLdFPR8 global_144
  loc_D27D54: FnCDblR8
  loc_D27D56: FLdRfVar var_138
  loc_D27D59: FnCDblVar
  loc_D27D5B: AddR8
  loc_D27D5C: CVarR8
  loc_D27D60: FLdRfVar var_190
  loc_D27D63: ImpAdCallFPR4  = Round(, )
  loc_D27D68: FLdRfVar var_190
  loc_D27D6B: CR4Var
  loc_D27D6C: FLdPr Me
  loc_D27D6F: MemStFPR8 global_144
  loc_D27D72: FFreeAd var_120 = "": var_150 = ""
  loc_D27D7B: FFreeVar var_138 = "": var_148 = ""
  loc_D27D84: FLdRfVar var_138
  loc_D27D87: FLdRfVar var_158
  loc_D27D8A: LitVarStr var_10C, "CredCtct"
  loc_D27D8F: PopAdLdVar
  loc_D27D90: FLdRfVar var_150
  loc_D27D93: FLdRfVar var_120
  loc_D27D96: FLdPr Me
  loc_D27D99: MemLdRfVar from_stack_1.global_60
  loc_D27D9C: NewIfNullPr clsctacte
  loc_D27D9F: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27DA4: FLdPr var_120
  loc_D27DA7:  = Me.Fields
  loc_D27DAC: FLdPr var_150
  loc_D27DAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D27DB4: FLdPr var_158
  loc_D27DB7:  = Me.Value
  loc_D27DBC: LitI4 2
  loc_D27DC1: FLdPr Me
  loc_D27DC4: MemLdFPR8 global_152
  loc_D27DC7: FnCDblR8
  loc_D27DC9: FLdRfVar var_138
  loc_D27DCC: FnCDblVar
  loc_D27DCE: AddR8
  loc_D27DCF: CVarR8
  loc_D27DD3: FLdRfVar var_190
  loc_D27DD6: ImpAdCallFPR4  = Round(, )
  loc_D27DDB: FLdRfVar var_190
  loc_D27DDE: CR4Var
  loc_D27DDF: FLdPr Me
  loc_D27DE2: MemStFPR8 global_152
  loc_D27DE5: FFreeAd var_120 = "": var_150 = ""
  loc_D27DEE: FFreeVar var_138 = "": var_148 = ""
  loc_D27DF7: FLdRfVar var_138
  loc_D27DFA: FLdRfVar var_158
  loc_D27DFD: LitVarStr var_10C, "RecaCtct"
  loc_D27E02: PopAdLdVar
  loc_D27E03: FLdRfVar var_150
  loc_D27E06: FLdRfVar var_120
  loc_D27E09: FLdPr Me
  loc_D27E0C: MemLdRfVar from_stack_1.global_60
  loc_D27E0F: NewIfNullPr clsctacte
  loc_D27E12: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27E17: FLdPr var_120
  loc_D27E1A:  = Me.Fields
  loc_D27E1F: FLdPr var_150
  loc_D27E22: from_stack_2 = Me.Item(from_stack_1)
  loc_D27E27: FLdPr var_158
  loc_D27E2A:  = Me.Value
  loc_D27E2F: LitI4 2
  loc_D27E34: FLdPr Me
  loc_D27E37: MemLdFPR8 global_168
  loc_D27E3A: FnCDblR8
  loc_D27E3C: FLdRfVar var_138
  loc_D27E3F: FnCDblVar
  loc_D27E41: AddR8
  loc_D27E42: CVarR8
  loc_D27E46: FLdRfVar var_190
  loc_D27E49: ImpAdCallFPR4  = Round(, )
  loc_D27E4E: FLdRfVar var_190
  loc_D27E51: CR4Var
  loc_D27E52: FLdPr Me
  loc_D27E55: MemStFPR8 global_168
  loc_D27E58: FFreeAd var_120 = "": var_150 = ""
  loc_D27E61: FFreeVar var_138 = "": var_148 = ""
  loc_D27E6A: FLdRfVar var_138
  loc_D27E6D: FLdRfVar var_158
  loc_D27E70: LitVarStr var_10C, "DebeCtct"
  loc_D27E75: PopAdLdVar
  loc_D27E76: FLdRfVar var_150
  loc_D27E79: FLdRfVar var_120
  loc_D27E7C: FLdPr Me
  loc_D27E7F: MemLdRfVar from_stack_1.global_60
  loc_D27E82: NewIfNullPr clsctacte
  loc_D27E85: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27E8A: FLdPr var_120
  loc_D27E8D:  = Me.Fields
  loc_D27E92: FLdPr var_150
  loc_D27E95: from_stack_2 = Me.Item(from_stack_1)
  loc_D27E9A: FLdPr var_158
  loc_D27E9D:  = Me.Value
  loc_D27EA2: LitI4 2
  loc_D27EA7: FLdPr Me
  loc_D27EAA: MemLdFPR8 global_192
  loc_D27EAD: FnCDblR8
  loc_D27EAF: FLdRfVar var_138
  loc_D27EB2: FnCDblVar
  loc_D27EB4: AddR8
  loc_D27EB5: CVarR8
  loc_D27EB9: FLdRfVar var_190
  loc_D27EBC: ImpAdCallFPR4  = Round(, )
  loc_D27EC1: FLdRfVar var_190
  loc_D27EC4: CR4Var
  loc_D27EC5: FLdPr Me
  loc_D27EC8: MemStFPR8 global_192
  loc_D27ECB: FFreeAd var_120 = "": var_150 = ""
  loc_D27ED4: FFreeVar var_138 = "": var_148 = ""
  loc_D27EDD: FLdRfVar var_138
  loc_D27EE0: FLdRfVar var_158
  loc_D27EE3: LitVarStr var_10C, "CredCtct"
  loc_D27EE8: PopAdLdVar
  loc_D27EE9: FLdRfVar var_150
  loc_D27EEC: FLdRfVar var_120
  loc_D27EEF: FLdPr Me
  loc_D27EF2: MemLdRfVar from_stack_1.global_60
  loc_D27EF5: NewIfNullPr clsctacte
  loc_D27EF8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27EFD: FLdPr var_120
  loc_D27F00:  = Me.Fields
  loc_D27F05: FLdPr var_150
  loc_D27F08: from_stack_2 = Me.Item(from_stack_1)
  loc_D27F0D: FLdPr var_158
  loc_D27F10:  = Me.Value
  loc_D27F15: LitI4 2
  loc_D27F1A: FLdPr Me
  loc_D27F1D: MemLdFPR8 global_200
  loc_D27F20: FnCDblR8
  loc_D27F22: FLdRfVar var_138
  loc_D27F25: FnCDblVar
  loc_D27F27: AddR8
  loc_D27F28: CVarR8
  loc_D27F2C: FLdRfVar var_190
  loc_D27F2F: ImpAdCallFPR4  = Round(, )
  loc_D27F34: FLdRfVar var_190
  loc_D27F37: CR4Var
  loc_D27F38: FLdPr Me
  loc_D27F3B: MemStFPR8 global_200
  loc_D27F3E: FFreeAd var_120 = "": var_150 = ""
  loc_D27F47: FFreeVar var_138 = "": var_148 = ""
  loc_D27F50: FLdRfVar var_138
  loc_D27F53: FLdRfVar var_158
  loc_D27F56: LitVarStr var_10C, "RecaCtct"
  loc_D27F5B: PopAdLdVar
  loc_D27F5C: FLdRfVar var_150
  loc_D27F5F: FLdRfVar var_120
  loc_D27F62: FLdPr Me
  loc_D27F65: MemLdRfVar from_stack_1.global_60
  loc_D27F68: NewIfNullPr clsctacte
  loc_D27F6B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27F70: FLdPr var_120
  loc_D27F73:  = Me.Fields
  loc_D27F78: FLdPr var_150
  loc_D27F7B: from_stack_2 = Me.Item(from_stack_1)
  loc_D27F80: FLdPr var_158
  loc_D27F83:  = Me.Value
  loc_D27F88: LitI4 2
  loc_D27F8D: FLdPr Me
  loc_D27F90: MemLdFPR8 global_208
  loc_D27F93: FnCDblR8
  loc_D27F95: FLdRfVar var_138
  loc_D27F98: FnCDblVar
  loc_D27F9A: AddR8
  loc_D27F9B: CVarR8
  loc_D27F9F: FLdRfVar var_190
  loc_D27FA2: ImpAdCallFPR4  = Round(, )
  loc_D27FA7: FLdRfVar var_190
  loc_D27FAA: CR4Var
  loc_D27FAB: FLdPr Me
  loc_D27FAE: MemStFPR8 global_208
  loc_D27FB1: FFreeAd var_120 = "": var_150 = ""
  loc_D27FBA: FFreeVar var_138 = "": var_148 = ""
  loc_D27FC3: FLdRfVar var_158
  loc_D27FC6: LitVarStr var_10C, "BimeCtct"
  loc_D27FCB: PopAdLdVar
  loc_D27FCC: FLdRfVar var_150
  loc_D27FCF: FLdRfVar var_120
  loc_D27FD2: FLdPr Me
  loc_D27FD5: MemLdRfVar from_stack_1.global_60
  loc_D27FD8: NewIfNullPr clsctacte
  loc_D27FDB: from_stack_1v = clsctacte.RsFrmGet()
  loc_D27FE0: FLdPr var_120
  loc_D27FE3:  = Me.Fields
  loc_D27FE8: FLdPr var_150
  loc_D27FEB: from_stack_2 = Me.Item(from_stack_1)
  loc_D27FF0: LitI4 1
  loc_D27FF5: LitI4 1
  loc_D27FFA: LitVarStr var_11C, "00"
  loc_D27FFF: FStVarCopyObj var_148
  loc_D28002: FLdRfVar var_148
  loc_D28005: FLdZeroAd var_158
  loc_D28008: CVarAd
  loc_D2800C: FLdRfVar var_190
  loc_D2800F: ImpAdCallFPR4  = Format(, )
  loc_D28014: FLdRfVar var_190
  loc_D28017: LitVarStr var_17C, "/"
  loc_D2801C: ConcatVar var_1AC
  loc_D28020: FLdRfVar var_1BC
  loc_D28023: FLdRfVar var_164
  loc_D28026: LitVarStr var_1DC, "PeriCtct"
  loc_D2802B: PopAdLdVar
  loc_D2802C: FLdRfVar var_160
  loc_D2802F: FLdRfVar var_15C
  loc_D28032: FLdPr Me
  loc_D28035: MemLdRfVar from_stack_1.global_60
  loc_D28038: NewIfNullPr clsctacte
  loc_D2803B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28040: FLdPr var_15C
  loc_D28043:  = Me.Fields
  loc_D28048: FLdPr var_160
  loc_D2804B: from_stack_2 = Me.Item(from_stack_1)
  loc_D28050: FLdPr var_164
  loc_D28053:  = Me.Value
  loc_D28058: FLdRfVar var_1BC
  loc_D2805B: ConcatVar var_1CC
  loc_D2805F: CStrVarTmp
  loc_D28060: FLdRfVar var_AA
  loc_D28063: StFixedStrFree
  loc_D28067: FFreeAd var_120 = "": var_150 = "": var_15C = "": var_160 = ""
  loc_D28074: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = ""
  loc_D28083: FLdRfVar var_158
  loc_D28086: LitVarStr var_10C, "NumeBole"
  loc_D2808B: PopAdLdVar
  loc_D2808C: FLdRfVar var_150
  loc_D2808F: FLdRfVar var_120
  loc_D28092: FLdPr Me
  loc_D28095: MemLdRfVar from_stack_1.global_60
  loc_D28098: NewIfNullPr clsctacte
  loc_D2809B: from_stack_1v = clsctacte.RsFrmGet()
  loc_D280A0: FLdPr var_120
  loc_D280A3:  = Me.Fields
  loc_D280A8: FLdPr var_150
  loc_D280AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D280B0: FLdRfVar var_164
  loc_D280B3: LitVarStr var_1DC, "PeriBole"
  loc_D280B8: PopAdLdVar
  loc_D280B9: FLdRfVar var_160
  loc_D280BC: FLdRfVar var_15C
  loc_D280BF: FLdPr Me
  loc_D280C2: MemLdRfVar from_stack_1.global_60
  loc_D280C5: NewIfNullPr clsctacte
  loc_D280C8: from_stack_1v = clsctacte.RsFrmGet()
  loc_D280CD: FLdPr var_15C
  loc_D280D0:  = Me.Fields
  loc_D280D5: FLdPr var_160
  loc_D280D8: from_stack_2 = Me.Item(from_stack_1)
  loc_D280DD: LitI4 1
  loc_D280E2: LitI4 1
  loc_D280E7: LitVarStr var_11C, "#######0"
  loc_D280EC: FStVarCopyObj var_148
  loc_D280EF: FLdRfVar var_148
  loc_D280F2: FLdZeroAd var_158
  loc_D280F5: CVarAd
  loc_D280F9: FLdRfVar var_190
  loc_D280FC: ImpAdCallFPR4  = Format(, )
  loc_D28101: FLdRfVar var_190
  loc_D28104: LitVarStr var_17C, "-"
  loc_D28109: ConcatVar var_1AC
  loc_D2810D: LitI4 1
  loc_D28112: LitI4 1
  loc_D28117: LitVarStr var_1FC, "0000"
  loc_D2811C: FStVarCopyObj var_1CC
  loc_D2811F: FLdRfVar var_1CC
  loc_D28122: FLdZeroAd var_164
  loc_D28125: CVarAd
  loc_D28129: FLdRfVar var_1EC
  loc_D2812C: ImpAdCallFPR4  = Format(, )
  loc_D28131: FLdRfVar var_1EC
  loc_D28134: ConcatVar var_20C
  loc_D28138: CStrVarTmp
  loc_D28139: FLdRfVar var_C4
  loc_D2813C: StFixedStrRFree
  loc_D28140: FFreeAd var_120 = "": var_150 = "": var_15C = ""
  loc_D2814B: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1BC = "": var_1CC = "": var_1AC = "": var_1EC = ""
  loc_D2815E: FLdRfVar var_138
  loc_D28161: FLdRfVar var_158
  loc_D28164: LitVarStr var_10C, "DebeCtct"
  loc_D28169: PopAdLdVar
  loc_D2816A: FLdRfVar var_150
  loc_D2816D: FLdRfVar var_120
  loc_D28170: FLdPr Me
  loc_D28173: MemLdRfVar from_stack_1.global_60
  loc_D28176: NewIfNullPr clsctacte
  loc_D28179: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2817E: FLdPr var_120
  loc_D28181:  = Me.Fields
  loc_D28186: FLdPr var_150
  loc_D28189: from_stack_2 = Me.Item(from_stack_1)
  loc_D2818E: FLdPr var_158
  loc_D28191:  = Me.Value
  loc_D28196: FLdRfVar var_138
  loc_D28199: FnCDblVar
  loc_D2819B: LitI2_Byte 0
  loc_D2819D: CR8I2
  loc_D2819E: NeR8
  loc_D2819F: FFreeAd var_120 = "": var_150 = ""
  loc_D281A8: FFree1Var var_138 = ""
  loc_D281AB: BranchF loc_D28219
  loc_D281AE: FLdRfVar var_158
  loc_D281B1: LitVarStr var_10C, "DebeCtct"
  loc_D281B6: PopAdLdVar
  loc_D281B7: FLdRfVar var_150
  loc_D281BA: FLdRfVar var_120
  loc_D281BD: FLdPr Me
  loc_D281C0: MemLdRfVar from_stack_1.global_60
  loc_D281C3: NewIfNullPr clsctacte
  loc_D281C6: from_stack_1v = clsctacte.RsFrmGet()
  loc_D281CB: FLdPr var_120
  loc_D281CE:  = Me.Fields
  loc_D281D3: FLdPr var_150
  loc_D281D6: from_stack_2 = Me.Item(from_stack_1)
  loc_D281DB: LitI4 1
  loc_D281E0: LitI4 1
  loc_D281E5: LitVarStr var_11C, "###,###,##0.00"
  loc_D281EA: FStVarCopyObj var_148
  loc_D281ED: FLdRfVar var_148
  loc_D281F0: FLdZeroAd var_158
  loc_D281F3: CVarAd
  loc_D281F7: FLdRfVar var_190
  loc_D281FA: ImpAdCallFPR4  = Format(, )
  loc_D281FF: FLdRfVar var_190
  loc_D28202: CStrVarTmp
  loc_D28203: FStStr var_D0
  loc_D28206: FFreeAd var_120 = ""
  loc_D2820D: FFreeVar var_138 = "": var_148 = ""
  loc_D28216: Branch loc_D2821F
  loc_D28219: LitStr vbNullString
  loc_D2821C: FStStrCopy var_D0
  loc_D2821F: LitStr vbNullString
  loc_D28222: FStStrCopy var_D4
  loc_D28225: FLdRfVar var_138
  loc_D28228: FLdRfVar var_158
  loc_D2822B: LitVarStr var_10C, "CredCtct"
  loc_D28230: PopAdLdVar
  loc_D28231: FLdRfVar var_150
  loc_D28234: FLdRfVar var_120
  loc_D28237: FLdPr Me
  loc_D2823A: MemLdRfVar from_stack_1.global_60
  loc_D2823D: NewIfNullPr clsctacte
  loc_D28240: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28245: FLdPr var_120
  loc_D28248:  = Me.Fields
  loc_D2824D: FLdPr var_150
  loc_D28250: from_stack_2 = Me.Item(from_stack_1)
  loc_D28255: FLdPr var_158
  loc_D28258:  = Me.Value
  loc_D2825D: FLdRfVar var_138
  loc_D28260: FnCDblVar
  loc_D28262: LitI2_Byte 0
  loc_D28264: CR8I2
  loc_D28265: NeR8
  loc_D28266: FFreeAd var_120 = "": var_150 = ""
  loc_D2826F: FFree1Var var_138 = ""
  loc_D28272: BranchF loc_D282E0
  loc_D28275: FLdRfVar var_158
  loc_D28278: LitVarStr var_10C, "CredCtct"
  loc_D2827D: PopAdLdVar
  loc_D2827E: FLdRfVar var_150
  loc_D28281: FLdRfVar var_120
  loc_D28284: FLdPr Me
  loc_D28287: MemLdRfVar from_stack_1.global_60
  loc_D2828A: NewIfNullPr clsctacte
  loc_D2828D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28292: FLdPr var_120
  loc_D28295:  = Me.Fields
  loc_D2829A: FLdPr var_150
  loc_D2829D: from_stack_2 = Me.Item(from_stack_1)
  loc_D282A2: LitI4 1
  loc_D282A7: LitI4 1
  loc_D282AC: LitVarStr var_11C, "###,###,##0.00"
  loc_D282B1: FStVarCopyObj var_148
  loc_D282B4: FLdRfVar var_148
  loc_D282B7: FLdZeroAd var_158
  loc_D282BA: CVarAd
  loc_D282BE: FLdRfVar var_190
  loc_D282C1: ImpAdCallFPR4  = Format(, )
  loc_D282C6: FLdRfVar var_190
  loc_D282C9: CStrVarTmp
  loc_D282CA: FStStr var_D4
  loc_D282CD: FFreeAd var_120 = ""
  loc_D282D4: FFreeVar var_138 = "": var_148 = ""
  loc_D282DD: Branch loc_D282E6
  loc_D282E0: LitStr vbNullString
  loc_D282E3: FStStrCopy var_D4
  loc_D282E6: FLdRfVar var_138
  loc_D282E9: FLdRfVar var_158
  loc_D282EC: LitVarStr var_10C, "RecaCtct"
  loc_D282F1: PopAdLdVar
  loc_D282F2: FLdRfVar var_150
  loc_D282F5: FLdRfVar var_120
  loc_D282F8: FLdPr Me
  loc_D282FB: MemLdRfVar from_stack_1.global_60
  loc_D282FE: NewIfNullPr clsctacte
  loc_D28301: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28306: FLdPr var_120
  loc_D28309:  = Me.Fields
  loc_D2830E: FLdPr var_150
  loc_D28311: from_stack_2 = Me.Item(from_stack_1)
  loc_D28316: FLdPr var_158
  loc_D28319:  = Me.Value
  loc_D2831E: FLdRfVar var_138
  loc_D28321: FnCDblVar
  loc_D28323: LitI2_Byte 0
  loc_D28325: CR8I2
  loc_D28326: NeR8
  loc_D28327: FFreeAd var_120 = "": var_150 = ""
  loc_D28330: FFree1Var var_138 = ""
  loc_D28333: BranchF loc_D283A1
  loc_D28336: FLdRfVar var_158
  loc_D28339: LitVarStr var_10C, "RecaCtct"
  loc_D2833E: PopAdLdVar
  loc_D2833F: FLdRfVar var_150
  loc_D28342: FLdRfVar var_120
  loc_D28345: FLdPr Me
  loc_D28348: MemLdRfVar from_stack_1.global_60
  loc_D2834B: NewIfNullPr clsctacte
  loc_D2834E: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28353: FLdPr var_120
  loc_D28356:  = Me.Fields
  loc_D2835B: FLdPr var_150
  loc_D2835E: from_stack_2 = Me.Item(from_stack_1)
  loc_D28363: LitI4 1
  loc_D28368: LitI4 1
  loc_D2836D: LitVarStr var_11C, "###,###,##0.00"
  loc_D28372: FStVarCopyObj var_148
  loc_D28375: FLdRfVar var_148
  loc_D28378: FLdZeroAd var_158
  loc_D2837B: CVarAd
  loc_D2837F: FLdRfVar var_190
  loc_D28382: ImpAdCallFPR4  = Format(, )
  loc_D28387: FLdRfVar var_190
  loc_D2838A: CStrVarTmp
  loc_D2838B: FStStr var_D8
  loc_D2838E: FFreeAd var_120 = ""
  loc_D28395: FFreeVar var_138 = "": var_148 = ""
  loc_D2839E: Branch loc_D283A7
  loc_D283A1: LitStr vbNullString
  loc_D283A4: FStStrCopy var_D8
  loc_D283A7: FLdRfVar var_138
  loc_D283AA: FLdRfVar var_158
  loc_D283AD: LitVarStr var_10C, "SaldCtct"
  loc_D283B2: PopAdLdVar
  loc_D283B3: FLdRfVar var_150
  loc_D283B6: FLdRfVar var_120
  loc_D283B9: FLdPr Me
  loc_D283BC: MemLdRfVar from_stack_1.global_60
  loc_D283BF: NewIfNullPr clsctacte
  loc_D283C2: from_stack_1v = clsctacte.RsFrmGet()
  loc_D283C7: FLdPr var_120
  loc_D283CA:  = Me.Fields
  loc_D283CF: FLdPr var_150
  loc_D283D2: from_stack_2 = Me.Item(from_stack_1)
  loc_D283D7: FLdPr var_158
  loc_D283DA:  = Me.Value
  loc_D283DF: FLdRfVar var_148
  loc_D283E2: FLdRfVar var_164
  loc_D283E5: LitVarStr var_11C, "RecaCtct"
  loc_D283EA: PopAdLdVar
  loc_D283EB: FLdRfVar var_160
  loc_D283EE: FLdRfVar var_15C
  loc_D283F1: FLdPr Me
  loc_D283F4: MemLdRfVar from_stack_1.global_60
  loc_D283F7: NewIfNullPr clsctacte
  loc_D283FA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D283FF: FLdPr var_15C
  loc_D28402:  = Me.Fields
  loc_D28407: FLdPr var_160
  loc_D2840A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2840F: FLdPr var_164
  loc_D28412:  = Me.Value
  loc_D28417: LitI4 2
  loc_D2841C: FLdRfVar var_138
  loc_D2841F: FnCDblVar
  loc_D28421: FLdRfVar var_148
  loc_D28424: FnCDblVar
  loc_D28426: AddR8
  loc_D28427: CVarR8
  loc_D2842B: FLdRfVar var_1AC
  loc_D2842E: ImpAdCallFPR4  = Round(, )
  loc_D28433: LitI4 1
  loc_D28438: LitI4 1
  loc_D2843D: LitVarStr var_1DC, "###,###,##0.00"
  loc_D28442: FStVarCopyObj var_1BC
  loc_D28445: FLdRfVar var_1BC
  loc_D28448: FLdRfVar var_1AC
  loc_D2844B: FLdRfVar var_1CC
  loc_D2844E: ImpAdCallFPR4  = Format(, )
  loc_D28453: FLdRfVar var_1CC
  loc_D28456: CStrVarTmp
  loc_D28457: FStStr var_F4
  loc_D2845A: FFreeAd var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_D28469: FFreeVar var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = ""
  loc_D28478: FLdRfVar var_AA
  loc_D2847B: LdFixedStr
  loc_D2847E: CVarStr var_148
  loc_D28481: LitI4 9
  loc_D28486: FLdRfVar var_138
  loc_D28489: ImpAdCallFPR4  = Chr()
  loc_D2848E: FLdRfVar var_138
  loc_D28491: ConcatVar var_190
  loc_D28495: FLdRfVar var_C4
  loc_D28498: LdFixedStr
  loc_D2849B: CVarStr var_1AC
  loc_D2849E: ConcatVar var_1BC
  loc_D284A2: LitI4 9
  loc_D284A7: FLdRfVar var_1CC
  loc_D284AA: ImpAdCallFPR4  = Chr()
  loc_D284AF: FLdRfVar var_1CC
  loc_D284B2: ConcatVar var_1EC
  loc_D284B6: FLdRfVar var_20C
  loc_D284B9: FLdRfVar var_158
  loc_D284BC: LitVarStr var_10C, "FealCtct"
  loc_D284C1: PopAdLdVar
  loc_D284C2: FLdRfVar var_150
  loc_D284C5: FLdRfVar var_120
  loc_D284C8: FLdPr Me
  loc_D284CB: MemLdRfVar from_stack_1.global_60
  loc_D284CE: NewIfNullPr clsctacte
  loc_D284D1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D284D6: FLdPr var_120
  loc_D284D9:  = Me.Fields
  loc_D284DE: FLdPr var_150
  loc_D284E1: from_stack_2 = Me.Item(from_stack_1)
  loc_D284E6: FLdPr var_158
  loc_D284E9:  = Me.Value
  loc_D284EE: FLdRfVar var_20C
  loc_D284F1: ConcatVar var_22C
  loc_D284F5: LitI4 9
  loc_D284FA: FLdRfVar var_23C
  loc_D284FD: ImpAdCallFPR4  = Chr()
  loc_D28502: FLdRfVar var_23C
  loc_D28505: ConcatVar var_25C
  loc_D28509: FLdRfVar var_27C
  loc_D2850C: FLdRfVar var_164
  loc_D2850F: LitVarStr var_11C, "FeveCtct"
  loc_D28514: PopAdLdVar
  loc_D28515: FLdRfVar var_160
  loc_D28518: FLdRfVar var_15C
  loc_D2851B: FLdPr Me
  loc_D2851E: MemLdRfVar from_stack_1.global_60
  loc_D28521: NewIfNullPr clsctacte
  loc_D28524: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28529: FLdPr var_15C
  loc_D2852C:  = Me.Fields
  loc_D28531: FLdPr var_160
  loc_D28534: from_stack_2 = Me.Item(from_stack_1)
  loc_D28539: FLdPr var_164
  loc_D2853C:  = Me.Value
  loc_D28541: FLdRfVar var_27C
  loc_D28544: ConcatVar var_290
  loc_D28548: LitI4 9
  loc_D2854D: FLdRfVar var_2A0
  loc_D28550: ImpAdCallFPR4  = Chr()
  loc_D28555: FLdRfVar var_2A0
  loc_D28558: ConcatVar var_2B0
  loc_D2855C: FLdRfVar var_2C0
  loc_D2855F: FLdRfVar var_180
  loc_D28562: LitVarStr var_17C, "CodiConc"
  loc_D28567: PopAdLdVar
  loc_D28568: FLdRfVar var_16C
  loc_D2856B: FLdRfVar var_168
  loc_D2856E: FLdPr Me
  loc_D28571: MemLdRfVar from_stack_1.global_60
  loc_D28574: NewIfNullPr clsctacte
  loc_D28577: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2857C: FLdPr var_168
  loc_D2857F:  = Me.Fields
  loc_D28584: FLdPr var_16C
  loc_D28587: from_stack_2 = Me.Item(from_stack_1)
  loc_D2858C: FLdPr var_180
  loc_D2858F:  = Me.Value
  loc_D28594: FLdRfVar var_2C0
  loc_D28597: ConcatVar var_2D0
  loc_D2859B: LitI4 9
  loc_D285A0: FLdRfVar var_2E0
  loc_D285A3: ImpAdCallFPR4  = Chr()
  loc_D285A8: FLdRfVar var_2E0
  loc_D285AB: ConcatVar var_2F0
  loc_D285AF: FLdRfVar var_30C
  loc_D285B2: FLdRfVar var_2FC
  loc_D285B5: LitVarStr var_1DC, "ConcViej"
  loc_D285BA: PopAdLdVar
  loc_D285BB: FLdRfVar var_2F8
  loc_D285BE: FLdRfVar var_2F4
  loc_D285C1: FLdPr Me
  loc_D285C4: MemLdRfVar from_stack_1.global_60
  loc_D285C7: NewIfNullPr clsctacte
  loc_D285CA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D285CF: FLdPr var_2F4
  loc_D285D2:  = Me.Fields
  loc_D285D7: FLdPr var_2F8
  loc_D285DA: from_stack_2 = Me.Item(from_stack_1)
  loc_D285DF: FLdPr var_2FC
  loc_D285E2:  = Me.Value
  loc_D285E7: FLdRfVar var_30C
  loc_D285EA: ConcatVar var_31C
  loc_D285EE: LitI4 9
  loc_D285F3: FLdRfVar var_32C
  loc_D285F6: ImpAdCallFPR4  = Chr()
  loc_D285FB: FLdRfVar var_32C
  loc_D285FE: ConcatVar var_33C
  loc_D28602: FLdRfVar var_358
  loc_D28605: FLdRfVar var_348
  loc_D28608: LitVarStr var_1FC, "CodiFapa"
  loc_D2860D: PopAdLdVar
  loc_D2860E: FLdRfVar var_344
  loc_D28611: FLdRfVar var_340
  loc_D28614: FLdPr Me
  loc_D28617: MemLdRfVar from_stack_1.global_60
  loc_D2861A: NewIfNullPr clsctacte
  loc_D2861D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28622: FLdPr var_340
  loc_D28625:  = Me.Fields
  loc_D2862A: FLdPr var_344
  loc_D2862D: from_stack_2 = Me.Item(from_stack_1)
  loc_D28632: FLdPr var_348
  loc_D28635:  = Me.Value
  loc_D2863A: FLdRfVar var_358
  loc_D2863D: ConcatVar var_368
  loc_D28641: LitI4 9
  loc_D28646: FLdRfVar var_378
  loc_D28649: ImpAdCallFPR4  = Chr()
  loc_D2864E: FLdRfVar var_378
  loc_D28651: ConcatVar var_388
  loc_D28655: FLdRfVar var_3A4
  loc_D28658: FLdRfVar var_394
  loc_D2865B: LitVarStr var_21C, "NumeApre"
  loc_D28660: PopAdLdVar
  loc_D28661: FLdRfVar var_390
  loc_D28664: FLdRfVar var_38C
  loc_D28667: FLdPr Me
  loc_D2866A: MemLdRfVar from_stack_1.global_60
  loc_D2866D: NewIfNullPr clsctacte
  loc_D28670: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28675: FLdPr var_38C
  loc_D28678:  = Me.Fields
  loc_D2867D: FLdPr var_390
  loc_D28680: from_stack_2 = Me.Item(from_stack_1)
  loc_D28685: FLdPr var_394
  loc_D28688:  = Me.Value
  loc_D2868D: FLdRfVar var_3A4
  loc_D28690: ConcatVar var_3B4
  loc_D28694: LitI4 9
  loc_D28699: FLdRfVar var_3C4
  loc_D2869C: ImpAdCallFPR4  = Chr()
  loc_D286A1: FLdRfVar var_3C4
  loc_D286A4: ConcatVar var_3D4
  loc_D286A8: FLdRfVar var_3F0
  loc_D286AB: FLdRfVar var_3E0
  loc_D286AE: LitVarStr var_24C, "ExpeCtct"
  loc_D286B3: PopAdLdVar
  loc_D286B4: FLdRfVar var_3DC
  loc_D286B7: FLdRfVar var_3D8
  loc_D286BA: FLdPr Me
  loc_D286BD: MemLdRfVar from_stack_1.global_60
  loc_D286C0: NewIfNullPr clsctacte
  loc_D286C3: from_stack_1v = clsctacte.RsFrmGet()
  loc_D286C8: FLdPr var_3D8
  loc_D286CB:  = Me.Fields
  loc_D286D0: FLdPr var_3DC
  loc_D286D3: from_stack_2 = Me.Item(from_stack_1)
  loc_D286D8: FLdPr var_3E0
  loc_D286DB:  = Me.Value
  loc_D286E0: FLdRfVar var_3F0
  loc_D286E3: ConcatVar var_400
  loc_D286E7: LitI4 9
  loc_D286EC: FLdRfVar var_410
  loc_D286EF: ImpAdCallFPR4  = Chr()
  loc_D286F4: FLdRfVar var_410
  loc_D286F7: ConcatVar var_420
  loc_D286FB: FLdRfVar var_43C
  loc_D286FE: FLdRfVar var_42C
  loc_D28701: LitVarStr var_26C, "AbreTimo"
  loc_D28706: PopAdLdVar
  loc_D28707: FLdRfVar var_428
  loc_D2870A: FLdRfVar var_424
  loc_D2870D: FLdPr Me
  loc_D28710: MemLdRfVar from_stack_1.global_60
  loc_D28713: NewIfNullPr clsctacte
  loc_D28716: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2871B: FLdPr var_424
  loc_D2871E:  = Me.Fields
  loc_D28723: FLdPr var_428
  loc_D28726: from_stack_2 = Me.Item(from_stack_1)
  loc_D2872B: FLdPr var_42C
  loc_D2872E:  = Me.Value
  loc_D28733: FLdRfVar var_43C
  loc_D28736: ConcatVar var_44C
  loc_D2873A: LitI4 9
  loc_D2873F: FLdRfVar var_45C
  loc_D28742: ImpAdCallFPR4  = Chr()
  loc_D28747: FLdRfVar var_45C
  loc_D2874A: ConcatVar var_46C
  loc_D2874E: ILdRf var_D0
  loc_D28751: CVarStr var_47C
  loc_D28754: ConcatVar var_48C
  loc_D28758: LitI4 9
  loc_D2875D: FLdRfVar var_49C
  loc_D28760: ImpAdCallFPR4  = Chr()
  loc_D28765: FLdRfVar var_49C
  loc_D28768: ConcatVar var_4AC
  loc_D2876C: ILdRf var_D4
  loc_D2876F: CVarStr var_4BC
  loc_D28772: ConcatVar var_4CC
  loc_D28776: LitI4 9
  loc_D2877B: FLdRfVar var_4DC
  loc_D2877E: ImpAdCallFPR4  = Chr()
  loc_D28783: FLdRfVar var_4DC
  loc_D28786: ConcatVar var_4EC
  loc_D2878A: ILdRf var_D8
  loc_D2878D: CVarStr var_4FC
  loc_D28790: ConcatVar var_50C
  loc_D28794: LitI4 9
  loc_D28799: FLdRfVar var_51C
  loc_D2879C: ImpAdCallFPR4  = Chr()
  loc_D287A1: FLdRfVar var_51C
  loc_D287A4: ConcatVar var_52C
  loc_D287A8: ILdRf var_F4
  loc_D287AB: CVarStr var_53C
  loc_D287AE: ConcatVar var_54C
  loc_D287B2: LitI4 9
  loc_D287B7: FLdRfVar var_55C
  loc_D287BA: ImpAdCallFPR4  = Chr()
  loc_D287BF: FLdRfVar var_55C
  loc_D287C2: ConcatVar var_56C
  loc_D287C6: FLdRfVar var_598
  loc_D287C9: FLdRfVar var_588
  loc_D287CC: LitVarStr var_584, "NumeCtct"
  loc_D287D1: PopAdLdVar
  loc_D287D2: FLdRfVar var_574
  loc_D287D5: FLdRfVar var_570
  loc_D287D8: FLdPr Me
  loc_D287DB: MemLdRfVar from_stack_1.global_60
  loc_D287DE: NewIfNullPr clsctacte
  loc_D287E1: from_stack_1v = clsctacte.RsFrmGet()
  loc_D287E6: FLdPr var_570
  loc_D287E9:  = Me.Fields
  loc_D287EE: FLdPr var_574
  loc_D287F1: from_stack_2 = Me.Item(from_stack_1)
  loc_D287F6: FLdPr var_588
  loc_D287F9:  = Me.Value
  loc_D287FE: FLdRfVar var_598
  loc_D28801: ConcatVar var_5A8
  loc_D28805: LitI4 9
  loc_D2880A: FLdRfVar var_5B8
  loc_D2880D: ImpAdCallFPR4  = Chr()
  loc_D28812: FLdRfVar var_5B8
  loc_D28815: ConcatVar var_5C8
  loc_D28819: FLdRfVar var_5F4
  loc_D2881C: FLdRfVar var_5E4
  loc_D2881F: LitVarStr var_5E0, "MoviCtct"
  loc_D28824: PopAdLdVar
  loc_D28825: FLdRfVar var_5D0
  loc_D28828: FLdRfVar var_5CC
  loc_D2882B: FLdPr Me
  loc_D2882E: MemLdRfVar from_stack_1.global_60
  loc_D28831: NewIfNullPr clsctacte
  loc_D28834: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28839: FLdPr var_5CC
  loc_D2883C:  = Me.Fields
  loc_D28841: FLdPr var_5D0
  loc_D28844: from_stack_2 = Me.Item(from_stack_1)
  loc_D28849: FLdPr var_5E4
  loc_D2884C:  = Me.Value
  loc_D28851: FLdRfVar var_5F4
  loc_D28854: ConcatVar var_604
  loc_D28858: LitI4 9
  loc_D2885D: FLdRfVar var_614
  loc_D28860: ImpAdCallFPR4  = Chr()
  loc_D28865: FLdRfVar var_614
  loc_D28868: ConcatVar var_624
  loc_D2886C: FLdRfVar var_650
  loc_D2886F: FLdRfVar var_640
  loc_D28872: LitVarStr var_63C, "PeriInfo"
  loc_D28877: PopAdLdVar
  loc_D28878: FLdRfVar var_62C
  loc_D2887B: FLdRfVar var_628
  loc_D2887E: FLdPr Me
  loc_D28881: MemLdRfVar from_stack_1.global_60
  loc_D28884: NewIfNullPr clsctacte
  loc_D28887: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2888C: FLdPr var_628
  loc_D2888F:  = Me.Fields
  loc_D28894: FLdPr var_62C
  loc_D28897: from_stack_2 = Me.Item(from_stack_1)
  loc_D2889C: FLdPr var_640
  loc_D2889F:  = Me.Value
  loc_D288A4: FLdRfVar var_650
  loc_D288A7: ConcatVar var_660
  loc_D288AB: CStrVarTmp
  loc_D288AC: FStStr var_C8
  loc_D288AF: FFreeAd var_628 = "": var_62C = "": var_640 = "": var_120 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_180 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_340 = "": var_344 = "": var_348 = "": var_38C = "": var_390 = "": var_394 = "": var_3D8 = "": var_3DC = "": var_3E0 = "": var_424 = "": var_428 = "": var_42C = "": var_570 = "": var_574 = "": var_588 = "": var_5CC = "": var_5D0 = ""
  loc_D288F4: FFreeVar var_660 = "": var_3D4 = "": var_3F0 = "": var_400 = "": var_410 = "": var_420 = "": var_43C = "": var_44C = "": var_45C = "": var_46C = "": var_48C = "": var_49C = "": var_4AC = "": var_4CC = "": var_4DC = "": var_4EC = "": var_50C = "": var_51C = "": var_52C = "": var_54C = "": var_55C = "": var_56C = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_604 = "": var_614 = "": var_624 = "": var_650 = "": var_148 = "": var_138 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = "": var_27C = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_3A4 = "": var_3B4 = ""
  loc_D28971: FLdRfVar var_C8
  loc_D28974: CDargRef
  loc_D28978: FLdPr Me
  loc_D2897B: VCallAd Control_ID_ctacteFlex
  loc_D2897E: FStAdFunc var_120
  loc_D28981: FLdPr var_120
  loc_D28984: LateIdCall
  loc_D2898C: FFree1Ad var_120
  loc_D2898F: FLdRfVar var_138
  loc_D28992: FLdRfVar var_158
  loc_D28995: LitVarStr var_10C, "MoviCtct"
  loc_D2899A: PopAdLdVar
  loc_D2899B: FLdRfVar var_150
  loc_D2899E: FLdRfVar var_120
  loc_D289A1: FLdPr Me
  loc_D289A4: MemLdRfVar from_stack_1.global_60
  loc_D289A7: NewIfNullPr clsctacte
  loc_D289AA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D289AF: FLdPr var_120
  loc_D289B2:  = Me.Fields
  loc_D289B7: FLdPr var_150
  loc_D289BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D289BF: FLdPr var_158
  loc_D289C2:  = Me.Value
  loc_D289C7: FLdRfVar var_138
  loc_D289CA: FnCIntVar
  loc_D289CC: LitI2_Byte 1
  loc_D289CE: EqI2
  loc_D289CF: FFreeAd var_120 = "": var_150 = ""
  loc_D289D8: FFree1Var var_138 = ""
  loc_D289DB: BranchF loc_D28A8B
  loc_D289DE: FLdPr Me
  loc_D289E1: VCallAd Control_ID_ctacteFlex
  loc_D289E4: FStAdFunc var_120
  loc_D289E7: FLdPr var_120
  loc_D289EA: LateIdLdVar var_138 DispID_4 0
  loc_D289F1: CI4Var
  loc_D289F3: LitI4 1
  loc_D289F8: SubI4
  loc_D289F9: CVarI4
  loc_D289FD: PopAdLdVar
  loc_D289FE: FLdPr Me
  loc_D28A01: VCallAd Control_ID_ctacteFlex
  loc_D28A04: FStAdFunc var_150
  loc_D28A07: FLdPr var_150
  loc_D28A0A: LateIdSt
  loc_D28A0F: FFreeAd var_120 = ""
  loc_D28A16: FFree1Var var_138 = ""
  loc_D28A19: LitI2_Byte 0
  loc_D28A1B: FLdRfVar var_CC
  loc_D28A1E: FLdPr Me
  loc_D28A21: VCallAd Control_ID_ctacteFlex
  loc_D28A24: FStAdFunc var_120
  loc_D28A27: FLdPr var_120
  loc_D28A2A: LateIdLdVar var_138 DispID_5 0
  loc_D28A31: CI4Var
  loc_D28A33: LitI4 1
  loc_D28A38: SubI4
  loc_D28A39: CI2I4
  loc_D28A3A: FFree1Ad var_120
  loc_D28A3D: FFree1Var var_138 = ""
  loc_D28A40: ForI2 var_798
  loc_D28A46: FLdI2 var_CC
  loc_D28A49: CI4UI1
  loc_D28A4A: CVarI4
  loc_D28A4E: PopAdLdVar
  loc_D28A4F: FLdPr Me
  loc_D28A52: VCallAd Control_ID_ctacteFlex
  loc_D28A55: FStAdFunc var_120
  loc_D28A58: FLdPr var_120
  loc_D28A5B: LateIdSt
  loc_D28A60: FFree1Ad var_120
  loc_D28A63: LitVarI4
  loc_D28A6B: PopAdLdVar
  loc_D28A6C: FLdPr Me
  loc_D28A6F: VCallAd Control_ID_ctacteFlex
  loc_D28A72: FStAdFunc var_120
  loc_D28A75: FLdPr var_120
  loc_D28A78: LateIdSt
  loc_D28A7D: FFree1Ad var_120
  loc_D28A80: FLdRfVar var_CC
  loc_D28A83: NextI2 var_798, loc_D28A46
  loc_D28A88: Branch loc_D28B35
  loc_D28A8B: FLdPr Me
  loc_D28A8E: VCallAd Control_ID_ctacteFlex
  loc_D28A91: FStAdFunc var_120
  loc_D28A94: FLdPr var_120
  loc_D28A97: LateIdLdVar var_138 DispID_4 0
  loc_D28A9E: CI4Var
  loc_D28AA0: LitI4 1
  loc_D28AA5: SubI4
  loc_D28AA6: CVarI4
  loc_D28AAA: PopAdLdVar
  loc_D28AAB: FLdPr Me
  loc_D28AAE: VCallAd Control_ID_ctacteFlex
  loc_D28AB1: FStAdFunc var_150
  loc_D28AB4: FLdPr var_150
  loc_D28AB7: LateIdSt
  loc_D28ABC: FFreeAd var_120 = ""
  loc_D28AC3: FFree1Var var_138 = ""
  loc_D28AC6: LitI2_Byte 0
  loc_D28AC8: FLdRfVar var_CC
  loc_D28ACB: FLdPr Me
  loc_D28ACE: VCallAd Control_ID_ctacteFlex
  loc_D28AD1: FStAdFunc var_120
  loc_D28AD4: FLdPr var_120
  loc_D28AD7: LateIdLdVar var_138 DispID_5 0
  loc_D28ADE: CI4Var
  loc_D28AE0: LitI4 1
  loc_D28AE5: SubI4
  loc_D28AE6: CI2I4
  loc_D28AE7: FFree1Ad var_120
  loc_D28AEA: FFree1Var var_138 = ""
  loc_D28AED: ForI2 var_79C
  loc_D28AF3: FLdI2 var_CC
  loc_D28AF6: CI4UI1
  loc_D28AF7: CVarI4
  loc_D28AFB: PopAdLdVar
  loc_D28AFC: FLdPr Me
  loc_D28AFF: VCallAd Control_ID_ctacteFlex
  loc_D28B02: FStAdFunc var_120
  loc_D28B05: FLdPr var_120
  loc_D28B08: LateIdSt
  loc_D28B0D: FFree1Ad var_120
  loc_D28B10: LitVarI4
  loc_D28B18: PopAdLdVar
  loc_D28B19: FLdPr Me
  loc_D28B1C: VCallAd Control_ID_ctacteFlex
  loc_D28B1F: FStAdFunc var_120
  loc_D28B22: FLdPr var_120
  loc_D28B25: LateIdSt
  loc_D28B2A: FFree1Ad var_120
  loc_D28B2D: FLdRfVar var_CC
  loc_D28B30: NextI2 var_79C, loc_D28AF3
  loc_D28B35: FLdRfVar var_120
  loc_D28B38: FLdPr Me
  loc_D28B3B: MemLdRfVar from_stack_1.global_60
  loc_D28B3E: NewIfNullPr clsctacte
  loc_D28B41: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28B46: FLdPr var_120
  loc_D28B49: Me.MoveNext
  loc_D28B4E: FFree1Ad var_120
  loc_D28B51: Branch loc_D27CEB
  loc_D28B54: FLdPr Me
  loc_D28B57: MemLdFPR8 global_216
  loc_D28B5A: FLdPr Me
  loc_D28B5D: MemLdFPR8 global_192
  loc_D28B60: AddR8
  loc_D28B61: FLdPr Me
  loc_D28B64: MemLdFPR8 global_200
  loc_D28B67: SubR4
  loc_D28B68: FLdPr Me
  loc_D28B6B: MemLdFPR8 global_208
  loc_D28B6E: AddR8
  loc_D28B6F: FLdPr Me
  loc_D28B72: MemStFPR8 global_216
  loc_D28B75: LitVarStr var_10C, vbNullString
  loc_D28B7A: LitI4 9
  loc_D28B7F: FLdRfVar var_138
  loc_D28B82: ImpAdCallFPR4  = Chr()
  loc_D28B87: FLdRfVar var_138
  loc_D28B8A: ConcatVar var_148
  loc_D28B8E: LitVarStr var_11C, vbNullString
  loc_D28B93: ConcatVar var_190
  loc_D28B97: LitI4 9
  loc_D28B9C: FLdRfVar var_1AC
  loc_D28B9F: ImpAdCallFPR4  = Chr()
  loc_D28BA4: FLdRfVar var_1AC
  loc_D28BA7: ConcatVar var_1BC
  loc_D28BAB: LitVarStr var_17C, vbNullString
  loc_D28BB0: ConcatVar var_1CC
  loc_D28BB4: LitI4 9
  loc_D28BB9: FLdRfVar var_1EC
  loc_D28BBC: ImpAdCallFPR4  = Chr()
  loc_D28BC1: FLdRfVar var_1EC
  loc_D28BC4: ConcatVar var_20C
  loc_D28BC8: LitVarStr var_1DC, vbNullString
  loc_D28BCD: ConcatVar var_22C
  loc_D28BD1: LitI4 9
  loc_D28BD6: FLdRfVar var_23C
  loc_D28BD9: ImpAdCallFPR4  = Chr()
  loc_D28BDE: FLdRfVar var_23C
  loc_D28BE1: ConcatVar var_25C
  loc_D28BE5: LitVarStr var_1FC, vbNullString
  loc_D28BEA: ConcatVar var_27C
  loc_D28BEE: LitI4 9
  loc_D28BF3: FLdRfVar var_290
  loc_D28BF6: ImpAdCallFPR4  = Chr()
  loc_D28BFB: FLdRfVar var_290
  loc_D28BFE: ConcatVar var_2A0
  loc_D28C02: LitVarStr var_21C, vbNullString
  loc_D28C07: ConcatVar var_2B0
  loc_D28C0B: LitI4 9
  loc_D28C10: FLdRfVar var_2C0
  loc_D28C13: ImpAdCallFPR4  = Chr()
  loc_D28C18: FLdRfVar var_2C0
  loc_D28C1B: ConcatVar var_2D0
  loc_D28C1F: LitVarStr var_24C, vbNullString
  loc_D28C24: ConcatVar var_2E0
  loc_D28C28: LitI4 9
  loc_D28C2D: FLdRfVar var_2F0
  loc_D28C30: ImpAdCallFPR4  = Chr()
  loc_D28C35: FLdRfVar var_2F0
  loc_D28C38: ConcatVar var_30C
  loc_D28C3C: LitVarStr var_26C, vbNullString
  loc_D28C41: ConcatVar var_31C
  loc_D28C45: LitI4 9
  loc_D28C4A: FLdRfVar var_32C
  loc_D28C4D: ImpAdCallFPR4  = Chr()
  loc_D28C52: FLdRfVar var_32C
  loc_D28C55: ConcatVar var_33C
  loc_D28C59: LitVarStr var_47C, vbNullString
  loc_D28C5E: ConcatVar var_358
  loc_D28C62: LitI4 9
  loc_D28C67: FLdRfVar var_368
  loc_D28C6A: ImpAdCallFPR4  = Chr()
  loc_D28C6F: FLdRfVar var_368
  loc_D28C72: ConcatVar var_378
  loc_D28C76: LitVarStr var_4BC, "Sub Total:"
  loc_D28C7B: ConcatVar var_388
  loc_D28C7F: LitI4 9
  loc_D28C84: FLdRfVar var_3A4
  loc_D28C87: ImpAdCallFPR4  = Chr()
  loc_D28C8C: FLdRfVar var_3A4
  loc_D28C8F: ConcatVar var_3B4
  loc_D28C93: LitI4 1
  loc_D28C98: LitI4 1
  loc_D28C9D: LitVarStr var_53C, "###,###,##0.00"
  loc_D28CA2: FStVarCopyObj var_3C4
  loc_D28CA5: FLdRfVar var_3C4
  loc_D28CA8: FLdPr Me
  loc_D28CAB: MemLdRfVar from_stack_1.global_192
  loc_D28CAE: CVarRef
  loc_D28CB3: FLdRfVar var_3D4
  loc_D28CB6: ImpAdCallFPR4  = Format(, )
  loc_D28CBB: FLdRfVar var_3D4
  loc_D28CBE: ConcatVar var_3F0
  loc_D28CC2: LitI4 9
  loc_D28CC7: FLdRfVar var_400
  loc_D28CCA: ImpAdCallFPR4  = Chr()
  loc_D28CCF: FLdRfVar var_400
  loc_D28CD2: ConcatVar var_410
  loc_D28CD6: LitI4 1
  loc_D28CDB: LitI4 1
  loc_D28CE0: LitVarStr var_5E0, "###,###,##0.00"
  loc_D28CE5: FStVarCopyObj var_420
  loc_D28CE8: FLdRfVar var_420
  loc_D28CEB: FLdPr Me
  loc_D28CEE: MemLdRfVar from_stack_1.global_200
  loc_D28CF1: CVarRef
  loc_D28CF6: FLdRfVar var_43C
  loc_D28CF9: ImpAdCallFPR4  = Format(, )
  loc_D28CFE: FLdRfVar var_43C
  loc_D28D01: ConcatVar var_44C
  loc_D28D05: LitI4 9
  loc_D28D0A: FLdRfVar var_45C
  loc_D28D0D: ImpAdCallFPR4  = Chr()
  loc_D28D12: FLdRfVar var_45C
  loc_D28D15: ConcatVar var_46C
  loc_D28D19: LitI4 1
  loc_D28D1E: LitI4 1
  loc_D28D23: LitVarStr var_678, "###,###,##0.00"
  loc_D28D28: FStVarCopyObj var_48C
  loc_D28D2B: FLdRfVar var_48C
  loc_D28D2E: FLdPr Me
  loc_D28D31: MemLdRfVar from_stack_1.global_208
  loc_D28D34: CVarRef
  loc_D28D39: FLdRfVar var_49C
  loc_D28D3C: ImpAdCallFPR4  = Format(, )
  loc_D28D41: FLdRfVar var_49C
  loc_D28D44: ConcatVar var_4AC
  loc_D28D48: LitI4 9
  loc_D28D4D: FLdRfVar var_4CC
  loc_D28D50: ImpAdCallFPR4  = Chr()
  loc_D28D55: FLdRfVar var_4CC
  loc_D28D58: ConcatVar var_4DC
  loc_D28D5C: LitI4 1
  loc_D28D61: LitI4 1
  loc_D28D66: LitVarStr var_698, "###,###,##0.00"
  loc_D28D6B: FStVarCopyObj var_4EC
  loc_D28D6E: FLdRfVar var_4EC
  loc_D28D71: FLdPr Me
  loc_D28D74: MemLdRfVar from_stack_1.global_216
  loc_D28D77: CVarRef
  loc_D28D7C: FLdRfVar var_50C
  loc_D28D7F: ImpAdCallFPR4  = Format(, )
  loc_D28D84: FLdRfVar var_50C
  loc_D28D87: ConcatVar var_51C
  loc_D28D8B: LitI4 9
  loc_D28D90: FLdRfVar var_52C
  loc_D28D93: ImpAdCallFPR4  = Chr()
  loc_D28D98: FLdRfVar var_52C
  loc_D28D9B: ConcatVar var_54C
  loc_D28D9F: LitVarStr var_6A8, "0"
  loc_D28DA4: ConcatVar var_55C
  loc_D28DA8: LitI4 9
  loc_D28DAD: FLdRfVar var_56C
  loc_D28DB0: ImpAdCallFPR4  = Chr()
  loc_D28DB5: FLdRfVar var_56C
  loc_D28DB8: ConcatVar var_598
  loc_D28DBC: LitVarStr var_6B8, "0"
  loc_D28DC1: ConcatVar var_5A8
  loc_D28DC5: LitI4 9
  loc_D28DCA: FLdRfVar var_5B8
  loc_D28DCD: ImpAdCallFPR4  = Chr()
  loc_D28DD2: FLdRfVar var_5B8
  loc_D28DD5: ConcatVar var_5C8
  loc_D28DD9: LitVarStr var_6C8, "0"
  loc_D28DDE: ConcatVar var_5F4
  loc_D28DE2: CStrVarTmp
  loc_D28DE3: FStStr var_C8
  loc_D28DE6: FFreeVar var_3D4 = "": var_3F0 = "": var_400 = "": var_420 = "": var_410 = "": var_43C = "": var_44C = "": var_45C = "": var_48C = "": var_46C = "": var_49C = "": var_4AC = "": var_4CC = "": var_4EC = "": var_4DC = "": var_50C = "": var_51C = "": var_52C = "": var_54C = "": var_55C = "": var_56C = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5C8 = "": var_5F4 = "": var_138 = "": var_148 = "": var_190 = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1EC = "": var_20C = "": var_22C = "": var_23C = "": var_25C = "": var_27C = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_358 = "": var_368 = "": var_378 = "": var_388 = "": var_3A4 = "": var_3C4 = ""
  loc_D28E59: FLdRfVar var_C8
  loc_D28E5C: CDargRef
  loc_D28E60: FLdPr Me
  loc_D28E63: VCallAd Control_ID_ctacteFlex
  loc_D28E66: FStAdFunc var_120
  loc_D28E69: FLdPr var_120
  loc_D28E6C: LateIdCall
  loc_D28E74: FFree1Ad var_120
  loc_D28E77: FLdPr Me
  loc_D28E7A: VCallAd Control_ID_ctacteFlex
  loc_D28E7D: FStAdFunc var_120
  loc_D28E80: FLdPr var_120
  loc_D28E83: LateIdLdVar var_138 DispID_4 0
  loc_D28E8A: CI4Var
  loc_D28E8C: LitI4 1
  loc_D28E91: SubI4
  loc_D28E92: CVarI4
  loc_D28E96: PopAdLdVar
  loc_D28E97: FLdPr Me
  loc_D28E9A: VCallAd Control_ID_ctacteFlex
  loc_D28E9D: FStAdFunc var_150
  loc_D28EA0: FLdPr var_150
  loc_D28EA3: LateIdSt
  loc_D28EA8: FFreeAd var_120 = ""
  loc_D28EAF: FFree1Var var_138 = ""
  loc_D28EB2: LitI2_Byte 0
  loc_D28EB4: FLdRfVar var_CC
  loc_D28EB7: FLdPr Me
  loc_D28EBA: VCallAd Control_ID_ctacteFlex
  loc_D28EBD: FStAdFunc var_120
  loc_D28EC0: FLdPr var_120
  loc_D28EC3: LateIdLdVar var_138 DispID_5 0
  loc_D28ECA: CI4Var
  loc_D28ECC: LitI4 1
  loc_D28ED1: SubI4
  loc_D28ED2: CI2I4
  loc_D28ED3: FFree1Ad var_120
  loc_D28ED6: FFree1Var var_138 = ""
  loc_D28ED9: ForI2 var_7A0
  loc_D28EDF: FLdI2 var_CC
  loc_D28EE2: CI4UI1
  loc_D28EE3: CVarI4
  loc_D28EE7: PopAdLdVar
  loc_D28EE8: FLdPr Me
  loc_D28EEB: VCallAd Control_ID_ctacteFlex
  loc_D28EEE: FStAdFunc var_120
  loc_D28EF1: FLdPr var_120
  loc_D28EF4: LateIdSt
  loc_D28EF9: FFree1Ad var_120
  loc_D28EFC: LitVarI4
  loc_D28F04: PopAdLdVar
  loc_D28F05: FLdPr Me
  loc_D28F08: VCallAd Control_ID_ctacteFlex
  loc_D28F0B: FStAdFunc var_120
  loc_D28F0E: FLdPr var_120
  loc_D28F11: LateIdSt
  loc_D28F16: FFree1Ad var_120
  loc_D28F19: FLdRfVar var_CC
  loc_D28F1C: NextI2 var_7A0, loc_D28EDF
  loc_D28F21: FLdRfVar var_120
  loc_D28F24: FLdPr Me
  loc_D28F27: MemLdRfVar from_stack_1.global_52
  loc_D28F2A: NewIfNullPr clsctacte
  loc_D28F2D: from_stack_1v = clsctacte.RsFrmGet()
  loc_D28F32: FLdPr var_120
  loc_D28F35: Me.MoveNext
  loc_D28F3A: FFree1Ad var_120
  loc_D28F3D: Branch loc_D27B12
  loc_D28F40: LitI4 1
  loc_D28F45: LitI4 1
  loc_D28F4A: LitVarStr var_11C, "###,###,##0.00"
  loc_D28F4F: FStVarCopyObj var_138
  loc_D28F52: FLdRfVar var_138
  loc_D28F55: FLdPr Me
  loc_D28F58: MemLdRfVar from_stack_1.global_144
  loc_D28F5B: CVarRef
  loc_D28F60: FLdRfVar var_148
  loc_D28F63: ImpAdCallFPR4  = Format(, )
  loc_D28F68: FLdRfVar var_148
  loc_D28F6B: CStrVarVal var_124
  loc_D28F6F: FLdPr Me
  loc_D28F72: VCallAd Control_ID_txtTotaDere
  loc_D28F75: FStAdFunc var_120
  loc_D28F78: FLdPr var_120
  loc_D28F7B: Me.Text = from_stack_1
  loc_D28F80: FFree1Str var_124
  loc_D28F83: FFree1Ad var_120
  loc_D28F86: FFreeVar var_138 = ""
  loc_D28F8D: LitI4 1
  loc_D28F92: LitI4 1
  loc_D28F97: LitVarStr var_11C, "###,###,##0.00"
  loc_D28F9C: FStVarCopyObj var_138
  loc_D28F9F: FLdRfVar var_138
  loc_D28FA2: FLdPr Me
  loc_D28FA5: MemLdRfVar from_stack_1.global_152
  loc_D28FA8: CVarRef
  loc_D28FAD: FLdRfVar var_148
  loc_D28FB0: ImpAdCallFPR4  = Format(, )
  loc_D28FB5: FLdRfVar var_148
  loc_D28FB8: CStrVarVal var_124
  loc_D28FBC: FLdPr Me
  loc_D28FBF: VCallAd Control_ID_txtTotaCred
  loc_D28FC2: FStAdFunc var_120
  loc_D28FC5: FLdPr var_120
  loc_D28FC8: Me.Text = from_stack_1
  loc_D28FCD: FFree1Str var_124
  loc_D28FD0: FFree1Ad var_120
  loc_D28FD3: FFreeVar var_138 = ""
  loc_D28FDA: LitI4 1
  loc_D28FDF: LitI4 1
  loc_D28FE4: LitVarStr var_11C, "###,###,##0.00"
  loc_D28FE9: FStVarCopyObj var_138
  loc_D28FEC: FLdRfVar var_138
  loc_D28FEF: FLdPr Me
  loc_D28FF2: MemLdRfVar from_stack_1.global_168
  loc_D28FF5: CVarRef
  loc_D28FFA: FLdRfVar var_148
  loc_D28FFD: ImpAdCallFPR4  = Format(, )
  loc_D29002: FLdRfVar var_148
  loc_D29005: CStrVarVal var_124
  loc_D29009: FLdPr Me
  loc_D2900C: VCallAd Control_ID_txtTotaReca
  loc_D2900F: FStAdFunc var_120
  loc_D29012: FLdPr var_120
  loc_D29015: Me.Text = from_stack_1
  loc_D2901A: FFree1Str var_124
  loc_D2901D: FFree1Ad var_120
  loc_D29020: FFreeVar var_138 = ""
  loc_D29027: LitI4 1
  loc_D2902C: LitI4 1
  loc_D29031: LitVarStr var_11C, "###,###,##0.00"
  loc_D29036: FStVarCopyObj var_138
  loc_D29039: FLdRfVar var_138
  loc_D2903C: FLdPr Me
  loc_D2903F: MemLdRfVar from_stack_1.global_160
  loc_D29042: CVarRef
  loc_D29047: FLdRfVar var_148
  loc_D2904A: ImpAdCallFPR4  = Format(, )
  loc_D2904F: FLdRfVar var_148
  loc_D29052: CStrVarVal var_124
  loc_D29056: FLdPr Me
  loc_D29059: VCallAd Control_ID_txtTotaApre
  loc_D2905C: FStAdFunc var_120
  loc_D2905F: FLdPr var_120
  loc_D29062: Me.Text = from_stack_1
  loc_D29067: FFree1Str var_124
  loc_D2906A: FFree1Ad var_120
  loc_D2906D: FFreeVar var_138 = ""
  loc_D29074: LitI4 2
  loc_D29079: FLdPr Me
  loc_D2907C: MemLdFPR8 global_144
  loc_D2907F: FLdPr Me
  loc_D29082: MemLdFPR8 global_152
  loc_D29085: SubR4
  loc_D29086: FLdPr Me
  loc_D29089: MemLdFPR8 global_168
  loc_D2908C: AddR8
  loc_D2908D: FLdPr Me
  loc_D29090: MemLdFPR8 global_160
  loc_D29093: AddR8
  loc_D29094: CVarR8
  loc_D29098: FLdRfVar var_148
  loc_D2909B: ImpAdCallFPR4  = Round(, )
  loc_D290A0: FLdRfVar var_148
  loc_D290A3: CR4Var
  loc_D290A4: FLdPr Me
  loc_D290A7: MemStFPR8 global_184
  loc_D290AA: FFreeVar var_138 = ""
  loc_D290B1: LitI4 1
  loc_D290B6: LitI4 1
  loc_D290BB: LitVarStr var_11C, "###,###,##0.00"
  loc_D290C0: FStVarCopyObj var_138
  loc_D290C3: FLdRfVar var_138
  loc_D290C6: FLdPr Me
  loc_D290C9: MemLdRfVar from_stack_1.global_184
  loc_D290CC: CVarRef
  loc_D290D1: FLdRfVar var_148
  loc_D290D4: ImpAdCallFPR4  = Format(, )
  loc_D290D9: FLdRfVar var_148
  loc_D290DC: CStrVarVal var_124
  loc_D290E0: FLdPr Me
  loc_D290E3: VCallAd Control_ID_txtTotal
  loc_D290E6: FStAdFunc var_120
  loc_D290E9: FLdPr var_120
  loc_D290EC: Me.Text = from_stack_1
  loc_D290F1: FFree1Str var_124
  loc_D290F4: FFree1Ad var_120
  loc_D290F7: FFreeVar var_138 = ""
  loc_D290FE: LitI2_Byte &HFF
  loc_D29100: FLdPr Me
  loc_D29103: VCallAd Control_ID_ImprimirCmd
  loc_D29106: FStAdFunc var_120
  loc_D29109: FLdPr var_120
  loc_D2910C: Me.Enabled = from_stack_1b
  loc_D29111: FFree1Ad var_120
  loc_D29114: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D29117: LitStr " LEFT JOIN  tmp_ctacte ON tmp_ctacte.NumeApre = apremio.NumeApre "
  loc_D2911A: ConcatStr
  loc_D2911B: FStStrNoPop var_124
  loc_D2911E: LitStr " WHERE apremio.CodiOfic = "
  loc_D29121: ConcatStr
  loc_D29122: FStStrNoPop var_128
  loc_D29125: ImpAdLdUI1
  loc_D29129: CStrI2
  loc_D2912B: FStStrNoPop var_19C
  loc_D2912E: ConcatStr
  loc_D2912F: FStStrNoPop var_280
  loc_D29132: LitStr " AND apremio.CuenCtct = '"
  loc_D29135: ConcatStr
  loc_D29136: FStStrNoPop var_784
  loc_D29139: FLdRfVar var_780
  loc_D2913C: FLdPr Me
  loc_D2913F: VCallAd Control_ID_NumeCtaTxt
  loc_D29142: FStAdFunc var_120
  loc_D29145: FLdPr var_120
  loc_D29148:  = Me.Text
  loc_D2914D: ILdRf var_780
  loc_D29150: ConcatStr
  loc_D29151: FStStrNoPop var_788
  loc_D29154: LitStr "' AND EstaApre = 10"
  loc_D29157: ConcatStr
  loc_D29158: FStStrNoPop var_78C
  loc_D2915B: LitStr " AND tmp_ctacte.CodiOfic IS NULL"
  loc_D2915E: ConcatStr
  loc_D2915F: FStStrNoPop var_790
  loc_D29162: LitStr " GROUP BY apremio.NumeApre"
  loc_D29165: ConcatStr
  loc_D29166: FStStrNoPop var_794
  loc_D29169: FLdPr Me
  loc_D2916C: MemLdRfVar from_stack_1.global_68
  loc_D2916F: NewIfNullPr clsctacte
  loc_D29172: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D29177: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_280 = "": var_784 = "": var_780 = "": var_788 = "": var_78C = "": var_790 = ""
  loc_D2918E: FFree1Ad var_120
  loc_D29191: FLdRfVar var_154
  loc_D29194: FLdPr Me
  loc_D29197: MemLdRfVar from_stack_1.global_68
  loc_D2919A: NewIfNullPr clsctacte
  loc_D2919D: from_stack_1 = clsctacte.RecordCount
  loc_D291A2: ILdRf var_154
  loc_D291A5: LitI4 0
  loc_D291AA: GtI4
  loc_D291AB: BranchF loc_D291DF
  loc_D291AE: LitVar_Missing var_1AC
  loc_D291B1: LitVar_Missing var_190
  loc_D291B4: LitVarStr var_11C, "Expediente"
  loc_D291B9: FStVarCopyObj var_148
  loc_D291BC: FLdRfVar var_148
  loc_D291BF: LitI4 &H40
  loc_D291C4: LitVarStr var_10C, "LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE...."
  loc_D291C9: FStVarCopyObj var_138
  loc_D291CC: FLdRfVar var_138
  loc_D291CF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D291D4: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D291DF: Branch loc_D292D8
  loc_D291E2: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D291E5: LitStr " LEFT JOIN  tmp_ctacte ON tmp_ctacte.NumeApre = apremio.NumeApre "
  loc_D291E8: ConcatStr
  loc_D291E9: FStStrNoPop var_124
  loc_D291EC: LitStr " WHERE apremio.CodiOfic = "
  loc_D291EF: ConcatStr
  loc_D291F0: FStStrNoPop var_128
  loc_D291F3: ImpAdLdUI1
  loc_D291F7: CStrI2
  loc_D291F9: FStStrNoPop var_19C
  loc_D291FC: ConcatStr
  loc_D291FD: FStStrNoPop var_280
  loc_D29200: LitStr " AND apremio.CuenCtct = '"
  loc_D29203: ConcatStr
  loc_D29204: FStStrNoPop var_784
  loc_D29207: FLdRfVar var_780
  loc_D2920A: FLdPr Me
  loc_D2920D: VCallAd Control_ID_NumeCtaTxt
  loc_D29210: FStAdFunc var_120
  loc_D29213: FLdPr var_120
  loc_D29216:  = Me.Text
  loc_D2921B: ILdRf var_780
  loc_D2921E: ConcatStr
  loc_D2921F: FStStrNoPop var_788
  loc_D29222: LitStr "' AND EstaApre = 10"
  loc_D29225: ConcatStr
  loc_D29226: FStStrNoPop var_78C
  loc_D29229: LitStr " AND tmp_ctacte.CodiOfic IS NULL"
  loc_D2922C: ConcatStr
  loc_D2922D: FStStrNoPop var_790
  loc_D29230: LitStr " GROUP BY apremio.NumeApre"
  loc_D29233: ConcatStr
  loc_D29234: FStStrNoPop var_794
  loc_D29237: FLdPr Me
  loc_D2923A: MemLdRfVar from_stack_1.global_68
  loc_D2923D: NewIfNullPr clsctacte
  loc_D29240: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D29245: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_280 = "": var_784 = "": var_780 = "": var_788 = "": var_78C = "": var_790 = ""
  loc_D2925C: FFree1Ad var_120
  loc_D2925F: FLdRfVar var_154
  loc_D29262: FLdPr Me
  loc_D29265: MemLdRfVar from_stack_1.global_68
  loc_D29268: NewIfNullPr clsctacte
  loc_D2926B: from_stack_1 = clsctacte.RecordCount
  loc_D29270: ILdRf var_154
  loc_D29273: LitI4 0
  loc_D29278: GtI4
  loc_D29279: BranchF loc_D292AD
  loc_D2927C: LitVar_Missing var_1AC
  loc_D2927F: LitVar_Missing var_190
  loc_D29282: LitVarStr var_11C, "Expediente"
  loc_D29287: FStVarCopyObj var_148
  loc_D2928A: FLdRfVar var_148
  loc_D2928D: LitI4 &H40
  loc_D29292: LitVarStr var_10C, "LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE...."
  loc_D29297: FStVarCopyObj var_138
  loc_D2929A: FLdRfVar var_138
  loc_D2929D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D292A2: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D292AD: LitI2_Byte 0
  loc_D292AF: FLdPr Me
  loc_D292B2: VCallAd Control_ID_ImprimirCmd
  loc_D292B5: FStAdFunc var_120
  loc_D292B8: FLdPr var_120
  loc_D292BB: Me.Enabled = from_stack_1b
  loc_D292C0: FFree1Ad var_120
  loc_D292C3: LitStr "La cuenta seleccionada no posee ningun tipo de movimiento"
  loc_D292C6: FLdPr Me
  loc_D292C9: MemStStrCopy
  loc_D292CD: FLdPr Me
  loc_D292D0: MemLdStr global_140
  loc_D292D3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D292D8: ImpAdLdUI1
  loc_D292DC: CI2UI1
  loc_D292DE: LitI2_Byte 1
  loc_D292E0: EqI2
  loc_D292E1: BranchF loc_D292E4
  loc_D292E4: ImpAdLdUI1
  loc_D292E8: CI2UI1
  loc_D292EA: LitI2_Byte 2
  loc_D292EC: EqI2
  loc_D292ED: BranchF loc_D2933B
  loc_D292F0: FLdRfVar var_124
  loc_D292F3: FLdPr Me
  loc_D292F6: VCallAd Control_ID_NumeCtaTxt
  loc_D292F9: FStAdFunc var_120
  loc_D292FC: FLdPr var_120
  loc_D292FF:  = Me.Text
  loc_D29304: LitI2_Byte &HFF
  loc_D29306: ILdRf var_124
  loc_D29309: ImpAdCallI2 Proc_18_63_BEBABC(, )
  loc_D2930E: FStStrNoPop var_128
  loc_D29311: FLdPr Me
  loc_D29314: MemStStrCopy
  loc_D29318: FFreeStr var_124 = ""
  loc_D2931F: FFree1Ad var_120
  loc_D29322: FLdPr Me
  loc_D29325: MemLdStr global_140
  loc_D29328: LitStr vbNullString
  loc_D2932B: NeStr
  loc_D2932D: BranchF loc_D2933B
  loc_D29330: FLdPr Me
  loc_D29333: MemLdStr global_140
  loc_D29336: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D2933B: ImpAdLdUI1
  loc_D2933F: CI2UI1
  loc_D29341: LitI2_Byte 4
  loc_D29343: EqI2
  loc_D29344: BranchF loc_D29390
  loc_D29347: FLdRfVar var_124
  loc_D2934A: FLdPr Me
  loc_D2934D: VCallAd Control_ID_NumeCtaTxt
  loc_D29350: FStAdFunc var_120
  loc_D29353: FLdPr var_120
  loc_D29356:  = Me.Text
  loc_D2935B: ILdRf var_124
  loc_D2935E: ImpAdCallI2 Proc_18_50_ADBE64()
  loc_D29363: FStStrNoPop var_128
  loc_D29366: FLdPr Me
  loc_D29369: MemStStrCopy
  loc_D2936D: FFreeStr var_124 = ""
  loc_D29374: FFree1Ad var_120
  loc_D29377: FLdPr Me
  loc_D2937A: MemLdStr global_140
  loc_D2937D: LitStr vbNullString
  loc_D29380: NeStr
  loc_D29382: BranchF loc_D29390
  loc_D29385: FLdPr Me
  loc_D29388: MemLdStr global_140
  loc_D2938B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D29390: LitStr " SELECT CONCAT('LA PERSONA POSEE EXPEDIENTE: ',' ', replace(Expediente,'-','/'),' ', 'CON CAUSA: ', Causa) Detalle"
  loc_D29393: LitStr " FROM expeinmu WHERE CodiOfic = "
  loc_D29396: ConcatStr
  loc_D29397: FStStrNoPop var_124
  loc_D2939A: ImpAdLdUI1
  loc_D2939E: CStrI2
  loc_D293A0: FStStrNoPop var_128
  loc_D293A3: ConcatStr
  loc_D293A4: FStStrNoPop var_19C
  loc_D293A7: LitStr " AND CodiInmu = "
  loc_D293AA: ConcatStr
  loc_D293AB: FStStrNoPop var_780
  loc_D293AE: FLdRfVar var_280
  loc_D293B1: FLdPr Me
  loc_D293B4: VCallAd Control_ID_NumeCtaTxt
  loc_D293B7: FStAdFunc var_120
  loc_D293BA: FLdPr var_120
  loc_D293BD:  = Me.Text
  loc_D293C2: ILdRf var_280
  loc_D293C5: ConcatStr
  loc_D293C6: FStStrNoPop var_784
  loc_D293C9: LitStr " AND Afectadeuda = 1 ANd BajaFeho IS NULL"
  loc_D293CC: ConcatStr
  loc_D293CD: FStStrNoPop var_788
  loc_D293D0: FLdPr Me
  loc_D293D3: MemLdRfVar from_stack_1.global_68
  loc_D293D6: NewIfNullPr clsctacte
  loc_D293D9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D293DE: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_780 = "": var_280 = "": var_784 = ""
  loc_D293EF: FFree1Ad var_120
  loc_D293F2: FLdRfVar var_154
  loc_D293F5: FLdPr Me
  loc_D293F8: MemLdRfVar from_stack_1.global_68
  loc_D293FB: NewIfNullPr clsctacte
  loc_D293FE: from_stack_1 = clsctacte.RecordCount
  loc_D29403: ILdRf var_154
  loc_D29406: LitI4 0
  loc_D2940B: GtI4
  loc_D2940C: BranchF loc_D29470
  loc_D2940F: FLdRfVar var_158
  loc_D29412: LitVarStr var_10C, "Detalle"
  loc_D29417: PopAdLdVar
  loc_D29418: FLdRfVar var_150
  loc_D2941B: FLdRfVar var_120
  loc_D2941E: FLdPr Me
  loc_D29421: MemLdRfVar from_stack_1.global_68
  loc_D29424: NewIfNullPr clsctacte
  loc_D29427: from_stack_1v = clsctacte.RsFrmGet()
  loc_D2942C: FLdPr var_120
  loc_D2942F:  = Me.Fields
  loc_D29434: FLdPr var_150
  loc_D29437: from_stack_2 = Me.Item(from_stack_1)
  loc_D2943C: LitVar_Missing var_1AC
  loc_D2943F: LitVar_Missing var_190
  loc_D29442: LitVarStr var_11C, "Expediente"
  loc_D29447: FStVarCopyObj var_148
  loc_D2944A: FLdRfVar var_148
  loc_D2944D: LitI4 &H40
  loc_D29452: FLdZeroAd var_158
  loc_D29455: CVarAd
  loc_D29459: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D2945E: FFreeAd var_120 = ""
  loc_D29465: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D29470: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D29473: LitStr " WHERE apremio.CodiOfic = "
  loc_D29476: ConcatStr
  loc_D29477: FStStrNoPop var_124
  loc_D2947A: ImpAdLdUI1
  loc_D2947E: CStrI2
  loc_D29480: FStStrNoPop var_128
  loc_D29483: ConcatStr
  loc_D29484: FStStrNoPop var_19C
  loc_D29487: LitStr " AND apremio.CuenCtct = '"
  loc_D2948A: ConcatStr
  loc_D2948B: FStStrNoPop var_780
  loc_D2948E: FLdRfVar var_280
  loc_D29491: FLdPr Me
  loc_D29494: VCallAd Control_ID_NumeCtaTxt
  loc_D29497: FStAdFunc var_120
  loc_D2949A: FLdPr var_120
  loc_D2949D:  = Me.Text
  loc_D294A2: ILdRf var_280
  loc_D294A5: ConcatStr
  loc_D294A6: FStStrNoPop var_784
  loc_D294A9: LitStr "' AND EstaApre = 11"
  loc_D294AC: ConcatStr
  loc_D294AD: FStStrNoPop var_788
  loc_D294B0: LitStr " GROUP BY apremio.NumeApre"
  loc_D294B3: ConcatStr
  loc_D294B4: FStStrNoPop var_78C
  loc_D294B7: FLdPr Me
  loc_D294BA: MemLdRfVar from_stack_1.global_68
  loc_D294BD: NewIfNullPr clsctacte
  loc_D294C0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D294C5: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_780 = "": var_280 = "": var_784 = "": var_788 = ""
  loc_D294D8: FFree1Ad var_120
  loc_D294DB: FLdRfVar var_154
  loc_D294DE: FLdPr Me
  loc_D294E1: MemLdRfVar from_stack_1.global_68
  loc_D294E4: NewIfNullPr clsctacte
  loc_D294E7: from_stack_1 = clsctacte.RecordCount
  loc_D294EC: ILdRf var_154
  loc_D294EF: LitI4 0
  loc_D294F4: GtI4
  loc_D294F5: BranchF loc_D29529
  loc_D294F8: LitVar_Missing var_1AC
  loc_D294FB: LitVar_Missing var_190
  loc_D294FE: LitVarStr var_11C, "Expediente"
  loc_D29503: FStVarCopyObj var_148
  loc_D29506: FLdRfVar var_148
  loc_D29509: LitI4 &H40
  loc_D2950E: LitVarStr var_10C, "LA CUENTA TIENE APREMIO EN ESTADO: 11 - INHIBIDO, VERIFIQUE...."
  loc_D29513: FStVarCopyObj var_138
  loc_D29516: FLdRfVar var_138
  loc_D29519: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D2951E: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D29529: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_D2952C: LitStr " WHERE apremio.CodiOfic = "
  loc_D2952F: ConcatStr
  loc_D29530: FStStrNoPop var_124
  loc_D29533: ImpAdLdUI1
  loc_D29537: CStrI2
  loc_D29539: FStStrNoPop var_128
  loc_D2953C: ConcatStr
  loc_D2953D: FStStrNoPop var_19C
  loc_D29540: LitStr " AND apremio.CuenCtct = '"
  loc_D29543: ConcatStr
  loc_D29544: FStStrNoPop var_780
  loc_D29547: FLdRfVar var_280
  loc_D2954A: FLdPr Me
  loc_D2954D: VCallAd Control_ID_NumeCtaTxt
  loc_D29550: FStAdFunc var_120
  loc_D29553: FLdPr var_120
  loc_D29556:  = Me.Text
  loc_D2955B: ILdRf var_280
  loc_D2955E: ConcatStr
  loc_D2955F: FStStrNoPop var_784
  loc_D29562: LitStr "' AND EstaApre = 12"
  loc_D29565: ConcatStr
  loc_D29566: FStStrNoPop var_788
  loc_D29569: LitStr " GROUP BY apremio.NumeApre"
  loc_D2956C: ConcatStr
  loc_D2956D: FStStrNoPop var_78C
  loc_D29570: FLdPr Me
  loc_D29573: MemLdRfVar from_stack_1.global_68
  loc_D29576: NewIfNullPr clsctacte
  loc_D29579: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D2957E: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_780 = "": var_280 = "": var_784 = "": var_788 = ""
  loc_D29591: FFree1Ad var_120
  loc_D29594: FLdRfVar var_154
  loc_D29597: FLdPr Me
  loc_D2959A: MemLdRfVar from_stack_1.global_68
  loc_D2959D: NewIfNullPr clsctacte
  loc_D295A0: from_stack_1 = clsctacte.RecordCount
  loc_D295A5: ILdRf var_154
  loc_D295A8: LitI4 0
  loc_D295AD: GtI4
  loc_D295AE: BranchF loc_D295E2
  loc_D295B1: LitVar_Missing var_1AC
  loc_D295B4: LitVar_Missing var_190
  loc_D295B7: LitVarStr var_11C, "Expediente"
  loc_D295BC: FStVarCopyObj var_148
  loc_D295BF: FLdRfVar var_148
  loc_D295C2: LitI4 &H40
  loc_D295C7: LitVarStr var_10C, "LA CUENTA TIENE APREMIO EN ESTADO: 12 - EMBARGO, VERIFIQUE...."
  loc_D295CC: FStVarCopyObj var_138
  loc_D295CF: FLdRfVar var_138
  loc_D295D2: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D295D7: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D295E2: LitStr " SELECT detabole.CodiOfic, detabole.CuenCtct FROM contracargo"
  loc_D295E5: LitStr " INNER JOIN detabole ON detabole.PeriBole = contracargo.PeriBole"
  loc_D295E8: ConcatStr
  loc_D295E9: FStStrNoPop var_124
  loc_D295EC: LitStr " AND detabole.NumeBole = contracargo.NumeBole "
  loc_D295EF: ConcatStr
  loc_D295F0: FStStrNoPop var_128
  loc_D295F3: LitStr " WHERE detabole.CodiOfic = "
  loc_D295F6: ConcatStr
  loc_D295F7: FStStrNoPop var_19C
  loc_D295FA: ImpAdLdUI1
  loc_D295FE: CStrI2
  loc_D29600: FStStrNoPop var_280
  loc_D29603: ConcatStr
  loc_D29604: FStStrNoPop var_780
  loc_D29607: LitStr " AND detabole.CuenCtct = '"
  loc_D2960A: ConcatStr
  loc_D2960B: FStStrNoPop var_788
  loc_D2960E: FLdRfVar var_784
  loc_D29611: FLdPr Me
  loc_D29614: VCallAd Control_ID_NumeCtaTxt
  loc_D29617: FStAdFunc var_120
  loc_D2961A: FLdPr var_120
  loc_D2961D:  = Me.Text
  loc_D29622: ILdRf var_784
  loc_D29625: ConcatStr
  loc_D29626: FStStrNoPop var_78C
  loc_D29629: LitStr "' GROUP BY detabole.CodiOfic, detabole.CuenCtct"
  loc_D2962C: ConcatStr
  loc_D2962D: FStStrNoPop var_790
  loc_D29630: FLdPr Me
  loc_D29633: MemLdRfVar from_stack_1.global_68
  loc_D29636: NewIfNullPr clsctacte
  loc_D29639: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D2963E: FFreeStr var_124 = "": var_128 = "": var_19C = "": var_280 = "": var_780 = "": var_788 = "": var_784 = "": var_78C = ""
  loc_D29653: FFree1Ad var_120
  loc_D29656: FLdRfVar var_154
  loc_D29659: FLdPr Me
  loc_D2965C: MemLdRfVar from_stack_1.global_68
  loc_D2965F: NewIfNullPr clsctacte
  loc_D29662: from_stack_1 = clsctacte.RecordCount
  loc_D29667: ILdRf var_154
  loc_D2966A: LitI4 0
  loc_D2966F: GtI4
  loc_D29670: BranchF loc_D296A4
  loc_D29673: LitVar_Missing var_1AC
  loc_D29676: LitVar_Missing var_190
  loc_D29679: LitVarStr var_11C, "Contracargos"
  loc_D2967E: FStVarCopyObj var_148
  loc_D29681: FLdRfVar var_148
  loc_D29684: LitI4 &H40
  loc_D29689: LitVarStr var_10C, "LA CUENTA TIENE CONTRACARGOS, VERIFIQUE...."
  loc_D2968E: FStVarCopyObj var_138
  loc_D29691: FLdRfVar var_138
  loc_D29694: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D29699: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D296A4: LitI2_Byte 0
  loc_D296A6: FStI2 var_EE
  loc_D296A9: LitStr " SELECT NumeApre FROM apremio WHERE CodiOfic = "
  loc_D296AC: ImpAdLdUI1
  loc_D296B0: CStrI2
  loc_D296B2: FStStrNoPop var_124
  loc_D296B5: ConcatStr
  loc_D296B6: FStStrNoPop var_128
  loc_D296B9: LitStr " AND CUenCtct = '"
  loc_D296BC: ConcatStr
  loc_D296BD: FStStrNoPop var_280
  loc_D296C0: FLdRfVar var_19C
  loc_D296C3: FLdPr Me
  loc_D296C6: VCallAd Control_ID_NumeCtaTxt
  loc_D296C9: FStAdFunc var_120
  loc_D296CC: FLdPr var_120
  loc_D296CF:  = Me.Text
  loc_D296D4: ILdRf var_19C
  loc_D296D7: ConcatStr
  loc_D296D8: FStStrNoPop var_780
  loc_D296DB: LitStr "'"
  loc_D296DE: ConcatStr
  loc_D296DF: FStStrNoPop var_784
  loc_D296E2: FLdPr Me
  loc_D296E5: MemLdRfVar from_stack_1.global_68
  loc_D296E8: NewIfNullPr clsctacte
  loc_D296EB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D296F0: FFreeStr var_124 = "": var_128 = "": var_280 = "": var_19C = "": var_780 = ""
  loc_D296FF: FFree1Ad var_120
  loc_D29702: FLdRfVar var_154
  loc_D29705: FLdRfVar var_120
  loc_D29708: FLdPr Me
  loc_D2970B: MemLdRfVar from_stack_1.global_68
  loc_D2970E: NewIfNullPr clsctacte
  loc_D29711: from_stack_1v = clsctacte.RsFrmGet()
  loc_D29716: FLdPr var_120
  loc_D29719:  = Me.RecordCount
  loc_D2971E: ILdRf var_154
  loc_D29721: LitI4 0
  loc_D29726: GtI4
  loc_D29727: FFree1Ad var_120
  loc_D2972A: BranchF loc_D297CD
  loc_D2972D: FLdRfVar var_14A
  loc_D29730: FLdPr Me
  loc_D29733: MemLdRfVar from_stack_1.global_68
  loc_D29736: NewIfNullPr clsctacte
  loc_D29739: from_stack_1 = clsctacte.EOF
  loc_D2973E: FLdI2 var_14A
  loc_D29741: NotI4
  loc_D29742: BranchF loc_D297CD
  loc_D29745: FLdI2 var_EE
  loc_D29748: LitI2_Byte 0
  loc_D2974A: EqI2
  loc_D2974B: BranchF loc_D297AE
  loc_D2974E: FLdRfVar var_14A
  loc_D29751: FLdRfVar var_138
  loc_D29754: FLdRfVar var_158
  loc_D29757: LitVarStr var_10C, "NumeApre"
  loc_D2975C: PopAdLdVar
  loc_D2975D: FLdRfVar var_150
  loc_D29760: FLdRfVar var_120
  loc_D29763: FLdPr Me
  loc_D29766: MemLdRfVar from_stack_1.global_68
  loc_D29769: NewIfNullPr clsctacte
  loc_D2976C: from_stack_1v = clsctacte.RsFrmGet()
  loc_D29771: FLdPr var_120
  loc_D29774:  = Me.Fields
  loc_D29779: FLdPr var_150
  loc_D2977C: from_stack_2 = Me.Item(from_stack_1)
  loc_D29781: FLdPr var_158
  loc_D29784:  = Me.Value
  loc_D29789: FLdRfVar var_138
  loc_D2978C: CI4Var
  loc_D2978E: FLdPr Me
  loc_D29791: MemLdRfVar from_stack_1.global_92
  loc_D29794: NewIfNullPr clsapremio
  loc_D29797: from_stack_2v = clsapremio.BuscaGastosdeApremioPendientesEnCuotadeFacilidaddePagoAnulada(from_stack_1v)
  loc_D2979C: FLdI2 var_14A
  loc_D2979F: FStI2 var_EE
  loc_D297A2: FFreeAd var_120 = "": var_150 = ""
  loc_D297AB: FFree1Var var_138 = ""
  loc_D297AE: FLdRfVar var_120
  loc_D297B1: FLdPr Me
  loc_D297B4: MemLdRfVar from_stack_1.global_68
  loc_D297B7: NewIfNullPr clsctacte
  loc_D297BA: from_stack_1v = clsctacte.RsFrmGet()
  loc_D297BF: FLdPr var_120
  loc_D297C2: Me.MoveNext
  loc_D297C7: FFree1Ad var_120
  loc_D297CA: Branch loc_D2972D
  loc_D297CD: FLdI2 var_EE
  loc_D297D0: LitI2_Byte &HFF
  loc_D297D2: EqI2
  loc_D297D3: BranchF loc_D29807
  loc_D297D6: LitVar_Missing var_1AC
  loc_D297D9: LitVar_Missing var_190
  loc_D297DC: LitVarStr var_11C, "Expediente"
  loc_D297E1: FStVarCopyObj var_148
  loc_D297E4: FLdRfVar var_148
  loc_D297E7: LitI4 &H40
  loc_D297EC: LitVarStr var_10C, "LA CUENTA TIENE APREMIO PENDIENTES DE FACILIDAD DE PAGOS ANULADAS, VERIFIQUE...."
  loc_D297F1: FStVarCopyObj var_138
  loc_D297F4: FLdRfVar var_138
  loc_D297F7: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D297FC: FFreeVar var_138 = "": var_148 = "": var_190 = ""
  loc_D29807: Call Proc_266_29_B862FC()
  loc_D2980C: Call Proc_266_26_C6A57C()
  loc_D29811: LitI2_Byte 0
  loc_D29813: FLdPr Me
  loc_D29816: Me.MousePointer = from_stack_1
  loc_D2981B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_D29820: ExitProcHresult
End Sub

Private Sub Form_Load() 'C3D464
  'Data Table: 542B30
  loc_C3C858: LitVar_Missing var_94
  loc_C3C85B: PopAdLdVar
  loc_C3C85C: LitStr "Inmueble"
  loc_C3C85F: FLdPr Me
  loc_C3C862: VCallAd Control_ID_OficinaCbo
  loc_C3C865: FStAdFunc var_98
  loc_C3C868: FLdPr var_98
  loc_C3C86B: Me.AddItem from_stack_1, from_stack_2
  loc_C3C870: FFree1Ad var_98
  loc_C3C873: LitVar_Missing var_94
  loc_C3C876: PopAdLdVar
  loc_C3C877: LitStr "Comercio"
  loc_C3C87A: FLdPr Me
  loc_C3C87D: VCallAd Control_ID_OficinaCbo
  loc_C3C880: FStAdFunc var_98
  loc_C3C883: FLdPr var_98
  loc_C3C886: Me.AddItem from_stack_1, from_stack_2
  loc_C3C88B: FFree1Ad var_98
  loc_C3C88E: LitVar_Missing var_94
  loc_C3C891: PopAdLdVar
  loc_C3C892: LitStr "Deudores Varios"
  loc_C3C895: FLdPr Me
  loc_C3C898: VCallAd Control_ID_OficinaCbo
  loc_C3C89B: FStAdFunc var_98
  loc_C3C89E: FLdPr var_98
  loc_C3C8A1: Me.AddItem from_stack_1, from_stack_2
  loc_C3C8A6: FFree1Ad var_98
  loc_C3C8A9: LitVar_Missing var_94
  loc_C3C8AC: PopAdLdVar
  loc_C3C8AD: LitStr "Cementerio"
  loc_C3C8B0: FLdPr Me
  loc_C3C8B3: VCallAd Control_ID_OficinaCbo
  loc_C3C8B6: FStAdFunc var_98
  loc_C3C8B9: FLdPr var_98
  loc_C3C8BC: Me.AddItem from_stack_1, from_stack_2
  loc_C3C8C1: FFree1Ad var_98
  loc_C3C8C4: LitVar_Missing var_94
  loc_C3C8C7: PopAdLdVar
  loc_C3C8C8: LitStr "Transito"
  loc_C3C8CB: FLdPr Me
  loc_C3C8CE: VCallAd Control_ID_OficinaCbo
  loc_C3C8D1: FStAdFunc var_98
  loc_C3C8D4: FLdPr var_98
  loc_C3C8D7: Me.AddItem from_stack_1, from_stack_2
  loc_C3C8DC: FFree1Ad var_98
  loc_C3C8DF: LitVar_Missing var_94
  loc_C3C8E2: PopAdLdVar
  loc_C3C8E3: LitStr "Publicidad"
  loc_C3C8E6: FLdPr Me
  loc_C3C8E9: VCallAd Control_ID_OficinaCbo
  loc_C3C8EC: FStAdFunc var_98
  loc_C3C8EF: FLdPr var_98
  loc_C3C8F2: Me.AddItem from_stack_1, from_stack_2
  loc_C3C8F7: FFree1Ad var_98
  loc_C3C8FA: LitVar_Missing var_94
  loc_C3C8FD: PopAdLdVar
  loc_C3C8FE: LitStr "Antena"
  loc_C3C901: FLdPr Me
  loc_C3C904: VCallAd Control_ID_OficinaCbo
  loc_C3C907: FStAdFunc var_98
  loc_C3C90A: FLdPr var_98
  loc_C3C90D: Me.AddItem from_stack_1, from_stack_2
  loc_C3C912: FFree1Ad var_98
  loc_C3C915: LitI2_Byte 0
  loc_C3C917: FLdPr Me
  loc_C3C91A: VCallAd Control_ID_OficinaCbo
  loc_C3C91D: FStAdFunc var_98
  loc_C3C920: FLdPr var_98
  loc_C3C923: Me.ListIndex = from_stack_1
  loc_C3C928: FFree1Ad var_98
  loc_C3C92B: LitStr "0"
  loc_C3C92E: FLdPr Me
  loc_C3C931: VCallAd Control_ID_NumeCtaTxt
  loc_C3C934: FStAdFunc var_98
  loc_C3C937: FLdPr var_98
  loc_C3C93A: Me.Text = from_stack_1
  loc_C3C93F: FFree1Ad var_98
  loc_C3C942: LitI2_Byte 1
  loc_C3C944: FLdPr Me
  loc_C3C947: VCallAd Control_ID_SoloDeudaChk
  loc_C3C94A: FStAdFunc var_98
  loc_C3C94D: FLdPr var_98
  loc_C3C950: Me.Value = from_stack_1
  loc_C3C955: FFree1Ad var_98
  loc_C3C958: LitI2_Byte 0
  loc_C3C95A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C3C95F: CStrDate
  loc_C3C961: CVarStr var_A8
  loc_C3C964: PopAdLdVar
  loc_C3C965: FLdPr Me
  loc_C3C968: VCallAd Control_ID_FechVencMsk
  loc_C3C96B: FStAdFunc var_98
  loc_C3C96E: FLdPr var_98
  loc_C3C971: LateIdSt
  loc_C3C976: FFree1Ad var_98
  loc_C3C979: FFree1Var var_A8 = ""
  loc_C3C97C: LitI2_Byte 0
  loc_C3C97E: FLdPr Me
  loc_C3C981: VCallAd Control_ID_NotiDeudTxt
  loc_C3C984: FStAdFunc var_98
  loc_C3C987: FLdPr var_98
  loc_C3C98A: Me.Visible = from_stack_1b
  loc_C3C98F: FFree1Ad var_98
  loc_C3C992: FLdPr Me
  loc_C3C995: VCallAd Control_ID_ctacteFlex
  loc_C3C998: FStAdFunc var_AC
  loc_C3C99B: LitVarI4
  loc_C3C9A3: PopAdLdVar
  loc_C3C9A4: LitVarI4
  loc_C3C9AC: PopAdLdVar
  loc_C3C9AD: FLdPr var_AC
  loc_C3C9B0: LateIdCallSt
  loc_C3C9B8: LitVarI4
  loc_C3C9C0: PopAdLdVar
  loc_C3C9C1: LitVarI4
  loc_C3C9C9: PopAdLdVar
  loc_C3C9CA: FLdPr var_AC
  loc_C3C9CD: LateIdCallSt
  loc_C3C9D5: LitVarI4
  loc_C3C9DD: PopAdLdVar
  loc_C3C9DE: LitVarI4
  loc_C3C9E6: PopAdLdVar
  loc_C3C9E7: FLdPr var_AC
  loc_C3C9EA: LateIdCallSt
  loc_C3C9F2: LitVarI4
  loc_C3C9FA: PopAdLdVar
  loc_C3C9FB: LitVarI4
  loc_C3CA03: PopAdLdVar
  loc_C3CA04: FLdPr var_AC
  loc_C3CA07: LateIdCallSt
  loc_C3CA0F: LitVarI4
  loc_C3CA17: PopAdLdVar
  loc_C3CA18: LitVarI4
  loc_C3CA20: PopAdLdVar
  loc_C3CA21: FLdPr var_AC
  loc_C3CA24: LateIdCallSt
  loc_C3CA2C: LitVarI4
  loc_C3CA34: PopAdLdVar
  loc_C3CA35: LitVarI4
  loc_C3CA3D: PopAdLdVar
  loc_C3CA3E: FLdPr var_AC
  loc_C3CA41: LateIdCallSt
  loc_C3CA49: LitVarI4
  loc_C3CA51: PopAdLdVar
  loc_C3CA52: LitVarI4
  loc_C3CA5A: PopAdLdVar
  loc_C3CA5B: FLdPr var_AC
  loc_C3CA5E: LateIdCallSt
  loc_C3CA66: LitVarI4
  loc_C3CA6E: PopAdLdVar
  loc_C3CA6F: LitVarI4
  loc_C3CA77: PopAdLdVar
  loc_C3CA78: FLdPr var_AC
  loc_C3CA7B: LateIdCallSt
  loc_C3CA83: LitVarI4
  loc_C3CA8B: PopAdLdVar
  loc_C3CA8C: LitVarI4
  loc_C3CA94: PopAdLdVar
  loc_C3CA95: FLdPr var_AC
  loc_C3CA98: LateIdCallSt
  loc_C3CAA0: LitVarI4
  loc_C3CAA8: PopAdLdVar
  loc_C3CAA9: LitVarI4
  loc_C3CAB1: PopAdLdVar
  loc_C3CAB2: FLdPr var_AC
  loc_C3CAB5: LateIdCallSt
  loc_C3CABD: LitVarI4
  loc_C3CAC5: PopAdLdVar
  loc_C3CAC6: LitVarI4
  loc_C3CACE: PopAdLdVar
  loc_C3CACF: FLdPr var_AC
  loc_C3CAD2: LateIdCallSt
  loc_C3CADA: LitVarI4
  loc_C3CAE2: PopAdLdVar
  loc_C3CAE3: LitVarI4
  loc_C3CAEB: PopAdLdVar
  loc_C3CAEC: FLdPr var_AC
  loc_C3CAEF: LateIdCallSt
  loc_C3CAF7: LitVarI4
  loc_C3CAFF: PopAdLdVar
  loc_C3CB00: LitVarI4
  loc_C3CB08: PopAdLdVar
  loc_C3CB09: FLdPr var_AC
  loc_C3CB0C: LateIdCallSt
  loc_C3CB14: LitVarI4
  loc_C3CB1C: PopAdLdVar
  loc_C3CB1D: LitVarI4
  loc_C3CB25: PopAdLdVar
  loc_C3CB26: FLdPr var_AC
  loc_C3CB29: LateIdCallSt
  loc_C3CB31: LitVarI4
  loc_C3CB39: PopAdLdVar
  loc_C3CB3A: LitVarI4
  loc_C3CB42: PopAdLdVar
  loc_C3CB43: FLdPr var_AC
  loc_C3CB46: LateIdCallSt
  loc_C3CB4E: LitVarI4
  loc_C3CB56: PopAdLdVar
  loc_C3CB57: LitVarI4
  loc_C3CB5F: PopAdLdVar
  loc_C3CB60: FLdPr var_AC
  loc_C3CB63: LateIdCallSt
  loc_C3CB6B: LitVarI4
  loc_C3CB73: PopAdLdVar
  loc_C3CB74: LitVarI4
  loc_C3CB7C: PopAdLdVar
  loc_C3CB7D: FLdPr var_AC
  loc_C3CB80: LateIdCallSt
  loc_C3CB88: LitVarI4
  loc_C3CB90: PopAdLdVar
  loc_C3CB91: LitVarI4
  loc_C3CB99: PopAdLdVar
  loc_C3CB9A: LitVarStr var_EC, "Periodo"
  loc_C3CB9F: PopAdLdVar
  loc_C3CBA0: FLdPr var_AC
  loc_C3CBA3: LateIdCallSt
  loc_C3CBAB: LitVarI4
  loc_C3CBB3: PopAdLdVar
  loc_C3CBB4: LitVarI4
  loc_C3CBBC: PopAdLdVar
  loc_C3CBBD: LitVarStr var_EC, "Boleto"
  loc_C3CBC2: PopAdLdVar
  loc_C3CBC3: FLdPr var_AC
  loc_C3CBC6: LateIdCallSt
  loc_C3CBCE: LitVarI4
  loc_C3CBD6: PopAdLdVar
  loc_C3CBD7: LitVarI4
  loc_C3CBDF: PopAdLdVar
  loc_C3CBE0: LitVarStr var_EC, "Fech. Emis"
  loc_C3CBE5: PopAdLdVar
  loc_C3CBE6: FLdPr var_AC
  loc_C3CBE9: LateIdCallSt
  loc_C3CBF1: LitVarI4
  loc_C3CBF9: PopAdLdVar
  loc_C3CBFA: LitVarI4
  loc_C3CC02: PopAdLdVar
  loc_C3CC03: LitVarStr var_EC, "Venc/Pago"
  loc_C3CC08: PopAdLdVar
  loc_C3CC09: FLdPr var_AC
  loc_C3CC0C: LateIdCallSt
  loc_C3CC14: LitVarI4
  loc_C3CC1C: PopAdLdVar
  loc_C3CC1D: LitVarI4
  loc_C3CC25: PopAdLdVar
  loc_C3CC26: LitVarStr var_EC, "Concepto"
  loc_C3CC2B: PopAdLdVar
  loc_C3CC2C: FLdPr var_AC
  loc_C3CC2F: LateIdCallSt
  loc_C3CC37: LitVarI4
  loc_C3CC3F: PopAdLdVar
  loc_C3CC40: LitVarI4
  loc_C3CC48: PopAdLdVar
  loc_C3CC49: LitVarStr var_EC, "R."
  loc_C3CC4E: PopAdLdVar
  loc_C3CC4F: FLdPr var_AC
  loc_C3CC52: LateIdCallSt
  loc_C3CC5A: LitVarI4
  loc_C3CC62: PopAdLdVar
  loc_C3CC63: LitVarI4
  loc_C3CC6B: PopAdLdVar
  loc_C3CC6C: LitVarStr var_EC, "Facilidad"
  loc_C3CC71: PopAdLdVar
  loc_C3CC72: FLdPr var_AC
  loc_C3CC75: LateIdCallSt
  loc_C3CC7D: LitVarI4
  loc_C3CC85: PopAdLdVar
  loc_C3CC86: LitVarI4
  loc_C3CC8E: PopAdLdVar
  loc_C3CC8F: LitVarStr var_EC, "Apremio"
  loc_C3CC94: PopAdLdVar
  loc_C3CC95: FLdPr var_AC
  loc_C3CC98: LateIdCallSt
  loc_C3CCA0: LitVarI4
  loc_C3CCA8: PopAdLdVar
  loc_C3CCA9: LitVarI4
  loc_C3CCB1: PopAdLdVar
  loc_C3CCB2: LitVarStr var_EC, "Expediente"
  loc_C3CCB7: PopAdLdVar
  loc_C3CCB8: FLdPr var_AC
  loc_C3CCBB: LateIdCallSt
  loc_C3CCC3: LitVarI4
  loc_C3CCCB: PopAdLdVar
  loc_C3CCCC: LitVarI4
  loc_C3CCD4: PopAdLdVar
  loc_C3CCD5: LitVarStr var_EC, "Tipo M."
  loc_C3CCDA: PopAdLdVar
  loc_C3CCDB: FLdPr var_AC
  loc_C3CCDE: LateIdCallSt
  loc_C3CCE6: LitVarI4
  loc_C3CCEE: PopAdLdVar
  loc_C3CCEF: LitVarI4
  loc_C3CCF7: PopAdLdVar
  loc_C3CCF8: LitVarStr var_EC, "Debito"
  loc_C3CCFD: PopAdLdVar
  loc_C3CCFE: FLdPr var_AC
  loc_C3CD01: LateIdCallSt
  loc_C3CD09: LitVarI4
  loc_C3CD11: PopAdLdVar
  loc_C3CD12: LitVarI4
  loc_C3CD1A: PopAdLdVar
  loc_C3CD1B: LitVarStr var_EC, "Credito"
  loc_C3CD20: PopAdLdVar
  loc_C3CD21: FLdPr var_AC
  loc_C3CD24: LateIdCallSt
  loc_C3CD2C: LitVarI4
  loc_C3CD34: PopAdLdVar
  loc_C3CD35: LitVarI4
  loc_C3CD3D: PopAdLdVar
  loc_C3CD3E: LitVarStr var_EC, "Recargo"
  loc_C3CD43: PopAdLdVar
  loc_C3CD44: FLdPr var_AC
  loc_C3CD47: LateIdCallSt
  loc_C3CD4F: LitVarI4
  loc_C3CD57: PopAdLdVar
  loc_C3CD58: LitVarI4
  loc_C3CD60: PopAdLdVar
  loc_C3CD61: LitVarStr var_EC, "Saldo"
  loc_C3CD66: PopAdLdVar
  loc_C3CD67: FLdPr var_AC
  loc_C3CD6A: LateIdCallSt
  loc_C3CD72: LitVarI4
  loc_C3CD7A: PopAdLdVar
  loc_C3CD7B: LitVarI4
  loc_C3CD83: PopAdLdVar
  loc_C3CD84: LitVarStr var_EC, "Numero"
  loc_C3CD89: PopAdLdVar
  loc_C3CD8A: FLdPr var_AC
  loc_C3CD8D: LateIdCallSt
  loc_C3CD95: LitVarI4
  loc_C3CD9D: PopAdLdVar
  loc_C3CD9E: LitVarI4
  loc_C3CDA6: PopAdLdVar
  loc_C3CDA7: LitVarStr var_EC, "Mov"
  loc_C3CDAC: PopAdLdVar
  loc_C3CDAD: FLdPr var_AC
  loc_C3CDB0: LateIdCallSt
  loc_C3CDB8: LitVarI4
  loc_C3CDC0: PopAdLdVar
  loc_C3CDC1: LitVarI4
  loc_C3CDC9: PopAdLdVar
  loc_C3CDCA: LitVarStr var_EC, "PeriInfo"
  loc_C3CDCF: PopAdLdVar
  loc_C3CDD0: FLdPr var_AC
  loc_C3CDD3: LateIdCallSt
  loc_C3CDDB: LitNothing
  loc_C3CDDD: FStAd var_AC 
  loc_C3CDE1: FLdPr Me
  loc_C3CDE4: VCallAd Control_ID_ctacteconceptoFlex
  loc_C3CDE7: FStAdFunc var_100
  loc_C3CDEA: LitVarI4
  loc_C3CDF2: PopAdLdVar
  loc_C3CDF3: LitVarI4
  loc_C3CDFB: PopAdLdVar
  loc_C3CDFC: FLdPr var_100
  loc_C3CDFF: LateIdCallSt
  loc_C3CE07: LitVarI4
  loc_C3CE0F: PopAdLdVar
  loc_C3CE10: LitVarI4
  loc_C3CE18: PopAdLdVar
  loc_C3CE19: FLdPr var_100
  loc_C3CE1C: LateIdCallSt
  loc_C3CE24: LitVarI4
  loc_C3CE2C: PopAdLdVar
  loc_C3CE2D: LitVarI4
  loc_C3CE35: PopAdLdVar
  loc_C3CE36: FLdPr var_100
  loc_C3CE39: LateIdCallSt
  loc_C3CE41: LitVarI4
  loc_C3CE49: PopAdLdVar
  loc_C3CE4A: LitVarI4
  loc_C3CE52: PopAdLdVar
  loc_C3CE53: FLdPr var_100
  loc_C3CE56: LateIdCallSt
  loc_C3CE5E: LitVarI4
  loc_C3CE66: PopAdLdVar
  loc_C3CE67: LitVarI4
  loc_C3CE6F: PopAdLdVar
  loc_C3CE70: FLdPr var_100
  loc_C3CE73: LateIdCallSt
  loc_C3CE7B: LitVarI4
  loc_C3CE83: PopAdLdVar
  loc_C3CE84: LitVarI4
  loc_C3CE8C: PopAdLdVar
  loc_C3CE8D: FLdPr var_100
  loc_C3CE90: LateIdCallSt
  loc_C3CE98: LitVarI4
  loc_C3CEA0: PopAdLdVar
  loc_C3CEA1: LitVarI4
  loc_C3CEA9: PopAdLdVar
  loc_C3CEAA: FLdPr var_100
  loc_C3CEAD: LateIdCallSt
  loc_C3CEB5: LitVarI4
  loc_C3CEBD: PopAdLdVar
  loc_C3CEBE: LitVarI4
  loc_C3CEC6: PopAdLdVar
  loc_C3CEC7: LitVarStr var_EC, "Concepto"
  loc_C3CECC: PopAdLdVar
  loc_C3CECD: FLdPr var_100
  loc_C3CED0: LateIdCallSt
  loc_C3CED8: LitVarI4
  loc_C3CEE0: PopAdLdVar
  loc_C3CEE1: LitVarI4
  loc_C3CEE9: PopAdLdVar
  loc_C3CEEA: LitVarStr var_EC, "Rec"
  loc_C3CEEF: PopAdLdVar
  loc_C3CEF0: FLdPr var_100
  loc_C3CEF3: LateIdCallSt
  loc_C3CEFB: LitVarI4
  loc_C3CF03: PopAdLdVar
  loc_C3CF04: LitVarI4
  loc_C3CF0C: PopAdLdVar
  loc_C3CF0D: LitVarStr var_EC, "Detalle"
  loc_C3CF12: PopAdLdVar
  loc_C3CF13: FLdPr var_100
  loc_C3CF16: LateIdCallSt
  loc_C3CF1E: LitVarI4
  loc_C3CF26: PopAdLdVar
  loc_C3CF27: LitVarI4
  loc_C3CF2F: PopAdLdVar
  loc_C3CF30: LitVarStr var_EC, "Debito"
  loc_C3CF35: PopAdLdVar
  loc_C3CF36: FLdPr var_100
  loc_C3CF39: LateIdCallSt
  loc_C3CF41: LitVarI4
  loc_C3CF49: PopAdLdVar
  loc_C3CF4A: LitVarI4
  loc_C3CF52: PopAdLdVar
  loc_C3CF53: LitVarStr var_EC, "Credito"
  loc_C3CF58: PopAdLdVar
  loc_C3CF59: FLdPr var_100
  loc_C3CF5C: LateIdCallSt
  loc_C3CF64: LitVarI4
  loc_C3CF6C: PopAdLdVar
  loc_C3CF6D: LitVarI4
  loc_C3CF75: PopAdLdVar
  loc_C3CF76: LitVarStr var_EC, "Recargo"
  loc_C3CF7B: PopAdLdVar
  loc_C3CF7C: FLdPr var_100
  loc_C3CF7F: LateIdCallSt
  loc_C3CF87: LitVarI4
  loc_C3CF8F: PopAdLdVar
  loc_C3CF90: LitVarI4
  loc_C3CF98: PopAdLdVar
  loc_C3CF99: LitVarStr var_EC, "Saldo"
  loc_C3CF9E: PopAdLdVar
  loc_C3CF9F: FLdPr var_100
  loc_C3CFA2: LateIdCallSt
  loc_C3CFAA: LitNothing
  loc_C3CFAC: FStAd var_100 
  loc_C3CFB0: FLdPr Me
  loc_C3CFB3: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_C3CFB6: FStAdFunc var_104
  loc_C3CFB9: LitVarI4
  loc_C3CFC1: PopAdLdVar
  loc_C3CFC2: LitVarI4
  loc_C3CFCA: PopAdLdVar
  loc_C3CFCB: FLdPr var_104
  loc_C3CFCE: LateIdCallSt
  loc_C3CFD6: LitVarI4
  loc_C3CFDE: PopAdLdVar
  loc_C3CFDF: LitVarI4
  loc_C3CFE7: PopAdLdVar
  loc_C3CFE8: FLdPr var_104
  loc_C3CFEB: LateIdCallSt
  loc_C3CFF3: LitVarI4
  loc_C3CFFB: PopAdLdVar
  loc_C3CFFC: LitVarI4
  loc_C3D004: PopAdLdVar
  loc_C3D005: FLdPr var_104
  loc_C3D008: LateIdCallSt
  loc_C3D010: LitVarI4
  loc_C3D018: PopAdLdVar
  loc_C3D019: LitVarI4
  loc_C3D021: PopAdLdVar
  loc_C3D022: FLdPr var_104
  loc_C3D025: LateIdCallSt
  loc_C3D02D: LitVarI4
  loc_C3D035: PopAdLdVar
  loc_C3D036: LitVarI4
  loc_C3D03E: PopAdLdVar
  loc_C3D03F: FLdPr var_104
  loc_C3D042: LateIdCallSt
  loc_C3D04A: LitVarI4
  loc_C3D052: PopAdLdVar
  loc_C3D053: LitVarI4
  loc_C3D05B: PopAdLdVar
  loc_C3D05C: FLdPr var_104
  loc_C3D05F: LateIdCallSt
  loc_C3D067: LitVarI4
  loc_C3D06F: PopAdLdVar
  loc_C3D070: LitVarI4
  loc_C3D078: PopAdLdVar
  loc_C3D079: FLdPr var_104
  loc_C3D07C: LateIdCallSt
  loc_C3D084: LitVarI4
  loc_C3D08C: PopAdLdVar
  loc_C3D08D: LitVarI4
  loc_C3D095: PopAdLdVar
  loc_C3D096: FLdPr var_104
  loc_C3D099: LateIdCallSt
  loc_C3D0A1: LitVarI4
  loc_C3D0A9: PopAdLdVar
  loc_C3D0AA: LitVarI4
  loc_C3D0B2: PopAdLdVar
  loc_C3D0B3: FLdPr var_104
  loc_C3D0B6: LateIdCallSt
  loc_C3D0BE: LitVarI4
  loc_C3D0C6: PopAdLdVar
  loc_C3D0C7: LitVarI4
  loc_C3D0CF: PopAdLdVar
  loc_C3D0D0: FLdPr var_104
  loc_C3D0D3: LateIdCallSt
  loc_C3D0DB: LitVarI4
  loc_C3D0E3: PopAdLdVar
  loc_C3D0E4: LitVarI4
  loc_C3D0EC: PopAdLdVar
  loc_C3D0ED: FLdPr var_104
  loc_C3D0F0: LateIdCallSt
  loc_C3D0F8: LitVarI4
  loc_C3D100: PopAdLdVar
  loc_C3D101: LitVarI4
  loc_C3D109: PopAdLdVar
  loc_C3D10A: FLdPr var_104
  loc_C3D10D: LateIdCallSt
  loc_C3D115: LitVarI4
  loc_C3D11D: PopAdLdVar
  loc_C3D11E: LitVarI4
  loc_C3D126: PopAdLdVar
  loc_C3D127: FLdPr var_104
  loc_C3D12A: LateIdCallSt
  loc_C3D132: LitVarI4
  loc_C3D13A: PopAdLdVar
  loc_C3D13B: LitVarI4
  loc_C3D143: PopAdLdVar
  loc_C3D144: FLdPr var_104
  loc_C3D147: LateIdCallSt
  loc_C3D14F: LitVarI4
  loc_C3D157: PopAdLdVar
  loc_C3D158: LitVarI4
  loc_C3D160: PopAdLdVar
  loc_C3D161: LitVarStr var_EC, "Periodo"
  loc_C3D166: PopAdLdVar
  loc_C3D167: FLdPr var_104
  loc_C3D16A: LateIdCallSt
  loc_C3D172: LitVarI4
  loc_C3D17A: PopAdLdVar
  loc_C3D17B: LitVarI4
  loc_C3D183: PopAdLdVar
  loc_C3D184: LitVarStr var_EC, "Boleto"
  loc_C3D189: PopAdLdVar
  loc_C3D18A: FLdPr var_104
  loc_C3D18D: LateIdCallSt
  loc_C3D195: LitVarI4
  loc_C3D19D: PopAdLdVar
  loc_C3D19E: LitVarI4
  loc_C3D1A6: PopAdLdVar
  loc_C3D1A7: LitVarStr var_EC, "Fech. Emis"
  loc_C3D1AC: PopAdLdVar
  loc_C3D1AD: FLdPr var_104
  loc_C3D1B0: LateIdCallSt
  loc_C3D1B8: LitVarI4
  loc_C3D1C0: PopAdLdVar
  loc_C3D1C1: LitVarI4
  loc_C3D1C9: PopAdLdVar
  loc_C3D1CA: LitVarStr var_EC, "Venc/Pago"
  loc_C3D1CF: PopAdLdVar
  loc_C3D1D0: FLdPr var_104
  loc_C3D1D3: LateIdCallSt
  loc_C3D1DB: LitVarI4
  loc_C3D1E3: PopAdLdVar
  loc_C3D1E4: LitVarI4
  loc_C3D1EC: PopAdLdVar
  loc_C3D1ED: LitVarStr var_EC, "Concepto"
  loc_C3D1F2: PopAdLdVar
  loc_C3D1F3: FLdPr var_104
  loc_C3D1F6: LateIdCallSt
  loc_C3D1FE: LitVarI4
  loc_C3D206: PopAdLdVar
  loc_C3D207: LitVarI4
  loc_C3D20F: PopAdLdVar
  loc_C3D210: LitVarStr var_EC, "R."
  loc_C3D215: PopAdLdVar
  loc_C3D216: FLdPr var_104
  loc_C3D219: LateIdCallSt
  loc_C3D221: LitVarI4
  loc_C3D229: PopAdLdVar
  loc_C3D22A: LitVarI4
  loc_C3D232: PopAdLdVar
  loc_C3D233: LitVarStr var_EC, "Facilidad"
  loc_C3D238: PopAdLdVar
  loc_C3D239: FLdPr var_104
  loc_C3D23C: LateIdCallSt
  loc_C3D244: LitVarI4
  loc_C3D24C: PopAdLdVar
  loc_C3D24D: LitVarI4
  loc_C3D255: PopAdLdVar
  loc_C3D256: LitVarStr var_EC, "Apremio"
  loc_C3D25B: PopAdLdVar
  loc_C3D25C: FLdPr var_104
  loc_C3D25F: LateIdCallSt
  loc_C3D267: LitVarI4
  loc_C3D26F: PopAdLdVar
  loc_C3D270: LitVarI4
  loc_C3D278: PopAdLdVar
  loc_C3D279: LitVarStr var_EC, "Expediente"
  loc_C3D27E: PopAdLdVar
  loc_C3D27F: FLdPr var_104
  loc_C3D282: LateIdCallSt
  loc_C3D28A: LitVarI4
  loc_C3D292: PopAdLdVar
  loc_C3D293: LitVarI4
  loc_C3D29B: PopAdLdVar
  loc_C3D29C: LitVarStr var_EC, "Tipo M."
  loc_C3D2A1: PopAdLdVar
  loc_C3D2A2: FLdPr var_104
  loc_C3D2A5: LateIdCallSt
  loc_C3D2AD: LitVarI4
  loc_C3D2B5: PopAdLdVar
  loc_C3D2B6: LitVarI4
  loc_C3D2BE: PopAdLdVar
  loc_C3D2BF: LitVarStr var_EC, "Debito"
  loc_C3D2C4: PopAdLdVar
  loc_C3D2C5: FLdPr var_104
  loc_C3D2C8: LateIdCallSt
  loc_C3D2D0: LitVarI4
  loc_C3D2D8: PopAdLdVar
  loc_C3D2D9: LitVarI4
  loc_C3D2E1: PopAdLdVar
  loc_C3D2E2: LitVarStr var_EC, "Credito"
  loc_C3D2E7: PopAdLdVar
  loc_C3D2E8: FLdPr var_104
  loc_C3D2EB: LateIdCallSt
  loc_C3D2F3: LitVarI4
  loc_C3D2FB: PopAdLdVar
  loc_C3D2FC: LitVarI4
  loc_C3D304: PopAdLdVar
  loc_C3D305: LitVarStr var_EC, "Recargo"
  loc_C3D30A: PopAdLdVar
  loc_C3D30B: FLdPr var_104
  loc_C3D30E: LateIdCallSt
  loc_C3D316: LitVarI4
  loc_C3D31E: PopAdLdVar
  loc_C3D31F: LitVarI4
  loc_C3D327: PopAdLdVar
  loc_C3D328: LitVarStr var_EC, "Saldo"
  loc_C3D32D: PopAdLdVar
  loc_C3D32E: FLdPr var_104
  loc_C3D331: LateIdCallSt
  loc_C3D339: LitNothing
  loc_C3D33B: FStAd var_104 
  loc_C3D33F: LitI2_Byte 0
  loc_C3D341: FLdPr Me
  loc_C3D344: VCallAd Control_ID_DetaTifalbl
  loc_C3D347: FStAdFunc var_98
  loc_C3D34A: FLdPr var_98
  loc_C3D34D: Me.BorderStyle = from_stack_1
  loc_C3D352: FFree1Ad var_98
  loc_C3D355: LitI2_Byte 0
  loc_C3D357: FLdPr Me
  loc_C3D35A: VCallAd Control_ID_FealFepatlbl
  loc_C3D35D: FStAdFunc var_98
  loc_C3D360: FLdPr var_98
  loc_C3D363: Me.BorderStyle = from_stack_1
  loc_C3D368: FFree1Ad var_98
  loc_C3D36B: LitI2_Byte 0
  loc_C3D36D: FLdPr Me
  loc_C3D370: VCallAd Control_ID_EstaFapaLbl
  loc_C3D373: FStAdFunc var_98
  loc_C3D376: FLdPr var_98
  loc_C3D379: Me.BorderStyle = from_stack_1
  loc_C3D37E: FFree1Ad var_98
  loc_C3D381: LitI2_Byte 0
  loc_C3D383: FLdPr Me
  loc_C3D386: VCallAd Control_ID_CapiFepaLbl
  loc_C3D389: FStAdFunc var_98
  loc_C3D38C: FLdPr var_98
  loc_C3D38F: Me.BorderStyle = from_stack_1
  loc_C3D394: FFree1Ad var_98
  loc_C3D397: LitI2_Byte 0
  loc_C3D399: FLdPr Me
  loc_C3D39C: VCallAd Control_ID_RecaFepaLbl
  loc_C3D39F: FStAdFunc var_98
  loc_C3D3A2: FLdPr var_98
  loc_C3D3A5: Me.BorderStyle = from_stack_1
  loc_C3D3AA: FFree1Ad var_98
  loc_C3D3AD: LitI2_Byte 0
  loc_C3D3AF: FLdPr Me
  loc_C3D3B2: VCallAd Control_ID_DecaFepaLbl
  loc_C3D3B5: FStAdFunc var_98
  loc_C3D3B8: FLdPr var_98
  loc_C3D3BB: Me.BorderStyle = from_stack_1
  loc_C3D3C0: FFree1Ad var_98
  loc_C3D3C3: LitI2_Byte 0
  loc_C3D3C5: FLdPr Me
  loc_C3D3C8: VCallAd Control_ID_DereFepaLbl
  loc_C3D3CB: FStAdFunc var_98
  loc_C3D3CE: FLdPr var_98
  loc_C3D3D1: Me.BorderStyle = from_stack_1
  loc_C3D3D6: FFree1Ad var_98
  loc_C3D3D9: LitI2_Byte 0
  loc_C3D3DB: FLdPr Me
  loc_C3D3DE: VCallAd Control_ID_ApreFapaLbl
  loc_C3D3E1: FStAdFunc var_98
  loc_C3D3E4: FLdPr var_98
  loc_C3D3E7: Me.BorderStyle = from_stack_1
  loc_C3D3EC: FFree1Ad var_98
  loc_C3D3EF: LitI2_Byte 0
  loc_C3D3F1: FLdPr Me
  loc_C3D3F4: VCallAd Control_ID_InteFapaLbl
  loc_C3D3F7: FStAdFunc var_98
  loc_C3D3FA: FLdPr var_98
  loc_C3D3FD: Me.BorderStyle = from_stack_1
  loc_C3D402: FFree1Ad var_98
  loc_C3D405: LitI2_Byte 0
  loc_C3D407: FLdPr Me
  loc_C3D40A: VCallAd Control_ID_TotaFapaLbl
  loc_C3D40D: FStAdFunc var_98
  loc_C3D410: FLdPr var_98
  loc_C3D413: Me.BorderStyle = from_stack_1
  loc_C3D418: FFree1Ad var_98
  loc_C3D41B: LitVar_FALSE
  loc_C3D41F: PopAdLdVar
  loc_C3D420: FLdPr Me
  loc_C3D423: VCallAd Control_ID_CtaCteDetaDgd
  loc_C3D426: FStAdFunc var_98
  loc_C3D429: FLdPr var_98
  loc_C3D42C: LateIdSt
  loc_C3D431: FFree1Ad var_98
  loc_C3D434: LitVar_FALSE
  loc_C3D438: PopAdLdVar
  loc_C3D439: FLdPr Me
  loc_C3D43C: VCallAd Control_ID_RecaBoleDgd
  loc_C3D43F: FStAdFunc var_98
  loc_C3D442: FLdPr var_98
  loc_C3D445: LateIdSt
  loc_C3D44A: FFree1Ad var_98
  loc_C3D44D: LitI2_Byte 0
  loc_C3D44F: FLdPr Me
  loc_C3D452: VCallAd Control_ID_ImprimirCmd
  loc_C3D455: FStAdFunc var_98
  loc_C3D458: FLdPr var_98
  loc_C3D45B: Me.Enabled = from_stack_1b
  loc_C3D460: FFree1Ad var_98
  loc_C3D463: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D5814
  'Data Table: 542B30
  loc_9D57FC: ILdI2 KeyAscii
  loc_9D57FF: LitI2_Byte &HD
  loc_9D5801: EqI2
  loc_9D5802: BranchF loc_9D5813
  loc_9D5805: LitVar_TRUE var_A4
  loc_9D5808: LitStr "{Tab}"
  loc_9D580B: ImpAdCallFPR4 SendKeys , 
  loc_9D5810: FFree1Var var_A4 = ""
  loc_9D5813: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA98C
  'Data Table: 542B30
  loc_9BA978: ILdI2 KeyCode
  loc_9BA97B: CI4UI1
  loc_9BA97C: LitI4 &H78
  loc_9BA981: EqI4
  loc_9BA982: BranchF loc_9BA98A
  loc_9BA985: Call SalirCmd_Click()
  loc_9BA98A: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B34CF0
  'Data Table: 542B30
  loc_B34A14: FLdRfVar var_8A
  loc_B34A17: FLdPr Me
  loc_B34A1A: VCallAd Control_ID_OficinaCbo
  loc_B34A1D: FStAdFunc var_88
  loc_B34A20: FLdPr var_88
  loc_B34A23:  = Me.ListIndex
  loc_B34A28: FLdI2 var_8A
  loc_B34A2B: FStI2 var_8C
  loc_B34A2E: FFree1Ad var_88
  loc_B34A31: FLdI2 var_8C
  loc_B34A34: LitI2_Byte 0
  loc_B34A36: EqI2
  loc_B34A37: BranchF loc_B34A45
  loc_B34A3A: LitI2_Byte 1
  loc_B34A3C: CUI1I2
  loc_B34A3E: ImpAdStUI1 MemVar_D93038
  loc_B34A42: Branch loc_B34ABA
  loc_B34A45: FLdI2 var_8C
  loc_B34A48: LitI2_Byte 1
  loc_B34A4A: EqI2
  loc_B34A4B: BranchF loc_B34A59
  loc_B34A4E: LitI2_Byte 2
  loc_B34A50: CUI1I2
  loc_B34A52: ImpAdStUI1 MemVar_D93038
  loc_B34A56: Branch loc_B34ABA
  loc_B34A59: FLdI2 var_8C
  loc_B34A5C: LitI2_Byte 2
  loc_B34A5E: EqI2
  loc_B34A5F: BranchF loc_B34A6D
  loc_B34A62: LitI2_Byte 3
  loc_B34A64: CUI1I2
  loc_B34A66: ImpAdStUI1 MemVar_D93038
  loc_B34A6A: Branch loc_B34ABA
  loc_B34A6D: FLdI2 var_8C
  loc_B34A70: LitI2_Byte 3
  loc_B34A72: EqI2
  loc_B34A73: BranchF loc_B34A81
  loc_B34A76: LitI2_Byte 4
  loc_B34A78: CUI1I2
  loc_B34A7A: ImpAdStUI1 MemVar_D93038
  loc_B34A7E: Branch loc_B34ABA
  loc_B34A81: FLdI2 var_8C
  loc_B34A84: LitI2_Byte 4
  loc_B34A86: EqI2
  loc_B34A87: BranchF loc_B34A95
  loc_B34A8A: LitI2_Byte 5
  loc_B34A8C: CUI1I2
  loc_B34A8E: ImpAdStUI1 MemVar_D93038
  loc_B34A92: Branch loc_B34ABA
  loc_B34A95: FLdI2 var_8C
  loc_B34A98: LitI2_Byte 5
  loc_B34A9A: EqI2
  loc_B34A9B: BranchF loc_B34AA9
  loc_B34A9E: LitI2_Byte 6
  loc_B34AA0: CUI1I2
  loc_B34AA2: ImpAdStUI1 MemVar_D93038
  loc_B34AA6: Branch loc_B34ABA
  loc_B34AA9: FLdI2 var_8C
  loc_B34AAC: LitI2_Byte 6
  loc_B34AAE: EqI2
  loc_B34AAF: BranchF loc_B34ABA
  loc_B34AB2: LitI2_Byte 7
  loc_B34AB4: CUI1I2
  loc_B34AB6: ImpAdStUI1 MemVar_D93038
  loc_B34ABA: ImpAdLdUI1
  loc_B34ABE: CI2UI1
  loc_B34AC0: LitI2_Byte 0
  loc_B34AC2: NeI2
  loc_B34AC3: FLdRfVar var_90
  loc_B34AC6: FLdPr Me
  loc_B34AC9: VCallAd Control_ID_NumeCtaTxt
  loc_B34ACC: FStAdFunc var_88
  loc_B34ACF: FLdPr var_88
  loc_B34AD2:  = Me.Text
  loc_B34AD7: ILdRf var_90
  loc_B34ADA: LitStr vbNullString
  loc_B34ADD: NeStr
  loc_B34ADF: AndI4
  loc_B34AE0: FLdRfVar var_98
  loc_B34AE3: FLdPr Me
  loc_B34AE6: VCallAd Control_ID_NumeCtaTxt
  loc_B34AE9: FStAdFunc var_94
  loc_B34AEC: FLdPr var_94
  loc_B34AEF:  = Me.Text
  loc_B34AF4: ILdRf var_98
  loc_B34AF7: LitStr "0"
  loc_B34AFA: NeStr
  loc_B34AFC: AndI4
  loc_B34AFD: FFreeStr var_90 = ""
  loc_B34B04: FFreeAd var_88 = ""
  loc_B34B0B: BranchF loc_B34CEF
  loc_B34B0E: FLdRfVar var_90
  loc_B34B11: FLdPr Me
  loc_B34B14: VCallAd Control_ID_NumeCtaTxt
  loc_B34B17: FStAdFunc var_88
  loc_B34B1A: FLdPr var_88
  loc_B34B1D:  = Me.Text
  loc_B34B22: FLdPr Me
  loc_B34B25: MemLdRfVar from_stack_1.global_128
  loc_B34B28: NewIfNullRf
  loc_B34B2C: LitStr "Titular"
  loc_B34B2F: ILdRf var_90
  loc_B34B32: ImpAdLdUI1
  loc_B34B36: CStrI2
  loc_B34B38: FStStrNoPop var_98
  loc_B34B3B: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B34B40: FFreeStr var_98 = ""
  loc_B34B47: FFree1Ad var_88
  loc_B34B4A: BranchF loc_B34C6F
  loc_B34B4D: FLdRfVar var_90
  loc_B34B50: FLdPr Me
  loc_B34B53: MemLdRfVar from_stack_1.global_128
  loc_B34B56: NewIfNullPr tblPersona
  loc_B34B59: from_stack_1v = tblPersona.CucuPersGet()
  loc_B34B5E: ILdRf var_90
  loc_B34B61: FLdPr Me
  loc_B34B64: VCallAd Control_ID_CucuPersTxt
  loc_B34B67: FStAdFunc var_88
  loc_B34B6A: FLdPr var_88
  loc_B34B6D: Me.Text = from_stack_1
  loc_B34B72: FFree1Str var_90
  loc_B34B75: FFree1Ad var_88
  loc_B34B78: FLdRfVar var_90
  loc_B34B7B: FLdPr Me
  loc_B34B7E: MemLdRfVar from_stack_1.global_128
  loc_B34B81: NewIfNullPr tblPersona
  loc_B34B84: from_stack_1v = tblPersona.DetaPersGet()
  loc_B34B89: ILdRf var_90
  loc_B34B8C: FLdPr Me
  loc_B34B8F: VCallAd Control_ID_DetaPerstxt
  loc_B34B92: FStAdFunc var_88
  loc_B34B95: FLdPr var_88
  loc_B34B98: Me.Text = from_stack_1
  loc_B34B9D: FFree1Str var_90
  loc_B34BA0: FFree1Ad var_88
  loc_B34BA3: FLdRfVar var_98
  loc_B34BA6: FLdPr Me
  loc_B34BA9: MemLdRfVar from_stack_1.global_128
  loc_B34BAC: NewIfNullPr tblPersona
  loc_B34BAF: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B34BB4: FLdRfVar var_9C
  loc_B34BB7: FLdPr Me
  loc_B34BBA: MemLdRfVar from_stack_1.global_128
  loc_B34BBD: NewIfNullPr tblPersona
  loc_B34BC0: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B34BC5: FLdRfVar var_90
  loc_B34BC8: FLdPr Me
  loc_B34BCB: MemLdRfVar from_stack_1.global_128
  loc_B34BCE: NewIfNullPr tblPersona
  loc_B34BD1: from_stack_1v = tblPersona.DetaCallGet()
  loc_B34BD6: ILdRf var_90
  loc_B34BD9: LitStr " "
  loc_B34BDC: ConcatStr
  loc_B34BDD: CVarStr var_FC
  loc_B34BE0: LitVarStr var_CC, vbNullString
  loc_B34BE5: FStVarCopyObj var_DC
  loc_B34BE8: FLdRfVar var_DC
  loc_B34BEB: LitStr "Nro: "
  loc_B34BEE: ILdRf var_9C
  loc_B34BF1: ConcatStr
  loc_B34BF2: CVarStr var_BC
  loc_B34BF5: ILdRf var_98
  loc_B34BF8: LitStr "0"
  loc_B34BFB: NeStr
  loc_B34BFD: CVarBoolI2 var_AC
  loc_B34C01: FLdRfVar var_EC
  loc_B34C04: ImpAdCallFPR4  = IIf(, , )
  loc_B34C09: FLdRfVar var_EC
  loc_B34C0C: ConcatVar var_10C
  loc_B34C10: LitVarStr var_11C, " "
  loc_B34C15: ConcatVar var_12C
  loc_B34C19: FLdRfVar var_130
  loc_B34C1C: FLdPr Me
  loc_B34C1F: MemLdRfVar from_stack_1.global_128
  loc_B34C22: NewIfNullPr tblPersona
  loc_B34C25: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B34C2A: FLdZeroAd var_130
  loc_B34C2D: CVarStr var_140
  loc_B34C30: ConcatVar var_150
  loc_B34C34: CStrVarVal var_154
  loc_B34C38: FLdPr Me
  loc_B34C3B: VCallAd Control_ID_DomiPersTxt
  loc_B34C3E: FStAdFunc var_88
  loc_B34C41: FLdPr var_88
  loc_B34C44: Me.Text = from_stack_1
  loc_B34C49: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B34C54: FFree1Ad var_88
  loc_B34C57: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B34C6C: Branch loc_B34CEF
  loc_B34C6F: FLdRfVar var_90
  loc_B34C72: FLdPr Me
  loc_B34C75: MemLdRfVar from_stack_1.global_128
  loc_B34C78: NewIfNullPr tblPersona
  loc_B34C7B: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B34C80: ILdRf var_90
  loc_B34C83: FLdPr Me
  loc_B34C86: MemStStrCopy
  loc_B34C8A: FFree1Str var_90
  loc_B34C8D: FLdPr Me
  loc_B34C90: MemLdStr global_140
  loc_B34C93: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B34C98: LitStr vbNullString
  loc_B34C9B: FLdPr Me
  loc_B34C9E: VCallAd Control_ID_CucuPersTxt
  loc_B34CA1: FStAdFunc var_88
  loc_B34CA4: FLdPr var_88
  loc_B34CA7: Me.Text = from_stack_1
  loc_B34CAC: FFree1Ad var_88
  loc_B34CAF: LitStr vbNullString
  loc_B34CB2: FLdPr Me
  loc_B34CB5: VCallAd Control_ID_DetaPerstxt
  loc_B34CB8: FStAdFunc var_88
  loc_B34CBB: FLdPr var_88
  loc_B34CBE: Me.Text = from_stack_1
  loc_B34CC3: FFree1Ad var_88
  loc_B34CC6: LitStr vbNullString
  loc_B34CC9: FLdPr Me
  loc_B34CCC: VCallAd Control_ID_DomiPersTxt
  loc_B34CCF: FStAdFunc var_88
  loc_B34CD2: FLdPr var_88
  loc_B34CD5: Me.Text = from_stack_1
  loc_B34CDA: FFree1Ad var_88
  loc_B34CDD: FLdPr Me
  loc_B34CE0: VCallAd Control_ID_NumeCtaTxt
  loc_B34CE3: CVarAd
  loc_B34CE7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B34CEC: FFree1Var var_BC = ""
  loc_B34CEF: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'B15FB8
  'Data Table: 542B30
  loc_B15D4C: Call Proc_266_24_B19C28()
  loc_B15D51: Call Proc_266_22_ABE128()
  loc_B15D56: Call Proc_266_23_ACB704()
  loc_B15D5B: Call Proc_266_25_B57BB4()
  loc_B15D60: LitI2_Byte 0
  loc_B15D62: CR8I2
  loc_B15D63: FLdPr Me
  loc_B15D66: MemStFPR8 global_144
  loc_B15D69: LitI2_Byte 0
  loc_B15D6B: CR8I2
  loc_B15D6C: FLdPr Me
  loc_B15D6F: MemStFPR8 global_152
  loc_B15D72: LitI2_Byte 0
  loc_B15D74: CR8I2
  loc_B15D75: FLdPr Me
  loc_B15D78: MemStFPR8 global_168
  loc_B15D7B: LitI2_Byte 0
  loc_B15D7D: CR8I2
  loc_B15D7E: FLdPr Me
  loc_B15D81: MemStFPR8 global_160
  loc_B15D84: LitI2_Byte 0
  loc_B15D86: CR8I2
  loc_B15D87: FLdPr Me
  loc_B15D8A: MemStFPR8 global_184
  loc_B15D8D: LitI2_Byte 0
  loc_B15D8F: CR8I2
  loc_B15D90: FLdPr Me
  loc_B15D93: MemStFPR8 global_192
  loc_B15D96: LitI2_Byte 0
  loc_B15D98: CR8I2
  loc_B15D99: FLdPr Me
  loc_B15D9C: MemStFPR8 global_200
  loc_B15D9F: LitI2_Byte 0
  loc_B15DA1: CR8I2
  loc_B15DA2: FLdPr Me
  loc_B15DA5: MemStFPR8 global_208
  loc_B15DA8: LitI2_Byte 0
  loc_B15DAA: CR8I2
  loc_B15DAB: FLdPr Me
  loc_B15DAE: MemStFPR8 global_216
  loc_B15DB1: LitI4 1
  loc_B15DB6: LitI4 1
  loc_B15DBB: LitVarStr var_A4, "0.00"
  loc_B15DC0: FStVarCopyObj var_B4
  loc_B15DC3: FLdRfVar var_B4
  loc_B15DC6: FLdPr Me
  loc_B15DC9: MemLdRfVar from_stack_1.global_144
  loc_B15DCC: CVarRef
  loc_B15DD1: FLdRfVar var_C4
  loc_B15DD4: ImpAdCallFPR4  = Format(, )
  loc_B15DD9: FLdRfVar var_C4
  loc_B15DDC: CStrVarVal var_C8
  loc_B15DE0: FLdPr Me
  loc_B15DE3: VCallAd Control_ID_txtTotaDere
  loc_B15DE6: FStAdFunc var_CC
  loc_B15DE9: FLdPr var_CC
  loc_B15DEC: Me.Text = from_stack_1
  loc_B15DF1: FFree1Str var_C8
  loc_B15DF4: FFree1Ad var_CC
  loc_B15DF7: FFreeVar var_B4 = ""
  loc_B15DFE: LitI4 1
  loc_B15E03: LitI4 1
  loc_B15E08: LitVarStr var_A4, "0.00"
  loc_B15E0D: FStVarCopyObj var_B4
  loc_B15E10: FLdRfVar var_B4
  loc_B15E13: FLdPr Me
  loc_B15E16: MemLdRfVar from_stack_1.global_152
  loc_B15E19: CVarRef
  loc_B15E1E: FLdRfVar var_C4
  loc_B15E21: ImpAdCallFPR4  = Format(, )
  loc_B15E26: FLdRfVar var_C4
  loc_B15E29: CStrVarVal var_C8
  loc_B15E2D: FLdPr Me
  loc_B15E30: VCallAd Control_ID_txtTotaCred
  loc_B15E33: FStAdFunc var_CC
  loc_B15E36: FLdPr var_CC
  loc_B15E39: Me.Text = from_stack_1
  loc_B15E3E: FFree1Str var_C8
  loc_B15E41: FFree1Ad var_CC
  loc_B15E44: FFreeVar var_B4 = ""
  loc_B15E4B: LitI4 1
  loc_B15E50: LitI4 1
  loc_B15E55: LitVarStr var_A4, "0.00"
  loc_B15E5A: FStVarCopyObj var_B4
  loc_B15E5D: FLdRfVar var_B4
  loc_B15E60: FLdPr Me
  loc_B15E63: MemLdRfVar from_stack_1.global_168
  loc_B15E66: CVarRef
  loc_B15E6B: FLdRfVar var_C4
  loc_B15E6E: ImpAdCallFPR4  = Format(, )
  loc_B15E73: FLdRfVar var_C4
  loc_B15E76: CStrVarVal var_C8
  loc_B15E7A: FLdPr Me
  loc_B15E7D: VCallAd Control_ID_txtTotaReca
  loc_B15E80: FStAdFunc var_CC
  loc_B15E83: FLdPr var_CC
  loc_B15E86: Me.Text = from_stack_1
  loc_B15E8B: FFree1Str var_C8
  loc_B15E8E: FFree1Ad var_CC
  loc_B15E91: FFreeVar var_B4 = ""
  loc_B15E98: LitI4 1
  loc_B15E9D: LitI4 1
  loc_B15EA2: LitVarStr var_A4, "0.00"
  loc_B15EA7: FStVarCopyObj var_B4
  loc_B15EAA: FLdRfVar var_B4
  loc_B15EAD: FLdPr Me
  loc_B15EB0: MemLdRfVar from_stack_1.global_160
  loc_B15EB3: CVarRef
  loc_B15EB8: FLdRfVar var_C4
  loc_B15EBB: ImpAdCallFPR4  = Format(, )
  loc_B15EC0: FLdRfVar var_C4
  loc_B15EC3: CStrVarVal var_C8
  loc_B15EC7: FLdPr Me
  loc_B15ECA: VCallAd Control_ID_txtTotaApre
  loc_B15ECD: FStAdFunc var_CC
  loc_B15ED0: FLdPr var_CC
  loc_B15ED3: Me.Text = from_stack_1
  loc_B15ED8: FFree1Str var_C8
  loc_B15EDB: FFree1Ad var_CC
  loc_B15EDE: FFreeVar var_B4 = ""
  loc_B15EE5: LitI4 2
  loc_B15EEA: FLdPr Me
  loc_B15EED: MemLdRfVar from_stack_1.global_144
  loc_B15EF0: CVarRef
  loc_B15EF5: FLdRfVar var_B4
  loc_B15EF8: ImpAdCallFPR4  = Round(, )
  loc_B15EFD: FLdRfVar var_B4
  loc_B15F00: LitI4 2
  loc_B15F05: FLdPr Me
  loc_B15F08: MemLdRfVar from_stack_1.global_160
  loc_B15F0B: CVarRef
  loc_B15F10: FLdRfVar var_C4
  loc_B15F13: ImpAdCallFPR4  = Round(, )
  loc_B15F18: FLdRfVar var_C4
  loc_B15F1B: AddVar var_DC
  loc_B15F1F: LitI4 2
  loc_B15F24: FLdPr Me
  loc_B15F27: MemLdRfVar from_stack_1.global_168
  loc_B15F2A: CVarRef
  loc_B15F2F: FLdRfVar var_FC
  loc_B15F32: ImpAdCallFPR4  = Round(, )
  loc_B15F37: FLdRfVar var_FC
  loc_B15F3A: AddVar var_10C
  loc_B15F3E: CR4Var
  loc_B15F3F: FLdPr Me
  loc_B15F42: MemStFPR8 global_184
  loc_B15F45: FFreeVar var_B4 = "": var_C4 = "": var_DC = "": var_FC = ""
  loc_B15F52: LitI4 1
  loc_B15F57: LitI4 1
  loc_B15F5C: LitVarStr var_A4, "0.00"
  loc_B15F61: FStVarCopyObj var_B4
  loc_B15F64: FLdRfVar var_B4
  loc_B15F67: FLdPr Me
  loc_B15F6A: MemLdRfVar from_stack_1.global_184
  loc_B15F6D: CVarRef
  loc_B15F72: FLdRfVar var_C4
  loc_B15F75: ImpAdCallFPR4  = Format(, )
  loc_B15F7A: FLdRfVar var_C4
  loc_B15F7D: CStrVarVal var_C8
  loc_B15F81: FLdPr Me
  loc_B15F84: VCallAd Control_ID_txtTotal
  loc_B15F87: FStAdFunc var_CC
  loc_B15F8A: FLdPr var_CC
  loc_B15F8D: Me.Text = from_stack_1
  loc_B15F92: FFree1Str var_C8
  loc_B15F95: FFree1Ad var_CC
  loc_B15F98: FFreeVar var_B4 = ""
  loc_B15F9F: LitI2_Byte 0
  loc_B15FA1: FLdPr Me
  loc_B15FA4: VCallAd Control_ID_ImprimirCmd
  loc_B15FA7: FStAdFunc var_CC
  loc_B15FAA: FLdPr var_CC
  loc_B15FAD: Me.Enabled = from_stack_1b
  loc_B15FB2: FFree1Ad var_CC
  loc_B15FB5: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() 'ADD2D4
  'Data Table: 542B30
  loc_ADD180: ImpAdLdUI1
  loc_ADD184: CI2UI1
  loc_ADD186: LitI2_Byte 1
  loc_ADD188: EqI2
  loc_ADD189: BranchF loc_ADD197
  loc_ADD18C: LitI2_Byte 0
  loc_ADD18E: CUI1I2
  loc_ADD190: FStUI1 var_86
  loc_ADD194: Branch loc_ADD21E
  loc_ADD197: ImpAdLdUI1
  loc_ADD19B: CI2UI1
  loc_ADD19D: LitI2_Byte 2
  loc_ADD19F: EqI2
  loc_ADD1A0: BranchF loc_ADD1AE
  loc_ADD1A3: LitI2_Byte 1
  loc_ADD1A5: CUI1I2
  loc_ADD1A7: FStUI1 var_86
  loc_ADD1AB: Branch loc_ADD21E
  loc_ADD1AE: ImpAdLdUI1
  loc_ADD1B2: CI2UI1
  loc_ADD1B4: LitI2_Byte 3
  loc_ADD1B6: EqI2
  loc_ADD1B7: BranchF loc_ADD1C5
  loc_ADD1BA: LitI2_Byte 2
  loc_ADD1BC: CUI1I2
  loc_ADD1BE: FStUI1 var_86
  loc_ADD1C2: Branch loc_ADD21E
  loc_ADD1C5: ImpAdLdUI1
  loc_ADD1C9: CI2UI1
  loc_ADD1CB: LitI2_Byte 4
  loc_ADD1CD: EqI2
  loc_ADD1CE: BranchF loc_ADD1DC
  loc_ADD1D1: LitI2_Byte 3
  loc_ADD1D3: CUI1I2
  loc_ADD1D5: FStUI1 var_86
  loc_ADD1D9: Branch loc_ADD21E
  loc_ADD1DC: ImpAdLdUI1
  loc_ADD1E0: CI2UI1
  loc_ADD1E2: LitI2_Byte 5
  loc_ADD1E4: EqI2
  loc_ADD1E5: BranchF loc_ADD1F3
  loc_ADD1E8: LitI2_Byte 4
  loc_ADD1EA: CUI1I2
  loc_ADD1EC: FStUI1 var_86
  loc_ADD1F0: Branch loc_ADD21E
  loc_ADD1F3: ImpAdLdUI1
  loc_ADD1F7: CI2UI1
  loc_ADD1F9: LitI2_Byte 6
  loc_ADD1FB: EqI2
  loc_ADD1FC: BranchF loc_ADD20A
  loc_ADD1FF: LitI2_Byte 5
  loc_ADD201: CUI1I2
  loc_ADD203: FStUI1 var_86
  loc_ADD207: Branch loc_ADD21E
  loc_ADD20A: ImpAdLdUI1
  loc_ADD20E: CI2UI1
  loc_ADD210: LitI2_Byte 7
  loc_ADD212: EqI2
  loc_ADD213: BranchF loc_ADD21E
  loc_ADD216: LitI2_Byte 6
  loc_ADD218: CUI1I2
  loc_ADD21A: FStUI1 var_86
  loc_ADD21E: ImpAdLdRf MemVar_D94084
  loc_ADD221: NewIfNullAd
  loc_ADD224: CastAd
  loc_ADD227: FStAdFuncNoPop
  loc_ADD22A: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_ADD22F: FFree1Ad var_8C
  loc_ADD232: ImpAdLdRf MemVar_D94084
  loc_ADD235: NewIfNullAd
  loc_ADD238: FStAd var_90 
  loc_ADD23C: FLdUI1
  loc_ADD240: CI2UI1
  loc_ADD242: FLdPr var_90
  loc_ADD245: VCallAd Control_ID_RasoComeTxt
  loc_ADD248: FStAdFunc var_8C
  loc_ADD24B: FLdPr var_8C
  loc_ADD24E: Me.ListIndex = from_stack_1
  loc_ADD253: FFree1Ad var_8C
  loc_ADD256: FLdRfVar var_94
  loc_ADD259: FLdPr Me
  loc_ADD25C: VCallAd Control_ID_NumeCtaTxt
  loc_ADD25F: FStAdFunc var_8C
  loc_ADD262: FLdPr var_8C
  loc_ADD265:  = Me.Text
  loc_ADD26A: ILdRf var_94
  loc_ADD26D: FLdPr var_90
  loc_ADD270: VCallAd Control_ID_CodiInmuTxt
  loc_ADD273: FStAdFunc var_98
  loc_ADD276: FLdPr var_98
  loc_ADD279: Me.Text = from_stack_1
  loc_ADD27E: FFree1Str var_94
  loc_ADD281: FFreeAd var_8C = ""
  loc_ADD288: FLdRfVar var_9A
  loc_ADD28B: FLdPr Me
  loc_ADD28E: VCallAd Control_ID_SoloDeudaChk
  loc_ADD291: FStAdFunc var_8C
  loc_ADD294: FLdPr var_8C
  loc_ADD297:  = Me.Value
  loc_ADD29C: FLdI2 var_9A
  loc_ADD29F: FLdPr var_90
  loc_ADD2A2: VCallAd Control_ID_txtTotaReca
  loc_ADD2A5: FStAdFunc var_98
  loc_ADD2A8: FLdPr var_98
  loc_ADD2AB: Me.Value = from_stack_1
  loc_ADD2B0: FFreeAd var_8C = ""
  loc_ADD2B7: LitVar_Missing var_BC
  loc_ADD2BA: PopAdLdVar
  loc_ADD2BB: LitVarI4
  loc_ADD2C3: PopAdLdVar
  loc_ADD2C4: FLdPr var_90
  loc_ADD2C7: Me.Show from_stack_1, from_stack_2
  loc_ADD2CC: LitNothing
  loc_ADD2CE: FStAd var_90 
  loc_ADD2D2: ExitProcHresult
End Sub

Private Function Proc_266_22_ABE128() 'ABE128
  'Data Table: 542B30
  loc_ABE02C: LitStr vbNullString
  loc_ABE02F: FLdPr Me
  loc_ABE032: VCallAd Control_ID_AutoApreTxt
  loc_ABE035: FStAdFunc var_88
  loc_ABE038: FLdPr var_88
  loc_ABE03B: Me.Text = from_stack_1
  loc_ABE040: FFree1Ad var_88
  loc_ABE043: LitStr vbNullString
  loc_ABE046: FLdPr Me
  loc_ABE049: VCallAd Control_ID_FealApreTxt
  loc_ABE04C: FStAdFunc var_88
  loc_ABE04F: FLdPr var_88
  loc_ABE052: Me.Text = from_stack_1
  loc_ABE057: FFree1Ad var_88
  loc_ABE05A: LitStr vbNullString
  loc_ABE05D: FLdPr Me
  loc_ABE060: VCallAd Control_ID_EstaApreTxt
  loc_ABE063: FStAdFunc var_88
  loc_ABE066: FLdPr var_88
  loc_ABE069: Me.Text = from_stack_1
  loc_ABE06E: FFree1Ad var_88
  loc_ABE071: LitStr vbNullString
  loc_ABE074: FLdPr Me
  loc_ABE077: VCallAd Control_ID_DetaRecaTxt
  loc_ABE07A: FStAdFunc var_88
  loc_ABE07D: FLdPr var_88
  loc_ABE080: Me.Text = from_stack_1
  loc_ABE085: FFree1Ad var_88
  loc_ABE088: LitStr vbNullString
  loc_ABE08B: FLdPr Me
  loc_ABE08E: VCallAd Control_ID_DetaOfjuTxt
  loc_ABE091: FStAdFunc var_88
  loc_ABE094: FLdPr var_88
  loc_ABE097: Me.Text = from_stack_1
  loc_ABE09C: FFree1Ad var_88
  loc_ABE09F: LitStr vbNullString
  loc_ABE0A2: FLdPr Me
  loc_ABE0A5: VCallAd Control_ID_CapiApreTxt
  loc_ABE0A8: FStAdFunc var_88
  loc_ABE0AB: FLdPr var_88
  loc_ABE0AE: Me.Text = from_stack_1
  loc_ABE0B3: FFree1Ad var_88
  loc_ABE0B6: LitStr vbNullString
  loc_ABE0B9: FLdPr Me
  loc_ABE0BC: VCallAd Control_ID_RecaApreTxt
  loc_ABE0BF: FStAdFunc var_88
  loc_ABE0C2: FLdPr var_88
  loc_ABE0C5: Me.Text = from_stack_1
  loc_ABE0CA: FFree1Ad var_88
  loc_ABE0CD: LitStr vbNullString
  loc_ABE0D0: FLdPr Me
  loc_ABE0D3: VCallAd Control_ID_TotaApreTxt
  loc_ABE0D6: FStAdFunc var_88
  loc_ABE0D9: FLdPr var_88
  loc_ABE0DC: Me.Text = from_stack_1
  loc_ABE0E1: FFree1Ad var_88
  loc_ABE0E4: LitStr "SELECT instapre.CodiInju, instjudi.DetaInju, instapre.FechInap FROM instapre "
  loc_ABE0E7: LitStr " LEFT JOIN instjudi ON instapre.CodiInju = instjudi.CodiInju"
  loc_ABE0EA: ConcatStr
  loc_ABE0EB: FStStrNoPop var_8C
  loc_ABE0EE: LitStr " WHERE NumeApre = 0 AND instapre.CodiInju = 0 ORDER BY instapre.NumeApre, instapre.CodiInju"
  loc_ABE0F1: ConcatStr
  loc_ABE0F2: FStStrNoPop var_90
  loc_ABE0F5: FLdPr Me
  loc_ABE0F8: MemLdRfVar from_stack_1.global_96
  loc_ABE0FB: NewIfNullPr clsinstapre
  loc_ABE0FE: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_ABE103: FFreeStr var_8C = ""
  loc_ABE10A: LitStr "SELECT * FROM boleapre "
  loc_ABE10D: LitStr " WHERE NumeApre = 0 ORDER BY NumeApre"
  loc_ABE110: ConcatStr
  loc_ABE111: FStStrNoPop var_8C
  loc_ABE114: FLdPr Me
  loc_ABE117: MemLdRfVar from_stack_1.global_100
  loc_ABE11A: NewIfNullPr clsboleapre
  loc_ABE11D: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_ABE122: FFree1Str var_8C
  loc_ABE125: ExitProcHresult
  loc_ABE126: SetLastSystemError
End Function

Private Function Proc_266_23_ACB704() 'ACB704
  'Data Table: 542B30
  loc_ACB5E4: LitStr vbNullString
  loc_ACB5E7: FLdPr Me
  loc_ACB5EA: VCallAd Control_ID_DetaTifalbl
  loc_ACB5ED: FStAdFunc var_88
  loc_ACB5F0: FLdPr var_88
  loc_ACB5F3: Me.Caption = from_stack_1
  loc_ACB5F8: FFree1Ad var_88
  loc_ACB5FB: LitStr vbNullString
  loc_ACB5FE: FLdPr Me
  loc_ACB601: VCallAd Control_ID_FealFepatlbl
  loc_ACB604: FStAdFunc var_88
  loc_ACB607: FLdPr var_88
  loc_ACB60A: Me.Caption = from_stack_1
  loc_ACB60F: FFree1Ad var_88
  loc_ACB612: LitStr vbNullString
  loc_ACB615: FLdPr Me
  loc_ACB618: VCallAd Control_ID_EstaFapaLbl
  loc_ACB61B: FStAdFunc var_88
  loc_ACB61E: FLdPr var_88
  loc_ACB621: Me.Caption = from_stack_1
  loc_ACB626: FFree1Ad var_88
  loc_ACB629: LitStr vbNullString
  loc_ACB62C: FLdPr Me
  loc_ACB62F: VCallAd Control_ID_CapiFepaLbl
  loc_ACB632: FStAdFunc var_88
  loc_ACB635: FLdPr var_88
  loc_ACB638: Me.Caption = from_stack_1
  loc_ACB63D: FFree1Ad var_88
  loc_ACB640: LitStr vbNullString
  loc_ACB643: FLdPr Me
  loc_ACB646: VCallAd Control_ID_RecaFepaLbl
  loc_ACB649: FStAdFunc var_88
  loc_ACB64C: FLdPr var_88
  loc_ACB64F: Me.Caption = from_stack_1
  loc_ACB654: FFree1Ad var_88
  loc_ACB657: LitStr vbNullString
  loc_ACB65A: FLdPr Me
  loc_ACB65D: VCallAd Control_ID_DecaFepaLbl
  loc_ACB660: FStAdFunc var_88
  loc_ACB663: FLdPr var_88
  loc_ACB666: Me.Caption = from_stack_1
  loc_ACB66B: FFree1Ad var_88
  loc_ACB66E: LitStr vbNullString
  loc_ACB671: FLdPr Me
  loc_ACB674: VCallAd Control_ID_DereFepaLbl
  loc_ACB677: FStAdFunc var_88
  loc_ACB67A: FLdPr var_88
  loc_ACB67D: Me.Caption = from_stack_1
  loc_ACB682: FFree1Ad var_88
  loc_ACB685: LitStr vbNullString
  loc_ACB688: FLdPr Me
  loc_ACB68B: VCallAd Control_ID_ApreFapaLbl
  loc_ACB68E: FStAdFunc var_88
  loc_ACB691: FLdPr var_88
  loc_ACB694: Me.Caption = from_stack_1
  loc_ACB699: FFree1Ad var_88
  loc_ACB69C: LitStr vbNullString
  loc_ACB69F: FLdPr Me
  loc_ACB6A2: VCallAd Control_ID_InteFapaLbl
  loc_ACB6A5: FStAdFunc var_88
  loc_ACB6A8: FLdPr var_88
  loc_ACB6AB: Me.Caption = from_stack_1
  loc_ACB6B0: FFree1Ad var_88
  loc_ACB6B3: LitStr vbNullString
  loc_ACB6B6: FLdPr Me
  loc_ACB6B9: VCallAd Control_ID_TotaFapaLbl
  loc_ACB6BC: FStAdFunc var_88
  loc_ACB6BF: FLdPr var_88
  loc_ACB6C2: Me.Caption = from_stack_1
  loc_ACB6C7: FFree1Ad var_88
  loc_ACB6CA: LitStr "SELECT * FROM facipago WHERE CodiFapa = 0 ORDER BY CodiFapa"
  loc_ACB6CD: FLdPr Me
  loc_ACB6D0: MemLdRfVar from_stack_1.global_72
  loc_ACB6D3: NewIfNullPr clsfacipago
  loc_ACB6D6: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_ACB6DB: LitStr "SELECT * FROM detafapa"
  loc_ACB6DE: LitStr " WHERE CodiFapa = 0"
  loc_ACB6E1: ConcatStr
  loc_ACB6E2: FStStrNoPop var_8C
  loc_ACB6E5: LitStr " ORDER BY CodiFapa, CuotDefa"
  loc_ACB6E8: ConcatStr
  loc_ACB6E9: FStStrNoPop var_90
  loc_ACB6EC: FLdPr Me
  loc_ACB6EF: MemLdRfVar from_stack_1.global_76
  loc_ACB6F2: NewIfNullPr clsdetafapa
  loc_ACB6F5: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_ACB6FA: FFreeStr var_8C = ""
  loc_ACB701: ExitProcHresult
End Function

Private Function Proc_266_24_B19C28() 'B19C28
  'Data Table: 542B30
  loc_B1999C: FLdPr Me
  loc_B1999F: VCallAd Control_ID_ctacteFlex
  loc_B199A2: FStAdFunc var_88
  loc_B199A5: FLdPr var_88
  loc_B199A8: LateIdCall
  loc_B199B0: LitVarI4
  loc_B199B8: PopAdLdVar
  loc_B199B9: FLdPr var_88
  loc_B199BC: LateIdSt
  loc_B199C1: LitVarI4
  loc_B199C9: PopAdLdVar
  loc_B199CA: LitVarI4
  loc_B199D2: PopAdLdVar
  loc_B199D3: LitVarStr var_D8, "Periodo"
  loc_B199D8: PopAdLdVar
  loc_B199D9: FLdPr var_88
  loc_B199DC: LateIdCallSt
  loc_B199E4: LitVarI4
  loc_B199EC: PopAdLdVar
  loc_B199ED: LitVarI4
  loc_B199F5: PopAdLdVar
  loc_B199F6: LitVarStr var_D8, "Boleto"
  loc_B199FB: PopAdLdVar
  loc_B199FC: FLdPr var_88
  loc_B199FF: LateIdCallSt
  loc_B19A07: LitVarI4
  loc_B19A0F: PopAdLdVar
  loc_B19A10: LitVarI4
  loc_B19A18: PopAdLdVar
  loc_B19A19: LitVarStr var_D8, "Fech. Emis"
  loc_B19A1E: PopAdLdVar
  loc_B19A1F: FLdPr var_88
  loc_B19A22: LateIdCallSt
  loc_B19A2A: LitVarI4
  loc_B19A32: PopAdLdVar
  loc_B19A33: LitVarI4
  loc_B19A3B: PopAdLdVar
  loc_B19A3C: LitVarStr var_D8, "Venc/Pago"
  loc_B19A41: PopAdLdVar
  loc_B19A42: FLdPr var_88
  loc_B19A45: LateIdCallSt
  loc_B19A4D: LitVarI4
  loc_B19A55: PopAdLdVar
  loc_B19A56: LitVarI4
  loc_B19A5E: PopAdLdVar
  loc_B19A5F: LitVarStr var_D8, "Concepto"
  loc_B19A64: PopAdLdVar
  loc_B19A65: FLdPr var_88
  loc_B19A68: LateIdCallSt
  loc_B19A70: LitVarI4
  loc_B19A78: PopAdLdVar
  loc_B19A79: LitVarI4
  loc_B19A81: PopAdLdVar
  loc_B19A82: LitVarStr var_D8, "R."
  loc_B19A87: PopAdLdVar
  loc_B19A88: FLdPr var_88
  loc_B19A8B: LateIdCallSt
  loc_B19A93: LitVarI4
  loc_B19A9B: PopAdLdVar
  loc_B19A9C: LitVarI4
  loc_B19AA4: PopAdLdVar
  loc_B19AA5: LitVarStr var_D8, "Facilidad"
  loc_B19AAA: PopAdLdVar
  loc_B19AAB: FLdPr var_88
  loc_B19AAE: LateIdCallSt
  loc_B19AB6: LitVarI4
  loc_B19ABE: PopAdLdVar
  loc_B19ABF: LitVarI4
  loc_B19AC7: PopAdLdVar
  loc_B19AC8: LitVarStr var_D8, "Apremio"
  loc_B19ACD: PopAdLdVar
  loc_B19ACE: FLdPr var_88
  loc_B19AD1: LateIdCallSt
  loc_B19AD9: LitVarI4
  loc_B19AE1: PopAdLdVar
  loc_B19AE2: LitVarI4
  loc_B19AEA: PopAdLdVar
  loc_B19AEB: LitVarStr var_D8, "Expediente"
  loc_B19AF0: PopAdLdVar
  loc_B19AF1: FLdPr var_88
  loc_B19AF4: LateIdCallSt
  loc_B19AFC: LitVarI4
  loc_B19B04: PopAdLdVar
  loc_B19B05: LitVarI4
  loc_B19B0D: PopAdLdVar
  loc_B19B0E: LitVarStr var_D8, "Tipo M."
  loc_B19B13: PopAdLdVar
  loc_B19B14: FLdPr var_88
  loc_B19B17: LateIdCallSt
  loc_B19B1F: LitVarI4
  loc_B19B27: PopAdLdVar
  loc_B19B28: LitVarI4
  loc_B19B30: PopAdLdVar
  loc_B19B31: LitVarStr var_D8, "Debito"
  loc_B19B36: PopAdLdVar
  loc_B19B37: FLdPr var_88
  loc_B19B3A: LateIdCallSt
  loc_B19B42: LitVarI4
  loc_B19B4A: PopAdLdVar
  loc_B19B4B: LitVarI4
  loc_B19B53: PopAdLdVar
  loc_B19B54: LitVarStr var_D8, "Credito"
  loc_B19B59: PopAdLdVar
  loc_B19B5A: FLdPr var_88
  loc_B19B5D: LateIdCallSt
  loc_B19B65: LitVarI4
  loc_B19B6D: PopAdLdVar
  loc_B19B6E: LitVarI4
  loc_B19B76: PopAdLdVar
  loc_B19B77: LitVarStr var_D8, "Recargo"
  loc_B19B7C: PopAdLdVar
  loc_B19B7D: FLdPr var_88
  loc_B19B80: LateIdCallSt
  loc_B19B88: LitVarI4
  loc_B19B90: PopAdLdVar
  loc_B19B91: LitVarI4
  loc_B19B99: PopAdLdVar
  loc_B19B9A: LitVarStr var_D8, "Saldo"
  loc_B19B9F: PopAdLdVar
  loc_B19BA0: FLdPr var_88
  loc_B19BA3: LateIdCallSt
  loc_B19BAB: LitVarI4
  loc_B19BB3: PopAdLdVar
  loc_B19BB4: LitVarI4
  loc_B19BBC: PopAdLdVar
  loc_B19BBD: LitVarStr var_D8, "Numero"
  loc_B19BC2: PopAdLdVar
  loc_B19BC3: FLdPr var_88
  loc_B19BC6: LateIdCallSt
  loc_B19BCE: LitVarI4
  loc_B19BD6: PopAdLdVar
  loc_B19BD7: LitVarI4
  loc_B19BDF: PopAdLdVar
  loc_B19BE0: LitVarStr var_D8, "Mov"
  loc_B19BE5: PopAdLdVar
  loc_B19BE6: FLdPr var_88
  loc_B19BE9: LateIdCallSt
  loc_B19BF1: LitVarI4
  loc_B19BF9: PopAdLdVar
  loc_B19BFA: LitVarI4
  loc_B19C02: PopAdLdVar
  loc_B19C03: LitVarStr var_D8, "PeriInfo"
  loc_B19C08: PopAdLdVar
  loc_B19C09: FLdPr var_88
  loc_B19C0C: LateIdCallSt
  loc_B19C14: FLdPr var_88
  loc_B19C17: LateIdCall
  loc_B19C1F: LitNothing
  loc_B19C21: FStAd var_88 
  loc_B19C25: ExitProcHresult
End Function

Private Function Proc_266_25_B57BB4() 'B57BB4
  'Data Table: 542B30
  loc_B577E4: LitStr vbNullString
  loc_B577E7: FLdPr Me
  loc_B577EA: VCallAd Control_ID_CodiUsuaTxt
  loc_B577ED: FStAdFunc var_88
  loc_B577F0: FLdPr var_88
  loc_B577F3: Me.Text = from_stack_1
  loc_B577F8: FFree1Ad var_88
  loc_B577FB: LitStr vbNullString
  loc_B577FE: FLdPr Me
  loc_B57801: VCallAd Control_ID_NumeLiquTxt
  loc_B57804: FStAdFunc var_88
  loc_B57807: FLdPr var_88
  loc_B5780A: Me.Text = from_stack_1
  loc_B5780F: FFree1Ad var_88
  loc_B57812: LitStr vbNullString
  loc_B57815: FLdPr Me
  loc_B57818: VCallAd Control_ID_NumeOrdeTxt
  loc_B5781B: FStAdFunc var_88
  loc_B5781E: FLdPr var_88
  loc_B57821: Me.Text = from_stack_1
  loc_B57826: FFree1Ad var_88
  loc_B57829: LitStr vbNullString
  loc_B5782C: FLdPr Me
  loc_B5782F: VCallAd Control_ID_DetaConcTxt
  loc_B57832: FStAdFunc var_88
  loc_B57835: FLdPr var_88
  loc_B57838: Me.Text = from_stack_1
  loc_B5783D: FFree1Ad var_88
  loc_B57840: LitStr vbNullString
  loc_B57843: FLdPr Me
  loc_B57846: VCallAd Control_ID_TipoBoleTxt
  loc_B57849: FStAdFunc var_88
  loc_B5784C: FLdPr var_88
  loc_B5784F: Me.Text = from_stack_1
  loc_B57854: FFree1Ad var_88
  loc_B57857: LitStr vbNullString
  loc_B5785A: FLdPr Me
  loc_B5785D: VCallAd Control_ID_EstaBoleTxt
  loc_B57860: FStAdFunc var_88
  loc_B57863: FLdPr var_88
  loc_B57866: Me.Text = from_stack_1
  loc_B5786B: FFree1Ad var_88
  loc_B5786E: LitStr vbNullString
  loc_B57871: FLdPr Me
  loc_B57874: VCallAd Control_ID_FealBoleTxt
  loc_B57877: FStAdFunc var_88
  loc_B5787A: FLdPr var_88
  loc_B5787D: Me.Text = from_stack_1
  loc_B57882: FFree1Ad var_88
  loc_B57885: LitStr vbNullString
  loc_B57888: FLdPr Me
  loc_B5788B: VCallAd Control_ID_FeveBoleTxt
  loc_B5788E: FStAdFunc var_88
  loc_B57891: FLdPr var_88
  loc_B57894: Me.Text = from_stack_1
  loc_B57899: FFree1Ad var_88
  loc_B5789C: LitStr vbNullString
  loc_B5789F: FLdPr Me
  loc_B578A2: VCallAd Control_ID_FeenAcpaTxt
  loc_B578A5: FStAdFunc var_88
  loc_B578A8: FLdPr var_88
  loc_B578AB: Me.Text = from_stack_1
  loc_B578B0: FFree1Ad var_88
  loc_B578B3: LitStr vbNullString
  loc_B578B6: FLdPr Me
  loc_B578B9: VCallAd Control_ID_NumeAcpaTxt
  loc_B578BC: FStAdFunc var_88
  loc_B578BF: FLdPr var_88
  loc_B578C2: Me.Text = from_stack_1
  loc_B578C7: FFree1Ad var_88
  loc_B578CA: LitStr vbNullString
  loc_B578CD: FLdPr Me
  loc_B578D0: VCallAd Control_ID_FepaPagoTxt
  loc_B578D3: FStAdFunc var_88
  loc_B578D6: FLdPr var_88
  loc_B578D9: Me.Text = from_stack_1
  loc_B578DE: FFree1Ad var_88
  loc_B578E1: LitStr vbNullString
  loc_B578E4: FLdPr Me
  loc_B578E7: VCallAd Control_ID_FeacPagoTxt
  loc_B578EA: FStAdFunc var_88
  loc_B578ED: FLdPr var_88
  loc_B578F0: Me.Text = from_stack_1
  loc_B578F5: FFree1Ad var_88
  loc_B578F8: LitStr vbNullString
  loc_B578FB: FLdPr Me
  loc_B578FE: VCallAd Control_ID_CodiFapaTxt
  loc_B57901: FStAdFunc var_88
  loc_B57904: FLdPr var_88
  loc_B57907: Me.Text = from_stack_1
  loc_B5790C: FFree1Ad var_88
  loc_B5790F: LitStr vbNullString
  loc_B57912: FLdPr Me
  loc_B57915: VCallAd Control_ID_CuotDefaTxt
  loc_B57918: FStAdFunc var_88
  loc_B5791B: FLdPr var_88
  loc_B5791E: Me.Text = from_stack_1
  loc_B57923: FFree1Ad var_88
  loc_B57926: LitI4 1
  loc_B5792B: LitI4 1
  loc_B57930: LitVarStr var_B8, "0.00"
  loc_B57935: FStVarCopyObj var_C8
  loc_B57938: FLdRfVar var_C8
  loc_B5793B: LitVarStr var_98, "0"
  loc_B57940: FStVarCopyObj var_A8
  loc_B57943: FLdRfVar var_A8
  loc_B57946: FLdRfVar var_D8
  loc_B57949: ImpAdCallFPR4  = Format(, )
  loc_B5794E: FLdRfVar var_D8
  loc_B57951: CStrVarVal var_DC
  loc_B57955: FLdPr Me
  loc_B57958: VCallAd Control_ID_CapiBoleTxt
  loc_B5795B: FStAdFunc var_88
  loc_B5795E: FLdPr var_88
  loc_B57961: Me.Text = from_stack_1
  loc_B57966: FFree1Str var_DC
  loc_B57969: FFree1Ad var_88
  loc_B5796C: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57975: LitI4 1
  loc_B5797A: LitI4 1
  loc_B5797F: LitVarStr var_B8, "0.00"
  loc_B57984: FStVarCopyObj var_C8
  loc_B57987: FLdRfVar var_C8
  loc_B5798A: LitVarStr var_98, "0"
  loc_B5798F: FStVarCopyObj var_A8
  loc_B57992: FLdRfVar var_A8
  loc_B57995: FLdRfVar var_D8
  loc_B57998: ImpAdCallFPR4  = Format(, )
  loc_B5799D: FLdRfVar var_D8
  loc_B579A0: CStrVarVal var_DC
  loc_B579A4: FLdPr Me
  loc_B579A7: VCallAd Control_ID_RecaBoleTxt
  loc_B579AA: FStAdFunc var_88
  loc_B579AD: FLdPr var_88
  loc_B579B0: Me.Text = from_stack_1
  loc_B579B5: FFree1Str var_DC
  loc_B579B8: FFree1Ad var_88
  loc_B579BB: FFreeVar var_A8 = "": var_C8 = ""
  loc_B579C4: LitI4 1
  loc_B579C9: LitI4 1
  loc_B579CE: LitVarStr var_B8, "0.00"
  loc_B579D3: FStVarCopyObj var_C8
  loc_B579D6: FLdRfVar var_C8
  loc_B579D9: LitVarStr var_98, "0"
  loc_B579DE: FStVarCopyObj var_A8
  loc_B579E1: FLdRfVar var_A8
  loc_B579E4: FLdRfVar var_D8
  loc_B579E7: ImpAdCallFPR4  = Format(, )
  loc_B579EC: FLdRfVar var_D8
  loc_B579EF: CStrVarVal var_DC
  loc_B579F3: FLdPr Me
  loc_B579F6: VCallAd Control_ID_DecaBoleTxt
  loc_B579F9: FStAdFunc var_88
  loc_B579FC: FLdPr var_88
  loc_B579FF: Me.Text = from_stack_1
  loc_B57A04: FFree1Str var_DC
  loc_B57A07: FFree1Ad var_88
  loc_B57A0A: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57A13: LitI4 1
  loc_B57A18: LitI4 1
  loc_B57A1D: LitVarStr var_B8, "0.00"
  loc_B57A22: FStVarCopyObj var_C8
  loc_B57A25: FLdRfVar var_C8
  loc_B57A28: LitVarStr var_98, "0"
  loc_B57A2D: FStVarCopyObj var_A8
  loc_B57A30: FLdRfVar var_A8
  loc_B57A33: FLdRfVar var_D8
  loc_B57A36: ImpAdCallFPR4  = Format(, )
  loc_B57A3B: FLdRfVar var_D8
  loc_B57A3E: CStrVarVal var_DC
  loc_B57A42: FLdPr Me
  loc_B57A45: VCallAd Control_ID_DereBoleTxt
  loc_B57A48: FStAdFunc var_88
  loc_B57A4B: FLdPr var_88
  loc_B57A4E: Me.Text = from_stack_1
  loc_B57A53: FFree1Str var_DC
  loc_B57A56: FFree1Ad var_88
  loc_B57A59: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57A62: LitI4 1
  loc_B57A67: LitI4 1
  loc_B57A6C: LitVarStr var_B8, "0.00"
  loc_B57A71: FStVarCopyObj var_C8
  loc_B57A74: FLdRfVar var_C8
  loc_B57A77: LitVarStr var_98, "0"
  loc_B57A7C: FStVarCopyObj var_A8
  loc_B57A7F: FLdRfVar var_A8
  loc_B57A82: FLdRfVar var_D8
  loc_B57A85: ImpAdCallFPR4  = Format(, )
  loc_B57A8A: FLdRfVar var_D8
  loc_B57A8D: CStrVarVal var_DC
  loc_B57A91: FLdPr Me
  loc_B57A94: VCallAd Control_ID_InteBoleTxt
  loc_B57A97: FStAdFunc var_88
  loc_B57A9A: FLdPr var_88
  loc_B57A9D: Me.Text = from_stack_1
  loc_B57AA2: FFree1Str var_DC
  loc_B57AA5: FFree1Ad var_88
  loc_B57AA8: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57AB1: LitI4 1
  loc_B57AB6: LitI4 1
  loc_B57ABB: LitVarStr var_B8, "0.00"
  loc_B57AC0: FStVarCopyObj var_C8
  loc_B57AC3: FLdRfVar var_C8
  loc_B57AC6: LitVarStr var_98, "0"
  loc_B57ACB: FStVarCopyObj var_A8
  loc_B57ACE: FLdRfVar var_A8
  loc_B57AD1: FLdRfVar var_D8
  loc_B57AD4: ImpAdCallFPR4  = Format(, )
  loc_B57AD9: FLdRfVar var_D8
  loc_B57ADC: CStrVarVal var_DC
  loc_B57AE0: FLdPr Me
  loc_B57AE3: VCallAd Control_ID_ApreBoleTxt
  loc_B57AE6: FStAdFunc var_88
  loc_B57AE9: FLdPr var_88
  loc_B57AEC: Me.Text = from_stack_1
  loc_B57AF1: FFree1Str var_DC
  loc_B57AF4: FFree1Ad var_88
  loc_B57AF7: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57B00: LitI4 1
  loc_B57B05: LitI4 1
  loc_B57B0A: LitVarStr var_B8, "0.00"
  loc_B57B0F: FStVarCopyObj var_C8
  loc_B57B12: FLdRfVar var_C8
  loc_B57B15: LitVarStr var_98, "0"
  loc_B57B1A: FStVarCopyObj var_A8
  loc_B57B1D: FLdRfVar var_A8
  loc_B57B20: FLdRfVar var_D8
  loc_B57B23: ImpAdCallFPR4  = Format(, )
  loc_B57B28: FLdRfVar var_D8
  loc_B57B2B: CStrVarVal var_DC
  loc_B57B2F: FLdPr Me
  loc_B57B32: VCallAd Control_ID_TotaBoleTxt
  loc_B57B35: FStAdFunc var_88
  loc_B57B38: FLdPr var_88
  loc_B57B3B: Me.Text = from_stack_1
  loc_B57B40: FFree1Str var_DC
  loc_B57B43: FFree1Ad var_88
  loc_B57B46: FFreeVar var_A8 = "": var_C8 = ""
  loc_B57B4F: LitStr "SELECT * FROM detapago WHERE FeenAcpa = '1900-01-01'"
  loc_B57B52: LitStr " AND NumeAcpa = 0"
  loc_B57B55: ConcatStr
  loc_B57B56: FStStrNoPop var_DC
  loc_B57B59: LitStr " AND PeriBole = 0"
  loc_B57B5C: ConcatStr
  loc_B57B5D: FStStrNoPop var_E0
  loc_B57B60: LitStr " AND NumeBole = 0"
  loc_B57B63: ConcatStr
  loc_B57B64: FStStrNoPop var_E4
  loc_B57B67: LitStr " AND PeriCtct = 0"
  loc_B57B6A: ConcatStr
  loc_B57B6B: FStStrNoPop var_E8
  loc_B57B6E: LitStr " AND NumeCtct = 0"
  loc_B57B71: ConcatStr
  loc_B57B72: FStStrNoPop var_EC
  loc_B57B75: LitStr " AND MoviCtct = 0"
  loc_B57B78: ConcatStr
  loc_B57B79: FStStrNoPop var_F0
  loc_B57B7C: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_B57B7F: ConcatStr
  loc_B57B80: FStStrNoPop var_F4
  loc_B57B83: FLdPr Me
  loc_B57B86: MemLdRfVar from_stack_1.global_88
  loc_B57B89: NewIfNullPr clsdetapago
  loc_B57B8C: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_B57B91: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_B57BA2: LitStr "SELECT CodiCtde, DebeCtde FROM ctactedeta WHERE CodiOfic = 0 AND CuenCtct = 0"
  loc_B57BA5: FLdPr Me
  loc_B57BA8: MemLdRfVar from_stack_1.global_56
  loc_B57BAB: NewIfNullPr clsctacte
  loc_B57BAE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B57BB3: ExitProcHresult
End Function

Private Function Proc_266_26_C6A57C() 'C6A57C
  'Data Table: 542B30
  loc_C69488: ImpAdLdUI1
  loc_C6948C: CI2UI1
  loc_C6948E: LitI2_Byte 1
  loc_C69490: EqI2
  loc_C69491: BranchF loc_C69A6E
  loc_C69494: FLdRfVar var_8C
  loc_C69497: FLdPr Me
  loc_C6949A: VCallAd Control_ID_NumeCtaTxt
  loc_C6949D: FStAdFunc var_88
  loc_C694A0: FLdPr var_88
  loc_C694A3:  = Me.Text
  loc_C694A8: FLdPr Me
  loc_C694AB: MemLdRfVar from_stack_1.global_132
  loc_C694AE: NewIfNullRf
  loc_C694B2: ILdRf var_8C
  loc_C694B5: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_C694BA: FFree1Str var_8C
  loc_C694BD: FFree1Ad var_88
  loc_C694C0: BranchF loc_C6989F
  loc_C694C3: LitI2_Byte &HFF
  loc_C694C5: FLdPr Me
  loc_C694C8: VCallAd Control_ID_InmuebleFrm
  loc_C694CB: FStAdFunc var_88
  loc_C694CE: FLdPr var_88
  loc_C694D1: Me.Visible = from_stack_1b
  loc_C694D6: FFree1Ad var_88
  loc_C694D9: LitI2 480
  loc_C694DC: CR8I2
  loc_C694DD: PopFPR4
  loc_C694DE: FLdPr Me
  loc_C694E1: VCallAd Control_ID_InmuebleFrm
  loc_C694E4: FStAdFunc var_88
  loc_C694E7: FLdPr var_88
  loc_C694EA: Me.Top = from_stack_1s
  loc_C694EF: FFree1Ad var_88
  loc_C694F2: FLdRfVar var_8C
  loc_C694F5: FLdPr Me
  loc_C694F8: MemLdRfVar from_stack_1.global_132
  loc_C694FB: NewIfNullPr tblPersonaGIS
  loc_C694FE: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_C69503: ILdRf var_8C
  loc_C69506: FLdPr Me
  loc_C69509: VCallAd Control_ID_DetaCallLbl
  loc_C6950C: FStAdFunc var_88
  loc_C6950F: FLdPr var_88
  loc_C69512: Me.Caption = from_stack_1
  loc_C69517: FFree1Str var_8C
  loc_C6951A: FFree1Ad var_88
  loc_C6951D: FLdRfVar var_8C
  loc_C69520: FLdPr Me
  loc_C69523: MemLdRfVar from_stack_1.global_132
  loc_C69526: NewIfNullPr tblPersonaGIS
  loc_C69529: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_C6952E: ILdRf var_8C
  loc_C69531: FLdPr Me
  loc_C69534: VCallAd Control_ID_NumeCasaLbl
  loc_C69537: FStAdFunc var_88
  loc_C6953A: FLdPr var_88
  loc_C6953D: Me.Caption = from_stack_1
  loc_C69542: FFree1Str var_8C
  loc_C69545: FFree1Ad var_88
  loc_C69548: FLdRfVar var_8C
  loc_C6954B: FLdPr Me
  loc_C6954E: MemLdRfVar from_stack_1.global_132
  loc_C69551: NewIfNullPr tblPersonaGIS
  loc_C69554: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_C69559: ILdRf var_8C
  loc_C6955C: FLdPr Me
  loc_C6955F: VCallAd Control_ID_DetaBarrLbl
  loc_C69562: FStAdFunc var_88
  loc_C69565: FLdPr var_88
  loc_C69568: Me.Caption = from_stack_1
  loc_C6956D: FFree1Str var_8C
  loc_C69570: FFree1Ad var_88
  loc_C69573: FLdRfVar var_8C
  loc_C69576: FLdPr Me
  loc_C69579: MemLdRfVar from_stack_1.global_132
  loc_C6957C: NewIfNullPr tblPersonaGIS
  loc_C6957F: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_C69584: ILdRf var_8C
  loc_C69587: FLdPr Me
  loc_C6958A: VCallAd Control_ID_ManzRealLbl
  loc_C6958D: FStAdFunc var_88
  loc_C69590: FLdPr var_88
  loc_C69593: Me.Caption = from_stack_1
  loc_C69598: FFree1Str var_8C
  loc_C6959B: FFree1Ad var_88
  loc_C6959E: FLdRfVar var_8C
  loc_C695A1: FLdPr Me
  loc_C695A4: MemLdRfVar from_stack_1.global_132
  loc_C695A7: NewIfNullPr tblPersonaGIS
  loc_C695AA: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_C695AF: ILdRf var_8C
  loc_C695B2: FLdPr Me
  loc_C695B5: VCallAd Control_ID_CasaRealLbl
  loc_C695B8: FStAdFunc var_88
  loc_C695BB: FLdPr var_88
  loc_C695BE: Me.Caption = from_stack_1
  loc_C695C3: FFree1Str var_8C
  loc_C695C6: FFree1Ad var_88
  loc_C695C9: FLdRfVar var_8C
  loc_C695CC: FLdPr Me
  loc_C695CF: MemLdRfVar from_stack_1.global_132
  loc_C695D2: NewIfNullPr tblPersonaGIS
  loc_C695D5: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_C695DA: ILdRf var_8C
  loc_C695DD: FLdPr Me
  loc_C695E0: VCallAd Control_ID_DetaLocaLbl
  loc_C695E3: FStAdFunc var_88
  loc_C695E6: FLdPr var_88
  loc_C695E9: Me.Caption = from_stack_1
  loc_C695EE: FFree1Str var_8C
  loc_C695F1: FFree1Ad var_88
  loc_C695F4: FLdRfVar var_8C
  loc_C695F7: FLdPr Me
  loc_C695FA: MemLdRfVar from_stack_1.global_132
  loc_C695FD: NewIfNullPr tblPersonaGIS
  loc_C69600: from_stack_1v = tblPersonaGIS.DependenciaGet()
  loc_C69605: ILdRf var_8C
  loc_C69608: FLdPr Me
  loc_C6960B: VCallAd Control_ID_DptoNomeLbl
  loc_C6960E: FStAdFunc var_88
  loc_C69611: FLdPr var_88
  loc_C69614: Me.Caption = from_stack_1
  loc_C69619: FFree1Str var_8C
  loc_C6961C: FFree1Ad var_88
  loc_C6961F: FLdRfVar var_8C
  loc_C69622: FLdPr Me
  loc_C69625: MemLdRfVar from_stack_1.global_132
  loc_C69628: NewIfNullPr tblPersonaGIS
  loc_C6962B: from_stack_1v = tblPersonaGIS.DistritoGet()
  loc_C69630: ILdRf var_8C
  loc_C69633: FLdPr Me
  loc_C69636: VCallAd Control_ID_DistNomeLbl
  loc_C69639: FStAdFunc var_88
  loc_C6963C: FLdPr var_88
  loc_C6963F: Me.Caption = from_stack_1
  loc_C69644: FFree1Str var_8C
  loc_C69647: FFree1Ad var_88
  loc_C6964A: FLdRfVar var_8C
  loc_C6964D: FLdPr Me
  loc_C69650: MemLdRfVar from_stack_1.global_132
  loc_C69653: NewIfNullPr tblPersonaGIS
  loc_C69656: from_stack_1v = tblPersonaGIS.SeccionGet()
  loc_C6965B: ILdRf var_8C
  loc_C6965E: FLdPr Me
  loc_C69661: VCallAd Control_ID_SeccNomeLbl
  loc_C69664: FStAdFunc var_88
  loc_C69667: FLdPr var_88
  loc_C6966A: Me.Caption = from_stack_1
  loc_C6966F: FFree1Str var_8C
  loc_C69672: FFree1Ad var_88
  loc_C69675: FLdRfVar var_8C
  loc_C69678: FLdPr Me
  loc_C6967B: MemLdRfVar from_stack_1.global_132
  loc_C6967E: NewIfNullPr tblPersonaGIS
  loc_C69681: from_stack_1v = tblPersonaGIS.ManzanaGet()
  loc_C69686: ILdRf var_8C
  loc_C69689: FLdPr Me
  loc_C6968C: VCallAd Control_ID_ManzNomeLbl
  loc_C6968F: FStAdFunc var_88
  loc_C69692: FLdPr var_88
  loc_C69695: Me.Caption = from_stack_1
  loc_C6969A: FFree1Str var_8C
  loc_C6969D: FFree1Ad var_88
  loc_C696A0: FLdRfVar var_8C
  loc_C696A3: FLdPr Me
  loc_C696A6: MemLdRfVar from_stack_1.global_132
  loc_C696A9: NewIfNullPr tblPersonaGIS
  loc_C696AC: from_stack_1v = tblPersonaGIS.ParcelaGet()
  loc_C696B1: ILdRf var_8C
  loc_C696B4: FLdPr Me
  loc_C696B7: VCallAd Control_ID_ParcNomeLbl
  loc_C696BA: FStAdFunc var_88
  loc_C696BD: FLdPr var_88
  loc_C696C0: Me.Caption = from_stack_1
  loc_C696C5: FFree1Str var_8C
  loc_C696C8: FFree1Ad var_88
  loc_C696CB: FLdRfVar var_8C
  loc_C696CE: FLdPr Me
  loc_C696D1: MemLdRfVar from_stack_1.global_132
  loc_C696D4: NewIfNullPr tblPersonaGIS
  loc_C696D7: from_stack_1v = tblPersonaGIS.SubparcelaGet()
  loc_C696DC: ILdRf var_8C
  loc_C696DF: FLdPr Me
  loc_C696E2: VCallAd Control_ID_SubpNomeLbl
  loc_C696E5: FStAdFunc var_88
  loc_C696E8: FLdPr var_88
  loc_C696EB: Me.Caption = from_stack_1
  loc_C696F0: FFree1Str var_8C
  loc_C696F3: FFree1Ad var_88
  loc_C696F6: FLdRfVar var_8C
  loc_C696F9: FLdPr Me
  loc_C696FC: MemLdRfVar from_stack_1.global_132
  loc_C696FF: NewIfNullPr tblPersonaGIS
  loc_C69702: from_stack_1v = tblPersonaGIS.DigiVeriGet()
  loc_C69707: ILdRf var_8C
  loc_C6970A: FLdPr Me
  loc_C6970D: VCallAd Control_ID_DigiNomeLbl
  loc_C69710: FStAdFunc var_88
  loc_C69713: FLdPr var_88
  loc_C69716: Me.Caption = from_stack_1
  loc_C6971B: FFree1Str var_8C
  loc_C6971E: FFree1Ad var_88
  loc_C69721: FLdRfVar var_8C
  loc_C69724: FLdPr Me
  loc_C69727: MemLdRfVar from_stack_1.global_132
  loc_C6972A: NewIfNullPr tblPersonaGIS
  loc_C6972D: from_stack_1v = tblPersonaGIS.SupeInmuGet()
  loc_C69732: ILdRf var_8C
  loc_C69735: FLdPr Me
  loc_C69738: VCallAd Control_ID_SupeInmuLbl
  loc_C6973B: FStAdFunc var_88
  loc_C6973E: FLdPr var_88
  loc_C69741: Me.Caption = from_stack_1
  loc_C69746: FFree1Str var_8C
  loc_C69749: FFree1Ad var_88
  loc_C6974C: FLdRfVar var_8C
  loc_C6974F: FLdPr Me
  loc_C69752: MemLdRfVar from_stack_1.global_132
  loc_C69755: NewIfNullPr tblPersonaGIS
  loc_C69758: from_stack_1v = tblPersonaGIS.CodiRyBGet()
  loc_C6975D: ILdRf var_8C
  loc_C69760: LitStr " - "
  loc_C69763: ConcatStr
  loc_C69764: FStStrNoPop var_94
  loc_C69767: FLdRfVar var_90
  loc_C6976A: FLdPr Me
  loc_C6976D: MemLdRfVar from_stack_1.global_132
  loc_C69770: NewIfNullPr tblPersonaGIS
  loc_C69773: from_stack_1v = tblPersonaGIS.DetaRyBGet()
  loc_C69778: ILdRf var_90
  loc_C6977B: ConcatStr
  loc_C6977C: FStStrNoPop var_98
  loc_C6977F: FLdPr Me
  loc_C69782: VCallAd Control_ID_CodiRyB
  loc_C69785: FStAdFunc var_88
  loc_C69788: FLdPr var_88
  loc_C6978B: Me.Caption = from_stack_1
  loc_C69790: FFreeStr var_8C = "": var_94 = "": var_90 = ""
  loc_C6979B: FFree1Ad var_88
  loc_C6979E: FLdRfVar var_8C
  loc_C697A1: FLdPr Me
  loc_C697A4: MemLdRfVar from_stack_1.global_132
  loc_C697A7: NewIfNullPr tblPersonaGIS
  loc_C697AA: from_stack_1v = tblPersonaGIS.CodiEstaGet()
  loc_C697AF: ILdRf var_8C
  loc_C697B2: LitStr " - "
  loc_C697B5: ConcatStr
  loc_C697B6: FStStrNoPop var_94
  loc_C697B9: FLdRfVar var_90
  loc_C697BC: FLdPr Me
  loc_C697BF: MemLdRfVar from_stack_1.global_132
  loc_C697C2: NewIfNullPr tblPersonaGIS
  loc_C697C5: from_stack_1v = tblPersonaGIS.DetaEstaGet()
  loc_C697CA: ILdRf var_90
  loc_C697CD: ConcatStr
  loc_C697CE: FStStrNoPop var_98
  loc_C697D1: FLdPr Me
  loc_C697D4: VCallAd Control_ID_DetaEstaLbl
  loc_C697D7: FStAdFunc var_88
  loc_C697DA: FLdPr var_88
  loc_C697DD: Me.Caption = from_stack_1
  loc_C697E2: FFreeStr var_8C = "": var_94 = "": var_90 = ""
  loc_C697ED: FFree1Ad var_88
  loc_C697F0: FLdRfVar var_8C
  loc_C697F3: FLdPr Me
  loc_C697F6: MemLdRfVar from_stack_1.global_132
  loc_C697F9: NewIfNullPr tblPersonaGIS
  loc_C697FC: from_stack_1v = tblPersonaGIS.FechEstaGet()
  loc_C69801: ILdRf var_8C
  loc_C69804: FLdPr Me
  loc_C69807: VCallAd Control_ID_FechEstaLbl
  loc_C6980A: FStAdFunc var_88
  loc_C6980D: FLdPr var_88
  loc_C69810: Me.Caption = from_stack_1
  loc_C69815: FFree1Str var_8C
  loc_C69818: FFree1Ad var_88
  loc_C6981B: FLdRfVar var_8C
  loc_C6981E: FLdPr Me
  loc_C69821: MemLdRfVar from_stack_1.global_132
  loc_C69824: NewIfNullPr tblPersonaGIS
  loc_C69827: from_stack_1v = tblPersonaGIS.AvalInmuGet()
  loc_C6982C: ILdRf var_8C
  loc_C6982F: FLdPr Me
  loc_C69832: VCallAd Control_ID_AvalInmuLbl
  loc_C69835: FStAdFunc var_88
  loc_C69838: FLdPr var_88
  loc_C6983B: Me.Caption = from_stack_1
  loc_C69840: FFree1Str var_8C
  loc_C69843: FFree1Ad var_88
  loc_C69846: FLdRfVar var_8C
  loc_C69849: FLdPr Me
  loc_C6984C: MemLdRfVar from_stack_1.global_132
  loc_C6984F: NewIfNullPr tblPersonaGIS
  loc_C69852: from_stack_1v = tblPersonaGIS.FechAltaGet()
  loc_C69857: ILdRf var_8C
  loc_C6985A: FLdPr Me
  loc_C6985D: VCallAd Control_ID_FechAltaLbl
  loc_C69860: FStAdFunc var_88
  loc_C69863: FLdPr var_88
  loc_C69866: Me.Caption = from_stack_1
  loc_C6986B: FFree1Str var_8C
  loc_C6986E: FFree1Ad var_88
  loc_C69871: FLdRfVar var_8C
  loc_C69874: FLdPr Me
  loc_C69877: MemLdRfVar from_stack_1.global_132
  loc_C6987A: NewIfNullPr tblPersonaGIS
  loc_C6987D: from_stack_1v = tblPersonaGIS.FechModiGet()
  loc_C69882: ILdRf var_8C
  loc_C69885: FLdPr Me
  loc_C69888: VCallAd Control_ID_FechModiLbl
  loc_C6988B: FStAdFunc var_88
  loc_C6988E: FLdPr var_88
  loc_C69891: Me.Caption = from_stack_1
  loc_C69896: FFree1Str var_8C
  loc_C69899: FFree1Ad var_88
  loc_C6989C: Branch loc_C69A6B
  loc_C6989F: LitStr vbNullString
  loc_C698A2: FLdPr Me
  loc_C698A5: VCallAd Control_ID_DetaCallLbl
  loc_C698A8: FStAdFunc var_88
  loc_C698AB: FLdPr var_88
  loc_C698AE: Me.Caption = from_stack_1
  loc_C698B3: FFree1Ad var_88
  loc_C698B6: LitStr vbNullString
  loc_C698B9: FLdPr Me
  loc_C698BC: VCallAd Control_ID_NumeCasaLbl
  loc_C698BF: FStAdFunc var_88
  loc_C698C2: FLdPr var_88
  loc_C698C5: Me.Caption = from_stack_1
  loc_C698CA: FFree1Ad var_88
  loc_C698CD: LitStr vbNullString
  loc_C698D0: FLdPr Me
  loc_C698D3: VCallAd Control_ID_DetaBarrLbl
  loc_C698D6: FStAdFunc var_88
  loc_C698D9: FLdPr var_88
  loc_C698DC: Me.Caption = from_stack_1
  loc_C698E1: FFree1Ad var_88
  loc_C698E4: LitStr vbNullString
  loc_C698E7: FLdPr Me
  loc_C698EA: VCallAd Control_ID_ManzRealLbl
  loc_C698ED: FStAdFunc var_88
  loc_C698F0: FLdPr var_88
  loc_C698F3: Me.Caption = from_stack_1
  loc_C698F8: FFree1Ad var_88
  loc_C698FB: LitStr vbNullString
  loc_C698FE: FLdPr Me
  loc_C69901: VCallAd Control_ID_CasaRealLbl
  loc_C69904: FStAdFunc var_88
  loc_C69907: FLdPr var_88
  loc_C6990A: Me.Caption = from_stack_1
  loc_C6990F: FFree1Ad var_88
  loc_C69912: LitStr vbNullString
  loc_C69915: FLdPr Me
  loc_C69918: VCallAd Control_ID_DetaLocaLbl
  loc_C6991B: FStAdFunc var_88
  loc_C6991E: FLdPr var_88
  loc_C69921: Me.Caption = from_stack_1
  loc_C69926: FFree1Ad var_88
  loc_C69929: LitStr vbNullString
  loc_C6992C: FLdPr Me
  loc_C6992F: VCallAd Control_ID_DptoNomeLbl
  loc_C69932: FStAdFunc var_88
  loc_C69935: FLdPr var_88
  loc_C69938: Me.Caption = from_stack_1
  loc_C6993D: FFree1Ad var_88
  loc_C69940: LitStr vbNullString
  loc_C69943: FLdPr Me
  loc_C69946: VCallAd Control_ID_DistNomeLbl
  loc_C69949: FStAdFunc var_88
  loc_C6994C: FLdPr var_88
  loc_C6994F: Me.Caption = from_stack_1
  loc_C69954: FFree1Ad var_88
  loc_C69957: LitStr vbNullString
  loc_C6995A: FLdPr Me
  loc_C6995D: VCallAd Control_ID_SeccNomeLbl
  loc_C69960: FStAdFunc var_88
  loc_C69963: FLdPr var_88
  loc_C69966: Me.Caption = from_stack_1
  loc_C6996B: FFree1Ad var_88
  loc_C6996E: LitStr vbNullString
  loc_C69971: FLdPr Me
  loc_C69974: VCallAd Control_ID_ManzNomeLbl
  loc_C69977: FStAdFunc var_88
  loc_C6997A: FLdPr var_88
  loc_C6997D: Me.Caption = from_stack_1
  loc_C69982: FFree1Ad var_88
  loc_C69985: LitStr vbNullString
  loc_C69988: FLdPr Me
  loc_C6998B: VCallAd Control_ID_ParcNomeLbl
  loc_C6998E: FStAdFunc var_88
  loc_C69991: FLdPr var_88
  loc_C69994: Me.Caption = from_stack_1
  loc_C69999: FFree1Ad var_88
  loc_C6999C: LitStr vbNullString
  loc_C6999F: FLdPr Me
  loc_C699A2: VCallAd Control_ID_SubpNomeLbl
  loc_C699A5: FStAdFunc var_88
  loc_C699A8: FLdPr var_88
  loc_C699AB: Me.Caption = from_stack_1
  loc_C699B0: FFree1Ad var_88
  loc_C699B3: LitStr vbNullString
  loc_C699B6: FLdPr Me
  loc_C699B9: VCallAd Control_ID_DigiNomeLbl
  loc_C699BC: FStAdFunc var_88
  loc_C699BF: FLdPr var_88
  loc_C699C2: Me.Caption = from_stack_1
  loc_C699C7: FFree1Ad var_88
  loc_C699CA: LitStr vbNullString
  loc_C699CD: FLdPr Me
  loc_C699D0: VCallAd Control_ID_SupeInmuLbl
  loc_C699D3: FStAdFunc var_88
  loc_C699D6: FLdPr var_88
  loc_C699D9: Me.Caption = from_stack_1
  loc_C699DE: FFree1Ad var_88
  loc_C699E1: LitStr vbNullString
  loc_C699E4: FLdPr Me
  loc_C699E7: VCallAd Control_ID_CodiRyB
  loc_C699EA: FStAdFunc var_88
  loc_C699ED: FLdPr var_88
  loc_C699F0: Me.Caption = from_stack_1
  loc_C699F5: FFree1Ad var_88
  loc_C699F8: LitStr vbNullString
  loc_C699FB: FLdPr Me
  loc_C699FE: VCallAd Control_ID_DetaEstaLbl
  loc_C69A01: FStAdFunc var_88
  loc_C69A04: FLdPr var_88
  loc_C69A07: Me.Caption = from_stack_1
  loc_C69A0C: FFree1Ad var_88
  loc_C69A0F: LitStr vbNullString
  loc_C69A12: FLdPr Me
  loc_C69A15: VCallAd Control_ID_FechEstaLbl
  loc_C69A18: FStAdFunc var_88
  loc_C69A1B: FLdPr var_88
  loc_C69A1E: Me.Caption = from_stack_1
  loc_C69A23: FFree1Ad var_88
  loc_C69A26: LitStr vbNullString
  loc_C69A29: FLdPr Me
  loc_C69A2C: VCallAd Control_ID_AvalInmuLbl
  loc_C69A2F: FStAdFunc var_88
  loc_C69A32: FLdPr var_88
  loc_C69A35: Me.Caption = from_stack_1
  loc_C69A3A: FFree1Ad var_88
  loc_C69A3D: LitStr vbNullString
  loc_C69A40: FLdPr Me
  loc_C69A43: VCallAd Control_ID_FechAltaLbl
  loc_C69A46: FStAdFunc var_88
  loc_C69A49: FLdPr var_88
  loc_C69A4C: Me.Caption = from_stack_1
  loc_C69A51: FFree1Ad var_88
  loc_C69A54: LitStr vbNullString
  loc_C69A57: FLdPr Me
  loc_C69A5A: VCallAd Control_ID_FechModiLbl
  loc_C69A5D: FStAdFunc var_88
  loc_C69A60: FLdPr var_88
  loc_C69A63: Me.Caption = from_stack_1
  loc_C69A68: FFree1Ad var_88
  loc_C69A6B: Branch loc_C6A578
  loc_C69A6E: ImpAdLdUI1
  loc_C69A72: CI2UI1
  loc_C69A74: LitI2_Byte 2
  loc_C69A76: EqI2
  loc_C69A77: BranchF loc_C69FF0
  loc_C69A7A: LitI2_Byte &HFF
  loc_C69A7C: FLdPr Me
  loc_C69A7F: VCallAd Control_ID_ComercioFrm
  loc_C69A82: FStAdFunc var_88
  loc_C69A85: FLdPr var_88
  loc_C69A88: Me.Visible = from_stack_1b
  loc_C69A8D: FFree1Ad var_88
  loc_C69A90: LitI2 480
  loc_C69A93: CR8I2
  loc_C69A94: PopFPR4
  loc_C69A95: FLdPr Me
  loc_C69A98: VCallAd Control_ID_ComercioFrm
  loc_C69A9B: FStAdFunc var_88
  loc_C69A9E: FLdPr var_88
  loc_C69AA1: Me.Top = from_stack_1s
  loc_C69AA6: FFree1Ad var_88
  loc_C69AA9: LitVar_TRUE var_A8
  loc_C69AAC: PopAdLdVar
  loc_C69AAD: FLdPr Me
  loc_C69AB0: VCallAd Control_ID_dgdRubros
  loc_C69AB3: FStAdFunc var_88
  loc_C69AB6: FLdPr var_88
  loc_C69AB9: LateIdSt
  loc_C69ABE: FFree1Ad var_88
  loc_C69AC1: LitStr "SELECT CodiCome, CucuPers, comercio.CodiEsco, DetaEsco, FeesCome, CodiInmu, CucuCome, RazoCome, FebaCome, ExbaCome FROM comercio "
  loc_C69AC4: LitStr " INNER JOIN estacome ON estacome.CodiEsco = comercio.CodiEsco"
  loc_C69AC7: ConcatStr
  loc_C69AC8: FStStrNoPop var_8C
  loc_C69ACB: LitStr " WHERE CodiCome = "
  loc_C69ACE: ConcatStr
  loc_C69ACF: FStStrNoPop var_94
  loc_C69AD2: FLdRfVar var_90
  loc_C69AD5: FLdPr Me
  loc_C69AD8: VCallAd Control_ID_NumeCtaTxt
  loc_C69ADB: FStAdFunc var_88
  loc_C69ADE: FLdPr var_88
  loc_C69AE1:  = Me.Text
  loc_C69AE6: ILdRf var_90
  loc_C69AE9: ConcatStr
  loc_C69AEA: FStStrNoPop var_98
  loc_C69AED: FLdPr Me
  loc_C69AF0: MemLdRfVar from_stack_1.global_112
  loc_C69AF3: NewIfNullPr clscomercio
  loc_C69AF6: Call clscomercio.RedefineRS(from_stack_1v)
  loc_C69AFB: FFreeStr var_8C = "": var_94 = "": var_90 = ""
  loc_C69B06: FFree1Ad var_88
  loc_C69B09: FLdRfVar var_BC
  loc_C69B0C: FLdPr Me
  loc_C69B0F: MemLdRfVar from_stack_1.global_112
  loc_C69B12: NewIfNullPr clscomercio
  loc_C69B15: from_stack_1 = clscomercio.RecordCount
  loc_C69B1A: ILdRf var_BC
  loc_C69B1D: LitI4 0
  loc_C69B22: GtI4
  loc_C69B23: BranchF loc_C69F0A
  loc_C69B26: FLdRfVar var_D4
  loc_C69B29: FLdRfVar var_C4
  loc_C69B2C: LitVarStr var_A8, "RazoCome"
  loc_C69B31: PopAdLdVar
  loc_C69B32: FLdRfVar var_C0
  loc_C69B35: FLdRfVar var_88
  loc_C69B38: FLdPr Me
  loc_C69B3B: MemLdRfVar from_stack_1.global_112
  loc_C69B3E: NewIfNullPr clscomercio
  loc_C69B41: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69B46: FLdPr var_88
  loc_C69B49:  = Me.Fields
  loc_C69B4E: FLdPr var_C0
  loc_C69B51: from_stack_2 = Me.Item(from_stack_1)
  loc_C69B56: FLdPr var_C4
  loc_C69B59:  = Me.Value
  loc_C69B5E: FLdRfVar var_D4
  loc_C69B61: CStrVarTmp
  loc_C69B62: FStStrNoPop var_8C
  loc_C69B65: FLdPr Me
  loc_C69B68: VCallAd Control_ID_RasoComeTxt
  loc_C69B6B: FStAdFunc var_D8
  loc_C69B6E: FLdPr var_D8
  loc_C69B71: Me.Text = from_stack_1
  loc_C69B76: FFree1Str var_8C
  loc_C69B79: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C69B84: FFree1Var var_D4 = ""
  loc_C69B87: FLdRfVar var_D4
  loc_C69B8A: FLdRfVar var_C4
  loc_C69B8D: LitVarStr var_A8, "CodiInmu"
  loc_C69B92: PopAdLdVar
  loc_C69B93: FLdRfVar var_C0
  loc_C69B96: FLdRfVar var_88
  loc_C69B99: FLdPr Me
  loc_C69B9C: MemLdRfVar from_stack_1.global_112
  loc_C69B9F: NewIfNullPr clscomercio
  loc_C69BA2: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69BA7: FLdPr var_88
  loc_C69BAA:  = Me.Fields
  loc_C69BAF: FLdPr var_C0
  loc_C69BB2: from_stack_2 = Me.Item(from_stack_1)
  loc_C69BB7: FLdPr var_C4
  loc_C69BBA:  = Me.Value
  loc_C69BBF: FLdPr Me
  loc_C69BC2: MemLdRfVar from_stack_1.global_132
  loc_C69BC5: NewIfNullRf
  loc_C69BC9: FLdRfVar var_D4
  loc_C69BCC: CStrVarTmp
  loc_C69BCD: FStStrNoPop var_8C
  loc_C69BD0: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_C69BD5: FFree1Str var_8C
  loc_C69BD8: FFreeAd var_88 = "": var_C0 = ""
  loc_C69BE1: FFree1Var var_D4 = ""
  loc_C69BE4: BranchF loc_C69C74
  loc_C69BE7: FLdRfVar var_D4
  loc_C69BEA: FLdRfVar var_C4
  loc_C69BED: LitVarStr var_A8, "CodiInmu"
  loc_C69BF2: PopAdLdVar
  loc_C69BF3: FLdRfVar var_C0
  loc_C69BF6: FLdRfVar var_88
  loc_C69BF9: FLdPr Me
  loc_C69BFC: MemLdRfVar from_stack_1.global_112
  loc_C69BFF: NewIfNullPr clscomercio
  loc_C69C02: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69C07: FLdPr var_88
  loc_C69C0A:  = Me.Fields
  loc_C69C0F: FLdPr var_C0
  loc_C69C12: from_stack_2 = Me.Item(from_stack_1)
  loc_C69C17: FLdPr var_C4
  loc_C69C1A:  = Me.Value
  loc_C69C1F: FLdRfVar var_D4
  loc_C69C22: LitVarStr var_B8, " - "
  loc_C69C27: ConcatVar var_E8
  loc_C69C2B: FLdRfVar var_8C
  loc_C69C2E: FLdPr Me
  loc_C69C31: MemLdRfVar from_stack_1.global_132
  loc_C69C34: NewIfNullPr tblPersonaGIS
  loc_C69C37: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C69C3C: FLdZeroAd var_8C
  loc_C69C3F: CVarStr var_F8
  loc_C69C42: ConcatVar var_108
  loc_C69C46: CStrVarVal var_90
  loc_C69C4A: FLdPr Me
  loc_C69C4D: VCallAd Control_ID_CodiInmuTxt
  loc_C69C50: FStAdFunc var_D8
  loc_C69C53: FLdPr var_D8
  loc_C69C56: Me.Text = from_stack_1
  loc_C69C5B: FFree1Str var_90
  loc_C69C5E: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C69C69: FFreeVar var_D4 = "": var_E8 = "": var_F8 = ""
  loc_C69C74: FLdRfVar var_D4
  loc_C69C77: FLdRfVar var_C4
  loc_C69C7A: LitVarStr var_A8, "CodiEsco"
  loc_C69C7F: PopAdLdVar
  loc_C69C80: FLdRfVar var_C0
  loc_C69C83: FLdRfVar var_88
  loc_C69C86: FLdPr Me
  loc_C69C89: MemLdRfVar from_stack_1.global_112
  loc_C69C8C: NewIfNullPr clscomercio
  loc_C69C8F: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69C94: FLdPr var_88
  loc_C69C97:  = Me.Fields
  loc_C69C9C: FLdPr var_C0
  loc_C69C9F: from_stack_2 = Me.Item(from_stack_1)
  loc_C69CA4: FLdPr var_C4
  loc_C69CA7:  = Me.Value
  loc_C69CAC: FLdRfVar var_D4
  loc_C69CAF: LitVarStr var_B8, " - "
  loc_C69CB4: ConcatVar var_E8
  loc_C69CB8: FLdRfVar var_F8
  loc_C69CBB: FLdRfVar var_120
  loc_C69CBE: LitVarStr var_11C, "DetaEsco"
  loc_C69CC3: PopAdLdVar
  loc_C69CC4: FLdRfVar var_10C
  loc_C69CC7: FLdRfVar var_D8
  loc_C69CCA: FLdPr Me
  loc_C69CCD: MemLdRfVar from_stack_1.global_112
  loc_C69CD0: NewIfNullPr clscomercio
  loc_C69CD3: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69CD8: FLdPr var_D8
  loc_C69CDB:  = Me.Fields
  loc_C69CE0: FLdPr var_10C
  loc_C69CE3: from_stack_2 = Me.Item(from_stack_1)
  loc_C69CE8: FLdPr var_120
  loc_C69CEB:  = Me.Value
  loc_C69CF0: FLdRfVar var_F8
  loc_C69CF3: ConcatVar var_108
  loc_C69CF7: CStrVarVal var_8C
  loc_C69CFB: FLdPr Me
  loc_C69CFE: VCallAd Control_ID_EstaComeTxt
  loc_C69D01: FStAdFunc var_124
  loc_C69D04: FLdPr var_124
  loc_C69D07: Me.Text = from_stack_1
  loc_C69D0C: FFree1Str var_8C
  loc_C69D0F: FFreeAd var_88 = "": var_C0 = "": var_C4 = "": var_D8 = "": var_10C = "": var_120 = ""
  loc_C69D20: FFreeVar var_D4 = "": var_E8 = "": var_F8 = ""
  loc_C69D2B: FLdRfVar var_C4
  loc_C69D2E: LitVarStr var_A8, "FeesCome"
  loc_C69D33: PopAdLdVar
  loc_C69D34: FLdRfVar var_C0
  loc_C69D37: FLdRfVar var_88
  loc_C69D3A: FLdPr Me
  loc_C69D3D: MemLdRfVar from_stack_1.global_112
  loc_C69D40: NewIfNullPr clscomercio
  loc_C69D43: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69D48: FLdPr var_88
  loc_C69D4B:  = Me.Fields
  loc_C69D50: FLdPr var_C0
  loc_C69D53: from_stack_2 = Me.Item(from_stack_1)
  loc_C69D58: FLdZeroAd var_C4
  loc_C69D5B: CVarAd
  loc_C69D5F: ImpAdCallI2 IsNull()
  loc_C69D64: FStI2 var_156
  loc_C69D67: FLdRfVar var_120
  loc_C69D6A: LitVarStr var_B8, "FeesCome"
  loc_C69D6F: PopAdLdVar
  loc_C69D70: FLdRfVar var_10C
  loc_C69D73: FLdRfVar var_D8
  loc_C69D76: FLdPr Me
  loc_C69D79: MemLdRfVar from_stack_1.global_112
  loc_C69D7C: NewIfNullPr clscomercio
  loc_C69D7F: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69D84: FLdPr var_D8
  loc_C69D87:  = Me.Fields
  loc_C69D8C: FLdPr var_10C
  loc_C69D8F: from_stack_2 = Me.Item(from_stack_1)
  loc_C69D94: FLdZeroAd var_120
  loc_C69D97: CVarAd
  loc_C69D9B: LitVarStr var_134, vbNullString
  loc_C69DA0: FStVarCopyObj var_E8
  loc_C69DA3: FLdRfVar var_E8
  loc_C69DA6: FLdI2 var_156
  loc_C69DA9: CVarBoolI2 var_11C
  loc_C69DAD: FLdRfVar var_108
  loc_C69DB0: ImpAdCallFPR4  = IIf(, , )
  loc_C69DB5: FLdRfVar var_108
  loc_C69DB8: CStrVarTmp
  loc_C69DB9: CVarStr var_144
  loc_C69DBC: PopAdLdVar
  loc_C69DBD: FLdPr Me
  loc_C69DC0: VCallAd Control_ID_FeesComeMsk
  loc_C69DC3: FStAdFunc var_124
  loc_C69DC6: FLdPr var_124
  loc_C69DC9: LateIdSt
  loc_C69DCE: FFreeAd var_88 = "": var_C0 = "": var_D8 = "": var_10C = ""
  loc_C69DDB: FFreeVar var_D4 = "": var_11C = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_C69DEA: FLdRfVar var_C4
  loc_C69DED: LitVarStr var_A8, "FebaCome"
  loc_C69DF2: PopAdLdVar
  loc_C69DF3: FLdRfVar var_C0
  loc_C69DF6: FLdRfVar var_88
  loc_C69DF9: FLdPr Me
  loc_C69DFC: MemLdRfVar from_stack_1.global_112
  loc_C69DFF: NewIfNullPr clscomercio
  loc_C69E02: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69E07: FLdPr var_88
  loc_C69E0A:  = Me.Fields
  loc_C69E0F: FLdPr var_C0
  loc_C69E12: from_stack_2 = Me.Item(from_stack_1)
  loc_C69E17: FLdZeroAd var_C4
  loc_C69E1A: CVarAd
  loc_C69E1E: ImpAdCallI2 IsNull()
  loc_C69E23: FStI2 var_156
  loc_C69E26: FLdRfVar var_120
  loc_C69E29: LitVarStr var_B8, "FebaCome"
  loc_C69E2E: PopAdLdVar
  loc_C69E2F: FLdRfVar var_10C
  loc_C69E32: FLdRfVar var_D8
  loc_C69E35: FLdPr Me
  loc_C69E38: MemLdRfVar from_stack_1.global_112
  loc_C69E3B: NewIfNullPr clscomercio
  loc_C69E3E: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69E43: FLdPr var_D8
  loc_C69E46:  = Me.Fields
  loc_C69E4B: FLdPr var_10C
  loc_C69E4E: from_stack_2 = Me.Item(from_stack_1)
  loc_C69E53: FLdZeroAd var_120
  loc_C69E56: CVarAd
  loc_C69E5A: LitVarStr var_134, vbNullString
  loc_C69E5F: FStVarCopyObj var_E8
  loc_C69E62: FLdRfVar var_E8
  loc_C69E65: FLdI2 var_156
  loc_C69E68: CVarBoolI2 var_11C
  loc_C69E6C: FLdRfVar var_108
  loc_C69E6F: ImpAdCallFPR4  = IIf(, , )
  loc_C69E74: FLdRfVar var_108
  loc_C69E77: CStrVarTmp
  loc_C69E78: CVarStr var_144
  loc_C69E7B: PopAdLdVar
  loc_C69E7C: FLdPr Me
  loc_C69E7F: VCallAd Control_ID_FebaComeMsk
  loc_C69E82: FStAdFunc var_124
  loc_C69E85: FLdPr var_124
  loc_C69E88: LateIdSt
  loc_C69E8D: FFreeAd var_88 = "": var_C0 = "": var_D8 = "": var_10C = ""
  loc_C69E9A: FFreeVar var_D4 = "": var_11C = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_C69EA9: FLdRfVar var_D4
  loc_C69EAC: FLdRfVar var_C4
  loc_C69EAF: LitVarStr var_A8, "ExbaCome"
  loc_C69EB4: PopAdLdVar
  loc_C69EB5: FLdRfVar var_C0
  loc_C69EB8: FLdRfVar var_88
  loc_C69EBB: FLdPr Me
  loc_C69EBE: MemLdRfVar from_stack_1.global_112
  loc_C69EC1: NewIfNullPr clscomercio
  loc_C69EC4: from_stack_1v = clscomercio.RsFrmGet()
  loc_C69EC9: FLdPr var_88
  loc_C69ECC:  = Me.Fields
  loc_C69ED1: FLdPr var_C0
  loc_C69ED4: from_stack_2 = Me.Item(from_stack_1)
  loc_C69ED9: FLdPr var_C4
  loc_C69EDC:  = Me.Value
  loc_C69EE1: FLdRfVar var_D4
  loc_C69EE4: CStrVarTmp
  loc_C69EE5: FStStrNoPop var_8C
  loc_C69EE8: FLdPr Me
  loc_C69EEB: VCallAd Control_ID_ExbaComeTxt
  loc_C69EEE: FStAdFunc var_D8
  loc_C69EF1: FLdPr var_D8
  loc_C69EF4: Me.Text = from_stack_1
  loc_C69EF9: FFree1Str var_8C
  loc_C69EFC: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C69F07: FFree1Var var_D4 = ""
  loc_C69F0A: LitStr " SELECT servcome.CodiRubr, DetaRubr, servcome.CodiSubr, DetaSubr, FealSeco, ExalSeco, FebaSeco, ExbaSeco,AcprSeco, CantSeco from servcome "
  loc_C69F0D: LitStr " INNER JOIN rubro ON rubro.CodiRamo = servcome.CodiRamo"
  loc_C69F10: ConcatStr
  loc_C69F11: FStStrNoPop var_8C
  loc_C69F14: LitStr " AND rubro.CodiRubr = servcome.CodiRubr"
  loc_C69F17: ConcatStr
  loc_C69F18: FStStrNoPop var_90
  loc_C69F1B: LitStr " INNER JOIN subrubro ON subrubro.CodiRamo = servcome.CodiRamo"
  loc_C69F1E: ConcatStr
  loc_C69F1F: FStStrNoPop var_94
  loc_C69F22: LitStr " AND subrubro.CodiRubr = servcome.CodiRubr"
  loc_C69F25: ConcatStr
  loc_C69F26: FStStrNoPop var_98
  loc_C69F29: LitStr " AND subrubro.PeriOrde = "
  loc_C69F2C: ConcatStr
  loc_C69F2D: FStStrNoPop var_15C
  loc_C69F30: ImpAdLdI2 MemVar_D93034
  loc_C69F33: CStrUI1
  loc_C69F35: FStStrNoPop var_160
  loc_C69F38: ConcatStr
  loc_C69F39: FStStrNoPop var_164
  loc_C69F3C: LitStr " AND subrubro.CodiSubr = servcome.CodiSubr"
  loc_C69F3F: ConcatStr
  loc_C69F40: FStStrNoPop var_168
  loc_C69F43: LitStr " WHERE CodiCome = "
  loc_C69F46: ConcatStr
  loc_C69F47: FStStrNoPop var_170
  loc_C69F4A: FLdRfVar var_16C
  loc_C69F4D: FLdPr Me
  loc_C69F50: VCallAd Control_ID_NumeCtaTxt
  loc_C69F53: FStAdFunc var_88
  loc_C69F56: FLdPr var_88
  loc_C69F59:  = Me.Text
  loc_C69F5E: ILdRf var_16C
  loc_C69F61: ConcatStr
  loc_C69F62: FStStrNoPop var_174
  loc_C69F65: FLdPr Me
  loc_C69F68: MemLdRfVar from_stack_1.global_120
  loc_C69F6B: NewIfNullPr clsservcome
  loc_C69F6E: Call clsservcome.RedefineRS(from_stack_1v)
  loc_C69F73: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_16C = ""
  loc_C69F8C: FFree1Ad var_88
  loc_C69F8F: LitI4 0
  loc_C69F94: LitI4 1
  loc_C69F99: FLdRfVar var_178
  loc_C69F9C: Redim
  loc_C69FA6: FLdPr Me
  loc_C69FA9: MemLdRfVar from_stack_1.global_120
  loc_C69FAC: NewIfNullAd
  loc_C69FAF: FStAd var_88 
  loc_C69FB3: FLdRfVar var_88
  loc_C69FB6: CVarRef
  loc_C69FBB: ParmAry1St
  loc_C69FC1: FLdPr Me
  loc_C69FC4: VCallAd Control_ID_dgdRubros
  loc_C69FC7: CVarAd
  loc_C69FCB: ParmAry1St
  loc_C69FD1: FLdRfVar var_178
  loc_C69FD4: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_C69FD9: ILdRf var_88
  loc_C69FDC: CastAd
  loc_C69FDF: FLdPr Me
  loc_C69FE2: MemStAdFunc
  loc_C69FE6: FLdRfVar var_178
  loc_C69FE9: Erase
  loc_C69FEA: FFree1Ad var_88
  loc_C69FED: Branch loc_C6A578
  loc_C69FF0: ImpAdLdUI1
  loc_C69FF4: CI2UI1
  loc_C69FF6: LitI2_Byte 6
  loc_C69FF8: EqI2
  loc_C69FF9: BranchF loc_C6A578
  loc_C69FFC: LitI2_Byte &HFF
  loc_C69FFE: FLdPr Me
  loc_C6A001: VCallAd Control_ID_ComercioFrm
  loc_C6A004: FStAdFunc var_88
  loc_C6A007: FLdPr var_88
  loc_C6A00A: Me.Visible = from_stack_1b
  loc_C6A00F: FFree1Ad var_88
  loc_C6A012: LitI2 480
  loc_C6A015: CR8I2
  loc_C6A016: PopFPR4
  loc_C6A017: FLdPr Me
  loc_C6A01A: VCallAd Control_ID_ComercioFrm
  loc_C6A01D: FStAdFunc var_88
  loc_C6A020: FLdPr var_88
  loc_C6A023: Me.Top = from_stack_1s
  loc_C6A028: FFree1Ad var_88
  loc_C6A02B: LitVar_TRUE var_A8
  loc_C6A02E: PopAdLdVar
  loc_C6A02F: FLdPr Me
  loc_C6A032: VCallAd Control_ID_dgdRubros
  loc_C6A035: FStAdFunc var_88
  loc_C6A038: FLdPr var_88
  loc_C6A03B: LateIdSt
  loc_C6A040: FFree1Ad var_88
  loc_C6A043: LitStr "SELECT CodiCome, CucuPers, publicidad.CodiEsco, DetaEsco, FeesCome, CodiInmu, CucuCome, RazoCome, FebaCome, ExbaCome "
  loc_C6A046: LitStr " FROM publicidad"
  loc_C6A049: ConcatStr
  loc_C6A04A: FStStrNoPop var_8C
  loc_C6A04D: LitStr " INNER JOIN estacome ON estacome.CodiEsco = publicidad.CodiEsco"
  loc_C6A050: ConcatStr
  loc_C6A051: FStStrNoPop var_90
  loc_C6A054: LitStr " WHERE CodiCome = "
  loc_C6A057: ConcatStr
  loc_C6A058: FStStrNoPop var_98
  loc_C6A05B: FLdRfVar var_94
  loc_C6A05E: FLdPr Me
  loc_C6A061: VCallAd Control_ID_NumeCtaTxt
  loc_C6A064: FStAdFunc var_88
  loc_C6A067: FLdPr var_88
  loc_C6A06A:  = Me.Text
  loc_C6A06F: ILdRf var_94
  loc_C6A072: ConcatStr
  loc_C6A073: FStStrNoPop var_15C
  loc_C6A076: FLdPr Me
  loc_C6A079: MemLdRfVar from_stack_1.global_112
  loc_C6A07C: NewIfNullPr clscomercio
  loc_C6A07F: Call clscomercio.RedefineRS(from_stack_1v)
  loc_C6A084: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = ""
  loc_C6A091: FFree1Ad var_88
  loc_C6A094: FLdRfVar var_BC
  loc_C6A097: FLdPr Me
  loc_C6A09A: MemLdRfVar from_stack_1.global_112
  loc_C6A09D: NewIfNullPr clscomercio
  loc_C6A0A0: from_stack_1 = clscomercio.RecordCount
  loc_C6A0A5: ILdRf var_BC
  loc_C6A0A8: LitI4 0
  loc_C6A0AD: GtI4
  loc_C6A0AE: BranchF loc_C6A495
  loc_C6A0B1: FLdRfVar var_D4
  loc_C6A0B4: FLdRfVar var_C4
  loc_C6A0B7: LitVarStr var_A8, "RazoCome"
  loc_C6A0BC: PopAdLdVar
  loc_C6A0BD: FLdRfVar var_C0
  loc_C6A0C0: FLdRfVar var_88
  loc_C6A0C3: FLdPr Me
  loc_C6A0C6: MemLdRfVar from_stack_1.global_112
  loc_C6A0C9: NewIfNullPr clscomercio
  loc_C6A0CC: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A0D1: FLdPr var_88
  loc_C6A0D4:  = Me.Fields
  loc_C6A0D9: FLdPr var_C0
  loc_C6A0DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A0E1: FLdPr var_C4
  loc_C6A0E4:  = Me.Value
  loc_C6A0E9: FLdRfVar var_D4
  loc_C6A0EC: CStrVarTmp
  loc_C6A0ED: FStStrNoPop var_8C
  loc_C6A0F0: FLdPr Me
  loc_C6A0F3: VCallAd Control_ID_RasoComeTxt
  loc_C6A0F6: FStAdFunc var_D8
  loc_C6A0F9: FLdPr var_D8
  loc_C6A0FC: Me.Text = from_stack_1
  loc_C6A101: FFree1Str var_8C
  loc_C6A104: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C6A10F: FFree1Var var_D4 = ""
  loc_C6A112: FLdRfVar var_D4
  loc_C6A115: FLdRfVar var_C4
  loc_C6A118: LitVarStr var_A8, "CodiInmu"
  loc_C6A11D: PopAdLdVar
  loc_C6A11E: FLdRfVar var_C0
  loc_C6A121: FLdRfVar var_88
  loc_C6A124: FLdPr Me
  loc_C6A127: MemLdRfVar from_stack_1.global_112
  loc_C6A12A: NewIfNullPr clscomercio
  loc_C6A12D: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A132: FLdPr var_88
  loc_C6A135:  = Me.Fields
  loc_C6A13A: FLdPr var_C0
  loc_C6A13D: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A142: FLdPr var_C4
  loc_C6A145:  = Me.Value
  loc_C6A14A: FLdPr Me
  loc_C6A14D: MemLdRfVar from_stack_1.global_132
  loc_C6A150: NewIfNullRf
  loc_C6A154: FLdRfVar var_D4
  loc_C6A157: CStrVarTmp
  loc_C6A158: FStStrNoPop var_8C
  loc_C6A15B: ImpAdCallI2 Proc_270_13_C86920(, )
  loc_C6A160: FFree1Str var_8C
  loc_C6A163: FFreeAd var_88 = "": var_C0 = ""
  loc_C6A16C: FFree1Var var_D4 = ""
  loc_C6A16F: BranchF loc_C6A1FF
  loc_C6A172: FLdRfVar var_D4
  loc_C6A175: FLdRfVar var_C4
  loc_C6A178: LitVarStr var_A8, "CodiInmu"
  loc_C6A17D: PopAdLdVar
  loc_C6A17E: FLdRfVar var_C0
  loc_C6A181: FLdRfVar var_88
  loc_C6A184: FLdPr Me
  loc_C6A187: MemLdRfVar from_stack_1.global_112
  loc_C6A18A: NewIfNullPr clscomercio
  loc_C6A18D: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A192: FLdPr var_88
  loc_C6A195:  = Me.Fields
  loc_C6A19A: FLdPr var_C0
  loc_C6A19D: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A1A2: FLdPr var_C4
  loc_C6A1A5:  = Me.Value
  loc_C6A1AA: FLdRfVar var_D4
  loc_C6A1AD: LitVarStr var_B8, " - "
  loc_C6A1B2: ConcatVar var_E8
  loc_C6A1B6: FLdRfVar var_8C
  loc_C6A1B9: FLdPr Me
  loc_C6A1BC: MemLdRfVar from_stack_1.global_132
  loc_C6A1BF: NewIfNullPr tblPersonaGIS
  loc_C6A1C2: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C6A1C7: FLdZeroAd var_8C
  loc_C6A1CA: CVarStr var_F8
  loc_C6A1CD: ConcatVar var_108
  loc_C6A1D1: CStrVarVal var_90
  loc_C6A1D5: FLdPr Me
  loc_C6A1D8: VCallAd Control_ID_CodiInmuTxt
  loc_C6A1DB: FStAdFunc var_D8
  loc_C6A1DE: FLdPr var_D8
  loc_C6A1E1: Me.Text = from_stack_1
  loc_C6A1E6: FFree1Str var_90
  loc_C6A1E9: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C6A1F4: FFreeVar var_D4 = "": var_E8 = "": var_F8 = ""
  loc_C6A1FF: FLdRfVar var_D4
  loc_C6A202: FLdRfVar var_C4
  loc_C6A205: LitVarStr var_A8, "CodiEsco"
  loc_C6A20A: PopAdLdVar
  loc_C6A20B: FLdRfVar var_C0
  loc_C6A20E: FLdRfVar var_88
  loc_C6A211: FLdPr Me
  loc_C6A214: MemLdRfVar from_stack_1.global_112
  loc_C6A217: NewIfNullPr clscomercio
  loc_C6A21A: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A21F: FLdPr var_88
  loc_C6A222:  = Me.Fields
  loc_C6A227: FLdPr var_C0
  loc_C6A22A: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A22F: FLdPr var_C4
  loc_C6A232:  = Me.Value
  loc_C6A237: FLdRfVar var_D4
  loc_C6A23A: LitVarStr var_B8, " - "
  loc_C6A23F: ConcatVar var_E8
  loc_C6A243: FLdRfVar var_F8
  loc_C6A246: FLdRfVar var_120
  loc_C6A249: LitVarStr var_11C, "DetaEsco"
  loc_C6A24E: PopAdLdVar
  loc_C6A24F: FLdRfVar var_10C
  loc_C6A252: FLdRfVar var_D8
  loc_C6A255: FLdPr Me
  loc_C6A258: MemLdRfVar from_stack_1.global_112
  loc_C6A25B: NewIfNullPr clscomercio
  loc_C6A25E: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A263: FLdPr var_D8
  loc_C6A266:  = Me.Fields
  loc_C6A26B: FLdPr var_10C
  loc_C6A26E: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A273: FLdPr var_120
  loc_C6A276:  = Me.Value
  loc_C6A27B: FLdRfVar var_F8
  loc_C6A27E: ConcatVar var_108
  loc_C6A282: CStrVarVal var_8C
  loc_C6A286: FLdPr Me
  loc_C6A289: VCallAd Control_ID_EstaComeTxt
  loc_C6A28C: FStAdFunc var_124
  loc_C6A28F: FLdPr var_124
  loc_C6A292: Me.Text = from_stack_1
  loc_C6A297: FFree1Str var_8C
  loc_C6A29A: FFreeAd var_88 = "": var_C0 = "": var_C4 = "": var_D8 = "": var_10C = "": var_120 = ""
  loc_C6A2AB: FFreeVar var_D4 = "": var_E8 = "": var_F8 = ""
  loc_C6A2B6: FLdRfVar var_C4
  loc_C6A2B9: LitVarStr var_A8, "FeesCome"
  loc_C6A2BE: PopAdLdVar
  loc_C6A2BF: FLdRfVar var_C0
  loc_C6A2C2: FLdRfVar var_88
  loc_C6A2C5: FLdPr Me
  loc_C6A2C8: MemLdRfVar from_stack_1.global_112
  loc_C6A2CB: NewIfNullPr clscomercio
  loc_C6A2CE: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A2D3: FLdPr var_88
  loc_C6A2D6:  = Me.Fields
  loc_C6A2DB: FLdPr var_C0
  loc_C6A2DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A2E3: FLdZeroAd var_C4
  loc_C6A2E6: CVarAd
  loc_C6A2EA: ImpAdCallI2 IsNull()
  loc_C6A2EF: FStI2 var_156
  loc_C6A2F2: FLdRfVar var_120
  loc_C6A2F5: LitVarStr var_B8, "FeesCome"
  loc_C6A2FA: PopAdLdVar
  loc_C6A2FB: FLdRfVar var_10C
  loc_C6A2FE: FLdRfVar var_D8
  loc_C6A301: FLdPr Me
  loc_C6A304: MemLdRfVar from_stack_1.global_112
  loc_C6A307: NewIfNullPr clscomercio
  loc_C6A30A: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A30F: FLdPr var_D8
  loc_C6A312:  = Me.Fields
  loc_C6A317: FLdPr var_10C
  loc_C6A31A: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A31F: FLdZeroAd var_120
  loc_C6A322: CVarAd
  loc_C6A326: LitVarStr var_134, vbNullString
  loc_C6A32B: FStVarCopyObj var_E8
  loc_C6A32E: FLdRfVar var_E8
  loc_C6A331: FLdI2 var_156
  loc_C6A334: CVarBoolI2 var_11C
  loc_C6A338: FLdRfVar var_108
  loc_C6A33B: ImpAdCallFPR4  = IIf(, , )
  loc_C6A340: FLdRfVar var_108
  loc_C6A343: CStrVarTmp
  loc_C6A344: CVarStr var_144
  loc_C6A347: PopAdLdVar
  loc_C6A348: FLdPr Me
  loc_C6A34B: VCallAd Control_ID_FeesComeMsk
  loc_C6A34E: FStAdFunc var_124
  loc_C6A351: FLdPr var_124
  loc_C6A354: LateIdSt
  loc_C6A359: FFreeAd var_88 = "": var_C0 = "": var_D8 = "": var_10C = ""
  loc_C6A366: FFreeVar var_D4 = "": var_11C = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_C6A375: FLdRfVar var_C4
  loc_C6A378: LitVarStr var_A8, "FebaCome"
  loc_C6A37D: PopAdLdVar
  loc_C6A37E: FLdRfVar var_C0
  loc_C6A381: FLdRfVar var_88
  loc_C6A384: FLdPr Me
  loc_C6A387: MemLdRfVar from_stack_1.global_112
  loc_C6A38A: NewIfNullPr clscomercio
  loc_C6A38D: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A392: FLdPr var_88
  loc_C6A395:  = Me.Fields
  loc_C6A39A: FLdPr var_C0
  loc_C6A39D: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A3A2: FLdZeroAd var_C4
  loc_C6A3A5: CVarAd
  loc_C6A3A9: ImpAdCallI2 IsNull()
  loc_C6A3AE: FStI2 var_156
  loc_C6A3B1: FLdRfVar var_120
  loc_C6A3B4: LitVarStr var_B8, "FebaCome"
  loc_C6A3B9: PopAdLdVar
  loc_C6A3BA: FLdRfVar var_10C
  loc_C6A3BD: FLdRfVar var_D8
  loc_C6A3C0: FLdPr Me
  loc_C6A3C3: MemLdRfVar from_stack_1.global_112
  loc_C6A3C6: NewIfNullPr clscomercio
  loc_C6A3C9: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A3CE: FLdPr var_D8
  loc_C6A3D1:  = Me.Fields
  loc_C6A3D6: FLdPr var_10C
  loc_C6A3D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A3DE: FLdZeroAd var_120
  loc_C6A3E1: CVarAd
  loc_C6A3E5: LitVarStr var_134, vbNullString
  loc_C6A3EA: FStVarCopyObj var_E8
  loc_C6A3ED: FLdRfVar var_E8
  loc_C6A3F0: FLdI2 var_156
  loc_C6A3F3: CVarBoolI2 var_11C
  loc_C6A3F7: FLdRfVar var_108
  loc_C6A3FA: ImpAdCallFPR4  = IIf(, , )
  loc_C6A3FF: FLdRfVar var_108
  loc_C6A402: CStrVarTmp
  loc_C6A403: CVarStr var_144
  loc_C6A406: PopAdLdVar
  loc_C6A407: FLdPr Me
  loc_C6A40A: VCallAd Control_ID_FebaComeMsk
  loc_C6A40D: FStAdFunc var_124
  loc_C6A410: FLdPr var_124
  loc_C6A413: LateIdSt
  loc_C6A418: FFreeAd var_88 = "": var_C0 = "": var_D8 = "": var_10C = ""
  loc_C6A425: FFreeVar var_D4 = "": var_11C = "": var_E8 = "": var_F8 = "": var_108 = ""
  loc_C6A434: FLdRfVar var_D4
  loc_C6A437: FLdRfVar var_C4
  loc_C6A43A: LitVarStr var_A8, "ExbaCome"
  loc_C6A43F: PopAdLdVar
  loc_C6A440: FLdRfVar var_C0
  loc_C6A443: FLdRfVar var_88
  loc_C6A446: FLdPr Me
  loc_C6A449: MemLdRfVar from_stack_1.global_112
  loc_C6A44C: NewIfNullPr clscomercio
  loc_C6A44F: from_stack_1v = clscomercio.RsFrmGet()
  loc_C6A454: FLdPr var_88
  loc_C6A457:  = Me.Fields
  loc_C6A45C: FLdPr var_C0
  loc_C6A45F: from_stack_2 = Me.Item(from_stack_1)
  loc_C6A464: FLdPr var_C4
  loc_C6A467:  = Me.Value
  loc_C6A46C: FLdRfVar var_D4
  loc_C6A46F: CStrVarTmp
  loc_C6A470: FStStrNoPop var_8C
  loc_C6A473: FLdPr Me
  loc_C6A476: VCallAd Control_ID_ExbaComeTxt
  loc_C6A479: FStAdFunc var_D8
  loc_C6A47C: FLdPr var_D8
  loc_C6A47F: Me.Text = from_stack_1
  loc_C6A484: FFree1Str var_8C
  loc_C6A487: FFreeAd var_88 = "": var_C0 = "": var_C4 = ""
  loc_C6A492: FFree1Var var_D4 = ""
  loc_C6A495: LitStr " SELECT servpubl.CodiRubr, DetaRubr, servpubl.CodiSubr, DetaSubr, FealSeco, ExalSeco, FebaSeco, ExbaSeco,AcprSeco, CantSeco from servpubl"
  loc_C6A498: LitStr " INNER JOIN rubro ON rubro.CodiRamo = servpubl.CodiRamo"
  loc_C6A49B: ConcatStr
  loc_C6A49C: FStStrNoPop var_8C
  loc_C6A49F: LitStr " AND rubro.CodiRubr = servpubl.CodiRubr"
  loc_C6A4A2: ConcatStr
  loc_C6A4A3: FStStrNoPop var_90
  loc_C6A4A6: LitStr " INNER JOIN subrubro ON subrubro.CodiRamo = servpubl.CodiRamo"
  loc_C6A4A9: ConcatStr
  loc_C6A4AA: FStStrNoPop var_94
  loc_C6A4AD: LitStr " AND subrubro.CodiRubr = servpubl.CodiRubr"
  loc_C6A4B0: ConcatStr
  loc_C6A4B1: FStStrNoPop var_98
  loc_C6A4B4: LitStr " AND subrubro.PeriOrde = "
  loc_C6A4B7: ConcatStr
  loc_C6A4B8: FStStrNoPop var_15C
  loc_C6A4BB: ImpAdLdI2 MemVar_D93034
  loc_C6A4BE: CStrUI1
  loc_C6A4C0: FStStrNoPop var_160
  loc_C6A4C3: ConcatStr
  loc_C6A4C4: FStStrNoPop var_164
  loc_C6A4C7: LitStr " AND subrubro.CodiSubr = servpubl.CodiSubr"
  loc_C6A4CA: ConcatStr
  loc_C6A4CB: FStStrNoPop var_168
  loc_C6A4CE: LitStr " WHERE CodiCome = "
  loc_C6A4D1: ConcatStr
  loc_C6A4D2: FStStrNoPop var_170
  loc_C6A4D5: FLdRfVar var_16C
  loc_C6A4D8: FLdPr Me
  loc_C6A4DB: VCallAd Control_ID_NumeCtaTxt
  loc_C6A4DE: FStAdFunc var_88
  loc_C6A4E1: FLdPr var_88
  loc_C6A4E4:  = Me.Text
  loc_C6A4E9: ILdRf var_16C
  loc_C6A4EC: ConcatStr
  loc_C6A4ED: FStStrNoPop var_174
  loc_C6A4F0: FLdPr Me
  loc_C6A4F3: MemLdRfVar from_stack_1.global_120
  loc_C6A4F6: NewIfNullPr clsservcome
  loc_C6A4F9: Call clsservcome.RedefineRS(from_stack_1v)
  loc_C6A4FE: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_170 = "": var_16C = ""
  loc_C6A517: FFree1Ad var_88
  loc_C6A51A: LitI4 0
  loc_C6A51F: LitI4 1
  loc_C6A524: FLdRfVar var_178
  loc_C6A527: Redim
  loc_C6A531: FLdPr Me
  loc_C6A534: MemLdRfVar from_stack_1.global_120
  loc_C6A537: NewIfNullAd
  loc_C6A53A: FStAd var_88 
  loc_C6A53E: FLdRfVar var_88
  loc_C6A541: CVarRef
  loc_C6A546: ParmAry1St
  loc_C6A54C: FLdPr Me
  loc_C6A54F: VCallAd Control_ID_dgdRubros
  loc_C6A552: CVarAd
  loc_C6A556: ParmAry1St
  loc_C6A55C: FLdRfVar var_178
  loc_C6A55F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_C6A564: ILdRf var_88
  loc_C6A567: CastAd
  loc_C6A56A: FLdPr Me
  loc_C6A56D: MemStAdFunc
  loc_C6A571: FLdRfVar var_178
  loc_C6A574: Erase
  loc_C6A575: FFree1Ad var_88
  loc_C6A578: ExitProcHresult
  loc_C6A579: AddR8
  loc_C6A57A: FFree1Ad var_47FD
End Function

Private Function Proc_266_27_ACC780() 'ACC780
  'Data Table: 542B30
  loc_ACC654: FLdPr Me
  loc_ACC657: VCallAd Control_ID_ctacteconceptoFlex
  loc_ACC65A: FStAdFunc var_88
  loc_ACC65D: FLdPr var_88
  loc_ACC660: LateIdCall
  loc_ACC668: LitVarI4
  loc_ACC670: PopAdLdVar
  loc_ACC671: FLdPr var_88
  loc_ACC674: LateIdSt
  loc_ACC679: LitVarI4
  loc_ACC681: PopAdLdVar
  loc_ACC682: LitVarI4
  loc_ACC68A: PopAdLdVar
  loc_ACC68B: LitVarStr var_D8, "Concepto"
  loc_ACC690: PopAdLdVar
  loc_ACC691: FLdPr var_88
  loc_ACC694: LateIdCallSt
  loc_ACC69C: LitVarI4
  loc_ACC6A4: PopAdLdVar
  loc_ACC6A5: LitVarI4
  loc_ACC6AD: PopAdLdVar
  loc_ACC6AE: LitVarStr var_D8, "Rec"
  loc_ACC6B3: PopAdLdVar
  loc_ACC6B4: FLdPr var_88
  loc_ACC6B7: LateIdCallSt
  loc_ACC6BF: LitVarI4
  loc_ACC6C7: PopAdLdVar
  loc_ACC6C8: LitVarI4
  loc_ACC6D0: PopAdLdVar
  loc_ACC6D1: LitVarStr var_D8, "Detalle"
  loc_ACC6D6: PopAdLdVar
  loc_ACC6D7: FLdPr var_88
  loc_ACC6DA: LateIdCallSt
  loc_ACC6E2: LitVarI4
  loc_ACC6EA: PopAdLdVar
  loc_ACC6EB: LitVarI4
  loc_ACC6F3: PopAdLdVar
  loc_ACC6F4: LitVarStr var_D8, "Debito"
  loc_ACC6F9: PopAdLdVar
  loc_ACC6FA: FLdPr var_88
  loc_ACC6FD: LateIdCallSt
  loc_ACC705: LitVarI4
  loc_ACC70D: PopAdLdVar
  loc_ACC70E: LitVarI4
  loc_ACC716: PopAdLdVar
  loc_ACC717: LitVarStr var_D8, "Credito"
  loc_ACC71C: PopAdLdVar
  loc_ACC71D: FLdPr var_88
  loc_ACC720: LateIdCallSt
  loc_ACC728: LitVarI4
  loc_ACC730: PopAdLdVar
  loc_ACC731: LitVarI4
  loc_ACC739: PopAdLdVar
  loc_ACC73A: LitVarStr var_D8, "Recargo"
  loc_ACC73F: PopAdLdVar
  loc_ACC740: FLdPr var_88
  loc_ACC743: LateIdCallSt
  loc_ACC74B: LitVarI4
  loc_ACC753: PopAdLdVar
  loc_ACC754: LitVarI4
  loc_ACC75C: PopAdLdVar
  loc_ACC75D: LitVarStr var_D8, "Saldo"
  loc_ACC762: PopAdLdVar
  loc_ACC763: FLdPr var_88
  loc_ACC766: LateIdCallSt
  loc_ACC76E: FLdPr var_88
  loc_ACC771: LateIdCall
  loc_ACC779: LitNothing
  loc_ACC77B: FStAd var_88 
  loc_ACC77F: ExitProcHresult
End Function

Private Function Proc_266_28_B07D88() 'B07D88
  'Data Table: 542B30
  loc_B07B64: FLdPr Me
  loc_B07B67: VCallAd Control_ID_ctacteconceptoDetalleFlex
  loc_B07B6A: FStAdFunc var_88
  loc_B07B6D: FLdPr var_88
  loc_B07B70: LateIdCall
  loc_B07B78: LitVarI4
  loc_B07B80: PopAdLdVar
  loc_B07B81: FLdPr var_88
  loc_B07B84: LateIdSt
  loc_B07B89: LitVarI4
  loc_B07B91: PopAdLdVar
  loc_B07B92: LitVarI4
  loc_B07B9A: PopAdLdVar
  loc_B07B9B: LitVarStr var_D8, "Periodo"
  loc_B07BA0: PopAdLdVar
  loc_B07BA1: FLdPr var_88
  loc_B07BA4: LateIdCallSt
  loc_B07BAC: LitVarI4
  loc_B07BB4: PopAdLdVar
  loc_B07BB5: LitVarI4
  loc_B07BBD: PopAdLdVar
  loc_B07BBE: LitVarStr var_D8, "Boleto"
  loc_B07BC3: PopAdLdVar
  loc_B07BC4: FLdPr var_88
  loc_B07BC7: LateIdCallSt
  loc_B07BCF: LitVarI4
  loc_B07BD7: PopAdLdVar
  loc_B07BD8: LitVarI4
  loc_B07BE0: PopAdLdVar
  loc_B07BE1: LitVarStr var_D8, "Fech. Emis"
  loc_B07BE6: PopAdLdVar
  loc_B07BE7: FLdPr var_88
  loc_B07BEA: LateIdCallSt
  loc_B07BF2: LitVarI4
  loc_B07BFA: PopAdLdVar
  loc_B07BFB: LitVarI4
  loc_B07C03: PopAdLdVar
  loc_B07C04: LitVarStr var_D8, "Venc/Pago"
  loc_B07C09: PopAdLdVar
  loc_B07C0A: FLdPr var_88
  loc_B07C0D: LateIdCallSt
  loc_B07C15: LitVarI4
  loc_B07C1D: PopAdLdVar
  loc_B07C1E: LitVarI4
  loc_B07C26: PopAdLdVar
  loc_B07C27: LitVarStr var_D8, "Concepto"
  loc_B07C2C: PopAdLdVar
  loc_B07C2D: FLdPr var_88
  loc_B07C30: LateIdCallSt
  loc_B07C38: LitVarI4
  loc_B07C40: PopAdLdVar
  loc_B07C41: LitVarI4
  loc_B07C49: PopAdLdVar
  loc_B07C4A: LitVarStr var_D8, "R."
  loc_B07C4F: PopAdLdVar
  loc_B07C50: FLdPr var_88
  loc_B07C53: LateIdCallSt
  loc_B07C5B: LitVarI4
  loc_B07C63: PopAdLdVar
  loc_B07C64: LitVarI4
  loc_B07C6C: PopAdLdVar
  loc_B07C6D: LitVarStr var_D8, "Facilidad"
  loc_B07C72: PopAdLdVar
  loc_B07C73: FLdPr var_88
  loc_B07C76: LateIdCallSt
  loc_B07C7E: LitVarI4
  loc_B07C86: PopAdLdVar
  loc_B07C87: LitVarI4
  loc_B07C8F: PopAdLdVar
  loc_B07C90: LitVarStr var_D8, "Apremio"
  loc_B07C95: PopAdLdVar
  loc_B07C96: FLdPr var_88
  loc_B07C99: LateIdCallSt
  loc_B07CA1: LitVarI4
  loc_B07CA9: PopAdLdVar
  loc_B07CAA: LitVarI4
  loc_B07CB2: PopAdLdVar
  loc_B07CB3: LitVarStr var_D8, "Expediente"
  loc_B07CB8: PopAdLdVar
  loc_B07CB9: FLdPr var_88
  loc_B07CBC: LateIdCallSt
  loc_B07CC4: LitVarI4
  loc_B07CCC: PopAdLdVar
  loc_B07CCD: LitVarI4
  loc_B07CD5: PopAdLdVar
  loc_B07CD6: LitVarStr var_D8, "Tipo M."
  loc_B07CDB: PopAdLdVar
  loc_B07CDC: FLdPr var_88
  loc_B07CDF: LateIdCallSt
  loc_B07CE7: LitVarI4
  loc_B07CEF: PopAdLdVar
  loc_B07CF0: LitVarI4
  loc_B07CF8: PopAdLdVar
  loc_B07CF9: LitVarStr var_D8, "Debito"
  loc_B07CFE: PopAdLdVar
  loc_B07CFF: FLdPr var_88
  loc_B07D02: LateIdCallSt
  loc_B07D0A: LitVarI4
  loc_B07D12: PopAdLdVar
  loc_B07D13: LitVarI4
  loc_B07D1B: PopAdLdVar
  loc_B07D1C: LitVarStr var_D8, "Credito"
  loc_B07D21: PopAdLdVar
  loc_B07D22: FLdPr var_88
  loc_B07D25: LateIdCallSt
  loc_B07D2D: LitVarI4
  loc_B07D35: PopAdLdVar
  loc_B07D36: LitVarI4
  loc_B07D3E: PopAdLdVar
  loc_B07D3F: LitVarStr var_D8, "Recargo"
  loc_B07D44: PopAdLdVar
  loc_B07D45: FLdPr var_88
  loc_B07D48: LateIdCallSt
  loc_B07D50: LitVarI4
  loc_B07D58: PopAdLdVar
  loc_B07D59: LitVarI4
  loc_B07D61: PopAdLdVar
  loc_B07D62: LitVarStr var_D8, "Saldo"
  loc_B07D67: PopAdLdVar
  loc_B07D68: FLdPr var_88
  loc_B07D6B: LateIdCallSt
  loc_B07D73: FLdPr var_88
  loc_B07D76: LateIdCall
  loc_B07D7E: LitNothing
  loc_B07D80: FStAd var_88 
  loc_B07D84: ExitProcHresult
  loc_B07D85: NewIfNullPr tblPersonaGIS
End Function

Private Function Proc_266_29_B862FC() 'B862FC
  'Data Table: 542B30
  loc_B85E48: LitStr "SELECT tmp_ctacte.CodiConc, concepto.ConcViej, concepto.DetaConc, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacte "
  loc_B85E4B: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacte.PeriInfo"
  loc_B85E4E: ConcatStr
  loc_B85E4F: FStStrNoPop var_9C
  loc_B85E52: LitStr " AND concepto.CodiConc = tmp_ctacte.CodiConc"
  loc_B85E55: ConcatStr
  loc_B85E56: FStStrNoPop var_A0
  loc_B85E59: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.CodiConc"
  loc_B85E5C: ConcatStr
  loc_B85E5D: FStStrNoPop var_A4
  loc_B85E60: LitStr " HAVING SaldCtct > 0 "
  loc_B85E63: ConcatStr
  loc_B85E64: FStStrNoPop var_A8
  loc_B85E67: FLdPr Me
  loc_B85E6A: MemLdRfVar from_stack_1.global_52
  loc_B85E6D: NewIfNullPr clsctacte
  loc_B85E70: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B85E75: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B85E80: FLdRfVar var_AC
  loc_B85E83: FLdPr Me
  loc_B85E86: MemLdRfVar from_stack_1.global_52
  loc_B85E89: NewIfNullPr clsctacte
  loc_B85E8C: from_stack_1 = clsctacte.RecordCount
  loc_B85E91: ILdRf var_AC
  loc_B85E94: LitI4 0
  loc_B85E99: GtI4
  loc_B85E9A: BranchF loc_B862F8
  loc_B85E9D: FLdPr Me
  loc_B85EA0: MemLdRfVar from_stack_1.global_52
  loc_B85EA3: NewIfNullPr clsctacte
  loc_B85EA6: Call clsctacte.MoveFirst()
  loc_B85EAB: FLdRfVar var_AE
  loc_B85EAE: FLdPr Me
  loc_B85EB1: MemLdRfVar from_stack_1.global_52
  loc_B85EB4: NewIfNullPr clsctacte
  loc_B85EB7: from_stack_1 = clsctacte.EOF
  loc_B85EBC: FLdI2 var_AE
  loc_B85EBF: NotI4
  loc_B85EC0: BranchF loc_B862F8
  loc_B85EC3: FLdRfVar var_DC
  loc_B85EC6: FLdRfVar var_CC
  loc_B85EC9: LitVarStr var_C8, "SaldCtct"
  loc_B85ECE: PopAdLdVar
  loc_B85ECF: FLdRfVar var_B8
  loc_B85ED2: FLdRfVar var_B4
  loc_B85ED5: FLdPr Me
  loc_B85ED8: MemLdRfVar from_stack_1.global_52
  loc_B85EDB: NewIfNullPr clsctacte
  loc_B85EDE: from_stack_1v = clsctacte.RsFrmGet()
  loc_B85EE3: FLdPr var_B4
  loc_B85EE6:  = Me.Fields
  loc_B85EEB: FLdPr var_B8
  loc_B85EEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B85EF3: FLdPr var_CC
  loc_B85EF6:  = Me.Value
  loc_B85EFB: FLdRfVar var_DC
  loc_B85EFE: FnCDblVar
  loc_B85F00: LitI2_Byte 0
  loc_B85F02: CR8I2
  loc_B85F03: NeR8
  loc_B85F04: FFreeAd var_B4 = "": var_B8 = ""
  loc_B85F0D: FFree1Var var_DC = ""
  loc_B85F10: BranchF loc_B85F7E
  loc_B85F13: FLdRfVar var_CC
  loc_B85F16: LitVarStr var_C8, "SaldCtct"
  loc_B85F1B: PopAdLdVar
  loc_B85F1C: FLdRfVar var_B8
  loc_B85F1F: FLdRfVar var_B4
  loc_B85F22: FLdPr Me
  loc_B85F25: MemLdRfVar from_stack_1.global_52
  loc_B85F28: NewIfNullPr clsctacte
  loc_B85F2B: from_stack_1v = clsctacte.RsFrmGet()
  loc_B85F30: FLdPr var_B4
  loc_B85F33:  = Me.Fields
  loc_B85F38: FLdPr var_B8
  loc_B85F3B: from_stack_2 = Me.Item(from_stack_1)
  loc_B85F40: LitI4 1
  loc_B85F45: LitI4 1
  loc_B85F4A: LitVarStr var_EC, "###,###,##0.00"
  loc_B85F4F: FStVarCopyObj var_FC
  loc_B85F52: FLdRfVar var_FC
  loc_B85F55: FLdZeroAd var_CC
  loc_B85F58: CVarAd
  loc_B85F5C: FLdRfVar var_10C
  loc_B85F5F: ImpAdCallFPR4  = Format(, )
  loc_B85F64: FLdRfVar var_10C
  loc_B85F67: CStrVarTmp
  loc_B85F68: FStStr var_8C
  loc_B85F6B: FFreeAd var_B4 = ""
  loc_B85F72: FFreeVar var_DC = "": var_FC = ""
  loc_B85F7B: Branch loc_B85F84
  loc_B85F7E: LitStr vbNullString
  loc_B85F81: FStStrCopy var_8C
  loc_B85F84: LitStr vbNullString
  loc_B85F87: FStStrCopy var_90
  loc_B85F8A: FLdRfVar var_DC
  loc_B85F8D: FLdRfVar var_CC
  loc_B85F90: LitVarStr var_C8, "RecaCtct"
  loc_B85F95: PopAdLdVar
  loc_B85F96: FLdRfVar var_B8
  loc_B85F99: FLdRfVar var_B4
  loc_B85F9C: FLdPr Me
  loc_B85F9F: MemLdRfVar from_stack_1.global_52
  loc_B85FA2: NewIfNullPr clsctacte
  loc_B85FA5: from_stack_1v = clsctacte.RsFrmGet()
  loc_B85FAA: FLdPr var_B4
  loc_B85FAD:  = Me.Fields
  loc_B85FB2: FLdPr var_B8
  loc_B85FB5: from_stack_2 = Me.Item(from_stack_1)
  loc_B85FBA: FLdPr var_CC
  loc_B85FBD:  = Me.Value
  loc_B85FC2: FLdRfVar var_DC
  loc_B85FC5: FnCDblVar
  loc_B85FC7: LitI2_Byte 0
  loc_B85FC9: CR8I2
  loc_B85FCA: NeR8
  loc_B85FCB: FFreeAd var_B4 = "": var_B8 = ""
  loc_B85FD4: FFree1Var var_DC = ""
  loc_B85FD7: BranchF loc_B86045
  loc_B85FDA: FLdRfVar var_CC
  loc_B85FDD: LitVarStr var_C8, "RecaCtct"
  loc_B85FE2: PopAdLdVar
  loc_B85FE3: FLdRfVar var_B8
  loc_B85FE6: FLdRfVar var_B4
  loc_B85FE9: FLdPr Me
  loc_B85FEC: MemLdRfVar from_stack_1.global_52
  loc_B85FEF: NewIfNullPr clsctacte
  loc_B85FF2: from_stack_1v = clsctacte.RsFrmGet()
  loc_B85FF7: FLdPr var_B4
  loc_B85FFA:  = Me.Fields
  loc_B85FFF: FLdPr var_B8
  loc_B86002: from_stack_2 = Me.Item(from_stack_1)
  loc_B86007: LitI4 1
  loc_B8600C: LitI4 1
  loc_B86011: LitVarStr var_EC, "###,###,##0.00"
  loc_B86016: FStVarCopyObj var_FC
  loc_B86019: FLdRfVar var_FC
  loc_B8601C: FLdZeroAd var_CC
  loc_B8601F: CVarAd
  loc_B86023: FLdRfVar var_10C
  loc_B86026: ImpAdCallFPR4  = Format(, )
  loc_B8602B: FLdRfVar var_10C
  loc_B8602E: CStrVarTmp
  loc_B8602F: FStStr var_94
  loc_B86032: FFreeAd var_B4 = ""
  loc_B86039: FFreeVar var_DC = "": var_FC = ""
  loc_B86042: Branch loc_B8604B
  loc_B86045: LitStr vbNullString
  loc_B86048: FStStrCopy var_94
  loc_B8604B: FLdRfVar var_DC
  loc_B8604E: FLdRfVar var_CC
  loc_B86051: LitVarStr var_C8, "SaldCtct"
  loc_B86056: PopAdLdVar
  loc_B86057: FLdRfVar var_B8
  loc_B8605A: FLdRfVar var_B4
  loc_B8605D: FLdPr Me
  loc_B86060: MemLdRfVar from_stack_1.global_52
  loc_B86063: NewIfNullPr clsctacte
  loc_B86066: from_stack_1v = clsctacte.RsFrmGet()
  loc_B8606B: FLdPr var_B4
  loc_B8606E:  = Me.Fields
  loc_B86073: FLdPr var_B8
  loc_B86076: from_stack_2 = Me.Item(from_stack_1)
  loc_B8607B: FLdPr var_CC
  loc_B8607E:  = Me.Value
  loc_B86083: FLdRfVar var_FC
  loc_B86086: FLdRfVar var_118
  loc_B86089: LitVarStr var_EC, "RecaCtct"
  loc_B8608E: PopAdLdVar
  loc_B8608F: FLdRfVar var_114
  loc_B86092: FLdRfVar var_110
  loc_B86095: FLdPr Me
  loc_B86098: MemLdRfVar from_stack_1.global_52
  loc_B8609B: NewIfNullPr clsctacte
  loc_B8609E: from_stack_1v = clsctacte.RsFrmGet()
  loc_B860A3: FLdPr var_110
  loc_B860A6:  = Me.Fields
  loc_B860AB: FLdPr var_114
  loc_B860AE: from_stack_2 = Me.Item(from_stack_1)
  loc_B860B3: FLdPr var_118
  loc_B860B6:  = Me.Value
  loc_B860BB: LitI4 2
  loc_B860C0: FLdRfVar var_DC
  loc_B860C3: FnCDblVar
  loc_B860C5: FLdRfVar var_FC
  loc_B860C8: FnCDblVar
  loc_B860CA: AddR8
  loc_B860CB: CVarR8
  loc_B860CF: FLdRfVar var_138
  loc_B860D2: ImpAdCallFPR4  = Round(, )
  loc_B860D7: LitI4 1
  loc_B860DC: LitI4 1
  loc_B860E1: LitVarStr var_148, "###,###,##0.00"
  loc_B860E6: FStVarCopyObj var_158
  loc_B860E9: FLdRfVar var_158
  loc_B860EC: FLdRfVar var_138
  loc_B860EF: FLdRfVar var_168
  loc_B860F2: ImpAdCallFPR4  = Format(, )
  loc_B860F7: FLdRfVar var_168
  loc_B860FA: CStrVarTmp
  loc_B860FB: FStStr var_98
  loc_B860FE: FFreeAd var_B4 = "": var_B8 = "": var_CC = "": var_110 = "": var_114 = ""
  loc_B8610D: FFreeVar var_DC = "": var_FC = "": var_10C = "": var_138 = "": var_158 = ""
  loc_B8611C: FLdRfVar var_FC
  loc_B8611F: FLdRfVar var_CC
  loc_B86122: LitVarStr var_C8, "CodiConc"
  loc_B86127: PopAdLdVar
  loc_B86128: FLdRfVar var_B8
  loc_B8612B: FLdRfVar var_B4
  loc_B8612E: FLdPr Me
  loc_B86131: MemLdRfVar from_stack_1.global_52
  loc_B86134: NewIfNullPr clsctacte
  loc_B86137: from_stack_1v = clsctacte.RsFrmGet()
  loc_B8613C: FLdPr var_B4
  loc_B8613F:  = Me.Fields
  loc_B86144: FLdPr var_B8
  loc_B86147: from_stack_2 = Me.Item(from_stack_1)
  loc_B8614C: FLdPr var_CC
  loc_B8614F:  = Me.Value
  loc_B86154: FLdRfVar var_FC
  loc_B86157: LitI4 9
  loc_B8615C: FLdRfVar var_DC
  loc_B8615F: ImpAdCallFPR4  = Chr()
  loc_B86164: FLdRfVar var_DC
  loc_B86167: ConcatVar var_10C
  loc_B8616B: FLdRfVar var_138
  loc_B8616E: FLdRfVar var_118
  loc_B86171: LitVarStr var_EC, "ConcViej"
  loc_B86176: PopAdLdVar
  loc_B86177: FLdRfVar var_114
  loc_B8617A: FLdRfVar var_110
  loc_B8617D: FLdPr Me
  loc_B86180: MemLdRfVar from_stack_1.global_52
  loc_B86183: NewIfNullPr clsctacte
  loc_B86186: from_stack_1v = clsctacte.RsFrmGet()
  loc_B8618B: FLdPr var_110
  loc_B8618E:  = Me.Fields
  loc_B86193: FLdPr var_114
  loc_B86196: from_stack_2 = Me.Item(from_stack_1)
  loc_B8619B: FLdPr var_118
  loc_B8619E:  = Me.Value
  loc_B861A3: FLdRfVar var_138
  loc_B861A6: ConcatVar var_158
  loc_B861AA: LitI4 9
  loc_B861AF: FLdRfVar var_168
  loc_B861B2: ImpAdCallFPR4  = Chr()
  loc_B861B7: FLdRfVar var_168
  loc_B861BA: ConcatVar var_178
  loc_B861BE: FLdRfVar var_194
  loc_B861C1: FLdRfVar var_184
  loc_B861C4: LitVarStr var_128, "DetaConc"
  loc_B861C9: PopAdLdVar
  loc_B861CA: FLdRfVar var_180
  loc_B861CD: FLdRfVar var_17C
  loc_B861D0: FLdPr Me
  loc_B861D3: MemLdRfVar from_stack_1.global_52
  loc_B861D6: NewIfNullPr clsctacte
  loc_B861D9: from_stack_1v = clsctacte.RsFrmGet()
  loc_B861DE: FLdPr var_17C
  loc_B861E1:  = Me.Fields
  loc_B861E6: FLdPr var_180
  loc_B861E9: from_stack_2 = Me.Item(from_stack_1)
  loc_B861EE: FLdPr var_184
  loc_B861F1:  = Me.Value
  loc_B861F6: FLdRfVar var_194
  loc_B861F9: ConcatVar var_1A4
  loc_B861FD: LitI4 9
  loc_B86202: FLdRfVar var_1B4
  loc_B86205: ImpAdCallFPR4  = Chr()
  loc_B8620A: FLdRfVar var_1B4
  loc_B8620D: ConcatVar var_1C4
  loc_B86211: ILdRf var_8C
  loc_B86214: CVarStr var_148
  loc_B86217: ConcatVar var_1D4
  loc_B8621B: LitI4 9
  loc_B86220: FLdRfVar var_1E4
  loc_B86223: ImpAdCallFPR4  = Chr()
  loc_B86228: FLdRfVar var_1E4
  loc_B8622B: ConcatVar var_1F4
  loc_B8622F: ILdRf var_90
  loc_B86232: CVarStr var_204
  loc_B86235: ConcatVar var_214
  loc_B86239: LitI4 9
  loc_B8623E: FLdRfVar var_224
  loc_B86241: ImpAdCallFPR4  = Chr()
  loc_B86246: FLdRfVar var_224
  loc_B86249: ConcatVar var_234
  loc_B8624D: ILdRf var_94
  loc_B86250: CVarStr var_244
  loc_B86253: ConcatVar var_254
  loc_B86257: LitI4 9
  loc_B8625C: FLdRfVar var_264
  loc_B8625F: ImpAdCallFPR4  = Chr()
  loc_B86264: FLdRfVar var_264
  loc_B86267: ConcatVar var_274
  loc_B8626B: ILdRf var_98
  loc_B8626E: CVarStr var_284
  loc_B86271: ConcatVar var_294
  loc_B86275: CStrVarTmp
  loc_B86276: FStStr var_88
  loc_B86279: FFreeAd var_B4 = "": var_B8 = "": var_CC = "": var_110 = "": var_114 = "": var_118 = "": var_17C = "": var_180 = ""
  loc_B8628E: FFreeVar var_FC = "": var_DC = "": var_10C = "": var_138 = "": var_158 = "": var_168 = "": var_178 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_224 = "": var_234 = "": var_254 = "": var_264 = "": var_274 = ""
  loc_B862BB: FLdRfVar var_88
  loc_B862BE: CDargRef
  loc_B862C2: FLdPr Me
  loc_B862C5: VCallAd Control_ID_ctacteconceptoFlex
  loc_B862C8: FStAdFunc var_B4
  loc_B862CB: FLdPr var_B4
  loc_B862CE: LateIdCall
  loc_B862D6: FFree1Ad var_B4
  loc_B862D9: FLdRfVar var_B4
  loc_B862DC: FLdPr Me
  loc_B862DF: MemLdRfVar from_stack_1.global_52
  loc_B862E2: NewIfNullPr clsctacte
  loc_B862E5: from_stack_1v = clsctacte.RsFrmGet()
  loc_B862EA: FLdPr var_B4
  loc_B862ED: Me.MoveNext
  loc_B862F2: FFree1Ad var_B4
  loc_B862F5: Branch loc_B85EAB
  loc_B862F8: ExitProcHresult
End Function
