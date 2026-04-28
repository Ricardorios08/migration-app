VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmRegistrodeCementerioABM
  Caption = "Registro de Cementerio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 168
  ClientTop = 552
  ClientWidth = 15072
  ClientHeight = 10368
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 0
    Top = 840
    Width = 4575
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 75
    Top = 1440
    Width = 14700
    Height = 2745
    TabIndex = 0
    OleObjectBlob = "frmRegistrodeCementerioABM.frx":0000
  End
  Begin TabDlg.SSTab sstDifunto
    Left = 120
    Top = 4200
    Width = 14700
    Height = 6120
    TabIndex = 3
    OleObjectBlob = "frmRegistrodeCementerioABM.frx":03BE
    Begin VB.TextBox ExreDediTxt
      ForeColor = &HFF0000&
      Left = -68640
      Top = 5040
      Width = 1980
      Height = 420
      TabIndex = 117
      MaxLength = 30
      DataField = "ExreDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox UbtrDediTxt
      ForeColor = &HFF0000&
      Left = -72960
      Top = 5040
      Width = 2100
      Height = 420
      TabIndex = 116
      MaxLength = 30
      DataField = "UbtrDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ExrvDediTxt
      ForeColor = &HFF0000&
      Left = -62640
      Top = 4560
      Width = 2100
      Height = 420
      TabIndex = 115
      MaxLength = 30
      DataField = "ExrvDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Frame Frame5
      Left = -74760
      Top = 2880
      Width = 12135
      Height = 1815
      TabIndex = 133
      Begin MSMask.MaskEdBox FedeSediMsk
        Left = 2640
        Top = 720
        Width = 1455
        Height = 345
        TabIndex = 134
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":0FEA
        DataField = "FedeSedi"
      End
      Begin MSMask.MaskEdBox FehaSediMsk
        Left = 2640
        Top = 1200
        Width = 1455
        Height = 345
        TabIndex = 135
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":109A
        DataField = "FehaSedi"
      End
      Begin MSMask.MaskEdBox CodiSeceMsk
        Left = 2640
        Top = 240
        Width = 615
        Height = 360
        TabIndex = 136
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":114A
        DataField = "CodiSece"
      End
      Begin VB.Label Label4
        Caption = "Servicios:"
        Left = 1560
        Top = 240
        Width = 1005
        Height = 300
        TabIndex = 140
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
        Caption = "Fecha Hasta:"
        Index = 26
        Left = 1125
        Top = 1245
        Width = 1440
        Height = 300
        TabIndex = 139
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
      Begin VB.Label Label5
        Caption = "Fecha Desde:"
        Left = 1065
        Top = 765
        Width = 1500
        Height = 300
        TabIndex = 138
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
      Begin VB.Label DetaSeceLbl
        Left = 3360
        Top = 240
        Width = 6015
        Height = 360
        TabIndex = 137
        BorderStyle = 1 'Fixed Single
        DataField = "DetaSece"
        BeginProperty Font
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
    Begin VB.TextBox BajaMotiTxt
      ForeColor = &HFF0000&
      Left = -72960
      Top = 5520
      Width = 8700
      Height = 360
      TabIndex = 119
      MaxLength = 50
      DataField = "BajaMoti"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Motivo por el cual da de baja al registro"
    End
    Begin VB.TextBox RegiDediTxt
      ForeColor = &HFF0000&
      Left = -65160
      Top = 3960
      Width = 4605
      Height = 420
      TabIndex = 111
      MaxLength = 30
      DataField = "RegiDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ExexDediTxt
      ForeColor = &HFF0000&
      Left = -69600
      Top = 4560
      Width = 1980
      Height = 420
      TabIndex = 113
      MaxLength = 30
      DataField = "ExexDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ExpeDediTxt
      ForeColor = &HFF0000&
      Left = -69135
      Top = 3960
      Width = 2100
      Height = 420
      TabIndex = 110
      MaxLength = 15
      DataField = "ExpeDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ActaDediTxt
      ForeColor = &HFF0000&
      Left = -72960
      Top = 3960
      Width = 2100
      Height = 420
      TabIndex = 109
      MaxLength = 10
      DataField = "ActaDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton FefaDediCmd
      Left = -71400
      Top = 3480
      Width = 450
      Height = 345
      TabIndex = 106
      Picture = "frmRegistrodeCementerioABM.frx":11D8
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox DetaDediTxt
      ForeColor = &HFF0000&
      Left = -72960
      Top = 3000
      Width = 5820
      Height = 420
      TabIndex = 104
      MaxLength = 40
      DataField = "DetaDedi"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Frame Frame4
      Left = -74850
      Top = 1800
      Width = 14415
      Height = 1590
      TabIndex = 55
      Begin VB.TextBox PorcRelaTxt
        ForeColor = &HFF0000&
        Left = 9840
        Top = 240
        Width = 1380
        Height = 345
        TabIndex = 67
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
        ToolTipText = "Metros de Frente"
        DataFormat = 80
        DataFormat = 38
      End
      Begin VB.CommandButton CreaPropietarioCmd
        Left = 3840
        Top = 240
        Width = 450
        Height = 360
        TabIndex = 66
        Picture = "frmRegistrodeCementerioABM.frx":171A
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.TextBox CucuPersTitularTxt
        ForeColor = &HFF0000&
        Left = 1395
        Top = 240
        Width = 1710
        Height = 345
        TabIndex = 64
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
      Begin VB.CommandButton BuscarTitularPersonaCmd
        Left = 3240
        Top = 240
        Width = 450
        Height = 360
        TabIndex = 65
        Picture = "frmRegistrodeCementerioABM.frx":1C4C
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.TextBox CodiPofiTxt
        ForeColor = &HFF0000&
        Left = 9720
        Top = 1200
        Width = 495
        Height = 360
        Enabled = 0   'False
        TabIndex = 63
        Alignment = 2 'Center
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
      Begin VB.TextBox CodiEsciTxt
        ForeColor = &HFF0000&
        Left = 4320
        Top = 1200
        Width = 495
        Height = 345
        Enabled = 0   'False
        TabIndex = 62
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
      Begin VB.TextBox CodiTidoTxt
        ForeColor = &HFF0000&
        Left = 1425
        Top = 720
        Width = 495
        Height = 360
        Enabled = 0   'False
        TabIndex = 61
        Alignment = 2 'Center
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
        Left = 12585
        Top = 735
        Width = 1695
        Height = 360
        Enabled = 0   'False
        TabIndex = 60
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
        Left = 7290
        Top = 735
        Width = 1815
        Height = 360
        Enabled = 0   'False
        TabIndex = 59
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
        Left = 10185
        Top = 735
        Width = 1695
        Height = 360
        Enabled = 0   'False
        TabIndex = 58
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
        Left = 13905
        Top = 240
        Width = 255
        Height = 360
        Enabled = 0   'False
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
      End
      Begin VB.TextBox NudoPersTxt
        ForeColor = &HFF0000&
        Left = 4545
        Top = 720
        Width = 1575
        Height = 360
        Enabled = 0   'False
        TabIndex = 56
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
      Begin MSMask.MaskEdBox FenaPersMsk
        Left = 1440
        Top = 1200
        Width = 1455
        Height = 345
        TabIndex = 68
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":1D46
        ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
      End
      Begin VB.Label Label25
        Caption = "Porcentaje:"
        Left = 8520
        Top = 240
        Width = 1200
        Height = 300
        TabIndex = 83
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
        Left = 4440
        Top = 240
        Width = 3855
        Height = 345
        TabIndex = 82
        WordWrap = -1  'True
        BeginProperty Font
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
        Caption = "CUIT/CUIL:"
        Left = 120
        Top = 240
        Width = 1230
        Height = 300
        TabIndex = 81
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
        Caption = "Posicion Fiscal:"
        Left = 8040
        Top = 1185
        Width = 1620
        Height = 300
        TabIndex = 80
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
        Caption = "Estado Civil:"
        Left = 2925
        Top = 1185
        Width = 1290
        Height = 300
        TabIndex = 79
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
        Caption = "Fecha Nac.:"
        Left = 120
        Top = 1215
        Width = 1275
        Height = 300
        TabIndex = 78
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
        Caption = "Nro. Doc.:"
        Left = 3480
        Top = 720
        Width = 1050
        Height = 300
        TabIndex = 77
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
        Caption = "Tipo Doc.:"
        Left = 270
        Top = 720
        Width = 1065
        Height = 300
        TabIndex = 76
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
        Caption = "Fax:"
        Left = 12000
        Top = 735
        Width = 450
        Height = 300
        TabIndex = 75
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
        Caption = "Teléfono:"
        Left = 6225
        Top = 720
        Width = 990
        Height = 300
        TabIndex = 74
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
        Caption = "Celular:"
        Left = 9300
        Top = 735
        Width = 795
        Height = 300
        TabIndex = 73
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
        Caption = "¿Persona Jurídica?:"
        Left = 11760
        Top = 240
        Width = 2085
        Height = 300
        TabIndex = 72
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
        Caption = "DetaPofiLbl"
        ForeColor = &HFF0000&
        Left = 10350
        Top = 1215
        Width = 3705
        Height = 345
        Enabled = 0   'False
        TabIndex = 71
        BeginProperty Font
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
        Caption = "DetaEsciLbl"
        ForeColor = &HFF0000&
        Left = 4920
        Top = 1185
        Width = 2415
        Height = 345
        Enabled = 0   'False
        TabIndex = 70
        BeginProperty Font
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
        Caption = "DetaTidoLbl"
        ForeColor = &HFF0000&
        Left = 2040
        Top = 705
        Width = 1410
        Height = 345
        Enabled = 0   'False
        TabIndex = 69
        BeginProperty Font
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
    Begin VB.Frame Frame3
      Caption = "DATOS DEL DOMICILIO POSTAL"
      Left = -74880
      Top = 3480
      Width = 14400
      Height = 2505
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
      Begin VB.TextBox CopoDpceTxt
        ForeColor = &HFF0000&
        Left = 10710
        Top = 1875
        Width = 2820
        Height = 420
        Enabled = 0   'False
        TabIndex = 46
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
      Begin VB.TextBox DeloDpceTxt
        ForeColor = &HFF0000&
        Left = 2340
        Top = 1875
        Width = 7080
        Height = 420
        Enabled = 0   'False
        TabIndex = 45
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
      Begin VB.TextBox CodiLocaTxt
        ForeColor = &HFF0000&
        Left = 1440
        Top = 1875
        Width = 810
        Height = 420
        Enabled = 0   'False
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
      Begin VB.TextBox UbicDpceTxt
        ForeColor = &HFF0000&
        Left = 1440
        Top = 1395
        Width = 12090
        Height = 420
        Enabled = 0   'False
        TabIndex = 43
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
      Begin VB.TextBox CasaDpceTxt
        ForeColor = &HFF0000&
        Left = 12315
        Top = 915
        Width = 1215
        Height = 360
        Enabled = 0   'False
        TabIndex = 42
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
      Begin VB.TextBox ManzDpceTxt
        ForeColor = &HFF0000&
        Left = 10305
        Top = 915
        Width = 1215
        Height = 360
        Enabled = 0   'False
        TabIndex = 41
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
      Begin VB.TextBox DebaDpceTxt
        ForeColor = &HFF0000&
        Left = 2340
        Top = 915
        Width = 7080
        Height = 420
        Enabled = 0   'False
        TabIndex = 40
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
      Begin VB.TextBox CodiBarrTxt
        ForeColor = &HFF0000&
        Left = 1440
        Top = 915
        Width = 810
        Height = 420
        Enabled = 0   'False
        TabIndex = 39
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
      Begin VB.TextBox NupuDpceTxt
        ForeColor = &HFF0000&
        Left = 11640
        Top = 435
        Width = 1215
        Height = 420
        Enabled = 0   'False
        TabIndex = 38
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
      Begin VB.TextBox DecaDpceTxt
        ForeColor = &HFF0000&
        Left = 2340
        Top = 435
        Width = 7080
        Height = 420
        Enabled = 0   'False
        TabIndex = 37
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
      Begin VB.TextBox CodiCallTxt
        ForeColor = &HFF0000&
        Left = 1440
        Top = 435
        Width = 810
        Height = 420
        Enabled = 0   'False
        TabIndex = 36
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
      Begin VB.Label Label21
        Caption = "C.P.:"
        Left = 10125
        Top = 1935
        Width = 495
        Height = 300
        TabIndex = 54
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
        Caption = "Localidad:"
        Left = 285
        Top = 1935
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
      Begin VB.Label Label19
        Caption = "Ubicacion:"
        Left = 255
        Top = 1395
        Width = 1110
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
        Caption = "Casa:"
        Left = 11610
        Top = 945
        Width = 615
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
      Begin VB.Label Label17
        Caption = "Manz:"
        Left = 9585
        Top = 945
        Width = 645
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
        Caption = "Barrio:"
        Left = 675
        Top = 945
        Width = 690
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
      Begin VB.Label Label15
        Caption = "Nro de Puerta:"
        Index = 0
        Left = 10080
        Top = 465
        Width = 1530
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
      Begin VB.Label Label10
        Caption = "Calle:"
        Left = 780
        Top = 465
        Width = 585
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
    Begin VB.CommandButton BuscarTitularCmd
      Left = 6615
      Top = 585
      Width = 450
      Height = 345
      TabIndex = 6
      Picture = "frmRegistrodeCementerioABM.frx":1DF6
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CreaPersonaCmd
      Caption = "Crea Persona"
      Left = 13200
      Top = 525
      Width = 1095
      Height = 540
      TabIndex = 34
      Picture = "frmRegistrodeCementerioABM.frx":1EF0
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox TipoFrinCmb
      Style = 2
      ForeColor = &HFF0000&
      Left = -64185
      Top = 3750
      Width = 2970
      Height = 420
      TabIndex = 33
      List = "frmRegistrodeCementerioABM.frx":2422
      ItemData = "frmRegistrodeCementerioABM.frx":2436
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Tipo de Frente"
    End
    Begin VB.Frame Frame1
      Left = 120
      Top = 1200
      Width = 14430
      Height = 4695
      TabIndex = 28
      Begin VB.CheckBox ParvDifuChk
        Caption = "Parvulo"
        Left = 10560
        Top = 1200
        Width = 1215
        Height = 375
        TabIndex = 16
        DataField = "ParvDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.ComboBox PlanDifuCbo
        Style = 2
        ForeColor = &HFF0000&
        Left = 7560
        Top = 1200
        Width = 1695
        Height = 420
        TabIndex = 15
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.TextBox ObseDifuTxt
        ForeColor = &HFF0000&
        Left = 2040
        Top = 3360
        Width = 11565
        Height = 720
        TabIndex = 25
        MultiLine = -1  'True
        ScrollBars = 2
        MaxLength = 500
        DataField = "ObseDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Observaciones del Inmueble"
      End
      Begin VB.TextBox MobaDifuTxt
        ForeColor = &HFF0000&
        Left = 2085
        Top = 4230
        Width = 8100
        Height = 420
        TabIndex = 26
        MaxLength = 30
        DataField = "BajaMotiDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Número de Expediente del Inmueble"
      End
      Begin VB.ComboBox PerpDifuCbo
        Style = 2
        ForeColor = &HFF0000&
        Left = 12120
        Top = 1680
        Width = 735
        Height = 420
        TabIndex = 19
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Frame Frame2
        Caption = "Concesión"
        Left = 1440
        Top = 2160
        Width = 9615
        Height = 1095
        TabIndex = 97
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Begin VB.CommandButton FeveDifuCmd
          Left = 8970
          Top = 360
          Width = 450
          Height = 345
          TabIndex = 24
          Picture = "frmRegistrodeCementerioABM.frx":2440
          Style = 1
          CausesValidation = 0   'False
        End
        Begin VB.TextBox AnioDifuTxt
          ForeColor = &HFF0000&
          Left = 5400
          Top = 360
          Width = 540
          Height = 360
          TabIndex = 22
          MaxLength = 2
          DataField = "AnioDifu"
          BeginProperty Font
            Name = "MS Sans Serif"
            Size = 12
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          ToolTipText = "Padrón Territorial"
        End
        Begin VB.TextBox MesDifuTxt
          ForeColor = &HFF0000&
          Left = 2520
          Top = 360
          Width = 540
          Height = 360
          TabIndex = 21
          MaxLength = 2
          DataField = "MesDifu"
          BeginProperty Font
            Name = "MS Sans Serif"
            Size = 12
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          ToolTipText = "Padrón Territorial"
        End
        Begin VB.TextBox PeriDifuTxt
          ForeColor = &HFF0000&
          Left = 720
          Top = 360
          Width = 900
          Height = 360
          TabIndex = 20
          MaxLength = 4
          DataField = "PeriDifu"
          BeginProperty Font
            Name = "MS Sans Serif"
            Size = 12
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          ToolTipText = "Padrón Territorial"
        End
        Begin MSMask.MaskEdBox FeveDifuMsk
          Left = 7440
          Top = 360
          Width = 1455
          Height = 345
          TabIndex = 23
          OleObjectBlob = "frmRegistrodeCementerioABM.frx":2982
          DataField = "FeveDifu"
        End
        Begin VB.Label Label1
          Caption = "Vencimiento:"
          Index = 17
          Left = 6045
          Top = 360
          Width = 1380
          Height = 300
          TabIndex = 101
          Alignment = 2 'Center
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
          Caption = "Mes:"
          Index = 16
          Left = 1905
          Top = 360
          Width = 510
          Height = 300
          TabIndex = 100
          Alignment = 2 'Center
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
          Caption = "Cantidad de Años:"
          Index = 15
          Left = 3360
          Top = 360
          Width = 1980
          Height = 300
          TabIndex = 99
          Alignment = 2 'Center
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
          Caption = "Año:"
          Index = 14
          Left = 120
          Top = 360
          Width = 510
          Height = 300
          TabIndex = 98
          Alignment = 2 'Center
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
      Begin VB.TextBox CompDifuTxt
        ForeColor = &HFF0000&
        Left = 4680
        Top = 1680
        Width = 2100
        Height = 360
        TabIndex = 18
        MaxLength = 15
        DataField = "CompDifu"
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
      Begin VB.TextBox CacaDifuTxt
        ForeColor = &HFF0000&
        Left = 2160
        Top = 1680
        Width = 540
        Height = 360
        TabIndex = 17
        MaxLength = 3
        DataField = "CacaDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Padrón Territorial"
      End
      Begin VB.TextBox SeccDifuTxt
        ForeColor = &HFF0000&
        Left = 2160
        Top = 1200
        Width = 660
        Height = 360
        TabIndex = 12
        MaxLength = 3
        DataField = "SeccDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Padrón Territorial"
      End
      Begin VB.TextBox FilaDifuTxt
        ForeColor = &HFF0000&
        Left = 3720
        Top = 1200
        Width = 540
        Height = 360
        TabIndex = 13
        MaxLength = 2
        DataField = "FilaDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Padrón Territorial"
      End
      Begin VB.TextBox NumeDifuTxt
        ForeColor = &HFF0000&
        Left = 5400
        Top = 1200
        Width = 780
        Height = 360
        TabIndex = 14
        MaxLength = 4
        DataField = "NumeDifu"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.CommandButton CodiCemeCmd
        Left = 6240
        Top = 240
        Width = 450
        Height = 345
        TabIndex = 9
        Picture = "frmRegistrodeCementerioABM.frx":2A32
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.TextBox CodiCemeTxt
        ForeColor = &HFF0000&
        Left = 5640
        Top = 240
        Width = 495
        Height = 360
        TabIndex = 8
        MaxLength = 2
        DataField = "CodiCeme"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.TextBox CodiTiseTxt
        ForeColor = &HFF0000&
        Left = 2160
        Top = 720
        Width = 540
        Height = 360
        TabIndex = 10
        MaxLength = 2
        DataField = "CodiTise"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        ToolTipText = "Padrón Territorial"
      End
      Begin VB.CommandButton CodiTiseCmd
        Left = 2760
        Top = 720
        Width = 450
        Height = 345
        TabIndex = 11
        Picture = "frmRegistrodeCementerioABM.frx":2B2C
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.TextBox CodiInmuTxt
        ForeColor = &HFF0000&
        Left = 2160
        Top = 240
        Width = 1380
        Height = 360
        TabIndex = 7
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
        ToolTipText = "Código del Inmueble"
      End
      Begin MSMask.MaskEdBox EjerDifuMsk
        Left = 13320
        Top = 2400
        Width = 735
        Height = 345
        TabIndex = 144
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":2C26
        DataField = "EjerDifu"
      End
      Begin MSMask.MaskEdBox BimeDifuMsk
        Left = 13320
        Top = 2880
        Width = 495
        Height = 345
        TabIndex = 145
        OleObjectBlob = "frmRegistrodeCementerioABM.frx":2CB6
        DataField = "BimeDifu"
      End
      Begin VB.Label Label9
        Caption = "Planta:"
        Left = 6720
        Top = 1200
        Width = 735
        Height = 300
        TabIndex = 155
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
        Caption = "Desde Trimestre:"
        Index = 29
        Left = 11400
        Top = 2880
        Width = 1830
        Height = 300
        TabIndex = 147
        Alignment = 2 'Center
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
        Caption = "Desde Periodo:"
        Index = 28
        Left = 11640
        Top = 2400
        Width = 1650
        Height = 300
        TabIndex = 146
        Alignment = 2 'Center
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
        Caption = "Fosa:"
        Left = 4680
        Top = 1200
        Width = 600
        Height = 300
        TabIndex = 143
        Alignment = 2 'Center
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
        Caption = "Fila:"
        Left = 3120
        Top = 1200
        Width = 450
        Height = 300
        TabIndex = 142
        Alignment = 2 'Center
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
        Caption = "Galeria:"
        Left = 1275
        Top = 1200
        Width = 840
        Height = 300
        TabIndex = 141
        Alignment = 2 'Center
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
        Caption = "Observaciones:"
        Index = 25
        Left = 360
        Top = 3360
        Width = 1650
        Height = 300
        TabIndex = 131
        Alignment = 2 'Center
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
        Caption = "Motivo de Baja:"
        Index = 42
        Left = 405
        Top = 4245
        Width = 1620
        Height = 300
        TabIndex = 128
        Alignment = 2 'Center
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
        Caption = "¿Perpetuidad?:"
        Left = 10440
        Top = 1680
        Width = 1620
        Height = 300
        TabIndex = 102
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
        Caption = "Comp/Expedien:"
        Index = 13
        Left = 2880
        Top = 1680
        Width = 1740
        Height = 300
        TabIndex = 96
        Alignment = 2 'Center
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
        Caption = "Cant. Feretros:"
        Index = 5
        Left = 480
        Top = 1680
        Width = 1590
        Height = 300
        TabIndex = 95
        Alignment = 2 'Center
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
      Begin VB.Label DetaCemeLbl
        Caption = "DetaCemeLbl"
        ForeColor = &HFF0000&
        Left = 6840
        Top = 240
        Width = 3975
        Height = 345
        TabIndex = 94
        WordWrap = -1  'True
        DataField = "DetaCeme"
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DetaTiseLbl
        Caption = "DetaTiseLbl"
        ForeColor = &HFF0000&
        Left = 3360
        Top = 720
        Width = 7095
        Height = 345
        TabIndex = 32
        WordWrap = -1  'True
        DataField = "DetaTise"
        BeginProperty Font
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
        Caption = "Tipo:"
        Index = 12
        Left = 1560
        Top = 780
        Width = 510
        Height = 300
        TabIndex = 31
        Alignment = 2 'Center
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
        Caption = "Cementerio:"
        Index = 8
        Left = 4320
        Top = 240
        Width = 1290
        Height = 300
        TabIndex = 30
        Alignment = 2 'Center
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
        Caption = "Cod. Inmueble:"
        Index = 2
        Left = 480
        Top = 240
        Width = 1620
        Height = 300
        TabIndex = 29
        Alignment = 2 'Center
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
    Begin VB.TextBox NucaFrinTxt
      ForeColor = &HFF0000&
      Left = -62280
      Top = 4290
      Width = 1065
      Height = 420
      TabIndex = 27
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
      ToolTipText = "Número de Calle del Frente"
    End
    Begin VB.TextBox CodiDifuTxt
      ForeColor = &HFF0000&
      Left = 1680
      Top = 600
      Width = 1500
      Height = 420
      TabIndex = 4
      MaxLength = 8
      DataField = "CodiDifu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Código del Comercio"
    End
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 4680
      Top = 600
      Width = 1860
      Height = 420
      TabIndex = 5
      MaxLength = 11
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
      ToolTipText = "C.U.I.T/C.U.I.L del Titular"
    End
    Begin MSDataGridLib.DataGrid dgdPersona
      Left = -74760
      Top = 360
      Width = 14250
      Height = 1380
      TabIndex = 84
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":2D42
    End
    Begin MSDataGridLib.DataGrid dgdDetaDifu
      Left = -74835
      Top = 600
      Width = 14370
      Height = 2100
      TabIndex = 103
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":3222
    End
    Begin MSMask.MaskEdBox FefaDediMsk
      Left = -72960
      Top = 3480
      Width = 1455
      Height = 360
      TabIndex = 105
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":363E
      DataField = "FefaDedi"
    End
    Begin MSMask.MaskEdBox AnioDediMsk
      Left = -69120
      Top = 3480
      Width = 735
      Height = 360
      TabIndex = 107
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":36EE
      DataField = "AnioDedi"
    End
    Begin MSMask.MaskEdBox MesDediMsk
      Left = -67200
      Top = 3480
      Width = 495
      Height = 360
      TabIndex = 108
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":3780
      DataField = "MesDedi"
    End
    Begin MSMask.MaskEdBox FeexDediMsk
      Left = -72960
      Top = 4560
      Width = 1455
      Height = 360
      TabIndex = 112
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":380E
      DataField = "FeexDedi"
    End
    Begin MSDataGridLib.DataGrid dgdServDifu
      Left = -74760
      Top = 600
      Width = 13980
      Height = 2010
      TabIndex = 132
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":38BE
    End
    Begin MSMask.MaskEdBox FetrDediMsk
      Left = -65640
      Top = 4560
      Width = 1455
      Height = 360
      TabIndex = 114
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":3D92
      DataField = "FetrDedi"
    End
    Begin MSMask.MaskEdBox FereDediMsk
      Left = -63840
      Top = 5040
      Width = 1455
      Height = 360
      TabIndex = 118
      OleObjectBlob = "frmRegistrodeCementerioABM.frx":3E42
      DataField = "FereDedi"
    End
    Begin VB.Label Label29
      Caption = "C.U.I.L.:"
      Left = 3780
      Top = 600
      Width = 870
      Height = 300
      TabIndex = 156
      Alignment = 2 'Center
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
      Caption = "Fecha de Reducción:"
      Index = 30
      Left = -66165
      Top = 5040
      Width = 2280
      Height = 300
      TabIndex = 154
      Alignment = 2 'Center
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
      Caption = "Exp. de Reducción:"
      Index = 27
      Left = -70770
      Top = 5040
      Width = 2070
      Height = 300
      TabIndex = 153
      Alignment = 2 'Center
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
      Caption = "Ubic. Traslado:"
      Index = 24
      Left = -74640
      Top = 5040
      Width = 1590
      Height = 300
      TabIndex = 152
      Alignment = 2 'Center
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
      Caption = "Exp. Renov.:"
      Index = 3
      Left = -64080
      Top = 4560
      Width = 1350
      Height = 300
      TabIndex = 151
      Alignment = 2 'Center
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
      Caption = "Fecha de Trasl.:"
      Index = 0
      Left = -67440
      Top = 4560
      Width = 1710
      Height = 300
      TabIndex = 150
      Alignment = 2 'Center
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
      Caption = "Fecha de Exhum:"
      Index = 23
      Left = -74880
      Top = 4560
      Width = 1860
      Height = 300
      TabIndex = 130
      Alignment = 2 'Center
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
      Caption = "Motivo de Baja:"
      Index = 22
      Left = -74760
      Top = 5535
      Width = 1620
      Height = 300
      TabIndex = 129
      Alignment = 2 'Center
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
      Caption = "Registro Civil:"
      Index = 19
      Left = -66600
      Top = 3960
      Width = 1440
      Height = 300
      TabIndex = 127
      Alignment = 2 'Center
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
      Caption = "Exp. de Exhum:"
      Index = 18
      Left = -71280
      Top = 4560
      Width = 1650
      Height = 300
      TabIndex = 126
      Alignment = 2 'Center
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
      Caption = "Expediente:"
      Index = 10
      Left = -70560
      Top = 3960
      Width = 1260
      Height = 300
      TabIndex = 125
      Alignment = 2 'Center
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
      Caption = "Acta:"
      Index = 9
      Left = -73590
      Top = 3960
      Width = 570
      Height = 300
      TabIndex = 124
      Alignment = 2 'Center
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
      Caption = "Mes:"
      Index = 7
      Left = -67860
      Top = 3480
      Width = 510
      Height = 300
      TabIndex = 123
      Alignment = 2 'Center
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
      Caption = "Años:"
      Index = 6
      Left = -69840
      Top = 3480
      Width = 630
      Height = 300
      TabIndex = 122
      Alignment = 2 'Center
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
      Caption = "Fallecido:"
      Index = 4
      Left = -74040
      Top = 3480
      Width = 1020
      Height = 300
      TabIndex = 121
      Alignment = 2 'Center
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
      Caption = "Difunto:"
      Index = 1
      Left = -73860
      Top = 3000
      Width = 840
      Height = 300
      TabIndex = 120
      Alignment = 2 'Center
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
    Begin VB.Label DetaApeNomLbl
      Caption = "DetaApeNomLbl"
      ForeColor = &HFF0000&
      Left = 7200
      Top = 585
      Width = 6015
      Height = 345
      TabIndex = 93
      WordWrap = -1  'True
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
    Begin VB.Label NumeFrinLbl
      Caption = "NumeFrinLbl"
      ForeColor = &HFF0000&
      Left = -69285
      Top = 3825
      Width = 1365
      Height = 300
      TabIndex = 92
      Alignment = 2 'Center
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
      Caption = "Metros Frente:"
      Index = 37
      Left = -74400
      Top = 4890
      Width = 1560
      Height = 300
      TabIndex = 91
      Alignment = 2 'Center
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
      Caption = "Nº Calle:"
      Index = 39
      Left = -63300
      Top = 4350
      Width = 900
      Height = 300
      TabIndex = 90
      Alignment = 2 'Center
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
      Caption = "Código Calle:"
      Index = 38
      Left = -74250
      Top = 4350
      Width = 1410
      Height = 300
      TabIndex = 89
      Alignment = 2 'Center
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
      Caption = "Tipo Frente:"
      Index = 36
      Left = -65595
      Top = 3825
      Width = 1290
      Height = 300
      TabIndex = 88
      Alignment = 2 'Center
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
      Caption = "Frente Nº:"
      Index = 35
      Left = -70515
      Top = 3825
      Width = 1080
      Height = 300
      TabIndex = 87
      Alignment = 2 'Center
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
      Caption = "Código Inmueble:"
      Index = 34
      Left = -74700
      Top = 3825
      Width = 1860
      Height = 300
      TabIndex = 86
      Alignment = 2 'Center
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
      Caption = "Cuenta:"
      Index = 11
      Left = 720
      Top = 585
      Width = 840
      Height = 300
      TabIndex = 85
      Alignment = 2 'Center
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
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4680
    Top = 840
    Width = 5775
    Height = 375
    TabIndex = 2
    OleObjectBlob = "frmRegistrodeCementerioABM.frx":3EF2
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmRegistrodeCementerioABM.frx":3F7A
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15072
    Height = 636
    TabIndex = 148
    OleObjectBlob = "frmRegistrodeCementerioABM.frx":BAF8
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 149
      TabStop = 0   'False
      Picture = "frmRegistrodeCementerioABM.frx":C054
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmRegistrodeCementerioABM"

Public DifuntoCLS As New Class


Private Sub ExrvDediTxt_GotFocus() '9BE9D0
  'Data Table: 537378
  loc_9BE9BC: FLdPr Me
  loc_9BE9BF: VCallAd Control_ID_ExrvDediTxt
  loc_9BE9C2: CVarAd
  loc_9BE9C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE9CB: FFree1Var var_94 = ""
  loc_9BE9CE: ExitProcHresult
End Sub

Private Sub ExrvDediTxt_Validate(Cancel As Boolean) 'AABEF0
  'Data Table: 537378
  loc_AABE2C: FLdRfVar var_8A
  loc_AABE2F: FLdPr Me
  loc_AABE32: VCallAd Control_ID_cmdCancelar
  loc_AABE35: FStAdFunc var_88
  loc_AABE38: FLdPr var_88
  loc_AABE3B:  = Me.Value
  loc_AABE40: FLdI2 var_8A
  loc_AABE43: NotI4
  loc_AABE44: FLdRfVar var_92
  loc_AABE47: FLdPr Me
  loc_AABE4A: VCallAd Control_ID_ExrvDediTxt
  loc_AABE4D: FStAdFunc var_90
  loc_AABE50: FLdPr var_90
  loc_AABE53:  = Me.Enabled
  loc_AABE58: FLdI2 var_92
  loc_AABE5B: AndI4
  loc_AABE5C: FLdRfVar var_9C
  loc_AABE5F: FLdPr Me
  loc_AABE62: VCallAd Control_ID_ExrvDediTxt
  loc_AABE65: FStAdFunc var_98
  loc_AABE68: FLdPr var_98
  loc_AABE6B:  = Me.Text
  loc_AABE70: ILdRf var_9C
  loc_AABE73: LitStr vbNullString
  loc_AABE76: NeStr
  loc_AABE78: AndI4
  loc_AABE79: FFree1Str var_9C
  loc_AABE7C: FFreeAd var_88 = "": var_90 = ""
  loc_AABE85: BranchF loc_AABEEC
  loc_AABE88: FLdRfVar var_9C
  loc_AABE8B: FLdPr Me
  loc_AABE8E: VCallAd Control_ID_ExrvDediTxt
  loc_AABE91: FStAdFunc var_88
  loc_AABE94: FLdPr var_88
  loc_AABE97:  = Me.Text
  loc_AABE9C: ILdRf var_9C
  loc_AABE9F: LitStr "ingrese el expediente de Renovación"
  loc_AABEA2: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AABEA7: FStStrNoPop var_A0
  loc_AABEAA: FLdPr Me
  loc_AABEAD: MemStStrCopy
  loc_AABEB1: FFreeStr var_9C = ""
  loc_AABEB8: FFree1Ad var_88
  loc_AABEBB: FLdPr Me
  loc_AABEBE: MemLdStr global_88
  loc_AABEC1: LitStr vbNullString
  loc_AABEC4: NeStr
  loc_AABEC6: BranchF loc_AABEEC
  loc_AABEC9: FLdPr Me
  loc_AABECC: MemLdStr global_88
  loc_AABECF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AABED4: FLdPr Me
  loc_AABED7: VCallAd Control_ID_ExrvDediTxt
  loc_AABEDA: CVarAd
  loc_AABEDE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AABEE3: FFree1Var var_B0 = ""
  loc_AABEE6: LitI2_Byte &HFF
  loc_AABEE8: IStI2 Cancel
  loc_AABEEB: ExitProcHresult
  loc_AABEEC: ExitProcHresult
End Sub

Private Sub FedeSediMsk_UnknownEvent_0 '9BDFB0
  'Data Table: 537378
  loc_9BDF9C: FLdPr Me
  loc_9BDF9F: VCallAd Control_ID_FedeSediMsk
  loc_9BDFA2: CVarAd
  loc_9BDFA6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDFAB: FFree1Var var_94 = ""
  loc_9BDFAE: ExitProcHresult
End Sub

Private Sub FedeSediMsk_UnknownEvent_8 'A90FE4
  'Data Table: 537378
  loc_A90F44: FLdRfVar var_8A
  loc_A90F47: FLdPr Me
  loc_A90F4A: VCallAd Control_ID_cmdCancelar
  loc_A90F4D: FStAdFunc var_88
  loc_A90F50: FLdPr var_88
  loc_A90F53:  = Me.Value
  loc_A90F58: FLdI2 var_8A
  loc_A90F5B: NotI4
  loc_A90F5C: FLdPr Me
  loc_A90F5F: VCallAd Control_ID_FedeSediMsk
  loc_A90F62: FStAdFunc var_90
  loc_A90F65: FLdPr var_90
  loc_A90F68: LateIdLdVar var_A0 DispID_13 -32767
  loc_A90F6F: CBoolVar
  loc_A90F71: AndI4
  loc_A90F72: FFreeAd var_88 = ""
  loc_A90F79: FFree1Var var_A0 = ""
  loc_A90F7C: BranchF loc_A90FE2
  loc_A90F7F: FLdPr Me
  loc_A90F82: VCallAd Control_ID_FedeSediMsk
  loc_A90F85: FStAdFunc var_88
  loc_A90F88: FLdPr var_88
  loc_A90F8B: LateIdLdVar var_A0 DispID_15 0
  loc_A90F92: CStrVarTmp
  loc_A90F93: FStStrNoPop var_A4
  loc_A90F96: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A90F9B: FStStrNoPop var_A8
  loc_A90F9E: FLdPr Me
  loc_A90FA1: MemStStrCopy
  loc_A90FA5: FFreeStr var_A4 = ""
  loc_A90FAC: FFree1Ad var_88
  loc_A90FAF: FFree1Var var_A0 = ""
  loc_A90FB2: FLdPr Me
  loc_A90FB5: MemLdStr global_88
  loc_A90FB8: LitStr vbNullString
  loc_A90FBB: NeStr
  loc_A90FBD: BranchF loc_A90FE2
  loc_A90FC0: FLdPr Me
  loc_A90FC3: MemLdStr global_88
  loc_A90FC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A90FCB: FLdPr Me
  loc_A90FCE: VCallAd Control_ID_FedeSediMsk
  loc_A90FD1: CVarAd
  loc_A90FD5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90FDA: FFree1Var var_A0 = ""
  loc_A90FDD: LitI2_Byte &HFF
  loc_A90FDF: IStI2 Cancel
  loc_A90FE2: ExitProcHresult
End Sub

Private Sub FedeSediMsk_KeyPress(KeyAscii As Integer) 'A25860
  'Data Table: 537378
  loc_A25818: ILdI2 KeyAscii
  loc_A2581B: CI4UI1
  loc_A2581C: LitI4 &H20
  loc_A25821: EqI4
  loc_A25822: BranchF loc_A2585F
  loc_A25825: LitVar_Missing var_A4
  loc_A25828: PopAdLdVar
  loc_A25829: LitVarI4
  loc_A25831: PopAdLdVar
  loc_A25832: ImpAdLdRf MemVar_D930A4
  loc_A25835: NewIfNullPr frmCalendario
  loc_A25838: frmCalendario.Show from_stack_1, from_stack_2
  loc_A2583D: ImpAdLdRf MemVar_D93028
  loc_A25840: CDargRef
  loc_A25844: FLdPr Me
  loc_A25847: VCallAd Control_ID_FedeSediMsk
  loc_A2584A: FStAdFunc var_A8
  loc_A2584D: FLdPr var_A8
  loc_A25850: LateIdSt
  loc_A25855: FFree1Ad var_A8
  loc_A25858: LitStr vbNullString
  loc_A2585B: ImpAdStStrCopy MemVar_D93028
  loc_A2585F: ExitProcHresult
End Sub

Private Sub FehaSediMsk_UnknownEvent_0 '9BDAE8
  'Data Table: 537378
  loc_9BDAD4: FLdPr Me
  loc_9BDAD7: VCallAd Control_ID_FehaSediMsk
  loc_9BDADA: CVarAd
  loc_9BDADE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDAE3: FFree1Var var_94 = ""
  loc_9BDAE6: ExitProcHresult
End Sub

Private Sub FehaSediMsk_UnknownEvent_8 'ACE1E8
  'Data Table: 537378
  loc_ACE0C8: FLdRfVar var_8A
  loc_ACE0CB: FLdPr Me
  loc_ACE0CE: VCallAd Control_ID_cmdCancelar
  loc_ACE0D1: FStAdFunc var_88
  loc_ACE0D4: FLdPr var_88
  loc_ACE0D7:  = Me.Value
  loc_ACE0DC: FLdI2 var_8A
  loc_ACE0DF: NotI4
  loc_ACE0E0: FLdPr Me
  loc_ACE0E3: VCallAd Control_ID_FehaSediMsk
  loc_ACE0E6: FStAdFunc var_90
  loc_ACE0E9: FLdPr var_90
  loc_ACE0EC: LateIdLdVar var_A0 DispID_13 -32767
  loc_ACE0F3: CBoolVar
  loc_ACE0F5: AndI4
  loc_ACE0F6: FFreeAd var_88 = ""
  loc_ACE0FD: FFree1Var var_A0 = ""
  loc_ACE100: BranchF loc_ACE1E4
  loc_ACE103: FLdPr Me
  loc_ACE106: VCallAd Control_ID_FehaSediMsk
  loc_ACE109: FStAdFunc var_88
  loc_ACE10C: FLdPr var_88
  loc_ACE10F: LateIdLdVar var_A0 DispID_15 0
  loc_ACE116: CStrVarTmp
  loc_ACE117: FStStrNoPop var_A4
  loc_ACE11A: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACE11F: FStStrNoPop var_A8
  loc_ACE122: FLdPr Me
  loc_ACE125: MemStStrCopy
  loc_ACE129: FFreeStr var_A4 = ""
  loc_ACE130: FFree1Ad var_88
  loc_ACE133: FFree1Var var_A0 = ""
  loc_ACE136: FLdPr Me
  loc_ACE139: MemLdStr global_88
  loc_ACE13C: LitStr vbNullString
  loc_ACE13F: NeStr
  loc_ACE141: BranchF loc_ACE167
  loc_ACE144: FLdPr Me
  loc_ACE147: MemLdStr global_88
  loc_ACE14A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE14F: FLdPr Me
  loc_ACE152: VCallAd Control_ID_FehaSediMsk
  loc_ACE155: CVarAd
  loc_ACE159: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACE15E: FFree1Var var_A0 = ""
  loc_ACE161: LitI2_Byte &HFF
  loc_ACE163: IStI2 KeyAscii
  loc_ACE166: ExitProcHresult
  loc_ACE167: FLdPr Me
  loc_ACE16A: VCallAd Control_ID_FedeSediMsk
  loc_ACE16D: FStAdFunc var_90
  loc_ACE170: FLdPr var_90
  loc_ACE173: LateIdLdVar var_B8 DispID_15 0
  loc_ACE17A: PopAd
  loc_ACE17C: FLdPr Me
  loc_ACE17F: VCallAd Control_ID_FehaSediMsk
  loc_ACE182: FStAdFunc var_88
  loc_ACE185: FLdPr var_88
  loc_ACE188: LateIdLdVar var_A0 DispID_15 0
  loc_ACE18F: CStrVarTmp
  loc_ACE190: FStStrNoPop var_A4
  loc_ACE193: CDateStr
  loc_ACE195: FLdRfVar var_B8
  loc_ACE198: CStrVarTmp
  loc_ACE199: FStStrNoPop var_A8
  loc_ACE19C: CDateStr
  loc_ACE19E: LtR8
  loc_ACE19F: FFreeStr var_A4 = ""
  loc_ACE1A6: FFreeAd var_88 = ""
  loc_ACE1AD: FFreeVar var_A0 = ""
  loc_ACE1B4: BranchF loc_ACE1E4
  loc_ACE1B7: LitStr "La FECHA HASTA no puede ser menor a la fecha desde"
  loc_ACE1BA: FLdPr Me
  loc_ACE1BD: MemStStrCopy
  loc_ACE1C1: FLdPr Me
  loc_ACE1C4: MemLdStr global_88
  loc_ACE1C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACE1CC: FLdPr Me
  loc_ACE1CF: VCallAd Control_ID_FehaSediMsk
  loc_ACE1D2: CVarAd
  loc_ACE1D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACE1DB: FFree1Var var_A0 = ""
  loc_ACE1DE: LitI2_Byte &HFF
  loc_ACE1E0: IStI2 KeyAscii
  loc_ACE1E3: ExitProcHresult
  loc_ACE1E4: ExitProcHresult
End Sub

Private Sub FehaSediMsk_KeyPress(KeyAscii As Integer) 'A24120
  'Data Table: 537378
  loc_A240D8: ILdI2 KeyAscii
  loc_A240DB: CI4UI1
  loc_A240DC: LitI4 &H20
  loc_A240E1: EqI4
  loc_A240E2: BranchF loc_A2411F
  loc_A240E5: LitVar_Missing var_A4
  loc_A240E8: PopAdLdVar
  loc_A240E9: LitVarI4
  loc_A240F1: PopAdLdVar
  loc_A240F2: ImpAdLdRf MemVar_D930A4
  loc_A240F5: NewIfNullPr frmCalendario
  loc_A240F8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A240FD: ImpAdLdRf MemVar_D93028
  loc_A24100: CDargRef
  loc_A24104: FLdPr Me
  loc_A24107: VCallAd Control_ID_FehaSediMsk
  loc_A2410A: FStAdFunc var_A8
  loc_A2410D: FLdPr var_A8
  loc_A24110: LateIdSt
  loc_A24115: FFree1Ad var_A8
  loc_A24118: LitStr vbNullString
  loc_A2411B: ImpAdStStrCopy MemVar_D93028
  loc_A2411F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9BBE80
  'Data Table: 537378
  loc_9BBE6C: FLdPr Me
  loc_9BBE6F: VCallAd Control_ID_FiltroMsk
  loc_9BBE72: CVarAd
  loc_9BBE76: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBE7B: FFree1Var var_94 = ""
  loc_9BBE7E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'ADD140
  'Data Table: 537378
  loc_ADCFEC: FLdRfVar var_8A
  loc_ADCFEF: FLdPr Me
  loc_ADCFF2: VCallAd Control_ID_FiltroCbo
  loc_ADCFF5: FStAdFunc var_88
  loc_ADCFF8: FLdPr var_88
  loc_ADCFFB:  = Me.ListIndex
  loc_ADD000: FLdI2 var_8A
  loc_ADD003: FStI2 var_8C
  loc_ADD006: FFree1Ad var_88
  loc_ADD009: FLdI2 var_8C
  loc_ADD00C: LitI2_Byte 0
  loc_ADD00E: EqI2
  loc_ADD00F: BranchF loc_ADD047
  loc_ADD012: LitStr "Numero de Cuenta que contiene. "
  loc_ADD015: FLdPr Me
  loc_ADD018: VCallAd Control_ID_FiltroMsk
  loc_ADD01B: FStAdFunc var_88
  loc_ADD01E: FLdPr var_88
  loc_ADD021: LateIdLdVar var_9C DispID_22 0
  loc_ADD028: CStrVarTmp
  loc_ADD029: FStStrNoPop var_A0
  loc_ADD02C: ConcatStr
  loc_ADD02D: FStStrNoPop var_A4
  loc_ADD030: FLdPr Me
  loc_ADD033: MemStStrCopy
  loc_ADD037: FFreeStr var_A0 = ""
  loc_ADD03E: FFree1Ad var_88
  loc_ADD041: FFree1Var var_9C = ""
  loc_ADD044: Branch loc_ADD13C
  loc_ADD047: FLdI2 var_8C
  loc_ADD04A: LitI2_Byte 1
  loc_ADD04C: EqI2
  loc_ADD04D: BranchF loc_ADD085
  loc_ADD050: LitStr "Apellido y Nombre que contiene. "
  loc_ADD053: FLdPr Me
  loc_ADD056: VCallAd Control_ID_FiltroMsk
  loc_ADD059: FStAdFunc var_88
  loc_ADD05C: FLdPr var_88
  loc_ADD05F: LateIdLdVar var_9C DispID_22 0
  loc_ADD066: CStrVarTmp
  loc_ADD067: FStStrNoPop var_A0
  loc_ADD06A: ConcatStr
  loc_ADD06B: FStStrNoPop var_A4
  loc_ADD06E: FLdPr Me
  loc_ADD071: MemStStrCopy
  loc_ADD075: FFreeStr var_A0 = ""
  loc_ADD07C: FFree1Ad var_88
  loc_ADD07F: FFree1Var var_9C = ""
  loc_ADD082: Branch loc_ADD13C
  loc_ADD085: FLdI2 var_8C
  loc_ADD088: LitI2_Byte 2
  loc_ADD08A: EqI2
  loc_ADD08B: BranchF loc_ADD0C3
  loc_ADD08E: LitStr "Razón Social que contiene. "
  loc_ADD091: FLdPr Me
  loc_ADD094: VCallAd Control_ID_FiltroMsk
  loc_ADD097: FStAdFunc var_88
  loc_ADD09A: FLdPr var_88
  loc_ADD09D: LateIdLdVar var_9C DispID_22 0
  loc_ADD0A4: CStrVarTmp
  loc_ADD0A5: FStStrNoPop var_A0
  loc_ADD0A8: ConcatStr
  loc_ADD0A9: FStStrNoPop var_A4
  loc_ADD0AC: FLdPr Me
  loc_ADD0AF: MemStStrCopy
  loc_ADD0B3: FFreeStr var_A0 = ""
  loc_ADD0BA: FFree1Ad var_88
  loc_ADD0BD: FFree1Var var_9C = ""
  loc_ADD0C0: Branch loc_ADD13C
  loc_ADD0C3: FLdI2 var_8C
  loc_ADD0C6: LitI2_Byte 3
  loc_ADD0C8: EqI2
  loc_ADD0C9: BranchF loc_ADD101
  loc_ADD0CC: LitStr "código de tipo de sepultura que es igual a: "
  loc_ADD0CF: FLdPr Me
  loc_ADD0D2: VCallAd Control_ID_FiltroMsk
  loc_ADD0D5: FStAdFunc var_88
  loc_ADD0D8: FLdPr var_88
  loc_ADD0DB: LateIdLdVar var_9C DispID_22 0
  loc_ADD0E2: CStrVarTmp
  loc_ADD0E3: FStStrNoPop var_A0
  loc_ADD0E6: ConcatStr
  loc_ADD0E7: FStStrNoPop var_A4
  loc_ADD0EA: FLdPr Me
  loc_ADD0ED: MemStStrCopy
  loc_ADD0F1: FFreeStr var_A0 = ""
  loc_ADD0F8: FFree1Ad var_88
  loc_ADD0FB: FFree1Var var_9C = ""
  loc_ADD0FE: Branch loc_ADD13C
  loc_ADD101: FLdI2 var_8C
  loc_ADD104: LitI2_Byte 4
  loc_ADD106: EqI2
  loc_ADD107: BranchF loc_ADD13C
  loc_ADD10A: LitStr "Apellido y Nombre del difunto que contiene. "
  loc_ADD10D: FLdPr Me
  loc_ADD110: VCallAd Control_ID_FiltroMsk
  loc_ADD113: FStAdFunc var_88
  loc_ADD116: FLdPr var_88
  loc_ADD119: LateIdLdVar var_9C DispID_22 0
  loc_ADD120: CStrVarTmp
  loc_ADD121: FStStrNoPop var_A0
  loc_ADD124: ConcatStr
  loc_ADD125: FStStrNoPop var_A4
  loc_ADD128: FLdPr Me
  loc_ADD12B: MemStStrCopy
  loc_ADD12F: FFreeStr var_A0 = ""
  loc_ADD136: FFree1Ad var_88
  loc_ADD139: FFree1Var var_9C = ""
  loc_ADD13C: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9BC394
  'Data Table: 537378
  loc_9BC37C: ILdI2 KeyAscii
  loc_9BC37F: CI4UI1
  loc_9BC380: LitI4 &HD
  loc_9BC385: EqI4
  loc_9BC386: BranchF loc_9BC393
  loc_9BC389: Call Proc_191_124_ADB058()
  loc_9BC38E: Call cmdCancelar_Click()
  loc_9BC393: ExitProcHresult
End Sub

Private Sub FereDediMsk_UnknownEvent_0 '9BC078
  'Data Table: 537378
  loc_9BC064: FLdPr Me
  loc_9BC067: VCallAd Control_ID_FereDediMsk
  loc_9BC06A: CVarAd
  loc_9BC06E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC073: FFree1Var var_94 = ""
  loc_9BC076: ExitProcHresult
End Sub

Private Sub FereDediMsk_UnknownEvent_8 'A99254
  'Data Table: 537378
  loc_A991A8: FLdRfVar var_8A
  loc_A991AB: FLdPr Me
  loc_A991AE: VCallAd Control_ID_cmdCancelar
  loc_A991B1: FStAdFunc var_88
  loc_A991B4: FLdPr var_88
  loc_A991B7:  = Me.Value
  loc_A991BC: FLdI2 var_8A
  loc_A991BF: NotI4
  loc_A991C0: FLdPr Me
  loc_A991C3: VCallAd Control_ID_FereDediMsk
  loc_A991C6: FStAdFunc var_90
  loc_A991C9: FLdPr var_90
  loc_A991CC: LateIdLdVar var_A0 DispID_22 0
  loc_A991D3: CStrVarTmp
  loc_A991D4: FStStrNoPop var_A4
  loc_A991D7: LitStr vbNullString
  loc_A991DA: NeStr
  loc_A991DC: AndI4
  loc_A991DD: FFree1Str var_A4
  loc_A991E0: FFreeAd var_88 = ""
  loc_A991E7: FFree1Var var_A0 = ""
  loc_A991EA: BranchF loc_A99251
  loc_A991ED: FLdPr Me
  loc_A991F0: VCallAd Control_ID_FereDediMsk
  loc_A991F3: FStAdFunc var_88
  loc_A991F6: FLdPr var_88
  loc_A991F9: LateIdLdVar var_A0 DispID_15 0
  loc_A99200: CStrVarTmp
  loc_A99201: FStStrNoPop var_A4
  loc_A99204: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A99209: FStStrNoPop var_A8
  loc_A9920C: FLdPr Me
  loc_A9920F: MemStStrCopy
  loc_A99213: FFreeStr var_A4 = ""
  loc_A9921A: FFree1Ad var_88
  loc_A9921D: FFree1Var var_A0 = ""
  loc_A99220: FLdPr Me
  loc_A99223: MemLdStr global_88
  loc_A99226: LitStr vbNullString
  loc_A99229: NeStr
  loc_A9922B: BranchF loc_A99251
  loc_A9922E: FLdPr Me
  loc_A99231: MemLdStr global_88
  loc_A99234: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A99239: FLdPr Me
  loc_A9923C: VCallAd Control_ID_FereDediMsk
  loc_A9923F: CVarAd
  loc_A99243: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A99248: FFree1Var var_A0 = ""
  loc_A9924B: LitI2_Byte &HFF
  loc_A9924D: IStI2 KeyAscii
  loc_A99250: ExitProcHresult
  loc_A99251: ExitProcHresult
End Sub

Private Sub FetrDediMsk_UnknownEvent_0 '9BBF58
  'Data Table: 537378
  loc_9BBF44: FLdPr Me
  loc_9BBF47: VCallAd Control_ID_FetrDediMsk
  loc_9BBF4A: CVarAd
  loc_9BBF4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBF53: FFree1Var var_94 = ""
  loc_9BBF56: ExitProcHresult
End Sub

Private Sub FetrDediMsk_UnknownEvent_8 'A98264
  'Data Table: 537378
  loc_A981B8: FLdRfVar var_8A
  loc_A981BB: FLdPr Me
  loc_A981BE: VCallAd Control_ID_cmdCancelar
  loc_A981C1: FStAdFunc var_88
  loc_A981C4: FLdPr var_88
  loc_A981C7:  = Me.Value
  loc_A981CC: FLdI2 var_8A
  loc_A981CF: NotI4
  loc_A981D0: FLdPr Me
  loc_A981D3: VCallAd Control_ID_FetrDediMsk
  loc_A981D6: FStAdFunc var_90
  loc_A981D9: FLdPr var_90
  loc_A981DC: LateIdLdVar var_A0 DispID_22 0
  loc_A981E3: CStrVarTmp
  loc_A981E4: FStStrNoPop var_A4
  loc_A981E7: LitStr vbNullString
  loc_A981EA: NeStr
  loc_A981EC: AndI4
  loc_A981ED: FFree1Str var_A4
  loc_A981F0: FFreeAd var_88 = ""
  loc_A981F7: FFree1Var var_A0 = ""
  loc_A981FA: BranchF loc_A98261
  loc_A981FD: FLdPr Me
  loc_A98200: VCallAd Control_ID_FetrDediMsk
  loc_A98203: FStAdFunc var_88
  loc_A98206: FLdPr var_88
  loc_A98209: LateIdLdVar var_A0 DispID_15 0
  loc_A98210: CStrVarTmp
  loc_A98211: FStStrNoPop var_A4
  loc_A98214: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A98219: FStStrNoPop var_A8
  loc_A9821C: FLdPr Me
  loc_A9821F: MemStStrCopy
  loc_A98223: FFreeStr var_A4 = ""
  loc_A9822A: FFree1Ad var_88
  loc_A9822D: FFree1Var var_A0 = ""
  loc_A98230: FLdPr Me
  loc_A98233: MemLdStr global_88
  loc_A98236: LitStr vbNullString
  loc_A98239: NeStr
  loc_A9823B: BranchF loc_A98261
  loc_A9823E: FLdPr Me
  loc_A98241: MemLdStr global_88
  loc_A98244: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A98249: FLdPr Me
  loc_A9824C: VCallAd Control_ID_FetrDediMsk
  loc_A9824F: CVarAd
  loc_A98253: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98258: FFree1Var var_A0 = ""
  loc_A9825B: LitI2_Byte &HFF
  loc_A9825D: IStI2 KeyAscii
  loc_A98260: ExitProcHresult
  loc_A98261: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D966C
  'Data Table: 537378
  loc_9D9654: FLdPr Me
  loc_9D9657: VCallAd Control_ID_dgdABMS
  loc_9D965A: FStAdFunc var_88
  loc_9D965D: FLdRfVar var_88
  loc_9D9660: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D9665: FFree1Ad var_88
  loc_9D9668: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9DC768
  'Data Table: 537378
  loc_9DC750: FLdPr Me
  loc_9DC753: VCallAd Control_ID_dgdABMS
  loc_9DC756: FStAdFunc var_88
  loc_9DC759: FLdRfVar var_88
  loc_9DC75C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9DC761: FFree1Ad var_88
  loc_9DC764: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A67E64
  'Data Table: 537378
  loc_A67E08: FLdRfVar var_B4
  loc_A67E0B: FLdRfVar var_B0
  loc_A67E0E: FLdI2 ColIndex
  loc_A67E11: CVarI2 var_A8
  loc_A67E14: PopAdLdVar
  loc_A67E15: FLdPr Me
  loc_A67E18: VCallAd Control_ID_dgdABMS
  loc_A67E1B: FStAdFunc var_88
  loc_A67E1E: FLdPr var_88
  loc_A67E21: LateIdLdVar var_98 DispID_105 0
  loc_A67E28: CastAdVar Me
  loc_A67E2C: FStAdFunc var_AC
  loc_A67E2F: FLdPr var_AC
  loc_A67E32: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A67E37: FLdPr var_B0
  loc_A67E3A:  = Me.DataField
  loc_A67E3F: FLdZeroAd var_B4
  loc_A67E42: PopTmpLdAdStr
  loc_A67E46: FLdPr Me
  loc_A67E49: MemLdRfVar from_stack_1.DifuntoCLS
  loc_A67E4C: NewIfNullPr clsdifunto
  loc_A67E4F: Call clsdifunto.Sort(from_stack_1v)
  loc_A67E54: FFree1Str var_B8
  loc_A67E57: FFreeAd var_88 = "": var_AC = ""
  loc_A67E60: FFree1Var var_98 = ""
  loc_A67E63: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BF3B14
  'Data Table: 537378
  loc_BF32D0: FLdPrThis
  loc_BF32D1: VCallAd Control_ID_sstDifunto
  loc_BF32D4: FStAdFunc var_88
  loc_BF32D7: FLdPr var_88
  loc_BF32DA: LateIdLdVar var_98 DispID_4 0
  loc_BF32E1: CI2Var
  loc_BF32E2: LitI2_Byte 0
  loc_BF32E4: EqI2
  loc_BF32E5: FFree1Ad var_88
  loc_BF32E8: FFree1Var var_98 = ""
  loc_BF32EB: BranchF loc_BF342B
  loc_BF32EE: FLdPr Me
  loc_BF32F1: MemLdI2 global_84
  loc_BF32F4: LitI2_Byte 0
  loc_BF32F6: EqI2
  loc_BF32F7: FLdRfVar var_9C
  loc_BF32FA: FLdRfVar var_88
  loc_BF32FD: FLdPr Me
  loc_BF3300: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3303: NewIfNullPr clsdifunto
  loc_BF3306: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF330B: FLdPr var_88
  loc_BF330E:  = Me.RecordCount
  loc_BF3313: ILdRf var_9C
  loc_BF3316: LitI4 0
  loc_BF331B: GtI4
  loc_BF331C: AndI4
  loc_BF331D: FFree1Ad var_88
  loc_BF3320: BranchF loc_BF342B
  loc_BF3323: FLdRfVar var_9E
  loc_BF3326: FLdRfVar var_88
  loc_BF3329: FLdPr Me
  loc_BF332C: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF332F: NewIfNullPr clsdifunto
  loc_BF3332: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3337: FLdPr var_88
  loc_BF333A:  = Me.BOF
  loc_BF333F: FLdI2 var_9E
  loc_BF3342: FFree1Ad var_88
  loc_BF3345: BranchF loc_BF3364
  loc_BF3348: FLdRfVar var_88
  loc_BF334B: FLdPr Me
  loc_BF334E: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3351: NewIfNullPr clsdifunto
  loc_BF3354: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3359: FLdPr var_88
  loc_BF335C: Me.MoveFirst
  loc_BF3361: FFree1Ad var_88
  loc_BF3364: FLdRfVar var_9E
  loc_BF3367: FLdRfVar var_88
  loc_BF336A: FLdPr Me
  loc_BF336D: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3370: NewIfNullPr clsdifunto
  loc_BF3373: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3378: FLdPr var_88
  loc_BF337B:  = Me.EOF
  loc_BF3380: FLdI2 var_9E
  loc_BF3383: FFree1Ad var_88
  loc_BF3386: BranchF loc_BF33A5
  loc_BF3389: FLdRfVar var_88
  loc_BF338C: FLdPr Me
  loc_BF338F: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3392: NewIfNullPr clsdifunto
  loc_BF3395: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF339A: FLdPr var_88
  loc_BF339D: Me.MoveLast
  loc_BF33A2: FFree1Ad var_88
  loc_BF33A5: Call Proc_191_125_BFE53C()
  loc_BF33AA: FLdRfVar var_98
  loc_BF33AD: FLdRfVar var_B8
  loc_BF33B0: LitVarStr var_B4, "PerpDifu"
  loc_BF33B5: PopAdLdVar
  loc_BF33B6: FLdRfVar var_A4
  loc_BF33B9: FLdRfVar var_88
  loc_BF33BC: FLdPr Me
  loc_BF33BF: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF33C2: NewIfNullPr clsdifunto
  loc_BF33C5: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF33CA: FLdPr var_88
  loc_BF33CD:  = Me.Fields
  loc_BF33D2: FLdPr var_A4
  loc_BF33D5: from_stack_2 = Me.Item(from_stack_1)
  loc_BF33DA: FLdPr var_B8
  loc_BF33DD:  = Me.Value
  loc_BF33E2: FLdRfVar var_98
  loc_BF33E5: LitVarStr var_C8, "Si"
  loc_BF33EA: HardType
  loc_BF33EB: EqVarBool
  loc_BF33ED: FFreeAd var_88 = "": var_A4 = ""
  loc_BF33F6: FFree1Var var_98 = ""
  loc_BF33F9: BranchF loc_BF3415
  loc_BF33FC: LitI2_Byte 0
  loc_BF33FE: FLdPr Me
  loc_BF3401: VCallAd Control_ID_PerpDifuCbo
  loc_BF3404: FStAdFunc var_88
  loc_BF3407: FLdPr var_88
  loc_BF340A: Me.ListIndex = from_stack_1
  loc_BF340F: FFree1Ad var_88
  loc_BF3412: Branch loc_BF342B
  loc_BF3415: LitI2_Byte 1
  loc_BF3417: FLdPr Me
  loc_BF341A: VCallAd Control_ID_PerpDifuCbo
  loc_BF341D: FStAdFunc var_88
  loc_BF3420: FLdPr var_88
  loc_BF3423: Me.ListIndex = from_stack_1
  loc_BF3428: FFree1Ad var_88
  loc_BF342B: FLdPrThis
  loc_BF342C: VCallAd Control_ID_sstDifunto
  loc_BF342F: FStAdFunc var_88
  loc_BF3432: FLdPr var_88
  loc_BF3435: LateIdLdVar var_98 DispID_4 0
  loc_BF343C: CI2Var
  loc_BF343D: LitI2_Byte 1
  loc_BF343F: EqI2
  loc_BF3440: FFree1Ad var_88
  loc_BF3443: FFree1Var var_98 = ""
  loc_BF3446: BranchF loc_BF3670
  loc_BF3449: FLdPr Me
  loc_BF344C: MemLdI2 global_84
  loc_BF344F: LitI2_Byte 0
  loc_BF3451: EqI2
  loc_BF3452: FLdRfVar var_9C
  loc_BF3455: FLdRfVar var_88
  loc_BF3458: FLdPr Me
  loc_BF345B: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF345E: NewIfNullPr clsdifunto
  loc_BF3461: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3466: FLdPr var_88
  loc_BF3469:  = Me.RecordCount
  loc_BF346E: ILdRf var_9C
  loc_BF3471: LitI4 0
  loc_BF3476: GtI4
  loc_BF3477: AndI4
  loc_BF3478: FFree1Ad var_88
  loc_BF347B: BranchF loc_BF35CC
  loc_BF347E: FLdRfVar var_9E
  loc_BF3481: FLdRfVar var_88
  loc_BF3484: FLdPr Me
  loc_BF3487: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF348A: NewIfNullPr clsdifunto
  loc_BF348D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3492: FLdPr var_88
  loc_BF3495:  = Me.BOF
  loc_BF349A: FLdI2 var_9E
  loc_BF349D: FFree1Ad var_88
  loc_BF34A0: BranchF loc_BF34BF
  loc_BF34A3: FLdRfVar var_88
  loc_BF34A6: FLdPr Me
  loc_BF34A9: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF34AC: NewIfNullPr clsdifunto
  loc_BF34AF: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF34B4: FLdPr var_88
  loc_BF34B7: Me.MoveFirst
  loc_BF34BC: FFree1Ad var_88
  loc_BF34BF: FLdRfVar var_9E
  loc_BF34C2: FLdRfVar var_88
  loc_BF34C5: FLdPr Me
  loc_BF34C8: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF34CB: NewIfNullPr clsdifunto
  loc_BF34CE: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF34D3: FLdPr var_88
  loc_BF34D6:  = Me.EOF
  loc_BF34DB: FLdI2 var_9E
  loc_BF34DE: FFree1Ad var_88
  loc_BF34E1: BranchF loc_BF3500
  loc_BF34E4: FLdRfVar var_88
  loc_BF34E7: FLdPr Me
  loc_BF34EA: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF34ED: NewIfNullPr clsdifunto
  loc_BF34F0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF34F5: FLdPr var_88
  loc_BF34F8: Me.MoveLast
  loc_BF34FD: FFree1Ad var_88
  loc_BF3500: LitStr "SELECT CodiDifu,NumeDedi,DetaDedi,AnioDedi,MesDedi,FefaDedi,ActaDedi,RegiDedi,ExpeDedi,ExexDedi,FeexDedi,FetrDedi,ExrvDedi,UbtrDedi,ExreDedi,FereDedi,AltaUsua,AltaFeho, detadifu.BajaMoti, detadifu.BajaFeho FROM detadifu "
  loc_BF3503: LitStr " WHERE CodiDifu = '"
  loc_BF3506: ConcatStr
  loc_BF3507: CVarStr var_D8
  loc_BF350A: FLdRfVar var_98
  loc_BF350D: FLdRfVar var_B8
  loc_BF3510: LitVarStr var_B4, "CodiDifu"
  loc_BF3515: PopAdLdVar
  loc_BF3516: FLdRfVar var_A4
  loc_BF3519: FLdRfVar var_88
  loc_BF351C: FLdPr Me
  loc_BF351F: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3522: NewIfNullPr clsdifunto
  loc_BF3525: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF352A: FLdPr var_88
  loc_BF352D:  = Me.Fields
  loc_BF3532: FLdPr var_A4
  loc_BF3535: from_stack_2 = Me.Item(from_stack_1)
  loc_BF353A: FLdPr var_B8
  loc_BF353D:  = Me.Value
  loc_BF3542: FLdRfVar var_98
  loc_BF3545: ConcatVar var_E8
  loc_BF3549: LitVarStr var_C8, "' ORDER BY detadifu.CodiDifu"
  loc_BF354E: ConcatVar var_F8
  loc_BF3552: CStrVarVal var_FC
  loc_BF3556: FLdPr Me
  loc_BF3559: MemLdRfVar from_stack_1.global_64
  loc_BF355C: NewIfNullPr clsdifunto
  loc_BF355F: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_BF3564: FFree1Str var_FC
  loc_BF3567: FFreeAd var_88 = "": var_A4 = ""
  loc_BF3570: FFreeVar var_D8 = "": var_98 = "": var_E8 = ""
  loc_BF357B: FLdRfVar var_9C
  loc_BF357E: FLdPr Me
  loc_BF3581: MemLdRfVar from_stack_1.global_64
  loc_BF3584: NewIfNullPr clsdifunto
  loc_BF3587: from_stack_1 = clsdifunto.RecordCount
  loc_BF358C: ILdRf var_9C
  loc_BF358F: LitI4 0
  loc_BF3594: EqI4
  loc_BF3595: BranchF loc_BF35B4
  loc_BF3598: LitVar_FALSE
  loc_BF359C: PopAdLdVar
  loc_BF359D: FLdPr Me
  loc_BF35A0: VCallAd Control_ID_dgdDetaDifu
  loc_BF35A3: FStAdFunc var_88
  loc_BF35A6: FLdPr var_88
  loc_BF35A9: LateIdSt
  loc_BF35AE: FFree1Ad var_88
  loc_BF35B1: Branch loc_BF35CC
  loc_BF35B4: LitVar_TRUE var_B4
  loc_BF35B7: PopAdLdVar
  loc_BF35B8: FLdPr Me
  loc_BF35BB: VCallAd Control_ID_dgdDetaDifu
  loc_BF35BE: FStAdFunc var_88
  loc_BF35C1: FLdPr var_88
  loc_BF35C4: LateIdSt
  loc_BF35C9: FFree1Ad var_88
  loc_BF35CC: FLdRfVar var_9C
  loc_BF35CF: FLdRfVar var_88
  loc_BF35D2: FLdPr Me
  loc_BF35D5: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF35D8: NewIfNullPr clsdifunto
  loc_BF35DB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF35E0: FLdPr var_88
  loc_BF35E3:  = Me.RecordCount
  loc_BF35E8: ILdRf var_9C
  loc_BF35EB: LitI4 0
  loc_BF35F0: EqI4
  loc_BF35F1: FFree1Ad var_88
  loc_BF35F4: BranchF loc_BF3612
  loc_BF35F7: LitStr "SELECT CodiDifu,NumeDedi,DetaDedi,AnioDedi,MesDedi,FefaDedi,ActaDedi,RegiDedi,ExpeDedi,ExexDedi,FeexDedi,FetrDedi,ExrvDedi,UbtrDedi,ExreDedi,FereDedi,AltaUsua,AltaFeho, detadifu.BajaMoti FROM detadifu "
  loc_BF35FA: LitStr " WHERE CodiDifu = '0' ORDER BY detadifu.CodiDifu"
  loc_BF35FD: ConcatStr
  loc_BF35FE: FStStrNoPop var_FC
  loc_BF3601: FLdPr Me
  loc_BF3604: MemLdRfVar from_stack_1.global_64
  loc_BF3607: NewIfNullPr clsdifunto
  loc_BF360A: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_BF360F: FFree1Str var_FC
  loc_BF3612: LitI4 0
  loc_BF3617: LitI4 1
  loc_BF361C: FLdRfVar var_100
  loc_BF361F: Redim
  loc_BF3629: FLdPr Me
  loc_BF362C: MemLdRfVar from_stack_1.global_64
  loc_BF362F: NewIfNullAd
  loc_BF3632: FStAd var_88 
  loc_BF3636: FLdRfVar var_88
  loc_BF3639: CVarRef
  loc_BF363E: ParmAry1St
  loc_BF3644: FLdPr Me
  loc_BF3647: VCallAd Control_ID_dgdDetaDifu
  loc_BF364A: CVarAd
  loc_BF364E: ParmAry1St
  loc_BF3654: FLdRfVar var_100
  loc_BF3657: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BF365C: ILdRf var_88
  loc_BF365F: CastAd
  loc_BF3662: FLdPr Me
  loc_BF3665: MemStAdFunc
  loc_BF3669: FLdRfVar var_100
  loc_BF366C: Erase
  loc_BF366D: FFree1Ad var_88
  loc_BF3670: FLdPrThis
  loc_BF3671: VCallAd Control_ID_sstDifunto
  loc_BF3674: FStAdFunc var_88
  loc_BF3677: FLdPr var_88
  loc_BF367A: LateIdLdVar var_98 DispID_4 0
  loc_BF3681: CI2Var
  loc_BF3682: LitI2_Byte 2
  loc_BF3684: EqI2
  loc_BF3685: FFree1Ad var_88
  loc_BF3688: FFree1Var var_98 = ""
  loc_BF368B: BranchF loc_BF38C2
  loc_BF368E: FLdPr Me
  loc_BF3691: MemLdI2 global_84
  loc_BF3694: LitI2_Byte 0
  loc_BF3696: EqI2
  loc_BF3697: FLdRfVar var_9C
  loc_BF369A: FLdRfVar var_88
  loc_BF369D: FLdPr Me
  loc_BF36A0: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF36A3: NewIfNullPr clsdifunto
  loc_BF36A6: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF36AB: FLdPr var_88
  loc_BF36AE:  = Me.RecordCount
  loc_BF36B3: ILdRf var_9C
  loc_BF36B6: LitI4 0
  loc_BF36BB: GtI4
  loc_BF36BC: AndI4
  loc_BF36BD: FFree1Ad var_88
  loc_BF36C0: BranchF loc_BF37EF
  loc_BF36C3: FLdRfVar var_9E
  loc_BF36C6: FLdRfVar var_88
  loc_BF36C9: FLdPr Me
  loc_BF36CC: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF36CF: NewIfNullPr clsdifunto
  loc_BF36D2: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF36D7: FLdPr var_88
  loc_BF36DA:  = Me.BOF
  loc_BF36DF: FLdI2 var_9E
  loc_BF36E2: FFree1Ad var_88
  loc_BF36E5: BranchF loc_BF3704
  loc_BF36E8: FLdRfVar var_88
  loc_BF36EB: FLdPr Me
  loc_BF36EE: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF36F1: NewIfNullPr clsdifunto
  loc_BF36F4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF36F9: FLdPr var_88
  loc_BF36FC: Me.MoveFirst
  loc_BF3701: FFree1Ad var_88
  loc_BF3704: FLdRfVar var_9E
  loc_BF3707: FLdRfVar var_88
  loc_BF370A: FLdPr Me
  loc_BF370D: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3710: NewIfNullPr clsdifunto
  loc_BF3713: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3718: FLdPr var_88
  loc_BF371B:  = Me.EOF
  loc_BF3720: FLdI2 var_9E
  loc_BF3723: FFree1Ad var_88
  loc_BF3726: BranchF loc_BF3745
  loc_BF3729: FLdRfVar var_88
  loc_BF372C: FLdPr Me
  loc_BF372F: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3732: NewIfNullPr clsdifunto
  loc_BF3735: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF373A: FLdPr var_88
  loc_BF373D: Me.MoveLast
  loc_BF3742: FFree1Ad var_88
  loc_BF3745: LitStr "SELECT relacion.TipoRela, relacion.FealRela, relacion.FebaRela, relacion.MobaRela, relacion.PorcRela, infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.JuriPers, infogov.persona.CodiTido, infogov.tipodocu.DetaTido, infogov.persona.NudoPers, infogov.persona.FenaPers, infogov.persona.TelePers, infogov.persona.CeluPers, infogov.persona.FaxsPers, infogov.persona.CodiEsci, infogov.estacivi.DetaEsci, infogov.persona.CodiPofi, infogov.posifisc.DetaPofi "
  loc_BF3748: LitStr " FROM relacion "
  loc_BF374B: ConcatStr
  loc_BF374C: FStStrNoPop var_FC
  loc_BF374F: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_BF3752: ConcatStr
  loc_BF3753: FStStrNoPop var_104
  loc_BF3756: LitStr " LEFT JOIN infogov.tipodocu ON infogov.persona.CodiTido = infogov.tipodocu.CodiTido"
  loc_BF3759: ConcatStr
  loc_BF375A: FStStrNoPop var_108
  loc_BF375D: LitStr " LEFT JOIN infogov.estacivi ON infogov.persona.CodiEsci = infogov.estacivi.CodiEsci"
  loc_BF3760: ConcatStr
  loc_BF3761: FStStrNoPop var_10C
  loc_BF3764: LitStr " LEFT JOIN infogov.posifisc ON infogov.persona.CodiPofi = infogov.posifisc.CodiPofi"
  loc_BF3767: ConcatStr
  loc_BF3768: FStStrNoPop var_110
  loc_BF376B: LitStr " WHERE relacion.CodiOfic = 4 AND relacion.CuenCtct = '"
  loc_BF376E: ConcatStr
  loc_BF376F: CVarStr var_D8
  loc_BF3772: FLdRfVar var_98
  loc_BF3775: FLdRfVar var_B8
  loc_BF3778: LitVarStr var_B4, "CodiDifu"
  loc_BF377D: PopAdLdVar
  loc_BF377E: FLdRfVar var_A4
  loc_BF3781: FLdRfVar var_88
  loc_BF3784: FLdPr Me
  loc_BF3787: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF378A: NewIfNullPr clsdifunto
  loc_BF378D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3792: FLdPr var_88
  loc_BF3795:  = Me.Fields
  loc_BF379A: FLdPr var_A4
  loc_BF379D: from_stack_2 = Me.Item(from_stack_1)
  loc_BF37A2: FLdPr var_B8
  loc_BF37A5:  = Me.Value
  loc_BF37AA: FLdRfVar var_98
  loc_BF37AD: ConcatVar var_E8
  loc_BF37B1: LitVarStr var_C8, "' ORDER BY relacion.CodiOfic, relacion.CuenCtct"
  loc_BF37B6: ConcatVar var_F8
  loc_BF37BA: CStrVarVal var_114
  loc_BF37BE: FLdPr Me
  loc_BF37C1: MemLdRfVar from_stack_1.global_56
  loc_BF37C4: NewIfNullPr clsrelacion
  loc_BF37C7: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF37CC: FFreeStr var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BF37DB: FFreeAd var_88 = "": var_A4 = ""
  loc_BF37E4: FFreeVar var_D8 = "": var_98 = "": var_E8 = ""
  loc_BF37EF: FLdRfVar var_9C
  loc_BF37F2: FLdRfVar var_88
  loc_BF37F5: FLdPr Me
  loc_BF37F8: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF37FB: NewIfNullPr clsdifunto
  loc_BF37FE: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3803: FLdPr var_88
  loc_BF3806:  = Me.RecordCount
  loc_BF380B: ILdRf var_9C
  loc_BF380E: LitI4 0
  loc_BF3813: EqI4
  loc_BF3814: FFree1Ad var_88
  loc_BF3817: BranchF loc_BF3864
  loc_BF381A: LitStr "SELECT relacion.TipoRela, relacion.FealRela, relacion.FebaRela, relacion.MobaRela, relacion.PorcRela, infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.JuriPers, infogov.persona.CodiTido, infogov.tipodocu.DetaTido, infogov.persona.NudoPers, infogov.persona.FenaPers, infogov.persona.TelePers, infogov.persona.CeluPers, infogov.persona.FaxsPers, infogov.persona.CodiEsci, infogov.estacivi.DetaEsci, infogov.persona.CodiPofi, infogov.posifisc.DetaPofi "
  loc_BF381D: LitStr " FROM relacion "
  loc_BF3820: ConcatStr
  loc_BF3821: FStStrNoPop var_FC
  loc_BF3824: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_BF3827: ConcatStr
  loc_BF3828: FStStrNoPop var_104
  loc_BF382B: LitStr " LEFT JOIN infogov.tipodocu ON infogov.persona.CodiTido = infogov.tipodocu.CodiTido"
  loc_BF382E: ConcatStr
  loc_BF382F: FStStrNoPop var_108
  loc_BF3832: LitStr " LEFT JOIN infogov.estacivi ON infogov.persona.CodiEsci = infogov.estacivi.CodiEsci"
  loc_BF3835: ConcatStr
  loc_BF3836: FStStrNoPop var_10C
  loc_BF3839: LitStr " LEFT JOIN infogov.posifisc ON infogov.persona.CodiPofi = infogov.posifisc.CodiPofi"
  loc_BF383C: ConcatStr
  loc_BF383D: FStStrNoPop var_110
  loc_BF3840: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.CuenCtct = '' ORDER BY relacion.CodiOfic, relacion.CuenCtct"
  loc_BF3843: ConcatStr
  loc_BF3844: FStStrNoPop var_114
  loc_BF3847: FLdPr Me
  loc_BF384A: MemLdRfVar from_stack_1.global_56
  loc_BF384D: NewIfNullPr clsrelacion
  loc_BF3850: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_BF3855: FFreeStr var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BF3864: LitI4 0
  loc_BF3869: LitI4 1
  loc_BF386E: FLdRfVar var_100
  loc_BF3871: Redim
  loc_BF387B: FLdPr Me
  loc_BF387E: MemLdRfVar from_stack_1.global_56
  loc_BF3881: NewIfNullAd
  loc_BF3884: FStAd var_88 
  loc_BF3888: FLdRfVar var_88
  loc_BF388B: CVarRef
  loc_BF3890: ParmAry1St
  loc_BF3896: FLdPr Me
  loc_BF3899: VCallAd Control_ID_dgdPersona
  loc_BF389C: CVarAd
  loc_BF38A0: ParmAry1St
  loc_BF38A6: FLdRfVar var_100
  loc_BF38A9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BF38AE: ILdRf var_88
  loc_BF38B1: CastAd
  loc_BF38B4: FLdPr Me
  loc_BF38B7: MemStAdFunc
  loc_BF38BB: FLdRfVar var_100
  loc_BF38BE: Erase
  loc_BF38BF: FFree1Ad var_88
  loc_BF38C2: FLdPrThis
  loc_BF38C3: VCallAd Control_ID_sstDifunto
  loc_BF38C6: FStAdFunc var_88
  loc_BF38C9: FLdPr var_88
  loc_BF38CC: LateIdLdVar var_98 DispID_4 0
  loc_BF38D3: CI2Var
  loc_BF38D4: LitI2_Byte 3
  loc_BF38D6: EqI2
  loc_BF38D7: FFree1Ad var_88
  loc_BF38DA: FFree1Var var_98 = ""
  loc_BF38DD: BranchF loc_BF3B10
  loc_BF38E0: FLdPr Me
  loc_BF38E3: MemLdI2 global_84
  loc_BF38E6: LitI2_Byte 0
  loc_BF38E8: EqI2
  loc_BF38E9: FLdRfVar var_9C
  loc_BF38EC: FLdRfVar var_88
  loc_BF38EF: FLdPr Me
  loc_BF38F2: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF38F5: NewIfNullPr clsdifunto
  loc_BF38F8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF38FD: FLdPr var_88
  loc_BF3900:  = Me.RecordCount
  loc_BF3905: ILdRf var_9C
  loc_BF3908: LitI4 0
  loc_BF390D: GtI4
  loc_BF390E: AndI4
  loc_BF390F: FFree1Ad var_88
  loc_BF3912: BranchF loc_BF3A3F
  loc_BF3915: FLdRfVar var_9E
  loc_BF3918: FLdRfVar var_88
  loc_BF391B: FLdPr Me
  loc_BF391E: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3921: NewIfNullPr clsdifunto
  loc_BF3924: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3929: FLdPr var_88
  loc_BF392C:  = Me.BOF
  loc_BF3931: FLdI2 var_9E
  loc_BF3934: FFree1Ad var_88
  loc_BF3937: BranchF loc_BF3956
  loc_BF393A: FLdRfVar var_88
  loc_BF393D: FLdPr Me
  loc_BF3940: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3943: NewIfNullPr clsdifunto
  loc_BF3946: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF394B: FLdPr var_88
  loc_BF394E: Me.MoveFirst
  loc_BF3953: FFree1Ad var_88
  loc_BF3956: FLdRfVar var_9E
  loc_BF3959: FLdRfVar var_88
  loc_BF395C: FLdPr Me
  loc_BF395F: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3962: NewIfNullPr clsdifunto
  loc_BF3965: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF396A: FLdPr var_88
  loc_BF396D:  = Me.EOF
  loc_BF3972: FLdI2 var_9E
  loc_BF3975: FFree1Ad var_88
  loc_BF3978: BranchF loc_BF3997
  loc_BF397B: FLdRfVar var_88
  loc_BF397E: FLdPr Me
  loc_BF3981: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3984: NewIfNullPr clsdifunto
  loc_BF3987: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF398C: FLdPr var_88
  loc_BF398F: Me.MoveLast
  loc_BF3994: FFree1Ad var_88
  loc_BF3997: LitStr "SELECT servdifu.CodiDifu, servdifu.CodiSece, servdifu.CodiSedi, servdifu.FealSedi, servdifu.FedeSedi, servdifu.FehaSedi, servdifu.EstaSedi, servceme.DetaSece, servceme.ImpoSece"
  loc_BF399A: LitStr " FROM servdifu "
  loc_BF399D: ConcatStr
  loc_BF399E: FStStrNoPop var_FC
  loc_BF39A1: LitStr " LEFT JOIN servceme ON servceme.PeriOrde = "
  loc_BF39A4: ConcatStr
  loc_BF39A5: FStStrNoPop var_104
  loc_BF39A8: ImpAdLdI2 MemVar_D93036
  loc_BF39AB: CStrUI1
  loc_BF39AD: FStStrNoPop var_108
  loc_BF39B0: ConcatStr
  loc_BF39B1: FStStrNoPop var_10C
  loc_BF39B4: LitStr " AND servceme.CodiSece = servdifu.CodiSece "
  loc_BF39B7: ConcatStr
  loc_BF39B8: FStStrNoPop var_110
  loc_BF39BB: LitStr " WHERE servdifu.CodiDifu = '"
  loc_BF39BE: ConcatStr
  loc_BF39BF: CVarStr var_D8
  loc_BF39C2: FLdRfVar var_98
  loc_BF39C5: FLdRfVar var_B8
  loc_BF39C8: LitVarStr var_B4, "CodiDifu"
  loc_BF39CD: PopAdLdVar
  loc_BF39CE: FLdRfVar var_A4
  loc_BF39D1: FLdRfVar var_88
  loc_BF39D4: FLdPr Me
  loc_BF39D7: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF39DA: NewIfNullPr clsdifunto
  loc_BF39DD: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF39E2: FLdPr var_88
  loc_BF39E5:  = Me.Fields
  loc_BF39EA: FLdPr var_A4
  loc_BF39ED: from_stack_2 = Me.Item(from_stack_1)
  loc_BF39F2: FLdPr var_B8
  loc_BF39F5:  = Me.Value
  loc_BF39FA: FLdRfVar var_98
  loc_BF39FD: ConcatVar var_E8
  loc_BF3A01: LitVarStr var_C8, "' ORDER BY servdifu.CodiDifu"
  loc_BF3A06: ConcatVar var_F8
  loc_BF3A0A: CStrVarVal var_114
  loc_BF3A0E: FLdPr Me
  loc_BF3A11: MemLdRfVar from_stack_1.global_68
  loc_BF3A14: NewIfNullPr clsservdifu
  loc_BF3A17: Call clsservdifu.RedefineRS(from_stack_1v)
  loc_BF3A1C: FFreeStr var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BF3A2B: FFreeAd var_88 = "": var_A4 = ""
  loc_BF3A34: FFreeVar var_D8 = "": var_98 = "": var_E8 = ""
  loc_BF3A3F: FLdRfVar var_9C
  loc_BF3A42: FLdRfVar var_88
  loc_BF3A45: FLdPr Me
  loc_BF3A48: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BF3A4B: NewIfNullPr clsdifunto
  loc_BF3A4E: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF3A53: FLdPr var_88
  loc_BF3A56:  = Me.RecordCount
  loc_BF3A5B: ILdRf var_9C
  loc_BF3A5E: LitI4 0
  loc_BF3A63: EqI4
  loc_BF3A64: FFree1Ad var_88
  loc_BF3A67: BranchF loc_BF3AB2
  loc_BF3A6A: LitStr "SELECT servdifu.CodiDifu, servdifu.CodiSece, servdifu.CodiSedi, servdifu.FealSedi, servdifu.FedeSedi, servdifu.FehaSedi, servdifu.EstaSedi, servceme.DetaSece, servceme.ImpoSece"
  loc_BF3A6D: LitStr " FROM servdifu "
  loc_BF3A70: ConcatStr
  loc_BF3A71: FStStrNoPop var_FC
  loc_BF3A74: LitStr " LEFT JOIN servceme ON servceme.PeriOrde = "
  loc_BF3A77: ConcatStr
  loc_BF3A78: FStStrNoPop var_104
  loc_BF3A7B: ImpAdLdI2 MemVar_D93036
  loc_BF3A7E: CStrUI1
  loc_BF3A80: FStStrNoPop var_108
  loc_BF3A83: ConcatStr
  loc_BF3A84: FStStrNoPop var_10C
  loc_BF3A87: LitStr " AND servceme.CodiSece = servdifu.CodiSece "
  loc_BF3A8A: ConcatStr
  loc_BF3A8B: FStStrNoPop var_110
  loc_BF3A8E: LitStr " WHERE servdifu.CodiDifu = '0' ORDER BY servdifu.CodiDifu"
  loc_BF3A91: ConcatStr
  loc_BF3A92: FStStrNoPop var_114
  loc_BF3A95: FLdPr Me
  loc_BF3A98: MemLdRfVar from_stack_1.global_68
  loc_BF3A9B: NewIfNullPr clsservdifu
  loc_BF3A9E: Call clsservdifu.RedefineRS(from_stack_1v)
  loc_BF3AA3: FFreeStr var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BF3AB2: LitI4 0
  loc_BF3AB7: LitI4 1
  loc_BF3ABC: FLdRfVar var_100
  loc_BF3ABF: Redim
  loc_BF3AC9: FLdPr Me
  loc_BF3ACC: MemLdRfVar from_stack_1.global_68
  loc_BF3ACF: NewIfNullAd
  loc_BF3AD2: FStAd var_88 
  loc_BF3AD6: FLdRfVar var_88
  loc_BF3AD9: CVarRef
  loc_BF3ADE: ParmAry1St
  loc_BF3AE4: FLdPr Me
  loc_BF3AE7: VCallAd Control_ID_dgdServDifu
  loc_BF3AEA: CVarAd
  loc_BF3AEE: ParmAry1St
  loc_BF3AF4: FLdRfVar var_100
  loc_BF3AF7: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BF3AFC: ILdRf var_88
  loc_BF3AFF: CastAd
  loc_BF3B02: FLdPr Me
  loc_BF3B05: MemStAdFunc
  loc_BF3B09: FLdRfVar var_100
  loc_BF3B0C: Erase
  loc_BF3B0D: FFree1Ad var_88
  loc_BF3B10: ExitProcHresult
  loc_BF3B11: CCyI4
  loc_BF3B12: NameFile
End Sub

Private Sub AnioDediMsk_UnknownEvent_0 '9BBDA8
  'Data Table: 537378
  loc_9BBD94: FLdPr Me
  loc_9BBD97: VCallAd Control_ID_AnioDediMsk
  loc_9BBD9A: CVarAd
  loc_9BBD9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBDA3: FFree1Var var_94 = ""
  loc_9BBDA6: ExitProcHresult
End Sub

Private Sub AnioDediMsk_UnknownEvent_8 'A6D69C
  'Data Table: 537378
  loc_A6D630: FLdPr Me
  loc_A6D633: VCallAd Control_ID_AnioDediMsk
  loc_A6D636: FStAdFunc var_88
  loc_A6D639: FLdPr var_88
  loc_A6D63C: LateIdLdVar var_98 DispID_13 -32767
  loc_A6D643: CBoolVar
  loc_A6D645: LitI2_Byte &HFF
  loc_A6D647: EqI2
  loc_A6D648: FFree1Ad var_88
  loc_A6D64B: FFree1Var var_98 = ""
  loc_A6D64E: BranchF loc_A6D69A
  loc_A6D651: FLdPr Me
  loc_A6D654: VCallAd Control_ID_AnioDediMsk
  loc_A6D657: FStAdFunc var_88
  loc_A6D65A: FLdPr var_88
  loc_A6D65D: LateIdLdVar var_98 DispID_22 0
  loc_A6D664: CStrVarTmp
  loc_A6D665: CVarStr var_A8
  loc_A6D668: ImpAdCallI2 IsNumeric()
  loc_A6D66D: NotI4
  loc_A6D66E: FFree1Ad var_88
  loc_A6D671: FFreeVar var_98 = ""
  loc_A6D678: BranchF loc_A6D69A
  loc_A6D67B: LitI2_Byte 0
  loc_A6D67D: CStrUI1
  loc_A6D67F: CVarStr var_98
  loc_A6D682: PopAdLdVar
  loc_A6D683: FLdPr Me
  loc_A6D686: VCallAd Control_ID_AnioDediMsk
  loc_A6D689: FStAdFunc var_88
  loc_A6D68C: FLdPr var_88
  loc_A6D68F: LateIdSt
  loc_A6D694: FFree1Ad var_88
  loc_A6D697: FFree1Var var_98 = ""
  loc_A6D69A: ExitProcHresult
End Sub

Private Sub AnioDifuTxt_GotFocus() '9BB808
  'Data Table: 537378
  loc_9BB7F4: FLdPr Me
  loc_9BB7F7: VCallAd Control_ID_AnioDifuTxt
  loc_9BB7FA: CVarAd
  loc_9BB7FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB803: FFree1Var var_94 = ""
  loc_9BB806: ExitProcHresult
End Sub

Private Sub AnioDifuTxt_KeyPress(KeyAscii As Integer) '9D9CF4
  'Data Table: 537378
  loc_9D9CDC: LitStr "0123456789"
  loc_9D9CDF: FStStrCopy var_88
  loc_9D9CE2: FLdRfVar var_88
  loc_9D9CE5: ILdRf KeyAscii
  loc_9D9CE8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9CED: IStI2 KeyAscii
  loc_9D9CF0: FFree1Str var_88
  loc_9D9CF3: ExitProcHresult
End Sub

Private Sub AnioDifuTxt_LostFocus() 'AA5498
  'Data Table: 537378
  loc_AA53F0: FLdRfVar var_8C
  loc_AA53F3: FLdPr Me
  loc_AA53F6: VCallAd Control_ID_PeriDifuTxt
  loc_AA53F9: FStAdFunc var_88
  loc_AA53FC: FLdPr var_88
  loc_AA53FF:  = Me.Text
  loc_AA5404: FLdRfVar var_94
  loc_AA5407: FLdPr Me
  loc_AA540A: VCallAd Control_ID_AnioDifuTxt
  loc_AA540D: FStAdFunc var_90
  loc_AA5410: FLdPr var_90
  loc_AA5413:  = Me.Text
  loc_AA5418: FLdRfVar var_9C
  loc_AA541B: FLdPr Me
  loc_AA541E: VCallAd Control_ID_MesDifuTxt
  loc_AA5421: FStAdFunc var_98
  loc_AA5424: FLdPr var_98
  loc_AA5427:  = Me.Text
  loc_AA542C: LitI2_Byte 0
  loc_AA542E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA5433: CVarDate var_BC
  loc_AA5437: FLdRfVar var_CC
  loc_AA543A: ImpAdCallFPR4  = Day()
  loc_AA543F: FLdRfVar var_CC
  loc_AA5442: CI2Var
  loc_AA5443: ILdRf var_9C
  loc_AA5446: CI2Str
  loc_AA5448: ILdRf var_8C
  loc_AA544B: CI2Str
  loc_AA544D: CR8I2
  loc_AA544E: ILdRf var_94
  loc_AA5451: CR8Str
  loc_AA5453: AddR8
  loc_AA5454: CI2R8
  loc_AA5455: FLdRfVar var_DC
  loc_AA5458: ImpAdCallFPR4  = DateSerial(, , )
  loc_AA545D: FLdRfVar var_DC
  loc_AA5460: CStrVarTmp
  loc_AA5461: CVarStr var_EC
  loc_AA5464: PopAdLdVar
  loc_AA5465: FLdPr Me
  loc_AA5468: VCallAd Control_ID_FeveDifuMsk
  loc_AA546B: FStAdFunc var_100
  loc_AA546E: FLdPr var_100
  loc_AA5471: LateIdSt
  loc_AA5476: FFreeStr var_8C = "": var_94 = ""
  loc_AA547F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_AA548A: FFreeVar var_BC = "": var_CC = "": var_DC = ""
  loc_AA5495: ExitProcHresult
End Sub

Private Sub AnioDifuTxt_Validate(Cancel As Boolean) 'AAB7A4
  'Data Table: 537378
  loc_AAB6D8: FLdRfVar var_8A
  loc_AAB6DB: FLdPr Me
  loc_AAB6DE: VCallAd Control_ID_AnioDifuTxt
  loc_AAB6E1: FStAdFunc var_88
  loc_AAB6E4: FLdPr var_88
  loc_AAB6E7:  = Me.Enabled
  loc_AAB6EC: FLdI2 var_8A
  loc_AAB6EF: LitI2_Byte &HFF
  loc_AAB6F1: EqI2
  loc_AAB6F2: FFree1Ad var_88
  loc_AAB6F5: BranchF loc_AAB7A0
  loc_AAB6F8: FLdRfVar var_90
  loc_AAB6FB: FLdPr Me
  loc_AAB6FE: VCallAd Control_ID_AnioDifuTxt
  loc_AAB701: FStAdFunc var_88
  loc_AAB704: FLdPr var_88
  loc_AAB707:  = Me.Text
  loc_AAB70C: FLdZeroAd var_90
  loc_AAB70F: CVarStr var_A0
  loc_AAB712: ImpAdCallI2 IsNumeric()
  loc_AAB717: NotI4
  loc_AAB718: FFree1Ad var_88
  loc_AAB71B: FFree1Var var_A0 = ""
  loc_AAB71E: BranchF loc_AAB738
  loc_AAB721: LitStr "0"
  loc_AAB724: FLdPr Me
  loc_AAB727: VCallAd Control_ID_AnioDifuTxt
  loc_AAB72A: FStAdFunc var_88
  loc_AAB72D: FLdPr var_88
  loc_AAB730: Me.Text = from_stack_1
  loc_AAB735: FFree1Ad var_88
  loc_AAB738: FLdRfVar var_90
  loc_AAB73B: FLdPr Me
  loc_AAB73E: VCallAd Control_ID_AnioDifuTxt
  loc_AAB741: FStAdFunc var_88
  loc_AAB744: FLdPr var_88
  loc_AAB747:  = Me.Text
  loc_AAB74C: LitI2_Byte &HFF
  loc_AAB74E: LitI2_Byte 0
  loc_AAB750: ILdRf var_90
  loc_AAB753: LitStr "ingrese la cantidad de años de la consecion"
  loc_AAB756: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AAB75B: FStStrNoPop var_A4
  loc_AAB75E: FLdPr Me
  loc_AAB761: MemStStrCopy
  loc_AAB765: FFreeStr var_90 = ""
  loc_AAB76C: FFree1Ad var_88
  loc_AAB76F: FLdPr Me
  loc_AAB772: MemLdStr global_88
  loc_AAB775: LitStr vbNullString
  loc_AAB778: NeStr
  loc_AAB77A: BranchF loc_AAB7A0
  loc_AAB77D: FLdPr Me
  loc_AAB780: MemLdStr global_88
  loc_AAB783: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAB788: FLdPr Me
  loc_AAB78B: VCallAd Control_ID_AnioDifuTxt
  loc_AAB78E: CVarAd
  loc_AAB792: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAB797: FFree1Var var_A0 = ""
  loc_AAB79A: LitI2_Byte &HFF
  loc_AAB79C: IStI2 Cancel
  loc_AAB79F: ExitProcHresult
  loc_AAB7A0: ExitProcHresult
End Sub

Private Sub FeveDifuMsk_UnknownEvent_0 '9BDAA0
  'Data Table: 537378
  loc_9BDA8C: FLdPr Me
  loc_9BDA8F: VCallAd Control_ID_FeveDifuMsk
  loc_9BDA92: CVarAd
  loc_9BDA96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDA9B: FFree1Var var_94 = ""
  loc_9BDA9E: ExitProcHresult
End Sub

Private Sub FeveDifuMsk_UnknownEvent_8 'ABFAC0
  'Data Table: 537378
  loc_ABF9C4: FLdPr Me
  loc_ABF9C7: VCallAd Control_ID_FeveDifuMsk
  loc_ABF9CA: FStAdFunc var_88
  loc_ABF9CD: FLdPr var_88
  loc_ABF9D0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABF9D7: CBoolVar
  loc_ABF9D9: LitI2_Byte &HFF
  loc_ABF9DB: EqI2
  loc_ABF9DC: FFree1Ad var_88
  loc_ABF9DF: FFree1Var var_98 = ""
  loc_ABF9E2: BranchF loc_ABFABF
  loc_ABF9E5: FLdPr Me
  loc_ABF9E8: VCallAd Control_ID_FeveDifuMsk
  loc_ABF9EB: FStAdFunc var_88
  loc_ABF9EE: FLdPr var_88
  loc_ABF9F1: LateIdLdVar var_98 DispID_22 0
  loc_ABF9F8: CStrVarTmp
  loc_ABF9F9: FStStrNoPop var_9C
  loc_ABF9FC: LitStr vbNullString
  loc_ABF9FF: NeStr
  loc_ABFA01: FFree1Str var_9C
  loc_ABFA04: FFree1Ad var_88
  loc_ABFA07: FFree1Var var_98 = ""
  loc_ABFA0A: BranchF loc_ABFABF
  loc_ABFA0D: LitVarStr var_AC, vbNullString
  loc_ABFA12: PopAdLdVar
  loc_ABFA13: FLdPr Me
  loc_ABFA16: VCallAd Control_ID_FeveDifuMsk
  loc_ABFA19: FStAdFunc var_88
  loc_ABFA1C: FLdPr var_88
  loc_ABFA1F: LateIdSt
  loc_ABFA24: FFree1Ad var_88
  loc_ABFA27: FLdPr Me
  loc_ABFA2A: VCallAd Control_ID_FeveDifuMsk
  loc_ABFA2D: FStAdFunc var_88
  loc_ABFA30: FLdPr var_88
  loc_ABFA33: LateIdLdVar var_98 DispID_22 0
  loc_ABFA3A: CStrVarTmp
  loc_ABFA3B: FStStrNoPop var_9C
  loc_ABFA3E: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ABFA43: FStStrNoPop var_C0
  loc_ABFA46: FLdPr Me
  loc_ABFA49: MemStStrCopy
  loc_ABFA4D: FFreeStr var_9C = ""
  loc_ABFA54: FFree1Ad var_88
  loc_ABFA57: FFree1Var var_98 = ""
  loc_ABFA5A: LitVarStr var_AC, "##/##/####"
  loc_ABFA5F: PopAdLdVar
  loc_ABFA60: FLdPr Me
  loc_ABFA63: VCallAd Control_ID_FeveDifuMsk
  loc_ABFA66: FStAdFunc var_88
  loc_ABFA69: FLdPr var_88
  loc_ABFA6C: LateIdSt
  loc_ABFA71: FFree1Ad var_88
  loc_ABFA74: LitVarI2 var_AC, 10
  loc_ABFA79: PopAdLdVar
  loc_ABFA7A: FLdPr Me
  loc_ABFA7D: VCallAd Control_ID_FeveDifuMsk
  loc_ABFA80: FStAdFunc var_88
  loc_ABFA83: FLdPr var_88
  loc_ABFA86: LateIdSt
  loc_ABFA8B: FFree1Ad var_88
  loc_ABFA8E: FLdPr Me
  loc_ABFA91: MemLdStr global_88
  loc_ABFA94: LitStr vbNullString
  loc_ABFA97: NeStr
  loc_ABFA99: BranchF loc_ABFABF
  loc_ABFA9C: FLdPr Me
  loc_ABFA9F: MemLdStr global_88
  loc_ABFAA2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABFAA7: FLdPr Me
  loc_ABFAAA: VCallAd Control_ID_FeveDifuMsk
  loc_ABFAAD: CVarAd
  loc_ABFAB1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABFAB6: FFree1Var var_98 = ""
  loc_ABFAB9: LitI2_Byte &HFF
  loc_ABFABB: IStI2 Cancel
  loc_ABFABE: ExitProcHresult
  loc_ABFABF: ExitProcHresult
End Sub

Private Sub PeriDifuTxt_GotFocus() '9BC228
  'Data Table: 537378
  loc_9BC214: FLdPr Me
  loc_9BC217: VCallAd Control_ID_PeriDifuTxt
  loc_9BC21A: CVarAd
  loc_9BC21E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC223: FFree1Var var_94 = ""
  loc_9BC226: ExitProcHresult
End Sub

Private Sub PeriDifuTxt_KeyPress(KeyAscii As Integer) '9D836C
  'Data Table: 537378
  loc_9D8354: LitStr "0123456789"
  loc_9D8357: FStStrCopy var_88
  loc_9D835A: FLdRfVar var_88
  loc_9D835D: ILdRf KeyAscii
  loc_9D8360: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8365: IStI2 KeyAscii
  loc_9D8368: FFree1Str var_88
  loc_9D836B: ExitProcHresult
End Sub

Private Sub PeriDifuTxt_Validate(Cancel As Boolean) 'AAAE38
  'Data Table: 537378
  loc_AAAD6C: FLdRfVar var_8A
  loc_AAAD6F: FLdPr Me
  loc_AAAD72: VCallAd Control_ID_PeriDifuTxt
  loc_AAAD75: FStAdFunc var_88
  loc_AAAD78: FLdPr var_88
  loc_AAAD7B:  = Me.Enabled
  loc_AAAD80: FLdI2 var_8A
  loc_AAAD83: LitI2_Byte &HFF
  loc_AAAD85: EqI2
  loc_AAAD86: FFree1Ad var_88
  loc_AAAD89: BranchF loc_AAAE34
  loc_AAAD8C: FLdRfVar var_90
  loc_AAAD8F: FLdPr Me
  loc_AAAD92: VCallAd Control_ID_PeriDifuTxt
  loc_AAAD95: FStAdFunc var_88
  loc_AAAD98: FLdPr var_88
  loc_AAAD9B:  = Me.Text
  loc_AAADA0: FLdZeroAd var_90
  loc_AAADA3: CVarStr var_A0
  loc_AAADA6: ImpAdCallI2 IsNumeric()
  loc_AAADAB: NotI4
  loc_AAADAC: FFree1Ad var_88
  loc_AAADAF: FFree1Var var_A0 = ""
  loc_AAADB2: BranchF loc_AAADCC
  loc_AAADB5: LitStr "0"
  loc_AAADB8: FLdPr Me
  loc_AAADBB: VCallAd Control_ID_PeriDifuTxt
  loc_AAADBE: FStAdFunc var_88
  loc_AAADC1: FLdPr var_88
  loc_AAADC4: Me.Text = from_stack_1
  loc_AAADC9: FFree1Ad var_88
  loc_AAADCC: FLdRfVar var_90
  loc_AAADCF: FLdPr Me
  loc_AAADD2: VCallAd Control_ID_PeriDifuTxt
  loc_AAADD5: FStAdFunc var_88
  loc_AAADD8: FLdPr var_88
  loc_AAADDB:  = Me.Text
  loc_AAADE0: LitI2_Byte &HFF
  loc_AAADE2: LitI2_Byte 0
  loc_AAADE4: ILdRf var_90
  loc_AAADE7: LitStr "ingrese el año que inicia la concesion"
  loc_AAADEA: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AAADEF: FStStrNoPop var_A4
  loc_AAADF2: FLdPr Me
  loc_AAADF5: MemStStrCopy
  loc_AAADF9: FFreeStr var_90 = ""
  loc_AAAE00: FFree1Ad var_88
  loc_AAAE03: FLdPr Me
  loc_AAAE06: MemLdStr global_88
  loc_AAAE09: LitStr vbNullString
  loc_AAAE0C: NeStr
  loc_AAAE0E: BranchF loc_AAAE34
  loc_AAAE11: FLdPr Me
  loc_AAAE14: MemLdStr global_88
  loc_AAAE17: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAAE1C: FLdPr Me
  loc_AAAE1F: VCallAd Control_ID_PeriDifuTxt
  loc_AAAE22: CVarAd
  loc_AAAE26: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAAE2B: FFree1Var var_A0 = ""
  loc_AAAE2E: LitI2_Byte &HFF
  loc_AAAE30: IStI2 Cancel
  loc_AAAE33: ExitProcHresult
  loc_AAAE34: ExitProcHresult
End Sub

Private Sub MesDifuTxt_GotFocus() '9C10A0
  'Data Table: 537378
  loc_9C108C: FLdPr Me
  loc_9C108F: VCallAd Control_ID_MesDifuTxt
  loc_9C1092: CVarAd
  loc_9C1096: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C109B: FFree1Var var_94 = ""
  loc_9C109E: ExitProcHresult
End Sub

Private Sub MesDifuTxt_KeyPress(KeyAscii As Integer) '9D88C4
  'Data Table: 537378
  loc_9D88AC: LitStr "0123456789"
  loc_9D88AF: FStStrCopy var_88
  loc_9D88B2: FLdRfVar var_88
  loc_9D88B5: ILdRf KeyAscii
  loc_9D88B8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D88BD: IStI2 KeyAscii
  loc_9D88C0: FFree1Str var_88
  loc_9D88C3: ExitProcHresult
End Sub

Private Sub MesDifuTxt_Validate(Cancel As Boolean) 'AAA09C
  'Data Table: 537378
  loc_AA9FD0: FLdRfVar var_8A
  loc_AA9FD3: FLdPr Me
  loc_AA9FD6: VCallAd Control_ID_MesDifuTxt
  loc_AA9FD9: FStAdFunc var_88
  loc_AA9FDC: FLdPr var_88
  loc_AA9FDF:  = Me.Enabled
  loc_AA9FE4: FLdI2 var_8A
  loc_AA9FE7: LitI2_Byte &HFF
  loc_AA9FE9: EqI2
  loc_AA9FEA: FFree1Ad var_88
  loc_AA9FED: BranchF loc_AAA098
  loc_AA9FF0: FLdRfVar var_90
  loc_AA9FF3: FLdPr Me
  loc_AA9FF6: VCallAd Control_ID_MesDifuTxt
  loc_AA9FF9: FStAdFunc var_88
  loc_AA9FFC: FLdPr var_88
  loc_AA9FFF:  = Me.Text
  loc_AAA004: FLdZeroAd var_90
  loc_AAA007: CVarStr var_A0
  loc_AAA00A: ImpAdCallI2 IsNumeric()
  loc_AAA00F: NotI4
  loc_AAA010: FFree1Ad var_88
  loc_AAA013: FFree1Var var_A0 = ""
  loc_AAA016: BranchF loc_AAA030
  loc_AAA019: LitStr "0"
  loc_AAA01C: FLdPr Me
  loc_AAA01F: VCallAd Control_ID_MesDifuTxt
  loc_AAA022: FStAdFunc var_88
  loc_AAA025: FLdPr var_88
  loc_AAA028: Me.Text = from_stack_1
  loc_AAA02D: FFree1Ad var_88
  loc_AAA030: FLdRfVar var_90
  loc_AAA033: FLdPr Me
  loc_AAA036: VCallAd Control_ID_MesDifuTxt
  loc_AAA039: FStAdFunc var_88
  loc_AAA03C: FLdPr var_88
  loc_AAA03F:  = Me.Text
  loc_AAA044: LitI2_Byte &HFF
  loc_AAA046: LitI2_Byte 0
  loc_AAA048: ILdRf var_90
  loc_AAA04B: LitStr "ingrese el mes que inicia la concesion"
  loc_AAA04E: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AAA053: FStStrNoPop var_A4
  loc_AAA056: FLdPr Me
  loc_AAA059: MemStStrCopy
  loc_AAA05D: FFreeStr var_90 = ""
  loc_AAA064: FFree1Ad var_88
  loc_AAA067: FLdPr Me
  loc_AAA06A: MemLdStr global_88
  loc_AAA06D: LitStr vbNullString
  loc_AAA070: NeStr
  loc_AAA072: BranchF loc_AAA098
  loc_AAA075: FLdPr Me
  loc_AAA078: MemLdStr global_88
  loc_AAA07B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA080: FLdPr Me
  loc_AAA083: VCallAd Control_ID_MesDifuTxt
  loc_AAA086: CVarAd
  loc_AAA08A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA08F: FFree1Var var_A0 = ""
  loc_AAA092: LitI2_Byte &HFF
  loc_AAA094: IStI2 Cancel
  loc_AAA097: ExitProcHresult
  loc_AAA098: ExitProcHresult
End Sub

Private Sub CacaDifuTxt_GotFocus() '9BB7C0
  'Data Table: 537378
  loc_9BB7AC: FLdPr Me
  loc_9BB7AF: VCallAd Control_ID_CacaDifuTxt
  loc_9BB7B2: CVarAd
  loc_9BB7B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB7BB: FFree1Var var_94 = ""
  loc_9BB7BE: ExitProcHresult
End Sub

Private Sub CacaDifuTxt_KeyPress(KeyAscii As Integer) '9D9D40
  'Data Table: 537378
  loc_9D9D28: LitStr "0123456789"
  loc_9D9D2B: FStStrCopy var_88
  loc_9D9D2E: FLdRfVar var_88
  loc_9D9D31: ILdRf KeyAscii
  loc_9D9D34: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9D39: IStI2 KeyAscii
  loc_9D9D3C: FFree1Str var_88
  loc_9D9D3F: ExitProcHresult
End Sub

Private Sub CacaDifuTxt_Validate(Cancel As Boolean) 'AABAC8
  'Data Table: 537378
  loc_AAB9FC: FLdRfVar var_8A
  loc_AAB9FF: FLdPr Me
  loc_AABA02: VCallAd Control_ID_CacaDifuTxt
  loc_AABA05: FStAdFunc var_88
  loc_AABA08: FLdPr var_88
  loc_AABA0B:  = Me.Enabled
  loc_AABA10: FLdI2 var_8A
  loc_AABA13: LitI2_Byte &HFF
  loc_AABA15: EqI2
  loc_AABA16: FFree1Ad var_88
  loc_AABA19: BranchF loc_AABAC4
  loc_AABA1C: FLdRfVar var_90
  loc_AABA1F: FLdPr Me
  loc_AABA22: VCallAd Control_ID_CacaDifuTxt
  loc_AABA25: FStAdFunc var_88
  loc_AABA28: FLdPr var_88
  loc_AABA2B:  = Me.Text
  loc_AABA30: FLdZeroAd var_90
  loc_AABA33: CVarStr var_A0
  loc_AABA36: ImpAdCallI2 IsNumeric()
  loc_AABA3B: NotI4
  loc_AABA3C: FFree1Ad var_88
  loc_AABA3F: FFree1Var var_A0 = ""
  loc_AABA42: BranchF loc_AABA5C
  loc_AABA45: LitStr "0"
  loc_AABA48: FLdPr Me
  loc_AABA4B: VCallAd Control_ID_CacaDifuTxt
  loc_AABA4E: FStAdFunc var_88
  loc_AABA51: FLdPr var_88
  loc_AABA54: Me.Text = from_stack_1
  loc_AABA59: FFree1Ad var_88
  loc_AABA5C: FLdRfVar var_90
  loc_AABA5F: FLdPr Me
  loc_AABA62: VCallAd Control_ID_CacaDifuTxt
  loc_AABA65: FStAdFunc var_88
  loc_AABA68: FLdPr var_88
  loc_AABA6B:  = Me.Text
  loc_AABA70: LitI2_Byte &HFF
  loc_AABA72: LitI2_Byte 0
  loc_AABA74: ILdRf var_90
  loc_AABA77: LitStr "ingrese la cantidad de cajones"
  loc_AABA7A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AABA7F: FStStrNoPop var_A4
  loc_AABA82: FLdPr Me
  loc_AABA85: MemStStrCopy
  loc_AABA89: FFreeStr var_90 = ""
  loc_AABA90: FFree1Ad var_88
  loc_AABA93: FLdPr Me
  loc_AABA96: MemLdStr global_88
  loc_AABA99: LitStr vbNullString
  loc_AABA9C: NeStr
  loc_AABA9E: BranchF loc_AABAC4
  loc_AABAA1: FLdPr Me
  loc_AABAA4: MemLdStr global_88
  loc_AABAA7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AABAAC: FLdPr Me
  loc_AABAAF: VCallAd Control_ID_CacaDifuTxt
  loc_AABAB2: CVarAd
  loc_AABAB6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AABABB: FFree1Var var_A0 = ""
  loc_AABABE: LitI2_Byte &HFF
  loc_AABAC0: IStI2 Cancel
  loc_AABAC3: ExitProcHresult
  loc_AABAC4: ExitProcHresult
  loc_AABAC5: DOC
End Sub

Private Sub CucuPersTxt_GotFocus() '9BBE38
  'Data Table: 537378
  loc_9BBE24: FLdPr Me
  loc_9BBE27: VCallAd Control_ID_CucuPersTxt
  loc_9BBE2A: CVarAd
  loc_9BBE2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBE33: FFree1Var var_94 = ""
  loc_9BBE36: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) '9D953C
  'Data Table: 537378
  loc_9D9524: LitStr "1234567890"
  loc_9D9527: FStStrCopy var_88
  loc_9D952A: FLdRfVar var_88
  loc_9D952D: ILdRf KeyAscii
  loc_9D9530: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9535: IStI2 KeyAscii
  loc_9D9538: FFree1Str var_88
  loc_9D953B: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'AA9E84
  'Data Table: 537378
  loc_AA9DBC: FLdRfVar var_8A
  loc_AA9DBF: FLdPr Me
  loc_AA9DC2: VCallAd Control_ID_cmdCancelar
  loc_AA9DC5: FStAdFunc var_88
  loc_AA9DC8: FLdPr var_88
  loc_AA9DCB:  = Me.Value
  loc_AA9DD0: FLdI2 var_8A
  loc_AA9DD3: NotI4
  loc_AA9DD4: FLdRfVar var_92
  loc_AA9DD7: FLdPr Me
  loc_AA9DDA: VCallAd Control_ID_CucuPersTxt
  loc_AA9DDD: FStAdFunc var_90
  loc_AA9DE0: FLdPr var_90
  loc_AA9DE3:  = Me.Enabled
  loc_AA9DE8: FLdI2 var_92
  loc_AA9DEB: AndI4
  loc_AA9DEC: FFreeAd var_88 = ""
  loc_AA9DF3: BranchF loc_AA9E83
  loc_AA9DF6: FLdRfVar var_98
  loc_AA9DF9: FLdPr Me
  loc_AA9DFC: VCallAd Control_ID_CucuPersTxt
  loc_AA9DFF: FStAdFunc var_88
  loc_AA9E02: FLdPr var_88
  loc_AA9E05:  = Me.Text
  loc_AA9E0A: FLdPr Me
  loc_AA9E0D: MemLdRfVar from_stack_1.global_76
  loc_AA9E10: NewIfNullRf
  loc_AA9E14: ILdRf var_98
  loc_AA9E17: ImpAdCallI2 Proc_270_6_B02218(, )
  loc_AA9E1C: LitI2_Byte &HFF
  loc_AA9E1E: EqI2
  loc_AA9E1F: FFree1Str var_98
  loc_AA9E22: FFree1Ad var_88
  loc_AA9E25: BranchF loc_AA9E56
  loc_AA9E28: FLdRfVar var_98
  loc_AA9E2B: FLdPr Me
  loc_AA9E2E: MemLdRfVar from_stack_1.global_76
  loc_AA9E31: NewIfNullPr tblPersona
  loc_AA9E34: from_stack_1v = tblPersona.DetaPersGet()
  loc_AA9E39: ILdRf var_98
  loc_AA9E3C: FLdPr Me
  loc_AA9E3F: VCallAd Control_ID_DetaApeNomLbl
  loc_AA9E42: FStAdFunc var_88
  loc_AA9E45: FLdPr var_88
  loc_AA9E48: Me.Caption = from_stack_1
  loc_AA9E4D: FFree1Str var_98
  loc_AA9E50: FFree1Ad var_88
  loc_AA9E53: Branch loc_AA9E83
  loc_AA9E56: LitStr "No existe el contribuyente"
  loc_AA9E59: FLdPr Me
  loc_AA9E5C: MemStStrCopy
  loc_AA9E60: FLdPr Me
  loc_AA9E63: MemLdStr global_88
  loc_AA9E66: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA9E6B: FLdPr Me
  loc_AA9E6E: VCallAd Control_ID_CucuPersTxt
  loc_AA9E71: CVarAd
  loc_AA9E75: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_AA9E7A: FFree1Var var_A8 = ""
  loc_AA9E7D: LitI2_Byte &HFF
  loc_AA9E7F: IStI2 Cancel
  loc_AA9E82: ExitProcHresult
  loc_AA9E83: ExitProcHresult
End Sub

Private Sub sstDifunto_Click(PreviousTab As Integer) 'A75CDC
  'Data Table: 537378
  loc_A75C74: FLdPrThis
  loc_A75C75: VCallAd Control_ID_sstDifunto
  loc_A75C78: FStAdFunc var_88
  loc_A75C7B: FLdPr var_88
  loc_A75C7E: LateIdLdVar var_98 DispID_4 0
  loc_A75C85: CI2Var
  loc_A75C86: LitI2_Byte 1
  loc_A75C88: EqI2
  loc_A75C89: FLdPrThis
  loc_A75C8A: VCallAd Control_ID_sstDifunto
  loc_A75C8D: FStAdFunc var_9C
  loc_A75C90: FLdPr var_9C
  loc_A75C93: LateIdLdVar var_AC DispID_4 0
  loc_A75C9A: CI2Var
  loc_A75C9B: LitI2_Byte 2
  loc_A75C9D: EqI2
  loc_A75C9E: OrI4
  loc_A75C9F: FLdPrThis
  loc_A75CA0: VCallAd Control_ID_sstDifunto
  loc_A75CA3: FStAdFunc var_B0
  loc_A75CA6: FLdPr var_B0
  loc_A75CA9: LateIdLdVar var_C0 DispID_4 0
  loc_A75CB0: CI2Var
  loc_A75CB1: LitI2_Byte 3
  loc_A75CB3: EqI2
  loc_A75CB4: OrI4
  loc_A75CB5: FFreeAd var_88 = "": var_9C = ""
  loc_A75CBE: FFreeVar var_98 = "": var_AC = ""
  loc_A75CC7: BranchF loc_A75CD9
  loc_A75CCA: LitI2_Byte 0
  loc_A75CCC: LitVarI2 var_98, 0
  loc_A75CD1: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A75CD6: FFree1Var var_98 = ""
  loc_A75CD9: ExitProcHresult
End Sub

Private Sub DetaDediTxt_GotFocus() '9BC1E0
  'Data Table: 537378
  loc_9BC1CC: FLdPr Me
  loc_9BC1CF: VCallAd Control_ID_DetaDediTxt
  loc_9BC1D2: CVarAd
  loc_9BC1D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC1DB: FFree1Var var_94 = ""
  loc_9BC1DE: ExitProcHresult
End Sub

Private Sub DetaDediTxt_Validate(Cancel As Boolean) 'A90534
  'Data Table: 537378
  loc_A90494: FLdRfVar var_8A
  loc_A90497: FLdPr Me
  loc_A9049A: VCallAd Control_ID_cmdCancelar
  loc_A9049D: FStAdFunc var_88
  loc_A904A0: FLdPr var_88
  loc_A904A3:  = Me.Value
  loc_A904A8: FLdI2 var_8A
  loc_A904AB: NotI4
  loc_A904AC: FLdRfVar var_92
  loc_A904AF: FLdPr Me
  loc_A904B2: VCallAd Control_ID_DetaDediTxt
  loc_A904B5: FStAdFunc var_90
  loc_A904B8: FLdPr var_90
  loc_A904BB:  = Me.Enabled
  loc_A904C0: FLdI2 var_92
  loc_A904C3: AndI4
  loc_A904C4: FFreeAd var_88 = ""
  loc_A904CB: BranchF loc_A90532
  loc_A904CE: FLdRfVar var_98
  loc_A904D1: FLdPr Me
  loc_A904D4: VCallAd Control_ID_DetaDediTxt
  loc_A904D7: FStAdFunc var_88
  loc_A904DA: FLdPr var_88
  loc_A904DD:  = Me.Text
  loc_A904E2: ILdRf var_98
  loc_A904E5: LitStr "ingrese el nombre del difunto"
  loc_A904E8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A904ED: FStStrNoPop var_9C
  loc_A904F0: FLdPr Me
  loc_A904F3: MemStStrCopy
  loc_A904F7: FFreeStr var_98 = ""
  loc_A904FE: FFree1Ad var_88
  loc_A90501: FLdPr Me
  loc_A90504: MemLdStr global_88
  loc_A90507: LitStr vbNullString
  loc_A9050A: NeStr
  loc_A9050C: BranchF loc_A90532
  loc_A9050F: FLdPr Me
  loc_A90512: MemLdStr global_88
  loc_A90515: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9051A: FLdPr Me
  loc_A9051D: VCallAd Control_ID_DetaDediTxt
  loc_A90520: CVarAd
  loc_A90524: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A90529: FFree1Var var_AC = ""
  loc_A9052C: LitI2_Byte &HFF
  loc_A9052E: IStI2 Cancel
  loc_A90531: ExitProcHresult
  loc_A90532: ExitProcHresult
End Sub

Private Sub FefaDediMsk_UnknownEvent_0 '9BDA10
  'Data Table: 537378
  loc_9BD9FC: FLdPr Me
  loc_9BD9FF: VCallAd Control_ID_FefaDediMsk
  loc_9BDA02: CVarAd
  loc_9BDA06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDA0B: FFree1Var var_94 = ""
  loc_9BDA0E: ExitProcHresult
End Sub

Private Sub FefaDediMsk_UnknownEvent_8 'AC05DC
  'Data Table: 537378
  loc_AC04E0: FLdPr Me
  loc_AC04E3: VCallAd Control_ID_FefaDediMsk
  loc_AC04E6: FStAdFunc var_88
  loc_AC04E9: FLdPr var_88
  loc_AC04EC: LateIdLdVar var_98 DispID_13 -32767
  loc_AC04F3: CBoolVar
  loc_AC04F5: LitI2_Byte &HFF
  loc_AC04F7: EqI2
  loc_AC04F8: FFree1Ad var_88
  loc_AC04FB: FFree1Var var_98 = ""
  loc_AC04FE: BranchF loc_AC05DB
  loc_AC0501: FLdPr Me
  loc_AC0504: VCallAd Control_ID_FefaDediMsk
  loc_AC0507: FStAdFunc var_88
  loc_AC050A: FLdPr var_88
  loc_AC050D: LateIdLdVar var_98 DispID_22 0
  loc_AC0514: CStrVarTmp
  loc_AC0515: FStStrNoPop var_9C
  loc_AC0518: LitStr vbNullString
  loc_AC051B: NeStr
  loc_AC051D: FFree1Str var_9C
  loc_AC0520: FFree1Ad var_88
  loc_AC0523: FFree1Var var_98 = ""
  loc_AC0526: BranchF loc_AC05DB
  loc_AC0529: LitVarStr var_AC, vbNullString
  loc_AC052E: PopAdLdVar
  loc_AC052F: FLdPr Me
  loc_AC0532: VCallAd Control_ID_FefaDediMsk
  loc_AC0535: FStAdFunc var_88
  loc_AC0538: FLdPr var_88
  loc_AC053B: LateIdSt
  loc_AC0540: FFree1Ad var_88
  loc_AC0543: FLdPr Me
  loc_AC0546: VCallAd Control_ID_FefaDediMsk
  loc_AC0549: FStAdFunc var_88
  loc_AC054C: FLdPr var_88
  loc_AC054F: LateIdLdVar var_98 DispID_22 0
  loc_AC0556: CStrVarTmp
  loc_AC0557: FStStrNoPop var_9C
  loc_AC055A: ImpAdCallI2 Proc_18_10_A46E80()
  loc_AC055F: FStStrNoPop var_C0
  loc_AC0562: FLdPr Me
  loc_AC0565: MemStStrCopy
  loc_AC0569: FFreeStr var_9C = ""
  loc_AC0570: FFree1Ad var_88
  loc_AC0573: FFree1Var var_98 = ""
  loc_AC0576: LitVarStr var_AC, "##/##/####"
  loc_AC057B: PopAdLdVar
  loc_AC057C: FLdPr Me
  loc_AC057F: VCallAd Control_ID_FefaDediMsk
  loc_AC0582: FStAdFunc var_88
  loc_AC0585: FLdPr var_88
  loc_AC0588: LateIdSt
  loc_AC058D: FFree1Ad var_88
  loc_AC0590: LitVarI2 var_AC, 10
  loc_AC0595: PopAdLdVar
  loc_AC0596: FLdPr Me
  loc_AC0599: VCallAd Control_ID_FefaDediMsk
  loc_AC059C: FStAdFunc var_88
  loc_AC059F: FLdPr var_88
  loc_AC05A2: LateIdSt
  loc_AC05A7: FFree1Ad var_88
  loc_AC05AA: FLdPr Me
  loc_AC05AD: MemLdStr global_88
  loc_AC05B0: LitStr vbNullString
  loc_AC05B3: NeStr
  loc_AC05B5: BranchF loc_AC05DB
  loc_AC05B8: FLdPr Me
  loc_AC05BB: MemLdStr global_88
  loc_AC05BE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC05C3: FLdPr Me
  loc_AC05C6: VCallAd Control_ID_FefaDediMsk
  loc_AC05C9: CVarAd
  loc_AC05CD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC05D2: FFree1Var var_98 = ""
  loc_AC05D5: LitI2_Byte &HFF
  loc_AC05D7: IStI2 Cancel
  loc_AC05DA: ExitProcHresult
  loc_AC05DB: ExitProcHresult
End Sub

Private Sub CodiCemeTxt_GotFocus() '9BB6A0
  'Data Table: 537378
  loc_9BB68C: FLdPr Me
  loc_9BB68F: VCallAd Control_ID_CodiCemeTxt
  loc_9BB692: CVarAd
  loc_9BB696: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB69B: FFree1Var var_94 = ""
  loc_9BB69E: ExitProcHresult
End Sub

Private Sub CodiCemeTxt_KeyPress(KeyAscii As Integer) '9D9DD8
  'Data Table: 537378
  loc_9D9DC0: LitStr "0123456789"
  loc_9D9DC3: FStStrCopy var_88
  loc_9D9DC6: FLdRfVar var_88
  loc_9D9DC9: ILdRf KeyAscii
  loc_9D9DCC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9DD1: IStI2 KeyAscii
  loc_9D9DD4: FFree1Str var_88
  loc_9D9DD7: ExitProcHresult
End Sub

Private Sub CodiCemeTxt_Validate(Cancel As Boolean) 'AC0D40
  'Data Table: 537378
  loc_AC0C48: FLdRfVar var_8A
  loc_AC0C4B: FLdPr Me
  loc_AC0C4E: VCallAd Control_ID_cmdCancelar
  loc_AC0C51: FStAdFunc var_88
  loc_AC0C54: FLdPr var_88
  loc_AC0C57:  = Me.Value
  loc_AC0C5C: FLdI2 var_8A
  loc_AC0C5F: NotI4
  loc_AC0C60: FLdRfVar var_92
  loc_AC0C63: FLdPr Me
  loc_AC0C66: VCallAd Control_ID_CodiCemeTxt
  loc_AC0C69: FStAdFunc var_90
  loc_AC0C6C: FLdPr var_90
  loc_AC0C6F:  = Me.Enabled
  loc_AC0C74: FLdI2 var_92
  loc_AC0C77: AndI4
  loc_AC0C78: FFreeAd var_88 = ""
  loc_AC0C7F: BranchF loc_AC0D3D
  loc_AC0C82: FLdRfVar var_98
  loc_AC0C85: FLdPr Me
  loc_AC0C88: VCallAd Control_ID_CodiCemeTxt
  loc_AC0C8B: FStAdFunc var_88
  loc_AC0C8E: FLdPr var_88
  loc_AC0C91:  = Me.Text
  loc_AC0C96: ILdRf var_98
  loc_AC0C99: ImpAdCallI2 Proc_18_27_A554C4()
  loc_AC0C9E: FStStrNoPop var_9C
  loc_AC0CA1: FLdPr Me
  loc_AC0CA4: MemStStrCopy
  loc_AC0CA8: FFreeStr var_98 = ""
  loc_AC0CAF: FFree1Ad var_88
  loc_AC0CB2: FLdPr Me
  loc_AC0CB5: MemLdStr global_88
  loc_AC0CB8: LitStr vbNullString
  loc_AC0CBB: NeStr
  loc_AC0CBD: BranchF loc_AC0CFD
  loc_AC0CC0: FLdPr Me
  loc_AC0CC3: MemLdStr global_88
  loc_AC0CC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC0CCB: LitStr vbNullString
  loc_AC0CCE: FLdPr Me
  loc_AC0CD1: VCallAd Control_ID_DetaCemeLbl
  loc_AC0CD4: FStAdFunc var_88
  loc_AC0CD7: FLdPr var_88
  loc_AC0CDA: Me.Caption = from_stack_1
  loc_AC0CDF: FFree1Ad var_88
  loc_AC0CE2: FLdPr Me
  loc_AC0CE5: VCallAd Control_ID_CodiCemeTxt
  loc_AC0CE8: CVarAd
  loc_AC0CEC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC0CF1: FFree1Var var_AC = ""
  loc_AC0CF4: LitI2_Byte &HFF
  loc_AC0CF6: IStI2 Cancel
  loc_AC0CF9: ExitProcHresult
  loc_AC0CFA: Branch loc_AC0D3D
  loc_AC0CFD: FLdRfVar var_98
  loc_AC0D00: FLdPr Me
  loc_AC0D03: VCallAd Control_ID_CodiCemeTxt
  loc_AC0D06: FStAdFunc var_88
  loc_AC0D09: FLdPr var_88
  loc_AC0D0C:  = Me.Text
  loc_AC0D11: ILdRf var_98
  loc_AC0D14: CI2Str
  loc_AC0D16: ImpAdCallI2 Proc_270_29_A7A498()
  loc_AC0D1B: FStStrNoPop var_9C
  loc_AC0D1E: FLdPr Me
  loc_AC0D21: VCallAd Control_ID_DetaCemeLbl
  loc_AC0D24: FStAdFunc var_90
  loc_AC0D27: FLdPr var_90
  loc_AC0D2A: Me.Caption = from_stack_1
  loc_AC0D2F: FFreeStr var_98 = ""
  loc_AC0D36: FFreeAd var_88 = ""
  loc_AC0D3D: ExitProcHresult
End Sub

Private Sub CodiDifuTxt_GotFocus() '9BB730
  'Data Table: 537378
  loc_9BB71C: FLdPr Me
  loc_9BB71F: VCallAd Control_ID_CodiDifuTxt
  loc_9BB722: CVarAd
  loc_9BB726: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB72B: FFree1Var var_94 = ""
  loc_9BB72E: ExitProcHresult
End Sub

Private Sub CodiDifuTxt_KeyPress(KeyAscii As Integer) '9D99FC
  'Data Table: 537378
  loc_9D99E4: LitStr "0123456789"
  loc_9D99E7: FStStrCopy var_88
  loc_9D99EA: FLdRfVar var_88
  loc_9D99ED: ILdRf KeyAscii
  loc_9D99F0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D99F5: IStI2 KeyAscii
  loc_9D99F8: FFree1Str var_88
  loc_9D99FB: ExitProcHresult
End Sub

Private Sub CodiDifuTxt_Validate(Cancel As Boolean) 'AC9540
  'Data Table: 537378
  loc_AC9430: FLdRfVar var_8A
  loc_AC9433: FLdPr Me
  loc_AC9436: VCallAd Control_ID_cmdCancelar
  loc_AC9439: FStAdFunc var_88
  loc_AC943C: FLdPr var_88
  loc_AC943F:  = Me.Value
  loc_AC9444: FLdI2 var_8A
  loc_AC9447: NotI4
  loc_AC9448: FLdRfVar var_92
  loc_AC944B: FLdPr Me
  loc_AC944E: VCallAd Control_ID_CodiDifuTxt
  loc_AC9451: FStAdFunc var_90
  loc_AC9454: FLdPr var_90
  loc_AC9457:  = Me.Enabled
  loc_AC945C: FLdI2 var_92
  loc_AC945F: AndI4
  loc_AC9460: FFreeAd var_88 = ""
  loc_AC9467: BranchF loc_AC953F
  loc_AC946A: FLdRfVar var_98
  loc_AC946D: FLdPr Me
  loc_AC9470: VCallAd Control_ID_CodiDifuTxt
  loc_AC9473: FStAdFunc var_88
  loc_AC9476: FLdPr var_88
  loc_AC9479:  = Me.Text
  loc_AC947E: LitI2_Byte 0
  loc_AC9480: LitI2_Byte 0
  loc_AC9482: ILdRf var_98
  loc_AC9485: LitStr "codigo del registro"
  loc_AC9488: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AC948D: FStStrNoPop var_9C
  loc_AC9490: FLdPr Me
  loc_AC9493: MemStStrCopy
  loc_AC9497: FFreeStr var_98 = ""
  loc_AC949E: FFree1Ad var_88
  loc_AC94A1: FLdPr Me
  loc_AC94A4: MemLdStr global_88
  loc_AC94A7: LitStr vbNullString
  loc_AC94AA: NeStr
  loc_AC94AC: BranchF loc_AC94D2
  loc_AC94AF: FLdPr Me
  loc_AC94B2: MemLdStr global_88
  loc_AC94B5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC94BA: FLdPr Me
  loc_AC94BD: VCallAd Control_ID_CodiDifuTxt
  loc_AC94C0: CVarAd
  loc_AC94C4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC94C9: FFree1Var var_AC = ""
  loc_AC94CC: LitI2_Byte &HFF
  loc_AC94CE: IStI2 Cancel
  loc_AC94D1: ExitProcHresult
  loc_AC94D2: FLdRfVar var_9C
  loc_AC94D5: FLdRfVar var_98
  loc_AC94D8: FLdPr Me
  loc_AC94DB: VCallAd Control_ID_CodiDifuTxt
  loc_AC94DE: FStAdFunc var_88
  loc_AC94E1: FLdPr var_88
  loc_AC94E4:  = Me.Text
  loc_AC94E9: ILdRf var_98
  loc_AC94EC: FLdPr Me
  loc_AC94EF: MemLdRfVar from_stack_1.DifuntoCLS
  loc_AC94F2: NewIfNullPr clsdifunto
  loc_AC94F5: from_stack_2v = clsdifunto.ValidaClave(from_stack_1v)
  loc_AC94FA: ILdRf var_9C
  loc_AC94FD: FLdPr Me
  loc_AC9500: MemStStrCopy
  loc_AC9504: FFreeStr var_98 = ""
  loc_AC950B: FFree1Ad var_88
  loc_AC950E: FLdPr Me
  loc_AC9511: MemLdStr global_88
  loc_AC9514: LitStr vbNullString
  loc_AC9517: NeStr
  loc_AC9519: BranchF loc_AC953F
  loc_AC951C: FLdPr Me
  loc_AC951F: MemLdStr global_88
  loc_AC9522: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC9527: FLdPr Me
  loc_AC952A: VCallAd Control_ID_CodiDifuTxt
  loc_AC952D: CVarAd
  loc_AC9531: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC9536: FFree1Var var_AC = ""
  loc_AC9539: LitI2_Byte &HFF
  loc_AC953B: IStI2 Cancel
  loc_AC953E: ExitProcHresult
  loc_AC953F: ExitProcHresult
End Sub

Private Sub PorcRelaTxt_GotFocus() '9BCF18
  'Data Table: 537378
  loc_9BCF04: FLdPr Me
  loc_9BCF07: VCallAd Control_ID_PorcRelaTxt
  loc_9BCF0A: CVarAd
  loc_9BCF0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCF13: FFree1Var var_94 = ""
  loc_9BCF16: ExitProcHresult
End Sub

Private Sub PorcRelaTxt_KeyPress(KeyAscii As Integer) 'A071D0
  'Data Table: 537378
  loc_A0719C: LitStr "1234567890,."
  loc_A0719F: FStStrCopy var_88
  loc_A071A2: FLdRfVar var_88
  loc_A071A5: ILdRf KeyAscii
  loc_A071A8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A071AD: IStI2 KeyAscii
  loc_A071B0: FFree1Str var_88
  loc_A071B3: ILdI2 KeyAscii
  loc_A071B6: LitStr "."
  loc_A071B9: ImpAdCallI2 Asc()
  loc_A071BE: EqI2
  loc_A071BF: BranchF loc_A071CD
  loc_A071C2: LitStr ","
  loc_A071C5: ImpAdCallI2 Asc()
  loc_A071CA: IStI2 KeyAscii
  loc_A071CD: ExitProcHresult
End Sub

Private Sub PorcRelaTxt_LostFocus() 'A74578
  'Data Table: 537378
  loc_A74514: FLdRfVar var_8C
  loc_A74517: FLdPr Me
  loc_A7451A: VCallAd Control_ID_PorcRelaTxt
  loc_A7451D: FStAdFunc var_88
  loc_A74520: FLdPr var_88
  loc_A74523:  = Me.Text
  loc_A74528: LitI4 1
  loc_A7452D: LitI4 1
  loc_A74532: LitVarStr var_AC, "0.00"
  loc_A74537: FStVarCopyObj var_BC
  loc_A7453A: FLdRfVar var_BC
  loc_A7453D: FLdZeroAd var_8C
  loc_A74540: CVarStr var_9C
  loc_A74543: FLdRfVar var_CC
  loc_A74546: ImpAdCallFPR4  = Format(, )
  loc_A7454B: FLdRfVar var_CC
  loc_A7454E: CStrVarVal var_D0
  loc_A74552: FLdPr Me
  loc_A74555: VCallAd Control_ID_PorcRelaTxt
  loc_A74558: FStAdFunc var_D4
  loc_A7455B: FLdPr var_D4
  loc_A7455E: Me.Text = from_stack_1
  loc_A74563: FFree1Str var_D0
  loc_A74566: FFreeAd var_88 = ""
  loc_A7456D: FFreeVar var_9C = "": var_BC = ""
  loc_A74576: ExitProcHresult
End Sub

Private Sub PorcRelaTxt_Validate(Cancel As Boolean) 'AAA6E4
  'Data Table: 537378
  loc_AAA618: FLdRfVar var_8A
  loc_AAA61B: FLdPr Me
  loc_AAA61E: VCallAd Control_ID_PorcRelaTxt
  loc_AAA621: FStAdFunc var_88
  loc_AAA624: FLdPr var_88
  loc_AAA627:  = Me.Enabled
  loc_AAA62C: FLdI2 var_8A
  loc_AAA62F: LitI2_Byte &HFF
  loc_AAA631: EqI2
  loc_AAA632: FFree1Ad var_88
  loc_AAA635: BranchF loc_AAA6E0
  loc_AAA638: FLdRfVar var_90
  loc_AAA63B: FLdPr Me
  loc_AAA63E: VCallAd Control_ID_PorcRelaTxt
  loc_AAA641: FStAdFunc var_88
  loc_AAA644: FLdPr var_88
  loc_AAA647:  = Me.Text
  loc_AAA64C: FLdZeroAd var_90
  loc_AAA64F: CVarStr var_A0
  loc_AAA652: ImpAdCallI2 IsNumeric()
  loc_AAA657: NotI4
  loc_AAA658: FFree1Ad var_88
  loc_AAA65B: FFree1Var var_A0 = ""
  loc_AAA65E: BranchF loc_AAA678
  loc_AAA661: LitStr "0"
  loc_AAA664: FLdPr Me
  loc_AAA667: VCallAd Control_ID_PorcRelaTxt
  loc_AAA66A: FStAdFunc var_88
  loc_AAA66D: FLdPr var_88
  loc_AAA670: Me.Text = from_stack_1
  loc_AAA675: FFree1Ad var_88
  loc_AAA678: FLdRfVar var_90
  loc_AAA67B: FLdPr Me
  loc_AAA67E: VCallAd Control_ID_PorcRelaTxt
  loc_AAA681: FStAdFunc var_88
  loc_AAA684: FLdPr var_88
  loc_AAA687:  = Me.Text
  loc_AAA68C: LitI2_Byte &HFF
  loc_AAA68E: LitI2_Byte 0
  loc_AAA690: ILdRf var_90
  loc_AAA693: LitStr "Porcentaje"
  loc_AAA696: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AAA69B: FStStrNoPop var_A4
  loc_AAA69E: FLdPr Me
  loc_AAA6A1: MemStStrCopy
  loc_AAA6A5: FFreeStr var_90 = ""
  loc_AAA6AC: FFree1Ad var_88
  loc_AAA6AF: FLdPr Me
  loc_AAA6B2: MemLdStr global_88
  loc_AAA6B5: LitStr vbNullString
  loc_AAA6B8: NeStr
  loc_AAA6BA: BranchF loc_AAA6E0
  loc_AAA6BD: FLdPr Me
  loc_AAA6C0: MemLdStr global_88
  loc_AAA6C3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA6C8: FLdPr Me
  loc_AAA6CB: VCallAd Control_ID_PorcRelaTxt
  loc_AAA6CE: CVarAd
  loc_AAA6D2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA6D7: FFree1Var var_A0 = ""
  loc_AAA6DA: LitI2_Byte &HFF
  loc_AAA6DC: IStI2 Cancel
  loc_AAA6DF: ExitProcHresult
  loc_AAA6E0: ExitProcHresult
  loc_AAA6E1: ModI2
  loc_AAA6E2: DivR8
End Sub

Private Sub MesDediMsk_UnknownEvent_0 '9BD398
  'Data Table: 537378
  loc_9BD384: FLdPr Me
  loc_9BD387: VCallAd Control_ID_MesDediMsk
  loc_9BD38A: CVarAd
  loc_9BD38E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD393: FFree1Var var_94 = ""
  loc_9BD396: ExitProcHresult
End Sub

Private Sub MesDediMsk_UnknownEvent_8 'A67BE0
  'Data Table: 537378
  loc_A67B78: FLdPr Me
  loc_A67B7B: VCallAd Control_ID_MesDediMsk
  loc_A67B7E: FStAdFunc var_88
  loc_A67B81: FLdPr var_88
  loc_A67B84: LateIdLdVar var_98 DispID_13 -32767
  loc_A67B8B: CBoolVar
  loc_A67B8D: LitI2_Byte &HFF
  loc_A67B8F: EqI2
  loc_A67B90: FFree1Ad var_88
  loc_A67B93: FFree1Var var_98 = ""
  loc_A67B96: BranchF loc_A67BDD
  loc_A67B99: FLdPr Me
  loc_A67B9C: VCallAd Control_ID_MesDediMsk
  loc_A67B9F: FStAdFunc var_88
  loc_A67BA2: FLdPr var_88
  loc_A67BA5: LateIdLdVar var_98 DispID_22 0
  loc_A67BAC: CStrVarTmp
  loc_A67BAD: CVarStr var_A8
  loc_A67BB0: ImpAdCallI2 IsNumeric()
  loc_A67BB5: NotI4
  loc_A67BB6: FFree1Ad var_88
  loc_A67BB9: FFreeVar var_98 = ""
  loc_A67BC0: BranchF loc_A67BDD
  loc_A67BC3: LitVarStr var_B8, "0"
  loc_A67BC8: PopAdLdVar
  loc_A67BC9: FLdPr Me
  loc_A67BCC: VCallAd Control_ID_MesDediMsk
  loc_A67BCF: FStAdFunc var_88
  loc_A67BD2: FLdPr var_88
  loc_A67BD5: LateIdSt
  loc_A67BDA: FFree1Ad var_88
  loc_A67BDD: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'B08930
  'Data Table: 537378
  loc_B0872C: LitI2_Byte 0
  loc_B0872E: ILdRf Me
  loc_B08731: CastAd
  loc_B08734: FStAdFunc var_88
  loc_B08737: FLdRfVar var_88
  loc_B0873A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B0873F: FFree1Ad var_88
  loc_B08742: ILdRf Me
  loc_B08745: CastAd
  loc_B08748: FStAdFunc var_88
  loc_B0874B: FLdRfVar var_88
  loc_B0874E: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B08753: FFree1Ad var_88
  loc_B08756: LitI4 0
  loc_B0875B: LitI4 1
  loc_B08760: FLdRfVar var_8C
  loc_B08763: Redim
  loc_B0876D: FLdPr Me
  loc_B08770: VCallAd Control_ID_dgdABMS
  loc_B08773: CVarAd
  loc_B08777: ParmAry1St
  loc_B0877D: FLdPr Me
  loc_B08780: VCallAd Control_ID_dgdServDifu
  loc_B08783: CVarAd
  loc_B08787: ParmAry1St
  loc_B0878D: FLdRfVar var_8C
  loc_B08790: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B08795: FLdRfVar var_8C
  loc_B08798: Erase
  loc_B08799: Call Proc_191_123_A784B4()
  loc_B0879E: FLdPrThis
  loc_B0879F: VCallAd Control_ID_sstDifunto
  loc_B087A2: FStAdFunc var_88
  loc_B087A5: FLdPr var_88
  loc_B087A8: LateIdLdVar var_9C DispID_4 0
  loc_B087AF: CI2Var
  loc_B087B0: CVarI2 var_BC
  loc_B087B3: PopAdLdVar
  loc_B087B4: FLdPrThis
  loc_B087B5: VCallAd Control_ID_sstDifunto
  loc_B087B8: FStAdFunc var_D0
  loc_B087BB: FLdPr var_D0
  loc_B087BE: LateIdCallLdVar
  loc_B087C8: CStrVarTmp
  loc_B087C9: CVarStr var_E0
  loc_B087CC: FLdRfVar var_F0
  loc_B087CF: ImpAdCallFPR4  = Ucase()
  loc_B087D4: FLdRfVar var_F0
  loc_B087D7: FStVar var_100
  loc_B087DB: FFreeAd var_88 = ""
  loc_B087E2: FFreeVar var_9C = "": var_AC = ""
  loc_B087EB: FLdRfVar var_100
  loc_B087EE: LitVarStr var_BC, "REGISTRO CEMENTERIO"
  loc_B087F3: HardType
  loc_B087F4: EqVarBool
  loc_B087F6: BranchF loc_B08801
  loc_B087F9: Call EnlazaTodo()
  loc_B087FE: Branch loc_B088D0
  loc_B08801: FLdRfVar var_100
  loc_B08804: LitVarStr var_BC, "DATOS DE LOS DIFUNTOS"
  loc_B08809: HardType
  loc_B0880A: EqVarBool
  loc_B0880C: BranchF loc_B08847
  loc_B0880F: Call EnlazaTodo()
  loc_B08814: FLdRfVar var_104
  loc_B08817: FLdRfVar var_88
  loc_B0881A: FLdPr Me
  loc_B0881D: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B08820: NewIfNullPr clsdifunto
  loc_B08823: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B08828: FLdPr var_88
  loc_B0882B:  = Me.RecordCount
  loc_B08830: ILdRf var_104
  loc_B08833: LitI4 0
  loc_B08838: GtI4
  loc_B08839: FFree1Ad var_88
  loc_B0883C: BranchF loc_B08844
  loc_B0883F: Call EnlazaTodoDetaDifu()
  loc_B08844: Branch loc_B088D0
  loc_B08847: FLdRfVar var_100
  loc_B0884A: LitVarStr var_BC, "DATOS TITULAR"
  loc_B0884F: HardType
  loc_B08850: EqVarBool
  loc_B08852: BranchF loc_B0888D
  loc_B08855: Call EnlazaTodo()
  loc_B0885A: FLdRfVar var_104
  loc_B0885D: FLdRfVar var_88
  loc_B08860: FLdPr Me
  loc_B08863: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B08866: NewIfNullPr clsdifunto
  loc_B08869: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B0886E: FLdPr var_88
  loc_B08871:  = Me.RecordCount
  loc_B08876: ILdRf var_104
  loc_B08879: LitI4 0
  loc_B0887E: GtI4
  loc_B0887F: FFree1Ad var_88
  loc_B08882: BranchF loc_B0888A
  loc_B08885: Call EnlazaTodoDetaDifu()
  loc_B0888A: Branch loc_B088D0
  loc_B0888D: FLdRfVar var_100
  loc_B08890: LitVarStr var_BC, "SERVICIOS"
  loc_B08895: HardType
  loc_B08896: EqVarBool
  loc_B08898: BranchF loc_B088D0
  loc_B0889B: Call EnlazaTodo()
  loc_B088A0: FLdRfVar var_104
  loc_B088A3: FLdRfVar var_88
  loc_B088A6: FLdPr Me
  loc_B088A9: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B088AC: NewIfNullPr clsdifunto
  loc_B088AF: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B088B4: FLdPr var_88
  loc_B088B7:  = Me.RecordCount
  loc_B088BC: ILdRf var_104
  loc_B088BF: LitI4 0
  loc_B088C4: GtI4
  loc_B088C5: FFree1Ad var_88
  loc_B088C8: BranchF loc_B088D0
  loc_B088CB: Call EnlazaTodoDetaDifu()
  loc_B088D0: LitI2_Byte 0
  loc_B088D2: FLdPr Me
  loc_B088D5: MemStI2 global_84
  loc_B088D8: ILdRf Me
  loc_B088DB: CastAd
  loc_B088DE: FStAdFunc var_88
  loc_B088E1: FLdRfVar var_88
  loc_B088E4: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B088E9: FFree1Ad var_88
  loc_B088EC: LitI4 0
  loc_B088F1: LitI4 1
  loc_B088F6: FLdRfVar var_8C
  loc_B088F9: Redim
  loc_B08903: FLdPr Me
  loc_B08906: VCallAd Control_ID_FiltroCbo
  loc_B08909: CVarAd
  loc_B0890D: ParmAry1St
  loc_B08913: FLdPr Me
  loc_B08916: VCallAd Control_ID_FiltroMsk
  loc_B08919: CVarAd
  loc_B0891D: ParmAry1St
  loc_B08923: FLdRfVar var_8C
  loc_B08926: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B0892B: FLdRfVar var_8C
  loc_B0892E: Erase
  loc_B0892F: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_GotFocus() '9BDCE0
  'Data Table: 537378
  loc_9BDCCC: FLdPr Me
  loc_9BDCCF: VCallAd Control_ID_BajaMotiTxt
  loc_9BDCD2: CVarAd
  loc_9BDCD6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDCDB: FFree1Var var_94 = ""
  loc_9BDCDE: ExitProcHresult
End Sub

Private Sub BajaMotiTxt_Validate(Cancel As Boolean) 'A910C8
  'Data Table: 537378
  loc_A91028: FLdRfVar var_8A
  loc_A9102B: FLdPr Me
  loc_A9102E: VCallAd Control_ID_cmdCancelar
  loc_A91031: FStAdFunc var_88
  loc_A91034: FLdPr var_88
  loc_A91037:  = Me.Value
  loc_A9103C: FLdI2 var_8A
  loc_A9103F: NotI4
  loc_A91040: FLdRfVar var_92
  loc_A91043: FLdPr Me
  loc_A91046: VCallAd Control_ID_BajaMotiTxt
  loc_A91049: FStAdFunc var_90
  loc_A9104C: FLdPr var_90
  loc_A9104F:  = Me.Enabled
  loc_A91054: FLdI2 var_92
  loc_A91057: AndI4
  loc_A91058: FFreeAd var_88 = ""
  loc_A9105F: BranchF loc_A910C6
  loc_A91062: FLdRfVar var_98
  loc_A91065: FLdPr Me
  loc_A91068: VCallAd Control_ID_BajaMotiTxt
  loc_A9106B: FStAdFunc var_88
  loc_A9106E: FLdPr var_88
  loc_A91071:  = Me.Text
  loc_A91076: ILdRf var_98
  loc_A91079: LitStr "Motivio de Baja"
  loc_A9107C: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91081: FStStrNoPop var_9C
  loc_A91084: FLdPr Me
  loc_A91087: MemStStrCopy
  loc_A9108B: FFreeStr var_98 = ""
  loc_A91092: FFree1Ad var_88
  loc_A91095: FLdPr Me
  loc_A91098: MemLdStr global_88
  loc_A9109B: LitStr vbNullString
  loc_A9109E: NeStr
  loc_A910A0: BranchF loc_A910C6
  loc_A910A3: FLdPr Me
  loc_A910A6: MemLdStr global_88
  loc_A910A9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A910AE: FLdPr Me
  loc_A910B1: VCallAd Control_ID_BajaMotiTxt
  loc_A910B4: CVarAd
  loc_A910B8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A910BD: FFree1Var var_AC = ""
  loc_A910C0: LitI2_Byte &HFF
  loc_A910C2: IStI2 Cancel
  loc_A910C5: ExitProcHresult
  loc_A910C6: ExitProcHresult
End Sub

Private Sub MobaDifuTxt_GotFocus() '9C1520
  'Data Table: 537378
  loc_9C150C: FLdPr Me
  loc_9C150F: VCallAd Control_ID_MobaDifuTxt
  loc_9C1512: CVarAd
  loc_9C1516: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C151B: FFree1Var var_94 = ""
  loc_9C151E: ExitProcHresult
End Sub

Private Sub MobaDifuTxt_Validate(Cancel As Boolean) 'A91458
  'Data Table: 537378
  loc_A913B8: FLdRfVar var_8A
  loc_A913BB: FLdPr Me
  loc_A913BE: VCallAd Control_ID_cmdCancelar
  loc_A913C1: FStAdFunc var_88
  loc_A913C4: FLdPr var_88
  loc_A913C7:  = Me.Value
  loc_A913CC: FLdI2 var_8A
  loc_A913CF: NotI4
  loc_A913D0: FLdRfVar var_92
  loc_A913D3: FLdPr Me
  loc_A913D6: VCallAd Control_ID_MobaDifuTxt
  loc_A913D9: FStAdFunc var_90
  loc_A913DC: FLdPr var_90
  loc_A913DF:  = Me.Enabled
  loc_A913E4: FLdI2 var_92
  loc_A913E7: AndI4
  loc_A913E8: FFreeAd var_88 = ""
  loc_A913EF: BranchF loc_A91456
  loc_A913F2: FLdRfVar var_98
  loc_A913F5: FLdPr Me
  loc_A913F8: VCallAd Control_ID_MobaDifuTxt
  loc_A913FB: FStAdFunc var_88
  loc_A913FE: FLdPr var_88
  loc_A91401:  = Me.Text
  loc_A91406: ILdRf var_98
  loc_A91409: LitStr "Motivio de Baja"
  loc_A9140C: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A91411: FStStrNoPop var_9C
  loc_A91414: FLdPr Me
  loc_A91417: MemStStrCopy
  loc_A9141B: FFreeStr var_98 = ""
  loc_A91422: FFree1Ad var_88
  loc_A91425: FLdPr Me
  loc_A91428: MemLdStr global_88
  loc_A9142B: LitStr vbNullString
  loc_A9142E: NeStr
  loc_A91430: BranchF loc_A91456
  loc_A91433: FLdPr Me
  loc_A91436: MemLdStr global_88
  loc_A91439: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9143E: FLdPr Me
  loc_A91441: VCallAd Control_ID_MobaDifuTxt
  loc_A91444: CVarAd
  loc_A91448: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9144D: FFree1Var var_AC = ""
  loc_A91450: LitI2_Byte &HFF
  loc_A91452: IStI2 Cancel
  loc_A91455: ExitProcHresult
  loc_A91456: ExitProcHresult
End Sub

Private Sub FeexDediMsk_UnknownEvent_0 '9BBAD8
  'Data Table: 537378
  loc_9BBAC4: FLdPr Me
  loc_9BBAC7: VCallAd Control_ID_FeexDediMsk
  loc_9BBACA: CVarAd
  loc_9BBACE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBAD3: FFree1Var var_94 = ""
  loc_9BBAD6: ExitProcHresult
End Sub

Private Sub FeexDediMsk_UnknownEvent_8 'A98AD4
  'Data Table: 537378
  loc_A98A28: FLdRfVar var_8A
  loc_A98A2B: FLdPr Me
  loc_A98A2E: VCallAd Control_ID_cmdCancelar
  loc_A98A31: FStAdFunc var_88
  loc_A98A34: FLdPr var_88
  loc_A98A37:  = Me.Value
  loc_A98A3C: FLdI2 var_8A
  loc_A98A3F: NotI4
  loc_A98A40: FLdPr Me
  loc_A98A43: VCallAd Control_ID_FeexDediMsk
  loc_A98A46: FStAdFunc var_90
  loc_A98A49: FLdPr var_90
  loc_A98A4C: LateIdLdVar var_A0 DispID_22 0
  loc_A98A53: CStrVarTmp
  loc_A98A54: FStStrNoPop var_A4
  loc_A98A57: LitStr vbNullString
  loc_A98A5A: NeStr
  loc_A98A5C: AndI4
  loc_A98A5D: FFree1Str var_A4
  loc_A98A60: FFreeAd var_88 = ""
  loc_A98A67: FFree1Var var_A0 = ""
  loc_A98A6A: BranchF loc_A98AD1
  loc_A98A6D: FLdPr Me
  loc_A98A70: VCallAd Control_ID_FeexDediMsk
  loc_A98A73: FStAdFunc var_88
  loc_A98A76: FLdPr var_88
  loc_A98A79: LateIdLdVar var_A0 DispID_15 0
  loc_A98A80: CStrVarTmp
  loc_A98A81: FStStrNoPop var_A4
  loc_A98A84: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_A98A89: FStStrNoPop var_A8
  loc_A98A8C: FLdPr Me
  loc_A98A8F: MemStStrCopy
  loc_A98A93: FFreeStr var_A4 = ""
  loc_A98A9A: FFree1Ad var_88
  loc_A98A9D: FFree1Var var_A0 = ""
  loc_A98AA0: FLdPr Me
  loc_A98AA3: MemLdStr global_88
  loc_A98AA6: LitStr vbNullString
  loc_A98AA9: NeStr
  loc_A98AAB: BranchF loc_A98AD1
  loc_A98AAE: FLdPr Me
  loc_A98AB1: MemLdStr global_88
  loc_A98AB4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A98AB9: FLdPr Me
  loc_A98ABC: VCallAd Control_ID_FeexDediMsk
  loc_A98ABF: CVarAd
  loc_A98AC3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A98AC8: FFree1Var var_A0 = ""
  loc_A98ACB: LitI2_Byte &HFF
  loc_A98ACD: IStI2 Cancel
  loc_A98AD0: ExitProcHresult
  loc_A98AD1: ExitProcHresult
End Sub

Private Sub CucuPersTitularTxt_GotFocus() '9BBC40
  'Data Table: 537378
  loc_9BBC2C: FLdPr Me
  loc_9BBC2F: VCallAd Control_ID_CucuPersTitularTxt
  loc_9BBC32: CVarAd
  loc_9BBC36: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBC3B: FFree1Var var_94 = ""
  loc_9BBC3E: ExitProcHresult
End Sub

Private Sub CucuPersTitularTxt_Validate(Cancel As Boolean) 'AA995C
  'Data Table: 537378
  loc_AA9894: FLdRfVar var_8A
  loc_AA9897: FLdPr Me
  loc_AA989A: VCallAd Control_ID_cmdCancelar
  loc_AA989D: FStAdFunc var_88
  loc_AA98A0: FLdPr var_88
  loc_AA98A3:  = Me.Value
  loc_AA98A8: FLdI2 var_8A
  loc_AA98AB: NotI4
  loc_AA98AC: FLdRfVar var_92
  loc_AA98AF: FLdPr Me
  loc_AA98B2: VCallAd Control_ID_CucuPersTitularTxt
  loc_AA98B5: FStAdFunc var_90
  loc_AA98B8: FLdPr var_90
  loc_AA98BB:  = Me.Enabled
  loc_AA98C0: FLdI2 var_92
  loc_AA98C3: AndI4
  loc_AA98C4: FFreeAd var_88 = ""
  loc_AA98CB: BranchF loc_AA995B
  loc_AA98CE: FLdRfVar var_98
  loc_AA98D1: FLdPr Me
  loc_AA98D4: VCallAd Control_ID_CucuPersTitularTxt
  loc_AA98D7: FStAdFunc var_88
  loc_AA98DA: FLdPr var_88
  loc_AA98DD:  = Me.Text
  loc_AA98E2: FLdPr Me
  loc_AA98E5: MemLdRfVar from_stack_1.global_76
  loc_AA98E8: NewIfNullRf
  loc_AA98EC: ILdRf var_98
  loc_AA98EF: ImpAdCallI2 Proc_270_6_B02218(, )
  loc_AA98F4: LitI2_Byte &HFF
  loc_AA98F6: EqI2
  loc_AA98F7: FFree1Str var_98
  loc_AA98FA: FFree1Ad var_88
  loc_AA98FD: BranchF loc_AA992E
  loc_AA9900: FLdRfVar var_98
  loc_AA9903: FLdPr Me
  loc_AA9906: MemLdRfVar from_stack_1.global_76
  loc_AA9909: NewIfNullPr tblPersona
  loc_AA990C: from_stack_1v = tblPersona.DetaPersGet()
  loc_AA9911: ILdRf var_98
  loc_AA9914: FLdPr Me
  loc_AA9917: VCallAd Control_ID_DetaPersLbl
  loc_AA991A: FStAdFunc var_88
  loc_AA991D: FLdPr var_88
  loc_AA9920: Me.Caption = from_stack_1
  loc_AA9925: FFree1Str var_98
  loc_AA9928: FFree1Ad var_88
  loc_AA992B: Branch loc_AA995B
  loc_AA992E: LitStr "No existe el contribuyente"
  loc_AA9931: FLdPr Me
  loc_AA9934: MemStStrCopy
  loc_AA9938: FLdPr Me
  loc_AA993B: MemLdStr global_88
  loc_AA993E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA9943: FLdPr Me
  loc_AA9946: VCallAd Control_ID_CucuPersTitularTxt
  loc_AA9949: CVarAd
  loc_AA994D: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_AA9952: FFree1Var var_A8 = ""
  loc_AA9955: LitI2_Byte &HFF
  loc_AA9957: IStI2 Cancel
  loc_AA995A: ExitProcHresult
  loc_AA995B: ExitProcHresult
End Sub

Private Sub ObseDifuTxt_GotFocus() '9BDD28
  'Data Table: 537378
  loc_9BDD14: FLdPr Me
  loc_9BDD17: VCallAd Control_ID_ObseDifuTxt
  loc_9BDD1A: CVarAd
  loc_9BDD1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDD23: FFree1Var var_94 = ""
  loc_9BDD26: ExitProcHresult
End Sub

Private Sub ObseDifuTxt_Validate(Cancel As Boolean) 'A961A0
  'Data Table: 537378
  loc_A960F4: FLdRfVar var_8A
  loc_A960F7: FLdPr Me
  loc_A960FA: VCallAd Control_ID_ObseDifuTxt
  loc_A960FD: FStAdFunc var_88
  loc_A96100: FLdPr var_88
  loc_A96103:  = Me.Enabled
  loc_A96108: FLdI2 var_8A
  loc_A9610B: LitI2_Byte &HFF
  loc_A9610D: EqI2
  loc_A9610E: FFree1Ad var_88
  loc_A96111: BranchF loc_A9619C
  loc_A96114: FLdRfVar var_90
  loc_A96117: FLdPr Me
  loc_A9611A: VCallAd Control_ID_ObseDifuTxt
  loc_A9611D: FStAdFunc var_88
  loc_A96120: FLdPr var_88
  loc_A96123:  = Me.Text
  loc_A96128: ILdRf var_90
  loc_A9612B: LitStr vbNullString
  loc_A9612E: NeStr
  loc_A96130: FFree1Str var_90
  loc_A96133: FFree1Ad var_88
  loc_A96136: BranchF loc_A9619C
  loc_A96139: FLdRfVar var_90
  loc_A9613C: FLdPr Me
  loc_A9613F: VCallAd Control_ID_ObseDifuTxt
  loc_A96142: FStAdFunc var_88
  loc_A96145: FLdPr var_88
  loc_A96148:  = Me.Text
  loc_A9614D: ILdRf var_90
  loc_A96150: LitStr "Observaciones"
  loc_A96153: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A96158: FStStrNoPop var_94
  loc_A9615B: FLdPr Me
  loc_A9615E: MemStStrCopy
  loc_A96162: FFreeStr var_90 = ""
  loc_A96169: FFree1Ad var_88
  loc_A9616C: FLdPr Me
  loc_A9616F: MemLdStr global_88
  loc_A96172: LitStr vbNullString
  loc_A96175: NeStr
  loc_A96177: BranchF loc_A9619C
  loc_A9617A: FLdPr Me
  loc_A9617D: MemLdStr global_88
  loc_A96180: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A96185: FLdPr Me
  loc_A96188: VCallAd Control_ID_ObseDifuTxt
  loc_A9618B: CVarAd
  loc_A9618F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A96194: FFree1Var var_A4 = ""
  loc_A96197: LitI2_Byte &HFF
  loc_A96199: IStI2 Cancel
  loc_A9619C: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_GotFocus() '9BBB20
  'Data Table: 537378
  loc_9BBB0C: FLdPr Me
  loc_9BBB0F: VCallAd Control_ID_CodiInmuTxt
  loc_9BBB12: CVarAd
  loc_9BBB16: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBB1B: FFree1Var var_94 = ""
  loc_9BBB1E: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_KeyPress(KeyAscii As Integer) '9D9834
  'Data Table: 537378
  loc_9D981C: LitStr "0123456789"
  loc_9D981F: FStStrCopy var_88
  loc_9D9822: FLdRfVar var_88
  loc_9D9825: ILdRf KeyAscii
  loc_9D9828: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D982D: IStI2 KeyAscii
  loc_9D9830: FFree1Str var_88
  loc_9D9833: ExitProcHresult
End Sub

Private Sub CodiInmuTxt_Validate(Cancel As Boolean) 'AC5B50
  'Data Table: 537378
  loc_AC5A48: FLdRfVar var_8A
  loc_AC5A4B: FLdPr Me
  loc_AC5A4E: VCallAd Control_ID_cmdCancelar
  loc_AC5A51: FStAdFunc var_88
  loc_AC5A54: FLdPr var_88
  loc_AC5A57:  = Me.Value
  loc_AC5A5C: FLdI2 var_8A
  loc_AC5A5F: NotI4
  loc_AC5A60: FLdRfVar var_92
  loc_AC5A63: FLdPr Me
  loc_AC5A66: VCallAd Control_ID_CodiInmuTxt
  loc_AC5A69: FStAdFunc var_90
  loc_AC5A6C: FLdPr var_90
  loc_AC5A6F:  = Me.Enabled
  loc_AC5A74: FLdI2 var_92
  loc_AC5A77: AndI4
  loc_AC5A78: FFreeAd var_88 = ""
  loc_AC5A7F: BranchF loc_AC5B4C
  loc_AC5A82: FLdRfVar var_98
  loc_AC5A85: FLdPr Me
  loc_AC5A88: VCallAd Control_ID_CodiInmuTxt
  loc_AC5A8B: FStAdFunc var_88
  loc_AC5A8E: FLdPr var_88
  loc_AC5A91:  = Me.Text
  loc_AC5A96: FLdZeroAd var_98
  loc_AC5A99: CVarStr var_A8
  loc_AC5A9C: ImpAdCallI2 IsNumeric()
  loc_AC5AA1: NotI4
  loc_AC5AA2: FFree1Ad var_88
  loc_AC5AA5: FFree1Var var_A8 = ""
  loc_AC5AA8: BranchF loc_AC5AC2
  loc_AC5AAB: LitStr "0"
  loc_AC5AAE: FLdPr Me
  loc_AC5AB1: VCallAd Control_ID_CodiInmuTxt
  loc_AC5AB4: FStAdFunc var_88
  loc_AC5AB7: FLdPr var_88
  loc_AC5ABA: Me.Text = from_stack_1
  loc_AC5ABF: FFree1Ad var_88
  loc_AC5AC2: FLdRfVar var_98
  loc_AC5AC5: FLdPr Me
  loc_AC5AC8: VCallAd Control_ID_CodiInmuTxt
  loc_AC5ACB: FStAdFunc var_88
  loc_AC5ACE: FLdPr var_88
  loc_AC5AD1:  = Me.Text
  loc_AC5AD6: ILdRf var_98
  loc_AC5AD9: CI4Str
  loc_AC5ADA: LitI4 0
  loc_AC5ADF: NeI4
  loc_AC5AE0: FFree1Str var_98
  loc_AC5AE3: FFree1Ad var_88
  loc_AC5AE6: BranchF loc_AC5B4C
  loc_AC5AE9: LitI2_Byte 0
  loc_AC5AEB: FLdRfVar var_98
  loc_AC5AEE: FLdPr Me
  loc_AC5AF1: VCallAd Control_ID_CodiInmuTxt
  loc_AC5AF4: FStAdFunc var_88
  loc_AC5AF7: FLdPr var_88
  loc_AC5AFA:  = Me.Text
  loc_AC5AFF: ILdRf var_98
  loc_AC5B02: ImpAdCallI2 Proc_18_47_B06848(, )
  loc_AC5B07: FStStrNoPop var_AC
  loc_AC5B0A: FLdPr Me
  loc_AC5B0D: MemStStrCopy
  loc_AC5B11: FFreeStr var_98 = ""
  loc_AC5B18: FFree1Ad var_88
  loc_AC5B1B: FLdPr Me
  loc_AC5B1E: MemLdStr global_88
  loc_AC5B21: LitStr vbNullString
  loc_AC5B24: NeStr
  loc_AC5B26: BranchF loc_AC5B4C
  loc_AC5B29: FLdPr Me
  loc_AC5B2C: MemLdStr global_88
  loc_AC5B2F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC5B34: FLdPr Me
  loc_AC5B37: VCallAd Control_ID_CodiInmuTxt
  loc_AC5B3A: CVarAd
  loc_AC5B3E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC5B43: FFree1Var var_A8 = ""
  loc_AC5B46: LitI2_Byte &HFF
  loc_AC5B48: IStI2 Cancel
  loc_AC5B4B: ExitProcHresult
  loc_AC5B4C: ExitProcHresult
End Sub

Private Sub RegiDediTxt_GotFocus() '9BBCD0
  'Data Table: 537378
  loc_9BBCBC: FLdPr Me
  loc_9BBCBF: VCallAd Control_ID_RegiDediTxt
  loc_9BBCC2: CVarAd
  loc_9BBCC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBCCB: FFree1Var var_94 = ""
  loc_9BBCCE: ExitProcHresult
End Sub

Private Sub RegiDediTxt_Validate(Cancel As Boolean) 'AA9F88
  'Data Table: 537378
  loc_AA9EC4: FLdRfVar var_8A
  loc_AA9EC7: FLdPr Me
  loc_AA9ECA: VCallAd Control_ID_cmdCancelar
  loc_AA9ECD: FStAdFunc var_88
  loc_AA9ED0: FLdPr var_88
  loc_AA9ED3:  = Me.Value
  loc_AA9ED8: FLdI2 var_8A
  loc_AA9EDB: NotI4
  loc_AA9EDC: FLdRfVar var_92
  loc_AA9EDF: FLdPr Me
  loc_AA9EE2: VCallAd Control_ID_RegiDediTxt
  loc_AA9EE5: FStAdFunc var_90
  loc_AA9EE8: FLdPr var_90
  loc_AA9EEB:  = Me.Enabled
  loc_AA9EF0: FLdI2 var_92
  loc_AA9EF3: AndI4
  loc_AA9EF4: FLdRfVar var_9C
  loc_AA9EF7: FLdPr Me
  loc_AA9EFA: VCallAd Control_ID_RegiDediTxt
  loc_AA9EFD: FStAdFunc var_98
  loc_AA9F00: FLdPr var_98
  loc_AA9F03:  = Me.Text
  loc_AA9F08: ILdRf var_9C
  loc_AA9F0B: LitStr vbNullString
  loc_AA9F0E: NeStr
  loc_AA9F10: AndI4
  loc_AA9F11: FFree1Str var_9C
  loc_AA9F14: FFreeAd var_88 = "": var_90 = ""
  loc_AA9F1D: BranchF loc_AA9F84
  loc_AA9F20: FLdRfVar var_9C
  loc_AA9F23: FLdPr Me
  loc_AA9F26: VCallAd Control_ID_RegiDediTxt
  loc_AA9F29: FStAdFunc var_88
  loc_AA9F2C: FLdPr var_88
  loc_AA9F2F:  = Me.Text
  loc_AA9F34: ILdRf var_9C
  loc_AA9F37: LitStr "ingrese el numero de Registro"
  loc_AA9F3A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA9F3F: FStStrNoPop var_A0
  loc_AA9F42: FLdPr Me
  loc_AA9F45: MemStStrCopy
  loc_AA9F49: FFreeStr var_9C = ""
  loc_AA9F50: FFree1Ad var_88
  loc_AA9F53: FLdPr Me
  loc_AA9F56: MemLdStr global_88
  loc_AA9F59: LitStr vbNullString
  loc_AA9F5C: NeStr
  loc_AA9F5E: BranchF loc_AA9F84
  loc_AA9F61: FLdPr Me
  loc_AA9F64: MemLdStr global_88
  loc_AA9F67: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA9F6C: FLdPr Me
  loc_AA9F6F: VCallAd Control_ID_RegiDediTxt
  loc_AA9F72: CVarAd
  loc_AA9F76: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA9F7B: FFree1Var var_B0 = ""
  loc_AA9F7E: LitI2_Byte &HFF
  loc_AA9F80: IStI2 Cancel
  loc_AA9F83: ExitProcHresult
  loc_AA9F84: ExitProcHresult
  loc_AA9F85: ILdRf arg_0
End Sub

Private Sub Form_Load() 'B6A360
  'Data Table: 537378
  loc_B69EE8: LitI2_Byte 0
  loc_B69EEA: CR8I2
  loc_B69EEB: PopFPR4
  loc_B69EEC: FLdPr Me
  loc_B69EEF: Me.Left = from_stack_1s
  loc_B69EF4: LitI2_Byte 0
  loc_B69EF6: CR8I2
  loc_B69EF7: PopFPR4
  loc_B69EF8: FLdPr Me
  loc_B69EFB: Me.Top = from_stack_1s
  loc_B69F00: Call Proc_191_124_ADB058()
  loc_B69F05: Call Proc_191_125_BFE53C()
  loc_B69F0A: LitStr "CucuPers"
  loc_B69F0D: FLdPr Me
  loc_B69F10: VCallAd Control_ID_CucuPersTitularTxt
  loc_B69F13: FStAdFunc var_88
  loc_B69F16: FLdPr var_88
  loc_B69F19: Me.DataField = from_stack_1
  loc_B69F1E: FFree1Ad var_88
  loc_B69F21: LitStr "PorcRela"
  loc_B69F24: FLdPr Me
  loc_B69F27: VCallAd Control_ID_PorcRelaTxt
  loc_B69F2A: FStAdFunc var_88
  loc_B69F2D: FLdPr var_88
  loc_B69F30: Me.DataField = from_stack_1
  loc_B69F35: FFree1Ad var_88
  loc_B69F38: LitStr "DetaPers"
  loc_B69F3B: FLdPr Me
  loc_B69F3E: VCallAd Control_ID_DetaPersLbl
  loc_B69F41: FStAdFunc var_88
  loc_B69F44: FLdPr var_88
  loc_B69F47: Me.DataField = from_stack_1
  loc_B69F4C: FFree1Ad var_88
  loc_B69F4F: LitStr "PorcRela"
  loc_B69F52: FLdPr Me
  loc_B69F55: VCallAd Control_ID_PorcRelaTxt
  loc_B69F58: FStAdFunc var_88
  loc_B69F5B: FLdPr var_88
  loc_B69F5E: Me.DataField = from_stack_1
  loc_B69F63: FFree1Ad var_88
  loc_B69F66: LitStr "JuriPers"
  loc_B69F69: FLdPr Me
  loc_B69F6C: VCallAd Control_ID_JuriPersChk
  loc_B69F6F: FStAdFunc var_88
  loc_B69F72: FLdPr var_88
  loc_B69F75: Me.DataField = from_stack_1
  loc_B69F7A: FFree1Ad var_88
  loc_B69F7D: LitStr "CodiTido"
  loc_B69F80: FLdPr Me
  loc_B69F83: VCallAd Control_ID_CodiTidoTxt
  loc_B69F86: FStAdFunc var_88
  loc_B69F89: FLdPr var_88
  loc_B69F8C: Me.DataField = from_stack_1
  loc_B69F91: FFree1Ad var_88
  loc_B69F94: LitStr "DetaTido"
  loc_B69F97: FLdPr Me
  loc_B69F9A: VCallAd Control_ID_DetaTidoLbl
  loc_B69F9D: FStAdFunc var_88
  loc_B69FA0: FLdPr var_88
  loc_B69FA3: Me.DataField = from_stack_1
  loc_B69FA8: FFree1Ad var_88
  loc_B69FAB: LitStr "NudoPers"
  loc_B69FAE: FLdPr Me
  loc_B69FB1: VCallAd Control_ID_NudoPersTxt
  loc_B69FB4: FStAdFunc var_88
  loc_B69FB7: FLdPr var_88
  loc_B69FBA: Me.DataField = from_stack_1
  loc_B69FBF: FFree1Ad var_88
  loc_B69FC2: LitVarStr var_98, "FenaPers"
  loc_B69FC7: PopAdLdVar
  loc_B69FC8: FLdPr Me
  loc_B69FCB: VCallAd Control_ID_FenaPersMsk
  loc_B69FCE: FStAdFunc var_88
  loc_B69FD1: FLdPr var_88
  loc_B69FD4: LateIdSt
  loc_B69FD9: FFree1Ad var_88
  loc_B69FDC: LitStr "TelePers"
  loc_B69FDF: FLdPr Me
  loc_B69FE2: VCallAd Control_ID_TelePersTxt
  loc_B69FE5: FStAdFunc var_88
  loc_B69FE8: FLdPr var_88
  loc_B69FEB: Me.DataField = from_stack_1
  loc_B69FF0: FFree1Ad var_88
  loc_B69FF3: LitStr "CeluPers"
  loc_B69FF6: FLdPr Me
  loc_B69FF9: VCallAd Control_ID_CeluPersTxt
  loc_B69FFC: FStAdFunc var_88
  loc_B69FFF: FLdPr var_88
  loc_B6A002: Me.DataField = from_stack_1
  loc_B6A007: FFree1Ad var_88
  loc_B6A00A: LitStr "FaxsPers"
  loc_B6A00D: FLdPr Me
  loc_B6A010: VCallAd Control_ID_FaxsPersTxt
  loc_B6A013: FStAdFunc var_88
  loc_B6A016: FLdPr var_88
  loc_B6A019: Me.DataField = from_stack_1
  loc_B6A01E: FFree1Ad var_88
  loc_B6A021: LitStr "CodiEsci"
  loc_B6A024: FLdPr Me
  loc_B6A027: VCallAd Control_ID_CodiEsciTxt
  loc_B6A02A: FStAdFunc var_88
  loc_B6A02D: FLdPr var_88
  loc_B6A030: Me.DataField = from_stack_1
  loc_B6A035: FFree1Ad var_88
  loc_B6A038: LitStr "DetaEsci"
  loc_B6A03B: FLdPr Me
  loc_B6A03E: VCallAd Control_ID_DetaEsciLbl
  loc_B6A041: FStAdFunc var_88
  loc_B6A044: FLdPr var_88
  loc_B6A047: Me.DataField = from_stack_1
  loc_B6A04C: FFree1Ad var_88
  loc_B6A04F: LitStr "CodiPofi"
  loc_B6A052: FLdPr Me
  loc_B6A055: VCallAd Control_ID_CodiPofiTxt
  loc_B6A058: FStAdFunc var_88
  loc_B6A05B: FLdPr var_88
  loc_B6A05E: Me.DataField = from_stack_1
  loc_B6A063: FFree1Ad var_88
  loc_B6A066: LitStr "DetaPofi"
  loc_B6A069: FLdPr Me
  loc_B6A06C: VCallAd Control_ID_DetaPofiLbl
  loc_B6A06F: FStAdFunc var_88
  loc_B6A072: FLdPr var_88
  loc_B6A075: Me.DataField = from_stack_1
  loc_B6A07A: FFree1Ad var_88
  loc_B6A07D: LitStr "CocpDifu"
  loc_B6A080: FLdPr Me
  loc_B6A083: VCallAd Control_ID_CodiCallTxt
  loc_B6A086: FStAdFunc var_88
  loc_B6A089: FLdPr var_88
  loc_B6A08C: Me.DataField = from_stack_1
  loc_B6A091: FFree1Ad var_88
  loc_B6A094: LitStr "DecpDifu"
  loc_B6A097: FLdPr Me
  loc_B6A09A: VCallAd Control_ID_DecaDpceTxt
  loc_B6A09D: FStAdFunc var_88
  loc_B6A0A0: FLdPr var_88
  loc_B6A0A3: Me.DataField = from_stack_1
  loc_B6A0A8: FFree1Ad var_88
  loc_B6A0AB: LitStr "NupoDifu"
  loc_B6A0AE: FLdPr Me
  loc_B6A0B1: VCallAd Control_ID_NupuDpceTxt
  loc_B6A0B4: FStAdFunc var_88
  loc_B6A0B7: FLdPr var_88
  loc_B6A0BA: Me.DataField = from_stack_1
  loc_B6A0BF: FFree1Ad var_88
  loc_B6A0C2: LitStr "CobpDifu"
  loc_B6A0C5: FLdPr Me
  loc_B6A0C8: VCallAd Control_ID_CodiBarrTxt
  loc_B6A0CB: FStAdFunc var_88
  loc_B6A0CE: FLdPr var_88
  loc_B6A0D1: Me.DataField = from_stack_1
  loc_B6A0D6: FFree1Ad var_88
  loc_B6A0D9: LitStr "DebpDifu"
  loc_B6A0DC: FLdPr Me
  loc_B6A0DF: VCallAd Control_ID_DebaDpceTxt
  loc_B6A0E2: FStAdFunc var_88
  loc_B6A0E5: FLdPr var_88
  loc_B6A0E8: Me.DataField = from_stack_1
  loc_B6A0ED: FFree1Ad var_88
  loc_B6A0F0: LitStr "MapoDifu"
  loc_B6A0F3: FLdPr Me
  loc_B6A0F6: VCallAd Control_ID_ManzDpceTxt
  loc_B6A0F9: FStAdFunc var_88
  loc_B6A0FC: FLdPr var_88
  loc_B6A0FF: Me.DataField = from_stack_1
  loc_B6A104: FFree1Ad var_88
  loc_B6A107: LitStr "CapoDifu"
  loc_B6A10A: FLdPr Me
  loc_B6A10D: VCallAd Control_ID_CasaDpceTxt
  loc_B6A110: FStAdFunc var_88
  loc_B6A113: FLdPr var_88
  loc_B6A116: Me.DataField = from_stack_1
  loc_B6A11B: FFree1Ad var_88
  loc_B6A11E: LitStr "UbpoDifu"
  loc_B6A121: FLdPr Me
  loc_B6A124: VCallAd Control_ID_UbicDpceTxt
  loc_B6A127: FStAdFunc var_88
  loc_B6A12A: FLdPr var_88
  loc_B6A12D: Me.DataField = from_stack_1
  loc_B6A132: FFree1Ad var_88
  loc_B6A135: LitStr "ColpDifu"
  loc_B6A138: FLdPr Me
  loc_B6A13B: VCallAd Control_ID_CodiLocaTxt
  loc_B6A13E: FStAdFunc var_88
  loc_B6A141: FLdPr var_88
  loc_B6A144: Me.DataField = from_stack_1
  loc_B6A149: FFree1Ad var_88
  loc_B6A14C: LitStr "DelpDifu"
  loc_B6A14F: FLdPr Me
  loc_B6A152: VCallAd Control_ID_DeloDpceTxt
  loc_B6A155: FStAdFunc var_88
  loc_B6A158: FLdPr var_88
  loc_B6A15B: Me.DataField = from_stack_1
  loc_B6A160: FFree1Ad var_88
  loc_B6A163: LitStr "CoppDifu"
  loc_B6A166: FLdPr Me
  loc_B6A169: VCallAd Control_ID_CopoDpceTxt
  loc_B6A16C: FStAdFunc var_88
  loc_B6A16F: FLdPr var_88
  loc_B6A172: Me.DataField = from_stack_1
  loc_B6A177: FFree1Ad var_88
  loc_B6A17A: LitVar_Missing var_98
  loc_B6A17D: PopAdLdVar
  loc_B6A17E: LitStr "Si"
  loc_B6A181: FLdPr Me
  loc_B6A184: VCallAd Control_ID_PerpDifuCbo
  loc_B6A187: FStAdFunc var_88
  loc_B6A18A: FLdPr var_88
  loc_B6A18D: Me.AddItem from_stack_1, from_stack_2
  loc_B6A192: FFree1Ad var_88
  loc_B6A195: LitVar_Missing var_98
  loc_B6A198: PopAdLdVar
  loc_B6A199: LitStr "No"
  loc_B6A19C: FLdPr Me
  loc_B6A19F: VCallAd Control_ID_PerpDifuCbo
  loc_B6A1A2: FStAdFunc var_88
  loc_B6A1A5: FLdPr var_88
  loc_B6A1A8: Me.AddItem from_stack_1, from_stack_2
  loc_B6A1AD: FFree1Ad var_88
  loc_B6A1B0: LitVar_Missing var_98
  loc_B6A1B3: PopAdLdVar
  loc_B6A1B4: LitStr "Planta Baja"
  loc_B6A1B7: FLdPr Me
  loc_B6A1BA: VCallAd Control_ID_PlanDifuCbo
  loc_B6A1BD: FStAdFunc var_88
  loc_B6A1C0: FLdPr var_88
  loc_B6A1C3: Me.AddItem from_stack_1, from_stack_2
  loc_B6A1C8: FFree1Ad var_88
  loc_B6A1CB: LitVar_Missing var_98
  loc_B6A1CE: PopAdLdVar
  loc_B6A1CF: LitStr "Planta Alta"
  loc_B6A1D2: FLdPr Me
  loc_B6A1D5: VCallAd Control_ID_PlanDifuCbo
  loc_B6A1D8: FStAdFunc var_88
  loc_B6A1DB: FLdPr var_88
  loc_B6A1DE: Me.AddItem from_stack_1, from_stack_2
  loc_B6A1E3: FFree1Ad var_88
  loc_B6A1E6: LitI4 0
  loc_B6A1EB: LitI4 1
  loc_B6A1F0: FLdRfVar var_AC
  loc_B6A1F3: Redim
  loc_B6A1FD: FLdPr Me
  loc_B6A200: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B6A203: NewIfNullAd
  loc_B6A206: FStAd var_88 
  loc_B6A20A: FLdRfVar var_88
  loc_B6A20D: CVarRef
  loc_B6A212: ParmAry1St
  loc_B6A218: FLdPr Me
  loc_B6A21B: VCallAd Control_ID_dgdABMS
  loc_B6A21E: CVarAd
  loc_B6A222: ParmAry1St
  loc_B6A228: FLdRfVar var_AC
  loc_B6A22B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B6A230: ILdRf var_88
  loc_B6A233: CastAd
  loc_B6A236: FLdPr Me
  loc_B6A239: MemStAdFunc
  loc_B6A23D: FLdRfVar var_AC
  loc_B6A240: Erase
  loc_B6A241: FFree1Ad var_88
  loc_B6A244: Call EnlazaTodo()
  loc_B6A249: Call EnlazaTodoDetaDifu()
  loc_B6A24E: LitVarI2 var_98, 0
  loc_B6A253: PopAdLdVar
  loc_B6A254: FLdPr Me
  loc_B6A257: VCallAd Control_ID_sstDifunto
  loc_B6A25A: FStAdFunc var_88
  loc_B6A25D: FLdPr var_88
  loc_B6A260: LateIdSt
  loc_B6A265: FFree1Ad var_88
  loc_B6A268: ILdRf Me
  loc_B6A26B: CastAd
  loc_B6A26E: FStAdFunc var_88
  loc_B6A271: FLdRfVar var_88
  loc_B6A274: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B6A279: FFree1Ad var_88
  loc_B6A27C: LitI2_Byte 0
  loc_B6A27E: ILdRf Me
  loc_B6A281: CastAd
  loc_B6A284: FStAdFunc var_88
  loc_B6A287: FLdRfVar var_88
  loc_B6A28A: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_B6A28F: FFree1Ad var_88
  loc_B6A292: LitVarI2 var_98, 0
  loc_B6A297: PopAdLdVar
  loc_B6A298: LitStr "Cuenta"
  loc_B6A29B: FLdPr Me
  loc_B6A29E: VCallAd Control_ID_FiltroCbo
  loc_B6A2A1: FStAdFunc var_88
  loc_B6A2A4: FLdPr var_88
  loc_B6A2A7: Me.AddItem from_stack_1, from_stack_2
  loc_B6A2AC: FFree1Ad var_88
  loc_B6A2AF: LitVarI2 var_98, 1
  loc_B6A2B4: PopAdLdVar
  loc_B6A2B5: LitStr "Apellido y Nombre del Titular"
  loc_B6A2B8: FLdPr Me
  loc_B6A2BB: VCallAd Control_ID_FiltroCbo
  loc_B6A2BE: FStAdFunc var_88
  loc_B6A2C1: FLdPr var_88
  loc_B6A2C4: Me.AddItem from_stack_1, from_stack_2
  loc_B6A2C9: FFree1Ad var_88
  loc_B6A2CC: LitVarI2 var_98, 2
  loc_B6A2D1: PopAdLdVar
  loc_B6A2D2: LitStr "Tipo de Sepultura (Código)"
  loc_B6A2D5: FLdPr Me
  loc_B6A2D8: VCallAd Control_ID_FiltroCbo
  loc_B6A2DB: FStAdFunc var_88
  loc_B6A2DE: FLdPr var_88
  loc_B6A2E1: Me.AddItem from_stack_1, from_stack_2
  loc_B6A2E6: FFree1Ad var_88
  loc_B6A2E9: LitVarI2 var_98, 3
  loc_B6A2EE: PopAdLdVar
  loc_B6A2EF: LitStr "Apellido y Nombre del Difunto"
  loc_B6A2F2: FLdPr Me
  loc_B6A2F5: VCallAd Control_ID_FiltroCbo
  loc_B6A2F8: FStAdFunc var_88
  loc_B6A2FB: FLdPr var_88
  loc_B6A2FE: Me.AddItem from_stack_1, from_stack_2
  loc_B6A303: FFree1Ad var_88
  loc_B6A306: LitI2_Byte 0
  loc_B6A308: FLdPr Me
  loc_B6A30B: VCallAd Control_ID_FiltroCbo
  loc_B6A30E: FStAdFunc var_88
  loc_B6A311: FLdPr var_88
  loc_B6A314: Me.ListIndex = from_stack_1
  loc_B6A319: FFree1Ad var_88
  loc_B6A31C: LitI4 0
  loc_B6A321: LitI4 1
  loc_B6A326: FLdRfVar var_AC
  loc_B6A329: Redim
  loc_B6A333: FLdPr Me
  loc_B6A336: VCallAd Control_ID_FiltroCbo
  loc_B6A339: CVarAd
  loc_B6A33D: ParmAry1St
  loc_B6A343: FLdPr Me
  loc_B6A346: VCallAd Control_ID_FiltroMsk
  loc_B6A349: CVarAd
  loc_B6A34D: ParmAry1St
  loc_B6A353: FLdRfVar var_AC
  loc_B6A356: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B6A35B: FLdRfVar var_AC
  loc_B6A35E: Erase
  loc_B6A35F: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D8910
  'Data Table: 537378
  loc_9D88F8: ILdI2 KeyAscii
  loc_9D88FB: LitI2_Byte &HD
  loc_9D88FD: EqI2
  loc_9D88FE: BranchF loc_9D890F
  loc_9D8901: LitVar_TRUE var_A4
  loc_9D8904: LitStr "{Tab}"
  loc_9D8907: ImpAdCallFPR4 SendKeys , 
  loc_9D890C: FFree1Var var_A4 = ""
  loc_9D890F: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9DC71C
  'Data Table: 537378
  loc_9DC704: ILdI2 KeyCode
  loc_9DC707: ILdRf Me
  loc_9DC70A: CastAd
  loc_9DC70D: FStAdFunc var_88
  loc_9DC710: FLdRfVar var_88
  loc_9DC713: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9DC718: FFree1Ad var_88
  loc_9DC71B: ExitProcHresult
End Sub

Private Sub BuscarTitularCmd_Click() 'A909B0
  'Data Table: 537378
  loc_A90908: LitVar_Missing var_A4
  loc_A9090B: PopAdLdVar
  loc_A9090C: LitVarI4
  loc_A90914: PopAdLdVar
  loc_A90915: ImpAdLdRf MemVar_D940AC
  loc_A90918: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9091B: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A90920: FLdRfVar var_A8
  loc_A90923: ImpAdLdRf MemVar_D940AC
  loc_A90926: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A90929: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A9092E: ILdRf var_A8
  loc_A90931: LitStr vbNullString
  loc_A90934: NeStr
  loc_A90936: FFree1Str var_A8
  loc_A90939: BranchF loc_A9099A
  loc_A9093C: FLdRfVar var_A8
  loc_A9093F: ImpAdLdRf MemVar_D940AC
  loc_A90942: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A90945: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A9094A: ILdRf var_A8
  loc_A9094D: FLdPr Me
  loc_A90950: VCallAd Control_ID_
  loc_A90953: FStAdFunc var_AC
  loc_A90956: FLdPr var_AC
  loc_A90959: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A9095E: FFree1Str var_A8
  loc_A90961: FFree1Ad var_AC
  loc_A90964: LitStr vbNullString
  loc_A90967: ImpAdLdRf MemVar_D940AC
  loc_A9096A: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9096D: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A90972: FLdRfVar var_A8
  loc_A90975: ImpAdLdRf MemVar_D940AC
  loc_A90978: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9097B: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A90980: ILdRf var_A8
  loc_A90983: FLdPr Me
  loc_A90986: VCallAd Control_ID_
  loc_A90989: FStAdFunc var_AC
  loc_A9098C: FLdPr var_AC
  loc_A9098F: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A90994: FFree1Str var_A8
  loc_A90997: FFree1Ad var_AC
  loc_A9099A: FLdPr Me
  loc_A9099D: VCallAd Control_ID_CucuPersTxt
  loc_A909A0: CVarAd
  loc_A909A4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A909A9: FFree1Var var_BC = ""
  loc_A909AC: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() 'AACCBC
  'Data Table: 537378
  loc_AACBE8: FLdRfVar var_8C
  loc_AACBEB: FLdPr Me
  loc_AACBEE: VCallAd Control_ID_CucuPersTxt
  loc_AACBF1: FStAdFunc var_88
  loc_AACBF4: FLdPr var_88
  loc_AACBF7:  = Me.Text
  loc_AACBFC: ILdRf var_8C
  loc_AACBFF: LitStr vbNullString
  loc_AACC02: NeStr
  loc_AACC04: FFree1Str var_8C
  loc_AACC07: FFree1Ad var_88
  loc_AACC0A: BranchF loc_AACC42
  loc_AACC0D: FLdRfVar var_8C
  loc_AACC10: FLdPr Me
  loc_AACC13: VCallAd Control_ID_CucuPersTxt
  loc_AACC16: FStAdFunc var_88
  loc_AACC19: FLdPr var_88
  loc_AACC1C:  = Me.Text
  loc_AACC21: ILdRf var_8C
  loc_AACC24: ImpAdLdRf MemVar_D94A10
  loc_AACC27: NewIfNullPr dlgCreaPersona
  loc_AACC2A: VCallAd Control_ID_CucuPersTxt
  loc_AACC2D: FStAdFunc var_90
  loc_AACC30: FLdPr var_90
  loc_AACC33: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AACC38: FFree1Str var_8C
  loc_AACC3B: FFreeAd var_88 = ""
  loc_AACC42: LitI2_Byte &HFF
  loc_AACC44: ImpAdLdRf MemVar_D94A10
  loc_AACC47: NewIfNullPr dlgCreaPersona
  loc_AACC4A: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_AACC4F: LitVar_Missing var_B0
  loc_AACC52: PopAdLdVar
  loc_AACC53: LitVarI4
  loc_AACC5B: PopAdLdVar
  loc_AACC5C: ImpAdLdRf MemVar_D94A10
  loc_AACC5F: NewIfNullPr dlgCreaPersona
  loc_AACC62: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_AACC67: FLdRfVar var_B2
  loc_AACC6A: ImpAdLdRf MemVar_D94A10
  loc_AACC6D: NewIfNullPr dlgCreaPersona
  loc_AACC70: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_AACC75: FLdI2 var_B2
  loc_AACC78: LitI2_Byte &HFF
  loc_AACC7A: EqI2
  loc_AACC7B: BranchF loc_AACCBA
  loc_AACC7E: FLdRfVar var_8C
  loc_AACC81: ImpAdLdRf MemVar_D94A10
  loc_AACC84: NewIfNullPr dlgCreaPersona
  loc_AACC87: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_AACC8C: ILdRf var_8C
  loc_AACC8F: FLdPr Me
  loc_AACC92: VCallAd Control_ID_
  loc_AACC95: FStAdFunc var_88
  loc_AACC98: FLdPr var_88
  loc_AACC9B: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AACCA0: FFree1Str var_8C
  loc_AACCA3: FFree1Ad var_88
  loc_AACCA6: FLdPr Me
  loc_AACCA9: VCallAd Control_ID_CucuPersTxt
  loc_AACCAC: FStAdFunc var_88
  loc_AACCAF: FLdPr var_88
  loc_AACCB2: Me.SetFocus
  loc_AACCB7: FFree1Ad var_88
  loc_AACCBA: ExitProcHresult
End Sub

Private Sub CodiCemeCmd_Click() 'A96CDC
  'Data Table: 537378
  loc_A96C28: LitStr vbNullString
  loc_A96C2B: ImpAdLdRf MemVar_D94A74
  loc_A96C2E: NewIfNullPr dlgBuscarCementerio
  loc_A96C31: Call dlgBuscarCementerio.sPasaSelectPut(from_stack_1v)
  loc_A96C36: LitVar_Missing var_A4
  loc_A96C39: PopAdLdVar
  loc_A96C3A: LitVarI4
  loc_A96C42: PopAdLdVar
  loc_A96C43: ImpAdLdRf MemVar_D94A74
  loc_A96C46: NewIfNullPr dlgBuscarCementerio
  loc_A96C49: dlgBuscarCementerio.Show from_stack_1, from_stack_2
  loc_A96C4E: FLdRfVar var_A8
  loc_A96C51: ImpAdLdRf MemVar_D94A74
  loc_A96C54: NewIfNullPr dlgBuscarCementerio
  loc_A96C57: from_stack_1v = dlgBuscarCementerio.sPasaCodigoGet()
  loc_A96C5C: ILdRf var_A8
  loc_A96C5F: LitStr vbNullString
  loc_A96C62: NeStr
  loc_A96C64: FFree1Str var_A8
  loc_A96C67: BranchF loc_A96CC8
  loc_A96C6A: FLdRfVar var_A8
  loc_A96C6D: ImpAdLdRf MemVar_D94A74
  loc_A96C70: NewIfNullPr dlgBuscarCementerio
  loc_A96C73: from_stack_1v = dlgBuscarCementerio.sPasaCodigoGet()
  loc_A96C78: ILdRf var_A8
  loc_A96C7B: FLdPr Me
  loc_A96C7E: VCallAd Control_ID_
  loc_A96C81: FStAdFunc var_AC
  loc_A96C84: FLdPr var_AC
  loc_A96C87: dlgBuscarCementerio.TextBox.Text = from_stack_1
  loc_A96C8C: FFree1Str var_A8
  loc_A96C8F: FFree1Ad var_AC
  loc_A96C92: LitStr vbNullString
  loc_A96C95: ImpAdLdRf MemVar_D94A74
  loc_A96C98: NewIfNullPr dlgBuscarCementerio
  loc_A96C9B: Call dlgBuscarCementerio.sPasaCodigoPut(from_stack_1v)
  loc_A96CA0: FLdRfVar var_A8
  loc_A96CA3: ImpAdLdRf MemVar_D94A74
  loc_A96CA6: NewIfNullPr dlgBuscarCementerio
  loc_A96CA9: from_stack_1v = dlgBuscarCementerio.sPasaDetalleGet()
  loc_A96CAE: ILdRf var_A8
  loc_A96CB1: FLdPr Me
  loc_A96CB4: VCallAd Control_ID_
  loc_A96CB7: FStAdFunc var_AC
  loc_A96CBA: FLdPr var_AC
  loc_A96CBD: dlgBuscarCementerio.Label.Caption = from_stack_1
  loc_A96CC2: FFree1Str var_A8
  loc_A96CC5: FFree1Ad var_AC
  loc_A96CC8: FLdPr Me
  loc_A96CCB: VCallAd Control_ID_CodiCemeTxt
  loc_A96CCE: CVarAd
  loc_A96CD2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A96CD7: FFree1Var var_BC = ""
  loc_A96CDA: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'AA5FEC
  'Data Table: 537378
  loc_AA5F1C: LitVarStr var_94, vbNullString
  loc_AA5F21: PopAdLdVar
  loc_AA5F22: FLdPr Me
  loc_AA5F25: VCallAd Control_ID_FiltroMsk
  loc_AA5F28: FStAdFunc var_A8
  loc_AA5F2B: FLdPr var_A8
  loc_AA5F2E: LateIdSt
  loc_AA5F33: FFree1Ad var_A8
  loc_AA5F36: FLdRfVar var_AA
  loc_AA5F39: FLdPr Me
  loc_AA5F3C: VCallAd Control_ID_FiltroCbo
  loc_AA5F3F: FStAdFunc var_A8
  loc_AA5F42: FLdPr var_A8
  loc_AA5F45:  = Me.ListIndex
  loc_AA5F4A: FLdI2 var_AA
  loc_AA5F4D: FStI2 var_AC
  loc_AA5F50: FFree1Ad var_A8
  loc_AA5F53: FLdI2 var_AC
  loc_AA5F56: LitI2_Byte 0
  loc_AA5F58: EqI2
  loc_AA5F59: BranchF loc_AA5F79
  loc_AA5F5C: LitVarStr var_94, vbNullString
  loc_AA5F61: PopAdLdVar
  loc_AA5F62: FLdPr Me
  loc_AA5F65: VCallAd Control_ID_FiltroMsk
  loc_AA5F68: FStAdFunc var_A8
  loc_AA5F6B: FLdPr var_A8
  loc_AA5F6E: LateIdSt
  loc_AA5F73: FFree1Ad var_A8
  loc_AA5F76: Branch loc_AA5FE8
  loc_AA5F79: FLdI2 var_AC
  loc_AA5F7C: LitI2_Byte 1
  loc_AA5F7E: EqI2
  loc_AA5F7F: BranchF loc_AA5F9F
  loc_AA5F82: LitVarStr var_94, vbNullString
  loc_AA5F87: PopAdLdVar
  loc_AA5F88: FLdPr Me
  loc_AA5F8B: VCallAd Control_ID_FiltroMsk
  loc_AA5F8E: FStAdFunc var_A8
  loc_AA5F91: FLdPr var_A8
  loc_AA5F94: LateIdSt
  loc_AA5F99: FFree1Ad var_A8
  loc_AA5F9C: Branch loc_AA5FE8
  loc_AA5F9F: FLdI2 var_AC
  loc_AA5FA2: LitI2_Byte 2
  loc_AA5FA4: EqI2
  loc_AA5FA5: BranchF loc_AA5FC5
  loc_AA5FA8: LitVarStr var_94, "###"
  loc_AA5FAD: PopAdLdVar
  loc_AA5FAE: FLdPr Me
  loc_AA5FB1: VCallAd Control_ID_FiltroMsk
  loc_AA5FB4: FStAdFunc var_A8
  loc_AA5FB7: FLdPr var_A8
  loc_AA5FBA: LateIdSt
  loc_AA5FBF: FFree1Ad var_A8
  loc_AA5FC2: Branch loc_AA5FE8
  loc_AA5FC5: FLdI2 var_AC
  loc_AA5FC8: LitI2_Byte 3
  loc_AA5FCA: EqI2
  loc_AA5FCB: BranchF loc_AA5FE8
  loc_AA5FCE: LitVarStr var_94, vbNullString
  loc_AA5FD3: PopAdLdVar
  loc_AA5FD4: FLdPr Me
  loc_AA5FD7: VCallAd Control_ID_FiltroMsk
  loc_AA5FDA: FStAdFunc var_A8
  loc_AA5FDD: FLdPr var_A8
  loc_AA5FE0: LateIdSt
  loc_AA5FE5: FFree1Ad var_A8
  loc_AA5FE8: ExitProcHresult
End Sub

Private Sub CodiTiseCmd_Click() 'A91294
  'Data Table: 537378
  loc_A911F0: LitVar_Missing var_A4
  loc_A911F3: PopAdLdVar
  loc_A911F4: LitVarI4
  loc_A911FC: PopAdLdVar
  loc_A911FD: ImpAdLdRf MemVar_D94A88
  loc_A91200: NewIfNullPr dlgBuscarTipoSepu
  loc_A91203: dlgBuscarTipoSepu.Show from_stack_1, from_stack_2
  loc_A91208: FLdRfVar var_AA
  loc_A9120B: FLdRfVar var_A8
  loc_A9120E: ImpAdLdRf MemVar_D94A88
  loc_A91211: NewIfNullPr dlgBuscarTipoSepu
  loc_A91214: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A91219: FLdPr var_A8
  loc_A9121C: from_stack_1 = clstiposepu.CodiTise
  loc_A91221: FLdUI1
  loc_A91225: CStrI2
  loc_A91227: FStStrNoPop var_B0
  loc_A9122A: FLdPr Me
  loc_A9122D: VCallAd Control_ID_CodiTiseTxt
  loc_A91230: FStAdFunc var_B4
  loc_A91233: FLdPr var_B4
  loc_A91236: Me.Text = from_stack_1
  loc_A9123B: FFree1Str var_B0
  loc_A9123E: FFreeAd var_A8 = ""
  loc_A91245: FLdRfVar var_B0
  loc_A91248: FLdRfVar var_A8
  loc_A9124B: ImpAdLdRf MemVar_D94A88
  loc_A9124E: NewIfNullPr dlgBuscarTipoSepu
  loc_A91251: from_stack_1v = dlgBuscarTipoSepu.global_4278044Get()
  loc_A91256: FLdPr var_A8
  loc_A91259: from_stack_1 = clstiposepu.DetaTise
  loc_A9125E: ILdRf var_B0
  loc_A91261: FLdPr Me
  loc_A91264: VCallAd Control_ID_DetaTiseLbl
  loc_A91267: FStAdFunc var_B4
  loc_A9126A: FLdPr var_B4
  loc_A9126D: Me.Caption = from_stack_1
  loc_A91272: FFree1Str var_B0
  loc_A91275: FFreeAd var_A8 = ""
  loc_A9127C: Call CodiTiseTxt_LostFocus()
  loc_A91281: FLdPr Me
  loc_A91284: VCallAd Control_ID_CodiTiseTxt
  loc_A91287: CVarAd
  loc_A9128B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91290: FFree1Var var_C4 = ""
  loc_A91293: ExitProcHresult
End Sub

Private Sub FeveDifuCmd_Click() 'A4E158
  'Data Table: 537378
  loc_A4E104: LitVar_Missing var_A4
  loc_A4E107: PopAdLdVar
  loc_A4E108: LitVarI4
  loc_A4E110: PopAdLdVar
  loc_A4E111: ImpAdLdRf MemVar_D930A4
  loc_A4E114: NewIfNullPr frmCalendario
  loc_A4E117: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4E11C: ImpAdLdI4 MemVar_D93028
  loc_A4E11F: LitStr vbNullString
  loc_A4E122: NeStr
  loc_A4E124: BranchF loc_A4E142
  loc_A4E127: ImpAdLdRf MemVar_D93028
  loc_A4E12A: CDargRef
  loc_A4E12E: FLdPr Me
  loc_A4E131: VCallAd Control_ID_FeveDifuMsk
  loc_A4E134: FStAdFunc var_A8
  loc_A4E137: FLdPr var_A8
  loc_A4E13A: LateIdSt
  loc_A4E13F: FFree1Ad var_A8
  loc_A4E142: FLdPr Me
  loc_A4E145: VCallAd Control_ID_FeveDifuMsk
  loc_A4E148: CVarAd
  loc_A4E14C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4E151: FFree1Var var_B8 = ""
  loc_A4E154: ExitProcHresult
End Sub

Private Sub FefaDediCmd_Click() 'A4E270
  'Data Table: 537378
  loc_A4E21C: LitVar_Missing var_A4
  loc_A4E21F: PopAdLdVar
  loc_A4E220: LitVarI4
  loc_A4E228: PopAdLdVar
  loc_A4E229: ImpAdLdRf MemVar_D930A4
  loc_A4E22C: NewIfNullPr frmCalendario
  loc_A4E22F: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4E234: ImpAdLdI4 MemVar_D93028
  loc_A4E237: LitStr vbNullString
  loc_A4E23A: NeStr
  loc_A4E23C: BranchF loc_A4E25A
  loc_A4E23F: ImpAdLdRf MemVar_D93028
  loc_A4E242: CDargRef
  loc_A4E246: FLdPr Me
  loc_A4E249: VCallAd Control_ID_FefaDediMsk
  loc_A4E24C: FStAdFunc var_A8
  loc_A4E24F: FLdPr var_A8
  loc_A4E252: LateIdSt
  loc_A4E257: FFree1Ad var_A8
  loc_A4E25A: FLdPr Me
  loc_A4E25D: VCallAd Control_ID_FefaDediMsk
  loc_A4E260: CVarAd
  loc_A4E264: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4E269: FFree1Var var_B8 = ""
  loc_A4E26C: ExitProcHresult
  loc_A4E26D: FStAdFuncNoPop
End Sub

Private Sub UbtrDediTxt_Change() '9AF2B0
  'Data Table: 537378
  loc_9AF2AC: ExitProcHresult
End Sub

Private Sub UbtrDediTxt_GotFocus() '9BBB68
  'Data Table: 537378
  loc_9BBB54: FLdPr Me
  loc_9BBB57: VCallAd Control_ID_UbtrDediTxt
  loc_9BBB5A: CVarAd
  loc_9BBB5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBB63: FFree1Var var_94 = ""
  loc_9BBB66: ExitProcHresult
End Sub

Private Sub UbtrDediTxt_Validate(Cancel As Boolean) 'AAA7E8
  'Data Table: 537378
  loc_AAA724: FLdRfVar var_8A
  loc_AAA727: FLdPr Me
  loc_AAA72A: VCallAd Control_ID_cmdCancelar
  loc_AAA72D: FStAdFunc var_88
  loc_AAA730: FLdPr var_88
  loc_AAA733:  = Me.Value
  loc_AAA738: FLdI2 var_8A
  loc_AAA73B: NotI4
  loc_AAA73C: FLdRfVar var_92
  loc_AAA73F: FLdPr Me
  loc_AAA742: VCallAd Control_ID_UbtrDediTxt
  loc_AAA745: FStAdFunc var_90
  loc_AAA748: FLdPr var_90
  loc_AAA74B:  = Me.Enabled
  loc_AAA750: FLdI2 var_92
  loc_AAA753: AndI4
  loc_AAA754: FLdRfVar var_9C
  loc_AAA757: FLdPr Me
  loc_AAA75A: VCallAd Control_ID_UbtrDediTxt
  loc_AAA75D: FStAdFunc var_98
  loc_AAA760: FLdPr var_98
  loc_AAA763:  = Me.Text
  loc_AAA768: ILdRf var_9C
  loc_AAA76B: LitStr vbNullString
  loc_AAA76E: NeStr
  loc_AAA770: AndI4
  loc_AAA771: FFree1Str var_9C
  loc_AAA774: FFreeAd var_88 = "": var_90 = ""
  loc_AAA77D: BranchF loc_AAA7E4
  loc_AAA780: FLdRfVar var_9C
  loc_AAA783: FLdPr Me
  loc_AAA786: VCallAd Control_ID_UbtrDediTxt
  loc_AAA789: FStAdFunc var_88
  loc_AAA78C: FLdPr var_88
  loc_AAA78F:  = Me.Text
  loc_AAA794: ILdRf var_9C
  loc_AAA797: LitStr "ingrese la ubicación de traslado"
  loc_AAA79A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AAA79F: FStStrNoPop var_A0
  loc_AAA7A2: FLdPr Me
  loc_AAA7A5: MemStStrCopy
  loc_AAA7A9: FFreeStr var_9C = ""
  loc_AAA7B0: FFree1Ad var_88
  loc_AAA7B3: FLdPr Me
  loc_AAA7B6: MemLdStr global_88
  loc_AAA7B9: LitStr vbNullString
  loc_AAA7BC: NeStr
  loc_AAA7BE: BranchF loc_AAA7E4
  loc_AAA7C1: FLdPr Me
  loc_AAA7C4: MemLdStr global_88
  loc_AAA7C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAA7CC: FLdPr Me
  loc_AAA7CF: VCallAd Control_ID_UbtrDediTxt
  loc_AAA7D2: CVarAd
  loc_AAA7D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAA7DB: FFree1Var var_B0 = ""
  loc_AAA7DE: LitI2_Byte &HFF
  loc_AAA7E0: IStI2 Cancel
  loc_AAA7E3: ExitProcHresult
  loc_AAA7E4: ExitProcHresult
End Sub

Private Sub CreaPropietarioCmd_Click() 'AAD42C
  'Data Table: 537378
  loc_AAD358: FLdRfVar var_8C
  loc_AAD35B: FLdPr Me
  loc_AAD35E: VCallAd Control_ID_CucuPersTitularTxt
  loc_AAD361: FStAdFunc var_88
  loc_AAD364: FLdPr var_88
  loc_AAD367:  = Me.Text
  loc_AAD36C: ILdRf var_8C
  loc_AAD36F: LitStr vbNullString
  loc_AAD372: NeStr
  loc_AAD374: FFree1Str var_8C
  loc_AAD377: FFree1Ad var_88
  loc_AAD37A: BranchF loc_AAD3B2
  loc_AAD37D: FLdRfVar var_8C
  loc_AAD380: FLdPr Me
  loc_AAD383: VCallAd Control_ID_CucuPersTitularTxt
  loc_AAD386: FStAdFunc var_88
  loc_AAD389: FLdPr var_88
  loc_AAD38C:  = Me.Text
  loc_AAD391: ILdRf var_8C
  loc_AAD394: ImpAdLdRf MemVar_D94A10
  loc_AAD397: NewIfNullPr dlgCreaPersona
  loc_AAD39A: VCallAd Control_ID_CucuPersTxt
  loc_AAD39D: FStAdFunc var_90
  loc_AAD3A0: FLdPr var_90
  loc_AAD3A3: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AAD3A8: FFree1Str var_8C
  loc_AAD3AB: FFreeAd var_88 = ""
  loc_AAD3B2: LitI2_Byte &HFF
  loc_AAD3B4: ImpAdLdRf MemVar_D94A10
  loc_AAD3B7: NewIfNullPr dlgCreaPersona
  loc_AAD3BA: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_AAD3BF: LitVar_Missing var_B0
  loc_AAD3C2: PopAdLdVar
  loc_AAD3C3: LitVarI4
  loc_AAD3CB: PopAdLdVar
  loc_AAD3CC: ImpAdLdRf MemVar_D94A10
  loc_AAD3CF: NewIfNullPr dlgCreaPersona
  loc_AAD3D2: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_AAD3D7: FLdRfVar var_B2
  loc_AAD3DA: ImpAdLdRf MemVar_D94A10
  loc_AAD3DD: NewIfNullPr dlgCreaPersona
  loc_AAD3E0: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_AAD3E5: FLdI2 var_B2
  loc_AAD3E8: LitI2_Byte &HFF
  loc_AAD3EA: EqI2
  loc_AAD3EB: BranchF loc_AAD42A
  loc_AAD3EE: FLdRfVar var_8C
  loc_AAD3F1: ImpAdLdRf MemVar_D94A10
  loc_AAD3F4: NewIfNullPr dlgCreaPersona
  loc_AAD3F7: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_AAD3FC: ILdRf var_8C
  loc_AAD3FF: FLdPr Me
  loc_AAD402: VCallAd Control_ID_ColrPersTxt
  loc_AAD405: FStAdFunc var_88
  loc_AAD408: FLdPr var_88
  loc_AAD40B: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_AAD410: FFree1Str var_8C
  loc_AAD413: FFree1Ad var_88
  loc_AAD416: FLdPr Me
  loc_AAD419: VCallAd Control_ID_CucuPersTitularTxt
  loc_AAD41C: FStAdFunc var_88
  loc_AAD41F: FLdPr var_88
  loc_AAD422: Me.SetFocus
  loc_AAD427: FFree1Ad var_88
  loc_AAD42A: ExitProcHresult
End Sub

Private Sub BuscarTitularPersonaCmd_Click() 'A90704
  'Data Table: 537378
  loc_A9065C: LitVar_Missing var_A4
  loc_A9065F: PopAdLdVar
  loc_A90660: LitVarI4
  loc_A90668: PopAdLdVar
  loc_A90669: ImpAdLdRf MemVar_D940AC
  loc_A9066C: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9066F: dlgBuscarPersonaPorCucuPers.Show from_stack_1, from_stack_2
  loc_A90674: FLdRfVar var_A8
  loc_A90677: ImpAdLdRf MemVar_D940AC
  loc_A9067A: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A9067D: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A90682: ILdRf var_A8
  loc_A90685: LitStr vbNullString
  loc_A90688: NeStr
  loc_A9068A: FFree1Str var_A8
  loc_A9068D: BranchF loc_A906EE
  loc_A90690: FLdRfVar var_A8
  loc_A90693: ImpAdLdRf MemVar_D940AC
  loc_A90696: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A90699: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaCodigoGet()
  loc_A9069E: ILdRf var_A8
  loc_A906A1: FLdPr Me
  loc_A906A4: VCallAd Control_ID_
  loc_A906A7: FStAdFunc var_AC
  loc_A906AA: FLdPr var_AC
  loc_A906AD: dlgBuscarPersonaPorCucuPers.TextBox.Text = from_stack_1
  loc_A906B2: FFree1Str var_A8
  loc_A906B5: FFree1Ad var_AC
  loc_A906B8: LitStr vbNullString
  loc_A906BB: ImpAdLdRf MemVar_D940AC
  loc_A906BE: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A906C1: Call dlgBuscarPersonaPorCucuPers.sPasaCodigoPut(from_stack_1v)
  loc_A906C6: FLdRfVar var_A8
  loc_A906C9: ImpAdLdRf MemVar_D940AC
  loc_A906CC: NewIfNullPr dlgBuscarPersonaPorCucuPers
  loc_A906CF: from_stack_1v = dlgBuscarPersonaPorCucuPers.sPasaDetalleGet()
  loc_A906D4: ILdRf var_A8
  loc_A906D7: FLdPr Me
  loc_A906DA: VCallAd Control_ID_
  loc_A906DD: FStAdFunc var_AC
  loc_A906E0: FLdPr var_AC
  loc_A906E3: dlgBuscarPersonaPorCucuPers.Label.Caption = from_stack_1
  loc_A906E8: FFree1Str var_A8
  loc_A906EB: FFree1Ad var_AC
  loc_A906EE: FLdPr Me
  loc_A906F1: VCallAd Control_ID_CucuPersTitularTxt
  loc_A906F4: CVarAd
  loc_A906F8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A906FD: FFree1Var var_BC = ""
  loc_A90700: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_GotFocus() '9BB970
  'Data Table: 537378
  loc_9BB95C: FLdPr Me
  loc_9BB95F: VCallAd Control_ID_CodiTiseTxt
  loc_9BB962: CVarAd
  loc_9BB966: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB96B: FFree1Var var_94 = ""
  loc_9BB96E: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_KeyPress(KeyAscii As Integer) '9D9880
  'Data Table: 537378
  loc_9D9868: LitStr "0123456789"
  loc_9D986B: FStStrCopy var_88
  loc_9D986E: FLdRfVar var_88
  loc_9D9871: ILdRf KeyAscii
  loc_9D9874: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D9879: IStI2 KeyAscii
  loc_9D987C: FFree1Str var_88
  loc_9D987F: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_LostFocus() 'BBE728
  'Data Table: 537378
  loc_BBE060: FLdRfVar var_8C
  loc_BBE063: FLdPr Me
  loc_BBE066: VCallAd Control_ID_CodiTiseTxt
  loc_BBE069: FStAdFunc var_88
  loc_BBE06C: FLdPr var_88
  loc_BBE06F:  = Me.Text
  loc_BBE074: ILdRf var_8C
  loc_BBE077: CR8Str
  loc_BBE079: LitI2_Byte 1
  loc_BBE07B: CR8I2
  loc_BBE07C: EqR4
  loc_BBE07D: FLdRfVar var_94
  loc_BBE080: FLdPr Me
  loc_BBE083: VCallAd Control_ID_CodiTiseTxt
  loc_BBE086: FStAdFunc var_90
  loc_BBE089: FLdPr var_90
  loc_BBE08C:  = Me.Text
  loc_BBE091: ILdRf var_94
  loc_BBE094: CR8Str
  loc_BBE096: LitI2_Byte 4
  loc_BBE098: CR8I2
  loc_BBE099: EqR4
  loc_BBE09A: OrI4
  loc_BBE09B: FFreeStr var_8C = ""
  loc_BBE0A2: FFreeAd var_88 = ""
  loc_BBE0A9: BranchF loc_BBE283
  loc_BBE0AC: LitI2_Byte &HFF
  loc_BBE0AE: FLdPr Me
  loc_BBE0B1: VCallAd Control_ID_Label6
  loc_BBE0B4: FStAdFunc var_88
  loc_BBE0B7: FLdPr var_88
  loc_BBE0BA: Me.Visible = from_stack_1b
  loc_BBE0BF: FFree1Ad var_88
  loc_BBE0C2: LitI2_Byte &HFF
  loc_BBE0C4: FLdPr Me
  loc_BBE0C7: VCallAd Control_ID_Label7
  loc_BBE0CA: FStAdFunc var_88
  loc_BBE0CD: FLdPr var_88
  loc_BBE0D0: Me.Visible = from_stack_1b
  loc_BBE0D5: FFree1Ad var_88
  loc_BBE0D8: LitI2_Byte &HFF
  loc_BBE0DA: FLdPr Me
  loc_BBE0DD: VCallAd Control_ID_Label8
  loc_BBE0E0: FStAdFunc var_88
  loc_BBE0E3: FLdPr var_88
  loc_BBE0E6: Me.Visible = from_stack_1b
  loc_BBE0EB: FFree1Ad var_88
  loc_BBE0EE: LitI2_Byte &HFF
  loc_BBE0F0: FLdPr Me
  loc_BBE0F3: VCallAd Control_ID_Label9
  loc_BBE0F6: FStAdFunc var_88
  loc_BBE0F9: FLdPr var_88
  loc_BBE0FC: Me.Visible = from_stack_1b
  loc_BBE101: FFree1Ad var_88
  loc_BBE104: LitI2_Byte &HFF
  loc_BBE106: FLdPr Me
  loc_BBE109: VCallAd Control_ID_SeccDifuTxt
  loc_BBE10C: FStAdFunc var_88
  loc_BBE10F: FLdPr var_88
  loc_BBE112: Me.Visible = from_stack_1b
  loc_BBE117: FFree1Ad var_88
  loc_BBE11A: LitI2_Byte &HFF
  loc_BBE11C: FLdPr Me
  loc_BBE11F: VCallAd Control_ID_PlanDifuCbo
  loc_BBE122: FStAdFunc var_88
  loc_BBE125: FLdPr var_88
  loc_BBE128: Me.Visible = from_stack_1b
  loc_BBE12D: FFree1Ad var_88
  loc_BBE130: LitI2_Byte &HFF
  loc_BBE132: FLdPr Me
  loc_BBE135: VCallAd Control_ID_NumeDifuTxt
  loc_BBE138: FStAdFunc var_88
  loc_BBE13B: FLdPr var_88
  loc_BBE13E: Me.Visible = from_stack_1b
  loc_BBE143: FFree1Ad var_88
  loc_BBE146: LitI2_Byte &HFF
  loc_BBE148: FLdPr Me
  loc_BBE14B: VCallAd Control_ID_FilaDifuTxt
  loc_BBE14E: FStAdFunc var_88
  loc_BBE151: FLdPr var_88
  loc_BBE154: Me.Visible = from_stack_1b
  loc_BBE159: FFree1Ad var_88
  loc_BBE15C: LitStr "Galeria:"
  loc_BBE15F: FLdPr Me
  loc_BBE162: VCallAd Control_ID_Label6
  loc_BBE165: FStAdFunc var_88
  loc_BBE168: FLdPr var_88
  loc_BBE16B: Me.Caption = from_stack_1
  loc_BBE170: FFree1Ad var_88
  loc_BBE173: LitStr "Fila:"
  loc_BBE176: FLdPr Me
  loc_BBE179: VCallAd Control_ID_Label7
  loc_BBE17C: FStAdFunc var_88
  loc_BBE17F: FLdPr var_88
  loc_BBE182: Me.Caption = from_stack_1
  loc_BBE187: FFree1Ad var_88
  loc_BBE18A: LitStr "Nicho:"
  loc_BBE18D: FLdPr Me
  loc_BBE190: VCallAd Control_ID_Label8
  loc_BBE193: FStAdFunc var_88
  loc_BBE196: FLdPr var_88
  loc_BBE199: Me.Caption = from_stack_1
  loc_BBE19E: FFree1Ad var_88
  loc_BBE1A1: LitStr "Planta:"
  loc_BBE1A4: FLdPr Me
  loc_BBE1A7: VCallAd Control_ID_Label9
  loc_BBE1AA: FStAdFunc var_88
  loc_BBE1AD: FLdPr var_88
  loc_BBE1B0: Me.Caption = from_stack_1
  loc_BBE1B5: FFree1Ad var_88
  loc_BBE1B8: LitI2 1275
  loc_BBE1BB: CR8I2
  loc_BBE1BC: PopFPR4
  loc_BBE1BD: FLdPr Me
  loc_BBE1C0: VCallAd Control_ID_Label6
  loc_BBE1C3: FStAdFunc var_88
  loc_BBE1C6: FLdPr var_88
  loc_BBE1C9: Me.Left = from_stack_1s
  loc_BBE1CE: FFree1Ad var_88
  loc_BBE1D1: LitI2 3120
  loc_BBE1D4: CR8I2
  loc_BBE1D5: PopFPR4
  loc_BBE1D6: FLdPr Me
  loc_BBE1D9: VCallAd Control_ID_Label7
  loc_BBE1DC: FStAdFunc var_88
  loc_BBE1DF: FLdPr var_88
  loc_BBE1E2: Me.Left = from_stack_1s
  loc_BBE1E7: FFree1Ad var_88
  loc_BBE1EA: LitI2 4320
  loc_BBE1ED: CR8I2
  loc_BBE1EE: PopFPR4
  loc_BBE1EF: FLdPr Me
  loc_BBE1F2: VCallAd Control_ID_Label8
  loc_BBE1F5: FStAdFunc var_88
  loc_BBE1F8: FLdPr var_88
  loc_BBE1FB: Me.Left = from_stack_1s
  loc_BBE200: FFree1Ad var_88
  loc_BBE203: LitI2 6720
  loc_BBE206: CR8I2
  loc_BBE207: PopFPR4
  loc_BBE208: FLdPr Me
  loc_BBE20B: VCallAd Control_ID_Label9
  loc_BBE20E: FStAdFunc var_88
  loc_BBE211: FLdPr var_88
  loc_BBE214: Me.Left = from_stack_1s
  loc_BBE219: FFree1Ad var_88
  loc_BBE21C: LitI2 2160
  loc_BBE21F: CR8I2
  loc_BBE220: PopFPR4
  loc_BBE221: FLdPr Me
  loc_BBE224: VCallAd Control_ID_SeccDifuTxt
  loc_BBE227: FStAdFunc var_88
  loc_BBE22A: FLdPr var_88
  loc_BBE22D: Me.Left = from_stack_1s
  loc_BBE232: FFree1Ad var_88
  loc_BBE235: LitI2 3600
  loc_BBE238: CR8I2
  loc_BBE239: PopFPR4
  loc_BBE23A: FLdPr Me
  loc_BBE23D: VCallAd Control_ID_FilaDifuTxt
  loc_BBE240: FStAdFunc var_88
  loc_BBE243: FLdPr var_88
  loc_BBE246: Me.Left = from_stack_1s
  loc_BBE24B: FFree1Ad var_88
  loc_BBE24E: LitI2 5000
  loc_BBE251: CR8I2
  loc_BBE252: PopFPR4
  loc_BBE253: FLdPr Me
  loc_BBE256: VCallAd Control_ID_NumeDifuTxt
  loc_BBE259: FStAdFunc var_88
  loc_BBE25C: FLdPr var_88
  loc_BBE25F: Me.Left = from_stack_1s
  loc_BBE264: FFree1Ad var_88
  loc_BBE267: LitI2 7560
  loc_BBE26A: CR8I2
  loc_BBE26B: PopFPR4
  loc_BBE26C: FLdPr Me
  loc_BBE26F: VCallAd Control_ID_PlanDifuCbo
  loc_BBE272: FStAdFunc var_88
  loc_BBE275: FLdPr var_88
  loc_BBE278: Me.Left = from_stack_1s
  loc_BBE27D: FFree1Ad var_88
  loc_BBE280: Branch loc_BBE725
  loc_BBE283: FLdRfVar var_8C
  loc_BBE286: FLdPr Me
  loc_BBE289: VCallAd Control_ID_CodiTiseTxt
  loc_BBE28C: FStAdFunc var_88
  loc_BBE28F: FLdPr var_88
  loc_BBE292:  = Me.Text
  loc_BBE297: ILdRf var_8C
  loc_BBE29A: CR8Str
  loc_BBE29C: LitI2_Byte 2
  loc_BBE29E: CR8I2
  loc_BBE29F: EqR4
  loc_BBE2A0: FFree1Str var_8C
  loc_BBE2A3: FFree1Ad var_88
  loc_BBE2A6: BranchF loc_BBE47C
  loc_BBE2A9: LitI2_Byte &HFF
  loc_BBE2AB: FLdPr Me
  loc_BBE2AE: VCallAd Control_ID_Label6
  loc_BBE2B1: FStAdFunc var_88
  loc_BBE2B4: FLdPr var_88
  loc_BBE2B7: Me.Visible = from_stack_1b
  loc_BBE2BC: FFree1Ad var_88
  loc_BBE2BF: LitI2_Byte 0
  loc_BBE2C1: FLdPr Me
  loc_BBE2C4: VCallAd Control_ID_Label7
  loc_BBE2C7: FStAdFunc var_88
  loc_BBE2CA: FLdPr var_88
  loc_BBE2CD: Me.Visible = from_stack_1b
  loc_BBE2D2: FFree1Ad var_88
  loc_BBE2D5: LitI2_Byte &HFF
  loc_BBE2D7: FLdPr Me
  loc_BBE2DA: VCallAd Control_ID_Label8
  loc_BBE2DD: FStAdFunc var_88
  loc_BBE2E0: FLdPr var_88
  loc_BBE2E3: Me.Visible = from_stack_1b
  loc_BBE2E8: FFree1Ad var_88
  loc_BBE2EB: LitI2_Byte 0
  loc_BBE2ED: FLdPr Me
  loc_BBE2F0: VCallAd Control_ID_Label9
  loc_BBE2F3: FStAdFunc var_88
  loc_BBE2F6: FLdPr var_88
  loc_BBE2F9: Me.Visible = from_stack_1b
  loc_BBE2FE: FFree1Ad var_88
  loc_BBE301: LitI2_Byte &HFF
  loc_BBE303: FLdPr Me
  loc_BBE306: VCallAd Control_ID_SeccDifuTxt
  loc_BBE309: FStAdFunc var_88
  loc_BBE30C: FLdPr var_88
  loc_BBE30F: Me.Visible = from_stack_1b
  loc_BBE314: FFree1Ad var_88
  loc_BBE317: LitI2_Byte 0
  loc_BBE319: FLdPr Me
  loc_BBE31C: VCallAd Control_ID_FilaDifuTxt
  loc_BBE31F: FStAdFunc var_88
  loc_BBE322: FLdPr var_88
  loc_BBE325: Me.Visible = from_stack_1b
  loc_BBE32A: FFree1Ad var_88
  loc_BBE32D: LitI2_Byte &HFF
  loc_BBE32F: FLdPr Me
  loc_BBE332: VCallAd Control_ID_NumeDifuTxt
  loc_BBE335: FStAdFunc var_88
  loc_BBE338: FLdPr var_88
  loc_BBE33B: Me.Visible = from_stack_1b
  loc_BBE340: FFree1Ad var_88
  loc_BBE343: LitI2_Byte 0
  loc_BBE345: FLdPr Me
  loc_BBE348: VCallAd Control_ID_PlanDifuCbo
  loc_BBE34B: FStAdFunc var_88
  loc_BBE34E: FLdPr var_88
  loc_BBE351: Me.Visible = from_stack_1b
  loc_BBE356: FFree1Ad var_88
  loc_BBE359: LitStr "Cuadro:"
  loc_BBE35C: FLdPr Me
  loc_BBE35F: VCallAd Control_ID_Label6
  loc_BBE362: FStAdFunc var_88
  loc_BBE365: FLdPr var_88
  loc_BBE368: Me.Caption = from_stack_1
  loc_BBE36D: FFree1Ad var_88
  loc_BBE370: LitStr vbNullString
  loc_BBE373: FLdPr Me
  loc_BBE376: VCallAd Control_ID_Label7
  loc_BBE379: FStAdFunc var_88
  loc_BBE37C: FLdPr var_88
  loc_BBE37F: Me.Caption = from_stack_1
  loc_BBE384: FFree1Ad var_88
  loc_BBE387: LitStr "Fosa:"
  loc_BBE38A: FLdPr Me
  loc_BBE38D: VCallAd Control_ID_Label8
  loc_BBE390: FStAdFunc var_88
  loc_BBE393: FLdPr var_88
  loc_BBE396: Me.Caption = from_stack_1
  loc_BBE39B: FFree1Ad var_88
  loc_BBE39E: LitStr vbNullString
  loc_BBE3A1: FLdPr Me
  loc_BBE3A4: VCallAd Control_ID_Label9
  loc_BBE3A7: FStAdFunc var_88
  loc_BBE3AA: FLdPr var_88
  loc_BBE3AD: Me.Caption = from_stack_1
  loc_BBE3B2: FFree1Ad var_88
  loc_BBE3B5: LitI2 1275
  loc_BBE3B8: CR8I2
  loc_BBE3B9: PopFPR4
  loc_BBE3BA: FLdPr Me
  loc_BBE3BD: VCallAd Control_ID_Label6
  loc_BBE3C0: FStAdFunc var_88
  loc_BBE3C3: FLdPr var_88
  loc_BBE3C6: Me.Left = from_stack_1s
  loc_BBE3CB: FFree1Ad var_88
  loc_BBE3CE: LitI2_Byte 0
  loc_BBE3D0: CR8I2
  loc_BBE3D1: PopFPR4
  loc_BBE3D2: FLdPr Me
  loc_BBE3D5: VCallAd Control_ID_Label7
  loc_BBE3D8: FStAdFunc var_88
  loc_BBE3DB: FLdPr var_88
  loc_BBE3DE: Me.Left = from_stack_1s
  loc_BBE3E3: FFree1Ad var_88
  loc_BBE3E6: LitI2 3120
  loc_BBE3E9: CR8I2
  loc_BBE3EA: PopFPR4
  loc_BBE3EB: FLdPr Me
  loc_BBE3EE: VCallAd Control_ID_Label8
  loc_BBE3F1: FStAdFunc var_88
  loc_BBE3F4: FLdPr var_88
  loc_BBE3F7: Me.Left = from_stack_1s
  loc_BBE3FC: FFree1Ad var_88
  loc_BBE3FF: LitI2_Byte 0
  loc_BBE401: CR8I2
  loc_BBE402: PopFPR4
  loc_BBE403: FLdPr Me
  loc_BBE406: VCallAd Control_ID_Label9
  loc_BBE409: FStAdFunc var_88
  loc_BBE40C: FLdPr var_88
  loc_BBE40F: Me.Left = from_stack_1s
  loc_BBE414: FFree1Ad var_88
  loc_BBE417: LitI2 2160
  loc_BBE41A: CR8I2
  loc_BBE41B: PopFPR4
  loc_BBE41C: FLdPr Me
  loc_BBE41F: VCallAd Control_ID_SeccDifuTxt
  loc_BBE422: FStAdFunc var_88
  loc_BBE425: FLdPr var_88
  loc_BBE428: Me.Left = from_stack_1s
  loc_BBE42D: FFree1Ad var_88
  loc_BBE430: LitI2_Byte 0
  loc_BBE432: CR8I2
  loc_BBE433: PopFPR4
  loc_BBE434: FLdPr Me
  loc_BBE437: VCallAd Control_ID_FilaDifuTxt
  loc_BBE43A: FStAdFunc var_88
  loc_BBE43D: FLdPr var_88
  loc_BBE440: Me.Left = from_stack_1s
  loc_BBE445: FFree1Ad var_88
  loc_BBE448: LitI2 3800
  loc_BBE44B: CR8I2
  loc_BBE44C: PopFPR4
  loc_BBE44D: FLdPr Me
  loc_BBE450: VCallAd Control_ID_NumeDifuTxt
  loc_BBE453: FStAdFunc var_88
  loc_BBE456: FLdPr var_88
  loc_BBE459: Me.Left = from_stack_1s
  loc_BBE45E: FFree1Ad var_88
  loc_BBE461: LitI2_Byte 0
  loc_BBE463: CR8I2
  loc_BBE464: PopFPR4
  loc_BBE465: FLdPr Me
  loc_BBE468: VCallAd Control_ID_PlanDifuCbo
  loc_BBE46B: FStAdFunc var_88
  loc_BBE46E: FLdPr var_88
  loc_BBE471: Me.Left = from_stack_1s
  loc_BBE476: FFree1Ad var_88
  loc_BBE479: Branch loc_BBE725
  loc_BBE47C: FLdRfVar var_8C
  loc_BBE47F: FLdPr Me
  loc_BBE482: VCallAd Control_ID_CodiTiseTxt
  loc_BBE485: FStAdFunc var_88
  loc_BBE488: FLdPr var_88
  loc_BBE48B:  = Me.Text
  loc_BBE490: ILdRf var_8C
  loc_BBE493: CR8Str
  loc_BBE495: LitI2_Byte 3
  loc_BBE497: CR8I2
  loc_BBE498: EqR4
  loc_BBE499: FFree1Str var_8C
  loc_BBE49C: FFree1Ad var_88
  loc_BBE49F: BranchF loc_BBE675
  loc_BBE4A2: LitI2_Byte &HFF
  loc_BBE4A4: FLdPr Me
  loc_BBE4A7: VCallAd Control_ID_Label6
  loc_BBE4AA: FStAdFunc var_88
  loc_BBE4AD: FLdPr var_88
  loc_BBE4B0: Me.Visible = from_stack_1b
  loc_BBE4B5: FFree1Ad var_88
  loc_BBE4B8: LitI2_Byte 0
  loc_BBE4BA: FLdPr Me
  loc_BBE4BD: VCallAd Control_ID_Label7
  loc_BBE4C0: FStAdFunc var_88
  loc_BBE4C3: FLdPr var_88
  loc_BBE4C6: Me.Visible = from_stack_1b
  loc_BBE4CB: FFree1Ad var_88
  loc_BBE4CE: LitI2_Byte &HFF
  loc_BBE4D0: FLdPr Me
  loc_BBE4D3: VCallAd Control_ID_Label8
  loc_BBE4D6: FStAdFunc var_88
  loc_BBE4D9: FLdPr var_88
  loc_BBE4DC: Me.Visible = from_stack_1b
  loc_BBE4E1: FFree1Ad var_88
  loc_BBE4E4: LitI2_Byte 0
  loc_BBE4E6: FLdPr Me
  loc_BBE4E9: VCallAd Control_ID_Label9
  loc_BBE4EC: FStAdFunc var_88
  loc_BBE4EF: FLdPr var_88
  loc_BBE4F2: Me.Visible = from_stack_1b
  loc_BBE4F7: FFree1Ad var_88
  loc_BBE4FA: LitI2_Byte &HFF
  loc_BBE4FC: FLdPr Me
  loc_BBE4FF: VCallAd Control_ID_SeccDifuTxt
  loc_BBE502: FStAdFunc var_88
  loc_BBE505: FLdPr var_88
  loc_BBE508: Me.Visible = from_stack_1b
  loc_BBE50D: FFree1Ad var_88
  loc_BBE510: LitI2_Byte 0
  loc_BBE512: FLdPr Me
  loc_BBE515: VCallAd Control_ID_FilaDifuTxt
  loc_BBE518: FStAdFunc var_88
  loc_BBE51B: FLdPr var_88
  loc_BBE51E: Me.Visible = from_stack_1b
  loc_BBE523: FFree1Ad var_88
  loc_BBE526: LitI2_Byte &HFF
  loc_BBE528: FLdPr Me
  loc_BBE52B: VCallAd Control_ID_NumeDifuTxt
  loc_BBE52E: FStAdFunc var_88
  loc_BBE531: FLdPr var_88
  loc_BBE534: Me.Visible = from_stack_1b
  loc_BBE539: FFree1Ad var_88
  loc_BBE53C: LitI2_Byte 0
  loc_BBE53E: FLdPr Me
  loc_BBE541: VCallAd Control_ID_PlanDifuCbo
  loc_BBE544: FStAdFunc var_88
  loc_BBE547: FLdPr var_88
  loc_BBE54A: Me.Visible = from_stack_1b
  loc_BBE54F: FFree1Ad var_88
  loc_BBE552: LitStr "Cuadro:"
  loc_BBE555: FLdPr Me
  loc_BBE558: VCallAd Control_ID_Label6
  loc_BBE55B: FStAdFunc var_88
  loc_BBE55E: FLdPr var_88
  loc_BBE561: Me.Caption = from_stack_1
  loc_BBE566: FFree1Ad var_88
  loc_BBE569: LitStr vbNullString
  loc_BBE56C: FLdPr Me
  loc_BBE56F: VCallAd Control_ID_Label7
  loc_BBE572: FStAdFunc var_88
  loc_BBE575: FLdPr var_88
  loc_BBE578: Me.Caption = from_stack_1
  loc_BBE57D: FFree1Ad var_88
  loc_BBE580: LitStr "Numero:"
  loc_BBE583: FLdPr Me
  loc_BBE586: VCallAd Control_ID_Label8
  loc_BBE589: FStAdFunc var_88
  loc_BBE58C: FLdPr var_88
  loc_BBE58F: Me.Caption = from_stack_1
  loc_BBE594: FFree1Ad var_88
  loc_BBE597: LitStr vbNullString
  loc_BBE59A: FLdPr Me
  loc_BBE59D: VCallAd Control_ID_Label9
  loc_BBE5A0: FStAdFunc var_88
  loc_BBE5A3: FLdPr var_88
  loc_BBE5A6: Me.Caption = from_stack_1
  loc_BBE5AB: FFree1Ad var_88
  loc_BBE5AE: LitI2 1275
  loc_BBE5B1: CR8I2
  loc_BBE5B2: PopFPR4
  loc_BBE5B3: FLdPr Me
  loc_BBE5B6: VCallAd Control_ID_Label6
  loc_BBE5B9: FStAdFunc var_88
  loc_BBE5BC: FLdPr var_88
  loc_BBE5BF: Me.Left = from_stack_1s
  loc_BBE5C4: FFree1Ad var_88
  loc_BBE5C7: LitI2_Byte 0
  loc_BBE5C9: CR8I2
  loc_BBE5CA: PopFPR4
  loc_BBE5CB: FLdPr Me
  loc_BBE5CE: VCallAd Control_ID_Label7
  loc_BBE5D1: FStAdFunc var_88
  loc_BBE5D4: FLdPr var_88
  loc_BBE5D7: Me.Left = from_stack_1s
  loc_BBE5DC: FFree1Ad var_88
  loc_BBE5DF: LitI2 3120
  loc_BBE5E2: CR8I2
  loc_BBE5E3: PopFPR4
  loc_BBE5E4: FLdPr Me
  loc_BBE5E7: VCallAd Control_ID_Label8
  loc_BBE5EA: FStAdFunc var_88
  loc_BBE5ED: FLdPr var_88
  loc_BBE5F0: Me.Left = from_stack_1s
  loc_BBE5F5: FFree1Ad var_88
  loc_BBE5F8: LitI2_Byte 0
  loc_BBE5FA: CR8I2
  loc_BBE5FB: PopFPR4
  loc_BBE5FC: FLdPr Me
  loc_BBE5FF: VCallAd Control_ID_Label9
  loc_BBE602: FStAdFunc var_88
  loc_BBE605: FLdPr var_88
  loc_BBE608: Me.Left = from_stack_1s
  loc_BBE60D: FFree1Ad var_88
  loc_BBE610: LitI2 2160
  loc_BBE613: CR8I2
  loc_BBE614: PopFPR4
  loc_BBE615: FLdPr Me
  loc_BBE618: VCallAd Control_ID_SeccDifuTxt
  loc_BBE61B: FStAdFunc var_88
  loc_BBE61E: FLdPr var_88
  loc_BBE621: Me.Left = from_stack_1s
  loc_BBE626: FFree1Ad var_88
  loc_BBE629: LitI2_Byte 0
  loc_BBE62B: CR8I2
  loc_BBE62C: PopFPR4
  loc_BBE62D: FLdPr Me
  loc_BBE630: VCallAd Control_ID_FilaDifuTxt
  loc_BBE633: FStAdFunc var_88
  loc_BBE636: FLdPr var_88
  loc_BBE639: Me.Left = from_stack_1s
  loc_BBE63E: FFree1Ad var_88
  loc_BBE641: LitI2 4100
  loc_BBE644: CR8I2
  loc_BBE645: PopFPR4
  loc_BBE646: FLdPr Me
  loc_BBE649: VCallAd Control_ID_NumeDifuTxt
  loc_BBE64C: FStAdFunc var_88
  loc_BBE64F: FLdPr var_88
  loc_BBE652: Me.Left = from_stack_1s
  loc_BBE657: FFree1Ad var_88
  loc_BBE65A: LitI2_Byte 0
  loc_BBE65C: CR8I2
  loc_BBE65D: PopFPR4
  loc_BBE65E: FLdPr Me
  loc_BBE661: VCallAd Control_ID_PlanDifuCbo
  loc_BBE664: FStAdFunc var_88
  loc_BBE667: FLdPr var_88
  loc_BBE66A: Me.Left = from_stack_1s
  loc_BBE66F: FFree1Ad var_88
  loc_BBE672: Branch loc_BBE725
  loc_BBE675: LitI2_Byte 0
  loc_BBE677: FLdPr Me
  loc_BBE67A: VCallAd Control_ID_Label6
  loc_BBE67D: FStAdFunc var_88
  loc_BBE680: FLdPr var_88
  loc_BBE683: Me.Visible = from_stack_1b
  loc_BBE688: FFree1Ad var_88
  loc_BBE68B: LitI2_Byte 0
  loc_BBE68D: FLdPr Me
  loc_BBE690: VCallAd Control_ID_Label7
  loc_BBE693: FStAdFunc var_88
  loc_BBE696: FLdPr var_88
  loc_BBE699: Me.Visible = from_stack_1b
  loc_BBE69E: FFree1Ad var_88
  loc_BBE6A1: LitI2_Byte 0
  loc_BBE6A3: FLdPr Me
  loc_BBE6A6: VCallAd Control_ID_Label8
  loc_BBE6A9: FStAdFunc var_88
  loc_BBE6AC: FLdPr var_88
  loc_BBE6AF: Me.Visible = from_stack_1b
  loc_BBE6B4: FFree1Ad var_88
  loc_BBE6B7: LitI2_Byte 0
  loc_BBE6B9: FLdPr Me
  loc_BBE6BC: VCallAd Control_ID_Label9
  loc_BBE6BF: FStAdFunc var_88
  loc_BBE6C2: FLdPr var_88
  loc_BBE6C5: Me.Visible = from_stack_1b
  loc_BBE6CA: FFree1Ad var_88
  loc_BBE6CD: LitI2_Byte 0
  loc_BBE6CF: FLdPr Me
  loc_BBE6D2: VCallAd Control_ID_SeccDifuTxt
  loc_BBE6D5: FStAdFunc var_88
  loc_BBE6D8: FLdPr var_88
  loc_BBE6DB: Me.Visible = from_stack_1b
  loc_BBE6E0: FFree1Ad var_88
  loc_BBE6E3: LitI2_Byte 0
  loc_BBE6E5: FLdPr Me
  loc_BBE6E8: VCallAd Control_ID_FilaDifuTxt
  loc_BBE6EB: FStAdFunc var_88
  loc_BBE6EE: FLdPr var_88
  loc_BBE6F1: Me.Visible = from_stack_1b
  loc_BBE6F6: FFree1Ad var_88
  loc_BBE6F9: LitI2_Byte 0
  loc_BBE6FB: FLdPr Me
  loc_BBE6FE: VCallAd Control_ID_NumeDifuTxt
  loc_BBE701: FStAdFunc var_88
  loc_BBE704: FLdPr var_88
  loc_BBE707: Me.Visible = from_stack_1b
  loc_BBE70C: FFree1Ad var_88
  loc_BBE70F: LitI2_Byte 0
  loc_BBE711: FLdPr Me
  loc_BBE714: VCallAd Control_ID_PlanDifuCbo
  loc_BBE717: FStAdFunc var_88
  loc_BBE71A: FLdPr var_88
  loc_BBE71D: Me.Visible = from_stack_1b
  loc_BBE722: FFree1Ad var_88
  loc_BBE725: ExitProcHresult
End Sub

Private Sub CodiTiseTxt_Validate(Cancel As Boolean) 'AC0850
  'Data Table: 537378
  loc_AC0758: FLdRfVar var_8A
  loc_AC075B: FLdPr Me
  loc_AC075E: VCallAd Control_ID_cmdCancelar
  loc_AC0761: FStAdFunc var_88
  loc_AC0764: FLdPr var_88
  loc_AC0767:  = Me.Value
  loc_AC076C: FLdI2 var_8A
  loc_AC076F: NotI4
  loc_AC0770: FLdRfVar var_92
  loc_AC0773: FLdPr Me
  loc_AC0776: VCallAd Control_ID_CodiTiseTxt
  loc_AC0779: FStAdFunc var_90
  loc_AC077C: FLdPr var_90
  loc_AC077F:  = Me.Enabled
  loc_AC0784: FLdI2 var_92
  loc_AC0787: AndI4
  loc_AC0788: FFreeAd var_88 = ""
  loc_AC078F: BranchF loc_AC084D
  loc_AC0792: FLdRfVar var_98
  loc_AC0795: FLdPr Me
  loc_AC0798: VCallAd Control_ID_CodiTiseTxt
  loc_AC079B: FStAdFunc var_88
  loc_AC079E: FLdPr var_88
  loc_AC07A1:  = Me.Text
  loc_AC07A6: ILdRf var_98
  loc_AC07A9: ImpAdCallI2 Proc_18_28_A555EC()
  loc_AC07AE: FStStrNoPop var_9C
  loc_AC07B1: FLdPr Me
  loc_AC07B4: MemStStrCopy
  loc_AC07B8: FFreeStr var_98 = ""
  loc_AC07BF: FFree1Ad var_88
  loc_AC07C2: FLdPr Me
  loc_AC07C5: MemLdStr global_88
  loc_AC07C8: LitStr vbNullString
  loc_AC07CB: NeStr
  loc_AC07CD: BranchF loc_AC080D
  loc_AC07D0: FLdPr Me
  loc_AC07D3: MemLdStr global_88
  loc_AC07D6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC07DB: LitStr vbNullString
  loc_AC07DE: FLdPr Me
  loc_AC07E1: VCallAd Control_ID_DetaTiseLbl
  loc_AC07E4: FStAdFunc var_88
  loc_AC07E7: FLdPr var_88
  loc_AC07EA: Me.Caption = from_stack_1
  loc_AC07EF: FFree1Ad var_88
  loc_AC07F2: FLdPr Me
  loc_AC07F5: VCallAd Control_ID_CodiTiseTxt
  loc_AC07F8: CVarAd
  loc_AC07FC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC0801: FFree1Var var_AC = ""
  loc_AC0804: LitI2_Byte &HFF
  loc_AC0806: IStI2 Cancel
  loc_AC0809: ExitProcHresult
  loc_AC080A: Branch loc_AC084D
  loc_AC080D: FLdRfVar var_98
  loc_AC0810: FLdPr Me
  loc_AC0813: VCallAd Control_ID_CodiTiseTxt
  loc_AC0816: FStAdFunc var_88
  loc_AC0819: FLdPr var_88
  loc_AC081C:  = Me.Text
  loc_AC0821: ILdRf var_98
  loc_AC0824: CI2Str
  loc_AC0826: ImpAdCallI2 Proc_270_28_A79F90()
  loc_AC082B: FStStrNoPop var_9C
  loc_AC082E: FLdPr Me
  loc_AC0831: VCallAd Control_ID_DetaTiseLbl
  loc_AC0834: FStAdFunc var_90
  loc_AC0837: FLdPr var_90
  loc_AC083A: Me.Caption = from_stack_1
  loc_AC083F: FFreeStr var_98 = ""
  loc_AC0846: FFreeAd var_88 = ""
  loc_AC084D: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'CE6A94
  'Data Table: 537378
  loc_CE3E7C: ILdRf Button
  loc_CE3E7F: FStAd var_88 
  loc_CE3E83: FLdRfVar var_8C
  loc_CE3E86: FLdPr var_88
  loc_CE3E89:  = Me.Key
  loc_CE3E8E: FLdZeroAd var_8C
  loc_CE3E91: FStStr var_90
  loc_CE3E94: ILdRf var_90
  loc_CE3E97: LitStr "btnCrear"
  loc_CE3E9A: EqStr
  loc_CE3E9C: BranchF loc_CE46D8
  loc_CE3E9F: ILdRf Me
  loc_CE3EA2: CastAd
  loc_CE3EA5: FStAdFunc var_94
  loc_CE3EA8: FLdRfVar var_94
  loc_CE3EAB: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE3EB0: FFree1Ad var_94
  loc_CE3EB3: LitI4 0
  loc_CE3EB8: LitI4 2
  loc_CE3EBD: FLdRfVar var_98
  loc_CE3EC0: Redim
  loc_CE3ECA: FLdPr Me
  loc_CE3ECD: VCallAd Control_ID_dgdABMS
  loc_CE3ED0: CVarAd
  loc_CE3ED4: ParmAry1St
  loc_CE3EDA: FLdPr Me
  loc_CE3EDD: VCallAd Control_ID_dgdPersona
  loc_CE3EE0: CVarAd
  loc_CE3EE4: ParmAry1St
  loc_CE3EEA: FLdPr Me
  loc_CE3EED: VCallAd Control_ID_dgdServDifu
  loc_CE3EF0: CVarAd
  loc_CE3EF4: ParmAry1St
  loc_CE3EFA: FLdRfVar var_98
  loc_CE3EFD: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE3F02: FLdRfVar var_98
  loc_CE3F05: Erase
  loc_CE3F06: FLdPrThis
  loc_CE3F07: VCallAd Control_ID_sstDifunto
  loc_CE3F0A: FStAdFunc var_94
  loc_CE3F0D: FLdPr var_94
  loc_CE3F10: LateIdLdVar var_A8 DispID_4 0
  loc_CE3F17: CI2Var
  loc_CE3F18: CVarI2 var_D8
  loc_CE3F1B: PopAdLdVar
  loc_CE3F1C: FLdPrThis
  loc_CE3F1D: VCallAd Control_ID_sstDifunto
  loc_CE3F20: FStAdFunc var_EC
  loc_CE3F23: FLdPr var_EC
  loc_CE3F26: LateIdCallLdVar
  loc_CE3F30: CStrVarTmp
  loc_CE3F31: FStStrNoPop var_8C
  loc_CE3F34: Call Proc_191_122_AFB9B0()
  loc_CE3F39: FFree1Str var_8C
  loc_CE3F3C: FFreeAd var_94 = ""
  loc_CE3F43: FFreeVar var_A8 = ""
  loc_CE3F4A: ILdRf Me
  loc_CE3F4D: CastAd
  loc_CE3F50: FStAdFunc var_94
  loc_CE3F53: FLdRfVar var_94
  loc_CE3F56: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE3F5B: FFree1Ad var_94
  loc_CE3F5E: LitI4 0
  loc_CE3F63: LitI4 1
  loc_CE3F68: FLdRfVar var_98
  loc_CE3F6B: Redim
  loc_CE3F75: FLdPr Me
  loc_CE3F78: VCallAd Control_ID_FiltroCbo
  loc_CE3F7B: CVarAd
  loc_CE3F7F: ParmAry1St
  loc_CE3F85: FLdPr Me
  loc_CE3F88: VCallAd Control_ID_FiltroMsk
  loc_CE3F8B: CVarAd
  loc_CE3F8F: ParmAry1St
  loc_CE3F95: FLdRfVar var_98
  loc_CE3F98: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE3F9D: FLdRfVar var_98
  loc_CE3FA0: Erase
  loc_CE3FA1: ILdRf Me
  loc_CE3FA4: CastAd
  loc_CE3FA7: FStAdFunc var_94
  loc_CE3FAA: FLdRfVar var_94
  loc_CE3FAD: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_CE3FB2: FFree1Ad var_94
  loc_CE3FB5: FLdPrThis
  loc_CE3FB6: VCallAd Control_ID_sstDifunto
  loc_CE3FB9: FStAdFunc var_94
  loc_CE3FBC: FLdPr var_94
  loc_CE3FBF: LateIdLdVar var_A8 DispID_4 0
  loc_CE3FC6: CI2Var
  loc_CE3FC7: CVarI2 var_D8
  loc_CE3FCA: PopAdLdVar
  loc_CE3FCB: FLdPrThis
  loc_CE3FCC: VCallAd Control_ID_sstDifunto
  loc_CE3FCF: FStAdFunc var_EC
  loc_CE3FD2: FLdPr var_EC
  loc_CE3FD5: LateIdCallLdVar
  loc_CE3FDF: CStrVarTmp
  loc_CE3FE0: CVarStr var_C8
  loc_CE3FE3: FLdRfVar var_FC
  loc_CE3FE6: ImpAdCallFPR4  = Ucase()
  loc_CE3FEB: FLdRfVar var_FC
  loc_CE3FEE: FStVar var_10C
  loc_CE3FF2: FFreeAd var_94 = ""
  loc_CE3FF9: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE4002: FLdRfVar var_10C
  loc_CE4005: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE400A: HardType
  loc_CE400B: EqVarBool
  loc_CE400D: BranchF loc_CE438C
  loc_CE4010: LitI2_Byte 1
  loc_CE4012: FLdPr Me
  loc_CE4015: MemStI2 global_84
  loc_CE4018: LitI4 0
  loc_CE401D: LitI4 &H17
  loc_CE4022: FLdRfVar var_98
  loc_CE4025: Redim
  loc_CE402F: FLdPr Me
  loc_CE4032: VCallAd Control_ID_CucuPersTxt
  loc_CE4035: CVarAd
  loc_CE4039: ParmAry1St
  loc_CE403F: FLdPr Me
  loc_CE4042: VCallAd Control_ID_BuscarTitularCmd
  loc_CE4045: CVarAd
  loc_CE4049: ParmAry1St
  loc_CE404F: FLdPr Me
  loc_CE4052: VCallAd Control_ID_CreaPersonaCmd
  loc_CE4055: CVarAd
  loc_CE4059: ParmAry1St
  loc_CE405F: FLdPr Me
  loc_CE4062: VCallAd Control_ID_CodiInmuTxt
  loc_CE4065: CVarAd
  loc_CE4069: ParmAry1St
  loc_CE406F: FLdPr Me
  loc_CE4072: VCallAd Control_ID_CodiCemeTxt
  loc_CE4075: CVarAd
  loc_CE4079: ParmAry1St
  loc_CE407F: FLdPr Me
  loc_CE4082: VCallAd Control_ID_CodiCemeCmd
  loc_CE4085: CVarAd
  loc_CE4089: ParmAry1St
  loc_CE408F: FLdPr Me
  loc_CE4092: VCallAd Control_ID_CodiTiseTxt
  loc_CE4095: CVarAd
  loc_CE4099: ParmAry1St
  loc_CE409F: FLdPr Me
  loc_CE40A2: VCallAd Control_ID_CodiTiseCmd
  loc_CE40A5: CVarAd
  loc_CE40A9: ParmAry1St
  loc_CE40AF: FLdPr Me
  loc_CE40B2: VCallAd Control_ID_SeccDifuTxt
  loc_CE40B5: CVarAd
  loc_CE40B9: ParmAry1St
  loc_CE40BF: FLdPr Me
  loc_CE40C2: VCallAd Control_ID_PlanDifuCbo
  loc_CE40C5: CVarAd
  loc_CE40C9: ParmAry1St
  loc_CE40CF: FLdPr Me
  loc_CE40D2: VCallAd Control_ID_NumeDifuTxt
  loc_CE40D5: CVarAd
  loc_CE40D9: ParmAry1St
  loc_CE40DF: FLdPr Me
  loc_CE40E2: VCallAd Control_ID_FilaDifuTxt
  loc_CE40E5: CVarAd
  loc_CE40E9: ParmAry1St
  loc_CE40EF: FLdPr Me
  loc_CE40F2: VCallAd Control_ID_ParvDifuChk
  loc_CE40F5: CVarAd
  loc_CE40F9: ParmAry1St
  loc_CE40FF: FLdPr Me
  loc_CE4102: VCallAd Control_ID_CacaDifuTxt
  loc_CE4105: CVarAd
  loc_CE4109: ParmAry1St
  loc_CE410F: FLdPr Me
  loc_CE4112: VCallAd Control_ID_CompDifuTxt
  loc_CE4115: CVarAd
  loc_CE4119: ParmAry1St
  loc_CE411F: FLdPr Me
  loc_CE4122: VCallAd Control_ID_PerpDifuCbo
  loc_CE4125: CVarAd
  loc_CE4129: ParmAry1St
  loc_CE412F: FLdPr Me
  loc_CE4132: VCallAd Control_ID_PeriDifuTxt
  loc_CE4135: CVarAd
  loc_CE4139: ParmAry1St
  loc_CE413F: FLdPr Me
  loc_CE4142: VCallAd Control_ID_MesDifuTxt
  loc_CE4145: CVarAd
  loc_CE4149: ParmAry1St
  loc_CE414F: FLdPr Me
  loc_CE4152: VCallAd Control_ID_AnioDifuTxt
  loc_CE4155: CVarAd
  loc_CE4159: ParmAry1St
  loc_CE415F: FLdPr Me
  loc_CE4162: VCallAd Control_ID_FeveDifuMsk
  loc_CE4165: CVarAd
  loc_CE4169: ParmAry1St
  loc_CE416F: FLdPr Me
  loc_CE4172: VCallAd Control_ID_FeveDifuCmd
  loc_CE4175: CVarAd
  loc_CE4179: ParmAry1St
  loc_CE417F: FLdPr Me
  loc_CE4182: VCallAd Control_ID_ObseDifuTxt
  loc_CE4185: CVarAd
  loc_CE4189: ParmAry1St
  loc_CE418F: FLdPr Me
  loc_CE4192: VCallAd Control_ID_EjerDifuMsk
  loc_CE4195: CVarAd
  loc_CE4199: ParmAry1St
  loc_CE419F: FLdPr Me
  loc_CE41A2: VCallAd Control_ID_BimeDifuMsk
  loc_CE41A5: CVarAd
  loc_CE41A9: ParmAry1St
  loc_CE41AF: FLdRfVar var_98
  loc_CE41B2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE41B7: FLdRfVar var_98
  loc_CE41BA: Erase
  loc_CE41BB: LitStr "0"
  loc_CE41BE: FLdPr Me
  loc_CE41C1: VCallAd Control_ID_CodiDifuTxt
  loc_CE41C4: FStAdFunc var_94
  loc_CE41C7: FLdPr var_94
  loc_CE41CA: Me.Text = from_stack_1
  loc_CE41CF: FFree1Ad var_94
  loc_CE41D2: LitStr "0"
  loc_CE41D5: FLdPr Me
  loc_CE41D8: VCallAd Control_ID_CucuPersTxt
  loc_CE41DB: FStAdFunc var_94
  loc_CE41DE: FLdPr var_94
  loc_CE41E1: Me.Text = from_stack_1
  loc_CE41E6: FFree1Ad var_94
  loc_CE41E9: LitStr "0"
  loc_CE41EC: FLdPr Me
  loc_CE41EF: VCallAd Control_ID_CodiInmuTxt
  loc_CE41F2: FStAdFunc var_94
  loc_CE41F5: FLdPr var_94
  loc_CE41F8: Me.Text = from_stack_1
  loc_CE41FD: FFree1Ad var_94
  loc_CE4200: LitStr "0"
  loc_CE4203: FLdPr Me
  loc_CE4206: VCallAd Control_ID_CodiCemeTxt
  loc_CE4209: FStAdFunc var_94
  loc_CE420C: FLdPr var_94
  loc_CE420F: Me.Text = from_stack_1
  loc_CE4214: FFree1Ad var_94
  loc_CE4217: LitStr "0"
  loc_CE421A: FLdPr Me
  loc_CE421D: VCallAd Control_ID_CodiTiseTxt
  loc_CE4220: FStAdFunc var_94
  loc_CE4223: FLdPr var_94
  loc_CE4226: Me.Text = from_stack_1
  loc_CE422B: FFree1Ad var_94
  loc_CE422E: LitStr "0"
  loc_CE4231: FLdPr Me
  loc_CE4234: VCallAd Control_ID_NumeDifuTxt
  loc_CE4237: FStAdFunc var_94
  loc_CE423A: FLdPr var_94
  loc_CE423D: Me.Text = from_stack_1
  loc_CE4242: FFree1Ad var_94
  loc_CE4245: LitStr "0"
  loc_CE4248: FLdPr Me
  loc_CE424B: VCallAd Control_ID_FilaDifuTxt
  loc_CE424E: FStAdFunc var_94
  loc_CE4251: FLdPr var_94
  loc_CE4254: Me.Text = from_stack_1
  loc_CE4259: FFree1Ad var_94
  loc_CE425C: LitStr "0"
  loc_CE425F: FLdPr Me
  loc_CE4262: VCallAd Control_ID_CacaDifuTxt
  loc_CE4265: FStAdFunc var_94
  loc_CE4268: FLdPr var_94
  loc_CE426B: Me.Text = from_stack_1
  loc_CE4270: FFree1Ad var_94
  loc_CE4273: LitI2_Byte 0
  loc_CE4275: FLdPr Me
  loc_CE4278: VCallAd Control_ID_PlanDifuCbo
  loc_CE427B: FStAdFunc var_94
  loc_CE427E: FLdPr var_94
  loc_CE4281: Me.ListIndex = from_stack_1
  loc_CE4286: FFree1Ad var_94
  loc_CE4289: LitStr "No"
  loc_CE428C: FLdPr Me
  loc_CE428F: VCallAd Control_ID_PerpDifuCbo
  loc_CE4292: FStAdFunc var_94
  loc_CE4295: FLdPr var_94
  loc_CE4298: Me.Text = from_stack_1
  loc_CE429D: FFree1Ad var_94
  loc_CE42A0: LitI2_Byte 0
  loc_CE42A2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE42A7: CVarDate var_A8
  loc_CE42AB: FLdRfVar var_B8
  loc_CE42AE: ImpAdCallFPR4  = Year()
  loc_CE42B3: FLdRfVar var_B8
  loc_CE42B6: CStrVarVal var_8C
  loc_CE42BA: FLdPr Me
  loc_CE42BD: VCallAd Control_ID_PeriDifuTxt
  loc_CE42C0: FStAdFunc var_94
  loc_CE42C3: FLdPr var_94
  loc_CE42C6: Me.Text = from_stack_1
  loc_CE42CB: FFree1Str var_8C
  loc_CE42CE: FFree1Ad var_94
  loc_CE42D1: FFreeVar var_A8 = ""
  loc_CE42D8: LitI2_Byte 0
  loc_CE42DA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE42DF: CVarDate var_A8
  loc_CE42E3: FLdRfVar var_B8
  loc_CE42E6: ImpAdCallFPR4  = Month()
  loc_CE42EB: FLdRfVar var_B8
  loc_CE42EE: CStrVarVal var_8C
  loc_CE42F2: FLdPr Me
  loc_CE42F5: VCallAd Control_ID_MesDifuTxt
  loc_CE42F8: FStAdFunc var_94
  loc_CE42FB: FLdPr var_94
  loc_CE42FE: Me.Text = from_stack_1
  loc_CE4303: FFree1Str var_8C
  loc_CE4306: FFree1Ad var_94
  loc_CE4309: FFreeVar var_A8 = ""
  loc_CE4310: LitStr "0"
  loc_CE4313: FLdPr Me
  loc_CE4316: VCallAd Control_ID_AnioDifuTxt
  loc_CE4319: FStAdFunc var_94
  loc_CE431C: FLdPr var_94
  loc_CE431F: Me.Text = from_stack_1
  loc_CE4324: FFree1Ad var_94
  loc_CE4327: LitI2_Byte 0
  loc_CE4329: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE432E: CStrDate
  loc_CE4330: CVarStr var_A8
  loc_CE4333: PopAdLdVar
  loc_CE4334: FLdPr Me
  loc_CE4337: VCallAd Control_ID_FeveDifuMsk
  loc_CE433A: FStAdFunc var_94
  loc_CE433D: FLdPr var_94
  loc_CE4340: LateIdSt
  loc_CE4345: FFree1Ad var_94
  loc_CE4348: FFree1Var var_A8 = ""
  loc_CE434B: LitI2_Byte 0
  loc_CE434D: CStrUI1
  loc_CE434F: CVarStr var_A8
  loc_CE4352: PopAdLdVar
  loc_CE4353: FLdPr Me
  loc_CE4356: VCallAd Control_ID_EjerDifuMsk
  loc_CE4359: FStAdFunc var_94
  loc_CE435C: FLdPr var_94
  loc_CE435F: LateIdSt
  loc_CE4364: FFree1Ad var_94
  loc_CE4367: FFree1Var var_A8 = ""
  loc_CE436A: LitI2_Byte 0
  loc_CE436C: CStrUI1
  loc_CE436E: CVarStr var_A8
  loc_CE4371: PopAdLdVar
  loc_CE4372: FLdPr Me
  loc_CE4375: VCallAd Control_ID_BimeDifuMsk
  loc_CE4378: FStAdFunc var_94
  loc_CE437B: FLdPr var_94
  loc_CE437E: LateIdSt
  loc_CE4383: FFree1Ad var_94
  loc_CE4386: FFree1Var var_A8 = ""
  loc_CE4389: Branch loc_CE46D5
  loc_CE438C: FLdRfVar var_10C
  loc_CE438F: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE4394: HardType
  loc_CE4395: EqVarBool
  loc_CE4397: BranchF loc_CE4576
  loc_CE439A: LitI2_Byte 1
  loc_CE439C: FLdPr Me
  loc_CE439F: MemStI2 global_84
  loc_CE43A2: FLdRfVar var_250
  loc_CE43A5: FLdRfVar var_94
  loc_CE43A8: FLdPr Me
  loc_CE43AB: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE43AE: NewIfNullPr clsdifunto
  loc_CE43B1: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE43B6: FLdPr var_94
  loc_CE43B9:  = Me.RecordCount
  loc_CE43BE: ILdRf var_250
  loc_CE43C1: LitI4 0
  loc_CE43C6: GtI4
  loc_CE43C7: FFree1Ad var_94
  loc_CE43CA: BranchF loc_CE4573
  loc_CE43CD: LitI2_Byte 0
  loc_CE43CF: CStrUI1
  loc_CE43D1: CVarStr var_A8
  loc_CE43D4: PopAdLdVar
  loc_CE43D5: FLdPr Me
  loc_CE43D8: VCallAd Control_ID_AnioDediMsk
  loc_CE43DB: FStAdFunc var_94
  loc_CE43DE: FLdPr var_94
  loc_CE43E1: LateIdSt
  loc_CE43E6: FFree1Ad var_94
  loc_CE43E9: FFree1Var var_A8 = ""
  loc_CE43EC: LitI2_Byte 0
  loc_CE43EE: CStrUI1
  loc_CE43F0: CVarStr var_A8
  loc_CE43F3: PopAdLdVar
  loc_CE43F4: FLdPr Me
  loc_CE43F7: VCallAd Control_ID_MesDediMsk
  loc_CE43FA: FStAdFunc var_94
  loc_CE43FD: FLdPr var_94
  loc_CE4400: LateIdSt
  loc_CE4405: FFree1Ad var_94
  loc_CE4408: FFree1Var var_A8 = ""
  loc_CE440B: LitI2_Byte 0
  loc_CE440D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE4412: FStFPR8 var_268
  loc_CE4415: LitI4 1
  loc_CE441A: LitI4 1
  loc_CE441F: LitVarStr var_E8, "dd/mm/yyyy"
  loc_CE4424: FStVarCopyObj var_B8
  loc_CE4427: FLdRfVar var_B8
  loc_CE442A: FLdFPR8 var_268
  loc_CE442D: CVarDate var_A8
  loc_CE4431: FLdRfVar var_C8
  loc_CE4434: ImpAdCallFPR4  = Format(, )
  loc_CE4439: FLdRfVar var_C8
  loc_CE443C: CStrVarTmp
  loc_CE443D: CVarStr var_FC
  loc_CE4440: PopAdLdVar
  loc_CE4441: FLdPr Me
  loc_CE4444: VCallAd Control_ID_FeexDediMsk
  loc_CE4447: FStAdFunc var_94
  loc_CE444A: FLdPr var_94
  loc_CE444D: LateIdSt
  loc_CE4452: FFree1Ad var_94
  loc_CE4455: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_CE4460: LitI4 0
  loc_CE4465: LitI4 &HE
  loc_CE446A: FLdRfVar var_98
  loc_CE446D: Redim
  loc_CE4477: FLdPr Me
  loc_CE447A: VCallAd Control_ID_DetaDediTxt
  loc_CE447D: CVarAd
  loc_CE4481: ParmAry1St
  loc_CE4487: FLdPr Me
  loc_CE448A: VCallAd Control_ID_FefaDediMsk
  loc_CE448D: CVarAd
  loc_CE4491: ParmAry1St
  loc_CE4497: FLdPr Me
  loc_CE449A: VCallAd Control_ID_FefaDediCmd
  loc_CE449D: CVarAd
  loc_CE44A1: ParmAry1St
  loc_CE44A7: FLdPr Me
  loc_CE44AA: VCallAd Control_ID_AnioDediMsk
  loc_CE44AD: CVarAd
  loc_CE44B1: ParmAry1St
  loc_CE44B7: FLdPr Me
  loc_CE44BA: VCallAd Control_ID_MesDediMsk
  loc_CE44BD: CVarAd
  loc_CE44C1: ParmAry1St
  loc_CE44C7: FLdPr Me
  loc_CE44CA: VCallAd Control_ID_ActaDediTxt
  loc_CE44CD: CVarAd
  loc_CE44D1: ParmAry1St
  loc_CE44D7: FLdPr Me
  loc_CE44DA: VCallAd Control_ID_ExpeDediTxt
  loc_CE44DD: CVarAd
  loc_CE44E1: ParmAry1St
  loc_CE44E7: FLdPr Me
  loc_CE44EA: VCallAd Control_ID_RegiDediTxt
  loc_CE44ED: CVarAd
  loc_CE44F1: ParmAry1St
  loc_CE44F7: FLdPr Me
  loc_CE44FA: VCallAd Control_ID_FeexDediMsk
  loc_CE44FD: CVarAd
  loc_CE4501: ParmAry1St
  loc_CE4507: FLdPr Me
  loc_CE450A: VCallAd Control_ID_ExexDediTxt
  loc_CE450D: CVarAd
  loc_CE4511: ParmAry1St
  loc_CE4517: FLdPr Me
  loc_CE451A: VCallAd Control_ID_FetrDediMsk
  loc_CE451D: CVarAd
  loc_CE4521: ParmAry1St
  loc_CE4527: FLdPr Me
  loc_CE452A: VCallAd Control_ID_ExrvDediTxt
  loc_CE452D: CVarAd
  loc_CE4531: ParmAry1St
  loc_CE4537: FLdPr Me
  loc_CE453A: VCallAd Control_ID_UbtrDediTxt
  loc_CE453D: CVarAd
  loc_CE4541: ParmAry1St
  loc_CE4547: FLdPr Me
  loc_CE454A: VCallAd Control_ID_ExreDediTxt
  loc_CE454D: CVarAd
  loc_CE4551: ParmAry1St
  loc_CE4557: FLdPr Me
  loc_CE455A: VCallAd Control_ID_FereDediMsk
  loc_CE455D: CVarAd
  loc_CE4561: ParmAry1St
  loc_CE4567: FLdRfVar var_98
  loc_CE456A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE456F: FLdRfVar var_98
  loc_CE4572: Erase
  loc_CE4573: Branch loc_CE46D5
  loc_CE4576: FLdRfVar var_10C
  loc_CE4579: LitVarStr var_D8, "DATOS TITULAR"
  loc_CE457E: HardType
  loc_CE457F: EqVarBool
  loc_CE4581: BranchF loc_CE4658
  loc_CE4584: LitI2_Byte 1
  loc_CE4586: FLdPr Me
  loc_CE4589: MemStI2 global_84
  loc_CE458C: LitStr "0"
  loc_CE458F: FLdPr Me
  loc_CE4592: VCallAd Control_ID_CucuPersTitularTxt
  loc_CE4595: FStAdFunc var_94
  loc_CE4598: FLdPr var_94
  loc_CE459B: Me.Text = from_stack_1
  loc_CE45A0: FFree1Ad var_94
  loc_CE45A3: LitI4 1
  loc_CE45A8: LitI4 1
  loc_CE45AD: LitVarStr var_E8, "0.00"
  loc_CE45B2: FStVarCopyObj var_B8
  loc_CE45B5: FLdRfVar var_B8
  loc_CE45B8: LitVarStr var_D8, "0"
  loc_CE45BD: FStVarCopyObj var_A8
  loc_CE45C0: FLdRfVar var_A8
  loc_CE45C3: FLdRfVar var_C8
  loc_CE45C6: ImpAdCallFPR4  = Format(, )
  loc_CE45CB: FLdRfVar var_C8
  loc_CE45CE: CStrVarVal var_8C
  loc_CE45D2: FLdPr Me
  loc_CE45D5: VCallAd Control_ID_PorcRelaTxt
  loc_CE45D8: FStAdFunc var_94
  loc_CE45DB: FLdPr var_94
  loc_CE45DE: Me.Text = from_stack_1
  loc_CE45E3: FFree1Str var_8C
  loc_CE45E6: FFree1Ad var_94
  loc_CE45E9: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE45F2: LitI4 0
  loc_CE45F7: LitI4 3
  loc_CE45FC: FLdRfVar var_98
  loc_CE45FF: Redim
  loc_CE4609: FLdPr Me
  loc_CE460C: VCallAd Control_ID_CucuPersTitularTxt
  loc_CE460F: CVarAd
  loc_CE4613: ParmAry1St
  loc_CE4619: FLdPr Me
  loc_CE461C: VCallAd Control_ID_CreaPropietarioCmd
  loc_CE461F: CVarAd
  loc_CE4623: ParmAry1St
  loc_CE4629: FLdPr Me
  loc_CE462C: VCallAd Control_ID_BuscarTitularPersonaCmd
  loc_CE462F: CVarAd
  loc_CE4633: ParmAry1St
  loc_CE4639: FLdPr Me
  loc_CE463C: VCallAd Control_ID_PorcRelaTxt
  loc_CE463F: CVarAd
  loc_CE4643: ParmAry1St
  loc_CE4649: FLdRfVar var_98
  loc_CE464C: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE4651: FLdRfVar var_98
  loc_CE4654: Erase
  loc_CE4655: Branch loc_CE46D5
  loc_CE4658: FLdRfVar var_10C
  loc_CE465B: LitVarStr var_D8, "SERVICIOS"
  loc_CE4660: HardType
  loc_CE4661: EqVarBool
  loc_CE4663: BranchF loc_CE46D5
  loc_CE4666: LitI2_Byte 1
  loc_CE4668: FLdPr Me
  loc_CE466B: MemStI2 global_84
  loc_CE466E: LitI2_Byte 0
  loc_CE4670: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE4675: CStrDate
  loc_CE4677: CVarStr var_A8
  loc_CE467A: PopAdLdVar
  loc_CE467B: FLdPr Me
  loc_CE467E: VCallAd Control_ID_FedeSediMsk
  loc_CE4681: FStAdFunc var_94
  loc_CE4684: FLdPr var_94
  loc_CE4687: LateIdSt
  loc_CE468C: FFree1Ad var_94
  loc_CE468F: FFree1Var var_A8 = ""
  loc_CE4692: LitI4 0
  loc_CE4697: LitI4 1
  loc_CE469C: FLdRfVar var_98
  loc_CE469F: Redim
  loc_CE46A9: FLdPr Me
  loc_CE46AC: VCallAd Control_ID_CodiSeceMsk
  loc_CE46AF: CVarAd
  loc_CE46B3: ParmAry1St
  loc_CE46B9: FLdPr Me
  loc_CE46BC: VCallAd Control_ID_FedeSediMsk
  loc_CE46BF: CVarAd
  loc_CE46C3: ParmAry1St
  loc_CE46C9: FLdRfVar var_98
  loc_CE46CC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE46D1: FLdRfVar var_98
  loc_CE46D4: Erase
  loc_CE46D5: Branch loc_CE6A91
  loc_CE46D8: ILdRf var_90
  loc_CE46DB: LitStr "btnModificar"
  loc_CE46DE: EqStr
  loc_CE46E0: BranchF loc_CE4D43
  loc_CE46E3: FLdRfVar var_250
  loc_CE46E6: FLdRfVar var_94
  loc_CE46E9: FLdPr Me
  loc_CE46EC: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE46EF: NewIfNullPr clsdifunto
  loc_CE46F2: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE46F7: FLdPr var_94
  loc_CE46FA:  = Me.RecordCount
  loc_CE46FF: ILdRf var_250
  loc_CE4702: LitI4 0
  loc_CE4707: GtI4
  loc_CE4708: FFree1Ad var_94
  loc_CE470B: BranchF loc_CE4D40
  loc_CE470E: FLdRfVar var_26C
  loc_CE4711: LitVarStr var_D8, "BajaFeho"
  loc_CE4716: PopAdLdVar
  loc_CE4717: FLdRfVar var_EC
  loc_CE471A: FLdRfVar var_94
  loc_CE471D: FLdPr Me
  loc_CE4720: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE4723: NewIfNullPr clsdifunto
  loc_CE4726: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE472B: FLdPr var_94
  loc_CE472E:  = Me.Fields
  loc_CE4733: FLdPr var_EC
  loc_CE4736: from_stack_2 = Me.Item(from_stack_1)
  loc_CE473B: FLdZeroAd var_26C
  loc_CE473E: CVarAd
  loc_CE4742: ImpAdCallI2 IsNull()
  loc_CE4747: FFreeAd var_94 = ""
  loc_CE474E: FFree1Var var_A8 = ""
  loc_CE4751: BranchF loc_CE4D38
  loc_CE4754: FLdPrThis
  loc_CE4755: VCallAd Control_ID_sstDifunto
  loc_CE4758: FStAdFunc var_94
  loc_CE475B: FLdPr var_94
  loc_CE475E: LateIdLdVar var_A8 DispID_4 0
  loc_CE4765: CI2Var
  loc_CE4766: CVarI2 var_D8
  loc_CE4769: PopAdLdVar
  loc_CE476A: FLdPrThis
  loc_CE476B: VCallAd Control_ID_sstDifunto
  loc_CE476E: FStAdFunc var_EC
  loc_CE4771: FLdPr var_EC
  loc_CE4774: LateIdCallLdVar
  loc_CE477E: CStrVarTmp
  loc_CE477F: CVarStr var_C8
  loc_CE4782: FLdRfVar var_FC
  loc_CE4785: ImpAdCallFPR4  = Ucase()
  loc_CE478A: FLdRfVar var_FC
  loc_CE478D: FStVar var_27C
  loc_CE4791: FFreeAd var_94 = ""
  loc_CE4798: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE47A1: FLdRfVar var_27C
  loc_CE47A4: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE47A9: HardType
  loc_CE47AA: EqVarBool
  loc_CE47AC: BranchF loc_CE49AF
  loc_CE47AF: LitI2_Byte 2
  loc_CE47B1: FLdPr Me
  loc_CE47B4: MemStI2 global_84
  loc_CE47B7: ILdRf Me
  loc_CE47BA: CastAd
  loc_CE47BD: FStAdFunc var_94
  loc_CE47C0: FLdRfVar var_94
  loc_CE47C3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE47C8: FFree1Ad var_94
  loc_CE47CB: LitI4 0
  loc_CE47D0: LitI4 2
  loc_CE47D5: FLdRfVar var_98
  loc_CE47D8: Redim
  loc_CE47E2: FLdPr Me
  loc_CE47E5: VCallAd Control_ID_dgdABMS
  loc_CE47E8: CVarAd
  loc_CE47EC: ParmAry1St
  loc_CE47F2: FLdPr Me
  loc_CE47F5: VCallAd Control_ID_dgdPersona
  loc_CE47F8: CVarAd
  loc_CE47FC: ParmAry1St
  loc_CE4802: FLdPr Me
  loc_CE4805: VCallAd Control_ID_dgdServDifu
  loc_CE4808: CVarAd
  loc_CE480C: ParmAry1St
  loc_CE4812: FLdRfVar var_98
  loc_CE4815: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE481A: FLdRfVar var_98
  loc_CE481D: Erase
  loc_CE481E: FLdPrThis
  loc_CE481F: VCallAd Control_ID_sstDifunto
  loc_CE4822: FStAdFunc var_94
  loc_CE4825: FLdPr var_94
  loc_CE4828: LateIdLdVar var_A8 DispID_4 0
  loc_CE482F: CI2Var
  loc_CE4830: CVarI2 var_D8
  loc_CE4833: PopAdLdVar
  loc_CE4834: FLdPrThis
  loc_CE4835: VCallAd Control_ID_sstDifunto
  loc_CE4838: FStAdFunc var_EC
  loc_CE483B: FLdPr var_EC
  loc_CE483E: LateIdCallLdVar
  loc_CE4848: CStrVarTmp
  loc_CE4849: FStStrNoPop var_8C
  loc_CE484C: Call Proc_191_122_AFB9B0()
  loc_CE4851: FFree1Str var_8C
  loc_CE4854: FFreeAd var_94 = ""
  loc_CE485B: FFreeVar var_A8 = ""
  loc_CE4862: ILdRf Me
  loc_CE4865: CastAd
  loc_CE4868: FStAdFunc var_94
  loc_CE486B: FLdRfVar var_94
  loc_CE486E: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE4873: FFree1Ad var_94
  loc_CE4876: LitI4 0
  loc_CE487B: LitI4 &HC
  loc_CE4880: FLdRfVar var_98
  loc_CE4883: Redim
  loc_CE488D: FLdPr Me
  loc_CE4890: VCallAd Control_ID_CodiInmuTxt
  loc_CE4893: CVarAd
  loc_CE4897: ParmAry1St
  loc_CE489D: FLdPr Me
  loc_CE48A0: VCallAd Control_ID_ParvDifuChk
  loc_CE48A3: CVarAd
  loc_CE48A7: ParmAry1St
  loc_CE48AD: FLdPr Me
  loc_CE48B0: VCallAd Control_ID_CacaDifuTxt
  loc_CE48B3: CVarAd
  loc_CE48B7: ParmAry1St
  loc_CE48BD: FLdPr Me
  loc_CE48C0: VCallAd Control_ID_CompDifuTxt
  loc_CE48C3: CVarAd
  loc_CE48C7: ParmAry1St
  loc_CE48CD: FLdPr Me
  loc_CE48D0: VCallAd Control_ID_PerpDifuCbo
  loc_CE48D3: CVarAd
  loc_CE48D7: ParmAry1St
  loc_CE48DD: FLdPr Me
  loc_CE48E0: VCallAd Control_ID_PeriDifuTxt
  loc_CE48E3: CVarAd
  loc_CE48E7: ParmAry1St
  loc_CE48ED: FLdPr Me
  loc_CE48F0: VCallAd Control_ID_MesDifuTxt
  loc_CE48F3: CVarAd
  loc_CE48F7: ParmAry1St
  loc_CE48FD: FLdPr Me
  loc_CE4900: VCallAd Control_ID_AnioDifuTxt
  loc_CE4903: CVarAd
  loc_CE4907: ParmAry1St
  loc_CE490D: FLdPr Me
  loc_CE4910: VCallAd Control_ID_FeveDifuMsk
  loc_CE4913: CVarAd
  loc_CE4917: ParmAry1St
  loc_CE491D: FLdPr Me
  loc_CE4920: VCallAd Control_ID_FeveDifuCmd
  loc_CE4923: CVarAd
  loc_CE4927: ParmAry1St
  loc_CE492D: FLdPr Me
  loc_CE4930: VCallAd Control_ID_ObseDifuTxt
  loc_CE4933: CVarAd
  loc_CE4937: ParmAry1St
  loc_CE493D: FLdPr Me
  loc_CE4940: VCallAd Control_ID_EjerDifuMsk
  loc_CE4943: CVarAd
  loc_CE4947: ParmAry1St
  loc_CE494D: FLdPr Me
  loc_CE4950: VCallAd Control_ID_BimeDifuMsk
  loc_CE4953: CVarAd
  loc_CE4957: ParmAry1St
  loc_CE495D: FLdRfVar var_98
  loc_CE4960: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE4965: FLdRfVar var_98
  loc_CE4968: Erase
  loc_CE4969: LitI4 0
  loc_CE496E: LitI4 1
  loc_CE4973: FLdRfVar var_98
  loc_CE4976: Redim
  loc_CE4980: FLdPr Me
  loc_CE4983: VCallAd Control_ID_FiltroCbo
  loc_CE4986: CVarAd
  loc_CE498A: ParmAry1St
  loc_CE4990: FLdPr Me
  loc_CE4993: VCallAd Control_ID_FiltroMsk
  loc_CE4996: CVarAd
  loc_CE499A: ParmAry1St
  loc_CE49A0: FLdRfVar var_98
  loc_CE49A3: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE49A8: FLdRfVar var_98
  loc_CE49AB: Erase
  loc_CE49AC: Branch loc_CE4D35
  loc_CE49AF: FLdRfVar var_27C
  loc_CE49B2: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE49B7: HardType
  loc_CE49B8: EqVarBool
  loc_CE49BA: BranchF loc_CE4C05
  loc_CE49BD: FLdRfVar var_250
  loc_CE49C0: FLdPr Me
  loc_CE49C3: MemLdRfVar from_stack_1.global_64
  loc_CE49C6: NewIfNullPr clsdifunto
  loc_CE49C9: from_stack_1 = clsdifunto.RecordCount
  loc_CE49CE: ILdRf var_250
  loc_CE49D1: LitI4 0
  loc_CE49D6: GtI4
  loc_CE49D7: BranchF loc_CE4BFA
  loc_CE49DA: LitI2_Byte 2
  loc_CE49DC: FLdPr Me
  loc_CE49DF: MemStI2 global_84
  loc_CE49E2: ILdRf Me
  loc_CE49E5: CastAd
  loc_CE49E8: FStAdFunc var_94
  loc_CE49EB: FLdRfVar var_94
  loc_CE49EE: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE49F3: FFree1Ad var_94
  loc_CE49F6: LitI4 0
  loc_CE49FB: LitI4 2
  loc_CE4A00: FLdRfVar var_98
  loc_CE4A03: Redim
  loc_CE4A0D: FLdPr Me
  loc_CE4A10: VCallAd Control_ID_dgdABMS
  loc_CE4A13: CVarAd
  loc_CE4A17: ParmAry1St
  loc_CE4A1D: FLdPr Me
  loc_CE4A20: VCallAd Control_ID_dgdPersona
  loc_CE4A23: CVarAd
  loc_CE4A27: ParmAry1St
  loc_CE4A2D: FLdPr Me
  loc_CE4A30: VCallAd Control_ID_dgdServDifu
  loc_CE4A33: CVarAd
  loc_CE4A37: ParmAry1St
  loc_CE4A3D: FLdRfVar var_98
  loc_CE4A40: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE4A45: FLdRfVar var_98
  loc_CE4A48: Erase
  loc_CE4A49: FLdPrThis
  loc_CE4A4A: VCallAd Control_ID_sstDifunto
  loc_CE4A4D: FStAdFunc var_94
  loc_CE4A50: FLdPr var_94
  loc_CE4A53: LateIdLdVar var_A8 DispID_4 0
  loc_CE4A5A: CI2Var
  loc_CE4A5B: CVarI2 var_D8
  loc_CE4A5E: PopAdLdVar
  loc_CE4A5F: FLdPrThis
  loc_CE4A60: VCallAd Control_ID_sstDifunto
  loc_CE4A63: FStAdFunc var_EC
  loc_CE4A66: FLdPr var_EC
  loc_CE4A69: LateIdCallLdVar
  loc_CE4A73: CStrVarTmp
  loc_CE4A74: FStStrNoPop var_8C
  loc_CE4A77: Call Proc_191_122_AFB9B0()
  loc_CE4A7C: FFree1Str var_8C
  loc_CE4A7F: FFreeAd var_94 = ""
  loc_CE4A86: FFreeVar var_A8 = ""
  loc_CE4A8D: ILdRf Me
  loc_CE4A90: CastAd
  loc_CE4A93: FStAdFunc var_94
  loc_CE4A96: FLdRfVar var_94
  loc_CE4A99: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE4A9E: FFree1Ad var_94
  loc_CE4AA1: LitI4 0
  loc_CE4AA6: LitI4 &HE
  loc_CE4AAB: FLdRfVar var_98
  loc_CE4AAE: Redim
  loc_CE4AB8: FLdPr Me
  loc_CE4ABB: VCallAd Control_ID_DetaDediTxt
  loc_CE4ABE: CVarAd
  loc_CE4AC2: ParmAry1St
  loc_CE4AC8: FLdPr Me
  loc_CE4ACB: VCallAd Control_ID_FefaDediMsk
  loc_CE4ACE: CVarAd
  loc_CE4AD2: ParmAry1St
  loc_CE4AD8: FLdPr Me
  loc_CE4ADB: VCallAd Control_ID_FefaDediCmd
  loc_CE4ADE: CVarAd
  loc_CE4AE2: ParmAry1St
  loc_CE4AE8: FLdPr Me
  loc_CE4AEB: VCallAd Control_ID_AnioDediMsk
  loc_CE4AEE: CVarAd
  loc_CE4AF2: ParmAry1St
  loc_CE4AF8: FLdPr Me
  loc_CE4AFB: VCallAd Control_ID_MesDediMsk
  loc_CE4AFE: CVarAd
  loc_CE4B02: ParmAry1St
  loc_CE4B08: FLdPr Me
  loc_CE4B0B: VCallAd Control_ID_ActaDediTxt
  loc_CE4B0E: CVarAd
  loc_CE4B12: ParmAry1St
  loc_CE4B18: FLdPr Me
  loc_CE4B1B: VCallAd Control_ID_ExpeDediTxt
  loc_CE4B1E: CVarAd
  loc_CE4B22: ParmAry1St
  loc_CE4B28: FLdPr Me
  loc_CE4B2B: VCallAd Control_ID_RegiDediTxt
  loc_CE4B2E: CVarAd
  loc_CE4B32: ParmAry1St
  loc_CE4B38: FLdPr Me
  loc_CE4B3B: VCallAd Control_ID_FeexDediMsk
  loc_CE4B3E: CVarAd
  loc_CE4B42: ParmAry1St
  loc_CE4B48: FLdPr Me
  loc_CE4B4B: VCallAd Control_ID_ExexDediTxt
  loc_CE4B4E: CVarAd
  loc_CE4B52: ParmAry1St
  loc_CE4B58: FLdPr Me
  loc_CE4B5B: VCallAd Control_ID_FetrDediMsk
  loc_CE4B5E: CVarAd
  loc_CE4B62: ParmAry1St
  loc_CE4B68: FLdPr Me
  loc_CE4B6B: VCallAd Control_ID_ExrvDediTxt
  loc_CE4B6E: CVarAd
  loc_CE4B72: ParmAry1St
  loc_CE4B78: FLdPr Me
  loc_CE4B7B: VCallAd Control_ID_UbtrDediTxt
  loc_CE4B7E: CVarAd
  loc_CE4B82: ParmAry1St
  loc_CE4B88: FLdPr Me
  loc_CE4B8B: VCallAd Control_ID_ExreDediTxt
  loc_CE4B8E: CVarAd
  loc_CE4B92: ParmAry1St
  loc_CE4B98: FLdPr Me
  loc_CE4B9B: VCallAd Control_ID_FereDediMsk
  loc_CE4B9E: CVarAd
  loc_CE4BA2: ParmAry1St
  loc_CE4BA8: FLdRfVar var_98
  loc_CE4BAB: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE4BB0: FLdRfVar var_98
  loc_CE4BB3: Erase
  loc_CE4BB4: LitI4 0
  loc_CE4BB9: LitI4 1
  loc_CE4BBE: FLdRfVar var_98
  loc_CE4BC1: Redim
  loc_CE4BCB: FLdPr Me
  loc_CE4BCE: VCallAd Control_ID_FiltroCbo
  loc_CE4BD1: CVarAd
  loc_CE4BD5: ParmAry1St
  loc_CE4BDB: FLdPr Me
  loc_CE4BDE: VCallAd Control_ID_FiltroMsk
  loc_CE4BE1: CVarAd
  loc_CE4BE5: ParmAry1St
  loc_CE4BEB: FLdRfVar var_98
  loc_CE4BEE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE4BF3: FLdRfVar var_98
  loc_CE4BF6: Erase
  loc_CE4BF7: Branch loc_CE4C02
  loc_CE4BFA: LitStr "No se puede modificar el registro, este no existe"
  loc_CE4BFD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE4C02: Branch loc_CE4D35
  loc_CE4C05: FLdRfVar var_27C
  loc_CE4C08: LitVarStr var_D8, "SERVICIOS"
  loc_CE4C0D: HardType
  loc_CE4C0E: EqVarBool
  loc_CE4C10: BranchF loc_CE4D35
  loc_CE4C13: FLdRfVar var_250
  loc_CE4C16: FLdPr Me
  loc_CE4C19: MemLdRfVar from_stack_1.global_68
  loc_CE4C1C: NewIfNullPr clsservdifu
  loc_CE4C1F: from_stack_1 = clsservdifu.RecordCount
  loc_CE4C24: ILdRf var_250
  loc_CE4C27: LitI4 0
  loc_CE4C2C: GtI4
  loc_CE4C2D: BranchF loc_CE4D2D
  loc_CE4C30: LitI2_Byte 2
  loc_CE4C32: FLdPr Me
  loc_CE4C35: MemStI2 global_84
  loc_CE4C38: ILdRf Me
  loc_CE4C3B: CastAd
  loc_CE4C3E: FStAdFunc var_94
  loc_CE4C41: FLdRfVar var_94
  loc_CE4C44: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE4C49: FFree1Ad var_94
  loc_CE4C4C: LitI4 0
  loc_CE4C51: LitI4 2
  loc_CE4C56: FLdRfVar var_98
  loc_CE4C59: Redim
  loc_CE4C63: FLdPr Me
  loc_CE4C66: VCallAd Control_ID_dgdABMS
  loc_CE4C69: CVarAd
  loc_CE4C6D: ParmAry1St
  loc_CE4C73: FLdPr Me
  loc_CE4C76: VCallAd Control_ID_dgdPersona
  loc_CE4C79: CVarAd
  loc_CE4C7D: ParmAry1St
  loc_CE4C83: FLdPr Me
  loc_CE4C86: VCallAd Control_ID_dgdServDifu
  loc_CE4C89: CVarAd
  loc_CE4C8D: ParmAry1St
  loc_CE4C93: FLdRfVar var_98
  loc_CE4C96: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE4C9B: FLdRfVar var_98
  loc_CE4C9E: Erase
  loc_CE4C9F: FLdPrThis
  loc_CE4CA0: VCallAd Control_ID_sstDifunto
  loc_CE4CA3: FStAdFunc var_94
  loc_CE4CA6: FLdPr var_94
  loc_CE4CA9: LateIdLdVar var_A8 DispID_4 0
  loc_CE4CB0: CI2Var
  loc_CE4CB1: CVarI2 var_D8
  loc_CE4CB4: PopAdLdVar
  loc_CE4CB5: FLdPrThis
  loc_CE4CB6: VCallAd Control_ID_sstDifunto
  loc_CE4CB9: FStAdFunc var_EC
  loc_CE4CBC: FLdPr var_EC
  loc_CE4CBF: LateIdCallLdVar
  loc_CE4CC9: CStrVarTmp
  loc_CE4CCA: FStStrNoPop var_8C
  loc_CE4CCD: Call Proc_191_122_AFB9B0()
  loc_CE4CD2: FFree1Str var_8C
  loc_CE4CD5: FFreeAd var_94 = ""
  loc_CE4CDC: FFreeVar var_A8 = ""
  loc_CE4CE3: ILdRf Me
  loc_CE4CE6: CastAd
  loc_CE4CE9: FStAdFunc var_94
  loc_CE4CEC: FLdRfVar var_94
  loc_CE4CEF: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE4CF4: FFree1Ad var_94
  loc_CE4CF7: LitI4 0
  loc_CE4CFC: LitI4 0
  loc_CE4D01: FLdRfVar var_98
  loc_CE4D04: Redim
  loc_CE4D0E: FLdPr Me
  loc_CE4D11: VCallAd Control_ID_FedeSediMsk
  loc_CE4D14: CVarAd
  loc_CE4D18: ParmAry1St
  loc_CE4D1E: FLdRfVar var_98
  loc_CE4D21: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE4D26: FLdRfVar var_98
  loc_CE4D29: Erase
  loc_CE4D2A: Branch loc_CE4D35
  loc_CE4D2D: LitStr "No se puede modificar el registro, no existe"
  loc_CE4D30: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE4D35: Branch loc_CE4D40
  loc_CE4D38: LitStr "No se puede modificar el registro de cementerio, esta dado de baja"
  loc_CE4D3B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE4D40: Branch loc_CE6A91
  loc_CE4D43: ILdRf var_90
  loc_CE4D46: LitStr "btnEliminar"
  loc_CE4D49: EqStr
  loc_CE4D4B: BranchF loc_CE52D9
  loc_CE4D4E: FLdRfVar var_250
  loc_CE4D51: FLdRfVar var_94
  loc_CE4D54: FLdPr Me
  loc_CE4D57: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE4D5A: NewIfNullPr clsdifunto
  loc_CE4D5D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE4D62: FLdPr var_94
  loc_CE4D65:  = Me.RecordCount
  loc_CE4D6A: ILdRf var_250
  loc_CE4D6D: LitI4 0
  loc_CE4D72: GtI4
  loc_CE4D73: FFree1Ad var_94
  loc_CE4D76: BranchF loc_CE52D6
  loc_CE4D79: FLdPrThis
  loc_CE4D7A: VCallAd Control_ID_sstDifunto
  loc_CE4D7D: FStAdFunc var_94
  loc_CE4D80: FLdPr var_94
  loc_CE4D83: LateIdLdVar var_A8 DispID_4 0
  loc_CE4D8A: CI2Var
  loc_CE4D8B: CVarI2 var_D8
  loc_CE4D8E: PopAdLdVar
  loc_CE4D8F: FLdPrThis
  loc_CE4D90: VCallAd Control_ID_sstDifunto
  loc_CE4D93: FStAdFunc var_EC
  loc_CE4D96: FLdPr var_EC
  loc_CE4D99: LateIdCallLdVar
  loc_CE4DA3: CStrVarTmp
  loc_CE4DA4: CVarStr var_C8
  loc_CE4DA7: FLdRfVar var_FC
  loc_CE4DAA: ImpAdCallFPR4  = Ucase()
  loc_CE4DAF: FLdRfVar var_FC
  loc_CE4DB2: FStVar var_28C
  loc_CE4DB6: FFreeAd var_94 = ""
  loc_CE4DBD: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE4DC6: FLdRfVar var_28C
  loc_CE4DC9: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE4DCE: HardType
  loc_CE4DCF: EqVarBool
  loc_CE4DD1: BranchF loc_CE4F90
  loc_CE4DD4: FLdRfVar var_26C
  loc_CE4DD7: LitVarStr var_D8, "BajaFeho"
  loc_CE4DDC: PopAdLdVar
  loc_CE4DDD: FLdRfVar var_EC
  loc_CE4DE0: FLdRfVar var_94
  loc_CE4DE3: FLdPr Me
  loc_CE4DE6: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE4DE9: NewIfNullPr clsdifunto
  loc_CE4DEC: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE4DF1: FLdPr var_94
  loc_CE4DF4:  = Me.Fields
  loc_CE4DF9: FLdPr var_EC
  loc_CE4DFC: from_stack_2 = Me.Item(from_stack_1)
  loc_CE4E01: FLdZeroAd var_26C
  loc_CE4E04: CVarAd
  loc_CE4E08: ImpAdCallI2 IsNull()
  loc_CE4E0D: FFreeAd var_94 = ""
  loc_CE4E14: FFree1Var var_A8 = ""
  loc_CE4E17: BranchF loc_CE4F85
  loc_CE4E1A: LitI2_Byte 3
  loc_CE4E1C: FLdPr Me
  loc_CE4E1F: MemStI2 global_84
  loc_CE4E22: ILdRf Me
  loc_CE4E25: CastAd
  loc_CE4E28: FStAdFunc var_94
  loc_CE4E2B: FLdRfVar var_94
  loc_CE4E2E: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE4E33: FFree1Ad var_94
  loc_CE4E36: LitI4 0
  loc_CE4E3B: LitI4 1
  loc_CE4E40: FLdRfVar var_98
  loc_CE4E43: Redim
  loc_CE4E4D: FLdPr Me
  loc_CE4E50: VCallAd Control_ID_dgdABMS
  loc_CE4E53: CVarAd
  loc_CE4E57: ParmAry1St
  loc_CE4E5D: FLdPr Me
  loc_CE4E60: VCallAd Control_ID_dgdPersona
  loc_CE4E63: CVarAd
  loc_CE4E67: ParmAry1St
  loc_CE4E6D: FLdRfVar var_98
  loc_CE4E70: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE4E75: FLdRfVar var_98
  loc_CE4E78: Erase
  loc_CE4E79: LitVarI2 var_D8, 0
  loc_CE4E7E: PopAdLdVar
  loc_CE4E7F: LitVar_TRUE var_260
  loc_CE4E82: PopAdLdVar
  loc_CE4E83: FLdPrThis
  loc_CE4E84: VCallAd Control_ID_sstDifunto
  loc_CE4E87: FStAdFunc var_94
  loc_CE4E8A: FLdPr var_94
  loc_CE4E8D: LateIdCallSt
  loc_CE4E95: FFree1Ad var_94
  loc_CE4E98: LitVarI2 var_D8, 1
  loc_CE4E9D: PopAdLdVar
  loc_CE4E9E: LitVar_FALSE
  loc_CE4EA2: PopAdLdVar
  loc_CE4EA3: FLdPrThis
  loc_CE4EA4: VCallAd Control_ID_sstDifunto
  loc_CE4EA7: FStAdFunc var_94
  loc_CE4EAA: FLdPr var_94
  loc_CE4EAD: LateIdCallSt
  loc_CE4EB5: FFree1Ad var_94
  loc_CE4EB8: LitVarI2 var_D8, 2
  loc_CE4EBD: PopAdLdVar
  loc_CE4EBE: LitVar_FALSE
  loc_CE4EC2: PopAdLdVar
  loc_CE4EC3: FLdPrThis
  loc_CE4EC4: VCallAd Control_ID_sstDifunto
  loc_CE4EC7: FStAdFunc var_94
  loc_CE4ECA: FLdPr var_94
  loc_CE4ECD: LateIdCallSt
  loc_CE4ED5: FFree1Ad var_94
  loc_CE4ED8: LitVarI2 var_D8, 3
  loc_CE4EDD: PopAdLdVar
  loc_CE4EDE: LitVar_FALSE
  loc_CE4EE2: PopAdLdVar
  loc_CE4EE3: FLdPrThis
  loc_CE4EE4: VCallAd Control_ID_sstDifunto
  loc_CE4EE7: FStAdFunc var_94
  loc_CE4EEA: FLdPr var_94
  loc_CE4EED: LateIdCallSt
  loc_CE4EF5: FFree1Ad var_94
  loc_CE4EF8: ILdRf Me
  loc_CE4EFB: CastAd
  loc_CE4EFE: FStAdFunc var_94
  loc_CE4F01: FLdRfVar var_94
  loc_CE4F04: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE4F09: FFree1Ad var_94
  loc_CE4F0C: LitI4 0
  loc_CE4F11: LitI4 0
  loc_CE4F16: FLdRfVar var_98
  loc_CE4F19: Redim
  loc_CE4F23: FLdPr Me
  loc_CE4F26: VCallAd Control_ID_MobaDifuTxt
  loc_CE4F29: CVarAd
  loc_CE4F2D: ParmAry1St
  loc_CE4F33: FLdRfVar var_98
  loc_CE4F36: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE4F3B: FLdRfVar var_98
  loc_CE4F3E: Erase
  loc_CE4F3F: LitI4 0
  loc_CE4F44: LitI4 1
  loc_CE4F49: FLdRfVar var_98
  loc_CE4F4C: Redim
  loc_CE4F56: FLdPr Me
  loc_CE4F59: VCallAd Control_ID_FiltroCbo
  loc_CE4F5C: CVarAd
  loc_CE4F60: ParmAry1St
  loc_CE4F66: FLdPr Me
  loc_CE4F69: VCallAd Control_ID_FiltroMsk
  loc_CE4F6C: CVarAd
  loc_CE4F70: ParmAry1St
  loc_CE4F76: FLdRfVar var_98
  loc_CE4F79: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE4F7E: FLdRfVar var_98
  loc_CE4F81: Erase
  loc_CE4F82: Branch loc_CE4F8D
  loc_CE4F85: LitStr "No se puede dar de baja el registro, ya esta dado de baja"
  loc_CE4F88: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE4F8D: Branch loc_CE52D6
  loc_CE4F90: FLdRfVar var_28C
  loc_CE4F93: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE4F98: HardType
  loc_CE4F99: EqVarBool
  loc_CE4F9B: BranchF loc_CE5182
  loc_CE4F9E: FLdRfVar var_250
  loc_CE4FA1: FLdPr Me
  loc_CE4FA4: MemLdRfVar from_stack_1.global_64
  loc_CE4FA7: NewIfNullPr clsdifunto
  loc_CE4FAA: from_stack_1 = clsdifunto.RecordCount
  loc_CE4FAF: ILdRf var_250
  loc_CE4FB2: LitI4 0
  loc_CE4FB7: GtI4
  loc_CE4FB8: BranchF loc_CE5177
  loc_CE4FBB: FLdRfVar var_26C
  loc_CE4FBE: LitVarStr var_D8, "BajaFeho"
  loc_CE4FC3: PopAdLdVar
  loc_CE4FC4: FLdRfVar var_EC
  loc_CE4FC7: FLdRfVar var_94
  loc_CE4FCA: FLdPr Me
  loc_CE4FCD: MemLdRfVar from_stack_1.global_64
  loc_CE4FD0: NewIfNullPr clsdifunto
  loc_CE4FD3: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE4FD8: FLdPr var_94
  loc_CE4FDB:  = Me.Fields
  loc_CE4FE0: FLdPr var_EC
  loc_CE4FE3: from_stack_2 = Me.Item(from_stack_1)
  loc_CE4FE8: FLdZeroAd var_26C
  loc_CE4FEB: CVarAd
  loc_CE4FEF: ImpAdCallI2 IsNull()
  loc_CE4FF4: FFreeAd var_94 = ""
  loc_CE4FFB: FFree1Var var_A8 = ""
  loc_CE4FFE: BranchF loc_CE516C
  loc_CE5001: LitI2_Byte 3
  loc_CE5003: FLdPr Me
  loc_CE5006: MemStI2 global_84
  loc_CE5009: ILdRf Me
  loc_CE500C: CastAd
  loc_CE500F: FStAdFunc var_94
  loc_CE5012: FLdRfVar var_94
  loc_CE5015: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE501A: FFree1Ad var_94
  loc_CE501D: LitI4 0
  loc_CE5022: LitI4 1
  loc_CE5027: FLdRfVar var_98
  loc_CE502A: Redim
  loc_CE5034: FLdPr Me
  loc_CE5037: VCallAd Control_ID_dgdABMS
  loc_CE503A: CVarAd
  loc_CE503E: ParmAry1St
  loc_CE5044: FLdPr Me
  loc_CE5047: VCallAd Control_ID_dgdPersona
  loc_CE504A: CVarAd
  loc_CE504E: ParmAry1St
  loc_CE5054: FLdRfVar var_98
  loc_CE5057: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE505C: FLdRfVar var_98
  loc_CE505F: Erase
  loc_CE5060: LitVarI2 var_D8, 0
  loc_CE5065: PopAdLdVar
  loc_CE5066: LitVar_FALSE
  loc_CE506A: PopAdLdVar
  loc_CE506B: FLdPrThis
  loc_CE506C: VCallAd Control_ID_sstDifunto
  loc_CE506F: FStAdFunc var_94
  loc_CE5072: FLdPr var_94
  loc_CE5075: LateIdCallSt
  loc_CE507D: FFree1Ad var_94
  loc_CE5080: LitVarI2 var_D8, 1
  loc_CE5085: PopAdLdVar
  loc_CE5086: LitVar_TRUE var_260
  loc_CE5089: PopAdLdVar
  loc_CE508A: FLdPrThis
  loc_CE508B: VCallAd Control_ID_sstDifunto
  loc_CE508E: FStAdFunc var_94
  loc_CE5091: FLdPr var_94
  loc_CE5094: LateIdCallSt
  loc_CE509C: FFree1Ad var_94
  loc_CE509F: LitVarI2 var_D8, 2
  loc_CE50A4: PopAdLdVar
  loc_CE50A5: LitVar_FALSE
  loc_CE50A9: PopAdLdVar
  loc_CE50AA: FLdPrThis
  loc_CE50AB: VCallAd Control_ID_sstDifunto
  loc_CE50AE: FStAdFunc var_94
  loc_CE50B1: FLdPr var_94
  loc_CE50B4: LateIdCallSt
  loc_CE50BC: FFree1Ad var_94
  loc_CE50BF: LitVarI2 var_D8, 3
  loc_CE50C4: PopAdLdVar
  loc_CE50C5: LitVar_FALSE
  loc_CE50C9: PopAdLdVar
  loc_CE50CA: FLdPrThis
  loc_CE50CB: VCallAd Control_ID_sstDifunto
  loc_CE50CE: FStAdFunc var_94
  loc_CE50D1: FLdPr var_94
  loc_CE50D4: LateIdCallSt
  loc_CE50DC: FFree1Ad var_94
  loc_CE50DF: ILdRf Me
  loc_CE50E2: CastAd
  loc_CE50E5: FStAdFunc var_94
  loc_CE50E8: FLdRfVar var_94
  loc_CE50EB: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE50F0: FFree1Ad var_94
  loc_CE50F3: LitI4 0
  loc_CE50F8: LitI4 0
  loc_CE50FD: FLdRfVar var_98
  loc_CE5100: Redim
  loc_CE510A: FLdPr Me
  loc_CE510D: VCallAd Control_ID_BajaMotiTxt
  loc_CE5110: CVarAd
  loc_CE5114: ParmAry1St
  loc_CE511A: FLdRfVar var_98
  loc_CE511D: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE5122: FLdRfVar var_98
  loc_CE5125: Erase
  loc_CE5126: LitI4 0
  loc_CE512B: LitI4 1
  loc_CE5130: FLdRfVar var_98
  loc_CE5133: Redim
  loc_CE513D: FLdPr Me
  loc_CE5140: VCallAd Control_ID_FiltroCbo
  loc_CE5143: CVarAd
  loc_CE5147: ParmAry1St
  loc_CE514D: FLdPr Me
  loc_CE5150: VCallAd Control_ID_FiltroMsk
  loc_CE5153: CVarAd
  loc_CE5157: ParmAry1St
  loc_CE515D: FLdRfVar var_98
  loc_CE5160: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE5165: FLdRfVar var_98
  loc_CE5168: Erase
  loc_CE5169: Branch loc_CE5174
  loc_CE516C: LitStr "No se puede dar de baja el registro, ya esta dado de baja"
  loc_CE516F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE5174: Branch loc_CE517F
  loc_CE5177: LitStr "No se puede dar de baja, el registro no existe"
  loc_CE517A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE517F: Branch loc_CE52D6
  loc_CE5182: FLdRfVar var_28C
  loc_CE5185: LitVarStr var_D8, "SERVICIOS"
  loc_CE518A: HardType
  loc_CE518B: EqVarBool
  loc_CE518D: BranchF loc_CE52D6
  loc_CE5190: FLdRfVar var_250
  loc_CE5193: FLdPr Me
  loc_CE5196: MemLdRfVar from_stack_1.global_68
  loc_CE5199: NewIfNullPr clsservdifu
  loc_CE519C: from_stack_1 = clsservdifu.RecordCount
  loc_CE51A1: ILdRf var_250
  loc_CE51A4: LitI4 0
  loc_CE51A9: GtI4
  loc_CE51AA: BranchF loc_CE52CE
  loc_CE51AD: LitI2_Byte 3
  loc_CE51AF: FLdPr Me
  loc_CE51B2: MemStI2 global_84
  loc_CE51B5: ILdRf Me
  loc_CE51B8: CastAd
  loc_CE51BB: FStAdFunc var_94
  loc_CE51BE: FLdRfVar var_94
  loc_CE51C1: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_CE51C6: FFree1Ad var_94
  loc_CE51C9: LitI4 0
  loc_CE51CE: LitI4 2
  loc_CE51D3: FLdRfVar var_98
  loc_CE51D6: Redim
  loc_CE51E0: FLdPr Me
  loc_CE51E3: VCallAd Control_ID_dgdABMS
  loc_CE51E6: CVarAd
  loc_CE51EA: ParmAry1St
  loc_CE51F0: FLdPr Me
  loc_CE51F3: VCallAd Control_ID_dgdPersona
  loc_CE51F6: CVarAd
  loc_CE51FA: ParmAry1St
  loc_CE5200: FLdPr Me
  loc_CE5203: VCallAd Control_ID_dgdServDifu
  loc_CE5206: CVarAd
  loc_CE520A: ParmAry1St
  loc_CE5210: FLdRfVar var_98
  loc_CE5213: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_CE5218: FLdRfVar var_98
  loc_CE521B: Erase
  loc_CE521C: FLdPrThis
  loc_CE521D: VCallAd Control_ID_sstDifunto
  loc_CE5220: FStAdFunc var_94
  loc_CE5223: FLdPr var_94
  loc_CE5226: LateIdLdVar var_A8 DispID_4 0
  loc_CE522D: CI2Var
  loc_CE522E: CVarI2 var_D8
  loc_CE5231: PopAdLdVar
  loc_CE5232: FLdPrThis
  loc_CE5233: VCallAd Control_ID_sstDifunto
  loc_CE5236: FStAdFunc var_EC
  loc_CE5239: FLdPr var_EC
  loc_CE523C: LateIdCallLdVar
  loc_CE5246: CStrVarTmp
  loc_CE5247: FStStrNoPop var_8C
  loc_CE524A: Call Proc_191_122_AFB9B0()
  loc_CE524F: FFree1Str var_8C
  loc_CE5252: FFreeAd var_94 = ""
  loc_CE5259: FFreeVar var_A8 = ""
  loc_CE5260: ILdRf Me
  loc_CE5263: CastAd
  loc_CE5266: FStAdFunc var_94
  loc_CE5269: FLdRfVar var_94
  loc_CE526C: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_CE5271: FFree1Ad var_94
  loc_CE5274: LitI4 0
  loc_CE5279: LitI4 0
  loc_CE527E: FLdRfVar var_98
  loc_CE5281: Redim
  loc_CE528B: FLdPr Me
  loc_CE528E: VCallAd Control_ID_FehaSediMsk
  loc_CE5291: CVarAd
  loc_CE5295: ParmAry1St
  loc_CE529B: FLdRfVar var_98
  loc_CE529E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE52A3: FLdRfVar var_98
  loc_CE52A6: Erase
  loc_CE52A7: LitI2_Byte 0
  loc_CE52A9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CE52AE: CStrDate
  loc_CE52B0: CVarStr var_A8
  loc_CE52B3: PopAdLdVar
  loc_CE52B4: FLdPr Me
  loc_CE52B7: VCallAd Control_ID_FehaSediMsk
  loc_CE52BA: FStAdFunc var_94
  loc_CE52BD: FLdPr var_94
  loc_CE52C0: LateIdSt
  loc_CE52C5: FFree1Ad var_94
  loc_CE52C8: FFree1Var var_A8 = ""
  loc_CE52CB: Branch loc_CE52D6
  loc_CE52CE: LitStr "No se puede modificar el registro, no existe"
  loc_CE52D1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CE52D6: Branch loc_CE6A91
  loc_CE52D9: ILdRf var_90
  loc_CE52DC: LitStr "btnGuardar"
  loc_CE52DF: EqStr
  loc_CE52E1: BranchF loc_CE698D
  loc_CE52E4: FLdPr Me
  loc_CE52E7: MemLdI2 global_84
  loc_CE52EA: FStI2 var_29E
  loc_CE52ED: FLdI2 var_29E
  loc_CE52F0: LitI2_Byte 1
  loc_CE52F2: EqI2
  loc_CE52F3: BranchF loc_CE5CAF
  loc_CE52F6: FLdPrThis
  loc_CE52F7: VCallAd Control_ID_sstDifunto
  loc_CE52FA: FStAdFunc var_94
  loc_CE52FD: FLdPr var_94
  loc_CE5300: LateIdLdVar var_A8 DispID_4 0
  loc_CE5307: CI2Var
  loc_CE5308: CVarI2 var_D8
  loc_CE530B: PopAdLdVar
  loc_CE530C: FLdPrThis
  loc_CE530D: VCallAd Control_ID_sstDifunto
  loc_CE5310: FStAdFunc var_EC
  loc_CE5313: FLdPr var_EC
  loc_CE5316: LateIdCallLdVar
  loc_CE5320: CStrVarTmp
  loc_CE5321: CVarStr var_C8
  loc_CE5324: FLdRfVar var_FC
  loc_CE5327: ImpAdCallFPR4  = Ucase()
  loc_CE532C: FLdRfVar var_FC
  loc_CE532F: FStVar var_2B0
  loc_CE5333: FFreeAd var_94 = ""
  loc_CE533A: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE5343: FLdRfVar var_2B0
  loc_CE5346: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE534B: HardType
  loc_CE534C: EqVarBool
  loc_CE534E: BranchF loc_CE5701
  loc_CE5351: LitStr vbNullString
  loc_CE5354: FLdPr Me
  loc_CE5357: MemStStrCopy
  loc_CE535B: LitI2_Byte &HFF
  loc_CE535D: PopTmpLdAd2 var_2B2
  loc_CE5360: Call CodiCemeTxt_Validate(from_stack_1v)
  loc_CE5365: FLdPr Me
  loc_CE5368: MemLdStr global_88
  loc_CE536B: LitStr vbNullString
  loc_CE536E: NeStr
  loc_CE5370: BranchF loc_CE5374
  loc_CE5373: ExitProcHresult
  loc_CE5374: LitI2_Byte &HFF
  loc_CE5376: PopTmpLdAd2 var_2B2
  loc_CE5379: Call CucuPersTxt_Validate(from_stack_1v)
  loc_CE537E: FLdPr Me
  loc_CE5381: MemLdStr global_88
  loc_CE5384: LitStr vbNullString
  loc_CE5387: NeStr
  loc_CE5389: BranchF loc_CE538D
  loc_CE538C: ExitProcHresult
  loc_CE538D: LitI2_Byte &HFF
  loc_CE538F: PopTmpLdAd2 var_2B2
  loc_CE5392: Call FeveDifuMsk_UnknownEvent_8()
  loc_CE5397: FLdPr Me
  loc_CE539A: MemLdStr global_88
  loc_CE539D: LitStr vbNullString
  loc_CE53A0: NeStr
  loc_CE53A2: BranchF loc_CE53A6
  loc_CE53A5: ExitProcHresult
  loc_CE53A6: LitI2_Byte &HFF
  loc_CE53A8: PopTmpLdAd2 var_2B2
  loc_CE53AB: Call CodiCemeTxt_Validate(from_stack_1v)
  loc_CE53B0: FLdPr Me
  loc_CE53B3: MemLdStr global_88
  loc_CE53B6: LitStr vbNullString
  loc_CE53B9: NeStr
  loc_CE53BB: BranchF loc_CE53BF
  loc_CE53BE: ExitProcHresult
  loc_CE53BF: LitI2_Byte &HFF
  loc_CE53C1: PopTmpLdAd2 var_2B2
  loc_CE53C4: Call CodiTiseTxt_Validate(from_stack_1v)
  loc_CE53C9: FLdPr Me
  loc_CE53CC: MemLdStr global_88
  loc_CE53CF: LitStr vbNullString
  loc_CE53D2: NeStr
  loc_CE53D4: BranchF loc_CE53D8
  loc_CE53D7: ExitProcHresult
  loc_CE53D8: LitI2_Byte &HFF
  loc_CE53DA: PopTmpLdAd2 var_2B2
  loc_CE53DD: Call EjerDifuMsk_UnknownEvent_8()
  loc_CE53E2: FLdPr Me
  loc_CE53E5: MemLdStr global_88
  loc_CE53E8: LitStr vbNullString
  loc_CE53EB: NeStr
  loc_CE53ED: BranchF loc_CE53F1
  loc_CE53F0: ExitProcHresult
  loc_CE53F1: LitI2_Byte &HFF
  loc_CE53F3: PopTmpLdAd2 var_2B2
  loc_CE53F6: Call BimeDifuMsk_UnknownEvent_8()
  loc_CE53FB: FLdPr Me
  loc_CE53FE: MemLdStr global_88
  loc_CE5401: LitStr vbNullString
  loc_CE5404: NeStr
  loc_CE5406: BranchF loc_CE540A
  loc_CE5409: ExitProcHresult
  loc_CE540A: LitI2_Byte &HFF
  loc_CE540C: PopTmpLdAd2 var_2B2
  loc_CE540F: Call SeccDifuTxt_Validate(from_stack_1v)
  loc_CE5414: FLdPr Me
  loc_CE5417: MemLdStr global_88
  loc_CE541A: LitStr vbNullString
  loc_CE541D: NeStr
  loc_CE541F: BranchF loc_CE5423
  loc_CE5422: ExitProcHresult
  loc_CE5423: LitI2_Byte &HFF
  loc_CE5425: PopTmpLdAd2 var_2B2
  loc_CE5428: Call FilaDifuTxt_Validate(from_stack_1v)
  loc_CE542D: FLdPr Me
  loc_CE5430: MemLdStr global_88
  loc_CE5433: LitStr vbNullString
  loc_CE5436: NeStr
  loc_CE5438: BranchF loc_CE543C
  loc_CE543B: ExitProcHresult
  loc_CE543C: LitI2_Byte &HFF
  loc_CE543E: PopTmpLdAd2 var_2B2
  loc_CE5441: Call NumeDifuTxt_Validate(from_stack_1v)
  loc_CE5446: FLdPr Me
  loc_CE5449: MemLdStr global_88
  loc_CE544C: LitStr vbNullString
  loc_CE544F: NeStr
  loc_CE5451: BranchF loc_CE5455
  loc_CE5454: ExitProcHresult
  loc_CE5455: FLdRfVar var_8C
  loc_CE5458: FLdPr Me
  loc_CE545B: VCallAd Control_ID_CodiDifuTxt
  loc_CE545E: FStAdFunc var_94
  loc_CE5461: FLdPr var_94
  loc_CE5464:  = Me.Text
  loc_CE5469: FLdRfVar var_2B8
  loc_CE546C: FLdPr Me
  loc_CE546F: VCallAd Control_ID_CucuPersTxt
  loc_CE5472: FStAdFunc var_EC
  loc_CE5475: FLdPr var_EC
  loc_CE5478:  = Me.Text
  loc_CE547D: FLdRfVar var_2BC
  loc_CE5480: FLdPr Me
  loc_CE5483: VCallAd Control_ID_CodiInmuTxt
  loc_CE5486: FStAdFunc var_26C
  loc_CE5489: FLdPr var_26C
  loc_CE548C:  = Me.Text
  loc_CE5491: FLdRfVar var_2C4
  loc_CE5494: FLdPr Me
  loc_CE5497: VCallAd Control_ID_CodiCemeTxt
  loc_CE549A: FStAdFunc var_2C0
  loc_CE549D: FLdPr var_2C0
  loc_CE54A0:  = Me.Text
  loc_CE54A5: FLdRfVar var_2CC
  loc_CE54A8: FLdPr Me
  loc_CE54AB: VCallAd Control_ID_CodiTiseTxt
  loc_CE54AE: FStAdFunc var_2C8
  loc_CE54B1: FLdPr var_2C8
  loc_CE54B4:  = Me.Text
  loc_CE54B9: FLdRfVar var_2D4
  loc_CE54BC: FLdPr Me
  loc_CE54BF: VCallAd Control_ID_SeccDifuTxt
  loc_CE54C2: FStAdFunc var_2D0
  loc_CE54C5: FLdPr var_2D0
  loc_CE54C8:  = Me.Text
  loc_CE54CD: FLdRfVar var_2B2
  loc_CE54D0: FLdPr Me
  loc_CE54D3: VCallAd Control_ID_PlanDifuCbo
  loc_CE54D6: FStAdFunc var_2D8
  loc_CE54D9: FLdPr var_2D8
  loc_CE54DC:  = Me.ListIndex
  loc_CE54E1: FLdRfVar var_2E0
  loc_CE54E4: FLdPr Me
  loc_CE54E7: VCallAd Control_ID_NumeDifuTxt
  loc_CE54EA: FStAdFunc var_2DC
  loc_CE54ED: FLdPr var_2DC
  loc_CE54F0:  = Me.Text
  loc_CE54F5: FLdRfVar var_2E8
  loc_CE54F8: FLdPr Me
  loc_CE54FB: VCallAd Control_ID_FilaDifuTxt
  loc_CE54FE: FStAdFunc var_2E4
  loc_CE5501: FLdPr var_2E4
  loc_CE5504:  = Me.Text
  loc_CE5509: FLdRfVar var_2F0
  loc_CE550C: FLdPr Me
  loc_CE550F: VCallAd Control_ID_CacaDifuTxt
  loc_CE5512: FStAdFunc var_2EC
  loc_CE5515: FLdPr var_2EC
  loc_CE5518:  = Me.Text
  loc_CE551D: FLdRfVar var_2F8
  loc_CE5520: FLdPr Me
  loc_CE5523: VCallAd Control_ID_CompDifuTxt
  loc_CE5526: FStAdFunc var_2F4
  loc_CE5529: FLdPr var_2F4
  loc_CE552C:  = Me.Text
  loc_CE5531: FLdRfVar var_2FE
  loc_CE5534: FLdPr Me
  loc_CE5537: VCallAd Control_ID_ParvDifuChk
  loc_CE553A: FStAdFunc var_2FC
  loc_CE553D: FLdPr var_2FC
  loc_CE5540:  = Me.Value
  loc_CE5545: FLdPr Me
  loc_CE5548: VCallAd Control_ID_FeveDifuMsk
  loc_CE554B: FStAdFunc var_304
  loc_CE554E: FLdPr var_304
  loc_CE5551: LateIdLdVar var_A8 DispID_15 0
  loc_CE5558: PopAd
  loc_CE555A: FLdRfVar var_30C
  loc_CE555D: FLdPr Me
  loc_CE5560: VCallAd Control_ID_PeriDifuTxt
  loc_CE5563: FStAdFunc var_308
  loc_CE5566: FLdPr var_308
  loc_CE5569:  = Me.Text
  loc_CE556E: FLdRfVar var_314
  loc_CE5571: FLdPr Me
  loc_CE5574: VCallAd Control_ID_MesDifuTxt
  loc_CE5577: FStAdFunc var_310
  loc_CE557A: FLdPr var_310
  loc_CE557D:  = Me.Text
  loc_CE5582: FLdRfVar var_31C
  loc_CE5585: FLdPr Me
  loc_CE5588: VCallAd Control_ID_AnioDifuTxt
  loc_CE558B: FStAdFunc var_318
  loc_CE558E: FLdPr var_318
  loc_CE5591:  = Me.Text
  loc_CE5596: FLdRfVar var_324
  loc_CE5599: FLdPr Me
  loc_CE559C: VCallAd Control_ID_PerpDifuCbo
  loc_CE559F: FStAdFunc var_320
  loc_CE55A2: FLdPr var_320
  loc_CE55A5:  = Me.Text
  loc_CE55AA: FLdRfVar var_32C
  loc_CE55AD: FLdPr Me
  loc_CE55B0: VCallAd Control_ID_ObseDifuTxt
  loc_CE55B3: FStAdFunc var_328
  loc_CE55B6: FLdPr var_328
  loc_CE55B9:  = Me.Text
  loc_CE55BE: FLdPr Me
  loc_CE55C1: VCallAd Control_ID_EjerDifuMsk
  loc_CE55C4: FStAdFunc var_330
  loc_CE55C7: FLdPr var_330
  loc_CE55CA: LateIdLdVar var_B8 DispID_22 0
  loc_CE55D1: PopAd
  loc_CE55D3: FLdPr Me
  loc_CE55D6: VCallAd Control_ID_BimeDifuMsk
  loc_CE55D9: FStAdFunc var_334
  loc_CE55DC: FLdPr var_334
  loc_CE55DF: LateIdLdVar var_C8 DispID_22 0
  loc_CE55E6: CStrVarTmp
  loc_CE55E7: FStStrNoPop var_340
  loc_CE55EA: CI2Str
  loc_CE55EC: FLdRfVar var_B8
  loc_CE55EF: CStrVarTmp
  loc_CE55F0: FStStrNoPop var_33C
  loc_CE55F3: CI2Str
  loc_CE55F5: ILdRf var_32C
  loc_CE55F8: ILdRf var_324
  loc_CE55FB: ILdRf var_31C
  loc_CE55FE: CUI1Str
  loc_CE5600: ILdRf var_314
  loc_CE5603: CUI1Str
  loc_CE5605: ILdRf var_30C
  loc_CE5608: CI2Str
  loc_CE560A: FLdRfVar var_A8
  loc_CE560D: CStrVarTmp
  loc_CE560E: FStStrNoPop var_338
  loc_CE5611: FLdI2 var_2FE
  loc_CE5614: CUI1I2
  loc_CE5616: ILdRf var_2F8
  loc_CE5619: ILdRf var_2F0
  loc_CE561C: CI2Str
  loc_CE561E: ILdRf var_2E8
  loc_CE5621: CI2Str
  loc_CE5623: ILdRf var_2E0
  loc_CE5626: CI2Str
  loc_CE5628: FLdI2 var_2B2
  loc_CE562B: CUI1I2
  loc_CE562D: ILdRf var_2D4
  loc_CE5630: ILdRf var_2CC
  loc_CE5633: CUI1Str
  loc_CE5635: ILdRf var_2C4
  loc_CE5638: CUI1Str
  loc_CE563A: ILdRf var_2BC
  loc_CE563D: CI4Str
  loc_CE563E: ILdRf var_2B8
  loc_CE5641: ILdRf var_8C
  loc_CE5644: FLdPr Me
  loc_CE5647: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE564A: NewIfNullPr clsdifunto
  loc_CE564D: Call clsdifunto.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE5652: FFreeStr var_8C = "": var_2B8 = "": var_2BC = "": var_2C4 = "": var_2CC = "": var_2D4 = "": var_2E0 = "": var_2E8 = "": var_2F0 = "": var_2F8 = "": var_338 = "": var_30C = "": var_314 = "": var_31C = "": var_324 = "": var_32C = "": var_33C = ""
  loc_CE5679: FFreeAd var_94 = "": var_EC = "": var_26C = "": var_2C0 = "": var_2C8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_2F4 = "": var_2FC = "": var_304 = "": var_308 = "": var_310 = "": var_318 = "": var_320 = "": var_328 = "": var_330 = ""
  loc_CE56A4: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE56AD: LitI2_Byte 0
  loc_CE56AF: FLdPr Me
  loc_CE56B2: VCallAd Control_ID_FiltroCbo
  loc_CE56B5: FStAdFunc var_94
  loc_CE56B8: FLdPr var_94
  loc_CE56BB: Me.ListIndex = from_stack_1
  loc_CE56C0: FFree1Ad var_94
  loc_CE56C3: FLdRfVar var_8C
  loc_CE56C6: FLdPr Me
  loc_CE56C9: VCallAd Control_ID_CodiDifuTxt
  loc_CE56CC: FStAdFunc var_94
  loc_CE56CF: FLdPr var_94
  loc_CE56D2:  = Me.Text
  loc_CE56D7: FLdZeroAd var_8C
  loc_CE56DA: CVarStr var_A8
  loc_CE56DD: PopAdLdVar
  loc_CE56DE: FLdPr Me
  loc_CE56E1: VCallAd Control_ID_FiltroMsk
  loc_CE56E4: FStAdFunc var_EC
  loc_CE56E7: FLdPr var_EC
  loc_CE56EA: LateIdSt
  loc_CE56EF: FFreeAd var_94 = ""
  loc_CE56F6: FFree1Var var_A8 = ""
  loc_CE56F9: Call Proc_191_124_ADB058()
  loc_CE56FE: Branch loc_CE5C96
  loc_CE5701: FLdRfVar var_2B0
  loc_CE5704: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE5709: HardType
  loc_CE570A: EqVarBool
  loc_CE570C: BranchF loc_CE5AC4
  loc_CE570F: LitStr vbNullString
  loc_CE5712: FLdPr Me
  loc_CE5715: MemStStrCopy
  loc_CE5719: LitI2_Byte 0
  loc_CE571B: PopTmpLdAd2 var_2B2
  loc_CE571E: Call DetaDediTxt_Validate(from_stack_1v)
  loc_CE5723: FLdPr Me
  loc_CE5726: MemLdStr global_88
  loc_CE5729: LitStr vbNullString
  loc_CE572C: NeStr
  loc_CE572E: BranchF loc_CE5732
  loc_CE5731: ExitProcHresult
  loc_CE5732: LitI2_Byte 0
  loc_CE5734: PopTmpLdAd2 var_2B2
  loc_CE5737: Call FefaDediMsk_UnknownEvent_8()
  loc_CE573C: FLdPr Me
  loc_CE573F: MemLdStr global_88
  loc_CE5742: LitStr vbNullString
  loc_CE5745: NeStr
  loc_CE5747: BranchF loc_CE574B
  loc_CE574A: ExitProcHresult
  loc_CE574B: LitI2_Byte 0
  loc_CE574D: PopTmpLdAd2 var_2B2
  loc_CE5750: Call ActaDediTxt_Validate(from_stack_1v)
  loc_CE5755: FLdPr Me
  loc_CE5758: MemLdStr global_88
  loc_CE575B: LitStr vbNullString
  loc_CE575E: NeStr
  loc_CE5760: BranchF loc_CE5764
  loc_CE5763: ExitProcHresult
  loc_CE5764: LitI2_Byte 0
  loc_CE5766: PopTmpLdAd2 var_2B2
  loc_CE5769: Call ExpeDediTxt_Validate(from_stack_1v)
  loc_CE576E: FLdPr Me
  loc_CE5771: MemLdStr global_88
  loc_CE5774: LitStr vbNullString
  loc_CE5777: NeStr
  loc_CE5779: BranchF loc_CE577D
  loc_CE577C: ExitProcHresult
  loc_CE577D: LitI2_Byte 0
  loc_CE577F: PopTmpLdAd2 var_2B2
  loc_CE5782: Call RegiDediTxt_Validate(from_stack_1v)
  loc_CE5787: FLdPr Me
  loc_CE578A: MemLdStr global_88
  loc_CE578D: LitStr vbNullString
  loc_CE5790: NeStr
  loc_CE5792: BranchF loc_CE5796
  loc_CE5795: ExitProcHresult
  loc_CE5796: LitI2_Byte 0
  loc_CE5798: PopTmpLdAd2 var_2B2
  loc_CE579B: Call FeexDediMsk_UnknownEvent_8()
  loc_CE57A0: FLdPr Me
  loc_CE57A3: MemLdStr global_88
  loc_CE57A6: LitStr vbNullString
  loc_CE57A9: NeStr
  loc_CE57AB: BranchF loc_CE57AF
  loc_CE57AE: ExitProcHresult
  loc_CE57AF: LitI2_Byte 0
  loc_CE57B1: PopTmpLdAd2 var_2B2
  loc_CE57B4: Call ExexDediTxt_Validate(from_stack_1v)
  loc_CE57B9: FLdPr Me
  loc_CE57BC: MemLdStr global_88
  loc_CE57BF: LitStr vbNullString
  loc_CE57C2: NeStr
  loc_CE57C4: BranchF loc_CE57C8
  loc_CE57C7: ExitProcHresult
  loc_CE57C8: LitI2_Byte 0
  loc_CE57CA: PopTmpLdAd2 var_2B2
  loc_CE57CD: Call FetrDediMsk_UnknownEvent_8()
  loc_CE57D2: FLdPr Me
  loc_CE57D5: MemLdStr global_88
  loc_CE57D8: LitStr vbNullString
  loc_CE57DB: NeStr
  loc_CE57DD: BranchF loc_CE57E1
  loc_CE57E0: ExitProcHresult
  loc_CE57E1: LitI2_Byte 0
  loc_CE57E3: PopTmpLdAd2 var_2B2
  loc_CE57E6: Call ExrvDediTxt_Validate(from_stack_1v)
  loc_CE57EB: FLdPr Me
  loc_CE57EE: MemLdStr global_88
  loc_CE57F1: LitStr vbNullString
  loc_CE57F4: NeStr
  loc_CE57F6: BranchF loc_CE57FA
  loc_CE57F9: ExitProcHresult
  loc_CE57FA: LitI2_Byte 0
  loc_CE57FC: PopTmpLdAd2 var_2B2
  loc_CE57FF: Call UbtrDediTxt_Validate(from_stack_1v)
  loc_CE5804: FLdPr Me
  loc_CE5807: MemLdStr global_88
  loc_CE580A: LitStr vbNullString
  loc_CE580D: NeStr
  loc_CE580F: BranchF loc_CE5813
  loc_CE5812: ExitProcHresult
  loc_CE5813: LitI2_Byte 0
  loc_CE5815: PopTmpLdAd2 var_2B2
  loc_CE5818: Call ExreDediTxt_Validate(from_stack_1v)
  loc_CE581D: FLdPr Me
  loc_CE5820: MemLdStr global_88
  loc_CE5823: LitStr vbNullString
  loc_CE5826: NeStr
  loc_CE5828: BranchF loc_CE582C
  loc_CE582B: ExitProcHresult
  loc_CE582C: LitI2_Byte 0
  loc_CE582E: PopTmpLdAd2 var_2B2
  loc_CE5831: Call FereDediMsk_UnknownEvent_8()
  loc_CE5836: FLdPr Me
  loc_CE5839: MemLdStr global_88
  loc_CE583C: LitStr vbNullString
  loc_CE583F: NeStr
  loc_CE5841: BranchF loc_CE5845
  loc_CE5844: ExitProcHresult
  loc_CE5845: FLdRfVar var_A8
  loc_CE5848: FLdRfVar var_26C
  loc_CE584B: LitVarStr var_D8, "CodiDifu"
  loc_CE5850: PopAdLdVar
  loc_CE5851: FLdRfVar var_EC
  loc_CE5854: FLdRfVar var_94
  loc_CE5857: FLdPr Me
  loc_CE585A: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE585D: NewIfNullPr clsdifunto
  loc_CE5860: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE5865: FLdPr var_94
  loc_CE5868:  = Me.Fields
  loc_CE586D: FLdPr var_EC
  loc_CE5870: from_stack_2 = Me.Item(from_stack_1)
  loc_CE5875: FLdPr var_26C
  loc_CE5878:  = Me.Value
  loc_CE587D: FLdRfVar var_A8
  loc_CE5880: CStrVarTmp
  loc_CE5881: FStStrNoPop var_8C
  loc_CE5884: FLdPr Me
  loc_CE5887: MemStStrCopy
  loc_CE588B: FFree1Str var_8C
  loc_CE588E: FFreeAd var_94 = "": var_EC = ""
  loc_CE5897: FFree1Var var_A8 = ""
  loc_CE589A: FLdRfVar var_13C
  loc_CE589D: FLdRfVar var_26C
  loc_CE58A0: LitVarStr var_D8, "CodiDifu"
  loc_CE58A5: PopAdLdVar
  loc_CE58A6: FLdRfVar var_EC
  loc_CE58A9: FLdRfVar var_94
  loc_CE58AC: FLdPr Me
  loc_CE58AF: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE58B2: NewIfNullPr clsdifunto
  loc_CE58B5: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE58BA: FLdPr var_94
  loc_CE58BD:  = Me.Fields
  loc_CE58C2: FLdPr var_EC
  loc_CE58C5: from_stack_2 = Me.Item(from_stack_1)
  loc_CE58CA: FLdPr var_26C
  loc_CE58CD:  = Me.Value
  loc_CE58D2: FLdRfVar var_8C
  loc_CE58D5: FLdPr Me
  loc_CE58D8: VCallAd Control_ID_DetaDediTxt
  loc_CE58DB: FStAdFunc var_2C0
  loc_CE58DE: FLdPr var_2C0
  loc_CE58E1:  = Me.Text
  loc_CE58E6: FLdPr Me
  loc_CE58E9: VCallAd Control_ID_AnioDediMsk
  loc_CE58EC: FStAdFunc var_2C8
  loc_CE58EF: FLdPr var_2C8
  loc_CE58F2: LateIdLdVar var_A8 DispID_22 0
  loc_CE58F9: PopAd
  loc_CE58FB: FLdPr Me
  loc_CE58FE: VCallAd Control_ID_MesDediMsk
  loc_CE5901: FStAdFunc var_2D0
  loc_CE5904: FLdPr var_2D0
  loc_CE5907: LateIdLdVar var_B8 DispID_22 0
  loc_CE590E: PopAd
  loc_CE5910: FLdPr Me
  loc_CE5913: VCallAd Control_ID_FefaDediMsk
  loc_CE5916: FStAdFunc var_2D8
  loc_CE5919: FLdPr var_2D8
  loc_CE591C: LateIdLdVar var_C8 DispID_15 0
  loc_CE5923: PopAd
  loc_CE5925: FLdRfVar var_2B8
  loc_CE5928: FLdPr Me
  loc_CE592B: VCallAd Control_ID_ActaDediTxt
  loc_CE592E: FStAdFunc var_2DC
  loc_CE5931: FLdPr var_2DC
  loc_CE5934:  = Me.Text
  loc_CE5939: FLdRfVar var_2BC
  loc_CE593C: FLdPr Me
  loc_CE593F: VCallAd Control_ID_RegiDediTxt
  loc_CE5942: FStAdFunc var_2E4
  loc_CE5945: FLdPr var_2E4
  loc_CE5948:  = Me.Text
  loc_CE594D: FLdRfVar var_2C4
  loc_CE5950: FLdPr Me
  loc_CE5953: VCallAd Control_ID_ExpeDediTxt
  loc_CE5956: FStAdFunc var_2EC
  loc_CE5959: FLdPr var_2EC
  loc_CE595C:  = Me.Text
  loc_CE5961: FLdRfVar var_2CC
  loc_CE5964: FLdPr Me
  loc_CE5967: VCallAd Control_ID_ExexDediTxt
  loc_CE596A: FStAdFunc var_2F4
  loc_CE596D: FLdPr var_2F4
  loc_CE5970:  = Me.Text
  loc_CE5975: FLdPr Me
  loc_CE5978: VCallAd Control_ID_FeexDediMsk
  loc_CE597B: FStAdFunc var_2FC
  loc_CE597E: FLdPr var_2FC
  loc_CE5981: LateIdLdVar var_FC DispID_15 0
  loc_CE5988: PopAd
  loc_CE598A: FLdPr Me
  loc_CE598D: VCallAd Control_ID_FetrDediMsk
  loc_CE5990: FStAdFunc var_304
  loc_CE5993: FLdPr var_304
  loc_CE5996: LateIdLdVar var_11C DispID_15 0
  loc_CE599D: PopAd
  loc_CE599F: FLdRfVar var_2D4
  loc_CE59A2: FLdPr Me
  loc_CE59A5: VCallAd Control_ID_ExrvDediTxt
  loc_CE59A8: FStAdFunc var_308
  loc_CE59AB: FLdPr var_308
  loc_CE59AE:  = Me.Text
  loc_CE59B3: FLdRfVar var_2E0
  loc_CE59B6: FLdPr Me
  loc_CE59B9: VCallAd Control_ID_UbtrDediTxt
  loc_CE59BC: FStAdFunc var_310
  loc_CE59BF: FLdPr var_310
  loc_CE59C2:  = Me.Text
  loc_CE59C7: FLdRfVar var_2E8
  loc_CE59CA: FLdPr Me
  loc_CE59CD: VCallAd Control_ID_ExreDediTxt
  loc_CE59D0: FStAdFunc var_318
  loc_CE59D3: FLdPr var_318
  loc_CE59D6:  = Me.Text
  loc_CE59DB: FLdPr Me
  loc_CE59DE: VCallAd Control_ID_FereDediMsk
  loc_CE59E1: FStAdFunc var_320
  loc_CE59E4: FLdPr var_320
  loc_CE59E7: LateIdLdVar var_12C DispID_15 0
  loc_CE59EE: CStrVarTmp
  loc_CE59EF: FStStrNoPop var_32C
  loc_CE59F2: ILdRf var_2E8
  loc_CE59F5: ILdRf var_2E0
  loc_CE59F8: ILdRf var_2D4
  loc_CE59FB: FLdRfVar var_11C
  loc_CE59FE: CStrVarTmp
  loc_CE59FF: FStStrNoPop var_324
  loc_CE5A02: FLdRfVar var_FC
  loc_CE5A05: CStrVarTmp
  loc_CE5A06: FStStrNoPop var_31C
  loc_CE5A09: ILdRf var_2CC
  loc_CE5A0C: ILdRf var_2C4
  loc_CE5A0F: ILdRf var_2BC
  loc_CE5A12: ILdRf var_2B8
  loc_CE5A15: FLdRfVar var_C8
  loc_CE5A18: CStrVarTmp
  loc_CE5A19: FStStrNoPop var_314
  loc_CE5A1C: FLdRfVar var_B8
  loc_CE5A1F: CStrVarTmp
  loc_CE5A20: FStStrNoPop var_30C
  loc_CE5A23: CI2Str
  loc_CE5A25: FLdRfVar var_A8
  loc_CE5A28: CStrVarTmp
  loc_CE5A29: FStStrNoPop var_2F8
  loc_CE5A2C: CI2Str
  loc_CE5A2E: ILdRf var_8C
  loc_CE5A31: FLdRfVar var_13C
  loc_CE5A34: CStrVarTmp
  loc_CE5A35: FStStrNoPop var_2F0
  loc_CE5A38: FLdPr Me
  loc_CE5A3B: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE5A3E: NewIfNullPr clsdifunto
  loc_CE5A41: Call clsdifunto.AddNewDetaDifu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE5A46: FFreeStr var_2F0 = "": var_8C = "": var_2F8 = "": var_30C = "": var_314 = "": var_2B8 = "": var_2BC = "": var_2C4 = "": var_2CC = "": var_31C = "": var_324 = "": var_2D4 = "": var_2E0 = "": var_2E8 = ""
  loc_CE5A67: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_2F4 = "": var_2FC = "": var_304 = "": var_308 = "": var_310 = "": var_318 = "": var_320 = ""
  loc_CE5A8C: FFreeVar var_A8 = "": var_B8 = "": var_C8 = "": var_FC = "": var_11C = "": var_12C = ""
  loc_CE5A9D: FLdPr Me
  loc_CE5AA0: MemLdRfVar from_stack_1.global_64
  loc_CE5AA3: NewIfNullPr clsdifunto
  loc_CE5AA6: Call clsdifunto.Requery()
  loc_CE5AAB: LitI2_Byte 1
  loc_CE5AAD: FLdPr Me
  loc_CE5AB0: MemLdStr global_92
  loc_CE5AB3: FLdPr Me
  loc_CE5AB6: MemLdRfVar from_stack_1.global_64
  loc_CE5AB9: NewIfNullPr clsdifunto
  loc_CE5ABC: Call clsdifunto.EncontrarDetaDifu(from_stack_1v, from_stack_2v)
  loc_CE5AC1: Branch loc_CE5C96
  loc_CE5AC4: FLdRfVar var_2B0
  loc_CE5AC7: LitVarStr var_D8, "DATOS TITULAR"
  loc_CE5ACC: HardType
  loc_CE5ACD: EqVarBool
  loc_CE5ACF: BranchF loc_CE5B96
  loc_CE5AD2: LitStr vbNullString
  loc_CE5AD5: FLdPr Me
  loc_CE5AD8: MemStStrCopy
  loc_CE5ADC: LitI2_Byte &HFF
  loc_CE5ADE: PopTmpLdAd2 var_2B2
  loc_CE5AE1: Call CucuPersTitularTxt_Validate(from_stack_1v)
  loc_CE5AE6: FLdPr Me
  loc_CE5AE9: MemLdStr global_88
  loc_CE5AEC: LitStr vbNullString
  loc_CE5AEF: NeStr
  loc_CE5AF1: BranchF loc_CE5AF5
  loc_CE5AF4: ExitProcHresult
  loc_CE5AF5: FLdRfVar var_8C
  loc_CE5AF8: FLdPr Me
  loc_CE5AFB: VCallAd Control_ID_CucuPersTitularTxt
  loc_CE5AFE: FStAdFunc var_2C0
  loc_CE5B01: FLdPr var_2C0
  loc_CE5B04:  = Me.Text
  loc_CE5B09: FLdRfVar var_A8
  loc_CE5B0C: FLdRfVar var_26C
  loc_CE5B0F: LitVarStr var_D8, "CodiDifu"
  loc_CE5B14: PopAdLdVar
  loc_CE5B15: FLdRfVar var_EC
  loc_CE5B18: FLdRfVar var_94
  loc_CE5B1B: FLdPr Me
  loc_CE5B1E: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE5B21: NewIfNullPr clsdifunto
  loc_CE5B24: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE5B29: FLdPr var_94
  loc_CE5B2C:  = Me.Fields
  loc_CE5B31: FLdPr var_EC
  loc_CE5B34: from_stack_2 = Me.Item(from_stack_1)
  loc_CE5B39: FLdPr var_26C
  loc_CE5B3C:  = Me.Value
  loc_CE5B41: FLdRfVar var_2BC
  loc_CE5B44: FLdPr Me
  loc_CE5B47: VCallAd Control_ID_PorcRelaTxt
  loc_CE5B4A: FStAdFunc var_2C8
  loc_CE5B4D: FLdPr var_2C8
  loc_CE5B50:  = Me.Text
  loc_CE5B55: ILdRf var_2BC
  loc_CE5B58: CR8Str
  loc_CE5B5A: PopFPR8
  loc_CE5B5B: LitStr "Propietario"
  loc_CE5B5E: FLdRfVar var_A8
  loc_CE5B61: CStrVarTmp
  loc_CE5B62: FStStrNoPop var_2B8
  loc_CE5B65: LitI2_Byte 4
  loc_CE5B67: CUI1I2
  loc_CE5B69: ILdRf var_8C
  loc_CE5B6C: FLdPr Me
  loc_CE5B6F: MemLdRfVar from_stack_1.global_56
  loc_CE5B72: NewIfNullPr clsrelacion
  loc_CE5B75: Call clsrelacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_CE5B7A: FFreeStr var_8C = "": var_2B8 = ""
  loc_CE5B83: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_26C = ""
  loc_CE5B90: FFree1Var var_A8 = ""
  loc_CE5B93: Branch loc_CE5C96
  loc_CE5B96: FLdRfVar var_2B0
  loc_CE5B99: LitVarStr var_D8, "SERVICIOS"
  loc_CE5B9E: HardType
  loc_CE5B9F: EqVarBool
  loc_CE5BA1: BranchF loc_CE5C96
  loc_CE5BA4: LitStr vbNullString
  loc_CE5BA7: FLdPr Me
  loc_CE5BAA: MemStStrCopy
  loc_CE5BAE: LitI2_Byte 0
  loc_CE5BB0: PopTmpLdAd2 var_2B2
  loc_CE5BB3: Call CodiSeceMsk_UnknownEvent_8()
  loc_CE5BB8: FLdPr Me
  loc_CE5BBB: MemLdStr global_88
  loc_CE5BBE: LitStr vbNullString
  loc_CE5BC1: NeStr
  loc_CE5BC3: BranchF loc_CE5BC7
  loc_CE5BC6: ExitProcHresult
  loc_CE5BC7: LitI2_Byte 0
  loc_CE5BC9: PopTmpLdAd2 var_2B2
  loc_CE5BCC: Call FedeSediMsk_UnknownEvent_8()
  loc_CE5BD1: FLdPr Me
  loc_CE5BD4: MemLdStr global_88
  loc_CE5BD7: LitStr vbNullString
  loc_CE5BDA: NeStr
  loc_CE5BDC: BranchF loc_CE5BE0
  loc_CE5BDF: ExitProcHresult
  loc_CE5BE0: LitI2_Byte 0
  loc_CE5BE2: PopTmpLdAd2 var_2B2
  loc_CE5BE5: Call FehaSediMsk_UnknownEvent_8()
  loc_CE5BEA: FLdPr Me
  loc_CE5BED: MemLdStr global_88
  loc_CE5BF0: LitStr vbNullString
  loc_CE5BF3: NeStr
  loc_CE5BF5: BranchF loc_CE5BF9
  loc_CE5BF8: ExitProcHresult
  loc_CE5BF9: FLdRfVar var_C8
  loc_CE5BFC: FLdRfVar var_26C
  loc_CE5BFF: LitVarStr var_D8, "CodiDifu"
  loc_CE5C04: PopAdLdVar
  loc_CE5C05: FLdRfVar var_EC
  loc_CE5C08: FLdRfVar var_94
  loc_CE5C0B: FLdPr Me
  loc_CE5C0E: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE5C11: NewIfNullPr clsdifunto
  loc_CE5C14: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE5C19: FLdPr var_94
  loc_CE5C1C:  = Me.Fields
  loc_CE5C21: FLdPr var_EC
  loc_CE5C24: from_stack_2 = Me.Item(from_stack_1)
  loc_CE5C29: FLdPr var_26C
  loc_CE5C2C:  = Me.Value
  loc_CE5C31: FLdPr Me
  loc_CE5C34: VCallAd Control_ID_CodiSeceMsk
  loc_CE5C37: FStAdFunc var_2C0
  loc_CE5C3A: FLdPr var_2C0
  loc_CE5C3D: LateIdLdVar var_A8 DispID_22 0
  loc_CE5C44: PopAd
  loc_CE5C46: FLdPr Me
  loc_CE5C49: VCallAd Control_ID_FedeSediMsk
  loc_CE5C4C: FStAdFunc var_2C8
  loc_CE5C4F: FLdPr var_2C8
  loc_CE5C52: LateIdLdVar var_B8 DispID_15 0
  loc_CE5C59: CStrVarTmp
  loc_CE5C5A: FStStrNoPop var_2B8
  loc_CE5C5D: FLdRfVar var_A8
  loc_CE5C60: CStrVarTmp
  loc_CE5C61: FStStrNoPop var_8C
  loc_CE5C64: CI2Str
  loc_CE5C66: FLdRfVar var_C8
  loc_CE5C69: CI4Var
  loc_CE5C6B: FLdPr Me
  loc_CE5C6E: MemLdRfVar from_stack_1.global_68
  loc_CE5C71: NewIfNullPr clsservdifu
  loc_CE5C74: Call clsservdifu.AddNew(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_CE5C79: FFreeStr var_8C = ""
  loc_CE5C80: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = ""
  loc_CE5C8D: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE5C96: LitI2_Byte 0
  loc_CE5C98: ILdRf Me
  loc_CE5C9B: CastAd
  loc_CE5C9E: FStAdFunc var_94
  loc_CE5CA1: FLdRfVar var_94
  loc_CE5CA4: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_CE5CA9: FFree1Ad var_94
  loc_CE5CAC: Branch loc_CE6838
  loc_CE5CAF: FLdI2 var_29E
  loc_CE5CB2: LitI2_Byte 2
  loc_CE5CB4: EqI2
  loc_CE5CB5: BranchF loc_CE6471
  loc_CE5CB8: LitI2_Byte 0
  loc_CE5CBA: ILdRf Me
  loc_CE5CBD: CastAd
  loc_CE5CC0: FStAdFunc var_94
  loc_CE5CC3: FLdRfVar var_94
  loc_CE5CC6: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_CE5CCB: FFree1Ad var_94
  loc_CE5CCE: FLdPrThis
  loc_CE5CCF: VCallAd Control_ID_sstDifunto
  loc_CE5CD2: FStAdFunc var_94
  loc_CE5CD5: FLdPr var_94
  loc_CE5CD8: LateIdLdVar var_A8 DispID_4 0
  loc_CE5CDF: CI2Var
  loc_CE5CE0: CVarI2 var_D8
  loc_CE5CE3: PopAdLdVar
  loc_CE5CE4: FLdPrThis
  loc_CE5CE5: VCallAd Control_ID_sstDifunto
  loc_CE5CE8: FStAdFunc var_EC
  loc_CE5CEB: FLdPr var_EC
  loc_CE5CEE: LateIdCallLdVar
  loc_CE5CF8: CStrVarTmp
  loc_CE5CF9: CVarStr var_C8
  loc_CE5CFC: FLdRfVar var_FC
  loc_CE5CFF: ImpAdCallFPR4  = Ucase()
  loc_CE5D04: FLdRfVar var_FC
  loc_CE5D07: FStVar var_350
  loc_CE5D0B: FFreeAd var_94 = ""
  loc_CE5D12: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE5D1B: FLdRfVar var_350
  loc_CE5D1E: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE5D23: HardType
  loc_CE5D24: EqVarBool
  loc_CE5D26: BranchT loc_CE5D37
  loc_CE5D29: FLdRfVar var_350
  loc_CE5D2C: LitVarStr var_E8, "datos de los difuntos"
  loc_CE5D31: HardType
  loc_CE5D32: EqVarBool
  loc_CE5D34: BranchF loc_CE5F95
  loc_CE5D37: LitI2_Byte &HFF
  loc_CE5D39: PopTmpLdAd2 var_2B2
  loc_CE5D3C: Call FeveDifuMsk_UnknownEvent_8()
  loc_CE5D41: FLdPr Me
  loc_CE5D44: MemLdStr global_88
  loc_CE5D47: LitStr vbNullString
  loc_CE5D4A: NeStr
  loc_CE5D4C: BranchF loc_CE5D50
  loc_CE5D4F: ExitProcHresult
  loc_CE5D50: LitI2_Byte &HFF
  loc_CE5D52: PopTmpLdAd2 var_2B2
  loc_CE5D55: Call CodiCemeTxt_Validate(from_stack_1v)
  loc_CE5D5A: FLdPr Me
  loc_CE5D5D: MemLdStr global_88
  loc_CE5D60: LitStr vbNullString
  loc_CE5D63: NeStr
  loc_CE5D65: BranchF loc_CE5D69
  loc_CE5D68: ExitProcHresult
  loc_CE5D69: LitI2_Byte &HFF
  loc_CE5D6B: PopTmpLdAd2 var_2B2
  loc_CE5D6E: Call CodiTiseTxt_Validate(from_stack_1v)
  loc_CE5D73: FLdPr Me
  loc_CE5D76: MemLdStr global_88
  loc_CE5D79: LitStr vbNullString
  loc_CE5D7C: NeStr
  loc_CE5D7E: BranchF loc_CE5D82
  loc_CE5D81: ExitProcHresult
  loc_CE5D82: LitI2_Byte &HFF
  loc_CE5D84: PopTmpLdAd2 var_2B2
  loc_CE5D87: Call EjerDifuMsk_UnknownEvent_8()
  loc_CE5D8C: FLdPr Me
  loc_CE5D8F: MemLdStr global_88
  loc_CE5D92: LitStr vbNullString
  loc_CE5D95: NeStr
  loc_CE5D97: BranchF loc_CE5D9B
  loc_CE5D9A: ExitProcHresult
  loc_CE5D9B: LitI2_Byte &HFF
  loc_CE5D9D: PopTmpLdAd2 var_2B2
  loc_CE5DA0: Call BimeDifuMsk_UnknownEvent_8()
  loc_CE5DA5: FLdPr Me
  loc_CE5DA8: MemLdStr global_88
  loc_CE5DAB: LitStr vbNullString
  loc_CE5DAE: NeStr
  loc_CE5DB0: BranchF loc_CE5DB4
  loc_CE5DB3: ExitProcHresult
  loc_CE5DB4: LitI2_Byte &HFF
  loc_CE5DB6: PopTmpLdAd2 var_2B2
  loc_CE5DB9: Call SeccDifuTxt_Validate(from_stack_1v)
  loc_CE5DBE: FLdPr Me
  loc_CE5DC1: MemLdStr global_88
  loc_CE5DC4: LitStr vbNullString
  loc_CE5DC7: NeStr
  loc_CE5DC9: BranchF loc_CE5DCD
  loc_CE5DCC: ExitProcHresult
  loc_CE5DCD: LitI2_Byte &HFF
  loc_CE5DCF: PopTmpLdAd2 var_2B2
  loc_CE5DD2: Call FilaDifuTxt_Validate(from_stack_1v)
  loc_CE5DD7: FLdPr Me
  loc_CE5DDA: MemLdStr global_88
  loc_CE5DDD: LitStr vbNullString
  loc_CE5DE0: NeStr
  loc_CE5DE2: BranchF loc_CE5DE6
  loc_CE5DE5: ExitProcHresult
  loc_CE5DE6: LitI2_Byte &HFF
  loc_CE5DE8: PopTmpLdAd2 var_2B2
  loc_CE5DEB: Call NumeDifuTxt_Validate(from_stack_1v)
  loc_CE5DF0: FLdPr Me
  loc_CE5DF3: MemLdStr global_88
  loc_CE5DF6: LitStr vbNullString
  loc_CE5DF9: NeStr
  loc_CE5DFB: BranchF loc_CE5DFF
  loc_CE5DFE: ExitProcHresult
  loc_CE5DFF: FLdRfVar var_8C
  loc_CE5E02: FLdPr Me
  loc_CE5E05: VCallAd Control_ID_CodiDifuTxt
  loc_CE5E08: FStAdFunc var_94
  loc_CE5E0B: FLdPr var_94
  loc_CE5E0E:  = Me.Text
  loc_CE5E13: FLdRfVar var_2B8
  loc_CE5E16: FLdPr Me
  loc_CE5E19: VCallAd Control_ID_CodiInmuTxt
  loc_CE5E1C: FStAdFunc var_EC
  loc_CE5E1F: FLdPr var_EC
  loc_CE5E22:  = Me.Text
  loc_CE5E27: FLdRfVar var_2B2
  loc_CE5E2A: FLdPr Me
  loc_CE5E2D: VCallAd Control_ID_ParvDifuChk
  loc_CE5E30: FStAdFunc var_26C
  loc_CE5E33: FLdPr var_26C
  loc_CE5E36:  = Me.Value
  loc_CE5E3B: FLdRfVar var_2BC
  loc_CE5E3E: FLdPr Me
  loc_CE5E41: VCallAd Control_ID_CacaDifuTxt
  loc_CE5E44: FStAdFunc var_2C0
  loc_CE5E47: FLdPr var_2C0
  loc_CE5E4A:  = Me.Text
  loc_CE5E4F: FLdRfVar var_2C4
  loc_CE5E52: FLdPr Me
  loc_CE5E55: VCallAd Control_ID_CompDifuTxt
  loc_CE5E58: FStAdFunc var_2C8
  loc_CE5E5B: FLdPr var_2C8
  loc_CE5E5E:  = Me.Text
  loc_CE5E63: FLdPr Me
  loc_CE5E66: VCallAd Control_ID_FeveDifuMsk
  loc_CE5E69: FStAdFunc var_2D0
  loc_CE5E6C: FLdPr var_2D0
  loc_CE5E6F: LateIdLdVar var_A8 DispID_15 0
  loc_CE5E76: PopAd
  loc_CE5E78: FLdRfVar var_2CC
  loc_CE5E7B: FLdPr Me
  loc_CE5E7E: VCallAd Control_ID_PeriDifuTxt
  loc_CE5E81: FStAdFunc var_2D8
  loc_CE5E84: FLdPr var_2D8
  loc_CE5E87:  = Me.Text
  loc_CE5E8C: FLdRfVar var_2D4
  loc_CE5E8F: FLdPr Me
  loc_CE5E92: VCallAd Control_ID_MesDifuTxt
  loc_CE5E95: FStAdFunc var_2DC
  loc_CE5E98: FLdPr var_2DC
  loc_CE5E9B:  = Me.Text
  loc_CE5EA0: FLdRfVar var_2E0
  loc_CE5EA3: FLdPr Me
  loc_CE5EA6: VCallAd Control_ID_AnioDifuTxt
  loc_CE5EA9: FStAdFunc var_2E4
  loc_CE5EAC: FLdPr var_2E4
  loc_CE5EAF:  = Me.Text
  loc_CE5EB4: FLdRfVar var_2E8
  loc_CE5EB7: FLdPr Me
  loc_CE5EBA: VCallAd Control_ID_PerpDifuCbo
  loc_CE5EBD: FStAdFunc var_2EC
  loc_CE5EC0: FLdPr var_2EC
  loc_CE5EC3:  = Me.Text
  loc_CE5EC8: FLdRfVar var_2F0
  loc_CE5ECB: FLdPr Me
  loc_CE5ECE: VCallAd Control_ID_ObseDifuTxt
  loc_CE5ED1: FStAdFunc var_2F4
  loc_CE5ED4: FLdPr var_2F4
  loc_CE5ED7:  = Me.Text
  loc_CE5EDC: FLdPr Me
  loc_CE5EDF: VCallAd Control_ID_EjerDifuMsk
  loc_CE5EE2: FStAdFunc var_2FC
  loc_CE5EE5: FLdPr var_2FC
  loc_CE5EE8: LateIdLdVar var_B8 DispID_0 0
  loc_CE5EEF: PopAd
  loc_CE5EF1: FLdPr Me
  loc_CE5EF4: VCallAd Control_ID_BimeDifuMsk
  loc_CE5EF7: FStAdFunc var_304
  loc_CE5EFA: FLdPr var_304
  loc_CE5EFD: LateIdLdVar var_C8 DispID_0 0
  loc_CE5F04: CStrVarTmp
  loc_CE5F05: FStStrNoPop var_314
  loc_CE5F08: CI2Str
  loc_CE5F0A: FLdRfVar var_B8
  loc_CE5F0D: CStrVarTmp
  loc_CE5F0E: FStStrNoPop var_30C
  loc_CE5F11: CI2Str
  loc_CE5F13: ILdRf var_2F0
  loc_CE5F16: ILdRf var_2E8
  loc_CE5F19: ILdRf var_2E0
  loc_CE5F1C: CUI1Str
  loc_CE5F1E: ILdRf var_2D4
  loc_CE5F21: CUI1Str
  loc_CE5F23: ILdRf var_2CC
  loc_CE5F26: CI2Str
  loc_CE5F28: FLdRfVar var_A8
  loc_CE5F2B: CStrVarTmp
  loc_CE5F2C: FStStrNoPop var_2F8
  loc_CE5F2F: ILdRf var_2C4
  loc_CE5F32: ILdRf var_2BC
  loc_CE5F35: CI2Str
  loc_CE5F37: FLdI2 var_2B2
  loc_CE5F3A: CUI1I2
  loc_CE5F3C: ILdRf var_2B8
  loc_CE5F3F: CI4Str
  loc_CE5F40: ILdRf var_8C
  loc_CE5F43: FLdPr Me
  loc_CE5F46: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE5F49: NewIfNullPr clsdifunto
  loc_CE5F4C: Call clsdifunto.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v)
  loc_CE5F51: FFreeStr var_8C = "": var_2B8 = "": var_2BC = "": var_2C4 = "": var_2F8 = "": var_2CC = "": var_2D4 = "": var_2E0 = "": var_2E8 = "": var_2F0 = "": var_30C = ""
  loc_CE5F6C: FFreeAd var_94 = "": var_EC = "": var_26C = "": var_2C0 = "": var_2C8 = "": var_2D0 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_2F4 = "": var_2FC = ""
  loc_CE5F89: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE5F92: Branch loc_CE646E
  loc_CE5F95: FLdRfVar var_350
  loc_CE5F98: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE5F9D: HardType
  loc_CE5F9E: EqVarBool
  loc_CE5FA0: BranchF loc_CE63D3
  loc_CE5FA3: LitStr vbNullString
  loc_CE5FA6: FLdPr Me
  loc_CE5FA9: MemStStrCopy
  loc_CE5FAD: LitI2_Byte 0
  loc_CE5FAF: PopTmpLdAd2 var_2B2
  loc_CE5FB2: Call DetaDediTxt_Validate(from_stack_1v)
  loc_CE5FB7: FLdPr Me
  loc_CE5FBA: MemLdStr global_88
  loc_CE5FBD: LitStr vbNullString
  loc_CE5FC0: NeStr
  loc_CE5FC2: BranchF loc_CE5FC6
  loc_CE5FC5: ExitProcHresult
  loc_CE5FC6: LitI2_Byte 0
  loc_CE5FC8: PopTmpLdAd2 var_2B2
  loc_CE5FCB: Call FefaDediMsk_UnknownEvent_8()
  loc_CE5FD0: FLdPr Me
  loc_CE5FD3: MemLdStr global_88
  loc_CE5FD6: LitStr vbNullString
  loc_CE5FD9: NeStr
  loc_CE5FDB: BranchF loc_CE5FDF
  loc_CE5FDE: ExitProcHresult
  loc_CE5FDF: LitI2_Byte 0
  loc_CE5FE1: PopTmpLdAd2 var_2B2
  loc_CE5FE4: Call ActaDediTxt_Validate(from_stack_1v)
  loc_CE5FE9: FLdPr Me
  loc_CE5FEC: MemLdStr global_88
  loc_CE5FEF: LitStr vbNullString
  loc_CE5FF2: NeStr
  loc_CE5FF4: BranchF loc_CE5FF8
  loc_CE5FF7: ExitProcHresult
  loc_CE5FF8: LitI2_Byte 0
  loc_CE5FFA: PopTmpLdAd2 var_2B2
  loc_CE5FFD: Call ExpeDediTxt_Validate(from_stack_1v)
  loc_CE6002: FLdPr Me
  loc_CE6005: MemLdStr global_88
  loc_CE6008: LitStr vbNullString
  loc_CE600B: NeStr
  loc_CE600D: BranchF loc_CE6011
  loc_CE6010: ExitProcHresult
  loc_CE6011: LitI2_Byte 0
  loc_CE6013: PopTmpLdAd2 var_2B2
  loc_CE6016: Call RegiDediTxt_Validate(from_stack_1v)
  loc_CE601B: FLdPr Me
  loc_CE601E: MemLdStr global_88
  loc_CE6021: LitStr vbNullString
  loc_CE6024: NeStr
  loc_CE6026: BranchF loc_CE602A
  loc_CE6029: ExitProcHresult
  loc_CE602A: LitI2_Byte 0
  loc_CE602C: PopTmpLdAd2 var_2B2
  loc_CE602F: Call FeexDediMsk_UnknownEvent_8()
  loc_CE6034: FLdPr Me
  loc_CE6037: MemLdStr global_88
  loc_CE603A: LitStr vbNullString
  loc_CE603D: NeStr
  loc_CE603F: BranchF loc_CE6043
  loc_CE6042: ExitProcHresult
  loc_CE6043: LitI2_Byte 0
  loc_CE6045: PopTmpLdAd2 var_2B2
  loc_CE6048: Call ExexDediTxt_Validate(from_stack_1v)
  loc_CE604D: FLdPr Me
  loc_CE6050: MemLdStr global_88
  loc_CE6053: LitStr vbNullString
  loc_CE6056: NeStr
  loc_CE6058: BranchF loc_CE605C
  loc_CE605B: ExitProcHresult
  loc_CE605C: LitI2_Byte 0
  loc_CE605E: PopTmpLdAd2 var_2B2
  loc_CE6061: Call FetrDediMsk_UnknownEvent_8()
  loc_CE6066: FLdPr Me
  loc_CE6069: MemLdStr global_88
  loc_CE606C: LitStr vbNullString
  loc_CE606F: NeStr
  loc_CE6071: BranchF loc_CE6075
  loc_CE6074: ExitProcHresult
  loc_CE6075: LitI2_Byte 0
  loc_CE6077: PopTmpLdAd2 var_2B2
  loc_CE607A: Call ExrvDediTxt_Validate(from_stack_1v)
  loc_CE607F: FLdPr Me
  loc_CE6082: MemLdStr global_88
  loc_CE6085: LitStr vbNullString
  loc_CE6088: NeStr
  loc_CE608A: BranchF loc_CE608E
  loc_CE608D: ExitProcHresult
  loc_CE608E: LitI2_Byte 0
  loc_CE6090: PopTmpLdAd2 var_2B2
  loc_CE6093: Call UbtrDediTxt_Validate(from_stack_1v)
  loc_CE6098: FLdPr Me
  loc_CE609B: MemLdStr global_88
  loc_CE609E: LitStr vbNullString
  loc_CE60A1: NeStr
  loc_CE60A3: BranchF loc_CE60A7
  loc_CE60A6: ExitProcHresult
  loc_CE60A7: LitI2_Byte 0
  loc_CE60A9: PopTmpLdAd2 var_2B2
  loc_CE60AC: Call ExreDediTxt_Validate(from_stack_1v)
  loc_CE60B1: FLdPr Me
  loc_CE60B4: MemLdStr global_88
  loc_CE60B7: LitStr vbNullString
  loc_CE60BA: NeStr
  loc_CE60BC: BranchF loc_CE60C0
  loc_CE60BF: ExitProcHresult
  loc_CE60C0: LitI2_Byte 0
  loc_CE60C2: PopTmpLdAd2 var_2B2
  loc_CE60C5: Call FereDediMsk_UnknownEvent_8()
  loc_CE60CA: FLdPr Me
  loc_CE60CD: MemLdStr global_88
  loc_CE60D0: LitStr vbNullString
  loc_CE60D3: NeStr
  loc_CE60D5: BranchF loc_CE60D9
  loc_CE60D8: ExitProcHresult
  loc_CE60D9: FLdRfVar var_13C
  loc_CE60DC: FLdRfVar var_26C
  loc_CE60DF: LitVarStr var_D8, "CodiDifu"
  loc_CE60E4: PopAdLdVar
  loc_CE60E5: FLdRfVar var_EC
  loc_CE60E8: FLdRfVar var_94
  loc_CE60EB: FLdPr Me
  loc_CE60EE: MemLdRfVar from_stack_1.global_64
  loc_CE60F1: NewIfNullPr clsdifunto
  loc_CE60F4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE60F9: FLdPr var_94
  loc_CE60FC:  = Me.Fields
  loc_CE6101: FLdPr var_EC
  loc_CE6104: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6109: FLdPr var_26C
  loc_CE610C:  = Me.Value
  loc_CE6111: FLdRfVar var_14C
  loc_CE6114: FLdRfVar var_2D0
  loc_CE6117: LitVarStr var_E8, "NumeDedi"
  loc_CE611C: PopAdLdVar
  loc_CE611D: FLdRfVar var_2C8
  loc_CE6120: FLdRfVar var_2C0
  loc_CE6123: FLdPr Me
  loc_CE6126: MemLdRfVar from_stack_1.global_64
  loc_CE6129: NewIfNullPr clsdifunto
  loc_CE612C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6131: FLdPr var_2C0
  loc_CE6134:  = Me.Fields
  loc_CE6139: FLdPr var_2C8
  loc_CE613C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6141: FLdPr var_2D0
  loc_CE6144:  = Me.Value
  loc_CE6149: FLdRfVar var_8C
  loc_CE614C: FLdPr Me
  loc_CE614F: VCallAd Control_ID_DetaDediTxt
  loc_CE6152: FStAdFunc var_2D8
  loc_CE6155: FLdPr var_2D8
  loc_CE6158:  = Me.Text
  loc_CE615D: FLdPr Me
  loc_CE6160: VCallAd Control_ID_AnioDediMsk
  loc_CE6163: FStAdFunc var_2DC
  loc_CE6166: FLdPr var_2DC
  loc_CE6169: LateIdLdVar var_A8 DispID_22 0
  loc_CE6170: PopAd
  loc_CE6172: FLdPr Me
  loc_CE6175: VCallAd Control_ID_MesDediMsk
  loc_CE6178: FStAdFunc var_2E4
  loc_CE617B: FLdPr var_2E4
  loc_CE617E: LateIdLdVar var_B8 DispID_22 0
  loc_CE6185: PopAd
  loc_CE6187: FLdPr Me
  loc_CE618A: VCallAd Control_ID_FefaDediMsk
  loc_CE618D: FStAdFunc var_2EC
  loc_CE6190: FLdPr var_2EC
  loc_CE6193: LateIdLdVar var_C8 DispID_15 0
  loc_CE619A: PopAd
  loc_CE619C: FLdRfVar var_2B8
  loc_CE619F: FLdPr Me
  loc_CE61A2: VCallAd Control_ID_ActaDediTxt
  loc_CE61A5: FStAdFunc var_2F4
  loc_CE61A8: FLdPr var_2F4
  loc_CE61AB:  = Me.Text
  loc_CE61B0: FLdRfVar var_2BC
  loc_CE61B3: FLdPr Me
  loc_CE61B6: VCallAd Control_ID_RegiDediTxt
  loc_CE61B9: FStAdFunc var_2FC
  loc_CE61BC: FLdPr var_2FC
  loc_CE61BF:  = Me.Text
  loc_CE61C4: FLdRfVar var_2C4
  loc_CE61C7: FLdPr Me
  loc_CE61CA: VCallAd Control_ID_ExpeDediTxt
  loc_CE61CD: FStAdFunc var_304
  loc_CE61D0: FLdPr var_304
  loc_CE61D3:  = Me.Text
  loc_CE61D8: FLdRfVar var_2CC
  loc_CE61DB: FLdPr Me
  loc_CE61DE: VCallAd Control_ID_ExexDediTxt
  loc_CE61E1: FStAdFunc var_308
  loc_CE61E4: FLdPr var_308
  loc_CE61E7:  = Me.Text
  loc_CE61EC: FLdPr Me
  loc_CE61EF: VCallAd Control_ID_FeexDediMsk
  loc_CE61F2: FStAdFunc var_310
  loc_CE61F5: FLdPr var_310
  loc_CE61F8: LateIdLdVar var_FC DispID_15 0
  loc_CE61FF: PopAd
  loc_CE6201: FLdPr Me
  loc_CE6204: VCallAd Control_ID_FetrDediMsk
  loc_CE6207: FStAdFunc var_318
  loc_CE620A: FLdPr var_318
  loc_CE620D: LateIdLdVar var_11C DispID_15 0
  loc_CE6214: PopAd
  loc_CE6216: FLdRfVar var_2D4
  loc_CE6219: FLdPr Me
  loc_CE621C: VCallAd Control_ID_ExrvDediTxt
  loc_CE621F: FStAdFunc var_320
  loc_CE6222: FLdPr var_320
  loc_CE6225:  = Me.Text
  loc_CE622A: FLdRfVar var_2E0
  loc_CE622D: FLdPr Me
  loc_CE6230: VCallAd Control_ID_UbtrDediTxt
  loc_CE6233: FStAdFunc var_328
  loc_CE6236: FLdPr var_328
  loc_CE6239:  = Me.Text
  loc_CE623E: FLdRfVar var_2E8
  loc_CE6241: FLdPr Me
  loc_CE6244: VCallAd Control_ID_ExreDediTxt
  loc_CE6247: FStAdFunc var_330
  loc_CE624A: FLdPr var_330
  loc_CE624D:  = Me.Text
  loc_CE6252: FLdPr Me
  loc_CE6255: VCallAd Control_ID_FereDediMsk
  loc_CE6258: FStAdFunc var_334
  loc_CE625B: FLdPr var_334
  loc_CE625E: LateIdLdVar var_12C DispID_15 0
  loc_CE6265: CStrVarTmp
  loc_CE6266: FStStrNoPop var_32C
  loc_CE6269: ILdRf var_2E8
  loc_CE626C: ILdRf var_2E0
  loc_CE626F: ILdRf var_2D4
  loc_CE6272: FLdRfVar var_11C
  loc_CE6275: CStrVarTmp
  loc_CE6276: FStStrNoPop var_324
  loc_CE6279: FLdRfVar var_FC
  loc_CE627C: CStrVarTmp
  loc_CE627D: FStStrNoPop var_31C
  loc_CE6280: ILdRf var_2CC
  loc_CE6283: ILdRf var_2C4
  loc_CE6286: ILdRf var_2BC
  loc_CE6289: ILdRf var_2B8
  loc_CE628C: FLdRfVar var_C8
  loc_CE628F: CStrVarTmp
  loc_CE6290: FStStrNoPop var_314
  loc_CE6293: FLdRfVar var_B8
  loc_CE6296: CStrVarTmp
  loc_CE6297: FStStrNoPop var_30C
  loc_CE629A: CI2Str
  loc_CE629C: FLdRfVar var_A8
  loc_CE629F: CStrVarTmp
  loc_CE62A0: FStStrNoPop var_2F8
  loc_CE62A3: CI2Str
  loc_CE62A5: ILdRf var_8C
  loc_CE62A8: FLdRfVar var_14C
  loc_CE62AB: CI2Var
  loc_CE62AC: FLdRfVar var_13C
  loc_CE62AF: CStrVarTmp
  loc_CE62B0: FStStrNoPop var_2F0
  loc_CE62B3: FLdPr Me
  loc_CE62B6: MemLdRfVar from_stack_1.global_64
  loc_CE62B9: NewIfNullPr clsdifunto
  loc_CE62BC: Call clsdifunto.ModificarDetaDifu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CE62C1: FFreeStr var_2F0 = "": var_8C = "": var_2F8 = "": var_30C = "": var_314 = "": var_2B8 = "": var_2BC = "": var_2C4 = "": var_2CC = "": var_31C = "": var_324 = "": var_2D4 = "": var_2E0 = "": var_2E8 = ""
  loc_CE62E2: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = "": var_2D8 = "": var_2DC = "": var_2E4 = "": var_2EC = "": var_2F4 = "": var_2FC = "": var_304 = "": var_308 = "": var_310 = "": var_318 = "": var_320 = "": var_328 = "": var_330 = "": var_334 = "": var_26C = ""
  loc_CE630D: FFreeVar var_A8 = "": var_B8 = "": var_C8 = "": var_FC = "": var_11C = "": var_12C = "": var_13C = ""
  loc_CE6320: FLdPr Me
  loc_CE6323: MemLdRfVar from_stack_1.global_64
  loc_CE6326: NewIfNullPr clsdifunto
  loc_CE6329: Call clsdifunto.Requery()
  loc_CE632E: FLdRfVar var_A8
  loc_CE6331: FLdRfVar var_26C
  loc_CE6334: LitVarStr var_D8, "CodiDifu"
  loc_CE6339: PopAdLdVar
  loc_CE633A: FLdRfVar var_EC
  loc_CE633D: FLdRfVar var_94
  loc_CE6340: FLdPr Me
  loc_CE6343: MemLdRfVar from_stack_1.global_64
  loc_CE6346: NewIfNullPr clsdifunto
  loc_CE6349: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE634E: FLdPr var_94
  loc_CE6351:  = Me.Fields
  loc_CE6356: FLdPr var_EC
  loc_CE6359: from_stack_2 = Me.Item(from_stack_1)
  loc_CE635E: FLdPr var_26C
  loc_CE6361:  = Me.Value
  loc_CE6366: FLdRfVar var_B8
  loc_CE6369: FLdRfVar var_2D0
  loc_CE636C: LitVarStr var_E8, "NumeDedi"
  loc_CE6371: PopAdLdVar
  loc_CE6372: FLdRfVar var_2C8
  loc_CE6375: FLdRfVar var_2C0
  loc_CE6378: FLdPr Me
  loc_CE637B: MemLdRfVar from_stack_1.global_64
  loc_CE637E: NewIfNullPr clsdifunto
  loc_CE6381: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6386: FLdPr var_2C0
  loc_CE6389:  = Me.Fields
  loc_CE638E: FLdPr var_2C8
  loc_CE6391: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6396: FLdPr var_2D0
  loc_CE6399:  = Me.Value
  loc_CE639E: FLdRfVar var_B8
  loc_CE63A1: CI2Var
  loc_CE63A2: FLdRfVar var_A8
  loc_CE63A5: CStrVarTmp
  loc_CE63A6: FStStrNoPop var_8C
  loc_CE63A9: FLdPr Me
  loc_CE63AC: MemLdRfVar from_stack_1.global_64
  loc_CE63AF: NewIfNullPr clsdifunto
  loc_CE63B2: Call clsdifunto.EncontrarDetaDifu(from_stack_1v, from_stack_2v)
  loc_CE63B7: FFree1Str var_8C
  loc_CE63BA: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = "": var_26C = ""
  loc_CE63C9: FFreeVar var_A8 = ""
  loc_CE63D0: Branch loc_CE646E
  loc_CE63D3: FLdRfVar var_350
  loc_CE63D6: LitVarStr var_D8, "SERVICIOS"
  loc_CE63DB: HardType
  loc_CE63DC: EqVarBool
  loc_CE63DE: BranchF loc_CE646E
  loc_CE63E1: LitStr vbNullString
  loc_CE63E4: FLdPr Me
  loc_CE63E7: MemStStrCopy
  loc_CE63EB: LitI2_Byte 0
  loc_CE63ED: PopTmpLdAd2 var_2B2
  loc_CE63F0: Call FedeSediMsk_UnknownEvent_8()
  loc_CE63F5: FLdPr Me
  loc_CE63F8: MemLdStr global_88
  loc_CE63FB: LitStr vbNullString
  loc_CE63FE: NeStr
  loc_CE6400: BranchF loc_CE6404
  loc_CE6403: ExitProcHresult
  loc_CE6404: FLdRfVar var_250
  loc_CE6407: FLdPr Me
  loc_CE640A: MemLdRfVar from_stack_1.global_68
  loc_CE640D: NewIfNullPr clsservdifu
  loc_CE6410: from_stack_1 = clsservdifu.CodiDifu
  loc_CE6415: FLdRfVar var_2B2
  loc_CE6418: FLdPr Me
  loc_CE641B: MemLdRfVar from_stack_1.global_68
  loc_CE641E: NewIfNullPr clsservdifu
  loc_CE6421: from_stack_1 = clsservdifu.CodiSece
  loc_CE6426: FLdRfVar var_2FE
  loc_CE6429: FLdPr Me
  loc_CE642C: MemLdRfVar from_stack_1.global_68
  loc_CE642F: NewIfNullPr clsservdifu
  loc_CE6432: from_stack_1 = clsservdifu.CodiSedi
  loc_CE6437: FLdPr Me
  loc_CE643A: VCallAd Control_ID_FedeSediMsk
  loc_CE643D: FStAdFunc var_94
  loc_CE6440: FLdPr var_94
  loc_CE6443: LateIdLdVar var_A8 DispID_15 0
  loc_CE644A: CStrVarTmp
  loc_CE644B: FStStrNoPop var_8C
  loc_CE644E: FLdI2 var_2FE
  loc_CE6451: FLdI2 var_2B2
  loc_CE6454: ILdRf var_250
  loc_CE6457: FLdPr Me
  loc_CE645A: MemLdRfVar from_stack_1.global_68
  loc_CE645D: NewIfNullPr clsservdifu
  loc_CE6460: Call clsservdifu.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CE6465: FFree1Str var_8C
  loc_CE6468: FFree1Ad var_94
  loc_CE646B: FFree1Var var_A8 = ""
  loc_CE646E: Branch loc_CE6838
  loc_CE6471: FLdI2 var_29E
  loc_CE6474: LitI2_Byte 3
  loc_CE6476: EqI2
  loc_CE6477: BranchF loc_CE6838
  loc_CE647A: LitI2_Byte 0
  loc_CE647C: ILdRf Me
  loc_CE647F: CastAd
  loc_CE6482: FStAdFunc var_94
  loc_CE6485: FLdRfVar var_94
  loc_CE6488: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_CE648D: FFree1Ad var_94
  loc_CE6490: FLdPrThis
  loc_CE6491: VCallAd Control_ID_sstDifunto
  loc_CE6494: FStAdFunc var_94
  loc_CE6497: FLdPr var_94
  loc_CE649A: LateIdLdVar var_A8 DispID_4 0
  loc_CE64A1: CI2Var
  loc_CE64A2: CVarI2 var_D8
  loc_CE64A5: PopAdLdVar
  loc_CE64A6: FLdPrThis
  loc_CE64A7: VCallAd Control_ID_sstDifunto
  loc_CE64AA: FStAdFunc var_EC
  loc_CE64AD: FLdPr var_EC
  loc_CE64B0: LateIdCallLdVar
  loc_CE64BA: CStrVarTmp
  loc_CE64BB: CVarStr var_C8
  loc_CE64BE: FLdRfVar var_FC
  loc_CE64C1: ImpAdCallFPR4  = Ucase()
  loc_CE64C6: FLdRfVar var_FC
  loc_CE64C9: FStVar var_360
  loc_CE64CD: FFreeAd var_94 = ""
  loc_CE64D4: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE64DD: FLdRfVar var_360
  loc_CE64E0: LitVarStr var_D8, "REGISTRO CEMENTERIO"
  loc_CE64E5: HardType
  loc_CE64E6: EqVarBool
  loc_CE64E8: BranchF loc_CE65F8
  loc_CE64EB: LitStr vbNullString
  loc_CE64EE: FLdPr Me
  loc_CE64F1: MemStStrCopy
  loc_CE64F5: LitI2_Byte &HFF
  loc_CE64F7: PopTmpLdAd2 var_2B2
  loc_CE64FA: Call MobaDifuTxt_Validate(from_stack_1v)
  loc_CE64FF: FLdPr Me
  loc_CE6502: MemLdStr global_88
  loc_CE6505: LitStr vbNullString
  loc_CE6508: NeStr
  loc_CE650A: BranchF loc_CE650E
  loc_CE650D: ExitProcHresult
  loc_CE650E: FLdRfVar var_8C
  loc_CE6511: FLdPr Me
  loc_CE6514: VCallAd Control_ID_CodiDifuTxt
  loc_CE6517: FStAdFunc var_94
  loc_CE651A: FLdPr var_94
  loc_CE651D:  = Me.Text
  loc_CE6522: FLdRfVar var_2B8
  loc_CE6525: FLdPr Me
  loc_CE6528: VCallAd Control_ID_MobaDifuTxt
  loc_CE652B: FStAdFunc var_EC
  loc_CE652E: FLdPr var_EC
  loc_CE6531:  = Me.Text
  loc_CE6536: ILdRf var_2B8
  loc_CE6539: ILdRf var_8C
  loc_CE653C: FLdPr Me
  loc_CE653F: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE6542: NewIfNullPr clsdifunto
  loc_CE6545: Call clsdifunto.Baja(from_stack_1v, from_stack_2v)
  loc_CE654A: FFreeStr var_8C = ""
  loc_CE6551: FFreeAd var_94 = ""
  loc_CE6558: FLdRfVar var_250
  loc_CE655B: FLdPr Me
  loc_CE655E: MemLdRfVar from_stack_1.global_64
  loc_CE6561: NewIfNullPr clsdifunto
  loc_CE6564: from_stack_1 = clsdifunto.RecordCount
  loc_CE6569: ILdRf var_250
  loc_CE656C: LitI4 0
  loc_CE6571: GtI4
  loc_CE6572: BranchF loc_CE65F5
  loc_CE6575: LitVar_Missing var_FC
  loc_CE6578: LitVar_Missing var_C8
  loc_CE657B: LitVar_Missing var_B8
  loc_CE657E: LitI4 4
  loc_CE6583: LitVarStr var_D8, "¿Desea dar de baja a los datos del difunto?"
  loc_CE6588: FStVarCopyObj var_A8
  loc_CE658B: FLdRfVar var_A8
  loc_CE658E: ImpAdCallI2 MsgBox(, , , , )
  loc_CE6593: LitI4 6
  loc_CE6598: EqI4
  loc_CE6599: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_CE65A4: BranchF loc_CE65F5
  loc_CE65A7: FLdRfVar var_8C
  loc_CE65AA: FLdPr Me
  loc_CE65AD: VCallAd Control_ID_CodiDifuTxt
  loc_CE65B0: FStAdFunc var_94
  loc_CE65B3: FLdPr var_94
  loc_CE65B6:  = Me.Text
  loc_CE65BB: FLdRfVar var_2B8
  loc_CE65BE: FLdPr Me
  loc_CE65C1: VCallAd Control_ID_MobaDifuTxt
  loc_CE65C4: FStAdFunc var_EC
  loc_CE65C7: FLdPr var_EC
  loc_CE65CA:  = Me.Text
  loc_CE65CF: LitI2_Byte &HFF
  loc_CE65D1: ILdRf var_2B8
  loc_CE65D4: LitI2_Byte 1
  loc_CE65D6: ILdRf var_8C
  loc_CE65D9: FLdPr Me
  loc_CE65DC: MemLdRfVar from_stack_1.global_64
  loc_CE65DF: NewIfNullPr clsdifunto
  loc_CE65E2: Call clsdifunto.AnulandoDifunto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CE65E7: FFreeStr var_8C = ""
  loc_CE65EE: FFreeAd var_94 = ""
  loc_CE65F5: Branch loc_CE6838
  loc_CE65F8: FLdRfVar var_360
  loc_CE65FB: LitVarStr var_D8, "DATOS DE LOS DIFUNTOS"
  loc_CE6600: HardType
  loc_CE6601: EqVarBool
  loc_CE6603: BranchF loc_CE679D
  loc_CE6606: LitStr vbNullString
  loc_CE6609: FLdPr Me
  loc_CE660C: MemStStrCopy
  loc_CE6610: LitI2_Byte &HFF
  loc_CE6612: PopTmpLdAd2 var_2B2
  loc_CE6615: Call DetaDediTxt_Validate(from_stack_1v)
  loc_CE661A: FLdPr Me
  loc_CE661D: MemLdStr global_88
  loc_CE6620: LitStr vbNullString
  loc_CE6623: NeStr
  loc_CE6625: BranchF loc_CE6629
  loc_CE6628: ExitProcHresult
  loc_CE6629: FLdRfVar var_A8
  loc_CE662C: FLdRfVar var_26C
  loc_CE662F: LitVarStr var_D8, "CodiDifu"
  loc_CE6634: PopAdLdVar
  loc_CE6635: FLdRfVar var_EC
  loc_CE6638: FLdRfVar var_94
  loc_CE663B: FLdPr Me
  loc_CE663E: MemLdRfVar from_stack_1.global_64
  loc_CE6641: NewIfNullPr clsdifunto
  loc_CE6644: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6649: FLdPr var_94
  loc_CE664C:  = Me.Fields
  loc_CE6651: FLdPr var_EC
  loc_CE6654: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6659: FLdPr var_26C
  loc_CE665C:  = Me.Value
  loc_CE6661: FLdRfVar var_B8
  loc_CE6664: FLdRfVar var_2D0
  loc_CE6667: LitVarStr var_E8, "NumeDedi"
  loc_CE666C: PopAdLdVar
  loc_CE666D: FLdRfVar var_2C8
  loc_CE6670: FLdRfVar var_2C0
  loc_CE6673: FLdPr Me
  loc_CE6676: MemLdRfVar from_stack_1.global_64
  loc_CE6679: NewIfNullPr clsdifunto
  loc_CE667C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6681: FLdPr var_2C0
  loc_CE6684:  = Me.Fields
  loc_CE6689: FLdPr var_2C8
  loc_CE668C: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6691: FLdPr var_2D0
  loc_CE6694:  = Me.Value
  loc_CE6699: FLdRfVar var_8C
  loc_CE669C: FLdPr Me
  loc_CE669F: VCallAd Control_ID_BajaMotiTxt
  loc_CE66A2: FStAdFunc var_2D8
  loc_CE66A5: FLdPr var_2D8
  loc_CE66A8:  = Me.Text
  loc_CE66AD: LitI2_Byte 0
  loc_CE66AF: ILdRf var_8C
  loc_CE66B2: FLdRfVar var_B8
  loc_CE66B5: CI2Var
  loc_CE66B6: FLdRfVar var_A8
  loc_CE66B9: CStrVarTmp
  loc_CE66BA: FStStrNoPop var_2B8
  loc_CE66BD: FLdPr Me
  loc_CE66C0: MemLdRfVar from_stack_1.global_64
  loc_CE66C3: NewIfNullPr clsdifunto
  loc_CE66C6: Call clsdifunto.AnulandoDifunto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CE66CB: FFreeStr var_2B8 = ""
  loc_CE66D2: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = "": var_2D8 = "": var_26C = ""
  loc_CE66E3: FFreeVar var_A8 = ""
  loc_CE66EA: FLdPr Me
  loc_CE66ED: MemLdRfVar from_stack_1.global_64
  loc_CE66F0: NewIfNullPr clsdifunto
  loc_CE66F3: Call clsdifunto.Requery()
  loc_CE66F8: FLdRfVar var_A8
  loc_CE66FB: FLdRfVar var_26C
  loc_CE66FE: LitVarStr var_D8, "CodiDifu"
  loc_CE6703: PopAdLdVar
  loc_CE6704: FLdRfVar var_EC
  loc_CE6707: FLdRfVar var_94
  loc_CE670A: FLdPr Me
  loc_CE670D: MemLdRfVar from_stack_1.global_64
  loc_CE6710: NewIfNullPr clsdifunto
  loc_CE6713: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6718: FLdPr var_94
  loc_CE671B:  = Me.Fields
  loc_CE6720: FLdPr var_EC
  loc_CE6723: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6728: FLdPr var_26C
  loc_CE672B:  = Me.Value
  loc_CE6730: FLdRfVar var_B8
  loc_CE6733: FLdRfVar var_2D0
  loc_CE6736: LitVarStr var_E8, "NumeDedi"
  loc_CE673B: PopAdLdVar
  loc_CE673C: FLdRfVar var_2C8
  loc_CE673F: FLdRfVar var_2C0
  loc_CE6742: FLdPr Me
  loc_CE6745: MemLdRfVar from_stack_1.global_64
  loc_CE6748: NewIfNullPr clsdifunto
  loc_CE674B: from_stack_1v = clsdifunto.RsFrmGet()
  loc_CE6750: FLdPr var_2C0
  loc_CE6753:  = Me.Fields
  loc_CE6758: FLdPr var_2C8
  loc_CE675B: from_stack_2 = Me.Item(from_stack_1)
  loc_CE6760: FLdPr var_2D0
  loc_CE6763:  = Me.Value
  loc_CE6768: FLdRfVar var_B8
  loc_CE676B: CI2Var
  loc_CE676C: FLdRfVar var_A8
  loc_CE676F: CStrVarTmp
  loc_CE6770: FStStrNoPop var_8C
  loc_CE6773: FLdPr Me
  loc_CE6776: MemLdRfVar from_stack_1.global_64
  loc_CE6779: NewIfNullPr clsdifunto
  loc_CE677C: Call clsdifunto.EncontrarDetaDifu(from_stack_1v, from_stack_2v)
  loc_CE6781: FFree1Str var_8C
  loc_CE6784: FFreeAd var_94 = "": var_EC = "": var_2C0 = "": var_2C8 = "": var_26C = ""
  loc_CE6793: FFreeVar var_A8 = ""
  loc_CE679A: Branch loc_CE6838
  loc_CE679D: FLdRfVar var_360
  loc_CE67A0: LitVarStr var_D8, "SERVICIOS"
  loc_CE67A5: HardType
  loc_CE67A6: EqVarBool
  loc_CE67A8: BranchF loc_CE6838
  loc_CE67AB: LitStr vbNullString
  loc_CE67AE: FLdPr Me
  loc_CE67B1: MemStStrCopy
  loc_CE67B5: LitI2_Byte 0
  loc_CE67B7: PopTmpLdAd2 var_2B2
  loc_CE67BA: Call FehaSediMsk_UnknownEvent_8()
  loc_CE67BF: FLdPr Me
  loc_CE67C2: MemLdStr global_88
  loc_CE67C5: LitStr vbNullString
  loc_CE67C8: NeStr
  loc_CE67CA: BranchF loc_CE67CE
  loc_CE67CD: ExitProcHresult
  loc_CE67CE: FLdRfVar var_250
  loc_CE67D1: FLdPr Me
  loc_CE67D4: MemLdRfVar from_stack_1.global_68
  loc_CE67D7: NewIfNullPr clsservdifu
  loc_CE67DA: from_stack_1 = clsservdifu.CodiDifu
  loc_CE67DF: FLdRfVar var_2B2
  loc_CE67E2: FLdPr Me
  loc_CE67E5: MemLdRfVar from_stack_1.global_68
  loc_CE67E8: NewIfNullPr clsservdifu
  loc_CE67EB: from_stack_1 = clsservdifu.CodiSece
  loc_CE67F0: FLdRfVar var_2FE
  loc_CE67F3: FLdPr Me
  loc_CE67F6: MemLdRfVar from_stack_1.global_68
  loc_CE67F9: NewIfNullPr clsservdifu
  loc_CE67FC: from_stack_1 = clsservdifu.CodiSedi
  loc_CE6801: FLdPr Me
  loc_CE6804: VCallAd Control_ID_FehaSediMsk
  loc_CE6807: FStAdFunc var_94
  loc_CE680A: FLdPr var_94
  loc_CE680D: LateIdLdVar var_A8 DispID_15 0
  loc_CE6814: CStrVarTmp
  loc_CE6815: FStStrNoPop var_8C
  loc_CE6818: FLdI2 var_2FE
  loc_CE681B: FLdI2 var_2B2
  loc_CE681E: ILdRf var_250
  loc_CE6821: FLdPr Me
  loc_CE6824: MemLdRfVar from_stack_1.global_68
  loc_CE6827: NewIfNullPr clsservdifu
  loc_CE682A: Call clsservdifu.Anular(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_CE682F: FFree1Str var_8C
  loc_CE6832: FFree1Ad var_94
  loc_CE6835: FFree1Var var_A8 = ""
  loc_CE6838: ILdRf Me
  loc_CE683B: CastAd
  loc_CE683E: FStAdFunc var_94
  loc_CE6841: FLdRfVar var_94
  loc_CE6844: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_CE6849: FFree1Ad var_94
  loc_CE684C: LitI2_Byte 0
  loc_CE684E: FLdPr Me
  loc_CE6851: MemStI2 global_84
  loc_CE6854: LitI4 0
  loc_CE6859: LitI4 3
  loc_CE685E: FLdRfVar var_98
  loc_CE6861: Redim
  loc_CE686B: FLdPr Me
  loc_CE686E: VCallAd Control_ID_dgdABMS
  loc_CE6871: CVarAd
  loc_CE6875: ParmAry1St
  loc_CE687B: FLdPr Me
  loc_CE687E: VCallAd Control_ID_dgdPersona
  loc_CE6881: CVarAd
  loc_CE6885: ParmAry1St
  loc_CE688B: FLdPr Me
  loc_CE688E: VCallAd Control_ID_dgdDetaDifu
  loc_CE6891: CVarAd
  loc_CE6895: ParmAry1St
  loc_CE689B: FLdPr Me
  loc_CE689E: VCallAd Control_ID_dgdServDifu
  loc_CE68A1: CVarAd
  loc_CE68A5: ParmAry1St
  loc_CE68AB: FLdRfVar var_98
  loc_CE68AE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE68B3: FLdRfVar var_98
  loc_CE68B6: Erase
  loc_CE68B7: FLdPrThis
  loc_CE68B8: VCallAd Control_ID_sstDifunto
  loc_CE68BB: FStAdFunc var_94
  loc_CE68BE: FLdPr var_94
  loc_CE68C1: LateIdLdVar var_A8 DispID_4 0
  loc_CE68C8: CI2Var
  loc_CE68C9: CVarI2 var_D8
  loc_CE68CC: PopAdLdVar
  loc_CE68CD: FLdPrThis
  loc_CE68CE: VCallAd Control_ID_sstDifunto
  loc_CE68D1: FStAdFunc var_EC
  loc_CE68D4: FLdPr var_EC
  loc_CE68D7: LateIdCallLdVar
  loc_CE68E1: CStrVarTmp
  loc_CE68E2: CVarStr var_C8
  loc_CE68E5: FLdRfVar var_FC
  loc_CE68E8: ImpAdCallFPR4  = Ucase()
  loc_CE68ED: FLdRfVar var_FC
  loc_CE68F0: FStVar var_370
  loc_CE68F4: FFreeAd var_94 = ""
  loc_CE68FB: FFreeVar var_A8 = "": var_B8 = ""
  loc_CE6904: FLdRfVar var_370
  loc_CE6907: LitVarStr var_D8, "DATOS TITULAR"
  loc_CE690C: HardType
  loc_CE690D: EqVarBool
  loc_CE690F: BranchF loc_CE6921
  loc_CE6912: LitI2_Byte 0
  loc_CE6914: LitVarI2 var_A8, 0
  loc_CE6919: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_CE691E: FFree1Var var_A8 = ""
  loc_CE6921: Call EnlazaTodo()
  loc_CE6926: Call EnlazaTodoDetaDifu()
  loc_CE692B: Call Proc_191_123_A784B4()
  loc_CE6930: LitI4 0
  loc_CE6935: LitI4 1
  loc_CE693A: FLdRfVar var_98
  loc_CE693D: Redim
  loc_CE6947: FLdPr Me
  loc_CE694A: VCallAd Control_ID_FiltroCbo
  loc_CE694D: CVarAd
  loc_CE6951: ParmAry1St
  loc_CE6957: FLdPr Me
  loc_CE695A: VCallAd Control_ID_FiltroMsk
  loc_CE695D: CVarAd
  loc_CE6961: ParmAry1St
  loc_CE6967: FLdRfVar var_98
  loc_CE696A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_CE696F: FLdRfVar var_98
  loc_CE6972: Erase
  loc_CE6973: FLdPr Me
  loc_CE6976: VCallAd Control_ID_FiltroMsk
  loc_CE6979: FStAdFunc var_94
  loc_CE697C: FLdPr var_94
  loc_CE697F: LateIdCall
  loc_CE6987: FFree1Ad var_94
  loc_CE698A: Branch loc_CE6A91
  loc_CE698D: ILdRf var_90
  loc_CE6990: LitStr "btnCancelar"
  loc_CE6993: EqStr
  loc_CE6995: BranchF loc_CE69A0
  loc_CE6998: Call cmdCancelar_Click()
  loc_CE699D: Branch loc_CE6A91
  loc_CE69A0: ILdRf var_90
  loc_CE69A3: LitStr "btnPrimero"
  loc_CE69A6: EqStr
  loc_CE69A8: BranchF loc_CE69BC
  loc_CE69AB: FLdPr Me
  loc_CE69AE: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE69B1: NewIfNullPr clsdifunto
  loc_CE69B4: Call clsdifunto.MoveFirst()
  loc_CE69B9: Branch loc_CE6A91
  loc_CE69BC: ILdRf var_90
  loc_CE69BF: LitStr "btnAnterior"
  loc_CE69C2: EqStr
  loc_CE69C4: BranchF loc_CE69D8
  loc_CE69C7: FLdPr Me
  loc_CE69CA: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE69CD: NewIfNullPr clsdifunto
  loc_CE69D0: Call clsdifunto.MovePrevious()
  loc_CE69D5: Branch loc_CE6A91
  loc_CE69D8: ILdRf var_90
  loc_CE69DB: LitStr "btnSiguiente"
  loc_CE69DE: EqStr
  loc_CE69E0: BranchF loc_CE69F4
  loc_CE69E3: FLdPr Me
  loc_CE69E6: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE69E9: NewIfNullPr clsdifunto
  loc_CE69EC: Call clsdifunto.MoveNext()
  loc_CE69F1: Branch loc_CE6A91
  loc_CE69F4: ILdRf var_90
  loc_CE69F7: LitStr "btnUltimo"
  loc_CE69FA: EqStr
  loc_CE69FC: BranchF loc_CE6A10
  loc_CE69FF: FLdPr Me
  loc_CE6A02: MemLdRfVar from_stack_1.DifuntoCLS
  loc_CE6A05: NewIfNullPr clsdifunto
  loc_CE6A08: Call clsdifunto.MoveLast()
  loc_CE6A0D: Branch loc_CE6A91
  loc_CE6A10: ILdRf var_90
  loc_CE6A13: LitStr "btnFiltrar"
  loc_CE6A16: EqStr
  loc_CE6A18: BranchF loc_CE6A1E
  loc_CE6A1B: Branch loc_CE6A91
  loc_CE6A1E: ILdRf var_90
  loc_CE6A21: LitStr "btnBuscar"
  loc_CE6A24: EqStr
  loc_CE6A26: BranchF loc_CE6A2C
  loc_CE6A29: Branch loc_CE6A91
  loc_CE6A2C: ILdRf var_90
  loc_CE6A2F: LitStr "btnImprimir"
  loc_CE6A32: EqStr
  loc_CE6A34: BranchF loc_CE6A3A
  loc_CE6A37: Branch loc_CE6A91
  loc_CE6A3A: ILdRf var_90
  loc_CE6A3D: LitStr "btnAyuda"
  loc_CE6A40: EqStr
  loc_CE6A42: BranchF loc_CE6A71
  loc_CE6A45: LitVar_Missing var_FC
  loc_CE6A48: LitVar_Missing var_C8
  loc_CE6A4B: LitVar_Missing var_B8
  loc_CE6A4E: LitI4 0
  loc_CE6A53: LitVarStr var_D8, "Opción no disponible en esta versión."
  loc_CE6A58: FStVarCopyObj var_A8
  loc_CE6A5B: FLdRfVar var_A8
  loc_CE6A5E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CE6A63: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_CE6A6E: Branch loc_CE6A91
  loc_CE6A71: ILdRf var_90
  loc_CE6A74: LitStr "btnSalir"
  loc_CE6A77: EqStr
  loc_CE6A79: BranchF loc_CE6A91
  loc_CE6A7C: ILdRf Me
  loc_CE6A7F: FStAdNoPop
  loc_CE6A83: ImpAdLdRf MemVar_D9C5D8
  loc_CE6A86: NewIfNullPr Global
  loc_CE6A89: Global.Unload from_stack_1
  loc_CE6A8E: FFree1Ad var_94
  loc_CE6A91: ExitProcHresult
End Sub

Private Sub ActaDediTxt_GotFocus() '9BCF60
  'Data Table: 537378
  loc_9BCF4C: FLdPr Me
  loc_9BCF4F: VCallAd Control_ID_ActaDediTxt
  loc_9BCF52: CVarAd
  loc_9BCF56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCF5B: FFree1Var var_94 = ""
  loc_9BCF5E: ExitProcHresult
End Sub

Private Sub ActaDediTxt_Validate(Cancel As Boolean) 'AA9324
  'Data Table: 537378
  loc_AA9264: FLdRfVar var_8A
  loc_AA9267: FLdPr Me
  loc_AA926A: VCallAd Control_ID_cmdCancelar
  loc_AA926D: FStAdFunc var_88
  loc_AA9270: FLdPr var_88
  loc_AA9273:  = Me.Value
  loc_AA9278: FLdI2 var_8A
  loc_AA927B: NotI4
  loc_AA927C: FLdRfVar var_92
  loc_AA927F: FLdPr Me
  loc_AA9282: VCallAd Control_ID_ActaDediTxt
  loc_AA9285: FStAdFunc var_90
  loc_AA9288: FLdPr var_90
  loc_AA928B:  = Me.Enabled
  loc_AA9290: FLdI2 var_92
  loc_AA9293: AndI4
  loc_AA9294: FLdRfVar var_9C
  loc_AA9297: FLdPrThis
  loc_AA9298: VCallAd Control_ID_ActaDediTxt
  loc_AA929B: FStAdFunc var_98
  loc_AA929E: FLdPr var_98
  loc_AA92A1:  = Me.Text
  loc_AA92A6: ILdRf var_9C
  loc_AA92A9: LitStr vbNullString
  loc_AA92AC: NeStr
  loc_AA92AE: AndI4
  loc_AA92AF: FFree1Str var_9C
  loc_AA92B2: FFreeAd var_88 = "": var_90 = ""
  loc_AA92BB: BranchF loc_AA9322
  loc_AA92BE: FLdRfVar var_9C
  loc_AA92C1: FLdPr Me
  loc_AA92C4: VCallAd Control_ID_ActaDediTxt
  loc_AA92C7: FStAdFunc var_88
  loc_AA92CA: FLdPr var_88
  loc_AA92CD:  = Me.Text
  loc_AA92D2: ILdRf var_9C
  loc_AA92D5: LitStr "ingrese el Acta"
  loc_AA92D8: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA92DD: FStStrNoPop var_A0
  loc_AA92E0: FLdPr Me
  loc_AA92E3: MemStStrCopy
  loc_AA92E7: FFreeStr var_9C = ""
  loc_AA92EE: FFree1Ad var_88
  loc_AA92F1: FLdPr Me
  loc_AA92F4: MemLdStr global_88
  loc_AA92F7: LitStr vbNullString
  loc_AA92FA: NeStr
  loc_AA92FC: BranchF loc_AA9322
  loc_AA92FF: FLdPr Me
  loc_AA9302: MemLdStr global_88
  loc_AA9305: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA930A: FLdPr Me
  loc_AA930D: VCallAd Control_ID_ActaDediTxt
  loc_AA9310: CVarAd
  loc_AA9314: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA9319: FFree1Var var_B0 = ""
  loc_AA931C: LitI2_Byte &HFF
  loc_AA931E: IStI2 Cancel
  loc_AA9321: ExitProcHresult
  loc_AA9322: ExitProcHresult
End Sub

Private Sub BimeDifuMsk_UnknownEvent_0 '9BCB70
  'Data Table: 537378
  loc_9BCB5C: FLdPr Me
  loc_9BCB5F: VCallAd Control_ID_BimeDifuMsk
  loc_9BCB62: CVarAd
  loc_9BCB66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCB6B: FFree1Var var_94 = ""
  loc_9BCB6E: ExitProcHresult
  loc_9BCB6F: CCyI2
End Sub

Private Sub BimeDifuMsk_UnknownEvent_8 'A98444
  'Data Table: 537378
  loc_A98398: FLdRfVar var_8A
  loc_A9839B: FLdPr Me
  loc_A9839E: VCallAd Control_ID_cmdCancelar
  loc_A983A1: FStAdFunc var_88
  loc_A983A4: FLdPr var_88
  loc_A983A7:  = Me.Value
  loc_A983AC: FLdI2 var_8A
  loc_A983AF: NotI4
  loc_A983B0: FLdPr Me
  loc_A983B3: VCallAd Control_ID_BimeDifuMsk
  loc_A983B6: FStAdFunc var_90
  loc_A983B9: FLdPr var_90
  loc_A983BC: LateIdLdVar var_A0 DispID_13 -32767
  loc_A983C3: CBoolVar
  loc_A983C5: AndI4
  loc_A983C6: FFreeAd var_88 = ""
  loc_A983CD: FFree1Var var_A0 = ""
  loc_A983D0: BranchF loc_A98443
  loc_A983D3: FLdPr Me
  loc_A983D6: VCallAd Control_ID_BimeDifuMsk
  loc_A983D9: FStAdFunc var_88
  loc_A983DC: FLdPr var_88
  loc_A983DF: LateIdLdVar var_A0 DispID_22 0
  loc_A983E6: PopAd
  loc_A983E8: LitI2_Byte &HFF
  loc_A983EA: LitI2_Byte 0
  loc_A983EC: FLdRfVar var_A0
  loc_A983EF: CStrVarTmp
  loc_A983F0: FStStrNoPop var_A4
  loc_A983F3: LitStr "Trimestre"
  loc_A983F6: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A983FB: FStStrNoPop var_A8
  loc_A983FE: FLdPr Me
  loc_A98401: MemStStrCopy
  loc_A98405: FFreeStr var_A4 = ""
  loc_A9840C: FFree1Ad var_88
  loc_A9840F: FFree1Var var_A0 = ""
  loc_A98412: FLdPr Me
  loc_A98415: MemLdStr global_88
  loc_A98418: LitStr vbNullString
  loc_A9841B: NeStr
  loc_A9841D: BranchF loc_A98443
  loc_A98420: FLdPr Me
  loc_A98423: MemLdStr global_88
  loc_A98426: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9842B: FLdPr Me
  loc_A9842E: VCallAd Control_ID_BimeDifuMsk
  loc_A98431: CVarAd
  loc_A98435: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9843A: FFree1Var var_A0 = ""
  loc_A9843D: LitI2_Byte &HFF
  loc_A9843F: IStI2 Cancel
  loc_A98442: ExitProcHresult
  loc_A98443: ExitProcHresult
End Sub

Private Sub CodiSeceMsk_UnknownEvent_0 '9BCB28
  'Data Table: 537378
  loc_9BCB14: FLdPr Me
  loc_9BCB17: VCallAd Control_ID_CodiSeceMsk
  loc_9BCB1A: CVarAd
  loc_9BCB1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCB23: FFree1Var var_94 = ""
  loc_9BCB26: ExitProcHresult
  loc_9BCB27: GtR4
End Sub

Private Sub CodiSeceMsk_UnknownEvent_8 'B0C0A4
  'Data Table: 537378
  loc_B0BE80: FLdRfVar var_8A
  loc_B0BE83: FLdPr Me
  loc_B0BE86: VCallAd Control_ID_cmdCancelar
  loc_B0BE89: FStAdFunc var_88
  loc_B0BE8C: FLdPr var_88
  loc_B0BE8F:  = Me.Value
  loc_B0BE94: FLdI2 var_8A
  loc_B0BE97: NotI4
  loc_B0BE98: FLdPr Me
  loc_B0BE9B: VCallAd Control_ID_CodiSeceMsk
  loc_B0BE9E: FStAdFunc var_90
  loc_B0BEA1: FLdPr var_90
  loc_B0BEA4: LateIdLdVar var_A0 DispID_13 -32767
  loc_B0BEAB: CBoolVar
  loc_B0BEAD: AndI4
  loc_B0BEAE: FFreeAd var_88 = ""
  loc_B0BEB5: FFree1Var var_A0 = ""
  loc_B0BEB8: BranchF loc_B0C0A0
  loc_B0BEBB: FLdPr Me
  loc_B0BEBE: VCallAd Control_ID_CodiSeceMsk
  loc_B0BEC1: FStAdFunc var_88
  loc_B0BEC4: FLdPr var_88
  loc_B0BEC7: LateIdLdVar var_A0 DispID_22 0
  loc_B0BECE: PopAd
  loc_B0BED0: FLdRfVar var_CC
  loc_B0BED3: FLdRfVar var_B8
  loc_B0BED6: LitVarStr var_B4, "CodiTise"
  loc_B0BEDB: PopAdLdVar
  loc_B0BEDC: FLdRfVar var_A4
  loc_B0BEDF: FLdRfVar var_90
  loc_B0BEE2: FLdPr Me
  loc_B0BEE5: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B0BEE8: NewIfNullPr clsdifunto
  loc_B0BEEB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B0BEF0: FLdPr var_90
  loc_B0BEF3:  = Me.Fields
  loc_B0BEF8: FLdPr var_A4
  loc_B0BEFB: from_stack_2 = Me.Item(from_stack_1)
  loc_B0BF00: FLdPr var_B8
  loc_B0BF03:  = Me.Value
  loc_B0BF08: LitStr "Masiva"
  loc_B0BF0B: FLdRfVar var_CC
  loc_B0BF0E: CI2Var
  loc_B0BF0F: FLdRfVar var_A0
  loc_B0BF12: CStrVarTmp
  loc_B0BF13: FStStrNoPop var_BC
  loc_B0BF16: ImpAdCallI2 Proc_18_29_AC46E8(, , )
  loc_B0BF1B: FStStrNoPop var_D0
  loc_B0BF1E: FLdPr Me
  loc_B0BF21: MemStStrCopy
  loc_B0BF25: FFreeStr var_BC = ""
  loc_B0BF2C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_B0BF37: FFreeVar var_A0 = ""
  loc_B0BF3E: FLdPr Me
  loc_B0BF41: MemLdStr global_88
  loc_B0BF44: LitStr vbNullString
  loc_B0BF47: NeStr
  loc_B0BF49: BranchF loc_B0BF86
  loc_B0BF4C: FLdPr Me
  loc_B0BF4F: MemLdStr global_88
  loc_B0BF52: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0BF57: LitStr vbNullString
  loc_B0BF5A: FLdPr Me
  loc_B0BF5D: VCallAd Control_ID_DetaSeceLbl
  loc_B0BF60: FStAdFunc var_88
  loc_B0BF63: FLdPr var_88
  loc_B0BF66: Me.Caption = from_stack_1
  loc_B0BF6B: FFree1Ad var_88
  loc_B0BF6E: FLdPr Me
  loc_B0BF71: VCallAd Control_ID_CodiSeceMsk
  loc_B0BF74: CVarAd
  loc_B0BF78: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B0BF7D: FFree1Var var_A0 = ""
  loc_B0BF80: LitI2_Byte &HFF
  loc_B0BF82: IStI2 Cancel
  loc_B0BF85: ExitProcHresult
  loc_B0BF86: FLdRfVar var_CC
  loc_B0BF89: FLdRfVar var_A4
  loc_B0BF8C: LitVarStr var_B4, "CodiDifu"
  loc_B0BF91: PopAdLdVar
  loc_B0BF92: FLdRfVar var_90
  loc_B0BF95: FLdRfVar var_88
  loc_B0BF98: FLdPr Me
  loc_B0BF9B: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B0BF9E: NewIfNullPr clsdifunto
  loc_B0BFA1: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B0BFA6: FLdPr var_88
  loc_B0BFA9:  = Me.Fields
  loc_B0BFAE: FLdPr var_90
  loc_B0BFB1: from_stack_2 = Me.Item(from_stack_1)
  loc_B0BFB6: FLdPr var_A4
  loc_B0BFB9:  = Me.Value
  loc_B0BFBE: FLdPr Me
  loc_B0BFC1: VCallAd Control_ID_CodiSeceMsk
  loc_B0BFC4: FStAdFunc var_B8
  loc_B0BFC7: FLdPr var_B8
  loc_B0BFCA: LateIdLdVar var_A0 DispID_22 0
  loc_B0BFD1: PopAd
  loc_B0BFD3: FLdRfVar var_D0
  loc_B0BFD6: FLdRfVar var_A0
  loc_B0BFD9: CStrVarTmp
  loc_B0BFDA: FStStrNoPop var_BC
  loc_B0BFDD: CI2Str
  loc_B0BFDF: FLdRfVar var_CC
  loc_B0BFE2: CI4Var
  loc_B0BFE4: FLdPr Me
  loc_B0BFE7: MemLdRfVar from_stack_1.global_68
  loc_B0BFEA: NewIfNullPr clsservdifu
  loc_B0BFED: from_stack_3v = clsservdifu.ValidaMismoServicio(from_stack_1v, from_stack_2v)
  loc_B0BFF2: ILdRf var_D0
  loc_B0BFF5: FLdPr Me
  loc_B0BFF8: MemStStrCopy
  loc_B0BFFC: FFreeStr var_BC = ""
  loc_B0C003: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B0C00E: FFreeVar var_A0 = ""
  loc_B0C015: FLdPr Me
  loc_B0C018: MemLdStr global_88
  loc_B0C01B: LitStr vbNullString
  loc_B0C01E: NeStr
  loc_B0C020: BranchF loc_B0C05D
  loc_B0C023: FLdPr Me
  loc_B0C026: MemLdStr global_88
  loc_B0C029: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B0C02E: LitStr vbNullString
  loc_B0C031: FLdPr Me
  loc_B0C034: VCallAd Control_ID_DetaSeceLbl
  loc_B0C037: FStAdFunc var_88
  loc_B0C03A: FLdPr var_88
  loc_B0C03D: Me.Caption = from_stack_1
  loc_B0C042: FFree1Ad var_88
  loc_B0C045: FLdPr Me
  loc_B0C048: VCallAd Control_ID_CodiSeceMsk
  loc_B0C04B: CVarAd
  loc_B0C04F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B0C054: FFree1Var var_A0 = ""
  loc_B0C057: LitI2_Byte &HFF
  loc_B0C059: IStI2 Cancel
  loc_B0C05C: ExitProcHresult
  loc_B0C05D: FLdPr Me
  loc_B0C060: VCallAd Control_ID_CodiSeceMsk
  loc_B0C063: FStAdFunc var_88
  loc_B0C066: FLdPr var_88
  loc_B0C069: LateIdLdVar var_A0 DispID_22 0
  loc_B0C070: CStrVarTmp
  loc_B0C071: FStStrNoPop var_BC
  loc_B0C074: CI2Str
  loc_B0C076: ImpAdCallI2 Proc_270_27_A7AEA8()
  loc_B0C07B: FStStrNoPop var_D0
  loc_B0C07E: FLdPr Me
  loc_B0C081: VCallAd Control_ID_DetaSeceLbl
  loc_B0C084: FStAdFunc var_90
  loc_B0C087: FLdPr var_90
  loc_B0C08A: Me.Caption = from_stack_1
  loc_B0C08F: FFreeStr var_BC = ""
  loc_B0C096: FFreeAd var_88 = ""
  loc_B0C09D: FFree1Var var_A0 = ""
  loc_B0C0A0: ExitProcHresult
End Sub

Private Sub CodiSeceMsk_KeyPress(KeyAscii As Integer) 'ACD814
  'Data Table: 537378
  loc_ACD6F4: ILdI2 KeyAscii
  loc_ACD6F7: LitI2_Byte &H20
  loc_ACD6F9: EqI2
  loc_ACD6FA: BranchF loc_ACD812
  loc_ACD6FD: FLdRfVar var_B0
  loc_ACD700: FLdRfVar var_A0
  loc_ACD703: LitVarStr var_9C, "CodiTise"
  loc_ACD708: PopAdLdVar
  loc_ACD709: FLdRfVar var_8C
  loc_ACD70C: FLdRfVar var_88
  loc_ACD70F: FLdPr Me
  loc_ACD712: MemLdRfVar from_stack_1.DifuntoCLS
  loc_ACD715: NewIfNullPr clsdifunto
  loc_ACD718: from_stack_1v = clsdifunto.RsFrmGet()
  loc_ACD71D: FLdPr var_88
  loc_ACD720:  = Me.Fields
  loc_ACD725: FLdPr var_8C
  loc_ACD728: from_stack_2 = Me.Item(from_stack_1)
  loc_ACD72D: FLdPr var_A0
  loc_ACD730:  = Me.Value
  loc_ACD735: FLdRfVar var_B0
  loc_ACD738: CI2Var
  loc_ACD739: ImpAdLdRf MemVar_D94A60
  loc_ACD73C: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD73F: Call dlgBuscarServiciodeCementerio.iCodiTisePut(from_stack_1v)
  loc_ACD744: FFreeAd var_88 = "": var_8C = ""
  loc_ACD74D: FFree1Var var_B0 = ""
  loc_ACD750: LitStr "Masiva"
  loc_ACD753: ImpAdLdRf MemVar_D94A60
  loc_ACD756: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD759: Call dlgBuscarServiciodeCementerio.sEmisSecePut(from_stack_1v)
  loc_ACD75E: LitVar_Missing var_C0
  loc_ACD761: PopAdLdVar
  loc_ACD762: LitVarI4
  loc_ACD76A: PopAdLdVar
  loc_ACD76B: ImpAdLdRf MemVar_D94A60
  loc_ACD76E: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD771: dlgBuscarServiciodeCementerio.Show from_stack_1, from_stack_2
  loc_ACD776: FLdRfVar var_C4
  loc_ACD779: FLdRfVar var_88
  loc_ACD77C: ImpAdLdRf MemVar_D94A60
  loc_ACD77F: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD782: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_ACD787: FLdPr var_88
  loc_ACD78A: from_stack_1 = clsservceme.RecordCount
  loc_ACD78F: ILdRf var_C4
  loc_ACD792: LitI4 0
  loc_ACD797: GtI4
  loc_ACD798: FFree1Ad var_88
  loc_ACD79B: BranchF loc_ACD812
  loc_ACD79E: FLdRfVar var_C6
  loc_ACD7A1: FLdRfVar var_88
  loc_ACD7A4: ImpAdLdRf MemVar_D94A60
  loc_ACD7A7: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD7AA: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_ACD7AF: FLdPr var_88
  loc_ACD7B2: from_stack_1 = clsservceme.CodiSece
  loc_ACD7B7: FLdI2 var_C6
  loc_ACD7BA: CStrUI1
  loc_ACD7BC: CVarStr var_B0
  loc_ACD7BF: PopAdLdVar
  loc_ACD7C0: FLdPr Me
  loc_ACD7C3: VCallAd Control_ID_CodiSeceMsk
  loc_ACD7C6: FStAdFunc var_8C
  loc_ACD7C9: FLdPr var_8C
  loc_ACD7CC: LateIdSt
  loc_ACD7D1: FFreeAd var_88 = ""
  loc_ACD7D8: FFree1Var var_B0 = ""
  loc_ACD7DB: FLdRfVar var_CC
  loc_ACD7DE: FLdRfVar var_88
  loc_ACD7E1: ImpAdLdRf MemVar_D94A60
  loc_ACD7E4: NewIfNullPr dlgBuscarServiciodeCementerio
  loc_ACD7E7: from_stack_1v = dlgBuscarServiciodeCementerio.global_4368404Get()
  loc_ACD7EC: FLdPr var_88
  loc_ACD7EF: from_stack_1 = clsservceme.DetaSece
  loc_ACD7F4: ILdRf var_CC
  loc_ACD7F7: FLdPr Me
  loc_ACD7FA: VCallAd Control_ID_DetaSeceLbl
  loc_ACD7FD: FStAdFunc var_8C
  loc_ACD800: FLdPr var_8C
  loc_ACD803: Me.Caption = from_stack_1
  loc_ACD808: FFree1Str var_CC
  loc_ACD80B: FFreeAd var_88 = ""
  loc_ACD812: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_GotFocus() '9BB610
  'Data Table: 537378
  loc_9BB5FC: FLdPr Me
  loc_9BB5FF: VCallAd Control_ID_SeccDifuTxt
  loc_9BB602: CVarAd
  loc_9BB606: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB60B: FFree1Var var_94 = ""
  loc_9BB60E: ExitProcHresult
End Sub

Private Sub SeccDifuTxt_Validate(Cancel As Boolean) 'AA7228
  'Data Table: 537378
  loc_AA7164: FLdRfVar var_8A
  loc_AA7167: FLdPr Me
  loc_AA716A: VCallAd Control_ID_cmdCancelar
  loc_AA716D: FStAdFunc var_88
  loc_AA7170: FLdPr var_88
  loc_AA7173:  = Me.Value
  loc_AA7178: FLdI2 var_8A
  loc_AA717B: NotI4
  loc_AA717C: FLdRfVar var_92
  loc_AA717F: FLdPr Me
  loc_AA7182: VCallAd Control_ID_DetaDediTxt
  loc_AA7185: FStAdFunc var_90
  loc_AA7188: FLdPr var_90
  loc_AA718B:  = Me.Enabled
  loc_AA7190: FLdI2 var_92
  loc_AA7193: AndI4
  loc_AA7194: FFreeAd var_88 = ""
  loc_AA719B: BranchF loc_AA7227
  loc_AA719E: FLdRfVar var_98
  loc_AA71A1: FLdPr Me
  loc_AA71A4: VCallAd Control_ID_SeccDifuTxt
  loc_AA71A7: FStAdFunc var_88
  loc_AA71AA: FLdPr var_88
  loc_AA71AD:  = Me.Text
  loc_AA71B2: ILdRf var_98
  loc_AA71B5: LitStr vbNullString
  loc_AA71B8: NeStr
  loc_AA71BA: FFree1Str var_98
  loc_AA71BD: FFree1Ad var_88
  loc_AA71C0: BranchF loc_AA7227
  loc_AA71C3: FLdRfVar var_98
  loc_AA71C6: FLdPr Me
  loc_AA71C9: VCallAd Control_ID_SeccDifuTxt
  loc_AA71CC: FStAdFunc var_88
  loc_AA71CF: FLdPr var_88
  loc_AA71D2:  = Me.Text
  loc_AA71D7: ILdRf var_98
  loc_AA71DA: LitStr "ingrese el sector"
  loc_AA71DD: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA71E2: FStStrNoPop var_9C
  loc_AA71E5: FLdPr Me
  loc_AA71E8: MemStStrCopy
  loc_AA71EC: FFreeStr var_98 = ""
  loc_AA71F3: FFree1Ad var_88
  loc_AA71F6: FLdPr Me
  loc_AA71F9: MemLdStr global_88
  loc_AA71FC: LitStr vbNullString
  loc_AA71FF: NeStr
  loc_AA7201: BranchF loc_AA7227
  loc_AA7204: FLdPr Me
  loc_AA7207: MemLdStr global_88
  loc_AA720A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA720F: FLdPr Me
  loc_AA7212: VCallAd Control_ID_SeccDifuTxt
  loc_AA7215: CVarAd
  loc_AA7219: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA721E: FFree1Var var_AC = ""
  loc_AA7221: LitI2_Byte &HFF
  loc_AA7223: IStI2 Cancel
  loc_AA7226: ExitProcHresult
  loc_AA7227: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_GotFocus() '9BC858
  'Data Table: 537378
  loc_9BC844: FLdPr Me
  loc_9BC847: VCallAd Control_ID_NumeDifuTxt
  loc_9BC84A: CVarAd
  loc_9BC84E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC853: FFree1Var var_94 = ""
  loc_9BC856: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_KeyPress(KeyAscii As Integer) '9D8404
  'Data Table: 537378
  loc_9D83EC: LitStr "0123456789"
  loc_9D83EF: FStStrCopy var_88
  loc_9D83F2: FLdRfVar var_88
  loc_9D83F5: ILdRf KeyAscii
  loc_9D83F8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D83FD: IStI2 KeyAscii
  loc_9D8400: FFree1Str var_88
  loc_9D8403: ExitProcHresult
End Sub

Private Sub NumeDifuTxt_Validate(Cancel As Boolean) 'B6C508
  'Data Table: 537378
  loc_B6C090: FLdRfVar var_A2
  loc_B6C093: FLdPr Me
  loc_B6C096: VCallAd Control_ID_cmdCancelar
  loc_B6C099: FStAdFunc var_A0
  loc_B6C09C: FLdPr var_A0
  loc_B6C09F:  = Me.Value
  loc_B6C0A4: FLdI2 var_A2
  loc_B6C0A7: NotI4
  loc_B6C0A8: FLdRfVar var_AA
  loc_B6C0AB: FLdPr Me
  loc_B6C0AE: VCallAd Control_ID_NumeDifuTxt
  loc_B6C0B1: FStAdFunc var_A8
  loc_B6C0B4: FLdPr var_A8
  loc_B6C0B7:  = Me.Enabled
  loc_B6C0BC: FLdI2 var_AA
  loc_B6C0BF: LitI2_Byte &HFF
  loc_B6C0C1: EqI2
  loc_B6C0C2: AndI4
  loc_B6C0C3: FFreeAd var_A0 = ""
  loc_B6C0CA: BranchF loc_B6C504
  loc_B6C0CD: FLdRfVar var_B0
  loc_B6C0D0: FLdPr Me
  loc_B6C0D3: VCallAd Control_ID_NumeDifuTxt
  loc_B6C0D6: FStAdFunc var_A0
  loc_B6C0D9: FLdPr var_A0
  loc_B6C0DC:  = Me.Text
  loc_B6C0E1: FLdZeroAd var_B0
  loc_B6C0E4: CVarStr var_C0
  loc_B6C0E7: ImpAdCallI2 IsNumeric()
  loc_B6C0EC: NotI4
  loc_B6C0ED: FFree1Ad var_A0
  loc_B6C0F0: FFree1Var var_C0 = ""
  loc_B6C0F3: BranchF loc_B6C10D
  loc_B6C0F6: LitStr "0"
  loc_B6C0F9: FLdPr Me
  loc_B6C0FC: VCallAd Control_ID_NumeDifuTxt
  loc_B6C0FF: FStAdFunc var_A0
  loc_B6C102: FLdPr var_A0
  loc_B6C105: Me.Text = from_stack_1
  loc_B6C10A: FFree1Ad var_A0
  loc_B6C10D: FLdRfVar var_B0
  loc_B6C110: FLdPr Me
  loc_B6C113: VCallAd Control_ID_NumeDifuTxt
  loc_B6C116: FStAdFunc var_A0
  loc_B6C119: FLdPr var_A0
  loc_B6C11C:  = Me.Text
  loc_B6C121: LitI2_Byte &HFF
  loc_B6C123: LitI2_Byte 0
  loc_B6C125: ILdRf var_B0
  loc_B6C128: LitStr "ingrese el NUMERO"
  loc_B6C12B: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_B6C130: FStStrNoPop var_C4
  loc_B6C133: FLdPr Me
  loc_B6C136: MemStStrCopy
  loc_B6C13A: FFreeStr var_B0 = ""
  loc_B6C141: FFree1Ad var_A0
  loc_B6C144: FLdPr Me
  loc_B6C147: MemLdStr global_88
  loc_B6C14A: LitStr vbNullString
  loc_B6C14D: NeStr
  loc_B6C14F: BranchF loc_B6C175
  loc_B6C152: FLdPr Me
  loc_B6C155: MemLdStr global_88
  loc_B6C158: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6C15D: FLdPr Me
  loc_B6C160: VCallAd Control_ID_NumeDifuTxt
  loc_B6C163: CVarAd
  loc_B6C167: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B6C16C: FFree1Var var_C0 = ""
  loc_B6C16F: LitI2_Byte &HFF
  loc_B6C171: IStI2 Cancel
  loc_B6C174: ExitProcHresult
  loc_B6C175: FLdRfVar var_B0
  loc_B6C178: FLdPr Me
  loc_B6C17B: VCallAd Control_ID_CodiTiseTxt
  loc_B6C17E: FStAdFunc var_A0
  loc_B6C181: FLdPr var_A0
  loc_B6C184:  = Me.Text
  loc_B6C189: FLdRfVar var_C4
  loc_B6C18C: FLdPr Me
  loc_B6C18F: VCallAd Control_ID_SeccDifuTxt
  loc_B6C192: FStAdFunc var_A8
  loc_B6C195: FLdPr var_A8
  loc_B6C198:  = Me.Text
  loc_B6C19D: FLdRfVar var_E0
  loc_B6C1A0: FLdPr Me
  loc_B6C1A3: VCallAd Control_ID_NumeDifuTxt
  loc_B6C1A6: FStAdFunc var_DC
  loc_B6C1A9: FLdPr var_DC
  loc_B6C1AC:  = Me.Text
  loc_B6C1B1: FLdRfVar var_CC
  loc_B6C1B4: FLdPr Me
  loc_B6C1B7: VCallAd Control_ID_FilaDifuTxt
  loc_B6C1BA: FStAdFunc var_C8
  loc_B6C1BD: FLdPr var_C8
  loc_B6C1C0:  = Me.Text
  loc_B6C1C5: FLdRfVar var_D4
  loc_B6C1C8: FLdPr Me
  loc_B6C1CB: VCallAd Control_ID_CodiDifuTxt
  loc_B6C1CE: FStAdFunc var_D0
  loc_B6C1D1: FLdPr var_D0
  loc_B6C1D4:  = Me.Text
  loc_B6C1D9: ILdRf var_D4
  loc_B6C1DC: LitI4 0
  loc_B6C1E1: ILdRf var_CC
  loc_B6C1E4: CI2Str
  loc_B6C1E6: ILdRf var_E0
  loc_B6C1E9: CI2Str
  loc_B6C1EB: LitI2_Byte 0
  loc_B6C1ED: CStrUI1
  loc_B6C1EF: FStStrNoPop var_D8
  loc_B6C1F2: ILdRf var_C4
  loc_B6C1F5: ILdRf var_B0
  loc_B6C1F8: CUI1Str
  loc_B6C1FA: ImpAdCallI2  = Proc_18_101_B5BB64(, , , , , )
  loc_B6C1FF: FStStrNoPop var_E4
  loc_B6C202: FLdPr Me
  loc_B6C205: MemStStrCopy
  loc_B6C209: FFreeStr var_B0 = "": var_C4 = "": var_D8 = "": var_E0 = "": var_CC = "": var_D4 = ""
  loc_B6C21A: FFreeAd var_A0 = "": var_A8 = "": var_C8 = "": var_D0 = ""
  loc_B6C227: FLdPr Me
  loc_B6C22A: MemLdStr global_88
  loc_B6C22D: LitStr vbNullString
  loc_B6C230: NeStr
  loc_B6C232: BranchF loc_B6C258
  loc_B6C235: FLdPr Me
  loc_B6C238: MemLdStr global_88
  loc_B6C23B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6C240: FLdPr Me
  loc_B6C243: VCallAd Control_ID_FilaDifuTxt
  loc_B6C246: CVarAd
  loc_B6C24A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B6C24F: FFree1Var var_C0 = ""
  loc_B6C252: LitI2_Byte &HFF
  loc_B6C254: IStI2 Cancel
  loc_B6C257: ExitProcHresult
  loc_B6C258: FLdRfVar var_B0
  loc_B6C25B: FLdPr Me
  loc_B6C25E: VCallAd Control_ID_CodiTiseTxt
  loc_B6C261: FStAdFunc var_A0
  loc_B6C264: FLdPr var_A0
  loc_B6C267:  = Me.Text
  loc_B6C26C: FLdZeroAd var_B0
  loc_B6C26F: FStStr var_E8
  loc_B6C272: FFree1Ad var_A0
  loc_B6C275: ILdRf var_E8
  loc_B6C278: LitI2_Byte 1
  loc_B6C27A: CStrUI1
  loc_B6C27C: FStStrNoPop var_B0
  loc_B6C27F: EqStr
  loc_B6C281: FFree1Str var_B0
  loc_B6C284: BranchF loc_B6C32B
  loc_B6C287: FLdRfVar var_B0
  loc_B6C28A: FLdPr Me
  loc_B6C28D: VCallAd Control_ID_SeccDifuTxt
  loc_B6C290: FStAdFunc var_A0
  loc_B6C293: FLdPr var_A0
  loc_B6C296:  = Me.Text
  loc_B6C29B: FLdZeroAd var_B0
  loc_B6C29E: FLdRfVar var_88
  loc_B6C2A1: StFixedStrFree
  loc_B6C2A5: FFree1Ad var_A0
  loc_B6C2A8: FLdRfVar var_B0
  loc_B6C2AB: FLdPr Me
  loc_B6C2AE: VCallAd Control_ID_NumeDifuTxt
  loc_B6C2B1: FStAdFunc var_A0
  loc_B6C2B4: FLdPr var_A0
  loc_B6C2B7:  = Me.Text
  loc_B6C2BC: FLdZeroAd var_B0
  loc_B6C2BF: FLdRfVar var_8E
  loc_B6C2C2: StFixedStrRFree
  loc_B6C2C6: FFree1Ad var_A0
  loc_B6C2C9: LitStr "N"
  loc_B6C2CC: FLdRfVar var_88
  loc_B6C2CF: LdFixedStr
  loc_B6C2D2: FStStrNoPop var_B0
  loc_B6C2D5: ConcatStr
  loc_B6C2D6: FStStrNoPop var_CC
  loc_B6C2D9: FLdRfVar var_C4
  loc_B6C2DC: FLdPr Me
  loc_B6C2DF: VCallAd Control_ID_FilaDifuTxt
  loc_B6C2E2: FStAdFunc var_A0
  loc_B6C2E5: FLdPr var_A0
  loc_B6C2E8:  = Me.Text
  loc_B6C2ED: ILdRf var_C4
  loc_B6C2F0: ConcatStr
  loc_B6C2F1: FStStrNoPop var_D4
  loc_B6C2F4: FLdRfVar var_8E
  loc_B6C2F7: LdFixedStr
  loc_B6C2FA: FStStrNoPop var_D8
  loc_B6C2FD: ConcatStr
  loc_B6C2FE: FStStrNoPop var_E0
  loc_B6C301: FLdPr Me
  loc_B6C304: VCallAd Control_ID_CodiDifuTxt
  loc_B6C307: FStAdFunc var_A8
  loc_B6C30A: FLdPr var_A8
  loc_B6C30D: Me.Text = from_stack_1
  loc_B6C312: FFreeStr var_B0 = "": var_CC = "": var_C4 = "": var_D4 = "": var_D8 = ""
  loc_B6C321: FFreeAd var_A0 = ""
  loc_B6C328: Branch loc_B6C504
  loc_B6C32B: ILdRf var_E8
  loc_B6C32E: LitI2_Byte 2
  loc_B6C330: CStrUI1
  loc_B6C332: FStStrNoPop var_B0
  loc_B6C335: EqStr
  loc_B6C337: FFree1Str var_B0
  loc_B6C33A: BranchF loc_B6C3BE
  loc_B6C33D: FLdRfVar var_B0
  loc_B6C340: FLdPr Me
  loc_B6C343: VCallAd Control_ID_SeccDifuTxt
  loc_B6C346: FStAdFunc var_A0
  loc_B6C349: FLdPr var_A0
  loc_B6C34C:  = Me.Text
  loc_B6C351: FLdZeroAd var_B0
  loc_B6C354: FLdRfVar var_92
  loc_B6C357: StFixedStrFree
  loc_B6C35B: FFree1Ad var_A0
  loc_B6C35E: FLdRfVar var_B0
  loc_B6C361: FLdPr Me
  loc_B6C364: VCallAd Control_ID_NumeDifuTxt
  loc_B6C367: FStAdFunc var_A0
  loc_B6C36A: FLdPr var_A0
  loc_B6C36D:  = Me.Text
  loc_B6C372: FLdZeroAd var_B0
  loc_B6C375: FLdRfVar var_9A
  loc_B6C378: StFixedStrRFree
  loc_B6C37C: FFree1Ad var_A0
  loc_B6C37F: LitStr "F"
  loc_B6C382: FLdRfVar var_92
  loc_B6C385: LdFixedStr
  loc_B6C388: FStStrNoPop var_B0
  loc_B6C38B: ConcatStr
  loc_B6C38C: FStStrNoPop var_C4
  loc_B6C38F: FLdRfVar var_9A
  loc_B6C392: LdFixedStr
  loc_B6C395: FStStrNoPop var_CC
  loc_B6C398: ConcatStr
  loc_B6C399: FStStrNoPop var_D4
  loc_B6C39C: FLdPr Me
  loc_B6C39F: VCallAd Control_ID_CodiDifuTxt
  loc_B6C3A2: FStAdFunc var_A0
  loc_B6C3A5: FLdPr var_A0
  loc_B6C3A8: Me.Text = from_stack_1
  loc_B6C3AD: FFreeStr var_B0 = "": var_C4 = "": var_CC = ""
  loc_B6C3B8: FFree1Ad var_A0
  loc_B6C3BB: Branch loc_B6C504
  loc_B6C3BE: ILdRf var_E8
  loc_B6C3C1: LitI2_Byte 3
  loc_B6C3C3: CStrUI1
  loc_B6C3C5: FStStrNoPop var_B0
  loc_B6C3C8: EqStr
  loc_B6C3CA: FFree1Str var_B0
  loc_B6C3CD: BranchF loc_B6C451
  loc_B6C3D0: FLdRfVar var_B0
  loc_B6C3D3: FLdPr Me
  loc_B6C3D6: VCallAd Control_ID_SeccDifuTxt
  loc_B6C3D9: FStAdFunc var_A0
  loc_B6C3DC: FLdPr var_A0
  loc_B6C3DF:  = Me.Text
  loc_B6C3E4: FLdZeroAd var_B0
  loc_B6C3E7: FLdRfVar var_92
  loc_B6C3EA: StFixedStrFree
  loc_B6C3EE: FFree1Ad var_A0
  loc_B6C3F1: FLdRfVar var_B0
  loc_B6C3F4: FLdPr Me
  loc_B6C3F7: VCallAd Control_ID_NumeDifuTxt
  loc_B6C3FA: FStAdFunc var_A0
  loc_B6C3FD: FLdPr var_A0
  loc_B6C400:  = Me.Text
  loc_B6C405: FLdZeroAd var_B0
  loc_B6C408: FLdRfVar var_9A
  loc_B6C40B: StFixedStrRFree
  loc_B6C40F: FFree1Ad var_A0
  loc_B6C412: LitStr "M"
  loc_B6C415: FLdRfVar var_92
  loc_B6C418: LdFixedStr
  loc_B6C41B: FStStrNoPop var_B0
  loc_B6C41E: ConcatStr
  loc_B6C41F: FStStrNoPop var_C4
  loc_B6C422: FLdRfVar var_9A
  loc_B6C425: LdFixedStr
  loc_B6C428: FStStrNoPop var_CC
  loc_B6C42B: ConcatStr
  loc_B6C42C: FStStrNoPop var_D4
  loc_B6C42F: FLdPr Me
  loc_B6C432: VCallAd Control_ID_CodiDifuTxt
  loc_B6C435: FStAdFunc var_A0
  loc_B6C438: FLdPr var_A0
  loc_B6C43B: Me.Text = from_stack_1
  loc_B6C440: FFreeStr var_B0 = "": var_C4 = "": var_CC = ""
  loc_B6C44B: FFree1Ad var_A0
  loc_B6C44E: Branch loc_B6C504
  loc_B6C451: ILdRf var_E8
  loc_B6C454: LitI2_Byte 4
  loc_B6C456: CStrUI1
  loc_B6C458: FStStrNoPop var_B0
  loc_B6C45B: EqStr
  loc_B6C45D: FFree1Str var_B0
  loc_B6C460: BranchF loc_B6C504
  loc_B6C463: FLdRfVar var_B0
  loc_B6C466: FLdPr Me
  loc_B6C469: VCallAd Control_ID_SeccDifuTxt
  loc_B6C46C: FStAdFunc var_A0
  loc_B6C46F: FLdPr var_A0
  loc_B6C472:  = Me.Text
  loc_B6C477: FLdZeroAd var_B0
  loc_B6C47A: FLdRfVar var_88
  loc_B6C47D: StFixedStrFree
  loc_B6C481: FFree1Ad var_A0
  loc_B6C484: FLdRfVar var_B0
  loc_B6C487: FLdPr Me
  loc_B6C48A: VCallAd Control_ID_NumeDifuTxt
  loc_B6C48D: FStAdFunc var_A0
  loc_B6C490: FLdPr var_A0
  loc_B6C493:  = Me.Text
  loc_B6C498: FLdZeroAd var_B0
  loc_B6C49B: FLdRfVar var_8E
  loc_B6C49E: StFixedStrRFree
  loc_B6C4A2: FFree1Ad var_A0
  loc_B6C4A5: LitStr "U"
  loc_B6C4A8: FLdRfVar var_88
  loc_B6C4AB: LdFixedStr
  loc_B6C4AE: FStStrNoPop var_B0
  loc_B6C4B1: ConcatStr
  loc_B6C4B2: FStStrNoPop var_CC
  loc_B6C4B5: FLdRfVar var_C4
  loc_B6C4B8: FLdPr Me
  loc_B6C4BB: VCallAd Control_ID_FilaDifuTxt
  loc_B6C4BE: FStAdFunc var_A0
  loc_B6C4C1: FLdPr var_A0
  loc_B6C4C4:  = Me.Text
  loc_B6C4C9: ILdRf var_C4
  loc_B6C4CC: ConcatStr
  loc_B6C4CD: FStStrNoPop var_D4
  loc_B6C4D0: FLdRfVar var_8E
  loc_B6C4D3: LdFixedStr
  loc_B6C4D6: FStStrNoPop var_D8
  loc_B6C4D9: ConcatStr
  loc_B6C4DA: FStStrNoPop var_E0
  loc_B6C4DD: FLdPr Me
  loc_B6C4E0: VCallAd Control_ID_CodiDifuTxt
  loc_B6C4E3: FStAdFunc var_A8
  loc_B6C4E6: FLdPr var_A8
  loc_B6C4E9: Me.Text = from_stack_1
  loc_B6C4EE: FFreeStr var_B0 = "": var_CC = "": var_C4 = "": var_D4 = "": var_D8 = ""
  loc_B6C4FD: FFreeAd var_A0 = ""
  loc_B6C504: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_GotFocus() '9BCC48
  'Data Table: 537378
  loc_9BCC34: FLdPr Me
  loc_9BCC37: VCallAd Control_ID_FilaDifuTxt
  loc_9BCC3A: CVarAd
  loc_9BCC3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCC43: FFree1Var var_94 = ""
  loc_9BCC46: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_KeyPress(KeyAscii As Integer) '9D895C
  'Data Table: 537378
  loc_9D8944: LitStr "0123456789"
  loc_9D8947: FStStrCopy var_88
  loc_9D894A: FLdRfVar var_88
  loc_9D894D: ILdRf KeyAscii
  loc_9D8950: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8955: IStI2 KeyAscii
  loc_9D8958: FFree1Str var_88
  loc_9D895B: ExitProcHresult
End Sub

Private Sub FilaDifuTxt_Validate(Cancel As Boolean) 'AB872C
  'Data Table: 537378
  loc_AB8644: FLdRfVar var_8A
  loc_AB8647: FLdPr Me
  loc_AB864A: VCallAd Control_ID_cmdCancelar
  loc_AB864D: FStAdFunc var_88
  loc_AB8650: FLdPr var_88
  loc_AB8653:  = Me.Value
  loc_AB8658: FLdI2 var_8A
  loc_AB865B: NotI4
  loc_AB865C: FLdRfVar var_92
  loc_AB865F: FLdPr Me
  loc_AB8662: VCallAd Control_ID_FilaDifuTxt
  loc_AB8665: FStAdFunc var_90
  loc_AB8668: FLdPr var_90
  loc_AB866B:  = Me.Enabled
  loc_AB8670: FLdI2 var_92
  loc_AB8673: LitI2_Byte &HFF
  loc_AB8675: EqI2
  loc_AB8676: AndI4
  loc_AB8677: FFreeAd var_88 = ""
  loc_AB867E: BranchF loc_AB8729
  loc_AB8681: FLdRfVar var_98
  loc_AB8684: FLdPr Me
  loc_AB8687: VCallAd Control_ID_FilaDifuTxt
  loc_AB868A: FStAdFunc var_88
  loc_AB868D: FLdPr var_88
  loc_AB8690:  = Me.Text
  loc_AB8695: FLdZeroAd var_98
  loc_AB8698: CVarStr var_A8
  loc_AB869B: ImpAdCallI2 IsNumeric()
  loc_AB86A0: NotI4
  loc_AB86A1: FFree1Ad var_88
  loc_AB86A4: FFree1Var var_A8 = ""
  loc_AB86A7: BranchF loc_AB86C1
  loc_AB86AA: LitStr "0"
  loc_AB86AD: FLdPr Me
  loc_AB86B0: VCallAd Control_ID_FilaDifuTxt
  loc_AB86B3: FStAdFunc var_88
  loc_AB86B6: FLdPr var_88
  loc_AB86B9: Me.Text = from_stack_1
  loc_AB86BE: FFree1Ad var_88
  loc_AB86C1: FLdRfVar var_98
  loc_AB86C4: FLdPr Me
  loc_AB86C7: VCallAd Control_ID_FilaDifuTxt
  loc_AB86CA: FStAdFunc var_88
  loc_AB86CD: FLdPr var_88
  loc_AB86D0:  = Me.Text
  loc_AB86D5: LitI2_Byte &HFF
  loc_AB86D7: LitI2_Byte 0
  loc_AB86D9: ILdRf var_98
  loc_AB86DC: LitStr "ingrese la FILA"
  loc_AB86DF: ImpAdCallI2 Proc_18_13_AC497C(, , , )
  loc_AB86E4: FStStrNoPop var_AC
  loc_AB86E7: FLdPr Me
  loc_AB86EA: MemStStrCopy
  loc_AB86EE: FFreeStr var_98 = ""
  loc_AB86F5: FFree1Ad var_88
  loc_AB86F8: FLdPr Me
  loc_AB86FB: MemLdStr global_88
  loc_AB86FE: LitStr vbNullString
  loc_AB8701: NeStr
  loc_AB8703: BranchF loc_AB8729
  loc_AB8706: FLdPr Me
  loc_AB8709: MemLdStr global_88
  loc_AB870C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB8711: FLdPr Me
  loc_AB8714: VCallAd Control_ID_FilaDifuTxt
  loc_AB8717: CVarAd
  loc_AB871B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB8720: FFree1Var var_A8 = ""
  loc_AB8723: LitI2_Byte &HFF
  loc_AB8725: IStI2 Cancel
  loc_AB8728: ExitProcHresult
  loc_AB8729: ExitProcHresult
End Sub

Private Sub EjerDifuMsk_UnknownEvent_0 '9BCA98
  'Data Table: 537378
  loc_9BCA84: FLdPr Me
  loc_9BCA87: VCallAd Control_ID_EjerDifuMsk
  loc_9BCA8A: CVarAd
  loc_9BCA8E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCA93: FFree1Var var_94 = ""
  loc_9BCA96: ExitProcHresult
End Sub

Private Sub EjerDifuMsk_UnknownEvent_8 'A98624
  'Data Table: 537378
  loc_A98578: FLdRfVar var_8A
  loc_A9857B: FLdPr Me
  loc_A9857E: VCallAd Control_ID_cmdCancelar
  loc_A98581: FStAdFunc var_88
  loc_A98584: FLdPr var_88
  loc_A98587:  = Me.Value
  loc_A9858C: FLdI2 var_8A
  loc_A9858F: NotI4
  loc_A98590: FLdPr Me
  loc_A98593: VCallAd Control_ID_EjerDifuMsk
  loc_A98596: FStAdFunc var_90
  loc_A98599: FLdPr var_90
  loc_A9859C: LateIdLdVar var_A0 DispID_13 -32767
  loc_A985A3: CBoolVar
  loc_A985A5: AndI4
  loc_A985A6: FFreeAd var_88 = ""
  loc_A985AD: FFree1Var var_A0 = ""
  loc_A985B0: BranchF loc_A98623
  loc_A985B3: FLdPr Me
  loc_A985B6: VCallAd Control_ID_EjerDifuMsk
  loc_A985B9: FStAdFunc var_88
  loc_A985BC: FLdPr var_88
  loc_A985BF: LateIdLdVar var_A0 DispID_22 0
  loc_A985C6: PopAd
  loc_A985C8: LitI2_Byte &HFF
  loc_A985CA: LitI2_Byte 0
  loc_A985CC: FLdRfVar var_A0
  loc_A985CF: CStrVarTmp
  loc_A985D0: FStStrNoPop var_A4
  loc_A985D3: LitStr "Periodo"
  loc_A985D6: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A985DB: FStStrNoPop var_A8
  loc_A985DE: FLdPr Me
  loc_A985E1: MemStStrCopy
  loc_A985E5: FFreeStr var_A4 = ""
  loc_A985EC: FFree1Ad var_88
  loc_A985EF: FFree1Var var_A0 = ""
  loc_A985F2: FLdPr Me
  loc_A985F5: MemLdStr global_88
  loc_A985F8: LitStr vbNullString
  loc_A985FB: NeStr
  loc_A985FD: BranchF loc_A98623
  loc_A98600: FLdPr Me
  loc_A98603: MemLdStr global_88
  loc_A98606: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9860B: FLdPr Me
  loc_A9860E: VCallAd Control_ID_EjerDifuMsk
  loc_A98611: CVarAd
  loc_A98615: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9861A: FFree1Var var_A0 = ""
  loc_A9861D: LitI2_Byte &HFF
  loc_A9861F: IStI2 Cancel
  loc_A98622: ExitProcHresult
  loc_A98623: ExitProcHresult
End Sub

Private Sub ExexDediTxt_GotFocus() '9BB5C8
  'Data Table: 537378
  loc_9BB5B4: FLdPr Me
  loc_9BB5B7: VCallAd Control_ID_ExexDediTxt
  loc_9BB5BA: CVarAd
  loc_9BB5BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BB5C3: FFree1Var var_94 = ""
  loc_9BB5C6: ExitProcHresult
End Sub

Private Sub ExexDediTxt_Validate(Cancel As Boolean) 'AAB8A8
  'Data Table: 537378
  loc_AAB7E4: FLdRfVar var_8A
  loc_AAB7E7: FLdPr Me
  loc_AAB7EA: VCallAd Control_ID_cmdCancelar
  loc_AAB7ED: FStAdFunc var_88
  loc_AAB7F0: FLdPr var_88
  loc_AAB7F3:  = Me.Value
  loc_AAB7F8: FLdI2 var_8A
  loc_AAB7FB: NotI4
  loc_AAB7FC: FLdRfVar var_92
  loc_AAB7FF: FLdPr Me
  loc_AAB802: VCallAd Control_ID_ExexDediTxt
  loc_AAB805: FStAdFunc var_90
  loc_AAB808: FLdPr var_90
  loc_AAB80B:  = Me.Enabled
  loc_AAB810: FLdI2 var_92
  loc_AAB813: AndI4
  loc_AAB814: FLdRfVar var_9C
  loc_AAB817: FLdPr Me
  loc_AAB81A: VCallAd Control_ID_ExexDediTxt
  loc_AAB81D: FStAdFunc var_98
  loc_AAB820: FLdPr var_98
  loc_AAB823:  = Me.Text
  loc_AAB828: ILdRf var_9C
  loc_AAB82B: LitStr vbNullString
  loc_AAB82E: NeStr
  loc_AAB830: AndI4
  loc_AAB831: FFree1Str var_9C
  loc_AAB834: FFreeAd var_88 = "": var_90 = ""
  loc_AAB83D: BranchF loc_AAB8A4
  loc_AAB840: FLdRfVar var_9C
  loc_AAB843: FLdPr Me
  loc_AAB846: VCallAd Control_ID_ExexDediTxt
  loc_AAB849: FStAdFunc var_88
  loc_AAB84C: FLdPr var_88
  loc_AAB84F:  = Me.Text
  loc_AAB854: ILdRf var_9C
  loc_AAB857: LitStr "ingrese el expediente de Exumación"
  loc_AAB85A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AAB85F: FStStrNoPop var_A0
  loc_AAB862: FLdPr Me
  loc_AAB865: MemStStrCopy
  loc_AAB869: FFreeStr var_9C = ""
  loc_AAB870: FFree1Ad var_88
  loc_AAB873: FLdPr Me
  loc_AAB876: MemLdStr global_88
  loc_AAB879: LitStr vbNullString
  loc_AAB87C: NeStr
  loc_AAB87E: BranchF loc_AAB8A4
  loc_AAB881: FLdPr Me
  loc_AAB884: MemLdStr global_88
  loc_AAB887: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAB88C: FLdPr Me
  loc_AAB88F: VCallAd Control_ID_ExexDediTxt
  loc_AAB892: CVarAd
  loc_AAB896: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAB89B: FFree1Var var_B0 = ""
  loc_AAB89E: LitI2_Byte &HFF
  loc_AAB8A0: IStI2 Cancel
  loc_AAB8A3: ExitProcHresult
  loc_AAB8A4: ExitProcHresult
End Sub

Private Sub ExpeDediTxt_GotFocus() '9BFCF0
  'Data Table: 537378
  loc_9BFCDC: FLdPr Me
  loc_9BFCDF: VCallAd Control_ID_ExpeDediTxt
  loc_9BFCE2: CVarAd
  loc_9BFCE6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFCEB: FFree1Var var_94 = ""
  loc_9BFCEE: ExitProcHresult
End Sub

Private Sub ExpeDediTxt_Validate(Cancel As Boolean) 'AAB9B4
  'Data Table: 537378
  loc_AAB8F0: FLdRfVar var_8A
  loc_AAB8F3: FLdPr Me
  loc_AAB8F6: VCallAd Control_ID_cmdCancelar
  loc_AAB8F9: FStAdFunc var_88
  loc_AAB8FC: FLdPr var_88
  loc_AAB8FF:  = Me.Value
  loc_AAB904: FLdI2 var_8A
  loc_AAB907: NotI4
  loc_AAB908: FLdRfVar var_92
  loc_AAB90B: FLdPr Me
  loc_AAB90E: VCallAd Control_ID_ExpeDediTxt
  loc_AAB911: FStAdFunc var_90
  loc_AAB914: FLdPr var_90
  loc_AAB917:  = Me.Enabled
  loc_AAB91C: FLdI2 var_92
  loc_AAB91F: AndI4
  loc_AAB920: FLdRfVar var_9C
  loc_AAB923: FLdPr Me
  loc_AAB926: VCallAd Control_ID_ExpeDediTxt
  loc_AAB929: FStAdFunc var_98
  loc_AAB92C: FLdPr var_98
  loc_AAB92F:  = Me.Text
  loc_AAB934: ILdRf var_9C
  loc_AAB937: LitStr vbNullString
  loc_AAB93A: NeStr
  loc_AAB93C: AndI4
  loc_AAB93D: FFree1Str var_9C
  loc_AAB940: FFreeAd var_88 = "": var_90 = ""
  loc_AAB949: BranchF loc_AAB9B0
  loc_AAB94C: FLdRfVar var_9C
  loc_AAB94F: FLdPr Me
  loc_AAB952: VCallAd Control_ID_ExpeDediTxt
  loc_AAB955: FStAdFunc var_88
  loc_AAB958: FLdPr var_88
  loc_AAB95B:  = Me.Text
  loc_AAB960: ILdRf var_9C
  loc_AAB963: LitStr "ingrese el Expediente"
  loc_AAB966: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AAB96B: FStStrNoPop var_A0
  loc_AAB96E: FLdPr Me
  loc_AAB971: MemStStrCopy
  loc_AAB975: FFreeStr var_9C = ""
  loc_AAB97C: FFree1Ad var_88
  loc_AAB97F: FLdPr Me
  loc_AAB982: MemLdStr global_88
  loc_AAB985: LitStr vbNullString
  loc_AAB988: NeStr
  loc_AAB98A: BranchF loc_AAB9B0
  loc_AAB98D: FLdPr Me
  loc_AAB990: MemLdStr global_88
  loc_AAB993: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AAB998: FLdPr Me
  loc_AAB99B: VCallAd Control_ID_ExpeDediTxt
  loc_AAB99E: CVarAd
  loc_AAB9A2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AAB9A7: FFree1Var var_B0 = ""
  loc_AAB9AA: LitI2_Byte &HFF
  loc_AAB9AC: IStI2 Cancel
  loc_AAB9AF: ExitProcHresult
  loc_AAB9B0: ExitProcHresult
End Sub

Private Sub ExreDediTxt_GotFocus() '9BEC58
  'Data Table: 537378
  loc_9BEC44: FLdPr Me
  loc_9BEC47: VCallAd Control_ID_ExreDediTxt
  loc_9BEC4A: CVarAd
  loc_9BEC4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BEC53: FFree1Var var_94 = ""
  loc_9BEC56: ExitProcHresult
End Sub

Private Sub ExreDediTxt_Validate(Cancel As Boolean) 'AABDE4
  'Data Table: 537378
  loc_AABD20: FLdRfVar var_8A
  loc_AABD23: FLdPr Me
  loc_AABD26: VCallAd Control_ID_cmdCancelar
  loc_AABD29: FStAdFunc var_88
  loc_AABD2C: FLdPr var_88
  loc_AABD2F:  = Me.Value
  loc_AABD34: FLdI2 var_8A
  loc_AABD37: NotI4
  loc_AABD38: FLdRfVar var_92
  loc_AABD3B: FLdPr Me
  loc_AABD3E: VCallAd Control_ID_ExreDediTxt
  loc_AABD41: FStAdFunc var_90
  loc_AABD44: FLdPr var_90
  loc_AABD47:  = Me.Enabled
  loc_AABD4C: FLdI2 var_92
  loc_AABD4F: AndI4
  loc_AABD50: FLdRfVar var_9C
  loc_AABD53: FLdPr Me
  loc_AABD56: VCallAd Control_ID_ExreDediTxt
  loc_AABD59: FStAdFunc var_98
  loc_AABD5C: FLdPr var_98
  loc_AABD5F:  = Me.Text
  loc_AABD64: ILdRf var_9C
  loc_AABD67: LitStr vbNullString
  loc_AABD6A: NeStr
  loc_AABD6C: AndI4
  loc_AABD6D: FFree1Str var_9C
  loc_AABD70: FFreeAd var_88 = "": var_90 = ""
  loc_AABD79: BranchF loc_AABDE0
  loc_AABD7C: FLdRfVar var_9C
  loc_AABD7F: FLdPr Me
  loc_AABD82: VCallAd Control_ID_ExreDediTxt
  loc_AABD85: FStAdFunc var_88
  loc_AABD88: FLdPr var_88
  loc_AABD8B:  = Me.Text
  loc_AABD90: ILdRf var_9C
  loc_AABD93: LitStr "ingrese el expediente de renovación"
  loc_AABD96: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AABD9B: FStStrNoPop var_A0
  loc_AABD9E: FLdPr Me
  loc_AABDA1: MemStStrCopy
  loc_AABDA5: FFreeStr var_9C = ""
  loc_AABDAC: FFree1Ad var_88
  loc_AABDAF: FLdPr Me
  loc_AABDB2: MemLdStr global_88
  loc_AABDB5: LitStr vbNullString
  loc_AABDB8: NeStr
  loc_AABDBA: BranchF loc_AABDE0
  loc_AABDBD: FLdPr Me
  loc_AABDC0: MemLdStr global_88
  loc_AABDC3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AABDC8: FLdPr Me
  loc_AABDCB: VCallAd Control_ID_ExreDediTxt
  loc_AABDCE: CVarAd
  loc_AABDD2: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AABDD7: FFree1Var var_B0 = ""
  loc_AABDDA: LitI2_Byte &HFF
  loc_AABDDC: IStI2 Cancel
  loc_AABDDF: ExitProcHresult
  loc_AABDE0: ExitProcHresult
End Sub

Public Function global_5469048Get() '53C250
  global_5469048Get = global_5469048
End Function

Public Sub global_5469048Put(Value) '53C26A
  global_5469048 = Value
End Sub

Public Sub global_5469048Set(Value) '53C284
  global_5469048 = Value
End Sub

Public Sub EnlazaTodo() 'B7A290
  'Data Table: 537378
  loc_B79E28: FLdRfVar var_8C
  loc_B79E2B: FLdRfVar var_88
  loc_B79E2E: FLdPr Me
  loc_B79E31: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B79E34: NewIfNullPr clsdifunto
  loc_B79E37: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B79E3C: FLdPr var_88
  loc_B79E3F:  = Me.RecordCount
  loc_B79E44: ILdRf var_8C
  loc_B79E47: LitI4 0
  loc_B79E4C: GtI4
  loc_B79E4D: FFree1Ad var_88
  loc_B79E50: BranchF loc_B7A28D
  loc_B79E53: LitI4 0
  loc_B79E58: LitI4 &H22
  loc_B79E5D: FLdRfVar var_90
  loc_B79E60: Redim
  loc_B79E6A: FLdPr Me
  loc_B79E6D: MemLdRfVar from_stack_1.DifuntoCLS
  loc_B79E70: NewIfNullAd
  loc_B79E73: FStAd var_88 
  loc_B79E77: FLdRfVar var_88
  loc_B79E7A: CVarRef
  loc_B79E7F: ParmAry1St
  loc_B79E85: FLdPr Me
  loc_B79E88: VCallAd Control_ID_CodiDifuTxt
  loc_B79E8B: CVarAd
  loc_B79E8F: ParmAry1St
  loc_B79E95: FLdPr Me
  loc_B79E98: VCallAd Control_ID_CucuPersTxt
  loc_B79E9B: CVarAd
  loc_B79E9F: ParmAry1St
  loc_B79EA5: FLdPr Me
  loc_B79EA8: VCallAd Control_ID_DetaApeNomLbl
  loc_B79EAB: CVarAd
  loc_B79EAF: ParmAry1St
  loc_B79EB5: FLdPr Me
  loc_B79EB8: VCallAd Control_ID_CodiInmuTxt
  loc_B79EBB: CVarAd
  loc_B79EBF: ParmAry1St
  loc_B79EC5: FLdPr Me
  loc_B79EC8: VCallAd Control_ID_CodiCemeTxt
  loc_B79ECB: CVarAd
  loc_B79ECF: ParmAry1St
  loc_B79ED5: FLdPr Me
  loc_B79ED8: VCallAd Control_ID_DetaCemeLbl
  loc_B79EDB: CVarAd
  loc_B79EDF: ParmAry1St
  loc_B79EE5: FLdPr Me
  loc_B79EE8: VCallAd Control_ID_CodiTiseTxt
  loc_B79EEB: CVarAd
  loc_B79EEF: ParmAry1St
  loc_B79EF5: FLdPr Me
  loc_B79EF8: VCallAd Control_ID_DetaTiseLbl
  loc_B79EFB: CVarAd
  loc_B79EFF: ParmAry1St
  loc_B79F05: FLdPr Me
  loc_B79F08: VCallAd Control_ID_NumeDifuTxt
  loc_B79F0B: CVarAd
  loc_B79F0F: ParmAry1St
  loc_B79F15: FLdPr Me
  loc_B79F18: VCallAd Control_ID_FilaDifuTxt
  loc_B79F1B: CVarAd
  loc_B79F1F: ParmAry1St
  loc_B79F25: FLdPr Me
  loc_B79F28: VCallAd Control_ID_SeccDifuTxt
  loc_B79F2B: CVarAd
  loc_B79F2F: ParmAry1St
  loc_B79F35: FLdPr Me
  loc_B79F38: VCallAd Control_ID_ParvDifuChk
  loc_B79F3B: CVarAd
  loc_B79F3F: ParmAry1St
  loc_B79F45: FLdPr Me
  loc_B79F48: VCallAd Control_ID_CacaDifuTxt
  loc_B79F4B: CVarAd
  loc_B79F4F: ParmAry1St
  loc_B79F55: FLdPr Me
  loc_B79F58: VCallAd Control_ID_CompDifuTxt
  loc_B79F5B: CVarAd
  loc_B79F5F: ParmAry1St
  loc_B79F65: FLdPr Me
  loc_B79F68: VCallAd Control_ID_PerpDifuCbo
  loc_B79F6B: CVarAd
  loc_B79F6F: ParmAry1St
  loc_B79F75: FLdPr Me
  loc_B79F78: VCallAd Control_ID_PeriDifuTxt
  loc_B79F7B: CVarAd
  loc_B79F7F: ParmAry1St
  loc_B79F85: FLdPr Me
  loc_B79F88: VCallAd Control_ID_MesDifuTxt
  loc_B79F8B: CVarAd
  loc_B79F8F: ParmAry1St
  loc_B79F95: FLdPr Me
  loc_B79F98: VCallAd Control_ID_AnioDifuTxt
  loc_B79F9B: CVarAd
  loc_B79F9F: ParmAry1St
  loc_B79FA5: FLdPr Me
  loc_B79FA8: VCallAd Control_ID_FeveDifuMsk
  loc_B79FAB: CVarAd
  loc_B79FAF: ParmAry1St
  loc_B79FB5: FLdPr Me
  loc_B79FB8: VCallAd Control_ID_MobaDifuTxt
  loc_B79FBB: CVarAd
  loc_B79FBF: ParmAry1St
  loc_B79FC5: FLdPr Me
  loc_B79FC8: VCallAd Control_ID_ObseDifuTxt
  loc_B79FCB: CVarAd
  loc_B79FCF: ParmAry1St
  loc_B79FD5: FLdPr Me
  loc_B79FD8: VCallAd Control_ID_EjerDifuMsk
  loc_B79FDB: CVarAd
  loc_B79FDF: ParmAry1St
  loc_B79FE5: FLdPr Me
  loc_B79FE8: VCallAd Control_ID_BimeDifuMsk
  loc_B79FEB: CVarAd
  loc_B79FEF: ParmAry1St
  loc_B79FF5: FLdPr Me
  loc_B79FF8: VCallAd Control_ID_CodiCallTxt
  loc_B79FFB: CVarAd
  loc_B79FFF: ParmAry1St
  loc_B7A005: FLdPr Me
  loc_B7A008: VCallAd Control_ID_DecaDpceTxt
  loc_B7A00B: CVarAd
  loc_B7A00F: ParmAry1St
  loc_B7A015: FLdPr Me
  loc_B7A018: VCallAd Control_ID_NupuDpceTxt
  loc_B7A01B: CVarAd
  loc_B7A01F: ParmAry1St
  loc_B7A025: FLdPr Me
  loc_B7A028: VCallAd Control_ID_CodiBarrTxt
  loc_B7A02B: CVarAd
  loc_B7A02F: ParmAry1St
  loc_B7A035: FLdPr Me
  loc_B7A038: VCallAd Control_ID_DebaDpceTxt
  loc_B7A03B: CVarAd
  loc_B7A03F: ParmAry1St
  loc_B7A045: FLdPr Me
  loc_B7A048: VCallAd Control_ID_ManzDpceTxt
  loc_B7A04B: CVarAd
  loc_B7A04F: ParmAry1St
  loc_B7A055: FLdPr Me
  loc_B7A058: VCallAd Control_ID_CasaDpceTxt
  loc_B7A05B: CVarAd
  loc_B7A05F: ParmAry1St
  loc_B7A065: FLdPr Me
  loc_B7A068: VCallAd Control_ID_UbicDpceTxt
  loc_B7A06B: CVarAd
  loc_B7A06F: ParmAry1St
  loc_B7A075: FLdPr Me
  loc_B7A078: VCallAd Control_ID_CodiLocaTxt
  loc_B7A07B: CVarAd
  loc_B7A07F: ParmAry1St
  loc_B7A085: FLdPr Me
  loc_B7A088: VCallAd Control_ID_DeloDpceTxt
  loc_B7A08B: CVarAd
  loc_B7A08F: ParmAry1St
  loc_B7A095: FLdPr Me
  loc_B7A098: VCallAd Control_ID_CopoDpceTxt
  loc_B7A09B: CVarAd
  loc_B7A09F: ParmAry1St
  loc_B7A0A5: FLdRfVar var_90
  loc_B7A0A8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B7A0AD: ILdRf var_88
  loc_B7A0B0: CastAd
  loc_B7A0B3: FLdPr Me
  loc_B7A0B6: MemStAdFunc
  loc_B7A0BA: FLdRfVar var_90
  loc_B7A0BD: Erase
  loc_B7A0BE: FFree1Ad var_88
  loc_B7A0C1: LitI4 0
  loc_B7A0C6: LitI4 &HF
  loc_B7A0CB: FLdRfVar var_90
  loc_B7A0CE: Redim
  loc_B7A0D8: FLdPr Me
  loc_B7A0DB: MemLdRfVar from_stack_1.global_56
  loc_B7A0DE: NewIfNullAd
  loc_B7A0E1: FStAd var_88 
  loc_B7A0E5: FLdRfVar var_88
  loc_B7A0E8: CVarRef
  loc_B7A0ED: ParmAry1St
  loc_B7A0F3: FLdPr Me
  loc_B7A0F6: VCallAd Control_ID_CucuPersTitularTxt
  loc_B7A0F9: CVarAd
  loc_B7A0FD: ParmAry1St
  loc_B7A103: FLdPr Me
  loc_B7A106: VCallAd Control_ID_DetaPersLbl
  loc_B7A109: CVarAd
  loc_B7A10D: ParmAry1St
  loc_B7A113: FLdPr Me
  loc_B7A116: VCallAd Control_ID_PorcRelaTxt
  loc_B7A119: CVarAd
  loc_B7A11D: ParmAry1St
  loc_B7A123: FLdPr Me
  loc_B7A126: VCallAd Control_ID_JuriPersChk
  loc_B7A129: CVarAd
  loc_B7A12D: ParmAry1St
  loc_B7A133: FLdPr Me
  loc_B7A136: VCallAd Control_ID_CodiTidoTxt
  loc_B7A139: CVarAd
  loc_B7A13D: ParmAry1St
  loc_B7A143: FLdPr Me
  loc_B7A146: VCallAd Control_ID_DetaTidoLbl
  loc_B7A149: CVarAd
  loc_B7A14D: ParmAry1St
  loc_B7A153: FLdPr Me
  loc_B7A156: VCallAd Control_ID_NudoPersTxt
  loc_B7A159: CVarAd
  loc_B7A15D: ParmAry1St
  loc_B7A163: FLdPr Me
  loc_B7A166: VCallAd Control_ID_FenaPersMsk
  loc_B7A169: CVarAd
  loc_B7A16D: ParmAry1St
  loc_B7A173: FLdPr Me
  loc_B7A176: VCallAd Control_ID_TelePersTxt
  loc_B7A179: CVarAd
  loc_B7A17D: ParmAry1St
  loc_B7A183: FLdPr Me
  loc_B7A186: VCallAd Control_ID_CeluPersTxt
  loc_B7A189: CVarAd
  loc_B7A18D: ParmAry1St
  loc_B7A193: FLdPr Me
  loc_B7A196: VCallAd Control_ID_FaxsPersTxt
  loc_B7A199: CVarAd
  loc_B7A19D: ParmAry1St
  loc_B7A1A3: FLdPr Me
  loc_B7A1A6: VCallAd Control_ID_CodiEsciTxt
  loc_B7A1A9: CVarAd
  loc_B7A1AD: ParmAry1St
  loc_B7A1B3: FLdPr Me
  loc_B7A1B6: VCallAd Control_ID_DetaEsciLbl
  loc_B7A1B9: CVarAd
  loc_B7A1BD: ParmAry1St
  loc_B7A1C3: FLdPr Me
  loc_B7A1C6: VCallAd Control_ID_CodiPofiTxt
  loc_B7A1C9: CVarAd
  loc_B7A1CD: ParmAry1St
  loc_B7A1D3: FLdPr Me
  loc_B7A1D6: VCallAd Control_ID_DetaPofiLbl
  loc_B7A1D9: CVarAd
  loc_B7A1DD: ParmAry1St
  loc_B7A1E3: FLdRfVar var_90
  loc_B7A1E6: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B7A1EB: ILdRf var_88
  loc_B7A1EE: CastAd
  loc_B7A1F1: FLdPr Me
  loc_B7A1F4: MemStAdFunc
  loc_B7A1F8: FLdRfVar var_90
  loc_B7A1FB: Erase
  loc_B7A1FC: FFree1Ad var_88
  loc_B7A1FF: LitI4 0
  loc_B7A204: LitI4 4
  loc_B7A209: FLdRfVar var_90
  loc_B7A20C: Redim
  loc_B7A216: FLdPr Me
  loc_B7A219: MemLdRfVar from_stack_1.global_68
  loc_B7A21C: NewIfNullAd
  loc_B7A21F: FStAd var_88 
  loc_B7A223: FLdRfVar var_88
  loc_B7A226: CVarRef
  loc_B7A22B: ParmAry1St
  loc_B7A231: FLdPr Me
  loc_B7A234: VCallAd Control_ID_CodiSeceMsk
  loc_B7A237: CVarAd
  loc_B7A23B: ParmAry1St
  loc_B7A241: FLdPr Me
  loc_B7A244: VCallAd Control_ID_DetaSeceLbl
  loc_B7A247: CVarAd
  loc_B7A24B: ParmAry1St
  loc_B7A251: FLdPr Me
  loc_B7A254: VCallAd Control_ID_FedeSediMsk
  loc_B7A257: CVarAd
  loc_B7A25B: ParmAry1St
  loc_B7A261: FLdPr Me
  loc_B7A264: VCallAd Control_ID_FehaSediMsk
  loc_B7A267: CVarAd
  loc_B7A26B: ParmAry1St
  loc_B7A271: FLdRfVar var_90
  loc_B7A274: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B7A279: ILdRf var_88
  loc_B7A27C: CastAd
  loc_B7A27F: FLdPr Me
  loc_B7A282: MemStAdFunc
  loc_B7A286: FLdRfVar var_90
  loc_B7A289: Erase
  loc_B7A28A: FFree1Ad var_88
  loc_B7A28D: ExitProcHresult
End Sub

Public Sub EnlazaTodoDetaDifu() 'AE708C
  'Data Table: 537378
  loc_AE6F4C: LitI4 0
  loc_AE6F51: LitI4 &HF
  loc_AE6F56: FLdRfVar var_88
  loc_AE6F59: Redim
  loc_AE6F63: FLdPr Me
  loc_AE6F66: MemLdRfVar from_stack_1.global_64
  loc_AE6F69: NewIfNullAd
  loc_AE6F6C: FStAd var_8C 
  loc_AE6F70: FLdRfVar var_8C
  loc_AE6F73: CVarRef
  loc_AE6F78: ParmAry1St
  loc_AE6F7E: FLdPr Me
  loc_AE6F81: VCallAd Control_ID_DetaDediTxt
  loc_AE6F84: CVarAd
  loc_AE6F88: ParmAry1St
  loc_AE6F8E: FLdPr Me
  loc_AE6F91: VCallAd Control_ID_FefaDediMsk
  loc_AE6F94: CVarAd
  loc_AE6F98: ParmAry1St
  loc_AE6F9E: FLdPr Me
  loc_AE6FA1: VCallAd Control_ID_AnioDediMsk
  loc_AE6FA4: CVarAd
  loc_AE6FA8: ParmAry1St
  loc_AE6FAE: FLdPr Me
  loc_AE6FB1: VCallAd Control_ID_MesDediMsk
  loc_AE6FB4: CVarAd
  loc_AE6FB8: ParmAry1St
  loc_AE6FBE: FLdPr Me
  loc_AE6FC1: VCallAd Control_ID_ActaDediTxt
  loc_AE6FC4: CVarAd
  loc_AE6FC8: ParmAry1St
  loc_AE6FCE: FLdPr Me
  loc_AE6FD1: VCallAd Control_ID_ExpeDediTxt
  loc_AE6FD4: CVarAd
  loc_AE6FD8: ParmAry1St
  loc_AE6FDE: FLdPr Me
  loc_AE6FE1: VCallAd Control_ID_RegiDediTxt
  loc_AE6FE4: CVarAd
  loc_AE6FE8: ParmAry1St
  loc_AE6FEE: FLdPr Me
  loc_AE6FF1: VCallAd Control_ID_FeexDediMsk
  loc_AE6FF4: CVarAd
  loc_AE6FF8: ParmAry1St
  loc_AE6FFE: FLdPr Me
  loc_AE7001: VCallAd Control_ID_ExexDediTxt
  loc_AE7004: CVarAd
  loc_AE7008: ParmAry1St
  loc_AE700E: FLdPr Me
  loc_AE7011: VCallAd Control_ID_FetrDediMsk
  loc_AE7014: CVarAd
  loc_AE7018: ParmAry1St
  loc_AE701E: FLdPr Me
  loc_AE7021: VCallAd Control_ID_ExrvDediTxt
  loc_AE7024: CVarAd
  loc_AE7028: ParmAry1St
  loc_AE702E: FLdPr Me
  loc_AE7031: VCallAd Control_ID_UbtrDediTxt
  loc_AE7034: CVarAd
  loc_AE7038: ParmAry1St
  loc_AE703E: FLdPr Me
  loc_AE7041: VCallAd Control_ID_ExreDediTxt
  loc_AE7044: CVarAd
  loc_AE7048: ParmAry1St
  loc_AE704E: FLdPr Me
  loc_AE7051: VCallAd Control_ID_FereDediMsk
  loc_AE7054: CVarAd
  loc_AE7058: ParmAry1St
  loc_AE705E: FLdPr Me
  loc_AE7061: VCallAd Control_ID_BajaMotiTxt
  loc_AE7064: CVarAd
  loc_AE7068: ParmAry1St
  loc_AE706E: FLdRfVar var_88
  loc_AE7071: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AE7076: ILdRf var_8C
  loc_AE7079: CastAd
  loc_AE707C: FLdPr Me
  loc_AE707F: MemStAdFunc
  loc_AE7083: FLdRfVar var_88
  loc_AE7086: Erase
  loc_AE7087: FFree1Ad var_8C
  loc_AE708A: ExitProcHresult
End Sub

Private Function Proc_191_120_9AECCC() '9AECCC
  'Data Table: 537378
  loc_9AECC8: ExitProcHresult
  loc_9AECC9: LitI2FP 4614
End Function

Private Function Proc_191_121_9AF27C() '9AF27C
  'Data Table: 537378
  loc_9AF278: ExitProcHresult
End Function

Private Function Proc_191_122_AFB9B0(arg_C) 'AFB9B0
  'Data Table: 537378
  loc_AFB7D0: ILdRf arg_C
  loc_AFB7D3: FStStrCopy var_88
  loc_AFB7D6: FLdRfVar var_88
  loc_AFB7D9: CVarRef
  loc_AFB7DE: FLdRfVar var_A8
  loc_AFB7E1: ImpAdCallFPR4  = Ucase()
  loc_AFB7E6: FLdRfVar var_A8
  loc_AFB7E9: FStVar var_B8
  loc_AFB7ED: FLdRfVar var_B8
  loc_AFB7F0: LitVarStr var_98, "REGISTRO CEMENTERIO"
  loc_AFB7F5: HardType
  loc_AFB7F6: EqVarBool
  loc_AFB7F8: BranchF loc_AFB85E
  loc_AFB7FB: LitVarI2 var_98, 1
  loc_AFB800: PopAdLdVar
  loc_AFB801: LitVar_FALSE
  loc_AFB805: PopAdLdVar
  loc_AFB806: FLdPrThis
  loc_AFB807: VCallAd Control_ID_sstDifunto
  loc_AFB80A: FStAdFunc var_EC
  loc_AFB80D: FLdPr var_EC
  loc_AFB810: LateIdCallSt
  loc_AFB818: FFree1Ad var_EC
  loc_AFB81B: LitVarI2 var_98, 2
  loc_AFB820: PopAdLdVar
  loc_AFB821: LitVar_FALSE
  loc_AFB825: PopAdLdVar
  loc_AFB826: FLdPrThis
  loc_AFB827: VCallAd Control_ID_sstDifunto
  loc_AFB82A: FStAdFunc var_EC
  loc_AFB82D: FLdPr var_EC
  loc_AFB830: LateIdCallSt
  loc_AFB838: FFree1Ad var_EC
  loc_AFB83B: LitVarI2 var_98, 3
  loc_AFB840: PopAdLdVar
  loc_AFB841: LitVar_FALSE
  loc_AFB845: PopAdLdVar
  loc_AFB846: FLdPrThis
  loc_AFB847: VCallAd Control_ID_sstDifunto
  loc_AFB84A: FStAdFunc var_EC
  loc_AFB84D: FLdPr var_EC
  loc_AFB850: LateIdCallSt
  loc_AFB858: FFree1Ad var_EC
  loc_AFB85B: Branch loc_AFB9AE
  loc_AFB85E: FLdRfVar var_B8
  loc_AFB861: LitVarStr var_98, "datos de los difuntos"
  loc_AFB866: HardType
  loc_AFB867: EqVarBool
  loc_AFB869: BranchF loc_AFB8CF
  loc_AFB86C: LitVarI2 var_98, 0
  loc_AFB871: PopAdLdVar
  loc_AFB872: LitVar_FALSE
  loc_AFB876: PopAdLdVar
  loc_AFB877: FLdPrThis
  loc_AFB878: VCallAd Control_ID_sstDifunto
  loc_AFB87B: FStAdFunc var_EC
  loc_AFB87E: FLdPr var_EC
  loc_AFB881: LateIdCallSt
  loc_AFB889: FFree1Ad var_EC
  loc_AFB88C: LitVarI2 var_98, 2
  loc_AFB891: PopAdLdVar
  loc_AFB892: LitVar_FALSE
  loc_AFB896: PopAdLdVar
  loc_AFB897: FLdPrThis
  loc_AFB898: VCallAd Control_ID_sstDifunto
  loc_AFB89B: FStAdFunc var_EC
  loc_AFB89E: FLdPr var_EC
  loc_AFB8A1: LateIdCallSt
  loc_AFB8A9: FFree1Ad var_EC
  loc_AFB8AC: LitVarI2 var_98, 3
  loc_AFB8B1: PopAdLdVar
  loc_AFB8B2: LitVar_FALSE
  loc_AFB8B6: PopAdLdVar
  loc_AFB8B7: FLdPrThis
  loc_AFB8B8: VCallAd Control_ID_sstDifunto
  loc_AFB8BB: FStAdFunc var_EC
  loc_AFB8BE: FLdPr var_EC
  loc_AFB8C1: LateIdCallSt
  loc_AFB8C9: FFree1Ad var_EC
  loc_AFB8CC: Branch loc_AFB9AE
  loc_AFB8CF: FLdRfVar var_B8
  loc_AFB8D2: LitVarStr var_98, "DATOS TITULAR"
  loc_AFB8D7: HardType
  loc_AFB8D8: EqVarBool
  loc_AFB8DA: BranchF loc_AFB940
  loc_AFB8DD: LitVarI2 var_98, 0
  loc_AFB8E2: PopAdLdVar
  loc_AFB8E3: LitVar_FALSE
  loc_AFB8E7: PopAdLdVar
  loc_AFB8E8: FLdPrThis
  loc_AFB8E9: VCallAd Control_ID_sstDifunto
  loc_AFB8EC: FStAdFunc var_EC
  loc_AFB8EF: FLdPr var_EC
  loc_AFB8F2: LateIdCallSt
  loc_AFB8FA: FFree1Ad var_EC
  loc_AFB8FD: LitVarI2 var_98, 1
  loc_AFB902: PopAdLdVar
  loc_AFB903: LitVar_FALSE
  loc_AFB907: PopAdLdVar
  loc_AFB908: FLdPrThis
  loc_AFB909: VCallAd Control_ID_sstDifunto
  loc_AFB90C: FStAdFunc var_EC
  loc_AFB90F: FLdPr var_EC
  loc_AFB912: LateIdCallSt
  loc_AFB91A: FFree1Ad var_EC
  loc_AFB91D: LitVarI2 var_98, 3
  loc_AFB922: PopAdLdVar
  loc_AFB923: LitVar_FALSE
  loc_AFB927: PopAdLdVar
  loc_AFB928: FLdPrThis
  loc_AFB929: VCallAd Control_ID_sstDifunto
  loc_AFB92C: FStAdFunc var_EC
  loc_AFB92F: FLdPr var_EC
  loc_AFB932: LateIdCallSt
  loc_AFB93A: FFree1Ad var_EC
  loc_AFB93D: Branch loc_AFB9AE
  loc_AFB940: FLdRfVar var_B8
  loc_AFB943: LitVarStr var_98, "SERVICIOS"
  loc_AFB948: HardType
  loc_AFB949: EqVarBool
  loc_AFB94B: BranchF loc_AFB9AE
  loc_AFB94E: LitVarI2 var_98, 0
  loc_AFB953: PopAdLdVar
  loc_AFB954: LitVar_FALSE
  loc_AFB958: PopAdLdVar
  loc_AFB959: FLdPrThis
  loc_AFB95A: VCallAd Control_ID_sstDifunto
  loc_AFB95D: FStAdFunc var_EC
  loc_AFB960: FLdPr var_EC
  loc_AFB963: LateIdCallSt
  loc_AFB96B: FFree1Ad var_EC
  loc_AFB96E: LitVarI2 var_98, 1
  loc_AFB973: PopAdLdVar
  loc_AFB974: LitVar_FALSE
  loc_AFB978: PopAdLdVar
  loc_AFB979: FLdPrThis
  loc_AFB97A: VCallAd Control_ID_sstDifunto
  loc_AFB97D: FStAdFunc var_EC
  loc_AFB980: FLdPr var_EC
  loc_AFB983: LateIdCallSt
  loc_AFB98B: FFree1Ad var_EC
  loc_AFB98E: LitVarI2 var_98, 2
  loc_AFB993: PopAdLdVar
  loc_AFB994: LitVar_FALSE
  loc_AFB998: PopAdLdVar
  loc_AFB999: FLdPrThis
  loc_AFB99A: VCallAd Control_ID_sstDifunto
  loc_AFB99D: FStAdFunc var_EC
  loc_AFB9A0: FLdPr var_EC
  loc_AFB9A3: LateIdCallSt
  loc_AFB9AB: FFree1Ad var_EC
  loc_AFB9AE: ExitProcHresult
End Function

Private Function Proc_191_123_A784B4() 'A784B4
  'Data Table: 537378
  loc_A78434: LitVarI2 var_94, 0
  loc_A78439: PopAdLdVar
  loc_A7843A: LitVar_TRUE var_B4
  loc_A7843D: PopAdLdVar
  loc_A7843E: FLdPrThis
  loc_A7843F: VCallAd Control_ID_sstDifunto
  loc_A78442: FStAdFunc var_C8
  loc_A78445: FLdPr var_C8
  loc_A78448: LateIdCallSt
  loc_A78450: FFree1Ad var_C8
  loc_A78453: LitVarI2 var_94, 1
  loc_A78458: PopAdLdVar
  loc_A78459: LitVar_TRUE var_B4
  loc_A7845C: PopAdLdVar
  loc_A7845D: FLdPrThis
  loc_A7845E: VCallAd Control_ID_sstDifunto
  loc_A78461: FStAdFunc var_C8
  loc_A78464: FLdPr var_C8
  loc_A78467: LateIdCallSt
  loc_A7846F: FFree1Ad var_C8
  loc_A78472: LitVarI2 var_94, 2
  loc_A78477: PopAdLdVar
  loc_A78478: LitVar_TRUE var_B4
  loc_A7847B: PopAdLdVar
  loc_A7847C: FLdPrThis
  loc_A7847D: VCallAd Control_ID_sstDifunto
  loc_A78480: FStAdFunc var_C8
  loc_A78483: FLdPr var_C8
  loc_A78486: LateIdCallSt
  loc_A7848E: FFree1Ad var_C8
  loc_A78491: LitVarI2 var_94, 3
  loc_A78496: PopAdLdVar
  loc_A78497: LitVar_TRUE var_B4
  loc_A7849A: PopAdLdVar
  loc_A7849B: FLdPrThis
  loc_A7849C: VCallAd Control_ID_sstDifunto
  loc_A7849F: FStAdFunc var_C8
  loc_A784A2: FLdPr var_C8
  loc_A784A5: LateIdCallSt
  loc_A784AD: FFree1Ad var_C8
  loc_A784B0: ExitProcHresult
End Function

Private Function Proc_191_124_ADB058() 'ADB058
  'Data Table: 537378
  loc_ADAF40: LitI4 &HB
  loc_ADAF45: CI2I4
  loc_ADAF46: FLdPr Me
  loc_ADAF49: Me.MousePointer = from_stack_1
  loc_ADAF4E: FLdPr Me
  loc_ADAF51: VCallAd Control_ID_FiltroMsk
  loc_ADAF54: FStAdFunc var_88
  loc_ADAF57: FLdPr var_88
  loc_ADAF5A: LateIdLdVar var_98 DispID_22 0
  loc_ADAF61: PopAd
  loc_ADAF63: FLdRfVar var_A2
  loc_ADAF66: FLdPr Me
  loc_ADAF69: VCallAd Control_ID_FiltroCbo
  loc_ADAF6C: FStAdFunc var_A0
  loc_ADAF6F: FLdPr var_A0
  loc_ADAF72:  = Me.ListIndex
  loc_ADAF77: FLdRfVar var_AA
  loc_ADAF7A: FLdPr Me
  loc_ADAF7D: VCallAd Control_ID_FiltroCbo
  loc_ADAF80: FStAdFunc var_A8
  loc_ADAF83: FLdPr var_A8
  loc_ADAF86:  = Me.ListIndex
  loc_ADAF8B: FLdPr Me
  loc_ADAF8E: VCallAd Control_ID_FiltroMsk
  loc_ADAF91: FStAdFunc var_B0
  loc_ADAF94: FLdPr var_B0
  loc_ADAF97: LateIdLdVar var_C0 DispID_15 0
  loc_ADAF9E: PopAd
  loc_ADAFA0: FLdPr Me
  loc_ADAFA3: VCallAd Control_ID_FiltroMsk
  loc_ADAFA6: FStAdFunc var_C4
  loc_ADAFA9: FLdPr var_C4
  loc_ADAFAC: LateIdLdVar var_D4 DispID_22 0
  loc_ADAFB3: CStrVarTmp
  loc_ADAFB4: CVarStr var_104
  loc_ADAFB7: FLdRfVar var_C0
  loc_ADAFBA: CStrVarTmp
  loc_ADAFBB: CVarStr var_F4
  loc_ADAFBE: FLdI2 var_A2
  loc_ADAFC1: LitI2_Byte 3
  loc_ADAFC3: EqI2
  loc_ADAFC4: FLdI2 var_AA
  loc_ADAFC7: LitI2_Byte 4
  loc_ADAFC9: EqI2
  loc_ADAFCA: OrI4
  loc_ADAFCB: CVarBoolI2 var_E4
  loc_ADAFCF: FLdRfVar var_114
  loc_ADAFD2: ImpAdCallFPR4  = IIf(, , )
  loc_ADAFD7: LitVarStr var_134, vbNullString
  loc_ADAFDC: FStVarCopyObj var_144
  loc_ADAFDF: FLdRfVar var_144
  loc_ADAFE2: FLdRfVar var_114
  loc_ADAFE5: FLdRfVar var_98
  loc_ADAFE8: CStrVarTmp
  loc_ADAFE9: FStStrNoPop var_9C
  loc_ADAFEC: LitStr vbNullString
  loc_ADAFEF: NeStr
  loc_ADAFF1: CVarBoolI2 var_124
  loc_ADAFF5: FLdRfVar var_154
  loc_ADAFF8: ImpAdCallFPR4  = IIf(, , )
  loc_ADAFFD: FLdPr Me
  loc_ADB000: VCallAd Control_ID_FiltroCbo
  loc_ADB003: FStAdFuncNoPop
  loc_ADB006: FLdRfVar var_154
  loc_ADB009: CStrVarVal var_158
  loc_ADB00D: FLdPr Me
  loc_ADB010: MemLdRfVar from_stack_1.DifuntoCLS
  loc_ADB013: NewIfNullPr clsdifunto
  loc_ADB016: Call clsdifunto.sSelect(from_stack_1v, from_stack_2v)
  loc_ADB01B: FFreeStr var_9C = ""
  loc_ADB022: FFreeAd var_88 = "": var_A0 = "": var_A8 = "": var_B0 = "": var_C4 = ""
  loc_ADB031: FFreeVar var_98 = "": var_C0 = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = "": var_124 = "": var_114 = "": var_144 = ""
  loc_ADB048: LitI4 0
  loc_ADB04D: CI2I4
  loc_ADB04E: FLdPr Me
  loc_ADB051: Me.MousePointer = from_stack_1
  loc_ADB056: ExitProcHresult
End Function

Private Function Proc_191_125_BFE53C() 'BFE53C
  'Data Table: 537378
  loc_BFDC60: FLdRfVar var_8C
  loc_BFDC63: FLdRfVar var_88
  loc_BFDC66: FLdPr Me
  loc_BFDC69: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFDC6C: NewIfNullPr clsdifunto
  loc_BFDC6F: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFDC74: FLdPr var_88
  loc_BFDC77:  = Me.RecordCount
  loc_BFDC7C: ILdRf var_8C
  loc_BFDC7F: LitI4 0
  loc_BFDC84: GtI4
  loc_BFDC85: FFree1Ad var_88
  loc_BFDC88: BranchF loc_BFE489
  loc_BFDC8B: FLdRfVar var_B4
  loc_BFDC8E: FLdRfVar var_A4
  loc_BFDC91: LitVarStr var_A0, "CodiTise"
  loc_BFDC96: PopAdLdVar
  loc_BFDC97: FLdRfVar var_90
  loc_BFDC9A: FLdRfVar var_88
  loc_BFDC9D: FLdPr Me
  loc_BFDCA0: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFDCA3: NewIfNullPr clsdifunto
  loc_BFDCA6: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFDCAB: FLdPr var_88
  loc_BFDCAE:  = Me.Fields
  loc_BFDCB3: FLdPr var_90
  loc_BFDCB6: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDCBB: FLdPr var_A4
  loc_BFDCBE:  = Me.Value
  loc_BFDCC3: FLdRfVar var_B4
  loc_BFDCC6: LitVarI2 var_C4, 1
  loc_BFDCCB: HardType
  loc_BFDCCC: EqVar var_D4
  loc_BFDCD0: FLdRfVar var_100
  loc_BFDCD3: FLdRfVar var_F0
  loc_BFDCD6: LitVarStr var_EC, "CodiTise"
  loc_BFDCDB: PopAdLdVar
  loc_BFDCDC: FLdRfVar var_DC
  loc_BFDCDF: FLdRfVar var_D8
  loc_BFDCE2: FLdPr Me
  loc_BFDCE5: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFDCE8: NewIfNullPr clsdifunto
  loc_BFDCEB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFDCF0: FLdPr var_D8
  loc_BFDCF3:  = Me.Fields
  loc_BFDCF8: FLdPr var_DC
  loc_BFDCFB: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDD00: FLdPr var_F0
  loc_BFDD03:  = Me.Value
  loc_BFDD08: FLdRfVar var_100
  loc_BFDD0B: LitVarI2 var_110, 4
  loc_BFDD10: HardType
  loc_BFDD11: EqVar var_120
  loc_BFDD15: OrVar var_130
  loc_BFDD19: CBoolVarNull
  loc_BFDD1B: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_D8 = "": var_DC = ""
  loc_BFDD2A: FFreeVar var_B4 = ""
  loc_BFDD31: BranchF loc_BFDF8C
  loc_BFDD34: LitI2_Byte &HFF
  loc_BFDD36: FLdPr Me
  loc_BFDD39: VCallAd Control_ID_Label6
  loc_BFDD3C: FStAdFunc var_88
  loc_BFDD3F: FLdPr var_88
  loc_BFDD42: Me.Visible = from_stack_1b
  loc_BFDD47: FFree1Ad var_88
  loc_BFDD4A: LitI2_Byte &HFF
  loc_BFDD4C: FLdPr Me
  loc_BFDD4F: VCallAd Control_ID_Label7
  loc_BFDD52: FStAdFunc var_88
  loc_BFDD55: FLdPr var_88
  loc_BFDD58: Me.Visible = from_stack_1b
  loc_BFDD5D: FFree1Ad var_88
  loc_BFDD60: LitI2_Byte &HFF
  loc_BFDD62: FLdPr Me
  loc_BFDD65: VCallAd Control_ID_Label8
  loc_BFDD68: FStAdFunc var_88
  loc_BFDD6B: FLdPr var_88
  loc_BFDD6E: Me.Visible = from_stack_1b
  loc_BFDD73: FFree1Ad var_88
  loc_BFDD76: LitI2_Byte &HFF
  loc_BFDD78: FLdPr Me
  loc_BFDD7B: VCallAd Control_ID_Label9
  loc_BFDD7E: FStAdFunc var_88
  loc_BFDD81: FLdPr var_88
  loc_BFDD84: Me.Visible = from_stack_1b
  loc_BFDD89: FFree1Ad var_88
  loc_BFDD8C: LitI2_Byte &HFF
  loc_BFDD8E: FLdPr Me
  loc_BFDD91: VCallAd Control_ID_SeccDifuTxt
  loc_BFDD94: FStAdFunc var_88
  loc_BFDD97: FLdPr var_88
  loc_BFDD9A: Me.Visible = from_stack_1b
  loc_BFDD9F: FFree1Ad var_88
  loc_BFDDA2: LitI2_Byte &HFF
  loc_BFDDA4: FLdPr Me
  loc_BFDDA7: VCallAd Control_ID_PlanDifuCbo
  loc_BFDDAA: FStAdFunc var_88
  loc_BFDDAD: FLdPr var_88
  loc_BFDDB0: Me.Visible = from_stack_1b
  loc_BFDDB5: FFree1Ad var_88
  loc_BFDDB8: LitI2_Byte &HFF
  loc_BFDDBA: FLdPr Me
  loc_BFDDBD: VCallAd Control_ID_NumeDifuTxt
  loc_BFDDC0: FStAdFunc var_88
  loc_BFDDC3: FLdPr var_88
  loc_BFDDC6: Me.Visible = from_stack_1b
  loc_BFDDCB: FFree1Ad var_88
  loc_BFDDCE: LitI2_Byte &HFF
  loc_BFDDD0: FLdPr Me
  loc_BFDDD3: VCallAd Control_ID_FilaDifuTxt
  loc_BFDDD6: FStAdFunc var_88
  loc_BFDDD9: FLdPr var_88
  loc_BFDDDC: Me.Visible = from_stack_1b
  loc_BFDDE1: FFree1Ad var_88
  loc_BFDDE4: LitStr "Galeria:"
  loc_BFDDE7: FLdPr Me
  loc_BFDDEA: VCallAd Control_ID_Label6
  loc_BFDDED: FStAdFunc var_88
  loc_BFDDF0: FLdPr var_88
  loc_BFDDF3: Me.Caption = from_stack_1
  loc_BFDDF8: FFree1Ad var_88
  loc_BFDDFB: LitStr "Fila:"
  loc_BFDDFE: FLdPr Me
  loc_BFDE01: VCallAd Control_ID_Label7
  loc_BFDE04: FStAdFunc var_88
  loc_BFDE07: FLdPr var_88
  loc_BFDE0A: Me.Caption = from_stack_1
  loc_BFDE0F: FFree1Ad var_88
  loc_BFDE12: LitStr "Nicho:"
  loc_BFDE15: FLdPr Me
  loc_BFDE18: VCallAd Control_ID_Label8
  loc_BFDE1B: FStAdFunc var_88
  loc_BFDE1E: FLdPr var_88
  loc_BFDE21: Me.Caption = from_stack_1
  loc_BFDE26: FFree1Ad var_88
  loc_BFDE29: LitStr "Planta:"
  loc_BFDE2C: FLdPr Me
  loc_BFDE2F: VCallAd Control_ID_Label9
  loc_BFDE32: FStAdFunc var_88
  loc_BFDE35: FLdPr var_88
  loc_BFDE38: Me.Caption = from_stack_1
  loc_BFDE3D: FFree1Ad var_88
  loc_BFDE40: LitI2 1275
  loc_BFDE43: CR8I2
  loc_BFDE44: PopFPR4
  loc_BFDE45: FLdPr Me
  loc_BFDE48: VCallAd Control_ID_Label6
  loc_BFDE4B: FStAdFunc var_88
  loc_BFDE4E: FLdPr var_88
  loc_BFDE51: Me.Left = from_stack_1s
  loc_BFDE56: FFree1Ad var_88
  loc_BFDE59: LitI2 3120
  loc_BFDE5C: CR8I2
  loc_BFDE5D: PopFPR4
  loc_BFDE5E: FLdPr Me
  loc_BFDE61: VCallAd Control_ID_Label7
  loc_BFDE64: FStAdFunc var_88
  loc_BFDE67: FLdPr var_88
  loc_BFDE6A: Me.Left = from_stack_1s
  loc_BFDE6F: FFree1Ad var_88
  loc_BFDE72: LitI2 4320
  loc_BFDE75: CR8I2
  loc_BFDE76: PopFPR4
  loc_BFDE77: FLdPr Me
  loc_BFDE7A: VCallAd Control_ID_Label8
  loc_BFDE7D: FStAdFunc var_88
  loc_BFDE80: FLdPr var_88
  loc_BFDE83: Me.Left = from_stack_1s
  loc_BFDE88: FFree1Ad var_88
  loc_BFDE8B: LitI2 6720
  loc_BFDE8E: CR8I2
  loc_BFDE8F: PopFPR4
  loc_BFDE90: FLdPr Me
  loc_BFDE93: VCallAd Control_ID_Label9
  loc_BFDE96: FStAdFunc var_88
  loc_BFDE99: FLdPr var_88
  loc_BFDE9C: Me.Left = from_stack_1s
  loc_BFDEA1: FFree1Ad var_88
  loc_BFDEA4: LitI2 2160
  loc_BFDEA7: CR8I2
  loc_BFDEA8: PopFPR4
  loc_BFDEA9: FLdPr Me
  loc_BFDEAC: VCallAd Control_ID_SeccDifuTxt
  loc_BFDEAF: FStAdFunc var_88
  loc_BFDEB2: FLdPr var_88
  loc_BFDEB5: Me.Left = from_stack_1s
  loc_BFDEBA: FFree1Ad var_88
  loc_BFDEBD: LitI2 3600
  loc_BFDEC0: CR8I2
  loc_BFDEC1: PopFPR4
  loc_BFDEC2: FLdPr Me
  loc_BFDEC5: VCallAd Control_ID_FilaDifuTxt
  loc_BFDEC8: FStAdFunc var_88
  loc_BFDECB: FLdPr var_88
  loc_BFDECE: Me.Left = from_stack_1s
  loc_BFDED3: FFree1Ad var_88
  loc_BFDED6: LitI2 5000
  loc_BFDED9: CR8I2
  loc_BFDEDA: PopFPR4
  loc_BFDEDB: FLdPr Me
  loc_BFDEDE: VCallAd Control_ID_NumeDifuTxt
  loc_BFDEE1: FStAdFunc var_88
  loc_BFDEE4: FLdPr var_88
  loc_BFDEE7: Me.Left = from_stack_1s
  loc_BFDEEC: FFree1Ad var_88
  loc_BFDEEF: LitI2 7560
  loc_BFDEF2: CR8I2
  loc_BFDEF3: PopFPR4
  loc_BFDEF4: FLdPr Me
  loc_BFDEF7: VCallAd Control_ID_PlanDifuCbo
  loc_BFDEFA: FStAdFunc var_88
  loc_BFDEFD: FLdPr var_88
  loc_BFDF00: Me.Left = from_stack_1s
  loc_BFDF05: FFree1Ad var_88
  loc_BFDF08: FLdRfVar var_B4
  loc_BFDF0B: FLdRfVar var_A4
  loc_BFDF0E: LitVarStr var_A0, "PlanDifu"
  loc_BFDF13: PopAdLdVar
  loc_BFDF14: FLdRfVar var_90
  loc_BFDF17: FLdRfVar var_88
  loc_BFDF1A: FLdPr Me
  loc_BFDF1D: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFDF20: NewIfNullPr clsdifunto
  loc_BFDF23: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFDF28: FLdPr var_88
  loc_BFDF2B:  = Me.Fields
  loc_BFDF30: FLdPr var_90
  loc_BFDF33: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDF38: FLdPr var_A4
  loc_BFDF3B:  = Me.Value
  loc_BFDF40: FLdRfVar var_B4
  loc_BFDF43: LitVarI2 var_C4, 0
  loc_BFDF48: HardType
  loc_BFDF49: EqVarBool
  loc_BFDF4B: FFreeAd var_88 = "": var_90 = ""
  loc_BFDF54: FFree1Var var_B4 = ""
  loc_BFDF57: BranchF loc_BFDF73
  loc_BFDF5A: LitI2_Byte 0
  loc_BFDF5C: FLdPr Me
  loc_BFDF5F: VCallAd Control_ID_PlanDifuCbo
  loc_BFDF62: FStAdFunc var_88
  loc_BFDF65: FLdPr var_88
  loc_BFDF68: Me.ListIndex = from_stack_1
  loc_BFDF6D: FFree1Ad var_88
  loc_BFDF70: Branch loc_BFDF89
  loc_BFDF73: LitI2_Byte 1
  loc_BFDF75: FLdPr Me
  loc_BFDF78: VCallAd Control_ID_PlanDifuCbo
  loc_BFDF7B: FStAdFunc var_88
  loc_BFDF7E: FLdPr var_88
  loc_BFDF81: Me.ListIndex = from_stack_1
  loc_BFDF86: FFree1Ad var_88
  loc_BFDF89: Branch loc_BFE486
  loc_BFDF8C: FLdRfVar var_B4
  loc_BFDF8F: FLdRfVar var_A4
  loc_BFDF92: LitVarStr var_A0, "CodiTise"
  loc_BFDF97: PopAdLdVar
  loc_BFDF98: FLdRfVar var_90
  loc_BFDF9B: FLdRfVar var_88
  loc_BFDF9E: FLdPr Me
  loc_BFDFA1: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFDFA4: NewIfNullPr clsdifunto
  loc_BFDFA7: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFDFAC: FLdPr var_88
  loc_BFDFAF:  = Me.Fields
  loc_BFDFB4: FLdPr var_90
  loc_BFDFB7: from_stack_2 = Me.Item(from_stack_1)
  loc_BFDFBC: FLdPr var_A4
  loc_BFDFBF:  = Me.Value
  loc_BFDFC4: FLdRfVar var_B4
  loc_BFDFC7: LitVarI2 var_C4, 2
  loc_BFDFCC: HardType
  loc_BFDFCD: EqVarBool
  loc_BFDFCF: FFreeAd var_88 = "": var_90 = ""
  loc_BFDFD8: FFree1Var var_B4 = ""
  loc_BFDFDB: BranchF loc_BFE1B1
  loc_BFDFDE: LitI2_Byte &HFF
  loc_BFDFE0: FLdPr Me
  loc_BFDFE3: VCallAd Control_ID_Label6
  loc_BFDFE6: FStAdFunc var_88
  loc_BFDFE9: FLdPr var_88
  loc_BFDFEC: Me.Visible = from_stack_1b
  loc_BFDFF1: FFree1Ad var_88
  loc_BFDFF4: LitI2_Byte 0
  loc_BFDFF6: FLdPr Me
  loc_BFDFF9: VCallAd Control_ID_Label7
  loc_BFDFFC: FStAdFunc var_88
  loc_BFDFFF: FLdPr var_88
  loc_BFE002: Me.Visible = from_stack_1b
  loc_BFE007: FFree1Ad var_88
  loc_BFE00A: LitI2_Byte &HFF
  loc_BFE00C: FLdPr Me
  loc_BFE00F: VCallAd Control_ID_Label8
  loc_BFE012: FStAdFunc var_88
  loc_BFE015: FLdPr var_88
  loc_BFE018: Me.Visible = from_stack_1b
  loc_BFE01D: FFree1Ad var_88
  loc_BFE020: LitI2_Byte 0
  loc_BFE022: FLdPr Me
  loc_BFE025: VCallAd Control_ID_Label9
  loc_BFE028: FStAdFunc var_88
  loc_BFE02B: FLdPr var_88
  loc_BFE02E: Me.Visible = from_stack_1b
  loc_BFE033: FFree1Ad var_88
  loc_BFE036: LitI2_Byte &HFF
  loc_BFE038: FLdPr Me
  loc_BFE03B: VCallAd Control_ID_SeccDifuTxt
  loc_BFE03E: FStAdFunc var_88
  loc_BFE041: FLdPr var_88
  loc_BFE044: Me.Visible = from_stack_1b
  loc_BFE049: FFree1Ad var_88
  loc_BFE04C: LitI2_Byte 0
  loc_BFE04E: FLdPr Me
  loc_BFE051: VCallAd Control_ID_FilaDifuTxt
  loc_BFE054: FStAdFunc var_88
  loc_BFE057: FLdPr var_88
  loc_BFE05A: Me.Visible = from_stack_1b
  loc_BFE05F: FFree1Ad var_88
  loc_BFE062: LitI2_Byte &HFF
  loc_BFE064: FLdPr Me
  loc_BFE067: VCallAd Control_ID_NumeDifuTxt
  loc_BFE06A: FStAdFunc var_88
  loc_BFE06D: FLdPr var_88
  loc_BFE070: Me.Visible = from_stack_1b
  loc_BFE075: FFree1Ad var_88
  loc_BFE078: LitI2_Byte 0
  loc_BFE07A: FLdPr Me
  loc_BFE07D: VCallAd Control_ID_PlanDifuCbo
  loc_BFE080: FStAdFunc var_88
  loc_BFE083: FLdPr var_88
  loc_BFE086: Me.Visible = from_stack_1b
  loc_BFE08B: FFree1Ad var_88
  loc_BFE08E: LitStr "Cuadro:"
  loc_BFE091: FLdPr Me
  loc_BFE094: VCallAd Control_ID_Label6
  loc_BFE097: FStAdFunc var_88
  loc_BFE09A: FLdPr var_88
  loc_BFE09D: Me.Caption = from_stack_1
  loc_BFE0A2: FFree1Ad var_88
  loc_BFE0A5: LitStr vbNullString
  loc_BFE0A8: FLdPr Me
  loc_BFE0AB: VCallAd Control_ID_Label7
  loc_BFE0AE: FStAdFunc var_88
  loc_BFE0B1: FLdPr var_88
  loc_BFE0B4: Me.Caption = from_stack_1
  loc_BFE0B9: FFree1Ad var_88
  loc_BFE0BC: LitStr "Fosa:"
  loc_BFE0BF: FLdPr Me
  loc_BFE0C2: VCallAd Control_ID_Label8
  loc_BFE0C5: FStAdFunc var_88
  loc_BFE0C8: FLdPr var_88
  loc_BFE0CB: Me.Caption = from_stack_1
  loc_BFE0D0: FFree1Ad var_88
  loc_BFE0D3: LitStr vbNullString
  loc_BFE0D6: FLdPr Me
  loc_BFE0D9: VCallAd Control_ID_Label9
  loc_BFE0DC: FStAdFunc var_88
  loc_BFE0DF: FLdPr var_88
  loc_BFE0E2: Me.Caption = from_stack_1
  loc_BFE0E7: FFree1Ad var_88
  loc_BFE0EA: LitI2 1275
  loc_BFE0ED: CR8I2
  loc_BFE0EE: PopFPR4
  loc_BFE0EF: FLdPr Me
  loc_BFE0F2: VCallAd Control_ID_Label6
  loc_BFE0F5: FStAdFunc var_88
  loc_BFE0F8: FLdPr var_88
  loc_BFE0FB: Me.Left = from_stack_1s
  loc_BFE100: FFree1Ad var_88
  loc_BFE103: LitI2_Byte 0
  loc_BFE105: CR8I2
  loc_BFE106: PopFPR4
  loc_BFE107: FLdPr Me
  loc_BFE10A: VCallAd Control_ID_Label7
  loc_BFE10D: FStAdFunc var_88
  loc_BFE110: FLdPr var_88
  loc_BFE113: Me.Left = from_stack_1s
  loc_BFE118: FFree1Ad var_88
  loc_BFE11B: LitI2 3120
  loc_BFE11E: CR8I2
  loc_BFE11F: PopFPR4
  loc_BFE120: FLdPr Me
  loc_BFE123: VCallAd Control_ID_Label8
  loc_BFE126: FStAdFunc var_88
  loc_BFE129: FLdPr var_88
  loc_BFE12C: Me.Left = from_stack_1s
  loc_BFE131: FFree1Ad var_88
  loc_BFE134: LitI2_Byte 0
  loc_BFE136: CR8I2
  loc_BFE137: PopFPR4
  loc_BFE138: FLdPr Me
  loc_BFE13B: VCallAd Control_ID_Label9
  loc_BFE13E: FStAdFunc var_88
  loc_BFE141: FLdPr var_88
  loc_BFE144: Me.Left = from_stack_1s
  loc_BFE149: FFree1Ad var_88
  loc_BFE14C: LitI2 2160
  loc_BFE14F: CR8I2
  loc_BFE150: PopFPR4
  loc_BFE151: FLdPr Me
  loc_BFE154: VCallAd Control_ID_SeccDifuTxt
  loc_BFE157: FStAdFunc var_88
  loc_BFE15A: FLdPr var_88
  loc_BFE15D: Me.Left = from_stack_1s
  loc_BFE162: FFree1Ad var_88
  loc_BFE165: LitI2_Byte 0
  loc_BFE167: CR8I2
  loc_BFE168: PopFPR4
  loc_BFE169: FLdPr Me
  loc_BFE16C: VCallAd Control_ID_FilaDifuTxt
  loc_BFE16F: FStAdFunc var_88
  loc_BFE172: FLdPr var_88
  loc_BFE175: Me.Left = from_stack_1s
  loc_BFE17A: FFree1Ad var_88
  loc_BFE17D: LitI2 3800
  loc_BFE180: CR8I2
  loc_BFE181: PopFPR4
  loc_BFE182: FLdPr Me
  loc_BFE185: VCallAd Control_ID_NumeDifuTxt
  loc_BFE188: FStAdFunc var_88
  loc_BFE18B: FLdPr var_88
  loc_BFE18E: Me.Left = from_stack_1s
  loc_BFE193: FFree1Ad var_88
  loc_BFE196: LitI2_Byte 0
  loc_BFE198: CR8I2
  loc_BFE199: PopFPR4
  loc_BFE19A: FLdPr Me
  loc_BFE19D: VCallAd Control_ID_PlanDifuCbo
  loc_BFE1A0: FStAdFunc var_88
  loc_BFE1A3: FLdPr var_88
  loc_BFE1A6: Me.Left = from_stack_1s
  loc_BFE1AB: FFree1Ad var_88
  loc_BFE1AE: Branch loc_BFE486
  loc_BFE1B1: FLdRfVar var_B4
  loc_BFE1B4: FLdRfVar var_A4
  loc_BFE1B7: LitVarStr var_A0, "CodiTise"
  loc_BFE1BC: PopAdLdVar
  loc_BFE1BD: FLdRfVar var_90
  loc_BFE1C0: FLdRfVar var_88
  loc_BFE1C3: FLdPr Me
  loc_BFE1C6: MemLdRfVar from_stack_1.DifuntoCLS
  loc_BFE1C9: NewIfNullPr clsdifunto
  loc_BFE1CC: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BFE1D1: FLdPr var_88
  loc_BFE1D4:  = Me.Fields
  loc_BFE1D9: FLdPr var_90
  loc_BFE1DC: from_stack_2 = Me.Item(from_stack_1)
  loc_BFE1E1: FLdPr var_A4
  loc_BFE1E4:  = Me.Value
  loc_BFE1E9: FLdRfVar var_B4
  loc_BFE1EC: LitVarI2 var_C4, 3
  loc_BFE1F1: HardType
  loc_BFE1F2: EqVarBool
  loc_BFE1F4: FFreeAd var_88 = "": var_90 = ""
  loc_BFE1FD: FFree1Var var_B4 = ""
  loc_BFE200: BranchF loc_BFE3D6
  loc_BFE203: LitI2_Byte &HFF
  loc_BFE205: FLdPr Me
  loc_BFE208: VCallAd Control_ID_Label6
  loc_BFE20B: FStAdFunc var_88
  loc_BFE20E: FLdPr var_88
  loc_BFE211: Me.Visible = from_stack_1b
  loc_BFE216: FFree1Ad var_88
  loc_BFE219: LitI2_Byte 0
  loc_BFE21B: FLdPr Me
  loc_BFE21E: VCallAd Control_ID_Label7
  loc_BFE221: FStAdFunc var_88
  loc_BFE224: FLdPr var_88
  loc_BFE227: Me.Visible = from_stack_1b
  loc_BFE22C: FFree1Ad var_88
  loc_BFE22F: LitI2_Byte &HFF
  loc_BFE231: FLdPr Me
  loc_BFE234: VCallAd Control_ID_Label8
  loc_BFE237: FStAdFunc var_88
  loc_BFE23A: FLdPr var_88
  loc_BFE23D: Me.Visible = from_stack_1b
  loc_BFE242: FFree1Ad var_88
  loc_BFE245: LitI2_Byte 0
  loc_BFE247: FLdPr Me
  loc_BFE24A: VCallAd Control_ID_Label9
  loc_BFE24D: FStAdFunc var_88
  loc_BFE250: FLdPr var_88
  loc_BFE253: Me.Visible = from_stack_1b
  loc_BFE258: FFree1Ad var_88
  loc_BFE25B: LitI2_Byte &HFF
  loc_BFE25D: FLdPr Me
  loc_BFE260: VCallAd Control_ID_SeccDifuTxt
  loc_BFE263: FStAdFunc var_88
  loc_BFE266: FLdPr var_88
  loc_BFE269: Me.Visible = from_stack_1b
  loc_BFE26E: FFree1Ad var_88
  loc_BFE271: LitI2_Byte 0
  loc_BFE273: FLdPr Me
  loc_BFE276: VCallAd Control_ID_FilaDifuTxt
  loc_BFE279: FStAdFunc var_88
  loc_BFE27C: FLdPr var_88
  loc_BFE27F: Me.Visible = from_stack_1b
  loc_BFE284: FFree1Ad var_88
  loc_BFE287: LitI2_Byte &HFF
  loc_BFE289: FLdPr Me
  loc_BFE28C: VCallAd Control_ID_NumeDifuTxt
  loc_BFE28F: FStAdFunc var_88
  loc_BFE292: FLdPr var_88
  loc_BFE295: Me.Visible = from_stack_1b
  loc_BFE29A: FFree1Ad var_88
  loc_BFE29D: LitI2_Byte 0
  loc_BFE29F: FLdPr Me
  loc_BFE2A2: VCallAd Control_ID_PlanDifuCbo
  loc_BFE2A5: FStAdFunc var_88
  loc_BFE2A8: FLdPr var_88
  loc_BFE2AB: Me.Visible = from_stack_1b
  loc_BFE2B0: FFree1Ad var_88
  loc_BFE2B3: LitStr "Cuadro:"
  loc_BFE2B6: FLdPr Me
  loc_BFE2B9: VCallAd Control_ID_Label6
  loc_BFE2BC: FStAdFunc var_88
  loc_BFE2BF: FLdPr var_88
  loc_BFE2C2: Me.Caption = from_stack_1
  loc_BFE2C7: FFree1Ad var_88
  loc_BFE2CA: LitStr vbNullString
  loc_BFE2CD: FLdPr Me
  loc_BFE2D0: VCallAd Control_ID_Label7
  loc_BFE2D3: FStAdFunc var_88
  loc_BFE2D6: FLdPr var_88
  loc_BFE2D9: Me.Caption = from_stack_1
  loc_BFE2DE: FFree1Ad var_88
  loc_BFE2E1: LitStr "Numero:"
  loc_BFE2E4: FLdPr Me
  loc_BFE2E7: VCallAd Control_ID_Label8
  loc_BFE2EA: FStAdFunc var_88
  loc_BFE2ED: FLdPr var_88
  loc_BFE2F0: Me.Caption = from_stack_1
  loc_BFE2F5: FFree1Ad var_88
  loc_BFE2F8: LitStr vbNullString
  loc_BFE2FB: FLdPr Me
  loc_BFE2FE: VCallAd Control_ID_Label9
  loc_BFE301: FStAdFunc var_88
  loc_BFE304: FLdPr var_88
  loc_BFE307: Me.Caption = from_stack_1
  loc_BFE30C: FFree1Ad var_88
  loc_BFE30F: LitI2 1275
  loc_BFE312: CR8I2
  loc_BFE313: PopFPR4
  loc_BFE314: FLdPr Me
  loc_BFE317: VCallAd Control_ID_Label6
  loc_BFE31A: FStAdFunc var_88
  loc_BFE31D: FLdPr var_88
  loc_BFE320: Me.Left = from_stack_1s
  loc_BFE325: FFree1Ad var_88
  loc_BFE328: LitI2_Byte 0
  loc_BFE32A: CR8I2
  loc_BFE32B: PopFPR4
  loc_BFE32C: FLdPr Me
  loc_BFE32F: VCallAd Control_ID_Label7
  loc_BFE332: FStAdFunc var_88
  loc_BFE335: FLdPr var_88
  loc_BFE338: Me.Left = from_stack_1s
  loc_BFE33D: FFree1Ad var_88
  loc_BFE340: LitI2 3120
  loc_BFE343: CR8I2
  loc_BFE344: PopFPR4
  loc_BFE345: FLdPr Me
  loc_BFE348: VCallAd Control_ID_Label8
  loc_BFE34B: FStAdFunc var_88
  loc_BFE34E: FLdPr var_88
  loc_BFE351: Me.Left = from_stack_1s
  loc_BFE356: FFree1Ad var_88
  loc_BFE359: LitI2_Byte 0
  loc_BFE35B: CR8I2
  loc_BFE35C: PopFPR4
  loc_BFE35D: FLdPr Me
  loc_BFE360: VCallAd Control_ID_Label9
  loc_BFE363: FStAdFunc var_88
  loc_BFE366: FLdPr var_88
  loc_BFE369: Me.Left = from_stack_1s
  loc_BFE36E: FFree1Ad var_88
  loc_BFE371: LitI2 2160
  loc_BFE374: CR8I2
  loc_BFE375: PopFPR4
  loc_BFE376: FLdPr Me
  loc_BFE379: VCallAd Control_ID_SeccDifuTxt
  loc_BFE37C: FStAdFunc var_88
  loc_BFE37F: FLdPr var_88
  loc_BFE382: Me.Left = from_stack_1s
  loc_BFE387: FFree1Ad var_88
  loc_BFE38A: LitI2_Byte 0
  loc_BFE38C: CR8I2
  loc_BFE38D: PopFPR4
  loc_BFE38E: FLdPr Me
  loc_BFE391: VCallAd Control_ID_FilaDifuTxt
  loc_BFE394: FStAdFunc var_88
  loc_BFE397: FLdPr var_88
  loc_BFE39A: Me.Left = from_stack_1s
  loc_BFE39F: FFree1Ad var_88
  loc_BFE3A2: LitI2 4100
  loc_BFE3A5: CR8I2
  loc_BFE3A6: PopFPR4
  loc_BFE3A7: FLdPr Me
  loc_BFE3AA: VCallAd Control_ID_NumeDifuTxt
  loc_BFE3AD: FStAdFunc var_88
  loc_BFE3B0: FLdPr var_88
  loc_BFE3B3: Me.Left = from_stack_1s
  loc_BFE3B8: FFree1Ad var_88
  loc_BFE3BB: LitI2_Byte 0
  loc_BFE3BD: CR8I2
  loc_BFE3BE: PopFPR4
  loc_BFE3BF: FLdPr Me
  loc_BFE3C2: VCallAd Control_ID_PlanDifuCbo
  loc_BFE3C5: FStAdFunc var_88
  loc_BFE3C8: FLdPr var_88
  loc_BFE3CB: Me.Left = from_stack_1s
  loc_BFE3D0: FFree1Ad var_88
  loc_BFE3D3: Branch loc_BFE486
  loc_BFE3D6: LitI2_Byte 0
  loc_BFE3D8: FLdPr Me
  loc_BFE3DB: VCallAd Control_ID_Label6
  loc_BFE3DE: FStAdFunc var_88
  loc_BFE3E1: FLdPr var_88
  loc_BFE3E4: Me.Visible = from_stack_1b
  loc_BFE3E9: FFree1Ad var_88
  loc_BFE3EC: LitI2_Byte 0
  loc_BFE3EE: FLdPr Me
  loc_BFE3F1: VCallAd Control_ID_Label7
  loc_BFE3F4: FStAdFunc var_88
  loc_BFE3F7: FLdPr var_88
  loc_BFE3FA: Me.Visible = from_stack_1b
  loc_BFE3FF: FFree1Ad var_88
  loc_BFE402: LitI2_Byte 0
  loc_BFE404: FLdPr Me
  loc_BFE407: VCallAd Control_ID_Label8
  loc_BFE40A: FStAdFunc var_88
  loc_BFE40D: FLdPr var_88
  loc_BFE410: Me.Visible = from_stack_1b
  loc_BFE415: FFree1Ad var_88
  loc_BFE418: LitI2_Byte 0
  loc_BFE41A: FLdPr Me
  loc_BFE41D: VCallAd Control_ID_Label9
  loc_BFE420: FStAdFunc var_88
  loc_BFE423: FLdPr var_88
  loc_BFE426: Me.Visible = from_stack_1b
  loc_BFE42B: FFree1Ad var_88
  loc_BFE42E: LitI2_Byte 0
  loc_BFE430: FLdPr Me
  loc_BFE433: VCallAd Control_ID_SeccDifuTxt
  loc_BFE436: FStAdFunc var_88
  loc_BFE439: FLdPr var_88
  loc_BFE43C: Me.Visible = from_stack_1b
  loc_BFE441: FFree1Ad var_88
  loc_BFE444: LitI2_Byte 0
  loc_BFE446: FLdPr Me
  loc_BFE449: VCallAd Control_ID_FilaDifuTxt
  loc_BFE44C: FStAdFunc var_88
  loc_BFE44F: FLdPr var_88
  loc_BFE452: Me.Visible = from_stack_1b
  loc_BFE457: FFree1Ad var_88
  loc_BFE45A: LitI2_Byte 0
  loc_BFE45C: FLdPr Me
  loc_BFE45F: VCallAd Control_ID_NumeDifuTxt
  loc_BFE462: FStAdFunc var_88
  loc_BFE465: FLdPr var_88
  loc_BFE468: Me.Visible = from_stack_1b
  loc_BFE46D: FFree1Ad var_88
  loc_BFE470: LitI2_Byte 0
  loc_BFE472: FLdPr Me
  loc_BFE475: VCallAd Control_ID_PlanDifuCbo
  loc_BFE478: FStAdFunc var_88
  loc_BFE47B: FLdPr var_88
  loc_BFE47E: Me.Visible = from_stack_1b
  loc_BFE483: FFree1Ad var_88
  loc_BFE486: Branch loc_BFE539
  loc_BFE489: LitI2_Byte 0
  loc_BFE48B: FLdPr Me
  loc_BFE48E: VCallAd Control_ID_Label6
  loc_BFE491: FStAdFunc var_88
  loc_BFE494: FLdPr var_88
  loc_BFE497: Me.Visible = from_stack_1b
  loc_BFE49C: FFree1Ad var_88
  loc_BFE49F: LitI2_Byte 0
  loc_BFE4A1: FLdPr Me
  loc_BFE4A4: VCallAd Control_ID_Label7
  loc_BFE4A7: FStAdFunc var_88
  loc_BFE4AA: FLdPr var_88
  loc_BFE4AD: Me.Visible = from_stack_1b
  loc_BFE4B2: FFree1Ad var_88
  loc_BFE4B5: LitI2_Byte 0
  loc_BFE4B7: FLdPr Me
  loc_BFE4BA: VCallAd Control_ID_Label8
  loc_BFE4BD: FStAdFunc var_88
  loc_BFE4C0: FLdPr var_88
  loc_BFE4C3: Me.Visible = from_stack_1b
  loc_BFE4C8: FFree1Ad var_88
  loc_BFE4CB: LitI2_Byte 0
  loc_BFE4CD: FLdPr Me
  loc_BFE4D0: VCallAd Control_ID_Label9
  loc_BFE4D3: FStAdFunc var_88
  loc_BFE4D6: FLdPr var_88
  loc_BFE4D9: Me.Visible = from_stack_1b
  loc_BFE4DE: FFree1Ad var_88
  loc_BFE4E1: LitI2_Byte 0
  loc_BFE4E3: FLdPr Me
  loc_BFE4E6: VCallAd Control_ID_SeccDifuTxt
  loc_BFE4E9: FStAdFunc var_88
  loc_BFE4EC: FLdPr var_88
  loc_BFE4EF: Me.Visible = from_stack_1b
  loc_BFE4F4: FFree1Ad var_88
  loc_BFE4F7: LitI2_Byte 0
  loc_BFE4F9: FLdPr Me
  loc_BFE4FC: VCallAd Control_ID_FilaDifuTxt
  loc_BFE4FF: FStAdFunc var_88
  loc_BFE502: FLdPr var_88
  loc_BFE505: Me.Visible = from_stack_1b
  loc_BFE50A: FFree1Ad var_88
  loc_BFE50D: LitI2_Byte 0
  loc_BFE50F: FLdPr Me
  loc_BFE512: VCallAd Control_ID_NumeDifuTxt
  loc_BFE515: FStAdFunc var_88
  loc_BFE518: FLdPr var_88
  loc_BFE51B: Me.Visible = from_stack_1b
  loc_BFE520: FFree1Ad var_88
  loc_BFE523: LitI2_Byte 0
  loc_BFE525: FLdPr Me
  loc_BFE528: VCallAd Control_ID_PlanDifuCbo
  loc_BFE52B: FStAdFunc var_88
  loc_BFE52E: FLdPr var_88
  loc_BFE531: Me.Visible = from_stack_1b
  loc_BFE536: FFree1Ad var_88
  loc_BFE539: ExitProcHresult
End Function
