VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmDebitoManual
  Caption = "Debito Manual"
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
  ClientHeight = 10152
  Begin VB.TextBox txtTotaDere
    Left = 6000
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 27
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
    Left = 10320
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 26
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
    Left = 1920
    Top = 5160
    Width = 1815
    Height = 360
    TabIndex = 25
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
    Left = 13080
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 24
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
    Left = 13080
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 23
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
    Caption = "Datos del Credito Manual "
    Left = 120
    Top = 5880
    Width = 15015
    Height = 3615
    TabIndex = 18
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton DebitoManualOpt
      Caption = "Débito Manual"
      Left = 3960
      Top = 1920
      Width = 1935
      Height = 375
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
    Begin VB.OptionButton DevolucionOpt
      Caption = "Devolución de Ingresos"
      Left = 6480
      Top = 1920
      Width = 2895
      Height = 375
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
    Begin VB.CommandButton ConfirmarCmd
      Left = 5640
      Top = 2760
      Width = 1335
      Height = 525
      TabIndex = 12
      Picture = "frmDebitoManual.frx":0000
      Style = 1
    End
    Begin VB.TextBox ImpoCtctTxt
      ForeColor = &HFF0000&
      Left = 1800
      Top = 1920
      Width = 1575
      Height = 345
      TabIndex = 11
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
      Left = 1800
      Top = 1440
      Width = 9015
      Height = 345
      TabIndex = 10
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
      Left = 1800
      Top = 960
      Width = 1695
      Height = 345
      TabIndex = 9
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
      Left = 3240
      Top = 480
      Width = 450
      Height = 345
      TabIndex = 8
      Picture = "frmDebitoManual.frx":032E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox FeveCtctMsk
      Left = 1800
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 7
      OleObjectBlob = "frmDebitoManual.frx":0870
      ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
    End
    Begin VB.Label Label12
      Caption = "Importe:"
      Left = 885
      Top = 1920
      Width = 885
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
    Begin VB.Label Label11
      Caption = "Observaciones:"
      Left = 135
      Top = 1440
      Width = 1635
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
    Begin VB.Label Label10
      Caption = "Expediente:"
      Left = 510
      Top = 960
      Width = 1260
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
    Begin VB.Label Label9
      Caption = "Fecha:"
      Left = 1035
      Top = 480
      Width = 735
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
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5040
    Top = 720
    Width = 2175
    Height = 255
    TabIndex = 17
    BeginProperty Font
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
    Left = 1560
    Top = 120
    Width = 2175
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
  Begin VB.CommandButton BuscarCmd
    Left = 4440
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 6
    Picture = "frmDebitoManual.frx":0920
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6720
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 2
    Picture = "frmDebitoManual.frx":0A02
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4680
    Top = 120
    Width = 1935
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
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 14
    Picture = "frmDebitoManual.frx":0AFC
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3840
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 5
    Picture = "frmDebitoManual.frx":0D4E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 3
    OleObjectBlob = "frmDebitoManual.frx":1290
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 13
    OleObjectBlob = "frmDebitoManual.frx":1340
    Appearance = 0 'Flat
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9240
    Top = 120
    Width = 5175
    Height = 315
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 120
    Width = 1695
    Height = 315
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
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 6975
    Height = 315
    TabIndex = 33
    BeginProperty Font
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
    Left = 3960
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 32
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
    Left = 8280
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 31
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
    Left = 120
    Top = 5160
    Width = 1755
    Height = 300
    TabIndex = 30
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
    Left = 12240
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 29
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
    Caption = "Total Seleccionado:"
    Left = 10560
    Top = 5640
    Width = 2385
    Height = 300
    TabIndex = 28
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
    Left = 720
    Top = 120
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3840
    Top = 120
    Width = 840
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
  Begin VB.Label Label4
    Caption = "Fecha Vencimiento:"
    Left = 120
    Top = 720
    Width = 2115
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
End

Attribute VB_Name = "frmDebitoManual"


Private Sub OficinaCbo_Click() 'B349A8
  'Data Table: 4FA474
  loc_B346CC: FLdRfVar var_8A
  loc_B346CF: FLdPr Me
  loc_B346D2: VCallAd Control_ID_OficinaCbo
  loc_B346D5: FStAdFunc var_88
  loc_B346D8: FLdPr var_88
  loc_B346DB:  = Me.ListIndex
  loc_B346E0: FLdI2 var_8A
  loc_B346E3: FStI2 var_8C
  loc_B346E6: FFree1Ad var_88
  loc_B346E9: FLdI2 var_8C
  loc_B346EC: LitI2_Byte 0
  loc_B346EE: EqI2
  loc_B346EF: BranchF loc_B346FD
  loc_B346F2: LitI2_Byte 1
  loc_B346F4: CUI1I2
  loc_B346F6: ImpAdStUI1 MemVar_D93038
  loc_B346FA: Branch loc_B34772
  loc_B346FD: FLdI2 var_8C
  loc_B34700: LitI2_Byte 1
  loc_B34702: EqI2
  loc_B34703: BranchF loc_B34711
  loc_B34706: LitI2_Byte 2
  loc_B34708: CUI1I2
  loc_B3470A: ImpAdStUI1 MemVar_D93038
  loc_B3470E: Branch loc_B34772
  loc_B34711: FLdI2 var_8C
  loc_B34714: LitI2_Byte 2
  loc_B34716: EqI2
  loc_B34717: BranchF loc_B34725
  loc_B3471A: LitI2_Byte 3
  loc_B3471C: CUI1I2
  loc_B3471E: ImpAdStUI1 MemVar_D93038
  loc_B34722: Branch loc_B34772
  loc_B34725: FLdI2 var_8C
  loc_B34728: LitI2_Byte 3
  loc_B3472A: EqI2
  loc_B3472B: BranchF loc_B34739
  loc_B3472E: LitI2_Byte 4
  loc_B34730: CUI1I2
  loc_B34732: ImpAdStUI1 MemVar_D93038
  loc_B34736: Branch loc_B34772
  loc_B34739: FLdI2 var_8C
  loc_B3473C: LitI2_Byte 4
  loc_B3473E: EqI2
  loc_B3473F: BranchF loc_B3474D
  loc_B34742: LitI2_Byte 5
  loc_B34744: CUI1I2
  loc_B34746: ImpAdStUI1 MemVar_D93038
  loc_B3474A: Branch loc_B34772
  loc_B3474D: FLdI2 var_8C
  loc_B34750: LitI2_Byte 5
  loc_B34752: EqI2
  loc_B34753: BranchF loc_B34761
  loc_B34756: LitI2_Byte 6
  loc_B34758: CUI1I2
  loc_B3475A: ImpAdStUI1 MemVar_D93038
  loc_B3475E: Branch loc_B34772
  loc_B34761: FLdI2 var_8C
  loc_B34764: LitI2_Byte 6
  loc_B34766: EqI2
  loc_B34767: BranchF loc_B34772
  loc_B3476A: LitI2_Byte 7
  loc_B3476C: CUI1I2
  loc_B3476E: ImpAdStUI1 MemVar_D93038
  loc_B34772: ImpAdLdUI1
  loc_B34776: CI2UI1
  loc_B34778: LitI2_Byte 0
  loc_B3477A: NeI2
  loc_B3477B: FLdRfVar var_90
  loc_B3477E: FLdPr Me
  loc_B34781: VCallAd Control_ID_NumeCtaTxt
  loc_B34784: FStAdFunc var_88
  loc_B34787: FLdPr var_88
  loc_B3478A:  = Me.Text
  loc_B3478F: ILdRf var_90
  loc_B34792: LitStr vbNullString
  loc_B34795: NeStr
  loc_B34797: AndI4
  loc_B34798: FLdRfVar var_98
  loc_B3479B: FLdPr Me
  loc_B3479E: VCallAd Control_ID_NumeCtaTxt
  loc_B347A1: FStAdFunc var_94
  loc_B347A4: FLdPr var_94
  loc_B347A7:  = Me.Text
  loc_B347AC: ILdRf var_98
  loc_B347AF: LitStr "0"
  loc_B347B2: NeStr
  loc_B347B4: AndI4
  loc_B347B5: FFreeStr var_90 = ""
  loc_B347BC: FFreeAd var_88 = ""
  loc_B347C3: BranchF loc_B349A7
  loc_B347C6: FLdRfVar var_90
  loc_B347C9: FLdPr Me
  loc_B347CC: VCallAd Control_ID_NumeCtaTxt
  loc_B347CF: FStAdFunc var_88
  loc_B347D2: FLdPr var_88
  loc_B347D5:  = Me.Text
  loc_B347DA: FLdPr Me
  loc_B347DD: MemLdRfVar from_stack_1.global_56
  loc_B347E0: NewIfNullRf
  loc_B347E4: LitStr "Titular"
  loc_B347E7: ILdRf var_90
  loc_B347EA: ImpAdLdUI1
  loc_B347EE: CStrI2
  loc_B347F0: FStStrNoPop var_98
  loc_B347F3: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B347F8: FFreeStr var_98 = ""
  loc_B347FF: FFree1Ad var_88
  loc_B34802: BranchF loc_B34927
  loc_B34805: FLdRfVar var_90
  loc_B34808: FLdPr Me
  loc_B3480B: MemLdRfVar from_stack_1.global_56
  loc_B3480E: NewIfNullPr tblPersona
  loc_B34811: from_stack_1v = tblPersona.CucuPersGet()
  loc_B34816: ILdRf var_90
  loc_B34819: FLdPr Me
  loc_B3481C: VCallAd Control_ID_CucuPersLbl
  loc_B3481F: FStAdFunc var_88
  loc_B34822: FLdPr var_88
  loc_B34825: Me.Caption = from_stack_1
  loc_B3482A: FFree1Str var_90
  loc_B3482D: FFree1Ad var_88
  loc_B34830: FLdRfVar var_90
  loc_B34833: FLdPr Me
  loc_B34836: MemLdRfVar from_stack_1.global_56
  loc_B34839: NewIfNullPr tblPersona
  loc_B3483C: from_stack_1v = tblPersona.DetaPersGet()
  loc_B34841: ILdRf var_90
  loc_B34844: FLdPr Me
  loc_B34847: VCallAd Control_ID_DetaPersLbl
  loc_B3484A: FStAdFunc var_88
  loc_B3484D: FLdPr var_88
  loc_B34850: Me.Caption = from_stack_1
  loc_B34855: FFree1Str var_90
  loc_B34858: FFree1Ad var_88
  loc_B3485B: FLdRfVar var_98
  loc_B3485E: FLdPr Me
  loc_B34861: MemLdRfVar from_stack_1.global_56
  loc_B34864: NewIfNullPr tblPersona
  loc_B34867: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3486C: FLdRfVar var_9C
  loc_B3486F: FLdPr Me
  loc_B34872: MemLdRfVar from_stack_1.global_56
  loc_B34875: NewIfNullPr tblPersona
  loc_B34878: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B3487D: FLdRfVar var_90
  loc_B34880: FLdPr Me
  loc_B34883: MemLdRfVar from_stack_1.global_56
  loc_B34886: NewIfNullPr tblPersona
  loc_B34889: from_stack_1v = tblPersona.DetaCallGet()
  loc_B3488E: ILdRf var_90
  loc_B34891: LitStr " "
  loc_B34894: ConcatStr
  loc_B34895: CVarStr var_FC
  loc_B34898: LitVarStr var_CC, vbNullString
  loc_B3489D: FStVarCopyObj var_DC
  loc_B348A0: FLdRfVar var_DC
  loc_B348A3: LitStr "Nro: "
  loc_B348A6: ILdRf var_9C
  loc_B348A9: ConcatStr
  loc_B348AA: CVarStr var_BC
  loc_B348AD: ILdRf var_98
  loc_B348B0: LitStr "0"
  loc_B348B3: NeStr
  loc_B348B5: CVarBoolI2 var_AC
  loc_B348B9: FLdRfVar var_EC
  loc_B348BC: ImpAdCallFPR4  = IIf(, , )
  loc_B348C1: FLdRfVar var_EC
  loc_B348C4: ConcatVar var_10C
  loc_B348C8: LitVarStr var_11C, " "
  loc_B348CD: ConcatVar var_12C
  loc_B348D1: FLdRfVar var_130
  loc_B348D4: FLdPr Me
  loc_B348D7: MemLdRfVar from_stack_1.global_56
  loc_B348DA: NewIfNullPr tblPersona
  loc_B348DD: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B348E2: FLdZeroAd var_130
  loc_B348E5: CVarStr var_140
  loc_B348E8: ConcatVar var_150
  loc_B348EC: CStrVarVal var_154
  loc_B348F0: FLdPr Me
  loc_B348F3: VCallAd Control_ID_DomiPersLbl
  loc_B348F6: FStAdFunc var_88
  loc_B348F9: FLdPr var_88
  loc_B348FC: Me.Caption = from_stack_1
  loc_B34901: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B3490C: FFree1Ad var_88
  loc_B3490F: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B34924: Branch loc_B349A7
  loc_B34927: FLdRfVar var_90
  loc_B3492A: FLdPr Me
  loc_B3492D: MemLdRfVar from_stack_1.global_56
  loc_B34930: NewIfNullPr tblPersona
  loc_B34933: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B34938: ILdRf var_90
  loc_B3493B: FLdPr Me
  loc_B3493E: MemStStrCopy
  loc_B34942: FFree1Str var_90
  loc_B34945: FLdPr Me
  loc_B34948: MemLdStr global_76
  loc_B3494B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B34950: LitStr vbNullString
  loc_B34953: FLdPr Me
  loc_B34956: VCallAd Control_ID_CucuPersLbl
  loc_B34959: FStAdFunc var_88
  loc_B3495C: FLdPr var_88
  loc_B3495F: Me.Caption = from_stack_1
  loc_B34964: FFree1Ad var_88
  loc_B34967: LitStr vbNullString
  loc_B3496A: FLdPr Me
  loc_B3496D: VCallAd Control_ID_DetaPersLbl
  loc_B34970: FStAdFunc var_88
  loc_B34973: FLdPr var_88
  loc_B34976: Me.Caption = from_stack_1
  loc_B3497B: FFree1Ad var_88
  loc_B3497E: LitStr vbNullString
  loc_B34981: FLdPr Me
  loc_B34984: VCallAd Control_ID_DomiPersLbl
  loc_B34987: FStAdFunc var_88
  loc_B3498A: FLdPr var_88
  loc_B3498D: Me.Caption = from_stack_1
  loc_B34992: FFree1Ad var_88
  loc_B34995: FLdPr Me
  loc_B34998: VCallAd Control_ID_NumeCtaTxt
  loc_B3499B: CVarAd
  loc_B3499F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B349A4: FFree1Var var_BC = ""
  loc_B349A7: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'A24AC4
  'Data Table: 4FA474
  loc_A24A88: Call Proc_138_23_B19968()
  loc_A24A8D: LitI4 0
  loc_A24A92: LitI4 0
  loc_A24A97: FLdRfVar var_88
  loc_A24A9A: Redim
  loc_A24AA4: FLdPr Me
  loc_A24AA7: VCallAd Control_ID_ConfirmarCmd
  loc_A24AAA: CVarAd
  loc_A24AAE: ParmAry1St
  loc_A24AB4: FLdRfVar var_88
  loc_A24AB7: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A24ABC: FLdRfVar var_88
  loc_A24ABF: Erase
  loc_A24AC0: ExitProcHresult
  loc_A24AC1: CI4Str
  loc_A24AC2: LdFixedStr
End Sub

