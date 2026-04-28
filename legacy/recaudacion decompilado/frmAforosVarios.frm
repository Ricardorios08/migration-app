VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmAforosVarios
  Caption = "Aforos Varios"
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
  ClientWidth = 15180
  ClientHeight = 10320
  Begin VB.TextBox txtTotaDere
    Left = 6120
    Top = 5160
    Width = 1815
    Height = 345
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
  Begin VB.TextBox txtTotaReca
    Left = 10440
    Top = 5160
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
  Begin VB.TextBox txtTotaApre
    Left = 2040
    Top = 5160
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
  Begin VB.TextBox txtTotal
    Left = 13200
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 29
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
  Begin VB.Frame Frame1
    Caption = "Datos del Aforo"
    Left = 240
    Top = 5760
    Width = 14775
    Height = 4095
    TabIndex = 21
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton OptBimestral
      Caption = "Bimestral"
      Left = 7320
      Top = 480
      Width = 1575
      Height = 255
      TabIndex = 41
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.OptionButton OptMensual
      Caption = "Mensual"
      Left = 5880
      Top = 480
      Width = 1215
      Height = 255
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
    End
    Begin VB.TextBox PeriCtctTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 960
      Width = 735
      Height = 345
      TabIndex = 12
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
    Begin VB.CommandButton CodiConcCmd
      Left = 3960
      Top = 1440
      Width = 450
      Height = 345
      TabIndex = 15
      Picture = "frmAforosVarios.frx":0000
      Style = 1
    End
    Begin VB.TextBox CodiConcTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1440
      Width = 1215
      Height = 345
      TabIndex = 14
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
    Begin VB.TextBox BimeCtct
      ForeColor = &HFF0000&
      Left = 3480
      Top = 960
      Width = 375
      Height = 345
      TabIndex = 13
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
    Begin VB.CommandButton ConfirmarCmd
      Left = 5160
      Top = 3360
      Width = 1335
      Height = 525
      TabIndex = 19
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,6
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmAforosVarios.frx":00FA
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 2880
      Width = 1695
      Height = 345
      TabIndex = 18
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
    Begin VB.TextBox DetaCtctTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 2400
      Width = 9015
      Height = 345
      TabIndex = 17
      MaxLength = 100
      BeginProperty Font
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
      Left = 2640
      Top = 1920
      Width = 1695
      Height = 345
      TabIndex = 16
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
    Begin VB.CommandButton FeveCtctCmd
      Left = 4200
      Top = 480
      Width = 450
      Height = 345
      TabIndex = 11
      Picture = "frmAforosVarios.frx":0428
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeveCtctMsk
      Left = 2640
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 10
      OleObjectBlob = "frmAforosVarios.frx":096A
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin MSMask.MaskEdBox CantCtctMsk
      Left = 5880
      Top = 960
      Width = 615
      Height = 345
      TabIndex = 42
      OleObjectBlob = "frmAforosVarios.frx":0A1A
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label1
      Caption = "Cantidad:"
      Left = 4680
      Top = 960
      Width = 1020
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
    Begin VB.Label DetaConcLbl
      Left = 4560
      Top = 1440
      Width = 7335
      Height = 345
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
    Begin VB.Label Label14
      Caption = "Concepto:"
      Left = 1515
      Top = 1440
      Width = 1095
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
    Begin VB.Label Label13
      Caption = "Periodo:"
      Left = 1740
      Top = 960
      Width = 870
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
    Begin VB.Line Line1
      X1 = 3360
      Y1 = 1200
      X2 = 3480
      Y2 = 960
    End
    Begin VB.Label Label12
      Caption = "Importe:"
      Left = 1725
      Top = 2880
      Width = 885
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
    Begin VB.Label Label11
      Caption = "Observaciones:"
      Left = 975
      Top = 2400
      Width = 1635
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
      Left = 1350
      Top = 1920
      Width = 1260
      Height = 300
      TabIndex = 23
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
      Caption = "Fecha de Vencimiento:"
      Left = 165
      Top = 480
      Width = 2445
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
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1440
    Top = 120
    Width = 2295
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
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton BuscarCmd
    Left = 5160
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 8
    Picture = "frmAforosVarios.frx":0AA8
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6720
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmAforosVarios.frx":0B8A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4800
    Top = 120
    Width = 1815
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
    Left = 14400
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 20
    Picture = "frmAforosVarios.frx":0C84
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 4200
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 7
    Picture = "frmAforosVarios.frx":0ED6
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2640
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 6
    OleObjectBlob = "frmAforosVarios.frx":1418
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 9
    OleObjectBlob = "frmAforosVarios.frx":14C8
    Appearance = 0 'Flat
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 7215
    Height = 315
    TabIndex = 39
    BeginProperty Font
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
    Left = 7320
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 38
    BeginProperty Font
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
    Left = 9240
    Top = 120
    Width = 5175
    Height = 315
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
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 4080
    Top = 5160
    Width = 1785
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
  Begin VB.Label Label6
    Caption = "Total Recargo:"
    Left = 8400
    Top = 5160
    Width = 1785
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
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 240
    Top = 5160
    Width = 1755
    Height = 300
    TabIndex = 34
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
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 33
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
    Left = 600
    Top = 120
    Width = 795
    Height = 300
    TabIndex = 0
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
    Left = 3960
    Top = 120
    Width = 840
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
  Begin VB.Label Label4
    Caption = "Fecha de Vencimiento:"
    Left = 165
    Top = 720
    Width = 2445
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

Attribute VB_Name = "frmAforosVarios"


Private Sub Form_Load() 'BB3314
  'Data Table: 50C14C
  loc_BB2C8C: LitVar_Missing var_94
  loc_BB2C8F: PopAdLdVar
  loc_BB2C90: LitStr "Inmueble"
  loc_BB2C93: FLdPr Me
  loc_BB2C96: VCallAd Control_ID_OficinaCbo
  loc_BB2C99: FStAdFunc var_98
  loc_BB2C9C: FLdPr var_98
  loc_BB2C9F: Me.AddItem from_stack_1, from_stack_2
  loc_BB2CA4: FFree1Ad var_98
  loc_BB2CA7: LitVar_Missing var_94
  loc_BB2CAA: PopAdLdVar
  loc_BB2CAB: LitStr "Comercio"
  loc_BB2CAE: FLdPr Me
  loc_BB2CB1: VCallAd Control_ID_OficinaCbo
  loc_BB2CB4: FStAdFunc var_98
  loc_BB2CB7: FLdPr var_98
  loc_BB2CBA: Me.AddItem from_stack_1, from_stack_2
  loc_BB2CBF: FFree1Ad var_98
  loc_BB2CC2: LitVar_Missing var_94
  loc_BB2CC5: PopAdLdVar
  loc_BB2CC6: LitStr "Deudores Varios"
  loc_BB2CC9: FLdPr Me
  loc_BB2CCC: VCallAd Control_ID_OficinaCbo
  loc_BB2CCF: FStAdFunc var_98
  loc_BB2CD2: FLdPr var_98
  loc_BB2CD5: Me.AddItem from_stack_1, from_stack_2
  loc_BB2CDA: FFree1Ad var_98
  loc_BB2CDD: LitVar_Missing var_94
  loc_BB2CE0: PopAdLdVar
  loc_BB2CE1: LitStr "Cementerio"
  loc_BB2CE4: FLdPr Me
  loc_BB2CE7: VCallAd Control_ID_OficinaCbo
  loc_BB2CEA: FStAdFunc var_98
  loc_BB2CED: FLdPr var_98
  loc_BB2CF0: Me.AddItem from_stack_1, from_stack_2
  loc_BB2CF5: FFree1Ad var_98
  loc_BB2CF8: LitVar_Missing var_94
  loc_BB2CFB: PopAdLdVar
  loc_BB2CFC: LitStr "Transito"
  loc_BB2CFF: FLdPr Me
  loc_BB2D02: VCallAd Control_ID_OficinaCbo
  loc_BB2D05: FStAdFunc var_98
  loc_BB2D08: FLdPr var_98
  loc_BB2D0B: Me.AddItem from_stack_1, from_stack_2
  loc_BB2D10: FFree1Ad var_98
  loc_BB2D13: LitVar_Missing var_94
  loc_BB2D16: PopAdLdVar
  loc_BB2D17: LitStr "Publicidad"
  loc_BB2D1A: FLdPr Me
  loc_BB2D1D: VCallAd Control_ID_OficinaCbo
  loc_BB2D20: FStAdFunc var_98
  loc_BB2D23: FLdPr var_98
  loc_BB2D26: Me.AddItem from_stack_1, from_stack_2
  loc_BB2D2B: FFree1Ad var_98
  loc_BB2D2E: LitVar_Missing var_94
  loc_BB2D31: PopAdLdVar
  loc_BB2D32: LitStr "Antena"
  loc_BB2D35: FLdPr Me
  loc_BB2D38: VCallAd Control_ID_OficinaCbo
  loc_BB2D3B: FStAdFunc var_98
  loc_BB2D3E: FLdPr var_98
  loc_BB2D41: Me.AddItem from_stack_1, from_stack_2
  loc_BB2D46: FFree1Ad var_98
  loc_BB2D49: LitI2_Byte 0
  loc_BB2D4B: FLdPr Me
  loc_BB2D4E: VCallAd Control_ID_OficinaCbo
  loc_BB2D51: FStAdFunc var_98
  loc_BB2D54: FLdPr var_98
  loc_BB2D57: Me.ListIndex = from_stack_1
  loc_BB2D5C: FFree1Ad var_98
  loc_BB2D5F: LitStr "0"
  loc_BB2D62: FLdPr Me
  loc_BB2D65: VCallAd Control_ID_NumeCtaTxt
  loc_BB2D68: FStAdFunc var_98
  loc_BB2D6B: FLdPr var_98
  loc_BB2D6E: Me.Text = from_stack_1
  loc_BB2D73: FFree1Ad var_98
  loc_BB2D76: LitI2_Byte 0
  loc_BB2D78: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB2D7D: CStrDate
  loc_BB2D7F: CVarStr var_A8
  loc_BB2D82: PopAdLdVar
  loc_BB2D83: FLdPr Me
  loc_BB2D86: VCallAd Control_ID_FechVencMsk
  loc_BB2D89: FStAdFunc var_98
  loc_BB2D8C: FLdPr var_98
  loc_BB2D8F: LateIdSt
  loc_BB2D94: FFree1Ad var_98
  loc_BB2D97: FFree1Var var_A8 = ""
  loc_BB2D9A: LitI2_Byte 0
  loc_BB2D9C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB2DA1: CStrDate
  loc_BB2DA3: CVarStr var_A8
  loc_BB2DA6: PopAdLdVar
  loc_BB2DA7: FLdPr Me
  loc_BB2DAA: VCallAd Control_ID_FeveCtctMsk
  loc_BB2DAD: FStAdFunc var_98
  loc_BB2DB0: FLdPr var_98
  loc_BB2DB3: LateIdSt
  loc_BB2DB8: FFree1Ad var_98
  loc_BB2DBB: FFree1Var var_A8 = ""
  loc_BB2DBE: LitI2_Byte 0
  loc_BB2DC0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB2DC5: CVarDate var_A8
  loc_BB2DC9: FLdRfVar var_B8
  loc_BB2DCC: ImpAdCallFPR4  = Year()
  loc_BB2DD1: FLdRfVar var_B8
  loc_BB2DD4: CStrVarVal var_BC
  loc_BB2DD8: FLdPr Me
  loc_BB2DDB: VCallAd Control_ID_PeriCtctTxt
  loc_BB2DDE: FStAdFunc var_98
  loc_BB2DE1: FLdPr var_98
  loc_BB2DE4: Me.Text = from_stack_1
  loc_BB2DE9: FFree1Str var_BC
  loc_BB2DEC: FFree1Ad var_98
  loc_BB2DEF: FFreeVar var_A8 = ""
  loc_BB2DF6: LitI2_Byte 0
  loc_BB2DF8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB2DFD: CVarDate var_A8
  loc_BB2E01: FLdRfVar var_B8
  loc_BB2E04: ImpAdCallFPR4  = Month()
  loc_BB2E09: FLdRfVar var_B8
  loc_BB2E0C: CStrVarVal var_BC
  loc_BB2E10: FLdPr Me
  loc_BB2E13: VCallAd Control_ID_BimeCtct
  loc_BB2E16: FStAdFunc var_98
  loc_BB2E19: FLdPr var_98
  loc_BB2E1C: Me.Text = from_stack_1
  loc_BB2E21: FFree1Str var_BC
  loc_BB2E24: FFree1Ad var_98
  loc_BB2E27: FFreeVar var_A8 = ""
  loc_BB2E2E: LitI4 1
  loc_BB2E33: LitI4 1
  loc_BB2E38: LitVarStr var_CC, "0.00"
  loc_BB2E3D: FStVarCopyObj var_B8
  loc_BB2E40: FLdRfVar var_B8
  loc_BB2E43: LitVarI2 var_A8, 0
  loc_BB2E48: FLdRfVar var_DC
  loc_BB2E4B: ImpAdCallFPR4  = Format(, )
  loc_BB2E50: FLdRfVar var_DC
  loc_BB2E53: CStrVarVal var_BC
  loc_BB2E57: FLdPr Me
  loc_BB2E5A: VCallAd Control_ID_ImpoCtctTxt
  loc_BB2E5D: FStAdFunc var_98
  loc_BB2E60: FLdPr var_98
  loc_BB2E63: Me.Text = from_stack_1
  loc_BB2E68: FFree1Str var_BC
  loc_BB2E6B: FFree1Ad var_98
  loc_BB2E6E: FFreeVar var_A8 = "": var_B8 = ""
  loc_BB2E77: LitI2_Byte &HFF
  loc_BB2E79: FLdPr Me
  loc_BB2E7C: VCallAd Control_ID_OptMensual
  loc_BB2E7F: FStAdFunc var_98
  loc_BB2E82: FLdPr var_98
  loc_BB2E85: Me.Value = from_stack_1b
  loc_BB2E8A: FFree1Ad var_98
  loc_BB2E8D: LitI2_Byte 0
  loc_BB2E8F: FLdPr Me
  loc_BB2E92: VCallAd Control_ID_OptBimestral
  loc_BB2E95: FStAdFunc var_98
  loc_BB2E98: FLdPr var_98
  loc_BB2E9B: Me.Value = from_stack_1b
  loc_BB2EA0: FFree1Ad var_98
  loc_BB2EA3: LitI2_Byte 1
  loc_BB2EA5: CStrUI1
  loc_BB2EA7: CVarStr var_A8
  loc_BB2EAA: PopAdLdVar
  loc_BB2EAB: FLdPr Me
  loc_BB2EAE: VCallAd Control_ID_CantCtctMsk
  loc_BB2EB1: FStAdFunc var_98
  loc_BB2EB4: FLdPr var_98
  loc_BB2EB7: LateIdSt
  loc_BB2EBC: FFree1Ad var_98
  loc_BB2EBF: FFree1Var var_A8 = ""
  loc_BB2EC2: FLdPr Me
  loc_BB2EC5: VCallAd Control_ID_ctacteFlex
  loc_BB2EC8: FStAdFunc var_E0
  loc_BB2ECB: LitVarI4
  loc_BB2ED3: PopAdLdVar
  loc_BB2ED4: LitVarI4
  loc_BB2EDC: PopAdLdVar
  loc_BB2EDD: FLdPr var_E0
  loc_BB2EE0: LateIdCallSt
  loc_BB2EE8: LitVarI4
  loc_BB2EF0: PopAdLdVar
  loc_BB2EF1: LitVarI4
  loc_BB2EF9: PopAdLdVar
  loc_BB2EFA: FLdPr var_E0
  loc_BB2EFD: LateIdCallSt
  loc_BB2F05: LitVarI4
  loc_BB2F0D: PopAdLdVar
  loc_BB2F0E: LitVarI4
  loc_BB2F16: PopAdLdVar
  loc_BB2F17: FLdPr var_E0
  loc_BB2F1A: LateIdCallSt
  loc_BB2F22: LitVarI4
  loc_BB2F2A: PopAdLdVar
  loc_BB2F2B: LitVarI4
  loc_BB2F33: PopAdLdVar
  loc_BB2F34: FLdPr var_E0
  loc_BB2F37: LateIdCallSt
  loc_BB2F3F: LitVarI4
  loc_BB2F47: PopAdLdVar
  loc_BB2F48: LitVarI4
  loc_BB2F50: PopAdLdVar
  loc_BB2F51: FLdPr var_E0
  loc_BB2F54: LateIdCallSt
  loc_BB2F5C: LitVarI4
  loc_BB2F64: PopAdLdVar
  loc_BB2F65: LitVarI4
  loc_BB2F6D: PopAdLdVar
  loc_BB2F6E: FLdPr var_E0
  loc_BB2F71: LateIdCallSt
  loc_BB2F79: LitVarI4
  loc_BB2F81: PopAdLdVar
  loc_BB2F82: LitVarI4
  loc_BB2F8A: PopAdLdVar
  loc_BB2F8B: FLdPr var_E0
  loc_BB2F8E: LateIdCallSt
  loc_BB2F96: LitVarI4
  loc_BB2F9E: PopAdLdVar
  loc_BB2F9F: LitVarI4
  loc_BB2FA7: PopAdLdVar
  loc_BB2FA8: FLdPr var_E0
  loc_BB2FAB: LateIdCallSt
  loc_BB2FB3: LitVarI4
  loc_BB2FBB: PopAdLdVar
  loc_BB2FBC: LitVarI4
  loc_BB2FC4: PopAdLdVar
  loc_BB2FC5: FLdPr var_E0
  loc_BB2FC8: LateIdCallSt
  loc_BB2FD0: LitVarI4
  loc_BB2FD8: PopAdLdVar
  loc_BB2FD9: LitVarI4
  loc_BB2FE1: PopAdLdVar
  loc_BB2FE2: FLdPr var_E0
  loc_BB2FE5: LateIdCallSt
  loc_BB2FED: LitVarI4
  loc_BB2FF5: PopAdLdVar
  loc_BB2FF6: LitVarI4
  loc_BB2FFE: PopAdLdVar
  loc_BB2FFF: FLdPr var_E0
  loc_BB3002: LateIdCallSt
  loc_BB300A: LitVarI4
  loc_BB3012: PopAdLdVar
  loc_BB3013: LitVarI4
  loc_BB301B: PopAdLdVar
  loc_BB301C: FLdPr var_E0
  loc_BB301F: LateIdCallSt
  loc_BB3027: LitVarI4
  loc_BB302F: PopAdLdVar
  loc_BB3030: LitVarI4
  loc_BB3038: PopAdLdVar
  loc_BB3039: FLdPr var_E0
  loc_BB303C: LateIdCallSt
  loc_BB3044: LitVarI4
  loc_BB304C: PopAdLdVar
  loc_BB304D: LitVarI4
  loc_BB3055: PopAdLdVar
  loc_BB3056: FLdPr var_E0
  loc_BB3059: LateIdCallSt
  loc_BB3061: LitVarI4
  loc_BB3069: PopAdLdVar
  loc_BB306A: LitVarI4
  loc_BB3072: PopAdLdVar
  loc_BB3073: FLdPr var_E0
  loc_BB3076: LateIdCallSt
  loc_BB307E: LitVarI4
  loc_BB3086: PopAdLdVar
  loc_BB3087: LitVarI4
  loc_BB308F: PopAdLdVar
  loc_BB3090: FLdPr var_E0
  loc_BB3093: LateIdCallSt
  loc_BB309B: LitVarI4
  loc_BB30A3: PopAdLdVar
  loc_BB30A4: LitVarI4
  loc_BB30AC: PopAdLdVar
  loc_BB30AD: FLdPr var_E0
  loc_BB30B0: LateIdCallSt
  loc_BB30B8: LitVarI4
  loc_BB30C0: PopAdLdVar
  loc_BB30C1: LitVarI4
  loc_BB30C9: PopAdLdVar
  loc_BB30CA: LitVarStr var_110, "Of"
  loc_BB30CF: PopAdLdVar
  loc_BB30D0: FLdPr var_E0
  loc_BB30D3: LateIdCallSt
  loc_BB30DB: LitVarI4
  loc_BB30E3: PopAdLdVar
  loc_BB30E4: LitVarI4
  loc_BB30EC: PopAdLdVar
  loc_BB30ED: LitVarStr var_110, "Cuenta"
  loc_BB30F2: PopAdLdVar
  loc_BB30F3: FLdPr var_E0
  loc_BB30F6: LateIdCallSt
  loc_BB30FE: LitVarI4
  loc_BB3106: PopAdLdVar
  loc_BB3107: LitVarI4
  loc_BB310F: PopAdLdVar
  loc_BB3110: LitVarStr var_110, "Periodo"
  loc_BB3115: PopAdLdVar
  loc_BB3116: FLdPr var_E0
  loc_BB3119: LateIdCallSt
  loc_BB3121: LitVarI4
  loc_BB3129: PopAdLdVar
  loc_BB312A: LitVarI4
  loc_BB3132: PopAdLdVar
  loc_BB3133: LitVarStr var_110, "Boleto"
  loc_BB3138: PopAdLdVar
  loc_BB3139: FLdPr var_E0
  loc_BB313C: LateIdCallSt
  loc_BB3144: LitVarI4
  loc_BB314C: PopAdLdVar
  loc_BB314D: LitVarI4
  loc_BB3155: PopAdLdVar
  loc_BB3156: LitVarStr var_110, "Emision"
  loc_BB315B: PopAdLdVar
  loc_BB315C: FLdPr var_E0
  loc_BB315F: LateIdCallSt
  loc_BB3167: LitVarI4
  loc_BB316F: PopAdLdVar
  loc_BB3170: LitVarI4
  loc_BB3178: PopAdLdVar
  loc_BB3179: LitVarStr var_110, "Vencimiento"
  loc_BB317E: PopAdLdVar
  loc_BB317F: FLdPr var_E0
  loc_BB3182: LateIdCallSt
  loc_BB318A: LitVarI4
  loc_BB3192: PopAdLdVar
  loc_BB3193: LitVarI4
  loc_BB319B: PopAdLdVar
  loc_BB319C: LitVarStr var_110, "Concepto"
  loc_BB31A1: PopAdLdVar
  loc_BB31A2: FLdPr var_E0
  loc_BB31A5: LateIdCallSt
  loc_BB31AD: LitVarI4
  loc_BB31B5: PopAdLdVar
  loc_BB31B6: LitVarI4
  loc_BB31BE: PopAdLdVar
  loc_BB31BF: LitVarStr var_110, "Facilidad"
  loc_BB31C4: PopAdLdVar
  loc_BB31C5: FLdPr var_E0
  loc_BB31C8: LateIdCallSt
  loc_BB31D0: LitVarI4
  loc_BB31D8: PopAdLdVar
  loc_BB31D9: LitVarI4
  loc_BB31E1: PopAdLdVar
  loc_BB31E2: LitVarStr var_110, "Apremio"
  loc_BB31E7: PopAdLdVar
  loc_BB31E8: FLdPr var_E0
  loc_BB31EB: LateIdCallSt
  loc_BB31F3: LitVarI4
  loc_BB31FB: PopAdLdVar
  loc_BB31FC: LitVarI4
  loc_BB3204: PopAdLdVar
  loc_BB3205: LitVarStr var_110, "Exp/Comp"
  loc_BB320A: PopAdLdVar
  loc_BB320B: FLdPr var_E0
  loc_BB320E: LateIdCallSt
  loc_BB3216: LitVarI4
  loc_BB321E: PopAdLdVar
  loc_BB321F: LitVarI4
  loc_BB3227: PopAdLdVar
  loc_BB3228: LitVarStr var_110, "Tipo Movi."
  loc_BB322D: PopAdLdVar
  loc_BB322E: FLdPr var_E0
  loc_BB3231: LateIdCallSt
  loc_BB3239: LitVarI4
  loc_BB3241: PopAdLdVar
  loc_BB3242: LitVarI4
  loc_BB324A: PopAdLdVar
  loc_BB324B: LitVarStr var_110, "Debito"
  loc_BB3250: PopAdLdVar
  loc_BB3251: FLdPr var_E0
  loc_BB3254: LateIdCallSt
  loc_BB325C: LitVarI4
  loc_BB3264: PopAdLdVar
  loc_BB3265: LitVarI4
  loc_BB326D: PopAdLdVar
  loc_BB326E: LitVarStr var_110, "Recargo"
  loc_BB3273: PopAdLdVar
  loc_BB3274: FLdPr var_E0
  loc_BB3277: LateIdCallSt
  loc_BB327F: LitVarI4
  loc_BB3287: PopAdLdVar
  loc_BB3288: LitVarI4
  loc_BB3290: PopAdLdVar
  loc_BB3291: LitVarStr var_110, "Saldo"
  loc_BB3296: PopAdLdVar
  loc_BB3297: FLdPr var_E0
  loc_BB329A: LateIdCallSt
  loc_BB32A2: LitVarI4
  loc_BB32AA: PopAdLdVar
  loc_BB32AB: LitVarI4
  loc_BB32B3: PopAdLdVar
  loc_BB32B4: LitVarStr var_110, "Sel"
  loc_BB32B9: PopAdLdVar
  loc_BB32BA: FLdPr var_E0
  loc_BB32BD: LateIdCallSt
  loc_BB32C5: LitVarI4
  loc_BB32CD: PopAdLdVar
  loc_BB32CE: LitVarI4
  loc_BB32D6: PopAdLdVar
  loc_BB32D7: LitVarStr var_110, "Numero"
  loc_BB32DC: PopAdLdVar
  loc_BB32DD: FLdPr var_E0
  loc_BB32E0: LateIdCallSt
  loc_BB32E8: LitVarI4
  loc_BB32F0: PopAdLdVar
  loc_BB32F1: LitVarI4
  loc_BB32F9: PopAdLdVar
  loc_BB32FA: LitVarStr var_110, "Mov"
  loc_BB32FF: PopAdLdVar
  loc_BB3300: FLdPr var_E0
  loc_BB3303: LateIdCallSt
  loc_BB330B: LitNothing
  loc_BB330D: FStAd var_E0 
  loc_BB3311: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA618
  'Data Table: 50C14C
  loc_9BA604: ILdI2 KeyCode
  loc_9BA607: CI4UI1
  loc_9BA608: LitI4 &H78
  loc_9BA60D: EqI4
  loc_9BA60E: BranchF loc_9BA616
  loc_9BA611: Call SalirCmd_Click()
  loc_9BA616: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9C8000
  'Data Table: 50C14C
  loc_9C7FEC: FLdPr Me
  loc_9C7FEF: VCallAd Control_ID_FeveCtctMsk
  loc_9C7FF2: CVarAd
  loc_9C7FF6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7FFB: FFree1Var var_94 = ""
  loc_9C7FFE: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_8 'ABD89C
  'Data Table: 50C14C
  loc_ABD7A4: FLdPr Me
  loc_ABD7A7: VCallAd Control_ID_FeveCtctMsk
  loc_ABD7AA: FStAdFunc var_88
  loc_ABD7AD: FLdPr var_88
  loc_ABD7B0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABD7B7: CBoolVar
  loc_ABD7B9: LitI2_Byte &HFF
  loc_ABD7BB: EqI2
  loc_ABD7BC: FFree1Ad var_88
  loc_ABD7BF: FFree1Var var_98 = ""
  loc_ABD7C2: BranchF loc_ABD89A
  loc_ABD7C5: LitVarStr var_A8, vbNullString
  loc_ABD7CA: PopAdLdVar
  loc_ABD7CB: FLdPr Me
  loc_ABD7CE: VCallAd Control_ID_FeveCtctMsk
  loc_ABD7D1: FStAdFunc var_88
  loc_ABD7D4: FLdPr var_88
  loc_ABD7D7: LateIdSt
  loc_ABD7DC: FFree1Ad var_88
  loc_ABD7DF: FLdPr Me
  loc_ABD7E2: VCallAd Control_ID_FeveCtctMsk
  loc_ABD7E5: FStAdFunc var_88
  loc_ABD7E8: FLdPr var_88
  loc_ABD7EB: LateIdLdVar var_98 DispID_22 0
  loc_ABD7F2: CStrVarTmp
  loc_ABD7F3: FStStrNoPop var_BC
  loc_ABD7F6: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABD7FB: FStStrNoPop var_C0
  loc_ABD7FE: FLdPr Me
  loc_ABD801: MemStStrCopy
  loc_ABD805: FFreeStr var_BC = ""
  loc_ABD80C: FFree1Ad var_88
  loc_ABD80F: FFree1Var var_98 = ""
  loc_ABD812: LitVarStr var_A8, "##/##/####"
  loc_ABD817: PopAdLdVar
  loc_ABD818: FLdPr Me
  loc_ABD81B: VCallAd Control_ID_FeveCtctMsk
  loc_ABD81E: FStAdFunc var_88
  loc_ABD821: FLdPr var_88
  loc_ABD824: LateIdSt
  loc_ABD829: FFree1Ad var_88
  loc_ABD82C: LitVarI2 var_A8, 10
  loc_ABD831: PopAdLdVar
  loc_ABD832: FLdPr Me
  loc_ABD835: VCallAd Control_ID_FeveCtctMsk
  loc_ABD838: FStAdFunc var_88
  loc_ABD83B: FLdPr var_88
  loc_ABD83E: LateIdSt
  loc_ABD843: FFree1Ad var_88
  loc_ABD846: FLdPr Me
  loc_ABD849: MemLdStr global_60
  loc_ABD84C: LitStr vbNullString
  loc_ABD84F: NeStr
  loc_ABD851: BranchF loc_ABD89A
  loc_ABD854: FLdPr Me
  loc_ABD857: MemLdStr global_60
  loc_ABD85A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD85F: LitI2_Byte 0
  loc_ABD861: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABD866: CStrDate
  loc_ABD868: CVarStr var_98
  loc_ABD86B: PopAdLdVar
  loc_ABD86C: FLdPr Me
  loc_ABD86F: VCallAd Control_ID_FeveCtctMsk
  loc_ABD872: FStAdFunc var_88
  loc_ABD875: FLdPr var_88
  loc_ABD878: LateIdSt
  loc_ABD87D: FFree1Ad var_88
  loc_ABD880: FFree1Var var_98 = ""
  loc_ABD883: FLdPr Me
  loc_ABD886: VCallAd Control_ID_FeveCtctMsk
  loc_ABD889: CVarAd
  loc_ABD88D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD892: FFree1Var var_98 = ""
  loc_ABD895: LitI2_Byte &HFF
  loc_ABD897: IStI2 KeyCode
  loc_ABD89A: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C7B38
  'Data Table: 50C14C
  loc_9C7B24: FLdPr Me
  loc_9C7B27: VCallAd Control_ID_FechVencMsk
  loc_9C7B2A: CVarAd
  loc_9C7B2E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7B33: FFree1Var var_94 = ""
  loc_9C7B36: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_8 'ABDEB4
  'Data Table: 50C14C
  loc_ABDDBC: FLdPr Me
  loc_ABDDBF: VCallAd Control_ID_FechVencMsk
  loc_ABDDC2: FStAdFunc var_88
  loc_ABDDC5: FLdPr var_88
  loc_ABDDC8: LateIdLdVar var_98 DispID_13 -32767
  loc_ABDDCF: CBoolVar
  loc_ABDDD1: LitI2_Byte &HFF
  loc_ABDDD3: EqI2
  loc_ABDDD4: FFree1Ad var_88
  loc_ABDDD7: FFree1Var var_98 = ""
  loc_ABDDDA: BranchF loc_ABDEB2
  loc_ABDDDD: LitVarStr var_A8, vbNullString
  loc_ABDDE2: PopAdLdVar
  loc_ABDDE3: FLdPr Me
  loc_ABDDE6: VCallAd Control_ID_FechVencMsk
  loc_ABDDE9: FStAdFunc var_88
  loc_ABDDEC: FLdPr var_88
  loc_ABDDEF: LateIdSt
  loc_ABDDF4: FFree1Ad var_88
  loc_ABDDF7: FLdPr Me
  loc_ABDDFA: VCallAd Control_ID_FechVencMsk
  loc_ABDDFD: FStAdFunc var_88
  loc_ABDE00: FLdPr var_88
  loc_ABDE03: LateIdLdVar var_98 DispID_22 0
  loc_ABDE0A: CStrVarTmp
  loc_ABDE0B: FStStrNoPop var_BC
  loc_ABDE0E: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABDE13: FStStrNoPop var_C0
  loc_ABDE16: FLdPr Me
  loc_ABDE19: MemStStrCopy
  loc_ABDE1D: FFreeStr var_BC = ""
  loc_ABDE24: FFree1Ad var_88
  loc_ABDE27: FFree1Var var_98 = ""
  loc_ABDE2A: LitVarStr var_A8, "##/##/####"
  loc_ABDE2F: PopAdLdVar
  loc_ABDE30: FLdPr Me
  loc_ABDE33: VCallAd Control_ID_FechVencMsk
  loc_ABDE36: FStAdFunc var_88
  loc_ABDE39: FLdPr var_88
  loc_ABDE3C: LateIdSt
  loc_ABDE41: FFree1Ad var_88
  loc_ABDE44: LitVarI2 var_A8, 10
  loc_ABDE49: PopAdLdVar
  loc_ABDE4A: FLdPr Me
  loc_ABDE4D: VCallAd Control_ID_FechVencMsk
  loc_ABDE50: FStAdFunc var_88
  loc_ABDE53: FLdPr var_88
  loc_ABDE56: LateIdSt
  loc_ABDE5B: FFree1Ad var_88
  loc_ABDE5E: FLdPr Me
  loc_ABDE61: MemLdStr global_60
  loc_ABDE64: LitStr vbNullString
  loc_ABDE67: NeStr
  loc_ABDE69: BranchF loc_ABDEB2
  loc_ABDE6C: FLdPr Me
  loc_ABDE6F: MemLdStr global_60
  loc_ABDE72: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABDE77: LitI2_Byte 0
  loc_ABDE79: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABDE7E: CStrDate
  loc_ABDE80: CVarStr var_98
  loc_ABDE83: PopAdLdVar
  loc_ABDE84: FLdPr Me
  loc_ABDE87: VCallAd Control_ID_FechVencMsk
  loc_ABDE8A: FStAdFunc var_88
  loc_ABDE8D: FLdPr var_88
  loc_ABDE90: LateIdSt
  loc_ABDE95: FFree1Ad var_88
  loc_ABDE98: FFree1Var var_98 = ""
  loc_ABDE9B: FLdPr Me
  loc_ABDE9E: VCallAd Control_ID_FechVencMsk
  loc_ABDEA1: CVarAd
  loc_ABDEA5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABDEAA: FFree1Var var_98 = ""
  loc_ABDEAD: LitI2_Byte &HFF
  loc_ABDEAF: IStI2 KeyCode
  loc_ABDEB2: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_GotFocus() '9C7EE0
  'Data Table: 50C14C
  loc_9C7ECC: FLdPr Me
  loc_9C7ECF: VCallAd Control_ID_ImpoCtctTxt
  loc_9C7ED2: CVarAd
  loc_9C7ED6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7EDB: FFree1Var var_94 = ""
  loc_9C7EDE: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A07988
  'Data Table: 50C14C
  loc_A07954: LitStr "1234567890,."
  loc_A07957: FStStrCopy var_88
  loc_A0795A: FLdRfVar var_88
  loc_A0795D: ILdRf KeyAscii
  loc_A07960: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07965: IStI2 KeyAscii
  loc_A07968: FFree1Str var_88
  loc_A0796B: ILdI2 KeyAscii
  loc_A0796E: LitStr "."
  loc_A07971: ImpAdCallI2 Asc()
  loc_A07976: EqI2
  loc_A07977: BranchF loc_A07985
  loc_A0797A: LitStr ","
  loc_A0797D: ImpAdCallI2 Asc()
  loc_A07982: IStI2 KeyAscii
  loc_A07985: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_LostFocus() 'A756A8
  'Data Table: 50C14C
  loc_A75644: FLdRfVar var_8C
  loc_A75647: FLdPr Me
  loc_A7564A: VCallAd Control_ID_ImpoCtctTxt
  loc_A7564D: FStAdFunc var_88
  loc_A75650: FLdPr var_88
  loc_A75653:  = Me.Text
  loc_A75658: LitI4 1
  loc_A7565D: LitI4 1
  loc_A75662: LitVarStr var_AC, "0.00"
  loc_A75667: FStVarCopyObj var_BC
  loc_A7566A: FLdRfVar var_BC
  loc_A7566D: FLdZeroAd var_8C
  loc_A75670: CVarStr var_9C
  loc_A75673: FLdRfVar var_CC
  loc_A75676: ImpAdCallFPR4  = Format(, )
  loc_A7567B: FLdRfVar var_CC
  loc_A7567E: CStrVarVal var_D0
  loc_A75682: FLdPr Me
  loc_A75685: VCallAd Control_ID_ImpoCtctTxt
  loc_A75688: FStAdFunc var_D4
  loc_A7568B: FLdPr var_D4
  loc_A7568E: Me.Text = from_stack_1
  loc_A75693: FFree1Str var_D0
  loc_A75696: FFreeAd var_88 = ""
  loc_A7569D: FFreeVar var_9C = "": var_BC = ""
  loc_A756A6: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'A69648
  'Data Table: 50C14C
  loc_A695E0: FLdRfVar var_8C
  loc_A695E3: FLdPr Me
  loc_A695E6: VCallAd Control_ID_ImpoCtctTxt
  loc_A695E9: FStAdFunc var_88
  loc_A695EC: FLdPr var_88
  loc_A695EF:  = Me.Text
  loc_A695F4: LitI2_Byte 0
  loc_A695F6: LitI2_Byte 0
  loc_A695F8: ILdRf var_8C
  loc_A695FB: LitStr "el importe"
  loc_A695FE: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A69603: FStStrNoPop var_90
  loc_A69606: FLdPr Me
  loc_A69609: MemStStrCopy
  loc_A6960D: FFreeStr var_8C = ""
  loc_A69614: FFree1Ad var_88
  loc_A69617: FLdPr Me
  loc_A6961A: MemLdStr global_60
  loc_A6961D: LitStr vbNullString
  loc_A69620: NeStr
  loc_A69622: BranchF loc_A69647
  loc_A69625: FLdPr Me
  loc_A69628: MemLdStr global_60
  loc_A6962B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A69630: FLdPr Me
  loc_A69633: VCallAd Control_ID_ImpoCtctTxt
  loc_A69636: CVarAd
  loc_A6963A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A6963F: FFree1Var var_A0 = ""
  loc_A69642: LitI2_Byte &HFF
  loc_A69644: IStI2 Cancel
  loc_A69647: ExitProcHresult
