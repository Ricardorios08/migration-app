VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmDerechosVarios
  Caption = "Derechos Varios"
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
  ClientHeight = 10932
  Begin VB.CommandButton CreaPersonaCmd
    Caption = "Crea Persona"
    Left = 9720
    Top = 600
    Width = 1695
    Height = 735
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
    Picture = "frmDerechosVarios.frx":0000
    Style = 1
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 4320
    Width = 15015
    Height = 6015
    TabIndex = 7
    Begin VB.CheckBox DuplicadoChk
      Caption = "Duplicado"
      Left = 7320
      Top = 5280
      Width = 1575
      Height = 255
      TabIndex = 43
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CheckBox RedondeoChk
      Caption = "Redondeo"
      Left = 13320
      Top = 1920
      Width = 1575
      Height = 255
      TabIndex = 42
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox PorcDescTxt
      ForeColor = &H0&
      Left = 13200
      Top = 4320
      Width = 1455
      Height = 345
      TabIndex = 41
      Alignment = 1 'Right Justify
      MaxLength = 12
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
    Begin VB.TextBox DescBoleTxt
      ForeColor = &H0&
      Left = 10920
      Top = 4440
      Width = 2172
      Height = 345
      TabIndex = 40
      Alignment = 1 'Right Justify
      MaxLength = 15
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
      Left = 10920
      Top = 4920
      Width = 2172
      Height = 330
      TabIndex = 38
      Alignment = 1 'Right Justify
      MaxLength = 15
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
    Begin VB.CheckBox DescuentoChk
      Caption = "Descuento"
      Left = 13200
      Top = 3960
      Width = 1575
      Height = 255
      TabIndex = 37
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox TotaBoleTxt
      Left = 10920
      Top = 3960
      Width = 2172
      Height = 330
      TabIndex = 32
      Alignment = 1 'Right Justify
      MaxLength = 15
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
    Begin VB.CommandButton ConfirmarCmd
      Left = 5640
      Top = 5160
      Width = 1335
      Height = 525
      TabIndex = 30
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmDerechosVarios.frx":0532
      Style = 1
    End
    Begin VB.TextBox DetalleTxt
      ForeColor = &HFF0000&
      Left = 1080
      Top = 4080
      Width = 7815
      Height = 735
      TabIndex = 29
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 1000
      BeginProperty Font
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
      Left = 4545
      Top = 1200
      Width = 1695
      Height = 345
      TabIndex = 27
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
    Begin MSMask.MaskEdBox FeveCtctMsk
      Left = 1065
      Top = 1200
      Width = 1335
      Height = 345
      TabIndex = 25
      OleObjectBlob = "frmDerechosVarios.frx":0860
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSFlexGridLib.MSFlexGrid ServDevaFlex
      Left = 1080
      Top = 1680
      Width = 12132
      Height = 2292
      TabIndex = 28
      OleObjectBlob = "frmDerechosVarios.frx":0910
    End
    Begin VB.Label Label12
      Caption = "Ubicacion:"
      Left = 8160
      Top = 720
      Width = 1110
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
    Begin VB.Label UbrePersLbl
      Left = 9360
      Top = 720
      Width = 5535
      Height = 345
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Caption = "Total:"
      Left = 10200
      Top = 4920
      Width = 588
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
    Begin VB.Label DescBoleLbl
      Caption = "Descuento:"
      Left = 9600
      Top = 4440
      Width = 1236
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
      Caption = "Total del Boleto:"
      Left = 9120
      Top = 3960
      Width = 1716
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
    Begin VB.Label DetaPersLbl
      Left = 4800
      Top = 240
      Width = 5055
      Height = 345
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Caption = "Apellido y Nombre:"
      Left = 2760
      Top = 240
      Width = 2055
      Height = 255
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
    End
    Begin VB.Label Label2
      Caption = "C.U.I.L:"
      Left = 195
      Top = 240
      Width = 795
      Height = 300
      TabIndex = 8
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
    Begin VB.Label CucuPersLbl
      Left = 1080
      Top = 240
      Width = 1575
      Height = 345
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Caption = "Calle:"
      Left = 10005
      Top = 240
      Width = 585
      Height = 300
      TabIndex = 12
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
    Begin VB.Label DecrPersLbl
      Left = 10710
      Top = 240
      Width = 3375
      Height = 345
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label NupoPersLbl
      Left = 14160
      Top = 240
      Width = 735
      Height = 345
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DelrPersLbl
      Left = 9390
      Top = 1200
      Width = 3975
      Height = 345
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CoprPersLbl
      Left = 13560
      Top = 1200
      Width = 1335
      Height = 345
      TabIndex = 23
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Caption = "Localidad:"
      Left = 8160
      Top = 1200
      Width = 1080
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
    Begin VB.Label DebrPersLbl
      Left = 1110
      Top = 720
      Width = 4575
      Height = 345
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Left = 390
      Top = 720
      Width = 690
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
    Begin VB.Label MarePersLbl
      Left = 5760
      Top = 720
      Width = 975
      Height = 345
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CarePersLbl
      Left = 6990
      Top = 720
      Width = 975
      Height = 345
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
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
      Caption = "Detalle:"
      Left = 180
      Top = 4080
      Width = 810
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
    Begin VB.Label Label9
      Caption = "Fecha:"
      Left = 255
      Top = 1200
      Width = 735
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
    Begin VB.Label Label10
      Caption = "Expediente:"
      Left = 3210
      Top = 1200
      Width = 1260
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
  Begin VB.TextBox DetaPersTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 240
    Width = 5655
    Height = 345
    TabIndex = 1
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
  Begin VB.TextBox DocuPersTxt
    ForeColor = &HFF0000&
    Left = 3000
    Top = 1200
    Width = 1335
    Height = 345
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
    Left = 3000
    Top = 720
    Width = 1935
    Height = 345
    TabIndex = 3
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
    Left = 13920
    Top = 600
    Width = 735
    Height = 615
    TabIndex = 35
    Picture = "frmDerechosVarios.frx":09FC
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSDataGridLib.DataGrid dgdPersona
    Left = 120
    Top = 1680
    Width = 15135
    Height = 2535
    TabIndex = 6
    OleObjectBlob = "frmDerechosVarios.frx":0C4E
  End
  Begin VB.Label Label7
    Caption = "Numero de Documento:"
    Left = 360
    Top = 1200
    Width = 2535
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
  Begin VB.Label Label6
    Caption = "C.U.I.L:"
    Left = 2100
    Top = 720
    Width = 795
    Height = 300
    TabIndex = 2
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
    Left = 840
    Top = 240
    Width = 2055
    Height = 255
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
End

Attribute VB_Name = "frmDerechosVarios"


Private Sub DocuPersTxt_Change() 'A8E124
  'Data Table: 50E08C
  loc_A8E084: LitStr "Municipalidad de Guaymallén"
  loc_A8E087: LitStr "Municipalidad de Lavalle"
  loc_A8E08A: EqStr
  loc_A8E08C: BranchF loc_A8E121
  loc_A8E08F: FLdRfVar var_8C
  loc_A8E092: FLdPr Me
  loc_A8E095: VCallAd Control_ID_CucuPersTxt
  loc_A8E098: FStAdFunc var_88
  loc_A8E09B: FLdPr var_88
  loc_A8E09E:  = Me.Text
  loc_A8E0A3: ILdRf var_8C
  loc_A8E0A6: LitStr vbNullString
  loc_A8E0A9: NeStr
  loc_A8E0AB: FFree1Str var_8C
  loc_A8E0AE: FFree1Ad var_88
  loc_A8E0B1: BranchF loc_A8E121
  loc_A8E0B4: LitStr vbNullString
  loc_A8E0B7: FLdPr Me
  loc_A8E0BA: VCallAd Control_ID_DetaPersTxt
  loc_A8E0BD: FStAdFunc var_88
  loc_A8E0C0: FLdPr var_88
  loc_A8E0C3: Me.Text = from_stack_1
  loc_A8E0C8: FFree1Ad var_88
  loc_A8E0CB: LitStr vbNullString
  loc_A8E0CE: FLdPr Me
  loc_A8E0D1: VCallAd Control_ID_DocuPersTxt
  loc_A8E0D4: FStAdFunc var_88
  loc_A8E0D7: FLdPr var_88
  loc_A8E0DA: Me.Text = from_stack_1
  loc_A8E0DF: FFree1Ad var_88
  loc_A8E0E2: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers like '" & Chr(37)
  loc_A8E0E5: FLdRfVar var_8C
  loc_A8E0E8: FLdPr Me
  loc_A8E0EB: VCallAd Control_ID_CucuPersTxt
  loc_A8E0EE: FStAdFunc var_88
  loc_A8E0F1: FLdPr var_88
  loc_A8E0F4:  = Me.Text
  loc_A8E0F9: ILdRf var_8C
  loc_A8E0FC: ConcatStr
  loc_A8E0FD: FStStrNoPop var_90
  loc_A8E100: LitStr Chr(37) & "' ORDER BY CucuPers"
  loc_A8E103: ConcatStr
  loc_A8E104: FStStrNoPop var_94
  loc_A8E107: FLdPr Me
  loc_A8E10A: MemLdRfVar from_stack_1.global_56
  loc_A8E10D: NewIfNullPr clspersonas
  loc_A8E110: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A8E115: FFreeStr var_8C = "": var_90 = ""
  loc_A8E11E: FFree1Ad var_88
  loc_A8E121: ExitProcHresult
  loc_A8E122: NewIfNullPr Me
End Sub

Private Sub DocuPersTxt_KeyPress(KeyAscii As Integer) 'AD9FAC
  'Data Table: 50E08C
  loc_AD9E68: LitStr "Municipalidad de Guaymallén"
  loc_AD9E6B: LitStr "Municipalidad de Lavalle"
  loc_AD9E6E: EqStr
  loc_AD9E70: BranchF loc_AD9EA3
  loc_AD9E73: FLdRfVar var_88
  loc_AD9E76: FLdPr Me
  loc_AD9E79: MemLdRfVar from_stack_1.global_56
  loc_AD9E7C: NewIfNullPr clspersonas
  loc_AD9E7F: from_stack_1 = clspersonas.RecordCount
  loc_AD9E84: ILdRf var_88
  loc_AD9E87: LitI4 0
  loc_AD9E8C: EqI4
  loc_AD9E8D: ILdI2 KeyAscii
  loc_AD9E90: CI4UI1
  loc_AD9E91: LitI4 8
  loc_AD9E96: NeI4
  loc_AD9E97: AndI4
  loc_AD9E98: BranchF loc_AD9EA0
  loc_AD9E9B: LitI2_Byte 0
  loc_AD9E9D: IStI2 KeyAscii
  loc_AD9EA0: Branch loc_AD9FA9
  loc_AD9EA3: ILdI2 KeyAscii
  loc_AD9EA6: CI4UI1
  loc_AD9EA7: LitI4 &HD
  loc_AD9EAC: EqI4
  loc_AD9EAD: BranchF loc_AD9FA9
  loc_AD9EB0: FLdRfVar var_90
  loc_AD9EB3: FLdPr Me
  loc_AD9EB6: VCallAd Control_ID_DocuPersTxt
  loc_AD9EB9: FStAdFunc var_8C
  loc_AD9EBC: FLdPr var_8C
  loc_AD9EBF:  = Me.Text
  loc_AD9EC4: ILdRf var_90
  loc_AD9EC7: LitStr vbNullString
  loc_AD9ECA: NeStr
  loc_AD9ECC: FFree1Str var_90
  loc_AD9ECF: FFree1Ad var_8C
  loc_AD9ED2: BranchF loc_AD9F14
  loc_AD9ED5: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE NudoPers >= "
  loc_AD9ED8: FLdRfVar var_90
  loc_AD9EDB: FLdPr Me
  loc_AD9EDE: VCallAd Control_ID_DocuPersTxt
  loc_AD9EE1: FStAdFunc var_8C
  loc_AD9EE4: FLdPr var_8C
  loc_AD9EE7:  = Me.Text
  loc_AD9EEC: ILdRf var_90
  loc_AD9EEF: ConcatStr
  loc_AD9EF0: FStStrNoPop var_94
  loc_AD9EF3: LitStr " ORDER BY NudoPers"
  loc_AD9EF6: ConcatStr
  loc_AD9EF7: FStStrNoPop var_98
  loc_AD9EFA: FLdPr Me
  loc_AD9EFD: MemLdRfVar from_stack_1.global_56
  loc_AD9F00: NewIfNullPr clspersonas
  loc_AD9F03: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AD9F08: FFreeStr var_90 = "": var_94 = ""
  loc_AD9F11: FFree1Ad var_8C
  loc_AD9F14: FLdRfVar var_88
  loc_AD9F17: FLdPr Me
  loc_AD9F1A: MemLdRfVar from_stack_1.global_56
  loc_AD9F1D: NewIfNullPr clspersonas
  loc_AD9F20: from_stack_1 = clspersonas.RecordCount
  loc_AD9F25: ILdRf var_88
  loc_AD9F28: LitI4 0
  loc_AD9F2D: EqI4
  loc_AD9F2E: ILdI2 KeyAscii
  loc_AD9F31: CI4UI1
  loc_AD9F32: LitI4 8
  loc_AD9F37: NeI4
  loc_AD9F38: AndI4
  loc_AD9F39: BranchF loc_AD9F58
  loc_AD9F3C: LitI2_Byte 0
  loc_AD9F3E: IStI2 KeyAscii
  loc_AD9F41: FLdPr Me
  loc_AD9F44: VCallAd Control_ID_DocuPersTxt
  loc_AD9F47: FStAdFunc var_8C
  loc_AD9F4A: FLdPr var_8C
  loc_AD9F4D: Me.SetFocus
  loc_AD9F52: FFree1Ad var_8C
  loc_AD9F55: Branch loc_AD9FA9
  loc_AD9F58: FLdPr Me
  loc_AD9F5B: VCallAd Control_ID_dgdPersona
  loc_AD9F5E: FStAdFunc var_8C
  loc_AD9F61: FLdPr var_8C
  loc_AD9F64: LateIdCall
  loc_AD9F6C: FFree1Ad var_8C
  loc_AD9F6F: FLdPr Me
  loc_AD9F72: MemLdRfVar from_stack_1.global_56
  loc_AD9F75: NewIfNullAd
  loc_AD9F78: FStAd var_9C 
  loc_AD9F7C: FLdRfVar var_9C
  loc_AD9F7F: CVarRef
  loc_AD9F84: ILdRf Me
  loc_AD9F87: CastAd
  loc_AD9F8A: FStAdFunc var_8C
  loc_AD9F8D: FLdRfVar var_8C
  loc_AD9F90: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_AD9F95: ILdRf var_9C
  loc_AD9F98: CastAd
  loc_AD9F9B: FLdPr Me
  loc_AD9F9E: MemStAdFunc
  loc_AD9FA2: FFreeAd var_8C = ""
  loc_AD9FA9: ExitProcHresult
  loc_AD9FAA: FLdRfVar arg_1400
End Sub

Private Sub CucuPersTxt_Change() 'A8EC84
  'Data Table: 50E08C
  loc_A8EBE4: LitStr "Municipalidad de Guaymallén"
  loc_A8EBE7: LitStr "Municipalidad de Lavalle"
  loc_A8EBEA: EqStr
  loc_A8EBEC: BranchF loc_A8EC81
  loc_A8EBEF: FLdRfVar var_8C
  loc_A8EBF2: FLdPr Me
  loc_A8EBF5: VCallAd Control_ID_CucuPersTxt
  loc_A8EBF8: FStAdFunc var_88
  loc_A8EBFB: FLdPr var_88
  loc_A8EBFE:  = Me.Text
  loc_A8EC03: ILdRf var_8C
  loc_A8EC06: LitStr vbNullString
  loc_A8EC09: NeStr
  loc_A8EC0B: FFree1Str var_8C
  loc_A8EC0E: FFree1Ad var_88
  loc_A8EC11: BranchF loc_A8EC81
  loc_A8EC14: LitStr vbNullString
  loc_A8EC17: FLdPr Me
  loc_A8EC1A: VCallAd Control_ID_DetaPersTxt
  loc_A8EC1D: FStAdFunc var_88
  loc_A8EC20: FLdPr var_88
  loc_A8EC23: Me.Text = from_stack_1
  loc_A8EC28: FFree1Ad var_88
  loc_A8EC2B: LitStr vbNullString
  loc_A8EC2E: FLdPr Me
  loc_A8EC31: VCallAd Control_ID_DocuPersTxt
  loc_A8EC34: FStAdFunc var_88
  loc_A8EC37: FLdPr var_88
  loc_A8EC3A: Me.Text = from_stack_1
  loc_A8EC3F: FFree1Ad var_88
  loc_A8EC42: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers like '" & Chr(37)
  loc_A8EC45: FLdRfVar var_8C
  loc_A8EC48: FLdPr Me
  loc_A8EC4B: VCallAd Control_ID_CucuPersTxt
  loc_A8EC4E: FStAdFunc var_88
  loc_A8EC51: FLdPr var_88
  loc_A8EC54:  = Me.Text
  loc_A8EC59: ILdRf var_8C
  loc_A8EC5C: ConcatStr
  loc_A8EC5D: FStStrNoPop var_90
  loc_A8EC60: LitStr Chr(37) & "' ORDER BY CucuPers"
  loc_A8EC63: ConcatStr
  loc_A8EC64: FStStrNoPop var_94
  loc_A8EC67: FLdPr Me
  loc_A8EC6A: MemLdRfVar from_stack_1.global_56
  loc_A8EC6D: NewIfNullPr clspersonas
  loc_A8EC70: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A8EC75: FFreeStr var_8C = "": var_90 = ""
  loc_A8EC7E: FFree1Ad var_88
  loc_A8EC81: ExitProcHresult
  loc_A8EC82: NeStr
End Sub

Private Sub CucuPersTxt_KeyPress(KeyAscii As Integer) 'ADA5CC
  'Data Table: 50E08C
  loc_ADA488: LitStr "Municipalidad de Guaymallén"
  loc_ADA48B: LitStr "Municipalidad de Lavalle"
  loc_ADA48E: EqStr
  loc_ADA490: BranchF loc_ADA4C3
  loc_ADA493: FLdRfVar var_88
  loc_ADA496: FLdPr Me
  loc_ADA499: MemLdRfVar from_stack_1.global_56
  loc_ADA49C: NewIfNullPr clspersonas
  loc_ADA49F: from_stack_1 = clspersonas.RecordCount
  loc_ADA4A4: ILdRf var_88
  loc_ADA4A7: LitI4 0
  loc_ADA4AC: EqI4
  loc_ADA4AD: ILdI2 KeyAscii
  loc_ADA4B0: CI4UI1
  loc_ADA4B1: LitI4 8
  loc_ADA4B6: NeI4
  loc_ADA4B7: AndI4
  loc_ADA4B8: BranchF loc_ADA4C0
  loc_ADA4BB: LitI2_Byte 0
  loc_ADA4BD: IStI2 KeyAscii
  loc_ADA4C0: Branch loc_ADA5C9
  loc_ADA4C3: ILdI2 KeyAscii
  loc_ADA4C6: CI4UI1
  loc_ADA4C7: LitI4 &HD
  loc_ADA4CC: EqI4
  loc_ADA4CD: BranchF loc_ADA5C9
  loc_ADA4D0: FLdRfVar var_90
  loc_ADA4D3: FLdPr Me
  loc_ADA4D6: VCallAd Control_ID_CucuPersTxt
  loc_ADA4D9: FStAdFunc var_8C
  loc_ADA4DC: FLdPr var_8C
  loc_ADA4DF:  = Me.Text
  loc_ADA4E4: ILdRf var_90
  loc_ADA4E7: LitStr vbNullString
  loc_ADA4EA: NeStr
  loc_ADA4EC: FFree1Str var_90
  loc_ADA4EF: FFree1Ad var_8C
  loc_ADA4F2: BranchF loc_ADA534
  loc_ADA4F5: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers like '" & Chr(37)
  loc_ADA4F8: FLdRfVar var_90
  loc_ADA4FB: FLdPr Me
  loc_ADA4FE: VCallAd Control_ID_CucuPersTxt
  loc_ADA501: FStAdFunc var_8C
  loc_ADA504: FLdPr var_8C
  loc_ADA507:  = Me.Text
  loc_ADA50C: ILdRf var_90
  loc_ADA50F: ConcatStr
  loc_ADA510: FStStrNoPop var_94
  loc_ADA513: LitStr Chr(37) & "' ORDER BY CucuPers"
  loc_ADA516: ConcatStr
  loc_ADA517: FStStrNoPop var_98
  loc_ADA51A: FLdPr Me
  loc_ADA51D: MemLdRfVar from_stack_1.global_56
  loc_ADA520: NewIfNullPr clspersonas
  loc_ADA523: Call clspersonas.RedefineRS(from_stack_1v)
  loc_ADA528: FFreeStr var_90 = "": var_94 = ""
  loc_ADA531: FFree1Ad var_8C
  loc_ADA534: FLdRfVar var_88
  loc_ADA537: FLdPr Me
  loc_ADA53A: MemLdRfVar from_stack_1.global_56
  loc_ADA53D: NewIfNullPr clspersonas
  loc_ADA540: from_stack_1 = clspersonas.RecordCount
  loc_ADA545: ILdRf var_88
  loc_ADA548: LitI4 0
  loc_ADA54D: EqI4
  loc_ADA54E: ILdI2 KeyAscii
  loc_ADA551: CI4UI1
  loc_ADA552: LitI4 8
  loc_ADA557: NeI4
  loc_ADA558: AndI4
  loc_ADA559: BranchF loc_ADA578
  loc_ADA55C: LitI2_Byte 0
  loc_ADA55E: IStI2 KeyAscii
  loc_ADA561: FLdPr Me
  loc_ADA564: VCallAd Control_ID_CucuPersTxt
  loc_ADA567: FStAdFunc var_8C
  loc_ADA56A: FLdPr var_8C
  loc_ADA56D: Me.SetFocus
  loc_ADA572: FFree1Ad var_8C
  loc_ADA575: Branch loc_ADA5C9
  loc_ADA578: FLdPr Me
  loc_ADA57B: VCallAd Control_ID_dgdPersona
  loc_ADA57E: FStAdFunc var_8C
  loc_ADA581: FLdPr var_8C
  loc_ADA584: LateIdCall
  loc_ADA58C: FFree1Ad var_8C
  loc_ADA58F: FLdPr Me
  loc_ADA592: MemLdRfVar from_stack_1.global_56
  loc_ADA595: NewIfNullAd
  loc_ADA598: FStAd var_9C 
  loc_ADA59C: FLdRfVar var_9C
  loc_ADA59F: CVarRef
  loc_ADA5A4: ILdRf Me
  loc_ADA5A7: CastAd
  loc_ADA5AA: FStAdFunc var_8C
  loc_ADA5AD: FLdRfVar var_8C
  loc_ADA5B0: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_ADA5B5: ILdRf var_9C
  loc_ADA5B8: CastAd
  loc_ADA5BB: FLdPr Me
  loc_ADA5BE: MemStAdFunc
  loc_ADA5C2: FFreeAd var_8C = ""
  loc_ADA5C9: ExitProcHresult
  loc_ADA5CA: CI4Var
End Sub

Private Sub DetaPersTxt_Change() 'A8E744
  'Data Table: 50E08C
  loc_A8E6A4: LitStr "Municipalidad de Guaymallén"
  loc_A8E6A7: LitStr "Municipalidad de Lavalle"
  loc_A8E6AA: EqStr
  loc_A8E6AC: BranchF loc_A8E741
  loc_A8E6AF: FLdRfVar var_8C
  loc_A8E6B2: FLdPr Me
  loc_A8E6B5: VCallAd Control_ID_DetaPersTxt
  loc_A8E6B8: FStAdFunc var_88
  loc_A8E6BB: FLdPr var_88
  loc_A8E6BE:  = Me.Text
  loc_A8E6C3: ILdRf var_8C
  loc_A8E6C6: LitStr vbNullString
  loc_A8E6C9: NeStr
  loc_A8E6CB: FFree1Str var_8C
  loc_A8E6CE: FFree1Ad var_88
  loc_A8E6D1: BranchF loc_A8E741
  loc_A8E6D4: LitStr vbNullString
  loc_A8E6D7: FLdPr Me
  loc_A8E6DA: VCallAd Control_ID_CucuPersTxt
  loc_A8E6DD: FStAdFunc var_88
  loc_A8E6E0: FLdPr var_88
  loc_A8E6E3: Me.Text = from_stack_1
  loc_A8E6E8: FFree1Ad var_88
  loc_A8E6EB: LitStr vbNullString
  loc_A8E6EE: FLdPr Me
  loc_A8E6F1: VCallAd Control_ID_DocuPersTxt
  loc_A8E6F4: FStAdFunc var_88
  loc_A8E6F7: FLdPr var_88
  loc_A8E6FA: Me.Text = from_stack_1
  loc_A8E6FF: FFree1Ad var_88
  loc_A8E702: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE DetaPers like '" & Chr(37)
  loc_A8E705: FLdRfVar var_8C
  loc_A8E708: FLdPr Me
  loc_A8E70B: VCallAd Control_ID_DetaPersTxt
  loc_A8E70E: FStAdFunc var_88
  loc_A8E711: FLdPr var_88
  loc_A8E714:  = Me.Text
  loc_A8E719: ILdRf var_8C
  loc_A8E71C: ConcatStr
  loc_A8E71D: FStStrNoPop var_90
  loc_A8E720: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_A8E723: ConcatStr
  loc_A8E724: FStStrNoPop var_94
  loc_A8E727: FLdPr Me
  loc_A8E72A: MemLdRfVar from_stack_1.global_56
  loc_A8E72D: NewIfNullPr clspersonas
  loc_A8E730: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A8E735: FFreeStr var_8C = "": var_90 = ""
  loc_A8E73E: FFree1Ad var_88
  loc_A8E741: ExitProcHresult
  loc_A8E742: PopAd
End Sub

Private Sub DetaPersTxt_KeyPress(KeyAscii As Integer) 'AD9E24
  'Data Table: 50E08C
  loc_AD9CE0: LitStr "Municipalidad de Guaymallén"
  loc_AD9CE3: LitStr "Municipalidad de Lavalle"
  loc_AD9CE6: EqStr
  loc_AD9CE8: BranchF loc_AD9D1B
  loc_AD9CEB: FLdRfVar var_88
  loc_AD9CEE: FLdPr Me
  loc_AD9CF1: MemLdRfVar from_stack_1.global_56
  loc_AD9CF4: NewIfNullPr clspersonas
  loc_AD9CF7: from_stack_1 = clspersonas.RecordCount
  loc_AD9CFC: ILdRf var_88
  loc_AD9CFF: LitI4 0
  loc_AD9D04: EqI4
  loc_AD9D05: ILdI2 KeyAscii
  loc_AD9D08: CI4UI1
  loc_AD9D09: LitI4 8
  loc_AD9D0E: NeI4
  loc_AD9D0F: AndI4
  loc_AD9D10: BranchF loc_AD9D18
  loc_AD9D13: LitI2_Byte 0
  loc_AD9D15: IStI2 KeyAscii
  loc_AD9D18: Branch loc_AD9E21
  loc_AD9D1B: ILdI2 KeyAscii
  loc_AD9D1E: CI4UI1
  loc_AD9D1F: LitI4 &HD
  loc_AD9D24: EqI4
  loc_AD9D25: BranchF loc_AD9E21
  loc_AD9D28: FLdRfVar var_90
  loc_AD9D2B: FLdPr Me
  loc_AD9D2E: VCallAd Control_ID_DetaPersTxt
  loc_AD9D31: FStAdFunc var_8C
  loc_AD9D34: FLdPr var_8C
  loc_AD9D37:  = Me.Text
  loc_AD9D3C: ILdRf var_90
  loc_AD9D3F: LitStr vbNullString
  loc_AD9D42: NeStr
  loc_AD9D44: FFree1Str var_90
  loc_AD9D47: FFree1Ad var_8C
  loc_AD9D4A: BranchF loc_AD9E21
  loc_AD9D4D: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE DetaPers like '" & Chr(37)
  loc_AD9D50: FLdRfVar var_90
  loc_AD9D53: FLdPr Me
  loc_AD9D56: VCallAd Control_ID_DetaPersTxt
  loc_AD9D59: FStAdFunc var_8C
  loc_AD9D5C: FLdPr var_8C
  loc_AD9D5F:  = Me.Text
  loc_AD9D64: ILdRf var_90
  loc_AD9D67: ConcatStr
  loc_AD9D68: FStStrNoPop var_94
  loc_AD9D6B: LitStr Chr(37) & "' ORDER BY DetaPers"
  loc_AD9D6E: ConcatStr
  loc_AD9D6F: FStStrNoPop var_98
  loc_AD9D72: FLdPr Me
  loc_AD9D75: MemLdRfVar from_stack_1.global_56
  loc_AD9D78: NewIfNullPr clspersonas
  loc_AD9D7B: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AD9D80: FFreeStr var_90 = "": var_94 = ""
  loc_AD9D89: FFree1Ad var_8C
  loc_AD9D8C: FLdRfVar var_88
  loc_AD9D8F: FLdPr Me
  loc_AD9D92: MemLdRfVar from_stack_1.global_56
  loc_AD9D95: NewIfNullPr clspersonas
  loc_AD9D98: from_stack_1 = clspersonas.RecordCount
  loc_AD9D9D: ILdRf var_88
  loc_AD9DA0: LitI4 0
  loc_AD9DA5: EqI4
  loc_AD9DA6: ILdI2 KeyAscii
  loc_AD9DA9: CI4UI1
  loc_AD9DAA: LitI4 8
  loc_AD9DAF: NeI4
  loc_AD9DB0: AndI4
  loc_AD9DB1: BranchF loc_AD9DD0
  loc_AD9DB4: LitI2_Byte 0
  loc_AD9DB6: IStI2 KeyAscii
  loc_AD9DB9: FLdPr Me
  loc_AD9DBC: VCallAd Control_ID_DetaPersTxt
  loc_AD9DBF: FStAdFunc var_8C
  loc_AD9DC2: FLdPr var_8C
  loc_AD9DC5: Me.SetFocus
  loc_AD9DCA: FFree1Ad var_8C
  loc_AD9DCD: Branch loc_AD9E21
  loc_AD9DD0: FLdPr Me
  loc_AD9DD3: VCallAd Control_ID_dgdPersona
  loc_AD9DD6: FStAdFunc var_8C
  loc_AD9DD9: FLdPr var_8C
  loc_AD9DDC: LateIdCall
  loc_AD9DE4: FFree1Ad var_8C
  loc_AD9DE7: FLdPr Me
  loc_AD9DEA: MemLdRfVar from_stack_1.global_56
  loc_AD9DED: NewIfNullAd
  loc_AD9DF0: FStAd var_9C 
  loc_AD9DF4: FLdRfVar var_9C
  loc_AD9DF7: CVarRef
  loc_AD9DFC: ILdRf Me
  loc_AD9DFF: CastAd
  loc_AD9E02: FStAdFunc var_8C
  loc_AD9E05: FLdRfVar var_8C
  loc_AD9E08: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_AD9E0D: ILdRf var_9C
  loc_AD9E10: CastAd
  loc_AD9E13: FLdPr Me
  loc_AD9E16: MemStAdFunc
  loc_AD9E1A: FFreeAd var_8C = ""
  loc_AD9E21: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() 'A85CD8
  'Data Table: 50E08C
  loc_A85C4C: LitI2_Byte 0
  loc_A85C4E: ImpAdLdRf MemVar_D94A10
  loc_A85C51: NewIfNullPr dlgCreaPersona
  loc_A85C54: Call dlgCreaPersona.doValidaCuilPut(from_stack_1v)
  loc_A85C59: LitVar_Missing var_A4
  loc_A85C5C: PopAdLdVar
  loc_A85C5D: LitVarI4
  loc_A85C65: PopAdLdVar
  loc_A85C66: ImpAdLdRf MemVar_D94A10
  loc_A85C69: NewIfNullPr dlgCreaPersona
  loc_A85C6C: dlgCreaPersona.Show from_stack_1, from_stack_2
  loc_A85C71: FLdRfVar var_A6
  loc_A85C74: ImpAdLdRf MemVar_D94A10
  loc_A85C77: NewIfNullPr dlgCreaPersona
  loc_A85C7A: from_stack_1v = dlgCreaPersona.boAceptarGet()
  loc_A85C7F: FLdI2 var_A6
  loc_A85C82: LitI2_Byte &HFF
  loc_A85C84: EqI2
  loc_A85C85: BranchF loc_A85CD5
  loc_A85C88: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers  = '"
  loc_A85C8B: FLdRfVar var_AC
  loc_A85C8E: ImpAdLdRf MemVar_D94A10
  loc_A85C91: NewIfNullPr dlgCreaPersona
  loc_A85C94: from_stack_1v = dlgCreaPersona.sCucuPersGet()
  loc_A85C99: ILdRf var_AC
  loc_A85C9C: ConcatStr
  loc_A85C9D: FStStrNoPop var_B0
  loc_A85CA0: LitStr "' ORDER BY CucuPers"
  loc_A85CA3: ConcatStr
  loc_A85CA4: FStStrNoPop var_B4
  loc_A85CA7: FLdPr Me
  loc_A85CAA: MemLdRfVar from_stack_1.global_56
  loc_A85CAD: NewIfNullPr clspersonas
  loc_A85CB0: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A85CB5: FFreeStr var_AC = "": var_B0 = ""
  loc_A85CBE: FLdPr Me
  loc_A85CC1: VCallAd Control_ID_dgdPersona
  loc_A85CC4: FStAdFunc var_B8
  loc_A85CC7: FLdPr var_B8
  loc_A85CCA: LateIdCall
  loc_A85CD2: FFree1Ad var_B8
  loc_A85CD5: ExitProcHresult
  loc_A85CD6: ExitProcHresult
  loc_A85CD7: LitI2_Byte &H14
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9C51E0
  'Data Table: 50E08C
  loc_9C51CC: FLdPr Me
  loc_9C51CF: VCallAd Control_ID_FeveCtctMsk
  loc_9C51D2: CVarAd
  loc_9C51D6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C51DB: FFree1Var var_94 = ""
  loc_9C51DE: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'ABF714
  'Data Table: 50E08C
  loc_ABF61C: FLdPr Me
  loc_ABF61F: VCallAd Control_ID_FeveCtctMsk
  loc_ABF622: FStAdFunc var_88
  loc_ABF625: FLdPr var_88
  loc_ABF628: LateIdLdVar var_98 DispID_13 -32767
  loc_ABF62F: CBoolVar
  loc_ABF631: LitI2_Byte &HFF
  loc_ABF633: EqI2
  loc_ABF634: FFree1Ad var_88
  loc_ABF637: FFree1Var var_98 = ""
  loc_ABF63A: BranchF loc_ABF712
  loc_ABF63D: LitVarStr var_A8, vbNullString
  loc_ABF642: PopAdLdVar
  loc_ABF643: FLdPr Me
  loc_ABF646: VCallAd Control_ID_FeveCtctMsk
  loc_ABF649: FStAdFunc var_88
  loc_ABF64C: FLdPr var_88
  loc_ABF64F: LateIdSt
  loc_ABF654: FFree1Ad var_88
  loc_ABF657: FLdPr Me
  loc_ABF65A: VCallAd Control_ID_FeveCtctMsk
  loc_ABF65D: FStAdFunc var_88
  loc_ABF660: FLdPr var_88
  loc_ABF663: LateIdLdVar var_98 DispID_22 0
  loc_ABF66A: CStrVarTmp
  loc_ABF66B: FStStrNoPop var_BC
  loc_ABF66E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABF673: FStStrNoPop var_C0
  loc_ABF676: FLdPr Me
  loc_ABF679: MemStStrCopy
  loc_ABF67D: FFreeStr var_BC = ""
  loc_ABF684: FFree1Ad var_88
  loc_ABF687: FFree1Var var_98 = ""
  loc_ABF68A: LitVarStr var_A8, "##/##/####"
  loc_ABF68F: PopAdLdVar
  loc_ABF690: FLdPr Me
  loc_ABF693: VCallAd Control_ID_FeveCtctMsk
  loc_ABF696: FStAdFunc var_88
  loc_ABF699: FLdPr var_88
  loc_ABF69C: LateIdSt
  loc_ABF6A1: FFree1Ad var_88
  loc_ABF6A4: LitVarI2 var_A8, 10
  loc_ABF6A9: PopAdLdVar
  loc_ABF6AA: FLdPr Me
  loc_ABF6AD: VCallAd Control_ID_FeveCtctMsk
  loc_ABF6B0: FStAdFunc var_88
  loc_ABF6B3: FLdPr var_88
  loc_ABF6B6: LateIdSt
  loc_ABF6BB: FFree1Ad var_88
  loc_ABF6BE: FLdPr Me
  loc_ABF6C1: MemLdStr global_80
  loc_ABF6C4: LitStr vbNullString
  loc_ABF6C7: NeStr
  loc_ABF6C9: BranchF loc_ABF712
  loc_ABF6CC: FLdPr Me
  loc_ABF6CF: MemLdStr global_80
  loc_ABF6D2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABF6D7: LitI2_Byte 0
  loc_ABF6D9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABF6DE: CStrDate
  loc_ABF6E0: CVarStr var_98
  loc_ABF6E3: PopAdLdVar
  loc_ABF6E4: FLdPr Me
  loc_ABF6E7: VCallAd Control_ID_FeveCtctMsk
  loc_ABF6EA: FStAdFunc var_88
  loc_ABF6ED: FLdPr var_88
  loc_ABF6F0: LateIdSt
  loc_ABF6F5: FFree1Ad var_88
  loc_ABF6F8: FFree1Var var_98 = ""
  loc_ABF6FB: FLdPr Me
  loc_ABF6FE: VCallAd Control_ID_FeveCtctMsk
  loc_ABF701: CVarAd
  loc_ABF705: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABF70A: FFree1Var var_98 = ""
  loc_ABF70D: LitI2_Byte &HFF
  loc_ABF70F: IStI2 arg_C
  loc_ABF712: ExitProcHresult
End Function

Private Sub FeveCtctMsk_KeyPress(KeyAscii As Integer) 'A2752C
  'Data Table: 50E08C
  loc_A274E0: ILdI2 KeyAscii
  loc_A274E3: CI4UI1
  loc_A274E4: LitI4 &H20
  loc_A274E9: EqI4
  loc_A274EA: BranchF loc_A2752B
  loc_A274ED: LitVar_Missing var_A4
  loc_A274F0: PopAdLdVar
  loc_A274F1: LitVarI4
  loc_A274F9: PopAdLdVar
  loc_A274FA: ImpAdLdRf MemVar_D930A4
  loc_A274FD: NewIfNullPr frmCalendario
  loc_A27500: frmCalendario.Show from_stack_1, from_stack_2
  loc_A27505: ImpAdLdI4 MemVar_D93028
  loc_A27508: LitStr vbNullString
  loc_A2750B: NeStr
  loc_A2750D: BranchF loc_A2752B
  loc_A27510: ImpAdLdRf MemVar_D93028
  loc_A27513: CDargRef
  loc_A27517: FLdPr Me
  loc_A2751A: VCallAd Control_ID_FeveCtctMsk
  loc_A2751D: FStAdFunc var_A8
  loc_A27520: FLdPr var_A8
  loc_A27523: LateIdSt
  loc_A27528: FFree1Ad var_A8
  loc_A2752B: ExitProcHresult
End Sub

Private Sub DetalleTxt_Validate(Cancel As Boolean) 'A85678
  'Data Table: 50E08C
  loc_A855EC: FLdRfVar var_8C
  loc_A855EF: FLdPr Me
  loc_A855F2: VCallAd Control_ID_DetalleTxt
  loc_A855F5: FStAdFunc var_88
  loc_A855F8: FLdPr var_88
  loc_A855FB:  = Me.Text
  loc_A85600: ILdRf var_8C
  loc_A85603: LitStr vbNullString
  loc_A85606: NeStr
  loc_A85608: FFree1Str var_8C
  loc_A8560B: FFree1Ad var_88
  loc_A8560E: BranchF loc_A85675
  loc_A85611: FLdRfVar var_8C
  loc_A85614: FLdPr Me
  loc_A85617: VCallAd Control_ID_DetalleTxt
  loc_A8561A: FStAdFunc var_88
  loc_A8561D: FLdPr var_88
  loc_A85620:  = Me.Text
  loc_A85625: ILdRf var_8C
  loc_A85628: LitStr "ingrese el DETALLE"
  loc_A8562B: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A85630: FStStrNoPop var_90
  loc_A85633: FLdPr Me
  loc_A85636: MemStStrCopy
  loc_A8563A: FFreeStr var_8C = ""
  loc_A85641: FFree1Ad var_88
  loc_A85644: FLdPr Me
  loc_A85647: MemLdStr global_80
  loc_A8564A: LitStr vbNullString
  loc_A8564D: NeStr
  loc_A8564F: BranchF loc_A85675
  loc_A85652: FLdPr Me
  loc_A85655: MemLdStr global_80
  loc_A85658: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8565D: FLdPr Me
  loc_A85660: VCallAd Control_ID_DetalleTxt
  loc_A85663: CVarAd
  loc_A85667: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8566C: FFree1Var var_A0 = ""
  loc_A8566F: LitI2_Byte &HFF
  loc_A85671: IStI2 Cancel
  loc_A85674: ExitProcHresult
  loc_A85675: ExitProcHresult
  loc_A85676: FLdPr arg_1460
End Sub

Private Sub PorcDescTxt_GotFocus() '9C52B8
  'Data Table: 50E08C
  loc_9C52A4: FLdPr Me
  loc_9C52A7: VCallAd Control_ID_PorcDescTxt
  loc_9C52AA: CVarAd
  loc_9C52AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C52B3: FFree1Var var_94 = ""
  loc_9C52B6: ExitProcHresult
End Sub

Private Sub PorcDescTxt_KeyPress(KeyAscii As Integer) 'A077E8
  'Data Table: 50E08C
  loc_A077B4: LitStr "1234567890,."
  loc_A077B7: FStStrCopy var_88
  loc_A077BA: FLdRfVar var_88
  loc_A077BD: ILdRf KeyAscii
  loc_A077C0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A077C5: IStI2 KeyAscii
  loc_A077C8: FFree1Str var_88
  loc_A077CB: ILdI2 KeyAscii
  loc_A077CE: LitStr "."
  loc_A077D1: ImpAdCallI2 Asc()
  loc_A077D6: EqI2
  loc_A077D7: BranchF loc_A077E5
  loc_A077DA: LitStr ","
  loc_A077DD: ImpAdCallI2 Asc()
  loc_A077E2: IStI2 KeyAscii
  loc_A077E5: ExitProcHresult
End Sub

Private Sub PorcDescTxt_LostFocus() 'AFAF00
  'Data Table: 50E08C
  loc_AFAD38: FLdRfVar var_8C
  loc_AFAD3B: FLdPr Me
  loc_AFAD3E: VCallAd Control_ID_TotaBoleTxt
  loc_AFAD41: FStAdFunc var_88
  loc_AFAD44: FLdPr var_88
  loc_AFAD47:  = Me.Text
  loc_AFAD4C: FLdZeroAd var_8C
  loc_AFAD4F: CVarStr var_9C
  loc_AFAD52: ImpAdCallI2 IsNumeric()
  loc_AFAD57: FLdRfVar var_A4
  loc_AFAD5A: FLdPr Me
  loc_AFAD5D: VCallAd Control_ID_PorcDescTxt
  loc_AFAD60: FStAdFunc var_A0
  loc_AFAD63: FLdPr var_A0
  loc_AFAD66:  = Me.Text
  loc_AFAD6B: FLdZeroAd var_A4
  loc_AFAD6E: CVarStr var_B4
  loc_AFAD71: ImpAdCallI2 IsNumeric()
  loc_AFAD76: AndI4
  loc_AFAD77: FFreeAd var_88 = ""
  loc_AFAD7E: FFreeVar var_9C = ""
  loc_AFAD85: BranchF loc_AFAEFC
  loc_AFAD88: FLdRfVar var_8C
  loc_AFAD8B: FLdPr Me
  loc_AFAD8E: VCallAd Control_ID_TotaBoleTxt
  loc_AFAD91: FStAdFunc var_88
  loc_AFAD94: FLdPr var_88
  loc_AFAD97:  = Me.Text
  loc_AFAD9C: FLdRfVar var_A4
  loc_AFAD9F: FLdPr Me
  loc_AFADA2: VCallAd Control_ID_PorcDescTxt
  loc_AFADA5: FStAdFunc var_A0
  loc_AFADA8: FLdPr var_A0
  loc_AFADAB:  = Me.Text
  loc_AFADB0: LitI4 1
  loc_AFADB5: LitI4 1
  loc_AFADBA: LitVarStr var_D4, "0.00"
  loc_AFADBF: FStVarCopyObj var_B4
  loc_AFADC2: FLdRfVar var_B4
  loc_AFADC5: ILdRf var_8C
  loc_AFADC8: CR8Str
  loc_AFADCA: ILdRf var_A4
  loc_AFADCD: CR8Str
  loc_AFADCF: MulR8
  loc_AFADD0: LitI2_Byte &H64
  loc_AFADD2: CR8I2
  loc_AFADD3: DivR8
  loc_AFADD4: CVarR8
  loc_AFADD8: FLdRfVar var_E4
  loc_AFADDB: ImpAdCallFPR4  = Format(, )
  loc_AFADE0: FLdRfVar var_E4
  loc_AFADE3: CStrVarVal var_E8
  loc_AFADE7: FLdPr Me
  loc_AFADEA: VCallAd Control_ID_DescBoleTxt
  loc_AFADED: FStAdFunc var_EC
  loc_AFADF0: FLdPr var_EC
  loc_AFADF3: Me.Text = from_stack_1
  loc_AFADF8: FFreeStr var_8C = "": var_A4 = ""
  loc_AFAE01: FFreeAd var_88 = "": var_A0 = ""
  loc_AFAE0A: FFreeVar var_9C = "": var_B4 = ""
  loc_AFAE13: FLdRfVar var_8C
  loc_AFAE16: FLdPr Me
  loc_AFAE19: VCallAd Control_ID_TotaBoleTxt
  loc_AFAE1C: FStAdFunc var_88
  loc_AFAE1F: FLdPr var_88
  loc_AFAE22:  = Me.Text
  loc_AFAE27: FLdRfVar var_A4
  loc_AFAE2A: FLdPr Me
  loc_AFAE2D: VCallAd Control_ID_DescBoleTxt
  loc_AFAE30: FStAdFunc var_A0
  loc_AFAE33: FLdPr var_A0
  loc_AFAE36:  = Me.Text
  loc_AFAE3B: LitI4 1
  loc_AFAE40: LitI4 1
  loc_AFAE45: LitVarStr var_D4, "0.00"
  loc_AFAE4A: FStVarCopyObj var_B4
  loc_AFAE4D: FLdRfVar var_B4
  loc_AFAE50: ILdRf var_8C
  loc_AFAE53: CR8Str
  loc_AFAE55: ILdRf var_A4
  loc_AFAE58: CR8Str
  loc_AFAE5A: SubR4
  loc_AFAE5B: CVarR8
  loc_AFAE5F: FLdRfVar var_E4
  loc_AFAE62: ImpAdCallFPR4  = Format(, )
  loc_AFAE67: FLdRfVar var_E4
  loc_AFAE6A: CStrVarVal var_E8
  loc_AFAE6E: FLdPr Me
  loc_AFAE71: VCallAd Control_ID_TotalTxt
  loc_AFAE74: FStAdFunc var_EC
  loc_AFAE77: FLdPr var_EC
  loc_AFAE7A: Me.Text = from_stack_1
  loc_AFAE7F: FFreeStr var_8C = "": var_A4 = ""
  loc_AFAE88: FFreeAd var_88 = "": var_A0 = ""
  loc_AFAE91: FFreeVar var_9C = "": var_B4 = ""
  loc_AFAE9A: FLdRfVar var_8C
  loc_AFAE9D: FLdPr Me
  loc_AFAEA0: VCallAd Control_ID_PorcDescTxt
  loc_AFAEA3: FStAdFunc var_88
  loc_AFAEA6: FLdPr var_88
  loc_AFAEA9:  = Me.Text
  loc_AFAEAE: LitI4 1
  loc_AFAEB3: LitI4 1
  loc_AFAEB8: LitVarStr var_C4, "0.00"
  loc_AFAEBD: FStVarCopyObj var_B4
  loc_AFAEC0: FLdRfVar var_B4
  loc_AFAEC3: FLdZeroAd var_8C
  loc_AFAEC6: CVarStr var_9C
  loc_AFAEC9: FLdRfVar var_E4
  loc_AFAECC: ImpAdCallFPR4  = Format(, )
  loc_AFAED1: FLdRfVar var_E4
  loc_AFAED4: CStrVarVal var_A4
  loc_AFAED8: FLdPr Me
  loc_AFAEDB: VCallAd Control_ID_PorcDescTxt
  loc_AFAEDE: FStAdFunc var_A0
  loc_AFAEE1: FLdPr var_A0
  loc_AFAEE4: Me.Text = from_stack_1
  loc_AFAEE9: FFree1Str var_A4
  loc_AFAEEC: FFreeAd var_88 = ""
  loc_AFAEF3: FFreeVar var_9C = "": var_B4 = ""
  loc_AFAEFC: ExitProcHresult
End Sub

Private Sub Form_Load() 'B9C878
  'Data Table: 50E08C
  loc_B9C310: LitStr "SELECT CucuPers, DetaPers, NudoPers, DecrPers, NurePers, DebrPers, MarePers, CarePers, UbrePers, DelrPers, CoprPers FROM infogov.persona WHERE CucuPers = 0 ORDER BY CucuPers"
  loc_B9C313: FLdPr Me
  loc_B9C316: MemLdRfVar from_stack_1.global_56
  loc_B9C319: NewIfNullPr clspersonas
  loc_B9C31C: Call clspersonas.RedefineRS(from_stack_1v)
  loc_B9C321: Call Proc_280_27_AF2EE8()
  loc_B9C326: LitI2_Byte 0
  loc_B9C328: FLdPr Me
  loc_B9C32B: VCallAd Control_ID_DuplicadoChk
  loc_B9C32E: FStAdFunc var_88
  loc_B9C331: FLdPr var_88
  loc_B9C334: Me.Value = from_stack_1
  loc_B9C339: FFree1Ad var_88
  loc_B9C33C: LitStr "Municipalidad de Guaymallén"
  loc_B9C33F: LitStr "Municipalidad de Rivadavia"
  loc_B9C342: EqStr
  loc_B9C344: BranchF loc_B9C376
  loc_B9C347: LitI2_Byte &HFF
  loc_B9C349: FLdPr Me
  loc_B9C34C: VCallAd Control_ID_RedondeoChk
  loc_B9C34F: FStAdFunc var_88
  loc_B9C352: FLdPr var_88
  loc_B9C355: Me.Visible = from_stack_1b
  loc_B9C35A: FFree1Ad var_88
  loc_B9C35D: LitI2_Byte 1
  loc_B9C35F: FLdPr Me
  loc_B9C362: VCallAd Control_ID_RedondeoChk
  loc_B9C365: FStAdFunc var_88
  loc_B9C368: FLdPr var_88
  loc_B9C36B: Me.Value = from_stack_1
  loc_B9C370: FFree1Ad var_88
  loc_B9C373: Branch loc_B9C38C
  loc_B9C376: LitI2_Byte 0
  loc_B9C378: FLdPr Me
  loc_B9C37B: VCallAd Control_ID_RedondeoChk
  loc_B9C37E: FStAdFunc var_88
  loc_B9C381: FLdPr var_88
  loc_B9C384: Me.Visible = from_stack_1b
  loc_B9C389: FFree1Ad var_88
  loc_B9C38C: ImpAdLdI4 MemVar_D9302C
  loc_B9C38F: ImpAdCallI2 Proc_270_90_A7E070()
  loc_B9C394: FLdPr Me
  loc_B9C397: MemStI2 global_100
  loc_B9C39A: LitStr "CucuPers"
  loc_B9C39D: FLdPr Me
  loc_B9C3A0: VCallAd Control_ID_CucuPersLbl
  loc_B9C3A3: FStAdFunc var_88
  loc_B9C3A6: FLdPr var_88
  loc_B9C3A9: Me.DataField = from_stack_1
  loc_B9C3AE: FFree1Ad var_88
  loc_B9C3B1: LitStr "DetaPers"
  loc_B9C3B4: FLdPr Me
  loc_B9C3B7: VCallAd Control_ID_DetaPersLbl
  loc_B9C3BA: FStAdFunc var_88
  loc_B9C3BD: FLdPr var_88
  loc_B9C3C0: Me.DataField = from_stack_1
  loc_B9C3C5: FFree1Ad var_88
  loc_B9C3C8: LitStr "DecrPers"
  loc_B9C3CB: FLdPr Me
  loc_B9C3CE: VCallAd Control_ID_DecrPersLbl
  loc_B9C3D1: FStAdFunc var_88
  loc_B9C3D4: FLdPr var_88
  loc_B9C3D7: Me.DataField = from_stack_1
  loc_B9C3DC: FFree1Ad var_88
  loc_B9C3DF: LitStr "NurePers"
  loc_B9C3E2: FLdPr Me
  loc_B9C3E5: VCallAd Control_ID_NupoPersLbl
  loc_B9C3E8: FStAdFunc var_88
  loc_B9C3EB: FLdPr var_88
  loc_B9C3EE: Me.DataField = from_stack_1
  loc_B9C3F3: FFree1Ad var_88
  loc_B9C3F6: LitStr "DebrPers"
  loc_B9C3F9: FLdPr Me
  loc_B9C3FC: VCallAd Control_ID_DebrPersLbl
  loc_B9C3FF: FStAdFunc var_88
  loc_B9C402: FLdPr var_88
  loc_B9C405: Me.DataField = from_stack_1
  loc_B9C40A: FFree1Ad var_88
  loc_B9C40D: LitStr "MarePers"
  loc_B9C410: FLdPr Me
  loc_B9C413: VCallAd Control_ID_MarePersLbl
  loc_B9C416: FStAdFunc var_88
  loc_B9C419: FLdPr var_88
  loc_B9C41C: Me.DataField = from_stack_1
  loc_B9C421: FFree1Ad var_88
  loc_B9C424: LitStr "CarePers"
  loc_B9C427: FLdPr Me
  loc_B9C42A: VCallAd Control_ID_CarePersLbl
  loc_B9C42D: FStAdFunc var_88
  loc_B9C430: FLdPr var_88
  loc_B9C433: Me.DataField = from_stack_1
  loc_B9C438: FFree1Ad var_88
  loc_B9C43B: LitStr "UbrePers"
  loc_B9C43E: FLdPr Me
  loc_B9C441: VCallAd Control_ID_UbrePersLbl
  loc_B9C444: FStAdFunc var_88
  loc_B9C447: FLdPr var_88
  loc_B9C44A: Me.DataField = from_stack_1
  loc_B9C44F: FFree1Ad var_88
  loc_B9C452: LitStr "DelrPers"
  loc_B9C455: FLdPr Me
  loc_B9C458: VCallAd Control_ID_DelrPersLbl
  loc_B9C45B: FStAdFunc var_88
  loc_B9C45E: FLdPr var_88
  loc_B9C461: Me.DataField = from_stack_1
  loc_B9C466: FFree1Ad var_88
  loc_B9C469: LitStr "CoprPers"
  loc_B9C46C: FLdPr Me
  loc_B9C46F: VCallAd Control_ID_CoprPersLbl
  loc_B9C472: FStAdFunc var_88
  loc_B9C475: FLdPr var_88
  loc_B9C478: Me.DataField = from_stack_1
  loc_B9C47D: FFree1Ad var_88
  loc_B9C480: LitI2_Byte 0
  loc_B9C482: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B9C487: CStrDate
  loc_B9C489: CVarStr var_98
  loc_B9C48C: PopAdLdVar
  loc_B9C48D: FLdPr Me
  loc_B9C490: VCallAd Control_ID_FeveCtctMsk
  loc_B9C493: FStAdFunc var_88
  loc_B9C496: FLdPr var_88
  loc_B9C499: LateIdSt
  loc_B9C49E: FFree1Ad var_88
  loc_B9C4A1: FFree1Var var_98 = ""
  loc_B9C4A4: LitI4 0
  loc_B9C4A9: LitI4 1
  loc_B9C4AE: FLdRfVar var_AC
  loc_B9C4B1: Redim
  loc_B9C4BB: FLdPr Me
  loc_B9C4BE: MemLdRfVar from_stack_1.global_56
  loc_B9C4C1: NewIfNullAd
  loc_B9C4C4: FStAd var_88 
  loc_B9C4C8: FLdRfVar var_88
  loc_B9C4CB: CVarRef
  loc_B9C4D0: ParmAry1St
  loc_B9C4D6: FLdPr Me
  loc_B9C4D9: VCallAd Control_ID_dgdPersona
  loc_B9C4DC: CVarAd
  loc_B9C4E0: ParmAry1St
  loc_B9C4E6: FLdRfVar var_AC
  loc_B9C4E9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B9C4EE: ILdRf var_88
  loc_B9C4F1: CastAd
  loc_B9C4F4: FLdPr Me
  loc_B9C4F7: MemStAdFunc
  loc_B9C4FB: FLdRfVar var_AC
  loc_B9C4FE: Erase
  loc_B9C4FF: FFree1Ad var_88
  loc_B9C502: FLdPr Me
  loc_B9C505: MemLdRfVar from_stack_1.global_56
  loc_B9C508: NewIfNullAd
  loc_B9C50B: FStAd var_B0 
  loc_B9C50F: FLdRfVar var_B0
  loc_B9C512: CVarRef
  loc_B9C517: ILdRf Me
  loc_B9C51A: CastAd
  loc_B9C51D: FStAdFunc var_88
  loc_B9C520: FLdRfVar var_88
  loc_B9C523: ImpAdCallFPR4  = Proc_272_14_A8F45C()
  loc_B9C528: ILdRf var_B0
  loc_B9C52B: CastAd
  loc_B9C52E: FLdPr Me
  loc_B9C531: MemStAdFunc
  loc_B9C535: FFreeAd var_88 = ""
  loc_B9C53C: FLdPr Me
  loc_B9C53F: VCallAd Control_ID_ServDevaFlex
  loc_B9C542: FStAdFunc var_B4
  loc_B9C545: LitVarI4
  loc_B9C54D: PopAdLdVar
  loc_B9C54E: LitVarI4
  loc_B9C556: PopAdLdVar
  loc_B9C557: FLdPr var_B4
  loc_B9C55A: LateIdCallSt
  loc_B9C562: LitVarI4
  loc_B9C56A: PopAdLdVar
  loc_B9C56B: LitVarI4
  loc_B9C573: PopAdLdVar
  loc_B9C574: FLdPr var_B4
  loc_B9C577: LateIdCallSt
  loc_B9C57F: LitVarI4
  loc_B9C587: PopAdLdVar
  loc_B9C588: LitVarI4
  loc_B9C590: PopAdLdVar
  loc_B9C591: FLdPr var_B4
  loc_B9C594: LateIdCallSt
  loc_B9C59C: LitVarI4
  loc_B9C5A4: PopAdLdVar
  loc_B9C5A5: LitVarI4
  loc_B9C5AD: PopAdLdVar
  loc_B9C5AE: FLdPr var_B4
  loc_B9C5B1: LateIdCallSt
  loc_B9C5B9: LitVarI4
  loc_B9C5C1: PopAdLdVar
  loc_B9C5C2: LitVarI4
  loc_B9C5CA: PopAdLdVar
  loc_B9C5CB: FLdPr var_B4
  loc_B9C5CE: LateIdCallSt
  loc_B9C5D6: LitVarI4
  loc_B9C5DE: PopAdLdVar
  loc_B9C5DF: LitVarI4
  loc_B9C5E7: PopAdLdVar
  loc_B9C5E8: FLdPr var_B4
  loc_B9C5EB: LateIdCallSt
  loc_B9C5F3: LitVarI4
  loc_B9C5FB: PopAdLdVar
  loc_B9C5FC: LitVarI4
  loc_B9C604: PopAdLdVar
  loc_B9C605: FLdPr var_B4
  loc_B9C608: LateIdCallSt
  loc_B9C610: LitVarI4
  loc_B9C618: PopAdLdVar
  loc_B9C619: LitVarI4
  loc_B9C621: PopAdLdVar
  loc_B9C622: FLdPr var_B4
  loc_B9C625: LateIdCallSt
  loc_B9C62D: LitVarI4
  loc_B9C635: PopAdLdVar
  loc_B9C636: LitVarI4
  loc_B9C63E: PopAdLdVar
  loc_B9C63F: LitVarStr var_F4, "Cant."
  loc_B9C644: PopAdLdVar
  loc_B9C645: FLdPr var_B4
  loc_B9C648: LateIdCallSt
  loc_B9C650: LitVarI4
  loc_B9C658: PopAdLdVar
  loc_B9C659: LitVarI4
  loc_B9C661: PopAdLdVar
  loc_B9C662: LitVarStr var_F4, "Cod."
  loc_B9C667: PopAdLdVar
  loc_B9C668: FLdPr var_B4
  loc_B9C66B: LateIdCallSt
  loc_B9C673: LitVarI4
  loc_B9C67B: PopAdLdVar
  loc_B9C67C: LitVarI4
  loc_B9C684: PopAdLdVar
  loc_B9C685: LitVarStr var_F4, "Detalle o Servicio"
  loc_B9C68A: PopAdLdVar
  loc_B9C68B: FLdPr var_B4
  loc_B9C68E: LateIdCallSt
  loc_B9C696: LitVarI4
  loc_B9C69E: PopAdLdVar
  loc_B9C69F: LitVarI4
  loc_B9C6A7: PopAdLdVar
  loc_B9C6A8: LitVarStr var_F4, "Importe"
  loc_B9C6AD: PopAdLdVar
  loc_B9C6AE: FLdPr var_B4
  loc_B9C6B1: LateIdCallSt
  loc_B9C6B9: LitVarI4
  loc_B9C6C1: PopAdLdVar
  loc_B9C6C2: LitVarI4
  loc_B9C6CA: PopAdLdVar
  loc_B9C6CB: LitVarStr var_F4, "Total"
  loc_B9C6D0: PopAdLdVar
  loc_B9C6D1: FLdPr var_B4
  loc_B9C6D4: LateIdCallSt
  loc_B9C6DC: LitVarI4
  loc_B9C6E4: PopAdLdVar
  loc_B9C6E5: LitVarI4
  loc_B9C6ED: PopAdLdVar
  loc_B9C6EE: LitVarStr var_F4, "Periodo"
  loc_B9C6F3: PopAdLdVar
  loc_B9C6F4: FLdPr var_B4
  loc_B9C6F7: LateIdCallSt
  loc_B9C6FF: LitVarI4
  loc_B9C707: PopAdLdVar
  loc_B9C708: LitVarI4
  loc_B9C710: PopAdLdVar
  loc_B9C711: LitVarStr var_F4, "Concepto"
  loc_B9C716: PopAdLdVar
  loc_B9C717: FLdPr var_B4
  loc_B9C71A: LateIdCallSt
  loc_B9C722: LitVarI4
  loc_B9C72A: PopAdLdVar
  loc_B9C72B: LitVarI4
  loc_B9C733: PopAdLdVar
  loc_B9C734: LitVarStr var_F4, "Fij0"
  loc_B9C739: PopAdLdVar
  loc_B9C73A: FLdPr var_B4
  loc_B9C73D: LateIdCallSt
  loc_B9C745: LitNothing
  loc_B9C747: FStAd var_B4 
  loc_B9C74B: LitVarStr var_A8, vbNullString
  loc_B9C750: LitI4 9
  loc_B9C755: FLdRfVar var_98
  loc_B9C758: ImpAdCallFPR4  = Chr()
  loc_B9C75D: FLdRfVar var_98
  loc_B9C760: ConcatVar var_114
  loc_B9C764: LitVarStr var_C4, vbNullString
  loc_B9C769: ConcatVar var_124
  loc_B9C76D: LitI4 9
  loc_B9C772: FLdRfVar var_134
  loc_B9C775: ImpAdCallFPR4  = Chr()
  loc_B9C77A: FLdRfVar var_134
  loc_B9C77D: ConcatVar var_144
  loc_B9C781: LitVarStr var_D4, vbNullString
  loc_B9C786: ConcatVar var_154
  loc_B9C78A: LitI4 9
  loc_B9C78F: FLdRfVar var_164
  loc_B9C792: ImpAdCallFPR4  = Chr()
  loc_B9C797: FLdRfVar var_164
  loc_B9C79A: ConcatVar var_174
  loc_B9C79E: LitVarStr var_E4, vbNullString
  loc_B9C7A3: ConcatVar var_184
  loc_B9C7A7: LitI4 9
  loc_B9C7AC: FLdRfVar var_194
  loc_B9C7AF: ImpAdCallFPR4  = Chr()
  loc_B9C7B4: FLdRfVar var_194
  loc_B9C7B7: ConcatVar var_1A4
  loc_B9C7BB: LitVarStr var_F4, vbNullString
  loc_B9C7C0: ConcatVar var_1B4
  loc_B9C7C4: LitI4 9
  loc_B9C7C9: FLdRfVar var_1C4
  loc_B9C7CC: ImpAdCallFPR4  = Chr()
  loc_B9C7D1: FLdRfVar var_1C4
  loc_B9C7D4: ConcatVar var_1D4
  loc_B9C7D8: LitVarStr var_104, vbNullString
  loc_B9C7DD: ConcatVar var_1E4
  loc_B9C7E1: LitI4 9
  loc_B9C7E6: FLdRfVar var_1F4
  loc_B9C7E9: ImpAdCallFPR4  = Chr()
  loc_B9C7EE: FLdRfVar var_1F4
  loc_B9C7F1: ConcatVar var_204
  loc_B9C7F5: LitVarStr var_214, vbNullString
  loc_B9C7FA: ConcatVar var_224
  loc_B9C7FE: LitI4 9
  loc_B9C803: FLdRfVar var_234
  loc_B9C806: ImpAdCallFPR4  = Chr()
  loc_B9C80B: FLdRfVar var_234
  loc_B9C80E: ConcatVar var_244
  loc_B9C812: LitVarStr var_254, "0"
  loc_B9C817: ConcatVar var_264
  loc_B9C81B: CStrVarTmp
  loc_B9C81C: FStStrNoPop var_268
  loc_B9C81F: FLdPr Me
  loc_B9C822: MemStStrCopy
  loc_B9C826: FFree1Str var_268
  loc_B9C829: FFreeVar var_98 = "": var_114 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_234 = "": var_244 = ""
  loc_B9C856: FLdPr Me
  loc_B9C859: MemLdRfVar from_stack_1.global_76
  loc_B9C85C: CDargRef
  loc_B9C860: FLdPr Me
  loc_B9C863: VCallAd Control_ID_ServDevaFlex
  loc_B9C866: FStAdFunc var_88
  loc_B9C869: FLdPr var_88
  loc_B9C86C: LateIdCall
  loc_B9C874: FFree1Ad var_88
  loc_B9C877: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9CCDBC
  'Data Table: 50E08C
  loc_9CCDA4: ILdI2 KeyAscii
  loc_9CCDA7: LitI2_Byte &HD
  loc_9CCDA9: EqI2
  loc_9CCDAA: BranchF loc_9CCDBB
  loc_9CCDAD: LitVar_TRUE var_A4
  loc_9CCDB0: LitStr "{Tab}"
  loc_9CCDB3: ImpAdCallFPR4 SendKeys , 
  loc_9CCDB8: FFree1Var var_A4 = ""
  loc_9CCDBB: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB0FC
  'Data Table: 50E08C
  loc_9BB0E8: ILdI2 KeyCode
  loc_9BB0EB: CI4UI1
  loc_9BB0EC: LitI4 &H78
  loc_9BB0F1: EqI4
  loc_9BB0F2: BranchF loc_9BB0FA
  loc_9BB0F5: Call SalirCmd_Click()
  loc_9BB0FA: ExitProcHresult
  loc_9BB0FB: PopAdLdVar
End Sub

Private Sub SalirCmd_Click() '9CCA2C
  'Data Table: 50E08C
  loc_9CCA14: ILdRf Me
  loc_9CCA17: FStAdNoPop
  loc_9CCA1B: ImpAdLdRf MemVar_D9C5D8
  loc_9CCA1E: NewIfNullPr Global
  loc_9CCA21: Global.Unload from_stack_1
  loc_9CCA26: FFree1Ad var_88
  loc_9CCA29: ExitProcHresult
End Sub

Private Sub DescuentoChk_Click() 'B0AFA0
  'Data Table: 50E08C
  loc_B0AD7C: FLdRfVar var_8A
  loc_B0AD7F: FLdPr Me
  loc_B0AD82: VCallAd Control_ID_DescuentoChk
  loc_B0AD85: FStAdFunc var_88
  loc_B0AD88: FLdPr var_88
  loc_B0AD8B:  = Me.Value
  loc_B0AD90: FLdI2 var_8A
  loc_B0AD93: LitI2_Byte 0
  loc_B0AD95: EqI2
  loc_B0AD96: FFree1Ad var_88
  loc_B0AD99: BranchF loc_B0AE9F
  loc_B0AD9C: LitI2_Byte 0
  loc_B0AD9E: FLdPr Me
  loc_B0ADA1: VCallAd Control_ID_PorcDescTxt
  loc_B0ADA4: FStAdFunc var_88
  loc_B0ADA7: FLdPr var_88
  loc_B0ADAA: Me.Visible = from_stack_1b
  loc_B0ADAF: FFree1Ad var_88
  loc_B0ADB2: LitI2_Byte 0
  loc_B0ADB4: FLdPr Me
  loc_B0ADB7: VCallAd Control_ID_DescBoleLbl
  loc_B0ADBA: FStAdFunc var_88
  loc_B0ADBD: FLdPr var_88
  loc_B0ADC0: Me.Visible = from_stack_1b
  loc_B0ADC5: FFree1Ad var_88
  loc_B0ADC8: LitI2_Byte 0
  loc_B0ADCA: FLdPr Me
  loc_B0ADCD: VCallAd Control_ID_DescBoleTxt
  loc_B0ADD0: FStAdFunc var_88
  loc_B0ADD3: FLdPr var_88
  loc_B0ADD6: Me.Visible = from_stack_1b
  loc_B0ADDB: FFree1Ad var_88
  loc_B0ADDE: LitI2_Byte 0
  loc_B0ADE0: FLdPr Me
  loc_B0ADE3: VCallAd Control_ID_TotalLbl
  loc_B0ADE6: FStAdFunc var_88
  loc_B0ADE9: FLdPr var_88
  loc_B0ADEC: Me.Visible = from_stack_1b
  loc_B0ADF1: FFree1Ad var_88
  loc_B0ADF4: LitI2_Byte 0
  loc_B0ADF6: FLdPr Me
  loc_B0ADF9: VCallAd Control_ID_TotalTxt
  loc_B0ADFC: FStAdFunc var_88
  loc_B0ADFF: FLdPr var_88
  loc_B0AE02: Me.Visible = from_stack_1b
  loc_B0AE07: FFree1Ad var_88
  loc_B0AE0A: LitI4 1
  loc_B0AE0F: LitI4 1
  loc_B0AE14: LitVarStr var_BC, "0.00"
  loc_B0AE19: FStVarCopyObj var_CC
  loc_B0AE1C: FLdRfVar var_CC
  loc_B0AE1F: LitVarI2 var_AC, 0
  loc_B0AE24: FLdRfVar var_DC
  loc_B0AE27: ImpAdCallFPR4  = Format(, )
  loc_B0AE2C: FLdRfVar var_DC
  loc_B0AE2F: CStrVarVal var_E0
  loc_B0AE33: FLdPr Me
  loc_B0AE36: VCallAd Control_ID_DescBoleTxt
  loc_B0AE39: FStAdFunc var_88
  loc_B0AE3C: FLdPr var_88
  loc_B0AE3F: Me.Text = from_stack_1
  loc_B0AE44: FFree1Str var_E0
  loc_B0AE47: FFree1Ad var_88
  loc_B0AE4A: FFreeVar var_AC = "": var_CC = ""
  loc_B0AE53: LitI4 1
  loc_B0AE58: LitI4 1
  loc_B0AE5D: LitVarStr var_BC, "0.00"
  loc_B0AE62: FStVarCopyObj var_CC
  loc_B0AE65: FLdRfVar var_CC
  loc_B0AE68: LitVarI2 var_AC, 0
  loc_B0AE6D: FLdRfVar var_DC
  loc_B0AE70: ImpAdCallFPR4  = Format(, )
  loc_B0AE75: FLdRfVar var_DC
  loc_B0AE78: CStrVarVal var_E0
  loc_B0AE7C: FLdPr Me
  loc_B0AE7F: VCallAd Control_ID_PorcDescTxt
  loc_B0AE82: FStAdFunc var_88
  loc_B0AE85: FLdPr var_88
  loc_B0AE88: Me.Text = from_stack_1
  loc_B0AE8D: FFree1Str var_E0
  loc_B0AE90: FFree1Ad var_88
  loc_B0AE93: FFreeVar var_AC = "": var_CC = ""
  loc_B0AE9C: Branch loc_B0AF9F
  loc_B0AE9F: LitI2_Byte &HFF
  loc_B0AEA1: FLdPr Me
  loc_B0AEA4: VCallAd Control_ID_PorcDescTxt
  loc_B0AEA7: FStAdFunc var_88
  loc_B0AEAA: FLdPr var_88
  loc_B0AEAD: Me.Visible = from_stack_1b
  loc_B0AEB2: FFree1Ad var_88
  loc_B0AEB5: LitI2_Byte &HFF
  loc_B0AEB7: FLdPr Me
  loc_B0AEBA: VCallAd Control_ID_DescBoleLbl
  loc_B0AEBD: FStAdFunc var_88
  loc_B0AEC0: FLdPr var_88
  loc_B0AEC3: Me.Visible = from_stack_1b
  loc_B0AEC8: FFree1Ad var_88
  loc_B0AECB: LitI2_Byte &HFF
  loc_B0AECD: FLdPr Me
  loc_B0AED0: VCallAd Control_ID_DescBoleTxt
  loc_B0AED3: FStAdFunc var_88
  loc_B0AED6: FLdPr var_88
  loc_B0AED9: Me.Visible = from_stack_1b
  loc_B0AEDE: FFree1Ad var_88
  loc_B0AEE1: LitI2_Byte &HFF
  loc_B0AEE3: FLdPr Me
  loc_B0AEE6: VCallAd Control_ID_TotalLbl
  loc_B0AEE9: FStAdFunc var_88
  loc_B0AEEC: FLdPr var_88
  loc_B0AEEF: Me.Visible = from_stack_1b
  loc_B0AEF4: FFree1Ad var_88
  loc_B0AEF7: LitI2_Byte &HFF
  loc_B0AEF9: FLdPr Me
  loc_B0AEFC: VCallAd Control_ID_TotalTxt
  loc_B0AEFF: FStAdFunc var_88
  loc_B0AF02: FLdPr var_88
  loc_B0AF05: Me.Visible = from_stack_1b
  loc_B0AF0A: FFree1Ad var_88
  loc_B0AF0D: LitI4 1
  loc_B0AF12: LitI4 1
  loc_B0AF17: LitVarStr var_BC, "0.00"
  loc_B0AF1C: FStVarCopyObj var_CC
  loc_B0AF1F: FLdRfVar var_CC
  loc_B0AF22: LitVarI2 var_AC, 0
  loc_B0AF27: FLdRfVar var_DC
  loc_B0AF2A: ImpAdCallFPR4  = Format(, )
  loc_B0AF2F: FLdRfVar var_DC
  loc_B0AF32: CStrVarVal var_E0
  loc_B0AF36: FLdPr Me
  loc_B0AF39: VCallAd Control_ID_DescBoleTxt
  loc_B0AF3C: FStAdFunc var_88
  loc_B0AF3F: FLdPr var_88
  loc_B0AF42: Me.Text = from_stack_1
  loc_B0AF47: FFree1Str var_E0
  loc_B0AF4A: FFree1Ad var_88
  loc_B0AF4D: FFreeVar var_AC = "": var_CC = ""
  loc_B0AF56: LitI4 1
  loc_B0AF5B: LitI4 1
  loc_B0AF60: LitVarStr var_BC, "0.00"
  loc_B0AF65: FStVarCopyObj var_CC
  loc_B0AF68: FLdRfVar var_CC
  loc_B0AF6B: LitVarI2 var_AC, 0
  loc_B0AF70: FLdRfVar var_DC
  loc_B0AF73: ImpAdCallFPR4  = Format(, )
  loc_B0AF78: FLdRfVar var_DC
  loc_B0AF7B: CStrVarVal var_E0
  loc_B0AF7F: FLdPr Me
  loc_B0AF82: VCallAd Control_ID_PorcDescTxt
  loc_B0AF85: FStAdFunc var_88
  loc_B0AF88: FLdPr var_88
  loc_B0AF8B: Me.Text = from_stack_1
  loc_B0AF90: FFree1Str var_E0
  loc_B0AF93: FFree1Ad var_88
  loc_B0AF96: FFreeVar var_AC = "": var_CC = ""
  loc_B0AF9F: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click(arg_14) 'CF2704
  'Data Table: 50E08C
  loc_CEF864: LitI2_Byte 0
  loc_CEF866: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CEF86B: CVarDate var_DC
  loc_CEF86F: FLdRfVar var_EC
  loc_CEF872: ImpAdCallFPR4  = Year()
  loc_CEF877: FLdRfVar var_EC
  loc_CEF87A: CI2Var
  loc_CEF87B: FStI2 var_9E
  loc_CEF87E: FFreeVar var_DC = ""
  loc_CEF885: LitI2_Byte 0
  loc_CEF887: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CEF88C: CVarDate var_DC
  loc_CEF890: FLdRfVar var_EC
  loc_CEF893: ImpAdCallFPR4  = Month()
  loc_CEF898: FLdRfVar var_EC
  loc_CEF89B: CI2Var
  loc_CEF89C: FStI2 var_A0
  loc_CEF89F: FFreeVar var_DC = ""
  loc_CEF8A6: LitStr vbNullString
  loc_CEF8A9: FLdPr Me
  loc_CEF8AC: MemStStrCopy
  loc_CEF8B0: FLdRfVar var_F0
  loc_CEF8B3: FLdPr Me
  loc_CEF8B6: MemLdRfVar from_stack_1.global_56
  loc_CEF8B9: NewIfNullPr clspersonas
  loc_CEF8BC: from_stack_1 = clspersonas.RecordCount
  loc_CEF8C1: ILdRf var_F0
  loc_CEF8C4: LitI4 0
  loc_CEF8C9: EqI4
  loc_CEF8CA: BranchF loc_CEF8D6
  loc_CEF8CD: LitStr "No existe ningún contribuyente para emitir el boleto. Verifique..."
  loc_CEF8D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CEF8D5: ExitProcHresult
  loc_CEF8D6: LitI2_Byte 0
  loc_CEF8D8: PopTmpLdAd2 var_F2
  loc_CEF8DB: from_stack_2v = FeveCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_CEF8E0: FLdPr Me
  loc_CEF8E3: MemLdStr global_80
  loc_CEF8E6: LitStr vbNullString
  loc_CEF8E9: NeStr
  loc_CEF8EB: BranchF loc_CEF8EF
  loc_CEF8EE: ExitProcHresult
  loc_CEF8EF: LitI2_Byte 0
  loc_CEF8F1: PopTmpLdAd2 var_F2
  loc_CEF8F4: Call ServDevaFlex_UnknownEvent_8()
  loc_CEF8F9: FLdPr Me
  loc_CEF8FC: MemLdStr global_80
  loc_CEF8FF: LitStr vbNullString
  loc_CEF902: NeStr
  loc_CEF904: BranchF loc_CEF908
  loc_CEF907: ExitProcHresult
  loc_CEF908: LitI2_Byte 0
  loc_CEF90A: PopTmpLdAd2 var_F2
  loc_CEF90D: Call DetalleTxt_Validate(from_stack_1v)
  loc_CEF912: FLdPr Me
  loc_CEF915: MemLdStr global_80
  loc_CEF918: LitStr vbNullString
  loc_CEF91B: NeStr
  loc_CEF91D: BranchF loc_CEF921
  loc_CEF920: ExitProcHresult
  loc_CEF921: LitStr "Municipalidad de Guaymallén"
  loc_CEF924: LitStr "Municipalidad de Rivadavia"
  loc_CEF927: EqStr
  loc_CEF929: FLdRfVar var_F2
  loc_CEF92C: FLdPr Me
  loc_CEF92F: VCallAd Control_ID_RedondeoChk
  loc_CEF932: FStAdFunc var_F8
  loc_CEF935: FLdPr var_F8
  loc_CEF938:  = Me.Value
  loc_CEF93D: FLdI2 var_F2
  loc_CEF940: LitI2_Byte 1
  loc_CEF942: EqI2
  loc_CEF943: AndI4
  loc_CEF944: FFree1Ad var_F8
  loc_CEF947: BranchF loc_CF034E
  loc_CEF94A: FLdPr Me
  loc_CEF94D: MemLdFPR8 global_92
  loc_CEF950: LitI2_Byte 0
  loc_CEF952: CR8I2
  loc_CEF953: GtR4
  loc_CEF954: BranchF loc_CF034E
  loc_CEF957: LitVarStr var_CC, vbNullString
  loc_CEF95C: LitI4 9
  loc_CEF961: FLdRfVar var_DC
  loc_CEF964: ImpAdCallFPR4  = Chr()
  loc_CEF969: FLdRfVar var_DC
  loc_CEF96C: ConcatVar var_EC
  loc_CEF970: LitVarStr var_108, vbNullString
  loc_CEF975: ConcatVar var_118
  loc_CEF979: LitI4 9
  loc_CEF97E: FLdRfVar var_128
  loc_CEF981: ImpAdCallFPR4  = Chr()
  loc_CEF986: FLdRfVar var_128
  loc_CEF989: ConcatVar var_138
  loc_CEF98D: LitVarStr var_148, vbNullString
  loc_CEF992: ConcatVar var_158
  loc_CEF996: LitI4 9
  loc_CEF99B: FLdRfVar var_168
  loc_CEF99E: ImpAdCallFPR4  = Chr()
  loc_CEF9A3: FLdRfVar var_168
  loc_CEF9A6: ConcatVar var_178
  loc_CEF9AA: LitVarStr var_188, vbNullString
  loc_CEF9AF: ConcatVar var_198
  loc_CEF9B3: LitI4 9
  loc_CEF9B8: FLdRfVar var_1A8
  loc_CEF9BB: ImpAdCallFPR4  = Chr()
  loc_CEF9C0: FLdRfVar var_1A8
  loc_CEF9C3: ConcatVar var_1B8
  loc_CEF9C7: LitVarStr var_1C8, vbNullString
  loc_CEF9CC: ConcatVar var_1D8
  loc_CEF9D0: LitI4 9
  loc_CEF9D5: FLdRfVar var_1E8
  loc_CEF9D8: ImpAdCallFPR4  = Chr()
  loc_CEF9DD: FLdRfVar var_1E8
  loc_CEF9E0: ConcatVar var_1F8
  loc_CEF9E4: LitVarStr var_208, vbNullString
  loc_CEF9E9: ConcatVar var_218
  loc_CEF9ED: LitI4 9
  loc_CEF9F2: FLdRfVar var_228
  loc_CEF9F5: ImpAdCallFPR4  = Chr()
  loc_CEF9FA: FLdRfVar var_228
  loc_CEF9FD: ConcatVar var_238
  loc_CEFA01: LitVarStr var_248, vbNullString
  loc_CEFA06: ConcatVar var_258
  loc_CEFA0A: LitI4 9
  loc_CEFA0F: FLdRfVar var_268
  loc_CEFA12: ImpAdCallFPR4  = Chr()
  loc_CEFA17: FLdRfVar var_268
  loc_CEFA1A: ConcatVar var_278
  loc_CEFA1E: LitVarStr var_288, "0"
  loc_CEFA23: ConcatVar var_298
  loc_CEFA27: CStrVarTmp
  loc_CEFA28: FStStrNoPop var_29C
  loc_CEFA2B: FLdPr Me
  loc_CEFA2E: MemStStrCopy
  loc_CEFA32: FFree1Str var_29C
  loc_CEFA35: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = "": var_138 = "": var_158 = "": var_168 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = ""
  loc_CEFA62: FLdPr Me
  loc_CEFA65: MemLdRfVar from_stack_1.global_76
  loc_CEFA68: CDargRef
  loc_CEFA6C: FLdPr Me
  loc_CEFA6F: VCallAd Control_ID_ServDevaFlex
  loc_CEFA72: FStAdFunc var_F8
  loc_CEFA75: FLdPr var_F8
  loc_CEFA78: LateIdCall
  loc_CEFA80: FFree1Ad var_F8
  loc_CEFA83: FLdPr Me
  loc_CEFA86: VCallAd Control_ID_ServDevaFlex
  loc_CEFA89: FStAdFunc var_F8
  loc_CEFA8C: FLdPr var_F8
  loc_CEFA8F: LateIdLdVar var_DC DispID_10 0
  loc_CEFA96: CI4Var
  loc_CEFA98: LitI4 1
  loc_CEFA9D: AddI4
  loc_CEFA9E: CVarI4
  loc_CEFAA2: PopAdLdVar
  loc_CEFAA3: FLdPr Me
  loc_CEFAA6: VCallAd Control_ID_ServDevaFlex
  loc_CEFAA9: FStAdFunc var_2A0
  loc_CEFAAC: FLdPr var_2A0
  loc_CEFAAF: LateIdSt
  loc_CEFAB4: FFreeAd var_F8 = ""
  loc_CEFABB: FFree1Var var_DC = ""
  loc_CEFABE: LitVarI4
  loc_CEFAC6: PopAdLdVar
  loc_CEFAC7: FLdPr Me
  loc_CEFACA: VCallAd Control_ID_ServDevaFlex
  loc_CEFACD: FStAdFunc var_F8
  loc_CEFAD0: FLdPr var_F8
  loc_CEFAD3: LateIdSt
  loc_CEFAD8: FFree1Ad var_F8
  loc_CEFADB: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, PeriInfo, CodiConc, VariSede FROM servdeva "
  loc_CEFADE: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CEFAE1: ConcatStr
  loc_CEFAE2: FStStrNoPop var_29C
  loc_CEFAE5: LitStr " WHERE servdeva.PeriOrde = "
  loc_CEFAE8: ConcatStr
  loc_CEFAE9: FStStrNoPop var_2A4
  loc_CEFAEC: ImpAdLdI2 MemVar_D93036
  loc_CEFAEF: CStrUI1
  loc_CEFAF1: FStStrNoPop var_2A8
  loc_CEFAF4: ConcatStr
  loc_CEFAF5: FStStrNoPop var_2AC
  loc_CEFAF8: LitStr " AND CodiSede = 41 AND servdeva.BajaFeho IS NULL"
  loc_CEFAFB: ConcatStr
  loc_CEFAFC: FStStrNoPop var_2B0
  loc_CEFAFF: FLdPr Me
  loc_CEFB02: MemLdRfVar from_stack_1.global_68
  loc_CEFB05: NewIfNullPr clsservdeva
  loc_CEFB08: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CEFB0D: FFreeStr var_29C = "": var_2A4 = "": var_2A8 = "": var_2AC = ""
  loc_CEFB1A: FLdRfVar var_F0
  loc_CEFB1D: FLdRfVar var_F8
  loc_CEFB20: FLdPr Me
  loc_CEFB23: MemLdRfVar from_stack_1.global_68
  loc_CEFB26: NewIfNullPr clsservdeva
  loc_CEFB29: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFB2E: FLdPr var_F8
  loc_CEFB31:  = Me.RecordCount
  loc_CEFB36: ILdRf var_F0
  loc_CEFB39: LitI4 0
  loc_CEFB3E: GtI4
  loc_CEFB3F: FFree1Ad var_F8
  loc_CEFB42: BranchF loc_CF0116
  loc_CEFB45: FLdRfVar var_DC
  loc_CEFB48: FLdRfVar var_2B4
  loc_CEFB4B: LitVarStr var_CC, "PeriInfo"
  loc_CEFB50: PopAdLdVar
  loc_CEFB51: FLdRfVar var_2A0
  loc_CEFB54: FLdRfVar var_F8
  loc_CEFB57: FLdPr Me
  loc_CEFB5A: MemLdRfVar from_stack_1.global_68
  loc_CEFB5D: NewIfNullPr clsservdeva
  loc_CEFB60: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFB65: FLdPr var_F8
  loc_CEFB68:  = Me.Fields
  loc_CEFB6D: FLdPr var_2A0
  loc_CEFB70: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFB75: FLdPr var_2B4
  loc_CEFB78:  = Me.Value
  loc_CEFB7D: FLdRfVar var_DC
  loc_CEFB80: FnCIntVar
  loc_CEFB82: ImpAdLdI2 MemVar_D93034
  loc_CEFB85: NeI2
  loc_CEFB86: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CEFB8F: FFree1Var var_DC = ""
  loc_CEFB92: BranchF loc_CEFBB8
  loc_CEFB95: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CEFB98: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CEFB9D: FLdPr Me
  loc_CEFBA0: VCallAd Control_ID_ServDevaFlex
  loc_CEFBA3: FStAdFunc var_F8
  loc_CEFBA6: FLdPr var_F8
  loc_CEFBA9: LateIdCall
  loc_CEFBB1: FFree1Ad var_F8
  loc_CEFBB4: ExitProcHresult
  loc_CEFBB5: Branch loc_CF0113
  loc_CEFBB8: FLdRfVar var_DC
  loc_CEFBBB: FLdRfVar var_2B4
  loc_CEFBBE: LitVarStr var_CC, "PeriInfo"
  loc_CEFBC3: PopAdLdVar
  loc_CEFBC4: FLdRfVar var_2A0
  loc_CEFBC7: FLdRfVar var_F8
  loc_CEFBCA: FLdPr Me
  loc_CEFBCD: MemLdRfVar from_stack_1.global_68
  loc_CEFBD0: NewIfNullPr clsservdeva
  loc_CEFBD3: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFBD8: FLdPr var_F8
  loc_CEFBDB:  = Me.Fields
  loc_CEFBE0: FLdPr var_2A0
  loc_CEFBE3: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFBE8: FLdPr var_2B4
  loc_CEFBEB:  = Me.Value
  loc_CEFBF0: FLdRfVar var_EC
  loc_CEFBF3: FLdRfVar var_2C0
  loc_CEFBF6: LitVarStr var_108, "CodiConc"
  loc_CEFBFB: PopAdLdVar
  loc_CEFBFC: FLdRfVar var_2BC
  loc_CEFBFF: FLdRfVar var_2B8
  loc_CEFC02: FLdPr Me
  loc_CEFC05: MemLdRfVar from_stack_1.global_68
  loc_CEFC08: NewIfNullPr clsservdeva
  loc_CEFC0B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFC10: FLdPr var_2B8
  loc_CEFC13:  = Me.Fields
  loc_CEFC18: FLdPr var_2BC
  loc_CEFC1B: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFC20: FLdPr var_2C0
  loc_CEFC23:  = Me.Value
  loc_CEFC28: FLdRfVar var_EC
  loc_CEFC2B: CStrVarTmp
  loc_CEFC2C: FStStrNoPop var_29C
  loc_CEFC2F: FLdRfVar var_DC
  loc_CEFC32: CI2Var
  loc_CEFC33: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CEFC38: FStStrNoPop var_2A4
  loc_CEFC3B: LitStr vbNullString
  loc_CEFC3E: EqStr
  loc_CEFC40: FFreeStr var_29C = ""
  loc_CEFC47: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2BC = "": var_2B4 = ""
  loc_CEFC56: FFreeVar var_DC = ""
  loc_CEFC5D: BranchF loc_CEFCCF
  loc_CEFC60: LitVarStr var_108, "El recurso: "
  loc_CEFC65: FLdRfVar var_DC
  loc_CEFC68: FLdRfVar var_2B4
  loc_CEFC6B: LitVarStr var_CC, "CodiConc"
  loc_CEFC70: PopAdLdVar
  loc_CEFC71: FLdRfVar var_2A0
  loc_CEFC74: FLdRfVar var_F8
  loc_CEFC77: FLdPr Me
  loc_CEFC7A: MemLdRfVar from_stack_1.global_68
  loc_CEFC7D: NewIfNullPr clsservdeva
  loc_CEFC80: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFC85: FLdPr var_F8
  loc_CEFC88:  = Me.Fields
  loc_CEFC8D: FLdPr var_2A0
  loc_CEFC90: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFC95: FLdPr var_2B4
  loc_CEFC98:  = Me.Value
  loc_CEFC9D: FLdRfVar var_DC
  loc_CEFCA0: ConcatVar var_EC
  loc_CEFCA4: LitVarStr var_148, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CEFCA9: ConcatVar var_118
  loc_CEFCAD: CStrVarVal var_29C
  loc_CEFCB1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CEFCB6: FFree1Str var_29C
  loc_CEFCB9: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CEFCC2: FFreeVar var_DC = "": var_EC = ""
  loc_CEFCCB: ExitProcHresult
  loc_CEFCCC: Branch loc_CF0113
  loc_CEFCCF: FLdPr Me
  loc_CEFCD2: VCallAd Control_ID_ServDevaFlex
  loc_CEFCD5: FStAdFunc var_F8
  loc_CEFCD8: FLdPr var_F8
  loc_CEFCDB: LateIdLdVar var_DC DispID_10 0
  loc_CEFCE2: CI4Var
  loc_CEFCE4: CVarI4
  loc_CEFCE8: PopAdLdVar
  loc_CEFCE9: LitVarI4
  loc_CEFCF1: PopAdLdVar
  loc_CEFCF2: LitVarStr var_1C8, "1,00"
  loc_CEFCF7: PopAdLdVar
  loc_CEFCF8: FLdPr Me
  loc_CEFCFB: VCallAd Control_ID_ServDevaFlex
  loc_CEFCFE: FStAdFunc var_2A0
  loc_CEFD01: FLdPr var_2A0
  loc_CEFD04: LateIdCallSt
  loc_CEFD0C: FFreeAd var_F8 = ""
  loc_CEFD13: FFree1Var var_DC = ""
  loc_CEFD16: FLdPr Me
  loc_CEFD19: VCallAd Control_ID_ServDevaFlex
  loc_CEFD1C: FStAdFunc var_2B8
  loc_CEFD1F: FLdPr var_2B8
  loc_CEFD22: LateIdLdVar var_DC DispID_10 0
  loc_CEFD29: CI4Var
  loc_CEFD2B: CVarI4
  loc_CEFD2F: PopAdLdVar
  loc_CEFD30: LitVarI4
  loc_CEFD38: PopAdLdVar
  loc_CEFD39: FLdRfVar var_EC
  loc_CEFD3C: FLdRfVar var_2B4
  loc_CEFD3F: LitVarStr var_CC, "CodiSede"
  loc_CEFD44: PopAdLdVar
  loc_CEFD45: FLdRfVar var_2A0
  loc_CEFD48: FLdRfVar var_F8
  loc_CEFD4B: FLdPr Me
  loc_CEFD4E: MemLdRfVar from_stack_1.global_68
  loc_CEFD51: NewIfNullPr clsservdeva
  loc_CEFD54: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFD59: FLdPr var_F8
  loc_CEFD5C:  = Me.Fields
  loc_CEFD61: FLdPr var_2A0
  loc_CEFD64: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFD69: FLdPr var_2B4
  loc_CEFD6C:  = Me.Value
  loc_CEFD71: FLdRfVar var_EC
  loc_CEFD74: CStrVarTmp
  loc_CEFD75: CVarStr var_118
  loc_CEFD78: PopAdLdVar
  loc_CEFD79: FLdPr Me
  loc_CEFD7C: VCallAd Control_ID_ServDevaFlex
  loc_CEFD7F: FStAdFunc var_2BC
  loc_CEFD82: FLdPr var_2BC
  loc_CEFD85: LateIdCallSt
  loc_CEFD8D: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2B4 = ""
  loc_CEFD9A: FFreeVar var_DC = "": var_EC = ""
  loc_CEFDA3: FLdPr Me
  loc_CEFDA6: VCallAd Control_ID_ServDevaFlex
  loc_CEFDA9: FStAdFunc var_2B8
  loc_CEFDAC: FLdPr var_2B8
  loc_CEFDAF: LateIdLdVar var_DC DispID_10 0
  loc_CEFDB6: CI4Var
  loc_CEFDB8: CVarI4
  loc_CEFDBC: PopAdLdVar
  loc_CEFDBD: LitVarI4
  loc_CEFDC5: PopAdLdVar
  loc_CEFDC6: FLdRfVar var_EC
  loc_CEFDC9: FLdRfVar var_2B4
  loc_CEFDCC: LitVarStr var_CC, "DetaSede"
  loc_CEFDD1: PopAdLdVar
  loc_CEFDD2: FLdRfVar var_2A0
  loc_CEFDD5: FLdRfVar var_F8
  loc_CEFDD8: FLdPr Me
  loc_CEFDDB: MemLdRfVar from_stack_1.global_68
  loc_CEFDDE: NewIfNullPr clsservdeva
  loc_CEFDE1: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFDE6: FLdPr var_F8
  loc_CEFDE9:  = Me.Fields
  loc_CEFDEE: FLdPr var_2A0
  loc_CEFDF1: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFDF6: FLdPr var_2B4
  loc_CEFDF9:  = Me.Value
  loc_CEFDFE: FLdRfVar var_EC
  loc_CEFE01: CStrVarTmp
  loc_CEFE02: CVarStr var_118
  loc_CEFE05: PopAdLdVar
  loc_CEFE06: FLdPr Me
  loc_CEFE09: VCallAd Control_ID_ServDevaFlex
  loc_CEFE0C: FStAdFunc var_2BC
  loc_CEFE0F: FLdPr var_2BC
  loc_CEFE12: LateIdCallSt
  loc_CEFE1A: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2B4 = ""
  loc_CEFE27: FFreeVar var_DC = "": var_EC = ""
  loc_CEFE30: FLdPr Me
  loc_CEFE33: VCallAd Control_ID_ServDevaFlex
  loc_CEFE36: FStAdFunc var_F8
  loc_CEFE39: FLdPr var_F8
  loc_CEFE3C: LateIdLdVar var_118 DispID_10 0
  loc_CEFE43: CI4Var
  loc_CEFE45: CVarI4
  loc_CEFE49: PopAdLdVar
  loc_CEFE4A: LitVarI4
  loc_CEFE52: PopAdLdVar
  loc_CEFE53: LitI4 1
  loc_CEFE58: LitI4 1
  loc_CEFE5D: LitVarStr var_108, "0.00"
  loc_CEFE62: FStVarCopyObj var_DC
  loc_CEFE65: FLdRfVar var_DC
  loc_CEFE68: FLdPr Me
  loc_CEFE6B: MemLdRfVar from_stack_1.global_92
  loc_CEFE6E: CVarRef
  loc_CEFE73: FLdRfVar var_EC
  loc_CEFE76: ImpAdCallFPR4  = Format(, )
  loc_CEFE7B: FLdRfVar var_EC
  loc_CEFE7E: CStrVarTmp
  loc_CEFE7F: CVarStr var_128
  loc_CEFE82: PopAdLdVar
  loc_CEFE83: FLdPr Me
  loc_CEFE86: VCallAd Control_ID_ServDevaFlex
  loc_CEFE89: FStAdFunc var_2A0
  loc_CEFE8C: FLdPr var_2A0
  loc_CEFE8F: LateIdCallSt
  loc_CEFE97: FFreeAd var_F8 = ""
  loc_CEFE9E: FFreeVar var_DC = "": var_118 = "": var_EC = ""
  loc_CEFEA9: FLdPr Me
  loc_CEFEAC: VCallAd Control_ID_ServDevaFlex
  loc_CEFEAF: FStAdFunc var_F8
  loc_CEFEB2: FLdPr var_F8
  loc_CEFEB5: LateIdLdVar var_DC DispID_10 0
  loc_CEFEBC: CI4Var
  loc_CEFEBE: CVarI4
  loc_CEFEC2: PopAdLdVar
  loc_CEFEC3: LitVarI4
  loc_CEFECB: PopAdLdVar
  loc_CEFECC: FLdPr Me
  loc_CEFECF: VCallAd Control_ID_ServDevaFlex
  loc_CEFED2: FStAdFunc var_2A0
  loc_CEFED5: FLdPr var_2A0
  loc_CEFED8: LateIdCallLdVar
  loc_CEFEE2: PopAd
  loc_CEFEE4: FLdPr Me
  loc_CEFEE7: VCallAd Control_ID_ServDevaFlex
  loc_CEFEEA: FStAdFunc var_2B4
  loc_CEFEED: FLdPr var_2B4
  loc_CEFEF0: LateIdLdVar var_158 DispID_10 0
  loc_CEFEF7: CI4Var
  loc_CEFEF9: CVarI4
  loc_CEFEFD: PopAdLdVar
  loc_CEFEFE: LitVarI4
  loc_CEFF06: PopAdLdVar
  loc_CEFF07: LitI4 1
  loc_CEFF0C: LitI4 1
  loc_CEFF11: LitVarStr var_208, "0.00"
  loc_CEFF16: FStVarCopyObj var_128
  loc_CEFF19: FLdRfVar var_128
  loc_CEFF1C: FLdRfVar var_EC
  loc_CEFF1F: CStrVarTmp
  loc_CEFF20: FStStrNoPop var_29C
  loc_CEFF23: CR8Str
  loc_CEFF25: CVarR8
  loc_CEFF29: FLdRfVar var_138
  loc_CEFF2C: ImpAdCallFPR4  = Format(, )
  loc_CEFF31: FLdRfVar var_138
  loc_CEFF34: CStrVarTmp
  loc_CEFF35: CVarStr var_168
  loc_CEFF38: PopAdLdVar
  loc_CEFF39: FLdPr Me
  loc_CEFF3C: VCallAd Control_ID_ServDevaFlex
  loc_CEFF3F: FStAdFunc var_2B8
  loc_CEFF42: FLdPr var_2B8
  loc_CEFF45: LateIdCallSt
  loc_CEFF4D: FFree1Str var_29C
  loc_CEFF50: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CEFF5B: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = "": var_158 = "": var_138 = ""
  loc_CEFF6C: FLdPr Me
  loc_CEFF6F: VCallAd Control_ID_ServDevaFlex
  loc_CEFF72: FStAdFunc var_2B8
  loc_CEFF75: FLdPr var_2B8
  loc_CEFF78: LateIdLdVar var_DC DispID_10 0
  loc_CEFF7F: CI4Var
  loc_CEFF81: CVarI4
  loc_CEFF85: PopAdLdVar
  loc_CEFF86: LitVarI4
  loc_CEFF8E: PopAdLdVar
  loc_CEFF8F: FLdRfVar var_EC
  loc_CEFF92: FLdRfVar var_2B4
  loc_CEFF95: LitVarStr var_CC, "PeriInfo"
  loc_CEFF9A: PopAdLdVar
  loc_CEFF9B: FLdRfVar var_2A0
  loc_CEFF9E: FLdRfVar var_F8
  loc_CEFFA1: FLdPr Me
  loc_CEFFA4: MemLdRfVar from_stack_1.global_68
  loc_CEFFA7: NewIfNullPr clsservdeva
  loc_CEFFAA: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CEFFAF: FLdPr var_F8
  loc_CEFFB2:  = Me.Fields
  loc_CEFFB7: FLdPr var_2A0
  loc_CEFFBA: from_stack_2 = Me.Item(from_stack_1)
  loc_CEFFBF: FLdPr var_2B4
  loc_CEFFC2:  = Me.Value
  loc_CEFFC7: FLdRfVar var_EC
  loc_CEFFCA: CStrVarTmp
  loc_CEFFCB: CVarStr var_118
  loc_CEFFCE: PopAdLdVar
  loc_CEFFCF: FLdPr Me
  loc_CEFFD2: VCallAd Control_ID_ServDevaFlex
  loc_CEFFD5: FStAdFunc var_2BC
  loc_CEFFD8: FLdPr var_2BC
  loc_CEFFDB: LateIdCallSt
  loc_CEFFE3: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2B4 = ""
  loc_CEFFF0: FFreeVar var_DC = "": var_EC = ""
  loc_CEFFF9: FLdPr Me
  loc_CEFFFC: VCallAd Control_ID_ServDevaFlex
  loc_CEFFFF: FStAdFunc var_2B8
  loc_CF0002: FLdPr var_2B8
  loc_CF0005: LateIdLdVar var_DC DispID_10 0
  loc_CF000C: CI4Var
  loc_CF000E: CVarI4
  loc_CF0012: PopAdLdVar
  loc_CF0013: LitVarI4
  loc_CF001B: PopAdLdVar
  loc_CF001C: FLdRfVar var_EC
  loc_CF001F: FLdRfVar var_2B4
  loc_CF0022: LitVarStr var_CC, "CodiConc"
  loc_CF0027: PopAdLdVar
  loc_CF0028: FLdRfVar var_2A0
  loc_CF002B: FLdRfVar var_F8
  loc_CF002E: FLdPr Me
  loc_CF0031: MemLdRfVar from_stack_1.global_68
  loc_CF0034: NewIfNullPr clsservdeva
  loc_CF0037: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF003C: FLdPr var_F8
  loc_CF003F:  = Me.Fields
  loc_CF0044: FLdPr var_2A0
  loc_CF0047: from_stack_2 = Me.Item(from_stack_1)
  loc_CF004C: FLdPr var_2B4
  loc_CF004F:  = Me.Value
  loc_CF0054: FLdRfVar var_EC
  loc_CF0057: CStrVarTmp
  loc_CF0058: CVarStr var_118
  loc_CF005B: PopAdLdVar
  loc_CF005C: FLdPr Me
  loc_CF005F: VCallAd Control_ID_ServDevaFlex
  loc_CF0062: FStAdFunc var_2BC
  loc_CF0065: FLdPr var_2BC
  loc_CF0068: LateIdCallSt
  loc_CF0070: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2B4 = ""
  loc_CF007D: FFreeVar var_DC = "": var_EC = ""
  loc_CF0086: FLdPr Me
  loc_CF0089: VCallAd Control_ID_ServDevaFlex
  loc_CF008C: FStAdFunc var_2B8
  loc_CF008F: FLdPr var_2B8
  loc_CF0092: LateIdLdVar var_DC DispID_10 0
  loc_CF0099: CI4Var
  loc_CF009B: CVarI4
  loc_CF009F: PopAdLdVar
  loc_CF00A0: LitVarI4
  loc_CF00A8: PopAdLdVar
  loc_CF00A9: FLdRfVar var_EC
  loc_CF00AC: FLdRfVar var_2B4
  loc_CF00AF: LitVarStr var_CC, "VariSede"
  loc_CF00B4: PopAdLdVar
  loc_CF00B5: FLdRfVar var_2A0
  loc_CF00B8: FLdRfVar var_F8
  loc_CF00BB: FLdPr Me
  loc_CF00BE: MemLdRfVar from_stack_1.global_68
  loc_CF00C1: NewIfNullPr clsservdeva
  loc_CF00C4: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF00C9: FLdPr var_F8
  loc_CF00CC:  = Me.Fields
  loc_CF00D1: FLdPr var_2A0
  loc_CF00D4: from_stack_2 = Me.Item(from_stack_1)
  loc_CF00D9: FLdPr var_2B4
  loc_CF00DC:  = Me.Value
  loc_CF00E1: FLdRfVar var_EC
  loc_CF00E4: CStrVarTmp
  loc_CF00E5: CVarStr var_118
  loc_CF00E8: PopAdLdVar
  loc_CF00E9: FLdPr Me
  loc_CF00EC: VCallAd Control_ID_ServDevaFlex
  loc_CF00EF: FStAdFunc var_2BC
  loc_CF00F2: FLdPr var_2BC
  loc_CF00F5: LateIdCallSt
  loc_CF00FD: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2B4 = ""
  loc_CF010A: FFreeVar var_DC = "": var_EC = ""
  loc_CF0113: Branch loc_CF034E
  loc_CF0116: FLdPr Me
  loc_CF0119: VCallAd Control_ID_ServDevaFlex
  loc_CF011C: FStAdFunc var_F8
  loc_CF011F: FLdPr var_F8
  loc_CF0122: LateIdLdVar var_DC DispID_10 0
  loc_CF0129: CI4Var
  loc_CF012B: CVarI4
  loc_CF012F: PopAdLdVar
  loc_CF0130: LitVarI4
  loc_CF0138: PopAdLdVar
  loc_CF0139: LitVarStr var_1C8, vbNullString
  loc_CF013E: PopAdLdVar
  loc_CF013F: FLdPr Me
  loc_CF0142: VCallAd Control_ID_ServDevaFlex
  loc_CF0145: FStAdFunc var_2A0
  loc_CF0148: FLdPr var_2A0
  loc_CF014B: LateIdCallSt
  loc_CF0153: FFreeAd var_F8 = ""
  loc_CF015A: FFree1Var var_DC = ""
  loc_CF015D: FLdPr Me
  loc_CF0160: VCallAd Control_ID_ServDevaFlex
  loc_CF0163: FStAdFunc var_F8
  loc_CF0166: FLdPr var_F8
  loc_CF0169: LateIdLdVar var_DC DispID_10 0
  loc_CF0170: CI4Var
  loc_CF0172: CVarI4
  loc_CF0176: PopAdLdVar
  loc_CF0177: LitVarI4
  loc_CF017F: PopAdLdVar
  loc_CF0180: LitVarStr var_1C8, vbNullString
  loc_CF0185: PopAdLdVar
  loc_CF0186: FLdPr Me
  loc_CF0189: VCallAd Control_ID_ServDevaFlex
  loc_CF018C: FStAdFunc var_2A0
  loc_CF018F: FLdPr var_2A0
  loc_CF0192: LateIdCallSt
  loc_CF019A: FFreeAd var_F8 = ""
  loc_CF01A1: FFree1Var var_DC = ""
  loc_CF01A4: FLdPr Me
  loc_CF01A7: VCallAd Control_ID_ServDevaFlex
  loc_CF01AA: FStAdFunc var_F8
  loc_CF01AD: FLdPr var_F8
  loc_CF01B0: LateIdLdVar var_DC DispID_10 0
  loc_CF01B7: CI4Var
  loc_CF01B9: CVarI4
  loc_CF01BD: PopAdLdVar
  loc_CF01BE: LitVarI4
  loc_CF01C6: PopAdLdVar
  loc_CF01C7: LitVarStr var_1C8, vbNullString
  loc_CF01CC: PopAdLdVar
  loc_CF01CD: FLdPr Me
  loc_CF01D0: VCallAd Control_ID_ServDevaFlex
  loc_CF01D3: FStAdFunc var_2A0
  loc_CF01D6: FLdPr var_2A0
  loc_CF01D9: LateIdCallSt
  loc_CF01E1: FFreeAd var_F8 = ""
  loc_CF01E8: FFree1Var var_DC = ""
  loc_CF01EB: FLdPr Me
  loc_CF01EE: VCallAd Control_ID_ServDevaFlex
  loc_CF01F1: FStAdFunc var_F8
  loc_CF01F4: FLdPr var_F8
  loc_CF01F7: LateIdLdVar var_DC DispID_10 0
  loc_CF01FE: CI4Var
  loc_CF0200: CVarI4
  loc_CF0204: PopAdLdVar
  loc_CF0205: LitVarI4
  loc_CF020D: PopAdLdVar
  loc_CF020E: LitVarStr var_1C8, vbNullString
  loc_CF0213: PopAdLdVar
  loc_CF0214: FLdPr Me
  loc_CF0217: VCallAd Control_ID_ServDevaFlex
  loc_CF021A: FStAdFunc var_2A0
  loc_CF021D: FLdPr var_2A0
  loc_CF0220: LateIdCallSt
  loc_CF0228: FFreeAd var_F8 = ""
  loc_CF022F: FFree1Var var_DC = ""
  loc_CF0232: FLdPr Me
  loc_CF0235: VCallAd Control_ID_ServDevaFlex
  loc_CF0238: FStAdFunc var_F8
  loc_CF023B: FLdPr var_F8
  loc_CF023E: LateIdLdVar var_DC DispID_10 0
  loc_CF0245: CI4Var
  loc_CF0247: CVarI4
  loc_CF024B: PopAdLdVar
  loc_CF024C: LitVarI4
  loc_CF0254: PopAdLdVar
  loc_CF0255: LitVarStr var_1C8, vbNullString
  loc_CF025A: PopAdLdVar
  loc_CF025B: FLdPr Me
  loc_CF025E: VCallAd Control_ID_ServDevaFlex
  loc_CF0261: FStAdFunc var_2A0
  loc_CF0264: FLdPr var_2A0
  loc_CF0267: LateIdCallSt
  loc_CF026F: FFreeAd var_F8 = ""
  loc_CF0276: FFree1Var var_DC = ""
  loc_CF0279: FLdPr Me
  loc_CF027C: VCallAd Control_ID_ServDevaFlex
  loc_CF027F: FStAdFunc var_F8
  loc_CF0282: FLdPr var_F8
  loc_CF0285: LateIdLdVar var_DC DispID_10 0
  loc_CF028C: CI4Var
  loc_CF028E: CVarI4
  loc_CF0292: PopAdLdVar
  loc_CF0293: LitVarI4
  loc_CF029B: PopAdLdVar
  loc_CF029C: LitVarStr var_1C8, vbNullString
  loc_CF02A1: PopAdLdVar
  loc_CF02A2: FLdPr Me
  loc_CF02A5: VCallAd Control_ID_ServDevaFlex
  loc_CF02A8: FStAdFunc var_2A0
  loc_CF02AB: FLdPr var_2A0
  loc_CF02AE: LateIdCallSt
  loc_CF02B6: FFreeAd var_F8 = ""
  loc_CF02BD: FFree1Var var_DC = ""
  loc_CF02C0: FLdPr Me
  loc_CF02C3: VCallAd Control_ID_ServDevaFlex
  loc_CF02C6: FStAdFunc var_F8
  loc_CF02C9: FLdPr var_F8
  loc_CF02CC: LateIdLdVar var_DC DispID_10 0
  loc_CF02D3: CI4Var
  loc_CF02D5: CVarI4
  loc_CF02D9: PopAdLdVar
  loc_CF02DA: LitVarI4
  loc_CF02E2: PopAdLdVar
  loc_CF02E3: LitVarStr var_1C8, vbNullString
  loc_CF02E8: PopAdLdVar
  loc_CF02E9: FLdPr Me
  loc_CF02EC: VCallAd Control_ID_ServDevaFlex
  loc_CF02EF: FStAdFunc var_2A0
  loc_CF02F2: FLdPr var_2A0
  loc_CF02F5: LateIdCallSt
  loc_CF02FD: FFreeAd var_F8 = ""
  loc_CF0304: FFree1Var var_DC = ""
  loc_CF0307: FLdPr Me
  loc_CF030A: VCallAd Control_ID_ServDevaFlex
  loc_CF030D: FStAdFunc var_F8
  loc_CF0310: FLdPr var_F8
  loc_CF0313: LateIdLdVar var_DC DispID_10 0
  loc_CF031A: CI4Var
  loc_CF031C: CVarI4
  loc_CF0320: PopAdLdVar
  loc_CF0321: LitVarI4
  loc_CF0329: PopAdLdVar
  loc_CF032A: LitVarStr var_1C8, vbNullString
  loc_CF032F: PopAdLdVar
  loc_CF0330: FLdPr Me
  loc_CF0333: VCallAd Control_ID_ServDevaFlex
  loc_CF0336: FStAdFunc var_2A0
  loc_CF0339: FLdPr var_2A0
  loc_CF033C: LateIdCallSt
  loc_CF0344: FFreeAd var_F8 = ""
  loc_CF034B: FFree1Var var_DC = ""
  loc_CF034E: LitI2_Byte 1
  loc_CF0350: FLdPr Me
  loc_CF0353: MemLdRfVar from_stack_1.global_88
  loc_CF0356: FLdPr Me
  loc_CF0359: VCallAd Control_ID_ServDevaFlex
  loc_CF035C: FStAdFunc var_F8
  loc_CF035F: FLdPr var_F8
  loc_CF0362: LateIdLdVar var_DC DispID_4 0
  loc_CF0369: CI4Var
  loc_CF036B: LitI4 1
  loc_CF0370: SubI4
  loc_CF0371: CI2I4
  loc_CF0372: FFree1Ad var_F8
  loc_CF0375: FFree1Var var_DC = ""
  loc_CF0378: ForI2 var_2F4
  loc_CF037E: FLdPr Me
  loc_CF0381: MemLdI2 global_88
  loc_CF0384: CI4UI1
  loc_CF0385: CVarI4
  loc_CF0389: PopAdLdVar
  loc_CF038A: LitVarI4
  loc_CF0392: PopAdLdVar
  loc_CF0393: FLdPr Me
  loc_CF0396: VCallAd Control_ID_ServDevaFlex
  loc_CF0399: FStAdFunc var_F8
  loc_CF039C: FLdPr var_F8
  loc_CF039F: LateIdCallLdVar
  loc_CF03A9: CStrVarTmp
  loc_CF03AA: CVarStr var_EC
  loc_CF03AD: ImpAdCallI2 IsNumeric()
  loc_CF03B2: NotI4
  loc_CF03B3: FFree1Ad var_F8
  loc_CF03B6: FFreeVar var_DC = ""
  loc_CF03BD: BranchF loc_CF03ED
  loc_CF03C0: LitStr "Debe ingresar la cantidad. Verifique..."
  loc_CF03C3: FLdPr Me
  loc_CF03C6: MemStStrCopy
  loc_CF03CA: FLdPr Me
  loc_CF03CD: MemLdStr global_80
  loc_CF03D0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF03D5: FLdPr Me
  loc_CF03D8: VCallAd Control_ID_ServDevaFlex
  loc_CF03DB: FStAdFunc var_F8
  loc_CF03DE: FLdPr var_F8
  loc_CF03E1: LateIdCall
  loc_CF03E9: FFree1Ad var_F8
  loc_CF03EC: ExitProcHresult
  loc_CF03ED: FLdPr Me
  loc_CF03F0: MemLdI2 global_88
  loc_CF03F3: CI4UI1
  loc_CF03F4: CVarI4
  loc_CF03F8: PopAdLdVar
  loc_CF03F9: LitVarI4
  loc_CF0401: PopAdLdVar
  loc_CF0402: FLdPr Me
  loc_CF0405: VCallAd Control_ID_ServDevaFlex
  loc_CF0408: FStAdFunc var_F8
  loc_CF040B: FLdPr var_F8
  loc_CF040E: LateIdCallLdVar
  loc_CF0418: CStrVarTmp
  loc_CF0419: CVarStr var_EC
  loc_CF041C: ImpAdCallI2 IsNumeric()
  loc_CF0421: FFree1Ad var_F8
  loc_CF0424: FFreeVar var_DC = ""
  loc_CF042B: BranchF loc_CF106B
  loc_CF042E: LitStr "SELECT DetaSede, ImpoSede * UntrPage as ImpoSede, PeriInfo, CodiConc, VariSede FROM servdeva "
  loc_CF0431: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CF0434: ConcatStr
  loc_CF0435: FStStrNoPop var_29C
  loc_CF0438: LitStr " WHERE servdeva.PeriOrde = "
  loc_CF043B: ConcatStr
  loc_CF043C: FStStrNoPop var_2A4
  loc_CF043F: ImpAdLdI2 MemVar_D93036
  loc_CF0442: CStrUI1
  loc_CF0444: FStStrNoPop var_2A8
  loc_CF0447: ConcatStr
  loc_CF0448: FStStrNoPop var_2AC
  loc_CF044B: LitStr " AND CodiSede = "
  loc_CF044E: ConcatStr
  loc_CF044F: FStStrNoPop var_2B0
  loc_CF0452: FLdPr Me
  loc_CF0455: MemLdI2 global_88
  loc_CF0458: CI4UI1
  loc_CF0459: CVarI4
  loc_CF045D: PopAdLdVar
  loc_CF045E: LitVarI4
  loc_CF0466: PopAdLdVar
  loc_CF0467: FLdPr Me
  loc_CF046A: VCallAd Control_ID_ServDevaFlex
  loc_CF046D: FStAdFunc var_F8
  loc_CF0470: FLdPr var_F8
  loc_CF0473: LateIdCallLdVar
  loc_CF047D: CStrVarTmp
  loc_CF047E: FStStrNoPop var_2F8
  loc_CF0481: ConcatStr
  loc_CF0482: FStStrNoPop var_2FC
  loc_CF0485: LitStr " AND CtctSede = '0' AND servdeva.BajaFeho IS NULL"
  loc_CF0488: ConcatStr
  loc_CF0489: FStStrNoPop var_300
  loc_CF048C: FLdPr Me
  loc_CF048F: MemLdRfVar from_stack_1.global_68
  loc_CF0492: NewIfNullPr clsservdeva
  loc_CF0495: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CF049A: FFreeStr var_29C = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2F8 = "": var_2FC = ""
  loc_CF04AD: FFree1Ad var_F8
  loc_CF04B0: FFree1Var var_DC = ""
  loc_CF04B3: FLdRfVar var_F0
  loc_CF04B6: FLdRfVar var_F8
  loc_CF04B9: FLdPr Me
  loc_CF04BC: MemLdRfVar from_stack_1.global_68
  loc_CF04BF: NewIfNullPr clsservdeva
  loc_CF04C2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF04C7: FLdPr var_F8
  loc_CF04CA:  = Me.RecordCount
  loc_CF04CF: ILdRf var_F0
  loc_CF04D2: LitI4 0
  loc_CF04D7: GtI4
  loc_CF04D8: FFree1Ad var_F8
  loc_CF04DB: BranchF loc_CF0EEA
  loc_CF04DE: FLdRfVar var_DC
  loc_CF04E1: FLdRfVar var_2B4
  loc_CF04E4: LitVarStr var_CC, "PeriInfo"
  loc_CF04E9: PopAdLdVar
  loc_CF04EA: FLdRfVar var_2A0
  loc_CF04ED: FLdRfVar var_F8
  loc_CF04F0: FLdPr Me
  loc_CF04F3: MemLdRfVar from_stack_1.global_68
  loc_CF04F6: NewIfNullPr clsservdeva
  loc_CF04F9: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF04FE: FLdPr var_F8
  loc_CF0501:  = Me.Fields
  loc_CF0506: FLdPr var_2A0
  loc_CF0509: from_stack_2 = Me.Item(from_stack_1)
  loc_CF050E: FLdPr var_2B4
  loc_CF0511:  = Me.Value
  loc_CF0516: FLdRfVar var_DC
  loc_CF0519: FnCIntVar
  loc_CF051B: ImpAdLdI2 MemVar_D93034
  loc_CF051E: NeI2
  loc_CF051F: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CF0528: FFree1Var var_DC = ""
  loc_CF052B: BranchF loc_CF06AF
  loc_CF052E: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CF0531: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF0536: FLdPr Me
  loc_CF0539: VCallAd Control_ID_ServDevaFlex
  loc_CF053C: FStAdFunc var_F8
  loc_CF053F: FLdPr var_F8
  loc_CF0542: LateIdCall
  loc_CF054A: FFree1Ad var_F8
  loc_CF054D: FLdPr Me
  loc_CF0550: MemLdI2 global_88
  loc_CF0553: CI4UI1
  loc_CF0554: CVarI4
  loc_CF0558: PopAdLdVar
  loc_CF0559: LitVarI4
  loc_CF0561: PopAdLdVar
  loc_CF0562: LitVarStr var_1C8, vbNullString
  loc_CF0567: PopAdLdVar
  loc_CF0568: FLdPr Me
  loc_CF056B: VCallAd Control_ID_ServDevaFlex
  loc_CF056E: FStAdFunc var_F8
  loc_CF0571: FLdPr var_F8
  loc_CF0574: LateIdCallSt
  loc_CF057C: FFree1Ad var_F8
  loc_CF057F: FLdPr Me
  loc_CF0582: MemLdI2 global_88
  loc_CF0585: CI4UI1
  loc_CF0586: CVarI4
  loc_CF058A: PopAdLdVar
  loc_CF058B: LitVarI4
  loc_CF0593: PopAdLdVar
  loc_CF0594: LitVarStr var_1C8, vbNullString
  loc_CF0599: PopAdLdVar
  loc_CF059A: FLdPr Me
  loc_CF059D: VCallAd Control_ID_ServDevaFlex
  loc_CF05A0: FStAdFunc var_F8
  loc_CF05A3: FLdPr var_F8
  loc_CF05A6: LateIdCallSt
  loc_CF05AE: FFree1Ad var_F8
  loc_CF05B1: FLdPr Me
  loc_CF05B4: MemLdI2 global_88
  loc_CF05B7: CI4UI1
  loc_CF05B8: CVarI4
  loc_CF05BC: PopAdLdVar
  loc_CF05BD: LitVarI4
  loc_CF05C5: PopAdLdVar
  loc_CF05C6: LitVarStr var_1C8, vbNullString
  loc_CF05CB: PopAdLdVar
  loc_CF05CC: FLdPr Me
  loc_CF05CF: VCallAd Control_ID_ServDevaFlex
  loc_CF05D2: FStAdFunc var_F8
  loc_CF05D5: FLdPr var_F8
  loc_CF05D8: LateIdCallSt
  loc_CF05E0: FFree1Ad var_F8
  loc_CF05E3: FLdPr Me
  loc_CF05E6: MemLdI2 global_88
  loc_CF05E9: CI4UI1
  loc_CF05EA: CVarI4
  loc_CF05EE: PopAdLdVar
  loc_CF05EF: LitVarI4
  loc_CF05F7: PopAdLdVar
  loc_CF05F8: LitVarStr var_1C8, vbNullString
  loc_CF05FD: PopAdLdVar
  loc_CF05FE: FLdPr Me
  loc_CF0601: VCallAd Control_ID_ServDevaFlex
  loc_CF0604: FStAdFunc var_F8
  loc_CF0607: FLdPr var_F8
  loc_CF060A: LateIdCallSt
  loc_CF0612: FFree1Ad var_F8
  loc_CF0615: FLdPr Me
  loc_CF0618: MemLdI2 global_88
  loc_CF061B: CI4UI1
  loc_CF061C: CVarI4
  loc_CF0620: PopAdLdVar
  loc_CF0621: LitVarI4
  loc_CF0629: PopAdLdVar
  loc_CF062A: LitVarStr var_1C8, vbNullString
  loc_CF062F: PopAdLdVar
  loc_CF0630: FLdPr Me
  loc_CF0633: VCallAd Control_ID_ServDevaFlex
  loc_CF0636: FStAdFunc var_F8
  loc_CF0639: FLdPr var_F8
  loc_CF063C: LateIdCallSt
  loc_CF0644: FFree1Ad var_F8
  loc_CF0647: FLdPr Me
  loc_CF064A: MemLdI2 global_88
  loc_CF064D: CI4UI1
  loc_CF064E: CVarI4
  loc_CF0652: PopAdLdVar
  loc_CF0653: LitVarI4
  loc_CF065B: PopAdLdVar
  loc_CF065C: LitVarStr var_1C8, vbNullString
  loc_CF0661: PopAdLdVar
  loc_CF0662: FLdPr Me
  loc_CF0665: VCallAd Control_ID_ServDevaFlex
  loc_CF0668: FStAdFunc var_F8
  loc_CF066B: FLdPr var_F8
  loc_CF066E: LateIdCallSt
  loc_CF0676: FFree1Ad var_F8
  loc_CF0679: FLdPr Me
  loc_CF067C: MemLdI2 global_88
  loc_CF067F: CI4UI1
  loc_CF0680: CVarI4
  loc_CF0684: PopAdLdVar
  loc_CF0685: LitVarI4
  loc_CF068D: PopAdLdVar
  loc_CF068E: LitVarStr var_1C8, vbNullString
  loc_CF0693: PopAdLdVar
  loc_CF0694: FLdPr Me
  loc_CF0697: VCallAd Control_ID_ServDevaFlex
  loc_CF069A: FStAdFunc var_F8
  loc_CF069D: FLdPr var_F8
  loc_CF06A0: LateIdCallSt
  loc_CF06A8: FFree1Ad var_F8
  loc_CF06AB: ExitProcHresult
  loc_CF06AC: Branch loc_CF0EE7
  loc_CF06AF: FLdRfVar var_DC
  loc_CF06B2: FLdRfVar var_2B4
  loc_CF06B5: LitVarStr var_CC, "PeriInfo"
  loc_CF06BA: PopAdLdVar
  loc_CF06BB: FLdRfVar var_2A0
  loc_CF06BE: FLdRfVar var_F8
  loc_CF06C1: FLdPr Me
  loc_CF06C4: MemLdRfVar from_stack_1.global_68
  loc_CF06C7: NewIfNullPr clsservdeva
  loc_CF06CA: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF06CF: FLdPr var_F8
  loc_CF06D2:  = Me.Fields
  loc_CF06D7: FLdPr var_2A0
  loc_CF06DA: from_stack_2 = Me.Item(from_stack_1)
  loc_CF06DF: FLdPr var_2B4
  loc_CF06E2:  = Me.Value
  loc_CF06E7: FLdRfVar var_EC
  loc_CF06EA: FLdRfVar var_2C0
  loc_CF06ED: LitVarStr var_108, "CodiConc"
  loc_CF06F2: PopAdLdVar
  loc_CF06F3: FLdRfVar var_2BC
  loc_CF06F6: FLdRfVar var_2B8
  loc_CF06F9: FLdPr Me
  loc_CF06FC: MemLdRfVar from_stack_1.global_68
  loc_CF06FF: NewIfNullPr clsservdeva
  loc_CF0702: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF0707: FLdPr var_2B8
  loc_CF070A:  = Me.Fields
  loc_CF070F: FLdPr var_2BC
  loc_CF0712: from_stack_2 = Me.Item(from_stack_1)
  loc_CF0717: FLdPr var_2C0
  loc_CF071A:  = Me.Value
  loc_CF071F: FLdRfVar var_EC
  loc_CF0722: CStrVarTmp
  loc_CF0723: FStStrNoPop var_29C
  loc_CF0726: FLdRfVar var_DC
  loc_CF0729: CI2Var
  loc_CF072A: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CF072F: FStStrNoPop var_2A4
  loc_CF0732: LitStr vbNullString
  loc_CF0735: EqStr
  loc_CF0737: FFreeStr var_29C = ""
  loc_CF073E: FFreeAd var_F8 = "": var_2A0 = "": var_2B8 = "": var_2BC = "": var_2B4 = ""
  loc_CF074D: FFreeVar var_DC = ""
  loc_CF0754: BranchF loc_CF07C6
  loc_CF0757: LitVarStr var_108, "El recurso: "
  loc_CF075C: FLdRfVar var_DC
  loc_CF075F: FLdRfVar var_2B4
  loc_CF0762: LitVarStr var_CC, "CodiConc"
  loc_CF0767: PopAdLdVar
  loc_CF0768: FLdRfVar var_2A0
  loc_CF076B: FLdRfVar var_F8
  loc_CF076E: FLdPr Me
  loc_CF0771: MemLdRfVar from_stack_1.global_68
  loc_CF0774: NewIfNullPr clsservdeva
  loc_CF0777: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF077C: FLdPr var_F8
  loc_CF077F:  = Me.Fields
  loc_CF0784: FLdPr var_2A0
  loc_CF0787: from_stack_2 = Me.Item(from_stack_1)
  loc_CF078C: FLdPr var_2B4
  loc_CF078F:  = Me.Value
  loc_CF0794: FLdRfVar var_DC
  loc_CF0797: ConcatVar var_EC
  loc_CF079B: LitVarStr var_148, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CF07A0: ConcatVar var_118
  loc_CF07A4: CStrVarVal var_29C
  loc_CF07A8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF07AD: FFree1Str var_29C
  loc_CF07B0: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CF07B9: FFreeVar var_DC = "": var_EC = ""
  loc_CF07C2: ExitProcHresult
  loc_CF07C3: Branch loc_CF0EE7
  loc_CF07C6: FLdPr Me
  loc_CF07C9: MemLdI2 global_88
  loc_CF07CC: CI4UI1
  loc_CF07CD: CVarI4
  loc_CF07D1: PopAdLdVar
  loc_CF07D2: LitVarI4
  loc_CF07DA: PopAdLdVar
  loc_CF07DB: FLdRfVar var_DC
  loc_CF07DE: FLdRfVar var_2B4
  loc_CF07E1: LitVarStr var_CC, "VariSede"
  loc_CF07E6: PopAdLdVar
  loc_CF07E7: FLdRfVar var_2A0
  loc_CF07EA: FLdRfVar var_F8
  loc_CF07ED: FLdPr Me
  loc_CF07F0: MemLdRfVar from_stack_1.global_68
  loc_CF07F3: NewIfNullPr clsservdeva
  loc_CF07F6: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF07FB: FLdPr var_F8
  loc_CF07FE:  = Me.Fields
  loc_CF0803: FLdPr var_2A0
  loc_CF0806: from_stack_2 = Me.Item(from_stack_1)
  loc_CF080B: FLdPr var_2B4
  loc_CF080E:  = Me.Value
  loc_CF0813: FLdRfVar var_DC
  loc_CF0816: CStrVarTmp
  loc_CF0817: CVarStr var_EC
  loc_CF081A: PopAdLdVar
  loc_CF081B: FLdPr Me
  loc_CF081E: VCallAd Control_ID_ServDevaFlex
  loc_CF0821: FStAdFunc var_2B8
  loc_CF0824: FLdPr var_2B8
  loc_CF0827: LateIdCallSt
  loc_CF082F: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF083A: FFreeVar var_DC = ""
  loc_CF0841: FLdPr Me
  loc_CF0844: MemLdI2 global_88
  loc_CF0847: CI4UI1
  loc_CF0848: CVarI4
  loc_CF084C: PopAdLdVar
  loc_CF084D: LitVarI4
  loc_CF0855: PopAdLdVar
  loc_CF0856: FLdRfVar var_DC
  loc_CF0859: FLdRfVar var_2B4
  loc_CF085C: LitVarStr var_CC, "DetaSede"
  loc_CF0861: PopAdLdVar
  loc_CF0862: FLdRfVar var_2A0
  loc_CF0865: FLdRfVar var_F8
  loc_CF0868: FLdPr Me
  loc_CF086B: MemLdRfVar from_stack_1.global_68
  loc_CF086E: NewIfNullPr clsservdeva
  loc_CF0871: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF0876: FLdPr var_F8
  loc_CF0879:  = Me.Fields
  loc_CF087E: FLdPr var_2A0
  loc_CF0881: from_stack_2 = Me.Item(from_stack_1)
  loc_CF0886: FLdPr var_2B4
  loc_CF0889:  = Me.Value
  loc_CF088E: FLdRfVar var_DC
  loc_CF0891: CStrVarTmp
  loc_CF0892: CVarStr var_EC
  loc_CF0895: PopAdLdVar
  loc_CF0896: FLdPr Me
  loc_CF0899: VCallAd Control_ID_ServDevaFlex
  loc_CF089C: FStAdFunc var_2B8
  loc_CF089F: FLdPr var_2B8
  loc_CF08A2: LateIdCallSt
  loc_CF08AA: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF08B5: FFreeVar var_DC = ""
  loc_CF08BC: FLdPr Me
  loc_CF08BF: MemLdI2 global_88
  loc_CF08C2: CI4UI1
  loc_CF08C3: CVarI4
  loc_CF08C7: PopAdLdVar
  loc_CF08C8: LitVarI4
  loc_CF08D0: PopAdLdVar
  loc_CF08D1: FLdPr Me
  loc_CF08D4: VCallAd Control_ID_ServDevaFlex
  loc_CF08D7: FStAdFunc var_F8
  loc_CF08DA: FLdPr var_F8
  loc_CF08DD: LateIdCallLdVar
  loc_CF08E7: CStrVarTmp
  loc_CF08E8: FStStrNoPop var_29C
  loc_CF08EB: LitStr "0"
  loc_CF08EE: EqStr
  loc_CF08F0: FFree1Str var_29C
  loc_CF08F3: FFree1Ad var_F8
  loc_CF08F6: FFree1Var var_DC = ""
  loc_CF08F9: BranchF loc_CF09A6
  loc_CF08FC: FLdRfVar var_DC
  loc_CF08FF: FLdRfVar var_2B4
  loc_CF0902: LitVarStr var_CC, "ImpoSede"
  loc_CF0907: PopAdLdVar
  loc_CF0908: FLdRfVar var_2A0
  loc_CF090B: FLdRfVar var_F8
  loc_CF090E: FLdPr Me
  loc_CF0911: MemLdRfVar from_stack_1.global_68
  loc_CF0914: NewIfNullPr clsservdeva
  loc_CF0917: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF091C: FLdPr var_F8
  loc_CF091F:  = Me.Fields
  loc_CF0924: FLdPr var_2A0
  loc_CF0927: from_stack_2 = Me.Item(from_stack_1)
  loc_CF092C: FLdPr var_2B4
  loc_CF092F:  = Me.Value
  loc_CF0934: FLdPr Me
  loc_CF0937: MemLdI2 global_88
  loc_CF093A: CI4UI1
  loc_CF093B: CVarI4
  loc_CF093F: PopAdLdVar
  loc_CF0940: LitVarI4
  loc_CF0948: PopAdLdVar
  loc_CF0949: LitI4 1
  loc_CF094E: LitI4 1
  loc_CF0953: LitVarStr var_148, "0.00"
  loc_CF0958: FStVarCopyObj var_118
  loc_CF095B: FLdRfVar var_118
  loc_CF095E: FLdRfVar var_DC
  loc_CF0961: FnCDblVar
  loc_CF0963: CVarR8
  loc_CF0967: FLdRfVar var_128
  loc_CF096A: ImpAdCallFPR4  = Format(, )
  loc_CF096F: FLdRfVar var_128
  loc_CF0972: CStrVarTmp
  loc_CF0973: CVarStr var_138
  loc_CF0976: PopAdLdVar
  loc_CF0977: FLdPr Me
  loc_CF097A: VCallAd Control_ID_ServDevaFlex
  loc_CF097D: FStAdFunc var_2B8
  loc_CF0980: FLdPr var_2B8
  loc_CF0983: LateIdCallSt
  loc_CF098B: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF0996: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = ""
  loc_CF09A3: Branch loc_CF0BB2
  loc_CF09A6: FLdPr Me
  loc_CF09A9: MemLdI2 global_88
  loc_CF09AC: CI4UI1
  loc_CF09AD: CVarI4
  loc_CF09B1: PopAdLdVar
  loc_CF09B2: LitVarI4
  loc_CF09BA: PopAdLdVar
  loc_CF09BB: FLdPr Me
  loc_CF09BE: VCallAd Control_ID_ServDevaFlex
  loc_CF09C1: FStAdFunc var_F8
  loc_CF09C4: FLdPr var_F8
  loc_CF09C7: LateIdCallLdVar
  loc_CF09D1: CStrVarTmp
  loc_CF09D2: FStStrNoPop var_29C
  loc_CF09D5: LitStr "1"
  loc_CF09D8: EqStr
  loc_CF09DA: FFree1Str var_29C
  loc_CF09DD: FFree1Ad var_F8
  loc_CF09E0: FFree1Var var_DC = ""
  loc_CF09E3: BranchF loc_CF0BB2
  loc_CF09E6: FLdPr Me
  loc_CF09E9: MemLdI2 global_88
  loc_CF09EC: CI4UI1
  loc_CF09ED: CVarI4
  loc_CF09F1: PopAdLdVar
  loc_CF09F2: LitVarI4
  loc_CF09FA: PopAdLdVar
  loc_CF09FB: FLdPr Me
  loc_CF09FE: VCallAd Control_ID_ServDevaFlex
  loc_CF0A01: FStAdFunc var_F8
  loc_CF0A04: FLdPr var_F8
  loc_CF0A07: LateIdCallLdVar
  loc_CF0A11: CStrVarTmp
  loc_CF0A12: CVarStr var_EC
  loc_CF0A15: ImpAdCallI2 IsNumeric()
  loc_CF0A1A: FLdPr Me
  loc_CF0A1D: MemLdI2 global_88
  loc_CF0A20: CI4UI1
  loc_CF0A21: CVarI4
  loc_CF0A25: PopAdLdVar
  loc_CF0A26: LitVarI4
  loc_CF0A2E: PopAdLdVar
  loc_CF0A2F: FLdPr Me
  loc_CF0A32: VCallAd Control_ID_ServDevaFlex
  loc_CF0A35: FStAdFunc var_2A0
  loc_CF0A38: FLdPr var_2A0
  loc_CF0A3B: LateIdCallLdVar
  loc_CF0A45: CStrVarTmp
  loc_CF0A46: CVarStr var_128
  loc_CF0A49: ImpAdCallI2 IsNumeric()
  loc_CF0A4E: AndI4
  loc_CF0A4F: FFreeAd var_F8 = ""
  loc_CF0A56: FFreeVar var_DC = "": var_EC = "": var_118 = ""
  loc_CF0A61: BranchF loc_CF0B4E
  loc_CF0A64: FLdPr Me
  loc_CF0A67: MemLdI2 global_88
  loc_CF0A6A: CI4UI1
  loc_CF0A6B: CVarI4
  loc_CF0A6F: PopAdLdVar
  loc_CF0A70: LitVarI4
  loc_CF0A78: PopAdLdVar
  loc_CF0A79: FLdPr Me
  loc_CF0A7C: VCallAd Control_ID_ServDevaFlex
  loc_CF0A7F: FStAdFunc var_F8
  loc_CF0A82: FLdPr var_F8
  loc_CF0A85: LateIdCallLdVar
  loc_CF0A8F: CStrVarTmp
  loc_CF0A90: FStStrNoPop var_29C
  loc_CF0A93: CR8Str
  loc_CF0A95: LitI2_Byte 0
  loc_CF0A97: CR8I2
  loc_CF0A98: EqR4
  loc_CF0A99: FLdPr Me
  loc_CF0A9C: MemLdI2 global_88
  loc_CF0A9F: CI4UI1
  loc_CF0AA0: CVarI4
  loc_CF0AA4: PopAdLdVar
  loc_CF0AA5: LitVarI4
  loc_CF0AAD: PopAdLdVar
  loc_CF0AAE: FLdPr Me
  loc_CF0AB1: VCallAd Control_ID_ServDevaFlex
  loc_CF0AB4: FStAdFunc var_2A0
  loc_CF0AB7: FLdPr var_2A0
  loc_CF0ABA: LateIdCallLdVar
  loc_CF0AC4: CStrVarTmp
  loc_CF0AC5: FStStrNoPop var_2A4
  loc_CF0AC8: CR8Str
  loc_CF0ACA: LitI2_Byte 0
  loc_CF0ACC: CR8I2
  loc_CF0ACD: EqR4
  loc_CF0ACE: AndI4
  loc_CF0ACF: FFreeStr var_29C = ""
  loc_CF0AD6: FFreeAd var_F8 = ""
  loc_CF0ADD: FFreeVar var_DC = ""
  loc_CF0AE4: BranchF loc_CF0B4B
  loc_CF0AE7: FLdPr Me
  loc_CF0AEA: MemLdI2 global_88
  loc_CF0AED: CI4UI1
  loc_CF0AEE: CVarI4
  loc_CF0AF2: PopAdLdVar
  loc_CF0AF3: LitVarI4
  loc_CF0AFB: PopAdLdVar
  loc_CF0AFC: LitVarStr var_1C8, vbNullString
  loc_CF0B01: PopAdLdVar
  loc_CF0B02: FLdPr Me
  loc_CF0B05: VCallAd Control_ID_ServDevaFlex
  loc_CF0B08: FStAdFunc var_F8
  loc_CF0B0B: FLdPr var_F8
  loc_CF0B0E: LateIdCallSt
  loc_CF0B16: FFree1Ad var_F8
  loc_CF0B19: FLdPr Me
  loc_CF0B1C: MemLdI2 global_88
  loc_CF0B1F: CI4UI1
  loc_CF0B20: CVarI4
  loc_CF0B24: PopAdLdVar
  loc_CF0B25: LitVarI4
  loc_CF0B2D: PopAdLdVar
  loc_CF0B2E: LitVarStr var_1C8, vbNullString
  loc_CF0B33: PopAdLdVar
  loc_CF0B34: FLdPr Me
  loc_CF0B37: VCallAd Control_ID_ServDevaFlex
  loc_CF0B3A: FStAdFunc var_F8
  loc_CF0B3D: FLdPr var_F8
  loc_CF0B40: LateIdCallSt
  loc_CF0B48: FFree1Ad var_F8
  loc_CF0B4B: Branch loc_CF0BB2
  loc_CF0B4E: FLdPr Me
  loc_CF0B51: MemLdI2 global_88
  loc_CF0B54: CI4UI1
  loc_CF0B55: CVarI4
  loc_CF0B59: PopAdLdVar
  loc_CF0B5A: LitVarI4
  loc_CF0B62: PopAdLdVar
  loc_CF0B63: LitVarStr var_1C8, vbNullString
  loc_CF0B68: PopAdLdVar
  loc_CF0B69: FLdPr Me
  loc_CF0B6C: VCallAd Control_ID_ServDevaFlex
  loc_CF0B6F: FStAdFunc var_F8
  loc_CF0B72: FLdPr var_F8
  loc_CF0B75: LateIdCallSt
  loc_CF0B7D: FFree1Ad var_F8
  loc_CF0B80: FLdPr Me
  loc_CF0B83: MemLdI2 global_88
  loc_CF0B86: CI4UI1
  loc_CF0B87: CVarI4
  loc_CF0B8B: PopAdLdVar
  loc_CF0B8C: LitVarI4
  loc_CF0B94: PopAdLdVar
  loc_CF0B95: LitVarStr var_1C8, vbNullString
  loc_CF0B9A: PopAdLdVar
  loc_CF0B9B: FLdPr Me
  loc_CF0B9E: VCallAd Control_ID_ServDevaFlex
  loc_CF0BA1: FStAdFunc var_F8
  loc_CF0BA4: FLdPr var_F8
  loc_CF0BA7: LateIdCallSt
  loc_CF0BAF: FFree1Ad var_F8
  loc_CF0BB2: FLdPr Me
  loc_CF0BB5: MemLdI2 global_88
  loc_CF0BB8: CI4UI1
  loc_CF0BB9: CVarI4
  loc_CF0BBD: PopAdLdVar
  loc_CF0BBE: LitVarI4
  loc_CF0BC6: PopAdLdVar
  loc_CF0BC7: FLdPr Me
  loc_CF0BCA: VCallAd Control_ID_ServDevaFlex
  loc_CF0BCD: FStAdFunc var_F8
  loc_CF0BD0: FLdPr var_F8
  loc_CF0BD3: LateIdCallLdVar
  loc_CF0BDD: CStrVarTmp
  loc_CF0BDE: CVarStr var_EC
  loc_CF0BE1: ImpAdCallI2 IsNumeric()
  loc_CF0BE6: FLdPr Me
  loc_CF0BE9: MemLdI2 global_88
  loc_CF0BEC: CI4UI1
  loc_CF0BED: CVarI4
  loc_CF0BF1: PopAdLdVar
  loc_CF0BF2: LitVarI4
  loc_CF0BFA: PopAdLdVar
  loc_CF0BFB: FLdPr Me
  loc_CF0BFE: VCallAd Control_ID_ServDevaFlex
  loc_CF0C01: FStAdFunc var_2A0
  loc_CF0C04: FLdPr var_2A0
  loc_CF0C07: LateIdCallLdVar
  loc_CF0C11: CStrVarTmp
  loc_CF0C12: CVarStr var_128
  loc_CF0C15: ImpAdCallI2 IsNumeric()
  loc_CF0C1A: AndI4
  loc_CF0C1B: FFreeAd var_F8 = ""
  loc_CF0C22: FFreeVar var_DC = "": var_EC = "": var_118 = ""
  loc_CF0C2D: BranchF loc_CF0D11
  loc_CF0C30: FLdPr Me
  loc_CF0C33: MemLdI2 global_88
  loc_CF0C36: CI4UI1
  loc_CF0C37: CVarI4
  loc_CF0C3B: PopAdLdVar
  loc_CF0C3C: LitVarI4
  loc_CF0C44: PopAdLdVar
  loc_CF0C45: FLdPr Me
  loc_CF0C48: VCallAd Control_ID_ServDevaFlex
  loc_CF0C4B: FStAdFunc var_F8
  loc_CF0C4E: FLdPr var_F8
  loc_CF0C51: LateIdCallLdVar
  loc_CF0C5B: PopAd
  loc_CF0C5D: FLdPr Me
  loc_CF0C60: MemLdI2 global_88
  loc_CF0C63: CI4UI1
  loc_CF0C64: CVarI4
  loc_CF0C68: PopAdLdVar
  loc_CF0C69: LitVarI4
  loc_CF0C71: PopAdLdVar
  loc_CF0C72: FLdPr Me
  loc_CF0C75: VCallAd Control_ID_ServDevaFlex
  loc_CF0C78: FStAdFunc var_2A0
  loc_CF0C7B: FLdPr var_2A0
  loc_CF0C7E: LateIdCallLdVar
  loc_CF0C88: PopAd
  loc_CF0C8A: FLdPr Me
  loc_CF0C8D: MemLdI2 global_88
  loc_CF0C90: CI4UI1
  loc_CF0C91: CVarI4
  loc_CF0C95: PopAdLdVar
  loc_CF0C96: LitVarI4
  loc_CF0C9E: PopAdLdVar
  loc_CF0C9F: LitI4 1
  loc_CF0CA4: LitI4 1
  loc_CF0CA9: LitVarStr var_2E0, "0.00"
  loc_CF0CAE: FStVarCopyObj var_128
  loc_CF0CB1: FLdRfVar var_128
  loc_CF0CB4: FLdRfVar var_DC
  loc_CF0CB7: CStrVarTmp
  loc_CF0CB8: FStStrNoPop var_29C
  loc_CF0CBB: CR8Str
  loc_CF0CBD: FLdRfVar var_EC
  loc_CF0CC0: CStrVarTmp
  loc_CF0CC1: FStStrNoPop var_2A4
  loc_CF0CC4: CR8Str
  loc_CF0CC6: MulR8
  loc_CF0CC7: CVarR8
  loc_CF0CCB: FLdRfVar var_138
  loc_CF0CCE: ImpAdCallFPR4  = Format(, )
  loc_CF0CD3: FLdRfVar var_138
  loc_CF0CD6: CStrVarTmp
  loc_CF0CD7: CVarStr var_158
  loc_CF0CDA: PopAdLdVar
  loc_CF0CDB: FLdPr Me
  loc_CF0CDE: VCallAd Control_ID_ServDevaFlex
  loc_CF0CE1: FStAdFunc var_2B4
  loc_CF0CE4: FLdPr var_2B4
  loc_CF0CE7: LateIdCallSt
  loc_CF0CEF: FFreeStr var_29C = ""
  loc_CF0CF6: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CF0CFF: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = "": var_138 = ""
  loc_CF0D0E: Branch loc_CF0DF1
  loc_CF0D11: FLdPr Me
  loc_CF0D14: MemLdI2 global_88
  loc_CF0D17: CI4UI1
  loc_CF0D18: CVarI4
  loc_CF0D1C: PopAdLdVar
  loc_CF0D1D: LitVarI4
  loc_CF0D25: PopAdLdVar
  loc_CF0D26: FLdPr Me
  loc_CF0D29: VCallAd Control_ID_ServDevaFlex
  loc_CF0D2C: FStAdFunc var_F8
  loc_CF0D2F: FLdPr var_F8
  loc_CF0D32: LateIdCallLdVar
  loc_CF0D3C: CStrVarTmp
  loc_CF0D3D: CVarStr var_EC
  loc_CF0D40: ImpAdCallI2 IsNumeric()
  loc_CF0D45: FFree1Ad var_F8
  loc_CF0D48: FFreeVar var_DC = ""
  loc_CF0D4F: BranchF loc_CF0DF1
  loc_CF0D52: FLdPr Me
  loc_CF0D55: MemLdI2 global_88
  loc_CF0D58: CI4UI1
  loc_CF0D59: CVarI4
  loc_CF0D5D: PopAdLdVar
  loc_CF0D5E: LitVarI4
  loc_CF0D66: PopAdLdVar
  loc_CF0D67: FLdPr Me
  loc_CF0D6A: VCallAd Control_ID_ServDevaFlex
  loc_CF0D6D: FStAdFunc var_F8
  loc_CF0D70: FLdPr var_F8
  loc_CF0D73: LateIdCallLdVar
  loc_CF0D7D: PopAd
  loc_CF0D7F: FLdPr Me
  loc_CF0D82: MemLdI2 global_88
  loc_CF0D85: CI4UI1
  loc_CF0D86: CVarI4
  loc_CF0D8A: PopAdLdVar
  loc_CF0D8B: LitVarI4
  loc_CF0D93: PopAdLdVar
  loc_CF0D94: LitI4 1
  loc_CF0D99: LitI4 1
  loc_CF0D9E: LitVarStr var_208, "0.00"
  loc_CF0DA3: FStVarCopyObj var_118
  loc_CF0DA6: FLdRfVar var_118
  loc_CF0DA9: FLdRfVar var_DC
  loc_CF0DAC: CStrVarTmp
  loc_CF0DAD: FStStrNoPop var_29C
  loc_CF0DB0: CR8Str
  loc_CF0DB2: CVarR8
  loc_CF0DB6: FLdRfVar var_128
  loc_CF0DB9: ImpAdCallFPR4  = Format(, )
  loc_CF0DBE: FLdRfVar var_128
  loc_CF0DC1: CStrVarTmp
  loc_CF0DC2: CVarStr var_138
  loc_CF0DC5: PopAdLdVar
  loc_CF0DC6: FLdPr Me
  loc_CF0DC9: VCallAd Control_ID_ServDevaFlex
  loc_CF0DCC: FStAdFunc var_2A0
  loc_CF0DCF: FLdPr var_2A0
  loc_CF0DD2: LateIdCallSt
  loc_CF0DDA: FFree1Str var_29C
  loc_CF0DDD: FFreeAd var_F8 = ""
  loc_CF0DE4: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = ""
  loc_CF0DF1: FLdPr Me
  loc_CF0DF4: MemLdI2 global_88
  loc_CF0DF7: CI4UI1
  loc_CF0DF8: CVarI4
  loc_CF0DFC: PopAdLdVar
  loc_CF0DFD: LitVarI4
  loc_CF0E05: PopAdLdVar
  loc_CF0E06: FLdRfVar var_DC
  loc_CF0E09: FLdRfVar var_2B4
  loc_CF0E0C: LitVarStr var_CC, "PeriInfo"
  loc_CF0E11: PopAdLdVar
  loc_CF0E12: FLdRfVar var_2A0
  loc_CF0E15: FLdRfVar var_F8
  loc_CF0E18: FLdPr Me
  loc_CF0E1B: MemLdRfVar from_stack_1.global_68
  loc_CF0E1E: NewIfNullPr clsservdeva
  loc_CF0E21: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF0E26: FLdPr var_F8
  loc_CF0E29:  = Me.Fields
  loc_CF0E2E: FLdPr var_2A0
  loc_CF0E31: from_stack_2 = Me.Item(from_stack_1)
  loc_CF0E36: FLdPr var_2B4
  loc_CF0E39:  = Me.Value
  loc_CF0E3E: FLdRfVar var_DC
  loc_CF0E41: CStrVarTmp
  loc_CF0E42: CVarStr var_EC
  loc_CF0E45: PopAdLdVar
  loc_CF0E46: FLdPr Me
  loc_CF0E49: VCallAd Control_ID_ServDevaFlex
  loc_CF0E4C: FStAdFunc var_2B8
  loc_CF0E4F: FLdPr var_2B8
  loc_CF0E52: LateIdCallSt
  loc_CF0E5A: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF0E65: FFreeVar var_DC = ""
  loc_CF0E6C: FLdPr Me
  loc_CF0E6F: MemLdI2 global_88
  loc_CF0E72: CI4UI1
  loc_CF0E73: CVarI4
  loc_CF0E77: PopAdLdVar
  loc_CF0E78: LitVarI4
  loc_CF0E80: PopAdLdVar
  loc_CF0E81: FLdRfVar var_DC
  loc_CF0E84: FLdRfVar var_2B4
  loc_CF0E87: LitVarStr var_CC, "CodiConc"
  loc_CF0E8C: PopAdLdVar
  loc_CF0E8D: FLdRfVar var_2A0
  loc_CF0E90: FLdRfVar var_F8
  loc_CF0E93: FLdPr Me
  loc_CF0E96: MemLdRfVar from_stack_1.global_68
  loc_CF0E99: NewIfNullPr clsservdeva
  loc_CF0E9C: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CF0EA1: FLdPr var_F8
  loc_CF0EA4:  = Me.Fields
  loc_CF0EA9: FLdPr var_2A0
  loc_CF0EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_CF0EB1: FLdPr var_2B4
  loc_CF0EB4:  = Me.Value
  loc_CF0EB9: FLdRfVar var_DC
  loc_CF0EBC: CStrVarTmp
  loc_CF0EBD: CVarStr var_EC
  loc_CF0EC0: PopAdLdVar
  loc_CF0EC1: FLdPr Me
  loc_CF0EC4: VCallAd Control_ID_ServDevaFlex
  loc_CF0EC7: FStAdFunc var_2B8
  loc_CF0ECA: FLdPr var_2B8
  loc_CF0ECD: LateIdCallSt
  loc_CF0ED5: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF0EE0: FFreeVar var_DC = ""
  loc_CF0EE7: Branch loc_CF1068
  loc_CF0EEA: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CF0EED: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF0EF2: FLdPr Me
  loc_CF0EF5: VCallAd Control_ID_ServDevaFlex
  loc_CF0EF8: FStAdFunc var_F8
  loc_CF0EFB: FLdPr var_F8
  loc_CF0EFE: LateIdCall
  loc_CF0F06: FFree1Ad var_F8
  loc_CF0F09: FLdPr Me
  loc_CF0F0C: MemLdI2 global_88
  loc_CF0F0F: CI4UI1
  loc_CF0F10: CVarI4
  loc_CF0F14: PopAdLdVar
  loc_CF0F15: LitVarI4
  loc_CF0F1D: PopAdLdVar
  loc_CF0F1E: LitVarStr var_1C8, vbNullString
  loc_CF0F23: PopAdLdVar
  loc_CF0F24: FLdPr Me
  loc_CF0F27: VCallAd Control_ID_ServDevaFlex
  loc_CF0F2A: FStAdFunc var_F8
  loc_CF0F2D: FLdPr var_F8
  loc_CF0F30: LateIdCallSt
  loc_CF0F38: FFree1Ad var_F8
  loc_CF0F3B: FLdPr Me
  loc_CF0F3E: MemLdI2 global_88
  loc_CF0F41: CI4UI1
  loc_CF0F42: CVarI4
  loc_CF0F46: PopAdLdVar
  loc_CF0F47: LitVarI4
  loc_CF0F4F: PopAdLdVar
  loc_CF0F50: LitVarStr var_1C8, vbNullString
  loc_CF0F55: PopAdLdVar
  loc_CF0F56: FLdPr Me
  loc_CF0F59: VCallAd Control_ID_ServDevaFlex
  loc_CF0F5C: FStAdFunc var_F8
  loc_CF0F5F: FLdPr var_F8
  loc_CF0F62: LateIdCallSt
  loc_CF0F6A: FFree1Ad var_F8
  loc_CF0F6D: FLdPr Me
  loc_CF0F70: MemLdI2 global_88
  loc_CF0F73: CI4UI1
  loc_CF0F74: CVarI4
  loc_CF0F78: PopAdLdVar
  loc_CF0F79: LitVarI4
  loc_CF0F81: PopAdLdVar
  loc_CF0F82: LitVarStr var_1C8, vbNullString
  loc_CF0F87: PopAdLdVar
  loc_CF0F88: FLdPr Me
  loc_CF0F8B: VCallAd Control_ID_ServDevaFlex
  loc_CF0F8E: FStAdFunc var_F8
  loc_CF0F91: FLdPr var_F8
  loc_CF0F94: LateIdCallSt
  loc_CF0F9C: FFree1Ad var_F8
  loc_CF0F9F: FLdPr Me
  loc_CF0FA2: MemLdI2 global_88
  loc_CF0FA5: CI4UI1
  loc_CF0FA6: CVarI4
  loc_CF0FAA: PopAdLdVar
  loc_CF0FAB: LitVarI4
  loc_CF0FB3: PopAdLdVar
  loc_CF0FB4: LitVarStr var_1C8, vbNullString
  loc_CF0FB9: PopAdLdVar
  loc_CF0FBA: FLdPr Me
  loc_CF0FBD: VCallAd Control_ID_ServDevaFlex
  loc_CF0FC0: FStAdFunc var_F8
  loc_CF0FC3: FLdPr var_F8
  loc_CF0FC6: LateIdCallSt
  loc_CF0FCE: FFree1Ad var_F8
  loc_CF0FD1: FLdPr Me
  loc_CF0FD4: MemLdI2 global_88
  loc_CF0FD7: CI4UI1
  loc_CF0FD8: CVarI4
  loc_CF0FDC: PopAdLdVar
  loc_CF0FDD: LitVarI4
  loc_CF0FE5: PopAdLdVar
  loc_CF0FE6: LitVarStr var_1C8, vbNullString
  loc_CF0FEB: PopAdLdVar
  loc_CF0FEC: FLdPr Me
  loc_CF0FEF: VCallAd Control_ID_ServDevaFlex
  loc_CF0FF2: FStAdFunc var_F8
  loc_CF0FF5: FLdPr var_F8
  loc_CF0FF8: LateIdCallSt
  loc_CF1000: FFree1Ad var_F8
  loc_CF1003: FLdPr Me
  loc_CF1006: MemLdI2 global_88
  loc_CF1009: CI4UI1
  loc_CF100A: CVarI4
  loc_CF100E: PopAdLdVar
  loc_CF100F: LitVarI4
  loc_CF1017: PopAdLdVar
  loc_CF1018: LitVarStr var_1C8, vbNullString
  loc_CF101D: PopAdLdVar
  loc_CF101E: FLdPr Me
  loc_CF1021: VCallAd Control_ID_ServDevaFlex
  loc_CF1024: FStAdFunc var_F8
  loc_CF1027: FLdPr var_F8
  loc_CF102A: LateIdCallSt
  loc_CF1032: FFree1Ad var_F8
  loc_CF1035: FLdPr Me
  loc_CF1038: MemLdI2 global_88
  loc_CF103B: CI4UI1
  loc_CF103C: CVarI4
  loc_CF1040: PopAdLdVar
  loc_CF1041: LitVarI4
  loc_CF1049: PopAdLdVar
  loc_CF104A: LitVarStr var_1C8, vbNullString
  loc_CF104F: PopAdLdVar
  loc_CF1050: FLdPr Me
  loc_CF1053: VCallAd Control_ID_ServDevaFlex
  loc_CF1056: FStAdFunc var_F8
  loc_CF1059: FLdPr var_F8
  loc_CF105C: LateIdCallSt
  loc_CF1064: FFree1Ad var_F8
  loc_CF1067: ExitProcHresult
  loc_CF1068: Branch loc_CF11F6
  loc_CF106B: LitStr "Debe ingresar el código. Verifique..."
  loc_CF106E: FLdPr Me
  loc_CF1071: MemStStrCopy
  loc_CF1075: FLdPr Me
  loc_CF1078: MemLdStr global_80
  loc_CF107B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF1080: FLdPr Me
  loc_CF1083: MemLdI2 global_88
  loc_CF1086: CI4UI1
  loc_CF1087: CVarI4
  loc_CF108B: PopAdLdVar
  loc_CF108C: LitVarI4
  loc_CF1094: PopAdLdVar
  loc_CF1095: LitVarStr var_1C8, vbNullString
  loc_CF109A: PopAdLdVar
  loc_CF109B: FLdPr Me
  loc_CF109E: VCallAd Control_ID_ServDevaFlex
  loc_CF10A1: FStAdFunc var_F8
  loc_CF10A4: FLdPr var_F8
  loc_CF10A7: LateIdCallSt
  loc_CF10AF: FFree1Ad var_F8
  loc_CF10B2: FLdPr Me
  loc_CF10B5: MemLdI2 global_88
  loc_CF10B8: CI4UI1
  loc_CF10B9: CVarI4
  loc_CF10BD: PopAdLdVar
  loc_CF10BE: LitVarI4
  loc_CF10C6: PopAdLdVar
  loc_CF10C7: LitVarStr var_1C8, vbNullString
  loc_CF10CC: PopAdLdVar
  loc_CF10CD: FLdPr Me
  loc_CF10D0: VCallAd Control_ID_ServDevaFlex
  loc_CF10D3: FStAdFunc var_F8
  loc_CF10D6: FLdPr var_F8
  loc_CF10D9: LateIdCallSt
  loc_CF10E1: FFree1Ad var_F8
  loc_CF10E4: FLdPr Me
  loc_CF10E7: MemLdI2 global_88
  loc_CF10EA: CI4UI1
  loc_CF10EB: CVarI4
  loc_CF10EF: PopAdLdVar
  loc_CF10F0: LitVarI4
  loc_CF10F8: PopAdLdVar
  loc_CF10F9: LitVarStr var_1C8, vbNullString
  loc_CF10FE: PopAdLdVar
  loc_CF10FF: FLdPr Me
  loc_CF1102: VCallAd Control_ID_ServDevaFlex
  loc_CF1105: FStAdFunc var_F8
  loc_CF1108: FLdPr var_F8
  loc_CF110B: LateIdCallSt
  loc_CF1113: FFree1Ad var_F8
  loc_CF1116: FLdPr Me
  loc_CF1119: MemLdI2 global_88
  loc_CF111C: CI4UI1
  loc_CF111D: CVarI4
  loc_CF1121: PopAdLdVar
  loc_CF1122: LitVarI4
  loc_CF112A: PopAdLdVar
  loc_CF112B: LitVarStr var_1C8, vbNullString
  loc_CF1130: PopAdLdVar
  loc_CF1131: FLdPr Me
  loc_CF1134: VCallAd Control_ID_ServDevaFlex
  loc_CF1137: FStAdFunc var_F8
  loc_CF113A: FLdPr var_F8
  loc_CF113D: LateIdCallSt
  loc_CF1145: FFree1Ad var_F8
  loc_CF1148: FLdPr Me
  loc_CF114B: MemLdI2 global_88
  loc_CF114E: CI4UI1
  loc_CF114F: CVarI4
  loc_CF1153: PopAdLdVar
  loc_CF1154: LitVarI4
  loc_CF115C: PopAdLdVar
  loc_CF115D: LitVarStr var_1C8, vbNullString
  loc_CF1162: PopAdLdVar
  loc_CF1163: FLdPr Me
  loc_CF1166: VCallAd Control_ID_ServDevaFlex
  loc_CF1169: FStAdFunc var_F8
  loc_CF116C: FLdPr var_F8
  loc_CF116F: LateIdCallSt
  loc_CF1177: FFree1Ad var_F8
  loc_CF117A: FLdPr Me
  loc_CF117D: MemLdI2 global_88
  loc_CF1180: CI4UI1
  loc_CF1181: CVarI4
  loc_CF1185: PopAdLdVar
  loc_CF1186: LitVarI4
  loc_CF118E: PopAdLdVar
  loc_CF118F: LitVarStr var_1C8, vbNullString
  loc_CF1194: PopAdLdVar
  loc_CF1195: FLdPr Me
  loc_CF1198: VCallAd Control_ID_ServDevaFlex
  loc_CF119B: FStAdFunc var_F8
  loc_CF119E: FLdPr var_F8
  loc_CF11A1: LateIdCallSt
  loc_CF11A9: FFree1Ad var_F8
  loc_CF11AC: FLdPr Me
  loc_CF11AF: MemLdI2 global_88
  loc_CF11B2: CI4UI1
  loc_CF11B3: CVarI4
  loc_CF11B7: PopAdLdVar
  loc_CF11B8: LitVarI4
  loc_CF11C0: PopAdLdVar
  loc_CF11C1: LitVarStr var_1C8, vbNullString
  loc_CF11C6: PopAdLdVar
  loc_CF11C7: FLdPr Me
  loc_CF11CA: VCallAd Control_ID_ServDevaFlex
  loc_CF11CD: FStAdFunc var_F8
  loc_CF11D0: FLdPr var_F8
  loc_CF11D3: LateIdCallSt
  loc_CF11DB: FFree1Ad var_F8
  loc_CF11DE: FLdPr Me
  loc_CF11E1: VCallAd Control_ID_ServDevaFlex
  loc_CF11E4: FStAdFunc var_F8
  loc_CF11E7: FLdPr var_F8
  loc_CF11EA: LateIdCall
  loc_CF11F2: FFree1Ad var_F8
  loc_CF11F5: ExitProcHresult
  loc_CF11F6: LitStr "Municipalidad de Guaymallén"
  loc_CF11F9: LitStr "Municipalidad de Lavalle"
  loc_CF11FC: EqStr
  loc_CF11FE: BranchF loc_CF1404
  loc_CF1201: FLdPr Me
  loc_CF1204: MemLdI2 global_88
  loc_CF1207: CI4UI1
  loc_CF1208: CVarI4
  loc_CF120C: PopAdLdVar
  loc_CF120D: LitVarI4
  loc_CF1215: PopAdLdVar
  loc_CF1216: FLdPr Me
  loc_CF1219: VCallAd Control_ID_ServDevaFlex
  loc_CF121C: FStAdFunc var_F8
  loc_CF121F: FLdPr var_F8
  loc_CF1222: LateIdCallLdVar
  loc_CF122C: CStrVarTmp
  loc_CF122D: FStStrNoPop var_29C
  loc_CF1230: CI2Str
  loc_CF1232: LitI2_Byte &H4B
  loc_CF1234: NeI2
  loc_CF1235: FFree1Str var_29C
  loc_CF1238: FFree1Ad var_F8
  loc_CF123B: FFree1Var var_DC = ""
  loc_CF123E: BranchF loc_CF1401
  loc_CF1241: FLdPr Me
  loc_CF1244: MemLdI2 global_88
  loc_CF1247: CI4UI1
  loc_CF1248: CVarI4
  loc_CF124C: PopAdLdVar
  loc_CF124D: LitVarI4
  loc_CF1255: PopAdLdVar
  loc_CF1256: FLdPr Me
  loc_CF1259: VCallAd Control_ID_ServDevaFlex
  loc_CF125C: FStAdFunc var_F8
  loc_CF125F: FLdPr var_F8
  loc_CF1262: LateIdCallLdVar
  loc_CF126C: CStrVarTmp
  loc_CF126D: CVarStr var_EC
  loc_CF1270: ImpAdCallI2 IsNumeric()
  loc_CF1275: NotI4
  loc_CF1276: FFree1Ad var_F8
  loc_CF1279: FFreeVar var_DC = ""
  loc_CF1280: BranchF loc_CF12B3
  loc_CF1283: LitStr "Debe ingresar el precio unitario. Verifique..."
  loc_CF1286: FLdPr Me
  loc_CF1289: MemStStrCopy
  loc_CF128D: FLdPr Me
  loc_CF1290: MemLdStr global_80
  loc_CF1293: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF1298: FLdPr Me
  loc_CF129B: VCallAd Control_ID_ServDevaFlex
  loc_CF129E: FStAdFunc var_F8
  loc_CF12A1: FLdPr var_F8
  loc_CF12A4: LateIdCall
  loc_CF12AC: FFree1Ad var_F8
  loc_CF12AF: ExitProcHresult
  loc_CF12B0: Branch loc_CF1321
  loc_CF12B3: FLdPr Me
  loc_CF12B6: MemLdI2 global_88
  loc_CF12B9: CI4UI1
  loc_CF12BA: CVarI4
  loc_CF12BE: PopAdLdVar
  loc_CF12BF: LitVarI4
  loc_CF12C7: PopAdLdVar
  loc_CF12C8: FLdPr Me
  loc_CF12CB: VCallAd Control_ID_ServDevaFlex
  loc_CF12CE: FStAdFunc var_F8
  loc_CF12D1: FLdPr var_F8
  loc_CF12D4: LateIdCallLdVar
  loc_CF12DE: CStrVarTmp
  loc_CF12DF: FStStrNoPop var_29C
  loc_CF12E2: CR8Str
  loc_CF12E4: LitI2_Byte 0
  loc_CF12E6: CR8I2
  loc_CF12E7: LeR8
  loc_CF12E8: FFree1Str var_29C
  loc_CF12EB: FFree1Ad var_F8
  loc_CF12EE: FFree1Var var_DC = ""
  loc_CF12F1: BranchF loc_CF1321
  loc_CF12F4: LitStr "El precio unitario debe ser mayor a cero. Verifique..."
  loc_CF12F7: FLdPr Me
  loc_CF12FA: MemStStrCopy
  loc_CF12FE: FLdPr Me
  loc_CF1301: MemLdStr global_80
  loc_CF1304: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF1309: FLdPr Me
  loc_CF130C: VCallAd Control_ID_ServDevaFlex
  loc_CF130F: FStAdFunc var_F8
  loc_CF1312: FLdPr var_F8
  loc_CF1315: LateIdCall
  loc_CF131D: FFree1Ad var_F8
  loc_CF1320: ExitProcHresult
  loc_CF1321: FLdPr Me
  loc_CF1324: MemLdI2 global_88
  loc_CF1327: CI4UI1
  loc_CF1328: CVarI4
  loc_CF132C: PopAdLdVar
  loc_CF132D: LitVarI4
  loc_CF1335: PopAdLdVar
  loc_CF1336: FLdPr Me
  loc_CF1339: VCallAd Control_ID_ServDevaFlex
  loc_CF133C: FStAdFunc var_F8
  loc_CF133F: FLdPr var_F8
  loc_CF1342: LateIdCallLdVar
  loc_CF134C: CStrVarTmp
  loc_CF134D: CVarStr var_EC
  loc_CF1350: ImpAdCallI2 IsNumeric()
  loc_CF1355: NotI4
  loc_CF1356: FFree1Ad var_F8
  loc_CF1359: FFreeVar var_DC = ""
  loc_CF1360: BranchF loc_CF1393
  loc_CF1363: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CF1366: FLdPr Me
  loc_CF1369: MemStStrCopy
  loc_CF136D: FLdPr Me
  loc_CF1370: MemLdStr global_80
  loc_CF1373: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF1378: FLdPr Me
  loc_CF137B: VCallAd Control_ID_ServDevaFlex
  loc_CF137E: FStAdFunc var_F8
  loc_CF1381: FLdPr var_F8
  loc_CF1384: LateIdCall
  loc_CF138C: FFree1Ad var_F8
  loc_CF138F: ExitProcHresult
  loc_CF1390: Branch loc_CF1401
  loc_CF1393: FLdPr Me
  loc_CF1396: MemLdI2 global_88
  loc_CF1399: CI4UI1
  loc_CF139A: CVarI4
  loc_CF139E: PopAdLdVar
  loc_CF139F: LitVarI4
  loc_CF13A7: PopAdLdVar
  loc_CF13A8: FLdPr Me
  loc_CF13AB: VCallAd Control_ID_ServDevaFlex
  loc_CF13AE: FStAdFunc var_F8
  loc_CF13B1: FLdPr var_F8
  loc_CF13B4: LateIdCallLdVar
  loc_CF13BE: CStrVarTmp
  loc_CF13BF: FStStrNoPop var_29C
  loc_CF13C2: CR8Str
  loc_CF13C4: LitI2_Byte 0
  loc_CF13C6: CR8I2
  loc_CF13C7: LeR8
  loc_CF13C8: FFree1Str var_29C
  loc_CF13CB: FFree1Ad var_F8
  loc_CF13CE: FFree1Var var_DC = ""
  loc_CF13D1: BranchF loc_CF1401
  loc_CF13D4: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CF13D7: FLdPr Me
  loc_CF13DA: MemStStrCopy
  loc_CF13DE: FLdPr Me
  loc_CF13E1: MemLdStr global_80
  loc_CF13E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF13E9: FLdPr Me
  loc_CF13EC: VCallAd Control_ID_ServDevaFlex
  loc_CF13EF: FStAdFunc var_F8
  loc_CF13F2: FLdPr var_F8
  loc_CF13F5: LateIdCall
  loc_CF13FD: FFree1Ad var_F8
  loc_CF1400: ExitProcHresult
  loc_CF1401: Branch loc_CF15C4
  loc_CF1404: FLdPr Me
  loc_CF1407: MemLdI2 global_88
  loc_CF140A: CI4UI1
  loc_CF140B: CVarI4
  loc_CF140F: PopAdLdVar
  loc_CF1410: LitVarI4
  loc_CF1418: PopAdLdVar
  loc_CF1419: FLdPr Me
  loc_CF141C: VCallAd Control_ID_ServDevaFlex
  loc_CF141F: FStAdFunc var_F8
  loc_CF1422: FLdPr var_F8
  loc_CF1425: LateIdCallLdVar
  loc_CF142F: CStrVarTmp
  loc_CF1430: CVarStr var_EC
  loc_CF1433: ImpAdCallI2 IsNumeric()
  loc_CF1438: NotI4
  loc_CF1439: FFree1Ad var_F8
  loc_CF143C: FFreeVar var_DC = ""
  loc_CF1443: BranchF loc_CF1476
  loc_CF1446: LitStr "Debe ingresar el precio unitario. Verifique..."
  loc_CF1449: FLdPr Me
  loc_CF144C: MemStStrCopy
  loc_CF1450: FLdPr Me
  loc_CF1453: MemLdStr global_80
  loc_CF1456: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF145B: FLdPr Me
  loc_CF145E: VCallAd Control_ID_ServDevaFlex
  loc_CF1461: FStAdFunc var_F8
  loc_CF1464: FLdPr var_F8
  loc_CF1467: LateIdCall
  loc_CF146F: FFree1Ad var_F8
  loc_CF1472: ExitProcHresult
  loc_CF1473: Branch loc_CF14E4
  loc_CF1476: FLdPr Me
  loc_CF1479: MemLdI2 global_88
  loc_CF147C: CI4UI1
  loc_CF147D: CVarI4
  loc_CF1481: PopAdLdVar
  loc_CF1482: LitVarI4
  loc_CF148A: PopAdLdVar
  loc_CF148B: FLdPr Me
  loc_CF148E: VCallAd Control_ID_ServDevaFlex
  loc_CF1491: FStAdFunc var_F8
  loc_CF1494: FLdPr var_F8
  loc_CF1497: LateIdCallLdVar
  loc_CF14A1: CStrVarTmp
  loc_CF14A2: FStStrNoPop var_29C
  loc_CF14A5: CR8Str
  loc_CF14A7: LitI2_Byte 0
  loc_CF14A9: CR8I2
  loc_CF14AA: LeR8
  loc_CF14AB: FFree1Str var_29C
  loc_CF14AE: FFree1Ad var_F8
  loc_CF14B1: FFree1Var var_DC = ""
  loc_CF14B4: BranchF loc_CF14E4
  loc_CF14B7: LitStr "El precio unitario debe ser mayor a cero. Verifique..."
  loc_CF14BA: FLdPr Me
  loc_CF14BD: MemStStrCopy
  loc_CF14C1: FLdPr Me
  loc_CF14C4: MemLdStr global_80
  loc_CF14C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF14CC: FLdPr Me
  loc_CF14CF: VCallAd Control_ID_ServDevaFlex
  loc_CF14D2: FStAdFunc var_F8
  loc_CF14D5: FLdPr var_F8
  loc_CF14D8: LateIdCall
  loc_CF14E0: FFree1Ad var_F8
  loc_CF14E3: ExitProcHresult
  loc_CF14E4: FLdPr Me
  loc_CF14E7: MemLdI2 global_88
  loc_CF14EA: CI4UI1
  loc_CF14EB: CVarI4
  loc_CF14EF: PopAdLdVar
  loc_CF14F0: LitVarI4
  loc_CF14F8: PopAdLdVar
  loc_CF14F9: FLdPr Me
  loc_CF14FC: VCallAd Control_ID_ServDevaFlex
  loc_CF14FF: FStAdFunc var_F8
  loc_CF1502: FLdPr var_F8
  loc_CF1505: LateIdCallLdVar
  loc_CF150F: CStrVarTmp
  loc_CF1510: CVarStr var_EC
  loc_CF1513: ImpAdCallI2 IsNumeric()
  loc_CF1518: NotI4
  loc_CF1519: FFree1Ad var_F8
  loc_CF151C: FFreeVar var_DC = ""
  loc_CF1523: BranchF loc_CF1556
  loc_CF1526: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CF1529: FLdPr Me
  loc_CF152C: MemStStrCopy
  loc_CF1530: FLdPr Me
  loc_CF1533: MemLdStr global_80
  loc_CF1536: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF153B: FLdPr Me
  loc_CF153E: VCallAd Control_ID_ServDevaFlex
  loc_CF1541: FStAdFunc var_F8
  loc_CF1544: FLdPr var_F8
  loc_CF1547: LateIdCall
  loc_CF154F: FFree1Ad var_F8
  loc_CF1552: ExitProcHresult
  loc_CF1553: Branch loc_CF15C4
  loc_CF1556: FLdPr Me
  loc_CF1559: MemLdI2 global_88
  loc_CF155C: CI4UI1
  loc_CF155D: CVarI4
  loc_CF1561: PopAdLdVar
  loc_CF1562: LitVarI4
  loc_CF156A: PopAdLdVar
  loc_CF156B: FLdPr Me
  loc_CF156E: VCallAd Control_ID_ServDevaFlex
  loc_CF1571: FStAdFunc var_F8
  loc_CF1574: FLdPr var_F8
  loc_CF1577: LateIdCallLdVar
  loc_CF1581: CStrVarTmp
  loc_CF1582: FStStrNoPop var_29C
  loc_CF1585: CR8Str
  loc_CF1587: LitI2_Byte 0
  loc_CF1589: CR8I2
  loc_CF158A: LeR8
  loc_CF158B: FFree1Str var_29C
  loc_CF158E: FFree1Ad var_F8
  loc_CF1591: FFree1Var var_DC = ""
  loc_CF1594: BranchF loc_CF15C4
  loc_CF1597: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CF159A: FLdPr Me
  loc_CF159D: MemStStrCopy
  loc_CF15A1: FLdPr Me
  loc_CF15A4: MemLdStr global_80
  loc_CF15A7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF15AC: FLdPr Me
  loc_CF15AF: VCallAd Control_ID_ServDevaFlex
  loc_CF15B2: FStAdFunc var_F8
  loc_CF15B5: FLdPr var_F8
  loc_CF15B8: LateIdCall
  loc_CF15C0: FFree1Ad var_F8
  loc_CF15C3: ExitProcHresult
  loc_CF15C4: FLdPr Me
  loc_CF15C7: MemLdRfVar from_stack_1.global_88
  loc_CF15CA: NextI2 var_2F4, loc_CF037E
  loc_CF15CF: LitI2_Byte 1
  loc_CF15D1: FLdPr Me
  loc_CF15D4: MemLdRfVar from_stack_1.global_88
  loc_CF15D7: FLdPr Me
  loc_CF15DA: VCallAd Control_ID_ServDevaFlex
  loc_CF15DD: FStAdFunc var_F8
  loc_CF15E0: FLdPr var_F8
  loc_CF15E3: LateIdLdVar var_DC DispID_4 0
  loc_CF15EA: CI4Var
  loc_CF15EC: LitI4 1
  loc_CF15F1: SubI4
  loc_CF15F2: CI2I4
  loc_CF15F3: FFree1Ad var_F8
  loc_CF15F6: FFree1Var var_DC = ""
  loc_CF15F9: ForI2 var_344
  loc_CF15FF: FLdPr Me
  loc_CF1602: MemLdI2 global_88
  loc_CF1605: CI4UI1
  loc_CF1606: FLdPr Me
  loc_CF1609: VCallAd Control_ID_ServDevaFlex
  loc_CF160C: FStAdFunc var_F8
  loc_CF160F: FLdPr var_F8
  loc_CF1612: LateIdLdVar var_DC DispID_10 0
  loc_CF1619: CI4Var
  loc_CF161B: NeI4
  loc_CF161C: FFree1Ad var_F8
  loc_CF161F: FFree1Var var_DC = ""
  loc_CF1622: BranchF loc_CF16FB
  loc_CF1625: FLdPr Me
  loc_CF1628: MemLdI2 global_88
  loc_CF162B: CI4UI1
  loc_CF162C: CVarI4
  loc_CF1630: PopAdLdVar
  loc_CF1631: LitVarI4
  loc_CF1639: PopAdLdVar
  loc_CF163A: FLdPr Me
  loc_CF163D: VCallAd Control_ID_ServDevaFlex
  loc_CF1640: FStAdFunc var_F8
  loc_CF1643: FLdPr var_F8
  loc_CF1646: LateIdCallLdVar
  loc_CF1650: CStrVarTmp
  loc_CF1651: FStStrNoPop var_29C
  loc_CF1654: FLdPr Me
  loc_CF1657: VCallAd Control_ID_ServDevaFlex
  loc_CF165A: FStAdFunc var_2A0
  loc_CF165D: FLdPr var_2A0
  loc_CF1660: LateIdLdVar var_EC DispID_10 0
  loc_CF1667: CI4Var
  loc_CF1669: CVarI4
  loc_CF166D: PopAdLdVar
  loc_CF166E: LitVarI4
  loc_CF1676: PopAdLdVar
  loc_CF1677: FLdPr Me
  loc_CF167A: VCallAd Control_ID_ServDevaFlex
  loc_CF167D: FStAdFunc var_2B4
  loc_CF1680: FLdPr var_2B4
  loc_CF1683: LateIdCallLdVar
  loc_CF168D: CStrVarTmp
  loc_CF168E: FStStrNoPop var_2A4
  loc_CF1691: EqStr
  loc_CF1693: FFreeStr var_29C = ""
  loc_CF169A: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CF16A3: FFreeVar var_DC = "": var_EC = ""
  loc_CF16AC: BranchF loc_CF16FB
  loc_CF16AF: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_CF16B2: FLdPr Me
  loc_CF16B5: MemLdI2 global_88
  loc_CF16B8: CStrUI1
  loc_CF16BA: FStStrNoPop var_29C
  loc_CF16BD: ConcatStr
  loc_CF16BE: FStStrNoPop var_2A4
  loc_CF16C1: LitStr ". Verifique"
  loc_CF16C4: ConcatStr
  loc_CF16C5: FStStrNoPop var_2A8
  loc_CF16C8: FLdPr Me
  loc_CF16CB: MemStStrCopy
  loc_CF16CF: FFreeStr var_29C = "": var_2A4 = ""
  loc_CF16D8: FLdPr Me
  loc_CF16DB: MemLdStr global_80
  loc_CF16DE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF16E3: FLdPr Me
  loc_CF16E6: VCallAd Control_ID_ServDevaFlex
  loc_CF16E9: FStAdFunc var_F8
  loc_CF16EC: FLdPr var_F8
  loc_CF16EF: LateIdCall
  loc_CF16F7: FFree1Ad var_F8
  loc_CF16FA: ExitProcHresult
  loc_CF16FB: FLdPr Me
  loc_CF16FE: MemLdRfVar from_stack_1.global_88
  loc_CF1701: NextI2 var_344, loc_CF15FF
  loc_CF1706: Call Proc_280_26_B2C6C8()
  loc_CF170B: FLdRfVar var_29C
  loc_CF170E: FLdPr Me
  loc_CF1711: VCallAd Control_ID_TotaBoleTxt
  loc_CF1714: FStAdFunc var_F8
  loc_CF1717: FLdPr var_F8
  loc_CF171A:  = Me.Text
  loc_CF171F: LitI4 2
  loc_CF1724: ILdRf var_29C
  loc_CF1727: CR8Str
  loc_CF1729: CVarR8
  loc_CF172D: FLdRfVar var_EC
  loc_CF1730: ImpAdCallFPR4  = Round(, )
  loc_CF1735: FLdRfVar var_EC
  loc_CF1738: LitVarI2 var_108, 0
  loc_CF173D: HardType
  loc_CF173E: LeVarBool
  loc_CF1740: FFree1Str var_29C
  loc_CF1743: FFree1Ad var_F8
  loc_CF1746: FFreeVar var_DC = ""
  loc_CF174D: BranchF loc_CF177D
  loc_CF1750: LitStr "El TOTAL del boleto es incorrecto. Verifique..."
  loc_CF1753: FLdPr Me
  loc_CF1756: MemStStrCopy
  loc_CF175A: FLdPr Me
  loc_CF175D: MemLdStr global_80
  loc_CF1760: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF1765: FLdPr Me
  loc_CF1768: VCallAd Control_ID_ServDevaFlex
  loc_CF176B: FStAdFunc var_F8
  loc_CF176E: FLdPr var_F8
  loc_CF1771: LateIdCall
  loc_CF1779: FFree1Ad var_F8
  loc_CF177C: ExitProcHresult
  loc_CF177D: LitI2_Byte &HB
  loc_CF177F: FLdPr Me
  loc_CF1782: Me.MousePointer = from_stack_1
  loc_CF1787: LitI2_Byte 0
  loc_CF1789: FLdPr Me
  loc_CF178C: VCallAd Control_ID_ConfirmarCmd
  loc_CF178F: FStAdFunc var_F8
  loc_CF1792: FLdPr var_F8
  loc_CF1795: Me.Enabled = from_stack_1b
  loc_CF179A: FFree1Ad var_F8
  loc_CF179D: LitI2_Byte 0
  loc_CF179F: CR8I2
  loc_CF17A0: FStFPR8 var_A8
  loc_CF17A3: LitI2_Byte 0
  loc_CF17A5: CR8I2
  loc_CF17A6: FStFPR8 var_B0
  loc_CF17A9: LitI2_Byte 0
  loc_CF17AB: CR8I2
  loc_CF17AC: FStFPR8 var_B8
  loc_CF17AF: FLdRfVar var_F0
  loc_CF17B2: FLdI2 var_9E
  loc_CF17B5: FLdPr Me
  loc_CF17B8: MemLdRfVar from_stack_1.global_52
  loc_CF17BB: NewIfNullPr clsnumebole
  loc_CF17BE: from_stack_2v = clsnumebole.NuevoRegistro(from_stack_1v)
  loc_CF17C3: ILdRf var_F0
  loc_CF17C6: FStR4 var_8C
  loc_CF17C9: LitI2_Byte 0
  loc_CF17CB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CF17D0: FStFPR8 var_3D4
  loc_CF17D3: FLdPr Me
  loc_CF17D6: VCallAd Control_ID_FeveCtctMsk
  loc_CF17D9: FStAdFunc var_F8
  loc_CF17DC: FLdPr var_F8
  loc_CF17DF: LateIdLdVar var_118 DispID_15 0
  loc_CF17E6: PopAd
  loc_CF17E8: FLdRfVar var_388
  loc_CF17EB: FLdPr Me
  loc_CF17EE: VCallAd Control_ID_TotaBoleTxt
  loc_CF17F1: FStAdFunc var_2B8
  loc_CF17F4: FLdPr var_2B8
  loc_CF17F7:  = Me.Text
  loc_CF17FC: FLdRfVar var_39C
  loc_CF17FF: FLdPr Me
  loc_CF1802: VCallAd Control_ID_DescBoleTxt
  loc_CF1805: FStAdFunc var_2BC
  loc_CF1808: FLdPr var_2BC
  loc_CF180B:  = Me.Text
  loc_CF1810: FLdRfVar var_3B0
  loc_CF1813: FLdPr Me
  loc_CF1816: VCallAd Control_ID_TotalTxt
  loc_CF1819: FStAdFunc var_2C0
  loc_CF181C: FLdPr var_2C0
  loc_CF181F:  = Me.Text
  loc_CF1824: LitStr "START TRANSACTION; INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ExpeBole, ObseBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua) "
  loc_CF1827: LitStr " VALUES ("
  loc_CF182A: ConcatStr
  loc_CF182B: FStStrNoPop var_29C
  loc_CF182E: FLdI2 var_9E
  loc_CF1831: CStrUI1
  loc_CF1833: FStStrNoPop var_2A4
  loc_CF1836: ConcatStr
  loc_CF1837: FStStrNoPop var_2A8
  loc_CF183A: LitStr ","
  loc_CF183D: ConcatStr
  loc_CF183E: FStStrNoPop var_2AC
  loc_CF1841: ILdRf var_8C
  loc_CF1844: CStrI4
  loc_CF1846: FStStrNoPop var_2B0
  loc_CF1849: ConcatStr
  loc_CF184A: FStStrNoPop var_2F8
  loc_CF184D: LitStr ",3,'','"
  loc_CF1850: ConcatStr
  loc_CF1851: FStStrNoPop var_300
  loc_CF1854: FLdRfVar var_2FC
  loc_CF1857: FLdPr Me
  loc_CF185A: MemLdRfVar from_stack_1.global_56
  loc_CF185D: NewIfNullPr clspersonas
  loc_CF1860: from_stack_1 = clspersonas.CucuPers
  loc_CF1865: ILdRf var_2FC
  loc_CF1868: ConcatStr
  loc_CF1869: FStStrNoPop var_348
  loc_CF186C: LitStr "','"
  loc_CF186F: ConcatStr
  loc_CF1870: FStStrNoPop var_34C
  loc_CF1873: LitI4 1
  loc_CF1878: LitI4 1
  loc_CF187D: LitVarStr var_108, "yyyy-mm-dd"
  loc_CF1882: FStVarCopyObj var_EC
  loc_CF1885: FLdRfVar var_EC
  loc_CF1888: FLdFPR8 var_3D4
  loc_CF188B: CVarDate var_DC
  loc_CF188F: ImpAdCallI2 Format$(, )
  loc_CF1894: FStStrNoPop var_350
  loc_CF1897: ConcatStr
  loc_CF1898: FStStrNoPop var_354
  loc_CF189B: LitStr "','"
  loc_CF189E: ConcatStr
  loc_CF189F: FStStrNoPop var_358
  loc_CF18A2: LitI4 1
  loc_CF18A7: LitI4 1
  loc_CF18AC: LitVarStr var_148, "yyyy-mm-dd"
  loc_CF18B1: FStVarCopyObj var_138
  loc_CF18B4: FLdRfVar var_138
  loc_CF18B7: FLdRfVar var_118
  loc_CF18BA: CStrVarTmp
  loc_CF18BB: CVarStr var_128
  loc_CF18BE: ImpAdCallI2 Format$(, )
  loc_CF18C3: FStStrNoPop var_35C
  loc_CF18C6: ConcatStr
  loc_CF18C7: FStStrNoPop var_360
  loc_CF18CA: LitStr "',"
  loc_CF18CD: ConcatStr
  loc_CF18CE: FStStrNoPop var_364
  loc_CF18D1: FLdPr Me
  loc_CF18D4: MemLdI2 global_100
  loc_CF18D7: CStrUI1
  loc_CF18D9: FStStrNoPop var_368
  loc_CF18DC: ConcatStr
  loc_CF18DD: FStStrNoPop var_36C
  loc_CF18E0: LitStr ",'Ventanilla','Emitido',0,0,'"
  loc_CF18E3: ConcatStr
  loc_CF18E4: FStStrNoPop var_374
  loc_CF18E7: FLdRfVar var_370
  loc_CF18EA: FLdPr Me
  loc_CF18ED: VCallAd Control_ID_ExpeCtctTxt
  loc_CF18F0: FStAdFunc var_2A0
  loc_CF18F3: FLdPr var_2A0
  loc_CF18F6:  = Me.Text
  loc_CF18FB: ILdRf var_370
  loc_CF18FE: ConcatStr
  loc_CF18FF: FStStrNoPop var_378
  loc_CF1902: LitStr "','"
  loc_CF1905: ConcatStr
  loc_CF1906: FStStrNoPop var_380
  loc_CF1909: FLdRfVar var_37C
  loc_CF190C: FLdPr Me
  loc_CF190F: VCallAd Control_ID_DetalleTxt
  loc_CF1912: FStAdFunc var_2B4
  loc_CF1915: FLdPr var_2B4
  loc_CF1918:  = Me.Text
  loc_CF191D: ILdRf var_37C
  loc_CF1920: ConcatStr
  loc_CF1921: FStStrNoPop var_384
  loc_CF1924: LitStr "',"
  loc_CF1927: ConcatStr
  loc_CF1928: FStStrNoPop var_390
  loc_CF192B: LitI4 0
  loc_CF1930: LitI4 -1
  loc_CF1935: LitI4 1
  loc_CF193A: LitStr "."
  loc_CF193D: LitStr ","
  loc_CF1940: ILdRf var_388
  loc_CF1943: CR8Str
  loc_CF1945: CStrR8
  loc_CF1947: FStStrNoPop var_38C
  loc_CF194A: ImpAdCallI2 Replace(, , , , , )
  loc_CF194F: FStStrNoPop var_394
  loc_CF1952: ConcatStr
  loc_CF1953: FStStrNoPop var_398
  loc_CF1956: LitStr ",0,"
  loc_CF1959: ConcatStr
  loc_CF195A: FStStrNoPop var_3A4
  loc_CF195D: LitI4 0
  loc_CF1962: LitI4 -1
  loc_CF1967: LitI4 1
  loc_CF196C: LitStr "."
  loc_CF196F: LitStr ","
  loc_CF1972: ILdRf var_39C
  loc_CF1975: CR8Str
  loc_CF1977: CStrR8
  loc_CF1979: FStStrNoPop var_3A0
  loc_CF197C: ImpAdCallI2 Replace(, , , , , )
  loc_CF1981: FStStrNoPop var_3A8
  loc_CF1984: ConcatStr
  loc_CF1985: FStStrNoPop var_3AC
  loc_CF1988: LitStr ",0,0,0,0,"
  loc_CF198B: ConcatStr
  loc_CF198C: FStStrNoPop var_3B8
  loc_CF198F: LitI4 0
  loc_CF1994: LitI4 -1
  loc_CF1999: LitI4 1
  loc_CF199E: LitStr "."
  loc_CF19A1: LitStr ","
  loc_CF19A4: ILdRf var_3B0
  loc_CF19A7: CR8Str
  loc_CF19A9: CStrR8
  loc_CF19AB: FStStrNoPop var_3B4
  loc_CF19AE: ImpAdCallI2 Replace(, , , , , )
  loc_CF19B3: FStStrNoPop var_3BC
  loc_CF19B6: ConcatStr
  loc_CF19B7: FStStrNoPop var_3C0
  loc_CF19BA: LitStr ",'"
  loc_CF19BD: ConcatStr
  loc_CF19BE: FStStrNoPop var_3C4
  loc_CF19C1: ImpAdLdI4 MemVar_D9302C
  loc_CF19C4: ConcatStr
  loc_CF19C5: FStStrNoPop var_3C8
  loc_CF19C8: LitStr "');"
  loc_CF19CB: ConcatStr
  loc_CF19CC: FStStrNoPop var_3CC
  loc_CF19CF: FLdPr Me
  loc_CF19D2: MemStStrCopy
  loc_CF19D6: FFreeStr var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_29C = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2F8 = "": var_300 = "": var_2FC = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_374 = "": var_370 = "": var_378 = "": var_380 = "": var_37C = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = "": var_398 = ""
  loc_CF1A2D: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = "": var_2B8 = "": var_2BC = ""
  loc_CF1A3C: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = ""
  loc_CF1A49: FLdRfVar var_29C
  loc_CF1A4C: FLdPr Me
  loc_CF1A4F: VCallAd Control_ID_TotalTxt
  loc_CF1A52: FStAdFunc var_F8
  loc_CF1A55: FLdPr var_F8
  loc_CF1A58:  = Me.Text
  loc_CF1A5D: LitI4 2
  loc_CF1A62: ILdRf var_29C
  loc_CF1A65: CR8Str
  loc_CF1A67: CVarR8
  loc_CF1A6B: FLdRfVar var_EC
  loc_CF1A6E: ImpAdCallFPR4  = Round(, )
  loc_CF1A73: FLdRfVar var_EC
  loc_CF1A76: CR4Var
  loc_CF1A77: FStFPR8 var_A8
  loc_CF1A7A: FFree1Str var_29C
  loc_CF1A7D: FFree1Ad var_F8
  loc_CF1A80: FFreeVar var_DC = ""
  loc_CF1A87: LitI2_Byte 0
  loc_CF1A89: FStI2 var_86
  loc_CF1A8C: LitI2_Byte 0
  loc_CF1A8E: CR8I2
  loc_CF1A8F: FStFPR8 var_9C
  loc_CF1A92: LitI2_Byte &HFF
  loc_CF1A94: FStI2 var_BC
  loc_CF1A97: LitI2_Byte 1
  loc_CF1A99: FLdPr Me
  loc_CF1A9C: MemLdRfVar from_stack_1.global_88
  loc_CF1A9F: FLdPr Me
  loc_CF1AA2: VCallAd Control_ID_ServDevaFlex
  loc_CF1AA5: FStAdFunc var_F8
  loc_CF1AA8: FLdPr var_F8
  loc_CF1AAB: LateIdLdVar var_DC DispID_4 0
  loc_CF1AB2: CI4Var
  loc_CF1AB4: LitI4 1
  loc_CF1AB9: SubI4
  loc_CF1ABA: CI2I4
  loc_CF1ABB: FFree1Ad var_F8
  loc_CF1ABE: FFree1Var var_DC = ""
  loc_CF1AC1: ForI2 var_3D8
  loc_CF1AC7: FLdPr Me
  loc_CF1ACA: MemLdI2 global_88
  loc_CF1ACD: CI4UI1
  loc_CF1ACE: CVarI4
  loc_CF1AD2: PopAdLdVar
  loc_CF1AD3: LitVarI4
  loc_CF1ADB: PopAdLdVar
  loc_CF1ADC: FLdPr Me
  loc_CF1ADF: VCallAd Control_ID_ServDevaFlex
  loc_CF1AE2: FStAdFunc var_F8
  loc_CF1AE5: FLdPr var_F8
  loc_CF1AE8: LateIdCallLdVar
  loc_CF1AF2: CStrVarTmp
  loc_CF1AF3: CVarStr var_EC
  loc_CF1AF6: ImpAdCallI2 IsNumeric()
  loc_CF1AFB: FFree1Ad var_F8
  loc_CF1AFE: FFreeVar var_DC = ""
  loc_CF1B05: BranchF loc_CF23FB
  loc_CF1B08: FLdI2 var_86
  loc_CF1B0B: LitI2_Byte 1
  loc_CF1B0D: AddI2
  loc_CF1B0E: FStI2 var_86
  loc_CF1B11: FLdPr Me
  loc_CF1B14: MemLdI2 global_88
  loc_CF1B17: CI4UI1
  loc_CF1B18: CVarI4
  loc_CF1B1C: PopAdLdVar
  loc_CF1B1D: LitVarI4
  loc_CF1B25: PopAdLdVar
  loc_CF1B26: FLdPr Me
  loc_CF1B29: VCallAd Control_ID_ServDevaFlex
  loc_CF1B2C: FStAdFunc var_F8
  loc_CF1B2F: FLdPr var_F8
  loc_CF1B32: LateIdCallLdVar
  loc_CF1B3C: PopAd
  loc_CF1B3E: FLdRfVar var_2A4
  loc_CF1B41: FLdPr Me
  loc_CF1B44: VCallAd Control_ID_PorcDescTxt
  loc_CF1B47: FStAdFunc var_2A0
  loc_CF1B4A: FLdPr var_2A0
  loc_CF1B4D:  = Me.Text
  loc_CF1B52: LitI4 2
  loc_CF1B57: FLdRfVar var_DC
  loc_CF1B5A: CStrVarTmp
  loc_CF1B5B: FStStrNoPop var_29C
  loc_CF1B5E: CR8Str
  loc_CF1B60: ILdRf var_2A4
  loc_CF1B63: CR8Str
  loc_CF1B65: MulR8
  loc_CF1B66: LitI2_Byte &H64
  loc_CF1B68: CR8I2
  loc_CF1B69: DivR8
  loc_CF1B6A: CVarR8
  loc_CF1B6E: FLdRfVar var_118
  loc_CF1B71: ImpAdCallFPR4  = Round(, )
  loc_CF1B76: FLdRfVar var_118
  loc_CF1B79: CR4Var
  loc_CF1B7A: FStFPR8 var_94
  loc_CF1B7D: FFreeStr var_29C = ""
  loc_CF1B84: FFreeAd var_F8 = ""
  loc_CF1B8B: FFreeVar var_DC = "": var_EC = ""
  loc_CF1B94: FLdFPR8 var_9C
  loc_CF1B97: FLdFPR8 var_94
  loc_CF1B9A: AddR8
  loc_CF1B9B: FStFPR8 var_9C
  loc_CF1B9E: FLdPr Me
  loc_CF1BA1: MemLdI2 global_88
  loc_CF1BA4: CI4UI1
  loc_CF1BA5: FLdPr Me
  loc_CF1BA8: VCallAd Control_ID_ServDevaFlex
  loc_CF1BAB: FStAdFunc var_F8
  loc_CF1BAE: FLdPr var_F8
  loc_CF1BB1: LateIdLdVar var_DC DispID_4 0
  loc_CF1BB8: CI4Var
  loc_CF1BBA: LitI4 1
  loc_CF1BBF: SubI4
  loc_CF1BC0: EqI4
  loc_CF1BC1: FFree1Ad var_F8
  loc_CF1BC4: FFree1Var var_DC = ""
  loc_CF1BC7: BranchF loc_CF1C6D
  loc_CF1BCA: FLdRfVar var_29C
  loc_CF1BCD: FLdPr Me
  loc_CF1BD0: VCallAd Control_ID_DescBoleTxt
  loc_CF1BD3: FStAdFunc var_F8
  loc_CF1BD6: FLdPr var_F8
  loc_CF1BD9:  = Me.Text
  loc_CF1BDE: FLdFPR8 var_9C
  loc_CF1BE1: ILdRf var_29C
  loc_CF1BE4: CR8Str
  loc_CF1BE6: LtR8
  loc_CF1BE7: FFree1Str var_29C
  loc_CF1BEA: FFree1Ad var_F8
  loc_CF1BED: BranchF loc_CF1C1D
  loc_CF1BF0: FLdRfVar var_29C
  loc_CF1BF3: FLdPr Me
  loc_CF1BF6: VCallAd Control_ID_DescBoleTxt
  loc_CF1BF9: FStAdFunc var_F8
  loc_CF1BFC: FLdPr var_F8
  loc_CF1BFF:  = Me.Text
  loc_CF1C04: FLdFPR8 var_94
  loc_CF1C07: ILdRf var_29C
  loc_CF1C0A: CR8Str
  loc_CF1C0C: FLdFPR8 var_9C
  loc_CF1C0F: SubR4
  loc_CF1C10: AddR8
  loc_CF1C11: FStFPR8 var_94
  loc_CF1C14: FFree1Str var_29C
  loc_CF1C17: FFree1Ad var_F8
  loc_CF1C1A: Branch loc_CF1C6D
  loc_CF1C1D: FLdRfVar var_29C
  loc_CF1C20: FLdPr Me
  loc_CF1C23: VCallAd Control_ID_DescBoleTxt
  loc_CF1C26: FStAdFunc var_F8
  loc_CF1C29: FLdPr var_F8
  loc_CF1C2C:  = Me.Text
  loc_CF1C31: FLdFPR8 var_9C
  loc_CF1C34: ILdRf var_29C
  loc_CF1C37: CR8Str
  loc_CF1C39: GtR4
  loc_CF1C3A: FFree1Str var_29C
  loc_CF1C3D: FFree1Ad var_F8
  loc_CF1C40: BranchF loc_CF1C6D
  loc_CF1C43: FLdRfVar var_29C
  loc_CF1C46: FLdPr Me
  loc_CF1C49: VCallAd Control_ID_DescBoleTxt
  loc_CF1C4C: FStAdFunc var_F8
  loc_CF1C4F: FLdPr var_F8
  loc_CF1C52:  = Me.Text
  loc_CF1C57: FLdFPR8 var_94
  loc_CF1C5A: FLdFPR8 var_9C
  loc_CF1C5D: ILdRf var_29C
  loc_CF1C60: CR8Str
  loc_CF1C62: SubR4
  loc_CF1C63: SubR4
  loc_CF1C64: FStFPR8 var_94
  loc_CF1C67: FFree1Str var_29C
  loc_CF1C6A: FFree1Ad var_F8
  loc_CF1C6D: FLdPr Me
  loc_CF1C70: MemLdI2 global_88
  loc_CF1C73: CI4UI1
  loc_CF1C74: CVarI4
  loc_CF1C78: PopAdLdVar
  loc_CF1C79: LitVarI4
  loc_CF1C81: PopAdLdVar
  loc_CF1C82: FLdPr Me
  loc_CF1C85: VCallAd Control_ID_ServDevaFlex
  loc_CF1C88: FStAdFunc var_F8
  loc_CF1C8B: FLdPr var_F8
  loc_CF1C8E: LateIdCallLdVar
  loc_CF1C98: CStrVarTmp
  loc_CF1C99: FStStrNoPop var_29C
  loc_CF1C9C: CI2Str
  loc_CF1C9E: LitI2 150
  loc_CF1CA1: EqI2
  loc_CF1CA2: FLdPr Me
  loc_CF1CA5: MemLdI2 global_88
  loc_CF1CA8: CI4UI1
  loc_CF1CA9: CVarI4
  loc_CF1CAD: PopAdLdVar
  loc_CF1CAE: LitVarI4
  loc_CF1CB6: PopAdLdVar
  loc_CF1CB7: FLdPr Me
  loc_CF1CBA: VCallAd Control_ID_ServDevaFlex
  loc_CF1CBD: FStAdFunc var_2A0
  loc_CF1CC0: FLdPr var_2A0
  loc_CF1CC3: LateIdCallLdVar
  loc_CF1CCD: CStrVarTmp
  loc_CF1CCE: FStStrNoPop var_2A4
  loc_CF1CD1: CI2Str
  loc_CF1CD3: LitI2 151
  loc_CF1CD6: EqI2
  loc_CF1CD7: OrI4
  loc_CF1CD8: FLdPr Me
  loc_CF1CDB: MemLdI2 global_88
  loc_CF1CDE: CI4UI1
  loc_CF1CDF: CVarI4
  loc_CF1CE3: PopAdLdVar
  loc_CF1CE4: LitVarI4
  loc_CF1CEC: PopAdLdVar
  loc_CF1CED: FLdPr Me
  loc_CF1CF0: VCallAd Control_ID_ServDevaFlex
  loc_CF1CF3: FStAdFunc var_2B4
  loc_CF1CF6: FLdPr var_2B4
  loc_CF1CF9: LateIdCallLdVar
  loc_CF1D03: CStrVarTmp
  loc_CF1D04: FStStrNoPop var_2A8
  loc_CF1D07: CI2Str
  loc_CF1D09: LitI2 152
  loc_CF1D0C: EqI2
  loc_CF1D0D: OrI4
  loc_CF1D0E: FFreeStr var_29C = "": var_2A4 = ""
  loc_CF1D17: FFreeAd var_F8 = "": var_2A0 = ""
  loc_CF1D20: FFreeVar var_DC = "": var_EC = ""
  loc_CF1D29: BranchF loc_CF1D31
  loc_CF1D2C: LitI2_Byte 0
  loc_CF1D2E: FStI2 var_BC
  loc_CF1D31: FLdPr Me
  loc_CF1D34: MemLdI2 global_88
  loc_CF1D37: CI4UI1
  loc_CF1D38: CVarI4
  loc_CF1D3C: PopAdLdVar
  loc_CF1D3D: LitVarI4
  loc_CF1D45: PopAdLdVar
  loc_CF1D46: FLdPr Me
  loc_CF1D49: VCallAd Control_ID_ServDevaFlex
  loc_CF1D4C: FStAdFunc var_2B4
  loc_CF1D4F: FLdPr var_2B4
  loc_CF1D52: LateIdCallLdVar
  loc_CF1D5C: PopAd
  loc_CF1D5E: FLdPr Me
  loc_CF1D61: MemLdI2 global_88
  loc_CF1D64: CI4UI1
  loc_CF1D65: CVarI4
  loc_CF1D69: PopAdLdVar
  loc_CF1D6A: LitVarI4
  loc_CF1D72: PopAdLdVar
  loc_CF1D73: FLdPr Me
  loc_CF1D76: VCallAd Control_ID_ServDevaFlex
  loc_CF1D79: FStAdFunc var_2B8
  loc_CF1D7C: FLdPr var_2B8
  loc_CF1D7F: LateIdCallLdVar
  loc_CF1D89: PopAd
  loc_CF1D8B: FLdPr Me
  loc_CF1D8E: MemLdStr global_84
  loc_CF1D91: LitStr " INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo) "
  loc_CF1D94: ConcatStr
  loc_CF1D95: FStStrNoPop var_29C
  loc_CF1D98: LitStr " VALUES ("
  loc_CF1D9B: ConcatStr
  loc_CF1D9C: FStStrNoPop var_2A4
  loc_CF1D9F: FLdI2 var_9E
  loc_CF1DA2: CStrUI1
  loc_CF1DA4: FStStrNoPop var_2A8
  loc_CF1DA7: ConcatStr
  loc_CF1DA8: FStStrNoPop var_2AC
  loc_CF1DAB: LitStr ","
  loc_CF1DAE: ConcatStr
  loc_CF1DAF: FStStrNoPop var_2B0
  loc_CF1DB2: ILdRf var_8C
  loc_CF1DB5: CStrI4
  loc_CF1DB7: FStStrNoPop var_2F8
  loc_CF1DBA: ConcatStr
  loc_CF1DBB: FStStrNoPop var_2FC
  loc_CF1DBE: LitStr ","
  loc_CF1DC1: ConcatStr
  loc_CF1DC2: FStStrNoPop var_300
  loc_CF1DC5: FLdI2 var_9E
  loc_CF1DC8: CStrUI1
  loc_CF1DCA: FStStrNoPop var_348
  loc_CF1DCD: ConcatStr
  loc_CF1DCE: FStStrNoPop var_34C
  loc_CF1DD1: LitStr ","
  loc_CF1DD4: ConcatStr
  loc_CF1DD5: FStStrNoPop var_350
  loc_CF1DD8: FLdI2 var_A0
  loc_CF1DDB: CStrUI1
  loc_CF1DDD: FStStrNoPop var_354
  loc_CF1DE0: ConcatStr
  loc_CF1DE1: FStStrNoPop var_358
  loc_CF1DE4: LitStr ","
  loc_CF1DE7: ConcatStr
  loc_CF1DE8: FStStrNoPop var_35C
  loc_CF1DEB: FLdI2 var_86
  loc_CF1DEE: CStrUI1
  loc_CF1DF0: FStStrNoPop var_360
  loc_CF1DF3: ConcatStr
  loc_CF1DF4: FStStrNoPop var_364
  loc_CF1DF7: LitStr ",1,1,3,'','Aforos Varios',0,0,0,0,"
  loc_CF1DFA: ConcatStr
  loc_CF1DFB: FStStrNoPop var_368
  loc_CF1DFE: FLdPr Me
  loc_CF1E01: MemLdI2 global_88
  loc_CF1E04: CI4UI1
  loc_CF1E05: CVarI4
  loc_CF1E09: PopAdLdVar
  loc_CF1E0A: LitVarI4
  loc_CF1E12: PopAdLdVar
  loc_CF1E13: FLdPr Me
  loc_CF1E16: VCallAd Control_ID_ServDevaFlex
  loc_CF1E19: FStAdFunc var_F8
  loc_CF1E1C: FLdPr var_F8
  loc_CF1E1F: LateIdCallLdVar
  loc_CF1E29: CStrVarTmp
  loc_CF1E2A: FStStrNoPop var_36C
  loc_CF1E2D: ConcatStr
  loc_CF1E2E: FStStrNoPop var_370
  loc_CF1E31: LitStr ",'"
  loc_CF1E34: ConcatStr
  loc_CF1E35: FStStrNoPop var_374
  loc_CF1E38: FLdPr Me
  loc_CF1E3B: MemLdI2 global_88
  loc_CF1E3E: CI4UI1
  loc_CF1E3F: CVarI4
  loc_CF1E43: PopAdLdVar
  loc_CF1E44: LitVarI4
  loc_CF1E4C: PopAdLdVar
  loc_CF1E4D: FLdPr Me
  loc_CF1E50: VCallAd Control_ID_ServDevaFlex
  loc_CF1E53: FStAdFunc var_2A0
  loc_CF1E56: FLdPr var_2A0
  loc_CF1E59: LateIdCallLdVar
  loc_CF1E63: CStrVarTmp
  loc_CF1E64: FStStrNoPop var_378
  loc_CF1E67: ConcatStr
  loc_CF1E68: FStStrNoPop var_37C
  loc_CF1E6B: LitStr "',"
  loc_CF1E6E: ConcatStr
  loc_CF1E6F: FStStrNoPop var_388
  loc_CF1E72: LitI4 0
  loc_CF1E77: LitI4 -1
  loc_CF1E7C: LitI4 1
  loc_CF1E81: LitStr "."
  loc_CF1E84: LitStr ","
  loc_CF1E87: FLdRfVar var_118
  loc_CF1E8A: CStrVarTmp
  loc_CF1E8B: FStStrNoPop var_380
  loc_CF1E8E: CR8Str
  loc_CF1E90: CStrR8
  loc_CF1E92: FStStrNoPop var_384
  loc_CF1E95: ImpAdCallI2 Replace(, , , , , )
  loc_CF1E9A: FStStrNoPop var_38C
  loc_CF1E9D: ConcatStr
  loc_CF1E9E: FStStrNoPop var_390
  loc_CF1EA1: LitStr ","
  loc_CF1EA4: ConcatStr
  loc_CF1EA5: FStStrNoPop var_398
  loc_CF1EA8: LitI4 0
  loc_CF1EAD: LitI4 -1
  loc_CF1EB2: LitI4 1
  loc_CF1EB7: LitStr "."
  loc_CF1EBA: LitStr ","
  loc_CF1EBD: FLdFPR8 var_94
  loc_CF1EC0: CStrR8
  loc_CF1EC2: FStStrNoPop var_394
  loc_CF1EC5: ImpAdCallI2 Replace(, , , , , )
  loc_CF1ECA: FStStrNoPop var_39C
  loc_CF1ECD: ConcatStr
  loc_CF1ECE: FStStrNoPop var_3A0
  loc_CF1ED1: LitStr ",0,0,0,0,0,"
  loc_CF1ED4: ConcatStr
  loc_CF1ED5: FStStrNoPop var_3AC
  loc_CF1ED8: LitI4 0
  loc_CF1EDD: LitI4 -1
  loc_CF1EE2: LitI4 1
  loc_CF1EE7: LitStr "."
  loc_CF1EEA: LitStr ","
  loc_CF1EED: FLdRfVar var_128
  loc_CF1EF0: CStrVarTmp
  loc_CF1EF1: FStStrNoPop var_3A4
  loc_CF1EF4: CR8Str
  loc_CF1EF6: FLdFPR8 var_94
  loc_CF1EF9: SubR4
  loc_CF1EFA: CStrR8
  loc_CF1EFC: FStStrNoPop var_3A8
  loc_CF1EFF: ImpAdCallI2 Replace(, , , , , )
  loc_CF1F04: FStStrNoPop var_3B0
  loc_CF1F07: ConcatStr
  loc_CF1F08: FStStrNoPop var_3B4
  loc_CF1F0B: LitStr ");"
  loc_CF1F0E: ConcatStr
  loc_CF1F0F: FStStrNoPop var_3B8
  loc_CF1F12: FLdPr Me
  loc_CF1F15: MemStStrCopy
  loc_CF1F19: FFreeStr var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_29C = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_37C = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = "": var_398 = ""
  loc_CF1F66: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = ""
  loc_CF1F71: FFreeVar var_DC = "": var_EC = "": var_118 = ""
  loc_CF1F7C: FLdPr Me
  loc_CF1F7F: MemLdI2 global_88
  loc_CF1F82: CI4UI1
  loc_CF1F83: CVarI4
  loc_CF1F87: PopAdLdVar
  loc_CF1F88: LitVarI4
  loc_CF1F90: PopAdLdVar
  loc_CF1F91: FLdPr Me
  loc_CF1F94: VCallAd Control_ID_ServDevaFlex
  loc_CF1F97: FStAdFunc var_2A0
  loc_CF1F9A: FLdPr var_2A0
  loc_CF1F9D: LateIdCallLdVar
  loc_CF1FA7: PopAd
  loc_CF1FA9: FLdPr Me
  loc_CF1FAC: MemLdI2 global_88
  loc_CF1FAF: CI4UI1
  loc_CF1FB0: CVarI4
  loc_CF1FB4: PopAdLdVar
  loc_CF1FB5: LitVarI4
  loc_CF1FBD: PopAdLdVar
  loc_CF1FBE: FLdPr Me
  loc_CF1FC1: VCallAd Control_ID_ServDevaFlex
  loc_CF1FC4: FStAdFunc var_2B4
  loc_CF1FC7: FLdPr var_2B4
  loc_CF1FCA: LateIdCallLdVar
  loc_CF1FD4: PopAd
  loc_CF1FD6: FLdPr Me
  loc_CF1FD9: MemLdI2 global_88
  loc_CF1FDC: CI4UI1
  loc_CF1FDD: CVarI4
  loc_CF1FE1: PopAdLdVar
  loc_CF1FE2: LitVarI4
  loc_CF1FEA: PopAdLdVar
  loc_CF1FEB: FLdPr Me
  loc_CF1FEE: VCallAd Control_ID_ServDevaFlex
  loc_CF1FF1: FStAdFunc var_2B8
  loc_CF1FF4: FLdPr var_2B8
  loc_CF1FF7: LateIdCallLdVar
  loc_CF2001: PopAd
  loc_CF2003: FLdPr Me
  loc_CF2006: MemLdI2 global_88
  loc_CF2009: CI4UI1
  loc_CF200A: CVarI4
  loc_CF200E: PopAdLdVar
  loc_CF200F: LitVarI4
  loc_CF2017: PopAdLdVar
  loc_CF2018: FLdPr Me
  loc_CF201B: VCallAd Control_ID_ServDevaFlex
  loc_CF201E: FStAdFunc var_2BC
  loc_CF2021: FLdPr var_2BC
  loc_CF2024: LateIdCallLdVar
  loc_CF202E: PopAd
  loc_CF2030: FLdPr Me
  loc_CF2033: MemLdI2 global_88
  loc_CF2036: CI4UI1
  loc_CF2037: CVarI4
  loc_CF203B: PopAdLdVar
  loc_CF203C: LitVarI4
  loc_CF2044: PopAdLdVar
  loc_CF2045: FLdPr Me
  loc_CF2048: VCallAd Control_ID_ServDevaFlex
  loc_CF204B: FStAdFunc var_2C0
  loc_CF204E: FLdPr var_2C0
  loc_CF2051: LateIdCallLdVar
  loc_CF205B: PopAd
  loc_CF205D: FLdPr Me
  loc_CF2060: MemLdI2 global_88
  loc_CF2063: CI4UI1
  loc_CF2064: CVarI4
  loc_CF2068: PopAdLdVar
  loc_CF2069: LitVarI4
  loc_CF2071: PopAdLdVar
  loc_CF2072: FLdPr Me
  loc_CF2075: VCallAd Control_ID_ServDevaFlex
  loc_CF2078: FStAdFunc var_4AC
  loc_CF207B: FLdPr var_4AC
  loc_CF207E: LateIdCallLdVar
  loc_CF2088: PopAd
  loc_CF208A: FLdPr Me
  loc_CF208D: MemLdStr global_84
  loc_CF2090: LitStr " INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede) VALUES ("
  loc_CF2093: ConcatStr
  loc_CF2094: FStStrNoPop var_29C
  loc_CF2097: FLdI2 var_9E
  loc_CF209A: CStrUI1
  loc_CF209C: FStStrNoPop var_2A4
  loc_CF209F: ConcatStr
  loc_CF20A0: FStStrNoPop var_2A8
  loc_CF20A3: LitStr ","
  loc_CF20A6: ConcatStr
  loc_CF20A7: FStStrNoPop var_2AC
  loc_CF20AA: ILdRf var_8C
  loc_CF20AD: CStrI4
  loc_CF20AF: FStStrNoPop var_2B0
  loc_CF20B2: ConcatStr
  loc_CF20B3: FStStrNoPop var_2F8
  loc_CF20B6: LitStr ","
  loc_CF20B9: ConcatStr
  loc_CF20BA: FStStrNoPop var_2FC
  loc_CF20BD: FLdI2 var_9E
  loc_CF20C0: CStrUI1
  loc_CF20C2: FStStrNoPop var_300
  loc_CF20C5: ConcatStr
  loc_CF20C6: FStStrNoPop var_348
  loc_CF20C9: LitStr ","
  loc_CF20CC: ConcatStr
  loc_CF20CD: FStStrNoPop var_34C
  loc_CF20D0: FLdI2 var_A0
  loc_CF20D3: CStrUI1
  loc_CF20D5: FStStrNoPop var_350
  loc_CF20D8: ConcatStr
  loc_CF20D9: FStStrNoPop var_354
  loc_CF20DC: LitStr ","
  loc_CF20DF: ConcatStr
  loc_CF20E0: FStStrNoPop var_358
  loc_CF20E3: FLdI2 var_86
  loc_CF20E6: CStrUI1
  loc_CF20E8: FStStrNoPop var_35C
  loc_CF20EB: ConcatStr
  loc_CF20EC: FStStrNoPop var_360
  loc_CF20EF: LitStr ",1,"
  loc_CF20F2: ConcatStr
  loc_CF20F3: FStStrNoPop var_364
  loc_CF20F6: ImpAdLdI2 MemVar_D93036
  loc_CF20F9: CStrUI1
  loc_CF20FB: FStStrNoPop var_368
  loc_CF20FE: ConcatStr
  loc_CF20FF: FStStrNoPop var_36C
  loc_CF2102: LitStr ","
  loc_CF2105: ConcatStr
  loc_CF2106: FStStrNoPop var_370
  loc_CF2109: FLdPr Me
  loc_CF210C: MemLdI2 global_88
  loc_CF210F: CI4UI1
  loc_CF2110: CVarI4
  loc_CF2114: PopAdLdVar
  loc_CF2115: LitVarI4
  loc_CF211D: PopAdLdVar
  loc_CF211E: FLdPr Me
  loc_CF2121: VCallAd Control_ID_ServDevaFlex
  loc_CF2124: FStAdFunc var_F8
  loc_CF2127: FLdPr var_F8
  loc_CF212A: LateIdCallLdVar
  loc_CF2134: CStrVarTmp
  loc_CF2135: FStStrNoPop var_374
  loc_CF2138: ConcatStr
  loc_CF2139: FStStrNoPop var_378
  loc_CF213C: LitStr ","
  loc_CF213F: ConcatStr
  loc_CF2140: FStStrNoPop var_384
  loc_CF2143: LitI4 0
  loc_CF2148: LitI4 -1
  loc_CF214D: LitI4 1
  loc_CF2152: LitStr "."
  loc_CF2155: LitStr ","
  loc_CF2158: FLdRfVar var_EC
  loc_CF215B: CStrVarTmp
  loc_CF215C: FStStrNoPop var_37C
  loc_CF215F: CR8Str
  loc_CF2161: CStrR8
  loc_CF2163: FStStrNoPop var_380
  loc_CF2166: ImpAdCallI2 Replace(, , , , , )
  loc_CF216B: FStStrNoPop var_388
  loc_CF216E: ConcatStr
  loc_CF216F: FStStrNoPop var_38C
  loc_CF2172: LitStr ","
  loc_CF2175: ConcatStr
  loc_CF2176: FStStrNoPop var_398
  loc_CF2179: LitI4 0
  loc_CF217E: LitI4 -1
  loc_CF2183: LitI4 1
  loc_CF2188: LitStr "."
  loc_CF218B: LitStr ","
  loc_CF218E: FLdRfVar var_118
  loc_CF2191: CStrVarTmp
  loc_CF2192: FStStrNoPop var_390
  loc_CF2195: CR8Str
  loc_CF2197: CStrR8
  loc_CF2199: FStStrNoPop var_394
  loc_CF219C: ImpAdCallI2 Replace(, , , , , )
  loc_CF21A1: FStStrNoPop var_39C
  loc_CF21A4: ConcatStr
  loc_CF21A5: FStStrNoPop var_3A0
  loc_CF21A8: LitStr ","
  loc_CF21AB: ConcatStr
  loc_CF21AC: FStStrNoPop var_3B0
  loc_CF21AF: LitI4 0
  loc_CF21B4: LitI4 -1
  loc_CF21B9: LitI4 1
  loc_CF21BE: LitStr "."
  loc_CF21C1: LitStr ","
  loc_CF21C4: FLdRfVar var_128
  loc_CF21C7: CStrVarTmp
  loc_CF21C8: FStStrNoPop var_3A4
  loc_CF21CB: CI2Str
  loc_CF21CD: CR8I2
  loc_CF21CE: FLdRfVar var_138
  loc_CF21D1: CStrVarTmp
  loc_CF21D2: FStStrNoPop var_3A8
  loc_CF21D5: CR8Str
  loc_CF21D7: MulR8
  loc_CF21D8: CStrR8
  loc_CF21DA: FStStrNoPop var_3AC
  loc_CF21DD: ImpAdCallI2 Replace(, , , , , )
  loc_CF21E2: FStStrNoPop var_3B4
  loc_CF21E5: ConcatStr
  loc_CF21E6: FStStrNoPop var_3B8
  loc_CF21E9: LitStr ","
  loc_CF21EC: ConcatStr
  loc_CF21ED: FStStrNoPop var_3C0
  loc_CF21F0: LitI4 0
  loc_CF21F5: LitI4 -1
  loc_CF21FA: LitI4 1
  loc_CF21FF: LitStr "."
  loc_CF2202: LitStr ","
  loc_CF2205: FLdFPR8 var_94
  loc_CF2208: CStrR8
  loc_CF220A: FStStrNoPop var_3BC
  loc_CF220D: ImpAdCallI2 Replace(, , , , , )
  loc_CF2212: FStStrNoPop var_3C4
  loc_CF2215: ConcatStr
  loc_CF2216: FStStrNoPop var_3C8
  loc_CF2219: LitStr ","
  loc_CF221C: ConcatStr
  loc_CF221D: FStStrNoPop var_4B8
  loc_CF2220: LitI4 0
  loc_CF2225: LitI4 -1
  loc_CF222A: LitI4 1
  loc_CF222F: LitStr "."
  loc_CF2232: LitStr ","
  loc_CF2235: FLdRfVar var_158
  loc_CF2238: CStrVarTmp
  loc_CF2239: FStStrNoPop var_3CC
  loc_CF223C: CR8Str
  loc_CF223E: FLdRfVar var_168
  loc_CF2241: CStrVarTmp
  loc_CF2242: FStStrNoPop var_4B0
  loc_CF2245: CR8Str
  loc_CF2247: MulR8
  loc_CF2248: FLdFPR8 var_94
  loc_CF224B: SubR4
  loc_CF224C: CStrR8
  loc_CF224E: FStStrNoPop var_4B4
  loc_CF2251: ImpAdCallI2 Replace(, , , , , )
  loc_CF2256: FStStrNoPop var_4BC
  loc_CF2259: ConcatStr
  loc_CF225A: FStStrNoPop var_4C0
  loc_CF225D: LitStr ");"
  loc_CF2260: ConcatStr
  loc_CF2261: FStStrNoPop var_4C4
  loc_CF2264: FLdPr Me
  loc_CF2267: MemStStrCopy
  loc_CF226B: FFreeStr var_3A0 = "": var_3A4 = "": var_3A8 = "": var_3AC = "": var_3B0 = "": var_3B4 = "": var_3B8 = "": var_3BC = "": var_3C0 = "": var_3C4 = "": var_3C8 = "": var_3CC = "": var_4B0 = "": var_4B4 = "": var_4B8 = "": var_4BC = "": var_4C0 = "": var_4C4 = "": var_29C = "": var_2A4 = "": var_2A8 = "": var_2AC = "": var_2B0 = "": var_2F8 = "": var_2FC = "": var_300 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_37C = "": var_380 = "": var_384 = "": var_388 = "": var_38C = "": var_390 = "": var_394 = "": var_398 = ""
  loc_CF22CE: FFreeAd var_F8 = "": var_2A0 = "": var_2B4 = "": var_2B8 = "": var_2BC = "": var_2C0 = ""
  loc_CF22DF: FFreeVar var_DC = "": var_EC = "": var_118 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_CF22F0: FLdPr Me
  loc_CF22F3: MemLdI2 global_88
  loc_CF22F6: CI4UI1
  loc_CF22F7: CVarI4
  loc_CF22FB: PopAdLdVar
  loc_CF22FC: LitVarI4
  loc_CF2304: PopAdLdVar
  loc_CF2305: FLdPr Me
  loc_CF2308: VCallAd Control_ID_ServDevaFlex
  loc_CF230B: FStAdFunc var_F8
  loc_CF230E: FLdPr var_F8
  loc_CF2311: LateIdCallLdVar
  loc_CF231B: PopAd
  loc_CF231D: LitI4 2
  loc_CF2322: FLdFPR8 var_B0
  loc_CF2325: FLdRfVar var_DC
  loc_CF2328: CStrVarTmp
  loc_CF2329: FStStrNoPop var_29C
  loc_CF232C: CR8Str
  loc_CF232E: FLdFPR8 var_94
  loc_CF2331: SubR4
  loc_CF2332: AddR8
  loc_CF2333: CVarR8
  loc_CF2337: FLdRfVar var_118
  loc_CF233A: ImpAdCallFPR4  = Round(, )
  loc_CF233F: FLdRfVar var_118
  loc_CF2342: CR4Var
  loc_CF2343: FStFPR8 var_B0
  loc_CF2346: FFree1Str var_29C
  loc_CF2349: FFree1Ad var_F8
  loc_CF234C: FFreeVar var_DC = "": var_EC = ""
  loc_CF2355: FLdPr Me
  loc_CF2358: MemLdI2 global_88
  loc_CF235B: CI4UI1
  loc_CF235C: CVarI4
  loc_CF2360: PopAdLdVar
  loc_CF2361: LitVarI4
  loc_CF2369: PopAdLdVar
  loc_CF236A: FLdPr Me
  loc_CF236D: VCallAd Control_ID_ServDevaFlex
  loc_CF2370: FStAdFunc var_F8
  loc_CF2373: FLdPr var_F8
  loc_CF2376: LateIdCallLdVar
  loc_CF2380: PopAd
  loc_CF2382: FLdPr Me
  loc_CF2385: MemLdI2 global_88
  loc_CF2388: CI4UI1
  loc_CF2389: CVarI4
  loc_CF238D: PopAdLdVar
  loc_CF238E: LitVarI4
  loc_CF2396: PopAdLdVar
  loc_CF2397: FLdPr Me
  loc_CF239A: VCallAd Control_ID_ServDevaFlex
  loc_CF239D: FStAdFunc var_2A0
  loc_CF23A0: FLdPr var_2A0
  loc_CF23A3: LateIdCallLdVar
  loc_CF23AD: PopAd
  loc_CF23AF: LitI4 2
  loc_CF23B4: FLdFPR8 var_B8
  loc_CF23B7: FLdRfVar var_DC
  loc_CF23BA: CStrVarTmp
  loc_CF23BB: FStStrNoPop var_29C
  loc_CF23BE: CR8Str
  loc_CF23C0: FLdRfVar var_EC
  loc_CF23C3: CStrVarTmp
  loc_CF23C4: FStStrNoPop var_2A4
  loc_CF23C7: CR8Str
  loc_CF23C9: MulR8
  loc_CF23CA: AddR8
  loc_CF23CB: FLdFPR8 var_94
  loc_CF23CE: SubR4
  loc_CF23CF: CVarR8
  loc_CF23D3: FLdRfVar var_128
  loc_CF23D6: ImpAdCallFPR4  = Round(, )
  loc_CF23DB: FLdRfVar var_128
  loc_CF23DE: CR4Var
  loc_CF23DF: FStFPR8 var_B8
  loc_CF23E2: FFreeStr var_29C = ""
  loc_CF23E9: FFreeAd var_F8 = ""
  loc_CF23F0: FFreeVar var_DC = "": var_EC = "": var_118 = ""
  loc_CF23FB: FLdPr Me
  loc_CF23FE: MemLdRfVar from_stack_1.global_88
  loc_CF2401: NextI2 var_3D8, loc_CF1AC7
  loc_CF2406: LitI2_Byte &HFF
  loc_CF2408: FStI2 var_BA
  loc_CF240B: LitI4 2
  loc_CF2410: FLdRfVar var_A8
  loc_CF2413: CVarRef
  loc_CF2418: FLdRfVar var_DC
  loc_CF241B: ImpAdCallFPR4  = Round(, )
  loc_CF2420: FLdRfVar var_DC
  loc_CF2423: LitI4 2
  loc_CF2428: FLdRfVar var_B0
  loc_CF242B: CVarRef
  loc_CF2430: FLdRfVar var_EC
  loc_CF2433: ImpAdCallFPR4  = Round(, )
  loc_CF2438: FLdRfVar var_EC
  loc_CF243B: NeVarBool
  loc_CF243D: FFreeVar var_DC = ""
  loc_CF2444: BranchF loc_CF244C
  loc_CF2447: LitI2_Byte 0
  loc_CF2449: FStI2 var_BA
  loc_CF244C: LitI4 2
  loc_CF2451: FLdRfVar var_A8
  loc_CF2454: CVarRef
  loc_CF2459: FLdRfVar var_DC
  loc_CF245C: ImpAdCallFPR4  = Round(, )
  loc_CF2461: FLdRfVar var_DC
  loc_CF2464: LitI4 2
  loc_CF2469: FLdRfVar var_B8
  loc_CF246C: CVarRef
  loc_CF2471: FLdRfVar var_EC
  loc_CF2474: ImpAdCallFPR4  = Round(, )
  loc_CF2479: FLdRfVar var_EC
  loc_CF247C: NeVarBool
  loc_CF247E: FFreeVar var_DC = ""
  loc_CF2485: BranchF loc_CF248D
  loc_CF2488: LitI2_Byte 0
  loc_CF248A: FStI2 var_BA
  loc_CF248D: LitI4 2
  loc_CF2492: FLdRfVar var_B0
  loc_CF2495: CVarRef
  loc_CF249A: FLdRfVar var_DC
  loc_CF249D: ImpAdCallFPR4  = Round(, )
  loc_CF24A2: FLdRfVar var_DC
  loc_CF24A5: LitI4 2
  loc_CF24AA: FLdRfVar var_B8
  loc_CF24AD: CVarRef
  loc_CF24B2: FLdRfVar var_EC
  loc_CF24B5: ImpAdCallFPR4  = Round(, )
  loc_CF24BA: FLdRfVar var_EC
  loc_CF24BD: NeVarBool
  loc_CF24BF: FFreeVar var_DC = ""
  loc_CF24C6: BranchF loc_CF24CE
  loc_CF24C9: LitI2_Byte 0
  loc_CF24CB: FStI2 var_BA
  loc_CF24CE: FLdI2 var_BA
  loc_CF24D1: LitI2_Byte &HFF
  loc_CF24D3: EqI2
  loc_CF24D4: BranchF loc_CF2681
  loc_CF24D7: FLdPr Me
  loc_CF24DA: MemLdStr global_84
  loc_CF24DD: FLdPr Me
  loc_CF24E0: MemLdRfVar from_stack_1.global_60
  loc_CF24E3: NewIfNullPr clsboleto
  loc_CF24E6: Call clsboleto.AddnewTransaction(from_stack_1v)
  loc_CF24EB: ImpAdLdRf MemVar_D94934
  loc_CF24EE: NewIfNullAd
  loc_CF24F1: FStAd var_4C8 
  loc_CF24F5: FLdRfVar var_F2
  loc_CF24F8: FLdPr var_4C8
  loc_CF24FB: from_stack_1v = rptEmisionBoleto.ImprimiendoGet()
  loc_CF2500: FLdI2 var_F2
  loc_CF2503: BranchF loc_CF250E
  loc_CF2506: ImpAdCallFPR4 DoEvents()
  loc_CF250B: Branch loc_CF24F5
  loc_CF250E: ImpAdLdRf MemVar_D94934
  loc_CF2511: NewIfNullAd
  loc_CF2514: CastAd
  loc_CF2517: FStAdFuncNoPop
  loc_CF251A: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_CF251F: FFree1Ad var_F8
  loc_CF2522: FLdI2 var_9E
  loc_CF2525: CStrUI1
  loc_CF2527: CVarStr var_DC
  loc_CF252A: PopAdLdVar
  loc_CF252B: FLdPr var_4C8
  loc_CF252E: VCallAd Control_ID_Label1
  loc_CF2531: FStAdFunc var_F8
  loc_CF2534: FLdPr var_F8
  loc_CF2537: LateIdSt
  loc_CF253C: FFree1Ad var_F8
  loc_CF253F: FFree1Var var_DC = ""
  loc_CF2542: ILdRf var_8C
  loc_CF2545: CStrI4
  loc_CF2547: CVarStr var_DC
  loc_CF254A: PopAdLdVar
  loc_CF254B: FLdPr var_4C8
  loc_CF254E: VCallAd Control_ID_Label2
  loc_CF2551: FStAdFunc var_F8
  loc_CF2554: FLdPr var_F8
  loc_CF2557: LateIdSt
  loc_CF255C: FFree1Ad var_F8
  loc_CF255F: FFree1Var var_DC = ""
  loc_CF2562: LitVarI4
  loc_CF256A: LitVarI4
  loc_CF2572: ImpAdLdI2 MemVar_D93078
  loc_CF2575: LitI2_Byte 0
  loc_CF2577: EqI2
  loc_CF2578: CVarBoolI2 var_CC
  loc_CF257C: FLdRfVar var_118
  loc_CF257F: ImpAdCallFPR4  = IIf(, , )
  loc_CF2584: FLdRfVar var_118
  loc_CF2587: CI2Var
  loc_CF2588: FLdPr var_4C8
  loc_CF258B: VCallAd Control_ID_DetalleTxt
  loc_CF258E: FStAdFunc var_F8
  loc_CF2591: FLdPr var_F8
  loc_CF2594: Me.Value = from_stack_1
  loc_CF2599: FFree1Ad var_F8
  loc_CF259C: FFreeVar var_CC = "": var_DC = "": var_EC = ""
  loc_CF25A7: FLdRfVar var_29C
  loc_CF25AA: FLdPr Me
  loc_CF25AD: VCallAd Control_ID_DetalleTxt
  loc_CF25B0: FStAdFunc var_F8
  loc_CF25B3: FLdPr var_F8
  loc_CF25B6:  = Me.Text
  loc_CF25BB: ILdRf var_29C
  loc_CF25BE: FLdPr var_4C8
  loc_CF25C1: Call rptEmisionBoleto.DetaDevaPut(from_stack_1v)
  loc_CF25C6: FFree1Str var_29C
  loc_CF25C9: FFree1Ad var_F8
  loc_CF25CC: FLdPr var_4C8
  loc_CF25CF: Call rptEmisionBoleto.cmdPredeterminada_Click()
  loc_CF25D4: LitNothing
  loc_CF25D6: FStAd var_4C8 
  loc_CF25DA: FLdRfVar var_F2
  loc_CF25DD: FLdPr Me
  loc_CF25E0: VCallAd Control_ID_DuplicadoChk
  loc_CF25E3: FStAdFunc var_F8
  loc_CF25E6: FLdPr var_F8
  loc_CF25E9:  = Me.Value
  loc_CF25EE: FLdI2 var_F2
  loc_CF25F1: LitI2_Byte 1
  loc_CF25F3: EqI2
  loc_CF25F4: FFree1Ad var_F8
  loc_CF25F7: BranchF loc_CF267E
  loc_CF25FA: ImpAdLdRf MemVar_D93720
  loc_CF25FD: NewIfNullAd
  loc_CF2600: FStAd var_4CC 
  loc_CF2604: FLdI2 var_9E
  loc_CF2607: CStrUI1
  loc_CF2609: CVarStr var_DC
  loc_CF260C: PopAdLdVar
  loc_CF260D: FLdPr var_4CC
  loc_CF2610: VCallAd Control_ID_DescBoleLbl
  loc_CF2613: FStAdFunc var_F8
  loc_CF2616: FLdPr var_F8
  loc_CF2619: LateIdSt
  loc_CF261E: FFree1Ad var_F8
  loc_CF2621: FFree1Var var_DC = ""
  loc_CF2624: ILdRf var_8C
  loc_CF2627: CStrI4
  loc_CF2629: CVarStr var_DC
  loc_CF262C: PopAdLdVar
  loc_CF262D: FLdPr var_4CC
  loc_CF2630: VCallAd Control_ID_Label11
  loc_CF2633: FStAdFunc var_F8
  loc_CF2636: FLdPr var_F8
  loc_CF2639: LateIdSt
  loc_CF263E: FFree1Ad var_F8
  loc_CF2641: FFree1Var var_DC = ""
  loc_CF2644: FLdPr var_4CC
  loc_CF2647: Call rptConsultadeBoleto.cmdPredeterminada_Click()
  loc_CF264C: ImpAdLdRf MemVar_D93720
  loc_CF264F: NewIfNullAd
  loc_CF2652: CastAd
  loc_CF2655: FStAdFuncNoPop
  loc_CF2658: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_CF265D: FFree1Ad var_F8
  loc_CF2660: ImpAdLdRf MemVar_D93720
  loc_CF2663: NewIfNullAd
  loc_CF2666: FStAdNoPop
  loc_CF266A: ImpAdLdRf MemVar_D9C5D8
  loc_CF266D: NewIfNullPr Global
  loc_CF2670: Global.Unload from_stack_1
  loc_CF2675: FFree1Ad var_F8
  loc_CF2678: LitNothing
  loc_CF267A: FStAd var_4CC 
  loc_CF267E: Branch loc_CF2689
  loc_CF2681: LitStr "NO se genero el boleto. Por favor vuelva a intentarlo......"
  loc_CF2684: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CF2689: Call Proc_280_27_AF2EE8()
  loc_CF268E: Call Proc_280_25_B27330()
  loc_CF2693: LitI2_Byte 0
  loc_CF2695: FLdPr Me
  loc_CF2698: VCallAd Control_ID_DuplicadoChk
  loc_CF269B: FStAdFunc var_F8
  loc_CF269E: FLdPr var_F8
  loc_CF26A1: Me.Value = from_stack_1
  loc_CF26A6: FFree1Ad var_F8
  loc_CF26A9: LitI2_Byte 0
  loc_CF26AB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CF26B0: CStrDate
  loc_CF26B2: CVarStr var_DC
  loc_CF26B5: PopAdLdVar
  loc_CF26B6: FLdPr Me
  loc_CF26B9: VCallAd Control_ID_FeveCtctMsk
  loc_CF26BC: FStAdFunc var_F8
  loc_CF26BF: FLdPr var_F8
  loc_CF26C2: LateIdSt
  loc_CF26C7: FFree1Ad var_F8
  loc_CF26CA: FFree1Var var_DC = ""
  loc_CF26CD: LitI2_Byte &HFF
  loc_CF26CF: FLdPr Me
  loc_CF26D2: VCallAd Control_ID_ConfirmarCmd
  loc_CF26D5: FStAdFunc var_F8
  loc_CF26D8: FLdPr var_F8
  loc_CF26DB: Me.Enabled = from_stack_1b
  loc_CF26E0: FFree1Ad var_F8
  loc_CF26E3: LitI2_Byte 0
  loc_CF26E5: FLdPr Me
  loc_CF26E8: Me.MousePointer = from_stack_1
  loc_CF26ED: FLdPr Me
  loc_CF26F0: VCallAd Control_ID_DetaPersTxt
  loc_CF26F3: FStAdFunc var_F8
  loc_CF26F6: FLdPr var_F8
  loc_CF26F9: Me.SetFocus
  loc_CF26FE: FFree1Ad var_F8
  loc_CF2701: ExitProcHresult
  loc_CF2702: FLdPr arg_14FC
End Sub

Private Sub ServDevaFlex_UnknownEvent_8 'B3190C
  'Data Table: 50E08C
  loc_B31630: LitI2_Byte 1
  loc_B31632: FLdPr Me
  loc_B31635: MemLdRfVar from_stack_1.global_88
  loc_B31638: FLdPr Me
  loc_B3163B: VCallAd Control_ID_ServDevaFlex
  loc_B3163E: FStAdFunc var_88
  loc_B31641: FLdPr var_88
  loc_B31644: LateIdLdVar var_98 DispID_4 0
  loc_B3164B: CI4Var
  loc_B3164D: LitI4 1
  loc_B31652: SubI4
  loc_B31653: CI2I4
  loc_B31654: FFree1Ad var_88
  loc_B31657: FFree1Var var_98 = ""
  loc_B3165A: ForI2 var_9C
  loc_B31660: FLdPr Me
  loc_B31663: MemLdI2 global_88
  loc_B31666: CI4UI1
  loc_B31667: CVarI4
  loc_B3166B: PopAdLdVar
  loc_B3166C: LitVarI4
  loc_B31674: PopAdLdVar
  loc_B31675: FLdPr Me
  loc_B31678: VCallAd Control_ID_ServDevaFlex
  loc_B3167B: FStAdFunc var_88
  loc_B3167E: FLdPr var_88
  loc_B31681: LateIdCallLdVar
  loc_B3168B: CStrVarTmp
  loc_B3168C: CVarStr var_EC
  loc_B3168F: ImpAdCallI2 IsNumeric()
  loc_B31694: FLdPr Me
  loc_B31697: MemLdI2 global_88
  loc_B3169A: CI4UI1
  loc_B3169B: CVarI4
  loc_B3169F: PopAdLdVar
  loc_B316A0: LitVarI4
  loc_B316A8: PopAdLdVar
  loc_B316A9: FLdPr Me
  loc_B316AC: VCallAd Control_ID_ServDevaFlex
  loc_B316AF: FStAdFunc var_130
  loc_B316B2: FLdPr var_130
  loc_B316B5: LateIdCallLdVar
  loc_B316BF: CStrVarTmp
  loc_B316C0: CVarStr var_150
  loc_B316C3: ImpAdCallI2 IsNumeric()
  loc_B316C8: AndI4
  loc_B316C9: FFreeAd var_88 = ""
  loc_B316D0: FFreeVar var_98 = "": var_EC = "": var_140 = ""
  loc_B316DB: BranchF loc_B318FA
  loc_B316DE: FLdPr Me
  loc_B316E1: MemLdI2 global_88
  loc_B316E4: CI4UI1
  loc_B316E5: CVarI4
  loc_B316E9: PopAdLdVar
  loc_B316EA: LitVarI4
  loc_B316F2: PopAdLdVar
  loc_B316F3: FLdPr Me
  loc_B316F6: VCallAd Control_ID_ServDevaFlex
  loc_B316F9: FStAdFunc var_88
  loc_B316FC: FLdPr var_88
  loc_B316FF: LateIdCallLdVar
  loc_B31709: PopAd
  loc_B3170B: FLdPr Me
  loc_B3170E: MemLdI2 global_88
  loc_B31711: CI4UI1
  loc_B31712: CVarI4
  loc_B31716: PopAdLdVar
  loc_B31717: LitVarI4
  loc_B3171F: PopAdLdVar
  loc_B31720: LitI4 1
  loc_B31725: LitI4 1
  loc_B3172A: LitVarStr var_10C, "0.00"
  loc_B3172F: FStVarCopyObj var_140
  loc_B31732: FLdRfVar var_140
  loc_B31735: FLdRfVar var_98
  loc_B31738: CStrVarTmp
  loc_B31739: FStStrNoPop var_154
  loc_B3173C: CR8Str
  loc_B3173E: CVarR8
  loc_B31742: FLdRfVar var_150
  loc_B31745: ImpAdCallFPR4  = Format(, )
  loc_B3174A: FLdRfVar var_150
  loc_B3174D: CStrVarTmp
  loc_B3174E: CVarStr var_184
  loc_B31751: PopAdLdVar
  loc_B31752: FLdPr Me
  loc_B31755: VCallAd Control_ID_ServDevaFlex
  loc_B31758: FStAdFunc var_130
  loc_B3175B: FLdPr var_130
  loc_B3175E: LateIdCallSt
  loc_B31766: FFree1Str var_154
  loc_B31769: FFreeAd var_88 = ""
  loc_B31770: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B3177D: FLdPr Me
  loc_B31780: MemLdI2 global_88
  loc_B31783: CI4UI1
  loc_B31784: CVarI4
  loc_B31788: PopAdLdVar
  loc_B31789: LitVarI4
  loc_B31791: PopAdLdVar
  loc_B31792: FLdPr Me
  loc_B31795: VCallAd Control_ID_ServDevaFlex
  loc_B31798: FStAdFunc var_88
  loc_B3179B: FLdPr var_88
  loc_B3179E: LateIdCallLdVar
  loc_B317A8: PopAd
  loc_B317AA: FLdPr Me
  loc_B317AD: MemLdI2 global_88
  loc_B317B0: CI4UI1
  loc_B317B1: CVarI4
  loc_B317B5: PopAdLdVar
  loc_B317B6: LitVarI4
  loc_B317BE: PopAdLdVar
  loc_B317BF: LitI4 1
  loc_B317C4: LitI4 1
  loc_B317C9: LitVarStr var_10C, "###,###,##0.00"
  loc_B317CE: FStVarCopyObj var_140
  loc_B317D1: FLdRfVar var_140
  loc_B317D4: FLdRfVar var_98
  loc_B317D7: CStrVarTmp
  loc_B317D8: FStStrNoPop var_154
  loc_B317DB: CR8Str
  loc_B317DD: CVarR8
  loc_B317E1: FLdRfVar var_150
  loc_B317E4: ImpAdCallFPR4  = Format(, )
  loc_B317E9: FLdRfVar var_150
  loc_B317EC: CStrVarTmp
  loc_B317ED: CVarStr var_184
  loc_B317F0: PopAdLdVar
  loc_B317F1: FLdPr Me
  loc_B317F4: VCallAd Control_ID_ServDevaFlex
  loc_B317F7: FStAdFunc var_130
  loc_B317FA: FLdPr var_130
  loc_B317FD: LateIdCallSt
  loc_B31805: FFree1Str var_154
  loc_B31808: FFreeAd var_88 = ""
  loc_B3180F: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B3181C: FLdPr Me
  loc_B3181F: MemLdI2 global_88
  loc_B31822: CI4UI1
  loc_B31823: CVarI4
  loc_B31827: PopAdLdVar
  loc_B31828: LitVarI4
  loc_B31830: PopAdLdVar
  loc_B31831: FLdPr Me
  loc_B31834: VCallAd Control_ID_ServDevaFlex
  loc_B31837: FStAdFunc var_88
  loc_B3183A: FLdPr var_88
  loc_B3183D: LateIdCallLdVar
  loc_B31847: PopAd
  loc_B31849: FLdPr Me
  loc_B3184C: MemLdI2 global_88
  loc_B3184F: CI4UI1
  loc_B31850: CVarI4
  loc_B31854: PopAdLdVar
  loc_B31855: LitVarI4
  loc_B3185D: PopAdLdVar
  loc_B3185E: FLdPr Me
  loc_B31861: VCallAd Control_ID_ServDevaFlex
  loc_B31864: FStAdFunc var_130
  loc_B31867: FLdPr var_130
  loc_B3186A: LateIdCallLdVar
  loc_B31874: PopAd
  loc_B31876: FLdPr Me
  loc_B31879: MemLdI2 global_88
  loc_B3187C: CI4UI1
  loc_B3187D: CVarI4
  loc_B31881: PopAdLdVar
  loc_B31882: LitVarI4
  loc_B3188A: PopAdLdVar
  loc_B3188B: LitI4 1
  loc_B31890: LitI4 1
  loc_B31895: LitVarStr var_174, "###,###,##0.00"
  loc_B3189A: FStVarCopyObj var_150
  loc_B3189D: FLdRfVar var_150
  loc_B318A0: FLdRfVar var_98
  loc_B318A3: CStrVarTmp
  loc_B318A4: FStStrNoPop var_154
  loc_B318A7: CR8Str
  loc_B318A9: FLdRfVar var_EC
  loc_B318AC: CStrVarTmp
  loc_B318AD: FStStrNoPop var_198
  loc_B318B0: CR8Str
  loc_B318B2: MulR8
  loc_B318B3: CVarR8
  loc_B318B7: FLdRfVar var_184
  loc_B318BA: ImpAdCallFPR4  = Format(, )
  loc_B318BF: FLdRfVar var_184
  loc_B318C2: CStrVarTmp
  loc_B318C3: CVarStr var_1D8
  loc_B318C6: PopAdLdVar
  loc_B318C7: FLdPr Me
  loc_B318CA: VCallAd Control_ID_ServDevaFlex
  loc_B318CD: FStAdFunc var_1EC
  loc_B318D0: FLdPr var_1EC
  loc_B318D3: LateIdCallSt
  loc_B318DB: FFreeStr var_154 = ""
  loc_B318E2: FFreeAd var_88 = "": var_130 = ""
  loc_B318EB: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = "": var_184 = ""
  loc_B318FA: FLdPr Me
  loc_B318FD: MemLdRfVar from_stack_1.global_88
  loc_B31900: NextI2 var_9C, loc_B31660
  loc_B31905: Call Proc_280_26_B2C6C8()
  loc_B3190A: ExitProcHresult
End Sub

Private Sub ServDevaFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'C0D5AC
  'Data Table: 50E08C
  loc_C0CC80: ILdI2 KeyCode
  loc_C0CC83: CI4UI1
  loc_C0CC84: LitI4 &H2E
  loc_C0CC89: EqI4
  loc_C0CC8A: BranchF loc_C0CCEF
  loc_C0CC8D: FLdPr Me
  loc_C0CC90: VCallAd Control_ID_ServDevaFlex
  loc_C0CC93: FStAdFunc var_88
  loc_C0CC96: FLdPr var_88
  loc_C0CC99: LateIdLdVar var_98 DispID_4 0
  loc_C0CCA0: CI4Var
  loc_C0CCA2: LitI4 1
  loc_C0CCA7: GtI4
  loc_C0CCA8: FFree1Ad var_88
  loc_C0CCAB: FFree1Var var_98 = ""
  loc_C0CCAE: BranchF loc_C0CCEC
  loc_C0CCB1: OnErrorGoto loc_C0D57C
  loc_C0CCB4: FLdPr Me
  loc_C0CCB7: VCallAd Control_ID_ServDevaFlex
  loc_C0CCBA: FStAdFunc var_88
  loc_C0CCBD: FLdPr var_88
  loc_C0CCC0: LateIdLdVar var_98 DispID_10 0
  loc_C0CCC7: CI4Var
  loc_C0CCC9: CVarI4
  loc_C0CCCD: PopAdLdVar
  loc_C0CCCE: FLdPr Me
  loc_C0CCD1: VCallAd Control_ID_ServDevaFlex
  loc_C0CCD4: FStAdFunc var_BC
  loc_C0CCD7: FLdPr var_BC
  loc_C0CCDA: LateIdCall
  loc_C0CCE2: FFreeAd var_88 = ""
  loc_C0CCE9: FFree1Var var_98 = ""
  loc_C0CCEC: Branch loc_C0D57C
  loc_C0CCEF: ILdI2 KeyCode
  loc_C0CCF2: CI4UI1
  loc_C0CCF3: LitI4 &H70
  loc_C0CCF8: EqI4
  loc_C0CCF9: BranchF loc_C0D3D4
  loc_C0CCFC: FLdRfVar var_C0
  loc_C0CCFF: FLdPr Me
  loc_C0CD02: MemLdRfVar from_stack_1.global_56
  loc_C0CD05: NewIfNullPr clspersonas
  loc_C0CD08: from_stack_1 = clspersonas.RecordCount
  loc_C0CD0D: ILdRf var_C0
  loc_C0CD10: LitI4 0
  loc_C0CD15: GtI4
  loc_C0CD16: BranchF loc_C0D3D1
  loc_C0CD19: FLdRfVar var_C4
  loc_C0CD1C: FLdPr Me
  loc_C0CD1F: MemLdRfVar from_stack_1.global_56
  loc_C0CD22: NewIfNullPr clspersonas
  loc_C0CD25: from_stack_1 = clspersonas.CucuPers
  loc_C0CD2A: ILdRf var_C4
  loc_C0CD2D: ImpAdLdRf MemVar_D948D0
  loc_C0CD30: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CD33: Call dlgBuscarDerechosVariosDetalle.sCucuPersPut(from_stack_1v)
  loc_C0CD38: FFree1Str var_C4
  loc_C0CD3B: LitVar_Missing var_B8
  loc_C0CD3E: PopAdLdVar
  loc_C0CD3F: LitVarI4
  loc_C0CD47: PopAdLdVar
  loc_C0CD48: ImpAdLdRf MemVar_D948D0
  loc_C0CD4B: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CD4E: dlgBuscarDerechosVariosDetalle.Show from_stack_1, from_stack_2
  loc_C0CD53: FLdRfVar var_C0
  loc_C0CD56: FLdRfVar var_88
  loc_C0CD59: ImpAdLdRf MemVar_D948D0
  loc_C0CD5C: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CD5F: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CD64: FLdPr var_88
  loc_C0CD67: from_stack_1 = clsdevadeta.RecordCount
  loc_C0CD6C: ILdRf var_C0
  loc_C0CD6F: LitI4 0
  loc_C0CD74: GtI4
  loc_C0CD75: FFree1Ad var_88
  loc_C0CD78: BranchF loc_C0D3D1
  loc_C0CD7B: FLdRfVar var_C6
  loc_C0CD7E: FLdRfVar var_88
  loc_C0CD81: ImpAdLdRf MemVar_D948D0
  loc_C0CD84: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CD87: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CD8C: FLdPr var_88
  loc_C0CD8F: from_stack_1 = clsdevadeta.PeriInfo
  loc_C0CD94: FLdI2 var_C6
  loc_C0CD97: ImpAdLdI2 MemVar_D93034
  loc_C0CD9A: NeI2
  loc_C0CD9B: FFree1Ad var_88
  loc_C0CD9E: BranchF loc_C0CDC1
  loc_C0CDA1: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C0CDA4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C0CDA9: FLdPr Me
  loc_C0CDAC: VCallAd Control_ID_ServDevaFlex
  loc_C0CDAF: FStAdFunc var_88
  loc_C0CDB2: FLdPr var_88
  loc_C0CDB5: LateIdCall
  loc_C0CDBD: FFree1Ad var_88
  loc_C0CDC0: ExitProcHresult
  loc_C0CDC1: FLdRfVar var_C6
  loc_C0CDC4: FLdRfVar var_88
  loc_C0CDC7: ImpAdLdRf MemVar_D948D0
  loc_C0CDCA: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CDCD: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CDD2: FLdPr var_88
  loc_C0CDD5: from_stack_1 = clsdevadeta.PeriInfo
  loc_C0CDDA: FLdRfVar var_C4
  loc_C0CDDD: FLdRfVar var_BC
  loc_C0CDE0: ImpAdLdRf MemVar_D948D0
  loc_C0CDE3: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CDE6: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CDEB: FLdPr var_BC
  loc_C0CDEE: from_stack_1 = clsdevadeta.CodiConc
  loc_C0CDF3: ILdRf var_C4
  loc_C0CDF6: FLdI2 var_C6
  loc_C0CDF9: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C0CDFE: FStStrNoPop var_CC
  loc_C0CE01: LitStr vbNullString
  loc_C0CE04: EqStr
  loc_C0CE06: FFreeStr var_C4 = ""
  loc_C0CE0D: FFreeAd var_88 = ""
  loc_C0CE14: BranchF loc_C0CE53
  loc_C0CE17: LitStr "El recurso: "
  loc_C0CE1A: FLdRfVar var_C4
  loc_C0CE1D: FLdRfVar var_88
  loc_C0CE20: ImpAdLdRf MemVar_D948D0
  loc_C0CE23: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CE26: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CE2B: FLdPr var_88
  loc_C0CE2E: from_stack_1 = clsdevadeta.CodiConc
  loc_C0CE33: ILdRf var_C4
  loc_C0CE36: ConcatStr
  loc_C0CE37: FStStrNoPop var_CC
  loc_C0CE3A: LitStr " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C0CE3D: ConcatStr
  loc_C0CE3E: FStStrNoPop var_D0
  loc_C0CE41: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C0CE46: FFreeStr var_C4 = "": var_CC = ""
  loc_C0CE4F: FFree1Ad var_88
  loc_C0CE52: ExitProcHresult
  loc_C0CE53: FLdRfVar var_D8
  loc_C0CE56: FLdRfVar var_88
  loc_C0CE59: ImpAdLdRf MemVar_D948D0
  loc_C0CE5C: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CE5F: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CE64: FLdPr var_88
  loc_C0CE67: from_stack_1 = clsdevadeta.CantDede
  loc_C0CE6C: FLdPr Me
  loc_C0CE6F: VCallAd Control_ID_ServDevaFlex
  loc_C0CE72: FStAdFunc var_BC
  loc_C0CE75: FLdPr var_BC
  loc_C0CE78: LateIdLdVar var_108 DispID_10 0
  loc_C0CE7F: CI4Var
  loc_C0CE81: CVarI4
  loc_C0CE85: PopAdLdVar
  loc_C0CE86: LitVarI4
  loc_C0CE8E: PopAdLdVar
  loc_C0CE8F: LitI4 1
  loc_C0CE94: LitI4 1
  loc_C0CE99: LitVarStr var_B8, "0.00"
  loc_C0CE9E: FStVarCopyObj var_E8
  loc_C0CEA1: FLdRfVar var_E8
  loc_C0CEA4: FLdFPR8 var_D8
  loc_C0CEA7: CVarR8
  loc_C0CEAB: FLdRfVar var_F8
  loc_C0CEAE: ImpAdCallFPR4  = Format(, )
  loc_C0CEB3: FLdRfVar var_F8
  loc_C0CEB6: CStrVarTmp
  loc_C0CEB7: CVarStr var_158
  loc_C0CEBA: PopAdLdVar
  loc_C0CEBB: FLdPr Me
  loc_C0CEBE: VCallAd Control_ID_ServDevaFlex
  loc_C0CEC1: FStAdFunc var_16C
  loc_C0CEC4: FLdPr var_16C
  loc_C0CEC7: LateIdCallSt
  loc_C0CECF: FFreeAd var_88 = "": var_BC = ""
  loc_C0CED8: FFreeVar var_98 = "": var_E8 = "": var_108 = "": var_F8 = ""
  loc_C0CEE5: FLdPr Me
  loc_C0CEE8: VCallAd Control_ID_ServDevaFlex
  loc_C0CEEB: FStAdFunc var_BC
  loc_C0CEEE: FLdPr var_BC
  loc_C0CEF1: LateIdLdVar var_98 DispID_10 0
  loc_C0CEF8: CI4Var
  loc_C0CEFA: CVarI4
  loc_C0CEFE: PopAdLdVar
  loc_C0CEFF: LitVarI4
  loc_C0CF07: PopAdLdVar
  loc_C0CF08: FLdRfVar var_C6
  loc_C0CF0B: FLdRfVar var_88
  loc_C0CF0E: ImpAdLdRf MemVar_D948D0
  loc_C0CF11: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CF14: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CF19: FLdPr var_88
  loc_C0CF1C: from_stack_1 = clsdevadeta.CodiSede
  loc_C0CF21: FLdI2 var_C6
  loc_C0CF24: CStrUI1
  loc_C0CF26: CVarStr var_E8
  loc_C0CF29: PopAdLdVar
  loc_C0CF2A: FLdPr Me
  loc_C0CF2D: VCallAd Control_ID_ServDevaFlex
  loc_C0CF30: FStAdFunc var_16C
  loc_C0CF33: FLdPr var_16C
  loc_C0CF36: LateIdCallSt
  loc_C0CF3E: FFreeAd var_88 = "": var_BC = ""
  loc_C0CF47: FFreeVar var_98 = ""
  loc_C0CF4E: FLdPr Me
  loc_C0CF51: VCallAd Control_ID_ServDevaFlex
  loc_C0CF54: FStAdFunc var_BC
  loc_C0CF57: FLdPr var_BC
  loc_C0CF5A: LateIdLdVar var_98 DispID_10 0
  loc_C0CF61: CI4Var
  loc_C0CF63: CVarI4
  loc_C0CF67: PopAdLdVar
  loc_C0CF68: LitVarI4
  loc_C0CF70: PopAdLdVar
  loc_C0CF71: FLdRfVar var_C4
  loc_C0CF74: FLdRfVar var_88
  loc_C0CF77: ImpAdLdRf MemVar_D948D0
  loc_C0CF7A: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CF7D: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CF82: FLdPr var_88
  loc_C0CF85: from_stack_1 = clsdevadeta.DetaSede
  loc_C0CF8A: FLdZeroAd var_C4
  loc_C0CF8D: CVarStr var_E8
  loc_C0CF90: PopAdLdVar
  loc_C0CF91: FLdPr Me
  loc_C0CF94: VCallAd Control_ID_ServDevaFlex
  loc_C0CF97: FStAdFunc var_16C
  loc_C0CF9A: FLdPr var_16C
  loc_C0CF9D: LateIdCallSt
  loc_C0CFA5: FFreeAd var_88 = "": var_BC = ""
  loc_C0CFAE: FFreeVar var_98 = ""
  loc_C0CFB5: FLdPr Me
  loc_C0CFB8: VCallAd Control_ID_ServDevaFlex
  loc_C0CFBB: FStAdFunc var_BC
  loc_C0CFBE: FLdPr var_BC
  loc_C0CFC1: LateIdLdVar var_98 DispID_10 0
  loc_C0CFC8: CI4Var
  loc_C0CFCA: CVarI4
  loc_C0CFCE: PopAdLdVar
  loc_C0CFCF: LitVarI4
  loc_C0CFD7: PopAdLdVar
  loc_C0CFD8: FLdRfVar var_D8
  loc_C0CFDB: FLdRfVar var_88
  loc_C0CFDE: ImpAdLdRf MemVar_D948D0
  loc_C0CFE1: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0CFE4: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0CFE9: FLdPr var_88
  loc_C0CFEC: from_stack_1 = clsdevadeta.PrunDede
  loc_C0CFF1: FLdFPR8 var_D8
  loc_C0CFF4: CStrR8
  loc_C0CFF6: CVarStr var_E8
  loc_C0CFF9: PopAdLdVar
  loc_C0CFFA: FLdPr Me
  loc_C0CFFD: VCallAd Control_ID_ServDevaFlex
  loc_C0D000: FStAdFunc var_16C
  loc_C0D003: FLdPr var_16C
  loc_C0D006: LateIdCallSt
  loc_C0D00E: FFreeAd var_88 = "": var_BC = ""
  loc_C0D017: FFreeVar var_98 = ""
  loc_C0D01E: FLdPr Me
  loc_C0D021: VCallAd Control_ID_ServDevaFlex
  loc_C0D024: FStAdFunc var_88
  loc_C0D027: FLdPr var_88
  loc_C0D02A: LateIdLdVar var_98 DispID_10 0
  loc_C0D031: CI4Var
  loc_C0D033: CVarI4
  loc_C0D037: PopAdLdVar
  loc_C0D038: LitVarI4
  loc_C0D040: PopAdLdVar
  loc_C0D041: FLdPr Me
  loc_C0D044: VCallAd Control_ID_ServDevaFlex
  loc_C0D047: FStAdFunc var_BC
  loc_C0D04A: FLdPr var_BC
  loc_C0D04D: LateIdCallLdVar
  loc_C0D057: CStrVarTmp
  loc_C0D058: CVarStr var_F8
  loc_C0D05B: ImpAdCallI2 IsNumeric()
  loc_C0D060: FLdPr Me
  loc_C0D063: VCallAd Control_ID_ServDevaFlex
  loc_C0D066: FStAdFunc var_16C
  loc_C0D069: FLdPr var_16C
  loc_C0D06C: LateIdLdVar var_108 DispID_10 0
  loc_C0D073: CI4Var
  loc_C0D075: CVarI4
  loc_C0D079: PopAdLdVar
  loc_C0D07A: LitVarI4
  loc_C0D082: PopAdLdVar
  loc_C0D083: FLdPr Me
  loc_C0D086: VCallAd Control_ID_ServDevaFlex
  loc_C0D089: FStAdFunc var_180
  loc_C0D08C: FLdPr var_180
  loc_C0D08F: LateIdCallLdVar
  loc_C0D099: CStrVarTmp
  loc_C0D09A: CVarStr var_190
  loc_C0D09D: ImpAdCallI2 IsNumeric()
  loc_C0D0A2: AndI4
  loc_C0D0A3: FFreeAd var_88 = "": var_BC = "": var_16C = ""
  loc_C0D0AE: FFreeVar var_98 = "": var_E8 = "": var_F8 = "": var_108 = "": var_158 = ""
  loc_C0D0BD: BranchF loc_C0D1D7
  loc_C0D0C0: FLdPr Me
  loc_C0D0C3: VCallAd Control_ID_ServDevaFlex
  loc_C0D0C6: FStAdFunc var_88
  loc_C0D0C9: FLdPr var_88
  loc_C0D0CC: LateIdLdVar var_98 DispID_10 0
  loc_C0D0D3: CI4Var
  loc_C0D0D5: CVarI4
  loc_C0D0D9: PopAdLdVar
  loc_C0D0DA: LitVarI4
  loc_C0D0E2: PopAdLdVar
  loc_C0D0E3: FLdPr Me
  loc_C0D0E6: VCallAd Control_ID_ServDevaFlex
  loc_C0D0E9: FStAdFunc var_BC
  loc_C0D0EC: FLdPr var_BC
  loc_C0D0EF: LateIdCallLdVar
  loc_C0D0F9: PopAd
  loc_C0D0FB: FLdPr Me
  loc_C0D0FE: VCallAd Control_ID_ServDevaFlex
  loc_C0D101: FStAdFunc var_16C
  loc_C0D104: FLdPr var_16C
  loc_C0D107: LateIdLdVar var_F8 DispID_10 0
  loc_C0D10E: CI4Var
  loc_C0D110: CVarI4
  loc_C0D114: PopAdLdVar
  loc_C0D115: LitVarI4
  loc_C0D11D: PopAdLdVar
  loc_C0D11E: FLdPr Me
  loc_C0D121: VCallAd Control_ID_ServDevaFlex
  loc_C0D124: FStAdFunc var_180
  loc_C0D127: FLdPr var_180
  loc_C0D12A: LateIdCallLdVar
  loc_C0D134: PopAd
  loc_C0D136: FLdPr Me
  loc_C0D139: VCallAd Control_ID_ServDevaFlex
  loc_C0D13C: FStAdFunc var_1C4
  loc_C0D13F: FLdPr var_1C4
  loc_C0D142: LateIdLdVar var_1D4 DispID_10 0
  loc_C0D149: CI4Var
  loc_C0D14B: CVarI4
  loc_C0D14F: PopAdLdVar
  loc_C0D150: LitVarI4
  loc_C0D158: PopAdLdVar
  loc_C0D159: LitI4 1
  loc_C0D15E: LitI4 1
  loc_C0D163: LitVarStr var_1B0, "0.00"
  loc_C0D168: FStVarCopyObj var_190
  loc_C0D16B: FLdRfVar var_190
  loc_C0D16E: FLdRfVar var_E8
  loc_C0D171: CStrVarTmp
  loc_C0D172: FStStrNoPop var_C4
  loc_C0D175: CR8Str
  loc_C0D177: FLdRfVar var_108
  loc_C0D17A: CStrVarTmp
  loc_C0D17B: FStStrNoPop var_CC
  loc_C0D17E: CR8Str
  loc_C0D180: MulR8
  loc_C0D181: CVarR8
  loc_C0D185: FLdRfVar var_1C0
  loc_C0D188: ImpAdCallFPR4  = Format(, )
  loc_C0D18D: FLdRfVar var_1C0
  loc_C0D190: CStrVarTmp
  loc_C0D191: CVarStr var_224
  loc_C0D194: PopAdLdVar
  loc_C0D195: FLdPr Me
  loc_C0D198: VCallAd Control_ID_ServDevaFlex
  loc_C0D19B: FStAdFunc var_238
  loc_C0D19E: FLdPr var_238
  loc_C0D1A1: LateIdCallSt
  loc_C0D1A9: FFreeStr var_C4 = ""
  loc_C0D1B0: FFreeAd var_88 = "": var_BC = "": var_16C = "": var_180 = "": var_1C4 = ""
  loc_C0D1BF: FFreeVar var_98 = "": var_E8 = "": var_F8 = "": var_108 = "": var_158 = "": var_190 = "": var_1D4 = "": var_1C0 = ""
  loc_C0D1D4: Branch loc_C0D29A
  loc_C0D1D7: FLdPr Me
  loc_C0D1DA: VCallAd Control_ID_ServDevaFlex
  loc_C0D1DD: FStAdFunc var_88
  loc_C0D1E0: FLdPr var_88
  loc_C0D1E3: LateIdLdVar var_98 DispID_10 0
  loc_C0D1EA: CI4Var
  loc_C0D1EC: CVarI4
  loc_C0D1F0: PopAdLdVar
  loc_C0D1F1: LitVarI4
  loc_C0D1F9: PopAdLdVar
  loc_C0D1FA: FLdPr Me
  loc_C0D1FD: VCallAd Control_ID_ServDevaFlex
  loc_C0D200: FStAdFunc var_BC
  loc_C0D203: FLdPr var_BC
  loc_C0D206: LateIdCallLdVar
  loc_C0D210: PopAd
  loc_C0D212: FLdPr Me
  loc_C0D215: VCallAd Control_ID_ServDevaFlex
  loc_C0D218: FStAdFunc var_16C
  loc_C0D21B: FLdPr var_16C
  loc_C0D21E: LateIdLdVar var_190 DispID_10 0
  loc_C0D225: CI4Var
  loc_C0D227: CVarI4
  loc_C0D22B: PopAdLdVar
  loc_C0D22C: LitVarI4
  loc_C0D234: PopAdLdVar
  loc_C0D235: LitI4 1
  loc_C0D23A: LitI4 1
  loc_C0D23F: LitVarStr var_148, "0.00"
  loc_C0D244: FStVarCopyObj var_108
  loc_C0D247: FLdRfVar var_108
  loc_C0D24A: FLdRfVar var_E8
  loc_C0D24D: CStrVarTmp
  loc_C0D24E: FStStrNoPop var_C4
  loc_C0D251: CR8Str
  loc_C0D253: CVarR8
  loc_C0D257: FLdRfVar var_158
  loc_C0D25A: ImpAdCallFPR4  = Format(, )
  loc_C0D25F: FLdRfVar var_158
  loc_C0D262: CStrVarTmp
  loc_C0D263: CVarStr var_1C0
  loc_C0D266: PopAdLdVar
  loc_C0D267: FLdPr Me
  loc_C0D26A: VCallAd Control_ID_ServDevaFlex
  loc_C0D26D: FStAdFunc var_180
  loc_C0D270: FLdPr var_180
  loc_C0D273: LateIdCallSt
  loc_C0D27B: FFree1Str var_C4
  loc_C0D27E: FFreeAd var_88 = "": var_BC = "": var_16C = ""
  loc_C0D289: FFreeVar var_98 = "": var_E8 = "": var_F8 = "": var_108 = "": var_190 = "": var_158 = ""
  loc_C0D29A: FLdPr Me
  loc_C0D29D: VCallAd Control_ID_ServDevaFlex
  loc_C0D2A0: FStAdFunc var_BC
  loc_C0D2A3: FLdPr var_BC
  loc_C0D2A6: LateIdLdVar var_98 DispID_10 0
  loc_C0D2AD: CI4Var
  loc_C0D2AF: CVarI4
  loc_C0D2B3: PopAdLdVar
  loc_C0D2B4: LitVarI4
  loc_C0D2BC: PopAdLdVar
  loc_C0D2BD: FLdRfVar var_C6
  loc_C0D2C0: FLdRfVar var_88
  loc_C0D2C3: ImpAdLdRf MemVar_D948D0
  loc_C0D2C6: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0D2C9: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0D2CE: FLdPr var_88
  loc_C0D2D1: from_stack_1 = clsdevadeta.PeriInfo
  loc_C0D2D6: FLdI2 var_C6
  loc_C0D2D9: CStrUI1
  loc_C0D2DB: CVarStr var_E8
  loc_C0D2DE: PopAdLdVar
  loc_C0D2DF: FLdPr Me
  loc_C0D2E2: VCallAd Control_ID_ServDevaFlex
  loc_C0D2E5: FStAdFunc var_16C
  loc_C0D2E8: FLdPr var_16C
  loc_C0D2EB: LateIdCallSt
  loc_C0D2F3: FFreeAd var_88 = "": var_BC = ""
  loc_C0D2FC: FFreeVar var_98 = ""
  loc_C0D303: FLdPr Me
  loc_C0D306: VCallAd Control_ID_ServDevaFlex
  loc_C0D309: FStAdFunc var_BC
  loc_C0D30C: FLdPr var_BC
  loc_C0D30F: LateIdLdVar var_98 DispID_10 0
  loc_C0D316: CI4Var
  loc_C0D318: CVarI4
  loc_C0D31C: PopAdLdVar
  loc_C0D31D: LitVarI4
  loc_C0D325: PopAdLdVar
  loc_C0D326: FLdRfVar var_C4
  loc_C0D329: FLdRfVar var_88
  loc_C0D32C: ImpAdLdRf MemVar_D948D0
  loc_C0D32F: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0D332: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0D337: FLdPr var_88
  loc_C0D33A: from_stack_1 = clsdevadeta.CodiConc
  loc_C0D33F: FLdZeroAd var_C4
  loc_C0D342: CVarStr var_E8
  loc_C0D345: PopAdLdVar
  loc_C0D346: FLdPr Me
  loc_C0D349: VCallAd Control_ID_ServDevaFlex
  loc_C0D34C: FStAdFunc var_16C
  loc_C0D34F: FLdPr var_16C
  loc_C0D352: LateIdCallSt
  loc_C0D35A: FFreeAd var_88 = "": var_BC = ""
  loc_C0D363: FFreeVar var_98 = ""
  loc_C0D36A: FLdPr Me
  loc_C0D36D: VCallAd Control_ID_ServDevaFlex
  loc_C0D370: FStAdFunc var_BC
  loc_C0D373: FLdPr var_BC
  loc_C0D376: LateIdLdVar var_98 DispID_10 0
  loc_C0D37D: CI4Var
  loc_C0D37F: CVarI4
  loc_C0D383: PopAdLdVar
  loc_C0D384: LitVarI4
  loc_C0D38C: PopAdLdVar
  loc_C0D38D: FLdRfVar var_C4
  loc_C0D390: FLdRfVar var_88
  loc_C0D393: ImpAdLdRf MemVar_D948D0
  loc_C0D396: NewIfNullPr dlgBuscarDerechosVariosDetalle
  loc_C0D399: from_stack_1v = dlgBuscarDerechosVariosDetalle.global_4279748Get()
  loc_C0D39E: FLdPr var_88
  loc_C0D3A1: from_stack_1 = clsdevadeta.VariSede
  loc_C0D3A6: FLdZeroAd var_C4
  loc_C0D3A9: CVarStr var_E8
  loc_C0D3AC: PopAdLdVar
  loc_C0D3AD: FLdPr Me
  loc_C0D3B0: VCallAd Control_ID_ServDevaFlex
  loc_C0D3B3: FStAdFunc var_16C
  loc_C0D3B6: FLdPr var_16C
  loc_C0D3B9: LateIdCallSt
  loc_C0D3C1: FFreeAd var_88 = "": var_BC = ""
  loc_C0D3CA: FFreeVar var_98 = ""
  loc_C0D3D1: Branch loc_C0D57C
  loc_C0D3D4: ILdI2 KeyCode
  loc_C0D3D7: CI4UI1
  loc_C0D3D8: LitI4 &H2D
  loc_C0D3DD: EqI4
  loc_C0D3DE: BranchF loc_C0D57C
  loc_C0D3E1: LitVarStr var_A8, vbNullString
  loc_C0D3E6: LitI4 9
  loc_C0D3EB: FLdRfVar var_98
  loc_C0D3EE: ImpAdCallFPR4  = Chr()
  loc_C0D3F3: FLdRfVar var_98
  loc_C0D3F6: ConcatVar var_E8
  loc_C0D3FA: LitVarStr var_B8, vbNullString
  loc_C0D3FF: ConcatVar var_F8
  loc_C0D403: LitI4 9
  loc_C0D408: FLdRfVar var_108
  loc_C0D40B: ImpAdCallFPR4  = Chr()
  loc_C0D410: FLdRfVar var_108
  loc_C0D413: ConcatVar var_158
  loc_C0D417: LitVarStr var_118, vbNullString
  loc_C0D41C: ConcatVar var_190
  loc_C0D420: LitI4 9
  loc_C0D425: FLdRfVar var_1C0
  loc_C0D428: ImpAdCallFPR4  = Chr()
  loc_C0D42D: FLdRfVar var_1C0
  loc_C0D430: ConcatVar var_1D4
  loc_C0D434: LitVarStr var_128, vbNullString
  loc_C0D439: ConcatVar var_224
  loc_C0D43D: LitI4 9
  loc_C0D442: FLdRfVar var_248
  loc_C0D445: ImpAdCallFPR4  = Chr()
  loc_C0D44A: FLdRfVar var_248
  loc_C0D44D: ConcatVar var_258
  loc_C0D451: LitVarStr var_138, vbNullString
  loc_C0D456: ConcatVar var_268
  loc_C0D45A: LitI4 9
  loc_C0D45F: FLdRfVar var_278
  loc_C0D462: ImpAdCallFPR4  = Chr()
  loc_C0D467: FLdRfVar var_278
  loc_C0D46A: ConcatVar var_288
  loc_C0D46E: LitVarStr var_148, vbNullString
  loc_C0D473: ConcatVar var_298
  loc_C0D477: LitI4 9
  loc_C0D47C: FLdRfVar var_2A8
  loc_C0D47F: ImpAdCallFPR4  = Chr()
  loc_C0D484: FLdRfVar var_2A8
  loc_C0D487: ConcatVar var_2B8
  loc_C0D48B: LitVarStr var_168, vbNullString
  loc_C0D490: ConcatVar var_2C8
  loc_C0D494: LitI4 9
  loc_C0D499: FLdRfVar var_2D8
  loc_C0D49C: ImpAdCallFPR4  = Chr()
  loc_C0D4A1: FLdRfVar var_2D8
  loc_C0D4A4: ConcatVar var_2E8
  loc_C0D4A8: LitVarStr var_17C, "0"
  loc_C0D4AD: ConcatVar var_2F8
  loc_C0D4B1: CStrVarTmp
  loc_C0D4B2: FStStrNoPop var_C4
  loc_C0D4B5: FLdPr Me
  loc_C0D4B8: MemStStrCopy
  loc_C0D4BC: FFree1Str var_C4
  loc_C0D4BF: FFreeVar var_98 = "": var_E8 = "": var_F8 = "": var_108 = "": var_158 = "": var_190 = "": var_1C0 = "": var_1D4 = "": var_224 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2C8 = "": var_2D8 = "": var_2E8 = ""
  loc_C0D4EC: FLdPr Me
  loc_C0D4EF: MemLdRfVar from_stack_1.global_76
  loc_C0D4F2: CDargRef
  loc_C0D4F6: FLdPr Me
  loc_C0D4F9: VCallAd Control_ID_ServDevaFlex
  loc_C0D4FC: FStAdFunc var_88
  loc_C0D4FF: FLdPr var_88
  loc_C0D502: LateIdCall
  loc_C0D50A: FFree1Ad var_88
  loc_C0D50D: FLdPr Me
  loc_C0D510: VCallAd Control_ID_ServDevaFlex
  loc_C0D513: FStAdFunc var_88
  loc_C0D516: FLdPr var_88
  loc_C0D519: LateIdLdVar var_98 DispID_10 0
  loc_C0D520: CI4Var
  loc_C0D522: LitI4 1
  loc_C0D527: AddI4
  loc_C0D528: CVarI4
  loc_C0D52C: PopAdLdVar
  loc_C0D52D: FLdPr Me
  loc_C0D530: VCallAd Control_ID_ServDevaFlex
  loc_C0D533: FStAdFunc var_BC
  loc_C0D536: FLdPr var_BC
  loc_C0D539: LateIdSt
  loc_C0D53E: FFreeAd var_88 = ""
  loc_C0D545: FFree1Var var_98 = ""
  loc_C0D548: LitVarI4
  loc_C0D550: PopAdLdVar
  loc_C0D551: FLdPr Me
  loc_C0D554: VCallAd Control_ID_ServDevaFlex
  loc_C0D557: FStAdFunc var_88
  loc_C0D55A: FLdPr var_88
  loc_C0D55D: LateIdSt
  loc_C0D562: FFree1Ad var_88
  loc_C0D565: FLdPr Me
  loc_C0D568: VCallAd Control_ID_ServDevaFlex
  loc_C0D56B: FStAdFunc var_88
  loc_C0D56E: FLdPr var_88
  loc_C0D571: LateIdCall
  loc_C0D579: FFree1Ad var_88
  loc_C0D57C: FLdRfVar var_C0
  loc_C0D57F: ImpAdCallI2 Err 'rtcErrObj
  loc_C0D584: FStAdFunc var_88
  loc_C0D587: FLdPr var_88
  loc_C0D58A:  = Err.Number
  loc_C0D58F: ILdRf var_C0
  loc_C0D592: LitI4 &H753F
  loc_C0D597: EqI4
  loc_C0D598: FFree1Ad var_88
  loc_C0D59B: BranchF loc_C0D5A3
  loc_C0D59E: Call Proc_280_25_B27330()
  loc_C0D5A3: Call Proc_280_26_B2C6C8()
  loc_C0D5A8: ExitProcHresult
  loc_C0D5A9: AryLock
End Sub

Private Sub ServDevaFlex_KeyPress(KeyAscii As Integer) 'C4A5CC
  'Data Table: 50E08C
  loc_C4987C: ILdI2 KeyAscii
  loc_C4987F: LitI2_Byte 8
  loc_C49881: EqI2
  loc_C49882: BranchF loc_C49A82
  loc_C49885: FLdPr Me
  loc_C49888: VCallAd Control_ID_ServDevaFlex
  loc_C4988B: FStAdFunc var_88
  loc_C4988E: FLdPr var_88
  loc_C49891: LateIdLdVar var_98 DispID_11 0
  loc_C49898: CI4Var
  loc_C4989A: LitI4 0
  loc_C4989F: EqI4
  loc_C498A0: FLdPr Me
  loc_C498A3: VCallAd Control_ID_ServDevaFlex
  loc_C498A6: FStAdFunc var_9C
  loc_C498A9: FLdPr var_9C
  loc_C498AC: LateIdLdVar var_AC DispID_11 0
  loc_C498B3: CI4Var
  loc_C498B5: LitI4 1
  loc_C498BA: EqI4
  loc_C498BB: OrI4
  loc_C498BC: FFreeAd var_88 = ""
  loc_C498C3: FFreeVar var_98 = ""
  loc_C498CA: BranchF loc_C49969
  loc_C498CD: FLdPr Me
  loc_C498D0: VCallAd Control_ID_ServDevaFlex
  loc_C498D3: FStAdFunc var_88
  loc_C498D6: FLdPr var_88
  loc_C498D9: LateIdLdVar var_98 DispID_0 0
  loc_C498E0: CStrVarTmp
  loc_C498E1: FStStrNoPop var_B0
  loc_C498E4: LitStr vbNullString
  loc_C498E7: NeStr
  loc_C498E9: FFree1Str var_B0
  loc_C498EC: FFree1Ad var_88
  loc_C498EF: FFree1Var var_98 = ""
  loc_C498F2: BranchF loc_C49969
  loc_C498F5: FLdPr Me
  loc_C498F8: VCallAd Control_ID_ServDevaFlex
  loc_C498FB: FStAdFunc var_88
  loc_C498FE: FLdPr var_88
  loc_C49901: LateIdLdVar var_98 DispID_0 0
  loc_C49908: PopAd
  loc_C4990A: FLdPr Me
  loc_C4990D: VCallAd Control_ID_ServDevaFlex
  loc_C49910: FStAdFunc var_9C
  loc_C49913: FLdPr var_9C
  loc_C49916: LateIdLdVar var_AC DispID_0 0
  loc_C4991D: CStrVarTmp
  loc_C4991E: FStStrNoPop var_B0
  loc_C49921: FnLenStr
  loc_C49922: LitI4 1
  loc_C49927: SubI4
  loc_C49928: FLdRfVar var_98
  loc_C4992B: CStrVarTmp
  loc_C4992C: CVarStr var_C0
  loc_C4992F: FLdRfVar var_D0
  loc_C49932: ImpAdCallFPR4  = Left(, )
  loc_C49937: FLdRfVar var_D0
  loc_C4993A: CStrVarTmp
  loc_C4993B: CVarStr var_E0
  loc_C4993E: PopAdLdVar
  loc_C4993F: FLdPr Me
  loc_C49942: VCallAd Control_ID_ServDevaFlex
  loc_C49945: FStAdFunc var_F4
  loc_C49948: FLdPr var_F4
  loc_C4994B: LateIdSt
  loc_C49950: FFree1Str var_B0
  loc_C49953: FFreeAd var_88 = "": var_9C = ""
  loc_C4995C: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C49969: FLdPr Me
  loc_C4996C: VCallAd Control_ID_ServDevaFlex
  loc_C4996F: FStAdFunc var_88
  loc_C49972: FLdPr var_88
  loc_C49975: LateIdLdVar var_98 DispID_11 0
  loc_C4997C: CI4Var
  loc_C4997E: LitI4 3
  loc_C49983: EqI4
  loc_C49984: FFree1Ad var_88
  loc_C49987: FFree1Var var_98 = ""
  loc_C4998A: BranchF loc_C49A7F
  loc_C4998D: FLdPr Me
  loc_C49990: VCallAd Control_ID_ServDevaFlex
  loc_C49993: FStAdFunc var_88
  loc_C49996: FLdPr var_88
  loc_C49999: LateIdLdVar var_98 DispID_10 0
  loc_C499A0: CI4Var
  loc_C499A2: CVarI4
  loc_C499A6: PopAdLdVar
  loc_C499A7: LitVarI4
  loc_C499AF: PopAdLdVar
  loc_C499B0: FLdPr Me
  loc_C499B3: VCallAd Control_ID_ServDevaFlex
  loc_C499B6: FStAdFunc var_9C
  loc_C499B9: FLdPr var_9C
  loc_C499BC: LateIdCallLdVar
  loc_C499C6: CStrVarTmp
  loc_C499C7: FStStrNoPop var_B0
  loc_C499CA: LitStr "1"
  loc_C499CD: EqStr
  loc_C499CF: FFree1Str var_B0
  loc_C499D2: FFreeAd var_88 = ""
  loc_C499D9: FFreeVar var_98 = ""
  loc_C499E0: BranchF loc_C49A7F
  loc_C499E3: FLdPr Me
  loc_C499E6: VCallAd Control_ID_ServDevaFlex
  loc_C499E9: FStAdFunc var_88
  loc_C499EC: FLdPr var_88
  loc_C499EF: LateIdLdVar var_98 DispID_0 0
  loc_C499F6: CStrVarTmp
  loc_C499F7: FStStrNoPop var_B0
  loc_C499FA: LitStr vbNullString
  loc_C499FD: NeStr
  loc_C499FF: FFree1Str var_B0
  loc_C49A02: FFree1Ad var_88
  loc_C49A05: FFree1Var var_98 = ""
  loc_C49A08: BranchF loc_C49A7F
  loc_C49A0B: FLdPr Me
  loc_C49A0E: VCallAd Control_ID_ServDevaFlex
  loc_C49A11: FStAdFunc var_88
  loc_C49A14: FLdPr var_88
  loc_C49A17: LateIdLdVar var_98 DispID_0 0
  loc_C49A1E: PopAd
  loc_C49A20: FLdPr Me
  loc_C49A23: VCallAd Control_ID_ServDevaFlex
  loc_C49A26: FStAdFunc var_9C
  loc_C49A29: FLdPr var_9C
  loc_C49A2C: LateIdLdVar var_AC DispID_0 0
  loc_C49A33: CStrVarTmp
  loc_C49A34: FStStrNoPop var_B0
  loc_C49A37: FnLenStr
  loc_C49A38: LitI4 1
  loc_C49A3D: SubI4
  loc_C49A3E: FLdRfVar var_98
  loc_C49A41: CStrVarTmp
  loc_C49A42: CVarStr var_C0
  loc_C49A45: FLdRfVar var_D0
  loc_C49A48: ImpAdCallFPR4  = Left(, )
  loc_C49A4D: FLdRfVar var_D0
  loc_C49A50: CStrVarTmp
  loc_C49A51: CVarStr var_E0
  loc_C49A54: PopAdLdVar
  loc_C49A55: FLdPr Me
  loc_C49A58: VCallAd Control_ID_ServDevaFlex
  loc_C49A5B: FStAdFunc var_F4
  loc_C49A5E: FLdPr var_F4
  loc_C49A61: LateIdSt
  loc_C49A66: FFree1Str var_B0
  loc_C49A69: FFreeAd var_88 = "": var_9C = ""
  loc_C49A72: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C49A7F: Branch loc_C4A5CB
  loc_C49A82: ILdI2 KeyAscii
  loc_C49A85: LitI2_Byte &H20
  loc_C49A87: EqI2
  loc_C49A88: BranchF loc_C4A316
  loc_C49A8B: FLdPr Me
  loc_C49A8E: VCallAd Control_ID_ServDevaFlex
  loc_C49A91: FStAdFunc var_88
  loc_C49A94: FLdPr var_88
  loc_C49A97: LateIdLdVar var_98 DispID_11 0
  loc_C49A9E: CI4Var
  loc_C49AA0: LitI4 1
  loc_C49AA5: EqI4
  loc_C49AA6: FLdPr Me
  loc_C49AA9: VCallAd Control_ID_ServDevaFlex
  loc_C49AAC: FStAdFunc var_9C
  loc_C49AAF: FLdPr var_9C
  loc_C49AB2: LateIdLdVar var_AC DispID_11 0
  loc_C49AB9: CI4Var
  loc_C49ABB: LitI4 2
  loc_C49AC0: EqI4
  loc_C49AC1: OrI4
  loc_C49AC2: FFreeAd var_88 = ""
  loc_C49AC9: FFreeVar var_98 = ""
  loc_C49AD0: BranchF loc_C4A30E
  loc_C49AD3: LitStr "0"
  loc_C49AD6: CUI1Str
  loc_C49AD8: ImpAdLdRf MemVar_D94A24
  loc_C49ADB: NewIfNullPr dlgBuscarServDeva
  loc_C49ADE: Call dlgBuscarServDeva.byCtctSedePut(from_stack_1v)
  loc_C49AE3: LitI2_Byte 3
  loc_C49AE5: CUI1I2
  loc_C49AE7: ImpAdLdRf MemVar_D94A24
  loc_C49AEA: NewIfNullPr dlgBuscarServDeva
  loc_C49AED: Call dlgBuscarServDeva.byCodiOficPut(from_stack_1v)
  loc_C49AF2: LitVar_Missing var_104
  loc_C49AF5: PopAdLdVar
  loc_C49AF6: LitVarI4
  loc_C49AFE: PopAdLdVar
  loc_C49AFF: ImpAdLdRf MemVar_D94A24
  loc_C49B02: NewIfNullPr dlgBuscarServDeva
  loc_C49B05: dlgBuscarServDeva.Show from_stack_1, from_stack_2
  loc_C49B0A: FLdRfVar var_128
  loc_C49B0D: FLdRfVar var_9C
  loc_C49B10: FLdRfVar var_88
  loc_C49B13: ImpAdLdRf MemVar_D94A24
  loc_C49B16: NewIfNullPr dlgBuscarServDeva
  loc_C49B19: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49B1E: FLdPr var_88
  loc_C49B21: from_stack_1v = clsbase.RsFrmGet()
  loc_C49B26: FLdPr var_9C
  loc_C49B29:  = Me.RecordCount
  loc_C49B2E: ILdRf var_128
  loc_C49B31: LitI4 0
  loc_C49B36: GtI4
  loc_C49B37: FFreeAd var_88 = ""
  loc_C49B3E: BranchF loc_C4A30E
  loc_C49B41: FLdRfVar var_98
  loc_C49B44: FLdRfVar var_12C
  loc_C49B47: LitVarStr var_F0, "PeriInfo"
  loc_C49B4C: PopAdLdVar
  loc_C49B4D: FLdRfVar var_F4
  loc_C49B50: FLdRfVar var_9C
  loc_C49B53: FLdRfVar var_88
  loc_C49B56: ImpAdLdRf MemVar_D94A24
  loc_C49B59: NewIfNullPr dlgBuscarServDeva
  loc_C49B5C: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49B61: FLdPr var_88
  loc_C49B64: from_stack_1v = clsbase.RsFrmGet()
  loc_C49B69: FLdPr var_9C
  loc_C49B6C:  = Me.Fields
  loc_C49B71: FLdPr var_F4
  loc_C49B74: from_stack_2 = Me.Item(from_stack_1)
  loc_C49B79: FLdPr var_12C
  loc_C49B7C:  = Me.Value
  loc_C49B81: FLdRfVar var_98
  loc_C49B84: FnCIntVar
  loc_C49B86: ImpAdLdI2 MemVar_D93034
  loc_C49B89: NeI2
  loc_C49B8A: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C49B95: FFree1Var var_98 = ""
  loc_C49B98: BranchF loc_C49BBB
  loc_C49B9B: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C49B9E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C49BA3: FLdPr Me
  loc_C49BA6: VCallAd Control_ID_ServDevaFlex
  loc_C49BA9: FStAdFunc var_88
  loc_C49BAC: FLdPr var_88
  loc_C49BAF: LateIdCall
  loc_C49BB7: FFree1Ad var_88
  loc_C49BBA: ExitProcHresult
  loc_C49BBB: FLdRfVar var_98
  loc_C49BBE: FLdRfVar var_12C
  loc_C49BC1: LitVarStr var_F0, "PeriInfo"
  loc_C49BC6: PopAdLdVar
  loc_C49BC7: FLdRfVar var_F4
  loc_C49BCA: FLdRfVar var_9C
  loc_C49BCD: FLdRfVar var_88
  loc_C49BD0: ImpAdLdRf MemVar_D94A24
  loc_C49BD3: NewIfNullPr dlgBuscarServDeva
  loc_C49BD6: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49BDB: FLdPr var_88
  loc_C49BDE: from_stack_1v = clsbase.RsFrmGet()
  loc_C49BE3: FLdPr var_9C
  loc_C49BE6:  = Me.Fields
  loc_C49BEB: FLdPr var_F4
  loc_C49BEE: from_stack_2 = Me.Item(from_stack_1)
  loc_C49BF3: FLdPr var_12C
  loc_C49BF6:  = Me.Value
  loc_C49BFB: FLdRfVar var_AC
  loc_C49BFE: FLdRfVar var_13C
  loc_C49C01: LitVarStr var_104, "CodiConc"
  loc_C49C06: PopAdLdVar
  loc_C49C07: FLdRfVar var_138
  loc_C49C0A: FLdRfVar var_134
  loc_C49C0D: FLdRfVar var_130
  loc_C49C10: ImpAdLdRf MemVar_D94A24
  loc_C49C13: NewIfNullPr dlgBuscarServDeva
  loc_C49C16: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49C1B: FLdPr var_130
  loc_C49C1E: from_stack_1v = clsbase.RsFrmGet()
  loc_C49C23: FLdPr var_134
  loc_C49C26:  = Me.Fields
  loc_C49C2B: FLdPr var_138
  loc_C49C2E: from_stack_2 = Me.Item(from_stack_1)
  loc_C49C33: FLdPr var_13C
  loc_C49C36:  = Me.Value
  loc_C49C3B: FLdRfVar var_AC
  loc_C49C3E: CStrVarTmp
  loc_C49C3F: FStStrNoPop var_B0
  loc_C49C42: FLdRfVar var_98
  loc_C49C45: CI2Var
  loc_C49C46: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C49C4B: FStStrNoPop var_140
  loc_C49C4E: LitStr vbNullString
  loc_C49C51: EqStr
  loc_C49C53: FFreeStr var_B0 = ""
  loc_C49C5A: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_134 = "": var_138 = "": var_12C = ""
  loc_C49C6D: FFreeVar var_98 = ""
  loc_C49C74: BranchF loc_C49CED
  loc_C49C77: LitVarStr var_104, "El recurso: "
  loc_C49C7C: FLdRfVar var_98
  loc_C49C7F: FLdRfVar var_12C
  loc_C49C82: LitVarStr var_F0, "CodiConc"
  loc_C49C87: PopAdLdVar
  loc_C49C88: FLdRfVar var_F4
  loc_C49C8B: FLdRfVar var_9C
  loc_C49C8E: FLdRfVar var_88
  loc_C49C91: ImpAdLdRf MemVar_D94A24
  loc_C49C94: NewIfNullPr dlgBuscarServDeva
  loc_C49C97: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49C9C: FLdPr var_88
  loc_C49C9F: from_stack_1v = clsbase.RsFrmGet()
  loc_C49CA4: FLdPr var_9C
  loc_C49CA7:  = Me.Fields
  loc_C49CAC: FLdPr var_F4
  loc_C49CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_C49CB4: FLdPr var_12C
  loc_C49CB7:  = Me.Value
  loc_C49CBC: FLdRfVar var_98
  loc_C49CBF: ConcatVar var_AC
  loc_C49CC3: LitVarStr var_114, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C49CC8: ConcatVar var_C0
  loc_C49CCC: CStrVarVal var_B0
  loc_C49CD0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C49CD5: FFree1Str var_B0
  loc_C49CD8: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C49CE3: FFreeVar var_98 = "": var_AC = ""
  loc_C49CEC: ExitProcHresult
  loc_C49CED: FLdPr Me
  loc_C49CF0: VCallAd Control_ID_ServDevaFlex
  loc_C49CF3: FStAdFunc var_130
  loc_C49CF6: FLdPr var_130
  loc_C49CF9: LateIdLdVar var_98 DispID_10 0
  loc_C49D00: CI4Var
  loc_C49D02: CVarI4
  loc_C49D06: PopAdLdVar
  loc_C49D07: LitVarI4
  loc_C49D0F: PopAdLdVar
  loc_C49D10: FLdRfVar var_AC
  loc_C49D13: FLdRfVar var_12C
  loc_C49D16: LitVarStr var_F0, "CodiSede"
  loc_C49D1B: PopAdLdVar
  loc_C49D1C: FLdRfVar var_F4
  loc_C49D1F: FLdRfVar var_9C
  loc_C49D22: FLdRfVar var_88
  loc_C49D25: ImpAdLdRf MemVar_D94A24
  loc_C49D28: NewIfNullPr dlgBuscarServDeva
  loc_C49D2B: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49D30: FLdPr var_88
  loc_C49D33: from_stack_1v = clsbase.RsFrmGet()
  loc_C49D38: FLdPr var_9C
  loc_C49D3B:  = Me.Fields
  loc_C49D40: FLdPr var_F4
  loc_C49D43: from_stack_2 = Me.Item(from_stack_1)
  loc_C49D48: FLdPr var_12C
  loc_C49D4B:  = Me.Value
  loc_C49D50: FLdRfVar var_AC
  loc_C49D53: CStrVarTmp
  loc_C49D54: CVarStr var_C0
  loc_C49D57: PopAdLdVar
  loc_C49D58: FLdPr Me
  loc_C49D5B: VCallAd Control_ID_ServDevaFlex
  loc_C49D5E: FStAdFunc var_134
  loc_C49D61: FLdPr var_134
  loc_C49D64: LateIdCallSt
  loc_C49D6C: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C49D7B: FFreeVar var_98 = "": var_AC = ""
  loc_C49D84: FLdPr Me
  loc_C49D87: VCallAd Control_ID_ServDevaFlex
  loc_C49D8A: FStAdFunc var_130
  loc_C49D8D: FLdPr var_130
  loc_C49D90: LateIdLdVar var_98 DispID_10 0
  loc_C49D97: CI4Var
  loc_C49D99: CVarI4
  loc_C49D9D: PopAdLdVar
  loc_C49D9E: LitVarI4
  loc_C49DA6: PopAdLdVar
  loc_C49DA7: FLdRfVar var_AC
  loc_C49DAA: FLdRfVar var_12C
  loc_C49DAD: LitVarStr var_F0, "DetaSede"
  loc_C49DB2: PopAdLdVar
  loc_C49DB3: FLdRfVar var_F4
  loc_C49DB6: FLdRfVar var_9C
  loc_C49DB9: FLdRfVar var_88
  loc_C49DBC: ImpAdLdRf MemVar_D94A24
  loc_C49DBF: NewIfNullPr dlgBuscarServDeva
  loc_C49DC2: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49DC7: FLdPr var_88
  loc_C49DCA: from_stack_1v = clsbase.RsFrmGet()
  loc_C49DCF: FLdPr var_9C
  loc_C49DD2:  = Me.Fields
  loc_C49DD7: FLdPr var_F4
  loc_C49DDA: from_stack_2 = Me.Item(from_stack_1)
  loc_C49DDF: FLdPr var_12C
  loc_C49DE2:  = Me.Value
  loc_C49DE7: FLdRfVar var_AC
  loc_C49DEA: CStrVarTmp
  loc_C49DEB: CVarStr var_C0
  loc_C49DEE: PopAdLdVar
  loc_C49DEF: FLdPr Me
  loc_C49DF2: VCallAd Control_ID_ServDevaFlex
  loc_C49DF5: FStAdFunc var_134
  loc_C49DF8: FLdPr var_134
  loc_C49DFB: LateIdCallSt
  loc_C49E03: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C49E12: FFreeVar var_98 = "": var_AC = ""
  loc_C49E1B: FLdRfVar var_12C
  loc_C49E1E: LitVarStr var_F0, "ImpoSede"
  loc_C49E23: PopAdLdVar
  loc_C49E24: FLdRfVar var_F4
  loc_C49E27: FLdRfVar var_9C
  loc_C49E2A: FLdRfVar var_88
  loc_C49E2D: ImpAdLdRf MemVar_D94A24
  loc_C49E30: NewIfNullPr dlgBuscarServDeva
  loc_C49E33: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C49E38: FLdPr var_88
  loc_C49E3B: from_stack_1v = clsbase.RsFrmGet()
  loc_C49E40: FLdPr var_9C
  loc_C49E43:  = Me.Fields
  loc_C49E48: FLdPr var_F4
  loc_C49E4B: from_stack_2 = Me.Item(from_stack_1)
  loc_C49E50: FLdPr Me
  loc_C49E53: VCallAd Control_ID_ServDevaFlex
  loc_C49E56: FStAdFunc var_130
  loc_C49E59: FLdPr var_130
  loc_C49E5C: LateIdLdVar var_D0 DispID_10 0
  loc_C49E63: CI4Var
  loc_C49E65: CVarI4
  loc_C49E69: PopAdLdVar
  loc_C49E6A: LitVarI4
  loc_C49E72: PopAdLdVar
  loc_C49E73: LitI4 1
  loc_C49E78: LitI4 1
  loc_C49E7D: LitVarStr var_104, "0.00"
  loc_C49E82: FStVarCopyObj var_AC
  loc_C49E85: FLdRfVar var_AC
  loc_C49E88: FLdZeroAd var_12C
  loc_C49E8B: CVarAd
  loc_C49E8F: FLdRfVar var_C0
  loc_C49E92: ImpAdCallFPR4  = Format(, )
  loc_C49E97: FLdRfVar var_C0
  loc_C49E9A: CStrVarTmp
  loc_C49E9B: CVarStr var_E0
  loc_C49E9E: PopAdLdVar
  loc_C49E9F: FLdPr Me
  loc_C49EA2: VCallAd Control_ID_ServDevaFlex
  loc_C49EA5: FStAdFunc var_134
  loc_C49EA8: FLdPr var_134
  loc_C49EAB: LateIdCallSt
  loc_C49EB3: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = ""
  loc_C49EC0: FFreeVar var_98 = "": var_AC = "": var_D0 = "": var_C0 = ""
  loc_C49ECD: FLdPr Me
  loc_C49ED0: VCallAd Control_ID_ServDevaFlex
  loc_C49ED3: FStAdFunc var_88
  loc_C49ED6: FLdPr var_88
  loc_C49ED9: LateIdLdVar var_98 DispID_10 0
  loc_C49EE0: CI4Var
  loc_C49EE2: CVarI4
  loc_C49EE6: PopAdLdVar
  loc_C49EE7: LitVarI4
  loc_C49EEF: PopAdLdVar
  loc_C49EF0: FLdPr Me
  loc_C49EF3: VCallAd Control_ID_ServDevaFlex
  loc_C49EF6: FStAdFunc var_9C
  loc_C49EF9: FLdPr var_9C
  loc_C49EFC: LateIdCallLdVar
  loc_C49F06: CStrVarTmp
  loc_C49F07: CVarStr var_C0
  loc_C49F0A: ImpAdCallI2 IsNumeric()
  loc_C49F0F: FLdPr Me
  loc_C49F12: VCallAd Control_ID_ServDevaFlex
  loc_C49F15: FStAdFunc var_F4
  loc_C49F18: FLdPr var_F4
  loc_C49F1B: LateIdLdVar var_D0 DispID_10 0
  loc_C49F22: CI4Var
  loc_C49F24: CVarI4
  loc_C49F28: PopAdLdVar
  loc_C49F29: LitVarI4
  loc_C49F31: PopAdLdVar
  loc_C49F32: FLdPr Me
  loc_C49F35: VCallAd Control_ID_ServDevaFlex
  loc_C49F38: FStAdFunc var_12C
  loc_C49F3B: FLdPr var_12C
  loc_C49F3E: LateIdCallLdVar
  loc_C49F48: CStrVarTmp
  loc_C49F49: CVarStr var_190
  loc_C49F4C: ImpAdCallI2 IsNumeric()
  loc_C49F51: AndI4
  loc_C49F52: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C49F5D: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = ""
  loc_C49F6C: BranchF loc_C4A086
  loc_C49F6F: FLdPr Me
  loc_C49F72: VCallAd Control_ID_ServDevaFlex
  loc_C49F75: FStAdFunc var_88
  loc_C49F78: FLdPr var_88
  loc_C49F7B: LateIdLdVar var_98 DispID_10 0
  loc_C49F82: CI4Var
  loc_C49F84: CVarI4
  loc_C49F88: PopAdLdVar
  loc_C49F89: LitVarI4
  loc_C49F91: PopAdLdVar
  loc_C49F92: FLdPr Me
  loc_C49F95: VCallAd Control_ID_ServDevaFlex
  loc_C49F98: FStAdFunc var_9C
  loc_C49F9B: FLdPr var_9C
  loc_C49F9E: LateIdCallLdVar
  loc_C49FA8: PopAd
  loc_C49FAA: FLdPr Me
  loc_C49FAD: VCallAd Control_ID_ServDevaFlex
  loc_C49FB0: FStAdFunc var_F4
  loc_C49FB3: FLdPr var_F4
  loc_C49FB6: LateIdLdVar var_C0 DispID_10 0
  loc_C49FBD: CI4Var
  loc_C49FBF: CVarI4
  loc_C49FC3: PopAdLdVar
  loc_C49FC4: LitVarI4
  loc_C49FCC: PopAdLdVar
  loc_C49FCD: FLdPr Me
  loc_C49FD0: VCallAd Control_ID_ServDevaFlex
  loc_C49FD3: FStAdFunc var_12C
  loc_C49FD6: FLdPr var_12C
  loc_C49FD9: LateIdCallLdVar
  loc_C49FE3: PopAd
  loc_C49FE5: FLdPr Me
  loc_C49FE8: VCallAd Control_ID_ServDevaFlex
  loc_C49FEB: FStAdFunc var_130
  loc_C49FEE: FLdPr var_130
  loc_C49FF1: LateIdLdVar var_1D0 DispID_10 0
  loc_C49FF8: CI4Var
  loc_C49FFA: CVarI4
  loc_C49FFE: PopAdLdVar
  loc_C49FFF: LitVarI4
  loc_C4A007: PopAdLdVar
  loc_C4A008: LitI4 1
  loc_C4A00D: LitI4 1
  loc_C4A012: LitVarStr var_1B0, "0.00"
  loc_C4A017: FStVarCopyObj var_190
  loc_C4A01A: FLdRfVar var_190
  loc_C4A01D: FLdRfVar var_AC
  loc_C4A020: CStrVarTmp
  loc_C4A021: FStStrNoPop var_B0
  loc_C4A024: CR8Str
  loc_C4A026: FLdRfVar var_D0
  loc_C4A029: CStrVarTmp
  loc_C4A02A: FStStrNoPop var_140
  loc_C4A02D: CR8Str
  loc_C4A02F: MulR8
  loc_C4A030: CVarR8
  loc_C4A034: FLdRfVar var_1C0
  loc_C4A037: ImpAdCallFPR4  = Format(, )
  loc_C4A03C: FLdRfVar var_1C0
  loc_C4A03F: CStrVarTmp
  loc_C4A040: CVarStr var_220
  loc_C4A043: PopAdLdVar
  loc_C4A044: FLdPr Me
  loc_C4A047: VCallAd Control_ID_ServDevaFlex
  loc_C4A04A: FStAdFunc var_134
  loc_C4A04D: FLdPr var_134
  loc_C4A050: LateIdCallSt
  loc_C4A058: FFreeStr var_B0 = ""
  loc_C4A05F: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_12C = "": var_130 = ""
  loc_C4A06E: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = "": var_190 = "": var_1D0 = "": var_1C0 = ""
  loc_C4A083: Branch loc_C4A149
  loc_C4A086: FLdPr Me
  loc_C4A089: VCallAd Control_ID_ServDevaFlex
  loc_C4A08C: FStAdFunc var_88
  loc_C4A08F: FLdPr var_88
  loc_C4A092: LateIdLdVar var_98 DispID_10 0
  loc_C4A099: CI4Var
  loc_C4A09B: CVarI4
  loc_C4A09F: PopAdLdVar
  loc_C4A0A0: LitVarI4
  loc_C4A0A8: PopAdLdVar
  loc_C4A0A9: FLdPr Me
  loc_C4A0AC: VCallAd Control_ID_ServDevaFlex
  loc_C4A0AF: FStAdFunc var_9C
  loc_C4A0B2: FLdPr var_9C
  loc_C4A0B5: LateIdCallLdVar
  loc_C4A0BF: PopAd
  loc_C4A0C1: FLdPr Me
  loc_C4A0C4: VCallAd Control_ID_ServDevaFlex
  loc_C4A0C7: FStAdFunc var_F4
  loc_C4A0CA: FLdPr var_F4
  loc_C4A0CD: LateIdLdVar var_190 DispID_10 0
  loc_C4A0D4: CI4Var
  loc_C4A0D6: CVarI4
  loc_C4A0DA: PopAdLdVar
  loc_C4A0DB: LitVarI4
  loc_C4A0E3: PopAdLdVar
  loc_C4A0E4: LitI4 1
  loc_C4A0E9: LitI4 1
  loc_C4A0EE: LitVarStr var_160, "0.00"
  loc_C4A0F3: FStVarCopyObj var_D0
  loc_C4A0F6: FLdRfVar var_D0
  loc_C4A0F9: FLdRfVar var_AC
  loc_C4A0FC: CStrVarTmp
  loc_C4A0FD: FStStrNoPop var_B0
  loc_C4A100: CR8Str
  loc_C4A102: CVarR8
  loc_C4A106: FLdRfVar var_E0
  loc_C4A109: ImpAdCallFPR4  = Format(, )
  loc_C4A10E: FLdRfVar var_E0
  loc_C4A111: CStrVarTmp
  loc_C4A112: CVarStr var_1C0
  loc_C4A115: PopAdLdVar
  loc_C4A116: FLdPr Me
  loc_C4A119: VCallAd Control_ID_ServDevaFlex
  loc_C4A11C: FStAdFunc var_12C
  loc_C4A11F: FLdPr var_12C
  loc_C4A122: LateIdCallSt
  loc_C4A12A: FFree1Str var_B0
  loc_C4A12D: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C4A138: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_190 = "": var_E0 = ""
  loc_C4A149: FLdPr Me
  loc_C4A14C: VCallAd Control_ID_ServDevaFlex
  loc_C4A14F: FStAdFunc var_130
  loc_C4A152: FLdPr var_130
  loc_C4A155: LateIdLdVar var_98 DispID_10 0
  loc_C4A15C: CI4Var
  loc_C4A15E: CVarI4
  loc_C4A162: PopAdLdVar
  loc_C4A163: LitVarI4
  loc_C4A16B: PopAdLdVar
  loc_C4A16C: FLdRfVar var_AC
  loc_C4A16F: FLdRfVar var_12C
  loc_C4A172: LitVarStr var_F0, "PeriInfo"
  loc_C4A177: PopAdLdVar
  loc_C4A178: FLdRfVar var_F4
  loc_C4A17B: FLdRfVar var_9C
  loc_C4A17E: FLdRfVar var_88
  loc_C4A181: ImpAdLdRf MemVar_D94A24
  loc_C4A184: NewIfNullPr dlgBuscarServDeva
  loc_C4A187: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C4A18C: FLdPr var_88
  loc_C4A18F: from_stack_1v = clsbase.RsFrmGet()
  loc_C4A194: FLdPr var_9C
  loc_C4A197:  = Me.Fields
  loc_C4A19C: FLdPr var_F4
  loc_C4A19F: from_stack_2 = Me.Item(from_stack_1)
  loc_C4A1A4: FLdPr var_12C
  loc_C4A1A7:  = Me.Value
  loc_C4A1AC: FLdRfVar var_AC
  loc_C4A1AF: CStrVarTmp
  loc_C4A1B0: CVarStr var_C0
  loc_C4A1B3: PopAdLdVar
  loc_C4A1B4: FLdPr Me
  loc_C4A1B7: VCallAd Control_ID_ServDevaFlex
  loc_C4A1BA: FStAdFunc var_134
  loc_C4A1BD: FLdPr var_134
  loc_C4A1C0: LateIdCallSt
  loc_C4A1C8: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C4A1D7: FFreeVar var_98 = "": var_AC = ""
  loc_C4A1E0: FLdPr Me
  loc_C4A1E3: VCallAd Control_ID_ServDevaFlex
  loc_C4A1E6: FStAdFunc var_130
  loc_C4A1E9: FLdPr var_130
  loc_C4A1EC: LateIdLdVar var_98 DispID_10 0
  loc_C4A1F3: CI4Var
  loc_C4A1F5: CVarI4
  loc_C4A1F9: PopAdLdVar
  loc_C4A1FA: LitVarI4
  loc_C4A202: PopAdLdVar
  loc_C4A203: FLdRfVar var_AC
  loc_C4A206: FLdRfVar var_12C
  loc_C4A209: LitVarStr var_F0, "CodiConc"
  loc_C4A20E: PopAdLdVar
  loc_C4A20F: FLdRfVar var_F4
  loc_C4A212: FLdRfVar var_9C
  loc_C4A215: FLdRfVar var_88
  loc_C4A218: ImpAdLdRf MemVar_D94A24
  loc_C4A21B: NewIfNullPr dlgBuscarServDeva
  loc_C4A21E: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C4A223: FLdPr var_88
  loc_C4A226: from_stack_1v = clsbase.RsFrmGet()
  loc_C4A22B: FLdPr var_9C
  loc_C4A22E:  = Me.Fields
  loc_C4A233: FLdPr var_F4
  loc_C4A236: from_stack_2 = Me.Item(from_stack_1)
  loc_C4A23B: FLdPr var_12C
  loc_C4A23E:  = Me.Value
  loc_C4A243: FLdRfVar var_AC
  loc_C4A246: CStrVarTmp
  loc_C4A247: CVarStr var_C0
  loc_C4A24A: PopAdLdVar
  loc_C4A24B: FLdPr Me
  loc_C4A24E: VCallAd Control_ID_ServDevaFlex
  loc_C4A251: FStAdFunc var_134
  loc_C4A254: FLdPr var_134
  loc_C4A257: LateIdCallSt
  loc_C4A25F: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C4A26E: FFreeVar var_98 = "": var_AC = ""
  loc_C4A277: FLdPr Me
  loc_C4A27A: VCallAd Control_ID_ServDevaFlex
  loc_C4A27D: FStAdFunc var_130
  loc_C4A280: FLdPr var_130
  loc_C4A283: LateIdLdVar var_98 DispID_10 0
  loc_C4A28A: CI4Var
  loc_C4A28C: CVarI4
  loc_C4A290: PopAdLdVar
  loc_C4A291: LitVarI4
  loc_C4A299: PopAdLdVar
  loc_C4A29A: FLdRfVar var_AC
  loc_C4A29D: FLdRfVar var_12C
  loc_C4A2A0: LitVarStr var_F0, "VariSede"
  loc_C4A2A5: PopAdLdVar
  loc_C4A2A6: FLdRfVar var_F4
  loc_C4A2A9: FLdRfVar var_9C
  loc_C4A2AC: FLdRfVar var_88
  loc_C4A2AF: ImpAdLdRf MemVar_D94A24
  loc_C4A2B2: NewIfNullPr dlgBuscarServDeva
  loc_C4A2B5: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C4A2BA: FLdPr var_88
  loc_C4A2BD: from_stack_1v = clsbase.RsFrmGet()
  loc_C4A2C2: FLdPr var_9C
  loc_C4A2C5:  = Me.Fields
  loc_C4A2CA: FLdPr var_F4
  loc_C4A2CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C4A2D2: FLdPr var_12C
  loc_C4A2D5:  = Me.Value
  loc_C4A2DA: FLdRfVar var_AC
  loc_C4A2DD: CStrVarTmp
  loc_C4A2DE: CVarStr var_C0
  loc_C4A2E1: PopAdLdVar
  loc_C4A2E2: FLdPr Me
  loc_C4A2E5: VCallAd Control_ID_ServDevaFlex
  loc_C4A2E8: FStAdFunc var_134
  loc_C4A2EB: FLdPr var_134
  loc_C4A2EE: LateIdCallSt
  loc_C4A2F6: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C4A305: FFreeVar var_98 = "": var_AC = ""
  loc_C4A30E: Call Proc_280_26_B2C6C8()
  loc_C4A313: Branch loc_C4A5CB
  loc_C4A316: FLdPr Me
  loc_C4A319: VCallAd Control_ID_ServDevaFlex
  loc_C4A31C: FStAdFunc var_88
  loc_C4A31F: FLdPr var_88
  loc_C4A322: LateIdLdVar var_98 DispID_11 0
  loc_C4A329: CI4Var
  loc_C4A32B: LitI4 0
  loc_C4A330: EqI4
  loc_C4A331: FFree1Ad var_88
  loc_C4A334: FFree1Var var_98 = ""
  loc_C4A337: BranchF loc_C4A3E9
  loc_C4A33A: FLdPr Me
  loc_C4A33D: VCallAd Control_ID_ServDevaFlex
  loc_C4A340: FStAdFunc var_88
  loc_C4A343: FLdPr var_88
  loc_C4A346: LateIdLdVar var_98 DispID_0 0
  loc_C4A34D: CStrVarTmp
  loc_C4A34E: FStStrNoPop var_B0
  loc_C4A351: FnLenStr
  loc_C4A352: LitI4 4
  loc_C4A357: LeI4
  loc_C4A358: FFree1Str var_B0
  loc_C4A35B: FFree1Ad var_88
  loc_C4A35E: FFree1Var var_98 = ""
  loc_C4A361: BranchF loc_C4A3E9
  loc_C4A364: LitStr "1234567890,."
  loc_C4A367: FStStrCopy var_B0
  loc_C4A36A: FLdRfVar var_B0
  loc_C4A36D: ILdRf KeyAscii
  loc_C4A370: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C4A375: IStI2 KeyAscii
  loc_C4A378: FFree1Str var_B0
  loc_C4A37B: ILdI2 KeyAscii
  loc_C4A37E: LitStr "."
  loc_C4A381: ImpAdCallI2 Asc()
  loc_C4A386: EqI2
  loc_C4A387: BranchF loc_C4A395
  loc_C4A38A: LitStr ","
  loc_C4A38D: ImpAdCallI2 Asc()
  loc_C4A392: IStI2 KeyAscii
  loc_C4A395: FLdPr Me
  loc_C4A398: VCallAd Control_ID_ServDevaFlex
  loc_C4A39B: FStAdFunc var_88
  loc_C4A39E: FLdPr var_88
  loc_C4A3A1: LateIdLdVar var_98 DispID_0 0
  loc_C4A3A8: CStrVarTmp
  loc_C4A3A9: CVarStr var_C0
  loc_C4A3AC: ILdI2 KeyAscii
  loc_C4A3AF: CI4UI1
  loc_C4A3B0: FLdRfVar var_AC
  loc_C4A3B3: ImpAdCallFPR4  = Chr()
  loc_C4A3B8: FLdRfVar var_AC
  loc_C4A3BB: AddVar var_D0
  loc_C4A3BF: CStrVarTmp
  loc_C4A3C0: CVarStr var_E0
  loc_C4A3C3: PopAdLdVar
  loc_C4A3C4: FLdPr Me
  loc_C4A3C7: VCallAd Control_ID_ServDevaFlex
  loc_C4A3CA: FStAdFunc var_9C
  loc_C4A3CD: FLdPr var_9C
  loc_C4A3D0: LateIdSt
  loc_C4A3D5: FFreeAd var_88 = ""
  loc_C4A3DC: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C4A3E9: FLdPr Me
  loc_C4A3EC: VCallAd Control_ID_ServDevaFlex
  loc_C4A3EF: FStAdFunc var_88
  loc_C4A3F2: FLdPr var_88
  loc_C4A3F5: LateIdLdVar var_98 DispID_11 0
  loc_C4A3FC: CI4Var
  loc_C4A3FE: LitI4 1
  loc_C4A403: EqI4
  loc_C4A404: FFree1Ad var_88
  loc_C4A407: FFree1Var var_98 = ""
  loc_C4A40A: BranchF loc_C4A4A2
  loc_C4A40D: FLdPr Me
  loc_C4A410: VCallAd Control_ID_ServDevaFlex
  loc_C4A413: FStAdFunc var_88
  loc_C4A416: FLdPr var_88
  loc_C4A419: LateIdLdVar var_98 DispID_0 0
  loc_C4A420: CStrVarTmp
  loc_C4A421: FStStrNoPop var_B0
  loc_C4A424: FnLenStr
  loc_C4A425: LitI4 4
  loc_C4A42A: LeI4
  loc_C4A42B: FFree1Str var_B0
  loc_C4A42E: FFree1Ad var_88
  loc_C4A431: FFree1Var var_98 = ""
  loc_C4A434: BranchF loc_C4A4A2
  loc_C4A437: LitStr "1234567890"
  loc_C4A43A: FStStrCopy var_B0
  loc_C4A43D: FLdRfVar var_B0
  loc_C4A440: ILdRf KeyAscii
  loc_C4A443: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C4A448: IStI2 KeyAscii
  loc_C4A44B: FFree1Str var_B0
  loc_C4A44E: FLdPr Me
  loc_C4A451: VCallAd Control_ID_ServDevaFlex
  loc_C4A454: FStAdFunc var_88
  loc_C4A457: FLdPr var_88
  loc_C4A45A: LateIdLdVar var_98 DispID_0 0
  loc_C4A461: CStrVarTmp
  loc_C4A462: CVarStr var_C0
  loc_C4A465: ILdI2 KeyAscii
  loc_C4A468: CI4UI1
  loc_C4A469: FLdRfVar var_AC
  loc_C4A46C: ImpAdCallFPR4  = Chr()
  loc_C4A471: FLdRfVar var_AC
  loc_C4A474: AddVar var_D0
  loc_C4A478: CStrVarTmp
  loc_C4A479: CVarStr var_E0
  loc_C4A47C: PopAdLdVar
  loc_C4A47D: FLdPr Me
  loc_C4A480: VCallAd Control_ID_ServDevaFlex
  loc_C4A483: FStAdFunc var_9C
  loc_C4A486: FLdPr var_9C
  loc_C4A489: LateIdSt
  loc_C4A48E: FFreeAd var_88 = ""
  loc_C4A495: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C4A4A2: FLdPr Me
  loc_C4A4A5: VCallAd Control_ID_ServDevaFlex
  loc_C4A4A8: FStAdFunc var_88
  loc_C4A4AB: FLdPr var_88
  loc_C4A4AE: LateIdLdVar var_98 DispID_11 0
  loc_C4A4B5: CI4Var
  loc_C4A4B7: LitI4 3
  loc_C4A4BC: EqI4
  loc_C4A4BD: FFree1Ad var_88
  loc_C4A4C0: FFree1Var var_98 = ""
  loc_C4A4C3: BranchF loc_C4A5CB
  loc_C4A4C6: FLdPr Me
  loc_C4A4C9: VCallAd Control_ID_ServDevaFlex
  loc_C4A4CC: FStAdFunc var_88
  loc_C4A4CF: FLdPr var_88
  loc_C4A4D2: LateIdLdVar var_98 DispID_10 0
  loc_C4A4D9: CI4Var
  loc_C4A4DB: CVarI4
  loc_C4A4DF: PopAdLdVar
  loc_C4A4E0: LitVarI4
  loc_C4A4E8: PopAdLdVar
  loc_C4A4E9: FLdPr Me
  loc_C4A4EC: VCallAd Control_ID_ServDevaFlex
  loc_C4A4EF: FStAdFunc var_9C
  loc_C4A4F2: FLdPr var_9C
  loc_C4A4F5: LateIdCallLdVar
  loc_C4A4FF: CStrVarTmp
  loc_C4A500: FStStrNoPop var_B0
  loc_C4A503: LitStr "1"
  loc_C4A506: EqStr
  loc_C4A508: FFree1Str var_B0
  loc_C4A50B: FFreeAd var_88 = ""
  loc_C4A512: FFreeVar var_98 = ""
  loc_C4A519: BranchF loc_C4A5CB
  loc_C4A51C: FLdPr Me
  loc_C4A51F: VCallAd Control_ID_ServDevaFlex
  loc_C4A522: FStAdFunc var_88
  loc_C4A525: FLdPr var_88
  loc_C4A528: LateIdLdVar var_98 DispID_0 0
  loc_C4A52F: CStrVarTmp
  loc_C4A530: FStStrNoPop var_B0
  loc_C4A533: FnLenStr
  loc_C4A534: LitI4 &HB
  loc_C4A539: LeI4
  loc_C4A53A: FFree1Str var_B0
  loc_C4A53D: FFree1Ad var_88
  loc_C4A540: FFree1Var var_98 = ""
  loc_C4A543: BranchF loc_C4A5CB
  loc_C4A546: LitStr "1234567890,."
  loc_C4A549: FStStrCopy var_B0
  loc_C4A54C: FLdRfVar var_B0
  loc_C4A54F: ILdRf KeyAscii
  loc_C4A552: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C4A557: IStI2 KeyAscii
  loc_C4A55A: FFree1Str var_B0
  loc_C4A55D: ILdI2 KeyAscii
  loc_C4A560: LitStr "."
  loc_C4A563: ImpAdCallI2 Asc()
  loc_C4A568: EqI2
  loc_C4A569: BranchF loc_C4A577
  loc_C4A56C: LitStr ","
  loc_C4A56F: ImpAdCallI2 Asc()
  loc_C4A574: IStI2 KeyAscii
  loc_C4A577: FLdPr Me
  loc_C4A57A: VCallAd Control_ID_ServDevaFlex
  loc_C4A57D: FStAdFunc var_88
  loc_C4A580: FLdPr var_88
  loc_C4A583: LateIdLdVar var_98 DispID_0 0
  loc_C4A58A: CStrVarTmp
  loc_C4A58B: CVarStr var_C0
  loc_C4A58E: ILdI2 KeyAscii
  loc_C4A591: CI4UI1
  loc_C4A592: FLdRfVar var_AC
  loc_C4A595: ImpAdCallFPR4  = Chr()
  loc_C4A59A: FLdRfVar var_AC
  loc_C4A59D: AddVar var_D0
  loc_C4A5A1: CStrVarTmp
  loc_C4A5A2: CVarStr var_E0
  loc_C4A5A5: PopAdLdVar
  loc_C4A5A6: FLdPr Me
  loc_C4A5A9: VCallAd Control_ID_ServDevaFlex
  loc_C4A5AC: FStAdFunc var_9C
  loc_C4A5AF: FLdPr var_9C
  loc_C4A5B2: LateIdSt
  loc_C4A5B7: FFreeAd var_88 = ""
  loc_C4A5BE: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C4A5CB: ExitProcHresult
End Sub

Private Sub ServDevaFlex_LeaveCell() 'C81050
  'Data Table: 50E08C
  loc_C7FBDC: FLdPr Me
  loc_C7FBDF: VCallAd Control_ID_ServDevaFlex
  loc_C7FBE2: FStAdFunc var_88
  loc_C7FBE5: FLdPr var_88
  loc_C7FBE8: LateIdLdVar var_98 DispID_11 0
  loc_C7FBEF: CI4Var
  loc_C7FBF1: LitI4 0
  loc_C7FBF6: EqI4
  loc_C7FBF7: FFree1Ad var_88
  loc_C7FBFA: FFree1Var var_98 = ""
  loc_C7FBFD: BranchF loc_C7FF16
  loc_C7FC00: FLdPr Me
  loc_C7FC03: VCallAd Control_ID_ServDevaFlex
  loc_C7FC06: FStAdFunc var_88
  loc_C7FC09: FLdPr var_88
  loc_C7FC0C: LateIdLdVar var_98 DispID_10 0
  loc_C7FC13: CI4Var
  loc_C7FC15: CVarI4
  loc_C7FC19: PopAdLdVar
  loc_C7FC1A: LitVarI4
  loc_C7FC22: PopAdLdVar
  loc_C7FC23: FLdPr Me
  loc_C7FC26: VCallAd Control_ID_ServDevaFlex
  loc_C7FC29: FStAdFunc var_DC
  loc_C7FC2C: FLdPr var_DC
  loc_C7FC2F: LateIdCallLdVar
  loc_C7FC39: CStrVarTmp
  loc_C7FC3A: CVarStr var_FC
  loc_C7FC3D: ImpAdCallI2 IsNumeric()
  loc_C7FC42: NotI4
  loc_C7FC43: FFreeAd var_88 = ""
  loc_C7FC4A: FFreeVar var_98 = "": var_EC = ""
  loc_C7FC53: BranchF loc_C7FC9D
  loc_C7FC56: FLdPr Me
  loc_C7FC59: VCallAd Control_ID_ServDevaFlex
  loc_C7FC5C: FStAdFunc var_88
  loc_C7FC5F: FLdPr var_88
  loc_C7FC62: LateIdLdVar var_98 DispID_10 0
  loc_C7FC69: CI4Var
  loc_C7FC6B: CVarI4
  loc_C7FC6F: PopAdLdVar
  loc_C7FC70: LitVarI4
  loc_C7FC78: PopAdLdVar
  loc_C7FC79: LitVarStr var_10C, "1"
  loc_C7FC7E: PopAdLdVar
  loc_C7FC7F: FLdPr Me
  loc_C7FC82: VCallAd Control_ID_ServDevaFlex
  loc_C7FC85: FStAdFunc var_DC
  loc_C7FC88: FLdPr var_DC
  loc_C7FC8B: LateIdCallSt
  loc_C7FC93: FFreeAd var_88 = ""
  loc_C7FC9A: FFree1Var var_98 = ""
  loc_C7FC9D: FLdPr Me
  loc_C7FCA0: VCallAd Control_ID_ServDevaFlex
  loc_C7FCA3: FStAdFunc var_88
  loc_C7FCA6: FLdPr var_88
  loc_C7FCA9: LateIdLdVar var_98 DispID_10 0
  loc_C7FCB0: CI4Var
  loc_C7FCB2: CVarI4
  loc_C7FCB6: PopAdLdVar
  loc_C7FCB7: LitVarI4
  loc_C7FCBF: PopAdLdVar
  loc_C7FCC0: FLdPr Me
  loc_C7FCC3: VCallAd Control_ID_ServDevaFlex
  loc_C7FCC6: FStAdFunc var_DC
  loc_C7FCC9: FLdPr var_DC
  loc_C7FCCC: LateIdCallLdVar
  loc_C7FCD6: CStrVarTmp
  loc_C7FCD7: CVarStr var_FC
  loc_C7FCDA: ImpAdCallI2 IsNumeric()
  loc_C7FCDF: FLdPr Me
  loc_C7FCE2: VCallAd Control_ID_ServDevaFlex
  loc_C7FCE5: FStAdFunc var_120
  loc_C7FCE8: FLdPr var_120
  loc_C7FCEB: LateIdLdVar var_130 DispID_10 0
  loc_C7FCF2: CI4Var
  loc_C7FCF4: CVarI4
  loc_C7FCF8: PopAdLdVar
  loc_C7FCF9: LitVarI4
  loc_C7FD01: PopAdLdVar
  loc_C7FD02: FLdPr Me
  loc_C7FD05: VCallAd Control_ID_ServDevaFlex
  loc_C7FD08: FStAdFunc var_154
  loc_C7FD0B: FLdPr var_154
  loc_C7FD0E: LateIdCallLdVar
  loc_C7FD18: CStrVarTmp
  loc_C7FD19: CVarStr var_174
  loc_C7FD1C: ImpAdCallI2 IsNumeric()
  loc_C7FD21: AndI4
  loc_C7FD22: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C7FD2D: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_C7FD3C: BranchF loc_C7FE53
  loc_C7FD3F: FLdPr Me
  loc_C7FD42: VCallAd Control_ID_ServDevaFlex
  loc_C7FD45: FStAdFunc var_88
  loc_C7FD48: FLdPr var_88
  loc_C7FD4B: LateIdLdVar var_98 DispID_10 0
  loc_C7FD52: CI4Var
  loc_C7FD54: CVarI4
  loc_C7FD58: PopAdLdVar
  loc_C7FD59: LitVarI4
  loc_C7FD61: PopAdLdVar
  loc_C7FD62: FLdPr Me
  loc_C7FD65: VCallAd Control_ID_ServDevaFlex
  loc_C7FD68: FStAdFunc var_DC
  loc_C7FD6B: FLdPr var_DC
  loc_C7FD6E: LateIdCallLdVar
  loc_C7FD78: PopAd
  loc_C7FD7A: FLdPr Me
  loc_C7FD7D: VCallAd Control_ID_ServDevaFlex
  loc_C7FD80: FStAdFunc var_120
  loc_C7FD83: FLdPr var_120
  loc_C7FD86: LateIdLdVar var_FC DispID_10 0
  loc_C7FD8D: CI4Var
  loc_C7FD8F: CVarI4
  loc_C7FD93: PopAdLdVar
  loc_C7FD94: LitVarI4
  loc_C7FD9C: PopAdLdVar
  loc_C7FD9D: FLdPr Me
  loc_C7FDA0: VCallAd Control_ID_ServDevaFlex
  loc_C7FDA3: FStAdFunc var_154
  loc_C7FDA6: FLdPr var_154
  loc_C7FDA9: LateIdCallLdVar
  loc_C7FDB3: PopAd
  loc_C7FDB5: FLdPr Me
  loc_C7FDB8: VCallAd Control_ID_ServDevaFlex
  loc_C7FDBB: FStAdFunc var_1B0
  loc_C7FDBE: FLdPr var_1B0
  loc_C7FDC1: LateIdLdVar var_1C0 DispID_10 0
  loc_C7FDC8: CI4Var
  loc_C7FDCA: CVarI4
  loc_C7FDCE: PopAdLdVar
  loc_C7FDCF: LitVarI4
  loc_C7FDD7: PopAdLdVar
  loc_C7FDD8: LitI4 1
  loc_C7FDDD: LitI4 1
  loc_C7FDE2: LitVarStr var_19C, "0.00"
  loc_C7FDE7: FStVarCopyObj var_174
  loc_C7FDEA: FLdRfVar var_174
  loc_C7FDED: FLdRfVar var_EC
  loc_C7FDF0: CStrVarTmp
  loc_C7FDF1: FStStrNoPop var_178
  loc_C7FDF4: CR8Str
  loc_C7FDF6: FLdRfVar var_130
  loc_C7FDF9: CStrVarTmp
  loc_C7FDFA: FStStrNoPop var_17C
  loc_C7FDFD: CR8Str
  loc_C7FDFF: MulR8
  loc_C7FE00: CVarR8
  loc_C7FE04: FLdRfVar var_1AC
  loc_C7FE07: ImpAdCallFPR4  = Format(, )
  loc_C7FE0C: FLdRfVar var_1AC
  loc_C7FE0F: CStrVarTmp
  loc_C7FE10: CVarStr var_210
  loc_C7FE13: PopAdLdVar
  loc_C7FE14: FLdPr Me
  loc_C7FE17: VCallAd Control_ID_ServDevaFlex
  loc_C7FE1A: FStAdFunc var_224
  loc_C7FE1D: FLdPr var_224
  loc_C7FE20: LateIdCallSt
  loc_C7FE28: FFreeStr var_178 = ""
  loc_C7FE2F: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_C7FE3E: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_C7FE53: FLdPr Me
  loc_C7FE56: VCallAd Control_ID_ServDevaFlex
  loc_C7FE59: FStAdFunc var_88
  loc_C7FE5C: FLdPr var_88
  loc_C7FE5F: LateIdLdVar var_98 DispID_10 0
  loc_C7FE66: CI4Var
  loc_C7FE68: CVarI4
  loc_C7FE6C: PopAdLdVar
  loc_C7FE6D: LitVarI4
  loc_C7FE75: PopAdLdVar
  loc_C7FE76: FLdPr Me
  loc_C7FE79: VCallAd Control_ID_ServDevaFlex
  loc_C7FE7C: FStAdFunc var_DC
  loc_C7FE7F: FLdPr var_DC
  loc_C7FE82: LateIdCallLdVar
  loc_C7FE8C: PopAd
  loc_C7FE8E: FLdPr Me
  loc_C7FE91: VCallAd Control_ID_ServDevaFlex
  loc_C7FE94: FStAdFunc var_120
  loc_C7FE97: FLdPr var_120
  loc_C7FE9A: LateIdLdVar var_174 DispID_10 0
  loc_C7FEA1: CI4Var
  loc_C7FEA3: CVarI4
  loc_C7FEA7: PopAdLdVar
  loc_C7FEA8: LitVarI4
  loc_C7FEB0: PopAdLdVar
  loc_C7FEB1: LitI4 1
  loc_C7FEB6: LitI4 1
  loc_C7FEBB: LitVarStr var_11C, "0.00"
  loc_C7FEC0: FStVarCopyObj var_130
  loc_C7FEC3: FLdRfVar var_130
  loc_C7FEC6: FLdRfVar var_EC
  loc_C7FEC9: CStrVarTmp
  loc_C7FECA: FStStrNoPop var_178
  loc_C7FECD: CR8Str
  loc_C7FECF: CVarR8
  loc_C7FED3: FLdRfVar var_164
  loc_C7FED6: ImpAdCallFPR4  = Format(, )
  loc_C7FEDB: FLdRfVar var_164
  loc_C7FEDE: CStrVarTmp
  loc_C7FEDF: CVarStr var_1AC
  loc_C7FEE2: PopAdLdVar
  loc_C7FEE3: FLdPr Me
  loc_C7FEE6: VCallAd Control_ID_ServDevaFlex
  loc_C7FEE9: FStAdFunc var_154
  loc_C7FEEC: FLdPr var_154
  loc_C7FEEF: LateIdCallSt
  loc_C7FEF7: FFree1Str var_178
  loc_C7FEFA: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C7FF05: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_C7FF16: FLdPr Me
  loc_C7FF19: VCallAd Control_ID_ServDevaFlex
  loc_C7FF1C: FStAdFunc var_88
  loc_C7FF1F: FLdPr var_88
  loc_C7FF22: LateIdLdVar var_98 DispID_11 0
  loc_C7FF29: CI4Var
  loc_C7FF2B: LitI4 1
  loc_C7FF30: EqI4
  loc_C7FF31: FFree1Ad var_88
  loc_C7FF34: FFree1Var var_98 = ""
  loc_C7FF37: BranchF loc_C80CC8
  loc_C7FF3A: FLdPr Me
  loc_C7FF3D: VCallAd Control_ID_ServDevaFlex
  loc_C7FF40: FStAdFunc var_88
  loc_C7FF43: FLdPr var_88
  loc_C7FF46: LateIdLdVar var_98 DispID_10 0
  loc_C7FF4D: CI4Var
  loc_C7FF4F: CVarI4
  loc_C7FF53: PopAdLdVar
  loc_C7FF54: LitVarI4
  loc_C7FF5C: PopAdLdVar
  loc_C7FF5D: FLdPr Me
  loc_C7FF60: VCallAd Control_ID_ServDevaFlex
  loc_C7FF63: FStAdFunc var_DC
  loc_C7FF66: FLdPr var_DC
  loc_C7FF69: LateIdCallLdVar
  loc_C7FF73: CStrVarTmp
  loc_C7FF74: CVarStr var_FC
  loc_C7FF77: ImpAdCallI2 IsNumeric()
  loc_C7FF7C: FFreeAd var_88 = ""
  loc_C7FF83: FFreeVar var_98 = "": var_EC = ""
  loc_C7FF8C: BranchF loc_C80CC8
  loc_C7FF8F: LitStr "SELECT DetaSede, ImpoSede * UntrPage as ImpoSede, PeriInfo, CodiConc, VariSede FROM servdeva "
  loc_C7FF92: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_C7FF95: ConcatStr
  loc_C7FF96: FStStrNoPop var_178
  loc_C7FF99: LitStr " WHERE servdeva.PeriOrde = "
  loc_C7FF9C: ConcatStr
  loc_C7FF9D: FStStrNoPop var_17C
  loc_C7FFA0: ImpAdLdI2 MemVar_D93036
  loc_C7FFA3: CStrUI1
  loc_C7FFA5: FStStrNoPop var_228
  loc_C7FFA8: ConcatStr
  loc_C7FFA9: FStStrNoPop var_22C
  loc_C7FFAC: LitStr " AND CodiSede = "
  loc_C7FFAF: ConcatStr
  loc_C7FFB0: FStStrNoPop var_230
  loc_C7FFB3: FLdPr Me
  loc_C7FFB6: VCallAd Control_ID_ServDevaFlex
  loc_C7FFB9: FStAdFunc var_88
  loc_C7FFBC: FLdPr var_88
  loc_C7FFBF: LateIdLdVar var_98 DispID_10 0
  loc_C7FFC6: CI4Var
  loc_C7FFC8: CVarI4
  loc_C7FFCC: PopAdLdVar
  loc_C7FFCD: LitVarI4
  loc_C7FFD5: PopAdLdVar
  loc_C7FFD6: FLdPr Me
  loc_C7FFD9: VCallAd Control_ID_ServDevaFlex
  loc_C7FFDC: FStAdFunc var_DC
  loc_C7FFDF: FLdPr var_DC
  loc_C7FFE2: LateIdCallLdVar
  loc_C7FFEC: CStrVarTmp
  loc_C7FFED: FStStrNoPop var_234
  loc_C7FFF0: ConcatStr
  loc_C7FFF1: FStStrNoPop var_238
  loc_C7FFF4: LitStr " AND CtctSede = '0' AND servdeva.BajaFeho IS NULL"
  loc_C7FFF7: ConcatStr
  loc_C7FFF8: FStStrNoPop var_23C
  loc_C7FFFB: FLdPr Me
  loc_C7FFFE: MemLdRfVar from_stack_1.global_68
  loc_C80001: NewIfNullPr clsservdeva
  loc_C80004: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_C80009: FFreeStr var_178 = "": var_17C = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = ""
  loc_C8001C: FFreeAd var_88 = ""
  loc_C80023: FFreeVar var_98 = ""
  loc_C8002A: FLdRfVar var_240
  loc_C8002D: FLdRfVar var_88
  loc_C80030: FLdPr Me
  loc_C80033: MemLdRfVar from_stack_1.global_68
  loc_C80036: NewIfNullPr clsservdeva
  loc_C80039: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C8003E: FLdPr var_88
  loc_C80041:  = Me.RecordCount
  loc_C80046: ILdRf var_240
  loc_C80049: LitI4 0
  loc_C8004E: GtI4
  loc_C8004F: FFree1Ad var_88
  loc_C80052: BranchF loc_C80B1E
  loc_C80055: FLdRfVar var_98
  loc_C80058: FLdRfVar var_120
  loc_C8005B: LitVarStr var_A8, "PeriInfo"
  loc_C80060: PopAdLdVar
  loc_C80061: FLdRfVar var_DC
  loc_C80064: FLdRfVar var_88
  loc_C80067: FLdPr Me
  loc_C8006A: MemLdRfVar from_stack_1.global_68
  loc_C8006D: NewIfNullPr clsservdeva
  loc_C80070: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80075: FLdPr var_88
  loc_C80078:  = Me.Fields
  loc_C8007D: FLdPr var_DC
  loc_C80080: from_stack_2 = Me.Item(from_stack_1)
  loc_C80085: FLdPr var_120
  loc_C80088:  = Me.Value
  loc_C8008D: FLdRfVar var_98
  loc_C80090: FnCIntVar
  loc_C80092: ImpAdLdI2 MemVar_D93034
  loc_C80095: NeI2
  loc_C80096: FFreeAd var_88 = "": var_DC = ""
  loc_C8009F: FFree1Var var_98 = ""
  loc_C800A2: BranchF loc_C800C8
  loc_C800A5: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C800A8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C800AD: FLdPr Me
  loc_C800B0: VCallAd Control_ID_ServDevaFlex
  loc_C800B3: FStAdFunc var_88
  loc_C800B6: FLdPr var_88
  loc_C800B9: LateIdCall
  loc_C800C1: FFree1Ad var_88
  loc_C800C4: ExitProcHresult
  loc_C800C5: Branch loc_C80A5E
  loc_C800C8: FLdRfVar var_98
  loc_C800CB: FLdRfVar var_120
  loc_C800CE: LitVarStr var_A8, "PeriInfo"
  loc_C800D3: PopAdLdVar
  loc_C800D4: FLdRfVar var_DC
  loc_C800D7: FLdRfVar var_88
  loc_C800DA: FLdPr Me
  loc_C800DD: MemLdRfVar from_stack_1.global_68
  loc_C800E0: NewIfNullPr clsservdeva
  loc_C800E3: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C800E8: FLdPr var_88
  loc_C800EB:  = Me.Fields
  loc_C800F0: FLdPr var_DC
  loc_C800F3: from_stack_2 = Me.Item(from_stack_1)
  loc_C800F8: FLdPr var_120
  loc_C800FB:  = Me.Value
  loc_C80100: FLdRfVar var_EC
  loc_C80103: FLdRfVar var_224
  loc_C80106: LitVarStr var_B8, "CodiConc"
  loc_C8010B: PopAdLdVar
  loc_C8010C: FLdRfVar var_1B0
  loc_C8010F: FLdRfVar var_154
  loc_C80112: FLdPr Me
  loc_C80115: MemLdRfVar from_stack_1.global_68
  loc_C80118: NewIfNullPr clsservdeva
  loc_C8011B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80120: FLdPr var_154
  loc_C80123:  = Me.Fields
  loc_C80128: FLdPr var_1B0
  loc_C8012B: from_stack_2 = Me.Item(from_stack_1)
  loc_C80130: FLdPr var_224
  loc_C80133:  = Me.Value
  loc_C80138: FLdRfVar var_EC
  loc_C8013B: CStrVarTmp
  loc_C8013C: FStStrNoPop var_178
  loc_C8013F: FLdRfVar var_98
  loc_C80142: CI2Var
  loc_C80143: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C80148: FStStrNoPop var_17C
  loc_C8014B: LitStr vbNullString
  loc_C8014E: EqStr
  loc_C80150: FFreeStr var_178 = ""
  loc_C80157: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_1B0 = "": var_120 = ""
  loc_C80166: FFreeVar var_98 = ""
  loc_C8016D: BranchF loc_C801DF
  loc_C80170: LitVarStr var_B8, "El recurso: "
  loc_C80175: FLdRfVar var_98
  loc_C80178: FLdRfVar var_120
  loc_C8017B: LitVarStr var_A8, "CodiConc"
  loc_C80180: PopAdLdVar
  loc_C80181: FLdRfVar var_DC
  loc_C80184: FLdRfVar var_88
  loc_C80187: FLdPr Me
  loc_C8018A: MemLdRfVar from_stack_1.global_68
  loc_C8018D: NewIfNullPr clsservdeva
  loc_C80190: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80195: FLdPr var_88
  loc_C80198:  = Me.Fields
  loc_C8019D: FLdPr var_DC
  loc_C801A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C801A5: FLdPr var_120
  loc_C801A8:  = Me.Value
  loc_C801AD: FLdRfVar var_98
  loc_C801B0: ConcatVar var_EC
  loc_C801B4: LitVarStr var_C8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C801B9: ConcatVar var_FC
  loc_C801BD: CStrVarVal var_178
  loc_C801C1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C801C6: FFree1Str var_178
  loc_C801C9: FFreeAd var_88 = "": var_DC = ""
  loc_C801D2: FFreeVar var_98 = "": var_EC = ""
  loc_C801DB: ExitProcHresult
  loc_C801DC: Branch loc_C80A5E
  loc_C801DF: FLdPr Me
  loc_C801E2: VCallAd Control_ID_ServDevaFlex
  loc_C801E5: FStAdFunc var_154
  loc_C801E8: FLdPr var_154
  loc_C801EB: LateIdLdVar var_98 DispID_10 0
  loc_C801F2: CI4Var
  loc_C801F4: CVarI4
  loc_C801F8: PopAdLdVar
  loc_C801F9: LitVarI4
  loc_C80201: PopAdLdVar
  loc_C80202: FLdRfVar var_EC
  loc_C80205: FLdRfVar var_120
  loc_C80208: LitVarStr var_A8, "VariSede"
  loc_C8020D: PopAdLdVar
  loc_C8020E: FLdRfVar var_DC
  loc_C80211: FLdRfVar var_88
  loc_C80214: FLdPr Me
  loc_C80217: MemLdRfVar from_stack_1.global_68
  loc_C8021A: NewIfNullPr clsservdeva
  loc_C8021D: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80222: FLdPr var_88
  loc_C80225:  = Me.Fields
  loc_C8022A: FLdPr var_DC
  loc_C8022D: from_stack_2 = Me.Item(from_stack_1)
  loc_C80232: FLdPr var_120
  loc_C80235:  = Me.Value
  loc_C8023A: FLdRfVar var_EC
  loc_C8023D: CStrVarTmp
  loc_C8023E: CVarStr var_FC
  loc_C80241: PopAdLdVar
  loc_C80242: FLdPr Me
  loc_C80245: VCallAd Control_ID_ServDevaFlex
  loc_C80248: FStAdFunc var_1B0
  loc_C8024B: FLdPr var_1B0
  loc_C8024E: LateIdCallSt
  loc_C80256: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_C80263: FFreeVar var_98 = "": var_EC = ""
  loc_C8026C: FLdPr Me
  loc_C8026F: VCallAd Control_ID_ServDevaFlex
  loc_C80272: FStAdFunc var_154
  loc_C80275: FLdPr var_154
  loc_C80278: LateIdLdVar var_98 DispID_10 0
  loc_C8027F: CI4Var
  loc_C80281: CVarI4
  loc_C80285: PopAdLdVar
  loc_C80286: LitVarI4
  loc_C8028E: PopAdLdVar
  loc_C8028F: FLdRfVar var_EC
  loc_C80292: FLdRfVar var_120
  loc_C80295: LitVarStr var_A8, "DetaSede"
  loc_C8029A: PopAdLdVar
  loc_C8029B: FLdRfVar var_DC
  loc_C8029E: FLdRfVar var_88
  loc_C802A1: FLdPr Me
  loc_C802A4: MemLdRfVar from_stack_1.global_68
  loc_C802A7: NewIfNullPr clsservdeva
  loc_C802AA: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C802AF: FLdPr var_88
  loc_C802B2:  = Me.Fields
  loc_C802B7: FLdPr var_DC
  loc_C802BA: from_stack_2 = Me.Item(from_stack_1)
  loc_C802BF: FLdPr var_120
  loc_C802C2:  = Me.Value
  loc_C802C7: FLdRfVar var_EC
  loc_C802CA: CStrVarTmp
  loc_C802CB: CVarStr var_FC
  loc_C802CE: PopAdLdVar
  loc_C802CF: FLdPr Me
  loc_C802D2: VCallAd Control_ID_ServDevaFlex
  loc_C802D5: FStAdFunc var_1B0
  loc_C802D8: FLdPr var_1B0
  loc_C802DB: LateIdCallSt
  loc_C802E3: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_C802F0: FFreeVar var_98 = "": var_EC = ""
  loc_C802F9: FLdPr Me
  loc_C802FC: VCallAd Control_ID_ServDevaFlex
  loc_C802FF: FStAdFunc var_88
  loc_C80302: FLdPr var_88
  loc_C80305: LateIdLdVar var_98 DispID_10 0
  loc_C8030C: CI4Var
  loc_C8030E: CVarI4
  loc_C80312: PopAdLdVar
  loc_C80313: LitVarI4
  loc_C8031B: PopAdLdVar
  loc_C8031C: FLdPr Me
  loc_C8031F: VCallAd Control_ID_ServDevaFlex
  loc_C80322: FStAdFunc var_DC
  loc_C80325: FLdPr var_DC
  loc_C80328: LateIdCallLdVar
  loc_C80332: CStrVarTmp
  loc_C80333: FStStrNoPop var_178
  loc_C80336: LitStr "0"
  loc_C80339: EqStr
  loc_C8033B: FFree1Str var_178
  loc_C8033E: FFreeAd var_88 = ""
  loc_C80345: FFreeVar var_98 = ""
  loc_C8034C: BranchF loc_C803FA
  loc_C8034F: FLdRfVar var_120
  loc_C80352: LitVarStr var_A8, "ImpoSede"
  loc_C80357: PopAdLdVar
  loc_C80358: FLdRfVar var_DC
  loc_C8035B: FLdRfVar var_88
  loc_C8035E: FLdPr Me
  loc_C80361: MemLdRfVar from_stack_1.global_68
  loc_C80364: NewIfNullPr clsservdeva
  loc_C80367: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C8036C: FLdPr var_88
  loc_C8036F:  = Me.Fields
  loc_C80374: FLdPr var_DC
  loc_C80377: from_stack_2 = Me.Item(from_stack_1)
  loc_C8037C: FLdPr Me
  loc_C8037F: VCallAd Control_ID_ServDevaFlex
  loc_C80382: FStAdFunc var_154
  loc_C80385: FLdPr var_154
  loc_C80388: LateIdLdVar var_130 DispID_10 0
  loc_C8038F: CI4Var
  loc_C80391: CVarI4
  loc_C80395: PopAdLdVar
  loc_C80396: LitVarI4
  loc_C8039E: PopAdLdVar
  loc_C8039F: LitI4 1
  loc_C803A4: LitI4 1
  loc_C803A9: LitVarStr var_B8, "0.00"
  loc_C803AE: FStVarCopyObj var_EC
  loc_C803B1: FLdRfVar var_EC
  loc_C803B4: FLdZeroAd var_120
  loc_C803B7: CVarAd
  loc_C803BB: FLdRfVar var_FC
  loc_C803BE: ImpAdCallFPR4  = Format(, )
  loc_C803C3: FLdRfVar var_FC
  loc_C803C6: CStrVarTmp
  loc_C803C7: CVarStr var_164
  loc_C803CA: PopAdLdVar
  loc_C803CB: FLdPr Me
  loc_C803CE: VCallAd Control_ID_ServDevaFlex
  loc_C803D1: FStAdFunc var_1B0
  loc_C803D4: FLdPr var_1B0
  loc_C803D7: LateIdCallSt
  loc_C803DF: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_C803EA: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C803F7: Branch loc_C80673
  loc_C803FA: FLdPr Me
  loc_C803FD: VCallAd Control_ID_ServDevaFlex
  loc_C80400: FStAdFunc var_88
  loc_C80403: FLdPr var_88
  loc_C80406: LateIdLdVar var_98 DispID_10 0
  loc_C8040D: CI4Var
  loc_C8040F: CVarI4
  loc_C80413: PopAdLdVar
  loc_C80414: LitVarI4
  loc_C8041C: PopAdLdVar
  loc_C8041D: FLdPr Me
  loc_C80420: VCallAd Control_ID_ServDevaFlex
  loc_C80423: FStAdFunc var_DC
  loc_C80426: FLdPr var_DC
  loc_C80429: LateIdCallLdVar
  loc_C80433: CStrVarTmp
  loc_C80434: FStStrNoPop var_178
  loc_C80437: LitStr "1"
  loc_C8043A: EqStr
  loc_C8043C: FLdRfVar var_FC
  loc_C8043F: FLdRfVar var_1B0
  loc_C80442: LitVarStr var_10C, "ImpoSede"
  loc_C80447: PopAdLdVar
  loc_C80448: FLdRfVar var_154
  loc_C8044B: FLdRfVar var_120
  loc_C8044E: FLdPr Me
  loc_C80451: MemLdRfVar from_stack_1.global_68
  loc_C80454: NewIfNullPr clsservdeva
  loc_C80457: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C8045C: FLdPr var_120
  loc_C8045F:  = Me.Fields
  loc_C80464: FLdPr var_154
  loc_C80467: from_stack_2 = Me.Item(from_stack_1)
  loc_C8046C: FLdPr var_1B0
  loc_C8046F:  = Me.Value
  loc_C80474: FLdRfVar var_FC
  loc_C80477: FnCDblVar
  loc_C80479: LitI2_Byte 0
  loc_C8047B: CR8I2
  loc_C8047C: EqR4
  loc_C8047D: AndI4
  loc_C8047E: FFree1Str var_178
  loc_C80481: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_C8048E: FFreeVar var_98 = "": var_EC = ""
  loc_C80497: BranchF loc_C8052B
  loc_C8049A: FLdPr Me
  loc_C8049D: VCallAd Control_ID_ServDevaFlex
  loc_C804A0: FStAdFunc var_88
  loc_C804A3: FLdPr var_88
  loc_C804A6: LateIdLdVar var_98 DispID_10 0
  loc_C804AD: CI4Var
  loc_C804AF: CVarI4
  loc_C804B3: PopAdLdVar
  loc_C804B4: LitVarI4
  loc_C804BC: PopAdLdVar
  loc_C804BD: LitVarStr var_10C, vbNullString
  loc_C804C2: PopAdLdVar
  loc_C804C3: FLdPr Me
  loc_C804C6: VCallAd Control_ID_ServDevaFlex
  loc_C804C9: FStAdFunc var_DC
  loc_C804CC: FLdPr var_DC
  loc_C804CF: LateIdCallSt
  loc_C804D7: FFreeAd var_88 = ""
  loc_C804DE: FFree1Var var_98 = ""
  loc_C804E1: FLdPr Me
  loc_C804E4: VCallAd Control_ID_ServDevaFlex
  loc_C804E7: FStAdFunc var_88
  loc_C804EA: FLdPr var_88
  loc_C804ED: LateIdLdVar var_98 DispID_10 0
  loc_C804F4: CI4Var
  loc_C804F6: CVarI4
  loc_C804FA: PopAdLdVar
  loc_C804FB: LitVarI4
  loc_C80503: PopAdLdVar
  loc_C80504: LitVarStr var_10C, vbNullString
  loc_C80509: PopAdLdVar
  loc_C8050A: FLdPr Me
  loc_C8050D: VCallAd Control_ID_ServDevaFlex
  loc_C80510: FStAdFunc var_DC
  loc_C80513: FLdPr var_DC
  loc_C80516: LateIdCallSt
  loc_C8051E: FFreeAd var_88 = ""
  loc_C80525: FFree1Var var_98 = ""
  loc_C80528: Branch loc_C80673
  loc_C8052B: FLdPr Me
  loc_C8052E: VCallAd Control_ID_ServDevaFlex
  loc_C80531: FStAdFunc var_88
  loc_C80534: FLdPr var_88
  loc_C80537: LateIdLdVar var_98 DispID_10 0
  loc_C8053E: CI4Var
  loc_C80540: CVarI4
  loc_C80544: PopAdLdVar
  loc_C80545: LitVarI4
  loc_C8054D: PopAdLdVar
  loc_C8054E: FLdPr Me
  loc_C80551: VCallAd Control_ID_ServDevaFlex
  loc_C80554: FStAdFunc var_DC
  loc_C80557: FLdPr var_DC
  loc_C8055A: LateIdCallLdVar
  loc_C80564: CStrVarTmp
  loc_C80565: FStStrNoPop var_178
  loc_C80568: LitStr "1"
  loc_C8056B: EqStr
  loc_C8056D: FLdRfVar var_FC
  loc_C80570: FLdRfVar var_1B0
  loc_C80573: LitVarStr var_10C, "ImpoSede"
  loc_C80578: PopAdLdVar
  loc_C80579: FLdRfVar var_154
  loc_C8057C: FLdRfVar var_120
  loc_C8057F: FLdPr Me
  loc_C80582: MemLdRfVar from_stack_1.global_68
  loc_C80585: NewIfNullPr clsservdeva
  loc_C80588: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C8058D: FLdPr var_120
  loc_C80590:  = Me.Fields
  loc_C80595: FLdPr var_154
  loc_C80598: from_stack_2 = Me.Item(from_stack_1)
  loc_C8059D: FLdPr var_1B0
  loc_C805A0:  = Me.Value
  loc_C805A5: FLdRfVar var_FC
  loc_C805A8: FnCDblVar
  loc_C805AA: LitI2_Byte 0
  loc_C805AC: CR8I2
  loc_C805AD: GtR4
  loc_C805AE: AndI4
  loc_C805AF: FFree1Str var_178
  loc_C805B2: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_C805BF: FFreeVar var_98 = "": var_EC = ""
  loc_C805C8: BranchF loc_C80673
  loc_C805CB: FLdRfVar var_120
  loc_C805CE: LitVarStr var_A8, "ImpoSede"
  loc_C805D3: PopAdLdVar
  loc_C805D4: FLdRfVar var_DC
  loc_C805D7: FLdRfVar var_88
  loc_C805DA: FLdPr Me
  loc_C805DD: MemLdRfVar from_stack_1.global_68
  loc_C805E0: NewIfNullPr clsservdeva
  loc_C805E3: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C805E8: FLdPr var_88
  loc_C805EB:  = Me.Fields
  loc_C805F0: FLdPr var_DC
  loc_C805F3: from_stack_2 = Me.Item(from_stack_1)
  loc_C805F8: FLdPr Me
  loc_C805FB: VCallAd Control_ID_ServDevaFlex
  loc_C805FE: FStAdFunc var_154
  loc_C80601: FLdPr var_154
  loc_C80604: LateIdLdVar var_130 DispID_10 0
  loc_C8060B: CI4Var
  loc_C8060D: CVarI4
  loc_C80611: PopAdLdVar
  loc_C80612: LitVarI4
  loc_C8061A: PopAdLdVar
  loc_C8061B: LitI4 1
  loc_C80620: LitI4 1
  loc_C80625: LitVarStr var_B8, "0.00"
  loc_C8062A: FStVarCopyObj var_EC
  loc_C8062D: FLdRfVar var_EC
  loc_C80630: FLdZeroAd var_120
  loc_C80633: CVarAd
  loc_C80637: FLdRfVar var_FC
  loc_C8063A: ImpAdCallFPR4  = Format(, )
  loc_C8063F: FLdRfVar var_FC
  loc_C80642: CStrVarTmp
  loc_C80643: CVarStr var_164
  loc_C80646: PopAdLdVar
  loc_C80647: FLdPr Me
  loc_C8064A: VCallAd Control_ID_ServDevaFlex
  loc_C8064D: FStAdFunc var_1B0
  loc_C80650: FLdPr var_1B0
  loc_C80653: LateIdCallSt
  loc_C8065B: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_C80666: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C80673: FLdPr Me
  loc_C80676: VCallAd Control_ID_ServDevaFlex
  loc_C80679: FStAdFunc var_88
  loc_C8067C: FLdPr var_88
  loc_C8067F: LateIdLdVar var_98 DispID_10 0
  loc_C80686: CI4Var
  loc_C80688: CVarI4
  loc_C8068C: PopAdLdVar
  loc_C8068D: LitVarI4
  loc_C80695: PopAdLdVar
  loc_C80696: FLdPr Me
  loc_C80699: VCallAd Control_ID_ServDevaFlex
  loc_C8069C: FStAdFunc var_DC
  loc_C8069F: FLdPr var_DC
  loc_C806A2: LateIdCallLdVar
  loc_C806AC: CStrVarTmp
  loc_C806AD: CVarStr var_FC
  loc_C806B0: ImpAdCallI2 IsNumeric()
  loc_C806B5: FLdPr Me
  loc_C806B8: VCallAd Control_ID_ServDevaFlex
  loc_C806BB: FStAdFunc var_120
  loc_C806BE: FLdPr var_120
  loc_C806C1: LateIdLdVar var_130 DispID_10 0
  loc_C806C8: CI4Var
  loc_C806CA: CVarI4
  loc_C806CE: PopAdLdVar
  loc_C806CF: LitVarI4
  loc_C806D7: PopAdLdVar
  loc_C806D8: FLdPr Me
  loc_C806DB: VCallAd Control_ID_ServDevaFlex
  loc_C806DE: FStAdFunc var_154
  loc_C806E1: FLdPr var_154
  loc_C806E4: LateIdCallLdVar
  loc_C806EE: CStrVarTmp
  loc_C806EF: CVarStr var_174
  loc_C806F2: ImpAdCallI2 IsNumeric()
  loc_C806F7: AndI4
  loc_C806F8: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C80703: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_C80712: BranchF loc_C8082C
  loc_C80715: FLdPr Me
  loc_C80718: VCallAd Control_ID_ServDevaFlex
  loc_C8071B: FStAdFunc var_88
  loc_C8071E: FLdPr var_88
  loc_C80721: LateIdLdVar var_98 DispID_10 0
  loc_C80728: CI4Var
  loc_C8072A: CVarI4
  loc_C8072E: PopAdLdVar
  loc_C8072F: LitVarI4
  loc_C80737: PopAdLdVar
  loc_C80738: FLdPr Me
  loc_C8073B: VCallAd Control_ID_ServDevaFlex
  loc_C8073E: FStAdFunc var_DC
  loc_C80741: FLdPr var_DC
  loc_C80744: LateIdCallLdVar
  loc_C8074E: PopAd
  loc_C80750: FLdPr Me
  loc_C80753: VCallAd Control_ID_ServDevaFlex
  loc_C80756: FStAdFunc var_120
  loc_C80759: FLdPr var_120
  loc_C8075C: LateIdLdVar var_FC DispID_10 0
  loc_C80763: CI4Var
  loc_C80765: CVarI4
  loc_C80769: PopAdLdVar
  loc_C8076A: LitVarI4
  loc_C80772: PopAdLdVar
  loc_C80773: FLdPr Me
  loc_C80776: VCallAd Control_ID_ServDevaFlex
  loc_C80779: FStAdFunc var_154
  loc_C8077C: FLdPr var_154
  loc_C8077F: LateIdCallLdVar
  loc_C80789: PopAd
  loc_C8078B: FLdPr Me
  loc_C8078E: VCallAd Control_ID_ServDevaFlex
  loc_C80791: FStAdFunc var_1B0
  loc_C80794: FLdPr var_1B0
  loc_C80797: LateIdLdVar var_1C0 DispID_10 0
  loc_C8079E: CI4Var
  loc_C807A0: CVarI4
  loc_C807A4: PopAdLdVar
  loc_C807A5: LitVarI4
  loc_C807AD: PopAdLdVar
  loc_C807AE: LitI4 1
  loc_C807B3: LitI4 1
  loc_C807B8: LitVarStr var_19C, "0.00"
  loc_C807BD: FStVarCopyObj var_174
  loc_C807C0: FLdRfVar var_174
  loc_C807C3: FLdRfVar var_EC
  loc_C807C6: CStrVarTmp
  loc_C807C7: FStStrNoPop var_178
  loc_C807CA: CR8Str
  loc_C807CC: FLdRfVar var_130
  loc_C807CF: CStrVarTmp
  loc_C807D0: FStStrNoPop var_17C
  loc_C807D3: CR8Str
  loc_C807D5: MulR8
  loc_C807D6: CVarR8
  loc_C807DA: FLdRfVar var_1AC
  loc_C807DD: ImpAdCallFPR4  = Format(, )
  loc_C807E2: FLdRfVar var_1AC
  loc_C807E5: CStrVarTmp
  loc_C807E6: CVarStr var_210
  loc_C807E9: PopAdLdVar
  loc_C807EA: FLdPr Me
  loc_C807ED: VCallAd Control_ID_ServDevaFlex
  loc_C807F0: FStAdFunc var_224
  loc_C807F3: FLdPr var_224
  loc_C807F6: LateIdCallSt
  loc_C807FE: FFreeStr var_178 = ""
  loc_C80805: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_C80814: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_C80829: Branch loc_C80944
  loc_C8082C: FLdPr Me
  loc_C8082F: VCallAd Control_ID_ServDevaFlex
  loc_C80832: FStAdFunc var_88
  loc_C80835: FLdPr var_88
  loc_C80838: LateIdLdVar var_98 DispID_10 0
  loc_C8083F: CI4Var
  loc_C80841: CVarI4
  loc_C80845: PopAdLdVar
  loc_C80846: LitVarI4
  loc_C8084E: PopAdLdVar
  loc_C8084F: FLdPr Me
  loc_C80852: VCallAd Control_ID_ServDevaFlex
  loc_C80855: FStAdFunc var_DC
  loc_C80858: FLdPr var_DC
  loc_C8085B: LateIdCallLdVar
  loc_C80865: CStrVarTmp
  loc_C80866: CVarStr var_FC
  loc_C80869: ImpAdCallI2 IsNumeric()
  loc_C8086E: FFreeAd var_88 = ""
  loc_C80875: FFreeVar var_98 = "": var_EC = ""
  loc_C8087E: BranchF loc_C80944
  loc_C80881: FLdPr Me
  loc_C80884: VCallAd Control_ID_ServDevaFlex
  loc_C80887: FStAdFunc var_88
  loc_C8088A: FLdPr var_88
  loc_C8088D: LateIdLdVar var_98 DispID_10 0
  loc_C80894: CI4Var
  loc_C80896: CVarI4
  loc_C8089A: PopAdLdVar
  loc_C8089B: LitVarI4
  loc_C808A3: PopAdLdVar
  loc_C808A4: FLdPr Me
  loc_C808A7: VCallAd Control_ID_ServDevaFlex
  loc_C808AA: FStAdFunc var_DC
  loc_C808AD: FLdPr var_DC
  loc_C808B0: LateIdCallLdVar
  loc_C808BA: PopAd
  loc_C808BC: FLdPr Me
  loc_C808BF: VCallAd Control_ID_ServDevaFlex
  loc_C808C2: FStAdFunc var_120
  loc_C808C5: FLdPr var_120
  loc_C808C8: LateIdLdVar var_174 DispID_10 0
  loc_C808CF: CI4Var
  loc_C808D1: CVarI4
  loc_C808D5: PopAdLdVar
  loc_C808D6: LitVarI4
  loc_C808DE: PopAdLdVar
  loc_C808DF: LitI4 1
  loc_C808E4: LitI4 1
  loc_C808E9: LitVarStr var_11C, "0.00"
  loc_C808EE: FStVarCopyObj var_130
  loc_C808F1: FLdRfVar var_130
  loc_C808F4: FLdRfVar var_EC
  loc_C808F7: CStrVarTmp
  loc_C808F8: FStStrNoPop var_178
  loc_C808FB: CR8Str
  loc_C808FD: CVarR8
  loc_C80901: FLdRfVar var_164
  loc_C80904: ImpAdCallFPR4  = Format(, )
  loc_C80909: FLdRfVar var_164
  loc_C8090C: CStrVarTmp
  loc_C8090D: CVarStr var_1AC
  loc_C80910: PopAdLdVar
  loc_C80911: FLdPr Me
  loc_C80914: VCallAd Control_ID_ServDevaFlex
  loc_C80917: FStAdFunc var_154
  loc_C8091A: FLdPr var_154
  loc_C8091D: LateIdCallSt
  loc_C80925: FFree1Str var_178
  loc_C80928: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C80933: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_C80944: FLdPr Me
  loc_C80947: VCallAd Control_ID_ServDevaFlex
  loc_C8094A: FStAdFunc var_154
  loc_C8094D: FLdPr var_154
  loc_C80950: LateIdLdVar var_98 DispID_10 0
  loc_C80957: CI4Var
  loc_C80959: CVarI4
  loc_C8095D: PopAdLdVar
  loc_C8095E: LitVarI4
  loc_C80966: PopAdLdVar
  loc_C80967: FLdRfVar var_EC
  loc_C8096A: FLdRfVar var_120
  loc_C8096D: LitVarStr var_A8, "PeriInfo"
  loc_C80972: PopAdLdVar
  loc_C80973: FLdRfVar var_DC
  loc_C80976: FLdRfVar var_88
  loc_C80979: FLdPr Me
  loc_C8097C: MemLdRfVar from_stack_1.global_68
  loc_C8097F: NewIfNullPr clsservdeva
  loc_C80982: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80987: FLdPr var_88
  loc_C8098A:  = Me.Fields
  loc_C8098F: FLdPr var_DC
  loc_C80992: from_stack_2 = Me.Item(from_stack_1)
  loc_C80997: FLdPr var_120
  loc_C8099A:  = Me.Value
  loc_C8099F: FLdRfVar var_EC
  loc_C809A2: CStrVarTmp
  loc_C809A3: CVarStr var_FC
  loc_C809A6: PopAdLdVar
  loc_C809A7: FLdPr Me
  loc_C809AA: VCallAd Control_ID_ServDevaFlex
  loc_C809AD: FStAdFunc var_1B0
  loc_C809B0: FLdPr var_1B0
  loc_C809B3: LateIdCallSt
  loc_C809BB: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_C809C8: FFreeVar var_98 = "": var_EC = ""
  loc_C809D1: FLdPr Me
  loc_C809D4: VCallAd Control_ID_ServDevaFlex
  loc_C809D7: FStAdFunc var_154
  loc_C809DA: FLdPr var_154
  loc_C809DD: LateIdLdVar var_98 DispID_10 0
  loc_C809E4: CI4Var
  loc_C809E6: CVarI4
  loc_C809EA: PopAdLdVar
  loc_C809EB: LitVarI4
  loc_C809F3: PopAdLdVar
  loc_C809F4: FLdRfVar var_EC
  loc_C809F7: FLdRfVar var_120
  loc_C809FA: LitVarStr var_A8, "CodiConc"
  loc_C809FF: PopAdLdVar
  loc_C80A00: FLdRfVar var_DC
  loc_C80A03: FLdRfVar var_88
  loc_C80A06: FLdPr Me
  loc_C80A09: MemLdRfVar from_stack_1.global_68
  loc_C80A0C: NewIfNullPr clsservdeva
  loc_C80A0F: from_stack_1v = clsservdeva.RsFrmGet()
  loc_C80A14: FLdPr var_88
  loc_C80A17:  = Me.Fields
  loc_C80A1C: FLdPr var_DC
  loc_C80A1F: from_stack_2 = Me.Item(from_stack_1)
  loc_C80A24: FLdPr var_120
  loc_C80A27:  = Me.Value
  loc_C80A2C: FLdRfVar var_EC
  loc_C80A2F: CStrVarTmp
  loc_C80A30: CVarStr var_FC
  loc_C80A33: PopAdLdVar
  loc_C80A34: FLdPr Me
  loc_C80A37: VCallAd Control_ID_ServDevaFlex
  loc_C80A3A: FStAdFunc var_1B0
  loc_C80A3D: FLdPr var_1B0
  loc_C80A40: LateIdCallSt
  loc_C80A48: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_C80A55: FFreeVar var_98 = "": var_EC = ""
  loc_C80A5E: FLdPr Me
  loc_C80A61: VCallAd Control_ID_ServDevaFlex
  loc_C80A64: FStAdFunc var_88
  loc_C80A67: FLdPr var_88
  loc_C80A6A: LateIdLdVar var_98 DispID_10 0
  loc_C80A71: CI4Var
  loc_C80A73: CVarI4
  loc_C80A77: PopAdLdVar
  loc_C80A78: LitVarI4
  loc_C80A80: PopAdLdVar
  loc_C80A81: FLdPr Me
  loc_C80A84: VCallAd Control_ID_ServDevaFlex
  loc_C80A87: FStAdFunc var_DC
  loc_C80A8A: FLdPr var_DC
  loc_C80A8D: LateIdCallLdVar
  loc_C80A97: CStrVarTmp
  loc_C80A98: FStStrNoPop var_178
  loc_C80A9B: CI2Str
  loc_C80A9D: LitI2 940
  loc_C80AA0: EqI2
  loc_C80AA1: FLdPr Me
  loc_C80AA4: VCallAd Control_ID_ServDevaFlex
  loc_C80AA7: FStAdFunc var_120
  loc_C80AAA: FLdPr var_120
  loc_C80AAD: LateIdLdVar var_FC DispID_10 0
  loc_C80AB4: CI4Var
  loc_C80AB6: CVarI4
  loc_C80ABA: PopAdLdVar
  loc_C80ABB: LitVarI4
  loc_C80AC3: PopAdLdVar
  loc_C80AC4: FLdPr Me
  loc_C80AC7: VCallAd Control_ID_ServDevaFlex
  loc_C80ACA: FStAdFunc var_154
  loc_C80ACD: FLdPr var_154
  loc_C80AD0: LateIdCallLdVar
  loc_C80ADA: CStrVarTmp
  loc_C80ADB: FStStrNoPop var_17C
  loc_C80ADE: CI2Str
  loc_C80AE0: LitI2 945
  loc_C80AE3: EqI2
  loc_C80AE4: OrI4
  loc_C80AE5: FFreeStr var_178 = ""
  loc_C80AEC: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C80AF7: FFreeVar var_98 = "": var_EC = "": var_FC = ""
  loc_C80B02: BranchF loc_C80B1B
  loc_C80B05: LitI2_Byte 1
  loc_C80B07: FLdPr Me
  loc_C80B0A: VCallAd Control_ID_DuplicadoChk
  loc_C80B0D: FStAdFunc var_88
  loc_C80B10: FLdPr var_88
  loc_C80B13: Me.Value = from_stack_1
  loc_C80B18: FFree1Ad var_88
  loc_C80B1B: Branch loc_C80CC8
  loc_C80B1E: FLdPr Me
  loc_C80B21: VCallAd Control_ID_ServDevaFlex
  loc_C80B24: FStAdFunc var_88
  loc_C80B27: FLdPr var_88
  loc_C80B2A: LateIdLdVar var_98 DispID_10 0
  loc_C80B31: CI4Var
  loc_C80B33: CVarI4
  loc_C80B37: PopAdLdVar
  loc_C80B38: LitVarI4
  loc_C80B40: PopAdLdVar
  loc_C80B41: LitVarStr var_10C, vbNullString
  loc_C80B46: PopAdLdVar
  loc_C80B47: FLdPr Me
  loc_C80B4A: VCallAd Control_ID_ServDevaFlex
  loc_C80B4D: FStAdFunc var_DC
  loc_C80B50: FLdPr var_DC
  loc_C80B53: LateIdCallSt
  loc_C80B5B: FFreeAd var_88 = ""
  loc_C80B62: FFree1Var var_98 = ""
  loc_C80B65: FLdPr Me
  loc_C80B68: VCallAd Control_ID_ServDevaFlex
  loc_C80B6B: FStAdFunc var_88
  loc_C80B6E: FLdPr var_88
  loc_C80B71: LateIdLdVar var_98 DispID_10 0
  loc_C80B78: CI4Var
  loc_C80B7A: CVarI4
  loc_C80B7E: PopAdLdVar
  loc_C80B7F: LitVarI4
  loc_C80B87: PopAdLdVar
  loc_C80B88: LitVarStr var_10C, vbNullString
  loc_C80B8D: PopAdLdVar
  loc_C80B8E: FLdPr Me
  loc_C80B91: VCallAd Control_ID_ServDevaFlex
  loc_C80B94: FStAdFunc var_DC
  loc_C80B97: FLdPr var_DC
  loc_C80B9A: LateIdCallSt
  loc_C80BA2: FFreeAd var_88 = ""
  loc_C80BA9: FFree1Var var_98 = ""
  loc_C80BAC: FLdPr Me
  loc_C80BAF: VCallAd Control_ID_ServDevaFlex
  loc_C80BB2: FStAdFunc var_88
  loc_C80BB5: FLdPr var_88
  loc_C80BB8: LateIdLdVar var_98 DispID_10 0
  loc_C80BBF: CI4Var
  loc_C80BC1: CVarI4
  loc_C80BC5: PopAdLdVar
  loc_C80BC6: LitVarI4
  loc_C80BCE: PopAdLdVar
  loc_C80BCF: LitVarStr var_10C, vbNullString
  loc_C80BD4: PopAdLdVar
  loc_C80BD5: FLdPr Me
  loc_C80BD8: VCallAd Control_ID_ServDevaFlex
  loc_C80BDB: FStAdFunc var_DC
  loc_C80BDE: FLdPr var_DC
  loc_C80BE1: LateIdCallSt
  loc_C80BE9: FFreeAd var_88 = ""
  loc_C80BF0: FFree1Var var_98 = ""
  loc_C80BF3: FLdPr Me
  loc_C80BF6: VCallAd Control_ID_ServDevaFlex
  loc_C80BF9: FStAdFunc var_88
  loc_C80BFC: FLdPr var_88
  loc_C80BFF: LateIdLdVar var_98 DispID_10 0
  loc_C80C06: CI4Var
  loc_C80C08: CVarI4
  loc_C80C0C: PopAdLdVar
  loc_C80C0D: LitVarI4
  loc_C80C15: PopAdLdVar
  loc_C80C16: LitVarStr var_10C, vbNullString
  loc_C80C1B: PopAdLdVar
  loc_C80C1C: FLdPr Me
  loc_C80C1F: VCallAd Control_ID_ServDevaFlex
  loc_C80C22: FStAdFunc var_DC
  loc_C80C25: FLdPr var_DC
  loc_C80C28: LateIdCallSt
  loc_C80C30: FFreeAd var_88 = ""
  loc_C80C37: FFree1Var var_98 = ""
  loc_C80C3A: FLdPr Me
  loc_C80C3D: VCallAd Control_ID_ServDevaFlex
  loc_C80C40: FStAdFunc var_88
  loc_C80C43: FLdPr var_88
  loc_C80C46: LateIdLdVar var_98 DispID_10 0
  loc_C80C4D: CI4Var
  loc_C80C4F: CVarI4
  loc_C80C53: PopAdLdVar
  loc_C80C54: LitVarI4
  loc_C80C5C: PopAdLdVar
  loc_C80C5D: LitVarStr var_10C, vbNullString
  loc_C80C62: PopAdLdVar
  loc_C80C63: FLdPr Me
  loc_C80C66: VCallAd Control_ID_ServDevaFlex
  loc_C80C69: FStAdFunc var_DC
  loc_C80C6C: FLdPr var_DC
  loc_C80C6F: LateIdCallSt
  loc_C80C77: FFreeAd var_88 = ""
  loc_C80C7E: FFree1Var var_98 = ""
  loc_C80C81: FLdPr Me
  loc_C80C84: VCallAd Control_ID_ServDevaFlex
  loc_C80C87: FStAdFunc var_88
  loc_C80C8A: FLdPr var_88
  loc_C80C8D: LateIdLdVar var_98 DispID_10 0
  loc_C80C94: CI4Var
  loc_C80C96: CVarI4
  loc_C80C9A: PopAdLdVar
  loc_C80C9B: LitVarI4
  loc_C80CA3: PopAdLdVar
  loc_C80CA4: LitVarStr var_10C, vbNullString
  loc_C80CA9: PopAdLdVar
  loc_C80CAA: FLdPr Me
  loc_C80CAD: VCallAd Control_ID_ServDevaFlex
  loc_C80CB0: FStAdFunc var_DC
  loc_C80CB3: FLdPr var_DC
  loc_C80CB6: LateIdCallSt
  loc_C80CBE: FFreeAd var_88 = ""
  loc_C80CC5: FFree1Var var_98 = ""
  loc_C80CC8: FLdPr Me
  loc_C80CCB: VCallAd Control_ID_ServDevaFlex
  loc_C80CCE: FStAdFunc var_88
  loc_C80CD1: FLdPr var_88
  loc_C80CD4: LateIdLdVar var_98 DispID_11 0
  loc_C80CDB: CI4Var
  loc_C80CDD: LitI4 3
  loc_C80CE2: EqI4
  loc_C80CE3: FFree1Ad var_88
  loc_C80CE6: FFree1Var var_98 = ""
  loc_C80CE9: BranchF loc_C81049
  loc_C80CEC: FLdPr Me
  loc_C80CEF: VCallAd Control_ID_ServDevaFlex
  loc_C80CF2: FStAdFunc var_88
  loc_C80CF5: FLdPr var_88
  loc_C80CF8: LateIdLdVar var_98 DispID_10 0
  loc_C80CFF: CI4Var
  loc_C80D01: CVarI4
  loc_C80D05: PopAdLdVar
  loc_C80D06: LitVarI4
  loc_C80D0E: PopAdLdVar
  loc_C80D0F: FLdPr Me
  loc_C80D12: VCallAd Control_ID_ServDevaFlex
  loc_C80D15: FStAdFunc var_DC
  loc_C80D18: FLdPr var_DC
  loc_C80D1B: LateIdCallLdVar
  loc_C80D25: CStrVarTmp
  loc_C80D26: CVarStr var_FC
  loc_C80D29: ImpAdCallI2 IsNumeric()
  loc_C80D2E: FLdPr Me
  loc_C80D31: VCallAd Control_ID_ServDevaFlex
  loc_C80D34: FStAdFunc var_120
  loc_C80D37: FLdPr var_120
  loc_C80D3A: LateIdLdVar var_130 DispID_10 0
  loc_C80D41: CI4Var
  loc_C80D43: CVarI4
  loc_C80D47: PopAdLdVar
  loc_C80D48: LitVarI4
  loc_C80D50: PopAdLdVar
  loc_C80D51: FLdPr Me
  loc_C80D54: VCallAd Control_ID_ServDevaFlex
  loc_C80D57: FStAdFunc var_154
  loc_C80D5A: FLdPr var_154
  loc_C80D5D: LateIdCallLdVar
  loc_C80D67: CStrVarTmp
  loc_C80D68: CVarStr var_174
  loc_C80D6B: ImpAdCallI2 IsNumeric()
  loc_C80D70: AndI4
  loc_C80D71: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C80D7C: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_C80D8B: BranchF loc_C80F5F
  loc_C80D8E: FLdPr Me
  loc_C80D91: VCallAd Control_ID_ServDevaFlex
  loc_C80D94: FStAdFunc var_88
  loc_C80D97: FLdPr var_88
  loc_C80D9A: LateIdLdVar var_98 DispID_10 0
  loc_C80DA1: CI4Var
  loc_C80DA3: CVarI4
  loc_C80DA7: PopAdLdVar
  loc_C80DA8: LitVarI4
  loc_C80DB0: PopAdLdVar
  loc_C80DB1: FLdPr Me
  loc_C80DB4: VCallAd Control_ID_ServDevaFlex
  loc_C80DB7: FStAdFunc var_DC
  loc_C80DBA: FLdPr var_DC
  loc_C80DBD: LateIdCallLdVar
  loc_C80DC7: PopAd
  loc_C80DC9: FLdPr Me
  loc_C80DCC: VCallAd Control_ID_ServDevaFlex
  loc_C80DCF: FStAdFunc var_120
  loc_C80DD2: FLdPr var_120
  loc_C80DD5: LateIdLdVar var_174 DispID_10 0
  loc_C80DDC: CI4Var
  loc_C80DDE: CVarI4
  loc_C80DE2: PopAdLdVar
  loc_C80DE3: LitVarI4
  loc_C80DEB: PopAdLdVar
  loc_C80DEC: LitI4 1
  loc_C80DF1: LitI4 1
  loc_C80DF6: LitVarStr var_10C, "###,###,##0.00"
  loc_C80DFB: FStVarCopyObj var_130
  loc_C80DFE: FLdRfVar var_130
  loc_C80E01: FLdRfVar var_EC
  loc_C80E04: CStrVarTmp
  loc_C80E05: CVarStr var_FC
  loc_C80E08: FLdRfVar var_164
  loc_C80E0B: ImpAdCallFPR4  = Format(, )
  loc_C80E10: FLdRfVar var_164
  loc_C80E13: CStrVarTmp
  loc_C80E14: CVarStr var_1AC
  loc_C80E17: PopAdLdVar
  loc_C80E18: FLdPr Me
  loc_C80E1B: VCallAd Control_ID_ServDevaFlex
  loc_C80E1E: FStAdFunc var_154
  loc_C80E21: FLdPr var_154
  loc_C80E24: LateIdCallSt
  loc_C80E2C: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_C80E37: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_C80E48: FLdPr Me
  loc_C80E4B: VCallAd Control_ID_ServDevaFlex
  loc_C80E4E: FStAdFunc var_88
  loc_C80E51: FLdPr var_88
  loc_C80E54: LateIdLdVar var_98 DispID_10 0
  loc_C80E5B: CI4Var
  loc_C80E5D: CVarI4
  loc_C80E61: PopAdLdVar
  loc_C80E62: LitVarI4
  loc_C80E6A: PopAdLdVar
  loc_C80E6B: FLdPr Me
  loc_C80E6E: VCallAd Control_ID_ServDevaFlex
  loc_C80E71: FStAdFunc var_DC
  loc_C80E74: FLdPr var_DC
  loc_C80E77: LateIdCallLdVar
  loc_C80E81: PopAd
  loc_C80E83: FLdPr Me
  loc_C80E86: VCallAd Control_ID_ServDevaFlex
  loc_C80E89: FStAdFunc var_120
  loc_C80E8C: FLdPr var_120
  loc_C80E8F: LateIdLdVar var_FC DispID_10 0
  loc_C80E96: CI4Var
  loc_C80E98: CVarI4
  loc_C80E9C: PopAdLdVar
  loc_C80E9D: LitVarI4
  loc_C80EA5: PopAdLdVar
  loc_C80EA6: FLdPr Me
  loc_C80EA9: VCallAd Control_ID_ServDevaFlex
  loc_C80EAC: FStAdFunc var_154
  loc_C80EAF: FLdPr var_154
  loc_C80EB2: LateIdCallLdVar
  loc_C80EBC: PopAd
  loc_C80EBE: FLdPr Me
  loc_C80EC1: VCallAd Control_ID_ServDevaFlex
  loc_C80EC4: FStAdFunc var_1B0
  loc_C80EC7: FLdPr var_1B0
  loc_C80ECA: LateIdLdVar var_1C0 DispID_10 0
  loc_C80ED1: CI4Var
  loc_C80ED3: CVarI4
  loc_C80ED7: PopAdLdVar
  loc_C80ED8: LitVarI4
  loc_C80EE0: PopAdLdVar
  loc_C80EE1: LitI4 1
  loc_C80EE6: LitI4 1
  loc_C80EEB: LitVarStr var_19C, "###,###,##0.00"
  loc_C80EF0: FStVarCopyObj var_174
  loc_C80EF3: FLdRfVar var_174
  loc_C80EF6: FLdRfVar var_EC
  loc_C80EF9: CStrVarTmp
  loc_C80EFA: FStStrNoPop var_178
  loc_C80EFD: CR8Str
  loc_C80EFF: FLdRfVar var_130
  loc_C80F02: CStrVarTmp
  loc_C80F03: FStStrNoPop var_17C
  loc_C80F06: CR8Str
  loc_C80F08: MulR8
  loc_C80F09: CVarR8
  loc_C80F0D: FLdRfVar var_1AC
  loc_C80F10: ImpAdCallFPR4  = Format(, )
  loc_C80F15: FLdRfVar var_1AC
  loc_C80F18: CStrVarTmp
  loc_C80F19: CVarStr var_210
  loc_C80F1C: PopAdLdVar
  loc_C80F1D: FLdPr Me
  loc_C80F20: VCallAd Control_ID_ServDevaFlex
  loc_C80F23: FStAdFunc var_224
  loc_C80F26: FLdPr var_224
  loc_C80F29: LateIdCallSt
  loc_C80F31: FFreeStr var_178 = ""
  loc_C80F38: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_C80F47: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_C80F5C: Branch loc_C81049
  loc_C80F5F: FLdPr Me
  loc_C80F62: VCallAd Control_ID_ServDevaFlex
  loc_C80F65: FStAdFunc var_88
  loc_C80F68: FLdPr var_88
  loc_C80F6B: LateIdLdVar var_130 DispID_10 0
  loc_C80F72: CI4Var
  loc_C80F74: CVarI4
  loc_C80F78: PopAdLdVar
  loc_C80F79: LitVarI4
  loc_C80F81: PopAdLdVar
  loc_C80F82: LitI4 1
  loc_C80F87: LitI4 1
  loc_C80F8C: LitVarStr var_B8, "0.00"
  loc_C80F91: FStVarCopyObj var_EC
  loc_C80F94: FLdRfVar var_EC
  loc_C80F97: LitVarI2 var_98, 0
  loc_C80F9C: FLdRfVar var_FC
  loc_C80F9F: ImpAdCallFPR4  = Format(, )
  loc_C80FA4: FLdRfVar var_FC
  loc_C80FA7: CStrVarTmp
  loc_C80FA8: CVarStr var_164
  loc_C80FAB: PopAdLdVar
  loc_C80FAC: FLdPr Me
  loc_C80FAF: VCallAd Control_ID_ServDevaFlex
  loc_C80FB2: FStAdFunc var_DC
  loc_C80FB5: FLdPr var_DC
  loc_C80FB8: LateIdCallSt
  loc_C80FC0: FFreeAd var_88 = ""
  loc_C80FC7: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C80FD4: FLdPr Me
  loc_C80FD7: VCallAd Control_ID_ServDevaFlex
  loc_C80FDA: FStAdFunc var_88
  loc_C80FDD: FLdPr var_88
  loc_C80FE0: LateIdLdVar var_130 DispID_10 0
  loc_C80FE7: CI4Var
  loc_C80FE9: CVarI4
  loc_C80FED: PopAdLdVar
  loc_C80FEE: LitVarI4
  loc_C80FF6: PopAdLdVar
  loc_C80FF7: LitI4 1
  loc_C80FFC: LitI4 1
  loc_C81001: LitVarStr var_B8, "0.00"
  loc_C81006: FStVarCopyObj var_EC
  loc_C81009: FLdRfVar var_EC
  loc_C8100C: LitVarI2 var_98, 0
  loc_C81011: FLdRfVar var_FC
  loc_C81014: ImpAdCallFPR4  = Format(, )
  loc_C81019: FLdRfVar var_FC
  loc_C8101C: CStrVarTmp
  loc_C8101D: CVarStr var_164
  loc_C81020: PopAdLdVar
  loc_C81021: FLdPr Me
  loc_C81024: VCallAd Control_ID_ServDevaFlex
  loc_C81027: FStAdFunc var_DC
  loc_C8102A: FLdPr var_DC
  loc_C8102D: LateIdCallSt
  loc_C81035: FFreeAd var_88 = ""
  loc_C8103C: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_C81049: Call Proc_280_26_B2C6C8()
  loc_C8104E: ExitProcHresult
End Sub

Private Sub RedondeoChk_Click() '9B01C4
  'Data Table: 50E08C
  loc_9B01BC: Call Proc_280_26_B2C6C8()
  loc_9B01C1: ExitProcHresult
End Sub

Private Function Proc_280_25_B27330() 'B27330
  'Data Table: 50E08C
  loc_B270B4: FLdPr Me
  loc_B270B7: VCallAd Control_ID_ServDevaFlex
  loc_B270BA: FStAdFunc var_88
  loc_B270BD: FLdPr var_88
  loc_B270C0: LateIdCall
  loc_B270C8: LitVarI4
  loc_B270D0: PopAdLdVar
  loc_B270D1: FLdPr var_88
  loc_B270D4: LateIdSt
  loc_B270D9: LitVarI4
  loc_B270E1: PopAdLdVar
  loc_B270E2: LitVarI4
  loc_B270EA: PopAdLdVar
  loc_B270EB: LitVarStr var_D8, "Cant."
  loc_B270F0: PopAdLdVar
  loc_B270F1: FLdPr var_88
  loc_B270F4: LateIdCallSt
  loc_B270FC: LitVarI4
  loc_B27104: PopAdLdVar
  loc_B27105: LitVarI4
  loc_B2710D: PopAdLdVar
  loc_B2710E: LitVarStr var_D8, "Cod."
  loc_B27113: PopAdLdVar
  loc_B27114: FLdPr var_88
  loc_B27117: LateIdCallSt
  loc_B2711F: LitVarI4
  loc_B27127: PopAdLdVar
  loc_B27128: LitVarI4
  loc_B27130: PopAdLdVar
  loc_B27131: LitVarStr var_D8, "Detalle o Servicio"
  loc_B27136: PopAdLdVar
  loc_B27137: FLdPr var_88
  loc_B2713A: LateIdCallSt
  loc_B27142: LitVarI4
  loc_B2714A: PopAdLdVar
  loc_B2714B: LitVarI4
  loc_B27153: PopAdLdVar
  loc_B27154: LitVarStr var_D8, "Importe"
  loc_B27159: PopAdLdVar
  loc_B2715A: FLdPr var_88
  loc_B2715D: LateIdCallSt
  loc_B27165: LitVarI4
  loc_B2716D: PopAdLdVar
  loc_B2716E: LitVarI4
  loc_B27176: PopAdLdVar
  loc_B27177: LitVarStr var_D8, "Total"
  loc_B2717C: PopAdLdVar
  loc_B2717D: FLdPr var_88
  loc_B27180: LateIdCallSt
  loc_B27188: LitVarI4
  loc_B27190: PopAdLdVar
  loc_B27191: LitVarI4
  loc_B27199: PopAdLdVar
  loc_B2719A: LitVarStr var_D8, "Periodo"
  loc_B2719F: PopAdLdVar
  loc_B271A0: FLdPr var_88
  loc_B271A3: LateIdCallSt
  loc_B271AB: LitVarI4
  loc_B271B3: PopAdLdVar
  loc_B271B4: LitVarI4
  loc_B271BC: PopAdLdVar
  loc_B271BD: LitVarStr var_D8, "Concepto"
  loc_B271C2: PopAdLdVar
  loc_B271C3: FLdPr var_88
  loc_B271C6: LateIdCallSt
  loc_B271CE: LitVarI4
  loc_B271D6: PopAdLdVar
  loc_B271D7: LitVarI4
  loc_B271DF: PopAdLdVar
  loc_B271E0: LitVarStr var_D8, "Fijo"
  loc_B271E5: PopAdLdVar
  loc_B271E6: FLdPr var_88
  loc_B271E9: LateIdCallSt
  loc_B271F1: FLdPr var_88
  loc_B271F4: LateIdCall
  loc_B271FC: LitNothing
  loc_B271FE: FStAd var_88 
  loc_B27202: LitVarStr var_98, vbNullString
  loc_B27207: LitI4 9
  loc_B2720C: FLdRfVar var_F8
  loc_B2720F: ImpAdCallFPR4  = Chr()
  loc_B27214: FLdRfVar var_F8
  loc_B27217: ConcatVar var_108
  loc_B2721B: LitVarStr var_A8, vbNullString
  loc_B27220: ConcatVar var_118
  loc_B27224: LitI4 9
  loc_B27229: FLdRfVar var_128
  loc_B2722C: ImpAdCallFPR4  = Chr()
  loc_B27231: FLdRfVar var_128
  loc_B27234: ConcatVar var_138
  loc_B27238: LitVarStr var_B8, vbNullString
  loc_B2723D: ConcatVar var_148
  loc_B27241: LitI4 9
  loc_B27246: FLdRfVar var_158
  loc_B27249: ImpAdCallFPR4  = Chr()
  loc_B2724E: FLdRfVar var_158
  loc_B27251: ConcatVar var_168
  loc_B27255: LitVarStr var_C8, vbNullString
  loc_B2725A: ConcatVar var_178
  loc_B2725E: LitI4 9
  loc_B27263: FLdRfVar var_188
  loc_B27266: ImpAdCallFPR4  = Chr()
  loc_B2726B: FLdRfVar var_188
  loc_B2726E: ConcatVar var_198
  loc_B27272: LitVarStr var_D8, vbNullString
  loc_B27277: ConcatVar var_1A8
  loc_B2727B: LitI4 9
  loc_B27280: FLdRfVar var_1B8
  loc_B27283: ImpAdCallFPR4  = Chr()
  loc_B27288: FLdRfVar var_1B8
  loc_B2728B: ConcatVar var_1C8
  loc_B2728F: LitVarStr var_E8, vbNullString
  loc_B27294: ConcatVar var_1D8
  loc_B27298: LitI4 9
  loc_B2729D: FLdRfVar var_1E8
  loc_B272A0: ImpAdCallFPR4  = Chr()
  loc_B272A5: FLdRfVar var_1E8
  loc_B272A8: ConcatVar var_1F8
  loc_B272AC: LitVarStr var_208, vbNullString
  loc_B272B1: ConcatVar var_218
  loc_B272B5: LitI4 9
  loc_B272BA: FLdRfVar var_228
  loc_B272BD: ImpAdCallFPR4  = Chr()
  loc_B272C2: FLdRfVar var_228
  loc_B272C5: ConcatVar var_238
  loc_B272C9: LitVarStr var_248, "0"
  loc_B272CE: ConcatVar var_258
  loc_B272D2: CStrVarTmp
  loc_B272D3: FStStrNoPop var_25C
  loc_B272D6: FLdPr Me
  loc_B272D9: MemStStrCopy
  loc_B272DD: FFree1Str var_25C
  loc_B272E0: FFreeVar var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = ""
  loc_B2730D: FLdPr Me
  loc_B27310: MemLdRfVar from_stack_1.global_76
  loc_B27313: CDargRef
  loc_B27317: FLdPr Me
  loc_B2731A: VCallAd Control_ID_ServDevaFlex
  loc_B2731D: FStAdFunc var_260
  loc_B27320: FLdPr var_260
  loc_B27323: LateIdCall
  loc_B2732B: FFree1Ad var_260
  loc_B2732E: ExitProcHresult
  loc_B2732F: ModI2
End Function

Private Function Proc_280_26_B2C6C8() 'B2C6C8
  'Data Table: 50E08C
  loc_B2C3F4: LitI2_Byte 0
  loc_B2C3F6: CR8I2
  loc_B2C3F7: FStFPR8 var_8C
  loc_B2C3FA: LitI2_Byte 1
  loc_B2C3FC: FLdPr Me
  loc_B2C3FF: MemLdRfVar from_stack_1.global_88
  loc_B2C402: FLdPr Me
  loc_B2C405: VCallAd Control_ID_ServDevaFlex
  loc_B2C408: FStAdFunc var_90
  loc_B2C40B: FLdPr var_90
  loc_B2C40E: LateIdLdVar var_A0 DispID_4 0
  loc_B2C415: CI4Var
  loc_B2C417: LitI4 1
  loc_B2C41C: SubI4
  loc_B2C41D: CI2I4
  loc_B2C41E: FFree1Ad var_90
  loc_B2C421: FFree1Var var_A0 = ""
  loc_B2C424: ForI2 var_A4
  loc_B2C42A: FLdPr Me
  loc_B2C42D: MemLdI2 global_88
  loc_B2C430: CI4UI1
  loc_B2C431: CVarI4
  loc_B2C435: PopAdLdVar
  loc_B2C436: LitVarI4
  loc_B2C43E: PopAdLdVar
  loc_B2C43F: FLdPr Me
  loc_B2C442: VCallAd Control_ID_ServDevaFlex
  loc_B2C445: FStAdFunc var_90
  loc_B2C448: FLdPr var_90
  loc_B2C44B: LateIdCallLdVar
  loc_B2C455: CStrVarTmp
  loc_B2C456: CVarStr var_F4
  loc_B2C459: ImpAdCallI2 IsNumeric()
  loc_B2C45E: FFree1Ad var_90
  loc_B2C461: FFreeVar var_A0 = ""
  loc_B2C468: BranchF loc_B2C4B1
  loc_B2C46B: FLdPr Me
  loc_B2C46E: MemLdI2 global_88
  loc_B2C471: CI4UI1
  loc_B2C472: CVarI4
  loc_B2C476: PopAdLdVar
  loc_B2C477: LitVarI4
  loc_B2C47F: PopAdLdVar
  loc_B2C480: FLdPr Me
  loc_B2C483: VCallAd Control_ID_ServDevaFlex
  loc_B2C486: FStAdFunc var_90
  loc_B2C489: FLdPr var_90
  loc_B2C48C: LateIdCallLdVar
  loc_B2C496: PopAd
  loc_B2C498: FLdFPR8 var_8C
  loc_B2C49B: FLdRfVar var_A0
  loc_B2C49E: CStrVarTmp
  loc_B2C49F: FStStrNoPop var_F8
  loc_B2C4A2: CR8Str
  loc_B2C4A4: AddR8
  loc_B2C4A5: FStFPR8 var_8C
  loc_B2C4A8: FFree1Str var_F8
  loc_B2C4AB: FFree1Ad var_90
  loc_B2C4AE: FFree1Var var_A0 = ""
  loc_B2C4B1: FLdPr Me
  loc_B2C4B4: MemLdRfVar from_stack_1.global_88
  loc_B2C4B7: NextI2 var_A4, loc_B2C42A
  loc_B2C4BC: LitI4 1
  loc_B2C4C1: LitI4 1
  loc_B2C4C6: LitVarStr var_C4, "###,###,##0.00"
  loc_B2C4CB: FStVarCopyObj var_A0
  loc_B2C4CE: FLdRfVar var_A0
  loc_B2C4D1: FLdRfVar var_8C
  loc_B2C4D4: CVarRef
  loc_B2C4D9: FLdRfVar var_F4
  loc_B2C4DC: ImpAdCallFPR4  = Format(, )
  loc_B2C4E1: FLdRfVar var_F4
  loc_B2C4E4: CStrVarVal var_F8
  loc_B2C4E8: FLdPr Me
  loc_B2C4EB: VCallAd Control_ID_TotaBoleTxt
  loc_B2C4EE: FStAdFunc var_90
  loc_B2C4F1: FLdPr var_90
  loc_B2C4F4: Me.Text = from_stack_1
  loc_B2C4F9: FFree1Str var_F8
  loc_B2C4FC: FFree1Ad var_90
  loc_B2C4FF: FFreeVar var_A0 = ""
  loc_B2C506: LitStr "Municipalidad de Guaymallén"
  loc_B2C509: LitStr "Municipalidad de Rivadavia"
  loc_B2C50C: EqStr
  loc_B2C50E: FLdRfVar var_FA
  loc_B2C511: FLdPr Me
  loc_B2C514: VCallAd Control_ID_RedondeoChk
  loc_B2C517: FStAdFunc var_90
  loc_B2C51A: FLdPr var_90
  loc_B2C51D:  = Me.Value
  loc_B2C522: FLdI2 var_FA
  loc_B2C525: LitI2_Byte 1
  loc_B2C527: EqI2
  loc_B2C528: AndI4
  loc_B2C529: FFree1Ad var_90
  loc_B2C52C: BranchF loc_B2C5E7
  loc_B2C52F: LitI2_Byte 0
  loc_B2C531: CR8I2
  loc_B2C532: FLdPr Me
  loc_B2C535: MemStFPR8 global_92
  loc_B2C538: FLdFPR8 var_8C
  loc_B2C53B: CI4R8
  loc_B2C53C: CVarI4
  loc_B2C540: HardType
  loc_B2C541: LitI4 2
  loc_B2C546: FLdRfVar var_8C
  loc_B2C549: CVarRef
  loc_B2C54E: FLdRfVar var_A0
  loc_B2C551: ImpAdCallFPR4  = Round(, )
  loc_B2C556: FLdRfVar var_A0
  loc_B2C559: NeVarBool
  loc_B2C55B: FFree1Var var_A0 = ""
  loc_B2C55E: BranchF loc_B2C5E7
  loc_B2C561: LitI4 2
  loc_B2C566: FLdFPR8 var_8C
  loc_B2C569: FnFixR8
  loc_B2C56B: LitI2_Byte 1
  loc_B2C56D: CR8I2
  loc_B2C56E: AddR8
  loc_B2C56F: FLdFPR8 var_8C
  loc_B2C572: SubR4
  loc_B2C573: CVarR8
  loc_B2C577: FLdRfVar var_F4
  loc_B2C57A: ImpAdCallFPR4  = Round(, )
  loc_B2C57F: FLdRfVar var_F4
  loc_B2C582: CR4Var
  loc_B2C583: FLdPr Me
  loc_B2C586: MemStFPR8 global_92
  loc_B2C589: FFreeVar var_A0 = ""
  loc_B2C590: FLdFPR8 var_8C
  loc_B2C593: FLdPr Me
  loc_B2C596: MemLdFPR8 global_92
  loc_B2C599: AddR8
  loc_B2C59A: FStFPR8 var_8C
  loc_B2C59D: LitI4 1
  loc_B2C5A2: LitI4 1
  loc_B2C5A7: LitVarStr var_C4, "###,###,##0.00"
  loc_B2C5AC: FStVarCopyObj var_A0
  loc_B2C5AF: FLdRfVar var_A0
  loc_B2C5B2: FLdRfVar var_8C
  loc_B2C5B5: CVarRef
  loc_B2C5BA: FLdRfVar var_F4
  loc_B2C5BD: ImpAdCallFPR4  = Format(, )
  loc_B2C5C2: FLdRfVar var_F4
  loc_B2C5C5: CStrVarVal var_F8
  loc_B2C5C9: FLdPr Me
  loc_B2C5CC: VCallAd Control_ID_TotaBoleTxt
  loc_B2C5CF: FStAdFunc var_90
  loc_B2C5D2: FLdPr var_90
  loc_B2C5D5: Me.Text = from_stack_1
  loc_B2C5DA: FFree1Str var_F8
  loc_B2C5DD: FFree1Ad var_90
  loc_B2C5E0: FFreeVar var_A0 = ""
  loc_B2C5E7: FLdRfVar var_F8
  loc_B2C5EA: FLdPr Me
  loc_B2C5ED: VCallAd Control_ID_PorcDescTxt
  loc_B2C5F0: FStAdFunc var_90
  loc_B2C5F3: FLdPr var_90
  loc_B2C5F6:  = Me.Text
  loc_B2C5FB: LitI4 1
  loc_B2C600: LitI4 1
  loc_B2C605: LitVarStr var_C4, "###,###,##0.00"
  loc_B2C60A: FStVarCopyObj var_F4
  loc_B2C60D: FLdRfVar var_F4
  loc_B2C610: FLdFPR8 var_8C
  loc_B2C613: ILdRf var_F8
  loc_B2C616: CR8Str
  loc_B2C618: MulR8
  loc_B2C619: LitI2_Byte &H64
  loc_B2C61B: CR8I2
  loc_B2C61C: DivR8
  loc_B2C61D: CVarR8
  loc_B2C621: FLdRfVar var_10C
  loc_B2C624: ImpAdCallFPR4  = Format(, )
  loc_B2C629: FLdRfVar var_10C
  loc_B2C62C: CStrVarVal var_110
  loc_B2C630: FLdPr Me
  loc_B2C633: VCallAd Control_ID_DescBoleTxt
  loc_B2C636: FStAdFunc var_114
  loc_B2C639: FLdPr var_114
  loc_B2C63C: Me.Text = from_stack_1
  loc_B2C641: FFreeStr var_F8 = ""
  loc_B2C648: FFreeAd var_90 = ""
  loc_B2C64F: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2C658: FLdRfVar var_F8
  loc_B2C65B: FLdPr Me
  loc_B2C65E: VCallAd Control_ID_DescBoleTxt
  loc_B2C661: FStAdFunc var_90
  loc_B2C664: FLdPr var_90
  loc_B2C667:  = Me.Text
  loc_B2C66C: LitI4 1
  loc_B2C671: LitI4 1
  loc_B2C676: LitVarStr var_C4, "###,###,##0.00"
  loc_B2C67B: FStVarCopyObj var_F4
  loc_B2C67E: FLdRfVar var_F4
  loc_B2C681: FLdFPR8 var_8C
  loc_B2C684: ILdRf var_F8
  loc_B2C687: CR8Str
  loc_B2C689: SubR4
  loc_B2C68A: CVarR8
  loc_B2C68E: FLdRfVar var_10C
  loc_B2C691: ImpAdCallFPR4  = Format(, )
  loc_B2C696: FLdRfVar var_10C
  loc_B2C699: CStrVarVal var_110
  loc_B2C69D: FLdPr Me
  loc_B2C6A0: VCallAd Control_ID_TotalTxt
  loc_B2C6A3: FStAdFunc var_114
  loc_B2C6A6: FLdPr var_114
  loc_B2C6A9: Me.Text = from_stack_1
  loc_B2C6AE: FFreeStr var_F8 = ""
  loc_B2C6B5: FFreeAd var_90 = ""
  loc_B2C6BC: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2C6C5: ExitProcHresult
  loc_B2C6C6: CCyI2
End Function

Private Function Proc_280_27_AF2EE8() 'AF2EE8
  'Data Table: 50E08C
  loc_AF2D3C: LitI2_Byte 0
  loc_AF2D3E: FLdPr Me
  loc_AF2D41: VCallAd Control_ID_PorcDescTxt
  loc_AF2D44: FStAdFunc var_88
  loc_AF2D47: FLdPr var_88
  loc_AF2D4A: Me.Visible = from_stack_1b
  loc_AF2D4F: FFree1Ad var_88
  loc_AF2D52: LitI2_Byte 0
  loc_AF2D54: FLdPr Me
  loc_AF2D57: VCallAd Control_ID_DescBoleLbl
  loc_AF2D5A: FStAdFunc var_88
  loc_AF2D5D: FLdPr var_88
  loc_AF2D60: Me.Visible = from_stack_1b
  loc_AF2D65: FFree1Ad var_88
  loc_AF2D68: LitI2_Byte 0
  loc_AF2D6A: FLdPr Me
  loc_AF2D6D: VCallAd Control_ID_DescBoleTxt
  loc_AF2D70: FStAdFunc var_88
  loc_AF2D73: FLdPr var_88
  loc_AF2D76: Me.Visible = from_stack_1b
  loc_AF2D7B: FFree1Ad var_88
  loc_AF2D7E: LitI2_Byte 0
  loc_AF2D80: FLdPr Me
  loc_AF2D83: VCallAd Control_ID_TotalLbl
  loc_AF2D86: FStAdFunc var_88
  loc_AF2D89: FLdPr var_88
  loc_AF2D8C: Me.Visible = from_stack_1b
  loc_AF2D91: FFree1Ad var_88
  loc_AF2D94: LitI2_Byte 0
  loc_AF2D96: FLdPr Me
  loc_AF2D99: VCallAd Control_ID_TotalTxt
  loc_AF2D9C: FStAdFunc var_88
  loc_AF2D9F: FLdPr var_88
  loc_AF2DA2: Me.Visible = from_stack_1b
  loc_AF2DA7: FFree1Ad var_88
  loc_AF2DAA: LitI2_Byte 0
  loc_AF2DAC: FLdPr Me
  loc_AF2DAF: VCallAd Control_ID_DescuentoChk
  loc_AF2DB2: FStAdFunc var_88
  loc_AF2DB5: FLdPr var_88
  loc_AF2DB8: Me.Value = from_stack_1
  loc_AF2DBD: FFree1Ad var_88
  loc_AF2DC0: LitI4 1
  loc_AF2DC5: LitI4 1
  loc_AF2DCA: LitVarStr var_B8, "0.00"
  loc_AF2DCF: FStVarCopyObj var_C8
  loc_AF2DD2: FLdRfVar var_C8
  loc_AF2DD5: LitVarI2 var_A8, 0
  loc_AF2DDA: FLdRfVar var_D8
  loc_AF2DDD: ImpAdCallFPR4  = Format(, )
  loc_AF2DE2: FLdRfVar var_D8
  loc_AF2DE5: CStrVarVal var_DC
  loc_AF2DE9: FLdPr Me
  loc_AF2DEC: VCallAd Control_ID_PorcDescTxt
  loc_AF2DEF: FStAdFunc var_88
  loc_AF2DF2: FLdPr var_88
  loc_AF2DF5: Me.Text = from_stack_1
  loc_AF2DFA: FFree1Str var_DC
  loc_AF2DFD: FFree1Ad var_88
  loc_AF2E00: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2E09: LitI4 1
  loc_AF2E0E: LitI4 1
  loc_AF2E13: LitVarStr var_B8, "0.00"
  loc_AF2E18: FStVarCopyObj var_C8
  loc_AF2E1B: FLdRfVar var_C8
  loc_AF2E1E: LitVarI2 var_A8, 0
  loc_AF2E23: FLdRfVar var_D8
  loc_AF2E26: ImpAdCallFPR4  = Format(, )
  loc_AF2E2B: FLdRfVar var_D8
  loc_AF2E2E: CStrVarVal var_DC
  loc_AF2E32: FLdPr Me
  loc_AF2E35: VCallAd Control_ID_TotaBoleTxt
  loc_AF2E38: FStAdFunc var_88
  loc_AF2E3B: FLdPr var_88
  loc_AF2E3E: Me.Text = from_stack_1
  loc_AF2E43: FFree1Str var_DC
  loc_AF2E46: FFree1Ad var_88
  loc_AF2E49: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2E52: LitI4 1
  loc_AF2E57: LitI4 1
  loc_AF2E5C: LitVarStr var_B8, "0.00"
  loc_AF2E61: FStVarCopyObj var_C8
  loc_AF2E64: FLdRfVar var_C8
  loc_AF2E67: LitVarI2 var_A8, 0
  loc_AF2E6C: FLdRfVar var_D8
  loc_AF2E6F: ImpAdCallFPR4  = Format(, )
  loc_AF2E74: FLdRfVar var_D8
  loc_AF2E77: CStrVarVal var_DC
  loc_AF2E7B: FLdPr Me
  loc_AF2E7E: VCallAd Control_ID_DescBoleTxt
  loc_AF2E81: FStAdFunc var_88
  loc_AF2E84: FLdPr var_88
  loc_AF2E87: Me.Text = from_stack_1
  loc_AF2E8C: FFree1Str var_DC
  loc_AF2E8F: FFree1Ad var_88
  loc_AF2E92: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2E9B: LitI4 1
  loc_AF2EA0: LitI4 1
  loc_AF2EA5: LitVarStr var_B8, "0.00"
  loc_AF2EAA: FStVarCopyObj var_C8
  loc_AF2EAD: FLdRfVar var_C8
  loc_AF2EB0: LitVarI2 var_A8, 0
  loc_AF2EB5: FLdRfVar var_D8
  loc_AF2EB8: ImpAdCallFPR4  = Format(, )
  loc_AF2EBD: FLdRfVar var_D8
  loc_AF2EC0: CStrVarVal var_DC
  loc_AF2EC4: FLdPr Me
  loc_AF2EC7: VCallAd Control_ID_TotalTxt
  loc_AF2ECA: FStAdFunc var_88
  loc_AF2ECD: FLdPr var_88
  loc_AF2ED0: Me.Text = from_stack_1
  loc_AF2ED5: FFree1Str var_DC
  loc_AF2ED8: FFree1Ad var_88
  loc_AF2EDB: FFreeVar var_A8 = "": var_C8 = ""
  loc_AF2EE4: ExitProcHresult
  loc_AF2EE5: CRec2Ansi Proc_280_27_AF2EE800
End Function
