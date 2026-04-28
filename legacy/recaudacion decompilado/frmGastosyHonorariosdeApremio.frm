VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGastosyHonorariosdeApremio
  Caption = "Gastos y Honorarios de Boletas de Apremio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmGastosyHonorariosdeApremio.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 15372
  ClientHeight = 9696
  Begin VB.CommandButton BoletoCmd
    Caption = "Boleto"
    Left = 11280
    Top = 360
    Width = 690
    Height = 585
    Enabled = 0   'False
    TabIndex = 15
    Picture = "frmGastosyHonorariosdeApremio.frx":324A
    Style = 1
  End
  Begin VB.CommandButton ListadoCmd
    Caption = "Listado"
    Left = 10440
    Top = 360
    Width = 645
    Height = 585
    Enabled = 0   'False
    TabIndex = 14
    Picture = "frmGastosyHonorariosdeApremio.frx":334C
    Style = 1
  End
  Begin VB.CommandButton BuscarCmd
    Left = 3600
    Top = 600
    Width = 495
    Height = 375
    TabIndex = 2
    Picture = "frmGastosyHonorariosdeApremio.frx":344E
    Style = 1
  End
  Begin VB.CommandButton SalirCmd
    Left = 12720
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 41
    Picture = "frmGastosyHonorariosdeApremio.frx":3530
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeApreTxt
    ForeColor = &HFF0000&
    Left = 2160
    Top = 600
    Width = 1335
    Height = 360
    Text = " "
    TabIndex = 1
    MaxLength = 9
    DataField = "NumeApre"
    BeginProperty Font
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
    Width = 13335
    Height = 5055
    TabIndex = 32
    Begin VB.TextBox MoviOfjuTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 3720
      Width = 1575
      Height = 420
      TabIndex = 12
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox MoviRecaTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 3240
      Width = 1575
      Height = 420
      TabIndex = 11
      Alignment = 1 'Right Justify
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox HonoOfjuTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 2760
      Width = 1575
      Height = 420
      TabIndex = 10
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox IvaRecaTxt
      ForeColor = &HFF0000&
      Left = 6240
      Top = 2280
      Width = 1575
      Height = 420
      TabIndex = 9
      Alignment = 1 'Right Justify
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox HonoRecaTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 2280
      Width = 1575
      Height = 420
      TabIndex = 8
      Alignment = 1 'Right Justify
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DereFijoTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 1800
      Width = 1575
      Height = 420
      TabIndex = 7
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox AporLeyTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 1320
      Width = 1575
      Height = 420
      TabIndex = 6
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox TasaJustTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 840
      Width = 1575
      Height = 345
      TabIndex = 5
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox IvaCoadTxt
      ForeColor = &HFF0000&
      Left = 6120
      Top = 360
      Width = 1575
      Height = 420
      TabIndex = 4
      Alignment = 1 'Right Justify
      MaxLength = 15
      DataField = "ImpoJuic"
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
    Begin VB.TextBox ComiAdmiTxt
      ForeColor = &HFF0000&
      Left = 3720
      Top = 360
      Width = 1575
      Height = 345
      TabIndex = 3
      Alignment = 1 'Right Justify
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSDataGridLib.DataGrid InstApreDgd
      Left = 5640
      Top = 2760
      Width = 7575
      Height = 1695
      TabIndex = 16
      OleObjectBlob = "frmGastosyHonorariosdeApremio.frx":3782
    End
    Begin VB.Label Label24
      Caption = "Recargo Actualizado:"
      Left = 8760
      Top = 1320
      Width = 2280
      Height = 300
      TabIndex = 55
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
    Begin VB.Label RecargoActualizadoLbl
      ForeColor = &HFF0000&
      Left = 11160
      Top = 1320
      Width = 1935
      Height = 360
      TabIndex = 54
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
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
      Caption = "I.V.A:"
      Left = 5520
      Top = 2280
      Width = 585
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
      Caption = "I.V.A:"
      Left = 5520
      Top = 360
      Width = 585
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
    Begin VB.Label Label21
      Caption = "Recargo:"
      Left = 10020
      Top = 840
      Width = 975
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
    Begin VB.Label Label20
      Caption = "Capital:"
      Left = 10200
      Top = 360
      Width = 795
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
    Begin VB.Label Label16
      Caption = "TOTAL de la Deuda del Apremio:"
      Left = 7560
      Top = 1800
      Width = 3480
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
    Begin VB.Label TotalDeudaLbl
      ForeColor = &HFF0000&
      Left = 11160
      Top = 1800
      Width = 1935
      Height = 360
      TabIndex = 48
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label RecargoLbl
      ForeColor = &HFF0000&
      Left = 11160
      Top = 840
      Width = 1935
      Height = 360
      TabIndex = 47
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CapitalLbl
      ForeColor = &HFF0000&
      Left = 11160
      Top = 360
      Width = 1935
      Height = 360
      TabIndex = 46
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
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
      Caption = "TOTAL:"
      Left = 2760
      Top = 4200
      Width = 810
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
    Begin VB.Label TotalLbl
      ForeColor = &HFF0000&
      Left = 3720
      Top = 4200
      Width = 1575
      Height = 360
      TabIndex = 44
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
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
      Caption = "Movilidad del Oficial de Justicia:"
      Left = 240
      Top = 3720
      Width = 3300
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
    Begin VB.Label Label15
      Caption = "Movilidad del Recaudador:"
      Left = 750
      Top = 3240
      Width = 2790
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
    Begin VB.Label Label14
      Caption = "Honorario del Oficial de Justicia:"
      Left = 165
      Top = 2760
      Width = 3375
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
    Begin VB.Label Label13
      Caption = "Honorario del Recaudador:"
      Left = 675
      Top = 2280
      Width = 2865
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
    Begin VB.Label Label12
      Caption = "Derecho Fijo:"
      Left = 2130
      Top = 1800
      Width = 1410
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
    Begin VB.Label Label11
      Caption = "Aporte de Ley:"
      Left = 1995
      Top = 1320
      Width = 1545
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
    Begin VB.Label Label9
      Caption = "Tasa de Justicia:"
      Left = 1770
      Top = 840
      Width = 1770
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
    Begin VB.Label Label10
      Caption = "Comisión Administrativa:"
      Left = 960
      Top = 360
      Width = 2580
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
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmGastosyHonorariosdeApremio.frx":3C36
    Left = 14640
    Top = 480
  End
  Begin VB.Label DetaOficLbl
    ForeColor = &HFF0000&
    Left = 2760
    Top = 2040
    Width = 3855
    Height = 360
    TabIndex = 24
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
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
    Caption = "Estado:"
    Left = 10440
    Top = 2520
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
  Begin VB.Label EstaApreLbl
    ForeColor = &HFF0000&
    Left = 11400
    Top = 2520
    Width = 2055
    Height = 360
    TabIndex = 42
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
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
    Caption = "Cuenta:"
    Left = 6720
    Top = 2040
    Width = 840
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
  Begin VB.Label Label3
    Caption = "Oficina:"
    Left = 1320
    Top = 2040
    Width = 795
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
  Begin VB.Label CuenCtctLbl
    ForeColor = &HFF0000&
    Left = 7680
    Top = 2040
    Width = 1695
    Height = 360
    TabIndex = 26
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CodiOficLbl
    ForeColor = &HFF0000&
    Left = 2160
    Top = 2040
    Width = 495
    Height = 360
    TabIndex = 23
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CodiInjuLbl
    ForeColor = &HFF0000&
    Left = 2160
    Top = 2520
    Width = 495
    Height = 360
    TabIndex = 30
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label AutoApreLbl
    ForeColor = &HFF0000&
    Left = 11400
    Top = 2040
    Width = 2055
    Height = 360
    TabIndex = 28
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
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
    Left = 480
    Top = 600
    Width = 1575
    Height = 300
    TabIndex = 0
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
    Caption = "Nro de Juicio:"
    Left = 9840
    Top = 2040
    Width = 1425
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
  Begin VB.Label Label4
    Caption = "Instancia:"
    Left = 1080
    Top = 2520
    Width = 1035
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
  Begin VB.Label DetaInjuLbl
    BackColor = &H8000000E&
    ForeColor = &HFF0000&
    Left = 2760
    Top = 2520
    Width = 6615
    Height = 360
    TabIndex = 31
    BorderStyle = 1 'Fixed Single
    BackStyle = 0 'Transparent
    DataField = "DetaInju"
    BeginProperty Font
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
    Left = 2160
    Top = 1560
    Width = 9855
    Height = 360
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    DataField = "DecpPers"
    BeginProperty Font
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
    Left = 7080
    Top = 600
    Width = 1695
    Height = 360
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    DataField = "CucuPers"
    BeginProperty Font
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
    Left = 2160
    Top = 1080
    Width = 9855
    Height = 360
    TabIndex = 19
    BorderStyle = 1 'Fixed Single
    DataField = "DetaPers"
    BeginProperty Font
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
    Caption = "C.U.I.T. - C.U.I.T.:"
    Left = 5040
    Top = 600
    Width = 1845
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
  Begin VB.Label Label6
    Caption = "Apellido y Nombre:"
    Left = 120
    Top = 1080
    Width = 1965
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
  Begin VB.Label Label7
    Caption = "Domicilio Postal:"
    Left = 360
    Top = 1560
    Width = 1725
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
End

Attribute VB_Name = "frmGastosyHonorariosdeApremio"


Private Sub AporLeyTxt_GotFocus() '9C0A28
  'Data Table: 521888
  loc_9C0A14: FLdPr Me
  loc_9C0A17: VCallAd Control_ID_AporLeyTxt
  loc_9C0A1A: CVarAd
  loc_9C0A1E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0A23: FFree1Var var_94 = ""
  loc_9C0A26: ExitProcHresult
End Sub

Private Sub AporLeyTxt_KeyPress(KeyAscii As Integer) 'A08008
  'Data Table: 521888
  loc_A07FD4: LitStr "1234567890,."
  loc_A07FD7: FStStrCopy var_88
  loc_A07FDA: FLdRfVar var_88
  loc_A07FDD: ILdRf KeyAscii
  loc_A07FE0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07FE5: IStI2 KeyAscii
  loc_A07FE8: FFree1Str var_88
  loc_A07FEB: ILdI2 KeyAscii
  loc_A07FEE: LitStr "."
  loc_A07FF1: ImpAdCallI2 Asc()
  loc_A07FF6: EqI2
  loc_A07FF7: BranchF loc_A08005
  loc_A07FFA: LitStr ","
  loc_A07FFD: ImpAdCallI2 Asc()
  loc_A08002: IStI2 KeyAscii
  loc_A08005: ExitProcHresult
End Sub

Private Sub AporLeyTxt_LostFocus() 'A78550
  'Data Table: 521888
  loc_A784E8: FLdRfVar var_8C
  loc_A784EB: FLdPr Me
  loc_A784EE: VCallAd Control_ID_AporLeyTxt
  loc_A784F1: FStAdFunc var_88
  loc_A784F4: FLdPr var_88
  loc_A784F7:  = Me.Text
  loc_A784FC: LitI4 1
  loc_A78501: LitI4 1
  loc_A78506: LitVarStr var_AC, "0.00"
  loc_A7850B: FStVarCopyObj var_BC
  loc_A7850E: FLdRfVar var_BC
  loc_A78511: FLdZeroAd var_8C
  loc_A78514: CVarStr var_9C
  loc_A78517: FLdRfVar var_CC
  loc_A7851A: ImpAdCallFPR4  = Format(, )
  loc_A7851F: FLdRfVar var_CC
  loc_A78522: CStrVarVal var_D0
  loc_A78526: FLdPr Me
  loc_A78529: VCallAd Control_ID_AporLeyTxt
  loc_A7852C: FStAdFunc var_D4
  loc_A7852F: FLdPr var_D4
  loc_A78532: Me.Text = from_stack_1
  loc_A78537: FFree1Str var_D0
  loc_A7853A: FFreeAd var_88 = ""
  loc_A78541: FFreeVar var_9C = "": var_BC = ""
  loc_A7854A: Call Proc_287_49_AF7254()
  loc_A7854F: ExitProcHresult
End Sub

Private Sub AporLeyTxt_Validate(Cancel As Boolean) 'A72FA8
  'Data Table: 521888
  loc_A72F3C: FLdRfVar var_8C
  loc_A72F3F: FLdPr Me
  loc_A72F42: VCallAd Control_ID_AporLeyTxt
  loc_A72F45: FStAdFunc var_88
  loc_A72F48: FLdPr var_88
  loc_A72F4B:  = Me.Text
  loc_A72F50: LitI2_Byte &HFF
  loc_A72F52: LitI2_Byte 0
  loc_A72F54: ILdRf var_8C
  loc_A72F57: LitStr "el importe"
  loc_A72F5A: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A72F5F: FStStrNoPop var_90
  loc_A72F62: FLdPr Me
  loc_A72F65: MemStStrCopy
  loc_A72F69: FFreeStr var_8C = ""
  loc_A72F70: FFree1Ad var_88
  loc_A72F73: FLdPr Me
  loc_A72F76: MemLdStr global_72
  loc_A72F79: LitStr vbNullString
  loc_A72F7C: NeStr
  loc_A72F7E: BranchF loc_A72FA4
  loc_A72F81: FLdPr Me
  loc_A72F84: MemLdStr global_72
  loc_A72F87: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A72F8C: FLdPr Me
  loc_A72F8F: VCallAd Control_ID_AporLeyTxt
  loc_A72F92: CVarAd
  loc_A72F96: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A72F9B: FFree1Var var_A0 = ""
  loc_A72F9E: LitI2_Byte &HFF
  loc_A72FA0: IStI2 Cancel
  loc_A72FA3: ExitProcHresult
  loc_A72FA4: ExitProcHresult
End Sub

Private Sub TasaJustTxt_GotFocus() '9C0B00
  'Data Table: 521888
  loc_9C0AEC: FLdPr Me
  loc_9C0AEF: VCallAd Control_ID_TasaJustTxt
  loc_9C0AF2: CVarAd
  loc_9C0AF6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0AFB: FFree1Var var_94 = ""
  loc_9C0AFE: ExitProcHresult
End Sub

Private Sub TasaJustTxt_KeyPress(KeyAscii As Integer) 'A08070
  'Data Table: 521888
  loc_A0803C: LitStr "1234567890,."
  loc_A0803F: FStStrCopy var_88
  loc_A08042: FLdRfVar var_88
  loc_A08045: ILdRf KeyAscii
  loc_A08048: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0804D: IStI2 KeyAscii
  loc_A08050: FFree1Str var_88
  loc_A08053: ILdI2 KeyAscii
  loc_A08056: LitStr "."
  loc_A08059: ImpAdCallI2 Asc()
  loc_A0805E: EqI2
  loc_A0805F: BranchF loc_A0806D
  loc_A08062: LitStr ","
  loc_A08065: ImpAdCallI2 Asc()
  loc_A0806A: IStI2 KeyAscii
  loc_A0806D: ExitProcHresult
End Sub

Private Sub TasaJustTxt_LostFocus() 'A79414
  'Data Table: 521888
  loc_A793AC: FLdRfVar var_8C
  loc_A793AF: FLdPr Me
  loc_A793B2: VCallAd Control_ID_TasaJustTxt
  loc_A793B5: FStAdFunc var_88
  loc_A793B8: FLdPr var_88
  loc_A793BB:  = Me.Text
  loc_A793C0: LitI4 1
  loc_A793C5: LitI4 1
  loc_A793CA: LitVarStr var_AC, "0.00"
  loc_A793CF: FStVarCopyObj var_BC
  loc_A793D2: FLdRfVar var_BC
  loc_A793D5: FLdZeroAd var_8C
  loc_A793D8: CVarStr var_9C
  loc_A793DB: FLdRfVar var_CC
  loc_A793DE: ImpAdCallFPR4  = Format(, )
  loc_A793E3: FLdRfVar var_CC
  loc_A793E6: CStrVarVal var_D0
  loc_A793EA: FLdPr Me
  loc_A793ED: VCallAd Control_ID_TasaJustTxt
  loc_A793F0: FStAdFunc var_D4
  loc_A793F3: FLdPr var_D4
  loc_A793F6: Me.Text = from_stack_1
  loc_A793FB: FFree1Str var_D0
  loc_A793FE: FFreeAd var_88 = ""
  loc_A79405: FFreeVar var_9C = "": var_BC = ""
  loc_A7940E: Call Proc_287_49_AF7254()
  loc_A79413: ExitProcHresult
End Sub

Private Sub TasaJustTxt_Validate(Cancel As Boolean) 'A72798
  'Data Table: 521888
  loc_A7272C: FLdRfVar var_8C
  loc_A7272F: FLdPr Me
  loc_A72732: VCallAd Control_ID_TasaJustTxt
  loc_A72735: FStAdFunc var_88
  loc_A72738: FLdPr var_88
  loc_A7273B:  = Me.Text
  loc_A72740: LitI2_Byte &HFF
  loc_A72742: LitI2_Byte 0
  loc_A72744: ILdRf var_8C
  loc_A72747: LitStr "el importe"
  loc_A7274A: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A7274F: FStStrNoPop var_90
  loc_A72752: FLdPr Me
  loc_A72755: MemStStrCopy
  loc_A72759: FFreeStr var_8C = ""
  loc_A72760: FFree1Ad var_88
  loc_A72763: FLdPr Me
  loc_A72766: MemLdStr global_72
  loc_A72769: LitStr vbNullString
  loc_A7276C: NeStr
  loc_A7276E: BranchF loc_A72794
  loc_A72771: FLdPr Me
  loc_A72774: MemLdStr global_72
  loc_A72777: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7277C: FLdPr Me
  loc_A7277F: VCallAd Control_ID_TasaJustTxt
  loc_A72782: CVarAd
  loc_A72786: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7278B: FFree1Var var_A0 = ""
  loc_A7278E: LitI2_Byte &HFF
  loc_A72790: IStI2 Cancel
  loc_A72793: ExitProcHresult
  loc_A72794: ExitProcHresult
End Sub

Private Sub IvaCoadTxt_GotFocus() '9C0C68
  'Data Table: 521888
  loc_9C0C54: FLdPr Me
  loc_9C0C57: VCallAd Control_ID_IvaCoadTxt
  loc_9C0C5A: CVarAd
  loc_9C0C5E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0C63: FFree1Var var_94 = ""
  loc_9C0C66: ExitProcHresult
End Sub

Private Sub IvaCoadTxt_KeyPress(KeyAscii As Integer) 'A080D8
  'Data Table: 521888
  loc_A080A4: LitStr "1234567890,."
  loc_A080A7: FStStrCopy var_88
  loc_A080AA: FLdRfVar var_88
  loc_A080AD: ILdRf KeyAscii
  loc_A080B0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A080B5: IStI2 KeyAscii
  loc_A080B8: FFree1Str var_88
  loc_A080BB: ILdI2 KeyAscii
  loc_A080BE: LitStr "."
  loc_A080C1: ImpAdCallI2 Asc()
  loc_A080C6: EqI2
  loc_A080C7: BranchF loc_A080D5
  loc_A080CA: LitStr ","
  loc_A080CD: ImpAdCallI2 Asc()
  loc_A080D2: IStI2 KeyAscii
  loc_A080D5: ExitProcHresult
End Sub

Private Sub IvaCoadTxt_LostFocus() 'A75808
  'Data Table: 521888
  loc_A757A4: FLdRfVar var_8C
  loc_A757A7: FLdPr Me
  loc_A757AA: VCallAd Control_ID_IvaCoadTxt
  loc_A757AD: FStAdFunc var_88
  loc_A757B0: FLdPr var_88
  loc_A757B3:  = Me.Text
  loc_A757B8: LitI4 1
  loc_A757BD: LitI4 1
  loc_A757C2: LitVarStr var_AC, "0.00"
  loc_A757C7: FStVarCopyObj var_BC
  loc_A757CA: FLdRfVar var_BC
  loc_A757CD: FLdZeroAd var_8C
  loc_A757D0: CVarStr var_9C
  loc_A757D3: FLdRfVar var_CC
  loc_A757D6: ImpAdCallFPR4  = Format(, )
  loc_A757DB: FLdRfVar var_CC
  loc_A757DE: CStrVarVal var_D0
  loc_A757E2: FLdPr Me
  loc_A757E5: VCallAd Control_ID_IvaCoadTxt
  loc_A757E8: FStAdFunc var_D4
  loc_A757EB: FLdPr var_D4
  loc_A757EE: Me.Text = from_stack_1
  loc_A757F3: FFree1Str var_D0
  loc_A757F6: FFreeAd var_88 = ""
  loc_A757FD: FFreeVar var_9C = "": var_BC = ""
  loc_A75806: ExitProcHresult
End Sub

Private Sub IvaCoadTxt_Validate(Cancel As Boolean) 'A710C0
  'Data Table: 521888
  loc_A71054: FLdRfVar var_8C
  loc_A71057: FLdPr Me
  loc_A7105A: VCallAd Control_ID_IvaCoadTxt
  loc_A7105D: FStAdFunc var_88
  loc_A71060: FLdPr var_88
  loc_A71063:  = Me.Text
  loc_A71068: LitI2_Byte &HFF
  loc_A7106A: LitI2_Byte 0
  loc_A7106C: ILdRf var_8C
  loc_A7106F: LitStr "el importe"
  loc_A71072: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A71077: FStStrNoPop var_90
  loc_A7107A: FLdPr Me
  loc_A7107D: MemStStrCopy
  loc_A71081: FFreeStr var_8C = ""
  loc_A71088: FFree1Ad var_88
  loc_A7108B: FLdPr Me
  loc_A7108E: MemLdStr global_72
  loc_A71091: LitStr vbNullString
  loc_A71094: NeStr
  loc_A71096: BranchF loc_A710BC
  loc_A71099: FLdPr Me
  loc_A7109C: MemLdStr global_72
  loc_A7109F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A710A4: FLdPr Me
  loc_A710A7: VCallAd Control_ID_IvaCoadTxt
  loc_A710AA: CVarAd
  loc_A710AE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A710B3: FFree1Var var_A0 = ""
  loc_A710B6: LitI2_Byte &HFF
  loc_A710B8: IStI2 Cancel
  loc_A710BB: ExitProcHresult
  loc_A710BC: ExitProcHresult
End Sub

Private Sub ComiAdmiTxt_GotFocus() '9C0E18
  'Data Table: 521888
  loc_9C0E04: FLdPr Me
  loc_9C0E07: VCallAd Control_ID_ComiAdmiTxt
  loc_9C0E0A: CVarAd
  loc_9C0E0E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0E13: FFree1Var var_94 = ""
  loc_9C0E16: ExitProcHresult
End Sub

Private Sub ComiAdmiTxt_KeyPress(KeyAscii As Integer) 'A08140
  'Data Table: 521888
  loc_A0810C: LitStr "1234567890,."
  loc_A0810F: FStStrCopy var_88
  loc_A08112: FLdRfVar var_88
  loc_A08115: ILdRf KeyAscii
  loc_A08118: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0811D: IStI2 KeyAscii
  loc_A08120: FFree1Str var_88
  loc_A08123: ILdI2 KeyAscii
  loc_A08126: LitStr "."
  loc_A08129: ImpAdCallI2 Asc()
  loc_A0812E: EqI2
  loc_A0812F: BranchF loc_A0813D
  loc_A08132: LitStr ","
  loc_A08135: ImpAdCallI2 Asc()
  loc_A0813A: IStI2 KeyAscii
  loc_A0813D: ExitProcHresult