End Sub

Private Sub BimeCtct_GotFocus() '9C5CD8
  'Data Table: 50C14C
  loc_9C5CC4: FLdPr Me
  loc_9C5CC7: VCallAd Control_ID_BimeCtct
  loc_9C5CCA: CVarAd
  loc_9C5CCE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C5CD3: FFree1Var var_94 = ""
  loc_9C5CD6: ExitProcHresult
End Sub

Private Sub BimeCtct_KeyPress(KeyAscii As Integer) '9DA2E4
  'Data Table: 50C14C
  loc_9DA2CC: LitStr "1234567890"
  loc_9DA2CF: FStStrCopy var_88
  loc_9DA2D2: FLdRfVar var_88
  loc_9DA2D5: ILdRf KeyAscii
  loc_9DA2D8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA2DD: IStI2 KeyAscii
  loc_9DA2E0: FFree1Str var_88
  loc_9DA2E3: ExitProcHresult
End Sub

Private Sub BimeCtct_Validate(Cancel As Boolean) 'A81924
  'Data Table: 50C14C
  loc_A8189C: FLdRfVar var_8A
  loc_A8189F: FLdPr Me
  loc_A818A2: VCallAd Control_ID_BimeCtct
  loc_A818A5: FStAdFunc var_88
  loc_A818A8: FLdPr var_88
  loc_A818AB:  = Me.Enabled
  loc_A818B0: FLdI2 var_8A
  loc_A818B3: FFree1Ad var_88
  loc_A818B6: BranchF loc_A81921
  loc_A818B9: FLdRfVar var_90
  loc_A818BC: FLdPr Me
  loc_A818BF: VCallAd Control_ID_BimeCtct
  loc_A818C2: FStAdFunc var_88
  loc_A818C5: FLdPr var_88
  loc_A818C8:  = Me.Text
  loc_A818CD: LitI2_Byte 0
  loc_A818CF: LitI2_Byte 0
  loc_A818D1: ILdRf var_90
  loc_A818D4: LitStr "bimestre"
  loc_A818D7: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A818DC: FStStrNoPop var_94
  loc_A818DF: FLdPr Me
  loc_A818E2: MemStStrCopy
  loc_A818E6: FFreeStr var_90 = ""
  loc_A818ED: FFree1Ad var_88
  loc_A818F0: FLdPr Me
  loc_A818F3: MemLdStr global_60
  loc_A818F6: LitStr vbNullString
  loc_A818F9: NeStr
  loc_A818FB: BranchF loc_A81921
  loc_A818FE: FLdPr Me
  loc_A81901: MemLdStr global_60
  loc_A81904: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A81909: FLdPr Me
  loc_A8190C: VCallAd Control_ID_BimeCtct
  loc_A8190F: CVarAd
  loc_A81913: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A81918: FFree1Var var_A4 = ""
  loc_A8191B: LitI2_Byte &HFF
  loc_A8191D: IStI2 Cancel
  loc_A81920: ExitProcHresult
  loc_A81921: ExitProcHresult
  loc_A81922: Ary1LdPr
End Sub