Private Sub ConfirmarCmd_Click() 'C6B734
  'Data Table: 4FA474
  loc_C6A614: LitI2_Byte 0
  loc_C6A616: PopTmpLdAd2 var_94
  loc_C6A619: Call FeveCtctMsk_UnknownEvent_8()
  loc_C6A61E: FLdPr Me
  loc_C6A621: MemLdStr global_76
  loc_C6A624: LitStr vbNullString
  loc_C6A627: NeStr
  loc_C6A629: BranchF loc_C6A62D
  loc_C6A62C: ExitProcHresult
  loc_C6A62D: LitI2_Byte 0
  loc_C6A62F: PopTmpLdAd2 var_94
  loc_C6A632: Call ImpoCtctTxt_Validate(from_stack_1v)
  loc_C6A637: FLdPr Me
  loc_C6A63A: MemLdStr global_76
  loc_C6A63D: LitStr vbNullString
  loc_C6A640: NeStr
  loc_C6A642: BranchF loc_C6A646
  loc_C6A645: ExitProcHresult
  loc_C6A646: FLdPr Me
  loc_C6A649: VCallAd Control_ID_ctacteFlex
  loc_C6A64C: FStAdFunc var_98
  loc_C6A64F: FLdPr var_98
  loc_C6A652: LateIdLdVar var_A8 DispID_4 0
  loc_C6A659: CI4Var
  loc_C6A65B: LitI4 1
  loc_C6A660: LeI4
  loc_C6A661: FFree1Ad var_98
  loc_C6A664: FFree1Var var_A8 = ""
  loc_C6A667: BranchF loc_C6A69C
  loc_C6A66A: LitVar_Missing var_118
  loc_C6A66D: LitVar_Missing var_F8
  loc_C6A670: LitVarStr var_C8, "InfoGov"
  loc_C6A675: FStVarCopyObj var_D8
  loc_C6A678: FLdRfVar var_D8
  loc_C6A67B: LitI4 &H30
  loc_C6A680: LitVarStr var_B8, "No existe deuda seleccionada para realizar el credito. Reintente..."
  loc_C6A685: FStVarCopyObj var_A8
  loc_C6A688: FLdRfVar var_A8
  loc_C6A68B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C6A690: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_C6A69B: ExitProcHresult
  loc_C6A69C: LitI2_Byte 0
  loc_C6A69E: FStI2 var_86
  loc_C6A6A1: LitI2_Byte 1
  loc_C6A6A3: FLdPr Me
  loc_C6A6A6: MemLdRfVar from_stack_1.global_60
  loc_C6A6A9: FLdPr Me
  loc_C6A6AC: VCallAd Control_ID_ctacteFlex
  loc_C6A6AF: FStAdFunc var_98
  loc_C6A6B2: FLdPr var_98
  loc_C6A6B5: LateIdLdVar var_A8 DispID_4 0
  loc_C6A6BC: CI4Var
  loc_C6A6BE: LitI4 1
  loc_C6A6C3: SubI4
  loc_C6A6C4: CI2I4
  loc_C6A6C5: FFree1Ad var_98
  loc_C6A6C8: FFree1Var var_A8 = ""
  loc_C6A6CB: ForI2 var_11C
  loc_C6A6D1: FLdPr Me
  loc_C6A6D4: MemLdI2 global_60
  loc_C6A6D7: CI4UI1
  loc_C6A6D8: CVarI4
  loc_C6A6DC: PopAdLdVar
  loc_C6A6DD: LitVarI4
  loc_C6A6E5: PopAdLdVar
  loc_C6A6E6: FLdPr Me
  loc_C6A6E9: VCallAd Control_ID_ctacteFlex
  loc_C6A6EC: FStAdFunc var_98
  loc_C6A6EF: FLdPr var_98
  loc_C6A6F2: LateIdCallLdVar
  loc_C6A6FC: CStrVarTmp
  loc_C6A6FD: FStStrNoPop var_120
  loc_C6A700: LitStr "Si"
  loc_C6A703: EqStr
  loc_C6A705: FLdPr Me
  loc_C6A708: MemLdI2 global_60
  loc_C6A70B: CI4UI1
  loc_C6A70C: CVarI4
  loc_C6A710: PopAdLdVar
  loc_C6A711: LitVarI4
  loc_C6A719: PopAdLdVar
  loc_C6A71A: FLdPr Me
  loc_C6A71D: VCallAd Control_ID_ctacteFlex
  loc_C6A720: FStAdFunc var_164
  loc_C6A723: FLdPr var_164
  loc_C6A726: LateIdCallLdVar
  loc_C6A730: CStrVarTmp
  loc_C6A731: FStStrNoPop var_168
  loc_C6A734: LitStr "SS"
  loc_C6A737: EqStr
  loc_C6A739: OrI4
  loc_C6A73A: FFreeStr var_120 = ""
  loc_C6A741: FFreeAd var_98 = ""
  loc_C6A748: FFreeVar var_A8 = ""
  loc_C6A74F: BranchF loc_C6A757
  loc_C6A752: LitI2_Byte &HFF
  loc_C6A754: FStI2 var_86
  loc_C6A757: FLdPr Me
  loc_C6A75A: MemLdRfVar from_stack_1.global_60
  loc_C6A75D: NextI2 var_11C, loc_C6A6D1
  loc_C6A762: FLdI2 var_86
  loc_C6A765: LitI2_Byte 0
  loc_C6A767: EqI2
  loc_C6A768: BranchF loc_C6A79D
  loc_C6A76B: LitVar_Missing var_118
  loc_C6A76E: LitVar_Missing var_F8
  loc_C6A771: LitVarStr var_C8, "InfoGov"
  loc_C6A776: FStVarCopyObj var_D8
  loc_C6A779: FLdRfVar var_D8
  loc_C6A77C: LitI4 &H30
  loc_C6A781: LitVarStr var_B8, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_C6A786: FStVarCopyObj var_A8
  loc_C6A789: FLdRfVar var_A8
  loc_C6A78C: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C6A791: FFreeVar var_A8 = "": var_D8 = "": var_F8 = ""
  loc_C6A79C: ExitProcHresult
  loc_C6A79D: FLdRfVar var_94
  loc_C6A7A0: FLdPr Me
  loc_C6A7A3: VCallAd Control_ID_DebitoManualOpt
  loc_C6A7A6: FStAdFunc var_98
  loc_C6A7A9: FLdPr var_98
  loc_C6A7AC:  = Me.Value
  loc_C6A7B1: FLdI2 var_94
  loc_C6A7B4: LitI2_Byte &HFF
  loc_C6A7B6: EqI2
  loc_C6A7B7: FFree1Ad var_98
  loc_C6A7BA: BranchF loc_C6A7C5
  loc_C6A7BD: LitI2_Byte &HA
  loc_C6A7BF: CUI1I2
  loc_C6A7C1: FStUI1 var_92
  loc_C6A7C5: FLdRfVar var_94
  loc_C6A7C8: FLdPr Me
  loc_C6A7CB: VCallAd Control_ID_DevolucionOpt
  loc_C6A7CE: FStAdFunc var_98
  loc_C6A7D1: FLdPr var_98
  loc_C6A7D4:  = Me.Value
  loc_C6A7D9: FLdI2 var_94
  loc_C6A7DC: LitI2_Byte &HFF
  loc_C6A7DE: EqI2
  loc_C6A7DF: FFree1Ad var_98
  loc_C6A7E2: BranchF loc_C6A7ED
  loc_C6A7E5: LitI2_Byte &H1A
  loc_C6A7E7: CUI1I2
  loc_C6A7E9: FStUI1 var_92
  loc_C6A7ED: LitI2_Byte 1
  loc_C6A7EF: FLdPr Me
  loc_C6A7F2: MemLdRfVar from_stack_1.global_60
  loc_C6A7F5: FLdPr Me
  loc_C6A7F8: VCallAd Control_ID_ctacteFlex
  loc_C6A7FB: FStAdFunc var_98
  loc_C6A7FE: FLdPr var_98
  loc_C6A801: LateIdLdVar var_A8 DispID_4 0
  loc_C6A808: CI4Var
  loc_C6A80A: LitI4 1
  loc_C6A80F: SubI4
  loc_C6A810: CI2I4
  loc_C6A811: FFree1Ad var_98
  loc_C6A814: FFree1Var var_A8 = ""
  loc_C6A817: ForI2 var_16C
  loc_C6A81D: FLdPr Me
  loc_C6A820: MemLdI2 global_60
  loc_C6A823: CI4UI1
  loc_C6A824: CVarI4
  loc_C6A828: PopAdLdVar
  loc_C6A829: LitVarI4
  loc_C6A831: PopAdLdVar
  loc_C6A832: FLdPr Me
  loc_C6A835: VCallAd Control_ID_ctacteFlex
  loc_C6A838: FStAdFunc var_98
  loc_C6A83B: FLdPr var_98
  loc_C6A83E: LateIdCallLdVar
  loc_C6A848: CStrVarTmp
  loc_C6A849: FStStrNoPop var_120
  loc_C6A84C: LitStr "Si"
  loc_C6A84F: EqStr
  loc_C6A851: FFree1Str var_120
  loc_C6A854: FFree1Ad var_98
  loc_C6A857: FFree1Var var_A8 = ""
  loc_C6A85A: BranchF loc_C6AE55
  loc_C6A85D: FLdPr Me
  loc_C6A860: MemLdI2 global_60
  loc_C6A863: CI4UI1
  loc_C6A864: CVarI4
  loc_C6A868: PopAdLdVar
  loc_C6A869: LitVarI4
  loc_C6A871: PopAdLdVar
  loc_C6A872: FLdPr Me
  loc_C6A875: VCallAd Control_ID_ctacteFlex
  loc_C6A878: FStAdFunc var_1C4
  loc_C6A87B: FLdPr var_1C4
  loc_C6A87E: LateIdCallLdVar
  loc_C6A888: PopAd
  loc_C6A88A: FLdPr Me
  loc_C6A88D: MemLdI2 global_60
  loc_C6A890: CI4UI1
  loc_C6A891: CVarI4
  loc_C6A895: PopAdLdVar
  loc_C6A896: LitVarI4
  loc_C6A89E: PopAdLdVar
  loc_C6A89F: FLdPr Me
  loc_C6A8A2: VCallAd Control_ID_ctacteFlex
  loc_C6A8A5: FStAdFunc var_278
  loc_C6A8A8: FLdPr var_278
  loc_C6A8AB: LateIdCallLdVar
  loc_C6A8B5: PopAd
  loc_C6A8B7: LitStr "SELECT * FROM ctacte "
  loc_C6A8BA: LitStr " WHERE ctacte.CodiOfic = "
  loc_C6A8BD: ConcatStr
  loc_C6A8BE: FStStrNoPop var_120
  loc_C6A8C1: FLdPr Me
  loc_C6A8C4: MemLdI2 global_60
  loc_C6A8C7: CI4UI1
  loc_C6A8C8: CVarI4
  loc_C6A8CC: PopAdLdVar
  loc_C6A8CD: LitVarI4
  loc_C6A8D5: PopAdLdVar
  loc_C6A8D6: FLdPr Me
  loc_C6A8D9: VCallAd Control_ID_ctacteFlex
  loc_C6A8DC: FStAdFunc var_98
  loc_C6A8DF: FLdPr var_98
  loc_C6A8E2: LateIdCallLdVar
  loc_C6A8EC: CStrVarTmp
  loc_C6A8ED: FStStrNoPop var_168
  loc_C6A8F0: ConcatStr
  loc_C6A8F1: FStStrNoPop var_170
  loc_C6A8F4: LitStr " AND ctacte.CuenCtct = '"
  loc_C6A8F7: ConcatStr
  loc_C6A8F8: FStStrNoPop var_174
  loc_C6A8FB: FLdPr Me
  loc_C6A8FE: MemLdI2 global_60
  loc_C6A901: CI4UI1
  loc_C6A902: CVarI4
  loc_C6A906: PopAdLdVar
  loc_C6A907: LitVarI4
  loc_C6A90F: PopAdLdVar
  loc_C6A910: FLdPr Me
  loc_C6A913: VCallAd Control_ID_ctacteFlex
  loc_C6A916: FStAdFunc var_164
  loc_C6A919: FLdPr var_164
  loc_C6A91C: LateIdCallLdVar
  loc_C6A926: CStrVarTmp
  loc_C6A927: FStStrNoPop var_178
  loc_C6A92A: ConcatStr
  loc_C6A92B: FStStrNoPop var_17C
  loc_C6A92E: LitStr "'"
  loc_C6A931: ConcatStr
  loc_C6A932: FStStrNoPop var_180
  loc_C6A935: LitStr " AND ctacte.PeriCtct = "
  loc_C6A938: ConcatStr
  loc_C6A939: CVarStr var_204
  loc_C6A93C: LitVarI2 var_1E4, 4
  loc_C6A941: LitI4 4
  loc_C6A946: FLdRfVar var_F8
  loc_C6A949: CStrVarTmp
  loc_C6A94A: CVarStr var_118
  loc_C6A94D: FLdRfVar var_1F4
  loc_C6A950: ImpAdCallFPR4  = Mid(, , )
  loc_C6A955: FLdRfVar var_1F4
  loc_C6A958: ConcatVar var_214
  loc_C6A95C: LitVarStr var_224, " AND ctacte.BimeCtct = "
  loc_C6A961: ConcatVar var_234
  loc_C6A965: LitVarI2 var_2B8, 2
  loc_C6A96A: LitI4 1
  loc_C6A96F: FLdRfVar var_288
  loc_C6A972: CStrVarTmp
  loc_C6A973: CVarStr var_298
  loc_C6A976: FLdRfVar var_2C8
  loc_C6A979: ImpAdCallFPR4  = Mid(, , )
  loc_C6A97E: FLdRfVar var_2C8
  loc_C6A981: ConcatVar var_2D8
  loc_C6A985: LitVarStr var_2E8, " AND ctacte.NumeCtct = "
  loc_C6A98A: ConcatVar var_2F8
  loc_C6A98E: FLdPr Me
  loc_C6A991: MemLdI2 global_60
  loc_C6A994: CI4UI1
  loc_C6A995: CVarI4
  loc_C6A999: PopAdLdVar
  loc_C6A99A: LitVarI4
  loc_C6A9A2: PopAdLdVar
  loc_C6A9A3: FLdPr Me
  loc_C6A9A6: VCallAd Control_ID_ctacteFlex
  loc_C6A9A9: FStAdFunc var_33C
  loc_C6A9AC: FLdPr var_33C
  loc_C6A9AF: LateIdCallLdVar
  loc_C6A9B9: CStrVarTmp
  loc_C6A9BA: CVarStr var_35C
  loc_C6A9BD: ConcatVar var_36C
  loc_C6A9C1: LitVarStr var_37C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C6A9C6: ConcatVar var_38C
  loc_C6A9CA: CStrVarVal var_390
  loc_C6A9CE: FLdPr Me
  loc_C6A9D1: MemLdRfVar from_stack_1.global_52
  loc_C6A9D4: NewIfNullPr clsctacte
  loc_C6A9D7: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6A9DC: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C6A9EF: FFreeAd var_98 = "": var_164 = "": var_1C4 = "": var_278 = ""
  loc_C6A9FC: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_288 = "": var_298 = "": var_2B8 = "": var_234 = "": var_2C8 = "": var_2D8 = "": var_34C = "": var_2F8 = "": var_35C = "": var_36C = ""
  loc_C6AA25: FLdRfVar var_394
  loc_C6AA28: FLdPr Me
  loc_C6AA2B: MemLdRfVar from_stack_1.global_52
  loc_C6AA2E: NewIfNullPr clsctacte
  loc_C6AA31: from_stack_1 = clsctacte.RecordCount
  loc_C6AA36: ILdRf var_394
  loc_C6AA39: LitI4 1
  loc_C6AA3E: GeI4
  loc_C6AA3F: BranchF loc_C6AE55
  loc_C6AA42: FLdPr Me
  loc_C6AA45: MemLdRfVar from_stack_1.global_52
  loc_C6AA48: NewIfNullPr clsctacte
  loc_C6AA4B: Call clsctacte.MoveLast()
  loc_C6AA50: FLdRfVar var_94
  loc_C6AA53: FLdPr Me
  loc_C6AA56: MemLdRfVar from_stack_1.global_52
  loc_C6AA59: NewIfNullPr clsctacte
  loc_C6AA5C: from_stack_1 = clsctacte.MoviCtct
  loc_C6AA61: FLdI2 var_94
  loc_C6AA64: LitI2_Byte 1
  loc_C6AA66: AddI2
  loc_C6AA67: FStI2 var_88
  loc_C6AA6A: LitVarStr var_B8, vbNullString
  loc_C6AA6F: PopAdLdVar
  loc_C6AA70: FLdPr Me
  loc_C6AA73: VCallAd Control_ID_FeveCtctMsk
  loc_C6AA76: FStAdFunc var_98
  loc_C6AA79: FLdPr var_98
  loc_C6AA7C: LateIdSt
  loc_C6AA81: FFree1Ad var_98
  loc_C6AA84: FLdPr Me
  loc_C6AA87: MemLdI2 global_60
  loc_C6AA8A: CI4UI1
  loc_C6AA8B: CVarI4
  loc_C6AA8F: PopAdLdVar
  loc_C6AA90: LitVarI4
  loc_C6AA98: PopAdLdVar
  loc_C6AA99: FLdPr Me
  loc_C6AA9C: VCallAd Control_ID_ctacteFlex
  loc_C6AA9F: FStAdFunc var_98
  loc_C6AAA2: FLdPr var_98
  loc_C6AAA5: LateIdCallLdVar
  loc_C6AAAF: PopAd
  loc_C6AAB1: LitI4 2
  loc_C6AAB6: FLdRfVar var_A8
  loc_C6AAB9: CStrVarTmp
  loc_C6AABA: FStStrNoPop var_120
  loc_C6AABD: CR8Str
  loc_C6AABF: LitI2_Byte &HFF
  loc_C6AAC1: CR8I2
  loc_C6AAC2: MulR8
  loc_C6AAC3: CVarR8
  loc_C6AAC7: FLdRfVar var_F8
  loc_C6AACA: ImpAdCallFPR4  = Round(, )
  loc_C6AACF: FLdRfVar var_F8
  loc_C6AAD2: CR4Var
  loc_C6AAD3: FStFPR8 var_90
  loc_C6AAD6: FFree1Str var_120
  loc_C6AAD9: FFree1Ad var_98
  loc_C6AADC: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6AAE5: LitStr "Municipalidad de Guaymallén"
  loc_C6AAE8: LitStr "Municipalidad de Guaymallén"
  loc_C6AAEB: EqStr
  loc_C6AAED: BranchF loc_C6ACA4
  loc_C6AAF0: FLdRfVar var_94
  loc_C6AAF3: FLdPr Me
  loc_C6AAF6: MemLdRfVar from_stack_1.global_52
  loc_C6AAF9: NewIfNullPr clsctacte
  loc_C6AAFC: from_stack_1 = clsctacte.CodiOfic
  loc_C6AB01: FLdRfVar var_120
  loc_C6AB04: FLdPr Me
  loc_C6AB07: MemLdRfVar from_stack_1.global_52
  loc_C6AB0A: NewIfNullPr clsctacte
  loc_C6AB0D: from_stack_1 = clsctacte.CuenCtct
  loc_C6AB12: FLdRfVar var_396
  loc_C6AB15: FLdPr Me
  loc_C6AB18: MemLdRfVar from_stack_1.global_52
  loc_C6AB1B: NewIfNullPr clsctacte
  loc_C6AB1E: from_stack_1 = clsctacte.PeriCtct
  loc_C6AB23: FLdRfVar var_398
  loc_C6AB26: FLdPr Me
  loc_C6AB29: MemLdRfVar from_stack_1.global_52
  loc_C6AB2C: NewIfNullPr clsctacte
  loc_C6AB2F: from_stack_1 = clsctacte.BimeCtct
  loc_C6AB34: FLdRfVar var_394
  loc_C6AB37: FLdPr Me
  loc_C6AB3A: MemLdRfVar from_stack_1.global_52
  loc_C6AB3D: NewIfNullPr clsctacte
  loc_C6AB40: from_stack_1 = clsctacte.NumeCtct
  loc_C6AB45: FLdRfVar var_39A
  loc_C6AB48: FLdPr Me
  loc_C6AB4B: MemLdRfVar from_stack_1.global_52
  loc_C6AB4E: NewIfNullPr clsctacte
  loc_C6AB51: from_stack_1 = clsctacte.PeriBole
  loc_C6AB56: FLdRfVar var_3A0
  loc_C6AB59: FLdPr Me
  loc_C6AB5C: MemLdRfVar from_stack_1.global_52
  loc_C6AB5F: NewIfNullPr clsctacte
  loc_C6AB62: from_stack_1 = clsctacte.NumeBole
  loc_C6AB67: FLdRfVar var_168
  loc_C6AB6A: FLdPr Me
  loc_C6AB6D: MemLdRfVar from_stack_1.global_52
  loc_C6AB70: NewIfNullPr clsctacte
  loc_C6AB73: from_stack_1 = clsctacte.TipoCtct
  loc_C6AB78: LitI2_Byte 0
  loc_C6AB7A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6AB7F: FStFPR8 var_3B8
  loc_C6AB82: FLdPr Me
  loc_C6AB85: VCallAd Control_ID_FeveCtctMsk
  loc_C6AB88: FStAdFunc var_98
  loc_C6AB8B: FLdPr var_98
  loc_C6AB8E: LateIdLdVar var_A8 DispID_22 0
  loc_C6AB95: PopAd
  loc_C6AB97: FLdRfVar var_3A2
  loc_C6AB9A: FLdPr Me
  loc_C6AB9D: MemLdRfVar from_stack_1.global_52
  loc_C6ABA0: NewIfNullPr clsctacte
  loc_C6ABA3: from_stack_1 = clsctacte.PeriInfo
  loc_C6ABA8: FLdRfVar var_170
  loc_C6ABAB: FLdPr Me
  loc_C6ABAE: MemLdRfVar from_stack_1.global_52
  loc_C6ABB1: NewIfNullPr clsctacte
  loc_C6ABB4: from_stack_1 = clsctacte.CodiConc
  loc_C6ABB9: FLdRfVar var_3A8
  loc_C6ABBC: FLdPr Me
  loc_C6ABBF: MemLdRfVar from_stack_1.global_52
  loc_C6ABC2: NewIfNullPr clsctacte
  loc_C6ABC5: from_stack_1 = clsctacte.CodiFapa
  loc_C6ABCA: FLdRfVar var_3AA
  loc_C6ABCD: FLdPr Me
  loc_C6ABD0: MemLdRfVar from_stack_1.global_52
  loc_C6ABD3: NewIfNullPr clsctacte
  loc_C6ABD6: from_stack_1 = clsctacte.CuotDefa
  loc_C6ABDB: FLdRfVar var_3B0
  loc_C6ABDE: FLdPr Me
  loc_C6ABE1: MemLdRfVar from_stack_1.global_52
  loc_C6ABE4: NewIfNullPr clsctacte
  loc_C6ABE7: from_stack_1 = clsctacte.NumeApre
  loc_C6ABEC: FLdRfVar var_174
  loc_C6ABEF: FLdPr Me
  loc_C6ABF2: VCallAd Control_ID_ExpeCtctTxt
  loc_C6ABF5: FStAdFunc var_164
  loc_C6ABF8: FLdPr var_164
  loc_C6ABFB:  = Me.Text
  loc_C6AC00: FLdRfVar var_178
  loc_C6AC03: FLdPr Me
  loc_C6AC06: VCallAd Control_ID_DetaCtctTxt
  loc_C6AC09: FStAdFunc var_1C4
  loc_C6AC0C: FLdPr var_1C4
  loc_C6AC0F:  = Me.Text
  loc_C6AC14: LitI2_Byte 0
  loc_C6AC16: CR8I2
  loc_C6AC17: PopFPR8
  loc_C6AC18: FLdR8 var_90
  loc_C6AC1B: ILdRf var_178
  loc_C6AC1E: LitI4 0
  loc_C6AC23: LitI2_Byte 0
  loc_C6AC25: LitStr vbNullString
  loc_C6AC28: ILdRf var_174
  loc_C6AC2B: FLdUI1
  loc_C6AC2F: ILdRf var_3B0
  loc_C6AC32: FLdI2 var_3AA
  loc_C6AC35: ILdRf var_3A8
  loc_C6AC38: ILdRf var_170
  loc_C6AC3B: FLdI2 var_3A2
  loc_C6AC3E: LitI2_Byte 0
  loc_C6AC40: LitStr vbNullString
  loc_C6AC43: FLdRfVar var_A8
  loc_C6AC46: CStrVarTmp
  loc_C6AC47: CVarStr var_D8
  loc_C6AC4A: PopAdLdVar
  loc_C6AC4B: FLdFPR8 var_3B8
  loc_C6AC4E: CVarDate var_B8
  loc_C6AC52: PopAdLdVar
  loc_C6AC53: ILdRf var_168
  loc_C6AC56: ILdRf var_3A0
  loc_C6AC59: FLdI2 var_39A
  loc_C6AC5C: LitI2_Byte 0
  loc_C6AC5E: LitI2_Byte 0
  loc_C6AC60: CUI1I2
  loc_C6AC62: FLdI2 var_88
  loc_C6AC65: ILdRf var_394
  loc_C6AC68: FLdI2 var_398
  loc_C6AC6B: FLdI2 var_396
  loc_C6AC6E: ILdRf var_120
  loc_C6AC71: FLdI2 var_94
  loc_C6AC74: CUI1I2
  loc_C6AC76: FLdPr Me
  loc_C6AC79: MemLdRfVar from_stack_1.global_52
  loc_C6AC7C: NewIfNullPr clsctacte
  loc_C6AC7F: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C6AC84: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = ""
  loc_C6AC91: FFreeAd var_98 = "": var_164 = ""
  loc_C6AC9A: FFreeVar var_A8 = ""
  loc_C6ACA1: Branch loc_C6AE55
  loc_C6ACA4: FLdRfVar var_94
  loc_C6ACA7: FLdPr Me
  loc_C6ACAA: MemLdRfVar from_stack_1.global_52
  loc_C6ACAD: NewIfNullPr clsctacte
  loc_C6ACB0: from_stack_1 = clsctacte.CodiOfic
  loc_C6ACB5: FLdRfVar var_120
  loc_C6ACB8: FLdPr Me
  loc_C6ACBB: MemLdRfVar from_stack_1.global_52
  loc_C6ACBE: NewIfNullPr clsctacte
  loc_C6ACC1: from_stack_1 = clsctacte.CuenCtct
  loc_C6ACC6: FLdRfVar var_396
  loc_C6ACC9: FLdPr Me
  loc_C6ACCC: MemLdRfVar from_stack_1.global_52
  loc_C6ACCF: NewIfNullPr clsctacte
  loc_C6ACD2: from_stack_1 = clsctacte.PeriCtct
  loc_C6ACD7: FLdRfVar var_398
  loc_C6ACDA: FLdPr Me
  loc_C6ACDD: MemLdRfVar from_stack_1.global_52
  loc_C6ACE0: NewIfNullPr clsctacte
  loc_C6ACE3: from_stack_1 = clsctacte.BimeCtct
  loc_C6ACE8: FLdRfVar var_394
  loc_C6ACEB: FLdPr Me
  loc_C6ACEE: MemLdRfVar from_stack_1.global_52
  loc_C6ACF1: NewIfNullPr clsctacte
  loc_C6ACF4: from_stack_1 = clsctacte.NumeCtct
  loc_C6ACF9: FLdRfVar var_39A
  loc_C6ACFC: FLdPr Me
  loc_C6ACFF: MemLdRfVar from_stack_1.global_52
  loc_C6AD02: NewIfNullPr clsctacte
  loc_C6AD05: from_stack_1 = clsctacte.PeriBole
  loc_C6AD0A: FLdRfVar var_3A0
  loc_C6AD0D: FLdPr Me
  loc_C6AD10: MemLdRfVar from_stack_1.global_52
  loc_C6AD13: NewIfNullPr clsctacte
  loc_C6AD16: from_stack_1 = clsctacte.NumeBole
  loc_C6AD1B: FLdRfVar var_168
  loc_C6AD1E: FLdPr Me
  loc_C6AD21: MemLdRfVar from_stack_1.global_52
  loc_C6AD24: NewIfNullPr clsctacte
  loc_C6AD27: from_stack_1 = clsctacte.TipoCtct
  loc_C6AD2C: LitI2_Byte 0
  loc_C6AD2E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6AD33: FStFPR8 var_3B8
  loc_C6AD36: FLdPr Me
  loc_C6AD39: VCallAd Control_ID_FeveCtctMsk
  loc_C6AD3C: FStAdFunc var_98
  loc_C6AD3F: FLdPr var_98
  loc_C6AD42: LateIdLdVar var_A8 DispID_22 0
  loc_C6AD49: PopAd
  loc_C6AD4B: FLdRfVar var_3A2
  loc_C6AD4E: FLdPr Me
  loc_C6AD51: MemLdRfVar from_stack_1.global_52
  loc_C6AD54: NewIfNullPr clsctacte
  loc_C6AD57: from_stack_1 = clsctacte.PeriInfo
  loc_C6AD5C: FLdRfVar var_170
  loc_C6AD5F: FLdPr Me
  loc_C6AD62: MemLdRfVar from_stack_1.global_52
  loc_C6AD65: NewIfNullPr clsctacte
  loc_C6AD68: from_stack_1 = clsctacte.CodiConc
  loc_C6AD6D: FLdRfVar var_3A8
  loc_C6AD70: FLdPr Me
  loc_C6AD73: MemLdRfVar from_stack_1.global_52
  loc_C6AD76: NewIfNullPr clsctacte
  loc_C6AD79: from_stack_1 = clsctacte.CodiFapa
  loc_C6AD7E: FLdRfVar var_3AA
  loc_C6AD81: FLdPr Me
  loc_C6AD84: MemLdRfVar from_stack_1.global_52
  loc_C6AD87: NewIfNullPr clsctacte
  loc_C6AD8A: from_stack_1 = clsctacte.CuotDefa
  loc_C6AD8F: FLdRfVar var_3B0
  loc_C6AD92: FLdPr Me
  loc_C6AD95: MemLdRfVar from_stack_1.global_52
  loc_C6AD98: NewIfNullPr clsctacte
  loc_C6AD9B: from_stack_1 = clsctacte.NumeApre
  loc_C6ADA0: FLdRfVar var_174
  loc_C6ADA3: FLdPr Me
  loc_C6ADA6: VCallAd Control_ID_ExpeCtctTxt
  loc_C6ADA9: FStAdFunc var_164
  loc_C6ADAC: FLdPr var_164
  loc_C6ADAF:  = Me.Text
  loc_C6ADB4: FLdRfVar var_178
  loc_C6ADB7: FLdPr Me
  loc_C6ADBA: VCallAd Control_ID_DetaCtctTxt
  loc_C6ADBD: FStAdFunc var_1C4
  loc_C6ADC0: FLdPr var_1C4
  loc_C6ADC3:  = Me.Text
  loc_C6ADC8: LitI2_Byte 0
  loc_C6ADCA: CR8I2
  loc_C6ADCB: PopFPR8
  loc_C6ADCC: FLdR8 var_90
  loc_C6ADCF: ILdRf var_178
  loc_C6ADD2: LitI4 0
  loc_C6ADD7: LitI2_Byte 0
  loc_C6ADD9: LitStr "s/f"
  loc_C6ADDC: ILdRf var_174
  loc_C6ADDF: FLdUI1
  loc_C6ADE3: ILdRf var_3B0
  loc_C6ADE6: FLdI2 var_3AA
  loc_C6ADE9: ILdRf var_3A8
  loc_C6ADEC: ILdRf var_170
  loc_C6ADEF: FLdI2 var_3A2
  loc_C6ADF2: LitI2_Byte 0
  loc_C6ADF4: LitStr vbNullString
  loc_C6ADF7: FLdRfVar var_A8
  loc_C6ADFA: CStrVarTmp
  loc_C6ADFB: CVarStr var_D8
  loc_C6ADFE: PopAdLdVar
  loc_C6ADFF: FLdFPR8 var_3B8
  loc_C6AE02: CVarDate var_B8
  loc_C6AE06: PopAdLdVar
  loc_C6AE07: ILdRf var_168
  loc_C6AE0A: ILdRf var_3A0
  loc_C6AE0D: FLdI2 var_39A
  loc_C6AE10: LitI2_Byte 0
  loc_C6AE12: LitI2_Byte 0
  loc_C6AE14: CUI1I2
  loc_C6AE16: FLdI2 var_88
  loc_C6AE19: ILdRf var_394
  loc_C6AE1C: FLdI2 var_398
  loc_C6AE1F: FLdI2 var_396
  loc_C6AE22: ILdRf var_120
  loc_C6AE25: FLdI2 var_94
  loc_C6AE28: CUI1I2
  loc_C6AE2A: FLdPr Me
  loc_C6AE2D: MemLdRfVar from_stack_1.global_52
  loc_C6AE30: NewIfNullPr clsctacte
  loc_C6AE33: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C6AE38: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = ""
  loc_C6AE45: FFreeAd var_98 = "": var_164 = ""
  loc_C6AE4E: FFreeVar var_A8 = ""
  loc_C6AE55: FLdPr Me
  loc_C6AE58: MemLdI2 global_60
  loc_C6AE5B: CI4UI1
  loc_C6AE5C: CVarI4
  loc_C6AE60: PopAdLdVar
  loc_C6AE61: LitVarI4
  loc_C6AE69: PopAdLdVar
  loc_C6AE6A: FLdPr Me
  loc_C6AE6D: VCallAd Control_ID_ctacteFlex
  loc_C6AE70: FStAdFunc var_98
  loc_C6AE73: FLdPr var_98
  loc_C6AE76: LateIdCallLdVar
  loc_C6AE80: CStrVarTmp
  loc_C6AE81: FStStrNoPop var_120
  loc_C6AE84: LitStr "SS"
  loc_C6AE87: EqStr
  loc_C6AE89: FFree1Str var_120
  loc_C6AE8C: FFree1Ad var_98
  loc_C6AE8F: FFree1Var var_A8 = ""
  loc_C6AE92: BranchF loc_C6B462
  loc_C6AE95: FLdPr Me
  loc_C6AE98: MemLdI2 global_60
  loc_C6AE9B: CI4UI1
  loc_C6AE9C: CVarI4
  loc_C6AEA0: PopAdLdVar
  loc_C6AEA1: LitVarI4
  loc_C6AEA9: PopAdLdVar
  loc_C6AEAA: FLdPr Me
  loc_C6AEAD: VCallAd Control_ID_ctacteFlex
  loc_C6AEB0: FStAdFunc var_1C4
  loc_C6AEB3: FLdPr var_1C4
  loc_C6AEB6: LateIdCallLdVar
  loc_C6AEC0: PopAd
  loc_C6AEC2: FLdPr Me
  loc_C6AEC5: MemLdI2 global_60
  loc_C6AEC8: CI4UI1
  loc_C6AEC9: CVarI4
  loc_C6AECD: PopAdLdVar
  loc_C6AECE: LitVarI4
  loc_C6AED6: PopAdLdVar
  loc_C6AED7: FLdPr Me
  loc_C6AEDA: VCallAd Control_ID_ctacteFlex
  loc_C6AEDD: FStAdFunc var_278
  loc_C6AEE0: FLdPr var_278
  loc_C6AEE3: LateIdCallLdVar
  loc_C6AEED: PopAd
  loc_C6AEEF: LitStr "SELECT * FROM ctacte "
  loc_C6AEF2: LitStr " WHERE ctacte.CodiOfic = "
  loc_C6AEF5: ConcatStr
  loc_C6AEF6: FStStrNoPop var_120
  loc_C6AEF9: FLdPr Me
  loc_C6AEFC: MemLdI2 global_60
  loc_C6AEFF: CI4UI1
  loc_C6AF00: CVarI4
  loc_C6AF04: PopAdLdVar
  loc_C6AF05: LitVarI4
  loc_C6AF0D: PopAdLdVar
  loc_C6AF0E: FLdPr Me
  loc_C6AF11: VCallAd Control_ID_ctacteFlex
  loc_C6AF14: FStAdFunc var_98
  loc_C6AF17: FLdPr var_98
  loc_C6AF1A: LateIdCallLdVar
  loc_C6AF24: CStrVarTmp
  loc_C6AF25: FStStrNoPop var_168
  loc_C6AF28: ConcatStr
  loc_C6AF29: FStStrNoPop var_170
  loc_C6AF2C: LitStr " AND ctacte.CuenCtct = '"
  loc_C6AF2F: ConcatStr
  loc_C6AF30: FStStrNoPop var_174
  loc_C6AF33: FLdPr Me
  loc_C6AF36: MemLdI2 global_60
  loc_C6AF39: CI4UI1
  loc_C6AF3A: CVarI4
  loc_C6AF3E: PopAdLdVar
  loc_C6AF3F: LitVarI4
  loc_C6AF47: PopAdLdVar
  loc_C6AF48: FLdPr Me
  loc_C6AF4B: VCallAd Control_ID_ctacteFlex
  loc_C6AF4E: FStAdFunc var_164
  loc_C6AF51: FLdPr var_164
  loc_C6AF54: LateIdCallLdVar
  loc_C6AF5E: CStrVarTmp
  loc_C6AF5F: FStStrNoPop var_178
  loc_C6AF62: ConcatStr
  loc_C6AF63: FStStrNoPop var_17C
  loc_C6AF66: LitStr "'"
  loc_C6AF69: ConcatStr
  loc_C6AF6A: FStStrNoPop var_180
  loc_C6AF6D: LitStr " AND ctacte.PeriCtct = "
  loc_C6AF70: ConcatStr
  loc_C6AF71: CVarStr var_204
  loc_C6AF74: LitVarI2 var_1E4, 4
  loc_C6AF79: LitI4 4
  loc_C6AF7E: FLdRfVar var_F8
  loc_C6AF81: CStrVarTmp
  loc_C6AF82: CVarStr var_118
  loc_C6AF85: FLdRfVar var_1F4
  loc_C6AF88: ImpAdCallFPR4  = Mid(, , )
  loc_C6AF8D: FLdRfVar var_1F4
  loc_C6AF90: ConcatVar var_214
  loc_C6AF94: LitVarStr var_224, " AND ctacte.BimeCtct = "
  loc_C6AF99: ConcatVar var_234
  loc_C6AF9D: LitVarI2 var_2B8, 2
  loc_C6AFA2: LitI4 1
  loc_C6AFA7: FLdRfVar var_288
  loc_C6AFAA: CStrVarTmp
  loc_C6AFAB: CVarStr var_298
  loc_C6AFAE: FLdRfVar var_2C8
  loc_C6AFB1: ImpAdCallFPR4  = Mid(, , )
  loc_C6AFB6: FLdRfVar var_2C8
  loc_C6AFB9: ConcatVar var_2D8
  loc_C6AFBD: LitVarStr var_2E8, " AND ctacte.NumeCtct = "
  loc_C6AFC2: ConcatVar var_2F8
  loc_C6AFC6: FLdPr Me
  loc_C6AFC9: MemLdI2 global_60
  loc_C6AFCC: CI4UI1
  loc_C6AFCD: CVarI4
  loc_C6AFD1: PopAdLdVar
  loc_C6AFD2: LitVarI4
  loc_C6AFDA: PopAdLdVar
  loc_C6AFDB: FLdPr Me
  loc_C6AFDE: VCallAd Control_ID_ctacteFlex
  loc_C6AFE1: FStAdFunc var_33C
  loc_C6AFE4: FLdPr var_33C
  loc_C6AFE7: LateIdCallLdVar
  loc_C6AFF1: CStrVarTmp
  loc_C6AFF2: CVarStr var_35C
  loc_C6AFF5: ConcatVar var_36C
  loc_C6AFF9: LitVarStr var_37C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C6AFFE: ConcatVar var_38C
  loc_C6B002: CStrVarVal var_390
  loc_C6B006: FLdPr Me
  loc_C6B009: MemLdRfVar from_stack_1.global_52
  loc_C6B00C: NewIfNullPr clsctacte
  loc_C6B00F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6B014: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C6B027: FFreeAd var_98 = "": var_164 = "": var_1C4 = "": var_278 = ""
  loc_C6B034: FFreeVar var_A8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_288 = "": var_298 = "": var_2B8 = "": var_234 = "": var_2C8 = "": var_2D8 = "": var_34C = "": var_2F8 = "": var_35C = "": var_36C = ""
  loc_C6B05D: FLdRfVar var_394
  loc_C6B060: FLdPr Me
  loc_C6B063: MemLdRfVar from_stack_1.global_52
  loc_C6B066: NewIfNullPr clsctacte
  loc_C6B069: from_stack_1 = clsctacte.RecordCount
  loc_C6B06E: ILdRf var_394
  loc_C6B071: LitI4 1
  loc_C6B076: GeI4
  loc_C6B077: BranchF loc_C6B462
  loc_C6B07A: FLdPr Me
  loc_C6B07D: MemLdRfVar from_stack_1.global_52
  loc_C6B080: NewIfNullPr clsctacte
  loc_C6B083: Call clsctacte.MoveLast()
  loc_C6B088: FLdRfVar var_94
  loc_C6B08B: FLdPr Me
  loc_C6B08E: MemLdRfVar from_stack_1.global_52
  loc_C6B091: NewIfNullPr clsctacte
  loc_C6B094: from_stack_1 = clsctacte.MoviCtct
  loc_C6B099: FLdI2 var_94
  loc_C6B09C: LitI2_Byte 1
  loc_C6B09E: AddI2
  loc_C6B09F: FStI2 var_88
  loc_C6B0A2: LitVarStr var_B8, vbNullString
  loc_C6B0A7: PopAdLdVar
  loc_C6B0A8: FLdPr Me
  loc_C6B0AB: VCallAd Control_ID_FeveCtctMsk
  loc_C6B0AE: FStAdFunc var_98
  loc_C6B0B1: FLdPr var_98
  loc_C6B0B4: LateIdSt
  loc_C6B0B9: FFree1Ad var_98
  loc_C6B0BC: LitStr "Municipalidad de Guaymallén"
  loc_C6B0BF: LitStr "Municipalidad de Guaymallén"
  loc_C6B0C2: EqStr
  loc_C6B0C4: BranchF loc_C6B296
  loc_C6B0C7: FLdRfVar var_94
  loc_C6B0CA: FLdPr Me
  loc_C6B0CD: MemLdRfVar from_stack_1.global_52
  loc_C6B0D0: NewIfNullPr clsctacte
  loc_C6B0D3: from_stack_1 = clsctacte.CodiOfic
  loc_C6B0D8: FLdRfVar var_120
  loc_C6B0DB: FLdPr Me
  loc_C6B0DE: MemLdRfVar from_stack_1.global_52
  loc_C6B0E1: NewIfNullPr clsctacte
  loc_C6B0E4: from_stack_1 = clsctacte.CuenCtct
  loc_C6B0E9: FLdRfVar var_396
  loc_C6B0EC: FLdPr Me
  loc_C6B0EF: MemLdRfVar from_stack_1.global_52
  loc_C6B0F2: NewIfNullPr clsctacte
  loc_C6B0F5: from_stack_1 = clsctacte.PeriCtct
  loc_C6B0FA: FLdRfVar var_398
  loc_C6B0FD: FLdPr Me
  loc_C6B100: MemLdRfVar from_stack_1.global_52
  loc_C6B103: NewIfNullPr clsctacte
  loc_C6B106: from_stack_1 = clsctacte.BimeCtct
  loc_C6B10B: FLdRfVar var_394
  loc_C6B10E: FLdPr Me
  loc_C6B111: MemLdRfVar from_stack_1.global_52
  loc_C6B114: NewIfNullPr clsctacte
  loc_C6B117: from_stack_1 = clsctacte.NumeCtct
  loc_C6B11C: FLdRfVar var_39A
  loc_C6B11F: FLdPr Me
  loc_C6B122: MemLdRfVar from_stack_1.global_52
  loc_C6B125: NewIfNullPr clsctacte
  loc_C6B128: from_stack_1 = clsctacte.PeriBole
  loc_C6B12D: FLdRfVar var_3A0
  loc_C6B130: FLdPr Me
  loc_C6B133: MemLdRfVar from_stack_1.global_52
  loc_C6B136: NewIfNullPr clsctacte
  loc_C6B139: from_stack_1 = clsctacte.NumeBole
  loc_C6B13E: FLdRfVar var_168
  loc_C6B141: FLdPr Me
  loc_C6B144: MemLdRfVar from_stack_1.global_52
  loc_C6B147: NewIfNullPr clsctacte
  loc_C6B14A: from_stack_1 = clsctacte.TipoCtct
  loc_C6B14F: LitI2_Byte 0
  loc_C6B151: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6B156: FStFPR8 var_3B8
  loc_C6B159: FLdPr Me
  loc_C6B15C: VCallAd Control_ID_FeveCtctMsk
  loc_C6B15F: FStAdFunc var_98
  loc_C6B162: FLdPr var_98
  loc_C6B165: LateIdLdVar var_A8 DispID_22 0
  loc_C6B16C: PopAd
  loc_C6B16E: FLdRfVar var_3A2
  loc_C6B171: FLdPr Me
  loc_C6B174: MemLdRfVar from_stack_1.global_52
  loc_C6B177: NewIfNullPr clsctacte
  loc_C6B17A: from_stack_1 = clsctacte.PeriInfo
  loc_C6B17F: FLdRfVar var_170
  loc_C6B182: FLdPr Me
  loc_C6B185: MemLdRfVar from_stack_1.global_52
  loc_C6B188: NewIfNullPr clsctacte
  loc_C6B18B: from_stack_1 = clsctacte.CodiConc
  loc_C6B190: FLdRfVar var_3A8
  loc_C6B193: FLdPr Me
  loc_C6B196: MemLdRfVar from_stack_1.global_52
  loc_C6B199: NewIfNullPr clsctacte
  loc_C6B19C: from_stack_1 = clsctacte.CodiFapa
  loc_C6B1A1: FLdRfVar var_3AA
  loc_C6B1A4: FLdPr Me
  loc_C6B1A7: MemLdRfVar from_stack_1.global_52
  loc_C6B1AA: NewIfNullPr clsctacte
  loc_C6B1AD: from_stack_1 = clsctacte.CuotDefa
  loc_C6B1B2: FLdRfVar var_3B0
  loc_C6B1B5: FLdPr Me
  loc_C6B1B8: MemLdRfVar from_stack_1.global_52
  loc_C6B1BB: NewIfNullPr clsctacte
  loc_C6B1BE: from_stack_1 = clsctacte.NumeApre
  loc_C6B1C3: FLdRfVar var_174
  loc_C6B1C6: FLdPr Me
  loc_C6B1C9: VCallAd Control_ID_ExpeCtctTxt
  loc_C6B1CC: FStAdFunc var_164
  loc_C6B1CF: FLdPr var_164
  loc_C6B1D2:  = Me.Text
  loc_C6B1D7: FLdRfVar var_178
  loc_C6B1DA: FLdPr Me
  loc_C6B1DD: VCallAd Control_ID_DetaCtctTxt
  loc_C6B1E0: FStAdFunc var_1C4
  loc_C6B1E3: FLdPr var_1C4
  loc_C6B1E6:  = Me.Text
  loc_C6B1EB: FLdRfVar var_17C
  loc_C6B1EE: FLdPr Me
  loc_C6B1F1: VCallAd Control_ID_ImpoCtctTxt
  loc_C6B1F4: FStAdFunc var_278
  loc_C6B1F7: FLdPr var_278
  loc_C6B1FA:  = Me.Text
  loc_C6B1FF: LitI2_Byte 0
  loc_C6B201: CR8I2
  loc_C6B202: PopFPR8
  loc_C6B203: ILdRf var_17C
  loc_C6B206: CR8Str
  loc_C6B208: PopFPR8
  loc_C6B209: ILdRf var_178
  loc_C6B20C: LitI4 0
  loc_C6B211: LitI2_Byte 0
  loc_C6B213: LitStr vbNullString
  loc_C6B216: ILdRf var_174
  loc_C6B219: FLdUI1
  loc_C6B21D: ILdRf var_3B0
  loc_C6B220: FLdI2 var_3AA
  loc_C6B223: ILdRf var_3A8
  loc_C6B226: ILdRf var_170
  loc_C6B229: FLdI2 var_3A2
  loc_C6B22C: LitI2_Byte 0
  loc_C6B22E: LitStr vbNullString
  loc_C6B231: FLdRfVar var_A8
  loc_C6B234: CStrVarTmp
  loc_C6B235: CVarStr var_D8
  loc_C6B238: PopAdLdVar
  loc_C6B239: FLdFPR8 var_3B8
  loc_C6B23C: CVarDate var_B8
  loc_C6B240: PopAdLdVar
  loc_C6B241: ILdRf var_168
  loc_C6B244: ILdRf var_3A0
  loc_C6B247: FLdI2 var_39A
  loc_C6B24A: LitI2_Byte 0
  loc_C6B24C: LitI2_Byte 0
  loc_C6B24E: CUI1I2
  loc_C6B250: FLdI2 var_88
  loc_C6B253: ILdRf var_394
  loc_C6B256: FLdI2 var_398
  loc_C6B259: FLdI2 var_396
  loc_C6B25C: ILdRf var_120
  loc_C6B25F: FLdI2 var_94
  loc_C6B262: CUI1I2
  loc_C6B264: FLdPr Me
  loc_C6B267: MemLdRfVar from_stack_1.global_52
  loc_C6B26A: NewIfNullPr clsctacte
  loc_C6B26D: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C6B272: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = ""
  loc_C6B281: FFreeAd var_98 = "": var_164 = "": var_1C4 = ""
  loc_C6B28C: FFreeVar var_A8 = ""
  loc_C6B293: Branch loc_C6B462
  loc_C6B296: FLdRfVar var_94
  loc_C6B299: FLdPr Me
  loc_C6B29C: MemLdRfVar from_stack_1.global_52
  loc_C6B29F: NewIfNullPr clsctacte
  loc_C6B2A2: from_stack_1 = clsctacte.CodiOfic
  loc_C6B2A7: FLdRfVar var_120
  loc_C6B2AA: FLdPr Me
  loc_C6B2AD: MemLdRfVar from_stack_1.global_52
  loc_C6B2B0: NewIfNullPr clsctacte
  loc_C6B2B3: from_stack_1 = clsctacte.CuenCtct
  loc_C6B2B8: FLdRfVar var_396
  loc_C6B2BB: FLdPr Me
  loc_C6B2BE: MemLdRfVar from_stack_1.global_52
  loc_C6B2C1: NewIfNullPr clsctacte
  loc_C6B2C4: from_stack_1 = clsctacte.PeriCtct
  loc_C6B2C9: FLdRfVar var_398
  loc_C6B2CC: FLdPr Me
  loc_C6B2CF: MemLdRfVar from_stack_1.global_52
  loc_C6B2D2: NewIfNullPr clsctacte
  loc_C6B2D5: from_stack_1 = clsctacte.BimeCtct
  loc_C6B2DA: FLdRfVar var_394
  loc_C6B2DD: FLdPr Me
  loc_C6B2E0: MemLdRfVar from_stack_1.global_52
  loc_C6B2E3: NewIfNullPr clsctacte
  loc_C6B2E6: from_stack_1 = clsctacte.NumeCtct
  loc_C6B2EB: FLdRfVar var_39A
  loc_C6B2EE: FLdPr Me
  loc_C6B2F1: MemLdRfVar from_stack_1.global_52
  loc_C6B2F4: NewIfNullPr clsctacte
  loc_C6B2F7: from_stack_1 = clsctacte.PeriBole
  loc_C6B2FC: FLdRfVar var_3A0
  loc_C6B2FF: FLdPr Me
  loc_C6B302: MemLdRfVar from_stack_1.global_52
  loc_C6B305: NewIfNullPr clsctacte
  loc_C6B308: from_stack_1 = clsctacte.NumeBole
  loc_C6B30D: FLdRfVar var_168
  loc_C6B310: FLdPr Me
  loc_C6B313: MemLdRfVar from_stack_1.global_52
  loc_C6B316: NewIfNullPr clsctacte
  loc_C6B319: from_stack_1 = clsctacte.TipoCtct
  loc_C6B31E: LitI2_Byte 0
  loc_C6B320: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6B325: FStFPR8 var_3B8
  loc_C6B328: FLdPr Me
  loc_C6B32B: VCallAd Control_ID_FeveCtctMsk
  loc_C6B32E: FStAdFunc var_98
  loc_C6B331: FLdPr var_98
  loc_C6B334: LateIdLdVar var_A8 DispID_22 0
  loc_C6B33B: PopAd
  loc_C6B33D: FLdRfVar var_3A2
  loc_C6B340: FLdPr Me
  loc_C6B343: MemLdRfVar from_stack_1.global_52
  loc_C6B346: NewIfNullPr clsctacte
  loc_C6B349: from_stack_1 = clsctacte.PeriInfo
  loc_C6B34E: FLdRfVar var_170
  loc_C6B351: FLdPr Me
  loc_C6B354: MemLdRfVar from_stack_1.global_52
  loc_C6B357: NewIfNullPr clsctacte
  loc_C6B35A: from_stack_1 = clsctacte.CodiConc
  loc_C6B35F: FLdRfVar var_3A8
  loc_C6B362: FLdPr Me
  loc_C6B365: MemLdRfVar from_stack_1.global_52
  loc_C6B368: NewIfNullPr clsctacte
  loc_C6B36B: from_stack_1 = clsctacte.CodiFapa
  loc_C6B370: FLdRfVar var_3AA
  loc_C6B373: FLdPr Me
  loc_C6B376: MemLdRfVar from_stack_1.global_52
  loc_C6B379: NewIfNullPr clsctacte
  loc_C6B37C: from_stack_1 = clsctacte.CuotDefa
  loc_C6B381: FLdRfVar var_3B0
  loc_C6B384: FLdPr Me
  loc_C6B387: MemLdRfVar from_stack_1.global_52
  loc_C6B38A: NewIfNullPr clsctacte
  loc_C6B38D: from_stack_1 = clsctacte.NumeApre
  loc_C6B392: FLdRfVar var_174
  loc_C6B395: FLdPr Me
  loc_C6B398: VCallAd Control_ID_ExpeCtctTxt
  loc_C6B39B: FStAdFunc var_164
  loc_C6B39E: FLdPr var_164
  loc_C6B3A1:  = Me.Text
  loc_C6B3A6: FLdRfVar var_178
  loc_C6B3A9: FLdPr Me
  loc_C6B3AC: VCallAd Control_ID_DetaCtctTxt
  loc_C6B3AF: FStAdFunc var_1C4
  loc_C6B3B2: FLdPr var_1C4
  loc_C6B3B5:  = Me.Text
  loc_C6B3BA: FLdRfVar var_17C
  loc_C6B3BD: FLdPr Me
  loc_C6B3C0: VCallAd Control_ID_ImpoCtctTxt
  loc_C6B3C3: FStAdFunc var_278
  loc_C6B3C6: FLdPr var_278
  loc_C6B3C9:  = Me.Text
  loc_C6B3CE: LitI2_Byte 0
  loc_C6B3D0: CR8I2
  loc_C6B3D1: PopFPR8
  loc_C6B3D2: ILdRf var_17C
  loc_C6B3D5: CR8Str
  loc_C6B3D7: PopFPR8
  loc_C6B3D8: ILdRf var_178
  loc_C6B3DB: LitI4 0
  loc_C6B3E0: LitI2_Byte 0
  loc_C6B3E2: LitStr "s/f"
  loc_C6B3E5: ILdRf var_174
  loc_C6B3E8: FLdUI1
  loc_C6B3EC: ILdRf var_3B0
  loc_C6B3EF: FLdI2 var_3AA
  loc_C6B3F2: ILdRf var_3A8
  loc_C6B3F5: ILdRf var_170
  loc_C6B3F8: FLdI2 var_3A2
  loc_C6B3FB: LitI2_Byte 0
  loc_C6B3FD: LitStr vbNullString
  loc_C6B400: FLdRfVar var_A8
  loc_C6B403: CStrVarTmp
  loc_C6B404: CVarStr var_D8
  loc_C6B407: PopAdLdVar
  loc_C6B408: FLdFPR8 var_3B8
  loc_C6B40B: CVarDate var_B8
  loc_C6B40F: PopAdLdVar
  loc_C6B410: ILdRf var_168
  loc_C6B413: ILdRf var_3A0
  loc_C6B416: FLdI2 var_39A
  loc_C6B419: LitI2_Byte 0
  loc_C6B41B: LitI2_Byte 0
  loc_C6B41D: CUI1I2
  loc_C6B41F: FLdI2 var_88
  loc_C6B422: ILdRf var_394
  loc_C6B425: FLdI2 var_398
  loc_C6B428: FLdI2 var_396
  loc_C6B42B: ILdRf var_120
  loc_C6B42E: FLdI2 var_94
  loc_C6B431: CUI1I2
  loc_C6B433: FLdPr Me
  loc_C6B436: MemLdRfVar from_stack_1.global_52
  loc_C6B439: NewIfNullPr clsctacte
  loc_C6B43C: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C6B441: FFreeStr var_120 = "": var_168 = "": var_170 = "": var_174 = "": var_178 = ""
  loc_C6B450: FFreeAd var_98 = "": var_164 = "": var_1C4 = ""
  loc_C6B45B: FFreeVar var_A8 = ""
  loc_C6B462: FLdPr Me
  loc_C6B465: MemLdRfVar from_stack_1.global_60
  loc_C6B468: NextI2 var_16C, loc_C6A81D
  loc_C6B46D: FLdRfVar var_94
  loc_C6B470: FLdPr Me
  loc_C6B473: VCallAd Control_ID_DebitoManualOpt
  loc_C6B476: FStAdFunc var_98
  loc_C6B479: FLdPr var_98
  loc_C6B47C:  = Me.Value
  loc_C6B481: LitVarStr var_E8, "LA DEVOLUCION DE INGRESO se realizó con exito"
  loc_C6B486: FStVarCopyObj var_D8
  loc_C6B489: FLdRfVar var_D8
  loc_C6B48C: LitVarStr var_C8, "El DEBITO MANUAL se realizó con exito"
  loc_C6B491: FStVarCopyObj var_A8
  loc_C6B494: FLdRfVar var_A8
  loc_C6B497: FLdI2 var_94
  loc_C6B49A: LitI2_Byte &HFF
  loc_C6B49C: EqI2
  loc_C6B49D: CVarBoolI2 var_B8
  loc_C6B4A1: FLdRfVar var_F8
  loc_C6B4A4: ImpAdCallFPR4  = IIf(, , )
  loc_C6B4A9: FLdRfVar var_F8
  loc_C6B4AC: CStrVarTmp
  loc_C6B4AD: FStStrNoPop var_120
  loc_C6B4B0: FLdPr Me
  loc_C6B4B3: MemStStrCopy
  loc_C6B4B7: FFree1Str var_120
  loc_C6B4BA: FFree1Ad var_98
  loc_C6B4BD: FFreeVar var_B8 = "": var_A8 = "": var_D8 = ""
  loc_C6B4C8: FLdPr Me
  loc_C6B4CB: MemLdStr global_76
  loc_C6B4CE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C6B4D3: Call Proc_138_23_B19968()
  loc_C6B4D8: ILdRf Me
  loc_C6B4DB: CastAd
  loc_C6B4DE: FStAdFunc var_98
  loc_C6B4E1: FLdRfVar var_98
  loc_C6B4E4: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_C6B4E9: FFree1Ad var_98
  loc_C6B4EC: LitI4 1
  loc_C6B4F1: LitI4 1
  loc_C6B4F6: LitVarStr var_C8, "0.00"
  loc_C6B4FB: FStVarCopyObj var_D8
  loc_C6B4FE: FLdRfVar var_D8
  loc_C6B501: LitVarI2 var_A8, 0
  loc_C6B506: FLdRfVar var_F8
  loc_C6B509: ImpAdCallFPR4  = Format(, )
  loc_C6B50E: FLdRfVar var_F8
  loc_C6B511: CStrVarVal var_120
  loc_C6B515: FLdPr Me
  loc_C6B518: VCallAd Control_ID_txtTotaApre
  loc_C6B51B: FStAdFunc var_98
  loc_C6B51E: FLdPr var_98
  loc_C6B521: Me.Text = from_stack_1
  loc_C6B526: FFree1Str var_120
  loc_C6B529: FFree1Ad var_98
  loc_C6B52C: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B535: LitI4 1
  loc_C6B53A: LitI4 1
  loc_C6B53F: LitVarStr var_C8, "0.00"
  loc_C6B544: FStVarCopyObj var_D8
  loc_C6B547: FLdRfVar var_D8
  loc_C6B54A: LitVarI2 var_A8, 0
  loc_C6B54F: FLdRfVar var_F8
  loc_C6B552: ImpAdCallFPR4  = Format(, )
  loc_C6B557: FLdRfVar var_F8
  loc_C6B55A: CStrVarVal var_120
  loc_C6B55E: FLdPr Me
  loc_C6B561: VCallAd Control_ID_txtTotaDere
  loc_C6B564: FStAdFunc var_98
  loc_C6B567: FLdPr var_98
  loc_C6B56A: Me.Text = from_stack_1
  loc_C6B56F: FFree1Str var_120
  loc_C6B572: FFree1Ad var_98
  loc_C6B575: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B57E: LitI4 1
  loc_C6B583: LitI4 1
  loc_C6B588: LitVarStr var_C8, "0.00"
  loc_C6B58D: FStVarCopyObj var_D8
  loc_C6B590: FLdRfVar var_D8
  loc_C6B593: LitVarI2 var_A8, 0
  loc_C6B598: FLdRfVar var_F8
  loc_C6B59B: ImpAdCallFPR4  = Format(, )
  loc_C6B5A0: FLdRfVar var_F8
  loc_C6B5A3: CStrVarVal var_120
  loc_C6B5A7: FLdPr Me
  loc_C6B5AA: VCallAd Control_ID_txtTotaReca
  loc_C6B5AD: FStAdFunc var_98
  loc_C6B5B0: FLdPr var_98
  loc_C6B5B3: Me.Text = from_stack_1
  loc_C6B5B8: FFree1Str var_120
  loc_C6B5BB: FFree1Ad var_98
  loc_C6B5BE: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B5C7: LitI4 1
  loc_C6B5CC: LitI4 1
  loc_C6B5D1: LitVarStr var_C8, "0.00"
  loc_C6B5D6: FStVarCopyObj var_D8
  loc_C6B5D9: FLdRfVar var_D8
  loc_C6B5DC: LitVarI2 var_A8, 0
  loc_C6B5E1: FLdRfVar var_F8
  loc_C6B5E4: ImpAdCallFPR4  = Format(, )
  loc_C6B5E9: FLdRfVar var_F8
  loc_C6B5EC: CStrVarVal var_120
  loc_C6B5F0: FLdPr Me
  loc_C6B5F3: VCallAd Control_ID_txtTotal
  loc_C6B5F6: FStAdFunc var_98
  loc_C6B5F9: FLdPr var_98
  loc_C6B5FC: Me.Text = from_stack_1
  loc_C6B601: FFree1Str var_120
  loc_C6B604: FFree1Ad var_98
  loc_C6B607: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B610: LitI4 1
  loc_C6B615: LitI4 1
  loc_C6B61A: LitVarStr var_C8, "0.00"
  loc_C6B61F: FStVarCopyObj var_D8
  loc_C6B622: FLdRfVar var_D8
  loc_C6B625: LitVarI2 var_A8, 0
  loc_C6B62A: FLdRfVar var_F8
  loc_C6B62D: ImpAdCallFPR4  = Format(, )
  loc_C6B632: FLdRfVar var_F8
  loc_C6B635: CStrVarVal var_120
  loc_C6B639: FLdPr Me
  loc_C6B63C: VCallAd Control_ID_txtTotaSele
  loc_C6B63F: FStAdFunc var_98
  loc_C6B642: FLdPr var_98
  loc_C6B645: Me.Text = from_stack_1
  loc_C6B64A: FFree1Str var_120
  loc_C6B64D: FFree1Ad var_98
  loc_C6B650: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B659: LitI2_Byte 0
  loc_C6B65B: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6B660: CStrDate
  loc_C6B662: CVarStr var_A8
  loc_C6B665: PopAdLdVar
  loc_C6B666: FLdPr Me
  loc_C6B669: VCallAd Control_ID_FechVencMsk
  loc_C6B66C: FStAdFunc var_98
  loc_C6B66F: FLdPr var_98
  loc_C6B672: LateIdSt
  loc_C6B677: FFree1Ad var_98
  loc_C6B67A: FFree1Var var_A8 = ""
  loc_C6B67D: LitI2_Byte 0
  loc_C6B67F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6B684: CStrDate
  loc_C6B686: CVarStr var_A8
  loc_C6B689: PopAdLdVar
  loc_C6B68A: FLdPr Me
  loc_C6B68D: VCallAd Control_ID_FeveCtctMsk
  loc_C6B690: FStAdFunc var_98
  loc_C6B693: FLdPr var_98
  loc_C6B696: LateIdSt
  loc_C6B69B: FFree1Ad var_98
  loc_C6B69E: FFree1Var var_A8 = ""
  loc_C6B6A1: LitI4 1
  loc_C6B6A6: LitI4 1
  loc_C6B6AB: LitVarStr var_C8, "0.00"
  loc_C6B6B0: FStVarCopyObj var_D8
  loc_C6B6B3: FLdRfVar var_D8
  loc_C6B6B6: LitVarI2 var_A8, 0
  loc_C6B6BB: FLdRfVar var_F8
  loc_C6B6BE: ImpAdCallFPR4  = Format(, )
  loc_C6B6C3: FLdRfVar var_F8
  loc_C6B6C6: CStrVarVal var_120
  loc_C6B6CA: FLdPr Me
  loc_C6B6CD: VCallAd Control_ID_ImpoCtctTxt
  loc_C6B6D0: FStAdFunc var_98
  loc_C6B6D3: FLdPr var_98
  loc_C6B6D6: Me.Text = from_stack_1
  loc_C6B6DB: FFree1Str var_120
  loc_C6B6DE: FFree1Ad var_98
  loc_C6B6E1: FFreeVar var_A8 = "": var_D8 = ""
  loc_C6B6EA: LitI4 0
  loc_C6B6EF: LitI4 0
  loc_C6B6F4: FLdRfVar var_3BC
  loc_C6B6F7: Redim
  loc_C6B701: FLdPr Me
  loc_C6B704: VCallAd Control_ID_ConfirmarCmd
  loc_C6B707: CVarAd
  loc_C6B70B: ParmAry1St
  loc_C6B711: FLdRfVar var_3BC
  loc_C6B714: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C6B719: FLdRfVar var_3BC
  loc_C6B71C: Erase
  loc_C6B71D: FLdPr Me
  loc_C6B720: VCallAd Control_ID_OficinaCbo
  loc_C6B723: FStAdFunc var_98
  loc_C6B726: FLdPr var_98
  loc_C6B729: Me.SetFocus
  loc_C6B72E: FFree1Ad var_98
  loc_C6B731: ExitProcHresult
  loc_C6B732: CStr2Ansi
