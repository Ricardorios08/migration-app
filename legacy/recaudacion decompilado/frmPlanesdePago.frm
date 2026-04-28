VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmPlanesdePago
  Caption = "Generación de Planes de Pago"
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
  ClientWidth = 15240
  ClientHeight = 10152
  Begin VB.TextBox DetaFirmTxt
    ForeColor = &HFF0000&
    Left = 5520
    Top = 9480
    Width = 5532
    Height = 360
    TabIndex = 17
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
  Begin VB.ComboBox EmisionCbo
    Style = 2
    Left = 120
    Top = 9480
    Width = 2292
    Height = 396
    TabIndex = 15
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
  Begin VB.TextBox CucuPersFirmaTxt
    ForeColor = &HFF0000&
    Left = 3480
    Top = 9480
    Width = 1900
    Height = 360
    TabIndex = 16
    MaxLength = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton ImprimirCmd
    Caption = "Simulacion"
    Left = 13440
    Top = 9480
    Width = 1770
    Height = 465
    Enabled = 0   'False
    TabIndex = 67
    Picture = "frmPlanesdePago.frx":0000
    Style = 1
  End
  Begin VB.CommandButton OrdeObreCmd
    Left = 11760
    Top = 9480
    Width = 450
    Height = 360
    TabIndex = 19
    Picture = "frmPlanesdePago.frx":0102
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton CodiInmuCmd
    Left = 14760
    Top = 9480
    Width = 450
    Height = 360
    TabIndex = 21
    Picture = "frmPlanesdePago.frx":01FC
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox CodiInmuTxt
    ForeColor = &HFF0000&
    Left = 13200
    Top = 9480
    Width = 1455
    Height = 360
    TabIndex = 20
    MaxLength = 8
    DataField = "CodiInmu"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox OrdeObreTxt
    ForeColor = &HFF0000&
    Left = 10200
    Top = 9480
    Width = 1455
    Height = 345
    TabIndex = 18
    MaxLength = 15
    DataField = "OrdeObre"
    BeginProperty Font
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
    Caption = "Planes de Pago "
    Left = 120
    Top = 5160
    Width = 15132
    Height = 4215
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
    Begin VB.TextBox DescRecaTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 2280
      Width = 1215
      Height = 360
      TabIndex = 64
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
    Begin VB.TextBox AnticipoTxt
      ForeColor = &HFF0000&
      Left = 9480
      Top = 840
      Width = 1575
      Height = 345
      TabIndex = 11
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
    Begin VB.TextBox CodiTifaTxt
      ForeColor = &HFF0000&
      Left = 7920
      Top = 360
      Width = 495
      Height = 345
      TabIndex = 9
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
    Begin VB.CommandButton CalculoCuotasCmd
      Caption = "Cálculo de Cuotas"
      Left = 3000
      Top = 840
      Width = 2415
      Height = 375
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox DerechoTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 840
      Width = 1215
      Height = 360
      TabIndex = 46
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
    Begin VB.TextBox RecargoTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 1320
      Width = 1215
      Height = 360
      TabIndex = 45
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
    Begin VB.TextBox ApremioTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 2760
      Width = 1215
      Height = 360
      TabIndex = 44
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
    Begin VB.TextBox DescCapiTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 1800
      Width = 1215
      Height = 360
      TabIndex = 43
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
    Begin VB.TextBox TotalTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 3720
      Width = 1215
      Height = 360
      TabIndex = 42
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
    Begin VB.TextBox InteresTxt
      BackColor = &H80000004&
      Left = 1680
      Top = 3240
      Width = 1215
      Height = 360
      TabIndex = 41
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
    Begin VB.TextBox CuotApreTxt
      ForeColor = &HFF0000&
      Left = 7920
      Top = 840
      Width = 495
      Height = 345
      TabIndex = 10
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
    Begin MSMask.MaskEdBox FeveCuotMsk
      Left = 4560
      Top = 360
      Width = 1455
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmPlanesdePago.frx":02F6
    End
    Begin MSFlexGridLib.MSFlexGrid CuotasFlex
      Left = 3000
      Top = 1200
      Width = 2415
      Height = 2895
      TabIndex = 13
      OleObjectBlob = "frmPlanesdePago.frx":03A6
      Appearance = 0 'Flat
    End
    Begin MSFlexGridLib.MSFlexGrid CuotasDetalleFlex
      Left = 5520
      Top = 1200
      Width = 9495
      Height = 2895
      TabIndex = 14
      OleObjectBlob = "frmPlanesdePago.frx":0492
      Appearance = 0 'Flat
    End
    Begin VB.Label PorcAntiLbl
      Left = 11160
      Top = 840
      Width = 855
      Height = 255
      TabIndex = 68
      BeginProperty Font
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
      Caption = "Descuen. Rec:"
      Left = 120
      Top = 2280
      Width = 1530
      Height = 240
      TabIndex = 65
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaTifaLbl
      Left = 8520
      Top = 360
      Width = 4335
      Height = 345
      TabIndex = 61
      BeginProperty Font
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
      Caption = "Tipo de Plan:"
      Left = 6480
      Top = 360
      Width = 1365
      Height = 300
      TabIndex = 60
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
    Begin VB.Label Label10
      Caption = "Fecha de Vencimiento de la primer cuota:"
      Left = 120
      Top = 360
      Width = 4395
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
    Begin VB.Label Label11
      Caption = "Derecho:"
      Left = 615
      Top = 840
      Width = 960
      Height = 240
      TabIndex = 58
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label12
      Caption = "Recargo:"
      Left = 600
      Top = 1320
      Width = 975
      Height = 240
      TabIndex = 57
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label13
      Caption = "Apremio:"
      Left = 630
      Top = 2760
      Width = 945
      Height = 240
      TabIndex = 56
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label14
      Caption = "Descuen. Cap:"
      Left = 120
      Top = 1800
      Width = 1530
      Height = 240
      TabIndex = 55
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label15
      Caption = "Total:"
      Left = 960
      Top = 3720
      Width = 615
      Height = 240
      TabIndex = 54
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label16
      Caption = "Interes:"
      Left = 795
      Top = 3240
      Width = 780
      Height = 240
      TabIndex = 53
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label17
      Caption = "Interes:"
      Left = 12960
      Top = 480
      Width = 810
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
    Begin VB.Label Label18
      Caption = "Metodo:"
      Left = 12960
      Top = 840
      Width = 870
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
    Begin VB.Label InteTifaLbl
      Left = 13800
      Top = 480
      Width = 855
      Height = 255
      TabIndex = 50
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label MecaTifaLbl
      Left = 13920
      Top = 840
      Width = 975
      Height = 255
      TabIndex = 49
      BeginProperty Font
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
      Caption = "Cuotas Apremio:"
      Left = 6000
      Top = 840
      Width = 1770
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
    Begin VB.Label Label21
      Caption = "Anticipo:"
      Left = 8520
      Top = 840
      Width = 915
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
  End
  Begin VB.TextBox txtTotaDere
    Left = 6120
    Top = 4320
    Width = 1815
    Height = 345
    TabIndex = 34
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
    Top = 4320
    Width = 1815
    Height = 345
    TabIndex = 33
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
    Top = 4320
    Width = 1815
    Height = 360
    TabIndex = 32
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
    Top = 4320
    Width = 1815
    Height = 345
    TabIndex = 31
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
    Top = 4800
    Width = 1815
    Height = 360
    TabIndex = 30
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
  Begin VB.CommandButton cmdGenerarBoleto
    Caption = "Generar Boleto"
    Left = 11160
    Top = 9480
    Width = 2175
    Height = 405
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
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 7080
    Top = 960
    Width = 3015
    Height = 255
    TabIndex = 26
    BeginProperty Font
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
    Left = 1320
    Top = 120
    Width = 2295
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
    Left = 6360
    Top = 600
    Width = 495
    Height = 345
    TabIndex = 4
    Picture = "frmPlanesdePago.frx":057E
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
    BeginProperty Font
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
    TabIndex = 23
    Picture = "frmPlanesdePago.frx":0660
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3120
    Top = 600
    Width = 495
    Height = 345
    TabIndex = 6
    Picture = "frmPlanesdePago.frx":08B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 1680
    Top = 600
    Width = 1455
    Height = 345
    TabIndex = 2
    OleObjectBlob = "frmPlanesdePago.frx":0DF4
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1320
    Width = 15015
    Height = 2895
    TabIndex = 7
    OleObjectBlob = "frmPlanesdePago.frx":0EA4
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox CodiConcMsk
    Left = 5040
    Top = 600
    Width = 1215
    Height = 360
    TabIndex = 3
    OleObjectBlob = "frmPlanesdePago.frx":0F90
  End
  Begin VB.Label Label19
    Caption = "C.U.I.L.:"
    Left = 2520
    Top = 9480
    Width = 852
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
  Begin VB.Label Label23
    Caption = "Concepto:"
    Left = 3840
    Top = 600
    Width = 1095
    Height = 300
    TabIndex = 66
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
  Begin VB.Label OrdeObreLbl
    Caption = "Obra Reem.:"
    Left = 8880
    Top = 9480
    Width = 1350
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
  Begin VB.Label CodiInmuLbl
    Caption = "Padrón:"
    Left = 12360
    Top = 9480
    Width = 825
    Height = 300
    TabIndex = 62
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
    Caption = "Total Seleccionado:"
    Left = 10680
    Top = 4800
    Width = 2385
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
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 4080
    Top = 4320
    Width = 1785
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
  Begin VB.Label Label6
    Caption = "Total Recargo:"
    Left = 8400
    Top = 4320
    Width = 1785
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
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 240
    Top = 4320
    Width = 1755
    Height = 300
    TabIndex = 36
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
    Top = 4320
    Width = 690
    Height = 300
    TabIndex = 35
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7200
    Top = 480
    Width = 7095
    Height = 255
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7200
    Top = 120
    Width = 1695
    Height = 255
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
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9120
    Top = 120
    Width = 5175
    Height = 255
    TabIndex = 27
    BeginProperty Font
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
    Left = 360
    Top = 120
    Width = 795
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
    Caption = "Cuenta:"
    Left = 3840
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 24
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
    Caption = "Fecha de Vto:"
    Left = 120
    Top = 600
    Width = 1500
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

Attribute VB_Name = "frmPlanesdePago"

Public byFaesUsua As Byte


Private Sub AnticipoTxt_GotFocus() '9F6428
  'Data Table: 52F1AC
  loc_9F6400: FLdPr Me
  loc_9F6403: VCallAd Control_ID_AnticipoTxt
  loc_9F6406: CVarAd
  loc_9F640A: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9F640F: FFree1Var var_94 = ""
  loc_9F6412: Call Proc_187_53_A855B4()
  loc_9F6417: Call Proc_187_52_AF19AC()
  loc_9F641C: LitI2_Byte 0
  loc_9F641E: CR8I2
  loc_9F641F: FLdPr Me
  loc_9F6422: MemStFPR8 global_172
  loc_9F6425: ExitProcHresult
End Sub

Private Sub AnticipoTxt_KeyPress(KeyAscii As Integer) 'A07850
  'Data Table: 52F1AC
  loc_A0781C: LitStr "0123456789.,"
  loc_A0781F: FStStrCopy var_88
  loc_A07822: FLdRfVar var_88
  loc_A07825: ILdRf KeyAscii
  loc_A07828: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0782D: IStI2 KeyAscii
  loc_A07830: FFree1Str var_88
  loc_A07833: ILdI2 KeyAscii
  loc_A07836: LitStr "."
  loc_A07839: ImpAdCallI2 Asc()
  loc_A0783E: EqI2
  loc_A0783F: BranchF loc_A0784D
  loc_A07842: LitStr ","
  loc_A07845: ImpAdCallI2 Asc()
  loc_A0784A: IStI2 KeyAscii
  loc_A0784D: ExitProcHresult
End Sub

Private Sub AnticipoTxt_LostFocus() 'A763B8
  'Data Table: 52F1AC
  loc_A76354: FLdRfVar var_8C
  loc_A76357: FLdPr Me
  loc_A7635A: VCallAd Control_ID_AnticipoTxt
  loc_A7635D: FStAdFunc var_88
  loc_A76360: FLdPr var_88
  loc_A76363:  = Me.Text
  loc_A76368: LitI4 1
  loc_A7636D: LitI4 1
  loc_A76372: LitVarStr var_AC, "0.00"
  loc_A76377: FStVarCopyObj var_BC
  loc_A7637A: FLdRfVar var_BC
  loc_A7637D: FLdZeroAd var_8C
  loc_A76380: CVarStr var_9C
  loc_A76383: FLdRfVar var_CC
  loc_A76386: ImpAdCallFPR4  = Format(, )
  loc_A7638B: FLdRfVar var_CC
  loc_A7638E: CStrVarVal var_D0
  loc_A76392: FLdPr Me
  loc_A76395: VCallAd Control_ID_AnticipoTxt
  loc_A76398: FStAdFunc var_D4
  loc_A7639B: FLdPr var_D4
  loc_A7639E: Me.Text = from_stack_1
  loc_A763A3: FFree1Str var_D0
  loc_A763A6: FFreeAd var_88 = ""
  loc_A763AD: FFreeVar var_9C = "": var_BC = ""
  loc_A763B6: ExitProcHresult
End Sub

Private Sub AnticipoTxt_Validate(Cancel As Boolean) 'B204FC
  'Data Table: 52F1AC
  loc_B2026C: FLdRfVar var_8A
  loc_B2026F: FLdPr Me
  loc_B20272: VCallAd Control_ID_AnticipoTxt
  loc_B20275: FStAdFunc var_88
  loc_B20278: FLdPr var_88
  loc_B2027B:  = Me.Enabled
  loc_B20280: FLdI2 var_8A
  loc_B20283: FFree1Ad var_88
  loc_B20286: BranchF loc_B204FB
  loc_B20289: FLdRfVar var_90
  loc_B2028C: FLdPr Me
  loc_B2028F: VCallAd Control_ID_AnticipoTxt
  loc_B20292: FStAdFunc var_88
  loc_B20295: FLdPr var_88
  loc_B20298:  = Me.Text
  loc_B2029D: LitI2_Byte 0
  loc_B2029F: LitI2_Byte 0
  loc_B202A1: ILdRf var_90
  loc_B202A4: LitStr "Anticipo"
  loc_B202A7: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_B202AC: FStStrNoPop var_94
  loc_B202AF: FLdPr Me
  loc_B202B2: MemStStrCopy
  loc_B202B6: FFreeStr var_90 = ""
  loc_B202BD: FFree1Ad var_88
  loc_B202C0: FLdPr Me
  loc_B202C3: MemLdStr global_368
  loc_B202C6: LitStr vbNullString
  loc_B202C9: NeStr
  loc_B202CB: BranchF loc_B202F1
  loc_B202CE: FLdPr Me
  loc_B202D1: MemLdStr global_368
  loc_B202D4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B202D9: FLdPr Me
  loc_B202DC: VCallAd Control_ID_AnticipoTxt
  loc_B202DF: CVarAd
  loc_B202E3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B202E8: FFree1Var var_A4 = ""
  loc_B202EB: LitI2_Byte &HFF
  loc_B202ED: IStI2 Cancel
  loc_B202F0: ExitProcHresult
  loc_B202F1: FLdRfVar var_90
  loc_B202F4: FLdPr Me
  loc_B202F7: VCallAd Control_ID_CodiTifaTxt
  loc_B202FA: FStAdFunc var_88
  loc_B202FD: FLdPr var_88
  loc_B20300:  = Me.Text
  loc_B20305: ILdRf var_90
  loc_B20308: CR8Str
  loc_B2030A: LitI2_Byte &H65
  loc_B2030C: CR8I2
  loc_B2030D: EqR4
  loc_B2030E: FFree1Str var_90
  loc_B20311: FFree1Ad var_88
  loc_B20314: BranchF loc_B2033C
  loc_B20317: FLdRfVar var_90
  loc_B2031A: FLdPr Me
  loc_B2031D: VCallAd Control_ID_AnticipoTxt
  loc_B20320: FStAdFunc var_88
  loc_B20323: FLdPr var_88
  loc_B20326:  = Me.Text
  loc_B2032B: ILdRf var_90
  loc_B2032E: CR8Str
  loc_B20330: FLdPr Me
  loc_B20333: MemStFPR8 global_172
  loc_B20336: FFree1Str var_90
  loc_B20339: FFree1Ad var_88
  loc_B2033C: FLdRfVar var_90
  loc_B2033F: FLdPr Me
  loc_B20342: VCallAd Control_ID_AnticipoTxt
  loc_B20345: FStAdFunc var_88
  loc_B20348: FLdPr var_88
  loc_B2034B:  = Me.Text
  loc_B20350: ILdRf var_90
  loc_B20353: CR8Str
  loc_B20355: FLdPr Me
  loc_B20358: MemLdFPR8 global_164
  loc_B2035B: LtR8
  loc_B2035C: FFree1Str var_90
  loc_B2035F: FFree1Ad var_88
  loc_B20362: BranchF loc_B203E1
  loc_B20365: LitVarStr var_E4, "Anticipo incorrecto. NO puede ser menor a: "
  loc_B2036A: LitI4 1
  loc_B2036F: LitI4 1
  loc_B20374: LitVarStr var_C4, "0.00"
  loc_B20379: FStVarCopyObj var_A4
  loc_B2037C: FLdRfVar var_A4
  loc_B2037F: FLdPr Me
  loc_B20382: MemLdRfVar from_stack_1.global_164
  loc_B20385: CVarRef
  loc_B2038A: FLdRfVar var_D4
  loc_B2038D: ImpAdCallFPR4  = Format(, )
  loc_B20392: FLdRfVar var_D4
  loc_B20395: ConcatVar var_F4
  loc_B20399: CStrVarTmp
  loc_B2039A: FStStrNoPop var_90
  loc_B2039D: FLdPr Me
  loc_B203A0: MemStStrCopy
  loc_B203A4: FFree1Str var_90
  loc_B203A7: FFreeVar var_A4 = "": var_D4 = ""
  loc_B203B0: FLdPr Me
  loc_B203B3: MemLdStr global_368
  loc_B203B6: LitStr vbNullString
  loc_B203B9: NeStr
  loc_B203BB: BranchF loc_B203E1
  loc_B203BE: FLdPr Me
  loc_B203C1: MemLdStr global_368
  loc_B203C4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B203C9: FLdPr Me
  loc_B203CC: VCallAd Control_ID_AnticipoTxt
  loc_B203CF: CVarAd
  loc_B203D3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B203D8: FFree1Var var_A4 = ""
  loc_B203DB: LitI2_Byte &HFF
  loc_B203DD: IStI2 Cancel
  loc_B203E0: ExitProcHresult
  loc_B203E1: FLdRfVar var_94
  loc_B203E4: FLdPr Me
  loc_B203E7: VCallAd Control_ID_DerechoTxt
  loc_B203EA: FStAdFunc var_F8
  loc_B203ED: FLdPr var_F8
  loc_B203F0:  = Me.Text
  loc_B203F5: FLdRfVar var_100
  loc_B203F8: FLdPr Me
  loc_B203FB: VCallAd Control_ID_RecargoTxt
  loc_B203FE: FStAdFunc var_FC
  loc_B20401: FLdPr var_FC
  loc_B20404:  = Me.Text
  loc_B20409: FLdRfVar var_90
  loc_B2040C: FLdPr Me
  loc_B2040F: VCallAd Control_ID_AnticipoTxt
  loc_B20412: FStAdFunc var_88
  loc_B20415: FLdPr var_88
  loc_B20418:  = Me.Text
  loc_B2041D: ILdRf var_90
  loc_B20420: CR8Str
  loc_B20422: ILdRf var_94
  loc_B20425: CR8Str
  loc_B20427: ILdRf var_100
  loc_B2042A: CR8Str
  loc_B2042C: AddR8
  loc_B2042D: CR8R8
  loc_B2042E: GtR4
  loc_B2042F: FFreeStr var_94 = "": var_100 = ""
  loc_B20438: FFreeAd var_88 = "": var_F8 = ""
  loc_B20441: BranchF loc_B204FB
  loc_B20444: FLdRfVar var_90
  loc_B20447: FLdPr Me
  loc_B2044A: VCallAd Control_ID_DerechoTxt
  loc_B2044D: FStAdFunc var_88
  loc_B20450: FLdPr var_88
  loc_B20453:  = Me.Text
  loc_B20458: FLdRfVar var_94
  loc_B2045B: FLdPr Me
  loc_B2045E: VCallAd Control_ID_RecargoTxt
  loc_B20461: FStAdFunc var_F8
  loc_B20464: FLdPr var_F8
  loc_B20467:  = Me.Text
  loc_B2046C: LitVarStr var_E4, "Anticipo incorrecto. NO puede ser mayor a: "
  loc_B20471: LitI4 1
  loc_B20476: LitI4 1
  loc_B2047B: LitVarStr var_C4, "0.00"
  loc_B20480: FStVarCopyObj var_D4
  loc_B20483: FLdRfVar var_D4
  loc_B20486: ILdRf var_90
  loc_B20489: CR8Str
  loc_B2048B: ILdRf var_94
  loc_B2048E: CR8Str
  loc_B20490: AddR8
  loc_B20491: CVarR8
  loc_B20495: FLdRfVar var_F4
  loc_B20498: ImpAdCallFPR4  = Format(, )
  loc_B2049D: FLdRfVar var_F4
  loc_B204A0: ConcatVar var_110
  loc_B204A4: CStrVarTmp
  loc_B204A5: FStStrNoPop var_100
  loc_B204A8: FLdPr Me
  loc_B204AB: MemStStrCopy
  loc_B204AF: FFreeStr var_90 = "": var_94 = ""
  loc_B204B8: FFreeAd var_88 = ""
  loc_B204BF: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_B204CA: FLdPr Me
  loc_B204CD: MemLdStr global_368
  loc_B204D0: LitStr vbNullString
  loc_B204D3: NeStr
  loc_B204D5: BranchF loc_B204FB
  loc_B204D8: FLdPr Me
  loc_B204DB: MemLdStr global_368
  loc_B204DE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B204E3: FLdPr Me
  loc_B204E6: VCallAd Control_ID_AnticipoTxt
  loc_B204E9: CVarAd
  loc_B204ED: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B204F2: FFree1Var var_A4 = ""
  loc_B204F5: LitI2_Byte &HFF
  loc_B204F7: IStI2 Cancel
  loc_B204FA: ExitProcHresult
  loc_B204FB: ExitProcHresult
End Sub

Private Sub CuotApreTxt_GotFocus() 'A6FA90
  'Data Table: 52F1AC
  loc_A6FA28: FLdPr Me
  loc_A6FA2B: VCallAd Control_ID_CuotApreTxt
  loc_A6FA2E: CVarAd
  loc_A6FA32: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A6FA37: FFree1Var var_94 = ""
  loc_A6FA3A: Call Proc_187_53_A855B4()
  loc_A6FA3F: Call Proc_187_52_AF19AC()
  loc_A6FA44: LitI4 1
  loc_A6FA49: LitI4 1
  loc_A6FA4E: LitVarStr var_B4, "0.00"
  loc_A6FA53: FStVarCopyObj var_C4
  loc_A6FA56: FLdRfVar var_C4
  loc_A6FA59: LitVarI2 var_94, 0
  loc_A6FA5E: FLdRfVar var_D4
  loc_A6FA61: ImpAdCallFPR4  = Format(, )
  loc_A6FA66: FLdRfVar var_D4
  loc_A6FA69: CStrVarVal var_D8
  loc_A6FA6D: FLdPr Me
  loc_A6FA70: VCallAd Control_ID_InteresTxt
  loc_A6FA73: FStAdFunc var_DC
  loc_A6FA76: FLdPr var_DC
  loc_A6FA79: Me.Text = from_stack_1
  loc_A6FA7E: FFree1Str var_D8
  loc_A6FA81: FFree1Ad var_DC
  loc_A6FA84: FFreeVar var_94 = "": var_C4 = ""
  loc_A6FA8D: ExitProcHresult
End Sub

Private Sub CuotApreTxt_KeyPress(KeyAscii As Integer) '9DC554
  'Data Table: 52F1AC
  loc_9DC53C: LitStr "0123456789"
  loc_9DC53F: FStStrCopy var_88
  loc_9DC542: FLdRfVar var_88
  loc_9DC545: ILdRf KeyAscii
  loc_9DC548: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DC54D: IStI2 KeyAscii
  loc_9DC550: FFree1Str var_88
  loc_9DC553: ExitProcHresult
End Sub

Private Sub CuotApreTxt_Validate(Cancel As Boolean) 'AE8CAC
  'Data Table: 52F1AC
  loc_AE8B3C: FLdRfVar var_8C
  loc_AE8B3F: FLdPr Me
  loc_AE8B42: VCallAd Control_ID_CuotApreTxt
  loc_AE8B45: FStAdFunc var_88
  loc_AE8B48: FLdPr var_88
  loc_AE8B4B:  = Me.Text
  loc_AE8B50: LitI2_Byte 0
  loc_AE8B52: LitI2_Byte 0
  loc_AE8B54: ILdRf var_8C
  loc_AE8B57: LitStr "la cuotas de apremio"
  loc_AE8B5A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AE8B5F: FStStrNoPop var_90
  loc_AE8B62: FLdPr Me
  loc_AE8B65: MemStStrCopy
  loc_AE8B69: FFreeStr var_8C = ""
  loc_AE8B70: FFree1Ad var_88
  loc_AE8B73: FLdPr Me
  loc_AE8B76: MemLdStr global_368
  loc_AE8B79: LitStr vbNullString
  loc_AE8B7C: NeStr
  loc_AE8B7E: BranchF loc_AE8BA4
  loc_AE8B81: FLdPr Me
  loc_AE8B84: MemLdStr global_368
  loc_AE8B87: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE8B8C: FLdPr Me
  loc_AE8B8F: VCallAd Control_ID_CuotApreTxt
  loc_AE8B92: CVarAd
  loc_AE8B96: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE8B9B: FFree1Var var_A0 = ""
  loc_AE8B9E: LitI2_Byte &HFF
  loc_AE8BA0: IStI2 Cancel
  loc_AE8BA3: ExitProcHresult
  loc_AE8BA4: FLdRfVar var_8C
  loc_AE8BA7: FLdPr Me
  loc_AE8BAA: VCallAd Control_ID_CuotApreTxt
  loc_AE8BAD: FStAdFunc var_88
  loc_AE8BB0: FLdPr var_88
  loc_AE8BB3:  = Me.Text
  loc_AE8BB8: ILdRf var_8C
  loc_AE8BBB: CR8Str
  loc_AE8BBD: LitI2_Byte 0
  loc_AE8BBF: CR8I2
  loc_AE8BC0: LeR8
  loc_AE8BC1: FLdRfVar var_90
  loc_AE8BC4: FLdPr Me
  loc_AE8BC7: VCallAd Control_ID_CuotApreTxt
  loc_AE8BCA: FStAdFunc var_A4
  loc_AE8BCD: FLdPr var_A4
  loc_AE8BD0:  = Me.Text
  loc_AE8BD5: ILdRf var_90
  loc_AE8BD8: CI2Str
  loc_AE8BDA: FLdRfVar var_A0
  loc_AE8BDD: FLdRfVar var_C0
  loc_AE8BE0: LitVarStr var_BC, "CuapTifa"
  loc_AE8BE5: PopAdLdVar
  loc_AE8BE6: FLdRfVar var_AC
  loc_AE8BE9: FLdRfVar var_A8
  loc_AE8BEC: FLdPr Me
  loc_AE8BEF: MemLdRfVar from_stack_1.global_76
  loc_AE8BF2: NewIfNullPr clstipofapa
  loc_AE8BF5: from_stack_1v = clstipofapa.RsFrmGet()
  loc_AE8BFA: FLdPr var_A8
  loc_AE8BFD:  = Me.Fields
  loc_AE8C02: FLdPr var_AC
  loc_AE8C05: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8C0A: FLdPr var_C0
  loc_AE8C0D:  = Me.Value
  loc_AE8C12: FLdRfVar var_A0
  loc_AE8C15: FnCIntVar
  loc_AE8C17: GtI2
  loc_AE8C18: OrI4
  loc_AE8C19: FFreeStr var_8C = ""
  loc_AE8C20: FFreeAd var_88 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AE8C2D: FFree1Var var_A0 = ""
  loc_AE8C30: BranchF loc_AE8CAB
  loc_AE8C33: LitVarStr var_D0, "La cantidad máxima de cuotas no puede ser mayor a: "
  loc_AE8C38: FLdRfVar var_A0
  loc_AE8C3B: FLdRfVar var_A8
  loc_AE8C3E: LitVarStr var_BC, "CuapTifa"
  loc_AE8C43: PopAdLdVar
  loc_AE8C44: FLdRfVar var_A4
  loc_AE8C47: FLdRfVar var_88
  loc_AE8C4A: FLdPr Me
  loc_AE8C4D: MemLdRfVar from_stack_1.global_76
  loc_AE8C50: NewIfNullPr clstipofapa
  loc_AE8C53: from_stack_1v = clstipofapa.RsFrmGet()
  loc_AE8C58: FLdPr var_88
  loc_AE8C5B:  = Me.Fields
  loc_AE8C60: FLdPr var_A4
  loc_AE8C63: from_stack_2 = Me.Item(from_stack_1)
  loc_AE8C68: FLdPr var_A8
  loc_AE8C6B:  = Me.Value
  loc_AE8C70: FLdRfVar var_A0
  loc_AE8C73: ConcatVar var_E0
  loc_AE8C77: CStrVarVal var_8C
  loc_AE8C7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE8C80: FFree1Str var_8C
  loc_AE8C83: FFreeAd var_88 = "": var_A4 = ""
  loc_AE8C8C: FFreeVar var_A0 = ""
  loc_AE8C93: FLdPr Me
  loc_AE8C96: VCallAd Control_ID_CuotApreTxt
  loc_AE8C99: CVarAd
  loc_AE8C9D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE8CA2: FFree1Var var_A0 = ""
  loc_AE8CA5: LitI2_Byte &HFF
  loc_AE8CA7: IStI2 Cancel
  loc_AE8CAA: ExitProcHresult
  loc_AE8CAB: ExitProcHresult
End Sub

Private Sub CuotasFlex_Click() 'D4DBFC
  'Data Table: 52F1AC
  loc_D489FC: LitI2_Byte 0
  loc_D489FE: CR8I2
  loc_D489FF: FLdPr Me
  loc_D48A02: MemStFPR8 global_268
  loc_D48A05: LitI2_Byte 0
  loc_D48A07: CR8I2
  loc_D48A08: FStFPR8 var_A4
  loc_D48A0B: LitI2_Byte 0
  loc_D48A0D: CR8I2
  loc_D48A0E: FLdPr Me
  loc_D48A11: MemStFPR8 global_276
  loc_D48A14: LitI2_Byte 0
  loc_D48A16: CR8I2
  loc_D48A17: FLdPr Me
  loc_D48A1A: MemStFPR8 global_320
  loc_D48A1D: LitI2_Byte 0
  loc_D48A1F: CR8I2
  loc_D48A20: FLdPr Me
  loc_D48A23: MemStFPR8 global_328
  loc_D48A26: LitI2_Byte 0
  loc_D48A28: CR8I2
  loc_D48A29: FLdPr Me
  loc_D48A2C: MemStFPR8 global_284
  loc_D48A2F: LitI2_Byte 0
  loc_D48A31: CR8I2
  loc_D48A32: FStFPR8 var_B4
  loc_D48A35: LitI2_Byte 0
  loc_D48A37: CR8I2
  loc_D48A38: FStFPR8 var_C4
  loc_D48A3B: LitI2_Byte 0
  loc_D48A3D: CR8I2
  loc_D48A3E: FStFPR8 var_AC
  loc_D48A41: LitI2_Byte 0
  loc_D48A43: CR8I2
  loc_D48A44: FStFPR8 var_BC
  loc_D48A47: LitI2_Byte 0
  loc_D48A49: CR8I2
  loc_D48A4A: FStFPR8 var_CC
  loc_D48A4D: LitI2_Byte 0
  loc_D48A4F: CR8I2
  loc_D48A50: FLdPr Me
  loc_D48A53: MemStFPR8 global_156
  loc_D48A56: LitI2_Byte 0
  loc_D48A58: CR8I2
  loc_D48A59: FLdPr Me
  loc_D48A5C: MemStFPR8 global_228
  loc_D48A5F: LitI2_Byte 0
  loc_D48A61: CR8I2
  loc_D48A62: FLdPr Me
  loc_D48A65: MemStFPR8 global_236
  loc_D48A68: LitI2_Byte 0
  loc_D48A6A: CR8I2
  loc_D48A6B: FLdPr Me
  loc_D48A6E: MemStFPR8 global_244
  loc_D48A71: LitI2_Byte 0
  loc_D48A73: CR8I2
  loc_D48A74: FLdPr Me
  loc_D48A77: MemStFPR8 global_252
  loc_D48A7A: LitI2_Byte 0
  loc_D48A7C: CR8I2
  loc_D48A7D: FLdPr Me
  loc_D48A80: MemStFPR8 global_196
  loc_D48A83: LitI2_Byte 0
  loc_D48A85: CR8I2
  loc_D48A86: FLdPr Me
  loc_D48A89: MemStFPR8 global_204
  loc_D48A8C: LitI2_Byte 0
  loc_D48A8E: CR8I2
  loc_D48A8F: FLdPr Me
  loc_D48A92: MemStFPR8 global_212
  loc_D48A95: LitI2_Byte 0
  loc_D48A97: CR8I2
  loc_D48A98: FLdPr Me
  loc_D48A9B: MemStFPR8 global_220
  loc_D48A9E: LitI2_Byte 0
  loc_D48AA0: CR8I2
  loc_D48AA1: FLdPr Me
  loc_D48AA4: MemStFPR8 global_308
  loc_D48AA7: LitI2_Byte 0
  loc_D48AA9: FLdPrThis
  loc_D48AAA: VCallAd Control_ID_ImprimirCmd
  loc_D48AAD: FStAdFunc var_E0
  loc_D48AB0: FLdPr var_E0
  loc_D48AB3: Me.Enabled = from_stack_1b
  loc_D48AB8: FFree1Ad var_E0
  loc_D48ABB: FLdPr Me
  loc_D48ABE: VCallAd Control_ID_CuotasFlex
  loc_D48AC1: FStAdFunc var_E0
  loc_D48AC4: FLdPr var_E0
  loc_D48AC7: LateIdLdVar var_F0 DispID_4 0
  loc_D48ACE: CI4Var
  loc_D48AD0: LitI4 1
  loc_D48AD5: LeI4
  loc_D48AD6: FFree1Ad var_E0
  loc_D48AD9: FFree1Var var_F0 = ""
  loc_D48ADC: BranchF loc_D48AE0
  loc_D48ADF: ExitProcHresult
  loc_D48AE0: LitVarStr var_100, vbNullString
  loc_D48AE5: PopAdLdVar
  loc_D48AE6: FLdPr Me
  loc_D48AE9: VCallAd Control_ID_FeveCuotMsk
  loc_D48AEC: FStAdFunc var_E0
  loc_D48AEF: FLdPr var_E0
  loc_D48AF2: LateIdSt
  loc_D48AF7: FFree1Ad var_E0
  loc_D48AFA: Call Proc_187_52_AF19AC()
  loc_D48AFF: FLdPr Me
  loc_D48B02: VCallAd Control_ID_FeveCuotMsk
  loc_D48B05: FStAdFunc var_E0
  loc_D48B08: FLdPr var_E0
  loc_D48B0B: LateIdLdVar var_F0 DispID_22 0
  loc_D48B12: CStrVarTmp
  loc_D48B13: FStStrNoPop var_114
  loc_D48B16: CDateStr
  loc_D48B18: FStFPR8 var_D4
  loc_D48B1B: FFree1Str var_114
  loc_D48B1E: FFree1Ad var_E0
  loc_D48B21: FFree1Var var_F0 = ""
  loc_D48B24: FLdRfVar var_150
  loc_D48B27: FLdPr Me
  loc_D48B2A: VCallAd Control_ID_CuotApreTxt
  loc_D48B2D: FStAdFunc var_14C
  loc_D48B30: FLdPr var_14C
  loc_D48B33:  = Me.Text
  loc_D48B38: FLdPr Me
  loc_D48B3B: VCallAd Control_ID_CuotasFlex
  loc_D48B3E: FStAdFunc var_E0
  loc_D48B41: FLdPr var_E0
  loc_D48B44: LateIdLdVar var_F0 DispID_10 0
  loc_D48B4B: CI4Var
  loc_D48B4D: CVarI4
  loc_D48B51: PopAdLdVar
  loc_D48B52: LitVarI4
  loc_D48B5A: PopAdLdVar
  loc_D48B5B: FLdPr Me
  loc_D48B5E: VCallAd Control_ID_CuotasFlex
  loc_D48B61: FStAdFunc var_138
  loc_D48B64: FLdPr var_138
  loc_D48B67: LateIdCallLdVar
  loc_D48B71: CStrVarTmp
  loc_D48B72: FStStrNoPop var_114
  loc_D48B75: CI2Str
  loc_D48B77: CR8I2
  loc_D48B78: ILdRf var_150
  loc_D48B7B: CR8Str
  loc_D48B7D: LtR8
  loc_D48B7E: FFreeStr var_114 = ""
  loc_D48B85: FFreeAd var_E0 = "": var_138 = ""
  loc_D48B8E: FFreeVar var_F0 = ""
  loc_D48B95: BranchF loc_D48BB8
  loc_D48B98: LitStr "La cantidad de cuotas debe ser igual o mayor a la cantidad de cuotas del apremio"
  loc_D48B9B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_D48BA0: FLdPr Me
  loc_D48BA3: VCallAd Control_ID_CuotasFlex
  loc_D48BA6: FStAdFunc var_E0
  loc_D48BA9: FLdPr var_E0
  loc_D48BAC: LateIdCall
  loc_D48BB4: FFree1Ad var_E0
  loc_D48BB7: ExitProcHresult
  loc_D48BB8: LitI2_Byte 0
  loc_D48BBA: CR8I2
  loc_D48BBB: FLdPr Me
  loc_D48BBE: MemStFPR8 global_336
  loc_D48BC1: LitI2_Byte 0
  loc_D48BC3: CR8I2
  loc_D48BC4: FLdPr Me
  loc_D48BC7: MemStFPR8 global_344
  loc_D48BCA: FLdRfVar var_114
  loc_D48BCD: FLdPr Me
  loc_D48BD0: VCallAd Control_ID_ApremioTxt
  loc_D48BD3: FStAdFunc var_E0
  loc_D48BD6: FLdPr var_E0
  loc_D48BD9:  = Me.Text
  loc_D48BDE: ILdRf var_114
  loc_D48BE1: CR8Str
  loc_D48BE3: LitI2_Byte 0
  loc_D48BE5: CR8I2
  loc_D48BE6: GtR4
  loc_D48BE7: FFree1Str var_114
  loc_D48BEA: FFree1Ad var_E0
  loc_D48BED: BranchF loc_D49098
  loc_D48BF0: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_D48BF3: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_D48BF6: ConcatStr
  loc_D48BF7: FStStrNoPop var_114
  loc_D48BFA: FLdPr Me
  loc_D48BFD: MemLdRfVar from_stack_1.global_64
  loc_D48C00: NewIfNullPr clsctacte
  loc_D48C03: Call clsctacte.RedefineRS(from_stack_1v)
  loc_D48C08: FFree1Str var_114
  loc_D48C0B: FLdRfVar var_154
  loc_D48C0E: FLdPr Me
  loc_D48C11: MemLdRfVar from_stack_1.global_64
  loc_D48C14: NewIfNullPr clsctacte
  loc_D48C17: from_stack_1 = clsctacte.RecordCount
  loc_D48C1C: ILdRf var_154
  loc_D48C1F: LitI4 0
  loc_D48C24: GtI4
  loc_D48C25: BranchF loc_D49098
  loc_D48C28: FLdRfVar var_156
  loc_D48C2B: FLdPr Me
  loc_D48C2E: MemLdRfVar from_stack_1.global_64
  loc_D48C31: NewIfNullPr clsctacte
  loc_D48C34: from_stack_1 = clsctacte.EOF
  loc_D48C39: FLdI2 var_156
  loc_D48C3C: NotI4
  loc_D48C3D: BranchF loc_D49098
  loc_D48C40: FLdRfVar var_154
  loc_D48C43: FLdPr Me
  loc_D48C46: MemLdRfVar from_stack_1.global_64
  loc_D48C49: NewIfNullPr clsctacte
  loc_D48C4C: from_stack_1 = clsctacte.NumeApre
  loc_D48C51: FLdRfVar var_160
  loc_D48C54: FLdPr Me
  loc_D48C57: MemLdRfVar from_stack_1.global_64
  loc_D48C5A: NewIfNullPr clsctacte
  loc_D48C5D: from_stack_1 = clsctacte.SaldCtct
  loc_D48C62: FLdRfVar var_168
  loc_D48C65: FLdPr Me
  loc_D48C68: MemLdRfVar from_stack_1.global_64
  loc_D48C6B: NewIfNullPr clsctacte
  loc_D48C6E: from_stack_1 = clsctacte.RecaCtct
  loc_D48C73: FLdRfVar var_F0
  loc_D48C76: FLdR8 var_168
  loc_D48C79: FLdR8 var_160
  loc_D48C7C: ILdRf var_154
  loc_D48C7F: FLdPr Me
  loc_D48C82: MemLdRfVar from_stack_1.global_80
  loc_D48C85: NewIfNullPr clsapremio
  loc_D48C88: from_stack_4v = clsapremio.BuscaGastosApremioDetalle(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_D48C8D: FLdRfVar var_F0
  loc_D48C90: FLdPr Me
  loc_D48C93: MemStVar
  loc_D48C97: FFree1Var var_F0 = ""
  loc_D48C9A: FLdPr Me
  loc_D48C9D: MemLdFPR8 global_336
  loc_D48CA0: LitVarI2 var_100, 2
  loc_D48CA5: PopAdLdVar
  loc_D48CA6: FLdPr Me
  loc_D48CA9: MemLdRfVar from_stack_1.global_352
  loc_D48CAC: VarIndexLdVar
  loc_D48CB2: FnCDblVar
  loc_D48CB4: AddR8
  loc_D48CB5: LitVarI2 var_124, 3
  loc_D48CBA: PopAdLdVar
  loc_D48CBB: FLdPr Me
  loc_D48CBE: MemLdRfVar from_stack_1.global_352
  loc_D48CC1: VarIndexLdVar
  loc_D48CC7: FnCDblVar
  loc_D48CC9: AddR8
  loc_D48CCA: LitVarI2 var_178, 4
  loc_D48CCF: PopAdLdVar
  loc_D48CD0: FLdPr Me
  loc_D48CD3: MemLdRfVar from_stack_1.global_352
  loc_D48CD6: VarIndexLdVar
  loc_D48CDC: FnCDblVar
  loc_D48CDE: AddR8
  loc_D48CDF: FLdPr Me
  loc_D48CE2: MemStFPR8 global_336
  loc_D48CE5: FFreeVar var_F0 = "": var_148 = ""
  loc_D48CEE: FLdRfVar var_114
  loc_D48CF1: FLdPr Me
  loc_D48CF4: VCallAd Control_ID_AnticipoTxt
  loc_D48CF7: FStAdFunc var_E0
  loc_D48CFA: FLdPr var_E0
  loc_D48CFD:  = Me.Text
  loc_D48D02: ILdRf var_114
  loc_D48D05: CR8Str
  loc_D48D07: LitI2_Byte 0
  loc_D48D09: CR8I2
  loc_D48D0A: NeR8
  loc_D48D0B: FFree1Str var_114
  loc_D48D0E: FFree1Ad var_E0
  loc_D48D11: BranchF loc_D49087
  loc_D48D14: LitVarI2 var_100, 1
  loc_D48D19: PopAdLdVar
  loc_D48D1A: FLdPr Me
  loc_D48D1D: MemLdRfVar from_stack_1.global_352
  loc_D48D20: VarIndexLdVar
  loc_D48D26: PopAd
  loc_D48D28: FLdRfVar var_114
  loc_D48D2B: FLdPr Me
  loc_D48D2E: VCallAd Control_ID_CuotApreTxt
  loc_D48D31: FStAdFunc var_E0
  loc_D48D34: FLdPr var_E0
  loc_D48D37:  = Me.Text
  loc_D48D3C: FLdPr Me
  loc_D48D3F: MemLdFPR8 global_344
  loc_D48D42: CVarR8
  loc_D48D46: LitI4 2
  loc_D48D4B: FLdRfVar var_F0
  loc_D48D4E: FnCDblVar
  loc_D48D50: ILdRf var_114
  loc_D48D53: CI2Str
  loc_D48D55: CR8I2
  loc_D48D56: DivR8
  loc_D48D57: CVarR8
  loc_D48D5B: FLdRfVar var_198
  loc_D48D5E: ImpAdCallFPR4  = Round(, )
  loc_D48D63: FLdRfVar var_198
  loc_D48D66: AddVar var_1A8
  loc_D48D6A: CR4Var
  loc_D48D6B: FLdPr Me
  loc_D48D6E: MemStFPR8 global_344
  loc_D48D71: FFree1Str var_114
  loc_D48D74: FFree1Ad var_E0
  loc_D48D77: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48D82: LitVarI2 var_100, 5
  loc_D48D87: PopAdLdVar
  loc_D48D88: FLdPr Me
  loc_D48D8B: MemLdRfVar from_stack_1.global_352
  loc_D48D8E: VarIndexLdVar
  loc_D48D94: PopAd
  loc_D48D96: FLdRfVar var_114
  loc_D48D99: FLdPr Me
  loc_D48D9C: VCallAd Control_ID_CuotApreTxt
  loc_D48D9F: FStAdFunc var_E0
  loc_D48DA2: FLdPr var_E0
  loc_D48DA5:  = Me.Text
  loc_D48DAA: FLdPr Me
  loc_D48DAD: MemLdFPR8 global_344
  loc_D48DB0: CVarR8
  loc_D48DB4: LitI4 2
  loc_D48DB9: FLdRfVar var_F0
  loc_D48DBC: FnCDblVar
  loc_D48DBE: ILdRf var_114
  loc_D48DC1: CI2Str
  loc_D48DC3: CR8I2
  loc_D48DC4: DivR8
  loc_D48DC5: CVarR8
  loc_D48DC9: FLdRfVar var_198
  loc_D48DCC: ImpAdCallFPR4  = Round(, )
  loc_D48DD1: FLdRfVar var_198
  loc_D48DD4: AddVar var_1A8
  loc_D48DD8: CR4Var
  loc_D48DD9: FLdPr Me
  loc_D48DDC: MemStFPR8 global_344
  loc_D48DDF: FFree1Str var_114
  loc_D48DE2: FFree1Ad var_E0
  loc_D48DE5: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48DF0: LitVarI2 var_100, 6
  loc_D48DF5: PopAdLdVar
  loc_D48DF6: FLdPr Me
  loc_D48DF9: MemLdRfVar from_stack_1.global_352
  loc_D48DFC: VarIndexLdVar
  loc_D48E02: PopAd
  loc_D48E04: FLdRfVar var_114
  loc_D48E07: FLdPr Me
  loc_D48E0A: VCallAd Control_ID_CuotApreTxt
  loc_D48E0D: FStAdFunc var_E0
  loc_D48E10: FLdPr var_E0
  loc_D48E13:  = Me.Text
  loc_D48E18: FLdPr Me
  loc_D48E1B: MemLdFPR8 global_344
  loc_D48E1E: CVarR8
  loc_D48E22: LitI4 2
  loc_D48E27: FLdRfVar var_F0
  loc_D48E2A: FnCDblVar
  loc_D48E2C: ILdRf var_114
  loc_D48E2F: CI2Str
  loc_D48E31: CR8I2
  loc_D48E32: DivR8
  loc_D48E33: CVarR8
  loc_D48E37: FLdRfVar var_198
  loc_D48E3A: ImpAdCallFPR4  = Round(, )
  loc_D48E3F: FLdRfVar var_198
  loc_D48E42: AddVar var_1A8
  loc_D48E46: CR4Var
  loc_D48E47: FLdPr Me
  loc_D48E4A: MemStFPR8 global_344
  loc_D48E4D: FFree1Str var_114
  loc_D48E50: FFree1Ad var_E0
  loc_D48E53: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48E5E: LitVarI2 var_100, 7
  loc_D48E63: PopAdLdVar
  loc_D48E64: FLdPr Me
  loc_D48E67: MemLdRfVar from_stack_1.global_352
  loc_D48E6A: VarIndexLdVar
  loc_D48E70: PopAd
  loc_D48E72: FLdRfVar var_114
  loc_D48E75: FLdPr Me
  loc_D48E78: VCallAd Control_ID_CuotApreTxt
  loc_D48E7B: FStAdFunc var_E0
  loc_D48E7E: FLdPr var_E0
  loc_D48E81:  = Me.Text
  loc_D48E86: FLdPr Me
  loc_D48E89: MemLdFPR8 global_344
  loc_D48E8C: CVarR8
  loc_D48E90: LitI4 2
  loc_D48E95: FLdRfVar var_F0
  loc_D48E98: FnCDblVar
  loc_D48E9A: ILdRf var_114
  loc_D48E9D: CI2Str
  loc_D48E9F: CR8I2
  loc_D48EA0: DivR8
  loc_D48EA1: CVarR8
  loc_D48EA5: FLdRfVar var_198
  loc_D48EA8: ImpAdCallFPR4  = Round(, )
  loc_D48EAD: FLdRfVar var_198
  loc_D48EB0: AddVar var_1A8
  loc_D48EB4: CR4Var
  loc_D48EB5: FLdPr Me
  loc_D48EB8: MemStFPR8 global_344
  loc_D48EBB: FFree1Str var_114
  loc_D48EBE: FFree1Ad var_E0
  loc_D48EC1: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48ECC: LitVarI2 var_100, 8
  loc_D48ED1: PopAdLdVar
  loc_D48ED2: FLdPr Me
  loc_D48ED5: MemLdRfVar from_stack_1.global_352
  loc_D48ED8: VarIndexLdVar
  loc_D48EDE: PopAd
  loc_D48EE0: FLdRfVar var_114
  loc_D48EE3: FLdPr Me
  loc_D48EE6: VCallAd Control_ID_CuotApreTxt
  loc_D48EE9: FStAdFunc var_E0
  loc_D48EEC: FLdPr var_E0
  loc_D48EEF:  = Me.Text
  loc_D48EF4: FLdPr Me
  loc_D48EF7: MemLdFPR8 global_344
  loc_D48EFA: CVarR8
  loc_D48EFE: LitI4 2
  loc_D48F03: FLdRfVar var_F0
  loc_D48F06: FnCDblVar
  loc_D48F08: ILdRf var_114
  loc_D48F0B: CI2Str
  loc_D48F0D: CR8I2
  loc_D48F0E: DivR8
  loc_D48F0F: CVarR8
  loc_D48F13: FLdRfVar var_198
  loc_D48F16: ImpAdCallFPR4  = Round(, )
  loc_D48F1B: FLdRfVar var_198
  loc_D48F1E: AddVar var_1A8
  loc_D48F22: CR4Var
  loc_D48F23: FLdPr Me
  loc_D48F26: MemStFPR8 global_344
  loc_D48F29: FFree1Str var_114
  loc_D48F2C: FFree1Ad var_E0
  loc_D48F2F: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48F3A: LitVarI2 var_100, 9
  loc_D48F3F: PopAdLdVar
  loc_D48F40: FLdPr Me
  loc_D48F43: MemLdRfVar from_stack_1.global_352
  loc_D48F46: VarIndexLdVar
  loc_D48F4C: PopAd
  loc_D48F4E: FLdRfVar var_114
  loc_D48F51: FLdPr Me
  loc_D48F54: VCallAd Control_ID_CuotApreTxt
  loc_D48F57: FStAdFunc var_E0
  loc_D48F5A: FLdPr var_E0
  loc_D48F5D:  = Me.Text
  loc_D48F62: FLdPr Me
  loc_D48F65: MemLdFPR8 global_344
  loc_D48F68: CVarR8
  loc_D48F6C: LitI4 2
  loc_D48F71: FLdRfVar var_F0
  loc_D48F74: FnCDblVar
  loc_D48F76: ILdRf var_114
  loc_D48F79: CI2Str
  loc_D48F7B: CR8I2
  loc_D48F7C: DivR8
  loc_D48F7D: CVarR8
  loc_D48F81: FLdRfVar var_198
  loc_D48F84: ImpAdCallFPR4  = Round(, )
  loc_D48F89: FLdRfVar var_198
  loc_D48F8C: AddVar var_1A8
  loc_D48F90: CR4Var
  loc_D48F91: FLdPr Me
  loc_D48F94: MemStFPR8 global_344
  loc_D48F97: FFree1Str var_114
  loc_D48F9A: FFree1Ad var_E0
  loc_D48F9D: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D48FA8: LitVarI2 var_100, 10
  loc_D48FAD: PopAdLdVar
  loc_D48FAE: FLdPr Me
  loc_D48FB1: MemLdRfVar from_stack_1.global_352
  loc_D48FB4: VarIndexLdVar
  loc_D48FBA: PopAd
  loc_D48FBC: FLdRfVar var_114
  loc_D48FBF: FLdPr Me
  loc_D48FC2: VCallAd Control_ID_CuotApreTxt
  loc_D48FC5: FStAdFunc var_E0
  loc_D48FC8: FLdPr var_E0
  loc_D48FCB:  = Me.Text
  loc_D48FD0: FLdPr Me
  loc_D48FD3: MemLdFPR8 global_344
  loc_D48FD6: CVarR8
  loc_D48FDA: LitI4 2
  loc_D48FDF: FLdRfVar var_F0
  loc_D48FE2: FnCDblVar
  loc_D48FE4: ILdRf var_114
  loc_D48FE7: CI2Str
  loc_D48FE9: CR8I2
  loc_D48FEA: DivR8
  loc_D48FEB: CVarR8
  loc_D48FEF: FLdRfVar var_198
  loc_D48FF2: ImpAdCallFPR4  = Round(, )
  loc_D48FF7: FLdRfVar var_198
  loc_D48FFA: AddVar var_1A8
  loc_D48FFE: CR4Var
  loc_D48FFF: FLdPr Me
  loc_D49002: MemStFPR8 global_344
  loc_D49005: FFree1Str var_114
  loc_D49008: FFree1Ad var_E0
  loc_D4900B: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D49016: LitVarI2 var_100, 11
  loc_D4901B: PopAdLdVar
  loc_D4901C: FLdPr Me
  loc_D4901F: MemLdRfVar from_stack_1.global_352
  loc_D49022: VarIndexLdVar
  loc_D49028: PopAd
  loc_D4902A: FLdRfVar var_114
  loc_D4902D: FLdPr Me
  loc_D49030: VCallAd Control_ID_CuotApreTxt
  loc_D49033: FStAdFunc var_E0
  loc_D49036: FLdPr var_E0
  loc_D49039:  = Me.Text
  loc_D4903E: FLdPr Me
  loc_D49041: MemLdFPR8 global_344
  loc_D49044: CVarR8
  loc_D49048: LitI4 2
  loc_D4904D: FLdRfVar var_F0
  loc_D49050: FnCDblVar
  loc_D49052: ILdRf var_114
  loc_D49055: CI2Str
  loc_D49057: CR8I2
  loc_D49058: DivR8
  loc_D49059: CVarR8
  loc_D4905D: FLdRfVar var_198
  loc_D49060: ImpAdCallFPR4  = Round(, )
  loc_D49065: FLdRfVar var_198
  loc_D49068: AddVar var_1A8
  loc_D4906C: CR4Var
  loc_D4906D: FLdPr Me
  loc_D49070: MemStFPR8 global_344
  loc_D49073: FFree1Str var_114
  loc_D49076: FFree1Ad var_E0
  loc_D49079: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D49084: Branch loc_D49087
  loc_D49087: FLdPr Me
  loc_D4908A: MemLdRfVar from_stack_1.global_64
  loc_D4908D: NewIfNullPr clsctacte
  loc_D49090: Call clsctacte.MoveSiguiente()
  loc_D49095: Branch loc_D48C28
  loc_D49098: FLdRfVar var_F0
  loc_D4909B: FLdRfVar var_14C
  loc_D4909E: LitVarStr var_100, "MecaTifa"
  loc_D490A3: PopAdLdVar
  loc_D490A4: FLdRfVar var_138
  loc_D490A7: FLdRfVar var_E0
  loc_D490AA: FLdPr Me
  loc_D490AD: MemLdRfVar from_stack_1.global_76
  loc_D490B0: NewIfNullPr clstipofapa
  loc_D490B3: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D490B8: FLdPr var_E0
  loc_D490BB:  = Me.Fields
  loc_D490C0: FLdPr var_138
  loc_D490C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D490C8: FLdPr var_14C
  loc_D490CB:  = Me.Value
  loc_D490D0: FLdRfVar var_F0
  loc_D490D3: LitVarStr var_110, "Directo"
  loc_D490D8: HardType
  loc_D490D9: EqVarBool
  loc_D490DB: FFreeAd var_E0 = "": var_138 = ""
  loc_D490E4: FFree1Var var_F0 = ""
  loc_D490E7: BranchF loc_D4AE0C
  loc_D490EA: FLdRfVar var_114
  loc_D490ED: FLdPr Me
  loc_D490F0: VCallAd Control_ID_AnticipoTxt
  loc_D490F3: FStAdFunc var_E0
  loc_D490F6: FLdPr var_E0
  loc_D490F9:  = Me.Text
  loc_D490FE: ILdRf var_114
  loc_D49101: CR8Str
  loc_D49103: LitI2_Byte 0
  loc_D49105: CR8I2
  loc_D49106: NeR8
  loc_D49107: FFree1Str var_114
  loc_D4910A: FFree1Ad var_E0
  loc_D4910D: BranchF loc_D49EF1
  loc_D49110: FLdRfVar var_114
  loc_D49113: FLdPr Me
  loc_D49116: VCallAd Control_ID_CodiTifaTxt
  loc_D49119: FStAdFunc var_E0
  loc_D4911C: FLdPr var_E0
  loc_D4911F:  = Me.Text
  loc_D49124: ILdRf var_114
  loc_D49127: LitStr "101"
  loc_D4912A: EqStr
  loc_D4912C: FFree1Str var_114
  loc_D4912F: FFree1Ad var_E0
  loc_D49132: BranchF loc_D49857
  loc_D49135: FLdPr Me
  loc_D49138: VCallAd Control_ID_CuotasFlex
  loc_D4913B: FStAdFunc var_E0
  loc_D4913E: FLdPr var_E0
  loc_D49141: LateIdLdVar var_F0 DispID_10 0
  loc_D49148: CI4Var
  loc_D4914A: CVarI4
  loc_D4914E: PopAdLdVar
  loc_D4914F: LitVarI4
  loc_D49157: PopAdLdVar
  loc_D49158: FLdPr Me
  loc_D4915B: VCallAd Control_ID_CuotasFlex
  loc_D4915E: FStAdFunc var_138
  loc_D49161: FLdPr var_138
  loc_D49164: LateIdCallLdVar
  loc_D4916E: CStrVarTmp
  loc_D4916F: FStStrNoPop var_114
  loc_D49172: CR8Str
  loc_D49174: LitI2_Byte 1
  loc_D49176: CR8I2
  loc_D49177: GeR8
  loc_D49178: FLdPr Me
  loc_D4917B: VCallAd Control_ID_CuotasFlex
  loc_D4917E: FStAdFunc var_14C
  loc_D49181: FLdPr var_14C
  loc_D49184: LateIdLdVar var_198 DispID_10 0
  loc_D4918B: CI4Var
  loc_D4918D: CVarI4
  loc_D49191: PopAdLdVar
  loc_D49192: LitVarI4
  loc_D4919A: PopAdLdVar
  loc_D4919B: FLdPr Me
  loc_D4919E: VCallAd Control_ID_CuotasFlex
  loc_D491A1: FStAdFunc var_1CC
  loc_D491A4: FLdPr var_1CC
  loc_D491A7: LateIdCallLdVar
  loc_D491B1: CStrVarTmp
  loc_D491B2: FStStrNoPop var_150
  loc_D491B5: CR8Str
  loc_D491B7: LitI2_Byte 9
  loc_D491B9: CR8I2
  loc_D491BA: LeR8
  loc_D491BB: AndI4
  loc_D491BC: FFreeStr var_114 = ""
  loc_D491C3: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D491CE: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D491D9: BranchF loc_D491E8
  loc_D491DC: LitI2_Byte 9
  loc_D491DE: CR8I2
  loc_D491DF: FLdPr Me
  loc_D491E2: MemStFPR8 global_156
  loc_D491E5: Branch loc_D49564
  loc_D491E8: FLdPr Me
  loc_D491EB: VCallAd Control_ID_CuotasFlex
  loc_D491EE: FStAdFunc var_E0
  loc_D491F1: FLdPr var_E0
  loc_D491F4: LateIdLdVar var_F0 DispID_10 0
  loc_D491FB: CI4Var
  loc_D491FD: CVarI4
  loc_D49201: PopAdLdVar
  loc_D49202: LitVarI4
  loc_D4920A: PopAdLdVar
  loc_D4920B: FLdPr Me
  loc_D4920E: VCallAd Control_ID_CuotasFlex
  loc_D49211: FStAdFunc var_138
  loc_D49214: FLdPr var_138
  loc_D49217: LateIdCallLdVar
  loc_D49221: CStrVarTmp
  loc_D49222: FStStrNoPop var_114
  loc_D49225: CR8Str
  loc_D49227: LitI2_Byte &HA
  loc_D49229: CR8I2
  loc_D4922A: GeR8
  loc_D4922B: FLdPr Me
  loc_D4922E: VCallAd Control_ID_CuotasFlex
  loc_D49231: FStAdFunc var_14C
  loc_D49234: FLdPr var_14C
  loc_D49237: LateIdLdVar var_198 DispID_10 0
  loc_D4923E: CI4Var
  loc_D49240: CVarI4
  loc_D49244: PopAdLdVar
  loc_D49245: LitVarI4
  loc_D4924D: PopAdLdVar
  loc_D4924E: FLdPr Me
  loc_D49251: VCallAd Control_ID_CuotasFlex
  loc_D49254: FStAdFunc var_1CC
  loc_D49257: FLdPr var_1CC
  loc_D4925A: LateIdCallLdVar
  loc_D49264: CStrVarTmp
  loc_D49265: FStStrNoPop var_150
  loc_D49268: CR8Str
  loc_D4926A: LitI2_Byte &HE
  loc_D4926C: CR8I2
  loc_D4926D: LeR8
  loc_D4926E: AndI4
  loc_D4926F: FFreeStr var_114 = ""
  loc_D49276: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D49281: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4928C: BranchF loc_D4929B
  loc_D4928F: LitI2_Byte 8
  loc_D49291: CR8I2
  loc_D49292: FLdPr Me
  loc_D49295: MemStFPR8 global_156
  loc_D49298: Branch loc_D49564
  loc_D4929B: FLdPr Me
  loc_D4929E: VCallAd Control_ID_CuotasFlex
  loc_D492A1: FStAdFunc var_E0
  loc_D492A4: FLdPr var_E0
  loc_D492A7: LateIdLdVar var_F0 DispID_10 0
  loc_D492AE: CI4Var
  loc_D492B0: CVarI4
  loc_D492B4: PopAdLdVar
  loc_D492B5: LitVarI4
  loc_D492BD: PopAdLdVar
  loc_D492BE: FLdPr Me
  loc_D492C1: VCallAd Control_ID_CuotasFlex
  loc_D492C4: FStAdFunc var_138
  loc_D492C7: FLdPr var_138
  loc_D492CA: LateIdCallLdVar
  loc_D492D4: CStrVarTmp
  loc_D492D5: FStStrNoPop var_114
  loc_D492D8: CR8Str
  loc_D492DA: LitI2_Byte &HF
  loc_D492DC: CR8I2
  loc_D492DD: GeR8
  loc_D492DE: FLdPr Me
  loc_D492E1: VCallAd Control_ID_CuotasFlex
  loc_D492E4: FStAdFunc var_14C
  loc_D492E7: FLdPr var_14C
  loc_D492EA: LateIdLdVar var_198 DispID_10 0
  loc_D492F1: CI4Var
  loc_D492F3: CVarI4
  loc_D492F7: PopAdLdVar
  loc_D492F8: LitVarI4
  loc_D49300: PopAdLdVar
  loc_D49301: FLdPr Me
  loc_D49304: VCallAd Control_ID_CuotasFlex
  loc_D49307: FStAdFunc var_1CC
  loc_D4930A: FLdPr var_1CC
  loc_D4930D: LateIdCallLdVar
  loc_D49317: CStrVarTmp
  loc_D49318: FStStrNoPop var_150
  loc_D4931B: CR8Str
  loc_D4931D: LitI2_Byte &H13
  loc_D4931F: CR8I2
  loc_D49320: LeR8
  loc_D49321: AndI4
  loc_D49322: FFreeStr var_114 = ""
  loc_D49329: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D49334: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4933F: BranchF loc_D4934E
  loc_D49342: LitI2_Byte 7
  loc_D49344: CR8I2
  loc_D49345: FLdPr Me
  loc_D49348: MemStFPR8 global_156
  loc_D4934B: Branch loc_D49564
  loc_D4934E: FLdPr Me
  loc_D49351: VCallAd Control_ID_CuotasFlex
  loc_D49354: FStAdFunc var_E0
  loc_D49357: FLdPr var_E0
  loc_D4935A: LateIdLdVar var_F0 DispID_10 0
  loc_D49361: CI4Var
  loc_D49363: CVarI4
  loc_D49367: PopAdLdVar
  loc_D49368: LitVarI4
  loc_D49370: PopAdLdVar
  loc_D49371: FLdPr Me
  loc_D49374: VCallAd Control_ID_CuotasFlex
  loc_D49377: FStAdFunc var_138
  loc_D4937A: FLdPr var_138
  loc_D4937D: LateIdCallLdVar
  loc_D49387: CStrVarTmp
  loc_D49388: FStStrNoPop var_114
  loc_D4938B: CR8Str
  loc_D4938D: LitI2_Byte &H14
  loc_D4938F: CR8I2
  loc_D49390: GeR8
  loc_D49391: FLdPr Me
  loc_D49394: VCallAd Control_ID_CuotasFlex
  loc_D49397: FStAdFunc var_14C
  loc_D4939A: FLdPr var_14C
  loc_D4939D: LateIdLdVar var_198 DispID_10 0
  loc_D493A4: CI4Var
  loc_D493A6: CVarI4
  loc_D493AA: PopAdLdVar
  loc_D493AB: LitVarI4
  loc_D493B3: PopAdLdVar
  loc_D493B4: FLdPr Me
  loc_D493B7: VCallAd Control_ID_CuotasFlex
  loc_D493BA: FStAdFunc var_1CC
  loc_D493BD: FLdPr var_1CC
  loc_D493C0: LateIdCallLdVar
  loc_D493CA: CStrVarTmp
  loc_D493CB: FStStrNoPop var_150
  loc_D493CE: CR8Str
  loc_D493D0: LitI2_Byte &H18
  loc_D493D2: CR8I2
  loc_D493D3: LeR8
  loc_D493D4: AndI4
  loc_D493D5: FFreeStr var_114 = ""
  loc_D493DC: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D493E7: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D493F2: BranchF loc_D49401
  loc_D493F5: LitI2_Byte 6
  loc_D493F7: CR8I2
  loc_D493F8: FLdPr Me
  loc_D493FB: MemStFPR8 global_156
  loc_D493FE: Branch loc_D49564
  loc_D49401: FLdPr Me
  loc_D49404: VCallAd Control_ID_CuotasFlex
  loc_D49407: FStAdFunc var_E0
  loc_D4940A: FLdPr var_E0
  loc_D4940D: LateIdLdVar var_F0 DispID_10 0
  loc_D49414: CI4Var
  loc_D49416: CVarI4
  loc_D4941A: PopAdLdVar
  loc_D4941B: LitVarI4
  loc_D49423: PopAdLdVar
  loc_D49424: FLdPr Me
  loc_D49427: VCallAd Control_ID_CuotasFlex
  loc_D4942A: FStAdFunc var_138
  loc_D4942D: FLdPr var_138
  loc_D49430: LateIdCallLdVar
  loc_D4943A: CStrVarTmp
  loc_D4943B: FStStrNoPop var_114
  loc_D4943E: CR8Str
  loc_D49440: LitI2_Byte &H19
  loc_D49442: CR8I2
  loc_D49443: GeR8
  loc_D49444: FLdPr Me
  loc_D49447: VCallAd Control_ID_CuotasFlex
  loc_D4944A: FStAdFunc var_14C
  loc_D4944D: FLdPr var_14C
  loc_D49450: LateIdLdVar var_198 DispID_10 0
  loc_D49457: CI4Var
  loc_D49459: CVarI4
  loc_D4945D: PopAdLdVar
  loc_D4945E: LitVarI4
  loc_D49466: PopAdLdVar
  loc_D49467: FLdPr Me
  loc_D4946A: VCallAd Control_ID_CuotasFlex
  loc_D4946D: FStAdFunc var_1CC
  loc_D49470: FLdPr var_1CC
  loc_D49473: LateIdCallLdVar
  loc_D4947D: CStrVarTmp
  loc_D4947E: FStStrNoPop var_150
  loc_D49481: CR8Str
  loc_D49483: LitI2_Byte &H1D
  loc_D49485: CR8I2
  loc_D49486: LeR8
  loc_D49487: AndI4
  loc_D49488: FFreeStr var_114 = ""
  loc_D4948F: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D4949A: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D494A5: BranchF loc_D494B4
  loc_D494A8: LitI2_Byte 5
  loc_D494AA: CR8I2
  loc_D494AB: FLdPr Me
  loc_D494AE: MemStFPR8 global_156
  loc_D494B1: Branch loc_D49564
  loc_D494B4: FLdPr Me
  loc_D494B7: VCallAd Control_ID_CuotasFlex
  loc_D494BA: FStAdFunc var_E0
  loc_D494BD: FLdPr var_E0
  loc_D494C0: LateIdLdVar var_F0 DispID_10 0
  loc_D494C7: CI4Var
  loc_D494C9: CVarI4
  loc_D494CD: PopAdLdVar
  loc_D494CE: LitVarI4
  loc_D494D6: PopAdLdVar
  loc_D494D7: FLdPr Me
  loc_D494DA: VCallAd Control_ID_CuotasFlex
  loc_D494DD: FStAdFunc var_138
  loc_D494E0: FLdPr var_138
  loc_D494E3: LateIdCallLdVar
  loc_D494ED: CStrVarTmp
  loc_D494EE: FStStrNoPop var_114
  loc_D494F1: CR8Str
  loc_D494F3: LitI2_Byte &H1E
  loc_D494F5: CR8I2
  loc_D494F6: GeR8
  loc_D494F7: FLdPr Me
  loc_D494FA: VCallAd Control_ID_CuotasFlex
  loc_D494FD: FStAdFunc var_14C
  loc_D49500: FLdPr var_14C
  loc_D49503: LateIdLdVar var_198 DispID_10 0
  loc_D4950A: CI4Var
  loc_D4950C: CVarI4
  loc_D49510: PopAdLdVar
  loc_D49511: LitVarI4
  loc_D49519: PopAdLdVar
  loc_D4951A: FLdPr Me
  loc_D4951D: VCallAd Control_ID_CuotasFlex
  loc_D49520: FStAdFunc var_1CC
  loc_D49523: FLdPr var_1CC
  loc_D49526: LateIdCallLdVar
  loc_D49530: CStrVarTmp
  loc_D49531: FStStrNoPop var_150
  loc_D49534: CR8Str
  loc_D49536: LitI2_Byte &H24
  loc_D49538: CR8I2
  loc_D49539: LeR8
  loc_D4953A: AndI4
  loc_D4953B: FFreeStr var_114 = ""
  loc_D49542: FFreeAd var_E0 = "": var_138 = "": var_14C = ""
  loc_D4954D: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D49558: BranchF loc_D49564
  loc_D4955B: LitI2_Byte 4
  loc_D4955D: CR8I2
  loc_D4955E: FLdPr Me
  loc_D49561: MemStFPR8 global_156
  loc_D49564: FLdRfVar var_114
  loc_D49567: FLdPr Me
  loc_D4956A: VCallAd Control_ID_DerechoTxt
  loc_D4956D: FStAdFunc var_E0
  loc_D49570: FLdPr var_E0
  loc_D49573:  = Me.Text
  loc_D49578: LitI4 2
  loc_D4957D: ILdRf var_114
  loc_D49580: CR8Str
  loc_D49582: FLdPr Me
  loc_D49585: MemLdFPR8 global_156
  loc_D49588: MulR8
  loc_D49589: LitI2_Byte &H64
  loc_D4958B: CR8I2
  loc_D4958C: DivR8
  loc_D4958D: CVarR8
  loc_D49591: FLdRfVar var_148
  loc_D49594: ImpAdCallFPR4  = Round(, )
  loc_D49599: FLdRfVar var_148
  loc_D4959C: CR4Var
  loc_D4959D: FLdPr Me
  loc_D495A0: MemStFPR8 global_196
  loc_D495A3: FFree1Str var_114
  loc_D495A6: FFree1Ad var_E0
  loc_D495A9: FFreeVar var_F0 = ""
  loc_D495B0: FLdRfVar var_114
  loc_D495B3: FLdPr Me
  loc_D495B6: VCallAd Control_ID_RecargoTxt
  loc_D495B9: FStAdFunc var_E0
  loc_D495BC: FLdPr var_E0
  loc_D495BF:  = Me.Text
  loc_D495C4: LitI4 2
  loc_D495C9: ILdRf var_114
  loc_D495CC: CR8Str
  loc_D495CE: FLdPr Me
  loc_D495D1: MemLdFPR8 global_156
  loc_D495D4: MulR8
  loc_D495D5: LitI2_Byte &H64
  loc_D495D7: CR8I2
  loc_D495D8: DivR8
  loc_D495D9: CVarR8
  loc_D495DD: FLdRfVar var_148
  loc_D495E0: ImpAdCallFPR4  = Round(, )
  loc_D495E5: FLdRfVar var_148
  loc_D495E8: CR4Var
  loc_D495E9: FLdPr Me
  loc_D495EC: MemStFPR8 global_204
  loc_D495EF: FFree1Str var_114
  loc_D495F2: FFree1Ad var_E0
  loc_D495F5: FFreeVar var_F0 = ""
  loc_D495FC: FLdRfVar var_114
  loc_D495FF: FLdPr Me
  loc_D49602: VCallAd Control_ID_DescCapiTxt
  loc_D49605: FStAdFunc var_E0
  loc_D49608: FLdPr var_E0
  loc_D4960B:  = Me.Text
  loc_D49610: LitI4 2
  loc_D49615: ILdRf var_114
  loc_D49618: CR8Str
  loc_D4961A: FLdPr Me
  loc_D4961D: MemLdFPR8 global_156
  loc_D49620: MulR8
  loc_D49621: LitI2_Byte &H64
  loc_D49623: CR8I2
  loc_D49624: DivR8
  loc_D49625: CVarR8
  loc_D49629: FLdRfVar var_148
  loc_D4962C: ImpAdCallFPR4  = Round(, )
  loc_D49631: FLdRfVar var_148
  loc_D49634: CR4Var
  loc_D49635: FLdPr Me
  loc_D49638: MemStFPR8 global_212
  loc_D4963B: FFree1Str var_114
  loc_D4963E: FFree1Ad var_E0
  loc_D49641: FFreeVar var_F0 = ""
  loc_D49648: FLdRfVar var_114
  loc_D4964B: FLdPr Me
  loc_D4964E: VCallAd Control_ID_DescRecaTxt
  loc_D49651: FStAdFunc var_E0
  loc_D49654: FLdPr var_E0
  loc_D49657:  = Me.Text
  loc_D4965C: LitI4 2
  loc_D49661: ILdRf var_114
  loc_D49664: CR8Str
  loc_D49666: FLdPr Me
  loc_D49669: MemLdFPR8 global_156
  loc_D4966C: MulR8
  loc_D4966D: LitI2_Byte &H64
  loc_D4966F: CR8I2
  loc_D49670: DivR8
  loc_D49671: CVarR8
  loc_D49675: FLdRfVar var_148
  loc_D49678: ImpAdCallFPR4  = Round(, )
  loc_D4967D: FLdRfVar var_148
  loc_D49680: CR4Var
  loc_D49681: FLdPr Me
  loc_D49684: MemStFPR8 global_220
  loc_D49687: FFree1Str var_114
  loc_D4968A: FFree1Ad var_E0
  loc_D4968D: FFreeVar var_F0 = ""
  loc_D49694: LitI4 2
  loc_D49699: FLdPr Me
  loc_D4969C: MemLdFPR8 global_196
  loc_D4969F: FLdPr Me
  loc_D496A2: MemLdFPR8 global_204
  loc_D496A5: AddR8
  loc_D496A6: FLdPr Me
  loc_D496A9: MemLdFPR8 global_212
  loc_D496AC: SubR4
  loc_D496AD: FLdPr Me
  loc_D496B0: MemLdFPR8 global_220
  loc_D496B3: SubR4
  loc_D496B4: CVarR8
  loc_D496B8: FLdRfVar var_148
  loc_D496BB: ImpAdCallFPR4  = Round(, )
  loc_D496C0: FLdRfVar var_148
  loc_D496C3: CR4Var
  loc_D496C4: FLdPr Me
  loc_D496C7: MemStFPR8 global_164
  loc_D496CA: FFreeVar var_F0 = ""
  loc_D496D1: FLdPr Me
  loc_D496D4: MemLdFPR8 global_172
  loc_D496D7: FLdPr Me
  loc_D496DA: MemLdFPR8 global_164
  loc_D496DD: GtR4
  loc_D496DE: BranchF loc_D49743
  loc_D496E1: LitI4 2
  loc_D496E6: FLdPr Me
  loc_D496E9: MemLdRfVar from_stack_1.global_172
  loc_D496EC: CVarRef
  loc_D496F1: FLdRfVar var_F0
  loc_D496F4: ImpAdCallFPR4  = Round(, )
  loc_D496F9: LitI4 1
  loc_D496FE: LitI4 1
  loc_D49703: LitVarStr var_110, "0.00"
  loc_D49708: FStVarCopyObj var_148
  loc_D4970B: FLdRfVar var_148
  loc_D4970E: FLdRfVar var_F0
  loc_D49711: FLdRfVar var_198
  loc_D49714: ImpAdCallFPR4  = Format(, )
  loc_D49719: FLdRfVar var_198
  loc_D4971C: CStrVarVal var_114
  loc_D49720: FLdPr Me
  loc_D49723: VCallAd Control_ID_AnticipoTxt
  loc_D49726: FStAdFunc var_E0
  loc_D49729: FLdPr var_E0
  loc_D4972C: Me.Text = from_stack_1
  loc_D49731: FFree1Str var_114
  loc_D49734: FFree1Ad var_E0
  loc_D49737: FFreeVar var_F0 = "": var_148 = ""
  loc_D49740: Branch loc_D497FC
  loc_D49743: FLdPr Me
  loc_D49746: MemLdFPR8 global_172
  loc_D49749: LitI2_Byte 0
  loc_D4974B: CR8I2
  loc_D4974C: NeR8
  loc_D4974D: BranchF loc_D497AF
  loc_D49750: LitI2_Byte 0
  loc_D49752: CR8I2
  loc_D49753: FLdPr Me
  loc_D49756: MemStFPR8 global_172
  loc_D49759: LitI4 1
  loc_D4975E: LitI4 1
  loc_D49763: LitVarStr var_110, "0.00"
  loc_D49768: FStVarCopyObj var_F0
  loc_D4976B: FLdRfVar var_F0
  loc_D4976E: FLdPr Me
  loc_D49771: MemLdRfVar from_stack_1.global_164
  loc_D49774: CVarRef
  loc_D49779: FLdRfVar var_148
  loc_D4977C: ImpAdCallFPR4  = Format(, )
  loc_D49781: LitVar_Missing var_1EC
  loc_D49784: LitVar_Missing var_1DC
  loc_D49787: LitVar_Missing var_1A8
  loc_D4978A: LitI4 0
  loc_D4978F: LitVarStr var_124, "El importe del anticipo no puede ser menor a: "
  loc_D49794: FLdRfVar var_148
  loc_D49797: ConcatVar var_198
  loc_D4979B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_D497A0: FFreeVar var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1DC = ""
  loc_D497AF: LitI4 1
  loc_D497B4: LitI4 1
  loc_D497B9: LitVarStr var_110, "0.00"
  loc_D497BE: FStVarCopyObj var_F0
  loc_D497C1: FLdRfVar var_F0
  loc_D497C4: FLdPr Me
  loc_D497C7: MemLdRfVar from_stack_1.global_164
  loc_D497CA: CVarRef
  loc_D497CF: FLdRfVar var_148
  loc_D497D2: ImpAdCallFPR4  = Format(, )
  loc_D497D7: FLdRfVar var_148
  loc_D497DA: CStrVarVal var_114
  loc_D497DE: FLdPr Me
  loc_D497E1: VCallAd Control_ID_AnticipoTxt
  loc_D497E4: FStAdFunc var_E0
  loc_D497E7: FLdPr var_E0
  loc_D497EA: Me.Text = from_stack_1
  loc_D497EF: FFree1Str var_114
  loc_D497F2: FFree1Ad var_E0
  loc_D497F5: FFreeVar var_F0 = ""
  loc_D497FC: LitI4 1
  loc_D49801: LitI4 1
  loc_D49806: LitVarStr var_110, "0.00"
  loc_D4980B: FStVarCopyObj var_F0
  loc_D4980E: FLdRfVar var_F0
  loc_D49811: FLdPr Me
  loc_D49814: MemLdRfVar from_stack_1.global_156
  loc_D49817: CVarRef
  loc_D4981C: FLdRfVar var_148
  loc_D4981F: ImpAdCallFPR4  = Format(, )
  loc_D49824: FLdRfVar var_148
  loc_D49827: LitVarStr var_124, " " & Chr(37)
  loc_D4982C: ConcatVar var_198
  loc_D49830: CStrVarVal var_114
  loc_D49834: FLdPr Me
  loc_D49837: VCallAd Control_ID_PorcAntiLbl
  loc_D4983A: FStAdFunc var_E0
  loc_D4983D: FLdPr var_E0
  loc_D49840: Me.Caption = from_stack_1
  loc_D49845: FFree1Str var_114
  loc_D49848: FFree1Ad var_E0
  loc_D4984B: FFreeVar var_F0 = "": var_148 = ""
  loc_D49854: Branch loc_D49A48
  loc_D49857: FLdRfVar var_114
  loc_D4985A: FLdPr Me
  loc_D4985D: VCallAd Control_ID_AnticipoTxt
  loc_D49860: FStAdFunc var_E0
  loc_D49863: FLdPr var_E0
  loc_D49866:  = Me.Text
  loc_D4986B: FLdRfVar var_150
  loc_D4986E: FLdPr Me
  loc_D49871: VCallAd Control_ID_DerechoTxt
  loc_D49874: FStAdFunc var_138
  loc_D49877: FLdPr var_138
  loc_D4987A:  = Me.Text
  loc_D4987F: FLdRfVar var_1F0
  loc_D49882: FLdPr Me
  loc_D49885: VCallAd Control_ID_RecargoTxt
  loc_D49888: FStAdFunc var_14C
  loc_D4988B: FLdPr var_14C
  loc_D4988E:  = Me.Text
  loc_D49893: FLdRfVar var_1F4
  loc_D49896: FLdPr Me
  loc_D49899: VCallAd Control_ID_DescCapiTxt
  loc_D4989C: FStAdFunc var_1CC
  loc_D4989F: FLdPr var_1CC
  loc_D498A2:  = Me.Text
  loc_D498A7: FLdRfVar var_1FC
  loc_D498AA: FLdPr Me
  loc_D498AD: VCallAd Control_ID_DescRecaTxt
  loc_D498B0: FStAdFunc var_1F8
  loc_D498B3: FLdPr var_1F8
  loc_D498B6:  = Me.Text
  loc_D498BB: LitI4 2
  loc_D498C0: ILdRf var_114
  loc_D498C3: CR8Str
  loc_D498C5: LitI2_Byte &H64
  loc_D498C7: CR8I2
  loc_D498C8: MulR8
  loc_D498C9: ILdRf var_150
  loc_D498CC: CR8Str
  loc_D498CE: ILdRf var_1F0
  loc_D498D1: CR8Str
  loc_D498D3: AddR8
  loc_D498D4: ILdRf var_1F4
  loc_D498D7: CR8Str
  loc_D498D9: SubR4
  loc_D498DA: ILdRf var_1FC
  loc_D498DD: CR8Str
  loc_D498DF: SubR4
  loc_D498E0: DivR8
  loc_D498E1: CVarR8
  loc_D498E5: FLdRfVar var_148
  loc_D498E8: ImpAdCallFPR4  = Round(, )
  loc_D498ED: FLdRfVar var_148
  loc_D498F0: CR4Var
  loc_D498F1: FLdPr Me
  loc_D498F4: MemStFPR8 global_156
  loc_D498F7: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = ""
  loc_D49904: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = ""
  loc_D49911: FFreeVar var_F0 = ""
  loc_D49918: FLdRfVar var_114
  loc_D4991B: FLdPr Me
  loc_D4991E: VCallAd Control_ID_DerechoTxt
  loc_D49921: FStAdFunc var_E0
  loc_D49924: FLdPr var_E0
  loc_D49927:  = Me.Text
  loc_D4992C: LitI4 2
  loc_D49931: ILdRf var_114
  loc_D49934: CR8Str
  loc_D49936: FLdPr Me
  loc_D49939: MemLdFPR8 global_156
  loc_D4993C: MulR8
  loc_D4993D: LitI2_Byte &H64
  loc_D4993F: CR8I2
  loc_D49940: DivR8
  loc_D49941: CVarR8
  loc_D49945: FLdRfVar var_148
  loc_D49948: ImpAdCallFPR4  = Round(, )
  loc_D4994D: FLdRfVar var_148
  loc_D49950: CR4Var
  loc_D49951: FLdPr Me
  loc_D49954: MemStFPR8 global_196
  loc_D49957: FFree1Str var_114
  loc_D4995A: FFree1Ad var_E0
  loc_D4995D: FFreeVar var_F0 = ""
  loc_D49964: FLdRfVar var_114
  loc_D49967: FLdPr Me
  loc_D4996A: VCallAd Control_ID_RecargoTxt
  loc_D4996D: FStAdFunc var_E0
  loc_D49970: FLdPr var_E0
  loc_D49973:  = Me.Text
  loc_D49978: LitI4 2
  loc_D4997D: ILdRf var_114
  loc_D49980: CR8Str
  loc_D49982: FLdPr Me
  loc_D49985: MemLdFPR8 global_156
  loc_D49988: MulR8
  loc_D49989: LitI2_Byte &H64
  loc_D4998B: CR8I2
  loc_D4998C: DivR8
  loc_D4998D: CVarR8
  loc_D49991: FLdRfVar var_148
  loc_D49994: ImpAdCallFPR4  = Round(, )
  loc_D49999: FLdRfVar var_148
  loc_D4999C: CR4Var
  loc_D4999D: FLdPr Me
  loc_D499A0: MemStFPR8 global_204
  loc_D499A3: FFree1Str var_114
  loc_D499A6: FFree1Ad var_E0
  loc_D499A9: FFreeVar var_F0 = ""
  loc_D499B0: FLdRfVar var_114
  loc_D499B3: FLdPr Me
  loc_D499B6: VCallAd Control_ID_DescCapiTxt
  loc_D499B9: FStAdFunc var_E0
  loc_D499BC: FLdPr var_E0
  loc_D499BF:  = Me.Text
  loc_D499C4: LitI4 2
  loc_D499C9: ILdRf var_114
  loc_D499CC: CR8Str
  loc_D499CE: FLdPr Me
  loc_D499D1: MemLdFPR8 global_156
  loc_D499D4: MulR8
  loc_D499D5: LitI2_Byte &H64
  loc_D499D7: CR8I2
  loc_D499D8: DivR8
  loc_D499D9: CVarR8
  loc_D499DD: FLdRfVar var_148
  loc_D499E0: ImpAdCallFPR4  = Round(, )
  loc_D499E5: FLdRfVar var_148
  loc_D499E8: CR4Var
  loc_D499E9: FLdPr Me
  loc_D499EC: MemStFPR8 global_212
  loc_D499EF: FFree1Str var_114
  loc_D499F2: FFree1Ad var_E0
  loc_D499F5: FFreeVar var_F0 = ""
  loc_D499FC: FLdRfVar var_114
  loc_D499FF: FLdPr Me
  loc_D49A02: VCallAd Control_ID_DescRecaTxt
  loc_D49A05: FStAdFunc var_E0
  loc_D49A08: FLdPr var_E0
  loc_D49A0B:  = Me.Text
  loc_D49A10: LitI4 2
  loc_D49A15: ILdRf var_114
  loc_D49A18: CR8Str
  loc_D49A1A: FLdPr Me
  loc_D49A1D: MemLdFPR8 global_156
  loc_D49A20: MulR8
  loc_D49A21: LitI2_Byte &H64
  loc_D49A23: CR8I2
  loc_D49A24: DivR8
  loc_D49A25: CVarR8
  loc_D49A29: FLdRfVar var_148
  loc_D49A2C: ImpAdCallFPR4  = Round(, )
  loc_D49A31: FLdRfVar var_148
  loc_D49A34: CR4Var
  loc_D49A35: FLdPr Me
  loc_D49A38: MemStFPR8 global_220
  loc_D49A3B: FFree1Str var_114
  loc_D49A3E: FFree1Ad var_E0
  loc_D49A41: FFreeVar var_F0 = ""
  loc_D49A48: FLdRfVar var_114
  loc_D49A4B: FLdPr Me
  loc_D49A4E: VCallAd Control_ID_ApremioTxt
  loc_D49A51: FStAdFunc var_E0
  loc_D49A54: FLdPr var_E0
  loc_D49A57:  = Me.Text
  loc_D49A5C: ILdRf var_114
  loc_D49A5F: CR8Str
  loc_D49A61: LitI2_Byte 0
  loc_D49A63: CR8I2
  loc_D49A64: GtR4
  loc_D49A65: FFree1Str var_114
  loc_D49A68: FFree1Ad var_E0
  loc_D49A6B: BranchF loc_D49A7D
  loc_D49A6E: FLdPr Me
  loc_D49A71: MemLdFPR8 global_336
  loc_D49A74: FLdPr Me
  loc_D49A77: MemStFPR8 global_284
  loc_D49A7A: Branch loc_D49A86
  loc_D49A7D: LitI2_Byte 0
  loc_D49A7F: CR8I2
  loc_D49A80: FLdPr Me
  loc_D49A83: MemStFPR8 global_284
  loc_D49A86: FLdFPR8 var_CC
  loc_D49A89: FLdPr Me
  loc_D49A8C: MemLdFPR8 global_284
  loc_D49A8F: AddR8
  loc_D49A90: FStFPR8 var_CC
  loc_D49A93: FLdRfVar var_114
  loc_D49A96: FLdPr Me
  loc_D49A99: VCallAd Control_ID_AnticipoTxt
  loc_D49A9C: FStAdFunc var_E0
  loc_D49A9F: FLdPr var_E0
  loc_D49AA2:  = Me.Text
  loc_D49AA7: FLdPr Me
  loc_D49AAA: MemLdFPR8 global_196
  loc_D49AAD: FLdPr Me
  loc_D49AB0: MemLdFPR8 global_204
  loc_D49AB3: AddR8
  loc_D49AB4: FLdPr Me
  loc_D49AB7: MemLdFPR8 global_212
  loc_D49ABA: SubR4
  loc_D49ABB: FLdPr Me
  loc_D49ABE: MemLdFPR8 global_220
  loc_D49AC1: SubR4
  loc_D49AC2: CR8R8
  loc_D49AC3: ILdRf var_114
  loc_D49AC6: CR8Str
  loc_D49AC8: LtR8
  loc_D49AC9: FFree1Str var_114
  loc_D49ACC: FFree1Ad var_E0
  loc_D49ACF: BranchF loc_D49B1D
  loc_D49AD2: FLdRfVar var_114
  loc_D49AD5: FLdPr Me
  loc_D49AD8: VCallAd Control_ID_AnticipoTxt
  loc_D49ADB: FStAdFunc var_E0
  loc_D49ADE: FLdPr var_E0
  loc_D49AE1:  = Me.Text
  loc_D49AE6: FLdPr Me
  loc_D49AE9: MemLdFPR8 global_196
  loc_D49AEC: ILdRf var_114
  loc_D49AEF: CR8Str
  loc_D49AF1: AddR8
  loc_D49AF2: FLdPr Me
  loc_D49AF5: MemLdFPR8 global_196
  loc_D49AF8: FLdPr Me
  loc_D49AFB: MemLdFPR8 global_204
  loc_D49AFE: AddR8
  loc_D49AFF: FLdPr Me
  loc_D49B02: MemLdFPR8 global_212
  loc_D49B05: SubR4
  loc_D49B06: FLdPr Me
  loc_D49B09: MemLdFPR8 global_220
  loc_D49B0C: SubR4
  loc_D49B0D: SubR4
  loc_D49B0E: FLdPr Me
  loc_D49B11: MemStFPR8 global_196
  loc_D49B14: FFree1Str var_114
  loc_D49B17: FFree1Ad var_E0
  loc_D49B1A: Branch loc_D49BA4
  loc_D49B1D: FLdRfVar var_114
  loc_D49B20: FLdPr Me
  loc_D49B23: VCallAd Control_ID_AnticipoTxt
  loc_D49B26: FStAdFunc var_E0
  loc_D49B29: FLdPr var_E0
  loc_D49B2C:  = Me.Text
  loc_D49B31: FLdPr Me
  loc_D49B34: MemLdFPR8 global_196
  loc_D49B37: FLdPr Me
  loc_D49B3A: MemLdFPR8 global_204
  loc_D49B3D: AddR8
  loc_D49B3E: FLdPr Me
  loc_D49B41: MemLdFPR8 global_212
  loc_D49B44: SubR4
  loc_D49B45: FLdPr Me
  loc_D49B48: MemLdFPR8 global_220
  loc_D49B4B: SubR4
  loc_D49B4C: CR8R8
  loc_D49B4D: ILdRf var_114
  loc_D49B50: CR8Str
  loc_D49B52: GtR4
  loc_D49B53: FFree1Str var_114
  loc_D49B56: FFree1Ad var_E0
  loc_D49B59: BranchF loc_D49BA4
  loc_D49B5C: FLdRfVar var_114
  loc_D49B5F: FLdPr Me
  loc_D49B62: VCallAd Control_ID_AnticipoTxt
  loc_D49B65: FStAdFunc var_E0
  loc_D49B68: FLdPr var_E0
  loc_D49B6B:  = Me.Text
  loc_D49B70: FLdPr Me
  loc_D49B73: MemLdFPR8 global_196
  loc_D49B76: FLdPr Me
  loc_D49B79: MemLdFPR8 global_196
  loc_D49B7C: FLdPr Me
  loc_D49B7F: MemLdFPR8 global_204
  loc_D49B82: AddR8
  loc_D49B83: FLdPr Me
  loc_D49B86: MemLdFPR8 global_212
  loc_D49B89: SubR4
  loc_D49B8A: FLdPr Me
  loc_D49B8D: MemLdFPR8 global_220
  loc_D49B90: SubR4
  loc_D49B91: ILdRf var_114
  loc_D49B94: CR8Str
  loc_D49B96: SubR4
  loc_D49B97: SubR4
  loc_D49B98: FLdPr Me
  loc_D49B9B: MemStFPR8 global_196
  loc_D49B9E: FFree1Str var_114
  loc_D49BA1: FFree1Ad var_E0
  loc_D49BA4: FLdFPR8 var_AC
  loc_D49BA7: FLdPr Me
  loc_D49BAA: MemLdFPR8 global_212
  loc_D49BAD: AddR8
  loc_D49BAE: FStFPR8 var_AC
  loc_D49BB1: FLdFPR8 var_BC
  loc_D49BB4: FLdPr Me
  loc_D49BB7: MemLdFPR8 global_220
  loc_D49BBA: AddR8
  loc_D49BBB: FStFPR8 var_BC
  loc_D49BBE: LitVarStr var_100, "0"
  loc_D49BC3: LitI4 9
  loc_D49BC8: FLdRfVar var_F0
  loc_D49BCB: ImpAdCallFPR4  = Chr()
  loc_D49BD0: FLdRfVar var_F0
  loc_D49BD3: ConcatVar var_148
  loc_D49BD7: FLdFPR8 var_D4
  loc_D49BDA: CVarDate var_110
  loc_D49BDE: ConcatVar var_198
  loc_D49BE2: LitI4 9
  loc_D49BE7: FLdRfVar var_1A8
  loc_D49BEA: ImpAdCallFPR4  = Chr()
  loc_D49BEF: FLdRfVar var_1A8
  loc_D49BF2: ConcatVar var_1DC
  loc_D49BF6: LitI4 1
  loc_D49BFB: LitI4 1
  loc_D49C00: LitVarStr var_134, "0.00"
  loc_D49C05: FStVarCopyObj var_1EC
  loc_D49C08: FLdRfVar var_1EC
  loc_D49C0B: FLdPr Me
  loc_D49C0E: MemLdRfVar from_stack_1.global_196
  loc_D49C11: CVarRef
  loc_D49C16: FLdRfVar var_20C
  loc_D49C19: ImpAdCallFPR4  = Format(, )
  loc_D49C1E: FLdRfVar var_20C
  loc_D49C21: ConcatVar var_21C
  loc_D49C25: LitI4 9
  loc_D49C2A: FLdRfVar var_22C
  loc_D49C2D: ImpAdCallFPR4  = Chr()
  loc_D49C32: FLdRfVar var_22C
  loc_D49C35: ConcatVar var_23C
  loc_D49C39: LitI4 1
  loc_D49C3E: LitI4 1
  loc_D49C43: LitVarStr var_188, "0.00"
  loc_D49C48: FStVarCopyObj var_24C
  loc_D49C4B: FLdRfVar var_24C
  loc_D49C4E: FLdPr Me
  loc_D49C51: MemLdRfVar from_stack_1.global_204
  loc_D49C54: CVarRef
  loc_D49C59: FLdRfVar var_25C
  loc_D49C5C: ImpAdCallFPR4  = Format(, )
  loc_D49C61: FLdRfVar var_25C
  loc_D49C64: ConcatVar var_26C
  loc_D49C68: LitI4 9
  loc_D49C6D: FLdRfVar var_27C
  loc_D49C70: ImpAdCallFPR4  = Chr()
  loc_D49C75: FLdRfVar var_27C
  loc_D49C78: ConcatVar var_28C
  loc_D49C7C: LitI4 1
  loc_D49C81: LitI4 1
  loc_D49C86: LitVarStr var_1C8, "0.00"
  loc_D49C8B: FStVarCopyObj var_29C
  loc_D49C8E: FLdRfVar var_29C
  loc_D49C91: FLdPr Me
  loc_D49C94: MemLdRfVar from_stack_1.global_212
  loc_D49C97: CVarRef
  loc_D49C9C: FLdRfVar var_2AC
  loc_D49C9F: ImpAdCallFPR4  = Format(, )
  loc_D49CA4: FLdRfVar var_2AC
  loc_D49CA7: ConcatVar var_2BC
  loc_D49CAB: LitI4 9
  loc_D49CB0: FLdRfVar var_2CC
  loc_D49CB3: ImpAdCallFPR4  = Chr()
  loc_D49CB8: FLdRfVar var_2CC
  loc_D49CBB: ConcatVar var_2DC
  loc_D49CBF: LitI4 1
  loc_D49CC4: LitI4 1
  loc_D49CC9: LitVarStr var_2FC, "0.00"
  loc_D49CCE: FStVarCopyObj var_30C
  loc_D49CD1: FLdRfVar var_30C
  loc_D49CD4: FLdPr Me
  loc_D49CD7: MemLdRfVar from_stack_1.global_220
  loc_D49CDA: CVarRef
  loc_D49CDF: FLdRfVar var_31C
  loc_D49CE2: ImpAdCallFPR4  = Format(, )
  loc_D49CE7: FLdRfVar var_31C
  loc_D49CEA: ConcatVar var_32C
  loc_D49CEE: LitI4 9
  loc_D49CF3: FLdRfVar var_33C
  loc_D49CF6: ImpAdCallFPR4  = Chr()
  loc_D49CFB: FLdRfVar var_33C
  loc_D49CFE: ConcatVar var_34C
  loc_D49D02: LitI4 1
  loc_D49D07: LitI4 1
  loc_D49D0C: LitVarStr var_36C, "0.00"
  loc_D49D11: FStVarCopyObj var_37C
  loc_D49D14: FLdRfVar var_37C
  loc_D49D17: FLdPr Me
  loc_D49D1A: MemLdRfVar from_stack_1.global_284
  loc_D49D1D: CVarRef
  loc_D49D22: FLdRfVar var_38C
  loc_D49D25: ImpAdCallFPR4  = Format(, )
  loc_D49D2A: FLdRfVar var_38C
  loc_D49D2D: ConcatVar var_39C
  loc_D49D31: LitI4 9
  loc_D49D36: FLdRfVar var_3AC
  loc_D49D39: ImpAdCallFPR4  = Chr()
  loc_D49D3E: FLdRfVar var_3AC
  loc_D49D41: ConcatVar var_3BC
  loc_D49D45: LitI4 1
  loc_D49D4A: LitI4 1
  loc_D49D4F: LitVarStr var_3EC, "0.00"
  loc_D49D54: FStVarCopyObj var_3FC
  loc_D49D57: FLdRfVar var_3FC
  loc_D49D5A: LitVarI2 var_3DC, 0
  loc_D49D5F: FLdRfVar var_40C
  loc_D49D62: ImpAdCallFPR4  = Format(, )
  loc_D49D67: FLdRfVar var_40C
  loc_D49D6A: ConcatVar var_41C
  loc_D49D6E: LitI4 9
  loc_D49D73: FLdRfVar var_42C
  loc_D49D76: ImpAdCallFPR4  = Chr()
  loc_D49D7B: FLdRfVar var_42C
  loc_D49D7E: ConcatVar var_43C
  loc_D49D82: LitI4 1
  loc_D49D87: LitI4 1
  loc_D49D8C: LitVarStr var_46C, "0.00"
  loc_D49D91: FStVarCopyObj var_47C
  loc_D49D94: FLdRfVar var_47C
  loc_D49D97: FLdPr Me
  loc_D49D9A: MemLdFPR8 global_196
  loc_D49D9D: FLdPr Me
  loc_D49DA0: MemLdFPR8 global_204
  loc_D49DA3: AddR8
  loc_D49DA4: FLdPr Me
  loc_D49DA7: MemLdFPR8 global_284
  loc_D49DAA: AddR8
  loc_D49DAB: FLdPr Me
  loc_D49DAE: MemLdFPR8 global_212
  loc_D49DB1: SubR4
  loc_D49DB2: FLdPr Me
  loc_D49DB5: MemLdFPR8 global_220
  loc_D49DB8: SubR4
  loc_D49DB9: CVarR8
  loc_D49DBD: FLdRfVar var_48C
  loc_D49DC0: ImpAdCallFPR4  = Format(, )
  loc_D49DC5: FLdRfVar var_48C
  loc_D49DC8: ConcatVar var_49C
  loc_D49DCC: LitI4 9
  loc_D49DD1: FLdRfVar var_4AC
  loc_D49DD4: ImpAdCallFPR4  = Chr()
  loc_D49DD9: FLdRfVar var_4AC
  loc_D49DDC: ConcatVar var_4BC
  loc_D49DE0: LitVarI4
  loc_D49DE8: PopAdLdVar
  loc_D49DE9: LitVarI4
  loc_D49DF1: PopAdLdVar
  loc_D49DF2: FLdPr Me
  loc_D49DF5: VCallAd Control_ID_ctacteFlex
  loc_D49DF8: FStAdFunc var_E0
  loc_D49DFB: FLdPr var_E0
  loc_D49DFE: LateIdCallLdVar
  loc_D49E08: CStrVarTmp
  loc_D49E09: CVarStr var_51C
  loc_D49E0C: ConcatVar var_52C
  loc_D49E10: LitI4 9
  loc_D49E15: FLdRfVar var_53C
  loc_D49E18: ImpAdCallFPR4  = Chr()
  loc_D49E1D: FLdRfVar var_53C
  loc_D49E20: ConcatVar var_54C
  loc_D49E24: LitVarI4
  loc_D49E2C: PopAdLdVar
  loc_D49E2D: LitVarI4
  loc_D49E35: PopAdLdVar
  loc_D49E36: FLdPr Me
  loc_D49E39: VCallAd Control_ID_ctacteFlex
  loc_D49E3C: FStAdFunc var_138
  loc_D49E3F: FLdPr var_138
  loc_D49E42: LateIdCallLdVar
  loc_D49E4C: CStrVarTmp
  loc_D49E4D: CVarStr var_5AC
  loc_D49E50: ConcatVar var_5BC
  loc_D49E54: CStrVarTmp
  loc_D49E55: FStStrNoPop var_114
  loc_D49E58: FLdPr Me
  loc_D49E5B: MemStStrCopy
  loc_D49E5F: FFree1Str var_114
  loc_D49E62: FFreeAd var_E0 = ""
  loc_D49E69: FFreeVar var_3FC = "": var_3BC = "": var_40C = "": var_41C = "": var_42C = "": var_45C = "": var_47C = "": var_43C = "": var_48C = "": var_49C = "": var_4AC = "": var_50C = "": var_4BC = "": var_51C = "": var_52C = "": var_53C = "": var_59C = "": var_54C = "": var_5AC = "": var_5BC = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D49ED0: FLdPr Me
  loc_D49ED3: MemLdRfVar from_stack_1.global_56
  loc_D49ED6: CDargRef
  loc_D49EDA: FLdPr Me
  loc_D49EDD: VCallAd Control_ID_CuotasDetalleFlex
  loc_D49EE0: FStAdFunc var_E0
  loc_D49EE3: FLdPr var_E0
  loc_D49EE6: LateIdCall
  loc_D49EEE: FFree1Ad var_E0
  loc_D49EF1: FLdRfVar var_114
  loc_D49EF4: FLdPr Me
  loc_D49EF7: VCallAd Control_ID_DerechoTxt
  loc_D49EFA: FStAdFunc var_E0
  loc_D49EFD: FLdPr var_E0
  loc_D49F00:  = Me.Text
  loc_D49F05: ILdRf var_114
  loc_D49F08: CR8Str
  loc_D49F0A: FLdPr Me
  loc_D49F0D: MemLdFPR8 global_196
  loc_D49F10: SubR4
  loc_D49F11: FLdPr Me
  loc_D49F14: MemStFPR8 global_228
  loc_D49F17: FFree1Str var_114
  loc_D49F1A: FFree1Ad var_E0
  loc_D49F1D: FLdPr Me
  loc_D49F20: MemLdFPR8 global_212
  loc_D49F23: FLdPr Me
  loc_D49F26: MemStFPR8 global_236
  loc_D49F29: FLdRfVar var_114
  loc_D49F2C: FLdPr Me
  loc_D49F2F: VCallAd Control_ID_RecargoTxt
  loc_D49F32: FStAdFunc var_E0
  loc_D49F35: FLdPr var_E0
  loc_D49F38:  = Me.Text
  loc_D49F3D: ILdRf var_114
  loc_D49F40: CR8Str
  loc_D49F42: FLdPr Me
  loc_D49F45: MemLdFPR8 global_204
  loc_D49F48: SubR4
  loc_D49F49: FLdPr Me
  loc_D49F4C: MemStFPR8 global_244
  loc_D49F4F: FFree1Str var_114
  loc_D49F52: FFree1Ad var_E0
  loc_D49F55: FLdPr Me
  loc_D49F58: MemLdFPR8 global_220
  loc_D49F5B: FLdPr Me
  loc_D49F5E: MemStFPR8 global_252
  loc_D49F61: LitI4 2
  loc_D49F66: FLdPr Me
  loc_D49F69: MemLdFPR8 global_228
  loc_D49F6C: FLdPr Me
  loc_D49F6F: MemLdFPR8 global_244
  loc_D49F72: AddR8
  loc_D49F73: FLdPr Me
  loc_D49F76: MemLdFPR8 global_236
  loc_D49F79: SubR4
  loc_D49F7A: FLdPr Me
  loc_D49F7D: MemLdFPR8 global_252
  loc_D49F80: SubR4
  loc_D49F81: CVarR8
  loc_D49F85: FLdRfVar var_148
  loc_D49F88: ImpAdCallFPR4  = Round(, )
  loc_D49F8D: FLdRfVar var_148
  loc_D49F90: CR4Var
  loc_D49F91: FLdPr Me
  loc_D49F94: MemStFPR8 global_308
  loc_D49F97: FFreeVar var_F0 = ""
  loc_D49F9E: FLdPr Me
  loc_D49FA1: VCallAd Control_ID_CuotasFlex
  loc_D49FA4: FStAdFunc var_E0
  loc_D49FA7: FLdPr var_E0
  loc_D49FAA: LateIdLdVar var_F0 DispID_10 0
  loc_D49FB1: CI4Var
  loc_D49FB3: CVarI4
  loc_D49FB7: PopAdLdVar
  loc_D49FB8: LitVarI4
  loc_D49FC0: PopAdLdVar
  loc_D49FC1: FLdPr Me
  loc_D49FC4: VCallAd Control_ID_CuotasFlex
  loc_D49FC7: FStAdFunc var_138
  loc_D49FCA: FLdPr var_138
  loc_D49FCD: LateIdCallLdVar
  loc_D49FD7: PopAd
  loc_D49FD9: LitI4 2
  loc_D49FDE: FLdPr Me
  loc_D49FE1: MemLdFPR8 global_228
  loc_D49FE4: FLdRfVar var_148
  loc_D49FE7: CStrVarTmp
  loc_D49FE8: FStStrNoPop var_114
  loc_D49FEB: CR8Str
  loc_D49FED: DivR8
  loc_D49FEE: CVarR8
  loc_D49FF2: FLdRfVar var_1A8
  loc_D49FF5: ImpAdCallFPR4  = Round(, )
  loc_D49FFA: FLdRfVar var_1A8
  loc_D49FFD: CR4Var
  loc_D49FFE: FLdPr Me
  loc_D4A001: MemStFPR8 global_268
  loc_D4A004: FFree1Str var_114
  loc_D4A007: FFreeAd var_E0 = ""
  loc_D4A00E: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4A019: FLdPr Me
  loc_D4A01C: VCallAd Control_ID_CuotasFlex
  loc_D4A01F: FStAdFunc var_E0
  loc_D4A022: FLdPr var_E0
  loc_D4A025: LateIdLdVar var_F0 DispID_10 0
  loc_D4A02C: CI4Var
  loc_D4A02E: CVarI4
  loc_D4A032: PopAdLdVar
  loc_D4A033: LitVarI4
  loc_D4A03B: PopAdLdVar
  loc_D4A03C: FLdPr Me
  loc_D4A03F: VCallAd Control_ID_CuotasFlex
  loc_D4A042: FStAdFunc var_138
  loc_D4A045: FLdPr var_138
  loc_D4A048: LateIdCallLdVar
  loc_D4A052: PopAd
  loc_D4A054: LitI4 2
  loc_D4A059: FLdPr Me
  loc_D4A05C: MemLdFPR8 global_244
  loc_D4A05F: FLdRfVar var_148
  loc_D4A062: CStrVarTmp
  loc_D4A063: FStStrNoPop var_114
  loc_D4A066: CR8Str
  loc_D4A068: DivR8
  loc_D4A069: CVarR8
  loc_D4A06D: FLdRfVar var_1A8
  loc_D4A070: ImpAdCallFPR4  = Round(, )
  loc_D4A075: FLdRfVar var_1A8
  loc_D4A078: CR4Var
  loc_D4A079: FLdPr Me
  loc_D4A07C: MemStFPR8 global_276
  loc_D4A07F: FFree1Str var_114
  loc_D4A082: FFreeAd var_E0 = ""
  loc_D4A089: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4A094: LitI2_Byte 1
  loc_D4A096: FLdPr Me
  loc_D4A099: MemLdRfVar from_stack_1.global_96
  loc_D4A09C: FLdPr Me
  loc_D4A09F: VCallAd Control_ID_CuotasFlex
  loc_D4A0A2: FStAdFunc var_E0
  loc_D4A0A5: FLdPr var_E0
  loc_D4A0A8: LateIdLdVar var_F0 DispID_10 0
  loc_D4A0AF: CI4Var
  loc_D4A0B1: CVarI4
  loc_D4A0B5: PopAdLdVar
  loc_D4A0B6: LitVarI4
  loc_D4A0BE: PopAdLdVar
  loc_D4A0BF: FLdPr Me
  loc_D4A0C2: VCallAd Control_ID_CuotasFlex
  loc_D4A0C5: FStAdFunc var_138
  loc_D4A0C8: FLdPr var_138
  loc_D4A0CB: LateIdCallLdVar
  loc_D4A0D5: CStrVarTmp
  loc_D4A0D6: FStStrNoPop var_114
  loc_D4A0D9: CR8Str
  loc_D4A0DB: CI2R8
  loc_D4A0DC: FFree1Str var_114
  loc_D4A0DF: FFreeAd var_E0 = ""
  loc_D4A0E6: FFreeVar var_F0 = ""
  loc_D4A0ED: ForI2 var_5C0
  loc_D4A0F3: FLdPr Me
  loc_D4A0F6: VCallAd Control_ID_CuotasFlex
  loc_D4A0F9: FStAdFunc var_E0
  loc_D4A0FC: FLdPr var_E0
  loc_D4A0FF: LateIdLdVar var_F0 DispID_10 0
  loc_D4A106: CI4Var
  loc_D4A108: CVarI4
  loc_D4A10C: PopAdLdVar
  loc_D4A10D: LitVarI4
  loc_D4A115: PopAdLdVar
  loc_D4A116: FLdPr Me
  loc_D4A119: VCallAd Control_ID_CuotasFlex
  loc_D4A11C: FStAdFunc var_138
  loc_D4A11F: FLdPr var_138
  loc_D4A122: LateIdCallLdVar
  loc_D4A12C: PopAd
  loc_D4A12E: FLdRfVar var_198
  loc_D4A131: FLdRfVar var_1F8
  loc_D4A134: LitVarStr var_178, "MecaTifa"
  loc_D4A139: PopAdLdVar
  loc_D4A13A: FLdRfVar var_1CC
  loc_D4A13D: FLdRfVar var_14C
  loc_D4A140: FLdPr Me
  loc_D4A143: MemLdRfVar from_stack_1.global_76
  loc_D4A146: NewIfNullPr clstipofapa
  loc_D4A149: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4A14E: FLdPr var_14C
  loc_D4A151:  = Me.Fields
  loc_D4A156: FLdPr var_1CC
  loc_D4A159: from_stack_2 = Me.Item(from_stack_1)
  loc_D4A15E: FLdPr var_1F8
  loc_D4A161:  = Me.Value
  loc_D4A166: FLdRfVar var_1A8
  loc_D4A169: FLdRfVar var_5CC
  loc_D4A16C: LitVarStr var_188, "InteTifa"
  loc_D4A171: PopAdLdVar
  loc_D4A172: FLdRfVar var_5C8
  loc_D4A175: FLdRfVar var_5C4
  loc_D4A178: FLdPr Me
  loc_D4A17B: MemLdRfVar from_stack_1.global_76
  loc_D4A17E: NewIfNullPr clstipofapa
  loc_D4A181: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4A186: FLdPr var_5C4
  loc_D4A189:  = Me.Fields
  loc_D4A18E: FLdPr var_5C8
  loc_D4A191: from_stack_2 = Me.Item(from_stack_1)
  loc_D4A196: FLdPr var_5CC
  loc_D4A199:  = Me.Value
  loc_D4A19E: FLdPr Me
  loc_D4A1A1: MemLdR8 global_308
  loc_D4A1A4: FLdRfVar var_1A8
  loc_D4A1A7: CR4Var
  loc_D4A1A8: PopFPR8
  loc_D4A1A9: FLdRfVar var_198
  loc_D4A1AC: CStrVarTmp
  loc_D4A1AD: FStStrNoPop var_150
  loc_D4A1B0: FLdRfVar var_148
  loc_D4A1B3: CStrVarTmp
  loc_D4A1B4: FStStrNoPop var_114
  loc_D4A1B7: CR8Str
  loc_D4A1B9: CI2R8
  loc_D4A1BA: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_D4A1BF: CVarRef
  loc_D4A1C4: FStVar var_94
  loc_D4A1C8: FFreeStr var_114 = ""
  loc_D4A1CF: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = "": var_5C4 = "": var_5C8 = "": var_1F8 = ""
  loc_D4A1E2: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4A1ED: FLdFPR8 var_A4
  loc_D4A1F0: FLdPr Me
  loc_D4A1F3: MemLdFPR8 global_268
  loc_D4A1F6: AddR8
  loc_D4A1F7: FStFPR8 var_A4
  loc_D4A1FA: FLdFPR8 var_B4
  loc_D4A1FD: FLdPr Me
  loc_D4A200: MemLdFPR8 global_276
  loc_D4A203: AddR8
  loc_D4A204: FStFPR8 var_B4
  loc_D4A207: FLdPr Me
  loc_D4A20A: VCallAd Control_ID_CuotasFlex
  loc_D4A20D: FStAdFunc var_E0
  loc_D4A210: FLdPr var_E0
  loc_D4A213: LateIdLdVar var_F0 DispID_10 0
  loc_D4A21A: CI4Var
  loc_D4A21C: CVarI4
  loc_D4A220: PopAdLdVar
  loc_D4A221: LitVarI4
  loc_D4A229: PopAdLdVar
  loc_D4A22A: FLdPr Me
  loc_D4A22D: VCallAd Control_ID_CuotasFlex
  loc_D4A230: FStAdFunc var_138
  loc_D4A233: FLdPr var_138
  loc_D4A236: LateIdCallLdVar
  loc_D4A240: PopAd
  loc_D4A242: FLdPr Me
  loc_D4A245: MemLdI2 global_96
  loc_D4A248: CR8I2
  loc_D4A249: FLdRfVar var_148
  loc_D4A24C: CStrVarTmp
  loc_D4A24D: FStStrNoPop var_114
  loc_D4A250: CR8Str
  loc_D4A252: EqR4
  loc_D4A253: FFree1Str var_114
  loc_D4A256: FFreeAd var_E0 = ""
  loc_D4A25D: FFreeVar var_F0 = ""
  loc_D4A264: BranchF loc_D4A361
  loc_D4A267: FLdFPR8 var_A4
  loc_D4A26A: FLdPr Me
  loc_D4A26D: MemLdFPR8 global_228
  loc_D4A270: GtR4
  loc_D4A271: BranchF loc_D4A28E
  loc_D4A274: FLdPr Me
  loc_D4A277: MemLdFPR8 global_268
  loc_D4A27A: FLdFPR8 var_A4
  loc_D4A27D: FLdPr Me
  loc_D4A280: MemLdFPR8 global_228
  loc_D4A283: SubR4
  loc_D4A284: SubR4
  loc_D4A285: FLdPr Me
  loc_D4A288: MemStFPR8 global_268
  loc_D4A28B: Branch loc_D4A2B2
  loc_D4A28E: FLdFPR8 var_A4
  loc_D4A291: FLdPr Me
  loc_D4A294: MemLdFPR8 global_228
  loc_D4A297: LtR8
  loc_D4A298: BranchF loc_D4A2B2
  loc_D4A29B: FLdPr Me
  loc_D4A29E: MemLdFPR8 global_268
  loc_D4A2A1: FLdPr Me
  loc_D4A2A4: MemLdFPR8 global_228
  loc_D4A2A7: FLdFPR8 var_A4
  loc_D4A2AA: SubR4
  loc_D4A2AB: AddR8
  loc_D4A2AC: FLdPr Me
  loc_D4A2AF: MemStFPR8 global_268
  loc_D4A2B2: FLdRfVar var_114
  loc_D4A2B5: FLdPr Me
  loc_D4A2B8: VCallAd Control_ID_DescCapiTxt
  loc_D4A2BB: FStAdFunc var_E0
  loc_D4A2BE: FLdPr var_E0
  loc_D4A2C1:  = Me.Text
  loc_D4A2C6: FLdFPR8 var_AC
  loc_D4A2C9: ILdRf var_114
  loc_D4A2CC: CR8Str
  loc_D4A2CE: GtR4
  loc_D4A2CF: FFree1Str var_114
  loc_D4A2D2: FFree1Ad var_E0
  loc_D4A2D5: BranchF loc_D4A30B
  loc_D4A2D8: FLdRfVar var_114
  loc_D4A2DB: FLdPr Me
  loc_D4A2DE: VCallAd Control_ID_DescCapiTxt
  loc_D4A2E1: FStAdFunc var_E0
  loc_D4A2E4: FLdPr var_E0
  loc_D4A2E7:  = Me.Text
  loc_D4A2EC: FLdPr Me
  loc_D4A2EF: MemLdFPR8 global_320
  loc_D4A2F2: FLdFPR8 var_AC
  loc_D4A2F5: ILdRf var_114
  loc_D4A2F8: CR8Str
  loc_D4A2FA: SubR4
  loc_D4A2FB: SubR4
  loc_D4A2FC: FLdPr Me
  loc_D4A2FF: MemStFPR8 global_320
  loc_D4A302: FFree1Str var_114
  loc_D4A305: FFree1Ad var_E0
  loc_D4A308: Branch loc_D4A361
  loc_D4A30B: FLdRfVar var_114
  loc_D4A30E: FLdPr Me
  loc_D4A311: VCallAd Control_ID_DescCapiTxt
  loc_D4A314: FStAdFunc var_E0
  loc_D4A317: FLdPr var_E0
  loc_D4A31A:  = Me.Text
  loc_D4A31F: FLdFPR8 var_AC
  loc_D4A322: ILdRf var_114
  loc_D4A325: CR8Str
  loc_D4A327: LtR8
  loc_D4A328: FFree1Str var_114
  loc_D4A32B: FFree1Ad var_E0
  loc_D4A32E: BranchF loc_D4A361
  loc_D4A331: FLdRfVar var_114
  loc_D4A334: FLdPr Me
  loc_D4A337: VCallAd Control_ID_DescCapiTxt
  loc_D4A33A: FStAdFunc var_E0
  loc_D4A33D: FLdPr var_E0
  loc_D4A340:  = Me.Text
  loc_D4A345: FLdPr Me
  loc_D4A348: MemLdFPR8 global_320
  loc_D4A34B: ILdRf var_114
  loc_D4A34E: CR8Str
  loc_D4A350: FLdFPR8 var_AC
  loc_D4A353: SubR4
  loc_D4A354: AddR8
  loc_D4A355: FLdPr Me
  loc_D4A358: MemStFPR8 global_320
  loc_D4A35B: FFree1Str var_114
  loc_D4A35E: FFree1Ad var_E0
  loc_D4A361: FLdRfVar var_F0
  loc_D4A364: FLdRfVar var_14C
  loc_D4A367: LitVarStr var_100, "DecaTifa"
  loc_D4A36C: PopAdLdVar
  loc_D4A36D: FLdRfVar var_138
  loc_D4A370: FLdRfVar var_E0
  loc_D4A373: FLdPr Me
  loc_D4A376: MemLdRfVar from_stack_1.global_76
  loc_D4A379: NewIfNullPr clstipofapa
  loc_D4A37C: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4A381: FLdPr var_E0
  loc_D4A384:  = Me.Fields
  loc_D4A389: FLdPr var_138
  loc_D4A38C: from_stack_2 = Me.Item(from_stack_1)
  loc_D4A391: FLdPr var_14C
  loc_D4A394:  = Me.Value
  loc_D4A399: LitI4 2
  loc_D4A39E: FLdPr Me
  loc_D4A3A1: MemLdFPR8 global_268
  loc_D4A3A4: FLdRfVar var_F0
  loc_D4A3A7: FnCDblVar
  loc_D4A3A9: MulR8
  loc_D4A3AA: LitI2_Byte &H64
  loc_D4A3AC: CR8I2
  loc_D4A3AD: DivR8
  loc_D4A3AE: CVarR8
  loc_D4A3B2: FLdRfVar var_198
  loc_D4A3B5: ImpAdCallFPR4  = Round(, )
  loc_D4A3BA: FLdRfVar var_198
  loc_D4A3BD: CR4Var
  loc_D4A3BE: FLdPr Me
  loc_D4A3C1: MemStFPR8 global_320
  loc_D4A3C4: FFreeAd var_E0 = "": var_138 = ""
  loc_D4A3CD: FFreeVar var_F0 = "": var_148 = ""
  loc_D4A3D6: FLdFPR8 var_AC
  loc_D4A3D9: FLdPr Me
  loc_D4A3DC: MemLdFPR8 global_320
  loc_D4A3DF: AddR8
  loc_D4A3E0: FStFPR8 var_AC
  loc_D4A3E3: FLdRfVar var_F0
  loc_D4A3E6: FLdRfVar var_14C
  loc_D4A3E9: LitVarStr var_100, "DereTifa"
  loc_D4A3EE: PopAdLdVar
  loc_D4A3EF: FLdRfVar var_138
  loc_D4A3F2: FLdRfVar var_E0
  loc_D4A3F5: FLdPr Me
  loc_D4A3F8: MemLdRfVar from_stack_1.global_76
  loc_D4A3FB: NewIfNullPr clstipofapa
  loc_D4A3FE: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4A403: FLdPr var_E0
  loc_D4A406:  = Me.Fields
  loc_D4A40B: FLdPr var_138
  loc_D4A40E: from_stack_2 = Me.Item(from_stack_1)
  loc_D4A413: FLdPr var_14C
  loc_D4A416:  = Me.Value
  loc_D4A41B: LitI4 2
  loc_D4A420: FLdPr Me
  loc_D4A423: MemLdFPR8 global_276
  loc_D4A426: FLdRfVar var_F0
  loc_D4A429: FnCDblVar
  loc_D4A42B: MulR8
  loc_D4A42C: LitI2_Byte &H64
  loc_D4A42E: CR8I2
  loc_D4A42F: DivR8
  loc_D4A430: CVarR8
  loc_D4A434: FLdRfVar var_198
  loc_D4A437: ImpAdCallFPR4  = Round(, )
  loc_D4A43C: FLdRfVar var_198
  loc_D4A43F: CR4Var
  loc_D4A440: FLdPr Me
  loc_D4A443: MemStFPR8 global_328
  loc_D4A446: FFreeAd var_E0 = "": var_138 = ""
  loc_D4A44F: FFreeVar var_F0 = "": var_148 = ""
  loc_D4A458: FLdFPR8 var_BC
  loc_D4A45B: FLdPr Me
  loc_D4A45E: MemLdFPR8 global_328
  loc_D4A461: AddR8
  loc_D4A462: FStFPR8 var_BC
  loc_D4A465: FLdPr Me
  loc_D4A468: VCallAd Control_ID_CuotasFlex
  loc_D4A46B: FStAdFunc var_E0
  loc_D4A46E: FLdPr var_E0
  loc_D4A471: LateIdLdVar var_F0 DispID_10 0
  loc_D4A478: CI4Var
  loc_D4A47A: CVarI4
  loc_D4A47E: PopAdLdVar
  loc_D4A47F: LitVarI4
  loc_D4A487: PopAdLdVar
  loc_D4A488: FLdPr Me
  loc_D4A48B: VCallAd Control_ID_CuotasFlex
  loc_D4A48E: FStAdFunc var_138
  loc_D4A491: FLdPr var_138
  loc_D4A494: LateIdCallLdVar
  loc_D4A49E: PopAd
  loc_D4A4A0: FLdPr Me
  loc_D4A4A3: MemLdI2 global_96
  loc_D4A4A6: CR8I2
  loc_D4A4A7: FLdRfVar var_148
  loc_D4A4AA: CStrVarTmp
  loc_D4A4AB: FStStrNoPop var_114
  loc_D4A4AE: CR8Str
  loc_D4A4B0: EqR4
  loc_D4A4B1: FFree1Str var_114
  loc_D4A4B4: FFreeAd var_E0 = ""
  loc_D4A4BB: FFreeVar var_F0 = ""
  loc_D4A4C2: BranchF loc_D4A5BF
  loc_D4A4C5: FLdFPR8 var_B4
  loc_D4A4C8: FLdPr Me
  loc_D4A4CB: MemLdFPR8 global_244
  loc_D4A4CE: GtR4
  loc_D4A4CF: BranchF loc_D4A4EC
  loc_D4A4D2: FLdPr Me
  loc_D4A4D5: MemLdFPR8 global_276
  loc_D4A4D8: FLdFPR8 var_B4
  loc_D4A4DB: FLdPr Me
  loc_D4A4DE: MemLdFPR8 global_244
  loc_D4A4E1: SubR4
  loc_D4A4E2: SubR4
  loc_D4A4E3: FLdPr Me
  loc_D4A4E6: MemStFPR8 global_276
  loc_D4A4E9: Branch loc_D4A510
  loc_D4A4EC: FLdFPR8 var_B4
  loc_D4A4EF: FLdPr Me
  loc_D4A4F2: MemLdFPR8 global_244
  loc_D4A4F5: LtR8
  loc_D4A4F6: BranchF loc_D4A510
  loc_D4A4F9: FLdPr Me
  loc_D4A4FC: MemLdFPR8 global_276
  loc_D4A4FF: FLdPr Me
  loc_D4A502: MemLdFPR8 global_244
  loc_D4A505: FLdFPR8 var_B4
  loc_D4A508: SubR4
  loc_D4A509: AddR8
  loc_D4A50A: FLdPr Me
  loc_D4A50D: MemStFPR8 global_276
  loc_D4A510: FLdRfVar var_114
  loc_D4A513: FLdPr Me
  loc_D4A516: VCallAd Control_ID_DescRecaTxt
  loc_D4A519: FStAdFunc var_E0
  loc_D4A51C: FLdPr var_E0
  loc_D4A51F:  = Me.Text
  loc_D4A524: FLdFPR8 var_BC
  loc_D4A527: ILdRf var_114
  loc_D4A52A: CR8Str
  loc_D4A52C: GtR4
  loc_D4A52D: FFree1Str var_114
  loc_D4A530: FFree1Ad var_E0
  loc_D4A533: BranchF loc_D4A569
  loc_D4A536: FLdRfVar var_114
  loc_D4A539: FLdPr Me
  loc_D4A53C: VCallAd Control_ID_DescRecaTxt
  loc_D4A53F: FStAdFunc var_E0
  loc_D4A542: FLdPr var_E0
  loc_D4A545:  = Me.Text
  loc_D4A54A: FLdPr Me
  loc_D4A54D: MemLdFPR8 global_328
  loc_D4A550: FLdFPR8 var_BC
  loc_D4A553: ILdRf var_114
  loc_D4A556: CR8Str
  loc_D4A558: SubR4
  loc_D4A559: SubR4
  loc_D4A55A: FLdPr Me
  loc_D4A55D: MemStFPR8 global_328
  loc_D4A560: FFree1Str var_114
  loc_D4A563: FFree1Ad var_E0
  loc_D4A566: Branch loc_D4A5BF
  loc_D4A569: FLdRfVar var_114
  loc_D4A56C: FLdPr Me
  loc_D4A56F: VCallAd Control_ID_DescRecaTxt
  loc_D4A572: FStAdFunc var_E0
  loc_D4A575: FLdPr var_E0
  loc_D4A578:  = Me.Text
  loc_D4A57D: FLdFPR8 var_BC
  loc_D4A580: ILdRf var_114
  loc_D4A583: CR8Str
  loc_D4A585: LtR8
  loc_D4A586: FFree1Str var_114
  loc_D4A589: FFree1Ad var_E0
  loc_D4A58C: BranchF loc_D4A5BF
  loc_D4A58F: FLdRfVar var_114
  loc_D4A592: FLdPr Me
  loc_D4A595: VCallAd Control_ID_DescRecaTxt
  loc_D4A598: FStAdFunc var_E0
  loc_D4A59B: FLdPr var_E0
  loc_D4A59E:  = Me.Text
  loc_D4A5A3: FLdPr Me
  loc_D4A5A6: MemLdFPR8 global_328
  loc_D4A5A9: ILdRf var_114
  loc_D4A5AC: CR8Str
  loc_D4A5AE: FLdFPR8 var_BC
  loc_D4A5B1: SubR4
  loc_D4A5B2: AddR8
  loc_D4A5B3: FLdPr Me
  loc_D4A5B6: MemStFPR8 global_328
  loc_D4A5B9: FFree1Str var_114
  loc_D4A5BC: FFree1Ad var_E0
  loc_D4A5BF: FLdRfVar var_114
  loc_D4A5C2: FLdPr Me
  loc_D4A5C5: VCallAd Control_ID_CuotApreTxt
  loc_D4A5C8: FStAdFunc var_E0
  loc_D4A5CB: FLdPr var_E0
  loc_D4A5CE:  = Me.Text
  loc_D4A5D3: ILdRf var_114
  loc_D4A5D6: CR8Str
  loc_D4A5D8: LitI2_Byte 0
  loc_D4A5DA: CR8I2
  loc_D4A5DB: GtR4
  loc_D4A5DC: FFree1Str var_114
  loc_D4A5DF: FFree1Ad var_E0
  loc_D4A5E2: BranchF loc_D4A6F2
  loc_D4A5E5: FLdRfVar var_114
  loc_D4A5E8: FLdPr Me
  loc_D4A5EB: VCallAd Control_ID_AnticipoTxt
  loc_D4A5EE: FStAdFunc var_E0
  loc_D4A5F1: FLdPr var_E0
  loc_D4A5F4:  = Me.Text
  loc_D4A5F9: ILdRf var_114
  loc_D4A5FC: CR8Str
  loc_D4A5FE: LitI2_Byte 0
  loc_D4A600: CR8I2
  loc_D4A601: GtR4
  loc_D4A602: FFree1Str var_114
  loc_D4A605: FFree1Ad var_E0
  loc_D4A608: BranchF loc_D4A650
  loc_D4A60B: FLdRfVar var_114
  loc_D4A60E: FLdPr Me
  loc_D4A611: VCallAd Control_ID_CuotApreTxt
  loc_D4A614: FStAdFunc var_E0
  loc_D4A617: FLdPr var_E0
  loc_D4A61A:  = Me.Text
  loc_D4A61F: FLdPr Me
  loc_D4A622: MemLdI2 global_96
  loc_D4A625: CR8I2
  loc_D4A626: ILdRf var_114
  loc_D4A629: CR8Str
  loc_D4A62B: LeR8
  loc_D4A62C: FFree1Str var_114
  loc_D4A62F: FFree1Ad var_E0
  loc_D4A632: BranchF loc_D4A644
  loc_D4A635: FLdPr Me
  loc_D4A638: MemLdFPR8 global_344
  loc_D4A63B: FLdPr Me
  loc_D4A63E: MemStFPR8 global_284
  loc_D4A641: Branch loc_D4A64D
  loc_D4A644: LitI2_Byte 0
  loc_D4A646: CR8I2
  loc_D4A647: FLdPr Me
  loc_D4A64A: MemStFPR8 global_284
  loc_D4A64D: Branch loc_D4A6E5
  loc_D4A650: FLdPr Me
  loc_D4A653: MemLdI2 global_96
  loc_D4A656: LitI2_Byte 1
  loc_D4A658: EqI2
  loc_D4A659: BranchF loc_D4A6A3
  loc_D4A65C: FLdPr Me
  loc_D4A65F: MemLdFPR8 global_336
  loc_D4A662: FLdPr Me
  loc_D4A665: MemStFPR8 global_284
  loc_D4A668: FLdRfVar var_114
  loc_D4A66B: FLdPr Me
  loc_D4A66E: VCallAd Control_ID_CuotApreTxt
  loc_D4A671: FStAdFunc var_E0
  loc_D4A674: FLdPr var_E0
  loc_D4A677:  = Me.Text
  loc_D4A67C: ILdRf var_114
  loc_D4A67F: CI2Str
  loc_D4A681: LitI2_Byte 1
  loc_D4A683: EqI2
  loc_D4A684: FFree1Str var_114
  loc_D4A687: FFree1Ad var_E0
  loc_D4A68A: BranchF loc_D4A6A0
  loc_D4A68D: FLdPr Me
  loc_D4A690: MemLdFPR8 global_284
  loc_D4A693: FLdPr Me
  loc_D4A696: MemLdFPR8 global_344
  loc_D4A699: AddR8
  loc_D4A69A: FLdPr Me
  loc_D4A69D: MemStFPR8 global_284
  loc_D4A6A0: Branch loc_D4A6E5
  loc_D4A6A3: FLdRfVar var_114
  loc_D4A6A6: FLdPr Me
  loc_D4A6A9: VCallAd Control_ID_CuotApreTxt
  loc_D4A6AC: FStAdFunc var_E0
  loc_D4A6AF: FLdPr var_E0
  loc_D4A6B2:  = Me.Text
  loc_D4A6B7: FLdPr Me
  loc_D4A6BA: MemLdI2 global_96
  loc_D4A6BD: CR8I2
  loc_D4A6BE: ILdRf var_114
  loc_D4A6C1: CR8Str
  loc_D4A6C3: LeR8
  loc_D4A6C4: FFree1Str var_114
  loc_D4A6C7: FFree1Ad var_E0
  loc_D4A6CA: BranchF loc_D4A6DC
  loc_D4A6CD: FLdPr Me
  loc_D4A6D0: MemLdFPR8 global_344
  loc_D4A6D3: FLdPr Me
  loc_D4A6D6: MemStFPR8 global_284
  loc_D4A6D9: Branch loc_D4A6E5
  loc_D4A6DC: LitI2_Byte 0
  loc_D4A6DE: CR8I2
  loc_D4A6DF: FLdPr Me
  loc_D4A6E2: MemStFPR8 global_284
  loc_D4A6E5: FLdFPR8 var_CC
  loc_D4A6E8: FLdPr Me
  loc_D4A6EB: MemLdFPR8 global_284
  loc_D4A6EE: AddR8
  loc_D4A6EF: FStFPR8 var_CC
  loc_D4A6F2: LitVarI2 var_100, 1
  loc_D4A6F7: PopAdLdVar
  loc_D4A6F8: FLdRfVar var_94
  loc_D4A6FB: VarIndexLdVar
  loc_D4A701: PopAd
  loc_D4A703: LitI4 2
  loc_D4A708: FLdFPR8 var_C4
  loc_D4A70B: CVarR8
  loc_D4A70F: FLdRfVar var_F0
  loc_D4A712: AddVar var_148
  loc_D4A716: FLdRfVar var_198
  loc_D4A719: ImpAdCallFPR4  = Round(, )
  loc_D4A71E: FLdRfVar var_198
  loc_D4A721: CR4Var
  loc_D4A722: FStFPR8 var_C4
  loc_D4A725: FFreeVar var_F0 = "": var_148 = ""
  loc_D4A72E: LitVarI2 var_100, 1
  loc_D4A733: PopAdLdVar
  loc_D4A734: FLdRfVar var_94
  loc_D4A737: VarIndexLdVar
  loc_D4A73D: PopAd
  loc_D4A73F: LitI4 2
  loc_D4A744: FLdPr Me
  loc_D4A747: MemLdFPR8 global_268
  loc_D4A74A: FLdPr Me
  loc_D4A74D: MemLdFPR8 global_276
  loc_D4A750: AddR8
  loc_D4A751: FLdPr Me
  loc_D4A754: MemLdFPR8 global_320
  loc_D4A757: SubR4
  loc_D4A758: FLdPr Me
  loc_D4A75B: MemLdFPR8 global_328
  loc_D4A75E: SubR4
  loc_D4A75F: FLdPr Me
  loc_D4A762: MemLdFPR8 global_284
  loc_D4A765: AddR8
  loc_D4A766: FLdRfVar var_F0
  loc_D4A769: FnCDblVar
  loc_D4A76B: AddR8
  loc_D4A76C: CVarR8
  loc_D4A770: FLdRfVar var_198
  loc_D4A773: ImpAdCallFPR4  = Round(, )
  loc_D4A778: FLdRfVar var_198
  loc_D4A77B: CR4Var
  loc_D4A77C: FLdPr Me
  loc_D4A77F: MemStFPR8 global_292
  loc_D4A782: FFreeVar var_F0 = "": var_148 = ""
  loc_D4A78B: FLdRfVar var_114
  loc_D4A78E: FLdPr Me
  loc_D4A791: VCallAd Control_ID_AnticipoTxt
  loc_D4A794: FStAdFunc var_E0
  loc_D4A797: FLdPr var_E0
  loc_D4A79A:  = Me.Text
  loc_D4A79F: ILdRf var_114
  loc_D4A7A2: CR8Str
  loc_D4A7A4: LitI2_Byte 0
  loc_D4A7A6: CR8I2
  loc_D4A7A7: NeR8
  loc_D4A7A8: FFree1Str var_114
  loc_D4A7AB: FFree1Ad var_E0
  loc_D4A7AE: BranchF loc_D4A851
  loc_D4A7B1: FLdRfVar var_D4
  loc_D4A7B4: CVarRef
  loc_D4A7B9: FLdRfVar var_F0
  loc_D4A7BC: ImpAdCallFPR4  = Year()
  loc_D4A7C1: FLdRfVar var_D4
  loc_D4A7C4: CVarRef
  loc_D4A7C9: FLdRfVar var_148
  loc_D4A7CC: ImpAdCallFPR4  = Month()
  loc_D4A7D1: LitI2_Byte &HF
  loc_D4A7D3: FLdRfVar var_148
  loc_D4A7D6: CI2Var
  loc_D4A7D7: FLdRfVar var_F0
  loc_D4A7DA: CI2Var
  loc_D4A7DB: FLdRfVar var_198
  loc_D4A7DE: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4A7E3: FLdRfVar var_1A8
  loc_D4A7E6: FLdRfVar var_14C
  loc_D4A7E9: LitVarStr var_124, "VecuTifa"
  loc_D4A7EE: PopAdLdVar
  loc_D4A7EF: FLdRfVar var_138
  loc_D4A7F2: FLdRfVar var_E0
  loc_D4A7F5: FLdPr Me
  loc_D4A7F8: MemLdRfVar from_stack_1.global_76
  loc_D4A7FB: NewIfNullPr clstipofapa
  loc_D4A7FE: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4A803: FLdPr var_E0
  loc_D4A806:  = Me.Fields
  loc_D4A80B: FLdPr var_138
  loc_D4A80E: from_stack_2 = Me.Item(from_stack_1)
  loc_D4A813: FLdPr var_14C
  loc_D4A816:  = Me.Value
  loc_D4A81B: FLdRfVar var_168
  loc_D4A81E: FLdRfVar var_1A8
  loc_D4A821: CStrVarTmp
  loc_D4A822: PopTmpLdAdStr
  loc_D4A826: FLdRfVar var_198
  loc_D4A829: FnCDateVar
  loc_D4A82B: PopTmpLdAdFPR8
  loc_D4A82F: Call Proc_187_54_BF8A3C()
  loc_D4A834: FLdFPR8 var_168
  loc_D4A837: FStFPR8 var_D4
  loc_D4A83A: FFree1Str var_114
  loc_D4A83D: FFreeAd var_E0 = "": var_138 = ""
  loc_D4A846: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4A851: LitVarI2 var_3CC, 1
  loc_D4A856: PopAdLdVar
  loc_D4A857: FLdRfVar var_94
  loc_D4A85A: VarIndexLdRfVarLock
  loc_D4A862: FStR4 var_154
  loc_D4A865: FLdPr Me
  loc_D4A868: MemLdI2 global_96
  loc_D4A86B: CVarI2 var_100
  loc_D4A86E: LitI4 9
  loc_D4A873: FLdRfVar var_F0
  loc_D4A876: ImpAdCallFPR4  = Chr()
  loc_D4A87B: FLdRfVar var_F0
  loc_D4A87E: ConcatVar var_148
  loc_D4A882: FLdFPR8 var_D4
  loc_D4A885: CVarDate var_110
  loc_D4A889: ConcatVar var_198
  loc_D4A88D: LitI4 9
  loc_D4A892: FLdRfVar var_1A8
  loc_D4A895: ImpAdCallFPR4  = Chr()
  loc_D4A89A: FLdRfVar var_1A8
  loc_D4A89D: ConcatVar var_1DC
  loc_D4A8A1: LitI4 1
  loc_D4A8A6: LitI4 1
  loc_D4A8AB: LitVarStr var_134, "0.00"
  loc_D4A8B0: FStVarCopyObj var_1EC
  loc_D4A8B3: FLdRfVar var_1EC
  loc_D4A8B6: FLdPr Me
  loc_D4A8B9: MemLdRfVar from_stack_1.global_268
  loc_D4A8BC: CVarRef
  loc_D4A8C1: FLdRfVar var_20C
  loc_D4A8C4: ImpAdCallFPR4  = Format(, )
  loc_D4A8C9: FLdRfVar var_20C
  loc_D4A8CC: ConcatVar var_21C
  loc_D4A8D0: LitI4 9
  loc_D4A8D5: FLdRfVar var_22C
  loc_D4A8D8: ImpAdCallFPR4  = Chr()
  loc_D4A8DD: FLdRfVar var_22C
  loc_D4A8E0: ConcatVar var_23C
  loc_D4A8E4: LitI4 1
  loc_D4A8E9: LitI4 1
  loc_D4A8EE: LitVarStr var_188, "0.00"
  loc_D4A8F3: FStVarCopyObj var_24C
  loc_D4A8F6: FLdRfVar var_24C
  loc_D4A8F9: FLdPr Me
  loc_D4A8FC: MemLdRfVar from_stack_1.global_276
  loc_D4A8FF: CVarRef
  loc_D4A904: FLdRfVar var_25C
  loc_D4A907: ImpAdCallFPR4  = Format(, )
  loc_D4A90C: FLdRfVar var_25C
  loc_D4A90F: ConcatVar var_26C
  loc_D4A913: LitI4 9
  loc_D4A918: FLdRfVar var_27C
  loc_D4A91B: ImpAdCallFPR4  = Chr()
  loc_D4A920: FLdRfVar var_27C
  loc_D4A923: ConcatVar var_28C
  loc_D4A927: LitI4 1
  loc_D4A92C: LitI4 1
  loc_D4A931: LitVarStr var_1C8, "0.00"
  loc_D4A936: FStVarCopyObj var_29C
  loc_D4A939: FLdRfVar var_29C
  loc_D4A93C: FLdPr Me
  loc_D4A93F: MemLdRfVar from_stack_1.global_320
  loc_D4A942: CVarRef
  loc_D4A947: FLdRfVar var_2AC
  loc_D4A94A: ImpAdCallFPR4  = Format(, )
  loc_D4A94F: FLdRfVar var_2AC
  loc_D4A952: ConcatVar var_2BC
  loc_D4A956: LitI4 9
  loc_D4A95B: FLdRfVar var_2CC
  loc_D4A95E: ImpAdCallFPR4  = Chr()
  loc_D4A963: FLdRfVar var_2CC
  loc_D4A966: ConcatVar var_2DC
  loc_D4A96A: LitI4 1
  loc_D4A96F: LitI4 1
  loc_D4A974: LitVarStr var_2FC, "0.00"
  loc_D4A979: FStVarCopyObj var_30C
  loc_D4A97C: FLdRfVar var_30C
  loc_D4A97F: FLdPr Me
  loc_D4A982: MemLdRfVar from_stack_1.global_328
  loc_D4A985: CVarRef
  loc_D4A98A: FLdRfVar var_31C
  loc_D4A98D: ImpAdCallFPR4  = Format(, )
  loc_D4A992: FLdRfVar var_31C
  loc_D4A995: ConcatVar var_32C
  loc_D4A999: LitI4 9
  loc_D4A99E: FLdRfVar var_33C
  loc_D4A9A1: ImpAdCallFPR4  = Chr()
  loc_D4A9A6: FLdRfVar var_33C
  loc_D4A9A9: ConcatVar var_34C
  loc_D4A9AD: LitI4 1
  loc_D4A9B2: LitI4 1
  loc_D4A9B7: LitVarStr var_36C, "0.00"
  loc_D4A9BC: FStVarCopyObj var_37C
  loc_D4A9BF: FLdRfVar var_37C
  loc_D4A9C2: FLdPr Me
  loc_D4A9C5: MemLdRfVar from_stack_1.global_284
  loc_D4A9C8: CVarRef
  loc_D4A9CD: FLdRfVar var_38C
  loc_D4A9D0: ImpAdCallFPR4  = Format(, )
  loc_D4A9D5: FLdRfVar var_38C
  loc_D4A9D8: ConcatVar var_39C
  loc_D4A9DC: LitI4 9
  loc_D4A9E1: FLdRfVar var_3AC
  loc_D4A9E4: ImpAdCallFPR4  = Chr()
  loc_D4A9E9: FLdRfVar var_3AC
  loc_D4A9EC: ConcatVar var_3BC
  loc_D4A9F0: LitI4 1
  loc_D4A9F5: LitI4 1
  loc_D4A9FA: LitVarStr var_44C, "0.00"
  loc_D4A9FF: FStVarCopyObj var_3FC
  loc_D4AA02: FLdRfVar var_3FC
  loc_D4AA05: ILdRf var_154
  loc_D4AA08: FLdRfVar var_40C
  loc_D4AA0B: ImpAdCallFPR4  = Format(, )
  loc_D4AA10: AryUnlock
  loc_D4AA13: FLdRfVar var_40C
  loc_D4AA16: ConcatVar var_41C
  loc_D4AA1A: LitI4 9
  loc_D4AA1F: FLdRfVar var_42C
  loc_D4AA22: ImpAdCallFPR4  = Chr()
  loc_D4AA27: FLdRfVar var_42C
  loc_D4AA2A: ConcatVar var_43C
  loc_D4AA2E: LitI4 1
  loc_D4AA33: LitI4 1
  loc_D4AA38: LitVarStr var_4CC, "0.00"
  loc_D4AA3D: FStVarCopyObj var_45C
  loc_D4AA40: FLdRfVar var_45C
  loc_D4AA43: FLdPr Me
  loc_D4AA46: MemLdRfVar from_stack_1.global_292
  loc_D4AA49: CVarRef
  loc_D4AA4E: FLdRfVar var_47C
  loc_D4AA51: ImpAdCallFPR4  = Format(, )
  loc_D4AA56: FLdRfVar var_47C
  loc_D4AA59: ConcatVar var_48C
  loc_D4AA5D: LitI4 9
  loc_D4AA62: FLdRfVar var_49C
  loc_D4AA65: ImpAdCallFPR4  = Chr()
  loc_D4AA6A: FLdRfVar var_49C
  loc_D4AA6D: ConcatVar var_4AC
  loc_D4AA71: LitVarI4
  loc_D4AA79: PopAdLdVar
  loc_D4AA7A: LitVarI4
  loc_D4AA82: PopAdLdVar
  loc_D4AA83: FLdPr Me
  loc_D4AA86: VCallAd Control_ID_ctacteFlex
  loc_D4AA89: FStAdFunc var_E0
  loc_D4AA8C: FLdPr var_E0
  loc_D4AA8F: LateIdCallLdVar
  loc_D4AA99: CStrVarTmp
  loc_D4AA9A: CVarStr var_50C
  loc_D4AA9D: ConcatVar var_51C
  loc_D4AAA1: LitI4 9
  loc_D4AAA6: FLdRfVar var_52C
  loc_D4AAA9: ImpAdCallFPR4  = Chr()
  loc_D4AAAE: FLdRfVar var_52C
  loc_D4AAB1: ConcatVar var_53C
  loc_D4AAB5: LitVarI4
  loc_D4AABD: PopAdLdVar
  loc_D4AABE: LitVarI4
  loc_D4AAC6: PopAdLdVar
  loc_D4AAC7: FLdPr Me
  loc_D4AACA: VCallAd Control_ID_ctacteFlex
  loc_D4AACD: FStAdFunc var_138
  loc_D4AAD0: FLdPr var_138
  loc_D4AAD3: LateIdCallLdVar
  loc_D4AADD: CStrVarTmp
  loc_D4AADE: CVarStr var_59C
  loc_D4AAE1: ConcatVar var_5AC
  loc_D4AAE5: CStrVarTmp
  loc_D4AAE6: FStStrNoPop var_114
  loc_D4AAE9: FLdPr Me
  loc_D4AAEC: MemStStrCopy
  loc_D4AAF0: FFree1Str var_114
  loc_D4AAF3: FFreeAd var_E0 = ""
  loc_D4AAFA: FFreeVar var_3FC = "": var_3BC = "": var_40C = "": var_41C = "": var_42C = "": var_45C = "": var_43C = "": var_47C = "": var_48C = "": var_49C = "": var_4BC = "": var_4AC = "": var_50C = "": var_51C = "": var_52C = "": var_54C = "": var_53C = "": var_59C = "": var_5AC = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D4AB5F: FLdPr Me
  loc_D4AB62: MemLdRfVar from_stack_1.global_56
  loc_D4AB65: CDargRef
  loc_D4AB69: FLdPr Me
  loc_D4AB6C: VCallAd Control_ID_CuotasDetalleFlex
  loc_D4AB6F: FStAdFunc var_E0
  loc_D4AB72: FLdPr var_E0
  loc_D4AB75: LateIdCall
  loc_D4AB7D: FFree1Ad var_E0
  loc_D4AB80: FLdRfVar var_114
  loc_D4AB83: FLdPr Me
  loc_D4AB86: VCallAd Control_ID_AnticipoTxt
  loc_D4AB89: FStAdFunc var_E0
  loc_D4AB8C: FLdPr var_E0
  loc_D4AB8F:  = Me.Text
  loc_D4AB94: ILdRf var_114
  loc_D4AB97: CR8Str
  loc_D4AB99: LitI2_Byte 0
  loc_D4AB9B: CR8I2
  loc_D4AB9C: EqR4
  loc_D4AB9D: FFree1Str var_114
  loc_D4ABA0: FFree1Ad var_E0
  loc_D4ABA3: BranchF loc_D4AC5A
  loc_D4ABA6: FLdRfVar var_D4
  loc_D4ABA9: CVarRef
  loc_D4ABAE: FLdRfVar var_F0
  loc_D4ABB1: ImpAdCallFPR4  = Year()
  loc_D4ABB6: FLdRfVar var_D4
  loc_D4ABB9: CVarRef
  loc_D4ABBE: FLdRfVar var_148
  loc_D4ABC1: ImpAdCallFPR4  = Month()
  loc_D4ABC6: FLdRfVar var_D4
  loc_D4ABC9: CVarRef
  loc_D4ABCE: FLdRfVar var_198
  loc_D4ABD1: ImpAdCallFPR4  = Day()
  loc_D4ABD6: FLdRfVar var_198
  loc_D4ABD9: CI2Var
  loc_D4ABDA: FLdRfVar var_148
  loc_D4ABDD: CI2Var
  loc_D4ABDE: FLdRfVar var_F0
  loc_D4ABE1: CI2Var
  loc_D4ABE2: FLdRfVar var_1A8
  loc_D4ABE5: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4ABEA: FLdRfVar var_1DC
  loc_D4ABED: FLdRfVar var_14C
  loc_D4ABF0: LitVarStr var_134, "VecuTifa"
  loc_D4ABF5: PopAdLdVar
  loc_D4ABF6: FLdRfVar var_138
  loc_D4ABF9: FLdRfVar var_E0
  loc_D4ABFC: FLdPr Me
  loc_D4ABFF: MemLdRfVar from_stack_1.global_76
  loc_D4AC02: NewIfNullPr clstipofapa
  loc_D4AC05: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4AC0A: FLdPr var_E0
  loc_D4AC0D:  = Me.Fields
  loc_D4AC12: FLdPr var_138
  loc_D4AC15: from_stack_2 = Me.Item(from_stack_1)
  loc_D4AC1A: FLdPr var_14C
  loc_D4AC1D:  = Me.Value
  loc_D4AC22: FLdRfVar var_168
  loc_D4AC25: FLdRfVar var_1DC
  loc_D4AC28: CStrVarTmp
  loc_D4AC29: PopTmpLdAdStr
  loc_D4AC2D: FLdRfVar var_1A8
  loc_D4AC30: FnCDateVar
  loc_D4AC32: PopTmpLdAdFPR8
  loc_D4AC36: Call Proc_187_54_BF8A3C()
  loc_D4AC3B: FLdFPR8 var_168
  loc_D4AC3E: FStFPR8 var_D4
  loc_D4AC41: FFree1Str var_114
  loc_D4AC44: FFreeAd var_E0 = "": var_138 = ""
  loc_D4AC4D: FFreeVar var_F0 = "": var_148 = "": var_198 = "": var_1A8 = ""
  loc_D4AC5A: FLdPr Me
  loc_D4AC5D: MemLdRfVar from_stack_1.global_96
  loc_D4AC60: NextI2 var_5C0, loc_D4A0F3
  loc_D4AC65: LitI4 1
  loc_D4AC6A: LitI4 1
  loc_D4AC6F: LitVarStr var_110, "0.00"
  loc_D4AC74: FStVarCopyObj var_F0
  loc_D4AC77: FLdRfVar var_F0
  loc_D4AC7A: FLdRfVar var_CC
  loc_D4AC7D: CVarRef
  loc_D4AC82: FLdRfVar var_148
  loc_D4AC85: ImpAdCallFPR4  = Format(, )
  loc_D4AC8A: FLdRfVar var_148
  loc_D4AC8D: CStrVarVal var_114
  loc_D4AC91: FLdPr Me
  loc_D4AC94: VCallAd Control_ID_ApremioTxt
  loc_D4AC97: FStAdFunc var_E0
  loc_D4AC9A: FLdPr var_E0
  loc_D4AC9D: Me.Text = from_stack_1
  loc_D4ACA2: FFree1Str var_114
  loc_D4ACA5: FFree1Ad var_E0
  loc_D4ACA8: FFreeVar var_F0 = ""
  loc_D4ACAF: LitI4 1
  loc_D4ACB4: LitI4 1
  loc_D4ACB9: LitVarStr var_110, "0.00"
  loc_D4ACBE: FStVarCopyObj var_F0
  loc_D4ACC1: FLdRfVar var_F0
  loc_D4ACC4: FLdRfVar var_C4
  loc_D4ACC7: CVarRef
  loc_D4ACCC: FLdRfVar var_148
  loc_D4ACCF: ImpAdCallFPR4  = Format(, )
  loc_D4ACD4: FLdRfVar var_148
  loc_D4ACD7: CStrVarVal var_114
  loc_D4ACDB: FLdPr Me
  loc_D4ACDE: VCallAd Control_ID_InteresTxt
  loc_D4ACE1: FStAdFunc var_E0
  loc_D4ACE4: FLdPr var_E0
  loc_D4ACE7: Me.Text = from_stack_1
  loc_D4ACEC: FFree1Str var_114
  loc_D4ACEF: FFree1Ad var_E0
  loc_D4ACF2: FFreeVar var_F0 = ""
  loc_D4ACF9: FLdRfVar var_114
  loc_D4ACFC: FLdPr Me
  loc_D4ACFF: VCallAd Control_ID_DerechoTxt
  loc_D4AD02: FStAdFunc var_E0
  loc_D4AD05: FLdPr var_E0
  loc_D4AD08:  = Me.Text
  loc_D4AD0D: FLdRfVar var_150
  loc_D4AD10: FLdPr Me
  loc_D4AD13: VCallAd Control_ID_RecargoTxt
  loc_D4AD16: FStAdFunc var_138
  loc_D4AD19: FLdPr var_138
  loc_D4AD1C:  = Me.Text
  loc_D4AD21: FLdRfVar var_1F0
  loc_D4AD24: FLdPr Me
  loc_D4AD27: VCallAd Control_ID_DescCapiTxt
  loc_D4AD2A: FStAdFunc var_14C
  loc_D4AD2D: FLdPr var_14C
  loc_D4AD30:  = Me.Text
  loc_D4AD35: FLdRfVar var_1F4
  loc_D4AD38: FLdPr Me
  loc_D4AD3B: VCallAd Control_ID_DescRecaTxt
  loc_D4AD3E: FStAdFunc var_1CC
  loc_D4AD41: FLdPr var_1CC
  loc_D4AD44:  = Me.Text
  loc_D4AD49: FLdRfVar var_1FC
  loc_D4AD4C: FLdPr Me
  loc_D4AD4F: VCallAd Control_ID_ApremioTxt
  loc_D4AD52: FStAdFunc var_1F8
  loc_D4AD55: FLdPr var_1F8
  loc_D4AD58:  = Me.Text
  loc_D4AD5D: FLdRfVar var_5E8
  loc_D4AD60: FLdPr Me
  loc_D4AD63: VCallAd Control_ID_InteresTxt
  loc_D4AD66: FStAdFunc var_5C4
  loc_D4AD69: FLdPr var_5C4
  loc_D4AD6C:  = Me.Text
  loc_D4AD71: LitI4 1
  loc_D4AD76: LitI4 1
  loc_D4AD7B: LitVarStr var_110, "0.00"
  loc_D4AD80: FStVarCopyObj var_148
  loc_D4AD83: FLdRfVar var_148
  loc_D4AD86: ILdRf var_114
  loc_D4AD89: CR8Str
  loc_D4AD8B: ILdRf var_150
  loc_D4AD8E: CR8Str
  loc_D4AD90: AddR8
  loc_D4AD91: ILdRf var_1F0
  loc_D4AD94: CR8Str
  loc_D4AD96: SubR4
  loc_D4AD97: ILdRf var_1F4
  loc_D4AD9A: CR8Str
  loc_D4AD9C: SubR4
  loc_D4AD9D: ILdRf var_1FC
  loc_D4ADA0: CR8Str
  loc_D4ADA2: AddR8
  loc_D4ADA3: ILdRf var_5E8
  loc_D4ADA6: CR8Str
  loc_D4ADA8: AddR8
  loc_D4ADA9: CVarR8
  loc_D4ADAD: FLdRfVar var_198
  loc_D4ADB0: ImpAdCallFPR4  = Format(, )
  loc_D4ADB5: FLdRfVar var_198
  loc_D4ADB8: CStrVarVal var_5EC
  loc_D4ADBC: FLdPr Me
  loc_D4ADBF: VCallAd Control_ID_TotalTxt
  loc_D4ADC2: FStAdFunc var_5C8
  loc_D4ADC5: FLdPr var_5C8
  loc_D4ADC8: Me.Text = from_stack_1
  loc_D4ADCD: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = "": var_1FC = "": var_5E8 = ""
  loc_D4ADDE: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = "": var_1F8 = "": var_5C4 = ""
  loc_D4ADEF: FFreeVar var_F0 = "": var_148 = ""
  loc_D4ADF8: LitI2_Byte &HFF
  loc_D4ADFA: FLdPrThis
  loc_D4ADFB: VCallAd Control_ID_ImprimirCmd
  loc_D4ADFE: FStAdFunc var_E0
  loc_D4AE01: FLdPr var_E0
  loc_D4AE04: Me.Enabled = from_stack_1b
  loc_D4AE09: FFree1Ad var_E0
  loc_D4AE0C: FLdRfVar var_F0
  loc_D4AE0F: FLdRfVar var_14C
  loc_D4AE12: LitVarStr var_100, "MecaTifa"
  loc_D4AE17: PopAdLdVar
  loc_D4AE18: FLdRfVar var_138
  loc_D4AE1B: FLdRfVar var_E0
  loc_D4AE1E: FLdPr Me
  loc_D4AE21: MemLdRfVar from_stack_1.global_76
  loc_D4AE24: NewIfNullPr clstipofapa
  loc_D4AE27: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4AE2C: FLdPr var_E0
  loc_D4AE2F:  = Me.Fields
  loc_D4AE34: FLdPr var_138
  loc_D4AE37: from_stack_2 = Me.Item(from_stack_1)
  loc_D4AE3C: FLdPr var_14C
  loc_D4AE3F:  = Me.Value
  loc_D4AE44: FLdRfVar var_F0
  loc_D4AE47: LitVarStr var_110, "Frances"
  loc_D4AE4C: HardType
  loc_D4AE4D: EqVarBool
  loc_D4AE4F: FFreeAd var_E0 = "": var_138 = ""
  loc_D4AE58: FFree1Var var_F0 = ""
  loc_D4AE5B: BranchF loc_D4C557
  loc_D4AE5E: LitI2_Byte 0
  loc_D4AE60: CR8I2
  loc_D4AE61: FStFPR8 var_A4
  loc_D4AE64: LitI2_Byte 0
  loc_D4AE66: CR8I2
  loc_D4AE67: FStFPR8 var_B4
  loc_D4AE6A: FLdRfVar var_114
  loc_D4AE6D: FLdPr Me
  loc_D4AE70: VCallAd Control_ID_AnticipoTxt
  loc_D4AE73: FStAdFunc var_E0
  loc_D4AE76: FLdPr var_E0
  loc_D4AE79:  = Me.Text
  loc_D4AE7E: ILdRf var_114
  loc_D4AE81: CR8Str
  loc_D4AE83: LitI2_Byte 0
  loc_D4AE85: CR8I2
  loc_D4AE86: NeR8
  loc_D4AE87: FFree1Str var_114
  loc_D4AE8A: FFree1Ad var_E0
  loc_D4AE8D: BranchF loc_D4B52B
  loc_D4AE90: FLdRfVar var_114
  loc_D4AE93: FLdPr Me
  loc_D4AE96: VCallAd Control_ID_AnticipoTxt
  loc_D4AE99: FStAdFunc var_E0
  loc_D4AE9C: FLdPr var_E0
  loc_D4AE9F:  = Me.Text
  loc_D4AEA4: FLdRfVar var_150
  loc_D4AEA7: FLdPr Me
  loc_D4AEAA: VCallAd Control_ID_DerechoTxt
  loc_D4AEAD: FStAdFunc var_138
  loc_D4AEB0: FLdPr var_138
  loc_D4AEB3:  = Me.Text
  loc_D4AEB8: FLdRfVar var_1F0
  loc_D4AEBB: FLdPr Me
  loc_D4AEBE: VCallAd Control_ID_RecargoTxt
  loc_D4AEC1: FStAdFunc var_14C
  loc_D4AEC4: FLdPr var_14C
  loc_D4AEC7:  = Me.Text
  loc_D4AECC: FLdRfVar var_1F4
  loc_D4AECF: FLdPr Me
  loc_D4AED2: VCallAd Control_ID_DescCapiTxt
  loc_D4AED5: FStAdFunc var_1CC
  loc_D4AED8: FLdPr var_1CC
  loc_D4AEDB:  = Me.Text
  loc_D4AEE0: FLdRfVar var_1FC
  loc_D4AEE3: FLdPr Me
  loc_D4AEE6: VCallAd Control_ID_DescRecaTxt
  loc_D4AEE9: FStAdFunc var_1F8
  loc_D4AEEC: FLdPr var_1F8
  loc_D4AEEF:  = Me.Text
  loc_D4AEF4: LitI4 2
  loc_D4AEF9: ILdRf var_114
  loc_D4AEFC: CR8Str
  loc_D4AEFE: LitI2_Byte &H64
  loc_D4AF00: CR8I2
  loc_D4AF01: MulR8
  loc_D4AF02: ILdRf var_150
  loc_D4AF05: CR8Str
  loc_D4AF07: ILdRf var_1F0
  loc_D4AF0A: CR8Str
  loc_D4AF0C: AddR8
  loc_D4AF0D: ILdRf var_1F4
  loc_D4AF10: CR8Str
  loc_D4AF12: SubR4
  loc_D4AF13: ILdRf var_1FC
  loc_D4AF16: CR8Str
  loc_D4AF18: SubR4
  loc_D4AF19: DivR8
  loc_D4AF1A: CVarR8
  loc_D4AF1E: FLdRfVar var_148
  loc_D4AF21: ImpAdCallFPR4  = Round(, )
  loc_D4AF26: FLdRfVar var_148
  loc_D4AF29: CR4Var
  loc_D4AF2A: FLdPr Me
  loc_D4AF2D: MemStFPR8 global_156
  loc_D4AF30: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = ""
  loc_D4AF3D: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = ""
  loc_D4AF4A: FFreeVar var_F0 = ""
  loc_D4AF51: FLdRfVar var_114
  loc_D4AF54: FLdPr Me
  loc_D4AF57: VCallAd Control_ID_DerechoTxt
  loc_D4AF5A: FStAdFunc var_E0
  loc_D4AF5D: FLdPr var_E0
  loc_D4AF60:  = Me.Text
  loc_D4AF65: LitI4 2
  loc_D4AF6A: ILdRf var_114
  loc_D4AF6D: CR8Str
  loc_D4AF6F: FLdPr Me
  loc_D4AF72: MemLdFPR8 global_156
  loc_D4AF75: MulR8
  loc_D4AF76: LitI2_Byte &H64
  loc_D4AF78: CR8I2
  loc_D4AF79: DivR8
  loc_D4AF7A: CVarR8
  loc_D4AF7E: FLdRfVar var_148
  loc_D4AF81: ImpAdCallFPR4  = Round(, )
  loc_D4AF86: FLdRfVar var_148
  loc_D4AF89: CR4Var
  loc_D4AF8A: FLdPr Me
  loc_D4AF8D: MemStFPR8 global_196
  loc_D4AF90: FFree1Str var_114
  loc_D4AF93: FFree1Ad var_E0
  loc_D4AF96: FFreeVar var_F0 = ""
  loc_D4AF9D: FLdRfVar var_114
  loc_D4AFA0: FLdPr Me
  loc_D4AFA3: VCallAd Control_ID_RecargoTxt
  loc_D4AFA6: FStAdFunc var_E0
  loc_D4AFA9: FLdPr var_E0
  loc_D4AFAC:  = Me.Text
  loc_D4AFB1: LitI4 2
  loc_D4AFB6: ILdRf var_114
  loc_D4AFB9: CR8Str
  loc_D4AFBB: FLdPr Me
  loc_D4AFBE: MemLdFPR8 global_156
  loc_D4AFC1: MulR8
  loc_D4AFC2: LitI2_Byte &H64
  loc_D4AFC4: CR8I2
  loc_D4AFC5: DivR8
  loc_D4AFC6: CVarR8
  loc_D4AFCA: FLdRfVar var_148
  loc_D4AFCD: ImpAdCallFPR4  = Round(, )
  loc_D4AFD2: FLdRfVar var_148
  loc_D4AFD5: CR4Var
  loc_D4AFD6: FLdPr Me
  loc_D4AFD9: MemStFPR8 global_204
  loc_D4AFDC: FFree1Str var_114
  loc_D4AFDF: FFree1Ad var_E0
  loc_D4AFE2: FFreeVar var_F0 = ""
  loc_D4AFE9: FLdRfVar var_114
  loc_D4AFEC: FLdPr Me
  loc_D4AFEF: VCallAd Control_ID_DescCapiTxt
  loc_D4AFF2: FStAdFunc var_E0
  loc_D4AFF5: FLdPr var_E0
  loc_D4AFF8:  = Me.Text
  loc_D4AFFD: LitI4 2
  loc_D4B002: ILdRf var_114
  loc_D4B005: CR8Str
  loc_D4B007: FLdPr Me
  loc_D4B00A: MemLdFPR8 global_156
  loc_D4B00D: MulR8
  loc_D4B00E: LitI2_Byte &H64
  loc_D4B010: CR8I2
  loc_D4B011: DivR8
  loc_D4B012: CVarR8
  loc_D4B016: FLdRfVar var_148
  loc_D4B019: ImpAdCallFPR4  = Round(, )
  loc_D4B01E: FLdRfVar var_148
  loc_D4B021: CR4Var
  loc_D4B022: FLdPr Me
  loc_D4B025: MemStFPR8 global_212
  loc_D4B028: FFree1Str var_114
  loc_D4B02B: FFree1Ad var_E0
  loc_D4B02E: FFreeVar var_F0 = ""
  loc_D4B035: FLdRfVar var_114
  loc_D4B038: FLdPr Me
  loc_D4B03B: VCallAd Control_ID_DescRecaTxt
  loc_D4B03E: FStAdFunc var_E0
  loc_D4B041: FLdPr var_E0
  loc_D4B044:  = Me.Text
  loc_D4B049: LitI4 2
  loc_D4B04E: ILdRf var_114
  loc_D4B051: CR8Str
  loc_D4B053: FLdPr Me
  loc_D4B056: MemLdFPR8 global_156
  loc_D4B059: MulR8
  loc_D4B05A: LitI2_Byte &H64
  loc_D4B05C: CR8I2
  loc_D4B05D: DivR8
  loc_D4B05E: CVarR8
  loc_D4B062: FLdRfVar var_148
  loc_D4B065: ImpAdCallFPR4  = Round(, )
  loc_D4B06A: FLdRfVar var_148
  loc_D4B06D: CR4Var
  loc_D4B06E: FLdPr Me
  loc_D4B071: MemStFPR8 global_220
  loc_D4B074: FFree1Str var_114
  loc_D4B077: FFree1Ad var_E0
  loc_D4B07A: FFreeVar var_F0 = ""
  loc_D4B081: FLdRfVar var_114
  loc_D4B084: FLdPr Me
  loc_D4B087: VCallAd Control_ID_ApremioTxt
  loc_D4B08A: FStAdFunc var_E0
  loc_D4B08D: FLdPr var_E0
  loc_D4B090:  = Me.Text
  loc_D4B095: ILdRf var_114
  loc_D4B098: CR8Str
  loc_D4B09A: LitI2_Byte 0
  loc_D4B09C: CR8I2
  loc_D4B09D: GtR4
  loc_D4B09E: FFree1Str var_114
  loc_D4B0A1: FFree1Ad var_E0
  loc_D4B0A4: BranchF loc_D4B0B6
  loc_D4B0A7: FLdPr Me
  loc_D4B0AA: MemLdFPR8 global_336
  loc_D4B0AD: FLdPr Me
  loc_D4B0B0: MemStFPR8 global_284
  loc_D4B0B3: Branch loc_D4B0BF
  loc_D4B0B6: LitI2_Byte 0
  loc_D4B0B8: CR8I2
  loc_D4B0B9: FLdPr Me
  loc_D4B0BC: MemStFPR8 global_284
  loc_D4B0BF: FLdFPR8 var_CC
  loc_D4B0C2: FLdPr Me
  loc_D4B0C5: MemLdFPR8 global_284
  loc_D4B0C8: AddR8
  loc_D4B0C9: FStFPR8 var_CC
  loc_D4B0CC: FLdRfVar var_114
  loc_D4B0CF: FLdPr Me
  loc_D4B0D2: VCallAd Control_ID_AnticipoTxt
  loc_D4B0D5: FStAdFunc var_E0
  loc_D4B0D8: FLdPr var_E0
  loc_D4B0DB:  = Me.Text
  loc_D4B0E0: FLdPr Me
  loc_D4B0E3: MemLdFPR8 global_196
  loc_D4B0E6: FLdPr Me
  loc_D4B0E9: MemLdFPR8 global_204
  loc_D4B0EC: AddR8
  loc_D4B0ED: FLdPr Me
  loc_D4B0F0: MemLdFPR8 global_212
  loc_D4B0F3: SubR4
  loc_D4B0F4: FLdPr Me
  loc_D4B0F7: MemLdFPR8 global_220
  loc_D4B0FA: SubR4
  loc_D4B0FB: CR8R8
  loc_D4B0FC: ILdRf var_114
  loc_D4B0FF: CR8Str
  loc_D4B101: LtR8
  loc_D4B102: FFree1Str var_114
  loc_D4B105: FFree1Ad var_E0
  loc_D4B108: BranchF loc_D4B156
  loc_D4B10B: FLdRfVar var_114
  loc_D4B10E: FLdPr Me
  loc_D4B111: VCallAd Control_ID_AnticipoTxt
  loc_D4B114: FStAdFunc var_E0
  loc_D4B117: FLdPr var_E0
  loc_D4B11A:  = Me.Text
  loc_D4B11F: FLdPr Me
  loc_D4B122: MemLdFPR8 global_196
  loc_D4B125: ILdRf var_114
  loc_D4B128: CR8Str
  loc_D4B12A: AddR8
  loc_D4B12B: FLdPr Me
  loc_D4B12E: MemLdFPR8 global_196
  loc_D4B131: FLdPr Me
  loc_D4B134: MemLdFPR8 global_204
  loc_D4B137: AddR8
  loc_D4B138: FLdPr Me
  loc_D4B13B: MemLdFPR8 global_212
  loc_D4B13E: SubR4
  loc_D4B13F: FLdPr Me
  loc_D4B142: MemLdFPR8 global_220
  loc_D4B145: SubR4
  loc_D4B146: SubR4
  loc_D4B147: FLdPr Me
  loc_D4B14A: MemStFPR8 global_196
  loc_D4B14D: FFree1Str var_114
  loc_D4B150: FFree1Ad var_E0
  loc_D4B153: Branch loc_D4B1DD
  loc_D4B156: FLdRfVar var_114
  loc_D4B159: FLdPr Me
  loc_D4B15C: VCallAd Control_ID_AnticipoTxt
  loc_D4B15F: FStAdFunc var_E0
  loc_D4B162: FLdPr var_E0
  loc_D4B165:  = Me.Text
  loc_D4B16A: FLdPr Me
  loc_D4B16D: MemLdFPR8 global_196
  loc_D4B170: FLdPr Me
  loc_D4B173: MemLdFPR8 global_204
  loc_D4B176: AddR8
  loc_D4B177: FLdPr Me
  loc_D4B17A: MemLdFPR8 global_212
  loc_D4B17D: SubR4
  loc_D4B17E: FLdPr Me
  loc_D4B181: MemLdFPR8 global_220
  loc_D4B184: SubR4
  loc_D4B185: CR8R8
  loc_D4B186: ILdRf var_114
  loc_D4B189: CR8Str
  loc_D4B18B: GtR4
  loc_D4B18C: FFree1Str var_114
  loc_D4B18F: FFree1Ad var_E0
  loc_D4B192: BranchF loc_D4B1DD
  loc_D4B195: FLdRfVar var_114
  loc_D4B198: FLdPr Me
  loc_D4B19B: VCallAd Control_ID_AnticipoTxt
  loc_D4B19E: FStAdFunc var_E0
  loc_D4B1A1: FLdPr var_E0
  loc_D4B1A4:  = Me.Text
  loc_D4B1A9: FLdPr Me
  loc_D4B1AC: MemLdFPR8 global_196
  loc_D4B1AF: FLdPr Me
  loc_D4B1B2: MemLdFPR8 global_196
  loc_D4B1B5: FLdPr Me
  loc_D4B1B8: MemLdFPR8 global_204
  loc_D4B1BB: AddR8
  loc_D4B1BC: FLdPr Me
  loc_D4B1BF: MemLdFPR8 global_212
  loc_D4B1C2: SubR4
  loc_D4B1C3: FLdPr Me
  loc_D4B1C6: MemLdFPR8 global_220
  loc_D4B1C9: SubR4
  loc_D4B1CA: ILdRf var_114
  loc_D4B1CD: CR8Str
  loc_D4B1CF: SubR4
  loc_D4B1D0: SubR4
  loc_D4B1D1: FLdPr Me
  loc_D4B1D4: MemStFPR8 global_196
  loc_D4B1D7: FFree1Str var_114
  loc_D4B1DA: FFree1Ad var_E0
  loc_D4B1DD: FLdFPR8 var_AC
  loc_D4B1E0: FLdPr Me
  loc_D4B1E3: MemLdFPR8 global_212
  loc_D4B1E6: AddR8
  loc_D4B1E7: FStFPR8 var_AC
  loc_D4B1EA: FLdFPR8 var_BC
  loc_D4B1ED: FLdPr Me
  loc_D4B1F0: MemLdFPR8 global_220
  loc_D4B1F3: AddR8
  loc_D4B1F4: FStFPR8 var_BC
  loc_D4B1F7: LitVarStr var_100, "0"
  loc_D4B1FC: LitI4 9
  loc_D4B201: FLdRfVar var_F0
  loc_D4B204: ImpAdCallFPR4  = Chr()
  loc_D4B209: FLdRfVar var_F0
  loc_D4B20C: ConcatVar var_148
  loc_D4B210: FLdFPR8 var_D4
  loc_D4B213: CVarDate var_110
  loc_D4B217: ConcatVar var_198
  loc_D4B21B: LitI4 9
  loc_D4B220: FLdRfVar var_1A8
  loc_D4B223: ImpAdCallFPR4  = Chr()
  loc_D4B228: FLdRfVar var_1A8
  loc_D4B22B: ConcatVar var_1DC
  loc_D4B22F: LitI4 1
  loc_D4B234: LitI4 1
  loc_D4B239: LitVarStr var_134, "0.00"
  loc_D4B23E: FStVarCopyObj var_1EC
  loc_D4B241: FLdRfVar var_1EC
  loc_D4B244: FLdPr Me
  loc_D4B247: MemLdRfVar from_stack_1.global_196
  loc_D4B24A: CVarRef
  loc_D4B24F: FLdRfVar var_20C
  loc_D4B252: ImpAdCallFPR4  = Format(, )
  loc_D4B257: FLdRfVar var_20C
  loc_D4B25A: ConcatVar var_21C
  loc_D4B25E: LitI4 9
  loc_D4B263: FLdRfVar var_22C
  loc_D4B266: ImpAdCallFPR4  = Chr()
  loc_D4B26B: FLdRfVar var_22C
  loc_D4B26E: ConcatVar var_23C
  loc_D4B272: LitI4 1
  loc_D4B277: LitI4 1
  loc_D4B27C: LitVarStr var_188, "0.00"
  loc_D4B281: FStVarCopyObj var_24C
  loc_D4B284: FLdRfVar var_24C
  loc_D4B287: FLdPr Me
  loc_D4B28A: MemLdRfVar from_stack_1.global_204
  loc_D4B28D: CVarRef
  loc_D4B292: FLdRfVar var_25C
  loc_D4B295: ImpAdCallFPR4  = Format(, )
  loc_D4B29A: FLdRfVar var_25C
  loc_D4B29D: ConcatVar var_26C
  loc_D4B2A1: LitI4 9
  loc_D4B2A6: FLdRfVar var_27C
  loc_D4B2A9: ImpAdCallFPR4  = Chr()
  loc_D4B2AE: FLdRfVar var_27C
  loc_D4B2B1: ConcatVar var_28C
  loc_D4B2B5: LitI4 1
  loc_D4B2BA: LitI4 1
  loc_D4B2BF: LitVarStr var_1C8, "0.00"
  loc_D4B2C4: FStVarCopyObj var_29C
  loc_D4B2C7: FLdRfVar var_29C
  loc_D4B2CA: FLdPr Me
  loc_D4B2CD: MemLdRfVar from_stack_1.global_212
  loc_D4B2D0: CVarRef
  loc_D4B2D5: FLdRfVar var_2AC
  loc_D4B2D8: ImpAdCallFPR4  = Format(, )
  loc_D4B2DD: FLdRfVar var_2AC
  loc_D4B2E0: ConcatVar var_2BC
  loc_D4B2E4: LitI4 9
  loc_D4B2E9: FLdRfVar var_2CC
  loc_D4B2EC: ImpAdCallFPR4  = Chr()
  loc_D4B2F1: FLdRfVar var_2CC
  loc_D4B2F4: ConcatVar var_2DC
  loc_D4B2F8: LitI4 1
  loc_D4B2FD: LitI4 1
  loc_D4B302: LitVarStr var_2FC, "0.00"
  loc_D4B307: FStVarCopyObj var_30C
  loc_D4B30A: FLdRfVar var_30C
  loc_D4B30D: FLdPr Me
  loc_D4B310: MemLdRfVar from_stack_1.global_220
  loc_D4B313: CVarRef
  loc_D4B318: FLdRfVar var_31C
  loc_D4B31B: ImpAdCallFPR4  = Format(, )
  loc_D4B320: FLdRfVar var_31C
  loc_D4B323: ConcatVar var_32C
  loc_D4B327: LitI4 9
  loc_D4B32C: FLdRfVar var_33C
  loc_D4B32F: ImpAdCallFPR4  = Chr()
  loc_D4B334: FLdRfVar var_33C
  loc_D4B337: ConcatVar var_34C
  loc_D4B33B: LitI4 1
  loc_D4B340: LitI4 1
  loc_D4B345: LitVarStr var_36C, "0.00"
  loc_D4B34A: FStVarCopyObj var_37C
  loc_D4B34D: FLdRfVar var_37C
  loc_D4B350: FLdPr Me
  loc_D4B353: MemLdRfVar from_stack_1.global_284
  loc_D4B356: CVarRef
  loc_D4B35B: FLdRfVar var_38C
  loc_D4B35E: ImpAdCallFPR4  = Format(, )
  loc_D4B363: FLdRfVar var_38C
  loc_D4B366: ConcatVar var_39C
  loc_D4B36A: LitI4 9
  loc_D4B36F: FLdRfVar var_3AC
  loc_D4B372: ImpAdCallFPR4  = Chr()
  loc_D4B377: FLdRfVar var_3AC
  loc_D4B37A: ConcatVar var_3BC
  loc_D4B37E: LitI4 1
  loc_D4B383: LitI4 1
  loc_D4B388: LitVarStr var_3EC, "0.00"
  loc_D4B38D: FStVarCopyObj var_3FC
  loc_D4B390: FLdRfVar var_3FC
  loc_D4B393: LitVarI2 var_3DC, 0
  loc_D4B398: FLdRfVar var_40C
  loc_D4B39B: ImpAdCallFPR4  = Format(, )
  loc_D4B3A0: FLdRfVar var_40C
  loc_D4B3A3: ConcatVar var_41C
  loc_D4B3A7: LitI4 9
  loc_D4B3AC: FLdRfVar var_42C
  loc_D4B3AF: ImpAdCallFPR4  = Chr()
  loc_D4B3B4: FLdRfVar var_42C
  loc_D4B3B7: ConcatVar var_43C
  loc_D4B3BB: LitI4 1
  loc_D4B3C0: LitI4 1
  loc_D4B3C5: LitVarStr var_46C, "0.00"
  loc_D4B3CA: FStVarCopyObj var_47C
  loc_D4B3CD: FLdRfVar var_47C
  loc_D4B3D0: FLdPr Me
  loc_D4B3D3: MemLdFPR8 global_196
  loc_D4B3D6: FLdPr Me
  loc_D4B3D9: MemLdFPR8 global_204
  loc_D4B3DC: AddR8
  loc_D4B3DD: FLdPr Me
  loc_D4B3E0: MemLdFPR8 global_212
  loc_D4B3E3: UMiR8
  loc_D4B3E4: AddR8
  loc_D4B3E5: FLdPr Me
  loc_D4B3E8: MemLdFPR8 global_220
  loc_D4B3EB: SubR4
  loc_D4B3EC: FLdPr Me
  loc_D4B3EF: MemLdFPR8 global_284
  loc_D4B3F2: AddR8
  loc_D4B3F3: CVarR8
  loc_D4B3F7: FLdRfVar var_48C
  loc_D4B3FA: ImpAdCallFPR4  = Format(, )
  loc_D4B3FF: FLdRfVar var_48C
  loc_D4B402: ConcatVar var_49C
  loc_D4B406: LitI4 9
  loc_D4B40B: FLdRfVar var_4AC
  loc_D4B40E: ImpAdCallFPR4  = Chr()
  loc_D4B413: FLdRfVar var_4AC
  loc_D4B416: ConcatVar var_4BC
  loc_D4B41A: LitVarI4
  loc_D4B422: PopAdLdVar
  loc_D4B423: LitVarI4
  loc_D4B42B: PopAdLdVar
  loc_D4B42C: FLdPr Me
  loc_D4B42F: VCallAd Control_ID_ctacteFlex
  loc_D4B432: FStAdFunc var_E0
  loc_D4B435: FLdPr var_E0
  loc_D4B438: LateIdCallLdVar
  loc_D4B442: CStrVarTmp
  loc_D4B443: CVarStr var_51C
  loc_D4B446: ConcatVar var_52C
  loc_D4B44A: LitI4 9
  loc_D4B44F: FLdRfVar var_53C
  loc_D4B452: ImpAdCallFPR4  = Chr()
  loc_D4B457: FLdRfVar var_53C
  loc_D4B45A: ConcatVar var_54C
  loc_D4B45E: LitVarI4
  loc_D4B466: PopAdLdVar
  loc_D4B467: LitVarI4
  loc_D4B46F: PopAdLdVar
  loc_D4B470: FLdPr Me
  loc_D4B473: VCallAd Control_ID_ctacteFlex
  loc_D4B476: FStAdFunc var_138
  loc_D4B479: FLdPr var_138
  loc_D4B47C: LateIdCallLdVar
  loc_D4B486: CStrVarTmp
  loc_D4B487: CVarStr var_5AC
  loc_D4B48A: ConcatVar var_5BC
  loc_D4B48E: CStrVarTmp
  loc_D4B48F: FStStrNoPop var_114
  loc_D4B492: FLdPr Me
  loc_D4B495: MemStStrCopy
  loc_D4B499: FFree1Str var_114
  loc_D4B49C: FFreeAd var_E0 = ""
  loc_D4B4A3: FFreeVar var_3FC = "": var_3BC = "": var_40C = "": var_41C = "": var_42C = "": var_45C = "": var_47C = "": var_43C = "": var_48C = "": var_49C = "": var_4AC = "": var_50C = "": var_4BC = "": var_51C = "": var_52C = "": var_53C = "": var_59C = "": var_54C = "": var_5AC = "": var_5BC = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D4B50A: FLdPr Me
  loc_D4B50D: MemLdRfVar from_stack_1.global_56
  loc_D4B510: CDargRef
  loc_D4B514: FLdPr Me
  loc_D4B517: VCallAd Control_ID_CuotasDetalleFlex
  loc_D4B51A: FStAdFunc var_E0
  loc_D4B51D: FLdPr var_E0
  loc_D4B520: LateIdCall
  loc_D4B528: FFree1Ad var_E0
  loc_D4B52B: FLdRfVar var_114
  loc_D4B52E: FLdPr Me
  loc_D4B531: VCallAd Control_ID_DerechoTxt
  loc_D4B534: FStAdFunc var_E0
  loc_D4B537: FLdPr var_E0
  loc_D4B53A:  = Me.Text
  loc_D4B53F: ILdRf var_114
  loc_D4B542: CR8Str
  loc_D4B544: FLdPr Me
  loc_D4B547: MemLdFPR8 global_196
  loc_D4B54A: SubR4
  loc_D4B54B: FLdPr Me
  loc_D4B54E: MemStFPR8 global_228
  loc_D4B551: FFree1Str var_114
  loc_D4B554: FFree1Ad var_E0
  loc_D4B557: FLdPr Me
  loc_D4B55A: MemLdFPR8 global_212
  loc_D4B55D: FLdPr Me
  loc_D4B560: MemStFPR8 global_236
  loc_D4B563: FLdRfVar var_114
  loc_D4B566: FLdPr Me
  loc_D4B569: VCallAd Control_ID_RecargoTxt
  loc_D4B56C: FStAdFunc var_E0
  loc_D4B56F: FLdPr var_E0
  loc_D4B572:  = Me.Text
  loc_D4B577: ILdRf var_114
  loc_D4B57A: CR8Str
  loc_D4B57C: FLdPr Me
  loc_D4B57F: MemLdFPR8 global_204
  loc_D4B582: SubR4
  loc_D4B583: FLdPr Me
  loc_D4B586: MemStFPR8 global_244
  loc_D4B589: FFree1Str var_114
  loc_D4B58C: FFree1Ad var_E0
  loc_D4B58F: FLdPr Me
  loc_D4B592: MemLdFPR8 global_220
  loc_D4B595: FLdPr Me
  loc_D4B598: MemStFPR8 global_252
  loc_D4B59B: LitI4 2
  loc_D4B5A0: FLdPr Me
  loc_D4B5A3: MemLdFPR8 global_228
  loc_D4B5A6: FLdPr Me
  loc_D4B5A9: MemLdFPR8 global_244
  loc_D4B5AC: AddR8
  loc_D4B5AD: FLdPr Me
  loc_D4B5B0: MemLdFPR8 global_236
  loc_D4B5B3: SubR4
  loc_D4B5B4: FLdPr Me
  loc_D4B5B7: MemLdFPR8 global_252
  loc_D4B5BA: SubR4
  loc_D4B5BB: CVarR8
  loc_D4B5BF: FLdRfVar var_148
  loc_D4B5C2: ImpAdCallFPR4  = Round(, )
  loc_D4B5C7: FLdRfVar var_148
  loc_D4B5CA: CR4Var
  loc_D4B5CB: FLdPr Me
  loc_D4B5CE: MemStFPR8 global_308
  loc_D4B5D1: FFreeVar var_F0 = ""
  loc_D4B5D8: FLdPr Me
  loc_D4B5DB: VCallAd Control_ID_CuotasFlex
  loc_D4B5DE: FStAdFunc var_E0
  loc_D4B5E1: FLdPr var_E0
  loc_D4B5E4: LateIdLdVar var_F0 DispID_10 0
  loc_D4B5EB: CI4Var
  loc_D4B5ED: CVarI4
  loc_D4B5F1: PopAdLdVar
  loc_D4B5F2: LitVarI4
  loc_D4B5FA: PopAdLdVar
  loc_D4B5FB: FLdPr Me
  loc_D4B5FE: VCallAd Control_ID_CuotasFlex
  loc_D4B601: FStAdFunc var_138
  loc_D4B604: FLdPr var_138
  loc_D4B607: LateIdCallLdVar
  loc_D4B611: CStrVarTmp
  loc_D4B612: FStStrNoPop var_114
  loc_D4B615: CR8Str
  loc_D4B617: FStFPR8 var_9C
  loc_D4B61A: FFree1Str var_114
  loc_D4B61D: FFreeAd var_E0 = ""
  loc_D4B624: FFreeVar var_F0 = ""
  loc_D4B62B: LitI4 2
  loc_D4B630: FLdPr Me
  loc_D4B633: MemLdFPR8 global_244
  loc_D4B636: LitI2_Byte &H64
  loc_D4B638: CR8I2
  loc_D4B639: MulR8
  loc_D4B63A: FLdPr Me
  loc_D4B63D: MemLdFPR8 global_228
  loc_D4B640: FLdPr Me
  loc_D4B643: MemLdFPR8 global_244
  loc_D4B646: AddR8
  loc_D4B647: DivR8
  loc_D4B648: CVarR8
  loc_D4B64C: FLdRfVar var_148
  loc_D4B64F: ImpAdCallFPR4  = Round(, )
  loc_D4B654: FLdRfVar var_148
  loc_D4B657: CR4Var
  loc_D4B658: FLdPr Me
  loc_D4B65B: MemStFPR8 global_300
  loc_D4B65E: FFreeVar var_F0 = ""
  loc_D4B665: LitI2_Byte 1
  loc_D4B667: FLdPr Me
  loc_D4B66A: MemLdRfVar from_stack_1.global_96
  loc_D4B66D: FLdPr Me
  loc_D4B670: VCallAd Control_ID_CuotasFlex
  loc_D4B673: FStAdFunc var_E0
  loc_D4B676: FLdPr var_E0
  loc_D4B679: LateIdLdVar var_F0 DispID_10 0
  loc_D4B680: CI4Var
  loc_D4B682: CVarI4
  loc_D4B686: PopAdLdVar
  loc_D4B687: LitVarI4
  loc_D4B68F: PopAdLdVar
  loc_D4B690: FLdPr Me
  loc_D4B693: VCallAd Control_ID_CuotasFlex
  loc_D4B696: FStAdFunc var_138
  loc_D4B699: FLdPr var_138
  loc_D4B69C: LateIdCallLdVar
  loc_D4B6A6: CStrVarTmp
  loc_D4B6A7: FStStrNoPop var_114
  loc_D4B6AA: CR8Str
  loc_D4B6AC: CI2R8
  loc_D4B6AD: FFree1Str var_114
  loc_D4B6B0: FFreeAd var_E0 = ""
  loc_D4B6B7: FFreeVar var_F0 = ""
  loc_D4B6BE: ForI2 var_5F0
  loc_D4B6C4: FLdRfVar var_F0
  loc_D4B6C7: FLdRfVar var_14C
  loc_D4B6CA: LitVarStr var_100, "MecaTifa"
  loc_D4B6CF: PopAdLdVar
  loc_D4B6D0: FLdRfVar var_138
  loc_D4B6D3: FLdRfVar var_E0
  loc_D4B6D6: FLdPr Me
  loc_D4B6D9: MemLdRfVar from_stack_1.global_76
  loc_D4B6DC: NewIfNullPr clstipofapa
  loc_D4B6DF: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4B6E4: FLdPr var_E0
  loc_D4B6E7:  = Me.Fields
  loc_D4B6EC: FLdPr var_138
  loc_D4B6EF: from_stack_2 = Me.Item(from_stack_1)
  loc_D4B6F4: FLdPr var_14C
  loc_D4B6F7:  = Me.Value
  loc_D4B6FC: FLdRfVar var_148
  loc_D4B6FF: FLdRfVar var_5C4
  loc_D4B702: LitVarStr var_110, "InteTifa"
  loc_D4B707: PopAdLdVar
  loc_D4B708: FLdRfVar var_1F8
  loc_D4B70B: FLdRfVar var_1CC
  loc_D4B70E: FLdPr Me
  loc_D4B711: MemLdRfVar from_stack_1.global_76
  loc_D4B714: NewIfNullPr clstipofapa
  loc_D4B717: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4B71C: FLdPr var_1CC
  loc_D4B71F:  = Me.Fields
  loc_D4B724: FLdPr var_1F8
  loc_D4B727: from_stack_2 = Me.Item(from_stack_1)
  loc_D4B72C: FLdPr var_5C4
  loc_D4B72F:  = Me.Value
  loc_D4B734: FLdPr Me
  loc_D4B737: MemLdR8 global_308
  loc_D4B73A: FLdRfVar var_148
  loc_D4B73D: CR4Var
  loc_D4B73E: PopFPR8
  loc_D4B73F: FLdRfVar var_F0
  loc_D4B742: CStrVarTmp
  loc_D4B743: FStStrNoPop var_114
  loc_D4B746: FLdFPR8 var_9C
  loc_D4B749: CI2R8
  loc_D4B74A: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_D4B74F: CVarRef
  loc_D4B754: FStVar var_94
  loc_D4B758: FFree1Str var_114
  loc_D4B75B: FFreeAd var_E0 = "": var_138 = "": var_1CC = "": var_1F8 = "": var_14C = ""
  loc_D4B76A: FFreeVar var_F0 = ""
  loc_D4B771: FLdPr Me
  loc_D4B774: VCallAd Control_ID_CuotasFlex
  loc_D4B777: FStAdFunc var_E0
  loc_D4B77A: FLdPr var_E0
  loc_D4B77D: LateIdLdVar var_F0 DispID_10 0
  loc_D4B784: CI4Var
  loc_D4B786: CVarI4
  loc_D4B78A: PopAdLdVar
  loc_D4B78B: LitVarI4
  loc_D4B793: PopAdLdVar
  loc_D4B794: FLdPr Me
  loc_D4B797: VCallAd Control_ID_CuotasFlex
  loc_D4B79A: FStAdFunc var_138
  loc_D4B79D: FLdPr var_138
  loc_D4B7A0: LateIdCallLdVar
  loc_D4B7AA: CStrVarTmp
  loc_D4B7AB: FStStrNoPop var_114
  loc_D4B7AE: CR8Str
  loc_D4B7B0: FLdPr Me
  loc_D4B7B3: MemLdI2 global_96
  loc_D4B7B6: CR8I2
  loc_D4B7B7: SubR4
  loc_D4B7B8: FStFPR8 var_9C
  loc_D4B7BB: FFree1Str var_114
  loc_D4B7BE: FFreeAd var_E0 = ""
  loc_D4B7C5: FFreeVar var_F0 = ""
  loc_D4B7CC: FLdPr Me
  loc_D4B7CF: MemLdFPR8 global_308
  loc_D4B7D2: CVarR8
  loc_D4B7D6: LitVarI2 var_100, 2
  loc_D4B7DB: PopAdLdVar
  loc_D4B7DC: FLdRfVar var_94
  loc_D4B7DF: VarIndexLdVar
  loc_D4B7E5: SubVar var_148
  loc_D4B7E9: CR4Var
  loc_D4B7EA: FLdPr Me
  loc_D4B7ED: MemStFPR8 global_308
  loc_D4B7F0: FFree1Var var_F0 = ""
  loc_D4B7F3: LitVarI2 var_100, 2
  loc_D4B7F8: PopAdLdVar
  loc_D4B7F9: FLdRfVar var_94
  loc_D4B7FC: VarIndexLdVar
  loc_D4B802: PopAd
  loc_D4B804: LitI4 2
  loc_D4B809: FLdRfVar var_F0
  loc_D4B80C: FLdPr Me
  loc_D4B80F: MemLdFPR8 global_300
  loc_D4B812: CVarR8
  loc_D4B816: MulVar var_148
  loc_D4B81A: LitVarI2 var_134, 100
  loc_D4B81F: DivVar var_198
  loc_D4B823: FStVar var_1A8
  loc_D4B827: FLdRfVar var_1A8
  loc_D4B82A: FLdRfVar var_1DC
  loc_D4B82D: ImpAdCallFPR4  = Round(, )
  loc_D4B832: FLdRfVar var_1DC
  loc_D4B835: CR4Var
  loc_D4B836: FLdPr Me
  loc_D4B839: MemStFPR8 global_276
  loc_D4B83C: FFreeVar var_F0 = "": var_1A8 = ""
  loc_D4B845: LitVarI2 var_100, 2
  loc_D4B84A: PopAdLdVar
  loc_D4B84B: FLdRfVar var_94
  loc_D4B84E: VarIndexLdVar
  loc_D4B854: FLdPr Me
  loc_D4B857: MemLdFPR8 global_276
  loc_D4B85A: CVarR8
  loc_D4B85E: SubVar var_148
  loc_D4B862: CR4Var
  loc_D4B863: FLdPr Me
  loc_D4B866: MemStFPR8 global_268
  loc_D4B869: FFree1Var var_F0 = ""
  loc_D4B86C: FLdFPR8 var_A4
  loc_D4B86F: FLdPr Me
  loc_D4B872: MemLdFPR8 global_268
  loc_D4B875: AddR8
  loc_D4B876: FStFPR8 var_A4
  loc_D4B879: FLdFPR8 var_B4
  loc_D4B87C: FLdPr Me
  loc_D4B87F: MemLdFPR8 global_276
  loc_D4B882: AddR8
  loc_D4B883: FStFPR8 var_B4
  loc_D4B886: FLdPr Me
  loc_D4B889: VCallAd Control_ID_CuotasFlex
  loc_D4B88C: FStAdFunc var_E0
  loc_D4B88F: FLdPr var_E0
  loc_D4B892: LateIdLdVar var_F0 DispID_10 0
  loc_D4B899: CI4Var
  loc_D4B89B: CVarI4
  loc_D4B89F: PopAdLdVar
  loc_D4B8A0: LitVarI4
  loc_D4B8A8: PopAdLdVar
  loc_D4B8A9: FLdPr Me
  loc_D4B8AC: VCallAd Control_ID_CuotasFlex
  loc_D4B8AF: FStAdFunc var_138
  loc_D4B8B2: FLdPr var_138
  loc_D4B8B5: LateIdCallLdVar
  loc_D4B8BF: PopAd
  loc_D4B8C1: FLdPr Me
  loc_D4B8C4: MemLdI2 global_96
  loc_D4B8C7: CR8I2
  loc_D4B8C8: FLdRfVar var_148
  loc_D4B8CB: CStrVarTmp
  loc_D4B8CC: FStStrNoPop var_114
  loc_D4B8CF: CR8Str
  loc_D4B8D1: EqR4
  loc_D4B8D2: FFree1Str var_114
  loc_D4B8D5: FFreeAd var_E0 = ""
  loc_D4B8DC: FFreeVar var_F0 = ""
  loc_D4B8E3: BranchF loc_D4BA98
  loc_D4B8E6: FLdFPR8 var_A4
  loc_D4B8E9: CVarR8
  loc_D4B8ED: HardType
  loc_D4B8EE: LitI4 2
  loc_D4B8F3: FLdPr Me
  loc_D4B8F6: MemLdRfVar from_stack_1.global_228
  loc_D4B8F9: CVarRef
  loc_D4B8FE: FLdRfVar var_F0
  loc_D4B901: ImpAdCallFPR4  = Round(, )
  loc_D4B906: FLdRfVar var_F0
  loc_D4B909: GtVarBool
  loc_D4B90B: FFree1Var var_F0 = ""
  loc_D4B90E: BranchF loc_D4B952
  loc_D4B911: FLdPr Me
  loc_D4B914: MemLdFPR8 global_268
  loc_D4B917: CVarR8
  loc_D4B91B: FLdFPR8 var_A4
  loc_D4B91E: CVarR8
  loc_D4B922: LitI4 2
  loc_D4B927: FLdPr Me
  loc_D4B92A: MemLdRfVar from_stack_1.global_228
  loc_D4B92D: CVarRef
  loc_D4B932: FLdRfVar var_F0
  loc_D4B935: ImpAdCallFPR4  = Round(, )
  loc_D4B93A: FLdRfVar var_F0
  loc_D4B93D: SubVar var_148
  loc_D4B941: SubVar var_198
  loc_D4B945: CR4Var
  loc_D4B946: FLdPr Me
  loc_D4B949: MemStFPR8 global_268
  loc_D4B94C: FFree1Var var_F0 = ""
  loc_D4B94F: Branch loc_D4B9BF
  loc_D4B952: FLdFPR8 var_A4
  loc_D4B955: CVarR8
  loc_D4B959: HardType
  loc_D4B95A: LitI4 2
  loc_D4B95F: FLdPr Me
  loc_D4B962: MemLdRfVar from_stack_1.global_228
  loc_D4B965: CVarRef
  loc_D4B96A: FLdRfVar var_F0
  loc_D4B96D: ImpAdCallFPR4  = Round(, )
  loc_D4B972: FLdRfVar var_F0
  loc_D4B975: LtVarBool
  loc_D4B977: FFree1Var var_F0 = ""
  loc_D4B97A: BranchF loc_D4B9BF
  loc_D4B97D: FLdPr Me
  loc_D4B980: MemLdFPR8 global_268
  loc_D4B983: CVarR8
  loc_D4B987: LitI4 2
  loc_D4B98C: FLdPr Me
  loc_D4B98F: MemLdRfVar from_stack_1.global_228
  loc_D4B992: CVarRef
  loc_D4B997: FLdRfVar var_F0
  loc_D4B99A: ImpAdCallFPR4  = Round(, )
  loc_D4B99F: FLdRfVar var_F0
  loc_D4B9A2: FLdFPR8 var_A4
  loc_D4B9A5: CVarR8
  loc_D4B9A9: SubVar var_148
  loc_D4B9AD: AddVar var_198
  loc_D4B9B1: CR4Var
  loc_D4B9B2: FLdPr Me
  loc_D4B9B5: MemStFPR8 global_268
  loc_D4B9B8: FFreeVar var_F0 = ""
  loc_D4B9BF: FLdFPR8 var_B4
  loc_D4B9C2: CVarR8
  loc_D4B9C6: HardType
  loc_D4B9C7: LitI4 2
  loc_D4B9CC: FLdPr Me
  loc_D4B9CF: MemLdRfVar from_stack_1.global_244
  loc_D4B9D2: CVarRef
  loc_D4B9D7: FLdRfVar var_F0
  loc_D4B9DA: ImpAdCallFPR4  = Round(, )
  loc_D4B9DF: FLdRfVar var_F0
  loc_D4B9E2: GtVarBool
  loc_D4B9E4: FFree1Var var_F0 = ""
  loc_D4B9E7: BranchF loc_D4BA2B
  loc_D4B9EA: FLdPr Me
  loc_D4B9ED: MemLdFPR8 global_276
  loc_D4B9F0: CVarR8
  loc_D4B9F4: FLdFPR8 var_B4
  loc_D4B9F7: CVarR8
  loc_D4B9FB: LitI4 2
  loc_D4BA00: FLdPr Me
  loc_D4BA03: MemLdRfVar from_stack_1.global_244
  loc_D4BA06: CVarRef
  loc_D4BA0B: FLdRfVar var_F0
  loc_D4BA0E: ImpAdCallFPR4  = Round(, )
  loc_D4BA13: FLdRfVar var_F0
  loc_D4BA16: SubVar var_148
  loc_D4BA1A: SubVar var_198
  loc_D4BA1E: CR4Var
  loc_D4BA1F: FLdPr Me
  loc_D4BA22: MemStFPR8 global_276
  loc_D4BA25: FFree1Var var_F0 = ""
  loc_D4BA28: Branch loc_D4BA98
  loc_D4BA2B: FLdFPR8 var_B4
  loc_D4BA2E: CVarR8
  loc_D4BA32: HardType
  loc_D4BA33: LitI4 2
  loc_D4BA38: FLdPr Me
  loc_D4BA3B: MemLdRfVar from_stack_1.global_244
  loc_D4BA3E: CVarRef
  loc_D4BA43: FLdRfVar var_F0
  loc_D4BA46: ImpAdCallFPR4  = Round(, )
  loc_D4BA4B: FLdRfVar var_F0
  loc_D4BA4E: LtVarBool
  loc_D4BA50: FFree1Var var_F0 = ""
  loc_D4BA53: BranchF loc_D4BA98
  loc_D4BA56: FLdPr Me
  loc_D4BA59: MemLdFPR8 global_276
  loc_D4BA5C: CVarR8
  loc_D4BA60: LitI4 2
  loc_D4BA65: FLdPr Me
  loc_D4BA68: MemLdRfVar from_stack_1.global_244
  loc_D4BA6B: CVarRef
  loc_D4BA70: FLdRfVar var_F0
  loc_D4BA73: ImpAdCallFPR4  = Round(, )
  loc_D4BA78: FLdRfVar var_F0
  loc_D4BA7B: FLdFPR8 var_B4
  loc_D4BA7E: CVarR8
  loc_D4BA82: SubVar var_148
  loc_D4BA86: AddVar var_198
  loc_D4BA8A: CR4Var
  loc_D4BA8B: FLdPr Me
  loc_D4BA8E: MemStFPR8 global_276
  loc_D4BA91: FFreeVar var_F0 = ""
  loc_D4BA98: FLdRfVar var_F0
  loc_D4BA9B: FLdRfVar var_14C
  loc_D4BA9E: LitVarStr var_100, "DecaTifa"
  loc_D4BAA3: PopAdLdVar
  loc_D4BAA4: FLdRfVar var_138
  loc_D4BAA7: FLdRfVar var_E0
  loc_D4BAAA: FLdPr Me
  loc_D4BAAD: MemLdRfVar from_stack_1.global_76
  loc_D4BAB0: NewIfNullPr clstipofapa
  loc_D4BAB3: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4BAB8: FLdPr var_E0
  loc_D4BABB:  = Me.Fields
  loc_D4BAC0: FLdPr var_138
  loc_D4BAC3: from_stack_2 = Me.Item(from_stack_1)
  loc_D4BAC8: FLdPr var_14C
  loc_D4BACB:  = Me.Value
  loc_D4BAD0: LitI4 2
  loc_D4BAD5: FLdPr Me
  loc_D4BAD8: MemLdFPR8 global_268
  loc_D4BADB: FLdRfVar var_F0
  loc_D4BADE: FnCDblVar
  loc_D4BAE0: MulR8
  loc_D4BAE1: LitI2_Byte &H64
  loc_D4BAE3: CR8I2
  loc_D4BAE4: DivR8
  loc_D4BAE5: CVarR8
  loc_D4BAE9: FLdRfVar var_198
  loc_D4BAEC: ImpAdCallFPR4  = Round(, )
  loc_D4BAF1: FLdRfVar var_198
  loc_D4BAF4: CR4Var
  loc_D4BAF5: FLdPr Me
  loc_D4BAF8: MemStFPR8 global_320
  loc_D4BAFB: FFreeAd var_E0 = "": var_138 = ""
  loc_D4BB04: FFreeVar var_F0 = "": var_148 = ""
  loc_D4BB0D: FLdFPR8 var_AC
  loc_D4BB10: FLdPr Me
  loc_D4BB13: MemLdFPR8 global_320
  loc_D4BB16: AddR8
  loc_D4BB17: FStFPR8 var_AC
  loc_D4BB1A: FLdRfVar var_F0
  loc_D4BB1D: FLdRfVar var_14C
  loc_D4BB20: LitVarStr var_100, "DereTifa"
  loc_D4BB25: PopAdLdVar
  loc_D4BB26: FLdRfVar var_138
  loc_D4BB29: FLdRfVar var_E0
  loc_D4BB2C: FLdPr Me
  loc_D4BB2F: MemLdRfVar from_stack_1.global_76
  loc_D4BB32: NewIfNullPr clstipofapa
  loc_D4BB35: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4BB3A: FLdPr var_E0
  loc_D4BB3D:  = Me.Fields
  loc_D4BB42: FLdPr var_138
  loc_D4BB45: from_stack_2 = Me.Item(from_stack_1)
  loc_D4BB4A: FLdPr var_14C
  loc_D4BB4D:  = Me.Value
  loc_D4BB52: LitI4 2
  loc_D4BB57: FLdPr Me
  loc_D4BB5A: MemLdFPR8 global_276
  loc_D4BB5D: FLdRfVar var_F0
  loc_D4BB60: FnCDblVar
  loc_D4BB62: MulR8
  loc_D4BB63: LitI2_Byte &H64
  loc_D4BB65: CR8I2
  loc_D4BB66: DivR8
  loc_D4BB67: CVarR8
  loc_D4BB6B: FLdRfVar var_198
  loc_D4BB6E: ImpAdCallFPR4  = Round(, )
  loc_D4BB73: FLdRfVar var_198
  loc_D4BB76: CR4Var
  loc_D4BB77: FLdPr Me
  loc_D4BB7A: MemStFPR8 global_328
  loc_D4BB7D: FFreeAd var_E0 = "": var_138 = ""
  loc_D4BB86: FFreeVar var_F0 = "": var_148 = ""
  loc_D4BB8F: FLdFPR8 var_BC
  loc_D4BB92: FLdPr Me
  loc_D4BB95: MemLdFPR8 global_328
  loc_D4BB98: AddR8
  loc_D4BB99: FStFPR8 var_BC
  loc_D4BB9C: FLdPr Me
  loc_D4BB9F: VCallAd Control_ID_CuotasFlex
  loc_D4BBA2: FStAdFunc var_E0
  loc_D4BBA5: FLdPr var_E0
  loc_D4BBA8: LateIdLdVar var_F0 DispID_10 0
  loc_D4BBAF: CI4Var
  loc_D4BBB1: CVarI4
  loc_D4BBB5: PopAdLdVar
  loc_D4BBB6: LitVarI4
  loc_D4BBBE: PopAdLdVar
  loc_D4BBBF: FLdPr Me
  loc_D4BBC2: VCallAd Control_ID_CuotasFlex
  loc_D4BBC5: FStAdFunc var_138
  loc_D4BBC8: FLdPr var_138
  loc_D4BBCB: LateIdCallLdVar
  loc_D4BBD5: PopAd
  loc_D4BBD7: FLdPr Me
  loc_D4BBDA: MemLdI2 global_96
  loc_D4BBDD: CR8I2
  loc_D4BBDE: FLdRfVar var_148
  loc_D4BBE1: CStrVarTmp
  loc_D4BBE2: FStStrNoPop var_114
  loc_D4BBE5: CR8Str
  loc_D4BBE7: EqR4
  loc_D4BBE8: FFree1Str var_114
  loc_D4BBEB: FFreeAd var_E0 = ""
  loc_D4BBF2: FFreeVar var_F0 = ""
  loc_D4BBF9: BranchF loc_D4BCF6
  loc_D4BBFC: FLdFPR8 var_B4
  loc_D4BBFF: FLdPr Me
  loc_D4BC02: MemLdFPR8 global_244
  loc_D4BC05: GtR4
  loc_D4BC06: BranchF loc_D4BC23
  loc_D4BC09: FLdPr Me
  loc_D4BC0C: MemLdFPR8 global_276
  loc_D4BC0F: FLdFPR8 var_B4
  loc_D4BC12: FLdPr Me
  loc_D4BC15: MemLdFPR8 global_244
  loc_D4BC18: SubR4
  loc_D4BC19: SubR4
  loc_D4BC1A: FLdPr Me
  loc_D4BC1D: MemStFPR8 global_276
  loc_D4BC20: Branch loc_D4BC47
  loc_D4BC23: FLdFPR8 var_B4
  loc_D4BC26: FLdPr Me
  loc_D4BC29: MemLdFPR8 global_244
  loc_D4BC2C: LtR8
  loc_D4BC2D: BranchF loc_D4BC47
  loc_D4BC30: FLdPr Me
  loc_D4BC33: MemLdFPR8 global_276
  loc_D4BC36: FLdPr Me
  loc_D4BC39: MemLdFPR8 global_244
  loc_D4BC3C: FLdFPR8 var_B4
  loc_D4BC3F: SubR4
  loc_D4BC40: AddR8
  loc_D4BC41: FLdPr Me
  loc_D4BC44: MemStFPR8 global_276
  loc_D4BC47: FLdRfVar var_114
  loc_D4BC4A: FLdPr Me
  loc_D4BC4D: VCallAd Control_ID_DescRecaTxt
  loc_D4BC50: FStAdFunc var_E0
  loc_D4BC53: FLdPr var_E0
  loc_D4BC56:  = Me.Text
  loc_D4BC5B: FLdFPR8 var_BC
  loc_D4BC5E: ILdRf var_114
  loc_D4BC61: CR8Str
  loc_D4BC63: GtR4
  loc_D4BC64: FFree1Str var_114
  loc_D4BC67: FFree1Ad var_E0
  loc_D4BC6A: BranchF loc_D4BCA0
  loc_D4BC6D: FLdRfVar var_114
  loc_D4BC70: FLdPr Me
  loc_D4BC73: VCallAd Control_ID_DescRecaTxt
  loc_D4BC76: FStAdFunc var_E0
  loc_D4BC79: FLdPr var_E0
  loc_D4BC7C:  = Me.Text
  loc_D4BC81: FLdPr Me
  loc_D4BC84: MemLdFPR8 global_328
  loc_D4BC87: FLdFPR8 var_BC
  loc_D4BC8A: ILdRf var_114
  loc_D4BC8D: CR8Str
  loc_D4BC8F: SubR4
  loc_D4BC90: SubR4
  loc_D4BC91: FLdPr Me
  loc_D4BC94: MemStFPR8 global_328
  loc_D4BC97: FFree1Str var_114
  loc_D4BC9A: FFree1Ad var_E0
  loc_D4BC9D: Branch loc_D4BCF6
  loc_D4BCA0: FLdRfVar var_114
  loc_D4BCA3: FLdPr Me
  loc_D4BCA6: VCallAd Control_ID_DescRecaTxt
  loc_D4BCA9: FStAdFunc var_E0
  loc_D4BCAC: FLdPr var_E0
  loc_D4BCAF:  = Me.Text
  loc_D4BCB4: FLdFPR8 var_BC
  loc_D4BCB7: ILdRf var_114
  loc_D4BCBA: CR8Str
  loc_D4BCBC: LtR8
  loc_D4BCBD: FFree1Str var_114
  loc_D4BCC0: FFree1Ad var_E0
  loc_D4BCC3: BranchF loc_D4BCF6
  loc_D4BCC6: FLdRfVar var_114
  loc_D4BCC9: FLdPr Me
  loc_D4BCCC: VCallAd Control_ID_DescRecaTxt
  loc_D4BCCF: FStAdFunc var_E0
  loc_D4BCD2: FLdPr var_E0
  loc_D4BCD5:  = Me.Text
  loc_D4BCDA: FLdPr Me
  loc_D4BCDD: MemLdFPR8 global_328
  loc_D4BCE0: ILdRf var_114
  loc_D4BCE3: CR8Str
  loc_D4BCE5: FLdFPR8 var_BC
  loc_D4BCE8: SubR4
  loc_D4BCE9: AddR8
  loc_D4BCEA: FLdPr Me
  loc_D4BCED: MemStFPR8 global_328
  loc_D4BCF0: FFree1Str var_114
  loc_D4BCF3: FFree1Ad var_E0
  loc_D4BCF6: FLdRfVar var_114
  loc_D4BCF9: FLdPr Me
  loc_D4BCFC: VCallAd Control_ID_CuotApreTxt
  loc_D4BCFF: FStAdFunc var_E0
  loc_D4BD02: FLdPr var_E0
  loc_D4BD05:  = Me.Text
  loc_D4BD0A: ILdRf var_114
  loc_D4BD0D: CR8Str
  loc_D4BD0F: LitI2_Byte 0
  loc_D4BD11: CR8I2
  loc_D4BD12: GtR4
  loc_D4BD13: FFree1Str var_114
  loc_D4BD16: FFree1Ad var_E0
  loc_D4BD19: BranchF loc_D4BE29
  loc_D4BD1C: FLdRfVar var_114
  loc_D4BD1F: FLdPr Me
  loc_D4BD22: VCallAd Control_ID_AnticipoTxt
  loc_D4BD25: FStAdFunc var_E0
  loc_D4BD28: FLdPr var_E0
  loc_D4BD2B:  = Me.Text
  loc_D4BD30: ILdRf var_114
  loc_D4BD33: CR8Str
  loc_D4BD35: LitI2_Byte 0
  loc_D4BD37: CR8I2
  loc_D4BD38: GtR4
  loc_D4BD39: FFree1Str var_114
  loc_D4BD3C: FFree1Ad var_E0
  loc_D4BD3F: BranchF loc_D4BD87
  loc_D4BD42: FLdRfVar var_114
  loc_D4BD45: FLdPr Me
  loc_D4BD48: VCallAd Control_ID_CuotApreTxt
  loc_D4BD4B: FStAdFunc var_E0
  loc_D4BD4E: FLdPr var_E0
  loc_D4BD51:  = Me.Text
  loc_D4BD56: FLdPr Me
  loc_D4BD59: MemLdI2 global_96
  loc_D4BD5C: CR8I2
  loc_D4BD5D: ILdRf var_114
  loc_D4BD60: CR8Str
  loc_D4BD62: LeR8
  loc_D4BD63: FFree1Str var_114
  loc_D4BD66: FFree1Ad var_E0
  loc_D4BD69: BranchF loc_D4BD7B
  loc_D4BD6C: FLdPr Me
  loc_D4BD6F: MemLdFPR8 global_344
  loc_D4BD72: FLdPr Me
  loc_D4BD75: MemStFPR8 global_284
  loc_D4BD78: Branch loc_D4BD84
  loc_D4BD7B: LitI2_Byte 0
  loc_D4BD7D: CR8I2
  loc_D4BD7E: FLdPr Me
  loc_D4BD81: MemStFPR8 global_284
  loc_D4BD84: Branch loc_D4BE1C
  loc_D4BD87: FLdPr Me
  loc_D4BD8A: MemLdI2 global_96
  loc_D4BD8D: LitI2_Byte 1
  loc_D4BD8F: EqI2
  loc_D4BD90: BranchF loc_D4BDDA
  loc_D4BD93: FLdPr Me
  loc_D4BD96: MemLdFPR8 global_336
  loc_D4BD99: FLdPr Me
  loc_D4BD9C: MemStFPR8 global_284
  loc_D4BD9F: FLdRfVar var_114
  loc_D4BDA2: FLdPr Me
  loc_D4BDA5: VCallAd Control_ID_CuotApreTxt
  loc_D4BDA8: FStAdFunc var_E0
  loc_D4BDAB: FLdPr var_E0
  loc_D4BDAE:  = Me.Text
  loc_D4BDB3: ILdRf var_114
  loc_D4BDB6: CI2Str
  loc_D4BDB8: LitI2_Byte 1
  loc_D4BDBA: EqI2
  loc_D4BDBB: FFree1Str var_114
  loc_D4BDBE: FFree1Ad var_E0
  loc_D4BDC1: BranchF loc_D4BDD7
  loc_D4BDC4: FLdPr Me
  loc_D4BDC7: MemLdFPR8 global_284
  loc_D4BDCA: FLdPr Me
  loc_D4BDCD: MemLdFPR8 global_344
  loc_D4BDD0: AddR8
  loc_D4BDD1: FLdPr Me
  loc_D4BDD4: MemStFPR8 global_284
  loc_D4BDD7: Branch loc_D4BE1C
  loc_D4BDDA: FLdRfVar var_114
  loc_D4BDDD: FLdPr Me
  loc_D4BDE0: VCallAd Control_ID_CuotApreTxt
  loc_D4BDE3: FStAdFunc var_E0
  loc_D4BDE6: FLdPr var_E0
  loc_D4BDE9:  = Me.Text
  loc_D4BDEE: FLdPr Me
  loc_D4BDF1: MemLdI2 global_96
  loc_D4BDF4: CR8I2
  loc_D4BDF5: ILdRf var_114
  loc_D4BDF8: CR8Str
  loc_D4BDFA: LeR8
  loc_D4BDFB: FFree1Str var_114
  loc_D4BDFE: FFree1Ad var_E0
  loc_D4BE01: BranchF loc_D4BE13
  loc_D4BE04: FLdPr Me
  loc_D4BE07: MemLdFPR8 global_344
  loc_D4BE0A: FLdPr Me
  loc_D4BE0D: MemStFPR8 global_284
  loc_D4BE10: Branch loc_D4BE1C
  loc_D4BE13: LitI2_Byte 0
  loc_D4BE15: CR8I2
  loc_D4BE16: FLdPr Me
  loc_D4BE19: MemStFPR8 global_284
  loc_D4BE1C: FLdFPR8 var_CC
  loc_D4BE1F: FLdPr Me
  loc_D4BE22: MemLdFPR8 global_284
  loc_D4BE25: AddR8
  loc_D4BE26: FStFPR8 var_CC
  loc_D4BE29: LitVarI2 var_100, 1
  loc_D4BE2E: PopAdLdVar
  loc_D4BE2F: FLdRfVar var_94
  loc_D4BE32: VarIndexLdVar
  loc_D4BE38: PopAd
  loc_D4BE3A: LitI4 2
  loc_D4BE3F: FLdFPR8 var_C4
  loc_D4BE42: CVarR8
  loc_D4BE46: FLdRfVar var_F0
  loc_D4BE49: AddVar var_148
  loc_D4BE4D: FLdRfVar var_198
  loc_D4BE50: ImpAdCallFPR4  = Round(, )
  loc_D4BE55: FLdRfVar var_198
  loc_D4BE58: CR4Var
  loc_D4BE59: FStFPR8 var_C4
  loc_D4BE5C: FFreeVar var_F0 = "": var_148 = ""
  loc_D4BE65: LitVarI2 var_100, 1
  loc_D4BE6A: PopAdLdVar
  loc_D4BE6B: FLdRfVar var_94
  loc_D4BE6E: VarIndexLdVar
  loc_D4BE74: PopAd
  loc_D4BE76: LitI4 2
  loc_D4BE7B: FLdPr Me
  loc_D4BE7E: MemLdFPR8 global_268
  loc_D4BE81: FLdPr Me
  loc_D4BE84: MemLdFPR8 global_276
  loc_D4BE87: AddR8
  loc_D4BE88: FLdPr Me
  loc_D4BE8B: MemLdFPR8 global_320
  loc_D4BE8E: SubR4
  loc_D4BE8F: FLdPr Me
  loc_D4BE92: MemLdFPR8 global_328
  loc_D4BE95: SubR4
  loc_D4BE96: FLdPr Me
  loc_D4BE99: MemLdFPR8 global_284
  loc_D4BE9C: AddR8
  loc_D4BE9D: FLdRfVar var_F0
  loc_D4BEA0: FnCDblVar
  loc_D4BEA2: AddR8
  loc_D4BEA3: CVarR8
  loc_D4BEA7: FLdRfVar var_198
  loc_D4BEAA: ImpAdCallFPR4  = Round(, )
  loc_D4BEAF: FLdRfVar var_198
  loc_D4BEB2: CR4Var
  loc_D4BEB3: FLdPr Me
  loc_D4BEB6: MemStFPR8 global_292
  loc_D4BEB9: FFreeVar var_F0 = "": var_148 = ""
  loc_D4BEC2: FLdRfVar var_114
  loc_D4BEC5: FLdPr Me
  loc_D4BEC8: VCallAd Control_ID_AnticipoTxt
  loc_D4BECB: FStAdFunc var_E0
  loc_D4BECE: FLdPr var_E0
  loc_D4BED1:  = Me.Text
  loc_D4BED6: ILdRf var_114
  loc_D4BED9: CR8Str
  loc_D4BEDB: LitI2_Byte 0
  loc_D4BEDD: CR8I2
  loc_D4BEDE: NeR8
  loc_D4BEDF: FFree1Str var_114
  loc_D4BEE2: FFree1Ad var_E0
  loc_D4BEE5: BranchF loc_D4BF9C
  loc_D4BEE8: FLdRfVar var_D4
  loc_D4BEEB: CVarRef
  loc_D4BEF0: FLdRfVar var_F0
  loc_D4BEF3: ImpAdCallFPR4  = Year()
  loc_D4BEF8: FLdRfVar var_D4
  loc_D4BEFB: CVarRef
  loc_D4BF00: FLdRfVar var_148
  loc_D4BF03: ImpAdCallFPR4  = Month()
  loc_D4BF08: FLdRfVar var_D4
  loc_D4BF0B: CVarRef
  loc_D4BF10: FLdRfVar var_198
  loc_D4BF13: ImpAdCallFPR4  = Day()
  loc_D4BF18: FLdRfVar var_198
  loc_D4BF1B: CI2Var
  loc_D4BF1C: FLdRfVar var_148
  loc_D4BF1F: CI2Var
  loc_D4BF20: FLdRfVar var_F0
  loc_D4BF23: CI2Var
  loc_D4BF24: FLdRfVar var_1A8
  loc_D4BF27: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4BF2C: FLdRfVar var_1DC
  loc_D4BF2F: FLdRfVar var_14C
  loc_D4BF32: LitVarStr var_134, "VecuTifa"
  loc_D4BF37: PopAdLdVar
  loc_D4BF38: FLdRfVar var_138
  loc_D4BF3B: FLdRfVar var_E0
  loc_D4BF3E: FLdPr Me
  loc_D4BF41: MemLdRfVar from_stack_1.global_76
  loc_D4BF44: NewIfNullPr clstipofapa
  loc_D4BF47: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4BF4C: FLdPr var_E0
  loc_D4BF4F:  = Me.Fields
  loc_D4BF54: FLdPr var_138
  loc_D4BF57: from_stack_2 = Me.Item(from_stack_1)
  loc_D4BF5C: FLdPr var_14C
  loc_D4BF5F:  = Me.Value
  loc_D4BF64: FLdRfVar var_168
  loc_D4BF67: FLdRfVar var_1DC
  loc_D4BF6A: CStrVarTmp
  loc_D4BF6B: PopTmpLdAdStr
  loc_D4BF6F: FLdRfVar var_1A8
  loc_D4BF72: FnCDateVar
  loc_D4BF74: PopTmpLdAdFPR8
  loc_D4BF78: Call Proc_187_54_BF8A3C()
  loc_D4BF7D: FLdFPR8 var_168
  loc_D4BF80: FStFPR8 var_D4
  loc_D4BF83: FFree1Str var_114
  loc_D4BF86: FFreeAd var_E0 = "": var_138 = ""
  loc_D4BF8F: FFreeVar var_F0 = "": var_148 = "": var_198 = "": var_1A8 = ""
  loc_D4BF9C: LitVarI2 var_3CC, 1
  loc_D4BFA1: PopAdLdVar
  loc_D4BFA2: FLdRfVar var_94
  loc_D4BFA5: VarIndexLdRfVarLock
  loc_D4BFAD: FStR4 var_154
  loc_D4BFB0: FLdPr Me
  loc_D4BFB3: MemLdI2 global_96
  loc_D4BFB6: CVarI2 var_100
  loc_D4BFB9: LitI4 9
  loc_D4BFBE: FLdRfVar var_F0
  loc_D4BFC1: ImpAdCallFPR4  = Chr()
  loc_D4BFC6: FLdRfVar var_F0
  loc_D4BFC9: ConcatVar var_148
  loc_D4BFCD: FLdFPR8 var_D4
  loc_D4BFD0: CVarDate var_110
  loc_D4BFD4: ConcatVar var_198
  loc_D4BFD8: LitI4 9
  loc_D4BFDD: FLdRfVar var_1A8
  loc_D4BFE0: ImpAdCallFPR4  = Chr()
  loc_D4BFE5: FLdRfVar var_1A8
  loc_D4BFE8: ConcatVar var_1DC
  loc_D4BFEC: LitI4 1
  loc_D4BFF1: LitI4 1
  loc_D4BFF6: LitVarStr var_134, "0.00"
  loc_D4BFFB: FStVarCopyObj var_1EC
  loc_D4BFFE: FLdRfVar var_1EC
  loc_D4C001: FLdPr Me
  loc_D4C004: MemLdRfVar from_stack_1.global_268
  loc_D4C007: CVarRef
  loc_D4C00C: FLdRfVar var_20C
  loc_D4C00F: ImpAdCallFPR4  = Format(, )
  loc_D4C014: FLdRfVar var_20C
  loc_D4C017: ConcatVar var_21C
  loc_D4C01B: LitI4 9
  loc_D4C020: FLdRfVar var_22C
  loc_D4C023: ImpAdCallFPR4  = Chr()
  loc_D4C028: FLdRfVar var_22C
  loc_D4C02B: ConcatVar var_23C
  loc_D4C02F: LitI4 1
  loc_D4C034: LitI4 1
  loc_D4C039: LitVarStr var_188, "0.00"
  loc_D4C03E: FStVarCopyObj var_24C
  loc_D4C041: FLdRfVar var_24C
  loc_D4C044: FLdPr Me
  loc_D4C047: MemLdRfVar from_stack_1.global_276
  loc_D4C04A: CVarRef
  loc_D4C04F: FLdRfVar var_25C
  loc_D4C052: ImpAdCallFPR4  = Format(, )
  loc_D4C057: FLdRfVar var_25C
  loc_D4C05A: ConcatVar var_26C
  loc_D4C05E: LitI4 9
  loc_D4C063: FLdRfVar var_27C
  loc_D4C066: ImpAdCallFPR4  = Chr()
  loc_D4C06B: FLdRfVar var_27C
  loc_D4C06E: ConcatVar var_28C
  loc_D4C072: LitI4 1
  loc_D4C077: LitI4 1
  loc_D4C07C: LitVarStr var_1C8, "0.00"
  loc_D4C081: FStVarCopyObj var_29C
  loc_D4C084: FLdRfVar var_29C
  loc_D4C087: FLdPr Me
  loc_D4C08A: MemLdRfVar from_stack_1.global_320
  loc_D4C08D: CVarRef
  loc_D4C092: FLdRfVar var_2AC
  loc_D4C095: ImpAdCallFPR4  = Format(, )
  loc_D4C09A: FLdRfVar var_2AC
  loc_D4C09D: ConcatVar var_2BC
  loc_D4C0A1: LitI4 9
  loc_D4C0A6: FLdRfVar var_2CC
  loc_D4C0A9: ImpAdCallFPR4  = Chr()
  loc_D4C0AE: FLdRfVar var_2CC
  loc_D4C0B1: ConcatVar var_2DC
  loc_D4C0B5: LitI4 1
  loc_D4C0BA: LitI4 1
  loc_D4C0BF: LitVarStr var_2FC, "0.00"
  loc_D4C0C4: FStVarCopyObj var_30C
  loc_D4C0C7: FLdRfVar var_30C
  loc_D4C0CA: FLdPr Me
  loc_D4C0CD: MemLdRfVar from_stack_1.global_328
  loc_D4C0D0: CVarRef
  loc_D4C0D5: FLdRfVar var_31C
  loc_D4C0D8: ImpAdCallFPR4  = Format(, )
  loc_D4C0DD: FLdRfVar var_31C
  loc_D4C0E0: ConcatVar var_32C
  loc_D4C0E4: LitI4 9
  loc_D4C0E9: FLdRfVar var_33C
  loc_D4C0EC: ImpAdCallFPR4  = Chr()
  loc_D4C0F1: FLdRfVar var_33C
  loc_D4C0F4: ConcatVar var_34C
  loc_D4C0F8: LitI4 1
  loc_D4C0FD: LitI4 1
  loc_D4C102: LitVarStr var_36C, "0.00"
  loc_D4C107: FStVarCopyObj var_37C
  loc_D4C10A: FLdRfVar var_37C
  loc_D4C10D: FLdPr Me
  loc_D4C110: MemLdRfVar from_stack_1.global_284
  loc_D4C113: CVarRef
  loc_D4C118: FLdRfVar var_38C
  loc_D4C11B: ImpAdCallFPR4  = Format(, )
  loc_D4C120: FLdRfVar var_38C
  loc_D4C123: ConcatVar var_39C
  loc_D4C127: LitI4 9
  loc_D4C12C: FLdRfVar var_3AC
  loc_D4C12F: ImpAdCallFPR4  = Chr()
  loc_D4C134: FLdRfVar var_3AC
  loc_D4C137: ConcatVar var_3BC
  loc_D4C13B: LitI4 1
  loc_D4C140: LitI4 1
  loc_D4C145: LitVarStr var_44C, "0.00"
  loc_D4C14A: FStVarCopyObj var_3FC
  loc_D4C14D: FLdRfVar var_3FC
  loc_D4C150: ILdRf var_154
  loc_D4C153: FLdRfVar var_40C
  loc_D4C156: ImpAdCallFPR4  = Format(, )
  loc_D4C15B: AryUnlock
  loc_D4C15E: FLdRfVar var_40C
  loc_D4C161: ConcatVar var_41C
  loc_D4C165: LitI4 9
  loc_D4C16A: FLdRfVar var_42C
  loc_D4C16D: ImpAdCallFPR4  = Chr()
  loc_D4C172: FLdRfVar var_42C
  loc_D4C175: ConcatVar var_43C
  loc_D4C179: LitI4 1
  loc_D4C17E: LitI4 1
  loc_D4C183: LitVarStr var_4CC, "0.00"
  loc_D4C188: FStVarCopyObj var_45C
  loc_D4C18B: FLdRfVar var_45C
  loc_D4C18E: FLdPr Me
  loc_D4C191: MemLdRfVar from_stack_1.global_292
  loc_D4C194: CVarRef
  loc_D4C199: FLdRfVar var_47C
  loc_D4C19C: ImpAdCallFPR4  = Format(, )
  loc_D4C1A1: FLdRfVar var_47C
  loc_D4C1A4: ConcatVar var_48C
  loc_D4C1A8: LitI4 9
  loc_D4C1AD: FLdRfVar var_49C
  loc_D4C1B0: ImpAdCallFPR4  = Chr()
  loc_D4C1B5: FLdRfVar var_49C
  loc_D4C1B8: ConcatVar var_4AC
  loc_D4C1BC: LitVarI4
  loc_D4C1C4: PopAdLdVar
  loc_D4C1C5: LitVarI4
  loc_D4C1CD: PopAdLdVar
  loc_D4C1CE: FLdPr Me
  loc_D4C1D1: VCallAd Control_ID_ctacteFlex
  loc_D4C1D4: FStAdFunc var_E0
  loc_D4C1D7: FLdPr var_E0
  loc_D4C1DA: LateIdCallLdVar
  loc_D4C1E4: CStrVarTmp
  loc_D4C1E5: CVarStr var_50C
  loc_D4C1E8: ConcatVar var_51C
  loc_D4C1EC: LitI4 9
  loc_D4C1F1: FLdRfVar var_52C
  loc_D4C1F4: ImpAdCallFPR4  = Chr()
  loc_D4C1F9: FLdRfVar var_52C
  loc_D4C1FC: ConcatVar var_53C
  loc_D4C200: LitVarI4
  loc_D4C208: PopAdLdVar
  loc_D4C209: LitVarI4
  loc_D4C211: PopAdLdVar
  loc_D4C212: FLdPr Me
  loc_D4C215: VCallAd Control_ID_ctacteFlex
  loc_D4C218: FStAdFunc var_138
  loc_D4C21B: FLdPr var_138
  loc_D4C21E: LateIdCallLdVar
  loc_D4C228: CStrVarTmp
  loc_D4C229: CVarStr var_59C
  loc_D4C22C: ConcatVar var_5AC
  loc_D4C230: CStrVarTmp
  loc_D4C231: FStStrNoPop var_114
  loc_D4C234: FLdPr Me
  loc_D4C237: MemStStrCopy
  loc_D4C23B: FFree1Str var_114
  loc_D4C23E: FFreeAd var_E0 = ""
  loc_D4C245: FFreeVar var_3FC = "": var_3BC = "": var_40C = "": var_41C = "": var_42C = "": var_45C = "": var_43C = "": var_47C = "": var_48C = "": var_49C = "": var_4BC = "": var_4AC = "": var_50C = "": var_51C = "": var_52C = "": var_54C = "": var_53C = "": var_59C = "": var_5AC = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D4C2AA: FLdPr Me
  loc_D4C2AD: MemLdRfVar from_stack_1.global_56
  loc_D4C2B0: CDargRef
  loc_D4C2B4: FLdPr Me
  loc_D4C2B7: VCallAd Control_ID_CuotasDetalleFlex
  loc_D4C2BA: FStAdFunc var_E0
  loc_D4C2BD: FLdPr var_E0
  loc_D4C2C0: LateIdCall
  loc_D4C2C8: FFree1Ad var_E0
  loc_D4C2CB: FLdRfVar var_114
  loc_D4C2CE: FLdPr Me
  loc_D4C2D1: VCallAd Control_ID_AnticipoTxt
  loc_D4C2D4: FStAdFunc var_E0
  loc_D4C2D7: FLdPr var_E0
  loc_D4C2DA:  = Me.Text
  loc_D4C2DF: ILdRf var_114
  loc_D4C2E2: CR8Str
  loc_D4C2E4: LitI2_Byte 0
  loc_D4C2E6: CR8I2
  loc_D4C2E7: EqR4
  loc_D4C2E8: FFree1Str var_114
  loc_D4C2EB: FFree1Ad var_E0
  loc_D4C2EE: BranchF loc_D4C3A5
  loc_D4C2F1: FLdRfVar var_D4
  loc_D4C2F4: CVarRef
  loc_D4C2F9: FLdRfVar var_F0
  loc_D4C2FC: ImpAdCallFPR4  = Year()
  loc_D4C301: FLdRfVar var_D4
  loc_D4C304: CVarRef
  loc_D4C309: FLdRfVar var_148
  loc_D4C30C: ImpAdCallFPR4  = Month()
  loc_D4C311: FLdRfVar var_D4
  loc_D4C314: CVarRef
  loc_D4C319: FLdRfVar var_198
  loc_D4C31C: ImpAdCallFPR4  = Day()
  loc_D4C321: FLdRfVar var_198
  loc_D4C324: CI2Var
  loc_D4C325: FLdRfVar var_148
  loc_D4C328: CI2Var
  loc_D4C329: FLdRfVar var_F0
  loc_D4C32C: CI2Var
  loc_D4C32D: FLdRfVar var_1A8
  loc_D4C330: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4C335: FLdRfVar var_1DC
  loc_D4C338: FLdRfVar var_14C
  loc_D4C33B: LitVarStr var_134, "VecuTifa"
  loc_D4C340: PopAdLdVar
  loc_D4C341: FLdRfVar var_138
  loc_D4C344: FLdRfVar var_E0
  loc_D4C347: FLdPr Me
  loc_D4C34A: MemLdRfVar from_stack_1.global_76
  loc_D4C34D: NewIfNullPr clstipofapa
  loc_D4C350: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4C355: FLdPr var_E0
  loc_D4C358:  = Me.Fields
  loc_D4C35D: FLdPr var_138
  loc_D4C360: from_stack_2 = Me.Item(from_stack_1)
  loc_D4C365: FLdPr var_14C
  loc_D4C368:  = Me.Value
  loc_D4C36D: FLdRfVar var_168
  loc_D4C370: FLdRfVar var_1DC
  loc_D4C373: CStrVarTmp
  loc_D4C374: PopTmpLdAdStr
  loc_D4C378: FLdRfVar var_1A8
  loc_D4C37B: FnCDateVar
  loc_D4C37D: PopTmpLdAdFPR8
  loc_D4C381: Call Proc_187_54_BF8A3C()
  loc_D4C386: FLdFPR8 var_168
  loc_D4C389: FStFPR8 var_D4
  loc_D4C38C: FFree1Str var_114
  loc_D4C38F: FFreeAd var_E0 = "": var_138 = ""
  loc_D4C398: FFreeVar var_F0 = "": var_148 = "": var_198 = "": var_1A8 = ""
  loc_D4C3A5: FLdPr Me
  loc_D4C3A8: MemLdRfVar from_stack_1.global_96
  loc_D4C3AB: NextI2 var_5F0, loc_D4B6C4
  loc_D4C3B0: LitI4 1
  loc_D4C3B5: LitI4 1
  loc_D4C3BA: LitVarStr var_110, "0.00"
  loc_D4C3BF: FStVarCopyObj var_F0
  loc_D4C3C2: FLdRfVar var_F0
  loc_D4C3C5: FLdRfVar var_CC
  loc_D4C3C8: CVarRef
  loc_D4C3CD: FLdRfVar var_148
  loc_D4C3D0: ImpAdCallFPR4  = Format(, )
  loc_D4C3D5: FLdRfVar var_148
  loc_D4C3D8: CStrVarVal var_114
  loc_D4C3DC: FLdPr Me
  loc_D4C3DF: VCallAd Control_ID_ApremioTxt
  loc_D4C3E2: FStAdFunc var_E0
  loc_D4C3E5: FLdPr var_E0
  loc_D4C3E8: Me.Text = from_stack_1
  loc_D4C3ED: FFree1Str var_114
  loc_D4C3F0: FFree1Ad var_E0
  loc_D4C3F3: FFreeVar var_F0 = ""
  loc_D4C3FA: LitI4 1
  loc_D4C3FF: LitI4 1
  loc_D4C404: LitVarStr var_110, "0.00"
  loc_D4C409: FStVarCopyObj var_F0
  loc_D4C40C: FLdRfVar var_F0
  loc_D4C40F: FLdRfVar var_C4
  loc_D4C412: CVarRef
  loc_D4C417: FLdRfVar var_148
  loc_D4C41A: ImpAdCallFPR4  = Format(, )
  loc_D4C41F: FLdRfVar var_148
  loc_D4C422: CStrVarVal var_114
  loc_D4C426: FLdPr Me
  loc_D4C429: VCallAd Control_ID_InteresTxt
  loc_D4C42C: FStAdFunc var_E0
  loc_D4C42F: FLdPr var_E0
  loc_D4C432: Me.Text = from_stack_1
  loc_D4C437: FFree1Str var_114
  loc_D4C43A: FFree1Ad var_E0
  loc_D4C43D: FFreeVar var_F0 = ""
  loc_D4C444: FLdRfVar var_114
  loc_D4C447: FLdPr Me
  loc_D4C44A: VCallAd Control_ID_DerechoTxt
  loc_D4C44D: FStAdFunc var_E0
  loc_D4C450: FLdPr var_E0
  loc_D4C453:  = Me.Text
  loc_D4C458: FLdRfVar var_150
  loc_D4C45B: FLdPr Me
  loc_D4C45E: VCallAd Control_ID_RecargoTxt
  loc_D4C461: FStAdFunc var_138
  loc_D4C464: FLdPr var_138
  loc_D4C467:  = Me.Text
  loc_D4C46C: FLdRfVar var_1F0
  loc_D4C46F: FLdPr Me
  loc_D4C472: VCallAd Control_ID_DescCapiTxt
  loc_D4C475: FStAdFunc var_14C
  loc_D4C478: FLdPr var_14C
  loc_D4C47B:  = Me.Text
  loc_D4C480: FLdRfVar var_1F4
  loc_D4C483: FLdPr Me
  loc_D4C486: VCallAd Control_ID_DescRecaTxt
  loc_D4C489: FStAdFunc var_1CC
  loc_D4C48C: FLdPr var_1CC
  loc_D4C48F:  = Me.Text
  loc_D4C494: FLdRfVar var_1FC
  loc_D4C497: FLdPr Me
  loc_D4C49A: VCallAd Control_ID_ApremioTxt
  loc_D4C49D: FStAdFunc var_1F8
  loc_D4C4A0: FLdPr var_1F8
  loc_D4C4A3:  = Me.Text
  loc_D4C4A8: FLdRfVar var_5E8
  loc_D4C4AB: FLdPr Me
  loc_D4C4AE: VCallAd Control_ID_InteresTxt
  loc_D4C4B1: FStAdFunc var_5C4
  loc_D4C4B4: FLdPr var_5C4
  loc_D4C4B7:  = Me.Text
  loc_D4C4BC: LitI4 1
  loc_D4C4C1: LitI4 1
  loc_D4C4C6: LitVarStr var_110, "0.00"
  loc_D4C4CB: FStVarCopyObj var_148
  loc_D4C4CE: FLdRfVar var_148
  loc_D4C4D1: ILdRf var_114
  loc_D4C4D4: CR8Str
  loc_D4C4D6: ILdRf var_150
  loc_D4C4D9: CR8Str
  loc_D4C4DB: AddR8
  loc_D4C4DC: ILdRf var_1F0
  loc_D4C4DF: CR8Str
  loc_D4C4E1: SubR4
  loc_D4C4E2: ILdRf var_1F4
  loc_D4C4E5: CR8Str
  loc_D4C4E7: SubR4
  loc_D4C4E8: ILdRf var_1FC
  loc_D4C4EB: CR8Str
  loc_D4C4ED: AddR8
  loc_D4C4EE: ILdRf var_5E8
  loc_D4C4F1: CR8Str
  loc_D4C4F3: AddR8
  loc_D4C4F4: CVarR8
  loc_D4C4F8: FLdRfVar var_198
  loc_D4C4FB: ImpAdCallFPR4  = Format(, )
  loc_D4C500: FLdRfVar var_198
  loc_D4C503: CStrVarVal var_5EC
  loc_D4C507: FLdPr Me
  loc_D4C50A: VCallAd Control_ID_TotalTxt
  loc_D4C50D: FStAdFunc var_5C8
  loc_D4C510: FLdPr var_5C8
  loc_D4C513: Me.Text = from_stack_1
  loc_D4C518: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = "": var_1FC = "": var_5E8 = ""
  loc_D4C529: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = "": var_1F8 = "": var_5C4 = ""
  loc_D4C53A: FFreeVar var_F0 = "": var_148 = ""
  loc_D4C543: LitI2_Byte &HFF
  loc_D4C545: FLdPrThis
  loc_D4C546: VCallAd Control_ID_ImprimirCmd
  loc_D4C549: FStAdFunc var_E0
  loc_D4C54C: FLdPr var_E0
  loc_D4C54F: Me.Enabled = from_stack_1b
  loc_D4C554: FFree1Ad var_E0
  loc_D4C557: FLdRfVar var_F0
  loc_D4C55A: FLdRfVar var_14C
  loc_D4C55D: LitVarStr var_100, "MecaTifa"
  loc_D4C562: PopAdLdVar
  loc_D4C563: FLdRfVar var_138
  loc_D4C566: FLdRfVar var_E0
  loc_D4C569: FLdPr Me
  loc_D4C56C: MemLdRfVar from_stack_1.global_76
  loc_D4C56F: NewIfNullPr clstipofapa
  loc_D4C572: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4C577: FLdPr var_E0
  loc_D4C57A:  = Me.Fields
  loc_D4C57F: FLdPr var_138
  loc_D4C582: from_stack_2 = Me.Item(from_stack_1)
  loc_D4C587: FLdPr var_14C
  loc_D4C58A:  = Me.Value
  loc_D4C58F: FLdRfVar var_F0
  loc_D4C592: LitVarStr var_110, "Especial"
  loc_D4C597: HardType
  loc_D4C598: EqVarBool
  loc_D4C59A: FFreeAd var_E0 = "": var_138 = ""
  loc_D4C5A3: FFree1Var var_F0 = ""
  loc_D4C5A6: BranchF loc_D4DBFB
  loc_D4C5A9: FLdRfVar var_114
  loc_D4C5AC: FLdPr Me
  loc_D4C5AF: VCallAd Control_ID_AnticipoTxt
  loc_D4C5B2: FStAdFunc var_E0
  loc_D4C5B5: FLdPr var_E0
  loc_D4C5B8:  = Me.Text
  loc_D4C5BD: ILdRf var_114
  loc_D4C5C0: CR8Str
  loc_D4C5C2: LitI2_Byte 0
  loc_D4C5C4: CR8I2
  loc_D4C5C5: NeR8
  loc_D4C5C6: FFree1Str var_114
  loc_D4C5C9: FFree1Ad var_E0
  loc_D4C5CC: BranchF loc_D4CC69
  loc_D4C5CF: FLdRfVar var_114
  loc_D4C5D2: FLdPr Me
  loc_D4C5D5: VCallAd Control_ID_AnticipoTxt
  loc_D4C5D8: FStAdFunc var_E0
  loc_D4C5DB: FLdPr var_E0
  loc_D4C5DE:  = Me.Text
  loc_D4C5E3: FLdRfVar var_150
  loc_D4C5E6: FLdPr Me
  loc_D4C5E9: VCallAd Control_ID_DerechoTxt
  loc_D4C5EC: FStAdFunc var_138
  loc_D4C5EF: FLdPr var_138
  loc_D4C5F2:  = Me.Text
  loc_D4C5F7: FLdRfVar var_1F0
  loc_D4C5FA: FLdPr Me
  loc_D4C5FD: VCallAd Control_ID_RecargoTxt
  loc_D4C600: FStAdFunc var_14C
  loc_D4C603: FLdPr var_14C
  loc_D4C606:  = Me.Text
  loc_D4C60B: FLdRfVar var_1F4
  loc_D4C60E: FLdPr Me
  loc_D4C611: VCallAd Control_ID_DescCapiTxt
  loc_D4C614: FStAdFunc var_1CC
  loc_D4C617: FLdPr var_1CC
  loc_D4C61A:  = Me.Text
  loc_D4C61F: FLdRfVar var_1FC
  loc_D4C622: FLdPr Me
  loc_D4C625: VCallAd Control_ID_DescRecaTxt
  loc_D4C628: FStAdFunc var_1F8
  loc_D4C62B: FLdPr var_1F8
  loc_D4C62E:  = Me.Text
  loc_D4C633: LitI4 2
  loc_D4C638: ILdRf var_114
  loc_D4C63B: CR8Str
  loc_D4C63D: LitI2_Byte &H64
  loc_D4C63F: CR8I2
  loc_D4C640: MulR8
  loc_D4C641: ILdRf var_150
  loc_D4C644: CR8Str
  loc_D4C646: ILdRf var_1F0
  loc_D4C649: CR8Str
  loc_D4C64B: AddR8
  loc_D4C64C: ILdRf var_1F4
  loc_D4C64F: CR8Str
  loc_D4C651: SubR4
  loc_D4C652: ILdRf var_1FC
  loc_D4C655: CR8Str
  loc_D4C657: SubR4
  loc_D4C658: DivR8
  loc_D4C659: CVarR8
  loc_D4C65D: FLdRfVar var_148
  loc_D4C660: ImpAdCallFPR4  = Round(, )
  loc_D4C665: FLdRfVar var_148
  loc_D4C668: CR4Var
  loc_D4C669: FLdPr Me
  loc_D4C66C: MemStFPR8 global_156
  loc_D4C66F: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = ""
  loc_D4C67C: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = ""
  loc_D4C689: FFreeVar var_F0 = ""
  loc_D4C690: FLdRfVar var_114
  loc_D4C693: FLdPr Me
  loc_D4C696: VCallAd Control_ID_DerechoTxt
  loc_D4C699: FStAdFunc var_E0
  loc_D4C69C: FLdPr var_E0
  loc_D4C69F:  = Me.Text
  loc_D4C6A4: LitI4 2
  loc_D4C6A9: ILdRf var_114
  loc_D4C6AC: CR8Str
  loc_D4C6AE: FLdPr Me
  loc_D4C6B1: MemLdFPR8 global_156
  loc_D4C6B4: MulR8
  loc_D4C6B5: LitI2_Byte &H64
  loc_D4C6B7: CR8I2
  loc_D4C6B8: DivR8
  loc_D4C6B9: CVarR8
  loc_D4C6BD: FLdRfVar var_148
  loc_D4C6C0: ImpAdCallFPR4  = Round(, )
  loc_D4C6C5: FLdRfVar var_148
  loc_D4C6C8: CR4Var
  loc_D4C6C9: FLdPr Me
  loc_D4C6CC: MemStFPR8 global_196
  loc_D4C6CF: FFree1Str var_114
  loc_D4C6D2: FFree1Ad var_E0
  loc_D4C6D5: FFreeVar var_F0 = ""
  loc_D4C6DC: FLdRfVar var_114
  loc_D4C6DF: FLdPr Me
  loc_D4C6E2: VCallAd Control_ID_RecargoTxt
  loc_D4C6E5: FStAdFunc var_E0
  loc_D4C6E8: FLdPr var_E0
  loc_D4C6EB:  = Me.Text
  loc_D4C6F0: LitI4 2
  loc_D4C6F5: ILdRf var_114
  loc_D4C6F8: CR8Str
  loc_D4C6FA: FLdPr Me
  loc_D4C6FD: MemLdFPR8 global_156
  loc_D4C700: MulR8
  loc_D4C701: LitI2_Byte &H64
  loc_D4C703: CR8I2
  loc_D4C704: DivR8
  loc_D4C705: CVarR8
  loc_D4C709: FLdRfVar var_148
  loc_D4C70C: ImpAdCallFPR4  = Round(, )
  loc_D4C711: FLdRfVar var_148
  loc_D4C714: CR4Var
  loc_D4C715: FLdPr Me
  loc_D4C718: MemStFPR8 global_204
  loc_D4C71B: FFree1Str var_114
  loc_D4C71E: FFree1Ad var_E0
  loc_D4C721: FFreeVar var_F0 = ""
  loc_D4C728: FLdRfVar var_114
  loc_D4C72B: FLdPr Me
  loc_D4C72E: VCallAd Control_ID_DescCapiTxt
  loc_D4C731: FStAdFunc var_E0
  loc_D4C734: FLdPr var_E0
  loc_D4C737:  = Me.Text
  loc_D4C73C: LitI4 2
  loc_D4C741: ILdRf var_114
  loc_D4C744: CR8Str
  loc_D4C746: FLdPr Me
  loc_D4C749: MemLdFPR8 global_156
  loc_D4C74C: MulR8
  loc_D4C74D: LitI2_Byte &H64
  loc_D4C74F: CR8I2
  loc_D4C750: DivR8
  loc_D4C751: CVarR8
  loc_D4C755: FLdRfVar var_148
  loc_D4C758: ImpAdCallFPR4  = Round(, )
  loc_D4C75D: FLdRfVar var_148
  loc_D4C760: CR4Var
  loc_D4C761: FLdPr Me
  loc_D4C764: MemStFPR8 global_212
  loc_D4C767: FFree1Str var_114
  loc_D4C76A: FFree1Ad var_E0
  loc_D4C76D: FFreeVar var_F0 = ""
  loc_D4C774: FLdRfVar var_114
  loc_D4C777: FLdPr Me
  loc_D4C77A: VCallAd Control_ID_DescRecaTxt
  loc_D4C77D: FStAdFunc var_E0
  loc_D4C780: FLdPr var_E0
  loc_D4C783:  = Me.Text
  loc_D4C788: LitI4 2
  loc_D4C78D: ILdRf var_114
  loc_D4C790: CR8Str
  loc_D4C792: FLdPr Me
  loc_D4C795: MemLdFPR8 global_156
  loc_D4C798: MulR8
  loc_D4C799: LitI2_Byte &H64
  loc_D4C79B: CR8I2
  loc_D4C79C: DivR8
  loc_D4C79D: CVarR8
  loc_D4C7A1: FLdRfVar var_148
  loc_D4C7A4: ImpAdCallFPR4  = Round(, )
  loc_D4C7A9: FLdRfVar var_148
  loc_D4C7AC: CR4Var
  loc_D4C7AD: FLdPr Me
  loc_D4C7B0: MemStFPR8 global_220
  loc_D4C7B3: FFree1Str var_114
  loc_D4C7B6: FFree1Ad var_E0
  loc_D4C7B9: FFreeVar var_F0 = ""
  loc_D4C7C0: FLdRfVar var_114
  loc_D4C7C3: FLdPr Me
  loc_D4C7C6: VCallAd Control_ID_ApremioTxt
  loc_D4C7C9: FStAdFunc var_E0
  loc_D4C7CC: FLdPr var_E0
  loc_D4C7CF:  = Me.Text
  loc_D4C7D4: ILdRf var_114
  loc_D4C7D7: CR8Str
  loc_D4C7D9: LitI2_Byte 0
  loc_D4C7DB: CR8I2
  loc_D4C7DC: GtR4
  loc_D4C7DD: FFree1Str var_114
  loc_D4C7E0: FFree1Ad var_E0
  loc_D4C7E3: BranchF loc_D4C7F5
  loc_D4C7E6: FLdPr Me
  loc_D4C7E9: MemLdFPR8 global_336
  loc_D4C7EC: FLdPr Me
  loc_D4C7EF: MemStFPR8 global_284
  loc_D4C7F2: Branch loc_D4C7FE
  loc_D4C7F5: LitI2_Byte 0
  loc_D4C7F7: CR8I2
  loc_D4C7F8: FLdPr Me
  loc_D4C7FB: MemStFPR8 global_284
  loc_D4C7FE: FLdFPR8 var_CC
  loc_D4C801: FLdPr Me
  loc_D4C804: MemLdFPR8 global_284
  loc_D4C807: AddR8
  loc_D4C808: FStFPR8 var_CC
  loc_D4C80B: FLdRfVar var_114
  loc_D4C80E: FLdPr Me
  loc_D4C811: VCallAd Control_ID_AnticipoTxt
  loc_D4C814: FStAdFunc var_E0
  loc_D4C817: FLdPr var_E0
  loc_D4C81A:  = Me.Text
  loc_D4C81F: FLdPr Me
  loc_D4C822: MemLdFPR8 global_196
  loc_D4C825: FLdPr Me
  loc_D4C828: MemLdFPR8 global_204
  loc_D4C82B: AddR8
  loc_D4C82C: FLdPr Me
  loc_D4C82F: MemLdFPR8 global_212
  loc_D4C832: SubR4
  loc_D4C833: FLdPr Me
  loc_D4C836: MemLdFPR8 global_220
  loc_D4C839: SubR4
  loc_D4C83A: CR8R8
  loc_D4C83B: ILdRf var_114
  loc_D4C83E: CR8Str
  loc_D4C840: LtR8
  loc_D4C841: FFree1Str var_114
  loc_D4C844: FFree1Ad var_E0
  loc_D4C847: BranchF loc_D4C895
  loc_D4C84A: FLdRfVar var_114
  loc_D4C84D: FLdPr Me
  loc_D4C850: VCallAd Control_ID_AnticipoTxt
  loc_D4C853: FStAdFunc var_E0
  loc_D4C856: FLdPr var_E0
  loc_D4C859:  = Me.Text
  loc_D4C85E: FLdPr Me
  loc_D4C861: MemLdFPR8 global_196
  loc_D4C864: ILdRf var_114
  loc_D4C867: CR8Str
  loc_D4C869: AddR8
  loc_D4C86A: FLdPr Me
  loc_D4C86D: MemLdFPR8 global_196
  loc_D4C870: FLdPr Me
  loc_D4C873: MemLdFPR8 global_204
  loc_D4C876: AddR8
  loc_D4C877: FLdPr Me
  loc_D4C87A: MemLdFPR8 global_212
  loc_D4C87D: SubR4
  loc_D4C87E: FLdPr Me
  loc_D4C881: MemLdFPR8 global_220
  loc_D4C884: SubR4
  loc_D4C885: SubR4
  loc_D4C886: FLdPr Me
  loc_D4C889: MemStFPR8 global_196
  loc_D4C88C: FFree1Str var_114
  loc_D4C88F: FFree1Ad var_E0
  loc_D4C892: Branch loc_D4C91C
  loc_D4C895: FLdRfVar var_114
  loc_D4C898: FLdPr Me
  loc_D4C89B: VCallAd Control_ID_AnticipoTxt
  loc_D4C89E: FStAdFunc var_E0
  loc_D4C8A1: FLdPr var_E0
  loc_D4C8A4:  = Me.Text
  loc_D4C8A9: FLdPr Me
  loc_D4C8AC: MemLdFPR8 global_196
  loc_D4C8AF: FLdPr Me
  loc_D4C8B2: MemLdFPR8 global_204
  loc_D4C8B5: AddR8
  loc_D4C8B6: FLdPr Me
  loc_D4C8B9: MemLdFPR8 global_212
  loc_D4C8BC: SubR4
  loc_D4C8BD: FLdPr Me
  loc_D4C8C0: MemLdFPR8 global_220
  loc_D4C8C3: SubR4
  loc_D4C8C4: CR8R8
  loc_D4C8C5: ILdRf var_114
  loc_D4C8C8: CR8Str
  loc_D4C8CA: GtR4
  loc_D4C8CB: FFree1Str var_114
  loc_D4C8CE: FFree1Ad var_E0
  loc_D4C8D1: BranchF loc_D4C91C
  loc_D4C8D4: FLdRfVar var_114
  loc_D4C8D7: FLdPr Me
  loc_D4C8DA: VCallAd Control_ID_AnticipoTxt
  loc_D4C8DD: FStAdFunc var_E0
  loc_D4C8E0: FLdPr var_E0
  loc_D4C8E3:  = Me.Text
  loc_D4C8E8: FLdPr Me
  loc_D4C8EB: MemLdFPR8 global_196
  loc_D4C8EE: FLdPr Me
  loc_D4C8F1: MemLdFPR8 global_196
  loc_D4C8F4: FLdPr Me
  loc_D4C8F7: MemLdFPR8 global_204
  loc_D4C8FA: AddR8
  loc_D4C8FB: FLdPr Me
  loc_D4C8FE: MemLdFPR8 global_212
  loc_D4C901: SubR4
  loc_D4C902: FLdPr Me
  loc_D4C905: MemLdFPR8 global_220
  loc_D4C908: SubR4
  loc_D4C909: ILdRf var_114
  loc_D4C90C: CR8Str
  loc_D4C90E: SubR4
  loc_D4C90F: SubR4
  loc_D4C910: FLdPr Me
  loc_D4C913: MemStFPR8 global_196
  loc_D4C916: FFree1Str var_114
  loc_D4C919: FFree1Ad var_E0
  loc_D4C91C: FLdFPR8 var_AC
  loc_D4C91F: FLdPr Me
  loc_D4C922: MemLdFPR8 global_212
  loc_D4C925: AddR8
  loc_D4C926: FStFPR8 var_AC
  loc_D4C929: FLdFPR8 var_BC
  loc_D4C92C: FLdPr Me
  loc_D4C92F: MemLdFPR8 global_220
  loc_D4C932: AddR8
  loc_D4C933: FStFPR8 var_BC
  loc_D4C936: LitVarStr var_100, "0"
  loc_D4C93B: LitI4 9
  loc_D4C940: FLdRfVar var_F0
  loc_D4C943: ImpAdCallFPR4  = Chr()
  loc_D4C948: FLdRfVar var_F0
  loc_D4C94B: ConcatVar var_148
  loc_D4C94F: FLdFPR8 var_D4
  loc_D4C952: CVarDate var_110
  loc_D4C956: ConcatVar var_198
  loc_D4C95A: LitI4 9
  loc_D4C95F: FLdRfVar var_1A8
  loc_D4C962: ImpAdCallFPR4  = Chr()
  loc_D4C967: FLdRfVar var_1A8
  loc_D4C96A: ConcatVar var_1DC
  loc_D4C96E: LitI4 1
  loc_D4C973: LitI4 1
  loc_D4C978: LitVarStr var_134, "0.00"
  loc_D4C97D: FStVarCopyObj var_1EC
  loc_D4C980: FLdRfVar var_1EC
  loc_D4C983: FLdPr Me
  loc_D4C986: MemLdRfVar from_stack_1.global_196
  loc_D4C989: CVarRef
  loc_D4C98E: FLdRfVar var_20C
  loc_D4C991: ImpAdCallFPR4  = Format(, )
  loc_D4C996: FLdRfVar var_20C
  loc_D4C999: ConcatVar var_21C
  loc_D4C99D: LitI4 9
  loc_D4C9A2: FLdRfVar var_22C
  loc_D4C9A5: ImpAdCallFPR4  = Chr()
  loc_D4C9AA: FLdRfVar var_22C
  loc_D4C9AD: ConcatVar var_23C
  loc_D4C9B1: LitI4 1
  loc_D4C9B6: LitI4 1
  loc_D4C9BB: LitVarStr var_188, "0.00"
  loc_D4C9C0: FStVarCopyObj var_24C
  loc_D4C9C3: FLdRfVar var_24C
  loc_D4C9C6: FLdPr Me
  loc_D4C9C9: MemLdRfVar from_stack_1.global_204
  loc_D4C9CC: CVarRef
  loc_D4C9D1: FLdRfVar var_25C
  loc_D4C9D4: ImpAdCallFPR4  = Format(, )
  loc_D4C9D9: FLdRfVar var_25C
  loc_D4C9DC: ConcatVar var_26C
  loc_D4C9E0: LitI4 9
  loc_D4C9E5: FLdRfVar var_27C
  loc_D4C9E8: ImpAdCallFPR4  = Chr()
  loc_D4C9ED: FLdRfVar var_27C
  loc_D4C9F0: ConcatVar var_28C
  loc_D4C9F4: LitI4 1
  loc_D4C9F9: LitI4 1
  loc_D4C9FE: LitVarStr var_1C8, "0.00"
  loc_D4CA03: FStVarCopyObj var_29C
  loc_D4CA06: FLdRfVar var_29C
  loc_D4CA09: FLdPr Me
  loc_D4CA0C: MemLdRfVar from_stack_1.global_212
  loc_D4CA0F: CVarRef
  loc_D4CA14: FLdRfVar var_2AC
  loc_D4CA17: ImpAdCallFPR4  = Format(, )
  loc_D4CA1C: FLdRfVar var_2AC
  loc_D4CA1F: ConcatVar var_2BC
  loc_D4CA23: LitI4 9
  loc_D4CA28: FLdRfVar var_2CC
  loc_D4CA2B: ImpAdCallFPR4  = Chr()
  loc_D4CA30: FLdRfVar var_2CC
  loc_D4CA33: ConcatVar var_2DC
  loc_D4CA37: LitI4 1
  loc_D4CA3C: LitI4 1
  loc_D4CA41: LitVarStr var_2FC, "0.00"
  loc_D4CA46: FStVarCopyObj var_30C
  loc_D4CA49: FLdRfVar var_30C
  loc_D4CA4C: FLdPr Me
  loc_D4CA4F: MemLdRfVar from_stack_1.global_220
  loc_D4CA52: CVarRef
  loc_D4CA57: FLdRfVar var_31C
  loc_D4CA5A: ImpAdCallFPR4  = Format(, )
  loc_D4CA5F: FLdRfVar var_31C
  loc_D4CA62: ConcatVar var_32C
  loc_D4CA66: LitI4 9
  loc_D4CA6B: FLdRfVar var_33C
  loc_D4CA6E: ImpAdCallFPR4  = Chr()
  loc_D4CA73: FLdRfVar var_33C
  loc_D4CA76: ConcatVar var_34C
  loc_D4CA7A: LitI4 1
  loc_D4CA7F: LitI4 1
  loc_D4CA84: LitVarStr var_36C, "0.00"
  loc_D4CA89: FStVarCopyObj var_37C
  loc_D4CA8C: FLdRfVar var_37C
  loc_D4CA8F: FLdPr Me
  loc_D4CA92: MemLdRfVar from_stack_1.global_284
  loc_D4CA95: CVarRef
  loc_D4CA9A: FLdRfVar var_38C
  loc_D4CA9D: ImpAdCallFPR4  = Format(, )
  loc_D4CAA2: FLdRfVar var_38C
  loc_D4CAA5: ConcatVar var_39C
  loc_D4CAA9: LitI4 9
  loc_D4CAAE: FLdRfVar var_3AC
  loc_D4CAB1: ImpAdCallFPR4  = Chr()
  loc_D4CAB6: FLdRfVar var_3AC
  loc_D4CAB9: ConcatVar var_3BC
  loc_D4CABD: LitI4 1
  loc_D4CAC2: LitI4 1
  loc_D4CAC7: LitVarStr var_3EC, "0.00"
  loc_D4CACC: FStVarCopyObj var_3FC
  loc_D4CACF: FLdRfVar var_3FC
  loc_D4CAD2: LitVarI2 var_3DC, 0
  loc_D4CAD7: FLdRfVar var_40C
  loc_D4CADA: ImpAdCallFPR4  = Format(, )
  loc_D4CADF: FLdRfVar var_40C
  loc_D4CAE2: ConcatVar var_41C
  loc_D4CAE6: LitI4 9
  loc_D4CAEB: FLdRfVar var_42C
  loc_D4CAEE: ImpAdCallFPR4  = Chr()
  loc_D4CAF3: FLdRfVar var_42C
  loc_D4CAF6: ConcatVar var_43C
  loc_D4CAFA: LitI4 1
  loc_D4CAFF: LitI4 1
  loc_D4CB04: LitVarStr var_46C, "0.00"
  loc_D4CB09: FStVarCopyObj var_47C
  loc_D4CB0C: FLdRfVar var_47C
  loc_D4CB0F: FLdPr Me
  loc_D4CB12: MemLdFPR8 global_196
  loc_D4CB15: FLdPr Me
  loc_D4CB18: MemLdFPR8 global_204
  loc_D4CB1B: AddR8
  loc_D4CB1C: FLdPr Me
  loc_D4CB1F: MemLdFPR8 global_284
  loc_D4CB22: AddR8
  loc_D4CB23: FLdPr Me
  loc_D4CB26: MemLdFPR8 global_212
  loc_D4CB29: SubR4
  loc_D4CB2A: FLdPr Me
  loc_D4CB2D: MemLdFPR8 global_220
  loc_D4CB30: SubR4
  loc_D4CB31: CVarR8
  loc_D4CB35: FLdRfVar var_48C
  loc_D4CB38: ImpAdCallFPR4  = Format(, )
  loc_D4CB3D: FLdRfVar var_48C
  loc_D4CB40: ConcatVar var_49C
  loc_D4CB44: LitI4 9
  loc_D4CB49: FLdRfVar var_4AC
  loc_D4CB4C: ImpAdCallFPR4  = Chr()
  loc_D4CB51: FLdRfVar var_4AC
  loc_D4CB54: ConcatVar var_4BC
  loc_D4CB58: LitVarI4
  loc_D4CB60: PopAdLdVar
  loc_D4CB61: LitVarI4
  loc_D4CB69: PopAdLdVar
  loc_D4CB6A: FLdPr Me
  loc_D4CB6D: VCallAd Control_ID_ctacteFlex
  loc_D4CB70: FStAdFunc var_E0
  loc_D4CB73: FLdPr var_E0
  loc_D4CB76: LateIdCallLdVar
  loc_D4CB80: CStrVarTmp
  loc_D4CB81: CVarStr var_51C
  loc_D4CB84: ConcatVar var_52C
  loc_D4CB88: LitI4 9
  loc_D4CB8D: FLdRfVar var_53C
  loc_D4CB90: ImpAdCallFPR4  = Chr()
  loc_D4CB95: FLdRfVar var_53C
  loc_D4CB98: ConcatVar var_54C
  loc_D4CB9C: LitVarI4
  loc_D4CBA4: PopAdLdVar
  loc_D4CBA5: LitVarI4
  loc_D4CBAD: PopAdLdVar
  loc_D4CBAE: FLdPr Me
  loc_D4CBB1: VCallAd Control_ID_ctacteFlex
  loc_D4CBB4: FStAdFunc var_138
  loc_D4CBB7: FLdPr var_138
  loc_D4CBBA: LateIdCallLdVar
  loc_D4CBC4: CStrVarTmp
  loc_D4CBC5: CVarStr var_5AC
  loc_D4CBC8: ConcatVar var_5BC
  loc_D4CBCC: CStrVarTmp
  loc_D4CBCD: FStStrNoPop var_114
  loc_D4CBD0: FLdPr Me
  loc_D4CBD3: MemStStrCopy
  loc_D4CBD7: FFree1Str var_114
  loc_D4CBDA: FFreeAd var_E0 = ""
  loc_D4CBE1: FFreeVar var_3FC = "": var_3BC = "": var_40C = "": var_41C = "": var_42C = "": var_45C = "": var_47C = "": var_43C = "": var_48C = "": var_49C = "": var_4AC = "": var_50C = "": var_4BC = "": var_51C = "": var_52C = "": var_53C = "": var_59C = "": var_54C = "": var_5AC = "": var_5BC = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D4CC48: FLdPr Me
  loc_D4CC4B: MemLdRfVar from_stack_1.global_56
  loc_D4CC4E: CDargRef
  loc_D4CC52: FLdPr Me
  loc_D4CC55: VCallAd Control_ID_CuotasDetalleFlex
  loc_D4CC58: FStAdFunc var_E0
  loc_D4CC5B: FLdPr var_E0
  loc_D4CC5E: LateIdCall
  loc_D4CC66: FFree1Ad var_E0
  loc_D4CC69: FLdRfVar var_114
  loc_D4CC6C: FLdPr Me
  loc_D4CC6F: VCallAd Control_ID_DerechoTxt
  loc_D4CC72: FStAdFunc var_E0
  loc_D4CC75: FLdPr var_E0
  loc_D4CC78:  = Me.Text
  loc_D4CC7D: ILdRf var_114
  loc_D4CC80: CR8Str
  loc_D4CC82: FLdPr Me
  loc_D4CC85: MemLdFPR8 global_196
  loc_D4CC88: SubR4
  loc_D4CC89: FLdPr Me
  loc_D4CC8C: MemStFPR8 global_228
  loc_D4CC8F: FFree1Str var_114
  loc_D4CC92: FFree1Ad var_E0
  loc_D4CC95: FLdRfVar var_114
  loc_D4CC98: FLdPr Me
  loc_D4CC9B: VCallAd Control_ID_DescCapiTxt
  loc_D4CC9E: FStAdFunc var_E0
  loc_D4CCA1: FLdPr var_E0
  loc_D4CCA4:  = Me.Text
  loc_D4CCA9: FLdPr Me
  loc_D4CCAC: MemLdFPR8 global_212
  loc_D4CCAF: ILdRf var_114
  loc_D4CCB2: CR8Str
  loc_D4CCB4: AddR8
  loc_D4CCB5: FLdPr Me
  loc_D4CCB8: MemStFPR8 global_236
  loc_D4CCBB: FFree1Str var_114
  loc_D4CCBE: FFree1Ad var_E0
  loc_D4CCC1: FLdRfVar var_114
  loc_D4CCC4: FLdPr Me
  loc_D4CCC7: VCallAd Control_ID_RecargoTxt
  loc_D4CCCA: FStAdFunc var_E0
  loc_D4CCCD: FLdPr var_E0
  loc_D4CCD0:  = Me.Text
  loc_D4CCD5: ILdRf var_114
  loc_D4CCD8: CR8Str
  loc_D4CCDA: FLdPr Me
  loc_D4CCDD: MemLdFPR8 global_204
  loc_D4CCE0: SubR4
  loc_D4CCE1: FLdPr Me
  loc_D4CCE4: MemStFPR8 global_244
  loc_D4CCE7: FFree1Str var_114
  loc_D4CCEA: FFree1Ad var_E0
  loc_D4CCED: FLdRfVar var_114
  loc_D4CCF0: FLdPr Me
  loc_D4CCF3: VCallAd Control_ID_DescRecaTxt
  loc_D4CCF6: FStAdFunc var_E0
  loc_D4CCF9: FLdPr var_E0
  loc_D4CCFC:  = Me.Text
  loc_D4CD01: FLdPr Me
  loc_D4CD04: MemLdFPR8 global_220
  loc_D4CD07: ILdRf var_114
  loc_D4CD0A: CR8Str
  loc_D4CD0C: AddR8
  loc_D4CD0D: FLdPr Me
  loc_D4CD10: MemStFPR8 global_252
  loc_D4CD13: FFree1Str var_114
  loc_D4CD16: FFree1Ad var_E0
  loc_D4CD19: LitI4 2
  loc_D4CD1E: FLdPr Me
  loc_D4CD21: MemLdFPR8 global_228
  loc_D4CD24: FLdPr Me
  loc_D4CD27: MemLdFPR8 global_244
  loc_D4CD2A: AddR8
  loc_D4CD2B: FLdPr Me
  loc_D4CD2E: MemLdFPR8 global_236
  loc_D4CD31: SubR4
  loc_D4CD32: FLdPr Me
  loc_D4CD35: MemLdFPR8 global_252
  loc_D4CD38: SubR4
  loc_D4CD39: CVarR8
  loc_D4CD3D: FLdRfVar var_148
  loc_D4CD40: ImpAdCallFPR4  = Round(, )
  loc_D4CD45: FLdRfVar var_148
  loc_D4CD48: CR4Var
  loc_D4CD49: FLdPr Me
  loc_D4CD4C: MemStFPR8 global_308
  loc_D4CD4F: FFreeVar var_F0 = ""
  loc_D4CD56: FLdPr Me
  loc_D4CD59: VCallAd Control_ID_CuotasFlex
  loc_D4CD5C: FStAdFunc var_E0
  loc_D4CD5F: FLdPr var_E0
  loc_D4CD62: LateIdLdVar var_F0 DispID_10 0
  loc_D4CD69: CI4Var
  loc_D4CD6B: CVarI4
  loc_D4CD6F: PopAdLdVar
  loc_D4CD70: LitVarI4
  loc_D4CD78: PopAdLdVar
  loc_D4CD79: FLdPr Me
  loc_D4CD7C: VCallAd Control_ID_CuotasFlex
  loc_D4CD7F: FStAdFunc var_138
  loc_D4CD82: FLdPr var_138
  loc_D4CD85: LateIdCallLdVar
  loc_D4CD8F: PopAd
  loc_D4CD91: LitI4 2
  loc_D4CD96: FLdPr Me
  loc_D4CD99: MemLdFPR8 global_228
  loc_D4CD9C: FLdRfVar var_148
  loc_D4CD9F: CStrVarTmp
  loc_D4CDA0: FStStrNoPop var_114
  loc_D4CDA3: CR8Str
  loc_D4CDA5: DivR8
  loc_D4CDA6: CVarR8
  loc_D4CDAA: FLdRfVar var_1A8
  loc_D4CDAD: ImpAdCallFPR4  = Round(, )
  loc_D4CDB2: FLdRfVar var_1A8
  loc_D4CDB5: CR4Var
  loc_D4CDB6: FLdPr Me
  loc_D4CDB9: MemStFPR8 global_268
  loc_D4CDBC: FFree1Str var_114
  loc_D4CDBF: FFreeAd var_E0 = ""
  loc_D4CDC6: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4CDD1: FLdPr Me
  loc_D4CDD4: VCallAd Control_ID_CuotasFlex
  loc_D4CDD7: FStAdFunc var_E0
  loc_D4CDDA: FLdPr var_E0
  loc_D4CDDD: LateIdLdVar var_F0 DispID_10 0
  loc_D4CDE4: CI4Var
  loc_D4CDE6: CVarI4
  loc_D4CDEA: PopAdLdVar
  loc_D4CDEB: LitVarI4
  loc_D4CDF3: PopAdLdVar
  loc_D4CDF4: FLdPr Me
  loc_D4CDF7: VCallAd Control_ID_CuotasFlex
  loc_D4CDFA: FStAdFunc var_138
  loc_D4CDFD: FLdPr var_138
  loc_D4CE00: LateIdCallLdVar
  loc_D4CE0A: PopAd
  loc_D4CE0C: LitI4 2
  loc_D4CE11: FLdPr Me
  loc_D4CE14: MemLdFPR8 global_244
  loc_D4CE17: FLdRfVar var_148
  loc_D4CE1A: CStrVarTmp
  loc_D4CE1B: FStStrNoPop var_114
  loc_D4CE1E: CR8Str
  loc_D4CE20: DivR8
  loc_D4CE21: CVarR8
  loc_D4CE25: FLdRfVar var_1A8
  loc_D4CE28: ImpAdCallFPR4  = Round(, )
  loc_D4CE2D: FLdRfVar var_1A8
  loc_D4CE30: CR4Var
  loc_D4CE31: FLdPr Me
  loc_D4CE34: MemStFPR8 global_276
  loc_D4CE37: FFree1Str var_114
  loc_D4CE3A: FFreeAd var_E0 = ""
  loc_D4CE41: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4CE4C: FLdPr Me
  loc_D4CE4F: VCallAd Control_ID_CuotasFlex
  loc_D4CE52: FStAdFunc var_E0
  loc_D4CE55: FLdPr var_E0
  loc_D4CE58: LateIdLdVar var_F0 DispID_10 0
  loc_D4CE5F: CI4Var
  loc_D4CE61: CVarI4
  loc_D4CE65: PopAdLdVar
  loc_D4CE66: LitVarI4
  loc_D4CE6E: PopAdLdVar
  loc_D4CE6F: FLdPr Me
  loc_D4CE72: VCallAd Control_ID_CuotasFlex
  loc_D4CE75: FStAdFunc var_138
  loc_D4CE78: FLdPr var_138
  loc_D4CE7B: LateIdCallLdVar
  loc_D4CE85: PopAd
  loc_D4CE87: FLdRfVar var_198
  loc_D4CE8A: FLdRfVar var_1F8
  loc_D4CE8D: LitVarStr var_178, "MecaTifa"
  loc_D4CE92: PopAdLdVar
  loc_D4CE93: FLdRfVar var_1CC
  loc_D4CE96: FLdRfVar var_14C
  loc_D4CE99: FLdPr Me
  loc_D4CE9C: MemLdRfVar from_stack_1.global_76
  loc_D4CE9F: NewIfNullPr clstipofapa
  loc_D4CEA2: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4CEA7: FLdPr var_14C
  loc_D4CEAA:  = Me.Fields
  loc_D4CEAF: FLdPr var_1CC
  loc_D4CEB2: from_stack_2 = Me.Item(from_stack_1)
  loc_D4CEB7: FLdPr var_1F8
  loc_D4CEBA:  = Me.Value
  loc_D4CEBF: FLdRfVar var_1A8
  loc_D4CEC2: FLdRfVar var_5CC
  loc_D4CEC5: LitVarStr var_188, "InteTifa"
  loc_D4CECA: PopAdLdVar
  loc_D4CECB: FLdRfVar var_5C8
  loc_D4CECE: FLdRfVar var_5C4
  loc_D4CED1: FLdPr Me
  loc_D4CED4: MemLdRfVar from_stack_1.global_76
  loc_D4CED7: NewIfNullPr clstipofapa
  loc_D4CEDA: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4CEDF: FLdPr var_5C4
  loc_D4CEE2:  = Me.Fields
  loc_D4CEE7: FLdPr var_5C8
  loc_D4CEEA: from_stack_2 = Me.Item(from_stack_1)
  loc_D4CEEF: FLdPr var_5CC
  loc_D4CEF2:  = Me.Value
  loc_D4CEF7: FLdPr Me
  loc_D4CEFA: MemLdR8 global_308
  loc_D4CEFD: FLdRfVar var_1A8
  loc_D4CF00: CR4Var
  loc_D4CF01: PopFPR8
  loc_D4CF02: FLdRfVar var_198
  loc_D4CF05: CStrVarTmp
  loc_D4CF06: FStStrNoPop var_150
  loc_D4CF09: FLdRfVar var_148
  loc_D4CF0C: CStrVarTmp
  loc_D4CF0D: FStStrNoPop var_114
  loc_D4CF10: CR8Str
  loc_D4CF12: CI2R8
  loc_D4CF13: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_D4CF18: CVarRef
  loc_D4CF1D: FStVar var_94
  loc_D4CF21: FFreeStr var_114 = ""
  loc_D4CF28: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = "": var_5C4 = "": var_5C8 = "": var_1F8 = ""
  loc_D4CF3B: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4CF46: LitVarI2 var_100, 1
  loc_D4CF4B: PopAdLdVar
  loc_D4CF4C: FLdRfVar var_94
  loc_D4CF4F: VarIndexLdVar
  loc_D4CF55: PopAd
  loc_D4CF57: FLdPr Me
  loc_D4CF5A: VCallAd Control_ID_CuotasFlex
  loc_D4CF5D: FStAdFunc var_E0
  loc_D4CF60: FLdPr var_E0
  loc_D4CF63: LateIdLdVar var_148 DispID_10 0
  loc_D4CF6A: CI4Var
  loc_D4CF6C: CVarI4
  loc_D4CF70: PopAdLdVar
  loc_D4CF71: LitVarI4
  loc_D4CF79: PopAdLdVar
  loc_D4CF7A: FLdPr Me
  loc_D4CF7D: VCallAd Control_ID_CuotasFlex
  loc_D4CF80: FStAdFunc var_138
  loc_D4CF83: FLdPr var_138
  loc_D4CF86: LateIdCallLdVar
  loc_D4CF90: PopAd
  loc_D4CF92: LitI4 2
  loc_D4CF97: FLdRfVar var_F0
  loc_D4CF9A: FnCDblVar
  loc_D4CF9C: FLdRfVar var_198
  loc_D4CF9F: CStrVarTmp
  loc_D4CFA0: FStStrNoPop var_114
  loc_D4CFA3: CR8Str
  loc_D4CFA5: DivR8
  loc_D4CFA6: CVarR8
  loc_D4CFAA: FLdRfVar var_1DC
  loc_D4CFAD: ImpAdCallFPR4  = Round(, )
  loc_D4CFB2: FLdRfVar var_1DC
  loc_D4CFB5: CR4Var
  loc_D4CFB6: FStFPR8 var_DC
  loc_D4CFB9: FFree1Str var_114
  loc_D4CFBC: FFreeAd var_E0 = ""
  loc_D4CFC3: FFreeVar var_F0 = "": var_148 = "": var_198 = "": var_1A8 = ""
  loc_D4CFD0: LitI2_Byte 1
  loc_D4CFD2: FLdPr Me
  loc_D4CFD5: MemLdRfVar from_stack_1.global_96
  loc_D4CFD8: FLdPr Me
  loc_D4CFDB: VCallAd Control_ID_CuotasFlex
  loc_D4CFDE: FStAdFunc var_E0
  loc_D4CFE1: FLdPr var_E0
  loc_D4CFE4: LateIdLdVar var_F0 DispID_10 0
  loc_D4CFEB: CI4Var
  loc_D4CFED: CVarI4
  loc_D4CFF1: PopAdLdVar
  loc_D4CFF2: LitVarI4
  loc_D4CFFA: PopAdLdVar
  loc_D4CFFB: FLdPr Me
  loc_D4CFFE: VCallAd Control_ID_CuotasFlex
  loc_D4D001: FStAdFunc var_138
  loc_D4D004: FLdPr var_138
  loc_D4D007: LateIdCallLdVar
  loc_D4D011: CStrVarTmp
  loc_D4D012: FStStrNoPop var_114
  loc_D4D015: CR8Str
  loc_D4D017: CI2R8
  loc_D4D018: FFree1Str var_114
  loc_D4D01B: FFreeAd var_E0 = ""
  loc_D4D022: FFreeVar var_F0 = ""
  loc_D4D029: ForI2 var_5FC
  loc_D4D02F: FLdFPR8 var_A4
  loc_D4D032: FLdPr Me
  loc_D4D035: MemLdFPR8 global_268
  loc_D4D038: AddR8
  loc_D4D039: FStFPR8 var_A4
  loc_D4D03C: FLdFPR8 var_B4
  loc_D4D03F: FLdPr Me
  loc_D4D042: MemLdFPR8 global_276
  loc_D4D045: AddR8
  loc_D4D046: FStFPR8 var_B4
  loc_D4D049: FLdPr Me
  loc_D4D04C: VCallAd Control_ID_CuotasFlex
  loc_D4D04F: FStAdFunc var_E0
  loc_D4D052: FLdPr var_E0
  loc_D4D055: LateIdLdVar var_F0 DispID_10 0
  loc_D4D05C: CI4Var
  loc_D4D05E: CVarI4
  loc_D4D062: PopAdLdVar
  loc_D4D063: LitVarI4
  loc_D4D06B: PopAdLdVar
  loc_D4D06C: FLdPr Me
  loc_D4D06F: VCallAd Control_ID_CuotasFlex
  loc_D4D072: FStAdFunc var_138
  loc_D4D075: FLdPr var_138
  loc_D4D078: LateIdCallLdVar
  loc_D4D082: PopAd
  loc_D4D084: FLdPr Me
  loc_D4D087: MemLdI2 global_96
  loc_D4D08A: CR8I2
  loc_D4D08B: FLdRfVar var_148
  loc_D4D08E: CStrVarTmp
  loc_D4D08F: FStStrNoPop var_114
  loc_D4D092: CR8Str
  loc_D4D094: EqR4
  loc_D4D095: FFree1Str var_114
  loc_D4D098: FFreeAd var_E0 = ""
  loc_D4D09F: FFreeVar var_F0 = ""
  loc_D4D0A6: BranchF loc_D4D1A3
  loc_D4D0A9: FLdFPR8 var_A4
  loc_D4D0AC: FLdPr Me
  loc_D4D0AF: MemLdFPR8 global_228
  loc_D4D0B2: GtR4
  loc_D4D0B3: BranchF loc_D4D0D0
  loc_D4D0B6: FLdPr Me
  loc_D4D0B9: MemLdFPR8 global_268
  loc_D4D0BC: FLdFPR8 var_A4
  loc_D4D0BF: FLdPr Me
  loc_D4D0C2: MemLdFPR8 global_228
  loc_D4D0C5: SubR4
  loc_D4D0C6: SubR4
  loc_D4D0C7: FLdPr Me
  loc_D4D0CA: MemStFPR8 global_268
  loc_D4D0CD: Branch loc_D4D0F4
  loc_D4D0D0: FLdFPR8 var_A4
  loc_D4D0D3: FLdPr Me
  loc_D4D0D6: MemLdFPR8 global_228
  loc_D4D0D9: LtR8
  loc_D4D0DA: BranchF loc_D4D0F4
  loc_D4D0DD: FLdPr Me
  loc_D4D0E0: MemLdFPR8 global_268
  loc_D4D0E3: FLdPr Me
  loc_D4D0E6: MemLdFPR8 global_228
  loc_D4D0E9: FLdFPR8 var_A4
  loc_D4D0EC: SubR4
  loc_D4D0ED: AddR8
  loc_D4D0EE: FLdPr Me
  loc_D4D0F1: MemStFPR8 global_268
  loc_D4D0F4: FLdRfVar var_114
  loc_D4D0F7: FLdPr Me
  loc_D4D0FA: VCallAd Control_ID_DescCapiTxt
  loc_D4D0FD: FStAdFunc var_E0
  loc_D4D100: FLdPr var_E0
  loc_D4D103:  = Me.Text
  loc_D4D108: FLdFPR8 var_AC
  loc_D4D10B: ILdRf var_114
  loc_D4D10E: CR8Str
  loc_D4D110: GtR4
  loc_D4D111: FFree1Str var_114
  loc_D4D114: FFree1Ad var_E0
  loc_D4D117: BranchF loc_D4D14D
  loc_D4D11A: FLdRfVar var_114
  loc_D4D11D: FLdPr Me
  loc_D4D120: VCallAd Control_ID_DescCapiTxt
  loc_D4D123: FStAdFunc var_E0
  loc_D4D126: FLdPr var_E0
  loc_D4D129:  = Me.Text
  loc_D4D12E: FLdPr Me
  loc_D4D131: MemLdFPR8 global_320
  loc_D4D134: FLdFPR8 var_AC
  loc_D4D137: ILdRf var_114
  loc_D4D13A: CR8Str
  loc_D4D13C: SubR4
  loc_D4D13D: SubR4
  loc_D4D13E: FLdPr Me
  loc_D4D141: MemStFPR8 global_320
  loc_D4D144: FFree1Str var_114
  loc_D4D147: FFree1Ad var_E0
  loc_D4D14A: Branch loc_D4D1A3
  loc_D4D14D: FLdRfVar var_114
  loc_D4D150: FLdPr Me
  loc_D4D153: VCallAd Control_ID_DescCapiTxt
  loc_D4D156: FStAdFunc var_E0
  loc_D4D159: FLdPr var_E0
  loc_D4D15C:  = Me.Text
  loc_D4D161: FLdFPR8 var_AC
  loc_D4D164: ILdRf var_114
  loc_D4D167: CR8Str
  loc_D4D169: LtR8
  loc_D4D16A: FFree1Str var_114
  loc_D4D16D: FFree1Ad var_E0
  loc_D4D170: BranchF loc_D4D1A3
  loc_D4D173: FLdRfVar var_114
  loc_D4D176: FLdPr Me
  loc_D4D179: VCallAd Control_ID_DescCapiTxt
  loc_D4D17C: FStAdFunc var_E0
  loc_D4D17F: FLdPr var_E0
  loc_D4D182:  = Me.Text
  loc_D4D187: FLdPr Me
  loc_D4D18A: MemLdFPR8 global_320
  loc_D4D18D: ILdRf var_114
  loc_D4D190: CR8Str
  loc_D4D192: FLdFPR8 var_AC
  loc_D4D195: SubR4
  loc_D4D196: AddR8
  loc_D4D197: FLdPr Me
  loc_D4D19A: MemStFPR8 global_320
  loc_D4D19D: FFree1Str var_114
  loc_D4D1A0: FFree1Ad var_E0
  loc_D4D1A3: FLdRfVar var_F0
  loc_D4D1A6: FLdRfVar var_14C
  loc_D4D1A9: LitVarStr var_100, "DecaTifa"
  loc_D4D1AE: PopAdLdVar
  loc_D4D1AF: FLdRfVar var_138
  loc_D4D1B2: FLdRfVar var_E0
  loc_D4D1B5: FLdPr Me
  loc_D4D1B8: MemLdRfVar from_stack_1.global_76
  loc_D4D1BB: NewIfNullPr clstipofapa
  loc_D4D1BE: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4D1C3: FLdPr var_E0
  loc_D4D1C6:  = Me.Fields
  loc_D4D1CB: FLdPr var_138
  loc_D4D1CE: from_stack_2 = Me.Item(from_stack_1)
  loc_D4D1D3: FLdPr var_14C
  loc_D4D1D6:  = Me.Value
  loc_D4D1DB: LitI4 2
  loc_D4D1E0: FLdPr Me
  loc_D4D1E3: MemLdFPR8 global_268
  loc_D4D1E6: FLdRfVar var_F0
  loc_D4D1E9: FnCDblVar
  loc_D4D1EB: MulR8
  loc_D4D1EC: LitI2_Byte &H64
  loc_D4D1EE: CR8I2
  loc_D4D1EF: DivR8
  loc_D4D1F0: CVarR8
  loc_D4D1F4: FLdRfVar var_198
  loc_D4D1F7: ImpAdCallFPR4  = Round(, )
  loc_D4D1FC: FLdRfVar var_198
  loc_D4D1FF: CR4Var
  loc_D4D200: FLdPr Me
  loc_D4D203: MemStFPR8 global_320
  loc_D4D206: FFreeAd var_E0 = "": var_138 = ""
  loc_D4D20F: FFreeVar var_F0 = "": var_148 = ""
  loc_D4D218: FLdFPR8 var_AC
  loc_D4D21B: FLdPr Me
  loc_D4D21E: MemLdFPR8 global_320
  loc_D4D221: AddR8
  loc_D4D222: FStFPR8 var_AC
  loc_D4D225: FLdRfVar var_F0
  loc_D4D228: FLdRfVar var_14C
  loc_D4D22B: LitVarStr var_100, "DereTifa"
  loc_D4D230: PopAdLdVar
  loc_D4D231: FLdRfVar var_138
  loc_D4D234: FLdRfVar var_E0
  loc_D4D237: FLdPr Me
  loc_D4D23A: MemLdRfVar from_stack_1.global_76
  loc_D4D23D: NewIfNullPr clstipofapa
  loc_D4D240: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4D245: FLdPr var_E0
  loc_D4D248:  = Me.Fields
  loc_D4D24D: FLdPr var_138
  loc_D4D250: from_stack_2 = Me.Item(from_stack_1)
  loc_D4D255: FLdPr var_14C
  loc_D4D258:  = Me.Value
  loc_D4D25D: LitI4 2
  loc_D4D262: FLdPr Me
  loc_D4D265: MemLdFPR8 global_276
  loc_D4D268: FLdRfVar var_F0
  loc_D4D26B: FnCDblVar
  loc_D4D26D: MulR8
  loc_D4D26E: LitI2_Byte &H64
  loc_D4D270: CR8I2
  loc_D4D271: DivR8
  loc_D4D272: CVarR8
  loc_D4D276: FLdRfVar var_198
  loc_D4D279: ImpAdCallFPR4  = Round(, )
  loc_D4D27E: FLdRfVar var_198
  loc_D4D281: CR4Var
  loc_D4D282: FLdPr Me
  loc_D4D285: MemStFPR8 global_328
  loc_D4D288: FFreeAd var_E0 = "": var_138 = ""
  loc_D4D291: FFreeVar var_F0 = "": var_148 = ""
  loc_D4D29A: FLdFPR8 var_BC
  loc_D4D29D: FLdPr Me
  loc_D4D2A0: MemLdFPR8 global_328
  loc_D4D2A3: AddR8
  loc_D4D2A4: FStFPR8 var_BC
  loc_D4D2A7: FLdPr Me
  loc_D4D2AA: VCallAd Control_ID_CuotasFlex
  loc_D4D2AD: FStAdFunc var_E0
  loc_D4D2B0: FLdPr var_E0
  loc_D4D2B3: LateIdLdVar var_F0 DispID_10 0
  loc_D4D2BA: CI4Var
  loc_D4D2BC: CVarI4
  loc_D4D2C0: PopAdLdVar
  loc_D4D2C1: LitVarI4
  loc_D4D2C9: PopAdLdVar
  loc_D4D2CA: FLdPr Me
  loc_D4D2CD: VCallAd Control_ID_CuotasFlex
  loc_D4D2D0: FStAdFunc var_138
  loc_D4D2D3: FLdPr var_138
  loc_D4D2D6: LateIdCallLdVar
  loc_D4D2E0: PopAd
  loc_D4D2E2: FLdPr Me
  loc_D4D2E5: MemLdI2 global_96
  loc_D4D2E8: CR8I2
  loc_D4D2E9: FLdRfVar var_148
  loc_D4D2EC: CStrVarTmp
  loc_D4D2ED: FStStrNoPop var_114
  loc_D4D2F0: CR8Str
  loc_D4D2F2: EqR4
  loc_D4D2F3: FFree1Str var_114
  loc_D4D2F6: FFreeAd var_E0 = ""
  loc_D4D2FD: FFreeVar var_F0 = ""
  loc_D4D304: BranchF loc_D4D401
  loc_D4D307: FLdFPR8 var_B4
  loc_D4D30A: FLdPr Me
  loc_D4D30D: MemLdFPR8 global_244
  loc_D4D310: GtR4
  loc_D4D311: BranchF loc_D4D32E
  loc_D4D314: FLdPr Me
  loc_D4D317: MemLdFPR8 global_276
  loc_D4D31A: FLdFPR8 var_B4
  loc_D4D31D: FLdPr Me
  loc_D4D320: MemLdFPR8 global_244
  loc_D4D323: SubR4
  loc_D4D324: SubR4
  loc_D4D325: FLdPr Me
  loc_D4D328: MemStFPR8 global_276
  loc_D4D32B: Branch loc_D4D352
  loc_D4D32E: FLdFPR8 var_B4
  loc_D4D331: FLdPr Me
  loc_D4D334: MemLdFPR8 global_244
  loc_D4D337: LtR8
  loc_D4D338: BranchF loc_D4D352
  loc_D4D33B: FLdPr Me
  loc_D4D33E: MemLdFPR8 global_276
  loc_D4D341: FLdPr Me
  loc_D4D344: MemLdFPR8 global_244
  loc_D4D347: FLdFPR8 var_B4
  loc_D4D34A: SubR4
  loc_D4D34B: AddR8
  loc_D4D34C: FLdPr Me
  loc_D4D34F: MemStFPR8 global_276
  loc_D4D352: FLdRfVar var_114
  loc_D4D355: FLdPr Me
  loc_D4D358: VCallAd Control_ID_DescRecaTxt
  loc_D4D35B: FStAdFunc var_E0
  loc_D4D35E: FLdPr var_E0
  loc_D4D361:  = Me.Text
  loc_D4D366: FLdFPR8 var_BC
  loc_D4D369: ILdRf var_114
  loc_D4D36C: CR8Str
  loc_D4D36E: GtR4
  loc_D4D36F: FFree1Str var_114
  loc_D4D372: FFree1Ad var_E0
  loc_D4D375: BranchF loc_D4D3AB
  loc_D4D378: FLdRfVar var_114
  loc_D4D37B: FLdPr Me
  loc_D4D37E: VCallAd Control_ID_DescRecaTxt
  loc_D4D381: FStAdFunc var_E0
  loc_D4D384: FLdPr var_E0
  loc_D4D387:  = Me.Text
  loc_D4D38C: FLdPr Me
  loc_D4D38F: MemLdFPR8 global_328
  loc_D4D392: FLdFPR8 var_BC
  loc_D4D395: ILdRf var_114
  loc_D4D398: CR8Str
  loc_D4D39A: SubR4
  loc_D4D39B: SubR4
  loc_D4D39C: FLdPr Me
  loc_D4D39F: MemStFPR8 global_328
  loc_D4D3A2: FFree1Str var_114
  loc_D4D3A5: FFree1Ad var_E0
  loc_D4D3A8: Branch loc_D4D401
  loc_D4D3AB: FLdRfVar var_114
  loc_D4D3AE: FLdPr Me
  loc_D4D3B1: VCallAd Control_ID_DescRecaTxt
  loc_D4D3B4: FStAdFunc var_E0
  loc_D4D3B7: FLdPr var_E0
  loc_D4D3BA:  = Me.Text
  loc_D4D3BF: FLdFPR8 var_BC
  loc_D4D3C2: ILdRf var_114
  loc_D4D3C5: CR8Str
  loc_D4D3C7: LtR8
  loc_D4D3C8: FFree1Str var_114
  loc_D4D3CB: FFree1Ad var_E0
  loc_D4D3CE: BranchF loc_D4D401
  loc_D4D3D1: FLdRfVar var_114
  loc_D4D3D4: FLdPr Me
  loc_D4D3D7: VCallAd Control_ID_DescRecaTxt
  loc_D4D3DA: FStAdFunc var_E0
  loc_D4D3DD: FLdPr var_E0
  loc_D4D3E0:  = Me.Text
  loc_D4D3E5: FLdPr Me
  loc_D4D3E8: MemLdFPR8 global_328
  loc_D4D3EB: ILdRf var_114
  loc_D4D3EE: CR8Str
  loc_D4D3F0: FLdFPR8 var_BC
  loc_D4D3F3: SubR4
  loc_D4D3F4: AddR8
  loc_D4D3F5: FLdPr Me
  loc_D4D3F8: MemStFPR8 global_328
  loc_D4D3FB: FFree1Str var_114
  loc_D4D3FE: FFree1Ad var_E0
  loc_D4D401: FLdRfVar var_114
  loc_D4D404: FLdPr Me
  loc_D4D407: VCallAd Control_ID_CuotApreTxt
  loc_D4D40A: FStAdFunc var_E0
  loc_D4D40D: FLdPr var_E0
  loc_D4D410:  = Me.Text
  loc_D4D415: ILdRf var_114
  loc_D4D418: CR8Str
  loc_D4D41A: LitI2_Byte 0
  loc_D4D41C: CR8I2
  loc_D4D41D: GtR4
  loc_D4D41E: FFree1Str var_114
  loc_D4D421: FFree1Ad var_E0
  loc_D4D424: BranchF loc_D4D534
  loc_D4D427: FLdRfVar var_114
  loc_D4D42A: FLdPr Me
  loc_D4D42D: VCallAd Control_ID_AnticipoTxt
  loc_D4D430: FStAdFunc var_E0
  loc_D4D433: FLdPr var_E0
  loc_D4D436:  = Me.Text
  loc_D4D43B: ILdRf var_114
  loc_D4D43E: CR8Str
  loc_D4D440: LitI2_Byte 0
  loc_D4D442: CR8I2
  loc_D4D443: GtR4
  loc_D4D444: FFree1Str var_114
  loc_D4D447: FFree1Ad var_E0
  loc_D4D44A: BranchF loc_D4D492
  loc_D4D44D: FLdRfVar var_114
  loc_D4D450: FLdPr Me
  loc_D4D453: VCallAd Control_ID_CuotApreTxt
  loc_D4D456: FStAdFunc var_E0
  loc_D4D459: FLdPr var_E0
  loc_D4D45C:  = Me.Text
  loc_D4D461: FLdPr Me
  loc_D4D464: MemLdI2 global_96
  loc_D4D467: CR8I2
  loc_D4D468: ILdRf var_114
  loc_D4D46B: CR8Str
  loc_D4D46D: LeR8
  loc_D4D46E: FFree1Str var_114
  loc_D4D471: FFree1Ad var_E0
  loc_D4D474: BranchF loc_D4D486
  loc_D4D477: FLdPr Me
  loc_D4D47A: MemLdFPR8 global_344
  loc_D4D47D: FLdPr Me
  loc_D4D480: MemStFPR8 global_284
  loc_D4D483: Branch loc_D4D48F
  loc_D4D486: LitI2_Byte 0
  loc_D4D488: CR8I2
  loc_D4D489: FLdPr Me
  loc_D4D48C: MemStFPR8 global_284
  loc_D4D48F: Branch loc_D4D527
  loc_D4D492: FLdPr Me
  loc_D4D495: MemLdI2 global_96
  loc_D4D498: LitI2_Byte 1
  loc_D4D49A: EqI2
  loc_D4D49B: BranchF loc_D4D4E5
  loc_D4D49E: FLdPr Me
  loc_D4D4A1: MemLdFPR8 global_336
  loc_D4D4A4: FLdPr Me
  loc_D4D4A7: MemStFPR8 global_284
  loc_D4D4AA: FLdRfVar var_114
  loc_D4D4AD: FLdPr Me
  loc_D4D4B0: VCallAd Control_ID_CuotApreTxt
  loc_D4D4B3: FStAdFunc var_E0
  loc_D4D4B6: FLdPr var_E0
  loc_D4D4B9:  = Me.Text
  loc_D4D4BE: ILdRf var_114
  loc_D4D4C1: CI2Str
  loc_D4D4C3: LitI2_Byte 1
  loc_D4D4C5: EqI2
  loc_D4D4C6: FFree1Str var_114
  loc_D4D4C9: FFree1Ad var_E0
  loc_D4D4CC: BranchF loc_D4D4E2
  loc_D4D4CF: FLdPr Me
  loc_D4D4D2: MemLdFPR8 global_284
  loc_D4D4D5: FLdPr Me
  loc_D4D4D8: MemLdFPR8 global_344
  loc_D4D4DB: AddR8
  loc_D4D4DC: FLdPr Me
  loc_D4D4DF: MemStFPR8 global_284
  loc_D4D4E2: Branch loc_D4D527
  loc_D4D4E5: FLdRfVar var_114
  loc_D4D4E8: FLdPr Me
  loc_D4D4EB: VCallAd Control_ID_CuotApreTxt
  loc_D4D4EE: FStAdFunc var_E0
  loc_D4D4F1: FLdPr var_E0
  loc_D4D4F4:  = Me.Text
  loc_D4D4F9: FLdPr Me
  loc_D4D4FC: MemLdI2 global_96
  loc_D4D4FF: CR8I2
  loc_D4D500: ILdRf var_114
  loc_D4D503: CR8Str
  loc_D4D505: LeR8
  loc_D4D506: FFree1Str var_114
  loc_D4D509: FFree1Ad var_E0
  loc_D4D50C: BranchF loc_D4D51E
  loc_D4D50F: FLdPr Me
  loc_D4D512: MemLdFPR8 global_344
  loc_D4D515: FLdPr Me
  loc_D4D518: MemStFPR8 global_284
  loc_D4D51B: Branch loc_D4D527
  loc_D4D51E: LitI2_Byte 0
  loc_D4D520: CR8I2
  loc_D4D521: FLdPr Me
  loc_D4D524: MemStFPR8 global_284
  loc_D4D527: FLdFPR8 var_CC
  loc_D4D52A: FLdPr Me
  loc_D4D52D: MemLdFPR8 global_284
  loc_D4D530: AddR8
  loc_D4D531: FStFPR8 var_CC
  loc_D4D534: LitI4 2
  loc_D4D539: FLdFPR8 var_C4
  loc_D4D53C: FLdFPR8 var_DC
  loc_D4D53F: AddR8
  loc_D4D540: CVarR8
  loc_D4D544: FLdRfVar var_148
  loc_D4D547: ImpAdCallFPR4  = Round(, )
  loc_D4D54C: FLdRfVar var_148
  loc_D4D54F: CR4Var
  loc_D4D550: FStFPR8 var_C4
  loc_D4D553: FFreeVar var_F0 = ""
  loc_D4D55A: LitI4 2
  loc_D4D55F: FLdPr Me
  loc_D4D562: MemLdFPR8 global_268
  loc_D4D565: FLdPr Me
  loc_D4D568: MemLdFPR8 global_276
  loc_D4D56B: AddR8
  loc_D4D56C: FLdPr Me
  loc_D4D56F: MemLdFPR8 global_320
  loc_D4D572: SubR4
  loc_D4D573: FLdPr Me
  loc_D4D576: MemLdFPR8 global_328
  loc_D4D579: SubR4
  loc_D4D57A: FLdPr Me
  loc_D4D57D: MemLdFPR8 global_284
  loc_D4D580: AddR8
  loc_D4D581: FLdFPR8 var_DC
  loc_D4D584: AddR8
  loc_D4D585: CVarR8
  loc_D4D589: FLdRfVar var_148
  loc_D4D58C: ImpAdCallFPR4  = Round(, )
  loc_D4D591: FLdRfVar var_148
  loc_D4D594: CR4Var
  loc_D4D595: FLdPr Me
  loc_D4D598: MemStFPR8 global_292
  loc_D4D59B: FFreeVar var_F0 = ""
  loc_D4D5A2: FLdRfVar var_114
  loc_D4D5A5: FLdPr Me
  loc_D4D5A8: VCallAd Control_ID_AnticipoTxt
  loc_D4D5AB: FStAdFunc var_E0
  loc_D4D5AE: FLdPr var_E0
  loc_D4D5B1:  = Me.Text
  loc_D4D5B6: ILdRf var_114
  loc_D4D5B9: CR8Str
  loc_D4D5BB: LitI2_Byte 0
  loc_D4D5BD: CR8I2
  loc_D4D5BE: NeR8
  loc_D4D5BF: FFree1Str var_114
  loc_D4D5C2: FFree1Ad var_E0
  loc_D4D5C5: BranchF loc_D4D668
  loc_D4D5C8: FLdRfVar var_D4
  loc_D4D5CB: CVarRef
  loc_D4D5D0: FLdRfVar var_F0
  loc_D4D5D3: ImpAdCallFPR4  = Year()
  loc_D4D5D8: FLdRfVar var_D4
  loc_D4D5DB: CVarRef
  loc_D4D5E0: FLdRfVar var_148
  loc_D4D5E3: ImpAdCallFPR4  = Month()
  loc_D4D5E8: LitI2_Byte &HF
  loc_D4D5EA: FLdRfVar var_148
  loc_D4D5ED: CI2Var
  loc_D4D5EE: FLdRfVar var_F0
  loc_D4D5F1: CI2Var
  loc_D4D5F2: FLdRfVar var_198
  loc_D4D5F5: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4D5FA: FLdRfVar var_1A8
  loc_D4D5FD: FLdRfVar var_14C
  loc_D4D600: LitVarStr var_124, "VecuTifa"
  loc_D4D605: PopAdLdVar
  loc_D4D606: FLdRfVar var_138
  loc_D4D609: FLdRfVar var_E0
  loc_D4D60C: FLdPr Me
  loc_D4D60F: MemLdRfVar from_stack_1.global_76
  loc_D4D612: NewIfNullPr clstipofapa
  loc_D4D615: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4D61A: FLdPr var_E0
  loc_D4D61D:  = Me.Fields
  loc_D4D622: FLdPr var_138
  loc_D4D625: from_stack_2 = Me.Item(from_stack_1)
  loc_D4D62A: FLdPr var_14C
  loc_D4D62D:  = Me.Value
  loc_D4D632: FLdRfVar var_168
  loc_D4D635: FLdRfVar var_1A8
  loc_D4D638: CStrVarTmp
  loc_D4D639: PopTmpLdAdStr
  loc_D4D63D: FLdRfVar var_198
  loc_D4D640: FnCDateVar
  loc_D4D642: PopTmpLdAdFPR8
  loc_D4D646: Call Proc_187_54_BF8A3C()
  loc_D4D64B: FLdFPR8 var_168
  loc_D4D64E: FStFPR8 var_D4
  loc_D4D651: FFree1Str var_114
  loc_D4D654: FFreeAd var_E0 = "": var_138 = ""
  loc_D4D65D: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4D668: FLdPr Me
  loc_D4D66B: MemLdI2 global_96
  loc_D4D66E: CVarI2 var_100
  loc_D4D671: LitI4 9
  loc_D4D676: FLdRfVar var_F0
  loc_D4D679: ImpAdCallFPR4  = Chr()
  loc_D4D67E: FLdRfVar var_F0
  loc_D4D681: ConcatVar var_148
  loc_D4D685: FLdFPR8 var_D4
  loc_D4D688: CVarDate var_110
  loc_D4D68C: ConcatVar var_198
  loc_D4D690: LitI4 9
  loc_D4D695: FLdRfVar var_1A8
  loc_D4D698: ImpAdCallFPR4  = Chr()
  loc_D4D69D: FLdRfVar var_1A8
  loc_D4D6A0: ConcatVar var_1DC
  loc_D4D6A4: LitI4 1
  loc_D4D6A9: LitI4 1
  loc_D4D6AE: LitVarStr var_134, "0.00"
  loc_D4D6B3: FStVarCopyObj var_1EC
  loc_D4D6B6: FLdRfVar var_1EC
  loc_D4D6B9: FLdPr Me
  loc_D4D6BC: MemLdRfVar from_stack_1.global_268
  loc_D4D6BF: CVarRef
  loc_D4D6C4: FLdRfVar var_20C
  loc_D4D6C7: ImpAdCallFPR4  = Format(, )
  loc_D4D6CC: FLdRfVar var_20C
  loc_D4D6CF: ConcatVar var_21C
  loc_D4D6D3: LitI4 9
  loc_D4D6D8: FLdRfVar var_22C
  loc_D4D6DB: ImpAdCallFPR4  = Chr()
  loc_D4D6E0: FLdRfVar var_22C
  loc_D4D6E3: ConcatVar var_23C
  loc_D4D6E7: LitI4 1
  loc_D4D6EC: LitI4 1
  loc_D4D6F1: LitVarStr var_188, "0.00"
  loc_D4D6F6: FStVarCopyObj var_24C
  loc_D4D6F9: FLdRfVar var_24C
  loc_D4D6FC: FLdPr Me
  loc_D4D6FF: MemLdRfVar from_stack_1.global_276
  loc_D4D702: CVarRef
  loc_D4D707: FLdRfVar var_25C
  loc_D4D70A: ImpAdCallFPR4  = Format(, )
  loc_D4D70F: FLdRfVar var_25C
  loc_D4D712: ConcatVar var_26C
  loc_D4D716: LitI4 9
  loc_D4D71B: FLdRfVar var_27C
  loc_D4D71E: ImpAdCallFPR4  = Chr()
  loc_D4D723: FLdRfVar var_27C
  loc_D4D726: ConcatVar var_28C
  loc_D4D72A: LitI4 1
  loc_D4D72F: LitI4 1
  loc_D4D734: LitVarStr var_1C8, "0.00"
  loc_D4D739: FStVarCopyObj var_29C
  loc_D4D73C: FLdRfVar var_29C
  loc_D4D73F: FLdPr Me
  loc_D4D742: MemLdRfVar from_stack_1.global_320
  loc_D4D745: CVarRef
  loc_D4D74A: FLdRfVar var_2AC
  loc_D4D74D: ImpAdCallFPR4  = Format(, )
  loc_D4D752: FLdRfVar var_2AC
  loc_D4D755: ConcatVar var_2BC
  loc_D4D759: LitI4 9
  loc_D4D75E: FLdRfVar var_2CC
  loc_D4D761: ImpAdCallFPR4  = Chr()
  loc_D4D766: FLdRfVar var_2CC
  loc_D4D769: ConcatVar var_2DC
  loc_D4D76D: LitI4 1
  loc_D4D772: LitI4 1
  loc_D4D777: LitVarStr var_2FC, "0.00"
  loc_D4D77C: FStVarCopyObj var_30C
  loc_D4D77F: FLdRfVar var_30C
  loc_D4D782: FLdPr Me
  loc_D4D785: MemLdRfVar from_stack_1.global_328
  loc_D4D788: CVarRef
  loc_D4D78D: FLdRfVar var_31C
  loc_D4D790: ImpAdCallFPR4  = Format(, )
  loc_D4D795: FLdRfVar var_31C
  loc_D4D798: ConcatVar var_32C
  loc_D4D79C: LitI4 9
  loc_D4D7A1: FLdRfVar var_33C
  loc_D4D7A4: ImpAdCallFPR4  = Chr()
  loc_D4D7A9: FLdRfVar var_33C
  loc_D4D7AC: ConcatVar var_34C
  loc_D4D7B0: LitI4 1
  loc_D4D7B5: LitI4 1
  loc_D4D7BA: LitVarStr var_36C, "0.00"
  loc_D4D7BF: FStVarCopyObj var_37C
  loc_D4D7C2: FLdRfVar var_37C
  loc_D4D7C5: FLdPr Me
  loc_D4D7C8: MemLdRfVar from_stack_1.global_284
  loc_D4D7CB: CVarRef
  loc_D4D7D0: FLdRfVar var_38C
  loc_D4D7D3: ImpAdCallFPR4  = Format(, )
  loc_D4D7D8: FLdRfVar var_38C
  loc_D4D7DB: ConcatVar var_39C
  loc_D4D7DF: LitI4 9
  loc_D4D7E4: FLdRfVar var_3AC
  loc_D4D7E7: ImpAdCallFPR4  = Chr()
  loc_D4D7EC: FLdRfVar var_3AC
  loc_D4D7EF: ConcatVar var_3BC
  loc_D4D7F3: LitI4 1
  loc_D4D7F8: LitI4 1
  loc_D4D7FD: LitVarStr var_3EC, "0.00"
  loc_D4D802: FStVarCopyObj var_3DC
  loc_D4D805: FLdRfVar var_3DC
  loc_D4D808: FLdRfVar var_DC
  loc_D4D80B: CVarRef
  loc_D4D810: FLdRfVar var_3FC
  loc_D4D813: ImpAdCallFPR4  = Format(, )
  loc_D4D818: FLdRfVar var_3FC
  loc_D4D81B: ConcatVar var_40C
  loc_D4D81F: LitI4 9
  loc_D4D824: FLdRfVar var_41C
  loc_D4D827: ImpAdCallFPR4  = Chr()
  loc_D4D82C: FLdRfVar var_41C
  loc_D4D82F: ConcatVar var_42C
  loc_D4D833: LitI4 1
  loc_D4D838: LitI4 1
  loc_D4D83D: LitVarStr var_46C, "0.00"
  loc_D4D842: FStVarCopyObj var_43C
  loc_D4D845: FLdRfVar var_43C
  loc_D4D848: FLdPr Me
  loc_D4D84B: MemLdRfVar from_stack_1.global_292
  loc_D4D84E: CVarRef
  loc_D4D853: FLdRfVar var_45C
  loc_D4D856: ImpAdCallFPR4  = Format(, )
  loc_D4D85B: FLdRfVar var_45C
  loc_D4D85E: ConcatVar var_47C
  loc_D4D862: LitI4 9
  loc_D4D867: FLdRfVar var_48C
  loc_D4D86A: ImpAdCallFPR4  = Chr()
  loc_D4D86F: FLdRfVar var_48C
  loc_D4D872: ConcatVar var_49C
  loc_D4D876: LitVarI4
  loc_D4D87E: PopAdLdVar
  loc_D4D87F: LitVarI4
  loc_D4D887: PopAdLdVar
  loc_D4D888: FLdPr Me
  loc_D4D88B: VCallAd Control_ID_ctacteFlex
  loc_D4D88E: FStAdFunc var_E0
  loc_D4D891: FLdPr var_E0
  loc_D4D894: LateIdCallLdVar
  loc_D4D89E: CStrVarTmp
  loc_D4D89F: CVarStr var_4BC
  loc_D4D8A2: ConcatVar var_50C
  loc_D4D8A6: LitI4 9
  loc_D4D8AB: FLdRfVar var_51C
  loc_D4D8AE: ImpAdCallFPR4  = Chr()
  loc_D4D8B3: FLdRfVar var_51C
  loc_D4D8B6: ConcatVar var_52C
  loc_D4D8BA: LitVarI4
  loc_D4D8C2: PopAdLdVar
  loc_D4D8C3: LitVarI4
  loc_D4D8CB: PopAdLdVar
  loc_D4D8CC: FLdPr Me
  loc_D4D8CF: VCallAd Control_ID_ctacteFlex
  loc_D4D8D2: FStAdFunc var_138
  loc_D4D8D5: FLdPr var_138
  loc_D4D8D8: LateIdCallLdVar
  loc_D4D8E2: CStrVarTmp
  loc_D4D8E3: CVarStr var_54C
  loc_D4D8E6: ConcatVar var_59C
  loc_D4D8EA: CStrVarTmp
  loc_D4D8EB: FStStrNoPop var_114
  loc_D4D8EE: FLdPr Me
  loc_D4D8F1: MemStStrCopy
  loc_D4D8F5: FFree1Str var_114
  loc_D4D8F8: FFreeAd var_E0 = ""
  loc_D4D8FF: FFreeVar var_3BC = "": var_3FC = "": var_40C = "": var_41C = "": var_43C = "": var_42C = "": var_45C = "": var_47C = "": var_48C = "": var_4AC = "": var_49C = "": var_4BC = "": var_50C = "": var_51C = "": var_53C = "": var_52C = "": var_54C = "": var_59C = "": var_F0 = "": var_148 = "": var_198 = "": var_1A8 = "": var_1EC = "": var_1DC = "": var_20C = "": var_21C = "": var_22C = "": var_24C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = "": var_29C = "": var_28C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_30C = "": var_2DC = "": var_31C = "": var_32C = "": var_33C = "": var_37C = "": var_34C = "": var_38C = "": var_39C = "": var_3AC = ""
  loc_D4D962: FLdPr Me
  loc_D4D965: MemLdRfVar from_stack_1.global_56
  loc_D4D968: CDargRef
  loc_D4D96C: FLdPr Me
  loc_D4D96F: VCallAd Control_ID_CuotasDetalleFlex
  loc_D4D972: FStAdFunc var_E0
  loc_D4D975: FLdPr var_E0
  loc_D4D978: LateIdCall
  loc_D4D980: FFree1Ad var_E0
  loc_D4D983: FLdRfVar var_114
  loc_D4D986: FLdPr Me
  loc_D4D989: VCallAd Control_ID_AnticipoTxt
  loc_D4D98C: FStAdFunc var_E0
  loc_D4D98F: FLdPr var_E0
  loc_D4D992:  = Me.Text
  loc_D4D997: ILdRf var_114
  loc_D4D99A: CR8Str
  loc_D4D99C: LitI2_Byte 0
  loc_D4D99E: CR8I2
  loc_D4D99F: EqR4
  loc_D4D9A0: FFree1Str var_114
  loc_D4D9A3: FFree1Ad var_E0
  loc_D4D9A6: BranchF loc_D4DA49
  loc_D4D9A9: FLdRfVar var_D4
  loc_D4D9AC: CVarRef
  loc_D4D9B1: FLdRfVar var_F0
  loc_D4D9B4: ImpAdCallFPR4  = Year()
  loc_D4D9B9: FLdRfVar var_D4
  loc_D4D9BC: CVarRef
  loc_D4D9C1: FLdRfVar var_148
  loc_D4D9C4: ImpAdCallFPR4  = Month()
  loc_D4D9C9: LitI2_Byte &HF
  loc_D4D9CB: FLdRfVar var_148
  loc_D4D9CE: CI2Var
  loc_D4D9CF: FLdRfVar var_F0
  loc_D4D9D2: CI2Var
  loc_D4D9D3: FLdRfVar var_198
  loc_D4D9D6: ImpAdCallFPR4  = DateSerial(, , )
  loc_D4D9DB: FLdRfVar var_1A8
  loc_D4D9DE: FLdRfVar var_14C
  loc_D4D9E1: LitVarStr var_124, "VecuTifa"
  loc_D4D9E6: PopAdLdVar
  loc_D4D9E7: FLdRfVar var_138
  loc_D4D9EA: FLdRfVar var_E0
  loc_D4D9ED: FLdPr Me
  loc_D4D9F0: MemLdRfVar from_stack_1.global_76
  loc_D4D9F3: NewIfNullPr clstipofapa
  loc_D4D9F6: from_stack_1v = clstipofapa.RsFrmGet()
  loc_D4D9FB: FLdPr var_E0
  loc_D4D9FE:  = Me.Fields
  loc_D4DA03: FLdPr var_138
  loc_D4DA06: from_stack_2 = Me.Item(from_stack_1)
  loc_D4DA0B: FLdPr var_14C
  loc_D4DA0E:  = Me.Value
  loc_D4DA13: FLdRfVar var_168
  loc_D4DA16: FLdRfVar var_1A8
  loc_D4DA19: CStrVarTmp
  loc_D4DA1A: PopTmpLdAdStr
  loc_D4DA1E: FLdRfVar var_198
  loc_D4DA21: FnCDateVar
  loc_D4DA23: PopTmpLdAdFPR8
  loc_D4DA27: Call Proc_187_54_BF8A3C()
  loc_D4DA2C: FLdFPR8 var_168
  loc_D4DA2F: FStFPR8 var_D4
  loc_D4DA32: FFree1Str var_114
  loc_D4DA35: FFreeAd var_E0 = "": var_138 = ""
  loc_D4DA3E: FFreeVar var_F0 = "": var_148 = "": var_198 = ""
  loc_D4DA49: FLdPr Me
  loc_D4DA4C: MemLdRfVar from_stack_1.global_96
  loc_D4DA4F: NextI2 var_5FC, loc_D4D02F
  loc_D4DA54: LitI4 1
  loc_D4DA59: LitI4 1
  loc_D4DA5E: LitVarStr var_110, "0.00"
  loc_D4DA63: FStVarCopyObj var_F0
  loc_D4DA66: FLdRfVar var_F0
  loc_D4DA69: FLdRfVar var_CC
  loc_D4DA6C: CVarRef
  loc_D4DA71: FLdRfVar var_148
  loc_D4DA74: ImpAdCallFPR4  = Format(, )
  loc_D4DA79: FLdRfVar var_148
  loc_D4DA7C: CStrVarVal var_114
  loc_D4DA80: FLdPr Me
  loc_D4DA83: VCallAd Control_ID_ApremioTxt
  loc_D4DA86: FStAdFunc var_E0
  loc_D4DA89: FLdPr var_E0
  loc_D4DA8C: Me.Text = from_stack_1
  loc_D4DA91: FFree1Str var_114
  loc_D4DA94: FFree1Ad var_E0
  loc_D4DA97: FFreeVar var_F0 = ""
  loc_D4DA9E: LitI4 1
  loc_D4DAA3: LitI4 1
  loc_D4DAA8: LitVarStr var_110, "0.00"
  loc_D4DAAD: FStVarCopyObj var_F0
  loc_D4DAB0: FLdRfVar var_F0
  loc_D4DAB3: FLdRfVar var_C4
  loc_D4DAB6: CVarRef
  loc_D4DABB: FLdRfVar var_148
  loc_D4DABE: ImpAdCallFPR4  = Format(, )
  loc_D4DAC3: FLdRfVar var_148
  loc_D4DAC6: CStrVarVal var_114
  loc_D4DACA: FLdPr Me
  loc_D4DACD: VCallAd Control_ID_InteresTxt
  loc_D4DAD0: FStAdFunc var_E0
  loc_D4DAD3: FLdPr var_E0
  loc_D4DAD6: Me.Text = from_stack_1
  loc_D4DADB: FFree1Str var_114
  loc_D4DADE: FFree1Ad var_E0
  loc_D4DAE1: FFreeVar var_F0 = ""
  loc_D4DAE8: FLdRfVar var_114
  loc_D4DAEB: FLdPr Me
  loc_D4DAEE: VCallAd Control_ID_DerechoTxt
  loc_D4DAF1: FStAdFunc var_E0
  loc_D4DAF4: FLdPr var_E0
  loc_D4DAF7:  = Me.Text
  loc_D4DAFC: FLdRfVar var_150
  loc_D4DAFF: FLdPr Me
  loc_D4DB02: VCallAd Control_ID_RecargoTxt
  loc_D4DB05: FStAdFunc var_138
  loc_D4DB08: FLdPr var_138
  loc_D4DB0B:  = Me.Text
  loc_D4DB10: FLdRfVar var_1F0
  loc_D4DB13: FLdPr Me
  loc_D4DB16: VCallAd Control_ID_DescCapiTxt
  loc_D4DB19: FStAdFunc var_14C
  loc_D4DB1C: FLdPr var_14C
  loc_D4DB1F:  = Me.Text
  loc_D4DB24: FLdRfVar var_1F4
  loc_D4DB27: FLdPr Me
  loc_D4DB2A: VCallAd Control_ID_DescRecaTxt
  loc_D4DB2D: FStAdFunc var_1CC
  loc_D4DB30: FLdPr var_1CC
  loc_D4DB33:  = Me.Text
  loc_D4DB38: FLdRfVar var_1FC
  loc_D4DB3B: FLdPr Me
  loc_D4DB3E: VCallAd Control_ID_ApremioTxt
  loc_D4DB41: FStAdFunc var_1F8
  loc_D4DB44: FLdPr var_1F8
  loc_D4DB47:  = Me.Text
  loc_D4DB4C: FLdRfVar var_5E8
  loc_D4DB4F: FLdPr Me
  loc_D4DB52: VCallAd Control_ID_InteresTxt
  loc_D4DB55: FStAdFunc var_5C4
  loc_D4DB58: FLdPr var_5C4
  loc_D4DB5B:  = Me.Text
  loc_D4DB60: LitI4 1
  loc_D4DB65: LitI4 1
  loc_D4DB6A: LitVarStr var_110, "0.00"
  loc_D4DB6F: FStVarCopyObj var_148
  loc_D4DB72: FLdRfVar var_148
  loc_D4DB75: ILdRf var_114
  loc_D4DB78: CR8Str
  loc_D4DB7A: ILdRf var_150
  loc_D4DB7D: CR8Str
  loc_D4DB7F: AddR8
  loc_D4DB80: ILdRf var_1F0
  loc_D4DB83: CR8Str
  loc_D4DB85: SubR4
  loc_D4DB86: ILdRf var_1F4
  loc_D4DB89: CR8Str
  loc_D4DB8B: SubR4
  loc_D4DB8C: ILdRf var_1FC
  loc_D4DB8F: CR8Str
  loc_D4DB91: AddR8
  loc_D4DB92: ILdRf var_5E8
  loc_D4DB95: CR8Str
  loc_D4DB97: AddR8
  loc_D4DB98: CVarR8
  loc_D4DB9C: FLdRfVar var_198
  loc_D4DB9F: ImpAdCallFPR4  = Format(, )
  loc_D4DBA4: FLdRfVar var_198
  loc_D4DBA7: CStrVarVal var_5EC
  loc_D4DBAB: FLdPr Me
  loc_D4DBAE: VCallAd Control_ID_TotalTxt
  loc_D4DBB1: FStAdFunc var_5C8
  loc_D4DBB4: FLdPr var_5C8
  loc_D4DBB7: Me.Text = from_stack_1
  loc_D4DBBC: FFreeStr var_114 = "": var_150 = "": var_1F0 = "": var_1F4 = "": var_1FC = "": var_5E8 = ""
  loc_D4DBCD: FFreeAd var_E0 = "": var_138 = "": var_14C = "": var_1CC = "": var_1F8 = "": var_5C4 = ""
  loc_D4DBDE: FFreeVar var_F0 = "": var_148 = ""
  loc_D4DBE7: LitI2_Byte &HFF
  loc_D4DBE9: FLdPrThis
  loc_D4DBEA: VCallAd Control_ID_ImprimirCmd
  loc_D4DBED: FStAdFunc var_E0
  loc_D4DBF0: FLdPr var_E0
  loc_D4DBF3: Me.Enabled = from_stack_1b
  loc_D4DBF8: FFree1Ad var_E0
  loc_D4DBFB: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 'B42DD0
  'Data Table: 52F1AC
  loc_B42A8C: Call Proc_187_51_B193E8()
  loc_B42A91: Call Proc_187_53_A855B4()
  loc_B42A96: Call Proc_187_52_AF19AC()
  loc_B42A9B: LitI2_Byte 0
  loc_B42A9D: FLdPr Me
  loc_B42AA0: VCallAd Control_ID_SeleTodoChk
  loc_B42AA3: FStAdFunc var_88
  loc_B42AA6: FLdPr var_88
  loc_B42AA9: Me.Value = from_stack_1
  loc_B42AAE: FFree1Ad var_88
  loc_B42AB1: LitStr "0"
  loc_B42AB4: FLdPr Me
  loc_B42AB7: VCallAd Control_ID_CodiTifaTxt
  loc_B42ABA: FStAdFunc var_88
  loc_B42ABD: FLdPr var_88
  loc_B42AC0: Me.Text = from_stack_1
  loc_B42AC5: FFree1Ad var_88
  loc_B42AC8: LitStr vbNullString
  loc_B42ACB: FLdPr Me
  loc_B42ACE: VCallAd Control_ID_DetaTifaLbl
  loc_B42AD1: FStAdFunc var_88
  loc_B42AD4: FLdPr var_88
  loc_B42AD7: Me.Caption = from_stack_1
  loc_B42ADC: FFree1Ad var_88
  loc_B42ADF: LitStr vbNullString
  loc_B42AE2: FLdPr Me
  loc_B42AE5: VCallAd Control_ID_InteTifaLbl
  loc_B42AE8: FStAdFunc var_88
  loc_B42AEB: FLdPr var_88
  loc_B42AEE: Me.Caption = from_stack_1
  loc_B42AF3: FFree1Ad var_88
  loc_B42AF6: LitStr vbNullString
  loc_B42AF9: FLdPr Me
  loc_B42AFC: VCallAd Control_ID_MecaTifaLbl
  loc_B42AFF: FStAdFunc var_88
  loc_B42B02: FLdPr var_88
  loc_B42B05: Me.Caption = from_stack_1
  loc_B42B0A: FFree1Ad var_88
  loc_B42B0D: LitStr "0"
  loc_B42B10: FLdPr Me
  loc_B42B13: VCallAd Control_ID_CuotApreTxt
  loc_B42B16: FStAdFunc var_88
  loc_B42B19: FLdPr var_88
  loc_B42B1C: Me.Text = from_stack_1
  loc_B42B21: FFree1Ad var_88
  loc_B42B24: LitI2_Byte 0
  loc_B42B26: CStrUI1
  loc_B42B28: FStStrNoPop var_8C
  loc_B42B2B: FLdPr Me
  loc_B42B2E: VCallAd Control_ID_AnticipoTxt
  loc_B42B31: FStAdFunc var_88
  loc_B42B34: FLdPr var_88
  loc_B42B37: Me.Text = from_stack_1
  loc_B42B3C: FFree1Str var_8C
  loc_B42B3F: FFree1Ad var_88
  loc_B42B42: LitI4 1
  loc_B42B47: LitI4 1
  loc_B42B4C: LitVarStr var_BC, "###,###,##0.00"
  loc_B42B51: FStVarCopyObj var_CC
  loc_B42B54: FLdRfVar var_CC
  loc_B42B57: LitVarI2 var_AC, 0
  loc_B42B5C: FLdRfVar var_DC
  loc_B42B5F: ImpAdCallFPR4  = Format(, )
  loc_B42B64: FLdRfVar var_DC
  loc_B42B67: CStrVarVal var_8C
  loc_B42B6B: FLdPr Me
  loc_B42B6E: VCallAd Control_ID_DerechoTxt
  loc_B42B71: FStAdFunc var_88
  loc_B42B74: FLdPr var_88
  loc_B42B77: Me.Text = from_stack_1
  loc_B42B7C: FFree1Str var_8C
  loc_B42B7F: FFree1Ad var_88
  loc_B42B82: FFreeVar var_AC = "": var_CC = ""
  loc_B42B8B: LitI4 1
  loc_B42B90: LitI4 1
  loc_B42B95: LitVarStr var_BC, "###,###,##0.00"
  loc_B42B9A: FStVarCopyObj var_CC
  loc_B42B9D: FLdRfVar var_CC
  loc_B42BA0: LitVarI2 var_AC, 0
  loc_B42BA5: FLdRfVar var_DC
  loc_B42BA8: ImpAdCallFPR4  = Format(, )
  loc_B42BAD: FLdRfVar var_DC
  loc_B42BB0: CStrVarVal var_8C
  loc_B42BB4: FLdPr Me
  loc_B42BB7: VCallAd Control_ID_RecargoTxt
  loc_B42BBA: FStAdFunc var_88
  loc_B42BBD: FLdPr var_88
  loc_B42BC0: Me.Text = from_stack_1
  loc_B42BC5: FFree1Str var_8C
  loc_B42BC8: FFree1Ad var_88
  loc_B42BCB: FFreeVar var_AC = "": var_CC = ""
  loc_B42BD4: LitI4 1
  loc_B42BD9: LitI4 1
  loc_B42BDE: LitVarStr var_BC, "###,###,##0.00"
  loc_B42BE3: FStVarCopyObj var_CC
  loc_B42BE6: FLdRfVar var_CC
  loc_B42BE9: LitVarI2 var_AC, 0
  loc_B42BEE: FLdRfVar var_DC
  loc_B42BF1: ImpAdCallFPR4  = Format(, )
  loc_B42BF6: FLdRfVar var_DC
  loc_B42BF9: CStrVarVal var_8C
  loc_B42BFD: FLdPr Me
  loc_B42C00: VCallAd Control_ID_ApremioTxt
  loc_B42C03: FStAdFunc var_88
  loc_B42C06: FLdPr var_88
  loc_B42C09: Me.Text = from_stack_1
  loc_B42C0E: FFree1Str var_8C
  loc_B42C11: FFree1Ad var_88
  loc_B42C14: FFreeVar var_AC = "": var_CC = ""
  loc_B42C1D: LitI4 1
  loc_B42C22: LitI4 1
  loc_B42C27: LitVarStr var_BC, "###,###,##0.00"
  loc_B42C2C: FStVarCopyObj var_CC
  loc_B42C2F: FLdRfVar var_CC
  loc_B42C32: LitVarStr var_9C, "0"
  loc_B42C37: FStVarCopyObj var_AC
  loc_B42C3A: FLdRfVar var_AC
  loc_B42C3D: FLdRfVar var_DC
  loc_B42C40: ImpAdCallFPR4  = Format(, )
  loc_B42C45: FLdRfVar var_DC
  loc_B42C48: CStrVarVal var_8C
  loc_B42C4C: FLdPr Me
  loc_B42C4F: VCallAd Control_ID_DescCapiTxt
  loc_B42C52: FStAdFunc var_88
  loc_B42C55: FLdPr var_88
  loc_B42C58: Me.Text = from_stack_1
  loc_B42C5D: FFree1Str var_8C
  loc_B42C60: FFree1Ad var_88
  loc_B42C63: FFreeVar var_AC = "": var_CC = ""
  loc_B42C6C: LitI4 1
  loc_B42C71: LitI4 1
  loc_B42C76: LitVarStr var_BC, "###,###,##0.00"
  loc_B42C7B: FStVarCopyObj var_CC
  loc_B42C7E: FLdRfVar var_CC
  loc_B42C81: LitVarStr var_9C, "0"
  loc_B42C86: FStVarCopyObj var_AC
  loc_B42C89: FLdRfVar var_AC
  loc_B42C8C: FLdRfVar var_DC
  loc_B42C8F: ImpAdCallFPR4  = Format(, )
  loc_B42C94: FLdRfVar var_DC
  loc_B42C97: CStrVarVal var_8C
  loc_B42C9B: FLdPr Me
  loc_B42C9E: VCallAd Control_ID_DescRecaTxt
  loc_B42CA1: FStAdFunc var_88
  loc_B42CA4: FLdPr var_88
  loc_B42CA7: Me.Text = from_stack_1
  loc_B42CAC: FFree1Str var_8C
  loc_B42CAF: FFree1Ad var_88
  loc_B42CB2: FFreeVar var_AC = "": var_CC = ""
  loc_B42CBB: LitI4 1
  loc_B42CC0: LitI4 1
  loc_B42CC5: LitVarStr var_BC, "###,###,##0.00"
  loc_B42CCA: FStVarCopyObj var_CC
  loc_B42CCD: FLdRfVar var_CC
  loc_B42CD0: LitVarStr var_9C, "0"
  loc_B42CD5: FStVarCopyObj var_AC
  loc_B42CD8: FLdRfVar var_AC
  loc_B42CDB: FLdRfVar var_DC
  loc_B42CDE: ImpAdCallFPR4  = Format(, )
  loc_B42CE3: FLdRfVar var_DC
  loc_B42CE6: CStrVarVal var_8C
  loc_B42CEA: FLdPr Me
  loc_B42CED: VCallAd Control_ID_InteresTxt
  loc_B42CF0: FStAdFunc var_88
  loc_B42CF3: FLdPr var_88
  loc_B42CF6: Me.Text = from_stack_1
  loc_B42CFB: FFree1Str var_8C
  loc_B42CFE: FFree1Ad var_88
  loc_B42D01: FFreeVar var_AC = "": var_CC = ""
  loc_B42D0A: LitI4 1
  loc_B42D0F: LitI4 1
  loc_B42D14: LitVarStr var_BC, "###,###,##0.00"
  loc_B42D19: FStVarCopyObj var_CC
  loc_B42D1C: FLdRfVar var_CC
  loc_B42D1F: LitVarStr var_9C, "0"
  loc_B42D24: FStVarCopyObj var_AC
  loc_B42D27: FLdRfVar var_AC
  loc_B42D2A: FLdRfVar var_DC
  loc_B42D2D: ImpAdCallFPR4  = Format(, )
  loc_B42D32: FLdRfVar var_DC
  loc_B42D35: CStrVarVal var_8C
  loc_B42D39: FLdPr Me
  loc_B42D3C: VCallAd Control_ID_TotalTxt
  loc_B42D3F: FStAdFunc var_88
  loc_B42D42: FLdPr var_88
  loc_B42D45: Me.Text = from_stack_1
  loc_B42D4A: FFree1Str var_8C
  loc_B42D4D: FFree1Ad var_88
  loc_B42D50: FFreeVar var_AC = "": var_CC = ""
  loc_B42D59: LitI4 0
  loc_B42D5E: LitI4 3
  loc_B42D63: FLdRfVar var_E0
  loc_B42D66: Redim
  loc_B42D70: FLdPr Me
  loc_B42D73: VCallAd Control_ID_CuotasFlex
  loc_B42D76: CVarAd
  loc_B42D7A: ParmAry1St
  loc_B42D80: FLdPr Me
  loc_B42D83: VCallAd Control_ID_CuotApreTxt
  loc_B42D86: CVarAd
  loc_B42D8A: ParmAry1St
  loc_B42D90: FLdPr Me
  loc_B42D93: VCallAd Control_ID_AnticipoTxt
  loc_B42D96: CVarAd
  loc_B42D9A: ParmAry1St
  loc_B42DA0: FLdPr Me
  loc_B42DA3: VCallAd Control_ID_ImprimirCmd
  loc_B42DA6: CVarAd
  loc_B42DAA: ParmAry1St
  loc_B42DB0: FLdRfVar var_E0
  loc_B42DB3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B42DB8: FLdRfVar var_E0
  loc_B42DBB: Erase
  loc_B42DBC: FLdPr Me
  loc_B42DBF: VCallAd Control_ID_FechVencMsk
  loc_B42DC2: CVarAd
  loc_B42DC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_B42DCB: FFree1Var var_AC = ""
  loc_B42DCE: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABD014
  'Data Table: 52F1AC
  loc_ABCF1C: FLdPr Me
  loc_ABCF1F: VCallAd Control_ID_FechVencMsk
  loc_ABCF22: FStAdFunc var_88
  loc_ABCF25: FLdPr var_88
  loc_ABCF28: LateIdLdVar var_98 DispID_13 -32767
  loc_ABCF2F: CBoolVar
  loc_ABCF31: LitI2_Byte &HFF
  loc_ABCF33: EqI2
  loc_ABCF34: FFree1Ad var_88
  loc_ABCF37: FFree1Var var_98 = ""
  loc_ABCF3A: BranchF loc_ABD012
  loc_ABCF3D: LitVarStr var_A8, vbNullString
  loc_ABCF42: PopAdLdVar
  loc_ABCF43: FLdPr Me
  loc_ABCF46: VCallAd Control_ID_FechVencMsk
  loc_ABCF49: FStAdFunc var_88
  loc_ABCF4C: FLdPr var_88
  loc_ABCF4F: LateIdSt
  loc_ABCF54: FFree1Ad var_88
  loc_ABCF57: FLdPr Me
  loc_ABCF5A: VCallAd Control_ID_FechVencMsk
  loc_ABCF5D: FStAdFunc var_88
  loc_ABCF60: FLdPr var_88
  loc_ABCF63: LateIdLdVar var_98 DispID_22 0
  loc_ABCF6A: CStrVarTmp
  loc_ABCF6B: FStStrNoPop var_BC
  loc_ABCF6E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABCF73: FStStrNoPop var_C0
  loc_ABCF76: FLdPr Me
  loc_ABCF79: MemStStrCopy
  loc_ABCF7D: FFreeStr var_BC = ""
  loc_ABCF84: FFree1Ad var_88
  loc_ABCF87: FFree1Var var_98 = ""
  loc_ABCF8A: LitVarStr var_A8, "##/##/####"
  loc_ABCF8F: PopAdLdVar
  loc_ABCF90: FLdPr Me
  loc_ABCF93: VCallAd Control_ID_FechVencMsk
  loc_ABCF96: FStAdFunc var_88
  loc_ABCF99: FLdPr var_88
  loc_ABCF9C: LateIdSt
  loc_ABCFA1: FFree1Ad var_88
  loc_ABCFA4: LitVarI2 var_A8, 10
  loc_ABCFA9: PopAdLdVar
  loc_ABCFAA: FLdPr Me
  loc_ABCFAD: VCallAd Control_ID_FechVencMsk
  loc_ABCFB0: FStAdFunc var_88
  loc_ABCFB3: FLdPr var_88
  loc_ABCFB6: LateIdSt
  loc_ABCFBB: FFree1Ad var_88
  loc_ABCFBE: FLdPr Me
  loc_ABCFC1: MemLdStr global_368
  loc_ABCFC4: LitStr vbNullString
  loc_ABCFC7: NeStr
  loc_ABCFC9: BranchF loc_ABD012
  loc_ABCFCC: FLdPr Me
  loc_ABCFCF: MemLdStr global_368
  loc_ABCFD2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABCFD7: LitI2_Byte 0
  loc_ABCFD9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABCFDE: CStrDate
  loc_ABCFE0: CVarStr var_98
  loc_ABCFE3: PopAdLdVar
  loc_ABCFE4: FLdPr Me
  loc_ABCFE7: VCallAd Control_ID_FechVencMsk
  loc_ABCFEA: FStAdFunc var_88
  loc_ABCFED: FLdPr var_88
  loc_ABCFF0: LateIdSt
  loc_ABCFF5: FFree1Ad var_88
  loc_ABCFF8: FFree1Var var_98 = ""
  loc_ABCFFB: FLdPr Me
  loc_ABCFFE: VCallAd Control_ID_FechVencMsk
  loc_ABD001: CVarAd
  loc_ABD005: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD00A: FFree1Var var_98 = ""
  loc_ABD00D: LitI2_Byte &HFF
  loc_ABD00F: IStI2 arg_C
  loc_ABD012: ExitProcHresult
End Function

Private Sub cmdGenerarBoleto_Click() 'BEED90
  'Data Table: 52F1AC
  loc_BEE58C: LitI2_Byte 0
  loc_BEE58E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEE593: CVarDate var_A8
  loc_BEE597: FLdRfVar var_B8
  loc_BEE59A: ImpAdCallFPR4  = Year()
  loc_BEE59F: FLdRfVar var_B8
  loc_BEE5A2: CI2Var
  loc_BEE5A3: FStI2 var_86
  loc_BEE5A6: FFreeVar var_A8 = ""
  loc_BEE5AD: LitI2_Byte 0
  loc_BEE5AF: PopTmpLdAd2 var_BA
  loc_BEE5B2: Call FeveCuotMsk_UnknownEvent_8()
  loc_BEE5B7: FLdPr Me
  loc_BEE5BA: MemLdStr global_368
  loc_BEE5BD: LitStr vbNullString
  loc_BEE5C0: NeStr
  loc_BEE5C2: BranchF loc_BEE5C6
  loc_BEE5C5: ExitProcHresult
  loc_BEE5C6: LitI2_Byte 0
  loc_BEE5C8: PopTmpLdAd2 var_BA
  loc_BEE5CB: Call CucuPersFirmaTxt_Validate(from_stack_1v)
  loc_BEE5D0: FLdPr Me
  loc_BEE5D3: MemLdStr global_368
  loc_BEE5D6: LitStr vbNullString
  loc_BEE5D9: NeStr
  loc_BEE5DB: BranchF loc_BEE5DF
  loc_BEE5DE: ExitProcHresult
  loc_BEE5DF: LitI2_Byte 0
  loc_BEE5E1: PopTmpLdAd2 var_BA
  loc_BEE5E4: Call DetaFirmTxt_Validate(from_stack_1v)
  loc_BEE5E9: FLdPr Me
  loc_BEE5EC: MemLdStr global_368
  loc_BEE5EF: LitStr vbNullString
  loc_BEE5F2: NeStr
  loc_BEE5F4: BranchF loc_BEE5F8
  loc_BEE5F7: ExitProcHresult
  loc_BEE5F8: FLdRfVar var_C4
  loc_BEE5FB: FLdPr Me
  loc_BEE5FE: VCallAd Control_ID_ApremioTxt
  loc_BEE601: FStAdFunc var_C0
  loc_BEE604: FLdPr var_C0
  loc_BEE607:  = Me.Text
  loc_BEE60C: ILdRf var_C4
  loc_BEE60F: CR8Str
  loc_BEE611: LitI2_Byte 0
  loc_BEE613: CR8I2
  loc_BEE614: GtR4
  loc_BEE615: FFree1Str var_C4
  loc_BEE618: FFree1Ad var_C0
  loc_BEE61B: BranchF loc_BEE637
  loc_BEE61E: LitI2_Byte 0
  loc_BEE620: PopTmpLdAd2 var_BA
  loc_BEE623: Call CuotApreTxt_Validate(from_stack_1v)
  loc_BEE628: FLdPr Me
  loc_BEE62B: MemLdStr global_368
  loc_BEE62E: LitStr vbNullString
  loc_BEE631: NeStr
  loc_BEE633: BranchF loc_BEE637
  loc_BEE636: ExitProcHresult
  loc_BEE637: FLdRfVar var_C4
  loc_BEE63A: FLdPr Me
  loc_BEE63D: VCallAd Control_ID_AnticipoTxt
  loc_BEE640: FStAdFunc var_C0
  loc_BEE643: FLdPr var_C0
  loc_BEE646:  = Me.Text
  loc_BEE64B: ILdRf var_C4
  loc_BEE64E: CR8Str
  loc_BEE650: LitI2_Byte 0
  loc_BEE652: CR8I2
  loc_BEE653: GtR4
  loc_BEE654: FFree1Str var_C4
  loc_BEE657: FFree1Ad var_C0
  loc_BEE65A: BranchF loc_BEE676
  loc_BEE65D: LitI2_Byte 0
  loc_BEE65F: PopTmpLdAd2 var_BA
  loc_BEE662: Call AnticipoTxt_Validate(from_stack_1v)
  loc_BEE667: FLdPr Me
  loc_BEE66A: MemLdStr global_368
  loc_BEE66D: LitStr vbNullString
  loc_BEE670: NeStr
  loc_BEE672: BranchF loc_BEE676
  loc_BEE675: ExitProcHresult
  loc_BEE676: FLdRfVar var_BA
  loc_BEE679: FLdPr Me
  loc_BEE67C: VCallAd Control_ID_OrdeObreTxt
  loc_BEE67F: FStAdFunc var_C0
  loc_BEE682: FLdPr var_C0
  loc_BEE685:  = Me.Visible
  loc_BEE68A: FLdI2 var_BA
  loc_BEE68D: LitI2_Byte &HFF
  loc_BEE68F: EqI2
  loc_BEE690: FFree1Ad var_C0
  loc_BEE693: BranchF loc_BEE6AF
  loc_BEE696: LitI2_Byte 0
  loc_BEE698: PopTmpLdAd2 var_BA
  loc_BEE69B: Call OrdeObreTxt_Validate(from_stack_1v)
  loc_BEE6A0: FLdPr Me
  loc_BEE6A3: MemLdStr global_368
  loc_BEE6A6: LitStr vbNullString
  loc_BEE6A9: NeStr
  loc_BEE6AB: BranchF loc_BEE6AF
  loc_BEE6AE: ExitProcHresult
  loc_BEE6AF: FLdRfVar var_BA
  loc_BEE6B2: FLdPr Me
  loc_BEE6B5: VCallAd Control_ID_CodiInmuTxt
  loc_BEE6B8: FStAdFunc var_C0
  loc_BEE6BB: FLdPr var_C0
  loc_BEE6BE:  = Me.Visible
  loc_BEE6C3: FLdI2 var_BA
  loc_BEE6C6: LitI2_Byte &HFF
  loc_BEE6C8: EqI2
  loc_BEE6C9: FFree1Ad var_C0
  loc_BEE6CC: BranchF loc_BEE6E8
  loc_BEE6CF: LitI2_Byte 0
  loc_BEE6D1: PopTmpLdAd2 var_BA
  loc_BEE6D4: Call CodiInmuTxt_Validate(from_stack_1v)
  loc_BEE6D9: FLdPr Me
  loc_BEE6DC: MemLdStr global_368
  loc_BEE6DF: LitStr vbNullString
  loc_BEE6E2: NeStr
  loc_BEE6E4: BranchF loc_BEE6E8
  loc_BEE6E7: ExitProcHresult
  loc_BEE6E8: LitI2_Byte 0
  loc_BEE6EA: FStI2 var_88
  loc_BEE6ED: FLdPr Me
  loc_BEE6F0: VCallAd Control_ID_CuotasDetalleFlex
  loc_BEE6F3: FStAdFunc var_C0
  loc_BEE6F6: FLdPr var_C0
  loc_BEE6F9: LateIdLdVar var_A8 DispID_4 0
  loc_BEE700: CI4Var
  loc_BEE702: LitI4 1
  loc_BEE707: LeI4
  loc_BEE708: FFree1Ad var_C0
  loc_BEE70B: FFree1Var var_A8 = ""
  loc_BEE70E: BranchF loc_BEE743
  loc_BEE711: LitVar_Missing var_114
  loc_BEE714: LitVar_Missing var_F4
  loc_BEE717: LitVarStr var_D4, "InfoGov"
  loc_BEE71C: FStVarCopyObj var_B8
  loc_BEE71F: FLdRfVar var_B8
  loc_BEE722: LitI4 &H30
  loc_BEE727: LitVarStr var_98, "No existe ninguna cuota seleccionada. Reintente..."
  loc_BEE72C: FStVarCopyObj var_A8
  loc_BEE72F: FLdRfVar var_A8
  loc_BEE732: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BEE737: FFreeVar var_A8 = "": var_B8 = "": var_F4 = ""
  loc_BEE742: ExitProcHresult
  loc_BEE743: FLdPr Me
  loc_BEE746: VCallAd Control_ID_ctacteFlex
  loc_BEE749: FStAdFunc var_C0
  loc_BEE74C: FLdPr var_C0
  loc_BEE74F: LateIdLdVar var_A8 DispID_4 0
  loc_BEE756: CI4Var
  loc_BEE758: LitI4 1
  loc_BEE75D: LeI4
  loc_BEE75E: FFree1Ad var_C0
  loc_BEE761: FFree1Var var_A8 = ""
  loc_BEE764: BranchF loc_BEE799
  loc_BEE767: LitVar_Missing var_114
  loc_BEE76A: LitVar_Missing var_F4
  loc_BEE76D: LitVarStr var_D4, "InfoGov"
  loc_BEE772: FStVarCopyObj var_B8
  loc_BEE775: FLdRfVar var_B8
  loc_BEE778: LitI4 &H30
  loc_BEE77D: LitVarStr var_98, "No existe deuda para generar boleto. Reintente..."
  loc_BEE782: FStVarCopyObj var_A8
  loc_BEE785: FLdRfVar var_A8
  loc_BEE788: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BEE78D: FFreeVar var_A8 = "": var_B8 = "": var_F4 = ""
  loc_BEE798: ExitProcHresult
  loc_BEE799: LitI2_Byte 1
  loc_BEE79B: FLdPr Me
  loc_BEE79E: MemLdRfVar from_stack_1.global_96
  loc_BEE7A1: FLdPr Me
  loc_BEE7A4: VCallAd Control_ID_ctacteFlex
  loc_BEE7A7: FStAdFunc var_C0
  loc_BEE7AA: FLdPr var_C0
  loc_BEE7AD: LateIdLdVar var_A8 DispID_4 0
  loc_BEE7B4: CI4Var
  loc_BEE7B6: LitI4 1
  loc_BEE7BB: SubI4
  loc_BEE7BC: CI2I4
  loc_BEE7BD: FFree1Ad var_C0
  loc_BEE7C0: FFree1Var var_A8 = ""
  loc_BEE7C3: ForI2 var_118
  loc_BEE7C9: FLdPr Me
  loc_BEE7CC: MemLdI2 global_96
  loc_BEE7CF: CI4UI1
  loc_BEE7D0: CVarI4
  loc_BEE7D4: PopAdLdVar
  loc_BEE7D5: LitVarI4
  loc_BEE7DD: PopAdLdVar
  loc_BEE7DE: FLdPr Me
  loc_BEE7E1: VCallAd Control_ID_ctacteFlex
  loc_BEE7E4: FStAdFunc var_C0
  loc_BEE7E7: FLdPr var_C0
  loc_BEE7EA: LateIdCallLdVar
  loc_BEE7F4: CStrVarTmp
  loc_BEE7F5: FStStrNoPop var_C4
  loc_BEE7F8: LitStr "Si"
  loc_BEE7FB: EqStr
  loc_BEE7FD: FFree1Str var_C4
  loc_BEE800: FFree1Ad var_C0
  loc_BEE803: FFree1Var var_A8 = ""
  loc_BEE806: BranchF loc_BEE80E
  loc_BEE809: LitI2_Byte &HFF
  loc_BEE80B: FStI2 var_88
  loc_BEE80E: FLdPr Me
  loc_BEE811: MemLdRfVar from_stack_1.global_96
  loc_BEE814: NextI2 var_118, loc_BEE7C9
  loc_BEE819: FLdI2 var_88
  loc_BEE81C: LitI2_Byte 0
  loc_BEE81E: EqI2
  loc_BEE81F: BranchF loc_BEE854
  loc_BEE822: LitVar_Missing var_114
  loc_BEE825: LitVar_Missing var_F4
  loc_BEE828: LitVarStr var_D4, "InfoGov"
  loc_BEE82D: FStVarCopyObj var_B8
  loc_BEE830: FLdRfVar var_B8
  loc_BEE833: LitI4 &H30
  loc_BEE838: LitVarStr var_98, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_BEE83D: FStVarCopyObj var_A8
  loc_BEE840: FLdRfVar var_A8
  loc_BEE843: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BEE848: FFreeVar var_A8 = "": var_B8 = "": var_F4 = ""
  loc_BEE853: ExitProcHresult
  loc_BEE854: LitI2_Byte 0
  loc_BEE856: CR8I2
  loc_BEE857: ImpAdStFPR8 MemVar_D93040
  loc_BEE85A: LitI2_Byte 0
  loc_BEE85C: CR8I2
  loc_BEE85D: ImpAdStFPR8 MemVar_D93048
  loc_BEE860: LitI2_Byte 0
  loc_BEE862: CR8I2
  loc_BEE863: ImpAdStFPR8 MemVar_D93058
  loc_BEE866: LitI2_Byte 0
  loc_BEE868: CR8I2
  loc_BEE869: ImpAdStFPR8 MemVar_D93060
  loc_BEE86C: LitI2_Byte 0
  loc_BEE86E: CR8I2
  loc_BEE86F: ImpAdStFPR8 MemVar_D93070
  loc_BEE872: LitStr "SELECT tmp_ctacteboleto.CodiConc FROM tmp_ctacteboleto "
  loc_BEE875: LitStr " WHERE tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_BEE878: ConcatStr
  loc_BEE879: FStStrNoPop var_C4
  loc_BEE87C: LitStr " GROUP BY  tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiConc"
  loc_BEE87F: ConcatStr
  loc_BEE880: FStStrNoPop var_11C
  loc_BEE883: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiConc"
  loc_BEE886: ConcatStr
  loc_BEE887: FStStrNoPop var_120
  loc_BEE88A: FLdPr Me
  loc_BEE88D: MemLdRfVar from_stack_1.global_64
  loc_BEE890: NewIfNullPr clsctacte
  loc_BEE893: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEE898: FFreeStr var_C4 = "": var_11C = ""
  loc_BEE8A1: FLdRfVar var_124
  loc_BEE8A4: FLdPr Me
  loc_BEE8A7: MemLdRfVar from_stack_1.global_64
  loc_BEE8AA: NewIfNullPr clsctacte
  loc_BEE8AD: from_stack_1 = clsctacte.RecordCount
  loc_BEE8B2: ILdRf var_124
  loc_BEE8B5: LitI4 0
  loc_BEE8BA: GtI4
  loc_BEE8BB: BranchF loc_BEE9E9
  loc_BEE8BE: FLdPr Me
  loc_BEE8C1: MemLdRfVar from_stack_1.global_64
  loc_BEE8C4: NewIfNullPr clsctacte
  loc_BEE8C7: Call clsctacte.MoveFirst()
  loc_BEE8CC: FLdRfVar var_BA
  loc_BEE8CF: FLdPr Me
  loc_BEE8D2: MemLdRfVar from_stack_1.global_64
  loc_BEE8D5: NewIfNullPr clsctacte
  loc_BEE8D8: from_stack_1 = clsctacte.EOF
  loc_BEE8DD: FLdI2 var_BA
  loc_BEE8E0: NotI4
  loc_BEE8E1: BranchF loc_BEE9E9
  loc_BEE8E4: LitI2_Byte 0
  loc_BEE8E6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEE8EB: CVarDate var_A8
  loc_BEE8EF: FLdRfVar var_B8
  loc_BEE8F2: ImpAdCallFPR4  = Year()
  loc_BEE8F7: FLdRfVar var_C4
  loc_BEE8FA: FLdPr Me
  loc_BEE8FD: MemLdRfVar from_stack_1.global_64
  loc_BEE900: NewIfNullPr clsctacte
  loc_BEE903: from_stack_1 = clsctacte.CodiConc
  loc_BEE908: ILdRf var_C4
  loc_BEE90B: FLdRfVar var_B8
  loc_BEE90E: CI2Var
  loc_BEE90F: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_BEE914: FStStrNoPop var_11C
  loc_BEE917: LitStr vbNullString
  loc_BEE91A: EqStr
  loc_BEE91C: FFreeStr var_C4 = ""
  loc_BEE923: FFreeVar var_A8 = ""
  loc_BEE92A: BranchF loc_BEE95E
  loc_BEE92D: LitStr "El recurso: "
  loc_BEE930: FLdRfVar var_C4
  loc_BEE933: FLdPr Me
  loc_BEE936: MemLdRfVar from_stack_1.global_64
  loc_BEE939: NewIfNullPr clsctacte
  loc_BEE93C: from_stack_1 = clsctacte.CodiConc
  loc_BEE941: ILdRf var_C4
  loc_BEE944: ConcatStr
  loc_BEE945: FStStrNoPop var_11C
  loc_BEE948: LitStr " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_BEE94B: ConcatStr
  loc_BEE94C: FStStrNoPop var_120
  loc_BEE94F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEE954: FFreeStr var_C4 = "": var_11C = ""
  loc_BEE95D: ExitProcHresult
  loc_BEE95E: LitI2_Byte 0
  loc_BEE960: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEE965: CVarDate var_A8
  loc_BEE969: FLdRfVar var_B8
  loc_BEE96C: ImpAdCallFPR4  = Year()
  loc_BEE971: FLdRfVar var_C4
  loc_BEE974: FLdPr Me
  loc_BEE977: MemLdRfVar from_stack_1.global_64
  loc_BEE97A: NewIfNullPr clsctacte
  loc_BEE97D: from_stack_1 = clsctacte.CodiConc
  loc_BEE982: ILdRf var_C4
  loc_BEE985: FLdRfVar var_B8
  loc_BEE988: CI2Var
  loc_BEE989: ImpAdCallI2 Proc_18_77_AC5F18(, )
  loc_BEE98E: FStStrNoPop var_11C
  loc_BEE991: LitStr vbNullString
  loc_BEE994: NeStr
  loc_BEE996: FFreeStr var_C4 = ""
  loc_BEE99D: FFreeVar var_A8 = ""
  loc_BEE9A4: BranchF loc_BEE9D8
  loc_BEE9A7: LitStr "El concepto: "
  loc_BEE9AA: FLdRfVar var_C4
  loc_BEE9AD: FLdPr Me
  loc_BEE9B0: MemLdRfVar from_stack_1.global_64
  loc_BEE9B3: NewIfNullPr clsctacte
  loc_BEE9B6: from_stack_1 = clsctacte.CodiConc
  loc_BEE9BB: ILdRf var_C4
  loc_BEE9BE: ConcatStr
  loc_BEE9BF: FStStrNoPop var_11C
  loc_BEE9C2: LitStr " No tiene asociado ningún tipo de movimiento. No se emite el boleto."
  loc_BEE9C5: ConcatStr
  loc_BEE9C6: FStStrNoPop var_120
  loc_BEE9C9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEE9CE: FFreeStr var_C4 = "": var_11C = ""
  loc_BEE9D7: ExitProcHresult
  loc_BEE9D8: FLdPr Me
  loc_BEE9DB: MemLdRfVar from_stack_1.global_64
  loc_BEE9DE: NewIfNullPr clsctacte
  loc_BEE9E1: Call clsctacte.MoveSiguiente()
  loc_BEE9E6: Branch loc_BEE8CC
  loc_BEE9E9: LitStr "SELECT tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct FROM tmp_ctacteboleto "
  loc_BEE9EC: LitStr " WHERE tmp_ctacteboleto.SeleCtct = 'Si'"
  loc_BEE9EF: ConcatStr
  loc_BEE9F0: FStStrNoPop var_C4
  loc_BEE9F3: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_BEE9F6: ConcatStr
  loc_BEE9F7: FStStrNoPop var_11C
  loc_BEE9FA: FLdPr Me
  loc_BEE9FD: MemLdRfVar from_stack_1.global_64
  loc_BEEA00: NewIfNullPr clsctacte
  loc_BEEA03: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BEEA08: FFreeStr var_C4 = ""
  loc_BEEA0F: FLdRfVar var_124
  loc_BEEA12: FLdPr Me
  loc_BEEA15: MemLdRfVar from_stack_1.global_64
  loc_BEEA18: NewIfNullPr clsctacte
  loc_BEEA1B: from_stack_1 = clsctacte.RecordCount
  loc_BEEA20: ILdRf var_124
  loc_BEEA23: LitI4 0
  loc_BEEA28: GtI4
  loc_BEEA29: BranchF loc_BEEB0B
  loc_BEEA2C: FLdPr Me
  loc_BEEA2F: MemLdRfVar from_stack_1.global_64
  loc_BEEA32: NewIfNullPr clsctacte
  loc_BEEA35: Call clsctacte.MoveFirst()
  loc_BEEA3A: FLdRfVar var_BA
  loc_BEEA3D: FLdPr Me
  loc_BEEA40: MemLdRfVar from_stack_1.global_64
  loc_BEEA43: NewIfNullPr clsctacte
  loc_BEEA46: from_stack_1 = clsctacte.EOF
  loc_BEEA4B: FLdI2 var_BA
  loc_BEEA4E: NotI4
  loc_BEEA4F: BranchF loc_BEEB0B
  loc_BEEA52: FLdRfVar var_BA
  loc_BEEA55: FLdPr Me
  loc_BEEA58: MemLdRfVar from_stack_1.global_64
  loc_BEEA5B: NewIfNullPr clsctacte
  loc_BEEA5E: from_stack_1 = clsctacte.CodiOfic
  loc_BEEA63: FLdRfVar var_C4
  loc_BEEA66: FLdPr Me
  loc_BEEA69: MemLdRfVar from_stack_1.global_64
  loc_BEEA6C: NewIfNullPr clsctacte
  loc_BEEA6F: from_stack_1 = clsctacte.CuenCtct
  loc_BEEA74: FLdRfVar var_126
  loc_BEEA77: FLdPr Me
  loc_BEEA7A: MemLdRfVar from_stack_1.global_64
  loc_BEEA7D: NewIfNullPr clsctacte
  loc_BEEA80: from_stack_1 = clsctacte.PeriCtct
  loc_BEEA85: FLdRfVar var_128
  loc_BEEA88: FLdPr Me
  loc_BEEA8B: MemLdRfVar from_stack_1.global_64
  loc_BEEA8E: NewIfNullPr clsctacte
  loc_BEEA91: from_stack_1 = clsctacte.BimeCtct
  loc_BEEA96: FLdRfVar var_124
  loc_BEEA99: FLdPr Me
  loc_BEEA9C: MemLdRfVar from_stack_1.global_64
  loc_BEEA9F: NewIfNullPr clsctacte
  loc_BEEAA2: from_stack_1 = clsctacte.NumeCtct
  loc_BEEAA7: FLdRfVar var_12A
  loc_BEEAAA: FLdPr Me
  loc_BEEAAD: MemLdRfVar from_stack_1.global_64
  loc_BEEAB0: NewIfNullPr clsctacte
  loc_BEEAB3: from_stack_1 = clsctacte.MoviCtct
  loc_BEEAB8: FLdI2 var_12A
  loc_BEEABB: ILdRf var_124
  loc_BEEABE: FLdI2 var_128
  loc_BEEAC1: FLdI2 var_126
  loc_BEEAC4: ILdRf var_C4
  loc_BEEAC7: FLdI2 var_BA
  loc_BEEACA: ImpAdCallI2 Proc_18_124_B0B190(, , , , , )
  loc_BEEACF: FStStrNoPop var_11C
  loc_BEEAD2: FLdPr Me
  loc_BEEAD5: MemStStrCopy
  loc_BEEAD9: FFreeStr var_C4 = ""
  loc_BEEAE0: FLdPr Me
  loc_BEEAE3: MemLdStr global_368
  loc_BEEAE6: LitStr vbNullString
  loc_BEEAE9: NeStr
  loc_BEEAEB: BranchF loc_BEEAFA
  loc_BEEAEE: FLdPr Me
  loc_BEEAF1: MemLdStr global_368
  loc_BEEAF4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEEAF9: ExitProcHresult
  loc_BEEAFA: FLdPr Me
  loc_BEEAFD: MemLdRfVar from_stack_1.global_64
  loc_BEEB00: NewIfNullPr clsctacte
  loc_BEEB03: Call clsctacte.MoveSiguiente()
  loc_BEEB08: Branch loc_BEEA3A
  loc_BEEB0B: LitI2_Byte &HB
  loc_BEEB0D: FLdPr Me
  loc_BEEB10: Me.MousePointer = from_stack_1
  loc_BEEB15: LitI2_Byte 0
  loc_BEEB17: FLdPr Me
  loc_BEEB1A: VCallAd Control_ID_cmdGenerarBoleto
  loc_BEEB1D: FStAdFunc var_C0
  loc_BEEB20: FLdPr var_C0
  loc_BEEB23: Me.Enabled = from_stack_1b
  loc_BEEB28: FFree1Ad var_C0
  loc_BEEB2B: LitStr "tmp_ctacteboleto"
  loc_BEEB2E: FLdPr Me
  loc_BEEB31: MemLdRfVar from_stack_1.global_64
  loc_BEEB34: NewIfNullPr clsctacte
  loc_BEEB37: Call clsctacte.BorraSaldoCeroTmp_CtaCte(from_stack_1v)
  loc_BEEB3C: FLdPr Me
  loc_BEEB3F: MemLdRfVar from_stack_1.global_64
  loc_BEEB42: NewIfNullPr clsctacte
  loc_BEEB45: Call clsctacte.CreaTemporalFacilidaddePagoParaApremio()
  loc_BEEB4A: FLdRfVar var_194
  loc_BEEB4D: FLdRfVar var_134
  loc_BEEB50: LitVarStr var_98, "DecaTifa"
  loc_BEEB55: PopAdLdVar
  loc_BEEB56: FLdRfVar var_130
  loc_BEEB59: FLdRfVar var_C0
  loc_BEEB5C: FLdPr Me
  loc_BEEB5F: MemLdRfVar from_stack_1.global_76
  loc_BEEB62: NewIfNullPr clstipofapa
  loc_BEEB65: from_stack_1v = clstipofapa.RsFrmGet()
  loc_BEEB6A: FLdPr var_C0
  loc_BEEB6D:  = Me.Fields
  loc_BEEB72: FLdPr var_130
  loc_BEEB75: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEB7A: FLdPr var_134
  loc_BEEB7D:  = Me.Value
  loc_BEEB82: FLdRfVar var_A8
  loc_BEEB85: FLdRfVar var_140
  loc_BEEB88: LitVarStr var_D4, "EmitTifa"
  loc_BEEB8D: PopAdLdVar
  loc_BEEB8E: FLdRfVar var_13C
  loc_BEEB91: FLdRfVar var_138
  loc_BEEB94: FLdPr Me
  loc_BEEB97: MemLdRfVar from_stack_1.global_76
  loc_BEEB9A: NewIfNullPr clstipofapa
  loc_BEEB9D: from_stack_1v = clstipofapa.RsFrmGet()
  loc_BEEBA2: FLdPr var_138
  loc_BEEBA5:  = Me.Fields
  loc_BEEBAA: FLdPr var_13C
  loc_BEEBAD: from_stack_2 = Me.Item(from_stack_1)
  loc_BEEBB2: FLdPr var_140
  loc_BEEBB5:  = Me.Value
  loc_BEEBBA: LitVar_FALSE
  loc_BEEBBE: LitVar_TRUE var_114
  loc_BEEBC1: FLdRfVar var_A8
  loc_BEEBC4: LitVarStr var_E4, "Si"
  loc_BEEBC9: HardType
  loc_BEEBCA: EqVar var_B8
  loc_BEEBCE: FStVar var_F4
  loc_BEEBD2: FLdRfVar var_F4
  loc_BEEBD5: FLdRfVar var_170
  loc_BEEBD8: ImpAdCallFPR4  = IIf(, , )
  loc_BEEBDD: FLdPr Me
  loc_BEEBE0: VCallAd Control_ID_CodiConcMsk
  loc_BEEBE3: FStAdFunc var_174
  loc_BEEBE6: FLdPr var_174
  loc_BEEBE9: LateIdLdVar var_184 DispID_22 0
  loc_BEEBF0: PopAd
  loc_BEEBF2: LitI4 0
  loc_BEEBF7: LitI4 0
  loc_BEEBFC: FLdRfVar var_184
  loc_BEEBFF: CStrVarTmp
  loc_BEEC00: FStStrNoPop var_C4
  loc_BEEC03: FLdRfVar var_170
  loc_BEEC06: CBoolVar
  loc_BEEC08: LitStr vbNullString
  loc_BEEC0B: LitStr vbNullString
  loc_BEEC0E: FLdRfVar var_194
  loc_BEEC11: CR4Var
  loc_BEEC12: PopFPR8
  loc_BEEC13: FLdPr Me
  loc_BEEC16: MemLdRfVar from_stack_1.global_72
  loc_BEEC19: NewIfNullPr clsboleto
  loc_BEEC1C: Call clsboleto.FacilidaddePago(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BEEC21: FFree1Str var_C4
  loc_BEEC24: FFreeAd var_C0 = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_174 = ""
  loc_BEEC35: FFreeVar var_A8 = "": var_F4 = "": var_114 = "": var_160 = "": var_184 = "": var_194 = ""
  loc_BEEC46: ILdRf Me
  loc_BEEC49: CastAd
  loc_BEEC4C: FStAdFunc var_C0
  loc_BEEC4F: FLdRfVar var_C0
  loc_BEEC52: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BEEC57: FFree1Ad var_C0
  loc_BEEC5A: Call Proc_187_51_B193E8()
  loc_BEEC5F: Call Proc_187_53_A855B4()
  loc_BEEC64: Call Proc_187_52_AF19AC()
  loc_BEEC69: LitI2_Byte 0
  loc_BEEC6B: FLdPr Me
  loc_BEEC6E: VCallAd Control_ID_SeleTodoChk
  loc_BEEC71: FStAdFunc var_C0
  loc_BEEC74: FLdPr var_C0
  loc_BEEC77: Me.Value = from_stack_1
  loc_BEEC7C: FFree1Ad var_C0
  loc_BEEC7F: LitStr "0"
  loc_BEEC82: FLdPr Me
  loc_BEEC85: VCallAd Control_ID_NumeCtaTxt
  loc_BEEC88: FStAdFunc var_C0
  loc_BEEC8B: FLdPr var_C0
  loc_BEEC8E: Me.Text = from_stack_1
  loc_BEEC93: FFree1Ad var_C0
  loc_BEEC96: LitI2_Byte 0
  loc_BEEC98: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEEC9D: CStrDate
  loc_BEEC9F: CVarStr var_A8
  loc_BEECA2: PopAdLdVar
  loc_BEECA3: FLdPr Me
  loc_BEECA6: VCallAd Control_ID_FechVencMsk
  loc_BEECA9: FStAdFunc var_C0
  loc_BEECAC: FLdPr var_C0
  loc_BEECAF: LateIdSt
  loc_BEECB4: FFree1Ad var_C0
  loc_BEECB7: FFree1Var var_A8 = ""
  loc_BEECBA: LitI2_Byte 0
  loc_BEECBC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEECC1: CStrDate
  loc_BEECC3: CVarStr var_A8
  loc_BEECC6: PopAdLdVar
  loc_BEECC7: FLdPr Me
  loc_BEECCA: VCallAd Control_ID_FeveCuotMsk
  loc_BEECCD: FStAdFunc var_C0
  loc_BEECD0: FLdPr var_C0
  loc_BEECD3: LateIdSt
  loc_BEECD8: FFree1Ad var_C0
  loc_BEECDB: FFree1Var var_A8 = ""
  loc_BEECDE: LitI2_Byte 0
  loc_BEECE0: FLdPr Me
  loc_BEECE3: VCallAd Control_ID_CodiInmuLbl
  loc_BEECE6: FStAdFunc var_C0
  loc_BEECE9: FLdPr var_C0
  loc_BEECEC: Me.Visible = from_stack_1b
  loc_BEECF1: FFree1Ad var_C0
  loc_BEECF4: LitI2_Byte 0
  loc_BEECF6: FLdPr Me
  loc_BEECF9: VCallAd Control_ID_CodiInmuTxt
  loc_BEECFC: FStAdFunc var_C0
  loc_BEECFF: FLdPr var_C0
  loc_BEED02: Me.Visible = from_stack_1b
  loc_BEED07: FFree1Ad var_C0
  loc_BEED0A: LitI2_Byte 0
  loc_BEED0C: FLdPr Me
  loc_BEED0F: VCallAd Control_ID_CodiInmuCmd
  loc_BEED12: FStAdFunc var_C0
  loc_BEED15: FLdPr var_C0
  loc_BEED18: Me.Visible = from_stack_1b
  loc_BEED1D: FFree1Ad var_C0
  loc_BEED20: LitI2_Byte 0
  loc_BEED22: FLdPr Me
  loc_BEED25: VCallAd Control_ID_OrdeObreLbl
  loc_BEED28: FStAdFunc var_C0
  loc_BEED2B: FLdPr var_C0
  loc_BEED2E: Me.Visible = from_stack_1b
  loc_BEED33: FFree1Ad var_C0
  loc_BEED36: LitI2_Byte 0
  loc_BEED38: FLdPr Me
  loc_BEED3B: VCallAd Control_ID_OrdeObreTxt
  loc_BEED3E: FStAdFunc var_C0
  loc_BEED41: FLdPr var_C0
  loc_BEED44: Me.Visible = from_stack_1b
  loc_BEED49: FFree1Ad var_C0
  loc_BEED4C: LitI2_Byte 0
  loc_BEED4E: FLdPr Me
  loc_BEED51: VCallAd Control_ID_OrdeObreCmd
  loc_BEED54: FStAdFunc var_C0
  loc_BEED57: FLdPr var_C0
  loc_BEED5A: Me.Visible = from_stack_1b
  loc_BEED5F: FFree1Ad var_C0
  loc_BEED62: FLdPr Me
  loc_BEED65: VCallAd Control_ID_NumeCtaTxt
  loc_BEED68: FStAdFunc var_C0
  loc_BEED6B: FLdPr var_C0
  loc_BEED6E: Me.SetFocus
  loc_BEED73: FFree1Ad var_C0
  loc_BEED76: LitI2_Byte &HFF
  loc_BEED78: FLdPr Me
  loc_BEED7B: VCallAd Control_ID_cmdGenerarBoleto
  loc_BEED7E: FStAdFunc var_C0
  loc_BEED81: FLdPr var_C0
  loc_BEED84: Me.Enabled = from_stack_1b
  loc_BEED89: FFree1Ad var_C0
  loc_BEED8C: ExitProcHresult
  loc_BEED8D: StAryRecCopy
End Sub

Private Sub FeveCuotMsk_UnknownEvent_0 '9C3DE8
  'Data Table: 52F1AC
  loc_9C3DD4: FLdPr Me
  loc_9C3DD7: VCallAd Control_ID_FeveCuotMsk
  loc_9C3DDA: CVarAd
  loc_9C3DDE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C3DE3: FFree1Var var_94 = ""
  loc_9C3DE6: ExitProcHresult
End Sub

Private Function FeveCuotMsk_UnknownEvent_8(arg_C) 'A6D200
  'Data Table: 52F1AC
  loc_A6D198: FLdPr Me
  loc_A6D19B: VCallAd Control_ID_FeveCuotMsk
  loc_A6D19E: FStAdFunc var_88
  loc_A6D1A1: FLdPr var_88
  loc_A6D1A4: LateIdLdVar var_98 DispID_15 0
  loc_A6D1AB: CStrVarTmp
  loc_A6D1AC: FStStrNoPop var_9C
  loc_A6D1AF: ImpAdCallI2 Proc_18_6_A08898()
  loc_A6D1B4: FStStrNoPop var_A0
  loc_A6D1B7: FLdPr Me
  loc_A6D1BA: MemStStrCopy
  loc_A6D1BE: FFreeStr var_9C = ""
  loc_A6D1C5: FFree1Ad var_88
  loc_A6D1C8: FFree1Var var_98 = ""
  loc_A6D1CB: FLdPr Me
  loc_A6D1CE: MemLdStr global_368
  loc_A6D1D1: LitStr vbNullString
  loc_A6D1D4: NeStr
  loc_A6D1D6: BranchF loc_A6D1FC
  loc_A6D1D9: FLdPr Me
  loc_A6D1DC: MemLdStr global_368
  loc_A6D1DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A6D1E4: FLdPr Me
  loc_A6D1E7: VCallAd Control_ID_FeveCuotMsk
  loc_A6D1EA: CVarAd
  loc_A6D1EE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6D1F3: FFree1Var var_98 = ""
  loc_A6D1F6: LitI2_Byte &HFF
  loc_A6D1F8: IStI2 arg_C
  loc_A6D1FB: ExitProcHresult
  loc_A6D1FC: ExitProcHresult
  loc_A6D1FD: CStrVarTmp
  loc_A6D1FE: FStStrNoPop arg_34B0
End Function

Private Sub FeveCuotMsk_KeyPress(KeyAscii As Integer) 'A24A54
  'Data Table: 52F1AC
  loc_A24A0C: ILdI2 KeyAscii
  loc_A24A0F: CI4UI1
  loc_A24A10: LitI4 &H20
  loc_A24A15: EqI4
  loc_A24A16: BranchF loc_A24A53
  loc_A24A19: LitVar_Missing var_A4
  loc_A24A1C: PopAdLdVar
  loc_A24A1D: LitVarI4
  loc_A24A25: PopAdLdVar
  loc_A24A26: ImpAdLdRf MemVar_D930A4
  loc_A24A29: NewIfNullPr frmCalendario
  loc_A24A2C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24A31: ImpAdLdRf MemVar_D93028
  loc_A24A34: CDargRef
  loc_A24A38: FLdPr Me
  loc_A24A3B: VCallAd Control_ID_FeveCuotMsk
  loc_A24A3E: FStAdFunc var_A8
  loc_A24A41: FLdPr var_A8
  loc_A24A44: LateIdSt
  loc_A24A49: FFree1Ad var_A8
  loc_A24A4C: LitStr vbNullString
  loc_A24A4F: ImpAdStStrCopy MemVar_D93028
  loc_A24A53: ExitProcHresult
End Sub

Private Sub OrdeObreCmd_Click() 'A91B7C
  'Data Table: 52F1AC
  loc_A91AD8: LitVar_Missing var_A4
  loc_A91ADB: PopAdLdVar
  loc_A91ADC: LitVarI4
  loc_A91AE4: PopAdLdVar
  loc_A91AE5: ImpAdLdRf MemVar_D94524
  loc_A91AE8: NewIfNullPr dlgBuscarObraReem
  loc_A91AEB: dlgBuscarObraReem.Show from_stack_1, from_stack_2
  loc_A91AF0: FLdRfVar var_AC
  loc_A91AF3: FLdRfVar var_A8
  loc_A91AF6: ImpAdLdRf MemVar_D94524
  loc_A91AF9: NewIfNullPr dlgBuscarObraReem
  loc_A91AFC: from_stack_1v = dlgBuscarObraReem.global_4297336Get()
  loc_A91B01: FLdPr var_A8
  loc_A91B04: from_stack_1 = clsobrareem.RecordCount
  loc_A91B09: ILdRf var_AC
  loc_A91B0C: LitI4 0
  loc_A91B11: GtI4
  loc_A91B12: FFree1Ad var_A8
  loc_A91B15: BranchF loc_A91B66
  loc_A91B18: FLdRfVar var_B0
  loc_A91B1B: FLdRfVar var_A8
  loc_A91B1E: ImpAdLdRf MemVar_D94524
  loc_A91B21: NewIfNullPr dlgBuscarObraReem
  loc_A91B24: from_stack_1v = dlgBuscarObraReem.global_4297336Get()
  loc_A91B29: FLdPr var_A8
  loc_A91B2C: from_stack_1 = clsobrareem.OrdeObre
  loc_A91B31: ILdRf var_B0
  loc_A91B34: FLdPr Me
  loc_A91B37: VCallAd Control_ID_OrdeObreTxt
  loc_A91B3A: FStAdFunc var_B4
  loc_A91B3D: FLdPr var_B4
  loc_A91B40: Me.Text = from_stack_1
  loc_A91B45: FFree1Str var_B0
  loc_A91B48: FFreeAd var_A8 = ""
  loc_A91B4F: LitStr vbNullString
  loc_A91B52: FLdPr Me
  loc_A91B55: VCallAd Control_ID_CodiInmuTxt
  loc_A91B58: FStAdFunc var_A8
  loc_A91B5B: FLdPr var_A8
  loc_A91B5E: Me.Text = from_stack_1
  loc_A91B63: FFree1Ad var_A8
  loc_A91B66: FLdPr Me
  loc_A91B69: VCallAd Control_ID_OrdeObreTxt
  loc_A91B6C: CVarAd
  loc_A91B70: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91B75: FFree1Var var_C4 = ""
  loc_A91B78: ExitProcHresult
  loc_A91B7B: ExitProcI2
End Sub

Private Sub SalirCmd_Click() '9D77D8
  'Data Table: 52F1AC
  loc_9D77C0: ILdRf Me
  loc_9D77C3: FStAdNoPop
  loc_9D77C7: ImpAdLdRf MemVar_D9C5D8
  loc_9D77CA: NewIfNullPr Global
  loc_9D77CD: Global.Unload from_stack_1
  loc_9D77D2: FFree1Ad var_88
  loc_9D77D5: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B35038
  'Data Table: 52F1AC
  loc_B34D5C: FLdRfVar var_8A
  loc_B34D5F: FLdPr Me
  loc_B34D62: VCallAd Control_ID_OficinaCbo
  loc_B34D65: FStAdFunc var_88
  loc_B34D68: FLdPr var_88
  loc_B34D6B:  = Me.ListIndex
  loc_B34D70: FLdI2 var_8A
  loc_B34D73: FStI2 var_8C
  loc_B34D76: FFree1Ad var_88
  loc_B34D79: FLdI2 var_8C
  loc_B34D7C: LitI2_Byte 0
  loc_B34D7E: EqI2
  loc_B34D7F: BranchF loc_B34D8D
  loc_B34D82: LitI2_Byte 1
  loc_B34D84: CUI1I2
  loc_B34D86: ImpAdStUI1 MemVar_D93038
  loc_B34D8A: Branch loc_B34E02
  loc_B34D8D: FLdI2 var_8C
  loc_B34D90: LitI2_Byte 1
  loc_B34D92: EqI2
  loc_B34D93: BranchF loc_B34DA1
  loc_B34D96: LitI2_Byte 2
  loc_B34D98: CUI1I2
  loc_B34D9A: ImpAdStUI1 MemVar_D93038
  loc_B34D9E: Branch loc_B34E02
  loc_B34DA1: FLdI2 var_8C
  loc_B34DA4: LitI2_Byte 2
  loc_B34DA6: EqI2
  loc_B34DA7: BranchF loc_B34DB5
  loc_B34DAA: LitI2_Byte 3
  loc_B34DAC: CUI1I2
  loc_B34DAE: ImpAdStUI1 MemVar_D93038
  loc_B34DB2: Branch loc_B34E02
  loc_B34DB5: FLdI2 var_8C
  loc_B34DB8: LitI2_Byte 3
  loc_B34DBA: EqI2
  loc_B34DBB: BranchF loc_B34DC9
  loc_B34DBE: LitI2_Byte 4
  loc_B34DC0: CUI1I2
  loc_B34DC2: ImpAdStUI1 MemVar_D93038
  loc_B34DC6: Branch loc_B34E02
  loc_B34DC9: FLdI2 var_8C
  loc_B34DCC: LitI2_Byte 4
  loc_B34DCE: EqI2
  loc_B34DCF: BranchF loc_B34DDD
  loc_B34DD2: LitI2_Byte 5
  loc_B34DD4: CUI1I2
  loc_B34DD6: ImpAdStUI1 MemVar_D93038
  loc_B34DDA: Branch loc_B34E02
  loc_B34DDD: FLdI2 var_8C
  loc_B34DE0: LitI2_Byte 5
  loc_B34DE2: EqI2
  loc_B34DE3: BranchF loc_B34DF1
  loc_B34DE6: LitI2_Byte 6
  loc_B34DE8: CUI1I2
  loc_B34DEA: ImpAdStUI1 MemVar_D93038
  loc_B34DEE: Branch loc_B34E02
  loc_B34DF1: FLdI2 var_8C
  loc_B34DF4: LitI2_Byte 6
  loc_B34DF6: EqI2
  loc_B34DF7: BranchF loc_B34E02
  loc_B34DFA: LitI2_Byte 7
  loc_B34DFC: CUI1I2
  loc_B34DFE: ImpAdStUI1 MemVar_D93038
  loc_B34E02: ImpAdLdUI1
  loc_B34E06: CI2UI1
  loc_B34E08: LitI2_Byte 0
  loc_B34E0A: NeI2
  loc_B34E0B: FLdRfVar var_90
  loc_B34E0E: FLdPr Me
  loc_B34E11: VCallAd Control_ID_NumeCtaTxt
  loc_B34E14: FStAdFunc var_88
  loc_B34E17: FLdPr var_88
  loc_B34E1A:  = Me.Text
  loc_B34E1F: ILdRf var_90
  loc_B34E22: LitStr vbNullString
  loc_B34E25: NeStr
  loc_B34E27: AndI4
  loc_B34E28: FLdRfVar var_98
  loc_B34E2B: FLdPr Me
  loc_B34E2E: VCallAd Control_ID_NumeCtaTxt
  loc_B34E31: FStAdFunc var_94
  loc_B34E34: FLdPr var_94
  loc_B34E37:  = Me.Text
  loc_B34E3C: ILdRf var_98
  loc_B34E3F: LitStr "0"
  loc_B34E42: NeStr
  loc_B34E44: AndI4
  loc_B34E45: FFreeStr var_90 = ""
  loc_B34E4C: FFreeAd var_88 = ""
  loc_B34E53: BranchF loc_B35037
  loc_B34E56: FLdRfVar var_90
  loc_B34E59: FLdPr Me
  loc_B34E5C: VCallAd Control_ID_NumeCtaTxt
  loc_B34E5F: FStAdFunc var_88
  loc_B34E62: FLdPr var_88
  loc_B34E65:  = Me.Text
  loc_B34E6A: FLdPr Me
  loc_B34E6D: MemLdRfVar from_stack_1.global_88
  loc_B34E70: NewIfNullRf
  loc_B34E74: LitStr "Titular"
  loc_B34E77: ILdRf var_90
  loc_B34E7A: ImpAdLdUI1
  loc_B34E7E: CStrI2
  loc_B34E80: FStStrNoPop var_98
  loc_B34E83: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B34E88: FFreeStr var_98 = ""
  loc_B34E8F: FFree1Ad var_88
  loc_B34E92: BranchF loc_B34FB7
  loc_B34E95: FLdRfVar var_90
  loc_B34E98: FLdPr Me
  loc_B34E9B: MemLdRfVar from_stack_1.global_88
  loc_B34E9E: NewIfNullPr tblPersona
  loc_B34EA1: from_stack_1v = tblPersona.CucuPersGet()
  loc_B34EA6: ILdRf var_90
  loc_B34EA9: FLdPr Me
  loc_B34EAC: VCallAd Control_ID_CucuPersLbl
  loc_B34EAF: FStAdFunc var_88
  loc_B34EB2: FLdPr var_88
  loc_B34EB5: Me.Caption = from_stack_1
  loc_B34EBA: FFree1Str var_90
  loc_B34EBD: FFree1Ad var_88
  loc_B34EC0: FLdRfVar var_90
  loc_B34EC3: FLdPr Me
  loc_B34EC6: MemLdRfVar from_stack_1.global_88
  loc_B34EC9: NewIfNullPr tblPersona
  loc_B34ECC: from_stack_1v = tblPersona.DetaPersGet()
  loc_B34ED1: ILdRf var_90
  loc_B34ED4: FLdPr Me
  loc_B34ED7: VCallAd Control_ID_DetaPersLbl
  loc_B34EDA: FStAdFunc var_88
  loc_B34EDD: FLdPr var_88
  loc_B34EE0: Me.Caption = from_stack_1
  loc_B34EE5: FFree1Str var_90
  loc_B34EE8: FFree1Ad var_88
  loc_B34EEB: FLdRfVar var_98
  loc_B34EEE: FLdPr Me
  loc_B34EF1: MemLdRfVar from_stack_1.global_88
  loc_B34EF4: NewIfNullPr tblPersona
  loc_B34EF7: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B34EFC: FLdRfVar var_9C
  loc_B34EFF: FLdPr Me
  loc_B34F02: MemLdRfVar from_stack_1.global_88
  loc_B34F05: NewIfNullPr tblPersona
  loc_B34F08: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B34F0D: FLdRfVar var_90
  loc_B34F10: FLdPr Me
  loc_B34F13: MemLdRfVar from_stack_1.global_88
  loc_B34F16: NewIfNullPr tblPersona
  loc_B34F19: from_stack_1v = tblPersona.DetaCallGet()
  loc_B34F1E: ILdRf var_90
  loc_B34F21: LitStr " "
  loc_B34F24: ConcatStr
  loc_B34F25: CVarStr var_FC
  loc_B34F28: LitVarStr var_CC, vbNullString
  loc_B34F2D: FStVarCopyObj var_DC
  loc_B34F30: FLdRfVar var_DC
  loc_B34F33: LitStr "Nro: "
  loc_B34F36: ILdRf var_9C
  loc_B34F39: ConcatStr
  loc_B34F3A: CVarStr var_BC
  loc_B34F3D: ILdRf var_98
  loc_B34F40: LitStr "0"
  loc_B34F43: NeStr
  loc_B34F45: CVarBoolI2 var_AC
  loc_B34F49: FLdRfVar var_EC
  loc_B34F4C: ImpAdCallFPR4  = IIf(, , )
  loc_B34F51: FLdRfVar var_EC
  loc_B34F54: ConcatVar var_10C
  loc_B34F58: LitVarStr var_11C, " "
  loc_B34F5D: ConcatVar var_12C
  loc_B34F61: FLdRfVar var_130
  loc_B34F64: FLdPr Me
  loc_B34F67: MemLdRfVar from_stack_1.global_88
  loc_B34F6A: NewIfNullPr tblPersona
  loc_B34F6D: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B34F72: FLdZeroAd var_130
  loc_B34F75: CVarStr var_140
  loc_B34F78: ConcatVar var_150
  loc_B34F7C: CStrVarVal var_154
  loc_B34F80: FLdPr Me
  loc_B34F83: VCallAd Control_ID_DomiPersLbl
  loc_B34F86: FStAdFunc var_88
  loc_B34F89: FLdPr var_88
  loc_B34F8C: Me.Caption = from_stack_1
  loc_B34F91: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B34F9C: FFree1Ad var_88
  loc_B34F9F: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B34FB4: Branch loc_B35037
  loc_B34FB7: FLdRfVar var_90
  loc_B34FBA: FLdPr Me
  loc_B34FBD: MemLdRfVar from_stack_1.global_88
  loc_B34FC0: NewIfNullPr tblPersona
  loc_B34FC3: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B34FC8: ILdRf var_90
  loc_B34FCB: FLdPr Me
  loc_B34FCE: MemStStrCopy
  loc_B34FD2: FFree1Str var_90
  loc_B34FD5: FLdPr Me
  loc_B34FD8: MemLdStr global_368
  loc_B34FDB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B34FE0: LitStr vbNullString
  loc_B34FE3: FLdPr Me
  loc_B34FE6: VCallAd Control_ID_CucuPersLbl
  loc_B34FE9: FStAdFunc var_88
  loc_B34FEC: FLdPr var_88
  loc_B34FEF: Me.Caption = from_stack_1
  loc_B34FF4: FFree1Ad var_88
  loc_B34FF7: LitStr vbNullString
  loc_B34FFA: FLdPr Me
  loc_B34FFD: VCallAd Control_ID_DetaPersLbl
  loc_B35000: FStAdFunc var_88
  loc_B35003: FLdPr var_88
  loc_B35006: Me.Caption = from_stack_1
  loc_B3500B: FFree1Ad var_88
  loc_B3500E: LitStr vbNullString
  loc_B35011: FLdPr Me
  loc_B35014: VCallAd Control_ID_DomiPersLbl
  loc_B35017: FStAdFunc var_88
  loc_B3501A: FLdPr var_88
  loc_B3501D: Me.Caption = from_stack_1
  loc_B35022: FFree1Ad var_88
  loc_B35025: FLdPr Me
  loc_B35028: VCallAd Control_ID_NumeCtaTxt
  loc_B3502B: CVarAd
  loc_B3502F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B35034: FFree1Var var_BC = ""
  loc_B35037: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'B414C4
  'Data Table: 52F1AC
  loc_B41190: Call Proc_187_51_B193E8()
  loc_B41195: Call Proc_187_53_A855B4()
  loc_B4119A: Call Proc_187_52_AF19AC()
  loc_B4119F: LitI2_Byte 0
  loc_B411A1: FLdPr Me
  loc_B411A4: VCallAd Control_ID_SeleTodoChk
  loc_B411A7: FStAdFunc var_88
  loc_B411AA: FLdPr var_88
  loc_B411AD: Me.Value = from_stack_1
  loc_B411B2: FFree1Ad var_88
  loc_B411B5: LitStr "0"
  loc_B411B8: FLdPr Me
  loc_B411BB: VCallAd Control_ID_CodiTifaTxt
  loc_B411BE: FStAdFunc var_88
  loc_B411C1: FLdPr var_88
  loc_B411C4: Me.Text = from_stack_1
  loc_B411C9: FFree1Ad var_88
  loc_B411CC: LitStr vbNullString
  loc_B411CF: FLdPr Me
  loc_B411D2: VCallAd Control_ID_DetaTifaLbl
  loc_B411D5: FStAdFunc var_88
  loc_B411D8: FLdPr var_88
  loc_B411DB: Me.Caption = from_stack_1
  loc_B411E0: FFree1Ad var_88
  loc_B411E3: LitStr vbNullString
  loc_B411E6: FLdPr Me
  loc_B411E9: VCallAd Control_ID_InteTifaLbl
  loc_B411EC: FStAdFunc var_88
  loc_B411EF: FLdPr var_88
  loc_B411F2: Me.Caption = from_stack_1
  loc_B411F7: FFree1Ad var_88
  loc_B411FA: LitStr vbNullString
  loc_B411FD: FLdPr Me
  loc_B41200: VCallAd Control_ID_MecaTifaLbl
  loc_B41203: FStAdFunc var_88
  loc_B41206: FLdPr var_88
  loc_B41209: Me.Caption = from_stack_1
  loc_B4120E: FFree1Ad var_88
  loc_B41211: LitStr "0"
  loc_B41214: FLdPr Me
  loc_B41217: VCallAd Control_ID_CuotApreTxt
  loc_B4121A: FStAdFunc var_88
  loc_B4121D: FLdPr var_88
  loc_B41220: Me.Text = from_stack_1
  loc_B41225: FFree1Ad var_88
  loc_B41228: LitI2_Byte 0
  loc_B4122A: CStrUI1
  loc_B4122C: FStStrNoPop var_8C
  loc_B4122F: FLdPr Me
  loc_B41232: VCallAd Control_ID_AnticipoTxt
  loc_B41235: FStAdFunc var_88
  loc_B41238: FLdPr var_88
  loc_B4123B: Me.Text = from_stack_1
  loc_B41240: FFree1Str var_8C
  loc_B41243: FFree1Ad var_88
  loc_B41246: LitI4 1
  loc_B4124B: LitI4 1
  loc_B41250: LitVarStr var_BC, "###,###,##0.00"
  loc_B41255: FStVarCopyObj var_CC
  loc_B41258: FLdRfVar var_CC
  loc_B4125B: LitVarI2 var_AC, 0
  loc_B41260: FLdRfVar var_DC
  loc_B41263: ImpAdCallFPR4  = Format(, )
  loc_B41268: FLdRfVar var_DC
  loc_B4126B: CStrVarVal var_8C
  loc_B4126F: FLdPr Me
  loc_B41272: VCallAd Control_ID_DerechoTxt
  loc_B41275: FStAdFunc var_88
  loc_B41278: FLdPr var_88
  loc_B4127B: Me.Text = from_stack_1
  loc_B41280: FFree1Str var_8C
  loc_B41283: FFree1Ad var_88
  loc_B41286: FFreeVar var_AC = "": var_CC = ""
  loc_B4128F: LitI4 1
  loc_B41294: LitI4 1
  loc_B41299: LitVarStr var_BC, "###,###,##0.00"
  loc_B4129E: FStVarCopyObj var_CC
  loc_B412A1: FLdRfVar var_CC
  loc_B412A4: LitVarI2 var_AC, 0
  loc_B412A9: FLdRfVar var_DC
  loc_B412AC: ImpAdCallFPR4  = Format(, )
  loc_B412B1: FLdRfVar var_DC
  loc_B412B4: CStrVarVal var_8C
  loc_B412B8: FLdPr Me
  loc_B412BB: VCallAd Control_ID_RecargoTxt
  loc_B412BE: FStAdFunc var_88
  loc_B412C1: FLdPr var_88
  loc_B412C4: Me.Text = from_stack_1
  loc_B412C9: FFree1Str var_8C
  loc_B412CC: FFree1Ad var_88
  loc_B412CF: FFreeVar var_AC = "": var_CC = ""
  loc_B412D8: LitI4 1
  loc_B412DD: LitI4 1
  loc_B412E2: LitVarStr var_BC, "###,###,##0.00"
  loc_B412E7: FStVarCopyObj var_CC
  loc_B412EA: FLdRfVar var_CC
  loc_B412ED: LitVarI2 var_AC, 0
  loc_B412F2: FLdRfVar var_DC
  loc_B412F5: ImpAdCallFPR4  = Format(, )
  loc_B412FA: FLdRfVar var_DC
  loc_B412FD: CStrVarVal var_8C
  loc_B41301: FLdPr Me
  loc_B41304: VCallAd Control_ID_ApremioTxt
  loc_B41307: FStAdFunc var_88
  loc_B4130A: FLdPr var_88
  loc_B4130D: Me.Text = from_stack_1
  loc_B41312: FFree1Str var_8C
  loc_B41315: FFree1Ad var_88
  loc_B41318: FFreeVar var_AC = "": var_CC = ""
  loc_B41321: LitI4 1
  loc_B41326: LitI4 1
  loc_B4132B: LitVarStr var_BC, "###,###,##0.00"
  loc_B41330: FStVarCopyObj var_CC
  loc_B41333: FLdRfVar var_CC
  loc_B41336: LitVarStr var_9C, "0"
  loc_B4133B: FStVarCopyObj var_AC
  loc_B4133E: FLdRfVar var_AC
  loc_B41341: FLdRfVar var_DC
  loc_B41344: ImpAdCallFPR4  = Format(, )
  loc_B41349: FLdRfVar var_DC
  loc_B4134C: CStrVarVal var_8C
  loc_B41350: FLdPr Me
  loc_B41353: VCallAd Control_ID_DescCapiTxt
  loc_B41356: FStAdFunc var_88
  loc_B41359: FLdPr var_88
  loc_B4135C: Me.Text = from_stack_1
  loc_B41361: FFree1Str var_8C
  loc_B41364: FFree1Ad var_88
  loc_B41367: FFreeVar var_AC = "": var_CC = ""
  loc_B41370: LitI4 1
  loc_B41375: LitI4 1
  loc_B4137A: LitVarStr var_BC, "###,###,##0.00"
  loc_B4137F: FStVarCopyObj var_CC
  loc_B41382: FLdRfVar var_CC
  loc_B41385: LitVarStr var_9C, "0"
  loc_B4138A: FStVarCopyObj var_AC
  loc_B4138D: FLdRfVar var_AC
  loc_B41390: FLdRfVar var_DC
  loc_B41393: ImpAdCallFPR4  = Format(, )
  loc_B41398: FLdRfVar var_DC
  loc_B4139B: CStrVarVal var_8C
  loc_B4139F: FLdPr Me
  loc_B413A2: VCallAd Control_ID_DescRecaTxt
  loc_B413A5: FStAdFunc var_88
  loc_B413A8: FLdPr var_88
  loc_B413AB: Me.Text = from_stack_1
  loc_B413B0: FFree1Str var_8C
  loc_B413B3: FFree1Ad var_88
  loc_B413B6: FFreeVar var_AC = "": var_CC = ""
  loc_B413BF: LitI4 1
  loc_B413C4: LitI4 1
  loc_B413C9: LitVarStr var_BC, "###,###,##0.00"
  loc_B413CE: FStVarCopyObj var_CC
  loc_B413D1: FLdRfVar var_CC
  loc_B413D4: LitVarStr var_9C, "0"
  loc_B413D9: FStVarCopyObj var_AC
  loc_B413DC: FLdRfVar var_AC
  loc_B413DF: FLdRfVar var_DC
  loc_B413E2: ImpAdCallFPR4  = Format(, )
  loc_B413E7: FLdRfVar var_DC
  loc_B413EA: CStrVarVal var_8C
  loc_B413EE: FLdPr Me
  loc_B413F1: VCallAd Control_ID_InteresTxt
  loc_B413F4: FStAdFunc var_88
  loc_B413F7: FLdPr var_88
  loc_B413FA: Me.Text = from_stack_1
  loc_B413FF: FFree1Str var_8C
  loc_B41402: FFree1Ad var_88
  loc_B41405: FFreeVar var_AC = "": var_CC = ""
  loc_B4140E: LitI4 1
  loc_B41413: LitI4 1
  loc_B41418: LitVarStr var_BC, "###,###,##0.00"
  loc_B4141D: FStVarCopyObj var_CC
  loc_B41420: FLdRfVar var_CC
  loc_B41423: LitVarStr var_9C, "0"
  loc_B41428: FStVarCopyObj var_AC
  loc_B4142B: FLdRfVar var_AC
  loc_B4142E: FLdRfVar var_DC
  loc_B41431: ImpAdCallFPR4  = Format(, )
  loc_B41436: FLdRfVar var_DC
  loc_B41439: CStrVarVal var_8C
  loc_B4143D: FLdPr Me
  loc_B41440: VCallAd Control_ID_TotalTxt
  loc_B41443: FStAdFunc var_88
  loc_B41446: FLdPr var_88
  loc_B41449: Me.Text = from_stack_1
  loc_B4144E: FFree1Str var_8C
  loc_B41451: FFree1Ad var_88
  loc_B41454: FFreeVar var_AC = "": var_CC = ""
  loc_B4145D: LitI4 0
  loc_B41462: LitI4 3
  loc_B41467: FLdRfVar var_E0
  loc_B4146A: Redim
  loc_B41474: FLdPr Me
  loc_B41477: VCallAd Control_ID_CuotasFlex
  loc_B4147A: CVarAd
  loc_B4147E: ParmAry1St
  loc_B41484: FLdPr Me
  loc_B41487: VCallAd Control_ID_CuotApreTxt
  loc_B4148A: CVarAd
  loc_B4148E: ParmAry1St
  loc_B41494: FLdPr Me
  loc_B41497: VCallAd Control_ID_AnticipoTxt
  loc_B4149A: CVarAd
  loc_B4149E: ParmAry1St
  loc_B414A4: FLdPr Me
  loc_B414A7: VCallAd Control_ID_ImprimirCmd
  loc_B414AA: CVarAd
  loc_B414AE: ParmAry1St
  loc_B414B4: FLdRfVar var_E0
  loc_B414B7: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B414BC: FLdRfVar var_E0
  loc_B414BF: Erase
  loc_B414C0: ExitProcHresult
  loc_B414C1: FLdPr Me
End Sub

Private Sub CucuPersFirmaTxt_GotFocus() '9C3E78
  'Data Table: 52F1AC
  loc_9C3E64: FLdPr Me
  loc_9C3E67: VCallAd Control_ID_CucuPersFirmaTxt
  loc_9C3E6A: CVarAd
  loc_9C3E6E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3E73: FFree1Var var_94 = ""
  loc_9C3E76: ExitProcHresult
End Sub

Private Sub CucuPersFirmaTxt_KeyPress(KeyAscii As Integer) '9DC508
  'Data Table: 52F1AC
  loc_9DC4F0: LitStr "0123456789"
  loc_9DC4F3: FStStrCopy var_88
  loc_9DC4F6: FLdRfVar var_88
  loc_9DC4F9: ILdRf KeyAscii
  loc_9DC4FC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DC501: IStI2 KeyAscii
  loc_9DC504: FFree1Str var_88
  loc_9DC507: ExitProcHresult
End Sub

Private Sub CucuPersFirmaTxt_LostFocus() 'A689EC
  'Data Table: 52F1AC
  loc_A68990: FLdRfVar var_8C
  loc_A68993: FLdPr Me
  loc_A68996: VCallAd Control_ID_CucuPersFirmaTxt
  loc_A68999: FStAdFunc var_88
  loc_A6899C: FLdPr var_88
  loc_A6899F:  = Me.Text
  loc_A689A4: LitI4 1
  loc_A689A9: LitI4 1
  loc_A689AE: LitVarStr var_AC, "##-########-#"
  loc_A689B3: FStVarCopyObj var_BC
  loc_A689B6: FLdRfVar var_BC
  loc_A689B9: FLdZeroAd var_8C
  loc_A689BC: CVarStr var_9C
  loc_A689BF: ImpAdCallI2 Format$(, )
  loc_A689C4: FStStrNoPop var_C0
  loc_A689C7: FLdPr Me
  loc_A689CA: VCallAd Control_ID_CucuPersFirmaTxt
  loc_A689CD: FStAdFunc var_C4
  loc_A689D0: FLdPr var_C4
  loc_A689D3: Me.Text = from_stack_1
  loc_A689D8: FFree1Str var_C0
  loc_A689DB: FFreeAd var_88 = ""
  loc_A689E2: FFreeVar var_9C = ""
  loc_A689E9: ExitProcHresult
  loc_A689EA: NewIfNullPr Me
End Sub

Private Sub CucuPersFirmaTxt_Validate(Cancel As Boolean) 'AB39C0
  'Data Table: 52F1AC
  loc_AB38DC: FLdRfVar var_8A
  loc_AB38DF: FLdPr Me
  loc_AB38E2: VCallAd Control_ID_CucuPersFirmaTxt
  loc_AB38E5: FStAdFunc var_88
  loc_AB38E8: FLdPr var_88
  loc_AB38EB:  = Me.Enabled
  loc_AB38F0: FLdI2 var_8A
  loc_AB38F3: FFree1Ad var_88
  loc_AB38F6: BranchF loc_AB39BF
  loc_AB38F9: FLdRfVar var_90
  loc_AB38FC: FLdPr Me
  loc_AB38FF: VCallAd Control_ID_CucuPersFirmaTxt
  loc_AB3902: FStAdFunc var_88
  loc_AB3905: FLdPr var_88
  loc_AB3908:  = Me.Text
  loc_AB390D: ILdRf var_90
  loc_AB3910: LitStr "C.U.I.T."
  loc_AB3913: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AB3918: FStStrNoPop var_94
  loc_AB391B: FLdPr Me
  loc_AB391E: MemStStrCopy
  loc_AB3922: FFreeStr var_90 = ""
  loc_AB3929: FFree1Ad var_88
  loc_AB392C: FLdPr Me
  loc_AB392F: MemLdStr global_368
  loc_AB3932: LitStr vbNullString
  loc_AB3935: NeStr
  loc_AB3937: BranchF loc_AB395D
  loc_AB393A: FLdPr Me
  loc_AB393D: MemLdStr global_368
  loc_AB3940: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB3945: FLdPr Me
  loc_AB3948: VCallAd Control_ID_CucuPersFirmaTxt
  loc_AB394B: CVarAd
  loc_AB394F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB3954: FFree1Var var_A4 = ""
  loc_AB3957: LitI2_Byte &HFF
  loc_AB3959: IStI2 Cancel
  loc_AB395C: ExitProcHresult
  loc_AB395D: FLdRfVar var_90
  loc_AB3960: FLdPr Me
  loc_AB3963: VCallAd Control_ID_CucuPersFirmaTxt
  loc_AB3966: FStAdFunc var_88
  loc_AB3969: FLdPr var_88
  loc_AB396C:  = Me.Text
  loc_AB3971: ILdRf var_90
  loc_AB3974: FnLenStr
  loc_AB3975: LitI4 &HB
  loc_AB397A: LtI4
  loc_AB397B: FFree1Str var_90
  loc_AB397E: FFree1Ad var_88
  loc_AB3981: BranchF loc_AB39BF
  loc_AB3984: LitStr "Ingrese los 11 dígitos del CUIL"
  loc_AB3987: FLdPr Me
  loc_AB398A: MemStStrCopy
  loc_AB398E: FLdPr Me
  loc_AB3991: MemLdStr global_368
  loc_AB3994: LitStr vbNullString
  loc_AB3997: NeStr
  loc_AB3999: BranchF loc_AB39BF
  loc_AB399C: FLdPr Me
  loc_AB399F: MemLdStr global_368
  loc_AB39A2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB39A7: FLdPr Me
  loc_AB39AA: VCallAd Control_ID_CucuPersFirmaTxt
  loc_AB39AD: CVarAd
  loc_AB39B1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB39B6: FFree1Var var_A4 = ""
  loc_AB39B9: LitI2_Byte &HFF
  loc_AB39BB: IStI2 Cancel
  loc_AB39BE: ExitProcHresult
  loc_AB39BF: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C8F670
  'Data Table: 52F1AC
  loc_C8E014: LitStr vbNullString
  loc_C8E017: FLdPr Me
  loc_C8E01A: MemStStrCopy
  loc_C8E01E: LitI2_Byte 0
  loc_C8E020: PopTmpLdAd2 var_EE
  loc_C8E023: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_C8E028: FLdPr Me
  loc_C8E02B: MemLdStr global_368
  loc_C8E02E: LitStr vbNullString
  loc_C8E031: NeStr
  loc_C8E033: BranchF loc_C8E037
  loc_C8E036: ExitProcHresult
  loc_C8E037: LitI2_Byte 0
  loc_C8E039: PopTmpLdAd2 var_EE
  loc_C8E03C: Call CodiConcMsk_UnknownEvent_8()
  loc_C8E041: FLdPr Me
  loc_C8E044: MemLdStr global_368
  loc_C8E047: LitStr vbNullString
  loc_C8E04A: NeStr
  loc_C8E04C: BranchF loc_C8E050
  loc_C8E04F: ExitProcHresult
  loc_C8E050: LitI2_Byte 0
  loc_C8E052: FLdPr Me
  loc_C8E055: VCallAd Control_ID_SeleTodoChk
  loc_C8E058: FStAdFunc var_F4
  loc_C8E05B: FLdPr var_F4
  loc_C8E05E: Me.Value = from_stack_1
  loc_C8E063: FFree1Ad var_F4
  loc_C8E066: LitStr "0"
  loc_C8E069: FLdPr Me
  loc_C8E06C: VCallAd Control_ID_CodiTifaTxt
  loc_C8E06F: FStAdFunc var_F4
  loc_C8E072: FLdPr var_F4
  loc_C8E075: Me.Text = from_stack_1
  loc_C8E07A: FFree1Ad var_F4
  loc_C8E07D: LitStr "0"
  loc_C8E080: FLdPr Me
  loc_C8E083: VCallAd Control_ID_CuotApreTxt
  loc_C8E086: FStAdFunc var_F4
  loc_C8E089: FLdPr var_F4
  loc_C8E08C: Me.Text = from_stack_1
  loc_C8E091: FFree1Ad var_F4
  loc_C8E094: LitI2_Byte 0
  loc_C8E096: CStrUI1
  loc_C8E098: FStStrNoPop var_F8
  loc_C8E09B: FLdPr Me
  loc_C8E09E: VCallAd Control_ID_AnticipoTxt
  loc_C8E0A1: FStAdFunc var_F4
  loc_C8E0A4: FLdPr var_F4
  loc_C8E0A7: Me.Text = from_stack_1
  loc_C8E0AC: FFree1Str var_F8
  loc_C8E0AF: FFree1Ad var_F4
  loc_C8E0B2: LitI4 0
  loc_C8E0B7: LitI4 0
  loc_C8E0BC: FLdRfVar var_FC
  loc_C8E0BF: Redim
  loc_C8E0C9: FLdPr Me
  loc_C8E0CC: VCallAd Control_ID_CuotApreTxt
  loc_C8E0CF: CVarAd
  loc_C8E0D3: ParmAry1St
  loc_C8E0D9: FLdRfVar var_FC
  loc_C8E0DC: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C8E0E1: FLdRfVar var_FC
  loc_C8E0E4: Erase
  loc_C8E0E5: FLdPr Me
  loc_C8E0E8: MemLdUI1 global_316
  loc_C8E0EC: CI2UI1
  loc_C8E0EE: LitI2_Byte 1
  loc_C8E0F0: EqI2
  loc_C8E0F1: BranchF loc_C8E10D
  loc_C8E0F4: LitI2_Byte &HFF
  loc_C8E0F6: FLdPr Me
  loc_C8E0F9: VCallAd Control_ID_AnticipoTxt
  loc_C8E0FC: FStAdFunc var_F4
  loc_C8E0FF: FLdPr var_F4
  loc_C8E102: Me.Enabled = from_stack_1b
  loc_C8E107: FFree1Ad var_F4
  loc_C8E10A: Branch loc_C8E123
  loc_C8E10D: LitI2_Byte 0
  loc_C8E10F: FLdPr Me
  loc_C8E112: VCallAd Control_ID_AnticipoTxt
  loc_C8E115: FStAdFunc var_F4
  loc_C8E118: FLdPr var_F4
  loc_C8E11B: Me.Enabled = from_stack_1b
  loc_C8E120: FFree1Ad var_F4
  loc_C8E123: LitI4 0
  loc_C8E128: LitI4 0
  loc_C8E12D: FLdRfVar var_FC
  loc_C8E130: Redim
  loc_C8E13A: FLdPr Me
  loc_C8E13D: VCallAd Control_ID_ctacteFlex
  loc_C8E140: CVarAd
  loc_C8E144: ParmAry1St
  loc_C8E14A: FLdRfVar var_FC
  loc_C8E14D: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C8E152: FLdRfVar var_FC
  loc_C8E155: Erase
  loc_C8E156: Call Proc_187_51_B193E8()
  loc_C8E15B: Call Proc_187_53_A855B4()
  loc_C8E160: Call Proc_187_52_AF19AC()
  loc_C8E165: LitI2_Byte 0
  loc_C8E167: CR8I2
  loc_C8E168: FLdPr Me
  loc_C8E16B: MemStFPR8 global_100
  loc_C8E16E: LitI2_Byte 0
  loc_C8E170: CR8I2
  loc_C8E171: FLdPr Me
  loc_C8E174: MemStFPR8 global_108
  loc_C8E177: LitI2_Byte 0
  loc_C8E179: CR8I2
  loc_C8E17A: FLdPr Me
  loc_C8E17D: MemStFPR8 global_116
  loc_C8E180: LitI2_Byte 0
  loc_C8E182: CR8I2
  loc_C8E183: FLdPr Me
  loc_C8E186: MemStFPR8 global_124
  loc_C8E189: LitI2_Byte 0
  loc_C8E18B: CR8I2
  loc_C8E18C: FLdPr Me
  loc_C8E18F: MemStFPR8 global_180
  loc_C8E192: LitI2_Byte 0
  loc_C8E194: CR8I2
  loc_C8E195: FLdPr Me
  loc_C8E198: MemStFPR8 global_188
  loc_C8E19B: LitI4 1
  loc_C8E1A0: LitI4 1
  loc_C8E1A5: LitVarStr var_12C, "0.00"
  loc_C8E1AA: FStVarCopyObj var_10C
  loc_C8E1AD: FLdRfVar var_10C
  loc_C8E1B0: FLdPr Me
  loc_C8E1B3: MemLdRfVar from_stack_1.global_108
  loc_C8E1B6: CVarRef
  loc_C8E1BB: FLdRfVar var_13C
  loc_C8E1BE: ImpAdCallFPR4  = Format(, )
  loc_C8E1C3: FLdRfVar var_13C
  loc_C8E1C6: CStrVarVal var_F8
  loc_C8E1CA: FLdPr Me
  loc_C8E1CD: VCallAd Control_ID_DerechoTxt
  loc_C8E1D0: FStAdFunc var_F4
  loc_C8E1D3: FLdPr var_F4
  loc_C8E1D6: Me.Text = from_stack_1
  loc_C8E1DB: FFree1Str var_F8
  loc_C8E1DE: FFree1Ad var_F4
  loc_C8E1E1: FFreeVar var_10C = ""
  loc_C8E1E8: LitI4 1
  loc_C8E1ED: LitI4 1
  loc_C8E1F2: LitVarStr var_12C, "0.00"
  loc_C8E1F7: FStVarCopyObj var_10C
  loc_C8E1FA: FLdRfVar var_10C
  loc_C8E1FD: FLdPr Me
  loc_C8E200: MemLdRfVar from_stack_1.global_116
  loc_C8E203: CVarRef
  loc_C8E208: FLdRfVar var_13C
  loc_C8E20B: ImpAdCallFPR4  = Format(, )
  loc_C8E210: FLdRfVar var_13C
  loc_C8E213: CStrVarVal var_F8
  loc_C8E217: FLdPr Me
  loc_C8E21A: VCallAd Control_ID_RecargoTxt
  loc_C8E21D: FStAdFunc var_F4
  loc_C8E220: FLdPr var_F4
  loc_C8E223: Me.Text = from_stack_1
  loc_C8E228: FFree1Str var_F8
  loc_C8E22B: FFree1Ad var_F4
  loc_C8E22E: FFreeVar var_10C = ""
  loc_C8E235: LitI4 1
  loc_C8E23A: LitI4 1
  loc_C8E23F: LitVarStr var_12C, "0.00"
  loc_C8E244: FStVarCopyObj var_10C
  loc_C8E247: FLdRfVar var_10C
  loc_C8E24A: FLdPr Me
  loc_C8E24D: MemLdRfVar from_stack_1.global_124
  loc_C8E250: CVarRef
  loc_C8E255: FLdRfVar var_13C
  loc_C8E258: ImpAdCallFPR4  = Format(, )
  loc_C8E25D: FLdRfVar var_13C
  loc_C8E260: CStrVarVal var_F8
  loc_C8E264: FLdPr Me
  loc_C8E267: VCallAd Control_ID_ApremioTxt
  loc_C8E26A: FStAdFunc var_F4
  loc_C8E26D: FLdPr var_F4
  loc_C8E270: Me.Text = from_stack_1
  loc_C8E275: FFree1Str var_F8
  loc_C8E278: FFree1Ad var_F4
  loc_C8E27B: FFreeVar var_10C = ""
  loc_C8E282: LitI4 1
  loc_C8E287: LitI4 1
  loc_C8E28C: LitVarStr var_12C, "0.00"
  loc_C8E291: FStVarCopyObj var_13C
  loc_C8E294: FLdRfVar var_13C
  loc_C8E297: LitVarStr var_11C, "0"
  loc_C8E29C: FStVarCopyObj var_10C
  loc_C8E29F: FLdRfVar var_10C
  loc_C8E2A2: FLdRfVar var_14C
  loc_C8E2A5: ImpAdCallFPR4  = Format(, )
  loc_C8E2AA: FLdRfVar var_14C
  loc_C8E2AD: CStrVarVal var_F8
  loc_C8E2B1: FLdPr Me
  loc_C8E2B4: VCallAd Control_ID_DescCapiTxt
  loc_C8E2B7: FStAdFunc var_F4
  loc_C8E2BA: FLdPr var_F4
  loc_C8E2BD: Me.Text = from_stack_1
  loc_C8E2C2: FFree1Str var_F8
  loc_C8E2C5: FFree1Ad var_F4
  loc_C8E2C8: FFreeVar var_10C = "": var_13C = ""
  loc_C8E2D1: LitI4 1
  loc_C8E2D6: LitI4 1
  loc_C8E2DB: LitVarStr var_12C, "0.00"
  loc_C8E2E0: FStVarCopyObj var_13C
  loc_C8E2E3: FLdRfVar var_13C
  loc_C8E2E6: LitVarStr var_11C, "0"
  loc_C8E2EB: FStVarCopyObj var_10C
  loc_C8E2EE: FLdRfVar var_10C
  loc_C8E2F1: FLdRfVar var_14C
  loc_C8E2F4: ImpAdCallFPR4  = Format(, )
  loc_C8E2F9: FLdRfVar var_14C
  loc_C8E2FC: CStrVarVal var_F8
  loc_C8E300: FLdPr Me
  loc_C8E303: VCallAd Control_ID_DescRecaTxt
  loc_C8E306: FStAdFunc var_F4
  loc_C8E309: FLdPr var_F4
  loc_C8E30C: Me.Text = from_stack_1
  loc_C8E311: FFree1Str var_F8
  loc_C8E314: FFree1Ad var_F4
  loc_C8E317: FFreeVar var_10C = "": var_13C = ""
  loc_C8E320: LitI4 1
  loc_C8E325: LitI4 1
  loc_C8E32A: LitVarStr var_12C, "0.00"
  loc_C8E32F: FStVarCopyObj var_13C
  loc_C8E332: FLdRfVar var_13C
  loc_C8E335: LitVarStr var_11C, "0"
  loc_C8E33A: FStVarCopyObj var_10C
  loc_C8E33D: FLdRfVar var_10C
  loc_C8E340: FLdRfVar var_14C
  loc_C8E343: ImpAdCallFPR4  = Format(, )
  loc_C8E348: FLdRfVar var_14C
  loc_C8E34B: CStrVarVal var_F8
  loc_C8E34F: FLdPr Me
  loc_C8E352: VCallAd Control_ID_InteresTxt
  loc_C8E355: FStAdFunc var_F4
  loc_C8E358: FLdPr var_F4
  loc_C8E35B: Me.Text = from_stack_1
  loc_C8E360: FFree1Str var_F8
  loc_C8E363: FFree1Ad var_F4
  loc_C8E366: FFreeVar var_10C = "": var_13C = ""
  loc_C8E36F: LitI4 2
  loc_C8E374: FLdPr Me
  loc_C8E377: MemLdFPR8 global_108
  loc_C8E37A: FLdPr Me
  loc_C8E37D: MemLdFPR8 global_116
  loc_C8E380: AddR8
  loc_C8E381: FLdPr Me
  loc_C8E384: MemLdFPR8 global_124
  loc_C8E387: AddR8
  loc_C8E388: FLdPr Me
  loc_C8E38B: MemLdFPR8 global_132
  loc_C8E38E: SubR4
  loc_C8E38F: CVarR8
  loc_C8E393: FLdRfVar var_13C
  loc_C8E396: ImpAdCallFPR4  = Round(, )
  loc_C8E39B: LitI4 1
  loc_C8E3A0: LitI4 1
  loc_C8E3A5: LitVarStr var_12C, "0.00"
  loc_C8E3AA: FStVarCopyObj var_14C
  loc_C8E3AD: FLdRfVar var_14C
  loc_C8E3B0: FLdRfVar var_13C
  loc_C8E3B3: FLdRfVar var_15C
  loc_C8E3B6: ImpAdCallFPR4  = Format(, )
  loc_C8E3BB: FLdRfVar var_15C
  loc_C8E3BE: CStrVarVal var_F8
  loc_C8E3C2: FLdPr Me
  loc_C8E3C5: VCallAd Control_ID_TotalTxt
  loc_C8E3C8: FStAdFunc var_F4
  loc_C8E3CB: FLdPr var_F4
  loc_C8E3CE: Me.Text = from_stack_1
  loc_C8E3D3: FFree1Str var_F8
  loc_C8E3D6: FFree1Ad var_F4
  loc_C8E3D9: FFreeVar var_10C = "": var_13C = "": var_14C = ""
  loc_C8E3E4: LitVarStr var_11C, vbNullString
  loc_C8E3E9: PopAdLdVar
  loc_C8E3EA: FLdPr Me
  loc_C8E3ED: VCallAd Control_ID_FechVencMsk
  loc_C8E3F0: FStAdFunc var_F4
  loc_C8E3F3: FLdPr var_F4
  loc_C8E3F6: LateIdSt
  loc_C8E3FB: FFree1Ad var_F4
  loc_C8E3FE: FLdRfVar var_EE
  loc_C8E401: FLdPr Me
  loc_C8E404: VCallAd Control_ID_OficinaCbo
  loc_C8E407: FStAdFunc var_F4
  loc_C8E40A: FLdPr var_F4
  loc_C8E40D:  = Me.ListIndex
  loc_C8E412: FLdI2 var_EE
  loc_C8E415: FStI2 var_15E
  loc_C8E418: FFree1Ad var_F4
  loc_C8E41B: FLdI2 var_15E
  loc_C8E41E: LitI2_Byte 0
  loc_C8E420: EqI2
  loc_C8E421: BranchF loc_C8E42F
  loc_C8E424: LitI2_Byte 1
  loc_C8E426: CUI1I2
  loc_C8E428: ImpAdStUI1 MemVar_D93038
  loc_C8E42C: Branch loc_C8E47C
  loc_C8E42F: FLdI2 var_15E
  loc_C8E432: LitI2_Byte 1
  loc_C8E434: EqI2
  loc_C8E435: BranchF loc_C8E443
  loc_C8E438: LitI2_Byte 2
  loc_C8E43A: CUI1I2
  loc_C8E43C: ImpAdStUI1 MemVar_D93038
  loc_C8E440: Branch loc_C8E47C
  loc_C8E443: FLdI2 var_15E
  loc_C8E446: LitI2_Byte 2
  loc_C8E448: EqI2
  loc_C8E449: BranchF loc_C8E457
  loc_C8E44C: LitI2_Byte 3
  loc_C8E44E: CUI1I2
  loc_C8E450: ImpAdStUI1 MemVar_D93038
  loc_C8E454: Branch loc_C8E47C
  loc_C8E457: FLdI2 var_15E
  loc_C8E45A: LitI2_Byte 3
  loc_C8E45C: EqI2
  loc_C8E45D: BranchF loc_C8E46B
  loc_C8E460: LitI2_Byte 4
  loc_C8E462: CUI1I2
  loc_C8E464: ImpAdStUI1 MemVar_D93038
  loc_C8E468: Branch loc_C8E47C
  loc_C8E46B: FLdI2 var_15E
  loc_C8E46E: LitI2_Byte 4
  loc_C8E470: EqI2
  loc_C8E471: BranchF loc_C8E47C
  loc_C8E474: LitI2_Byte 5
  loc_C8E476: CUI1I2
  loc_C8E478: ImpAdStUI1 MemVar_D93038
  loc_C8E47C: LitI2_Byte 0
  loc_C8E47E: CR8I2
  loc_C8E47F: FStFPR8 var_CC
  loc_C8E482: LitI2_Byte 0
  loc_C8E484: CR8I2
  loc_C8E485: FStFPR8 var_D4
  loc_C8E488: LitI2_Byte 0
  loc_C8E48A: CR8I2
  loc_C8E48B: FStFPR8 var_DC
  loc_C8E48E: LitI2_Byte 0
  loc_C8E490: CR8I2
  loc_C8E491: FStFPR8 var_E4
  loc_C8E494: LitI2_Byte 0
  loc_C8E496: CR8I2
  loc_C8E497: FStFPR8 var_EC
  loc_C8E49A: LitI4 1
  loc_C8E49F: LitI4 1
  loc_C8E4A4: LitVarStr var_12C, "0.00"
  loc_C8E4A9: FStVarCopyObj var_10C
  loc_C8E4AC: FLdRfVar var_10C
  loc_C8E4AF: FLdRfVar var_CC
  loc_C8E4B2: CVarRef
  loc_C8E4B7: FLdRfVar var_13C
  loc_C8E4BA: ImpAdCallFPR4  = Format(, )
  loc_C8E4BF: FLdRfVar var_13C
  loc_C8E4C2: CStrVarVal var_F8
  loc_C8E4C6: FLdPr Me
  loc_C8E4C9: VCallAd Control_ID_txtTotaDere
  loc_C8E4CC: FStAdFunc var_F4
  loc_C8E4CF: FLdPr var_F4
  loc_C8E4D2: Me.Text = from_stack_1
  loc_C8E4D7: FFree1Str var_F8
  loc_C8E4DA: FFree1Ad var_F4
  loc_C8E4DD: FFreeVar var_10C = ""
  loc_C8E4E4: LitI4 1
  loc_C8E4E9: LitI4 1
  loc_C8E4EE: LitVarStr var_12C, "0.00"
  loc_C8E4F3: FStVarCopyObj var_10C
  loc_C8E4F6: FLdRfVar var_10C
  loc_C8E4F9: FLdRfVar var_D4
  loc_C8E4FC: CVarRef
  loc_C8E501: FLdRfVar var_13C
  loc_C8E504: ImpAdCallFPR4  = Format(, )
  loc_C8E509: FLdRfVar var_13C
  loc_C8E50C: CStrVarVal var_F8
  loc_C8E510: FLdPr Me
  loc_C8E513: VCallAd Control_ID_txtTotaReca
  loc_C8E516: FStAdFunc var_F4
  loc_C8E519: FLdPr var_F4
  loc_C8E51C: Me.Text = from_stack_1
  loc_C8E521: FFree1Str var_F8
  loc_C8E524: FFree1Ad var_F4
  loc_C8E527: FFreeVar var_10C = ""
  loc_C8E52E: LitI4 1
  loc_C8E533: LitI4 1
  loc_C8E538: LitVarStr var_12C, "0.00"
  loc_C8E53D: FStVarCopyObj var_10C
  loc_C8E540: FLdRfVar var_10C
  loc_C8E543: FLdRfVar var_DC
  loc_C8E546: CVarRef
  loc_C8E54B: FLdRfVar var_13C
  loc_C8E54E: ImpAdCallFPR4  = Format(, )
  loc_C8E553: FLdRfVar var_13C
  loc_C8E556: CStrVarVal var_F8
  loc_C8E55A: FLdPr Me
  loc_C8E55D: VCallAd Control_ID_txtTotaApre
  loc_C8E560: FStAdFunc var_F4
  loc_C8E563: FLdPr var_F4
  loc_C8E566: Me.Text = from_stack_1
  loc_C8E56B: FFree1Str var_F8
  loc_C8E56E: FFree1Ad var_F4
  loc_C8E571: FFreeVar var_10C = ""
  loc_C8E578: LitI4 2
  loc_C8E57D: FLdRfVar var_CC
  loc_C8E580: CVarRef
  loc_C8E585: FLdRfVar var_10C
  loc_C8E588: ImpAdCallFPR4  = Round(, )
  loc_C8E58D: FLdRfVar var_10C
  loc_C8E590: LitI4 2
  loc_C8E595: FLdRfVar var_D4
  loc_C8E598: CVarRef
  loc_C8E59D: FLdRfVar var_13C
  loc_C8E5A0: ImpAdCallFPR4  = Round(, )
  loc_C8E5A5: FLdRfVar var_13C
  loc_C8E5A8: AddVar var_14C
  loc_C8E5AC: LitI4 2
  loc_C8E5B1: FLdRfVar var_DC
  loc_C8E5B4: CVarRef
  loc_C8E5B9: FLdRfVar var_15C
  loc_C8E5BC: ImpAdCallFPR4  = Round(, )
  loc_C8E5C1: FLdRfVar var_15C
  loc_C8E5C4: AddVar var_180
  loc_C8E5C8: CR4Var
  loc_C8E5C9: FStFPR8 var_E4
  loc_C8E5CC: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_C8E5D9: LitI4 1
  loc_C8E5DE: LitI4 1
  loc_C8E5E3: LitVarStr var_12C, "0.00"
  loc_C8E5E8: FStVarCopyObj var_10C
  loc_C8E5EB: FLdRfVar var_10C
  loc_C8E5EE: FLdRfVar var_E4
  loc_C8E5F1: CVarRef
  loc_C8E5F6: FLdRfVar var_13C
  loc_C8E5F9: ImpAdCallFPR4  = Format(, )
  loc_C8E5FE: FLdRfVar var_13C
  loc_C8E601: CStrVarVal var_F8
  loc_C8E605: FLdPr Me
  loc_C8E608: VCallAd Control_ID_txtTotal
  loc_C8E60B: FStAdFunc var_F4
  loc_C8E60E: FLdPr var_F4
  loc_C8E611: Me.Text = from_stack_1
  loc_C8E616: FFree1Str var_F8
  loc_C8E619: FFree1Ad var_F4
  loc_C8E61C: FFreeVar var_10C = ""
  loc_C8E623: LitI4 1
  loc_C8E628: LitI4 1
  loc_C8E62D: LitVarStr var_12C, "0.00"
  loc_C8E632: FStVarCopyObj var_10C
  loc_C8E635: FLdRfVar var_10C
  loc_C8E638: FLdRfVar var_EC
  loc_C8E63B: CVarRef
  loc_C8E640: FLdRfVar var_13C
  loc_C8E643: ImpAdCallFPR4  = Format(, )
  loc_C8E648: FLdRfVar var_13C
  loc_C8E64B: CStrVarVal var_F8
  loc_C8E64F: FLdPr Me
  loc_C8E652: VCallAd Control_ID_txtTotaSele
  loc_C8E655: FStAdFunc var_F4
  loc_C8E658: FLdPr var_F4
  loc_C8E65B: Me.Text = from_stack_1
  loc_C8E660: FFree1Str var_F8
  loc_C8E663: FFree1Ad var_F4
  loc_C8E666: FFreeVar var_10C = ""
  loc_C8E66D: FLdRfVar var_F8
  loc_C8E670: FLdPr Me
  loc_C8E673: VCallAd Control_ID_NumeCtaTxt
  loc_C8E676: FStAdFunc var_F4
  loc_C8E679: FLdPr var_F4
  loc_C8E67C:  = Me.Text
  loc_C8E681: FLdPr Me
  loc_C8E684: VCallAd Control_ID_FechVencMsk
  loc_C8E687: FStAdFunc var_184
  loc_C8E68A: FLdPr var_184
  loc_C8E68D: LateIdLdVar var_10C DispID_22 0
  loc_C8E694: PopAd
  loc_C8E696: LitStr "tmp_ctacteboleto"
  loc_C8E699: FLdRfVar var_10C
  loc_C8E69C: CStrVarTmp
  loc_C8E69D: FStStrNoPop var_188
  loc_C8E6A0: ILdRf var_F8
  loc_C8E6A3: ImpAdLdUI1
  loc_C8E6A7: FLdPr Me
  loc_C8E6AA: MemLdRfVar from_stack_1.global_68
  loc_C8E6AD: NewIfNullPr clsctacte
  loc_C8E6B0: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C8E6B5: FFreeStr var_F8 = ""
  loc_C8E6BC: FFreeAd var_F4 = ""
  loc_C8E6C3: FFree1Var var_10C = ""
  loc_C8E6C6: FLdRfVar var_F8
  loc_C8E6C9: FLdPr Me
  loc_C8E6CC: VCallAd Control_ID_NumeCtaTxt
  loc_C8E6CF: FStAdFunc var_F4
  loc_C8E6D2: FLdPr var_F4
  loc_C8E6D5:  = Me.Text
  loc_C8E6DA: ILdRf var_F8
  loc_C8E6DD: ImpAdLdUI1
  loc_C8E6E1: FLdPr Me
  loc_C8E6E4: MemLdRfVar from_stack_1.global_68
  loc_C8E6E7: NewIfNullPr clsctacte
  loc_C8E6EA: Call clsctacte.CreaTemporalCtaCteDeta(from_stack_1v, from_stack_2v)
  loc_C8E6EF: FFree1Str var_F8
  loc_C8E6F2: FFree1Ad var_F4
  loc_C8E6F5: FLdPr Me
  loc_C8E6F8: VCallAd Control_ID_CodiConcMsk
  loc_C8E6FB: FStAdFunc var_F4
  loc_C8E6FE: FLdPr var_F4
  loc_C8E701: LateIdLdVar var_10C DispID_22 0
  loc_C8E708: CStrVarTmp
  loc_C8E709: FStStrNoPop var_F8
  loc_C8E70C: LitStr "13022802"
  loc_C8E70F: EqStr
  loc_C8E711: FFree1Str var_F8
  loc_C8E714: FFree1Ad var_F4
  loc_C8E717: FFree1Var var_10C = ""
  loc_C8E71A: BranchF loc_C8E7A3
  loc_C8E71D: LitI2_Byte 1
  loc_C8E71F: CUI1I2
  loc_C8E721: FLdPr Me
  loc_C8E724: MemStUI1
  loc_C8E728: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto "
  loc_C8E72B: LitStr " INNER JOIN concplan ON concplan.PeriInfo = tmp_ctacteboleto.PeriInfo"
  loc_C8E72E: ConcatStr
  loc_C8E72F: FStStrNoPop var_F8
  loc_C8E732: LitStr " AND (concplan.CodiConc = tmp_ctacteboleto.CodiConc OR concplan.SaldConc = tmp_ctacteboleto.CodiConc OR concplan.CuotConc = tmp_ctacteboleto.CodiConc OR concplan.BombConc = tmp_ctacteboleto.CodiConc OR concplan.RecaConc = tmp_ctacteboleto.CodiConc)"
  loc_C8E735: ConcatStr
  loc_C8E736: FStStrNoPop var_188
  loc_C8E739: LitStr " AND concplan.CodiConc = '"
  loc_C8E73C: ConcatStr
  loc_C8E73D: FStStrNoPop var_18C
  loc_C8E740: FLdPr Me
  loc_C8E743: VCallAd Control_ID_CodiConcMsk
  loc_C8E746: FStAdFunc var_F4
  loc_C8E749: FLdPr var_F4
  loc_C8E74C: LateIdLdVar var_10C DispID_22 0
  loc_C8E753: CStrVarTmp
  loc_C8E754: FStStrNoPop var_190
  loc_C8E757: ConcatStr
  loc_C8E758: FStStrNoPop var_194
  loc_C8E75B: LitStr "'"
  loc_C8E75E: ConcatStr
  loc_C8E75F: FStStrNoPop var_198
  loc_C8E762: LitStr " WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C8E765: ConcatStr
  loc_C8E766: FStStrNoPop var_19C
  loc_C8E769: LitStr " AND CodiFapa = 0"
  loc_C8E76C: ConcatStr
  loc_C8E76D: FStStrNoPop var_1A0
  loc_C8E770: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C8E773: ConcatStr
  loc_C8E774: FStStrNoPop var_1A4
  loc_C8E777: FLdPr Me
  loc_C8E77A: MemLdRfVar from_stack_1.global_68
  loc_C8E77D: NewIfNullPr clsctacte
  loc_C8E780: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8E785: FFreeStr var_F8 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_C8E79A: FFree1Ad var_F4
  loc_C8E79D: FFree1Var var_10C = ""
  loc_C8E7A0: Branch loc_C8E9A9
  loc_C8E7A3: ImpAdLdUI1
  loc_C8E7A7: CI2UI1
  loc_C8E7A9: LitI2_Byte 5
  loc_C8E7AB: EqI2
  loc_C8E7AC: BranchF loc_C8E801
  loc_C8E7AF: FLdRfVar var_F8
  loc_C8E7B2: FLdPr Me
  loc_C8E7B5: MemLdRfVar from_stack_1.global_92
  loc_C8E7B8: NewIfNullPr tblusuario
  loc_C8E7BB: from_stack_1v = tblusuario.FaesUsuaGet()
  loc_C8E7C0: ILdRf var_F8
  loc_C8E7C3: CUI1Str
  loc_C8E7C5: FLdPr Me
  loc_C8E7C8: MemStUI1
  loc_C8E7CC: FFree1Str var_F8
  loc_C8E7CF: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto "
  loc_C8E7D2: LitStr " WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C8E7D5: ConcatStr
  loc_C8E7D6: FStStrNoPop var_F8
  loc_C8E7D9: LitStr " AND CodiFapa = 0"
  loc_C8E7DC: ConcatStr
  loc_C8E7DD: FStStrNoPop var_188
  loc_C8E7E0: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C8E7E3: ConcatStr
  loc_C8E7E4: FStStrNoPop var_18C
  loc_C8E7E7: FLdPr Me
  loc_C8E7EA: MemLdRfVar from_stack_1.global_68
  loc_C8E7ED: NewIfNullPr clsctacte
  loc_C8E7F0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8E7F5: FFreeStr var_F8 = "": var_188 = ""
  loc_C8E7FE: Branch loc_C8E9A9
  loc_C8E801: ImpAdLdUI1
  loc_C8E805: CI2UI1
  loc_C8E807: LitI2_Byte 3
  loc_C8E809: EqI2
  loc_C8E80A: FLdPr Me
  loc_C8E80D: VCallAd Control_ID_CodiConcMsk
  loc_C8E810: FStAdFunc var_F4
  loc_C8E813: FLdPr var_F4
  loc_C8E816: LateIdLdVar var_10C DispID_22 0
  loc_C8E81D: CStrVarTmp
  loc_C8E81E: FStStrNoPop var_F8
  loc_C8E821: LitStr "13039300"
  loc_C8E824: EqStr
  loc_C8E826: FLdPr Me
  loc_C8E829: VCallAd Control_ID_CodiConcMsk
  loc_C8E82C: FStAdFunc var_184
  loc_C8E82F: FLdPr var_184
  loc_C8E832: LateIdLdVar var_13C DispID_22 0
  loc_C8E839: CStrVarTmp
  loc_C8E83A: FStStrNoPop var_188
  loc_C8E83D: LitStr "13039400"
  loc_C8E840: EqStr
  loc_C8E842: OrI4
  loc_C8E843: AndI4
  loc_C8E844: FFreeStr var_F8 = ""
  loc_C8E84B: FFreeAd var_F4 = ""
  loc_C8E852: FFreeVar var_10C = ""
  loc_C8E859: BranchF loc_C8E8AE
  loc_C8E85C: FLdRfVar var_F8
  loc_C8E85F: FLdPr Me
  loc_C8E862: MemLdRfVar from_stack_1.global_92
  loc_C8E865: NewIfNullPr tblusuario
  loc_C8E868: from_stack_1v = tblusuario.FaesUsuaGet()
  loc_C8E86D: ILdRf var_F8
  loc_C8E870: CUI1Str
  loc_C8E872: FLdPr Me
  loc_C8E875: MemStUI1
  loc_C8E879: FFree1Str var_F8
  loc_C8E87C: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto "
  loc_C8E87F: LitStr " WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C8E882: ConcatStr
  loc_C8E883: FStStrNoPop var_F8
  loc_C8E886: LitStr " AND CodiFapa = 0"
  loc_C8E889: ConcatStr
  loc_C8E88A: FStStrNoPop var_188
  loc_C8E88D: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C8E890: ConcatStr
  loc_C8E891: FStStrNoPop var_18C
  loc_C8E894: FLdPr Me
  loc_C8E897: MemLdRfVar from_stack_1.global_68
  loc_C8E89A: NewIfNullPr clsctacte
  loc_C8E89D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8E8A2: FFreeStr var_F8 = "": var_188 = ""
  loc_C8E8AB: Branch loc_C8E9A9
  loc_C8E8AE: FLdRfVar var_F8
  loc_C8E8B1: FLdPr Me
  loc_C8E8B4: MemLdRfVar from_stack_1.global_92
  loc_C8E8B7: NewIfNullPr tblusuario
  loc_C8E8BA: from_stack_1v = tblusuario.FaesUsuaGet()
  loc_C8E8BF: ILdRf var_F8
  loc_C8E8C2: CUI1Str
  loc_C8E8C4: FLdPr Me
  loc_C8E8C7: MemStUI1
  loc_C8E8CB: FFree1Str var_F8
  loc_C8E8CE: FLdPr Me
  loc_C8E8D1: VCallAd Control_ID_FechVencMsk
  loc_C8E8D4: FStAdFunc var_184
  loc_C8E8D7: FLdPr var_184
  loc_C8E8DA: LateIdLdVar var_13C DispID_22 0
  loc_C8E8E1: PopAd
  loc_C8E8E3: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto "
  loc_C8E8E6: LitStr " INNER JOIN concplan ON concplan.PeriInfo = tmp_ctacteboleto.PeriInfo"
  loc_C8E8E9: ConcatStr
  loc_C8E8EA: FStStrNoPop var_F8
  loc_C8E8ED: LitStr " AND (concplan.CodiConc = tmp_ctacteboleto.CodiConc OR concplan.SaldConc = tmp_ctacteboleto.CodiConc OR concplan.CuotConc = tmp_ctacteboleto.CodiConc OR concplan.BombConc = tmp_ctacteboleto.CodiConc OR concplan.RecaConc = tmp_ctacteboleto.CodiConc)"
  loc_C8E8F0: ConcatStr
  loc_C8E8F1: FStStrNoPop var_188
  loc_C8E8F4: LitStr " AND concplan.CodiConc = '"
  loc_C8E8F7: ConcatStr
  loc_C8E8F8: FStStrNoPop var_18C
  loc_C8E8FB: FLdPr Me
  loc_C8E8FE: VCallAd Control_ID_CodiConcMsk
  loc_C8E901: FStAdFunc var_F4
  loc_C8E904: FLdPr var_F4
  loc_C8E907: LateIdLdVar var_10C DispID_22 0
  loc_C8E90E: CStrVarTmp
  loc_C8E90F: FStStrNoPop var_190
  loc_C8E912: ConcatStr
  loc_C8E913: FStStrNoPop var_194
  loc_C8E916: LitStr "'"
  loc_C8E919: ConcatStr
  loc_C8E91A: FStStrNoPop var_198
  loc_C8E91D: LitStr " WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_C8E920: ConcatStr
  loc_C8E921: FStStrNoPop var_19C
  loc_C8E924: LitStr " AND FeveCtct <= "
  loc_C8E927: ConcatStr
  loc_C8E928: CVarStr var_1B4
  loc_C8E92B: LitI4 1
  loc_C8E930: LitI4 1
  loc_C8E935: LitVarStr var_11C, "'yyyy-mm-dd'"
  loc_C8E93A: FStVarCopyObj var_15C
  loc_C8E93D: FLdRfVar var_15C
  loc_C8E940: FLdRfVar var_13C
  loc_C8E943: CStrVarTmp
  loc_C8E944: CVarStr var_14C
  loc_C8E947: FLdRfVar var_180
  loc_C8E94A: ImpAdCallFPR4  = Format(, )
  loc_C8E94F: FLdRfVar var_180
  loc_C8E952: ConcatVar var_1C4
  loc_C8E956: LitVarStr var_12C, " AND CodiFapa = 0"
  loc_C8E95B: ConcatVar var_1D4
  loc_C8E95F: LitVarStr var_170, " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C8E964: ConcatVar var_1E4
  loc_C8E968: CStrVarVal var_1A0
  loc_C8E96C: FLdPr Me
  loc_C8E96F: MemLdRfVar from_stack_1.global_68
  loc_C8E972: NewIfNullPr clsctacte
  loc_C8E975: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8E97A: FFreeStr var_F8 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_C8E98D: FFreeAd var_F4 = ""
  loc_C8E994: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = "": var_1B4 = "": var_180 = "": var_1C4 = "": var_1D4 = ""
  loc_C8E9A9: FLdRfVar var_1E8
  loc_C8E9AC: FLdPr Me
  loc_C8E9AF: MemLdRfVar from_stack_1.global_68
  loc_C8E9B2: NewIfNullPr clsctacte
  loc_C8E9B5: from_stack_1 = clsctacte.RecordCount
  loc_C8E9BA: ILdRf var_1E8
  loc_C8E9BD: LitI4 0
  loc_C8E9C2: GtI4
  loc_C8E9C3: BranchF loc_C8EAE2
  loc_C8E9C6: FLdRfVar var_EE
  loc_C8E9C9: FLdPr Me
  loc_C8E9CC: MemLdRfVar from_stack_1.global_68
  loc_C8E9CF: NewIfNullPr clsctacte
  loc_C8E9D2: from_stack_1 = clsctacte.EOF
  loc_C8E9D7: FLdI2 var_EE
  loc_C8E9DA: NotI4
  loc_C8E9DB: BranchF loc_C8EADF
  loc_C8E9DE: FLdRfVar var_10C
  loc_C8E9E1: FLdRfVar var_1EC
  loc_C8E9E4: LitVarStr var_11C, "NumeApre"
  loc_C8E9E9: PopAdLdVar
  loc_C8E9EA: FLdRfVar var_184
  loc_C8E9ED: FLdRfVar var_F4
  loc_C8E9F0: FLdPr Me
  loc_C8E9F3: MemLdRfVar from_stack_1.global_68
  loc_C8E9F6: NewIfNullPr clsctacte
  loc_C8E9F9: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8E9FE: FLdPr var_F4
  loc_C8EA01:  = Me.Fields
  loc_C8EA06: FLdPr var_184
  loc_C8EA09: from_stack_2 = Me.Item(from_stack_1)
  loc_C8EA0E: FLdPr var_1EC
  loc_C8EA11:  = Me.Value
  loc_C8EA16: FLdRfVar var_13C
  loc_C8EA19: FLdRfVar var_1F8
  loc_C8EA1C: LitVarStr var_12C, "SaldCtct"
  loc_C8EA21: PopAdLdVar
  loc_C8EA22: FLdRfVar var_1F4
  loc_C8EA25: FLdRfVar var_1F0
  loc_C8EA28: FLdPr Me
  loc_C8EA2B: MemLdRfVar from_stack_1.global_68
  loc_C8EA2E: NewIfNullPr clsctacte
  loc_C8EA31: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8EA36: FLdPr var_1F0
  loc_C8EA39:  = Me.Fields
  loc_C8EA3E: FLdPr var_1F4
  loc_C8EA41: from_stack_2 = Me.Item(from_stack_1)
  loc_C8EA46: FLdPr var_1F8
  loc_C8EA49:  = Me.Value
  loc_C8EA4E: FLdRfVar var_14C
  loc_C8EA51: FLdRfVar var_204
  loc_C8EA54: LitVarStr var_170, "RecaCtct"
  loc_C8EA59: PopAdLdVar
  loc_C8EA5A: FLdRfVar var_200
  loc_C8EA5D: FLdRfVar var_1FC
  loc_C8EA60: FLdPr Me
  loc_C8EA63: MemLdRfVar from_stack_1.global_68
  loc_C8EA66: NewIfNullPr clsctacte
  loc_C8EA69: from_stack_1v = clsctacte.RsFrmGet()
  loc_C8EA6E: FLdPr var_1FC
  loc_C8EA71:  = Me.Fields
  loc_C8EA76: FLdPr var_200
  loc_C8EA79: from_stack_2 = Me.Item(from_stack_1)
  loc_C8EA7E: FLdPr var_204
  loc_C8EA81:  = Me.Value
  loc_C8EA86: FLdRfVar var_20C
  loc_C8EA89: FLdRfVar var_14C
  loc_C8EA8C: CR4Var
  loc_C8EA8D: PopFPR8
  loc_C8EA8E: FLdRfVar var_13C
  loc_C8EA91: CR4Var
  loc_C8EA92: PopFPR8
  loc_C8EA93: FLdRfVar var_10C
  loc_C8EA96: CI4Var
  loc_C8EA98: FLdPr Me
  loc_C8EA9B: MemLdRfVar from_stack_1.global_80
  loc_C8EA9E: NewIfNullPr clsapremio
  loc_C8EAA1: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C8EAA6: FLdFPR8 var_DC
  loc_C8EAA9: FLdFPR8 var_20C
  loc_C8EAAC: AddR8
  loc_C8EAAD: FStFPR8 var_DC
  loc_C8EAB0: FFreeAd var_F4 = "": var_184 = "": var_1F0 = "": var_1F4 = "": var_1FC = "": var_200 = "": var_1EC = "": var_1F8 = ""
  loc_C8EAC5: FFreeVar var_10C = "": var_13C = ""
  loc_C8EACE: FLdPr Me
  loc_C8EAD1: MemLdRfVar from_stack_1.global_68
  loc_C8EAD4: NewIfNullPr clsctacte
  loc_C8EAD7: Call clsctacte.MoveSiguiente()
  loc_C8EADC: Branch loc_C8E9C6
  loc_C8EADF: Branch loc_C8EAE8
  loc_C8EAE2: LitI2_Byte 0
  loc_C8EAE4: CR8I2
  loc_C8EAE5: FStFPR8 var_DC
  loc_C8EAE8: ImpAdLdUI1
  loc_C8EAEC: CI2UI1
  loc_C8EAEE: LitI2_Byte 1
  loc_C8EAF0: EqI2
  loc_C8EAF1: FLdPr Me
  loc_C8EAF4: VCallAd Control_ID_CodiConcMsk
  loc_C8EAF7: FStAdFunc var_F4
  loc_C8EAFA: FLdPr var_F4
  loc_C8EAFD: LateIdLdVar var_10C DispID_22 0
  loc_C8EB04: CStrVarTmp
  loc_C8EB05: FStStrNoPop var_F8
  loc_C8EB08: LitStr "13022802"
  loc_C8EB0B: EqStr
  loc_C8EB0D: AndI4
  loc_C8EB0E: FFree1Str var_F8
  loc_C8EB11: FFree1Ad var_F4
  loc_C8EB14: FFree1Var var_10C = ""
  loc_C8EB17: BranchF loc_C8EB9E
  loc_C8EB1A: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo FROM tmp_ctacteboleto "
  loc_C8EB1D: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8EB20: ConcatStr
  loc_C8EB21: FStStrNoPop var_F8
  loc_C8EB24: LitStr " INNER JOIN concplan ON concplan.PeriInfo = tmp_ctacteboleto.PeriInfo"
  loc_C8EB27: ConcatStr
  loc_C8EB28: FStStrNoPop var_188
  loc_C8EB2B: LitStr " AND (concplan.CodiConc = tmp_ctacteboleto.CodiConc OR concplan.SaldConc = tmp_ctacteboleto.CodiConc OR concplan.CuotConc = tmp_ctacteboleto.CodiConc OR concplan.BombConc = tmp_ctacteboleto.CodiConc OR concplan.RecaConc = tmp_ctacteboleto.CodiConc)"
  loc_C8EB2E: ConcatStr
  loc_C8EB2F: FStStrNoPop var_18C
  loc_C8EB32: LitStr " AND concplan.CodiConc = '"
  loc_C8EB35: ConcatStr
  loc_C8EB36: FStStrNoPop var_190
  loc_C8EB39: FLdPr Me
  loc_C8EB3C: VCallAd Control_ID_CodiConcMsk
  loc_C8EB3F: FStAdFunc var_F4
  loc_C8EB42: FLdPr var_F4
  loc_C8EB45: LateIdLdVar var_10C DispID_22 0
  loc_C8EB4C: CStrVarTmp
  loc_C8EB4D: FStStrNoPop var_194
  loc_C8EB50: ConcatStr
  loc_C8EB51: FStStrNoPop var_198
  loc_C8EB54: LitStr "'"
  loc_C8EB57: ConcatStr
  loc_C8EB58: FStStrNoPop var_19C
  loc_C8EB5B: LitStr " WHERE CodiFapa = 0"
  loc_C8EB5E: ConcatStr
  loc_C8EB5F: FStStrNoPop var_1A0
  loc_C8EB62: LitStr " AND tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C8EB65: ConcatStr
  loc_C8EB66: FStStrNoPop var_1A4
  loc_C8EB69: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C8EB6C: ConcatStr
  loc_C8EB6D: FStStrNoPop var_210
  loc_C8EB70: FLdPr Me
  loc_C8EB73: MemLdRfVar from_stack_1.global_68
  loc_C8EB76: NewIfNullPr clsctacte
  loc_C8EB79: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8EB7E: FFreeStr var_F8 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = ""
  loc_C8EB95: FFree1Ad var_F4
  loc_C8EB98: FFree1Var var_10C = ""
  loc_C8EB9B: Branch loc_C8EE59
  loc_C8EB9E: ImpAdLdUI1
  loc_C8EBA2: CI2UI1
  loc_C8EBA4: LitI2_Byte 4
  loc_C8EBA6: EqI2
  loc_C8EBA7: FLdPr Me
  loc_C8EBAA: VCallAd Control_ID_CodiConcMsk
  loc_C8EBAD: FStAdFunc var_F4
  loc_C8EBB0: FLdPr var_F4
  loc_C8EBB3: LateIdLdVar var_10C DispID_22 0
  loc_C8EBBA: CStrVarTmp
  loc_C8EBBB: FStStrNoPop var_F8
  loc_C8EBBE: LitStr vbNullString
  loc_C8EBC1: EqStr
  loc_C8EBC3: AndI4
  loc_C8EBC4: FFree1Str var_F8
  loc_C8EBC7: FFree1Ad var_F4
  loc_C8EBCA: FFree1Var var_10C = ""
  loc_C8EBCD: BranchF loc_C8EC70
  loc_C8EBD0: FLdPr Me
  loc_C8EBD3: VCallAd Control_ID_FechVencMsk
  loc_C8EBD6: FStAdFunc var_F4
  loc_C8EBD9: FLdPr var_F4
  loc_C8EBDC: LateIdLdVar var_10C DispID_22 0
  loc_C8EBE3: PopAd
  loc_C8EBE5: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo FROM tmp_ctacteboleto "
  loc_C8EBE8: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8EBEB: ConcatStr
  loc_C8EBEC: FStStrNoPop var_F8
  loc_C8EBEF: LitStr " WHERE FeveCtct <= "
  loc_C8EBF2: ConcatStr
  loc_C8EBF3: CVarStr var_180
  loc_C8EBF6: LitI4 1
  loc_C8EBFB: LitI4 1
  loc_C8EC00: LitVarStr var_11C, "'yyyy-mm-dd'"
  loc_C8EC05: FStVarCopyObj var_14C
  loc_C8EC08: FLdRfVar var_14C
  loc_C8EC0B: FLdRfVar var_10C
  loc_C8EC0E: CStrVarTmp
  loc_C8EC0F: CVarStr var_13C
  loc_C8EC12: FLdRfVar var_15C
  loc_C8EC15: ImpAdCallFPR4  = Format(, )
  loc_C8EC1A: FLdRfVar var_15C
  loc_C8EC1D: ConcatVar var_1B4
  loc_C8EC21: LitVarStr var_12C, " AND CodiFapa = 0"
  loc_C8EC26: ConcatVar var_1C4
  loc_C8EC2A: LitVarStr var_170, " AND tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C8EC2F: ConcatVar var_1D4
  loc_C8EC33: LitVarStr var_220, " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C8EC38: ConcatVar var_1E4
  loc_C8EC3C: CStrVarVal var_188
  loc_C8EC40: FLdPr Me
  loc_C8EC43: MemLdRfVar from_stack_1.global_68
  loc_C8EC46: NewIfNullPr clsctacte
  loc_C8EC49: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8EC4E: FFreeStr var_F8 = ""
  loc_C8EC55: FFree1Ad var_F4
  loc_C8EC58: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_180 = "": var_15C = "": var_1B4 = "": var_1C4 = "": var_1D4 = ""
  loc_C8EC6D: Branch loc_C8EE59
  loc_C8EC70: ImpAdLdUI1
  loc_C8EC74: CI2UI1
  loc_C8EC76: LitI2_Byte 5
  loc_C8EC78: EqI2
  loc_C8EC79: FLdPr Me
  loc_C8EC7C: VCallAd Control_ID_CodiConcMsk
  loc_C8EC7F: FStAdFunc var_F4
  loc_C8EC82: FLdPr var_F4
  loc_C8EC85: LateIdLdVar var_10C DispID_22 0
  loc_C8EC8C: CStrVarTmp
  loc_C8EC8D: FStStrNoPop var_F8
  loc_C8EC90: LitStr vbNullString
  loc_C8EC93: EqStr
  loc_C8EC95: AndI4
  loc_C8EC96: FFree1Str var_F8
  loc_C8EC99: FFree1Ad var_F4
  loc_C8EC9C: FFree1Var var_10C = ""
  loc_C8EC9F: BranchF loc_C8ECDD
  loc_C8ECA2: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo FROM tmp_ctacteboleto "
  loc_C8ECA5: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8ECA8: ConcatStr
  loc_C8ECA9: FStStrNoPop var_F8
  loc_C8ECAC: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C8ECAF: ConcatStr
  loc_C8ECB0: FStStrNoPop var_188
  loc_C8ECB3: LitStr " AND CodiFapa = 0"
  loc_C8ECB6: ConcatStr
  loc_C8ECB7: FStStrNoPop var_18C
  loc_C8ECBA: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C8ECBD: ConcatStr
  loc_C8ECBE: FStStrNoPop var_190
  loc_C8ECC1: FLdPr Me
  loc_C8ECC4: MemLdRfVar from_stack_1.global_68
  loc_C8ECC7: NewIfNullPr clsctacte
  loc_C8ECCA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8ECCF: FFreeStr var_F8 = "": var_188 = "": var_18C = ""
  loc_C8ECDA: Branch loc_C8EE59
  loc_C8ECDD: ImpAdLdUI1
  loc_C8ECE1: CI2UI1
  loc_C8ECE3: LitI2_Byte 3
  loc_C8ECE5: EqI2
  loc_C8ECE6: FLdPr Me
  loc_C8ECE9: VCallAd Control_ID_CodiConcMsk
  loc_C8ECEC: FStAdFunc var_F4
  loc_C8ECEF: FLdPr var_F4
  loc_C8ECF2: LateIdLdVar var_10C DispID_22 0
  loc_C8ECF9: CStrVarTmp
  loc_C8ECFA: FStStrNoPop var_F8
  loc_C8ECFD: LitStr "13039300"
  loc_C8ED00: EqStr
  loc_C8ED02: FLdPr Me
  loc_C8ED05: VCallAd Control_ID_CodiConcMsk
  loc_C8ED08: FStAdFunc var_184
  loc_C8ED0B: FLdPr var_184
  loc_C8ED0E: LateIdLdVar var_13C DispID_22 0
  loc_C8ED15: CStrVarTmp
  loc_C8ED16: FStStrNoPop var_188
  loc_C8ED19: LitStr "13039400"
  loc_C8ED1C: EqStr
  loc_C8ED1E: OrI4
  loc_C8ED1F: AndI4
  loc_C8ED20: FFreeStr var_F8 = ""
  loc_C8ED27: FFreeAd var_F4 = ""
  loc_C8ED2E: FFreeVar var_10C = ""
  loc_C8ED35: BranchF loc_C8ED73
  loc_C8ED38: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo FROM tmp_ctacteboleto "
  loc_C8ED3B: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8ED3E: ConcatStr
  loc_C8ED3F: FStStrNoPop var_F8
  loc_C8ED42: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C8ED45: ConcatStr
  loc_C8ED46: FStStrNoPop var_188
  loc_C8ED49: LitStr " AND CodiFapa = 0"
  loc_C8ED4C: ConcatStr
  loc_C8ED4D: FStStrNoPop var_18C
  loc_C8ED50: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C8ED53: ConcatStr
  loc_C8ED54: FStStrNoPop var_190
  loc_C8ED57: FLdPr Me
  loc_C8ED5A: MemLdRfVar from_stack_1.global_68
  loc_C8ED5D: NewIfNullPr clsctacte
  loc_C8ED60: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8ED65: FFreeStr var_F8 = "": var_188 = "": var_18C = ""
  loc_C8ED70: Branch loc_C8EE59
  loc_C8ED73: FLdPr Me
  loc_C8ED76: VCallAd Control_ID_FechVencMsk
  loc_C8ED79: FStAdFunc var_184
  loc_C8ED7C: FLdPr var_184
  loc_C8ED7F: LateIdLdVar var_13C DispID_22 0
  loc_C8ED86: PopAd
  loc_C8ED88: LitStr "SELECT tmp_ctacteboleto.*, AbreTimo FROM tmp_ctacteboleto "
  loc_C8ED8B: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C8ED8E: ConcatStr
  loc_C8ED8F: FStStrNoPop var_F8
  loc_C8ED92: LitStr " INNER JOIN concplan ON concplan.PeriInfo = tmp_ctacteboleto.PeriInfo"
  loc_C8ED95: ConcatStr
  loc_C8ED96: FStStrNoPop var_188
  loc_C8ED99: LitStr " AND (concplan.CodiConc = tmp_ctacteboleto.CodiConc OR concplan.SaldConc = tmp_ctacteboleto.CodiConc OR concplan.CuotConc = tmp_ctacteboleto.CodiConc OR concplan.BombConc = tmp_ctacteboleto.CodiConc OR concplan.RecaConc = tmp_ctacteboleto.CodiConc)"
  loc_C8ED9C: ConcatStr
  loc_C8ED9D: FStStrNoPop var_18C
  loc_C8EDA0: LitStr " AND concplan.CodiConc = '"
  loc_C8EDA3: ConcatStr
  loc_C8EDA4: FStStrNoPop var_190
  loc_C8EDA7: FLdPr Me
  loc_C8EDAA: VCallAd Control_ID_CodiConcMsk
  loc_C8EDAD: FStAdFunc var_F4
  loc_C8EDB0: FLdPr var_F4
  loc_C8EDB3: LateIdLdVar var_10C DispID_22 0
  loc_C8EDBA: CStrVarTmp
  loc_C8EDBB: FStStrNoPop var_194
  loc_C8EDBE: ConcatStr
  loc_C8EDBF: FStStrNoPop var_198
  loc_C8EDC2: LitStr "'"
  loc_C8EDC5: ConcatStr
  loc_C8EDC6: FStStrNoPop var_19C
  loc_C8EDC9: LitStr " WHERE FeveCtct <= "
  loc_C8EDCC: ConcatStr
  loc_C8EDCD: CVarStr var_1B4
  loc_C8EDD0: LitI4 1
  loc_C8EDD5: LitI4 1
  loc_C8EDDA: LitVarStr var_11C, "'yyyy-mm-dd'"
  loc_C8EDDF: FStVarCopyObj var_15C
  loc_C8EDE2: FLdRfVar var_15C
  loc_C8EDE5: FLdRfVar var_13C
  loc_C8EDE8: CStrVarTmp
  loc_C8EDE9: CVarStr var_14C
  loc_C8EDEC: FLdRfVar var_180
  loc_C8EDEF: ImpAdCallFPR4  = Format(, )
  loc_C8EDF4: FLdRfVar var_180
  loc_C8EDF7: ConcatVar var_1C4
  loc_C8EDFB: LitVarStr var_12C, " AND tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C8EE00: ConcatVar var_1D4
  loc_C8EE04: LitVarStr var_170, " AND CodiFapa = 0"
  loc_C8EE09: ConcatVar var_1E4
  loc_C8EE0D: LitVarStr var_220, " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C8EE12: ConcatVar var_230
  loc_C8EE16: CStrVarVal var_1A0
  loc_C8EE1A: FLdPr Me
  loc_C8EE1D: MemLdRfVar from_stack_1.global_68
  loc_C8EE20: NewIfNullPr clsctacte
  loc_C8EE23: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C8EE28: FFreeStr var_F8 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = ""
  loc_C8EE3B: FFreeAd var_F4 = ""
  loc_C8EE42: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = "": var_1B4 = "": var_180 = "": var_1C4 = "": var_1D4 = "": var_1E4 = ""
  loc_C8EE59: FLdRfVar var_1E8
  loc_C8EE5C: FLdPr Me
  loc_C8EE5F: MemLdRfVar from_stack_1.global_68
  loc_C8EE62: NewIfNullPr clsctacte
  loc_C8EE65: from_stack_1 = clsctacte.RecordCount
  loc_C8EE6A: ILdRf var_1E8
  loc_C8EE6D: LitI4 0
  loc_C8EE72: GtI4
  loc_C8EE73: BranchF loc_C8F652
  loc_C8EE76: FLdPr Me
  loc_C8EE79: MemLdRfVar from_stack_1.global_68
  loc_C8EE7C: NewIfNullPr clsctacte
  loc_C8EE7F: Call clsctacte.MoveFirst()
  loc_C8EE84: FLdRfVar var_EE
  loc_C8EE87: FLdPr Me
  loc_C8EE8A: MemLdRfVar from_stack_1.global_68
  loc_C8EE8D: NewIfNullPr clsctacte
  loc_C8EE90: from_stack_1 = clsctacte.EOF
  loc_C8EE95: FLdI2 var_EE
  loc_C8EE98: NotI4
  loc_C8EE99: BranchF loc_C8F4C9
  loc_C8EE9C: FLdRfVar var_20C
  loc_C8EE9F: FLdPr Me
  loc_C8EEA2: MemLdRfVar from_stack_1.global_68
  loc_C8EEA5: NewIfNullPr clsctacte
  loc_C8EEA8: from_stack_1 = clsctacte.SaldCtct
  loc_C8EEAD: FLdFPR8 var_20C
  loc_C8EEB0: FnCDblR8
  loc_C8EEB2: LitI2_Byte 0
  loc_C8EEB4: CR8I2
  loc_C8EEB5: GtR4
  loc_C8EEB6: BranchF loc_C8F4B8
  loc_C8EEB9: FLdRfVar var_20C
  loc_C8EEBC: FLdPr Me
  loc_C8EEBF: MemLdRfVar from_stack_1.global_68
  loc_C8EEC2: NewIfNullPr clsctacte
  loc_C8EEC5: from_stack_1 = clsctacte.SaldCtct
  loc_C8EECA: LitI4 2
  loc_C8EECF: FLdFPR8 var_CC
  loc_C8EED2: FnCDblR8
  loc_C8EED4: FLdFPR8 var_20C
  loc_C8EED7: FnCDblR8
  loc_C8EED9: AddR8
  loc_C8EEDA: CVarR8
  loc_C8EEDE: FLdRfVar var_13C
  loc_C8EEE1: ImpAdCallFPR4  = Round(, )
  loc_C8EEE6: FLdRfVar var_13C
  loc_C8EEE9: CR4Var
  loc_C8EEEA: FStFPR8 var_CC
  loc_C8EEED: FFreeVar var_10C = ""
  loc_C8EEF4: FLdRfVar var_20C
  loc_C8EEF7: FLdPr Me
  loc_C8EEFA: MemLdRfVar from_stack_1.global_68
  loc_C8EEFD: NewIfNullPr clsctacte
  loc_C8EF00: from_stack_1 = clsctacte.RecaCtct
  loc_C8EF05: LitI4 2
  loc_C8EF0A: FLdFPR8 var_D4
  loc_C8EF0D: FnCDblR8
  loc_C8EF0F: FLdFPR8 var_20C
  loc_C8EF12: FnCDblR8
  loc_C8EF14: AddR8
  loc_C8EF15: CVarR8
  loc_C8EF19: FLdRfVar var_13C
  loc_C8EF1C: ImpAdCallFPR4  = Round(, )
  loc_C8EF21: FLdRfVar var_13C
  loc_C8EF24: CR4Var
  loc_C8EF25: FStFPR8 var_D4
  loc_C8EF28: FFreeVar var_10C = ""
  loc_C8EF2F: FLdRfVar var_EE
  loc_C8EF32: FLdPr Me
  loc_C8EF35: MemLdRfVar from_stack_1.global_68
  loc_C8EF38: NewIfNullPr clsctacte
  loc_C8EF3B: from_stack_1 = clsctacte.BimeCtct
  loc_C8EF40: LitI4 1
  loc_C8EF45: LitI4 1
  loc_C8EF4A: LitVarStr var_12C, "#00"
  loc_C8EF4F: FStVarCopyObj var_13C
  loc_C8EF52: FLdRfVar var_13C
  loc_C8EF55: FLdI2 var_EE
  loc_C8EF58: CVarI2 var_10C
  loc_C8EF5B: FLdRfVar var_14C
  loc_C8EF5E: ImpAdCallFPR4  = Format(, )
  loc_C8EF63: FLdRfVar var_14C
  loc_C8EF66: LitVarStr var_170, "/"
  loc_C8EF6B: ConcatVar var_15C
  loc_C8EF6F: FLdRfVar var_232
  loc_C8EF72: FLdPr Me
  loc_C8EF75: MemLdRfVar from_stack_1.global_68
  loc_C8EF78: NewIfNullPr clsctacte
  loc_C8EF7B: from_stack_1 = clsctacte.PeriCtct
  loc_C8EF80: FLdI2 var_232
  loc_C8EF83: CVarI2 var_220
  loc_C8EF86: ConcatVar var_180
  loc_C8EF8A: CStrVarTmp
  loc_C8EF8B: FLdRfVar var_94
  loc_C8EF8E: StFixedStrFree
  loc_C8EF92: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_C8EF9F: FLdRfVar var_1E8
  loc_C8EFA2: FLdPr Me
  loc_C8EFA5: MemLdRfVar from_stack_1.global_68
  loc_C8EFA8: NewIfNullPr clsctacte
  loc_C8EFAB: from_stack_1 = clsctacte.NumeBole
  loc_C8EFB0: LitI4 1
  loc_C8EFB5: LitI4 1
  loc_C8EFBA: LitVarStr var_12C, "#######0"
  loc_C8EFBF: FStVarCopyObj var_13C
  loc_C8EFC2: FLdRfVar var_13C
  loc_C8EFC5: ILdRf var_1E8
  loc_C8EFC8: CVarI4
  loc_C8EFCC: FLdRfVar var_14C
  loc_C8EFCF: ImpAdCallFPR4  = Format(, )
  loc_C8EFD4: FLdRfVar var_14C
  loc_C8EFD7: LitVarStr var_170, "-"
  loc_C8EFDC: ConcatVar var_15C
  loc_C8EFE0: FLdRfVar var_EE
  loc_C8EFE3: FLdPr Me
  loc_C8EFE6: MemLdRfVar from_stack_1.global_68
  loc_C8EFE9: NewIfNullPr clsctacte
  loc_C8EFEC: from_stack_1 = clsctacte.PeriBole
  loc_C8EFF1: FLdI2 var_EE
  loc_C8EFF4: CVarI2 var_220
  loc_C8EFF7: ConcatVar var_180
  loc_C8EFFB: CStrVarTmp
  loc_C8EFFC: FLdRfVar var_AE
  loc_C8EFFF: StFixedStrFree
  loc_C8F003: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_C8F010: FLdRfVar var_20C
  loc_C8F013: FLdPr Me
  loc_C8F016: MemLdRfVar from_stack_1.global_68
  loc_C8F019: NewIfNullPr clsctacte
  loc_C8F01C: from_stack_1 = clsctacte.SaldCtct
  loc_C8F021: FLdFPR8 var_20C
  loc_C8F024: FnCDblR8
  loc_C8F026: LitI2_Byte 0
  loc_C8F028: CR8I2
  loc_C8F029: NeR8
  loc_C8F02A: BranchF loc_C8F075
  loc_C8F02D: FLdRfVar var_20C
  loc_C8F030: FLdPr Me
  loc_C8F033: MemLdRfVar from_stack_1.global_68
  loc_C8F036: NewIfNullPr clsctacte
  loc_C8F039: from_stack_1 = clsctacte.SaldCtct
  loc_C8F03E: LitI4 1
  loc_C8F043: LitI4 1
  loc_C8F048: LitVarStr var_12C, "0.00"
  loc_C8F04D: FStVarCopyObj var_13C
  loc_C8F050: FLdRfVar var_13C
  loc_C8F053: FLdFPR8 var_20C
  loc_C8F056: CVarR8
  loc_C8F05A: FLdRfVar var_14C
  loc_C8F05D: ImpAdCallFPR4  = Format(, )
  loc_C8F062: FLdRfVar var_14C
  loc_C8F065: CStrVarTmp
  loc_C8F066: FStStr var_B4
  loc_C8F069: FFreeVar var_10C = "": var_13C = ""
  loc_C8F072: Branch loc_C8F07B
  loc_C8F075: LitStr vbNullString
  loc_C8F078: FStStrCopy var_B4
  loc_C8F07B: LitStr vbNullString
  loc_C8F07E: FStStrCopy var_B8
  loc_C8F081: FLdRfVar var_20C
  loc_C8F084: FLdPr Me
  loc_C8F087: MemLdRfVar from_stack_1.global_68
  loc_C8F08A: NewIfNullPr clsctacte
  loc_C8F08D: from_stack_1 = clsctacte.RecaCtct
  loc_C8F092: FLdFPR8 var_20C
  loc_C8F095: FnCDblR8
  loc_C8F097: LitI2_Byte 0
  loc_C8F099: CR8I2
  loc_C8F09A: NeR8
  loc_C8F09B: BranchF loc_C8F0E6
  loc_C8F09E: FLdRfVar var_20C
  loc_C8F0A1: FLdPr Me
  loc_C8F0A4: MemLdRfVar from_stack_1.global_68
  loc_C8F0A7: NewIfNullPr clsctacte
  loc_C8F0AA: from_stack_1 = clsctacte.RecaCtct
  loc_C8F0AF: LitI4 1
  loc_C8F0B4: LitI4 1
  loc_C8F0B9: LitVarStr var_12C, "###,###,##0.00"
  loc_C8F0BE: FStVarCopyObj var_13C
  loc_C8F0C1: FLdRfVar var_13C
  loc_C8F0C4: FLdFPR8 var_20C
  loc_C8F0C7: CVarR8
  loc_C8F0CB: FLdRfVar var_14C
  loc_C8F0CE: ImpAdCallFPR4  = Format(, )
  loc_C8F0D3: FLdRfVar var_14C
  loc_C8F0D6: CStrVarTmp
  loc_C8F0D7: FStStr var_BC
  loc_C8F0DA: FFreeVar var_10C = "": var_13C = ""
  loc_C8F0E3: Branch loc_C8F0EC
  loc_C8F0E6: LitStr vbNullString
  loc_C8F0E9: FStStrCopy var_BC
  loc_C8F0EC: FLdRfVar var_20C
  loc_C8F0EF: FLdPr Me
  loc_C8F0F2: MemLdRfVar from_stack_1.global_68
  loc_C8F0F5: NewIfNullPr clsctacte
  loc_C8F0F8: from_stack_1 = clsctacte.SaldCtct
  loc_C8F0FD: FLdRfVar var_23C
  loc_C8F100: FLdPr Me
  loc_C8F103: MemLdRfVar from_stack_1.global_68
  loc_C8F106: NewIfNullPr clsctacte
  loc_C8F109: from_stack_1 = clsctacte.RecaCtct
  loc_C8F10E: LitI4 2
  loc_C8F113: FLdFPR8 var_20C
  loc_C8F116: FnCDblR8
  loc_C8F118: FLdFPR8 var_23C
  loc_C8F11B: FnCDblR8
  loc_C8F11D: AddR8
  loc_C8F11E: CVarR8
  loc_C8F122: FLdRfVar var_13C
  loc_C8F125: ImpAdCallFPR4  = Round(, )
  loc_C8F12A: LitI4 1
  loc_C8F12F: LitI4 1
  loc_C8F134: LitVarStr var_12C, "0.00"
  loc_C8F139: FStVarCopyObj var_14C
  loc_C8F13C: FLdRfVar var_14C
  loc_C8F13F: FLdRfVar var_13C
  loc_C8F142: FLdRfVar var_15C
  loc_C8F145: ImpAdCallFPR4  = Format(, )
  loc_C8F14A: FLdRfVar var_15C
  loc_C8F14D: CStrVarTmp
  loc_C8F14E: FStStr var_C0
  loc_C8F151: FFreeVar var_10C = "": var_13C = "": var_14C = ""
  loc_C8F15C: FLdRfVar var_EE
  loc_C8F15F: FLdPr Me
  loc_C8F162: MemLdRfVar from_stack_1.global_68
  loc_C8F165: NewIfNullPr clsctacte
  loc_C8F168: from_stack_1 = clsctacte.CodiOfic
  loc_C8F16D: FLdI2 var_EE
  loc_C8F170: CVarI2 var_11C
  loc_C8F173: LitI4 9
  loc_C8F178: FLdRfVar var_10C
  loc_C8F17B: ImpAdCallFPR4  = Chr()
  loc_C8F180: FLdRfVar var_10C
  loc_C8F183: ConcatVar var_13C
  loc_C8F187: FLdRfVar var_F8
  loc_C8F18A: FLdPr Me
  loc_C8F18D: MemLdRfVar from_stack_1.global_68
  loc_C8F190: NewIfNullPr clsctacte
  loc_C8F193: from_stack_1 = clsctacte.CuenCtct
  loc_C8F198: FLdZeroAd var_F8
  loc_C8F19B: CVarStr var_14C
  loc_C8F19E: ConcatVar var_15C
  loc_C8F1A2: LitI4 9
  loc_C8F1A7: FLdRfVar var_180
  loc_C8F1AA: ImpAdCallFPR4  = Chr()
  loc_C8F1AF: FLdRfVar var_180
  loc_C8F1B2: ConcatVar var_1B4
  loc_C8F1B6: FLdRfVar var_94
  loc_C8F1B9: LdFixedStr
  loc_C8F1BC: CVarStr var_1C4
  loc_C8F1BF: ConcatVar var_1D4
  loc_C8F1C3: LitI4 9
  loc_C8F1C8: FLdRfVar var_1E4
  loc_C8F1CB: ImpAdCallFPR4  = Chr()
  loc_C8F1D0: FLdRfVar var_1E4
  loc_C8F1D3: ConcatVar var_230
  loc_C8F1D7: FLdRfVar var_AE
  loc_C8F1DA: LdFixedStr
  loc_C8F1DD: CVarStr var_24C
  loc_C8F1E0: ConcatVar var_25C
  loc_C8F1E4: LitI4 9
  loc_C8F1E9: FLdRfVar var_26C
  loc_C8F1EC: ImpAdCallFPR4  = Chr()
  loc_C8F1F1: FLdRfVar var_26C
  loc_C8F1F4: ConcatVar var_27C
  loc_C8F1F8: FLdRfVar var_188
  loc_C8F1FB: FLdPr Me
  loc_C8F1FE: MemLdRfVar from_stack_1.global_68
  loc_C8F201: NewIfNullPr clsctacte
  loc_C8F204: from_stack_1 = clsctacte.FealCtct
  loc_C8F209: FLdZeroAd var_188
  loc_C8F20C: CVarStr var_28C
  loc_C8F20F: ConcatVar var_29C
  loc_C8F213: LitI4 9
  loc_C8F218: FLdRfVar var_2AC
  loc_C8F21B: ImpAdCallFPR4  = Chr()
  loc_C8F220: FLdRfVar var_2AC
  loc_C8F223: ConcatVar var_2BC
  loc_C8F227: FLdRfVar var_2CC
  loc_C8F22A: FLdPr Me
  loc_C8F22D: MemLdRfVar from_stack_1.global_68
  loc_C8F230: NewIfNullPr clsctacte
  loc_C8F233: from_stack_1 = clsctacte.FeveCtct
  loc_C8F238: FLdRfVar var_2CC
  loc_C8F23B: ConcatVar var_2DC
  loc_C8F23F: LitI4 9
  loc_C8F244: FLdRfVar var_2EC
  loc_C8F247: ImpAdCallFPR4  = Chr()
  loc_C8F24C: FLdRfVar var_2EC
  loc_C8F24F: ConcatVar var_2FC
  loc_C8F253: FLdRfVar var_18C
  loc_C8F256: FLdPr Me
  loc_C8F259: MemLdRfVar from_stack_1.global_68
  loc_C8F25C: NewIfNullPr clsctacte
  loc_C8F25F: from_stack_1 = clsctacte.CodiConc
  loc_C8F264: FLdZeroAd var_18C
  loc_C8F267: CVarStr var_30C
  loc_C8F26A: ConcatVar var_31C
  loc_C8F26E: LitI4 9
  loc_C8F273: FLdRfVar var_32C
  loc_C8F276: ImpAdCallFPR4  = Chr()
  loc_C8F27B: FLdRfVar var_32C
  loc_C8F27E: ConcatVar var_33C
  loc_C8F282: FLdRfVar var_1E8
  loc_C8F285: FLdPr Me
  loc_C8F288: MemLdRfVar from_stack_1.global_68
  loc_C8F28B: NewIfNullPr clsctacte
  loc_C8F28E: from_stack_1 = clsctacte.CodiFapa
  loc_C8F293: ILdRf var_1E8
  loc_C8F296: CVarI4
  loc_C8F29A: ConcatVar var_34C
  loc_C8F29E: LitI4 9
  loc_C8F2A3: FLdRfVar var_35C
  loc_C8F2A6: ImpAdCallFPR4  = Chr()
  loc_C8F2AB: FLdRfVar var_35C
  loc_C8F2AE: ConcatVar var_36C
  loc_C8F2B2: FLdRfVar var_370
  loc_C8F2B5: FLdPr Me
  loc_C8F2B8: MemLdRfVar from_stack_1.global_68
  loc_C8F2BB: NewIfNullPr clsctacte
  loc_C8F2BE: from_stack_1 = clsctacte.NumeApre
  loc_C8F2C3: ILdRf var_370
  loc_C8F2C6: CVarI4
  loc_C8F2CA: ConcatVar var_380
  loc_C8F2CE: LitI4 9
  loc_C8F2D3: FLdRfVar var_390
  loc_C8F2D6: ImpAdCallFPR4  = Chr()
  loc_C8F2DB: FLdRfVar var_390
  loc_C8F2DE: ConcatVar var_3A0
  loc_C8F2E2: FLdRfVar var_190
  loc_C8F2E5: FLdPr Me
  loc_C8F2E8: MemLdRfVar from_stack_1.global_68
  loc_C8F2EB: NewIfNullPr clsctacte
  loc_C8F2EE: from_stack_1 = clsctacte.ExpeCtct
  loc_C8F2F3: FLdZeroAd var_190
  loc_C8F2F6: CVarStr var_3B0
  loc_C8F2F9: ConcatVar var_3C0
  loc_C8F2FD: LitI4 9
  loc_C8F302: FLdRfVar var_3D0
  loc_C8F305: ImpAdCallFPR4  = Chr()
  loc_C8F30A: FLdRfVar var_3D0
  loc_C8F30D: ConcatVar var_3E0
  loc_C8F311: FLdRfVar var_194
  loc_C8F314: FLdPr Me
  loc_C8F317: MemLdRfVar from_stack_1.global_68
  loc_C8F31A: NewIfNullPr clsctacte
  loc_C8F31D: from_stack_1 = clsctacte.AbreTimo
  loc_C8F322: FLdZeroAd var_194
  loc_C8F325: CVarStr var_3F0
  loc_C8F328: ConcatVar var_400
  loc_C8F32C: LitI4 9
  loc_C8F331: FLdRfVar var_410
  loc_C8F334: ImpAdCallFPR4  = Chr()
  loc_C8F339: FLdRfVar var_410
  loc_C8F33C: ConcatVar var_420
  loc_C8F340: ILdRf var_B4
  loc_C8F343: CVarStr var_220
  loc_C8F346: ConcatVar var_430
  loc_C8F34A: LitI4 9
  loc_C8F34F: FLdRfVar var_440
  loc_C8F352: ImpAdCallFPR4  = Chr()
  loc_C8F357: FLdRfVar var_440
  loc_C8F35A: ConcatVar var_450
  loc_C8F35E: ILdRf var_BC
  loc_C8F361: CVarStr var_460
  loc_C8F364: ConcatVar var_470
  loc_C8F368: LitI4 9
  loc_C8F36D: FLdRfVar var_480
  loc_C8F370: ImpAdCallFPR4  = Chr()
  loc_C8F375: FLdRfVar var_480
  loc_C8F378: ConcatVar var_490
  loc_C8F37C: ILdRf var_C0
  loc_C8F37F: CVarStr var_4A0
  loc_C8F382: ConcatVar var_4B0
  loc_C8F386: LitI4 9
  loc_C8F38B: FLdRfVar var_4C0
  loc_C8F38E: ImpAdCallFPR4  = Chr()
  loc_C8F393: FLdRfVar var_4C0
  loc_C8F396: ConcatVar var_4D0
  loc_C8F39A: FLdRfVar var_198
  loc_C8F39D: FLdPr Me
  loc_C8F3A0: MemLdRfVar from_stack_1.global_68
  loc_C8F3A3: NewIfNullPr clsctacte
  loc_C8F3A6: from_stack_1 = clsctacte.SeleCtct
  loc_C8F3AB: FLdZeroAd var_198
  loc_C8F3AE: CVarStr var_4E0
  loc_C8F3B1: ConcatVar var_4F0
  loc_C8F3B5: LitI4 9
  loc_C8F3BA: FLdRfVar var_500
  loc_C8F3BD: ImpAdCallFPR4  = Chr()
  loc_C8F3C2: FLdRfVar var_500
  loc_C8F3C5: ConcatVar var_510
  loc_C8F3C9: FLdRfVar var_514
  loc_C8F3CC: FLdPr Me
  loc_C8F3CF: MemLdRfVar from_stack_1.global_68
  loc_C8F3D2: NewIfNullPr clsctacte
  loc_C8F3D5: from_stack_1 = clsctacte.NumeCtct
  loc_C8F3DA: ILdRf var_514
  loc_C8F3DD: CVarI4
  loc_C8F3E1: ConcatVar var_534
  loc_C8F3E5: LitI4 9
  loc_C8F3EA: FLdRfVar var_544
  loc_C8F3ED: ImpAdCallFPR4  = Chr()
  loc_C8F3F2: FLdRfVar var_544
  loc_C8F3F5: ConcatVar var_554
  loc_C8F3F9: FLdRfVar var_232
  loc_C8F3FC: FLdPr Me
  loc_C8F3FF: MemLdRfVar from_stack_1.global_68
  loc_C8F402: NewIfNullPr clsctacte
  loc_C8F405: from_stack_1 = clsctacte.MoviCtct
  loc_C8F40A: FLdI2 var_232
  loc_C8F40D: CVarI2 var_564
  loc_C8F410: ConcatVar var_574
  loc_C8F414: CStrVarTmp
  loc_C8F415: FStStrNoPop var_19C
  loc_C8F418: FLdPr Me
  loc_C8F41B: MemStStrCopy
  loc_C8F41F: FFree1Str var_19C
  loc_C8F422: FFreeVar var_390 = "": var_3A0 = "": var_3B0 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_400 = "": var_410 = "": var_420 = "": var_430 = "": var_440 = "": var_450 = "": var_470 = "": var_480 = "": var_490 = "": var_4B0 = "": var_4C0 = "": var_4D0 = "": var_4E0 = "": var_4F0 = "": var_500 = "": var_510 = "": var_534 = "": var_544 = "": var_554 = "": var_574 = "": var_10C = "": var_13C = "": var_14C = "": var_15C = "": var_180 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_230 = "": var_24C = "": var_25C = "": var_26C = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = "": var_33C = "": var_34C = "": var_35C = "": var_36C = ""
  loc_C8F497: FLdPr Me
  loc_C8F49A: MemLdRfVar from_stack_1.global_56
  loc_C8F49D: CDargRef
  loc_C8F4A1: FLdPr Me
  loc_C8F4A4: VCallAd Control_ID_ctacteFlex
  loc_C8F4A7: FStAdFunc var_F4
  loc_C8F4AA: FLdPr var_F4
  loc_C8F4AD: LateIdCall
  loc_C8F4B5: FFree1Ad var_F4
  loc_C8F4B8: FLdPr Me
  loc_C8F4BB: MemLdRfVar from_stack_1.global_68
  loc_C8F4BE: NewIfNullPr clsctacte
  loc_C8F4C1: Call clsctacte.MoveSiguiente()
  loc_C8F4C6: Branch loc_C8EE84
  loc_C8F4C9: LitI4 1
  loc_C8F4CE: LitI4 1
  loc_C8F4D3: LitVarStr var_12C, "###,###,##0.00"
  loc_C8F4D8: FStVarCopyObj var_10C
  loc_C8F4DB: FLdRfVar var_10C
  loc_C8F4DE: FLdRfVar var_CC
  loc_C8F4E1: CVarRef
  loc_C8F4E6: FLdRfVar var_13C
  loc_C8F4E9: ImpAdCallFPR4  = Format(, )
  loc_C8F4EE: FLdRfVar var_13C
  loc_C8F4F1: CStrVarVal var_F8
  loc_C8F4F5: FLdPr Me
  loc_C8F4F8: VCallAd Control_ID_txtTotaDere
  loc_C8F4FB: FStAdFunc var_F4
  loc_C8F4FE: FLdPr var_F4
  loc_C8F501: Me.Text = from_stack_1
  loc_C8F506: FFree1Str var_F8
  loc_C8F509: FFree1Ad var_F4
  loc_C8F50C: FFreeVar var_10C = ""
  loc_C8F513: LitI4 1
  loc_C8F518: LitI4 1
  loc_C8F51D: LitVarStr var_12C, "###,###,##0.00"
  loc_C8F522: FStVarCopyObj var_10C
  loc_C8F525: FLdRfVar var_10C
  loc_C8F528: FLdRfVar var_D4
  loc_C8F52B: CVarRef
  loc_C8F530: FLdRfVar var_13C
  loc_C8F533: ImpAdCallFPR4  = Format(, )
  loc_C8F538: FLdRfVar var_13C
  loc_C8F53B: CStrVarVal var_F8
  loc_C8F53F: FLdPr Me
  loc_C8F542: VCallAd Control_ID_txtTotaReca
  loc_C8F545: FStAdFunc var_F4
  loc_C8F548: FLdPr var_F4
  loc_C8F54B: Me.Text = from_stack_1
  loc_C8F550: FFree1Str var_F8
  loc_C8F553: FFree1Ad var_F4
  loc_C8F556: FFreeVar var_10C = ""
  loc_C8F55D: LitI4 1
  loc_C8F562: LitI4 1
  loc_C8F567: LitVarStr var_12C, "###,###,##0.00"
  loc_C8F56C: FStVarCopyObj var_10C
  loc_C8F56F: FLdRfVar var_10C
  loc_C8F572: FLdRfVar var_DC
  loc_C8F575: CVarRef
  loc_C8F57A: FLdRfVar var_13C
  loc_C8F57D: ImpAdCallFPR4  = Format(, )
  loc_C8F582: FLdRfVar var_13C
  loc_C8F585: CStrVarVal var_F8
  loc_C8F589: FLdPr Me
  loc_C8F58C: VCallAd Control_ID_txtTotaApre
  loc_C8F58F: FStAdFunc var_F4
  loc_C8F592: FLdPr var_F4
  loc_C8F595: Me.Text = from_stack_1
  loc_C8F59A: FFree1Str var_F8
  loc_C8F59D: FFree1Ad var_F4
  loc_C8F5A0: FFreeVar var_10C = ""
  loc_C8F5A7: LitI4 2
  loc_C8F5AC: FLdRfVar var_CC
  loc_C8F5AF: CVarRef
  loc_C8F5B4: FLdRfVar var_10C
  loc_C8F5B7: ImpAdCallFPR4  = Round(, )
  loc_C8F5BC: FLdRfVar var_10C
  loc_C8F5BF: LitI4 2
  loc_C8F5C4: FLdRfVar var_D4
  loc_C8F5C7: CVarRef
  loc_C8F5CC: FLdRfVar var_13C
  loc_C8F5CF: ImpAdCallFPR4  = Round(, )
  loc_C8F5D4: FLdRfVar var_13C
  loc_C8F5D7: AddVar var_14C
  loc_C8F5DB: LitI4 2
  loc_C8F5E0: FLdRfVar var_DC
  loc_C8F5E3: CVarRef
  loc_C8F5E8: FLdRfVar var_15C
  loc_C8F5EB: ImpAdCallFPR4  = Round(, )
  loc_C8F5F0: FLdRfVar var_15C
  loc_C8F5F3: AddVar var_180
  loc_C8F5F7: CR4Var
  loc_C8F5F8: FStFPR8 var_E4
  loc_C8F5FB: FFreeVar var_10C = "": var_13C = "": var_14C = "": var_15C = ""
  loc_C8F608: LitI4 1
  loc_C8F60D: LitI4 1
  loc_C8F612: LitVarStr var_12C, "###,###,##0.00"
  loc_C8F617: FStVarCopyObj var_10C
  loc_C8F61A: FLdRfVar var_10C
  loc_C8F61D: FLdRfVar var_E4
  loc_C8F620: CVarRef
  loc_C8F625: FLdRfVar var_13C
  loc_C8F628: ImpAdCallFPR4  = Format(, )
  loc_C8F62D: FLdRfVar var_13C
  loc_C8F630: CStrVarVal var_F8
  loc_C8F634: FLdPr Me
  loc_C8F637: VCallAd Control_ID_txtTotal
  loc_C8F63A: FStAdFunc var_F4
  loc_C8F63D: FLdPr var_F4
  loc_C8F640: Me.Text = from_stack_1
  loc_C8F645: FFree1Str var_F8
  loc_C8F648: FFree1Ad var_F4
  loc_C8F64B: FFreeVar var_10C = ""
  loc_C8F652: LitI2_Byte 1
  loc_C8F654: FLdPr Me
  loc_C8F657: VCallAd Control_ID_SeleTodoChk
  loc_C8F65A: FStAdFunc var_F4
  loc_C8F65D: FLdPr var_F4
  loc_C8F660: Me.Value = from_stack_1
  loc_C8F665: FFree1Ad var_F4
  loc_C8F668: Call Proc_187_55_C54530()
  loc_C8F66D: ExitProcHresult
  loc_C8F66E: CI2Var
End Sub

Private Sub ImprimirCmd_Click() 'A10528
  'Data Table: 52F1AC
  loc_A104EC: FLdPr Me
  loc_A104EF: VCallAd Control_ID_CuotasDetalleFlex
  loc_A104F2: FStAdFunc var_88
  loc_A104F5: FLdPr var_88
  loc_A104F8: LateIdLdVar var_98 DispID_4 0
  loc_A104FF: CI4Var
  loc_A10501: LitI4 1
  loc_A10506: GtI4
  loc_A10507: FFree1Ad var_88
  loc_A1050A: FFree1Var var_98 = ""
  loc_A1050D: BranchF loc_A1051E
  loc_A10510: ImpAdLdRf MemVar_D94A4C
  loc_A10513: NewIfNullPr rptSimulaciondeFacilidaddePago
  loc_A10516: Call rptSimulaciondeFacilidaddePago.cmdPredeterminada_Click()
  loc_A1051B: Branch loc_A10526
  loc_A1051E: LitStr "Debe realizar el cálculo de las cuotas y seleccionar la cantidad de las mismas."
  loc_A10521: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A10526: ExitProcHresult
  loc_A10527: NotI4
End Sub

Private Sub FechVencCmd_Click() 'A4457C
  'Data Table: 52F1AC
  loc_A44528: LitVar_Missing var_A4
  loc_A4452B: PopAdLdVar
  loc_A4452C: LitVarI4
  loc_A44534: PopAdLdVar
  loc_A44535: ImpAdLdRf MemVar_D930A4
  loc_A44538: NewIfNullPr frmCalendario
  loc_A4453B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A44540: ImpAdLdI4 MemVar_D93028
  loc_A44543: LitStr vbNullString
  loc_A44546: NeStr
  loc_A44548: BranchF loc_A44566
  loc_A4454B: ImpAdLdRf MemVar_D93028
  loc_A4454E: CDargRef
  loc_A44552: FLdPr Me
  loc_A44555: VCallAd Control_ID_FechVencMsk
  loc_A44558: FStAdFunc var_A8
  loc_A4455B: FLdPr var_A8
  loc_A4455E: LateIdSt
  loc_A44563: FFree1Ad var_A8
  loc_A44566: FLdPr Me
  loc_A44569: VCallAd Control_ID_FechVencMsk
  loc_A4456C: CVarAd
  loc_A44570: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A44575: FFree1Var var_B8 = ""
  loc_A44578: ExitProcHresult
  loc_A44579: SubCy
End Sub

Private Sub DetaFirmTxt_Validate(Cancel As Boolean) 'A7EBC8
  'Data Table: 52F1AC
  loc_A7EB44: FLdRfVar var_8A
  loc_A7EB47: FLdPr Me
  loc_A7EB4A: VCallAd Control_ID_DetaFirmTxt
  loc_A7EB4D: FStAdFunc var_88
  loc_A7EB50: FLdPr var_88
  loc_A7EB53:  = Me.Enabled
  loc_A7EB58: FLdI2 var_8A
  loc_A7EB5B: FFree1Ad var_88
  loc_A7EB5E: BranchF loc_A7EBC5
  loc_A7EB61: FLdRfVar var_90
  loc_A7EB64: FLdPr Me
  loc_A7EB67: VCallAd Control_ID_DetaFirmTxt
  loc_A7EB6A: FStAdFunc var_88
  loc_A7EB6D: FLdPr var_88
  loc_A7EB70:  = Me.Text
  loc_A7EB75: ILdRf var_90
  loc_A7EB78: LitStr "Apellido y Nombre"
  loc_A7EB7B: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7EB80: FStStrNoPop var_94
  loc_A7EB83: FLdPr Me
  loc_A7EB86: MemStStrCopy
  loc_A7EB8A: FFreeStr var_90 = ""
  loc_A7EB91: FFree1Ad var_88
  loc_A7EB94: FLdPr Me
  loc_A7EB97: MemLdStr global_368
  loc_A7EB9A: LitStr vbNullString
  loc_A7EB9D: NeStr
  loc_A7EB9F: BranchF loc_A7EBC5
  loc_A7EBA2: FLdPr Me
  loc_A7EBA5: MemLdStr global_368
  loc_A7EBA8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7EBAD: FLdPr Me
  loc_A7EBB0: VCallAd Control_ID_DetaFirmTxt
  loc_A7EBB3: CVarAd
  loc_A7EBB7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7EBBC: FFree1Var var_A4 = ""
  loc_A7EBBF: LitI2_Byte &HFF
  loc_A7EBC1: IStI2 Cancel
  loc_A7EBC4: ExitProcHresult
  loc_A7EBC5: ExitProcHresult
  loc_A7EBC6: FLdPr arg_3400
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 'B43C30
  'Data Table: 52F1AC
  loc_B438EC: Call Proc_187_51_B193E8()
  loc_B438F1: Call Proc_187_53_A855B4()
  loc_B438F6: Call Proc_187_52_AF19AC()
  loc_B438FB: LitI2_Byte 0
  loc_B438FD: FLdPr Me
  loc_B43900: VCallAd Control_ID_SeleTodoChk
  loc_B43903: FStAdFunc var_88
  loc_B43906: FLdPr var_88
  loc_B43909: Me.Value = from_stack_1
  loc_B4390E: FFree1Ad var_88
  loc_B43911: LitStr "0"
  loc_B43914: FLdPr Me
  loc_B43917: VCallAd Control_ID_CodiTifaTxt
  loc_B4391A: FStAdFunc var_88
  loc_B4391D: FLdPr var_88
  loc_B43920: Me.Text = from_stack_1
  loc_B43925: FFree1Ad var_88
  loc_B43928: LitStr vbNullString
  loc_B4392B: FLdPr Me
  loc_B4392E: VCallAd Control_ID_DetaTifaLbl
  loc_B43931: FStAdFunc var_88
  loc_B43934: FLdPr var_88
  loc_B43937: Me.Caption = from_stack_1
  loc_B4393C: FFree1Ad var_88
  loc_B4393F: LitStr vbNullString
  loc_B43942: FLdPr Me
  loc_B43945: VCallAd Control_ID_InteTifaLbl
  loc_B43948: FStAdFunc var_88
  loc_B4394B: FLdPr var_88
  loc_B4394E: Me.Caption = from_stack_1
  loc_B43953: FFree1Ad var_88
  loc_B43956: LitStr vbNullString
  loc_B43959: FLdPr Me
  loc_B4395C: VCallAd Control_ID_MecaTifaLbl
  loc_B4395F: FStAdFunc var_88
  loc_B43962: FLdPr var_88
  loc_B43965: Me.Caption = from_stack_1
  loc_B4396A: FFree1Ad var_88
  loc_B4396D: LitStr "0"
  loc_B43970: FLdPr Me
  loc_B43973: VCallAd Control_ID_CuotApreTxt
  loc_B43976: FStAdFunc var_88
  loc_B43979: FLdPr var_88
  loc_B4397C: Me.Text = from_stack_1
  loc_B43981: FFree1Ad var_88
  loc_B43984: LitI2_Byte 0
  loc_B43986: CStrUI1
  loc_B43988: FStStrNoPop var_8C
  loc_B4398B: FLdPr Me
  loc_B4398E: VCallAd Control_ID_AnticipoTxt
  loc_B43991: FStAdFunc var_88
  loc_B43994: FLdPr var_88
  loc_B43997: Me.Text = from_stack_1
  loc_B4399C: FFree1Str var_8C
  loc_B4399F: FFree1Ad var_88
  loc_B439A2: LitI4 1
  loc_B439A7: LitI4 1
  loc_B439AC: LitVarStr var_BC, "###,###,##0.00"
  loc_B439B1: FStVarCopyObj var_CC
  loc_B439B4: FLdRfVar var_CC
  loc_B439B7: LitVarI2 var_AC, 0
  loc_B439BC: FLdRfVar var_DC
  loc_B439BF: ImpAdCallFPR4  = Format(, )
  loc_B439C4: FLdRfVar var_DC
  loc_B439C7: CStrVarVal var_8C
  loc_B439CB: FLdPr Me
  loc_B439CE: VCallAd Control_ID_DerechoTxt
  loc_B439D1: FStAdFunc var_88
  loc_B439D4: FLdPr var_88
  loc_B439D7: Me.Text = from_stack_1
  loc_B439DC: FFree1Str var_8C
  loc_B439DF: FFree1Ad var_88
  loc_B439E2: FFreeVar var_AC = "": var_CC = ""
  loc_B439EB: LitI4 1
  loc_B439F0: LitI4 1
  loc_B439F5: LitVarStr var_BC, "###,###,##0.00"
  loc_B439FA: FStVarCopyObj var_CC
  loc_B439FD: FLdRfVar var_CC
  loc_B43A00: LitVarI2 var_AC, 0
  loc_B43A05: FLdRfVar var_DC
  loc_B43A08: ImpAdCallFPR4  = Format(, )
  loc_B43A0D: FLdRfVar var_DC
  loc_B43A10: CStrVarVal var_8C
  loc_B43A14: FLdPr Me
  loc_B43A17: VCallAd Control_ID_RecargoTxt
  loc_B43A1A: FStAdFunc var_88
  loc_B43A1D: FLdPr var_88
  loc_B43A20: Me.Text = from_stack_1
  loc_B43A25: FFree1Str var_8C
  loc_B43A28: FFree1Ad var_88
  loc_B43A2B: FFreeVar var_AC = "": var_CC = ""
  loc_B43A34: LitI4 1
  loc_B43A39: LitI4 1
  loc_B43A3E: LitVarStr var_BC, "###,###,##0.00"
  loc_B43A43: FStVarCopyObj var_CC
  loc_B43A46: FLdRfVar var_CC
  loc_B43A49: LitVarI2 var_AC, 0
  loc_B43A4E: FLdRfVar var_DC
  loc_B43A51: ImpAdCallFPR4  = Format(, )
  loc_B43A56: FLdRfVar var_DC
  loc_B43A59: CStrVarVal var_8C
  loc_B43A5D: FLdPr Me
  loc_B43A60: VCallAd Control_ID_ApremioTxt
  loc_B43A63: FStAdFunc var_88
  loc_B43A66: FLdPr var_88
  loc_B43A69: Me.Text = from_stack_1
  loc_B43A6E: FFree1Str var_8C
  loc_B43A71: FFree1Ad var_88
  loc_B43A74: FFreeVar var_AC = "": var_CC = ""
  loc_B43A7D: LitI4 1
  loc_B43A82: LitI4 1
  loc_B43A87: LitVarStr var_BC, "###,###,##0.00"
  loc_B43A8C: FStVarCopyObj var_CC
  loc_B43A8F: FLdRfVar var_CC
  loc_B43A92: LitVarStr var_9C, "0"
  loc_B43A97: FStVarCopyObj var_AC
  loc_B43A9A: FLdRfVar var_AC
  loc_B43A9D: FLdRfVar var_DC
  loc_B43AA0: ImpAdCallFPR4  = Format(, )
  loc_B43AA5: FLdRfVar var_DC
  loc_B43AA8: CStrVarVal var_8C
  loc_B43AAC: FLdPr Me
  loc_B43AAF: VCallAd Control_ID_DescCapiTxt
  loc_B43AB2: FStAdFunc var_88
  loc_B43AB5: FLdPr var_88
  loc_B43AB8: Me.Text = from_stack_1
  loc_B43ABD: FFree1Str var_8C
  loc_B43AC0: FFree1Ad var_88
  loc_B43AC3: FFreeVar var_AC = "": var_CC = ""
  loc_B43ACC: LitI4 1
  loc_B43AD1: LitI4 1
  loc_B43AD6: LitVarStr var_BC, "###,###,##0.00"
  loc_B43ADB: FStVarCopyObj var_CC
  loc_B43ADE: FLdRfVar var_CC
  loc_B43AE1: LitVarStr var_9C, "0"
  loc_B43AE6: FStVarCopyObj var_AC
  loc_B43AE9: FLdRfVar var_AC
  loc_B43AEC: FLdRfVar var_DC
  loc_B43AEF: ImpAdCallFPR4  = Format(, )
  loc_B43AF4: FLdRfVar var_DC
  loc_B43AF7: CStrVarVal var_8C
  loc_B43AFB: FLdPr Me
  loc_B43AFE: VCallAd Control_ID_DescRecaTxt
  loc_B43B01: FStAdFunc var_88
  loc_B43B04: FLdPr var_88
  loc_B43B07: Me.Text = from_stack_1
  loc_B43B0C: FFree1Str var_8C
  loc_B43B0F: FFree1Ad var_88
  loc_B43B12: FFreeVar var_AC = "": var_CC = ""
  loc_B43B1B: LitI4 1
  loc_B43B20: LitI4 1
  loc_B43B25: LitVarStr var_BC, "###,###,##0.00"
  loc_B43B2A: FStVarCopyObj var_CC
  loc_B43B2D: FLdRfVar var_CC
  loc_B43B30: LitVarStr var_9C, "0"
  loc_B43B35: FStVarCopyObj var_AC
  loc_B43B38: FLdRfVar var_AC
  loc_B43B3B: FLdRfVar var_DC
  loc_B43B3E: ImpAdCallFPR4  = Format(, )
  loc_B43B43: FLdRfVar var_DC
  loc_B43B46: CStrVarVal var_8C
  loc_B43B4A: FLdPr Me
  loc_B43B4D: VCallAd Control_ID_InteresTxt
  loc_B43B50: FStAdFunc var_88
  loc_B43B53: FLdPr var_88
  loc_B43B56: Me.Text = from_stack_1
  loc_B43B5B: FFree1Str var_8C
  loc_B43B5E: FFree1Ad var_88
  loc_B43B61: FFreeVar var_AC = "": var_CC = ""
  loc_B43B6A: LitI4 1
  loc_B43B6F: LitI4 1
  loc_B43B74: LitVarStr var_BC, "###,###,##0.00"
  loc_B43B79: FStVarCopyObj var_CC
  loc_B43B7C: FLdRfVar var_CC
  loc_B43B7F: LitVarStr var_9C, "0"
  loc_B43B84: FStVarCopyObj var_AC
  loc_B43B87: FLdRfVar var_AC
  loc_B43B8A: FLdRfVar var_DC
  loc_B43B8D: ImpAdCallFPR4  = Format(, )
  loc_B43B92: FLdRfVar var_DC
  loc_B43B95: CStrVarVal var_8C
  loc_B43B99: FLdPr Me
  loc_B43B9C: VCallAd Control_ID_TotalTxt
  loc_B43B9F: FStAdFunc var_88
  loc_B43BA2: FLdPr var_88
  loc_B43BA5: Me.Text = from_stack_1
  loc_B43BAA: FFree1Str var_8C
  loc_B43BAD: FFree1Ad var_88
  loc_B43BB0: FFreeVar var_AC = "": var_CC = ""
  loc_B43BB9: LitI4 0
  loc_B43BBE: LitI4 3
  loc_B43BC3: FLdRfVar var_E0
  loc_B43BC6: Redim
  loc_B43BD0: FLdPr Me
  loc_B43BD3: VCallAd Control_ID_CuotasFlex
  loc_B43BD6: CVarAd
  loc_B43BDA: ParmAry1St
  loc_B43BE0: FLdPr Me
  loc_B43BE3: VCallAd Control_ID_CuotApreTxt
  loc_B43BE6: CVarAd
  loc_B43BEA: ParmAry1St
  loc_B43BF0: FLdPr Me
  loc_B43BF3: VCallAd Control_ID_AnticipoTxt
  loc_B43BF6: CVarAd
  loc_B43BFA: ParmAry1St
  loc_B43C00: FLdPr Me
  loc_B43C03: VCallAd Control_ID_ImprimirCmd
  loc_B43C06: CVarAd
  loc_B43C0A: ParmAry1St
  loc_B43C10: FLdRfVar var_E0
  loc_B43C13: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B43C18: FLdRfVar var_E0
  loc_B43C1B: Erase
  loc_B43C1C: FLdPr Me
  loc_B43C1F: VCallAd Control_ID_CodiConcMsk
  loc_B43C22: CVarAd
  loc_B43C26: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B43C2B: FFree1Var var_AC = ""
  loc_B43C2E: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'AE1E40
  'Data Table: 52F1AC
  loc_AE1CE0: FLdPr Me
  loc_AE1CE3: VCallAd Control_ID_CodiConcMsk
  loc_AE1CE6: FStAdFunc var_88
  loc_AE1CE9: FLdPr var_88
  loc_AE1CEC: LateIdLdVar var_98 DispID_13 -32767
  loc_AE1CF3: CBoolVar
  loc_AE1CF5: LitI2_Byte &HFF
  loc_AE1CF7: EqI2
  loc_AE1CF8: FFree1Ad var_88
  loc_AE1CFB: FFree1Var var_98 = ""
  loc_AE1CFE: BranchF loc_AE1E3E
  loc_AE1D01: ImpAdLdUI1
  loc_AE1D05: CI2UI1
  loc_AE1D07: LitI2_Byte 4
  loc_AE1D09: NeI2
  loc_AE1D0A: ImpAdLdUI1
  loc_AE1D0E: CI2UI1
  loc_AE1D10: LitI2_Byte 5
  loc_AE1D12: NeI2
  loc_AE1D13: AndI4
  loc_AE1D14: BranchF loc_AE1D98
  loc_AE1D17: FLdPr Me
  loc_AE1D1A: VCallAd Control_ID_CodiConcMsk
  loc_AE1D1D: FStAdFunc var_88
  loc_AE1D20: FLdPr var_88
  loc_AE1D23: LateIdLdVar var_98 DispID_22 0
  loc_AE1D2A: PopAd
  loc_AE1D2C: LitI2_Byte 0
  loc_AE1D2E: LitI2_Byte 0
  loc_AE1D30: LitI2_Byte 0
  loc_AE1D32: LitI2_Byte 0
  loc_AE1D34: LitI2_Byte 0
  loc_AE1D36: LitI2_Byte 0
  loc_AE1D38: LitI2_Byte 0
  loc_AE1D3A: LitI2_Byte 0
  loc_AE1D3C: LitI2_Byte 0
  loc_AE1D3E: FLdRfVar var_98
  loc_AE1D41: CStrVarTmp
  loc_AE1D42: FStStrNoPop var_9C
  loc_AE1D45: ImpAdLdI2 MemVar_D93036
  loc_AE1D48: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE1D4D: FStStrNoPop var_A0
  loc_AE1D50: FLdPr Me
  loc_AE1D53: MemStStrCopy
  loc_AE1D57: FFreeStr var_9C = ""
  loc_AE1D5E: FFree1Ad var_88
  loc_AE1D61: FFree1Var var_98 = ""
  loc_AE1D64: FLdPr Me
  loc_AE1D67: MemLdStr global_368
  loc_AE1D6A: LitStr vbNullString
  loc_AE1D6D: NeStr
  loc_AE1D6F: BranchF loc_AE1D95
  loc_AE1D72: FLdPr Me
  loc_AE1D75: MemLdStr global_368
  loc_AE1D78: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1D7D: FLdPr Me
  loc_AE1D80: VCallAd Control_ID_CodiConcMsk
  loc_AE1D83: CVarAd
  loc_AE1D87: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1D8C: FFree1Var var_98 = ""
  loc_AE1D8F: LitI2_Byte &HFF
  loc_AE1D91: IStI2 Cancel
  loc_AE1D94: ExitProcHresult
  loc_AE1D95: Branch loc_AE1E3E
  loc_AE1D98: FLdPr Me
  loc_AE1D9B: VCallAd Control_ID_CodiConcMsk
  loc_AE1D9E: FStAdFunc var_88
  loc_AE1DA1: FLdPr var_88
  loc_AE1DA4: LateIdLdVar var_98 DispID_22 0
  loc_AE1DAB: CStrVarTmp
  loc_AE1DAC: FStStrNoPop var_9C
  loc_AE1DAF: LitStr vbNullString
  loc_AE1DB2: NeStr
  loc_AE1DB4: FFree1Str var_9C
  loc_AE1DB7: FFree1Ad var_88
  loc_AE1DBA: FFree1Var var_98 = ""
  loc_AE1DBD: BranchF loc_AE1E3E
  loc_AE1DC0: FLdPr Me
  loc_AE1DC3: VCallAd Control_ID_CodiConcMsk
  loc_AE1DC6: FStAdFunc var_88
  loc_AE1DC9: FLdPr var_88
  loc_AE1DCC: LateIdLdVar var_98 DispID_22 0
  loc_AE1DD3: PopAd
  loc_AE1DD5: LitI2_Byte 0
  loc_AE1DD7: LitI2_Byte 0
  loc_AE1DD9: LitI2_Byte 0
  loc_AE1DDB: LitI2_Byte 0
  loc_AE1DDD: LitI2_Byte 0
  loc_AE1DDF: LitI2_Byte 0
  loc_AE1DE1: LitI2_Byte 0
  loc_AE1DE3: LitI2_Byte 0
  loc_AE1DE5: LitI2_Byte 0
  loc_AE1DE7: FLdRfVar var_98
  loc_AE1DEA: CStrVarTmp
  loc_AE1DEB: FStStrNoPop var_9C
  loc_AE1DEE: ImpAdLdI2 MemVar_D93036
  loc_AE1DF1: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE1DF6: FStStrNoPop var_A0
  loc_AE1DF9: FLdPr Me
  loc_AE1DFC: MemStStrCopy
  loc_AE1E00: FFreeStr var_9C = ""
  loc_AE1E07: FFree1Ad var_88
  loc_AE1E0A: FFree1Var var_98 = ""
  loc_AE1E0D: FLdPr Me
  loc_AE1E10: MemLdStr global_368
  loc_AE1E13: LitStr vbNullString
  loc_AE1E16: NeStr
  loc_AE1E18: BranchF loc_AE1E3E
  loc_AE1E1B: FLdPr Me
  loc_AE1E1E: MemLdStr global_368
  loc_AE1E21: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE1E26: FLdPr Me
  loc_AE1E29: VCallAd Control_ID_CodiConcMsk
  loc_AE1E2C: CVarAd
  loc_AE1E30: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE1E35: FFree1Var var_98 = ""
  loc_AE1E38: LitI2_Byte &HFF
  loc_AE1E3A: IStI2 Cancel
  loc_AE1E3D: ExitProcHresult
  loc_AE1E3E: ExitProcHresult
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'A8A87C
  'Data Table: 52F1AC
  loc_A8A7E4: ILdI2 KeyAscii
  loc_A8A7E7: CI4UI1
  loc_A8A7E8: LitI4 &H20
  loc_A8A7ED: EqI4
  loc_A8A7EE: BranchF loc_A8A87A
  loc_A8A7F1: ImpAdLdI2 MemVar_D93034
  loc_A8A7F4: ImpAdLdRf MemVar_D947E0
  loc_A8A7F7: NewIfNullPr dlgBuscarConcepto
  loc_A8A7FA: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_A8A7FF: LitVar_Missing var_A4
  loc_A8A802: PopAdLdVar
  loc_A8A803: LitVarI4
  loc_A8A80B: PopAdLdVar
  loc_A8A80C: ImpAdLdRf MemVar_D947E0
  loc_A8A80F: NewIfNullPr dlgBuscarConcepto
  loc_A8A812: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_A8A817: FLdRfVar var_AC
  loc_A8A81A: FLdRfVar var_A8
  loc_A8A81D: ImpAdLdRf MemVar_D947E0
  loc_A8A820: NewIfNullPr dlgBuscarConcepto
  loc_A8A823: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_A8A828: FLdPr var_A8
  loc_A8A82B: from_stack_1 = clsconcepto.RecordCount
  loc_A8A830: ILdRf var_AC
  loc_A8A833: LitI4 0
  loc_A8A838: GtI4
  loc_A8A839: FFree1Ad var_A8
  loc_A8A83C: BranchF loc_A8A87A
  loc_A8A83F: FLdRfVar var_B0
  loc_A8A842: FLdRfVar var_A8
  loc_A8A845: ImpAdLdRf MemVar_D947E0
  loc_A8A848: NewIfNullPr dlgBuscarConcepto
  loc_A8A84B: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_A8A850: FLdPr var_A8
  loc_A8A853: from_stack_1 = clsconcepto.CodiConc
  loc_A8A858: FLdZeroAd var_B0
  loc_A8A85B: CVarStr var_C0
  loc_A8A85E: PopAdLdVar
  loc_A8A85F: FLdPr Me
  loc_A8A862: VCallAd Control_ID_CodiConcMsk
  loc_A8A865: FStAdFunc var_C4
  loc_A8A868: FLdPr var_C4
  loc_A8A86B: LateIdSt
  loc_A8A870: FFreeAd var_A8 = ""
  loc_A8A877: FFree1Var var_C0 = ""
  loc_A8A87A: ExitProcHresult
End Sub

Private Sub Form_Load() 'C46224
  'Data Table: 52F1AC
  loc_C45560: LitVar_Missing var_94
  loc_C45563: PopAdLdVar
  loc_C45564: LitStr "Inmueble"
  loc_C45567: FLdPr Me
  loc_C4556A: VCallAd Control_ID_OficinaCbo
  loc_C4556D: FStAdFunc var_98
  loc_C45570: FLdPr var_98
  loc_C45573: Me.AddItem from_stack_1, from_stack_2
  loc_C45578: FFree1Ad var_98
  loc_C4557B: LitVar_Missing var_94
  loc_C4557E: PopAdLdVar
  loc_C4557F: LitStr "Comercio"
  loc_C45582: FLdPr Me
  loc_C45585: VCallAd Control_ID_OficinaCbo
  loc_C45588: FStAdFunc var_98
  loc_C4558B: FLdPr var_98
  loc_C4558E: Me.AddItem from_stack_1, from_stack_2
  loc_C45593: FFree1Ad var_98
  loc_C45596: LitVar_Missing var_94
  loc_C45599: PopAdLdVar
  loc_C4559A: LitStr "Deudores Varios"
  loc_C4559D: FLdPr Me
  loc_C455A0: VCallAd Control_ID_OficinaCbo
  loc_C455A3: FStAdFunc var_98
  loc_C455A6: FLdPr var_98
  loc_C455A9: Me.AddItem from_stack_1, from_stack_2
  loc_C455AE: FFree1Ad var_98
  loc_C455B1: LitVar_Missing var_94
  loc_C455B4: PopAdLdVar
  loc_C455B5: LitStr "Cementerio"
  loc_C455B8: FLdPr Me
  loc_C455BB: VCallAd Control_ID_OficinaCbo
  loc_C455BE: FStAdFunc var_98
  loc_C455C1: FLdPr var_98
  loc_C455C4: Me.AddItem from_stack_1, from_stack_2
  loc_C455C9: FFree1Ad var_98
  loc_C455CC: LitVar_Missing var_94
  loc_C455CF: PopAdLdVar
  loc_C455D0: LitStr "Transito"
  loc_C455D3: FLdPr Me
  loc_C455D6: VCallAd Control_ID_OficinaCbo
  loc_C455D9: FStAdFunc var_98
  loc_C455DC: FLdPr var_98
  loc_C455DF: Me.AddItem from_stack_1, from_stack_2
  loc_C455E4: FFree1Ad var_98
  loc_C455E7: LitVar_Missing var_94
  loc_C455EA: PopAdLdVar
  loc_C455EB: LitStr "Publicidad"
  loc_C455EE: FLdPr Me
  loc_C455F1: VCallAd Control_ID_OficinaCbo
  loc_C455F4: FStAdFunc var_98
  loc_C455F7: FLdPr var_98
  loc_C455FA: Me.AddItem from_stack_1, from_stack_2
  loc_C455FF: FFree1Ad var_98
  loc_C45602: LitVar_Missing var_94
  loc_C45605: PopAdLdVar
  loc_C45606: LitStr "Antena"
  loc_C45609: FLdPr Me
  loc_C4560C: VCallAd Control_ID_OficinaCbo
  loc_C4560F: FStAdFunc var_98
  loc_C45612: FLdPr var_98
  loc_C45615: Me.AddItem from_stack_1, from_stack_2
  loc_C4561A: FFree1Ad var_98
  loc_C4561D: LitI2_Byte 0
  loc_C4561F: FLdPr Me
  loc_C45622: VCallAd Control_ID_OficinaCbo
  loc_C45625: FStAdFunc var_98
  loc_C45628: FLdPr var_98
  loc_C4562B: Me.ListIndex = from_stack_1
  loc_C45630: FFree1Ad var_98
  loc_C45633: LitStr "0"
  loc_C45636: FLdPr Me
  loc_C45639: VCallAd Control_ID_NumeCtaTxt
  loc_C4563C: FStAdFunc var_98
  loc_C4563F: FLdPr var_98
  loc_C45642: Me.Text = from_stack_1
  loc_C45647: FFree1Ad var_98
  loc_C4564A: LitI2_Byte 0
  loc_C4564C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C45651: CStrDate
  loc_C45653: CVarStr var_A8
  loc_C45656: PopAdLdVar
  loc_C45657: FLdPr Me
  loc_C4565A: VCallAd Control_ID_FechVencMsk
  loc_C4565D: FStAdFunc var_98
  loc_C45660: FLdPr var_98
  loc_C45663: LateIdSt
  loc_C45668: FFree1Ad var_98
  loc_C4566B: FFree1Var var_A8 = ""
  loc_C4566E: LitI2_Byte 0
  loc_C45670: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C45675: CStrDate
  loc_C45677: CVarStr var_A8
  loc_C4567A: PopAdLdVar
  loc_C4567B: FLdPr Me
  loc_C4567E: VCallAd Control_ID_FeveCuotMsk
  loc_C45681: FStAdFunc var_98
  loc_C45684: FLdPr var_98
  loc_C45687: LateIdSt
  loc_C4568C: FFree1Ad var_98
  loc_C4568F: FFree1Var var_A8 = ""
  loc_C45692: FLdPr Me
  loc_C45695: VCallAd Control_ID_ctacteFlex
  loc_C45698: FStAdFunc var_AC
  loc_C4569B: LitVarI4
  loc_C456A3: PopAdLdVar
  loc_C456A4: LitVarI4
  loc_C456AC: PopAdLdVar
  loc_C456AD: FLdPr var_AC
  loc_C456B0: LateIdCallSt
  loc_C456B8: LitVarI4
  loc_C456C0: PopAdLdVar
  loc_C456C1: LitVarI4
  loc_C456C9: PopAdLdVar
  loc_C456CA: FLdPr var_AC
  loc_C456CD: LateIdCallSt
  loc_C456D5: LitVarI4
  loc_C456DD: PopAdLdVar
  loc_C456DE: LitVarI4
  loc_C456E6: PopAdLdVar
  loc_C456E7: FLdPr var_AC
  loc_C456EA: LateIdCallSt
  loc_C456F2: LitVarI4
  loc_C456FA: PopAdLdVar
  loc_C456FB: LitVarI4
  loc_C45703: PopAdLdVar
  loc_C45704: FLdPr var_AC
  loc_C45707: LateIdCallSt
  loc_C4570F: LitVarI4
  loc_C45717: PopAdLdVar
  loc_C45718: LitVarI4
  loc_C45720: PopAdLdVar
  loc_C45721: FLdPr var_AC
  loc_C45724: LateIdCallSt
  loc_C4572C: LitVarI4
  loc_C45734: PopAdLdVar
  loc_C45735: LitVarI4
  loc_C4573D: PopAdLdVar
  loc_C4573E: FLdPr var_AC
  loc_C45741: LateIdCallSt
  loc_C45749: LitVarI4
  loc_C45751: PopAdLdVar
  loc_C45752: LitVarI4
  loc_C4575A: PopAdLdVar
  loc_C4575B: FLdPr var_AC
  loc_C4575E: LateIdCallSt
  loc_C45766: LitVarI4
  loc_C4576E: PopAdLdVar
  loc_C4576F: LitVarI4
  loc_C45777: PopAdLdVar
  loc_C45778: FLdPr var_AC
  loc_C4577B: LateIdCallSt
  loc_C45783: LitVarI4
  loc_C4578B: PopAdLdVar
  loc_C4578C: LitVarI4
  loc_C45794: PopAdLdVar
  loc_C45795: FLdPr var_AC
  loc_C45798: LateIdCallSt
  loc_C457A0: LitVarI4
  loc_C457A8: PopAdLdVar
  loc_C457A9: LitVarI4
  loc_C457B1: PopAdLdVar
  loc_C457B2: FLdPr var_AC
  loc_C457B5: LateIdCallSt
  loc_C457BD: LitVarI4
  loc_C457C5: PopAdLdVar
  loc_C457C6: LitVarI4
  loc_C457CE: PopAdLdVar
  loc_C457CF: FLdPr var_AC
  loc_C457D2: LateIdCallSt
  loc_C457DA: LitVarI4
  loc_C457E2: PopAdLdVar
  loc_C457E3: LitVarI4
  loc_C457EB: PopAdLdVar
  loc_C457EC: FLdPr var_AC
  loc_C457EF: LateIdCallSt
  loc_C457F7: LitVarI4
  loc_C457FF: PopAdLdVar
  loc_C45800: LitVarI4
  loc_C45808: PopAdLdVar
  loc_C45809: FLdPr var_AC
  loc_C4580C: LateIdCallSt
  loc_C45814: LitVarI4
  loc_C4581C: PopAdLdVar
  loc_C4581D: LitVarI4
  loc_C45825: PopAdLdVar
  loc_C45826: FLdPr var_AC
  loc_C45829: LateIdCallSt
  loc_C45831: LitVarI4
  loc_C45839: PopAdLdVar
  loc_C4583A: LitVarI4
  loc_C45842: PopAdLdVar
  loc_C45843: FLdPr var_AC
  loc_C45846: LateIdCallSt
  loc_C4584E: LitVarI4
  loc_C45856: PopAdLdVar
  loc_C45857: LitVarI4
  loc_C4585F: PopAdLdVar
  loc_C45860: FLdPr var_AC
  loc_C45863: LateIdCallSt
  loc_C4586B: LitVarI4
  loc_C45873: PopAdLdVar
  loc_C45874: LitVarI4
  loc_C4587C: PopAdLdVar
  loc_C4587D: FLdPr var_AC
  loc_C45880: LateIdCallSt
  loc_C45888: LitVarI4
  loc_C45890: PopAdLdVar
  loc_C45891: LitVarI4
  loc_C45899: PopAdLdVar
  loc_C4589A: LitVarStr var_EC, "Of"
  loc_C4589F: PopAdLdVar
  loc_C458A0: FLdPr var_AC
  loc_C458A3: LateIdCallSt
  loc_C458AB: LitVarI4
  loc_C458B3: PopAdLdVar
  loc_C458B4: LitVarI4
  loc_C458BC: PopAdLdVar
  loc_C458BD: LitVarStr var_EC, "Cuenta"
  loc_C458C2: PopAdLdVar
  loc_C458C3: FLdPr var_AC
  loc_C458C6: LateIdCallSt
  loc_C458CE: LitVarI4
  loc_C458D6: PopAdLdVar
  loc_C458D7: LitVarI4
  loc_C458DF: PopAdLdVar
  loc_C458E0: LitVarStr var_EC, "Periodo"
  loc_C458E5: PopAdLdVar
  loc_C458E6: FLdPr var_AC
  loc_C458E9: LateIdCallSt
  loc_C458F1: LitVarI4
  loc_C458F9: PopAdLdVar
  loc_C458FA: LitVarI4
  loc_C45902: PopAdLdVar
  loc_C45903: LitVarStr var_EC, "Boleto"
  loc_C45908: PopAdLdVar
  loc_C45909: FLdPr var_AC
  loc_C4590C: LateIdCallSt
  loc_C45914: LitVarI4
  loc_C4591C: PopAdLdVar
  loc_C4591D: LitVarI4
  loc_C45925: PopAdLdVar
  loc_C45926: LitVarStr var_EC, "Emision"
  loc_C4592B: PopAdLdVar
  loc_C4592C: FLdPr var_AC
  loc_C4592F: LateIdCallSt
  loc_C45937: LitVarI4
  loc_C4593F: PopAdLdVar
  loc_C45940: LitVarI4
  loc_C45948: PopAdLdVar
  loc_C45949: LitVarStr var_EC, "Vencimiento"
  loc_C4594E: PopAdLdVar
  loc_C4594F: FLdPr var_AC
  loc_C45952: LateIdCallSt
  loc_C4595A: LitVarI4
  loc_C45962: PopAdLdVar
  loc_C45963: LitVarI4
  loc_C4596B: PopAdLdVar
  loc_C4596C: LitVarStr var_EC, "Concepto"
  loc_C45971: PopAdLdVar
  loc_C45972: FLdPr var_AC
  loc_C45975: LateIdCallSt
  loc_C4597D: LitVarI4
  loc_C45985: PopAdLdVar
  loc_C45986: LitVarI4
  loc_C4598E: PopAdLdVar
  loc_C4598F: LitVarStr var_EC, "Facilidad"
  loc_C45994: PopAdLdVar
  loc_C45995: FLdPr var_AC
  loc_C45998: LateIdCallSt
  loc_C459A0: LitVarI4
  loc_C459A8: PopAdLdVar
  loc_C459A9: LitVarI4
  loc_C459B1: PopAdLdVar
  loc_C459B2: LitVarStr var_EC, "Apremio"
  loc_C459B7: PopAdLdVar
  loc_C459B8: FLdPr var_AC
  loc_C459BB: LateIdCallSt
  loc_C459C3: LitVarI4
  loc_C459CB: PopAdLdVar
  loc_C459CC: LitVarI4
  loc_C459D4: PopAdLdVar
  loc_C459D5: LitVarStr var_EC, "Exp/Comp"
  loc_C459DA: PopAdLdVar
  loc_C459DB: FLdPr var_AC
  loc_C459DE: LateIdCallSt
  loc_C459E6: LitVarI4
  loc_C459EE: PopAdLdVar
  loc_C459EF: LitVarI4
  loc_C459F7: PopAdLdVar
  loc_C459F8: LitVarStr var_EC, "Tipo Movi."
  loc_C459FD: PopAdLdVar
  loc_C459FE: FLdPr var_AC
  loc_C45A01: LateIdCallSt
  loc_C45A09: LitVarI4
  loc_C45A11: PopAdLdVar
  loc_C45A12: LitVarI4
  loc_C45A1A: PopAdLdVar
  loc_C45A1B: LitVarStr var_EC, "Debito"
  loc_C45A20: PopAdLdVar
  loc_C45A21: FLdPr var_AC
  loc_C45A24: LateIdCallSt
  loc_C45A2C: LitVarI4
  loc_C45A34: PopAdLdVar
  loc_C45A35: LitVarI4
  loc_C45A3D: PopAdLdVar
  loc_C45A3E: LitVarStr var_EC, "Recargo"
  loc_C45A43: PopAdLdVar
  loc_C45A44: FLdPr var_AC
  loc_C45A47: LateIdCallSt
  loc_C45A4F: LitVarI4
  loc_C45A57: PopAdLdVar
  loc_C45A58: LitVarI4
  loc_C45A60: PopAdLdVar
  loc_C45A61: LitVarStr var_EC, "Saldo"
  loc_C45A66: PopAdLdVar
  loc_C45A67: FLdPr var_AC
  loc_C45A6A: LateIdCallSt
  loc_C45A72: LitVarI4
  loc_C45A7A: PopAdLdVar
  loc_C45A7B: LitVarI4
  loc_C45A83: PopAdLdVar
  loc_C45A84: LitVarStr var_EC, "Sel"
  loc_C45A89: PopAdLdVar
  loc_C45A8A: FLdPr var_AC
  loc_C45A8D: LateIdCallSt
  loc_C45A95: LitVarI4
  loc_C45A9D: PopAdLdVar
  loc_C45A9E: LitVarI4
  loc_C45AA6: PopAdLdVar
  loc_C45AA7: LitVarStr var_EC, "Numero"
  loc_C45AAC: PopAdLdVar
  loc_C45AAD: FLdPr var_AC
  loc_C45AB0: LateIdCallSt
  loc_C45AB8: LitVarI4
  loc_C45AC0: PopAdLdVar
  loc_C45AC1: LitVarI4
  loc_C45AC9: PopAdLdVar
  loc_C45ACA: LitVarStr var_EC, "Mov"
  loc_C45ACF: PopAdLdVar
  loc_C45AD0: FLdPr var_AC
  loc_C45AD3: LateIdCallSt
  loc_C45ADB: LitNothing
  loc_C45ADD: FStAd var_AC 
  loc_C45AE1: FLdPr Me
  loc_C45AE4: VCallAd Control_ID_CuotasFlex
  loc_C45AE7: FStAdFunc var_100
  loc_C45AEA: LitVarI4
  loc_C45AF2: PopAdLdVar
  loc_C45AF3: LitVarI4
  loc_C45AFB: PopAdLdVar
  loc_C45AFC: FLdPr var_100
  loc_C45AFF: LateIdCallSt
  loc_C45B07: LitVarI4
  loc_C45B0F: PopAdLdVar
  loc_C45B10: LitVarI4
  loc_C45B18: PopAdLdVar
  loc_C45B19: FLdPr var_100
  loc_C45B1C: LateIdCallSt
  loc_C45B24: LitVarI4
  loc_C45B2C: PopAdLdVar
  loc_C45B2D: LitVarI4
  loc_C45B35: PopAdLdVar
  loc_C45B36: LitVarStr var_EC, "Cuotas"
  loc_C45B3B: PopAdLdVar
  loc_C45B3C: FLdPr var_100
  loc_C45B3F: LateIdCallSt
  loc_C45B47: LitVarI4
  loc_C45B4F: PopAdLdVar
  loc_C45B50: LitVarI4
  loc_C45B58: PopAdLdVar
  loc_C45B59: LitVarStr var_EC, "Importe"
  loc_C45B5E: PopAdLdVar
  loc_C45B5F: FLdPr var_100
  loc_C45B62: LateIdCallSt
  loc_C45B6A: LitNothing
  loc_C45B6C: FStAd var_100 
  loc_C45B70: FLdPr Me
  loc_C45B73: VCallAd Control_ID_CuotasDetalleFlex
  loc_C45B76: FStAdFunc var_104
  loc_C45B79: LitVarI4
  loc_C45B81: PopAdLdVar
  loc_C45B82: LitVarI4
  loc_C45B8A: PopAdLdVar
  loc_C45B8B: FLdPr var_104
  loc_C45B8E: LateIdCallSt
  loc_C45B96: LitVarI4
  loc_C45B9E: PopAdLdVar
  loc_C45B9F: LitVarI4
  loc_C45BA7: PopAdLdVar
  loc_C45BA8: FLdPr var_104
  loc_C45BAB: LateIdCallSt
  loc_C45BB3: LitVarI4
  loc_C45BBB: PopAdLdVar
  loc_C45BBC: LitVarI4
  loc_C45BC4: PopAdLdVar
  loc_C45BC5: FLdPr var_104
  loc_C45BC8: LateIdCallSt
  loc_C45BD0: LitVarI4
  loc_C45BD8: PopAdLdVar
  loc_C45BD9: LitVarI4
  loc_C45BE1: PopAdLdVar
  loc_C45BE2: FLdPr var_104
  loc_C45BE5: LateIdCallSt
  loc_C45BED: LitVarI4
  loc_C45BF5: PopAdLdVar
  loc_C45BF6: LitVarI4
  loc_C45BFE: PopAdLdVar
  loc_C45BFF: FLdPr var_104
  loc_C45C02: LateIdCallSt
  loc_C45C0A: LitVarI4
  loc_C45C12: PopAdLdVar
  loc_C45C13: LitVarI4
  loc_C45C1B: PopAdLdVar
  loc_C45C1C: FLdPr var_104
  loc_C45C1F: LateIdCallSt
  loc_C45C27: LitVarI4
  loc_C45C2F: PopAdLdVar
  loc_C45C30: LitVarI4
  loc_C45C38: PopAdLdVar
  loc_C45C39: FLdPr var_104
  loc_C45C3C: LateIdCallSt
  loc_C45C44: LitVarI4
  loc_C45C4C: PopAdLdVar
  loc_C45C4D: LitVarI4
  loc_C45C55: PopAdLdVar
  loc_C45C56: FLdPr var_104
  loc_C45C59: LateIdCallSt
  loc_C45C61: LitVarI4
  loc_C45C69: PopAdLdVar
  loc_C45C6A: LitVarI4
  loc_C45C72: PopAdLdVar
  loc_C45C73: FLdPr var_104
  loc_C45C76: LateIdCallSt
  loc_C45C7E: LitVarI4
  loc_C45C86: PopAdLdVar
  loc_C45C87: LitVarI4
  loc_C45C8F: PopAdLdVar
  loc_C45C90: FLdPr var_104
  loc_C45C93: LateIdCallSt
  loc_C45C9B: LitVarI4
  loc_C45CA3: PopAdLdVar
  loc_C45CA4: LitVarI4
  loc_C45CAC: PopAdLdVar
  loc_C45CAD: FLdPr var_104
  loc_C45CB0: LateIdCallSt
  loc_C45CB8: LitVarI4
  loc_C45CC0: PopAdLdVar
  loc_C45CC1: LitVarI4
  loc_C45CC9: PopAdLdVar
  loc_C45CCA: LitVarStr var_EC, "Cuotas"
  loc_C45CCF: PopAdLdVar
  loc_C45CD0: FLdPr var_104
  loc_C45CD3: LateIdCallSt
  loc_C45CDB: LitVarI4
  loc_C45CE3: PopAdLdVar
  loc_C45CE4: LitVarI4
  loc_C45CEC: PopAdLdVar
  loc_C45CED: LitVarStr var_EC, "Vencimiento"
  loc_C45CF2: PopAdLdVar
  loc_C45CF3: FLdPr var_104
  loc_C45CF6: LateIdCallSt
  loc_C45CFE: LitVarI4
  loc_C45D06: PopAdLdVar
  loc_C45D07: LitVarI4
  loc_C45D0F: PopAdLdVar
  loc_C45D10: LitVarStr var_EC, "Capital"
  loc_C45D15: PopAdLdVar
  loc_C45D16: FLdPr var_104
  loc_C45D19: LateIdCallSt
  loc_C45D21: LitVarI4
  loc_C45D29: PopAdLdVar
  loc_C45D2A: LitVarI4
  loc_C45D32: PopAdLdVar
  loc_C45D33: LitVarStr var_EC, "Recargo"
  loc_C45D38: PopAdLdVar
  loc_C45D39: FLdPr var_104
  loc_C45D3C: LateIdCallSt
  loc_C45D44: LitVarI4
  loc_C45D4C: PopAdLdVar
  loc_C45D4D: LitVarI4
  loc_C45D55: PopAdLdVar
  loc_C45D56: LitVarStr var_EC, "Desc.Cap."
  loc_C45D5B: PopAdLdVar
  loc_C45D5C: FLdPr var_104
  loc_C45D5F: LateIdCallSt
  loc_C45D67: LitVarI4
  loc_C45D6F: PopAdLdVar
  loc_C45D70: LitVarI4
  loc_C45D78: PopAdLdVar
  loc_C45D79: LitVarStr var_EC, "Desc.Rec."
  loc_C45D7E: PopAdLdVar
  loc_C45D7F: FLdPr var_104
  loc_C45D82: LateIdCallSt
  loc_C45D8A: LitVarI4
  loc_C45D92: PopAdLdVar
  loc_C45D93: LitVarI4
  loc_C45D9B: PopAdLdVar
  loc_C45D9C: LitVarStr var_EC, "Apremio"
  loc_C45DA1: PopAdLdVar
  loc_C45DA2: FLdPr var_104
  loc_C45DA5: LateIdCallSt
  loc_C45DAD: LitVarI4
  loc_C45DB5: PopAdLdVar
  loc_C45DB6: LitVarI4
  loc_C45DBE: PopAdLdVar
  loc_C45DBF: LitVarStr var_EC, "Interes"
  loc_C45DC4: PopAdLdVar
  loc_C45DC5: FLdPr var_104
  loc_C45DC8: LateIdCallSt
  loc_C45DD0: LitVarI4
  loc_C45DD8: PopAdLdVar
  loc_C45DD9: LitVarI4
  loc_C45DE1: PopAdLdVar
  loc_C45DE2: LitVarStr var_EC, "Total"
  loc_C45DE7: PopAdLdVar
  loc_C45DE8: FLdPr var_104
  loc_C45DEB: LateIdCallSt
  loc_C45DF3: LitVarI4
  loc_C45DFB: PopAdLdVar
  loc_C45DFC: LitVarI4
  loc_C45E04: PopAdLdVar
  loc_C45E05: LitVarStr var_EC, "Ofc."
  loc_C45E0A: PopAdLdVar
  loc_C45E0B: FLdPr var_104
  loc_C45E0E: LateIdCallSt
  loc_C45E16: LitVarI4
  loc_C45E1E: PopAdLdVar
  loc_C45E1F: LitVarI4
  loc_C45E27: PopAdLdVar
  loc_C45E28: LitVarStr var_EC, "Cuenta"
  loc_C45E2D: PopAdLdVar
  loc_C45E2E: FLdPr var_104
  loc_C45E31: LateIdCallSt
  loc_C45E39: LitNothing
  loc_C45E3B: FStAd var_104 
  loc_C45E3F: LitStr "SELECT * FROM paragene ORDER BY CodiPage"
  loc_C45E42: FLdPr Me
  loc_C45E45: MemLdRfVar from_stack_1.global_60
  loc_C45E48: NewIfNullPr clsparagene
  loc_C45E4B: Call clsparagene.RedefineRS(from_stack_1v)
  loc_C45E50: FLdRfVar var_108
  loc_C45E53: FLdPr Me
  loc_C45E56: MemLdRfVar from_stack_1.global_60
  loc_C45E59: NewIfNullPr clsparagene
  loc_C45E5C: from_stack_1 = clsparagene.RecordCount
  loc_C45E61: ILdRf var_108
  loc_C45E64: LitI4 0
  loc_C45E69: GtI4
  loc_C45E6A: BranchF loc_C45EED
  loc_C45E6D: FLdPr Me
  loc_C45E70: MemLdRfVar from_stack_1.global_60
  loc_C45E73: NewIfNullPr clsparagene
  loc_C45E76: Call clsparagene.MoveLast()
  loc_C45E7B: FLdRfVar var_10A
  loc_C45E7E: FLdPr Me
  loc_C45E81: MemLdRfVar from_stack_1.global_60
  loc_C45E84: NewIfNullPr clsparagene
  loc_C45E87: from_stack_1 = clsparagene.DecaPage
  loc_C45E8C: LitI4 2
  loc_C45E91: FLdI2 var_10A
  loc_C45E94: CR8I2
  loc_C45E95: CVarR8
  loc_C45E99: FLdRfVar var_11C
  loc_C45E9C: ImpAdCallFPR4  = Round(, )
  loc_C45EA1: FLdRfVar var_11C
  loc_C45EA4: CR4Var
  loc_C45EA5: FLdPr Me
  loc_C45EA8: MemStFPR8 global_140
  loc_C45EAB: FFreeVar var_A8 = ""
  loc_C45EB2: FLdRfVar var_124
  loc_C45EB5: FLdPr Me
  loc_C45EB8: MemLdRfVar from_stack_1.global_60
  loc_C45EBB: NewIfNullPr clsparagene
  loc_C45EBE: from_stack_1 = clsparagene.DerePage
  loc_C45EC3: LitI4 2
  loc_C45EC8: FLdFPR8 var_124
  loc_C45ECB: FnCDblR8
  loc_C45ECD: CVarR8
  loc_C45ED1: FLdRfVar var_11C
  loc_C45ED4: ImpAdCallFPR4  = Round(, )
  loc_C45ED9: FLdRfVar var_11C
  loc_C45EDC: CR4Var
  loc_C45EDD: FLdPr Me
  loc_C45EE0: MemStFPR8 global_148
  loc_C45EE3: FFreeVar var_A8 = ""
  loc_C45EEA: Branch loc_C45EFF
  loc_C45EED: LitI2_Byte 0
  loc_C45EEF: CR8I2
  loc_C45EF0: FLdPr Me
  loc_C45EF3: MemStFPR8 global_140
  loc_C45EF6: LitI2_Byte 0
  loc_C45EF8: CR8I2
  loc_C45EF9: FLdPr Me
  loc_C45EFC: MemStFPR8 global_148
  loc_C45EFF: FLdPr Me
  loc_C45F02: MemLdRfVar from_stack_1.global_92
  loc_C45F05: NewIfNullRf
  loc_C45F09: ImpAdLdI4 MemVar_D9302C
  loc_C45F0C: ImpAdCallI2 Proc_270_3_C29F5C(, )
  loc_C45F11: BranchF loc_C45F77
  loc_C45F14: FLdRfVar var_128
  loc_C45F17: FLdPr Me
  loc_C45F1A: MemLdRfVar from_stack_1.global_92
  loc_C45F1D: NewIfNullPr tblusuario
  loc_C45F20: from_stack_1v = tblusuario.AnfaUsuaGet()
  loc_C45F25: ILdRf var_128
  loc_C45F28: CUI1Str
  loc_C45F2A: FLdPr Me
  loc_C45F2D: MemStUI1
  loc_C45F31: FFree1Str var_128
  loc_C45F34: FLdRfVar var_128
  loc_C45F37: FLdPr Me
  loc_C45F3A: MemLdRfVar from_stack_1.global_92
  loc_C45F3D: NewIfNullPr tblusuario
  loc_C45F40: from_stack_1v = tblusuario.SedeUsuaGet()
  loc_C45F45: ILdRf var_128
  loc_C45F48: CUI1Str
  loc_C45F4A: FLdPr Me
  loc_C45F4D: MemStUI1
  loc_C45F51: FFree1Str var_128
  loc_C45F54: FLdRfVar var_128
  loc_C45F57: FLdPr Me
  loc_C45F5A: MemLdRfVar from_stack_1.global_92
  loc_C45F5D: NewIfNullPr tblusuario
  loc_C45F60: from_stack_1v = tblusuario.FaesUsuaGet()
  loc_C45F65: ILdRf var_128
  loc_C45F68: CUI1Str
  loc_C45F6A: FLdPr Me
  loc_C45F6D: MemStUI1
  loc_C45F71: FFree1Str var_128
  loc_C45F74: Branch loc_C45F98
  loc_C45F77: LitI2_Byte 0
  loc_C45F79: CUI1I2
  loc_C45F7B: FLdPr Me
  loc_C45F7E: MemStUI1
  loc_C45F82: LitI2_Byte 0
  loc_C45F84: CUI1I2
  loc_C45F86: FLdPr Me
  loc_C45F89: MemStUI1
  loc_C45F8D: LitI2_Byte 0
  loc_C45F8F: CUI1I2
  loc_C45F91: FLdPr Me
  loc_C45F94: MemStUI1
  loc_C45F98: FLdPr Me
  loc_C45F9B: MemLdRfVar from_stack_1.global_84
  loc_C45F9E: NewIfNullAd
  loc_C45FA1: FStAd var_12C 
  loc_C45FA5: LitStr "SELECT CodiTifp, DetaTifp  FROM tipofirmFapa ORDER BY CodiTifp"
  loc_C45FA8: FLdPr var_12C
  loc_C45FAB: Call clsusuario.RedefineRS(from_stack_1v)
  loc_C45FB0: FLdRfVar var_108
  loc_C45FB3: FLdPr var_12C
  loc_C45FB6: from_stack_1 = clsusuario.RecordCount
  loc_C45FBB: ILdRf var_108
  loc_C45FBE: LitI4 0
  loc_C45FC3: GtI4
  loc_C45FC4: BranchF loc_C460CE
  loc_C45FC7: FLdPr var_12C
  loc_C45FCA: Call clsusuario.MoveFirst()
  loc_C45FCF: FLdPr Me
  loc_C45FD2: VCallAd Control_ID_EmisionCbo
  loc_C45FD5: FStAdFunc var_98
  loc_C45FD8: FLdPr var_98
  loc_C45FDB: Me.Clear
  loc_C45FE0: FFree1Ad var_98
  loc_C45FE3: FLdRfVar var_10A
  loc_C45FE6: FLdPr var_12C
  loc_C45FE9: from_stack_1 = clsusuario.EOF
  loc_C45FEE: FLdI2 var_10A
  loc_C45FF1: NotI4
  loc_C45FF2: BranchF loc_C460CE
  loc_C45FF5: LitVar_Missing var_BC
  loc_C45FF8: PopAdLdVar
  loc_C45FF9: FLdRfVar var_A8
  loc_C45FFC: FLdRfVar var_134
  loc_C45FFF: LitVarStr var_94, "DetaTifp"
  loc_C46004: PopAdLdVar
  loc_C46005: FLdRfVar var_130
  loc_C46008: FLdRfVar var_98
  loc_C4600B: FLdPr var_12C
  loc_C4600E: from_stack_1v = clsusuario.RsFrmGet()
  loc_C46013: FLdPr var_98
  loc_C46016:  = Me.Fields
  loc_C4601B: FLdPr var_130
  loc_C4601E: from_stack_2 = Me.Item(from_stack_1)
  loc_C46023: FLdPr var_134
  loc_C46026:  = Me.Value
  loc_C4602B: FLdRfVar var_A8
  loc_C4602E: CStrVarTmp
  loc_C4602F: FStStrNoPop var_128
  loc_C46032: FLdPr Me
  loc_C46035: VCallAd Control_ID_EmisionCbo
  loc_C46038: FStAdFunc var_138
  loc_C4603B: FLdPr var_138
  loc_C4603E: Me.AddItem from_stack_1, from_stack_2
  loc_C46043: FFree1Str var_128
  loc_C46046: FFreeAd var_98 = "": var_130 = "": var_134 = ""
  loc_C46051: FFree1Var var_A8 = ""
  loc_C46054: FLdRfVar var_A8
  loc_C46057: FLdRfVar var_134
  loc_C4605A: LitVarStr var_94, "CodiTifp"
  loc_C4605F: PopAdLdVar
  loc_C46060: FLdRfVar var_130
  loc_C46063: FLdRfVar var_98
  loc_C46066: FLdPr var_12C
  loc_C46069: from_stack_1v = clsusuario.RsFrmGet()
  loc_C4606E: FLdPr var_98
  loc_C46071:  = Me.Fields
  loc_C46076: FLdPr var_130
  loc_C46079: from_stack_2 = Me.Item(from_stack_1)
  loc_C4607E: FLdPr var_134
  loc_C46081:  = Me.Value
  loc_C46086: FLdRfVar var_A8
  loc_C46089: CI4Var
  loc_C4608B: FLdRfVar var_10A
  loc_C4608E: FLdPr Me
  loc_C46091: VCallAd Control_ID_EmisionCbo
  loc_C46094: FStAdFunc var_138
  loc_C46097: FLdPr var_138
  loc_C4609A:  = Me.NewIndex
  loc_C4609F: FLdI2 var_10A
  loc_C460A2: FLdPr Me
  loc_C460A5: VCallAd Control_ID_EmisionCbo
  loc_C460A8: FStAdFunc var_13C
  loc_C460AB: FLdPr var_13C
  loc_C460AE: Me.ItemData = from_stack_1
  loc_C460B3: FFreeAd var_98 = "": var_130 = "": var_138 = "": var_134 = ""
  loc_C460C0: FFree1Var var_A8 = ""
  loc_C460C3: FLdPr var_12C
  loc_C460C6: Call clsusuario.MoveSiguiente()
  loc_C460CB: Branch loc_C45FE3
  loc_C460CE: LitNothing
  loc_C460D0: FStAd var_12C 
  loc_C460D4: FLdRfVar var_10A
  loc_C460D7: FLdPr Me
  loc_C460DA: VCallAd Control_ID_EmisionCbo
  loc_C460DD: FStAdFunc var_98
  loc_C460E0: FLdPr var_98
  loc_C460E3:  = Me.ListCount
  loc_C460E8: FLdI2 var_10A
  loc_C460EB: LitI2_Byte 1
  loc_C460ED: GtI2
  loc_C460EE: FFree1Ad var_98
  loc_C460F1: BranchF loc_C4610A
  loc_C460F4: LitI2_Byte 0
  loc_C460F6: FLdPr Me
  loc_C460F9: VCallAd Control_ID_EmisionCbo
  loc_C460FC: FStAdFunc var_98
  loc_C460FF: FLdPr var_98
  loc_C46102: Me.ListIndex = from_stack_1
  loc_C46107: FFree1Ad var_98
  loc_C4610A: Call Proc_187_56_9FEEB8()
  loc_C4610F: LitI4 0
  loc_C46114: LitI4 3
  loc_C46119: FLdRfVar var_140
  loc_C4611C: Redim
  loc_C46126: FLdPr Me
  loc_C46129: VCallAd Control_ID_CuotasFlex
  loc_C4612C: CVarAd
  loc_C46130: ParmAry1St
  loc_C46136: FLdPr Me
  loc_C46139: VCallAd Control_ID_CuotApreTxt
  loc_C4613C: CVarAd
  loc_C46140: ParmAry1St
  loc_C46146: FLdPr Me
  loc_C46149: VCallAd Control_ID_AnticipoTxt
  loc_C4614C: CVarAd
  loc_C46150: ParmAry1St
  loc_C46156: FLdPr Me
  loc_C46159: VCallAd Control_ID_ImprimirCmd
  loc_C4615C: CVarAd
  loc_C46160: ParmAry1St
  loc_C46166: FLdRfVar var_140
  loc_C46169: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C4616E: FLdRfVar var_140
  loc_C46171: Erase
  loc_C46172: LitI2_Byte 0
  loc_C46174: FLdPr Me
  loc_C46177: VCallAd Control_ID_CodiInmuLbl
  loc_C4617A: FStAdFunc var_98
  loc_C4617D: FLdPr var_98
  loc_C46180: Me.Visible = from_stack_1b
  loc_C46185: FFree1Ad var_98
  loc_C46188: LitI2_Byte 0
  loc_C4618A: FLdPr Me
  loc_C4618D: VCallAd Control_ID_CodiInmuTxt
  loc_C46190: FStAdFunc var_98
  loc_C46193: FLdPr var_98
  loc_C46196: Me.Visible = from_stack_1b
  loc_C4619B: FFree1Ad var_98
  loc_C4619E: LitI2_Byte 0
  loc_C461A0: FLdPr Me
  loc_C461A3: VCallAd Control_ID_CodiInmuCmd
  loc_C461A6: FStAdFunc var_98
  loc_C461A9: FLdPr var_98
  loc_C461AC: Me.Visible = from_stack_1b
  loc_C461B1: FFree1Ad var_98
  loc_C461B4: LitI2_Byte 0
  loc_C461B6: FLdPr Me
  loc_C461B9: VCallAd Control_ID_OrdeObreLbl
  loc_C461BC: FStAdFunc var_98
  loc_C461BF: FLdPr var_98
  loc_C461C2: Me.Visible = from_stack_1b
  loc_C461C7: FFree1Ad var_98
  loc_C461CA: LitI2_Byte 0
  loc_C461CC: FLdPr Me
  loc_C461CF: VCallAd Control_ID_OrdeObreTxt
  loc_C461D2: FStAdFunc var_98
  loc_C461D5: FLdPr var_98
  loc_C461D8: Me.Visible = from_stack_1b
  loc_C461DD: FFree1Ad var_98
  loc_C461E0: LitI2_Byte 0
  loc_C461E2: FLdPr Me
  loc_C461E5: VCallAd Control_ID_OrdeObreCmd
  loc_C461E8: FStAdFunc var_98
  loc_C461EB: FLdPr var_98
  loc_C461EE: Me.Visible = from_stack_1b
  loc_C461F3: FFree1Ad var_98
  loc_C461F6: LitI2_Byte 0
  loc_C461F8: FLdPr Me
  loc_C461FB: VCallAd Control_ID_SeleTodoChk
  loc_C461FE: FStAdFunc var_98
  loc_C46201: FLdPr var_98
  loc_C46204: Me.Enabled = from_stack_1b
  loc_C46209: FFree1Ad var_98
  loc_C4620C: LitI2_Byte 0
  loc_C4620E: FLdPr Me
  loc_C46211: VCallAd Control_ID_ImprimirCmd
  loc_C46214: FStAdFunc var_98
  loc_C46217: FLdPr var_98
  loc_C4621A: Me.Enabled = from_stack_1b
  loc_C4621F: FFree1Ad var_98
  loc_C46222: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB1C8
  'Data Table: 52F1AC
  loc_9BB1B4: ILdI2 KeyCode
  loc_9BB1B7: CI4UI1
  loc_9BB1B8: LitI4 &H78
  loc_9BB1BD: EqI4
  loc_9BB1BE: BranchF loc_9BB1C6
  loc_9BB1C1: Call SalirCmd_Click()
  loc_9BB1C6: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() 'C55420
  'Data Table: 52F1AC
  loc_C545FC: FLdPr Me
  loc_C545FF: MemLdUI1 global_317
  loc_C54603: CI2UI1
  loc_C54605: LitI2_Byte 1
  loc_C54607: EqI2
  loc_C54608: BranchF loc_C5541E
  loc_C5460B: LitI2_Byte 0
  loc_C5460D: CR8I2
  loc_C5460E: FLdPr Me
  loc_C54611: MemStFPR8 global_100
  loc_C54614: LitI2_Byte 0
  loc_C54616: CR8I2
  loc_C54617: FLdPr Me
  loc_C5461A: MemStFPR8 global_108
  loc_C5461D: LitI2_Byte 0
  loc_C5461F: CR8I2
  loc_C54620: FLdPr Me
  loc_C54623: MemStFPR8 global_116
  loc_C54626: LitI2_Byte 0
  loc_C54628: CR8I2
  loc_C54629: FLdPr Me
  loc_C5462C: MemStFPR8 global_124
  loc_C5462F: LitI2_Byte 1
  loc_C54631: FLdPr Me
  loc_C54634: MemLdRfVar from_stack_1.global_96
  loc_C54637: FLdPr Me
  loc_C5463A: VCallAd Control_ID_ctacteFlex
  loc_C5463D: FStAdFunc var_88
  loc_C54640: FLdPr var_88
  loc_C54643: LateIdLdVar var_98 DispID_4 0
  loc_C5464A: CI4Var
  loc_C5464C: LitI4 1
  loc_C54651: SubI4
  loc_C54652: CI2I4
  loc_C54653: FFree1Ad var_88
  loc_C54656: FFree1Var var_98 = ""
  loc_C54659: ForI2 var_9C
  loc_C5465F: FLdPr Me
  loc_C54662: MemLdI2 global_96
  loc_C54665: CI4UI1
  loc_C54666: CVarI4
  loc_C5466A: PopAdLdVar
  loc_C5466B: LitVarI4
  loc_C54673: PopAdLdVar
  loc_C54674: FLdPr Me
  loc_C54677: VCallAd Control_ID_ctacteFlex
  loc_C5467A: FStAdFunc var_88
  loc_C5467D: FLdPr var_88
  loc_C54680: LateIdCallLdVar
  loc_C5468A: CStrVarTmp
  loc_C5468B: FStStrNoPop var_E0
  loc_C5468E: CI4Str
  loc_C5468F: LitI4 0
  loc_C54694: EqI4
  loc_C54695: FFree1Str var_E0
  loc_C54698: FFree1Ad var_88
  loc_C5469B: FFree1Var var_98 = ""
  loc_C5469E: BranchF loc_C55071
  loc_C546A1: FLdPr Me
  loc_C546A4: MemLdI2 global_96
  loc_C546A7: CI4UI1
  loc_C546A8: CVarI4
  loc_C546AC: PopAdLdVar
  loc_C546AD: FLdPr Me
  loc_C546B0: VCallAd Control_ID_ctacteFlex
  loc_C546B3: FStAdFunc var_88
  loc_C546B6: FLdPr var_88
  loc_C546B9: LateIdSt
  loc_C546BE: FFree1Ad var_88
  loc_C546C1: LitI2_Byte 0
  loc_C546C3: FLdPr Me
  loc_C546C6: MemLdRfVar from_stack_1.global_98
  loc_C546C9: FLdPr Me
  loc_C546CC: VCallAd Control_ID_ctacteFlex
  loc_C546CF: FStAdFunc var_88
  loc_C546D2: FLdPr var_88
  loc_C546D5: LateIdLdVar var_98 DispID_5 0
  loc_C546DC: CI4Var
  loc_C546DE: LitI4 1
  loc_C546E3: SubI4
  loc_C546E4: CI2I4
  loc_C546E5: FFree1Ad var_88
  loc_C546E8: FFree1Var var_98 = ""
  loc_C546EB: ForI2 var_E4
  loc_C546F1: FLdPr Me
  loc_C546F4: MemLdI2 global_98
  loc_C546F7: CI4UI1
  loc_C546F8: CVarI4
  loc_C546FC: PopAdLdVar
  loc_C546FD: FLdPr Me
  loc_C54700: VCallAd Control_ID_ctacteFlex
  loc_C54703: FStAdFunc var_88
  loc_C54706: FLdPr var_88
  loc_C54709: LateIdSt
  loc_C5470E: FFree1Ad var_88
  loc_C54711: FLdRfVar var_E6
  loc_C54714: FLdPr Me
  loc_C54717: VCallAd Control_ID_SeleTodoChk
  loc_C5471A: FStAdFunc var_88
  loc_C5471D: FLdPr var_88
  loc_C54720:  = Me.Value
  loc_C54725: FLdI2 var_E6
  loc_C54728: LitI2_Byte 0
  loc_C5472A: EqI2
  loc_C5472B: FFree1Ad var_88
  loc_C5472E: BranchF loc_C54B9F
  loc_C54731: LitVarI4
  loc_C54739: PopAdLdVar
  loc_C5473A: FLdPr Me
  loc_C5473D: VCallAd Control_ID_ctacteFlex
  loc_C54740: FStAdFunc var_88
  loc_C54743: FLdPr var_88
  loc_C54746: LateIdSt
  loc_C5474B: FFree1Ad var_88
  loc_C5474E: FLdPr Me
  loc_C54751: VCallAd Control_ID_ctacteFlex
  loc_C54754: FStAdFunc var_88
  loc_C54757: FLdPr var_88
  loc_C5475A: LateIdLdVar var_98 DispID_10 0
  loc_C54761: CI4Var
  loc_C54763: CVarI4
  loc_C54767: PopAdLdVar
  loc_C54768: LitVarI4
  loc_C54770: PopAdLdVar
  loc_C54771: LitVarStr var_F8, "No"
  loc_C54776: PopAdLdVar
  loc_C54777: FLdPr Me
  loc_C5477A: VCallAd Control_ID_ctacteFlex
  loc_C5477D: FStAdFunc var_10C
  loc_C54780: FLdPr var_10C
  loc_C54783: LateIdCallSt
  loc_C5478B: FFreeAd var_88 = ""
  loc_C54792: FFree1Var var_98 = ""
  loc_C54795: FLdPr Me
  loc_C54798: MemLdI2 global_98
  loc_C5479B: LitI2_Byte 0
  loc_C5479D: EqI2
  loc_C5479E: BranchF loc_C54A1B
  loc_C547A1: FLdPr Me
  loc_C547A4: VCallAd Control_ID_ctacteFlex
  loc_C547A7: FStAdFunc var_88
  loc_C547AA: FLdPr var_88
  loc_C547AD: LateIdLdVar var_98 DispID_10 0
  loc_C547B4: CI4Var
  loc_C547B6: CVarI4
  loc_C547BA: PopAdLdVar
  loc_C547BB: LitVarI4
  loc_C547C3: PopAdLdVar
  loc_C547C4: FLdPr Me
  loc_C547C7: VCallAd Control_ID_ctacteFlex
  loc_C547CA: FStAdFunc var_10C
  loc_C547CD: FLdPr var_10C
  loc_C547D0: LateIdCallLdVar
  loc_C547DA: PopAd
  loc_C547DC: FLdPr Me
  loc_C547DF: VCallAd Control_ID_ctacteFlex
  loc_C547E2: FStAdFunc var_120
  loc_C547E5: FLdPr var_120
  loc_C547E8: LateIdLdVar var_130 DispID_10 0
  loc_C547EF: CI4Var
  loc_C547F1: CVarI4
  loc_C547F5: PopAdLdVar
  loc_C547F6: LitVarI4
  loc_C547FE: PopAdLdVar
  loc_C547FF: FLdPr Me
  loc_C54802: VCallAd Control_ID_ctacteFlex
  loc_C54805: FStAdFunc var_154
  loc_C54808: FLdPr var_154
  loc_C5480B: LateIdCallLdVar
  loc_C54815: PopAd
  loc_C54817: FLdPr Me
  loc_C5481A: VCallAd Control_ID_ctacteFlex
  loc_C5481D: FStAdFunc var_168
  loc_C54820: FLdPr var_168
  loc_C54823: LateIdLdVar var_178 DispID_10 0
  loc_C5482A: CI4Var
  loc_C5482C: CVarI4
  loc_C54830: PopAdLdVar
  loc_C54831: LitVarI4
  loc_C54839: PopAdLdVar
  loc_C5483A: FLdPr Me
  loc_C5483D: VCallAd Control_ID_ctacteFlex
  loc_C54840: FStAdFunc var_1BC
  loc_C54843: FLdPr var_1BC
  loc_C54846: LateIdCallLdVar
  loc_C54850: CStrVarTmp
  loc_C54851: CVarStr var_1DC
  loc_C54854: FLdRfVar var_1EC
  loc_C54857: ImpAdCallFPR4  = Trim()
  loc_C5485C: LitI4 4
  loc_C54861: FLdRfVar var_1EC
  loc_C54864: FLdRfVar var_1FC
  loc_C54867: ImpAdCallFPR4  = Right(, )
  loc_C5486C: FLdPr Me
  loc_C5486F: VCallAd Control_ID_ctacteFlex
  loc_C54872: FStAdFunc var_200
  loc_C54875: FLdPr var_200
  loc_C54878: LateIdLdVar var_210 DispID_10 0
  loc_C5487F: CI4Var
  loc_C54881: CVarI4
  loc_C54885: PopAdLdVar
  loc_C54886: LitVarI4
  loc_C5488E: PopAdLdVar
  loc_C5488F: FLdPr Me
  loc_C54892: VCallAd Control_ID_ctacteFlex
  loc_C54895: FStAdFunc var_254
  loc_C54898: FLdPr var_254
  loc_C5489B: LateIdCallLdVar
  loc_C548A5: PopAd
  loc_C548A7: LitI4 1
  loc_C548AC: FLdPr Me
  loc_C548AF: VCallAd Control_ID_ctacteFlex
  loc_C548B2: FStAdFunc var_268
  loc_C548B5: FLdPr var_268
  loc_C548B8: LateIdLdVar var_278 DispID_10 0
  loc_C548BF: CI4Var
  loc_C548C1: CVarI4
  loc_C548C5: PopAdLdVar
  loc_C548C6: LitVarI4
  loc_C548CE: PopAdLdVar
  loc_C548CF: FLdPr Me
  loc_C548D2: VCallAd Control_ID_ctacteFlex
  loc_C548D5: FStAdFunc var_2BC
  loc_C548D8: FLdPr var_2BC
  loc_C548DB: LateIdCallLdVar
  loc_C548E5: CStrVarTmp
  loc_C548E6: FStStrNoPop var_E0
  loc_C548E9: LitStr "/"
  loc_C548EC: LitI4 0
  loc_C548F1: FnInStr4
  loc_C548F3: LitI4 1
  loc_C548F8: SubI4
  loc_C548F9: CVarI4
  loc_C548FD: LitI4 1
  loc_C54902: FLdRfVar var_264
  loc_C54905: CStrVarTmp
  loc_C54906: CVarStr var_2DC
  loc_C54909: FLdRfVar var_30C
  loc_C5490C: ImpAdCallFPR4  = Mid(, , )
  loc_C54911: FLdPr Me
  loc_C54914: VCallAd Control_ID_ctacteFlex
  loc_C54917: FStAdFunc var_310
  loc_C5491A: FLdPr var_310
  loc_C5491D: LateIdLdVar var_320 DispID_10 0
  loc_C54924: CI4Var
  loc_C54926: CVarI4
  loc_C5492A: PopAdLdVar
  loc_C5492B: LitVarI4
  loc_C54933: PopAdLdVar
  loc_C54934: FLdPr Me
  loc_C54937: VCallAd Control_ID_ctacteFlex
  loc_C5493A: FStAdFunc var_364
  loc_C5493D: FLdPr var_364
  loc_C54940: LateIdCallLdVar
  loc_C5494A: PopAd
  loc_C5494C: FLdPr Me
  loc_C5494F: VCallAd Control_ID_ctacteFlex
  loc_C54952: FStAdFunc var_378
  loc_C54955: FLdPr var_378
  loc_C54958: LateIdLdVar var_388 DispID_10 0
  loc_C5495F: CI4Var
  loc_C54961: CVarI4
  loc_C54965: PopAdLdVar
  loc_C54966: LitVarI4
  loc_C5496E: PopAdLdVar
  loc_C5496F: FLdPr Me
  loc_C54972: VCallAd Control_ID_ctacteFlex
  loc_C54975: FStAdFunc var_3CC
  loc_C54978: FLdPr var_3CC
  loc_C5497B: LateIdCallLdVar
  loc_C54985: PopAd
  loc_C54987: LitStr "tmp_ctacteboleto"
  loc_C5498A: LitStr "No"
  loc_C5498D: FLdRfVar var_3DC
  loc_C54990: CStrVarTmp
  loc_C54991: FStStrNoPop var_3EC
  loc_C54994: CI2Str
  loc_C54996: FLdRfVar var_374
  loc_C54999: CStrVarTmp
  loc_C5499A: FStStrNoPop var_3E8
  loc_C5499D: CI4Str
  loc_C5499E: FLdRfVar var_30C
  loc_C549A1: CI2Var
  loc_C549A2: FLdRfVar var_1FC
  loc_C549A5: CI2Var
  loc_C549A6: FLdRfVar var_164
  loc_C549A9: CStrVarTmp
  loc_C549AA: FStStrNoPop var_3E4
  loc_C549AD: FLdRfVar var_11C
  loc_C549B0: CStrVarTmp
  loc_C549B1: FStStrNoPop var_3E0
  loc_C549B4: CUI1Str
  loc_C549B6: FLdPr Me
  loc_C549B9: MemLdRfVar from_stack_1.global_68
  loc_C549BC: NewIfNullPr clsctacte
  loc_C549BF: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C549C4: FFreeStr var_E0 = "": var_3E0 = "": var_3E4 = "": var_3E8 = ""
  loc_C549D1: FFreeAd var_88 = "": var_10C = "": var_120 = "": var_154 = "": var_168 = "": var_1BC = "": var_200 = "": var_254 = "": var_268 = "": var_2BC = "": var_310 = "": var_364 = "": var_378 = ""
  loc_C549F0: FFreeVar var_98 = "": var_11C = "": var_130 = "": var_164 = "": var_178 = "": var_1CC = "": var_1DC = "": var_1EC = "": var_210 = "": var_264 = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_320 = "": var_374 = "": var_388 = "": var_3DC = "": var_1FC = ""
  loc_C54A1B: FLdPr Me
  loc_C54A1E: MemLdI2 global_98
  loc_C54A21: LitI2_Byte &HB
  loc_C54A23: EqI2
  loc_C54A24: BranchF loc_C54AA5
  loc_C54A27: FLdPr Me
  loc_C54A2A: VCallAd Control_ID_ctacteFlex
  loc_C54A2D: FStAdFunc var_88
  loc_C54A30: FLdPr var_88
  loc_C54A33: LateIdLdVar var_98 DispID_10 0
  loc_C54A3A: CI4Var
  loc_C54A3C: CVarI4
  loc_C54A40: PopAdLdVar
  loc_C54A41: FLdPr Me
  loc_C54A44: MemLdI2 global_98
  loc_C54A47: CI4UI1
  loc_C54A48: CVarI4
  loc_C54A4C: PopAdLdVar
  loc_C54A4D: FLdPr Me
  loc_C54A50: VCallAd Control_ID_ctacteFlex
  loc_C54A53: FStAdFunc var_10C
  loc_C54A56: FLdPr var_10C
  loc_C54A59: LateIdCallLdVar
  loc_C54A63: PopAd
  loc_C54A65: LitI4 2
  loc_C54A6A: FLdPr Me
  loc_C54A6D: MemLdFPR8 global_108
  loc_C54A70: FLdRfVar var_11C
  loc_C54A73: CStrVarTmp
  loc_C54A74: FStStrNoPop var_E0
  loc_C54A77: CR8Str
  loc_C54A79: SubR4
  loc_C54A7A: CVarR8
  loc_C54A7E: FLdRfVar var_164
  loc_C54A81: ImpAdCallFPR4  = Round(, )
  loc_C54A86: FLdRfVar var_164
  loc_C54A89: CR4Var
  loc_C54A8A: FLdPr Me
  loc_C54A8D: MemStFPR8 global_108
  loc_C54A90: FFree1Str var_E0
  loc_C54A93: FFreeAd var_88 = ""
  loc_C54A9A: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54AA5: FLdPr Me
  loc_C54AA8: MemLdI2 global_98
  loc_C54AAB: LitI2_Byte &HC
  loc_C54AAD: EqI2
  loc_C54AAE: BranchF loc_C54B87
  loc_C54AB1: FLdPr Me
  loc_C54AB4: VCallAd Control_ID_ctacteFlex
  loc_C54AB7: FStAdFunc var_88
  loc_C54ABA: FLdPr var_88
  loc_C54ABD: LateIdLdVar var_98 DispID_10 0
  loc_C54AC4: CI4Var
  loc_C54AC6: CVarI4
  loc_C54ACA: PopAdLdVar
  loc_C54ACB: FLdPr Me
  loc_C54ACE: MemLdI2 global_98
  loc_C54AD1: CI4UI1
  loc_C54AD2: CVarI4
  loc_C54AD6: PopAdLdVar
  loc_C54AD7: FLdPr Me
  loc_C54ADA: VCallAd Control_ID_ctacteFlex
  loc_C54ADD: FStAdFunc var_10C
  loc_C54AE0: FLdPr var_10C
  loc_C54AE3: LateIdCallLdVar
  loc_C54AED: CStrVarTmp
  loc_C54AEE: CVarStr var_130
  loc_C54AF1: ImpAdCallI2 IsNumeric()
  loc_C54AF6: FFreeAd var_88 = ""
  loc_C54AFD: FFreeVar var_98 = "": var_11C = ""
  loc_C54B06: BranchF loc_C54B87
  loc_C54B09: FLdPr Me
  loc_C54B0C: VCallAd Control_ID_ctacteFlex
  loc_C54B0F: FStAdFunc var_88
  loc_C54B12: FLdPr var_88
  loc_C54B15: LateIdLdVar var_98 DispID_10 0
  loc_C54B1C: CI4Var
  loc_C54B1E: CVarI4
  loc_C54B22: PopAdLdVar
  loc_C54B23: FLdPr Me
  loc_C54B26: MemLdI2 global_98
  loc_C54B29: CI4UI1
  loc_C54B2A: CVarI4
  loc_C54B2E: PopAdLdVar
  loc_C54B2F: FLdPr Me
  loc_C54B32: VCallAd Control_ID_ctacteFlex
  loc_C54B35: FStAdFunc var_10C
  loc_C54B38: FLdPr var_10C
  loc_C54B3B: LateIdCallLdVar
  loc_C54B45: PopAd
  loc_C54B47: LitI4 2
  loc_C54B4C: FLdPr Me
  loc_C54B4F: MemLdFPR8 global_116
  loc_C54B52: FLdRfVar var_11C
  loc_C54B55: CStrVarTmp
  loc_C54B56: FStStrNoPop var_E0
  loc_C54B59: CR8Str
  loc_C54B5B: SubR4
  loc_C54B5C: CVarR8
  loc_C54B60: FLdRfVar var_164
  loc_C54B63: ImpAdCallFPR4  = Round(, )
  loc_C54B68: FLdRfVar var_164
  loc_C54B6B: CR4Var
  loc_C54B6C: FLdPr Me
  loc_C54B6F: MemStFPR8 global_116
  loc_C54B72: FFree1Str var_E0
  loc_C54B75: FFreeAd var_88 = ""
  loc_C54B7C: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54B87: FLdPr Me
  loc_C54B8A: MemLdI2 global_98
  loc_C54B8D: LitI2_Byte &HD
  loc_C54B8F: EqI2
  loc_C54B90: BranchF loc_C54B9C
  loc_C54B93: LitI2_Byte 0
  loc_C54B95: CR8I2
  loc_C54B96: FLdPr Me
  loc_C54B99: MemStFPR8 global_100
  loc_C54B9C: Branch loc_C55066
  loc_C54B9F: LitVarI4
  loc_C54BA7: PopAdLdVar
  loc_C54BA8: FLdPr Me
  loc_C54BAB: VCallAd Control_ID_ctacteFlex
  loc_C54BAE: FStAdFunc var_88
  loc_C54BB1: FLdPr var_88
  loc_C54BB4: LateIdSt
  loc_C54BB9: FFree1Ad var_88
  loc_C54BBC: FLdPr Me
  loc_C54BBF: VCallAd Control_ID_ctacteFlex
  loc_C54BC2: FStAdFunc var_88
  loc_C54BC5: FLdPr var_88
  loc_C54BC8: LateIdLdVar var_98 DispID_10 0
  loc_C54BCF: CI4Var
  loc_C54BD1: CVarI4
  loc_C54BD5: PopAdLdVar
  loc_C54BD6: LitVarI4
  loc_C54BDE: PopAdLdVar
  loc_C54BDF: LitVarStr var_F8, "Si"
  loc_C54BE4: PopAdLdVar
  loc_C54BE5: FLdPr Me
  loc_C54BE8: VCallAd Control_ID_ctacteFlex
  loc_C54BEB: FStAdFunc var_10C
  loc_C54BEE: FLdPr var_10C
  loc_C54BF1: LateIdCallSt
  loc_C54BF9: FFreeAd var_88 = ""
  loc_C54C00: FFree1Var var_98 = ""
  loc_C54C03: FLdPr Me
  loc_C54C06: MemLdI2 global_98
  loc_C54C09: LitI2_Byte 0
  loc_C54C0B: EqI2
  loc_C54C0C: BranchF loc_C54E89
  loc_C54C0F: FLdPr Me
  loc_C54C12: VCallAd Control_ID_ctacteFlex
  loc_C54C15: FStAdFunc var_88
  loc_C54C18: FLdPr var_88
  loc_C54C1B: LateIdLdVar var_98 DispID_10 0
  loc_C54C22: CI4Var
  loc_C54C24: CVarI4
  loc_C54C28: PopAdLdVar
  loc_C54C29: LitVarI4
  loc_C54C31: PopAdLdVar
  loc_C54C32: FLdPr Me
  loc_C54C35: VCallAd Control_ID_ctacteFlex
  loc_C54C38: FStAdFunc var_10C
  loc_C54C3B: FLdPr var_10C
  loc_C54C3E: LateIdCallLdVar
  loc_C54C48: PopAd
  loc_C54C4A: FLdPr Me
  loc_C54C4D: VCallAd Control_ID_ctacteFlex
  loc_C54C50: FStAdFunc var_120
  loc_C54C53: FLdPr var_120
  loc_C54C56: LateIdLdVar var_130 DispID_10 0
  loc_C54C5D: CI4Var
  loc_C54C5F: CVarI4
  loc_C54C63: PopAdLdVar
  loc_C54C64: LitVarI4
  loc_C54C6C: PopAdLdVar
  loc_C54C6D: FLdPr Me
  loc_C54C70: VCallAd Control_ID_ctacteFlex
  loc_C54C73: FStAdFunc var_154
  loc_C54C76: FLdPr var_154
  loc_C54C79: LateIdCallLdVar
  loc_C54C83: PopAd
  loc_C54C85: FLdPr Me
  loc_C54C88: VCallAd Control_ID_ctacteFlex
  loc_C54C8B: FStAdFunc var_168
  loc_C54C8E: FLdPr var_168
  loc_C54C91: LateIdLdVar var_178 DispID_10 0
  loc_C54C98: CI4Var
  loc_C54C9A: CVarI4
  loc_C54C9E: PopAdLdVar
  loc_C54C9F: LitVarI4
  loc_C54CA7: PopAdLdVar
  loc_C54CA8: FLdPr Me
  loc_C54CAB: VCallAd Control_ID_ctacteFlex
  loc_C54CAE: FStAdFunc var_1BC
  loc_C54CB1: FLdPr var_1BC
  loc_C54CB4: LateIdCallLdVar
  loc_C54CBE: CStrVarTmp
  loc_C54CBF: CVarStr var_1DC
  loc_C54CC2: FLdRfVar var_1EC
  loc_C54CC5: ImpAdCallFPR4  = Trim()
  loc_C54CCA: LitI4 4
  loc_C54CCF: FLdRfVar var_1EC
  loc_C54CD2: FLdRfVar var_1FC
  loc_C54CD5: ImpAdCallFPR4  = Right(, )
  loc_C54CDA: FLdPr Me
  loc_C54CDD: VCallAd Control_ID_ctacteFlex
  loc_C54CE0: FStAdFunc var_200
  loc_C54CE3: FLdPr var_200
  loc_C54CE6: LateIdLdVar var_210 DispID_10 0
  loc_C54CED: CI4Var
  loc_C54CEF: CVarI4
  loc_C54CF3: PopAdLdVar
  loc_C54CF4: LitVarI4
  loc_C54CFC: PopAdLdVar
  loc_C54CFD: FLdPr Me
  loc_C54D00: VCallAd Control_ID_ctacteFlex
  loc_C54D03: FStAdFunc var_254
  loc_C54D06: FLdPr var_254
  loc_C54D09: LateIdCallLdVar
  loc_C54D13: PopAd
  loc_C54D15: LitI4 1
  loc_C54D1A: FLdPr Me
  loc_C54D1D: VCallAd Control_ID_ctacteFlex
  loc_C54D20: FStAdFunc var_268
  loc_C54D23: FLdPr var_268
  loc_C54D26: LateIdLdVar var_278 DispID_10 0
  loc_C54D2D: CI4Var
  loc_C54D2F: CVarI4
  loc_C54D33: PopAdLdVar
  loc_C54D34: LitVarI4
  loc_C54D3C: PopAdLdVar
  loc_C54D3D: FLdPr Me
  loc_C54D40: VCallAd Control_ID_ctacteFlex
  loc_C54D43: FStAdFunc var_2BC
  loc_C54D46: FLdPr var_2BC
  loc_C54D49: LateIdCallLdVar
  loc_C54D53: CStrVarTmp
  loc_C54D54: FStStrNoPop var_E0
  loc_C54D57: LitStr "/"
  loc_C54D5A: LitI4 0
  loc_C54D5F: FnInStr4
  loc_C54D61: LitI4 1
  loc_C54D66: SubI4
  loc_C54D67: CVarI4
  loc_C54D6B: LitI4 1
  loc_C54D70: FLdRfVar var_264
  loc_C54D73: CStrVarTmp
  loc_C54D74: CVarStr var_2DC
  loc_C54D77: FLdRfVar var_30C
  loc_C54D7A: ImpAdCallFPR4  = Mid(, , )
  loc_C54D7F: FLdPr Me
  loc_C54D82: VCallAd Control_ID_ctacteFlex
  loc_C54D85: FStAdFunc var_310
  loc_C54D88: FLdPr var_310
  loc_C54D8B: LateIdLdVar var_320 DispID_10 0
  loc_C54D92: CI4Var
  loc_C54D94: CVarI4
  loc_C54D98: PopAdLdVar
  loc_C54D99: LitVarI4
  loc_C54DA1: PopAdLdVar
  loc_C54DA2: FLdPr Me
  loc_C54DA5: VCallAd Control_ID_ctacteFlex
  loc_C54DA8: FStAdFunc var_364
  loc_C54DAB: FLdPr var_364
  loc_C54DAE: LateIdCallLdVar
  loc_C54DB8: PopAd
  loc_C54DBA: FLdPr Me
  loc_C54DBD: VCallAd Control_ID_ctacteFlex
  loc_C54DC0: FStAdFunc var_378
  loc_C54DC3: FLdPr var_378
  loc_C54DC6: LateIdLdVar var_388 DispID_10 0
  loc_C54DCD: CI4Var
  loc_C54DCF: CVarI4
  loc_C54DD3: PopAdLdVar
  loc_C54DD4: LitVarI4
  loc_C54DDC: PopAdLdVar
  loc_C54DDD: FLdPr Me
  loc_C54DE0: VCallAd Control_ID_ctacteFlex
  loc_C54DE3: FStAdFunc var_3CC
  loc_C54DE6: FLdPr var_3CC
  loc_C54DE9: LateIdCallLdVar
  loc_C54DF3: PopAd
  loc_C54DF5: LitStr "tmp_ctacteboleto"
  loc_C54DF8: LitStr "Si"
  loc_C54DFB: FLdRfVar var_3DC
  loc_C54DFE: CStrVarTmp
  loc_C54DFF: FStStrNoPop var_3EC
  loc_C54E02: CI2Str
  loc_C54E04: FLdRfVar var_374
  loc_C54E07: CStrVarTmp
  loc_C54E08: FStStrNoPop var_3E8
  loc_C54E0B: CI4Str
  loc_C54E0C: FLdRfVar var_30C
  loc_C54E0F: CI2Var
  loc_C54E10: FLdRfVar var_1FC
  loc_C54E13: CI2Var
  loc_C54E14: FLdRfVar var_164
  loc_C54E17: CStrVarTmp
  loc_C54E18: FStStrNoPop var_3E4
  loc_C54E1B: FLdRfVar var_11C
  loc_C54E1E: CStrVarTmp
  loc_C54E1F: FStStrNoPop var_3E0
  loc_C54E22: CUI1Str
  loc_C54E24: FLdPr Me
  loc_C54E27: MemLdRfVar from_stack_1.global_68
  loc_C54E2A: NewIfNullPr clsctacte
  loc_C54E2D: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C54E32: FFreeStr var_E0 = "": var_3E0 = "": var_3E4 = "": var_3E8 = ""
  loc_C54E3F: FFreeAd var_88 = "": var_10C = "": var_120 = "": var_154 = "": var_168 = "": var_1BC = "": var_200 = "": var_254 = "": var_268 = "": var_2BC = "": var_310 = "": var_364 = "": var_378 = ""
  loc_C54E5E: FFreeVar var_98 = "": var_11C = "": var_130 = "": var_164 = "": var_178 = "": var_1CC = "": var_1DC = "": var_1EC = "": var_210 = "": var_264 = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_320 = "": var_374 = "": var_388 = "": var_3DC = "": var_1FC = ""
  loc_C54E89: FLdPr Me
  loc_C54E8C: MemLdI2 global_98
  loc_C54E8F: LitI2_Byte &HB
  loc_C54E91: EqI2
  loc_C54E92: BranchF loc_C54F13
  loc_C54E95: FLdPr Me
  loc_C54E98: VCallAd Control_ID_ctacteFlex
  loc_C54E9B: FStAdFunc var_88
  loc_C54E9E: FLdPr var_88
  loc_C54EA1: LateIdLdVar var_98 DispID_10 0
  loc_C54EA8: CI4Var
  loc_C54EAA: CVarI4
  loc_C54EAE: PopAdLdVar
  loc_C54EAF: FLdPr Me
  loc_C54EB2: MemLdI2 global_98
  loc_C54EB5: CI4UI1
  loc_C54EB6: CVarI4
  loc_C54EBA: PopAdLdVar
  loc_C54EBB: FLdPr Me
  loc_C54EBE: VCallAd Control_ID_ctacteFlex
  loc_C54EC1: FStAdFunc var_10C
  loc_C54EC4: FLdPr var_10C
  loc_C54EC7: LateIdCallLdVar
  loc_C54ED1: PopAd
  loc_C54ED3: LitI4 2
  loc_C54ED8: FLdPr Me
  loc_C54EDB: MemLdFPR8 global_108
  loc_C54EDE: FLdRfVar var_11C
  loc_C54EE1: CStrVarTmp
  loc_C54EE2: FStStrNoPop var_E0
  loc_C54EE5: CR8Str
  loc_C54EE7: AddR8
  loc_C54EE8: CVarR8
  loc_C54EEC: FLdRfVar var_164
  loc_C54EEF: ImpAdCallFPR4  = Round(, )
  loc_C54EF4: FLdRfVar var_164
  loc_C54EF7: CR4Var
  loc_C54EF8: FLdPr Me
  loc_C54EFB: MemStFPR8 global_108
  loc_C54EFE: FFree1Str var_E0
  loc_C54F01: FFreeAd var_88 = ""
  loc_C54F08: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54F13: FLdPr Me
  loc_C54F16: MemLdI2 global_98
  loc_C54F19: LitI2_Byte &HC
  loc_C54F1B: EqI2
  loc_C54F1C: BranchF loc_C54FF5
  loc_C54F1F: FLdPr Me
  loc_C54F22: VCallAd Control_ID_ctacteFlex
  loc_C54F25: FStAdFunc var_88
  loc_C54F28: FLdPr var_88
  loc_C54F2B: LateIdLdVar var_98 DispID_10 0
  loc_C54F32: CI4Var
  loc_C54F34: CVarI4
  loc_C54F38: PopAdLdVar
  loc_C54F39: FLdPr Me
  loc_C54F3C: MemLdI2 global_98
  loc_C54F3F: CI4UI1
  loc_C54F40: CVarI4
  loc_C54F44: PopAdLdVar
  loc_C54F45: FLdPr Me
  loc_C54F48: VCallAd Control_ID_ctacteFlex
  loc_C54F4B: FStAdFunc var_10C
  loc_C54F4E: FLdPr var_10C
  loc_C54F51: LateIdCallLdVar
  loc_C54F5B: CStrVarTmp
  loc_C54F5C: CVarStr var_130
  loc_C54F5F: ImpAdCallI2 IsNumeric()
  loc_C54F64: FFreeAd var_88 = ""
  loc_C54F6B: FFreeVar var_98 = "": var_11C = ""
  loc_C54F74: BranchF loc_C54FF5
  loc_C54F77: FLdPr Me
  loc_C54F7A: VCallAd Control_ID_ctacteFlex
  loc_C54F7D: FStAdFunc var_88
  loc_C54F80: FLdPr var_88
  loc_C54F83: LateIdLdVar var_98 DispID_10 0
  loc_C54F8A: CI4Var
  loc_C54F8C: CVarI4
  loc_C54F90: PopAdLdVar
  loc_C54F91: FLdPr Me
  loc_C54F94: MemLdI2 global_98
  loc_C54F97: CI4UI1
  loc_C54F98: CVarI4
  loc_C54F9C: PopAdLdVar
  loc_C54F9D: FLdPr Me
  loc_C54FA0: VCallAd Control_ID_ctacteFlex
  loc_C54FA3: FStAdFunc var_10C
  loc_C54FA6: FLdPr var_10C
  loc_C54FA9: LateIdCallLdVar
  loc_C54FB3: PopAd
  loc_C54FB5: LitI4 2
  loc_C54FBA: FLdPr Me
  loc_C54FBD: MemLdFPR8 global_116
  loc_C54FC0: FLdRfVar var_11C
  loc_C54FC3: CStrVarTmp
  loc_C54FC4: FStStrNoPop var_E0
  loc_C54FC7: CR8Str
  loc_C54FC9: AddR8
  loc_C54FCA: CVarR8
  loc_C54FCE: FLdRfVar var_164
  loc_C54FD1: ImpAdCallFPR4  = Round(, )
  loc_C54FD6: FLdRfVar var_164
  loc_C54FD9: CR4Var
  loc_C54FDA: FLdPr Me
  loc_C54FDD: MemStFPR8 global_116
  loc_C54FE0: FFree1Str var_E0
  loc_C54FE3: FFreeAd var_88 = ""
  loc_C54FEA: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54FF5: FLdPr Me
  loc_C54FF8: MemLdI2 global_98
  loc_C54FFB: LitI2_Byte &HD
  loc_C54FFD: EqI2
  loc_C54FFE: BranchF loc_C55066
  loc_C55001: FLdPr Me
  loc_C55004: VCallAd Control_ID_ctacteFlex
  loc_C55007: FStAdFunc var_88
  loc_C5500A: FLdPr var_88
  loc_C5500D: LateIdLdVar var_98 DispID_10 0
  loc_C55014: CI4Var
  loc_C55016: CVarI4
  loc_C5501A: PopAdLdVar
  loc_C5501B: FLdPr Me
  loc_C5501E: MemLdI2 global_98
  loc_C55021: CI4UI1
  loc_C55022: CVarI4
  loc_C55026: PopAdLdVar
  loc_C55027: FLdPr Me
  loc_C5502A: VCallAd Control_ID_ctacteFlex
  loc_C5502D: FStAdFunc var_10C
  loc_C55030: FLdPr var_10C
  loc_C55033: LateIdCallLdVar
  loc_C5503D: PopAd
  loc_C5503F: FLdPr Me
  loc_C55042: MemLdFPR8 global_100
  loc_C55045: FLdRfVar var_11C
  loc_C55048: CStrVarTmp
  loc_C55049: FStStrNoPop var_E0
  loc_C5504C: CR8Str
  loc_C5504E: AddR8
  loc_C5504F: FLdPr Me
  loc_C55052: MemStFPR8 global_100
  loc_C55055: FFree1Str var_E0
  loc_C55058: FFreeAd var_88 = ""
  loc_C5505F: FFreeVar var_98 = ""
  loc_C55066: FLdPr Me
  loc_C55069: MemLdRfVar from_stack_1.global_98
  loc_C5506C: NextI2 var_E4, loc_C546F1
  loc_C55071: FLdPr Me
  loc_C55074: MemLdRfVar from_stack_1.global_96
  loc_C55077: NextI2 var_9C, loc_C5465F
  loc_C5507C: FLdRfVar var_E6
  loc_C5507F: FLdPr Me
  loc_C55082: VCallAd Control_ID_SeleTodoChk
  loc_C55085: FStAdFunc var_88
  loc_C55088: FLdPr var_88
  loc_C5508B:  = Me.Value
  loc_C55090: FLdI2 var_E6
  loc_C55093: LitI2_Byte 0
  loc_C55095: EqI2
  loc_C55096: FFree1Ad var_88
  loc_C55099: BranchF loc_C550B7
  loc_C5509C: LitI2_Byte 0
  loc_C5509E: CR8I2
  loc_C5509F: FLdPr Me
  loc_C550A2: MemStFPR8 global_116
  loc_C550A5: LitI2_Byte 0
  loc_C550A7: CR8I2
  loc_C550A8: FLdPr Me
  loc_C550AB: MemStFPR8 global_108
  loc_C550AE: LitI2_Byte 0
  loc_C550B0: CR8I2
  loc_C550B1: FLdPr Me
  loc_C550B4: MemStFPR8 global_124
  loc_C550B7: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_C550BA: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C550BD: ConcatStr
  loc_C550BE: FStStrNoPop var_E0
  loc_C550C1: FLdPr Me
  loc_C550C4: MemLdRfVar from_stack_1.global_68
  loc_C550C7: NewIfNullPr clsctacte
  loc_C550CA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C550CF: FFree1Str var_E0
  loc_C550D2: FLdRfVar var_3F0
  loc_C550D5: FLdPr Me
  loc_C550D8: MemLdRfVar from_stack_1.global_68
  loc_C550DB: NewIfNullPr clsctacte
  loc_C550DE: from_stack_1 = clsctacte.RecordCount
  loc_C550E3: ILdRf var_3F0
  loc_C550E6: LitI4 0
  loc_C550EB: GtI4
  loc_C550EC: BranchF loc_C55175
  loc_C550EF: FLdRfVar var_E6
  loc_C550F2: FLdPr Me
  loc_C550F5: MemLdRfVar from_stack_1.global_68
  loc_C550F8: NewIfNullPr clsctacte
  loc_C550FB: from_stack_1 = clsctacte.EOF
  loc_C55100: FLdI2 var_E6
  loc_C55103: NotI4
  loc_C55104: BranchF loc_C55175
  loc_C55107: FLdRfVar var_3F0
  loc_C5510A: FLdPr Me
  loc_C5510D: MemLdRfVar from_stack_1.global_68
  loc_C55110: NewIfNullPr clsctacte
  loc_C55113: from_stack_1 = clsctacte.NumeApre
  loc_C55118: FLdRfVar var_3F8
  loc_C5511B: FLdPr Me
  loc_C5511E: MemLdRfVar from_stack_1.global_68
  loc_C55121: NewIfNullPr clsctacte
  loc_C55124: from_stack_1 = clsctacte.SaldCtct
  loc_C55129: FLdRfVar var_400
  loc_C5512C: FLdPr Me
  loc_C5512F: MemLdRfVar from_stack_1.global_68
  loc_C55132: NewIfNullPr clsctacte
  loc_C55135: from_stack_1 = clsctacte.RecaCtct
  loc_C5513A: FLdRfVar var_408
  loc_C5513D: FLdR8 var_400
  loc_C55140: FLdR8 var_3F8
  loc_C55143: ILdRf var_3F0
  loc_C55146: FLdPr Me
  loc_C55149: MemLdRfVar from_stack_1.global_80
  loc_C5514C: NewIfNullPr clsapremio
  loc_C5514F: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C55154: FLdPr Me
  loc_C55157: MemLdFPR8 global_124
  loc_C5515A: FLdFPR8 var_408
  loc_C5515D: AddR8
  loc_C5515E: FLdPr Me
  loc_C55161: MemStFPR8 global_124
  loc_C55164: FLdPr Me
  loc_C55167: MemLdRfVar from_stack_1.global_68
  loc_C5516A: NewIfNullPr clsctacte
  loc_C5516D: Call clsctacte.MoveSiguiente()
  loc_C55172: Branch loc_C550EF
  loc_C55175: FLdPr Me
  loc_C55178: MemLdFPR8 global_100
  loc_C5517B: FLdPr Me
  loc_C5517E: MemLdFPR8 global_124
  loc_C55181: AddR8
  loc_C55182: FLdPr Me
  loc_C55185: MemStFPR8 global_100
  loc_C55188: LitI4 1
  loc_C5518D: LitI4 1
  loc_C55192: LitVarStr var_BC, "###,###,##0.00"
  loc_C55197: FStVarCopyObj var_98
  loc_C5519A: FLdRfVar var_98
  loc_C5519D: FLdPr Me
  loc_C551A0: MemLdRfVar from_stack_1.global_100
  loc_C551A3: CVarRef
  loc_C551A8: FLdRfVar var_11C
  loc_C551AB: ImpAdCallFPR4  = Format(, )
  loc_C551B0: FLdRfVar var_11C
  loc_C551B3: CStrVarVal var_E0
  loc_C551B7: FLdPr Me
  loc_C551BA: VCallAd Control_ID_txtTotaSele
  loc_C551BD: FStAdFunc var_88
  loc_C551C0: FLdPr var_88
  loc_C551C3: Me.Text = from_stack_1
  loc_C551C8: FFree1Str var_E0
  loc_C551CB: FFree1Ad var_88
  loc_C551CE: FFreeVar var_98 = ""
  loc_C551D5: LitI4 1
  loc_C551DA: LitI4 1
  loc_C551DF: LitVarStr var_BC, "###,###,##0.00"
  loc_C551E4: FStVarCopyObj var_98
  loc_C551E7: FLdRfVar var_98
  loc_C551EA: FLdPr Me
  loc_C551ED: MemLdRfVar from_stack_1.global_108
  loc_C551F0: CVarRef
  loc_C551F5: FLdRfVar var_11C
  loc_C551F8: ImpAdCallFPR4  = Format(, )
  loc_C551FD: FLdRfVar var_11C
  loc_C55200: CStrVarVal var_E0
  loc_C55204: FLdPr Me
  loc_C55207: VCallAd Control_ID_DerechoTxt
  loc_C5520A: FStAdFunc var_88
  loc_C5520D: FLdPr var_88
  loc_C55210: Me.Text = from_stack_1
  loc_C55215: FFree1Str var_E0
  loc_C55218: FFree1Ad var_88
  loc_C5521B: FFreeVar var_98 = ""
  loc_C55222: LitI4 1
  loc_C55227: LitI4 1
  loc_C5522C: LitVarStr var_BC, "###,###,##0.00"
  loc_C55231: FStVarCopyObj var_98
  loc_C55234: FLdRfVar var_98
  loc_C55237: FLdPr Me
  loc_C5523A: MemLdRfVar from_stack_1.global_116
  loc_C5523D: CVarRef
  loc_C55242: FLdRfVar var_11C
  loc_C55245: ImpAdCallFPR4  = Format(, )
  loc_C5524A: FLdRfVar var_11C
  loc_C5524D: CStrVarVal var_E0
  loc_C55251: FLdPr Me
  loc_C55254: VCallAd Control_ID_RecargoTxt
  loc_C55257: FStAdFunc var_88
  loc_C5525A: FLdPr var_88
  loc_C5525D: Me.Text = from_stack_1
  loc_C55262: FFree1Str var_E0
  loc_C55265: FFree1Ad var_88
  loc_C55268: FFreeVar var_98 = ""
  loc_C5526F: LitI4 1
  loc_C55274: LitI4 1
  loc_C55279: LitVarStr var_BC, "###,###,##0.00"
  loc_C5527E: FStVarCopyObj var_98
  loc_C55281: FLdRfVar var_98
  loc_C55284: FLdPr Me
  loc_C55287: MemLdRfVar from_stack_1.global_124
  loc_C5528A: CVarRef
  loc_C5528F: FLdRfVar var_11C
  loc_C55292: ImpAdCallFPR4  = Format(, )
  loc_C55297: FLdRfVar var_11C
  loc_C5529A: CStrVarVal var_E0
  loc_C5529E: FLdPr Me
  loc_C552A1: VCallAd Control_ID_ApremioTxt
  loc_C552A4: FStAdFunc var_88
  loc_C552A7: FLdPr var_88
  loc_C552AA: Me.Text = from_stack_1
  loc_C552AF: FFree1Str var_E0
  loc_C552B2: FFree1Ad var_88
  loc_C552B5: FFreeVar var_98 = ""
  loc_C552BC: LitI4 1
  loc_C552C1: LitI4 1
  loc_C552C6: LitVarStr var_BC, "###,###,##0.00"
  loc_C552CB: FStVarCopyObj var_11C
  loc_C552CE: FLdRfVar var_11C
  loc_C552D1: LitVarStr var_AC, "0"
  loc_C552D6: FStVarCopyObj var_98
  loc_C552D9: FLdRfVar var_98
  loc_C552DC: FLdRfVar var_130
  loc_C552DF: ImpAdCallFPR4  = Format(, )
  loc_C552E4: FLdRfVar var_130
  loc_C552E7: CStrVarVal var_E0
  loc_C552EB: FLdPr Me
  loc_C552EE: VCallAd Control_ID_DescCapiTxt
  loc_C552F1: FStAdFunc var_88
  loc_C552F4: FLdPr var_88
  loc_C552F7: Me.Text = from_stack_1
  loc_C552FC: FFree1Str var_E0
  loc_C552FF: FFree1Ad var_88
  loc_C55302: FFreeVar var_98 = "": var_11C = ""
  loc_C5530B: LitI4 1
  loc_C55310: LitI4 1
  loc_C55315: LitVarStr var_BC, "###,###,##0.00"
  loc_C5531A: FStVarCopyObj var_11C
  loc_C5531D: FLdRfVar var_11C
  loc_C55320: LitVarStr var_AC, "0"
  loc_C55325: FStVarCopyObj var_98
  loc_C55328: FLdRfVar var_98
  loc_C5532B: FLdRfVar var_130
  loc_C5532E: ImpAdCallFPR4  = Format(, )
  loc_C55333: FLdRfVar var_130
  loc_C55336: CStrVarVal var_E0
  loc_C5533A: FLdPr Me
  loc_C5533D: VCallAd Control_ID_DescRecaTxt
  loc_C55340: FStAdFunc var_88
  loc_C55343: FLdPr var_88
  loc_C55346: Me.Text = from_stack_1
  loc_C5534B: FFree1Str var_E0
  loc_C5534E: FFree1Ad var_88
  loc_C55351: FFreeVar var_98 = "": var_11C = ""
  loc_C5535A: LitI4 1
  loc_C5535F: LitI4 1
  loc_C55364: LitVarStr var_BC, "###,###,##0.00"
  loc_C55369: FStVarCopyObj var_11C
  loc_C5536C: FLdRfVar var_11C
  loc_C5536F: LitVarStr var_AC, "0"
  loc_C55374: FStVarCopyObj var_98
  loc_C55377: FLdRfVar var_98
  loc_C5537A: FLdRfVar var_130
  loc_C5537D: ImpAdCallFPR4  = Format(, )
  loc_C55382: FLdRfVar var_130
  loc_C55385: CStrVarVal var_E0
  loc_C55389: FLdPr Me
  loc_C5538C: VCallAd Control_ID_InteresTxt
  loc_C5538F: FStAdFunc var_88
  loc_C55392: FLdPr var_88
  loc_C55395: Me.Text = from_stack_1
  loc_C5539A: FFree1Str var_E0
  loc_C5539D: FFree1Ad var_88
  loc_C553A0: FFreeVar var_98 = "": var_11C = ""
  loc_C553A9: LitI4 2
  loc_C553AE: FLdPr Me
  loc_C553B1: MemLdFPR8 global_108
  loc_C553B4: FLdPr Me
  loc_C553B7: MemLdFPR8 global_116
  loc_C553BA: AddR8
  loc_C553BB: FLdPr Me
  loc_C553BE: MemLdFPR8 global_124
  loc_C553C1: AddR8
  loc_C553C2: FLdPr Me
  loc_C553C5: MemLdFPR8 global_132
  loc_C553C8: SubR4
  loc_C553C9: CVarR8
  loc_C553CD: FLdRfVar var_11C
  loc_C553D0: ImpAdCallFPR4  = Round(, )
  loc_C553D5: LitI4 1
  loc_C553DA: LitI4 1
  loc_C553DF: LitVarStr var_BC, "###,###,##0.00"
  loc_C553E4: FStVarCopyObj var_130
  loc_C553E7: FLdRfVar var_130
  loc_C553EA: FLdRfVar var_11C
  loc_C553ED: FLdRfVar var_164
  loc_C553F0: ImpAdCallFPR4  = Format(, )
  loc_C553F5: FLdRfVar var_164
  loc_C553F8: CStrVarVal var_E0
  loc_C553FC: FLdPr Me
  loc_C553FF: VCallAd Control_ID_TotalTxt
  loc_C55402: FStAdFunc var_88
  loc_C55405: FLdPr var_88
  loc_C55408: Me.Text = from_stack_1
  loc_C5540D: FFree1Str var_E0
  loc_C55410: FFree1Ad var_88
  loc_C55413: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C5541E: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_GotFocus() '9C4148
  'Data Table: 52F1AC
  loc_9C4134: FLdPr Me
  loc_9C4137: VCallAd Control_ID_CodiInmuTxt
  loc_9C413A: CVarAd
  loc_9C413E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4143: FFree1Var var_94 = ""
  loc_9C4146: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_KeyPress(KeyAscii As Integer) '9DC340
  'Data Table: 52F1AC
  loc_9DC328: LitStr "0123456789"
  loc_9DC32B: FStStrCopy var_88
  loc_9DC32E: FLdRfVar var_88
  loc_9DC331: ILdRf KeyAscii
  loc_9DC334: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DC339: IStI2 KeyAscii
  loc_9DC33C: FFree1Str var_88
  loc_9DC33F: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_Validate(Cancel As Boolean) 'A93F80
  'Data Table: 52F1AC
  loc_A93EE0: FLdRfVar var_8A
  loc_A93EE3: FLdPr Me
  loc_A93EE6: VCallAd Control_ID_CodiInmuTxt
  loc_A93EE9: FStAdFunc var_88
  loc_A93EEC: FLdPr var_88
  loc_A93EEF:  = Me.Enabled
  loc_A93EF4: FLdI2 var_8A
  loc_A93EF7: LitI2_Byte &HFF
  loc_A93EF9: EqI2
  loc_A93EFA: FFree1Ad var_88
  loc_A93EFD: BranchF loc_A93F7E
  loc_A93F00: FLdRfVar var_90
  loc_A93F03: FLdPr Me
  loc_A93F06: VCallAd Control_ID_OrdeObreTxt
  loc_A93F09: FStAdFunc var_88
  loc_A93F0C: FLdPr var_88
  loc_A93F0F:  = Me.Text
  loc_A93F14: FLdRfVar var_98
  loc_A93F17: FLdPr Me
  loc_A93F1A: VCallAd Control_ID_CodiInmuTxt
  loc_A93F1D: FStAdFunc var_94
  loc_A93F20: FLdPr var_94
  loc_A93F23:  = Me.Text
  loc_A93F28: ILdRf var_98
  loc_A93F2B: ILdRf var_90
  loc_A93F2E: ImpAdCallI2 Proc_18_55_A7B240(, )
  loc_A93F33: FStStrNoPop var_9C
  loc_A93F36: FLdPr Me
  loc_A93F39: MemStStrCopy
  loc_A93F3D: FFreeStr var_90 = "": var_98 = ""
  loc_A93F46: FFreeAd var_88 = ""
  loc_A93F4D: FLdPr Me
  loc_A93F50: MemLdStr global_368
  loc_A93F53: LitStr vbNullString
  loc_A93F56: NeStr
  loc_A93F58: BranchF loc_A93F7E
  loc_A93F5B: FLdPr Me
  loc_A93F5E: MemLdStr global_368
  loc_A93F61: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A93F66: FLdPr Me
  loc_A93F69: VCallAd Control_ID_CodiInmuTxt
  loc_A93F6C: CVarAd
  loc_A93F70: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A93F75: FFree1Var var_AC = ""
  loc_A93F78: LitI2_Byte &HFF
  loc_A93F7A: IStI2 Cancel
  loc_A93F7D: ExitProcHresult
  loc_A93F7E: ExitProcHresult
End Sub

Private Sub OrdeObreTxt_GotFocus() '9C3D58
  'Data Table: 52F1AC
  loc_9C3D44: FLdPr Me
  loc_9C3D47: VCallAd Control_ID_OrdeObreTxt
  loc_9C3D4A: CVarAd
  loc_9C3D4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3D53: FFree1Var var_94 = ""
  loc_9C3D56: ExitProcHresult
  loc_9C3D57: CStr2Ansi
End Sub

Private Sub OrdeObreTxt_Validate(Cancel As Boolean) 'A8F544
  'Data Table: 52F1AC
  loc_A8F4A4: FLdRfVar var_8A
  loc_A8F4A7: FLdPr Me
  loc_A8F4AA: VCallAd Control_ID_OrdeObreTxt
  loc_A8F4AD: FStAdFunc var_88
  loc_A8F4B0: FLdPr var_88
  loc_A8F4B3:  = Me.Enabled
  loc_A8F4B8: FLdI2 var_8A
  loc_A8F4BB: LitI2_Byte &HFF
  loc_A8F4BD: EqI2
  loc_A8F4BE: FFree1Ad var_88
  loc_A8F4C1: BranchF loc_A8F542
  loc_A8F4C4: FLdRfVar var_8A
  loc_A8F4C7: FLdPr Me
  loc_A8F4CA: VCallAd Control_ID_OrdeObreTxt
  loc_A8F4CD: FStAdFunc var_88
  loc_A8F4D0: FLdPr var_88
  loc_A8F4D3:  = Me.Enabled
  loc_A8F4D8: FLdI2 var_8A
  loc_A8F4DB: FFree1Ad var_88
  loc_A8F4DE: BranchF loc_A8F542
  loc_A8F4E1: FLdRfVar var_90
  loc_A8F4E4: FLdPr Me
  loc_A8F4E7: VCallAd Control_ID_OrdeObreTxt
  loc_A8F4EA: FStAdFunc var_88
  loc_A8F4ED: FLdPr var_88
  loc_A8F4F0:  = Me.Text
  loc_A8F4F5: ILdRf var_90
  loc_A8F4F8: ImpAdCallI2 Proc_18_54_A64EC4()
  loc_A8F4FD: FStStrNoPop var_94
  loc_A8F500: FLdPr Me
  loc_A8F503: MemStStrCopy
  loc_A8F507: FFreeStr var_90 = ""
  loc_A8F50E: FFree1Ad var_88
  loc_A8F511: FLdPr Me
  loc_A8F514: MemLdStr global_368
  loc_A8F517: LitStr vbNullString
  loc_A8F51A: NeStr
  loc_A8F51C: BranchF loc_A8F542
  loc_A8F51F: FLdPr Me
  loc_A8F522: MemLdStr global_368
  loc_A8F525: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8F52A: FLdPr Me
  loc_A8F52D: VCallAd Control_ID_OrdeObreTxt
  loc_A8F530: CVarAd
  loc_A8F534: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8F539: FFree1Var var_A4 = ""
  loc_A8F53C: LitI2_Byte &HFF
  loc_A8F53E: IStI2 Cancel
  loc_A8F541: ExitProcHresult
  loc_A8F542: ExitProcHresult
End Sub

Private Sub CodiInmuCmd_Click() 'AA216C
  'Data Table: 52F1AC
  loc_AA20B4: FLdRfVar var_8C
  loc_AA20B7: FLdPr Me
  loc_AA20BA: VCallAd Control_ID_OrdeObreTxt
  loc_AA20BD: FStAdFunc var_88
  loc_AA20C0: FLdPr var_88
  loc_AA20C3:  = Me.Text
  loc_AA20C8: ILdRf var_8C
  loc_AA20CB: ImpAdLdRf MemVar_D94510
  loc_AA20CE: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA20D1: Call dlgBuscarPadronObraReem.sOrdeObrePut(from_stack_1v)
  loc_AA20D6: FFree1Str var_8C
  loc_AA20D9: FFree1Ad var_88
  loc_AA20DC: LitVar_Missing var_AC
  loc_AA20DF: PopAdLdVar
  loc_AA20E0: LitVarI4
  loc_AA20E8: PopAdLdVar
  loc_AA20E9: ImpAdLdRf MemVar_D94510
  loc_AA20EC: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA20EF: dlgBuscarPadronObraReem.Show from_stack_1, from_stack_2
  loc_AA20F4: FLdRfVar var_B0
  loc_AA20F7: FLdRfVar var_88
  loc_AA20FA: ImpAdLdRf MemVar_D94510
  loc_AA20FD: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA2100: from_stack_1v = dlgBuscarPadronObraReem.global_4315816Get()
  loc_AA2105: FLdPr var_88
  loc_AA2108: from_stack_1 = clsobreinmu.RecordCount
  loc_AA210D: ILdRf var_B0
  loc_AA2110: LitI4 0
  loc_AA2115: GtI4
  loc_AA2116: FFree1Ad var_88
  loc_AA2119: BranchF loc_AA2158
  loc_AA211C: FLdRfVar var_B0
  loc_AA211F: FLdRfVar var_88
  loc_AA2122: ImpAdLdRf MemVar_D94510
  loc_AA2125: NewIfNullPr dlgBuscarPadronObraReem
  loc_AA2128: from_stack_1v = dlgBuscarPadronObraReem.global_4315816Get()
  loc_AA212D: FLdPr var_88
  loc_AA2130: from_stack_1 = clsobreinmu.CodiInmu
  loc_AA2135: ILdRf var_B0
  loc_AA2138: CStrI4
  loc_AA213A: FStStrNoPop var_8C
  loc_AA213D: FLdPr Me
  loc_AA2140: VCallAd Control_ID_CodiInmuTxt
  loc_AA2143: FStAdFunc var_B4
  loc_AA2146: FLdPr var_B4
  loc_AA2149: Me.Text = from_stack_1
  loc_AA214E: FFree1Str var_8C
  loc_AA2151: FFreeAd var_88 = ""
  loc_AA2158: FLdPr Me
  loc_AA215B: VCallAd Control_ID_CodiInmuTxt
  loc_AA215E: CVarAd
  loc_AA2162: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA2167: FFree1Var var_C4 = ""
  loc_AA216A: ExitProcHresult
End Sub

Private Sub CalculoCuotasCmd_Click() 'CAF358
  'Data Table: 52F1AC
  loc_CAD3E4: LitI2_Byte 0
  loc_CAD3E6: CR8I2
  loc_CAD3E7: FLdPr Me
  loc_CAD3EA: MemStFPR8 global_156
  loc_CAD3ED: LitI2_Byte 0
  loc_CAD3EF: CR8I2
  loc_CAD3F0: FLdPr Me
  loc_CAD3F3: MemStFPR8 global_196
  loc_CAD3F6: LitI2_Byte 0
  loc_CAD3F8: CR8I2
  loc_CAD3F9: FLdPr Me
  loc_CAD3FC: MemStFPR8 global_204
  loc_CAD3FF: LitI2_Byte 0
  loc_CAD401: CR8I2
  loc_CAD402: FLdPr Me
  loc_CAD405: MemStFPR8 global_212
  loc_CAD408: LitI2_Byte 0
  loc_CAD40A: CR8I2
  loc_CAD40B: FLdPr Me
  loc_CAD40E: MemStFPR8 global_220
  loc_CAD411: LitI2_Byte 0
  loc_CAD413: CR8I2
  loc_CAD414: FLdPr Me
  loc_CAD417: MemStFPR8 global_228
  loc_CAD41A: LitI2_Byte 0
  loc_CAD41C: CR8I2
  loc_CAD41D: FLdPr Me
  loc_CAD420: MemStFPR8 global_236
  loc_CAD423: LitI2_Byte 0
  loc_CAD425: CR8I2
  loc_CAD426: FLdPr Me
  loc_CAD429: MemStFPR8 global_244
  loc_CAD42C: LitI2_Byte 0
  loc_CAD42E: CR8I2
  loc_CAD42F: FLdPr Me
  loc_CAD432: MemStFPR8 global_252
  loc_CAD435: LitI2_Byte 0
  loc_CAD437: CR8I2
  loc_CAD438: FLdPr Me
  loc_CAD43B: MemStFPR8 global_260
  loc_CAD43E: LitI2_Byte 0
  loc_CAD440: CR8I2
  loc_CAD441: FLdPr Me
  loc_CAD444: MemStFPR8 global_308
  loc_CAD447: LitI2_Byte 0
  loc_CAD449: CR8I2
  loc_CAD44A: FLdPr Me
  loc_CAD44D: MemStFPR8 global_268
  loc_CAD450: LitI2_Byte 0
  loc_CAD452: CR8I2
  loc_CAD453: FLdPr Me
  loc_CAD456: MemStFPR8 global_276
  loc_CAD459: LitI2_Byte 0
  loc_CAD45B: CR8I2
  loc_CAD45C: FLdPr Me
  loc_CAD45F: MemStFPR8 global_320
  loc_CAD462: LitI2_Byte 0
  loc_CAD464: CR8I2
  loc_CAD465: FLdPr Me
  loc_CAD468: MemStFPR8 global_328
  loc_CAD46B: LitI2_Byte 0
  loc_CAD46D: CR8I2
  loc_CAD46E: FLdPr Me
  loc_CAD471: MemStFPR8 global_284
  loc_CAD474: LitI2_Byte 0
  loc_CAD476: CR8I2
  loc_CAD477: FLdPr Me
  loc_CAD47A: MemStFPR8 global_292
  loc_CAD47D: FLdRfVar var_9C
  loc_CAD480: FLdPr Me
  loc_CAD483: VCallAd Control_ID_TotalTxt
  loc_CAD486: FStAdFunc var_98
  loc_CAD489: FLdPr var_98
  loc_CAD48C:  = Me.Text
  loc_CAD491: ILdRf var_9C
  loc_CAD494: CR8Str
  loc_CAD496: LitI2_Byte 0
  loc_CAD498: CR8I2
  loc_CAD499: EqR4
  loc_CAD49A: FFree1Str var_9C
  loc_CAD49D: FFree1Ad var_98
  loc_CAD4A0: BranchF loc_CAD4C3
  loc_CAD4A3: LitStr "No existe deuda para realizar el calculo de cuotas"
  loc_CAD4A6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CAD4AB: FLdPr Me
  loc_CAD4AE: VCallAd Control_ID_ctacteFlex
  loc_CAD4B1: FStAdFunc var_98
  loc_CAD4B4: FLdPr var_98
  loc_CAD4B7: LateIdCall
  loc_CAD4BF: FFree1Ad var_98
  loc_CAD4C2: ExitProcHresult
  loc_CAD4C3: FLdRfVar var_9C
  loc_CAD4C6: FLdPr Me
  loc_CAD4C9: VCallAd Control_ID_DerechoTxt
  loc_CAD4CC: FStAdFunc var_98
  loc_CAD4CF: FLdPr var_98
  loc_CAD4D2:  = Me.Text
  loc_CAD4D7: FLdZeroAd var_9C
  loc_CAD4DA: CVarStr var_AC
  loc_CAD4DD: ImpAdCallI2 IsNumeric()
  loc_CAD4E2: FLdRfVar var_B4
  loc_CAD4E5: FLdPr Me
  loc_CAD4E8: VCallAd Control_ID_RecargoTxt
  loc_CAD4EB: FStAdFunc var_B0
  loc_CAD4EE: FLdPr var_B0
  loc_CAD4F1:  = Me.Text
  loc_CAD4F6: FLdZeroAd var_B4
  loc_CAD4F9: CVarStr var_C4
  loc_CAD4FC: ImpAdCallI2 IsNumeric()
  loc_CAD501: AndI4
  loc_CAD502: FFreeAd var_98 = ""
  loc_CAD509: FFreeVar var_AC = ""
  loc_CAD510: BranchF loc_CADB3A
  loc_CAD513: FLdRfVar var_9C
  loc_CAD516: FLdPr Me
  loc_CAD519: VCallAd Control_ID_AnticipoTxt
  loc_CAD51C: FStAdFunc var_98
  loc_CAD51F: FLdPr var_98
  loc_CAD522:  = Me.Text
  loc_CAD527: FLdZeroAd var_9C
  loc_CAD52A: CVarStr var_AC
  loc_CAD52D: ImpAdCallI2 IsNumeric()
  loc_CAD532: FFree1Ad var_98
  loc_CAD535: FFree1Var var_AC = ""
  loc_CAD538: BranchF loc_CADA68
  loc_CAD53B: FLdRfVar var_9C
  loc_CAD53E: FLdPr Me
  loc_CAD541: VCallAd Control_ID_AnticipoTxt
  loc_CAD544: FStAdFunc var_98
  loc_CAD547: FLdPr var_98
  loc_CAD54A:  = Me.Text
  loc_CAD54F: ILdRf var_9C
  loc_CAD552: CR8Str
  loc_CAD554: LitI2_Byte 0
  loc_CAD556: CR8I2
  loc_CAD557: GtR4
  loc_CAD558: FFree1Str var_9C
  loc_CAD55B: FFree1Ad var_98
  loc_CAD55E: BranchF loc_CAD953
  loc_CAD561: FLdRfVar var_9C
  loc_CAD564: FLdPr Me
  loc_CAD567: VCallAd Control_ID_AnticipoTxt
  loc_CAD56A: FStAdFunc var_98
  loc_CAD56D: FLdPr var_98
  loc_CAD570:  = Me.Text
  loc_CAD575: FLdRfVar var_B4
  loc_CAD578: FLdPr Me
  loc_CAD57B: VCallAd Control_ID_DerechoTxt
  loc_CAD57E: FStAdFunc var_B0
  loc_CAD581: FLdPr var_B0
  loc_CAD584:  = Me.Text
  loc_CAD589: FLdRfVar var_CC
  loc_CAD58C: FLdPr Me
  loc_CAD58F: VCallAd Control_ID_RecargoTxt
  loc_CAD592: FStAdFunc var_C8
  loc_CAD595: FLdPr var_C8
  loc_CAD598:  = Me.Text
  loc_CAD59D: FLdRfVar var_D4
  loc_CAD5A0: FLdPr Me
  loc_CAD5A3: VCallAd Control_ID_DescCapiTxt
  loc_CAD5A6: FStAdFunc var_D0
  loc_CAD5A9: FLdPr var_D0
  loc_CAD5AC:  = Me.Text
  loc_CAD5B1: FLdRfVar var_DC
  loc_CAD5B4: FLdPr Me
  loc_CAD5B7: VCallAd Control_ID_DescRecaTxt
  loc_CAD5BA: FStAdFunc var_D8
  loc_CAD5BD: FLdPr var_D8
  loc_CAD5C0:  = Me.Text
  loc_CAD5C5: LitI4 2
  loc_CAD5CA: ILdRf var_9C
  loc_CAD5CD: CR8Str
  loc_CAD5CF: LitI2_Byte &H64
  loc_CAD5D1: CR8I2
  loc_CAD5D2: MulR8
  loc_CAD5D3: ILdRf var_B4
  loc_CAD5D6: CR8Str
  loc_CAD5D8: ILdRf var_CC
  loc_CAD5DB: CR8Str
  loc_CAD5DD: AddR8
  loc_CAD5DE: ILdRf var_D4
  loc_CAD5E1: CR8Str
  loc_CAD5E3: SubR4
  loc_CAD5E4: ILdRf var_DC
  loc_CAD5E7: CR8Str
  loc_CAD5E9: SubR4
  loc_CAD5EA: DivR8
  loc_CAD5EB: CVarR8
  loc_CAD5EF: FLdRfVar var_C4
  loc_CAD5F2: ImpAdCallFPR4  = Round(, )
  loc_CAD5F7: FLdRfVar var_C4
  loc_CAD5FA: CR4Var
  loc_CAD5FB: FLdPr Me
  loc_CAD5FE: MemStFPR8 global_156
  loc_CAD601: FFreeStr var_9C = "": var_B4 = "": var_CC = "": var_D4 = ""
  loc_CAD60E: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_D0 = ""
  loc_CAD61B: FFreeVar var_AC = ""
  loc_CAD622: FLdRfVar var_9C
  loc_CAD625: FLdPr Me
  loc_CAD628: VCallAd Control_ID_DerechoTxt
  loc_CAD62B: FStAdFunc var_98
  loc_CAD62E: FLdPr var_98
  loc_CAD631:  = Me.Text
  loc_CAD636: LitI4 2
  loc_CAD63B: ILdRf var_9C
  loc_CAD63E: CR8Str
  loc_CAD640: FLdPr Me
  loc_CAD643: MemLdFPR8 global_156
  loc_CAD646: MulR8
  loc_CAD647: LitI2_Byte &H64
  loc_CAD649: CR8I2
  loc_CAD64A: DivR8
  loc_CAD64B: CVarR8
  loc_CAD64F: FLdRfVar var_C4
  loc_CAD652: ImpAdCallFPR4  = Round(, )
  loc_CAD657: FLdRfVar var_C4
  loc_CAD65A: CR4Var
  loc_CAD65B: FLdPr Me
  loc_CAD65E: MemStFPR8 global_196
  loc_CAD661: FFree1Str var_9C
  loc_CAD664: FFree1Ad var_98
  loc_CAD667: FFreeVar var_AC = ""
  loc_CAD66E: FLdRfVar var_9C
  loc_CAD671: FLdPr Me
  loc_CAD674: VCallAd Control_ID_RecargoTxt
  loc_CAD677: FStAdFunc var_98
  loc_CAD67A: FLdPr var_98
  loc_CAD67D:  = Me.Text
  loc_CAD682: LitI4 2
  loc_CAD687: ILdRf var_9C
  loc_CAD68A: CR8Str
  loc_CAD68C: FLdPr Me
  loc_CAD68F: MemLdFPR8 global_156
  loc_CAD692: MulR8
  loc_CAD693: LitI2_Byte &H64
  loc_CAD695: CR8I2
  loc_CAD696: DivR8
  loc_CAD697: CVarR8
  loc_CAD69B: FLdRfVar var_C4
  loc_CAD69E: ImpAdCallFPR4  = Round(, )
  loc_CAD6A3: FLdRfVar var_C4
  loc_CAD6A6: CR4Var
  loc_CAD6A7: FLdPr Me
  loc_CAD6AA: MemStFPR8 global_204
  loc_CAD6AD: FFree1Str var_9C
  loc_CAD6B0: FFree1Ad var_98
  loc_CAD6B3: FFreeVar var_AC = ""
  loc_CAD6BA: FLdRfVar var_9C
  loc_CAD6BD: FLdPr Me
  loc_CAD6C0: VCallAd Control_ID_DescCapiTxt
  loc_CAD6C3: FStAdFunc var_98
  loc_CAD6C6: FLdPr var_98
  loc_CAD6C9:  = Me.Text
  loc_CAD6CE: LitI4 2
  loc_CAD6D3: ILdRf var_9C
  loc_CAD6D6: CR8Str
  loc_CAD6D8: FLdPr Me
  loc_CAD6DB: MemLdFPR8 global_156
  loc_CAD6DE: MulR8
  loc_CAD6DF: LitI2_Byte &H64
  loc_CAD6E1: CR8I2
  loc_CAD6E2: DivR8
  loc_CAD6E3: CVarR8
  loc_CAD6E7: FLdRfVar var_C4
  loc_CAD6EA: ImpAdCallFPR4  = Round(, )
  loc_CAD6EF: FLdRfVar var_C4
  loc_CAD6F2: CR4Var
  loc_CAD6F3: FLdPr Me
  loc_CAD6F6: MemStFPR8 global_212
  loc_CAD6F9: FFree1Str var_9C
  loc_CAD6FC: FFree1Ad var_98
  loc_CAD6FF: FFreeVar var_AC = ""
  loc_CAD706: FLdRfVar var_9C
  loc_CAD709: FLdPr Me
  loc_CAD70C: VCallAd Control_ID_DescRecaTxt
  loc_CAD70F: FStAdFunc var_98
  loc_CAD712: FLdPr var_98
  loc_CAD715:  = Me.Text
  loc_CAD71A: LitI4 2
  loc_CAD71F: ILdRf var_9C
  loc_CAD722: CR8Str
  loc_CAD724: FLdPr Me
  loc_CAD727: MemLdFPR8 global_156
  loc_CAD72A: MulR8
  loc_CAD72B: LitI2_Byte &H64
  loc_CAD72D: CR8I2
  loc_CAD72E: DivR8
  loc_CAD72F: CVarR8
  loc_CAD733: FLdRfVar var_C4
  loc_CAD736: ImpAdCallFPR4  = Round(, )
  loc_CAD73B: FLdRfVar var_C4
  loc_CAD73E: CR4Var
  loc_CAD73F: FLdPr Me
  loc_CAD742: MemStFPR8 global_220
  loc_CAD745: FFree1Str var_9C
  loc_CAD748: FFree1Ad var_98
  loc_CAD74B: FFreeVar var_AC = ""
  loc_CAD752: FLdRfVar var_9C
  loc_CAD755: FLdPr Me
  loc_CAD758: VCallAd Control_ID_AnticipoTxt
  loc_CAD75B: FStAdFunc var_98
  loc_CAD75E: FLdPr var_98
  loc_CAD761:  = Me.Text
  loc_CAD766: FLdPr Me
  loc_CAD769: MemLdFPR8 global_196
  loc_CAD76C: FLdPr Me
  loc_CAD76F: MemLdFPR8 global_204
  loc_CAD772: AddR8
  loc_CAD773: FLdPr Me
  loc_CAD776: MemLdFPR8 global_212
  loc_CAD779: SubR4
  loc_CAD77A: FLdPr Me
  loc_CAD77D: MemLdFPR8 global_220
  loc_CAD780: SubR4
  loc_CAD781: CR8R8
  loc_CAD782: ILdRf var_9C
  loc_CAD785: CR8Str
  loc_CAD787: LtR8
  loc_CAD788: FFree1Str var_9C
  loc_CAD78B: FFree1Ad var_98
  loc_CAD78E: BranchF loc_CAD7DC
  loc_CAD791: FLdRfVar var_9C
  loc_CAD794: FLdPr Me
  loc_CAD797: VCallAd Control_ID_AnticipoTxt
  loc_CAD79A: FStAdFunc var_98
  loc_CAD79D: FLdPr var_98
  loc_CAD7A0:  = Me.Text
  loc_CAD7A5: FLdPr Me
  loc_CAD7A8: MemLdFPR8 global_196
  loc_CAD7AB: ILdRf var_9C
  loc_CAD7AE: CR8Str
  loc_CAD7B0: AddR8
  loc_CAD7B1: FLdPr Me
  loc_CAD7B4: MemLdFPR8 global_196
  loc_CAD7B7: FLdPr Me
  loc_CAD7BA: MemLdFPR8 global_204
  loc_CAD7BD: AddR8
  loc_CAD7BE: FLdPr Me
  loc_CAD7C1: MemLdFPR8 global_212
  loc_CAD7C4: SubR4
  loc_CAD7C5: FLdPr Me
  loc_CAD7C8: MemLdFPR8 global_220
  loc_CAD7CB: SubR4
  loc_CAD7CC: SubR4
  loc_CAD7CD: FLdPr Me
  loc_CAD7D0: MemStFPR8 global_196
  loc_CAD7D3: FFree1Str var_9C
  loc_CAD7D6: FFree1Ad var_98
  loc_CAD7D9: Branch loc_CAD863
  loc_CAD7DC: FLdRfVar var_9C
  loc_CAD7DF: FLdPr Me
  loc_CAD7E2: VCallAd Control_ID_AnticipoTxt
  loc_CAD7E5: FStAdFunc var_98
  loc_CAD7E8: FLdPr var_98
  loc_CAD7EB:  = Me.Text
  loc_CAD7F0: FLdPr Me
  loc_CAD7F3: MemLdFPR8 global_196
  loc_CAD7F6: FLdPr Me
  loc_CAD7F9: MemLdFPR8 global_204
  loc_CAD7FC: AddR8
  loc_CAD7FD: FLdPr Me
  loc_CAD800: MemLdFPR8 global_212
  loc_CAD803: SubR4
  loc_CAD804: FLdPr Me
  loc_CAD807: MemLdFPR8 global_220
  loc_CAD80A: SubR4
  loc_CAD80B: CR8R8
  loc_CAD80C: ILdRf var_9C
  loc_CAD80F: CR8Str
  loc_CAD811: GtR4
  loc_CAD812: FFree1Str var_9C
  loc_CAD815: FFree1Ad var_98
  loc_CAD818: BranchF loc_CAD863
  loc_CAD81B: FLdRfVar var_9C
  loc_CAD81E: FLdPr Me
  loc_CAD821: VCallAd Control_ID_AnticipoTxt
  loc_CAD824: FStAdFunc var_98
  loc_CAD827: FLdPr var_98
  loc_CAD82A:  = Me.Text
  loc_CAD82F: FLdPr Me
  loc_CAD832: MemLdFPR8 global_196
  loc_CAD835: FLdPr Me
  loc_CAD838: MemLdFPR8 global_196
  loc_CAD83B: FLdPr Me
  loc_CAD83E: MemLdFPR8 global_204
  loc_CAD841: AddR8
  loc_CAD842: FLdPr Me
  loc_CAD845: MemLdFPR8 global_212
  loc_CAD848: SubR4
  loc_CAD849: FLdPr Me
  loc_CAD84C: MemLdFPR8 global_220
  loc_CAD84F: SubR4
  loc_CAD850: ILdRf var_9C
  loc_CAD853: CR8Str
  loc_CAD855: SubR4
  loc_CAD856: SubR4
  loc_CAD857: FLdPr Me
  loc_CAD85A: MemStFPR8 global_196
  loc_CAD85D: FFree1Str var_9C
  loc_CAD860: FFree1Ad var_98
  loc_CAD863: FLdRfVar var_9C
  loc_CAD866: FLdPr Me
  loc_CAD869: VCallAd Control_ID_DerechoTxt
  loc_CAD86C: FStAdFunc var_98
  loc_CAD86F: FLdPr var_98
  loc_CAD872:  = Me.Text
  loc_CAD877: ILdRf var_9C
  loc_CAD87A: CR8Str
  loc_CAD87C: FLdPr Me
  loc_CAD87F: MemLdFPR8 global_196
  loc_CAD882: SubR4
  loc_CAD883: FLdPr Me
  loc_CAD886: MemStFPR8 global_228
  loc_CAD889: FFree1Str var_9C
  loc_CAD88C: FFree1Ad var_98
  loc_CAD88F: FLdRfVar var_9C
  loc_CAD892: FLdPr Me
  loc_CAD895: VCallAd Control_ID_DescCapiTxt
  loc_CAD898: FStAdFunc var_98
  loc_CAD89B: FLdPr var_98
  loc_CAD89E:  = Me.Text
  loc_CAD8A3: FLdPr Me
  loc_CAD8A6: MemLdFPR8 global_212
  loc_CAD8A9: ILdRf var_9C
  loc_CAD8AC: CR8Str
  loc_CAD8AE: AddR8
  loc_CAD8AF: FLdPr Me
  loc_CAD8B2: MemStFPR8 global_236
  loc_CAD8B5: FFree1Str var_9C
  loc_CAD8B8: FFree1Ad var_98
  loc_CAD8BB: FLdRfVar var_9C
  loc_CAD8BE: FLdPr Me
  loc_CAD8C1: VCallAd Control_ID_RecargoTxt
  loc_CAD8C4: FStAdFunc var_98
  loc_CAD8C7: FLdPr var_98
  loc_CAD8CA:  = Me.Text
  loc_CAD8CF: ILdRf var_9C
  loc_CAD8D2: CR8Str
  loc_CAD8D4: FLdPr Me
  loc_CAD8D7: MemLdFPR8 global_204
  loc_CAD8DA: SubR4
  loc_CAD8DB: FLdPr Me
  loc_CAD8DE: MemStFPR8 global_244
  loc_CAD8E1: FFree1Str var_9C
  loc_CAD8E4: FFree1Ad var_98
  loc_CAD8E7: FLdRfVar var_9C
  loc_CAD8EA: FLdPr Me
  loc_CAD8ED: VCallAd Control_ID_DescRecaTxt
  loc_CAD8F0: FStAdFunc var_98
  loc_CAD8F3: FLdPr var_98
  loc_CAD8F6:  = Me.Text
  loc_CAD8FB: FLdPr Me
  loc_CAD8FE: MemLdFPR8 global_220
  loc_CAD901: ILdRf var_9C
  loc_CAD904: CR8Str
  loc_CAD906: AddR8
  loc_CAD907: FLdPr Me
  loc_CAD90A: MemStFPR8 global_252
  loc_CAD90D: FFree1Str var_9C
  loc_CAD910: FFree1Ad var_98
  loc_CAD913: LitI4 2
  loc_CAD918: FLdPr Me
  loc_CAD91B: MemLdFPR8 global_228
  loc_CAD91E: FLdPr Me
  loc_CAD921: MemLdFPR8 global_244
  loc_CAD924: AddR8
  loc_CAD925: FLdPr Me
  loc_CAD928: MemLdFPR8 global_236
  loc_CAD92B: SubR4
  loc_CAD92C: FLdPr Me
  loc_CAD92F: MemLdFPR8 global_252
  loc_CAD932: SubR4
  loc_CAD933: CVarR8
  loc_CAD937: FLdRfVar var_C4
  loc_CAD93A: ImpAdCallFPR4  = Round(, )
  loc_CAD93F: FLdRfVar var_C4
  loc_CAD942: CR4Var
  loc_CAD943: FLdPr Me
  loc_CAD946: MemStFPR8 global_308
  loc_CAD949: FFreeVar var_AC = ""
  loc_CAD950: Branch loc_CADA65
  loc_CAD953: FLdRfVar var_9C
  loc_CAD956: FLdPr Me
  loc_CAD959: VCallAd Control_ID_DerechoTxt
  loc_CAD95C: FStAdFunc var_98
  loc_CAD95F: FLdPr var_98
  loc_CAD962:  = Me.Text
  loc_CAD967: ILdRf var_9C
  loc_CAD96A: CR8Str
  loc_CAD96C: FLdPr Me
  loc_CAD96F: MemLdFPR8 global_196
  loc_CAD972: SubR4
  loc_CAD973: FLdPr Me
  loc_CAD976: MemStFPR8 global_228
  loc_CAD979: FFree1Str var_9C
  loc_CAD97C: FFree1Ad var_98
  loc_CAD97F: FLdRfVar var_9C
  loc_CAD982: FLdPr Me
  loc_CAD985: VCallAd Control_ID_DescCapiTxt
  loc_CAD988: FStAdFunc var_98
  loc_CAD98B: FLdPr var_98
  loc_CAD98E:  = Me.Text
  loc_CAD993: FLdPr Me
  loc_CAD996: MemLdFPR8 global_212
  loc_CAD999: ILdRf var_9C
  loc_CAD99C: CR8Str
  loc_CAD99E: AddR8
  loc_CAD99F: FLdPr Me
  loc_CAD9A2: MemStFPR8 global_236
  loc_CAD9A5: FFree1Str var_9C
  loc_CAD9A8: FFree1Ad var_98
  loc_CAD9AB: FLdRfVar var_9C
  loc_CAD9AE: FLdPr Me
  loc_CAD9B1: VCallAd Control_ID_RecargoTxt
  loc_CAD9B4: FStAdFunc var_98
  loc_CAD9B7: FLdPr var_98
  loc_CAD9BA:  = Me.Text
  loc_CAD9BF: ILdRf var_9C
  loc_CAD9C2: CR8Str
  loc_CAD9C4: FLdPr Me
  loc_CAD9C7: MemLdFPR8 global_204
  loc_CAD9CA: SubR4
  loc_CAD9CB: FLdPr Me
  loc_CAD9CE: MemStFPR8 global_244
  loc_CAD9D1: FFree1Str var_9C
  loc_CAD9D4: FFree1Ad var_98
  loc_CAD9D7: FLdRfVar var_9C
  loc_CAD9DA: FLdPr Me
  loc_CAD9DD: VCallAd Control_ID_DescRecaTxt
  loc_CAD9E0: FStAdFunc var_98
  loc_CAD9E3: FLdPr var_98
  loc_CAD9E6:  = Me.Text
  loc_CAD9EB: FLdPr Me
  loc_CAD9EE: MemLdFPR8 global_220
  loc_CAD9F1: ILdRf var_9C
  loc_CAD9F4: CR8Str
  loc_CAD9F6: AddR8
  loc_CAD9F7: FLdPr Me
  loc_CAD9FA: MemStFPR8 global_252
  loc_CAD9FD: FFree1Str var_9C
  loc_CADA00: FFree1Ad var_98
  loc_CADA03: FLdRfVar var_9C
  loc_CADA06: FLdPr Me
  loc_CADA09: VCallAd Control_ID_ApremioTxt
  loc_CADA0C: FStAdFunc var_98
  loc_CADA0F: FLdPr var_98
  loc_CADA12:  = Me.Text
  loc_CADA17: ILdRf var_9C
  loc_CADA1A: CR8Str
  loc_CADA1C: FLdPr Me
  loc_CADA1F: MemStFPR8 global_260
  loc_CADA22: FFree1Str var_9C
  loc_CADA25: FFree1Ad var_98
  loc_CADA28: LitI4 2
  loc_CADA2D: FLdPr Me
  loc_CADA30: MemLdFPR8 global_228
  loc_CADA33: FLdPr Me
  loc_CADA36: MemLdFPR8 global_244
  loc_CADA39: AddR8
  loc_CADA3A: FLdPr Me
  loc_CADA3D: MemLdFPR8 global_236
  loc_CADA40: SubR4
  loc_CADA41: FLdPr Me
  loc_CADA44: MemLdFPR8 global_252
  loc_CADA47: SubR4
  loc_CADA48: CVarR8
  loc_CADA4C: FLdRfVar var_C4
  loc_CADA4F: ImpAdCallFPR4  = Round(, )
  loc_CADA54: FLdRfVar var_C4
  loc_CADA57: CR4Var
  loc_CADA58: FLdPr Me
  loc_CADA5B: MemStFPR8 global_308
  loc_CADA5E: FFreeVar var_AC = ""
  loc_CADA65: Branch loc_CADB3A
  loc_CADA68: FLdRfVar var_9C
  loc_CADA6B: FLdPr Me
  loc_CADA6E: VCallAd Control_ID_DerechoTxt
  loc_CADA71: FStAdFunc var_98
  loc_CADA74: FLdPr var_98
  loc_CADA77:  = Me.Text
  loc_CADA7C: ILdRf var_9C
  loc_CADA7F: CR8Str
  loc_CADA81: FLdPr Me
  loc_CADA84: MemLdFPR8 global_196
  loc_CADA87: SubR4
  loc_CADA88: FLdPr Me
  loc_CADA8B: MemStFPR8 global_228
  loc_CADA8E: FFree1Str var_9C
  loc_CADA91: FFree1Ad var_98
  loc_CADA94: FLdPr Me
  loc_CADA97: MemLdFPR8 global_212
  loc_CADA9A: FLdPr Me
  loc_CADA9D: MemStFPR8 global_236
  loc_CADAA0: FLdRfVar var_9C
  loc_CADAA3: FLdPr Me
  loc_CADAA6: VCallAd Control_ID_RecargoTxt
  loc_CADAA9: FStAdFunc var_98
  loc_CADAAC: FLdPr var_98
  loc_CADAAF:  = Me.Text
  loc_CADAB4: ILdRf var_9C
  loc_CADAB7: CR8Str
  loc_CADAB9: FLdPr Me
  loc_CADABC: MemLdFPR8 global_204
  loc_CADABF: SubR4
  loc_CADAC0: FLdPr Me
  loc_CADAC3: MemStFPR8 global_244
  loc_CADAC6: FFree1Str var_9C
  loc_CADAC9: FFree1Ad var_98
  loc_CADACC: FLdPr Me
  loc_CADACF: MemLdFPR8 global_220
  loc_CADAD2: FLdPr Me
  loc_CADAD5: MemStFPR8 global_252
  loc_CADAD8: FLdRfVar var_9C
  loc_CADADB: FLdPr Me
  loc_CADADE: VCallAd Control_ID_ApremioTxt
  loc_CADAE1: FStAdFunc var_98
  loc_CADAE4: FLdPr var_98
  loc_CADAE7:  = Me.Text
  loc_CADAEC: ILdRf var_9C
  loc_CADAEF: CR8Str
  loc_CADAF1: FLdPr Me
  loc_CADAF4: MemStFPR8 global_260
  loc_CADAF7: FFree1Str var_9C
  loc_CADAFA: FFree1Ad var_98
  loc_CADAFD: LitI4 2
  loc_CADB02: FLdPr Me
  loc_CADB05: MemLdFPR8 global_228
  loc_CADB08: FLdPr Me
  loc_CADB0B: MemLdFPR8 global_244
  loc_CADB0E: AddR8
  loc_CADB0F: FLdPr Me
  loc_CADB12: MemLdFPR8 global_236
  loc_CADB15: SubR4
  loc_CADB16: FLdPr Me
  loc_CADB19: MemLdFPR8 global_252
  loc_CADB1C: SubR4
  loc_CADB1D: CVarR8
  loc_CADB21: FLdRfVar var_C4
  loc_CADB24: ImpAdCallFPR4  = Round(, )
  loc_CADB29: FLdRfVar var_C4
  loc_CADB2C: CR4Var
  loc_CADB2D: FLdPr Me
  loc_CADB30: MemStFPR8 global_308
  loc_CADB33: FFreeVar var_AC = ""
  loc_CADB3A: Call Proc_187_53_A855B4()
  loc_CADB3F: Call Proc_187_52_AF19AC()
  loc_CADB44: FLdRfVar var_9C
  loc_CADB47: FLdPr Me
  loc_CADB4A: VCallAd Control_ID_CodiTifaTxt
  loc_CADB4D: FStAdFunc var_98
  loc_CADB50: FLdPr var_98
  loc_CADB53:  = Me.Text
  loc_CADB58: FLdZeroAd var_9C
  loc_CADB5B: CVarStr var_AC
  loc_CADB5E: ImpAdCallI2 IsNumeric()
  loc_CADB63: FFree1Ad var_98
  loc_CADB66: FFree1Var var_AC = ""
  loc_CADB69: BranchF loc_CAF33A
  loc_CADB6C: FLdPr Me
  loc_CADB6F: MemLdFPR8 global_308
  loc_CADB72: LitI2_Byte 0
  loc_CADB74: CR8I2
  loc_CADB75: GtR4
  loc_CADB76: BranchF loc_CAF31D
  loc_CADB79: LitStr "SELECT CodiTifa, DetaTifa, TipoTifa, NovaTifa, FealTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CuapTifa, CumiTifa, CumaTifa, ImmiTifa, VecuTifa, CodiConc FROM tipofapa WHERE CodiTifa = "
  loc_CADB7C: FLdRfVar var_9C
  loc_CADB7F: FLdPr Me
  loc_CADB82: VCallAd Control_ID_CodiTifaTxt
  loc_CADB85: FStAdFunc var_98
  loc_CADB88: FLdPr var_98
  loc_CADB8B:  = Me.Text
  loc_CADB90: ILdRf var_9C
  loc_CADB93: ConcatStr
  loc_CADB94: FStStrNoPop var_B4
  loc_CADB97: LitStr " ORDER BY CodiTifa"
  loc_CADB9A: ConcatStr
  loc_CADB9B: FStStrNoPop var_CC
  loc_CADB9E: FLdPr Me
  loc_CADBA1: MemLdRfVar from_stack_1.global_76
  loc_CADBA4: NewIfNullPr clstipofapa
  loc_CADBA7: Call clstipofapa.RedefineRS(from_stack_1v)
  loc_CADBAC: FFreeStr var_9C = "": var_B4 = ""
  loc_CADBB5: FFree1Ad var_98
  loc_CADBB8: FLdRfVar var_F0
  loc_CADBBB: FLdRfVar var_98
  loc_CADBBE: FLdPr Me
  loc_CADBC1: MemLdRfVar from_stack_1.global_76
  loc_CADBC4: NewIfNullPr clstipofapa
  loc_CADBC7: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADBCC: FLdPr var_98
  loc_CADBCF:  = Me.RecordCount
  loc_CADBD4: ILdRf var_F0
  loc_CADBD7: LitI4 1
  loc_CADBDC: EqI4
  loc_CADBDD: FFree1Ad var_98
  loc_CADBE0: BranchF loc_CAF302
  loc_CADBE3: FLdRfVar var_AC
  loc_CADBE6: FLdRfVar var_C8
  loc_CADBE9: LitVarStr var_EC, "CumiTifa"
  loc_CADBEE: PopAdLdVar
  loc_CADBEF: FLdRfVar var_B0
  loc_CADBF2: FLdRfVar var_98
  loc_CADBF5: FLdPr Me
  loc_CADBF8: MemLdRfVar from_stack_1.global_76
  loc_CADBFB: NewIfNullPr clstipofapa
  loc_CADBFE: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADC03: FLdPr var_98
  loc_CADC06:  = Me.Fields
  loc_CADC0B: FLdPr var_B0
  loc_CADC0E: from_stack_2 = Me.Item(from_stack_1)
  loc_CADC13: FLdPr var_C8
  loc_CADC16:  = Me.Value
  loc_CADC1B: FLdRfVar var_AC
  loc_CADC1E: FnCIntVar
  loc_CADC20: FLdPr Me
  loc_CADC23: MemLdRfVar from_stack_1.global_96
  loc_CADC26: FLdRfVar var_C4
  loc_CADC29: FLdRfVar var_104
  loc_CADC2C: LitVarStr var_100, "CumaTifa"
  loc_CADC31: PopAdLdVar
  loc_CADC32: FLdRfVar var_D8
  loc_CADC35: FLdRfVar var_D0
  loc_CADC38: FLdPr Me
  loc_CADC3B: MemLdRfVar from_stack_1.global_76
  loc_CADC3E: NewIfNullPr clstipofapa
  loc_CADC41: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADC46: FLdPr var_D0
  loc_CADC49:  = Me.Fields
  loc_CADC4E: FLdPr var_D8
  loc_CADC51: from_stack_2 = Me.Item(from_stack_1)
  loc_CADC56: FLdPr var_104
  loc_CADC59:  = Me.Value
  loc_CADC5E: FLdRfVar var_C4
  loc_CADC61: FnCIntVar
  loc_CADC63: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_D0 = "": var_D8 = ""
  loc_CADC72: FFreeVar var_AC = ""
  loc_CADC79: ForI2 var_108
  loc_CADC7F: FLdRfVar var_AC
  loc_CADC82: FLdRfVar var_C8
  loc_CADC85: LitVarStr var_EC, "MecaTifa"
  loc_CADC8A: PopAdLdVar
  loc_CADC8B: FLdRfVar var_B0
  loc_CADC8E: FLdRfVar var_98
  loc_CADC91: FLdPr Me
  loc_CADC94: MemLdRfVar from_stack_1.global_76
  loc_CADC97: NewIfNullPr clstipofapa
  loc_CADC9A: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADC9F: FLdPr var_98
  loc_CADCA2:  = Me.Fields
  loc_CADCA7: FLdPr var_B0
  loc_CADCAA: from_stack_2 = Me.Item(from_stack_1)
  loc_CADCAF: FLdPr var_C8
  loc_CADCB2:  = Me.Value
  loc_CADCB7: FLdRfVar var_AC
  loc_CADCBA: LitVarStr var_100, "Especial"
  loc_CADCBF: HardType
  loc_CADCC0: EqVarBool
  loc_CADCC2: FFreeAd var_98 = "": var_B0 = ""
  loc_CADCCB: FFree1Var var_AC = ""
  loc_CADCCE: BranchF loc_CADF5A
  loc_CADCD1: FLdRfVar var_AC
  loc_CADCD4: FLdRfVar var_C8
  loc_CADCD7: LitVarStr var_EC, "MecaTifa"
  loc_CADCDC: PopAdLdVar
  loc_CADCDD: FLdRfVar var_B0
  loc_CADCE0: FLdRfVar var_98
  loc_CADCE3: FLdPr Me
  loc_CADCE6: MemLdRfVar from_stack_1.global_76
  loc_CADCE9: NewIfNullPr clstipofapa
  loc_CADCEC: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADCF1: FLdPr var_98
  loc_CADCF4:  = Me.Fields
  loc_CADCF9: FLdPr var_B0
  loc_CADCFC: from_stack_2 = Me.Item(from_stack_1)
  loc_CADD01: FLdPr var_C8
  loc_CADD04:  = Me.Value
  loc_CADD09: FLdRfVar var_C4
  loc_CADD0C: FLdRfVar var_104
  loc_CADD0F: LitVarStr var_100, "InteTifa"
  loc_CADD14: PopAdLdVar
  loc_CADD15: FLdRfVar var_D8
  loc_CADD18: FLdRfVar var_D0
  loc_CADD1B: FLdPr Me
  loc_CADD1E: MemLdRfVar from_stack_1.global_76
  loc_CADD21: NewIfNullPr clstipofapa
  loc_CADD24: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADD29: FLdPr var_D0
  loc_CADD2C:  = Me.Fields
  loc_CADD31: FLdPr var_D8
  loc_CADD34: from_stack_2 = Me.Item(from_stack_1)
  loc_CADD39: FLdPr var_104
  loc_CADD3C:  = Me.Value
  loc_CADD41: FLdPr Me
  loc_CADD44: MemLdR8 global_308
  loc_CADD47: FLdRfVar var_C4
  loc_CADD4A: CR4Var
  loc_CADD4B: PopFPR8
  loc_CADD4C: FLdRfVar var_AC
  loc_CADD4F: CStrVarTmp
  loc_CADD50: FStStrNoPop var_9C
  loc_CADD53: FLdPr Me
  loc_CADD56: MemLdI2 global_96
  loc_CADD59: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_CADD5E: CVarRef
  loc_CADD63: FStVar var_94
  loc_CADD67: FFree1Str var_9C
  loc_CADD6A: FFreeAd var_98 = "": var_B0 = "": var_D0 = "": var_D8 = "": var_C8 = ""
  loc_CADD79: FFreeVar var_AC = ""
  loc_CADD80: LitI4 2
  loc_CADD85: FLdPr Me
  loc_CADD88: MemLdFPR8 global_228
  loc_CADD8B: FLdPr Me
  loc_CADD8E: MemLdI2 global_96
  loc_CADD91: CR8I2
  loc_CADD92: DivR8
  loc_CADD93: CVarR8
  loc_CADD97: FLdRfVar var_C4
  loc_CADD9A: ImpAdCallFPR4  = Round(, )
  loc_CADD9F: FLdRfVar var_C4
  loc_CADDA2: CR4Var
  loc_CADDA3: FLdPr Me
  loc_CADDA6: MemStFPR8 global_268
  loc_CADDA9: FFreeVar var_AC = ""
  loc_CADDB0: LitI4 2
  loc_CADDB5: FLdPr Me
  loc_CADDB8: MemLdFPR8 global_244
  loc_CADDBB: FLdPr Me
  loc_CADDBE: MemLdI2 global_96
  loc_CADDC1: CR8I2
  loc_CADDC2: DivR8
  loc_CADDC3: CVarR8
  loc_CADDC7: FLdRfVar var_C4
  loc_CADDCA: ImpAdCallFPR4  = Round(, )
  loc_CADDCF: FLdRfVar var_C4
  loc_CADDD2: CR4Var
  loc_CADDD3: FLdPr Me
  loc_CADDD6: MemStFPR8 global_276
  loc_CADDD9: FFreeVar var_AC = ""
  loc_CADDE0: FLdRfVar var_AC
  loc_CADDE3: FLdRfVar var_C8
  loc_CADDE6: LitVarStr var_EC, "DecaTifa"
  loc_CADDEB: PopAdLdVar
  loc_CADDEC: FLdRfVar var_B0
  loc_CADDEF: FLdRfVar var_98
  loc_CADDF2: FLdPr Me
  loc_CADDF5: MemLdRfVar from_stack_1.global_76
  loc_CADDF8: NewIfNullPr clstipofapa
  loc_CADDFB: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADE00: FLdPr var_98
  loc_CADE03:  = Me.Fields
  loc_CADE08: FLdPr var_B0
  loc_CADE0B: from_stack_2 = Me.Item(from_stack_1)
  loc_CADE10: FLdPr var_C8
  loc_CADE13:  = Me.Value
  loc_CADE18: LitI4 2
  loc_CADE1D: FLdPr Me
  loc_CADE20: MemLdFPR8 global_268
  loc_CADE23: FLdRfVar var_AC
  loc_CADE26: FnCDblVar
  loc_CADE28: MulR8
  loc_CADE29: LitI2_Byte &H64
  loc_CADE2B: CR8I2
  loc_CADE2C: DivR8
  loc_CADE2D: CVarR8
  loc_CADE31: FLdRfVar var_11C
  loc_CADE34: ImpAdCallFPR4  = Round(, )
  loc_CADE39: FLdRfVar var_11C
  loc_CADE3C: CR4Var
  loc_CADE3D: FLdPr Me
  loc_CADE40: MemStFPR8 global_320
  loc_CADE43: FFreeAd var_98 = "": var_B0 = ""
  loc_CADE4C: FFreeVar var_AC = "": var_C4 = ""
  loc_CADE55: FLdRfVar var_AC
  loc_CADE58: FLdRfVar var_C8
  loc_CADE5B: LitVarStr var_EC, "DereTifa"
  loc_CADE60: PopAdLdVar
  loc_CADE61: FLdRfVar var_B0
  loc_CADE64: FLdRfVar var_98
  loc_CADE67: FLdPr Me
  loc_CADE6A: MemLdRfVar from_stack_1.global_76
  loc_CADE6D: NewIfNullPr clstipofapa
  loc_CADE70: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADE75: FLdPr var_98
  loc_CADE78:  = Me.Fields
  loc_CADE7D: FLdPr var_B0
  loc_CADE80: from_stack_2 = Me.Item(from_stack_1)
  loc_CADE85: FLdPr var_C8
  loc_CADE88:  = Me.Value
  loc_CADE8D: LitI4 2
  loc_CADE92: FLdPr Me
  loc_CADE95: MemLdFPR8 global_276
  loc_CADE98: FLdRfVar var_AC
  loc_CADE9B: FnCDblVar
  loc_CADE9D: MulR8
  loc_CADE9E: LitI2_Byte &H64
  loc_CADEA0: CR8I2
  loc_CADEA1: DivR8
  loc_CADEA2: CVarR8
  loc_CADEA6: FLdRfVar var_11C
  loc_CADEA9: ImpAdCallFPR4  = Round(, )
  loc_CADEAE: FLdRfVar var_11C
  loc_CADEB1: CR4Var
  loc_CADEB2: FLdPr Me
  loc_CADEB5: MemStFPR8 global_328
  loc_CADEB8: FFreeAd var_98 = "": var_B0 = ""
  loc_CADEC1: FFreeVar var_AC = "": var_C4 = ""
  loc_CADECA: LitI4 2
  loc_CADECF: FLdPr Me
  loc_CADED2: MemLdFPR8 global_260
  loc_CADED5: FLdPr Me
  loc_CADED8: MemLdI2 global_96
  loc_CADEDB: CR8I2
  loc_CADEDC: DivR8
  loc_CADEDD: CVarR8
  loc_CADEE1: FLdRfVar var_C4
  loc_CADEE4: ImpAdCallFPR4  = Round(, )
  loc_CADEE9: FLdRfVar var_C4
  loc_CADEEC: CR4Var
  loc_CADEED: FLdPr Me
  loc_CADEF0: MemStFPR8 global_284
  loc_CADEF3: FFreeVar var_AC = ""
  loc_CADEFA: LitVarI2 var_EC, 1
  loc_CADEFF: PopAdLdVar
  loc_CADF00: FLdRfVar var_94
  loc_CADF03: VarIndexLdVar
  loc_CADF09: PopAd
  loc_CADF0B: LitI4 2
  loc_CADF10: FLdPr Me
  loc_CADF13: MemLdFPR8 global_268
  loc_CADF16: FLdPr Me
  loc_CADF19: MemLdFPR8 global_276
  loc_CADF1C: AddR8
  loc_CADF1D: FLdPr Me
  loc_CADF20: MemLdFPR8 global_320
  loc_CADF23: SubR4
  loc_CADF24: FLdPr Me
  loc_CADF27: MemLdFPR8 global_328
  loc_CADF2A: SubR4
  loc_CADF2B: FLdPr Me
  loc_CADF2E: MemLdFPR8 global_284
  loc_CADF31: AddR8
  loc_CADF32: FLdRfVar var_AC
  loc_CADF35: FnCDblVar
  loc_CADF37: AddR8
  loc_CADF38: CVarR8
  loc_CADF3C: FLdRfVar var_11C
  loc_CADF3F: ImpAdCallFPR4  = Round(, )
  loc_CADF44: FLdRfVar var_11C
  loc_CADF47: CR4Var
  loc_CADF48: FLdPr Me
  loc_CADF4B: MemStFPR8 global_292
  loc_CADF4E: FFreeVar var_AC = "": var_C4 = ""
  loc_CADF57: Branch loc_CAEF4C
  loc_CADF5A: FLdRfVar var_AC
  loc_CADF5D: FLdRfVar var_C8
  loc_CADF60: LitVarStr var_EC, "MecaTifa"
  loc_CADF65: PopAdLdVar
  loc_CADF66: FLdRfVar var_B0
  loc_CADF69: FLdRfVar var_98
  loc_CADF6C: FLdPr Me
  loc_CADF6F: MemLdRfVar from_stack_1.global_76
  loc_CADF72: NewIfNullPr clstipofapa
  loc_CADF75: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CADF7A: FLdPr var_98
  loc_CADF7D:  = Me.Fields
  loc_CADF82: FLdPr var_B0
  loc_CADF85: from_stack_2 = Me.Item(from_stack_1)
  loc_CADF8A: FLdPr var_C8
  loc_CADF8D:  = Me.Value
  loc_CADF92: FLdRfVar var_AC
  loc_CADF95: LitVarStr var_100, "Directo"
  loc_CADF9A: HardType
  loc_CADF9B: EqVarBool
  loc_CADF9D: FFreeAd var_98 = "": var_B0 = ""
  loc_CADFA6: FFree1Var var_AC = ""
  loc_CADFA9: BranchF loc_CAEC51
  loc_CADFAC: FLdRfVar var_9C
  loc_CADFAF: FLdPr Me
  loc_CADFB2: VCallAd Control_ID_CodiTifaTxt
  loc_CADFB5: FStAdFunc var_98
  loc_CADFB8: FLdPr var_98
  loc_CADFBB:  = Me.Text
  loc_CADFC0: ILdRf var_9C
  loc_CADFC3: CI2Str
  loc_CADFC5: LitI2_Byte &H65
  loc_CADFC7: EqI2
  loc_CADFC8: FFree1Str var_9C
  loc_CADFCB: FFree1Ad var_98
  loc_CADFCE: BranchF loc_CAE9CF
  loc_CADFD1: FLdPr Me
  loc_CADFD4: MemLdI2 global_96
  loc_CADFD7: LitI2_Byte 1
  loc_CADFD9: GeI2
  loc_CADFDA: FLdPr Me
  loc_CADFDD: MemLdI2 global_96
  loc_CADFE0: LitI2_Byte 9
  loc_CADFE2: LeI2
  loc_CADFE3: AndI4
  loc_CADFE4: BranchF loc_CADFF3
  loc_CADFE7: LitI2_Byte 9
  loc_CADFE9: CR8I2
  loc_CADFEA: FLdPr Me
  loc_CADFED: MemStFPR8 global_156
  loc_CADFF0: Branch loc_CAE09A
  loc_CADFF3: FLdPr Me
  loc_CADFF6: MemLdI2 global_96
  loc_CADFF9: LitI2_Byte &HA
  loc_CADFFB: GeI2
  loc_CADFFC: FLdPr Me
  loc_CADFFF: MemLdI2 global_96
  loc_CAE002: LitI2_Byte &HE
  loc_CAE004: LeI2
  loc_CAE005: AndI4
  loc_CAE006: BranchF loc_CAE015
  loc_CAE009: LitI2_Byte 8
  loc_CAE00B: CR8I2
  loc_CAE00C: FLdPr Me
  loc_CAE00F: MemStFPR8 global_156
  loc_CAE012: Branch loc_CAE09A
  loc_CAE015: FLdPr Me
  loc_CAE018: MemLdI2 global_96
  loc_CAE01B: LitI2_Byte &HF
  loc_CAE01D: GeI2
  loc_CAE01E: FLdPr Me
  loc_CAE021: MemLdI2 global_96
  loc_CAE024: LitI2_Byte &H13
  loc_CAE026: LeI2
  loc_CAE027: AndI4
  loc_CAE028: BranchF loc_CAE037
  loc_CAE02B: LitI2_Byte 7
  loc_CAE02D: CR8I2
  loc_CAE02E: FLdPr Me
  loc_CAE031: MemStFPR8 global_156
  loc_CAE034: Branch loc_CAE09A
  loc_CAE037: FLdPr Me
  loc_CAE03A: MemLdI2 global_96
  loc_CAE03D: LitI2_Byte &H14
  loc_CAE03F: GeI2
  loc_CAE040: FLdPr Me
  loc_CAE043: MemLdI2 global_96
  loc_CAE046: LitI2_Byte &H18
  loc_CAE048: LeI2
  loc_CAE049: AndI4
  loc_CAE04A: BranchF loc_CAE059
  loc_CAE04D: LitI2_Byte 6
  loc_CAE04F: CR8I2
  loc_CAE050: FLdPr Me
  loc_CAE053: MemStFPR8 global_156
  loc_CAE056: Branch loc_CAE09A
  loc_CAE059: FLdPr Me
  loc_CAE05C: MemLdI2 global_96
  loc_CAE05F: LitI2_Byte &H19
  loc_CAE061: GeI2
  loc_CAE062: FLdPr Me
  loc_CAE065: MemLdI2 global_96
  loc_CAE068: LitI2_Byte &H1D
  loc_CAE06A: LeI2
  loc_CAE06B: AndI4
  loc_CAE06C: BranchF loc_CAE07B
  loc_CAE06F: LitI2_Byte 5
  loc_CAE071: CR8I2
  loc_CAE072: FLdPr Me
  loc_CAE075: MemStFPR8 global_156
  loc_CAE078: Branch loc_CAE09A
  loc_CAE07B: FLdPr Me
  loc_CAE07E: MemLdI2 global_96
  loc_CAE081: LitI2_Byte &H1E
  loc_CAE083: GeI2
  loc_CAE084: FLdPr Me
  loc_CAE087: MemLdI2 global_96
  loc_CAE08A: LitI2_Byte &H24
  loc_CAE08C: LeI2
  loc_CAE08D: AndI4
  loc_CAE08E: BranchF loc_CAE09A
  loc_CAE091: LitI2_Byte 4
  loc_CAE093: CR8I2
  loc_CAE094: FLdPr Me
  loc_CAE097: MemStFPR8 global_156
  loc_CAE09A: FLdRfVar var_9C
  loc_CAE09D: FLdPr Me
  loc_CAE0A0: VCallAd Control_ID_DerechoTxt
  loc_CAE0A3: FStAdFunc var_98
  loc_CAE0A6: FLdPr var_98
  loc_CAE0A9:  = Me.Text
  loc_CAE0AE: LitI4 2
  loc_CAE0B3: ILdRf var_9C
  loc_CAE0B6: CR8Str
  loc_CAE0B8: FLdPr Me
  loc_CAE0BB: MemLdFPR8 global_156
  loc_CAE0BE: MulR8
  loc_CAE0BF: LitI2_Byte &H64
  loc_CAE0C1: CR8I2
  loc_CAE0C2: DivR8
  loc_CAE0C3: CVarR8
  loc_CAE0C7: FLdRfVar var_C4
  loc_CAE0CA: ImpAdCallFPR4  = Round(, )
  loc_CAE0CF: FLdRfVar var_C4
  loc_CAE0D2: CR4Var
  loc_CAE0D3: FLdPr Me
  loc_CAE0D6: MemStFPR8 global_196
  loc_CAE0D9: FFree1Str var_9C
  loc_CAE0DC: FFree1Ad var_98
  loc_CAE0DF: FFreeVar var_AC = ""
  loc_CAE0E6: FLdRfVar var_9C
  loc_CAE0E9: FLdPr Me
  loc_CAE0EC: VCallAd Control_ID_RecargoTxt
  loc_CAE0EF: FStAdFunc var_98
  loc_CAE0F2: FLdPr var_98
  loc_CAE0F5:  = Me.Text
  loc_CAE0FA: LitI4 2
  loc_CAE0FF: ILdRf var_9C
  loc_CAE102: CR8Str
  loc_CAE104: FLdPr Me
  loc_CAE107: MemLdFPR8 global_156
  loc_CAE10A: MulR8
  loc_CAE10B: LitI2_Byte &H64
  loc_CAE10D: CR8I2
  loc_CAE10E: DivR8
  loc_CAE10F: CVarR8
  loc_CAE113: FLdRfVar var_C4
  loc_CAE116: ImpAdCallFPR4  = Round(, )
  loc_CAE11B: FLdRfVar var_C4
  loc_CAE11E: CR4Var
  loc_CAE11F: FLdPr Me
  loc_CAE122: MemStFPR8 global_204
  loc_CAE125: FFree1Str var_9C
  loc_CAE128: FFree1Ad var_98
  loc_CAE12B: FFreeVar var_AC = ""
  loc_CAE132: FLdRfVar var_9C
  loc_CAE135: FLdPr Me
  loc_CAE138: VCallAd Control_ID_DescCapiTxt
  loc_CAE13B: FStAdFunc var_98
  loc_CAE13E: FLdPr var_98
  loc_CAE141:  = Me.Text
  loc_CAE146: LitI4 2
  loc_CAE14B: ILdRf var_9C
  loc_CAE14E: CR8Str
  loc_CAE150: FLdPr Me
  loc_CAE153: MemLdFPR8 global_156
  loc_CAE156: MulR8
  loc_CAE157: LitI2_Byte &H64
  loc_CAE159: CR8I2
  loc_CAE15A: DivR8
  loc_CAE15B: CVarR8
  loc_CAE15F: FLdRfVar var_C4
  loc_CAE162: ImpAdCallFPR4  = Round(, )
  loc_CAE167: FLdRfVar var_C4
  loc_CAE16A: CR4Var
  loc_CAE16B: FLdPr Me
  loc_CAE16E: MemStFPR8 global_212
  loc_CAE171: FFree1Str var_9C
  loc_CAE174: FFree1Ad var_98
  loc_CAE177: FFreeVar var_AC = ""
  loc_CAE17E: FLdRfVar var_9C
  loc_CAE181: FLdPr Me
  loc_CAE184: VCallAd Control_ID_DescRecaTxt
  loc_CAE187: FStAdFunc var_98
  loc_CAE18A: FLdPr var_98
  loc_CAE18D:  = Me.Text
  loc_CAE192: LitI4 2
  loc_CAE197: ILdRf var_9C
  loc_CAE19A: CR8Str
  loc_CAE19C: FLdPr Me
  loc_CAE19F: MemLdFPR8 global_156
  loc_CAE1A2: MulR8
  loc_CAE1A3: LitI2_Byte &H64
  loc_CAE1A5: CR8I2
  loc_CAE1A6: DivR8
  loc_CAE1A7: CVarR8
  loc_CAE1AB: FLdRfVar var_C4
  loc_CAE1AE: ImpAdCallFPR4  = Round(, )
  loc_CAE1B3: FLdRfVar var_C4
  loc_CAE1B6: CR4Var
  loc_CAE1B7: FLdPr Me
  loc_CAE1BA: MemStFPR8 global_220
  loc_CAE1BD: FFree1Str var_9C
  loc_CAE1C0: FFree1Ad var_98
  loc_CAE1C3: FFreeVar var_AC = ""
  loc_CAE1CA: LitI4 2
  loc_CAE1CF: FLdPr Me
  loc_CAE1D2: MemLdFPR8 global_196
  loc_CAE1D5: FLdPr Me
  loc_CAE1D8: MemLdFPR8 global_204
  loc_CAE1DB: AddR8
  loc_CAE1DC: FLdPr Me
  loc_CAE1DF: MemLdFPR8 global_212
  loc_CAE1E2: SubR4
  loc_CAE1E3: FLdPr Me
  loc_CAE1E6: MemLdFPR8 global_220
  loc_CAE1E9: SubR4
  loc_CAE1EA: CVarR8
  loc_CAE1EE: FLdRfVar var_C4
  loc_CAE1F1: ImpAdCallFPR4  = Round(, )
  loc_CAE1F6: FLdRfVar var_C4
  loc_CAE1F9: CR4Var
  loc_CAE1FA: FLdPr Me
  loc_CAE1FD: MemStFPR8 global_164
  loc_CAE200: FFreeVar var_AC = ""
  loc_CAE207: FLdPr Me
  loc_CAE20A: MemLdFPR8 global_172
  loc_CAE20D: FLdPr Me
  loc_CAE210: MemLdFPR8 global_164
  loc_CAE213: GtR4
  loc_CAE214: BranchF loc_CAE4A7
  loc_CAE217: LitI4 2
  loc_CAE21C: FLdPr Me
  loc_CAE21F: MemLdRfVar from_stack_1.global_172
  loc_CAE222: CVarRef
  loc_CAE227: FLdRfVar var_AC
  loc_CAE22A: ImpAdCallFPR4  = Round(, )
  loc_CAE22F: LitI4 1
  loc_CAE234: LitI4 1
  loc_CAE239: LitVarStr var_100, "0.00"
  loc_CAE23E: FStVarCopyObj var_C4
  loc_CAE241: FLdRfVar var_C4
  loc_CAE244: FLdRfVar var_AC
  loc_CAE247: FLdRfVar var_11C
  loc_CAE24A: ImpAdCallFPR4  = Format(, )
  loc_CAE24F: FLdRfVar var_11C
  loc_CAE252: CStrVarVal var_9C
  loc_CAE256: FLdPr Me
  loc_CAE259: VCallAd Control_ID_AnticipoTxt
  loc_CAE25C: FStAdFunc var_98
  loc_CAE25F: FLdPr var_98
  loc_CAE262: Me.Text = from_stack_1
  loc_CAE267: FFree1Str var_9C
  loc_CAE26A: FFree1Ad var_98
  loc_CAE26D: FFreeVar var_AC = "": var_C4 = ""
  loc_CAE276: FLdRfVar var_9C
  loc_CAE279: FLdPr Me
  loc_CAE27C: VCallAd Control_ID_AnticipoTxt
  loc_CAE27F: FStAdFunc var_98
  loc_CAE282: FLdPr var_98
  loc_CAE285:  = Me.Text
  loc_CAE28A: FLdRfVar var_B4
  loc_CAE28D: FLdPr Me
  loc_CAE290: VCallAd Control_ID_DerechoTxt
  loc_CAE293: FStAdFunc var_B0
  loc_CAE296: FLdPr var_B0
  loc_CAE299:  = Me.Text
  loc_CAE29E: FLdRfVar var_CC
  loc_CAE2A1: FLdPr Me
  loc_CAE2A4: VCallAd Control_ID_RecargoTxt
  loc_CAE2A7: FStAdFunc var_C8
  loc_CAE2AA: FLdPr var_C8
  loc_CAE2AD:  = Me.Text
  loc_CAE2B2: FLdRfVar var_D4
  loc_CAE2B5: FLdPr Me
  loc_CAE2B8: VCallAd Control_ID_DescCapiTxt
  loc_CAE2BB: FStAdFunc var_D0
  loc_CAE2BE: FLdPr var_D0
  loc_CAE2C1:  = Me.Text
  loc_CAE2C6: FLdRfVar var_DC
  loc_CAE2C9: FLdPr Me
  loc_CAE2CC: VCallAd Control_ID_DescRecaTxt
  loc_CAE2CF: FStAdFunc var_D8
  loc_CAE2D2: FLdPr var_D8
  loc_CAE2D5:  = Me.Text
  loc_CAE2DA: LitI4 2
  loc_CAE2DF: ILdRf var_9C
  loc_CAE2E2: CR8Str
  loc_CAE2E4: LitI2_Byte &H64
  loc_CAE2E6: CR8I2
  loc_CAE2E7: MulR8
  loc_CAE2E8: ILdRf var_B4
  loc_CAE2EB: CR8Str
  loc_CAE2ED: ILdRf var_CC
  loc_CAE2F0: CR8Str
  loc_CAE2F2: AddR8
  loc_CAE2F3: ILdRf var_D4
  loc_CAE2F6: CR8Str
  loc_CAE2F8: SubR4
  loc_CAE2F9: ILdRf var_DC
  loc_CAE2FC: CR8Str
  loc_CAE2FE: SubR4
  loc_CAE2FF: DivR8
  loc_CAE300: CVarR8
  loc_CAE304: FLdRfVar var_C4
  loc_CAE307: ImpAdCallFPR4  = Round(, )
  loc_CAE30C: FLdRfVar var_C4
  loc_CAE30F: CR4Var
  loc_CAE310: FLdPr Me
  loc_CAE313: MemStFPR8 global_156
  loc_CAE316: FFreeStr var_9C = "": var_B4 = "": var_CC = "": var_D4 = ""
  loc_CAE323: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_D0 = ""
  loc_CAE330: FFreeVar var_AC = ""
  loc_CAE337: FLdRfVar var_9C
  loc_CAE33A: FLdPr Me
  loc_CAE33D: VCallAd Control_ID_DerechoTxt
  loc_CAE340: FStAdFunc var_98
  loc_CAE343: FLdPr var_98
  loc_CAE346:  = Me.Text
  loc_CAE34B: LitI4 2
  loc_CAE350: ILdRf var_9C
  loc_CAE353: CR8Str
  loc_CAE355: FLdPr Me
  loc_CAE358: MemLdFPR8 global_156
  loc_CAE35B: MulR8
  loc_CAE35C: LitI2_Byte &H64
  loc_CAE35E: CR8I2
  loc_CAE35F: DivR8
  loc_CAE360: CVarR8
  loc_CAE364: FLdRfVar var_C4
  loc_CAE367: ImpAdCallFPR4  = Round(, )
  loc_CAE36C: FLdRfVar var_C4
  loc_CAE36F: CR4Var
  loc_CAE370: FLdPr Me
  loc_CAE373: MemStFPR8 global_196
  loc_CAE376: FFree1Str var_9C
  loc_CAE379: FFree1Ad var_98
  loc_CAE37C: FFreeVar var_AC = ""
  loc_CAE383: FLdRfVar var_9C
  loc_CAE386: FLdPr Me
  loc_CAE389: VCallAd Control_ID_RecargoTxt
  loc_CAE38C: FStAdFunc var_98
  loc_CAE38F: FLdPr var_98
  loc_CAE392:  = Me.Text
  loc_CAE397: LitI4 2
  loc_CAE39C: ILdRf var_9C
  loc_CAE39F: CR8Str
  loc_CAE3A1: FLdPr Me
  loc_CAE3A4: MemLdFPR8 global_156
  loc_CAE3A7: MulR8
  loc_CAE3A8: LitI2_Byte &H64
  loc_CAE3AA: CR8I2
  loc_CAE3AB: DivR8
  loc_CAE3AC: CVarR8
  loc_CAE3B0: FLdRfVar var_C4
  loc_CAE3B3: ImpAdCallFPR4  = Round(, )
  loc_CAE3B8: FLdRfVar var_C4
  loc_CAE3BB: CR4Var
  loc_CAE3BC: FLdPr Me
  loc_CAE3BF: MemStFPR8 global_204
  loc_CAE3C2: FFree1Str var_9C
  loc_CAE3C5: FFree1Ad var_98
  loc_CAE3C8: FFreeVar var_AC = ""
  loc_CAE3CF: FLdRfVar var_9C
  loc_CAE3D2: FLdPr Me
  loc_CAE3D5: VCallAd Control_ID_DescCapiTxt
  loc_CAE3D8: FStAdFunc var_98
  loc_CAE3DB: FLdPr var_98
  loc_CAE3DE:  = Me.Text
  loc_CAE3E3: LitI4 2
  loc_CAE3E8: ILdRf var_9C
  loc_CAE3EB: CR8Str
  loc_CAE3ED: FLdPr Me
  loc_CAE3F0: MemLdFPR8 global_156
  loc_CAE3F3: MulR8
  loc_CAE3F4: LitI2_Byte &H64
  loc_CAE3F6: CR8I2
  loc_CAE3F7: DivR8
  loc_CAE3F8: CVarR8
  loc_CAE3FC: FLdRfVar var_C4
  loc_CAE3FF: ImpAdCallFPR4  = Round(, )
  loc_CAE404: FLdRfVar var_C4
  loc_CAE407: CR4Var
  loc_CAE408: FLdPr Me
  loc_CAE40B: MemStFPR8 global_212
  loc_CAE40E: FFree1Str var_9C
  loc_CAE411: FFree1Ad var_98
  loc_CAE414: FFreeVar var_AC = ""
  loc_CAE41B: FLdRfVar var_9C
  loc_CAE41E: FLdPr Me
  loc_CAE421: VCallAd Control_ID_DescRecaTxt
  loc_CAE424: FStAdFunc var_98
  loc_CAE427: FLdPr var_98
  loc_CAE42A:  = Me.Text
  loc_CAE42F: LitI4 2
  loc_CAE434: ILdRf var_9C
  loc_CAE437: CR8Str
  loc_CAE439: FLdPr Me
  loc_CAE43C: MemLdFPR8 global_156
  loc_CAE43F: MulR8
  loc_CAE440: LitI2_Byte &H64
  loc_CAE442: CR8I2
  loc_CAE443: DivR8
  loc_CAE444: CVarR8
  loc_CAE448: FLdRfVar var_C4
  loc_CAE44B: ImpAdCallFPR4  = Round(, )
  loc_CAE450: FLdRfVar var_C4
  loc_CAE453: CR4Var
  loc_CAE454: FLdPr Me
  loc_CAE457: MemStFPR8 global_220
  loc_CAE45A: FFree1Str var_9C
  loc_CAE45D: FFree1Ad var_98
  loc_CAE460: FFreeVar var_AC = ""
  loc_CAE467: LitI4 2
  loc_CAE46C: FLdPr Me
  loc_CAE46F: MemLdFPR8 global_196
  loc_CAE472: FLdPr Me
  loc_CAE475: MemLdFPR8 global_204
  loc_CAE478: AddR8
  loc_CAE479: FLdPr Me
  loc_CAE47C: MemLdFPR8 global_212
  loc_CAE47F: SubR4
  loc_CAE480: FLdPr Me
  loc_CAE483: MemLdFPR8 global_220
  loc_CAE486: SubR4
  loc_CAE487: CVarR8
  loc_CAE48B: FLdRfVar var_C4
  loc_CAE48E: ImpAdCallFPR4  = Round(, )
  loc_CAE493: FLdRfVar var_C4
  loc_CAE496: CR4Var
  loc_CAE497: FLdPr Me
  loc_CAE49A: MemStFPR8 global_164
  loc_CAE49D: FFreeVar var_AC = ""
  loc_CAE4A4: Branch loc_CAE4F4
  loc_CAE4A7: LitI4 1
  loc_CAE4AC: LitI4 1
  loc_CAE4B1: LitVarStr var_100, "0.00"
  loc_CAE4B6: FStVarCopyObj var_AC
  loc_CAE4B9: FLdRfVar var_AC
  loc_CAE4BC: FLdPr Me
  loc_CAE4BF: MemLdRfVar from_stack_1.global_164
  loc_CAE4C2: CVarRef
  loc_CAE4C7: FLdRfVar var_C4
  loc_CAE4CA: ImpAdCallFPR4  = Format(, )
  loc_CAE4CF: FLdRfVar var_C4
  loc_CAE4D2: CStrVarVal var_9C
  loc_CAE4D6: FLdPr Me
  loc_CAE4D9: VCallAd Control_ID_AnticipoTxt
  loc_CAE4DC: FStAdFunc var_98
  loc_CAE4DF: FLdPr var_98
  loc_CAE4E2: Me.Text = from_stack_1
  loc_CAE4E7: FFree1Str var_9C
  loc_CAE4EA: FFree1Ad var_98
  loc_CAE4ED: FFreeVar var_AC = ""
  loc_CAE4F4: LitI4 2
  loc_CAE4F9: FLdPr Me
  loc_CAE4FC: MemLdFPR8 global_196
  loc_CAE4FF: FLdPr Me
  loc_CAE502: MemLdFPR8 global_204
  loc_CAE505: AddR8
  loc_CAE506: FLdPr Me
  loc_CAE509: MemLdFPR8 global_212
  loc_CAE50C: SubR4
  loc_CAE50D: FLdPr Me
  loc_CAE510: MemLdFPR8 global_220
  loc_CAE513: SubR4
  loc_CAE514: CVarR8
  loc_CAE518: FLdRfVar var_C4
  loc_CAE51B: ImpAdCallFPR4  = Round(, )
  loc_CAE520: FLdRfVar var_C4
  loc_CAE523: FLdPr Me
  loc_CAE526: MemLdFPR8 global_164
  loc_CAE529: CVarR8
  loc_CAE52D: HardType
  loc_CAE52E: LtVarBool
  loc_CAE530: FFreeVar var_AC = ""
  loc_CAE537: BranchF loc_CAE5A8
  loc_CAE53A: FLdRfVar var_9C
  loc_CAE53D: FLdPr Me
  loc_CAE540: VCallAd Control_ID_AnticipoTxt
  loc_CAE543: FStAdFunc var_98
  loc_CAE546: FLdPr var_98
  loc_CAE549:  = Me.Text
  loc_CAE54E: FLdPr Me
  loc_CAE551: MemLdFPR8 global_196
  loc_CAE554: ILdRf var_9C
  loc_CAE557: CR8Str
  loc_CAE559: AddR8
  loc_CAE55A: CVarR8
  loc_CAE55E: LitI4 2
  loc_CAE563: FLdPr Me
  loc_CAE566: MemLdFPR8 global_196
  loc_CAE569: FLdPr Me
  loc_CAE56C: MemLdFPR8 global_204
  loc_CAE56F: AddR8
  loc_CAE570: FLdPr Me
  loc_CAE573: MemLdFPR8 global_212
  loc_CAE576: SubR4
  loc_CAE577: FLdPr Me
  loc_CAE57A: MemLdFPR8 global_220
  loc_CAE57D: SubR4
  loc_CAE57E: CVarR8
  loc_CAE582: FLdRfVar var_C4
  loc_CAE585: ImpAdCallFPR4  = Round(, )
  loc_CAE58A: FLdRfVar var_C4
  loc_CAE58D: SubVar var_11C
  loc_CAE591: CR4Var
  loc_CAE592: FLdPr Me
  loc_CAE595: MemStFPR8 global_196
  loc_CAE598: FFree1Str var_9C
  loc_CAE59B: FFree1Ad var_98
  loc_CAE59E: FFreeVar var_AC = ""
  loc_CAE5A5: Branch loc_CAE660
  loc_CAE5A8: LitI4 2
  loc_CAE5AD: FLdPr Me
  loc_CAE5B0: MemLdFPR8 global_196
  loc_CAE5B3: FLdPr Me
  loc_CAE5B6: MemLdFPR8 global_204
  loc_CAE5B9: AddR8
  loc_CAE5BA: FLdPr Me
  loc_CAE5BD: MemLdFPR8 global_212
  loc_CAE5C0: SubR4
  loc_CAE5C1: FLdPr Me
  loc_CAE5C4: MemLdFPR8 global_220
  loc_CAE5C7: SubR4
  loc_CAE5C8: CVarR8
  loc_CAE5CC: FLdRfVar var_C4
  loc_CAE5CF: ImpAdCallFPR4  = Round(, )
  loc_CAE5D4: FLdRfVar var_C4
  loc_CAE5D7: FLdPr Me
  loc_CAE5DA: MemLdFPR8 global_164
  loc_CAE5DD: CVarR8
  loc_CAE5E1: HardType
  loc_CAE5E2: GtVarBool
  loc_CAE5E4: FFreeVar var_AC = ""
  loc_CAE5EB: BranchF loc_CAE660
  loc_CAE5EE: FLdPr Me
  loc_CAE5F1: MemLdFPR8 global_196
  loc_CAE5F4: CVarR8
  loc_CAE5F8: LitI4 2
  loc_CAE5FD: FLdPr Me
  loc_CAE600: MemLdFPR8 global_196
  loc_CAE603: FLdPr Me
  loc_CAE606: MemLdFPR8 global_204
  loc_CAE609: AddR8
  loc_CAE60A: FLdPr Me
  loc_CAE60D: MemLdFPR8 global_212
  loc_CAE610: SubR4
  loc_CAE611: FLdPr Me
  loc_CAE614: MemLdFPR8 global_220
  loc_CAE617: SubR4
  loc_CAE618: CVarR8
  loc_CAE61C: FLdRfVar var_C4
  loc_CAE61F: ImpAdCallFPR4  = Round(, )
  loc_CAE624: FLdRfVar var_C4
  loc_CAE627: FLdRfVar var_9C
  loc_CAE62A: FLdPr Me
  loc_CAE62D: VCallAd Control_ID_AnticipoTxt
  loc_CAE630: FStAdFunc var_98
  loc_CAE633: FLdPr var_98
  loc_CAE636:  = Me.Text
  loc_CAE63B: ILdRf var_9C
  loc_CAE63E: CR8Str
  loc_CAE640: CVarR8
  loc_CAE644: SubVar var_11C
  loc_CAE648: SubVar var_13C
  loc_CAE64C: CR4Var
  loc_CAE64D: FLdPr Me
  loc_CAE650: MemStFPR8 global_196
  loc_CAE653: FFree1Str var_9C
  loc_CAE656: FFree1Ad var_98
  loc_CAE659: FFreeVar var_AC = ""
  loc_CAE660: FLdRfVar var_9C
  loc_CAE663: FLdPr Me
  loc_CAE666: VCallAd Control_ID_DerechoTxt
  loc_CAE669: FStAdFunc var_98
  loc_CAE66C: FLdPr var_98
  loc_CAE66F:  = Me.Text
  loc_CAE674: ILdRf var_9C
  loc_CAE677: CR8Str
  loc_CAE679: FLdPr Me
  loc_CAE67C: MemLdFPR8 global_196
  loc_CAE67F: SubR4
  loc_CAE680: FLdPr Me
  loc_CAE683: MemStFPR8 global_228
  loc_CAE686: FFree1Str var_9C
  loc_CAE689: FFree1Ad var_98
  loc_CAE68C: FLdRfVar var_9C
  loc_CAE68F: FLdPr Me
  loc_CAE692: VCallAd Control_ID_DescCapiTxt
  loc_CAE695: FStAdFunc var_98
  loc_CAE698: FLdPr var_98
  loc_CAE69B:  = Me.Text
  loc_CAE6A0: FLdPr Me
  loc_CAE6A3: MemLdFPR8 global_212
  loc_CAE6A6: ILdRf var_9C
  loc_CAE6A9: CR8Str
  loc_CAE6AB: AddR8
  loc_CAE6AC: FLdPr Me
  loc_CAE6AF: MemStFPR8 global_236
  loc_CAE6B2: FFree1Str var_9C
  loc_CAE6B5: FFree1Ad var_98
  loc_CAE6B8: FLdRfVar var_9C
  loc_CAE6BB: FLdPr Me
  loc_CAE6BE: VCallAd Control_ID_RecargoTxt
  loc_CAE6C1: FStAdFunc var_98
  loc_CAE6C4: FLdPr var_98
  loc_CAE6C7:  = Me.Text
  loc_CAE6CC: ILdRf var_9C
  loc_CAE6CF: CR8Str
  loc_CAE6D1: FLdPr Me
  loc_CAE6D4: MemLdFPR8 global_204
  loc_CAE6D7: SubR4
  loc_CAE6D8: FLdPr Me
  loc_CAE6DB: MemStFPR8 global_244
  loc_CAE6DE: FFree1Str var_9C
  loc_CAE6E1: FFree1Ad var_98
  loc_CAE6E4: FLdRfVar var_9C
  loc_CAE6E7: FLdPr Me
  loc_CAE6EA: VCallAd Control_ID_DescRecaTxt
  loc_CAE6ED: FStAdFunc var_98
  loc_CAE6F0: FLdPr var_98
  loc_CAE6F3:  = Me.Text
  loc_CAE6F8: FLdPr Me
  loc_CAE6FB: MemLdFPR8 global_220
  loc_CAE6FE: ILdRf var_9C
  loc_CAE701: CR8Str
  loc_CAE703: AddR8
  loc_CAE704: FLdPr Me
  loc_CAE707: MemStFPR8 global_252
  loc_CAE70A: FFree1Str var_9C
  loc_CAE70D: FFree1Ad var_98
  loc_CAE710: LitI4 2
  loc_CAE715: FLdPr Me
  loc_CAE718: MemLdFPR8 global_228
  loc_CAE71B: FLdPr Me
  loc_CAE71E: MemLdFPR8 global_244
  loc_CAE721: AddR8
  loc_CAE722: FLdPr Me
  loc_CAE725: MemLdFPR8 global_236
  loc_CAE728: SubR4
  loc_CAE729: FLdPr Me
  loc_CAE72C: MemLdFPR8 global_252
  loc_CAE72F: SubR4
  loc_CAE730: CVarR8
  loc_CAE734: FLdRfVar var_C4
  loc_CAE737: ImpAdCallFPR4  = Round(, )
  loc_CAE73C: FLdRfVar var_C4
  loc_CAE73F: CR4Var
  loc_CAE740: FLdPr Me
  loc_CAE743: MemStFPR8 global_308
  loc_CAE746: FFreeVar var_AC = ""
  loc_CAE74D: FLdRfVar var_AC
  loc_CAE750: FLdRfVar var_C8
  loc_CAE753: LitVarStr var_EC, "MecaTifa"
  loc_CAE758: PopAdLdVar
  loc_CAE759: FLdRfVar var_B0
  loc_CAE75C: FLdRfVar var_98
  loc_CAE75F: FLdPr Me
  loc_CAE762: MemLdRfVar from_stack_1.global_76
  loc_CAE765: NewIfNullPr clstipofapa
  loc_CAE768: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAE76D: FLdPr var_98
  loc_CAE770:  = Me.Fields
  loc_CAE775: FLdPr var_B0
  loc_CAE778: from_stack_2 = Me.Item(from_stack_1)
  loc_CAE77D: FLdPr var_C8
  loc_CAE780:  = Me.Value
  loc_CAE785: FLdRfVar var_C4
  loc_CAE788: FLdRfVar var_104
  loc_CAE78B: LitVarStr var_100, "InteTifa"
  loc_CAE790: PopAdLdVar
  loc_CAE791: FLdRfVar var_D8
  loc_CAE794: FLdRfVar var_D0
  loc_CAE797: FLdPr Me
  loc_CAE79A: MemLdRfVar from_stack_1.global_76
  loc_CAE79D: NewIfNullPr clstipofapa
  loc_CAE7A0: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAE7A5: FLdPr var_D0
  loc_CAE7A8:  = Me.Fields
  loc_CAE7AD: FLdPr var_D8
  loc_CAE7B0: from_stack_2 = Me.Item(from_stack_1)
  loc_CAE7B5: FLdPr var_104
  loc_CAE7B8:  = Me.Value
  loc_CAE7BD: FLdPr Me
  loc_CAE7C0: MemLdR8 global_308
  loc_CAE7C3: FLdRfVar var_C4
  loc_CAE7C6: CR4Var
  loc_CAE7C7: PopFPR8
  loc_CAE7C8: FLdRfVar var_AC
  loc_CAE7CB: CStrVarTmp
  loc_CAE7CC: FStStrNoPop var_9C
  loc_CAE7CF: FLdPr Me
  loc_CAE7D2: MemLdI2 global_96
  loc_CAE7D5: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_CAE7DA: CVarRef
  loc_CAE7DF: FStVar var_94
  loc_CAE7E3: FFree1Str var_9C
  loc_CAE7E6: FFreeAd var_98 = "": var_B0 = "": var_D0 = "": var_D8 = "": var_C8 = ""
  loc_CAE7F5: FFreeVar var_AC = ""
  loc_CAE7FC: LitI4 2
  loc_CAE801: FLdPr Me
  loc_CAE804: MemLdFPR8 global_228
  loc_CAE807: FLdPr Me
  loc_CAE80A: MemLdI2 global_96
  loc_CAE80D: CR8I2
  loc_CAE80E: DivR8
  loc_CAE80F: CVarR8
  loc_CAE813: FLdRfVar var_C4
  loc_CAE816: ImpAdCallFPR4  = Round(, )
  loc_CAE81B: FLdRfVar var_C4
  loc_CAE81E: CR4Var
  loc_CAE81F: FLdPr Me
  loc_CAE822: MemStFPR8 global_268
  loc_CAE825: FFreeVar var_AC = ""
  loc_CAE82C: LitI4 2
  loc_CAE831: FLdPr Me
  loc_CAE834: MemLdFPR8 global_244
  loc_CAE837: FLdPr Me
  loc_CAE83A: MemLdI2 global_96
  loc_CAE83D: CR8I2
  loc_CAE83E: DivR8
  loc_CAE83F: CVarR8
  loc_CAE843: FLdRfVar var_C4
  loc_CAE846: ImpAdCallFPR4  = Round(, )
  loc_CAE84B: FLdRfVar var_C4
  loc_CAE84E: CR4Var
  loc_CAE84F: FLdPr Me
  loc_CAE852: MemStFPR8 global_276
  loc_CAE855: FFreeVar var_AC = ""
  loc_CAE85C: FLdRfVar var_AC
  loc_CAE85F: FLdRfVar var_C8
  loc_CAE862: LitVarStr var_EC, "DecaTifa"
  loc_CAE867: PopAdLdVar
  loc_CAE868: FLdRfVar var_B0
  loc_CAE86B: FLdRfVar var_98
  loc_CAE86E: FLdPr Me
  loc_CAE871: MemLdRfVar from_stack_1.global_76
  loc_CAE874: NewIfNullPr clstipofapa
  loc_CAE877: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAE87C: FLdPr var_98
  loc_CAE87F:  = Me.Fields
  loc_CAE884: FLdPr var_B0
  loc_CAE887: from_stack_2 = Me.Item(from_stack_1)
  loc_CAE88C: FLdPr var_C8
  loc_CAE88F:  = Me.Value
  loc_CAE894: LitI4 2
  loc_CAE899: FLdPr Me
  loc_CAE89C: MemLdFPR8 global_268
  loc_CAE89F: FLdRfVar var_AC
  loc_CAE8A2: FnCDblVar
  loc_CAE8A4: MulR8
  loc_CAE8A5: LitI2_Byte &H64
  loc_CAE8A7: CR8I2
  loc_CAE8A8: DivR8
  loc_CAE8A9: CVarR8
  loc_CAE8AD: FLdRfVar var_11C
  loc_CAE8B0: ImpAdCallFPR4  = Round(, )
  loc_CAE8B5: FLdRfVar var_11C
  loc_CAE8B8: CR4Var
  loc_CAE8B9: FLdPr Me
  loc_CAE8BC: MemStFPR8 global_320
  loc_CAE8BF: FFreeAd var_98 = "": var_B0 = ""
  loc_CAE8C8: FFreeVar var_AC = "": var_C4 = ""
  loc_CAE8D1: FLdRfVar var_AC
  loc_CAE8D4: FLdRfVar var_C8
  loc_CAE8D7: LitVarStr var_EC, "DereTifa"
  loc_CAE8DC: PopAdLdVar
  loc_CAE8DD: FLdRfVar var_B0
  loc_CAE8E0: FLdRfVar var_98
  loc_CAE8E3: FLdPr Me
  loc_CAE8E6: MemLdRfVar from_stack_1.global_76
  loc_CAE8E9: NewIfNullPr clstipofapa
  loc_CAE8EC: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAE8F1: FLdPr var_98
  loc_CAE8F4:  = Me.Fields
  loc_CAE8F9: FLdPr var_B0
  loc_CAE8FC: from_stack_2 = Me.Item(from_stack_1)
  loc_CAE901: FLdPr var_C8
  loc_CAE904:  = Me.Value
  loc_CAE909: LitI4 2
  loc_CAE90E: FLdPr Me
  loc_CAE911: MemLdFPR8 global_276
  loc_CAE914: FLdRfVar var_AC
  loc_CAE917: FnCDblVar
  loc_CAE919: MulR8
  loc_CAE91A: LitI2_Byte &H64
  loc_CAE91C: CR8I2
  loc_CAE91D: DivR8
  loc_CAE91E: CVarR8
  loc_CAE922: FLdRfVar var_11C
  loc_CAE925: ImpAdCallFPR4  = Round(, )
  loc_CAE92A: FLdRfVar var_11C
  loc_CAE92D: CR4Var
  loc_CAE92E: FLdPr Me
  loc_CAE931: MemStFPR8 global_328
  loc_CAE934: FFreeAd var_98 = "": var_B0 = ""
  loc_CAE93D: FFreeVar var_AC = "": var_C4 = ""
  loc_CAE946: LitI4 2
  loc_CAE94B: FLdPr Me
  loc_CAE94E: MemLdFPR8 global_260
  loc_CAE951: FLdPr Me
  loc_CAE954: MemLdI2 global_96
  loc_CAE957: CR8I2
  loc_CAE958: DivR8
  loc_CAE959: CVarR8
  loc_CAE95D: FLdRfVar var_C4
  loc_CAE960: ImpAdCallFPR4  = Round(, )
  loc_CAE965: FLdRfVar var_C4
  loc_CAE968: CR4Var
  loc_CAE969: FLdPr Me
  loc_CAE96C: MemStFPR8 global_284
  loc_CAE96F: FFreeVar var_AC = ""
  loc_CAE976: LitVarI2 var_EC, 1
  loc_CAE97B: PopAdLdVar
  loc_CAE97C: FLdRfVar var_94
  loc_CAE97F: VarIndexLdVar
  loc_CAE985: PopAd
  loc_CAE987: LitI4 2
  loc_CAE98C: FLdPr Me
  loc_CAE98F: MemLdFPR8 global_268
  loc_CAE992: FLdPr Me
  loc_CAE995: MemLdFPR8 global_276
  loc_CAE998: AddR8
  loc_CAE999: FLdPr Me
  loc_CAE99C: MemLdFPR8 global_320
  loc_CAE99F: SubR4
  loc_CAE9A0: FLdPr Me
  loc_CAE9A3: MemLdFPR8 global_328
  loc_CAE9A6: SubR4
  loc_CAE9A7: FLdRfVar var_AC
  loc_CAE9AA: FnCDblVar
  loc_CAE9AC: AddR8
  loc_CAE9AD: CVarR8
  loc_CAE9B1: FLdRfVar var_11C
  loc_CAE9B4: ImpAdCallFPR4  = Round(, )
  loc_CAE9B9: FLdRfVar var_11C
  loc_CAE9BC: CR4Var
  loc_CAE9BD: FLdPr Me
  loc_CAE9C0: MemStFPR8 global_292
  loc_CAE9C3: FFreeVar var_AC = "": var_C4 = ""
  loc_CAE9CC: Branch loc_CAEC4E
  loc_CAE9CF: FLdRfVar var_AC
  loc_CAE9D2: FLdRfVar var_C8
  loc_CAE9D5: LitVarStr var_EC, "MecaTifa"
  loc_CAE9DA: PopAdLdVar
  loc_CAE9DB: FLdRfVar var_B0
  loc_CAE9DE: FLdRfVar var_98
  loc_CAE9E1: FLdPr Me
  loc_CAE9E4: MemLdRfVar from_stack_1.global_76
  loc_CAE9E7: NewIfNullPr clstipofapa
  loc_CAE9EA: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAE9EF: FLdPr var_98
  loc_CAE9F2:  = Me.Fields
  loc_CAE9F7: FLdPr var_B0
  loc_CAE9FA: from_stack_2 = Me.Item(from_stack_1)
  loc_CAE9FF: FLdPr var_C8
  loc_CAEA02:  = Me.Value
  loc_CAEA07: FLdRfVar var_C4
  loc_CAEA0A: FLdRfVar var_104
  loc_CAEA0D: LitVarStr var_100, "InteTifa"
  loc_CAEA12: PopAdLdVar
  loc_CAEA13: FLdRfVar var_D8
  loc_CAEA16: FLdRfVar var_D0
  loc_CAEA19: FLdPr Me
  loc_CAEA1C: MemLdRfVar from_stack_1.global_76
  loc_CAEA1F: NewIfNullPr clstipofapa
  loc_CAEA22: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEA27: FLdPr var_D0
  loc_CAEA2A:  = Me.Fields
  loc_CAEA2F: FLdPr var_D8
  loc_CAEA32: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEA37: FLdPr var_104
  loc_CAEA3A:  = Me.Value
  loc_CAEA3F: FLdPr Me
  loc_CAEA42: MemLdR8 global_308
  loc_CAEA45: FLdRfVar var_C4
  loc_CAEA48: CR4Var
  loc_CAEA49: PopFPR8
  loc_CAEA4A: FLdRfVar var_AC
  loc_CAEA4D: CStrVarTmp
  loc_CAEA4E: FStStrNoPop var_9C
  loc_CAEA51: FLdPr Me
  loc_CAEA54: MemLdI2 global_96
  loc_CAEA57: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_CAEA5C: CVarRef
  loc_CAEA61: FStVar var_94
  loc_CAEA65: FFree1Str var_9C
  loc_CAEA68: FFreeAd var_98 = "": var_B0 = "": var_D0 = "": var_D8 = "": var_C8 = ""
  loc_CAEA77: FFreeVar var_AC = ""
  loc_CAEA7E: LitI4 2
  loc_CAEA83: FLdPr Me
  loc_CAEA86: MemLdFPR8 global_228
  loc_CAEA89: FLdPr Me
  loc_CAEA8C: MemLdI2 global_96
  loc_CAEA8F: CR8I2
  loc_CAEA90: DivR8
  loc_CAEA91: CVarR8
  loc_CAEA95: FLdRfVar var_C4
  loc_CAEA98: ImpAdCallFPR4  = Round(, )
  loc_CAEA9D: FLdRfVar var_C4
  loc_CAEAA0: CR4Var
  loc_CAEAA1: FLdPr Me
  loc_CAEAA4: MemStFPR8 global_268
  loc_CAEAA7: FFreeVar var_AC = ""
  loc_CAEAAE: LitI4 2
  loc_CAEAB3: FLdPr Me
  loc_CAEAB6: MemLdFPR8 global_244
  loc_CAEAB9: FLdPr Me
  loc_CAEABC: MemLdI2 global_96
  loc_CAEABF: CR8I2
  loc_CAEAC0: DivR8
  loc_CAEAC1: CVarR8
  loc_CAEAC5: FLdRfVar var_C4
  loc_CAEAC8: ImpAdCallFPR4  = Round(, )
  loc_CAEACD: FLdRfVar var_C4
  loc_CAEAD0: CR4Var
  loc_CAEAD1: FLdPr Me
  loc_CAEAD4: MemStFPR8 global_276
  loc_CAEAD7: FFreeVar var_AC = ""
  loc_CAEADE: FLdRfVar var_AC
  loc_CAEAE1: FLdRfVar var_C8
  loc_CAEAE4: LitVarStr var_EC, "DecaTifa"
  loc_CAEAE9: PopAdLdVar
  loc_CAEAEA: FLdRfVar var_B0
  loc_CAEAED: FLdRfVar var_98
  loc_CAEAF0: FLdPr Me
  loc_CAEAF3: MemLdRfVar from_stack_1.global_76
  loc_CAEAF6: NewIfNullPr clstipofapa
  loc_CAEAF9: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEAFE: FLdPr var_98
  loc_CAEB01:  = Me.Fields
  loc_CAEB06: FLdPr var_B0
  loc_CAEB09: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEB0E: FLdPr var_C8
  loc_CAEB11:  = Me.Value
  loc_CAEB16: LitI4 2
  loc_CAEB1B: FLdPr Me
  loc_CAEB1E: MemLdFPR8 global_268
  loc_CAEB21: FLdRfVar var_AC
  loc_CAEB24: FnCDblVar
  loc_CAEB26: MulR8
  loc_CAEB27: LitI2_Byte &H64
  loc_CAEB29: CR8I2
  loc_CAEB2A: DivR8
  loc_CAEB2B: CVarR8
  loc_CAEB2F: FLdRfVar var_11C
  loc_CAEB32: ImpAdCallFPR4  = Round(, )
  loc_CAEB37: FLdRfVar var_11C
  loc_CAEB3A: CR4Var
  loc_CAEB3B: FLdPr Me
  loc_CAEB3E: MemStFPR8 global_320
  loc_CAEB41: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEB4A: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEB53: FLdRfVar var_AC
  loc_CAEB56: FLdRfVar var_C8
  loc_CAEB59: LitVarStr var_EC, "DereTifa"
  loc_CAEB5E: PopAdLdVar
  loc_CAEB5F: FLdRfVar var_B0
  loc_CAEB62: FLdRfVar var_98
  loc_CAEB65: FLdPr Me
  loc_CAEB68: MemLdRfVar from_stack_1.global_76
  loc_CAEB6B: NewIfNullPr clstipofapa
  loc_CAEB6E: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEB73: FLdPr var_98
  loc_CAEB76:  = Me.Fields
  loc_CAEB7B: FLdPr var_B0
  loc_CAEB7E: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEB83: FLdPr var_C8
  loc_CAEB86:  = Me.Value
  loc_CAEB8B: LitI4 2
  loc_CAEB90: FLdPr Me
  loc_CAEB93: MemLdFPR8 global_276
  loc_CAEB96: FLdRfVar var_AC
  loc_CAEB99: FnCDblVar
  loc_CAEB9B: MulR8
  loc_CAEB9C: LitI2_Byte &H64
  loc_CAEB9E: CR8I2
  loc_CAEB9F: DivR8
  loc_CAEBA0: CVarR8
  loc_CAEBA4: FLdRfVar var_11C
  loc_CAEBA7: ImpAdCallFPR4  = Round(, )
  loc_CAEBAC: FLdRfVar var_11C
  loc_CAEBAF: CR4Var
  loc_CAEBB0: FLdPr Me
  loc_CAEBB3: MemStFPR8 global_328
  loc_CAEBB6: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEBBF: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEBC8: LitI4 2
  loc_CAEBCD: FLdPr Me
  loc_CAEBD0: MemLdFPR8 global_260
  loc_CAEBD3: FLdPr Me
  loc_CAEBD6: MemLdI2 global_96
  loc_CAEBD9: CR8I2
  loc_CAEBDA: DivR8
  loc_CAEBDB: CVarR8
  loc_CAEBDF: FLdRfVar var_C4
  loc_CAEBE2: ImpAdCallFPR4  = Round(, )
  loc_CAEBE7: FLdRfVar var_C4
  loc_CAEBEA: CR4Var
  loc_CAEBEB: FLdPr Me
  loc_CAEBEE: MemStFPR8 global_284
  loc_CAEBF1: FFreeVar var_AC = ""
  loc_CAEBF8: LitVarI2 var_EC, 1
  loc_CAEBFD: PopAdLdVar
  loc_CAEBFE: FLdRfVar var_94
  loc_CAEC01: VarIndexLdVar
  loc_CAEC07: PopAd
  loc_CAEC09: LitI4 2
  loc_CAEC0E: FLdPr Me
  loc_CAEC11: MemLdFPR8 global_268
  loc_CAEC14: FLdPr Me
  loc_CAEC17: MemLdFPR8 global_276
  loc_CAEC1A: AddR8
  loc_CAEC1B: FLdPr Me
  loc_CAEC1E: MemLdFPR8 global_320
  loc_CAEC21: SubR4
  loc_CAEC22: FLdPr Me
  loc_CAEC25: MemLdFPR8 global_328
  loc_CAEC28: SubR4
  loc_CAEC29: FLdRfVar var_AC
  loc_CAEC2C: FnCDblVar
  loc_CAEC2E: AddR8
  loc_CAEC2F: CVarR8
  loc_CAEC33: FLdRfVar var_11C
  loc_CAEC36: ImpAdCallFPR4  = Round(, )
  loc_CAEC3B: FLdRfVar var_11C
  loc_CAEC3E: CR4Var
  loc_CAEC3F: FLdPr Me
  loc_CAEC42: MemStFPR8 global_292
  loc_CAEC45: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEC4E: Branch loc_CAEF4C
  loc_CAEC51: FLdRfVar var_AC
  loc_CAEC54: FLdRfVar var_C8
  loc_CAEC57: LitVarStr var_EC, "MecaTifa"
  loc_CAEC5C: PopAdLdVar
  loc_CAEC5D: FLdRfVar var_B0
  loc_CAEC60: FLdRfVar var_98
  loc_CAEC63: FLdPr Me
  loc_CAEC66: MemLdRfVar from_stack_1.global_76
  loc_CAEC69: NewIfNullPr clstipofapa
  loc_CAEC6C: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEC71: FLdPr var_98
  loc_CAEC74:  = Me.Fields
  loc_CAEC79: FLdPr var_B0
  loc_CAEC7C: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEC81: FLdPr var_C8
  loc_CAEC84:  = Me.Value
  loc_CAEC89: FLdRfVar var_AC
  loc_CAEC8C: LitVarStr var_100, "Frances"
  loc_CAEC91: HardType
  loc_CAEC92: EqVarBool
  loc_CAEC94: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEC9D: FFree1Var var_AC = ""
  loc_CAECA0: BranchF loc_CAEF4C
  loc_CAECA3: LitI4 2
  loc_CAECA8: FLdPr Me
  loc_CAECAB: MemLdFPR8 global_244
  loc_CAECAE: LitI2_Byte &H64
  loc_CAECB0: CR8I2
  loc_CAECB1: MulR8
  loc_CAECB2: FLdPr Me
  loc_CAECB5: MemLdFPR8 global_228
  loc_CAECB8: FLdPr Me
  loc_CAECBB: MemLdFPR8 global_244
  loc_CAECBE: AddR8
  loc_CAECBF: DivR8
  loc_CAECC0: CVarR8
  loc_CAECC4: FLdRfVar var_C4
  loc_CAECC7: ImpAdCallFPR4  = Round(, )
  loc_CAECCC: FLdRfVar var_C4
  loc_CAECCF: CR4Var
  loc_CAECD0: FLdPr Me
  loc_CAECD3: MemStFPR8 global_300
  loc_CAECD6: FFreeVar var_AC = ""
  loc_CAECDD: FLdRfVar var_AC
  loc_CAECE0: FLdRfVar var_C8
  loc_CAECE3: LitVarStr var_EC, "MecaTifa"
  loc_CAECE8: PopAdLdVar
  loc_CAECE9: FLdRfVar var_B0
  loc_CAECEC: FLdRfVar var_98
  loc_CAECEF: FLdPr Me
  loc_CAECF2: MemLdRfVar from_stack_1.global_76
  loc_CAECF5: NewIfNullPr clstipofapa
  loc_CAECF8: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAECFD: FLdPr var_98
  loc_CAED00:  = Me.Fields
  loc_CAED05: FLdPr var_B0
  loc_CAED08: from_stack_2 = Me.Item(from_stack_1)
  loc_CAED0D: FLdPr var_C8
  loc_CAED10:  = Me.Value
  loc_CAED15: FLdRfVar var_C4
  loc_CAED18: FLdRfVar var_104
  loc_CAED1B: LitVarStr var_100, "InteTifa"
  loc_CAED20: PopAdLdVar
  loc_CAED21: FLdRfVar var_D8
  loc_CAED24: FLdRfVar var_D0
  loc_CAED27: FLdPr Me
  loc_CAED2A: MemLdRfVar from_stack_1.global_76
  loc_CAED2D: NewIfNullPr clstipofapa
  loc_CAED30: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAED35: FLdPr var_D0
  loc_CAED38:  = Me.Fields
  loc_CAED3D: FLdPr var_D8
  loc_CAED40: from_stack_2 = Me.Item(from_stack_1)
  loc_CAED45: FLdPr var_104
  loc_CAED48:  = Me.Value
  loc_CAED4D: FLdPr Me
  loc_CAED50: MemLdR8 global_308
  loc_CAED53: FLdRfVar var_C4
  loc_CAED56: CR4Var
  loc_CAED57: PopFPR8
  loc_CAED58: FLdRfVar var_AC
  loc_CAED5B: CStrVarTmp
  loc_CAED5C: FStStrNoPop var_9C
  loc_CAED5F: FLdPr Me
  loc_CAED62: MemLdI2 global_96
  loc_CAED65: ImpAdCallI2 Proc_272_41_BB2C08(, , , , , )
  loc_CAED6A: CVarRef
  loc_CAED6F: FStVar var_94
  loc_CAED73: FFree1Str var_9C
  loc_CAED76: FFreeAd var_98 = "": var_B0 = "": var_D0 = "": var_D8 = "": var_C8 = ""
  loc_CAED85: FFreeVar var_AC = ""
  loc_CAED8C: LitVarI2 var_EC, 2
  loc_CAED91: PopAdLdVar
  loc_CAED92: FLdRfVar var_94
  loc_CAED95: VarIndexLdVar
  loc_CAED9B: PopAd
  loc_CAED9D: LitI4 2
  loc_CAEDA2: FLdRfVar var_AC
  loc_CAEDA5: FLdPr Me
  loc_CAEDA8: MemLdFPR8 global_300
  loc_CAEDAB: CVarR8
  loc_CAEDAF: MulVar var_C4
  loc_CAEDB3: LitVarI2 var_158, 100
  loc_CAEDB8: DivVar var_11C
  loc_CAEDBC: FStVar var_13C
  loc_CAEDC0: FLdRfVar var_13C
  loc_CAEDC3: FLdRfVar var_168
  loc_CAEDC6: ImpAdCallFPR4  = Round(, )
  loc_CAEDCB: FLdRfVar var_168
  loc_CAEDCE: CR4Var
  loc_CAEDCF: FLdPr Me
  loc_CAEDD2: MemStFPR8 global_276
  loc_CAEDD5: FFreeVar var_AC = "": var_13C = ""
  loc_CAEDDE: LitVarI2 var_EC, 2
  loc_CAEDE3: PopAdLdVar
  loc_CAEDE4: FLdRfVar var_94
  loc_CAEDE7: VarIndexLdVar
  loc_CAEDED: FLdPr Me
  loc_CAEDF0: MemLdFPR8 global_276
  loc_CAEDF3: CVarR8
  loc_CAEDF7: SubVar var_C4
  loc_CAEDFB: CR4Var
  loc_CAEDFC: FLdPr Me
  loc_CAEDFF: MemStFPR8 global_268
  loc_CAEE02: FFree1Var var_AC = ""
  loc_CAEE05: FLdRfVar var_AC
  loc_CAEE08: FLdRfVar var_C8
  loc_CAEE0B: LitVarStr var_EC, "DecaTifa"
  loc_CAEE10: PopAdLdVar
  loc_CAEE11: FLdRfVar var_B0
  loc_CAEE14: FLdRfVar var_98
  loc_CAEE17: FLdPr Me
  loc_CAEE1A: MemLdRfVar from_stack_1.global_76
  loc_CAEE1D: NewIfNullPr clstipofapa
  loc_CAEE20: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEE25: FLdPr var_98
  loc_CAEE28:  = Me.Fields
  loc_CAEE2D: FLdPr var_B0
  loc_CAEE30: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEE35: FLdPr var_C8
  loc_CAEE38:  = Me.Value
  loc_CAEE3D: LitI4 2
  loc_CAEE42: FLdPr Me
  loc_CAEE45: MemLdFPR8 global_268
  loc_CAEE48: FLdRfVar var_AC
  loc_CAEE4B: FnCDblVar
  loc_CAEE4D: MulR8
  loc_CAEE4E: LitI2_Byte &H64
  loc_CAEE50: CR8I2
  loc_CAEE51: DivR8
  loc_CAEE52: CVarR8
  loc_CAEE56: FLdRfVar var_11C
  loc_CAEE59: ImpAdCallFPR4  = Round(, )
  loc_CAEE5E: FLdRfVar var_11C
  loc_CAEE61: CR4Var
  loc_CAEE62: FLdPr Me
  loc_CAEE65: MemStFPR8 global_320
  loc_CAEE68: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEE71: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEE7A: FLdRfVar var_AC
  loc_CAEE7D: FLdRfVar var_C8
  loc_CAEE80: LitVarStr var_EC, "DereTifa"
  loc_CAEE85: PopAdLdVar
  loc_CAEE86: FLdRfVar var_B0
  loc_CAEE89: FLdRfVar var_98
  loc_CAEE8C: FLdPr Me
  loc_CAEE8F: MemLdRfVar from_stack_1.global_76
  loc_CAEE92: NewIfNullPr clstipofapa
  loc_CAEE95: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEE9A: FLdPr var_98
  loc_CAEE9D:  = Me.Fields
  loc_CAEEA2: FLdPr var_B0
  loc_CAEEA5: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEEAA: FLdPr var_C8
  loc_CAEEAD:  = Me.Value
  loc_CAEEB2: LitI4 2
  loc_CAEEB7: FLdPr Me
  loc_CAEEBA: MemLdFPR8 global_276
  loc_CAEEBD: FLdRfVar var_AC
  loc_CAEEC0: FnCDblVar
  loc_CAEEC2: MulR8
  loc_CAEEC3: LitI2_Byte &H64
  loc_CAEEC5: CR8I2
  loc_CAEEC6: DivR8
  loc_CAEEC7: CVarR8
  loc_CAEECB: FLdRfVar var_11C
  loc_CAEECE: ImpAdCallFPR4  = Round(, )
  loc_CAEED3: FLdRfVar var_11C
  loc_CAEED6: CR4Var
  loc_CAEED7: FLdPr Me
  loc_CAEEDA: MemStFPR8 global_328
  loc_CAEEDD: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEEE6: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEEEF: LitVarI2 var_EC, 1
  loc_CAEEF4: PopAdLdVar
  loc_CAEEF5: FLdRfVar var_94
  loc_CAEEF8: VarIndexLdVar
  loc_CAEEFE: PopAd
  loc_CAEF00: LitI4 2
  loc_CAEF05: FLdPr Me
  loc_CAEF08: MemLdFPR8 global_268
  loc_CAEF0B: FLdPr Me
  loc_CAEF0E: MemLdFPR8 global_276
  loc_CAEF11: AddR8
  loc_CAEF12: FLdPr Me
  loc_CAEF15: MemLdFPR8 global_320
  loc_CAEF18: SubR4
  loc_CAEF19: FLdPr Me
  loc_CAEF1C: MemLdFPR8 global_328
  loc_CAEF1F: SubR4
  loc_CAEF20: FLdPr Me
  loc_CAEF23: MemLdFPR8 global_284
  loc_CAEF26: AddR8
  loc_CAEF27: FLdRfVar var_AC
  loc_CAEF2A: FnCDblVar
  loc_CAEF2C: AddR8
  loc_CAEF2D: CVarR8
  loc_CAEF31: FLdRfVar var_11C
  loc_CAEF34: ImpAdCallFPR4  = Round(, )
  loc_CAEF39: FLdRfVar var_11C
  loc_CAEF3C: CR4Var
  loc_CAEF3D: FLdPr Me
  loc_CAEF40: MemStFPR8 global_292
  loc_CAEF43: FFreeVar var_AC = "": var_C4 = ""
  loc_CAEF4C: FLdRfVar var_AC
  loc_CAEF4F: FLdRfVar var_C8
  loc_CAEF52: LitVarStr var_EC, "ImmiTifa"
  loc_CAEF57: PopAdLdVar
  loc_CAEF58: FLdRfVar var_B0
  loc_CAEF5B: FLdRfVar var_98
  loc_CAEF5E: FLdPr Me
  loc_CAEF61: MemLdRfVar from_stack_1.global_76
  loc_CAEF64: NewIfNullPr clstipofapa
  loc_CAEF67: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEF6C: FLdPr var_98
  loc_CAEF6F:  = Me.Fields
  loc_CAEF74: FLdPr var_B0
  loc_CAEF77: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEF7C: FLdPr var_C8
  loc_CAEF7F:  = Me.Value
  loc_CAEF84: FLdRfVar var_AC
  loc_CAEF87: FnCDblVar
  loc_CAEF89: LitI2_Byte 0
  loc_CAEF8B: CR8I2
  loc_CAEF8C: NeR8
  loc_CAEF8D: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEF96: FFree1Var var_AC = ""
  loc_CAEF99: BranchF loc_CAF153
  loc_CAEF9C: FLdRfVar var_AC
  loc_CAEF9F: FLdRfVar var_C8
  loc_CAEFA2: LitVarStr var_EC, "ImmiTifa"
  loc_CAEFA7: PopAdLdVar
  loc_CAEFA8: FLdRfVar var_B0
  loc_CAEFAB: FLdRfVar var_98
  loc_CAEFAE: FLdPr Me
  loc_CAEFB1: MemLdRfVar from_stack_1.global_76
  loc_CAEFB4: NewIfNullPr clstipofapa
  loc_CAEFB7: from_stack_1v = clstipofapa.RsFrmGet()
  loc_CAEFBC: FLdPr var_98
  loc_CAEFBF:  = Me.Fields
  loc_CAEFC4: FLdPr var_B0
  loc_CAEFC7: from_stack_2 = Me.Item(from_stack_1)
  loc_CAEFCC: FLdPr var_C8
  loc_CAEFCF:  = Me.Value
  loc_CAEFD4: FLdPr Me
  loc_CAEFD7: MemLdFPR8 global_292
  loc_CAEFDA: FLdRfVar var_AC
  loc_CAEFDD: FnCDblVar
  loc_CAEFDF: GeR8
  loc_CAEFE0: FFreeAd var_98 = "": var_B0 = ""
  loc_CAEFE9: FFree1Var var_AC = ""
  loc_CAEFEC: BranchF loc_CAF150
  loc_CAEFEF: FLdRfVar var_9C
  loc_CAEFF2: FLdPr Me
  loc_CAEFF5: VCallAd Control_ID_CuotApreTxt
  loc_CAEFF8: FStAdFunc var_98
  loc_CAEFFB: FLdPr var_98
  loc_CAEFFE:  = Me.Text
  loc_CAF003: ILdRf var_9C
  loc_CAF006: CI2Str
  loc_CAF008: LitI2_Byte 0
  loc_CAF00A: GtI2
  loc_CAF00B: FFree1Str var_9C
  loc_CAF00E: FFree1Ad var_98
  loc_CAF011: BranchF loc_CAF0C8
  loc_CAF014: FLdPr Me
  loc_CAF017: MemLdI2 global_96
  loc_CAF01A: FLdRfVar var_9C
  loc_CAF01D: FLdPr Me
  loc_CAF020: VCallAd Control_ID_CuotApreTxt
  loc_CAF023: FStAdFunc var_98
  loc_CAF026: FLdPr var_98
  loc_CAF029:  = Me.Text
  loc_CAF02E: ILdRf var_9C
  loc_CAF031: CI2Str
  loc_CAF033: GeI2
  loc_CAF034: FFree1Str var_9C
  loc_CAF037: FFree1Ad var_98
  loc_CAF03A: BranchF loc_CAF0C5
  loc_CAF03D: FLdPr Me
  loc_CAF040: MemLdI2 global_96
  loc_CAF043: CVarI2 var_EC
  loc_CAF046: LitI4 9
  loc_CAF04B: FLdRfVar var_AC
  loc_CAF04E: ImpAdCallFPR4  = Chr()
  loc_CAF053: FLdRfVar var_AC
  loc_CAF056: ConcatVar var_C4
  loc_CAF05A: LitI4 1
  loc_CAF05F: LitI4 1
  loc_CAF064: LitVarStr var_12C, "0.00"
  loc_CAF069: FStVarCopyObj var_11C
  loc_CAF06C: FLdRfVar var_11C
  loc_CAF06F: FLdPr Me
  loc_CAF072: MemLdRfVar from_stack_1.global_292
  loc_CAF075: CVarRef
  loc_CAF07A: FLdRfVar var_13C
  loc_CAF07D: ImpAdCallFPR4  = Format(, )
  loc_CAF082: FLdRfVar var_13C
  loc_CAF085: ConcatVar var_168
  loc_CAF089: CStrVarTmp
  loc_CAF08A: FStStrNoPop var_9C
  loc_CAF08D: FLdPr Me
  loc_CAF090: MemStStrCopy
  loc_CAF094: FFree1Str var_9C
  loc_CAF097: FFreeVar var_AC = "": var_11C = "": var_C4 = "": var_13C = ""
  loc_CAF0A4: FLdPr Me
  loc_CAF0A7: MemLdRfVar from_stack_1.global_56
  loc_CAF0AA: CDargRef
  loc_CAF0AE: FLdPr Me
  loc_CAF0B1: VCallAd Control_ID_CuotasFlex
  loc_CAF0B4: FStAdFunc var_98
  loc_CAF0B7: FLdPr var_98
  loc_CAF0BA: LateIdCall
  loc_CAF0C2: FFree1Ad var_98
  loc_CAF0C5: Branch loc_CAF150
  loc_CAF0C8: FLdPr Me
  loc_CAF0CB: MemLdI2 global_96
  loc_CAF0CE: CVarI2 var_EC
  loc_CAF0D1: LitI4 9
  loc_CAF0D6: FLdRfVar var_AC
  loc_CAF0D9: ImpAdCallFPR4  = Chr()
  loc_CAF0DE: FLdRfVar var_AC
  loc_CAF0E1: ConcatVar var_C4
  loc_CAF0E5: LitI4 1
  loc_CAF0EA: LitI4 1
  loc_CAF0EF: LitVarStr var_12C, "0.00"
  loc_CAF0F4: FStVarCopyObj var_11C
  loc_CAF0F7: FLdRfVar var_11C
  loc_CAF0FA: FLdPr Me
  loc_CAF0FD: MemLdRfVar from_stack_1.global_292
  loc_CAF100: CVarRef
  loc_CAF105: FLdRfVar var_13C
  loc_CAF108: ImpAdCallFPR4  = Format(, )
  loc_CAF10D: FLdRfVar var_13C
  loc_CAF110: ConcatVar var_168
  loc_CAF114: CStrVarTmp
  loc_CAF115: FStStrNoPop var_9C
  loc_CAF118: FLdPr Me
  loc_CAF11B: MemStStrCopy
  loc_CAF11F: FFree1Str var_9C
  loc_CAF122: FFreeVar var_AC = "": var_11C = "": var_C4 = "": var_13C = ""
  loc_CAF12F: FLdPr Me
  loc_CAF132: MemLdRfVar from_stack_1.global_56
  loc_CAF135: CDargRef
  loc_CAF139: FLdPr Me
  loc_CAF13C: VCallAd Control_ID_CuotasFlex
  loc_CAF13F: FStAdFunc var_98
  loc_CAF142: FLdPr var_98
  loc_CAF145: LateIdCall
  loc_CAF14D: FFree1Ad var_98
  loc_CAF150: Branch loc_CAF2B4
  loc_CAF153: FLdRfVar var_9C
  loc_CAF156: FLdPr Me
  loc_CAF159: VCallAd Control_ID_CuotApreTxt
  loc_CAF15C: FStAdFunc var_98
  loc_CAF15F: FLdPr var_98
  loc_CAF162:  = Me.Text
  loc_CAF167: ILdRf var_9C
  loc_CAF16A: CI2Str
  loc_CAF16C: LitI2_Byte 0
  loc_CAF16E: GtI2
  loc_CAF16F: FFree1Str var_9C
  loc_CAF172: FFree1Ad var_98
  loc_CAF175: BranchF loc_CAF22C
  loc_CAF178: FLdPr Me
  loc_CAF17B: MemLdI2 global_96
  loc_CAF17E: FLdRfVar var_9C
  loc_CAF181: FLdPr Me
  loc_CAF184: VCallAd Control_ID_CuotApreTxt
  loc_CAF187: FStAdFunc var_98
  loc_CAF18A: FLdPr var_98
  loc_CAF18D:  = Me.Text
  loc_CAF192: ILdRf var_9C
  loc_CAF195: CI2Str
  loc_CAF197: GeI2
  loc_CAF198: FFree1Str var_9C
  loc_CAF19B: FFree1Ad var_98
  loc_CAF19E: BranchF loc_CAF229
  loc_CAF1A1: FLdPr Me
  loc_CAF1A4: MemLdI2 global_96
  loc_CAF1A7: CVarI2 var_EC
  loc_CAF1AA: LitI4 9
  loc_CAF1AF: FLdRfVar var_AC
  loc_CAF1B2: ImpAdCallFPR4  = Chr()
  loc_CAF1B7: FLdRfVar var_AC
  loc_CAF1BA: ConcatVar var_C4
  loc_CAF1BE: LitI4 1
  loc_CAF1C3: LitI4 1
  loc_CAF1C8: LitVarStr var_12C, "0.00"
  loc_CAF1CD: FStVarCopyObj var_11C
  loc_CAF1D0: FLdRfVar var_11C
  loc_CAF1D3: FLdPr Me
  loc_CAF1D6: MemLdRfVar from_stack_1.global_292
  loc_CAF1D9: CVarRef
  loc_CAF1DE: FLdRfVar var_13C
  loc_CAF1E1: ImpAdCallFPR4  = Format(, )
  loc_CAF1E6: FLdRfVar var_13C
  loc_CAF1E9: ConcatVar var_168
  loc_CAF1ED: CStrVarTmp
  loc_CAF1EE: FStStrNoPop var_9C
  loc_CAF1F1: FLdPr Me
  loc_CAF1F4: MemStStrCopy
  loc_CAF1F8: FFree1Str var_9C
  loc_CAF1FB: FFreeVar var_AC = "": var_11C = "": var_C4 = "": var_13C = ""
  loc_CAF208: FLdPr Me
  loc_CAF20B: MemLdRfVar from_stack_1.global_56
  loc_CAF20E: CDargRef
  loc_CAF212: FLdPr Me
  loc_CAF215: VCallAd Control_ID_CuotasFlex
  loc_CAF218: FStAdFunc var_98
  loc_CAF21B: FLdPr var_98
  loc_CAF21E: LateIdCall
  loc_CAF226: FFree1Ad var_98
  loc_CAF229: Branch loc_CAF2B4
  loc_CAF22C: FLdPr Me
  loc_CAF22F: MemLdI2 global_96
  loc_CAF232: CVarI2 var_EC
  loc_CAF235: LitI4 9
  loc_CAF23A: FLdRfVar var_AC
  loc_CAF23D: ImpAdCallFPR4  = Chr()
  loc_CAF242: FLdRfVar var_AC
  loc_CAF245: ConcatVar var_C4
  loc_CAF249: LitI4 1
  loc_CAF24E: LitI4 1
  loc_CAF253: LitVarStr var_12C, "0.00"
  loc_CAF258: FStVarCopyObj var_11C
  loc_CAF25B: FLdRfVar var_11C
  loc_CAF25E: FLdPr Me
  loc_CAF261: MemLdRfVar from_stack_1.global_292
  loc_CAF264: CVarRef
  loc_CAF269: FLdRfVar var_13C
  loc_CAF26C: ImpAdCallFPR4  = Format(, )
  loc_CAF271: FLdRfVar var_13C
  loc_CAF274: ConcatVar var_168
  loc_CAF278: CStrVarTmp
  loc_CAF279: FStStrNoPop var_9C
  loc_CAF27C: FLdPr Me
  loc_CAF27F: MemStStrCopy
  loc_CAF283: FFree1Str var_9C
  loc_CAF286: FFreeVar var_AC = "": var_11C = "": var_C4 = "": var_13C = ""
  loc_CAF293: FLdPr Me
  loc_CAF296: MemLdRfVar from_stack_1.global_56
  loc_CAF299: CDargRef
  loc_CAF29D: FLdPr Me
  loc_CAF2A0: VCallAd Control_ID_CuotasFlex
  loc_CAF2A3: FStAdFunc var_98
  loc_CAF2A6: FLdPr var_98
  loc_CAF2A9: LateIdCall
  loc_CAF2B1: FFree1Ad var_98
  loc_CAF2B4: FLdPr Me
  loc_CAF2B7: MemLdRfVar from_stack_1.global_96
  loc_CAF2BA: NextI2 var_108, loc_CADC7F
  loc_CAF2BF: LitI4 0
  loc_CAF2C4: LitI4 1
  loc_CAF2C9: FLdRfVar var_16C
  loc_CAF2CC: Redim
  loc_CAF2D6: FLdPr Me
  loc_CAF2D9: VCallAd Control_ID_ctacteFlex
  loc_CAF2DC: CVarAd
  loc_CAF2E0: ParmAry1St
  loc_CAF2E6: FLdPr Me
  loc_CAF2E9: VCallAd Control_ID_SeleTodoChk
  loc_CAF2EC: CVarAd
  loc_CAF2F0: ParmAry1St
  loc_CAF2F6: FLdRfVar var_16C
  loc_CAF2F9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CAF2FE: FLdRfVar var_16C
  loc_CAF301: Erase
  loc_CAF302: LitVar_TRUE var_EC
  loc_CAF305: PopAdLdVar
  loc_CAF306: FLdPr Me
  loc_CAF309: VCallAd Control_ID_CuotasFlex
  loc_CAF30C: FStAdFunc var_98
  loc_CAF30F: FLdPr var_98
  loc_CAF312: LateIdSt
  loc_CAF317: FFree1Ad var_98
  loc_CAF31A: Branch loc_CAF337
  loc_CAF31D: LitStr "Seleccione la deuda para realizar el plan de pago"
  loc_CAF320: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CAF325: FLdPr Me
  loc_CAF328: VCallAd Control_ID_CodiTifaTxt
  loc_CAF32B: CVarAd
  loc_CAF32F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CAF334: FFree1Var var_AC = ""
  loc_CAF337: Branch loc_CAF354
  loc_CAF33A: LitStr "Debe ingresar el codigo del tipo de plan de pago"
  loc_CAF33D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CAF342: FLdPr Me
  loc_CAF345: VCallAd Control_ID_CodiTifaTxt
  loc_CAF348: CVarAd
  loc_CAF34C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CAF351: FFree1Var var_AC = ""
  loc_CAF354: ExitProcHresult
  loc_CAF357: CCyI2
End Sub

Private Sub CodiTifaTxt_GotFocus() 'A70D60
  'Data Table: 52F1AC
  loc_A70CF8: FLdPr Me
  loc_A70CFB: VCallAd Control_ID_CodiTifaTxt
  loc_A70CFE: CVarAd
  loc_A70D02: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A70D07: FFree1Var var_94 = ""
  loc_A70D0A: Call Proc_187_53_A855B4()
  loc_A70D0F: Call Proc_187_52_AF19AC()
  loc_A70D14: LitI4 1
  loc_A70D19: LitI4 1
  loc_A70D1E: LitVarStr var_B4, "0.00"
  loc_A70D23: FStVarCopyObj var_C4
  loc_A70D26: FLdRfVar var_C4
  loc_A70D29: LitVarI2 var_94, 0
  loc_A70D2E: FLdRfVar var_D4
  loc_A70D31: ImpAdCallFPR4  = Format(, )
  loc_A70D36: FLdRfVar var_D4
  loc_A70D39: CStrVarVal var_D8
  loc_A70D3D: FLdPr Me
  loc_A70D40: VCallAd Control_ID_InteresTxt
  loc_A70D43: FStAdFunc var_DC
  loc_A70D46: FLdPr var_DC
  loc_A70D49: Me.Text = from_stack_1
  loc_A70D4E: FFree1Str var_D8
  loc_A70D51: FFree1Ad var_DC
  loc_A70D54: FFreeVar var_94 = "": var_C4 = ""
  loc_A70D5D: ExitProcHresult
  loc_A70D5E: ExitProcI2
End Sub

Private Sub CodiTifaTxt_KeyPress(KeyAscii As Integer) 'ADAEF4
  'Data Table: 52F1AC
  loc_ADADB8: LitStr "0123456789 "
  loc_ADADBB: FStStrCopy var_88
  loc_ADADBE: FLdRfVar var_88
  loc_ADADC1: ILdRf KeyAscii
  loc_ADADC4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_ADADC9: IStI2 KeyAscii
  loc_ADADCC: FFree1Str var_88
  loc_ADADCF: ILdI2 KeyAscii
  loc_ADADD2: LitI2_Byte &H20
  loc_ADADD4: EqI2
  loc_ADADD5: BranchF loc_ADAEF3
  loc_ADADD8: LitI2_Byte 0
  loc_ADADDA: IStI2 KeyAscii
  loc_ADADDD: LitVar_Missing var_A8
  loc_ADADE0: PopAdLdVar
  loc_ADADE1: LitVarI4
  loc_ADADE9: PopAdLdVar
  loc_ADADEA: ImpAdLdRf MemVar_D94A38
  loc_ADADED: NewIfNullPr dlgBuscarTipoFacilidadPago
  loc_ADADF0: dlgBuscarTipoFacilidadPago.Show from_stack_1, from_stack_2
  loc_ADADF5: FLdRfVar var_B0
  loc_ADADF8: FLdRfVar var_AC
  loc_ADADFB: ImpAdLdRf MemVar_D94A38
  loc_ADADFE: NewIfNullPr dlgBuscarTipoFacilidadPago
  loc_ADAE01: from_stack_1v = dlgBuscarTipoFacilidadPago.global_4257932Get()
  loc_ADAE06: FLdPr var_AC
  loc_ADAE09: from_stack_1 = clsbase.RecordCount
  loc_ADAE0E: ILdRf var_B0
  loc_ADAE11: LitI4 0
  loc_ADAE16: GtI4
  loc_ADAE17: FFree1Ad var_AC
  loc_ADAE1A: BranchF loc_ADAEF3
  loc_ADAE1D: FLdRfVar var_CC
  loc_ADAE20: FLdRfVar var_BC
  loc_ADAE23: LitVarStr var_98, "CodiTifa"
  loc_ADAE28: PopAdLdVar
  loc_ADAE29: FLdRfVar var_B8
  loc_ADAE2C: FLdRfVar var_B4
  loc_ADAE2F: FLdRfVar var_AC
  loc_ADAE32: ImpAdLdRf MemVar_D94A38
  loc_ADAE35: NewIfNullPr dlgBuscarTipoFacilidadPago
  loc_ADAE38: from_stack_1v = dlgBuscarTipoFacilidadPago.global_4257932Get()
  loc_ADAE3D: FLdPr var_AC
  loc_ADAE40: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAE45: FLdPr var_B4
  loc_ADAE48:  = Me.Fields
  loc_ADAE4D: FLdPr var_B8
  loc_ADAE50: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAE55: FLdPr var_BC
  loc_ADAE58:  = Me.Value
  loc_ADAE5D: FLdRfVar var_CC
  loc_ADAE60: CStrVarTmp
  loc_ADAE61: FStStrNoPop var_88
  loc_ADAE64: FLdPr Me
  loc_ADAE67: VCallAd Control_ID_CodiTifaTxt
  loc_ADAE6A: FStAdFunc var_D0
  loc_ADAE6D: FLdPr var_D0
  loc_ADAE70: Me.Text = from_stack_1
  loc_ADAE75: FFree1Str var_88
  loc_ADAE78: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADAE85: FFree1Var var_CC = ""
  loc_ADAE88: FLdRfVar var_CC
  loc_ADAE8B: FLdRfVar var_BC
  loc_ADAE8E: LitVarStr var_98, "DetaTifa"
  loc_ADAE93: PopAdLdVar
  loc_ADAE94: FLdRfVar var_B8
  loc_ADAE97: FLdRfVar var_B4
  loc_ADAE9A: FLdRfVar var_AC
  loc_ADAE9D: ImpAdLdRf MemVar_D94A38
  loc_ADAEA0: NewIfNullPr dlgBuscarTipoFacilidadPago
  loc_ADAEA3: from_stack_1v = dlgBuscarTipoFacilidadPago.global_4257932Get()
  loc_ADAEA8: FLdPr var_AC
  loc_ADAEAB: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAEB0: FLdPr var_B4
  loc_ADAEB3:  = Me.Fields
  loc_ADAEB8: FLdPr var_B8
  loc_ADAEBB: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAEC0: FLdPr var_BC
  loc_ADAEC3:  = Me.Value
  loc_ADAEC8: FLdRfVar var_CC
  loc_ADAECB: CStrVarTmp
  loc_ADAECC: FStStrNoPop var_88
  loc_ADAECF: FLdPr Me
  loc_ADAED2: VCallAd Control_ID_DetaTifaLbl
  loc_ADAED5: FStAdFunc var_D0
  loc_ADAED8: FLdPr var_D0
  loc_ADAEDB: Me.Caption = from_stack_1
  loc_ADAEE0: FFree1Str var_88
  loc_ADAEE3: FFreeAd var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_ADAEF0: FFree1Var var_CC = ""
  loc_ADAEF3: ExitProcHresult
End Sub

Private Sub CodiTifaTxt_Validate(Cancel As Boolean) 'C518F8
  'Data Table: 52F1AC
  loc_C50AD0: FLdRfVar var_8A
  loc_C50AD3: FLdPr Me
  loc_C50AD6: VCallAd Control_ID_CodiTifaTxt
  loc_C50AD9: FStAdFunc var_88
  loc_C50ADC: FLdPr var_88
  loc_C50ADF:  = Me.Enabled
  loc_C50AE4: FLdI2 var_8A
  loc_C50AE7: FFree1Ad var_88
  loc_C50AEA: BranchF loc_C518F5
  loc_C50AED: FLdRfVar var_90
  loc_C50AF0: FLdPr Me
  loc_C50AF3: VCallAd Control_ID_TotalTxt
  loc_C50AF6: FStAdFunc var_88
  loc_C50AF9: FLdPr var_88
  loc_C50AFC:  = Me.Text
  loc_C50B01: ILdRf var_90
  loc_C50B04: CR8Str
  loc_C50B06: LitI2_Byte 0
  loc_C50B08: CR8I2
  loc_C50B09: EqR4
  loc_C50B0A: FFree1Str var_90
  loc_C50B0D: FFree1Ad var_88
  loc_C50B10: BranchF loc_C50B38
  loc_C50B13: LitStr "No existe deuda seleccionada"
  loc_C50B16: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C50B1B: FLdPr Me
  loc_C50B1E: VCallAd Control_ID_ctacteFlex
  loc_C50B21: FStAdFunc var_88
  loc_C50B24: FLdPr var_88
  loc_C50B27: LateIdCall
  loc_C50B2F: FFree1Ad var_88
  loc_C50B32: LitI2_Byte &HFF
  loc_C50B34: IStI2 Cancel
  loc_C50B37: ExitProcHresult
  loc_C50B38: FLdRfVar var_90
  loc_C50B3B: FLdPr Me
  loc_C50B3E: VCallAd Control_ID_CodiTifaTxt
  loc_C50B41: FStAdFunc var_88
  loc_C50B44: FLdPr var_88
  loc_C50B47:  = Me.Text
  loc_C50B4C: ILdRf var_90
  loc_C50B4F: ImpAdCallI2 Proc_18_71_AB801C()
  loc_C50B54: FStStrNoPop var_94
  loc_C50B57: FLdPr Me
  loc_C50B5A: MemStStrCopy
  loc_C50B5E: FFreeStr var_90 = ""
  loc_C50B65: FFree1Ad var_88
  loc_C50B68: FLdPr Me
  loc_C50B6B: MemLdStr global_368
  loc_C50B6E: LitStr vbNullString
  loc_C50B71: NeStr
  loc_C50B73: BranchF loc_C50B9C
  loc_C50B76: FLdPr Me
  loc_C50B79: MemLdStr global_368
  loc_C50B7C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C50B81: FLdPr Me
  loc_C50B84: VCallAd Control_ID_CodiTifaTxt
  loc_C50B87: CVarAd
  loc_C50B8B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C50B90: FFree1Var var_A4 = ""
  loc_C50B93: LitI2_Byte &HFF
  loc_C50B95: IStI2 Cancel
  loc_C50B98: ExitProcHresult
  loc_C50B99: Branch loc_C518F5
  loc_C50B9C: LitStr "SELECT tipofapa.CodiTifa, DetaTifa, TipoTifa, NovaTifa, FealTifa, EmitTifa, ExpeTifa, ResoTifa, MecaTifa, InteTifa, MomiTifa, DecaTifa, DereTifa, TianTifa, AntiTifa, CuapTifa, CumiTifa, CumaTifa, ImmiTifa, CodiConc "
  loc_C50B9F: LitStr " FROM tipofapa "
  loc_C50BA2: ConcatStr
  loc_C50BA3: FStStrNoPop var_90
  loc_C50BA6: LitStr " INNER JOIN infogov.usuariofaci ON infogov.usuariofaci.CodiTifa = tipofapa.CodiTifa "
  loc_C50BA9: ConcatStr
  loc_C50BAA: FStStrNoPop var_94
  loc_C50BAD: LitStr " WHERE tipofapa.CodiTifa = "
  loc_C50BB0: ConcatStr
  loc_C50BB1: FStStrNoPop var_AC
  loc_C50BB4: FLdRfVar var_A8
  loc_C50BB7: FLdPr Me
  loc_C50BBA: VCallAd Control_ID_CodiTifaTxt
  loc_C50BBD: FStAdFunc var_88
  loc_C50BC0: FLdPr var_88
  loc_C50BC3:  = Me.Text
  loc_C50BC8: ILdRf var_A8
  loc_C50BCB: ConcatStr
  loc_C50BCC: FStStrNoPop var_B0
  loc_C50BCF: LitStr " AND CodiUSua = '"
  loc_C50BD2: ConcatStr
  loc_C50BD3: FStStrNoPop var_B4
  loc_C50BD6: ImpAdLdI4 MemVar_D9302C
  loc_C50BD9: ConcatStr
  loc_C50BDA: FStStrNoPop var_B8
  loc_C50BDD: LitStr "' AND tipofapa.BajaFeho IS NULL ORDER BY tipofapa.CodiTifa"
  loc_C50BE0: ConcatStr
  loc_C50BE1: FStStrNoPop var_BC
  loc_C50BE4: FLdPr Me
  loc_C50BE7: MemLdRfVar from_stack_1.global_76
  loc_C50BEA: NewIfNullPr clstipofapa
  loc_C50BED: Call clstipofapa.RedefineRS(from_stack_1v)
  loc_C50BF2: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_C50C05: FFree1Ad var_88
  loc_C50C08: FLdRfVar var_C0
  loc_C50C0B: FLdRfVar var_88
  loc_C50C0E: FLdPr Me
  loc_C50C11: MemLdRfVar from_stack_1.global_76
  loc_C50C14: NewIfNullPr clstipofapa
  loc_C50C17: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50C1C: FLdPr var_88
  loc_C50C1F:  = Me.RecordCount
  loc_C50C24: ILdRf var_C0
  loc_C50C27: LitI4 0
  loc_C50C2C: GtI4
  loc_C50C2D: FFree1Ad var_88
  loc_C50C30: BranchF loc_C518D5
  loc_C50C33: FLdRfVar var_94
  loc_C50C36: FLdPr Me
  loc_C50C39: VCallAd Control_ID_RecargoTxt
  loc_C50C3C: FStAdFunc var_C4
  loc_C50C3F: FLdPr var_C4
  loc_C50C42:  = Me.Text
  loc_C50C47: FLdRfVar var_A4
  loc_C50C4A: FLdRfVar var_E0
  loc_C50C4D: LitVarStr var_DC, "MomiTifa"
  loc_C50C52: PopAdLdVar
  loc_C50C53: FLdRfVar var_CC
  loc_C50C56: FLdRfVar var_C8
  loc_C50C59: FLdPr Me
  loc_C50C5C: MemLdRfVar from_stack_1.global_76
  loc_C50C5F: NewIfNullPr clstipofapa
  loc_C50C62: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50C67: FLdPr var_C8
  loc_C50C6A:  = Me.Fields
  loc_C50C6F: FLdPr var_CC
  loc_C50C72: from_stack_2 = Me.Item(from_stack_1)
  loc_C50C77: FLdPr var_E0
  loc_C50C7A:  = Me.Value
  loc_C50C7F: FLdRfVar var_90
  loc_C50C82: FLdPr Me
  loc_C50C85: VCallAd Control_ID_DerechoTxt
  loc_C50C88: FStAdFunc var_88
  loc_C50C8B: FLdPr var_88
  loc_C50C8E:  = Me.Text
  loc_C50C93: ILdRf var_90
  loc_C50C96: CR8Str
  loc_C50C98: ILdRf var_94
  loc_C50C9B: CR8Str
  loc_C50C9D: AddR8
  loc_C50C9E: CR8R8
  loc_C50C9F: FLdRfVar var_A4
  loc_C50CA2: FnCDblVar
  loc_C50CA4: LtR8
  loc_C50CA5: FFreeStr var_90 = ""
  loc_C50CAC: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_C50CB9: FFree1Var var_A4 = ""
  loc_C50CBC: BranchF loc_C50D6E
  loc_C50CBF: FLdRfVar var_A4
  loc_C50CC2: FLdRfVar var_C8
  loc_C50CC5: LitVarStr var_DC, "MomiTifa"
  loc_C50CCA: PopAdLdVar
  loc_C50CCB: FLdRfVar var_C4
  loc_C50CCE: FLdRfVar var_88
  loc_C50CD1: FLdPr Me
  loc_C50CD4: MemLdRfVar from_stack_1.global_76
  loc_C50CD7: NewIfNullPr clstipofapa
  loc_C50CDA: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50CDF: FLdPr var_88
  loc_C50CE2:  = Me.Fields
  loc_C50CE7: FLdPr var_C4
  loc_C50CEA: from_stack_2 = Me.Item(from_stack_1)
  loc_C50CEF: FLdPr var_C8
  loc_C50CF2:  = Me.Value
  loc_C50CF7: LitVarStr var_140, "La Cuenta seleccionada debe tener como mínimo: $ "
  loc_C50CFC: LitI4 1
  loc_C50D01: LitI4 1
  loc_C50D06: LitVarStr var_110, "0.00"
  loc_C50D0B: FStVarCopyObj var_120
  loc_C50D0E: FLdRfVar var_120
  loc_C50D11: FLdRfVar var_A4
  loc_C50D14: FnCDblVar
  loc_C50D16: CVarR8
  loc_C50D1A: FLdRfVar var_130
  loc_C50D1D: ImpAdCallFPR4  = Format(, )
  loc_C50D22: FLdRfVar var_130
  loc_C50D25: ConcatVar var_150
  loc_C50D29: LitVarStr var_160, " de deuda de capital + recargo"
  loc_C50D2E: ConcatVar var_170
  loc_C50D32: CStrVarVal var_90
  loc_C50D36: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C50D3B: FFree1Str var_90
  loc_C50D3E: FFreeAd var_88 = "": var_C4 = ""
  loc_C50D47: FFreeVar var_A4 = "": var_100 = "": var_120 = "": var_130 = "": var_150 = ""
  loc_C50D56: FLdPr Me
  loc_C50D59: VCallAd Control_ID_CodiTifaTxt
  loc_C50D5C: CVarAd
  loc_C50D60: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C50D65: FFree1Var var_A4 = ""
  loc_C50D68: LitI2_Byte &HFF
  loc_C50D6A: IStI2 Cancel
  loc_C50D6D: ExitProcHresult
  loc_C50D6E: FLdRfVar var_A4
  loc_C50D71: FLdRfVar var_C8
  loc_C50D74: LitVarStr var_DC, "CodiTifa"
  loc_C50D79: PopAdLdVar
  loc_C50D7A: FLdRfVar var_C4
  loc_C50D7D: FLdRfVar var_88
  loc_C50D80: FLdPr Me
  loc_C50D83: MemLdRfVar from_stack_1.global_76
  loc_C50D86: NewIfNullPr clstipofapa
  loc_C50D89: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50D8E: FLdPr var_88
  loc_C50D91:  = Me.Fields
  loc_C50D96: FLdPr var_C4
  loc_C50D99: from_stack_2 = Me.Item(from_stack_1)
  loc_C50D9E: FLdPr var_C8
  loc_C50DA1:  = Me.Value
  loc_C50DA6: FLdRfVar var_A4
  loc_C50DA9: FnCIntVar
  loc_C50DAB: LitI2_Byte &H65
  loc_C50DAD: EqI2
  loc_C50DAE: FFreeAd var_88 = "": var_C4 = ""
  loc_C50DB7: FFree1Var var_A4 = ""
  loc_C50DBA: BranchF loc_C50DD6
  loc_C50DBD: LitI2_Byte &HFF
  loc_C50DBF: FLdPr Me
  loc_C50DC2: VCallAd Control_ID_AnticipoTxt
  loc_C50DC5: FStAdFunc var_88
  loc_C50DC8: FLdPr var_88
  loc_C50DCB: Me.Enabled = from_stack_1b
  loc_C50DD0: FFree1Ad var_88
  loc_C50DD3: Branch loc_C50E14
  loc_C50DD6: FLdPr Me
  loc_C50DD9: MemLdUI1 global_316
  loc_C50DDD: CI2UI1
  loc_C50DDF: LitI2_Byte 1
  loc_C50DE1: EqI2
  loc_C50DE2: BranchF loc_C50DFE
  loc_C50DE5: LitI2_Byte &HFF
  loc_C50DE7: FLdPr Me
  loc_C50DEA: VCallAd Control_ID_AnticipoTxt
  loc_C50DED: FStAdFunc var_88
  loc_C50DF0: FLdPr var_88
  loc_C50DF3: Me.Enabled = from_stack_1b
  loc_C50DF8: FFree1Ad var_88
  loc_C50DFB: Branch loc_C50E14
  loc_C50DFE: LitI2_Byte 0
  loc_C50E00: FLdPr Me
  loc_C50E03: VCallAd Control_ID_AnticipoTxt
  loc_C50E06: FStAdFunc var_88
  loc_C50E09: FLdPr var_88
  loc_C50E0C: Me.Enabled = from_stack_1b
  loc_C50E11: FFree1Ad var_88
  loc_C50E14: FLdRfVar var_A4
  loc_C50E17: FLdRfVar var_C8
  loc_C50E1A: LitVarStr var_DC, "DetaTifa"
  loc_C50E1F: PopAdLdVar
  loc_C50E20: FLdRfVar var_C4
  loc_C50E23: FLdRfVar var_88
  loc_C50E26: FLdPr Me
  loc_C50E29: MemLdRfVar from_stack_1.global_76
  loc_C50E2C: NewIfNullPr clstipofapa
  loc_C50E2F: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50E34: FLdPr var_88
  loc_C50E37:  = Me.Fields
  loc_C50E3C: FLdPr var_C4
  loc_C50E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C50E44: FLdPr var_C8
  loc_C50E47:  = Me.Value
  loc_C50E4C: FLdRfVar var_A4
  loc_C50E4F: CStrVarTmp
  loc_C50E50: FStStrNoPop var_90
  loc_C50E53: FLdPr Me
  loc_C50E56: VCallAd Control_ID_DetaTifaLbl
  loc_C50E59: FStAdFunc var_CC
  loc_C50E5C: FLdPr var_CC
  loc_C50E5F: Me.Caption = from_stack_1
  loc_C50E64: FFree1Str var_90
  loc_C50E67: FFreeAd var_88 = "": var_C4 = "": var_C8 = ""
  loc_C50E72: FFree1Var var_A4 = ""
  loc_C50E75: FLdRfVar var_C8
  loc_C50E78: LitVarStr var_DC, "InteTifa"
  loc_C50E7D: PopAdLdVar
  loc_C50E7E: FLdRfVar var_C4
  loc_C50E81: FLdRfVar var_88
  loc_C50E84: FLdPr Me
  loc_C50E87: MemLdRfVar from_stack_1.global_76
  loc_C50E8A: NewIfNullPr clstipofapa
  loc_C50E8D: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50E92: FLdPr var_88
  loc_C50E95:  = Me.Fields
  loc_C50E9A: FLdPr var_C4
  loc_C50E9D: from_stack_2 = Me.Item(from_stack_1)
  loc_C50EA2: LitI4 1
  loc_C50EA7: LitI4 1
  loc_C50EAC: LitVarStr var_F0, "0.00"
  loc_C50EB1: FStVarCopyObj var_100
  loc_C50EB4: FLdRfVar var_100
  loc_C50EB7: FLdZeroAd var_C8
  loc_C50EBA: CVarAd
  loc_C50EBE: FLdRfVar var_120
  loc_C50EC1: ImpAdCallFPR4  = Format(, )
  loc_C50EC6: FLdRfVar var_120
  loc_C50EC9: CStrVarVal var_90
  loc_C50ECD: FLdPr Me
  loc_C50ED0: VCallAd Control_ID_InteTifaLbl
  loc_C50ED3: FStAdFunc var_CC
  loc_C50ED6: FLdPr var_CC
  loc_C50ED9: Me.Caption = from_stack_1
  loc_C50EDE: FFree1Str var_90
  loc_C50EE1: FFreeAd var_88 = "": var_C4 = ""
  loc_C50EEA: FFreeVar var_A4 = "": var_100 = ""
  loc_C50EF3: FLdRfVar var_A4
  loc_C50EF6: FLdRfVar var_C8
  loc_C50EF9: LitVarStr var_DC, "MecaTifa"
  loc_C50EFE: PopAdLdVar
  loc_C50EFF: FLdRfVar var_C4
  loc_C50F02: FLdRfVar var_88
  loc_C50F05: FLdPr Me
  loc_C50F08: MemLdRfVar from_stack_1.global_76
  loc_C50F0B: NewIfNullPr clstipofapa
  loc_C50F0E: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C50F13: FLdPr var_88
  loc_C50F16:  = Me.Fields
  loc_C50F1B: FLdPr var_C4
  loc_C50F1E: from_stack_2 = Me.Item(from_stack_1)
  loc_C50F23: FLdPr var_C8
  loc_C50F26:  = Me.Value
  loc_C50F2B: FLdRfVar var_A4
  loc_C50F2E: CStrVarTmp
  loc_C50F2F: FStStrNoPop var_90
  loc_C50F32: FLdPr Me
  loc_C50F35: VCallAd Control_ID_MecaTifaLbl
  loc_C50F38: FStAdFunc var_CC
  loc_C50F3B: FLdPr var_CC
  loc_C50F3E: Me.Caption = from_stack_1
  loc_C50F43: FFree1Str var_90
  loc_C50F46: FFreeAd var_88 = "": var_C4 = "": var_C8 = ""
  loc_C50F51: FFree1Var var_A4 = ""
  loc_C50F54: FLdRfVar var_90
  loc_C50F57: FLdPr Me
  loc_C50F5A: VCallAd Control_ID_ApremioTxt
  loc_C50F5D: FStAdFunc var_88
  loc_C50F60: FLdPr var_88
  loc_C50F63:  = Me.Text
  loc_C50F68: ILdRf var_90
  loc_C50F6B: CR8Str
  loc_C50F6D: LitI2_Byte 0
  loc_C50F6F: CR8I2
  loc_C50F70: GtR4
  loc_C50F71: FFree1Str var_90
  loc_C50F74: FFree1Ad var_88
  loc_C50F77: BranchF loc_C50FEC
  loc_C50F7A: LitI4 0
  loc_C50F7F: LitI4 0
  loc_C50F84: FLdRfVar var_174
  loc_C50F87: Redim
  loc_C50F91: FLdPr Me
  loc_C50F94: VCallAd Control_ID_CuotApreTxt
  loc_C50F97: CVarAd
  loc_C50F9B: ParmAry1St
  loc_C50FA1: FLdRfVar var_174
  loc_C50FA4: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C50FA9: FLdRfVar var_174
  loc_C50FAC: Erase
  loc_C50FAD: FLdRfVar var_90
  loc_C50FB0: FLdPr Me
  loc_C50FB3: VCallAd Control_ID_CuotApreTxt
  loc_C50FB6: FStAdFunc var_88
  loc_C50FB9: FLdPr var_88
  loc_C50FBC:  = Me.Text
  loc_C50FC1: ILdRf var_90
  loc_C50FC4: CI2Str
  loc_C50FC6: LitI2_Byte 0
  loc_C50FC8: EqI2
  loc_C50FC9: FFree1Str var_90
  loc_C50FCC: FFree1Ad var_88
  loc_C50FCF: BranchF loc_C50FE9
  loc_C50FD2: LitStr "1"
  loc_C50FD5: FLdPr Me
  loc_C50FD8: VCallAd Control_ID_CuotApreTxt
  loc_C50FDB: FStAdFunc var_88
  loc_C50FDE: FLdPr var_88
  loc_C50FE1: Me.Text = from_stack_1
  loc_C50FE6: FFree1Ad var_88
  loc_C50FE9: Branch loc_C51036
  loc_C50FEC: LitI4 0
  loc_C50FF1: LitI4 0
  loc_C50FF6: FLdRfVar var_174
  loc_C50FF9: Redim
  loc_C51003: FLdPr Me
  loc_C51006: VCallAd Control_ID_CuotApreTxt
  loc_C51009: CVarAd
  loc_C5100D: ParmAry1St
  loc_C51013: FLdRfVar var_174
  loc_C51016: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C5101B: FLdRfVar var_174
  loc_C5101E: Erase
  loc_C5101F: LitStr "0"
  loc_C51022: FLdPr Me
  loc_C51025: VCallAd Control_ID_CuotApreTxt
  loc_C51028: FStAdFunc var_88
  loc_C5102B: FLdPr var_88
  loc_C5102E: Me.Text = from_stack_1
  loc_C51033: FFree1Ad var_88
  loc_C51036: FLdRfVar var_A4
  loc_C51039: FLdRfVar var_C8
  loc_C5103C: LitVarStr var_DC, "DecaTifa"
  loc_C51041: PopAdLdVar
  loc_C51042: FLdRfVar var_C4
  loc_C51045: FLdRfVar var_88
  loc_C51048: FLdPr Me
  loc_C5104B: MemLdRfVar from_stack_1.global_76
  loc_C5104E: NewIfNullPr clstipofapa
  loc_C51051: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C51056: FLdPr var_88
  loc_C51059:  = Me.Fields
  loc_C5105E: FLdPr var_C4
  loc_C51061: from_stack_2 = Me.Item(from_stack_1)
  loc_C51066: FLdPr var_C8
  loc_C51069:  = Me.Value
  loc_C5106E: FLdRfVar var_A4
  loc_C51071: FnCDblVar
  loc_C51073: LitI2_Byte 0
  loc_C51075: CR8I2
  loc_C51076: NeR8
  loc_C51077: FLdRfVar var_90
  loc_C5107A: FLdPr Me
  loc_C5107D: VCallAd Control_ID_DerechoTxt
  loc_C51080: FStAdFunc var_CC
  loc_C51083: FLdPr var_CC
  loc_C51086:  = Me.Text
  loc_C5108B: ILdRf var_90
  loc_C5108E: CR8Str
  loc_C51090: LitI2_Byte 0
  loc_C51092: CR8I2
  loc_C51093: NeR8
  loc_C51094: AndI4
  loc_C51095: FFree1Str var_90
  loc_C51098: FFreeAd var_88 = "": var_C4 = "": var_C8 = ""
  loc_C510A3: FFree1Var var_A4 = ""
  loc_C510A6: BranchF loc_C51171
  loc_C510A9: FLdRfVar var_90
  loc_C510AC: FLdPr Me
  loc_C510AF: VCallAd Control_ID_DerechoTxt
  loc_C510B2: FStAdFunc var_88
  loc_C510B5: FLdPr var_88
  loc_C510B8:  = Me.Text
  loc_C510BD: FLdRfVar var_A4
  loc_C510C0: FLdRfVar var_CC
  loc_C510C3: LitVarStr var_DC, "DecaTifa"
  loc_C510C8: PopAdLdVar
  loc_C510C9: FLdRfVar var_C8
  loc_C510CC: FLdRfVar var_C4
  loc_C510CF: FLdPr Me
  loc_C510D2: MemLdRfVar from_stack_1.global_76
  loc_C510D5: NewIfNullPr clstipofapa
  loc_C510D8: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C510DD: FLdPr var_C4
  loc_C510E0:  = Me.Fields
  loc_C510E5: FLdPr var_C8
  loc_C510E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C510ED: FLdPr var_CC
  loc_C510F0:  = Me.Value
  loc_C510F5: LitI4 2
  loc_C510FA: ILdRf var_90
  loc_C510FD: CR8Str
  loc_C510FF: FLdRfVar var_A4
  loc_C51102: FnCDblVar
  loc_C51104: MulR8
  loc_C51105: LitI2_Byte &H64
  loc_C51107: CR8I2
  loc_C51108: DivR8
  loc_C51109: CVarR8
  loc_C5110D: FLdRfVar var_120
  loc_C51110: ImpAdCallFPR4  = Round(, )
  loc_C51115: LitI4 1
  loc_C5111A: LitI4 1
  loc_C5111F: LitVarStr var_110, "###,###,##0.00"
  loc_C51124: FStVarCopyObj var_130
  loc_C51127: FLdRfVar var_130
  loc_C5112A: FLdRfVar var_120
  loc_C5112D: FLdRfVar var_150
  loc_C51130: ImpAdCallFPR4  = Format(, )
  loc_C51135: FLdRfVar var_150
  loc_C51138: CStrVarVal var_94
  loc_C5113C: FLdPr Me
  loc_C5113F: VCallAd Control_ID_DescCapiTxt
  loc_C51142: FStAdFunc var_E0
  loc_C51145: FLdPr var_E0
  loc_C51148: Me.Text = from_stack_1
  loc_C5114D: FFreeStr var_90 = ""
  loc_C51154: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_C51161: FFreeVar var_A4 = "": var_100 = "": var_120 = "": var_130 = ""
  loc_C5116E: Branch loc_C511BA
  loc_C51171: LitI4 1
  loc_C51176: LitI4 1
  loc_C5117B: LitVarStr var_F0, "0.00"
  loc_C51180: FStVarCopyObj var_100
  loc_C51183: FLdRfVar var_100
  loc_C51186: LitVarI2 var_A4, 0
  loc_C5118B: FLdRfVar var_120
  loc_C5118E: ImpAdCallFPR4  = Format(, )
  loc_C51193: FLdRfVar var_120
  loc_C51196: CStrVarVal var_90
  loc_C5119A: FLdPr Me
  loc_C5119D: VCallAd Control_ID_DescCapiTxt
  loc_C511A0: FStAdFunc var_88
  loc_C511A3: FLdPr var_88
  loc_C511A6: Me.Text = from_stack_1
  loc_C511AB: FFree1Str var_90
  loc_C511AE: FFree1Ad var_88
  loc_C511B1: FFreeVar var_A4 = "": var_100 = ""
  loc_C511BA: FLdRfVar var_A4
  loc_C511BD: FLdRfVar var_C8
  loc_C511C0: LitVarStr var_DC, "DereTifa"
  loc_C511C5: PopAdLdVar
  loc_C511C6: FLdRfVar var_C4
  loc_C511C9: FLdRfVar var_88
  loc_C511CC: FLdPr Me
  loc_C511CF: MemLdRfVar from_stack_1.global_76
  loc_C511D2: NewIfNullPr clstipofapa
  loc_C511D5: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C511DA: FLdPr var_88
  loc_C511DD:  = Me.Fields
  loc_C511E2: FLdPr var_C4
  loc_C511E5: from_stack_2 = Me.Item(from_stack_1)
  loc_C511EA: FLdPr var_C8
  loc_C511ED:  = Me.Value
  loc_C511F2: FLdRfVar var_A4
  loc_C511F5: FnCDblVar
  loc_C511F7: LitI2_Byte 0
  loc_C511F9: CR8I2
  loc_C511FA: NeR8
  loc_C511FB: FLdRfVar var_90
  loc_C511FE: FLdPr Me
  loc_C51201: VCallAd Control_ID_RecargoTxt
  loc_C51204: FStAdFunc var_CC
  loc_C51207: FLdPr var_CC
  loc_C5120A:  = Me.Text
  loc_C5120F: ILdRf var_90
  loc_C51212: CR8Str
  loc_C51214: LitI2_Byte 0
  loc_C51216: CR8I2
  loc_C51217: NeR8
  loc_C51218: AndI4
  loc_C51219: FFree1Str var_90
  loc_C5121C: FFreeAd var_88 = "": var_C4 = "": var_C8 = ""
  loc_C51227: FFree1Var var_A4 = ""
  loc_C5122A: BranchF loc_C512F5
  loc_C5122D: FLdRfVar var_90
  loc_C51230: FLdPr Me
  loc_C51233: VCallAd Control_ID_RecargoTxt
  loc_C51236: FStAdFunc var_88
  loc_C51239: FLdPr var_88
  loc_C5123C:  = Me.Text
  loc_C51241: FLdRfVar var_A4
  loc_C51244: FLdRfVar var_CC
  loc_C51247: LitVarStr var_DC, "DereTifa"
  loc_C5124C: PopAdLdVar
  loc_C5124D: FLdRfVar var_C8
  loc_C51250: FLdRfVar var_C4
  loc_C51253: FLdPr Me
  loc_C51256: MemLdRfVar from_stack_1.global_76
  loc_C51259: NewIfNullPr clstipofapa
  loc_C5125C: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C51261: FLdPr var_C4
  loc_C51264:  = Me.Fields
  loc_C51269: FLdPr var_C8
  loc_C5126C: from_stack_2 = Me.Item(from_stack_1)
  loc_C51271: FLdPr var_CC
  loc_C51274:  = Me.Value
  loc_C51279: LitI4 2
  loc_C5127E: ILdRf var_90
  loc_C51281: CR8Str
  loc_C51283: FLdRfVar var_A4
  loc_C51286: FnCDblVar
  loc_C51288: MulR8
  loc_C51289: LitI2_Byte &H64
  loc_C5128B: CR8I2
  loc_C5128C: DivR8
  loc_C5128D: CVarR8
  loc_C51291: FLdRfVar var_120
  loc_C51294: ImpAdCallFPR4  = Round(, )
  loc_C51299: LitI4 1
  loc_C5129E: LitI4 1
  loc_C512A3: LitVarStr var_110, "###,###,##0.00"
  loc_C512A8: FStVarCopyObj var_130
  loc_C512AB: FLdRfVar var_130
  loc_C512AE: FLdRfVar var_120
  loc_C512B1: FLdRfVar var_150
  loc_C512B4: ImpAdCallFPR4  = Format(, )
  loc_C512B9: FLdRfVar var_150
  loc_C512BC: CStrVarVal var_94
  loc_C512C0: FLdPr Me
  loc_C512C3: VCallAd Control_ID_DescRecaTxt
  loc_C512C6: FStAdFunc var_E0
  loc_C512C9: FLdPr var_E0
  loc_C512CC: Me.Text = from_stack_1
  loc_C512D1: FFreeStr var_90 = ""
  loc_C512D8: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_C512E5: FFreeVar var_A4 = "": var_100 = "": var_120 = "": var_130 = ""
  loc_C512F2: Branch loc_C5133E
  loc_C512F5: LitI4 1
  loc_C512FA: LitI4 1
  loc_C512FF: LitVarStr var_F0, "0.00"
  loc_C51304: FStVarCopyObj var_100
  loc_C51307: FLdRfVar var_100
  loc_C5130A: LitVarI2 var_A4, 0
  loc_C5130F: FLdRfVar var_120
  loc_C51312: ImpAdCallFPR4  = Format(, )
  loc_C51317: FLdRfVar var_120
  loc_C5131A: CStrVarVal var_90
  loc_C5131E: FLdPr Me
  loc_C51321: VCallAd Control_ID_DescRecaTxt
  loc_C51324: FStAdFunc var_88
  loc_C51327: FLdPr var_88
  loc_C5132A: Me.Text = from_stack_1
  loc_C5132F: FFree1Str var_90
  loc_C51332: FFree1Ad var_88
  loc_C51335: FFreeVar var_A4 = "": var_100 = ""
  loc_C5133E: FLdRfVar var_90
  loc_C51341: FLdPr Me
  loc_C51344: VCallAd Control_ID_DerechoTxt
  loc_C51347: FStAdFunc var_88
  loc_C5134A: FLdPr var_88
  loc_C5134D:  = Me.Text
  loc_C51352: FLdRfVar var_94
  loc_C51355: FLdPr Me
  loc_C51358: VCallAd Control_ID_RecargoTxt
  loc_C5135B: FStAdFunc var_C4
  loc_C5135E: FLdPr var_C4
  loc_C51361:  = Me.Text
  loc_C51366: FLdRfVar var_A8
  loc_C51369: FLdPr Me
  loc_C5136C: VCallAd Control_ID_DescCapiTxt
  loc_C5136F: FStAdFunc var_C8
  loc_C51372: FLdPr var_C8
  loc_C51375:  = Me.Text
  loc_C5137A: FLdRfVar var_AC
  loc_C5137D: FLdPr Me
  loc_C51380: VCallAd Control_ID_DescRecaTxt
  loc_C51383: FStAdFunc var_CC
  loc_C51386: FLdPr var_CC
  loc_C51389:  = Me.Text
  loc_C5138E: FLdRfVar var_B0
  loc_C51391: FLdPr Me
  loc_C51394: VCallAd Control_ID_ApremioTxt
  loc_C51397: FStAdFunc var_E0
  loc_C5139A: FLdPr var_E0
  loc_C5139D:  = Me.Text
  loc_C513A2: FLdRfVar var_B4
  loc_C513A5: FLdPr Me
  loc_C513A8: VCallAd Control_ID_InteresTxt
  loc_C513AB: FStAdFunc var_178
  loc_C513AE: FLdPr var_178
  loc_C513B1:  = Me.Text
  loc_C513B6: LitI4 1
  loc_C513BB: LitI4 1
  loc_C513C0: LitVarStr var_F0, "0.00"
  loc_C513C5: FStVarCopyObj var_100
  loc_C513C8: FLdRfVar var_100
  loc_C513CB: ILdRf var_90
  loc_C513CE: CR8Str
  loc_C513D0: ILdRf var_94
  loc_C513D3: CR8Str
  loc_C513D5: AddR8
  loc_C513D6: ILdRf var_A8
  loc_C513D9: CR8Str
  loc_C513DB: SubR4
  loc_C513DC: ILdRf var_AC
  loc_C513DF: CR8Str
  loc_C513E1: SubR4
  loc_C513E2: ILdRf var_B0
  loc_C513E5: CR8Str
  loc_C513E7: AddR8
  loc_C513E8: ILdRf var_B4
  loc_C513EB: CR8Str
  loc_C513ED: AddR8
  loc_C513EE: CVarR8
  loc_C513F2: FLdRfVar var_120
  loc_C513F5: ImpAdCallFPR4  = Format(, )
  loc_C513FA: FLdRfVar var_120
  loc_C513FD: CStrVarVal var_B8
  loc_C51401: FLdPr Me
  loc_C51404: VCallAd Control_ID_TotalTxt
  loc_C51407: FStAdFunc var_17C
  loc_C5140A: FLdPr var_17C
  loc_C5140D: Me.Text = from_stack_1
  loc_C51412: FFreeStr var_90 = "": var_94 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C51423: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = "": var_E0 = "": var_178 = ""
  loc_C51434: FFreeVar var_A4 = "": var_100 = ""
  loc_C5143D: FLdRfVar var_A4
  loc_C51440: FLdRfVar var_C8
  loc_C51443: LitVarStr var_DC, "AntiTifa"
  loc_C51448: PopAdLdVar
  loc_C51449: FLdRfVar var_C4
  loc_C5144C: FLdRfVar var_88
  loc_C5144F: FLdPr Me
  loc_C51452: MemLdRfVar from_stack_1.global_76
  loc_C51455: NewIfNullPr clstipofapa
  loc_C51458: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C5145D: FLdPr var_88
  loc_C51460:  = Me.Fields
  loc_C51465: FLdPr var_C4
  loc_C51468: from_stack_2 = Me.Item(from_stack_1)
  loc_C5146D: FLdPr var_C8
  loc_C51470:  = Me.Value
  loc_C51475: FLdRfVar var_A4
  loc_C51478: FnCDblVar
  loc_C5147A: LitI2_Byte 0
  loc_C5147C: CR8I2
  loc_C5147D: NeR8
  loc_C5147E: FFreeAd var_88 = "": var_C4 = ""
  loc_C51487: FFree1Var var_A4 = ""
  loc_C5148A: BranchF loc_C516B0
  loc_C5148D: FLdRfVar var_A4
  loc_C51490: FLdRfVar var_C8
  loc_C51493: LitVarStr var_DC, "TianTifa"
  loc_C51498: PopAdLdVar
  loc_C51499: FLdRfVar var_C4
  loc_C5149C: FLdRfVar var_88
  loc_C5149F: FLdPr Me
  loc_C514A2: MemLdRfVar from_stack_1.global_76
  loc_C514A5: NewIfNullPr clstipofapa
  loc_C514A8: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C514AD: FLdPr var_88
  loc_C514B0:  = Me.Fields
  loc_C514B5: FLdPr var_C4
  loc_C514B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C514BD: FLdPr var_C8
  loc_C514C0:  = Me.Value
  loc_C514C5: FLdRfVar var_A4
  loc_C514C8: LitVarStr var_F0, "Porcentaje"
  loc_C514CD: HardType
  loc_C514CE: EqVarBool
  loc_C514D0: FFreeAd var_88 = "": var_C4 = ""
  loc_C514D9: FFree1Var var_A4 = ""
  loc_C514DC: BranchF loc_C515DD
  loc_C514DF: FLdRfVar var_90
  loc_C514E2: FLdPr Me
  loc_C514E5: VCallAd Control_ID_DerechoTxt
  loc_C514E8: FStAdFunc var_88
  loc_C514EB: FLdPr var_88
  loc_C514EE:  = Me.Text
  loc_C514F3: FLdRfVar var_94
  loc_C514F6: FLdPr Me
  loc_C514F9: VCallAd Control_ID_DescCapiTxt
  loc_C514FC: FStAdFunc var_C4
  loc_C514FF: FLdPr var_C4
  loc_C51502:  = Me.Text
  loc_C51507: FLdRfVar var_A8
  loc_C5150A: FLdPr Me
  loc_C5150D: VCallAd Control_ID_RecargoTxt
  loc_C51510: FStAdFunc var_C8
  loc_C51513: FLdPr var_C8
  loc_C51516:  = Me.Text
  loc_C5151B: FLdRfVar var_AC
  loc_C5151E: FLdPr Me
  loc_C51521: VCallAd Control_ID_DescRecaTxt
  loc_C51524: FStAdFunc var_CC
  loc_C51527: FLdPr var_CC
  loc_C5152A:  = Me.Text
  loc_C5152F: FLdRfVar var_A4
  loc_C51532: FLdRfVar var_17C
  loc_C51535: LitVarStr var_DC, "AntiTifa"
  loc_C5153A: PopAdLdVar
  loc_C5153B: FLdRfVar var_178
  loc_C5153E: FLdRfVar var_E0
  loc_C51541: FLdPr Me
  loc_C51544: MemLdRfVar from_stack_1.global_76
  loc_C51547: NewIfNullPr clstipofapa
  loc_C5154A: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C5154F: FLdPr var_E0
  loc_C51552:  = Me.Fields
  loc_C51557: FLdPr var_178
  loc_C5155A: from_stack_2 = Me.Item(from_stack_1)
  loc_C5155F: FLdPr var_17C
  loc_C51562:  = Me.Value
  loc_C51567: LitI4 2
  loc_C5156C: ILdRf var_90
  loc_C5156F: CR8Str
  loc_C51571: ILdRf var_94
  loc_C51574: CR8Str
  loc_C51576: SubR4
  loc_C51577: ILdRf var_A8
  loc_C5157A: CR8Str
  loc_C5157C: AddR8
  loc_C5157D: ILdRf var_AC
  loc_C51580: CR8Str
  loc_C51582: SubR4
  loc_C51583: FLdRfVar var_A4
  loc_C51586: FnCDblVar
  loc_C51588: MulR8
  loc_C51589: LitI2_Byte &H64
  loc_C5158B: CR8I2
  loc_C5158C: DivR8
  loc_C5158D: CVarR8
  loc_C51591: FLdRfVar var_120
  loc_C51594: ImpAdCallFPR4  = Round(, )
  loc_C51599: FLdRfVar var_120
  loc_C5159C: CStrVarVal var_B0
  loc_C515A0: FLdPr Me
  loc_C515A3: VCallAd Control_ID_AnticipoTxt
  loc_C515A6: FStAdFunc var_180
  loc_C515A9: FLdPr var_180
  loc_C515AC: Me.Text = from_stack_1
  loc_C515B1: FFreeStr var_90 = "": var_94 = "": var_A8 = "": var_AC = ""
  loc_C515BE: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = "": var_E0 = "": var_178 = "": var_17C = ""
  loc_C515D1: FFreeVar var_A4 = "": var_100 = ""
  loc_C515DA: Branch loc_C516AD
  loc_C515DD: FLdRfVar var_A4
  loc_C515E0: FLdRfVar var_C8
  loc_C515E3: LitVarStr var_DC, "TianTifa"
  loc_C515E8: PopAdLdVar
  loc_C515E9: FLdRfVar var_C4
  loc_C515EC: FLdRfVar var_88
  loc_C515EF: FLdPr Me
  loc_C515F2: MemLdRfVar from_stack_1.global_76
  loc_C515F5: NewIfNullPr clstipofapa
  loc_C515F8: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C515FD: FLdPr var_88
  loc_C51600:  = Me.Fields
  loc_C51605: FLdPr var_C4
  loc_C51608: from_stack_2 = Me.Item(from_stack_1)
  loc_C5160D: FLdPr var_C8
  loc_C51610:  = Me.Value
  loc_C51615: FLdRfVar var_A4
  loc_C51618: LitVarStr var_F0, "Importe"
  loc_C5161D: HardType
  loc_C5161E: EqVarBool
  loc_C51620: FFreeAd var_88 = "": var_C4 = ""
  loc_C51629: FFree1Var var_A4 = ""
  loc_C5162C: BranchF loc_C516AD
  loc_C5162F: FLdRfVar var_C8
  loc_C51632: LitVarStr var_DC, "AntiTifa"
  loc_C51637: PopAdLdVar
  loc_C51638: FLdRfVar var_C4
  loc_C5163B: FLdRfVar var_88
  loc_C5163E: FLdPr Me
  loc_C51641: MemLdRfVar from_stack_1.global_76
  loc_C51644: NewIfNullPr clstipofapa
  loc_C51647: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C5164C: FLdPr var_88
  loc_C5164F:  = Me.Fields
  loc_C51654: FLdPr var_C4
  loc_C51657: from_stack_2 = Me.Item(from_stack_1)
  loc_C5165C: LitI4 1
  loc_C51661: LitI4 1
  loc_C51666: LitVarStr var_F0, "0.00"
  loc_C5166B: FStVarCopyObj var_100
  loc_C5166E: FLdRfVar var_100
  loc_C51671: FLdZeroAd var_C8
  loc_C51674: CVarAd
  loc_C51678: FLdRfVar var_120
  loc_C5167B: ImpAdCallFPR4  = Format(, )
  loc_C51680: FLdRfVar var_120
  loc_C51683: CStrVarVal var_90
  loc_C51687: FLdPr Me
  loc_C5168A: VCallAd Control_ID_AnticipoTxt
  loc_C5168D: FStAdFunc var_CC
  loc_C51690: FLdPr var_CC
  loc_C51693: Me.Text = from_stack_1
  loc_C51698: FFree1Str var_90
  loc_C5169B: FFreeAd var_88 = "": var_C4 = ""
  loc_C516A4: FFreeVar var_A4 = "": var_100 = ""
  loc_C516AD: Branch loc_C51750
  loc_C516B0: FLdRfVar var_A4
  loc_C516B3: FLdRfVar var_C8
  loc_C516B6: LitVarStr var_DC, "CodiTifa"
  loc_C516BB: PopAdLdVar
  loc_C516BC: FLdRfVar var_C4
  loc_C516BF: FLdRfVar var_88
  loc_C516C2: FLdPr Me
  loc_C516C5: MemLdRfVar from_stack_1.global_76
  loc_C516C8: NewIfNullPr clstipofapa
  loc_C516CB: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C516D0: FLdPr var_88
  loc_C516D3:  = Me.Fields
  loc_C516D8: FLdPr var_C4
  loc_C516DB: from_stack_2 = Me.Item(from_stack_1)
  loc_C516E0: FLdPr var_C8
  loc_C516E3:  = Me.Value
  loc_C516E8: FLdRfVar var_A4
  loc_C516EB: FnCIntVar
  loc_C516ED: LitI2_Byte &H65
  loc_C516EF: NeI2
  loc_C516F0: FFreeAd var_88 = "": var_C4 = ""
  loc_C516F9: FFree1Var var_A4 = ""
  loc_C516FC: BranchF loc_C51732
  loc_C516FF: LitI4 0
  loc_C51704: LitI4 0
  loc_C51709: FLdRfVar var_174
  loc_C5170C: Redim
  loc_C51716: FLdPr Me
  loc_C51719: VCallAd Control_ID_AnticipoTxt
  loc_C5171C: CVarAd
  loc_C51720: ParmAry1St
  loc_C51726: FLdRfVar var_174
  loc_C51729: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C5172E: FLdRfVar var_174
  loc_C51731: Erase
  loc_C51732: LitI2_Byte 0
  loc_C51734: CStrUI1
  loc_C51736: FStStrNoPop var_90
  loc_C51739: FLdPr Me
  loc_C5173C: VCallAd Control_ID_AnticipoTxt
  loc_C5173F: FStAdFunc var_88
  loc_C51742: FLdPr var_88
  loc_C51745: Me.Text = from_stack_1
  loc_C5174A: FFree1Str var_90
  loc_C5174D: FFree1Ad var_88
  loc_C51750: FLdRfVar var_90
  loc_C51753: FLdPr Me
  loc_C51756: VCallAd Control_ID_AnticipoTxt
  loc_C51759: FStAdFunc var_88
  loc_C5175C: FLdPr var_88
  loc_C5175F:  = Me.Text
  loc_C51764: ILdRf var_90
  loc_C51767: CR8Str
  loc_C51769: FLdPr Me
  loc_C5176C: MemStFPR8 global_164
  loc_C5176F: FFree1Str var_90
  loc_C51772: FFree1Ad var_88
  loc_C51775: FLdRfVar var_A4
  loc_C51778: FLdRfVar var_C8
  loc_C5177B: LitVarStr var_DC, "TipoTifa"
  loc_C51780: PopAdLdVar
  loc_C51781: FLdRfVar var_C4
  loc_C51784: FLdRfVar var_88
  loc_C51787: FLdPr Me
  loc_C5178A: MemLdRfVar from_stack_1.global_76
  loc_C5178D: NewIfNullPr clstipofapa
  loc_C51790: from_stack_1v = clstipofapa.RsFrmGet()
  loc_C51795: FLdPr var_88
  loc_C51798:  = Me.Fields
  loc_C5179D: FLdPr var_C4
  loc_C517A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C517A5: FLdPr var_C8
  loc_C517A8:  = Me.Value
  loc_C517AD: FLdRfVar var_A4
  loc_C517B0: LitVarStr var_F0, "Obra Reembolsable"
  loc_C517B5: HardType
  loc_C517B6: EqVarBool
  loc_C517B8: FFreeAd var_88 = "": var_C4 = ""
  loc_C517C1: FFree1Var var_A4 = ""
  loc_C517C4: BranchF loc_C5184E
  loc_C517C7: LitI2_Byte &HFF
  loc_C517C9: FLdPr Me
  loc_C517CC: VCallAd Control_ID_CodiInmuLbl
  loc_C517CF: FStAdFunc var_88
  loc_C517D2: FLdPr var_88
  loc_C517D5: Me.Visible = from_stack_1b
  loc_C517DA: FFree1Ad var_88
  loc_C517DD: LitI2_Byte &HFF
  loc_C517DF: FLdPr Me
  loc_C517E2: VCallAd Control_ID_CodiInmuTxt
  loc_C517E5: FStAdFunc var_88
  loc_C517E8: FLdPr var_88
  loc_C517EB: Me.Visible = from_stack_1b
  loc_C517F0: FFree1Ad var_88
  loc_C517F3: LitI2_Byte &HFF
  loc_C517F5: FLdPr Me
  loc_C517F8: VCallAd Control_ID_CodiInmuCmd
  loc_C517FB: FStAdFunc var_88
  loc_C517FE: FLdPr var_88
  loc_C51801: Me.Visible = from_stack_1b
  loc_C51806: FFree1Ad var_88
  loc_C51809: LitI2_Byte &HFF
  loc_C5180B: FLdPr Me
  loc_C5180E: VCallAd Control_ID_OrdeObreLbl
  loc_C51811: FStAdFunc var_88
  loc_C51814: FLdPr var_88
  loc_C51817: Me.Visible = from_stack_1b
  loc_C5181C: FFree1Ad var_88
  loc_C5181F: LitI2_Byte &HFF
  loc_C51821: FLdPr Me
  loc_C51824: VCallAd Control_ID_OrdeObreTxt
  loc_C51827: FStAdFunc var_88
  loc_C5182A: FLdPr var_88
  loc_C5182D: Me.Visible = from_stack_1b
  loc_C51832: FFree1Ad var_88
  loc_C51835: LitI2_Byte &HFF
  loc_C51837: FLdPr Me
  loc_C5183A: VCallAd Control_ID_OrdeObreCmd
  loc_C5183D: FStAdFunc var_88
  loc_C51840: FLdPr var_88
  loc_C51843: Me.Visible = from_stack_1b
  loc_C51848: FFree1Ad var_88
  loc_C5184B: Branch loc_C518D2
  loc_C5184E: LitI2_Byte 0
  loc_C51850: FLdPr Me
  loc_C51853: VCallAd Control_ID_CodiInmuLbl
  loc_C51856: FStAdFunc var_88
  loc_C51859: FLdPr var_88
  loc_C5185C: Me.Visible = from_stack_1b
  loc_C51861: FFree1Ad var_88
  loc_C51864: LitI2_Byte 0
  loc_C51866: FLdPr Me
  loc_C51869: VCallAd Control_ID_CodiInmuTxt
  loc_C5186C: FStAdFunc var_88
  loc_C5186F: FLdPr var_88
  loc_C51872: Me.Visible = from_stack_1b
  loc_C51877: FFree1Ad var_88
  loc_C5187A: LitI2_Byte 0
  loc_C5187C: FLdPr Me
  loc_C5187F: VCallAd Control_ID_CodiInmuCmd
  loc_C51882: FStAdFunc var_88
  loc_C51885: FLdPr var_88
  loc_C51888: Me.Visible = from_stack_1b
  loc_C5188D: FFree1Ad var_88
  loc_C51890: LitI2_Byte 0
  loc_C51892: FLdPr Me
  loc_C51895: VCallAd Control_ID_OrdeObreLbl
  loc_C51898: FStAdFunc var_88
  loc_C5189B: FLdPr var_88
  loc_C5189E: Me.Visible = from_stack_1b
  loc_C518A3: FFree1Ad var_88
  loc_C518A6: LitI2_Byte 0
  loc_C518A8: FLdPr Me
  loc_C518AB: VCallAd Control_ID_OrdeObreTxt
  loc_C518AE: FStAdFunc var_88
  loc_C518B1: FLdPr var_88
  loc_C518B4: Me.Visible = from_stack_1b
  loc_C518B9: FFree1Ad var_88
  loc_C518BC: LitI2_Byte 0
  loc_C518BE: FLdPr Me
  loc_C518C1: VCallAd Control_ID_OrdeObreCmd
  loc_C518C4: FStAdFunc var_88
  loc_C518C7: FLdPr var_88
  loc_C518CA: Me.Visible = from_stack_1b
  loc_C518CF: FFree1Ad var_88
  loc_C518D2: Branch loc_C518F5
  loc_C518D5: LitStr "Usted no esta autorizado para realizar el plan de pago"
  loc_C518D8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C518DD: FLdPr Me
  loc_C518E0: VCallAd Control_ID_CodiTifaTxt
  loc_C518E3: CVarAd
  loc_C518E7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C518EC: FFree1Var var_A4 = ""
  loc_C518EF: LitI2_Byte &HFF
  loc_C518F1: IStI2 Cancel
  loc_C518F4: ExitProcHresult
  loc_C518F5: ExitProcHresult
  loc_C518F6: FStFPR8 arg_34FF
End Sub

Private Sub NumeCtaTxt_GotFocus() 'B42A38
  'Data Table: 52F1AC
  loc_B426F4: Call Proc_187_51_B193E8()
  loc_B426F9: Call Proc_187_53_A855B4()
  loc_B426FE: Call Proc_187_52_AF19AC()
  loc_B42703: LitI2_Byte 0
  loc_B42705: FLdPr Me
  loc_B42708: VCallAd Control_ID_SeleTodoChk
  loc_B4270B: FStAdFunc var_88
  loc_B4270E: FLdPr var_88
  loc_B42711: Me.Value = from_stack_1
  loc_B42716: FFree1Ad var_88
  loc_B42719: LitStr "0"
  loc_B4271C: FLdPr Me
  loc_B4271F: VCallAd Control_ID_CodiTifaTxt
  loc_B42722: FStAdFunc var_88
  loc_B42725: FLdPr var_88
  loc_B42728: Me.Text = from_stack_1
  loc_B4272D: FFree1Ad var_88
  loc_B42730: LitStr vbNullString
  loc_B42733: FLdPr Me
  loc_B42736: VCallAd Control_ID_DetaTifaLbl
  loc_B42739: FStAdFunc var_88
  loc_B4273C: FLdPr var_88
  loc_B4273F: Me.Caption = from_stack_1
  loc_B42744: FFree1Ad var_88
  loc_B42747: LitStr vbNullString
  loc_B4274A: FLdPr Me
  loc_B4274D: VCallAd Control_ID_InteTifaLbl
  loc_B42750: FStAdFunc var_88
  loc_B42753: FLdPr var_88
  loc_B42756: Me.Caption = from_stack_1
  loc_B4275B: FFree1Ad var_88
  loc_B4275E: LitStr vbNullString
  loc_B42761: FLdPr Me
  loc_B42764: VCallAd Control_ID_MecaTifaLbl
  loc_B42767: FStAdFunc var_88
  loc_B4276A: FLdPr var_88
  loc_B4276D: Me.Caption = from_stack_1
  loc_B42772: FFree1Ad var_88
  loc_B42775: LitStr "0"
  loc_B42778: FLdPr Me
  loc_B4277B: VCallAd Control_ID_CuotApreTxt
  loc_B4277E: FStAdFunc var_88
  loc_B42781: FLdPr var_88
  loc_B42784: Me.Text = from_stack_1
  loc_B42789: FFree1Ad var_88
  loc_B4278C: LitI2_Byte 0
  loc_B4278E: CStrUI1
  loc_B42790: FStStrNoPop var_8C
  loc_B42793: FLdPr Me
  loc_B42796: VCallAd Control_ID_AnticipoTxt
  loc_B42799: FStAdFunc var_88
  loc_B4279C: FLdPr var_88
  loc_B4279F: Me.Text = from_stack_1
  loc_B427A4: FFree1Str var_8C
  loc_B427A7: FFree1Ad var_88
  loc_B427AA: LitI4 1
  loc_B427AF: LitI4 1
  loc_B427B4: LitVarStr var_BC, "###,###,##0.00"
  loc_B427B9: FStVarCopyObj var_CC
  loc_B427BC: FLdRfVar var_CC
  loc_B427BF: LitVarI2 var_AC, 0
  loc_B427C4: FLdRfVar var_DC
  loc_B427C7: ImpAdCallFPR4  = Format(, )
  loc_B427CC: FLdRfVar var_DC
  loc_B427CF: CStrVarVal var_8C
  loc_B427D3: FLdPr Me
  loc_B427D6: VCallAd Control_ID_DerechoTxt
  loc_B427D9: FStAdFunc var_88
  loc_B427DC: FLdPr var_88
  loc_B427DF: Me.Text = from_stack_1
  loc_B427E4: FFree1Str var_8C
  loc_B427E7: FFree1Ad var_88
  loc_B427EA: FFreeVar var_AC = "": var_CC = ""
  loc_B427F3: LitI4 1
  loc_B427F8: LitI4 1
  loc_B427FD: LitVarStr var_BC, "###,###,##0.00"
  loc_B42802: FStVarCopyObj var_CC
  loc_B42805: FLdRfVar var_CC
  loc_B42808: LitVarI2 var_AC, 0
  loc_B4280D: FLdRfVar var_DC
  loc_B42810: ImpAdCallFPR4  = Format(, )
  loc_B42815: FLdRfVar var_DC
  loc_B42818: CStrVarVal var_8C
  loc_B4281C: FLdPr Me
  loc_B4281F: VCallAd Control_ID_RecargoTxt
  loc_B42822: FStAdFunc var_88
  loc_B42825: FLdPr var_88
  loc_B42828: Me.Text = from_stack_1
  loc_B4282D: FFree1Str var_8C
  loc_B42830: FFree1Ad var_88
  loc_B42833: FFreeVar var_AC = "": var_CC = ""
  loc_B4283C: LitI4 1
  loc_B42841: LitI4 1
  loc_B42846: LitVarStr var_BC, "###,###,##0.00"
  loc_B4284B: FStVarCopyObj var_CC
  loc_B4284E: FLdRfVar var_CC
  loc_B42851: LitVarI2 var_AC, 0
  loc_B42856: FLdRfVar var_DC
  loc_B42859: ImpAdCallFPR4  = Format(, )
  loc_B4285E: FLdRfVar var_DC
  loc_B42861: CStrVarVal var_8C
  loc_B42865: FLdPr Me
  loc_B42868: VCallAd Control_ID_ApremioTxt
  loc_B4286B: FStAdFunc var_88
  loc_B4286E: FLdPr var_88
  loc_B42871: Me.Text = from_stack_1
  loc_B42876: FFree1Str var_8C
  loc_B42879: FFree1Ad var_88
  loc_B4287C: FFreeVar var_AC = "": var_CC = ""
  loc_B42885: LitI4 1
  loc_B4288A: LitI4 1
  loc_B4288F: LitVarStr var_BC, "###,###,##0.00"
  loc_B42894: FStVarCopyObj var_CC
  loc_B42897: FLdRfVar var_CC
  loc_B4289A: LitVarStr var_9C, "0"
  loc_B4289F: FStVarCopyObj var_AC
  loc_B428A2: FLdRfVar var_AC
  loc_B428A5: FLdRfVar var_DC
  loc_B428A8: ImpAdCallFPR4  = Format(, )
  loc_B428AD: FLdRfVar var_DC
  loc_B428B0: CStrVarVal var_8C
  loc_B428B4: FLdPr Me
  loc_B428B7: VCallAd Control_ID_DescCapiTxt
  loc_B428BA: FStAdFunc var_88
  loc_B428BD: FLdPr var_88
  loc_B428C0: Me.Text = from_stack_1
  loc_B428C5: FFree1Str var_8C
  loc_B428C8: FFree1Ad var_88
  loc_B428CB: FFreeVar var_AC = "": var_CC = ""
  loc_B428D4: LitI4 1
  loc_B428D9: LitI4 1
  loc_B428DE: LitVarStr var_BC, "###,###,##0.00"
  loc_B428E3: FStVarCopyObj var_CC
  loc_B428E6: FLdRfVar var_CC
  loc_B428E9: LitVarStr var_9C, "0"
  loc_B428EE: FStVarCopyObj var_AC
  loc_B428F1: FLdRfVar var_AC
  loc_B428F4: FLdRfVar var_DC
  loc_B428F7: ImpAdCallFPR4  = Format(, )
  loc_B428FC: FLdRfVar var_DC
  loc_B428FF: CStrVarVal var_8C
  loc_B42903: FLdPr Me
  loc_B42906: VCallAd Control_ID_DescRecaTxt
  loc_B42909: FStAdFunc var_88
  loc_B4290C: FLdPr var_88
  loc_B4290F: Me.Text = from_stack_1
  loc_B42914: FFree1Str var_8C
  loc_B42917: FFree1Ad var_88
  loc_B4291A: FFreeVar var_AC = "": var_CC = ""
  loc_B42923: LitI4 1
  loc_B42928: LitI4 1
  loc_B4292D: LitVarStr var_BC, "###,###,##0.00"
  loc_B42932: FStVarCopyObj var_CC
  loc_B42935: FLdRfVar var_CC
  loc_B42938: LitVarStr var_9C, "0"
  loc_B4293D: FStVarCopyObj var_AC
  loc_B42940: FLdRfVar var_AC
  loc_B42943: FLdRfVar var_DC
  loc_B42946: ImpAdCallFPR4  = Format(, )
  loc_B4294B: FLdRfVar var_DC
  loc_B4294E: CStrVarVal var_8C
  loc_B42952: FLdPr Me
  loc_B42955: VCallAd Control_ID_InteresTxt
  loc_B42958: FStAdFunc var_88
  loc_B4295B: FLdPr var_88
  loc_B4295E: Me.Text = from_stack_1
  loc_B42963: FFree1Str var_8C
  loc_B42966: FFree1Ad var_88
  loc_B42969: FFreeVar var_AC = "": var_CC = ""
  loc_B42972: LitI4 1
  loc_B42977: LitI4 1
  loc_B4297C: LitVarStr var_BC, "###,###,##0.00"
  loc_B42981: FStVarCopyObj var_CC
  loc_B42984: FLdRfVar var_CC
  loc_B42987: LitVarStr var_9C, "0"
  loc_B4298C: FStVarCopyObj var_AC
  loc_B4298F: FLdRfVar var_AC
  loc_B42992: FLdRfVar var_DC
  loc_B42995: ImpAdCallFPR4  = Format(, )
  loc_B4299A: FLdRfVar var_DC
  loc_B4299D: CStrVarVal var_8C
  loc_B429A1: FLdPr Me
  loc_B429A4: VCallAd Control_ID_TotalTxt
  loc_B429A7: FStAdFunc var_88
  loc_B429AA: FLdPr var_88
  loc_B429AD: Me.Text = from_stack_1
  loc_B429B2: FFree1Str var_8C
  loc_B429B5: FFree1Ad var_88
  loc_B429B8: FFreeVar var_AC = "": var_CC = ""
  loc_B429C1: LitI4 0
  loc_B429C6: LitI4 3
  loc_B429CB: FLdRfVar var_E0
  loc_B429CE: Redim
  loc_B429D8: FLdPr Me
  loc_B429DB: VCallAd Control_ID_CuotasFlex
  loc_B429DE: CVarAd
  loc_B429E2: ParmAry1St
  loc_B429E8: FLdPr Me
  loc_B429EB: VCallAd Control_ID_CuotApreTxt
  loc_B429EE: CVarAd
  loc_B429F2: ParmAry1St
  loc_B429F8: FLdPr Me
  loc_B429FB: VCallAd Control_ID_AnticipoTxt
  loc_B429FE: CVarAd
  loc_B42A02: ParmAry1St
  loc_B42A08: FLdPr Me
  loc_B42A0B: VCallAd Control_ID_ImprimirCmd
  loc_B42A0E: CVarAd
  loc_B42A12: ParmAry1St
  loc_B42A18: FLdRfVar var_E0
  loc_B42A1B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B42A20: FLdRfVar var_E0
  loc_B42A23: Erase
  loc_B42A24: FLdPrThis
  loc_B42A25: VCallAd Control_ID_NumeCtaTxt
  loc_B42A28: CVarAd
  loc_B42A2C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B42A31: FFree1Var var_AC = ""
  loc_B42A34: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) 'B2F5E4
  'Data Table: 52F1AC
  loc_B2F308: ILdI2 KeyAscii
  loc_B2F30B: CI4UI1
  loc_B2F30C: LitI4 &H20
  loc_B2F311: EqI4
  loc_B2F312: BranchF loc_B2F5E0
  loc_B2F315: LitI2_Byte 0
  loc_B2F317: IStI2 KeyAscii
  loc_B2F31A: FLdRfVar var_8A
  loc_B2F31D: FLdPr Me
  loc_B2F320: VCallAd Control_ID_OficinaCbo
  loc_B2F323: FStAdFunc var_88
  loc_B2F326: FLdPr var_88
  loc_B2F329:  = Me.ListIndex
  loc_B2F32E: FLdI2 var_8A
  loc_B2F331: FStI2 var_8C
  loc_B2F334: FFree1Ad var_88
  loc_B2F337: FLdI2 var_8C
  loc_B2F33A: LitI2_Byte 0
  loc_B2F33C: EqI2
  loc_B2F33D: BranchF loc_B2F34B
  loc_B2F340: LitI2_Byte 1
  loc_B2F342: CUI1I2
  loc_B2F344: ImpAdStUI1 MemVar_D93038
  loc_B2F348: Branch loc_B2F3C0
  loc_B2F34B: FLdI2 var_8C
  loc_B2F34E: LitI2_Byte 1
  loc_B2F350: EqI2
  loc_B2F351: BranchF loc_B2F35F
  loc_B2F354: LitI2_Byte 2
  loc_B2F356: CUI1I2
  loc_B2F358: ImpAdStUI1 MemVar_D93038
  loc_B2F35C: Branch loc_B2F3C0
  loc_B2F35F: FLdI2 var_8C
  loc_B2F362: LitI2_Byte 2
  loc_B2F364: EqI2
  loc_B2F365: BranchF loc_B2F373
  loc_B2F368: LitI2_Byte 3
  loc_B2F36A: CUI1I2
  loc_B2F36C: ImpAdStUI1 MemVar_D93038
  loc_B2F370: Branch loc_B2F3C0
  loc_B2F373: FLdI2 var_8C
  loc_B2F376: LitI2_Byte 3
  loc_B2F378: EqI2
  loc_B2F379: BranchF loc_B2F387
  loc_B2F37C: LitI2_Byte 4
  loc_B2F37E: CUI1I2
  loc_B2F380: ImpAdStUI1 MemVar_D93038
  loc_B2F384: Branch loc_B2F3C0
  loc_B2F387: FLdI2 var_8C
  loc_B2F38A: LitI2_Byte 4
  loc_B2F38C: EqI2
  loc_B2F38D: BranchF loc_B2F39B
  loc_B2F390: LitI2_Byte 5
  loc_B2F392: CUI1I2
  loc_B2F394: ImpAdStUI1 MemVar_D93038
  loc_B2F398: Branch loc_B2F3C0
  loc_B2F39B: FLdI2 var_8C
  loc_B2F39E: LitI2_Byte 5
  loc_B2F3A0: EqI2
  loc_B2F3A1: BranchF loc_B2F3AF
  loc_B2F3A4: LitI2_Byte 6
  loc_B2F3A6: CUI1I2
  loc_B2F3A8: ImpAdStUI1 MemVar_D93038
  loc_B2F3AC: Branch loc_B2F3C0
  loc_B2F3AF: FLdI2 var_8C
  loc_B2F3B2: LitI2_Byte 6
  loc_B2F3B4: EqI2
  loc_B2F3B5: BranchF loc_B2F3C0
  loc_B2F3B8: LitI2_Byte 7
  loc_B2F3BA: CUI1I2
  loc_B2F3BC: ImpAdStUI1 MemVar_D93038
  loc_B2F3C0: LitVar_Missing var_AC
  loc_B2F3C3: PopAdLdVar
  loc_B2F3C4: LitVarI4
  loc_B2F3CC: PopAdLdVar
  loc_B2F3CD: ImpAdLdRf MemVar_D94034
  loc_B2F3D0: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B2F3D3: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B2F3D8: FLdRfVar var_B0
  loc_B2F3DB: FLdRfVar var_88
  loc_B2F3DE: ImpAdLdRf MemVar_D94034
  loc_B2F3E1: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B2F3E4: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B2F3E9: FLdPr var_88
  loc_B2F3EC: from_stack_1 = clsbase.RecordCount
  loc_B2F3F1: ILdRf var_B0
  loc_B2F3F4: LitI4 0
  loc_B2F3F9: GtI4
  loc_B2F3FA: FFree1Ad var_88
  loc_B2F3FD: BranchF loc_B2F5CE
  loc_B2F400: FLdRfVar var_CC
  loc_B2F403: FLdRfVar var_BC
  loc_B2F406: LitVarStr var_9C, "CodiOfic"
  loc_B2F40B: PopAdLdVar
  loc_B2F40C: FLdRfVar var_B8
  loc_B2F40F: FLdRfVar var_B4
  loc_B2F412: FLdRfVar var_88
  loc_B2F415: ImpAdLdRf MemVar_D94034
  loc_B2F418: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B2F41B: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B2F420: FLdPr var_88
  loc_B2F423: from_stack_1v = clsbase.RsFrmGet()
  loc_B2F428: FLdPr var_B4
  loc_B2F42B:  = Me.Fields
  loc_B2F430: FLdPr var_B8
  loc_B2F433: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F438: FLdPr var_BC
  loc_B2F43B:  = Me.Value
  loc_B2F440: FLdRfVar var_CC
  loc_B2F443: FStVar var_DC
  loc_B2F447: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B2F452: FLdRfVar var_DC
  loc_B2F455: LitVarI2 var_9C, 1
  loc_B2F45A: HardType
  loc_B2F45B: EqVarBool
  loc_B2F45D: BranchF loc_B2F497
  loc_B2F460: FLdRfVar var_E0
  loc_B2F463: LitI2_Byte 0
  loc_B2F465: FLdPr Me
  loc_B2F468: VCallAd Control_ID_OficinaCbo
  loc_B2F46B: FStAdFunc var_88
  loc_B2F46E: FLdPr var_88
  loc_B2F471: from_stack_2 = Me.List(from_stack_1)
  loc_B2F476: ILdRf var_E0
  loc_B2F479: FLdPr Me
  loc_B2F47C: VCallAd Control_ID_OficinaCbo
  loc_B2F47F: FStAdFunc var_B4
  loc_B2F482: FLdPr var_B4
  loc_B2F485: Me.Text = from_stack_1
  loc_B2F48A: FFree1Str var_E0
  loc_B2F48D: FFreeAd var_88 = ""
  loc_B2F494: Branch loc_B2F563
  loc_B2F497: FLdRfVar var_DC
  loc_B2F49A: LitVarI2 var_9C, 2
  loc_B2F49F: HardType
  loc_B2F4A0: EqVarBool
  loc_B2F4A2: BranchF loc_B2F4DC
  loc_B2F4A5: FLdRfVar var_E0
  loc_B2F4A8: LitI2_Byte 1
  loc_B2F4AA: FLdPr Me
  loc_B2F4AD: VCallAd Control_ID_OficinaCbo
  loc_B2F4B0: FStAdFunc var_88
  loc_B2F4B3: FLdPr var_88
  loc_B2F4B6: from_stack_2 = Me.List(from_stack_1)
  loc_B2F4BB: ILdRf var_E0
  loc_B2F4BE: FLdPr Me
  loc_B2F4C1: VCallAd Control_ID_OficinaCbo
  loc_B2F4C4: FStAdFunc var_B4
  loc_B2F4C7: FLdPr var_B4
  loc_B2F4CA: Me.Text = from_stack_1
  loc_B2F4CF: FFree1Str var_E0
  loc_B2F4D2: FFreeAd var_88 = ""
  loc_B2F4D9: Branch loc_B2F563
  loc_B2F4DC: FLdRfVar var_DC
  loc_B2F4DF: LitVarI2 var_9C, 3
  loc_B2F4E4: HardType
  loc_B2F4E5: EqVarBool
  loc_B2F4E7: BranchF loc_B2F521
  loc_B2F4EA: FLdRfVar var_E0
  loc_B2F4ED: LitI2_Byte 2
  loc_B2F4EF: FLdPr Me
  loc_B2F4F2: VCallAd Control_ID_OficinaCbo
  loc_B2F4F5: FStAdFunc var_88
  loc_B2F4F8: FLdPr var_88
  loc_B2F4FB: from_stack_2 = Me.List(from_stack_1)
  loc_B2F500: ILdRf var_E0
  loc_B2F503: FLdPr Me
  loc_B2F506: VCallAd Control_ID_OficinaCbo
  loc_B2F509: FStAdFunc var_B4
  loc_B2F50C: FLdPr var_B4
  loc_B2F50F: Me.Text = from_stack_1
  loc_B2F514: FFree1Str var_E0
  loc_B2F517: FFreeAd var_88 = ""
  loc_B2F51E: Branch loc_B2F563
  loc_B2F521: FLdRfVar var_DC
  loc_B2F524: LitVarI2 var_9C, 4
  loc_B2F529: HardType
  loc_B2F52A: EqVarBool
  loc_B2F52C: BranchF loc_B2F563
  loc_B2F52F: FLdRfVar var_E0
  loc_B2F532: LitI2_Byte 3
  loc_B2F534: FLdPr Me
  loc_B2F537: VCallAd Control_ID_OficinaCbo
  loc_B2F53A: FStAdFunc var_88
  loc_B2F53D: FLdPr var_88
  loc_B2F540: from_stack_2 = Me.List(from_stack_1)
  loc_B2F545: ILdRf var_E0
  loc_B2F548: FLdPr Me
  loc_B2F54B: VCallAd Control_ID_OficinaCbo
  loc_B2F54E: FStAdFunc var_B4
  loc_B2F551: FLdPr var_B4
  loc_B2F554: Me.Text = from_stack_1
  loc_B2F559: FFree1Str var_E0
  loc_B2F55C: FFreeAd var_88 = ""
  loc_B2F563: FLdRfVar var_CC
  loc_B2F566: FLdRfVar var_BC
  loc_B2F569: LitVarStr var_9C, "CuenCtct"
  loc_B2F56E: PopAdLdVar
  loc_B2F56F: FLdRfVar var_B8
  loc_B2F572: FLdRfVar var_B4
  loc_B2F575: FLdRfVar var_88
  loc_B2F578: ImpAdLdRf MemVar_D94034
  loc_B2F57B: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B2F57E: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B2F583: FLdPr var_88
  loc_B2F586: from_stack_1v = clsbase.RsFrmGet()
  loc_B2F58B: FLdPr var_B4
  loc_B2F58E:  = Me.Fields
  loc_B2F593: FLdPr var_B8
  loc_B2F596: from_stack_2 = Me.Item(from_stack_1)
  loc_B2F59B: FLdPr var_BC
  loc_B2F59E:  = Me.Value
  loc_B2F5A3: FLdRfVar var_CC
  loc_B2F5A6: CStrVarTmp
  loc_B2F5A7: FStStrNoPop var_E0
  loc_B2F5AA: FLdPr Me
  loc_B2F5AD: VCallAd Control_ID_NumeCtaTxt
  loc_B2F5B0: FStAdFunc var_E4
  loc_B2F5B3: FLdPr var_E4
  loc_B2F5B6: Me.Text = from_stack_1
  loc_B2F5BB: FFree1Str var_E0
  loc_B2F5BE: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B2F5CB: FFree1Var var_CC = ""
  loc_B2F5CE: FLdPr Me
  loc_B2F5D1: VCallAd Control_ID_NumeCtaTxt
  loc_B2F5D4: CVarAd
  loc_B2F5D8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2F5DD: FFree1Var var_CC = ""
  loc_B2F5E0: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B29B4C
  'Data Table: 52F1AC
  loc_B2989C: FLdRfVar var_8A
  loc_B2989F: FLdPr Me
  loc_B298A2: VCallAd Control_ID_NumeCtaTxt
  loc_B298A5: FStAdFunc var_88
  loc_B298A8: FLdPr var_88
  loc_B298AB:  = Me.Enabled
  loc_B298B0: FLdI2 var_8A
  loc_B298B3: FFree1Ad var_88
  loc_B298B6: BranchF loc_B29B4B
  loc_B298B9: FLdRfVar var_8A
  loc_B298BC: FLdPr Me
  loc_B298BF: VCallAd Control_ID_OficinaCbo
  loc_B298C2: FStAdFunc var_88
  loc_B298C5: FLdPr var_88
  loc_B298C8:  = Me.ListIndex
  loc_B298CD: FLdI2 var_8A
  loc_B298D0: FStI2 var_8C
  loc_B298D3: FFree1Ad var_88
  loc_B298D6: FLdI2 var_8C
  loc_B298D9: LitI2_Byte 0
  loc_B298DB: EqI2
  loc_B298DC: BranchF loc_B298EA
  loc_B298DF: LitI2_Byte 1
  loc_B298E1: CUI1I2
  loc_B298E3: ImpAdStUI1 MemVar_D93038
  loc_B298E7: Branch loc_B2995F
  loc_B298EA: FLdI2 var_8C
  loc_B298ED: LitI2_Byte 1
  loc_B298EF: EqI2
  loc_B298F0: BranchF loc_B298FE
  loc_B298F3: LitI2_Byte 2
  loc_B298F5: CUI1I2
  loc_B298F7: ImpAdStUI1 MemVar_D93038
  loc_B298FB: Branch loc_B2995F
  loc_B298FE: FLdI2 var_8C
  loc_B29901: LitI2_Byte 2
  loc_B29903: EqI2
  loc_B29904: BranchF loc_B29912
  loc_B29907: LitI2_Byte 3
  loc_B29909: CUI1I2
  loc_B2990B: ImpAdStUI1 MemVar_D93038
  loc_B2990F: Branch loc_B2995F
  loc_B29912: FLdI2 var_8C
  loc_B29915: LitI2_Byte 3
  loc_B29917: EqI2
  loc_B29918: BranchF loc_B29926
  loc_B2991B: LitI2_Byte 4
  loc_B2991D: CUI1I2
  loc_B2991F: ImpAdStUI1 MemVar_D93038
  loc_B29923: Branch loc_B2995F
  loc_B29926: FLdI2 var_8C
  loc_B29929: LitI2_Byte 4
  loc_B2992B: EqI2
  loc_B2992C: BranchF loc_B2993A
  loc_B2992F: LitI2_Byte 5
  loc_B29931: CUI1I2
  loc_B29933: ImpAdStUI1 MemVar_D93038
  loc_B29937: Branch loc_B2995F
  loc_B2993A: FLdI2 var_8C
  loc_B2993D: LitI2_Byte 5
  loc_B2993F: EqI2
  loc_B29940: BranchF loc_B2994E
  loc_B29943: LitI2_Byte 6
  loc_B29945: CUI1I2
  loc_B29947: ImpAdStUI1 MemVar_D93038
  loc_B2994B: Branch loc_B2995F
  loc_B2994E: FLdI2 var_8C
  loc_B29951: LitI2_Byte 6
  loc_B29953: EqI2
  loc_B29954: BranchF loc_B2995F
  loc_B29957: LitI2_Byte 7
  loc_B29959: CUI1I2
  loc_B2995B: ImpAdStUI1 MemVar_D93038
  loc_B2995F: FLdRfVar var_90
  loc_B29962: FLdPr Me
  loc_B29965: VCallAd Control_ID_NumeCtaTxt
  loc_B29968: FStAdFunc var_88
  loc_B2996B: FLdPr var_88
  loc_B2996E:  = Me.Text
  loc_B29973: FLdPr Me
  loc_B29976: MemLdRfVar from_stack_1.global_88
  loc_B29979: NewIfNullRf
  loc_B2997D: LitStr "Titular"
  loc_B29980: ILdRf var_90
  loc_B29983: ImpAdLdUI1
  loc_B29987: CStrI2
  loc_B29989: FStStrNoPop var_94
  loc_B2998C: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B29991: FFreeStr var_94 = ""
  loc_B29998: FFree1Ad var_88
  loc_B2999B: BranchF loc_B29AC0
  loc_B2999E: FLdRfVar var_90
  loc_B299A1: FLdPr Me
  loc_B299A4: MemLdRfVar from_stack_1.global_88
  loc_B299A7: NewIfNullPr tblPersona
  loc_B299AA: from_stack_1v = tblPersona.CucuPersGet()
  loc_B299AF: ILdRf var_90
  loc_B299B2: FLdPr Me
  loc_B299B5: VCallAd Control_ID_CucuPersLbl
  loc_B299B8: FStAdFunc var_88
  loc_B299BB: FLdPr var_88
  loc_B299BE: Me.Caption = from_stack_1
  loc_B299C3: FFree1Str var_90
  loc_B299C6: FFree1Ad var_88
  loc_B299C9: FLdRfVar var_90
  loc_B299CC: FLdPr Me
  loc_B299CF: MemLdRfVar from_stack_1.global_88
  loc_B299D2: NewIfNullPr tblPersona
  loc_B299D5: from_stack_1v = tblPersona.DetaPersGet()
  loc_B299DA: ILdRf var_90
  loc_B299DD: FLdPr Me
  loc_B299E0: VCallAd Control_ID_DetaPersLbl
  loc_B299E3: FStAdFunc var_88
  loc_B299E6: FLdPr var_88
  loc_B299E9: Me.Caption = from_stack_1
  loc_B299EE: FFree1Str var_90
  loc_B299F1: FFree1Ad var_88
  loc_B299F4: FLdRfVar var_94
  loc_B299F7: FLdPr Me
  loc_B299FA: MemLdRfVar from_stack_1.global_88
  loc_B299FD: NewIfNullPr tblPersona
  loc_B29A00: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B29A05: FLdRfVar var_98
  loc_B29A08: FLdPr Me
  loc_B29A0B: MemLdRfVar from_stack_1.global_88
  loc_B29A0E: NewIfNullPr tblPersona
  loc_B29A11: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B29A16: FLdRfVar var_90
  loc_B29A19: FLdPr Me
  loc_B29A1C: MemLdRfVar from_stack_1.global_88
  loc_B29A1F: NewIfNullPr tblPersona
  loc_B29A22: from_stack_1v = tblPersona.DetaCallGet()
  loc_B29A27: ILdRf var_90
  loc_B29A2A: LitStr " "
  loc_B29A2D: ConcatStr
  loc_B29A2E: CVarStr var_F8
  loc_B29A31: LitVarStr var_C8, vbNullString
  loc_B29A36: FStVarCopyObj var_D8
  loc_B29A39: FLdRfVar var_D8
  loc_B29A3C: LitStr "Nro: "
  loc_B29A3F: ILdRf var_98
  loc_B29A42: ConcatStr
  loc_B29A43: CVarStr var_B8
  loc_B29A46: ILdRf var_94
  loc_B29A49: LitStr "0"
  loc_B29A4C: NeStr
  loc_B29A4E: CVarBoolI2 var_A8
  loc_B29A52: FLdRfVar var_E8
  loc_B29A55: ImpAdCallFPR4  = IIf(, , )
  loc_B29A5A: FLdRfVar var_E8
  loc_B29A5D: ConcatVar var_108
  loc_B29A61: LitVarStr var_118, " "
  loc_B29A66: ConcatVar var_128
  loc_B29A6A: FLdRfVar var_12C
  loc_B29A6D: FLdPr Me
  loc_B29A70: MemLdRfVar from_stack_1.global_88
  loc_B29A73: NewIfNullPr tblPersona
  loc_B29A76: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B29A7B: FLdZeroAd var_12C
  loc_B29A7E: CVarStr var_13C
  loc_B29A81: ConcatVar var_14C
  loc_B29A85: CStrVarVal var_150
  loc_B29A89: FLdPr Me
  loc_B29A8C: VCallAd Control_ID_DomiPersLbl
  loc_B29A8F: FStAdFunc var_88
  loc_B29A92: FLdPr var_88
  loc_B29A95: Me.Caption = from_stack_1
  loc_B29A9A: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B29AA5: FFree1Ad var_88
  loc_B29AA8: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B29ABD: Branch loc_B29B46
  loc_B29AC0: FLdRfVar var_90
  loc_B29AC3: FLdPr Me
  loc_B29AC6: MemLdRfVar from_stack_1.global_88
  loc_B29AC9: NewIfNullPr tblPersona
  loc_B29ACC: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B29AD1: ILdRf var_90
  loc_B29AD4: FLdPr Me
  loc_B29AD7: MemStStrCopy
  loc_B29ADB: FFree1Str var_90
  loc_B29ADE: FLdPr Me
  loc_B29AE1: MemLdStr global_368
  loc_B29AE4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B29AE9: LitStr vbNullString
  loc_B29AEC: FLdPr Me
  loc_B29AEF: VCallAd Control_ID_CucuPersLbl
  loc_B29AF2: FStAdFunc var_88
  loc_B29AF5: FLdPr var_88
  loc_B29AF8: Me.Caption = from_stack_1
  loc_B29AFD: FFree1Ad var_88
  loc_B29B00: LitStr vbNullString
  loc_B29B03: FLdPr Me
  loc_B29B06: VCallAd Control_ID_DetaPersLbl
  loc_B29B09: FStAdFunc var_88
  loc_B29B0C: FLdPr var_88
  loc_B29B0F: Me.Caption = from_stack_1
  loc_B29B14: FFree1Ad var_88
  loc_B29B17: LitStr vbNullString
  loc_B29B1A: FLdPr Me
  loc_B29B1D: VCallAd Control_ID_DomiPersLbl
  loc_B29B20: FStAdFunc var_88
  loc_B29B23: FLdPr var_88
  loc_B29B26: Me.Caption = from_stack_1
  loc_B29B2B: FFree1Ad var_88
  loc_B29B2E: FLdPr Me
  loc_B29B31: VCallAd Control_ID_NumeCtaTxt
  loc_B29B34: CVarAd
  loc_B29B38: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B29B3D: FFree1Var var_B8 = ""
  loc_B29B40: LitI2_Byte &HFF
  loc_B29B42: IStI2 Cancel
  loc_B29B45: ExitProcHresult
  loc_B29B46: Call Proc_187_56_9FEEB8()
  loc_B29B4B: ExitProcHresult
End Sub

Private Sub ctacteFlex_UnknownEvent_0 '9D71E8
  'Data Table: 52F1AC
  loc_9D71D0: FLdPr Me
  loc_9D71D3: VCallAd Control_ID_ctacteFlex
  loc_9D71D6: FStAdFunc var_88
  loc_9D71D9: FLdRfVar var_88
  loc_9D71DC: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D71E1: FFree1Ad var_88
  loc_9D71E4: ExitProcHresult
  loc_9D71E5: MemStFPR8 global_180
End Sub

Private Sub ctacteFlex_UnknownEvent_1 '9DC470
  'Data Table: 52F1AC
  loc_9DC458: FLdPr Me
  loc_9DC45B: VCallAd Control_ID_ctacteFlex
  loc_9DC45E: FStAdFunc var_88
  loc_9DC461: FLdRfVar var_88
  loc_9DC464: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9DC469: FFree1Ad var_88
  loc_9DC46C: ExitProcHresult
  loc_9DC46F: PopAdLdVar
End Sub

Private Sub ctacteFlex_Click() 'CB54F0
  'Data Table: 52F1AC
  loc_CB348C: FLdPr Me
  loc_CB348F: MemLdUI1 global_317
  loc_CB3493: CI2UI1
  loc_CB3495: LitI2_Byte 1
  loc_CB3497: EqI2
  loc_CB3498: BranchF loc_CB54EC
  loc_CB349B: LitI2_Byte 0
  loc_CB349D: CR8I2
  loc_CB349E: FLdPr Me
  loc_CB34A1: MemStFPR8 global_180
  loc_CB34A4: LitI2_Byte 0
  loc_CB34A6: CR8I2
  loc_CB34A7: FLdPr Me
  loc_CB34AA: MemStFPR8 global_188
  loc_CB34AD: FLdPr Me
  loc_CB34B0: VCallAd Control_ID_ctacteFlex
  loc_CB34B3: FStAdFunc var_88
  loc_CB34B6: FLdPr var_88
  loc_CB34B9: LateIdLdVar var_98 DispID_4 0
  loc_CB34C0: CI4Var
  loc_CB34C2: LitI4 1
  loc_CB34C7: GtI4
  loc_CB34C8: FFree1Ad var_88
  loc_CB34CB: FFree1Var var_98 = ""
  loc_CB34CE: BranchF loc_CB54EC
  loc_CB34D1: FLdPr Me
  loc_CB34D4: VCallAd Control_ID_ctacteFlex
  loc_CB34D7: FStAdFunc var_88
  loc_CB34DA: FLdPr var_88
  loc_CB34DD: LateIdLdVar var_98 DispID_10 0
  loc_CB34E4: CI4Var
  loc_CB34E6: CVarI4
  loc_CB34EA: PopAdLdVar
  loc_CB34EB: LitVarI4
  loc_CB34F3: PopAdLdVar
  loc_CB34F4: FLdPr Me
  loc_CB34F7: VCallAd Control_ID_ctacteFlex
  loc_CB34FA: FStAdFunc var_DC
  loc_CB34FD: FLdPr var_DC
  loc_CB3500: LateIdCallLdVar
  loc_CB350A: CStrVarTmp
  loc_CB350B: FStStrNoPop var_F0
  loc_CB350E: CI4Str
  loc_CB350F: LitI4 0
  loc_CB3514: NeI4
  loc_CB3515: FFree1Str var_F0
  loc_CB3518: FFreeAd var_88 = ""
  loc_CB351F: FFreeVar var_98 = ""
  loc_CB3526: BranchF loc_CB3532
  loc_CB3529: LitStr "No se puede realizar una facilidad de pago a un ítem de la cuenta corriente que ya tiene una facilidad de pago"
  loc_CB352C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB3531: ExitProcHresult
  loc_CB3532: FLdPr Me
  loc_CB3535: VCallAd Control_ID_ctacteFlex
  loc_CB3538: FStAdFunc var_88
  loc_CB353B: FLdPr var_88
  loc_CB353E: LateIdLdVar var_98 DispID_10 0
  loc_CB3545: CI4Var
  loc_CB3547: CVarI4
  loc_CB354B: PopAdLdVar
  loc_CB354C: LitVarI4
  loc_CB3554: PopAdLdVar
  loc_CB3555: FLdPr Me
  loc_CB3558: VCallAd Control_ID_ctacteFlex
  loc_CB355B: FStAdFunc var_DC
  loc_CB355E: FLdPr var_DC
  loc_CB3561: LateIdCallLdVar
  loc_CB356B: CStrVarTmp
  loc_CB356C: FStStrNoPop var_F0
  loc_CB356F: CI4Str
  loc_CB3570: LitI4 0
  loc_CB3575: EqI4
  loc_CB3576: FFree1Str var_F0
  loc_CB3579: FFreeAd var_88 = ""
  loc_CB3580: FFreeVar var_98 = ""
  loc_CB3587: BranchF loc_CB4275
  loc_CB358A: LitI2_Byte 0
  loc_CB358C: FLdPr Me
  loc_CB358F: MemLdRfVar from_stack_1.global_96
  loc_CB3592: FLdPr Me
  loc_CB3595: VCallAd Control_ID_ctacteFlex
  loc_CB3598: FStAdFunc var_88
  loc_CB359B: FLdPr var_88
  loc_CB359E: LateIdLdVar var_98 DispID_5 0
  loc_CB35A5: CI4Var
  loc_CB35A7: LitI4 1
  loc_CB35AC: SubI4
  loc_CB35AD: CI2I4
  loc_CB35AE: FFree1Ad var_88
  loc_CB35B1: FFree1Var var_98 = ""
  loc_CB35B4: ForI2 var_F4
  loc_CB35BA: FLdPr Me
  loc_CB35BD: MemLdI2 global_96
  loc_CB35C0: CI4UI1
  loc_CB35C1: CVarI4
  loc_CB35C5: PopAdLdVar
  loc_CB35C6: FLdPr Me
  loc_CB35C9: VCallAd Control_ID_ctacteFlex
  loc_CB35CC: FStAdFunc var_88
  loc_CB35CF: FLdPr var_88
  loc_CB35D2: LateIdSt
  loc_CB35D7: FFree1Ad var_88
  loc_CB35DA: FLdPr Me
  loc_CB35DD: VCallAd Control_ID_ctacteFlex
  loc_CB35E0: FStAdFunc var_88
  loc_CB35E3: FLdPr var_88
  loc_CB35E6: LateIdLdVar var_98 DispID_38 0
  loc_CB35ED: CI4Var
  loc_CB35EF: LitI4 &HFFFF80
  loc_CB35F4: EqI4
  loc_CB35F5: FFree1Ad var_88
  loc_CB35F8: FFree1Var var_98 = ""
  loc_CB35FB: BranchF loc_CB3BE2
  loc_CB35FE: LitVarI4
  loc_CB3606: PopAdLdVar
  loc_CB3607: FLdPr Me
  loc_CB360A: VCallAd Control_ID_ctacteFlex
  loc_CB360D: FStAdFunc var_88
  loc_CB3610: FLdPr var_88
  loc_CB3613: LateIdSt
  loc_CB3618: FFree1Ad var_88
  loc_CB361B: FLdPr Me
  loc_CB361E: VCallAd Control_ID_ctacteFlex
  loc_CB3621: FStAdFunc var_88
  loc_CB3624: FLdPr var_88
  loc_CB3627: LateIdLdVar var_98 DispID_10 0
  loc_CB362E: CI4Var
  loc_CB3630: CVarI4
  loc_CB3634: PopAdLdVar
  loc_CB3635: LitVarI4
  loc_CB363D: PopAdLdVar
  loc_CB363E: LitVarStr var_104, "No"
  loc_CB3643: PopAdLdVar
  loc_CB3644: FLdPr Me
  loc_CB3647: VCallAd Control_ID_ctacteFlex
  loc_CB364A: FStAdFunc var_DC
  loc_CB364D: FLdPr var_DC
  loc_CB3650: LateIdCallSt
  loc_CB3658: FFreeAd var_88 = ""
  loc_CB365F: FFree1Var var_98 = ""
  loc_CB3662: FLdPr Me
  loc_CB3665: MemLdI2 global_96
  loc_CB3668: LitI2_Byte 0
  loc_CB366A: EqI2
  loc_CB366B: BranchF loc_CB38E8
  loc_CB366E: FLdPr Me
  loc_CB3671: VCallAd Control_ID_ctacteFlex
  loc_CB3674: FStAdFunc var_88
  loc_CB3677: FLdPr var_88
  loc_CB367A: LateIdLdVar var_98 DispID_10 0
  loc_CB3681: CI4Var
  loc_CB3683: CVarI4
  loc_CB3687: PopAdLdVar
  loc_CB3688: LitVarI4
  loc_CB3690: PopAdLdVar
  loc_CB3691: FLdPr Me
  loc_CB3694: VCallAd Control_ID_ctacteFlex
  loc_CB3697: FStAdFunc var_DC
  loc_CB369A: FLdPr var_DC
  loc_CB369D: LateIdCallLdVar
  loc_CB36A7: PopAd
  loc_CB36A9: FLdPr Me
  loc_CB36AC: VCallAd Control_ID_ctacteFlex
  loc_CB36AF: FStAdFunc var_118
  loc_CB36B2: FLdPr var_118
  loc_CB36B5: LateIdLdVar var_128 DispID_10 0
  loc_CB36BC: CI4Var
  loc_CB36BE: CVarI4
  loc_CB36C2: PopAdLdVar
  loc_CB36C3: LitVarI4
  loc_CB36CB: PopAdLdVar
  loc_CB36CC: FLdPr Me
  loc_CB36CF: VCallAd Control_ID_ctacteFlex
  loc_CB36D2: FStAdFunc var_14C
  loc_CB36D5: FLdPr var_14C
  loc_CB36D8: LateIdCallLdVar
  loc_CB36E2: PopAd
  loc_CB36E4: FLdPr Me
  loc_CB36E7: VCallAd Control_ID_ctacteFlex
  loc_CB36EA: FStAdFunc var_160
  loc_CB36ED: FLdPr var_160
  loc_CB36F0: LateIdLdVar var_170 DispID_10 0
  loc_CB36F7: CI4Var
  loc_CB36F9: CVarI4
  loc_CB36FD: PopAdLdVar
  loc_CB36FE: LitVarI4
  loc_CB3706: PopAdLdVar
  loc_CB3707: FLdPr Me
  loc_CB370A: VCallAd Control_ID_ctacteFlex
  loc_CB370D: FStAdFunc var_1B4
  loc_CB3710: FLdPr var_1B4
  loc_CB3713: LateIdCallLdVar
  loc_CB371D: CStrVarTmp
  loc_CB371E: CVarStr var_1D4
  loc_CB3721: FLdRfVar var_1E4
  loc_CB3724: ImpAdCallFPR4  = Trim()
  loc_CB3729: LitI4 4
  loc_CB372E: FLdRfVar var_1E4
  loc_CB3731: FLdRfVar var_1F4
  loc_CB3734: ImpAdCallFPR4  = Right(, )
  loc_CB3739: FLdPr Me
  loc_CB373C: VCallAd Control_ID_ctacteFlex
  loc_CB373F: FStAdFunc var_1F8
  loc_CB3742: FLdPr var_1F8
  loc_CB3745: LateIdLdVar var_208 DispID_10 0
  loc_CB374C: CI4Var
  loc_CB374E: CVarI4
  loc_CB3752: PopAdLdVar
  loc_CB3753: LitVarI4
  loc_CB375B: PopAdLdVar
  loc_CB375C: FLdPr Me
  loc_CB375F: VCallAd Control_ID_ctacteFlex
  loc_CB3762: FStAdFunc var_24C
  loc_CB3765: FLdPr var_24C
  loc_CB3768: LateIdCallLdVar
  loc_CB3772: PopAd
  loc_CB3774: LitI4 1
  loc_CB3779: FLdPr Me
  loc_CB377C: VCallAd Control_ID_ctacteFlex
  loc_CB377F: FStAdFunc var_260
  loc_CB3782: FLdPr var_260
  loc_CB3785: LateIdLdVar var_270 DispID_10 0
  loc_CB378C: CI4Var
  loc_CB378E: CVarI4
  loc_CB3792: PopAdLdVar
  loc_CB3793: LitVarI4
  loc_CB379B: PopAdLdVar
  loc_CB379C: FLdPr Me
  loc_CB379F: VCallAd Control_ID_ctacteFlex
  loc_CB37A2: FStAdFunc var_2B4
  loc_CB37A5: FLdPr var_2B4
  loc_CB37A8: LateIdCallLdVar
  loc_CB37B2: CStrVarTmp
  loc_CB37B3: FStStrNoPop var_F0
  loc_CB37B6: LitStr "/"
  loc_CB37B9: LitI4 0
  loc_CB37BE: FnInStr4
  loc_CB37C0: LitI4 1
  loc_CB37C5: SubI4
  loc_CB37C6: CVarI4
  loc_CB37CA: LitI4 1
  loc_CB37CF: FLdRfVar var_25C
  loc_CB37D2: CStrVarTmp
  loc_CB37D3: CVarStr var_2D4
  loc_CB37D6: FLdRfVar var_304
  loc_CB37D9: ImpAdCallFPR4  = Mid(, , )
  loc_CB37DE: FLdPr Me
  loc_CB37E1: VCallAd Control_ID_ctacteFlex
  loc_CB37E4: FStAdFunc var_308
  loc_CB37E7: FLdPr var_308
  loc_CB37EA: LateIdLdVar var_318 DispID_10 0
  loc_CB37F1: CI4Var
  loc_CB37F3: CVarI4
  loc_CB37F7: PopAdLdVar
  loc_CB37F8: LitVarI4
  loc_CB3800: PopAdLdVar
  loc_CB3801: FLdPr Me
  loc_CB3804: VCallAd Control_ID_ctacteFlex
  loc_CB3807: FStAdFunc var_35C
  loc_CB380A: FLdPr var_35C
  loc_CB380D: LateIdCallLdVar
  loc_CB3817: PopAd
  loc_CB3819: FLdPr Me
  loc_CB381C: VCallAd Control_ID_ctacteFlex
  loc_CB381F: FStAdFunc var_370
  loc_CB3822: FLdPr var_370
  loc_CB3825: LateIdLdVar var_380 DispID_10 0
  loc_CB382C: CI4Var
  loc_CB382E: CVarI4
  loc_CB3832: PopAdLdVar
  loc_CB3833: LitVarI4
  loc_CB383B: PopAdLdVar
  loc_CB383C: FLdPr Me
  loc_CB383F: VCallAd Control_ID_ctacteFlex
  loc_CB3842: FStAdFunc var_3C4
  loc_CB3845: FLdPr var_3C4
  loc_CB3848: LateIdCallLdVar
  loc_CB3852: PopAd
  loc_CB3854: LitStr "tmp_ctacteboleto"
  loc_CB3857: LitStr "No"
  loc_CB385A: FLdRfVar var_3D4
  loc_CB385D: CStrVarTmp
  loc_CB385E: FStStrNoPop var_3E4
  loc_CB3861: CI2Str
  loc_CB3863: FLdRfVar var_36C
  loc_CB3866: CStrVarTmp
  loc_CB3867: FStStrNoPop var_3E0
  loc_CB386A: CI4Str
  loc_CB386B: FLdRfVar var_304
  loc_CB386E: CI2Var
  loc_CB386F: FLdRfVar var_1F4
  loc_CB3872: CI2Var
  loc_CB3873: FLdRfVar var_15C
  loc_CB3876: CStrVarTmp
  loc_CB3877: FStStrNoPop var_3DC
  loc_CB387A: FLdRfVar var_EC
  loc_CB387D: CStrVarTmp
  loc_CB387E: FStStrNoPop var_3D8
  loc_CB3881: CUI1Str
  loc_CB3883: FLdPr Me
  loc_CB3886: MemLdRfVar from_stack_1.global_68
  loc_CB3889: NewIfNullPr clsctacte
  loc_CB388C: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_CB3891: FFreeStr var_F0 = "": var_3D8 = "": var_3DC = "": var_3E0 = ""
  loc_CB389E: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_14C = "": var_160 = "": var_1B4 = "": var_1F8 = "": var_24C = "": var_260 = "": var_2B4 = "": var_308 = "": var_35C = "": var_370 = ""
  loc_CB38BD: FFreeVar var_98 = "": var_EC = "": var_128 = "": var_15C = "": var_170 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_208 = "": var_25C = "": var_270 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_1F4 = ""
  loc_CB38E8: FLdPr Me
  loc_CB38EB: MemLdI2 global_96
  loc_CB38EE: LitI2_Byte &HB
  loc_CB38F0: EqI2
  loc_CB38F1: BranchF loc_CB39E9
  loc_CB38F4: FLdPr Me
  loc_CB38F7: VCallAd Control_ID_ctacteFlex
  loc_CB38FA: FStAdFunc var_88
  loc_CB38FD: FLdPr var_88
  loc_CB3900: LateIdLdVar var_98 DispID_10 0
  loc_CB3907: CI4Var
  loc_CB3909: CVarI4
  loc_CB390D: PopAdLdVar
  loc_CB390E: FLdPr Me
  loc_CB3911: MemLdI2 global_96
  loc_CB3914: CI4UI1
  loc_CB3915: CVarI4
  loc_CB3919: PopAdLdVar
  loc_CB391A: FLdPr Me
  loc_CB391D: VCallAd Control_ID_ctacteFlex
  loc_CB3920: FStAdFunc var_DC
  loc_CB3923: FLdPr var_DC
  loc_CB3926: LateIdCallLdVar
  loc_CB3930: PopAd
  loc_CB3932: LitI4 2
  loc_CB3937: FLdPr Me
  loc_CB393A: MemLdFPR8 global_108
  loc_CB393D: FLdRfVar var_EC
  loc_CB3940: CStrVarTmp
  loc_CB3941: FStStrNoPop var_F0
  loc_CB3944: CR8Str
  loc_CB3946: SubR4
  loc_CB3947: CVarR8
  loc_CB394B: FLdRfVar var_15C
  loc_CB394E: ImpAdCallFPR4  = Round(, )
  loc_CB3953: FLdRfVar var_15C
  loc_CB3956: CR4Var
  loc_CB3957: FLdPr Me
  loc_CB395A: MemStFPR8 global_108
  loc_CB395D: FFree1Str var_F0
  loc_CB3960: FFreeAd var_88 = ""
  loc_CB3967: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB3972: FLdPr Me
  loc_CB3975: VCallAd Control_ID_ctacteFlex
  loc_CB3978: FStAdFunc var_88
  loc_CB397B: FLdPr var_88
  loc_CB397E: LateIdLdVar var_98 DispID_10 0
  loc_CB3985: CI4Var
  loc_CB3987: CVarI4
  loc_CB398B: PopAdLdVar
  loc_CB398C: FLdPr Me
  loc_CB398F: MemLdI2 global_96
  loc_CB3992: CI4UI1
  loc_CB3993: CVarI4
  loc_CB3997: PopAdLdVar
  loc_CB3998: FLdPr Me
  loc_CB399B: VCallAd Control_ID_ctacteFlex
  loc_CB399E: FStAdFunc var_DC
  loc_CB39A1: FLdPr var_DC
  loc_CB39A4: LateIdCallLdVar
  loc_CB39AE: PopAd
  loc_CB39B0: LitI4 2
  loc_CB39B5: FLdRfVar var_EC
  loc_CB39B8: CStrVarTmp
  loc_CB39B9: FStStrNoPop var_F0
  loc_CB39BC: CR8Str
  loc_CB39BE: CVarR8
  loc_CB39C2: FLdRfVar var_15C
  loc_CB39C5: ImpAdCallFPR4  = Round(, )
  loc_CB39CA: FLdRfVar var_15C
  loc_CB39CD: CR4Var
  loc_CB39CE: FLdPr Me
  loc_CB39D1: MemStFPR8 global_180
  loc_CB39D4: FFree1Str var_F0
  loc_CB39D7: FFreeAd var_88 = ""
  loc_CB39DE: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB39E9: FLdPr Me
  loc_CB39EC: MemLdI2 global_96
  loc_CB39EF: LitI2_Byte &HC
  loc_CB39F1: EqI2
  loc_CB39F2: BranchF loc_CB3B55
  loc_CB39F5: FLdPr Me
  loc_CB39F8: VCallAd Control_ID_ctacteFlex
  loc_CB39FB: FStAdFunc var_88
  loc_CB39FE: FLdPr var_88
  loc_CB3A01: LateIdLdVar var_98 DispID_10 0
  loc_CB3A08: CI4Var
  loc_CB3A0A: CVarI4
  loc_CB3A0E: PopAdLdVar
  loc_CB3A0F: FLdPr Me
  loc_CB3A12: MemLdI2 global_96
  loc_CB3A15: CI4UI1
  loc_CB3A16: CVarI4
  loc_CB3A1A: PopAdLdVar
  loc_CB3A1B: FLdPr Me
  loc_CB3A1E: VCallAd Control_ID_ctacteFlex
  loc_CB3A21: FStAdFunc var_DC
  loc_CB3A24: FLdPr var_DC
  loc_CB3A27: LateIdCallLdVar
  loc_CB3A31: CStrVarTmp
  loc_CB3A32: CVarStr var_128
  loc_CB3A35: ImpAdCallI2 IsNumeric()
  loc_CB3A3A: FFreeAd var_88 = ""
  loc_CB3A41: FFreeVar var_98 = "": var_EC = ""
  loc_CB3A4A: BranchF loc_CB3B45
  loc_CB3A4D: FLdPr Me
  loc_CB3A50: VCallAd Control_ID_ctacteFlex
  loc_CB3A53: FStAdFunc var_88
  loc_CB3A56: FLdPr var_88
  loc_CB3A59: LateIdLdVar var_98 DispID_10 0
  loc_CB3A60: CI4Var
  loc_CB3A62: CVarI4
  loc_CB3A66: PopAdLdVar
  loc_CB3A67: FLdPr Me
  loc_CB3A6A: MemLdI2 global_96
  loc_CB3A6D: CI4UI1
  loc_CB3A6E: CVarI4
  loc_CB3A72: PopAdLdVar
  loc_CB3A73: FLdPr Me
  loc_CB3A76: VCallAd Control_ID_ctacteFlex
  loc_CB3A79: FStAdFunc var_DC
  loc_CB3A7C: FLdPr var_DC
  loc_CB3A7F: LateIdCallLdVar
  loc_CB3A89: PopAd
  loc_CB3A8B: LitI4 2
  loc_CB3A90: FLdPr Me
  loc_CB3A93: MemLdFPR8 global_116
  loc_CB3A96: FLdRfVar var_EC
  loc_CB3A99: CStrVarTmp
  loc_CB3A9A: FStStrNoPop var_F0
  loc_CB3A9D: CR8Str
  loc_CB3A9F: SubR4
  loc_CB3AA0: CVarR8
  loc_CB3AA4: FLdRfVar var_15C
  loc_CB3AA7: ImpAdCallFPR4  = Round(, )
  loc_CB3AAC: FLdRfVar var_15C
  loc_CB3AAF: CR4Var
  loc_CB3AB0: FLdPr Me
  loc_CB3AB3: MemStFPR8 global_116
  loc_CB3AB6: FFree1Str var_F0
  loc_CB3AB9: FFreeAd var_88 = ""
  loc_CB3AC0: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB3ACB: FLdPr Me
  loc_CB3ACE: VCallAd Control_ID_ctacteFlex
  loc_CB3AD1: FStAdFunc var_88
  loc_CB3AD4: FLdPr var_88
  loc_CB3AD7: LateIdLdVar var_98 DispID_10 0
  loc_CB3ADE: CI4Var
  loc_CB3AE0: CVarI4
  loc_CB3AE4: PopAdLdVar
  loc_CB3AE5: FLdPr Me
  loc_CB3AE8: MemLdI2 global_96
  loc_CB3AEB: CI4UI1
  loc_CB3AEC: CVarI4
  loc_CB3AF0: PopAdLdVar
  loc_CB3AF1: FLdPr Me
  loc_CB3AF4: VCallAd Control_ID_ctacteFlex
  loc_CB3AF7: FStAdFunc var_DC
  loc_CB3AFA: FLdPr var_DC
  loc_CB3AFD: LateIdCallLdVar
  loc_CB3B07: PopAd
  loc_CB3B09: LitI4 2
  loc_CB3B0E: FLdRfVar var_EC
  loc_CB3B11: CStrVarTmp
  loc_CB3B12: FStStrNoPop var_F0
  loc_CB3B15: CR8Str
  loc_CB3B17: CVarR8
  loc_CB3B1B: FLdRfVar var_15C
  loc_CB3B1E: ImpAdCallFPR4  = Round(, )
  loc_CB3B23: FLdRfVar var_15C
  loc_CB3B26: CR4Var
  loc_CB3B27: FLdPr Me
  loc_CB3B2A: MemStFPR8 global_188
  loc_CB3B2D: FFree1Str var_F0
  loc_CB3B30: FFreeAd var_88 = ""
  loc_CB3B37: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB3B42: Branch loc_CB3B55
  loc_CB3B45: FLdPr Me
  loc_CB3B48: MemLdFPR8 global_116
  loc_CB3B4B: LitI2_Byte 0
  loc_CB3B4D: CR8I2
  loc_CB3B4E: SubR4
  loc_CB3B4F: FLdPr Me
  loc_CB3B52: MemStFPR8 global_116
  loc_CB3B55: FLdPr Me
  loc_CB3B58: MemLdI2 global_96
  loc_CB3B5B: LitI2_Byte &HD
  loc_CB3B5D: EqI2
  loc_CB3B5E: BranchF loc_CB3BDF
  loc_CB3B61: FLdPr Me
  loc_CB3B64: VCallAd Control_ID_ctacteFlex
  loc_CB3B67: FStAdFunc var_88
  loc_CB3B6A: FLdPr var_88
  loc_CB3B6D: LateIdLdVar var_98 DispID_10 0
  loc_CB3B74: CI4Var
  loc_CB3B76: CVarI4
  loc_CB3B7A: PopAdLdVar
  loc_CB3B7B: FLdPr Me
  loc_CB3B7E: MemLdI2 global_96
  loc_CB3B81: CI4UI1
  loc_CB3B82: CVarI4
  loc_CB3B86: PopAdLdVar
  loc_CB3B87: FLdPr Me
  loc_CB3B8A: VCallAd Control_ID_ctacteFlex
  loc_CB3B8D: FStAdFunc var_DC
  loc_CB3B90: FLdPr var_DC
  loc_CB3B93: LateIdCallLdVar
  loc_CB3B9D: PopAd
  loc_CB3B9F: LitI4 2
  loc_CB3BA4: FLdPr Me
  loc_CB3BA7: MemLdFPR8 global_100
  loc_CB3BAA: FLdRfVar var_EC
  loc_CB3BAD: CStrVarTmp
  loc_CB3BAE: FStStrNoPop var_F0
  loc_CB3BB1: CR8Str
  loc_CB3BB3: SubR4
  loc_CB3BB4: CVarR8
  loc_CB3BB8: FLdRfVar var_15C
  loc_CB3BBB: ImpAdCallFPR4  = Round(, )
  loc_CB3BC0: FLdRfVar var_15C
  loc_CB3BC3: CR4Var
  loc_CB3BC4: FLdPr Me
  loc_CB3BC7: MemStFPR8 global_100
  loc_CB3BCA: FFree1Str var_F0
  loc_CB3BCD: FFreeAd var_88 = ""
  loc_CB3BD4: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB3BDF: Branch loc_CB4267
  loc_CB3BE2: LitVarI4
  loc_CB3BEA: PopAdLdVar
  loc_CB3BEB: FLdPr Me
  loc_CB3BEE: VCallAd Control_ID_ctacteFlex
  loc_CB3BF1: FStAdFunc var_88
  loc_CB3BF4: FLdPr var_88
  loc_CB3BF7: LateIdSt
  loc_CB3BFC: FFree1Ad var_88
  loc_CB3BFF: FLdPr Me
  loc_CB3C02: VCallAd Control_ID_ctacteFlex
  loc_CB3C05: FStAdFunc var_88
  loc_CB3C08: FLdPr var_88
  loc_CB3C0B: LateIdLdVar var_98 DispID_10 0
  loc_CB3C12: CI4Var
  loc_CB3C14: CVarI4
  loc_CB3C18: PopAdLdVar
  loc_CB3C19: LitVarI4
  loc_CB3C21: PopAdLdVar
  loc_CB3C22: LitVarStr var_104, "Si"
  loc_CB3C27: PopAdLdVar
  loc_CB3C28: FLdPr Me
  loc_CB3C2B: VCallAd Control_ID_ctacteFlex
  loc_CB3C2E: FStAdFunc var_DC
  loc_CB3C31: FLdPr var_DC
  loc_CB3C34: LateIdCallSt
  loc_CB3C3C: FFreeAd var_88 = ""
  loc_CB3C43: FFree1Var var_98 = ""
  loc_CB3C46: FLdPr Me
  loc_CB3C49: MemLdI2 global_96
  loc_CB3C4C: LitI2_Byte 0
  loc_CB3C4E: EqI2
  loc_CB3C4F: BranchF loc_CB3F89
  loc_CB3C52: FLdPr Me
  loc_CB3C55: VCallAd Control_ID_ctacteFlex
  loc_CB3C58: FStAdFunc var_88
  loc_CB3C5B: FLdPr var_88
  loc_CB3C5E: LateIdLdVar var_98 DispID_10 0
  loc_CB3C65: CI4Var
  loc_CB3C67: CVarI4
  loc_CB3C6B: PopAdLdVar
  loc_CB3C6C: LitVarI4
  loc_CB3C74: PopAdLdVar
  loc_CB3C75: FLdPr Me
  loc_CB3C78: VCallAd Control_ID_ctacteFlex
  loc_CB3C7B: FStAdFunc var_DC
  loc_CB3C7E: FLdPr var_DC
  loc_CB3C81: LateIdCallLdVar
  loc_CB3C8B: PopAd
  loc_CB3C8D: FLdPr Me
  loc_CB3C90: VCallAd Control_ID_ctacteFlex
  loc_CB3C93: FStAdFunc var_118
  loc_CB3C96: FLdPr var_118
  loc_CB3C99: LateIdLdVar var_128 DispID_10 0
  loc_CB3CA0: CI4Var
  loc_CB3CA2: CVarI4
  loc_CB3CA6: PopAdLdVar
  loc_CB3CA7: LitVarI4
  loc_CB3CAF: PopAdLdVar
  loc_CB3CB0: FLdPr Me
  loc_CB3CB3: VCallAd Control_ID_ctacteFlex
  loc_CB3CB6: FStAdFunc var_14C
  loc_CB3CB9: FLdPr var_14C
  loc_CB3CBC: LateIdCallLdVar
  loc_CB3CC6: PopAd
  loc_CB3CC8: FLdPr Me
  loc_CB3CCB: VCallAd Control_ID_ctacteFlex
  loc_CB3CCE: FStAdFunc var_160
  loc_CB3CD1: FLdPr var_160
  loc_CB3CD4: LateIdLdVar var_170 DispID_10 0
  loc_CB3CDB: CI4Var
  loc_CB3CDD: CVarI4
  loc_CB3CE1: PopAdLdVar
  loc_CB3CE2: LitVarI4
  loc_CB3CEA: PopAdLdVar
  loc_CB3CEB: FLdPr Me
  loc_CB3CEE: VCallAd Control_ID_ctacteFlex
  loc_CB3CF1: FStAdFunc var_1B4
  loc_CB3CF4: FLdPr var_1B4
  loc_CB3CF7: LateIdCallLdVar
  loc_CB3D01: CStrVarTmp
  loc_CB3D02: CVarStr var_1D4
  loc_CB3D05: FLdRfVar var_1E4
  loc_CB3D08: ImpAdCallFPR4  = Trim()
  loc_CB3D0D: LitI4 4
  loc_CB3D12: FLdRfVar var_1E4
  loc_CB3D15: FLdRfVar var_1F4
  loc_CB3D18: ImpAdCallFPR4  = Right(, )
  loc_CB3D1D: FLdPr Me
  loc_CB3D20: VCallAd Control_ID_ctacteFlex
  loc_CB3D23: FStAdFunc var_1F8
  loc_CB3D26: FLdPr var_1F8
  loc_CB3D29: LateIdLdVar var_208 DispID_10 0
  loc_CB3D30: CI4Var
  loc_CB3D32: CVarI4
  loc_CB3D36: PopAdLdVar
  loc_CB3D37: LitVarI4
  loc_CB3D3F: PopAdLdVar
  loc_CB3D40: FLdPr Me
  loc_CB3D43: VCallAd Control_ID_ctacteFlex
  loc_CB3D46: FStAdFunc var_24C
  loc_CB3D49: FLdPr var_24C
  loc_CB3D4C: LateIdCallLdVar
  loc_CB3D56: PopAd
  loc_CB3D58: LitI4 1
  loc_CB3D5D: FLdPr Me
  loc_CB3D60: VCallAd Control_ID_ctacteFlex
  loc_CB3D63: FStAdFunc var_260
  loc_CB3D66: FLdPr var_260
  loc_CB3D69: LateIdLdVar var_270 DispID_10 0
  loc_CB3D70: CI4Var
  loc_CB3D72: CVarI4
  loc_CB3D76: PopAdLdVar
  loc_CB3D77: LitVarI4
  loc_CB3D7F: PopAdLdVar
  loc_CB3D80: FLdPr Me
  loc_CB3D83: VCallAd Control_ID_ctacteFlex
  loc_CB3D86: FStAdFunc var_2B4
  loc_CB3D89: FLdPr var_2B4
  loc_CB3D8C: LateIdCallLdVar
  loc_CB3D96: CStrVarTmp
  loc_CB3D97: FStStrNoPop var_F0
  loc_CB3D9A: LitStr "/"
  loc_CB3D9D: LitI4 0
  loc_CB3DA2: FnInStr4
  loc_CB3DA4: LitI4 1
  loc_CB3DA9: SubI4
  loc_CB3DAA: CVarI4
  loc_CB3DAE: LitI4 1
  loc_CB3DB3: FLdRfVar var_25C
  loc_CB3DB6: CStrVarTmp
  loc_CB3DB7: CVarStr var_2D4
  loc_CB3DBA: FLdRfVar var_304
  loc_CB3DBD: ImpAdCallFPR4  = Mid(, , )
  loc_CB3DC2: FLdPr Me
  loc_CB3DC5: VCallAd Control_ID_ctacteFlex
  loc_CB3DC8: FStAdFunc var_308
  loc_CB3DCB: FLdPr var_308
  loc_CB3DCE: LateIdLdVar var_318 DispID_10 0
  loc_CB3DD5: CI4Var
  loc_CB3DD7: CVarI4
  loc_CB3DDB: PopAdLdVar
  loc_CB3DDC: LitVarI4
  loc_CB3DE4: PopAdLdVar
  loc_CB3DE5: FLdPr Me
  loc_CB3DE8: VCallAd Control_ID_ctacteFlex
  loc_CB3DEB: FStAdFunc var_35C
  loc_CB3DEE: FLdPr var_35C
  loc_CB3DF1: LateIdCallLdVar
  loc_CB3DFB: PopAd
  loc_CB3DFD: FLdPr Me
  loc_CB3E00: VCallAd Control_ID_ctacteFlex
  loc_CB3E03: FStAdFunc var_370
  loc_CB3E06: FLdPr var_370
  loc_CB3E09: LateIdLdVar var_380 DispID_10 0
  loc_CB3E10: CI4Var
  loc_CB3E12: CVarI4
  loc_CB3E16: PopAdLdVar
  loc_CB3E17: LitVarI4
  loc_CB3E1F: PopAdLdVar
  loc_CB3E20: FLdPr Me
  loc_CB3E23: VCallAd Control_ID_ctacteFlex
  loc_CB3E26: FStAdFunc var_3C4
  loc_CB3E29: FLdPr var_3C4
  loc_CB3E2C: LateIdCallLdVar
  loc_CB3E36: PopAd
  loc_CB3E38: LitStr "tmp_ctacteboleto"
  loc_CB3E3B: LitStr "Si"
  loc_CB3E3E: FLdRfVar var_3D4
  loc_CB3E41: CStrVarTmp
  loc_CB3E42: FStStrNoPop var_3E4
  loc_CB3E45: CI2Str
  loc_CB3E47: FLdRfVar var_36C
  loc_CB3E4A: CStrVarTmp
  loc_CB3E4B: FStStrNoPop var_3E0
  loc_CB3E4E: CI4Str
  loc_CB3E4F: FLdRfVar var_304
  loc_CB3E52: CI2Var
  loc_CB3E53: FLdRfVar var_1F4
  loc_CB3E56: CI2Var
  loc_CB3E57: FLdRfVar var_15C
  loc_CB3E5A: CStrVarTmp
  loc_CB3E5B: FStStrNoPop var_3DC
  loc_CB3E5E: FLdRfVar var_EC
  loc_CB3E61: CStrVarTmp
  loc_CB3E62: FStStrNoPop var_3D8
  loc_CB3E65: CUI1Str
  loc_CB3E67: FLdPr Me
  loc_CB3E6A: MemLdRfVar from_stack_1.global_68
  loc_CB3E6D: NewIfNullPr clsctacte
  loc_CB3E70: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_CB3E75: FFreeStr var_F0 = "": var_3D8 = "": var_3DC = "": var_3E0 = ""
  loc_CB3E82: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_14C = "": var_160 = "": var_1B4 = "": var_1F8 = "": var_24C = "": var_260 = "": var_2B4 = "": var_308 = "": var_35C = "": var_370 = ""
  loc_CB3EA1: FFreeVar var_98 = "": var_EC = "": var_128 = "": var_15C = "": var_170 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_208 = "": var_25C = "": var_270 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_1F4 = ""
  loc_CB3ECC: FLdPr Me
  loc_CB3ECF: VCallAd Control_ID_ctacteFlex
  loc_CB3ED2: FStAdFunc var_88
  loc_CB3ED5: FLdPr var_88
  loc_CB3ED8: LateIdLdVar var_98 DispID_10 0
  loc_CB3EDF: CI4Var
  loc_CB3EE1: CVarI4
  loc_CB3EE5: PopAdLdVar
  loc_CB3EE6: LitVarI4
  loc_CB3EEE: PopAdLdVar
  loc_CB3EEF: FLdPr Me
  loc_CB3EF2: VCallAd Control_ID_ctacteFlex
  loc_CB3EF5: FStAdFunc var_DC
  loc_CB3EF8: FLdPr var_DC
  loc_CB3EFB: LateIdCallLdVar
  loc_CB3F05: CStrVarTmp
  loc_CB3F06: FStStrNoPop var_F0
  loc_CB3F09: CI2Str
  loc_CB3F0B: LitI2_Byte 0
  loc_CB3F0D: NeI2
  loc_CB3F0E: FFree1Str var_F0
  loc_CB3F11: FFreeAd var_88 = ""
  loc_CB3F18: FFreeVar var_98 = ""
  loc_CB3F1F: BranchF loc_CB3F89
  loc_CB3F22: FLdPr Me
  loc_CB3F25: VCallAd Control_ID_ctacteFlex
  loc_CB3F28: FStAdFunc var_88
  loc_CB3F2B: FLdPr var_88
  loc_CB3F2E: LateIdLdVar var_98 DispID_10 0
  loc_CB3F35: CI4Var
  loc_CB3F37: CVarI4
  loc_CB3F3B: PopAdLdVar
  loc_CB3F3C: LitVarI4
  loc_CB3F44: PopAdLdVar
  loc_CB3F45: FLdPr Me
  loc_CB3F48: VCallAd Control_ID_ctacteFlex
  loc_CB3F4B: FStAdFunc var_DC
  loc_CB3F4E: FLdPr var_DC
  loc_CB3F51: LateIdCallLdVar
  loc_CB3F5B: CStrVarTmp
  loc_CB3F5C: FStStrNoPop var_F0
  loc_CB3F5F: CI2Str
  loc_CB3F61: CI4UI1
  loc_CB3F62: ImpAdCallI2 Proc_270_89_A79368()
  loc_CB3F67: LitI4 2
  loc_CB3F6C: EqI4
  loc_CB3F6D: FFree1Str var_F0
  loc_CB3F70: FFreeAd var_88 = ""
  loc_CB3F77: FFreeVar var_98 = ""
  loc_CB3F7E: BranchF loc_CB3F89
  loc_CB3F81: LitStr "El apremio esta en Juicio"
  loc_CB3F84: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB3F89: FLdPr Me
  loc_CB3F8C: MemLdI2 global_96
  loc_CB3F8F: LitI2_Byte &HB
  loc_CB3F91: EqI2
  loc_CB3F92: BranchF loc_CB408A
  loc_CB3F95: FLdPr Me
  loc_CB3F98: VCallAd Control_ID_ctacteFlex
  loc_CB3F9B: FStAdFunc var_88
  loc_CB3F9E: FLdPr var_88
  loc_CB3FA1: LateIdLdVar var_98 DispID_10 0
  loc_CB3FA8: CI4Var
  loc_CB3FAA: CVarI4
  loc_CB3FAE: PopAdLdVar
  loc_CB3FAF: FLdPr Me
  loc_CB3FB2: MemLdI2 global_96
  loc_CB3FB5: CI4UI1
  loc_CB3FB6: CVarI4
  loc_CB3FBA: PopAdLdVar
  loc_CB3FBB: FLdPr Me
  loc_CB3FBE: VCallAd Control_ID_ctacteFlex
  loc_CB3FC1: FStAdFunc var_DC
  loc_CB3FC4: FLdPr var_DC
  loc_CB3FC7: LateIdCallLdVar
  loc_CB3FD1: PopAd
  loc_CB3FD3: LitI4 2
  loc_CB3FD8: FLdPr Me
  loc_CB3FDB: MemLdFPR8 global_108
  loc_CB3FDE: FLdRfVar var_EC
  loc_CB3FE1: CStrVarTmp
  loc_CB3FE2: FStStrNoPop var_F0
  loc_CB3FE5: CR8Str
  loc_CB3FE7: AddR8
  loc_CB3FE8: CVarR8
  loc_CB3FEC: FLdRfVar var_15C
  loc_CB3FEF: ImpAdCallFPR4  = Round(, )
  loc_CB3FF4: FLdRfVar var_15C
  loc_CB3FF7: CR4Var
  loc_CB3FF8: FLdPr Me
  loc_CB3FFB: MemStFPR8 global_108
  loc_CB3FFE: FFree1Str var_F0
  loc_CB4001: FFreeAd var_88 = ""
  loc_CB4008: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4013: FLdPr Me
  loc_CB4016: VCallAd Control_ID_ctacteFlex
  loc_CB4019: FStAdFunc var_88
  loc_CB401C: FLdPr var_88
  loc_CB401F: LateIdLdVar var_98 DispID_10 0
  loc_CB4026: CI4Var
  loc_CB4028: CVarI4
  loc_CB402C: PopAdLdVar
  loc_CB402D: FLdPr Me
  loc_CB4030: MemLdI2 global_96
  loc_CB4033: CI4UI1
  loc_CB4034: CVarI4
  loc_CB4038: PopAdLdVar
  loc_CB4039: FLdPr Me
  loc_CB403C: VCallAd Control_ID_ctacteFlex
  loc_CB403F: FStAdFunc var_DC
  loc_CB4042: FLdPr var_DC
  loc_CB4045: LateIdCallLdVar
  loc_CB404F: PopAd
  loc_CB4051: LitI4 2
  loc_CB4056: FLdRfVar var_EC
  loc_CB4059: CStrVarTmp
  loc_CB405A: FStStrNoPop var_F0
  loc_CB405D: CR8Str
  loc_CB405F: CVarR8
  loc_CB4063: FLdRfVar var_15C
  loc_CB4066: ImpAdCallFPR4  = Round(, )
  loc_CB406B: FLdRfVar var_15C
  loc_CB406E: CR4Var
  loc_CB406F: FLdPr Me
  loc_CB4072: MemStFPR8 global_180
  loc_CB4075: FFree1Str var_F0
  loc_CB4078: FFreeAd var_88 = ""
  loc_CB407F: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB408A: FLdPr Me
  loc_CB408D: MemLdI2 global_96
  loc_CB4090: LitI2_Byte &HC
  loc_CB4092: EqI2
  loc_CB4093: BranchF loc_CB41F6
  loc_CB4096: FLdPr Me
  loc_CB4099: VCallAd Control_ID_ctacteFlex
  loc_CB409C: FStAdFunc var_88
  loc_CB409F: FLdPr var_88
  loc_CB40A2: LateIdLdVar var_98 DispID_10 0
  loc_CB40A9: CI4Var
  loc_CB40AB: CVarI4
  loc_CB40AF: PopAdLdVar
  loc_CB40B0: FLdPr Me
  loc_CB40B3: MemLdI2 global_96
  loc_CB40B6: CI4UI1
  loc_CB40B7: CVarI4
  loc_CB40BB: PopAdLdVar
  loc_CB40BC: FLdPr Me
  loc_CB40BF: VCallAd Control_ID_ctacteFlex
  loc_CB40C2: FStAdFunc var_DC
  loc_CB40C5: FLdPr var_DC
  loc_CB40C8: LateIdCallLdVar
  loc_CB40D2: CStrVarTmp
  loc_CB40D3: CVarStr var_128
  loc_CB40D6: ImpAdCallI2 IsNumeric()
  loc_CB40DB: FFreeAd var_88 = ""
  loc_CB40E2: FFreeVar var_98 = "": var_EC = ""
  loc_CB40EB: BranchF loc_CB41E6
  loc_CB40EE: FLdPr Me
  loc_CB40F1: VCallAd Control_ID_ctacteFlex
  loc_CB40F4: FStAdFunc var_88
  loc_CB40F7: FLdPr var_88
  loc_CB40FA: LateIdLdVar var_98 DispID_10 0
  loc_CB4101: CI4Var
  loc_CB4103: CVarI4
  loc_CB4107: PopAdLdVar
  loc_CB4108: FLdPr Me
  loc_CB410B: MemLdI2 global_96
  loc_CB410E: CI4UI1
  loc_CB410F: CVarI4
  loc_CB4113: PopAdLdVar
  loc_CB4114: FLdPr Me
  loc_CB4117: VCallAd Control_ID_ctacteFlex
  loc_CB411A: FStAdFunc var_DC
  loc_CB411D: FLdPr var_DC
  loc_CB4120: LateIdCallLdVar
  loc_CB412A: PopAd
  loc_CB412C: LitI4 2
  loc_CB4131: FLdPr Me
  loc_CB4134: MemLdFPR8 global_116
  loc_CB4137: FLdRfVar var_EC
  loc_CB413A: CStrVarTmp
  loc_CB413B: FStStrNoPop var_F0
  loc_CB413E: CR8Str
  loc_CB4140: AddR8
  loc_CB4141: CVarR8
  loc_CB4145: FLdRfVar var_15C
  loc_CB4148: ImpAdCallFPR4  = Round(, )
  loc_CB414D: FLdRfVar var_15C
  loc_CB4150: CR4Var
  loc_CB4151: FLdPr Me
  loc_CB4154: MemStFPR8 global_116
  loc_CB4157: FFree1Str var_F0
  loc_CB415A: FFreeAd var_88 = ""
  loc_CB4161: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB416C: FLdPr Me
  loc_CB416F: VCallAd Control_ID_ctacteFlex
  loc_CB4172: FStAdFunc var_88
  loc_CB4175: FLdPr var_88
  loc_CB4178: LateIdLdVar var_98 DispID_10 0
  loc_CB417F: CI4Var
  loc_CB4181: CVarI4
  loc_CB4185: PopAdLdVar
  loc_CB4186: FLdPr Me
  loc_CB4189: MemLdI2 global_96
  loc_CB418C: CI4UI1
  loc_CB418D: CVarI4
  loc_CB4191: PopAdLdVar
  loc_CB4192: FLdPr Me
  loc_CB4195: VCallAd Control_ID_ctacteFlex
  loc_CB4198: FStAdFunc var_DC
  loc_CB419B: FLdPr var_DC
  loc_CB419E: LateIdCallLdVar
  loc_CB41A8: PopAd
  loc_CB41AA: LitI4 2
  loc_CB41AF: FLdRfVar var_EC
  loc_CB41B2: CStrVarTmp
  loc_CB41B3: FStStrNoPop var_F0
  loc_CB41B6: CR8Str
  loc_CB41B8: CVarR8
  loc_CB41BC: FLdRfVar var_15C
  loc_CB41BF: ImpAdCallFPR4  = Round(, )
  loc_CB41C4: FLdRfVar var_15C
  loc_CB41C7: CR4Var
  loc_CB41C8: FLdPr Me
  loc_CB41CB: MemStFPR8 global_188
  loc_CB41CE: FFree1Str var_F0
  loc_CB41D1: FFreeAd var_88 = ""
  loc_CB41D8: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB41E3: Branch loc_CB41F6
  loc_CB41E6: FLdPr Me
  loc_CB41E9: MemLdFPR8 global_116
  loc_CB41EC: LitI2_Byte 0
  loc_CB41EE: CR8I2
  loc_CB41EF: AddR8
  loc_CB41F0: FLdPr Me
  loc_CB41F3: MemStFPR8 global_116
  loc_CB41F6: FLdPr Me
  loc_CB41F9: MemLdI2 global_96
  loc_CB41FC: LitI2_Byte &HD
  loc_CB41FE: EqI2
  loc_CB41FF: BranchF loc_CB4267
  loc_CB4202: FLdPr Me
  loc_CB4205: VCallAd Control_ID_ctacteFlex
  loc_CB4208: FStAdFunc var_88
  loc_CB420B: FLdPr var_88
  loc_CB420E: LateIdLdVar var_98 DispID_10 0
  loc_CB4215: CI4Var
  loc_CB4217: CVarI4
  loc_CB421B: PopAdLdVar
  loc_CB421C: FLdPr Me
  loc_CB421F: MemLdI2 global_96
  loc_CB4222: CI4UI1
  loc_CB4223: CVarI4
  loc_CB4227: PopAdLdVar
  loc_CB4228: FLdPr Me
  loc_CB422B: VCallAd Control_ID_ctacteFlex
  loc_CB422E: FStAdFunc var_DC
  loc_CB4231: FLdPr var_DC
  loc_CB4234: LateIdCallLdVar
  loc_CB423E: PopAd
  loc_CB4240: FLdPr Me
  loc_CB4243: MemLdFPR8 global_100
  loc_CB4246: FLdRfVar var_EC
  loc_CB4249: CStrVarTmp
  loc_CB424A: FStStrNoPop var_F0
  loc_CB424D: CR8Str
  loc_CB424F: AddR8
  loc_CB4250: FLdPr Me
  loc_CB4253: MemStFPR8 global_100
  loc_CB4256: FFree1Str var_F0
  loc_CB4259: FFreeAd var_88 = ""
  loc_CB4260: FFreeVar var_98 = ""
  loc_CB4267: FLdPr Me
  loc_CB426A: MemLdRfVar from_stack_1.global_96
  loc_CB426D: NextI2 var_F4, loc_CB35BA
  loc_CB4272: Branch loc_CB5001
  loc_CB4275: FLdPr Me
  loc_CB4278: VCallAd Control_ID_ctacteFlex
  loc_CB427B: FStAdFunc var_88
  loc_CB427E: FLdPr var_88
  loc_CB4281: LateIdLdVar var_98 DispID_10 0
  loc_CB4288: CI4Var
  loc_CB428A: CVarI4
  loc_CB428E: PopAdLdVar
  loc_CB428F: LitVarI4
  loc_CB4297: PopAdLdVar
  loc_CB4298: FLdPr Me
  loc_CB429B: VCallAd Control_ID_ctacteFlex
  loc_CB429E: FStAdFunc var_DC
  loc_CB42A1: FLdPr var_DC
  loc_CB42A4: LateIdCallLdVar
  loc_CB42AE: CStrVarTmp
  loc_CB42AF: FStStrNoPop var_F0
  loc_CB42B2: CI4Str
  loc_CB42B3: LitI4 0
  loc_CB42B8: NeI4
  loc_CB42B9: FFree1Str var_F0
  loc_CB42BC: FFreeAd var_88 = ""
  loc_CB42C3: FFreeVar var_98 = ""
  loc_CB42CA: BranchF loc_CB5001
  loc_CB42CD: LitI2_Byte 1
  loc_CB42CF: FLdPr Me
  loc_CB42D2: MemLdRfVar from_stack_1.global_96
  loc_CB42D5: FLdPr Me
  loc_CB42D8: VCallAd Control_ID_ctacteFlex
  loc_CB42DB: FStAdFunc var_88
  loc_CB42DE: FLdPr var_88
  loc_CB42E1: LateIdLdVar var_98 DispID_4 0
  loc_CB42E8: CI4Var
  loc_CB42EA: LitI4 1
  loc_CB42EF: SubI4
  loc_CB42F0: CI2I4
  loc_CB42F1: FFree1Ad var_88
  loc_CB42F4: FFree1Var var_98 = ""
  loc_CB42F7: ForI2 var_3E8
  loc_CB42FD: FLdPr Me
  loc_CB4300: MemLdI2 global_96
  loc_CB4303: CI4UI1
  loc_CB4304: CVarI4
  loc_CB4308: PopAdLdVar
  loc_CB4309: LitVarI4
  loc_CB4311: PopAdLdVar
  loc_CB4312: FLdPr Me
  loc_CB4315: VCallAd Control_ID_ctacteFlex
  loc_CB4318: FStAdFunc var_88
  loc_CB431B: FLdPr var_88
  loc_CB431E: LateIdCallLdVar
  loc_CB4328: CStrVarTmp
  loc_CB4329: FStStrNoPop var_F0
  loc_CB432C: CI4Str
  loc_CB432D: FLdPr Me
  loc_CB4330: VCallAd Control_ID_ctacteFlex
  loc_CB4333: FStAdFunc var_DC
  loc_CB4336: FLdPr var_DC
  loc_CB4339: LateIdLdVar var_EC DispID_10 0
  loc_CB4340: CI4Var
  loc_CB4342: CVarI4
  loc_CB4346: PopAdLdVar
  loc_CB4347: LitVarI4
  loc_CB434F: PopAdLdVar
  loc_CB4350: FLdPr Me
  loc_CB4353: VCallAd Control_ID_ctacteFlex
  loc_CB4356: FStAdFunc var_118
  loc_CB4359: FLdPr var_118
  loc_CB435C: LateIdCallLdVar
  loc_CB4366: CStrVarTmp
  loc_CB4367: FStStrNoPop var_3D8
  loc_CB436A: CI4Str
  loc_CB436B: EqI4
  loc_CB436C: FFreeStr var_F0 = ""
  loc_CB4373: FFreeAd var_88 = "": var_DC = ""
  loc_CB437C: FFreeVar var_98 = "": var_EC = ""
  loc_CB4385: BranchF loc_CB4FF6
  loc_CB4388: FLdPr Me
  loc_CB438B: MemLdI2 global_96
  loc_CB438E: CI4UI1
  loc_CB438F: CVarI4
  loc_CB4393: PopAdLdVar
  loc_CB4394: FLdPr Me
  loc_CB4397: VCallAd Control_ID_ctacteFlex
  loc_CB439A: FStAdFunc var_88
  loc_CB439D: FLdPr var_88
  loc_CB43A0: LateIdSt
  loc_CB43A5: FFree1Ad var_88
  loc_CB43A8: LitI2_Byte 0
  loc_CB43AA: FLdPr Me
  loc_CB43AD: MemLdRfVar from_stack_1.global_98
  loc_CB43B0: FLdPr Me
  loc_CB43B3: VCallAd Control_ID_ctacteFlex
  loc_CB43B6: FStAdFunc var_88
  loc_CB43B9: FLdPr var_88
  loc_CB43BC: LateIdLdVar var_98 DispID_5 0
  loc_CB43C3: CI4Var
  loc_CB43C5: LitI4 1
  loc_CB43CA: SubI4
  loc_CB43CB: CI2I4
  loc_CB43CC: FFree1Ad var_88
  loc_CB43CF: FFree1Var var_98 = ""
  loc_CB43D2: ForI2 var_3EC
  loc_CB43D8: FLdPr Me
  loc_CB43DB: MemLdI2 global_98
  loc_CB43DE: CI4UI1
  loc_CB43DF: CVarI4
  loc_CB43E3: PopAdLdVar
  loc_CB43E4: FLdPr Me
  loc_CB43E7: VCallAd Control_ID_ctacteFlex
  loc_CB43EA: FStAdFunc var_88
  loc_CB43ED: FLdPr var_88
  loc_CB43F0: LateIdSt
  loc_CB43F5: FFree1Ad var_88
  loc_CB43F8: FLdPr Me
  loc_CB43FB: VCallAd Control_ID_ctacteFlex
  loc_CB43FE: FStAdFunc var_88
  loc_CB4401: FLdPr var_88
  loc_CB4404: LateIdLdVar var_98 DispID_38 0
  loc_CB440B: CI4Var
  loc_CB440D: LitI4 &HFFFF80
  loc_CB4412: EqI4
  loc_CB4413: FFree1Ad var_88
  loc_CB4416: FFree1Var var_98 = ""
  loc_CB4419: BranchF loc_CB4A05
  loc_CB441C: LitVarI4
  loc_CB4424: PopAdLdVar
  loc_CB4425: FLdPr Me
  loc_CB4428: VCallAd Control_ID_ctacteFlex
  loc_CB442B: FStAdFunc var_88
  loc_CB442E: FLdPr var_88
  loc_CB4431: LateIdSt
  loc_CB4436: FFree1Ad var_88
  loc_CB4439: FLdPr Me
  loc_CB443C: VCallAd Control_ID_ctacteFlex
  loc_CB443F: FStAdFunc var_88
  loc_CB4442: FLdPr var_88
  loc_CB4445: LateIdLdVar var_98 DispID_10 0
  loc_CB444C: CI4Var
  loc_CB444E: CVarI4
  loc_CB4452: PopAdLdVar
  loc_CB4453: LitVarI4
  loc_CB445B: PopAdLdVar
  loc_CB445C: LitVarStr var_104, "No"
  loc_CB4461: PopAdLdVar
  loc_CB4462: FLdPr Me
  loc_CB4465: VCallAd Control_ID_ctacteFlex
  loc_CB4468: FStAdFunc var_DC
  loc_CB446B: FLdPr var_DC
  loc_CB446E: LateIdCallSt
  loc_CB4476: FFreeAd var_88 = ""
  loc_CB447D: FFree1Var var_98 = ""
  loc_CB4480: FLdPr Me
  loc_CB4483: MemLdI2 global_98
  loc_CB4486: LitI2_Byte 0
  loc_CB4488: EqI2
  loc_CB4489: BranchF loc_CB4706
  loc_CB448C: FLdPr Me
  loc_CB448F: VCallAd Control_ID_ctacteFlex
  loc_CB4492: FStAdFunc var_88
  loc_CB4495: FLdPr var_88
  loc_CB4498: LateIdLdVar var_98 DispID_10 0
  loc_CB449F: CI4Var
  loc_CB44A1: CVarI4
  loc_CB44A5: PopAdLdVar
  loc_CB44A6: LitVarI4
  loc_CB44AE: PopAdLdVar
  loc_CB44AF: FLdPr Me
  loc_CB44B2: VCallAd Control_ID_ctacteFlex
  loc_CB44B5: FStAdFunc var_DC
  loc_CB44B8: FLdPr var_DC
  loc_CB44BB: LateIdCallLdVar
  loc_CB44C5: PopAd
  loc_CB44C7: FLdPr Me
  loc_CB44CA: VCallAd Control_ID_ctacteFlex
  loc_CB44CD: FStAdFunc var_118
  loc_CB44D0: FLdPr var_118
  loc_CB44D3: LateIdLdVar var_128 DispID_10 0
  loc_CB44DA: CI4Var
  loc_CB44DC: CVarI4
  loc_CB44E0: PopAdLdVar
  loc_CB44E1: LitVarI4
  loc_CB44E9: PopAdLdVar
  loc_CB44EA: FLdPr Me
  loc_CB44ED: VCallAd Control_ID_ctacteFlex
  loc_CB44F0: FStAdFunc var_14C
  loc_CB44F3: FLdPr var_14C
  loc_CB44F6: LateIdCallLdVar
  loc_CB4500: PopAd
  loc_CB4502: FLdPr Me
  loc_CB4505: VCallAd Control_ID_ctacteFlex
  loc_CB4508: FStAdFunc var_160
  loc_CB450B: FLdPr var_160
  loc_CB450E: LateIdLdVar var_170 DispID_10 0
  loc_CB4515: CI4Var
  loc_CB4517: CVarI4
  loc_CB451B: PopAdLdVar
  loc_CB451C: LitVarI4
  loc_CB4524: PopAdLdVar
  loc_CB4525: FLdPr Me
  loc_CB4528: VCallAd Control_ID_ctacteFlex
  loc_CB452B: FStAdFunc var_1B4
  loc_CB452E: FLdPr var_1B4
  loc_CB4531: LateIdCallLdVar
  loc_CB453B: CStrVarTmp
  loc_CB453C: CVarStr var_1D4
  loc_CB453F: FLdRfVar var_1E4
  loc_CB4542: ImpAdCallFPR4  = Trim()
  loc_CB4547: LitI4 4
  loc_CB454C: FLdRfVar var_1E4
  loc_CB454F: FLdRfVar var_1F4
  loc_CB4552: ImpAdCallFPR4  = Right(, )
  loc_CB4557: FLdPr Me
  loc_CB455A: VCallAd Control_ID_ctacteFlex
  loc_CB455D: FStAdFunc var_1F8
  loc_CB4560: FLdPr var_1F8
  loc_CB4563: LateIdLdVar var_208 DispID_10 0
  loc_CB456A: CI4Var
  loc_CB456C: CVarI4
  loc_CB4570: PopAdLdVar
  loc_CB4571: LitVarI4
  loc_CB4579: PopAdLdVar
  loc_CB457A: FLdPr Me
  loc_CB457D: VCallAd Control_ID_ctacteFlex
  loc_CB4580: FStAdFunc var_24C
  loc_CB4583: FLdPr var_24C
  loc_CB4586: LateIdCallLdVar
  loc_CB4590: PopAd
  loc_CB4592: LitI4 1
  loc_CB4597: FLdPr Me
  loc_CB459A: VCallAd Control_ID_ctacteFlex
  loc_CB459D: FStAdFunc var_260
  loc_CB45A0: FLdPr var_260
  loc_CB45A3: LateIdLdVar var_270 DispID_10 0
  loc_CB45AA: CI4Var
  loc_CB45AC: CVarI4
  loc_CB45B0: PopAdLdVar
  loc_CB45B1: LitVarI4
  loc_CB45B9: PopAdLdVar
  loc_CB45BA: FLdPr Me
  loc_CB45BD: VCallAd Control_ID_ctacteFlex
  loc_CB45C0: FStAdFunc var_2B4
  loc_CB45C3: FLdPr var_2B4
  loc_CB45C6: LateIdCallLdVar
  loc_CB45D0: CStrVarTmp
  loc_CB45D1: FStStrNoPop var_F0
  loc_CB45D4: LitStr "/"
  loc_CB45D7: LitI4 0
  loc_CB45DC: FnInStr4
  loc_CB45DE: LitI4 1
  loc_CB45E3: SubI4
  loc_CB45E4: CVarI4
  loc_CB45E8: LitI4 1
  loc_CB45ED: FLdRfVar var_25C
  loc_CB45F0: CStrVarTmp
  loc_CB45F1: CVarStr var_2D4
  loc_CB45F4: FLdRfVar var_304
  loc_CB45F7: ImpAdCallFPR4  = Mid(, , )
  loc_CB45FC: FLdPr Me
  loc_CB45FF: VCallAd Control_ID_ctacteFlex
  loc_CB4602: FStAdFunc var_308
  loc_CB4605: FLdPr var_308
  loc_CB4608: LateIdLdVar var_318 DispID_10 0
  loc_CB460F: CI4Var
  loc_CB4611: CVarI4
  loc_CB4615: PopAdLdVar
  loc_CB4616: LitVarI4
  loc_CB461E: PopAdLdVar
  loc_CB461F: FLdPr Me
  loc_CB4622: VCallAd Control_ID_ctacteFlex
  loc_CB4625: FStAdFunc var_35C
  loc_CB4628: FLdPr var_35C
  loc_CB462B: LateIdCallLdVar
  loc_CB4635: PopAd
  loc_CB4637: FLdPr Me
  loc_CB463A: VCallAd Control_ID_ctacteFlex
  loc_CB463D: FStAdFunc var_370
  loc_CB4640: FLdPr var_370
  loc_CB4643: LateIdLdVar var_380 DispID_10 0
  loc_CB464A: CI4Var
  loc_CB464C: CVarI4
  loc_CB4650: PopAdLdVar
  loc_CB4651: LitVarI4
  loc_CB4659: PopAdLdVar
  loc_CB465A: FLdPr Me
  loc_CB465D: VCallAd Control_ID_ctacteFlex
  loc_CB4660: FStAdFunc var_3C4
  loc_CB4663: FLdPr var_3C4
  loc_CB4666: LateIdCallLdVar
  loc_CB4670: PopAd
  loc_CB4672: LitStr "tmp_ctacteboleto"
  loc_CB4675: LitStr "No"
  loc_CB4678: FLdRfVar var_3D4
  loc_CB467B: CStrVarTmp
  loc_CB467C: FStStrNoPop var_3E4
  loc_CB467F: CI2Str
  loc_CB4681: FLdRfVar var_36C
  loc_CB4684: CStrVarTmp
  loc_CB4685: FStStrNoPop var_3E0
  loc_CB4688: CI4Str
  loc_CB4689: FLdRfVar var_304
  loc_CB468C: CI2Var
  loc_CB468D: FLdRfVar var_1F4
  loc_CB4690: CI2Var
  loc_CB4691: FLdRfVar var_15C
  loc_CB4694: CStrVarTmp
  loc_CB4695: FStStrNoPop var_3DC
  loc_CB4698: FLdRfVar var_EC
  loc_CB469B: CStrVarTmp
  loc_CB469C: FStStrNoPop var_3D8
  loc_CB469F: CUI1Str
  loc_CB46A1: FLdPr Me
  loc_CB46A4: MemLdRfVar from_stack_1.global_68
  loc_CB46A7: NewIfNullPr clsctacte
  loc_CB46AA: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_CB46AF: FFreeStr var_F0 = "": var_3D8 = "": var_3DC = "": var_3E0 = ""
  loc_CB46BC: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_14C = "": var_160 = "": var_1B4 = "": var_1F8 = "": var_24C = "": var_260 = "": var_2B4 = "": var_308 = "": var_35C = "": var_370 = ""
  loc_CB46DB: FFreeVar var_98 = "": var_EC = "": var_128 = "": var_15C = "": var_170 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_208 = "": var_25C = "": var_270 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_1F4 = ""
  loc_CB4706: FLdPr Me
  loc_CB4709: MemLdI2 global_98
  loc_CB470C: LitI2_Byte &HB
  loc_CB470E: EqI2
  loc_CB470F: BranchF loc_CB480E
  loc_CB4712: FLdPr Me
  loc_CB4715: VCallAd Control_ID_ctacteFlex
  loc_CB4718: FStAdFunc var_88
  loc_CB471B: FLdPr var_88
  loc_CB471E: LateIdLdVar var_98 DispID_10 0
  loc_CB4725: CI4Var
  loc_CB4727: CVarI4
  loc_CB472B: PopAdLdVar
  loc_CB472C: FLdPr Me
  loc_CB472F: MemLdI2 global_98
  loc_CB4732: CI4UI1
  loc_CB4733: CVarI4
  loc_CB4737: PopAdLdVar
  loc_CB4738: FLdPr Me
  loc_CB473B: VCallAd Control_ID_ctacteFlex
  loc_CB473E: FStAdFunc var_DC
  loc_CB4741: FLdPr var_DC
  loc_CB4744: LateIdCallLdVar
  loc_CB474E: PopAd
  loc_CB4750: LitI4 2
  loc_CB4755: FLdPr Me
  loc_CB4758: MemLdFPR8 global_108
  loc_CB475B: FLdRfVar var_EC
  loc_CB475E: CStrVarTmp
  loc_CB475F: FStStrNoPop var_F0
  loc_CB4762: CR8Str
  loc_CB4764: SubR4
  loc_CB4765: CVarR8
  loc_CB4769: FLdRfVar var_15C
  loc_CB476C: ImpAdCallFPR4  = Round(, )
  loc_CB4771: FLdRfVar var_15C
  loc_CB4774: CR4Var
  loc_CB4775: FLdPr Me
  loc_CB4778: MemStFPR8 global_108
  loc_CB477B: FFree1Str var_F0
  loc_CB477E: FFreeAd var_88 = ""
  loc_CB4785: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4790: FLdPr Me
  loc_CB4793: VCallAd Control_ID_ctacteFlex
  loc_CB4796: FStAdFunc var_88
  loc_CB4799: FLdPr var_88
  loc_CB479C: LateIdLdVar var_98 DispID_10 0
  loc_CB47A3: CI4Var
  loc_CB47A5: CVarI4
  loc_CB47A9: PopAdLdVar
  loc_CB47AA: FLdPr Me
  loc_CB47AD: MemLdI2 global_98
  loc_CB47B0: CI4UI1
  loc_CB47B1: CVarI4
  loc_CB47B5: PopAdLdVar
  loc_CB47B6: FLdPr Me
  loc_CB47B9: VCallAd Control_ID_ctacteFlex
  loc_CB47BC: FStAdFunc var_DC
  loc_CB47BF: FLdPr var_DC
  loc_CB47C2: LateIdCallLdVar
  loc_CB47CC: PopAd
  loc_CB47CE: LitI4 2
  loc_CB47D3: FLdPr Me
  loc_CB47D6: MemLdFPR8 global_180
  loc_CB47D9: FLdRfVar var_EC
  loc_CB47DC: CStrVarTmp
  loc_CB47DD: FStStrNoPop var_F0
  loc_CB47E0: CR8Str
  loc_CB47E2: AddR8
  loc_CB47E3: CVarR8
  loc_CB47E7: FLdRfVar var_15C
  loc_CB47EA: ImpAdCallFPR4  = Round(, )
  loc_CB47EF: FLdRfVar var_15C
  loc_CB47F2: CR4Var
  loc_CB47F3: FLdPr Me
  loc_CB47F6: MemStFPR8 global_180
  loc_CB47F9: FFree1Str var_F0
  loc_CB47FC: FFreeAd var_88 = ""
  loc_CB4803: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB480E: FLdPr Me
  loc_CB4811: MemLdI2 global_98
  loc_CB4814: LitI2_Byte &HC
  loc_CB4816: EqI2
  loc_CB4817: BranchF loc_CB4991
  loc_CB481A: FLdPr Me
  loc_CB481D: VCallAd Control_ID_ctacteFlex
  loc_CB4820: FStAdFunc var_88
  loc_CB4823: FLdPr var_88
  loc_CB4826: LateIdLdVar var_98 DispID_10 0
  loc_CB482D: CI4Var
  loc_CB482F: CVarI4
  loc_CB4833: PopAdLdVar
  loc_CB4834: FLdPr Me
  loc_CB4837: MemLdI2 global_98
  loc_CB483A: CI4UI1
  loc_CB483B: CVarI4
  loc_CB483F: PopAdLdVar
  loc_CB4840: FLdPr Me
  loc_CB4843: VCallAd Control_ID_ctacteFlex
  loc_CB4846: FStAdFunc var_DC
  loc_CB4849: FLdPr var_DC
  loc_CB484C: LateIdCallLdVar
  loc_CB4856: CStrVarTmp
  loc_CB4857: CVarStr var_128
  loc_CB485A: ImpAdCallI2 IsNumeric()
  loc_CB485F: FFreeAd var_88 = ""
  loc_CB4866: FFreeVar var_98 = "": var_EC = ""
  loc_CB486F: BranchF loc_CB4971
  loc_CB4872: FLdPr Me
  loc_CB4875: VCallAd Control_ID_ctacteFlex
  loc_CB4878: FStAdFunc var_88
  loc_CB487B: FLdPr var_88
  loc_CB487E: LateIdLdVar var_98 DispID_10 0
  loc_CB4885: CI4Var
  loc_CB4887: CVarI4
  loc_CB488B: PopAdLdVar
  loc_CB488C: FLdPr Me
  loc_CB488F: MemLdI2 global_98
  loc_CB4892: CI4UI1
  loc_CB4893: CVarI4
  loc_CB4897: PopAdLdVar
  loc_CB4898: FLdPr Me
  loc_CB489B: VCallAd Control_ID_ctacteFlex
  loc_CB489E: FStAdFunc var_DC
  loc_CB48A1: FLdPr var_DC
  loc_CB48A4: LateIdCallLdVar
  loc_CB48AE: PopAd
  loc_CB48B0: LitI4 2
  loc_CB48B5: FLdPr Me
  loc_CB48B8: MemLdFPR8 global_116
  loc_CB48BB: FLdRfVar var_EC
  loc_CB48BE: CStrVarTmp
  loc_CB48BF: FStStrNoPop var_F0
  loc_CB48C2: CR8Str
  loc_CB48C4: SubR4
  loc_CB48C5: CVarR8
  loc_CB48C9: FLdRfVar var_15C
  loc_CB48CC: ImpAdCallFPR4  = Round(, )
  loc_CB48D1: FLdRfVar var_15C
  loc_CB48D4: CR4Var
  loc_CB48D5: FLdPr Me
  loc_CB48D8: MemStFPR8 global_116
  loc_CB48DB: FFree1Str var_F0
  loc_CB48DE: FFreeAd var_88 = ""
  loc_CB48E5: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB48F0: FLdPr Me
  loc_CB48F3: VCallAd Control_ID_ctacteFlex
  loc_CB48F6: FStAdFunc var_88
  loc_CB48F9: FLdPr var_88
  loc_CB48FC: LateIdLdVar var_98 DispID_10 0
  loc_CB4903: CI4Var
  loc_CB4905: CVarI4
  loc_CB4909: PopAdLdVar
  loc_CB490A: FLdPr Me
  loc_CB490D: MemLdI2 global_98
  loc_CB4910: CI4UI1
  loc_CB4911: CVarI4
  loc_CB4915: PopAdLdVar
  loc_CB4916: FLdPr Me
  loc_CB4919: VCallAd Control_ID_ctacteFlex
  loc_CB491C: FStAdFunc var_DC
  loc_CB491F: FLdPr var_DC
  loc_CB4922: LateIdCallLdVar
  loc_CB492C: PopAd
  loc_CB492E: LitI4 2
  loc_CB4933: FLdPr Me
  loc_CB4936: MemLdFPR8 global_188
  loc_CB4939: FLdRfVar var_EC
  loc_CB493C: CStrVarTmp
  loc_CB493D: FStStrNoPop var_F0
  loc_CB4940: CR8Str
  loc_CB4942: AddR8
  loc_CB4943: CVarR8
  loc_CB4947: FLdRfVar var_15C
  loc_CB494A: ImpAdCallFPR4  = Round(, )
  loc_CB494F: FLdRfVar var_15C
  loc_CB4952: CR4Var
  loc_CB4953: FLdPr Me
  loc_CB4956: MemStFPR8 global_188
  loc_CB4959: FFree1Str var_F0
  loc_CB495C: FFreeAd var_88 = ""
  loc_CB4963: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB496E: Branch loc_CB4991
  loc_CB4971: FLdPr Me
  loc_CB4974: MemLdFPR8 global_116
  loc_CB4977: LitI2_Byte 0
  loc_CB4979: CR8I2
  loc_CB497A: SubR4
  loc_CB497B: FLdPr Me
  loc_CB497E: MemStFPR8 global_116
  loc_CB4981: FLdPr Me
  loc_CB4984: MemLdFPR8 global_188
  loc_CB4987: LitI2_Byte 0
  loc_CB4989: CR8I2
  loc_CB498A: AddR8
  loc_CB498B: FLdPr Me
  loc_CB498E: MemStFPR8 global_188
  loc_CB4991: FLdPr Me
  loc_CB4994: MemLdI2 global_98
  loc_CB4997: LitI2_Byte &HD
  loc_CB4999: EqI2
  loc_CB499A: BranchF loc_CB4A02
  loc_CB499D: FLdPr Me
  loc_CB49A0: VCallAd Control_ID_ctacteFlex
  loc_CB49A3: FStAdFunc var_88
  loc_CB49A6: FLdPr var_88
  loc_CB49A9: LateIdLdVar var_98 DispID_10 0
  loc_CB49B0: CI4Var
  loc_CB49B2: CVarI4
  loc_CB49B6: PopAdLdVar
  loc_CB49B7: FLdPr Me
  loc_CB49BA: MemLdI2 global_98
  loc_CB49BD: CI4UI1
  loc_CB49BE: CVarI4
  loc_CB49C2: PopAdLdVar
  loc_CB49C3: FLdPr Me
  loc_CB49C6: VCallAd Control_ID_ctacteFlex
  loc_CB49C9: FStAdFunc var_DC
  loc_CB49CC: FLdPr var_DC
  loc_CB49CF: LateIdCallLdVar
  loc_CB49D9: PopAd
  loc_CB49DB: FLdPr Me
  loc_CB49DE: MemLdFPR8 global_100
  loc_CB49E1: FLdRfVar var_EC
  loc_CB49E4: CStrVarTmp
  loc_CB49E5: FStStrNoPop var_F0
  loc_CB49E8: CR8Str
  loc_CB49EA: SubR4
  loc_CB49EB: FLdPr Me
  loc_CB49EE: MemStFPR8 global_100
  loc_CB49F1: FFree1Str var_F0
  loc_CB49F4: FFreeAd var_88 = ""
  loc_CB49FB: FFreeVar var_98 = ""
  loc_CB4A02: Branch loc_CB4FEB
  loc_CB4A05: LitVarI4
  loc_CB4A0D: PopAdLdVar
  loc_CB4A0E: FLdPr Me
  loc_CB4A11: VCallAd Control_ID_ctacteFlex
  loc_CB4A14: FStAdFunc var_88
  loc_CB4A17: FLdPr var_88
  loc_CB4A1A: LateIdSt
  loc_CB4A1F: FFree1Ad var_88
  loc_CB4A22: FLdPr Me
  loc_CB4A25: VCallAd Control_ID_ctacteFlex
  loc_CB4A28: FStAdFunc var_88
  loc_CB4A2B: FLdPr var_88
  loc_CB4A2E: LateIdLdVar var_98 DispID_10 0
  loc_CB4A35: CI4Var
  loc_CB4A37: CVarI4
  loc_CB4A3B: PopAdLdVar
  loc_CB4A3C: LitVarI4
  loc_CB4A44: PopAdLdVar
  loc_CB4A45: LitVarStr var_104, "Si"
  loc_CB4A4A: PopAdLdVar
  loc_CB4A4B: FLdPr Me
  loc_CB4A4E: VCallAd Control_ID_ctacteFlex
  loc_CB4A51: FStAdFunc var_DC
  loc_CB4A54: FLdPr var_DC
  loc_CB4A57: LateIdCallSt
  loc_CB4A5F: FFreeAd var_88 = ""
  loc_CB4A66: FFree1Var var_98 = ""
  loc_CB4A69: FLdPr Me
  loc_CB4A6C: MemLdI2 global_98
  loc_CB4A6F: LitI2_Byte 0
  loc_CB4A71: EqI2
  loc_CB4A72: BranchF loc_CB4CEF
  loc_CB4A75: FLdPr Me
  loc_CB4A78: VCallAd Control_ID_ctacteFlex
  loc_CB4A7B: FStAdFunc var_88
  loc_CB4A7E: FLdPr var_88
  loc_CB4A81: LateIdLdVar var_98 DispID_10 0
  loc_CB4A88: CI4Var
  loc_CB4A8A: CVarI4
  loc_CB4A8E: PopAdLdVar
  loc_CB4A8F: LitVarI4
  loc_CB4A97: PopAdLdVar
  loc_CB4A98: FLdPr Me
  loc_CB4A9B: VCallAd Control_ID_ctacteFlex
  loc_CB4A9E: FStAdFunc var_DC
  loc_CB4AA1: FLdPr var_DC
  loc_CB4AA4: LateIdCallLdVar
  loc_CB4AAE: PopAd
  loc_CB4AB0: FLdPr Me
  loc_CB4AB3: VCallAd Control_ID_ctacteFlex
  loc_CB4AB6: FStAdFunc var_118
  loc_CB4AB9: FLdPr var_118
  loc_CB4ABC: LateIdLdVar var_128 DispID_10 0
  loc_CB4AC3: CI4Var
  loc_CB4AC5: CVarI4
  loc_CB4AC9: PopAdLdVar
  loc_CB4ACA: LitVarI4
  loc_CB4AD2: PopAdLdVar
  loc_CB4AD3: FLdPr Me
  loc_CB4AD6: VCallAd Control_ID_ctacteFlex
  loc_CB4AD9: FStAdFunc var_14C
  loc_CB4ADC: FLdPr var_14C
  loc_CB4ADF: LateIdCallLdVar
  loc_CB4AE9: PopAd
  loc_CB4AEB: FLdPr Me
  loc_CB4AEE: VCallAd Control_ID_ctacteFlex
  loc_CB4AF1: FStAdFunc var_160
  loc_CB4AF4: FLdPr var_160
  loc_CB4AF7: LateIdLdVar var_170 DispID_10 0
  loc_CB4AFE: CI4Var
  loc_CB4B00: CVarI4
  loc_CB4B04: PopAdLdVar
  loc_CB4B05: LitVarI4
  loc_CB4B0D: PopAdLdVar
  loc_CB4B0E: FLdPr Me
  loc_CB4B11: VCallAd Control_ID_ctacteFlex
  loc_CB4B14: FStAdFunc var_1B4
  loc_CB4B17: FLdPr var_1B4
  loc_CB4B1A: LateIdCallLdVar
  loc_CB4B24: CStrVarTmp
  loc_CB4B25: CVarStr var_1D4
  loc_CB4B28: FLdRfVar var_1E4
  loc_CB4B2B: ImpAdCallFPR4  = Trim()
  loc_CB4B30: LitI4 4
  loc_CB4B35: FLdRfVar var_1E4
  loc_CB4B38: FLdRfVar var_1F4
  loc_CB4B3B: ImpAdCallFPR4  = Right(, )
  loc_CB4B40: FLdPr Me
  loc_CB4B43: VCallAd Control_ID_ctacteFlex
  loc_CB4B46: FStAdFunc var_1F8
  loc_CB4B49: FLdPr var_1F8
  loc_CB4B4C: LateIdLdVar var_208 DispID_10 0
  loc_CB4B53: CI4Var
  loc_CB4B55: CVarI4
  loc_CB4B59: PopAdLdVar
  loc_CB4B5A: LitVarI4
  loc_CB4B62: PopAdLdVar
  loc_CB4B63: FLdPr Me
  loc_CB4B66: VCallAd Control_ID_ctacteFlex
  loc_CB4B69: FStAdFunc var_24C
  loc_CB4B6C: FLdPr var_24C
  loc_CB4B6F: LateIdCallLdVar
  loc_CB4B79: PopAd
  loc_CB4B7B: LitI4 1
  loc_CB4B80: FLdPr Me
  loc_CB4B83: VCallAd Control_ID_ctacteFlex
  loc_CB4B86: FStAdFunc var_260
  loc_CB4B89: FLdPr var_260
  loc_CB4B8C: LateIdLdVar var_270 DispID_10 0
  loc_CB4B93: CI4Var
  loc_CB4B95: CVarI4
  loc_CB4B99: PopAdLdVar
  loc_CB4B9A: LitVarI4
  loc_CB4BA2: PopAdLdVar
  loc_CB4BA3: FLdPr Me
  loc_CB4BA6: VCallAd Control_ID_ctacteFlex
  loc_CB4BA9: FStAdFunc var_2B4
  loc_CB4BAC: FLdPr var_2B4
  loc_CB4BAF: LateIdCallLdVar
  loc_CB4BB9: CStrVarTmp
  loc_CB4BBA: FStStrNoPop var_F0
  loc_CB4BBD: LitStr "/"
  loc_CB4BC0: LitI4 0
  loc_CB4BC5: FnInStr4
  loc_CB4BC7: LitI4 1
  loc_CB4BCC: SubI4
  loc_CB4BCD: CVarI4
  loc_CB4BD1: LitI4 1
  loc_CB4BD6: FLdRfVar var_25C
  loc_CB4BD9: CStrVarTmp
  loc_CB4BDA: CVarStr var_2D4
  loc_CB4BDD: FLdRfVar var_304
  loc_CB4BE0: ImpAdCallFPR4  = Mid(, , )
  loc_CB4BE5: FLdPr Me
  loc_CB4BE8: VCallAd Control_ID_ctacteFlex
  loc_CB4BEB: FStAdFunc var_308
  loc_CB4BEE: FLdPr var_308
  loc_CB4BF1: LateIdLdVar var_318 DispID_10 0
  loc_CB4BF8: CI4Var
  loc_CB4BFA: CVarI4
  loc_CB4BFE: PopAdLdVar
  loc_CB4BFF: LitVarI4
  loc_CB4C07: PopAdLdVar
  loc_CB4C08: FLdPr Me
  loc_CB4C0B: VCallAd Control_ID_ctacteFlex
  loc_CB4C0E: FStAdFunc var_35C
  loc_CB4C11: FLdPr var_35C
  loc_CB4C14: LateIdCallLdVar
  loc_CB4C1E: PopAd
  loc_CB4C20: FLdPr Me
  loc_CB4C23: VCallAd Control_ID_ctacteFlex
  loc_CB4C26: FStAdFunc var_370
  loc_CB4C29: FLdPr var_370
  loc_CB4C2C: LateIdLdVar var_380 DispID_10 0
  loc_CB4C33: CI4Var
  loc_CB4C35: CVarI4
  loc_CB4C39: PopAdLdVar
  loc_CB4C3A: LitVarI4
  loc_CB4C42: PopAdLdVar
  loc_CB4C43: FLdPr Me
  loc_CB4C46: VCallAd Control_ID_ctacteFlex
  loc_CB4C49: FStAdFunc var_3C4
  loc_CB4C4C: FLdPr var_3C4
  loc_CB4C4F: LateIdCallLdVar
  loc_CB4C59: PopAd
  loc_CB4C5B: LitStr "tmp_ctacteboleto"
  loc_CB4C5E: LitStr "Si"
  loc_CB4C61: FLdRfVar var_3D4
  loc_CB4C64: CStrVarTmp
  loc_CB4C65: FStStrNoPop var_3E4
  loc_CB4C68: CI2Str
  loc_CB4C6A: FLdRfVar var_36C
  loc_CB4C6D: CStrVarTmp
  loc_CB4C6E: FStStrNoPop var_3E0
  loc_CB4C71: CI4Str
  loc_CB4C72: FLdRfVar var_304
  loc_CB4C75: CI2Var
  loc_CB4C76: FLdRfVar var_1F4
  loc_CB4C79: CI2Var
  loc_CB4C7A: FLdRfVar var_15C
  loc_CB4C7D: CStrVarTmp
  loc_CB4C7E: FStStrNoPop var_3DC
  loc_CB4C81: FLdRfVar var_EC
  loc_CB4C84: CStrVarTmp
  loc_CB4C85: FStStrNoPop var_3D8
  loc_CB4C88: CUI1Str
  loc_CB4C8A: FLdPr Me
  loc_CB4C8D: MemLdRfVar from_stack_1.global_68
  loc_CB4C90: NewIfNullPr clsctacte
  loc_CB4C93: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_CB4C98: FFreeStr var_F0 = "": var_3D8 = "": var_3DC = "": var_3E0 = ""
  loc_CB4CA5: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_14C = "": var_160 = "": var_1B4 = "": var_1F8 = "": var_24C = "": var_260 = "": var_2B4 = "": var_308 = "": var_35C = "": var_370 = ""
  loc_CB4CC4: FFreeVar var_98 = "": var_EC = "": var_128 = "": var_15C = "": var_170 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_208 = "": var_25C = "": var_270 = "": var_2C4 = "": var_2D4 = "": var_2F4 = "": var_318 = "": var_36C = "": var_380 = "": var_3D4 = "": var_1F4 = ""
  loc_CB4CEF: FLdPr Me
  loc_CB4CF2: MemLdI2 global_98
  loc_CB4CF5: LitI2_Byte &HB
  loc_CB4CF7: EqI2
  loc_CB4CF8: BranchF loc_CB4DF7
  loc_CB4CFB: FLdPr Me
  loc_CB4CFE: VCallAd Control_ID_ctacteFlex
  loc_CB4D01: FStAdFunc var_88
  loc_CB4D04: FLdPr var_88
  loc_CB4D07: LateIdLdVar var_98 DispID_10 0
  loc_CB4D0E: CI4Var
  loc_CB4D10: CVarI4
  loc_CB4D14: PopAdLdVar
  loc_CB4D15: FLdPr Me
  loc_CB4D18: MemLdI2 global_98
  loc_CB4D1B: CI4UI1
  loc_CB4D1C: CVarI4
  loc_CB4D20: PopAdLdVar
  loc_CB4D21: FLdPr Me
  loc_CB4D24: VCallAd Control_ID_ctacteFlex
  loc_CB4D27: FStAdFunc var_DC
  loc_CB4D2A: FLdPr var_DC
  loc_CB4D2D: LateIdCallLdVar
  loc_CB4D37: PopAd
  loc_CB4D39: LitI4 2
  loc_CB4D3E: FLdPr Me
  loc_CB4D41: MemLdFPR8 global_108
  loc_CB4D44: FLdRfVar var_EC
  loc_CB4D47: CStrVarTmp
  loc_CB4D48: FStStrNoPop var_F0
  loc_CB4D4B: CR8Str
  loc_CB4D4D: AddR8
  loc_CB4D4E: CVarR8
  loc_CB4D52: FLdRfVar var_15C
  loc_CB4D55: ImpAdCallFPR4  = Round(, )
  loc_CB4D5A: FLdRfVar var_15C
  loc_CB4D5D: CR4Var
  loc_CB4D5E: FLdPr Me
  loc_CB4D61: MemStFPR8 global_108
  loc_CB4D64: FFree1Str var_F0
  loc_CB4D67: FFreeAd var_88 = ""
  loc_CB4D6E: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4D79: FLdPr Me
  loc_CB4D7C: VCallAd Control_ID_ctacteFlex
  loc_CB4D7F: FStAdFunc var_88
  loc_CB4D82: FLdPr var_88
  loc_CB4D85: LateIdLdVar var_98 DispID_10 0
  loc_CB4D8C: CI4Var
  loc_CB4D8E: CVarI4
  loc_CB4D92: PopAdLdVar
  loc_CB4D93: FLdPr Me
  loc_CB4D96: MemLdI2 global_98
  loc_CB4D99: CI4UI1
  loc_CB4D9A: CVarI4
  loc_CB4D9E: PopAdLdVar
  loc_CB4D9F: FLdPr Me
  loc_CB4DA2: VCallAd Control_ID_ctacteFlex
  loc_CB4DA5: FStAdFunc var_DC
  loc_CB4DA8: FLdPr var_DC
  loc_CB4DAB: LateIdCallLdVar
  loc_CB4DB5: PopAd
  loc_CB4DB7: LitI4 2
  loc_CB4DBC: FLdPr Me
  loc_CB4DBF: MemLdFPR8 global_180
  loc_CB4DC2: FLdRfVar var_EC
  loc_CB4DC5: CStrVarTmp
  loc_CB4DC6: FStStrNoPop var_F0
  loc_CB4DC9: CR8Str
  loc_CB4DCB: AddR8
  loc_CB4DCC: CVarR8
  loc_CB4DD0: FLdRfVar var_15C
  loc_CB4DD3: ImpAdCallFPR4  = Round(, )
  loc_CB4DD8: FLdRfVar var_15C
  loc_CB4DDB: CR4Var
  loc_CB4DDC: FLdPr Me
  loc_CB4DDF: MemStFPR8 global_180
  loc_CB4DE2: FFree1Str var_F0
  loc_CB4DE5: FFreeAd var_88 = ""
  loc_CB4DEC: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4DF7: FLdPr Me
  loc_CB4DFA: MemLdI2 global_98
  loc_CB4DFD: LitI2_Byte &HC
  loc_CB4DFF: EqI2
  loc_CB4E00: BranchF loc_CB4F7A
  loc_CB4E03: FLdPr Me
  loc_CB4E06: VCallAd Control_ID_ctacteFlex
  loc_CB4E09: FStAdFunc var_88
  loc_CB4E0C: FLdPr var_88
  loc_CB4E0F: LateIdLdVar var_98 DispID_10 0
  loc_CB4E16: CI4Var
  loc_CB4E18: CVarI4
  loc_CB4E1C: PopAdLdVar
  loc_CB4E1D: FLdPr Me
  loc_CB4E20: MemLdI2 global_98
  loc_CB4E23: CI4UI1
  loc_CB4E24: CVarI4
  loc_CB4E28: PopAdLdVar
  loc_CB4E29: FLdPr Me
  loc_CB4E2C: VCallAd Control_ID_ctacteFlex
  loc_CB4E2F: FStAdFunc var_DC
  loc_CB4E32: FLdPr var_DC
  loc_CB4E35: LateIdCallLdVar
  loc_CB4E3F: CStrVarTmp
  loc_CB4E40: CVarStr var_128
  loc_CB4E43: ImpAdCallI2 IsNumeric()
  loc_CB4E48: FFreeAd var_88 = ""
  loc_CB4E4F: FFreeVar var_98 = "": var_EC = ""
  loc_CB4E58: BranchF loc_CB4F5A
  loc_CB4E5B: FLdPr Me
  loc_CB4E5E: VCallAd Control_ID_ctacteFlex
  loc_CB4E61: FStAdFunc var_88
  loc_CB4E64: FLdPr var_88
  loc_CB4E67: LateIdLdVar var_98 DispID_10 0
  loc_CB4E6E: CI4Var
  loc_CB4E70: CVarI4
  loc_CB4E74: PopAdLdVar
  loc_CB4E75: FLdPr Me
  loc_CB4E78: MemLdI2 global_98
  loc_CB4E7B: CI4UI1
  loc_CB4E7C: CVarI4
  loc_CB4E80: PopAdLdVar
  loc_CB4E81: FLdPr Me
  loc_CB4E84: VCallAd Control_ID_ctacteFlex
  loc_CB4E87: FStAdFunc var_DC
  loc_CB4E8A: FLdPr var_DC
  loc_CB4E8D: LateIdCallLdVar
  loc_CB4E97: PopAd
  loc_CB4E99: LitI4 2
  loc_CB4E9E: FLdPr Me
  loc_CB4EA1: MemLdFPR8 global_116
  loc_CB4EA4: FLdRfVar var_EC
  loc_CB4EA7: CStrVarTmp
  loc_CB4EA8: FStStrNoPop var_F0
  loc_CB4EAB: CR8Str
  loc_CB4EAD: AddR8
  loc_CB4EAE: CVarR8
  loc_CB4EB2: FLdRfVar var_15C
  loc_CB4EB5: ImpAdCallFPR4  = Round(, )
  loc_CB4EBA: FLdRfVar var_15C
  loc_CB4EBD: CR4Var
  loc_CB4EBE: FLdPr Me
  loc_CB4EC1: MemStFPR8 global_116
  loc_CB4EC4: FFree1Str var_F0
  loc_CB4EC7: FFreeAd var_88 = ""
  loc_CB4ECE: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4ED9: FLdPr Me
  loc_CB4EDC: VCallAd Control_ID_ctacteFlex
  loc_CB4EDF: FStAdFunc var_88
  loc_CB4EE2: FLdPr var_88
  loc_CB4EE5: LateIdLdVar var_98 DispID_10 0
  loc_CB4EEC: CI4Var
  loc_CB4EEE: CVarI4
  loc_CB4EF2: PopAdLdVar
  loc_CB4EF3: FLdPr Me
  loc_CB4EF6: MemLdI2 global_98
  loc_CB4EF9: CI4UI1
  loc_CB4EFA: CVarI4
  loc_CB4EFE: PopAdLdVar
  loc_CB4EFF: FLdPr Me
  loc_CB4F02: VCallAd Control_ID_ctacteFlex
  loc_CB4F05: FStAdFunc var_DC
  loc_CB4F08: FLdPr var_DC
  loc_CB4F0B: LateIdCallLdVar
  loc_CB4F15: PopAd
  loc_CB4F17: LitI4 2
  loc_CB4F1C: FLdPr Me
  loc_CB4F1F: MemLdFPR8 global_188
  loc_CB4F22: FLdRfVar var_EC
  loc_CB4F25: CStrVarTmp
  loc_CB4F26: FStStrNoPop var_F0
  loc_CB4F29: CR8Str
  loc_CB4F2B: AddR8
  loc_CB4F2C: CVarR8
  loc_CB4F30: FLdRfVar var_15C
  loc_CB4F33: ImpAdCallFPR4  = Round(, )
  loc_CB4F38: FLdRfVar var_15C
  loc_CB4F3B: CR4Var
  loc_CB4F3C: FLdPr Me
  loc_CB4F3F: MemStFPR8 global_188
  loc_CB4F42: FFree1Str var_F0
  loc_CB4F45: FFreeAd var_88 = ""
  loc_CB4F4C: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB4F57: Branch loc_CB4F7A
  loc_CB4F5A: FLdPr Me
  loc_CB4F5D: MemLdFPR8 global_116
  loc_CB4F60: LitI2_Byte 0
  loc_CB4F62: CR8I2
  loc_CB4F63: AddR8
  loc_CB4F64: FLdPr Me
  loc_CB4F67: MemStFPR8 global_116
  loc_CB4F6A: FLdPr Me
  loc_CB4F6D: MemLdFPR8 global_188
  loc_CB4F70: LitI2_Byte 0
  loc_CB4F72: CR8I2
  loc_CB4F73: AddR8
  loc_CB4F74: FLdPr Me
  loc_CB4F77: MemStFPR8 global_188
  loc_CB4F7A: FLdPr Me
  loc_CB4F7D: MemLdI2 global_98
  loc_CB4F80: LitI2_Byte &HD
  loc_CB4F82: EqI2
  loc_CB4F83: BranchF loc_CB4FEB
  loc_CB4F86: FLdPr Me
  loc_CB4F89: VCallAd Control_ID_ctacteFlex
  loc_CB4F8C: FStAdFunc var_88
  loc_CB4F8F: FLdPr var_88
  loc_CB4F92: LateIdLdVar var_98 DispID_10 0
  loc_CB4F99: CI4Var
  loc_CB4F9B: CVarI4
  loc_CB4F9F: PopAdLdVar
  loc_CB4FA0: FLdPr Me
  loc_CB4FA3: MemLdI2 global_98
  loc_CB4FA6: CI4UI1
  loc_CB4FA7: CVarI4
  loc_CB4FAB: PopAdLdVar
  loc_CB4FAC: FLdPr Me
  loc_CB4FAF: VCallAd Control_ID_ctacteFlex
  loc_CB4FB2: FStAdFunc var_DC
  loc_CB4FB5: FLdPr var_DC
  loc_CB4FB8: LateIdCallLdVar
  loc_CB4FC2: PopAd
  loc_CB4FC4: FLdPr Me
  loc_CB4FC7: MemLdFPR8 global_100
  loc_CB4FCA: FLdRfVar var_EC
  loc_CB4FCD: CStrVarTmp
  loc_CB4FCE: FStStrNoPop var_F0
  loc_CB4FD1: CR8Str
  loc_CB4FD3: AddR8
  loc_CB4FD4: FLdPr Me
  loc_CB4FD7: MemStFPR8 global_100
  loc_CB4FDA: FFree1Str var_F0
  loc_CB4FDD: FFreeAd var_88 = ""
  loc_CB4FE4: FFreeVar var_98 = ""
  loc_CB4FEB: FLdPr Me
  loc_CB4FEE: MemLdRfVar from_stack_1.global_98
  loc_CB4FF1: NextI2 var_3EC, loc_CB43D8
  loc_CB4FF6: FLdPr Me
  loc_CB4FF9: MemLdRfVar from_stack_1.global_96
  loc_CB4FFC: NextI2 var_3E8, loc_CB42FD
  loc_CB5001: FLdPr Me
  loc_CB5004: VCallAd Control_ID_ctacteFlex
  loc_CB5007: FStAdFunc var_88
  loc_CB500A: FLdPr var_88
  loc_CB500D: LateIdLdVar var_98 DispID_10 0
  loc_CB5014: CI4Var
  loc_CB5016: CVarI4
  loc_CB501A: PopAdLdVar
  loc_CB501B: LitVarI4
  loc_CB5023: PopAdLdVar
  loc_CB5024: FLdPr Me
  loc_CB5027: VCallAd Control_ID_ctacteFlex
  loc_CB502A: FStAdFunc var_DC
  loc_CB502D: FLdPr var_DC
  loc_CB5030: LateIdCallLdVar
  loc_CB503A: CStrVarTmp
  loc_CB503B: FStStrNoPop var_F0
  loc_CB503E: LitStr "Si"
  loc_CB5041: EqStr
  loc_CB5043: FFree1Str var_F0
  loc_CB5046: FFreeAd var_88 = ""
  loc_CB504D: FFreeVar var_98 = ""
  loc_CB5054: BranchF loc_CB5149
  loc_CB5057: FLdPr Me
  loc_CB505A: VCallAd Control_ID_ctacteFlex
  loc_CB505D: FStAdFunc var_88
  loc_CB5060: FLdPr var_88
  loc_CB5063: LateIdLdVar var_98 DispID_10 0
  loc_CB506A: CI4Var
  loc_CB506C: CVarI4
  loc_CB5070: PopAdLdVar
  loc_CB5071: LitVarI4
  loc_CB5079: PopAdLdVar
  loc_CB507A: FLdPr Me
  loc_CB507D: VCallAd Control_ID_ctacteFlex
  loc_CB5080: FStAdFunc var_DC
  loc_CB5083: FLdPr var_DC
  loc_CB5086: LateIdCallLdVar
  loc_CB5090: CStrVarTmp
  loc_CB5091: FStStrNoPop var_F0
  loc_CB5094: CI4Str
  loc_CB5095: LitI4 0
  loc_CB509A: NeI4
  loc_CB509B: FLdPr Me
  loc_CB509E: MemLdFPR8 global_180
  loc_CB50A1: LitI2_Byte 0
  loc_CB50A3: CR8I2
  loc_CB50A4: NeR8
  loc_CB50A5: FLdPr Me
  loc_CB50A8: MemLdFPR8 global_188
  loc_CB50AB: LitI2_Byte 0
  loc_CB50AD: CR8I2
  loc_CB50AE: NeR8
  loc_CB50AF: OrI4
  loc_CB50B0: AndI4
  loc_CB50B1: FFree1Str var_F0
  loc_CB50B4: FFreeAd var_88 = ""
  loc_CB50BB: FFreeVar var_98 = ""
  loc_CB50C2: BranchF loc_CB5146
  loc_CB50C5: FLdPr Me
  loc_CB50C8: VCallAd Control_ID_ctacteFlex
  loc_CB50CB: FStAdFunc var_88
  loc_CB50CE: FLdPr var_88
  loc_CB50D1: LateIdLdVar var_98 DispID_10 0
  loc_CB50D8: CI4Var
  loc_CB50DA: CVarI4
  loc_CB50DE: PopAdLdVar
  loc_CB50DF: LitVarI4
  loc_CB50E7: PopAdLdVar
  loc_CB50E8: FLdPr Me
  loc_CB50EB: VCallAd Control_ID_ctacteFlex
  loc_CB50EE: FStAdFunc var_DC
  loc_CB50F1: FLdPr var_DC
  loc_CB50F4: LateIdCallLdVar
  loc_CB50FE: PopAd
  loc_CB5100: FLdRfVar var_3F4
  loc_CB5103: FLdPr Me
  loc_CB5106: MemLdR8 global_188
  loc_CB5109: FLdPr Me
  loc_CB510C: MemLdR8 global_180
  loc_CB510F: FLdRfVar var_EC
  loc_CB5112: CStrVarTmp
  loc_CB5113: FStStrNoPop var_F0
  loc_CB5116: CI4Str
  loc_CB5117: FLdPr Me
  loc_CB511A: MemLdRfVar from_stack_1.global_80
  loc_CB511D: NewIfNullPr clsapremio
  loc_CB5120: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CB5125: FLdPr Me
  loc_CB5128: MemLdFPR8 global_124
  loc_CB512B: FLdFPR8 var_3F4
  loc_CB512E: AddR8
  loc_CB512F: FLdPr Me
  loc_CB5132: MemStFPR8 global_124
  loc_CB5135: FFree1Str var_F0
  loc_CB5138: FFreeAd var_88 = ""
  loc_CB513F: FFreeVar var_98 = ""
  loc_CB5146: Branch loc_CB5238
  loc_CB5149: FLdPr Me
  loc_CB514C: VCallAd Control_ID_ctacteFlex
  loc_CB514F: FStAdFunc var_88
  loc_CB5152: FLdPr var_88
  loc_CB5155: LateIdLdVar var_98 DispID_10 0
  loc_CB515C: CI4Var
  loc_CB515E: CVarI4
  loc_CB5162: PopAdLdVar
  loc_CB5163: LitVarI4
  loc_CB516B: PopAdLdVar
  loc_CB516C: FLdPr Me
  loc_CB516F: VCallAd Control_ID_ctacteFlex
  loc_CB5172: FStAdFunc var_DC
  loc_CB5175: FLdPr var_DC
  loc_CB5178: LateIdCallLdVar
  loc_CB5182: CStrVarTmp
  loc_CB5183: FStStrNoPop var_F0
  loc_CB5186: CI4Str
  loc_CB5187: LitI4 0
  loc_CB518C: NeI4
  loc_CB518D: FLdPr Me
  loc_CB5190: MemLdFPR8 global_180
  loc_CB5193: LitI2_Byte 0
  loc_CB5195: CR8I2
  loc_CB5196: NeR8
  loc_CB5197: FLdPr Me
  loc_CB519A: MemLdFPR8 global_188
  loc_CB519D: LitI2_Byte 0
  loc_CB519F: CR8I2
  loc_CB51A0: NeR8
  loc_CB51A1: OrI4
  loc_CB51A2: AndI4
  loc_CB51A3: FFree1Str var_F0
  loc_CB51A6: FFreeAd var_88 = ""
  loc_CB51AD: FFreeVar var_98 = ""
  loc_CB51B4: BranchF loc_CB5238
  loc_CB51B7: FLdPr Me
  loc_CB51BA: VCallAd Control_ID_ctacteFlex
  loc_CB51BD: FStAdFunc var_88
  loc_CB51C0: FLdPr var_88
  loc_CB51C3: LateIdLdVar var_98 DispID_10 0
  loc_CB51CA: CI4Var
  loc_CB51CC: CVarI4
  loc_CB51D0: PopAdLdVar
  loc_CB51D1: LitVarI4
  loc_CB51D9: PopAdLdVar
  loc_CB51DA: FLdPr Me
  loc_CB51DD: VCallAd Control_ID_ctacteFlex
  loc_CB51E0: FStAdFunc var_DC
  loc_CB51E3: FLdPr var_DC
  loc_CB51E6: LateIdCallLdVar
  loc_CB51F0: PopAd
  loc_CB51F2: FLdRfVar var_3F4
  loc_CB51F5: FLdPr Me
  loc_CB51F8: MemLdR8 global_188
  loc_CB51FB: FLdPr Me
  loc_CB51FE: MemLdR8 global_180
  loc_CB5201: FLdRfVar var_EC
  loc_CB5204: CStrVarTmp
  loc_CB5205: FStStrNoPop var_F0
  loc_CB5208: CI4Str
  loc_CB5209: FLdPr Me
  loc_CB520C: MemLdRfVar from_stack_1.global_80
  loc_CB520F: NewIfNullPr clsapremio
  loc_CB5212: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CB5217: FLdPr Me
  loc_CB521A: MemLdFPR8 global_124
  loc_CB521D: FLdFPR8 var_3F4
  loc_CB5220: SubR4
  loc_CB5221: FLdPr Me
  loc_CB5224: MemStFPR8 global_124
  loc_CB5227: FFree1Str var_F0
  loc_CB522A: FFreeAd var_88 = ""
  loc_CB5231: FFreeVar var_98 = ""
  loc_CB5238: LitI4 2
  loc_CB523D: FLdPr Me
  loc_CB5240: MemLdFPR8 global_100
  loc_CB5243: FnCDblR8
  loc_CB5245: FLdPr Me
  loc_CB5248: MemLdFPR8 global_124
  loc_CB524B: FnCDblR8
  loc_CB524D: AddR8
  loc_CB524E: CVarR8
  loc_CB5252: FLdRfVar var_EC
  loc_CB5255: ImpAdCallFPR4  = Round(, )
  loc_CB525A: LitI4 1
  loc_CB525F: LitI4 1
  loc_CB5264: LitVarStr var_B8, "###,###,##0.00"
  loc_CB5269: FStVarCopyObj var_128
  loc_CB526C: FLdRfVar var_128
  loc_CB526F: FLdRfVar var_EC
  loc_CB5272: FLdRfVar var_15C
  loc_CB5275: ImpAdCallFPR4  = Format(, )
  loc_CB527A: FLdRfVar var_15C
  loc_CB527D: CStrVarVal var_F0
  loc_CB5281: FLdPr Me
  loc_CB5284: VCallAd Control_ID_txtTotaSele
  loc_CB5287: FStAdFunc var_88
  loc_CB528A: FLdPr var_88
  loc_CB528D: Me.Text = from_stack_1
  loc_CB5292: FFree1Str var_F0
  loc_CB5295: FFree1Ad var_88
  loc_CB5298: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB52A3: LitI4 1
  loc_CB52A8: LitI4 1
  loc_CB52AD: LitVarStr var_B8, "###,###,##0.00"
  loc_CB52B2: FStVarCopyObj var_98
  loc_CB52B5: FLdRfVar var_98
  loc_CB52B8: FLdPr Me
  loc_CB52BB: MemLdRfVar from_stack_1.global_108
  loc_CB52BE: CVarRef
  loc_CB52C3: FLdRfVar var_EC
  loc_CB52C6: ImpAdCallFPR4  = Format(, )
  loc_CB52CB: FLdRfVar var_EC
  loc_CB52CE: CStrVarVal var_F0
  loc_CB52D2: FLdPr Me
  loc_CB52D5: VCallAd Control_ID_DerechoTxt
  loc_CB52D8: FStAdFunc var_88
  loc_CB52DB: FLdPr var_88
  loc_CB52DE: Me.Text = from_stack_1
  loc_CB52E3: FFree1Str var_F0
  loc_CB52E6: FFree1Ad var_88
  loc_CB52E9: FFreeVar var_98 = ""
  loc_CB52F0: LitI4 1
  loc_CB52F5: LitI4 1
  loc_CB52FA: LitVarStr var_B8, "###,###,##0.00"
  loc_CB52FF: FStVarCopyObj var_98
  loc_CB5302: FLdRfVar var_98
  loc_CB5305: FLdPr Me
  loc_CB5308: MemLdRfVar from_stack_1.global_116
  loc_CB530B: CVarRef
  loc_CB5310: FLdRfVar var_EC
  loc_CB5313: ImpAdCallFPR4  = Format(, )
  loc_CB5318: FLdRfVar var_EC
  loc_CB531B: CStrVarVal var_F0
  loc_CB531F: FLdPr Me
  loc_CB5322: VCallAd Control_ID_RecargoTxt
  loc_CB5325: FStAdFunc var_88
  loc_CB5328: FLdPr var_88
  loc_CB532B: Me.Text = from_stack_1
  loc_CB5330: FFree1Str var_F0
  loc_CB5333: FFree1Ad var_88
  loc_CB5336: FFreeVar var_98 = ""
  loc_CB533D: LitI4 1
  loc_CB5342: LitI4 1
  loc_CB5347: LitVarStr var_B8, "###,###,##0.00"
  loc_CB534C: FStVarCopyObj var_98
  loc_CB534F: FLdRfVar var_98
  loc_CB5352: FLdPr Me
  loc_CB5355: MemLdRfVar from_stack_1.global_124
  loc_CB5358: CVarRef
  loc_CB535D: FLdRfVar var_EC
  loc_CB5360: ImpAdCallFPR4  = Format(, )
  loc_CB5365: FLdRfVar var_EC
  loc_CB5368: CStrVarVal var_F0
  loc_CB536C: FLdPr Me
  loc_CB536F: VCallAd Control_ID_ApremioTxt
  loc_CB5372: FStAdFunc var_88
  loc_CB5375: FLdPr var_88
  loc_CB5378: Me.Text = from_stack_1
  loc_CB537D: FFree1Str var_F0
  loc_CB5380: FFree1Ad var_88
  loc_CB5383: FFreeVar var_98 = ""
  loc_CB538A: LitI4 1
  loc_CB538F: LitI4 1
  loc_CB5394: LitVarStr var_B8, "###,###,##0.00"
  loc_CB5399: FStVarCopyObj var_EC
  loc_CB539C: FLdRfVar var_EC
  loc_CB539F: LitVarStr var_A8, "0"
  loc_CB53A4: FStVarCopyObj var_98
  loc_CB53A7: FLdRfVar var_98
  loc_CB53AA: FLdRfVar var_128
  loc_CB53AD: ImpAdCallFPR4  = Format(, )
  loc_CB53B2: FLdRfVar var_128
  loc_CB53B5: CStrVarVal var_F0
  loc_CB53B9: FLdPr Me
  loc_CB53BC: VCallAd Control_ID_DescCapiTxt
  loc_CB53BF: FStAdFunc var_88
  loc_CB53C2: FLdPr var_88
  loc_CB53C5: Me.Text = from_stack_1
  loc_CB53CA: FFree1Str var_F0
  loc_CB53CD: FFree1Ad var_88
  loc_CB53D0: FFreeVar var_98 = "": var_EC = ""
  loc_CB53D9: LitI4 1
  loc_CB53DE: LitI4 1
  loc_CB53E3: LitVarStr var_B8, "###,###,##0.00"
  loc_CB53E8: FStVarCopyObj var_EC
  loc_CB53EB: FLdRfVar var_EC
  loc_CB53EE: LitVarStr var_A8, "0"
  loc_CB53F3: FStVarCopyObj var_98
  loc_CB53F6: FLdRfVar var_98
  loc_CB53F9: FLdRfVar var_128
  loc_CB53FC: ImpAdCallFPR4  = Format(, )
  loc_CB5401: FLdRfVar var_128
  loc_CB5404: CStrVarVal var_F0
  loc_CB5408: FLdPr Me
  loc_CB540B: VCallAd Control_ID_DescRecaTxt
  loc_CB540E: FStAdFunc var_88
  loc_CB5411: FLdPr var_88
  loc_CB5414: Me.Text = from_stack_1
  loc_CB5419: FFree1Str var_F0
  loc_CB541C: FFree1Ad var_88
  loc_CB541F: FFreeVar var_98 = "": var_EC = ""
  loc_CB5428: LitI4 1
  loc_CB542D: LitI4 1
  loc_CB5432: LitVarStr var_B8, "###,###,##0.00"
  loc_CB5437: FStVarCopyObj var_EC
  loc_CB543A: FLdRfVar var_EC
  loc_CB543D: LitVarStr var_A8, "0"
  loc_CB5442: FStVarCopyObj var_98
  loc_CB5445: FLdRfVar var_98
  loc_CB5448: FLdRfVar var_128
  loc_CB544B: ImpAdCallFPR4  = Format(, )
  loc_CB5450: FLdRfVar var_128
  loc_CB5453: CStrVarVal var_F0
  loc_CB5457: FLdPr Me
  loc_CB545A: VCallAd Control_ID_InteresTxt
  loc_CB545D: FStAdFunc var_88
  loc_CB5460: FLdPr var_88
  loc_CB5463: Me.Text = from_stack_1
  loc_CB5468: FFree1Str var_F0
  loc_CB546B: FFree1Ad var_88
  loc_CB546E: FFreeVar var_98 = "": var_EC = ""
  loc_CB5477: LitI4 2
  loc_CB547C: FLdPr Me
  loc_CB547F: MemLdFPR8 global_108
  loc_CB5482: FLdPr Me
  loc_CB5485: MemLdFPR8 global_116
  loc_CB5488: AddR8
  loc_CB5489: FLdPr Me
  loc_CB548C: MemLdFPR8 global_124
  loc_CB548F: AddR8
  loc_CB5490: FLdPr Me
  loc_CB5493: MemLdFPR8 global_132
  loc_CB5496: SubR4
  loc_CB5497: CVarR8
  loc_CB549B: FLdRfVar var_EC
  loc_CB549E: ImpAdCallFPR4  = Round(, )
  loc_CB54A3: LitI4 1
  loc_CB54A8: LitI4 1
  loc_CB54AD: LitVarStr var_B8, "###,###,##0.00"
  loc_CB54B2: FStVarCopyObj var_128
  loc_CB54B5: FLdRfVar var_128
  loc_CB54B8: FLdRfVar var_EC
  loc_CB54BB: FLdRfVar var_15C
  loc_CB54BE: ImpAdCallFPR4  = Format(, )
  loc_CB54C3: FLdRfVar var_15C
  loc_CB54C6: CStrVarVal var_F0
  loc_CB54CA: FLdPr Me
  loc_CB54CD: VCallAd Control_ID_TotalTxt
  loc_CB54D0: FStAdFunc var_88
  loc_CB54D3: FLdPr var_88
  loc_CB54D6: Me.Text = from_stack_1
  loc_CB54DB: FFree1Str var_F0
  loc_CB54DE: FFree1Ad var_88
  loc_CB54E1: FFreeVar var_98 = "": var_EC = "": var_128 = ""
  loc_CB54EC: ExitProcHresult
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) '9B6338
  'Data Table: 52F1AC
  loc_9B6328: ILdI2 KeyAscii
  loc_9B632B: LitI2_Byte &H20
  loc_9B632D: EqI2
  loc_9B632E: BranchF loc_9B6336
  loc_9B6331: Call ctacteFlex_Click()
  loc_9B6336: ExitProcHresult
  loc_9B6337: LitI2_Byte &H34
End Sub

Public Function byFaesUsuaGet() '531FD4
  byFaesUsuaGet = byFaesUsua
End Function

Public Sub byFaesUsuaPut(Value) '531FE3
  byFaesUsua = Value
End Sub

Private Function Proc_187_51_B193E8() 'B193E8
  'Data Table: 52F1AC
  loc_B1915C: FLdPr Me
  loc_B1915F: VCallAd Control_ID_ctacteFlex
  loc_B19162: FStAdFunc var_88
  loc_B19165: FLdPr var_88
  loc_B19168: LateIdCall
  loc_B19170: LitVarI4
  loc_B19178: PopAdLdVar
  loc_B19179: FLdPr var_88
  loc_B1917C: LateIdSt
  loc_B19181: LitVarI4
  loc_B19189: PopAdLdVar
  loc_B1918A: LitVarI4
  loc_B19192: PopAdLdVar
  loc_B19193: LitVarStr var_D8, "Of"
  loc_B19198: PopAdLdVar
  loc_B19199: FLdPr var_88
  loc_B1919C: LateIdCallSt
  loc_B191A4: LitVarI4
  loc_B191AC: PopAdLdVar
  loc_B191AD: LitVarI4
  loc_B191B5: PopAdLdVar
  loc_B191B6: LitVarStr var_D8, "Cuenta"
  loc_B191BB: PopAdLdVar
  loc_B191BC: FLdPr var_88
  loc_B191BF: LateIdCallSt
  loc_B191C7: LitVarI4
  loc_B191CF: PopAdLdVar
  loc_B191D0: LitVarI4
  loc_B191D8: PopAdLdVar
  loc_B191D9: LitVarStr var_D8, "Periodo"
  loc_B191DE: PopAdLdVar
  loc_B191DF: FLdPr var_88
  loc_B191E2: LateIdCallSt
  loc_B191EA: LitVarI4
  loc_B191F2: PopAdLdVar
  loc_B191F3: LitVarI4
  loc_B191FB: PopAdLdVar
  loc_B191FC: LitVarStr var_D8, "Boleto"
  loc_B19201: PopAdLdVar
  loc_B19202: FLdPr var_88
  loc_B19205: LateIdCallSt
  loc_B1920D: LitVarI4
  loc_B19215: PopAdLdVar
  loc_B19216: LitVarI4
  loc_B1921E: PopAdLdVar
  loc_B1921F: LitVarStr var_D8, "Emision"
  loc_B19224: PopAdLdVar
  loc_B19225: FLdPr var_88
  loc_B19228: LateIdCallSt
  loc_B19230: LitVarI4
  loc_B19238: PopAdLdVar
  loc_B19239: LitVarI4
  loc_B19241: PopAdLdVar
  loc_B19242: LitVarStr var_D8, "Vencimiento"
  loc_B19247: PopAdLdVar
  loc_B19248: FLdPr var_88
  loc_B1924B: LateIdCallSt
  loc_B19253: LitVarI4
  loc_B1925B: PopAdLdVar
  loc_B1925C: LitVarI4
  loc_B19264: PopAdLdVar
  loc_B19265: LitVarStr var_D8, "Concepto"
  loc_B1926A: PopAdLdVar
  loc_B1926B: FLdPr var_88
  loc_B1926E: LateIdCallSt
  loc_B19276: LitVarI4
  loc_B1927E: PopAdLdVar
  loc_B1927F: LitVarI4
  loc_B19287: PopAdLdVar
  loc_B19288: LitVarStr var_D8, "Facilidad"
  loc_B1928D: PopAdLdVar
  loc_B1928E: FLdPr var_88
  loc_B19291: LateIdCallSt
  loc_B19299: LitVarI4
  loc_B192A1: PopAdLdVar
  loc_B192A2: LitVarI4
  loc_B192AA: PopAdLdVar
  loc_B192AB: LitVarStr var_D8, "Apremio"
  loc_B192B0: PopAdLdVar
  loc_B192B1: FLdPr var_88
  loc_B192B4: LateIdCallSt
  loc_B192BC: LitVarI4
  loc_B192C4: PopAdLdVar
  loc_B192C5: LitVarI4
  loc_B192CD: PopAdLdVar
  loc_B192CE: LitVarStr var_D8, "Exp/Comp"
  loc_B192D3: PopAdLdVar
  loc_B192D4: FLdPr var_88
  loc_B192D7: LateIdCallSt
  loc_B192DF: LitVarI4
  loc_B192E7: PopAdLdVar
  loc_B192E8: LitVarI4
  loc_B192F0: PopAdLdVar
  loc_B192F1: LitVarStr var_D8, "Tipo Movi."
  loc_B192F6: PopAdLdVar
  loc_B192F7: FLdPr var_88
  loc_B192FA: LateIdCallSt
  loc_B19302: LitVarI4
  loc_B1930A: PopAdLdVar
  loc_B1930B: LitVarI4
  loc_B19313: PopAdLdVar
  loc_B19314: LitVarStr var_D8, "Debito"
  loc_B19319: PopAdLdVar
  loc_B1931A: FLdPr var_88
  loc_B1931D: LateIdCallSt
  loc_B19325: LitVarI4
  loc_B1932D: PopAdLdVar
  loc_B1932E: LitVarI4
  loc_B19336: PopAdLdVar
  loc_B19337: LitVarStr var_D8, "Recargo"
  loc_B1933C: PopAdLdVar
  loc_B1933D: FLdPr var_88
  loc_B19340: LateIdCallSt
  loc_B19348: LitVarI4
  loc_B19350: PopAdLdVar
  loc_B19351: LitVarI4
  loc_B19359: PopAdLdVar
  loc_B1935A: LitVarStr var_D8, "Saldo"
  loc_B1935F: PopAdLdVar
  loc_B19360: FLdPr var_88
  loc_B19363: LateIdCallSt
  loc_B1936B: LitVarI4
  loc_B19373: PopAdLdVar
  loc_B19374: LitVarI4
  loc_B1937C: PopAdLdVar
  loc_B1937D: LitVarStr var_D8, "Sel"
  loc_B19382: PopAdLdVar
  loc_B19383: FLdPr var_88
  loc_B19386: LateIdCallSt
  loc_B1938E: LitVarI4
  loc_B19396: PopAdLdVar
  loc_B19397: LitVarI4
  loc_B1939F: PopAdLdVar
  loc_B193A0: LitVarStr var_D8, "Numero"
  loc_B193A5: PopAdLdVar
  loc_B193A6: FLdPr var_88
  loc_B193A9: LateIdCallSt
  loc_B193B1: LitVarI4
  loc_B193B9: PopAdLdVar
  loc_B193BA: LitVarI4
  loc_B193C2: PopAdLdVar
  loc_B193C3: LitVarStr var_D8, "Mov"
  loc_B193C8: PopAdLdVar
  loc_B193C9: FLdPr var_88
  loc_B193CC: LateIdCallSt
  loc_B193D4: FLdPr var_88
  loc_B193D7: LateIdCall
  loc_B193DF: LitNothing
  loc_B193E1: FStAd var_88 
  loc_B193E5: ExitProcHresult
End Function

Private Function Proc_187_52_AF19AC() 'AF19AC
  'Data Table: 52F1AC
  loc_AF17F4: FLdPr Me
  loc_AF17F7: VCallAd Control_ID_CuotasDetalleFlex
  loc_AF17FA: FStAdFunc var_88
  loc_AF17FD: FLdPr var_88
  loc_AF1800: LateIdCall
  loc_AF1808: LitVarI4
  loc_AF1810: PopAdLdVar
  loc_AF1811: FLdPr var_88
  loc_AF1814: LateIdSt
  loc_AF1819: LitVarI4
  loc_AF1821: PopAdLdVar
  loc_AF1822: LitVarI4
  loc_AF182A: PopAdLdVar
  loc_AF182B: LitVarStr var_D8, "Cuotas"
  loc_AF1830: PopAdLdVar
  loc_AF1831: FLdPr var_88
  loc_AF1834: LateIdCallSt
  loc_AF183C: LitVarI4
  loc_AF1844: PopAdLdVar
  loc_AF1845: LitVarI4
  loc_AF184D: PopAdLdVar
  loc_AF184E: LitVarStr var_D8, "Vencimiento"
  loc_AF1853: PopAdLdVar
  loc_AF1854: FLdPr var_88
  loc_AF1857: LateIdCallSt
  loc_AF185F: LitVarI4
  loc_AF1867: PopAdLdVar
  loc_AF1868: LitVarI4
  loc_AF1870: PopAdLdVar
  loc_AF1871: LitVarStr var_D8, "Capital"
  loc_AF1876: PopAdLdVar
  loc_AF1877: FLdPr var_88
  loc_AF187A: LateIdCallSt
  loc_AF1882: LitVarI4
  loc_AF188A: PopAdLdVar
  loc_AF188B: LitVarI4
  loc_AF1893: PopAdLdVar
  loc_AF1894: LitVarStr var_D8, "Recargo"
  loc_AF1899: PopAdLdVar
  loc_AF189A: FLdPr var_88
  loc_AF189D: LateIdCallSt
  loc_AF18A5: LitVarI4
  loc_AF18AD: PopAdLdVar
  loc_AF18AE: LitVarI4
  loc_AF18B6: PopAdLdVar
  loc_AF18B7: LitVarStr var_D8, "Desc.Cap."
  loc_AF18BC: PopAdLdVar
  loc_AF18BD: FLdPr var_88
  loc_AF18C0: LateIdCallSt
  loc_AF18C8: LitVarI4
  loc_AF18D0: PopAdLdVar
  loc_AF18D1: LitVarI4
  loc_AF18D9: PopAdLdVar
  loc_AF18DA: LitVarStr var_D8, "Desc.Rec."
  loc_AF18DF: PopAdLdVar
  loc_AF18E0: FLdPr var_88
  loc_AF18E3: LateIdCallSt
  loc_AF18EB: LitVarI4
  loc_AF18F3: PopAdLdVar
  loc_AF18F4: LitVarI4
  loc_AF18FC: PopAdLdVar
  loc_AF18FD: LitVarStr var_D8, "Apremio"
  loc_AF1902: PopAdLdVar
  loc_AF1903: FLdPr var_88
  loc_AF1906: LateIdCallSt
  loc_AF190E: LitVarI4
  loc_AF1916: PopAdLdVar
  loc_AF1917: LitVarI4
  loc_AF191F: PopAdLdVar
  loc_AF1920: LitVarStr var_D8, "Interes"
  loc_AF1925: PopAdLdVar
  loc_AF1926: FLdPr var_88
  loc_AF1929: LateIdCallSt
  loc_AF1931: LitVarI4
  loc_AF1939: PopAdLdVar
  loc_AF193A: LitVarI4
  loc_AF1942: PopAdLdVar
  loc_AF1943: LitVarStr var_D8, "Total"
  loc_AF1948: PopAdLdVar
  loc_AF1949: FLdPr var_88
  loc_AF194C: LateIdCallSt
  loc_AF1954: LitVarI4
  loc_AF195C: PopAdLdVar
  loc_AF195D: LitVarI4
  loc_AF1965: PopAdLdVar
  loc_AF1966: LitVarStr var_D8, "Ofc."
  loc_AF196B: PopAdLdVar
  loc_AF196C: FLdPr var_88
  loc_AF196F: LateIdCallSt
  loc_AF1977: LitVarI4
  loc_AF197F: PopAdLdVar
  loc_AF1980: LitVarI4
  loc_AF1988: PopAdLdVar
  loc_AF1989: LitVarStr var_D8, "Cuenta"
  loc_AF198E: PopAdLdVar
  loc_AF198F: FLdPr var_88
  loc_AF1992: LateIdCallSt
  loc_AF199A: FLdPr var_88
  loc_AF199D: LateIdCall
  loc_AF19A5: LitNothing
  loc_AF19A7: FStAd var_88 
  loc_AF19AB: ExitProcHresult
End Function

Private Function Proc_187_53_A855B4() 'A855B4
  'Data Table: 52F1AC
  loc_A85520: FLdPr Me
  loc_A85523: VCallAd Control_ID_CuotasFlex
  loc_A85526: FStAdFunc var_88
  loc_A85529: FLdPr var_88
  loc_A8552C: LateIdCall
  loc_A85534: LitVarI4
  loc_A8553C: PopAdLdVar
  loc_A8553D: FLdPr var_88
  loc_A85540: LateIdSt
  loc_A85545: LitVarI4
  loc_A8554D: PopAdLdVar
  loc_A8554E: LitVarI4
  loc_A85556: PopAdLdVar
  loc_A85557: LitVarStr var_D8, "Cuotas"
  loc_A8555C: PopAdLdVar
  loc_A8555D: FLdPr var_88
  loc_A85560: LateIdCallSt
  loc_A85568: LitVarI4
  loc_A85570: PopAdLdVar
  loc_A85571: LitVarI4
  loc_A85579: PopAdLdVar
  loc_A8557A: LitVarStr var_D8, "Importe"
  loc_A8557F: PopAdLdVar
  loc_A85580: FLdPr var_88
  loc_A85583: LateIdCallSt
  loc_A8558B: FLdPr var_88
  loc_A8558E: LateIdCall
  loc_A85596: LitNothing
  loc_A85598: FStAd var_88 
  loc_A8559C: LitI2_Byte 0
  loc_A8559E: FLdPr Me
  loc_A855A1: VCallAd Control_ID_ImprimirCmd
  loc_A855A4: FStAdFunc var_EC
  loc_A855A7: FLdPr var_EC
  loc_A855AA: Me.Enabled = from_stack_1b
  loc_A855AF: FFree1Ad var_EC
  loc_A855B2: ExitProcHresult
End Function

Private Function Proc_187_54_BF8A3C(arg_C, arg_10) 'BF8A3C
  'Data Table: 52F1AC
  loc_BF8198: ILdI4 arg_10
  loc_BF819B: LitStr "Mensual"
  loc_BF819E: EqStr
  loc_BF81A0: BranchF loc_BF8308
  loc_BF81A3: ILdRf arg_C
  loc_BF81A6: CVarRef
  loc_BF81AB: FLdRfVar var_AC
  loc_BF81AE: ImpAdCallFPR4  = Year()
  loc_BF81B3: ILdRf arg_C
  loc_BF81B6: CVarRef
  loc_BF81BB: FLdRfVar var_CC
  loc_BF81BE: ImpAdCallFPR4  = Month()
  loc_BF81C3: ILdRf arg_C
  loc_BF81C6: CVarRef
  loc_BF81CB: FLdRfVar var_10C
  loc_BF81CE: ImpAdCallFPR4  = Day()
  loc_BF81D3: FLdRfVar var_10C
  loc_BF81D6: CI2Var
  loc_BF81D7: FLdRfVar var_CC
  loc_BF81DA: LitVarI2 var_DC, 1
  loc_BF81DF: AddVar var_EC
  loc_BF81E3: CI2Var
  loc_BF81E4: FLdRfVar var_AC
  loc_BF81E7: CI2Var
  loc_BF81E8: FLdRfVar var_11C
  loc_BF81EB: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF81F0: FLdRfVar var_11C
  loc_BF81F3: FnCDateVar
  loc_BF81F5: FStFPR8 var_8C
  loc_BF81F8: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF8205: FLdRfVar var_8C
  loc_BF8208: CVarRef
  loc_BF820D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8212: LitI2_Byte 1
  loc_BF8214: EqI2
  loc_BF8215: BranchF loc_BF8285
  loc_BF8218: ILdRf arg_C
  loc_BF821B: CVarRef
  loc_BF8220: FLdRfVar var_AC
  loc_BF8223: ImpAdCallFPR4  = Year()
  loc_BF8228: ILdRf arg_C
  loc_BF822B: CVarRef
  loc_BF8230: FLdRfVar var_CC
  loc_BF8233: ImpAdCallFPR4  = Month()
  loc_BF8238: ILdRf arg_C
  loc_BF823B: CVarRef
  loc_BF8240: FLdRfVar var_10C
  loc_BF8243: ImpAdCallFPR4  = Day()
  loc_BF8248: FLdRfVar var_10C
  loc_BF824B: LitVarI2 var_12C, 1
  loc_BF8250: AddVar var_11C
  loc_BF8254: CI2Var
  loc_BF8255: FLdRfVar var_CC
  loc_BF8258: LitVarI2 var_DC, 1
  loc_BF825D: AddVar var_EC
  loc_BF8261: CI2Var
  loc_BF8262: FLdRfVar var_AC
  loc_BF8265: CI2Var
  loc_BF8266: FLdRfVar var_13C
  loc_BF8269: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF826E: FLdRfVar var_13C
  loc_BF8271: FnCDateVar
  loc_BF8273: FStFPR8 var_8C
  loc_BF8276: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8285: FLdRfVar var_8C
  loc_BF8288: CVarRef
  loc_BF828D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8292: LitI2_Byte 7
  loc_BF8294: EqI2
  loc_BF8295: BranchF loc_BF8305
  loc_BF8298: ILdRf arg_C
  loc_BF829B: CVarRef
  loc_BF82A0: FLdRfVar var_AC
  loc_BF82A3: ImpAdCallFPR4  = Year()
  loc_BF82A8: ILdRf arg_C
  loc_BF82AB: CVarRef
  loc_BF82B0: FLdRfVar var_CC
  loc_BF82B3: ImpAdCallFPR4  = Month()
  loc_BF82B8: ILdRf arg_C
  loc_BF82BB: CVarRef
  loc_BF82C0: FLdRfVar var_10C
  loc_BF82C3: ImpAdCallFPR4  = Day()
  loc_BF82C8: FLdRfVar var_10C
  loc_BF82CB: LitVarI2 var_12C, 2
  loc_BF82D0: AddVar var_11C
  loc_BF82D4: CI2Var
  loc_BF82D5: FLdRfVar var_CC
  loc_BF82D8: LitVarI2 var_DC, 1
  loc_BF82DD: AddVar var_EC
  loc_BF82E1: CI2Var
  loc_BF82E2: FLdRfVar var_AC
  loc_BF82E5: CI2Var
  loc_BF82E6: FLdRfVar var_13C
  loc_BF82E9: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF82EE: FLdRfVar var_13C
  loc_BF82F1: FnCDateVar
  loc_BF82F3: FStFPR8 var_8C
  loc_BF82F6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8305: Branch loc_BF8A35
  loc_BF8308: ILdI4 arg_10
  loc_BF830B: LitStr "Bimestral"
  loc_BF830E: EqStr
  loc_BF8310: BranchF loc_BF8478
  loc_BF8313: ILdRf arg_C
  loc_BF8316: CVarRef
  loc_BF831B: FLdRfVar var_AC
  loc_BF831E: ImpAdCallFPR4  = Year()
  loc_BF8323: ILdRf arg_C
  loc_BF8326: CVarRef
  loc_BF832B: FLdRfVar var_CC
  loc_BF832E: ImpAdCallFPR4  = Month()
  loc_BF8333: ILdRf arg_C
  loc_BF8336: CVarRef
  loc_BF833B: FLdRfVar var_10C
  loc_BF833E: ImpAdCallFPR4  = Day()
  loc_BF8343: FLdRfVar var_10C
  loc_BF8346: CI2Var
  loc_BF8347: FLdRfVar var_CC
  loc_BF834A: LitVarI2 var_DC, 2
  loc_BF834F: AddVar var_EC
  loc_BF8353: CI2Var
  loc_BF8354: FLdRfVar var_AC
  loc_BF8357: CI2Var
  loc_BF8358: FLdRfVar var_11C
  loc_BF835B: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF8360: FLdRfVar var_11C
  loc_BF8363: FnCDateVar
  loc_BF8365: FStFPR8 var_8C
  loc_BF8368: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF8375: FLdRfVar var_8C
  loc_BF8378: CVarRef
  loc_BF837D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8382: LitI2_Byte 1
  loc_BF8384: EqI2
  loc_BF8385: BranchF loc_BF83F5
  loc_BF8388: ILdRf arg_C
  loc_BF838B: CVarRef
  loc_BF8390: FLdRfVar var_AC
  loc_BF8393: ImpAdCallFPR4  = Year()
  loc_BF8398: ILdRf arg_C
  loc_BF839B: CVarRef
  loc_BF83A0: FLdRfVar var_CC
  loc_BF83A3: ImpAdCallFPR4  = Month()
  loc_BF83A8: ILdRf arg_C
  loc_BF83AB: CVarRef
  loc_BF83B0: FLdRfVar var_10C
  loc_BF83B3: ImpAdCallFPR4  = Day()
  loc_BF83B8: FLdRfVar var_10C
  loc_BF83BB: LitVarI2 var_12C, 1
  loc_BF83C0: AddVar var_11C
  loc_BF83C4: CI2Var
  loc_BF83C5: FLdRfVar var_CC
  loc_BF83C8: LitVarI2 var_DC, 2
  loc_BF83CD: AddVar var_EC
  loc_BF83D1: CI2Var
  loc_BF83D2: FLdRfVar var_AC
  loc_BF83D5: CI2Var
  loc_BF83D6: FLdRfVar var_13C
  loc_BF83D9: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF83DE: FLdRfVar var_13C
  loc_BF83E1: FnCDateVar
  loc_BF83E3: FStFPR8 var_8C
  loc_BF83E6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF83F5: FLdRfVar var_8C
  loc_BF83F8: CVarRef
  loc_BF83FD: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8402: LitI2_Byte 7
  loc_BF8404: EqI2
  loc_BF8405: BranchF loc_BF8475
  loc_BF8408: ILdRf arg_C
  loc_BF840B: CVarRef
  loc_BF8410: FLdRfVar var_AC
  loc_BF8413: ImpAdCallFPR4  = Year()
  loc_BF8418: ILdRf arg_C
  loc_BF841B: CVarRef
  loc_BF8420: FLdRfVar var_CC
  loc_BF8423: ImpAdCallFPR4  = Month()
  loc_BF8428: ILdRf arg_C
  loc_BF842B: CVarRef
  loc_BF8430: FLdRfVar var_10C
  loc_BF8433: ImpAdCallFPR4  = Day()
  loc_BF8438: FLdRfVar var_10C
  loc_BF843B: LitVarI2 var_12C, 2
  loc_BF8440: AddVar var_11C
  loc_BF8444: CI2Var
  loc_BF8445: FLdRfVar var_CC
  loc_BF8448: LitVarI2 var_DC, 2
  loc_BF844D: AddVar var_EC
  loc_BF8451: CI2Var
  loc_BF8452: FLdRfVar var_AC
  loc_BF8455: CI2Var
  loc_BF8456: FLdRfVar var_13C
  loc_BF8459: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF845E: FLdRfVar var_13C
  loc_BF8461: FnCDateVar
  loc_BF8463: FStFPR8 var_8C
  loc_BF8466: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8475: Branch loc_BF8A35
  loc_BF8478: ILdI4 arg_10
  loc_BF847B: LitStr "Trimestral"
  loc_BF847E: EqStr
  loc_BF8480: BranchF loc_BF85E8
  loc_BF8483: ILdRf arg_C
  loc_BF8486: CVarRef
  loc_BF848B: FLdRfVar var_AC
  loc_BF848E: ImpAdCallFPR4  = Year()
  loc_BF8493: ILdRf arg_C
  loc_BF8496: CVarRef
  loc_BF849B: FLdRfVar var_CC
  loc_BF849E: ImpAdCallFPR4  = Month()
  loc_BF84A3: ILdRf arg_C
  loc_BF84A6: CVarRef
  loc_BF84AB: FLdRfVar var_10C
  loc_BF84AE: ImpAdCallFPR4  = Day()
  loc_BF84B3: FLdRfVar var_10C
  loc_BF84B6: CI2Var
  loc_BF84B7: FLdRfVar var_CC
  loc_BF84BA: LitVarI2 var_DC, 3
  loc_BF84BF: AddVar var_EC
  loc_BF84C3: CI2Var
  loc_BF84C4: FLdRfVar var_AC
  loc_BF84C7: CI2Var
  loc_BF84C8: FLdRfVar var_11C
  loc_BF84CB: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF84D0: FLdRfVar var_11C
  loc_BF84D3: FnCDateVar
  loc_BF84D5: FStFPR8 var_8C
  loc_BF84D8: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF84E5: FLdRfVar var_8C
  loc_BF84E8: CVarRef
  loc_BF84ED: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF84F2: LitI2_Byte 1
  loc_BF84F4: EqI2
  loc_BF84F5: BranchF loc_BF8565
  loc_BF84F8: ILdRf arg_C
  loc_BF84FB: CVarRef
  loc_BF8500: FLdRfVar var_AC
  loc_BF8503: ImpAdCallFPR4  = Year()
  loc_BF8508: ILdRf arg_C
  loc_BF850B: CVarRef
  loc_BF8510: FLdRfVar var_CC
  loc_BF8513: ImpAdCallFPR4  = Month()
  loc_BF8518: ILdRf arg_C
  loc_BF851B: CVarRef
  loc_BF8520: FLdRfVar var_10C
  loc_BF8523: ImpAdCallFPR4  = Day()
  loc_BF8528: FLdRfVar var_10C
  loc_BF852B: LitVarI2 var_12C, 1
  loc_BF8530: AddVar var_11C
  loc_BF8534: CI2Var
  loc_BF8535: FLdRfVar var_CC
  loc_BF8538: LitVarI2 var_DC, 3
  loc_BF853D: AddVar var_EC
  loc_BF8541: CI2Var
  loc_BF8542: FLdRfVar var_AC
  loc_BF8545: CI2Var
  loc_BF8546: FLdRfVar var_13C
  loc_BF8549: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF854E: FLdRfVar var_13C
  loc_BF8551: FnCDateVar
  loc_BF8553: FStFPR8 var_8C
  loc_BF8556: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8565: FLdRfVar var_8C
  loc_BF8568: CVarRef
  loc_BF856D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8572: LitI2_Byte 7
  loc_BF8574: EqI2
  loc_BF8575: BranchF loc_BF85E5
  loc_BF8578: ILdRf arg_C
  loc_BF857B: CVarRef
  loc_BF8580: FLdRfVar var_AC
  loc_BF8583: ImpAdCallFPR4  = Year()
  loc_BF8588: ILdRf arg_C
  loc_BF858B: CVarRef
  loc_BF8590: FLdRfVar var_CC
  loc_BF8593: ImpAdCallFPR4  = Month()
  loc_BF8598: ILdRf arg_C
  loc_BF859B: CVarRef
  loc_BF85A0: FLdRfVar var_10C
  loc_BF85A3: ImpAdCallFPR4  = Day()
  loc_BF85A8: FLdRfVar var_10C
  loc_BF85AB: LitVarI2 var_12C, 2
  loc_BF85B0: AddVar var_11C
  loc_BF85B4: CI2Var
  loc_BF85B5: FLdRfVar var_CC
  loc_BF85B8: LitVarI2 var_DC, 3
  loc_BF85BD: AddVar var_EC
  loc_BF85C1: CI2Var
  loc_BF85C2: FLdRfVar var_AC
  loc_BF85C5: CI2Var
  loc_BF85C6: FLdRfVar var_13C
  loc_BF85C9: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF85CE: FLdRfVar var_13C
  loc_BF85D1: FnCDateVar
  loc_BF85D3: FStFPR8 var_8C
  loc_BF85D6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF85E5: Branch loc_BF8A35
  loc_BF85E8: ILdI4 arg_10
  loc_BF85EB: LitStr "Cuatrimestral"
  loc_BF85EE: EqStr
  loc_BF85F0: BranchF loc_BF8758
  loc_BF85F3: ILdRf arg_C
  loc_BF85F6: CVarRef
  loc_BF85FB: FLdRfVar var_AC
  loc_BF85FE: ImpAdCallFPR4  = Year()
  loc_BF8603: ILdRf arg_C
  loc_BF8606: CVarRef
  loc_BF860B: FLdRfVar var_CC
  loc_BF860E: ImpAdCallFPR4  = Month()
  loc_BF8613: ILdRf arg_C
  loc_BF8616: CVarRef
  loc_BF861B: FLdRfVar var_10C
  loc_BF861E: ImpAdCallFPR4  = Day()
  loc_BF8623: FLdRfVar var_10C
  loc_BF8626: CI2Var
  loc_BF8627: FLdRfVar var_CC
  loc_BF862A: LitVarI2 var_DC, 4
  loc_BF862F: AddVar var_EC
  loc_BF8633: CI2Var
  loc_BF8634: FLdRfVar var_AC
  loc_BF8637: CI2Var
  loc_BF8638: FLdRfVar var_11C
  loc_BF863B: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF8640: FLdRfVar var_11C
  loc_BF8643: FnCDateVar
  loc_BF8645: FStFPR8 var_8C
  loc_BF8648: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF8655: FLdRfVar var_8C
  loc_BF8658: CVarRef
  loc_BF865D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8662: LitI2_Byte 1
  loc_BF8664: EqI2
  loc_BF8665: BranchF loc_BF86D5
  loc_BF8668: ILdRf arg_C
  loc_BF866B: CVarRef
  loc_BF8670: FLdRfVar var_AC
  loc_BF8673: ImpAdCallFPR4  = Year()
  loc_BF8678: ILdRf arg_C
  loc_BF867B: CVarRef
  loc_BF8680: FLdRfVar var_CC
  loc_BF8683: ImpAdCallFPR4  = Month()
  loc_BF8688: ILdRf arg_C
  loc_BF868B: CVarRef
  loc_BF8690: FLdRfVar var_10C
  loc_BF8693: ImpAdCallFPR4  = Day()
  loc_BF8698: FLdRfVar var_10C
  loc_BF869B: LitVarI2 var_12C, 1
  loc_BF86A0: AddVar var_11C
  loc_BF86A4: CI2Var
  loc_BF86A5: FLdRfVar var_CC
  loc_BF86A8: LitVarI2 var_DC, 4
  loc_BF86AD: AddVar var_EC
  loc_BF86B1: CI2Var
  loc_BF86B2: FLdRfVar var_AC
  loc_BF86B5: CI2Var
  loc_BF86B6: FLdRfVar var_13C
  loc_BF86B9: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF86BE: FLdRfVar var_13C
  loc_BF86C1: FnCDateVar
  loc_BF86C3: FStFPR8 var_8C
  loc_BF86C6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF86D5: FLdRfVar var_8C
  loc_BF86D8: CVarRef
  loc_BF86DD: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF86E2: LitI2_Byte 7
  loc_BF86E4: EqI2
  loc_BF86E5: BranchF loc_BF8755
  loc_BF86E8: ILdRf arg_C
  loc_BF86EB: CVarRef
  loc_BF86F0: FLdRfVar var_AC
  loc_BF86F3: ImpAdCallFPR4  = Year()
  loc_BF86F8: ILdRf arg_C
  loc_BF86FB: CVarRef
  loc_BF8700: FLdRfVar var_CC
  loc_BF8703: ImpAdCallFPR4  = Month()
  loc_BF8708: ILdRf arg_C
  loc_BF870B: CVarRef
  loc_BF8710: FLdRfVar var_10C
  loc_BF8713: ImpAdCallFPR4  = Day()
  loc_BF8718: FLdRfVar var_10C
  loc_BF871B: LitVarI2 var_12C, 2
  loc_BF8720: AddVar var_11C
  loc_BF8724: CI2Var
  loc_BF8725: FLdRfVar var_CC
  loc_BF8728: LitVarI2 var_DC, 4
  loc_BF872D: AddVar var_EC
  loc_BF8731: CI2Var
  loc_BF8732: FLdRfVar var_AC
  loc_BF8735: CI2Var
  loc_BF8736: FLdRfVar var_13C
  loc_BF8739: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF873E: FLdRfVar var_13C
  loc_BF8741: FnCDateVar
  loc_BF8743: FStFPR8 var_8C
  loc_BF8746: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8755: Branch loc_BF8A35
  loc_BF8758: ILdI4 arg_10
  loc_BF875B: LitStr "Semestral"
  loc_BF875E: EqStr
  loc_BF8760: BranchF loc_BF88C8
  loc_BF8763: ILdRf arg_C
  loc_BF8766: CVarRef
  loc_BF876B: FLdRfVar var_AC
  loc_BF876E: ImpAdCallFPR4  = Year()
  loc_BF8773: ILdRf arg_C
  loc_BF8776: CVarRef
  loc_BF877B: FLdRfVar var_CC
  loc_BF877E: ImpAdCallFPR4  = Month()
  loc_BF8783: ILdRf arg_C
  loc_BF8786: CVarRef
  loc_BF878B: FLdRfVar var_10C
  loc_BF878E: ImpAdCallFPR4  = Day()
  loc_BF8793: FLdRfVar var_10C
  loc_BF8796: CI2Var
  loc_BF8797: FLdRfVar var_CC
  loc_BF879A: LitVarI2 var_DC, 6
  loc_BF879F: AddVar var_EC
  loc_BF87A3: CI2Var
  loc_BF87A4: FLdRfVar var_AC
  loc_BF87A7: CI2Var
  loc_BF87A8: FLdRfVar var_11C
  loc_BF87AB: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF87B0: FLdRfVar var_11C
  loc_BF87B3: FnCDateVar
  loc_BF87B5: FStFPR8 var_8C
  loc_BF87B8: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF87C5: FLdRfVar var_8C
  loc_BF87C8: CVarRef
  loc_BF87CD: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF87D2: LitI2_Byte 1
  loc_BF87D4: EqI2
  loc_BF87D5: BranchF loc_BF8845
  loc_BF87D8: ILdRf arg_C
  loc_BF87DB: CVarRef
  loc_BF87E0: FLdRfVar var_AC
  loc_BF87E3: ImpAdCallFPR4  = Year()
  loc_BF87E8: ILdRf arg_C
  loc_BF87EB: CVarRef
  loc_BF87F0: FLdRfVar var_CC
  loc_BF87F3: ImpAdCallFPR4  = Month()
  loc_BF87F8: ILdRf arg_C
  loc_BF87FB: CVarRef
  loc_BF8800: FLdRfVar var_10C
  loc_BF8803: ImpAdCallFPR4  = Day()
  loc_BF8808: FLdRfVar var_10C
  loc_BF880B: LitVarI2 var_12C, 1
  loc_BF8810: AddVar var_11C
  loc_BF8814: CI2Var
  loc_BF8815: FLdRfVar var_CC
  loc_BF8818: LitVarI2 var_DC, 6
  loc_BF881D: AddVar var_EC
  loc_BF8821: CI2Var
  loc_BF8822: FLdRfVar var_AC
  loc_BF8825: CI2Var
  loc_BF8826: FLdRfVar var_13C
  loc_BF8829: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF882E: FLdRfVar var_13C
  loc_BF8831: FnCDateVar
  loc_BF8833: FStFPR8 var_8C
  loc_BF8836: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8845: FLdRfVar var_8C
  loc_BF8848: CVarRef
  loc_BF884D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8852: LitI2_Byte 7
  loc_BF8854: EqI2
  loc_BF8855: BranchF loc_BF88C5
  loc_BF8858: ILdRf arg_C
  loc_BF885B: CVarRef
  loc_BF8860: FLdRfVar var_AC
  loc_BF8863: ImpAdCallFPR4  = Year()
  loc_BF8868: ILdRf arg_C
  loc_BF886B: CVarRef
  loc_BF8870: FLdRfVar var_CC
  loc_BF8873: ImpAdCallFPR4  = Month()
  loc_BF8878: ILdRf arg_C
  loc_BF887B: CVarRef
  loc_BF8880: FLdRfVar var_10C
  loc_BF8883: ImpAdCallFPR4  = Day()
  loc_BF8888: FLdRfVar var_10C
  loc_BF888B: LitVarI2 var_12C, 2
  loc_BF8890: AddVar var_11C
  loc_BF8894: CI2Var
  loc_BF8895: FLdRfVar var_CC
  loc_BF8898: LitVarI2 var_DC, 6
  loc_BF889D: AddVar var_EC
  loc_BF88A1: CI2Var
  loc_BF88A2: FLdRfVar var_AC
  loc_BF88A5: CI2Var
  loc_BF88A6: FLdRfVar var_13C
  loc_BF88A9: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF88AE: FLdRfVar var_13C
  loc_BF88B1: FnCDateVar
  loc_BF88B3: FStFPR8 var_8C
  loc_BF88B6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF88C5: Branch loc_BF8A35
  loc_BF88C8: ILdI4 arg_10
  loc_BF88CB: LitStr "Anual"
  loc_BF88CE: EqStr
  loc_BF88D0: BranchF loc_BF8A35
  loc_BF88D3: ILdRf arg_C
  loc_BF88D6: CVarRef
  loc_BF88DB: FLdRfVar var_AC
  loc_BF88DE: ImpAdCallFPR4  = Year()
  loc_BF88E3: ILdRf arg_C
  loc_BF88E6: CVarRef
  loc_BF88EB: FLdRfVar var_CC
  loc_BF88EE: ImpAdCallFPR4  = Month()
  loc_BF88F3: ILdRf arg_C
  loc_BF88F6: CVarRef
  loc_BF88FB: FLdRfVar var_10C
  loc_BF88FE: ImpAdCallFPR4  = Day()
  loc_BF8903: FLdRfVar var_10C
  loc_BF8906: CI2Var
  loc_BF8907: FLdRfVar var_CC
  loc_BF890A: LitVarI2 var_DC, 12
  loc_BF890F: AddVar var_EC
  loc_BF8913: CI2Var
  loc_BF8914: FLdRfVar var_AC
  loc_BF8917: CI2Var
  loc_BF8918: FLdRfVar var_11C
  loc_BF891B: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF8920: FLdRfVar var_11C
  loc_BF8923: FnCDateVar
  loc_BF8925: FStFPR8 var_8C
  loc_BF8928: FFreeVar var_CC = "": var_AC = "": var_EC = "": var_10C = ""
  loc_BF8935: FLdRfVar var_8C
  loc_BF8938: CVarRef
  loc_BF893D: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF8942: LitI2_Byte 1
  loc_BF8944: EqI2
  loc_BF8945: BranchF loc_BF89B5
  loc_BF8948: ILdRf arg_C
  loc_BF894B: CVarRef
  loc_BF8950: FLdRfVar var_AC
  loc_BF8953: ImpAdCallFPR4  = Year()
  loc_BF8958: ILdRf arg_C
  loc_BF895B: CVarRef
  loc_BF8960: FLdRfVar var_CC
  loc_BF8963: ImpAdCallFPR4  = Month()
  loc_BF8968: ILdRf arg_C
  loc_BF896B: CVarRef
  loc_BF8970: FLdRfVar var_10C
  loc_BF8973: ImpAdCallFPR4  = Day()
  loc_BF8978: FLdRfVar var_10C
  loc_BF897B: LitVarI2 var_12C, 1
  loc_BF8980: AddVar var_11C
  loc_BF8984: CI2Var
  loc_BF8985: FLdRfVar var_CC
  loc_BF8988: LitVarI2 var_DC, 12
  loc_BF898D: AddVar var_EC
  loc_BF8991: CI2Var
  loc_BF8992: FLdRfVar var_AC
  loc_BF8995: CI2Var
  loc_BF8996: FLdRfVar var_13C
  loc_BF8999: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF899E: FLdRfVar var_13C
  loc_BF89A1: FnCDateVar
  loc_BF89A3: FStFPR8 var_8C
  loc_BF89A6: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF89B5: FLdRfVar var_8C
  loc_BF89B8: CVarRef
  loc_BF89BD: ImpAdCallI2 Proc_272_50_A099E8()
  loc_BF89C2: LitI2_Byte 7
  loc_BF89C4: EqI2
  loc_BF89C5: BranchF loc_BF8A35
  loc_BF89C8: ILdRf arg_C
  loc_BF89CB: CVarRef
  loc_BF89D0: FLdRfVar var_AC
  loc_BF89D3: ImpAdCallFPR4  = Year()
  loc_BF89D8: ILdRf arg_C
  loc_BF89DB: CVarRef
  loc_BF89E0: FLdRfVar var_CC
  loc_BF89E3: ImpAdCallFPR4  = Month()
  loc_BF89E8: ILdRf arg_C
  loc_BF89EB: CVarRef
  loc_BF89F0: FLdRfVar var_10C
  loc_BF89F3: ImpAdCallFPR4  = Day()
  loc_BF89F8: FLdRfVar var_10C
  loc_BF89FB: LitVarI2 var_12C, 2
  loc_BF8A00: AddVar var_11C
  loc_BF8A04: CI2Var
  loc_BF8A05: FLdRfVar var_CC
  loc_BF8A08: LitVarI2 var_DC, 12
  loc_BF8A0D: AddVar var_EC
  loc_BF8A11: CI2Var
  loc_BF8A12: FLdRfVar var_AC
  loc_BF8A15: CI2Var
  loc_BF8A16: FLdRfVar var_13C
  loc_BF8A19: ImpAdCallFPR4  = DateSerial(, , )
  loc_BF8A1E: FLdRfVar var_13C
  loc_BF8A21: FnCDateVar
  loc_BF8A23: FStFPR8 var_8C
  loc_BF8A26: FFreeVar var_CC = "": var_10C = "": var_AC = "": var_EC = "": var_11C = ""
  loc_BF8A35: ExitProcCbHresult
End Function

Private Function Proc_187_55_C54530() 'C54530
  'Data Table: 52F1AC
  loc_C5371C: LitI2_Byte 0
  loc_C5371E: CR8I2
  loc_C5371F: FLdPr Me
  loc_C53722: MemStFPR8 global_100
  loc_C53725: LitI2_Byte 0
  loc_C53727: CR8I2
  loc_C53728: FLdPr Me
  loc_C5372B: MemStFPR8 global_108
  loc_C5372E: LitI2_Byte 0
  loc_C53730: CR8I2
  loc_C53731: FLdPr Me
  loc_C53734: MemStFPR8 global_116
  loc_C53737: LitI2_Byte 0
  loc_C53739: CR8I2
  loc_C5373A: FLdPr Me
  loc_C5373D: MemStFPR8 global_124
  loc_C53740: LitI2_Byte 1
  loc_C53742: FLdPr Me
  loc_C53745: MemLdRfVar from_stack_1.global_96
  loc_C53748: FLdPr Me
  loc_C5374B: VCallAd Control_ID_ctacteFlex
  loc_C5374E: FStAdFunc var_88
  loc_C53751: FLdPr var_88
  loc_C53754: LateIdLdVar var_98 DispID_4 0
  loc_C5375B: CI4Var
  loc_C5375D: LitI4 1
  loc_C53762: SubI4
  loc_C53763: CI2I4
  loc_C53764: FFree1Ad var_88
  loc_C53767: FFree1Var var_98 = ""
  loc_C5376A: ForI2 var_9C
  loc_C53770: FLdPr Me
  loc_C53773: MemLdI2 global_96
  loc_C53776: CI4UI1
  loc_C53777: CVarI4
  loc_C5377B: PopAdLdVar
  loc_C5377C: LitVarI4
  loc_C53784: PopAdLdVar
  loc_C53785: FLdPr Me
  loc_C53788: VCallAd Control_ID_ctacteFlex
  loc_C5378B: FStAdFunc var_88
  loc_C5378E: FLdPr var_88
  loc_C53791: LateIdCallLdVar
  loc_C5379B: CStrVarTmp
  loc_C5379C: FStStrNoPop var_E0
  loc_C5379F: CI4Str
  loc_C537A0: LitI4 0
  loc_C537A5: EqI4
  loc_C537A6: FFree1Str var_E0
  loc_C537A9: FFree1Ad var_88
  loc_C537AC: FFree1Var var_98 = ""
  loc_C537AF: BranchF loc_C54182
  loc_C537B2: FLdPr Me
  loc_C537B5: MemLdI2 global_96
  loc_C537B8: CI4UI1
  loc_C537B9: CVarI4
  loc_C537BD: PopAdLdVar
  loc_C537BE: FLdPr Me
  loc_C537C1: VCallAd Control_ID_ctacteFlex
  loc_C537C4: FStAdFunc var_88
  loc_C537C7: FLdPr var_88
  loc_C537CA: LateIdSt
  loc_C537CF: FFree1Ad var_88
  loc_C537D2: LitI2_Byte 0
  loc_C537D4: FLdPr Me
  loc_C537D7: MemLdRfVar from_stack_1.global_98
  loc_C537DA: FLdPr Me
  loc_C537DD: VCallAd Control_ID_ctacteFlex
  loc_C537E0: FStAdFunc var_88
  loc_C537E3: FLdPr var_88
  loc_C537E6: LateIdLdVar var_98 DispID_5 0
  loc_C537ED: CI4Var
  loc_C537EF: LitI4 1
  loc_C537F4: SubI4
  loc_C537F5: CI2I4
  loc_C537F6: FFree1Ad var_88
  loc_C537F9: FFree1Var var_98 = ""
  loc_C537FC: ForI2 var_E4
  loc_C53802: FLdPr Me
  loc_C53805: MemLdI2 global_98
  loc_C53808: CI4UI1
  loc_C53809: CVarI4
  loc_C5380D: PopAdLdVar
  loc_C5380E: FLdPr Me
  loc_C53811: VCallAd Control_ID_ctacteFlex
  loc_C53814: FStAdFunc var_88
  loc_C53817: FLdPr var_88
  loc_C5381A: LateIdSt
  loc_C5381F: FFree1Ad var_88
  loc_C53822: FLdRfVar var_E6
  loc_C53825: FLdPr Me
  loc_C53828: VCallAd Control_ID_SeleTodoChk
  loc_C5382B: FStAdFunc var_88
  loc_C5382E: FLdPr var_88
  loc_C53831:  = Me.Value
  loc_C53836: FLdI2 var_E6
  loc_C53839: LitI2_Byte 0
  loc_C5383B: EqI2
  loc_C5383C: FFree1Ad var_88
  loc_C5383F: BranchF loc_C53CB0
  loc_C53842: LitVarI4
  loc_C5384A: PopAdLdVar
  loc_C5384B: FLdPr Me
  loc_C5384E: VCallAd Control_ID_ctacteFlex
  loc_C53851: FStAdFunc var_88
  loc_C53854: FLdPr var_88
  loc_C53857: LateIdSt
  loc_C5385C: FFree1Ad var_88
  loc_C5385F: FLdPr Me
  loc_C53862: VCallAd Control_ID_ctacteFlex
  loc_C53865: FStAdFunc var_88
  loc_C53868: FLdPr var_88
  loc_C5386B: LateIdLdVar var_98 DispID_10 0
  loc_C53872: CI4Var
  loc_C53874: CVarI4
  loc_C53878: PopAdLdVar
  loc_C53879: LitVarI4
  loc_C53881: PopAdLdVar
  loc_C53882: LitVarStr var_F8, "No"
  loc_C53887: PopAdLdVar
  loc_C53888: FLdPr Me
  loc_C5388B: VCallAd Control_ID_ctacteFlex
  loc_C5388E: FStAdFunc var_10C
  loc_C53891: FLdPr var_10C
  loc_C53894: LateIdCallSt
  loc_C5389C: FFreeAd var_88 = ""
  loc_C538A3: FFree1Var var_98 = ""
  loc_C538A6: FLdPr Me
  loc_C538A9: MemLdI2 global_98
  loc_C538AC: LitI2_Byte 0
  loc_C538AE: EqI2
  loc_C538AF: BranchF loc_C53B2C
  loc_C538B2: FLdPr Me
  loc_C538B5: VCallAd Control_ID_ctacteFlex
  loc_C538B8: FStAdFunc var_88
  loc_C538BB: FLdPr var_88
  loc_C538BE: LateIdLdVar var_98 DispID_10 0
  loc_C538C5: CI4Var
  loc_C538C7: CVarI4
  loc_C538CB: PopAdLdVar
  loc_C538CC: LitVarI4
  loc_C538D4: PopAdLdVar
  loc_C538D5: FLdPr Me
  loc_C538D8: VCallAd Control_ID_ctacteFlex
  loc_C538DB: FStAdFunc var_10C
  loc_C538DE: FLdPr var_10C
  loc_C538E1: LateIdCallLdVar
  loc_C538EB: PopAd
  loc_C538ED: FLdPr Me
  loc_C538F0: VCallAd Control_ID_ctacteFlex
  loc_C538F3: FStAdFunc var_120
  loc_C538F6: FLdPr var_120
  loc_C538F9: LateIdLdVar var_130 DispID_10 0
  loc_C53900: CI4Var
  loc_C53902: CVarI4
  loc_C53906: PopAdLdVar
  loc_C53907: LitVarI4
  loc_C5390F: PopAdLdVar
  loc_C53910: FLdPr Me
  loc_C53913: VCallAd Control_ID_ctacteFlex
  loc_C53916: FStAdFunc var_154
  loc_C53919: FLdPr var_154
  loc_C5391C: LateIdCallLdVar
  loc_C53926: PopAd
  loc_C53928: FLdPr Me
  loc_C5392B: VCallAd Control_ID_ctacteFlex
  loc_C5392E: FStAdFunc var_168
  loc_C53931: FLdPr var_168
  loc_C53934: LateIdLdVar var_178 DispID_10 0
  loc_C5393B: CI4Var
  loc_C5393D: CVarI4
  loc_C53941: PopAdLdVar
  loc_C53942: LitVarI4
  loc_C5394A: PopAdLdVar
  loc_C5394B: FLdPr Me
  loc_C5394E: VCallAd Control_ID_ctacteFlex
  loc_C53951: FStAdFunc var_1BC
  loc_C53954: FLdPr var_1BC
  loc_C53957: LateIdCallLdVar
  loc_C53961: CStrVarTmp
  loc_C53962: CVarStr var_1DC
  loc_C53965: FLdRfVar var_1EC
  loc_C53968: ImpAdCallFPR4  = Trim()
  loc_C5396D: LitI4 4
  loc_C53972: FLdRfVar var_1EC
  loc_C53975: FLdRfVar var_1FC
  loc_C53978: ImpAdCallFPR4  = Right(, )
  loc_C5397D: FLdPr Me
  loc_C53980: VCallAd Control_ID_ctacteFlex
  loc_C53983: FStAdFunc var_200
  loc_C53986: FLdPr var_200
  loc_C53989: LateIdLdVar var_210 DispID_10 0
  loc_C53990: CI4Var
  loc_C53992: CVarI4
  loc_C53996: PopAdLdVar
  loc_C53997: LitVarI4
  loc_C5399F: PopAdLdVar
  loc_C539A0: FLdPr Me
  loc_C539A3: VCallAd Control_ID_ctacteFlex
  loc_C539A6: FStAdFunc var_254
  loc_C539A9: FLdPr var_254
  loc_C539AC: LateIdCallLdVar
  loc_C539B6: PopAd
  loc_C539B8: LitI4 1
  loc_C539BD: FLdPr Me
  loc_C539C0: VCallAd Control_ID_ctacteFlex
  loc_C539C3: FStAdFunc var_268
  loc_C539C6: FLdPr var_268
  loc_C539C9: LateIdLdVar var_278 DispID_10 0
  loc_C539D0: CI4Var
  loc_C539D2: CVarI4
  loc_C539D6: PopAdLdVar
  loc_C539D7: LitVarI4
  loc_C539DF: PopAdLdVar
  loc_C539E0: FLdPr Me
  loc_C539E3: VCallAd Control_ID_ctacteFlex
  loc_C539E6: FStAdFunc var_2BC
  loc_C539E9: FLdPr var_2BC
  loc_C539EC: LateIdCallLdVar
  loc_C539F6: CStrVarTmp
  loc_C539F7: FStStrNoPop var_E0
  loc_C539FA: LitStr "/"
  loc_C539FD: LitI4 0
  loc_C53A02: FnInStr4
  loc_C53A04: LitI4 1
  loc_C53A09: SubI4
  loc_C53A0A: CVarI4
  loc_C53A0E: LitI4 1
  loc_C53A13: FLdRfVar var_264
  loc_C53A16: CStrVarTmp
  loc_C53A17: CVarStr var_2DC
  loc_C53A1A: FLdRfVar var_30C
  loc_C53A1D: ImpAdCallFPR4  = Mid(, , )
  loc_C53A22: FLdPr Me
  loc_C53A25: VCallAd Control_ID_ctacteFlex
  loc_C53A28: FStAdFunc var_310
  loc_C53A2B: FLdPr var_310
  loc_C53A2E: LateIdLdVar var_320 DispID_10 0
  loc_C53A35: CI4Var
  loc_C53A37: CVarI4
  loc_C53A3B: PopAdLdVar
  loc_C53A3C: LitVarI4
  loc_C53A44: PopAdLdVar
  loc_C53A45: FLdPr Me
  loc_C53A48: VCallAd Control_ID_ctacteFlex
  loc_C53A4B: FStAdFunc var_364
  loc_C53A4E: FLdPr var_364
  loc_C53A51: LateIdCallLdVar
  loc_C53A5B: PopAd
  loc_C53A5D: FLdPr Me
  loc_C53A60: VCallAd Control_ID_ctacteFlex
  loc_C53A63: FStAdFunc var_378
  loc_C53A66: FLdPr var_378
  loc_C53A69: LateIdLdVar var_388 DispID_10 0
  loc_C53A70: CI4Var
  loc_C53A72: CVarI4
  loc_C53A76: PopAdLdVar
  loc_C53A77: LitVarI4
  loc_C53A7F: PopAdLdVar
  loc_C53A80: FLdPr Me
  loc_C53A83: VCallAd Control_ID_ctacteFlex
  loc_C53A86: FStAdFunc var_3CC
  loc_C53A89: FLdPr var_3CC
  loc_C53A8C: LateIdCallLdVar
  loc_C53A96: PopAd
  loc_C53A98: LitStr "tmp_ctacteboleto"
  loc_C53A9B: LitStr "No"
  loc_C53A9E: FLdRfVar var_3DC
  loc_C53AA1: CStrVarTmp
  loc_C53AA2: FStStrNoPop var_3EC
  loc_C53AA5: CI2Str
  loc_C53AA7: FLdRfVar var_374
  loc_C53AAA: CStrVarTmp
  loc_C53AAB: FStStrNoPop var_3E8
  loc_C53AAE: CI4Str
  loc_C53AAF: FLdRfVar var_30C
  loc_C53AB2: CI2Var
  loc_C53AB3: FLdRfVar var_1FC
  loc_C53AB6: CI2Var
  loc_C53AB7: FLdRfVar var_164
  loc_C53ABA: CStrVarTmp
  loc_C53ABB: FStStrNoPop var_3E4
  loc_C53ABE: FLdRfVar var_11C
  loc_C53AC1: CStrVarTmp
  loc_C53AC2: FStStrNoPop var_3E0
  loc_C53AC5: CUI1Str
  loc_C53AC7: FLdPr Me
  loc_C53ACA: MemLdRfVar from_stack_1.global_68
  loc_C53ACD: NewIfNullPr clsctacte
  loc_C53AD0: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C53AD5: FFreeStr var_E0 = "": var_3E0 = "": var_3E4 = "": var_3E8 = ""
  loc_C53AE2: FFreeAd var_88 = "": var_10C = "": var_120 = "": var_154 = "": var_168 = "": var_1BC = "": var_200 = "": var_254 = "": var_268 = "": var_2BC = "": var_310 = "": var_364 = "": var_378 = ""
  loc_C53B01: FFreeVar var_98 = "": var_11C = "": var_130 = "": var_164 = "": var_178 = "": var_1CC = "": var_1DC = "": var_1EC = "": var_210 = "": var_264 = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_320 = "": var_374 = "": var_388 = "": var_3DC = "": var_1FC = ""
  loc_C53B2C: FLdPr Me
  loc_C53B2F: MemLdI2 global_98
  loc_C53B32: LitI2_Byte &HB
  loc_C53B34: EqI2
  loc_C53B35: BranchF loc_C53BB6
  loc_C53B38: FLdPr Me
  loc_C53B3B: VCallAd Control_ID_ctacteFlex
  loc_C53B3E: FStAdFunc var_88
  loc_C53B41: FLdPr var_88
  loc_C53B44: LateIdLdVar var_98 DispID_10 0
  loc_C53B4B: CI4Var
  loc_C53B4D: CVarI4
  loc_C53B51: PopAdLdVar
  loc_C53B52: FLdPr Me
  loc_C53B55: MemLdI2 global_98
  loc_C53B58: CI4UI1
  loc_C53B59: CVarI4
  loc_C53B5D: PopAdLdVar
  loc_C53B5E: FLdPr Me
  loc_C53B61: VCallAd Control_ID_ctacteFlex
  loc_C53B64: FStAdFunc var_10C
  loc_C53B67: FLdPr var_10C
  loc_C53B6A: LateIdCallLdVar
  loc_C53B74: PopAd
  loc_C53B76: LitI4 2
  loc_C53B7B: FLdPr Me
  loc_C53B7E: MemLdFPR8 global_108
  loc_C53B81: FLdRfVar var_11C
  loc_C53B84: CStrVarTmp
  loc_C53B85: FStStrNoPop var_E0
  loc_C53B88: CR8Str
  loc_C53B8A: SubR4
  loc_C53B8B: CVarR8
  loc_C53B8F: FLdRfVar var_164
  loc_C53B92: ImpAdCallFPR4  = Round(, )
  loc_C53B97: FLdRfVar var_164
  loc_C53B9A: CR4Var
  loc_C53B9B: FLdPr Me
  loc_C53B9E: MemStFPR8 global_108
  loc_C53BA1: FFree1Str var_E0
  loc_C53BA4: FFreeAd var_88 = ""
  loc_C53BAB: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C53BB6: FLdPr Me
  loc_C53BB9: MemLdI2 global_98
  loc_C53BBC: LitI2_Byte &HC
  loc_C53BBE: EqI2
  loc_C53BBF: BranchF loc_C53C98
  loc_C53BC2: FLdPr Me
  loc_C53BC5: VCallAd Control_ID_ctacteFlex
  loc_C53BC8: FStAdFunc var_88
  loc_C53BCB: FLdPr var_88
  loc_C53BCE: LateIdLdVar var_98 DispID_10 0
  loc_C53BD5: CI4Var
  loc_C53BD7: CVarI4
  loc_C53BDB: PopAdLdVar
  loc_C53BDC: FLdPr Me
  loc_C53BDF: MemLdI2 global_98
  loc_C53BE2: CI4UI1
  loc_C53BE3: CVarI4
  loc_C53BE7: PopAdLdVar
  loc_C53BE8: FLdPr Me
  loc_C53BEB: VCallAd Control_ID_ctacteFlex
  loc_C53BEE: FStAdFunc var_10C
  loc_C53BF1: FLdPr var_10C
  loc_C53BF4: LateIdCallLdVar
  loc_C53BFE: CStrVarTmp
  loc_C53BFF: CVarStr var_130
  loc_C53C02: ImpAdCallI2 IsNumeric()
  loc_C53C07: FFreeAd var_88 = ""
  loc_C53C0E: FFreeVar var_98 = "": var_11C = ""
  loc_C53C17: BranchF loc_C53C98
  loc_C53C1A: FLdPr Me
  loc_C53C1D: VCallAd Control_ID_ctacteFlex
  loc_C53C20: FStAdFunc var_88
  loc_C53C23: FLdPr var_88
  loc_C53C26: LateIdLdVar var_98 DispID_10 0
  loc_C53C2D: CI4Var
  loc_C53C2F: CVarI4
  loc_C53C33: PopAdLdVar
  loc_C53C34: FLdPr Me
  loc_C53C37: MemLdI2 global_98
  loc_C53C3A: CI4UI1
  loc_C53C3B: CVarI4
  loc_C53C3F: PopAdLdVar
  loc_C53C40: FLdPr Me
  loc_C53C43: VCallAd Control_ID_ctacteFlex
  loc_C53C46: FStAdFunc var_10C
  loc_C53C49: FLdPr var_10C
  loc_C53C4C: LateIdCallLdVar
  loc_C53C56: PopAd
  loc_C53C58: LitI4 2
  loc_C53C5D: FLdPr Me
  loc_C53C60: MemLdFPR8 global_116
  loc_C53C63: FLdRfVar var_11C
  loc_C53C66: CStrVarTmp
  loc_C53C67: FStStrNoPop var_E0
  loc_C53C6A: CR8Str
  loc_C53C6C: SubR4
  loc_C53C6D: CVarR8
  loc_C53C71: FLdRfVar var_164
  loc_C53C74: ImpAdCallFPR4  = Round(, )
  loc_C53C79: FLdRfVar var_164
  loc_C53C7C: CR4Var
  loc_C53C7D: FLdPr Me
  loc_C53C80: MemStFPR8 global_116
  loc_C53C83: FFree1Str var_E0
  loc_C53C86: FFreeAd var_88 = ""
  loc_C53C8D: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C53C98: FLdPr Me
  loc_C53C9B: MemLdI2 global_98
  loc_C53C9E: LitI2_Byte &HD
  loc_C53CA0: EqI2
  loc_C53CA1: BranchF loc_C53CAD
  loc_C53CA4: LitI2_Byte 0
  loc_C53CA6: CR8I2
  loc_C53CA7: FLdPr Me
  loc_C53CAA: MemStFPR8 global_100
  loc_C53CAD: Branch loc_C54177
  loc_C53CB0: LitVarI4
  loc_C53CB8: PopAdLdVar
  loc_C53CB9: FLdPr Me
  loc_C53CBC: VCallAd Control_ID_ctacteFlex
  loc_C53CBF: FStAdFunc var_88
  loc_C53CC2: FLdPr var_88
  loc_C53CC5: LateIdSt
  loc_C53CCA: FFree1Ad var_88
  loc_C53CCD: FLdPr Me
  loc_C53CD0: VCallAd Control_ID_ctacteFlex
  loc_C53CD3: FStAdFunc var_88
  loc_C53CD6: FLdPr var_88
  loc_C53CD9: LateIdLdVar var_98 DispID_10 0
  loc_C53CE0: CI4Var
  loc_C53CE2: CVarI4
  loc_C53CE6: PopAdLdVar
  loc_C53CE7: LitVarI4
  loc_C53CEF: PopAdLdVar
  loc_C53CF0: LitVarStr var_F8, "Si"
  loc_C53CF5: PopAdLdVar
  loc_C53CF6: FLdPr Me
  loc_C53CF9: VCallAd Control_ID_ctacteFlex
  loc_C53CFC: FStAdFunc var_10C
  loc_C53CFF: FLdPr var_10C
  loc_C53D02: LateIdCallSt
  loc_C53D0A: FFreeAd var_88 = ""
  loc_C53D11: FFree1Var var_98 = ""
  loc_C53D14: FLdPr Me
  loc_C53D17: MemLdI2 global_98
  loc_C53D1A: LitI2_Byte 0
  loc_C53D1C: EqI2
  loc_C53D1D: BranchF loc_C53F9A
  loc_C53D20: FLdPr Me
  loc_C53D23: VCallAd Control_ID_ctacteFlex
  loc_C53D26: FStAdFunc var_88
  loc_C53D29: FLdPr var_88
  loc_C53D2C: LateIdLdVar var_98 DispID_10 0
  loc_C53D33: CI4Var
  loc_C53D35: CVarI4
  loc_C53D39: PopAdLdVar
  loc_C53D3A: LitVarI4
  loc_C53D42: PopAdLdVar
  loc_C53D43: FLdPr Me
  loc_C53D46: VCallAd Control_ID_ctacteFlex
  loc_C53D49: FStAdFunc var_10C
  loc_C53D4C: FLdPr var_10C
  loc_C53D4F: LateIdCallLdVar
  loc_C53D59: PopAd
  loc_C53D5B: FLdPr Me
  loc_C53D5E: VCallAd Control_ID_ctacteFlex
  loc_C53D61: FStAdFunc var_120
  loc_C53D64: FLdPr var_120
  loc_C53D67: LateIdLdVar var_130 DispID_10 0
  loc_C53D6E: CI4Var
  loc_C53D70: CVarI4
  loc_C53D74: PopAdLdVar
  loc_C53D75: LitVarI4
  loc_C53D7D: PopAdLdVar
  loc_C53D7E: FLdPr Me
  loc_C53D81: VCallAd Control_ID_ctacteFlex
  loc_C53D84: FStAdFunc var_154
  loc_C53D87: FLdPr var_154
  loc_C53D8A: LateIdCallLdVar
  loc_C53D94: PopAd
  loc_C53D96: FLdPr Me
  loc_C53D99: VCallAd Control_ID_ctacteFlex
  loc_C53D9C: FStAdFunc var_168
  loc_C53D9F: FLdPr var_168
  loc_C53DA2: LateIdLdVar var_178 DispID_10 0
  loc_C53DA9: CI4Var
  loc_C53DAB: CVarI4
  loc_C53DAF: PopAdLdVar
  loc_C53DB0: LitVarI4
  loc_C53DB8: PopAdLdVar
  loc_C53DB9: FLdPr Me
  loc_C53DBC: VCallAd Control_ID_ctacteFlex
  loc_C53DBF: FStAdFunc var_1BC
  loc_C53DC2: FLdPr var_1BC
  loc_C53DC5: LateIdCallLdVar
  loc_C53DCF: CStrVarTmp
  loc_C53DD0: CVarStr var_1DC
  loc_C53DD3: FLdRfVar var_1EC
  loc_C53DD6: ImpAdCallFPR4  = Trim()
  loc_C53DDB: LitI4 4
  loc_C53DE0: FLdRfVar var_1EC
  loc_C53DE3: FLdRfVar var_1FC
  loc_C53DE6: ImpAdCallFPR4  = Right(, )
  loc_C53DEB: FLdPr Me
  loc_C53DEE: VCallAd Control_ID_ctacteFlex
  loc_C53DF1: FStAdFunc var_200
  loc_C53DF4: FLdPr var_200
  loc_C53DF7: LateIdLdVar var_210 DispID_10 0
  loc_C53DFE: CI4Var
  loc_C53E00: CVarI4
  loc_C53E04: PopAdLdVar
  loc_C53E05: LitVarI4
  loc_C53E0D: PopAdLdVar
  loc_C53E0E: FLdPr Me
  loc_C53E11: VCallAd Control_ID_ctacteFlex
  loc_C53E14: FStAdFunc var_254
  loc_C53E17: FLdPr var_254
  loc_C53E1A: LateIdCallLdVar
  loc_C53E24: PopAd
  loc_C53E26: LitI4 1
  loc_C53E2B: FLdPr Me
  loc_C53E2E: VCallAd Control_ID_ctacteFlex
  loc_C53E31: FStAdFunc var_268
  loc_C53E34: FLdPr var_268
  loc_C53E37: LateIdLdVar var_278 DispID_10 0
  loc_C53E3E: CI4Var
  loc_C53E40: CVarI4
  loc_C53E44: PopAdLdVar
  loc_C53E45: LitVarI4
  loc_C53E4D: PopAdLdVar
  loc_C53E4E: FLdPr Me
  loc_C53E51: VCallAd Control_ID_ctacteFlex
  loc_C53E54: FStAdFunc var_2BC
  loc_C53E57: FLdPr var_2BC
  loc_C53E5A: LateIdCallLdVar
  loc_C53E64: CStrVarTmp
  loc_C53E65: FStStrNoPop var_E0
  loc_C53E68: LitStr "/"
  loc_C53E6B: LitI4 0
  loc_C53E70: FnInStr4
  loc_C53E72: LitI4 1
  loc_C53E77: SubI4
  loc_C53E78: CVarI4
  loc_C53E7C: LitI4 1
  loc_C53E81: FLdRfVar var_264
  loc_C53E84: CStrVarTmp
  loc_C53E85: CVarStr var_2DC
  loc_C53E88: FLdRfVar var_30C
  loc_C53E8B: ImpAdCallFPR4  = Mid(, , )
  loc_C53E90: FLdPr Me
  loc_C53E93: VCallAd Control_ID_ctacteFlex
  loc_C53E96: FStAdFunc var_310
  loc_C53E99: FLdPr var_310
  loc_C53E9C: LateIdLdVar var_320 DispID_10 0
  loc_C53EA3: CI4Var
  loc_C53EA5: CVarI4
  loc_C53EA9: PopAdLdVar
  loc_C53EAA: LitVarI4
  loc_C53EB2: PopAdLdVar
  loc_C53EB3: FLdPr Me
  loc_C53EB6: VCallAd Control_ID_ctacteFlex
  loc_C53EB9: FStAdFunc var_364
  loc_C53EBC: FLdPr var_364
  loc_C53EBF: LateIdCallLdVar
  loc_C53EC9: PopAd
  loc_C53ECB: FLdPr Me
  loc_C53ECE: VCallAd Control_ID_ctacteFlex
  loc_C53ED1: FStAdFunc var_378
  loc_C53ED4: FLdPr var_378
  loc_C53ED7: LateIdLdVar var_388 DispID_10 0
  loc_C53EDE: CI4Var
  loc_C53EE0: CVarI4
  loc_C53EE4: PopAdLdVar
  loc_C53EE5: LitVarI4
  loc_C53EED: PopAdLdVar
  loc_C53EEE: FLdPr Me
  loc_C53EF1: VCallAd Control_ID_ctacteFlex
  loc_C53EF4: FStAdFunc var_3CC
  loc_C53EF7: FLdPr var_3CC
  loc_C53EFA: LateIdCallLdVar
  loc_C53F04: PopAd
  loc_C53F06: LitStr "tmp_ctacteboleto"
  loc_C53F09: LitStr "Si"
  loc_C53F0C: FLdRfVar var_3DC
  loc_C53F0F: CStrVarTmp
  loc_C53F10: FStStrNoPop var_3EC
  loc_C53F13: CI2Str
  loc_C53F15: FLdRfVar var_374
  loc_C53F18: CStrVarTmp
  loc_C53F19: FStStrNoPop var_3E8
  loc_C53F1C: CI4Str
  loc_C53F1D: FLdRfVar var_30C
  loc_C53F20: CI2Var
  loc_C53F21: FLdRfVar var_1FC
  loc_C53F24: CI2Var
  loc_C53F25: FLdRfVar var_164
  loc_C53F28: CStrVarTmp
  loc_C53F29: FStStrNoPop var_3E4
  loc_C53F2C: FLdRfVar var_11C
  loc_C53F2F: CStrVarTmp
  loc_C53F30: FStStrNoPop var_3E0
  loc_C53F33: CUI1Str
  loc_C53F35: FLdPr Me
  loc_C53F38: MemLdRfVar from_stack_1.global_68
  loc_C53F3B: NewIfNullPr clsctacte
  loc_C53F3E: Call clsctacte.ActualizaSeleccion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C53F43: FFreeStr var_E0 = "": var_3E0 = "": var_3E4 = "": var_3E8 = ""
  loc_C53F50: FFreeAd var_88 = "": var_10C = "": var_120 = "": var_154 = "": var_168 = "": var_1BC = "": var_200 = "": var_254 = "": var_268 = "": var_2BC = "": var_310 = "": var_364 = "": var_378 = ""
  loc_C53F6F: FFreeVar var_98 = "": var_11C = "": var_130 = "": var_164 = "": var_178 = "": var_1CC = "": var_1DC = "": var_1EC = "": var_210 = "": var_264 = "": var_278 = "": var_2CC = "": var_2DC = "": var_2FC = "": var_320 = "": var_374 = "": var_388 = "": var_3DC = "": var_1FC = ""
  loc_C53F9A: FLdPr Me
  loc_C53F9D: MemLdI2 global_98
  loc_C53FA0: LitI2_Byte &HB
  loc_C53FA2: EqI2
  loc_C53FA3: BranchF loc_C54024
  loc_C53FA6: FLdPr Me
  loc_C53FA9: VCallAd Control_ID_ctacteFlex
  loc_C53FAC: FStAdFunc var_88
  loc_C53FAF: FLdPr var_88
  loc_C53FB2: LateIdLdVar var_98 DispID_10 0
  loc_C53FB9: CI4Var
  loc_C53FBB: CVarI4
  loc_C53FBF: PopAdLdVar
  loc_C53FC0: FLdPr Me
  loc_C53FC3: MemLdI2 global_98
  loc_C53FC6: CI4UI1
  loc_C53FC7: CVarI4
  loc_C53FCB: PopAdLdVar
  loc_C53FCC: FLdPr Me
  loc_C53FCF: VCallAd Control_ID_ctacteFlex
  loc_C53FD2: FStAdFunc var_10C
  loc_C53FD5: FLdPr var_10C
  loc_C53FD8: LateIdCallLdVar
  loc_C53FE2: PopAd
  loc_C53FE4: LitI4 2
  loc_C53FE9: FLdPr Me
  loc_C53FEC: MemLdFPR8 global_108
  loc_C53FEF: FLdRfVar var_11C
  loc_C53FF2: CStrVarTmp
  loc_C53FF3: FStStrNoPop var_E0
  loc_C53FF6: CR8Str
  loc_C53FF8: AddR8
  loc_C53FF9: CVarR8
  loc_C53FFD: FLdRfVar var_164
  loc_C54000: ImpAdCallFPR4  = Round(, )
  loc_C54005: FLdRfVar var_164
  loc_C54008: CR4Var
  loc_C54009: FLdPr Me
  loc_C5400C: MemStFPR8 global_108
  loc_C5400F: FFree1Str var_E0
  loc_C54012: FFreeAd var_88 = ""
  loc_C54019: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54024: FLdPr Me
  loc_C54027: MemLdI2 global_98
  loc_C5402A: LitI2_Byte &HC
  loc_C5402C: EqI2
  loc_C5402D: BranchF loc_C54106
  loc_C54030: FLdPr Me
  loc_C54033: VCallAd Control_ID_ctacteFlex
  loc_C54036: FStAdFunc var_88
  loc_C54039: FLdPr var_88
  loc_C5403C: LateIdLdVar var_98 DispID_10 0
  loc_C54043: CI4Var
  loc_C54045: CVarI4
  loc_C54049: PopAdLdVar
  loc_C5404A: FLdPr Me
  loc_C5404D: MemLdI2 global_98
  loc_C54050: CI4UI1
  loc_C54051: CVarI4
  loc_C54055: PopAdLdVar
  loc_C54056: FLdPr Me
  loc_C54059: VCallAd Control_ID_ctacteFlex
  loc_C5405C: FStAdFunc var_10C
  loc_C5405F: FLdPr var_10C
  loc_C54062: LateIdCallLdVar
  loc_C5406C: CStrVarTmp
  loc_C5406D: CVarStr var_130
  loc_C54070: ImpAdCallI2 IsNumeric()
  loc_C54075: FFreeAd var_88 = ""
  loc_C5407C: FFreeVar var_98 = "": var_11C = ""
  loc_C54085: BranchF loc_C54106
  loc_C54088: FLdPr Me
  loc_C5408B: VCallAd Control_ID_ctacteFlex
  loc_C5408E: FStAdFunc var_88
  loc_C54091: FLdPr var_88
  loc_C54094: LateIdLdVar var_98 DispID_10 0
  loc_C5409B: CI4Var
  loc_C5409D: CVarI4
  loc_C540A1: PopAdLdVar
  loc_C540A2: FLdPr Me
  loc_C540A5: MemLdI2 global_98
  loc_C540A8: CI4UI1
  loc_C540A9: CVarI4
  loc_C540AD: PopAdLdVar
  loc_C540AE: FLdPr Me
  loc_C540B1: VCallAd Control_ID_ctacteFlex
  loc_C540B4: FStAdFunc var_10C
  loc_C540B7: FLdPr var_10C
  loc_C540BA: LateIdCallLdVar
  loc_C540C4: PopAd
  loc_C540C6: LitI4 2
  loc_C540CB: FLdPr Me
  loc_C540CE: MemLdFPR8 global_116
  loc_C540D1: FLdRfVar var_11C
  loc_C540D4: CStrVarTmp
  loc_C540D5: FStStrNoPop var_E0
  loc_C540D8: CR8Str
  loc_C540DA: AddR8
  loc_C540DB: CVarR8
  loc_C540DF: FLdRfVar var_164
  loc_C540E2: ImpAdCallFPR4  = Round(, )
  loc_C540E7: FLdRfVar var_164
  loc_C540EA: CR4Var
  loc_C540EB: FLdPr Me
  loc_C540EE: MemStFPR8 global_116
  loc_C540F1: FFree1Str var_E0
  loc_C540F4: FFreeAd var_88 = ""
  loc_C540FB: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C54106: FLdPr Me
  loc_C54109: MemLdI2 global_98
  loc_C5410C: LitI2_Byte &HD
  loc_C5410E: EqI2
  loc_C5410F: BranchF loc_C54177
  loc_C54112: FLdPr Me
  loc_C54115: VCallAd Control_ID_ctacteFlex
  loc_C54118: FStAdFunc var_88
  loc_C5411B: FLdPr var_88
  loc_C5411E: LateIdLdVar var_98 DispID_10 0
  loc_C54125: CI4Var
  loc_C54127: CVarI4
  loc_C5412B: PopAdLdVar
  loc_C5412C: FLdPr Me
  loc_C5412F: MemLdI2 global_98
  loc_C54132: CI4UI1
  loc_C54133: CVarI4
  loc_C54137: PopAdLdVar
  loc_C54138: FLdPr Me
  loc_C5413B: VCallAd Control_ID_ctacteFlex
  loc_C5413E: FStAdFunc var_10C
  loc_C54141: FLdPr var_10C
  loc_C54144: LateIdCallLdVar
  loc_C5414E: PopAd
  loc_C54150: FLdPr Me
  loc_C54153: MemLdFPR8 global_100
  loc_C54156: FLdRfVar var_11C
  loc_C54159: CStrVarTmp
  loc_C5415A: FStStrNoPop var_E0
  loc_C5415D: CR8Str
  loc_C5415F: AddR8
  loc_C54160: FLdPr Me
  loc_C54163: MemStFPR8 global_100
  loc_C54166: FFree1Str var_E0
  loc_C54169: FFreeAd var_88 = ""
  loc_C54170: FFreeVar var_98 = ""
  loc_C54177: FLdPr Me
  loc_C5417A: MemLdRfVar from_stack_1.global_98
  loc_C5417D: NextI2 var_E4, loc_C53802
  loc_C54182: FLdPr Me
  loc_C54185: MemLdRfVar from_stack_1.global_96
  loc_C54188: NextI2 var_9C, loc_C53770
  loc_C5418D: FLdRfVar var_E6
  loc_C54190: FLdPr Me
  loc_C54193: VCallAd Control_ID_SeleTodoChk
  loc_C54196: FStAdFunc var_88
  loc_C54199: FLdPr var_88
  loc_C5419C:  = Me.Value
  loc_C541A1: FLdI2 var_E6
  loc_C541A4: LitI2_Byte 0
  loc_C541A6: EqI2
  loc_C541A7: FFree1Ad var_88
  loc_C541AA: BranchF loc_C541C8
  loc_C541AD: LitI2_Byte 0
  loc_C541AF: CR8I2
  loc_C541B0: FLdPr Me
  loc_C541B3: MemStFPR8 global_116
  loc_C541B6: LitI2_Byte 0
  loc_C541B8: CR8I2
  loc_C541B9: FLdPr Me
  loc_C541BC: MemStFPR8 global_108
  loc_C541BF: LitI2_Byte 0
  loc_C541C1: CR8I2
  loc_C541C2: FLdPr Me
  loc_C541C5: MemStFPR8 global_124
  loc_C541C8: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 AND SeleCtct = 'Si'"
  loc_C541CB: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_C541CE: ConcatStr
  loc_C541CF: FStStrNoPop var_E0
  loc_C541D2: FLdPr Me
  loc_C541D5: MemLdRfVar from_stack_1.global_68
  loc_C541D8: NewIfNullPr clsctacte
  loc_C541DB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C541E0: FFree1Str var_E0
  loc_C541E3: FLdRfVar var_3F0
  loc_C541E6: FLdPr Me
  loc_C541E9: MemLdRfVar from_stack_1.global_68
  loc_C541EC: NewIfNullPr clsctacte
  loc_C541EF: from_stack_1 = clsctacte.RecordCount
  loc_C541F4: ILdRf var_3F0
  loc_C541F7: LitI4 0
  loc_C541FC: GtI4
  loc_C541FD: BranchF loc_C54286
  loc_C54200: FLdRfVar var_E6
  loc_C54203: FLdPr Me
  loc_C54206: MemLdRfVar from_stack_1.global_68
  loc_C54209: NewIfNullPr clsctacte
  loc_C5420C: from_stack_1 = clsctacte.EOF
  loc_C54211: FLdI2 var_E6
  loc_C54214: NotI4
  loc_C54215: BranchF loc_C54286
  loc_C54218: FLdRfVar var_3F0
  loc_C5421B: FLdPr Me
  loc_C5421E: MemLdRfVar from_stack_1.global_68
  loc_C54221: NewIfNullPr clsctacte
  loc_C54224: from_stack_1 = clsctacte.NumeApre
  loc_C54229: FLdRfVar var_3F8
  loc_C5422C: FLdPr Me
  loc_C5422F: MemLdRfVar from_stack_1.global_68
  loc_C54232: NewIfNullPr clsctacte
  loc_C54235: from_stack_1 = clsctacte.SaldCtct
  loc_C5423A: FLdRfVar var_400
  loc_C5423D: FLdPr Me
  loc_C54240: MemLdRfVar from_stack_1.global_68
  loc_C54243: NewIfNullPr clsctacte
  loc_C54246: from_stack_1 = clsctacte.RecaCtct
  loc_C5424B: FLdRfVar var_408
  loc_C5424E: FLdR8 var_400
  loc_C54251: FLdR8 var_3F8
  loc_C54254: ILdRf var_3F0
  loc_C54257: FLdPr Me
  loc_C5425A: MemLdRfVar from_stack_1.global_80
  loc_C5425D: NewIfNullPr clsapremio
  loc_C54260: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C54265: FLdPr Me
  loc_C54268: MemLdFPR8 global_124
  loc_C5426B: FLdFPR8 var_408
  loc_C5426E: AddR8
  loc_C5426F: FLdPr Me
  loc_C54272: MemStFPR8 global_124
  loc_C54275: FLdPr Me
  loc_C54278: MemLdRfVar from_stack_1.global_68
  loc_C5427B: NewIfNullPr clsctacte
  loc_C5427E: Call clsctacte.MoveSiguiente()
  loc_C54283: Branch loc_C54200
  loc_C54286: FLdPr Me
  loc_C54289: MemLdFPR8 global_100
  loc_C5428C: FLdPr Me
  loc_C5428F: MemLdFPR8 global_124
  loc_C54292: AddR8
  loc_C54293: FLdPr Me
  loc_C54296: MemStFPR8 global_100
  loc_C54299: LitI4 1
  loc_C5429E: LitI4 1
  loc_C542A3: LitVarStr var_BC, "###,###,##0.00"
  loc_C542A8: FStVarCopyObj var_98
  loc_C542AB: FLdRfVar var_98
  loc_C542AE: FLdPr Me
  loc_C542B1: MemLdRfVar from_stack_1.global_100
  loc_C542B4: CVarRef
  loc_C542B9: FLdRfVar var_11C
  loc_C542BC: ImpAdCallFPR4  = Format(, )
  loc_C542C1: FLdRfVar var_11C
  loc_C542C4: CStrVarVal var_E0
  loc_C542C8: FLdPr Me
  loc_C542CB: VCallAd Control_ID_txtTotaSele
  loc_C542CE: FStAdFunc var_88
  loc_C542D1: FLdPr var_88
  loc_C542D4: Me.Text = from_stack_1
  loc_C542D9: FFree1Str var_E0
  loc_C542DC: FFree1Ad var_88
  loc_C542DF: FFreeVar var_98 = ""
  loc_C542E6: LitI4 1
  loc_C542EB: LitI4 1
  loc_C542F0: LitVarStr var_BC, "###,###,##0.00"
  loc_C542F5: FStVarCopyObj var_98
  loc_C542F8: FLdRfVar var_98
  loc_C542FB: FLdPr Me
  loc_C542FE: MemLdRfVar from_stack_1.global_108
  loc_C54301: CVarRef
  loc_C54306: FLdRfVar var_11C
  loc_C54309: ImpAdCallFPR4  = Format(, )
  loc_C5430E: FLdRfVar var_11C
  loc_C54311: CStrVarVal var_E0
  loc_C54315: FLdPr Me
  loc_C54318: VCallAd Control_ID_DerechoTxt
  loc_C5431B: FStAdFunc var_88
  loc_C5431E: FLdPr var_88
  loc_C54321: Me.Text = from_stack_1
  loc_C54326: FFree1Str var_E0
  loc_C54329: FFree1Ad var_88
  loc_C5432C: FFreeVar var_98 = ""
  loc_C54333: LitI4 1
  loc_C54338: LitI4 1
  loc_C5433D: LitVarStr var_BC, "###,###,##0.00"
  loc_C54342: FStVarCopyObj var_98
  loc_C54345: FLdRfVar var_98
  loc_C54348: FLdPr Me
  loc_C5434B: MemLdRfVar from_stack_1.global_116
  loc_C5434E: CVarRef
  loc_C54353: FLdRfVar var_11C
  loc_C54356: ImpAdCallFPR4  = Format(, )
  loc_C5435B: FLdRfVar var_11C
  loc_C5435E: CStrVarVal var_E0
  loc_C54362: FLdPr Me
  loc_C54365: VCallAd Control_ID_RecargoTxt
  loc_C54368: FStAdFunc var_88
  loc_C5436B: FLdPr var_88
  loc_C5436E: Me.Text = from_stack_1
  loc_C54373: FFree1Str var_E0
  loc_C54376: FFree1Ad var_88
  loc_C54379: FFreeVar var_98 = ""
  loc_C54380: LitI4 1
  loc_C54385: LitI4 1
  loc_C5438A: LitVarStr var_BC, "###,###,##0.00"
  loc_C5438F: FStVarCopyObj var_98
  loc_C54392: FLdRfVar var_98
  loc_C54395: FLdPr Me
  loc_C54398: MemLdRfVar from_stack_1.global_124
  loc_C5439B: CVarRef
  loc_C543A0: FLdRfVar var_11C
  loc_C543A3: ImpAdCallFPR4  = Format(, )
  loc_C543A8: FLdRfVar var_11C
  loc_C543AB: CStrVarVal var_E0
  loc_C543AF: FLdPr Me
  loc_C543B2: VCallAd Control_ID_ApremioTxt
  loc_C543B5: FStAdFunc var_88
  loc_C543B8: FLdPr var_88
  loc_C543BB: Me.Text = from_stack_1
  loc_C543C0: FFree1Str var_E0
  loc_C543C3: FFree1Ad var_88
  loc_C543C6: FFreeVar var_98 = ""
  loc_C543CD: LitI4 1
  loc_C543D2: LitI4 1
  loc_C543D7: LitVarStr var_BC, "###,###,##0.00"
  loc_C543DC: FStVarCopyObj var_11C
  loc_C543DF: FLdRfVar var_11C
  loc_C543E2: LitVarStr var_AC, "0"
  loc_C543E7: FStVarCopyObj var_98
  loc_C543EA: FLdRfVar var_98
  loc_C543ED: FLdRfVar var_130
  loc_C543F0: ImpAdCallFPR4  = Format(, )
  loc_C543F5: FLdRfVar var_130
  loc_C543F8: CStrVarVal var_E0
  loc_C543FC: FLdPr Me
  loc_C543FF: VCallAd Control_ID_DescCapiTxt
  loc_C54402: FStAdFunc var_88
  loc_C54405: FLdPr var_88
  loc_C54408: Me.Text = from_stack_1
  loc_C5440D: FFree1Str var_E0
  loc_C54410: FFree1Ad var_88
  loc_C54413: FFreeVar var_98 = "": var_11C = ""
  loc_C5441C: LitI4 1
  loc_C54421: LitI4 1
  loc_C54426: LitVarStr var_BC, "###,###,##0.00"
  loc_C5442B: FStVarCopyObj var_11C
  loc_C5442E: FLdRfVar var_11C
  loc_C54431: LitVarStr var_AC, "0"
  loc_C54436: FStVarCopyObj var_98
  loc_C54439: FLdRfVar var_98
  loc_C5443C: FLdRfVar var_130
  loc_C5443F: ImpAdCallFPR4  = Format(, )
  loc_C54444: FLdRfVar var_130
  loc_C54447: CStrVarVal var_E0
  loc_C5444B: FLdPr Me
  loc_C5444E: VCallAd Control_ID_DescRecaTxt
  loc_C54451: FStAdFunc var_88
  loc_C54454: FLdPr var_88
  loc_C54457: Me.Text = from_stack_1
  loc_C5445C: FFree1Str var_E0
  loc_C5445F: FFree1Ad var_88
  loc_C54462: FFreeVar var_98 = "": var_11C = ""
  loc_C5446B: LitI4 1
  loc_C54470: LitI4 1
  loc_C54475: LitVarStr var_BC, "###,###,##0.00"
  loc_C5447A: FStVarCopyObj var_11C
  loc_C5447D: FLdRfVar var_11C
  loc_C54480: LitVarStr var_AC, "0"
  loc_C54485: FStVarCopyObj var_98
  loc_C54488: FLdRfVar var_98
  loc_C5448B: FLdRfVar var_130
  loc_C5448E: ImpAdCallFPR4  = Format(, )
  loc_C54493: FLdRfVar var_130
  loc_C54496: CStrVarVal var_E0
  loc_C5449A: FLdPr Me
  loc_C5449D: VCallAd Control_ID_InteresTxt
  loc_C544A0: FStAdFunc var_88
  loc_C544A3: FLdPr var_88
  loc_C544A6: Me.Text = from_stack_1
  loc_C544AB: FFree1Str var_E0
  loc_C544AE: FFree1Ad var_88
  loc_C544B1: FFreeVar var_98 = "": var_11C = ""
  loc_C544BA: LitI4 2
  loc_C544BF: FLdPr Me
  loc_C544C2: MemLdFPR8 global_108
  loc_C544C5: FLdPr Me
  loc_C544C8: MemLdFPR8 global_116
  loc_C544CB: AddR8
  loc_C544CC: FLdPr Me
  loc_C544CF: MemLdFPR8 global_124
  loc_C544D2: AddR8
  loc_C544D3: FLdPr Me
  loc_C544D6: MemLdFPR8 global_132
  loc_C544D9: SubR4
  loc_C544DA: CVarR8
  loc_C544DE: FLdRfVar var_11C
  loc_C544E1: ImpAdCallFPR4  = Round(, )
  loc_C544E6: LitI4 1
  loc_C544EB: LitI4 1
  loc_C544F0: LitVarStr var_BC, "###,###,##0.00"
  loc_C544F5: FStVarCopyObj var_130
  loc_C544F8: FLdRfVar var_130
  loc_C544FB: FLdRfVar var_11C
  loc_C544FE: FLdRfVar var_164
  loc_C54501: ImpAdCallFPR4  = Format(, )
  loc_C54506: FLdRfVar var_164
  loc_C54509: CStrVarVal var_E0
  loc_C5450D: FLdPr Me
  loc_C54510: VCallAd Control_ID_TotalTxt
  loc_C54513: FStAdFunc var_88
  loc_C54516: FLdPr var_88
  loc_C54519: Me.Text = from_stack_1
  loc_C5451E: FFree1Str var_E0
  loc_C54521: FFree1Ad var_88
  loc_C54524: FFreeVar var_98 = "": var_11C = "": var_130 = ""
  loc_C5452F: ExitProcHresult
End Function

Private Function Proc_187_56_9FEEB8() '9FEEB8
  'Data Table: 52F1AC
  loc_9FEE88: LitStr vbNullString
  loc_9FEE8B: FLdPr Me
  loc_9FEE8E: VCallAd Control_ID_CucuPersFirmaTxt
  loc_9FEE91: FStAdFunc var_88
  loc_9FEE94: FLdPr var_88
  loc_9FEE97: Me.Text = from_stack_1
  loc_9FEE9C: FFree1Ad var_88
  loc_9FEE9F: LitStr vbNullString
  loc_9FEEA2: FLdPr Me
  loc_9FEEA5: VCallAd Control_ID_DetaFirmTxt
  loc_9FEEA8: FStAdFunc var_88
  loc_9FEEAB: FLdPr var_88
  loc_9FEEAE: Me.Text = from_stack_1
  loc_9FEEB3: FFree1Ad var_88
  loc_9FEEB6: ExitProcHresult
End Function