Private Sub SalirCmd_Click() '9DA7F0
  'Data Table: 50C14C
  loc_9DA7D8: ILdRf Me
  loc_9DA7DB: FStAdNoPop
  loc_9DA7DF: ImpAdLdRf MemVar_D9C5D8
  loc_9DA7E2: NewIfNullPr Global
  loc_9DA7E5: Global.Unload from_stack_1
  loc_9DA7EA: FFree1Ad var_88
  loc_9DA7ED: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C446E8
  'Data Table: 50C14C
  loc_C43B10: Call Proc_354_32_B180A8()
  loc_C43B15: LitVarStr var_F4, vbNullString
  loc_C43B1A: PopAdLdVar
  loc_C43B1B: FLdPr Me
  loc_C43B1E: VCallAd Control_ID_FechVencMsk
  loc_C43B21: FStAdFunc var_108
  loc_C43B24: FLdPr var_108
  loc_C43B27: LateIdSt
  loc_C43B2C: FFree1Ad var_108
  loc_C43B2F: FLdRfVar var_10A
  loc_C43B32: FLdPr Me
  loc_C43B35: VCallAd Control_ID_OficinaCbo
  loc_C43B38: FStAdFunc var_108
  loc_C43B3B: FLdPr var_108
  loc_C43B3E:  = Me.ListIndex
  loc_C43B43: FLdI2 var_10A
  loc_C43B46: FStI2 var_10C
  loc_C43B49: FFree1Ad var_108
  loc_C43B4C: FLdI2 var_10C
  loc_C43B4F: LitI2_Byte 0
  loc_C43B51: EqI2
  loc_C43B52: BranchF loc_C43B60
  loc_C43B55: LitI2_Byte 1
  loc_C43B57: CUI1I2
  loc_C43B59: ImpAdStUI1 MemVar_D93038
  loc_C43B5D: Branch loc_C43BD5
  loc_C43B60: FLdI2 var_10C
  loc_C43B63: LitI2_Byte 1
  loc_C43B65: EqI2
  loc_C43B66: BranchF loc_C43B74
  loc_C43B69: LitI2_Byte 2
  loc_C43B6B: CUI1I2
  loc_C43B6D: ImpAdStUI1 MemVar_D93038
  loc_C43B71: Branch loc_C43BD5
  loc_C43B74: FLdI2 var_10C
  loc_C43B77: LitI2_Byte 2
  loc_C43B79: EqI2
  loc_C43B7A: BranchF loc_C43B88
  loc_C43B7D: LitI2_Byte 3
  loc_C43B7F: CUI1I2
  loc_C43B81: ImpAdStUI1 MemVar_D93038
  loc_C43B85: Branch loc_C43BD5
  loc_C43B88: FLdI2 var_10C
  loc_C43B8B: LitI2_Byte 3
  loc_C43B8D: EqI2
  loc_C43B8E: BranchF loc_C43B9C
  loc_C43B91: LitI2_Byte 4
  loc_C43B93: CUI1I2
  loc_C43B95: ImpAdStUI1 MemVar_D93038
  loc_C43B99: Branch loc_C43BD5
  loc_C43B9C: FLdI2 var_10C
  loc_C43B9F: LitI2_Byte 4
  loc_C43BA1: EqI2
  loc_C43BA2: BranchF loc_C43BB0
  loc_C43BA5: LitI2_Byte 5
  loc_C43BA7: CUI1I2
  loc_C43BA9: ImpAdStUI1 MemVar_D93038
  loc_C43BAD: Branch loc_C43BD5
  loc_C43BB0: FLdI2 var_10C
  loc_C43BB3: LitI2_Byte 5
  loc_C43BB5: EqI2
  loc_C43BB6: BranchF loc_C43BC4
  loc_C43BB9: LitI2_Byte 6
  loc_C43BBB: CUI1I2
  loc_C43BBD: ImpAdStUI1 MemVar_D93038
  loc_C43BC1: Branch loc_C43BD5
  loc_C43BC4: FLdI2 var_10C
  loc_C43BC7: LitI2_Byte 6
  loc_C43BC9: EqI2
  loc_C43BCA: BranchF loc_C43BD5
  loc_C43BCD: LitI2_Byte 7
  loc_C43BCF: CUI1I2
  loc_C43BD1: ImpAdStUI1 MemVar_D93038
  loc_C43BD5: LitI2_Byte 0
  loc_C43BD7: CR8I2
  loc_C43BD8: FStFPR8 var_CC
  loc_C43BDB: LitI2_Byte 0
  loc_C43BDD: CR8I2
  loc_C43BDE: FStFPR8 var_D4
  loc_C43BE1: LitI2_Byte 0
  loc_C43BE3: CR8I2
  loc_C43BE4: FStFPR8 var_DC
  loc_C43BE7: LitI2_Byte 0
  loc_C43BE9: CR8I2
  loc_C43BEA: FStFPR8 var_E4
  loc_C43BED: LitI4 1
  loc_C43BF2: LitI4 1
  loc_C43BF7: LitVarStr var_104, "0.00"
  loc_C43BFC: FStVarCopyObj var_11C
  loc_C43BFF: FLdRfVar var_11C
  loc_C43C02: FLdRfVar var_CC
  loc_C43C05: CVarRef
  loc_C43C0A: FLdRfVar var_12C
  loc_C43C0D: ImpAdCallFPR4  = Format(, )
  loc_C43C12: FLdRfVar var_12C
  loc_C43C15: CStrVarVal var_130
  loc_C43C19: FLdPr Me
  loc_C43C1C: VCallAd Control_ID_txtTotaDere
  loc_C43C1F: FStAdFunc var_108
  loc_C43C22: FLdPr var_108
  loc_C43C25: Me.Text = from_stack_1
  loc_C43C2A: FFree1Str var_130
  loc_C43C2D: FFree1Ad var_108
  loc_C43C30: FFreeVar var_11C = ""
  loc_C43C37: LitI4 1
  loc_C43C3C: LitI4 1
  loc_C43C41: LitVarStr var_104, "0.00"
  loc_C43C46: FStVarCopyObj var_11C
  loc_C43C49: FLdRfVar var_11C
  loc_C43C4C: FLdRfVar var_D4
  loc_C43C4F: CVarRef
  loc_C43C54: FLdRfVar var_12C
  loc_C43C57: ImpAdCallFPR4  = Format(, )
  loc_C43C5C: FLdRfVar var_12C
  loc_C43C5F: CStrVarVal var_130
  loc_C43C63: FLdPr Me
  loc_C43C66: VCallAd Control_ID_txtTotaReca
  loc_C43C69: FStAdFunc var_108
  loc_C43C6C: FLdPr var_108
  loc_C43C6F: Me.Text = from_stack_1
  loc_C43C74: FFree1Str var_130
  loc_C43C77: FFree1Ad var_108
  loc_C43C7A: FFreeVar var_11C = ""
  loc_C43C81: LitI4 1
  loc_C43C86: LitI4 1
  loc_C43C8B: LitVarStr var_104, "0.00"
  loc_C43C90: FStVarCopyObj var_11C
  loc_C43C93: FLdRfVar var_11C
  loc_C43C96: FLdRfVar var_DC
  loc_C43C99: CVarRef
  loc_C43C9E: FLdRfVar var_12C
  loc_C43CA1: ImpAdCallFPR4  = Format(, )
  loc_C43CA6: FLdRfVar var_12C
  loc_C43CA9: CStrVarVal var_130
  loc_C43CAD: FLdPr Me
  loc_C43CB0: VCallAd Control_ID_txtTotaApre
  loc_C43CB3: FStAdFunc var_108
  loc_C43CB6: FLdPr var_108
  loc_C43CB9: Me.Text = from_stack_1
  loc_C43CBE: FFree1Str var_130
  loc_C43CC1: FFree1Ad var_108
  loc_C43CC4: FFreeVar var_11C = ""
  loc_C43CCB: LitI4 2
  loc_C43CD0: FLdRfVar var_CC
  loc_C43CD3: CVarRef
  loc_C43CD8: FLdRfVar var_11C
  loc_C43CDB: ImpAdCallFPR4  = Round(, )
  loc_C43CE0: FLdRfVar var_11C
  loc_C43CE3: LitI4 2
  loc_C43CE8: FLdRfVar var_D4
  loc_C43CEB: CVarRef
  loc_C43CF0: FLdRfVar var_12C
  loc_C43CF3: ImpAdCallFPR4  = Round(, )
  loc_C43CF8: FLdRfVar var_12C
  loc_C43CFB: AddVar var_140
  loc_C43CFF: LitI4 2
  loc_C43D04: FLdRfVar var_DC
  loc_C43D07: CVarRef
  loc_C43D0C: FLdRfVar var_160
  loc_C43D0F: ImpAdCallFPR4  = Round(, )
  loc_C43D14: FLdRfVar var_160
  loc_C43D17: AddVar var_170
  loc_C43D1B: CR4Var
  loc_C43D1C: FStFPR8 var_E4
  loc_C43D1F: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C43D2C: LitI4 1
  loc_C43D31: LitI4 1
  loc_C43D36: LitVarStr var_104, "0.00"
  loc_C43D3B: FStVarCopyObj var_11C
  loc_C43D3E: FLdRfVar var_11C
  loc_C43D41: FLdRfVar var_E4
  loc_C43D44: CVarRef
  loc_C43D49: FLdRfVar var_12C
  loc_C43D4C: ImpAdCallFPR4  = Format(, )
  loc_C43D51: FLdRfVar var_12C
  loc_C43D54: CStrVarVal var_130
  loc_C43D58: FLdPr Me
  loc_C43D5B: VCallAd Control_ID_txtTotal
  loc_C43D5E: FStAdFunc var_108
  loc_C43D61: FLdPr var_108
  loc_C43D64: Me.Text = from_stack_1
  loc_C43D69: FFree1Str var_130
  loc_C43D6C: FFree1Ad var_108
  loc_C43D6F: FFreeVar var_11C = ""
  loc_C43D76: LitStr "Municipalidad de Guaymallén"
  loc_C43D79: LitStr "Municipalidad de Guaymallén"
  loc_C43D7C: EqStr
  loc_C43D7E: BranchF loc_C43E6E
  loc_C43D81: FLdPr Me
  loc_C43D84: VCallAd Control_ID_FechVencMsk
  loc_C43D87: FStAdFunc var_184
  loc_C43D8A: FLdPr var_184
  loc_C43D8D: LateIdLdVar var_11C DispID_15 0
  loc_C43D94: PopAd
  loc_C43D96: LitStr "CALL nDeuda`('"
  loc_C43D99: ImpAdLdUI1
  loc_C43D9D: CStrI2
  loc_C43D9F: FStStrNoPop var_130
  loc_C43DA2: ConcatStr
  loc_C43DA3: FStStrNoPop var_174
  loc_C43DA6: LitStr "', '"
  loc_C43DA9: ConcatStr
  loc_C43DAA: FStStrNoPop var_17C
  loc_C43DAD: FLdRfVar var_178
  loc_C43DB0: FLdPr Me
  loc_C43DB3: VCallAd Control_ID_NumeCtaTxt
  loc_C43DB6: FStAdFunc var_108
  loc_C43DB9: FLdPr var_108
  loc_C43DBC:  = Me.Text
  loc_C43DC1: ILdRf var_178
  loc_C43DC4: ConcatStr
  loc_C43DC5: FStStrNoPop var_180
  loc_C43DC8: LitStr "', '"
  loc_C43DCB: ConcatStr
  loc_C43DCC: CVarStr var_170
  loc_C43DCF: LitI4 1
  loc_C43DD4: LitI4 1
  loc_C43DD9: LitVarStr var_F4, "yyyy-mm-dd"
  loc_C43DDE: FStVarCopyObj var_140
  loc_C43DE1: FLdRfVar var_140
  loc_C43DE4: FLdRfVar var_11C
  loc_C43DE7: CStrVarTmp
  loc_C43DE8: CVarStr var_12C
  loc_C43DEB: FLdRfVar var_160
  loc_C43DEE: ImpAdCallFPR4  = Format(, )
  loc_C43DF3: FLdRfVar var_160
  loc_C43DF6: ConcatVar var_194
  loc_C43DFA: LitVarStr var_104, "')"
  loc_C43DFF: ConcatVar var_1A4
  loc_C43E03: CStrVarVal var_1A8
  loc_C43E07: FLdPr Me
  loc_C43E0A: MemLdRfVar from_stack_1.global_52
  loc_C43E0D: NewIfNullPr clsctacte
  loc_C43E10: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C43E15: FFreeStr var_130 = "": var_174 = "": var_17C = "": var_178 = "": var_180 = ""
  loc_C43E24: FFreeAd var_108 = ""
  loc_C43E2B: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_170 = "": var_160 = "": var_194 = ""
  loc_C43E3C: LitStr "SELECT * FROM tmp_ctacteboleto "
  loc_C43E3F: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_C43E42: ConcatStr
  loc_C43E43: FStStrNoPop var_130
  loc_C43E46: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_C43E49: ConcatStr
  loc_C43E4A: FStStrNoPop var_174
  loc_C43E4D: LitStr " ORDER BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.CodiFapa, tmp_ctacteboleto.PeriCtct, tmp_ctacteboleto.BimeCtct, tmp_ctacteboleto.NumeCtct, tmp_ctacteboleto.MoviCtct"
  loc_C43E50: ConcatStr
  loc_C43E51: FStStrNoPop var_178
  loc_C43E54: FLdPr Me
  loc_C43E57: MemLdRfVar from_stack_1.global_52
  loc_C43E5A: NewIfNullPr clsctacte
  loc_C43E5D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C43E62: FFreeStr var_130 = "": var_174 = ""
  loc_C43E6B: Branch loc_C43EE2
  loc_C43E6E: FLdRfVar var_130
  loc_C43E71: FLdPr Me
  loc_C43E74: VCallAd Control_ID_NumeCtaTxt
  loc_C43E77: FStAdFunc var_108
  loc_C43E7A: FLdPr var_108
  loc_C43E7D:  = Me.Text
  loc_C43E82: FLdPr Me
  loc_C43E85: VCallAd Control_ID_FechVencMsk
  loc_C43E88: FStAdFunc var_184
  loc_C43E8B: FLdPr var_184
  loc_C43E8E: LateIdLdVar var_11C DispID_22 0
  loc_C43E95: PopAd
  loc_C43E97: LitStr "tmp_ctacteaforos"
  loc_C43E9A: FLdRfVar var_11C
  loc_C43E9D: CStrVarTmp
  loc_C43E9E: FStStrNoPop var_174
  loc_C43EA1: ILdRf var_130
  loc_C43EA4: ImpAdLdUI1
  loc_C43EA8: FLdPr Me
  loc_C43EAB: MemLdRfVar from_stack_1.global_52
  loc_C43EAE: NewIfNullPr clsctacte
  loc_C43EB1: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C43EB6: FFreeStr var_130 = ""
  loc_C43EBD: FFreeAd var_108 = ""
  loc_C43EC4: FFree1Var var_11C = ""
  loc_C43EC7: LitStr "SELECT * FROM tmp_ctacteaforos LEFT JOIN tipomovi ON tmp_ctacteaforos.CodiTimo = tipomovi.CodiTimo"
  loc_C43ECA: LitStr " ORDER BY tmp_ctacteaforos.CodiOfic, tmp_ctacteaforos.CuenCtct, tmp_ctacteaforos.PeriCtct desc, tmp_ctacteaforos.BimeCtct desc, tmp_ctacteaforos.NumeCtct, tmp_ctacteaforos.MoviCtct"
  loc_C43ECD: ConcatStr
  loc_C43ECE: FStStrNoPop var_130
  loc_C43ED1: FLdPr Me
  loc_C43ED4: MemLdRfVar from_stack_1.global_52
  loc_C43ED7: NewIfNullPr clsctacte
  loc_C43EDA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C43EDF: FFree1Str var_130
  loc_C43EE2: FLdRfVar var_1AC
  loc_C43EE5: FLdPr Me
  loc_C43EE8: MemLdRfVar from_stack_1.global_52
  loc_C43EEB: NewIfNullPr clsctacte
  loc_C43EEE: from_stack_1 = clsctacte.RecordCount
  loc_C43EF3: ILdRf var_1AC
  loc_C43EF6: LitI4 0
  loc_C43EFB: GtI4
  loc_C43EFC: BranchF loc_C446E6
  loc_C43EFF: FLdPr Me
  loc_C43F02: MemLdRfVar from_stack_1.global_52
  loc_C43F05: NewIfNullPr clsctacte
  loc_C43F08: Call clsctacte.MoveFirst()
  loc_C43F0D: FLdRfVar var_10A
  loc_C43F10: FLdPr Me
  loc_C43F13: MemLdRfVar from_stack_1.global_52
  loc_C43F16: NewIfNullPr clsctacte
  loc_C43F19: from_stack_1 = clsctacte.EOF
  loc_C43F1E: FLdI2 var_10A
  loc_C43F21: NotI4
  loc_C43F22: BranchF loc_C4455D
  loc_C43F25: FLdRfVar var_1B4
  loc_C43F28: FLdPr Me
  loc_C43F2B: MemLdRfVar from_stack_1.global_52
  loc_C43F2E: NewIfNullPr clsctacte
  loc_C43F31: from_stack_1 = clsctacte.SaldCtct
  loc_C43F36: FLdFPR8 var_1B4
  loc_C43F39: FnCDblR8
  loc_C43F3B: LitI2_Byte 0
  loc_C43F3D: CR8I2
  loc_C43F3E: GtR4
  loc_C43F3F: BranchF loc_C4454C
  loc_C43F42: LitI2_Byte 0
  loc_C43F44: CR8I2
  loc_C43F45: FStFPR8 var_DC
  loc_C43F48: FLdRfVar var_1B4
  loc_C43F4B: FLdPr Me
  loc_C43F4E: MemLdRfVar from_stack_1.global_52
  loc_C43F51: NewIfNullPr clsctacte
  loc_C43F54: from_stack_1 = clsctacte.SaldCtct
  loc_C43F59: LitI4 2
  loc_C43F5E: FLdFPR8 var_CC
  loc_C43F61: FnCDblR8
  loc_C43F63: FLdFPR8 var_1B4
  loc_C43F66: FnCDblR8
  loc_C43F68: AddR8
  loc_C43F69: CVarR8
  loc_C43F6D: FLdRfVar var_12C
  loc_C43F70: ImpAdCallFPR4  = Round(, )
  loc_C43F75: FLdRfVar var_12C
  loc_C43F78: CR4Var
  loc_C43F79: FStFPR8 var_CC
  loc_C43F7C: FFreeVar var_11C = ""
  loc_C43F83: FLdRfVar var_1B4
  loc_C43F86: FLdPr Me
  loc_C43F89: MemLdRfVar from_stack_1.global_52
  loc_C43F8C: NewIfNullPr clsctacte
  loc_C43F8F: from_stack_1 = clsctacte.RecaCtct
  loc_C43F94: LitI4 2
  loc_C43F99: FLdFPR8 var_D4
  loc_C43F9C: FnCDblR8
  loc_C43F9E: FLdFPR8 var_1B4
  loc_C43FA1: FnCDblR8
  loc_C43FA3: AddR8
  loc_C43FA4: CVarR8
  loc_C43FA8: FLdRfVar var_12C
  loc_C43FAB: ImpAdCallFPR4  = Round(, )
  loc_C43FB0: FLdRfVar var_12C
  loc_C43FB3: CR4Var
  loc_C43FB4: FStFPR8 var_D4
  loc_C43FB7: FFreeVar var_11C = ""
  loc_C43FBE: FLdRfVar var_10A
  loc_C43FC1: FLdPr Me
  loc_C43FC4: MemLdRfVar from_stack_1.global_52
  loc_C43FC7: NewIfNullPr clsctacte
  loc_C43FCA: from_stack_1 = clsctacte.BimeCtct
  loc_C43FCF: LitI4 1
  loc_C43FD4: LitI4 1
  loc_C43FD9: LitVarStr var_104, "00"
  loc_C43FDE: FStVarCopyObj var_12C
  loc_C43FE1: FLdRfVar var_12C
  loc_C43FE4: FLdI2 var_10A
  loc_C43FE7: CVarI2 var_11C
  loc_C43FEA: FLdRfVar var_140
  loc_C43FED: ImpAdCallFPR4  = Format(, )
  loc_C43FF2: FLdRfVar var_140
  loc_C43FF5: LitVarStr var_150, "/"
  loc_C43FFA: ConcatVar var_160
  loc_C43FFE: FLdRfVar var_1B6
  loc_C44001: FLdPr Me
  loc_C44004: MemLdRfVar from_stack_1.global_52
  loc_C44007: NewIfNullPr clsctacte
  loc_C4400A: from_stack_1 = clsctacte.PeriCtct
  loc_C4400F: FLdI2 var_1B6
  loc_C44012: CVarI2 var_1C8
  loc_C44015: ConcatVar var_170
  loc_C44019: CStrVarTmp
  loc_C4401A: FLdRfVar var_96
  loc_C4401D: StFixedStrFree
  loc_C44021: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C4402E: FLdRfVar var_1AC
  loc_C44031: FLdPr Me
  loc_C44034: MemLdRfVar from_stack_1.global_52
  loc_C44037: NewIfNullPr clsctacte
  loc_C4403A: from_stack_1 = clsctacte.NumeBole
  loc_C4403F: FLdRfVar var_10A
  loc_C44042: FLdPr Me
  loc_C44045: MemLdRfVar from_stack_1.global_52
  loc_C44048: NewIfNullPr clsctacte
  loc_C4404B: from_stack_1 = clsctacte.PeriBole
  loc_C44050: LitI4 1
  loc_C44055: LitI4 1
  loc_C4405A: LitVarStr var_104, "#######0"
  loc_C4405F: FStVarCopyObj var_12C
  loc_C44062: FLdRfVar var_12C
  loc_C44065: ILdRf var_1AC
  loc_C44068: CVarI4
  loc_C4406C: FLdRfVar var_140
  loc_C4406F: ImpAdCallFPR4  = Format(, )
  loc_C44074: FLdRfVar var_140
  loc_C44077: LitVarStr var_150, "-"
  loc_C4407C: ConcatVar var_160
  loc_C44080: LitI4 1
  loc_C44085: LitI4 1
  loc_C4408A: LitVarStr var_1D8, "0000"
  loc_C4408F: FStVarCopyObj var_194
  loc_C44092: FLdRfVar var_194
  loc_C44095: FLdI2 var_10A
  loc_C44098: CVarI2 var_170
  loc_C4409B: FLdRfVar var_1A4
  loc_C4409E: ImpAdCallFPR4  = Format(, )
  loc_C440A3: FLdRfVar var_1A4
  loc_C440A6: ConcatVar var_1E8
  loc_C440AA: CStrVarTmp
  loc_C440AB: FLdRfVar var_B0
  loc_C440AE: StFixedStrFree
  loc_C440B2: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_170 = "": var_194 = "": var_160 = "": var_1A4 = ""
  loc_C440C5: FLdRfVar var_1B4
  loc_C440C8: FLdPr Me
  loc_C440CB: MemLdRfVar from_stack_1.global_52
  loc_C440CE: NewIfNullPr clsctacte
  loc_C440D1: from_stack_1 = clsctacte.SaldCtct
  loc_C440D6: FLdFPR8 var_1B4
  loc_C440D9: FnCDblR8
  loc_C440DB: LitI2_Byte 0
  loc_C440DD: CR8I2
  loc_C440DE: NeR8
  loc_C440DF: BranchF loc_C4412A
  loc_C440E2: FLdRfVar var_1B4
  loc_C440E5: FLdPr Me
  loc_C440E8: MemLdRfVar from_stack_1.global_52
  loc_C440EB: NewIfNullPr clsctacte
  loc_C440EE: from_stack_1 = clsctacte.SaldCtct
  loc_C440F3: LitI4 1
  loc_C440F8: LitI4 1
  loc_C440FD: LitVarStr var_104, "0.00"
  loc_C44102: FStVarCopyObj var_12C
  loc_C44105: FLdRfVar var_12C
  loc_C44108: FLdFPR8 var_1B4
  loc_C4410B: CVarR8
  loc_C4410F: FLdRfVar var_140
  loc_C44112: ImpAdCallFPR4  = Format(, )
  loc_C44117: FLdRfVar var_140
  loc_C4411A: CStrVarTmp
  loc_C4411B: FStStr var_B8
  loc_C4411E: FFreeVar var_11C = "": var_12C = ""
  loc_C44127: Branch loc_C44130
  loc_C4412A: LitStr vbNullString
  loc_C4412D: FStStrCopy var_B8
  loc_C44130: LitStr vbNullString
  loc_C44133: FStStrCopy var_BC
  loc_C44136: FLdRfVar var_1B4
  loc_C44139: FLdPr Me
  loc_C4413C: MemLdRfVar from_stack_1.global_52
  loc_C4413F: NewIfNullPr clsctacte
  loc_C44142: from_stack_1 = clsctacte.RecaCtct
  loc_C44147: FLdFPR8 var_1B4
  loc_C4414A: FnCDblR8
  loc_C4414C: LitI2_Byte 0
  loc_C4414E: CR8I2
  loc_C4414F: NeR8
  loc_C44150: BranchF loc_C4419B
  loc_C44153: FLdRfVar var_1B4
  loc_C44156: FLdPr Me
  loc_C44159: MemLdRfVar from_stack_1.global_52
  loc_C4415C: NewIfNullPr clsctacte
  loc_C4415F: from_stack_1 = clsctacte.RecaCtct
  loc_C44164: LitI4 1
  loc_C44169: LitI4 1
  loc_C4416E: LitVarStr var_104, "0.00"
  loc_C44173: FStVarCopyObj var_12C
  loc_C44176: FLdRfVar var_12C
  loc_C44179: FLdFPR8 var_1B4
  loc_C4417C: CVarR8
  loc_C44180: FLdRfVar var_140
  loc_C44183: ImpAdCallFPR4  = Format(, )
  loc_C44188: FLdRfVar var_140
  loc_C4418B: CStrVarTmp
  loc_C4418C: FStStr var_C0
  loc_C4418F: FFreeVar var_11C = "": var_12C = ""
  loc_C44198: Branch loc_C441A1
  loc_C4419B: LitStr vbNullString
  loc_C4419E: FStStrCopy var_C0
  loc_C441A1: FLdRfVar var_1B4
  loc_C441A4: FLdPr Me
  loc_C441A7: MemLdRfVar from_stack_1.global_52
  loc_C441AA: NewIfNullPr clsctacte
  loc_C441AD: from_stack_1 = clsctacte.SaldCtct
  loc_C441B2: FLdRfVar var_1F0
  loc_C441B5: FLdPr Me
  loc_C441B8: MemLdRfVar from_stack_1.global_52
  loc_C441BB: NewIfNullPr clsctacte
  loc_C441BE: from_stack_1 = clsctacte.RecaCtct
  loc_C441C3: LitI4 2
  loc_C441C8: FLdFPR8 var_1B4
  loc_C441CB: FnCDblR8
  loc_C441CD: FLdFPR8 var_1F0
  loc_C441D0: FnCDblR8
  loc_C441D2: AddR8
  loc_C441D3: CVarR8
  loc_C441D7: FLdRfVar var_12C
  loc_C441DA: ImpAdCallFPR4  = Round(, )
  loc_C441DF: LitI4 1
  loc_C441E4: LitI4 1
  loc_C441E9: LitVarStr var_104, "0.00"
  loc_C441EE: FStVarCopyObj var_140
  loc_C441F1: FLdRfVar var_140
  loc_C441F4: FLdRfVar var_12C
  loc_C441F7: FLdRfVar var_160
  loc_C441FA: ImpAdCallFPR4  = Format(, )
  loc_C441FF: FLdRfVar var_160
  loc_C44202: CStrVarTmp
  loc_C44203: FStStr var_C4
  loc_C44206: FFreeVar var_11C = "": var_12C = "": var_140 = ""
  loc_C44211: FLdRfVar var_10A
  loc_C44214: FLdPr Me
  loc_C44217: MemLdRfVar from_stack_1.global_52
  loc_C4421A: NewIfNullPr clsctacte
  loc_C4421D: from_stack_1 = clsctacte.CodiOfic
  loc_C44222: FLdI2 var_10A
  loc_C44225: CVarI2 var_F4
  loc_C44228: LitI4 9
  loc_C4422D: FLdRfVar var_11C
  loc_C44230: ImpAdCallFPR4  = Chr()
  loc_C44235: FLdRfVar var_11C
  loc_C44238: ConcatVar var_12C
  loc_C4423C: FLdRfVar var_130
  loc_C4423F: FLdPr Me
  loc_C44242: MemLdRfVar from_stack_1.global_52
  loc_C44245: NewIfNullPr clsctacte
  loc_C44248: from_stack_1 = clsctacte.CuenCtct
  loc_C4424D: FLdZeroAd var_130
  loc_C44250: CVarStr var_140
  loc_C44253: ConcatVar var_160
  loc_C44257: LitI4 9
  loc_C4425C: FLdRfVar var_170
  loc_C4425F: ImpAdCallFPR4  = Chr()
  loc_C44264: FLdRfVar var_170
  loc_C44267: ConcatVar var_194
  loc_C4426B: FLdRfVar var_96
  loc_C4426E: LdFixedStr
  loc_C44271: CVarStr var_1A4
  loc_C44274: ConcatVar var_1E8
  loc_C44278: LitI4 9
  loc_C4427D: FLdRfVar var_200
  loc_C44280: ImpAdCallFPR4  = Chr()
  loc_C44285: FLdRfVar var_200
  loc_C44288: ConcatVar var_210
  loc_C4428C: FLdRfVar var_B0
  loc_C4428F: LdFixedStr
  loc_C44292: CVarStr var_220
  loc_C44295: ConcatVar var_230
  loc_C44299: LitI4 9
  loc_C4429E: FLdRfVar var_240
  loc_C442A1: ImpAdCallFPR4  = Chr()
  loc_C442A6: FLdRfVar var_240
  loc_C442A9: ConcatVar var_250
  loc_C442AD: FLdRfVar var_174
  loc_C442B0: FLdPr Me
  loc_C442B3: MemLdRfVar from_stack_1.global_52
  loc_C442B6: NewIfNullPr clsctacte
  loc_C442B9: from_stack_1 = clsctacte.FealCtct
  loc_C442BE: FLdZeroAd var_174
  loc_C442C1: CVarStr var_260
  loc_C442C4: ConcatVar var_270
  loc_C442C8: LitI4 9
  loc_C442CD: FLdRfVar var_280
  loc_C442D0: ImpAdCallFPR4  = Chr()
  loc_C442D5: FLdRfVar var_280
  loc_C442D8: ConcatVar var_290
  loc_C442DC: FLdRfVar var_2A0
  loc_C442DF: FLdPr Me
  loc_C442E2: MemLdRfVar from_stack_1.global_52
  loc_C442E5: NewIfNullPr clsctacte
  loc_C442E8: from_stack_1 = clsctacte.FeveCtct
  loc_C442ED: FLdRfVar var_2A0
  loc_C442F0: ConcatVar var_2B0
  loc_C442F4: LitI4 9
  loc_C442F9: FLdRfVar var_2C0
  loc_C442FC: ImpAdCallFPR4  = Chr()
  loc_C44301: FLdRfVar var_2C0
  loc_C44304: ConcatVar var_2D0
  loc_C44308: FLdRfVar var_178
  loc_C4430B: FLdPr Me
  loc_C4430E: MemLdRfVar from_stack_1.global_52
  loc_C44311: NewIfNullPr clsctacte
  loc_C44314: from_stack_1 = clsctacte.CodiConc
  loc_C44319: FLdZeroAd var_178
  loc_C4431C: CVarStr var_2E0
  loc_C4431F: ConcatVar var_2F0
  loc_C44323: LitI4 9
  loc_C44328: FLdRfVar var_300
  loc_C4432B: ImpAdCallFPR4  = Chr()
  loc_C44330: FLdRfVar var_300
  loc_C44333: ConcatVar var_310
  loc_C44337: FLdRfVar var_1AC
  loc_C4433A: FLdPr Me
  loc_C4433D: MemLdRfVar from_stack_1.global_52
  loc_C44340: NewIfNullPr clsctacte
  loc_C44343: from_stack_1 = clsctacte.CodiFapa
  loc_C44348: ILdRf var_1AC
  loc_C4434B: CVarI4
  loc_C4434F: ConcatVar var_320
  loc_C44353: LitI4 9
  loc_C44358: FLdRfVar var_330
  loc_C4435B: ImpAdCallFPR4  = Chr()
  loc_C44360: FLdRfVar var_330
  loc_C44363: ConcatVar var_340
  loc_C44367: FLdRfVar var_344
  loc_C4436A: FLdPr Me
  loc_C4436D: MemLdRfVar from_stack_1.global_52
  loc_C44370: NewIfNullPr clsctacte
  loc_C44373: from_stack_1 = clsctacte.NumeApre
  loc_C44378: ILdRf var_344
  loc_C4437B: CVarI4
  loc_C4437F: ConcatVar var_354
  loc_C44383: LitI4 9
  loc_C44388: FLdRfVar var_364
  loc_C4438B: ImpAdCallFPR4  = Chr()
  loc_C44390: FLdRfVar var_364
  loc_C44393: ConcatVar var_374
  loc_C44397: FLdRfVar var_17C
  loc_C4439A: FLdPr Me
  loc_C4439D: MemLdRfVar from_stack_1.global_52
  loc_C443A0: NewIfNullPr clsctacte
  loc_C443A3: from_stack_1 = clsctacte.ExpeCtct
  loc_C443A8: FLdZeroAd var_17C
  loc_C443AB: CVarStr var_384
  loc_C443AE: ConcatVar var_394
  loc_C443B2: LitI4 9
  loc_C443B7: FLdRfVar var_3A4
  loc_C443BA: ImpAdCallFPR4  = Chr()
  loc_C443BF: FLdRfVar var_3A4
  loc_C443C2: ConcatVar var_3B4
  loc_C443C6: FLdRfVar var_180
  loc_C443C9: FLdPr Me
  loc_C443CC: MemLdRfVar from_stack_1.global_52
  loc_C443CF: NewIfNullPr clsctacte
  loc_C443D2: from_stack_1 = clsctacte.AbreTimo
  loc_C443D7: FLdZeroAd var_180
  loc_C443DA: CVarStr var_3C4
  loc_C443DD: ConcatVar var_3D4
  loc_C443E1: LitI4 9
  loc_C443E6: FLdRfVar var_3E4
  loc_C443E9: ImpAdCallFPR4  = Chr()
  loc_C443EE: FLdRfVar var_3E4
  loc_C443F1: ConcatVar var_3F4
  loc_C443F5: ILdRf var_B8
  loc_C443F8: CVarStr var_1C8
  loc_C443FB: ConcatVar var_404
  loc_C443FF: LitI4 9
  loc_C44404: FLdRfVar var_414
  loc_C44407: ImpAdCallFPR4  = Chr()
  loc_C4440C: FLdRfVar var_414
  loc_C4440F: ConcatVar var_424
  loc_C44413: ILdRf var_C0
  loc_C44416: CVarStr var_1D8
  loc_C44419: ConcatVar var_434
  loc_C4441D: LitI4 9
  loc_C44422: FLdRfVar var_444
  loc_C44425: ImpAdCallFPR4  = Chr()
  loc_C4442A: FLdRfVar var_444
  loc_C4442D: ConcatVar var_454
  loc_C44431: ILdRf var_C4
  loc_C44434: CVarStr var_464
  loc_C44437: ConcatVar var_474
  loc_C4443B: LitI4 9
  loc_C44440: FLdRfVar var_484
  loc_C44443: ImpAdCallFPR4  = Chr()
  loc_C44448: FLdRfVar var_484
  loc_C4444B: ConcatVar var_494
  loc_C4444F: LitVarStr var_4A4, "No"
  loc_C44454: ConcatVar var_4B4
  loc_C44458: LitI4 9
  loc_C4445D: FLdRfVar var_4C4
  loc_C44460: ImpAdCallFPR4  = Chr()
  loc_C44465: FLdRfVar var_4C4
  loc_C44468: ConcatVar var_4D4
  loc_C4446C: FLdRfVar var_4D8
  loc_C4446F: FLdPr Me
  loc_C44472: MemLdRfVar from_stack_1.global_52
  loc_C44475: NewIfNullPr clsctacte
  loc_C44478: from_stack_1 = clsctacte.NumeCtct
  loc_C4447D: ILdRf var_4D8
  loc_C44480: CVarI4
  loc_C44484: ConcatVar var_4F8
  loc_C44488: LitI4 9
  loc_C4448D: FLdRfVar var_508
  loc_C44490: ImpAdCallFPR4  = Chr()
  loc_C44495: FLdRfVar var_508
  loc_C44498: ConcatVar var_518
  loc_C4449C: FLdRfVar var_1B6
  loc_C4449F: FLdPr Me
  loc_C444A2: MemLdRfVar from_stack_1.global_52
  loc_C444A5: NewIfNullPr clsctacte
  loc_C444A8: from_stack_1 = clsctacte.MoviCtct
  loc_C444AD: FLdI2 var_1B6
  loc_C444B0: CVarI2 var_528
  loc_C444B3: ConcatVar var_538
  loc_C444B7: CStrVarTmp
  loc_C444B8: FStStr var_B4
  loc_C444BB: FFreeVar var_364 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_404 = "": var_414 = "": var_424 = "": var_434 = "": var_444 = "": var_454 = "": var_474 = "": var_484 = "": var_494 = "": var_4B4 = "": var_4C4 = "": var_4D4 = "": var_4F8 = "": var_508 = "": var_518 = "": var_538 = "": var_11C = "": var_12C = "": var_140 = "": var_160 = "": var_170 = "": var_194 = "": var_1A4 = "": var_1E8 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_310 = "": var_320 = "": var_330 = "": var_340 = ""
  loc_C4452E: FLdRfVar var_B4
  loc_C44531: CDargRef
  loc_C44535: FLdPr Me
  loc_C44538: VCallAd Control_ID_ctacteFlex
  loc_C4453B: FStAdFunc var_108
  loc_C4453E: FLdPr var_108
  loc_C44541: LateIdCall
  loc_C44549: FFree1Ad var_108
  loc_C4454C: FLdPr Me
  loc_C4454F: MemLdRfVar from_stack_1.global_52
  loc_C44552: NewIfNullPr clsctacte
  loc_C44555: Call clsctacte.MoveSiguiente()
  loc_C4455A: Branch loc_C43F0D
  loc_C4455D: LitI4 1
  loc_C44562: LitI4 1
  loc_C44567: LitVarStr var_104, "###,###,##0.00"
  loc_C4456C: FStVarCopyObj var_11C
  loc_C4456F: FLdRfVar var_11C
  loc_C44572: FLdRfVar var_CC
  loc_C44575: CVarRef
  loc_C4457A: FLdRfVar var_12C
  loc_C4457D: ImpAdCallFPR4  = Format(, )
  loc_C44582: FLdRfVar var_12C
  loc_C44585: CStrVarVal var_130
  loc_C44589: FLdPr Me
  loc_C4458C: VCallAd Control_ID_txtTotaDere
  loc_C4458F: FStAdFunc var_108
  loc_C44592: FLdPr var_108
  loc_C44595: Me.Text = from_stack_1
  loc_C4459A: FFree1Str var_130
  loc_C4459D: FFree1Ad var_108
  loc_C445A0: FFreeVar var_11C = ""
  loc_C445A7: LitI4 1
  loc_C445AC: LitI4 1
  loc_C445B1: LitVarStr var_104, "###,###,##0.00"
  loc_C445B6: FStVarCopyObj var_11C
  loc_C445B9: FLdRfVar var_11C
  loc_C445BC: FLdRfVar var_D4
  loc_C445BF: CVarRef
  loc_C445C4: FLdRfVar var_12C
  loc_C445C7: ImpAdCallFPR4  = Format(, )
  loc_C445CC: FLdRfVar var_12C
  loc_C445CF: CStrVarVal var_130
  loc_C445D3: FLdPr Me
  loc_C445D6: VCallAd Control_ID_txtTotaReca
  loc_C445D9: FStAdFunc var_108
  loc_C445DC: FLdPr var_108
  loc_C445DF: Me.Text = from_stack_1
  loc_C445E4: FFree1Str var_130
  loc_C445E7: FFree1Ad var_108
  loc_C445EA: FFreeVar var_11C = ""
  loc_C445F1: LitI4 1
  loc_C445F6: LitI4 1
  loc_C445FB: LitVarStr var_104, "###,###,##0.00"
  loc_C44600: FStVarCopyObj var_11C
  loc_C44603: FLdRfVar var_11C
  loc_C44606: FLdRfVar var_DC
  loc_C44609: CVarRef
  loc_C4460E: FLdRfVar var_12C
  loc_C44611: ImpAdCallFPR4  = Format(, )
  loc_C44616: FLdRfVar var_12C
  loc_C44619: CStrVarVal var_130
  loc_C4461D: FLdPr Me
  loc_C44620: VCallAd Control_ID_txtTotaApre
  loc_C44623: FStAdFunc var_108
  loc_C44626: FLdPr var_108
  loc_C44629: Me.Text = from_stack_1
  loc_C4462E: FFree1Str var_130
  loc_C44631: FFree1Ad var_108
  loc_C44634: FFreeVar var_11C = ""
  loc_C4463B: LitI4 2
  loc_C44640: FLdRfVar var_CC
  loc_C44643: CVarRef
  loc_C44648: FLdRfVar var_11C
  loc_C4464B: ImpAdCallFPR4  = Round(, )
  loc_C44650: FLdRfVar var_11C
  loc_C44653: LitI4 2
  loc_C44658: FLdRfVar var_D4
  loc_C4465B: CVarRef
  loc_C44660: FLdRfVar var_12C
  loc_C44663: ImpAdCallFPR4  = Round(, )
  loc_C44668: FLdRfVar var_12C
  loc_C4466B: AddVar var_140
  loc_C4466F: LitI4 2
  loc_C44674: FLdRfVar var_DC
  loc_C44677: CVarRef
  loc_C4467C: FLdRfVar var_160
  loc_C4467F: ImpAdCallFPR4  = Round(, )
  loc_C44684: FLdRfVar var_160
  loc_C44687: AddVar var_170
  loc_C4468B: CR4Var
  loc_C4468C: FStFPR8 var_E4
  loc_C4468F: FFreeVar var_11C = "": var_12C = "": var_140 = "": var_160 = ""
  loc_C4469C: LitI4 1
  loc_C446A1: LitI4 1
  loc_C446A6: LitVarStr var_104, "###,###,##0.00"
  loc_C446AB: FStVarCopyObj var_11C
  loc_C446AE: FLdRfVar var_11C
  loc_C446B1: FLdRfVar var_E4
  loc_C446B4: CVarRef
  loc_C446B9: FLdRfVar var_12C
  loc_C446BC: ImpAdCallFPR4  = Format(, )
  loc_C446C1: FLdRfVar var_12C
  loc_C446C4: CStrVarVal var_130
  loc_C446C8: FLdPr Me
  loc_C446CB: VCallAd Control_ID_txtTotal
  loc_C446CE: FStAdFunc var_108
  loc_C446D1: FLdPr var_108
  loc_C446D4: Me.Text = from_stack_1
  loc_C446D9: FFree1Str var_130
  loc_C446DC: FFree1Ad var_108
  loc_C446DF: FFreeVar var_11C = ""
  loc_C446E6: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'B4CABC
  'Data Table: 50C14C
  loc_B4C724: FLdRfVar var_8A
  loc_B4C727: FLdPr Me
  loc_B4C72A: VCallAd Control_ID_OficinaCbo
  loc_B4C72D: FStAdFunc var_88
  loc_B4C730: FLdPr var_88
  loc_B4C733:  = Me.ListIndex
  loc_B4C738: FLdI2 var_8A
  loc_B4C73B: FStI2 var_8C
  loc_B4C73E: FFree1Ad var_88
  loc_B4C741: FLdI2 var_8C
  loc_B4C744: LitI2_Byte 0
  loc_B4C746: EqI2
  loc_B4C747: BranchF loc_B4C755
  loc_B4C74A: LitI2_Byte 1
  loc_B4C74C: CUI1I2
  loc_B4C74E: ImpAdStUI1 MemVar_D93038
  loc_B4C752: Branch loc_B4C7CA
  loc_B4C755: FLdI2 var_8C
  loc_B4C758: LitI2_Byte 1
  loc_B4C75A: EqI2
  loc_B4C75B: BranchF loc_B4C769
  loc_B4C75E: LitI2_Byte 2
  loc_B4C760: CUI1I2
  loc_B4C762: ImpAdStUI1 MemVar_D93038
  loc_B4C766: Branch loc_B4C7CA
  loc_B4C769: FLdI2 var_8C
  loc_B4C76C: LitI2_Byte 2
  loc_B4C76E: EqI2
  loc_B4C76F: BranchF loc_B4C77D
  loc_B4C772: LitI2_Byte 3
  loc_B4C774: CUI1I2
  loc_B4C776: ImpAdStUI1 MemVar_D93038
  loc_B4C77A: Branch loc_B4C7CA
  loc_B4C77D: FLdI2 var_8C
  loc_B4C780: LitI2_Byte 3
  loc_B4C782: EqI2
  loc_B4C783: BranchF loc_B4C791
  loc_B4C786: LitI2_Byte 4
  loc_B4C788: CUI1I2
  loc_B4C78A: ImpAdStUI1 MemVar_D93038
  loc_B4C78E: Branch loc_B4C7CA
  loc_B4C791: FLdI2 var_8C
  loc_B4C794: LitI2_Byte 4
  loc_B4C796: EqI2
  loc_B4C797: BranchF loc_B4C7A5
  loc_B4C79A: LitI2_Byte 5
  loc_B4C79C: CUI1I2
  loc_B4C79E: ImpAdStUI1 MemVar_D93038
  loc_B4C7A2: Branch loc_B4C7CA
  loc_B4C7A5: FLdI2 var_8C
  loc_B4C7A8: LitI2_Byte 5
  loc_B4C7AA: EqI2
  loc_B4C7AB: BranchF loc_B4C7B9
  loc_B4C7AE: LitI2_Byte 6
  loc_B4C7B0: CUI1I2
  loc_B4C7B2: ImpAdStUI1 MemVar_D93038
  loc_B4C7B6: Branch loc_B4C7CA
  loc_B4C7B9: FLdI2 var_8C
  loc_B4C7BC: LitI2_Byte 6
  loc_B4C7BE: EqI2
  loc_B4C7BF: BranchF loc_B4C7CA
  loc_B4C7C2: LitI2_Byte 7
  loc_B4C7C4: CUI1I2
  loc_B4C7C6: ImpAdStUI1 MemVar_D93038
  loc_B4C7CA: LitVar_Missing var_AC
  loc_B4C7CD: PopAdLdVar
  loc_B4C7CE: LitVarI4
  loc_B4C7D6: PopAdLdVar
  loc_B4C7D7: ImpAdLdRf MemVar_D94034
  loc_B4C7DA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4C7DD: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4C7E2: FLdRfVar var_B0
  loc_B4C7E5: FLdRfVar var_88
  loc_B4C7E8: ImpAdLdRf MemVar_D94034
  loc_B4C7EB: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4C7EE: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4C7F3: FLdPr var_88
  loc_B4C7F6: from_stack_1 = clsbase.RecordCount
  loc_B4C7FB: ILdRf var_B0
  loc_B4C7FE: LitI4 0
  loc_B4C803: GtI4
  loc_B4C804: FFree1Ad var_88
  loc_B4C807: BranchF loc_B4CAA7
  loc_B4C80A: FLdRfVar var_CC
  loc_B4C80D: FLdRfVar var_BC
  loc_B4C810: LitVarStr var_9C, "CodiOfic"
  loc_B4C815: PopAdLdVar
  loc_B4C816: FLdRfVar var_B8
  loc_B4C819: FLdRfVar var_B4
  loc_B4C81C: FLdRfVar var_88
  loc_B4C81F: ImpAdLdRf MemVar_D94034
  loc_B4C822: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4C825: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4C82A: FLdPr var_88
  loc_B4C82D: from_stack_1v = clsbase.RsFrmGet()
  loc_B4C832: FLdPr var_B4
  loc_B4C835:  = Me.Fields
  loc_B4C83A: FLdPr var_B8
  loc_B4C83D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4C842: FLdPr var_BC
  loc_B4C845:  = Me.Value
  loc_B4C84A: FLdRfVar var_CC
  loc_B4C84D: FStVar var_DC
  loc_B4C851: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4C85C: FLdRfVar var_DC
  loc_B4C85F: LitVarI2 var_9C, 1
  loc_B4C864: HardType
  loc_B4C865: EqVarBool
  loc_B4C867: BranchF loc_B4C8A1
  loc_B4C86A: FLdRfVar var_E0
  loc_B4C86D: LitI2_Byte 0
  loc_B4C86F: FLdPr Me
  loc_B4C872: VCallAd Control_ID_OficinaCbo
  loc_B4C875: FStAdFunc var_88
  loc_B4C878: FLdPr var_88
  loc_B4C87B: from_stack_2 = Me.List(from_stack_1)
  loc_B4C880: ILdRf var_E0
  loc_B4C883: FLdPr Me
  loc_B4C886: VCallAd Control_ID_OficinaCbo
  loc_B4C889: FStAdFunc var_B4
  loc_B4C88C: FLdPr var_B4
  loc_B4C88F: Me.Text = from_stack_1
  loc_B4C894: FFree1Str var_E0
  loc_B4C897: FFreeAd var_88 = ""
  loc_B4C89E: Branch loc_B4CA3C
  loc_B4C8A1: FLdRfVar var_DC
  loc_B4C8A4: LitVarI2 var_9C, 2
  loc_B4C8A9: HardType
  loc_B4C8AA: EqVarBool
  loc_B4C8AC: BranchF loc_B4C8E6
  loc_B4C8AF: FLdRfVar var_E0
  loc_B4C8B2: LitI2_Byte 1
  loc_B4C8B4: FLdPr Me
  loc_B4C8B7: VCallAd Control_ID_OficinaCbo
  loc_B4C8BA: FStAdFunc var_88
  loc_B4C8BD: FLdPr var_88
  loc_B4C8C0: from_stack_2 = Me.List(from_stack_1)
  loc_B4C8C5: ILdRf var_E0
  loc_B4C8C8: FLdPr Me
  loc_B4C8CB: VCallAd Control_ID_OficinaCbo
  loc_B4C8CE: FStAdFunc var_B4
  loc_B4C8D1: FLdPr var_B4
  loc_B4C8D4: Me.Text = from_stack_1
  loc_B4C8D9: FFree1Str var_E0
  loc_B4C8DC: FFreeAd var_88 = ""
  loc_B4C8E3: Branch loc_B4CA3C
  loc_B4C8E6: FLdRfVar var_DC
  loc_B4C8E9: LitVarI2 var_9C, 3
  loc_B4C8EE: HardType
  loc_B4C8EF: EqVarBool
  loc_B4C8F1: BranchF loc_B4C92B
  loc_B4C8F4: FLdRfVar var_E0
  loc_B4C8F7: LitI2_Byte 2
  loc_B4C8F9: FLdPr Me
  loc_B4C8FC: VCallAd Control_ID_OficinaCbo
  loc_B4C8FF: FStAdFunc var_88
  loc_B4C902: FLdPr var_88
  loc_B4C905: from_stack_2 = Me.List(from_stack_1)
  loc_B4C90A: ILdRf var_E0
  loc_B4C90D: FLdPr Me
  loc_B4C910: VCallAd Control_ID_OficinaCbo
  loc_B4C913: FStAdFunc var_B4
  loc_B4C916: FLdPr var_B4
  loc_B4C919: Me.Text = from_stack_1
  loc_B4C91E: FFree1Str var_E0
  loc_B4C921: FFreeAd var_88 = ""
  loc_B4C928: Branch loc_B4CA3C
  loc_B4C92B: FLdRfVar var_DC
  loc_B4C92E: LitVarI2 var_9C, 4
  loc_B4C933: HardType
  loc_B4C934: EqVarBool
  loc_B4C936: BranchF loc_B4C970
  loc_B4C939: FLdRfVar var_E0
  loc_B4C93C: LitI2_Byte 3
  loc_B4C93E: FLdPr Me
  loc_B4C941: VCallAd Control_ID_OficinaCbo
  loc_B4C944: FStAdFunc var_88
  loc_B4C947: FLdPr var_88
  loc_B4C94A: from_stack_2 = Me.List(from_stack_1)
  loc_B4C94F: ILdRf var_E0
  loc_B4C952: FLdPr Me
  loc_B4C955: VCallAd Control_ID_OficinaCbo
  loc_B4C958: FStAdFunc var_B4
  loc_B4C95B: FLdPr var_B4
  loc_B4C95E: Me.Text = from_stack_1
  loc_B4C963: FFree1Str var_E0
  loc_B4C966: FFreeAd var_88 = ""
  loc_B4C96D: Branch loc_B4CA3C
  loc_B4C970: FLdRfVar var_DC
  loc_B4C973: LitVarI2 var_9C, 5
  loc_B4C978: HardType
  loc_B4C979: EqVarBool
  loc_B4C97B: BranchF loc_B4C9B5
  loc_B4C97E: FLdRfVar var_E0
  loc_B4C981: LitI2_Byte 4
  loc_B4C983: FLdPr Me
  loc_B4C986: VCallAd Control_ID_OficinaCbo
  loc_B4C989: FStAdFunc var_88
  loc_B4C98C: FLdPr var_88
  loc_B4C98F: from_stack_2 = Me.List(from_stack_1)
  loc_B4C994: ILdRf var_E0
  loc_B4C997: FLdPr Me
  loc_B4C99A: VCallAd Control_ID_OficinaCbo
  loc_B4C99D: FStAdFunc var_B4
  loc_B4C9A0: FLdPr var_B4
  loc_B4C9A3: Me.Text = from_stack_1
  loc_B4C9A8: FFree1Str var_E0
  loc_B4C9AB: FFreeAd var_88 = ""
  loc_B4C9B2: Branch loc_B4CA3C
  loc_B4C9B5: FLdRfVar var_DC
  loc_B4C9B8: LitVarI2 var_9C, 6
  loc_B4C9BD: HardType
  loc_B4C9BE: EqVarBool
  loc_B4C9C0: BranchF loc_B4C9FA
  loc_B4C9C3: FLdRfVar var_E0
  loc_B4C9C6: LitI2_Byte 5
  loc_B4C9C8: FLdPr Me
  loc_B4C9CB: VCallAd Control_ID_OficinaCbo
  loc_B4C9CE: FStAdFunc var_88
  loc_B4C9D1: FLdPr var_88
  loc_B4C9D4: from_stack_2 = Me.List(from_stack_1)
  loc_B4C9D9: ILdRf var_E0
  loc_B4C9DC: FLdPr Me
  loc_B4C9DF: VCallAd Control_ID_OficinaCbo
  loc_B4C9E2: FStAdFunc var_B4
  loc_B4C9E5: FLdPr var_B4
  loc_B4C9E8: Me.Text = from_stack_1
  loc_B4C9ED: FFree1Str var_E0
  loc_B4C9F0: FFreeAd var_88 = ""
  loc_B4C9F7: Branch loc_B4CA3C
  loc_B4C9FA: FLdRfVar var_DC
  loc_B4C9FD: LitVarI2 var_9C, 7
  loc_B4CA02: HardType
  loc_B4CA03: EqVarBool
  loc_B4CA05: BranchF loc_B4CA3C
  loc_B4CA08: FLdRfVar var_E0
  loc_B4CA0B: LitI2_Byte 6
  loc_B4CA0D: FLdPr Me
  loc_B4CA10: VCallAd Control_ID_OficinaCbo
  loc_B4CA13: FStAdFunc var_88
  loc_B4CA16: FLdPr var_88
  loc_B4CA19: from_stack_2 = Me.List(from_stack_1)
  loc_B4CA1E: ILdRf var_E0
  loc_B4CA21: FLdPr Me
  loc_B4CA24: VCallAd Control_ID_OficinaCbo
  loc_B4CA27: FStAdFunc var_B4
  loc_B4CA2A: FLdPr var_B4
  loc_B4CA2D: Me.Text = from_stack_1
  loc_B4CA32: FFree1Str var_E0
  loc_B4CA35: FFreeAd var_88 = ""
  loc_B4CA3C: FLdRfVar var_CC
  loc_B4CA3F: FLdRfVar var_BC
  loc_B4CA42: LitVarStr var_9C, "CuenCtct"
  loc_B4CA47: PopAdLdVar
  loc_B4CA48: FLdRfVar var_B8
  loc_B4CA4B: FLdRfVar var_B4
  loc_B4CA4E: FLdRfVar var_88
  loc_B4CA51: ImpAdLdRf MemVar_D94034
  loc_B4CA54: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4CA57: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4CA5C: FLdPr var_88
  loc_B4CA5F: from_stack_1v = clsbase.RsFrmGet()
  loc_B4CA64: FLdPr var_B4
  loc_B4CA67:  = Me.Fields
  loc_B4CA6C: FLdPr var_B8
  loc_B4CA6F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CA74: FLdPr var_BC
  loc_B4CA77:  = Me.Value
  loc_B4CA7C: FLdRfVar var_CC
  loc_B4CA7F: CStrVarTmp
  loc_B4CA80: FStStrNoPop var_E0
  loc_B4CA83: FLdPr Me
  loc_B4CA86: VCallAd Control_ID_NumeCtaTxt
  loc_B4CA89: FStAdFunc var_E4
  loc_B4CA8C: FLdPr var_E4
  loc_B4CA8F: Me.Text = from_stack_1
  loc_B4CA94: FFree1Str var_E0
  loc_B4CA97: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4CAA4: FFree1Var var_CC = ""
  loc_B4CAA7: FLdPr Me
  loc_B4CAAA: VCallAd Control_ID_NumeCtaTxt
  loc_B4CAAD: CVarAd
  loc_B4CAB1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4CAB6: FFree1Var var_CC = ""
  loc_B4CAB9: ExitProcHresult