End Sub

Private Sub SalirCmd_Click() '9D63A8
  'Data Table: 4FA474
  loc_9D6390: ILdRf Me
  loc_9D6393: FStAdNoPop
  loc_9D6397: ImpAdLdRf MemVar_D9C5D8
  loc_9D639A: NewIfNullPr Global
  loc_9D639D: Global.Unload from_stack_1
  loc_9D63A2: FFree1Ad var_88
  loc_9D63A5: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C45410
  'Data Table: 4FA474
  loc_C44830: Call Proc_138_23_B19968()
  loc_C44835: LitI2_Byte 0
  loc_C44837: FLdPr Me
  loc_C4483A: VCallAd Control_ID_SeleTodoChk
  loc_C4483D: FStAdFunc var_F0
  loc_C44840: FLdPr var_F0
  loc_C44843: Me.Value = from_stack_1
  loc_C44848: FFree1Ad var_F0
  loc_C4484B: LitVarStr var_100, vbNullString
  loc_C44850: PopAdLdVar
  loc_C44851: FLdPr Me
  loc_C44854: VCallAd Control_ID_FechVencMsk
  loc_C44857: FStAdFunc var_F0
  loc_C4485A: FLdPr var_F0
  loc_C4485D: LateIdSt
  loc_C44862: FFree1Ad var_F0
  loc_C44865: FLdRfVar var_112
  loc_C44868: FLdPr Me
  loc_C4486B: VCallAd Control_ID_OficinaCbo
  loc_C4486E: FStAdFunc var_F0
  loc_C44871: FLdPr var_F0
  loc_C44874:  = Me.ListIndex
  loc_C44879: FLdI2 var_112
  loc_C4487C: FStI2 var_114
  loc_C4487F: FFree1Ad var_F0
  loc_C44882: FLdI2 var_114
  loc_C44885: LitI2_Byte 0
  loc_C44887: EqI2
  loc_C44888: BranchF loc_C44896
  loc_C4488B: LitI2_Byte 1
  loc_C4488D: CUI1I2
  loc_C4488F: ImpAdStUI1 MemVar_D93038
  loc_C44893: Branch loc_C4490B
  loc_C44896: FLdI2 var_114
  loc_C44899: LitI2_Byte 1
  loc_C4489B: EqI2
  loc_C4489C: BranchF loc_C448AA
  loc_C4489F: LitI2_Byte 2
  loc_C448A1: CUI1I2
  loc_C448A3: ImpAdStUI1 MemVar_D93038
  loc_C448A7: Branch loc_C4490B
  loc_C448AA: FLdI2 var_114
  loc_C448AD: LitI2_Byte 2
  loc_C448AF: EqI2
  loc_C448B0: BranchF loc_C448BE
  loc_C448B3: LitI2_Byte 3
  loc_C448B5: CUI1I2
  loc_C448B7: ImpAdStUI1 MemVar_D93038
  loc_C448BB: Branch loc_C4490B
  loc_C448BE: FLdI2 var_114
  loc_C448C1: LitI2_Byte 3
  loc_C448C3: EqI2
  loc_C448C4: BranchF loc_C448D2
  loc_C448C7: LitI2_Byte 4
  loc_C448C9: CUI1I2
  loc_C448CB: ImpAdStUI1 MemVar_D93038
  loc_C448CF: Branch loc_C4490B
  loc_C448D2: FLdI2 var_114
  loc_C448D5: LitI2_Byte 4
  loc_C448D7: EqI2
  loc_C448D8: BranchF loc_C448E6
  loc_C448DB: LitI2_Byte 5
  loc_C448DD: CUI1I2
  loc_C448DF: ImpAdStUI1 MemVar_D93038
  loc_C448E3: Branch loc_C4490B
  loc_C448E6: FLdI2 var_114
  loc_C448E9: LitI2_Byte 5
  loc_C448EB: EqI2
  loc_C448EC: BranchF loc_C448FA
  loc_C448EF: LitI2_Byte 6
  loc_C448F1: CUI1I2
  loc_C448F3: ImpAdStUI1 MemVar_D93038
  loc_C448F7: Branch loc_C4490B
  loc_C448FA: FLdI2 var_114
  loc_C448FD: LitI2_Byte 6
  loc_C448FF: EqI2
  loc_C44900: BranchF loc_C4490B
  loc_C44903: LitI2_Byte 7
  loc_C44905: CUI1I2
  loc_C44907: ImpAdStUI1 MemVar_D93038
  loc_C4490B: LitI2_Byte 0
  loc_C4490D: CR8I2
  loc_C4490E: FStFPR8 var_CC
  loc_C44911: LitI2_Byte 0
  loc_C44913: CR8I2
  loc_C44914: FStFPR8 var_D4
  loc_C44917: LitI2_Byte 0
  loc_C44919: CR8I2
  loc_C4491A: FStFPR8 var_DC
  loc_C4491D: LitI2_Byte 0
  loc_C4491F: CR8I2
  loc_C44920: FStFPR8 var_E4
  loc_C44923: LitI2_Byte 0
  loc_C44925: CR8I2
  loc_C44926: FStFPR8 var_EC
  loc_C44929: LitI4 1
  loc_C4492E: LitI4 1
  loc_C44933: LitVarStr var_110, "0.00"
  loc_C44938: FStVarCopyObj var_124
  loc_C4493B: FLdRfVar var_124
  loc_C4493E: FLdRfVar var_CC
  loc_C44941: CVarRef
  loc_C44946: FLdRfVar var_134
  loc_C44949: ImpAdCallFPR4  = Format(, )
  loc_C4494E: FLdRfVar var_134
  loc_C44951: CStrVarVal var_138
  loc_C44955: FLdPr Me
  loc_C44958: VCallAd Control_ID_txtTotaDere
  loc_C4495B: FStAdFunc var_F0
  loc_C4495E: FLdPr var_F0
  loc_C44961: Me.Text = from_stack_1
  loc_C44966: FFree1Str var_138
  loc_C44969: FFree1Ad var_F0
  loc_C4496C: FFreeVar var_124 = ""
  loc_C44973: LitI4 1
  loc_C44978: LitI4 1
  loc_C4497D: LitVarStr var_110, "0.00"
  loc_C44982: FStVarCopyObj var_124
  loc_C44985: FLdRfVar var_124
  loc_C44988: FLdRfVar var_D4
  loc_C4498B: CVarRef
  loc_C44990: FLdRfVar var_134
  loc_C44993: ImpAdCallFPR4  = Format(, )
  loc_C44998: FLdRfVar var_134
  loc_C4499B: CStrVarVal var_138
  loc_C4499F: FLdPr Me
  loc_C449A2: VCallAd Control_ID_txtTotaReca
  loc_C449A5: FStAdFunc var_F0
  loc_C449A8: FLdPr var_F0
  loc_C449AB: Me.Text = from_stack_1
  loc_C449B0: FFree1Str var_138
  loc_C449B3: FFree1Ad var_F0
  loc_C449B6: FFreeVar var_124 = ""
  loc_C449BD: LitI4 1
  loc_C449C2: LitI4 1
  loc_C449C7: LitVarStr var_110, "0.00"
  loc_C449CC: FStVarCopyObj var_124
  loc_C449CF: FLdRfVar var_124
  loc_C449D2: FLdRfVar var_DC
  loc_C449D5: CVarRef
  loc_C449DA: FLdRfVar var_134
  loc_C449DD: ImpAdCallFPR4  = Format(, )
  loc_C449E2: FLdRfVar var_134
  loc_C449E5: CStrVarVal var_138
  loc_C449E9: FLdPr Me
  loc_C449EC: VCallAd Control_ID_txtTotaApre
  loc_C449EF: FStAdFunc var_F0
  loc_C449F2: FLdPr var_F0
  loc_C449F5: Me.Text = from_stack_1
  loc_C449FA: FFree1Str var_138
  loc_C449FD: FFree1Ad var_F0
  loc_C44A00: FFreeVar var_124 = ""
  loc_C44A07: LitI4 2
  loc_C44A0C: FLdRfVar var_CC
  loc_C44A0F: CVarRef
  loc_C44A14: FLdRfVar var_124
  loc_C44A17: ImpAdCallFPR4  = Round(, )
  loc_C44A1C: FLdRfVar var_124
  loc_C44A1F: LitI4 2
  loc_C44A24: FLdRfVar var_D4
  loc_C44A27: CVarRef
  loc_C44A2C: FLdRfVar var_134
  loc_C44A2F: ImpAdCallFPR4  = Round(, )
  loc_C44A34: FLdRfVar var_134
  loc_C44A37: AddVar var_148
  loc_C44A3B: LitI4 2
  loc_C44A40: FLdRfVar var_DC
  loc_C44A43: CVarRef
  loc_C44A48: FLdRfVar var_168
  loc_C44A4B: ImpAdCallFPR4  = Round(, )
  loc_C44A50: FLdRfVar var_168
  loc_C44A53: AddVar var_178
  loc_C44A57: CR4Var
  loc_C44A58: FStFPR8 var_E4
  loc_C44A5B: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C44A68: LitI4 1
  loc_C44A6D: LitI4 1
  loc_C44A72: LitVarStr var_110, "0.00"
  loc_C44A77: FStVarCopyObj var_124
  loc_C44A7A: FLdRfVar var_124
  loc_C44A7D: FLdRfVar var_E4
  loc_C44A80: CVarRef
  loc_C44A85: FLdRfVar var_134
  loc_C44A88: ImpAdCallFPR4  = Format(, )
  loc_C44A8D: FLdRfVar var_134
  loc_C44A90: CStrVarVal var_138
  loc_C44A94: FLdPr Me
  loc_C44A97: VCallAd Control_ID_txtTotal
  loc_C44A9A: FStAdFunc var_F0
  loc_C44A9D: FLdPr var_F0
  loc_C44AA0: Me.Text = from_stack_1
  loc_C44AA5: FFree1Str var_138
  loc_C44AA8: FFree1Ad var_F0
  loc_C44AAB: FFreeVar var_124 = ""
  loc_C44AB2: LitI4 1
  loc_C44AB7: LitI4 1
  loc_C44ABC: LitVarStr var_110, "0.00"
  loc_C44AC1: FStVarCopyObj var_124
  loc_C44AC4: FLdRfVar var_124
  loc_C44AC7: FLdRfVar var_EC
  loc_C44ACA: CVarRef
  loc_C44ACF: FLdRfVar var_134
  loc_C44AD2: ImpAdCallFPR4  = Format(, )
  loc_C44AD7: FLdRfVar var_134
  loc_C44ADA: CStrVarVal var_138
  loc_C44ADE: FLdPr Me
  loc_C44AE1: VCallAd Control_ID_txtTotaSele
  loc_C44AE4: FStAdFunc var_F0
  loc_C44AE7: FLdPr var_F0
  loc_C44AEA: Me.Text = from_stack_1
  loc_C44AEF: FFree1Str var_138
  loc_C44AF2: FFree1Ad var_F0
  loc_C44AF5: FFreeVar var_124 = ""
  loc_C44AFC: LitStr "Municipalidad de Guaymallén"
  loc_C44AFF: LitStr "Municipalidad de Guaymallén"
  loc_C44B02: EqStr
  loc_C44B04: BranchF loc_C44B63
  loc_C44B07: FLdRfVar var_138
  loc_C44B0A: FLdPr Me
  loc_C44B0D: VCallAd Control_ID_NumeCtaTxt
  loc_C44B10: FStAdFunc var_F0
  loc_C44B13: FLdPr var_F0
  loc_C44B16:  = Me.Text
  loc_C44B1B: FLdPr Me
  loc_C44B1E: VCallAd Control_ID_FechVencMsk
  loc_C44B21: FStAdFunc var_17C
  loc_C44B24: FLdPr var_17C
  loc_C44B27: LateIdLdVar var_124 DispID_22 0
  loc_C44B2E: PopAd
  loc_C44B30: LitStr "tmp_ctactedebito"
  loc_C44B33: FLdRfVar var_124
  loc_C44B36: CStrVarTmp
  loc_C44B37: FStStrNoPop var_180
  loc_C44B3A: ILdRf var_138
  loc_C44B3D: ImpAdLdUI1
  loc_C44B41: FLdPr Me
  loc_C44B44: MemLdRfVar from_stack_1.global_52
  loc_C44B47: NewIfNullPr clsctacte
  loc_C44B4A: Call clsctacte.CreaTemporalCtaCteDebitos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C44B4F: FFreeStr var_138 = ""
  loc_C44B56: FFreeAd var_F0 = ""
  loc_C44B5D: FFree1Var var_124 = ""
  loc_C44B60: Branch loc_C44BBC
  loc_C44B63: FLdRfVar var_138
  loc_C44B66: FLdPr Me
  loc_C44B69: VCallAd Control_ID_NumeCtaTxt
  loc_C44B6C: FStAdFunc var_F0
  loc_C44B6F: FLdPr var_F0
  loc_C44B72:  = Me.Text
  loc_C44B77: FLdPr Me
  loc_C44B7A: VCallAd Control_ID_FechVencMsk
  loc_C44B7D: FStAdFunc var_17C
  loc_C44B80: FLdPr var_17C
  loc_C44B83: LateIdLdVar var_124 DispID_22 0
  loc_C44B8A: PopAd
  loc_C44B8C: LitStr "tmp_ctactedebito"
  loc_C44B8F: FLdRfVar var_124
  loc_C44B92: CStrVarTmp
  loc_C44B93: FStStrNoPop var_180
  loc_C44B96: ILdRf var_138
  loc_C44B99: ImpAdLdUI1
  loc_C44B9D: FLdPr Me
  loc_C44BA0: MemLdRfVar from_stack_1.global_52
  loc_C44BA3: NewIfNullPr clsctacte
  loc_C44BA6: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C44BAB: FFreeStr var_138 = ""
  loc_C44BB2: FFreeAd var_F0 = ""
  loc_C44BB9: FFree1Var var_124 = ""
  loc_C44BBC: LitStr "SELECT * FROM tmp_ctactedebito LEFT JOIN tipomovi ON tmp_ctactedebito.CodiTimo = tipomovi.CodiTimo"
  loc_C44BBF: LitStr " ORDER BY tmp_ctactedebito.CodiOfic, tmp_ctactedebito.CuenCtct, tmp_ctactedebito.PeriCtct desc, tmp_ctactedebito.BimeCtct desc, tmp_ctactedebito.NumeCtct, tmp_ctactedebito.MoviCtct"
  loc_C44BC2: ConcatStr
  loc_C44BC3: FStStrNoPop var_138
  loc_C44BC6: FLdPr Me
  loc_C44BC9: MemLdRfVar from_stack_1.global_52
  loc_C44BCC: NewIfNullPr clsctacte
  loc_C44BCF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C44BD4: FFree1Str var_138
  loc_C44BD7: FLdRfVar var_184
  loc_C44BDA: FLdPr Me
  loc_C44BDD: MemLdRfVar from_stack_1.global_52
  loc_C44BE0: NewIfNullPr clsctacte
  loc_C44BE3: from_stack_1 = clsctacte.RecordCount
  loc_C44BE8: ILdRf var_184
  loc_C44BEB: LitI4 0
  loc_C44BF0: GtI4
  loc_C44BF1: BranchF loc_C453B5
  loc_C44BF4: FLdPr Me
  loc_C44BF7: MemLdRfVar from_stack_1.global_52
  loc_C44BFA: NewIfNullPr clsctacte
  loc_C44BFD: Call clsctacte.MoveFirst()
  loc_C44C02: FLdRfVar var_112
  loc_C44C05: FLdPr Me
  loc_C44C08: MemLdRfVar from_stack_1.global_52
  loc_C44C0B: NewIfNullPr clsctacte
  loc_C44C0E: from_stack_1 = clsctacte.EOF
  loc_C44C13: FLdI2 var_112
  loc_C44C16: NotI4
  loc_C44C17: BranchF loc_C4522C
  loc_C44C1A: FLdRfVar var_18C
  loc_C44C1D: FLdPr Me
  loc_C44C20: MemLdRfVar from_stack_1.global_52
  loc_C44C23: NewIfNullPr clsctacte
  loc_C44C26: from_stack_1 = clsctacte.SaldCtct
  loc_C44C2B: FLdFPR8 var_18C
  loc_C44C2E: FnCDblR8
  loc_C44C30: LitI2_Byte 0
  loc_C44C32: CR8I2
  loc_C44C33: LtR8
  loc_C44C34: BranchF loc_C4521B
  loc_C44C37: LitI2_Byte 0
  loc_C44C39: CR8I2
  loc_C44C3A: FStFPR8 var_DC
  loc_C44C3D: FLdRfVar var_18C
  loc_C44C40: FLdPr Me
  loc_C44C43: MemLdRfVar from_stack_1.global_52
  loc_C44C46: NewIfNullPr clsctacte
  loc_C44C49: from_stack_1 = clsctacte.SaldCtct
  loc_C44C4E: LitI4 2
  loc_C44C53: FLdFPR8 var_CC
  loc_C44C56: FnCDblR8
  loc_C44C58: FLdFPR8 var_18C
  loc_C44C5B: FnCDblR8
  loc_C44C5D: AddR8
  loc_C44C5E: CVarR8
  loc_C44C62: FLdRfVar var_134
  loc_C44C65: ImpAdCallFPR4  = Round(, )
  loc_C44C6A: FLdRfVar var_134
  loc_C44C6D: CR4Var
  loc_C44C6E: FStFPR8 var_CC
  loc_C44C71: FFreeVar var_124 = ""
  loc_C44C78: FLdRfVar var_18C
  loc_C44C7B: FLdPr Me
  loc_C44C7E: MemLdRfVar from_stack_1.global_52
  loc_C44C81: NewIfNullPr clsctacte
  loc_C44C84: from_stack_1 = clsctacte.RecaCtct
  loc_C44C89: LitI4 2
  loc_C44C8E: FLdFPR8 var_D4
  loc_C44C91: FnCDblR8
  loc_C44C93: FLdFPR8 var_18C
  loc_C44C96: FnCDblR8
  loc_C44C98: AddR8
  loc_C44C99: CVarR8
  loc_C44C9D: FLdRfVar var_134
  loc_C44CA0: ImpAdCallFPR4  = Round(, )
  loc_C44CA5: FLdRfVar var_134
  loc_C44CA8: CR4Var
  loc_C44CA9: FStFPR8 var_D4
  loc_C44CAC: FFreeVar var_124 = ""
  loc_C44CB3: FLdRfVar var_112
  loc_C44CB6: FLdPr Me
  loc_C44CB9: MemLdRfVar from_stack_1.global_52
  loc_C44CBC: NewIfNullPr clsctacte
  loc_C44CBF: from_stack_1 = clsctacte.BimeCtct
  loc_C44CC4: LitI4 1
  loc_C44CC9: LitI4 1
  loc_C44CCE: LitVarStr var_110, "00"
  loc_C44CD3: FStVarCopyObj var_134
  loc_C44CD6: FLdRfVar var_134
  loc_C44CD9: FLdI2 var_112
  loc_C44CDC: CVarI2 var_124
  loc_C44CDF: FLdRfVar var_148
  loc_C44CE2: ImpAdCallFPR4  = Format(, )
  loc_C44CE7: FLdRfVar var_148
  loc_C44CEA: LitVarStr var_158, "/"
  loc_C44CEF: ConcatVar var_168
  loc_C44CF3: FLdRfVar var_18E
  loc_C44CF6: FLdPr Me
  loc_C44CF9: MemLdRfVar from_stack_1.global_52
  loc_C44CFC: NewIfNullPr clsctacte
  loc_C44CFF: from_stack_1 = clsctacte.PeriCtct
  loc_C44D04: FLdI2 var_18E
  loc_C44D07: CVarI2 var_1A0
  loc_C44D0A: ConcatVar var_178
  loc_C44D0E: CStrVarTmp
  loc_C44D0F: FLdRfVar var_96
  loc_C44D12: StFixedStrFree
  loc_C44D16: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C44D23: FLdRfVar var_184
  loc_C44D26: FLdPr Me
  loc_C44D29: MemLdRfVar from_stack_1.global_52
  loc_C44D2C: NewIfNullPr clsctacte
  loc_C44D2F: from_stack_1 = clsctacte.NumeBole
  loc_C44D34: LitI4 1
  loc_C44D39: LitI4 1
  loc_C44D3E: LitVarStr var_110, "#######0"
  loc_C44D43: FStVarCopyObj var_134
  loc_C44D46: FLdRfVar var_134
  loc_C44D49: ILdRf var_184
  loc_C44D4C: CVarI4
  loc_C44D50: FLdRfVar var_148
  loc_C44D53: ImpAdCallFPR4  = Format(, )
  loc_C44D58: FLdRfVar var_148
  loc_C44D5B: LitVarStr var_158, "-"
  loc_C44D60: ConcatVar var_168
  loc_C44D64: FLdRfVar var_112
  loc_C44D67: FLdPr Me
  loc_C44D6A: MemLdRfVar from_stack_1.global_52
  loc_C44D6D: NewIfNullPr clsctacte
  loc_C44D70: from_stack_1 = clsctacte.PeriBole
  loc_C44D75: FLdI2 var_112
  loc_C44D78: CVarI2 var_1A0
  loc_C44D7B: ConcatVar var_178
  loc_C44D7F: CStrVarTmp
  loc_C44D80: FLdRfVar var_B0
  loc_C44D83: StFixedStrFree
  loc_C44D87: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C44D94: FLdRfVar var_18C
  loc_C44D97: FLdPr Me
  loc_C44D9A: MemLdRfVar from_stack_1.global_52
  loc_C44D9D: NewIfNullPr clsctacte
  loc_C44DA0: from_stack_1 = clsctacte.SaldCtct
  loc_C44DA5: FLdFPR8 var_18C
  loc_C44DA8: FnCDblR8
  loc_C44DAA: LitI2_Byte 0
  loc_C44DAC: CR8I2
  loc_C44DAD: NeR8
  loc_C44DAE: BranchF loc_C44DF9
  loc_C44DB1: FLdRfVar var_18C
  loc_C44DB4: FLdPr Me
  loc_C44DB7: MemLdRfVar from_stack_1.global_52
  loc_C44DBA: NewIfNullPr clsctacte
  loc_C44DBD: from_stack_1 = clsctacte.SaldCtct
  loc_C44DC2: LitI4 1
  loc_C44DC7: LitI4 1
  loc_C44DCC: LitVarStr var_110, "0.00"
  loc_C44DD1: FStVarCopyObj var_134
  loc_C44DD4: FLdRfVar var_134
  loc_C44DD7: FLdFPR8 var_18C
  loc_C44DDA: CVarR8
  loc_C44DDE: FLdRfVar var_148
  loc_C44DE1: ImpAdCallFPR4  = Format(, )
  loc_C44DE6: FLdRfVar var_148
  loc_C44DE9: CStrVarTmp
  loc_C44DEA: FStStr var_B8
  loc_C44DED: FFreeVar var_124 = "": var_134 = ""
  loc_C44DF6: Branch loc_C44DFF
  loc_C44DF9: LitStr vbNullString
  loc_C44DFC: FStStrCopy var_B8
  loc_C44DFF: LitStr vbNullString
  loc_C44E02: FStStrCopy var_BC
  loc_C44E05: FLdRfVar var_18C
  loc_C44E08: FLdPr Me
  loc_C44E0B: MemLdRfVar from_stack_1.global_52
  loc_C44E0E: NewIfNullPr clsctacte
  loc_C44E11: from_stack_1 = clsctacte.RecaCtct
  loc_C44E16: FLdFPR8 var_18C
  loc_C44E19: FnCDblR8
  loc_C44E1B: LitI2_Byte 0
  loc_C44E1D: CR8I2
  loc_C44E1E: NeR8
  loc_C44E1F: BranchF loc_C44E6A
  loc_C44E22: FLdRfVar var_18C
  loc_C44E25: FLdPr Me
  loc_C44E28: MemLdRfVar from_stack_1.global_52
  loc_C44E2B: NewIfNullPr clsctacte
  loc_C44E2E: from_stack_1 = clsctacte.RecaCtct
  loc_C44E33: LitI4 1
  loc_C44E38: LitI4 1
  loc_C44E3D: LitVarStr var_110, "0.00"
  loc_C44E42: FStVarCopyObj var_134
  loc_C44E45: FLdRfVar var_134
  loc_C44E48: FLdFPR8 var_18C
  loc_C44E4B: CVarR8
  loc_C44E4F: FLdRfVar var_148
  loc_C44E52: ImpAdCallFPR4  = Format(, )
  loc_C44E57: FLdRfVar var_148
  loc_C44E5A: CStrVarTmp
  loc_C44E5B: FStStr var_C0
  loc_C44E5E: FFreeVar var_124 = "": var_134 = ""
  loc_C44E67: Branch loc_C44E70
  loc_C44E6A: LitStr vbNullString
  loc_C44E6D: FStStrCopy var_C0
  loc_C44E70: FLdRfVar var_18C
  loc_C44E73: FLdPr Me
  loc_C44E76: MemLdRfVar from_stack_1.global_52
  loc_C44E79: NewIfNullPr clsctacte
  loc_C44E7C: from_stack_1 = clsctacte.SaldCtct
  loc_C44E81: FLdRfVar var_1A8
  loc_C44E84: FLdPr Me
  loc_C44E87: MemLdRfVar from_stack_1.global_52
  loc_C44E8A: NewIfNullPr clsctacte
  loc_C44E8D: from_stack_1 = clsctacte.RecaCtct
  loc_C44E92: LitI4 2
  loc_C44E97: FLdFPR8 var_18C
  loc_C44E9A: FnCDblR8
  loc_C44E9C: FLdFPR8 var_1A8
  loc_C44E9F: FnCDblR8
  loc_C44EA1: AddR8
  loc_C44EA2: CVarR8
  loc_C44EA6: FLdRfVar var_134
  loc_C44EA9: ImpAdCallFPR4  = Round(, )
  loc_C44EAE: LitI4 1
  loc_C44EB3: LitI4 1
  loc_C44EB8: LitVarStr var_110, "0.00"
  loc_C44EBD: FStVarCopyObj var_148
  loc_C44EC0: FLdRfVar var_148
  loc_C44EC3: FLdRfVar var_134
  loc_C44EC6: FLdRfVar var_168
  loc_C44EC9: ImpAdCallFPR4  = Format(, )
  loc_C44ECE: FLdRfVar var_168
  loc_C44ED1: CStrVarTmp
  loc_C44ED2: FStStr var_C4
  loc_C44ED5: FFreeVar var_124 = "": var_134 = "": var_148 = ""
  loc_C44EE0: FLdRfVar var_112
  loc_C44EE3: FLdPr Me
  loc_C44EE6: MemLdRfVar from_stack_1.global_52
  loc_C44EE9: NewIfNullPr clsctacte
  loc_C44EEC: from_stack_1 = clsctacte.CodiOfic
  loc_C44EF1: FLdI2 var_112
  loc_C44EF4: CVarI2 var_100
  loc_C44EF7: LitI4 9
  loc_C44EFC: FLdRfVar var_124
  loc_C44EFF: ImpAdCallFPR4  = Chr()
  loc_C44F04: FLdRfVar var_124
  loc_C44F07: ConcatVar var_134
  loc_C44F0B: FLdRfVar var_138
  loc_C44F0E: FLdPr Me
  loc_C44F11: MemLdRfVar from_stack_1.global_52
  loc_C44F14: NewIfNullPr clsctacte
  loc_C44F17: from_stack_1 = clsctacte.CuenCtct
  loc_C44F1C: FLdZeroAd var_138
  loc_C44F1F: CVarStr var_148
  loc_C44F22: ConcatVar var_168
  loc_C44F26: LitI4 9
  loc_C44F2B: FLdRfVar var_178
  loc_C44F2E: ImpAdCallFPR4  = Chr()
  loc_C44F33: FLdRfVar var_178
  loc_C44F36: ConcatVar var_1B8
  loc_C44F3A: FLdRfVar var_96
  loc_C44F3D: LdFixedStr
  loc_C44F40: CVarStr var_1C8
  loc_C44F43: ConcatVar var_1D8
  loc_C44F47: LitI4 9
  loc_C44F4C: FLdRfVar var_1E8
  loc_C44F4F: ImpAdCallFPR4  = Chr()
  loc_C44F54: FLdRfVar var_1E8
  loc_C44F57: ConcatVar var_1F8
  loc_C44F5B: FLdRfVar var_B0
  loc_C44F5E: LdFixedStr
  loc_C44F61: CVarStr var_208
  loc_C44F64: ConcatVar var_218
  loc_C44F68: LitI4 9
  loc_C44F6D: FLdRfVar var_228
  loc_C44F70: ImpAdCallFPR4  = Chr()
  loc_C44F75: FLdRfVar var_228
  loc_C44F78: ConcatVar var_238
  loc_C44F7C: FLdRfVar var_180
  loc_C44F7F: FLdPr Me
  loc_C44F82: MemLdRfVar from_stack_1.global_52
  loc_C44F85: NewIfNullPr clsctacte
  loc_C44F88: from_stack_1 = clsctacte.FealCtct
  loc_C44F8D: FLdZeroAd var_180
  loc_C44F90: CVarStr var_248
  loc_C44F93: ConcatVar var_258
  loc_C44F97: LitI4 9
  loc_C44F9C: FLdRfVar var_268
  loc_C44F9F: ImpAdCallFPR4  = Chr()
  loc_C44FA4: FLdRfVar var_268
  loc_C44FA7: ConcatVar var_278
  loc_C44FAB: FLdRfVar var_288
  loc_C44FAE: FLdPr Me
  loc_C44FB1: MemLdRfVar from_stack_1.global_52
  loc_C44FB4: NewIfNullPr clsctacte
  loc_C44FB7: from_stack_1 = clsctacte.FeveCtct
  loc_C44FBC: FLdRfVar var_288
  loc_C44FBF: ConcatVar var_298
  loc_C44FC3: LitI4 9
  loc_C44FC8: FLdRfVar var_2A8
  loc_C44FCB: ImpAdCallFPR4  = Chr()
  loc_C44FD0: FLdRfVar var_2A8
  loc_C44FD3: ConcatVar var_2B8
  loc_C44FD7: FLdRfVar var_2BC
  loc_C44FDA: FLdPr Me
  loc_C44FDD: MemLdRfVar from_stack_1.global_52
  loc_C44FE0: NewIfNullPr clsctacte
  loc_C44FE3: from_stack_1 = clsctacte.CodiConc
  loc_C44FE8: FLdZeroAd var_2BC
  loc_C44FEB: CVarStr var_2CC
  loc_C44FEE: ConcatVar var_2DC
  loc_C44FF2: LitI4 9
  loc_C44FF7: FLdRfVar var_2EC
  loc_C44FFA: ImpAdCallFPR4  = Chr()
  loc_C44FFF: FLdRfVar var_2EC
  loc_C45002: ConcatVar var_2FC
  loc_C45006: FLdRfVar var_184
  loc_C45009: FLdPr Me
  loc_C4500C: MemLdRfVar from_stack_1.global_52
  loc_C4500F: NewIfNullPr clsctacte
  loc_C45012: from_stack_1 = clsctacte.CodiFapa
  loc_C45017: ILdRf var_184
  loc_C4501A: CVarI4
  loc_C4501E: ConcatVar var_30C
  loc_C45022: LitI4 9
  loc_C45027: FLdRfVar var_31C
  loc_C4502A: ImpAdCallFPR4  = Chr()
  loc_C4502F: FLdRfVar var_31C
  loc_C45032: ConcatVar var_32C
  loc_C45036: FLdRfVar var_330
  loc_C45039: FLdPr Me
  loc_C4503C: MemLdRfVar from_stack_1.global_52
  loc_C4503F: NewIfNullPr clsctacte
  loc_C45042: from_stack_1 = clsctacte.NumeApre
  loc_C45047: ILdRf var_330
  loc_C4504A: CVarI4
  loc_C4504E: ConcatVar var_340
  loc_C45052: LitI4 9
  loc_C45057: FLdRfVar var_350
  loc_C4505A: ImpAdCallFPR4  = Chr()
  loc_C4505F: FLdRfVar var_350
  loc_C45062: ConcatVar var_360
  loc_C45066: FLdRfVar var_364
  loc_C45069: FLdPr Me
  loc_C4506C: MemLdRfVar from_stack_1.global_52
  loc_C4506F: NewIfNullPr clsctacte
  loc_C45072: from_stack_1 = clsctacte.ExpeCtct
  loc_C45077: FLdZeroAd var_364
  loc_C4507A: CVarStr var_374
  loc_C4507D: ConcatVar var_384
  loc_C45081: LitI4 9
  loc_C45086: FLdRfVar var_394
  loc_C45089: ImpAdCallFPR4  = Chr()
  loc_C4508E: FLdRfVar var_394
  loc_C45091: ConcatVar var_3A4
  loc_C45095: FLdRfVar var_3A8
  loc_C45098: FLdPr Me
  loc_C4509B: MemLdRfVar from_stack_1.global_52
  loc_C4509E: NewIfNullPr clsctacte
  loc_C450A1: from_stack_1 = clsctacte.AbreTimo
  loc_C450A6: FLdZeroAd var_3A8
  loc_C450A9: CVarStr var_3B8
  loc_C450AC: ConcatVar var_3C8
  loc_C450B0: LitI4 9
  loc_C450B5: FLdRfVar var_3D8
  loc_C450B8: ImpAdCallFPR4  = Chr()
  loc_C450BD: FLdRfVar var_3D8
  loc_C450C0: ConcatVar var_3E8
  loc_C450C4: ILdRf var_B8
  loc_C450C7: CVarStr var_1A0
  loc_C450CA: ConcatVar var_3F8
  loc_C450CE: LitI4 9
  loc_C450D3: FLdRfVar var_408
  loc_C450D6: ImpAdCallFPR4  = Chr()
  loc_C450DB: FLdRfVar var_408
  loc_C450DE: ConcatVar var_418
  loc_C450E2: ILdRf var_C0
  loc_C450E5: CVarStr var_428
  loc_C450E8: ConcatVar var_438
  loc_C450EC: LitI4 9
  loc_C450F1: FLdRfVar var_448
  loc_C450F4: ImpAdCallFPR4  = Chr()
  loc_C450F9: FLdRfVar var_448
  loc_C450FC: ConcatVar var_458
  loc_C45100: ILdRf var_C4
  loc_C45103: CVarStr var_468
  loc_C45106: ConcatVar var_478
  loc_C4510A: LitI4 9
  loc_C4510F: FLdRfVar var_488
  loc_C45112: ImpAdCallFPR4  = Chr()
  loc_C45117: FLdRfVar var_488
  loc_C4511A: ConcatVar var_498
  loc_C4511E: LitVarStr var_4A8, "No"
  loc_C45123: ConcatVar var_4B8
  loc_C45127: LitI4 9
  loc_C4512C: FLdRfVar var_4C8
  loc_C4512F: ImpAdCallFPR4  = Chr()
  loc_C45134: FLdRfVar var_4C8
  loc_C45137: ConcatVar var_4D8
  loc_C4513B: FLdRfVar var_4DC
  loc_C4513E: FLdPr Me
  loc_C45141: MemLdRfVar from_stack_1.global_52
  loc_C45144: NewIfNullPr clsctacte
  loc_C45147: from_stack_1 = clsctacte.NumeCtct
  loc_C4514C: ILdRf var_4DC
  loc_C4514F: CVarI4
  loc_C45153: ConcatVar var_4FC
  loc_C45157: LitI4 9
  loc_C4515C: FLdRfVar var_50C
  loc_C4515F: ImpAdCallFPR4  = Chr()
  loc_C45164: FLdRfVar var_50C
  loc_C45167: ConcatVar var_51C
  loc_C4516B: FLdRfVar var_18E
  loc_C4516E: FLdPr Me
  loc_C45171: MemLdRfVar from_stack_1.global_52
  loc_C45174: NewIfNullPr clsctacte
  loc_C45177: from_stack_1 = clsctacte.MoviCtct
  loc_C4517C: FLdI2 var_18E
  loc_C4517F: CVarI2 var_52C
  loc_C45182: ConcatVar var_53C
  loc_C45186: CStrVarTmp
  loc_C45187: FStStr var_B4
  loc_C4518A: FFreeVar var_350 = "": var_360 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B8 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_418 = "": var_438 = "": var_448 = "": var_458 = "": var_478 = "": var_488 = "": var_498 = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4FC = "": var_50C = "": var_51C = "": var_53C = "": var_124 = "": var_134 = "": var_148 = "": var_168 = "": var_178 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = ""
  loc_C451FD: FLdRfVar var_B4
  loc_C45200: CDargRef
  loc_C45204: FLdPr Me
  loc_C45207: VCallAd Control_ID_ctacteFlex
  loc_C4520A: FStAdFunc var_F0
  loc_C4520D: FLdPr var_F0
  loc_C45210: LateIdCall
  loc_C45218: FFree1Ad var_F0
  loc_C4521B: FLdPr Me
  loc_C4521E: MemLdRfVar from_stack_1.global_52
  loc_C45221: NewIfNullPr clsctacte
  loc_C45224: Call clsctacte.MoveSiguiente()
  loc_C45229: Branch loc_C44C02
  loc_C4522C: LitI4 1
  loc_C45231: LitI4 1
  loc_C45236: LitVarStr var_110, "###,###,##0.00"
  loc_C4523B: FStVarCopyObj var_124
  loc_C4523E: FLdRfVar var_124
  loc_C45241: FLdRfVar var_CC
  loc_C45244: CVarRef
  loc_C45249: FLdRfVar var_134
  loc_C4524C: ImpAdCallFPR4  = Format(, )
  loc_C45251: FLdRfVar var_134
  loc_C45254: CStrVarVal var_138
  loc_C45258: FLdPr Me
  loc_C4525B: VCallAd Control_ID_txtTotaDere
  loc_C4525E: FStAdFunc var_F0
  loc_C45261: FLdPr var_F0
  loc_C45264: Me.Text = from_stack_1
  loc_C45269: FFree1Str var_138
  loc_C4526C: FFree1Ad var_F0
  loc_C4526F: FFreeVar var_124 = ""
  loc_C45276: LitI4 1
  loc_C4527B: LitI4 1
  loc_C45280: LitVarStr var_110, "###,###,##0.00"
  loc_C45285: FStVarCopyObj var_124
  loc_C45288: FLdRfVar var_124
  loc_C4528B: FLdRfVar var_D4
  loc_C4528E: CVarRef
  loc_C45293: FLdRfVar var_134
  loc_C45296: ImpAdCallFPR4  = Format(, )
  loc_C4529B: FLdRfVar var_134
  loc_C4529E: CStrVarVal var_138
  loc_C452A2: FLdPr Me
  loc_C452A5: VCallAd Control_ID_txtTotaReca
  loc_C452A8: FStAdFunc var_F0
  loc_C452AB: FLdPr var_F0
  loc_C452AE: Me.Text = from_stack_1
  loc_C452B3: FFree1Str var_138
  loc_C452B6: FFree1Ad var_F0
  loc_C452B9: FFreeVar var_124 = ""
  loc_C452C0: LitI4 1
  loc_C452C5: LitI4 1
  loc_C452CA: LitVarStr var_110, "###,###,##0.00"
  loc_C452CF: FStVarCopyObj var_124
  loc_C452D2: FLdRfVar var_124
  loc_C452D5: FLdRfVar var_DC
  loc_C452D8: CVarRef
  loc_C452DD: FLdRfVar var_134
  loc_C452E0: ImpAdCallFPR4  = Format(, )
  loc_C452E5: FLdRfVar var_134
  loc_C452E8: CStrVarVal var_138
  loc_C452EC: FLdPr Me
  loc_C452EF: VCallAd Control_ID_txtTotaApre
  loc_C452F2: FStAdFunc var_F0
  loc_C452F5: FLdPr var_F0
  loc_C452F8: Me.Text = from_stack_1
  loc_C452FD: FFree1Str var_138
  loc_C45300: FFree1Ad var_F0
  loc_C45303: FFreeVar var_124 = ""
  loc_C4530A: LitI4 2
  loc_C4530F: FLdRfVar var_CC
  loc_C45312: CVarRef
  loc_C45317: FLdRfVar var_124
  loc_C4531A: ImpAdCallFPR4  = Round(, )
  loc_C4531F: FLdRfVar var_124
  loc_C45322: LitI4 2
  loc_C45327: FLdRfVar var_D4
  loc_C4532A: CVarRef
  loc_C4532F: FLdRfVar var_134
  loc_C45332: ImpAdCallFPR4  = Round(, )
  loc_C45337: FLdRfVar var_134
  loc_C4533A: AddVar var_148
  loc_C4533E: LitI4 2
  loc_C45343: FLdRfVar var_DC
  loc_C45346: CVarRef
  loc_C4534B: FLdRfVar var_168
  loc_C4534E: ImpAdCallFPR4  = Round(, )
  loc_C45353: FLdRfVar var_168
  loc_C45356: AddVar var_178
  loc_C4535A: CR4Var
  loc_C4535B: FStFPR8 var_E4
  loc_C4535E: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C4536B: LitI4 1
  loc_C45370: LitI4 1
  loc_C45375: LitVarStr var_110, "###,###,##0.00"
  loc_C4537A: FStVarCopyObj var_124
  loc_C4537D: FLdRfVar var_124
  loc_C45380: FLdRfVar var_E4
  loc_C45383: CVarRef
  loc_C45388: FLdRfVar var_134
  loc_C4538B: ImpAdCallFPR4  = Format(, )
  loc_C45390: FLdRfVar var_134
  loc_C45393: CStrVarVal var_138
  loc_C45397: FLdPr Me
  loc_C4539A: VCallAd Control_ID_txtTotal
  loc_C4539D: FStAdFunc var_F0
  loc_C453A0: FLdPr var_F0
  loc_C453A3: Me.Text = from_stack_1
  loc_C453A8: FFree1Str var_138
  loc_C453AB: FFree1Ad var_F0
  loc_C453AE: FFreeVar var_124 = ""
  loc_C453B5: FLdPr Me
  loc_C453B8: VCallAd Control_ID_ctacteFlex
  loc_C453BB: FStAdFunc var_F0
  loc_C453BE: FLdPr var_F0
  loc_C453C1: LateIdLdVar var_124 DispID_4 0
  loc_C453C8: CI4Var
  loc_C453CA: LitI4 1
  loc_C453CF: GtI4
  loc_C453D0: FFree1Ad var_F0
  loc_C453D3: FFree1Var var_124 = ""
  loc_C453D6: BranchF loc_C4540C
  loc_C453D9: LitI4 0
  loc_C453DE: LitI4 0
  loc_C453E3: FLdRfVar var_540
  loc_C453E6: Redim
  loc_C453F0: FLdPr Me
  loc_C453F3: VCallAd Control_ID_ConfirmarCmd
  loc_C453F6: CVarAd
  loc_C453FA: ParmAry1St
  loc_C45400: FLdRfVar var_540
  loc_C45403: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C45408: FLdRfVar var_540
  loc_C4540B: Erase
  loc_C4540C: ExitProcHresult
  loc_C4540D: CStrVarTmp