End Sub

Private Sub ComiAdmiTxt_LostFocus() 'A78A3C
  'Data Table: 521888
  loc_A789D4: FLdRfVar var_8C
  loc_A789D7: FLdPr Me
  loc_A789DA: VCallAd Control_ID_ComiAdmiTxt
  loc_A789DD: FStAdFunc var_88
  loc_A789E0: FLdPr var_88
  loc_A789E3:  = Me.Text
  loc_A789E8: LitI4 1
  loc_A789ED: LitI4 1
  loc_A789F2: LitVarStr var_AC, "0.00"
  loc_A789F7: FStVarCopyObj var_BC
  loc_A789FA: FLdRfVar var_BC
  loc_A789FD: FLdZeroAd var_8C
  loc_A78A00: CVarStr var_9C
  loc_A78A03: FLdRfVar var_CC
  loc_A78A06: ImpAdCallFPR4  = Format(, )
  loc_A78A0B: FLdRfVar var_CC
  loc_A78A0E: CStrVarVal var_D0
  loc_A78A12: FLdPr Me
  loc_A78A15: VCallAd Control_ID_ComiAdmiTxt
  loc_A78A18: FStAdFunc var_D4
  loc_A78A1B: FLdPr var_D4
  loc_A78A1E: Me.Text = from_stack_1
  loc_A78A23: FFree1Str var_D0
  loc_A78A26: FFreeAd var_88 = ""
  loc_A78A2D: FFreeVar var_9C = "": var_BC = ""
  loc_A78A36: Call Proc_287_49_AF7254()
  loc_A78A3B: ExitProcHresult
End Sub

Private Sub ComiAdmiTxt_Validate(Cancel As Boolean) 'A6FE9C
  'Data Table: 521888
  loc_A6FE30: FLdRfVar var_8C
  loc_A6FE33: FLdPr Me
  loc_A6FE36: VCallAd Control_ID_ComiAdmiTxt
  loc_A6FE39: FStAdFunc var_88
  loc_A6FE3C: FLdPr var_88
  loc_A6FE3F:  = Me.Text
  loc_A6FE44: LitI2_Byte &HFF
  loc_A6FE46: LitI2_Byte 0
  loc_A6FE48: ILdRf var_8C
  loc_A6FE4B: LitStr "el importe"
  loc_A6FE4E: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A6FE53: FStStrNoPop var_90
  loc_A6FE56: FLdPr Me
  loc_A6FE59: MemStStrCopy
  loc_A6FE5D: FFreeStr var_8C = ""
  loc_A6FE64: FFree1Ad var_88
  loc_A6FE67: FLdPr Me
  loc_A6FE6A: MemLdStr global_72
  loc_A6FE6D: LitStr vbNullString
  loc_A6FE70: NeStr
  loc_A6FE72: BranchF loc_A6FE98
  loc_A6FE75: FLdPr Me
  loc_A6FE78: MemLdStr global_72
  loc_A6FE7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6FE80: FLdPr Me
  loc_A6FE83: VCallAd Control_ID_ComiAdmiTxt
  loc_A6FE86: CVarAd
  loc_A6FE8A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6FE8F: FFree1Var var_A0 = ""
  loc_A6FE92: LitI2_Byte &HFF
  loc_A6FE94: IStI2 Cancel
  loc_A6FE97: ExitProcHresult
  loc_A6FE98: ExitProcHresult
End Sub

Private Sub NumeApreTxt_GotFocus() 'A3CB10
  'Data Table: 521888
  loc_A3CAC4: Call Proc_287_48_B46BA4()
  loc_A3CAC9: Call LimpiaDatosPersona()
  loc_A3CACE: LitI2_Byte 0
  loc_A3CAD0: FLdPr Me
  loc_A3CAD3: VCallAd Control_ID_ListadoCmd
  loc_A3CAD6: FStAdFunc var_88
  loc_A3CAD9: FLdPr var_88
  loc_A3CADC: Me.Enabled = from_stack_1b
  loc_A3CAE1: FFree1Ad var_88
  loc_A3CAE4: LitI2_Byte 0
  loc_A3CAE6: FLdPr Me
  loc_A3CAE9: VCallAd Control_ID_BoletoCmd
  loc_A3CAEC: FStAdFunc var_88
  loc_A3CAEF: FLdPr var_88
  loc_A3CAF2: Me.Enabled = from_stack_1b
  loc_A3CAF7: FFree1Ad var_88
  loc_A3CAFA: FLdPr Me
  loc_A3CAFD: VCallAd Control_ID_NumeApreTxt
  loc_A3CB00: CVarAd
  loc_A3CB04: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A3CB09: FFree1Var var_98 = ""
  loc_A3CB0C: ExitProcHresult
  loc_A3CB0D: FLdPr Me
End Sub