End Sub

Private Sub FeveCtctCmd_Click() 'A4A0D0
  'Data Table: 50C14C
  loc_A4A07C: LitVar_Missing var_A4
  loc_A4A07F: PopAdLdVar
  loc_A4A080: LitVarI4
  loc_A4A088: PopAdLdVar
  loc_A4A089: ImpAdLdRf MemVar_D930A4
  loc_A4A08C: NewIfNullPr frmCalendario
  loc_A4A08F: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4A094: ImpAdLdI4 MemVar_D93028
  loc_A4A097: LitStr vbNullString
  loc_A4A09A: NeStr
  loc_A4A09C: BranchF loc_A4A0BA
  loc_A4A09F: ImpAdLdRf MemVar_D93028
  loc_A4A0A2: CDargRef
  loc_A4A0A6: FLdPr Me
  loc_A4A0A9: VCallAd Control_ID_FeveCtctMsk
  loc_A4A0AC: FStAdFunc var_A8
  loc_A4A0AF: FLdPr var_A8
  loc_A4A0B2: LateIdSt
  loc_A4A0B7: FFree1Ad var_A8
  loc_A4A0BA: FLdPr Me
  loc_A4A0BD: VCallAd Control_ID_FeveCtctMsk
  loc_A4A0C0: CVarAd
  loc_A4A0C4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4A0C9: FFree1Var var_B8 = ""
  loc_A4A0CC: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A45D00
  'Data Table: 50C14C
  loc_A45CAC: LitVar_Missing var_A4
  loc_A45CAF: PopAdLdVar
  loc_A45CB0: LitVarI4
  loc_A45CB8: PopAdLdVar
  loc_A45CB9: ImpAdLdRf MemVar_D930A4
  loc_A45CBC: NewIfNullPr frmCalendario
  loc_A45CBF: frmCalendario.Show from_stack_1, from_stack_2
  loc_A45CC4: ImpAdLdI4 MemVar_D93028
  loc_A45CC7: LitStr vbNullString
  loc_A45CCA: NeStr
  loc_A45CCC: BranchF loc_A45CEA
  loc_A45CCF: ImpAdLdRf MemVar_D93028
  loc_A45CD2: CDargRef
  loc_A45CD6: FLdPr Me
  loc_A45CD9: VCallAd Control_ID_FechVencMsk
  loc_A45CDC: FStAdFunc var_A8
  loc_A45CDF: FLdPr var_A8
  loc_A45CE2: LateIdSt
  loc_A45CE7: FFree1Ad var_A8
  loc_A45CEA: FLdPr Me
  loc_A45CED: VCallAd Control_ID_FechVencMsk
  loc_A45CF0: CVarAd
  loc_A45CF4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A45CF9: FFree1Var var_B8 = ""
  loc_A45CFC: ExitProcHresult
