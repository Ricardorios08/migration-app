VERSION 5.00
Begin VB.Form dlgControlCreditoAutorizado
  Caption = "Control Legal del Crédito Autorizado"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 390
  ClientWidth = 10350
  ClientHeight = 7425
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton CmdAceptar
    Caption = "Aceptar"
    Left = 3360
    Top = 6720
    Width = 2895
    Height = 495
    TabIndex = 29
  End
  Begin VB.Frame Frame
    Caption = " Control Legal del Crédito Autorizado "
    Left = 120
    Top = 120
    Width = 10095
    Height = 6375
    TabIndex = 0
    Begin VB.Frame Frame2
      Caption = " Datos de la Imputación "
      Left = 240
      Top = 3720
      Width = 9615
      Height = 2415
      TabIndex = 9
      Begin VB.Label DifeAutoLbl
        Left = 5040
        Top = 1800
        Width = 1935
        Height = 375
        TabIndex = 28
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label ImpoImpuLbl
        Left = 5040
        Top = 1440
        Width = 1935
        Height = 375
        TabIndex = 27
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label SaldAutoLbl
        Left = 5040
        Top = 1080
        Width = 1935
        Height = 375
        TabIndex = 26
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label TotaPrevLbl
        Left = 5040
        Top = 720
        Width = 1935
        Height = 375
        TabIndex = 25
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label FechImpuLbl
        Left = 5040
        Top = 360
        Width = 1455
        Height = 375
        TabIndex = 24
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label9
        Caption = "Saldo legal a la fecha de la imputación:"
        Left = 240
        Top = 1080
        Width = 4725
        Height = 300
        TabIndex = 14
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
      Begin VB.Label Label10
        Caption = "Importe de la preventiva:"
        Left = 1980
        Top = 1440
        Width = 2985
        Height = 300
        TabIndex = 13
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
      Begin VB.Label Label11
        Caption = "Diferencia faltante:"
        Left = 2640
        Top = 1800
        Width = 2325
        Height = 300
        TabIndex = 12
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
      Begin VB.Label Label3
        Caption = "Fecha de la preventiva:"
        Left = 2520
        Top = 360
        Width = 2445
        Height = 300
        TabIndex = 11
        AutoSize = -1  'True
      End
      Begin VB.Label Label8
        Caption = "Total acumulado preventivas:"
        Left = 1890
        Top = 720
        Width = 3075
        Height = 300
        TabIndex = 10
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame Frame1
      Caption = " Datos del Autorizado "
      Left = 240
      Top = 480
      Width = 9615
      Height = 3015
      TabIndex = 1
      Begin VB.Label AutoDefiLbl
        Left = 3600
        Top = 2520
        Width = 1935
        Height = 375
        TabIndex = 23
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label DismAutoLbl
        Left = 3600
        Top = 2160
        Width = 1935
        Height = 375
        TabIndex = 22
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label AumeAutoLbl
        Left = 3600
        Top = 1800
        Width = 1935
        Height = 375
        TabIndex = 21
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label AutoAutoLbl
        Left = 3600
        Top = 1440
        Width = 1935
        Height = 375
        TabIndex = 20
        BorderStyle = 1 'Fixed Single
        DataFormat = 80
      End
      Begin VB.Label DetaOrgaLbl
        Left = 4800
        Top = 1080
        Width = 4455
        Height = 375
        TabIndex = 19
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label CodiOrgaLbl
        Left = 3600
        Top = 1080
        Width = 1095
        Height = 375
        TabIndex = 18
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label CoauPartLbl
        Left = 3600
        Top = 720
        Width = 495
        Height = 375
        TabIndex = 17
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DetaPartLbl
        Left = 5160
        Top = 360
        Width = 4095
        Height = 375
        TabIndex = 16
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label CodiPartLbl
        Left = 3600
        Top = 360
        Width = 1455
        Height = 375
        TabIndex = 15
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label4
        Caption = "Autorizado original:"
        Left = 1560
        Top = 1440
        Width = 2025
        Height = 300
        TabIndex = 8
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Aumentos:"
        Left = 2430
        Top = 1800
        Width = 1155
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Disminuciones:"
        Left = 1980
        Top = 2160
        Width = 1605
        Height = 300
        TabIndex = 6
        AutoSize = -1  'True
      End
      Begin VB.Label Label7
        Caption = "Crédito autorizado definitivo:"
        Left = 120
        Top = 2520
        Width = 3465
        Height = 300
        TabIndex = 5
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
        Caption = "Partida:"
        Left = 2775
        Top = 360
        Width = 810
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "Jurisdicción:"
        Left = 2295
        Top = 1080
        Width = 1290
        Height = 300
        TabIndex = 3
        AutoSize = -1  'True
      End
      Begin VB.Label Label12
        Caption = "Controla el crédito autorizado:"
        Left = 420
        Top = 720
        Width = 3165
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
    End
  End
End

Attribute VB_Name = "dlgControlCreditoAutorizado"


Private Sub cmdAceptar_Click() '95F2D0
  'Data Table: 46E690
  loc_95F2B8: ILdRf Me
  loc_95F2BB: FStAdNoPop
  loc_95F2BF: ImpAdLdRf MemVar_C44F9C
  loc_95F2C2: NewIfNullPr Me
  loc_95F2C5: Me.Global.Unload from_stack_1
  loc_95F2CA: FFree1Ad var_88
  loc_95F2CD: ExitProcHresult
End Sub