Private Sub NumeApreTxt_KeyPress(KeyAscii As Integer) 'A8E9E8
  'Data Table: 521888
  loc_A8E944: LitStr "0123456789 "
  loc_A8E947: FStStrCopy var_88
  loc_A8E94A: FLdRfVar var_88
  loc_A8E94D: ILdRf KeyAscii
  loc_A8E950: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A8E955: IStI2 KeyAscii
  loc_A8E958: FFree1Str var_88
  loc_A8E95B: ILdI2 KeyAscii
  loc_A8E95E: LitI2_Byte &H20
  loc_A8E960: EqI2
  loc_A8E961: BranchF loc_A8E9E5
  loc_A8E964: LitI2_Byte 0
  loc_A8E966: IStI2 KeyAscii
  loc_A8E969: LitVar_Missing var_A8
  loc_A8E96C: PopAdLdVar
  loc_A8E96D: LitVarI4
  loc_A8E975: PopAdLdVar
  loc_A8E976: ImpAdLdRf MemVar_D94538
  loc_A8E979: NewIfNullPr dlgBuscarInstanciasdelApremio
  loc_A8E97C: dlgBuscarInstanciasdelApremio.Show from_stack_1, from_stack_2
  loc_A8E981: FLdRfVar var_B0
  loc_A8E984: FLdRfVar var_AC
  loc_A8E987: ImpAdLdRf MemVar_D94538
  loc_A8E98A: NewIfNullPr dlgBuscarInstanciasdelApremio
  loc_A8E98D: from_stack_1v = dlgBuscarInstanciasdelApremio.global_4262876Get()
  loc_A8E992: FLdPr var_AC
  loc_A8E995: from_stack_1 = clsapremio.RecordCount
  loc_A8E99A: ILdRf var_B0
  loc_A8E99D: LitI4 0
  loc_A8E9A2: GtI4
  loc_A8E9A3: FFree1Ad var_AC
  loc_A8E9A6: BranchF loc_A8E9E5
  loc_A8E9A9: FLdRfVar var_B0
  loc_A8E9AC: FLdRfVar var_AC
  loc_A8E9AF: ImpAdLdRf MemVar_D94538
  loc_A8E9B2: NewIfNullPr dlgBuscarInstanciasdelApremio
  loc_A8E9B5: from_stack_1v = dlgBuscarInstanciasdelApremio.global_4262876Get()
  loc_A8E9BA: FLdPr var_AC
  loc_A8E9BD: from_stack_1 = clsapremio.NumeApre
  loc_A8E9C2: ILdRf var_B0
  loc_A8E9C5: CStrI4
  loc_A8E9C7: FStStrNoPop var_88
  loc_A8E9CA: FLdPr Me
  loc_A8E9CD: VCallAd Control_ID_NumeApreTxt
  loc_A8E9D0: FStAdFunc var_B4
  loc_A8E9D3: FLdPr var_B4
  loc_A8E9D6: Me.Text = from_stack_1
  loc_A8E9DB: FFree1Str var_88
  loc_A8E9DE: FFreeAd var_AC = ""
  loc_A8E9E5: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C5EEC0
  'Data Table: 521888
  loc_C5DF78: FLdRfVar var_9A
  loc_C5DF7B: FLdPr Me
  loc_C5DF7E: VCallAd Control_ID_NumeApreTxt
  loc_C5DF81: FStAdFunc var_98
  loc_C5DF84: FLdPr var_98
  loc_C5DF87:  = Me.Enabled
  loc_C5DF8C: FLdI2 var_9A
  loc_C5DF8F: FFree1Ad var_98
  loc_C5DF92: BranchF loc_C5EEBD
  loc_C5DF95: FLdRfVar var_A0
  loc_C5DF98: FLdPr Me
  loc_C5DF9B: VCallAd Control_ID_NumeApreTxt
  loc_C5DF9E: FStAdFunc var_98
  loc_C5DFA1: FLdPr var_98
  loc_C5DFA4:  = Me.Text
  loc_C5DFA9: ILdRf var_A0
  loc_C5DFAC: LitStr vbNullString
  loc_C5DFAF: EqStr
  loc_C5DFB1: FFree1Str var_A0
  loc_C5DFB4: FFree1Ad var_98
  loc_C5DFB7: BranchF loc_C5DFD8
  loc_C5DFBA: LitI2_Byte 0
  loc_C5DFBC: CStrUI1
  loc_C5DFBE: FStStrNoPop var_A0
  loc_C5DFC1: FLdPr Me
  loc_C5DFC4: VCallAd Control_ID_NumeApreTxt
  loc_C5DFC7: FStAdFunc var_98
  loc_C5DFCA: FLdPr var_98
  loc_C5DFCD: Me.Text = from_stack_1
  loc_C5DFD2: FFree1Str var_A0
  loc_C5DFD5: FFree1Ad var_98
  loc_C5DFD8: LitStr "SELECT * FROM apremio "
  loc_C5DFDB: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = apremio.CodiOfic"
  loc_C5DFDE: ConcatStr
  loc_C5DFDF: FStStrNoPop var_A0
  loc_C5DFE2: LitStr " WHERE NumeApre = "
  loc_C5DFE5: ConcatStr
  loc_C5DFE6: FStStrNoPop var_A8
  loc_C5DFE9: FLdRfVar var_A4
  loc_C5DFEC: FLdPr Me
  loc_C5DFEF: VCallAd Control_ID_NumeApreTxt
  loc_C5DFF2: FStAdFunc var_98
  loc_C5DFF5: FLdPr var_98
  loc_C5DFF8:  = Me.Text
  loc_C5DFFD: ILdRf var_A4
  loc_C5E000: ConcatStr
  loc_C5E001: FStStrNoPop var_AC
  loc_C5E004: FLdPr Me
  loc_C5E007: MemLdRfVar from_stack_1.global_52
  loc_C5E00A: NewIfNullPr clsapremio
  loc_C5E00D: Call clsapremio.RedefineRS(from_stack_1v)
  loc_C5E012: FFreeStr var_A0 = "": var_A8 = "": var_A4 = ""
  loc_C5E01D: FFree1Ad var_98
  loc_C5E020: FLdRfVar var_B0
  loc_C5E023: FLdPr Me
  loc_C5E026: MemLdRfVar from_stack_1.global_52
  loc_C5E029: NewIfNullPr clsapremio
  loc_C5E02C: from_stack_1 = clsapremio.RecordCount
  loc_C5E031: ILdRf var_B0
  loc_C5E034: LitI4 0
  loc_C5E039: EqI4
  loc_C5E03A: BranchF loc_C5E065
  loc_C5E03D: LitStr "El número de apremio no existe"
  loc_C5E040: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C5E045: FLdPr Me
  loc_C5E048: VCallAd Control_ID_NumeApreTxt
  loc_C5E04B: CVarAd
  loc_C5E04F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C5E054: FFree1Var var_C0 = ""
  loc_C5E057: Call LimpiaDatosPersona()
  loc_C5E05C: Call Proc_287_48_B46BA4()
  loc_C5E061: ExitProcHresult
  loc_C5E062: Branch loc_C5EEBD
  loc_C5E065: FLdRfVar var_9A
  loc_C5E068: FLdPr Me
  loc_C5E06B: MemLdRfVar from_stack_1.global_52
  loc_C5E06E: NewIfNullPr clsapremio
  loc_C5E071: from_stack_1 = clsapremio.CodiInju
  loc_C5E076: FLdI2 var_9A
  loc_C5E079: CStrUI1
  loc_C5E07B: FStStrNoPop var_A0
  loc_C5E07E: FLdPr Me
  loc_C5E081: VCallAd Control_ID_CodiInjuLbl
  loc_C5E084: FStAdFunc var_98
  loc_C5E087: FLdPr var_98
  loc_C5E08A: Me.Caption = from_stack_1
  loc_C5E08F: FFree1Str var_A0
  loc_C5E092: FFree1Ad var_98
  loc_C5E095: FLdRfVar var_A0
  loc_C5E098: FLdPr Me
  loc_C5E09B: VCallAd Control_ID_CodiInjuLbl
  loc_C5E09E: FStAdFunc var_98
  loc_C5E0A1: FLdPr var_98
  loc_C5E0A4:  = Me.Caption
  loc_C5E0A9: ILdRf var_A0
  loc_C5E0AC: CI2Str
  loc_C5E0AE: ImpAdCallI2 Proc_270_93_A79E20()
  loc_C5E0B3: FStStrNoPop var_A4
  loc_C5E0B6: FLdPr Me
  loc_C5E0B9: VCallAd Control_ID_DetaInjuLbl
  loc_C5E0BC: FStAdFunc var_C4
  loc_C5E0BF: FLdPr var_C4
  loc_C5E0C2: Me.Caption = from_stack_1
  loc_C5E0C7: FFreeStr var_A0 = ""
  loc_C5E0CE: FFreeAd var_98 = ""
  loc_C5E0D5: FLdRfVar var_B0
  loc_C5E0D8: FLdPr Me
  loc_C5E0DB: MemLdRfVar from_stack_1.global_52
  loc_C5E0DE: NewIfNullPr clsapremio
  loc_C5E0E1: from_stack_1 = clsapremio.AutoApre
  loc_C5E0E6: ILdRf var_B0
  loc_C5E0E9: CStrI4
  loc_C5E0EB: FStStrNoPop var_A0
  loc_C5E0EE: FLdPr Me
  loc_C5E0F1: VCallAd Control_ID_AutoApreLbl
  loc_C5E0F4: FStAdFunc var_98
  loc_C5E0F7: FLdPr var_98
  loc_C5E0FA: Me.Caption = from_stack_1
  loc_C5E0FF: FFree1Str var_A0
  loc_C5E102: FFree1Ad var_98
  loc_C5E105: FLdRfVar var_9A
  loc_C5E108: FLdPr Me
  loc_C5E10B: MemLdRfVar from_stack_1.global_52
  loc_C5E10E: NewIfNullPr clsapremio
  loc_C5E111: from_stack_1 = clsapremio.CodiOfic
  loc_C5E116: FLdUI1
  loc_C5E11A: CStrI2
  loc_C5E11C: FStStrNoPop var_A0
  loc_C5E11F: FLdPr Me
  loc_C5E122: VCallAd Control_ID_CodiOficLbl
  loc_C5E125: FStAdFunc var_98
  loc_C5E128: FLdPr var_98
  loc_C5E12B: Me.Caption = from_stack_1
  loc_C5E130: FFree1Str var_A0
  loc_C5E133: FFree1Ad var_98
  loc_C5E136: FLdRfVar var_A0
  loc_C5E139: FLdPr Me
  loc_C5E13C: MemLdRfVar from_stack_1.global_52
  loc_C5E13F: NewIfNullPr clsapremio
  loc_C5E142: from_stack_1 = clsapremio.DetaOfic
  loc_C5E147: ILdRf var_A0
  loc_C5E14A: FLdPr Me
  loc_C5E14D: VCallAd Control_ID_DetaOficLbl
  loc_C5E150: FStAdFunc var_98
  loc_C5E153: FLdPr var_98
  loc_C5E156: Me.Caption = from_stack_1
  loc_C5E15B: FFree1Str var_A0
  loc_C5E15E: FFree1Ad var_98
  loc_C5E161: FLdRfVar var_A0
  loc_C5E164: FLdPr Me
  loc_C5E167: MemLdRfVar from_stack_1.global_52
  loc_C5E16A: NewIfNullPr clsapremio
  loc_C5E16D: from_stack_1 = clsapremio.CuenCtct
  loc_C5E172: ILdRf var_A0
  loc_C5E175: FLdPr Me
  loc_C5E178: VCallAd Control_ID_CuenCtctLbl
  loc_C5E17B: FStAdFunc var_98
  loc_C5E17E: FLdPr var_98
  loc_C5E181: Me.Caption = from_stack_1
  loc_C5E186: FFree1Str var_A0
  loc_C5E189: FFree1Ad var_98
  loc_C5E18C: FLdRfVar var_A0
  loc_C5E18F: FLdPr Me
  loc_C5E192: MemLdRfVar from_stack_1.global_52
  loc_C5E195: NewIfNullPr clsapremio
  loc_C5E198: from_stack_1 = clsapremio.EstaApre
  loc_C5E19D: ILdRf var_A0
  loc_C5E1A0: FLdPr Me
  loc_C5E1A3: VCallAd Control_ID_EstaApreLbl
  loc_C5E1A6: FStAdFunc var_98
  loc_C5E1A9: FLdPr var_98
  loc_C5E1AC: Me.Caption = from_stack_1
  loc_C5E1B1: FFree1Str var_A0
  loc_C5E1B4: FFree1Ad var_98
  loc_C5E1B7: FLdRfVar var_C0
  loc_C5E1BA: FLdRfVar var_D8
  loc_C5E1BD: LitVarStr var_D4, "TituApre"
  loc_C5E1C2: PopAdLdVar
  loc_C5E1C3: FLdRfVar var_C4
  loc_C5E1C6: FLdRfVar var_98
  loc_C5E1C9: FLdPr Me
  loc_C5E1CC: MemLdRfVar from_stack_1.global_52
  loc_C5E1CF: NewIfNullPr clsapremio
  loc_C5E1D2: from_stack_1v = clsapremio.RsFrmGet()
  loc_C5E1D7: FLdPr var_98
  loc_C5E1DA:  = Me.Fields
  loc_C5E1DF: FLdPr var_C4
  loc_C5E1E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C5E1E7: FLdPr var_D8
  loc_C5E1EA:  = Me.Value
  loc_C5E1EF: FLdRfVar var_C0
  loc_C5E1F2: CStrVarTmp
  loc_C5E1F3: FStStrNoPop var_A0
  loc_C5E1F6: FLdPr Me
  loc_C5E1F9: VCallAd Control_ID_DetaPersLbl
  loc_C5E1FC: FStAdFunc var_DC
  loc_C5E1FF: FLdPr var_DC
  loc_C5E202: Me.Caption = from_stack_1
  loc_C5E207: FFree1Str var_A0
  loc_C5E20A: FFreeAd var_98 = "": var_C4 = "": var_D8 = ""
  loc_C5E215: FFree1Var var_C0 = ""
  loc_C5E218: LitI2_Byte 0
  loc_C5E21A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C5E21F: FStFPR8 var_15C
  loc_C5E222: LitStr "CALL nDeuda`('"
  loc_C5E225: FLdRfVar var_A0
  loc_C5E228: FLdPr Me
  loc_C5E22B: VCallAd Control_ID_CodiOficLbl
  loc_C5E22E: FStAdFunc var_98
  loc_C5E231: FLdPr var_98
  loc_C5E234:  = Me.Caption
  loc_C5E239: ILdRf var_A0
  loc_C5E23C: ConcatStr
  loc_C5E23D: FStStrNoPop var_A4
  loc_C5E240: LitStr "', '"
  loc_C5E243: ConcatStr
  loc_C5E244: FStStrNoPop var_AC
  loc_C5E247: FLdRfVar var_A8
  loc_C5E24A: FLdPr Me
  loc_C5E24D: VCallAd Control_ID_CuenCtctLbl
  loc_C5E250: FStAdFunc var_C4
  loc_C5E253: FLdPr var_C4
  loc_C5E256:  = Me.Caption
  loc_C5E25B: ILdRf var_A8
  loc_C5E25E: ConcatStr
  loc_C5E25F: FStStrNoPop var_E0
  loc_C5E262: LitStr "', '"
  loc_C5E265: ConcatStr
  loc_C5E266: CVarStr var_120
  loc_C5E269: LitI4 1
  loc_C5E26E: LitI4 1
  loc_C5E273: LitVarStr var_F0, "yyyy-mm-dd"
  loc_C5E278: FStVarCopyObj var_100
  loc_C5E27B: FLdRfVar var_100
  loc_C5E27E: FLdFPR8 var_15C
  loc_C5E281: CVarDate var_C0
  loc_C5E285: FLdRfVar var_110
  loc_C5E288: ImpAdCallFPR4  = Format(, )
  loc_C5E28D: FLdRfVar var_110
  loc_C5E290: ConcatVar var_130
  loc_C5E294: LitVarStr var_140, "')"
  loc_C5E299: ConcatVar var_150
  loc_C5E29D: CStrVarVal var_154
  loc_C5E2A1: FLdPr Me
  loc_C5E2A4: MemLdRfVar from_stack_1.global_56
  loc_C5E2A7: NewIfNullPr clsctacte
  loc_C5E2AA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C5E2AF: FFreeStr var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_E0 = ""
  loc_C5E2BE: FFreeAd var_98 = ""
  loc_C5E2C5: FFreeVar var_C0 = "": var_100 = "": var_120 = "": var_110 = "": var_130 = ""
  loc_C5E2D4: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, ifnull(SUM(RecaCtct),0) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre = "
  loc_C5E2D7: FLdRfVar var_A0
  loc_C5E2DA: FLdPr Me
  loc_C5E2DD: VCallAd Control_ID_NumeApreTxt
  loc_C5E2E0: FStAdFunc var_98
  loc_C5E2E3: FLdPr var_98
  loc_C5E2E6:  = Me.Text
  loc_C5E2EB: ILdRf var_A0
  loc_C5E2EE: ConcatStr
  loc_C5E2EF: FStStrNoPop var_A4
  loc_C5E2F2: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C5E2F5: ConcatStr
  loc_C5E2F6: FStStrNoPop var_A8
  loc_C5E2F9: FLdPr Me
  loc_C5E2FC: MemLdRfVar from_stack_1.global_56
  loc_C5E2FF: NewIfNullPr clsctacte
  loc_C5E302: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C5E307: FFreeStr var_A0 = "": var_A4 = ""
  loc_C5E310: FFree1Ad var_98
  loc_C5E313: FLdRfVar var_B0
  loc_C5E316: FLdPr Me
  loc_C5E319: MemLdRfVar from_stack_1.global_56
  loc_C5E31C: NewIfNullPr clsctacte
  loc_C5E31F: from_stack_1 = clsctacte.RecordCount
  loc_C5E324: ILdRf var_B0
  loc_C5E327: LitI4 0
  loc_C5E32C: GtI4
  loc_C5E32D: BranchF loc_C5E397
  loc_C5E330: FLdRfVar var_A0
  loc_C5E333: FLdPr Me
  loc_C5E336: VCallAd Control_ID_NumeApreTxt
  loc_C5E339: FStAdFunc var_98
  loc_C5E33C: FLdPr var_98
  loc_C5E33F:  = Me.Text
  loc_C5E344: FLdRfVar var_15C
  loc_C5E347: FLdPr Me
  loc_C5E34A: MemLdRfVar from_stack_1.global_56
  loc_C5E34D: NewIfNullPr clsctacte
  loc_C5E350: from_stack_1 = clsctacte.SaldCtct
  loc_C5E355: FLdRfVar var_164
  loc_C5E358: FLdPr Me
  loc_C5E35B: MemLdRfVar from_stack_1.global_56
  loc_C5E35E: NewIfNullPr clsctacte
  loc_C5E361: from_stack_1 = clsctacte.RecaCtct
  loc_C5E366: FLdRfVar var_C0
  loc_C5E369: FLdR8 var_164
  loc_C5E36C: FLdR8 var_15C
  loc_C5E36F: ILdRf var_A0
  loc_C5E372: CI4Str
  loc_C5E373: FLdPr Me
  loc_C5E376: MemLdRfVar from_stack_1.global_52
  loc_C5E379: NewIfNullPr clsapremio
  loc_C5E37C: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C5E381: FLdRfVar var_C0
  loc_C5E384: FLdPr Me
  loc_C5E387: MemStVar
  loc_C5E38B: FFree1Str var_A0
  loc_C5E38E: FFree1Ad var_98
  loc_C5E391: FFree1Var var_C0 = ""
  loc_C5E394: Branch loc_C5E3DB
  loc_C5E397: FLdRfVar var_A0
  loc_C5E39A: FLdPr Me
  loc_C5E39D: VCallAd Control_ID_NumeApreTxt
  loc_C5E3A0: FStAdFunc var_98
  loc_C5E3A3: FLdPr var_98
  loc_C5E3A6:  = Me.Text
  loc_C5E3AB: FLdRfVar var_C0
  loc_C5E3AE: LitI2_Byte 0
  loc_C5E3B0: CR8I2
  loc_C5E3B1: PopFPR8
  loc_C5E3B2: LitI2_Byte 0
  loc_C5E3B4: CR8I2
  loc_C5E3B5: PopFPR8
  loc_C5E3B6: ILdRf var_A0
  loc_C5E3B9: CI4Str
  loc_C5E3BA: FLdPr Me
  loc_C5E3BD: MemLdRfVar from_stack_1.global_52
  loc_C5E3C0: NewIfNullPr clsapremio
  loc_C5E3C3: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C5E3C8: FLdRfVar var_C0
  loc_C5E3CB: FLdPr Me
  loc_C5E3CE: MemStVar
  loc_C5E3D2: FFree1Str var_A0
  loc_C5E3D5: FFree1Ad var_98
  loc_C5E3D8: FFree1Var var_C0 = ""
  loc_C5E3DB: FLdRfVar var_A0
  loc_C5E3DE: FLdPr Me
  loc_C5E3E1: MemLdRfVar from_stack_1.global_52
  loc_C5E3E4: NewIfNullPr clsapremio
  loc_C5E3E7: from_stack_1 = clsapremio.EstaApre
  loc_C5E3EC: ILdRf var_A0
  loc_C5E3EF: CR8Str
  loc_C5E3F1: LitI2_Byte 7
  loc_C5E3F3: CR8I2
  loc_C5E3F4: EqR4
  loc_C5E3F5: FFree1Str var_A0
  loc_C5E3F8: BranchF loc_C5E7FB
  loc_C5E3FB: FLdRfVar var_A0
  loc_C5E3FE: FLdPr Me
  loc_C5E401: VCallAd Control_ID_NumeApreTxt
  loc_C5E404: FStAdFunc var_98
  loc_C5E407: FLdPr var_98
  loc_C5E40A:  = Me.Text
  loc_C5E40F: ILdRf var_A0
  loc_C5E412: CI4Str
  loc_C5E413: FLdRfVar var_C0
  loc_C5E416: ImpAdCallFPR4  = Proc_270_154_B625BC()
  loc_C5E41B: FLdRfVar var_C0
  loc_C5E41E: FLdPr Me
  loc_C5E421: MemStVar
  loc_C5E425: FFree1Str var_A0
  loc_C5E428: FFree1Ad var_98
  loc_C5E42B: FFree1Var var_C0 = ""
  loc_C5E42E: LitVarI2 var_D4, 1
  loc_C5E433: PopAdLdVar
  loc_C5E434: FLdPr Me
  loc_C5E437: MemLdRfVar from_stack_1.global_92
  loc_C5E43A: VarIndexLdRfVarLock
  loc_C5E442: FStR4 var_B0
  loc_C5E445: LitI4 1
  loc_C5E44A: LitI4 1
  loc_C5E44F: LitVarStr var_140, "0.00"
  loc_C5E454: FStVarCopyObj var_100
  loc_C5E457: FLdRfVar var_100
  loc_C5E45A: ILdRf var_B0
  loc_C5E45D: FLdRfVar var_110
  loc_C5E460: ImpAdCallFPR4  = Format(, )
  loc_C5E465: AryUnlock
  loc_C5E468: FLdRfVar var_110
  loc_C5E46B: CStrVarVal var_A0
  loc_C5E46F: FLdPr Me
  loc_C5E472: VCallAd Control_ID_ComiAdmiTxt
  loc_C5E475: FStAdFunc var_98
  loc_C5E478: FLdPr var_98
  loc_C5E47B: Me.Text = from_stack_1
  loc_C5E480: FFree1Str var_A0
  loc_C5E483: FFree1Ad var_98
  loc_C5E486: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E48F: LitVarI2 var_D4, 9
  loc_C5E494: PopAdLdVar
  loc_C5E495: FLdPr Me
  loc_C5E498: MemLdRfVar from_stack_1.global_92
  loc_C5E49B: VarIndexLdRfVarLock
  loc_C5E4A3: FStR4 var_B0
  loc_C5E4A6: LitI4 1
  loc_C5E4AB: LitI4 1
  loc_C5E4B0: LitVarStr var_140, "0.00"
  loc_C5E4B5: FStVarCopyObj var_100
  loc_C5E4B8: FLdRfVar var_100
  loc_C5E4BB: ILdRf var_B0
  loc_C5E4BE: FLdRfVar var_110
  loc_C5E4C1: ImpAdCallFPR4  = Format(, )
  loc_C5E4C6: AryUnlock
  loc_C5E4C9: FLdRfVar var_110
  loc_C5E4CC: CStrVarVal var_A0
  loc_C5E4D0: FLdPr Me
  loc_C5E4D3: VCallAd Control_ID_IvaCoadTxt
  loc_C5E4D6: FStAdFunc var_98
  loc_C5E4D9: FLdPr var_98
  loc_C5E4DC: Me.Text = from_stack_1
  loc_C5E4E1: FFree1Str var_A0
  loc_C5E4E4: FFree1Ad var_98
  loc_C5E4E7: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E4F0: LitVarI2 var_D4, 2
  loc_C5E4F5: PopAdLdVar
  loc_C5E4F6: FLdPr Me
  loc_C5E4F9: MemLdRfVar from_stack_1.global_92
  loc_C5E4FC: VarIndexLdRfVarLock
  loc_C5E504: FStR4 var_B0
  loc_C5E507: LitI4 1
  loc_C5E50C: LitI4 1
  loc_C5E511: LitVarStr var_140, "0.00"
  loc_C5E516: FStVarCopyObj var_100
  loc_C5E519: FLdRfVar var_100
  loc_C5E51C: ILdRf var_B0
  loc_C5E51F: FLdRfVar var_110
  loc_C5E522: ImpAdCallFPR4  = Format(, )
  loc_C5E527: AryUnlock
  loc_C5E52A: FLdRfVar var_110
  loc_C5E52D: CStrVarVal var_A0
  loc_C5E531: FLdPr Me
  loc_C5E534: VCallAd Control_ID_TasaJustTxt
  loc_C5E537: FStAdFunc var_98
  loc_C5E53A: FLdPr var_98
  loc_C5E53D: Me.Text = from_stack_1
  loc_C5E542: FFree1Str var_A0
  loc_C5E545: FFree1Ad var_98
  loc_C5E548: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E551: LitVarI2 var_D4, 3
  loc_C5E556: PopAdLdVar
  loc_C5E557: FLdPr Me
  loc_C5E55A: MemLdRfVar from_stack_1.global_92
  loc_C5E55D: VarIndexLdRfVarLock
  loc_C5E565: FStR4 var_B0
  loc_C5E568: LitI4 1
  loc_C5E56D: LitI4 1
  loc_C5E572: LitVarStr var_140, "0.00"
  loc_C5E577: FStVarCopyObj var_100
  loc_C5E57A: FLdRfVar var_100
  loc_C5E57D: ILdRf var_B0
  loc_C5E580: FLdRfVar var_110
  loc_C5E583: ImpAdCallFPR4  = Format(, )
  loc_C5E588: AryUnlock
  loc_C5E58B: FLdRfVar var_110
  loc_C5E58E: CStrVarVal var_A0
  loc_C5E592: FLdPr Me
  loc_C5E595: VCallAd Control_ID_AporLeyTxt
  loc_C5E598: FStAdFunc var_98
  loc_C5E59B: FLdPr var_98
  loc_C5E59E: Me.Text = from_stack_1
  loc_C5E5A3: FFree1Str var_A0
  loc_C5E5A6: FFree1Ad var_98
  loc_C5E5A9: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E5B2: LitVarI2 var_D4, 4
  loc_C5E5B7: PopAdLdVar
  loc_C5E5B8: FLdPr Me
  loc_C5E5BB: MemLdRfVar from_stack_1.global_92
  loc_C5E5BE: VarIndexLdRfVarLock
  loc_C5E5C6: FStR4 var_B0
  loc_C5E5C9: LitI4 1
  loc_C5E5CE: LitI4 1
  loc_C5E5D3: LitVarStr var_140, "0.00"
  loc_C5E5D8: FStVarCopyObj var_100
  loc_C5E5DB: FLdRfVar var_100
  loc_C5E5DE: ILdRf var_B0
  loc_C5E5E1: FLdRfVar var_110
  loc_C5E5E4: ImpAdCallFPR4  = Format(, )
  loc_C5E5E9: AryUnlock
  loc_C5E5EC: FLdRfVar var_110
  loc_C5E5EF: CStrVarVal var_A0
  loc_C5E5F3: FLdPr Me
  loc_C5E5F6: VCallAd Control_ID_DereFijoTxt
  loc_C5E5F9: FStAdFunc var_98
  loc_C5E5FC: FLdPr var_98
  loc_C5E5FF: Me.Text = from_stack_1
  loc_C5E604: FFree1Str var_A0
  loc_C5E607: FFree1Ad var_98
  loc_C5E60A: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E613: LitVarI2 var_D4, 5
  loc_C5E618: PopAdLdVar
  loc_C5E619: FLdPr Me
  loc_C5E61C: MemLdRfVar from_stack_1.global_92
  loc_C5E61F: VarIndexLdRfVarLock
  loc_C5E627: FStR4 var_B0
  loc_C5E62A: LitI4 1
  loc_C5E62F: LitI4 1
  loc_C5E634: LitVarStr var_140, "0.00"
  loc_C5E639: FStVarCopyObj var_100
  loc_C5E63C: FLdRfVar var_100
  loc_C5E63F: ILdRf var_B0
  loc_C5E642: FLdRfVar var_110
  loc_C5E645: ImpAdCallFPR4  = Format(, )
  loc_C5E64A: AryUnlock
  loc_C5E64D: FLdRfVar var_110
  loc_C5E650: CStrVarVal var_A0
  loc_C5E654: FLdPr Me
  loc_C5E657: VCallAd Control_ID_HonoRecaTxt
  loc_C5E65A: FStAdFunc var_98
  loc_C5E65D: FLdPr var_98
  loc_C5E660: Me.Text = from_stack_1
  loc_C5E665: FFree1Str var_A0
  loc_C5E668: FFree1Ad var_98
  loc_C5E66B: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E674: LitVarI2 var_D4, 10
  loc_C5E679: PopAdLdVar
  loc_C5E67A: FLdPr Me
  loc_C5E67D: MemLdRfVar from_stack_1.global_92
  loc_C5E680: VarIndexLdRfVarLock
  loc_C5E688: FStR4 var_B0
  loc_C5E68B: LitI4 1
  loc_C5E690: LitI4 1
  loc_C5E695: LitVarStr var_140, "0.00"
  loc_C5E69A: FStVarCopyObj var_100
  loc_C5E69D: FLdRfVar var_100
  loc_C5E6A0: ILdRf var_B0
  loc_C5E6A3: FLdRfVar var_110
  loc_C5E6A6: ImpAdCallFPR4  = Format(, )
  loc_C5E6AB: AryUnlock
  loc_C5E6AE: FLdRfVar var_110
  loc_C5E6B1: CStrVarVal var_A0
  loc_C5E6B5: FLdPr Me
  loc_C5E6B8: VCallAd Control_ID_IvaRecaTxt
  loc_C5E6BB: FStAdFunc var_98
  loc_C5E6BE: FLdPr var_98
  loc_C5E6C1: Me.Text = from_stack_1
  loc_C5E6C6: FFree1Str var_A0
  loc_C5E6C9: FFree1Ad var_98
  loc_C5E6CC: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E6D5: LitVarI2 var_D4, 6
  loc_C5E6DA: PopAdLdVar
  loc_C5E6DB: FLdPr Me
  loc_C5E6DE: MemLdRfVar from_stack_1.global_92
  loc_C5E6E1: VarIndexLdRfVarLock
  loc_C5E6E9: FStR4 var_B0
  loc_C5E6EC: LitI4 1
  loc_C5E6F1: LitI4 1
  loc_C5E6F6: LitVarStr var_140, "0.00"
  loc_C5E6FB: FStVarCopyObj var_100
  loc_C5E6FE: FLdRfVar var_100
  loc_C5E701: ILdRf var_B0
  loc_C5E704: FLdRfVar var_110
  loc_C5E707: ImpAdCallFPR4  = Format(, )
  loc_C5E70C: AryUnlock
  loc_C5E70F: FLdRfVar var_110
  loc_C5E712: CStrVarVal var_A0
  loc_C5E716: FLdPr Me
  loc_C5E719: VCallAd Control_ID_HonoOfjuTxt
  loc_C5E71C: FStAdFunc var_98
  loc_C5E71F: FLdPr var_98
  loc_C5E722: Me.Text = from_stack_1
  loc_C5E727: FFree1Str var_A0
  loc_C5E72A: FFree1Ad var_98
  loc_C5E72D: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E736: LitVarI2 var_D4, 7
  loc_C5E73B: PopAdLdVar
  loc_C5E73C: FLdPr Me
  loc_C5E73F: MemLdRfVar from_stack_1.global_92
  loc_C5E742: VarIndexLdRfVarLock
  loc_C5E74A: FStR4 var_B0
  loc_C5E74D: LitI4 1
  loc_C5E752: LitI4 1
  loc_C5E757: LitVarStr var_140, "0.00"
  loc_C5E75C: FStVarCopyObj var_100
  loc_C5E75F: FLdRfVar var_100
  loc_C5E762: ILdRf var_B0
  loc_C5E765: FLdRfVar var_110
  loc_C5E768: ImpAdCallFPR4  = Format(, )
  loc_C5E76D: AryUnlock
  loc_C5E770: FLdRfVar var_110
  loc_C5E773: CStrVarVal var_A0
  loc_C5E777: FLdPr Me
  loc_C5E77A: VCallAd Control_ID_MoviRecaTxt
  loc_C5E77D: FStAdFunc var_98
  loc_C5E780: FLdPr var_98
  loc_C5E783: Me.Text = from_stack_1
  loc_C5E788: FFree1Str var_A0
  loc_C5E78B: FFree1Ad var_98
  loc_C5E78E: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E797: LitVarI2 var_D4, 8
  loc_C5E79C: PopAdLdVar
  loc_C5E79D: FLdPr Me
  loc_C5E7A0: MemLdRfVar from_stack_1.global_92
  loc_C5E7A3: VarIndexLdRfVarLock
  loc_C5E7AB: FStR4 var_B0
  loc_C5E7AE: LitI4 1
  loc_C5E7B3: LitI4 1
  loc_C5E7B8: LitVarStr var_140, "0.00"
  loc_C5E7BD: FStVarCopyObj var_100
  loc_C5E7C0: FLdRfVar var_100
  loc_C5E7C3: ILdRf var_B0
  loc_C5E7C6: FLdRfVar var_110
  loc_C5E7C9: ImpAdCallFPR4  = Format(, )
  loc_C5E7CE: AryUnlock
  loc_C5E7D1: FLdRfVar var_110
  loc_C5E7D4: CStrVarVal var_A0
  loc_C5E7D8: FLdPr Me
  loc_C5E7DB: VCallAd Control_ID_MoviOfjuTxt
  loc_C5E7DE: FStAdFunc var_98
  loc_C5E7E1: FLdPr var_98
  loc_C5E7E4: Me.Text = from_stack_1
  loc_C5E7E9: FFree1Str var_A0
  loc_C5E7EC: FFree1Ad var_98
  loc_C5E7EF: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E7F8: Branch loc_C5EBC5
  loc_C5E7FB: LitVarI2 var_D4, 1
  loc_C5E800: PopAdLdVar
  loc_C5E801: FLdPr Me
  loc_C5E804: MemLdRfVar from_stack_1.global_76
  loc_C5E807: VarIndexLdRfVarLock
  loc_C5E80F: FStR4 var_B0
  loc_C5E812: LitI4 1
  loc_C5E817: LitI4 1
  loc_C5E81C: LitVarStr var_140, "0.00"
  loc_C5E821: FStVarCopyObj var_100
  loc_C5E824: FLdRfVar var_100
  loc_C5E827: ILdRf var_B0
  loc_C5E82A: FLdRfVar var_110
  loc_C5E82D: ImpAdCallFPR4  = Format(, )
  loc_C5E832: AryUnlock
  loc_C5E835: FLdRfVar var_110
  loc_C5E838: CStrVarVal var_A0
  loc_C5E83C: FLdPr Me
  loc_C5E83F: VCallAd Control_ID_ComiAdmiTxt
  loc_C5E842: FStAdFunc var_98
  loc_C5E845: FLdPr var_98
  loc_C5E848: Me.Text = from_stack_1
  loc_C5E84D: FFree1Str var_A0
  loc_C5E850: FFree1Ad var_98
  loc_C5E853: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E85C: LitVarI2 var_D4, 9
  loc_C5E861: PopAdLdVar
  loc_C5E862: FLdPr Me
  loc_C5E865: MemLdRfVar from_stack_1.global_76
  loc_C5E868: VarIndexLdRfVarLock
  loc_C5E870: FStR4 var_B0
  loc_C5E873: LitI4 1
  loc_C5E878: LitI4 1
  loc_C5E87D: LitVarStr var_140, "0.00"
  loc_C5E882: FStVarCopyObj var_100
  loc_C5E885: FLdRfVar var_100
  loc_C5E888: ILdRf var_B0
  loc_C5E88B: FLdRfVar var_110
  loc_C5E88E: ImpAdCallFPR4  = Format(, )
  loc_C5E893: AryUnlock
  loc_C5E896: FLdRfVar var_110
  loc_C5E899: CStrVarVal var_A0
  loc_C5E89D: FLdPr Me
  loc_C5E8A0: VCallAd Control_ID_IvaCoadTxt
  loc_C5E8A3: FStAdFunc var_98
  loc_C5E8A6: FLdPr var_98
  loc_C5E8A9: Me.Text = from_stack_1
  loc_C5E8AE: FFree1Str var_A0
  loc_C5E8B1: FFree1Ad var_98
  loc_C5E8B4: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E8BD: LitVarI2 var_D4, 2
  loc_C5E8C2: PopAdLdVar
  loc_C5E8C3: FLdPr Me
  loc_C5E8C6: MemLdRfVar from_stack_1.global_76
  loc_C5E8C9: VarIndexLdRfVarLock
  loc_C5E8D1: FStR4 var_B0
  loc_C5E8D4: LitI4 1
  loc_C5E8D9: LitI4 1
  loc_C5E8DE: LitVarStr var_140, "0.00"
  loc_C5E8E3: FStVarCopyObj var_100
  loc_C5E8E6: FLdRfVar var_100
  loc_C5E8E9: ILdRf var_B0
  loc_C5E8EC: FLdRfVar var_110
  loc_C5E8EF: ImpAdCallFPR4  = Format(, )
  loc_C5E8F4: AryUnlock
  loc_C5E8F7: FLdRfVar var_110
  loc_C5E8FA: CStrVarVal var_A0
  loc_C5E8FE: FLdPr Me
  loc_C5E901: VCallAd Control_ID_TasaJustTxt
  loc_C5E904: FStAdFunc var_98
  loc_C5E907: FLdPr var_98
  loc_C5E90A: Me.Text = from_stack_1
  loc_C5E90F: FFree1Str var_A0
  loc_C5E912: FFree1Ad var_98
  loc_C5E915: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E91E: LitVarI2 var_D4, 3
  loc_C5E923: PopAdLdVar
  loc_C5E924: FLdPr Me
  loc_C5E927: MemLdRfVar from_stack_1.global_76
  loc_C5E92A: VarIndexLdRfVarLock
  loc_C5E932: FStR4 var_B0
  loc_C5E935: LitI4 1
  loc_C5E93A: LitI4 1
  loc_C5E93F: LitVarStr var_140, "0.00"
  loc_C5E944: FStVarCopyObj var_100
  loc_C5E947: FLdRfVar var_100
  loc_C5E94A: ILdRf var_B0
  loc_C5E94D: FLdRfVar var_110
  loc_C5E950: ImpAdCallFPR4  = Format(, )
  loc_C5E955: AryUnlock
  loc_C5E958: FLdRfVar var_110
  loc_C5E95B: CStrVarVal var_A0
  loc_C5E95F: FLdPr Me
  loc_C5E962: VCallAd Control_ID_AporLeyTxt
  loc_C5E965: FStAdFunc var_98
  loc_C5E968: FLdPr var_98
  loc_C5E96B: Me.Text = from_stack_1
  loc_C5E970: FFree1Str var_A0
  loc_C5E973: FFree1Ad var_98
  loc_C5E976: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E97F: LitVarI2 var_D4, 4
  loc_C5E984: PopAdLdVar
  loc_C5E985: FLdPr Me
  loc_C5E988: MemLdRfVar from_stack_1.global_76
  loc_C5E98B: VarIndexLdRfVarLock
  loc_C5E993: FStR4 var_B0
  loc_C5E996: LitI4 1
  loc_C5E99B: LitI4 1
  loc_C5E9A0: LitVarStr var_140, "0.00"
  loc_C5E9A5: FStVarCopyObj var_100
  loc_C5E9A8: FLdRfVar var_100
  loc_C5E9AB: ILdRf var_B0
  loc_C5E9AE: FLdRfVar var_110
  loc_C5E9B1: ImpAdCallFPR4  = Format(, )
  loc_C5E9B6: AryUnlock
  loc_C5E9B9: FLdRfVar var_110
  loc_C5E9BC: CStrVarVal var_A0
  loc_C5E9C0: FLdPr Me
  loc_C5E9C3: VCallAd Control_ID_DereFijoTxt
  loc_C5E9C6: FStAdFunc var_98
  loc_C5E9C9: FLdPr var_98
  loc_C5E9CC: Me.Text = from_stack_1
  loc_C5E9D1: FFree1Str var_A0
  loc_C5E9D4: FFree1Ad var_98
  loc_C5E9D7: FFreeVar var_C0 = "": var_100 = ""
  loc_C5E9E0: LitVarI2 var_D4, 5
  loc_C5E9E5: PopAdLdVar
  loc_C5E9E6: FLdPr Me
  loc_C5E9E9: MemLdRfVar from_stack_1.global_76
  loc_C5E9EC: VarIndexLdRfVarLock
  loc_C5E9F4: FStR4 var_B0
  loc_C5E9F7: LitI4 1
  loc_C5E9FC: LitI4 1
  loc_C5EA01: LitVarStr var_140, "0.00"
  loc_C5EA06: FStVarCopyObj var_100
  loc_C5EA09: FLdRfVar var_100
  loc_C5EA0C: ILdRf var_B0
  loc_C5EA0F: FLdRfVar var_110
  loc_C5EA12: ImpAdCallFPR4  = Format(, )
  loc_C5EA17: AryUnlock
  loc_C5EA1A: FLdRfVar var_110
  loc_C5EA1D: CStrVarVal var_A0
  loc_C5EA21: FLdPr Me
  loc_C5EA24: VCallAd Control_ID_HonoRecaTxt
  loc_C5EA27: FStAdFunc var_98
  loc_C5EA2A: FLdPr var_98
  loc_C5EA2D: Me.Text = from_stack_1
  loc_C5EA32: FFree1Str var_A0
  loc_C5EA35: FFree1Ad var_98
  loc_C5EA38: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EA41: LitVarI2 var_D4, 10
  loc_C5EA46: PopAdLdVar
  loc_C5EA47: FLdPr Me
  loc_C5EA4A: MemLdRfVar from_stack_1.global_76
  loc_C5EA4D: VarIndexLdRfVarLock
  loc_C5EA55: FStR4 var_B0
  loc_C5EA58: LitI4 1
  loc_C5EA5D: LitI4 1
  loc_C5EA62: LitVarStr var_140, "0.00"
  loc_C5EA67: FStVarCopyObj var_100
  loc_C5EA6A: FLdRfVar var_100
  loc_C5EA6D: ILdRf var_B0
  loc_C5EA70: FLdRfVar var_110
  loc_C5EA73: ImpAdCallFPR4  = Format(, )
  loc_C5EA78: AryUnlock
  loc_C5EA7B: FLdRfVar var_110
  loc_C5EA7E: CStrVarVal var_A0
  loc_C5EA82: FLdPr Me
  loc_C5EA85: VCallAd Control_ID_IvaRecaTxt
  loc_C5EA88: FStAdFunc var_98
  loc_C5EA8B: FLdPr var_98
  loc_C5EA8E: Me.Text = from_stack_1
  loc_C5EA93: FFree1Str var_A0
  loc_C5EA96: FFree1Ad var_98
  loc_C5EA99: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EAA2: LitVarI2 var_D4, 6
  loc_C5EAA7: PopAdLdVar
  loc_C5EAA8: FLdPr Me
  loc_C5EAAB: MemLdRfVar from_stack_1.global_76
  loc_C5EAAE: VarIndexLdRfVarLock
  loc_C5EAB6: FStR4 var_B0
  loc_C5EAB9: LitI4 1
  loc_C5EABE: LitI4 1
  loc_C5EAC3: LitVarStr var_140, "0.00"
  loc_C5EAC8: FStVarCopyObj var_100
  loc_C5EACB: FLdRfVar var_100
  loc_C5EACE: ILdRf var_B0
  loc_C5EAD1: FLdRfVar var_110
  loc_C5EAD4: ImpAdCallFPR4  = Format(, )
  loc_C5EAD9: AryUnlock
  loc_C5EADC: FLdRfVar var_110
  loc_C5EADF: CStrVarVal var_A0
  loc_C5EAE3: FLdPr Me
  loc_C5EAE6: VCallAd Control_ID_HonoOfjuTxt
  loc_C5EAE9: FStAdFunc var_98
  loc_C5EAEC: FLdPr var_98
  loc_C5EAEF: Me.Text = from_stack_1
  loc_C5EAF4: FFree1Str var_A0
  loc_C5EAF7: FFree1Ad var_98
  loc_C5EAFA: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EB03: LitVarI2 var_D4, 7
  loc_C5EB08: PopAdLdVar
  loc_C5EB09: FLdPr Me
  loc_C5EB0C: MemLdRfVar from_stack_1.global_76
  loc_C5EB0F: VarIndexLdRfVarLock
  loc_C5EB17: FStR4 var_B0
  loc_C5EB1A: LitI4 1
  loc_C5EB1F: LitI4 1
  loc_C5EB24: LitVarStr var_140, "0.00"
  loc_C5EB29: FStVarCopyObj var_100
  loc_C5EB2C: FLdRfVar var_100
  loc_C5EB2F: ILdRf var_B0
  loc_C5EB32: FLdRfVar var_110
  loc_C5EB35: ImpAdCallFPR4  = Format(, )
  loc_C5EB3A: AryUnlock
  loc_C5EB3D: FLdRfVar var_110
  loc_C5EB40: CStrVarVal var_A0
  loc_C5EB44: FLdPr Me
  loc_C5EB47: VCallAd Control_ID_MoviRecaTxt
  loc_C5EB4A: FStAdFunc var_98
  loc_C5EB4D: FLdPr var_98
  loc_C5EB50: Me.Text = from_stack_1
  loc_C5EB55: FFree1Str var_A0
  loc_C5EB58: FFree1Ad var_98
  loc_C5EB5B: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EB64: LitVarI2 var_D4, 8
  loc_C5EB69: PopAdLdVar
  loc_C5EB6A: FLdPr Me
  loc_C5EB6D: MemLdRfVar from_stack_1.global_76
  loc_C5EB70: VarIndexLdRfVarLock
  loc_C5EB78: FStR4 var_B0
  loc_C5EB7B: LitI4 1
  loc_C5EB80: LitI4 1
  loc_C5EB85: LitVarStr var_140, "0.00"
  loc_C5EB8A: FStVarCopyObj var_100
  loc_C5EB8D: FLdRfVar var_100
  loc_C5EB90: ILdRf var_B0
  loc_C5EB93: FLdRfVar var_110
  loc_C5EB96: ImpAdCallFPR4  = Format(, )
  loc_C5EB9B: AryUnlock
  loc_C5EB9E: FLdRfVar var_110
  loc_C5EBA1: CStrVarVal var_A0
  loc_C5EBA5: FLdPr Me
  loc_C5EBA8: VCallAd Control_ID_MoviOfjuTxt
  loc_C5EBAB: FStAdFunc var_98
  loc_C5EBAE: FLdPr var_98
  loc_C5EBB1: Me.Text = from_stack_1
  loc_C5EBB6: FFree1Str var_A0
  loc_C5EBB9: FFree1Ad var_98
  loc_C5EBBC: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EBC5: Call Proc_287_49_AF7254()
  loc_C5EBCA: FLdRfVar var_15C
  loc_C5EBCD: FLdPr Me
  loc_C5EBD0: MemLdRfVar from_stack_1.global_52
  loc_C5EBD3: NewIfNullPr clsapremio
  loc_C5EBD6: from_stack_1 = clsapremio.CapiApre
  loc_C5EBDB: LitI4 1
  loc_C5EBE0: LitI4 1
  loc_C5EBE5: LitVarStr var_F0, "0.00"
  loc_C5EBEA: FStVarCopyObj var_100
  loc_C5EBED: FLdRfVar var_100
  loc_C5EBF0: FLdFPR8 var_15C
  loc_C5EBF3: CVarR8
  loc_C5EBF7: FLdRfVar var_110
  loc_C5EBFA: ImpAdCallFPR4  = Format(, )
  loc_C5EBFF: FLdRfVar var_110
  loc_C5EC02: CStrVarVal var_A0
  loc_C5EC06: FLdPr Me
  loc_C5EC09: VCallAd Control_ID_CapitalLbl
  loc_C5EC0C: FStAdFunc var_98
  loc_C5EC0F: FLdPr var_98
  loc_C5EC12: Me.Caption = from_stack_1
  loc_C5EC17: FFree1Str var_A0
  loc_C5EC1A: FFree1Ad var_98
  loc_C5EC1D: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EC26: FLdRfVar var_15C
  loc_C5EC29: FLdPr Me
  loc_C5EC2C: MemLdRfVar from_stack_1.global_52
  loc_C5EC2F: NewIfNullPr clsapremio
  loc_C5EC32: from_stack_1 = clsapremio.RecaApre
  loc_C5EC37: LitI4 1
  loc_C5EC3C: LitI4 1
  loc_C5EC41: LitVarStr var_F0, "0.00"
  loc_C5EC46: FStVarCopyObj var_100
  loc_C5EC49: FLdRfVar var_100
  loc_C5EC4C: FLdFPR8 var_15C
  loc_C5EC4F: CVarR8
  loc_C5EC53: FLdRfVar var_110
  loc_C5EC56: ImpAdCallFPR4  = Format(, )
  loc_C5EC5B: FLdRfVar var_110
  loc_C5EC5E: CStrVarVal var_A0
  loc_C5EC62: FLdPr Me
  loc_C5EC65: VCallAd Control_ID_RecargoLbl
  loc_C5EC68: FStAdFunc var_98
  loc_C5EC6B: FLdPr var_98
  loc_C5EC6E: Me.Caption = from_stack_1
  loc_C5EC73: FFree1Str var_A0
  loc_C5EC76: FFree1Ad var_98
  loc_C5EC79: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EC82: FLdRfVar var_B0
  loc_C5EC85: FLdPr Me
  loc_C5EC88: MemLdRfVar from_stack_1.global_56
  loc_C5EC8B: NewIfNullPr clsctacte
  loc_C5EC8E: from_stack_1 = clsctacte.RecordCount
  loc_C5EC93: ILdRf var_B0
  loc_C5EC96: LitI4 0
  loc_C5EC9B: GtI4
  loc_C5EC9C: BranchF loc_C5ECFE
  loc_C5EC9F: FLdRfVar var_15C
  loc_C5ECA2: FLdPr Me
  loc_C5ECA5: MemLdRfVar from_stack_1.global_56
  loc_C5ECA8: NewIfNullPr clsctacte
  loc_C5ECAB: from_stack_1 = clsctacte.RecaCtct
  loc_C5ECB0: LitI4 1
  loc_C5ECB5: LitI4 1
  loc_C5ECBA: LitVarStr var_F0, "0.00"
  loc_C5ECBF: FStVarCopyObj var_100
  loc_C5ECC2: FLdRfVar var_100
  loc_C5ECC5: FLdFPR8 var_15C
  loc_C5ECC8: CVarR8
  loc_C5ECCC: FLdRfVar var_110
  loc_C5ECCF: ImpAdCallFPR4  = Format(, )
  loc_C5ECD4: FLdRfVar var_110
  loc_C5ECD7: CStrVarVal var_A0
  loc_C5ECDB: FLdPr Me
  loc_C5ECDE: VCallAd Control_ID_RecargoActualizadoLbl
  loc_C5ECE1: FStAdFunc var_98
  loc_C5ECE4: FLdPr var_98
  loc_C5ECE7: Me.Caption = from_stack_1
  loc_C5ECEC: FFree1Str var_A0
  loc_C5ECEF: FFree1Ad var_98
  loc_C5ECF2: FFreeVar var_C0 = "": var_100 = ""
  loc_C5ECFB: Branch loc_C5ED47
  loc_C5ECFE: LitI4 1
  loc_C5ED03: LitI4 1
  loc_C5ED08: LitVarStr var_F0, "0.00"
  loc_C5ED0D: FStVarCopyObj var_100
  loc_C5ED10: FLdRfVar var_100
  loc_C5ED13: LitVarI2 var_C0, 0
  loc_C5ED18: FLdRfVar var_110
  loc_C5ED1B: ImpAdCallFPR4  = Format(, )
  loc_C5ED20: FLdRfVar var_110
  loc_C5ED23: CStrVarVal var_A0
  loc_C5ED27: FLdPr Me
  loc_C5ED2A: VCallAd Control_ID_RecargoActualizadoLbl
  loc_C5ED2D: FStAdFunc var_98
  loc_C5ED30: FLdPr var_98
  loc_C5ED33: Me.Caption = from_stack_1
  loc_C5ED38: FFree1Str var_A0
  loc_C5ED3B: FFree1Ad var_98
  loc_C5ED3E: FFreeVar var_C0 = "": var_100 = ""
  loc_C5ED47: FLdRfVar var_15C
  loc_C5ED4A: FLdPr Me
  loc_C5ED4D: MemLdRfVar from_stack_1.global_52
  loc_C5ED50: NewIfNullPr clsapremio
  loc_C5ED53: from_stack_1 = clsapremio.CapiApre
  loc_C5ED58: FLdRfVar var_164
  loc_C5ED5B: FLdPr Me
  loc_C5ED5E: MemLdRfVar from_stack_1.global_52
  loc_C5ED61: NewIfNullPr clsapremio
  loc_C5ED64: from_stack_1 = clsapremio.RecaApre
  loc_C5ED69: LitI4 1
  loc_C5ED6E: LitI4 1
  loc_C5ED73: LitVarStr var_F0, "0.00"
  loc_C5ED78: FStVarCopyObj var_100
  loc_C5ED7B: FLdRfVar var_100
  loc_C5ED7E: FLdFPR8 var_15C
  loc_C5ED81: FnCDblR8
  loc_C5ED83: FLdFPR8 var_164
  loc_C5ED86: FnCDblR8
  loc_C5ED88: AddR8
  loc_C5ED89: CVarR8
  loc_C5ED8D: FLdRfVar var_110
  loc_C5ED90: ImpAdCallFPR4  = Format(, )
  loc_C5ED95: FLdRfVar var_110
  loc_C5ED98: CStrVarVal var_A0
  loc_C5ED9C: FLdPr Me
  loc_C5ED9F: VCallAd Control_ID_TotalDeudaLbl
  loc_C5EDA2: FStAdFunc var_98
  loc_C5EDA5: FLdPr var_98
  loc_C5EDA8: Me.Caption = from_stack_1
  loc_C5EDAD: FFree1Str var_A0
  loc_C5EDB0: FFree1Ad var_98
  loc_C5EDB3: FFreeVar var_C0 = "": var_100 = ""
  loc_C5EDBC: LitStr "SELECT  CodiInju, tmp_apredeta.CodiReca, DetaReca, (tmp_apredeta.ImreBade + tmp_apredeta.IvreBade) ImpoReca, tmp_apredeta.CodiOfju, DetaOfju, (tmp_apredeta.ImofBade + tmp_apredeta.IvofBade) ImpoOfju FROM tmp_apredeta "
  loc_C5EDBF: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = tmp_apredeta.CodiReca "
  loc_C5EDC2: ConcatStr
  loc_C5EDC3: FStStrNoPop var_A0
  loc_C5EDC6: LitStr " INNER JOIN oficjust ON oficjust.CodiOfju = tmp_apredeta.CodiOfju "
  loc_C5EDC9: ConcatStr
  loc_C5EDCA: FStStrNoPop var_A4
  loc_C5EDCD: LitStr " WHERE NumeApre = "
  loc_C5EDD0: ConcatStr
  loc_C5EDD1: FStStrNoPop var_AC
  loc_C5EDD4: FLdRfVar var_A8
  loc_C5EDD7: FLdPr Me
  loc_C5EDDA: VCallAd Control_ID_NumeApreTxt
  loc_C5EDDD: FStAdFunc var_98
  loc_C5EDE0: FLdPr var_98
  loc_C5EDE3:  = Me.Text
  loc_C5EDE8: ILdRf var_A8
  loc_C5EDEB: ConcatStr
  loc_C5EDEC: FStStrNoPop var_E0
  loc_C5EDEF: LitStr " ORDER BY NumeApre, CodiInju"
  loc_C5EDF2: ConcatStr
  loc_C5EDF3: FStStrNoPop var_154
  loc_C5EDF6: FLdPr Me
  loc_C5EDF9: MemLdRfVar from_stack_1.global_64
  loc_C5EDFC: NewIfNullPr clsinstapre
  loc_C5EDFF: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_C5EE04: FFreeStr var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_E0 = ""
  loc_C5EE13: FFree1Ad var_98
  loc_C5EE16: FLdRfVar var_B0
  loc_C5EE19: FLdPr Me
  loc_C5EE1C: MemLdRfVar from_stack_1.global_64
  loc_C5EE1F: NewIfNullPr clsinstapre
  loc_C5EE22: from_stack_1 = clsinstapre.RecordCount
  loc_C5EE27: ILdRf var_B0
  loc_C5EE2A: LitI4 0
  loc_C5EE2F: GtI4
  loc_C5EE30: BranchF loc_C5EE91
  loc_C5EE33: LitI4 0
  loc_C5EE38: LitI4 1
  loc_C5EE3D: FLdRfVar var_16C
  loc_C5EE40: Redim
  loc_C5EE4A: FLdPr Me
  loc_C5EE4D: MemLdRfVar from_stack_1.global_64
  loc_C5EE50: NewIfNullAd
  loc_C5EE53: FStAd var_98 
  loc_C5EE57: FLdRfVar var_98
  loc_C5EE5A: CVarRef
  loc_C5EE5F: ParmAry1St
  loc_C5EE65: FLdPr Me
  loc_C5EE68: VCallAd Control_ID_InstApreDgd
  loc_C5EE6B: CVarAd
  loc_C5EE6F: ParmAry1St
  loc_C5EE75: FLdRfVar var_16C
  loc_C5EE78: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_C5EE7D: ILdRf var_98
  loc_C5EE80: CastAd
  loc_C5EE83: FLdPr Me
  loc_C5EE86: MemStAdFunc
  loc_C5EE8A: FLdRfVar var_16C
  loc_C5EE8D: Erase
  loc_C5EE8E: FFree1Ad var_98
  loc_C5EE91: LitI2_Byte &HFF
  loc_C5EE93: FLdPr Me
  loc_C5EE96: VCallAd Control_ID_ListadoCmd
  loc_C5EE99: FStAdFunc var_98
  loc_C5EE9C: FLdPr var_98
  loc_C5EE9F: Me.Enabled = from_stack_1b
  loc_C5EEA4: FFree1Ad var_98
  loc_C5EEA7: LitI2_Byte &HFF
  loc_C5EEA9: FLdPr Me
  loc_C5EEAC: VCallAd Control_ID_BoletoCmd
  loc_C5EEAF: FStAdFunc var_98
  loc_C5EEB2: FLdPr var_98
  loc_C5EEB5: Me.Enabled = from_stack_1b
  loc_C5EEBA: FFree1Ad var_98
  loc_C5EEBD: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D1C68
  'Data Table: 521888
  loc_9D1C50: ILdRf Me
  loc_9D1C53: FStAdNoPop
  loc_9D1C57: ImpAdLdRf MemVar_D9C5D8
  loc_9D1C5A: NewIfNullPr Global
  loc_9D1C5D: Global.Unload from_stack_1
  loc_9D1C62: FFree1Ad var_88
  loc_9D1C65: ExitProcHresult