End Sub

Private Sub CantCtctMsk_UnknownEvent_0 '9C5C00
  'Data Table: 50C14C
  loc_9C5BEC: FLdPr Me
  loc_9C5BEF: VCallAd Control_ID_CantCtctMsk
  loc_9C5BF2: CVarAd
  loc_9C5BF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5BFB: FFree1Var var_94 = ""
  loc_9C5BFE: ExitProcHresult
End Sub

Private Function CantCtctMsk_UnknownEvent_8(arg_C) 'A86B78
  'Data Table: 50C14C
  loc_A86AE8: FLdPr Me
  loc_A86AEB: VCallAd Control_ID_CantCtctMsk
  loc_A86AEE: FStAdFunc var_88
  loc_A86AF1: FLdPr var_88
  loc_A86AF4: LateIdLdVar var_98 DispID_13 -32767
  loc_A86AFB: CBoolVar
  loc_A86AFD: FFree1Ad var_88
  loc_A86B00: FFree1Var var_98 = ""
  loc_A86B03: BranchF loc_A86B76
  loc_A86B06: FLdPr Me
  loc_A86B09: VCallAd Control_ID_CantCtctMsk
  loc_A86B0C: FStAdFunc var_88
  loc_A86B0F: FLdPr var_88
  loc_A86B12: LateIdLdVar var_98 DispID_22 0
  loc_A86B19: PopAd
  loc_A86B1B: LitI2_Byte 0
  loc_A86B1D: LitI2_Byte 0
  loc_A86B1F: FLdRfVar var_98
  loc_A86B22: CStrVarTmp
  loc_A86B23: FStStrNoPop var_9C
  loc_A86B26: LitStr "bimestre"
  loc_A86B29: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A86B2E: FStStrNoPop var_A0
  loc_A86B31: FLdPr Me
  loc_A86B34: MemStStrCopy
  loc_A86B38: FFreeStr var_9C = ""
  loc_A86B3F: FFree1Ad var_88
  loc_A86B42: FFree1Var var_98 = ""
  loc_A86B45: FLdPr Me
  loc_A86B48: MemLdStr global_60
  loc_A86B4B: LitStr vbNullString
  loc_A86B4E: NeStr
  loc_A86B50: BranchF loc_A86B76
  loc_A86B53: FLdPr Me
  loc_A86B56: MemLdStr global_60
  loc_A86B59: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A86B5E: FLdPr Me
  loc_A86B61: VCallAd Control_ID_CantCtctMsk
  loc_A86B64: CVarAd
  loc_A86B68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A86B6D: FFree1Var var_98 = ""
  loc_A86B70: LitI2_Byte &HFF
  loc_A86B72: IStI2 arg_C
  loc_A86B75: ExitProcHresult
  loc_A86B76: ExitProcHresult
End Function

Private Sub CodiConcTxt_GotFocus() '9C6278
  'Data Table: 50C14C
  loc_9C6264: FLdPr Me
  loc_9C6267: VCallAd Control_ID_CodiConcTxt
  loc_9C626A: CVarAd
  loc_9C626E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C6273: FFree1Var var_94 = ""
  loc_9C6276: ExitProcHresult
End Sub

Private Sub CodiConcTxt_LostFocus() 'AC83EC
  'Data Table: 50C14C
  loc_AC82EC: FLdRfVar var_8C
  loc_AC82EF: FLdPr Me
  loc_AC82F2: VCallAd Control_ID_CodiConcTxt
  loc_AC82F5: FStAdFunc var_88
  loc_AC82F8: FLdPr var_88
  loc_AC82FB:  = Me.Text
  loc_AC8300: ILdRf var_8C
  loc_AC8303: LitStr "13021001"
  loc_AC8306: EqStr
  loc_AC8308: FFree1Str var_8C
  loc_AC830B: FFree1Ad var_88
  loc_AC830E: BranchF loc_AC839F
  loc_AC8311: FLdPr Me
  loc_AC8314: VCallAd Control_ID_CantCtctMsk
  loc_AC8317: FStAdFunc var_88
  loc_AC831A: FLdPr var_88
  loc_AC831D: LateIdLdVar var_9C DispID_22 0
  loc_AC8324: PopAd
  loc_AC8326: LitI4 2
  loc_AC832B: ImpAdLdFPR8 MemVar_D9307C
  loc_AC832E: LitI2 400
  loc_AC8331: CR8I2
  loc_AC8332: MulR8
  loc_AC8333: FLdRfVar var_9C
  loc_AC8336: CStrVarTmp
  loc_AC8337: FStStrNoPop var_8C
  loc_AC833A: CR8Str
  loc_AC833C: MulR8
  loc_AC833D: CVarR8
  loc_AC8341: FLdRfVar var_CC
  loc_AC8344: ImpAdCallFPR4  = Round(, )
  loc_AC8349: LitI4 1
  loc_AC834E: LitI4 1
  loc_AC8353: LitVarStr var_DC, "0.00"
  loc_AC8358: FStVarCopyObj var_EC
  loc_AC835B: FLdRfVar var_EC
  loc_AC835E: FLdRfVar var_CC
  loc_AC8361: FLdRfVar var_FC
  loc_AC8364: ImpAdCallFPR4  = Format(, )
  loc_AC8369: FLdRfVar var_FC
  loc_AC836C: CStrVarVal var_100
  loc_AC8370: FLdPr Me
  loc_AC8373: VCallAd Control_ID_ImpoCtctTxt
  loc_AC8376: FStAdFunc var_104
  loc_AC8379: FLdPr var_104
  loc_AC837C: Me.Text = from_stack_1
  loc_AC8381: FFreeStr var_8C = ""
  loc_AC8388: FFreeAd var_88 = ""
  loc_AC838F: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_EC = ""
  loc_AC839C: Branch loc_AC83E8
  loc_AC839F: LitI4 1
  loc_AC83A4: LitI4 1
  loc_AC83A9: LitVarStr var_DC, "0.00"
  loc_AC83AE: FStVarCopyObj var_BC
  loc_AC83B1: FLdRfVar var_BC
  loc_AC83B4: LitVarI2 var_9C, 0
  loc_AC83B9: FLdRfVar var_CC
  loc_AC83BC: ImpAdCallFPR4  = Format(, )
  loc_AC83C1: FLdRfVar var_CC
  loc_AC83C4: CStrVarVal var_8C
  loc_AC83C8: FLdPr Me
  loc_AC83CB: VCallAd Control_ID_ImpoCtctTxt
  loc_AC83CE: FStAdFunc var_88
  loc_AC83D1: FLdPr var_88
  loc_AC83D4: Me.Text = from_stack_1
  loc_AC83D9: FFree1Str var_8C
  loc_AC83DC: FFree1Ad var_88
  loc_AC83DF: FFreeVar var_9C = "": var_BC = ""
  loc_AC83E8: ExitProcHresult
End Sub