End Sub

Private Sub FeveCtctCmd_Click() 'A4E644
  'Data Table: 4FA474
  loc_A4E5F0: LitVar_Missing var_A4
  loc_A4E5F3: PopAdLdVar
  loc_A4E5F4: LitVarI4
  loc_A4E5FC: PopAdLdVar
  loc_A4E5FD: ImpAdLdRf MemVar_D930A4
  loc_A4E600: NewIfNullPr frmCalendario
  loc_A4E603: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4E608: ImpAdLdI4 MemVar_D93028
  loc_A4E60B: LitStr vbNullString
  loc_A4E60E: NeStr
  loc_A4E610: BranchF loc_A4E62E
  loc_A4E613: ImpAdLdRf MemVar_D93028
  loc_A4E616: CDargRef
  loc_A4E61A: FLdPr Me
  loc_A4E61D: VCallAd Control_ID_FeveCtctMsk
  loc_A4E620: FStAdFunc var_A8
  loc_A4E623: FLdPr var_A8
  loc_A4E626: LateIdSt
  loc_A4E62B: FFree1Ad var_A8
  loc_A4E62E: FLdPr Me
  loc_A4E631: VCallAd Control_ID_FeveCtctMsk
  loc_A4E634: CVarAd
  loc_A4E638: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4E63D: FFree1Var var_B8 = ""
  loc_A4E640: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A4E388
  'Data Table: 4FA474
  loc_A4E334: LitVar_Missing var_A4
  loc_A4E337: PopAdLdVar
  loc_A4E338: LitVarI4
  loc_A4E340: PopAdLdVar
  loc_A4E341: ImpAdLdRf MemVar_D930A4
  loc_A4E344: NewIfNullPr frmCalendario
  loc_A4E347: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4E34C: ImpAdLdI4 MemVar_D93028
  loc_A4E34F: LitStr vbNullString
  loc_A4E352: NeStr
  loc_A4E354: BranchF loc_A4E372
  loc_A4E357: ImpAdLdRf MemVar_D93028
  loc_A4E35A: CDargRef
  loc_A4E35E: FLdPr Me
  loc_A4E361: VCallAd Control_ID_FechVencMsk
  loc_A4E364: FStAdFunc var_A8
  loc_A4E367: FLdPr var_A8
  loc_A4E36A: LateIdSt
  loc_A4E36F: FFree1Ad var_A8
  loc_A4E372: FLdPr Me
  loc_A4E375: VCallAd Control_ID_FechVencMsk
  loc_A4E378: CVarAd
  loc_A4E37C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4E381: FFree1Var var_B8 = ""
  loc_A4E384: ExitProcHresult
  loc_A4E385: MemLdRfVar from_stack_1.global_52