End Sub

Private Sub ListadoCmd_Click() 'A00A74
  'Data Table: 521888
  loc_A00A44: ImpAdLdRf MemVar_D94CB0
  loc_A00A47: NewIfNullAd
  loc_A00A4A: CastAd
  loc_A00A4D: FStAdFuncNoPop
  loc_A00A50: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00A55: FFree1Ad var_88
  loc_A00A58: LitVar_Missing var_A8
  loc_A00A5B: PopAdLdVar
  loc_A00A5C: LitVarI4
  loc_A00A64: PopAdLdVar
  loc_A00A65: ImpAdLdRf MemVar_D94CB0
  loc_A00A68: NewIfNullPr rptConsultadeGastosyHonorarios
  loc_A00A6B: rptConsultadeGastosyHonorarios.Show from_stack_1, from_stack_2
  loc_A00A70: ExitProcHresult
End Sub

Private Sub BoletoCmd_Click() 'C2C0C0
  'Data Table: 521888
  loc_C2B6C8: ImpAdLdI2 MemVar_D93034
  loc_C2B6CB: FStI2 var_96
  loc_C2B6CE: FLdRfVar var_114
  loc_C2B6D1: FLdI2 var_96
  loc_C2B6D4: FLdRfVar var_88
  loc_C2B6D7: NewIfNullPr clsctacte
  loc_C2B6DA: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_C2B6DF: ILdRf var_114
  loc_C2B6E2: FStR4 var_A8
  loc_C2B6E5: LitI2_Byte 0
  loc_C2B6E7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C2B6EC: FStFPR8 var_A4
  loc_C2B6EF: FLdRfVar var_A4
  loc_C2B6F2: CVarRef
  loc_C2B6F7: FLdRfVar var_134
  loc_C2B6FA: ImpAdCallFPR4  = Year()
  loc_C2B6FF: FLdRfVar var_134
  loc_C2B702: CI2Var
  loc_C2B703: FStI2 var_96
  loc_C2B706: FFree1Var var_134 = ""
  loc_C2B709: FLdRfVar var_114
  loc_C2B70C: FLdI2 var_96
  loc_C2B70F: FLdRfVar var_8C
  loc_C2B712: NewIfNullPr clsnumebole
  loc_C2B715: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_C2B71A: ILdRf var_114
  loc_C2B71D: FStR4 var_9C
  loc_C2B720: FLdRfVar var_114
  loc_C2B723: FLdI2 var_96
  loc_C2B726: FLdRfVar var_88
  loc_C2B729: NewIfNullPr clsctacte
  loc_C2B72C: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_C2B731: ILdRf var_114
  loc_C2B734: FStR4 var_A8
  loc_C2B737: LitStr "START TRANSACTION; INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_C2B73A: LitStr " VALUES ("
  loc_C2B73D: ConcatStr
  loc_C2B73E: FStStrNoPop var_138
  loc_C2B741: FLdI2 var_96
  loc_C2B744: CStrUI1
  loc_C2B746: FStStrNoPop var_13C
  loc_C2B749: ConcatStr
  loc_C2B74A: FStStrNoPop var_140
  loc_C2B74D: LitStr ","
  loc_C2B750: ConcatStr
  loc_C2B751: FStStrNoPop var_144
  loc_C2B754: ILdRf var_9C
  loc_C2B757: CStrI4
  loc_C2B759: FStStrNoPop var_148
  loc_C2B75C: ConcatStr
  loc_C2B75D: FStStrNoPop var_14C
  loc_C2B760: LitStr ","
  loc_C2B763: ConcatStr
  loc_C2B764: FStStrNoPop var_150
  loc_C2B767: ImpAdLdI2 MemVar_D93034
  loc_C2B76A: CStrUI1
  loc_C2B76C: FStStrNoPop var_154
  loc_C2B76F: ConcatStr
  loc_C2B770: FStStrNoPop var_158
  loc_C2B773: LitStr ","
  loc_C2B776: ConcatStr
  loc_C2B777: CVarStr var_168
  loc_C2B77A: FLdRfVar var_A4
  loc_C2B77D: CVarRef
  loc_C2B782: FLdRfVar var_134
  loc_C2B785: ImpAdCallFPR4  = Month()
  loc_C2B78A: FLdRfVar var_134
  loc_C2B78D: ConcatVar var_178
  loc_C2B791: LitVarStr var_188, ","
  loc_C2B796: ConcatVar var_198
  loc_C2B79A: ILdRf var_A8
  loc_C2B79D: CVarI4
  loc_C2B7A1: ConcatVar var_1B8
  loc_C2B7A5: LitVarStr var_1C8, ",1,1,"
  loc_C2B7AA: ConcatVar var_1D8
  loc_C2B7AE: FLdRfVar var_1E0
  loc_C2B7B1: FLdPr Me
  loc_C2B7B4: VCallAd Control_ID_CodiOficLbl
  loc_C2B7B7: FStAdFunc var_1DC
  loc_C2B7BA: FLdPr var_1DC
  loc_C2B7BD:  = Me.Caption
  loc_C2B7C2: FLdZeroAd var_1E0
  loc_C2B7C5: CVarStr var_1F0
  loc_C2B7C8: ConcatVar var_200
  loc_C2B7CC: LitVarStr var_210, ",'"
  loc_C2B7D1: ConcatVar var_220
  loc_C2B7D5: FLdRfVar var_228
  loc_C2B7D8: FLdPr Me
  loc_C2B7DB: VCallAd Control_ID_CuenCtctLbl
  loc_C2B7DE: FStAdFunc var_224
  loc_C2B7E1: FLdPr var_224
  loc_C2B7E4:  = Me.Caption
  loc_C2B7E9: FLdZeroAd var_228
  loc_C2B7EC: CVarStr var_238
  loc_C2B7EF: ConcatVar var_248
  loc_C2B7F3: LitVarStr var_258, "','Aforos Varios',0,0,"
  loc_C2B7F8: ConcatVar var_268
  loc_C2B7FC: FLdRfVar var_270
  loc_C2B7FF: FLdPr Me
  loc_C2B802: VCallAd Control_ID_NumeApreTxt
  loc_C2B805: FStAdFunc var_26C
  loc_C2B808: FLdPr var_26C
  loc_C2B80B:  = Me.Text
  loc_C2B810: FLdZeroAd var_270
  loc_C2B813: CVarStr var_280
  loc_C2B816: ConcatVar var_290
  loc_C2B81A: LitVarStr var_2A0, ",24,"
  loc_C2B81F: ConcatVar var_2B0
  loc_C2B823: ImpAdLdI2 MemVar_D93034
  loc_C2B826: CVarI2 var_2C0
  loc_C2B829: ConcatVar var_2D0
  loc_C2B82D: LitVarStr var_2E0, ",'91010600',0,0,0,0,0,0,0,0);"
  loc_C2B832: ConcatVar var_2F0
  loc_C2B836: CStrVarTmp
  loc_C2B837: FStStr var_110
  loc_C2B83A: FFreeStr var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_C2B84F: FFreeAd var_1DC = "": var_224 = ""
  loc_C2B858: FFreeVar var_168 = "": var_134 = "": var_178 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1F0 = "": var_200 = "": var_220 = "": var_238 = "": var_248 = "": var_268 = "": var_280 = "": var_290 = "": var_2B0 = "": var_2D0 = ""
  loc_C2B87D: FLdRfVar var_138
  loc_C2B880: FLdPr Me
  loc_C2B883: VCallAd Control_ID_ComiAdmiTxt
  loc_C2B886: FStAdFunc var_1DC
  loc_C2B889: FLdPr var_1DC
  loc_C2B88C:  = Me.Text
  loc_C2B891: ILdRf var_138
  loc_C2B894: CR8Str
  loc_C2B896: FStFPR8 var_B4
  loc_C2B899: FFree1Str var_138
  loc_C2B89C: FFree1Ad var_1DC
  loc_C2B89F: FLdRfVar var_138
  loc_C2B8A2: FLdPr Me
  loc_C2B8A5: VCallAd Control_ID_TasaJustTxt
  loc_C2B8A8: FStAdFunc var_1DC
  loc_C2B8AB: FLdPr var_1DC
  loc_C2B8AE:  = Me.Text
  loc_C2B8B3: ILdRf var_138
  loc_C2B8B6: CR8Str
  loc_C2B8B8: FStFPR8 var_BC
  loc_C2B8BB: FFree1Str var_138
  loc_C2B8BE: FFree1Ad var_1DC
  loc_C2B8C1: FLdRfVar var_138
  loc_C2B8C4: FLdPr Me
  loc_C2B8C7: VCallAd Control_ID_AporLeyTxt
  loc_C2B8CA: FStAdFunc var_1DC
  loc_C2B8CD: FLdPr var_1DC
  loc_C2B8D0:  = Me.Text
  loc_C2B8D5: ILdRf var_138
  loc_C2B8D8: CR8Str
  loc_C2B8DA: FStFPR8 var_C4
  loc_C2B8DD: FFree1Str var_138
  loc_C2B8E0: FFree1Ad var_1DC
  loc_C2B8E3: FLdRfVar var_138
  loc_C2B8E6: FLdPr Me
  loc_C2B8E9: VCallAd Control_ID_DereFijoTxt
  loc_C2B8EC: FStAdFunc var_1DC
  loc_C2B8EF: FLdPr var_1DC
  loc_C2B8F2:  = Me.Text
  loc_C2B8F7: ILdRf var_138
  loc_C2B8FA: CR8Str
  loc_C2B8FC: FStFPR8 var_CC
  loc_C2B8FF: FFree1Str var_138
  loc_C2B902: FFree1Ad var_1DC
  loc_C2B905: FLdRfVar var_138
  loc_C2B908: FLdPr Me
  loc_C2B90B: VCallAd Control_ID_HonoRecaTxt
  loc_C2B90E: FStAdFunc var_1DC
  loc_C2B911: FLdPr var_1DC
  loc_C2B914:  = Me.Text
  loc_C2B919: ILdRf var_138
  loc_C2B91C: CR8Str
  loc_C2B91E: FStFPR8 var_D4
  loc_C2B921: FFree1Str var_138
  loc_C2B924: FFree1Ad var_1DC
  loc_C2B927: FLdRfVar var_138
  loc_C2B92A: FLdPr Me
  loc_C2B92D: VCallAd Control_ID_HonoOfjuTxt
  loc_C2B930: FStAdFunc var_1DC
  loc_C2B933: FLdPr var_1DC
  loc_C2B936:  = Me.Text
  loc_C2B93B: ILdRf var_138
  loc_C2B93E: CR8Str
  loc_C2B940: FStFPR8 var_DC
  loc_C2B943: FFree1Str var_138
  loc_C2B946: FFree1Ad var_1DC
  loc_C2B949: FLdRfVar var_138
  loc_C2B94C: FLdPr Me
  loc_C2B94F: VCallAd Control_ID_MoviRecaTxt
  loc_C2B952: FStAdFunc var_1DC
  loc_C2B955: FLdPr var_1DC
  loc_C2B958:  = Me.Text
  loc_C2B95D: ILdRf var_138
  loc_C2B960: CR8Str
  loc_C2B962: FStFPR8 var_E4
  loc_C2B965: FFree1Str var_138
  loc_C2B968: FFree1Ad var_1DC
  loc_C2B96B: FLdRfVar var_138
  loc_C2B96E: FLdPr Me
  loc_C2B971: VCallAd Control_ID_MoviOfjuTxt
  loc_C2B974: FStAdFunc var_1DC
  loc_C2B977: FLdPr var_1DC
  loc_C2B97A:  = Me.Text
  loc_C2B97F: ILdRf var_138
  loc_C2B982: CR8Str
  loc_C2B984: FStFPR8 var_EC
  loc_C2B987: FFree1Str var_138
  loc_C2B98A: FFree1Ad var_1DC
  loc_C2B98D: FLdRfVar var_138
  loc_C2B990: FLdPr Me
  loc_C2B993: VCallAd Control_ID_IvaCoadTxt
  loc_C2B996: FStAdFunc var_1DC
  loc_C2B999: FLdPr var_1DC
  loc_C2B99C:  = Me.Text
  loc_C2B9A1: ILdRf var_138
  loc_C2B9A4: CR8Str
  loc_C2B9A6: FStFPR8 var_F4
  loc_C2B9A9: FFree1Str var_138
  loc_C2B9AC: FFree1Ad var_1DC
  loc_C2B9AF: FLdRfVar var_138
  loc_C2B9B2: FLdPr Me
  loc_C2B9B5: VCallAd Control_ID_IvaRecaTxt
  loc_C2B9B8: FStAdFunc var_1DC
  loc_C2B9BB: FLdPr var_1DC
  loc_C2B9BE:  = Me.Text
  loc_C2B9C3: ILdRf var_138
  loc_C2B9C6: CR8Str
  loc_C2B9C8: FStFPR8 var_FC
  loc_C2B9CB: FFree1Str var_138
  loc_C2B9CE: FFree1Ad var_1DC
  loc_C2B9D1: LitI2_Byte 0
  loc_C2B9D3: CR8I2
  loc_C2B9D4: FStFPR8 var_104
  loc_C2B9D7: FLdFPR8 var_10C
  loc_C2B9DA: FLdFPR8 var_B4
  loc_C2B9DD: AddR8
  loc_C2B9DE: FLdFPR8 var_BC
  loc_C2B9E1: AddR8
  loc_C2B9E2: FLdFPR8 var_C4
  loc_C2B9E5: AddR8
  loc_C2B9E6: FLdFPR8 var_CC
  loc_C2B9E9: AddR8
  loc_C2B9EA: FLdFPR8 var_D4
  loc_C2B9ED: AddR8
  loc_C2B9EE: FLdFPR8 var_DC
  loc_C2B9F1: AddR8
  loc_C2B9F2: FLdFPR8 var_E4
  loc_C2B9F5: AddR8
  loc_C2B9F6: FLdFPR8 var_EC
  loc_C2B9F9: AddR8
  loc_C2B9FA: FLdFPR8 var_F4
  loc_C2B9FD: AddR8
  loc_C2B9FE: FLdFPR8 var_FC
  loc_C2BA01: AddR8
  loc_C2BA02: FLdFPR8 var_104
  loc_C2BA05: AddR8
  loc_C2BA06: FStFPR8 var_10C
  loc_C2BA09: FLdRfVar var_138
  loc_C2BA0C: FLdPr Me
  loc_C2BA0F: VCallAd Control_ID_CodiOficLbl
  loc_C2BA12: FStAdFunc var_1DC
  loc_C2BA15: FLdPr var_1DC
  loc_C2BA18:  = Me.Caption
  loc_C2BA1D: ILdRf var_138
  loc_C2BA20: CR8Str
  loc_C2BA22: LitI2_Byte 1
  loc_C2BA24: CR8I2
  loc_C2BA25: EqR4
  loc_C2BA26: FFree1Str var_138
  loc_C2BA29: FFree1Ad var_1DC
  loc_C2BA2C: BranchF loc_C2BACF
  loc_C2BA2F: FLdRfVar var_138
  loc_C2BA32: FLdPr Me
  loc_C2BA35: VCallAd Control_ID_CuenCtctLbl
  loc_C2BA38: FStAdFunc var_1DC
  loc_C2BA3B: FLdPr var_1DC
  loc_C2BA3E:  = Me.Caption
  loc_C2BA43: FLdRfVar var_94
  loc_C2BA46: NewIfNullRf
  loc_C2BA4A: ILdRf var_138
  loc_C2BA4D: ImpAdCallI2  = Proc_270_13_C86920()
  loc_C2BA52: FFree1Str var_138
  loc_C2BA55: FFree1Ad var_1DC
  loc_C2BA58: BranchF loc_C2BACC
  loc_C2BA5B: FLdRfVar var_138
  loc_C2BA5E: FLdRfVar var_94
  loc_C2BA61: NewIfNullPr tblPersonaGIS
  loc_C2BA64: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_C2BA69: FLdRfVar var_13C
  loc_C2BA6C: FLdRfVar var_94
  loc_C2BA6F: NewIfNullPr tblPersonaGIS
  loc_C2BA72: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_C2BA77: FLdZeroAd var_13C
  loc_C2BA7A: CVarStr var_168
  loc_C2BA7D: LitVarI2 var_134, 0
  loc_C2BA82: ILdRf var_138
  loc_C2BA85: LitStr vbNullString
  loc_C2BA88: EqStr
  loc_C2BA8A: CVarBoolI2 var_124
  loc_C2BA8E: FLdRfVar var_178
  loc_C2BA91: ImpAdCallFPR4  = IIf(, , )
  loc_C2BA96: LitI4 0
  loc_C2BA9B: LitI4 -1
  loc_C2BAA0: LitI4 1
  loc_C2BAA5: LitStr vbNullString
  loc_C2BAA8: LitStr "-"
  loc_C2BAAB: FLdRfVar var_178
  loc_C2BAAE: CStrVarVal var_140
  loc_C2BAB2: ImpAdCallI2 Replace(, , , , , )
  loc_C2BAB7: FStStr var_AC
  loc_C2BABA: FFreeStr var_138 = ""
  loc_C2BAC1: FFreeVar var_124 = "": var_134 = "": var_168 = ""
  loc_C2BACC: Branch loc_C2BB15
  loc_C2BACF: FLdRfVar var_138
  loc_C2BAD2: FLdPr Me
  loc_C2BAD5: VCallAd Control_ID_CodiOficLbl
  loc_C2BAD8: FStAdFunc var_1DC
  loc_C2BADB: FLdPr var_1DC
  loc_C2BADE:  = Me.Caption
  loc_C2BAE3: FLdRfVar var_13C
  loc_C2BAE6: FLdPr Me
  loc_C2BAE9: VCallAd Control_ID_CuenCtctLbl
  loc_C2BAEC: FStAdFunc var_224
  loc_C2BAEF: FLdPr var_224
  loc_C2BAF2:  = Me.Caption
  loc_C2BAF7: ILdRf var_13C
  loc_C2BAFA: ILdRf var_138
  loc_C2BAFD: CUI1Str
  loc_C2BAFF: ImpAdCallI2  = Proc_270_83_A9D6E0()
  loc_C2BB04: FStStr var_AC
  loc_C2BB07: FFreeStr var_138 = ""
  loc_C2BB0E: FFreeAd var_1DC = ""
  loc_C2BB15: ILdRf var_110
  loc_C2BB18: LitStr " INSERT INTO boleapre (PeriBole, NumeBole, NumeApre, CodiInju, CodiFapa, CuotDefa, FealBoap, FeacBoap, EstaBoap, CoadBoap, ReseBoap, ApleBoap, DefiBoap, HoreBoap, HoofBoap, MoreBoap, MoofBoap, IcomBoap, IrecBoap, IofiBoap, CodiUsua) "
  loc_C2BB1B: ConcatStr
  loc_C2BB1C: FStStrNoPop var_138
  loc_C2BB1F: LitStr " VALUES ("
  loc_C2BB22: ConcatStr
  loc_C2BB23: FStStrNoPop var_13C
  loc_C2BB26: FLdI2 var_96
  loc_C2BB29: CStrUI1
  loc_C2BB2B: FStStrNoPop var_140
  loc_C2BB2E: ConcatStr
  loc_C2BB2F: FStStrNoPop var_144
  loc_C2BB32: LitStr ","
  loc_C2BB35: ConcatStr
  loc_C2BB36: FStStrNoPop var_148
  loc_C2BB39: ILdRf var_9C
  loc_C2BB3C: CStrI4
  loc_C2BB3E: FStStrNoPop var_14C
  loc_C2BB41: ConcatStr
  loc_C2BB42: FStStrNoPop var_150
  loc_C2BB45: LitStr ","
  loc_C2BB48: ConcatStr
  loc_C2BB49: FStStrNoPop var_158
  loc_C2BB4C: FLdRfVar var_154
  loc_C2BB4F: FLdPr Me
  loc_C2BB52: VCallAd Control_ID_NumeApreTxt
  loc_C2BB55: FStAdFunc var_1DC
  loc_C2BB58: FLdPr var_1DC
  loc_C2BB5B:  = Me.Text
  loc_C2BB60: ILdRf var_154
  loc_C2BB63: ConcatStr
  loc_C2BB64: FStStrNoPop var_1E0
  loc_C2BB67: LitStr ","
  loc_C2BB6A: ConcatStr
  loc_C2BB6B: FStStrNoPop var_270
  loc_C2BB6E: FLdRfVar var_228
  loc_C2BB71: FLdPr Me
  loc_C2BB74: VCallAd Control_ID_CodiInjuLbl
  loc_C2BB77: FStAdFunc var_224
  loc_C2BB7A: FLdPr var_224
  loc_C2BB7D:  = Me.Caption
  loc_C2BB82: ILdRf var_228
  loc_C2BB85: ConcatStr
  loc_C2BB86: FStStrNoPop var_2F4
  loc_C2BB89: LitStr ",0,0,'"
  loc_C2BB8C: ConcatStr
  loc_C2BB8D: FStStrNoPop var_2F8
  loc_C2BB90: LitI4 1
  loc_C2BB95: LitI4 1
  loc_C2BB9A: LitVarStr var_188, "yyyy-mm-dd"
  loc_C2BB9F: FStVarCopyObj var_134
  loc_C2BBA2: FLdRfVar var_134
  loc_C2BBA5: FLdRfVar var_A4
  loc_C2BBA8: CVarRef
  loc_C2BBAD: ImpAdCallI2 Format$(, )
  loc_C2BBB2: FStStrNoPop var_2FC
  loc_C2BBB5: ConcatStr
  loc_C2BBB6: FStStrNoPop var_300
  loc_C2BBB9: LitStr "',Null,'Emitido',"
  loc_C2BBBC: ConcatStr
  loc_C2BBBD: FStStrNoPop var_308
  loc_C2BBC0: LitI4 0
  loc_C2BBC5: LitI4 -1
  loc_C2BBCA: LitI4 1
  loc_C2BBCF: LitStr "."
  loc_C2BBD2: LitStr ","
  loc_C2BBD5: FLdFPR8 var_B4
  loc_C2BBD8: CStrR8
  loc_C2BBDA: FStStrNoPop var_304
  loc_C2BBDD: ImpAdCallI2 Replace(, , , , , )
  loc_C2BBE2: FStStrNoPop var_30C
  loc_C2BBE5: ConcatStr
  loc_C2BBE6: FStStrNoPop var_310
  loc_C2BBE9: LitStr ","
  loc_C2BBEC: ConcatStr
  loc_C2BBED: FStStrNoPop var_318
  loc_C2BBF0: LitI4 0
  loc_C2BBF5: LitI4 -1
  loc_C2BBFA: LitI4 1
  loc_C2BBFF: LitStr "."
  loc_C2BC02: LitStr ","
  loc_C2BC05: FLdFPR8 var_BC
  loc_C2BC08: CStrR8
  loc_C2BC0A: FStStrNoPop var_314
  loc_C2BC0D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BC12: FStStrNoPop var_31C
  loc_C2BC15: ConcatStr
  loc_C2BC16: FStStrNoPop var_320
  loc_C2BC19: LitStr ","
  loc_C2BC1C: ConcatStr
  loc_C2BC1D: FStStrNoPop var_328
  loc_C2BC20: LitI4 0
  loc_C2BC25: LitI4 -1
  loc_C2BC2A: LitI4 1
  loc_C2BC2F: LitStr "."
  loc_C2BC32: LitStr ","
  loc_C2BC35: FLdFPR8 var_C4
  loc_C2BC38: CStrR8
  loc_C2BC3A: FStStrNoPop var_324
  loc_C2BC3D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BC42: FStStrNoPop var_32C
  loc_C2BC45: ConcatStr
  loc_C2BC46: FStStrNoPop var_330
  loc_C2BC49: LitStr ","
  loc_C2BC4C: ConcatStr
  loc_C2BC4D: FStStrNoPop var_338
  loc_C2BC50: LitI4 0
  loc_C2BC55: LitI4 -1
  loc_C2BC5A: LitI4 1
  loc_C2BC5F: LitStr "."
  loc_C2BC62: LitStr ","
  loc_C2BC65: FLdFPR8 var_CC
  loc_C2BC68: CStrR8
  loc_C2BC6A: FStStrNoPop var_334
  loc_C2BC6D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BC72: FStStrNoPop var_33C
  loc_C2BC75: ConcatStr
  loc_C2BC76: FStStrNoPop var_340
  loc_C2BC79: LitStr ","
  loc_C2BC7C: ConcatStr
  loc_C2BC7D: FStStrNoPop var_348
  loc_C2BC80: LitI4 0
  loc_C2BC85: LitI4 -1
  loc_C2BC8A: LitI4 1
  loc_C2BC8F: LitStr "."
  loc_C2BC92: LitStr ","
  loc_C2BC95: FLdFPR8 var_D4
  loc_C2BC98: CStrR8
  loc_C2BC9A: FStStrNoPop var_344
  loc_C2BC9D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BCA2: FStStrNoPop var_34C
  loc_C2BCA5: ConcatStr
  loc_C2BCA6: FStStrNoPop var_350
  loc_C2BCA9: LitStr ","
  loc_C2BCAC: ConcatStr
  loc_C2BCAD: FStStrNoPop var_358
  loc_C2BCB0: LitI4 0
  loc_C2BCB5: LitI4 -1
  loc_C2BCBA: LitI4 1
  loc_C2BCBF: LitStr "."
  loc_C2BCC2: LitStr ","
  loc_C2BCC5: FLdFPR8 var_DC
  loc_C2BCC8: CStrR8
  loc_C2BCCA: FStStrNoPop var_354
  loc_C2BCCD: ImpAdCallI2 Replace(, , , , , )
  loc_C2BCD2: FStStrNoPop var_35C
  loc_C2BCD5: ConcatStr
  loc_C2BCD6: FStStrNoPop var_360
  loc_C2BCD9: LitStr ","
  loc_C2BCDC: ConcatStr
  loc_C2BCDD: FStStrNoPop var_368
  loc_C2BCE0: LitI4 0
  loc_C2BCE5: LitI4 -1
  loc_C2BCEA: LitI4 1
  loc_C2BCEF: LitStr "."
  loc_C2BCF2: LitStr ","
  loc_C2BCF5: FLdFPR8 var_E4
  loc_C2BCF8: CStrR8
  loc_C2BCFA: FStStrNoPop var_364
  loc_C2BCFD: ImpAdCallI2 Replace(, , , , , )
  loc_C2BD02: FStStrNoPop var_36C
  loc_C2BD05: ConcatStr
  loc_C2BD06: FStStrNoPop var_370
  loc_C2BD09: LitStr ","
  loc_C2BD0C: ConcatStr
  loc_C2BD0D: FStStrNoPop var_378
  loc_C2BD10: LitI4 0
  loc_C2BD15: LitI4 -1
  loc_C2BD1A: LitI4 1
  loc_C2BD1F: LitStr "."
  loc_C2BD22: LitStr ","
  loc_C2BD25: FLdFPR8 var_EC
  loc_C2BD28: CStrR8
  loc_C2BD2A: FStStrNoPop var_374
  loc_C2BD2D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BD32: FStStrNoPop var_37C
  loc_C2BD35: ConcatStr
  loc_C2BD36: FStStrNoPop var_380
  loc_C2BD39: LitStr ","
  loc_C2BD3C: ConcatStr
  loc_C2BD3D: FStStrNoPop var_388
  loc_C2BD40: LitI4 0
  loc_C2BD45: LitI4 -1
  loc_C2BD4A: LitI4 1
  loc_C2BD4F: LitStr "."
  loc_C2BD52: LitStr ","
  loc_C2BD55: FLdFPR8 var_F4
  loc_C2BD58: CStrR8
  loc_C2BD5A: FStStrNoPop var_384
  loc_C2BD5D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BD62: FStStrNoPop var_38C
  loc_C2BD65: ConcatStr
  loc_C2BD66: FStStrNoPop var_390
  loc_C2BD69: LitStr ","
  loc_C2BD6C: ConcatStr
  loc_C2BD6D: FStStrNoPop var_398
  loc_C2BD70: LitI4 0
  loc_C2BD75: LitI4 -1
  loc_C2BD7A: LitI4 1
  loc_C2BD7F: LitStr "."
  loc_C2BD82: LitStr ","
  loc_C2BD85: FLdFPR8 var_FC
  loc_C2BD88: CStrR8
  loc_C2BD8A: FStStrNoPop var_394
  loc_C2BD8D: ImpAdCallI2 Replace(, , , , , )
  loc_C2BD92: FStStrNoPop var_39C
  loc_C2BD95: ConcatStr
  loc_C2BD96: FStStrNoPop var_3A0
  loc_C2BD99: LitStr ","
  loc_C2BD9C: ConcatStr
  loc_C2BD9D: FStStrNoPop var_3A8
  loc_C2BDA0: LitI4 0
  loc_C2BDA5: LitI4 -1
  loc_C2BDAA: LitI4 1
  loc_C2BDAF: LitStr "."
  loc_C2BDB2: LitStr ","
  loc_C2BDB5: FLdFPR8 var_104
  loc_C2BDB8: CStrR8
  loc_C2BDBA: FStStrNoPop var_3A4
  loc_C2BDBD: ImpAdCallI2 Replace(, , , , , )
  loc_C2BDC2: FStStrNoPop var_3AC
  loc_C2BDC5: ConcatStr
  loc_C2BDC6: FStStrNoPop var_3B0
  loc_C2BDC9: LitStr ",'"
  loc_C2BDCC: ConcatStr
  loc_C2BDCD: FStStrNoPop var_3B4
  loc_C2BDD0: ImpAdLdI4 MemVar_D9302C
  loc_C2BDD3: ConcatStr
  loc_C2BDD4: FStStrNoPop var_3B8
  loc_C2BDD7: LitStr "');"
  loc_C2BDDA: ConcatStr
  loc_C2BDDB: FStStr var_110
  loc_C2BDDE: FFreeStr var_3B4 = "": var_3B8 = "": var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_37C = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = "": var_398 = "": var_39C = "": var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_1E0 = "": var_270 = "": var_228 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = ""
  loc_C2BE5D: FFreeAd var_1DC = ""
  loc_C2BE64: FFree1Var var_134 = ""
  loc_C2BE67: ILdRf var_110
  loc_C2BE6A: LitStr " INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ObseBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_C2BE6D: ConcatStr
  loc_C2BE6E: FStStrNoPop var_138
  loc_C2BE71: LitStr " VALUES ("
  loc_C2BE74: ConcatStr
  loc_C2BE75: FStStrNoPop var_13C
  loc_C2BE78: FLdI2 var_96
  loc_C2BE7B: CStrUI1
  loc_C2BE7D: FStStrNoPop var_140
  loc_C2BE80: ConcatStr
  loc_C2BE81: FStStrNoPop var_144
  loc_C2BE84: LitStr ","
  loc_C2BE87: ConcatStr
  loc_C2BE88: FStStrNoPop var_148
  loc_C2BE8B: ILdRf var_9C
  loc_C2BE8E: CStrI4
  loc_C2BE90: FStStrNoPop var_14C
  loc_C2BE93: ConcatStr
  loc_C2BE94: FStStrNoPop var_150
  loc_C2BE97: LitStr ","
  loc_C2BE9A: ConcatStr
  loc_C2BE9B: FStStrNoPop var_158
  loc_C2BE9E: FLdRfVar var_154
  loc_C2BEA1: FLdPr Me
  loc_C2BEA4: VCallAd Control_ID_CodiOficLbl
  loc_C2BEA7: FStAdFunc var_1DC
  loc_C2BEAA: FLdPr var_1DC
  loc_C2BEAD:  = Me.Caption
  loc_C2BEB2: ILdRf var_154
  loc_C2BEB5: ConcatStr
  loc_C2BEB6: FStStrNoPop var_1E0
  loc_C2BEB9: LitStr ",'"
  loc_C2BEBC: ConcatStr
  loc_C2BEBD: FStStrNoPop var_270
  loc_C2BEC0: FLdRfVar var_228
  loc_C2BEC3: FLdPr Me
  loc_C2BEC6: VCallAd Control_ID_CuenCtctLbl
  loc_C2BEC9: FStAdFunc var_224
  loc_C2BECC: FLdPr var_224
  loc_C2BECF:  = Me.Caption
  loc_C2BED4: ILdRf var_228
  loc_C2BED7: ConcatStr
  loc_C2BED8: FStStrNoPop var_2F4
  loc_C2BEDB: LitStr "','"
  loc_C2BEDE: ConcatStr
  loc_C2BEDF: FStStrNoPop var_2F8
  loc_C2BEE2: ILdRf var_AC
  loc_C2BEE5: ConcatStr
  loc_C2BEE6: FStStrNoPop var_2FC
  loc_C2BEE9: LitStr "','"
  loc_C2BEEC: ConcatStr
  loc_C2BEED: FStStrNoPop var_300
  loc_C2BEF0: LitI4 1
  loc_C2BEF5: LitI4 1
  loc_C2BEFA: LitVarStr var_188, "yyyy-mm-dd"
  loc_C2BEFF: FStVarCopyObj var_134
  loc_C2BF02: FLdRfVar var_134
  loc_C2BF05: FLdRfVar var_A4
  loc_C2BF08: CVarRef
  loc_C2BF0D: ImpAdCallI2 Format$(, )
  loc_C2BF12: FStStrNoPop var_304
  loc_C2BF15: ConcatStr
  loc_C2BF16: FStStrNoPop var_308
  loc_C2BF19: LitStr "','"
  loc_C2BF1C: ConcatStr
  loc_C2BF1D: FStStrNoPop var_30C
  loc_C2BF20: LitI4 1
  loc_C2BF25: LitI4 1
  loc_C2BF2A: LitVarStr var_1C8, "yyyy-mm-dd"
  loc_C2BF2F: FStVarCopyObj var_168
  loc_C2BF32: FLdRfVar var_168
  loc_C2BF35: FLdRfVar var_A4
  loc_C2BF38: CVarRef
  loc_C2BF3D: ImpAdCallI2 Format$(, )
  loc_C2BF42: FStStrNoPop var_310
  loc_C2BF45: ConcatStr
  loc_C2BF46: FStStrNoPop var_314
  loc_C2BF49: LitStr "',"
  loc_C2BF4C: ConcatStr
  loc_C2BF4D: FStStrNoPop var_318
  loc_C2BF50: ImpAdLdI2 MemVar_D93078
  loc_C2BF53: CStrUI1
  loc_C2BF55: FStStrNoPop var_31C
  loc_C2BF58: ConcatStr
  loc_C2BF59: FStStrNoPop var_320
  loc_C2BF5C: LitStr ",'Ventanilla','Emitido',0,0,'Boleto solo gastos de apremio',0,0,0,0,0,0,"
  loc_C2BF5F: ConcatStr
  loc_C2BF60: FStStrNoPop var_328
  loc_C2BF63: LitI4 0
  loc_C2BF68: LitI4 -1
  loc_C2BF6D: LitI4 1
  loc_C2BF72: LitStr "."
  loc_C2BF75: LitStr ","
  loc_C2BF78: FLdFPR8 var_10C
  loc_C2BF7B: CStrR8
  loc_C2BF7D: FStStrNoPop var_324
  loc_C2BF80: ImpAdCallI2 Replace(, , , , , )
  loc_C2BF85: FStStrNoPop var_32C
  loc_C2BF88: ConcatStr
  loc_C2BF89: FStStrNoPop var_330
  loc_C2BF8C: LitStr ","
  loc_C2BF8F: ConcatStr
  loc_C2BF90: FStStrNoPop var_338
  loc_C2BF93: LitI4 0
  loc_C2BF98: LitI4 -1
  loc_C2BF9D: LitI4 1
  loc_C2BFA2: LitStr "."
  loc_C2BFA5: LitStr ","
  loc_C2BFA8: FLdFPR8 var_10C
  loc_C2BFAB: CStrR8
  loc_C2BFAD: FStStrNoPop var_334
  loc_C2BFB0: ImpAdCallI2 Replace(, , , , , )
  loc_C2BFB5: FStStrNoPop var_33C
  loc_C2BFB8: ConcatStr
  loc_C2BFB9: FStStrNoPop var_340
  loc_C2BFBC: LitStr ",'"
  loc_C2BFBF: ConcatStr
  loc_C2BFC0: FStStrNoPop var_344
  loc_C2BFC3: ImpAdLdI4 MemVar_D9302C
  loc_C2BFC6: ConcatStr
  loc_C2BFC7: FStStrNoPop var_348
  loc_C2BFCA: LitStr "');"
  loc_C2BFCD: ConcatStr
  loc_C2BFCE: FStStr var_110
  loc_C2BFD1: FFreeStr var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_1E0 = "": var_270 = "": var_228 = "": var_2F4 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = ""
  loc_C2C018: FFreeAd var_1DC = ""
  loc_C2C01F: FFreeVar var_134 = ""
  loc_C2C026: ILdRf var_110
  loc_C2C029: FLdRfVar var_90
  loc_C2C02C: NewIfNullPr clsboleto
  loc_C2C02F: Call clsboleto.AddnewTransaction(from_stack_1v)
  loc_C2C034: ImpAdLdRf MemVar_D94CC4
  loc_C2C037: NewIfNullAd
  loc_C2C03A: FStAd var_3BC 
  loc_C2C03E: ImpAdLdRf MemVar_D94CC4
  loc_C2C041: NewIfNullAd
  loc_C2C044: CastAd
  loc_C2C047: FStAdFuncNoPop
  loc_C2C04A: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_C2C04F: FFree1Ad var_1DC
  loc_C2C052: FLdI2 var_96
  loc_C2C055: CStrUI1
  loc_C2C057: FStStrNoPop var_138
  loc_C2C05A: FLdPr var_3BC
  loc_C2C05D: Call rptBoletodeGastosyHonorarios.PeriBolePut(from_stack_1v)
  loc_C2C062: FFree1Str var_138
  loc_C2C065: ILdRf var_9C
  loc_C2C068: CStrI4
  loc_C2C06A: FStStrNoPop var_138
  loc_C2C06D: FLdPr var_3BC
  loc_C2C070: Call rptBoletodeGastosyHonorarios.NumeBolePut(from_stack_1v)
  loc_C2C075: FFree1Str var_138
  loc_C2C078: FLdFPR8 var_A4
  loc_C2C07B: CStrDate
  loc_C2C07D: FStStrNoPop var_138
  loc_C2C080: FLdPr var_3BC
  loc_C2C083: Call rptBoletodeGastosyHonorarios.FeveAprePut(from_stack_1v)
  loc_C2C088: FFree1Str var_138
  loc_C2C08B: FLdRfVar var_A4
  loc_C2C08E: CVarRef
  loc_C2C093: FLdRfVar var_134
  loc_C2C096: ImpAdCallFPR4  = Month()
  loc_C2C09B: FLdRfVar var_134
  loc_C2C09E: CStrVarVal var_138
  loc_C2C0A2: FLdPr var_3BC
  loc_C2C0A5: Call rptBoletodeGastosyHonorarios.BimeCtctPut(from_stack_1v)
  loc_C2C0AA: FFree1Str var_138
  loc_C2C0AD: FFree1Var var_134 = ""
  loc_C2C0B0: FLdPr var_3BC
  loc_C2C0B3: Call rptBoletodeGastosyHonorarios.cmdPredeterminada_Click()
  loc_C2C0B8: LitNothing
  loc_C2C0BA: FStAd var_3BC 
  loc_C2C0BE: ExitProcHresult
End Sub

Private Sub MoviOfjuTxt_GotFocus() '9C04D0
  'Data Table: 521888
  loc_9C04BC: FLdPr Me
  loc_9C04BF: VCallAd Control_ID_MoviOfjuTxt
  loc_9C04C2: CVarAd
  loc_9C04C6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C04CB: FFree1Var var_94 = ""
  loc_9C04CE: ExitProcHresult
End Sub

Private Sub MoviOfjuTxt_KeyPress(KeyAscii As Integer) 'A06D58
  'Data Table: 521888
  loc_A06D24: LitStr "1234567890,."
  loc_A06D27: FStStrCopy var_88
  loc_A06D2A: FLdRfVar var_88
  loc_A06D2D: ILdRf KeyAscii
  loc_A06D30: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A06D35: IStI2 KeyAscii
  loc_A06D38: FFree1Str var_88
  loc_A06D3B: ILdI2 KeyAscii
  loc_A06D3E: LitStr "."
  loc_A06D41: ImpAdCallI2 Asc()
  loc_A06D46: EqI2
  loc_A06D47: BranchF loc_A06D55
  loc_A06D4A: LitStr ","
  loc_A06D4D: ImpAdCallI2 Asc()
  loc_A06D52: IStI2 KeyAscii
  loc_A06D55: ExitProcHresult
End Sub

Private Sub MoviOfjuTxt_LostFocus() 'A77AC4
  'Data Table: 521888
  loc_A77A5C: FLdRfVar var_8C
  loc_A77A5F: FLdPr Me
  loc_A77A62: VCallAd Control_ID_MoviOfjuTxt
  loc_A77A65: FStAdFunc var_88
  loc_A77A68: FLdPr var_88
  loc_A77A6B:  = Me.Text
  loc_A77A70: LitI4 1
  loc_A77A75: LitI4 1
  loc_A77A7A: LitVarStr var_AC, "0.00"
  loc_A77A7F: FStVarCopyObj var_BC
  loc_A77A82: FLdRfVar var_BC
  loc_A77A85: FLdZeroAd var_8C
  loc_A77A88: CVarStr var_9C
  loc_A77A8B: FLdRfVar var_CC
  loc_A77A8E: ImpAdCallFPR4  = Format(, )
  loc_A77A93: FLdRfVar var_CC
  loc_A77A96: CStrVarVal var_D0
  loc_A77A9A: FLdPr Me
  loc_A77A9D: VCallAd Control_ID_MoviOfjuTxt
  loc_A77AA0: FStAdFunc var_D4
  loc_A77AA3: FLdPr var_D4
  loc_A77AA6: Me.Text = from_stack_1
  loc_A77AAB: FFree1Str var_D0
  loc_A77AAE: FFreeAd var_88 = ""
  loc_A77AB5: FFreeVar var_9C = "": var_BC = ""
  loc_A77ABE: Call Proc_287_49_AF7254()
  loc_A77AC3: ExitProcHresult
End Sub

Private Sub MoviOfjuTxt_Validate(Cancel As Boolean) 'A71620
  'Data Table: 521888
  loc_A715B4: FLdRfVar var_8C
  loc_A715B7: FLdPr Me
  loc_A715BA: VCallAd Control_ID_MoviOfjuTxt
  loc_A715BD: FStAdFunc var_88
  loc_A715C0: FLdPr var_88
  loc_A715C3:  = Me.Text
  loc_A715C8: LitI2_Byte &HFF
  loc_A715CA: LitI2_Byte 0
  loc_A715CC: ILdRf var_8C
  loc_A715CF: LitStr "el importe"
  loc_A715D2: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A715D7: FStStrNoPop var_90
  loc_A715DA: FLdPr Me
  loc_A715DD: MemStStrCopy
  loc_A715E1: FFreeStr var_8C = ""
  loc_A715E8: FFree1Ad var_88
  loc_A715EB: FLdPr Me
  loc_A715EE: MemLdStr global_72
  loc_A715F1: LitStr vbNullString
  loc_A715F4: NeStr
  loc_A715F6: BranchF loc_A7161C
  loc_A715F9: FLdPr Me
  loc_A715FC: MemLdStr global_72
  loc_A715FF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A71604: FLdPr Me
  loc_A71607: VCallAd Control_ID_MoviOfjuTxt
  loc_A7160A: CVarAd
  loc_A7160E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A71613: FFree1Var var_A0 = ""
  loc_A71616: LitI2_Byte &HFF
  loc_A71618: IStI2 Cancel
  loc_A7161B: ExitProcHresult
  loc_A7161C: ExitProcHresult
End Sub

Private Sub MoviRecaTxt_GotFocus() '9C05F0
  'Data Table: 521888
  loc_9C05DC: FLdPr Me
  loc_9C05DF: VCallAd Control_ID_MoviRecaTxt
  loc_9C05E2: CVarAd
  loc_9C05E6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C05EB: FFree1Var var_94 = ""
  loc_9C05EE: ExitProcHresult
End Sub

Private Sub MoviRecaTxt_KeyPress(KeyAscii As Integer) 'A07E00
  'Data Table: 521888
  loc_A07DCC: LitStr "1234567890,."
  loc_A07DCF: FStStrCopy var_88
  loc_A07DD2: FLdRfVar var_88
  loc_A07DD5: ILdRf KeyAscii
  loc_A07DD8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07DDD: IStI2 KeyAscii
  loc_A07DE0: FFree1Str var_88
  loc_A07DE3: ILdI2 KeyAscii
  loc_A07DE6: LitStr "."
  loc_A07DE9: ImpAdCallI2 Asc()
  loc_A07DEE: EqI2
  loc_A07DEF: BranchF loc_A07DFD
  loc_A07DF2: LitStr ","
  loc_A07DF5: ImpAdCallI2 Asc()
  loc_A07DFA: IStI2 KeyAscii
  loc_A07DFD: ExitProcHresult
  loc_A07DFE: DOC
End Sub

Private Sub MoviRecaTxt_LostFocus() 'A78064
  'Data Table: 521888
  loc_A77FFC: FLdRfVar var_8C
  loc_A77FFF: FLdPr Me
  loc_A78002: VCallAd Control_ID_MoviRecaTxt
  loc_A78005: FStAdFunc var_88
  loc_A78008: FLdPr var_88
  loc_A7800B:  = Me.Text
  loc_A78010: LitI4 1
  loc_A78015: LitI4 1
  loc_A7801A: LitVarStr var_AC, "0.00"
  loc_A7801F: FStVarCopyObj var_BC
  loc_A78022: FLdRfVar var_BC
  loc_A78025: FLdZeroAd var_8C
  loc_A78028: CVarStr var_9C
  loc_A7802B: FLdRfVar var_CC
  loc_A7802E: ImpAdCallFPR4  = Format(, )
  loc_A78033: FLdRfVar var_CC
  loc_A78036: CStrVarVal var_D0
  loc_A7803A: FLdPr Me
  loc_A7803D: VCallAd Control_ID_MoviRecaTxt
  loc_A78040: FStAdFunc var_D4
  loc_A78043: FLdPr var_D4
  loc_A78046: Me.Text = from_stack_1
  loc_A7804B: FFree1Str var_D0
  loc_A7804E: FFreeAd var_88 = ""
  loc_A78055: FFreeVar var_9C = "": var_BC = ""
  loc_A7805E: Call Proc_287_49_AF7254()
  loc_A78063: ExitProcHresult
End Sub

Private Sub MoviRecaTxt_Validate(Cancel As Boolean) 'A72034
  'Data Table: 521888
  loc_A71FC8: FLdRfVar var_8C
  loc_A71FCB: FLdPr Me
  loc_A71FCE: VCallAd Control_ID_MoviRecaTxt
  loc_A71FD1: FStAdFunc var_88
  loc_A71FD4: FLdPr var_88
  loc_A71FD7:  = Me.Text
  loc_A71FDC: LitI2_Byte &HFF
  loc_A71FDE: LitI2_Byte 0
  loc_A71FE0: ILdRf var_8C
  loc_A71FE3: LitStr "el importe"
  loc_A71FE6: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A71FEB: FStStrNoPop var_90
  loc_A71FEE: FLdPr Me
  loc_A71FF1: MemStStrCopy
  loc_A71FF5: FFreeStr var_8C = ""
  loc_A71FFC: FFree1Ad var_88
  loc_A71FFF: FLdPr Me
  loc_A72002: MemLdStr global_72
  loc_A72005: LitStr vbNullString
  loc_A72008: NeStr
  loc_A7200A: BranchF loc_A72030
  loc_A7200D: FLdPr Me
  loc_A72010: MemLdStr global_72
  loc_A72013: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A72018: FLdPr Me
  loc_A7201B: VCallAd Control_ID_MoviRecaTxt
  loc_A7201E: CVarAd
  loc_A72022: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A72027: FFree1Var var_A0 = ""
  loc_A7202A: LitI2_Byte &HFF
  loc_A7202C: IStI2 Cancel
  loc_A7202F: ExitProcHresult
  loc_A72030: ExitProcHresult
  loc_A72031: FLdRfVar var_C4
End Sub

Private Sub Form_Load() 'B08BB0
  'Data Table: 521888
  loc_B08988: LitI2_Byte 0
  loc_B0898A: CR8I2
  loc_B0898B: PopFPR4
  loc_B0898C: FLdPr Me
  loc_B0898F: Me.Left = from_stack_1s
  loc_B08994: LitI2_Byte 0
  loc_B08996: CR8I2
  loc_B08997: PopFPR4
  loc_B08998: FLdPr Me
  loc_B0899B: Me.Top = from_stack_1s
  loc_B089A0: FLdPr Me
  loc_B089A3: MemLdRfVar from_stack_1.global_108
  loc_B089A6: NewIfNullRf
  loc_B089AA: ImpAdLdI4 MemVar_D9302C
  loc_B089AD: ImpAdCallI2  = Proc_270_3_C29F5C()
  loc_B089B2: BranchF loc_B089D8
  loc_B089B5: FLdRfVar var_88
  loc_B089B8: FLdPr Me
  loc_B089BB: MemLdRfVar from_stack_1.global_108
  loc_B089BE: NewIfNullPr tblusuario
  loc_B089C1: from_stack_1v = tblusuario.ModiApreGet()
  loc_B089C6: ILdRf var_88
  loc_B089C9: CUI1Str
  loc_B089CB: FLdPr Me
  loc_B089CE: MemStUI1
  loc_B089D2: FFree1Str var_88
  loc_B089D5: Branch loc_B089E3
  loc_B089D8: LitI2_Byte 0
  loc_B089DA: CUI1I2
  loc_B089DC: FLdPr Me
  loc_B089DF: MemStUI1
  loc_B089E3: FLdPr Me
  loc_B089E6: MemLdUI1 global_112
  loc_B089EA: CI2UI1
  loc_B089EC: LitI2_Byte 1
  loc_B089EE: EqI2
  loc_B089EF: BranchF loc_B08AD1
  loc_B089F2: LitI2_Byte 0
  loc_B089F4: FLdPr Me
  loc_B089F7: VCallAd Control_ID_ComiAdmiTxt
  loc_B089FA: FStAdFunc var_8C
  loc_B089FD: FLdPr var_8C
  loc_B08A00: Me.Locked = from_stack_1b
  loc_B08A05: FFree1Ad var_8C
  loc_B08A08: LitI2_Byte 0
  loc_B08A0A: FLdPr Me
  loc_B08A0D: VCallAd Control_ID_TasaJustTxt
  loc_B08A10: FStAdFunc var_8C
  loc_B08A13: FLdPr var_8C
  loc_B08A16: Me.Locked = from_stack_1b
  loc_B08A1B: FFree1Ad var_8C
  loc_B08A1E: LitI2_Byte 0
  loc_B08A20: FLdPr Me
  loc_B08A23: VCallAd Control_ID_AporLeyTxt
  loc_B08A26: FStAdFunc var_8C
  loc_B08A29: FLdPr var_8C
  loc_B08A2C: Me.Locked = from_stack_1b
  loc_B08A31: FFree1Ad var_8C
  loc_B08A34: LitI2_Byte 0
  loc_B08A36: FLdPr Me
  loc_B08A39: VCallAd Control_ID_DereFijoTxt
  loc_B08A3C: FStAdFunc var_8C
  loc_B08A3F: FLdPr var_8C
  loc_B08A42: Me.Locked = from_stack_1b
  loc_B08A47: FFree1Ad var_8C
  loc_B08A4A: LitI2_Byte 0
  loc_B08A4C: FLdPr Me
  loc_B08A4F: VCallAd Control_ID_HonoRecaTxt
  loc_B08A52: FStAdFunc var_8C
  loc_B08A55: FLdPr var_8C
  loc_B08A58: Me.Locked = from_stack_1b
  loc_B08A5D: FFree1Ad var_8C
  loc_B08A60: LitI2_Byte 0
  loc_B08A62: FLdPr Me
  loc_B08A65: VCallAd Control_ID_HonoOfjuTxt
  loc_B08A68: FStAdFunc var_8C
  loc_B08A6B: FLdPr var_8C
  loc_B08A6E: Me.Locked = from_stack_1b
  loc_B08A73: FFree1Ad var_8C
  loc_B08A76: LitI2_Byte 0
  loc_B08A78: FLdPr Me
  loc_B08A7B: VCallAd Control_ID_MoviRecaTxt
  loc_B08A7E: FStAdFunc var_8C
  loc_B08A81: FLdPr var_8C
  loc_B08A84: Me.Locked = from_stack_1b
  loc_B08A89: FFree1Ad var_8C
  loc_B08A8C: LitI2_Byte 0
  loc_B08A8E: FLdPr Me
  loc_B08A91: VCallAd Control_ID_MoviOfjuTxt
  loc_B08A94: FStAdFunc var_8C
  loc_B08A97: FLdPr var_8C
  loc_B08A9A: Me.Locked = from_stack_1b
  loc_B08A9F: FFree1Ad var_8C
  loc_B08AA2: LitI2_Byte 0
  loc_B08AA4: FLdPr Me
  loc_B08AA7: VCallAd Control_ID_IvaCoadTxt
  loc_B08AAA: FStAdFunc var_8C
  loc_B08AAD: FLdPr var_8C
  loc_B08AB0: Me.Locked = from_stack_1b
  loc_B08AB5: FFree1Ad var_8C
  loc_B08AB8: LitI2_Byte 0
  loc_B08ABA: FLdPr Me
  loc_B08ABD: VCallAd Control_ID_IvaRecaTxt
  loc_B08AC0: FStAdFunc var_8C
  loc_B08AC3: FLdPr var_8C
  loc_B08AC6: Me.Locked = from_stack_1b
  loc_B08ACB: FFree1Ad var_8C
  loc_B08ACE: Branch loc_B08BAD
  loc_B08AD1: LitI2_Byte &HFF
  loc_B08AD3: FLdPr Me
  loc_B08AD6: VCallAd Control_ID_ComiAdmiTxt
  loc_B08AD9: FStAdFunc var_8C
  loc_B08ADC: FLdPr var_8C
  loc_B08ADF: Me.Locked = from_stack_1b
  loc_B08AE4: FFree1Ad var_8C
  loc_B08AE7: LitI2_Byte &HFF
  loc_B08AE9: FLdPr Me
  loc_B08AEC: VCallAd Control_ID_TasaJustTxt
  loc_B08AEF: FStAdFunc var_8C
  loc_B08AF2: FLdPr var_8C
  loc_B08AF5: Me.Locked = from_stack_1b
  loc_B08AFA: FFree1Ad var_8C
  loc_B08AFD: LitI2_Byte &HFF
  loc_B08AFF: FLdPr Me
  loc_B08B02: VCallAd Control_ID_AporLeyTxt
  loc_B08B05: FStAdFunc var_8C
  loc_B08B08: FLdPr var_8C
  loc_B08B0B: Me.Locked = from_stack_1b
  loc_B08B10: FFree1Ad var_8C
  loc_B08B13: LitI2_Byte &HFF
  loc_B08B15: FLdPr Me
  loc_B08B18: VCallAd Control_ID_DereFijoTxt
  loc_B08B1B: FStAdFunc var_8C
  loc_B08B1E: FLdPr var_8C
  loc_B08B21: Me.Locked = from_stack_1b
  loc_B08B26: FFree1Ad var_8C
  loc_B08B29: LitI2_Byte &HFF
  loc_B08B2B: FLdPr Me
  loc_B08B2E: VCallAd Control_ID_HonoRecaTxt
  loc_B08B31: FStAdFunc var_8C
  loc_B08B34: FLdPr var_8C
  loc_B08B37: Me.Locked = from_stack_1b
  loc_B08B3C: FFree1Ad var_8C
  loc_B08B3F: LitI2_Byte &HFF
  loc_B08B41: FLdPr Me
  loc_B08B44: VCallAd Control_ID_HonoOfjuTxt
  loc_B08B47: FStAdFunc var_8C
  loc_B08B4A: FLdPr var_8C
  loc_B08B4D: Me.Locked = from_stack_1b
  loc_B08B52: FFree1Ad var_8C
  loc_B08B55: LitI2_Byte &HFF
  loc_B08B57: FLdPr Me
  loc_B08B5A: VCallAd Control_ID_MoviRecaTxt
  loc_B08B5D: FStAdFunc var_8C
  loc_B08B60: FLdPr var_8C
  loc_B08B63: Me.Locked = from_stack_1b
  loc_B08B68: FFree1Ad var_8C
  loc_B08B6B: LitI2_Byte &HFF
  loc_B08B6D: FLdPr Me
  loc_B08B70: VCallAd Control_ID_MoviOfjuTxt
  loc_B08B73: FStAdFunc var_8C
  loc_B08B76: FLdPr var_8C
  loc_B08B79: Me.Locked = from_stack_1b
  loc_B08B7E: FFree1Ad var_8C
  loc_B08B81: LitI2_Byte &HFF
  loc_B08B83: FLdPr Me
  loc_B08B86: VCallAd Control_ID_IvaCoadTxt
  loc_B08B89: FStAdFunc var_8C
  loc_B08B8C: FLdPr var_8C
  loc_B08B8F: Me.Locked = from_stack_1b
  loc_B08B94: FFree1Ad var_8C
  loc_B08B97: LitI2_Byte &HFF
  loc_B08B99: FLdPr Me
  loc_B08B9C: VCallAd Control_ID_IvaRecaTxt
  loc_B08B9F: FStAdFunc var_8C
  loc_B08BA2: FLdPr var_8C
  loc_B08BA5: Me.Locked = from_stack_1b
  loc_B08BAA: FFree1Ad var_8C
  loc_B08BAD: ExitProcHresult
End Sub

Private Sub HonoOfjuTxt_GotFocus() '9C0680
  'Data Table: 521888
  loc_9C066C: FLdPr Me
  loc_9C066F: VCallAd Control_ID_HonoOfjuTxt
  loc_9C0672: CVarAd
  loc_9C0676: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C067B: FFree1Var var_94 = ""
  loc_9C067E: ExitProcHresult
End Sub

Private Sub HonoOfjuTxt_KeyPress(KeyAscii As Integer) 'A07E68
  'Data Table: 521888
  loc_A07E34: LitStr "1234567890,."
  loc_A07E37: FStStrCopy var_88
  loc_A07E3A: FLdRfVar var_88
  loc_A07E3D: ILdRf KeyAscii
  loc_A07E40: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07E45: IStI2 KeyAscii
  loc_A07E48: FFree1Str var_88
  loc_A07E4B: ILdI2 KeyAscii
  loc_A07E4E: LitStr "."
  loc_A07E51: ImpAdCallI2 Asc()
  loc_A07E56: EqI2
  loc_A07E57: BranchF loc_A07E65
  loc_A07E5A: LitStr ","
  loc_A07E5D: ImpAdCallI2 Asc()
  loc_A07E62: IStI2 KeyAscii
  loc_A07E65: ExitProcHresult
End Sub

Private Sub HonoOfjuTxt_LostFocus() 'A76C00
  'Data Table: 521888
  loc_A76B98: FLdRfVar var_8C
  loc_A76B9B: FLdPr Me
  loc_A76B9E: VCallAd Control_ID_HonoOfjuTxt
  loc_A76BA1: FStAdFunc var_88
  loc_A76BA4: FLdPr var_88
  loc_A76BA7:  = Me.Text
  loc_A76BAC: LitI4 1
  loc_A76BB1: LitI4 1
  loc_A76BB6: LitVarStr var_AC, "0.00"
  loc_A76BBB: FStVarCopyObj var_BC
  loc_A76BBE: FLdRfVar var_BC
  loc_A76BC1: FLdZeroAd var_8C
  loc_A76BC4: CVarStr var_9C
  loc_A76BC7: FLdRfVar var_CC
  loc_A76BCA: ImpAdCallFPR4  = Format(, )
  loc_A76BCF: FLdRfVar var_CC
  loc_A76BD2: CStrVarVal var_D0
  loc_A76BD6: FLdPr Me
  loc_A76BD9: VCallAd Control_ID_HonoOfjuTxt
  loc_A76BDC: FStAdFunc var_D4
  loc_A76BDF: FLdPr var_D4
  loc_A76BE2: Me.Text = from_stack_1
  loc_A76BE7: FFree1Str var_D0
  loc_A76BEA: FFreeAd var_88 = ""
  loc_A76BF1: FFreeVar var_9C = "": var_BC = ""
  loc_A76BFA: Call Proc_287_49_AF7254()
  loc_A76BFF: ExitProcHresult
End Sub

Private Sub HonoOfjuTxt_Validate(Cancel As Boolean) 'A728F0
  'Data Table: 521888
  loc_A72884: FLdRfVar var_8C
  loc_A72887: FLdPr Me
  loc_A7288A: VCallAd Control_ID_HonoOfjuTxt
  loc_A7288D: FStAdFunc var_88
  loc_A72890: FLdPr var_88
  loc_A72893:  = Me.Text
  loc_A72898: LitI2_Byte &HFF
  loc_A7289A: LitI2_Byte 0
  loc_A7289C: ILdRf var_8C
  loc_A7289F: LitStr "el importe"
  loc_A728A2: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A728A7: FStStrNoPop var_90
  loc_A728AA: FLdPr Me
  loc_A728AD: MemStStrCopy
  loc_A728B1: FFreeStr var_8C = ""
  loc_A728B8: FFree1Ad var_88
  loc_A728BB: FLdPr Me
  loc_A728BE: MemLdStr global_72
  loc_A728C1: LitStr vbNullString
  loc_A728C4: NeStr
  loc_A728C6: BranchF loc_A728EC
  loc_A728C9: FLdPr Me
  loc_A728CC: MemLdStr global_72
  loc_A728CF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A728D4: FLdPr Me
  loc_A728D7: VCallAd Control_ID_HonoOfjuTxt
  loc_A728DA: CVarAd
  loc_A728DE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A728E3: FFree1Var var_A0 = ""
  loc_A728E6: LitI2_Byte &HFF
  loc_A728E8: IStI2 Cancel
  loc_A728EB: ExitProcHresult
  loc_A728EC: ExitProcHresult
  loc_A728ED: LeCy
  loc_A728EE: FnInStr4
End Sub

Private Sub IvaRecaTxt_GotFocus() '9C07A0
  'Data Table: 521888
  loc_9C078C: FLdPr Me
  loc_9C078F: VCallAd Control_ID_IvaRecaTxt
  loc_9C0792: CVarAd
  loc_9C0796: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C079B: FFree1Var var_94 = ""
  loc_9C079E: ExitProcHresult
  loc_9C079F: CI4Str
End Sub

Private Sub IvaRecaTxt_KeyPress(KeyAscii As Integer) 'A07ED0
  'Data Table: 521888
  loc_A07E9C: LitStr "1234567890,."
  loc_A07E9F: FStStrCopy var_88
  loc_A07EA2: FLdRfVar var_88
  loc_A07EA5: ILdRf KeyAscii
  loc_A07EA8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07EAD: IStI2 KeyAscii
  loc_A07EB0: FFree1Str var_88
  loc_A07EB3: ILdI2 KeyAscii
  loc_A07EB6: LitStr "."
  loc_A07EB9: ImpAdCallI2 Asc()
  loc_A07EBE: EqI2
  loc_A07EBF: BranchF loc_A07ECD
  loc_A07EC2: LitStr ","
  loc_A07EC5: ImpAdCallI2 Asc()
  loc_A07ECA: IStI2 KeyAscii
  loc_A07ECD: ExitProcHresult
  loc_A07ECE: UMiI4
End Sub

Private Sub IvaRecaTxt_LostFocus() 'A760F8
  'Data Table: 521888
  loc_A76094: FLdRfVar var_8C
  loc_A76097: FLdPr Me
  loc_A7609A: VCallAd Control_ID_IvaRecaTxt
  loc_A7609D: FStAdFunc var_88
  loc_A760A0: FLdPr var_88
  loc_A760A3:  = Me.Text
  loc_A760A8: LitI4 1
  loc_A760AD: LitI4 1
  loc_A760B2: LitVarStr var_AC, "0.00"
  loc_A760B7: FStVarCopyObj var_BC
  loc_A760BA: FLdRfVar var_BC
  loc_A760BD: FLdZeroAd var_8C
  loc_A760C0: CVarStr var_9C
  loc_A760C3: FLdRfVar var_CC
  loc_A760C6: ImpAdCallFPR4  = Format(, )
  loc_A760CB: FLdRfVar var_CC
  loc_A760CE: CStrVarVal var_D0
  loc_A760D2: FLdPr Me
  loc_A760D5: VCallAd Control_ID_IvaRecaTxt
  loc_A760D8: FStAdFunc var_D4
  loc_A760DB: FLdPr var_D4
  loc_A760DE: Me.Text = from_stack_1
  loc_A760E3: FFree1Str var_D0
  loc_A760E6: FFreeAd var_88 = ""
  loc_A760ED: FFreeVar var_9C = "": var_BC = ""
  loc_A760F6: ExitProcHresult
End Sub

Private Sub IvaRecaTxt_Validate(Cancel As Boolean) 'A702A4
  'Data Table: 521888
  loc_A70238: FLdRfVar var_8C
  loc_A7023B: FLdPr Me
  loc_A7023E: VCallAd Control_ID_IvaRecaTxt
  loc_A70241: FStAdFunc var_88
  loc_A70244: FLdPr var_88
  loc_A70247:  = Me.Text
  loc_A7024C: LitI2_Byte &HFF
  loc_A7024E: LitI2_Byte 0
  loc_A70250: ILdRf var_8C
  loc_A70253: LitStr "el importe"
  loc_A70256: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A7025B: FStStrNoPop var_90
  loc_A7025E: FLdPr Me
  loc_A70261: MemStStrCopy
  loc_A70265: FFreeStr var_8C = ""
  loc_A7026C: FFree1Ad var_88
  loc_A7026F: FLdPr Me
  loc_A70272: MemLdStr global_72
  loc_A70275: LitStr vbNullString
  loc_A70278: NeStr
  loc_A7027A: BranchF loc_A702A0
  loc_A7027D: FLdPr Me
  loc_A70280: MemLdStr global_72
  loc_A70283: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A70288: FLdPr Me
  loc_A7028B: VCallAd Control_ID_IvaRecaTxt
  loc_A7028E: CVarAd
  loc_A70292: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A70297: FFree1Var var_A0 = ""
  loc_A7029A: LitI2_Byte &HFF
  loc_A7029C: IStI2 Cancel
  loc_A7029F: ExitProcHresult
  loc_A702A0: ExitProcHresult
  loc_A702A1: ExitProcCy
End Sub

Private Sub HonoRecaTxt_GotFocus() '9C0878
  'Data Table: 521888
  loc_9C0864: FLdPr Me
  loc_9C0867: VCallAd Control_ID_HonoRecaTxt
  loc_9C086A: CVarAd
  loc_9C086E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0873: FFree1Var var_94 = ""
  loc_9C0876: ExitProcHresult
End Sub

Private Sub HonoRecaTxt_KeyPress(KeyAscii As Integer) 'A07F38
  'Data Table: 521888
  loc_A07F04: LitStr "1234567890,."
  loc_A07F07: FStStrCopy var_88
  loc_A07F0A: FLdRfVar var_88
  loc_A07F0D: ILdRf KeyAscii
  loc_A07F10: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07F15: IStI2 KeyAscii
  loc_A07F18: FFree1Str var_88
  loc_A07F1B: ILdI2 KeyAscii
  loc_A07F1E: LitStr "."
  loc_A07F21: ImpAdCallI2 Asc()
  loc_A07F26: EqI2
  loc_A07F27: BranchF loc_A07F35
  loc_A07F2A: LitStr ","
  loc_A07F2D: ImpAdCallI2 Asc()
  loc_A07F32: IStI2 KeyAscii
  loc_A07F35: ExitProcHresult
End Sub

Private Sub HonoRecaTxt_LostFocus() 'A77A10
  'Data Table: 521888
  loc_A779A8: FLdRfVar var_8C
  loc_A779AB: FLdPr Me
  loc_A779AE: VCallAd Control_ID_HonoRecaTxt
  loc_A779B1: FStAdFunc var_88
  loc_A779B4: FLdPr var_88
  loc_A779B7:  = Me.Text
  loc_A779BC: LitI4 1
  loc_A779C1: LitI4 1
  loc_A779C6: LitVarStr var_AC, "0.00"
  loc_A779CB: FStVarCopyObj var_BC
  loc_A779CE: FLdRfVar var_BC
  loc_A779D1: FLdZeroAd var_8C
  loc_A779D4: CVarStr var_9C
  loc_A779D7: FLdRfVar var_CC
  loc_A779DA: ImpAdCallFPR4  = Format(, )
  loc_A779DF: FLdRfVar var_CC
  loc_A779E2: CStrVarVal var_D0
  loc_A779E6: FLdPr Me
  loc_A779E9: VCallAd Control_ID_HonoRecaTxt
  loc_A779EC: FStAdFunc var_D4
  loc_A779EF: FLdPr var_D4
  loc_A779F2: Me.Text = from_stack_1
  loc_A779F7: FFree1Str var_D0
  loc_A779FA: FFreeAd var_88 = ""
  loc_A77A01: FFreeVar var_9C = "": var_BC = ""
  loc_A77A0A: Call Proc_287_49_AF7254()
  loc_A77A0F: ExitProcHresult
End Sub

Private Sub HonoRecaTxt_Validate(Cancel As Boolean) 'A7218C
  'Data Table: 521888
  loc_A72120: FLdRfVar var_8C
  loc_A72123: FLdPr Me
  loc_A72126: VCallAd Control_ID_HonoRecaTxt
  loc_A72129: FStAdFunc var_88
  loc_A7212C: FLdPr var_88
  loc_A7212F:  = Me.Text
  loc_A72134: LitI2_Byte &HFF
  loc_A72136: LitI2_Byte 0
  loc_A72138: ILdRf var_8C
  loc_A7213B: LitStr "el importe"
  loc_A7213E: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A72143: FStStrNoPop var_90
  loc_A72146: FLdPr Me
  loc_A72149: MemStStrCopy
  loc_A7214D: FFreeStr var_8C = ""
  loc_A72154: FFree1Ad var_88
  loc_A72157: FLdPr Me
  loc_A7215A: MemLdStr global_72
  loc_A7215D: LitStr vbNullString
  loc_A72160: NeStr
  loc_A72162: BranchF loc_A72188
  loc_A72165: FLdPr Me
  loc_A72168: MemLdStr global_72
  loc_A7216B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A72170: FLdPr Me
  loc_A72173: VCallAd Control_ID_HonoRecaTxt
  loc_A72176: CVarAd
  loc_A7217A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7217F: FFree1Var var_A0 = ""
  loc_A72182: LitI2_Byte &HFF
  loc_A72184: IStI2 Cancel
  loc_A72187: ExitProcHresult
  loc_A72188: ExitProcHresult
End Sub

Private Sub DereFijoTxt_GotFocus() '9C0908
  'Data Table: 521888
  loc_9C08F4: FLdPr Me
  loc_9C08F7: VCallAd Control_ID_DereFijoTxt
  loc_9C08FA: CVarAd
  loc_9C08FE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C0903: FFree1Var var_94 = ""
  loc_9C0906: ExitProcHresult
End Sub

Private Sub DereFijoTxt_KeyPress(KeyAscii As Integer) 'A07FA0
  'Data Table: 521888
  loc_A07F6C: LitStr "1234567890,."
  loc_A07F6F: FStStrCopy var_88
  loc_A07F72: FLdRfVar var_88
  loc_A07F75: ILdRf KeyAscii
  loc_A07F78: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07F7D: IStI2 KeyAscii
  loc_A07F80: FFree1Str var_88
  loc_A07F83: ILdI2 KeyAscii
  loc_A07F86: LitStr "."
  loc_A07F89: ImpAdCallI2 Asc()
  loc_A07F8E: EqI2
  loc_A07F8F: BranchF loc_A07F9D
  loc_A07F92: LitStr ","
  loc_A07F95: ImpAdCallI2 Asc()
  loc_A07F9A: IStI2 KeyAscii
  loc_A07F9D: ExitProcHresult
End Sub

Private Sub DereFijoTxt_LostFocus() 'A77CE0
  'Data Table: 521888
  loc_A77C78: FLdRfVar var_8C
  loc_A77C7B: FLdPr Me
  loc_A77C7E: VCallAd Control_ID_DereFijoTxt
  loc_A77C81: FStAdFunc var_88
  loc_A77C84: FLdPr var_88
  loc_A77C87:  = Me.Text
  loc_A77C8C: LitI4 1
  loc_A77C91: LitI4 1
  loc_A77C96: LitVarStr var_AC, "0.00"
  loc_A77C9B: FStVarCopyObj var_BC
  loc_A77C9E: FLdRfVar var_BC
  loc_A77CA1: FLdZeroAd var_8C
  loc_A77CA4: CVarStr var_9C
  loc_A77CA7: FLdRfVar var_CC
  loc_A77CAA: ImpAdCallFPR4  = Format(, )
  loc_A77CAF: FLdRfVar var_CC
  loc_A77CB2: CStrVarVal var_D0
  loc_A77CB6: FLdPr Me
  loc_A77CB9: VCallAd Control_ID_DereFijoTxt
  loc_A77CBC: FStAdFunc var_D4
  loc_A77CBF: FLdPr var_D4
  loc_A77CC2: Me.Text = from_stack_1
  loc_A77CC7: FFree1Str var_D0
  loc_A77CCA: FFreeAd var_88 = ""
  loc_A77CD1: FFreeVar var_9C = "": var_BC = ""
  loc_A77CDA: Call Proc_287_49_AF7254()
  loc_A77CDF: ExitProcHresult
End Sub

Private Sub DereFijoTxt_Validate(Cancel As Boolean) 'A71C2C
  'Data Table: 521888
  loc_A71BC0: FLdRfVar var_8C
  loc_A71BC3: FLdPr Me
  loc_A71BC6: VCallAd Control_ID_DereFijoTxt
  loc_A71BC9: FStAdFunc var_88
  loc_A71BCC: FLdPr var_88
  loc_A71BCF:  = Me.Text
  loc_A71BD4: LitI2_Byte &HFF
  loc_A71BD6: LitI2_Byte 0
  loc_A71BD8: ILdRf var_8C
  loc_A71BDB: LitStr "el importe"
  loc_A71BDE: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A71BE3: FStStrNoPop var_90
  loc_A71BE6: FLdPr Me
  loc_A71BE9: MemStStrCopy
  loc_A71BED: FFreeStr var_8C = ""
  loc_A71BF4: FFree1Ad var_88
  loc_A71BF7: FLdPr Me
  loc_A71BFA: MemLdStr global_72
  loc_A71BFD: LitStr vbNullString
  loc_A71C00: NeStr
  loc_A71C02: BranchF loc_A71C28
  loc_A71C05: FLdPr Me
  loc_A71C08: MemLdStr global_72
  loc_A71C0B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A71C10: FLdPr Me
  loc_A71C13: VCallAd Control_ID_DereFijoTxt
  loc_A71C16: CVarAd
  loc_A71C1A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A71C1F: FFree1Var var_A0 = ""
  loc_A71C22: LitI2_Byte &HFF
  loc_A71C24: IStI2 Cancel
  loc_A71C27: ExitProcHresult
  loc_A71C28: ExitProcHresult
End Sub

Public Sub LimpiaDatosPersona() 'AB1954
  'Data Table: 521888
  loc_AB186C: LitStr vbNullString
  loc_AB186F: FLdPr Me
  loc_AB1872: VCallAd Control_ID_CucuPersLbl
  loc_AB1875: FStAdFunc var_88
  loc_AB1878: FLdPr var_88
  loc_AB187B: Me.Caption = from_stack_1
  loc_AB1880: FFree1Ad var_88
  loc_AB1883: LitStr vbNullString
  loc_AB1886: FLdPr Me
  loc_AB1889: VCallAd Control_ID_DetaPersLbl
  loc_AB188C: FStAdFunc var_88
  loc_AB188F: FLdPr var_88
  loc_AB1892: Me.Caption = from_stack_1
  loc_AB1897: FFree1Ad var_88
  loc_AB189A: LitStr vbNullString
  loc_AB189D: FLdPr Me
  loc_AB18A0: VCallAd Control_ID_DomiPersLbl
  loc_AB18A3: FStAdFunc var_88
  loc_AB18A6: FLdPr var_88
  loc_AB18A9: Me.Caption = from_stack_1
  loc_AB18AE: FFree1Ad var_88
  loc_AB18B1: LitStr vbNullString
  loc_AB18B4: FLdPr Me
  loc_AB18B7: VCallAd Control_ID_AutoApreLbl
  loc_AB18BA: FStAdFunc var_88
  loc_AB18BD: FLdPr var_88
  loc_AB18C0: Me.Caption = from_stack_1
  loc_AB18C5: FFree1Ad var_88
  loc_AB18C8: LitStr vbNullString
  loc_AB18CB: FLdPr Me
  loc_AB18CE: VCallAd Control_ID_CodiInjuLbl
  loc_AB18D1: FStAdFunc var_88
  loc_AB18D4: FLdPr var_88
  loc_AB18D7: Me.Caption = from_stack_1
  loc_AB18DC: FFree1Ad var_88
  loc_AB18DF: LitStr vbNullString
  loc_AB18E2: FLdPr Me
  loc_AB18E5: VCallAd Control_ID_DetaInjuLbl
  loc_AB18E8: FStAdFunc var_88
  loc_AB18EB: FLdPr var_88
  loc_AB18EE: Me.Caption = from_stack_1
  loc_AB18F3: FFree1Ad var_88
  loc_AB18F6: LitStr vbNullString
  loc_AB18F9: FLdPr Me
  loc_AB18FC: VCallAd Control_ID_CodiOficLbl
  loc_AB18FF: FStAdFunc var_88
  loc_AB1902: FLdPr var_88
  loc_AB1905: Me.Caption = from_stack_1
  loc_AB190A: FFree1Ad var_88
  loc_AB190D: LitStr vbNullString
  loc_AB1910: FLdPr Me
  loc_AB1913: VCallAd Control_ID_DetaOficLbl
  loc_AB1916: FStAdFunc var_88
  loc_AB1919: FLdPr var_88
  loc_AB191C: Me.Caption = from_stack_1
  loc_AB1921: FFree1Ad var_88
  loc_AB1924: LitStr vbNullString
  loc_AB1927: FLdPr Me
  loc_AB192A: VCallAd Control_ID_CuenCtctLbl
  loc_AB192D: FStAdFunc var_88
  loc_AB1930: FLdPr var_88
  loc_AB1933: Me.Caption = from_stack_1
  loc_AB1938: FFree1Ad var_88
  loc_AB193B: LitStr vbNullString
  loc_AB193E: FLdPr Me
  loc_AB1941: VCallAd Control_ID_EstaApreLbl
  loc_AB1944: FStAdFunc var_88
  loc_AB1947: FLdPr var_88
  loc_AB194A: Me.Caption = from_stack_1
  loc_AB194F: FFree1Ad var_88
  loc_AB1952: ExitProcHresult
End Sub

Private Function Proc_287_48_B46BA4() 'B46BA4
  'Data Table: 521888
  loc_B46834: LitI4 1
  loc_B46839: LitI4 1
  loc_B4683E: LitVarStr var_B4, "0.00"
  loc_B46843: FStVarCopyObj var_C4
  loc_B46846: FLdRfVar var_C4
  loc_B46849: LitVarI2 var_A4, 0
  loc_B4684E: FLdRfVar var_D4
  loc_B46851: ImpAdCallFPR4  = Format(, )
  loc_B46856: FLdRfVar var_D4
  loc_B46859: CStrVarVal var_D8
  loc_B4685D: FLdPr Me
  loc_B46860: VCallAd Control_ID_ComiAdmiTxt
  loc_B46863: FStAdFunc var_DC
  loc_B46866: FLdPr var_DC
  loc_B46869: Me.Text = from_stack_1
  loc_B4686E: FFree1Str var_D8
  loc_B46871: FFree1Ad var_DC
  loc_B46874: FFreeVar var_A4 = "": var_C4 = ""
  loc_B4687D: LitI4 1
  loc_B46882: LitI4 1
  loc_B46887: LitVarStr var_B4, "0.00"
  loc_B4688C: FStVarCopyObj var_C4
  loc_B4688F: FLdRfVar var_C4
  loc_B46892: LitVarI2 var_A4, 0
  loc_B46897: FLdRfVar var_D4
  loc_B4689A: ImpAdCallFPR4  = Format(, )
  loc_B4689F: FLdRfVar var_D4
  loc_B468A2: CStrVarVal var_D8
  loc_B468A6: FLdPr Me
  loc_B468A9: VCallAd Control_ID_TasaJustTxt
  loc_B468AC: FStAdFunc var_DC
  loc_B468AF: FLdPr var_DC
  loc_B468B2: Me.Text = from_stack_1
  loc_B468B7: FFree1Str var_D8
  loc_B468BA: FFree1Ad var_DC
  loc_B468BD: FFreeVar var_A4 = "": var_C4 = ""
  loc_B468C6: LitI4 1
  loc_B468CB: LitI4 1
  loc_B468D0: LitVarStr var_B4, "0.00"
  loc_B468D5: FStVarCopyObj var_C4
  loc_B468D8: FLdRfVar var_C4
  loc_B468DB: LitVarI2 var_A4, 0
  loc_B468E0: FLdRfVar var_D4
  loc_B468E3: ImpAdCallFPR4  = Format(, )
  loc_B468E8: FLdRfVar var_D4
  loc_B468EB: CStrVarVal var_D8
  loc_B468EF: FLdPr Me
  loc_B468F2: VCallAd Control_ID_AporLeyTxt
  loc_B468F5: FStAdFunc var_DC
  loc_B468F8: FLdPr var_DC
  loc_B468FB: Me.Text = from_stack_1
  loc_B46900: FFree1Str var_D8
  loc_B46903: FFree1Ad var_DC
  loc_B46906: FFreeVar var_A4 = "": var_C4 = ""
  loc_B4690F: LitI4 1
  loc_B46914: LitI4 1
  loc_B46919: LitVarStr var_B4, "0.00"
  loc_B4691E: FStVarCopyObj var_C4
  loc_B46921: FLdRfVar var_C4
  loc_B46924: LitVarI2 var_A4, 0
  loc_B46929: FLdRfVar var_D4
  loc_B4692C: ImpAdCallFPR4  = Format(, )
  loc_B46931: FLdRfVar var_D4
  loc_B46934: CStrVarVal var_D8
  loc_B46938: FLdPr Me
  loc_B4693B: VCallAd Control_ID_DereFijoTxt
  loc_B4693E: FStAdFunc var_DC
  loc_B46941: FLdPr var_DC
  loc_B46944: Me.Text = from_stack_1
  loc_B46949: FFree1Str var_D8
  loc_B4694C: FFree1Ad var_DC
  loc_B4694F: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46958: LitI4 1
  loc_B4695D: LitI4 1
  loc_B46962: LitVarStr var_B4, "0.00"
  loc_B46967: FStVarCopyObj var_C4
  loc_B4696A: FLdRfVar var_C4
  loc_B4696D: LitVarI2 var_A4, 0
  loc_B46972: FLdRfVar var_D4
  loc_B46975: ImpAdCallFPR4  = Format(, )
  loc_B4697A: FLdRfVar var_D4
  loc_B4697D: CStrVarVal var_D8
  loc_B46981: FLdPr Me
  loc_B46984: VCallAd Control_ID_HonoRecaTxt
  loc_B46987: FStAdFunc var_DC
  loc_B4698A: FLdPr var_DC
  loc_B4698D: Me.Text = from_stack_1
  loc_B46992: FFree1Str var_D8
  loc_B46995: FFree1Ad var_DC
  loc_B46998: FFreeVar var_A4 = "": var_C4 = ""
  loc_B469A1: LitI4 1
  loc_B469A6: LitI4 1
  loc_B469AB: LitVarStr var_B4, "0.00"
  loc_B469B0: FStVarCopyObj var_C4
  loc_B469B3: FLdRfVar var_C4
  loc_B469B6: LitVarI2 var_A4, 0
  loc_B469BB: FLdRfVar var_D4
  loc_B469BE: ImpAdCallFPR4  = Format(, )
  loc_B469C3: FLdRfVar var_D4
  loc_B469C6: CStrVarVal var_D8
  loc_B469CA: FLdPr Me
  loc_B469CD: VCallAd Control_ID_HonoOfjuTxt
  loc_B469D0: FStAdFunc var_DC
  loc_B469D3: FLdPr var_DC
  loc_B469D6: Me.Text = from_stack_1
  loc_B469DB: FFree1Str var_D8
  loc_B469DE: FFree1Ad var_DC
  loc_B469E1: FFreeVar var_A4 = "": var_C4 = ""
  loc_B469EA: LitI4 1
  loc_B469EF: LitI4 1
  loc_B469F4: LitVarStr var_B4, "0.00"
  loc_B469F9: FStVarCopyObj var_C4
  loc_B469FC: FLdRfVar var_C4
  loc_B469FF: LitVarI2 var_A4, 0
  loc_B46A04: FLdRfVar var_D4
  loc_B46A07: ImpAdCallFPR4  = Format(, )
  loc_B46A0C: FLdRfVar var_D4
  loc_B46A0F: CStrVarVal var_D8
  loc_B46A13: FLdPr Me
  loc_B46A16: VCallAd Control_ID_MoviRecaTxt
  loc_B46A19: FStAdFunc var_DC
  loc_B46A1C: FLdPr var_DC
  loc_B46A1F: Me.Text = from_stack_1
  loc_B46A24: FFree1Str var_D8
  loc_B46A27: FFree1Ad var_DC
  loc_B46A2A: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46A33: LitI4 1
  loc_B46A38: LitI4 1
  loc_B46A3D: LitVarStr var_B4, "0.00"
  loc_B46A42: FStVarCopyObj var_C4
  loc_B46A45: FLdRfVar var_C4
  loc_B46A48: LitVarI2 var_A4, 0
  loc_B46A4D: FLdRfVar var_D4
  loc_B46A50: ImpAdCallFPR4  = Format(, )
  loc_B46A55: FLdRfVar var_D4
  loc_B46A58: CStrVarVal var_D8
  loc_B46A5C: FLdPr Me
  loc_B46A5F: VCallAd Control_ID_MoviOfjuTxt
  loc_B46A62: FStAdFunc var_DC
  loc_B46A65: FLdPr var_DC
  loc_B46A68: Me.Text = from_stack_1
  loc_B46A6D: FFree1Str var_D8
  loc_B46A70: FFree1Ad var_DC
  loc_B46A73: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46A7C: LitI4 1
  loc_B46A81: LitI4 1
  loc_B46A86: LitVarStr var_B4, "0.00"
  loc_B46A8B: FStVarCopyObj var_C4
  loc_B46A8E: FLdRfVar var_C4
  loc_B46A91: LitVarI2 var_A4, 0
  loc_B46A96: FLdRfVar var_D4
  loc_B46A99: ImpAdCallFPR4  = Format(, )
  loc_B46A9E: FLdRfVar var_D4
  loc_B46AA1: CStrVarVal var_D8
  loc_B46AA5: FLdPr Me
  loc_B46AA8: VCallAd Control_ID_TotalLbl
  loc_B46AAB: FStAdFunc var_DC
  loc_B46AAE: FLdPr var_DC
  loc_B46AB1: Me.Caption = from_stack_1
  loc_B46AB6: FFree1Str var_D8
  loc_B46AB9: FFree1Ad var_DC
  loc_B46ABC: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46AC5: LitI4 1
  loc_B46ACA: LitI4 1
  loc_B46ACF: LitVarStr var_B4, "0.00"
  loc_B46AD4: FStVarCopyObj var_C4
  loc_B46AD7: FLdRfVar var_C4
  loc_B46ADA: LitVarI2 var_A4, 0
  loc_B46ADF: FLdRfVar var_D4
  loc_B46AE2: ImpAdCallFPR4  = Format(, )
  loc_B46AE7: FLdRfVar var_D4
  loc_B46AEA: CStrVarVal var_D8
  loc_B46AEE: FLdPr Me
  loc_B46AF1: VCallAd Control_ID_CapitalLbl
  loc_B46AF4: FStAdFunc var_DC
  loc_B46AF7: FLdPr var_DC
  loc_B46AFA: Me.Caption = from_stack_1
  loc_B46AFF: FFree1Str var_D8
  loc_B46B02: FFree1Ad var_DC
  loc_B46B05: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46B0E: LitI4 1
  loc_B46B13: LitI4 1
  loc_B46B18: LitVarStr var_B4, "0.00"
  loc_B46B1D: FStVarCopyObj var_C4
  loc_B46B20: FLdRfVar var_C4
  loc_B46B23: LitVarI2 var_A4, 0
  loc_B46B28: FLdRfVar var_D4
  loc_B46B2B: ImpAdCallFPR4  = Format(, )
  loc_B46B30: FLdRfVar var_D4
  loc_B46B33: CStrVarVal var_D8
  loc_B46B37: FLdPr Me
  loc_B46B3A: VCallAd Control_ID_RecargoLbl
  loc_B46B3D: FStAdFunc var_DC
  loc_B46B40: FLdPr var_DC
  loc_B46B43: Me.Caption = from_stack_1
  loc_B46B48: FFree1Str var_D8
  loc_B46B4B: FFree1Ad var_DC
  loc_B46B4E: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46B57: LitI4 1
  loc_B46B5C: LitI4 1
  loc_B46B61: LitVarStr var_B4, "0.00"
  loc_B46B66: FStVarCopyObj var_C4
  loc_B46B69: FLdRfVar var_C4
  loc_B46B6C: LitVarI2 var_A4, 0
  loc_B46B71: FLdRfVar var_D4
  loc_B46B74: ImpAdCallFPR4  = Format(, )
  loc_B46B79: FLdRfVar var_D4
  loc_B46B7C: CStrVarVal var_D8
  loc_B46B80: FLdPr Me
  loc_B46B83: VCallAd Control_ID_TotalDeudaLbl
  loc_B46B86: FStAdFunc var_DC
  loc_B46B89: FLdPr var_DC
  loc_B46B8C: Me.Caption = from_stack_1
  loc_B46B91: FFree1Str var_D8
  loc_B46B94: FFree1Ad var_DC
  loc_B46B97: FFreeVar var_A4 = "": var_C4 = ""
  loc_B46BA0: ExitProcHresult
End Function

Private Function Proc_287_49_AF7254() 'AF7254
  'Data Table: 521888
  loc_AF70DC: FLdRfVar var_8C
  loc_AF70DF: FLdPr Me
  loc_AF70E2: VCallAd Control_ID_ComiAdmiTxt
  loc_AF70E5: FStAdFunc var_88
  loc_AF70E8: FLdPr var_88
  loc_AF70EB:  = Me.Text
  loc_AF70F0: FLdRfVar var_94
  loc_AF70F3: FLdPr Me
  loc_AF70F6: VCallAd Control_ID_IvaCoadTxt
  loc_AF70F9: FStAdFunc var_90
  loc_AF70FC: FLdPr var_90
  loc_AF70FF:  = Me.Text
  loc_AF7104: FLdRfVar var_9C
  loc_AF7107: FLdPr Me
  loc_AF710A: VCallAd Control_ID_TasaJustTxt
  loc_AF710D: FStAdFunc var_98
  loc_AF7110: FLdPr var_98
  loc_AF7113:  = Me.Text
  loc_AF7118: FLdRfVar var_A4
  loc_AF711B: FLdPr Me
  loc_AF711E: VCallAd Control_ID_AporLeyTxt
  loc_AF7121: FStAdFunc var_A0
  loc_AF7124: FLdPr var_A0
  loc_AF7127:  = Me.Text
  loc_AF712C: FLdRfVar var_AC
  loc_AF712F: FLdPr Me
  loc_AF7132: VCallAd Control_ID_DereFijoTxt
  loc_AF7135: FStAdFunc var_A8
  loc_AF7138: FLdPr var_A8
  loc_AF713B:  = Me.Text
  loc_AF7140: FLdRfVar var_B4
  loc_AF7143: FLdPr Me
  loc_AF7146: VCallAd Control_ID_HonoRecaTxt
  loc_AF7149: FStAdFunc var_B0
  loc_AF714C: FLdPr var_B0
  loc_AF714F:  = Me.Text
  loc_AF7154: FLdRfVar var_BC
  loc_AF7157: FLdPr Me
  loc_AF715A: VCallAd Control_ID_IvaRecaTxt
  loc_AF715D: FStAdFunc var_B8
  loc_AF7160: FLdPr var_B8
  loc_AF7163:  = Me.Text
  loc_AF7168: FLdRfVar var_C4
  loc_AF716B: FLdPr Me
  loc_AF716E: VCallAd Control_ID_HonoOfjuTxt
  loc_AF7171: FStAdFunc var_C0
  loc_AF7174: FLdPr var_C0
  loc_AF7177:  = Me.Text
  loc_AF717C: FLdRfVar var_CC
  loc_AF717F: FLdPr Me
  loc_AF7182: VCallAd Control_ID_MoviRecaTxt
  loc_AF7185: FStAdFunc var_C8
  loc_AF7188: FLdPr var_C8
  loc_AF718B:  = Me.Text
  loc_AF7190: FLdRfVar var_D4
  loc_AF7193: FLdPr Me
  loc_AF7196: VCallAd Control_ID_MoviOfjuTxt
  loc_AF7199: FStAdFunc var_D0
  loc_AF719C: FLdPr var_D0
  loc_AF719F:  = Me.Text
  loc_AF71A4: LitI4 1
  loc_AF71A9: LitI4 1
  loc_AF71AE: LitVarStr var_104, "0.00"
  loc_AF71B3: FStVarCopyObj var_114
  loc_AF71B6: FLdRfVar var_114
  loc_AF71B9: ILdRf var_8C
  loc_AF71BC: CR8Str
  loc_AF71BE: ILdRf var_94
  loc_AF71C1: CR8Str
  loc_AF71C3: AddR8
  loc_AF71C4: ILdRf var_9C
  loc_AF71C7: CR8Str
  loc_AF71C9: AddR8
  loc_AF71CA: ILdRf var_A4
  loc_AF71CD: CR8Str
  loc_AF71CF: AddR8
  loc_AF71D0: ILdRf var_AC
  loc_AF71D3: CR8Str
  loc_AF71D5: AddR8
  loc_AF71D6: ILdRf var_B4
  loc_AF71D9: CR8Str
  loc_AF71DB: AddR8
  loc_AF71DC: ILdRf var_BC
  loc_AF71DF: CR8Str
  loc_AF71E1: AddR8
  loc_AF71E2: ILdRf var_C4
  loc_AF71E5: CR8Str
  loc_AF71E7: AddR8
  loc_AF71E8: ILdRf var_CC
  loc_AF71EB: CR8Str
  loc_AF71ED: AddR8
  loc_AF71EE: ILdRf var_D4
  loc_AF71F1: CR8Str
  loc_AF71F3: AddR8
  loc_AF71F4: CVarR8
  loc_AF71F8: FLdRfVar var_124
  loc_AF71FB: ImpAdCallFPR4  = Format(, )
  loc_AF7200: FLdRfVar var_124
  loc_AF7203: CStrVarVal var_128
  loc_AF7207: FLdPr Me
  loc_AF720A: VCallAd Control_ID_TotalLbl
  loc_AF720D: FStAdFunc var_12C
  loc_AF7210: FLdPr var_12C
  loc_AF7213: Me.Caption = from_stack_1
  loc_AF7218: FFreeStr var_8C = "": var_94 = "": var_9C = "": var_A4 = "": var_AC = "": var_B4 = "": var_BC = "": var_C4 = "": var_CC = "": var_D4 = ""
  loc_AF7231: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_A0 = "": var_A8 = "": var_B0 = "": var_B8 = "": var_C0 = "": var_C8 = "": var_D0 = ""
  loc_AF724A: FFreeVar var_F4 = "": var_114 = ""
  loc_AF7253: ExitProcHresult
End Function