Private Sub CodiConcTxt_Validate(Cancel As Boolean) 'AE9584
  'Data Table: 50C14C
  loc_AE9410: FLdRfVar var_8A
  loc_AE9413: FLdPr Me
  loc_AE9416: VCallAd Control_ID_CodiConcTxt
  loc_AE9419: FStAdFunc var_88
  loc_AE941C: FLdPr var_88
  loc_AE941F:  = Me.Enabled
  loc_AE9424: FLdI2 var_8A
  loc_AE9427: FFree1Ad var_88
  loc_AE942A: BranchF loc_AE9582
  loc_AE942D: FLdRfVar var_90
  loc_AE9430: FLdPr Me
  loc_AE9433: VCallAd Control_ID_CodiConcTxt
  loc_AE9436: FStAdFunc var_88
  loc_AE9439: FLdPr var_88
  loc_AE943C:  = Me.Text
  loc_AE9441: ILdRf var_90
  loc_AE9444: LitStr vbNullString
  loc_AE9447: EqStr
  loc_AE9449: FLdRfVar var_98
  loc_AE944C: FLdPr Me
  loc_AE944F: VCallAd Control_ID_CodiConcTxt
  loc_AE9452: FStAdFunc var_94
  loc_AE9455: FLdPr var_94
  loc_AE9458:  = Me.Text
  loc_AE945D: ILdRf var_98
  loc_AE9460: LitStr "0"
  loc_AE9463: EqStr
  loc_AE9465: OrI4
  loc_AE9466: FFreeStr var_90 = ""
  loc_AE946D: FFreeAd var_88 = ""
  loc_AE9474: BranchF loc_AE947C
  loc_AE9477: Call CodiConcCmd_Click()
  loc_AE947C: LitI2_Byte 0
  loc_AE947E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE9483: CVarDate var_B8
  loc_AE9487: FLdRfVar var_C8
  loc_AE948A: ImpAdCallFPR4  = Year()
  loc_AE948F: FLdRfVar var_90
  loc_AE9492: FLdPr Me
  loc_AE9495: VCallAd Control_ID_CodiConcTxt
  loc_AE9498: FStAdFunc var_88
  loc_AE949B: FLdPr var_88
  loc_AE949E:  = Me.Text
  loc_AE94A3: LitI2_Byte &HFF
  loc_AE94A5: LitI2_Byte &HFF
  loc_AE94A7: LitI2_Byte &HFF
  loc_AE94A9: LitI2_Byte 0
  loc_AE94AB: LitI2_Byte 0
  loc_AE94AD: LitI2_Byte &HFF
  loc_AE94AF: LitI2_Byte 0
  loc_AE94B1: LitI2_Byte 0
  loc_AE94B3: LitI2_Byte &HFF
  loc_AE94B5: ILdRf var_90
  loc_AE94B8: FLdRfVar var_C8
  loc_AE94BB: CI2Var
  loc_AE94BC: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE94C1: FStStrNoPop var_98
  loc_AE94C4: FLdPr Me
  loc_AE94C7: MemStStrCopy
  loc_AE94CB: FFreeStr var_90 = ""
  loc_AE94D2: FFree1Ad var_88
  loc_AE94D5: FFreeVar var_B8 = ""
  loc_AE94DC: FLdPr Me
  loc_AE94DF: MemLdStr global_60
  loc_AE94E2: LitStr vbNullString
  loc_AE94E5: NeStr
  loc_AE94E7: BranchF loc_AE9527
  loc_AE94EA: FLdPr Me
  loc_AE94ED: MemLdStr global_60
  loc_AE94F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE94F5: LitStr vbNullString
  loc_AE94F8: FLdPr Me
  loc_AE94FB: VCallAd Control_ID_DetaConcLbl
  loc_AE94FE: FStAdFunc var_88
  loc_AE9501: FLdPr var_88
  loc_AE9504: Me.Caption = from_stack_1
  loc_AE9509: FFree1Ad var_88
  loc_AE950C: FLdPr Me
  loc_AE950F: VCallAd Control_ID_CodiConcTxt
  loc_AE9512: CVarAd
  loc_AE9516: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE951B: FFree1Var var_B8 = ""
  loc_AE951E: LitI2_Byte &HFF
  loc_AE9520: IStI2 Cancel
  loc_AE9523: ExitProcHresult
  loc_AE9524: Branch loc_AE9582
  loc_AE9527: FLdRfVar var_90
  loc_AE952A: FLdPr Me
  loc_AE952D: VCallAd Control_ID_PeriCtctTxt
  loc_AE9530: FStAdFunc var_88
  loc_AE9533: FLdPr var_88
  loc_AE9536:  = Me.Text
  loc_AE953B: FLdRfVar var_98
  loc_AE953E: FLdPr Me
  loc_AE9541: VCallAd Control_ID_CodiConcTxt
  loc_AE9544: FStAdFunc var_94
  loc_AE9547: FLdPr var_94
  loc_AE954A:  = Me.Text
  loc_AE954F: ILdRf var_98
  loc_AE9552: ILdRf var_90
  loc_AE9555: CI2Str
  loc_AE9557: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE955C: FStStrNoPop var_CC
  loc_AE955F: FLdPr Me
  loc_AE9562: VCallAd Control_ID_DetaConcLbl
  loc_AE9565: FStAdFunc var_D0
  loc_AE9568: FLdPr var_D0
  loc_AE956B: Me.Caption = from_stack_1
  loc_AE9570: FFreeStr var_90 = "": var_98 = ""
  loc_AE9579: FFreeAd var_88 = "": var_94 = ""
  loc_AE9582: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'B363E8
  'Data Table: 50C14C
  loc_B3610C: FLdRfVar var_8A
  loc_B3610F: FLdPr Me
  loc_B36112: VCallAd Control_ID_OficinaCbo
  loc_B36115: FStAdFunc var_88
  loc_B36118: FLdPr var_88
  loc_B3611B:  = Me.ListIndex
  loc_B36120: FLdI2 var_8A
  loc_B36123: FStI2 var_8C
  loc_B36126: FFree1Ad var_88
  loc_B36129: FLdI2 var_8C
  loc_B3612C: LitI2_Byte 0
  loc_B3612E: EqI2
  loc_B3612F: BranchF loc_B3613D
  loc_B36132: LitI2_Byte 1
  loc_B36134: CUI1I2
  loc_B36136: ImpAdStUI1 MemVar_D93038
  loc_B3613A: Branch loc_B361B2
  loc_B3613D: FLdI2 var_8C
  loc_B36140: LitI2_Byte 1
  loc_B36142: EqI2
  loc_B36143: BranchF loc_B36151
  loc_B36146: LitI2_Byte 2
  loc_B36148: CUI1I2
  loc_B3614A: ImpAdStUI1 MemVar_D93038
  loc_B3614E: Branch loc_B361B2
  loc_B36151: FLdI2 var_8C
  loc_B36154: LitI2_Byte 2
  loc_B36156: EqI2
  loc_B36157: BranchF loc_B36165
  loc_B3615A: LitI2_Byte 3
  loc_B3615C: CUI1I2
  loc_B3615E: ImpAdStUI1 MemVar_D93038
  loc_B36162: Branch loc_B361B2
  loc_B36165: FLdI2 var_8C
  loc_B36168: LitI2_Byte 3
  loc_B3616A: EqI2
  loc_B3616B: BranchF loc_B36179
  loc_B3616E: LitI2_Byte 4
  loc_B36170: CUI1I2
  loc_B36172: ImpAdStUI1 MemVar_D93038
  loc_B36176: Branch loc_B361B2
  loc_B36179: FLdI2 var_8C
  loc_B3617C: LitI2_Byte 4
  loc_B3617E: EqI2
  loc_B3617F: BranchF loc_B3618D
  loc_B36182: LitI2_Byte 5
  loc_B36184: CUI1I2
  loc_B36186: ImpAdStUI1 MemVar_D93038
  loc_B3618A: Branch loc_B361B2
  loc_B3618D: FLdI2 var_8C
  loc_B36190: LitI2_Byte 5
  loc_B36192: EqI2
  loc_B36193: BranchF loc_B361A1
  loc_B36196: LitI2_Byte 6
  loc_B36198: CUI1I2
  loc_B3619A: ImpAdStUI1 MemVar_D93038
  loc_B3619E: Branch loc_B361B2
  loc_B361A1: FLdI2 var_8C
  loc_B361A4: LitI2_Byte 6
  loc_B361A6: EqI2
  loc_B361A7: BranchF loc_B361B2
  loc_B361AA: LitI2_Byte 7
  loc_B361AC: CUI1I2
  loc_B361AE: ImpAdStUI1 MemVar_D93038
  loc_B361B2: ImpAdLdUI1
  loc_B361B6: CI2UI1
  loc_B361B8: LitI2_Byte 0
  loc_B361BA: NeI2
  loc_B361BB: FLdRfVar var_90
  loc_B361BE: FLdPr Me
  loc_B361C1: VCallAd Control_ID_NumeCtaTxt
  loc_B361C4: FStAdFunc var_88
  loc_B361C7: FLdPr var_88
  loc_B361CA:  = Me.Text
  loc_B361CF: ILdRf var_90
  loc_B361D2: LitStr vbNullString
  loc_B361D5: NeStr
  loc_B361D7: AndI4
  loc_B361D8: FLdRfVar var_98
  loc_B361DB: FLdPr Me
  loc_B361DE: VCallAd Control_ID_NumeCtaTxt
  loc_B361E1: FStAdFunc var_94
  loc_B361E4: FLdPr var_94
  loc_B361E7:  = Me.Text
  loc_B361EC: ILdRf var_98
  loc_B361EF: LitStr "0"
  loc_B361F2: NeStr
  loc_B361F4: AndI4
  loc_B361F5: FFreeStr var_90 = ""
  loc_B361FC: FFreeAd var_88 = ""
  loc_B36203: BranchF loc_B363E7
  loc_B36206: FLdRfVar var_90
  loc_B36209: FLdPr Me
  loc_B3620C: VCallAd Control_ID_NumeCtaTxt
  loc_B3620F: FStAdFunc var_88
  loc_B36212: FLdPr var_88
  loc_B36215:  = Me.Text
  loc_B3621A: FLdPr Me
  loc_B3621D: MemLdRfVar from_stack_1.global_56
  loc_B36220: NewIfNullRf
  loc_B36224: LitStr "Titular"
  loc_B36227: ILdRf var_90
  loc_B3622A: ImpAdLdUI1
  loc_B3622E: CStrI2
  loc_B36230: FStStrNoPop var_98
  loc_B36233: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B36238: FFreeStr var_98 = ""
  loc_B3623F: FFree1Ad var_88
  loc_B36242: BranchF loc_B36367
  loc_B36245: FLdRfVar var_90
  loc_B36248: FLdPr Me
  loc_B3624B: MemLdRfVar from_stack_1.global_56
  loc_B3624E: NewIfNullPr tblPersona
  loc_B36251: from_stack_1v = tblPersona.CucuPersGet()
  loc_B36256: ILdRf var_90
  loc_B36259: FLdPr Me
  loc_B3625C: VCallAd Control_ID_CucuPersLbl
  loc_B3625F: FStAdFunc var_88
  loc_B36262: FLdPr var_88
  loc_B36265: Me.Caption = from_stack_1
  loc_B3626A: FFree1Str var_90
  loc_B3626D: FFree1Ad var_88
  loc_B36270: FLdRfVar var_90
  loc_B36273: FLdPr Me
  loc_B36276: MemLdRfVar from_stack_1.global_56
  loc_B36279: NewIfNullPr tblPersona
  loc_B3627C: from_stack_1v = tblPersona.DetaPersGet()
  loc_B36281: ILdRf var_90
  loc_B36284: FLdPr Me
  loc_B36287: VCallAd Control_ID_DetaPersLbl
  loc_B3628A: FStAdFunc var_88
  loc_B3628D: FLdPr var_88
  loc_B36290: Me.Caption = from_stack_1
  loc_B36295: FFree1Str var_90
  loc_B36298: FFree1Ad var_88
  loc_B3629B: FLdRfVar var_98
  loc_B3629E: FLdPr Me
  loc_B362A1: MemLdRfVar from_stack_1.global_56
  loc_B362A4: NewIfNullPr tblPersona
  loc_B362A7: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B362AC: FLdRfVar var_9C
  loc_B362AF: FLdPr Me
  loc_B362B2: MemLdRfVar from_stack_1.global_56
  loc_B362B5: NewIfNullPr tblPersona
  loc_B362B8: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B362BD: FLdRfVar var_90
  loc_B362C0: FLdPr Me
  loc_B362C3: MemLdRfVar from_stack_1.global_56
  loc_B362C6: NewIfNullPr tblPersona
  loc_B362C9: from_stack_1v = tblPersona.DetaCallGet()
  loc_B362CE: ILdRf var_90
  loc_B362D1: LitStr " "
  loc_B362D4: ConcatStr
  loc_B362D5: CVarStr var_FC
  loc_B362D8: LitVarStr var_CC, vbNullString
  loc_B362DD: FStVarCopyObj var_DC
  loc_B362E0: FLdRfVar var_DC
  loc_B362E3: LitStr "Nro: "
  loc_B362E6: ILdRf var_9C
  loc_B362E9: ConcatStr
  loc_B362EA: CVarStr var_BC
  loc_B362ED: ILdRf var_98
  loc_B362F0: LitStr "0"
  loc_B362F3: NeStr
  loc_B362F5: CVarBoolI2 var_AC
  loc_B362F9: FLdRfVar var_EC
  loc_B362FC: ImpAdCallFPR4  = IIf(, , )
  loc_B36301: FLdRfVar var_EC
  loc_B36304: ConcatVar var_10C
  loc_B36308: LitVarStr var_11C, " "
  loc_B3630D: ConcatVar var_12C
  loc_B36311: FLdRfVar var_130
  loc_B36314: FLdPr Me
  loc_B36317: MemLdRfVar from_stack_1.global_56
  loc_B3631A: NewIfNullPr tblPersona
  loc_B3631D: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B36322: FLdZeroAd var_130
  loc_B36325: CVarStr var_140
  loc_B36328: ConcatVar var_150
  loc_B3632C: CStrVarVal var_154
  loc_B36330: FLdPr Me
  loc_B36333: VCallAd Control_ID_DomiPersLbl
  loc_B36336: FStAdFunc var_88
  loc_B36339: FLdPr var_88
  loc_B3633C: Me.Caption = from_stack_1
  loc_B36341: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B3634C: FFree1Ad var_88
  loc_B3634F: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B36364: Branch loc_B363E7
  loc_B36367: FLdRfVar var_90
  loc_B3636A: FLdPr Me
  loc_B3636D: MemLdRfVar from_stack_1.global_56
  loc_B36370: NewIfNullPr tblPersona
  loc_B36373: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B36378: ILdRf var_90
  loc_B3637B: FLdPr Me
  loc_B3637E: MemStStrCopy
  loc_B36382: FFree1Str var_90
  loc_B36385: FLdPr Me
  loc_B36388: MemLdStr global_60
  loc_B3638B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B36390: LitStr vbNullString
  loc_B36393: FLdPr Me
  loc_B36396: VCallAd Control_ID_CucuPersLbl
  loc_B36399: FStAdFunc var_88
  loc_B3639C: FLdPr var_88
  loc_B3639F: Me.Caption = from_stack_1
  loc_B363A4: FFree1Ad var_88
  loc_B363A7: LitStr vbNullString
  loc_B363AA: FLdPr Me
  loc_B363AD: VCallAd Control_ID_DetaPersLbl
  loc_B363B0: FStAdFunc var_88
  loc_B363B3: FLdPr var_88
  loc_B363B6: Me.Caption = from_stack_1
  loc_B363BB: FFree1Ad var_88
  loc_B363BE: LitStr vbNullString
  loc_B363C1: FLdPr Me
  loc_B363C4: VCallAd Control_ID_DomiPersLbl
  loc_B363C7: FStAdFunc var_88
  loc_B363CA: FLdPr var_88
  loc_B363CD: Me.Caption = from_stack_1
  loc_B363D2: FFree1Ad var_88
  loc_B363D5: FLdPr Me
  loc_B363D8: VCallAd Control_ID_NumeCtaTxt
  loc_B363DB: CVarAd
  loc_B363DF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B363E4: FFree1Var var_BC = ""
  loc_B363E7: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() '9AF904
  'Data Table: 50C14C
  loc_9AF8FC: Call Proc_354_32_B180A8()
  loc_9AF901: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A76520
  'Data Table: 50C14C
  loc_A764B4: FLdPrThis
  loc_A764B5: VCallAd Control_ID_NumeCtaTxt
  loc_A764B8: CVarAd
  loc_A764BC: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A764C1: FFree1Var var_94 = ""
  loc_A764C4: Call Proc_354_32_B180A8()
  loc_A764C9: FLdRfVar var_9A
  loc_A764CC: FLdPr Me
  loc_A764CF: VCallAd Control_ID_ConfirmarCmd
  loc_A764D2: FStAdFunc var_98
  loc_A764D5: FLdPr var_98
  loc_A764D8:  = Me.Enabled
  loc_A764DD: FLdI2 var_9A
  loc_A764E0: LitI2_Byte 0
  loc_A764E2: EqI2
  loc_A764E3: FFree1Ad var_98
  loc_A764E6: BranchF loc_A7651C
  loc_A764E9: LitI4 0
  loc_A764EE: LitI4 0
  loc_A764F3: FLdRfVar var_A0
  loc_A764F6: Redim
  loc_A76500: FLdPr Me
  loc_A76503: VCallAd Control_ID_ConfirmarCmd
  loc_A76506: CVarAd
  loc_A7650A: ParmAry1St
  loc_A76510: FLdRfVar var_A0
  loc_A76513: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A76518: FLdRfVar var_A0
  loc_A7651B: Erase
  loc_A7651C: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B5A60C
  'Data Table: 50C14C
  loc_B5A230: FLdRfVar var_8A
  loc_B5A233: FLdPr Me
  loc_B5A236: VCallAd Control_ID_NumeCtaTxt
  loc_B5A239: FStAdFunc var_88
  loc_B5A23C: FLdPr var_88
  loc_B5A23F:  = Me.Enabled
  loc_B5A244: FLdI2 var_8A
  loc_B5A247: FFree1Ad var_88
  loc_B5A24A: BranchF loc_B5A608
  loc_B5A24D: FLdRfVar var_90
  loc_B5A250: FLdPr Me
  loc_B5A253: VCallAd Control_ID_NumeCtaTxt
  loc_B5A256: FStAdFunc var_88
  loc_B5A259: FLdPr var_88
  loc_B5A25C:  = Me.Text
  loc_B5A261: FLdZeroAd var_90
  loc_B5A264: CVarStr var_A0
  loc_B5A267: FLdRfVar var_B0
  loc_B5A26A: ImpAdCallFPR4  = Trim()
  loc_B5A26F: FLdRfVar var_B0
  loc_B5A272: CStrVarVal var_B4
  loc_B5A276: FLdPr Me
  loc_B5A279: VCallAd Control_ID_NumeCtaTxt
  loc_B5A27C: FStAdFunc var_B8
  loc_B5A27F: FLdPr var_B8
  loc_B5A282: Me.Text = from_stack_1
  loc_B5A287: FFree1Str var_B4
  loc_B5A28A: FFreeAd var_88 = ""
  loc_B5A291: FFreeVar var_A0 = ""
  loc_B5A298: FLdRfVar var_8A
  loc_B5A29B: FLdPr Me
  loc_B5A29E: VCallAd Control_ID_OficinaCbo
  loc_B5A2A1: FStAdFunc var_88
  loc_B5A2A4: FLdPr var_88
  loc_B5A2A7:  = Me.ListIndex
  loc_B5A2AC: FLdI2 var_8A
  loc_B5A2AF: FStI2 var_BA
  loc_B5A2B2: FFree1Ad var_88
  loc_B5A2B5: FLdI2 var_BA
  loc_B5A2B8: LitI2_Byte 0
  loc_B5A2BA: EqI2
  loc_B5A2BB: BranchF loc_B5A2C9
  loc_B5A2BE: LitI2_Byte 1
  loc_B5A2C0: CUI1I2
  loc_B5A2C2: ImpAdStUI1 MemVar_D93038
  loc_B5A2C6: Branch loc_B5A33E
  loc_B5A2C9: FLdI2 var_BA
  loc_B5A2CC: LitI2_Byte 1
  loc_B5A2CE: EqI2
  loc_B5A2CF: BranchF loc_B5A2DD
  loc_B5A2D2: LitI2_Byte 2
  loc_B5A2D4: CUI1I2
  loc_B5A2D6: ImpAdStUI1 MemVar_D93038
  loc_B5A2DA: Branch loc_B5A33E
  loc_B5A2DD: FLdI2 var_BA
  loc_B5A2E0: LitI2_Byte 2
  loc_B5A2E2: EqI2
  loc_B5A2E3: BranchF loc_B5A2F1
  loc_B5A2E6: LitI2_Byte 3
  loc_B5A2E8: CUI1I2
  loc_B5A2EA: ImpAdStUI1 MemVar_D93038
  loc_B5A2EE: Branch loc_B5A33E
  loc_B5A2F1: FLdI2 var_BA
  loc_B5A2F4: LitI2_Byte 3
  loc_B5A2F6: EqI2
  loc_B5A2F7: BranchF loc_B5A305
  loc_B5A2FA: LitI2_Byte 4
  loc_B5A2FC: CUI1I2
  loc_B5A2FE: ImpAdStUI1 MemVar_D93038
  loc_B5A302: Branch loc_B5A33E
  loc_B5A305: FLdI2 var_BA
  loc_B5A308: LitI2_Byte 4
  loc_B5A30A: EqI2
  loc_B5A30B: BranchF loc_B5A319
  loc_B5A30E: LitI2_Byte 5
  loc_B5A310: CUI1I2
  loc_B5A312: ImpAdStUI1 MemVar_D93038
  loc_B5A316: Branch loc_B5A33E
  loc_B5A319: FLdI2 var_BA
  loc_B5A31C: LitI2_Byte 5
  loc_B5A31E: EqI2
  loc_B5A31F: BranchF loc_B5A32D
  loc_B5A322: LitI2_Byte 6
  loc_B5A324: CUI1I2
  loc_B5A326: ImpAdStUI1 MemVar_D93038
  loc_B5A32A: Branch loc_B5A33E
  loc_B5A32D: FLdI2 var_BA
  loc_B5A330: LitI2_Byte 6
  loc_B5A332: EqI2
  loc_B5A333: BranchF loc_B5A33E
  loc_B5A336: LitI2_Byte 7
  loc_B5A338: CUI1I2
  loc_B5A33A: ImpAdStUI1 MemVar_D93038
  loc_B5A33E: FLdRfVar var_90
  loc_B5A341: FLdPr Me
  loc_B5A344: VCallAd Control_ID_NumeCtaTxt
  loc_B5A347: FStAdFunc var_88
  loc_B5A34A: FLdPr var_88
  loc_B5A34D:  = Me.Text
  loc_B5A352: FLdPr Me
  loc_B5A355: MemLdRfVar from_stack_1.global_56
  loc_B5A358: NewIfNullRf
  loc_B5A35C: LitStr "Titular"
  loc_B5A35F: ILdRf var_90
  loc_B5A362: ImpAdLdUI1
  loc_B5A366: CStrI2
  loc_B5A368: FStStrNoPop var_B4
  loc_B5A36B: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B5A370: FFreeStr var_B4 = ""
  loc_B5A377: FFree1Ad var_88
  loc_B5A37A: BranchF loc_B5A49F
  loc_B5A37D: FLdRfVar var_90
  loc_B5A380: FLdPr Me
  loc_B5A383: MemLdRfVar from_stack_1.global_56
  loc_B5A386: NewIfNullPr tblPersona
  loc_B5A389: from_stack_1v = tblPersona.CucuPersGet()
  loc_B5A38E: ILdRf var_90
  loc_B5A391: FLdPr Me
  loc_B5A394: VCallAd Control_ID_CucuPersLbl
  loc_B5A397: FStAdFunc var_88
  loc_B5A39A: FLdPr var_88
  loc_B5A39D: Me.Caption = from_stack_1
  loc_B5A3A2: FFree1Str var_90
  loc_B5A3A5: FFree1Ad var_88
  loc_B5A3A8: FLdRfVar var_90
  loc_B5A3AB: FLdPr Me
  loc_B5A3AE: MemLdRfVar from_stack_1.global_56
  loc_B5A3B1: NewIfNullPr tblPersona
  loc_B5A3B4: from_stack_1v = tblPersona.DetaPersGet()
  loc_B5A3B9: ILdRf var_90
  loc_B5A3BC: FLdPr Me
  loc_B5A3BF: VCallAd Control_ID_DetaPersLbl
  loc_B5A3C2: FStAdFunc var_88
  loc_B5A3C5: FLdPr var_88
  loc_B5A3C8: Me.Caption = from_stack_1
  loc_B5A3CD: FFree1Str var_90
  loc_B5A3D0: FFree1Ad var_88
  loc_B5A3D3: FLdRfVar var_B4
  loc_B5A3D6: FLdPr Me
  loc_B5A3D9: MemLdRfVar from_stack_1.global_56
  loc_B5A3DC: NewIfNullPr tblPersona
  loc_B5A3DF: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B5A3E4: FLdRfVar var_C0
  loc_B5A3E7: FLdPr Me
  loc_B5A3EA: MemLdRfVar from_stack_1.global_56
  loc_B5A3ED: NewIfNullPr tblPersona
  loc_B5A3F0: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B5A3F5: FLdRfVar var_90
  loc_B5A3F8: FLdPr Me
  loc_B5A3FB: MemLdRfVar from_stack_1.global_56
  loc_B5A3FE: NewIfNullPr tblPersona
  loc_B5A401: from_stack_1v = tblPersona.DetaCallGet()
  loc_B5A406: ILdRf var_90
  loc_B5A409: LitStr " "
  loc_B5A40C: ConcatStr
  loc_B5A40D: CVarStr var_100
  loc_B5A410: LitVarStr var_E0, vbNullString
  loc_B5A415: FStVarCopyObj var_B0
  loc_B5A418: FLdRfVar var_B0
  loc_B5A41B: LitStr "Nro: "
  loc_B5A41E: ILdRf var_C0
  loc_B5A421: ConcatStr
  loc_B5A422: CVarStr var_A0
  loc_B5A425: ILdRf var_B4
  loc_B5A428: LitStr "0"
  loc_B5A42B: NeStr
  loc_B5A42D: CVarBoolI2 var_D0
  loc_B5A431: FLdRfVar var_F0
  loc_B5A434: ImpAdCallFPR4  = IIf(, , )
  loc_B5A439: FLdRfVar var_F0
  loc_B5A43C: ConcatVar var_110
  loc_B5A440: LitVarStr var_120, " "
  loc_B5A445: ConcatVar var_130
  loc_B5A449: FLdRfVar var_134
  loc_B5A44C: FLdPr Me
  loc_B5A44F: MemLdRfVar from_stack_1.global_56
  loc_B5A452: NewIfNullPr tblPersona
  loc_B5A455: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B5A45A: FLdZeroAd var_134
  loc_B5A45D: CVarStr var_144
  loc_B5A460: ConcatVar var_154
  loc_B5A464: CStrVarVal var_158
  loc_B5A468: FLdPr Me
  loc_B5A46B: VCallAd Control_ID_DomiPersLbl
  loc_B5A46E: FStAdFunc var_88
  loc_B5A471: FLdPr var_88
  loc_B5A474: Me.Caption = from_stack_1
  loc_B5A479: FFreeStr var_90 = "": var_B4 = "": var_C0 = ""
  loc_B5A484: FFree1Ad var_88
  loc_B5A487: FFreeVar var_D0 = "": var_A0 = "": var_B0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = ""
  loc_B5A49C: Branch loc_B5A525
  loc_B5A49F: FLdRfVar var_90
  loc_B5A4A2: FLdPr Me
  loc_B5A4A5: MemLdRfVar from_stack_1.global_56
  loc_B5A4A8: NewIfNullPr tblPersona
  loc_B5A4AB: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B5A4B0: ILdRf var_90
  loc_B5A4B3: FLdPr Me
  loc_B5A4B6: MemStStrCopy
  loc_B5A4BA: FFree1Str var_90
  loc_B5A4BD: FLdPr Me
  loc_B5A4C0: MemLdStr global_60
  loc_B5A4C3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5A4C8: LitStr vbNullString
  loc_B5A4CB: FLdPr Me
  loc_B5A4CE: VCallAd Control_ID_CucuPersLbl
  loc_B5A4D1: FStAdFunc var_88
  loc_B5A4D4: FLdPr var_88
  loc_B5A4D7: Me.Caption = from_stack_1
  loc_B5A4DC: FFree1Ad var_88
  loc_B5A4DF: LitStr vbNullString
  loc_B5A4E2: FLdPr Me
  loc_B5A4E5: VCallAd Control_ID_DetaPersLbl
  loc_B5A4E8: FStAdFunc var_88
  loc_B5A4EB: FLdPr var_88
  loc_B5A4EE: Me.Caption = from_stack_1
  loc_B5A4F3: FFree1Ad var_88
  loc_B5A4F6: LitStr vbNullString
  loc_B5A4F9: FLdPr Me
  loc_B5A4FC: VCallAd Control_ID_DomiPersLbl
  loc_B5A4FF: FStAdFunc var_88
  loc_B5A502: FLdPr var_88
  loc_B5A505: Me.Caption = from_stack_1
  loc_B5A50A: FFree1Ad var_88
  loc_B5A50D: FLdPr Me
  loc_B5A510: VCallAd Control_ID_NumeCtaTxt
  loc_B5A513: CVarAd
  loc_B5A517: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5A51C: FFree1Var var_A0 = ""
  loc_B5A51F: LitI2_Byte &HFF
  loc_B5A521: IStI2 Cancel
  loc_B5A524: ExitProcHresult
  loc_B5A525: LitStr "Municipalidad de Guaymallén"
  loc_B5A528: LitStr "Municipalidad de Guaymallén"
  loc_B5A52B: EqStr
  loc_B5A52D: BranchF loc_B5A608
  loc_B5A530: ImpAdLdUI1
  loc_B5A534: CI2UI1
  loc_B5A536: LitI2_Byte 2
  loc_B5A538: EqI2
  loc_B5A539: BranchF loc_B5A59C
  loc_B5A53C: FLdRfVar var_90
  loc_B5A53F: FLdPr Me
  loc_B5A542: VCallAd Control_ID_NumeCtaTxt
  loc_B5A545: FStAdFunc var_88
  loc_B5A548: FLdPr var_88
  loc_B5A54B:  = Me.Text
  loc_B5A550: ILdRf var_90
  loc_B5A553: ImpAdCallI2 Proc_18_117_A5E6FC()
  loc_B5A558: FStStrNoPop var_B4
  loc_B5A55B: FLdPr Me
  loc_B5A55E: MemStStrCopy
  loc_B5A562: FFreeStr var_90 = ""
  loc_B5A569: FFree1Ad var_88
  loc_B5A56C: FLdPr Me
  loc_B5A56F: MemLdStr global_60
  loc_B5A572: LitStr vbNullString
  loc_B5A575: NeStr
  loc_B5A577: BranchF loc_B5A59C
  loc_B5A57A: FLdPr Me
  loc_B5A57D: MemLdStr global_60
  loc_B5A580: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5A585: FLdPr Me
  loc_B5A588: VCallAd Control_ID_NumeCtaTxt
  loc_B5A58B: CVarAd
  loc_B5A58F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5A594: FFree1Var var_A0 = ""
  loc_B5A597: LitI2_Byte &HFF
  loc_B5A599: IStI2 Cancel
  loc_B5A59C: ImpAdLdUI1
  loc_B5A5A0: CI2UI1
  loc_B5A5A2: LitI2_Byte 3
  loc_B5A5A4: EqI2
  loc_B5A5A5: BranchF loc_B5A608
  loc_B5A5A8: FLdRfVar var_90
  loc_B5A5AB: FLdPr Me
  loc_B5A5AE: VCallAd Control_ID_NumeCtaTxt
  loc_B5A5B1: FStAdFunc var_88
  loc_B5A5B4: FLdPr var_88
  loc_B5A5B7:  = Me.Text
  loc_B5A5BC: ILdRf var_90
  loc_B5A5BF: ImpAdCallI2 Proc_18_102_AA2D00()
  loc_B5A5C4: FStStrNoPop var_B4
  loc_B5A5C7: FLdPr Me
  loc_B5A5CA: MemStStrCopy
  loc_B5A5CE: FFreeStr var_90 = ""
  loc_B5A5D5: FFree1Ad var_88
  loc_B5A5D8: FLdPr Me
  loc_B5A5DB: MemLdStr global_60
  loc_B5A5DE: LitStr vbNullString
  loc_B5A5E1: NeStr
  loc_B5A5E3: BranchF loc_B5A608
  loc_B5A5E6: FLdPr Me
  loc_B5A5E9: MemLdStr global_60
  loc_B5A5EC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5A5F1: FLdPr Me
  loc_B5A5F4: VCallAd Control_ID_NumeCtaTxt
  loc_B5A5F7: CVarAd
  loc_B5A5FB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B5A600: FFree1Var var_A0 = ""
  loc_B5A603: LitI2_Byte &HFF
  loc_B5A605: IStI2 Cancel
  loc_B5A608: ExitProcHresult
End Sub