End Sub

Private Sub NumeCtaCmd_Click() 'B4DA5C
  'Data Table: 4FA474
  loc_B4D6C4: FLdRfVar var_8A
  loc_B4D6C7: FLdPr Me
  loc_B4D6CA: VCallAd Control_ID_OficinaCbo
  loc_B4D6CD: FStAdFunc var_88
  loc_B4D6D0: FLdPr var_88
  loc_B4D6D3:  = Me.ListIndex
  loc_B4D6D8: FLdI2 var_8A
  loc_B4D6DB: FStI2 var_8C
  loc_B4D6DE: FFree1Ad var_88
  loc_B4D6E1: FLdI2 var_8C
  loc_B4D6E4: LitI2_Byte 0
  loc_B4D6E6: EqI2
  loc_B4D6E7: BranchF loc_B4D6F5
  loc_B4D6EA: LitI2_Byte 1
  loc_B4D6EC: CUI1I2
  loc_B4D6EE: ImpAdStUI1 MemVar_D93038
  loc_B4D6F2: Branch loc_B4D76A
  loc_B4D6F5: FLdI2 var_8C
  loc_B4D6F8: LitI2_Byte 1
  loc_B4D6FA: EqI2
  loc_B4D6FB: BranchF loc_B4D709
  loc_B4D6FE: LitI2_Byte 2
  loc_B4D700: CUI1I2
  loc_B4D702: ImpAdStUI1 MemVar_D93038
  loc_B4D706: Branch loc_B4D76A
  loc_B4D709: FLdI2 var_8C
  loc_B4D70C: LitI2_Byte 2
  loc_B4D70E: EqI2
  loc_B4D70F: BranchF loc_B4D71D
  loc_B4D712: LitI2_Byte 3
  loc_B4D714: CUI1I2
  loc_B4D716: ImpAdStUI1 MemVar_D93038
  loc_B4D71A: Branch loc_B4D76A
  loc_B4D71D: FLdI2 var_8C
  loc_B4D720: LitI2_Byte 3
  loc_B4D722: EqI2
  loc_B4D723: BranchF loc_B4D731
  loc_B4D726: LitI2_Byte 4
  loc_B4D728: CUI1I2
  loc_B4D72A: ImpAdStUI1 MemVar_D93038
  loc_B4D72E: Branch loc_B4D76A
  loc_B4D731: FLdI2 var_8C
  loc_B4D734: LitI2_Byte 4
  loc_B4D736: EqI2
  loc_B4D737: BranchF loc_B4D745
  loc_B4D73A: LitI2_Byte 5
  loc_B4D73C: CUI1I2
  loc_B4D73E: ImpAdStUI1 MemVar_D93038
  loc_B4D742: Branch loc_B4D76A
  loc_B4D745: FLdI2 var_8C
  loc_B4D748: LitI2_Byte 5
  loc_B4D74A: EqI2
  loc_B4D74B: BranchF loc_B4D759
  loc_B4D74E: LitI2_Byte 6
  loc_B4D750: CUI1I2
  loc_B4D752: ImpAdStUI1 MemVar_D93038
  loc_B4D756: Branch loc_B4D76A
  loc_B4D759: FLdI2 var_8C
  loc_B4D75C: LitI2_Byte 6
  loc_B4D75E: EqI2
  loc_B4D75F: BranchF loc_B4D76A
  loc_B4D762: LitI2_Byte 7
  loc_B4D764: CUI1I2
  loc_B4D766: ImpAdStUI1 MemVar_D93038
  loc_B4D76A: LitVar_Missing var_AC
  loc_B4D76D: PopAdLdVar
  loc_B4D76E: LitVarI4
  loc_B4D776: PopAdLdVar
  loc_B4D777: ImpAdLdRf MemVar_D94034
  loc_B4D77A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D77D: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B4D782: FLdRfVar var_B0
  loc_B4D785: FLdRfVar var_88
  loc_B4D788: ImpAdLdRf MemVar_D94034
  loc_B4D78B: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D78E: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D793: FLdPr var_88
  loc_B4D796: from_stack_1 = clsbase.RecordCount
  loc_B4D79B: ILdRf var_B0
  loc_B4D79E: LitI4 0
  loc_B4D7A3: GtI4
  loc_B4D7A4: FFree1Ad var_88
  loc_B4D7A7: BranchF loc_B4DA47
  loc_B4D7AA: FLdRfVar var_CC
  loc_B4D7AD: FLdRfVar var_BC
  loc_B4D7B0: LitVarStr var_9C, "CodiOfic"
  loc_B4D7B5: PopAdLdVar
  loc_B4D7B6: FLdRfVar var_B8
  loc_B4D7B9: FLdRfVar var_B4
  loc_B4D7BC: FLdRfVar var_88
  loc_B4D7BF: ImpAdLdRf MemVar_D94034
  loc_B4D7C2: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D7C5: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D7CA: FLdPr var_88
  loc_B4D7CD: from_stack_1v = clsbase.RsFrmGet()
  loc_B4D7D2: FLdPr var_B4
  loc_B4D7D5:  = Me.Fields
  loc_B4D7DA: FLdPr var_B8
  loc_B4D7DD: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D7E2: FLdPr var_BC
  loc_B4D7E5:  = Me.Value
  loc_B4D7EA: FLdRfVar var_CC
  loc_B4D7ED: FStVar var_DC
  loc_B4D7F1: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B4D7FC: FLdRfVar var_DC
  loc_B4D7FF: LitVarI2 var_9C, 1
  loc_B4D804: HardType
  loc_B4D805: EqVarBool
  loc_B4D807: BranchF loc_B4D841
  loc_B4D80A: FLdRfVar var_E0
  loc_B4D80D: LitI2_Byte 0
  loc_B4D80F: FLdPr Me
  loc_B4D812: VCallAd Control_ID_OficinaCbo
  loc_B4D815: FStAdFunc var_88
  loc_B4D818: FLdPr var_88
  loc_B4D81B: from_stack_2 = Me.List(from_stack_1)
  loc_B4D820: ILdRf var_E0
  loc_B4D823: FLdPr Me
  loc_B4D826: VCallAd Control_ID_OficinaCbo
  loc_B4D829: FStAdFunc var_B4
  loc_B4D82C: FLdPr var_B4
  loc_B4D82F: Me.Text = from_stack_1
  loc_B4D834: FFree1Str var_E0
  loc_B4D837: FFreeAd var_88 = ""
  loc_B4D83E: Branch loc_B4D9DC
  loc_B4D841: FLdRfVar var_DC
  loc_B4D844: LitVarI2 var_9C, 2
  loc_B4D849: HardType
  loc_B4D84A: EqVarBool
  loc_B4D84C: BranchF loc_B4D886
  loc_B4D84F: FLdRfVar var_E0
  loc_B4D852: LitI2_Byte 1
  loc_B4D854: FLdPr Me
  loc_B4D857: VCallAd Control_ID_OficinaCbo
  loc_B4D85A: FStAdFunc var_88
  loc_B4D85D: FLdPr var_88
  loc_B4D860: from_stack_2 = Me.List(from_stack_1)
  loc_B4D865: ILdRf var_E0
  loc_B4D868: FLdPr Me
  loc_B4D86B: VCallAd Control_ID_OficinaCbo
  loc_B4D86E: FStAdFunc var_B4
  loc_B4D871: FLdPr var_B4
  loc_B4D874: Me.Text = from_stack_1
  loc_B4D879: FFree1Str var_E0
  loc_B4D87C: FFreeAd var_88 = ""
  loc_B4D883: Branch loc_B4D9DC
  loc_B4D886: FLdRfVar var_DC
  loc_B4D889: LitVarI2 var_9C, 3
  loc_B4D88E: HardType
  loc_B4D88F: EqVarBool
  loc_B4D891: BranchF loc_B4D8CB
  loc_B4D894: FLdRfVar var_E0
  loc_B4D897: LitI2_Byte 2
  loc_B4D899: FLdPr Me
  loc_B4D89C: VCallAd Control_ID_OficinaCbo
  loc_B4D89F: FStAdFunc var_88
  loc_B4D8A2: FLdPr var_88
  loc_B4D8A5: from_stack_2 = Me.List(from_stack_1)
  loc_B4D8AA: ILdRf var_E0
  loc_B4D8AD: FLdPr Me
  loc_B4D8B0: VCallAd Control_ID_OficinaCbo
  loc_B4D8B3: FStAdFunc var_B4
  loc_B4D8B6: FLdPr var_B4
  loc_B4D8B9: Me.Text = from_stack_1
  loc_B4D8BE: FFree1Str var_E0
  loc_B4D8C1: FFreeAd var_88 = ""
  loc_B4D8C8: Branch loc_B4D9DC
  loc_B4D8CB: FLdRfVar var_DC
  loc_B4D8CE: LitVarI2 var_9C, 4
  loc_B4D8D3: HardType
  loc_B4D8D4: EqVarBool
  loc_B4D8D6: BranchF loc_B4D910
  loc_B4D8D9: FLdRfVar var_E0
  loc_B4D8DC: LitI2_Byte 3
  loc_B4D8DE: FLdPr Me
  loc_B4D8E1: VCallAd Control_ID_OficinaCbo
  loc_B4D8E4: FStAdFunc var_88
  loc_B4D8E7: FLdPr var_88
  loc_B4D8EA: from_stack_2 = Me.List(from_stack_1)
  loc_B4D8EF: ILdRf var_E0
  loc_B4D8F2: FLdPr Me
  loc_B4D8F5: VCallAd Control_ID_OficinaCbo
  loc_B4D8F8: FStAdFunc var_B4
  loc_B4D8FB: FLdPr var_B4
  loc_B4D8FE: Me.Text = from_stack_1
  loc_B4D903: FFree1Str var_E0
  loc_B4D906: FFreeAd var_88 = ""
  loc_B4D90D: Branch loc_B4D9DC
  loc_B4D910: FLdRfVar var_DC
  loc_B4D913: LitVarI2 var_9C, 5
  loc_B4D918: HardType
  loc_B4D919: EqVarBool
  loc_B4D91B: BranchF loc_B4D955
  loc_B4D91E: FLdRfVar var_E0
  loc_B4D921: LitI2_Byte 4
  loc_B4D923: FLdPr Me
  loc_B4D926: VCallAd Control_ID_OficinaCbo
  loc_B4D929: FStAdFunc var_88
  loc_B4D92C: FLdPr var_88
  loc_B4D92F: from_stack_2 = Me.List(from_stack_1)
  loc_B4D934: ILdRf var_E0
  loc_B4D937: FLdPr Me
  loc_B4D93A: VCallAd Control_ID_OficinaCbo
  loc_B4D93D: FStAdFunc var_B4
  loc_B4D940: FLdPr var_B4
  loc_B4D943: Me.Text = from_stack_1
  loc_B4D948: FFree1Str var_E0
  loc_B4D94B: FFreeAd var_88 = ""
  loc_B4D952: Branch loc_B4D9DC
  loc_B4D955: FLdRfVar var_DC
  loc_B4D958: LitVarI2 var_9C, 6
  loc_B4D95D: HardType
  loc_B4D95E: EqVarBool
  loc_B4D960: BranchF loc_B4D99A
  loc_B4D963: FLdRfVar var_E0
  loc_B4D966: LitI2_Byte 5
  loc_B4D968: FLdPr Me
  loc_B4D96B: VCallAd Control_ID_OficinaCbo
  loc_B4D96E: FStAdFunc var_88
  loc_B4D971: FLdPr var_88
  loc_B4D974: from_stack_2 = Me.List(from_stack_1)
  loc_B4D979: ILdRf var_E0
  loc_B4D97C: FLdPr Me
  loc_B4D97F: VCallAd Control_ID_OficinaCbo
  loc_B4D982: FStAdFunc var_B4
  loc_B4D985: FLdPr var_B4
  loc_B4D988: Me.Text = from_stack_1
  loc_B4D98D: FFree1Str var_E0
  loc_B4D990: FFreeAd var_88 = ""
  loc_B4D997: Branch loc_B4D9DC
  loc_B4D99A: FLdRfVar var_DC
  loc_B4D99D: LitVarI2 var_9C, 7
  loc_B4D9A2: HardType
  loc_B4D9A3: EqVarBool
  loc_B4D9A5: BranchF loc_B4D9DC
  loc_B4D9A8: FLdRfVar var_E0
  loc_B4D9AB: LitI2_Byte 6
  loc_B4D9AD: FLdPr Me
  loc_B4D9B0: VCallAd Control_ID_OficinaCbo
  loc_B4D9B3: FStAdFunc var_88
  loc_B4D9B6: FLdPr var_88
  loc_B4D9B9: from_stack_2 = Me.List(from_stack_1)
  loc_B4D9BE: ILdRf var_E0
  loc_B4D9C1: FLdPr Me
  loc_B4D9C4: VCallAd Control_ID_OficinaCbo
  loc_B4D9C7: FStAdFunc var_B4
  loc_B4D9CA: FLdPr var_B4
  loc_B4D9CD: Me.Text = from_stack_1
  loc_B4D9D2: FFree1Str var_E0
  loc_B4D9D5: FFreeAd var_88 = ""
  loc_B4D9DC: FLdRfVar var_CC
  loc_B4D9DF: FLdRfVar var_BC
  loc_B4D9E2: LitVarStr var_9C, "CuenCtct"
  loc_B4D9E7: PopAdLdVar
  loc_B4D9E8: FLdRfVar var_B8
  loc_B4D9EB: FLdRfVar var_B4
  loc_B4D9EE: FLdRfVar var_88
  loc_B4D9F1: ImpAdLdRf MemVar_D94034
  loc_B4D9F4: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B4D9F7: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B4D9FC: FLdPr var_88
  loc_B4D9FF: from_stack_1v = clsbase.RsFrmGet()
  loc_B4DA04: FLdPr var_B4
  loc_B4DA07:  = Me.Fields
  loc_B4DA0C: FLdPr var_B8
  loc_B4DA0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DA14: FLdPr var_BC
  loc_B4DA17:  = Me.Value
  loc_B4DA1C: FLdRfVar var_CC
  loc_B4DA1F: CStrVarTmp
  loc_B4DA20: FStStrNoPop var_E0
  loc_B4DA23: FLdPr Me
  loc_B4DA26: VCallAd Control_ID_NumeCtaTxt
  loc_B4DA29: FStAdFunc var_E4
  loc_B4DA2C: FLdPr var_E4
  loc_B4DA2F: Me.Text = from_stack_1
  loc_B4DA34: FFree1Str var_E0
  loc_B4DA37: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B4DA44: FFree1Var var_CC = ""
  loc_B4DA47: FLdPr Me
  loc_B4DA4A: VCallAd Control_ID_NumeCtaTxt
  loc_B4DA4D: CVarAd
  loc_B4DA51: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B4DA56: FFree1Var var_CC = ""
  loc_B4DA59: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() 'B3BE24
  'Data Table: 4FA474
  loc_B3BB04: LitI2_Byte 0
  loc_B3BB06: CR8I2
  loc_B3BB07: FLdPr Me
  loc_B3BB0A: MemStFPR8 global_64
  loc_B3BB0D: LitI2_Byte 1
  loc_B3BB0F: FLdPr Me
  loc_B3BB12: MemLdRfVar from_stack_1.global_60
  loc_B3BB15: FLdPr Me
  loc_B3BB18: VCallAd Control_ID_ctacteFlex
  loc_B3BB1B: FStAdFunc var_88
  loc_B3BB1E: FLdPr var_88
  loc_B3BB21: LateIdLdVar var_98 DispID_4 0
  loc_B3BB28: CI4Var
  loc_B3BB2A: LitI4 1
  loc_B3BB2F: SubI4
  loc_B3BB30: CI2I4
  loc_B3BB31: FFree1Ad var_88
  loc_B3BB34: FFree1Var var_98 = ""
  loc_B3BB37: ForI2 var_9C
  loc_B3BB3D: FLdPr Me
  loc_B3BB40: MemLdI2 global_60
  loc_B3BB43: CI4UI1
  loc_B3BB44: CVarI4
  loc_B3BB48: PopAdLdVar
  loc_B3BB49: LitVarI4
  loc_B3BB51: PopAdLdVar
  loc_B3BB52: FLdPr Me
  loc_B3BB55: VCallAd Control_ID_ctacteFlex
  loc_B3BB58: FStAdFunc var_88
  loc_B3BB5B: FLdPr var_88
  loc_B3BB5E: LateIdCallLdVar
  loc_B3BB68: CStrVarTmp
  loc_B3BB69: FStStrNoPop var_E0
  loc_B3BB6C: CI4Str
  loc_B3BB6D: LitI4 0
  loc_B3BB72: EqI4
  loc_B3BB73: FFree1Str var_E0
  loc_B3BB76: FFree1Ad var_88
  loc_B3BB79: FFree1Var var_98 = ""
  loc_B3BB7C: BranchF loc_B3BDCA
  loc_B3BB7F: FLdPr Me
  loc_B3BB82: MemLdI2 global_60
  loc_B3BB85: CI4UI1
  loc_B3BB86: CVarI4
  loc_B3BB8A: PopAdLdVar
  loc_B3BB8B: FLdPr Me
  loc_B3BB8E: VCallAd Control_ID_ctacteFlex
  loc_B3BB91: FStAdFunc var_88
  loc_B3BB94: FLdPr var_88
  loc_B3BB97: LateIdSt
  loc_B3BB9C: FFree1Ad var_88
  loc_B3BB9F: LitI2_Byte 0
  loc_B3BBA1: FLdPr Me
  loc_B3BBA4: MemLdRfVar from_stack_1.global_62
  loc_B3BBA7: FLdPr Me
  loc_B3BBAA: VCallAd Control_ID_ctacteFlex
  loc_B3BBAD: FStAdFunc var_88
  loc_B3BBB0: FLdPr var_88
  loc_B3BBB3: LateIdLdVar var_98 DispID_5 0
  loc_B3BBBA: CI4Var
  loc_B3BBBC: LitI4 1
  loc_B3BBC1: SubI4
  loc_B3BBC2: CI2I4
  loc_B3BBC3: FFree1Ad var_88
  loc_B3BBC6: FFree1Var var_98 = ""
  loc_B3BBC9: ForI2 var_E4
  loc_B3BBCF: FLdPr Me
  loc_B3BBD2: MemLdI2 global_62
  loc_B3BBD5: CI4UI1
  loc_B3BBD6: CVarI4
  loc_B3BBDA: PopAdLdVar
  loc_B3BBDB: FLdPr Me
  loc_B3BBDE: VCallAd Control_ID_ctacteFlex
  loc_B3BBE1: FStAdFunc var_88
  loc_B3BBE4: FLdPr var_88
  loc_B3BBE7: LateIdSt
  loc_B3BBEC: FFree1Ad var_88
  loc_B3BBEF: FLdRfVar var_E6
  loc_B3BBF2: FLdPr Me
  loc_B3BBF5: VCallAd Control_ID_SeleTodoChk
  loc_B3BBF8: FStAdFunc var_88
  loc_B3BBFB: FLdPr var_88
  loc_B3BBFE:  = Me.Value
  loc_B3BC03: FLdI2 var_E6
  loc_B3BC06: LitI2_Byte 0
  loc_B3BC08: EqI2
  loc_B3BC09: FFree1Ad var_88
  loc_B3BC0C: BranchF loc_B3BC8B
  loc_B3BC0F: LitVarI4
  loc_B3BC17: PopAdLdVar
  loc_B3BC18: FLdPr Me
  loc_B3BC1B: VCallAd Control_ID_ctacteFlex
  loc_B3BC1E: FStAdFunc var_88
  loc_B3BC21: FLdPr var_88
  loc_B3BC24: LateIdSt
  loc_B3BC29: FFree1Ad var_88
  loc_B3BC2C: FLdPr Me
  loc_B3BC2F: VCallAd Control_ID_ctacteFlex
  loc_B3BC32: FStAdFunc var_88
  loc_B3BC35: FLdPr var_88
  loc_B3BC38: LateIdLdVar var_98 DispID_10 0
  loc_B3BC3F: CI4Var
  loc_B3BC41: CVarI4
  loc_B3BC45: PopAdLdVar
  loc_B3BC46: LitVarI4
  loc_B3BC4E: PopAdLdVar
  loc_B3BC4F: LitVarStr var_F8, "No"
  loc_B3BC54: PopAdLdVar
  loc_B3BC55: FLdPr Me
  loc_B3BC58: VCallAd Control_ID_ctacteFlex
  loc_B3BC5B: FStAdFunc var_10C
  loc_B3BC5E: FLdPr var_10C
  loc_B3BC61: LateIdCallSt
  loc_B3BC69: FFreeAd var_88 = ""
  loc_B3BC70: FFree1Var var_98 = ""
  loc_B3BC73: FLdPr Me
  loc_B3BC76: MemLdI2 global_62
  loc_B3BC79: LitI2_Byte &HD
  loc_B3BC7B: EqI2
  loc_B3BC7C: BranchF loc_B3BC88
  loc_B3BC7F: LitI2_Byte 0
  loc_B3BC81: CR8I2
  loc_B3BC82: FLdPr Me
  loc_B3BC85: MemStFPR8 global_64
  loc_B3BC88: Branch loc_B3BD60
  loc_B3BC8B: LitVarI4
  loc_B3BC93: PopAdLdVar
  loc_B3BC94: FLdPr Me
  loc_B3BC97: VCallAd Control_ID_ctacteFlex
  loc_B3BC9A: FStAdFunc var_88
  loc_B3BC9D: FLdPr var_88
  loc_B3BCA0: LateIdSt
  loc_B3BCA5: FFree1Ad var_88
  loc_B3BCA8: FLdPr Me
  loc_B3BCAB: VCallAd Control_ID_ctacteFlex
  loc_B3BCAE: FStAdFunc var_88
  loc_B3BCB1: FLdPr var_88
  loc_B3BCB4: LateIdLdVar var_98 DispID_10 0
  loc_B3BCBB: CI4Var
  loc_B3BCBD: CVarI4
  loc_B3BCC1: PopAdLdVar
  loc_B3BCC2: LitVarI4
  loc_B3BCCA: PopAdLdVar
  loc_B3BCCB: LitVarStr var_F8, "Si"
  loc_B3BCD0: PopAdLdVar
  loc_B3BCD1: FLdPr Me
  loc_B3BCD4: VCallAd Control_ID_ctacteFlex
  loc_B3BCD7: FStAdFunc var_10C
  loc_B3BCDA: FLdPr var_10C
  loc_B3BCDD: LateIdCallSt
  loc_B3BCE5: FFreeAd var_88 = ""
  loc_B3BCEC: FFree1Var var_98 = ""
  loc_B3BCEF: FLdPr Me
  loc_B3BCF2: MemLdI2 global_62
  loc_B3BCF5: LitI2_Byte &HD
  loc_B3BCF7: EqI2
  loc_B3BCF8: BranchF loc_B3BD60
  loc_B3BCFB: FLdPr Me
  loc_B3BCFE: VCallAd Control_ID_ctacteFlex
  loc_B3BD01: FStAdFunc var_88
  loc_B3BD04: FLdPr var_88
  loc_B3BD07: LateIdLdVar var_98 DispID_10 0
  loc_B3BD0E: CI4Var
  loc_B3BD10: CVarI4
  loc_B3BD14: PopAdLdVar
  loc_B3BD15: FLdPr Me
  loc_B3BD18: MemLdI2 global_62
  loc_B3BD1B: CI4UI1
  loc_B3BD1C: CVarI4
  loc_B3BD20: PopAdLdVar
  loc_B3BD21: FLdPr Me
  loc_B3BD24: VCallAd Control_ID_ctacteFlex
  loc_B3BD27: FStAdFunc var_10C
  loc_B3BD2A: FLdPr var_10C
  loc_B3BD2D: LateIdCallLdVar
  loc_B3BD37: PopAd
  loc_B3BD39: FLdPr Me
  loc_B3BD3C: MemLdFPR8 global_64
  loc_B3BD3F: FLdRfVar var_11C
  loc_B3BD42: CStrVarTmp
  loc_B3BD43: FStStrNoPop var_E0
  loc_B3BD46: CR8Str
  loc_B3BD48: AddR8
  loc_B3BD49: FLdPr Me
  loc_B3BD4C: MemStFPR8 global_64
  loc_B3BD4F: FFree1Str var_E0
  loc_B3BD52: FFreeAd var_88 = ""
  loc_B3BD59: FFreeVar var_98 = ""
  loc_B3BD60: FLdPr Me
  loc_B3BD63: MemLdRfVar from_stack_1.global_62
  loc_B3BD66: NextI2 var_E4, loc_B3BBCF
  loc_B3BD6B: LitI4 1
  loc_B3BD70: LitI4 1
  loc_B3BD75: LitVarStr var_BC, "0.00"
  loc_B3BD7A: FStVarCopyObj var_11C
  loc_B3BD7D: FLdRfVar var_11C
  loc_B3BD80: LitVarI2 var_98, 0
  loc_B3BD85: FLdRfVar var_12C
  loc_B3BD88: ImpAdCallFPR4  = Format(, )
  loc_B3BD8D: FLdRfVar var_12C
  loc_B3BD90: CStrVarVal var_E0
  loc_B3BD94: FLdPr Me
  loc_B3BD97: VCallAd Control_ID_ImpoCtctTxt
  loc_B3BD9A: FStAdFunc var_88
  loc_B3BD9D: FLdPr var_88
  loc_B3BDA0: Me.Text = from_stack_1
  loc_B3BDA5: FFree1Str var_E0
  loc_B3BDA8: FFree1Ad var_88
  loc_B3BDAB: FFreeVar var_98 = "": var_11C = ""
  loc_B3BDB4: LitI2_Byte 0
  loc_B3BDB6: FLdPr Me
  loc_B3BDB9: VCallAd Control_ID_ImpoCtctTxt
  loc_B3BDBC: FStAdFunc var_88
  loc_B3BDBF: FLdPr var_88
  loc_B3BDC2: Me.Enabled = from_stack_1b
  loc_B3BDC7: FFree1Ad var_88
  loc_B3BDCA: FLdPr Me
  loc_B3BDCD: MemLdRfVar from_stack_1.global_60
  loc_B3BDD0: NextI2 var_9C, loc_B3BB3D
  loc_B3BDD5: LitI4 1
  loc_B3BDDA: LitI4 1
  loc_B3BDDF: LitVarStr var_BC, "0.00"
  loc_B3BDE4: FStVarCopyObj var_98
  loc_B3BDE7: FLdRfVar var_98
  loc_B3BDEA: FLdPr Me
  loc_B3BDED: MemLdRfVar from_stack_1.global_64
  loc_B3BDF0: CVarRef
  loc_B3BDF5: FLdRfVar var_11C
  loc_B3BDF8: ImpAdCallFPR4  = Format(, )
  loc_B3BDFD: FLdRfVar var_11C
  loc_B3BE00: CStrVarVal var_E0
  loc_B3BE04: FLdPr Me
  loc_B3BE07: VCallAd Control_ID_txtTotaSele
  loc_B3BE0A: FStAdFunc var_88
  loc_B3BE0D: FLdPr var_88
  loc_B3BE10: Me.Text = from_stack_1
  loc_B3BE15: FFree1Str var_E0
  loc_B3BE18: FFree1Ad var_88
  loc_B3BE1B: FFreeVar var_98 = ""
  loc_B3BE22: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C4C40
  'Data Table: 4FA474
  loc_9C4C2C: FLdPr Me
  loc_9C4C2F: VCallAd Control_ID_FechVencMsk
  loc_9C4C32: CVarAd
  loc_9C4C36: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C4C3B: FFree1Var var_94 = ""
  loc_9C4C3E: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABD62C
  'Data Table: 4FA474
  loc_ABD534: FLdPr Me
  loc_ABD537: VCallAd Control_ID_FechVencMsk
  loc_ABD53A: FStAdFunc var_88
  loc_ABD53D: FLdPr var_88
  loc_ABD540: LateIdLdVar var_98 DispID_13 -32767
  loc_ABD547: CBoolVar
  loc_ABD549: LitI2_Byte &HFF
  loc_ABD54B: EqI2
  loc_ABD54C: FFree1Ad var_88
  loc_ABD54F: FFree1Var var_98 = ""
  loc_ABD552: BranchF loc_ABD62A
  loc_ABD555: LitVarStr var_A8, vbNullString
  loc_ABD55A: PopAdLdVar
  loc_ABD55B: FLdPr Me
  loc_ABD55E: VCallAd Control_ID_FechVencMsk
  loc_ABD561: FStAdFunc var_88
  loc_ABD564: FLdPr var_88
  loc_ABD567: LateIdSt
  loc_ABD56C: FFree1Ad var_88
  loc_ABD56F: FLdPr Me
  loc_ABD572: VCallAd Control_ID_FechVencMsk
  loc_ABD575: FStAdFunc var_88
  loc_ABD578: FLdPr var_88
  loc_ABD57B: LateIdLdVar var_98 DispID_22 0
  loc_ABD582: CStrVarTmp
  loc_ABD583: FStStrNoPop var_BC
  loc_ABD586: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABD58B: FStStrNoPop var_C0
  loc_ABD58E: FLdPr Me
  loc_ABD591: MemStStrCopy
  loc_ABD595: FFreeStr var_BC = ""
  loc_ABD59C: FFree1Ad var_88
  loc_ABD59F: FFree1Var var_98 = ""
  loc_ABD5A2: LitVarStr var_A8, "##/##/####"
  loc_ABD5A7: PopAdLdVar
  loc_ABD5A8: FLdPr Me
  loc_ABD5AB: VCallAd Control_ID_FechVencMsk
  loc_ABD5AE: FStAdFunc var_88
  loc_ABD5B1: FLdPr var_88
  loc_ABD5B4: LateIdSt
  loc_ABD5B9: FFree1Ad var_88
  loc_ABD5BC: LitVarI2 var_A8, 10
  loc_ABD5C1: PopAdLdVar
  loc_ABD5C2: FLdPr Me
  loc_ABD5C5: VCallAd Control_ID_FechVencMsk
  loc_ABD5C8: FStAdFunc var_88
  loc_ABD5CB: FLdPr var_88
  loc_ABD5CE: LateIdSt
  loc_ABD5D3: FFree1Ad var_88
  loc_ABD5D6: FLdPr Me
  loc_ABD5D9: MemLdStr global_76
  loc_ABD5DC: LitStr vbNullString
  loc_ABD5DF: NeStr
  loc_ABD5E1: BranchF loc_ABD62A
  loc_ABD5E4: FLdPr Me
  loc_ABD5E7: MemLdStr global_76
  loc_ABD5EA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABD5EF: LitI2_Byte 0
  loc_ABD5F1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABD5F6: CStrDate
  loc_ABD5F8: CVarStr var_98
  loc_ABD5FB: PopAdLdVar
  loc_ABD5FC: FLdPr Me
  loc_ABD5FF: VCallAd Control_ID_FechVencMsk
  loc_ABD602: FStAdFunc var_88
  loc_ABD605: FLdPr var_88
  loc_ABD608: LateIdSt
  loc_ABD60D: FFree1Ad var_88
  loc_ABD610: FFree1Var var_98 = ""
  loc_ABD613: FLdPr Me
  loc_ABD616: VCallAd Control_ID_FechVencMsk
  loc_ABD619: CVarAd
  loc_ABD61D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABD622: FFree1Var var_98 = ""
  loc_ABD625: LitI2_Byte &HFF
  loc_ABD627: IStI2 arg_C
  loc_ABD62A: ExitProcHresult