Private Sub CodiConcCmd_Click() 'AB909C
  'Data Table: 50C14C
  loc_AB8FB0: LitI2_Byte 0
  loc_AB8FB2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB8FB7: CVarDate var_A4
  loc_AB8FBB: FLdRfVar var_B4
  loc_AB8FBE: ImpAdCallFPR4  = Year()
  loc_AB8FC3: FLdRfVar var_B4
  loc_AB8FC6: CI2Var
  loc_AB8FC7: ImpAdLdRf MemVar_D947E0
  loc_AB8FCA: NewIfNullPr dlgBuscarConcepto
  loc_AB8FCD: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AB8FD2: FFreeVar var_A4 = ""
  loc_AB8FD9: LitVar_Missing var_C4
  loc_AB8FDC: PopAdLdVar
  loc_AB8FDD: LitVarI4
  loc_AB8FE5: PopAdLdVar
  loc_AB8FE6: ImpAdLdRf MemVar_D947E0
  loc_AB8FE9: NewIfNullPr dlgBuscarConcepto
  loc_AB8FEC: dlgBuscarConcepto.Show from_stack_1, from_stack_2
  loc_AB8FF1: FLdRfVar var_CC
  loc_AB8FF4: FLdRfVar var_C8
  loc_AB8FF7: ImpAdLdRf MemVar_D947E0
  loc_AB8FFA: NewIfNullPr dlgBuscarConcepto
  loc_AB8FFD: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB9002: FLdPr var_C8
  loc_AB9005: from_stack_1 = clsconcepto.RecordCount
  loc_AB900A: ILdRf var_CC
  loc_AB900D: LitI4 0
  loc_AB9012: GtI4
  loc_AB9013: FFree1Ad var_C8
  loc_AB9016: BranchF loc_AB9087
  loc_AB9019: FLdRfVar var_D0
  loc_AB901C: FLdRfVar var_C8
  loc_AB901F: ImpAdLdRf MemVar_D947E0
  loc_AB9022: NewIfNullPr dlgBuscarConcepto
  loc_AB9025: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB902A: FLdPr var_C8
  loc_AB902D: from_stack_1 = clsconcepto.CodiConc
  loc_AB9032: ILdRf var_D0
  loc_AB9035: FLdPr Me
  loc_AB9038: VCallAd Control_ID_CodiConcTxt
  loc_AB903B: FStAdFunc var_D4
  loc_AB903E: FLdPr var_D4
  loc_AB9041: Me.Text = from_stack_1
  loc_AB9046: FFree1Str var_D0
  loc_AB9049: FFreeAd var_C8 = ""
  loc_AB9050: FLdRfVar var_D0
  loc_AB9053: FLdRfVar var_C8
  loc_AB9056: ImpAdLdRf MemVar_D947E0
  loc_AB9059: NewIfNullPr dlgBuscarConcepto
  loc_AB905C: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AB9061: FLdPr var_C8
  loc_AB9064: from_stack_1 = clsconcepto.DetaConc
  loc_AB9069: ILdRf var_D0
  loc_AB906C: FLdPr Me
  loc_AB906F: VCallAd Control_ID_DetaConcLbl
  loc_AB9072: FStAdFunc var_D4
  loc_AB9075: FLdPr var_D4
  loc_AB9078: Me.Caption = from_stack_1
  loc_AB907D: FFree1Str var_D0
  loc_AB9080: FFreeAd var_C8 = ""
  loc_AB9087: FLdPr Me
  loc_AB908A: VCallAd Control_ID_CodiConcTxt
  loc_AB908D: CVarAd
  loc_AB9091: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB9096: FFree1Var var_A4 = ""
  loc_AB9099: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'C1ABF0
  'Data Table: 50C14C
  loc_C1A1E8: LitStr vbNullString
  loc_C1A1EB: FLdPr Me
  loc_C1A1EE: MemStStrCopy
  loc_C1A1F2: LitI2_Byte 0
  loc_C1A1F4: PopTmpLdAd2 var_8C
  loc_C1A1F7: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_C1A1FC: FLdPr Me
  loc_C1A1FF: MemLdStr global_60
  loc_C1A202: LitStr vbNullString
  loc_C1A205: NeStr
  loc_C1A207: BranchF loc_C1A20B
  loc_C1A20A: ExitProcHresult
  loc_C1A20B: LitI2_Byte 0
  loc_C1A20D: PopTmpLdAd2 var_8C
  loc_C1A210: Call FeveCtctMsk_UnknownEvent_8()
  loc_C1A215: FLdPr Me
  loc_C1A218: MemLdStr global_60
  loc_C1A21B: LitStr vbNullString
  loc_C1A21E: NeStr
  loc_C1A220: BranchF loc_C1A224
  loc_C1A223: ExitProcHresult
  loc_C1A224: LitI2_Byte 0
  loc_C1A226: PopTmpLdAd2 var_8C
  loc_C1A229: Call PeriCtctTxt_Validate(from_stack_1v)
  loc_C1A22E: FLdPr Me
  loc_C1A231: MemLdStr global_60
  loc_C1A234: LitStr vbNullString
  loc_C1A237: NeStr
  loc_C1A239: BranchF loc_C1A23D
  loc_C1A23C: ExitProcHresult
  loc_C1A23D: LitI2_Byte 0
  loc_C1A23F: PopTmpLdAd2 var_8C
  loc_C1A242: Call BimeCtct_Validate(from_stack_1v)
  loc_C1A247: FLdPr Me
  loc_C1A24A: MemLdStr global_60
  loc_C1A24D: LitStr vbNullString
  loc_C1A250: NeStr
  loc_C1A252: BranchF loc_C1A256
  loc_C1A255: ExitProcHresult
  loc_C1A256: LitI2_Byte 0
  loc_C1A258: PopTmpLdAd2 var_8C
  loc_C1A25B: Call CodiConcTxt_Validate(from_stack_1v)
  loc_C1A260: FLdPr Me
  loc_C1A263: MemLdStr global_60
  loc_C1A266: LitStr vbNullString
  loc_C1A269: NeStr
  loc_C1A26B: BranchF loc_C1A26F
  loc_C1A26E: ExitProcHresult
  loc_C1A26F: LitI2_Byte 0
  loc_C1A271: PopTmpLdAd2 var_8C
  loc_C1A274: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_C1A279: FLdPr Me
  loc_C1A27C: MemLdStr global_60
  loc_C1A27F: LitStr vbNullString
  loc_C1A282: NeStr
  loc_C1A284: BranchF loc_C1A288
  loc_C1A287: ExitProcHresult
  loc_C1A288: LitVarStr var_9C, "##/##/####"
  loc_C1A28D: PopAdLdVar
  loc_C1A28E: FLdPr Me
  loc_C1A291: VCallAd Control_ID_FechVencMsk
  loc_C1A294: FStAdFunc var_B0
  loc_C1A297: FLdPr var_B0
  loc_C1A29A: LateIdSt
  loc_C1A29F: FFree1Ad var_B0
  loc_C1A2A2: LitVarStr var_9C, vbNullString
  loc_C1A2A7: PopAdLdVar
  loc_C1A2A8: FLdPr Me
  loc_C1A2AB: VCallAd Control_ID_FeveCtctMsk
  loc_C1A2AE: FStAdFunc var_B0
  loc_C1A2B1: FLdPr var_B0
  loc_C1A2B4: LateIdSt
  loc_C1A2B9: FFree1Ad var_B0
  loc_C1A2BC: FLdRfVar var_8C
  loc_C1A2BF: FLdPr Me
  loc_C1A2C2: VCallAd Control_ID_OficinaCbo
  loc_C1A2C5: FStAdFunc var_B0
  loc_C1A2C8: FLdPr var_B0
  loc_C1A2CB:  = Me.ListIndex
  loc_C1A2D0: FLdI2 var_8C
  loc_C1A2D3: FStI2 var_B2
  loc_C1A2D6: FFree1Ad var_B0
  loc_C1A2D9: FLdI2 var_B2
  loc_C1A2DC: LitI2_Byte 0
  loc_C1A2DE: EqI2
  loc_C1A2DF: BranchF loc_C1A2ED
  loc_C1A2E2: LitI2_Byte 1
  loc_C1A2E4: CUI1I2
  loc_C1A2E6: ImpAdStUI1 MemVar_D93038
  loc_C1A2EA: Branch loc_C1A362
  loc_C1A2ED: FLdI2 var_B2
  loc_C1A2F0: LitI2_Byte 1
  loc_C1A2F2: EqI2
  loc_C1A2F3: BranchF loc_C1A301
  loc_C1A2F6: LitI2_Byte 2
  loc_C1A2F8: CUI1I2
  loc_C1A2FA: ImpAdStUI1 MemVar_D93038
  loc_C1A2FE: Branch loc_C1A362
  loc_C1A301: FLdI2 var_B2
  loc_C1A304: LitI2_Byte 2
  loc_C1A306: EqI2
  loc_C1A307: BranchF loc_C1A315
  loc_C1A30A: LitI2_Byte 3
  loc_C1A30C: CUI1I2
  loc_C1A30E: ImpAdStUI1 MemVar_D93038
  loc_C1A312: Branch loc_C1A362
  loc_C1A315: FLdI2 var_B2
  loc_C1A318: LitI2_Byte 3
  loc_C1A31A: EqI2
  loc_C1A31B: BranchF loc_C1A329
  loc_C1A31E: LitI2_Byte 4
  loc_C1A320: CUI1I2
  loc_C1A322: ImpAdStUI1 MemVar_D93038
  loc_C1A326: Branch loc_C1A362
  loc_C1A329: FLdI2 var_B2
  loc_C1A32C: LitI2_Byte 4
  loc_C1A32E: EqI2
  loc_C1A32F: BranchF loc_C1A33D
  loc_C1A332: LitI2_Byte 5
  loc_C1A334: CUI1I2
  loc_C1A336: ImpAdStUI1 MemVar_D93038
  loc_C1A33A: Branch loc_C1A362
  loc_C1A33D: FLdI2 var_B2
  loc_C1A340: LitI2_Byte 5
  loc_C1A342: EqI2
  loc_C1A343: BranchF loc_C1A351
  loc_C1A346: LitI2_Byte 6
  loc_C1A348: CUI1I2
  loc_C1A34A: ImpAdStUI1 MemVar_D93038
  loc_C1A34E: Branch loc_C1A362
  loc_C1A351: FLdI2 var_B2
  loc_C1A354: LitI2_Byte 6
  loc_C1A356: EqI2
  loc_C1A357: BranchF loc_C1A362
  loc_C1A35A: LitI2_Byte 7
  loc_C1A35C: CUI1I2
  loc_C1A35E: ImpAdStUI1 MemVar_D93038
  loc_C1A362: FLdPr Me
  loc_C1A365: VCallAd Control_ID_CantCtctMsk
  loc_C1A368: FStAdFunc var_B0
  loc_C1A36B: FLdPr var_B0
  loc_C1A36E: LateIdLdVar var_C4 DispID_22 0
  loc_C1A375: CStrVarTmp
  loc_C1A376: FStStrNoPop var_C8
  loc_C1A379: CI2Str
  loc_C1A37B: LitI2_Byte 1
  loc_C1A37D: EqI2
  loc_C1A37E: FFree1Str var_C8
  loc_C1A381: FFree1Ad var_B0
  loc_C1A384: FFree1Var var_C4 = ""
  loc_C1A387: BranchF loc_C1A52A
  loc_C1A38A: FLdRfVar var_CC
  loc_C1A38D: FLdRfVar var_C8
  loc_C1A390: FLdPr Me
  loc_C1A393: VCallAd Control_ID_PeriCtctTxt
  loc_C1A396: FStAdFunc var_B0
  loc_C1A399: FLdPr var_B0
  loc_C1A39C:  = Me.Text
  loc_C1A3A1: ILdRf var_C8
  loc_C1A3A4: CI2Str
  loc_C1A3A6: FLdPr Me
  loc_C1A3A9: MemLdRfVar from_stack_1.global_52
  loc_C1A3AC: NewIfNullPr clsctacte
  loc_C1A3AF: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_C1A3B4: ILdRf var_CC
  loc_C1A3B7: FStR4 var_88
  loc_C1A3BA: FFree1Str var_C8
  loc_C1A3BD: FFree1Ad var_B0
  loc_C1A3C0: FLdRfVar var_C8
  loc_C1A3C3: FLdPr Me
  loc_C1A3C6: VCallAd Control_ID_NumeCtaTxt
  loc_C1A3C9: FStAdFunc var_B0
  loc_C1A3CC: FLdPr var_B0
  loc_C1A3CF:  = Me.Text
  loc_C1A3D4: FLdRfVar var_D4
  loc_C1A3D7: FLdPr Me
  loc_C1A3DA: VCallAd Control_ID_PeriCtctTxt
  loc_C1A3DD: FStAdFunc var_D0
  loc_C1A3E0: FLdPr var_D0
  loc_C1A3E3:  = Me.Text
  loc_C1A3E8: FLdRfVar var_DC
  loc_C1A3EB: FLdPr Me
  loc_C1A3EE: VCallAd Control_ID_BimeCtct
  loc_C1A3F1: FStAdFunc var_D8
  loc_C1A3F4: FLdPr var_D8
  loc_C1A3F7:  = Me.Text
  loc_C1A3FC: LitI2_Byte 0
  loc_C1A3FE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1A403: FStFPR8 var_138
  loc_C1A406: FLdPr Me
  loc_C1A409: VCallAd Control_ID_FeveCtctMsk
  loc_C1A40C: FStAdFunc var_E0
  loc_C1A40F: FLdPr var_E0
  loc_C1A412: LateIdLdVar var_C4 DispID_22 0
  loc_C1A419: PopAd
  loc_C1A41B: LitI2_Byte 0
  loc_C1A41D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1A422: CVarDate var_F0
  loc_C1A426: FLdRfVar var_100
  loc_C1A429: ImpAdCallFPR4  = Year()
  loc_C1A42E: FLdRfVar var_108
  loc_C1A431: FLdPr Me
  loc_C1A434: VCallAd Control_ID_CodiConcTxt
  loc_C1A437: FStAdFunc var_104
  loc_C1A43A: FLdPr var_104
  loc_C1A43D:  = Me.Text
  loc_C1A442: FLdRfVar var_110
  loc_C1A445: FLdPr Me
  loc_C1A448: VCallAd Control_ID_ExpeCtctTxt
  loc_C1A44B: FStAdFunc var_10C
  loc_C1A44E: FLdPr var_10C
  loc_C1A451:  = Me.Text
  loc_C1A456: FLdRfVar var_118
  loc_C1A459: FLdPr Me
  loc_C1A45C: VCallAd Control_ID_DetaCtctTxt
  loc_C1A45F: FStAdFunc var_114
  loc_C1A462: FLdPr var_114
  loc_C1A465:  = Me.Text
  loc_C1A46A: FLdRfVar var_120
  loc_C1A46D: FLdPr Me
  loc_C1A470: VCallAd Control_ID_ImpoCtctTxt
  loc_C1A473: FStAdFunc var_11C
  loc_C1A476: FLdPr var_11C
  loc_C1A479:  = Me.Text
  loc_C1A47E: LitI2_Byte 0
  loc_C1A480: CR8I2
  loc_C1A481: PopFPR8
  loc_C1A482: ILdRf var_120
  loc_C1A485: CR8Str
  loc_C1A487: PopFPR8
  loc_C1A488: ILdRf var_118
  loc_C1A48B: LitI4 0
  loc_C1A490: LitI2_Byte 0
  loc_C1A492: LitStr vbNullString
  loc_C1A495: ILdRf var_110
  loc_C1A498: LitI2_Byte 1
  loc_C1A49A: CUI1I2
  loc_C1A49C: LitI4 0
  loc_C1A4A1: LitI2_Byte 0
  loc_C1A4A3: LitI4 0
  loc_C1A4A8: ILdRf var_108
  loc_C1A4AB: FLdRfVar var_100
  loc_C1A4AE: CI2Var
  loc_C1A4AF: LitI2_Byte 0
  loc_C1A4B1: LitStr vbNullString
  loc_C1A4B4: FLdRfVar var_C4
  loc_C1A4B7: CStrVarTmp
  loc_C1A4B8: CVarStr var_130
  loc_C1A4BB: PopAdLdVar
  loc_C1A4BC: FLdFPR8 var_138
  loc_C1A4BF: CVarDate var_AC
  loc_C1A4C3: PopAdLdVar
  loc_C1A4C4: LitStr "Aforos Varios"
  loc_C1A4C7: LitI4 0
  loc_C1A4CC: LitI2_Byte 0
  loc_C1A4CE: LitI2_Byte 0
  loc_C1A4D0: LitI2_Byte 0
  loc_C1A4D2: CUI1I2
  loc_C1A4D4: LitI2_Byte 1
  loc_C1A4D6: ILdRf var_88
  loc_C1A4D9: ILdRf var_DC
  loc_C1A4DC: CI2Str
  loc_C1A4DE: ILdRf var_D4
  loc_C1A4E1: CI2Str
  loc_C1A4E3: ILdRf var_C8
  loc_C1A4E6: ImpAdLdUI1
  loc_C1A4EA: FLdPr Me
  loc_C1A4ED: MemLdRfVar from_stack_1.global_52
  loc_C1A4F0: NewIfNullPr clsctacte
  loc_C1A4F3: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C1A4F8: FFreeStr var_C8 = "": var_D4 = "": var_DC = "": var_108 = "": var_110 = "": var_118 = ""
  loc_C1A509: FFreeAd var_B0 = "": var_D0 = "": var_D8 = "": var_E0 = "": var_104 = "": var_10C = "": var_114 = ""
  loc_C1A51C: FFreeVar var_C4 = "": var_F0 = "": var_130 = ""
  loc_C1A527: Branch loc_C1A99E
  loc_C1A52A: FLdPr Me
  loc_C1A52D: VCallAd Control_ID_CantCtctMsk
  loc_C1A530: FStAdFunc var_B0
  loc_C1A533: FLdPr var_B0
  loc_C1A536: LateIdLdVar var_C4 DispID_22 0
  loc_C1A53D: CStrVarTmp
  loc_C1A53E: FStStrNoPop var_C8
  loc_C1A541: CI2Str
  loc_C1A543: LitI2_Byte 1
  loc_C1A545: GtI2
  loc_C1A546: FFree1Str var_C8
  loc_C1A549: FFree1Ad var_B0
  loc_C1A54C: FFree1Var var_C4 = ""
  loc_C1A54F: BranchF loc_C1A99E
  loc_C1A552: LitI2_Byte 1
  loc_C1A554: FLdRfVar var_8A
  loc_C1A557: FLdPr Me
  loc_C1A55A: VCallAd Control_ID_CantCtctMsk
  loc_C1A55D: FStAdFunc var_B0
  loc_C1A560: FLdPr var_B0
  loc_C1A563: LateIdLdVar var_C4 DispID_22 0
  loc_C1A56A: CStrVarTmp
  loc_C1A56B: FStStrNoPop var_C8
  loc_C1A56E: CI2Str
  loc_C1A570: FFree1Str var_C8
  loc_C1A573: FFree1Ad var_B0
  loc_C1A576: FFree1Var var_C4 = ""
  loc_C1A579: ForI2 var_13C
  loc_C1A57F: FLdRfVar var_CC
  loc_C1A582: FLdRfVar var_C8
  loc_C1A585: FLdPr Me
  loc_C1A588: VCallAd Control_ID_PeriCtctTxt
  loc_C1A58B: FStAdFunc var_B0
  loc_C1A58E: FLdPr var_B0
  loc_C1A591:  = Me.Text
  loc_C1A596: ILdRf var_C8
  loc_C1A599: CI2Str
  loc_C1A59B: FLdPr Me
  loc_C1A59E: MemLdRfVar from_stack_1.global_52
  loc_C1A5A1: NewIfNullPr clsctacte
  loc_C1A5A4: from_stack_2v = clsctacte.NumeradorCtaCte(from_stack_1v)
  loc_C1A5A9: ILdRf var_CC
  loc_C1A5AC: FStR4 var_88
  loc_C1A5AF: FFree1Str var_C8
  loc_C1A5B2: FFree1Ad var_B0
  loc_C1A5B5: FLdRfVar var_C8
  loc_C1A5B8: FLdPr Me
  loc_C1A5BB: VCallAd Control_ID_NumeCtaTxt
  loc_C1A5BE: FStAdFunc var_B0
  loc_C1A5C1: FLdPr var_B0
  loc_C1A5C4:  = Me.Text
  loc_C1A5C9: FLdRfVar var_D4
  loc_C1A5CC: FLdPr Me
  loc_C1A5CF: VCallAd Control_ID_PeriCtctTxt
  loc_C1A5D2: FStAdFunc var_D0
  loc_C1A5D5: FLdPr var_D0
  loc_C1A5D8:  = Me.Text
  loc_C1A5DD: FLdRfVar var_DC
  loc_C1A5E0: FLdPr Me
  loc_C1A5E3: VCallAd Control_ID_BimeCtct
  loc_C1A5E6: FStAdFunc var_D8
  loc_C1A5E9: FLdPr var_D8
  loc_C1A5EC:  = Me.Text
  loc_C1A5F1: LitI2_Byte 0
  loc_C1A5F3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1A5F8: FStFPR8 var_138
  loc_C1A5FB: FLdPr Me
  loc_C1A5FE: VCallAd Control_ID_FeveCtctMsk
  loc_C1A601: FStAdFunc var_E0
  loc_C1A604: FLdPr var_E0
  loc_C1A607: LateIdLdVar var_C4 DispID_15 0
  loc_C1A60E: PopAd
  loc_C1A610: LitI2_Byte 0
  loc_C1A612: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1A617: CVarDate var_F0
  loc_C1A61B: FLdRfVar var_100
  loc_C1A61E: ImpAdCallFPR4  = Year()
  loc_C1A623: FLdRfVar var_108
  loc_C1A626: FLdPr Me
  loc_C1A629: VCallAd Control_ID_CodiConcTxt
  loc_C1A62C: FStAdFunc var_104
  loc_C1A62F: FLdPr var_104
  loc_C1A632:  = Me.Text
  loc_C1A637: FLdRfVar var_110
  loc_C1A63A: FLdPr Me
  loc_C1A63D: VCallAd Control_ID_ExpeCtctTxt
  loc_C1A640: FStAdFunc var_10C
  loc_C1A643: FLdPr var_10C
  loc_C1A646:  = Me.Text
  loc_C1A64B: FLdRfVar var_118
  loc_C1A64E: FLdPr Me
  loc_C1A651: VCallAd Control_ID_DetaCtctTxt
  loc_C1A654: FStAdFunc var_114
  loc_C1A657: FLdPr var_114
  loc_C1A65A:  = Me.Text
  loc_C1A65F: FLdRfVar var_120
  loc_C1A662: FLdPr Me
  loc_C1A665: VCallAd Control_ID_ImpoCtctTxt
  loc_C1A668: FStAdFunc var_11C
  loc_C1A66B: FLdPr var_11C
  loc_C1A66E:  = Me.Text
  loc_C1A673: LitI2_Byte 0
  loc_C1A675: CR8I2
  loc_C1A676: PopFPR8
  loc_C1A677: ILdRf var_120
  loc_C1A67A: CR8Str
  loc_C1A67C: PopFPR8
  loc_C1A67D: ILdRf var_118
  loc_C1A680: LitI4 0
  loc_C1A685: LitI2_Byte 0
  loc_C1A687: LitStr vbNullString
  loc_C1A68A: ILdRf var_110
  loc_C1A68D: LitI2_Byte 1
  loc_C1A68F: CUI1I2
  loc_C1A691: LitI4 0
  loc_C1A696: LitI2_Byte 0
  loc_C1A698: LitI4 0
  loc_C1A69D: ILdRf var_108
  loc_C1A6A0: FLdRfVar var_100
  loc_C1A6A3: CI2Var
  loc_C1A6A4: LitI2_Byte 0
  loc_C1A6A6: LitStr vbNullString
  loc_C1A6A9: FLdRfVar var_C4
  loc_C1A6AC: CStrVarTmp
  loc_C1A6AD: CVarStr var_130
  loc_C1A6B0: PopAdLdVar
  loc_C1A6B1: FLdFPR8 var_138
  loc_C1A6B4: CVarDate var_AC
  loc_C1A6B8: PopAdLdVar
  loc_C1A6B9: LitStr "Aforos Varios"
  loc_C1A6BC: LitI4 0
  loc_C1A6C1: LitI2_Byte 0
  loc_C1A6C3: LitI2_Byte 0
  loc_C1A6C5: LitI2_Byte 0
  loc_C1A6C7: CUI1I2
  loc_C1A6C9: LitI2_Byte 1
  loc_C1A6CB: ILdRf var_88
  loc_C1A6CE: ILdRf var_DC
  loc_C1A6D1: CI2Str
  loc_C1A6D3: ILdRf var_D4
  loc_C1A6D6: CI2Str
  loc_C1A6D8: ILdRf var_C8
  loc_C1A6DB: ImpAdLdUI1
  loc_C1A6DF: FLdPr Me
  loc_C1A6E2: MemLdRfVar from_stack_1.global_52
  loc_C1A6E5: NewIfNullPr clsctacte
  loc_C1A6E8: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C1A6ED: FFreeStr var_C8 = "": var_D4 = "": var_DC = "": var_108 = "": var_110 = "": var_118 = ""
  loc_C1A6FE: FFreeAd var_B0 = "": var_D0 = "": var_D8 = "": var_E0 = "": var_104 = "": var_10C = "": var_114 = ""
  loc_C1A711: FFreeVar var_C4 = "": var_F0 = "": var_130 = ""
  loc_C1A71C: FLdRfVar var_8C
  loc_C1A71F: FLdPr Me
  loc_C1A722: VCallAd Control_ID_OptMensual
  loc_C1A725: FStAdFunc var_B0
  loc_C1A728: FLdPr var_B0
  loc_C1A72B:  = Me.Value
  loc_C1A730: FLdI2 var_8C
  loc_C1A733: LitI2_Byte &HFF
  loc_C1A735: EqI2
  loc_C1A736: FFree1Ad var_B0
  loc_C1A739: BranchF loc_C1A7F8
  loc_C1A73C: FLdPr Me
  loc_C1A73F: VCallAd Control_ID_FeveCtctMsk
  loc_C1A742: FStAdFunc var_B0
  loc_C1A745: FLdPr var_B0
  loc_C1A748: LateIdLdVar var_C4 DispID_15 0
  loc_C1A74F: CStrVarTmp
  loc_C1A750: CVarStr var_F0
  loc_C1A753: FLdRfVar var_100
  loc_C1A756: ImpAdCallFPR4  = Year()
  loc_C1A75B: FLdPr Me
  loc_C1A75E: VCallAd Control_ID_FeveCtctMsk
  loc_C1A761: FStAdFunc var_D0
  loc_C1A764: FLdPr var_D0
  loc_C1A767: LateIdLdVar var_130 DispID_15 0
  loc_C1A76E: CStrVarTmp
  loc_C1A76F: CVarStr var_14C
  loc_C1A772: FLdRfVar var_15C
  loc_C1A775: ImpAdCallFPR4  = Month()
  loc_C1A77A: FLdPr Me
  loc_C1A77D: VCallAd Control_ID_FeveCtctMsk
  loc_C1A780: FStAdFunc var_D8
  loc_C1A783: FLdPr var_D8
  loc_C1A786: LateIdLdVar var_17C DispID_15 0
  loc_C1A78D: CStrVarTmp
  loc_C1A78E: CVarStr var_18C
  loc_C1A791: FLdRfVar var_19C
  loc_C1A794: ImpAdCallFPR4  = Day()
  loc_C1A799: FLdRfVar var_19C
  loc_C1A79C: CI2Var
  loc_C1A79D: FLdRfVar var_15C
  loc_C1A7A0: LitVarI2 var_9C, 1
  loc_C1A7A5: AddVar var_16C
  loc_C1A7A9: CI2Var
  loc_C1A7AA: FLdRfVar var_100
  loc_C1A7AD: CI2Var
  loc_C1A7AE: FLdRfVar var_1AC
  loc_C1A7B1: ImpAdCallFPR4  = DateSerial(, , )
  loc_C1A7B6: FLdRfVar var_1AC
  loc_C1A7B9: CStrVarTmp
  loc_C1A7BA: CVarStr var_1BC
  loc_C1A7BD: PopAdLdVar
  loc_C1A7BE: FLdPr Me
  loc_C1A7C1: VCallAd Control_ID_FeveCtctMsk
  loc_C1A7C4: FStAdFunc var_E0
  loc_C1A7C7: FLdPr var_E0
  loc_C1A7CA: LateIdSt
  loc_C1A7CF: FFreeAd var_B0 = "": var_D0 = "": var_D8 = ""
  loc_C1A7DA: FFreeVar var_C4 = "": var_F0 = "": var_130 = "": var_14C = "": var_15C = "": var_17C = "": var_18C = "": var_100 = "": var_16C = "": var_19C = "": var_1AC = ""
  loc_C1A7F5: Branch loc_C1A8D1
  loc_C1A7F8: FLdRfVar var_8C
  loc_C1A7FB: FLdPr Me
  loc_C1A7FE: VCallAd Control_ID_OptBimestral
  loc_C1A801: FStAdFunc var_B0
  loc_C1A804: FLdPr var_B0
  loc_C1A807:  = Me.Value
  loc_C1A80C: FLdI2 var_8C
  loc_C1A80F: LitI2_Byte &HFF
  loc_C1A811: EqI2
  loc_C1A812: FFree1Ad var_B0
  loc_C1A815: BranchF loc_C1A8D1
  loc_C1A818: FLdPr Me
  loc_C1A81B: VCallAd Control_ID_FeveCtctMsk
  loc_C1A81E: FStAdFunc var_B0
  loc_C1A821: FLdPr var_B0
  loc_C1A824: LateIdLdVar var_C4 DispID_15 0
  loc_C1A82B: CStrVarTmp
  loc_C1A82C: CVarStr var_F0
  loc_C1A82F: FLdRfVar var_100
  loc_C1A832: ImpAdCallFPR4  = Year()
  loc_C1A837: FLdPr Me
  loc_C1A83A: VCallAd Control_ID_FeveCtctMsk
  loc_C1A83D: FStAdFunc var_D0
  loc_C1A840: FLdPr var_D0
  loc_C1A843: LateIdLdVar var_130 DispID_15 0
  loc_C1A84A: CStrVarTmp
  loc_C1A84B: CVarStr var_14C
  loc_C1A84E: FLdRfVar var_15C
  loc_C1A851: ImpAdCallFPR4  = Month()
  loc_C1A856: FLdPr Me
  loc_C1A859: VCallAd Control_ID_FeveCtctMsk
  loc_C1A85C: FStAdFunc var_D8
  loc_C1A85F: FLdPr var_D8
  loc_C1A862: LateIdLdVar var_17C DispID_15 0
  loc_C1A869: CStrVarTmp
  loc_C1A86A: CVarStr var_18C
  loc_C1A86D: FLdRfVar var_19C
  loc_C1A870: ImpAdCallFPR4  = Day()
  loc_C1A875: FLdRfVar var_19C
  loc_C1A878: CI2Var
  loc_C1A879: FLdRfVar var_15C
  loc_C1A87C: LitVarI2 var_9C, 2
  loc_C1A881: AddVar var_16C
  loc_C1A885: CI2Var
  loc_C1A886: FLdRfVar var_100
  loc_C1A889: CI2Var
  loc_C1A88A: FLdRfVar var_1AC
  loc_C1A88D: ImpAdCallFPR4  = DateSerial(, , )
  loc_C1A892: FLdRfVar var_1AC
  loc_C1A895: CStrVarTmp
  loc_C1A896: CVarStr var_1BC
  loc_C1A899: PopAdLdVar
  loc_C1A89A: FLdPr Me
  loc_C1A89D: VCallAd Control_ID_FeveCtctMsk
  loc_C1A8A0: FStAdFunc var_E0
  loc_C1A8A3: FLdPr var_E0
  loc_C1A8A6: LateIdSt
  loc_C1A8AB: FFreeAd var_B0 = "": var_D0 = "": var_D8 = ""
  loc_C1A8B6: FFreeVar var_C4 = "": var_F0 = "": var_130 = "": var_14C = "": var_15C = "": var_17C = "": var_18C = "": var_100 = "": var_16C = "": var_19C = "": var_1AC = ""
  loc_C1A8D1: FLdRfVar var_C8
  loc_C1A8D4: FLdPr Me
  loc_C1A8D7: VCallAd Control_ID_BimeCtct
  loc_C1A8DA: FStAdFunc var_B0
  loc_C1A8DD: FLdPr var_B0
  loc_C1A8E0:  = Me.Text
  loc_C1A8E5: ILdRf var_C8
  loc_C1A8E8: CI2Str
  loc_C1A8EA: LitI2_Byte 1
  loc_C1A8EC: AddI2
  loc_C1A8ED: CStrUI1
  loc_C1A8EF: FStStrNoPop var_D4
  loc_C1A8F2: FLdPr Me
  loc_C1A8F5: VCallAd Control_ID_BimeCtct
  loc_C1A8F8: FStAdFunc var_D0
  loc_C1A8FB: FLdPr var_D0
  loc_C1A8FE: Me.Text = from_stack_1
  loc_C1A903: FFreeStr var_C8 = ""
  loc_C1A90A: FFreeAd var_B0 = ""
  loc_C1A911: FLdRfVar var_C8
  loc_C1A914: FLdPr Me
  loc_C1A917: VCallAd Control_ID_BimeCtct
  loc_C1A91A: FStAdFunc var_B0
  loc_C1A91D: FLdPr var_B0
  loc_C1A920:  = Me.Text
  loc_C1A925: ILdRf var_C8
  loc_C1A928: CR8Str
  loc_C1A92A: LitI2_Byte &HD
  loc_C1A92C: CR8I2
  loc_C1A92D: EqR4
  loc_C1A92E: FFree1Str var_C8
  loc_C1A931: FFree1Ad var_B0
  loc_C1A934: BranchF loc_C1A996
  loc_C1A937: LitI2_Byte 1
  loc_C1A939: CStrUI1
  loc_C1A93B: FStStrNoPop var_C8
  loc_C1A93E: FLdPr Me
  loc_C1A941: VCallAd Control_ID_BimeCtct
  loc_C1A944: FStAdFunc var_B0
  loc_C1A947: FLdPr var_B0
  loc_C1A94A: Me.Text = from_stack_1
  loc_C1A94F: FFree1Str var_C8
  loc_C1A952: FFree1Ad var_B0
  loc_C1A955: FLdRfVar var_C8
  loc_C1A958: FLdPr Me
  loc_C1A95B: VCallAd Control_ID_PeriCtctTxt
  loc_C1A95E: FStAdFunc var_B0
  loc_C1A961: FLdPr var_B0
  loc_C1A964:  = Me.Text
  loc_C1A969: ILdRf var_C8
  loc_C1A96C: CR8Str
  loc_C1A96E: LitI2_Byte 1
  loc_C1A970: CR8I2
  loc_C1A971: AddR8
  loc_C1A972: CStrR8
  loc_C1A974: FStStrNoPop var_D4
  loc_C1A977: FLdPr Me
  loc_C1A97A: VCallAd Control_ID_PeriCtctTxt
  loc_C1A97D: FStAdFunc var_D0
  loc_C1A980: FLdPr var_D0
  loc_C1A983: Me.Text = from_stack_1
  loc_C1A988: FFreeStr var_C8 = ""
  loc_C1A98F: FFreeAd var_B0 = ""
  loc_C1A996: FLdRfVar var_8A
  loc_C1A999: NextI2 var_13C, loc_C1A57F
  loc_C1A99E: LitStr "El AFORO se realizó con éxito"
  loc_C1A9A1: FLdPr Me
  loc_C1A9A4: MemStStrCopy
  loc_C1A9A8: FLdPr Me
  loc_C1A9AB: MemLdStr global_60
  loc_C1A9AE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1A9B3: LitI4 1
  loc_C1A9B8: LitI4 1
  loc_C1A9BD: LitVarStr var_AC, "0.00"
  loc_C1A9C2: FStVarCopyObj var_F0
  loc_C1A9C5: FLdRfVar var_F0
  loc_C1A9C8: LitVarI2 var_C4, 0
  loc_C1A9CD: FLdRfVar var_100
  loc_C1A9D0: ImpAdCallFPR4  = Format(, )
  loc_C1A9D5: FLdRfVar var_100
  loc_C1A9D8: CStrVarVal var_C8
  loc_C1A9DC: FLdPr Me
  loc_C1A9DF: VCallAd Control_ID_txtTotaApre
  loc_C1A9E2: FStAdFunc var_B0
  loc_C1A9E5: FLdPr var_B0
  loc_C1A9E8: Me.Text = from_stack_1
  loc_C1A9ED: FFree1Str var_C8
  loc_C1A9F0: FFree1Ad var_B0
  loc_C1A9F3: FFreeVar var_C4 = "": var_F0 = ""
  loc_C1A9FC: LitI4 1
  loc_C1AA01: LitI4 1
  loc_C1AA06: LitVarStr var_AC, "0.00"
  loc_C1AA0B: FStVarCopyObj var_F0
  loc_C1AA0E: FLdRfVar var_F0
  loc_C1AA11: LitVarI2 var_C4, 0
  loc_C1AA16: FLdRfVar var_100
  loc_C1AA19: ImpAdCallFPR4  = Format(, )
  loc_C1AA1E: FLdRfVar var_100
  loc_C1AA21: CStrVarVal var_C8
  loc_C1AA25: FLdPr Me
  loc_C1AA28: VCallAd Control_ID_txtTotaDere
  loc_C1AA2B: FStAdFunc var_B0
  loc_C1AA2E: FLdPr var_B0
  loc_C1AA31: Me.Text = from_stack_1
  loc_C1AA36: FFree1Str var_C8
  loc_C1AA39: FFree1Ad var_B0
  loc_C1AA3C: FFreeVar var_C4 = "": var_F0 = ""
  loc_C1AA45: LitI4 1
  loc_C1AA4A: LitI4 1
  loc_C1AA4F: LitVarStr var_AC, "0.00"
  loc_C1AA54: FStVarCopyObj var_F0
  loc_C1AA57: FLdRfVar var_F0
  loc_C1AA5A: LitVarI2 var_C4, 0
  loc_C1AA5F: FLdRfVar var_100
  loc_C1AA62: ImpAdCallFPR4  = Format(, )
  loc_C1AA67: FLdRfVar var_100
  loc_C1AA6A: CStrVarVal var_C8
  loc_C1AA6E: FLdPr Me
  loc_C1AA71: VCallAd Control_ID_txtTotaReca
  loc_C1AA74: FStAdFunc var_B0
  loc_C1AA77: FLdPr var_B0
  loc_C1AA7A: Me.Text = from_stack_1
  loc_C1AA7F: FFree1Str var_C8
  loc_C1AA82: FFree1Ad var_B0
  loc_C1AA85: FFreeVar var_C4 = "": var_F0 = ""
  loc_C1AA8E: LitI4 1
  loc_C1AA93: LitI4 1
  loc_C1AA98: LitVarStr var_AC, "0.00"
  loc_C1AA9D: FStVarCopyObj var_F0
  loc_C1AAA0: FLdRfVar var_F0
  loc_C1AAA3: LitVarI2 var_C4, 0
  loc_C1AAA8: FLdRfVar var_100
  loc_C1AAAB: ImpAdCallFPR4  = Format(, )
  loc_C1AAB0: FLdRfVar var_100
  loc_C1AAB3: CStrVarVal var_C8
  loc_C1AAB7: FLdPr Me
  loc_C1AABA: VCallAd Control_ID_txtTotal
  loc_C1AABD: FStAdFunc var_B0
  loc_C1AAC0: FLdPr var_B0
  loc_C1AAC3: Me.Text = from_stack_1
  loc_C1AAC8: FFree1Str var_C8
  loc_C1AACB: FFree1Ad var_B0
  loc_C1AACE: FFreeVar var_C4 = "": var_F0 = ""
  loc_C1AAD7: LitI2_Byte 0
  loc_C1AAD9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AADE: CStrDate
  loc_C1AAE0: CVarStr var_C4
  loc_C1AAE3: PopAdLdVar
  loc_C1AAE4: FLdPr Me
  loc_C1AAE7: VCallAd Control_ID_FechVencMsk
  loc_C1AAEA: FStAdFunc var_B0
  loc_C1AAED: FLdPr var_B0
  loc_C1AAF0: LateIdSt
  loc_C1AAF5: FFree1Ad var_B0
  loc_C1AAF8: FFree1Var var_C4 = ""
  loc_C1AAFB: LitI2_Byte 0
  loc_C1AAFD: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AB02: CStrDate
  loc_C1AB04: CVarStr var_C4
  loc_C1AB07: PopAdLdVar
  loc_C1AB08: FLdPr Me
  loc_C1AB0B: VCallAd Control_ID_FeveCtctMsk
  loc_C1AB0E: FStAdFunc var_B0
  loc_C1AB11: FLdPr var_B0
  loc_C1AB14: LateIdSt
  loc_C1AB19: FFree1Ad var_B0
  loc_C1AB1C: FFree1Var var_C4 = ""
  loc_C1AB1F: LitI2_Byte 0
  loc_C1AB21: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AB26: CVarDate var_C4
  loc_C1AB2A: FLdRfVar var_F0
  loc_C1AB2D: ImpAdCallFPR4  = Year()
  loc_C1AB32: FLdRfVar var_F0
  loc_C1AB35: CStrVarVal var_C8
  loc_C1AB39: FLdPr Me
  loc_C1AB3C: VCallAd Control_ID_PeriCtctTxt
  loc_C1AB3F: FStAdFunc var_B0
  loc_C1AB42: FLdPr var_B0
  loc_C1AB45: Me.Text = from_stack_1
  loc_C1AB4A: FFree1Str var_C8
  loc_C1AB4D: FFree1Ad var_B0
  loc_C1AB50: FFreeVar var_C4 = ""
  loc_C1AB57: LitI2_Byte 0
  loc_C1AB59: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1AB5E: CVarDate var_C4
  loc_C1AB62: FLdRfVar var_F0
  loc_C1AB65: ImpAdCallFPR4  = Month()
  loc_C1AB6A: FLdRfVar var_F0
  loc_C1AB6D: CStrVarVal var_C8
  loc_C1AB71: FLdPr Me
  loc_C1AB74: VCallAd Control_ID_BimeCtct
  loc_C1AB77: FStAdFunc var_B0
  loc_C1AB7A: FLdPr var_B0
  loc_C1AB7D: Me.Text = from_stack_1
  loc_C1AB82: FFree1Str var_C8
  loc_C1AB85: FFree1Ad var_B0
  loc_C1AB88: FFreeVar var_C4 = ""
  loc_C1AB8F: LitI4 1
  loc_C1AB94: LitI4 1
  loc_C1AB99: LitVarStr var_AC, "0.00"
  loc_C1AB9E: FStVarCopyObj var_F0
  loc_C1ABA1: FLdRfVar var_F0
  loc_C1ABA4: LitVarI2 var_C4, 0
  loc_C1ABA9: FLdRfVar var_100
  loc_C1ABAC: ImpAdCallFPR4  = Format(, )
  loc_C1ABB1: FLdRfVar var_100
  loc_C1ABB4: CStrVarVal var_C8
  loc_C1ABB8: FLdPr Me
  loc_C1ABBB: VCallAd Control_ID_ImpoCtctTxt
  loc_C1ABBE: FStAdFunc var_B0
  loc_C1ABC1: FLdPr var_B0
  loc_C1ABC4: Me.Text = from_stack_1
  loc_C1ABC9: FFree1Str var_C8
  loc_C1ABCC: FFree1Ad var_B0
  loc_C1ABCF: FFreeVar var_C4 = "": var_F0 = ""
  loc_C1ABD8: FLdPr Me
  loc_C1ABDB: VCallAd Control_ID_OficinaCbo
  loc_C1ABDE: FStAdFunc var_B0
  loc_C1ABE1: FLdPr var_B0
  loc_C1ABE4: Me.SetFocus
  loc_C1ABE9: FFree1Ad var_B0
  loc_C1ABEC: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_GotFocus() '9C7E50
  'Data Table: 50C14C
  loc_9C7E3C: FLdPr Me
  loc_9C7E3F: VCallAd Control_ID_PeriCtctTxt
  loc_9C7E42: CVarAd
  loc_9C7E46: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7E4B: FFree1Var var_94 = ""
  loc_9C7E4E: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_KeyPress(KeyAscii As Integer) '9DA6C0
  'Data Table: 50C14C
  loc_9DA6A8: LitStr "1234567890<"
  loc_9DA6AB: FStStrCopy var_88
  loc_9DA6AE: FLdRfVar var_88
  loc_9DA6B1: ILdRf KeyAscii
  loc_9DA6B4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA6B9: IStI2 KeyAscii
  loc_9DA6BC: FFree1Str var_88
  loc_9DA6BF: ExitProcHresult
End Sub

Private Sub PeriCtctTxt_Validate(Cancel As Boolean) 'A69C30
  'Data Table: 50C14C
  loc_A69BC8: FLdRfVar var_8C
  loc_A69BCB: FLdPr Me
  loc_A69BCE: VCallAd Control_ID_PeriCtctTxt
  loc_A69BD1: FStAdFunc var_88
  loc_A69BD4: FLdPr var_88
  loc_A69BD7:  = Me.Text
  loc_A69BDC: LitI2_Byte 0
  loc_A69BDE: ILdRf var_8C
  loc_A69BE1: LitStr "el Año"
  loc_A69BE4: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A69BE9: FStStrNoPop var_90
  loc_A69BEC: FLdPr Me
  loc_A69BEF: MemStStrCopy
  loc_A69BF3: FFreeStr var_8C = ""
  loc_A69BFA: FFree1Ad var_88
  loc_A69BFD: FLdPr Me
  loc_A69C00: MemLdStr global_60
  loc_A69C03: LitStr vbNullString
  loc_A69C06: NeStr
  loc_A69C08: BranchF loc_A69C2D
  loc_A69C0B: FLdPr Me
  loc_A69C0E: MemLdStr global_60
  loc_A69C11: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A69C16: FLdPr Me
  loc_A69C19: VCallAd Control_ID_PeriCtctTxt
  loc_A69C1C: CVarAd
  loc_A69C20: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A69C25: FFree1Var var_A0 = ""
  loc_A69C28: LitI2_Byte &HFF
  loc_A69C2A: IStI2 Cancel
  loc_A69C2D: ExitProcHresult
End Sub

Private Function Proc_354_32_B180A8() 'B180A8
  'Data Table: 50C14C
  loc_B17E1C: FLdPr Me
  loc_B17E1F: VCallAd Control_ID_ctacteFlex
  loc_B17E22: FStAdFunc var_88
  loc_B17E25: FLdPr var_88
  loc_B17E28: LateIdCall
  loc_B17E30: LitVarI4
  loc_B17E38: PopAdLdVar
  loc_B17E39: FLdPr var_88
  loc_B17E3C: LateIdSt
  loc_B17E41: LitVarI4
  loc_B17E49: PopAdLdVar
  loc_B17E4A: LitVarI4
  loc_B17E52: PopAdLdVar
  loc_B17E53: LitVarStr var_D8, "Of"
  loc_B17E58: PopAdLdVar
  loc_B17E59: FLdPr var_88
  loc_B17E5C: LateIdCallSt
  loc_B17E64: LitVarI4
  loc_B17E6C: PopAdLdVar
  loc_B17E6D: LitVarI4
  loc_B17E75: PopAdLdVar
  loc_B17E76: LitVarStr var_D8, "Cuenta"
  loc_B17E7B: PopAdLdVar
  loc_B17E7C: FLdPr var_88
  loc_B17E7F: LateIdCallSt
  loc_B17E87: LitVarI4
  loc_B17E8F: PopAdLdVar
  loc_B17E90: LitVarI4
  loc_B17E98: PopAdLdVar
  loc_B17E99: LitVarStr var_D8, "Periodo"
  loc_B17E9E: PopAdLdVar
  loc_B17E9F: FLdPr var_88
  loc_B17EA2: LateIdCallSt
  loc_B17EAA: LitVarI4
  loc_B17EB2: PopAdLdVar
  loc_B17EB3: LitVarI4
  loc_B17EBB: PopAdLdVar
  loc_B17EBC: LitVarStr var_D8, "Boleto"
  loc_B17EC1: PopAdLdVar
  loc_B17EC2: FLdPr var_88
  loc_B17EC5: LateIdCallSt
  loc_B17ECD: LitVarI4
  loc_B17ED5: PopAdLdVar
  loc_B17ED6: LitVarI4
  loc_B17EDE: PopAdLdVar
  loc_B17EDF: LitVarStr var_D8, "Emision"
  loc_B17EE4: PopAdLdVar
  loc_B17EE5: FLdPr var_88
  loc_B17EE8: LateIdCallSt
  loc_B17EF0: LitVarI4
  loc_B17EF8: PopAdLdVar
  loc_B17EF9: LitVarI4
  loc_B17F01: PopAdLdVar
  loc_B17F02: LitVarStr var_D8, "Vencimiento"
  loc_B17F07: PopAdLdVar
  loc_B17F08: FLdPr var_88
  loc_B17F0B: LateIdCallSt
  loc_B17F13: LitVarI4
  loc_B17F1B: PopAdLdVar
  loc_B17F1C: LitVarI4
  loc_B17F24: PopAdLdVar
  loc_B17F25: LitVarStr var_D8, "Concepto"
  loc_B17F2A: PopAdLdVar
  loc_B17F2B: FLdPr var_88
  loc_B17F2E: LateIdCallSt
  loc_B17F36: LitVarI4
  loc_B17F3E: PopAdLdVar
  loc_B17F3F: LitVarI4
  loc_B17F47: PopAdLdVar
  loc_B17F48: LitVarStr var_D8, "Facilidad"
  loc_B17F4D: PopAdLdVar
  loc_B17F4E: FLdPr var_88
  loc_B17F51: LateIdCallSt
  loc_B17F59: LitVarI4
  loc_B17F61: PopAdLdVar
  loc_B17F62: LitVarI4
  loc_B17F6A: PopAdLdVar
  loc_B17F6B: LitVarStr var_D8, "Apremio"
  loc_B17F70: PopAdLdVar
  loc_B17F71: FLdPr var_88
  loc_B17F74: LateIdCallSt
  loc_B17F7C: LitVarI4
  loc_B17F84: PopAdLdVar
  loc_B17F85: LitVarI4
  loc_B17F8D: PopAdLdVar
  loc_B17F8E: LitVarStr var_D8, "Exp/Comp"
  loc_B17F93: PopAdLdVar
  loc_B17F94: FLdPr var_88
  loc_B17F97: LateIdCallSt
  loc_B17F9F: LitVarI4
  loc_B17FA7: PopAdLdVar
  loc_B17FA8: LitVarI4
  loc_B17FB0: PopAdLdVar
  loc_B17FB1: LitVarStr var_D8, "Tipo Movi."
  loc_B17FB6: PopAdLdVar
  loc_B17FB7: FLdPr var_88
  loc_B17FBA: LateIdCallSt
  loc_B17FC2: LitVarI4
  loc_B17FCA: PopAdLdVar
  loc_B17FCB: LitVarI4
  loc_B17FD3: PopAdLdVar
  loc_B17FD4: LitVarStr var_D8, "Debito"
  loc_B17FD9: PopAdLdVar
  loc_B17FDA: FLdPr var_88
  loc_B17FDD: LateIdCallSt
  loc_B17FE5: LitVarI4
  loc_B17FED: PopAdLdVar
  loc_B17FEE: LitVarI4
  loc_B17FF6: PopAdLdVar
  loc_B17FF7: LitVarStr var_D8, "Recargo"
  loc_B17FFC: PopAdLdVar
  loc_B17FFD: FLdPr var_88
  loc_B18000: LateIdCallSt
  loc_B18008: LitVarI4
  loc_B18010: PopAdLdVar
  loc_B18011: LitVarI4
  loc_B18019: PopAdLdVar
  loc_B1801A: LitVarStr var_D8, "Saldo"
  loc_B1801F: PopAdLdVar
  loc_B18020: FLdPr var_88
  loc_B18023: LateIdCallSt
  loc_B1802B: LitVarI4
  loc_B18033: PopAdLdVar
  loc_B18034: LitVarI4
  loc_B1803C: PopAdLdVar
  loc_B1803D: LitVarStr var_D8, "Sel"
  loc_B18042: PopAdLdVar
  loc_B18043: FLdPr var_88
  loc_B18046: LateIdCallSt
  loc_B1804E: LitVarI4
  loc_B18056: PopAdLdVar
  loc_B18057: LitVarI4
  loc_B1805F: PopAdLdVar
  loc_B18060: LitVarStr var_D8, "Numero"
  loc_B18065: PopAdLdVar
  loc_B18066: FLdPr var_88
  loc_B18069: LateIdCallSt
  loc_B18071: LitVarI4
  loc_B18079: PopAdLdVar
  loc_B1807A: LitVarI4
  loc_B18082: PopAdLdVar
  loc_B18083: LitVarStr var_D8, "Mov"
  loc_B18088: PopAdLdVar
  loc_B18089: FLdPr var_88
  loc_B1808C: LateIdCallSt
  loc_B18094: FLdPr var_88
  loc_B18097: LateIdCall
  loc_B1809F: LitNothing
  loc_B180A1: FStAd var_88 
  loc_B180A5: ExitProcHresult
End Function