End Function

Private Sub Form_Load() 'BA0C28
  'Data Table: 4FA474
  loc_BA0630: LitVar_Missing var_94
  loc_BA0633: PopAdLdVar
  loc_BA0634: LitStr "Inmueble"
  loc_BA0637: FLdPr Me
  loc_BA063A: VCallAd Control_ID_OficinaCbo
  loc_BA063D: FStAdFunc var_98
  loc_BA0640: FLdPr var_98
  loc_BA0643: Me.AddItem from_stack_1, from_stack_2
  loc_BA0648: FFree1Ad var_98
  loc_BA064B: LitVar_Missing var_94
  loc_BA064E: PopAdLdVar
  loc_BA064F: LitStr "Comercio"
  loc_BA0652: FLdPr Me
  loc_BA0655: VCallAd Control_ID_OficinaCbo
  loc_BA0658: FStAdFunc var_98
  loc_BA065B: FLdPr var_98
  loc_BA065E: Me.AddItem from_stack_1, from_stack_2
  loc_BA0663: FFree1Ad var_98
  loc_BA0666: LitVar_Missing var_94
  loc_BA0669: PopAdLdVar
  loc_BA066A: LitStr "Deudores Varios"
  loc_BA066D: FLdPr Me
  loc_BA0670: VCallAd Control_ID_OficinaCbo
  loc_BA0673: FStAdFunc var_98
  loc_BA0676: FLdPr var_98
  loc_BA0679: Me.AddItem from_stack_1, from_stack_2
  loc_BA067E: FFree1Ad var_98
  loc_BA0681: LitVar_Missing var_94
  loc_BA0684: PopAdLdVar
  loc_BA0685: LitStr "Cementerio"
  loc_BA0688: FLdPr Me
  loc_BA068B: VCallAd Control_ID_OficinaCbo
  loc_BA068E: FStAdFunc var_98
  loc_BA0691: FLdPr var_98
  loc_BA0694: Me.AddItem from_stack_1, from_stack_2
  loc_BA0699: FFree1Ad var_98
  loc_BA069C: LitVar_Missing var_94
  loc_BA069F: PopAdLdVar
  loc_BA06A0: LitStr "Transito"
  loc_BA06A3: FLdPr Me
  loc_BA06A6: VCallAd Control_ID_OficinaCbo
  loc_BA06A9: FStAdFunc var_98
  loc_BA06AC: FLdPr var_98
  loc_BA06AF: Me.AddItem from_stack_1, from_stack_2
  loc_BA06B4: FFree1Ad var_98
  loc_BA06B7: LitVar_Missing var_94
  loc_BA06BA: PopAdLdVar
  loc_BA06BB: LitStr "Publicidad"
  loc_BA06BE: FLdPr Me
  loc_BA06C1: VCallAd Control_ID_OficinaCbo
  loc_BA06C4: FStAdFunc var_98
  loc_BA06C7: FLdPr var_98
  loc_BA06CA: Me.AddItem from_stack_1, from_stack_2
  loc_BA06CF: FFree1Ad var_98
  loc_BA06D2: LitVar_Missing var_94
  loc_BA06D5: PopAdLdVar
  loc_BA06D6: LitStr "Antena"
  loc_BA06D9: FLdPr Me
  loc_BA06DC: VCallAd Control_ID_OficinaCbo
  loc_BA06DF: FStAdFunc var_98
  loc_BA06E2: FLdPr var_98
  loc_BA06E5: Me.AddItem from_stack_1, from_stack_2
  loc_BA06EA: FFree1Ad var_98
  loc_BA06ED: LitI2_Byte 0
  loc_BA06EF: FLdPr Me
  loc_BA06F2: VCallAd Control_ID_OficinaCbo
  loc_BA06F5: FStAdFunc var_98
  loc_BA06F8: FLdPr var_98
  loc_BA06FB: Me.ListIndex = from_stack_1
  loc_BA0700: FFree1Ad var_98
  loc_BA0703: LitStr "0"
  loc_BA0706: FLdPr Me
  loc_BA0709: VCallAd Control_ID_NumeCtaTxt
  loc_BA070C: FStAdFunc var_98
  loc_BA070F: FLdPr var_98
  loc_BA0712: Me.Text = from_stack_1
  loc_BA0717: FFree1Ad var_98
  loc_BA071A: LitI2_Byte 0
  loc_BA071C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA0721: CStrDate
  loc_BA0723: CVarStr var_A8
  loc_BA0726: PopAdLdVar
  loc_BA0727: FLdPr Me
  loc_BA072A: VCallAd Control_ID_FechVencMsk
  loc_BA072D: FStAdFunc var_98
  loc_BA0730: FLdPr var_98
  loc_BA0733: LateIdSt
  loc_BA0738: FFree1Ad var_98
  loc_BA073B: FFree1Var var_A8 = ""
  loc_BA073E: LitI2_Byte 0
  loc_BA0740: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA0745: CStrDate
  loc_BA0747: CVarStr var_A8
  loc_BA074A: PopAdLdVar
  loc_BA074B: FLdPr Me
  loc_BA074E: VCallAd Control_ID_FeveCtctMsk
  loc_BA0751: FStAdFunc var_98
  loc_BA0754: FLdPr var_98
  loc_BA0757: LateIdSt
  loc_BA075C: FFree1Ad var_98
  loc_BA075F: FFree1Var var_A8 = ""
  loc_BA0762: LitI2_Byte 0
  loc_BA0764: FLdPr Me
  loc_BA0767: VCallAd Control_ID_ImpoCtctTxt
  loc_BA076A: FStAdFunc var_98
  loc_BA076D: FLdPr var_98
  loc_BA0770: Me.Enabled = from_stack_1b
  loc_BA0775: FFree1Ad var_98
  loc_BA0778: FLdPr Me
  loc_BA077B: VCallAd Control_ID_ctacteFlex
  loc_BA077E: FStAdFunc var_AC
  loc_BA0781: LitVarI4
  loc_BA0789: PopAdLdVar
  loc_BA078A: LitVarI4
  loc_BA0792: PopAdLdVar
  loc_BA0793: FLdPr var_AC
  loc_BA0796: LateIdCallSt
  loc_BA079E: LitVarI4
  loc_BA07A6: PopAdLdVar
  loc_BA07A7: LitVarI4
  loc_BA07AF: PopAdLdVar
  loc_BA07B0: FLdPr var_AC
  loc_BA07B3: LateIdCallSt
  loc_BA07BB: LitVarI4
  loc_BA07C3: PopAdLdVar
  loc_BA07C4: LitVarI4
  loc_BA07CC: PopAdLdVar
  loc_BA07CD: FLdPr var_AC
  loc_BA07D0: LateIdCallSt
  loc_BA07D8: LitVarI4
  loc_BA07E0: PopAdLdVar
  loc_BA07E1: LitVarI4
  loc_BA07E9: PopAdLdVar
  loc_BA07EA: FLdPr var_AC
  loc_BA07ED: LateIdCallSt
  loc_BA07F5: LitVarI4
  loc_BA07FD: PopAdLdVar
  loc_BA07FE: LitVarI4
  loc_BA0806: PopAdLdVar
  loc_BA0807: FLdPr var_AC
  loc_BA080A: LateIdCallSt
  loc_BA0812: LitVarI4
  loc_BA081A: PopAdLdVar
  loc_BA081B: LitVarI4
  loc_BA0823: PopAdLdVar
  loc_BA0824: FLdPr var_AC
  loc_BA0827: LateIdCallSt
  loc_BA082F: LitVarI4
  loc_BA0837: PopAdLdVar
  loc_BA0838: LitVarI4
  loc_BA0840: PopAdLdVar
  loc_BA0841: FLdPr var_AC
  loc_BA0844: LateIdCallSt
  loc_BA084C: LitVarI4
  loc_BA0854: PopAdLdVar
  loc_BA0855: LitVarI4
  loc_BA085D: PopAdLdVar
  loc_BA085E: FLdPr var_AC
  loc_BA0861: LateIdCallSt
  loc_BA0869: LitVarI4
  loc_BA0871: PopAdLdVar
  loc_BA0872: LitVarI4
  loc_BA087A: PopAdLdVar
  loc_BA087B: FLdPr var_AC
  loc_BA087E: LateIdCallSt
  loc_BA0886: LitVarI4
  loc_BA088E: PopAdLdVar
  loc_BA088F: LitVarI4
  loc_BA0897: PopAdLdVar
  loc_BA0898: FLdPr var_AC
  loc_BA089B: LateIdCallSt
  loc_BA08A3: LitVarI4
  loc_BA08AB: PopAdLdVar
  loc_BA08AC: LitVarI4
  loc_BA08B4: PopAdLdVar
  loc_BA08B5: FLdPr var_AC
  loc_BA08B8: LateIdCallSt
  loc_BA08C0: LitVarI4
  loc_BA08C8: PopAdLdVar
  loc_BA08C9: LitVarI4
  loc_BA08D1: PopAdLdVar
  loc_BA08D2: FLdPr var_AC
  loc_BA08D5: LateIdCallSt
  loc_BA08DD: LitVarI4
  loc_BA08E5: PopAdLdVar
  loc_BA08E6: LitVarI4
  loc_BA08EE: PopAdLdVar
  loc_BA08EF: FLdPr var_AC
  loc_BA08F2: LateIdCallSt
  loc_BA08FA: LitVarI4
  loc_BA0902: PopAdLdVar
  loc_BA0903: LitVarI4
  loc_BA090B: PopAdLdVar
  loc_BA090C: FLdPr var_AC
  loc_BA090F: LateIdCallSt
  loc_BA0917: LitVarI4
  loc_BA091F: PopAdLdVar
  loc_BA0920: LitVarI4
  loc_BA0928: PopAdLdVar
  loc_BA0929: FLdPr var_AC
  loc_BA092C: LateIdCallSt
  loc_BA0934: LitVarI4
  loc_BA093C: PopAdLdVar
  loc_BA093D: LitVarI4
  loc_BA0945: PopAdLdVar
  loc_BA0946: FLdPr var_AC
  loc_BA0949: LateIdCallSt
  loc_BA0951: LitVarI4
  loc_BA0959: PopAdLdVar
  loc_BA095A: LitVarI4
  loc_BA0962: PopAdLdVar
  loc_BA0963: FLdPr var_AC
  loc_BA0966: LateIdCallSt
  loc_BA096E: LitVarI4
  loc_BA0976: PopAdLdVar
  loc_BA0977: LitVarI4
  loc_BA097F: PopAdLdVar
  loc_BA0980: LitVarStr var_EC, "Of"
  loc_BA0985: PopAdLdVar
  loc_BA0986: FLdPr var_AC
  loc_BA0989: LateIdCallSt
  loc_BA0991: LitVarI4
  loc_BA0999: PopAdLdVar
  loc_BA099A: LitVarI4
  loc_BA09A2: PopAdLdVar
  loc_BA09A3: LitVarStr var_EC, "Cuenta"
  loc_BA09A8: PopAdLdVar
  loc_BA09A9: FLdPr var_AC
  loc_BA09AC: LateIdCallSt
  loc_BA09B4: LitVarI4
  loc_BA09BC: PopAdLdVar
  loc_BA09BD: LitVarI4
  loc_BA09C5: PopAdLdVar
  loc_BA09C6: LitVarStr var_EC, "Periodo"
  loc_BA09CB: PopAdLdVar
  loc_BA09CC: FLdPr var_AC
  loc_BA09CF: LateIdCallSt
  loc_BA09D7: LitVarI4
  loc_BA09DF: PopAdLdVar
  loc_BA09E0: LitVarI4
  loc_BA09E8: PopAdLdVar
  loc_BA09E9: LitVarStr var_EC, "Boleto"
  loc_BA09EE: PopAdLdVar
  loc_BA09EF: FLdPr var_AC
  loc_BA09F2: LateIdCallSt
  loc_BA09FA: LitVarI4
  loc_BA0A02: PopAdLdVar
  loc_BA0A03: LitVarI4
  loc_BA0A0B: PopAdLdVar
  loc_BA0A0C: LitVarStr var_EC, "Emision"
  loc_BA0A11: PopAdLdVar
  loc_BA0A12: FLdPr var_AC
  loc_BA0A15: LateIdCallSt
  loc_BA0A1D: LitVarI4
  loc_BA0A25: PopAdLdVar
  loc_BA0A26: LitVarI4
  loc_BA0A2E: PopAdLdVar
  loc_BA0A2F: LitVarStr var_EC, "Vencimiento"
  loc_BA0A34: PopAdLdVar
  loc_BA0A35: FLdPr var_AC
  loc_BA0A38: LateIdCallSt
  loc_BA0A40: LitVarI4
  loc_BA0A48: PopAdLdVar
  loc_BA0A49: LitVarI4
  loc_BA0A51: PopAdLdVar
  loc_BA0A52: LitVarStr var_EC, "Concepto"
  loc_BA0A57: PopAdLdVar
  loc_BA0A58: FLdPr var_AC
  loc_BA0A5B: LateIdCallSt
  loc_BA0A63: LitVarI4
  loc_BA0A6B: PopAdLdVar
  loc_BA0A6C: LitVarI4
  loc_BA0A74: PopAdLdVar
  loc_BA0A75: LitVarStr var_EC, "Facilidad"
  loc_BA0A7A: PopAdLdVar
  loc_BA0A7B: FLdPr var_AC
  loc_BA0A7E: LateIdCallSt
  loc_BA0A86: LitVarI4
  loc_BA0A8E: PopAdLdVar
  loc_BA0A8F: LitVarI4
  loc_BA0A97: PopAdLdVar
  loc_BA0A98: LitVarStr var_EC, "Apremio"
  loc_BA0A9D: PopAdLdVar
  loc_BA0A9E: FLdPr var_AC
  loc_BA0AA1: LateIdCallSt
  loc_BA0AA9: LitVarI4
  loc_BA0AB1: PopAdLdVar
  loc_BA0AB2: LitVarI4
  loc_BA0ABA: PopAdLdVar
  loc_BA0ABB: LitVarStr var_EC, "Exp/Comp"
  loc_BA0AC0: PopAdLdVar
  loc_BA0AC1: FLdPr var_AC
  loc_BA0AC4: LateIdCallSt
  loc_BA0ACC: LitVarI4
  loc_BA0AD4: PopAdLdVar
  loc_BA0AD5: LitVarI4
  loc_BA0ADD: PopAdLdVar
  loc_BA0ADE: LitVarStr var_EC, "Tipo Movi."
  loc_BA0AE3: PopAdLdVar
  loc_BA0AE4: FLdPr var_AC
  loc_BA0AE7: LateIdCallSt
  loc_BA0AEF: LitVarI4
  loc_BA0AF7: PopAdLdVar
  loc_BA0AF8: LitVarI4
  loc_BA0B00: PopAdLdVar
  loc_BA0B01: LitVarStr var_EC, "Debito"
  loc_BA0B06: PopAdLdVar
  loc_BA0B07: FLdPr var_AC
  loc_BA0B0A: LateIdCallSt
  loc_BA0B12: LitVarI4
  loc_BA0B1A: PopAdLdVar
  loc_BA0B1B: LitVarI4
  loc_BA0B23: PopAdLdVar
  loc_BA0B24: LitVarStr var_EC, "Recargo"
  loc_BA0B29: PopAdLdVar
  loc_BA0B2A: FLdPr var_AC
  loc_BA0B2D: LateIdCallSt
  loc_BA0B35: LitVarI4
  loc_BA0B3D: PopAdLdVar
  loc_BA0B3E: LitVarI4
  loc_BA0B46: PopAdLdVar
  loc_BA0B47: LitVarStr var_EC, "Saldo"
  loc_BA0B4C: PopAdLdVar
  loc_BA0B4D: FLdPr var_AC
  loc_BA0B50: LateIdCallSt
  loc_BA0B58: LitVarI4
  loc_BA0B60: PopAdLdVar
  loc_BA0B61: LitVarI4
  loc_BA0B69: PopAdLdVar
  loc_BA0B6A: LitVarStr var_EC, "Sel"
  loc_BA0B6F: PopAdLdVar
  loc_BA0B70: FLdPr var_AC
  loc_BA0B73: LateIdCallSt
  loc_BA0B7B: LitVarI4
  loc_BA0B83: PopAdLdVar
  loc_BA0B84: LitVarI4
  loc_BA0B8C: PopAdLdVar
  loc_BA0B8D: LitVarStr var_EC, "Numero"
  loc_BA0B92: PopAdLdVar
  loc_BA0B93: FLdPr var_AC
  loc_BA0B96: LateIdCallSt
  loc_BA0B9E: LitVarI4
  loc_BA0BA6: PopAdLdVar
  loc_BA0BA7: LitVarI4
  loc_BA0BAF: PopAdLdVar
  loc_BA0BB0: LitVarStr var_EC, "Mov"
  loc_BA0BB5: PopAdLdVar
  loc_BA0BB6: FLdPr var_AC
  loc_BA0BB9: LateIdCallSt
  loc_BA0BC1: LitNothing
  loc_BA0BC3: FStAd var_AC 
  loc_BA0BC7: LitI2_Byte &HFF
  loc_BA0BC9: FLdPr Me
  loc_BA0BCC: VCallAd Control_ID_DebitoManualOpt
  loc_BA0BCF: FStAdFunc var_98
  loc_BA0BD2: FLdPr var_98
  loc_BA0BD5: Me.Value = from_stack_1b
  loc_BA0BDA: FFree1Ad var_98
  loc_BA0BDD: LitI2_Byte 0
  loc_BA0BDF: FLdPr Me
  loc_BA0BE2: VCallAd Control_ID_DevolucionOpt
  loc_BA0BE5: FStAdFunc var_98
  loc_BA0BE8: FLdPr var_98
  loc_BA0BEB: Me.Value = from_stack_1b
  loc_BA0BF0: FFree1Ad var_98
  loc_BA0BF3: LitI4 0
  loc_BA0BF8: LitI4 0
  loc_BA0BFD: FLdRfVar var_100
  loc_BA0C00: Redim
  loc_BA0C0A: FLdPr Me
  loc_BA0C0D: VCallAd Control_ID_ConfirmarCmd
  loc_BA0C10: CVarAd
  loc_BA0C14: ParmAry1St
  loc_BA0C1A: FLdRfVar var_100
  loc_BA0C1D: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA0C22: FLdRfVar var_100
  loc_BA0C25: Erase
  loc_BA0C26: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB030
  'Data Table: 4FA474
  loc_9BB01C: ILdI2 KeyCode
  loc_9BB01F: CI4UI1
  loc_9BB020: LitI4 &H78
  loc_9BB025: EqI4
  loc_9BB026: BranchF loc_9BB02E
  loc_9BB029: Call SalirCmd_Click()
  loc_9BB02E: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9C4B20
  'Data Table: 4FA474
  loc_9C4B0C: FLdPr Me
  loc_9C4B0F: VCallAd Control_ID_FeveCtctMsk
  loc_9C4B12: CVarAd
  loc_9C4B16: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C4B1B: FFree1Var var_94 = ""
  loc_9C4B1E: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_8 'ABCEDC
  'Data Table: 4FA474
  loc_ABCDE4: FLdPr Me
  loc_ABCDE7: VCallAd Control_ID_FeveCtctMsk
  loc_ABCDEA: FStAdFunc var_88
  loc_ABCDED: FLdPr var_88
  loc_ABCDF0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABCDF7: CBoolVar
  loc_ABCDF9: LitI2_Byte &HFF
  loc_ABCDFB: EqI2
  loc_ABCDFC: FFree1Ad var_88
  loc_ABCDFF: FFree1Var var_98 = ""
  loc_ABCE02: BranchF loc_ABCEDA
  loc_ABCE05: LitVarStr var_A8, vbNullString
  loc_ABCE0A: PopAdLdVar
  loc_ABCE0B: FLdPr Me
  loc_ABCE0E: VCallAd Control_ID_FeveCtctMsk
  loc_ABCE11: FStAdFunc var_88
  loc_ABCE14: FLdPr var_88
  loc_ABCE17: LateIdSt
  loc_ABCE1C: FFree1Ad var_88
  loc_ABCE1F: FLdPr Me
  loc_ABCE22: VCallAd Control_ID_FeveCtctMsk
  loc_ABCE25: FStAdFunc var_88
  loc_ABCE28: FLdPr var_88
  loc_ABCE2B: LateIdLdVar var_98 DispID_22 0
  loc_ABCE32: CStrVarTmp
  loc_ABCE33: FStStrNoPop var_BC
  loc_ABCE36: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABCE3B: FStStrNoPop var_C0
  loc_ABCE3E: FLdPr Me
  loc_ABCE41: MemStStrCopy
  loc_ABCE45: FFreeStr var_BC = ""
  loc_ABCE4C: FFree1Ad var_88
  loc_ABCE4F: FFree1Var var_98 = ""
  loc_ABCE52: LitVarStr var_A8, "##/##/####"
  loc_ABCE57: PopAdLdVar
  loc_ABCE58: FLdPr Me
  loc_ABCE5B: VCallAd Control_ID_FeveCtctMsk
  loc_ABCE5E: FStAdFunc var_88
  loc_ABCE61: FLdPr var_88
  loc_ABCE64: LateIdSt
  loc_ABCE69: FFree1Ad var_88
  loc_ABCE6C: LitVarI2 var_A8, 10
  loc_ABCE71: PopAdLdVar
  loc_ABCE72: FLdPr Me
  loc_ABCE75: VCallAd Control_ID_FeveCtctMsk
  loc_ABCE78: FStAdFunc var_88
  loc_ABCE7B: FLdPr var_88
  loc_ABCE7E: LateIdSt
  loc_ABCE83: FFree1Ad var_88
  loc_ABCE86: FLdPr Me
  loc_ABCE89: MemLdStr global_76
  loc_ABCE8C: LitStr vbNullString
  loc_ABCE8F: NeStr
  loc_ABCE91: BranchF loc_ABCEDA
  loc_ABCE94: FLdPr Me
  loc_ABCE97: MemLdStr global_76
  loc_ABCE9A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABCE9F: LitI2_Byte 0
  loc_ABCEA1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABCEA6: CStrDate
  loc_ABCEA8: CVarStr var_98
  loc_ABCEAB: PopAdLdVar
  loc_ABCEAC: FLdPr Me
  loc_ABCEAF: VCallAd Control_ID_FeveCtctMsk
  loc_ABCEB2: FStAdFunc var_88
  loc_ABCEB5: FLdPr var_88
  loc_ABCEB8: LateIdSt
  loc_ABCEBD: FFree1Ad var_88
  loc_ABCEC0: FFree1Var var_98 = ""
  loc_ABCEC3: FLdPr Me
  loc_ABCEC6: VCallAd Control_ID_FeveCtctMsk
  loc_ABCEC9: CVarAd
  loc_ABCECD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABCED2: FFree1Var var_98 = ""
  loc_ABCED5: LitI2_Byte &HFF
  loc_ABCED7: IStI2 KeyCode
  loc_ABCEDA: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_GotFocus() '9C4898
  'Data Table: 4FA474
  loc_9C4884: FLdPr Me
  loc_9C4887: VCallAd Control_ID_ImpoCtctTxt
  loc_9C488A: CVarAd
  loc_9C488E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C4893: FFree1Var var_94 = ""
  loc_9C4896: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_KeyPress(KeyAscii As Integer) 'A08278
  'Data Table: 4FA474
  loc_A08244: LitStr "1234567890,."
  loc_A08247: FStStrCopy var_88
  loc_A0824A: FLdRfVar var_88
  loc_A0824D: ILdRf KeyAscii
  loc_A08250: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A08255: IStI2 KeyAscii
  loc_A08258: FFree1Str var_88
  loc_A0825B: ILdI2 KeyAscii
  loc_A0825E: LitStr "."
  loc_A08261: ImpAdCallI2 Asc()
  loc_A08266: EqI2
  loc_A08267: BranchF loc_A08275
  loc_A0826A: LitStr ","
  loc_A0826D: ImpAdCallI2 Asc()
  loc_A08272: IStI2 KeyAscii
  loc_A08275: ExitProcHresult
  loc_A08276: ImpAdLdFPR4 MemVar_4F8EE4
End Sub

Private Sub ImpoCtctTxt_LostFocus() 'A73D38
  'Data Table: 4FA474
  loc_A73CD4: FLdRfVar var_8C
  loc_A73CD7: FLdPr Me
  loc_A73CDA: VCallAd Control_ID_ImpoCtctTxt
  loc_A73CDD: FStAdFunc var_88
  loc_A73CE0: FLdPr var_88
  loc_A73CE3:  = Me.Text
  loc_A73CE8: LitI4 1
  loc_A73CED: LitI4 1
  loc_A73CF2: LitVarStr var_AC, "0.00"
  loc_A73CF7: FStVarCopyObj var_BC
  loc_A73CFA: FLdRfVar var_BC
  loc_A73CFD: FLdZeroAd var_8C
  loc_A73D00: CVarStr var_9C
  loc_A73D03: FLdRfVar var_CC
  loc_A73D06: ImpAdCallFPR4  = Format(, )
  loc_A73D0B: FLdRfVar var_CC
  loc_A73D0E: CStrVarVal var_D0
  loc_A73D12: FLdPr Me
  loc_A73D15: VCallAd Control_ID_ImpoCtctTxt
  loc_A73D18: FStAdFunc var_D4
  loc_A73D1B: FLdPr var_D4
  loc_A73D1E: Me.Text = from_stack_1
  loc_A73D23: FFree1Str var_D0
  loc_A73D26: FFreeAd var_88 = ""
  loc_A73D2D: FFreeVar var_9C = "": var_BC = ""
  loc_A73D36: ExitProcHresult
End Sub

Private Sub ImpoCtctTxt_Validate(Cancel As Boolean) 'AF5A58
  'Data Table: 4FA474
  loc_AF58A4: LitI2_Byte 1
  loc_AF58A6: FLdPr Me
  loc_AF58A9: MemLdRfVar from_stack_1.global_60
  loc_AF58AC: FLdPr Me
  loc_AF58AF: VCallAd Control_ID_ctacteFlex
  loc_AF58B2: FStAdFunc var_88
  loc_AF58B5: FLdPr var_88
  loc_AF58B8: LateIdLdVar var_98 DispID_4 0
  loc_AF58BF: CI4Var
  loc_AF58C1: LitI4 1
  loc_AF58C6: SubI4
  loc_AF58C7: CI2I4
  loc_AF58C8: FFree1Ad var_88
  loc_AF58CB: FFree1Var var_98 = ""
  loc_AF58CE: ForI2 var_9C
  loc_AF58D4: FLdPr Me
  loc_AF58D7: MemLdI2 global_60
  loc_AF58DA: CI4UI1
  loc_AF58DB: CVarI4
  loc_AF58DF: PopAdLdVar
  loc_AF58E0: LitVarI4
  loc_AF58E8: PopAdLdVar
  loc_AF58E9: FLdPr Me
  loc_AF58EC: VCallAd Control_ID_ctacteFlex
  loc_AF58EF: FStAdFunc var_88
  loc_AF58F2: FLdPr var_88
  loc_AF58F5: LateIdCallLdVar
  loc_AF58FF: CStrVarTmp
  loc_AF5900: FStStrNoPop var_E0
  loc_AF5903: LitStr "SS"
  loc_AF5906: EqStr
  loc_AF5908: FFree1Str var_E0
  loc_AF590B: FFree1Ad var_88
  loc_AF590E: FFree1Var var_98 = ""
  loc_AF5911: BranchF loc_AF59B8
  loc_AF5914: FLdPr Me
  loc_AF5917: MemLdI2 global_60
  loc_AF591A: CI4UI1
  loc_AF591B: CVarI4
  loc_AF591F: PopAdLdVar
  loc_AF5920: LitVarI4
  loc_AF5928: PopAdLdVar
  loc_AF5929: FLdPr Me
  loc_AF592C: VCallAd Control_ID_ctacteFlex
  loc_AF592F: FStAdFunc var_E4
  loc_AF5932: FLdPr var_E4
  loc_AF5935: LateIdCallLdVar
  loc_AF593F: PopAd
  loc_AF5941: FLdRfVar var_E0
  loc_AF5944: FLdPr Me
  loc_AF5947: VCallAd Control_ID_ImpoCtctTxt
  loc_AF594A: FStAdFunc var_88
  loc_AF594D: FLdPr var_88
  loc_AF5950:  = Me.Text
  loc_AF5955: ILdRf var_E0
  loc_AF5958: CR8Str
  loc_AF595A: FLdRfVar var_98
  loc_AF595D: CStrVarTmp
  loc_AF595E: FStStrNoPop var_E8
  loc_AF5961: CR8Str
  loc_AF5963: LitI2_Byte &HFF
  loc_AF5965: CR8I2
  loc_AF5966: MulR8
  loc_AF5967: FnCDblR8
  loc_AF5969: GtR4
  loc_AF596A: FFreeStr var_E0 = ""
  loc_AF5971: FFreeAd var_88 = ""
  loc_AF5978: FFree1Var var_98 = ""
  loc_AF597B: BranchF loc_AF59B8
  loc_AF597E: LitStr "El importe del credito a realizar no puede ser mayor al importe seleccionado, verifique..."
  loc_AF5981: FLdPr Me
  loc_AF5984: MemStStrCopy
  loc_AF5988: FLdPr Me
  loc_AF598B: MemLdStr global_76
  loc_AF598E: LitStr vbNullString
  loc_AF5991: NeStr
  loc_AF5993: BranchF loc_AF59B8
  loc_AF5996: FLdPr Me
  loc_AF5999: MemLdStr global_76
  loc_AF599C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF59A1: FLdPr Me
  loc_AF59A4: VCallAd Control_ID_ImpoCtctTxt
  loc_AF59A7: CVarAd
  loc_AF59AB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AF59B0: FFree1Var var_98 = ""
  loc_AF59B3: LitI2_Byte &HFF
  loc_AF59B5: IStI2 Cancel
  loc_AF59B8: FLdPr Me
  loc_AF59BB: MemLdRfVar from_stack_1.global_60
  loc_AF59BE: NextI2 var_9C, loc_AF58D4
  loc_AF59C3: FLdRfVar var_E0
  loc_AF59C6: FLdPr Me
  loc_AF59C9: VCallAd Control_ID_ImpoCtctTxt
  loc_AF59CC: FStAdFunc var_88
  loc_AF59CF: FLdPr var_88
  loc_AF59D2:  = Me.Text
  loc_AF59D7: FLdZeroAd var_E0
  loc_AF59DA: CVarStr var_98
  loc_AF59DD: ImpAdCallI2 IsNumeric()
  loc_AF59E2: FFree1Ad var_88
  loc_AF59E5: FFree1Var var_98 = ""
  loc_AF59E8: BranchF loc_AF5A54
  loc_AF59EB: FLdRfVar var_E0
  loc_AF59EE: FLdPr Me
  loc_AF59F1: VCallAd Control_ID_ImpoCtctTxt
  loc_AF59F4: FStAdFunc var_88
  loc_AF59F7: FLdPr var_88
  loc_AF59FA:  = Me.Text
  loc_AF59FF: LitI4 1
  loc_AF5A04: LitI4 1
  loc_AF5A09: LitVarStr var_BC, "0.00"
  loc_AF5A0E: FStVarCopyObj var_F8
  loc_AF5A11: FLdRfVar var_F8
  loc_AF5A14: ILdRf var_E0
  loc_AF5A17: CR8Str
  loc_AF5A19: CVarR8
  loc_AF5A1D: FLdRfVar var_108
  loc_AF5A20: ImpAdCallFPR4  = Format(, )
  loc_AF5A25: FLdRfVar var_108
  loc_AF5A28: CStrVarVal var_E8
  loc_AF5A2C: FLdPr Me
  loc_AF5A2F: VCallAd Control_ID_ImpoCtctTxt
  loc_AF5A32: FStAdFunc var_E4
  loc_AF5A35: FLdPr var_E4
  loc_AF5A38: Me.Text = from_stack_1
  loc_AF5A3D: FFreeStr var_E0 = ""
  loc_AF5A44: FFreeAd var_88 = ""
  loc_AF5A4B: FFreeVar var_98 = "": var_F8 = ""
  loc_AF5A54: ExitProcHresult
  loc_AF5A55: PopAdLdVar
  loc_AF5A56: FLdPr var_3F8
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A4F014
  'Data Table: 4FA474
  loc_A4EFC8: Call Proc_138_23_B19968()
  loc_A4EFCD: LitI4 0
  loc_A4EFD2: LitI4 0
  loc_A4EFD7: FLdRfVar var_88
  loc_A4EFDA: Redim
  loc_A4EFE4: FLdPr Me
  loc_A4EFE7: VCallAd Control_ID_ConfirmarCmd
  loc_A4EFEA: CVarAd
  loc_A4EFEE: ParmAry1St
  loc_A4EFF4: FLdRfVar var_88
  loc_A4EFF7: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A4EFFC: FLdRfVar var_88
  loc_A4EFFF: Erase
  loc_A4F000: FLdPrThis
  loc_A4F001: VCallAd Control_ID_NumeCtaTxt
  loc_A4F004: CVarAd
  loc_A4F008: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4F00D: FFree1Var var_98 = ""
  loc_A4F010: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B45558
  'Data Table: 4FA474
  loc_B4522C: FLdRfVar var_8A
  loc_B4522F: FLdPr Me
  loc_B45232: VCallAd Control_ID_NumeCtaTxt
  loc_B45235: FStAdFunc var_88
  loc_B45238: FLdPr var_88
  loc_B4523B:  = Me.Enabled
  loc_B45240: FLdI2 var_8A
  loc_B45243: FFree1Ad var_88
  loc_B45246: BranchF loc_B45554
  loc_B45249: FLdRfVar var_90
  loc_B4524C: FLdPr Me
  loc_B4524F: VCallAd Control_ID_NumeCtaTxt
  loc_B45252: FStAdFunc var_88
  loc_B45255: FLdPr var_88
  loc_B45258:  = Me.Text
  loc_B4525D: FLdZeroAd var_90
  loc_B45260: CVarStr var_A0
  loc_B45263: FLdRfVar var_B0
  loc_B45266: ImpAdCallFPR4  = Trim()
  loc_B4526B: FLdRfVar var_B0
  loc_B4526E: CStrVarVal var_B4
  loc_B45272: FLdPr Me
  loc_B45275: VCallAd Control_ID_NumeCtaTxt
  loc_B45278: FStAdFunc var_B8
  loc_B4527B: FLdPr var_B8
  loc_B4527E: Me.Text = from_stack_1
  loc_B45283: FFree1Str var_B4
  loc_B45286: FFreeAd var_88 = ""
  loc_B4528D: FFreeVar var_A0 = ""
  loc_B45294: FLdRfVar var_8A
  loc_B45297: FLdPr Me
  loc_B4529A: VCallAd Control_ID_OficinaCbo
  loc_B4529D: FStAdFunc var_88
  loc_B452A0: FLdPr var_88
  loc_B452A3:  = Me.ListIndex
  loc_B452A8: FLdI2 var_8A
  loc_B452AB: FStI2 var_BA
  loc_B452AE: FFree1Ad var_88
  loc_B452B1: FLdI2 var_BA
  loc_B452B4: LitI2_Byte 0
  loc_B452B6: EqI2
  loc_B452B7: BranchF loc_B452C5
  loc_B452BA: LitI2_Byte 1
  loc_B452BC: CUI1I2
  loc_B452BE: ImpAdStUI1 MemVar_D93038
  loc_B452C2: Branch loc_B4533A
  loc_B452C5: FLdI2 var_BA
  loc_B452C8: LitI2_Byte 1
  loc_B452CA: EqI2
  loc_B452CB: BranchF loc_B452D9
  loc_B452CE: LitI2_Byte 2
  loc_B452D0: CUI1I2
  loc_B452D2: ImpAdStUI1 MemVar_D93038
  loc_B452D6: Branch loc_B4533A
  loc_B452D9: FLdI2 var_BA
  loc_B452DC: LitI2_Byte 2
  loc_B452DE: EqI2
  loc_B452DF: BranchF loc_B452ED
  loc_B452E2: LitI2_Byte 3
  loc_B452E4: CUI1I2
  loc_B452E6: ImpAdStUI1 MemVar_D93038
  loc_B452EA: Branch loc_B4533A
  loc_B452ED: FLdI2 var_BA
  loc_B452F0: LitI2_Byte 3
  loc_B452F2: EqI2
  loc_B452F3: BranchF loc_B45301
  loc_B452F6: LitI2_Byte 4
  loc_B452F8: CUI1I2
  loc_B452FA: ImpAdStUI1 MemVar_D93038
  loc_B452FE: Branch loc_B4533A
  loc_B45301: FLdI2 var_BA
  loc_B45304: LitI2_Byte 4
  loc_B45306: EqI2
  loc_B45307: BranchF loc_B45315
  loc_B4530A: LitI2_Byte 5
  loc_B4530C: CUI1I2
  loc_B4530E: ImpAdStUI1 MemVar_D93038
  loc_B45312: Branch loc_B4533A
  loc_B45315: FLdI2 var_BA
  loc_B45318: LitI2_Byte 5
  loc_B4531A: EqI2
  loc_B4531B: BranchF loc_B45329
  loc_B4531E: LitI2_Byte 6
  loc_B45320: CUI1I2
  loc_B45322: ImpAdStUI1 MemVar_D93038
  loc_B45326: Branch loc_B4533A
  loc_B45329: FLdI2 var_BA
  loc_B4532C: LitI2_Byte 6
  loc_B4532E: EqI2
  loc_B4532F: BranchF loc_B4533A
  loc_B45332: LitI2_Byte 7
  loc_B45334: CUI1I2
  loc_B45336: ImpAdStUI1 MemVar_D93038
  loc_B4533A: FLdRfVar var_90
  loc_B4533D: FLdPr Me
  loc_B45340: VCallAd Control_ID_NumeCtaTxt
  loc_B45343: FStAdFunc var_88
  loc_B45346: FLdPr var_88
  loc_B45349:  = Me.Text
  loc_B4534E: FLdPr Me
  loc_B45351: MemLdRfVar from_stack_1.global_56
  loc_B45354: NewIfNullRf
  loc_B45358: LitStr "Titular"
  loc_B4535B: ILdRf var_90
  loc_B4535E: ImpAdLdUI1
  loc_B45362: CStrI2
  loc_B45364: FStStrNoPop var_B4
  loc_B45367: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B4536C: FFreeStr var_B4 = ""
  loc_B45373: FFree1Ad var_88
  loc_B45376: BranchF loc_B4549B
  loc_B45379: FLdRfVar var_90
  loc_B4537C: FLdPr Me
  loc_B4537F: MemLdRfVar from_stack_1.global_56
  loc_B45382: NewIfNullPr tblPersona
  loc_B45385: from_stack_1v = tblPersona.CucuPersGet()
  loc_B4538A: ILdRf var_90
  loc_B4538D: FLdPr Me
  loc_B45390: VCallAd Control_ID_CucuPersLbl
  loc_B45393: FStAdFunc var_88
  loc_B45396: FLdPr var_88
  loc_B45399: Me.Caption = from_stack_1
  loc_B4539E: FFree1Str var_90
  loc_B453A1: FFree1Ad var_88
  loc_B453A4: FLdRfVar var_90
  loc_B453A7: FLdPr Me
  loc_B453AA: MemLdRfVar from_stack_1.global_56
  loc_B453AD: NewIfNullPr tblPersona
  loc_B453B0: from_stack_1v = tblPersona.DetaPersGet()
  loc_B453B5: ILdRf var_90
  loc_B453B8: FLdPr Me
  loc_B453BB: VCallAd Control_ID_DetaPersLbl
  loc_B453BE: FStAdFunc var_88
  loc_B453C1: FLdPr var_88
  loc_B453C4: Me.Caption = from_stack_1
  loc_B453C9: FFree1Str var_90
  loc_B453CC: FFree1Ad var_88
  loc_B453CF: FLdRfVar var_B4
  loc_B453D2: FLdPr Me
  loc_B453D5: MemLdRfVar from_stack_1.global_56
  loc_B453D8: NewIfNullPr tblPersona
  loc_B453DB: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B453E0: FLdRfVar var_C0
  loc_B453E3: FLdPr Me
  loc_B453E6: MemLdRfVar from_stack_1.global_56
  loc_B453E9: NewIfNullPr tblPersona
  loc_B453EC: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B453F1: FLdRfVar var_90
  loc_B453F4: FLdPr Me
  loc_B453F7: MemLdRfVar from_stack_1.global_56
  loc_B453FA: NewIfNullPr tblPersona
  loc_B453FD: from_stack_1v = tblPersona.DetaCallGet()
  loc_B45402: ILdRf var_90
  loc_B45405: LitStr " "
  loc_B45408: ConcatStr
  loc_B45409: CVarStr var_100
  loc_B4540C: LitVarStr var_E0, vbNullString
  loc_B45411: FStVarCopyObj var_B0
  loc_B45414: FLdRfVar var_B0
  loc_B45417: LitStr "Nro: "
  loc_B4541A: ILdRf var_C0
  loc_B4541D: ConcatStr
  loc_B4541E: CVarStr var_A0
  loc_B45421: ILdRf var_B4
  loc_B45424: LitStr "0"
  loc_B45427: NeStr
  loc_B45429: CVarBoolI2 var_D0
  loc_B4542D: FLdRfVar var_F0
  loc_B45430: ImpAdCallFPR4  = IIf(, , )
  loc_B45435: FLdRfVar var_F0
  loc_B45438: ConcatVar var_110
  loc_B4543C: LitVarStr var_120, " "
  loc_B45441: ConcatVar var_130
  loc_B45445: FLdRfVar var_134
  loc_B45448: FLdPr Me
  loc_B4544B: MemLdRfVar from_stack_1.global_56
  loc_B4544E: NewIfNullPr tblPersona
  loc_B45451: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B45456: FLdZeroAd var_134
  loc_B45459: CVarStr var_144
  loc_B4545C: ConcatVar var_154
  loc_B45460: CStrVarVal var_158
  loc_B45464: FLdPr Me
  loc_B45467: VCallAd Control_ID_DomiPersLbl
  loc_B4546A: FStAdFunc var_88
  loc_B4546D: FLdPr var_88
  loc_B45470: Me.Caption = from_stack_1
  loc_B45475: FFreeStr var_90 = "": var_B4 = "": var_C0 = ""
  loc_B45480: FFree1Ad var_88
  loc_B45483: FFreeVar var_D0 = "": var_A0 = "": var_B0 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_144 = ""
  loc_B45498: Branch loc_B45521
  loc_B4549B: FLdRfVar var_90
  loc_B4549E: FLdPr Me
  loc_B454A1: MemLdRfVar from_stack_1.global_56
  loc_B454A4: NewIfNullPr tblPersona
  loc_B454A7: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B454AC: ILdRf var_90
  loc_B454AF: FLdPr Me
  loc_B454B2: MemStStrCopy
  loc_B454B6: FFree1Str var_90
  loc_B454B9: FLdPr Me
  loc_B454BC: MemLdStr global_76
  loc_B454BF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B454C4: LitStr vbNullString
  loc_B454C7: FLdPr Me
  loc_B454CA: VCallAd Control_ID_CucuPersLbl
  loc_B454CD: FStAdFunc var_88
  loc_B454D0: FLdPr var_88
  loc_B454D3: Me.Caption = from_stack_1
  loc_B454D8: FFree1Ad var_88
  loc_B454DB: LitStr vbNullString
  loc_B454DE: FLdPr Me
  loc_B454E1: VCallAd Control_ID_DetaPersLbl
  loc_B454E4: FStAdFunc var_88
  loc_B454E7: FLdPr var_88
  loc_B454EA: Me.Caption = from_stack_1
  loc_B454EF: FFree1Ad var_88
  loc_B454F2: LitStr vbNullString
  loc_B454F5: FLdPr Me
  loc_B454F8: VCallAd Control_ID_DomiPersLbl
  loc_B454FB: FStAdFunc var_88
  loc_B454FE: FLdPr var_88
  loc_B45501: Me.Caption = from_stack_1
  loc_B45506: FFree1Ad var_88
  loc_B45509: FLdPr Me
  loc_B4550C: VCallAd Control_ID_NumeCtaTxt
  loc_B4550F: CVarAd
  loc_B45513: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B45518: FFree1Var var_A0 = ""
  loc_B4551B: LitI2_Byte &HFF
  loc_B4551D: IStI2 Cancel
  loc_B45520: ExitProcHresult
  loc_B45521: LitI4 0
  loc_B45526: LitI4 0
  loc_B4552B: FLdRfVar var_15C
  loc_B4552E: Redim
  loc_B45538: FLdPr Me
  loc_B4553B: VCallAd Control_ID_ConfirmarCmd
  loc_B4553E: CVarAd
  loc_B45542: ParmAry1St
  loc_B45548: FLdRfVar var_15C
  loc_B4554B: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B45550: FLdRfVar var_15C
  loc_B45553: Erase
  loc_B45554: ExitProcHresult
  loc_B45555: CI4Str
End Sub

Private Sub ctacteFlex_Click() 'BC2698
  'Data Table: 4FA474
  loc_BC1FD4: FLdPr Me
  loc_BC1FD7: VCallAd Control_ID_ctacteFlex
  loc_BC1FDA: FStAdFunc var_88
  loc_BC1FDD: FLdPr var_88
  loc_BC1FE0: LateIdLdVar var_98 DispID_4 0
  loc_BC1FE7: CI4Var
  loc_BC1FE9: LitI4 1
  loc_BC1FEE: GtI4
  loc_BC1FEF: FFree1Ad var_88
  loc_BC1FF2: FFree1Var var_98 = ""
  loc_BC1FF5: BranchF loc_BC2695
  loc_BC1FF8: FLdPr Me
  loc_BC1FFB: VCallAd Control_ID_ctacteFlex
  loc_BC1FFE: FStAdFunc var_88
  loc_BC2001: FLdPr var_88
  loc_BC2004: LateIdLdVar var_98 DispID_10 0
  loc_BC200B: CI4Var
  loc_BC200D: CVarI4
  loc_BC2011: PopAdLdVar
  loc_BC2012: LitVarI4
  loc_BC201A: PopAdLdVar
  loc_BC201B: FLdPr Me
  loc_BC201E: VCallAd Control_ID_ctacteFlex
  loc_BC2021: FStAdFunc var_DC
  loc_BC2024: FLdPr var_DC
  loc_BC2027: LateIdCallLdVar
  loc_BC2031: CStrVarTmp
  loc_BC2032: FStStrNoPop var_F0
  loc_BC2035: CI4Str
  loc_BC2036: LitI4 0
  loc_BC203B: EqI4
  loc_BC203C: FFree1Str var_F0
  loc_BC203F: FFreeAd var_88 = ""
  loc_BC2046: FFreeVar var_98 = ""
  loc_BC204D: BranchF loc_BC22DE
  loc_BC2050: LitI4 1
  loc_BC2055: LitI4 1
  loc_BC205A: LitVarStr var_B8, "0.00"
  loc_BC205F: FStVarCopyObj var_EC
  loc_BC2062: FLdRfVar var_EC
  loc_BC2065: LitVarI2 var_98, 0
  loc_BC206A: FLdRfVar var_100
  loc_BC206D: ImpAdCallFPR4  = Format(, )
  loc_BC2072: FLdRfVar var_100
  loc_BC2075: CStrVarVal var_F0
  loc_BC2079: FLdPr Me
  loc_BC207C: VCallAd Control_ID_ImpoCtctTxt
  loc_BC207F: FStAdFunc var_88
  loc_BC2082: FLdPr var_88
  loc_BC2085: Me.Text = from_stack_1
  loc_BC208A: FFree1Str var_F0
  loc_BC208D: FFree1Ad var_88
  loc_BC2090: FFreeVar var_98 = "": var_EC = ""
  loc_BC2099: LitI2_Byte 0
  loc_BC209B: FLdPr Me
  loc_BC209E: VCallAd Control_ID_ImpoCtctTxt
  loc_BC20A1: FStAdFunc var_88
  loc_BC20A4: FLdPr var_88
  loc_BC20A7: Me.Enabled = from_stack_1b
  loc_BC20AC: FFree1Ad var_88
  loc_BC20AF: LitI2_Byte 0
  loc_BC20B1: FLdPr Me
  loc_BC20B4: MemLdRfVar from_stack_1.global_60
  loc_BC20B7: FLdPr Me
  loc_BC20BA: VCallAd Control_ID_ctacteFlex
  loc_BC20BD: FStAdFunc var_88
  loc_BC20C0: FLdPr var_88
  loc_BC20C3: LateIdLdVar var_98 DispID_5 0
  loc_BC20CA: CI4Var
  loc_BC20CC: LitI4 1
  loc_BC20D1: SubI4
  loc_BC20D2: CI2I4
  loc_BC20D3: FFree1Ad var_88
  loc_BC20D6: FFree1Var var_98 = ""
  loc_BC20D9: ForI2 var_104
  loc_BC20DF: FLdPr Me
  loc_BC20E2: MemLdI2 global_60
  loc_BC20E5: CI4UI1
  loc_BC20E6: CVarI4
  loc_BC20EA: PopAdLdVar
  loc_BC20EB: FLdPr Me
  loc_BC20EE: VCallAd Control_ID_ctacteFlex
  loc_BC20F1: FStAdFunc var_88
  loc_BC20F4: FLdPr var_88
  loc_BC20F7: LateIdSt
  loc_BC20FC: FFree1Ad var_88
  loc_BC20FF: FLdPr Me
  loc_BC2102: VCallAd Control_ID_ctacteFlex
  loc_BC2105: FStAdFunc var_88
  loc_BC2108: FLdPr var_88
  loc_BC210B: LateIdLdVar var_98 DispID_38 0
  loc_BC2112: CI4Var
  loc_BC2114: LitI4 &HFFFF80
  loc_BC2119: EqI4
  loc_BC211A: FFree1Ad var_88
  loc_BC211D: FFree1Var var_98 = ""
  loc_BC2120: BranchF loc_BC21FB
  loc_BC2123: LitVarI4
  loc_BC212B: PopAdLdVar
  loc_BC212C: FLdPr Me
  loc_BC212F: VCallAd Control_ID_ctacteFlex
  loc_BC2132: FStAdFunc var_88
  loc_BC2135: FLdPr var_88
  loc_BC2138: LateIdSt
  loc_BC213D: FFree1Ad var_88
  loc_BC2140: FLdPr Me
  loc_BC2143: VCallAd Control_ID_ctacteFlex
  loc_BC2146: FStAdFunc var_88
  loc_BC2149: FLdPr var_88
  loc_BC214C: LateIdLdVar var_98 DispID_10 0
  loc_BC2153: CI4Var
  loc_BC2155: CVarI4
  loc_BC2159: PopAdLdVar
  loc_BC215A: LitVarI4
  loc_BC2162: PopAdLdVar
  loc_BC2163: LitVarStr var_114, "No"
  loc_BC2168: PopAdLdVar
  loc_BC2169: FLdPr Me
  loc_BC216C: VCallAd Control_ID_ctacteFlex
  loc_BC216F: FStAdFunc var_DC
  loc_BC2172: FLdPr var_DC
  loc_BC2175: LateIdCallSt
  loc_BC217D: FFreeAd var_88 = ""
  loc_BC2184: FFree1Var var_98 = ""
  loc_BC2187: FLdPr Me
  loc_BC218A: MemLdI2 global_60
  loc_BC218D: LitI2_Byte &HD
  loc_BC218F: EqI2
  loc_BC2190: BranchF loc_BC21F8
  loc_BC2193: FLdPr Me
  loc_BC2196: VCallAd Control_ID_ctacteFlex
  loc_BC2199: FStAdFunc var_88
  loc_BC219C: FLdPr var_88
  loc_BC219F: LateIdLdVar var_98 DispID_10 0
  loc_BC21A6: CI4Var
  loc_BC21A8: CVarI4
  loc_BC21AC: PopAdLdVar
  loc_BC21AD: FLdPr Me
  loc_BC21B0: MemLdI2 global_60
  loc_BC21B3: CI4UI1
  loc_BC21B4: CVarI4
  loc_BC21B8: PopAdLdVar
  loc_BC21B9: FLdPr Me
  loc_BC21BC: VCallAd Control_ID_ctacteFlex
  loc_BC21BF: FStAdFunc var_DC
  loc_BC21C2: FLdPr var_DC
  loc_BC21C5: LateIdCallLdVar
  loc_BC21CF: PopAd
  loc_BC21D1: FLdPr Me
  loc_BC21D4: MemLdFPR8 global_64
  loc_BC21D7: FLdRfVar var_EC
  loc_BC21DA: CStrVarTmp
  loc_BC21DB: FStStrNoPop var_F0
  loc_BC21DE: CR8Str
  loc_BC21E0: SubR4
  loc_BC21E1: FLdPr Me
  loc_BC21E4: MemStFPR8 global_64
  loc_BC21E7: FFree1Str var_F0
  loc_BC21EA: FFreeAd var_88 = ""
  loc_BC21F1: FFreeVar var_98 = ""
  loc_BC21F8: Branch loc_BC22D0
  loc_BC21FB: LitVarI4
  loc_BC2203: PopAdLdVar
  loc_BC2204: FLdPr Me
  loc_BC2207: VCallAd Control_ID_ctacteFlex
  loc_BC220A: FStAdFunc var_88
  loc_BC220D: FLdPr var_88
  loc_BC2210: LateIdSt
  loc_BC2215: FFree1Ad var_88
  loc_BC2218: FLdPr Me
  loc_BC221B: VCallAd Control_ID_ctacteFlex
  loc_BC221E: FStAdFunc var_88
  loc_BC2221: FLdPr var_88
  loc_BC2224: LateIdLdVar var_98 DispID_10 0
  loc_BC222B: CI4Var
  loc_BC222D: CVarI4
  loc_BC2231: PopAdLdVar
  loc_BC2232: LitVarI4
  loc_BC223A: PopAdLdVar
  loc_BC223B: LitVarStr var_114, "Si"
  loc_BC2240: PopAdLdVar
  loc_BC2241: FLdPr Me
  loc_BC2244: VCallAd Control_ID_ctacteFlex
  loc_BC2247: FStAdFunc var_DC
  loc_BC224A: FLdPr var_DC
  loc_BC224D: LateIdCallSt
  loc_BC2255: FFreeAd var_88 = ""
  loc_BC225C: FFree1Var var_98 = ""
  loc_BC225F: FLdPr Me
  loc_BC2262: MemLdI2 global_60
  loc_BC2265: LitI2_Byte &HD
  loc_BC2267: EqI2
  loc_BC2268: BranchF loc_BC22D0
  loc_BC226B: FLdPr Me
  loc_BC226E: VCallAd Control_ID_ctacteFlex
  loc_BC2271: FStAdFunc var_88
  loc_BC2274: FLdPr var_88
  loc_BC2277: LateIdLdVar var_98 DispID_10 0
  loc_BC227E: CI4Var
  loc_BC2280: CVarI4
  loc_BC2284: PopAdLdVar
  loc_BC2285: FLdPr Me
  loc_BC2288: MemLdI2 global_60
  loc_BC228B: CI4UI1
  loc_BC228C: CVarI4
  loc_BC2290: PopAdLdVar
  loc_BC2291: FLdPr Me
  loc_BC2294: VCallAd Control_ID_ctacteFlex
  loc_BC2297: FStAdFunc var_DC
  loc_BC229A: FLdPr var_DC
  loc_BC229D: LateIdCallLdVar
  loc_BC22A7: PopAd
  loc_BC22A9: FLdPr Me
  loc_BC22AC: MemLdFPR8 global_64
  loc_BC22AF: FLdRfVar var_EC
  loc_BC22B2: CStrVarTmp
  loc_BC22B3: FStStrNoPop var_F0
  loc_BC22B6: CR8Str
  loc_BC22B8: AddR8
  loc_BC22B9: FLdPr Me
  loc_BC22BC: MemStFPR8 global_64
  loc_BC22BF: FFree1Str var_F0
  loc_BC22C2: FFreeAd var_88 = ""
  loc_BC22C9: FFreeVar var_98 = ""
  loc_BC22D0: FLdPr Me
  loc_BC22D3: MemLdRfVar from_stack_1.global_60
  loc_BC22D6: NextI2 var_104, loc_BC20DF
  loc_BC22DB: Branch loc_BC2648
  loc_BC22DE: FLdPr Me
  loc_BC22E1: VCallAd Control_ID_ctacteFlex
  loc_BC22E4: FStAdFunc var_88
  loc_BC22E7: FLdPr var_88
  loc_BC22EA: LateIdLdVar var_98 DispID_10 0
  loc_BC22F1: CI4Var
  loc_BC22F3: CVarI4
  loc_BC22F7: PopAdLdVar
  loc_BC22F8: LitVarI4
  loc_BC2300: PopAdLdVar
  loc_BC2301: FLdPr Me
  loc_BC2304: VCallAd Control_ID_ctacteFlex
  loc_BC2307: FStAdFunc var_DC
  loc_BC230A: FLdPr var_DC
  loc_BC230D: LateIdCallLdVar
  loc_BC2317: CStrVarTmp
  loc_BC2318: FStStrNoPop var_F0
  loc_BC231B: CI4Str
  loc_BC231C: LitI4 0
  loc_BC2321: NeI4
  loc_BC2322: FFree1Str var_F0
  loc_BC2325: FFreeAd var_88 = ""
  loc_BC232C: FFreeVar var_98 = ""
  loc_BC2333: BranchF loc_BC2648
  loc_BC2336: LitI2_Byte 1
  loc_BC2338: FLdPr Me
  loc_BC233B: MemLdRfVar from_stack_1.global_60
  loc_BC233E: FLdPr Me
  loc_BC2341: VCallAd Control_ID_ctacteFlex
  loc_BC2344: FStAdFunc var_88
  loc_BC2347: FLdPr var_88
  loc_BC234A: LateIdLdVar var_98 DispID_4 0
  loc_BC2351: CI4Var
  loc_BC2353: LitI4 1
  loc_BC2358: SubI4
  loc_BC2359: CI2I4
  loc_BC235A: FFree1Ad var_88
  loc_BC235D: FFree1Var var_98 = ""
  loc_BC2360: ForI2 var_128
  loc_BC2366: FLdPr Me
  loc_BC2369: MemLdI2 global_60
  loc_BC236C: CI4UI1
  loc_BC236D: CVarI4
  loc_BC2371: PopAdLdVar
  loc_BC2372: LitVarI4
  loc_BC237A: PopAdLdVar
  loc_BC237B: FLdPr Me
  loc_BC237E: VCallAd Control_ID_ctacteFlex
  loc_BC2381: FStAdFunc var_88
  loc_BC2384: FLdPr var_88
  loc_BC2387: LateIdCallLdVar
  loc_BC2391: CStrVarTmp
  loc_BC2392: FStStrNoPop var_F0
  loc_BC2395: CI4Str
  loc_BC2396: FLdPr Me
  loc_BC2399: VCallAd Control_ID_ctacteFlex
  loc_BC239C: FStAdFunc var_DC
  loc_BC239F: FLdPr var_DC
  loc_BC23A2: LateIdLdVar var_EC DispID_10 0
  loc_BC23A9: CI4Var
  loc_BC23AB: CVarI4
  loc_BC23AF: PopAdLdVar
  loc_BC23B0: LitVarI4
  loc_BC23B8: PopAdLdVar
  loc_BC23B9: FLdPr Me
  loc_BC23BC: VCallAd Control_ID_ctacteFlex
  loc_BC23BF: FStAdFunc var_14C
  loc_BC23C2: FLdPr var_14C
  loc_BC23C5: LateIdCallLdVar
  loc_BC23CF: CStrVarTmp
  loc_BC23D0: FStStrNoPop var_150
  loc_BC23D3: CI4Str
  loc_BC23D4: EqI4
  loc_BC23D5: FFreeStr var_F0 = ""
  loc_BC23DC: FFreeAd var_88 = "": var_DC = ""
  loc_BC23E5: FFreeVar var_98 = "": var_EC = ""
  loc_BC23EE: BranchF loc_BC263D
  loc_BC23F1: FLdPr Me
  loc_BC23F4: MemLdI2 global_60
  loc_BC23F7: CI4UI1
  loc_BC23F8: CVarI4
  loc_BC23FC: PopAdLdVar
  loc_BC23FD: FLdPr Me
  loc_BC2400: VCallAd Control_ID_ctacteFlex
  loc_BC2403: FStAdFunc var_88
  loc_BC2406: FLdPr var_88
  loc_BC2409: LateIdSt
  loc_BC240E: FFree1Ad var_88
  loc_BC2411: LitI2_Byte 0
  loc_BC2413: FLdPr Me
  loc_BC2416: MemLdRfVar from_stack_1.global_62
  loc_BC2419: FLdPr Me
  loc_BC241C: VCallAd Control_ID_ctacteFlex
  loc_BC241F: FStAdFunc var_88
  loc_BC2422: FLdPr var_88
  loc_BC2425: LateIdLdVar var_98 DispID_5 0
  loc_BC242C: CI4Var
  loc_BC242E: LitI4 1
  loc_BC2433: SubI4
  loc_BC2434: CI2I4
  loc_BC2435: FFree1Ad var_88
  loc_BC2438: FFree1Var var_98 = ""
  loc_BC243B: ForI2 var_154
  loc_BC2441: FLdPr Me
  loc_BC2444: MemLdI2 global_62
  loc_BC2447: CI4UI1
  loc_BC2448: CVarI4
  loc_BC244C: PopAdLdVar
  loc_BC244D: FLdPr Me
  loc_BC2450: VCallAd Control_ID_ctacteFlex
  loc_BC2453: FStAdFunc var_88
  loc_BC2456: FLdPr var_88
  loc_BC2459: LateIdSt
  loc_BC245E: FFree1Ad var_88
  loc_BC2461: FLdPr Me
  loc_BC2464: VCallAd Control_ID_ctacteFlex
  loc_BC2467: FStAdFunc var_88
  loc_BC246A: FLdPr var_88
  loc_BC246D: LateIdLdVar var_98 DispID_38 0
  loc_BC2474: CI4Var
  loc_BC2476: LitI4 &HFFFF80
  loc_BC247B: EqI4
  loc_BC247C: FFree1Ad var_88
  loc_BC247F: FFree1Var var_98 = ""
  loc_BC2482: BranchF loc_BC255D
  loc_BC2485: LitVarI4
  loc_BC248D: PopAdLdVar
  loc_BC248E: FLdPr Me
  loc_BC2491: VCallAd Control_ID_ctacteFlex
  loc_BC2494: FStAdFunc var_88
  loc_BC2497: FLdPr var_88
  loc_BC249A: LateIdSt
  loc_BC249F: FFree1Ad var_88
  loc_BC24A2: FLdPr Me
  loc_BC24A5: VCallAd Control_ID_ctacteFlex
  loc_BC24A8: FStAdFunc var_88
  loc_BC24AB: FLdPr var_88
  loc_BC24AE: LateIdLdVar var_98 DispID_10 0
  loc_BC24B5: CI4Var
  loc_BC24B7: CVarI4
  loc_BC24BB: PopAdLdVar
  loc_BC24BC: LitVarI4
  loc_BC24C4: PopAdLdVar
  loc_BC24C5: LitVarStr var_114, "No"
  loc_BC24CA: PopAdLdVar
  loc_BC24CB: FLdPr Me
  loc_BC24CE: VCallAd Control_ID_ctacteFlex
  loc_BC24D1: FStAdFunc var_DC
  loc_BC24D4: FLdPr var_DC
  loc_BC24D7: LateIdCallSt
  loc_BC24DF: FFreeAd var_88 = ""
  loc_BC24E6: FFree1Var var_98 = ""
  loc_BC24E9: FLdPr Me
  loc_BC24EC: MemLdI2 global_62
  loc_BC24EF: LitI2_Byte &HD
  loc_BC24F1: EqI2
  loc_BC24F2: BranchF loc_BC255A
  loc_BC24F5: FLdPr Me
  loc_BC24F8: VCallAd Control_ID_ctacteFlex
  loc_BC24FB: FStAdFunc var_88
  loc_BC24FE: FLdPr var_88
  loc_BC2501: LateIdLdVar var_98 DispID_10 0
  loc_BC2508: CI4Var
  loc_BC250A: CVarI4
  loc_BC250E: PopAdLdVar
  loc_BC250F: FLdPr Me
  loc_BC2512: MemLdI2 global_62
  loc_BC2515: CI4UI1
  loc_BC2516: CVarI4
  loc_BC251A: PopAdLdVar
  loc_BC251B: FLdPr Me
  loc_BC251E: VCallAd Control_ID_ctacteFlex
  loc_BC2521: FStAdFunc var_DC
  loc_BC2524: FLdPr var_DC
  loc_BC2527: LateIdCallLdVar
  loc_BC2531: PopAd
  loc_BC2533: FLdPr Me
  loc_BC2536: MemLdFPR8 global_64
  loc_BC2539: FLdRfVar var_EC
  loc_BC253C: CStrVarTmp
  loc_BC253D: FStStrNoPop var_F0
  loc_BC2540: CR8Str
  loc_BC2542: SubR4
  loc_BC2543: FLdPr Me
  loc_BC2546: MemStFPR8 global_64
  loc_BC2549: FFree1Str var_F0
  loc_BC254C: FFreeAd var_88 = ""
  loc_BC2553: FFreeVar var_98 = ""
  loc_BC255A: Branch loc_BC2632
  loc_BC255D: LitVarI4
  loc_BC2565: PopAdLdVar
  loc_BC2566: FLdPr Me
  loc_BC2569: VCallAd Control_ID_ctacteFlex
  loc_BC256C: FStAdFunc var_88
  loc_BC256F: FLdPr var_88
  loc_BC2572: LateIdSt
  loc_BC2577: FFree1Ad var_88
  loc_BC257A: FLdPr Me
  loc_BC257D: VCallAd Control_ID_ctacteFlex
  loc_BC2580: FStAdFunc var_88
  loc_BC2583: FLdPr var_88
  loc_BC2586: LateIdLdVar var_98 DispID_10 0
  loc_BC258D: CI4Var
  loc_BC258F: CVarI4
  loc_BC2593: PopAdLdVar
  loc_BC2594: LitVarI4
  loc_BC259C: PopAdLdVar
  loc_BC259D: LitVarStr var_114, "Si"
  loc_BC25A2: PopAdLdVar
  loc_BC25A3: FLdPr Me
  loc_BC25A6: VCallAd Control_ID_ctacteFlex
  loc_BC25A9: FStAdFunc var_DC
  loc_BC25AC: FLdPr var_DC
  loc_BC25AF: LateIdCallSt
  loc_BC25B7: FFreeAd var_88 = ""
  loc_BC25BE: FFree1Var var_98 = ""
  loc_BC25C1: FLdPr Me
  loc_BC25C4: MemLdI2 global_62
  loc_BC25C7: LitI2_Byte &HD
  loc_BC25C9: EqI2
  loc_BC25CA: BranchF loc_BC2632
  loc_BC25CD: FLdPr Me
  loc_BC25D0: VCallAd Control_ID_ctacteFlex
  loc_BC25D3: FStAdFunc var_88
  loc_BC25D6: FLdPr var_88
  loc_BC25D9: LateIdLdVar var_98 DispID_10 0
  loc_BC25E0: CI4Var
  loc_BC25E2: CVarI4
  loc_BC25E6: PopAdLdVar
  loc_BC25E7: FLdPr Me
  loc_BC25EA: MemLdI2 global_62
  loc_BC25ED: CI4UI1
  loc_BC25EE: CVarI4
  loc_BC25F2: PopAdLdVar
  loc_BC25F3: FLdPr Me
  loc_BC25F6: VCallAd Control_ID_ctacteFlex
  loc_BC25F9: FStAdFunc var_DC
  loc_BC25FC: FLdPr var_DC
  loc_BC25FF: LateIdCallLdVar
  loc_BC2609: PopAd
  loc_BC260B: FLdPr Me
  loc_BC260E: MemLdFPR8 global_64
  loc_BC2611: FLdRfVar var_EC
  loc_BC2614: CStrVarTmp
  loc_BC2615: FStStrNoPop var_F0
  loc_BC2618: CR8Str
  loc_BC261A: AddR8
  loc_BC261B: FLdPr Me
  loc_BC261E: MemStFPR8 global_64
  loc_BC2621: FFree1Str var_F0
  loc_BC2624: FFreeAd var_88 = ""
  loc_BC262B: FFreeVar var_98 = ""
  loc_BC2632: FLdPr Me
  loc_BC2635: MemLdRfVar from_stack_1.global_62
  loc_BC2638: NextI2 var_154, loc_BC2441
  loc_BC263D: FLdPr Me
  loc_BC2640: MemLdRfVar from_stack_1.global_60
  loc_BC2643: NextI2 var_128, loc_BC2366
  loc_BC2648: LitI4 1
  loc_BC264D: LitI4 1
  loc_BC2652: LitVarStr var_B8, "0.00"
  loc_BC2657: FStVarCopyObj var_98
  loc_BC265A: FLdRfVar var_98
  loc_BC265D: FLdPr Me
  loc_BC2660: MemLdRfVar from_stack_1.global_64
  loc_BC2663: CVarRef
  loc_BC2668: FLdRfVar var_EC
  loc_BC266B: ImpAdCallFPR4  = Format(, )
  loc_BC2670: FLdRfVar var_EC
  loc_BC2673: CStrVarVal var_F0
  loc_BC2677: FLdPr Me
  loc_BC267A: VCallAd Control_ID_txtTotaSele
  loc_BC267D: FStAdFunc var_88
  loc_BC2680: FLdPr var_88
  loc_BC2683: Me.Text = from_stack_1
  loc_BC2688: FFree1Str var_F0
  loc_BC268B: FFree1Ad var_88
  loc_BC268E: FFreeVar var_98 = ""
  loc_BC2695: ExitProcHresult
End Sub

Private Sub ctacteFlex_KeyPress(KeyAscii As Integer) 'B49C84
  'Data Table: 4FA474
  loc_B49908: ILdI2 KeyAscii
  loc_B4990B: LitI2_Byte &HD
  loc_B4990D: EqI2
  loc_B4990E: BranchF loc_B49C83
  loc_B49911: FLdPr Me
  loc_B49914: VCallAd Control_ID_ctacteFlex
  loc_B49917: FStAdFunc var_88
  loc_B4991A: FLdPr var_88
  loc_B4991D: LateIdLdVar var_98 DispID_4 0
  loc_B49924: CI4Var
  loc_B49926: LitI4 1
  loc_B4992B: GtI4
  loc_B4992C: FFree1Ad var_88
  loc_B4992F: FFree1Var var_98 = ""
  loc_B49932: BranchF loc_B49C83
  loc_B49935: FLdPr Me
  loc_B49938: VCallAd Control_ID_ctacteFlex
  loc_B4993B: FStAdFunc var_88
  loc_B4993E: FLdPr var_88
  loc_B49941: LateIdLdVar var_98 DispID_10 0
  loc_B49948: CI4Var
  loc_B4994A: CVarI4
  loc_B4994E: PopAdLdVar
  loc_B4994F: LitVarI4
  loc_B49957: PopAdLdVar
  loc_B49958: FLdPr Me
  loc_B4995B: VCallAd Control_ID_ctacteFlex
  loc_B4995E: FStAdFunc var_DC
  loc_B49961: FLdPr var_DC
  loc_B49964: LateIdCallLdVar
  loc_B4996E: CStrVarTmp
  loc_B4996F: FStStrNoPop var_F0
  loc_B49972: CI2Str
  loc_B49974: LitI2_Byte 0
  loc_B49976: EqI2
  loc_B49977: FFree1Str var_F0
  loc_B4997A: FFreeAd var_88 = ""
  loc_B49981: FFreeVar var_98 = ""
  loc_B49988: BranchF loc_B49C83
  loc_B4998B: LitI2_Byte &HFF
  loc_B4998D: FLdPr Me
  loc_B49990: VCallAd Control_ID_ImpoCtctTxt
  loc_B49993: FStAdFunc var_88
  loc_B49996: FLdPr var_88
  loc_B49999: Me.Enabled = from_stack_1b
  loc_B4999E: FFree1Ad var_88
  loc_B499A1: FLdPr Me
  loc_B499A4: VCallAd Control_ID_ctacteFlex
  loc_B499A7: FStAdFunc var_88
  loc_B499AA: FLdPr var_88
  loc_B499AD: LateIdLdVar var_98 DispID_10 0
  loc_B499B4: CI4Var
  loc_B499B6: CVarI4
  loc_B499BA: PopAdLdVar
  loc_B499BB: LitVarI4
  loc_B499C3: PopAdLdVar
  loc_B499C4: FLdPr Me
  loc_B499C7: VCallAd Control_ID_ctacteFlex
  loc_B499CA: FStAdFunc var_DC
  loc_B499CD: FLdPr var_DC
  loc_B499D0: LateIdCallLdVar
  loc_B499DA: PopAd
  loc_B499DC: LitI4 2
  loc_B499E1: FLdRfVar var_EC
  loc_B499E4: CStrVarTmp
  loc_B499E5: FStStrNoPop var_F0
  loc_B499E8: CR8Str
  loc_B499EA: LitI2_Byte &HFF
  loc_B499EC: CR8I2
  loc_B499ED: MulR8
  loc_B499EE: CVarR8
  loc_B499F2: FLdRfVar var_120
  loc_B499F5: ImpAdCallFPR4  = Round(, )
  loc_B499FA: FLdRfVar var_120
  loc_B499FD: CStrVarVal var_124
  loc_B49A01: FLdPr Me
  loc_B49A04: VCallAd Control_ID_ImpoCtctTxt
  loc_B49A07: FStAdFunc var_128
  loc_B49A0A: FLdPr var_128
  loc_B49A0D: Me.Text = from_stack_1
  loc_B49A12: FFreeStr var_F0 = ""
  loc_B49A19: FFreeAd var_88 = "": var_DC = ""
  loc_B49A22: FFreeVar var_98 = "": var_EC = "": var_110 = ""
  loc_B49A2D: FLdPr Me
  loc_B49A30: VCallAd Control_ID_ctacteFlex
  loc_B49A33: FStAdFunc var_88
  loc_B49A36: FLdPr var_88
  loc_B49A39: LateIdLdVar var_98 DispID_10 0
  loc_B49A40: CI4Var
  loc_B49A42: CI2I4
  loc_B49A43: FLdPr Me
  loc_B49A46: MemStI2 global_74
  loc_B49A49: FFree1Ad var_88
  loc_B49A4C: FFree1Var var_98 = ""
  loc_B49A4F: FLdPr Me
  loc_B49A52: MemLdI2 global_72
  loc_B49A55: LitI2_Byte 0
  loc_B49A57: NeI2
  loc_B49A58: BranchF loc_B49B5E
  loc_B49A5B: FLdPr Me
  loc_B49A5E: MemLdI2 global_72
  loc_B49A61: CI4UI1
  loc_B49A62: CVarI4
  loc_B49A66: PopAdLdVar
  loc_B49A67: FLdPr Me
  loc_B49A6A: VCallAd Control_ID_ctacteFlex
  loc_B49A6D: FStAdFunc var_88
  loc_B49A70: FLdPr var_88
  loc_B49A73: LateIdSt
  loc_B49A78: FFree1Ad var_88
  loc_B49A7B: LitI2_Byte 0
  loc_B49A7D: FLdPr Me
  loc_B49A80: MemLdRfVar from_stack_1.global_60
  loc_B49A83: FLdPr Me
  loc_B49A86: VCallAd Control_ID_ctacteFlex
  loc_B49A89: FStAdFunc var_88
  loc_B49A8C: FLdPr var_88
  loc_B49A8F: LateIdLdVar var_98 DispID_5 0
  loc_B49A96: CI4Var
  loc_B49A98: LitI4 1
  loc_B49A9D: SubI4
  loc_B49A9E: CI2I4
  loc_B49A9F: FFree1Ad var_88
  loc_B49AA2: FFree1Var var_98 = ""
  loc_B49AA5: ForI2 var_12C
  loc_B49AAB: FLdPr Me
  loc_B49AAE: MemLdI2 global_60
  loc_B49AB1: CI4UI1
  loc_B49AB2: CVarI4
  loc_B49AB6: PopAdLdVar
  loc_B49AB7: FLdPr Me
  loc_B49ABA: VCallAd Control_ID_ctacteFlex
  loc_B49ABD: FStAdFunc var_88
  loc_B49AC0: FLdPr var_88
  loc_B49AC3: LateIdSt
  loc_B49AC8: FFree1Ad var_88
  loc_B49ACB: FLdPr Me
  loc_B49ACE: VCallAd Control_ID_ctacteFlex
  loc_B49AD1: FStAdFunc var_88
  loc_B49AD4: FLdPr var_88
  loc_B49AD7: LateIdLdVar var_98 DispID_38 0
  loc_B49ADE: CI4Var
  loc_B49AE0: LitI4 &HFF
  loc_B49AE5: EqI4
  loc_B49AE6: FFree1Ad var_88
  loc_B49AE9: FFree1Var var_98 = ""
  loc_B49AEC: BranchF loc_B49B53
  loc_B49AEF: LitVarI4
  loc_B49AF7: PopAdLdVar
  loc_B49AF8: FLdPr Me
  loc_B49AFB: VCallAd Control_ID_ctacteFlex
  loc_B49AFE: FStAdFunc var_88
  loc_B49B01: FLdPr var_88
  loc_B49B04: LateIdSt
  loc_B49B09: FFree1Ad var_88
  loc_B49B0C: FLdPr Me
  loc_B49B0F: VCallAd Control_ID_ctacteFlex
  loc_B49B12: FStAdFunc var_88
  loc_B49B15: FLdPr var_88
  loc_B49B18: LateIdLdVar var_98 DispID_10 0
  loc_B49B1F: CI4Var
  loc_B49B21: CVarI4
  loc_B49B25: PopAdLdVar
  loc_B49B26: LitVarI4
  loc_B49B2E: PopAdLdVar
  loc_B49B2F: LitVarStr var_100, "No"
  loc_B49B34: PopAdLdVar
  loc_B49B35: FLdPr Me
  loc_B49B38: VCallAd Control_ID_ctacteFlex
  loc_B49B3B: FStAdFunc var_DC
  loc_B49B3E: FLdPr var_DC
  loc_B49B41: LateIdCallSt
  loc_B49B49: FFreeAd var_88 = ""
  loc_B49B50: FFree1Var var_98 = ""
  loc_B49B53: FLdPr Me
  loc_B49B56: MemLdRfVar from_stack_1.global_60
  loc_B49B59: NextI2 var_12C, loc_B49AAB
  loc_B49B5E: FLdPr Me
  loc_B49B61: MemLdI2 global_74
  loc_B49B64: CI4UI1
  loc_B49B65: CVarI4
  loc_B49B69: PopAdLdVar
  loc_B49B6A: FLdPr Me
  loc_B49B6D: VCallAd Control_ID_ctacteFlex
  loc_B49B70: FStAdFunc var_88
  loc_B49B73: FLdPr var_88
  loc_B49B76: LateIdSt
  loc_B49B7B: FFree1Ad var_88
  loc_B49B7E: LitI2_Byte 0
  loc_B49B80: FLdPr Me
  loc_B49B83: MemLdRfVar from_stack_1.global_60
  loc_B49B86: FLdPr Me
  loc_B49B89: VCallAd Control_ID_ctacteFlex
  loc_B49B8C: FStAdFunc var_88
  loc_B49B8F: FLdPr var_88
  loc_B49B92: LateIdLdVar var_98 DispID_5 0
  loc_B49B99: CI4Var
  loc_B49B9B: LitI4 1
  loc_B49BA0: SubI4
  loc_B49BA1: CI2I4
  loc_B49BA2: FFree1Ad var_88
  loc_B49BA5: FFree1Var var_98 = ""
  loc_B49BA8: ForI2 var_140
  loc_B49BAE: FLdPr Me
  loc_B49BB1: MemLdI2 global_60
  loc_B49BB4: CI4UI1
  loc_B49BB5: CVarI4
  loc_B49BB9: PopAdLdVar
  loc_B49BBA: FLdPr Me
  loc_B49BBD: VCallAd Control_ID_ctacteFlex
  loc_B49BC0: FStAdFunc var_88
  loc_B49BC3: FLdPr var_88
  loc_B49BC6: LateIdSt
  loc_B49BCB: FFree1Ad var_88
  loc_B49BCE: FLdPr Me
  loc_B49BD1: VCallAd Control_ID_ctacteFlex
  loc_B49BD4: FStAdFunc var_88
  loc_B49BD7: FLdPr var_88
  loc_B49BDA: LateIdLdVar var_98 DispID_38 0
  loc_B49BE1: CI4Var
  loc_B49BE3: LitI4 &HFF
  loc_B49BE8: NeI4
  loc_B49BE9: FFree1Ad var_88
  loc_B49BEC: FFree1Var var_98 = ""
  loc_B49BEF: BranchF loc_B49C56
  loc_B49BF2: LitVarI4
  loc_B49BFA: PopAdLdVar
  loc_B49BFB: FLdPr Me
  loc_B49BFE: VCallAd Control_ID_ctacteFlex
  loc_B49C01: FStAdFunc var_88
  loc_B49C04: FLdPr var_88
  loc_B49C07: LateIdSt
  loc_B49C0C: FFree1Ad var_88
  loc_B49C0F: FLdPr Me
  loc_B49C12: VCallAd Control_ID_ctacteFlex
  loc_B49C15: FStAdFunc var_88
  loc_B49C18: FLdPr var_88
  loc_B49C1B: LateIdLdVar var_98 DispID_10 0
  loc_B49C22: CI4Var
  loc_B49C24: CVarI4
  loc_B49C28: PopAdLdVar
  loc_B49C29: LitVarI4
  loc_B49C31: PopAdLdVar
  loc_B49C32: LitVarStr var_100, "SS"
  loc_B49C37: PopAdLdVar
  loc_B49C38: FLdPr Me
  loc_B49C3B: VCallAd Control_ID_ctacteFlex
  loc_B49C3E: FStAdFunc var_DC
  loc_B49C41: FLdPr var_DC
  loc_B49C44: LateIdCallSt
  loc_B49C4C: FFreeAd var_88 = ""
  loc_B49C53: FFree1Var var_98 = ""
  loc_B49C56: FLdPr Me
  loc_B49C59: MemLdRfVar from_stack_1.global_60
  loc_B49C5C: NextI2 var_140, loc_B49BAE
  loc_B49C61: FLdPr Me
  loc_B49C64: VCallAd Control_ID_ctacteFlex
  loc_B49C67: FStAdFunc var_88
  loc_B49C6A: FLdPr var_88
  loc_B49C6D: LateIdLdVar var_98 DispID_10 0
  loc_B49C74: CI4Var
  loc_B49C76: CI2I4
  loc_B49C77: FLdPr Me
  loc_B49C7A: MemStI2 global_72
  loc_B49C7D: FFree1Ad var_88
  loc_B49C80: FFree1Var var_98 = ""
  loc_B49C83: ExitProcHresult
End Sub

Private Function Proc_138_23_B19968() 'B19968
  'Data Table: 4FA474
  loc_B196DC: FLdPr Me
  loc_B196DF: VCallAd Control_ID_ctacteFlex
  loc_B196E2: FStAdFunc var_88
  loc_B196E5: FLdPr var_88
  loc_B196E8: LateIdCall
  loc_B196F0: LitVarI4
  loc_B196F8: PopAdLdVar
  loc_B196F9: FLdPr var_88
  loc_B196FC: LateIdSt
  loc_B19701: LitVarI4
  loc_B19709: PopAdLdVar
  loc_B1970A: LitVarI4
  loc_B19712: PopAdLdVar
  loc_B19713: LitVarStr var_D8, "Of"
  loc_B19718: PopAdLdVar
  loc_B19719: FLdPr var_88
  loc_B1971C: LateIdCallSt
  loc_B19724: LitVarI4
  loc_B1972C: PopAdLdVar
  loc_B1972D: LitVarI4
  loc_B19735: PopAdLdVar
  loc_B19736: LitVarStr var_D8, "Cuenta"
  loc_B1973B: PopAdLdVar
  loc_B1973C: FLdPr var_88
  loc_B1973F: LateIdCallSt
  loc_B19747: LitVarI4
  loc_B1974F: PopAdLdVar
  loc_B19750: LitVarI4
  loc_B19758: PopAdLdVar
  loc_B19759: LitVarStr var_D8, "Periodo"
  loc_B1975E: PopAdLdVar
  loc_B1975F: FLdPr var_88
  loc_B19762: LateIdCallSt
  loc_B1976A: LitVarI4
  loc_B19772: PopAdLdVar
  loc_B19773: LitVarI4
  loc_B1977B: PopAdLdVar
  loc_B1977C: LitVarStr var_D8, "Boleto"
  loc_B19781: PopAdLdVar
  loc_B19782: FLdPr var_88
  loc_B19785: LateIdCallSt
  loc_B1978D: LitVarI4
  loc_B19795: PopAdLdVar
  loc_B19796: LitVarI4
  loc_B1979E: PopAdLdVar
  loc_B1979F: LitVarStr var_D8, "Emision"
  loc_B197A4: PopAdLdVar
  loc_B197A5: FLdPr var_88
  loc_B197A8: LateIdCallSt
  loc_B197B0: LitVarI4
  loc_B197B8: PopAdLdVar
  loc_B197B9: LitVarI4
  loc_B197C1: PopAdLdVar
  loc_B197C2: LitVarStr var_D8, "Vencimiento"
  loc_B197C7: PopAdLdVar
  loc_B197C8: FLdPr var_88
  loc_B197CB: LateIdCallSt
  loc_B197D3: LitVarI4
  loc_B197DB: PopAdLdVar
  loc_B197DC: LitVarI4
  loc_B197E4: PopAdLdVar
  loc_B197E5: LitVarStr var_D8, "Concepto"
  loc_B197EA: PopAdLdVar
  loc_B197EB: FLdPr var_88
  loc_B197EE: LateIdCallSt
  loc_B197F6: LitVarI4
  loc_B197FE: PopAdLdVar
  loc_B197FF: LitVarI4
  loc_B19807: PopAdLdVar
  loc_B19808: LitVarStr var_D8, "Facilidad"
  loc_B1980D: PopAdLdVar
  loc_B1980E: FLdPr var_88
  loc_B19811: LateIdCallSt
  loc_B19819: LitVarI4
  loc_B19821: PopAdLdVar
  loc_B19822: LitVarI4
  loc_B1982A: PopAdLdVar
  loc_B1982B: LitVarStr var_D8, "Apremio"
  loc_B19830: PopAdLdVar
  loc_B19831: FLdPr var_88
  loc_B19834: LateIdCallSt
  loc_B1983C: LitVarI4
  loc_B19844: PopAdLdVar
  loc_B19845: LitVarI4
  loc_B1984D: PopAdLdVar
  loc_B1984E: LitVarStr var_D8, "Exp/Comp"
  loc_B19853: PopAdLdVar
  loc_B19854: FLdPr var_88
  loc_B19857: LateIdCallSt
  loc_B1985F: LitVarI4
  loc_B19867: PopAdLdVar
  loc_B19868: LitVarI4
  loc_B19870: PopAdLdVar
  loc_B19871: LitVarStr var_D8, "Tipo Movi."
  loc_B19876: PopAdLdVar
  loc_B19877: FLdPr var_88
  loc_B1987A: LateIdCallSt
  loc_B19882: LitVarI4
  loc_B1988A: PopAdLdVar
  loc_B1988B: LitVarI4
  loc_B19893: PopAdLdVar
  loc_B19894: LitVarStr var_D8, "Debito"
  loc_B19899: PopAdLdVar
  loc_B1989A: FLdPr var_88
  loc_B1989D: LateIdCallSt
  loc_B198A5: LitVarI4
  loc_B198AD: PopAdLdVar
  loc_B198AE: LitVarI4
  loc_B198B6: PopAdLdVar
  loc_B198B7: LitVarStr var_D8, "Recargo"
  loc_B198BC: PopAdLdVar
  loc_B198BD: FLdPr var_88
  loc_B198C0: LateIdCallSt
  loc_B198C8: LitVarI4
  loc_B198D0: PopAdLdVar
  loc_B198D1: LitVarI4
  loc_B198D9: PopAdLdVar
  loc_B198DA: LitVarStr var_D8, "Saldo"
  loc_B198DF: PopAdLdVar
  loc_B198E0: FLdPr var_88
  loc_B198E3: LateIdCallSt
  loc_B198EB: LitVarI4
  loc_B198F3: PopAdLdVar
  loc_B198F4: LitVarI4
  loc_B198FC: PopAdLdVar
  loc_B198FD: LitVarStr var_D8, "Sel"
  loc_B19902: PopAdLdVar
  loc_B19903: FLdPr var_88
  loc_B19906: LateIdCallSt
  loc_B1990E: LitVarI4
  loc_B19916: PopAdLdVar
  loc_B19917: LitVarI4
  loc_B1991F: PopAdLdVar
  loc_B19920: LitVarStr var_D8, "Numero"
  loc_B19925: PopAdLdVar
  loc_B19926: FLdPr var_88
  loc_B19929: LateIdCallSt
  loc_B19931: LitVarI4
  loc_B19939: PopAdLdVar
  loc_B1993A: LitVarI4
  loc_B19942: PopAdLdVar
  loc_B19943: LitVarStr var_D8, "Mov"
  loc_B19948: PopAdLdVar
  loc_B19949: FLdPr var_88
  loc_B1994C: LateIdCallSt
  loc_B19954: FLdPr var_88
  loc_B19957: LateIdCall
  loc_B1995F: LitNothing
  loc_B19961: FStAd var_88 
  loc_B19965: ExitProcHresult
  loc_B19966: PopFPR8
End Function
