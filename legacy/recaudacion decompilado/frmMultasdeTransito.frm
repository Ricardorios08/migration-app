VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmMultasdeTransito
  Caption = "Multas de Transito"
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
  ClientHeight = 10272
  Begin VB.TextBox ExpeCtctTxt
    ForeColor = &HFF0000&
    Left = 6600
    Top = 5280
    Width = 2055
    Height = 345
    TabIndex = 47
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
  Begin VB.TextBox CompCtctTxt
    ForeColor = &HFF0000&
    Left = 9720
    Top = 5760
    Width = 2055
    Height = 345
    TabIndex = 25
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
  Begin VB.CheckBox RedondeoChk
    Caption = "Redondeo"
    Left = 12840
    Top = 6360
    Width = 1575
    Height = 255
    TabIndex = 44
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton CreaPersonaCmd
    Caption = "Crea Cuenta de Transito"
    Left = 13200
    Top = 720
    Width = 1935
    Height = 780
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
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4200
    Top = 120
    Width = 1695
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
  Begin VB.CommandButton NumeCtaCmd
    Left = 6000
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 4
    Picture = "frmMultasdeTransito.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1080
    Top = 120
    Width = 2175
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 6000
    Top = 9600
    Width = 1935
    Height = 495
    TabIndex = 41
    Picture = "frmMultasdeTransito.frx":00FA
    Style = 1
  End
  Begin VB.TextBox DetalleTxt
    ForeColor = &HFF0000&
    Left = 1140
    Top = 8640
    Width = 7935
    Height = 735
    TabIndex = 35
    MultiLine = -1  'True
    ScrollBars = 2
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
  Begin VB.TextBox TotaBoleTxt
    Left = 10980
    Top = 8520
    Width = 1455
    Height = 330
    TabIndex = 32
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Left = 13260
    Top = 8520
    Width = 1575
    Height = 255
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
  Begin VB.TextBox TotalTxt
    Left = 10980
    Top = 9480
    Width = 1455
    Height = 330
    TabIndex = 40
    Alignment = 1 'Right Justify
    MaxLength = 10
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
  Begin VB.TextBox DescBoleTxt
    ForeColor = &H0&
    Left = 10980
    Top = 9000
    Width = 1455
    Height = 345
    TabIndex = 38
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin VB.TextBox PorcDescTxt
    ForeColor = &H0&
    Left = 13260
    Top = 8880
    Width = 1455
    Height = 345
    TabIndex = 36
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
  Begin VB.TextBox txtTotaDere
    Left = 6000
    Top = 4800
    Width = 1815
    Height = 345
    TabIndex = 15
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
    Top = 4800
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
  Begin VB.TextBox txtTotaApre
    Left = 1920
    Top = 4800
    Width = 1815
    Height = 360
    TabIndex = 13
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
    Top = 4800
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
  Begin VB.CommandButton BuscarCmd
    Left = 5760
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 10
    Picture = "frmMultasdeTransito.frx":0428
    Style = 1
  End
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 0
    Width = 735
    Height = 615
    TabIndex = 42
    Picture = "frmMultasdeTransito.frx":050A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 4200
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 9
    OleObjectBlob = "frmMultasdeTransito.frx":075C
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1560
    Width = 15015
    Height = 3135
    TabIndex = 11
    OleObjectBlob = "frmMultasdeTransito.frx":080C
    Appearance = 0 'Flat
  End
  Begin MSMask.MaskEdBox FeveCtctMsk
    Left = 2880
    Top = 5760
    Width = 1335
    Height = 345
    TabIndex = 20
    OleObjectBlob = "frmMultasdeTransito.frx":08F8
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSFlexGridLib.MSFlexGrid ServDevaFlex
    Left = 1200
    Top = 6240
    Width = 11535
    Height = 2295
    TabIndex = 30
    OleObjectBlob = "frmMultasdeTransito.frx":09A8
  End
  Begin MSMask.MaskEdBox PeriCtctMsk
    Left = 6600
    Top = 5760
    Width = 645
    Height = 345
    TabIndex = 22
    OleObjectBlob = "frmMultasdeTransito.frx":0A94
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSMask.MaskEdBox BimeCtctMsk
    Left = 7560
    Top = 5760
    Width = 375
    Height = 345
    TabIndex = 23
    OleObjectBlob = "frmMultasdeTransito.frx":0B24
    ToolTipText = "Aparece en la columna de la fecha de vencimiento en la cuenta corriente"
  End
  Begin MSMask.MaskEdBox FechActaMsk
    Left = 2880
    Top = 5280
    Width = 1335
    Height = 345
    TabIndex = 17
    OleObjectBlob = "frmMultasdeTransito.frx":0BB0
  End
  Begin VB.Label Label14
    Caption = "Fecha del Acta:"
    Left = 1080
    Top = 5280
    Width = 1665
    Height = 300
    TabIndex = 16
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
  Begin VB.Label Label12
    Caption = "Resolución:"
    Left = 8400
    Top = 5760
    Width = 1245
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
  Begin VB.Label LocaPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 1200
    Width = 6615
    Height = 315
    TabIndex = 46
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label BarrPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 840
    Width = 6615
    Height = 315
    TabIndex = 45
    BeginProperty Font
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
    X1 = 7320
    Y1 = 6000
    X2 = 7440
    Y2 = 5760
  End
  Begin VB.Label Label13
    Caption = "Periodo:"
    Left = 5640
    Top = 5760
    Width = 870
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3360
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
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 240
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 6480
    Top = 480
    Width = 6495
    Height = 315
    TabIndex = 7
    BeginProperty Font
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
    Left = 6600
    Top = 120
    Width = 1695
    Height = 315
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
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 8520
    Top = 120
    Width = 5175
    Height = 315
    TabIndex = 6
    BeginProperty Font
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
    Caption = "Nro de Acta:"
    Left = 5280
    Top = 5280
    Width = 1320
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
  Begin VB.Label Label9
    Caption = "Fecha de Vencimiento:"
    Left = 315
    Top = 5760
    Width = 2445
    Height = 300
    TabIndex = 19
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
    Caption = "Detalle:"
    Left = 240
    Top = 8640
    Width = 810
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
  Begin VB.Label Label11
    Caption = "Total del Boleto:"
    Left = 9180
    Top = 8520
    Width = 1710
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
  Begin VB.Label DescBoleLbl
    Caption = "Descuento:"
    Left = 9660
    Top = 9000
    Width = 1230
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
  Begin VB.Label TotalLbl
    Caption = "Total:"
    Left = 10260
    Top = 9480
    Width = 585
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
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 3960
    Top = 4800
    Width = 1785
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
  Begin VB.Label Label6
    Caption = "Total Recargo:"
    Left = 8280
    Top = 4800
    Width = 1785
    Height = 300
    TabIndex = 26
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
    Top = 4800
    Width = 1755
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
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12240
    Top = 5160
    Width = 690
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
  Begin VB.Label Label4
    Caption = "Fecha:"
    Left = 3360
    Top = 720
    Width = 735
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
End

Attribute VB_Name = "frmMultasdeTransito"


Private Sub FechActaMsk_UnknownEvent_0 '9C37B8
  'Data Table: 51A85C
  loc_9C37A4: FLdPr Me
  loc_9C37A7: VCallAd Control_ID_FechActaMsk
  loc_9C37AA: CVarAd
  loc_9C37AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C37B3: FFree1Var var_94 = ""
  loc_9C37B6: ExitProcHresult
End Sub

Private Function FechActaMsk_UnknownEvent_8(arg_C) 'AB6A00
  'Data Table: 51A85C
  loc_AB6920: FLdPr Me
  loc_AB6923: VCallAd Control_ID_FechVencMsk
  loc_AB6926: FStAdFunc var_88
  loc_AB6929: FLdPr var_88
  loc_AB692C: LateIdLdVar var_98 DispID_13 -32767
  loc_AB6933: CBoolVar
  loc_AB6935: LitI2_Byte &HFF
  loc_AB6937: EqI2
  loc_AB6938: FFree1Ad var_88
  loc_AB693B: FFree1Var var_98 = ""
  loc_AB693E: BranchF loc_AB69A5
  loc_AB6941: FLdPr Me
  loc_AB6944: VCallAd Control_ID_FechActaMsk
  loc_AB6947: FStAdFunc var_88
  loc_AB694A: FLdPr var_88
  loc_AB694D: LateIdLdVar var_98 DispID_15 0
  loc_AB6954: CStrVarTmp
  loc_AB6955: FStStrNoPop var_9C
  loc_AB6958: ImpAdCallI2 Proc_18_6_A08898()
  loc_AB695D: FStStrNoPop var_A0
  loc_AB6960: FLdPr Me
  loc_AB6963: MemStStrCopy
  loc_AB6967: FFreeStr var_9C = ""
  loc_AB696E: FFree1Ad var_88
  loc_AB6971: FFree1Var var_98 = ""
  loc_AB6974: FLdPr Me
  loc_AB6977: MemLdStr global_64
  loc_AB697A: LitStr vbNullString
  loc_AB697D: NeStr
  loc_AB697F: BranchF loc_AB69A5
  loc_AB6982: FLdPr Me
  loc_AB6985: MemLdStr global_64
  loc_AB6988: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB698D: FLdPr Me
  loc_AB6990: VCallAd Control_ID_FechActaMsk
  loc_AB6993: CVarAd
  loc_AB6997: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AB699C: FFree1Var var_98 = ""
  loc_AB699F: LitI2_Byte &HFF
  loc_AB69A1: IStI2 arg_C
  loc_AB69A4: ExitProcHresult
  loc_AB69A5: FLdPr Me
  loc_AB69A8: VCallAd Control_ID_FechActaMsk
  loc_AB69AB: FStAdFunc var_88
  loc_AB69AE: FLdPr var_88
  loc_AB69B1: LateIdLdVar var_98 DispID_15 0
  loc_AB69B8: PopAd
  loc_AB69BA: LitI2_Byte &HA
  loc_AB69BC: CUI1I2
  loc_AB69BE: PopTmpLdAd1
  loc_AB69C2: FLdRfVar var_98
  loc_AB69C5: CStrVarTmp
  loc_AB69C6: FStStrNoPop var_9C
  loc_AB69C9: CDateStr
  loc_AB69CB: PopTmpLdAdFPR8
  loc_AB69CF: ImpAdCallFPR4 Proc_18_127_AE5A54(, )
  loc_AB69D4: CStrDate
  loc_AB69D6: CVarStr var_BC
  loc_AB69D9: PopAdLdVar
  loc_AB69DA: FLdPr Me
  loc_AB69DD: VCallAd Control_ID_FeveCtctMsk
  loc_AB69E0: FStAdFunc var_D0
  loc_AB69E3: FLdPr var_D0
  loc_AB69E6: LateIdSt
  loc_AB69EB: FFree1Str var_9C
  loc_AB69EE: FFreeAd var_88 = ""
  loc_AB69F5: FFreeVar var_98 = ""
  loc_AB69FC: ExitProcHresult
  loc_AB69FD: LeCyR8
  loc_AB69FE: LdFixedStr
End Function

Private Sub FechActaMsk_KeyPress(KeyAscii As Integer) 'A250A0
  'Data Table: 51A85C
  loc_A25058: ILdI2 KeyAscii
  loc_A2505B: CI4UI1
  loc_A2505C: LitI4 &H20
  loc_A25061: EqI4
  loc_A25062: BranchF loc_A2509F
  loc_A25065: LitVar_Missing var_A4
  loc_A25068: PopAdLdVar
  loc_A25069: LitVarI4
  loc_A25071: PopAdLdVar
  loc_A25072: ImpAdLdRf MemVar_D930A4
  loc_A25075: NewIfNullPr frmCalendario
  loc_A25078: frmCalendario.Show from_stack_1, from_stack_2
  loc_A2507D: ImpAdLdRf MemVar_D93028
  loc_A25080: CDargRef
  loc_A25084: FLdPr Me
  loc_A25087: VCallAd Control_ID_FechActaMsk
  loc_A2508A: FStAdFunc var_A8
  loc_A2508D: FLdPr var_A8
  loc_A25090: LateIdSt
  loc_A25095: FFree1Ad var_A8
  loc_A25098: LitStr vbNullString
  loc_A2509B: ImpAdStStrCopy MemVar_D93028
  loc_A2509F: ExitProcHresult
End Sub

Private Sub BimeCtctMsk_UnknownEvent_0 '9C35C0
  'Data Table: 51A85C
  loc_9C35AC: FLdPr Me
  loc_9C35AF: VCallAd Control_ID_BimeCtctMsk
  loc_9C35B2: CVarAd
  loc_9C35B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C35BB: FFree1Var var_94 = ""
  loc_9C35BE: ExitProcHresult
End Sub

Private Sub BimeCtctMsk_UnknownEvent_8 'A876D8
  'Data Table: 51A85C
  loc_A87648: FLdPr Me
  loc_A8764B: VCallAd Control_ID_BimeCtctMsk
  loc_A8764E: FStAdFunc var_88
  loc_A87651: FLdPr var_88
  loc_A87654: LateIdLdVar var_98 DispID_13 -32767
  loc_A8765B: CBoolVar
  loc_A8765D: FFree1Ad var_88
  loc_A87660: FFree1Var var_98 = ""
  loc_A87663: BranchF loc_A876D6
  loc_A87666: FLdPr Me
  loc_A87669: VCallAd Control_ID_BimeCtctMsk
  loc_A8766C: FStAdFunc var_88
  loc_A8766F: FLdPr var_88
  loc_A87672: LateIdLdVar var_98 DispID_22 0
  loc_A87679: PopAd
  loc_A8767B: LitI2_Byte 0
  loc_A8767D: LitI2_Byte 0
  loc_A8767F: FLdRfVar var_98
  loc_A87682: CStrVarTmp
  loc_A87683: FStStrNoPop var_9C
  loc_A87686: LitStr "bimestre"
  loc_A87689: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A8768E: FStStrNoPop var_A0
  loc_A87691: FLdPr Me
  loc_A87694: MemStStrCopy
  loc_A87698: FFreeStr var_9C = ""
  loc_A8769F: FFree1Ad var_88
  loc_A876A2: FFree1Var var_98 = ""
  loc_A876A5: FLdPr Me
  loc_A876A8: MemLdStr global_64
  loc_A876AB: LitStr vbNullString
  loc_A876AE: NeStr
  loc_A876B0: BranchF loc_A876D6
  loc_A876B3: FLdPr Me
  loc_A876B6: MemLdStr global_64
  loc_A876B9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A876BE: FLdPr Me
  loc_A876C1: VCallAd Control_ID_BimeCtctMsk
  loc_A876C4: CVarAd
  loc_A876C8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A876CD: FFree1Var var_98 = ""
  loc_A876D0: LitI2_Byte &HFF
  loc_A876D2: IStI2 KeyAscii
  loc_A876D5: ExitProcHresult
  loc_A876D6: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9CF6B4
  'Data Table: 51A85C
  loc_9CF69C: ILdRf Me
  loc_9CF69F: FStAdNoPop
  loc_9CF6A3: ImpAdLdRf MemVar_D9C5D8
  loc_9CF6A6: NewIfNullPr Global
  loc_9CF6A9: Global.Unload from_stack_1
  loc_9CF6AE: FFree1Ad var_88
  loc_9CF6B1: ExitProcHresult
End Sub

Private Sub ServDevaFlex_UnknownEvent_8 'B322B4
  'Data Table: 51A85C
  loc_B31FD8: LitI2_Byte 1
  loc_B31FDA: FLdPr Me
  loc_B31FDD: MemLdRfVar from_stack_1.global_68
  loc_B31FE0: FLdPr Me
  loc_B31FE3: VCallAd Control_ID_ServDevaFlex
  loc_B31FE6: FStAdFunc var_88
  loc_B31FE9: FLdPr var_88
  loc_B31FEC: LateIdLdVar var_98 DispID_4 0
  loc_B31FF3: CI4Var
  loc_B31FF5: LitI4 1
  loc_B31FFA: SubI4
  loc_B31FFB: CI2I4
  loc_B31FFC: FFree1Ad var_88
  loc_B31FFF: FFree1Var var_98 = ""
  loc_B32002: ForI2 var_9C
  loc_B32008: FLdPr Me
  loc_B3200B: MemLdI2 global_68
  loc_B3200E: CI4UI1
  loc_B3200F: CVarI4
  loc_B32013: PopAdLdVar
  loc_B32014: LitVarI4
  loc_B3201C: PopAdLdVar
  loc_B3201D: FLdPr Me
  loc_B32020: VCallAd Control_ID_ServDevaFlex
  loc_B32023: FStAdFunc var_88
  loc_B32026: FLdPr var_88
  loc_B32029: LateIdCallLdVar
  loc_B32033: CStrVarTmp
  loc_B32034: CVarStr var_EC
  loc_B32037: ImpAdCallI2 IsNumeric()
  loc_B3203C: FLdPr Me
  loc_B3203F: MemLdI2 global_68
  loc_B32042: CI4UI1
  loc_B32043: CVarI4
  loc_B32047: PopAdLdVar
  loc_B32048: LitVarI4
  loc_B32050: PopAdLdVar
  loc_B32051: FLdPr Me
  loc_B32054: VCallAd Control_ID_ServDevaFlex
  loc_B32057: FStAdFunc var_130
  loc_B3205A: FLdPr var_130
  loc_B3205D: LateIdCallLdVar
  loc_B32067: CStrVarTmp
  loc_B32068: CVarStr var_150
  loc_B3206B: ImpAdCallI2 IsNumeric()
  loc_B32070: AndI4
  loc_B32071: FFreeAd var_88 = ""
  loc_B32078: FFreeVar var_98 = "": var_EC = "": var_140 = ""
  loc_B32083: BranchF loc_B322A2
  loc_B32086: FLdPr Me
  loc_B32089: MemLdI2 global_68
  loc_B3208C: CI4UI1
  loc_B3208D: CVarI4
  loc_B32091: PopAdLdVar
  loc_B32092: LitVarI4
  loc_B3209A: PopAdLdVar
  loc_B3209B: FLdPr Me
  loc_B3209E: VCallAd Control_ID_ServDevaFlex
  loc_B320A1: FStAdFunc var_88
  loc_B320A4: FLdPr var_88
  loc_B320A7: LateIdCallLdVar
  loc_B320B1: PopAd
  loc_B320B3: FLdPr Me
  loc_B320B6: MemLdI2 global_68
  loc_B320B9: CI4UI1
  loc_B320BA: CVarI4
  loc_B320BE: PopAdLdVar
  loc_B320BF: LitVarI4
  loc_B320C7: PopAdLdVar
  loc_B320C8: LitI4 1
  loc_B320CD: LitI4 1
  loc_B320D2: LitVarStr var_10C, "0.00"
  loc_B320D7: FStVarCopyObj var_140
  loc_B320DA: FLdRfVar var_140
  loc_B320DD: FLdRfVar var_98
  loc_B320E0: CStrVarTmp
  loc_B320E1: FStStrNoPop var_154
  loc_B320E4: CR8Str
  loc_B320E6: CVarR8
  loc_B320EA: FLdRfVar var_150
  loc_B320ED: ImpAdCallFPR4  = Format(, )
  loc_B320F2: FLdRfVar var_150
  loc_B320F5: CStrVarTmp
  loc_B320F6: CVarStr var_184
  loc_B320F9: PopAdLdVar
  loc_B320FA: FLdPr Me
  loc_B320FD: VCallAd Control_ID_ServDevaFlex
  loc_B32100: FStAdFunc var_130
  loc_B32103: FLdPr var_130
  loc_B32106: LateIdCallSt
  loc_B3210E: FFree1Str var_154
  loc_B32111: FFreeAd var_88 = ""
  loc_B32118: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B32125: FLdPr Me
  loc_B32128: MemLdI2 global_68
  loc_B3212B: CI4UI1
  loc_B3212C: CVarI4
  loc_B32130: PopAdLdVar
  loc_B32131: LitVarI4
  loc_B32139: PopAdLdVar
  loc_B3213A: FLdPr Me
  loc_B3213D: VCallAd Control_ID_ServDevaFlex
  loc_B32140: FStAdFunc var_88
  loc_B32143: FLdPr var_88
  loc_B32146: LateIdCallLdVar
  loc_B32150: PopAd
  loc_B32152: FLdPr Me
  loc_B32155: MemLdI2 global_68
  loc_B32158: CI4UI1
  loc_B32159: CVarI4
  loc_B3215D: PopAdLdVar
  loc_B3215E: LitVarI4
  loc_B32166: PopAdLdVar
  loc_B32167: LitI4 1
  loc_B3216C: LitI4 1
  loc_B32171: LitVarStr var_10C, "0.00"
  loc_B32176: FStVarCopyObj var_140
  loc_B32179: FLdRfVar var_140
  loc_B3217C: FLdRfVar var_98
  loc_B3217F: CStrVarTmp
  loc_B32180: FStStrNoPop var_154
  loc_B32183: CR8Str
  loc_B32185: CVarR8
  loc_B32189: FLdRfVar var_150
  loc_B3218C: ImpAdCallFPR4  = Format(, )
  loc_B32191: FLdRfVar var_150
  loc_B32194: CStrVarTmp
  loc_B32195: CVarStr var_184
  loc_B32198: PopAdLdVar
  loc_B32199: FLdPr Me
  loc_B3219C: VCallAd Control_ID_ServDevaFlex
  loc_B3219F: FStAdFunc var_130
  loc_B321A2: FLdPr var_130
  loc_B321A5: LateIdCallSt
  loc_B321AD: FFree1Str var_154
  loc_B321B0: FFreeAd var_88 = ""
  loc_B321B7: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = ""
  loc_B321C4: FLdPr Me
  loc_B321C7: MemLdI2 global_68
  loc_B321CA: CI4UI1
  loc_B321CB: CVarI4
  loc_B321CF: PopAdLdVar
  loc_B321D0: LitVarI4
  loc_B321D8: PopAdLdVar
  loc_B321D9: FLdPr Me
  loc_B321DC: VCallAd Control_ID_ServDevaFlex
  loc_B321DF: FStAdFunc var_88
  loc_B321E2: FLdPr var_88
  loc_B321E5: LateIdCallLdVar
  loc_B321EF: PopAd
  loc_B321F1: FLdPr Me
  loc_B321F4: MemLdI2 global_68
  loc_B321F7: CI4UI1
  loc_B321F8: CVarI4
  loc_B321FC: PopAdLdVar
  loc_B321FD: LitVarI4
  loc_B32205: PopAdLdVar
  loc_B32206: FLdPr Me
  loc_B32209: VCallAd Control_ID_ServDevaFlex
  loc_B3220C: FStAdFunc var_130
  loc_B3220F: FLdPr var_130
  loc_B32212: LateIdCallLdVar
  loc_B3221C: PopAd
  loc_B3221E: FLdPr Me
  loc_B32221: MemLdI2 global_68
  loc_B32224: CI4UI1
  loc_B32225: CVarI4
  loc_B32229: PopAdLdVar
  loc_B3222A: LitVarI4
  loc_B32232: PopAdLdVar
  loc_B32233: LitI4 1
  loc_B32238: LitI4 1
  loc_B3223D: LitVarStr var_174, "0.00"
  loc_B32242: FStVarCopyObj var_150
  loc_B32245: FLdRfVar var_150
  loc_B32248: FLdRfVar var_98
  loc_B3224B: CStrVarTmp
  loc_B3224C: FStStrNoPop var_154
  loc_B3224F: CR8Str
  loc_B32251: FLdRfVar var_EC
  loc_B32254: CStrVarTmp
  loc_B32255: FStStrNoPop var_198
  loc_B32258: CR8Str
  loc_B3225A: MulR8
  loc_B3225B: CVarR8
  loc_B3225F: FLdRfVar var_184
  loc_B32262: ImpAdCallFPR4  = Format(, )
  loc_B32267: FLdRfVar var_184
  loc_B3226A: CStrVarTmp
  loc_B3226B: CVarStr var_1D8
  loc_B3226E: PopAdLdVar
  loc_B3226F: FLdPr Me
  loc_B32272: VCallAd Control_ID_ServDevaFlex
  loc_B32275: FStAdFunc var_1EC
  loc_B32278: FLdPr var_1EC
  loc_B3227B: LateIdCallSt
  loc_B32283: FFreeStr var_154 = ""
  loc_B3228A: FFreeAd var_88 = "": var_130 = ""
  loc_B32293: FFreeVar var_98 = "": var_EC = "": var_140 = "": var_150 = "": var_184 = ""
  loc_B322A2: FLdPr Me
  loc_B322A5: MemLdRfVar from_stack_1.global_68
  loc_B322A8: NextI2 var_9C, loc_B32008
  loc_B322AD: Call Proc_275_40_B2C9E8()
  loc_B322B2: ExitProcHresult
End Sub

Private Sub ServDevaFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'B260EC
  'Data Table: 51A85C
  loc_B25E84: ILdI2 KeyCode
  loc_B25E87: CI4UI1
  loc_B25E88: LitI4 &H2E
  loc_B25E8D: EqI4
  loc_B25E8E: BranchF loc_B25EF3
  loc_B25E91: FLdPr Me
  loc_B25E94: VCallAd Control_ID_ServDevaFlex
  loc_B25E97: FStAdFunc var_88
  loc_B25E9A: FLdPr var_88
  loc_B25E9D: LateIdLdVar var_98 DispID_4 0
  loc_B25EA4: CI4Var
  loc_B25EA6: LitI4 1
  loc_B25EAB: GtI4
  loc_B25EAC: FFree1Ad var_88
  loc_B25EAF: FFree1Var var_98 = ""
  loc_B25EB2: BranchF loc_B25EF0
  loc_B25EB5: OnErrorGoto loc_B260BE
  loc_B25EB8: FLdPr Me
  loc_B25EBB: VCallAd Control_ID_ServDevaFlex
  loc_B25EBE: FStAdFunc var_88
  loc_B25EC1: FLdPr var_88
  loc_B25EC4: LateIdLdVar var_98 DispID_10 0
  loc_B25ECB: CI4Var
  loc_B25ECD: CVarI4
  loc_B25ED1: PopAdLdVar
  loc_B25ED2: FLdPr Me
  loc_B25ED5: VCallAd Control_ID_ServDevaFlex
  loc_B25ED8: FStAdFunc var_BC
  loc_B25EDB: FLdPr var_BC
  loc_B25EDE: LateIdCall
  loc_B25EE6: FFreeAd var_88 = ""
  loc_B25EED: FFree1Var var_98 = ""
  loc_B25EF0: Branch loc_B260BE
  loc_B25EF3: ILdI2 KeyCode
  loc_B25EF6: CI4UI1
  loc_B25EF7: LitI4 &H2D
  loc_B25EFC: EqI4
  loc_B25EFD: BranchF loc_B260BE
  loc_B25F00: LitVarStr var_A8, vbNullString
  loc_B25F05: LitI4 9
  loc_B25F0A: FLdRfVar var_98
  loc_B25F0D: ImpAdCallFPR4  = Chr()
  loc_B25F12: FLdRfVar var_98
  loc_B25F15: ConcatVar var_CC
  loc_B25F19: LitVarStr var_B8, vbNullString
  loc_B25F1E: ConcatVar var_DC
  loc_B25F22: LitI4 9
  loc_B25F27: FLdRfVar var_EC
  loc_B25F2A: ImpAdCallFPR4  = Chr()
  loc_B25F2F: FLdRfVar var_EC
  loc_B25F32: ConcatVar var_FC
  loc_B25F36: LitVarStr var_10C, vbNullString
  loc_B25F3B: ConcatVar var_11C
  loc_B25F3F: LitI4 9
  loc_B25F44: FLdRfVar var_12C
  loc_B25F47: ImpAdCallFPR4  = Chr()
  loc_B25F4C: FLdRfVar var_12C
  loc_B25F4F: ConcatVar var_13C
  loc_B25F53: LitVarStr var_14C, vbNullString
  loc_B25F58: ConcatVar var_15C
  loc_B25F5C: LitI4 9
  loc_B25F61: FLdRfVar var_16C
  loc_B25F64: ImpAdCallFPR4  = Chr()
  loc_B25F69: FLdRfVar var_16C
  loc_B25F6C: ConcatVar var_17C
  loc_B25F70: LitVarStr var_18C, vbNullString
  loc_B25F75: ConcatVar var_19C
  loc_B25F79: LitI4 9
  loc_B25F7E: FLdRfVar var_1AC
  loc_B25F81: ImpAdCallFPR4  = Chr()
  loc_B25F86: FLdRfVar var_1AC
  loc_B25F89: ConcatVar var_1BC
  loc_B25F8D: LitVarStr var_1CC, vbNullString
  loc_B25F92: ConcatVar var_1DC
  loc_B25F96: LitI4 9
  loc_B25F9B: FLdRfVar var_1EC
  loc_B25F9E: ImpAdCallFPR4  = Chr()
  loc_B25FA3: FLdRfVar var_1EC
  loc_B25FA6: ConcatVar var_1FC
  loc_B25FAA: LitVarStr var_20C, vbNullString
  loc_B25FAF: ConcatVar var_21C
  loc_B25FB3: LitI4 9
  loc_B25FB8: FLdRfVar var_22C
  loc_B25FBB: ImpAdCallFPR4  = Chr()
  loc_B25FC0: FLdRfVar var_22C
  loc_B25FC3: ConcatVar var_23C
  loc_B25FC7: LitVarStr var_24C, "0"
  loc_B25FCC: ConcatVar var_25C
  loc_B25FD0: LitI4 9
  loc_B25FD5: FLdRfVar var_26C
  loc_B25FD8: ImpAdCallFPR4  = Chr()
  loc_B25FDD: FLdRfVar var_26C
  loc_B25FE0: ConcatVar var_27C
  loc_B25FE4: LitVarStr var_28C, "0"
  loc_B25FE9: ConcatVar var_29C
  loc_B25FED: CStrVarTmp
  loc_B25FEE: FStStrNoPop var_2A0
  loc_B25FF1: FLdPr Me
  loc_B25FF4: MemStStrCopy
  loc_B25FF8: FFree1Str var_2A0
  loc_B25FFB: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = "": var_25C = "": var_26C = "": var_27C = ""
  loc_B2602E: FLdPr Me
  loc_B26031: MemLdRfVar from_stack_1.global_72
  loc_B26034: CDargRef
  loc_B26038: FLdPr Me
  loc_B2603B: VCallAd Control_ID_ServDevaFlex
  loc_B2603E: FStAdFunc var_88
  loc_B26041: FLdPr var_88
  loc_B26044: LateIdCall
  loc_B2604C: FFree1Ad var_88
  loc_B2604F: FLdPr Me
  loc_B26052: VCallAd Control_ID_ServDevaFlex
  loc_B26055: FStAdFunc var_88
  loc_B26058: FLdPr var_88
  loc_B2605B: LateIdLdVar var_98 DispID_10 0
  loc_B26062: CI4Var
  loc_B26064: LitI4 1
  loc_B26069: AddI4
  loc_B2606A: CVarI4
  loc_B2606E: PopAdLdVar
  loc_B2606F: FLdPr Me
  loc_B26072: VCallAd Control_ID_ServDevaFlex
  loc_B26075: FStAdFunc var_BC
  loc_B26078: FLdPr var_BC
  loc_B2607B: LateIdSt
  loc_B26080: FFreeAd var_88 = ""
  loc_B26087: FFree1Var var_98 = ""
  loc_B2608A: LitVarI4
  loc_B26092: PopAdLdVar
  loc_B26093: FLdPr Me
  loc_B26096: VCallAd Control_ID_ServDevaFlex
  loc_B26099: FStAdFunc var_88
  loc_B2609C: FLdPr var_88
  loc_B2609F: LateIdSt
  loc_B260A4: FFree1Ad var_88
  loc_B260A7: FLdPr Me
  loc_B260AA: VCallAd Control_ID_ServDevaFlex
  loc_B260AD: FStAdFunc var_88
  loc_B260B0: FLdPr var_88
  loc_B260B3: LateIdCall
  loc_B260BB: FFree1Ad var_88
  loc_B260BE: FLdRfVar var_2A4
  loc_B260C1: ImpAdCallI2 Err 'rtcErrObj
  loc_B260C6: FStAdFunc var_88
  loc_B260C9: FLdPr var_88
  loc_B260CC:  = Err.Number
  loc_B260D1: ILdRf var_2A4
  loc_B260D4: LitI4 &H753F
  loc_B260D9: EqI4
  loc_B260DA: FFree1Ad var_88
  loc_B260DD: BranchF loc_B260E5
  loc_B260E0: Call Proc_275_39_B3B03C()
  loc_B260E5: Call Proc_275_40_B2C9E8()
  loc_B260EA: ExitProcHresult
End Sub

Private Sub ServDevaFlex_KeyPress(KeyAscii As Integer) 'C536A0
  'Data Table: 51A85C
  loc_C52854: ILdI2 KeyAscii
  loc_C52857: LitI2_Byte 8
  loc_C52859: EqI2
  loc_C5285A: BranchF loc_C52A5A
  loc_C5285D: FLdPr Me
  loc_C52860: VCallAd Control_ID_ServDevaFlex
  loc_C52863: FStAdFunc var_88
  loc_C52866: FLdPr var_88
  loc_C52869: LateIdLdVar var_98 DispID_11 0
  loc_C52870: CI4Var
  loc_C52872: LitI4 0
  loc_C52877: EqI4
  loc_C52878: FLdPr Me
  loc_C5287B: VCallAd Control_ID_ServDevaFlex
  loc_C5287E: FStAdFunc var_9C
  loc_C52881: FLdPr var_9C
  loc_C52884: LateIdLdVar var_AC DispID_11 0
  loc_C5288B: CI4Var
  loc_C5288D: LitI4 1
  loc_C52892: EqI4
  loc_C52893: OrI4
  loc_C52894: FFreeAd var_88 = ""
  loc_C5289B: FFreeVar var_98 = ""
  loc_C528A2: BranchF loc_C52941
  loc_C528A5: FLdPr Me
  loc_C528A8: VCallAd Control_ID_ServDevaFlex
  loc_C528AB: FStAdFunc var_88
  loc_C528AE: FLdPr var_88
  loc_C528B1: LateIdLdVar var_98 DispID_0 0
  loc_C528B8: CStrVarTmp
  loc_C528B9: FStStrNoPop var_B0
  loc_C528BC: LitStr vbNullString
  loc_C528BF: NeStr
  loc_C528C1: FFree1Str var_B0
  loc_C528C4: FFree1Ad var_88
  loc_C528C7: FFree1Var var_98 = ""
  loc_C528CA: BranchF loc_C52941
  loc_C528CD: FLdPr Me
  loc_C528D0: VCallAd Control_ID_ServDevaFlex
  loc_C528D3: FStAdFunc var_88
  loc_C528D6: FLdPr var_88
  loc_C528D9: LateIdLdVar var_98 DispID_0 0
  loc_C528E0: PopAd
  loc_C528E2: FLdPr Me
  loc_C528E5: VCallAd Control_ID_ServDevaFlex
  loc_C528E8: FStAdFunc var_9C
  loc_C528EB: FLdPr var_9C
  loc_C528EE: LateIdLdVar var_AC DispID_0 0
  loc_C528F5: CStrVarTmp
  loc_C528F6: FStStrNoPop var_B0
  loc_C528F9: FnLenStr
  loc_C528FA: LitI4 1
  loc_C528FF: SubI4
  loc_C52900: FLdRfVar var_98
  loc_C52903: CStrVarTmp
  loc_C52904: CVarStr var_C0
  loc_C52907: FLdRfVar var_D0
  loc_C5290A: ImpAdCallFPR4  = Left(, )
  loc_C5290F: FLdRfVar var_D0
  loc_C52912: CStrVarTmp
  loc_C52913: CVarStr var_E0
  loc_C52916: PopAdLdVar
  loc_C52917: FLdPr Me
  loc_C5291A: VCallAd Control_ID_ServDevaFlex
  loc_C5291D: FStAdFunc var_F4
  loc_C52920: FLdPr var_F4
  loc_C52923: LateIdSt
  loc_C52928: FFree1Str var_B0
  loc_C5292B: FFreeAd var_88 = "": var_9C = ""
  loc_C52934: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C52941: FLdPr Me
  loc_C52944: VCallAd Control_ID_ServDevaFlex
  loc_C52947: FStAdFunc var_88
  loc_C5294A: FLdPr var_88
  loc_C5294D: LateIdLdVar var_98 DispID_11 0
  loc_C52954: CI4Var
  loc_C52956: LitI4 3
  loc_C5295B: EqI4
  loc_C5295C: FFree1Ad var_88
  loc_C5295F: FFree1Var var_98 = ""
  loc_C52962: BranchF loc_C52A57
  loc_C52965: FLdPr Me
  loc_C52968: VCallAd Control_ID_ServDevaFlex
  loc_C5296B: FStAdFunc var_88
  loc_C5296E: FLdPr var_88
  loc_C52971: LateIdLdVar var_98 DispID_10 0
  loc_C52978: CI4Var
  loc_C5297A: CVarI4
  loc_C5297E: PopAdLdVar
  loc_C5297F: LitVarI4
  loc_C52987: PopAdLdVar
  loc_C52988: FLdPr Me
  loc_C5298B: VCallAd Control_ID_ServDevaFlex
  loc_C5298E: FStAdFunc var_9C
  loc_C52991: FLdPr var_9C
  loc_C52994: LateIdCallLdVar
  loc_C5299E: CStrVarTmp
  loc_C5299F: FStStrNoPop var_B0
  loc_C529A2: LitStr "1"
  loc_C529A5: EqStr
  loc_C529A7: FFree1Str var_B0
  loc_C529AA: FFreeAd var_88 = ""
  loc_C529B1: FFreeVar var_98 = ""
  loc_C529B8: BranchF loc_C52A57
  loc_C529BB: FLdPr Me
  loc_C529BE: VCallAd Control_ID_ServDevaFlex
  loc_C529C1: FStAdFunc var_88
  loc_C529C4: FLdPr var_88
  loc_C529C7: LateIdLdVar var_98 DispID_0 0
  loc_C529CE: CStrVarTmp
  loc_C529CF: FStStrNoPop var_B0
  loc_C529D2: LitStr vbNullString
  loc_C529D5: NeStr
  loc_C529D7: FFree1Str var_B0
  loc_C529DA: FFree1Ad var_88
  loc_C529DD: FFree1Var var_98 = ""
  loc_C529E0: BranchF loc_C52A57
  loc_C529E3: FLdPr Me
  loc_C529E6: VCallAd Control_ID_ServDevaFlex
  loc_C529E9: FStAdFunc var_88
  loc_C529EC: FLdPr var_88
  loc_C529EF: LateIdLdVar var_98 DispID_0 0
  loc_C529F6: PopAd
  loc_C529F8: FLdPr Me
  loc_C529FB: VCallAd Control_ID_ServDevaFlex
  loc_C529FE: FStAdFunc var_9C
  loc_C52A01: FLdPr var_9C
  loc_C52A04: LateIdLdVar var_AC DispID_0 0
  loc_C52A0B: CStrVarTmp
  loc_C52A0C: FStStrNoPop var_B0
  loc_C52A0F: FnLenStr
  loc_C52A10: LitI4 1
  loc_C52A15: SubI4
  loc_C52A16: FLdRfVar var_98
  loc_C52A19: CStrVarTmp
  loc_C52A1A: CVarStr var_C0
  loc_C52A1D: FLdRfVar var_D0
  loc_C52A20: ImpAdCallFPR4  = Left(, )
  loc_C52A25: FLdRfVar var_D0
  loc_C52A28: CStrVarTmp
  loc_C52A29: CVarStr var_E0
  loc_C52A2C: PopAdLdVar
  loc_C52A2D: FLdPr Me
  loc_C52A30: VCallAd Control_ID_ServDevaFlex
  loc_C52A33: FStAdFunc var_F4
  loc_C52A36: FLdPr var_F4
  loc_C52A39: LateIdSt
  loc_C52A3E: FFree1Str var_B0
  loc_C52A41: FFreeAd var_88 = "": var_9C = ""
  loc_C52A4A: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_C52A57: Branch loc_C5369F
  loc_C52A5A: ILdI2 KeyAscii
  loc_C52A5D: LitI2_Byte &H20
  loc_C52A5F: EqI2
  loc_C52A60: BranchF loc_C533EA
  loc_C52A63: FLdPr Me
  loc_C52A66: VCallAd Control_ID_ServDevaFlex
  loc_C52A69: FStAdFunc var_88
  loc_C52A6C: FLdPr var_88
  loc_C52A6F: LateIdLdVar var_98 DispID_11 0
  loc_C52A76: CI4Var
  loc_C52A78: LitI4 1
  loc_C52A7D: EqI4
  loc_C52A7E: FLdPr Me
  loc_C52A81: VCallAd Control_ID_ServDevaFlex
  loc_C52A84: FStAdFunc var_9C
  loc_C52A87: FLdPr var_9C
  loc_C52A8A: LateIdLdVar var_AC DispID_11 0
  loc_C52A91: CI4Var
  loc_C52A93: LitI4 2
  loc_C52A98: EqI4
  loc_C52A99: OrI4
  loc_C52A9A: FFreeAd var_88 = ""
  loc_C52AA1: FFreeVar var_98 = ""
  loc_C52AA8: BranchF loc_C533E2
  loc_C52AAB: LitStr "1"
  loc_C52AAE: CUI1Str
  loc_C52AB0: ImpAdLdRf MemVar_D94A24
  loc_C52AB3: NewIfNullPr dlgBuscarServDeva
  loc_C52AB6: Call dlgBuscarServDeva.byCtctSedePut(from_stack_1v)
  loc_C52ABB: ImpAdLdUI1
  loc_C52ABF: ImpAdLdRf MemVar_D94A24
  loc_C52AC2: NewIfNullPr dlgBuscarServDeva
  loc_C52AC5: Call dlgBuscarServDeva.byCodiOficPut(from_stack_1v)
  loc_C52ACA: LitVar_Missing var_104
  loc_C52ACD: PopAdLdVar
  loc_C52ACE: LitVarI4
  loc_C52AD6: PopAdLdVar
  loc_C52AD7: ImpAdLdRf MemVar_D94A24
  loc_C52ADA: NewIfNullPr dlgBuscarServDeva
  loc_C52ADD: dlgBuscarServDeva.Show from_stack_1, from_stack_2
  loc_C52AE2: FLdRfVar var_128
  loc_C52AE5: FLdRfVar var_9C
  loc_C52AE8: FLdRfVar var_88
  loc_C52AEB: ImpAdLdRf MemVar_D94A24
  loc_C52AEE: NewIfNullPr dlgBuscarServDeva
  loc_C52AF1: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52AF6: FLdPr var_88
  loc_C52AF9: from_stack_1v = clsbase.RsFrmGet()
  loc_C52AFE: FLdPr var_9C
  loc_C52B01:  = Me.RecordCount
  loc_C52B06: ILdRf var_128
  loc_C52B09: LitI4 0
  loc_C52B0E: GtI4
  loc_C52B0F: FFreeAd var_88 = ""
  loc_C52B16: BranchF loc_C533E2
  loc_C52B19: FLdRfVar var_98
  loc_C52B1C: FLdRfVar var_12C
  loc_C52B1F: LitVarStr var_F0, "PeriInfo"
  loc_C52B24: PopAdLdVar
  loc_C52B25: FLdRfVar var_F4
  loc_C52B28: FLdRfVar var_9C
  loc_C52B2B: FLdRfVar var_88
  loc_C52B2E: ImpAdLdRf MemVar_D94A24
  loc_C52B31: NewIfNullPr dlgBuscarServDeva
  loc_C52B34: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52B39: FLdPr var_88
  loc_C52B3C: from_stack_1v = clsbase.RsFrmGet()
  loc_C52B41: FLdPr var_9C
  loc_C52B44:  = Me.Fields
  loc_C52B49: FLdPr var_F4
  loc_C52B4C: from_stack_2 = Me.Item(from_stack_1)
  loc_C52B51: FLdPr var_12C
  loc_C52B54:  = Me.Value
  loc_C52B59: FLdRfVar var_98
  loc_C52B5C: FnCIntVar
  loc_C52B5E: ImpAdLdI2 MemVar_D93034
  loc_C52B61: NeI2
  loc_C52B62: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C52B6D: FFree1Var var_98 = ""
  loc_C52B70: BranchF loc_C52B93
  loc_C52B73: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_C52B76: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C52B7B: FLdPr Me
  loc_C52B7E: VCallAd Control_ID_ServDevaFlex
  loc_C52B81: FStAdFunc var_88
  loc_C52B84: FLdPr var_88
  loc_C52B87: LateIdCall
  loc_C52B8F: FFree1Ad var_88
  loc_C52B92: ExitProcHresult
  loc_C52B93: FLdRfVar var_98
  loc_C52B96: FLdRfVar var_12C
  loc_C52B99: LitVarStr var_F0, "PeriInfo"
  loc_C52B9E: PopAdLdVar
  loc_C52B9F: FLdRfVar var_F4
  loc_C52BA2: FLdRfVar var_9C
  loc_C52BA5: FLdRfVar var_88
  loc_C52BA8: ImpAdLdRf MemVar_D94A24
  loc_C52BAB: NewIfNullPr dlgBuscarServDeva
  loc_C52BAE: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52BB3: FLdPr var_88
  loc_C52BB6: from_stack_1v = clsbase.RsFrmGet()
  loc_C52BBB: FLdPr var_9C
  loc_C52BBE:  = Me.Fields
  loc_C52BC3: FLdPr var_F4
  loc_C52BC6: from_stack_2 = Me.Item(from_stack_1)
  loc_C52BCB: FLdPr var_12C
  loc_C52BCE:  = Me.Value
  loc_C52BD3: FLdRfVar var_AC
  loc_C52BD6: FLdRfVar var_13C
  loc_C52BD9: LitVarStr var_104, "CodiConc"
  loc_C52BDE: PopAdLdVar
  loc_C52BDF: FLdRfVar var_138
  loc_C52BE2: FLdRfVar var_134
  loc_C52BE5: FLdRfVar var_130
  loc_C52BE8: ImpAdLdRf MemVar_D94A24
  loc_C52BEB: NewIfNullPr dlgBuscarServDeva
  loc_C52BEE: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52BF3: FLdPr var_130
  loc_C52BF6: from_stack_1v = clsbase.RsFrmGet()
  loc_C52BFB: FLdPr var_134
  loc_C52BFE:  = Me.Fields
  loc_C52C03: FLdPr var_138
  loc_C52C06: from_stack_2 = Me.Item(from_stack_1)
  loc_C52C0B: FLdPr var_13C
  loc_C52C0E:  = Me.Value
  loc_C52C13: FLdRfVar var_AC
  loc_C52C16: CStrVarTmp
  loc_C52C17: FStStrNoPop var_B0
  loc_C52C1A: FLdRfVar var_98
  loc_C52C1D: CI2Var
  loc_C52C1E: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_C52C23: FStStrNoPop var_140
  loc_C52C26: LitStr vbNullString
  loc_C52C29: EqStr
  loc_C52C2B: FFreeStr var_B0 = ""
  loc_C52C32: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_134 = "": var_138 = "": var_12C = ""
  loc_C52C45: FFreeVar var_98 = ""
  loc_C52C4C: BranchF loc_C52CC5
  loc_C52C4F: LitVarStr var_104, "El recurso: "
  loc_C52C54: FLdRfVar var_98
  loc_C52C57: FLdRfVar var_12C
  loc_C52C5A: LitVarStr var_F0, "CodiConc"
  loc_C52C5F: PopAdLdVar
  loc_C52C60: FLdRfVar var_F4
  loc_C52C63: FLdRfVar var_9C
  loc_C52C66: FLdRfVar var_88
  loc_C52C69: ImpAdLdRf MemVar_D94A24
  loc_C52C6C: NewIfNullPr dlgBuscarServDeva
  loc_C52C6F: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52C74: FLdPr var_88
  loc_C52C77: from_stack_1v = clsbase.RsFrmGet()
  loc_C52C7C: FLdPr var_9C
  loc_C52C7F:  = Me.Fields
  loc_C52C84: FLdPr var_F4
  loc_C52C87: from_stack_2 = Me.Item(from_stack_1)
  loc_C52C8C: FLdPr var_12C
  loc_C52C8F:  = Me.Value
  loc_C52C94: FLdRfVar var_98
  loc_C52C97: ConcatVar var_AC
  loc_C52C9B: LitVarStr var_114, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_C52CA0: ConcatVar var_C0
  loc_C52CA4: CStrVarVal var_B0
  loc_C52CA8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C52CAD: FFree1Str var_B0
  loc_C52CB0: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C52CBB: FFreeVar var_98 = "": var_AC = ""
  loc_C52CC4: ExitProcHresult
  loc_C52CC5: FLdRfVar var_98
  loc_C52CC8: FLdRfVar var_12C
  loc_C52CCB: LitVarStr var_F0, "TiafConc"
  loc_C52CD0: PopAdLdVar
  loc_C52CD1: FLdRfVar var_F4
  loc_C52CD4: FLdRfVar var_9C
  loc_C52CD7: FLdRfVar var_88
  loc_C52CDA: ImpAdLdRf MemVar_D94A24
  loc_C52CDD: NewIfNullPr dlgBuscarServDeva
  loc_C52CE0: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52CE5: FLdPr var_88
  loc_C52CE8: from_stack_1v = clsbase.RsFrmGet()
  loc_C52CED: FLdPr var_9C
  loc_C52CF0:  = Me.Fields
  loc_C52CF5: FLdPr var_F4
  loc_C52CF8: from_stack_2 = Me.Item(from_stack_1)
  loc_C52CFD: FLdPr var_12C
  loc_C52D00:  = Me.Value
  loc_C52D05: FLdRfVar var_98
  loc_C52D08: LitVarI2 var_104, 0
  loc_C52D0D: HardType
  loc_C52D0E: EqVarBool
  loc_C52D10: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C52D1B: FFree1Var var_98 = ""
  loc_C52D1E: BranchF loc_C52D2A
  loc_C52D21: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_C52D24: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C52D29: ExitProcHresult
  loc_C52D2A: FLdPr Me
  loc_C52D2D: VCallAd Control_ID_ServDevaFlex
  loc_C52D30: FStAdFunc var_130
  loc_C52D33: FLdPr var_130
  loc_C52D36: LateIdLdVar var_98 DispID_10 0
  loc_C52D3D: CI4Var
  loc_C52D3F: CVarI4
  loc_C52D43: PopAdLdVar
  loc_C52D44: LitVarI4
  loc_C52D4C: PopAdLdVar
  loc_C52D4D: FLdRfVar var_AC
  loc_C52D50: FLdRfVar var_12C
  loc_C52D53: LitVarStr var_F0, "CodiSede"
  loc_C52D58: PopAdLdVar
  loc_C52D59: FLdRfVar var_F4
  loc_C52D5C: FLdRfVar var_9C
  loc_C52D5F: FLdRfVar var_88
  loc_C52D62: ImpAdLdRf MemVar_D94A24
  loc_C52D65: NewIfNullPr dlgBuscarServDeva
  loc_C52D68: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52D6D: FLdPr var_88
  loc_C52D70: from_stack_1v = clsbase.RsFrmGet()
  loc_C52D75: FLdPr var_9C
  loc_C52D78:  = Me.Fields
  loc_C52D7D: FLdPr var_F4
  loc_C52D80: from_stack_2 = Me.Item(from_stack_1)
  loc_C52D85: FLdPr var_12C
  loc_C52D88:  = Me.Value
  loc_C52D8D: FLdRfVar var_AC
  loc_C52D90: CStrVarTmp
  loc_C52D91: CVarStr var_C0
  loc_C52D94: PopAdLdVar
  loc_C52D95: FLdPr Me
  loc_C52D98: VCallAd Control_ID_ServDevaFlex
  loc_C52D9B: FStAdFunc var_134
  loc_C52D9E: FLdPr var_134
  loc_C52DA1: LateIdCallSt
  loc_C52DA9: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C52DB8: FFreeVar var_98 = "": var_AC = ""
  loc_C52DC1: FLdPr Me
  loc_C52DC4: VCallAd Control_ID_ServDevaFlex
  loc_C52DC7: FStAdFunc var_130
  loc_C52DCA: FLdPr var_130
  loc_C52DCD: LateIdLdVar var_98 DispID_10 0
  loc_C52DD4: CI4Var
  loc_C52DD6: CVarI4
  loc_C52DDA: PopAdLdVar
  loc_C52DDB: LitVarI4
  loc_C52DE3: PopAdLdVar
  loc_C52DE4: FLdRfVar var_AC
  loc_C52DE7: FLdRfVar var_12C
  loc_C52DEA: LitVarStr var_F0, "DetaSede"
  loc_C52DEF: PopAdLdVar
  loc_C52DF0: FLdRfVar var_F4
  loc_C52DF3: FLdRfVar var_9C
  loc_C52DF6: FLdRfVar var_88
  loc_C52DF9: ImpAdLdRf MemVar_D94A24
  loc_C52DFC: NewIfNullPr dlgBuscarServDeva
  loc_C52DFF: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52E04: FLdPr var_88
  loc_C52E07: from_stack_1v = clsbase.RsFrmGet()
  loc_C52E0C: FLdPr var_9C
  loc_C52E0F:  = Me.Fields
  loc_C52E14: FLdPr var_F4
  loc_C52E17: from_stack_2 = Me.Item(from_stack_1)
  loc_C52E1C: FLdPr var_12C
  loc_C52E1F:  = Me.Value
  loc_C52E24: FLdRfVar var_AC
  loc_C52E27: CStrVarTmp
  loc_C52E28: CVarStr var_C0
  loc_C52E2B: PopAdLdVar
  loc_C52E2C: FLdPr Me
  loc_C52E2F: VCallAd Control_ID_ServDevaFlex
  loc_C52E32: FStAdFunc var_134
  loc_C52E35: FLdPr var_134
  loc_C52E38: LateIdCallSt
  loc_C52E40: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C52E4F: FFreeVar var_98 = "": var_AC = ""
  loc_C52E58: FLdRfVar var_12C
  loc_C52E5B: LitVarStr var_F0, "ImpoSede"
  loc_C52E60: PopAdLdVar
  loc_C52E61: FLdRfVar var_F4
  loc_C52E64: FLdRfVar var_9C
  loc_C52E67: FLdRfVar var_88
  loc_C52E6A: ImpAdLdRf MemVar_D94A24
  loc_C52E6D: NewIfNullPr dlgBuscarServDeva
  loc_C52E70: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C52E75: FLdPr var_88
  loc_C52E78: from_stack_1v = clsbase.RsFrmGet()
  loc_C52E7D: FLdPr var_9C
  loc_C52E80:  = Me.Fields
  loc_C52E85: FLdPr var_F4
  loc_C52E88: from_stack_2 = Me.Item(from_stack_1)
  loc_C52E8D: FLdPr Me
  loc_C52E90: VCallAd Control_ID_ServDevaFlex
  loc_C52E93: FStAdFunc var_130
  loc_C52E96: FLdPr var_130
  loc_C52E99: LateIdLdVar var_D0 DispID_10 0
  loc_C52EA0: CI4Var
  loc_C52EA2: CVarI4
  loc_C52EA6: PopAdLdVar
  loc_C52EA7: LitVarI4
  loc_C52EAF: PopAdLdVar
  loc_C52EB0: LitI4 1
  loc_C52EB5: LitI4 1
  loc_C52EBA: LitVarStr var_104, "0.00"
  loc_C52EBF: FStVarCopyObj var_AC
  loc_C52EC2: FLdRfVar var_AC
  loc_C52EC5: FLdZeroAd var_12C
  loc_C52EC8: CVarAd
  loc_C52ECC: FLdRfVar var_C0
  loc_C52ECF: ImpAdCallFPR4  = Format(, )
  loc_C52ED4: FLdRfVar var_C0
  loc_C52ED7: CStrVarTmp
  loc_C52ED8: CVarStr var_E0
  loc_C52EDB: PopAdLdVar
  loc_C52EDC: FLdPr Me
  loc_C52EDF: VCallAd Control_ID_ServDevaFlex
  loc_C52EE2: FStAdFunc var_134
  loc_C52EE5: FLdPr var_134
  loc_C52EE8: LateIdCallSt
  loc_C52EF0: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = ""
  loc_C52EFD: FFreeVar var_98 = "": var_AC = "": var_D0 = "": var_C0 = ""
  loc_C52F0A: FLdPr Me
  loc_C52F0D: VCallAd Control_ID_ServDevaFlex
  loc_C52F10: FStAdFunc var_88
  loc_C52F13: FLdPr var_88
  loc_C52F16: LateIdLdVar var_98 DispID_10 0
  loc_C52F1D: CI4Var
  loc_C52F1F: CVarI4
  loc_C52F23: PopAdLdVar
  loc_C52F24: LitVarI4
  loc_C52F2C: PopAdLdVar
  loc_C52F2D: FLdPr Me
  loc_C52F30: VCallAd Control_ID_ServDevaFlex
  loc_C52F33: FStAdFunc var_9C
  loc_C52F36: FLdPr var_9C
  loc_C52F39: LateIdCallLdVar
  loc_C52F43: CStrVarTmp
  loc_C52F44: CVarStr var_C0
  loc_C52F47: ImpAdCallI2 IsNumeric()
  loc_C52F4C: FLdPr Me
  loc_C52F4F: VCallAd Control_ID_ServDevaFlex
  loc_C52F52: FStAdFunc var_F4
  loc_C52F55: FLdPr var_F4
  loc_C52F58: LateIdLdVar var_D0 DispID_10 0
  loc_C52F5F: CI4Var
  loc_C52F61: CVarI4
  loc_C52F65: PopAdLdVar
  loc_C52F66: LitVarI4
  loc_C52F6E: PopAdLdVar
  loc_C52F6F: FLdPr Me
  loc_C52F72: VCallAd Control_ID_ServDevaFlex
  loc_C52F75: FStAdFunc var_12C
  loc_C52F78: FLdPr var_12C
  loc_C52F7B: LateIdCallLdVar
  loc_C52F85: CStrVarTmp
  loc_C52F86: CVarStr var_190
  loc_C52F89: ImpAdCallI2 IsNumeric()
  loc_C52F8E: AndI4
  loc_C52F8F: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C52F9A: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = ""
  loc_C52FA9: BranchF loc_C530C3
  loc_C52FAC: FLdPr Me
  loc_C52FAF: VCallAd Control_ID_ServDevaFlex
  loc_C52FB2: FStAdFunc var_88
  loc_C52FB5: FLdPr var_88
  loc_C52FB8: LateIdLdVar var_98 DispID_10 0
  loc_C52FBF: CI4Var
  loc_C52FC1: CVarI4
  loc_C52FC5: PopAdLdVar
  loc_C52FC6: LitVarI4
  loc_C52FCE: PopAdLdVar
  loc_C52FCF: FLdPr Me
  loc_C52FD2: VCallAd Control_ID_ServDevaFlex
  loc_C52FD5: FStAdFunc var_9C
  loc_C52FD8: FLdPr var_9C
  loc_C52FDB: LateIdCallLdVar
  loc_C52FE5: PopAd
  loc_C52FE7: FLdPr Me
  loc_C52FEA: VCallAd Control_ID_ServDevaFlex
  loc_C52FED: FStAdFunc var_F4
  loc_C52FF0: FLdPr var_F4
  loc_C52FF3: LateIdLdVar var_C0 DispID_10 0
  loc_C52FFA: CI4Var
  loc_C52FFC: CVarI4
  loc_C53000: PopAdLdVar
  loc_C53001: LitVarI4
  loc_C53009: PopAdLdVar
  loc_C5300A: FLdPr Me
  loc_C5300D: VCallAd Control_ID_ServDevaFlex
  loc_C53010: FStAdFunc var_12C
  loc_C53013: FLdPr var_12C
  loc_C53016: LateIdCallLdVar
  loc_C53020: PopAd
  loc_C53022: FLdPr Me
  loc_C53025: VCallAd Control_ID_ServDevaFlex
  loc_C53028: FStAdFunc var_130
  loc_C5302B: FLdPr var_130
  loc_C5302E: LateIdLdVar var_1D0 DispID_10 0
  loc_C53035: CI4Var
  loc_C53037: CVarI4
  loc_C5303B: PopAdLdVar
  loc_C5303C: LitVarI4
  loc_C53044: PopAdLdVar
  loc_C53045: LitI4 1
  loc_C5304A: LitI4 1
  loc_C5304F: LitVarStr var_1B0, "0.00"
  loc_C53054: FStVarCopyObj var_190
  loc_C53057: FLdRfVar var_190
  loc_C5305A: FLdRfVar var_AC
  loc_C5305D: CStrVarTmp
  loc_C5305E: FStStrNoPop var_B0
  loc_C53061: CR8Str
  loc_C53063: FLdRfVar var_D0
  loc_C53066: CStrVarTmp
  loc_C53067: FStStrNoPop var_140
  loc_C5306A: CR8Str
  loc_C5306C: MulR8
  loc_C5306D: CVarR8
  loc_C53071: FLdRfVar var_1C0
  loc_C53074: ImpAdCallFPR4  = Format(, )
  loc_C53079: FLdRfVar var_1C0
  loc_C5307C: CStrVarTmp
  loc_C5307D: CVarStr var_220
  loc_C53080: PopAdLdVar
  loc_C53081: FLdPr Me
  loc_C53084: VCallAd Control_ID_ServDevaFlex
  loc_C53087: FStAdFunc var_134
  loc_C5308A: FLdPr var_134
  loc_C5308D: LateIdCallSt
  loc_C53095: FFreeStr var_B0 = ""
  loc_C5309C: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_12C = "": var_130 = ""
  loc_C530AB: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = "": var_190 = "": var_1D0 = "": var_1C0 = ""
  loc_C530C0: Branch loc_C53186
  loc_C530C3: FLdPr Me
  loc_C530C6: VCallAd Control_ID_ServDevaFlex
  loc_C530C9: FStAdFunc var_88
  loc_C530CC: FLdPr var_88
  loc_C530CF: LateIdLdVar var_98 DispID_10 0
  loc_C530D6: CI4Var
  loc_C530D8: CVarI4
  loc_C530DC: PopAdLdVar
  loc_C530DD: LitVarI4
  loc_C530E5: PopAdLdVar
  loc_C530E6: FLdPr Me
  loc_C530E9: VCallAd Control_ID_ServDevaFlex
  loc_C530EC: FStAdFunc var_9C
  loc_C530EF: FLdPr var_9C
  loc_C530F2: LateIdCallLdVar
  loc_C530FC: PopAd
  loc_C530FE: FLdPr Me
  loc_C53101: VCallAd Control_ID_ServDevaFlex
  loc_C53104: FStAdFunc var_F4
  loc_C53107: FLdPr var_F4
  loc_C5310A: LateIdLdVar var_190 DispID_10 0
  loc_C53111: CI4Var
  loc_C53113: CVarI4
  loc_C53117: PopAdLdVar
  loc_C53118: LitVarI4
  loc_C53120: PopAdLdVar
  loc_C53121: LitI4 1
  loc_C53126: LitI4 1
  loc_C5312B: LitVarStr var_160, "0.00"
  loc_C53130: FStVarCopyObj var_D0
  loc_C53133: FLdRfVar var_D0
  loc_C53136: FLdRfVar var_AC
  loc_C53139: CStrVarTmp
  loc_C5313A: FStStrNoPop var_B0
  loc_C5313D: CR8Str
  loc_C5313F: CVarR8
  loc_C53143: FLdRfVar var_E0
  loc_C53146: ImpAdCallFPR4  = Format(, )
  loc_C5314B: FLdRfVar var_E0
  loc_C5314E: CStrVarTmp
  loc_C5314F: CVarStr var_1C0
  loc_C53152: PopAdLdVar
  loc_C53153: FLdPr Me
  loc_C53156: VCallAd Control_ID_ServDevaFlex
  loc_C53159: FStAdFunc var_12C
  loc_C5315C: FLdPr var_12C
  loc_C5315F: LateIdCallSt
  loc_C53167: FFree1Str var_B0
  loc_C5316A: FFreeAd var_88 = "": var_9C = "": var_F4 = ""
  loc_C53175: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_190 = "": var_E0 = ""
  loc_C53186: FLdPr Me
  loc_C53189: VCallAd Control_ID_ServDevaFlex
  loc_C5318C: FStAdFunc var_130
  loc_C5318F: FLdPr var_130
  loc_C53192: LateIdLdVar var_98 DispID_10 0
  loc_C53199: CI4Var
  loc_C5319B: CVarI4
  loc_C5319F: PopAdLdVar
  loc_C531A0: LitVarI4
  loc_C531A8: PopAdLdVar
  loc_C531A9: FLdRfVar var_AC
  loc_C531AC: FLdRfVar var_12C
  loc_C531AF: LitVarStr var_F0, "PeriInfo"
  loc_C531B4: PopAdLdVar
  loc_C531B5: FLdRfVar var_F4
  loc_C531B8: FLdRfVar var_9C
  loc_C531BB: FLdRfVar var_88
  loc_C531BE: ImpAdLdRf MemVar_D94A24
  loc_C531C1: NewIfNullPr dlgBuscarServDeva
  loc_C531C4: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C531C9: FLdPr var_88
  loc_C531CC: from_stack_1v = clsbase.RsFrmGet()
  loc_C531D1: FLdPr var_9C
  loc_C531D4:  = Me.Fields
  loc_C531D9: FLdPr var_F4
  loc_C531DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C531E1: FLdPr var_12C
  loc_C531E4:  = Me.Value
  loc_C531E9: FLdRfVar var_AC
  loc_C531EC: CStrVarTmp
  loc_C531ED: CVarStr var_C0
  loc_C531F0: PopAdLdVar
  loc_C531F1: FLdPr Me
  loc_C531F4: VCallAd Control_ID_ServDevaFlex
  loc_C531F7: FStAdFunc var_134
  loc_C531FA: FLdPr var_134
  loc_C531FD: LateIdCallSt
  loc_C53205: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C53214: FFreeVar var_98 = "": var_AC = ""
  loc_C5321D: FLdPr Me
  loc_C53220: VCallAd Control_ID_ServDevaFlex
  loc_C53223: FStAdFunc var_130
  loc_C53226: FLdPr var_130
  loc_C53229: LateIdLdVar var_98 DispID_10 0
  loc_C53230: CI4Var
  loc_C53232: CVarI4
  loc_C53236: PopAdLdVar
  loc_C53237: LitVarI4
  loc_C5323F: PopAdLdVar
  loc_C53240: FLdRfVar var_AC
  loc_C53243: FLdRfVar var_12C
  loc_C53246: LitVarStr var_F0, "CodiConc"
  loc_C5324B: PopAdLdVar
  loc_C5324C: FLdRfVar var_F4
  loc_C5324F: FLdRfVar var_9C
  loc_C53252: FLdRfVar var_88
  loc_C53255: ImpAdLdRf MemVar_D94A24
  loc_C53258: NewIfNullPr dlgBuscarServDeva
  loc_C5325B: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C53260: FLdPr var_88
  loc_C53263: from_stack_1v = clsbase.RsFrmGet()
  loc_C53268: FLdPr var_9C
  loc_C5326B:  = Me.Fields
  loc_C53270: FLdPr var_F4
  loc_C53273: from_stack_2 = Me.Item(from_stack_1)
  loc_C53278: FLdPr var_12C
  loc_C5327B:  = Me.Value
  loc_C53280: FLdRfVar var_AC
  loc_C53283: CStrVarTmp
  loc_C53284: CVarStr var_C0
  loc_C53287: PopAdLdVar
  loc_C53288: FLdPr Me
  loc_C5328B: VCallAd Control_ID_ServDevaFlex
  loc_C5328E: FStAdFunc var_134
  loc_C53291: FLdPr var_134
  loc_C53294: LateIdCallSt
  loc_C5329C: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C532AB: FFreeVar var_98 = "": var_AC = ""
  loc_C532B4: FLdPr Me
  loc_C532B7: VCallAd Control_ID_ServDevaFlex
  loc_C532BA: FStAdFunc var_130
  loc_C532BD: FLdPr var_130
  loc_C532C0: LateIdLdVar var_98 DispID_10 0
  loc_C532C7: CI4Var
  loc_C532C9: CVarI4
  loc_C532CD: PopAdLdVar
  loc_C532CE: LitVarI4
  loc_C532D6: PopAdLdVar
  loc_C532D7: FLdRfVar var_AC
  loc_C532DA: FLdRfVar var_12C
  loc_C532DD: LitVarStr var_F0, "VariSede"
  loc_C532E2: PopAdLdVar
  loc_C532E3: FLdRfVar var_F4
  loc_C532E6: FLdRfVar var_9C
  loc_C532E9: FLdRfVar var_88
  loc_C532EC: ImpAdLdRf MemVar_D94A24
  loc_C532EF: NewIfNullPr dlgBuscarServDeva
  loc_C532F2: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C532F7: FLdPr var_88
  loc_C532FA: from_stack_1v = clsbase.RsFrmGet()
  loc_C532FF: FLdPr var_9C
  loc_C53302:  = Me.Fields
  loc_C53307: FLdPr var_F4
  loc_C5330A: from_stack_2 = Me.Item(from_stack_1)
  loc_C5330F: FLdPr var_12C
  loc_C53312:  = Me.Value
  loc_C53317: FLdRfVar var_AC
  loc_C5331A: CStrVarTmp
  loc_C5331B: CVarStr var_C0
  loc_C5331E: PopAdLdVar
  loc_C5331F: FLdPr Me
  loc_C53322: VCallAd Control_ID_ServDevaFlex
  loc_C53325: FStAdFunc var_134
  loc_C53328: FLdPr var_134
  loc_C5332B: LateIdCallSt
  loc_C53333: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C53342: FFreeVar var_98 = "": var_AC = ""
  loc_C5334B: FLdPr Me
  loc_C5334E: VCallAd Control_ID_ServDevaFlex
  loc_C53351: FStAdFunc var_130
  loc_C53354: FLdPr var_130
  loc_C53357: LateIdLdVar var_98 DispID_10 0
  loc_C5335E: CI4Var
  loc_C53360: CVarI4
  loc_C53364: PopAdLdVar
  loc_C53365: LitVarI4
  loc_C5336D: PopAdLdVar
  loc_C5336E: FLdRfVar var_AC
  loc_C53371: FLdRfVar var_12C
  loc_C53374: LitVarStr var_F0, "TiafConc"
  loc_C53379: PopAdLdVar
  loc_C5337A: FLdRfVar var_F4
  loc_C5337D: FLdRfVar var_9C
  loc_C53380: FLdRfVar var_88
  loc_C53383: ImpAdLdRf MemVar_D94A24
  loc_C53386: NewIfNullPr dlgBuscarServDeva
  loc_C53389: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_C5338E: FLdPr var_88
  loc_C53391: from_stack_1v = clsbase.RsFrmGet()
  loc_C53396: FLdPr var_9C
  loc_C53399:  = Me.Fields
  loc_C5339E: FLdPr var_F4
  loc_C533A1: from_stack_2 = Me.Item(from_stack_1)
  loc_C533A6: FLdPr var_12C
  loc_C533A9:  = Me.Value
  loc_C533AE: FLdRfVar var_AC
  loc_C533B1: CStrVarTmp
  loc_C533B2: CVarStr var_C0
  loc_C533B5: PopAdLdVar
  loc_C533B6: FLdPr Me
  loc_C533B9: VCallAd Control_ID_ServDevaFlex
  loc_C533BC: FStAdFunc var_134
  loc_C533BF: FLdPr var_134
  loc_C533C2: LateIdCallSt
  loc_C533CA: FFreeAd var_88 = "": var_9C = "": var_F4 = "": var_130 = "": var_12C = ""
  loc_C533D9: FFreeVar var_98 = "": var_AC = ""
  loc_C533E2: Call Proc_275_40_B2C9E8()
  loc_C533E7: Branch loc_C5369F
  loc_C533EA: FLdPr Me
  loc_C533ED: VCallAd Control_ID_ServDevaFlex
  loc_C533F0: FStAdFunc var_88
  loc_C533F3: FLdPr var_88
  loc_C533F6: LateIdLdVar var_98 DispID_11 0
  loc_C533FD: CI4Var
  loc_C533FF: LitI4 0
  loc_C53404: EqI4
  loc_C53405: FFree1Ad var_88
  loc_C53408: FFree1Var var_98 = ""
  loc_C5340B: BranchF loc_C534BD
  loc_C5340E: FLdPr Me
  loc_C53411: VCallAd Control_ID_ServDevaFlex
  loc_C53414: FStAdFunc var_88
  loc_C53417: FLdPr var_88
  loc_C5341A: LateIdLdVar var_98 DispID_0 0
  loc_C53421: CStrVarTmp
  loc_C53422: FStStrNoPop var_B0
  loc_C53425: FnLenStr
  loc_C53426: LitI4 4
  loc_C5342B: LeI4
  loc_C5342C: FFree1Str var_B0
  loc_C5342F: FFree1Ad var_88
  loc_C53432: FFree1Var var_98 = ""
  loc_C53435: BranchF loc_C534BD
  loc_C53438: LitStr "1234567890,."
  loc_C5343B: FStStrCopy var_B0
  loc_C5343E: FLdRfVar var_B0
  loc_C53441: ILdRf KeyAscii
  loc_C53444: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C53449: IStI2 KeyAscii
  loc_C5344C: FFree1Str var_B0
  loc_C5344F: ILdI2 KeyAscii
  loc_C53452: LitStr "."
  loc_C53455: ImpAdCallI2 Asc()
  loc_C5345A: EqI2
  loc_C5345B: BranchF loc_C53469
  loc_C5345E: LitStr ","
  loc_C53461: ImpAdCallI2 Asc()
  loc_C53466: IStI2 KeyAscii
  loc_C53469: FLdPr Me
  loc_C5346C: VCallAd Control_ID_ServDevaFlex
  loc_C5346F: FStAdFunc var_88
  loc_C53472: FLdPr var_88
  loc_C53475: LateIdLdVar var_98 DispID_0 0
  loc_C5347C: CStrVarTmp
  loc_C5347D: CVarStr var_C0
  loc_C53480: ILdI2 KeyAscii
  loc_C53483: CI4UI1
  loc_C53484: FLdRfVar var_AC
  loc_C53487: ImpAdCallFPR4  = Chr()
  loc_C5348C: FLdRfVar var_AC
  loc_C5348F: AddVar var_D0
  loc_C53493: CStrVarTmp
  loc_C53494: CVarStr var_E0
  loc_C53497: PopAdLdVar
  loc_C53498: FLdPr Me
  loc_C5349B: VCallAd Control_ID_ServDevaFlex
  loc_C5349E: FStAdFunc var_9C
  loc_C534A1: FLdPr var_9C
  loc_C534A4: LateIdSt
  loc_C534A9: FFreeAd var_88 = ""
  loc_C534B0: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C534BD: FLdPr Me
  loc_C534C0: VCallAd Control_ID_ServDevaFlex
  loc_C534C3: FStAdFunc var_88
  loc_C534C6: FLdPr var_88
  loc_C534C9: LateIdLdVar var_98 DispID_11 0
  loc_C534D0: CI4Var
  loc_C534D2: LitI4 1
  loc_C534D7: EqI4
  loc_C534D8: FFree1Ad var_88
  loc_C534DB: FFree1Var var_98 = ""
  loc_C534DE: BranchF loc_C53576
  loc_C534E1: FLdPr Me
  loc_C534E4: VCallAd Control_ID_ServDevaFlex
  loc_C534E7: FStAdFunc var_88
  loc_C534EA: FLdPr var_88
  loc_C534ED: LateIdLdVar var_98 DispID_0 0
  loc_C534F4: CStrVarTmp
  loc_C534F5: FStStrNoPop var_B0
  loc_C534F8: FnLenStr
  loc_C534F9: LitI4 4
  loc_C534FE: LeI4
  loc_C534FF: FFree1Str var_B0
  loc_C53502: FFree1Ad var_88
  loc_C53505: FFree1Var var_98 = ""
  loc_C53508: BranchF loc_C53576
  loc_C5350B: LitStr "1234567890"
  loc_C5350E: FStStrCopy var_B0
  loc_C53511: FLdRfVar var_B0
  loc_C53514: ILdRf KeyAscii
  loc_C53517: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C5351C: IStI2 KeyAscii
  loc_C5351F: FFree1Str var_B0
  loc_C53522: FLdPr Me
  loc_C53525: VCallAd Control_ID_ServDevaFlex
  loc_C53528: FStAdFunc var_88
  loc_C5352B: FLdPr var_88
  loc_C5352E: LateIdLdVar var_98 DispID_0 0
  loc_C53535: CStrVarTmp
  loc_C53536: CVarStr var_C0
  loc_C53539: ILdI2 KeyAscii
  loc_C5353C: CI4UI1
  loc_C5353D: FLdRfVar var_AC
  loc_C53540: ImpAdCallFPR4  = Chr()
  loc_C53545: FLdRfVar var_AC
  loc_C53548: AddVar var_D0
  loc_C5354C: CStrVarTmp
  loc_C5354D: CVarStr var_E0
  loc_C53550: PopAdLdVar
  loc_C53551: FLdPr Me
  loc_C53554: VCallAd Control_ID_ServDevaFlex
  loc_C53557: FStAdFunc var_9C
  loc_C5355A: FLdPr var_9C
  loc_C5355D: LateIdSt
  loc_C53562: FFreeAd var_88 = ""
  loc_C53569: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C53576: FLdPr Me
  loc_C53579: VCallAd Control_ID_ServDevaFlex
  loc_C5357C: FStAdFunc var_88
  loc_C5357F: FLdPr var_88
  loc_C53582: LateIdLdVar var_98 DispID_11 0
  loc_C53589: CI4Var
  loc_C5358B: LitI4 3
  loc_C53590: EqI4
  loc_C53591: FFree1Ad var_88
  loc_C53594: FFree1Var var_98 = ""
  loc_C53597: BranchF loc_C5369F
  loc_C5359A: FLdPr Me
  loc_C5359D: VCallAd Control_ID_ServDevaFlex
  loc_C535A0: FStAdFunc var_88
  loc_C535A3: FLdPr var_88
  loc_C535A6: LateIdLdVar var_98 DispID_10 0
  loc_C535AD: CI4Var
  loc_C535AF: CVarI4
  loc_C535B3: PopAdLdVar
  loc_C535B4: LitVarI4
  loc_C535BC: PopAdLdVar
  loc_C535BD: FLdPr Me
  loc_C535C0: VCallAd Control_ID_ServDevaFlex
  loc_C535C3: FStAdFunc var_9C
  loc_C535C6: FLdPr var_9C
  loc_C535C9: LateIdCallLdVar
  loc_C535D3: CStrVarTmp
  loc_C535D4: FStStrNoPop var_B0
  loc_C535D7: LitStr "1"
  loc_C535DA: EqStr
  loc_C535DC: FFree1Str var_B0
  loc_C535DF: FFreeAd var_88 = ""
  loc_C535E6: FFreeVar var_98 = ""
  loc_C535ED: BranchF loc_C5369F
  loc_C535F0: FLdPr Me
  loc_C535F3: VCallAd Control_ID_ServDevaFlex
  loc_C535F6: FStAdFunc var_88
  loc_C535F9: FLdPr var_88
  loc_C535FC: LateIdLdVar var_98 DispID_0 0
  loc_C53603: CStrVarTmp
  loc_C53604: FStStrNoPop var_B0
  loc_C53607: FnLenStr
  loc_C53608: LitI4 &HA
  loc_C5360D: LeI4
  loc_C5360E: FFree1Str var_B0
  loc_C53611: FFree1Ad var_88
  loc_C53614: FFree1Var var_98 = ""
  loc_C53617: BranchF loc_C5369F
  loc_C5361A: LitStr "1234567890,."
  loc_C5361D: FStStrCopy var_B0
  loc_C53620: FLdRfVar var_B0
  loc_C53623: ILdRf KeyAscii
  loc_C53626: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_C5362B: IStI2 KeyAscii
  loc_C5362E: FFree1Str var_B0
  loc_C53631: ILdI2 KeyAscii
  loc_C53634: LitStr "."
  loc_C53637: ImpAdCallI2 Asc()
  loc_C5363C: EqI2
  loc_C5363D: BranchF loc_C5364B
  loc_C53640: LitStr ","
  loc_C53643: ImpAdCallI2 Asc()
  loc_C53648: IStI2 KeyAscii
  loc_C5364B: FLdPr Me
  loc_C5364E: VCallAd Control_ID_ServDevaFlex
  loc_C53651: FStAdFunc var_88
  loc_C53654: FLdPr var_88
  loc_C53657: LateIdLdVar var_98 DispID_0 0
  loc_C5365E: CStrVarTmp
  loc_C5365F: CVarStr var_C0
  loc_C53662: ILdI2 KeyAscii
  loc_C53665: CI4UI1
  loc_C53666: FLdRfVar var_AC
  loc_C53669: ImpAdCallFPR4  = Chr()
  loc_C5366E: FLdRfVar var_AC
  loc_C53671: AddVar var_D0
  loc_C53675: CStrVarTmp
  loc_C53676: CVarStr var_E0
  loc_C53679: PopAdLdVar
  loc_C5367A: FLdPr Me
  loc_C5367D: VCallAd Control_ID_ServDevaFlex
  loc_C53680: FStAdFunc var_9C
  loc_C53683: FLdPr var_9C
  loc_C53686: LateIdSt
  loc_C5368B: FFreeAd var_88 = ""
  loc_C53692: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_C5369F: ExitProcHresult
End Sub

Private Sub ServDevaFlex_LeaveCell() 'CBDFEC
  'Data Table: 51A85C
  loc_CBBD48: FLdPr Me
  loc_CBBD4B: VCallAd Control_ID_ServDevaFlex
  loc_CBBD4E: FStAdFunc var_88
  loc_CBBD51: FLdPr var_88
  loc_CBBD54: LateIdLdVar var_98 DispID_11 0
  loc_CBBD5B: CI4Var
  loc_CBBD5D: LitI4 0
  loc_CBBD62: EqI4
  loc_CBBD63: FFree1Ad var_88
  loc_CBBD66: FFree1Var var_98 = ""
  loc_CBBD69: BranchF loc_CBC082
  loc_CBBD6C: FLdPr Me
  loc_CBBD6F: VCallAd Control_ID_ServDevaFlex
  loc_CBBD72: FStAdFunc var_88
  loc_CBBD75: FLdPr var_88
  loc_CBBD78: LateIdLdVar var_98 DispID_10 0
  loc_CBBD7F: CI4Var
  loc_CBBD81: CVarI4
  loc_CBBD85: PopAdLdVar
  loc_CBBD86: LitVarI4
  loc_CBBD8E: PopAdLdVar
  loc_CBBD8F: FLdPr Me
  loc_CBBD92: VCallAd Control_ID_ServDevaFlex
  loc_CBBD95: FStAdFunc var_DC
  loc_CBBD98: FLdPr var_DC
  loc_CBBD9B: LateIdCallLdVar
  loc_CBBDA5: CStrVarTmp
  loc_CBBDA6: CVarStr var_FC
  loc_CBBDA9: ImpAdCallI2 IsNumeric()
  loc_CBBDAE: NotI4
  loc_CBBDAF: FFreeAd var_88 = ""
  loc_CBBDB6: FFreeVar var_98 = "": var_EC = ""
  loc_CBBDBF: BranchF loc_CBBE09
  loc_CBBDC2: FLdPr Me
  loc_CBBDC5: VCallAd Control_ID_ServDevaFlex
  loc_CBBDC8: FStAdFunc var_88
  loc_CBBDCB: FLdPr var_88
  loc_CBBDCE: LateIdLdVar var_98 DispID_10 0
  loc_CBBDD5: CI4Var
  loc_CBBDD7: CVarI4
  loc_CBBDDB: PopAdLdVar
  loc_CBBDDC: LitVarI4
  loc_CBBDE4: PopAdLdVar
  loc_CBBDE5: LitVarStr var_10C, "1"
  loc_CBBDEA: PopAdLdVar
  loc_CBBDEB: FLdPr Me
  loc_CBBDEE: VCallAd Control_ID_ServDevaFlex
  loc_CBBDF1: FStAdFunc var_DC
  loc_CBBDF4: FLdPr var_DC
  loc_CBBDF7: LateIdCallSt
  loc_CBBDFF: FFreeAd var_88 = ""
  loc_CBBE06: FFree1Var var_98 = ""
  loc_CBBE09: FLdPr Me
  loc_CBBE0C: VCallAd Control_ID_ServDevaFlex
  loc_CBBE0F: FStAdFunc var_88
  loc_CBBE12: FLdPr var_88
  loc_CBBE15: LateIdLdVar var_98 DispID_10 0
  loc_CBBE1C: CI4Var
  loc_CBBE1E: CVarI4
  loc_CBBE22: PopAdLdVar
  loc_CBBE23: LitVarI4
  loc_CBBE2B: PopAdLdVar
  loc_CBBE2C: FLdPr Me
  loc_CBBE2F: VCallAd Control_ID_ServDevaFlex
  loc_CBBE32: FStAdFunc var_DC
  loc_CBBE35: FLdPr var_DC
  loc_CBBE38: LateIdCallLdVar
  loc_CBBE42: CStrVarTmp
  loc_CBBE43: CVarStr var_FC
  loc_CBBE46: ImpAdCallI2 IsNumeric()
  loc_CBBE4B: FLdPr Me
  loc_CBBE4E: VCallAd Control_ID_ServDevaFlex
  loc_CBBE51: FStAdFunc var_120
  loc_CBBE54: FLdPr var_120
  loc_CBBE57: LateIdLdVar var_130 DispID_10 0
  loc_CBBE5E: CI4Var
  loc_CBBE60: CVarI4
  loc_CBBE64: PopAdLdVar
  loc_CBBE65: LitVarI4
  loc_CBBE6D: PopAdLdVar
  loc_CBBE6E: FLdPr Me
  loc_CBBE71: VCallAd Control_ID_ServDevaFlex
  loc_CBBE74: FStAdFunc var_154
  loc_CBBE77: FLdPr var_154
  loc_CBBE7A: LateIdCallLdVar
  loc_CBBE84: CStrVarTmp
  loc_CBBE85: CVarStr var_174
  loc_CBBE88: ImpAdCallI2 IsNumeric()
  loc_CBBE8D: AndI4
  loc_CBBE8E: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBBE99: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBBEA8: BranchF loc_CBBFBF
  loc_CBBEAB: FLdPr Me
  loc_CBBEAE: VCallAd Control_ID_ServDevaFlex
  loc_CBBEB1: FStAdFunc var_88
  loc_CBBEB4: FLdPr var_88
  loc_CBBEB7: LateIdLdVar var_98 DispID_10 0
  loc_CBBEBE: CI4Var
  loc_CBBEC0: CVarI4
  loc_CBBEC4: PopAdLdVar
  loc_CBBEC5: LitVarI4
  loc_CBBECD: PopAdLdVar
  loc_CBBECE: FLdPr Me
  loc_CBBED1: VCallAd Control_ID_ServDevaFlex
  loc_CBBED4: FStAdFunc var_DC
  loc_CBBED7: FLdPr var_DC
  loc_CBBEDA: LateIdCallLdVar
  loc_CBBEE4: PopAd
  loc_CBBEE6: FLdPr Me
  loc_CBBEE9: VCallAd Control_ID_ServDevaFlex
  loc_CBBEEC: FStAdFunc var_120
  loc_CBBEEF: FLdPr var_120
  loc_CBBEF2: LateIdLdVar var_FC DispID_10 0
  loc_CBBEF9: CI4Var
  loc_CBBEFB: CVarI4
  loc_CBBEFF: PopAdLdVar
  loc_CBBF00: LitVarI4
  loc_CBBF08: PopAdLdVar
  loc_CBBF09: FLdPr Me
  loc_CBBF0C: VCallAd Control_ID_ServDevaFlex
  loc_CBBF0F: FStAdFunc var_154
  loc_CBBF12: FLdPr var_154
  loc_CBBF15: LateIdCallLdVar
  loc_CBBF1F: PopAd
  loc_CBBF21: FLdPr Me
  loc_CBBF24: VCallAd Control_ID_ServDevaFlex
  loc_CBBF27: FStAdFunc var_1B0
  loc_CBBF2A: FLdPr var_1B0
  loc_CBBF2D: LateIdLdVar var_1C0 DispID_10 0
  loc_CBBF34: CI4Var
  loc_CBBF36: CVarI4
  loc_CBBF3A: PopAdLdVar
  loc_CBBF3B: LitVarI4
  loc_CBBF43: PopAdLdVar
  loc_CBBF44: LitI4 1
  loc_CBBF49: LitI4 1
  loc_CBBF4E: LitVarStr var_19C, "0.00"
  loc_CBBF53: FStVarCopyObj var_174
  loc_CBBF56: FLdRfVar var_174
  loc_CBBF59: FLdRfVar var_EC
  loc_CBBF5C: CStrVarTmp
  loc_CBBF5D: FStStrNoPop var_178
  loc_CBBF60: CR8Str
  loc_CBBF62: FLdRfVar var_130
  loc_CBBF65: CStrVarTmp
  loc_CBBF66: FStStrNoPop var_17C
  loc_CBBF69: CR8Str
  loc_CBBF6B: MulR8
  loc_CBBF6C: CVarR8
  loc_CBBF70: FLdRfVar var_1AC
  loc_CBBF73: ImpAdCallFPR4  = Format(, )
  loc_CBBF78: FLdRfVar var_1AC
  loc_CBBF7B: CStrVarTmp
  loc_CBBF7C: CVarStr var_210
  loc_CBBF7F: PopAdLdVar
  loc_CBBF80: FLdPr Me
  loc_CBBF83: VCallAd Control_ID_ServDevaFlex
  loc_CBBF86: FStAdFunc var_224
  loc_CBBF89: FLdPr var_224
  loc_CBBF8C: LateIdCallSt
  loc_CBBF94: FFreeStr var_178 = ""
  loc_CBBF9B: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBBFAA: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBBFBF: FLdPr Me
  loc_CBBFC2: VCallAd Control_ID_ServDevaFlex
  loc_CBBFC5: FStAdFunc var_88
  loc_CBBFC8: FLdPr var_88
  loc_CBBFCB: LateIdLdVar var_98 DispID_10 0
  loc_CBBFD2: CI4Var
  loc_CBBFD4: CVarI4
  loc_CBBFD8: PopAdLdVar
  loc_CBBFD9: LitVarI4
  loc_CBBFE1: PopAdLdVar
  loc_CBBFE2: FLdPr Me
  loc_CBBFE5: VCallAd Control_ID_ServDevaFlex
  loc_CBBFE8: FStAdFunc var_DC
  loc_CBBFEB: FLdPr var_DC
  loc_CBBFEE: LateIdCallLdVar
  loc_CBBFF8: PopAd
  loc_CBBFFA: FLdPr Me
  loc_CBBFFD: VCallAd Control_ID_ServDevaFlex
  loc_CBC000: FStAdFunc var_120
  loc_CBC003: FLdPr var_120
  loc_CBC006: LateIdLdVar var_174 DispID_10 0
  loc_CBC00D: CI4Var
  loc_CBC00F: CVarI4
  loc_CBC013: PopAdLdVar
  loc_CBC014: LitVarI4
  loc_CBC01C: PopAdLdVar
  loc_CBC01D: LitI4 1
  loc_CBC022: LitI4 1
  loc_CBC027: LitVarStr var_11C, "0.00"
  loc_CBC02C: FStVarCopyObj var_130
  loc_CBC02F: FLdRfVar var_130
  loc_CBC032: FLdRfVar var_EC
  loc_CBC035: CStrVarTmp
  loc_CBC036: FStStrNoPop var_178
  loc_CBC039: CR8Str
  loc_CBC03B: CVarR8
  loc_CBC03F: FLdRfVar var_164
  loc_CBC042: ImpAdCallFPR4  = Format(, )
  loc_CBC047: FLdRfVar var_164
  loc_CBC04A: CStrVarTmp
  loc_CBC04B: CVarStr var_1AC
  loc_CBC04E: PopAdLdVar
  loc_CBC04F: FLdPr Me
  loc_CBC052: VCallAd Control_ID_ServDevaFlex
  loc_CBC055: FStAdFunc var_154
  loc_CBC058: FLdPr var_154
  loc_CBC05B: LateIdCallSt
  loc_CBC063: FFree1Str var_178
  loc_CBC066: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBC071: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBC082: FLdPr Me
  loc_CBC085: VCallAd Control_ID_ServDevaFlex
  loc_CBC088: FStAdFunc var_88
  loc_CBC08B: FLdPr var_88
  loc_CBC08E: LateIdLdVar var_98 DispID_11 0
  loc_CBC095: CI4Var
  loc_CBC097: LitI4 1
  loc_CBC09C: EqI4
  loc_CBC09D: FFree1Ad var_88
  loc_CBC0A0: FFree1Var var_98 = ""
  loc_CBC0A3: BranchF loc_CBDC63
  loc_CBC0A6: FLdPr Me
  loc_CBC0A9: VCallAd Control_ID_ServDevaFlex
  loc_CBC0AC: FStAdFunc var_88
  loc_CBC0AF: FLdPr var_88
  loc_CBC0B2: LateIdLdVar var_98 DispID_10 0
  loc_CBC0B9: CI4Var
  loc_CBC0BB: CVarI4
  loc_CBC0BF: PopAdLdVar
  loc_CBC0C0: LitVarI4
  loc_CBC0C8: PopAdLdVar
  loc_CBC0C9: FLdPr Me
  loc_CBC0CC: VCallAd Control_ID_ServDevaFlex
  loc_CBC0CF: FStAdFunc var_DC
  loc_CBC0D2: FLdPr var_DC
  loc_CBC0D5: LateIdCallLdVar
  loc_CBC0DF: CStrVarTmp
  loc_CBC0E0: CVarStr var_FC
  loc_CBC0E3: ImpAdCallI2 IsNumeric()
  loc_CBC0E8: FFreeAd var_88 = ""
  loc_CBC0EF: FFreeVar var_98 = "": var_EC = ""
  loc_CBC0F8: BranchF loc_CBDC63
  loc_CBC0FB: ImpAdLdUI1
  loc_CBC0FF: CI2UI1
  loc_CBC101: LitI2_Byte 1
  loc_CBC103: EqI2
  loc_CBC104: BranchF loc_CBCE8E
  loc_CBC107: LitStr "SELECT DetaSeca, ImpoSede * UntrPage as ImpoSede, concepto.PeriInfo, servcata.CodiConc, concepto.TiafConc FROM servcata "
  loc_CBC10A: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CBC10D: ConcatStr
  loc_CBC10E: FStStrNoPop var_178
  loc_CBC111: ImpAdLdI2 MemVar_D93034
  loc_CBC114: CStrUI1
  loc_CBC116: FStStrNoPop var_17C
  loc_CBC119: ConcatStr
  loc_CBC11A: FStStrNoPop var_228
  loc_CBC11D: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_CBC120: ConcatStr
  loc_CBC121: FStStrNoPop var_22C
  loc_CBC124: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CBC127: ConcatStr
  loc_CBC128: FStStrNoPop var_230
  loc_CBC12B: LitStr " WHERE servcata.PeriOrde = "
  loc_CBC12E: ConcatStr
  loc_CBC12F: FStStrNoPop var_234
  loc_CBC132: ImpAdLdI2 MemVar_D93036
  loc_CBC135: CStrUI1
  loc_CBC137: FStStrNoPop var_238
  loc_CBC13A: ConcatStr
  loc_CBC13B: FStStrNoPop var_23C
  loc_CBC13E: LitStr " AND CodiSeca = "
  loc_CBC141: ConcatStr
  loc_CBC142: FStStrNoPop var_240
  loc_CBC145: FLdPr Me
  loc_CBC148: VCallAd Control_ID_ServDevaFlex
  loc_CBC14B: FStAdFunc var_88
  loc_CBC14E: FLdPr var_88
  loc_CBC151: LateIdLdVar var_98 DispID_10 0
  loc_CBC158: CI4Var
  loc_CBC15A: CVarI4
  loc_CBC15E: PopAdLdVar
  loc_CBC15F: LitVarI4
  loc_CBC167: PopAdLdVar
  loc_CBC168: FLdPr Me
  loc_CBC16B: VCallAd Control_ID_ServDevaFlex
  loc_CBC16E: FStAdFunc var_DC
  loc_CBC171: FLdPr var_DC
  loc_CBC174: LateIdCallLdVar
  loc_CBC17E: CStrVarTmp
  loc_CBC17F: FStStrNoPop var_244
  loc_CBC182: ConcatStr
  loc_CBC183: FStStrNoPop var_248
  loc_CBC186: FLdPr Me
  loc_CBC189: MemLdRfVar from_stack_1.global_56
  loc_CBC18C: NewIfNullPr clsservdeva
  loc_CBC18F: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CBC194: FFreeStr var_178 = "": var_17C = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = ""
  loc_CBC1AD: FFreeAd var_88 = ""
  loc_CBC1B4: FFreeVar var_98 = ""
  loc_CBC1BB: FLdRfVar var_24C
  loc_CBC1BE: FLdRfVar var_88
  loc_CBC1C1: FLdPr Me
  loc_CBC1C4: MemLdRfVar from_stack_1.global_56
  loc_CBC1C7: NewIfNullPr clsservdeva
  loc_CBC1CA: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC1CF: FLdPr var_88
  loc_CBC1D2:  = Me.RecordCount
  loc_CBC1D7: ILdRf var_24C
  loc_CBC1DA: LitI4 0
  loc_CBC1DF: GtI4
  loc_CBC1E0: FFree1Ad var_88
  loc_CBC1E3: BranchF loc_CBCC9D
  loc_CBC1E6: FLdRfVar var_98
  loc_CBC1E9: FLdRfVar var_120
  loc_CBC1EC: LitVarStr var_A8, "PeriInfo"
  loc_CBC1F1: PopAdLdVar
  loc_CBC1F2: FLdRfVar var_DC
  loc_CBC1F5: FLdRfVar var_88
  loc_CBC1F8: FLdPr Me
  loc_CBC1FB: MemLdRfVar from_stack_1.global_56
  loc_CBC1FE: NewIfNullPr clsservdeva
  loc_CBC201: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC206: FLdPr var_88
  loc_CBC209:  = Me.Fields
  loc_CBC20E: FLdPr var_DC
  loc_CBC211: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC216: FLdPr var_120
  loc_CBC219:  = Me.Value
  loc_CBC21E: FLdRfVar var_98
  loc_CBC221: FnCIntVar
  loc_CBC223: ImpAdLdI2 MemVar_D93034
  loc_CBC226: NeI2
  loc_CBC227: FFreeAd var_88 = "": var_DC = ""
  loc_CBC230: FFree1Var var_98 = ""
  loc_CBC233: BranchF loc_CBC259
  loc_CBC236: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CBC239: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBC23E: FLdPr Me
  loc_CBC241: VCallAd Control_ID_ServDevaFlex
  loc_CBC244: FStAdFunc var_88
  loc_CBC247: FLdPr var_88
  loc_CBC24A: LateIdCall
  loc_CBC252: FFree1Ad var_88
  loc_CBC255: ExitProcHresult
  loc_CBC256: Branch loc_CBCC9A
  loc_CBC259: FLdRfVar var_98
  loc_CBC25C: FLdRfVar var_120
  loc_CBC25F: LitVarStr var_A8, "PeriInfo"
  loc_CBC264: PopAdLdVar
  loc_CBC265: FLdRfVar var_DC
  loc_CBC268: FLdRfVar var_88
  loc_CBC26B: FLdPr Me
  loc_CBC26E: MemLdRfVar from_stack_1.global_56
  loc_CBC271: NewIfNullPr clsservdeva
  loc_CBC274: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC279: FLdPr var_88
  loc_CBC27C:  = Me.Fields
  loc_CBC281: FLdPr var_DC
  loc_CBC284: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC289: FLdPr var_120
  loc_CBC28C:  = Me.Value
  loc_CBC291: FLdRfVar var_EC
  loc_CBC294: FLdRfVar var_224
  loc_CBC297: LitVarStr var_B8, "CodiConc"
  loc_CBC29C: PopAdLdVar
  loc_CBC29D: FLdRfVar var_1B0
  loc_CBC2A0: FLdRfVar var_154
  loc_CBC2A3: FLdPr Me
  loc_CBC2A6: MemLdRfVar from_stack_1.global_56
  loc_CBC2A9: NewIfNullPr clsservdeva
  loc_CBC2AC: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC2B1: FLdPr var_154
  loc_CBC2B4:  = Me.Fields
  loc_CBC2B9: FLdPr var_1B0
  loc_CBC2BC: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC2C1: FLdPr var_224
  loc_CBC2C4:  = Me.Value
  loc_CBC2C9: FLdRfVar var_EC
  loc_CBC2CC: CStrVarTmp
  loc_CBC2CD: FStStrNoPop var_178
  loc_CBC2D0: FLdRfVar var_98
  loc_CBC2D3: CI2Var
  loc_CBC2D4: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CBC2D9: FStStrNoPop var_17C
  loc_CBC2DC: LitStr vbNullString
  loc_CBC2DF: EqStr
  loc_CBC2E1: FFreeStr var_178 = ""
  loc_CBC2E8: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_1B0 = "": var_120 = ""
  loc_CBC2F7: FFreeVar var_98 = ""
  loc_CBC2FE: BranchF loc_CBC370
  loc_CBC301: LitVarStr var_B8, "El recurso: "
  loc_CBC306: FLdRfVar var_98
  loc_CBC309: FLdRfVar var_120
  loc_CBC30C: LitVarStr var_A8, "CodiConc"
  loc_CBC311: PopAdLdVar
  loc_CBC312: FLdRfVar var_DC
  loc_CBC315: FLdRfVar var_88
  loc_CBC318: FLdPr Me
  loc_CBC31B: MemLdRfVar from_stack_1.global_56
  loc_CBC31E: NewIfNullPr clsservdeva
  loc_CBC321: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC326: FLdPr var_88
  loc_CBC329:  = Me.Fields
  loc_CBC32E: FLdPr var_DC
  loc_CBC331: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC336: FLdPr var_120
  loc_CBC339:  = Me.Value
  loc_CBC33E: FLdRfVar var_98
  loc_CBC341: ConcatVar var_EC
  loc_CBC345: LitVarStr var_C8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBC34A: ConcatVar var_FC
  loc_CBC34E: CStrVarVal var_178
  loc_CBC352: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBC357: FFree1Str var_178
  loc_CBC35A: FFreeAd var_88 = "": var_DC = ""
  loc_CBC363: FFreeVar var_98 = "": var_EC = ""
  loc_CBC36C: ExitProcHresult
  loc_CBC36D: Branch loc_CBCC9A
  loc_CBC370: FLdRfVar var_98
  loc_CBC373: FLdRfVar var_120
  loc_CBC376: LitVarStr var_A8, "TiafConc"
  loc_CBC37B: PopAdLdVar
  loc_CBC37C: FLdRfVar var_DC
  loc_CBC37F: FLdRfVar var_88
  loc_CBC382: FLdPr Me
  loc_CBC385: MemLdRfVar from_stack_1.global_56
  loc_CBC388: NewIfNullPr clsservdeva
  loc_CBC38B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC390: FLdPr var_88
  loc_CBC393:  = Me.Fields
  loc_CBC398: FLdPr var_DC
  loc_CBC39B: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC3A0: FLdPr var_120
  loc_CBC3A3:  = Me.Value
  loc_CBC3A8: FLdRfVar var_98
  loc_CBC3AB: LitVarI2 var_B8, 0
  loc_CBC3B0: HardType
  loc_CBC3B1: EqVarBool
  loc_CBC3B3: FFreeAd var_88 = "": var_DC = ""
  loc_CBC3BC: FFree1Var var_98 = ""
  loc_CBC3BF: BranchF loc_CBC3CE
  loc_CBC3C2: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBC3C5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBC3CA: ExitProcHresult
  loc_CBC3CB: Branch loc_CBCC9A
  loc_CBC3CE: FLdPr Me
  loc_CBC3D1: VCallAd Control_ID_ServDevaFlex
  loc_CBC3D4: FStAdFunc var_88
  loc_CBC3D7: FLdPr var_88
  loc_CBC3DA: LateIdLdVar var_98 DispID_10 0
  loc_CBC3E1: CI4Var
  loc_CBC3E3: CVarI4
  loc_CBC3E7: PopAdLdVar
  loc_CBC3E8: LitVarI4
  loc_CBC3F0: PopAdLdVar
  loc_CBC3F1: LitI2_Byte 1
  loc_CBC3F3: CStrUI1
  loc_CBC3F5: CVarStr var_EC
  loc_CBC3F8: PopAdLdVar
  loc_CBC3F9: FLdPr Me
  loc_CBC3FC: VCallAd Control_ID_ServDevaFlex
  loc_CBC3FF: FStAdFunc var_DC
  loc_CBC402: FLdPr var_DC
  loc_CBC405: LateIdCallSt
  loc_CBC40D: FFreeAd var_88 = ""
  loc_CBC414: FFreeVar var_98 = ""
  loc_CBC41B: FLdPr Me
  loc_CBC41E: VCallAd Control_ID_ServDevaFlex
  loc_CBC421: FStAdFunc var_154
  loc_CBC424: FLdPr var_154
  loc_CBC427: LateIdLdVar var_98 DispID_10 0
  loc_CBC42E: CI4Var
  loc_CBC430: CVarI4
  loc_CBC434: PopAdLdVar
  loc_CBC435: LitVarI4
  loc_CBC43D: PopAdLdVar
  loc_CBC43E: FLdRfVar var_EC
  loc_CBC441: FLdRfVar var_120
  loc_CBC444: LitVarStr var_A8, "DetaSeca"
  loc_CBC449: PopAdLdVar
  loc_CBC44A: FLdRfVar var_DC
  loc_CBC44D: FLdRfVar var_88
  loc_CBC450: FLdPr Me
  loc_CBC453: MemLdRfVar from_stack_1.global_56
  loc_CBC456: NewIfNullPr clsservdeva
  loc_CBC459: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC45E: FLdPr var_88
  loc_CBC461:  = Me.Fields
  loc_CBC466: FLdPr var_DC
  loc_CBC469: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC46E: FLdPr var_120
  loc_CBC471:  = Me.Value
  loc_CBC476: FLdRfVar var_EC
  loc_CBC479: CStrVarTmp
  loc_CBC47A: CVarStr var_FC
  loc_CBC47D: PopAdLdVar
  loc_CBC47E: FLdPr Me
  loc_CBC481: VCallAd Control_ID_ServDevaFlex
  loc_CBC484: FStAdFunc var_1B0
  loc_CBC487: FLdPr var_1B0
  loc_CBC48A: LateIdCallSt
  loc_CBC492: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBC49F: FFreeVar var_98 = "": var_EC = ""
  loc_CBC4A8: FLdPr Me
  loc_CBC4AB: VCallAd Control_ID_ServDevaFlex
  loc_CBC4AE: FStAdFunc var_88
  loc_CBC4B1: FLdPr var_88
  loc_CBC4B4: LateIdLdVar var_98 DispID_10 0
  loc_CBC4BB: CI4Var
  loc_CBC4BD: CVarI4
  loc_CBC4C1: PopAdLdVar
  loc_CBC4C2: LitVarI4
  loc_CBC4CA: PopAdLdVar
  loc_CBC4CB: FLdPr Me
  loc_CBC4CE: VCallAd Control_ID_ServDevaFlex
  loc_CBC4D1: FStAdFunc var_DC
  loc_CBC4D4: FLdPr var_DC
  loc_CBC4D7: LateIdCallLdVar
  loc_CBC4E1: CStrVarTmp
  loc_CBC4E2: FStStrNoPop var_178
  loc_CBC4E5: LitStr "0"
  loc_CBC4E8: EqStr
  loc_CBC4EA: FFree1Str var_178
  loc_CBC4ED: FFreeAd var_88 = ""
  loc_CBC4F4: FFreeVar var_98 = ""
  loc_CBC4FB: BranchF loc_CBC5A9
  loc_CBC4FE: FLdRfVar var_120
  loc_CBC501: LitVarStr var_A8, "ImpoSeca"
  loc_CBC506: PopAdLdVar
  loc_CBC507: FLdRfVar var_DC
  loc_CBC50A: FLdRfVar var_88
  loc_CBC50D: FLdPr Me
  loc_CBC510: MemLdRfVar from_stack_1.global_56
  loc_CBC513: NewIfNullPr clsservdeva
  loc_CBC516: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC51B: FLdPr var_88
  loc_CBC51E:  = Me.Fields
  loc_CBC523: FLdPr var_DC
  loc_CBC526: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC52B: FLdPr Me
  loc_CBC52E: VCallAd Control_ID_ServDevaFlex
  loc_CBC531: FStAdFunc var_154
  loc_CBC534: FLdPr var_154
  loc_CBC537: LateIdLdVar var_130 DispID_10 0
  loc_CBC53E: CI4Var
  loc_CBC540: CVarI4
  loc_CBC544: PopAdLdVar
  loc_CBC545: LitVarI4
  loc_CBC54D: PopAdLdVar
  loc_CBC54E: LitI4 1
  loc_CBC553: LitI4 1
  loc_CBC558: LitVarStr var_B8, "0.00"
  loc_CBC55D: FStVarCopyObj var_EC
  loc_CBC560: FLdRfVar var_EC
  loc_CBC563: FLdZeroAd var_120
  loc_CBC566: CVarAd
  loc_CBC56A: FLdRfVar var_FC
  loc_CBC56D: ImpAdCallFPR4  = Format(, )
  loc_CBC572: FLdRfVar var_FC
  loc_CBC575: CStrVarTmp
  loc_CBC576: CVarStr var_164
  loc_CBC579: PopAdLdVar
  loc_CBC57A: FLdPr Me
  loc_CBC57D: VCallAd Control_ID_ServDevaFlex
  loc_CBC580: FStAdFunc var_1B0
  loc_CBC583: FLdPr var_1B0
  loc_CBC586: LateIdCallSt
  loc_CBC58E: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBC599: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBC5A6: Branch loc_CBC822
  loc_CBC5A9: FLdPr Me
  loc_CBC5AC: VCallAd Control_ID_ServDevaFlex
  loc_CBC5AF: FStAdFunc var_88
  loc_CBC5B2: FLdPr var_88
  loc_CBC5B5: LateIdLdVar var_98 DispID_10 0
  loc_CBC5BC: CI4Var
  loc_CBC5BE: CVarI4
  loc_CBC5C2: PopAdLdVar
  loc_CBC5C3: LitVarI4
  loc_CBC5CB: PopAdLdVar
  loc_CBC5CC: FLdPr Me
  loc_CBC5CF: VCallAd Control_ID_ServDevaFlex
  loc_CBC5D2: FStAdFunc var_DC
  loc_CBC5D5: FLdPr var_DC
  loc_CBC5D8: LateIdCallLdVar
  loc_CBC5E2: CStrVarTmp
  loc_CBC5E3: FStStrNoPop var_178
  loc_CBC5E6: LitStr "1"
  loc_CBC5E9: EqStr
  loc_CBC5EB: FLdRfVar var_FC
  loc_CBC5EE: FLdRfVar var_1B0
  loc_CBC5F1: LitVarStr var_10C, "ImpoSeca"
  loc_CBC5F6: PopAdLdVar
  loc_CBC5F7: FLdRfVar var_154
  loc_CBC5FA: FLdRfVar var_120
  loc_CBC5FD: FLdPr Me
  loc_CBC600: MemLdRfVar from_stack_1.global_56
  loc_CBC603: NewIfNullPr clsservdeva
  loc_CBC606: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC60B: FLdPr var_120
  loc_CBC60E:  = Me.Fields
  loc_CBC613: FLdPr var_154
  loc_CBC616: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC61B: FLdPr var_1B0
  loc_CBC61E:  = Me.Value
  loc_CBC623: FLdRfVar var_FC
  loc_CBC626: FnCDblVar
  loc_CBC628: LitI2_Byte 0
  loc_CBC62A: CR8I2
  loc_CBC62B: EqR4
  loc_CBC62C: AndI4
  loc_CBC62D: FFree1Str var_178
  loc_CBC630: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBC63D: FFreeVar var_98 = "": var_EC = ""
  loc_CBC646: BranchF loc_CBC6DA
  loc_CBC649: FLdPr Me
  loc_CBC64C: VCallAd Control_ID_ServDevaFlex
  loc_CBC64F: FStAdFunc var_88
  loc_CBC652: FLdPr var_88
  loc_CBC655: LateIdLdVar var_98 DispID_10 0
  loc_CBC65C: CI4Var
  loc_CBC65E: CVarI4
  loc_CBC662: PopAdLdVar
  loc_CBC663: LitVarI4
  loc_CBC66B: PopAdLdVar
  loc_CBC66C: LitVarStr var_10C, vbNullString
  loc_CBC671: PopAdLdVar
  loc_CBC672: FLdPr Me
  loc_CBC675: VCallAd Control_ID_ServDevaFlex
  loc_CBC678: FStAdFunc var_DC
  loc_CBC67B: FLdPr var_DC
  loc_CBC67E: LateIdCallSt
  loc_CBC686: FFreeAd var_88 = ""
  loc_CBC68D: FFree1Var var_98 = ""
  loc_CBC690: FLdPr Me
  loc_CBC693: VCallAd Control_ID_ServDevaFlex
  loc_CBC696: FStAdFunc var_88
  loc_CBC699: FLdPr var_88
  loc_CBC69C: LateIdLdVar var_98 DispID_10 0
  loc_CBC6A3: CI4Var
  loc_CBC6A5: CVarI4
  loc_CBC6A9: PopAdLdVar
  loc_CBC6AA: LitVarI4
  loc_CBC6B2: PopAdLdVar
  loc_CBC6B3: LitVarStr var_10C, vbNullString
  loc_CBC6B8: PopAdLdVar
  loc_CBC6B9: FLdPr Me
  loc_CBC6BC: VCallAd Control_ID_ServDevaFlex
  loc_CBC6BF: FStAdFunc var_DC
  loc_CBC6C2: FLdPr var_DC
  loc_CBC6C5: LateIdCallSt
  loc_CBC6CD: FFreeAd var_88 = ""
  loc_CBC6D4: FFree1Var var_98 = ""
  loc_CBC6D7: Branch loc_CBC822
  loc_CBC6DA: FLdPr Me
  loc_CBC6DD: VCallAd Control_ID_ServDevaFlex
  loc_CBC6E0: FStAdFunc var_88
  loc_CBC6E3: FLdPr var_88
  loc_CBC6E6: LateIdLdVar var_98 DispID_10 0
  loc_CBC6ED: CI4Var
  loc_CBC6EF: CVarI4
  loc_CBC6F3: PopAdLdVar
  loc_CBC6F4: LitVarI4
  loc_CBC6FC: PopAdLdVar
  loc_CBC6FD: FLdPr Me
  loc_CBC700: VCallAd Control_ID_ServDevaFlex
  loc_CBC703: FStAdFunc var_DC
  loc_CBC706: FLdPr var_DC
  loc_CBC709: LateIdCallLdVar
  loc_CBC713: CStrVarTmp
  loc_CBC714: FStStrNoPop var_178
  loc_CBC717: LitStr "1"
  loc_CBC71A: EqStr
  loc_CBC71C: FLdRfVar var_FC
  loc_CBC71F: FLdRfVar var_1B0
  loc_CBC722: LitVarStr var_10C, "ImpoSeca"
  loc_CBC727: PopAdLdVar
  loc_CBC728: FLdRfVar var_154
  loc_CBC72B: FLdRfVar var_120
  loc_CBC72E: FLdPr Me
  loc_CBC731: MemLdRfVar from_stack_1.global_56
  loc_CBC734: NewIfNullPr clsservdeva
  loc_CBC737: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC73C: FLdPr var_120
  loc_CBC73F:  = Me.Fields
  loc_CBC744: FLdPr var_154
  loc_CBC747: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC74C: FLdPr var_1B0
  loc_CBC74F:  = Me.Value
  loc_CBC754: FLdRfVar var_FC
  loc_CBC757: FnCDblVar
  loc_CBC759: LitI2_Byte 0
  loc_CBC75B: CR8I2
  loc_CBC75C: GtR4
  loc_CBC75D: AndI4
  loc_CBC75E: FFree1Str var_178
  loc_CBC761: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBC76E: FFreeVar var_98 = "": var_EC = ""
  loc_CBC777: BranchF loc_CBC822
  loc_CBC77A: FLdRfVar var_120
  loc_CBC77D: LitVarStr var_A8, "ImpoSeca"
  loc_CBC782: PopAdLdVar
  loc_CBC783: FLdRfVar var_DC
  loc_CBC786: FLdRfVar var_88
  loc_CBC789: FLdPr Me
  loc_CBC78C: MemLdRfVar from_stack_1.global_56
  loc_CBC78F: NewIfNullPr clsservdeva
  loc_CBC792: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBC797: FLdPr var_88
  loc_CBC79A:  = Me.Fields
  loc_CBC79F: FLdPr var_DC
  loc_CBC7A2: from_stack_2 = Me.Item(from_stack_1)
  loc_CBC7A7: FLdPr Me
  loc_CBC7AA: VCallAd Control_ID_ServDevaFlex
  loc_CBC7AD: FStAdFunc var_154
  loc_CBC7B0: FLdPr var_154
  loc_CBC7B3: LateIdLdVar var_130 DispID_10 0
  loc_CBC7BA: CI4Var
  loc_CBC7BC: CVarI4
  loc_CBC7C0: PopAdLdVar
  loc_CBC7C1: LitVarI4
  loc_CBC7C9: PopAdLdVar
  loc_CBC7CA: LitI4 1
  loc_CBC7CF: LitI4 1
  loc_CBC7D4: LitVarStr var_B8, "0.00"
  loc_CBC7D9: FStVarCopyObj var_EC
  loc_CBC7DC: FLdRfVar var_EC
  loc_CBC7DF: FLdZeroAd var_120
  loc_CBC7E2: CVarAd
  loc_CBC7E6: FLdRfVar var_FC
  loc_CBC7E9: ImpAdCallFPR4  = Format(, )
  loc_CBC7EE: FLdRfVar var_FC
  loc_CBC7F1: CStrVarTmp
  loc_CBC7F2: CVarStr var_164
  loc_CBC7F5: PopAdLdVar
  loc_CBC7F6: FLdPr Me
  loc_CBC7F9: VCallAd Control_ID_ServDevaFlex
  loc_CBC7FC: FStAdFunc var_1B0
  loc_CBC7FF: FLdPr var_1B0
  loc_CBC802: LateIdCallSt
  loc_CBC80A: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBC815: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBC822: FLdPr Me
  loc_CBC825: VCallAd Control_ID_ServDevaFlex
  loc_CBC828: FStAdFunc var_88
  loc_CBC82B: FLdPr var_88
  loc_CBC82E: LateIdLdVar var_98 DispID_10 0
  loc_CBC835: CI4Var
  loc_CBC837: CVarI4
  loc_CBC83B: PopAdLdVar
  loc_CBC83C: LitVarI4
  loc_CBC844: PopAdLdVar
  loc_CBC845: FLdPr Me
  loc_CBC848: VCallAd Control_ID_ServDevaFlex
  loc_CBC84B: FStAdFunc var_DC
  loc_CBC84E: FLdPr var_DC
  loc_CBC851: LateIdCallLdVar
  loc_CBC85B: CStrVarTmp
  loc_CBC85C: CVarStr var_FC
  loc_CBC85F: ImpAdCallI2 IsNumeric()
  loc_CBC864: FLdPr Me
  loc_CBC867: VCallAd Control_ID_ServDevaFlex
  loc_CBC86A: FStAdFunc var_120
  loc_CBC86D: FLdPr var_120
  loc_CBC870: LateIdLdVar var_130 DispID_10 0
  loc_CBC877: CI4Var
  loc_CBC879: CVarI4
  loc_CBC87D: PopAdLdVar
  loc_CBC87E: LitVarI4
  loc_CBC886: PopAdLdVar
  loc_CBC887: FLdPr Me
  loc_CBC88A: VCallAd Control_ID_ServDevaFlex
  loc_CBC88D: FStAdFunc var_154
  loc_CBC890: FLdPr var_154
  loc_CBC893: LateIdCallLdVar
  loc_CBC89D: CStrVarTmp
  loc_CBC89E: CVarStr var_174
  loc_CBC8A1: ImpAdCallI2 IsNumeric()
  loc_CBC8A6: AndI4
  loc_CBC8A7: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBC8B2: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBC8C1: BranchF loc_CBC9DB
  loc_CBC8C4: FLdPr Me
  loc_CBC8C7: VCallAd Control_ID_ServDevaFlex
  loc_CBC8CA: FStAdFunc var_88
  loc_CBC8CD: FLdPr var_88
  loc_CBC8D0: LateIdLdVar var_98 DispID_10 0
  loc_CBC8D7: CI4Var
  loc_CBC8D9: CVarI4
  loc_CBC8DD: PopAdLdVar
  loc_CBC8DE: LitVarI4
  loc_CBC8E6: PopAdLdVar
  loc_CBC8E7: FLdPr Me
  loc_CBC8EA: VCallAd Control_ID_ServDevaFlex
  loc_CBC8ED: FStAdFunc var_DC
  loc_CBC8F0: FLdPr var_DC
  loc_CBC8F3: LateIdCallLdVar
  loc_CBC8FD: PopAd
  loc_CBC8FF: FLdPr Me
  loc_CBC902: VCallAd Control_ID_ServDevaFlex
  loc_CBC905: FStAdFunc var_120
  loc_CBC908: FLdPr var_120
  loc_CBC90B: LateIdLdVar var_FC DispID_10 0
  loc_CBC912: CI4Var
  loc_CBC914: CVarI4
  loc_CBC918: PopAdLdVar
  loc_CBC919: LitVarI4
  loc_CBC921: PopAdLdVar
  loc_CBC922: FLdPr Me
  loc_CBC925: VCallAd Control_ID_ServDevaFlex
  loc_CBC928: FStAdFunc var_154
  loc_CBC92B: FLdPr var_154
  loc_CBC92E: LateIdCallLdVar
  loc_CBC938: PopAd
  loc_CBC93A: FLdPr Me
  loc_CBC93D: VCallAd Control_ID_ServDevaFlex
  loc_CBC940: FStAdFunc var_1B0
  loc_CBC943: FLdPr var_1B0
  loc_CBC946: LateIdLdVar var_1C0 DispID_10 0
  loc_CBC94D: CI4Var
  loc_CBC94F: CVarI4
  loc_CBC953: PopAdLdVar
  loc_CBC954: LitVarI4
  loc_CBC95C: PopAdLdVar
  loc_CBC95D: LitI4 1
  loc_CBC962: LitI4 1
  loc_CBC967: LitVarStr var_19C, "0.00"
  loc_CBC96C: FStVarCopyObj var_174
  loc_CBC96F: FLdRfVar var_174
  loc_CBC972: FLdRfVar var_EC
  loc_CBC975: CStrVarTmp
  loc_CBC976: FStStrNoPop var_178
  loc_CBC979: CR8Str
  loc_CBC97B: FLdRfVar var_130
  loc_CBC97E: CStrVarTmp
  loc_CBC97F: FStStrNoPop var_17C
  loc_CBC982: CR8Str
  loc_CBC984: MulR8
  loc_CBC985: CVarR8
  loc_CBC989: FLdRfVar var_1AC
  loc_CBC98C: ImpAdCallFPR4  = Format(, )
  loc_CBC991: FLdRfVar var_1AC
  loc_CBC994: CStrVarTmp
  loc_CBC995: CVarStr var_210
  loc_CBC998: PopAdLdVar
  loc_CBC999: FLdPr Me
  loc_CBC99C: VCallAd Control_ID_ServDevaFlex
  loc_CBC99F: FStAdFunc var_224
  loc_CBC9A2: FLdPr var_224
  loc_CBC9A5: LateIdCallSt
  loc_CBC9AD: FFreeStr var_178 = ""
  loc_CBC9B4: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBC9C3: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBC9D8: Branch loc_CBCAF3
  loc_CBC9DB: FLdPr Me
  loc_CBC9DE: VCallAd Control_ID_ServDevaFlex
  loc_CBC9E1: FStAdFunc var_88
  loc_CBC9E4: FLdPr var_88
  loc_CBC9E7: LateIdLdVar var_98 DispID_10 0
  loc_CBC9EE: CI4Var
  loc_CBC9F0: CVarI4
  loc_CBC9F4: PopAdLdVar
  loc_CBC9F5: LitVarI4
  loc_CBC9FD: PopAdLdVar
  loc_CBC9FE: FLdPr Me
  loc_CBCA01: VCallAd Control_ID_ServDevaFlex
  loc_CBCA04: FStAdFunc var_DC
  loc_CBCA07: FLdPr var_DC
  loc_CBCA0A: LateIdCallLdVar
  loc_CBCA14: CStrVarTmp
  loc_CBCA15: CVarStr var_FC
  loc_CBCA18: ImpAdCallI2 IsNumeric()
  loc_CBCA1D: FFreeAd var_88 = ""
  loc_CBCA24: FFreeVar var_98 = "": var_EC = ""
  loc_CBCA2D: BranchF loc_CBCAF3
  loc_CBCA30: FLdPr Me
  loc_CBCA33: VCallAd Control_ID_ServDevaFlex
  loc_CBCA36: FStAdFunc var_88
  loc_CBCA39: FLdPr var_88
  loc_CBCA3C: LateIdLdVar var_98 DispID_10 0
  loc_CBCA43: CI4Var
  loc_CBCA45: CVarI4
  loc_CBCA49: PopAdLdVar
  loc_CBCA4A: LitVarI4
  loc_CBCA52: PopAdLdVar
  loc_CBCA53: FLdPr Me
  loc_CBCA56: VCallAd Control_ID_ServDevaFlex
  loc_CBCA59: FStAdFunc var_DC
  loc_CBCA5C: FLdPr var_DC
  loc_CBCA5F: LateIdCallLdVar
  loc_CBCA69: PopAd
  loc_CBCA6B: FLdPr Me
  loc_CBCA6E: VCallAd Control_ID_ServDevaFlex
  loc_CBCA71: FStAdFunc var_120
  loc_CBCA74: FLdPr var_120
  loc_CBCA77: LateIdLdVar var_174 DispID_10 0
  loc_CBCA7E: CI4Var
  loc_CBCA80: CVarI4
  loc_CBCA84: PopAdLdVar
  loc_CBCA85: LitVarI4
  loc_CBCA8D: PopAdLdVar
  loc_CBCA8E: LitI4 1
  loc_CBCA93: LitI4 1
  loc_CBCA98: LitVarStr var_11C, "0.00"
  loc_CBCA9D: FStVarCopyObj var_130
  loc_CBCAA0: FLdRfVar var_130
  loc_CBCAA3: FLdRfVar var_EC
  loc_CBCAA6: CStrVarTmp
  loc_CBCAA7: FStStrNoPop var_178
  loc_CBCAAA: CR8Str
  loc_CBCAAC: CVarR8
  loc_CBCAB0: FLdRfVar var_164
  loc_CBCAB3: ImpAdCallFPR4  = Format(, )
  loc_CBCAB8: FLdRfVar var_164
  loc_CBCABB: CStrVarTmp
  loc_CBCABC: CVarStr var_1AC
  loc_CBCABF: PopAdLdVar
  loc_CBCAC0: FLdPr Me
  loc_CBCAC3: VCallAd Control_ID_ServDevaFlex
  loc_CBCAC6: FStAdFunc var_154
  loc_CBCAC9: FLdPr var_154
  loc_CBCACC: LateIdCallSt
  loc_CBCAD4: FFree1Str var_178
  loc_CBCAD7: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBCAE2: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBCAF3: FLdPr Me
  loc_CBCAF6: VCallAd Control_ID_ServDevaFlex
  loc_CBCAF9: FStAdFunc var_154
  loc_CBCAFC: FLdPr var_154
  loc_CBCAFF: LateIdLdVar var_98 DispID_10 0
  loc_CBCB06: CI4Var
  loc_CBCB08: CVarI4
  loc_CBCB0C: PopAdLdVar
  loc_CBCB0D: LitVarI4
  loc_CBCB15: PopAdLdVar
  loc_CBCB16: FLdRfVar var_EC
  loc_CBCB19: FLdRfVar var_120
  loc_CBCB1C: LitVarStr var_A8, "PeriInfo"
  loc_CBCB21: PopAdLdVar
  loc_CBCB22: FLdRfVar var_DC
  loc_CBCB25: FLdRfVar var_88
  loc_CBCB28: FLdPr Me
  loc_CBCB2B: MemLdRfVar from_stack_1.global_56
  loc_CBCB2E: NewIfNullPr clsservdeva
  loc_CBCB31: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBCB36: FLdPr var_88
  loc_CBCB39:  = Me.Fields
  loc_CBCB3E: FLdPr var_DC
  loc_CBCB41: from_stack_2 = Me.Item(from_stack_1)
  loc_CBCB46: FLdPr var_120
  loc_CBCB49:  = Me.Value
  loc_CBCB4E: FLdRfVar var_EC
  loc_CBCB51: CStrVarTmp
  loc_CBCB52: CVarStr var_FC
  loc_CBCB55: PopAdLdVar
  loc_CBCB56: FLdPr Me
  loc_CBCB59: VCallAd Control_ID_ServDevaFlex
  loc_CBCB5C: FStAdFunc var_1B0
  loc_CBCB5F: FLdPr var_1B0
  loc_CBCB62: LateIdCallSt
  loc_CBCB6A: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBCB77: FFreeVar var_98 = "": var_EC = ""
  loc_CBCB80: FLdPr Me
  loc_CBCB83: VCallAd Control_ID_ServDevaFlex
  loc_CBCB86: FStAdFunc var_154
  loc_CBCB89: FLdPr var_154
  loc_CBCB8C: LateIdLdVar var_98 DispID_10 0
  loc_CBCB93: CI4Var
  loc_CBCB95: CVarI4
  loc_CBCB99: PopAdLdVar
  loc_CBCB9A: LitVarI4
  loc_CBCBA2: PopAdLdVar
  loc_CBCBA3: FLdRfVar var_EC
  loc_CBCBA6: FLdRfVar var_120
  loc_CBCBA9: LitVarStr var_A8, "CodiConc"
  loc_CBCBAE: PopAdLdVar
  loc_CBCBAF: FLdRfVar var_DC
  loc_CBCBB2: FLdRfVar var_88
  loc_CBCBB5: FLdPr Me
  loc_CBCBB8: MemLdRfVar from_stack_1.global_56
  loc_CBCBBB: NewIfNullPr clsservdeva
  loc_CBCBBE: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBCBC3: FLdPr var_88
  loc_CBCBC6:  = Me.Fields
  loc_CBCBCB: FLdPr var_DC
  loc_CBCBCE: from_stack_2 = Me.Item(from_stack_1)
  loc_CBCBD3: FLdPr var_120
  loc_CBCBD6:  = Me.Value
  loc_CBCBDB: FLdRfVar var_EC
  loc_CBCBDE: CStrVarTmp
  loc_CBCBDF: CVarStr var_FC
  loc_CBCBE2: PopAdLdVar
  loc_CBCBE3: FLdPr Me
  loc_CBCBE6: VCallAd Control_ID_ServDevaFlex
  loc_CBCBE9: FStAdFunc var_1B0
  loc_CBCBEC: FLdPr var_1B0
  loc_CBCBEF: LateIdCallSt
  loc_CBCBF7: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBCC04: FFreeVar var_98 = "": var_EC = ""
  loc_CBCC0D: FLdPr Me
  loc_CBCC10: VCallAd Control_ID_ServDevaFlex
  loc_CBCC13: FStAdFunc var_154
  loc_CBCC16: FLdPr var_154
  loc_CBCC19: LateIdLdVar var_98 DispID_10 0
  loc_CBCC20: CI4Var
  loc_CBCC22: CVarI4
  loc_CBCC26: PopAdLdVar
  loc_CBCC27: LitVarI4
  loc_CBCC2F: PopAdLdVar
  loc_CBCC30: FLdRfVar var_EC
  loc_CBCC33: FLdRfVar var_120
  loc_CBCC36: LitVarStr var_A8, "TiafConc"
  loc_CBCC3B: PopAdLdVar
  loc_CBCC3C: FLdRfVar var_DC
  loc_CBCC3F: FLdRfVar var_88
  loc_CBCC42: FLdPr Me
  loc_CBCC45: MemLdRfVar from_stack_1.global_56
  loc_CBCC48: NewIfNullPr clsservdeva
  loc_CBCC4B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBCC50: FLdPr var_88
  loc_CBCC53:  = Me.Fields
  loc_CBCC58: FLdPr var_DC
  loc_CBCC5B: from_stack_2 = Me.Item(from_stack_1)
  loc_CBCC60: FLdPr var_120
  loc_CBCC63:  = Me.Value
  loc_CBCC68: FLdRfVar var_EC
  loc_CBCC6B: CStrVarTmp
  loc_CBCC6C: CVarStr var_FC
  loc_CBCC6F: PopAdLdVar
  loc_CBCC70: FLdPr Me
  loc_CBCC73: VCallAd Control_ID_ServDevaFlex
  loc_CBCC76: FStAdFunc var_1B0
  loc_CBCC79: FLdPr var_1B0
  loc_CBCC7C: LateIdCallSt
  loc_CBCC84: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBCC91: FFreeVar var_98 = "": var_EC = ""
  loc_CBCC9A: Branch loc_CBCE8E
  loc_CBCC9D: FLdPr Me
  loc_CBCCA0: VCallAd Control_ID_ServDevaFlex
  loc_CBCCA3: FStAdFunc var_88
  loc_CBCCA6: FLdPr var_88
  loc_CBCCA9: LateIdLdVar var_98 DispID_10 0
  loc_CBCCB0: CI4Var
  loc_CBCCB2: CVarI4
  loc_CBCCB6: PopAdLdVar
  loc_CBCCB7: LitVarI4
  loc_CBCCBF: PopAdLdVar
  loc_CBCCC0: LitVarStr var_10C, vbNullString
  loc_CBCCC5: PopAdLdVar
  loc_CBCCC6: FLdPr Me
  loc_CBCCC9: VCallAd Control_ID_ServDevaFlex
  loc_CBCCCC: FStAdFunc var_DC
  loc_CBCCCF: FLdPr var_DC
  loc_CBCCD2: LateIdCallSt
  loc_CBCCDA: FFreeAd var_88 = ""
  loc_CBCCE1: FFree1Var var_98 = ""
  loc_CBCCE4: FLdPr Me
  loc_CBCCE7: VCallAd Control_ID_ServDevaFlex
  loc_CBCCEA: FStAdFunc var_88
  loc_CBCCED: FLdPr var_88
  loc_CBCCF0: LateIdLdVar var_98 DispID_10 0
  loc_CBCCF7: CI4Var
  loc_CBCCF9: CVarI4
  loc_CBCCFD: PopAdLdVar
  loc_CBCCFE: LitVarI4
  loc_CBCD06: PopAdLdVar
  loc_CBCD07: LitVarStr var_10C, vbNullString
  loc_CBCD0C: PopAdLdVar
  loc_CBCD0D: FLdPr Me
  loc_CBCD10: VCallAd Control_ID_ServDevaFlex
  loc_CBCD13: FStAdFunc var_DC
  loc_CBCD16: FLdPr var_DC
  loc_CBCD19: LateIdCallSt
  loc_CBCD21: FFreeAd var_88 = ""
  loc_CBCD28: FFree1Var var_98 = ""
  loc_CBCD2B: FLdPr Me
  loc_CBCD2E: VCallAd Control_ID_ServDevaFlex
  loc_CBCD31: FStAdFunc var_88
  loc_CBCD34: FLdPr var_88
  loc_CBCD37: LateIdLdVar var_98 DispID_10 0
  loc_CBCD3E: CI4Var
  loc_CBCD40: CVarI4
  loc_CBCD44: PopAdLdVar
  loc_CBCD45: LitVarI4
  loc_CBCD4D: PopAdLdVar
  loc_CBCD4E: LitVarStr var_10C, vbNullString
  loc_CBCD53: PopAdLdVar
  loc_CBCD54: FLdPr Me
  loc_CBCD57: VCallAd Control_ID_ServDevaFlex
  loc_CBCD5A: FStAdFunc var_DC
  loc_CBCD5D: FLdPr var_DC
  loc_CBCD60: LateIdCallSt
  loc_CBCD68: FFreeAd var_88 = ""
  loc_CBCD6F: FFree1Var var_98 = ""
  loc_CBCD72: FLdPr Me
  loc_CBCD75: VCallAd Control_ID_ServDevaFlex
  loc_CBCD78: FStAdFunc var_88
  loc_CBCD7B: FLdPr var_88
  loc_CBCD7E: LateIdLdVar var_98 DispID_10 0
  loc_CBCD85: CI4Var
  loc_CBCD87: CVarI4
  loc_CBCD8B: PopAdLdVar
  loc_CBCD8C: LitVarI4
  loc_CBCD94: PopAdLdVar
  loc_CBCD95: LitVarStr var_10C, vbNullString
  loc_CBCD9A: PopAdLdVar
  loc_CBCD9B: FLdPr Me
  loc_CBCD9E: VCallAd Control_ID_ServDevaFlex
  loc_CBCDA1: FStAdFunc var_DC
  loc_CBCDA4: FLdPr var_DC
  loc_CBCDA7: LateIdCallSt
  loc_CBCDAF: FFreeAd var_88 = ""
  loc_CBCDB6: FFree1Var var_98 = ""
  loc_CBCDB9: FLdPr Me
  loc_CBCDBC: VCallAd Control_ID_ServDevaFlex
  loc_CBCDBF: FStAdFunc var_88
  loc_CBCDC2: FLdPr var_88
  loc_CBCDC5: LateIdLdVar var_98 DispID_10 0
  loc_CBCDCC: CI4Var
  loc_CBCDCE: CVarI4
  loc_CBCDD2: PopAdLdVar
  loc_CBCDD3: LitVarI4
  loc_CBCDDB: PopAdLdVar
  loc_CBCDDC: LitVarStr var_10C, vbNullString
  loc_CBCDE1: PopAdLdVar
  loc_CBCDE2: FLdPr Me
  loc_CBCDE5: VCallAd Control_ID_ServDevaFlex
  loc_CBCDE8: FStAdFunc var_DC
  loc_CBCDEB: FLdPr var_DC
  loc_CBCDEE: LateIdCallSt
  loc_CBCDF6: FFreeAd var_88 = ""
  loc_CBCDFD: FFree1Var var_98 = ""
  loc_CBCE00: FLdPr Me
  loc_CBCE03: VCallAd Control_ID_ServDevaFlex
  loc_CBCE06: FStAdFunc var_88
  loc_CBCE09: FLdPr var_88
  loc_CBCE0C: LateIdLdVar var_98 DispID_10 0
  loc_CBCE13: CI4Var
  loc_CBCE15: CVarI4
  loc_CBCE19: PopAdLdVar
  loc_CBCE1A: LitVarI4
  loc_CBCE22: PopAdLdVar
  loc_CBCE23: LitVarStr var_10C, vbNullString
  loc_CBCE28: PopAdLdVar
  loc_CBCE29: FLdPr Me
  loc_CBCE2C: VCallAd Control_ID_ServDevaFlex
  loc_CBCE2F: FStAdFunc var_DC
  loc_CBCE32: FLdPr var_DC
  loc_CBCE35: LateIdCallSt
  loc_CBCE3D: FFreeAd var_88 = ""
  loc_CBCE44: FFree1Var var_98 = ""
  loc_CBCE47: FLdPr Me
  loc_CBCE4A: VCallAd Control_ID_ServDevaFlex
  loc_CBCE4D: FStAdFunc var_88
  loc_CBCE50: FLdPr var_88
  loc_CBCE53: LateIdLdVar var_98 DispID_10 0
  loc_CBCE5A: CI4Var
  loc_CBCE5C: CVarI4
  loc_CBCE60: PopAdLdVar
  loc_CBCE61: LitVarI4
  loc_CBCE69: PopAdLdVar
  loc_CBCE6A: LitVarStr var_10C, vbNullString
  loc_CBCE6F: PopAdLdVar
  loc_CBCE70: FLdPr Me
  loc_CBCE73: VCallAd Control_ID_ServDevaFlex
  loc_CBCE76: FStAdFunc var_DC
  loc_CBCE79: FLdPr var_DC
  loc_CBCE7C: LateIdCallSt
  loc_CBCE84: FFreeAd var_88 = ""
  loc_CBCE8B: FFree1Var var_98 = ""
  loc_CBCE8E: ImpAdLdUI1
  loc_CBCE92: CI2UI1
  loc_CBCE94: LitI2_Byte 5
  loc_CBCE96: EqI2
  loc_CBCE97: BranchF loc_CBDC63
  loc_CBCE9A: LitStr "SELECT DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_CBCE9D: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_CBCEA0: ConcatStr
  loc_CBCEA1: FStStrNoPop var_178
  loc_CBCEA4: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_CBCEA7: ConcatStr
  loc_CBCEA8: FStStrNoPop var_17C
  loc_CBCEAB: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CBCEAE: ConcatStr
  loc_CBCEAF: FStStrNoPop var_228
  loc_CBCEB2: LitStr " WHERE servdeva.PeriOrde = "
  loc_CBCEB5: ConcatStr
  loc_CBCEB6: FStStrNoPop var_22C
  loc_CBCEB9: ImpAdLdI2 MemVar_D93036
  loc_CBCEBC: CStrUI1
  loc_CBCEBE: FStStrNoPop var_230
  loc_CBCEC1: ConcatStr
  loc_CBCEC2: FStStrNoPop var_234
  loc_CBCEC5: LitStr " AND CodiSede = "
  loc_CBCEC8: ConcatStr
  loc_CBCEC9: FStStrNoPop var_238
  loc_CBCECC: FLdPr Me
  loc_CBCECF: VCallAd Control_ID_ServDevaFlex
  loc_CBCED2: FStAdFunc var_88
  loc_CBCED5: FLdPr var_88
  loc_CBCED8: LateIdLdVar var_98 DispID_10 0
  loc_CBCEDF: CI4Var
  loc_CBCEE1: CVarI4
  loc_CBCEE5: PopAdLdVar
  loc_CBCEE6: LitVarI4
  loc_CBCEEE: PopAdLdVar
  loc_CBCEEF: FLdPr Me
  loc_CBCEF2: VCallAd Control_ID_ServDevaFlex
  loc_CBCEF5: FStAdFunc var_DC
  loc_CBCEF8: FLdPr var_DC
  loc_CBCEFB: LateIdCallLdVar
  loc_CBCF05: CStrVarTmp
  loc_CBCF06: FStStrNoPop var_23C
  loc_CBCF09: ConcatStr
  loc_CBCF0A: FStStrNoPop var_240
  loc_CBCF0D: LitStr " AND CtctSede = '1'"
  loc_CBCF10: ConcatStr
  loc_CBCF11: FStStrNoPop var_244
  loc_CBCF14: LitStr " AND TranSede = '1'"
  loc_CBCF17: ConcatStr
  loc_CBCF18: FStStrNoPop var_248
  loc_CBCF1B: FLdPr Me
  loc_CBCF1E: MemLdRfVar from_stack_1.global_56
  loc_CBCF21: NewIfNullPr clsservdeva
  loc_CBCF24: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CBCF29: FFreeStr var_178 = "": var_17C = "": var_228 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_244 = ""
  loc_CBCF42: FFreeAd var_88 = ""
  loc_CBCF49: FFreeVar var_98 = ""
  loc_CBCF50: FLdRfVar var_24C
  loc_CBCF53: FLdRfVar var_88
  loc_CBCF56: FLdPr Me
  loc_CBCF59: MemLdRfVar from_stack_1.global_56
  loc_CBCF5C: NewIfNullPr clsservdeva
  loc_CBCF5F: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBCF64: FLdPr var_88
  loc_CBCF67:  = Me.RecordCount
  loc_CBCF6C: ILdRf var_24C
  loc_CBCF6F: LitI4 0
  loc_CBCF74: GtI4
  loc_CBCF75: FFree1Ad var_88
  loc_CBCF78: BranchF loc_CBDA72
  loc_CBCF7B: FLdRfVar var_98
  loc_CBCF7E: FLdRfVar var_120
  loc_CBCF81: LitVarStr var_A8, "PeriInfo"
  loc_CBCF86: PopAdLdVar
  loc_CBCF87: FLdRfVar var_DC
  loc_CBCF8A: FLdRfVar var_88
  loc_CBCF8D: FLdPr Me
  loc_CBCF90: MemLdRfVar from_stack_1.global_56
  loc_CBCF93: NewIfNullPr clsservdeva
  loc_CBCF96: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBCF9B: FLdPr var_88
  loc_CBCF9E:  = Me.Fields
  loc_CBCFA3: FLdPr var_DC
  loc_CBCFA6: from_stack_2 = Me.Item(from_stack_1)
  loc_CBCFAB: FLdPr var_120
  loc_CBCFAE:  = Me.Value
  loc_CBCFB3: FLdRfVar var_98
  loc_CBCFB6: FnCIntVar
  loc_CBCFB8: ImpAdLdI2 MemVar_D93034
  loc_CBCFBB: NeI2
  loc_CBCFBC: FFreeAd var_88 = "": var_DC = ""
  loc_CBCFC5: FFree1Var var_98 = ""
  loc_CBCFC8: BranchF loc_CBCFEE
  loc_CBCFCB: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CBCFCE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBCFD3: FLdPr Me
  loc_CBCFD6: VCallAd Control_ID_ServDevaFlex
  loc_CBCFD9: FStAdFunc var_88
  loc_CBCFDC: FLdPr var_88
  loc_CBCFDF: LateIdCall
  loc_CBCFE7: FFree1Ad var_88
  loc_CBCFEA: ExitProcHresult
  loc_CBCFEB: Branch loc_CBDA6F
  loc_CBCFEE: FLdRfVar var_98
  loc_CBCFF1: FLdRfVar var_120
  loc_CBCFF4: LitVarStr var_A8, "PeriInfo"
  loc_CBCFF9: PopAdLdVar
  loc_CBCFFA: FLdRfVar var_DC
  loc_CBCFFD: FLdRfVar var_88
  loc_CBD000: FLdPr Me
  loc_CBD003: MemLdRfVar from_stack_1.global_56
  loc_CBD006: NewIfNullPr clsservdeva
  loc_CBD009: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD00E: FLdPr var_88
  loc_CBD011:  = Me.Fields
  loc_CBD016: FLdPr var_DC
  loc_CBD019: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD01E: FLdPr var_120
  loc_CBD021:  = Me.Value
  loc_CBD026: FLdRfVar var_EC
  loc_CBD029: FLdRfVar var_224
  loc_CBD02C: LitVarStr var_B8, "CodiConc"
  loc_CBD031: PopAdLdVar
  loc_CBD032: FLdRfVar var_1B0
  loc_CBD035: FLdRfVar var_154
  loc_CBD038: FLdPr Me
  loc_CBD03B: MemLdRfVar from_stack_1.global_56
  loc_CBD03E: NewIfNullPr clsservdeva
  loc_CBD041: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD046: FLdPr var_154
  loc_CBD049:  = Me.Fields
  loc_CBD04E: FLdPr var_1B0
  loc_CBD051: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD056: FLdPr var_224
  loc_CBD059:  = Me.Value
  loc_CBD05E: FLdRfVar var_EC
  loc_CBD061: CStrVarTmp
  loc_CBD062: FStStrNoPop var_178
  loc_CBD065: FLdRfVar var_98
  loc_CBD068: CI2Var
  loc_CBD069: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CBD06E: FStStrNoPop var_17C
  loc_CBD071: LitStr vbNullString
  loc_CBD074: EqStr
  loc_CBD076: FFreeStr var_178 = ""
  loc_CBD07D: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_1B0 = "": var_120 = ""
  loc_CBD08C: FFreeVar var_98 = ""
  loc_CBD093: BranchF loc_CBD105
  loc_CBD096: LitVarStr var_B8, "El recurso: "
  loc_CBD09B: FLdRfVar var_98
  loc_CBD09E: FLdRfVar var_120
  loc_CBD0A1: LitVarStr var_A8, "CodiConc"
  loc_CBD0A6: PopAdLdVar
  loc_CBD0A7: FLdRfVar var_DC
  loc_CBD0AA: FLdRfVar var_88
  loc_CBD0AD: FLdPr Me
  loc_CBD0B0: MemLdRfVar from_stack_1.global_56
  loc_CBD0B3: NewIfNullPr clsservdeva
  loc_CBD0B6: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD0BB: FLdPr var_88
  loc_CBD0BE:  = Me.Fields
  loc_CBD0C3: FLdPr var_DC
  loc_CBD0C6: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD0CB: FLdPr var_120
  loc_CBD0CE:  = Me.Value
  loc_CBD0D3: FLdRfVar var_98
  loc_CBD0D6: ConcatVar var_EC
  loc_CBD0DA: LitVarStr var_C8, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBD0DF: ConcatVar var_FC
  loc_CBD0E3: CStrVarVal var_178
  loc_CBD0E7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBD0EC: FFree1Str var_178
  loc_CBD0EF: FFreeAd var_88 = "": var_DC = ""
  loc_CBD0F8: FFreeVar var_98 = "": var_EC = ""
  loc_CBD101: ExitProcHresult
  loc_CBD102: Branch loc_CBDA6F
  loc_CBD105: FLdRfVar var_98
  loc_CBD108: FLdRfVar var_120
  loc_CBD10B: LitVarStr var_A8, "TiafConc"
  loc_CBD110: PopAdLdVar
  loc_CBD111: FLdRfVar var_DC
  loc_CBD114: FLdRfVar var_88
  loc_CBD117: FLdPr Me
  loc_CBD11A: MemLdRfVar from_stack_1.global_56
  loc_CBD11D: NewIfNullPr clsservdeva
  loc_CBD120: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD125: FLdPr var_88
  loc_CBD128:  = Me.Fields
  loc_CBD12D: FLdPr var_DC
  loc_CBD130: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD135: FLdPr var_120
  loc_CBD138:  = Me.Value
  loc_CBD13D: FLdRfVar var_98
  loc_CBD140: LitVarI2 var_B8, 0
  loc_CBD145: HardType
  loc_CBD146: EqVarBool
  loc_CBD148: FFreeAd var_88 = "": var_DC = ""
  loc_CBD151: FFree1Var var_98 = ""
  loc_CBD154: BranchF loc_CBD163
  loc_CBD157: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBD15A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBD15F: ExitProcHresult
  loc_CBD160: Branch loc_CBDA6F
  loc_CBD163: FLdPr Me
  loc_CBD166: VCallAd Control_ID_ServDevaFlex
  loc_CBD169: FStAdFunc var_154
  loc_CBD16C: FLdPr var_154
  loc_CBD16F: LateIdLdVar var_98 DispID_10 0
  loc_CBD176: CI4Var
  loc_CBD178: CVarI4
  loc_CBD17C: PopAdLdVar
  loc_CBD17D: LitVarI4
  loc_CBD185: PopAdLdVar
  loc_CBD186: FLdRfVar var_EC
  loc_CBD189: FLdRfVar var_120
  loc_CBD18C: LitVarStr var_A8, "VariSede"
  loc_CBD191: PopAdLdVar
  loc_CBD192: FLdRfVar var_DC
  loc_CBD195: FLdRfVar var_88
  loc_CBD198: FLdPr Me
  loc_CBD19B: MemLdRfVar from_stack_1.global_56
  loc_CBD19E: NewIfNullPr clsservdeva
  loc_CBD1A1: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD1A6: FLdPr var_88
  loc_CBD1A9:  = Me.Fields
  loc_CBD1AE: FLdPr var_DC
  loc_CBD1B1: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD1B6: FLdPr var_120
  loc_CBD1B9:  = Me.Value
  loc_CBD1BE: FLdRfVar var_EC
  loc_CBD1C1: CStrVarTmp
  loc_CBD1C2: CVarStr var_FC
  loc_CBD1C5: PopAdLdVar
  loc_CBD1C6: FLdPr Me
  loc_CBD1C9: VCallAd Control_ID_ServDevaFlex
  loc_CBD1CC: FStAdFunc var_1B0
  loc_CBD1CF: FLdPr var_1B0
  loc_CBD1D2: LateIdCallSt
  loc_CBD1DA: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBD1E7: FFreeVar var_98 = "": var_EC = ""
  loc_CBD1F0: FLdPr Me
  loc_CBD1F3: VCallAd Control_ID_ServDevaFlex
  loc_CBD1F6: FStAdFunc var_154
  loc_CBD1F9: FLdPr var_154
  loc_CBD1FC: LateIdLdVar var_98 DispID_10 0
  loc_CBD203: CI4Var
  loc_CBD205: CVarI4
  loc_CBD209: PopAdLdVar
  loc_CBD20A: LitVarI4
  loc_CBD212: PopAdLdVar
  loc_CBD213: FLdRfVar var_EC
  loc_CBD216: FLdRfVar var_120
  loc_CBD219: LitVarStr var_A8, "DetaSede"
  loc_CBD21E: PopAdLdVar
  loc_CBD21F: FLdRfVar var_DC
  loc_CBD222: FLdRfVar var_88
  loc_CBD225: FLdPr Me
  loc_CBD228: MemLdRfVar from_stack_1.global_56
  loc_CBD22B: NewIfNullPr clsservdeva
  loc_CBD22E: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD233: FLdPr var_88
  loc_CBD236:  = Me.Fields
  loc_CBD23B: FLdPr var_DC
  loc_CBD23E: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD243: FLdPr var_120
  loc_CBD246:  = Me.Value
  loc_CBD24B: FLdRfVar var_EC
  loc_CBD24E: CStrVarTmp
  loc_CBD24F: CVarStr var_FC
  loc_CBD252: PopAdLdVar
  loc_CBD253: FLdPr Me
  loc_CBD256: VCallAd Control_ID_ServDevaFlex
  loc_CBD259: FStAdFunc var_1B0
  loc_CBD25C: FLdPr var_1B0
  loc_CBD25F: LateIdCallSt
  loc_CBD267: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBD274: FFreeVar var_98 = "": var_EC = ""
  loc_CBD27D: FLdPr Me
  loc_CBD280: VCallAd Control_ID_ServDevaFlex
  loc_CBD283: FStAdFunc var_88
  loc_CBD286: FLdPr var_88
  loc_CBD289: LateIdLdVar var_98 DispID_10 0
  loc_CBD290: CI4Var
  loc_CBD292: CVarI4
  loc_CBD296: PopAdLdVar
  loc_CBD297: LitVarI4
  loc_CBD29F: PopAdLdVar
  loc_CBD2A0: FLdPr Me
  loc_CBD2A3: VCallAd Control_ID_ServDevaFlex
  loc_CBD2A6: FStAdFunc var_DC
  loc_CBD2A9: FLdPr var_DC
  loc_CBD2AC: LateIdCallLdVar
  loc_CBD2B6: CStrVarTmp
  loc_CBD2B7: FStStrNoPop var_178
  loc_CBD2BA: LitStr "0"
  loc_CBD2BD: EqStr
  loc_CBD2BF: FFree1Str var_178
  loc_CBD2C2: FFreeAd var_88 = ""
  loc_CBD2C9: FFreeVar var_98 = ""
  loc_CBD2D0: BranchF loc_CBD37E
  loc_CBD2D3: FLdRfVar var_120
  loc_CBD2D6: LitVarStr var_A8, "ImpoSede"
  loc_CBD2DB: PopAdLdVar
  loc_CBD2DC: FLdRfVar var_DC
  loc_CBD2DF: FLdRfVar var_88
  loc_CBD2E2: FLdPr Me
  loc_CBD2E5: MemLdRfVar from_stack_1.global_56
  loc_CBD2E8: NewIfNullPr clsservdeva
  loc_CBD2EB: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD2F0: FLdPr var_88
  loc_CBD2F3:  = Me.Fields
  loc_CBD2F8: FLdPr var_DC
  loc_CBD2FB: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD300: FLdPr Me
  loc_CBD303: VCallAd Control_ID_ServDevaFlex
  loc_CBD306: FStAdFunc var_154
  loc_CBD309: FLdPr var_154
  loc_CBD30C: LateIdLdVar var_130 DispID_10 0
  loc_CBD313: CI4Var
  loc_CBD315: CVarI4
  loc_CBD319: PopAdLdVar
  loc_CBD31A: LitVarI4
  loc_CBD322: PopAdLdVar
  loc_CBD323: LitI4 1
  loc_CBD328: LitI4 1
  loc_CBD32D: LitVarStr var_B8, "0.00"
  loc_CBD332: FStVarCopyObj var_EC
  loc_CBD335: FLdRfVar var_EC
  loc_CBD338: FLdZeroAd var_120
  loc_CBD33B: CVarAd
  loc_CBD33F: FLdRfVar var_FC
  loc_CBD342: ImpAdCallFPR4  = Format(, )
  loc_CBD347: FLdRfVar var_FC
  loc_CBD34A: CStrVarTmp
  loc_CBD34B: CVarStr var_164
  loc_CBD34E: PopAdLdVar
  loc_CBD34F: FLdPr Me
  loc_CBD352: VCallAd Control_ID_ServDevaFlex
  loc_CBD355: FStAdFunc var_1B0
  loc_CBD358: FLdPr var_1B0
  loc_CBD35B: LateIdCallSt
  loc_CBD363: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBD36E: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBD37B: Branch loc_CBD5F7
  loc_CBD37E: FLdPr Me
  loc_CBD381: VCallAd Control_ID_ServDevaFlex
  loc_CBD384: FStAdFunc var_88
  loc_CBD387: FLdPr var_88
  loc_CBD38A: LateIdLdVar var_98 DispID_10 0
  loc_CBD391: CI4Var
  loc_CBD393: CVarI4
  loc_CBD397: PopAdLdVar
  loc_CBD398: LitVarI4
  loc_CBD3A0: PopAdLdVar
  loc_CBD3A1: FLdPr Me
  loc_CBD3A4: VCallAd Control_ID_ServDevaFlex
  loc_CBD3A7: FStAdFunc var_DC
  loc_CBD3AA: FLdPr var_DC
  loc_CBD3AD: LateIdCallLdVar
  loc_CBD3B7: CStrVarTmp
  loc_CBD3B8: FStStrNoPop var_178
  loc_CBD3BB: LitStr "1"
  loc_CBD3BE: EqStr
  loc_CBD3C0: FLdRfVar var_FC
  loc_CBD3C3: FLdRfVar var_1B0
  loc_CBD3C6: LitVarStr var_10C, "ImpoSede"
  loc_CBD3CB: PopAdLdVar
  loc_CBD3CC: FLdRfVar var_154
  loc_CBD3CF: FLdRfVar var_120
  loc_CBD3D2: FLdPr Me
  loc_CBD3D5: MemLdRfVar from_stack_1.global_56
  loc_CBD3D8: NewIfNullPr clsservdeva
  loc_CBD3DB: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD3E0: FLdPr var_120
  loc_CBD3E3:  = Me.Fields
  loc_CBD3E8: FLdPr var_154
  loc_CBD3EB: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD3F0: FLdPr var_1B0
  loc_CBD3F3:  = Me.Value
  loc_CBD3F8: FLdRfVar var_FC
  loc_CBD3FB: FnCDblVar
  loc_CBD3FD: LitI2_Byte 0
  loc_CBD3FF: CR8I2
  loc_CBD400: EqR4
  loc_CBD401: AndI4
  loc_CBD402: FFree1Str var_178
  loc_CBD405: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBD412: FFreeVar var_98 = "": var_EC = ""
  loc_CBD41B: BranchF loc_CBD4AF
  loc_CBD41E: FLdPr Me
  loc_CBD421: VCallAd Control_ID_ServDevaFlex
  loc_CBD424: FStAdFunc var_88
  loc_CBD427: FLdPr var_88
  loc_CBD42A: LateIdLdVar var_98 DispID_10 0
  loc_CBD431: CI4Var
  loc_CBD433: CVarI4
  loc_CBD437: PopAdLdVar
  loc_CBD438: LitVarI4
  loc_CBD440: PopAdLdVar
  loc_CBD441: LitVarStr var_10C, vbNullString
  loc_CBD446: PopAdLdVar
  loc_CBD447: FLdPr Me
  loc_CBD44A: VCallAd Control_ID_ServDevaFlex
  loc_CBD44D: FStAdFunc var_DC
  loc_CBD450: FLdPr var_DC
  loc_CBD453: LateIdCallSt
  loc_CBD45B: FFreeAd var_88 = ""
  loc_CBD462: FFree1Var var_98 = ""
  loc_CBD465: FLdPr Me
  loc_CBD468: VCallAd Control_ID_ServDevaFlex
  loc_CBD46B: FStAdFunc var_88
  loc_CBD46E: FLdPr var_88
  loc_CBD471: LateIdLdVar var_98 DispID_10 0
  loc_CBD478: CI4Var
  loc_CBD47A: CVarI4
  loc_CBD47E: PopAdLdVar
  loc_CBD47F: LitVarI4
  loc_CBD487: PopAdLdVar
  loc_CBD488: LitVarStr var_10C, vbNullString
  loc_CBD48D: PopAdLdVar
  loc_CBD48E: FLdPr Me
  loc_CBD491: VCallAd Control_ID_ServDevaFlex
  loc_CBD494: FStAdFunc var_DC
  loc_CBD497: FLdPr var_DC
  loc_CBD49A: LateIdCallSt
  loc_CBD4A2: FFreeAd var_88 = ""
  loc_CBD4A9: FFree1Var var_98 = ""
  loc_CBD4AC: Branch loc_CBD5F7
  loc_CBD4AF: FLdPr Me
  loc_CBD4B2: VCallAd Control_ID_ServDevaFlex
  loc_CBD4B5: FStAdFunc var_88
  loc_CBD4B8: FLdPr var_88
  loc_CBD4BB: LateIdLdVar var_98 DispID_10 0
  loc_CBD4C2: CI4Var
  loc_CBD4C4: CVarI4
  loc_CBD4C8: PopAdLdVar
  loc_CBD4C9: LitVarI4
  loc_CBD4D1: PopAdLdVar
  loc_CBD4D2: FLdPr Me
  loc_CBD4D5: VCallAd Control_ID_ServDevaFlex
  loc_CBD4D8: FStAdFunc var_DC
  loc_CBD4DB: FLdPr var_DC
  loc_CBD4DE: LateIdCallLdVar
  loc_CBD4E8: CStrVarTmp
  loc_CBD4E9: FStStrNoPop var_178
  loc_CBD4EC: LitStr "1"
  loc_CBD4EF: EqStr
  loc_CBD4F1: FLdRfVar var_FC
  loc_CBD4F4: FLdRfVar var_1B0
  loc_CBD4F7: LitVarStr var_10C, "ImpoSede"
  loc_CBD4FC: PopAdLdVar
  loc_CBD4FD: FLdRfVar var_154
  loc_CBD500: FLdRfVar var_120
  loc_CBD503: FLdPr Me
  loc_CBD506: MemLdRfVar from_stack_1.global_56
  loc_CBD509: NewIfNullPr clsservdeva
  loc_CBD50C: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD511: FLdPr var_120
  loc_CBD514:  = Me.Fields
  loc_CBD519: FLdPr var_154
  loc_CBD51C: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD521: FLdPr var_1B0
  loc_CBD524:  = Me.Value
  loc_CBD529: FLdRfVar var_FC
  loc_CBD52C: FnCDblVar
  loc_CBD52E: LitI2_Byte 0
  loc_CBD530: CR8I2
  loc_CBD531: GtR4
  loc_CBD532: AndI4
  loc_CBD533: FFree1Str var_178
  loc_CBD536: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = ""
  loc_CBD543: FFreeVar var_98 = "": var_EC = ""
  loc_CBD54C: BranchF loc_CBD5F7
  loc_CBD54F: FLdRfVar var_120
  loc_CBD552: LitVarStr var_A8, "ImpoSede"
  loc_CBD557: PopAdLdVar
  loc_CBD558: FLdRfVar var_DC
  loc_CBD55B: FLdRfVar var_88
  loc_CBD55E: FLdPr Me
  loc_CBD561: MemLdRfVar from_stack_1.global_56
  loc_CBD564: NewIfNullPr clsservdeva
  loc_CBD567: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD56C: FLdPr var_88
  loc_CBD56F:  = Me.Fields
  loc_CBD574: FLdPr var_DC
  loc_CBD577: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD57C: FLdPr Me
  loc_CBD57F: VCallAd Control_ID_ServDevaFlex
  loc_CBD582: FStAdFunc var_154
  loc_CBD585: FLdPr var_154
  loc_CBD588: LateIdLdVar var_130 DispID_10 0
  loc_CBD58F: CI4Var
  loc_CBD591: CVarI4
  loc_CBD595: PopAdLdVar
  loc_CBD596: LitVarI4
  loc_CBD59E: PopAdLdVar
  loc_CBD59F: LitI4 1
  loc_CBD5A4: LitI4 1
  loc_CBD5A9: LitVarStr var_B8, "0.00"
  loc_CBD5AE: FStVarCopyObj var_EC
  loc_CBD5B1: FLdRfVar var_EC
  loc_CBD5B4: FLdZeroAd var_120
  loc_CBD5B7: CVarAd
  loc_CBD5BB: FLdRfVar var_FC
  loc_CBD5BE: ImpAdCallFPR4  = Format(, )
  loc_CBD5C3: FLdRfVar var_FC
  loc_CBD5C6: CStrVarTmp
  loc_CBD5C7: CVarStr var_164
  loc_CBD5CA: PopAdLdVar
  loc_CBD5CB: FLdPr Me
  loc_CBD5CE: VCallAd Control_ID_ServDevaFlex
  loc_CBD5D1: FStAdFunc var_1B0
  loc_CBD5D4: FLdPr var_1B0
  loc_CBD5D7: LateIdCallSt
  loc_CBD5DF: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_CBD5EA: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBD5F7: FLdPr Me
  loc_CBD5FA: VCallAd Control_ID_ServDevaFlex
  loc_CBD5FD: FStAdFunc var_88
  loc_CBD600: FLdPr var_88
  loc_CBD603: LateIdLdVar var_98 DispID_10 0
  loc_CBD60A: CI4Var
  loc_CBD60C: CVarI4
  loc_CBD610: PopAdLdVar
  loc_CBD611: LitVarI4
  loc_CBD619: PopAdLdVar
  loc_CBD61A: FLdPr Me
  loc_CBD61D: VCallAd Control_ID_ServDevaFlex
  loc_CBD620: FStAdFunc var_DC
  loc_CBD623: FLdPr var_DC
  loc_CBD626: LateIdCallLdVar
  loc_CBD630: CStrVarTmp
  loc_CBD631: CVarStr var_FC
  loc_CBD634: ImpAdCallI2 IsNumeric()
  loc_CBD639: FLdPr Me
  loc_CBD63C: VCallAd Control_ID_ServDevaFlex
  loc_CBD63F: FStAdFunc var_120
  loc_CBD642: FLdPr var_120
  loc_CBD645: LateIdLdVar var_130 DispID_10 0
  loc_CBD64C: CI4Var
  loc_CBD64E: CVarI4
  loc_CBD652: PopAdLdVar
  loc_CBD653: LitVarI4
  loc_CBD65B: PopAdLdVar
  loc_CBD65C: FLdPr Me
  loc_CBD65F: VCallAd Control_ID_ServDevaFlex
  loc_CBD662: FStAdFunc var_154
  loc_CBD665: FLdPr var_154
  loc_CBD668: LateIdCallLdVar
  loc_CBD672: CStrVarTmp
  loc_CBD673: CVarStr var_174
  loc_CBD676: ImpAdCallI2 IsNumeric()
  loc_CBD67B: AndI4
  loc_CBD67C: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBD687: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBD696: BranchF loc_CBD7B0
  loc_CBD699: FLdPr Me
  loc_CBD69C: VCallAd Control_ID_ServDevaFlex
  loc_CBD69F: FStAdFunc var_88
  loc_CBD6A2: FLdPr var_88
  loc_CBD6A5: LateIdLdVar var_98 DispID_10 0
  loc_CBD6AC: CI4Var
  loc_CBD6AE: CVarI4
  loc_CBD6B2: PopAdLdVar
  loc_CBD6B3: LitVarI4
  loc_CBD6BB: PopAdLdVar
  loc_CBD6BC: FLdPr Me
  loc_CBD6BF: VCallAd Control_ID_ServDevaFlex
  loc_CBD6C2: FStAdFunc var_DC
  loc_CBD6C5: FLdPr var_DC
  loc_CBD6C8: LateIdCallLdVar
  loc_CBD6D2: PopAd
  loc_CBD6D4: FLdPr Me
  loc_CBD6D7: VCallAd Control_ID_ServDevaFlex
  loc_CBD6DA: FStAdFunc var_120
  loc_CBD6DD: FLdPr var_120
  loc_CBD6E0: LateIdLdVar var_FC DispID_10 0
  loc_CBD6E7: CI4Var
  loc_CBD6E9: CVarI4
  loc_CBD6ED: PopAdLdVar
  loc_CBD6EE: LitVarI4
  loc_CBD6F6: PopAdLdVar
  loc_CBD6F7: FLdPr Me
  loc_CBD6FA: VCallAd Control_ID_ServDevaFlex
  loc_CBD6FD: FStAdFunc var_154
  loc_CBD700: FLdPr var_154
  loc_CBD703: LateIdCallLdVar
  loc_CBD70D: PopAd
  loc_CBD70F: FLdPr Me
  loc_CBD712: VCallAd Control_ID_ServDevaFlex
  loc_CBD715: FStAdFunc var_1B0
  loc_CBD718: FLdPr var_1B0
  loc_CBD71B: LateIdLdVar var_1C0 DispID_10 0
  loc_CBD722: CI4Var
  loc_CBD724: CVarI4
  loc_CBD728: PopAdLdVar
  loc_CBD729: LitVarI4
  loc_CBD731: PopAdLdVar
  loc_CBD732: LitI4 1
  loc_CBD737: LitI4 1
  loc_CBD73C: LitVarStr var_19C, "0.00"
  loc_CBD741: FStVarCopyObj var_174
  loc_CBD744: FLdRfVar var_174
  loc_CBD747: FLdRfVar var_EC
  loc_CBD74A: CStrVarTmp
  loc_CBD74B: FStStrNoPop var_178
  loc_CBD74E: CR8Str
  loc_CBD750: FLdRfVar var_130
  loc_CBD753: CStrVarTmp
  loc_CBD754: FStStrNoPop var_17C
  loc_CBD757: CR8Str
  loc_CBD759: MulR8
  loc_CBD75A: CVarR8
  loc_CBD75E: FLdRfVar var_1AC
  loc_CBD761: ImpAdCallFPR4  = Format(, )
  loc_CBD766: FLdRfVar var_1AC
  loc_CBD769: CStrVarTmp
  loc_CBD76A: CVarStr var_210
  loc_CBD76D: PopAdLdVar
  loc_CBD76E: FLdPr Me
  loc_CBD771: VCallAd Control_ID_ServDevaFlex
  loc_CBD774: FStAdFunc var_224
  loc_CBD777: FLdPr var_224
  loc_CBD77A: LateIdCallSt
  loc_CBD782: FFreeStr var_178 = ""
  loc_CBD789: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBD798: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBD7AD: Branch loc_CBD8C8
  loc_CBD7B0: FLdPr Me
  loc_CBD7B3: VCallAd Control_ID_ServDevaFlex
  loc_CBD7B6: FStAdFunc var_88
  loc_CBD7B9: FLdPr var_88
  loc_CBD7BC: LateIdLdVar var_98 DispID_10 0
  loc_CBD7C3: CI4Var
  loc_CBD7C5: CVarI4
  loc_CBD7C9: PopAdLdVar
  loc_CBD7CA: LitVarI4
  loc_CBD7D2: PopAdLdVar
  loc_CBD7D3: FLdPr Me
  loc_CBD7D6: VCallAd Control_ID_ServDevaFlex
  loc_CBD7D9: FStAdFunc var_DC
  loc_CBD7DC: FLdPr var_DC
  loc_CBD7DF: LateIdCallLdVar
  loc_CBD7E9: CStrVarTmp
  loc_CBD7EA: CVarStr var_FC
  loc_CBD7ED: ImpAdCallI2 IsNumeric()
  loc_CBD7F2: FFreeAd var_88 = ""
  loc_CBD7F9: FFreeVar var_98 = "": var_EC = ""
  loc_CBD802: BranchF loc_CBD8C8
  loc_CBD805: FLdPr Me
  loc_CBD808: VCallAd Control_ID_ServDevaFlex
  loc_CBD80B: FStAdFunc var_88
  loc_CBD80E: FLdPr var_88
  loc_CBD811: LateIdLdVar var_98 DispID_10 0
  loc_CBD818: CI4Var
  loc_CBD81A: CVarI4
  loc_CBD81E: PopAdLdVar
  loc_CBD81F: LitVarI4
  loc_CBD827: PopAdLdVar
  loc_CBD828: FLdPr Me
  loc_CBD82B: VCallAd Control_ID_ServDevaFlex
  loc_CBD82E: FStAdFunc var_DC
  loc_CBD831: FLdPr var_DC
  loc_CBD834: LateIdCallLdVar
  loc_CBD83E: PopAd
  loc_CBD840: FLdPr Me
  loc_CBD843: VCallAd Control_ID_ServDevaFlex
  loc_CBD846: FStAdFunc var_120
  loc_CBD849: FLdPr var_120
  loc_CBD84C: LateIdLdVar var_174 DispID_10 0
  loc_CBD853: CI4Var
  loc_CBD855: CVarI4
  loc_CBD859: PopAdLdVar
  loc_CBD85A: LitVarI4
  loc_CBD862: PopAdLdVar
  loc_CBD863: LitI4 1
  loc_CBD868: LitI4 1
  loc_CBD86D: LitVarStr var_11C, "0.00"
  loc_CBD872: FStVarCopyObj var_130
  loc_CBD875: FLdRfVar var_130
  loc_CBD878: FLdRfVar var_EC
  loc_CBD87B: CStrVarTmp
  loc_CBD87C: FStStrNoPop var_178
  loc_CBD87F: CR8Str
  loc_CBD881: CVarR8
  loc_CBD885: FLdRfVar var_164
  loc_CBD888: ImpAdCallFPR4  = Format(, )
  loc_CBD88D: FLdRfVar var_164
  loc_CBD890: CStrVarTmp
  loc_CBD891: CVarStr var_1AC
  loc_CBD894: PopAdLdVar
  loc_CBD895: FLdPr Me
  loc_CBD898: VCallAd Control_ID_ServDevaFlex
  loc_CBD89B: FStAdFunc var_154
  loc_CBD89E: FLdPr var_154
  loc_CBD8A1: LateIdCallSt
  loc_CBD8A9: FFree1Str var_178
  loc_CBD8AC: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBD8B7: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBD8C8: FLdPr Me
  loc_CBD8CB: VCallAd Control_ID_ServDevaFlex
  loc_CBD8CE: FStAdFunc var_154
  loc_CBD8D1: FLdPr var_154
  loc_CBD8D4: LateIdLdVar var_98 DispID_10 0
  loc_CBD8DB: CI4Var
  loc_CBD8DD: CVarI4
  loc_CBD8E1: PopAdLdVar
  loc_CBD8E2: LitVarI4
  loc_CBD8EA: PopAdLdVar
  loc_CBD8EB: FLdRfVar var_EC
  loc_CBD8EE: FLdRfVar var_120
  loc_CBD8F1: LitVarStr var_A8, "PeriInfo"
  loc_CBD8F6: PopAdLdVar
  loc_CBD8F7: FLdRfVar var_DC
  loc_CBD8FA: FLdRfVar var_88
  loc_CBD8FD: FLdPr Me
  loc_CBD900: MemLdRfVar from_stack_1.global_56
  loc_CBD903: NewIfNullPr clsservdeva
  loc_CBD906: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD90B: FLdPr var_88
  loc_CBD90E:  = Me.Fields
  loc_CBD913: FLdPr var_DC
  loc_CBD916: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD91B: FLdPr var_120
  loc_CBD91E:  = Me.Value
  loc_CBD923: FLdRfVar var_EC
  loc_CBD926: CStrVarTmp
  loc_CBD927: CVarStr var_FC
  loc_CBD92A: PopAdLdVar
  loc_CBD92B: FLdPr Me
  loc_CBD92E: VCallAd Control_ID_ServDevaFlex
  loc_CBD931: FStAdFunc var_1B0
  loc_CBD934: FLdPr var_1B0
  loc_CBD937: LateIdCallSt
  loc_CBD93F: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBD94C: FFreeVar var_98 = "": var_EC = ""
  loc_CBD955: FLdPr Me
  loc_CBD958: VCallAd Control_ID_ServDevaFlex
  loc_CBD95B: FStAdFunc var_154
  loc_CBD95E: FLdPr var_154
  loc_CBD961: LateIdLdVar var_98 DispID_10 0
  loc_CBD968: CI4Var
  loc_CBD96A: CVarI4
  loc_CBD96E: PopAdLdVar
  loc_CBD96F: LitVarI4
  loc_CBD977: PopAdLdVar
  loc_CBD978: FLdRfVar var_EC
  loc_CBD97B: FLdRfVar var_120
  loc_CBD97E: LitVarStr var_A8, "CodiConc"
  loc_CBD983: PopAdLdVar
  loc_CBD984: FLdRfVar var_DC
  loc_CBD987: FLdRfVar var_88
  loc_CBD98A: FLdPr Me
  loc_CBD98D: MemLdRfVar from_stack_1.global_56
  loc_CBD990: NewIfNullPr clsservdeva
  loc_CBD993: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBD998: FLdPr var_88
  loc_CBD99B:  = Me.Fields
  loc_CBD9A0: FLdPr var_DC
  loc_CBD9A3: from_stack_2 = Me.Item(from_stack_1)
  loc_CBD9A8: FLdPr var_120
  loc_CBD9AB:  = Me.Value
  loc_CBD9B0: FLdRfVar var_EC
  loc_CBD9B3: CStrVarTmp
  loc_CBD9B4: CVarStr var_FC
  loc_CBD9B7: PopAdLdVar
  loc_CBD9B8: FLdPr Me
  loc_CBD9BB: VCallAd Control_ID_ServDevaFlex
  loc_CBD9BE: FStAdFunc var_1B0
  loc_CBD9C1: FLdPr var_1B0
  loc_CBD9C4: LateIdCallSt
  loc_CBD9CC: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBD9D9: FFreeVar var_98 = "": var_EC = ""
  loc_CBD9E2: FLdPr Me
  loc_CBD9E5: VCallAd Control_ID_ServDevaFlex
  loc_CBD9E8: FStAdFunc var_154
  loc_CBD9EB: FLdPr var_154
  loc_CBD9EE: LateIdLdVar var_98 DispID_10 0
  loc_CBD9F5: CI4Var
  loc_CBD9F7: CVarI4
  loc_CBD9FB: PopAdLdVar
  loc_CBD9FC: LitVarI4
  loc_CBDA04: PopAdLdVar
  loc_CBDA05: FLdRfVar var_EC
  loc_CBDA08: FLdRfVar var_120
  loc_CBDA0B: LitVarStr var_A8, "TiafConc"
  loc_CBDA10: PopAdLdVar
  loc_CBDA11: FLdRfVar var_DC
  loc_CBDA14: FLdRfVar var_88
  loc_CBDA17: FLdPr Me
  loc_CBDA1A: MemLdRfVar from_stack_1.global_56
  loc_CBDA1D: NewIfNullPr clsservdeva
  loc_CBDA20: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBDA25: FLdPr var_88
  loc_CBDA28:  = Me.Fields
  loc_CBDA2D: FLdPr var_DC
  loc_CBDA30: from_stack_2 = Me.Item(from_stack_1)
  loc_CBDA35: FLdPr var_120
  loc_CBDA38:  = Me.Value
  loc_CBDA3D: FLdRfVar var_EC
  loc_CBDA40: CStrVarTmp
  loc_CBDA41: CVarStr var_FC
  loc_CBDA44: PopAdLdVar
  loc_CBDA45: FLdPr Me
  loc_CBDA48: VCallAd Control_ID_ServDevaFlex
  loc_CBDA4B: FStAdFunc var_1B0
  loc_CBDA4E: FLdPr var_1B0
  loc_CBDA51: LateIdCallSt
  loc_CBDA59: FFreeAd var_88 = "": var_DC = "": var_154 = "": var_120 = ""
  loc_CBDA66: FFreeVar var_98 = "": var_EC = ""
  loc_CBDA6F: Branch loc_CBDC63
  loc_CBDA72: FLdPr Me
  loc_CBDA75: VCallAd Control_ID_ServDevaFlex
  loc_CBDA78: FStAdFunc var_88
  loc_CBDA7B: FLdPr var_88
  loc_CBDA7E: LateIdLdVar var_98 DispID_10 0
  loc_CBDA85: CI4Var
  loc_CBDA87: CVarI4
  loc_CBDA8B: PopAdLdVar
  loc_CBDA8C: LitVarI4
  loc_CBDA94: PopAdLdVar
  loc_CBDA95: LitVarStr var_10C, vbNullString
  loc_CBDA9A: PopAdLdVar
  loc_CBDA9B: FLdPr Me
  loc_CBDA9E: VCallAd Control_ID_ServDevaFlex
  loc_CBDAA1: FStAdFunc var_DC
  loc_CBDAA4: FLdPr var_DC
  loc_CBDAA7: LateIdCallSt
  loc_CBDAAF: FFreeAd var_88 = ""
  loc_CBDAB6: FFree1Var var_98 = ""
  loc_CBDAB9: FLdPr Me
  loc_CBDABC: VCallAd Control_ID_ServDevaFlex
  loc_CBDABF: FStAdFunc var_88
  loc_CBDAC2: FLdPr var_88
  loc_CBDAC5: LateIdLdVar var_98 DispID_10 0
  loc_CBDACC: CI4Var
  loc_CBDACE: CVarI4
  loc_CBDAD2: PopAdLdVar
  loc_CBDAD3: LitVarI4
  loc_CBDADB: PopAdLdVar
  loc_CBDADC: LitVarStr var_10C, vbNullString
  loc_CBDAE1: PopAdLdVar
  loc_CBDAE2: FLdPr Me
  loc_CBDAE5: VCallAd Control_ID_ServDevaFlex
  loc_CBDAE8: FStAdFunc var_DC
  loc_CBDAEB: FLdPr var_DC
  loc_CBDAEE: LateIdCallSt
  loc_CBDAF6: FFreeAd var_88 = ""
  loc_CBDAFD: FFree1Var var_98 = ""
  loc_CBDB00: FLdPr Me
  loc_CBDB03: VCallAd Control_ID_ServDevaFlex
  loc_CBDB06: FStAdFunc var_88
  loc_CBDB09: FLdPr var_88
  loc_CBDB0C: LateIdLdVar var_98 DispID_10 0
  loc_CBDB13: CI4Var
  loc_CBDB15: CVarI4
  loc_CBDB19: PopAdLdVar
  loc_CBDB1A: LitVarI4
  loc_CBDB22: PopAdLdVar
  loc_CBDB23: LitVarStr var_10C, vbNullString
  loc_CBDB28: PopAdLdVar
  loc_CBDB29: FLdPr Me
  loc_CBDB2C: VCallAd Control_ID_ServDevaFlex
  loc_CBDB2F: FStAdFunc var_DC
  loc_CBDB32: FLdPr var_DC
  loc_CBDB35: LateIdCallSt
  loc_CBDB3D: FFreeAd var_88 = ""
  loc_CBDB44: FFree1Var var_98 = ""
  loc_CBDB47: FLdPr Me
  loc_CBDB4A: VCallAd Control_ID_ServDevaFlex
  loc_CBDB4D: FStAdFunc var_88
  loc_CBDB50: FLdPr var_88
  loc_CBDB53: LateIdLdVar var_98 DispID_10 0
  loc_CBDB5A: CI4Var
  loc_CBDB5C: CVarI4
  loc_CBDB60: PopAdLdVar
  loc_CBDB61: LitVarI4
  loc_CBDB69: PopAdLdVar
  loc_CBDB6A: LitVarStr var_10C, vbNullString
  loc_CBDB6F: PopAdLdVar
  loc_CBDB70: FLdPr Me
  loc_CBDB73: VCallAd Control_ID_ServDevaFlex
  loc_CBDB76: FStAdFunc var_DC
  loc_CBDB79: FLdPr var_DC
  loc_CBDB7C: LateIdCallSt
  loc_CBDB84: FFreeAd var_88 = ""
  loc_CBDB8B: FFree1Var var_98 = ""
  loc_CBDB8E: FLdPr Me
  loc_CBDB91: VCallAd Control_ID_ServDevaFlex
  loc_CBDB94: FStAdFunc var_88
  loc_CBDB97: FLdPr var_88
  loc_CBDB9A: LateIdLdVar var_98 DispID_10 0
  loc_CBDBA1: CI4Var
  loc_CBDBA3: CVarI4
  loc_CBDBA7: PopAdLdVar
  loc_CBDBA8: LitVarI4
  loc_CBDBB0: PopAdLdVar
  loc_CBDBB1: LitVarStr var_10C, vbNullString
  loc_CBDBB6: PopAdLdVar
  loc_CBDBB7: FLdPr Me
  loc_CBDBBA: VCallAd Control_ID_ServDevaFlex
  loc_CBDBBD: FStAdFunc var_DC
  loc_CBDBC0: FLdPr var_DC
  loc_CBDBC3: LateIdCallSt
  loc_CBDBCB: FFreeAd var_88 = ""
  loc_CBDBD2: FFree1Var var_98 = ""
  loc_CBDBD5: FLdPr Me
  loc_CBDBD8: VCallAd Control_ID_ServDevaFlex
  loc_CBDBDB: FStAdFunc var_88
  loc_CBDBDE: FLdPr var_88
  loc_CBDBE1: LateIdLdVar var_98 DispID_10 0
  loc_CBDBE8: CI4Var
  loc_CBDBEA: CVarI4
  loc_CBDBEE: PopAdLdVar
  loc_CBDBEF: LitVarI4
  loc_CBDBF7: PopAdLdVar
  loc_CBDBF8: LitVarStr var_10C, vbNullString
  loc_CBDBFD: PopAdLdVar
  loc_CBDBFE: FLdPr Me
  loc_CBDC01: VCallAd Control_ID_ServDevaFlex
  loc_CBDC04: FStAdFunc var_DC
  loc_CBDC07: FLdPr var_DC
  loc_CBDC0A: LateIdCallSt
  loc_CBDC12: FFreeAd var_88 = ""
  loc_CBDC19: FFree1Var var_98 = ""
  loc_CBDC1C: FLdPr Me
  loc_CBDC1F: VCallAd Control_ID_ServDevaFlex
  loc_CBDC22: FStAdFunc var_88
  loc_CBDC25: FLdPr var_88
  loc_CBDC28: LateIdLdVar var_98 DispID_10 0
  loc_CBDC2F: CI4Var
  loc_CBDC31: CVarI4
  loc_CBDC35: PopAdLdVar
  loc_CBDC36: LitVarI4
  loc_CBDC3E: PopAdLdVar
  loc_CBDC3F: LitVarStr var_10C, vbNullString
  loc_CBDC44: PopAdLdVar
  loc_CBDC45: FLdPr Me
  loc_CBDC48: VCallAd Control_ID_ServDevaFlex
  loc_CBDC4B: FStAdFunc var_DC
  loc_CBDC4E: FLdPr var_DC
  loc_CBDC51: LateIdCallSt
  loc_CBDC59: FFreeAd var_88 = ""
  loc_CBDC60: FFree1Var var_98 = ""
  loc_CBDC63: FLdPr Me
  loc_CBDC66: VCallAd Control_ID_ServDevaFlex
  loc_CBDC69: FStAdFunc var_88
  loc_CBDC6C: FLdPr var_88
  loc_CBDC6F: LateIdLdVar var_98 DispID_11 0
  loc_CBDC76: CI4Var
  loc_CBDC78: LitI4 3
  loc_CBDC7D: EqI4
  loc_CBDC7E: FFree1Ad var_88
  loc_CBDC81: FFree1Var var_98 = ""
  loc_CBDC84: BranchF loc_CBDFE4
  loc_CBDC87: FLdPr Me
  loc_CBDC8A: VCallAd Control_ID_ServDevaFlex
  loc_CBDC8D: FStAdFunc var_88
  loc_CBDC90: FLdPr var_88
  loc_CBDC93: LateIdLdVar var_98 DispID_10 0
  loc_CBDC9A: CI4Var
  loc_CBDC9C: CVarI4
  loc_CBDCA0: PopAdLdVar
  loc_CBDCA1: LitVarI4
  loc_CBDCA9: PopAdLdVar
  loc_CBDCAA: FLdPr Me
  loc_CBDCAD: VCallAd Control_ID_ServDevaFlex
  loc_CBDCB0: FStAdFunc var_DC
  loc_CBDCB3: FLdPr var_DC
  loc_CBDCB6: LateIdCallLdVar
  loc_CBDCC0: CStrVarTmp
  loc_CBDCC1: CVarStr var_FC
  loc_CBDCC4: ImpAdCallI2 IsNumeric()
  loc_CBDCC9: FLdPr Me
  loc_CBDCCC: VCallAd Control_ID_ServDevaFlex
  loc_CBDCCF: FStAdFunc var_120
  loc_CBDCD2: FLdPr var_120
  loc_CBDCD5: LateIdLdVar var_130 DispID_10 0
  loc_CBDCDC: CI4Var
  loc_CBDCDE: CVarI4
  loc_CBDCE2: PopAdLdVar
  loc_CBDCE3: LitVarI4
  loc_CBDCEB: PopAdLdVar
  loc_CBDCEC: FLdPr Me
  loc_CBDCEF: VCallAd Control_ID_ServDevaFlex
  loc_CBDCF2: FStAdFunc var_154
  loc_CBDCF5: FLdPr var_154
  loc_CBDCF8: LateIdCallLdVar
  loc_CBDD02: CStrVarTmp
  loc_CBDD03: CVarStr var_174
  loc_CBDD06: ImpAdCallI2 IsNumeric()
  loc_CBDD0B: AndI4
  loc_CBDD0C: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBDD17: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = ""
  loc_CBDD26: BranchF loc_CBDEFA
  loc_CBDD29: FLdPr Me
  loc_CBDD2C: VCallAd Control_ID_ServDevaFlex
  loc_CBDD2F: FStAdFunc var_88
  loc_CBDD32: FLdPr var_88
  loc_CBDD35: LateIdLdVar var_98 DispID_10 0
  loc_CBDD3C: CI4Var
  loc_CBDD3E: CVarI4
  loc_CBDD42: PopAdLdVar
  loc_CBDD43: LitVarI4
  loc_CBDD4B: PopAdLdVar
  loc_CBDD4C: FLdPr Me
  loc_CBDD4F: VCallAd Control_ID_ServDevaFlex
  loc_CBDD52: FStAdFunc var_DC
  loc_CBDD55: FLdPr var_DC
  loc_CBDD58: LateIdCallLdVar
  loc_CBDD62: PopAd
  loc_CBDD64: FLdPr Me
  loc_CBDD67: VCallAd Control_ID_ServDevaFlex
  loc_CBDD6A: FStAdFunc var_120
  loc_CBDD6D: FLdPr var_120
  loc_CBDD70: LateIdLdVar var_174 DispID_10 0
  loc_CBDD77: CI4Var
  loc_CBDD79: CVarI4
  loc_CBDD7D: PopAdLdVar
  loc_CBDD7E: LitVarI4
  loc_CBDD86: PopAdLdVar
  loc_CBDD87: LitI4 1
  loc_CBDD8C: LitI4 1
  loc_CBDD91: LitVarStr var_10C, "0.00"
  loc_CBDD96: FStVarCopyObj var_130
  loc_CBDD99: FLdRfVar var_130
  loc_CBDD9C: FLdRfVar var_EC
  loc_CBDD9F: CStrVarTmp
  loc_CBDDA0: CVarStr var_FC
  loc_CBDDA3: FLdRfVar var_164
  loc_CBDDA6: ImpAdCallFPR4  = Format(, )
  loc_CBDDAB: FLdRfVar var_164
  loc_CBDDAE: CStrVarTmp
  loc_CBDDAF: CVarStr var_1AC
  loc_CBDDB2: PopAdLdVar
  loc_CBDDB3: FLdPr Me
  loc_CBDDB6: VCallAd Control_ID_ServDevaFlex
  loc_CBDDB9: FStAdFunc var_154
  loc_CBDDBC: FLdPr var_154
  loc_CBDDBF: LateIdCallSt
  loc_CBDDC7: FFreeAd var_88 = "": var_DC = "": var_120 = ""
  loc_CBDDD2: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_174 = "": var_164 = ""
  loc_CBDDE3: FLdPr Me
  loc_CBDDE6: VCallAd Control_ID_ServDevaFlex
  loc_CBDDE9: FStAdFunc var_88
  loc_CBDDEC: FLdPr var_88
  loc_CBDDEF: LateIdLdVar var_98 DispID_10 0
  loc_CBDDF6: CI4Var
  loc_CBDDF8: CVarI4
  loc_CBDDFC: PopAdLdVar
  loc_CBDDFD: LitVarI4
  loc_CBDE05: PopAdLdVar
  loc_CBDE06: FLdPr Me
  loc_CBDE09: VCallAd Control_ID_ServDevaFlex
  loc_CBDE0C: FStAdFunc var_DC
  loc_CBDE0F: FLdPr var_DC
  loc_CBDE12: LateIdCallLdVar
  loc_CBDE1C: PopAd
  loc_CBDE1E: FLdPr Me
  loc_CBDE21: VCallAd Control_ID_ServDevaFlex
  loc_CBDE24: FStAdFunc var_120
  loc_CBDE27: FLdPr var_120
  loc_CBDE2A: LateIdLdVar var_FC DispID_10 0
  loc_CBDE31: CI4Var
  loc_CBDE33: CVarI4
  loc_CBDE37: PopAdLdVar
  loc_CBDE38: LitVarI4
  loc_CBDE40: PopAdLdVar
  loc_CBDE41: FLdPr Me
  loc_CBDE44: VCallAd Control_ID_ServDevaFlex
  loc_CBDE47: FStAdFunc var_154
  loc_CBDE4A: FLdPr var_154
  loc_CBDE4D: LateIdCallLdVar
  loc_CBDE57: PopAd
  loc_CBDE59: FLdPr Me
  loc_CBDE5C: VCallAd Control_ID_ServDevaFlex
  loc_CBDE5F: FStAdFunc var_1B0
  loc_CBDE62: FLdPr var_1B0
  loc_CBDE65: LateIdLdVar var_1C0 DispID_10 0
  loc_CBDE6C: CI4Var
  loc_CBDE6E: CVarI4
  loc_CBDE72: PopAdLdVar
  loc_CBDE73: LitVarI4
  loc_CBDE7B: PopAdLdVar
  loc_CBDE7C: LitI4 1
  loc_CBDE81: LitI4 1
  loc_CBDE86: LitVarStr var_19C, "0.00"
  loc_CBDE8B: FStVarCopyObj var_174
  loc_CBDE8E: FLdRfVar var_174
  loc_CBDE91: FLdRfVar var_EC
  loc_CBDE94: CStrVarTmp
  loc_CBDE95: FStStrNoPop var_178
  loc_CBDE98: CR8Str
  loc_CBDE9A: FLdRfVar var_130
  loc_CBDE9D: CStrVarTmp
  loc_CBDE9E: FStStrNoPop var_17C
  loc_CBDEA1: CR8Str
  loc_CBDEA3: MulR8
  loc_CBDEA4: CVarR8
  loc_CBDEA8: FLdRfVar var_1AC
  loc_CBDEAB: ImpAdCallFPR4  = Format(, )
  loc_CBDEB0: FLdRfVar var_1AC
  loc_CBDEB3: CStrVarTmp
  loc_CBDEB4: CVarStr var_210
  loc_CBDEB7: PopAdLdVar
  loc_CBDEB8: FLdPr Me
  loc_CBDEBB: VCallAd Control_ID_ServDevaFlex
  loc_CBDEBE: FStAdFunc var_224
  loc_CBDEC1: FLdPr var_224
  loc_CBDEC4: LateIdCallSt
  loc_CBDECC: FFreeStr var_178 = ""
  loc_CBDED3: FFreeAd var_88 = "": var_DC = "": var_120 = "": var_154 = "": var_1B0 = ""
  loc_CBDEE2: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_130 = "": var_164 = "": var_174 = "": var_1C0 = "": var_1AC = ""
  loc_CBDEF7: Branch loc_CBDFE4
  loc_CBDEFA: FLdPr Me
  loc_CBDEFD: VCallAd Control_ID_ServDevaFlex
  loc_CBDF00: FStAdFunc var_88
  loc_CBDF03: FLdPr var_88
  loc_CBDF06: LateIdLdVar var_130 DispID_10 0
  loc_CBDF0D: CI4Var
  loc_CBDF0F: CVarI4
  loc_CBDF13: PopAdLdVar
  loc_CBDF14: LitVarI4
  loc_CBDF1C: PopAdLdVar
  loc_CBDF1D: LitI4 1
  loc_CBDF22: LitI4 1
  loc_CBDF27: LitVarStr var_B8, "0.00"
  loc_CBDF2C: FStVarCopyObj var_EC
  loc_CBDF2F: FLdRfVar var_EC
  loc_CBDF32: LitVarI2 var_98, 0
  loc_CBDF37: FLdRfVar var_FC
  loc_CBDF3A: ImpAdCallFPR4  = Format(, )
  loc_CBDF3F: FLdRfVar var_FC
  loc_CBDF42: CStrVarTmp
  loc_CBDF43: CVarStr var_164
  loc_CBDF46: PopAdLdVar
  loc_CBDF47: FLdPr Me
  loc_CBDF4A: VCallAd Control_ID_ServDevaFlex
  loc_CBDF4D: FStAdFunc var_DC
  loc_CBDF50: FLdPr var_DC
  loc_CBDF53: LateIdCallSt
  loc_CBDF5B: FFreeAd var_88 = ""
  loc_CBDF62: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBDF6F: FLdPr Me
  loc_CBDF72: VCallAd Control_ID_ServDevaFlex
  loc_CBDF75: FStAdFunc var_88
  loc_CBDF78: FLdPr var_88
  loc_CBDF7B: LateIdLdVar var_130 DispID_10 0
  loc_CBDF82: CI4Var
  loc_CBDF84: CVarI4
  loc_CBDF88: PopAdLdVar
  loc_CBDF89: LitVarI4
  loc_CBDF91: PopAdLdVar
  loc_CBDF92: LitI4 1
  loc_CBDF97: LitI4 1
  loc_CBDF9C: LitVarStr var_B8, "0.00"
  loc_CBDFA1: FStVarCopyObj var_EC
  loc_CBDFA4: FLdRfVar var_EC
  loc_CBDFA7: LitVarI2 var_98, 0
  loc_CBDFAC: FLdRfVar var_FC
  loc_CBDFAF: ImpAdCallFPR4  = Format(, )
  loc_CBDFB4: FLdRfVar var_FC
  loc_CBDFB7: CStrVarTmp
  loc_CBDFB8: CVarStr var_164
  loc_CBDFBB: PopAdLdVar
  loc_CBDFBC: FLdPr Me
  loc_CBDFBF: VCallAd Control_ID_ServDevaFlex
  loc_CBDFC2: FStAdFunc var_DC
  loc_CBDFC5: FLdPr var_DC
  loc_CBDFC8: LateIdCallSt
  loc_CBDFD0: FFreeAd var_88 = ""
  loc_CBDFD7: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_FC = ""
  loc_CBDFE4: Call Proc_275_40_B2C9E8()
  loc_CBDFE9: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C2EFBC
  'Data Table: 51A85C
  loc_C2E548: LitI2_Byte 0
  loc_C2E54A: PopTmpLdAd2 var_E2
  loc_C2E54D: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_C2E552: FLdPr Me
  loc_C2E555: MemLdStr global_64
  loc_C2E558: LitStr vbNullString
  loc_C2E55B: NeStr
  loc_C2E55D: BranchF loc_C2E561
  loc_C2E560: ExitProcHresult
  loc_C2E561: Call Proc_275_37_B188E8()
  loc_C2E566: LitVarStr var_F4, vbNullString
  loc_C2E56B: PopAdLdVar
  loc_C2E56C: FLdPr Me
  loc_C2E56F: VCallAd Control_ID_FechVencMsk
  loc_C2E572: FStAdFunc var_108
  loc_C2E575: FLdPr var_108
  loc_C2E578: LateIdSt
  loc_C2E57D: FFree1Ad var_108
  loc_C2E580: LitI2_Byte 0
  loc_C2E582: CR8I2
  loc_C2E583: FStFPR8 var_C8
  loc_C2E586: LitI2_Byte 0
  loc_C2E588: CR8I2
  loc_C2E589: FStFPR8 var_D0
  loc_C2E58C: LitI2_Byte 0
  loc_C2E58E: CR8I2
  loc_C2E58F: FStFPR8 var_D8
  loc_C2E592: LitI2_Byte 0
  loc_C2E594: CR8I2
  loc_C2E595: FStFPR8 var_E0
  loc_C2E598: LitI4 1
  loc_C2E59D: LitI4 1
  loc_C2E5A2: LitVarStr var_104, "0.00"
  loc_C2E5A7: FStVarCopyObj var_118
  loc_C2E5AA: FLdRfVar var_118
  loc_C2E5AD: FLdRfVar var_C8
  loc_C2E5B0: CVarRef
  loc_C2E5B5: FLdRfVar var_128
  loc_C2E5B8: ImpAdCallFPR4  = Format(, )
  loc_C2E5BD: FLdRfVar var_128
  loc_C2E5C0: CStrVarVal var_12C
  loc_C2E5C4: FLdPr Me
  loc_C2E5C7: VCallAd Control_ID_txtTotaDere
  loc_C2E5CA: FStAdFunc var_108
  loc_C2E5CD: FLdPr var_108
  loc_C2E5D0: Me.Text = from_stack_1
  loc_C2E5D5: FFree1Str var_12C
  loc_C2E5D8: FFree1Ad var_108
  loc_C2E5DB: FFreeVar var_118 = ""
  loc_C2E5E2: LitI4 1
  loc_C2E5E7: LitI4 1
  loc_C2E5EC: LitVarStr var_104, "0.00"
  loc_C2E5F1: FStVarCopyObj var_118
  loc_C2E5F4: FLdRfVar var_118
  loc_C2E5F7: FLdRfVar var_D0
  loc_C2E5FA: CVarRef
  loc_C2E5FF: FLdRfVar var_128
  loc_C2E602: ImpAdCallFPR4  = Format(, )
  loc_C2E607: FLdRfVar var_128
  loc_C2E60A: CStrVarVal var_12C
  loc_C2E60E: FLdPr Me
  loc_C2E611: VCallAd Control_ID_txtTotaReca
  loc_C2E614: FStAdFunc var_108
  loc_C2E617: FLdPr var_108
  loc_C2E61A: Me.Text = from_stack_1
  loc_C2E61F: FFree1Str var_12C
  loc_C2E622: FFree1Ad var_108
  loc_C2E625: FFreeVar var_118 = ""
  loc_C2E62C: LitI4 1
  loc_C2E631: LitI4 1
  loc_C2E636: LitVarStr var_104, "0.00"
  loc_C2E63B: FStVarCopyObj var_118
  loc_C2E63E: FLdRfVar var_118
  loc_C2E641: FLdRfVar var_D8
  loc_C2E644: CVarRef
  loc_C2E649: FLdRfVar var_128
  loc_C2E64C: ImpAdCallFPR4  = Format(, )
  loc_C2E651: FLdRfVar var_128
  loc_C2E654: CStrVarVal var_12C
  loc_C2E658: FLdPr Me
  loc_C2E65B: VCallAd Control_ID_txtTotaApre
  loc_C2E65E: FStAdFunc var_108
  loc_C2E661: FLdPr var_108
  loc_C2E664: Me.Text = from_stack_1
  loc_C2E669: FFree1Str var_12C
  loc_C2E66C: FFree1Ad var_108
  loc_C2E66F: FFreeVar var_118 = ""
  loc_C2E676: LitI4 2
  loc_C2E67B: FLdRfVar var_C8
  loc_C2E67E: CVarRef
  loc_C2E683: FLdRfVar var_118
  loc_C2E686: ImpAdCallFPR4  = Round(, )
  loc_C2E68B: FLdRfVar var_118
  loc_C2E68E: LitI4 2
  loc_C2E693: FLdRfVar var_D0
  loc_C2E696: CVarRef
  loc_C2E69B: FLdRfVar var_128
  loc_C2E69E: ImpAdCallFPR4  = Round(, )
  loc_C2E6A3: FLdRfVar var_128
  loc_C2E6A6: AddVar var_13C
  loc_C2E6AA: LitI4 2
  loc_C2E6AF: FLdRfVar var_D8
  loc_C2E6B2: CVarRef
  loc_C2E6B7: FLdRfVar var_15C
  loc_C2E6BA: ImpAdCallFPR4  = Round(, )
  loc_C2E6BF: FLdRfVar var_15C
  loc_C2E6C2: AddVar var_16C
  loc_C2E6C6: CR4Var
  loc_C2E6C7: FStFPR8 var_E0
  loc_C2E6CA: FFreeVar var_118 = "": var_128 = "": var_13C = "": var_15C = ""
  loc_C2E6D7: LitI4 1
  loc_C2E6DC: LitI4 1
  loc_C2E6E1: LitVarStr var_104, "0.00"
  loc_C2E6E6: FStVarCopyObj var_118
  loc_C2E6E9: FLdRfVar var_118
  loc_C2E6EC: FLdRfVar var_E0
  loc_C2E6EF: CVarRef
  loc_C2E6F4: FLdRfVar var_128
  loc_C2E6F7: ImpAdCallFPR4  = Format(, )
  loc_C2E6FC: FLdRfVar var_128
  loc_C2E6FF: CStrVarVal var_12C
  loc_C2E703: FLdPr Me
  loc_C2E706: VCallAd Control_ID_txtTotal
  loc_C2E709: FStAdFunc var_108
  loc_C2E70C: FLdPr var_108
  loc_C2E70F: Me.Text = from_stack_1
  loc_C2E714: FFree1Str var_12C
  loc_C2E717: FFree1Ad var_108
  loc_C2E71A: FFreeVar var_118 = ""
  loc_C2E721: FLdRfVar var_12C
  loc_C2E724: FLdPr Me
  loc_C2E727: VCallAd Control_ID_NumeCtaTxt
  loc_C2E72A: FStAdFunc var_108
  loc_C2E72D: FLdPr var_108
  loc_C2E730:  = Me.Text
  loc_C2E735: FLdPr Me
  loc_C2E738: VCallAd Control_ID_FechVencMsk
  loc_C2E73B: FStAdFunc var_170
  loc_C2E73E: FLdPr var_170
  loc_C2E741: LateIdLdVar var_118 DispID_22 0
  loc_C2E748: PopAd
  loc_C2E74A: LitStr "tmp_ctacte"
  loc_C2E74D: FLdRfVar var_118
  loc_C2E750: CStrVarTmp
  loc_C2E751: FStStrNoPop var_174
  loc_C2E754: ILdRf var_12C
  loc_C2E757: ImpAdLdUI1
  loc_C2E75B: FLdPr Me
  loc_C2E75E: MemLdRfVar from_stack_1.global_52
  loc_C2E761: NewIfNullPr clsctacte
  loc_C2E764: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C2E769: FFreeStr var_12C = ""
  loc_C2E770: FFreeAd var_108 = ""
  loc_C2E777: FFree1Var var_118 = ""
  loc_C2E77A: LitStr "SELECT * FROM tmp_ctacte LEFT JOIN tipomovi ON tmp_ctacte.CodiTimo = tipomovi.CodiTimo"
  loc_C2E77D: LitStr " WHERE SaldCtct > 0 "
  loc_C2E780: ConcatStr
  loc_C2E781: FStStrNoPop var_12C
  loc_C2E784: LitStr " ORDER BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.PeriCtct desc, tmp_ctacte.BimeCtct desc, tmp_ctacte.NumeCtct, tmp_ctacte.MoviCtct"
  loc_C2E787: ConcatStr
  loc_C2E788: FStStrNoPop var_174
  loc_C2E78B: FLdPr Me
  loc_C2E78E: MemLdRfVar from_stack_1.global_52
  loc_C2E791: NewIfNullPr clsctacte
  loc_C2E794: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C2E799: FFreeStr var_12C = ""
  loc_C2E7A0: FLdRfVar var_178
  loc_C2E7A3: FLdPr Me
  loc_C2E7A6: MemLdRfVar from_stack_1.global_52
  loc_C2E7A9: NewIfNullPr clsctacte
  loc_C2E7AC: from_stack_1 = clsctacte.RecordCount
  loc_C2E7B1: ILdRf var_178
  loc_C2E7B4: LitI4 0
  loc_C2E7B9: GtI4
  loc_C2E7BA: BranchF loc_C2EF61
  loc_C2E7BD: FLdPr Me
  loc_C2E7C0: MemLdRfVar from_stack_1.global_52
  loc_C2E7C3: NewIfNullPr clsctacte
  loc_C2E7C6: Call clsctacte.MoveFirst()
  loc_C2E7CB: FLdRfVar var_E2
  loc_C2E7CE: FLdPr Me
  loc_C2E7D1: MemLdRfVar from_stack_1.global_52
  loc_C2E7D4: NewIfNullPr clsctacte
  loc_C2E7D7: from_stack_1 = clsctacte.EOF
  loc_C2E7DC: FLdI2 var_E2
  loc_C2E7DF: NotI4
  loc_C2E7E0: BranchF loc_C2EDD8
  loc_C2E7E3: LitI2_Byte 0
  loc_C2E7E5: CR8I2
  loc_C2E7E6: FStFPR8 var_D8
  loc_C2E7E9: FLdRfVar var_180
  loc_C2E7EC: FLdPr Me
  loc_C2E7EF: MemLdRfVar from_stack_1.global_52
  loc_C2E7F2: NewIfNullPr clsctacte
  loc_C2E7F5: from_stack_1 = clsctacte.SaldCtct
  loc_C2E7FA: LitI4 2
  loc_C2E7FF: FLdFPR8 var_C8
  loc_C2E802: FnCDblR8
  loc_C2E804: FLdFPR8 var_180
  loc_C2E807: FnCDblR8
  loc_C2E809: AddR8
  loc_C2E80A: CVarR8
  loc_C2E80E: FLdRfVar var_128
  loc_C2E811: ImpAdCallFPR4  = Round(, )
  loc_C2E816: FLdRfVar var_128
  loc_C2E819: CR4Var
  loc_C2E81A: FStFPR8 var_C8
  loc_C2E81D: FFreeVar var_118 = ""
  loc_C2E824: FLdRfVar var_180
  loc_C2E827: FLdPr Me
  loc_C2E82A: MemLdRfVar from_stack_1.global_52
  loc_C2E82D: NewIfNullPr clsctacte
  loc_C2E830: from_stack_1 = clsctacte.RecaCtct
  loc_C2E835: LitI4 2
  loc_C2E83A: FLdFPR8 var_D0
  loc_C2E83D: FnCDblR8
  loc_C2E83F: FLdFPR8 var_180
  loc_C2E842: FnCDblR8
  loc_C2E844: AddR8
  loc_C2E845: CVarR8
  loc_C2E849: FLdRfVar var_128
  loc_C2E84C: ImpAdCallFPR4  = Round(, )
  loc_C2E851: FLdRfVar var_128
  loc_C2E854: CR4Var
  loc_C2E855: FStFPR8 var_D0
  loc_C2E858: FFreeVar var_118 = ""
  loc_C2E85F: FLdRfVar var_E2
  loc_C2E862: FLdPr Me
  loc_C2E865: MemLdRfVar from_stack_1.global_52
  loc_C2E868: NewIfNullPr clsctacte
  loc_C2E86B: from_stack_1 = clsctacte.BimeCtct
  loc_C2E870: LitI4 1
  loc_C2E875: LitI4 1
  loc_C2E87A: LitVarStr var_104, "00"
  loc_C2E87F: FStVarCopyObj var_128
  loc_C2E882: FLdRfVar var_128
  loc_C2E885: FLdI2 var_E2
  loc_C2E888: CVarI2 var_118
  loc_C2E88B: FLdRfVar var_13C
  loc_C2E88E: ImpAdCallFPR4  = Format(, )
  loc_C2E893: FLdRfVar var_13C
  loc_C2E896: LitVarStr var_14C, "/"
  loc_C2E89B: ConcatVar var_15C
  loc_C2E89F: FLdRfVar var_182
  loc_C2E8A2: FLdPr Me
  loc_C2E8A5: MemLdRfVar from_stack_1.global_52
  loc_C2E8A8: NewIfNullPr clsctacte
  loc_C2E8AB: from_stack_1 = clsctacte.PeriCtct
  loc_C2E8B0: FLdI2 var_182
  loc_C2E8B3: CVarI2 var_194
  loc_C2E8B6: ConcatVar var_16C
  loc_C2E8BA: CStrVarTmp
  loc_C2E8BB: FLdRfVar var_92
  loc_C2E8BE: StFixedStrFree
  loc_C2E8C2: FFreeVar var_118 = "": var_128 = "": var_13C = "": var_15C = ""
  loc_C2E8CF: FLdRfVar var_178
  loc_C2E8D2: FLdPr Me
  loc_C2E8D5: MemLdRfVar from_stack_1.global_52
  loc_C2E8D8: NewIfNullPr clsctacte
  loc_C2E8DB: from_stack_1 = clsctacte.NumeBole
  loc_C2E8E0: LitI4 1
  loc_C2E8E5: LitI4 1
  loc_C2E8EA: LitVarStr var_104, "#######0"
  loc_C2E8EF: FStVarCopyObj var_128
  loc_C2E8F2: FLdRfVar var_128
  loc_C2E8F5: ILdRf var_178
  loc_C2E8F8: CVarI4
  loc_C2E8FC: FLdRfVar var_13C
  loc_C2E8FF: ImpAdCallFPR4  = Format(, )
  loc_C2E904: FLdRfVar var_13C
  loc_C2E907: LitVarStr var_14C, "-"
  loc_C2E90C: ConcatVar var_15C
  loc_C2E910: FLdRfVar var_E2
  loc_C2E913: FLdPr Me
  loc_C2E916: MemLdRfVar from_stack_1.global_52
  loc_C2E919: NewIfNullPr clsctacte
  loc_C2E91C: from_stack_1 = clsctacte.PeriBole
  loc_C2E921: FLdI2 var_E2
  loc_C2E924: CVarI2 var_194
  loc_C2E927: ConcatVar var_16C
  loc_C2E92B: CStrVarTmp
  loc_C2E92C: FLdRfVar var_AC
  loc_C2E92F: StFixedStrFree
  loc_C2E933: FFreeVar var_118 = "": var_128 = "": var_13C = "": var_15C = ""
  loc_C2E940: FLdRfVar var_180
  loc_C2E943: FLdPr Me
  loc_C2E946: MemLdRfVar from_stack_1.global_52
  loc_C2E949: NewIfNullPr clsctacte
  loc_C2E94C: from_stack_1 = clsctacte.SaldCtct
  loc_C2E951: FLdFPR8 var_180
  loc_C2E954: FnCDblR8
  loc_C2E956: LitI2_Byte 0
  loc_C2E958: CR8I2
  loc_C2E959: NeR8
  loc_C2E95A: BranchF loc_C2E9A5
  loc_C2E95D: FLdRfVar var_180
  loc_C2E960: FLdPr Me
  loc_C2E963: MemLdRfVar from_stack_1.global_52
  loc_C2E966: NewIfNullPr clsctacte
  loc_C2E969: from_stack_1 = clsctacte.SaldCtct
  loc_C2E96E: LitI4 1
  loc_C2E973: LitI4 1
  loc_C2E978: LitVarStr var_104, "0.00"
  loc_C2E97D: FStVarCopyObj var_128
  loc_C2E980: FLdRfVar var_128
  loc_C2E983: FLdFPR8 var_180
  loc_C2E986: CVarR8
  loc_C2E98A: FLdRfVar var_13C
  loc_C2E98D: ImpAdCallFPR4  = Format(, )
  loc_C2E992: FLdRfVar var_13C
  loc_C2E995: CStrVarTmp
  loc_C2E996: FStStr var_B4
  loc_C2E999: FFreeVar var_118 = "": var_128 = ""
  loc_C2E9A2: Branch loc_C2E9AB
  loc_C2E9A5: LitStr vbNullString
  loc_C2E9A8: FStStrCopy var_B4
  loc_C2E9AB: LitStr vbNullString
  loc_C2E9AE: FStStrCopy var_B8
  loc_C2E9B1: FLdRfVar var_180
  loc_C2E9B4: FLdPr Me
  loc_C2E9B7: MemLdRfVar from_stack_1.global_52
  loc_C2E9BA: NewIfNullPr clsctacte
  loc_C2E9BD: from_stack_1 = clsctacte.RecaCtct
  loc_C2E9C2: FLdFPR8 var_180
  loc_C2E9C5: FnCDblR8
  loc_C2E9C7: LitI2_Byte 0
  loc_C2E9C9: CR8I2
  loc_C2E9CA: NeR8
  loc_C2E9CB: BranchF loc_C2EA16
  loc_C2E9CE: FLdRfVar var_180
  loc_C2E9D1: FLdPr Me
  loc_C2E9D4: MemLdRfVar from_stack_1.global_52
  loc_C2E9D7: NewIfNullPr clsctacte
  loc_C2E9DA: from_stack_1 = clsctacte.RecaCtct
  loc_C2E9DF: LitI4 1
  loc_C2E9E4: LitI4 1
  loc_C2E9E9: LitVarStr var_104, "0.00"
  loc_C2E9EE: FStVarCopyObj var_128
  loc_C2E9F1: FLdRfVar var_128
  loc_C2E9F4: FLdFPR8 var_180
  loc_C2E9F7: CVarR8
  loc_C2E9FB: FLdRfVar var_13C
  loc_C2E9FE: ImpAdCallFPR4  = Format(, )
  loc_C2EA03: FLdRfVar var_13C
  loc_C2EA06: CStrVarTmp
  loc_C2EA07: FStStr var_BC
  loc_C2EA0A: FFreeVar var_118 = "": var_128 = ""
  loc_C2EA13: Branch loc_C2EA1C
  loc_C2EA16: LitStr vbNullString
  loc_C2EA19: FStStrCopy var_BC
  loc_C2EA1C: FLdRfVar var_180
  loc_C2EA1F: FLdPr Me
  loc_C2EA22: MemLdRfVar from_stack_1.global_52
  loc_C2EA25: NewIfNullPr clsctacte
  loc_C2EA28: from_stack_1 = clsctacte.SaldCtct
  loc_C2EA2D: FLdRfVar var_19C
  loc_C2EA30: FLdPr Me
  loc_C2EA33: MemLdRfVar from_stack_1.global_52
  loc_C2EA36: NewIfNullPr clsctacte
  loc_C2EA39: from_stack_1 = clsctacte.RecaCtct
  loc_C2EA3E: LitI4 2
  loc_C2EA43: FLdFPR8 var_180
  loc_C2EA46: FnCDblR8
  loc_C2EA48: FLdFPR8 var_19C
  loc_C2EA4B: FnCDblR8
  loc_C2EA4D: AddR8
  loc_C2EA4E: CVarR8
  loc_C2EA52: FLdRfVar var_128
  loc_C2EA55: ImpAdCallFPR4  = Round(, )
  loc_C2EA5A: LitI4 1
  loc_C2EA5F: LitI4 1
  loc_C2EA64: LitVarStr var_104, "0.00"
  loc_C2EA69: FStVarCopyObj var_13C
  loc_C2EA6C: FLdRfVar var_13C
  loc_C2EA6F: FLdRfVar var_128
  loc_C2EA72: FLdRfVar var_15C
  loc_C2EA75: ImpAdCallFPR4  = Format(, )
  loc_C2EA7A: FLdRfVar var_15C
  loc_C2EA7D: CStrVarTmp
  loc_C2EA7E: FStStr var_C0
  loc_C2EA81: FFreeVar var_118 = "": var_128 = "": var_13C = ""
  loc_C2EA8C: FLdRfVar var_E2
  loc_C2EA8F: FLdPr Me
  loc_C2EA92: MemLdRfVar from_stack_1.global_52
  loc_C2EA95: NewIfNullPr clsctacte
  loc_C2EA98: from_stack_1 = clsctacte.CodiOfic
  loc_C2EA9D: FLdI2 var_E2
  loc_C2EAA0: CVarI2 var_F4
  loc_C2EAA3: LitI4 9
  loc_C2EAA8: FLdRfVar var_118
  loc_C2EAAB: ImpAdCallFPR4  = Chr()
  loc_C2EAB0: FLdRfVar var_118
  loc_C2EAB3: ConcatVar var_128
  loc_C2EAB7: FLdRfVar var_12C
  loc_C2EABA: FLdPr Me
  loc_C2EABD: MemLdRfVar from_stack_1.global_52
  loc_C2EAC0: NewIfNullPr clsctacte
  loc_C2EAC3: from_stack_1 = clsctacte.CuenCtct
  loc_C2EAC8: FLdZeroAd var_12C
  loc_C2EACB: CVarStr var_13C
  loc_C2EACE: ConcatVar var_15C
  loc_C2EAD2: LitI4 9
  loc_C2EAD7: FLdRfVar var_16C
  loc_C2EADA: ImpAdCallFPR4  = Chr()
  loc_C2EADF: FLdRfVar var_16C
  loc_C2EAE2: ConcatVar var_1AC
  loc_C2EAE6: FLdRfVar var_92
  loc_C2EAE9: LdFixedStr
  loc_C2EAEC: CVarStr var_1BC
  loc_C2EAEF: ConcatVar var_1CC
  loc_C2EAF3: LitI4 9
  loc_C2EAF8: FLdRfVar var_1DC
  loc_C2EAFB: ImpAdCallFPR4  = Chr()
  loc_C2EB00: FLdRfVar var_1DC
  loc_C2EB03: ConcatVar var_1EC
  loc_C2EB07: FLdRfVar var_AC
  loc_C2EB0A: LdFixedStr
  loc_C2EB0D: CVarStr var_1FC
  loc_C2EB10: ConcatVar var_20C
  loc_C2EB14: LitI4 9
  loc_C2EB19: FLdRfVar var_21C
  loc_C2EB1C: ImpAdCallFPR4  = Chr()
  loc_C2EB21: FLdRfVar var_21C
  loc_C2EB24: ConcatVar var_22C
  loc_C2EB28: FLdRfVar var_174
  loc_C2EB2B: FLdPr Me
  loc_C2EB2E: MemLdRfVar from_stack_1.global_52
  loc_C2EB31: NewIfNullPr clsctacte
  loc_C2EB34: from_stack_1 = clsctacte.FealCtct
  loc_C2EB39: FLdZeroAd var_174
  loc_C2EB3C: CVarStr var_23C
  loc_C2EB3F: ConcatVar var_24C
  loc_C2EB43: LitI4 9
  loc_C2EB48: FLdRfVar var_25C
  loc_C2EB4B: ImpAdCallFPR4  = Chr()
  loc_C2EB50: FLdRfVar var_25C
  loc_C2EB53: ConcatVar var_26C
  loc_C2EB57: FLdRfVar var_27C
  loc_C2EB5A: FLdPr Me
  loc_C2EB5D: MemLdRfVar from_stack_1.global_52
  loc_C2EB60: NewIfNullPr clsctacte
  loc_C2EB63: from_stack_1 = clsctacte.FeveCtct
  loc_C2EB68: FLdRfVar var_27C
  loc_C2EB6B: ConcatVar var_28C
  loc_C2EB6F: LitI4 9
  loc_C2EB74: FLdRfVar var_29C
  loc_C2EB77: ImpAdCallFPR4  = Chr()
  loc_C2EB7C: FLdRfVar var_29C
  loc_C2EB7F: ConcatVar var_2AC
  loc_C2EB83: FLdRfVar var_2B0
  loc_C2EB86: FLdPr Me
  loc_C2EB89: MemLdRfVar from_stack_1.global_52
  loc_C2EB8C: NewIfNullPr clsctacte
  loc_C2EB8F: from_stack_1 = clsctacte.CodiConc
  loc_C2EB94: FLdZeroAd var_2B0
  loc_C2EB97: CVarStr var_2C0
  loc_C2EB9A: ConcatVar var_2D0
  loc_C2EB9E: LitI4 9
  loc_C2EBA3: FLdRfVar var_2E0
  loc_C2EBA6: ImpAdCallFPR4  = Chr()
  loc_C2EBAB: FLdRfVar var_2E0
  loc_C2EBAE: ConcatVar var_2F0
  loc_C2EBB2: FLdRfVar var_178
  loc_C2EBB5: FLdPr Me
  loc_C2EBB8: MemLdRfVar from_stack_1.global_52
  loc_C2EBBB: NewIfNullPr clsctacte
  loc_C2EBBE: from_stack_1 = clsctacte.CodiFapa
  loc_C2EBC3: ILdRf var_178
  loc_C2EBC6: CVarI4
  loc_C2EBCA: ConcatVar var_300
  loc_C2EBCE: LitI4 9
  loc_C2EBD3: FLdRfVar var_310
  loc_C2EBD6: ImpAdCallFPR4  = Chr()
  loc_C2EBDB: FLdRfVar var_310
  loc_C2EBDE: ConcatVar var_320
  loc_C2EBE2: FLdRfVar var_324
  loc_C2EBE5: FLdPr Me
  loc_C2EBE8: MemLdRfVar from_stack_1.global_52
  loc_C2EBEB: NewIfNullPr clsctacte
  loc_C2EBEE: from_stack_1 = clsctacte.NumeApre
  loc_C2EBF3: ILdRf var_324
  loc_C2EBF6: CVarI4
  loc_C2EBFA: ConcatVar var_334
  loc_C2EBFE: LitI4 9
  loc_C2EC03: FLdRfVar var_344
  loc_C2EC06: ImpAdCallFPR4  = Chr()
  loc_C2EC0B: FLdRfVar var_344
  loc_C2EC0E: ConcatVar var_354
  loc_C2EC12: FLdRfVar var_358
  loc_C2EC15: FLdPr Me
  loc_C2EC18: MemLdRfVar from_stack_1.global_52
  loc_C2EC1B: NewIfNullPr clsctacte
  loc_C2EC1E: from_stack_1 = clsctacte.ExpeCtct
  loc_C2EC23: FLdZeroAd var_358
  loc_C2EC26: CVarStr var_368
  loc_C2EC29: ConcatVar var_378
  loc_C2EC2D: LitI4 9
  loc_C2EC32: FLdRfVar var_388
  loc_C2EC35: ImpAdCallFPR4  = Chr()
  loc_C2EC3A: FLdRfVar var_388
  loc_C2EC3D: ConcatVar var_398
  loc_C2EC41: FLdRfVar var_39C
  loc_C2EC44: FLdPr Me
  loc_C2EC47: MemLdRfVar from_stack_1.global_52
  loc_C2EC4A: NewIfNullPr clsctacte
  loc_C2EC4D: from_stack_1 = clsctacte.AbreTimo
  loc_C2EC52: FLdZeroAd var_39C
  loc_C2EC55: CVarStr var_3AC
  loc_C2EC58: ConcatVar var_3BC
  loc_C2EC5C: LitI4 9
  loc_C2EC61: FLdRfVar var_3CC
  loc_C2EC64: ImpAdCallFPR4  = Chr()
  loc_C2EC69: FLdRfVar var_3CC
  loc_C2EC6C: ConcatVar var_3DC
  loc_C2EC70: ILdRf var_B4
  loc_C2EC73: CVarStr var_194
  loc_C2EC76: ConcatVar var_3EC
  loc_C2EC7A: LitI4 9
  loc_C2EC7F: FLdRfVar var_3FC
  loc_C2EC82: ImpAdCallFPR4  = Chr()
  loc_C2EC87: FLdRfVar var_3FC
  loc_C2EC8A: ConcatVar var_40C
  loc_C2EC8E: ILdRf var_BC
  loc_C2EC91: CVarStr var_41C
  loc_C2EC94: ConcatVar var_42C
  loc_C2EC98: LitI4 9
  loc_C2EC9D: FLdRfVar var_43C
  loc_C2ECA0: ImpAdCallFPR4  = Chr()
  loc_C2ECA5: FLdRfVar var_43C
  loc_C2ECA8: ConcatVar var_44C
  loc_C2ECAC: ILdRf var_C0
  loc_C2ECAF: CVarStr var_45C
  loc_C2ECB2: ConcatVar var_46C
  loc_C2ECB6: LitI4 9
  loc_C2ECBB: FLdRfVar var_47C
  loc_C2ECBE: ImpAdCallFPR4  = Chr()
  loc_C2ECC3: FLdRfVar var_47C
  loc_C2ECC6: ConcatVar var_48C
  loc_C2ECCA: LitVarStr var_49C, "No"
  loc_C2ECCF: ConcatVar var_4AC
  loc_C2ECD3: LitI4 9
  loc_C2ECD8: FLdRfVar var_4BC
  loc_C2ECDB: ImpAdCallFPR4  = Chr()
  loc_C2ECE0: FLdRfVar var_4BC
  loc_C2ECE3: ConcatVar var_4CC
  loc_C2ECE7: FLdRfVar var_4D0
  loc_C2ECEA: FLdPr Me
  loc_C2ECED: MemLdRfVar from_stack_1.global_52
  loc_C2ECF0: NewIfNullPr clsctacte
  loc_C2ECF3: from_stack_1 = clsctacte.NumeCtct
  loc_C2ECF8: ILdRf var_4D0
  loc_C2ECFB: CVarI4
  loc_C2ECFF: ConcatVar var_4F0
  loc_C2ED03: LitI4 9
  loc_C2ED08: FLdRfVar var_500
  loc_C2ED0B: ImpAdCallFPR4  = Chr()
  loc_C2ED10: FLdRfVar var_500
  loc_C2ED13: ConcatVar var_510
  loc_C2ED17: FLdRfVar var_182
  loc_C2ED1A: FLdPr Me
  loc_C2ED1D: MemLdRfVar from_stack_1.global_52
  loc_C2ED20: NewIfNullPr clsctacte
  loc_C2ED23: from_stack_1 = clsctacte.MoviCtct
  loc_C2ED28: FLdI2 var_182
  loc_C2ED2B: CVarI2 var_520
  loc_C2ED2E: ConcatVar var_530
  loc_C2ED32: CStrVarTmp
  loc_C2ED33: FStStr var_B0
  loc_C2ED36: FFreeVar var_344 = "": var_354 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3AC = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3FC = "": var_40C = "": var_42C = "": var_43C = "": var_44C = "": var_46C = "": var_47C = "": var_48C = "": var_4AC = "": var_4BC = "": var_4CC = "": var_4F0 = "": var_500 = "": var_510 = "": var_530 = "": var_118 = "": var_128 = "": var_13C = "": var_15C = "": var_16C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2C0 = "": var_2D0 = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_310 = "": var_320 = ""
  loc_C2EDA9: FLdRfVar var_B0
  loc_C2EDAC: CDargRef
  loc_C2EDB0: FLdPr Me
  loc_C2EDB3: VCallAd Control_ID_ctacteFlex
  loc_C2EDB6: FStAdFunc var_108
  loc_C2EDB9: FLdPr var_108
  loc_C2EDBC: LateIdCall
  loc_C2EDC4: FFree1Ad var_108
  loc_C2EDC7: FLdPr Me
  loc_C2EDCA: MemLdRfVar from_stack_1.global_52
  loc_C2EDCD: NewIfNullPr clsctacte
  loc_C2EDD0: Call clsctacte.MoveSiguiente()
  loc_C2EDD5: Branch loc_C2E7CB
  loc_C2EDD8: LitI4 1
  loc_C2EDDD: LitI4 1
  loc_C2EDE2: LitVarStr var_104, "###,###,##0.00"
  loc_C2EDE7: FStVarCopyObj var_118
  loc_C2EDEA: FLdRfVar var_118
  loc_C2EDED: FLdRfVar var_C8
  loc_C2EDF0: CVarRef
  loc_C2EDF5: FLdRfVar var_128
  loc_C2EDF8: ImpAdCallFPR4  = Format(, )
  loc_C2EDFD: FLdRfVar var_128
  loc_C2EE00: CStrVarVal var_12C
  loc_C2EE04: FLdPr Me
  loc_C2EE07: VCallAd Control_ID_txtTotaDere
  loc_C2EE0A: FStAdFunc var_108
  loc_C2EE0D: FLdPr var_108
  loc_C2EE10: Me.Text = from_stack_1
  loc_C2EE15: FFree1Str var_12C
  loc_C2EE18: FFree1Ad var_108
  loc_C2EE1B: FFreeVar var_118 = ""
  loc_C2EE22: LitI4 1
  loc_C2EE27: LitI4 1
  loc_C2EE2C: LitVarStr var_104, "###,###,##0.00"
  loc_C2EE31: FStVarCopyObj var_118
  loc_C2EE34: FLdRfVar var_118
  loc_C2EE37: FLdRfVar var_D0
  loc_C2EE3A: CVarRef
  loc_C2EE3F: FLdRfVar var_128
  loc_C2EE42: ImpAdCallFPR4  = Format(, )
  loc_C2EE47: FLdRfVar var_128
  loc_C2EE4A: CStrVarVal var_12C
  loc_C2EE4E: FLdPr Me
  loc_C2EE51: VCallAd Control_ID_txtTotaReca
  loc_C2EE54: FStAdFunc var_108
  loc_C2EE57: FLdPr var_108
  loc_C2EE5A: Me.Text = from_stack_1
  loc_C2EE5F: FFree1Str var_12C
  loc_C2EE62: FFree1Ad var_108
  loc_C2EE65: FFreeVar var_118 = ""
  loc_C2EE6C: LitI4 1
  loc_C2EE71: LitI4 1
  loc_C2EE76: LitVarStr var_104, "###,###,##0.00"
  loc_C2EE7B: FStVarCopyObj var_118
  loc_C2EE7E: FLdRfVar var_118
  loc_C2EE81: FLdRfVar var_D8
  loc_C2EE84: CVarRef
  loc_C2EE89: FLdRfVar var_128
  loc_C2EE8C: ImpAdCallFPR4  = Format(, )
  loc_C2EE91: FLdRfVar var_128
  loc_C2EE94: CStrVarVal var_12C
  loc_C2EE98: FLdPr Me
  loc_C2EE9B: VCallAd Control_ID_txtTotaApre
  loc_C2EE9E: FStAdFunc var_108
  loc_C2EEA1: FLdPr var_108
  loc_C2EEA4: Me.Text = from_stack_1
  loc_C2EEA9: FFree1Str var_12C
  loc_C2EEAC: FFree1Ad var_108
  loc_C2EEAF: FFreeVar var_118 = ""
  loc_C2EEB6: LitI4 2
  loc_C2EEBB: FLdRfVar var_C8
  loc_C2EEBE: CVarRef
  loc_C2EEC3: FLdRfVar var_118
  loc_C2EEC6: ImpAdCallFPR4  = Round(, )
  loc_C2EECB: FLdRfVar var_118
  loc_C2EECE: LitI4 2
  loc_C2EED3: FLdRfVar var_D0
  loc_C2EED6: CVarRef
  loc_C2EEDB: FLdRfVar var_128
  loc_C2EEDE: ImpAdCallFPR4  = Round(, )
  loc_C2EEE3: FLdRfVar var_128
  loc_C2EEE6: AddVar var_13C
  loc_C2EEEA: LitI4 2
  loc_C2EEEF: FLdRfVar var_D8
  loc_C2EEF2: CVarRef
  loc_C2EEF7: FLdRfVar var_15C
  loc_C2EEFA: ImpAdCallFPR4  = Round(, )
  loc_C2EEFF: FLdRfVar var_15C
  loc_C2EF02: AddVar var_16C
  loc_C2EF06: CR4Var
  loc_C2EF07: FStFPR8 var_E0
  loc_C2EF0A: FFreeVar var_118 = "": var_128 = "": var_13C = "": var_15C = ""
  loc_C2EF17: LitI4 1
  loc_C2EF1C: LitI4 1
  loc_C2EF21: LitVarStr var_104, "###,###,##0.00"
  loc_C2EF26: FStVarCopyObj var_118
  loc_C2EF29: FLdRfVar var_118
  loc_C2EF2C: FLdRfVar var_E0
  loc_C2EF2F: CVarRef
  loc_C2EF34: FLdRfVar var_128
  loc_C2EF37: ImpAdCallFPR4  = Format(, )
  loc_C2EF3C: FLdRfVar var_128
  loc_C2EF3F: CStrVarVal var_12C
  loc_C2EF43: FLdPr Me
  loc_C2EF46: VCallAd Control_ID_txtTotal
  loc_C2EF49: FStAdFunc var_108
  loc_C2EF4C: FLdPr var_108
  loc_C2EF4F: Me.Text = from_stack_1
  loc_C2EF54: FFree1Str var_12C
  loc_C2EF57: FFree1Ad var_108
  loc_C2EF5A: FFreeVar var_118 = ""
  loc_C2EF61: FLdPr Me
  loc_C2EF64: VCallAd Control_ID_ctacteFlex
  loc_C2EF67: FStAdFunc var_108
  loc_C2EF6A: FLdPr var_108
  loc_C2EF6D: LateIdLdVar var_118 DispID_4 0
  loc_C2EF74: CI4Var
  loc_C2EF76: LitI4 1
  loc_C2EF7B: GtI4
  loc_C2EF7C: FFree1Ad var_108
  loc_C2EF7F: FFree1Var var_118 = ""
  loc_C2EF82: BranchF loc_C2EFB8
  loc_C2EF85: LitI4 0
  loc_C2EF8A: LitI4 0
  loc_C2EF8F: FLdRfVar var_534
  loc_C2EF92: Redim
  loc_C2EF9C: FLdPr Me
  loc_C2EF9F: VCallAd Control_ID_ConfirmarCmd
  loc_C2EFA2: CVarAd
  loc_C2EFA6: ParmAry1St
  loc_C2EFAC: FLdRfVar var_534
  loc_C2EFAF: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C2EFB4: FLdRfVar var_534
  loc_C2EFB7: Erase
  loc_C2EFB8: ExitProcHresult
End Sub

Private Sub DetalleTxt_Validate(Cancel As Boolean) '9AED00
  'Data Table: 51A85C
  loc_9AECFC: ExitProcHresult
End Sub

Private Sub CompCtctTxt_GotFocus() '9C3458
  'Data Table: 51A85C
  loc_9C3444: FLdPr Me
  loc_9C3447: VCallAd Control_ID_CompCtctTxt
  loc_9C344A: CVarAd
  loc_9C344E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C3453: FFree1Var var_94 = ""
  loc_9C3456: ExitProcHresult
End Sub

Private Sub CreaPersonaCmd_Click() '9D32B0
  'Data Table: 51A85C
  loc_9D3294: LitVar_Missing var_A4
  loc_9D3297: PopAdLdVar
  loc_9D3298: LitVarI4
  loc_9D32A0: PopAdLdVar
  loc_9D32A1: ImpAdLdRf MemVar_D94C9C
  loc_9D32A4: NewIfNullPr dlgCreaCuentadeTransito
  loc_9D32A7: dlgCreaCuentadeTransito.Show from_stack_1, from_stack_2
  loc_9D32AC: ExitProcHresult
  loc_9D32AD: EqCy
  loc_9D32AE: FFree1Ad var_1BFD
End Sub

Private Sub PorcDescTxt_GotFocus() '9C34A0
  'Data Table: 51A85C
  loc_9C348C: FLdPr Me
  loc_9C348F: VCallAd Control_ID_PorcDescTxt
  loc_9C3492: CVarAd
  loc_9C3496: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C349B: FFree1Var var_94 = ""
  loc_9C349E: ExitProcHresult
End Sub

Private Sub PorcDescTxt_KeyPress(KeyAscii As Integer) 'A07D98
  'Data Table: 51A85C
  loc_A07D64: LitStr "1234567890,."
  loc_A07D67: FStStrCopy var_88
  loc_A07D6A: FLdRfVar var_88
  loc_A07D6D: ILdRf KeyAscii
  loc_A07D70: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A07D75: IStI2 KeyAscii
  loc_A07D78: FFree1Str var_88
  loc_A07D7B: ILdI2 KeyAscii
  loc_A07D7E: LitStr "."
  loc_A07D81: ImpAdCallI2 Asc()
  loc_A07D86: EqI2
  loc_A07D87: BranchF loc_A07D95
  loc_A07D8A: LitStr ","
  loc_A07D8D: ImpAdCallI2 Asc()
  loc_A07D92: IStI2 KeyAscii
  loc_A07D95: ExitProcHresult
End Sub

Private Sub PorcDescTxt_LostFocus() 'AF99E8
  'Data Table: 51A85C
  loc_AF9820: FLdRfVar var_8C
  loc_AF9823: FLdPr Me
  loc_AF9826: VCallAd Control_ID_TotaBoleTxt
  loc_AF9829: FStAdFunc var_88
  loc_AF982C: FLdPr var_88
  loc_AF982F:  = Me.Text
  loc_AF9834: FLdZeroAd var_8C
  loc_AF9837: CVarStr var_9C
  loc_AF983A: ImpAdCallI2 IsNumeric()
  loc_AF983F: FLdRfVar var_A4
  loc_AF9842: FLdPr Me
  loc_AF9845: VCallAd Control_ID_PorcDescTxt
  loc_AF9848: FStAdFunc var_A0
  loc_AF984B: FLdPr var_A0
  loc_AF984E:  = Me.Text
  loc_AF9853: FLdZeroAd var_A4
  loc_AF9856: CVarStr var_B4
  loc_AF9859: ImpAdCallI2 IsNumeric()
  loc_AF985E: AndI4
  loc_AF985F: FFreeAd var_88 = ""
  loc_AF9866: FFreeVar var_9C = ""
  loc_AF986D: BranchF loc_AF99E4
  loc_AF9870: FLdRfVar var_8C
  loc_AF9873: FLdPr Me
  loc_AF9876: VCallAd Control_ID_TotaBoleTxt
  loc_AF9879: FStAdFunc var_88
  loc_AF987C: FLdPr var_88
  loc_AF987F:  = Me.Text
  loc_AF9884: FLdRfVar var_A4
  loc_AF9887: FLdPr Me
  loc_AF988A: VCallAd Control_ID_PorcDescTxt
  loc_AF988D: FStAdFunc var_A0
  loc_AF9890: FLdPr var_A0
  loc_AF9893:  = Me.Text
  loc_AF9898: LitI4 1
  loc_AF989D: LitI4 1
  loc_AF98A2: LitVarStr var_D4, "0.00"
  loc_AF98A7: FStVarCopyObj var_B4
  loc_AF98AA: FLdRfVar var_B4
  loc_AF98AD: ILdRf var_8C
  loc_AF98B0: CR8Str
  loc_AF98B2: ILdRf var_A4
  loc_AF98B5: CR8Str
  loc_AF98B7: MulR8
  loc_AF98B8: LitI2_Byte &H64
  loc_AF98BA: CR8I2
  loc_AF98BB: DivR8
  loc_AF98BC: CVarR8
  loc_AF98C0: FLdRfVar var_E4
  loc_AF98C3: ImpAdCallFPR4  = Format(, )
  loc_AF98C8: FLdRfVar var_E4
  loc_AF98CB: CStrVarVal var_E8
  loc_AF98CF: FLdPr Me
  loc_AF98D2: VCallAd Control_ID_DescBoleTxt
  loc_AF98D5: FStAdFunc var_EC
  loc_AF98D8: FLdPr var_EC
  loc_AF98DB: Me.Text = from_stack_1
  loc_AF98E0: FFreeStr var_8C = "": var_A4 = ""
  loc_AF98E9: FFreeAd var_88 = "": var_A0 = ""
  loc_AF98F2: FFreeVar var_9C = "": var_B4 = ""
  loc_AF98FB: FLdRfVar var_8C
  loc_AF98FE: FLdPr Me
  loc_AF9901: VCallAd Control_ID_TotaBoleTxt
  loc_AF9904: FStAdFunc var_88
  loc_AF9907: FLdPr var_88
  loc_AF990A:  = Me.Text
  loc_AF990F: FLdRfVar var_A4
  loc_AF9912: FLdPr Me
  loc_AF9915: VCallAd Control_ID_DescBoleTxt
  loc_AF9918: FStAdFunc var_A0
  loc_AF991B: FLdPr var_A0
  loc_AF991E:  = Me.Text
  loc_AF9923: LitI4 1
  loc_AF9928: LitI4 1
  loc_AF992D: LitVarStr var_D4, "0.00"
  loc_AF9932: FStVarCopyObj var_B4
  loc_AF9935: FLdRfVar var_B4
  loc_AF9938: ILdRf var_8C
  loc_AF993B: CR8Str
  loc_AF993D: ILdRf var_A4
  loc_AF9940: CR8Str
  loc_AF9942: SubR4
  loc_AF9943: CVarR8
  loc_AF9947: FLdRfVar var_E4
  loc_AF994A: ImpAdCallFPR4  = Format(, )
  loc_AF994F: FLdRfVar var_E4
  loc_AF9952: CStrVarVal var_E8
  loc_AF9956: FLdPr Me
  loc_AF9959: VCallAd Control_ID_TotalTxt
  loc_AF995C: FStAdFunc var_EC
  loc_AF995F: FLdPr var_EC
  loc_AF9962: Me.Text = from_stack_1
  loc_AF9967: FFreeStr var_8C = "": var_A4 = ""
  loc_AF9970: FFreeAd var_88 = "": var_A0 = ""
  loc_AF9979: FFreeVar var_9C = "": var_B4 = ""
  loc_AF9982: FLdRfVar var_8C
  loc_AF9985: FLdPr Me
  loc_AF9988: VCallAd Control_ID_PorcDescTxt
  loc_AF998B: FStAdFunc var_88
  loc_AF998E: FLdPr var_88
  loc_AF9991:  = Me.Text
  loc_AF9996: LitI4 1
  loc_AF999B: LitI4 1
  loc_AF99A0: LitVarStr var_C4, "0.00"
  loc_AF99A5: FStVarCopyObj var_B4
  loc_AF99A8: FLdRfVar var_B4
  loc_AF99AB: FLdZeroAd var_8C
  loc_AF99AE: CVarStr var_9C
  loc_AF99B1: FLdRfVar var_E4
  loc_AF99B4: ImpAdCallFPR4  = Format(, )
  loc_AF99B9: FLdRfVar var_E4
  loc_AF99BC: CStrVarVal var_A4
  loc_AF99C0: FLdPr Me
  loc_AF99C3: VCallAd Control_ID_PorcDescTxt
  loc_AF99C6: FStAdFunc var_A0
  loc_AF99C9: FLdPr var_A0
  loc_AF99CC: Me.Text = from_stack_1
  loc_AF99D1: FFree1Str var_A4
  loc_AF99D4: FFreeAd var_88 = ""
  loc_AF99DB: FFreeVar var_9C = "": var_B4 = ""
  loc_AF99E4: ExitProcHresult
End Sub

Private Sub DescuentoChk_Click() 'B0AD38
  'Data Table: 51A85C
  loc_B0AB14: FLdRfVar var_8A
  loc_B0AB17: FLdPr Me
  loc_B0AB1A: VCallAd Control_ID_DescuentoChk
  loc_B0AB1D: FStAdFunc var_88
  loc_B0AB20: FLdPr var_88
  loc_B0AB23:  = Me.Value
  loc_B0AB28: FLdI2 var_8A
  loc_B0AB2B: LitI2_Byte 0
  loc_B0AB2D: EqI2
  loc_B0AB2E: FFree1Ad var_88
  loc_B0AB31: BranchF loc_B0AC37
  loc_B0AB34: LitI2_Byte 0
  loc_B0AB36: FLdPr Me
  loc_B0AB39: VCallAd Control_ID_PorcDescTxt
  loc_B0AB3C: FStAdFunc var_88
  loc_B0AB3F: FLdPr var_88
  loc_B0AB42: Me.Visible = from_stack_1b
  loc_B0AB47: FFree1Ad var_88
  loc_B0AB4A: LitI2_Byte 0
  loc_B0AB4C: FLdPr Me
  loc_B0AB4F: VCallAd Control_ID_DescBoleLbl
  loc_B0AB52: FStAdFunc var_88
  loc_B0AB55: FLdPr var_88
  loc_B0AB58: Me.Visible = from_stack_1b
  loc_B0AB5D: FFree1Ad var_88
  loc_B0AB60: LitI2_Byte 0
  loc_B0AB62: FLdPr Me
  loc_B0AB65: VCallAd Control_ID_DescBoleTxt
  loc_B0AB68: FStAdFunc var_88
  loc_B0AB6B: FLdPr var_88
  loc_B0AB6E: Me.Visible = from_stack_1b
  loc_B0AB73: FFree1Ad var_88
  loc_B0AB76: LitI2_Byte 0
  loc_B0AB78: FLdPr Me
  loc_B0AB7B: VCallAd Control_ID_TotalLbl
  loc_B0AB7E: FStAdFunc var_88
  loc_B0AB81: FLdPr var_88
  loc_B0AB84: Me.Visible = from_stack_1b
  loc_B0AB89: FFree1Ad var_88
  loc_B0AB8C: LitI2_Byte 0
  loc_B0AB8E: FLdPr Me
  loc_B0AB91: VCallAd Control_ID_TotalTxt
  loc_B0AB94: FStAdFunc var_88
  loc_B0AB97: FLdPr var_88
  loc_B0AB9A: Me.Visible = from_stack_1b
  loc_B0AB9F: FFree1Ad var_88
  loc_B0ABA2: LitI4 1
  loc_B0ABA7: LitI4 1
  loc_B0ABAC: LitVarStr var_BC, "0.00"
  loc_B0ABB1: FStVarCopyObj var_CC
  loc_B0ABB4: FLdRfVar var_CC
  loc_B0ABB7: LitVarI2 var_AC, 0
  loc_B0ABBC: FLdRfVar var_DC
  loc_B0ABBF: ImpAdCallFPR4  = Format(, )
  loc_B0ABC4: FLdRfVar var_DC
  loc_B0ABC7: CStrVarVal var_E0
  loc_B0ABCB: FLdPr Me
  loc_B0ABCE: VCallAd Control_ID_DescBoleTxt
  loc_B0ABD1: FStAdFunc var_88
  loc_B0ABD4: FLdPr var_88
  loc_B0ABD7: Me.Text = from_stack_1
  loc_B0ABDC: FFree1Str var_E0
  loc_B0ABDF: FFree1Ad var_88
  loc_B0ABE2: FFreeVar var_AC = "": var_CC = ""
  loc_B0ABEB: LitI4 1
  loc_B0ABF0: LitI4 1
  loc_B0ABF5: LitVarStr var_BC, "0.00"
  loc_B0ABFA: FStVarCopyObj var_CC
  loc_B0ABFD: FLdRfVar var_CC
  loc_B0AC00: LitVarI2 var_AC, 0
  loc_B0AC05: FLdRfVar var_DC
  loc_B0AC08: ImpAdCallFPR4  = Format(, )
  loc_B0AC0D: FLdRfVar var_DC
  loc_B0AC10: CStrVarVal var_E0
  loc_B0AC14: FLdPr Me
  loc_B0AC17: VCallAd Control_ID_PorcDescTxt
  loc_B0AC1A: FStAdFunc var_88
  loc_B0AC1D: FLdPr var_88
  loc_B0AC20: Me.Text = from_stack_1
  loc_B0AC25: FFree1Str var_E0
  loc_B0AC28: FFree1Ad var_88
  loc_B0AC2B: FFreeVar var_AC = "": var_CC = ""
  loc_B0AC34: Branch loc_B0AD37
  loc_B0AC37: LitI2_Byte &HFF
  loc_B0AC39: FLdPr Me
  loc_B0AC3C: VCallAd Control_ID_PorcDescTxt
  loc_B0AC3F: FStAdFunc var_88
  loc_B0AC42: FLdPr var_88
  loc_B0AC45: Me.Visible = from_stack_1b
  loc_B0AC4A: FFree1Ad var_88
  loc_B0AC4D: LitI2_Byte &HFF
  loc_B0AC4F: FLdPr Me
  loc_B0AC52: VCallAd Control_ID_DescBoleLbl
  loc_B0AC55: FStAdFunc var_88
  loc_B0AC58: FLdPr var_88
  loc_B0AC5B: Me.Visible = from_stack_1b
  loc_B0AC60: FFree1Ad var_88
  loc_B0AC63: LitI2_Byte &HFF
  loc_B0AC65: FLdPr Me
  loc_B0AC68: VCallAd Control_ID_DescBoleTxt
  loc_B0AC6B: FStAdFunc var_88
  loc_B0AC6E: FLdPr var_88
  loc_B0AC71: Me.Visible = from_stack_1b
  loc_B0AC76: FFree1Ad var_88
  loc_B0AC79: LitI2_Byte &HFF
  loc_B0AC7B: FLdPr Me
  loc_B0AC7E: VCallAd Control_ID_TotalLbl
  loc_B0AC81: FStAdFunc var_88
  loc_B0AC84: FLdPr var_88
  loc_B0AC87: Me.Visible = from_stack_1b
  loc_B0AC8C: FFree1Ad var_88
  loc_B0AC8F: LitI2_Byte &HFF
  loc_B0AC91: FLdPr Me
  loc_B0AC94: VCallAd Control_ID_TotalTxt
  loc_B0AC97: FStAdFunc var_88
  loc_B0AC9A: FLdPr var_88
  loc_B0AC9D: Me.Visible = from_stack_1b
  loc_B0ACA2: FFree1Ad var_88
  loc_B0ACA5: LitI4 1
  loc_B0ACAA: LitI4 1
  loc_B0ACAF: LitVarStr var_BC, "0.00"
  loc_B0ACB4: FStVarCopyObj var_CC
  loc_B0ACB7: FLdRfVar var_CC
  loc_B0ACBA: LitVarI2 var_AC, 0
  loc_B0ACBF: FLdRfVar var_DC
  loc_B0ACC2: ImpAdCallFPR4  = Format(, )
  loc_B0ACC7: FLdRfVar var_DC
  loc_B0ACCA: CStrVarVal var_E0
  loc_B0ACCE: FLdPr Me
  loc_B0ACD1: VCallAd Control_ID_DescBoleTxt
  loc_B0ACD4: FStAdFunc var_88
  loc_B0ACD7: FLdPr var_88
  loc_B0ACDA: Me.Text = from_stack_1
  loc_B0ACDF: FFree1Str var_E0
  loc_B0ACE2: FFree1Ad var_88
  loc_B0ACE5: FFreeVar var_AC = "": var_CC = ""
  loc_B0ACEE: LitI4 1
  loc_B0ACF3: LitI4 1
  loc_B0ACF8: LitVarStr var_BC, "0.00"
  loc_B0ACFD: FStVarCopyObj var_CC
  loc_B0AD00: FLdRfVar var_CC
  loc_B0AD03: LitVarI2 var_AC, 0
  loc_B0AD08: FLdRfVar var_DC
  loc_B0AD0B: ImpAdCallFPR4  = Format(, )
  loc_B0AD10: FLdRfVar var_DC
  loc_B0AD13: CStrVarVal var_E0
  loc_B0AD17: FLdPr Me
  loc_B0AD1A: VCallAd Control_ID_PorcDescTxt
  loc_B0AD1D: FStAdFunc var_88
  loc_B0AD20: FLdPr var_88
  loc_B0AD23: Me.Text = from_stack_1
  loc_B0AD28: FFree1Str var_E0
  loc_B0AD2B: FFree1Ad var_88
  loc_B0AD2E: FFreeVar var_AC = "": var_CC = ""
  loc_B0AD37: ExitProcHresult
End Sub

Private Sub PeriCtctMsk_UnknownEvent_0 '9C3578
  'Data Table: 51A85C
  loc_9C3564: FLdPr Me
  loc_9C3567: VCallAd Control_ID_PeriCtctMsk
  loc_9C356A: CVarAd
  loc_9C356E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C3573: FFree1Var var_94 = ""
  loc_9C3576: ExitProcHresult
End Sub

Private Function PeriCtctMsk_UnknownEvent_8(arg_C) 'A75084
  'Data Table: 51A85C
  loc_A75014: FLdPr Me
  loc_A75017: VCallAd Control_ID_PeriCtctMsk
  loc_A7501A: FStAdFunc var_88
  loc_A7501D: FLdPr var_88
  loc_A75020: LateIdLdVar var_98 DispID_22 0
  loc_A75027: PopAd
  loc_A75029: LitI2_Byte 0
  loc_A7502B: FLdRfVar var_98
  loc_A7502E: CStrVarTmp
  loc_A7502F: FStStrNoPop var_9C
  loc_A75032: LitStr "el Año"
  loc_A75035: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A7503A: FStStrNoPop var_A0
  loc_A7503D: FLdPr Me
  loc_A75040: MemStStrCopy
  loc_A75044: FFreeStr var_9C = ""
  loc_A7504B: FFree1Ad var_88
  loc_A7504E: FFree1Var var_98 = ""
  loc_A75051: FLdPr Me
  loc_A75054: MemLdStr global_64
  loc_A75057: LitStr vbNullString
  loc_A7505A: NeStr
  loc_A7505C: BranchF loc_A75081
  loc_A7505F: FLdPr Me
  loc_A75062: MemLdStr global_64
  loc_A75065: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7506A: FLdPr Me
  loc_A7506D: VCallAd Control_ID_PeriCtctMsk
  loc_A75070: CVarAd
  loc_A75074: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A75079: FFree1Var var_98 = ""
  loc_A7507C: LitI2_Byte &HFF
  loc_A7507E: IStI2 arg_C
  loc_A75081: ExitProcHresult
  loc_A75082: PopTmpLdAd8 var_1BFD
End Function

Private Sub NumeCtaTxt_GotFocus() 'A5188C
  'Data Table: 51A85C
  loc_A51840: Call Proc_275_37_B188E8()
  loc_A51845: LitI4 0
  loc_A5184A: LitI4 0
  loc_A5184F: FLdRfVar var_88
  loc_A51852: Redim
  loc_A5185C: FLdPr Me
  loc_A5185F: VCallAd Control_ID_ConfirmarCmd
  loc_A51862: CVarAd
  loc_A51866: ParmAry1St
  loc_A5186C: FLdRfVar var_88
  loc_A5186F: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A51874: FLdRfVar var_88
  loc_A51877: Erase
  loc_A51878: FLdPrThis
  loc_A51879: VCallAd Control_ID_NumeCtaTxt
  loc_A5187C: CVarAd
  loc_A51880: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A51885: FFree1Var var_98 = ""
  loc_A51888: ExitProcHresult
  loc_A51889: LtI2
  loc_A5188A: FStStrNoPop var_1C00
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) '9CF538
  'Data Table: 51A85C
  loc_9CF520: LitStr "0123456789"
  loc_9CF523: FStStrCopy var_88
  loc_9CF526: FLdRfVar var_88
  loc_9CF529: ILdRf KeyAscii
  loc_9CF52C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF531: IStI2 KeyAscii
  loc_9CF534: FFree1Str var_88
  loc_9CF537: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B73C14
  'Data Table: 51A85C
  loc_B73780: FLdRfVar var_8C
  loc_B73783: FLdPr Me
  loc_B73786: VCallAd Control_ID_NumeCtaTxt
  loc_B73789: FStAdFunc var_88
  loc_B7378C: FLdPr var_88
  loc_B7378F:  = Me.Text
  loc_B73794: ILdRf var_8C
  loc_B73797: FnLenStr
  loc_B73798: LitI4 &HB
  loc_B7379D: EqI4
  loc_B7379E: FFree1Str var_8C
  loc_B737A1: FFree1Ad var_88
  loc_B737A4: BranchF loc_B73BBF
  loc_B737A7: FLdRfVar var_8E
  loc_B737AA: FLdPr Me
  loc_B737AD: VCallAd Control_ID_NumeCtaTxt
  loc_B737B0: FStAdFunc var_88
  loc_B737B3: FLdPr var_88
  loc_B737B6:  = Me.Enabled
  loc_B737BB: FLdI2 var_8E
  loc_B737BE: FFree1Ad var_88
  loc_B737C1: BranchF loc_B73BBC
  loc_B737C4: FLdRfVar var_8E
  loc_B737C7: FLdPr Me
  loc_B737CA: VCallAd Control_ID_OficinaCbo
  loc_B737CD: FStAdFunc var_88
  loc_B737D0: FLdPr var_88
  loc_B737D3:  = Me.ListIndex
  loc_B737D8: FLdI2 var_8E
  loc_B737DB: FStI2 var_90
  loc_B737DE: FFree1Ad var_88
  loc_B737E1: FLdI2 var_90
  loc_B737E4: LitI2_Byte 0
  loc_B737E6: EqI2
  loc_B737E7: BranchF loc_B737F5
  loc_B737EA: LitI2_Byte 1
  loc_B737EC: CUI1I2
  loc_B737EE: ImpAdStUI1 MemVar_D93038
  loc_B737F2: Branch loc_B73842
  loc_B737F5: FLdI2 var_90
  loc_B737F8: LitI2_Byte 1
  loc_B737FA: EqI2
  loc_B737FB: BranchF loc_B73809
  loc_B737FE: LitI2_Byte 2
  loc_B73800: CUI1I2
  loc_B73802: ImpAdStUI1 MemVar_D93038
  loc_B73806: Branch loc_B73842
  loc_B73809: FLdI2 var_90
  loc_B7380C: LitI2_Byte 2
  loc_B7380E: EqI2
  loc_B7380F: BranchF loc_B7381D
  loc_B73812: LitI2_Byte 3
  loc_B73814: CUI1I2
  loc_B73816: ImpAdStUI1 MemVar_D93038
  loc_B7381A: Branch loc_B73842
  loc_B7381D: FLdI2 var_90
  loc_B73820: LitI2_Byte 3
  loc_B73822: EqI2
  loc_B73823: BranchF loc_B73831
  loc_B73826: LitI2_Byte 4
  loc_B73828: CUI1I2
  loc_B7382A: ImpAdStUI1 MemVar_D93038
  loc_B7382E: Branch loc_B73842
  loc_B73831: FLdI2 var_90
  loc_B73834: LitI2_Byte 4
  loc_B73836: EqI2
  loc_B73837: BranchF loc_B73842
  loc_B7383A: LitI2_Byte 5
  loc_B7383C: CUI1I2
  loc_B7383E: ImpAdStUI1 MemVar_D93038
  loc_B73842: FLdRfVar var_8C
  loc_B73845: FLdPr Me
  loc_B73848: VCallAd Control_ID_NumeCtaTxt
  loc_B7384B: FStAdFunc var_88
  loc_B7384E: FLdPr var_88
  loc_B73851:  = Me.Text
  loc_B73856: FLdPr Me
  loc_B73859: MemLdRfVar from_stack_1.global_60
  loc_B7385C: NewIfNullRf
  loc_B73860: LitStr "Titular"
  loc_B73863: ILdRf var_8C
  loc_B73866: ImpAdLdUI1
  loc_B7386A: CStrI2
  loc_B7386C: FStStrNoPop var_94
  loc_B7386F: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B73874: FFreeStr var_94 = ""
  loc_B7387B: FFree1Ad var_88
  loc_B7387E: BranchF loc_B73B08
  loc_B73881: FLdRfVar var_8C
  loc_B73884: FLdPr Me
  loc_B73887: MemLdRfVar from_stack_1.global_60
  loc_B7388A: NewIfNullPr tblPersona
  loc_B7388D: from_stack_1v = tblPersona.CucuPersGet()
  loc_B73892: ILdRf var_8C
  loc_B73895: FLdPr Me
  loc_B73898: VCallAd Control_ID_CucuPersLbl
  loc_B7389B: FStAdFunc var_88
  loc_B7389E: FLdPr var_88
  loc_B738A1: Me.Caption = from_stack_1
  loc_B738A6: FFree1Str var_8C
  loc_B738A9: FFree1Ad var_88
  loc_B738AC: FLdRfVar var_8C
  loc_B738AF: FLdPr Me
  loc_B738B2: MemLdRfVar from_stack_1.global_60
  loc_B738B5: NewIfNullPr tblPersona
  loc_B738B8: from_stack_1v = tblPersona.DetaPersGet()
  loc_B738BD: ILdRf var_8C
  loc_B738C0: FLdPr Me
  loc_B738C3: VCallAd Control_ID_DetaPersLbl
  loc_B738C6: FStAdFunc var_88
  loc_B738C9: FLdPr var_88
  loc_B738CC: Me.Caption = from_stack_1
  loc_B738D1: FFree1Str var_8C
  loc_B738D4: FFree1Ad var_88
  loc_B738D7: FLdRfVar var_94
  loc_B738DA: FLdPr Me
  loc_B738DD: MemLdRfVar from_stack_1.global_60
  loc_B738E0: NewIfNullPr tblPersona
  loc_B738E3: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B738E8: FLdRfVar var_98
  loc_B738EB: FLdPr Me
  loc_B738EE: MemLdRfVar from_stack_1.global_60
  loc_B738F1: NewIfNullPr tblPersona
  loc_B738F4: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B738F9: FLdRfVar var_8C
  loc_B738FC: FLdPr Me
  loc_B738FF: MemLdRfVar from_stack_1.global_60
  loc_B73902: NewIfNullPr tblPersona
  loc_B73905: from_stack_1v = tblPersona.DetaCallGet()
  loc_B7390A: ILdRf var_8C
  loc_B7390D: LitStr " "
  loc_B73910: ConcatStr
  loc_B73911: CVarStr var_F8
  loc_B73914: LitVarStr var_C8, vbNullString
  loc_B73919: FStVarCopyObj var_D8
  loc_B7391C: FLdRfVar var_D8
  loc_B7391F: LitStr "Nro: "
  loc_B73922: ILdRf var_98
  loc_B73925: ConcatStr
  loc_B73926: CVarStr var_B8
  loc_B73929: ILdRf var_94
  loc_B7392C: LitStr "0"
  loc_B7392F: NeStr
  loc_B73931: CVarBoolI2 var_A8
  loc_B73935: FLdRfVar var_E8
  loc_B73938: ImpAdCallFPR4  = IIf(, , )
  loc_B7393D: FLdRfVar var_E8
  loc_B73940: ConcatVar var_108
  loc_B73944: CStrVarVal var_10C
  loc_B73948: FLdPr Me
  loc_B7394B: VCallAd Control_ID_DomiPersLbl
  loc_B7394E: FStAdFunc var_88
  loc_B73951: FLdPr var_88
  loc_B73954: Me.Caption = from_stack_1
  loc_B73959: FFreeStr var_8C = "": var_94 = "": var_98 = ""
  loc_B73964: FFree1Ad var_88
  loc_B73967: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_B73976: FLdRfVar var_94
  loc_B73979: FLdPr Me
  loc_B7397C: MemLdRfVar from_stack_1.global_60
  loc_B7397F: NewIfNullPr tblPersona
  loc_B73982: from_stack_1v = tblPersona.ManzPersGet()
  loc_B73987: FLdRfVar var_98
  loc_B7398A: FLdPr Me
  loc_B7398D: MemLdRfVar from_stack_1.global_60
  loc_B73990: NewIfNullPr tblPersona
  loc_B73993: from_stack_1v = tblPersona.ManzPersGet()
  loc_B73998: FLdRfVar var_10C
  loc_B7399B: FLdPr Me
  loc_B7399E: MemLdRfVar from_stack_1.global_60
  loc_B739A1: NewIfNullPr tblPersona
  loc_B739A4: from_stack_1v = tblPersona.CasaPersGet()
  loc_B739A9: FLdRfVar var_130
  loc_B739AC: FLdPr Me
  loc_B739AF: MemLdRfVar from_stack_1.global_60
  loc_B739B2: NewIfNullPr tblPersona
  loc_B739B5: from_stack_1v = tblPersona.CasaPersGet()
  loc_B739BA: FLdRfVar var_8C
  loc_B739BD: FLdPr Me
  loc_B739C0: MemLdRfVar from_stack_1.global_60
  loc_B739C3: NewIfNullPr tblPersona
  loc_B739C6: from_stack_1v = tblPersona.DetaBarrGet()
  loc_B739CB: ILdRf var_8C
  loc_B739CE: LitStr " "
  loc_B739D1: ConcatStr
  loc_B739D2: CVarStr var_F8
  loc_B739D5: LitVarStr var_C8, vbNullString
  loc_B739DA: FStVarCopyObj var_D8
  loc_B739DD: FLdRfVar var_D8
  loc_B739E0: LitStr "Manz: "
  loc_B739E3: ILdRf var_98
  loc_B739E6: ConcatStr
  loc_B739E7: CVarStr var_B8
  loc_B739EA: ILdRf var_94
  loc_B739ED: LitStr vbNullString
  loc_B739F0: NeStr
  loc_B739F2: CVarBoolI2 var_A8
  loc_B739F6: FLdRfVar var_E8
  loc_B739F9: ImpAdCallFPR4  = IIf(, , )
  loc_B739FE: FLdRfVar var_E8
  loc_B73A01: ConcatVar var_108
  loc_B73A05: LitVarStr var_11C, " "
  loc_B73A0A: ConcatVar var_12C
  loc_B73A0E: LitVarStr var_160, vbNullString
  loc_B73A13: FStVarCopyObj var_170
  loc_B73A16: FLdRfVar var_170
  loc_B73A19: LitStr "Casa: "
  loc_B73A1C: ILdRf var_130
  loc_B73A1F: ConcatStr
  loc_B73A20: CVarStr var_150
  loc_B73A23: ILdRf var_10C
  loc_B73A26: LitStr vbNullString
  loc_B73A29: NeStr
  loc_B73A2B: CVarBoolI2 var_140
  loc_B73A2F: FLdRfVar var_180
  loc_B73A32: ImpAdCallFPR4  = IIf(, , )
  loc_B73A37: FLdRfVar var_180
  loc_B73A3A: ConcatVar var_190
  loc_B73A3E: CStrVarVal var_194
  loc_B73A42: FLdPr Me
  loc_B73A45: VCallAd Control_ID_BarrPersLbl
  loc_B73A48: FStAdFunc var_88
  loc_B73A4B: FLdPr var_88
  loc_B73A4E: Me.Caption = from_stack_1
  loc_B73A53: FFreeStr var_8C = "": var_94 = "": var_98 = "": var_10C = "": var_130 = ""
  loc_B73A62: FFree1Ad var_88
  loc_B73A65: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = ""
  loc_B73A80: FLdRfVar var_8C
  loc_B73A83: FLdPr Me
  loc_B73A86: MemLdRfVar from_stack_1.global_60
  loc_B73A89: NewIfNullPr tblPersona
  loc_B73A8C: from_stack_1v = tblPersona.UbicPersGet()
  loc_B73A91: ILdRf var_8C
  loc_B73A94: LitStr " "
  loc_B73A97: ConcatStr
  loc_B73A98: FStStrNoPop var_98
  loc_B73A9B: FLdRfVar var_94
  loc_B73A9E: FLdPr Me
  loc_B73AA1: MemLdRfVar from_stack_1.global_60
  loc_B73AA4: NewIfNullPr tblPersona
  loc_B73AA7: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B73AAC: ILdRf var_94
  loc_B73AAF: ConcatStr
  loc_B73AB0: FStStrNoPop var_10C
  loc_B73AB3: FLdPr Me
  loc_B73AB6: VCallAd Control_ID_LocaPersLbl
  loc_B73AB9: FStAdFunc var_88
  loc_B73ABC: FLdPr var_88
  loc_B73ABF: Me.Caption = from_stack_1
  loc_B73AC4: FFreeStr var_8C = "": var_98 = "": var_94 = ""
  loc_B73ACF: FFree1Ad var_88
  loc_B73AD2: LitI4 0
  loc_B73AD7: LitI4 0
  loc_B73ADC: FLdRfVar var_198
  loc_B73ADF: Redim
  loc_B73AE9: FLdPr Me
  loc_B73AEC: VCallAd Control_ID_ConfirmarCmd
  loc_B73AEF: CVarAd
  loc_B73AF3: ParmAry1St
  loc_B73AF9: FLdRfVar var_198
  loc_B73AFC: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B73B01: FLdRfVar var_198
  loc_B73B04: Erase
  loc_B73B05: Branch loc_B73BBC
  loc_B73B08: FLdRfVar var_8C
  loc_B73B0B: FLdPr Me
  loc_B73B0E: MemLdRfVar from_stack_1.global_60
  loc_B73B11: NewIfNullPr tblPersona
  loc_B73B14: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B73B19: ILdRf var_8C
  loc_B73B1C: FLdPr Me
  loc_B73B1F: MemStStrCopy
  loc_B73B23: FFree1Str var_8C
  loc_B73B26: FLdPr Me
  loc_B73B29: MemLdStr global_64
  loc_B73B2C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B73B31: LitStr vbNullString
  loc_B73B34: FLdPr Me
  loc_B73B37: VCallAd Control_ID_CucuPersLbl
  loc_B73B3A: FStAdFunc var_88
  loc_B73B3D: FLdPr var_88
  loc_B73B40: Me.Caption = from_stack_1
  loc_B73B45: FFree1Ad var_88
  loc_B73B48: LitStr vbNullString
  loc_B73B4B: FLdPr Me
  loc_B73B4E: VCallAd Control_ID_DetaPersLbl
  loc_B73B51: FStAdFunc var_88
  loc_B73B54: FLdPr var_88
  loc_B73B57: Me.Caption = from_stack_1
  loc_B73B5C: FFree1Ad var_88
  loc_B73B5F: LitStr vbNullString
  loc_B73B62: FLdPr Me
  loc_B73B65: VCallAd Control_ID_DomiPersLbl
  loc_B73B68: FStAdFunc var_88
  loc_B73B6B: FLdPr var_88
  loc_B73B6E: Me.Caption = from_stack_1
  loc_B73B73: FFree1Ad var_88
  loc_B73B76: LitStr vbNullString
  loc_B73B79: FLdPr Me
  loc_B73B7C: VCallAd Control_ID_BarrPersLbl
  loc_B73B7F: FStAdFunc var_88
  loc_B73B82: FLdPr var_88
  loc_B73B85: Me.Caption = from_stack_1
  loc_B73B8A: FFree1Ad var_88
  loc_B73B8D: LitStr vbNullString
  loc_B73B90: FLdPr Me
  loc_B73B93: VCallAd Control_ID_LocaPersLbl
  loc_B73B96: FStAdFunc var_88
  loc_B73B99: FLdPr var_88
  loc_B73B9C: Me.Caption = from_stack_1
  loc_B73BA1: FFree1Ad var_88
  loc_B73BA4: FLdPr Me
  loc_B73BA7: VCallAd Control_ID_NumeCtaTxt
  loc_B73BAA: CVarAd
  loc_B73BAE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B73BB3: FFree1Var var_B8 = ""
  loc_B73BB6: LitI2_Byte &HFF
  loc_B73BB8: IStI2 Cancel
  loc_B73BBB: ExitProcHresult
  loc_B73BBC: Branch loc_B73C12
  loc_B73BBF: LitStr "Ingrese un Numero de Cuenta correcto. Verifique...."
  loc_B73BC2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B73BC7: LitStr vbNullString
  loc_B73BCA: FLdPr Me
  loc_B73BCD: VCallAd Control_ID_CucuPersLbl
  loc_B73BD0: FStAdFunc var_88
  loc_B73BD3: FLdPr var_88
  loc_B73BD6: Me.Caption = from_stack_1
  loc_B73BDB: FFree1Ad var_88
  loc_B73BDE: LitStr vbNullString
  loc_B73BE1: FLdPr Me
  loc_B73BE4: VCallAd Control_ID_DetaPersLbl
  loc_B73BE7: FStAdFunc var_88
  loc_B73BEA: FLdPr var_88
  loc_B73BED: Me.Caption = from_stack_1
  loc_B73BF2: FFree1Ad var_88
  loc_B73BF5: LitStr vbNullString
  loc_B73BF8: FLdPr Me
  loc_B73BFB: VCallAd Control_ID_DomiPersLbl
  loc_B73BFE: FStAdFunc var_88
  loc_B73C01: FLdPr var_88
  loc_B73C04: Me.Caption = from_stack_1
  loc_B73C09: FFree1Ad var_88
  loc_B73C0C: LitI2_Byte &HFF
  loc_B73C0E: IStI2 Cancel
  loc_B73C11: ExitProcHresult
  loc_B73C12: ExitProcHresult
End Sub

Private Sub ExpeCtctTxt_GotFocus() '9C34E8
  'Data Table: 51A85C
  loc_9C34D4: FLdPr Me
  loc_9C34D7: VCallAd Control_ID_ExpeCtctTxt
  loc_9C34DA: CVarAd
  loc_9C34DE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C34E3: FFree1Var var_94 = ""
  loc_9C34E6: ExitProcHresult
End Sub

Private Sub ExpeCtctTxt_Validate(Cancel As Boolean) 'A7E97C
  'Data Table: 51A85C
  loc_A7E8F8: FLdRfVar var_8A
  loc_A7E8FB: FLdPr Me
  loc_A7E8FE: VCallAd Control_ID_ExpeCtctTxt
  loc_A7E901: FStAdFunc var_88
  loc_A7E904: FLdPr var_88
  loc_A7E907:  = Me.Enabled
  loc_A7E90C: FLdI2 var_8A
  loc_A7E90F: FFree1Ad var_88
  loc_A7E912: BranchF loc_A7E978
  loc_A7E915: FLdRfVar var_90
  loc_A7E918: FLdPr Me
  loc_A7E91B: VCallAd Control_ID_ExpeCtctTxt
  loc_A7E91E: FStAdFunc var_88
  loc_A7E921: FLdPr var_88
  loc_A7E924:  = Me.Text
  loc_A7E929: ILdRf var_90
  loc_A7E92C: LitStr "Nro de Acta"
  loc_A7E92F: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A7E934: FStStrNoPop var_94
  loc_A7E937: FLdPr Me
  loc_A7E93A: MemStStrCopy
  loc_A7E93E: FFreeStr var_90 = ""
  loc_A7E945: FFree1Ad var_88
  loc_A7E948: FLdPr Me
  loc_A7E94B: MemLdStr global_64
  loc_A7E94E: LitStr vbNullString
  loc_A7E951: NeStr
  loc_A7E953: BranchF loc_A7E978
  loc_A7E956: FLdPr Me
  loc_A7E959: MemLdStr global_64
  loc_A7E95C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7E961: FLdPr Me
  loc_A7E964: VCallAd Control_ID_ExpeCtctTxt
  loc_A7E967: CVarAd
  loc_A7E96B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7E970: FFree1Var var_A4 = ""
  loc_A7E973: LitI2_Byte &HFF
  loc_A7E975: IStI2 Cancel
  loc_A7E978: ExitProcHresult
  loc_A7E979: SubI4
End Sub

Private Sub OficinaCbo_Click() 'B27970
  'Data Table: 51A85C
  loc_B276CC: FLdRfVar var_8A
  loc_B276CF: FLdPr Me
  loc_B276D2: VCallAd Control_ID_OficinaCbo
  loc_B276D5: FStAdFunc var_88
  loc_B276D8: FLdPr var_88
  loc_B276DB:  = Me.ListIndex
  loc_B276E0: FLdI2 var_8A
  loc_B276E3: FStI2 var_8C
  loc_B276E6: FFree1Ad var_88
  loc_B276E9: FLdI2 var_8C
  loc_B276EC: LitI2_Byte 0
  loc_B276EE: EqI2
  loc_B276EF: BranchF loc_B276FD
  loc_B276F2: LitI2_Byte 1
  loc_B276F4: CUI1I2
  loc_B276F6: ImpAdStUI1 MemVar_D93038
  loc_B276FA: Branch loc_B2774A
  loc_B276FD: FLdI2 var_8C
  loc_B27700: LitI2_Byte 1
  loc_B27702: EqI2
  loc_B27703: BranchF loc_B27711
  loc_B27706: LitI2_Byte 2
  loc_B27708: CUI1I2
  loc_B2770A: ImpAdStUI1 MemVar_D93038
  loc_B2770E: Branch loc_B2774A
  loc_B27711: FLdI2 var_8C
  loc_B27714: LitI2_Byte 2
  loc_B27716: EqI2
  loc_B27717: BranchF loc_B27725
  loc_B2771A: LitI2_Byte 3
  loc_B2771C: CUI1I2
  loc_B2771E: ImpAdStUI1 MemVar_D93038
  loc_B27722: Branch loc_B2774A
  loc_B27725: FLdI2 var_8C
  loc_B27728: LitI2_Byte 3
  loc_B2772A: EqI2
  loc_B2772B: BranchF loc_B27739
  loc_B2772E: LitI2_Byte 4
  loc_B27730: CUI1I2
  loc_B27732: ImpAdStUI1 MemVar_D93038
  loc_B27736: Branch loc_B2774A
  loc_B27739: FLdI2 var_8C
  loc_B2773C: LitI2_Byte 4
  loc_B2773E: EqI2
  loc_B2773F: BranchF loc_B2774A
  loc_B27742: LitI2_Byte 5
  loc_B27744: CUI1I2
  loc_B27746: ImpAdStUI1 MemVar_D93038
  loc_B2774A: ImpAdLdUI1
  loc_B2774E: CI2UI1
  loc_B27750: LitI2_Byte 0
  loc_B27752: NeI2
  loc_B27753: FLdRfVar var_90
  loc_B27756: FLdPr Me
  loc_B27759: VCallAd Control_ID_NumeCtaTxt
  loc_B2775C: FStAdFunc var_88
  loc_B2775F: FLdPr var_88
  loc_B27762:  = Me.Text
  loc_B27767: ILdRf var_90
  loc_B2776A: LitStr vbNullString
  loc_B2776D: NeStr
  loc_B2776F: AndI4
  loc_B27770: FLdRfVar var_98
  loc_B27773: FLdPr Me
  loc_B27776: VCallAd Control_ID_NumeCtaTxt
  loc_B27779: FStAdFunc var_94
  loc_B2777C: FLdPr var_94
  loc_B2777F:  = Me.Text
  loc_B27784: ILdRf var_98
  loc_B27787: LitStr "0"
  loc_B2778A: NeStr
  loc_B2778C: AndI4
  loc_B2778D: FFreeStr var_90 = ""
  loc_B27794: FFreeAd var_88 = ""
  loc_B2779B: BranchF loc_B2796E
  loc_B2779E: FLdRfVar var_90
  loc_B277A1: FLdPr Me
  loc_B277A4: VCallAd Control_ID_NumeCtaTxt
  loc_B277A7: FStAdFunc var_88
  loc_B277AA: FLdPr var_88
  loc_B277AD:  = Me.Text
  loc_B277B2: FLdPr Me
  loc_B277B5: MemLdRfVar from_stack_1.global_60
  loc_B277B8: NewIfNullRf
  loc_B277BC: LitStr "Titular"
  loc_B277BF: ILdRf var_90
  loc_B277C2: ImpAdLdUI1
  loc_B277C6: CStrI2
  loc_B277C8: FStStrNoPop var_98
  loc_B277CB: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B277D0: FFreeStr var_98 = ""
  loc_B277D7: FFree1Ad var_88
  loc_B277DA: BranchF loc_B278FF
  loc_B277DD: FLdRfVar var_90
  loc_B277E0: FLdPr Me
  loc_B277E3: MemLdRfVar from_stack_1.global_60
  loc_B277E6: NewIfNullPr tblPersona
  loc_B277E9: from_stack_1v = tblPersona.CucuPersGet()
  loc_B277EE: ILdRf var_90
  loc_B277F1: FLdPr Me
  loc_B277F4: VCallAd Control_ID_CucuPersLbl
  loc_B277F7: FStAdFunc var_88
  loc_B277FA: FLdPr var_88
  loc_B277FD: Me.Caption = from_stack_1
  loc_B27802: FFree1Str var_90
  loc_B27805: FFree1Ad var_88
  loc_B27808: FLdRfVar var_90
  loc_B2780B: FLdPr Me
  loc_B2780E: MemLdRfVar from_stack_1.global_60
  loc_B27811: NewIfNullPr tblPersona
  loc_B27814: from_stack_1v = tblPersona.DetaPersGet()
  loc_B27819: ILdRf var_90
  loc_B2781C: FLdPr Me
  loc_B2781F: VCallAd Control_ID_DetaPersLbl
  loc_B27822: FStAdFunc var_88
  loc_B27825: FLdPr var_88
  loc_B27828: Me.Caption = from_stack_1
  loc_B2782D: FFree1Str var_90
  loc_B27830: FFree1Ad var_88
  loc_B27833: FLdRfVar var_98
  loc_B27836: FLdPr Me
  loc_B27839: MemLdRfVar from_stack_1.global_60
  loc_B2783C: NewIfNullPr tblPersona
  loc_B2783F: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B27844: FLdRfVar var_9C
  loc_B27847: FLdPr Me
  loc_B2784A: MemLdRfVar from_stack_1.global_60
  loc_B2784D: NewIfNullPr tblPersona
  loc_B27850: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B27855: FLdRfVar var_90
  loc_B27858: FLdPr Me
  loc_B2785B: MemLdRfVar from_stack_1.global_60
  loc_B2785E: NewIfNullPr tblPersona
  loc_B27861: from_stack_1v = tblPersona.DetaCallGet()
  loc_B27866: ILdRf var_90
  loc_B27869: LitStr " "
  loc_B2786C: ConcatStr
  loc_B2786D: CVarStr var_FC
  loc_B27870: LitVarStr var_CC, vbNullString
  loc_B27875: FStVarCopyObj var_DC
  loc_B27878: FLdRfVar var_DC
  loc_B2787B: LitStr "Nro: "
  loc_B2787E: ILdRf var_9C
  loc_B27881: ConcatStr
  loc_B27882: CVarStr var_BC
  loc_B27885: ILdRf var_98
  loc_B27888: LitStr "0"
  loc_B2788B: NeStr
  loc_B2788D: CVarBoolI2 var_AC
  loc_B27891: FLdRfVar var_EC
  loc_B27894: ImpAdCallFPR4  = IIf(, , )
  loc_B27899: FLdRfVar var_EC
  loc_B2789C: ConcatVar var_10C
  loc_B278A0: LitVarStr var_11C, " "
  loc_B278A5: ConcatVar var_12C
  loc_B278A9: FLdRfVar var_130
  loc_B278AC: FLdPr Me
  loc_B278AF: MemLdRfVar from_stack_1.global_60
  loc_B278B2: NewIfNullPr tblPersona
  loc_B278B5: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B278BA: FLdZeroAd var_130
  loc_B278BD: CVarStr var_140
  loc_B278C0: ConcatVar var_150
  loc_B278C4: CStrVarVal var_154
  loc_B278C8: FLdPr Me
  loc_B278CB: VCallAd Control_ID_DomiPersLbl
  loc_B278CE: FStAdFunc var_88
  loc_B278D1: FLdPr var_88
  loc_B278D4: Me.Caption = from_stack_1
  loc_B278D9: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B278E4: FFree1Ad var_88
  loc_B278E7: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B278FC: Branch loc_B2796E
  loc_B278FF: FLdRfVar var_90
  loc_B27902: FLdPr Me
  loc_B27905: MemLdRfVar from_stack_1.global_60
  loc_B27908: NewIfNullPr tblPersona
  loc_B2790B: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B27910: ILdRf var_90
  loc_B27913: FLdPr Me
  loc_B27916: MemStStrCopy
  loc_B2791A: FFree1Str var_90
  loc_B2791D: FLdPr Me
  loc_B27920: MemLdStr global_64
  loc_B27923: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B27928: LitStr vbNullString
  loc_B2792B: FLdPr Me
  loc_B2792E: VCallAd Control_ID_CucuPersLbl
  loc_B27931: FStAdFunc var_88
  loc_B27934: FLdPr var_88
  loc_B27937: Me.Caption = from_stack_1
  loc_B2793C: FFree1Ad var_88
  loc_B2793F: LitStr vbNullString
  loc_B27942: FLdPr Me
  loc_B27945: VCallAd Control_ID_DetaPersLbl
  loc_B27948: FStAdFunc var_88
  loc_B2794B: FLdPr var_88
  loc_B2794E: Me.Caption = from_stack_1
  loc_B27953: FFree1Ad var_88
  loc_B27956: LitStr vbNullString
  loc_B27959: FLdPr Me
  loc_B2795C: VCallAd Control_ID_DomiPersLbl
  loc_B2795F: FStAdFunc var_88
  loc_B27962: FLdPr var_88
  loc_B27965: Me.Caption = from_stack_1
  loc_B2796A: FFree1Ad var_88
  loc_B2796D: ExitProcHresult
  loc_B2796E: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'A25018
  'Data Table: 51A85C
  loc_A24FDC: Call Proc_275_37_B188E8()
  loc_A24FE1: LitI4 0
  loc_A24FE6: LitI4 0
  loc_A24FEB: FLdRfVar var_88
  loc_A24FEE: Redim
  loc_A24FF8: FLdPr Me
  loc_A24FFB: VCallAd Control_ID_ConfirmarCmd
  loc_A24FFE: CVarAd
  loc_A25002: ParmAry1St
  loc_A25008: FLdRfVar var_88
  loc_A2500B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A25010: FLdRfVar var_88
  loc_A25013: Erase
  loc_A25014: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9C36E0
  'Data Table: 51A85C
  loc_9C36CC: FLdPr Me
  loc_9C36CF: VCallAd Control_ID_FechVencMsk
  loc_9C36D2: CVarAd
  loc_9C36D6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C36DB: FFree1Var var_94 = ""
  loc_9C36DE: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'A81604
  'Data Table: 51A85C
  loc_A8157C: FLdPr Me
  loc_A8157F: VCallAd Control_ID_FechVencMsk
  loc_A81582: FStAdFunc var_88
  loc_A81585: FLdPr var_88
  loc_A81588: LateIdLdVar var_98 DispID_13 -32767
  loc_A8158F: CBoolVar
  loc_A81591: LitI2_Byte &HFF
  loc_A81593: EqI2
  loc_A81594: FFree1Ad var_88
  loc_A81597: FFree1Var var_98 = ""
  loc_A8159A: BranchF loc_A81601
  loc_A8159D: FLdPr Me
  loc_A815A0: VCallAd Control_ID_FechVencMsk
  loc_A815A3: FStAdFunc var_88
  loc_A815A6: FLdPr var_88
  loc_A815A9: LateIdLdVar var_98 DispID_15 0
  loc_A815B0: CStrVarTmp
  loc_A815B1: FStStrNoPop var_9C
  loc_A815B4: ImpAdCallI2 Proc_18_6_A08898()
  loc_A815B9: FStStrNoPop var_A0
  loc_A815BC: FLdPr Me
  loc_A815BF: MemStStrCopy
  loc_A815C3: FFreeStr var_9C = ""
  loc_A815CA: FFree1Ad var_88
  loc_A815CD: FFree1Var var_98 = ""
  loc_A815D0: FLdPr Me
  loc_A815D3: MemLdStr global_64
  loc_A815D6: LitStr vbNullString
  loc_A815D9: NeStr
  loc_A815DB: BranchF loc_A81601
  loc_A815DE: FLdPr Me
  loc_A815E1: MemLdStr global_64
  loc_A815E4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A815E9: FLdPr Me
  loc_A815EC: VCallAd Control_ID_FechVencMsk
  loc_A815EF: CVarAd
  loc_A815F3: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A815F8: FFree1Var var_98 = ""
  loc_A815FB: LitI2_Byte &HFF
  loc_A815FD: IStI2 arg_C
  loc_A81600: ExitProcHresult
  loc_A81601: ExitProcHresult
  loc_A81602: UMiI4
End Function

Private Sub FechVencMsk_KeyPress(KeyAscii As Integer) 'A24FA8
  'Data Table: 51A85C
  loc_A24F60: ILdI2 KeyAscii
  loc_A24F63: CI4UI1
  loc_A24F64: LitI4 &H20
  loc_A24F69: EqI4
  loc_A24F6A: BranchF loc_A24FA7
  loc_A24F6D: LitVar_Missing var_A4
  loc_A24F70: PopAdLdVar
  loc_A24F71: LitVarI4
  loc_A24F79: PopAdLdVar
  loc_A24F7A: ImpAdLdRf MemVar_D930A4
  loc_A24F7D: NewIfNullPr frmCalendario
  loc_A24F80: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24F85: ImpAdLdRf MemVar_D93028
  loc_A24F88: CDargRef
  loc_A24F8C: FLdPr Me
  loc_A24F8F: VCallAd Control_ID_FechVencMsk
  loc_A24F92: FStAdFunc var_A8
  loc_A24F95: FLdPr var_A8
  loc_A24F98: LateIdSt
  loc_A24F9D: FFree1Ad var_A8
  loc_A24FA0: LitStr vbNullString
  loc_A24FA3: ImpAdStStrCopy MemVar_D93028
  loc_A24FA7: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'CC0424
  'Data Table: 51A85C
  loc_CBE084: LitStr vbNullString
  loc_CBE087: FLdPr Me
  loc_CBE08A: MemStStrCopy
  loc_CBE08E: LitI2_Byte 0
  loc_CBE090: PopTmpLdAd2 var_86
  loc_CBE093: Call NumeCtaTxt_Validate(from_stack_1v)
  loc_CBE098: FLdPr Me
  loc_CBE09B: MemLdStr global_64
  loc_CBE09E: LitStr vbNullString
  loc_CBE0A1: NeStr
  loc_CBE0A3: BranchF loc_CBE0A7
  loc_CBE0A6: ExitProcHresult
  loc_CBE0A7: LitI2_Byte 0
  loc_CBE0A9: PopTmpLdAd2 var_86
  loc_CBE0AC: Call ExpeCtctTxt_Validate(from_stack_1v)
  loc_CBE0B1: FLdPr Me
  loc_CBE0B4: MemLdStr global_64
  loc_CBE0B7: LitStr vbNullString
  loc_CBE0BA: NeStr
  loc_CBE0BC: BranchF loc_CBE0C0
  loc_CBE0BF: ExitProcHresult
  loc_CBE0C0: LitI2_Byte 0
  loc_CBE0C2: PopTmpLdAd2 var_86
  loc_CBE0C5: Call FeveCtctMsk_UnknownEvent_8()
  loc_CBE0CA: FLdPr Me
  loc_CBE0CD: MemLdStr global_64
  loc_CBE0D0: LitStr vbNullString
  loc_CBE0D3: NeStr
  loc_CBE0D5: BranchF loc_CBE0D9
  loc_CBE0D8: ExitProcHresult
  loc_CBE0D9: LitI2_Byte 0
  loc_CBE0DB: PopTmpLdAd2 var_86
  loc_CBE0DE: Call ServDevaFlex_UnknownEvent_8()
  loc_CBE0E3: FLdPr Me
  loc_CBE0E6: MemLdStr global_64
  loc_CBE0E9: LitStr vbNullString
  loc_CBE0EC: NeStr
  loc_CBE0EE: BranchF loc_CBE0F2
  loc_CBE0F1: ExitProcHresult
  loc_CBE0F2: LitI2_Byte 1
  loc_CBE0F4: FLdPr Me
  loc_CBE0F7: MemLdRfVar from_stack_1.global_68
  loc_CBE0FA: FLdPr Me
  loc_CBE0FD: VCallAd Control_ID_ServDevaFlex
  loc_CBE100: FStAdFunc var_8C
  loc_CBE103: FLdPr var_8C
  loc_CBE106: LateIdLdVar var_9C DispID_4 0
  loc_CBE10D: CI4Var
  loc_CBE10F: LitI4 1
  loc_CBE114: SubI4
  loc_CBE115: CI2I4
  loc_CBE116: FFree1Ad var_8C
  loc_CBE119: FFree1Var var_9C = ""
  loc_CBE11C: ForI2 var_A0
  loc_CBE122: FLdPr Me
  loc_CBE125: MemLdI2 global_68
  loc_CBE128: CI4UI1
  loc_CBE129: CVarI4
  loc_CBE12D: PopAdLdVar
  loc_CBE12E: LitVarI4
  loc_CBE136: PopAdLdVar
  loc_CBE137: FLdPr Me
  loc_CBE13A: VCallAd Control_ID_ServDevaFlex
  loc_CBE13D: FStAdFunc var_8C
  loc_CBE140: FLdPr var_8C
  loc_CBE143: LateIdCallLdVar
  loc_CBE14D: CStrVarTmp
  loc_CBE14E: CVarStr var_F0
  loc_CBE151: ImpAdCallI2 IsNumeric()
  loc_CBE156: NotI4
  loc_CBE157: FFree1Ad var_8C
  loc_CBE15A: FFreeVar var_9C = ""
  loc_CBE161: BranchF loc_CBE191
  loc_CBE164: LitStr "Debe ingresar la cantidad. Verifique..."
  loc_CBE167: FLdPr Me
  loc_CBE16A: MemStStrCopy
  loc_CBE16E: FLdPr Me
  loc_CBE171: MemLdStr global_64
  loc_CBE174: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBE179: FLdPr Me
  loc_CBE17C: VCallAd Control_ID_ServDevaFlex
  loc_CBE17F: FStAdFunc var_8C
  loc_CBE182: FLdPr var_8C
  loc_CBE185: LateIdCall
  loc_CBE18D: FFree1Ad var_8C
  loc_CBE190: ExitProcHresult
  loc_CBE191: FLdPr Me
  loc_CBE194: MemLdI2 global_68
  loc_CBE197: CI4UI1
  loc_CBE198: CVarI4
  loc_CBE19C: PopAdLdVar
  loc_CBE19D: LitVarI4
  loc_CBE1A5: PopAdLdVar
  loc_CBE1A6: FLdPr Me
  loc_CBE1A9: VCallAd Control_ID_ServDevaFlex
  loc_CBE1AC: FStAdFunc var_8C
  loc_CBE1AF: FLdPr var_8C
  loc_CBE1B2: LateIdCallLdVar
  loc_CBE1BC: CStrVarTmp
  loc_CBE1BD: CVarStr var_F0
  loc_CBE1C0: ImpAdCallI2 IsNumeric()
  loc_CBE1C5: FFree1Ad var_8C
  loc_CBE1C8: FFreeVar var_9C = ""
  loc_CBE1CF: BranchF loc_CBFCD7
  loc_CBE1D2: ImpAdLdUI1
  loc_CBE1D6: CI2UI1
  loc_CBE1D8: LitI2_Byte 1
  loc_CBE1DA: EqI2
  loc_CBE1DB: BranchF loc_CBEF30
  loc_CBE1DE: LitStr "SELECT DetaSeca, ImpoSede * UntrPage as ImpoSede, concepto.PeriInfo, servcata.CodiConc, concepto.TiafConc FROM servcata "
  loc_CBE1E1: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CBE1E4: ConcatStr
  loc_CBE1E5: FStStrNoPop var_F4
  loc_CBE1E8: ImpAdLdI2 MemVar_D93034
  loc_CBE1EB: CStrUI1
  loc_CBE1ED: FStStrNoPop var_F8
  loc_CBE1F0: ConcatStr
  loc_CBE1F1: FStStrNoPop var_FC
  loc_CBE1F4: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_CBE1F7: ConcatStr
  loc_CBE1F8: FStStrNoPop var_100
  loc_CBE1FB: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CBE1FE: ConcatStr
  loc_CBE1FF: FStStrNoPop var_104
  loc_CBE202: LitStr " WHERE servcata.PeriOrde = "
  loc_CBE205: ConcatStr
  loc_CBE206: FStStrNoPop var_108
  loc_CBE209: ImpAdLdI2 MemVar_D93036
  loc_CBE20C: CStrUI1
  loc_CBE20E: FStStrNoPop var_10C
  loc_CBE211: ConcatStr
  loc_CBE212: FStStrNoPop var_110
  loc_CBE215: LitStr " AND CodiSeca = "
  loc_CBE218: ConcatStr
  loc_CBE219: FStStrNoPop var_114
  loc_CBE21C: FLdPr Me
  loc_CBE21F: MemLdI2 global_68
  loc_CBE222: CI4UI1
  loc_CBE223: CVarI4
  loc_CBE227: PopAdLdVar
  loc_CBE228: LitVarI4
  loc_CBE230: PopAdLdVar
  loc_CBE231: FLdPr Me
  loc_CBE234: VCallAd Control_ID_ServDevaFlex
  loc_CBE237: FStAdFunc var_8C
  loc_CBE23A: FLdPr var_8C
  loc_CBE23D: LateIdCallLdVar
  loc_CBE247: CStrVarTmp
  loc_CBE248: FStStrNoPop var_118
  loc_CBE24B: ConcatStr
  loc_CBE24C: FStStrNoPop var_11C
  loc_CBE24F: FLdPr Me
  loc_CBE252: MemLdRfVar from_stack_1.global_56
  loc_CBE255: NewIfNullPr clsservdeva
  loc_CBE258: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CBE25D: FFreeStr var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_CBE276: FFree1Ad var_8C
  loc_CBE279: FFree1Var var_9C = ""
  loc_CBE27C: FLdRfVar var_120
  loc_CBE27F: FLdRfVar var_8C
  loc_CBE282: FLdPr Me
  loc_CBE285: MemLdRfVar from_stack_1.global_56
  loc_CBE288: NewIfNullPr clsservdeva
  loc_CBE28B: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE290: FLdPr var_8C
  loc_CBE293:  = Me.RecordCount
  loc_CBE298: ILdRf var_120
  loc_CBE29B: LitI4 0
  loc_CBE2A0: GtI4
  loc_CBE2A1: FFree1Ad var_8C
  loc_CBE2A4: BranchF loc_CBED80
  loc_CBE2A7: FLdRfVar var_9C
  loc_CBE2AA: FLdRfVar var_128
  loc_CBE2AD: LitVarStr var_B0, "PeriInfo"
  loc_CBE2B2: PopAdLdVar
  loc_CBE2B3: FLdRfVar var_124
  loc_CBE2B6: FLdRfVar var_8C
  loc_CBE2B9: FLdPr Me
  loc_CBE2BC: MemLdRfVar from_stack_1.global_56
  loc_CBE2BF: NewIfNullPr clsservdeva
  loc_CBE2C2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE2C7: FLdPr var_8C
  loc_CBE2CA:  = Me.Fields
  loc_CBE2CF: FLdPr var_124
  loc_CBE2D2: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE2D7: FLdPr var_128
  loc_CBE2DA:  = Me.Value
  loc_CBE2DF: FLdRfVar var_9C
  loc_CBE2E2: FnCIntVar
  loc_CBE2E4: ImpAdLdI2 MemVar_D93034
  loc_CBE2E7: NeI2
  loc_CBE2E8: FFreeAd var_8C = "": var_124 = ""
  loc_CBE2F1: FFree1Var var_9C = ""
  loc_CBE2F4: BranchF loc_CBE4AA
  loc_CBE2F7: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CBE2FA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBE2FF: FLdPr Me
  loc_CBE302: VCallAd Control_ID_ServDevaFlex
  loc_CBE305: FStAdFunc var_8C
  loc_CBE308: FLdPr var_8C
  loc_CBE30B: LateIdCall
  loc_CBE313: FFree1Ad var_8C
  loc_CBE316: FLdPr Me
  loc_CBE319: MemLdI2 global_68
  loc_CBE31C: CI4UI1
  loc_CBE31D: CVarI4
  loc_CBE321: PopAdLdVar
  loc_CBE322: LitVarI4
  loc_CBE32A: PopAdLdVar
  loc_CBE32B: LitVarStr var_138, vbNullString
  loc_CBE330: PopAdLdVar
  loc_CBE331: FLdPr Me
  loc_CBE334: VCallAd Control_ID_ServDevaFlex
  loc_CBE337: FStAdFunc var_8C
  loc_CBE33A: FLdPr var_8C
  loc_CBE33D: LateIdCallSt
  loc_CBE345: FFree1Ad var_8C
  loc_CBE348: FLdPr Me
  loc_CBE34B: MemLdI2 global_68
  loc_CBE34E: CI4UI1
  loc_CBE34F: CVarI4
  loc_CBE353: PopAdLdVar
  loc_CBE354: LitVarI4
  loc_CBE35C: PopAdLdVar
  loc_CBE35D: LitVarStr var_138, vbNullString
  loc_CBE362: PopAdLdVar
  loc_CBE363: FLdPr Me
  loc_CBE366: VCallAd Control_ID_ServDevaFlex
  loc_CBE369: FStAdFunc var_8C
  loc_CBE36C: FLdPr var_8C
  loc_CBE36F: LateIdCallSt
  loc_CBE377: FFree1Ad var_8C
  loc_CBE37A: FLdPr Me
  loc_CBE37D: MemLdI2 global_68
  loc_CBE380: CI4UI1
  loc_CBE381: CVarI4
  loc_CBE385: PopAdLdVar
  loc_CBE386: LitVarI4
  loc_CBE38E: PopAdLdVar
  loc_CBE38F: LitVarStr var_138, vbNullString
  loc_CBE394: PopAdLdVar
  loc_CBE395: FLdPr Me
  loc_CBE398: VCallAd Control_ID_ServDevaFlex
  loc_CBE39B: FStAdFunc var_8C
  loc_CBE39E: FLdPr var_8C
  loc_CBE3A1: LateIdCallSt
  loc_CBE3A9: FFree1Ad var_8C
  loc_CBE3AC: FLdPr Me
  loc_CBE3AF: MemLdI2 global_68
  loc_CBE3B2: CI4UI1
  loc_CBE3B3: CVarI4
  loc_CBE3B7: PopAdLdVar
  loc_CBE3B8: LitVarI4
  loc_CBE3C0: PopAdLdVar
  loc_CBE3C1: LitVarStr var_138, vbNullString
  loc_CBE3C6: PopAdLdVar
  loc_CBE3C7: FLdPr Me
  loc_CBE3CA: VCallAd Control_ID_ServDevaFlex
  loc_CBE3CD: FStAdFunc var_8C
  loc_CBE3D0: FLdPr var_8C
  loc_CBE3D3: LateIdCallSt
  loc_CBE3DB: FFree1Ad var_8C
  loc_CBE3DE: FLdPr Me
  loc_CBE3E1: MemLdI2 global_68
  loc_CBE3E4: CI4UI1
  loc_CBE3E5: CVarI4
  loc_CBE3E9: PopAdLdVar
  loc_CBE3EA: LitVarI4
  loc_CBE3F2: PopAdLdVar
  loc_CBE3F3: LitVarStr var_138, vbNullString
  loc_CBE3F8: PopAdLdVar
  loc_CBE3F9: FLdPr Me
  loc_CBE3FC: VCallAd Control_ID_ServDevaFlex
  loc_CBE3FF: FStAdFunc var_8C
  loc_CBE402: FLdPr var_8C
  loc_CBE405: LateIdCallSt
  loc_CBE40D: FFree1Ad var_8C
  loc_CBE410: FLdPr Me
  loc_CBE413: MemLdI2 global_68
  loc_CBE416: CI4UI1
  loc_CBE417: CVarI4
  loc_CBE41B: PopAdLdVar
  loc_CBE41C: LitVarI4
  loc_CBE424: PopAdLdVar
  loc_CBE425: LitVarStr var_138, vbNullString
  loc_CBE42A: PopAdLdVar
  loc_CBE42B: FLdPr Me
  loc_CBE42E: VCallAd Control_ID_ServDevaFlex
  loc_CBE431: FStAdFunc var_8C
  loc_CBE434: FLdPr var_8C
  loc_CBE437: LateIdCallSt
  loc_CBE43F: FFree1Ad var_8C
  loc_CBE442: FLdPr Me
  loc_CBE445: MemLdI2 global_68
  loc_CBE448: CI4UI1
  loc_CBE449: CVarI4
  loc_CBE44D: PopAdLdVar
  loc_CBE44E: LitVarI4
  loc_CBE456: PopAdLdVar
  loc_CBE457: LitVarStr var_138, vbNullString
  loc_CBE45C: PopAdLdVar
  loc_CBE45D: FLdPr Me
  loc_CBE460: VCallAd Control_ID_ServDevaFlex
  loc_CBE463: FStAdFunc var_8C
  loc_CBE466: FLdPr var_8C
  loc_CBE469: LateIdCallSt
  loc_CBE471: FFree1Ad var_8C
  loc_CBE474: FLdPr Me
  loc_CBE477: MemLdI2 global_68
  loc_CBE47A: CI4UI1
  loc_CBE47B: CVarI4
  loc_CBE47F: PopAdLdVar
  loc_CBE480: LitVarI4
  loc_CBE488: PopAdLdVar
  loc_CBE489: LitVarStr var_138, vbNullString
  loc_CBE48E: PopAdLdVar
  loc_CBE48F: FLdPr Me
  loc_CBE492: VCallAd Control_ID_ServDevaFlex
  loc_CBE495: FStAdFunc var_8C
  loc_CBE498: FLdPr var_8C
  loc_CBE49B: LateIdCallSt
  loc_CBE4A3: FFree1Ad var_8C
  loc_CBE4A6: ExitProcHresult
  loc_CBE4A7: Branch loc_CBED7D
  loc_CBE4AA: FLdRfVar var_9C
  loc_CBE4AD: FLdRfVar var_128
  loc_CBE4B0: LitVarStr var_B0, "PeriInfo"
  loc_CBE4B5: PopAdLdVar
  loc_CBE4B6: FLdRfVar var_124
  loc_CBE4B9: FLdRfVar var_8C
  loc_CBE4BC: FLdPr Me
  loc_CBE4BF: MemLdRfVar from_stack_1.global_56
  loc_CBE4C2: NewIfNullPr clsservdeva
  loc_CBE4C5: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE4CA: FLdPr var_8C
  loc_CBE4CD:  = Me.Fields
  loc_CBE4D2: FLdPr var_124
  loc_CBE4D5: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE4DA: FLdPr var_128
  loc_CBE4DD:  = Me.Value
  loc_CBE4E2: FLdRfVar var_F0
  loc_CBE4E5: FLdRfVar var_154
  loc_CBE4E8: LitVarStr var_C0, "CodiConc"
  loc_CBE4ED: PopAdLdVar
  loc_CBE4EE: FLdRfVar var_150
  loc_CBE4F1: FLdRfVar var_14C
  loc_CBE4F4: FLdPr Me
  loc_CBE4F7: MemLdRfVar from_stack_1.global_56
  loc_CBE4FA: NewIfNullPr clsservdeva
  loc_CBE4FD: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE502: FLdPr var_14C
  loc_CBE505:  = Me.Fields
  loc_CBE50A: FLdPr var_150
  loc_CBE50D: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE512: FLdPr var_154
  loc_CBE515:  = Me.Value
  loc_CBE51A: FLdRfVar var_F0
  loc_CBE51D: CStrVarTmp
  loc_CBE51E: FStStrNoPop var_F4
  loc_CBE521: FLdRfVar var_9C
  loc_CBE524: CI2Var
  loc_CBE525: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CBE52A: FStStrNoPop var_F8
  loc_CBE52D: LitStr vbNullString
  loc_CBE530: EqStr
  loc_CBE532: FFreeStr var_F4 = ""
  loc_CBE539: FFreeAd var_8C = "": var_124 = "": var_14C = "": var_150 = "": var_128 = ""
  loc_CBE548: FFreeVar var_9C = ""
  loc_CBE54F: BranchF loc_CBE5C1
  loc_CBE552: LitVarStr var_C0, "El recurso: "
  loc_CBE557: FLdRfVar var_9C
  loc_CBE55A: FLdRfVar var_128
  loc_CBE55D: LitVarStr var_B0, "CodiConc"
  loc_CBE562: PopAdLdVar
  loc_CBE563: FLdRfVar var_124
  loc_CBE566: FLdRfVar var_8C
  loc_CBE569: FLdPr Me
  loc_CBE56C: MemLdRfVar from_stack_1.global_56
  loc_CBE56F: NewIfNullPr clsservdeva
  loc_CBE572: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE577: FLdPr var_8C
  loc_CBE57A:  = Me.Fields
  loc_CBE57F: FLdPr var_124
  loc_CBE582: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE587: FLdPr var_128
  loc_CBE58A:  = Me.Value
  loc_CBE58F: FLdRfVar var_9C
  loc_CBE592: ConcatVar var_F0
  loc_CBE596: LitVarStr var_D0, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBE59B: ConcatVar var_164
  loc_CBE59F: CStrVarVal var_F4
  loc_CBE5A3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBE5A8: FFree1Str var_F4
  loc_CBE5AB: FFreeAd var_8C = "": var_124 = ""
  loc_CBE5B4: FFreeVar var_9C = "": var_F0 = ""
  loc_CBE5BD: ExitProcHresult
  loc_CBE5BE: Branch loc_CBED7D
  loc_CBE5C1: FLdRfVar var_9C
  loc_CBE5C4: FLdRfVar var_128
  loc_CBE5C7: LitVarStr var_B0, "TiafConc"
  loc_CBE5CC: PopAdLdVar
  loc_CBE5CD: FLdRfVar var_124
  loc_CBE5D0: FLdRfVar var_8C
  loc_CBE5D3: FLdPr Me
  loc_CBE5D6: MemLdRfVar from_stack_1.global_56
  loc_CBE5D9: NewIfNullPr clsservdeva
  loc_CBE5DC: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE5E1: FLdPr var_8C
  loc_CBE5E4:  = Me.Fields
  loc_CBE5E9: FLdPr var_124
  loc_CBE5EC: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE5F1: FLdPr var_128
  loc_CBE5F4:  = Me.Value
  loc_CBE5F9: FLdRfVar var_9C
  loc_CBE5FC: LitVarI2 var_C0, 0
  loc_CBE601: HardType
  loc_CBE602: EqVarBool
  loc_CBE604: FFreeAd var_8C = "": var_124 = ""
  loc_CBE60D: FFree1Var var_9C = ""
  loc_CBE610: BranchF loc_CBE61F
  loc_CBE613: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBE616: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBE61B: ExitProcHresult
  loc_CBE61C: Branch loc_CBED7D
  loc_CBE61F: FLdPr Me
  loc_CBE622: MemLdI2 global_68
  loc_CBE625: CI4UI1
  loc_CBE626: CVarI4
  loc_CBE62A: PopAdLdVar
  loc_CBE62B: LitVarI4
  loc_CBE633: PopAdLdVar
  loc_CBE634: LitI2_Byte 1
  loc_CBE636: CStrUI1
  loc_CBE638: CVarStr var_9C
  loc_CBE63B: PopAdLdVar
  loc_CBE63C: FLdPr Me
  loc_CBE63F: VCallAd Control_ID_ServDevaFlex
  loc_CBE642: FStAdFunc var_8C
  loc_CBE645: FLdPr var_8C
  loc_CBE648: LateIdCallSt
  loc_CBE650: FFree1Ad var_8C
  loc_CBE653: FFree1Var var_9C = ""
  loc_CBE656: FLdPr Me
  loc_CBE659: MemLdI2 global_68
  loc_CBE65C: CI4UI1
  loc_CBE65D: CVarI4
  loc_CBE661: PopAdLdVar
  loc_CBE662: LitVarI4
  loc_CBE66A: PopAdLdVar
  loc_CBE66B: FLdRfVar var_9C
  loc_CBE66E: FLdRfVar var_128
  loc_CBE671: LitVarStr var_B0, "DetaSeca"
  loc_CBE676: PopAdLdVar
  loc_CBE677: FLdRfVar var_124
  loc_CBE67A: FLdRfVar var_8C
  loc_CBE67D: FLdPr Me
  loc_CBE680: MemLdRfVar from_stack_1.global_56
  loc_CBE683: NewIfNullPr clsservdeva
  loc_CBE686: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE68B: FLdPr var_8C
  loc_CBE68E:  = Me.Fields
  loc_CBE693: FLdPr var_124
  loc_CBE696: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE69B: FLdPr var_128
  loc_CBE69E:  = Me.Value
  loc_CBE6A3: FLdRfVar var_9C
  loc_CBE6A6: CStrVarTmp
  loc_CBE6A7: CVarStr var_F0
  loc_CBE6AA: PopAdLdVar
  loc_CBE6AB: FLdPr Me
  loc_CBE6AE: VCallAd Control_ID_ServDevaFlex
  loc_CBE6B1: FStAdFunc var_14C
  loc_CBE6B4: FLdPr var_14C
  loc_CBE6B7: LateIdCallSt
  loc_CBE6BF: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBE6CA: FFreeVar var_9C = ""
  loc_CBE6D1: FLdPr Me
  loc_CBE6D4: MemLdI2 global_68
  loc_CBE6D7: CI4UI1
  loc_CBE6D8: CVarI4
  loc_CBE6DC: PopAdLdVar
  loc_CBE6DD: LitVarI4
  loc_CBE6E5: PopAdLdVar
  loc_CBE6E6: FLdPr Me
  loc_CBE6E9: VCallAd Control_ID_ServDevaFlex
  loc_CBE6EC: FStAdFunc var_8C
  loc_CBE6EF: FLdPr var_8C
  loc_CBE6F2: LateIdCallLdVar
  loc_CBE6FC: CStrVarTmp
  loc_CBE6FD: FStStrNoPop var_F4
  loc_CBE700: LitStr "0"
  loc_CBE703: EqStr
  loc_CBE705: FFree1Str var_F4
  loc_CBE708: FFree1Ad var_8C
  loc_CBE70B: FFree1Var var_9C = ""
  loc_CBE70E: BranchF loc_CBE7AA
  loc_CBE711: FLdRfVar var_128
  loc_CBE714: LitVarStr var_B0, "ImpoSeca"
  loc_CBE719: PopAdLdVar
  loc_CBE71A: FLdRfVar var_124
  loc_CBE71D: FLdRfVar var_8C
  loc_CBE720: FLdPr Me
  loc_CBE723: MemLdRfVar from_stack_1.global_56
  loc_CBE726: NewIfNullPr clsservdeva
  loc_CBE729: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBE72E: FLdPr var_8C
  loc_CBE731:  = Me.Fields
  loc_CBE736: FLdPr var_124
  loc_CBE739: from_stack_2 = Me.Item(from_stack_1)
  loc_CBE73E: FLdPr Me
  loc_CBE741: MemLdI2 global_68
  loc_CBE744: CI4UI1
  loc_CBE745: CVarI4
  loc_CBE749: PopAdLdVar
  loc_CBE74A: LitVarI4
  loc_CBE752: PopAdLdVar
  loc_CBE753: LitI4 1
  loc_CBE758: LitI4 1
  loc_CBE75D: LitVarStr var_C0, "0.00"
  loc_CBE762: FStVarCopyObj var_F0
  loc_CBE765: FLdRfVar var_F0
  loc_CBE768: FLdZeroAd var_128
  loc_CBE76B: CVarAd
  loc_CBE76F: FLdRfVar var_164
  loc_CBE772: ImpAdCallFPR4  = Format(, )
  loc_CBE777: FLdRfVar var_164
  loc_CBE77A: CStrVarTmp
  loc_CBE77B: CVarStr var_174
  loc_CBE77E: PopAdLdVar
  loc_CBE77F: FLdPr Me
  loc_CBE782: VCallAd Control_ID_ServDevaFlex
  loc_CBE785: FStAdFunc var_14C
  loc_CBE788: FLdPr var_14C
  loc_CBE78B: LateIdCallSt
  loc_CBE793: FFreeAd var_8C = "": var_124 = ""
  loc_CBE79C: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBE7A7: Branch loc_CBE9B6
  loc_CBE7AA: FLdPr Me
  loc_CBE7AD: MemLdI2 global_68
  loc_CBE7B0: CI4UI1
  loc_CBE7B1: CVarI4
  loc_CBE7B5: PopAdLdVar
  loc_CBE7B6: LitVarI4
  loc_CBE7BE: PopAdLdVar
  loc_CBE7BF: FLdPr Me
  loc_CBE7C2: VCallAd Control_ID_ServDevaFlex
  loc_CBE7C5: FStAdFunc var_8C
  loc_CBE7C8: FLdPr var_8C
  loc_CBE7CB: LateIdCallLdVar
  loc_CBE7D5: CStrVarTmp
  loc_CBE7D6: FStStrNoPop var_F4
  loc_CBE7D9: LitStr "1"
  loc_CBE7DC: EqStr
  loc_CBE7DE: FFree1Str var_F4
  loc_CBE7E1: FFree1Ad var_8C
  loc_CBE7E4: FFree1Var var_9C = ""
  loc_CBE7E7: BranchF loc_CBE9B6
  loc_CBE7EA: FLdPr Me
  loc_CBE7ED: MemLdI2 global_68
  loc_CBE7F0: CI4UI1
  loc_CBE7F1: CVarI4
  loc_CBE7F5: PopAdLdVar
  loc_CBE7F6: LitVarI4
  loc_CBE7FE: PopAdLdVar
  loc_CBE7FF: FLdPr Me
  loc_CBE802: VCallAd Control_ID_ServDevaFlex
  loc_CBE805: FStAdFunc var_8C
  loc_CBE808: FLdPr var_8C
  loc_CBE80B: LateIdCallLdVar
  loc_CBE815: CStrVarTmp
  loc_CBE816: CVarStr var_F0
  loc_CBE819: ImpAdCallI2 IsNumeric()
  loc_CBE81E: FLdPr Me
  loc_CBE821: MemLdI2 global_68
  loc_CBE824: CI4UI1
  loc_CBE825: CVarI4
  loc_CBE829: PopAdLdVar
  loc_CBE82A: LitVarI4
  loc_CBE832: PopAdLdVar
  loc_CBE833: FLdPr Me
  loc_CBE836: VCallAd Control_ID_ServDevaFlex
  loc_CBE839: FStAdFunc var_124
  loc_CBE83C: FLdPr var_124
  loc_CBE83F: LateIdCallLdVar
  loc_CBE849: CStrVarTmp
  loc_CBE84A: CVarStr var_174
  loc_CBE84D: ImpAdCallI2 IsNumeric()
  loc_CBE852: AndI4
  loc_CBE853: FFreeAd var_8C = ""
  loc_CBE85A: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBE865: BranchF loc_CBE952
  loc_CBE868: FLdPr Me
  loc_CBE86B: MemLdI2 global_68
  loc_CBE86E: CI4UI1
  loc_CBE86F: CVarI4
  loc_CBE873: PopAdLdVar
  loc_CBE874: LitVarI4
  loc_CBE87C: PopAdLdVar
  loc_CBE87D: FLdPr Me
  loc_CBE880: VCallAd Control_ID_ServDevaFlex
  loc_CBE883: FStAdFunc var_8C
  loc_CBE886: FLdPr var_8C
  loc_CBE889: LateIdCallLdVar
  loc_CBE893: CStrVarTmp
  loc_CBE894: FStStrNoPop var_F4
  loc_CBE897: CR8Str
  loc_CBE899: LitI2_Byte 0
  loc_CBE89B: CR8I2
  loc_CBE89C: EqR4
  loc_CBE89D: FLdPr Me
  loc_CBE8A0: MemLdI2 global_68
  loc_CBE8A3: CI4UI1
  loc_CBE8A4: CVarI4
  loc_CBE8A8: PopAdLdVar
  loc_CBE8A9: LitVarI4
  loc_CBE8B1: PopAdLdVar
  loc_CBE8B2: FLdPr Me
  loc_CBE8B5: VCallAd Control_ID_ServDevaFlex
  loc_CBE8B8: FStAdFunc var_124
  loc_CBE8BB: FLdPr var_124
  loc_CBE8BE: LateIdCallLdVar
  loc_CBE8C8: CStrVarTmp
  loc_CBE8C9: FStStrNoPop var_F8
  loc_CBE8CC: CR8Str
  loc_CBE8CE: LitI2_Byte 0
  loc_CBE8D0: CR8I2
  loc_CBE8D1: EqR4
  loc_CBE8D2: AndI4
  loc_CBE8D3: FFreeStr var_F4 = ""
  loc_CBE8DA: FFreeAd var_8C = ""
  loc_CBE8E1: FFreeVar var_9C = ""
  loc_CBE8E8: BranchF loc_CBE94F
  loc_CBE8EB: FLdPr Me
  loc_CBE8EE: MemLdI2 global_68
  loc_CBE8F1: CI4UI1
  loc_CBE8F2: CVarI4
  loc_CBE8F6: PopAdLdVar
  loc_CBE8F7: LitVarI4
  loc_CBE8FF: PopAdLdVar
  loc_CBE900: LitVarStr var_138, vbNullString
  loc_CBE905: PopAdLdVar
  loc_CBE906: FLdPr Me
  loc_CBE909: VCallAd Control_ID_ServDevaFlex
  loc_CBE90C: FStAdFunc var_8C
  loc_CBE90F: FLdPr var_8C
  loc_CBE912: LateIdCallSt
  loc_CBE91A: FFree1Ad var_8C
  loc_CBE91D: FLdPr Me
  loc_CBE920: MemLdI2 global_68
  loc_CBE923: CI4UI1
  loc_CBE924: CVarI4
  loc_CBE928: PopAdLdVar
  loc_CBE929: LitVarI4
  loc_CBE931: PopAdLdVar
  loc_CBE932: LitVarStr var_138, vbNullString
  loc_CBE937: PopAdLdVar
  loc_CBE938: FLdPr Me
  loc_CBE93B: VCallAd Control_ID_ServDevaFlex
  loc_CBE93E: FStAdFunc var_8C
  loc_CBE941: FLdPr var_8C
  loc_CBE944: LateIdCallSt
  loc_CBE94C: FFree1Ad var_8C
  loc_CBE94F: Branch loc_CBE9B6
  loc_CBE952: FLdPr Me
  loc_CBE955: MemLdI2 global_68
  loc_CBE958: CI4UI1
  loc_CBE959: CVarI4
  loc_CBE95D: PopAdLdVar
  loc_CBE95E: LitVarI4
  loc_CBE966: PopAdLdVar
  loc_CBE967: LitVarStr var_138, vbNullString
  loc_CBE96C: PopAdLdVar
  loc_CBE96D: FLdPr Me
  loc_CBE970: VCallAd Control_ID_ServDevaFlex
  loc_CBE973: FStAdFunc var_8C
  loc_CBE976: FLdPr var_8C
  loc_CBE979: LateIdCallSt
  loc_CBE981: FFree1Ad var_8C
  loc_CBE984: FLdPr Me
  loc_CBE987: MemLdI2 global_68
  loc_CBE98A: CI4UI1
  loc_CBE98B: CVarI4
  loc_CBE98F: PopAdLdVar
  loc_CBE990: LitVarI4
  loc_CBE998: PopAdLdVar
  loc_CBE999: LitVarStr var_138, vbNullString
  loc_CBE99E: PopAdLdVar
  loc_CBE99F: FLdPr Me
  loc_CBE9A2: VCallAd Control_ID_ServDevaFlex
  loc_CBE9A5: FStAdFunc var_8C
  loc_CBE9A8: FLdPr var_8C
  loc_CBE9AB: LateIdCallSt
  loc_CBE9B3: FFree1Ad var_8C
  loc_CBE9B6: FLdPr Me
  loc_CBE9B9: MemLdI2 global_68
  loc_CBE9BC: CI4UI1
  loc_CBE9BD: CVarI4
  loc_CBE9C1: PopAdLdVar
  loc_CBE9C2: LitVarI4
  loc_CBE9CA: PopAdLdVar
  loc_CBE9CB: FLdPr Me
  loc_CBE9CE: VCallAd Control_ID_ServDevaFlex
  loc_CBE9D1: FStAdFunc var_8C
  loc_CBE9D4: FLdPr var_8C
  loc_CBE9D7: LateIdCallLdVar
  loc_CBE9E1: CStrVarTmp
  loc_CBE9E2: CVarStr var_F0
  loc_CBE9E5: ImpAdCallI2 IsNumeric()
  loc_CBE9EA: FLdPr Me
  loc_CBE9ED: MemLdI2 global_68
  loc_CBE9F0: CI4UI1
  loc_CBE9F1: CVarI4
  loc_CBE9F5: PopAdLdVar
  loc_CBE9F6: LitVarI4
  loc_CBE9FE: PopAdLdVar
  loc_CBE9FF: FLdPr Me
  loc_CBEA02: VCallAd Control_ID_ServDevaFlex
  loc_CBEA05: FStAdFunc var_124
  loc_CBEA08: FLdPr var_124
  loc_CBEA0B: LateIdCallLdVar
  loc_CBEA15: CStrVarTmp
  loc_CBEA16: CVarStr var_174
  loc_CBEA19: ImpAdCallI2 IsNumeric()
  loc_CBEA1E: AndI4
  loc_CBEA1F: FFreeAd var_8C = ""
  loc_CBEA26: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBEA31: BranchF loc_CBEB1C
  loc_CBEA34: FLdPr Me
  loc_CBEA37: MemLdI2 global_68
  loc_CBEA3A: CI4UI1
  loc_CBEA3B: CVarI4
  loc_CBEA3F: PopAdLdVar
  loc_CBEA40: LitVarI4
  loc_CBEA48: PopAdLdVar
  loc_CBEA49: FLdPr Me
  loc_CBEA4C: VCallAd Control_ID_ServDevaFlex
  loc_CBEA4F: FStAdFunc var_8C
  loc_CBEA52: FLdPr var_8C
  loc_CBEA55: LateIdCallLdVar
  loc_CBEA5F: PopAd
  loc_CBEA61: FLdPr Me
  loc_CBEA64: MemLdI2 global_68
  loc_CBEA67: CI4UI1
  loc_CBEA68: CVarI4
  loc_CBEA6C: PopAdLdVar
  loc_CBEA6D: LitVarI4
  loc_CBEA75: PopAdLdVar
  loc_CBEA76: FLdPr Me
  loc_CBEA79: VCallAd Control_ID_ServDevaFlex
  loc_CBEA7C: FStAdFunc var_124
  loc_CBEA7F: FLdPr var_124
  loc_CBEA82: LateIdCallLdVar
  loc_CBEA8C: PopAd
  loc_CBEA8E: FLdPr Me
  loc_CBEA91: MemLdI2 global_68
  loc_CBEA94: CI4UI1
  loc_CBEA95: CVarI4
  loc_CBEA99: PopAdLdVar
  loc_CBEA9A: LitVarI4
  loc_CBEAA2: PopAdLdVar
  loc_CBEAA3: LitI4 1
  loc_CBEAA8: LitI4 1
  loc_CBEAAD: LitVarStr var_1B4, "0.00"
  loc_CBEAB2: FStVarCopyObj var_174
  loc_CBEAB5: FLdRfVar var_174
  loc_CBEAB8: FLdRfVar var_9C
  loc_CBEABB: CStrVarTmp
  loc_CBEABC: FStStrNoPop var_F4
  loc_CBEABF: CR8Str
  loc_CBEAC1: FLdRfVar var_F0
  loc_CBEAC4: CStrVarTmp
  loc_CBEAC5: FStStrNoPop var_F8
  loc_CBEAC8: CR8Str
  loc_CBEACA: MulR8
  loc_CBEACB: FLdPr Me
  loc_CBEACE: MemLdFPR8 global_80
  loc_CBEAD1: AddR8
  loc_CBEAD2: CVarR8
  loc_CBEAD6: FLdRfVar var_1C4
  loc_CBEAD9: ImpAdCallFPR4  = Format(, )
  loc_CBEADE: FLdRfVar var_1C4
  loc_CBEAE1: CStrVarTmp
  loc_CBEAE2: CVarStr var_214
  loc_CBEAE5: PopAdLdVar
  loc_CBEAE6: FLdPr Me
  loc_CBEAE9: VCallAd Control_ID_ServDevaFlex
  loc_CBEAEC: FStAdFunc var_128
  loc_CBEAEF: FLdPr var_128
  loc_CBEAF2: LateIdCallSt
  loc_CBEAFA: FFreeStr var_F4 = ""
  loc_CBEB01: FFreeAd var_8C = "": var_124 = ""
  loc_CBEB0A: FFreeVar var_9C = "": var_F0 = "": var_164 = "": var_174 = "": var_1C4 = ""
  loc_CBEB19: Branch loc_CBEC03
  loc_CBEB1C: FLdPr Me
  loc_CBEB1F: MemLdI2 global_68
  loc_CBEB22: CI4UI1
  loc_CBEB23: CVarI4
  loc_CBEB27: PopAdLdVar
  loc_CBEB28: LitVarI4
  loc_CBEB30: PopAdLdVar
  loc_CBEB31: FLdPr Me
  loc_CBEB34: VCallAd Control_ID_ServDevaFlex
  loc_CBEB37: FStAdFunc var_8C
  loc_CBEB3A: FLdPr var_8C
  loc_CBEB3D: LateIdCallLdVar
  loc_CBEB47: CStrVarTmp
  loc_CBEB48: CVarStr var_F0
  loc_CBEB4B: ImpAdCallI2 IsNumeric()
  loc_CBEB50: FFree1Ad var_8C
  loc_CBEB53: FFreeVar var_9C = ""
  loc_CBEB5A: BranchF loc_CBEC03
  loc_CBEB5D: FLdPr Me
  loc_CBEB60: MemLdI2 global_68
  loc_CBEB63: CI4UI1
  loc_CBEB64: CVarI4
  loc_CBEB68: PopAdLdVar
  loc_CBEB69: LitVarI4
  loc_CBEB71: PopAdLdVar
  loc_CBEB72: FLdPr Me
  loc_CBEB75: VCallAd Control_ID_ServDevaFlex
  loc_CBEB78: FStAdFunc var_8C
  loc_CBEB7B: FLdPr var_8C
  loc_CBEB7E: LateIdCallLdVar
  loc_CBEB88: PopAd
  loc_CBEB8A: FLdPr Me
  loc_CBEB8D: MemLdI2 global_68
  loc_CBEB90: CI4UI1
  loc_CBEB91: CVarI4
  loc_CBEB95: PopAdLdVar
  loc_CBEB96: LitVarI4
  loc_CBEB9E: PopAdLdVar
  loc_CBEB9F: LitI4 1
  loc_CBEBA4: LitI4 1
  loc_CBEBA9: LitVarStr var_148, "0.00"
  loc_CBEBAE: FStVarCopyObj var_164
  loc_CBEBB1: FLdRfVar var_164
  loc_CBEBB4: FLdRfVar var_9C
  loc_CBEBB7: CStrVarTmp
  loc_CBEBB8: FStStrNoPop var_F4
  loc_CBEBBB: CR8Str
  loc_CBEBBD: FLdPr Me
  loc_CBEBC0: MemLdFPR8 global_80
  loc_CBEBC3: AddR8
  loc_CBEBC4: CVarR8
  loc_CBEBC8: FLdRfVar var_174
  loc_CBEBCB: ImpAdCallFPR4  = Format(, )
  loc_CBEBD0: FLdRfVar var_174
  loc_CBEBD3: CStrVarTmp
  loc_CBEBD4: CVarStr var_1C4
  loc_CBEBD7: PopAdLdVar
  loc_CBEBD8: FLdPr Me
  loc_CBEBDB: VCallAd Control_ID_ServDevaFlex
  loc_CBEBDE: FStAdFunc var_124
  loc_CBEBE1: FLdPr var_124
  loc_CBEBE4: LateIdCallSt
  loc_CBEBEC: FFree1Str var_F4
  loc_CBEBEF: FFreeAd var_8C = ""
  loc_CBEBF6: FFreeVar var_9C = "": var_F0 = "": var_164 = "": var_174 = ""
  loc_CBEC03: FLdPr Me
  loc_CBEC06: MemLdI2 global_68
  loc_CBEC09: CI4UI1
  loc_CBEC0A: CVarI4
  loc_CBEC0E: PopAdLdVar
  loc_CBEC0F: LitVarI4
  loc_CBEC17: PopAdLdVar
  loc_CBEC18: FLdRfVar var_9C
  loc_CBEC1B: FLdRfVar var_128
  loc_CBEC1E: LitVarStr var_B0, "PeriInfo"
  loc_CBEC23: PopAdLdVar
  loc_CBEC24: FLdRfVar var_124
  loc_CBEC27: FLdRfVar var_8C
  loc_CBEC2A: FLdPr Me
  loc_CBEC2D: MemLdRfVar from_stack_1.global_56
  loc_CBEC30: NewIfNullPr clsservdeva
  loc_CBEC33: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBEC38: FLdPr var_8C
  loc_CBEC3B:  = Me.Fields
  loc_CBEC40: FLdPr var_124
  loc_CBEC43: from_stack_2 = Me.Item(from_stack_1)
  loc_CBEC48: FLdPr var_128
  loc_CBEC4B:  = Me.Value
  loc_CBEC50: FLdRfVar var_9C
  loc_CBEC53: CStrVarTmp
  loc_CBEC54: CVarStr var_F0
  loc_CBEC57: PopAdLdVar
  loc_CBEC58: FLdPr Me
  loc_CBEC5B: VCallAd Control_ID_ServDevaFlex
  loc_CBEC5E: FStAdFunc var_14C
  loc_CBEC61: FLdPr var_14C
  loc_CBEC64: LateIdCallSt
  loc_CBEC6C: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBEC77: FFreeVar var_9C = ""
  loc_CBEC7E: FLdPr Me
  loc_CBEC81: MemLdI2 global_68
  loc_CBEC84: CI4UI1
  loc_CBEC85: CVarI4
  loc_CBEC89: PopAdLdVar
  loc_CBEC8A: LitVarI4
  loc_CBEC92: PopAdLdVar
  loc_CBEC93: FLdRfVar var_9C
  loc_CBEC96: FLdRfVar var_128
  loc_CBEC99: LitVarStr var_B0, "CodiConc"
  loc_CBEC9E: PopAdLdVar
  loc_CBEC9F: FLdRfVar var_124
  loc_CBECA2: FLdRfVar var_8C
  loc_CBECA5: FLdPr Me
  loc_CBECA8: MemLdRfVar from_stack_1.global_56
  loc_CBECAB: NewIfNullPr clsservdeva
  loc_CBECAE: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBECB3: FLdPr var_8C
  loc_CBECB6:  = Me.Fields
  loc_CBECBB: FLdPr var_124
  loc_CBECBE: from_stack_2 = Me.Item(from_stack_1)
  loc_CBECC3: FLdPr var_128
  loc_CBECC6:  = Me.Value
  loc_CBECCB: FLdRfVar var_9C
  loc_CBECCE: CStrVarTmp
  loc_CBECCF: CVarStr var_F0
  loc_CBECD2: PopAdLdVar
  loc_CBECD3: FLdPr Me
  loc_CBECD6: VCallAd Control_ID_ServDevaFlex
  loc_CBECD9: FStAdFunc var_14C
  loc_CBECDC: FLdPr var_14C
  loc_CBECDF: LateIdCallSt
  loc_CBECE7: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBECF2: FFreeVar var_9C = ""
  loc_CBECF9: FLdPr Me
  loc_CBECFC: MemLdI2 global_68
  loc_CBECFF: CI4UI1
  loc_CBED00: CVarI4
  loc_CBED04: PopAdLdVar
  loc_CBED05: LitVarI4
  loc_CBED0D: PopAdLdVar
  loc_CBED0E: FLdRfVar var_9C
  loc_CBED11: FLdRfVar var_128
  loc_CBED14: LitVarStr var_B0, "TiafConc"
  loc_CBED19: PopAdLdVar
  loc_CBED1A: FLdRfVar var_124
  loc_CBED1D: FLdRfVar var_8C
  loc_CBED20: FLdPr Me
  loc_CBED23: MemLdRfVar from_stack_1.global_56
  loc_CBED26: NewIfNullPr clsservdeva
  loc_CBED29: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBED2E: FLdPr var_8C
  loc_CBED31:  = Me.Fields
  loc_CBED36: FLdPr var_124
  loc_CBED39: from_stack_2 = Me.Item(from_stack_1)
  loc_CBED3E: FLdPr var_128
  loc_CBED41:  = Me.Value
  loc_CBED46: FLdRfVar var_9C
  loc_CBED49: CStrVarTmp
  loc_CBED4A: CVarStr var_F0
  loc_CBED4D: PopAdLdVar
  loc_CBED4E: FLdPr Me
  loc_CBED51: VCallAd Control_ID_ServDevaFlex
  loc_CBED54: FStAdFunc var_14C
  loc_CBED57: FLdPr var_14C
  loc_CBED5A: LateIdCallSt
  loc_CBED62: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBED6D: FFreeVar var_9C = ""
  loc_CBED74: LitI2_Byte 0
  loc_CBED76: CR8I2
  loc_CBED77: FLdPr Me
  loc_CBED7A: MemStFPR8 global_80
  loc_CBED7D: Branch loc_CBEF30
  loc_CBED80: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CBED83: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBED88: FLdPr Me
  loc_CBED8B: VCallAd Control_ID_ServDevaFlex
  loc_CBED8E: FStAdFunc var_8C
  loc_CBED91: FLdPr var_8C
  loc_CBED94: LateIdCall
  loc_CBED9C: FFree1Ad var_8C
  loc_CBED9F: FLdPr Me
  loc_CBEDA2: MemLdI2 global_68
  loc_CBEDA5: CI4UI1
  loc_CBEDA6: CVarI4
  loc_CBEDAA: PopAdLdVar
  loc_CBEDAB: LitVarI4
  loc_CBEDB3: PopAdLdVar
  loc_CBEDB4: LitVarStr var_138, vbNullString
  loc_CBEDB9: PopAdLdVar
  loc_CBEDBA: FLdPr Me
  loc_CBEDBD: VCallAd Control_ID_ServDevaFlex
  loc_CBEDC0: FStAdFunc var_8C
  loc_CBEDC3: FLdPr var_8C
  loc_CBEDC6: LateIdCallSt
  loc_CBEDCE: FFree1Ad var_8C
  loc_CBEDD1: FLdPr Me
  loc_CBEDD4: MemLdI2 global_68
  loc_CBEDD7: CI4UI1
  loc_CBEDD8: CVarI4
  loc_CBEDDC: PopAdLdVar
  loc_CBEDDD: LitVarI4
  loc_CBEDE5: PopAdLdVar
  loc_CBEDE6: LitVarStr var_138, vbNullString
  loc_CBEDEB: PopAdLdVar
  loc_CBEDEC: FLdPr Me
  loc_CBEDEF: VCallAd Control_ID_ServDevaFlex
  loc_CBEDF2: FStAdFunc var_8C
  loc_CBEDF5: FLdPr var_8C
  loc_CBEDF8: LateIdCallSt
  loc_CBEE00: FFree1Ad var_8C
  loc_CBEE03: FLdPr Me
  loc_CBEE06: MemLdI2 global_68
  loc_CBEE09: CI4UI1
  loc_CBEE0A: CVarI4
  loc_CBEE0E: PopAdLdVar
  loc_CBEE0F: LitVarI4
  loc_CBEE17: PopAdLdVar
  loc_CBEE18: LitVarStr var_138, vbNullString
  loc_CBEE1D: PopAdLdVar
  loc_CBEE1E: FLdPr Me
  loc_CBEE21: VCallAd Control_ID_ServDevaFlex
  loc_CBEE24: FStAdFunc var_8C
  loc_CBEE27: FLdPr var_8C
  loc_CBEE2A: LateIdCallSt
  loc_CBEE32: FFree1Ad var_8C
  loc_CBEE35: FLdPr Me
  loc_CBEE38: MemLdI2 global_68
  loc_CBEE3B: CI4UI1
  loc_CBEE3C: CVarI4
  loc_CBEE40: PopAdLdVar
  loc_CBEE41: LitVarI4
  loc_CBEE49: PopAdLdVar
  loc_CBEE4A: LitVarStr var_138, vbNullString
  loc_CBEE4F: PopAdLdVar
  loc_CBEE50: FLdPr Me
  loc_CBEE53: VCallAd Control_ID_ServDevaFlex
  loc_CBEE56: FStAdFunc var_8C
  loc_CBEE59: FLdPr var_8C
  loc_CBEE5C: LateIdCallSt
  loc_CBEE64: FFree1Ad var_8C
  loc_CBEE67: FLdPr Me
  loc_CBEE6A: MemLdI2 global_68
  loc_CBEE6D: CI4UI1
  loc_CBEE6E: CVarI4
  loc_CBEE72: PopAdLdVar
  loc_CBEE73: LitVarI4
  loc_CBEE7B: PopAdLdVar
  loc_CBEE7C: LitVarStr var_138, vbNullString
  loc_CBEE81: PopAdLdVar
  loc_CBEE82: FLdPr Me
  loc_CBEE85: VCallAd Control_ID_ServDevaFlex
  loc_CBEE88: FStAdFunc var_8C
  loc_CBEE8B: FLdPr var_8C
  loc_CBEE8E: LateIdCallSt
  loc_CBEE96: FFree1Ad var_8C
  loc_CBEE99: FLdPr Me
  loc_CBEE9C: MemLdI2 global_68
  loc_CBEE9F: CI4UI1
  loc_CBEEA0: CVarI4
  loc_CBEEA4: PopAdLdVar
  loc_CBEEA5: LitVarI4
  loc_CBEEAD: PopAdLdVar
  loc_CBEEAE: LitVarStr var_138, vbNullString
  loc_CBEEB3: PopAdLdVar
  loc_CBEEB4: FLdPr Me
  loc_CBEEB7: VCallAd Control_ID_ServDevaFlex
  loc_CBEEBA: FStAdFunc var_8C
  loc_CBEEBD: FLdPr var_8C
  loc_CBEEC0: LateIdCallSt
  loc_CBEEC8: FFree1Ad var_8C
  loc_CBEECB: FLdPr Me
  loc_CBEECE: MemLdI2 global_68
  loc_CBEED1: CI4UI1
  loc_CBEED2: CVarI4
  loc_CBEED6: PopAdLdVar
  loc_CBEED7: LitVarI4
  loc_CBEEDF: PopAdLdVar
  loc_CBEEE0: LitVarStr var_138, vbNullString
  loc_CBEEE5: PopAdLdVar
  loc_CBEEE6: FLdPr Me
  loc_CBEEE9: VCallAd Control_ID_ServDevaFlex
  loc_CBEEEC: FStAdFunc var_8C
  loc_CBEEEF: FLdPr var_8C
  loc_CBEEF2: LateIdCallSt
  loc_CBEEFA: FFree1Ad var_8C
  loc_CBEEFD: FLdPr Me
  loc_CBEF00: MemLdI2 global_68
  loc_CBEF03: CI4UI1
  loc_CBEF04: CVarI4
  loc_CBEF08: PopAdLdVar
  loc_CBEF09: LitVarI4
  loc_CBEF11: PopAdLdVar
  loc_CBEF12: LitVarStr var_138, vbNullString
  loc_CBEF17: PopAdLdVar
  loc_CBEF18: FLdPr Me
  loc_CBEF1B: VCallAd Control_ID_ServDevaFlex
  loc_CBEF1E: FStAdFunc var_8C
  loc_CBEF21: FLdPr var_8C
  loc_CBEF24: LateIdCallSt
  loc_CBEF2C: FFree1Ad var_8C
  loc_CBEF2F: ExitProcHresult
  loc_CBEF30: ImpAdLdUI1
  loc_CBEF34: CI2UI1
  loc_CBEF36: LitI2_Byte 5
  loc_CBEF38: EqI2
  loc_CBEF39: BranchF loc_CBFCD4
  loc_CBEF3C: LitStr "SELECT DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_CBEF3F: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_CBEF42: ConcatStr
  loc_CBEF43: FStStrNoPop var_F4
  loc_CBEF46: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_CBEF49: ConcatStr
  loc_CBEF4A: FStStrNoPop var_F8
  loc_CBEF4D: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_CBEF50: ConcatStr
  loc_CBEF51: FStStrNoPop var_FC
  loc_CBEF54: LitStr " WHERE servdeva.PeriOrde = "
  loc_CBEF57: ConcatStr
  loc_CBEF58: FStStrNoPop var_100
  loc_CBEF5B: ImpAdLdI2 MemVar_D93036
  loc_CBEF5E: CStrUI1
  loc_CBEF60: FStStrNoPop var_104
  loc_CBEF63: ConcatStr
  loc_CBEF64: FStStrNoPop var_108
  loc_CBEF67: LitStr " AND CodiSede = "
  loc_CBEF6A: ConcatStr
  loc_CBEF6B: FStStrNoPop var_10C
  loc_CBEF6E: FLdPr Me
  loc_CBEF71: MemLdI2 global_68
  loc_CBEF74: CI4UI1
  loc_CBEF75: CVarI4
  loc_CBEF79: PopAdLdVar
  loc_CBEF7A: LitVarI4
  loc_CBEF82: PopAdLdVar
  loc_CBEF83: FLdPr Me
  loc_CBEF86: VCallAd Control_ID_ServDevaFlex
  loc_CBEF89: FStAdFunc var_8C
  loc_CBEF8C: FLdPr var_8C
  loc_CBEF8F: LateIdCallLdVar
  loc_CBEF99: CStrVarTmp
  loc_CBEF9A: FStStrNoPop var_110
  loc_CBEF9D: ConcatStr
  loc_CBEF9E: FStStrNoPop var_114
  loc_CBEFA1: LitStr " AND CtctSede = '1'"
  loc_CBEFA4: ConcatStr
  loc_CBEFA5: FStStrNoPop var_118
  loc_CBEFA8: LitStr " AND TranSede = '1'"
  loc_CBEFAB: ConcatStr
  loc_CBEFAC: FStStrNoPop var_11C
  loc_CBEFAF: FLdPr Me
  loc_CBEFB2: MemLdRfVar from_stack_1.global_56
  loc_CBEFB5: NewIfNullPr clsservdeva
  loc_CBEFB8: Call clsservdeva.RedefineRS(from_stack_1v)
  loc_CBEFBD: FFreeStr var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_CBEFD6: FFree1Ad var_8C
  loc_CBEFD9: FFree1Var var_9C = ""
  loc_CBEFDC: FLdRfVar var_120
  loc_CBEFDF: FLdRfVar var_8C
  loc_CBEFE2: FLdPr Me
  loc_CBEFE5: MemLdRfVar from_stack_1.global_56
  loc_CBEFE8: NewIfNullPr clsservdeva
  loc_CBEFEB: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBEFF0: FLdPr var_8C
  loc_CBEFF3:  = Me.RecordCount
  loc_CBEFF8: ILdRf var_120
  loc_CBEFFB: LitI4 0
  loc_CBF000: GtI4
  loc_CBF001: FFree1Ad var_8C
  loc_CBF004: BranchF loc_CBFB24
  loc_CBF007: FLdRfVar var_9C
  loc_CBF00A: FLdRfVar var_128
  loc_CBF00D: LitVarStr var_B0, "PeriInfo"
  loc_CBF012: PopAdLdVar
  loc_CBF013: FLdRfVar var_124
  loc_CBF016: FLdRfVar var_8C
  loc_CBF019: FLdPr Me
  loc_CBF01C: MemLdRfVar from_stack_1.global_56
  loc_CBF01F: NewIfNullPr clsservdeva
  loc_CBF022: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF027: FLdPr var_8C
  loc_CBF02A:  = Me.Fields
  loc_CBF02F: FLdPr var_124
  loc_CBF032: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF037: FLdPr var_128
  loc_CBF03A:  = Me.Value
  loc_CBF03F: FLdRfVar var_9C
  loc_CBF042: FnCIntVar
  loc_CBF044: ImpAdLdI2 MemVar_D93034
  loc_CBF047: NeI2
  loc_CBF048: FFreeAd var_8C = "": var_124 = ""
  loc_CBF051: FFree1Var var_9C = ""
  loc_CBF054: BranchF loc_CBF20A
  loc_CBF057: LitStr "El periodo del concepto que tiene asociado el servicio no es correcto, verifique..."
  loc_CBF05A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBF05F: FLdPr Me
  loc_CBF062: VCallAd Control_ID_ServDevaFlex
  loc_CBF065: FStAdFunc var_8C
  loc_CBF068: FLdPr var_8C
  loc_CBF06B: LateIdCall
  loc_CBF073: FFree1Ad var_8C
  loc_CBF076: FLdPr Me
  loc_CBF079: MemLdI2 global_68
  loc_CBF07C: CI4UI1
  loc_CBF07D: CVarI4
  loc_CBF081: PopAdLdVar
  loc_CBF082: LitVarI4
  loc_CBF08A: PopAdLdVar
  loc_CBF08B: LitVarStr var_138, vbNullString
  loc_CBF090: PopAdLdVar
  loc_CBF091: FLdPr Me
  loc_CBF094: VCallAd Control_ID_ServDevaFlex
  loc_CBF097: FStAdFunc var_8C
  loc_CBF09A: FLdPr var_8C
  loc_CBF09D: LateIdCallSt
  loc_CBF0A5: FFree1Ad var_8C
  loc_CBF0A8: FLdPr Me
  loc_CBF0AB: MemLdI2 global_68
  loc_CBF0AE: CI4UI1
  loc_CBF0AF: CVarI4
  loc_CBF0B3: PopAdLdVar
  loc_CBF0B4: LitVarI4
  loc_CBF0BC: PopAdLdVar
  loc_CBF0BD: LitVarStr var_138, vbNullString
  loc_CBF0C2: PopAdLdVar
  loc_CBF0C3: FLdPr Me
  loc_CBF0C6: VCallAd Control_ID_ServDevaFlex
  loc_CBF0C9: FStAdFunc var_8C
  loc_CBF0CC: FLdPr var_8C
  loc_CBF0CF: LateIdCallSt
  loc_CBF0D7: FFree1Ad var_8C
  loc_CBF0DA: FLdPr Me
  loc_CBF0DD: MemLdI2 global_68
  loc_CBF0E0: CI4UI1
  loc_CBF0E1: CVarI4
  loc_CBF0E5: PopAdLdVar
  loc_CBF0E6: LitVarI4
  loc_CBF0EE: PopAdLdVar
  loc_CBF0EF: LitVarStr var_138, vbNullString
  loc_CBF0F4: PopAdLdVar
  loc_CBF0F5: FLdPr Me
  loc_CBF0F8: VCallAd Control_ID_ServDevaFlex
  loc_CBF0FB: FStAdFunc var_8C
  loc_CBF0FE: FLdPr var_8C
  loc_CBF101: LateIdCallSt
  loc_CBF109: FFree1Ad var_8C
  loc_CBF10C: FLdPr Me
  loc_CBF10F: MemLdI2 global_68
  loc_CBF112: CI4UI1
  loc_CBF113: CVarI4
  loc_CBF117: PopAdLdVar
  loc_CBF118: LitVarI4
  loc_CBF120: PopAdLdVar
  loc_CBF121: LitVarStr var_138, vbNullString
  loc_CBF126: PopAdLdVar
  loc_CBF127: FLdPr Me
  loc_CBF12A: VCallAd Control_ID_ServDevaFlex
  loc_CBF12D: FStAdFunc var_8C
  loc_CBF130: FLdPr var_8C
  loc_CBF133: LateIdCallSt
  loc_CBF13B: FFree1Ad var_8C
  loc_CBF13E: FLdPr Me
  loc_CBF141: MemLdI2 global_68
  loc_CBF144: CI4UI1
  loc_CBF145: CVarI4
  loc_CBF149: PopAdLdVar
  loc_CBF14A: LitVarI4
  loc_CBF152: PopAdLdVar
  loc_CBF153: LitVarStr var_138, vbNullString
  loc_CBF158: PopAdLdVar
  loc_CBF159: FLdPr Me
  loc_CBF15C: VCallAd Control_ID_ServDevaFlex
  loc_CBF15F: FStAdFunc var_8C
  loc_CBF162: FLdPr var_8C
  loc_CBF165: LateIdCallSt
  loc_CBF16D: FFree1Ad var_8C
  loc_CBF170: FLdPr Me
  loc_CBF173: MemLdI2 global_68
  loc_CBF176: CI4UI1
  loc_CBF177: CVarI4
  loc_CBF17B: PopAdLdVar
  loc_CBF17C: LitVarI4
  loc_CBF184: PopAdLdVar
  loc_CBF185: LitVarStr var_138, vbNullString
  loc_CBF18A: PopAdLdVar
  loc_CBF18B: FLdPr Me
  loc_CBF18E: VCallAd Control_ID_ServDevaFlex
  loc_CBF191: FStAdFunc var_8C
  loc_CBF194: FLdPr var_8C
  loc_CBF197: LateIdCallSt
  loc_CBF19F: FFree1Ad var_8C
  loc_CBF1A2: FLdPr Me
  loc_CBF1A5: MemLdI2 global_68
  loc_CBF1A8: CI4UI1
  loc_CBF1A9: CVarI4
  loc_CBF1AD: PopAdLdVar
  loc_CBF1AE: LitVarI4
  loc_CBF1B6: PopAdLdVar
  loc_CBF1B7: LitVarStr var_138, vbNullString
  loc_CBF1BC: PopAdLdVar
  loc_CBF1BD: FLdPr Me
  loc_CBF1C0: VCallAd Control_ID_ServDevaFlex
  loc_CBF1C3: FStAdFunc var_8C
  loc_CBF1C6: FLdPr var_8C
  loc_CBF1C9: LateIdCallSt
  loc_CBF1D1: FFree1Ad var_8C
  loc_CBF1D4: FLdPr Me
  loc_CBF1D7: MemLdI2 global_68
  loc_CBF1DA: CI4UI1
  loc_CBF1DB: CVarI4
  loc_CBF1DF: PopAdLdVar
  loc_CBF1E0: LitVarI4
  loc_CBF1E8: PopAdLdVar
  loc_CBF1E9: LitVarStr var_138, vbNullString
  loc_CBF1EE: PopAdLdVar
  loc_CBF1EF: FLdPr Me
  loc_CBF1F2: VCallAd Control_ID_ServDevaFlex
  loc_CBF1F5: FStAdFunc var_8C
  loc_CBF1F8: FLdPr var_8C
  loc_CBF1FB: LateIdCallSt
  loc_CBF203: FFree1Ad var_8C
  loc_CBF206: ExitProcHresult
  loc_CBF207: Branch loc_CBFB21
  loc_CBF20A: FLdRfVar var_9C
  loc_CBF20D: FLdRfVar var_128
  loc_CBF210: LitVarStr var_B0, "PeriInfo"
  loc_CBF215: PopAdLdVar
  loc_CBF216: FLdRfVar var_124
  loc_CBF219: FLdRfVar var_8C
  loc_CBF21C: FLdPr Me
  loc_CBF21F: MemLdRfVar from_stack_1.global_56
  loc_CBF222: NewIfNullPr clsservdeva
  loc_CBF225: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF22A: FLdPr var_8C
  loc_CBF22D:  = Me.Fields
  loc_CBF232: FLdPr var_124
  loc_CBF235: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF23A: FLdPr var_128
  loc_CBF23D:  = Me.Value
  loc_CBF242: FLdRfVar var_F0
  loc_CBF245: FLdRfVar var_154
  loc_CBF248: LitVarStr var_C0, "CodiConc"
  loc_CBF24D: PopAdLdVar
  loc_CBF24E: FLdRfVar var_150
  loc_CBF251: FLdRfVar var_14C
  loc_CBF254: FLdPr Me
  loc_CBF257: MemLdRfVar from_stack_1.global_56
  loc_CBF25A: NewIfNullPr clsservdeva
  loc_CBF25D: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF262: FLdPr var_14C
  loc_CBF265:  = Me.Fields
  loc_CBF26A: FLdPr var_150
  loc_CBF26D: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF272: FLdPr var_154
  loc_CBF275:  = Me.Value
  loc_CBF27A: FLdRfVar var_F0
  loc_CBF27D: CStrVarTmp
  loc_CBF27E: FStStrNoPop var_F4
  loc_CBF281: FLdRfVar var_9C
  loc_CBF284: CI2Var
  loc_CBF285: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CBF28A: FStStrNoPop var_F8
  loc_CBF28D: LitStr vbNullString
  loc_CBF290: EqStr
  loc_CBF292: FFreeStr var_F4 = ""
  loc_CBF299: FFreeAd var_8C = "": var_124 = "": var_14C = "": var_150 = "": var_128 = ""
  loc_CBF2A8: FFreeVar var_9C = ""
  loc_CBF2AF: BranchF loc_CBF321
  loc_CBF2B2: LitVarStr var_C0, "El recurso: "
  loc_CBF2B7: FLdRfVar var_9C
  loc_CBF2BA: FLdRfVar var_128
  loc_CBF2BD: LitVarStr var_B0, "CodiConc"
  loc_CBF2C2: PopAdLdVar
  loc_CBF2C3: FLdRfVar var_124
  loc_CBF2C6: FLdRfVar var_8C
  loc_CBF2C9: FLdPr Me
  loc_CBF2CC: MemLdRfVar from_stack_1.global_56
  loc_CBF2CF: NewIfNullPr clsservdeva
  loc_CBF2D2: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF2D7: FLdPr var_8C
  loc_CBF2DA:  = Me.Fields
  loc_CBF2DF: FLdPr var_124
  loc_CBF2E2: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF2E7: FLdPr var_128
  loc_CBF2EA:  = Me.Value
  loc_CBF2EF: FLdRfVar var_9C
  loc_CBF2F2: ConcatVar var_F0
  loc_CBF2F6: LitVarStr var_D0, " No tiene asociado ninguna cuenta de ingresos. No se emite el boleto."
  loc_CBF2FB: ConcatVar var_164
  loc_CBF2FF: CStrVarVal var_F4
  loc_CBF303: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBF308: FFree1Str var_F4
  loc_CBF30B: FFreeAd var_8C = "": var_124 = ""
  loc_CBF314: FFreeVar var_9C = "": var_F0 = ""
  loc_CBF31D: ExitProcHresult
  loc_CBF31E: Branch loc_CBFB21
  loc_CBF321: FLdRfVar var_9C
  loc_CBF324: FLdRfVar var_128
  loc_CBF327: LitVarStr var_B0, "TiafConc"
  loc_CBF32C: PopAdLdVar
  loc_CBF32D: FLdRfVar var_124
  loc_CBF330: FLdRfVar var_8C
  loc_CBF333: FLdPr Me
  loc_CBF336: MemLdRfVar from_stack_1.global_56
  loc_CBF339: NewIfNullPr clsservdeva
  loc_CBF33C: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF341: FLdPr var_8C
  loc_CBF344:  = Me.Fields
  loc_CBF349: FLdPr var_124
  loc_CBF34C: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF351: FLdPr var_128
  loc_CBF354:  = Me.Value
  loc_CBF359: FLdRfVar var_9C
  loc_CBF35C: LitVarI2 var_C0, 0
  loc_CBF361: HardType
  loc_CBF362: EqVarBool
  loc_CBF364: FFreeAd var_8C = "": var_124 = ""
  loc_CBF36D: FFree1Var var_9C = ""
  loc_CBF370: BranchF loc_CBF37F
  loc_CBF373: LitStr "El concepto no tiene ningún tipo de movimiento. Verifique..."
  loc_CBF376: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBF37B: ExitProcHresult
  loc_CBF37C: Branch loc_CBFB21
  loc_CBF37F: FLdPr Me
  loc_CBF382: MemLdI2 global_68
  loc_CBF385: CI4UI1
  loc_CBF386: CVarI4
  loc_CBF38A: PopAdLdVar
  loc_CBF38B: LitVarI4
  loc_CBF393: PopAdLdVar
  loc_CBF394: FLdRfVar var_9C
  loc_CBF397: FLdRfVar var_128
  loc_CBF39A: LitVarStr var_B0, "VariSede"
  loc_CBF39F: PopAdLdVar
  loc_CBF3A0: FLdRfVar var_124
  loc_CBF3A3: FLdRfVar var_8C
  loc_CBF3A6: FLdPr Me
  loc_CBF3A9: MemLdRfVar from_stack_1.global_56
  loc_CBF3AC: NewIfNullPr clsservdeva
  loc_CBF3AF: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF3B4: FLdPr var_8C
  loc_CBF3B7:  = Me.Fields
  loc_CBF3BC: FLdPr var_124
  loc_CBF3BF: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF3C4: FLdPr var_128
  loc_CBF3C7:  = Me.Value
  loc_CBF3CC: FLdRfVar var_9C
  loc_CBF3CF: CStrVarTmp
  loc_CBF3D0: CVarStr var_F0
  loc_CBF3D3: PopAdLdVar
  loc_CBF3D4: FLdPr Me
  loc_CBF3D7: VCallAd Control_ID_ServDevaFlex
  loc_CBF3DA: FStAdFunc var_14C
  loc_CBF3DD: FLdPr var_14C
  loc_CBF3E0: LateIdCallSt
  loc_CBF3E8: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBF3F3: FFreeVar var_9C = ""
  loc_CBF3FA: FLdPr Me
  loc_CBF3FD: MemLdI2 global_68
  loc_CBF400: CI4UI1
  loc_CBF401: CVarI4
  loc_CBF405: PopAdLdVar
  loc_CBF406: LitVarI4
  loc_CBF40E: PopAdLdVar
  loc_CBF40F: FLdRfVar var_9C
  loc_CBF412: FLdRfVar var_128
  loc_CBF415: LitVarStr var_B0, "DetaSede"
  loc_CBF41A: PopAdLdVar
  loc_CBF41B: FLdRfVar var_124
  loc_CBF41E: FLdRfVar var_8C
  loc_CBF421: FLdPr Me
  loc_CBF424: MemLdRfVar from_stack_1.global_56
  loc_CBF427: NewIfNullPr clsservdeva
  loc_CBF42A: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF42F: FLdPr var_8C
  loc_CBF432:  = Me.Fields
  loc_CBF437: FLdPr var_124
  loc_CBF43A: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF43F: FLdPr var_128
  loc_CBF442:  = Me.Value
  loc_CBF447: FLdRfVar var_9C
  loc_CBF44A: CStrVarTmp
  loc_CBF44B: CVarStr var_F0
  loc_CBF44E: PopAdLdVar
  loc_CBF44F: FLdPr Me
  loc_CBF452: VCallAd Control_ID_ServDevaFlex
  loc_CBF455: FStAdFunc var_14C
  loc_CBF458: FLdPr var_14C
  loc_CBF45B: LateIdCallSt
  loc_CBF463: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBF46E: FFreeVar var_9C = ""
  loc_CBF475: FLdPr Me
  loc_CBF478: MemLdI2 global_68
  loc_CBF47B: CI4UI1
  loc_CBF47C: CVarI4
  loc_CBF480: PopAdLdVar
  loc_CBF481: LitVarI4
  loc_CBF489: PopAdLdVar
  loc_CBF48A: FLdPr Me
  loc_CBF48D: VCallAd Control_ID_ServDevaFlex
  loc_CBF490: FStAdFunc var_8C
  loc_CBF493: FLdPr var_8C
  loc_CBF496: LateIdCallLdVar
  loc_CBF4A0: CStrVarTmp
  loc_CBF4A1: FStStrNoPop var_F4
  loc_CBF4A4: LitStr "0"
  loc_CBF4A7: EqStr
  loc_CBF4A9: FFree1Str var_F4
  loc_CBF4AC: FFree1Ad var_8C
  loc_CBF4AF: FFree1Var var_9C = ""
  loc_CBF4B2: BranchF loc_CBF54E
  loc_CBF4B5: FLdRfVar var_128
  loc_CBF4B8: LitVarStr var_B0, "ImpoSede"
  loc_CBF4BD: PopAdLdVar
  loc_CBF4BE: FLdRfVar var_124
  loc_CBF4C1: FLdRfVar var_8C
  loc_CBF4C4: FLdPr Me
  loc_CBF4C7: MemLdRfVar from_stack_1.global_56
  loc_CBF4CA: NewIfNullPr clsservdeva
  loc_CBF4CD: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF4D2: FLdPr var_8C
  loc_CBF4D5:  = Me.Fields
  loc_CBF4DA: FLdPr var_124
  loc_CBF4DD: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF4E2: FLdPr Me
  loc_CBF4E5: MemLdI2 global_68
  loc_CBF4E8: CI4UI1
  loc_CBF4E9: CVarI4
  loc_CBF4ED: PopAdLdVar
  loc_CBF4EE: LitVarI4
  loc_CBF4F6: PopAdLdVar
  loc_CBF4F7: LitI4 1
  loc_CBF4FC: LitI4 1
  loc_CBF501: LitVarStr var_C0, "0.00"
  loc_CBF506: FStVarCopyObj var_F0
  loc_CBF509: FLdRfVar var_F0
  loc_CBF50C: FLdZeroAd var_128
  loc_CBF50F: CVarAd
  loc_CBF513: FLdRfVar var_164
  loc_CBF516: ImpAdCallFPR4  = Format(, )
  loc_CBF51B: FLdRfVar var_164
  loc_CBF51E: CStrVarTmp
  loc_CBF51F: CVarStr var_174
  loc_CBF522: PopAdLdVar
  loc_CBF523: FLdPr Me
  loc_CBF526: VCallAd Control_ID_ServDevaFlex
  loc_CBF529: FStAdFunc var_14C
  loc_CBF52C: FLdPr var_14C
  loc_CBF52F: LateIdCallSt
  loc_CBF537: FFreeAd var_8C = "": var_124 = ""
  loc_CBF540: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBF54B: Branch loc_CBF75A
  loc_CBF54E: FLdPr Me
  loc_CBF551: MemLdI2 global_68
  loc_CBF554: CI4UI1
  loc_CBF555: CVarI4
  loc_CBF559: PopAdLdVar
  loc_CBF55A: LitVarI4
  loc_CBF562: PopAdLdVar
  loc_CBF563: FLdPr Me
  loc_CBF566: VCallAd Control_ID_ServDevaFlex
  loc_CBF569: FStAdFunc var_8C
  loc_CBF56C: FLdPr var_8C
  loc_CBF56F: LateIdCallLdVar
  loc_CBF579: CStrVarTmp
  loc_CBF57A: FStStrNoPop var_F4
  loc_CBF57D: LitStr "1"
  loc_CBF580: EqStr
  loc_CBF582: FFree1Str var_F4
  loc_CBF585: FFree1Ad var_8C
  loc_CBF588: FFree1Var var_9C = ""
  loc_CBF58B: BranchF loc_CBF75A
  loc_CBF58E: FLdPr Me
  loc_CBF591: MemLdI2 global_68
  loc_CBF594: CI4UI1
  loc_CBF595: CVarI4
  loc_CBF599: PopAdLdVar
  loc_CBF59A: LitVarI4
  loc_CBF5A2: PopAdLdVar
  loc_CBF5A3: FLdPr Me
  loc_CBF5A6: VCallAd Control_ID_ServDevaFlex
  loc_CBF5A9: FStAdFunc var_8C
  loc_CBF5AC: FLdPr var_8C
  loc_CBF5AF: LateIdCallLdVar
  loc_CBF5B9: CStrVarTmp
  loc_CBF5BA: CVarStr var_F0
  loc_CBF5BD: ImpAdCallI2 IsNumeric()
  loc_CBF5C2: FLdPr Me
  loc_CBF5C5: MemLdI2 global_68
  loc_CBF5C8: CI4UI1
  loc_CBF5C9: CVarI4
  loc_CBF5CD: PopAdLdVar
  loc_CBF5CE: LitVarI4
  loc_CBF5D6: PopAdLdVar
  loc_CBF5D7: FLdPr Me
  loc_CBF5DA: VCallAd Control_ID_ServDevaFlex
  loc_CBF5DD: FStAdFunc var_124
  loc_CBF5E0: FLdPr var_124
  loc_CBF5E3: LateIdCallLdVar
  loc_CBF5ED: CStrVarTmp
  loc_CBF5EE: CVarStr var_174
  loc_CBF5F1: ImpAdCallI2 IsNumeric()
  loc_CBF5F6: AndI4
  loc_CBF5F7: FFreeAd var_8C = ""
  loc_CBF5FE: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBF609: BranchF loc_CBF6F6
  loc_CBF60C: FLdPr Me
  loc_CBF60F: MemLdI2 global_68
  loc_CBF612: CI4UI1
  loc_CBF613: CVarI4
  loc_CBF617: PopAdLdVar
  loc_CBF618: LitVarI4
  loc_CBF620: PopAdLdVar
  loc_CBF621: FLdPr Me
  loc_CBF624: VCallAd Control_ID_ServDevaFlex
  loc_CBF627: FStAdFunc var_8C
  loc_CBF62A: FLdPr var_8C
  loc_CBF62D: LateIdCallLdVar
  loc_CBF637: CStrVarTmp
  loc_CBF638: FStStrNoPop var_F4
  loc_CBF63B: CR8Str
  loc_CBF63D: LitI2_Byte 0
  loc_CBF63F: CR8I2
  loc_CBF640: EqR4
  loc_CBF641: FLdPr Me
  loc_CBF644: MemLdI2 global_68
  loc_CBF647: CI4UI1
  loc_CBF648: CVarI4
  loc_CBF64C: PopAdLdVar
  loc_CBF64D: LitVarI4
  loc_CBF655: PopAdLdVar
  loc_CBF656: FLdPr Me
  loc_CBF659: VCallAd Control_ID_ServDevaFlex
  loc_CBF65C: FStAdFunc var_124
  loc_CBF65F: FLdPr var_124
  loc_CBF662: LateIdCallLdVar
  loc_CBF66C: CStrVarTmp
  loc_CBF66D: FStStrNoPop var_F8
  loc_CBF670: CR8Str
  loc_CBF672: LitI2_Byte 0
  loc_CBF674: CR8I2
  loc_CBF675: EqR4
  loc_CBF676: AndI4
  loc_CBF677: FFreeStr var_F4 = ""
  loc_CBF67E: FFreeAd var_8C = ""
  loc_CBF685: FFreeVar var_9C = ""
  loc_CBF68C: BranchF loc_CBF6F3
  loc_CBF68F: FLdPr Me
  loc_CBF692: MemLdI2 global_68
  loc_CBF695: CI4UI1
  loc_CBF696: CVarI4
  loc_CBF69A: PopAdLdVar
  loc_CBF69B: LitVarI4
  loc_CBF6A3: PopAdLdVar
  loc_CBF6A4: LitVarStr var_138, vbNullString
  loc_CBF6A9: PopAdLdVar
  loc_CBF6AA: FLdPr Me
  loc_CBF6AD: VCallAd Control_ID_ServDevaFlex
  loc_CBF6B0: FStAdFunc var_8C
  loc_CBF6B3: FLdPr var_8C
  loc_CBF6B6: LateIdCallSt
  loc_CBF6BE: FFree1Ad var_8C
  loc_CBF6C1: FLdPr Me
  loc_CBF6C4: MemLdI2 global_68
  loc_CBF6C7: CI4UI1
  loc_CBF6C8: CVarI4
  loc_CBF6CC: PopAdLdVar
  loc_CBF6CD: LitVarI4
  loc_CBF6D5: PopAdLdVar
  loc_CBF6D6: LitVarStr var_138, vbNullString
  loc_CBF6DB: PopAdLdVar
  loc_CBF6DC: FLdPr Me
  loc_CBF6DF: VCallAd Control_ID_ServDevaFlex
  loc_CBF6E2: FStAdFunc var_8C
  loc_CBF6E5: FLdPr var_8C
  loc_CBF6E8: LateIdCallSt
  loc_CBF6F0: FFree1Ad var_8C
  loc_CBF6F3: Branch loc_CBF75A
  loc_CBF6F6: FLdPr Me
  loc_CBF6F9: MemLdI2 global_68
  loc_CBF6FC: CI4UI1
  loc_CBF6FD: CVarI4
  loc_CBF701: PopAdLdVar
  loc_CBF702: LitVarI4
  loc_CBF70A: PopAdLdVar
  loc_CBF70B: LitVarStr var_138, vbNullString
  loc_CBF710: PopAdLdVar
  loc_CBF711: FLdPr Me
  loc_CBF714: VCallAd Control_ID_ServDevaFlex
  loc_CBF717: FStAdFunc var_8C
  loc_CBF71A: FLdPr var_8C
  loc_CBF71D: LateIdCallSt
  loc_CBF725: FFree1Ad var_8C
  loc_CBF728: FLdPr Me
  loc_CBF72B: MemLdI2 global_68
  loc_CBF72E: CI4UI1
  loc_CBF72F: CVarI4
  loc_CBF733: PopAdLdVar
  loc_CBF734: LitVarI4
  loc_CBF73C: PopAdLdVar
  loc_CBF73D: LitVarStr var_138, vbNullString
  loc_CBF742: PopAdLdVar
  loc_CBF743: FLdPr Me
  loc_CBF746: VCallAd Control_ID_ServDevaFlex
  loc_CBF749: FStAdFunc var_8C
  loc_CBF74C: FLdPr var_8C
  loc_CBF74F: LateIdCallSt
  loc_CBF757: FFree1Ad var_8C
  loc_CBF75A: FLdPr Me
  loc_CBF75D: MemLdI2 global_68
  loc_CBF760: CI4UI1
  loc_CBF761: CVarI4
  loc_CBF765: PopAdLdVar
  loc_CBF766: LitVarI4
  loc_CBF76E: PopAdLdVar
  loc_CBF76F: FLdPr Me
  loc_CBF772: VCallAd Control_ID_ServDevaFlex
  loc_CBF775: FStAdFunc var_8C
  loc_CBF778: FLdPr var_8C
  loc_CBF77B: LateIdCallLdVar
  loc_CBF785: CStrVarTmp
  loc_CBF786: CVarStr var_F0
  loc_CBF789: ImpAdCallI2 IsNumeric()
  loc_CBF78E: FLdPr Me
  loc_CBF791: MemLdI2 global_68
  loc_CBF794: CI4UI1
  loc_CBF795: CVarI4
  loc_CBF799: PopAdLdVar
  loc_CBF79A: LitVarI4
  loc_CBF7A2: PopAdLdVar
  loc_CBF7A3: FLdPr Me
  loc_CBF7A6: VCallAd Control_ID_ServDevaFlex
  loc_CBF7A9: FStAdFunc var_124
  loc_CBF7AC: FLdPr var_124
  loc_CBF7AF: LateIdCallLdVar
  loc_CBF7B9: CStrVarTmp
  loc_CBF7BA: CVarStr var_174
  loc_CBF7BD: ImpAdCallI2 IsNumeric()
  loc_CBF7C2: AndI4
  loc_CBF7C3: FFreeAd var_8C = ""
  loc_CBF7CA: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CBF7D5: BranchF loc_CBF8C0
  loc_CBF7D8: FLdPr Me
  loc_CBF7DB: MemLdI2 global_68
  loc_CBF7DE: CI4UI1
  loc_CBF7DF: CVarI4
  loc_CBF7E3: PopAdLdVar
  loc_CBF7E4: LitVarI4
  loc_CBF7EC: PopAdLdVar
  loc_CBF7ED: FLdPr Me
  loc_CBF7F0: VCallAd Control_ID_ServDevaFlex
  loc_CBF7F3: FStAdFunc var_8C
  loc_CBF7F6: FLdPr var_8C
  loc_CBF7F9: LateIdCallLdVar
  loc_CBF803: PopAd
  loc_CBF805: FLdPr Me
  loc_CBF808: MemLdI2 global_68
  loc_CBF80B: CI4UI1
  loc_CBF80C: CVarI4
  loc_CBF810: PopAdLdVar
  loc_CBF811: LitVarI4
  loc_CBF819: PopAdLdVar
  loc_CBF81A: FLdPr Me
  loc_CBF81D: VCallAd Control_ID_ServDevaFlex
  loc_CBF820: FStAdFunc var_124
  loc_CBF823: FLdPr var_124
  loc_CBF826: LateIdCallLdVar
  loc_CBF830: PopAd
  loc_CBF832: FLdPr Me
  loc_CBF835: MemLdI2 global_68
  loc_CBF838: CI4UI1
  loc_CBF839: CVarI4
  loc_CBF83D: PopAdLdVar
  loc_CBF83E: LitVarI4
  loc_CBF846: PopAdLdVar
  loc_CBF847: LitI4 1
  loc_CBF84C: LitI4 1
  loc_CBF851: LitVarStr var_1B4, "0.00"
  loc_CBF856: FStVarCopyObj var_174
  loc_CBF859: FLdRfVar var_174
  loc_CBF85C: FLdRfVar var_9C
  loc_CBF85F: CStrVarTmp
  loc_CBF860: FStStrNoPop var_F4
  loc_CBF863: CR8Str
  loc_CBF865: FLdRfVar var_F0
  loc_CBF868: CStrVarTmp
  loc_CBF869: FStStrNoPop var_F8
  loc_CBF86C: CR8Str
  loc_CBF86E: MulR8
  loc_CBF86F: FLdPr Me
  loc_CBF872: MemLdFPR8 global_80
  loc_CBF875: AddR8
  loc_CBF876: CVarR8
  loc_CBF87A: FLdRfVar var_1C4
  loc_CBF87D: ImpAdCallFPR4  = Format(, )
  loc_CBF882: FLdRfVar var_1C4
  loc_CBF885: CStrVarTmp
  loc_CBF886: CVarStr var_214
  loc_CBF889: PopAdLdVar
  loc_CBF88A: FLdPr Me
  loc_CBF88D: VCallAd Control_ID_ServDevaFlex
  loc_CBF890: FStAdFunc var_128
  loc_CBF893: FLdPr var_128
  loc_CBF896: LateIdCallSt
  loc_CBF89E: FFreeStr var_F4 = ""
  loc_CBF8A5: FFreeAd var_8C = "": var_124 = ""
  loc_CBF8AE: FFreeVar var_9C = "": var_F0 = "": var_164 = "": var_174 = "": var_1C4 = ""
  loc_CBF8BD: Branch loc_CBF9A7
  loc_CBF8C0: FLdPr Me
  loc_CBF8C3: MemLdI2 global_68
  loc_CBF8C6: CI4UI1
  loc_CBF8C7: CVarI4
  loc_CBF8CB: PopAdLdVar
  loc_CBF8CC: LitVarI4
  loc_CBF8D4: PopAdLdVar
  loc_CBF8D5: FLdPr Me
  loc_CBF8D8: VCallAd Control_ID_ServDevaFlex
  loc_CBF8DB: FStAdFunc var_8C
  loc_CBF8DE: FLdPr var_8C
  loc_CBF8E1: LateIdCallLdVar
  loc_CBF8EB: CStrVarTmp
  loc_CBF8EC: CVarStr var_F0
  loc_CBF8EF: ImpAdCallI2 IsNumeric()
  loc_CBF8F4: FFree1Ad var_8C
  loc_CBF8F7: FFreeVar var_9C = ""
  loc_CBF8FE: BranchF loc_CBF9A7
  loc_CBF901: FLdPr Me
  loc_CBF904: MemLdI2 global_68
  loc_CBF907: CI4UI1
  loc_CBF908: CVarI4
  loc_CBF90C: PopAdLdVar
  loc_CBF90D: LitVarI4
  loc_CBF915: PopAdLdVar
  loc_CBF916: FLdPr Me
  loc_CBF919: VCallAd Control_ID_ServDevaFlex
  loc_CBF91C: FStAdFunc var_8C
  loc_CBF91F: FLdPr var_8C
  loc_CBF922: LateIdCallLdVar
  loc_CBF92C: PopAd
  loc_CBF92E: FLdPr Me
  loc_CBF931: MemLdI2 global_68
  loc_CBF934: CI4UI1
  loc_CBF935: CVarI4
  loc_CBF939: PopAdLdVar
  loc_CBF93A: LitVarI4
  loc_CBF942: PopAdLdVar
  loc_CBF943: LitI4 1
  loc_CBF948: LitI4 1
  loc_CBF94D: LitVarStr var_148, "0.00"
  loc_CBF952: FStVarCopyObj var_164
  loc_CBF955: FLdRfVar var_164
  loc_CBF958: FLdRfVar var_9C
  loc_CBF95B: CStrVarTmp
  loc_CBF95C: FStStrNoPop var_F4
  loc_CBF95F: CR8Str
  loc_CBF961: FLdPr Me
  loc_CBF964: MemLdFPR8 global_80
  loc_CBF967: AddR8
  loc_CBF968: CVarR8
  loc_CBF96C: FLdRfVar var_174
  loc_CBF96F: ImpAdCallFPR4  = Format(, )
  loc_CBF974: FLdRfVar var_174
  loc_CBF977: CStrVarTmp
  loc_CBF978: CVarStr var_1C4
  loc_CBF97B: PopAdLdVar
  loc_CBF97C: FLdPr Me
  loc_CBF97F: VCallAd Control_ID_ServDevaFlex
  loc_CBF982: FStAdFunc var_124
  loc_CBF985: FLdPr var_124
  loc_CBF988: LateIdCallSt
  loc_CBF990: FFree1Str var_F4
  loc_CBF993: FFreeAd var_8C = ""
  loc_CBF99A: FFreeVar var_9C = "": var_F0 = "": var_164 = "": var_174 = ""
  loc_CBF9A7: FLdPr Me
  loc_CBF9AA: MemLdI2 global_68
  loc_CBF9AD: CI4UI1
  loc_CBF9AE: CVarI4
  loc_CBF9B2: PopAdLdVar
  loc_CBF9B3: LitVarI4
  loc_CBF9BB: PopAdLdVar
  loc_CBF9BC: FLdRfVar var_9C
  loc_CBF9BF: FLdRfVar var_128
  loc_CBF9C2: LitVarStr var_B0, "PeriInfo"
  loc_CBF9C7: PopAdLdVar
  loc_CBF9C8: FLdRfVar var_124
  loc_CBF9CB: FLdRfVar var_8C
  loc_CBF9CE: FLdPr Me
  loc_CBF9D1: MemLdRfVar from_stack_1.global_56
  loc_CBF9D4: NewIfNullPr clsservdeva
  loc_CBF9D7: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBF9DC: FLdPr var_8C
  loc_CBF9DF:  = Me.Fields
  loc_CBF9E4: FLdPr var_124
  loc_CBF9E7: from_stack_2 = Me.Item(from_stack_1)
  loc_CBF9EC: FLdPr var_128
  loc_CBF9EF:  = Me.Value
  loc_CBF9F4: FLdRfVar var_9C
  loc_CBF9F7: CStrVarTmp
  loc_CBF9F8: CVarStr var_F0
  loc_CBF9FB: PopAdLdVar
  loc_CBF9FC: FLdPr Me
  loc_CBF9FF: VCallAd Control_ID_ServDevaFlex
  loc_CBFA02: FStAdFunc var_14C
  loc_CBFA05: FLdPr var_14C
  loc_CBFA08: LateIdCallSt
  loc_CBFA10: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBFA1B: FFreeVar var_9C = ""
  loc_CBFA22: FLdPr Me
  loc_CBFA25: MemLdI2 global_68
  loc_CBFA28: CI4UI1
  loc_CBFA29: CVarI4
  loc_CBFA2D: PopAdLdVar
  loc_CBFA2E: LitVarI4
  loc_CBFA36: PopAdLdVar
  loc_CBFA37: FLdRfVar var_9C
  loc_CBFA3A: FLdRfVar var_128
  loc_CBFA3D: LitVarStr var_B0, "CodiConc"
  loc_CBFA42: PopAdLdVar
  loc_CBFA43: FLdRfVar var_124
  loc_CBFA46: FLdRfVar var_8C
  loc_CBFA49: FLdPr Me
  loc_CBFA4C: MemLdRfVar from_stack_1.global_56
  loc_CBFA4F: NewIfNullPr clsservdeva
  loc_CBFA52: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBFA57: FLdPr var_8C
  loc_CBFA5A:  = Me.Fields
  loc_CBFA5F: FLdPr var_124
  loc_CBFA62: from_stack_2 = Me.Item(from_stack_1)
  loc_CBFA67: FLdPr var_128
  loc_CBFA6A:  = Me.Value
  loc_CBFA6F: FLdRfVar var_9C
  loc_CBFA72: CStrVarTmp
  loc_CBFA73: CVarStr var_F0
  loc_CBFA76: PopAdLdVar
  loc_CBFA77: FLdPr Me
  loc_CBFA7A: VCallAd Control_ID_ServDevaFlex
  loc_CBFA7D: FStAdFunc var_14C
  loc_CBFA80: FLdPr var_14C
  loc_CBFA83: LateIdCallSt
  loc_CBFA8B: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBFA96: FFreeVar var_9C = ""
  loc_CBFA9D: FLdPr Me
  loc_CBFAA0: MemLdI2 global_68
  loc_CBFAA3: CI4UI1
  loc_CBFAA4: CVarI4
  loc_CBFAA8: PopAdLdVar
  loc_CBFAA9: LitVarI4
  loc_CBFAB1: PopAdLdVar
  loc_CBFAB2: FLdRfVar var_9C
  loc_CBFAB5: FLdRfVar var_128
  loc_CBFAB8: LitVarStr var_B0, "TiafConc"
  loc_CBFABD: PopAdLdVar
  loc_CBFABE: FLdRfVar var_124
  loc_CBFAC1: FLdRfVar var_8C
  loc_CBFAC4: FLdPr Me
  loc_CBFAC7: MemLdRfVar from_stack_1.global_56
  loc_CBFACA: NewIfNullPr clsservdeva
  loc_CBFACD: from_stack_1v = clsservdeva.RsFrmGet()
  loc_CBFAD2: FLdPr var_8C
  loc_CBFAD5:  = Me.Fields
  loc_CBFADA: FLdPr var_124
  loc_CBFADD: from_stack_2 = Me.Item(from_stack_1)
  loc_CBFAE2: FLdPr var_128
  loc_CBFAE5:  = Me.Value
  loc_CBFAEA: FLdRfVar var_9C
  loc_CBFAED: CStrVarTmp
  loc_CBFAEE: CVarStr var_F0
  loc_CBFAF1: PopAdLdVar
  loc_CBFAF2: FLdPr Me
  loc_CBFAF5: VCallAd Control_ID_ServDevaFlex
  loc_CBFAF8: FStAdFunc var_14C
  loc_CBFAFB: FLdPr var_14C
  loc_CBFAFE: LateIdCallSt
  loc_CBFB06: FFreeAd var_8C = "": var_124 = "": var_128 = ""
  loc_CBFB11: FFreeVar var_9C = ""
  loc_CBFB18: LitI2_Byte 0
  loc_CBFB1A: CR8I2
  loc_CBFB1B: FLdPr Me
  loc_CBFB1E: MemStFPR8 global_80
  loc_CBFB21: Branch loc_CBFCD4
  loc_CBFB24: LitStr "No existe el código del servicio, por favor verifique..."
  loc_CBFB27: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBFB2C: FLdPr Me
  loc_CBFB2F: VCallAd Control_ID_ServDevaFlex
  loc_CBFB32: FStAdFunc var_8C
  loc_CBFB35: FLdPr var_8C
  loc_CBFB38: LateIdCall
  loc_CBFB40: FFree1Ad var_8C
  loc_CBFB43: FLdPr Me
  loc_CBFB46: MemLdI2 global_68
  loc_CBFB49: CI4UI1
  loc_CBFB4A: CVarI4
  loc_CBFB4E: PopAdLdVar
  loc_CBFB4F: LitVarI4
  loc_CBFB57: PopAdLdVar
  loc_CBFB58: LitVarStr var_138, vbNullString
  loc_CBFB5D: PopAdLdVar
  loc_CBFB5E: FLdPr Me
  loc_CBFB61: VCallAd Control_ID_ServDevaFlex
  loc_CBFB64: FStAdFunc var_8C
  loc_CBFB67: FLdPr var_8C
  loc_CBFB6A: LateIdCallSt
  loc_CBFB72: FFree1Ad var_8C
  loc_CBFB75: FLdPr Me
  loc_CBFB78: MemLdI2 global_68
  loc_CBFB7B: CI4UI1
  loc_CBFB7C: CVarI4
  loc_CBFB80: PopAdLdVar
  loc_CBFB81: LitVarI4
  loc_CBFB89: PopAdLdVar
  loc_CBFB8A: LitVarStr var_138, vbNullString
  loc_CBFB8F: PopAdLdVar
  loc_CBFB90: FLdPr Me
  loc_CBFB93: VCallAd Control_ID_ServDevaFlex
  loc_CBFB96: FStAdFunc var_8C
  loc_CBFB99: FLdPr var_8C
  loc_CBFB9C: LateIdCallSt
  loc_CBFBA4: FFree1Ad var_8C
  loc_CBFBA7: FLdPr Me
  loc_CBFBAA: MemLdI2 global_68
  loc_CBFBAD: CI4UI1
  loc_CBFBAE: CVarI4
  loc_CBFBB2: PopAdLdVar
  loc_CBFBB3: LitVarI4
  loc_CBFBBB: PopAdLdVar
  loc_CBFBBC: LitVarStr var_138, vbNullString
  loc_CBFBC1: PopAdLdVar
  loc_CBFBC2: FLdPr Me
  loc_CBFBC5: VCallAd Control_ID_ServDevaFlex
  loc_CBFBC8: FStAdFunc var_8C
  loc_CBFBCB: FLdPr var_8C
  loc_CBFBCE: LateIdCallSt
  loc_CBFBD6: FFree1Ad var_8C
  loc_CBFBD9: FLdPr Me
  loc_CBFBDC: MemLdI2 global_68
  loc_CBFBDF: CI4UI1
  loc_CBFBE0: CVarI4
  loc_CBFBE4: PopAdLdVar
  loc_CBFBE5: LitVarI4
  loc_CBFBED: PopAdLdVar
  loc_CBFBEE: LitVarStr var_138, vbNullString
  loc_CBFBF3: PopAdLdVar
  loc_CBFBF4: FLdPr Me
  loc_CBFBF7: VCallAd Control_ID_ServDevaFlex
  loc_CBFBFA: FStAdFunc var_8C
  loc_CBFBFD: FLdPr var_8C
  loc_CBFC00: LateIdCallSt
  loc_CBFC08: FFree1Ad var_8C
  loc_CBFC0B: FLdPr Me
  loc_CBFC0E: MemLdI2 global_68
  loc_CBFC11: CI4UI1
  loc_CBFC12: CVarI4
  loc_CBFC16: PopAdLdVar
  loc_CBFC17: LitVarI4
  loc_CBFC1F: PopAdLdVar
  loc_CBFC20: LitVarStr var_138, vbNullString
  loc_CBFC25: PopAdLdVar
  loc_CBFC26: FLdPr Me
  loc_CBFC29: VCallAd Control_ID_ServDevaFlex
  loc_CBFC2C: FStAdFunc var_8C
  loc_CBFC2F: FLdPr var_8C
  loc_CBFC32: LateIdCallSt
  loc_CBFC3A: FFree1Ad var_8C
  loc_CBFC3D: FLdPr Me
  loc_CBFC40: MemLdI2 global_68
  loc_CBFC43: CI4UI1
  loc_CBFC44: CVarI4
  loc_CBFC48: PopAdLdVar
  loc_CBFC49: LitVarI4
  loc_CBFC51: PopAdLdVar
  loc_CBFC52: LitVarStr var_138, vbNullString
  loc_CBFC57: PopAdLdVar
  loc_CBFC58: FLdPr Me
  loc_CBFC5B: VCallAd Control_ID_ServDevaFlex
  loc_CBFC5E: FStAdFunc var_8C
  loc_CBFC61: FLdPr var_8C
  loc_CBFC64: LateIdCallSt
  loc_CBFC6C: FFree1Ad var_8C
  loc_CBFC6F: FLdPr Me
  loc_CBFC72: MemLdI2 global_68
  loc_CBFC75: CI4UI1
  loc_CBFC76: CVarI4
  loc_CBFC7A: PopAdLdVar
  loc_CBFC7B: LitVarI4
  loc_CBFC83: PopAdLdVar
  loc_CBFC84: LitVarStr var_138, vbNullString
  loc_CBFC89: PopAdLdVar
  loc_CBFC8A: FLdPr Me
  loc_CBFC8D: VCallAd Control_ID_ServDevaFlex
  loc_CBFC90: FStAdFunc var_8C
  loc_CBFC93: FLdPr var_8C
  loc_CBFC96: LateIdCallSt
  loc_CBFC9E: FFree1Ad var_8C
  loc_CBFCA1: FLdPr Me
  loc_CBFCA4: MemLdI2 global_68
  loc_CBFCA7: CI4UI1
  loc_CBFCA8: CVarI4
  loc_CBFCAC: PopAdLdVar
  loc_CBFCAD: LitVarI4
  loc_CBFCB5: PopAdLdVar
  loc_CBFCB6: LitVarStr var_138, vbNullString
  loc_CBFCBB: PopAdLdVar
  loc_CBFCBC: FLdPr Me
  loc_CBFCBF: VCallAd Control_ID_ServDevaFlex
  loc_CBFCC2: FStAdFunc var_8C
  loc_CBFCC5: FLdPr var_8C
  loc_CBFCC8: LateIdCallSt
  loc_CBFCD0: FFree1Ad var_8C
  loc_CBFCD3: ExitProcHresult
  loc_CBFCD4: Branch loc_CBFE94
  loc_CBFCD7: LitStr "Debe ingresar el código. Verifique..."
  loc_CBFCDA: FLdPr Me
  loc_CBFCDD: MemStStrCopy
  loc_CBFCE1: FLdPr Me
  loc_CBFCE4: MemLdStr global_64
  loc_CBFCE7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBFCEC: FLdPr Me
  loc_CBFCEF: MemLdI2 global_68
  loc_CBFCF2: CI4UI1
  loc_CBFCF3: CVarI4
  loc_CBFCF7: PopAdLdVar
  loc_CBFCF8: LitVarI4
  loc_CBFD00: PopAdLdVar
  loc_CBFD01: LitVarStr var_138, vbNullString
  loc_CBFD06: PopAdLdVar
  loc_CBFD07: FLdPr Me
  loc_CBFD0A: VCallAd Control_ID_ServDevaFlex
  loc_CBFD0D: FStAdFunc var_8C
  loc_CBFD10: FLdPr var_8C
  loc_CBFD13: LateIdCallSt
  loc_CBFD1B: FFree1Ad var_8C
  loc_CBFD1E: FLdPr Me
  loc_CBFD21: MemLdI2 global_68
  loc_CBFD24: CI4UI1
  loc_CBFD25: CVarI4
  loc_CBFD29: PopAdLdVar
  loc_CBFD2A: LitVarI4
  loc_CBFD32: PopAdLdVar
  loc_CBFD33: LitVarStr var_138, vbNullString
  loc_CBFD38: PopAdLdVar
  loc_CBFD39: FLdPr Me
  loc_CBFD3C: VCallAd Control_ID_ServDevaFlex
  loc_CBFD3F: FStAdFunc var_8C
  loc_CBFD42: FLdPr var_8C
  loc_CBFD45: LateIdCallSt
  loc_CBFD4D: FFree1Ad var_8C
  loc_CBFD50: FLdPr Me
  loc_CBFD53: MemLdI2 global_68
  loc_CBFD56: CI4UI1
  loc_CBFD57: CVarI4
  loc_CBFD5B: PopAdLdVar
  loc_CBFD5C: LitVarI4
  loc_CBFD64: PopAdLdVar
  loc_CBFD65: LitVarStr var_138, vbNullString
  loc_CBFD6A: PopAdLdVar
  loc_CBFD6B: FLdPr Me
  loc_CBFD6E: VCallAd Control_ID_ServDevaFlex
  loc_CBFD71: FStAdFunc var_8C
  loc_CBFD74: FLdPr var_8C
  loc_CBFD77: LateIdCallSt
  loc_CBFD7F: FFree1Ad var_8C
  loc_CBFD82: FLdPr Me
  loc_CBFD85: MemLdI2 global_68
  loc_CBFD88: CI4UI1
  loc_CBFD89: CVarI4
  loc_CBFD8D: PopAdLdVar
  loc_CBFD8E: LitVarI4
  loc_CBFD96: PopAdLdVar
  loc_CBFD97: LitVarStr var_138, vbNullString
  loc_CBFD9C: PopAdLdVar
  loc_CBFD9D: FLdPr Me
  loc_CBFDA0: VCallAd Control_ID_ServDevaFlex
  loc_CBFDA3: FStAdFunc var_8C
  loc_CBFDA6: FLdPr var_8C
  loc_CBFDA9: LateIdCallSt
  loc_CBFDB1: FFree1Ad var_8C
  loc_CBFDB4: FLdPr Me
  loc_CBFDB7: MemLdI2 global_68
  loc_CBFDBA: CI4UI1
  loc_CBFDBB: CVarI4
  loc_CBFDBF: PopAdLdVar
  loc_CBFDC0: LitVarI4
  loc_CBFDC8: PopAdLdVar
  loc_CBFDC9: LitVarStr var_138, vbNullString
  loc_CBFDCE: PopAdLdVar
  loc_CBFDCF: FLdPr Me
  loc_CBFDD2: VCallAd Control_ID_ServDevaFlex
  loc_CBFDD5: FStAdFunc var_8C
  loc_CBFDD8: FLdPr var_8C
  loc_CBFDDB: LateIdCallSt
  loc_CBFDE3: FFree1Ad var_8C
  loc_CBFDE6: FLdPr Me
  loc_CBFDE9: MemLdI2 global_68
  loc_CBFDEC: CI4UI1
  loc_CBFDED: CVarI4
  loc_CBFDF1: PopAdLdVar
  loc_CBFDF2: LitVarI4
  loc_CBFDFA: PopAdLdVar
  loc_CBFDFB: LitVarStr var_138, vbNullString
  loc_CBFE00: PopAdLdVar
  loc_CBFE01: FLdPr Me
  loc_CBFE04: VCallAd Control_ID_ServDevaFlex
  loc_CBFE07: FStAdFunc var_8C
  loc_CBFE0A: FLdPr var_8C
  loc_CBFE0D: LateIdCallSt
  loc_CBFE15: FFree1Ad var_8C
  loc_CBFE18: FLdPr Me
  loc_CBFE1B: MemLdI2 global_68
  loc_CBFE1E: CI4UI1
  loc_CBFE1F: CVarI4
  loc_CBFE23: PopAdLdVar
  loc_CBFE24: LitVarI4
  loc_CBFE2C: PopAdLdVar
  loc_CBFE2D: LitVarStr var_138, vbNullString
  loc_CBFE32: PopAdLdVar
  loc_CBFE33: FLdPr Me
  loc_CBFE36: VCallAd Control_ID_ServDevaFlex
  loc_CBFE39: FStAdFunc var_8C
  loc_CBFE3C: FLdPr var_8C
  loc_CBFE3F: LateIdCallSt
  loc_CBFE47: FFree1Ad var_8C
  loc_CBFE4A: FLdPr Me
  loc_CBFE4D: MemLdI2 global_68
  loc_CBFE50: CI4UI1
  loc_CBFE51: CVarI4
  loc_CBFE55: PopAdLdVar
  loc_CBFE56: LitVarI4
  loc_CBFE5E: PopAdLdVar
  loc_CBFE5F: LitVarStr var_138, vbNullString
  loc_CBFE64: PopAdLdVar
  loc_CBFE65: FLdPr Me
  loc_CBFE68: VCallAd Control_ID_ServDevaFlex
  loc_CBFE6B: FStAdFunc var_8C
  loc_CBFE6E: FLdPr var_8C
  loc_CBFE71: LateIdCallSt
  loc_CBFE79: FFree1Ad var_8C
  loc_CBFE7C: FLdPr Me
  loc_CBFE7F: VCallAd Control_ID_ServDevaFlex
  loc_CBFE82: FStAdFunc var_8C
  loc_CBFE85: FLdPr var_8C
  loc_CBFE88: LateIdCall
  loc_CBFE90: FFree1Ad var_8C
  loc_CBFE93: ExitProcHresult
  loc_CBFE94: FLdPr Me
  loc_CBFE97: MemLdI2 global_68
  loc_CBFE9A: CI4UI1
  loc_CBFE9B: CVarI4
  loc_CBFE9F: PopAdLdVar
  loc_CBFEA0: LitVarI4
  loc_CBFEA8: PopAdLdVar
  loc_CBFEA9: FLdPr Me
  loc_CBFEAC: VCallAd Control_ID_ServDevaFlex
  loc_CBFEAF: FStAdFunc var_8C
  loc_CBFEB2: FLdPr var_8C
  loc_CBFEB5: LateIdCallLdVar
  loc_CBFEBF: CStrVarTmp
  loc_CBFEC0: CVarStr var_F0
  loc_CBFEC3: ImpAdCallI2 IsNumeric()
  loc_CBFEC8: NotI4
  loc_CBFEC9: FFree1Ad var_8C
  loc_CBFECC: FFreeVar var_9C = ""
  loc_CBFED3: BranchF loc_CBFF06
  loc_CBFED6: LitStr "Debe ingresar el precio unitario. Verifique..."
  loc_CBFED9: FLdPr Me
  loc_CBFEDC: MemStStrCopy
  loc_CBFEE0: FLdPr Me
  loc_CBFEE3: MemLdStr global_64
  loc_CBFEE6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBFEEB: FLdPr Me
  loc_CBFEEE: VCallAd Control_ID_ServDevaFlex
  loc_CBFEF1: FStAdFunc var_8C
  loc_CBFEF4: FLdPr var_8C
  loc_CBFEF7: LateIdCall
  loc_CBFEFF: FFree1Ad var_8C
  loc_CBFF02: ExitProcHresult
  loc_CBFF03: Branch loc_CBFF74
  loc_CBFF06: FLdPr Me
  loc_CBFF09: MemLdI2 global_68
  loc_CBFF0C: CI4UI1
  loc_CBFF0D: CVarI4
  loc_CBFF11: PopAdLdVar
  loc_CBFF12: LitVarI4
  loc_CBFF1A: PopAdLdVar
  loc_CBFF1B: FLdPr Me
  loc_CBFF1E: VCallAd Control_ID_ServDevaFlex
  loc_CBFF21: FStAdFunc var_8C
  loc_CBFF24: FLdPr var_8C
  loc_CBFF27: LateIdCallLdVar
  loc_CBFF31: CStrVarTmp
  loc_CBFF32: FStStrNoPop var_F4
  loc_CBFF35: CR8Str
  loc_CBFF37: LitI2_Byte 0
  loc_CBFF39: CR8I2
  loc_CBFF3A: LeR8
  loc_CBFF3B: FFree1Str var_F4
  loc_CBFF3E: FFree1Ad var_8C
  loc_CBFF41: FFree1Var var_9C = ""
  loc_CBFF44: BranchF loc_CBFF74
  loc_CBFF47: LitStr "El precio unitario debe ser mayor a cero. Verifique..."
  loc_CBFF4A: FLdPr Me
  loc_CBFF4D: MemStStrCopy
  loc_CBFF51: FLdPr Me
  loc_CBFF54: MemLdStr global_64
  loc_CBFF57: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBFF5C: FLdPr Me
  loc_CBFF5F: VCallAd Control_ID_ServDevaFlex
  loc_CBFF62: FStAdFunc var_8C
  loc_CBFF65: FLdPr var_8C
  loc_CBFF68: LateIdCall
  loc_CBFF70: FFree1Ad var_8C
  loc_CBFF73: ExitProcHresult
  loc_CBFF74: FLdPr Me
  loc_CBFF77: MemLdI2 global_68
  loc_CBFF7A: CI4UI1
  loc_CBFF7B: CVarI4
  loc_CBFF7F: PopAdLdVar
  loc_CBFF80: LitVarI4
  loc_CBFF88: PopAdLdVar
  loc_CBFF89: FLdPr Me
  loc_CBFF8C: VCallAd Control_ID_ServDevaFlex
  loc_CBFF8F: FStAdFunc var_8C
  loc_CBFF92: FLdPr var_8C
  loc_CBFF95: LateIdCallLdVar
  loc_CBFF9F: CStrVarTmp
  loc_CBFFA0: CVarStr var_F0
  loc_CBFFA3: ImpAdCallI2 IsNumeric()
  loc_CBFFA8: NotI4
  loc_CBFFA9: FFree1Ad var_8C
  loc_CBFFAC: FFreeVar var_9C = ""
  loc_CBFFB3: BranchF loc_CBFFE6
  loc_CBFFB6: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CBFFB9: FLdPr Me
  loc_CBFFBC: MemStStrCopy
  loc_CBFFC0: FLdPr Me
  loc_CBFFC3: MemLdStr global_64
  loc_CBFFC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CBFFCB: FLdPr Me
  loc_CBFFCE: VCallAd Control_ID_ServDevaFlex
  loc_CBFFD1: FStAdFunc var_8C
  loc_CBFFD4: FLdPr var_8C
  loc_CBFFD7: LateIdCall
  loc_CBFFDF: FFree1Ad var_8C
  loc_CBFFE2: ExitProcHresult
  loc_CBFFE3: Branch loc_CC0054
  loc_CBFFE6: FLdPr Me
  loc_CBFFE9: MemLdI2 global_68
  loc_CBFFEC: CI4UI1
  loc_CBFFED: CVarI4
  loc_CBFFF1: PopAdLdVar
  loc_CBFFF2: LitVarI4
  loc_CBFFFA: PopAdLdVar
  loc_CBFFFB: FLdPr Me
  loc_CBFFFE: VCallAd Control_ID_ServDevaFlex
  loc_CC0001: FStAdFunc var_8C
  loc_CC0004: FLdPr var_8C
  loc_CC0007: LateIdCallLdVar
  loc_CC0011: CStrVarTmp
  loc_CC0012: FStStrNoPop var_F4
  loc_CC0015: CR8Str
  loc_CC0017: LitI2_Byte 0
  loc_CC0019: CR8I2
  loc_CC001A: LeR8
  loc_CC001B: FFree1Str var_F4
  loc_CC001E: FFree1Ad var_8C
  loc_CC0021: FFree1Var var_9C = ""
  loc_CC0024: BranchF loc_CC0054
  loc_CC0027: LitStr "El importe total no puede ser cero. Verifique..."
  loc_CC002A: FLdPr Me
  loc_CC002D: MemStStrCopy
  loc_CC0031: FLdPr Me
  loc_CC0034: MemLdStr global_64
  loc_CC0037: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC003C: FLdPr Me
  loc_CC003F: VCallAd Control_ID_ServDevaFlex
  loc_CC0042: FStAdFunc var_8C
  loc_CC0045: FLdPr var_8C
  loc_CC0048: LateIdCall
  loc_CC0050: FFree1Ad var_8C
  loc_CC0053: ExitProcHresult
  loc_CC0054: FLdPr Me
  loc_CC0057: MemLdRfVar from_stack_1.global_68
  loc_CC005A: NextI2 var_A0, loc_CBE122
  loc_CC005F: LitI2_Byte 1
  loc_CC0061: FLdPr Me
  loc_CC0064: MemLdRfVar from_stack_1.global_68
  loc_CC0067: FLdPr Me
  loc_CC006A: VCallAd Control_ID_ServDevaFlex
  loc_CC006D: FStAdFunc var_8C
  loc_CC0070: FLdPr var_8C
  loc_CC0073: LateIdLdVar var_9C DispID_4 0
  loc_CC007A: CI4Var
  loc_CC007C: LitI4 1
  loc_CC0081: SubI4
  loc_CC0082: CI2I4
  loc_CC0083: FFree1Ad var_8C
  loc_CC0086: FFree1Var var_9C = ""
  loc_CC0089: ForI2 var_228
  loc_CC008F: FLdPr Me
  loc_CC0092: MemLdI2 global_68
  loc_CC0095: CI4UI1
  loc_CC0096: FLdPr Me
  loc_CC0099: VCallAd Control_ID_ServDevaFlex
  loc_CC009C: FStAdFunc var_8C
  loc_CC009F: FLdPr var_8C
  loc_CC00A2: LateIdLdVar var_9C DispID_10 0
  loc_CC00A9: CI4Var
  loc_CC00AB: NeI4
  loc_CC00AC: FFree1Ad var_8C
  loc_CC00AF: FFree1Var var_9C = ""
  loc_CC00B2: BranchF loc_CC018B
  loc_CC00B5: FLdPr Me
  loc_CC00B8: MemLdI2 global_68
  loc_CC00BB: CI4UI1
  loc_CC00BC: CVarI4
  loc_CC00C0: PopAdLdVar
  loc_CC00C1: LitVarI4
  loc_CC00C9: PopAdLdVar
  loc_CC00CA: FLdPr Me
  loc_CC00CD: VCallAd Control_ID_ServDevaFlex
  loc_CC00D0: FStAdFunc var_8C
  loc_CC00D3: FLdPr var_8C
  loc_CC00D6: LateIdCallLdVar
  loc_CC00E0: CStrVarTmp
  loc_CC00E1: FStStrNoPop var_F4
  loc_CC00E4: FLdPr Me
  loc_CC00E7: VCallAd Control_ID_ServDevaFlex
  loc_CC00EA: FStAdFunc var_124
  loc_CC00ED: FLdPr var_124
  loc_CC00F0: LateIdLdVar var_F0 DispID_10 0
  loc_CC00F7: CI4Var
  loc_CC00F9: CVarI4
  loc_CC00FD: PopAdLdVar
  loc_CC00FE: LitVarI4
  loc_CC0106: PopAdLdVar
  loc_CC0107: FLdPr Me
  loc_CC010A: VCallAd Control_ID_ServDevaFlex
  loc_CC010D: FStAdFunc var_128
  loc_CC0110: FLdPr var_128
  loc_CC0113: LateIdCallLdVar
  loc_CC011D: CStrVarTmp
  loc_CC011E: FStStrNoPop var_F8
  loc_CC0121: EqStr
  loc_CC0123: FFreeStr var_F4 = ""
  loc_CC012A: FFreeAd var_8C = "": var_124 = ""
  loc_CC0133: FFreeVar var_9C = "": var_F0 = ""
  loc_CC013C: BranchF loc_CC018B
  loc_CC013F: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_CC0142: FLdPr Me
  loc_CC0145: MemLdI2 global_68
  loc_CC0148: CStrUI1
  loc_CC014A: FStStrNoPop var_F4
  loc_CC014D: ConcatStr
  loc_CC014E: FStStrNoPop var_F8
  loc_CC0151: LitStr ". Verifique"
  loc_CC0154: ConcatStr
  loc_CC0155: FStStrNoPop var_FC
  loc_CC0158: FLdPr Me
  loc_CC015B: MemStStrCopy
  loc_CC015F: FFreeStr var_F4 = "": var_F8 = ""
  loc_CC0168: FLdPr Me
  loc_CC016B: MemLdStr global_64
  loc_CC016E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC0173: FLdPr Me
  loc_CC0176: VCallAd Control_ID_ServDevaFlex
  loc_CC0179: FStAdFunc var_8C
  loc_CC017C: FLdPr var_8C
  loc_CC017F: LateIdCall
  loc_CC0187: FFree1Ad var_8C
  loc_CC018A: ExitProcHresult
  loc_CC018B: FLdPr Me
  loc_CC018E: MemLdRfVar from_stack_1.global_68
  loc_CC0191: NextI2 var_228, loc_CC008F
  loc_CC0196: Call Proc_275_40_B2C9E8()
  loc_CC019B: FLdRfVar var_F4
  loc_CC019E: FLdPr Me
  loc_CC01A1: VCallAd Control_ID_TotaBoleTxt
  loc_CC01A4: FStAdFunc var_8C
  loc_CC01A7: FLdPr var_8C
  loc_CC01AA:  = Me.Text
  loc_CC01AF: LitI4 2
  loc_CC01B4: ILdRf var_F4
  loc_CC01B7: CR8Str
  loc_CC01B9: CVarR8
  loc_CC01BD: FLdRfVar var_F0
  loc_CC01C0: ImpAdCallFPR4  = Round(, )
  loc_CC01C5: FLdRfVar var_F0
  loc_CC01C8: LitVarI2 var_C0, 0
  loc_CC01CD: HardType
  loc_CC01CE: LeVarBool
  loc_CC01D0: FFree1Str var_F4
  loc_CC01D3: FFree1Ad var_8C
  loc_CC01D6: FFreeVar var_9C = ""
  loc_CC01DD: BranchF loc_CC020D
  loc_CC01E0: LitStr "El TOTAL del boleto es incorrecto. Verifique..."
  loc_CC01E3: FLdPr Me
  loc_CC01E6: MemStStrCopy
  loc_CC01EA: FLdPr Me
  loc_CC01ED: MemLdStr global_64
  loc_CC01F0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CC01F5: FLdPr Me
  loc_CC01F8: VCallAd Control_ID_ServDevaFlex
  loc_CC01FB: FStAdFunc var_8C
  loc_CC01FE: FLdPr var_8C
  loc_CC0201: LateIdCall
  loc_CC0209: FFree1Ad var_8C
  loc_CC020C: ExitProcHresult
  loc_CC020D: LitI2_Byte &HB
  loc_CC020F: FLdPr Me
  loc_CC0212: Me.MousePointer = from_stack_1
  loc_CC0217: LitI2_Byte 0
  loc_CC0219: FLdPr Me
  loc_CC021C: VCallAd Control_ID_ConfirmarCmd
  loc_CC021F: FStAdFunc var_8C
  loc_CC0222: FLdPr var_8C
  loc_CC0225: Me.Enabled = from_stack_1b
  loc_CC022A: FFree1Ad var_8C
  loc_CC022D: LitI2_Byte 0
  loc_CC022F: ImpAdStI2 MemVar_D93078
  loc_CC0232: LitI2_Byte 0
  loc_CC0234: FLdPr Me
  loc_CC0237: MemStI2 global_76
  loc_CC023A: FLdRfVar var_F4
  loc_CC023D: FLdPr Me
  loc_CC0240: VCallAd Control_ID_NumeCtaTxt
  loc_CC0243: FStAdFunc var_8C
  loc_CC0246: FLdPr var_8C
  loc_CC0249:  = Me.Text
  loc_CC024E: FLdPr Me
  loc_CC0251: VCallAd Control_ID_PeriCtctMsk
  loc_CC0254: FStAdFunc var_124
  loc_CC0257: FLdPr var_124
  loc_CC025A: LateIdLdVar var_9C DispID_22 0
  loc_CC0261: PopAd
  loc_CC0263: FLdPr Me
  loc_CC0266: VCallAd Control_ID_BimeCtctMsk
  loc_CC0269: FStAdFunc var_128
  loc_CC026C: FLdPr var_128
  loc_CC026F: LateIdLdVar var_F0 DispID_22 0
  loc_CC0276: PopAd
  loc_CC0278: FLdPr Me
  loc_CC027B: VCallAd Control_ID_FeveCtctMsk
  loc_CC027E: FStAdFunc var_14C
  loc_CC0281: FLdPr var_14C
  loc_CC0284: LateIdLdVar var_164 DispID_15 0
  loc_CC028B: PopAd
  loc_CC028D: FLdRfVar var_F8
  loc_CC0290: FLdPr Me
  loc_CC0293: VCallAd Control_ID_ExpeCtctTxt
  loc_CC0296: FStAdFunc var_150
  loc_CC0299: FLdPr var_150
  loc_CC029C:  = Me.Text
  loc_CC02A1: FLdRfVar var_FC
  loc_CC02A4: FLdPr Me
  loc_CC02A7: VCallAd Control_ID_CompCtctTxt
  loc_CC02AA: FStAdFunc var_154
  loc_CC02AD: FLdPr var_154
  loc_CC02B0:  = Me.Text
  loc_CC02B5: FLdRfVar var_100
  loc_CC02B8: FLdPr Me
  loc_CC02BB: VCallAd Control_ID_DetalleTxt
  loc_CC02BE: FStAdFunc var_22C
  loc_CC02C1: FLdPr var_22C
  loc_CC02C4:  = Me.Text
  loc_CC02C9: FLdRfVar var_104
  loc_CC02CC: FLdPr Me
  loc_CC02CF: VCallAd Control_ID_CucuPersLbl
  loc_CC02D2: FStAdFunc var_230
  loc_CC02D5: FLdPr var_230
  loc_CC02D8:  = Me.Caption
  loc_CC02DD: FLdRfVar var_108
  loc_CC02E0: FLdPr Me
  loc_CC02E3: VCallAd Control_ID_TotaBoleTxt
  loc_CC02E6: FStAdFunc var_234
  loc_CC02E9: FLdPr var_234
  loc_CC02EC:  = Me.Text
  loc_CC02F1: FLdRfVar var_10C
  loc_CC02F4: FLdPr Me
  loc_CC02F7: VCallAd Control_ID_DescBoleTxt
  loc_CC02FA: FStAdFunc var_238
  loc_CC02FD: FLdPr var_238
  loc_CC0300:  = Me.Text
  loc_CC0305: FLdRfVar var_110
  loc_CC0308: FLdPr Me
  loc_CC030B: VCallAd Control_ID_TotalTxt
  loc_CC030E: FStAdFunc var_23C
  loc_CC0311: FLdPr var_23C
  loc_CC0314:  = Me.Text
  loc_CC0319: FLdRfVar var_114
  loc_CC031C: FLdPr Me
  loc_CC031F: VCallAd Control_ID_PorcDescTxt
  loc_CC0322: FStAdFunc var_240
  loc_CC0325: FLdPr var_240
  loc_CC0328:  = Me.Text
  loc_CC032D: FLdPr Me
  loc_CC0330: VCallAd Control_ID_FechActaMsk
  loc_CC0333: FStAdFunc var_244
  loc_CC0336: FLdPr var_244
  loc_CC0339: LateIdLdVar var_174 DispID_15 0
  loc_CC0340: CStrVarTmp
  loc_CC0341: FStStrNoPop var_24C
  loc_CC0344: ILdRf var_114
  loc_CC0347: CR8Str
  loc_CC0349: PopFPR8
  loc_CC034A: FLdPr Me
  loc_CC034D: MemLdI2 global_76
  loc_CC0350: ILdRf var_110
  loc_CC0353: CR8Str
  loc_CC0355: PopFPR8
  loc_CC0356: ILdRf var_10C
  loc_CC0359: CR8Str
  loc_CC035B: PopFPR8
  loc_CC035C: ILdRf var_108
  loc_CC035F: CR8Str
  loc_CC0361: PopFPR8
  loc_CC0362: ImpAdLdI2 MemVar_D93078
  loc_CC0365: ILdRf var_104
  loc_CC0368: ILdRf var_100
  loc_CC036B: ILdRf var_FC
  loc_CC036E: ILdRf var_F8
  loc_CC0371: FLdRfVar var_164
  loc_CC0374: CStrVarTmp
  loc_CC0375: FStStrNoPop var_248
  loc_CC0378: FLdRfVar var_F0
  loc_CC037B: CStrVarTmp
  loc_CC037C: FStStrNoPop var_11C
  loc_CC037F: CI2Str
  loc_CC0381: FLdRfVar var_9C
  loc_CC0384: CStrVarTmp
  loc_CC0385: FStStrNoPop var_118
  loc_CC0388: CI2Str
  loc_CC038A: ILdRf var_F4
  loc_CC038D: ImpAdLdUI1
  loc_CC0391: FLdPr Me
  loc_CC0394: MemLdRfVar from_stack_1.global_52
  loc_CC0397: NewIfNullPr clsctacte
  loc_CC039A: Call clsctacte.CreaMultadeTransitoEnCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_CC039F: FFreeStr var_F4 = "": var_118 = "": var_11C = "": var_248 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_CC03BC: FFreeAd var_8C = "": var_124 = "": var_128 = "": var_14C = "": var_150 = "": var_154 = "": var_22C = "": var_230 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = ""
  loc_CC03D9: FFreeVar var_9C = "": var_F0 = "": var_164 = ""
  loc_CC03E4: Call Proc_275_38_B28C04()
  loc_CC03E9: Call Proc_275_39_B3B03C()
  loc_CC03EE: LitI2_Byte &HFF
  loc_CC03F0: FLdPr Me
  loc_CC03F3: VCallAd Control_ID_ConfirmarCmd
  loc_CC03F6: FStAdFunc var_8C
  loc_CC03F9: FLdPr var_8C
  loc_CC03FC: Me.Enabled = from_stack_1b
  loc_CC0401: FFree1Ad var_8C
  loc_CC0404: LitI2_Byte 0
  loc_CC0406: FLdPr Me
  loc_CC0409: Me.MousePointer = from_stack_1
  loc_CC040E: FLdPr Me
  loc_CC0411: VCallAd Control_ID_NumeCtaTxt
  loc_CC0414: FStAdFunc var_8C
  loc_CC0417: FLdPr var_8C
  loc_CC041A: Me.SetFocus
  loc_CC041F: FFree1Ad var_8C
  loc_CC0422: ExitProcHresult
End Sub

Private Sub FeveCtctMsk_UnknownEvent_0 '9C3800
  'Data Table: 51A85C
  loc_9C37EC: FLdPr Me
  loc_9C37EF: VCallAd Control_ID_FeveCtctMsk
  loc_9C37F2: CVarAd
  loc_9C37F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C37FB: FFree1Var var_94 = ""
  loc_9C37FE: ExitProcHresult
End Sub

Private Function FeveCtctMsk_UnknownEvent_8(arg_C) 'A7FBDC
  'Data Table: 51A85C
  loc_A7FB58: FLdPr Me
  loc_A7FB5B: VCallAd Control_ID_FeveCtctMsk
  loc_A7FB5E: FStAdFunc var_88
  loc_A7FB61: FLdPr var_88
  loc_A7FB64: LateIdLdVar var_98 DispID_13 -32767
  loc_A7FB6B: CBoolVar
  loc_A7FB6D: FFree1Ad var_88
  loc_A7FB70: FFree1Var var_98 = ""
  loc_A7FB73: BranchF loc_A7FBD9
  loc_A7FB76: FLdPr Me
  loc_A7FB79: VCallAd Control_ID_FeveCtctMsk
  loc_A7FB7C: FStAdFunc var_88
  loc_A7FB7F: FLdPr var_88
  loc_A7FB82: LateIdLdVar var_98 DispID_15 0
  loc_A7FB89: CStrVarTmp
  loc_A7FB8A: FStStrNoPop var_9C
  loc_A7FB8D: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A7FB92: FStStrNoPop var_A0
  loc_A7FB95: FLdPr Me
  loc_A7FB98: MemStStrCopy
  loc_A7FB9C: FFreeStr var_9C = ""
  loc_A7FBA3: FFree1Ad var_88
  loc_A7FBA6: FFree1Var var_98 = ""
  loc_A7FBA9: FLdPr Me
  loc_A7FBAC: MemLdStr global_64
  loc_A7FBAF: LitStr vbNullString
  loc_A7FBB2: NeStr
  loc_A7FBB4: BranchF loc_A7FBD9
  loc_A7FBB7: FLdPr Me
  loc_A7FBBA: MemLdStr global_64
  loc_A7FBBD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A7FBC2: FLdPr Me
  loc_A7FBC5: VCallAd Control_ID_FeveCtctMsk
  loc_A7FBC8: CVarAd
  loc_A7FBCC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A7FBD1: FFree1Var var_98 = ""
  loc_A7FBD4: LitI2_Byte &HFF
  loc_A7FBD6: IStI2 arg_C
  loc_A7FBD9: ExitProcHresult
End Function

Private Sub FeveCtctMsk_KeyPress(KeyAscii As Integer) 'A25ACC
  'Data Table: 51A85C
  loc_A25A84: ILdI2 KeyAscii
  loc_A25A87: CI4UI1
  loc_A25A88: LitI4 &H20
  loc_A25A8D: EqI4
  loc_A25A8E: BranchF loc_A25ACB
  loc_A25A91: LitVar_Missing var_A4
  loc_A25A94: PopAdLdVar
  loc_A25A95: LitVarI4
  loc_A25A9D: PopAdLdVar
  loc_A25A9E: ImpAdLdRf MemVar_D930A4
  loc_A25AA1: NewIfNullPr frmCalendario
  loc_A25AA4: frmCalendario.Show from_stack_1, from_stack_2
  loc_A25AA9: ImpAdLdRf MemVar_D93028
  loc_A25AAC: CDargRef
  loc_A25AB0: FLdPr Me
  loc_A25AB3: VCallAd Control_ID_FeveCtctMsk
  loc_A25AB6: FStAdFunc var_A8
  loc_A25AB9: FLdPr var_A8
  loc_A25ABC: LateIdSt
  loc_A25AC1: FFree1Ad var_A8
  loc_A25AC4: LitStr vbNullString
  loc_A25AC7: ImpAdStStrCopy MemVar_D93028
  loc_A25ACB: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'BFB6D0
  'Data Table: 51A85C
  loc_BFAE88: FLdRfVar var_8A
  loc_BFAE8B: FLdPr Me
  loc_BFAE8E: VCallAd Control_ID_OficinaCbo
  loc_BFAE91: FStAdFunc var_88
  loc_BFAE94: FLdPr var_88
  loc_BFAE97:  = Me.ListIndex
  loc_BFAE9C: FLdI2 var_8A
  loc_BFAE9F: FStI2 var_8C
  loc_BFAEA2: FFree1Ad var_88
  loc_BFAEA5: FLdI2 var_8C
  loc_BFAEA8: LitI2_Byte 0
  loc_BFAEAA: EqI2
  loc_BFAEAB: BranchF loc_BFAEB9
  loc_BFAEAE: LitI2_Byte 1
  loc_BFAEB0: CUI1I2
  loc_BFAEB2: ImpAdStUI1 MemVar_D93038
  loc_BFAEB6: Branch loc_BFAF06
  loc_BFAEB9: FLdI2 var_8C
  loc_BFAEBC: LitI2_Byte 1
  loc_BFAEBE: EqI2
  loc_BFAEBF: BranchF loc_BFAECD
  loc_BFAEC2: LitI2_Byte 2
  loc_BFAEC4: CUI1I2
  loc_BFAEC6: ImpAdStUI1 MemVar_D93038
  loc_BFAECA: Branch loc_BFAF06
  loc_BFAECD: FLdI2 var_8C
  loc_BFAED0: LitI2_Byte 2
  loc_BFAED2: EqI2
  loc_BFAED3: BranchF loc_BFAEE1
  loc_BFAED6: LitI2_Byte 3
  loc_BFAED8: CUI1I2
  loc_BFAEDA: ImpAdStUI1 MemVar_D93038
  loc_BFAEDE: Branch loc_BFAF06
  loc_BFAEE1: FLdI2 var_8C
  loc_BFAEE4: LitI2_Byte 3
  loc_BFAEE6: EqI2
  loc_BFAEE7: BranchF loc_BFAEF5
  loc_BFAEEA: LitI2_Byte 4
  loc_BFAEEC: CUI1I2
  loc_BFAEEE: ImpAdStUI1 MemVar_D93038
  loc_BFAEF2: Branch loc_BFAF06
  loc_BFAEF5: FLdI2 var_8C
  loc_BFAEF8: LitI2_Byte 4
  loc_BFAEFA: EqI2
  loc_BFAEFB: BranchF loc_BFAF06
  loc_BFAEFE: LitI2_Byte 5
  loc_BFAF00: CUI1I2
  loc_BFAF02: ImpAdStUI1 MemVar_D93038
  loc_BFAF06: LitVar_Missing var_AC
  loc_BFAF09: PopAdLdVar
  loc_BFAF0A: LitVarI4
  loc_BFAF12: PopAdLdVar
  loc_BFAF13: ImpAdLdRf MemVar_D94034
  loc_BFAF16: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFAF19: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_BFAF1E: FLdRfVar var_8A
  loc_BFAF21: ImpAdLdRf MemVar_D94034
  loc_BFAF24: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFAF27: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.bCancelaGet()
  loc_BFAF2C: FLdI2 var_8A
  loc_BFAF2F: LitI2_Byte 0
  loc_BFAF31: EqI2
  loc_BFAF32: BranchF loc_BFB633
  loc_BFAF35: FLdRfVar var_B0
  loc_BFAF38: FLdRfVar var_88
  loc_BFAF3B: ImpAdLdRf MemVar_D94034
  loc_BFAF3E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFAF41: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFAF46: FLdPr var_88
  loc_BFAF49: from_stack_1 = clsbase.RecordCount
  loc_BFAF4E: ILdRf var_B0
  loc_BFAF51: LitI4 0
  loc_BFAF56: GtI4
  loc_BFAF57: FFree1Ad var_88
  loc_BFAF5A: BranchF loc_BFB630
  loc_BFAF5D: FLdRfVar var_CC
  loc_BFAF60: FLdRfVar var_BC
  loc_BFAF63: LitVarStr var_9C, "CodiOfic"
  loc_BFAF68: PopAdLdVar
  loc_BFAF69: FLdRfVar var_B8
  loc_BFAF6C: FLdRfVar var_B4
  loc_BFAF6F: FLdRfVar var_88
  loc_BFAF72: ImpAdLdRf MemVar_D94034
  loc_BFAF75: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFAF78: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFAF7D: FLdPr var_88
  loc_BFAF80: from_stack_1v = clsbase.RsFrmGet()
  loc_BFAF85: FLdPr var_B4
  loc_BFAF88:  = Me.Fields
  loc_BFAF8D: FLdPr var_B8
  loc_BFAF90: from_stack_2 = Me.Item(from_stack_1)
  loc_BFAF95: FLdPr var_BC
  loc_BFAF98:  = Me.Value
  loc_BFAF9D: FLdRfVar var_CC
  loc_BFAFA0: FStVar var_DC
  loc_BFAFA4: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_BFAFAF: FLdRfVar var_DC
  loc_BFAFB2: LitVarI2 var_9C, 1
  loc_BFAFB7: HardType
  loc_BFAFB8: EqVarBool
  loc_BFAFBA: BranchF loc_BFAFF4
  loc_BFAFBD: FLdRfVar var_E0
  loc_BFAFC0: LitI2_Byte 0
  loc_BFAFC2: FLdPr Me
  loc_BFAFC5: VCallAd Control_ID_OficinaCbo
  loc_BFAFC8: FStAdFunc var_88
  loc_BFAFCB: FLdPr var_88
  loc_BFAFCE: from_stack_2 = Me.List(from_stack_1)
  loc_BFAFD3: ILdRf var_E0
  loc_BFAFD6: FLdPr Me
  loc_BFAFD9: VCallAd Control_ID_OficinaCbo
  loc_BFAFDC: FStAdFunc var_B4
  loc_BFAFDF: FLdPr var_B4
  loc_BFAFE2: Me.Text = from_stack_1
  loc_BFAFE7: FFree1Str var_E0
  loc_BFAFEA: FFreeAd var_88 = ""
  loc_BFAFF1: Branch loc_BFB105
  loc_BFAFF4: FLdRfVar var_DC
  loc_BFAFF7: LitVarI2 var_9C, 2
  loc_BFAFFC: HardType
  loc_BFAFFD: EqVarBool
  loc_BFAFFF: BranchF loc_BFB039
  loc_BFB002: FLdRfVar var_E0
  loc_BFB005: LitI2_Byte 1
  loc_BFB007: FLdPr Me
  loc_BFB00A: VCallAd Control_ID_OficinaCbo
  loc_BFB00D: FStAdFunc var_88
  loc_BFB010: FLdPr var_88
  loc_BFB013: from_stack_2 = Me.List(from_stack_1)
  loc_BFB018: ILdRf var_E0
  loc_BFB01B: FLdPr Me
  loc_BFB01E: VCallAd Control_ID_OficinaCbo
  loc_BFB021: FStAdFunc var_B4
  loc_BFB024: FLdPr var_B4
  loc_BFB027: Me.Text = from_stack_1
  loc_BFB02C: FFree1Str var_E0
  loc_BFB02F: FFreeAd var_88 = ""
  loc_BFB036: Branch loc_BFB105
  loc_BFB039: FLdRfVar var_DC
  loc_BFB03C: LitVarI2 var_9C, 3
  loc_BFB041: HardType
  loc_BFB042: EqVarBool
  loc_BFB044: BranchF loc_BFB07E
  loc_BFB047: FLdRfVar var_E0
  loc_BFB04A: LitI2_Byte 2
  loc_BFB04C: FLdPr Me
  loc_BFB04F: VCallAd Control_ID_OficinaCbo
  loc_BFB052: FStAdFunc var_88
  loc_BFB055: FLdPr var_88
  loc_BFB058: from_stack_2 = Me.List(from_stack_1)
  loc_BFB05D: ILdRf var_E0
  loc_BFB060: FLdPr Me
  loc_BFB063: VCallAd Control_ID_OficinaCbo
  loc_BFB066: FStAdFunc var_B4
  loc_BFB069: FLdPr var_B4
  loc_BFB06C: Me.Text = from_stack_1
  loc_BFB071: FFree1Str var_E0
  loc_BFB074: FFreeAd var_88 = ""
  loc_BFB07B: Branch loc_BFB105
  loc_BFB07E: FLdRfVar var_DC
  loc_BFB081: LitVarI2 var_9C, 4
  loc_BFB086: HardType
  loc_BFB087: EqVarBool
  loc_BFB089: BranchF loc_BFB0C3
  loc_BFB08C: FLdRfVar var_E0
  loc_BFB08F: LitI2_Byte 3
  loc_BFB091: FLdPr Me
  loc_BFB094: VCallAd Control_ID_OficinaCbo
  loc_BFB097: FStAdFunc var_88
  loc_BFB09A: FLdPr var_88
  loc_BFB09D: from_stack_2 = Me.List(from_stack_1)
  loc_BFB0A2: ILdRf var_E0
  loc_BFB0A5: FLdPr Me
  loc_BFB0A8: VCallAd Control_ID_OficinaCbo
  loc_BFB0AB: FStAdFunc var_B4
  loc_BFB0AE: FLdPr var_B4
  loc_BFB0B1: Me.Text = from_stack_1
  loc_BFB0B6: FFree1Str var_E0
  loc_BFB0B9: FFreeAd var_88 = ""
  loc_BFB0C0: Branch loc_BFB105
  loc_BFB0C3: FLdRfVar var_DC
  loc_BFB0C6: LitVarI2 var_9C, 5
  loc_BFB0CB: HardType
  loc_BFB0CC: EqVarBool
  loc_BFB0CE: BranchF loc_BFB105
  loc_BFB0D1: FLdRfVar var_E0
  loc_BFB0D4: LitI2_Byte 4
  loc_BFB0D6: FLdPr Me
  loc_BFB0D9: VCallAd Control_ID_OficinaCbo
  loc_BFB0DC: FStAdFunc var_88
  loc_BFB0DF: FLdPr var_88
  loc_BFB0E2: from_stack_2 = Me.List(from_stack_1)
  loc_BFB0E7: ILdRf var_E0
  loc_BFB0EA: FLdPr Me
  loc_BFB0ED: VCallAd Control_ID_OficinaCbo
  loc_BFB0F0: FStAdFunc var_B4
  loc_BFB0F3: FLdPr var_B4
  loc_BFB0F6: Me.Text = from_stack_1
  loc_BFB0FB: FFree1Str var_E0
  loc_BFB0FE: FFreeAd var_88 = ""
  loc_BFB105: FLdRfVar var_CC
  loc_BFB108: FLdRfVar var_BC
  loc_BFB10B: LitVarStr var_9C, "CuenCtct"
  loc_BFB110: PopAdLdVar
  loc_BFB111: FLdRfVar var_B8
  loc_BFB114: FLdRfVar var_B4
  loc_BFB117: FLdRfVar var_88
  loc_BFB11A: ImpAdLdRf MemVar_D94034
  loc_BFB11D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB120: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB125: FLdPr var_88
  loc_BFB128: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB12D: FLdPr var_B4
  loc_BFB130:  = Me.Fields
  loc_BFB135: FLdPr var_B8
  loc_BFB138: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB13D: FLdPr var_BC
  loc_BFB140:  = Me.Value
  loc_BFB145: FLdRfVar var_CC
  loc_BFB148: CStrVarTmp
  loc_BFB149: FStStrNoPop var_E0
  loc_BFB14C: FLdPr Me
  loc_BFB14F: VCallAd Control_ID_NumeCtaTxt
  loc_BFB152: FStAdFunc var_E4
  loc_BFB155: FLdPr var_E4
  loc_BFB158: Me.Text = from_stack_1
  loc_BFB15D: FFree1Str var_E0
  loc_BFB160: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BFB16D: FFree1Var var_CC = ""
  loc_BFB170: FLdRfVar var_CC
  loc_BFB173: FLdRfVar var_BC
  loc_BFB176: LitVarStr var_9C, "CucuPers"
  loc_BFB17B: PopAdLdVar
  loc_BFB17C: FLdRfVar var_B8
  loc_BFB17F: FLdRfVar var_B4
  loc_BFB182: FLdRfVar var_88
  loc_BFB185: ImpAdLdRf MemVar_D94034
  loc_BFB188: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB18B: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB190: FLdPr var_88
  loc_BFB193: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB198: FLdPr var_B4
  loc_BFB19B:  = Me.Fields
  loc_BFB1A0: FLdPr var_B8
  loc_BFB1A3: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB1A8: FLdPr var_BC
  loc_BFB1AB:  = Me.Value
  loc_BFB1B0: FLdRfVar var_CC
  loc_BFB1B3: CStrVarTmp
  loc_BFB1B4: FStStrNoPop var_E0
  loc_BFB1B7: FLdPr Me
  loc_BFB1BA: VCallAd Control_ID_CucuPersLbl
  loc_BFB1BD: FStAdFunc var_E4
  loc_BFB1C0: FLdPr var_E4
  loc_BFB1C3: Me.Caption = from_stack_1
  loc_BFB1C8: FFree1Str var_E0
  loc_BFB1CB: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BFB1D8: FFree1Var var_CC = ""
  loc_BFB1DB: FLdRfVar var_CC
  loc_BFB1DE: FLdRfVar var_BC
  loc_BFB1E1: LitVarStr var_9C, "DetaPers"
  loc_BFB1E6: PopAdLdVar
  loc_BFB1E7: FLdRfVar var_B8
  loc_BFB1EA: FLdRfVar var_B4
  loc_BFB1ED: FLdRfVar var_88
  loc_BFB1F0: ImpAdLdRf MemVar_D94034
  loc_BFB1F3: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB1F6: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB1FB: FLdPr var_88
  loc_BFB1FE: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB203: FLdPr var_B4
  loc_BFB206:  = Me.Fields
  loc_BFB20B: FLdPr var_B8
  loc_BFB20E: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB213: FLdPr var_BC
  loc_BFB216:  = Me.Value
  loc_BFB21B: FLdRfVar var_CC
  loc_BFB21E: CStrVarTmp
  loc_BFB21F: FStStrNoPop var_E0
  loc_BFB222: FLdPr Me
  loc_BFB225: VCallAd Control_ID_DetaPersLbl
  loc_BFB228: FStAdFunc var_E4
  loc_BFB22B: FLdPr var_E4
  loc_BFB22E: Me.Caption = from_stack_1
  loc_BFB233: FFree1Str var_E0
  loc_BFB236: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BFB243: FFree1Var var_CC = ""
  loc_BFB246: FLdRfVar var_120
  loc_BFB249: FLdRfVar var_110
  loc_BFB24C: LitVarStr var_10C, "NurePers"
  loc_BFB251: PopAdLdVar
  loc_BFB252: FLdRfVar var_FC
  loc_BFB255: FLdRfVar var_F8
  loc_BFB258: FLdRfVar var_E4
  loc_BFB25B: ImpAdLdRf MemVar_D94034
  loc_BFB25E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB261: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB266: FLdPr var_E4
  loc_BFB269: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB26E: FLdPr var_F8
  loc_BFB271:  = Me.Fields
  loc_BFB276: FLdPr var_FC
  loc_BFB279: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB27E: FLdPr var_110
  loc_BFB281:  = Me.Value
  loc_BFB286: FLdRfVar var_150
  loc_BFB289: FLdRfVar var_140
  loc_BFB28C: LitVarStr var_13C, "NurePers"
  loc_BFB291: PopAdLdVar
  loc_BFB292: FLdRfVar var_12C
  loc_BFB295: FLdRfVar var_128
  loc_BFB298: FLdRfVar var_124
  loc_BFB29B: ImpAdLdRf MemVar_D94034
  loc_BFB29E: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB2A1: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB2A6: FLdPr var_124
  loc_BFB2A9: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB2AE: FLdPr var_128
  loc_BFB2B1:  = Me.Fields
  loc_BFB2B6: FLdPr var_12C
  loc_BFB2B9: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB2BE: FLdPr var_140
  loc_BFB2C1:  = Me.Value
  loc_BFB2C6: FLdRfVar var_CC
  loc_BFB2C9: FLdRfVar var_BC
  loc_BFB2CC: LitVarStr var_9C, "DecrPers"
  loc_BFB2D1: PopAdLdVar
  loc_BFB2D2: FLdRfVar var_B8
  loc_BFB2D5: FLdRfVar var_B4
  loc_BFB2D8: FLdRfVar var_88
  loc_BFB2DB: ImpAdLdRf MemVar_D94034
  loc_BFB2DE: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB2E1: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB2E6: FLdPr var_88
  loc_BFB2E9: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB2EE: FLdPr var_B4
  loc_BFB2F1:  = Me.Fields
  loc_BFB2F6: FLdPr var_B8
  loc_BFB2F9: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB2FE: FLdPr var_BC
  loc_BFB301:  = Me.Value
  loc_BFB306: FLdRfVar var_CC
  loc_BFB309: LitVarStr var_AC, " "
  loc_BFB30E: ConcatVar var_F4
  loc_BFB312: LitVarStr var_190, vbNullString
  loc_BFB317: FStVarCopyObj var_1A0
  loc_BFB31A: FLdRfVar var_1A0
  loc_BFB31D: LitVarStr var_160, "Nro: "
  loc_BFB322: FLdRfVar var_150
  loc_BFB325: ConcatVar var_170
  loc_BFB329: FLdRfVar var_120
  loc_BFB32C: FnCLngVar
  loc_BFB32E: CR8I4
  loc_BFB32F: LitStr "0"
  loc_BFB332: CR8Str
  loc_BFB334: NeR8
  loc_BFB335: CVarBoolI2 var_180
  loc_BFB339: FLdRfVar var_1B0
  loc_BFB33C: ImpAdCallFPR4  = IIf(, , )
  loc_BFB341: FLdRfVar var_1B0
  loc_BFB344: ConcatVar var_1C0
  loc_BFB348: CStrVarVal var_E0
  loc_BFB34C: FLdPr Me
  loc_BFB34F: VCallAd Control_ID_DomiPersLbl
  loc_BFB352: FStAdFunc var_1C4
  loc_BFB355: FLdPr var_1C4
  loc_BFB358: Me.Caption = from_stack_1
  loc_BFB35D: FFree1Str var_E0
  loc_BFB360: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = "": var_E4 = "": var_F8 = "": var_FC = "": var_110 = "": var_124 = "": var_128 = "": var_12C = "": var_140 = ""
  loc_BFB37D: FFreeVar var_CC = "": var_120 = "": var_150 = "": var_180 = "": var_170 = "": var_1A0 = "": var_F4 = "": var_1B0 = ""
  loc_BFB392: FLdRfVar var_120
  loc_BFB395: FLdRfVar var_110
  loc_BFB398: LitVarStr var_10C, "Manzana"
  loc_BFB39D: PopAdLdVar
  loc_BFB39E: FLdRfVar var_FC
  loc_BFB3A1: FLdRfVar var_F8
  loc_BFB3A4: FLdRfVar var_E4
  loc_BFB3A7: ImpAdLdRf MemVar_D94034
  loc_BFB3AA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB3AD: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB3B2: FLdPr var_E4
  loc_BFB3B5: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB3BA: FLdPr var_F8
  loc_BFB3BD:  = Me.Fields
  loc_BFB3C2: FLdPr var_FC
  loc_BFB3C5: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB3CA: FLdPr var_110
  loc_BFB3CD:  = Me.Value
  loc_BFB3D2: FLdRfVar var_170
  loc_BFB3D5: FLdRfVar var_140
  loc_BFB3D8: LitVarStr var_160, "Manzana"
  loc_BFB3DD: PopAdLdVar
  loc_BFB3DE: FLdRfVar var_12C
  loc_BFB3E1: FLdRfVar var_128
  loc_BFB3E4: FLdRfVar var_124
  loc_BFB3E7: ImpAdLdRf MemVar_D94034
  loc_BFB3EA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB3ED: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB3F2: FLdPr var_124
  loc_BFB3F5: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB3FA: FLdPr var_128
  loc_BFB3FD:  = Me.Fields
  loc_BFB402: FLdPr var_12C
  loc_BFB405: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB40A: FLdPr var_140
  loc_BFB40D:  = Me.Value
  loc_BFB412: FLdRfVar var_230
  loc_BFB415: FLdRfVar var_220
  loc_BFB418: LitVarStr var_21C, "Casa"
  loc_BFB41D: PopAdLdVar
  loc_BFB41E: FLdRfVar var_20C
  loc_BFB421: FLdRfVar var_208
  loc_BFB424: FLdRfVar var_1C4
  loc_BFB427: ImpAdLdRf MemVar_D94034
  loc_BFB42A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB42D: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB432: FLdPr var_1C4
  loc_BFB435: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB43A: FLdPr var_208
  loc_BFB43D:  = Me.Fields
  loc_BFB442: FLdPr var_20C
  loc_BFB445: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB44A: FLdPr var_220
  loc_BFB44D:  = Me.Value
  loc_BFB452: FLdRfVar var_280
  loc_BFB455: FLdRfVar var_270
  loc_BFB458: LitVarStr var_26C, "Casa"
  loc_BFB45D: PopAdLdVar
  loc_BFB45E: FLdRfVar var_25C
  loc_BFB461: FLdRfVar var_258
  loc_BFB464: FLdRfVar var_254
  loc_BFB467: ImpAdLdRf MemVar_D94034
  loc_BFB46A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB46D: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB472: FLdPr var_254
  loc_BFB475: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB47A: FLdPr var_258
  loc_BFB47D:  = Me.Fields
  loc_BFB482: FLdPr var_25C
  loc_BFB485: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB48A: FLdPr var_270
  loc_BFB48D:  = Me.Value
  loc_BFB492: FLdRfVar var_CC
  loc_BFB495: FLdRfVar var_BC
  loc_BFB498: LitVarStr var_9C, "DetaBarr"
  loc_BFB49D: PopAdLdVar
  loc_BFB49E: FLdRfVar var_B8
  loc_BFB4A1: FLdRfVar var_B4
  loc_BFB4A4: FLdRfVar var_88
  loc_BFB4A7: ImpAdLdRf MemVar_D94034
  loc_BFB4AA: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB4AD: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB4B2: FLdPr var_88
  loc_BFB4B5: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB4BA: FLdPr var_B4
  loc_BFB4BD:  = Me.Fields
  loc_BFB4C2: FLdPr var_B8
  loc_BFB4C5: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB4CA: FLdPr var_BC
  loc_BFB4CD:  = Me.Value
  loc_BFB4D2: FLdRfVar var_CC
  loc_BFB4D5: LitVarStr var_AC, " "
  loc_BFB4DA: ConcatVar var_F4
  loc_BFB4DE: LitVarStr var_190, vbNullString
  loc_BFB4E3: FStVarCopyObj var_1C0
  loc_BFB4E6: FLdRfVar var_1C0
  loc_BFB4E9: LitVarStr var_180, "Manz: "
  loc_BFB4EE: FLdRfVar var_170
  loc_BFB4F1: ConcatVar var_1A0
  loc_BFB4F5: FLdRfVar var_120
  loc_BFB4F8: LitVarStr var_13C, vbNullString
  loc_BFB4FD: HardType
  loc_BFB4FE: NeVar var_150
  loc_BFB502: FStVar var_1B0
  loc_BFB506: FLdRfVar var_1B0
  loc_BFB509: FLdRfVar var_1D4
  loc_BFB50C: ImpAdCallFPR4  = IIf(, , )
  loc_BFB511: FLdRfVar var_1D4
  loc_BFB514: ConcatVar var_1E4
  loc_BFB518: LitVarStr var_1F4, " "
  loc_BFB51D: ConcatVar var_204
  loc_BFB521: LitVarStr var_2C0, vbNullString
  loc_BFB526: FStVarCopyObj var_2D0
  loc_BFB529: FLdRfVar var_2D0
  loc_BFB52C: LitVarStr var_290, "Casa: "
  loc_BFB531: FLdRfVar var_280
  loc_BFB534: ConcatVar var_2A0
  loc_BFB538: FLdRfVar var_230
  loc_BFB53B: LitVarStr var_240, vbNullString
  loc_BFB540: HardType
  loc_BFB541: NeVar var_250
  loc_BFB545: FStVar var_2B0
  loc_BFB549: FLdRfVar var_2B0
  loc_BFB54C: FLdRfVar var_2E0
  loc_BFB54F: ImpAdCallFPR4  = IIf(, , )
  loc_BFB554: FLdRfVar var_2E0
  loc_BFB557: ConcatVar var_2F0
  loc_BFB55B: CStrVarVal var_E0
  loc_BFB55F: FLdPr Me
  loc_BFB562: VCallAd Control_ID_BarrPersLbl
  loc_BFB565: FStAdFunc var_2F4
  loc_BFB568: FLdPr var_2F4
  loc_BFB56B: Me.Caption = from_stack_1
  loc_BFB570: FFree1Str var_E0
  loc_BFB573: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = "": var_E4 = "": var_F8 = "": var_FC = "": var_110 = "": var_124 = "": var_128 = "": var_12C = "": var_140 = "": var_1C4 = "": var_208 = "": var_20C = "": var_220 = "": var_254 = "": var_258 = "": var_25C = "": var_270 = ""
  loc_BFB5A0: FFreeVar var_CC = "": var_120 = "": var_170 = "": var_1B0 = "": var_1A0 = "": var_1C0 = "": var_F4 = "": var_1D4 = "": var_1E4 = "": var_230 = "": var_280 = "": var_2B0 = "": var_2A0 = "": var_2D0 = "": var_204 = "": var_2E0 = ""
  loc_BFB5C5: FLdRfVar var_CC
  loc_BFB5C8: FLdRfVar var_BC
  loc_BFB5CB: LitVarStr var_9C, "Ubicacion"
  loc_BFB5D0: PopAdLdVar
  loc_BFB5D1: FLdRfVar var_B8
  loc_BFB5D4: FLdRfVar var_B4
  loc_BFB5D7: FLdRfVar var_88
  loc_BFB5DA: ImpAdLdRf MemVar_D94034
  loc_BFB5DD: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_BFB5E0: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_BFB5E5: FLdPr var_88
  loc_BFB5E8: from_stack_1v = clsbase.RsFrmGet()
  loc_BFB5ED: FLdPr var_B4
  loc_BFB5F0:  = Me.Fields
  loc_BFB5F5: FLdPr var_B8
  loc_BFB5F8: from_stack_2 = Me.Item(from_stack_1)
  loc_BFB5FD: FLdPr var_BC
  loc_BFB600:  = Me.Value
  loc_BFB605: FLdRfVar var_CC
  loc_BFB608: CStrVarTmp
  loc_BFB609: FStStrNoPop var_E0
  loc_BFB60C: FLdPr Me
  loc_BFB60F: VCallAd Control_ID_LocaPersLbl
  loc_BFB612: FStAdFunc var_E4
  loc_BFB615: FLdPr var_E4
  loc_BFB618: Me.Caption = from_stack_1
  loc_BFB61D: FFree1Str var_E0
  loc_BFB620: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_BFB62D: FFree1Var var_CC = ""
  loc_BFB630: Branch loc_BFB6BD
  loc_BFB633: LitStr vbNullString
  loc_BFB636: FLdPr Me
  loc_BFB639: VCallAd Control_ID_NumeCtaTxt
  loc_BFB63C: FStAdFunc var_88
  loc_BFB63F: FLdPr var_88
  loc_BFB642: Me.Text = from_stack_1
  loc_BFB647: FFree1Ad var_88
  loc_BFB64A: LitStr vbNullString
  loc_BFB64D: FLdPr Me
  loc_BFB650: VCallAd Control_ID_CucuPersLbl
  loc_BFB653: FStAdFunc var_88
  loc_BFB656: FLdPr var_88
  loc_BFB659: Me.Caption = from_stack_1
  loc_BFB65E: FFree1Ad var_88
  loc_BFB661: LitStr vbNullString
  loc_BFB664: FLdPr Me
  loc_BFB667: VCallAd Control_ID_DetaPersLbl
  loc_BFB66A: FStAdFunc var_88
  loc_BFB66D: FLdPr var_88
  loc_BFB670: Me.Caption = from_stack_1
  loc_BFB675: FFree1Ad var_88
  loc_BFB678: LitStr vbNullString
  loc_BFB67B: FLdPr Me
  loc_BFB67E: VCallAd Control_ID_DomiPersLbl
  loc_BFB681: FStAdFunc var_88
  loc_BFB684: FLdPr var_88
  loc_BFB687: Me.Caption = from_stack_1
  loc_BFB68C: FFree1Ad var_88
  loc_BFB68F: LitStr vbNullString
  loc_BFB692: FLdPr Me
  loc_BFB695: VCallAd Control_ID_BarrPersLbl
  loc_BFB698: FStAdFunc var_88
  loc_BFB69B: FLdPr var_88
  loc_BFB69E: Me.Caption = from_stack_1
  loc_BFB6A3: FFree1Ad var_88
  loc_BFB6A6: LitStr vbNullString
  loc_BFB6A9: FLdPr Me
  loc_BFB6AC: VCallAd Control_ID_LocaPersLbl
  loc_BFB6AF: FStAdFunc var_88
  loc_BFB6B2: FLdPr var_88
  loc_BFB6B5: Me.Caption = from_stack_1
  loc_BFB6BA: FFree1Ad var_88
  loc_BFB6BD: FLdPr Me
  loc_BFB6C0: VCallAd Control_ID_NumeCtaTxt
  loc_BFB6C3: CVarAd
  loc_BFB6C7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BFB6CC: FFree1Var var_CC = ""
  loc_BFB6CF: ExitProcHresult
End Sub

Private Sub Form_Load() 'C1E160
  'Data Table: 51A85C
  loc_C1D738: LitVar_Missing var_94
  loc_C1D73B: PopAdLdVar
  loc_C1D73C: LitStr "Inmueble"
  loc_C1D73F: FLdPr Me
  loc_C1D742: VCallAd Control_ID_OficinaCbo
  loc_C1D745: FStAdFunc var_98
  loc_C1D748: FLdPr var_98
  loc_C1D74B: Me.AddItem from_stack_1, from_stack_2
  loc_C1D750: FFree1Ad var_98
  loc_C1D753: LitVar_Missing var_94
  loc_C1D756: PopAdLdVar
  loc_C1D757: LitStr "Comercio"
  loc_C1D75A: FLdPr Me
  loc_C1D75D: VCallAd Control_ID_OficinaCbo
  loc_C1D760: FStAdFunc var_98
  loc_C1D763: FLdPr var_98
  loc_C1D766: Me.AddItem from_stack_1, from_stack_2
  loc_C1D76B: FFree1Ad var_98
  loc_C1D76E: LitVar_Missing var_94
  loc_C1D771: PopAdLdVar
  loc_C1D772: LitStr "Deudores Varios"
  loc_C1D775: FLdPr Me
  loc_C1D778: VCallAd Control_ID_OficinaCbo
  loc_C1D77B: FStAdFunc var_98
  loc_C1D77E: FLdPr var_98
  loc_C1D781: Me.AddItem from_stack_1, from_stack_2
  loc_C1D786: FFree1Ad var_98
  loc_C1D789: LitVar_Missing var_94
  loc_C1D78C: PopAdLdVar
  loc_C1D78D: LitStr "Cementerio"
  loc_C1D790: FLdPr Me
  loc_C1D793: VCallAd Control_ID_OficinaCbo
  loc_C1D796: FStAdFunc var_98
  loc_C1D799: FLdPr var_98
  loc_C1D79C: Me.AddItem from_stack_1, from_stack_2
  loc_C1D7A1: FFree1Ad var_98
  loc_C1D7A4: LitVar_Missing var_94
  loc_C1D7A7: PopAdLdVar
  loc_C1D7A8: LitStr "Transito"
  loc_C1D7AB: FLdPr Me
  loc_C1D7AE: VCallAd Control_ID_OficinaCbo
  loc_C1D7B1: FStAdFunc var_98
  loc_C1D7B4: FLdPr var_98
  loc_C1D7B7: Me.AddItem from_stack_1, from_stack_2
  loc_C1D7BC: FFree1Ad var_98
  loc_C1D7BF: LitI2_Byte 4
  loc_C1D7C1: FLdPr Me
  loc_C1D7C4: VCallAd Control_ID_OficinaCbo
  loc_C1D7C7: FStAdFunc var_98
  loc_C1D7CA: FLdPr var_98
  loc_C1D7CD: Me.ListIndex = from_stack_1
  loc_C1D7D2: FFree1Ad var_98
  loc_C1D7D5: LitStr "0"
  loc_C1D7D8: FLdPr Me
  loc_C1D7DB: VCallAd Control_ID_NumeCtaTxt
  loc_C1D7DE: FStAdFunc var_98
  loc_C1D7E1: FLdPr var_98
  loc_C1D7E4: Me.Text = from_stack_1
  loc_C1D7E9: FFree1Ad var_98
  loc_C1D7EC: LitI2_Byte 0
  loc_C1D7EE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1D7F3: CStrDate
  loc_C1D7F5: CVarStr var_A8
  loc_C1D7F8: PopAdLdVar
  loc_C1D7F9: FLdPr Me
  loc_C1D7FC: VCallAd Control_ID_FechVencMsk
  loc_C1D7FF: FStAdFunc var_98
  loc_C1D802: FLdPr var_98
  loc_C1D805: LateIdSt
  loc_C1D80A: FFree1Ad var_98
  loc_C1D80D: FFree1Var var_A8 = ""
  loc_C1D810: LitI2_Byte 0
  loc_C1D812: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1D817: CStrDate
  loc_C1D819: CVarStr var_A8
  loc_C1D81C: PopAdLdVar
  loc_C1D81D: FLdPr Me
  loc_C1D820: VCallAd Control_ID_FechActaMsk
  loc_C1D823: FStAdFunc var_98
  loc_C1D826: FLdPr var_98
  loc_C1D829: LateIdSt
  loc_C1D82E: FFree1Ad var_98
  loc_C1D831: FFree1Var var_A8 = ""
  loc_C1D834: FLdPr Me
  loc_C1D837: VCallAd Control_ID_FechActaMsk
  loc_C1D83A: FStAdFunc var_98
  loc_C1D83D: FLdPr var_98
  loc_C1D840: LateIdLdVar var_A8 DispID_15 0
  loc_C1D847: PopAd
  loc_C1D849: LitI2_Byte &HA
  loc_C1D84B: CUI1I2
  loc_C1D84D: PopTmpLdAd1
  loc_C1D851: FLdRfVar var_A8
  loc_C1D854: CStrVarTmp
  loc_C1D855: FStStrNoPop var_AC
  loc_C1D858: CDateStr
  loc_C1D85A: PopTmpLdAdFPR8
  loc_C1D85E: ImpAdCallFPR4 Proc_18_127_AE5A54(, )
  loc_C1D863: CStrDate
  loc_C1D865: CVarStr var_C8
  loc_C1D868: PopAdLdVar
  loc_C1D869: FLdPr Me
  loc_C1D86C: VCallAd Control_ID_FeveCtctMsk
  loc_C1D86F: FStAdFunc var_CC
  loc_C1D872: FLdPr var_CC
  loc_C1D875: LateIdSt
  loc_C1D87A: FFree1Str var_AC
  loc_C1D87D: FFreeAd var_98 = ""
  loc_C1D884: FFreeVar var_A8 = ""
  loc_C1D88B: LitI2_Byte 0
  loc_C1D88D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1D892: CVarDate var_A8
  loc_C1D896: FLdRfVar var_C8
  loc_C1D899: ImpAdCallFPR4  = Year()
  loc_C1D89E: FLdRfVar var_C8
  loc_C1D8A1: CStrVarTmp
  loc_C1D8A2: CVarStr var_DC
  loc_C1D8A5: PopAdLdVar
  loc_C1D8A6: FLdPr Me
  loc_C1D8A9: VCallAd Control_ID_PeriCtctMsk
  loc_C1D8AC: FStAdFunc var_98
  loc_C1D8AF: FLdPr var_98
  loc_C1D8B2: LateIdSt
  loc_C1D8B7: FFree1Ad var_98
  loc_C1D8BA: FFreeVar var_A8 = "": var_C8 = ""
  loc_C1D8C3: LitI2_Byte 0
  loc_C1D8C5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C1D8CA: CVarDate var_A8
  loc_C1D8CE: FLdRfVar var_C8
  loc_C1D8D1: ImpAdCallFPR4  = Month()
  loc_C1D8D6: FLdRfVar var_C8
  loc_C1D8D9: CStrVarTmp
  loc_C1D8DA: CVarStr var_DC
  loc_C1D8DD: PopAdLdVar
  loc_C1D8DE: FLdPr Me
  loc_C1D8E1: VCallAd Control_ID_BimeCtctMsk
  loc_C1D8E4: FStAdFunc var_98
  loc_C1D8E7: FLdPr var_98
  loc_C1D8EA: LateIdSt
  loc_C1D8EF: FFree1Ad var_98
  loc_C1D8F2: FFreeVar var_A8 = "": var_C8 = ""
  loc_C1D8FB: LitStr vbNullString
  loc_C1D8FE: FLdPr Me
  loc_C1D901: VCallAd Control_ID_ExpeCtctTxt
  loc_C1D904: FStAdFunc var_98
  loc_C1D907: FLdPr var_98
  loc_C1D90A: Me.Text = from_stack_1
  loc_C1D90F: FFree1Ad var_98
  loc_C1D912: LitI2_Byte 0
  loc_C1D914: FLdPr Me
  loc_C1D917: VCallAd Control_ID_RedondeoChk
  loc_C1D91A: FStAdFunc var_98
  loc_C1D91D: FLdPr var_98
  loc_C1D920: Me.Visible = from_stack_1b
  loc_C1D925: FFree1Ad var_98
  loc_C1D928: FLdPr Me
  loc_C1D92B: VCallAd Control_ID_ctacteFlex
  loc_C1D92E: FStAdFunc var_F0
  loc_C1D931: LitVarI4
  loc_C1D939: PopAdLdVar
  loc_C1D93A: LitVarI4
  loc_C1D942: PopAdLdVar
  loc_C1D943: FLdPr var_F0
  loc_C1D946: LateIdCallSt
  loc_C1D94E: LitVarI4
  loc_C1D956: PopAdLdVar
  loc_C1D957: LitVarI4
  loc_C1D95F: PopAdLdVar
  loc_C1D960: FLdPr var_F0
  loc_C1D963: LateIdCallSt
  loc_C1D96B: LitVarI4
  loc_C1D973: PopAdLdVar
  loc_C1D974: LitVarI4
  loc_C1D97C: PopAdLdVar
  loc_C1D97D: FLdPr var_F0
  loc_C1D980: LateIdCallSt
  loc_C1D988: LitVarI4
  loc_C1D990: PopAdLdVar
  loc_C1D991: LitVarI4
  loc_C1D999: PopAdLdVar
  loc_C1D99A: FLdPr var_F0
  loc_C1D99D: LateIdCallSt
  loc_C1D9A5: LitVarI4
  loc_C1D9AD: PopAdLdVar
  loc_C1D9AE: LitVarI4
  loc_C1D9B6: PopAdLdVar
  loc_C1D9B7: FLdPr var_F0
  loc_C1D9BA: LateIdCallSt
  loc_C1D9C2: LitVarI4
  loc_C1D9CA: PopAdLdVar
  loc_C1D9CB: LitVarI4
  loc_C1D9D3: PopAdLdVar
  loc_C1D9D4: FLdPr var_F0
  loc_C1D9D7: LateIdCallSt
  loc_C1D9DF: LitVarI4
  loc_C1D9E7: PopAdLdVar
  loc_C1D9E8: LitVarI4
  loc_C1D9F0: PopAdLdVar
  loc_C1D9F1: FLdPr var_F0
  loc_C1D9F4: LateIdCallSt
  loc_C1D9FC: LitVarI4
  loc_C1DA04: PopAdLdVar
  loc_C1DA05: LitVarI4
  loc_C1DA0D: PopAdLdVar
  loc_C1DA0E: FLdPr var_F0
  loc_C1DA11: LateIdCallSt
  loc_C1DA19: LitVarI4
  loc_C1DA21: PopAdLdVar
  loc_C1DA22: LitVarI4
  loc_C1DA2A: PopAdLdVar
  loc_C1DA2B: FLdPr var_F0
  loc_C1DA2E: LateIdCallSt
  loc_C1DA36: LitVarI4
  loc_C1DA3E: PopAdLdVar
  loc_C1DA3F: LitVarI4
  loc_C1DA47: PopAdLdVar
  loc_C1DA48: FLdPr var_F0
  loc_C1DA4B: LateIdCallSt
  loc_C1DA53: LitVarI4
  loc_C1DA5B: PopAdLdVar
  loc_C1DA5C: LitVarI4
  loc_C1DA64: PopAdLdVar
  loc_C1DA65: FLdPr var_F0
  loc_C1DA68: LateIdCallSt
  loc_C1DA70: LitVarI4
  loc_C1DA78: PopAdLdVar
  loc_C1DA79: LitVarI4
  loc_C1DA81: PopAdLdVar
  loc_C1DA82: FLdPr var_F0
  loc_C1DA85: LateIdCallSt
  loc_C1DA8D: LitVarI4
  loc_C1DA95: PopAdLdVar
  loc_C1DA96: LitVarI4
  loc_C1DA9E: PopAdLdVar
  loc_C1DA9F: FLdPr var_F0
  loc_C1DAA2: LateIdCallSt
  loc_C1DAAA: LitVarI4
  loc_C1DAB2: PopAdLdVar
  loc_C1DAB3: LitVarI4
  loc_C1DABB: PopAdLdVar
  loc_C1DABC: FLdPr var_F0
  loc_C1DABF: LateIdCallSt
  loc_C1DAC7: LitVarI4
  loc_C1DACF: PopAdLdVar
  loc_C1DAD0: LitVarI4
  loc_C1DAD8: PopAdLdVar
  loc_C1DAD9: FLdPr var_F0
  loc_C1DADC: LateIdCallSt
  loc_C1DAE4: LitVarI4
  loc_C1DAEC: PopAdLdVar
  loc_C1DAED: LitVarI4
  loc_C1DAF5: PopAdLdVar
  loc_C1DAF6: FLdPr var_F0
  loc_C1DAF9: LateIdCallSt
  loc_C1DB01: LitVarI4
  loc_C1DB09: PopAdLdVar
  loc_C1DB0A: LitVarI4
  loc_C1DB12: PopAdLdVar
  loc_C1DB13: FLdPr var_F0
  loc_C1DB16: LateIdCallSt
  loc_C1DB1E: LitVarI4
  loc_C1DB26: PopAdLdVar
  loc_C1DB27: LitVarI4
  loc_C1DB2F: PopAdLdVar
  loc_C1DB30: LitVarStr var_120, "Of"
  loc_C1DB35: PopAdLdVar
  loc_C1DB36: FLdPr var_F0
  loc_C1DB39: LateIdCallSt
  loc_C1DB41: LitVarI4
  loc_C1DB49: PopAdLdVar
  loc_C1DB4A: LitVarI4
  loc_C1DB52: PopAdLdVar
  loc_C1DB53: LitVarStr var_120, "Cuenta"
  loc_C1DB58: PopAdLdVar
  loc_C1DB59: FLdPr var_F0
  loc_C1DB5C: LateIdCallSt
  loc_C1DB64: LitVarI4
  loc_C1DB6C: PopAdLdVar
  loc_C1DB6D: LitVarI4
  loc_C1DB75: PopAdLdVar
  loc_C1DB76: LitVarStr var_120, "Periodo"
  loc_C1DB7B: PopAdLdVar
  loc_C1DB7C: FLdPr var_F0
  loc_C1DB7F: LateIdCallSt
  loc_C1DB87: LitVarI4
  loc_C1DB8F: PopAdLdVar
  loc_C1DB90: LitVarI4
  loc_C1DB98: PopAdLdVar
  loc_C1DB99: LitVarStr var_120, "Boleto"
  loc_C1DB9E: PopAdLdVar
  loc_C1DB9F: FLdPr var_F0
  loc_C1DBA2: LateIdCallSt
  loc_C1DBAA: LitVarI4
  loc_C1DBB2: PopAdLdVar
  loc_C1DBB3: LitVarI4
  loc_C1DBBB: PopAdLdVar
  loc_C1DBBC: LitVarStr var_120, "Emision"
  loc_C1DBC1: PopAdLdVar
  loc_C1DBC2: FLdPr var_F0
  loc_C1DBC5: LateIdCallSt
  loc_C1DBCD: LitVarI4
  loc_C1DBD5: PopAdLdVar
  loc_C1DBD6: LitVarI4
  loc_C1DBDE: PopAdLdVar
  loc_C1DBDF: LitVarStr var_120, "Vencimiento"
  loc_C1DBE4: PopAdLdVar
  loc_C1DBE5: FLdPr var_F0
  loc_C1DBE8: LateIdCallSt
  loc_C1DBF0: LitVarI4
  loc_C1DBF8: PopAdLdVar
  loc_C1DBF9: LitVarI4
  loc_C1DC01: PopAdLdVar
  loc_C1DC02: LitVarStr var_120, "Concepto"
  loc_C1DC07: PopAdLdVar
  loc_C1DC08: FLdPr var_F0
  loc_C1DC0B: LateIdCallSt
  loc_C1DC13: LitVarI4
  loc_C1DC1B: PopAdLdVar
  loc_C1DC1C: LitVarI4
  loc_C1DC24: PopAdLdVar
  loc_C1DC25: LitVarStr var_120, "Facilidad"
  loc_C1DC2A: PopAdLdVar
  loc_C1DC2B: FLdPr var_F0
  loc_C1DC2E: LateIdCallSt
  loc_C1DC36: LitVarI4
  loc_C1DC3E: PopAdLdVar
  loc_C1DC3F: LitVarI4
  loc_C1DC47: PopAdLdVar
  loc_C1DC48: LitVarStr var_120, "Apremio"
  loc_C1DC4D: PopAdLdVar
  loc_C1DC4E: FLdPr var_F0
  loc_C1DC51: LateIdCallSt
  loc_C1DC59: LitVarI4
  loc_C1DC61: PopAdLdVar
  loc_C1DC62: LitVarI4
  loc_C1DC6A: PopAdLdVar
  loc_C1DC6B: LitVarStr var_120, "Exp/Comp"
  loc_C1DC70: PopAdLdVar
  loc_C1DC71: FLdPr var_F0
  loc_C1DC74: LateIdCallSt
  loc_C1DC7C: LitVarI4
  loc_C1DC84: PopAdLdVar
  loc_C1DC85: LitVarI4
  loc_C1DC8D: PopAdLdVar
  loc_C1DC8E: LitVarStr var_120, "Tipo Mov"
  loc_C1DC93: PopAdLdVar
  loc_C1DC94: FLdPr var_F0
  loc_C1DC97: LateIdCallSt
  loc_C1DC9F: LitVarI4
  loc_C1DCA7: PopAdLdVar
  loc_C1DCA8: LitVarI4
  loc_C1DCB0: PopAdLdVar
  loc_C1DCB1: LitVarStr var_120, "Debito"
  loc_C1DCB6: PopAdLdVar
  loc_C1DCB7: FLdPr var_F0
  loc_C1DCBA: LateIdCallSt
  loc_C1DCC2: LitVarI4
  loc_C1DCCA: PopAdLdVar
  loc_C1DCCB: LitVarI4
  loc_C1DCD3: PopAdLdVar
  loc_C1DCD4: LitVarStr var_120, "Recargo"
  loc_C1DCD9: PopAdLdVar
  loc_C1DCDA: FLdPr var_F0
  loc_C1DCDD: LateIdCallSt
  loc_C1DCE5: LitVarI4
  loc_C1DCED: PopAdLdVar
  loc_C1DCEE: LitVarI4
  loc_C1DCF6: PopAdLdVar
  loc_C1DCF7: LitVarStr var_120, "Saldo"
  loc_C1DCFC: PopAdLdVar
  loc_C1DCFD: FLdPr var_F0
  loc_C1DD00: LateIdCallSt
  loc_C1DD08: LitVarI4
  loc_C1DD10: PopAdLdVar
  loc_C1DD11: LitVarI4
  loc_C1DD19: PopAdLdVar
  loc_C1DD1A: LitVarStr var_120, "Sel"
  loc_C1DD1F: PopAdLdVar
  loc_C1DD20: FLdPr var_F0
  loc_C1DD23: LateIdCallSt
  loc_C1DD2B: LitVarI4
  loc_C1DD33: PopAdLdVar
  loc_C1DD34: LitVarI4
  loc_C1DD3C: PopAdLdVar
  loc_C1DD3D: LitVarStr var_120, "Numero"
  loc_C1DD42: PopAdLdVar
  loc_C1DD43: FLdPr var_F0
  loc_C1DD46: LateIdCallSt
  loc_C1DD4E: LitVarI4
  loc_C1DD56: PopAdLdVar
  loc_C1DD57: LitVarI4
  loc_C1DD5F: PopAdLdVar
  loc_C1DD60: LitVarStr var_120, "Mov"
  loc_C1DD65: PopAdLdVar
  loc_C1DD66: FLdPr var_F0
  loc_C1DD69: LateIdCallSt
  loc_C1DD71: LitNothing
  loc_C1DD73: FStAd var_F0 
  loc_C1DD77: FLdPr Me
  loc_C1DD7A: VCallAd Control_ID_ServDevaFlex
  loc_C1DD7D: FStAdFunc var_134
  loc_C1DD80: LitVarI4
  loc_C1DD88: PopAdLdVar
  loc_C1DD89: LitVarI4
  loc_C1DD91: PopAdLdVar
  loc_C1DD92: FLdPr var_134
  loc_C1DD95: LateIdCallSt
  loc_C1DD9D: LitVarI4
  loc_C1DDA5: PopAdLdVar
  loc_C1DDA6: LitVarI4
  loc_C1DDAE: PopAdLdVar
  loc_C1DDAF: FLdPr var_134
  loc_C1DDB2: LateIdCallSt
  loc_C1DDBA: LitVarI4
  loc_C1DDC2: PopAdLdVar
  loc_C1DDC3: LitVarI4
  loc_C1DDCB: PopAdLdVar
  loc_C1DDCC: FLdPr var_134
  loc_C1DDCF: LateIdCallSt
  loc_C1DDD7: LitVarI4
  loc_C1DDDF: PopAdLdVar
  loc_C1DDE0: LitVarI4
  loc_C1DDE8: PopAdLdVar
  loc_C1DDE9: FLdPr var_134
  loc_C1DDEC: LateIdCallSt
  loc_C1DDF4: LitVarI4
  loc_C1DDFC: PopAdLdVar
  loc_C1DDFD: LitVarI4
  loc_C1DE05: PopAdLdVar
  loc_C1DE06: FLdPr var_134
  loc_C1DE09: LateIdCallSt
  loc_C1DE11: LitVarI4
  loc_C1DE19: PopAdLdVar
  loc_C1DE1A: LitVarI4
  loc_C1DE22: PopAdLdVar
  loc_C1DE23: FLdPr var_134
  loc_C1DE26: LateIdCallSt
  loc_C1DE2E: LitVarI4
  loc_C1DE36: PopAdLdVar
  loc_C1DE37: LitVarI4
  loc_C1DE3F: PopAdLdVar
  loc_C1DE40: FLdPr var_134
  loc_C1DE43: LateIdCallSt
  loc_C1DE4B: LitVarI4
  loc_C1DE53: PopAdLdVar
  loc_C1DE54: LitVarI4
  loc_C1DE5C: PopAdLdVar
  loc_C1DE5D: FLdPr var_134
  loc_C1DE60: LateIdCallSt
  loc_C1DE68: LitVarI4
  loc_C1DE70: PopAdLdVar
  loc_C1DE71: LitVarI4
  loc_C1DE79: PopAdLdVar
  loc_C1DE7A: FLdPr var_134
  loc_C1DE7D: LateIdCallSt
  loc_C1DE85: LitVarI4
  loc_C1DE8D: PopAdLdVar
  loc_C1DE8E: LitVarI4
  loc_C1DE96: PopAdLdVar
  loc_C1DE97: LitVarStr var_120, "Cant."
  loc_C1DE9C: PopAdLdVar
  loc_C1DE9D: FLdPr var_134
  loc_C1DEA0: LateIdCallSt
  loc_C1DEA8: LitVarI4
  loc_C1DEB0: PopAdLdVar
  loc_C1DEB1: LitVarI4
  loc_C1DEB9: PopAdLdVar
  loc_C1DEBA: LitVarStr var_120, "Cod."
  loc_C1DEBF: PopAdLdVar
  loc_C1DEC0: FLdPr var_134
  loc_C1DEC3: LateIdCallSt
  loc_C1DECB: LitVarI4
  loc_C1DED3: PopAdLdVar
  loc_C1DED4: LitVarI4
  loc_C1DEDC: PopAdLdVar
  loc_C1DEDD: LitVarStr var_120, "Detalle o Servicio"
  loc_C1DEE2: PopAdLdVar
  loc_C1DEE3: FLdPr var_134
  loc_C1DEE6: LateIdCallSt
  loc_C1DEEE: LitVarI4
  loc_C1DEF6: PopAdLdVar
  loc_C1DEF7: LitVarI4
  loc_C1DEFF: PopAdLdVar
  loc_C1DF00: LitVarStr var_120, "Importe"
  loc_C1DF05: PopAdLdVar
  loc_C1DF06: FLdPr var_134
  loc_C1DF09: LateIdCallSt
  loc_C1DF11: LitVarI4
  loc_C1DF19: PopAdLdVar
  loc_C1DF1A: LitVarI4
  loc_C1DF22: PopAdLdVar
  loc_C1DF23: LitVarStr var_120, "Total"
  loc_C1DF28: PopAdLdVar
  loc_C1DF29: FLdPr var_134
  loc_C1DF2C: LateIdCallSt
  loc_C1DF34: LitVarI4
  loc_C1DF3C: PopAdLdVar
  loc_C1DF3D: LitVarI4
  loc_C1DF45: PopAdLdVar
  loc_C1DF46: LitVarStr var_120, "Periodo"
  loc_C1DF4B: PopAdLdVar
  loc_C1DF4C: FLdPr var_134
  loc_C1DF4F: LateIdCallSt
  loc_C1DF57: LitVarI4
  loc_C1DF5F: PopAdLdVar
  loc_C1DF60: LitVarI4
  loc_C1DF68: PopAdLdVar
  loc_C1DF69: LitVarStr var_120, "Concepto"
  loc_C1DF6E: PopAdLdVar
  loc_C1DF6F: FLdPr var_134
  loc_C1DF72: LateIdCallSt
  loc_C1DF7A: LitVarI4
  loc_C1DF82: PopAdLdVar
  loc_C1DF83: LitVarI4
  loc_C1DF8B: PopAdLdVar
  loc_C1DF8C: LitVarStr var_120, "Fijo"
  loc_C1DF91: PopAdLdVar
  loc_C1DF92: FLdPr var_134
  loc_C1DF95: LateIdCallSt
  loc_C1DF9D: LitVarI4
  loc_C1DFA5: PopAdLdVar
  loc_C1DFA6: LitVarI4
  loc_C1DFAE: PopAdLdVar
  loc_C1DFAF: LitVarStr var_120, "TiafConc"
  loc_C1DFB4: PopAdLdVar
  loc_C1DFB5: FLdPr var_134
  loc_C1DFB8: LateIdCallSt
  loc_C1DFC0: LitNothing
  loc_C1DFC2: FStAd var_134 
  loc_C1DFC6: LitVarStr var_94, vbNullString
  loc_C1DFCB: LitI4 9
  loc_C1DFD0: FLdRfVar var_A8
  loc_C1DFD3: ImpAdCallFPR4  = Chr()
  loc_C1DFD8: FLdRfVar var_A8
  loc_C1DFDB: ConcatVar var_C8
  loc_C1DFDF: LitVarStr var_EC, vbNullString
  loc_C1DFE4: ConcatVar var_DC
  loc_C1DFE8: LitI4 9
  loc_C1DFED: FLdRfVar var_144
  loc_C1DFF0: ImpAdCallFPR4  = Chr()
  loc_C1DFF5: FLdRfVar var_144
  loc_C1DFF8: ConcatVar var_154
  loc_C1DFFC: LitVarStr var_100, vbNullString
  loc_C1E001: ConcatVar var_164
  loc_C1E005: LitI4 9
  loc_C1E00A: FLdRfVar var_174
  loc_C1E00D: ImpAdCallFPR4  = Chr()
  loc_C1E012: FLdRfVar var_174
  loc_C1E015: ConcatVar var_184
  loc_C1E019: LitVarStr var_110, vbNullString
  loc_C1E01E: ConcatVar var_194
  loc_C1E022: LitI4 9
  loc_C1E027: FLdRfVar var_1A4
  loc_C1E02A: ImpAdCallFPR4  = Chr()
  loc_C1E02F: FLdRfVar var_1A4
  loc_C1E032: ConcatVar var_1B4
  loc_C1E036: LitVarStr var_120, vbNullString
  loc_C1E03B: ConcatVar var_1C4
  loc_C1E03F: LitI4 9
  loc_C1E044: FLdRfVar var_1D4
  loc_C1E047: ImpAdCallFPR4  = Chr()
  loc_C1E04C: FLdRfVar var_1D4
  loc_C1E04F: ConcatVar var_1E4
  loc_C1E053: LitVarStr var_130, vbNullString
  loc_C1E058: ConcatVar var_1F4
  loc_C1E05C: LitI4 9
  loc_C1E061: FLdRfVar var_204
  loc_C1E064: ImpAdCallFPR4  = Chr()
  loc_C1E069: FLdRfVar var_204
  loc_C1E06C: ConcatVar var_214
  loc_C1E070: LitVarStr var_224, vbNullString
  loc_C1E075: ConcatVar var_234
  loc_C1E079: LitI4 9
  loc_C1E07E: FLdRfVar var_244
  loc_C1E081: ImpAdCallFPR4  = Chr()
  loc_C1E086: FLdRfVar var_244
  loc_C1E089: ConcatVar var_254
  loc_C1E08D: LitVarStr var_264, "0"
  loc_C1E092: ConcatVar var_274
  loc_C1E096: LitI4 9
  loc_C1E09B: FLdRfVar var_284
  loc_C1E09E: ImpAdCallFPR4  = Chr()
  loc_C1E0A3: FLdRfVar var_284
  loc_C1E0A6: ConcatVar var_294
  loc_C1E0AA: LitVarStr var_2A4, "0"
  loc_C1E0AF: ConcatVar var_2B4
  loc_C1E0B3: CStrVarTmp
  loc_C1E0B4: FStStrNoPop var_AC
  loc_C1E0B7: FLdPr Me
  loc_C1E0BA: MemStStrCopy
  loc_C1E0BE: FFree1Str var_AC
  loc_C1E0C1: FFreeVar var_A8 = "": var_C8 = "": var_DC = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_214 = "": var_234 = "": var_244 = "": var_254 = "": var_274 = "": var_284 = "": var_294 = ""
  loc_C1E0F4: FLdPr Me
  loc_C1E0F7: MemLdRfVar from_stack_1.global_72
  loc_C1E0FA: CDargRef
  loc_C1E0FE: FLdPr Me
  loc_C1E101: VCallAd Control_ID_ServDevaFlex
  loc_C1E104: FStAdFunc var_98
  loc_C1E107: FLdPr var_98
  loc_C1E10A: LateIdCall
  loc_C1E112: FFree1Ad var_98
  loc_C1E115: Call Proc_275_38_B28C04()
  loc_C1E11A: LitI4 0
  loc_C1E11F: LitI4 1
  loc_C1E124: FLdRfVar var_2B8
  loc_C1E127: Redim
  loc_C1E131: FLdPr Me
  loc_C1E134: VCallAd Control_ID_OficinaCbo
  loc_C1E137: CVarAd
  loc_C1E13B: ParmAry1St
  loc_C1E141: FLdPr Me
  loc_C1E144: VCallAd Control_ID_ConfirmarCmd
  loc_C1E147: CVarAd
  loc_C1E14B: ParmAry1St
  loc_C1E151: FLdRfVar var_2B8
  loc_C1E154: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C1E159: FLdRfVar var_2B8
  loc_C1E15C: Erase
  loc_C1E15D: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA2A4
  'Data Table: 51A85C
  loc_9BA290: ILdI2 KeyCode
  loc_9BA293: CI4UI1
  loc_9BA294: LitI4 &H78
  loc_9BA299: EqI4
  loc_9BA29A: BranchF loc_9BA2A2
  loc_9BA29D: Call SalirCmd_Click()
  loc_9BA2A2: ExitProcHresult
End Sub

Private Function Proc_275_37_B188E8() 'B188E8
  'Data Table: 51A85C
  loc_B1865C: FLdPr Me
  loc_B1865F: VCallAd Control_ID_ctacteFlex
  loc_B18662: FStAdFunc var_88
  loc_B18665: FLdPr var_88
  loc_B18668: LateIdCall
  loc_B18670: LitVarI4
  loc_B18678: PopAdLdVar
  loc_B18679: FLdPr var_88
  loc_B1867C: LateIdSt
  loc_B18681: LitVarI4
  loc_B18689: PopAdLdVar
  loc_B1868A: LitVarI4
  loc_B18692: PopAdLdVar
  loc_B18693: LitVarStr var_D8, "Of"
  loc_B18698: PopAdLdVar
  loc_B18699: FLdPr var_88
  loc_B1869C: LateIdCallSt
  loc_B186A4: LitVarI4
  loc_B186AC: PopAdLdVar
  loc_B186AD: LitVarI4
  loc_B186B5: PopAdLdVar
  loc_B186B6: LitVarStr var_D8, "Cuenta"
  loc_B186BB: PopAdLdVar
  loc_B186BC: FLdPr var_88
  loc_B186BF: LateIdCallSt
  loc_B186C7: LitVarI4
  loc_B186CF: PopAdLdVar
  loc_B186D0: LitVarI4
  loc_B186D8: PopAdLdVar
  loc_B186D9: LitVarStr var_D8, "Periodo"
  loc_B186DE: PopAdLdVar
  loc_B186DF: FLdPr var_88
  loc_B186E2: LateIdCallSt
  loc_B186EA: LitVarI4
  loc_B186F2: PopAdLdVar
  loc_B186F3: LitVarI4
  loc_B186FB: PopAdLdVar
  loc_B186FC: LitVarStr var_D8, "Boleto"
  loc_B18701: PopAdLdVar
  loc_B18702: FLdPr var_88
  loc_B18705: LateIdCallSt
  loc_B1870D: LitVarI4
  loc_B18715: PopAdLdVar
  loc_B18716: LitVarI4
  loc_B1871E: PopAdLdVar
  loc_B1871F: LitVarStr var_D8, "Emision"
  loc_B18724: PopAdLdVar
  loc_B18725: FLdPr var_88
  loc_B18728: LateIdCallSt
  loc_B18730: LitVarI4
  loc_B18738: PopAdLdVar
  loc_B18739: LitVarI4
  loc_B18741: PopAdLdVar
  loc_B18742: LitVarStr var_D8, "Vencimiento"
  loc_B18747: PopAdLdVar
  loc_B18748: FLdPr var_88
  loc_B1874B: LateIdCallSt
  loc_B18753: LitVarI4
  loc_B1875B: PopAdLdVar
  loc_B1875C: LitVarI4
  loc_B18764: PopAdLdVar
  loc_B18765: LitVarStr var_D8, "Concepto"
  loc_B1876A: PopAdLdVar
  loc_B1876B: FLdPr var_88
  loc_B1876E: LateIdCallSt
  loc_B18776: LitVarI4
  loc_B1877E: PopAdLdVar
  loc_B1877F: LitVarI4
  loc_B18787: PopAdLdVar
  loc_B18788: LitVarStr var_D8, "Facilidad"
  loc_B1878D: PopAdLdVar
  loc_B1878E: FLdPr var_88
  loc_B18791: LateIdCallSt
  loc_B18799: LitVarI4
  loc_B187A1: PopAdLdVar
  loc_B187A2: LitVarI4
  loc_B187AA: PopAdLdVar
  loc_B187AB: LitVarStr var_D8, "Apremio"
  loc_B187B0: PopAdLdVar
  loc_B187B1: FLdPr var_88
  loc_B187B4: LateIdCallSt
  loc_B187BC: LitVarI4
  loc_B187C4: PopAdLdVar
  loc_B187C5: LitVarI4
  loc_B187CD: PopAdLdVar
  loc_B187CE: LitVarStr var_D8, "Exp/Comp"
  loc_B187D3: PopAdLdVar
  loc_B187D4: FLdPr var_88
  loc_B187D7: LateIdCallSt
  loc_B187DF: LitVarI4
  loc_B187E7: PopAdLdVar
  loc_B187E8: LitVarI4
  loc_B187F0: PopAdLdVar
  loc_B187F1: LitVarStr var_D8, "Tipo Mov"
  loc_B187F6: PopAdLdVar
  loc_B187F7: FLdPr var_88
  loc_B187FA: LateIdCallSt
  loc_B18802: LitVarI4
  loc_B1880A: PopAdLdVar
  loc_B1880B: LitVarI4
  loc_B18813: PopAdLdVar
  loc_B18814: LitVarStr var_D8, "Debito"
  loc_B18819: PopAdLdVar
  loc_B1881A: FLdPr var_88
  loc_B1881D: LateIdCallSt
  loc_B18825: LitVarI4
  loc_B1882D: PopAdLdVar
  loc_B1882E: LitVarI4
  loc_B18836: PopAdLdVar
  loc_B18837: LitVarStr var_D8, "Recargo"
  loc_B1883C: PopAdLdVar
  loc_B1883D: FLdPr var_88
  loc_B18840: LateIdCallSt
  loc_B18848: LitVarI4
  loc_B18850: PopAdLdVar
  loc_B18851: LitVarI4
  loc_B18859: PopAdLdVar
  loc_B1885A: LitVarStr var_D8, "Saldo"
  loc_B1885F: PopAdLdVar
  loc_B18860: FLdPr var_88
  loc_B18863: LateIdCallSt
  loc_B1886B: LitVarI4
  loc_B18873: PopAdLdVar
  loc_B18874: LitVarI4
  loc_B1887C: PopAdLdVar
  loc_B1887D: LitVarStr var_D8, "Sel"
  loc_B18882: PopAdLdVar
  loc_B18883: FLdPr var_88
  loc_B18886: LateIdCallSt
  loc_B1888E: LitVarI4
  loc_B18896: PopAdLdVar
  loc_B18897: LitVarI4
  loc_B1889F: PopAdLdVar
  loc_B188A0: LitVarStr var_D8, "Numero"
  loc_B188A5: PopAdLdVar
  loc_B188A6: FLdPr var_88
  loc_B188A9: LateIdCallSt
  loc_B188B1: LitVarI4
  loc_B188B9: PopAdLdVar
  loc_B188BA: LitVarI4
  loc_B188C2: PopAdLdVar
  loc_B188C3: LitVarStr var_D8, "Mov"
  loc_B188C8: PopAdLdVar
  loc_B188C9: FLdPr var_88
  loc_B188CC: LateIdCallSt
  loc_B188D4: FLdPr var_88
  loc_B188D7: LateIdCall
  loc_B188DF: LitNothing
  loc_B188E1: FStAd var_88 
  loc_B188E5: ExitProcHresult
End Function

Private Function Proc_275_38_B28C04() 'B28C04
  'Data Table: 51A85C
  loc_B28934: LitI4 1
  loc_B28939: LitI4 1
  loc_B2893E: LitVarStr var_B4, "0.00"
  loc_B28943: FStVarCopyObj var_C4
  loc_B28946: FLdRfVar var_C4
  loc_B28949: LitVarI2 var_A4, 0
  loc_B2894E: FLdRfVar var_D4
  loc_B28951: ImpAdCallFPR4  = Format(, )
  loc_B28956: FLdRfVar var_D4
  loc_B28959: CStrVarVal var_D8
  loc_B2895D: FLdPr Me
  loc_B28960: VCallAd Control_ID_txtTotaApre
  loc_B28963: FStAdFunc var_DC
  loc_B28966: FLdPr var_DC
  loc_B28969: Me.Text = from_stack_1
  loc_B2896E: FFree1Str var_D8
  loc_B28971: FFree1Ad var_DC
  loc_B28974: FFreeVar var_A4 = "": var_C4 = ""
  loc_B2897D: LitI4 1
  loc_B28982: LitI4 1
  loc_B28987: LitVarStr var_B4, "0.00"
  loc_B2898C: FStVarCopyObj var_C4
  loc_B2898F: FLdRfVar var_C4
  loc_B28992: LitVarI2 var_A4, 0
  loc_B28997: FLdRfVar var_D4
  loc_B2899A: ImpAdCallFPR4  = Format(, )
  loc_B2899F: FLdRfVar var_D4
  loc_B289A2: CStrVarVal var_D8
  loc_B289A6: FLdPr Me
  loc_B289A9: VCallAd Control_ID_txtTotaDere
  loc_B289AC: FStAdFunc var_DC
  loc_B289AF: FLdPr var_DC
  loc_B289B2: Me.Text = from_stack_1
  loc_B289B7: FFree1Str var_D8
  loc_B289BA: FFree1Ad var_DC
  loc_B289BD: FFreeVar var_A4 = "": var_C4 = ""
  loc_B289C6: LitI4 1
  loc_B289CB: LitI4 1
  loc_B289D0: LitVarStr var_B4, "0.00"
  loc_B289D5: FStVarCopyObj var_C4
  loc_B289D8: FLdRfVar var_C4
  loc_B289DB: LitVarI2 var_A4, 0
  loc_B289E0: FLdRfVar var_D4
  loc_B289E3: ImpAdCallFPR4  = Format(, )
  loc_B289E8: FLdRfVar var_D4
  loc_B289EB: CStrVarVal var_D8
  loc_B289EF: FLdPr Me
  loc_B289F2: VCallAd Control_ID_txtTotaReca
  loc_B289F5: FStAdFunc var_DC
  loc_B289F8: FLdPr var_DC
  loc_B289FB: Me.Text = from_stack_1
  loc_B28A00: FFree1Str var_D8
  loc_B28A03: FFree1Ad var_DC
  loc_B28A06: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28A0F: LitI4 1
  loc_B28A14: LitI4 1
  loc_B28A19: LitVarStr var_B4, "0.00"
  loc_B28A1E: FStVarCopyObj var_C4
  loc_B28A21: FLdRfVar var_C4
  loc_B28A24: LitVarI2 var_A4, 0
  loc_B28A29: FLdRfVar var_D4
  loc_B28A2C: ImpAdCallFPR4  = Format(, )
  loc_B28A31: FLdRfVar var_D4
  loc_B28A34: CStrVarVal var_D8
  loc_B28A38: FLdPr Me
  loc_B28A3B: VCallAd Control_ID_txtTotal
  loc_B28A3E: FStAdFunc var_DC
  loc_B28A41: FLdPr var_DC
  loc_B28A44: Me.Text = from_stack_1
  loc_B28A49: FFree1Str var_D8
  loc_B28A4C: FFree1Ad var_DC
  loc_B28A4F: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28A58: LitI2_Byte 0
  loc_B28A5A: FLdPr Me
  loc_B28A5D: VCallAd Control_ID_PorcDescTxt
  loc_B28A60: FStAdFunc var_DC
  loc_B28A63: FLdPr var_DC
  loc_B28A66: Me.Visible = from_stack_1b
  loc_B28A6B: FFree1Ad var_DC
  loc_B28A6E: LitI2_Byte 0
  loc_B28A70: FLdPr Me
  loc_B28A73: VCallAd Control_ID_DescBoleLbl
  loc_B28A76: FStAdFunc var_DC
  loc_B28A79: FLdPr var_DC
  loc_B28A7C: Me.Visible = from_stack_1b
  loc_B28A81: FFree1Ad var_DC
  loc_B28A84: LitI2_Byte 0
  loc_B28A86: FLdPr Me
  loc_B28A89: VCallAd Control_ID_DescBoleTxt
  loc_B28A8C: FStAdFunc var_DC
  loc_B28A8F: FLdPr var_DC
  loc_B28A92: Me.Visible = from_stack_1b
  loc_B28A97: FFree1Ad var_DC
  loc_B28A9A: LitI2_Byte 0
  loc_B28A9C: FLdPr Me
  loc_B28A9F: VCallAd Control_ID_TotalLbl
  loc_B28AA2: FStAdFunc var_DC
  loc_B28AA5: FLdPr var_DC
  loc_B28AA8: Me.Visible = from_stack_1b
  loc_B28AAD: FFree1Ad var_DC
  loc_B28AB0: LitI2_Byte 0
  loc_B28AB2: FLdPr Me
  loc_B28AB5: VCallAd Control_ID_TotalTxt
  loc_B28AB8: FStAdFunc var_DC
  loc_B28ABB: FLdPr var_DC
  loc_B28ABE: Me.Visible = from_stack_1b
  loc_B28AC3: FFree1Ad var_DC
  loc_B28AC6: LitI2_Byte 0
  loc_B28AC8: FLdPr Me
  loc_B28ACB: VCallAd Control_ID_DescuentoChk
  loc_B28ACE: FStAdFunc var_DC
  loc_B28AD1: FLdPr var_DC
  loc_B28AD4: Me.Value = from_stack_1
  loc_B28AD9: FFree1Ad var_DC
  loc_B28ADC: LitI4 1
  loc_B28AE1: LitI4 1
  loc_B28AE6: LitVarStr var_B4, "0.00"
  loc_B28AEB: FStVarCopyObj var_C4
  loc_B28AEE: FLdRfVar var_C4
  loc_B28AF1: LitVarI2 var_A4, 0
  loc_B28AF6: FLdRfVar var_D4
  loc_B28AF9: ImpAdCallFPR4  = Format(, )
  loc_B28AFE: FLdRfVar var_D4
  loc_B28B01: CStrVarVal var_D8
  loc_B28B05: FLdPr Me
  loc_B28B08: VCallAd Control_ID_PorcDescTxt
  loc_B28B0B: FStAdFunc var_DC
  loc_B28B0E: FLdPr var_DC
  loc_B28B11: Me.Text = from_stack_1
  loc_B28B16: FFree1Str var_D8
  loc_B28B19: FFree1Ad var_DC
  loc_B28B1C: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28B25: LitI4 1
  loc_B28B2A: LitI4 1
  loc_B28B2F: LitVarStr var_B4, "0.00"
  loc_B28B34: FStVarCopyObj var_C4
  loc_B28B37: FLdRfVar var_C4
  loc_B28B3A: LitVarI2 var_A4, 0
  loc_B28B3F: FLdRfVar var_D4
  loc_B28B42: ImpAdCallFPR4  = Format(, )
  loc_B28B47: FLdRfVar var_D4
  loc_B28B4A: CStrVarVal var_D8
  loc_B28B4E: FLdPr Me
  loc_B28B51: VCallAd Control_ID_TotaBoleTxt
  loc_B28B54: FStAdFunc var_DC
  loc_B28B57: FLdPr var_DC
  loc_B28B5A: Me.Text = from_stack_1
  loc_B28B5F: FFree1Str var_D8
  loc_B28B62: FFree1Ad var_DC
  loc_B28B65: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28B6E: LitI4 1
  loc_B28B73: LitI4 1
  loc_B28B78: LitVarStr var_B4, "0.00"
  loc_B28B7D: FStVarCopyObj var_C4
  loc_B28B80: FLdRfVar var_C4
  loc_B28B83: LitVarI2 var_A4, 0
  loc_B28B88: FLdRfVar var_D4
  loc_B28B8B: ImpAdCallFPR4  = Format(, )
  loc_B28B90: FLdRfVar var_D4
  loc_B28B93: CStrVarVal var_D8
  loc_B28B97: FLdPr Me
  loc_B28B9A: VCallAd Control_ID_DescBoleTxt
  loc_B28B9D: FStAdFunc var_DC
  loc_B28BA0: FLdPr var_DC
  loc_B28BA3: Me.Text = from_stack_1
  loc_B28BA8: FFree1Str var_D8
  loc_B28BAB: FFree1Ad var_DC
  loc_B28BAE: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28BB7: LitI4 1
  loc_B28BBC: LitI4 1
  loc_B28BC1: LitVarStr var_B4, "0.00"
  loc_B28BC6: FStVarCopyObj var_C4
  loc_B28BC9: FLdRfVar var_C4
  loc_B28BCC: LitVarI2 var_A4, 0
  loc_B28BD1: FLdRfVar var_D4
  loc_B28BD4: ImpAdCallFPR4  = Format(, )
  loc_B28BD9: FLdRfVar var_D4
  loc_B28BDC: CStrVarVal var_D8
  loc_B28BE0: FLdPr Me
  loc_B28BE3: VCallAd Control_ID_TotalTxt
  loc_B28BE6: FStAdFunc var_DC
  loc_B28BE9: FLdPr var_DC
  loc_B28BEC: Me.Text = from_stack_1
  loc_B28BF1: FFree1Str var_D8
  loc_B28BF4: FFree1Ad var_DC
  loc_B28BF7: FFreeVar var_A4 = "": var_C4 = ""
  loc_B28C00: ExitProcHresult
End Function

Private Function Proc_275_39_B3B03C() 'B3B03C
  'Data Table: 51A85C
  loc_B3AD78: FLdPr Me
  loc_B3AD7B: VCallAd Control_ID_ServDevaFlex
  loc_B3AD7E: FStAdFunc var_88
  loc_B3AD81: FLdPr var_88
  loc_B3AD84: LateIdCall
  loc_B3AD8C: LitVarI4
  loc_B3AD94: PopAdLdVar
  loc_B3AD95: FLdPr var_88
  loc_B3AD98: LateIdSt
  loc_B3AD9D: LitVarI4
  loc_B3ADA5: PopAdLdVar
  loc_B3ADA6: LitVarI4
  loc_B3ADAE: PopAdLdVar
  loc_B3ADAF: LitVarStr var_D8, "Cant."
  loc_B3ADB4: PopAdLdVar
  loc_B3ADB5: FLdPr var_88
  loc_B3ADB8: LateIdCallSt
  loc_B3ADC0: LitVarI4
  loc_B3ADC8: PopAdLdVar
  loc_B3ADC9: LitVarI4
  loc_B3ADD1: PopAdLdVar
  loc_B3ADD2: LitVarStr var_D8, "Cod."
  loc_B3ADD7: PopAdLdVar
  loc_B3ADD8: FLdPr var_88
  loc_B3ADDB: LateIdCallSt
  loc_B3ADE3: LitVarI4
  loc_B3ADEB: PopAdLdVar
  loc_B3ADEC: LitVarI4
  loc_B3ADF4: PopAdLdVar
  loc_B3ADF5: LitVarStr var_D8, "Detalle o Servicio"
  loc_B3ADFA: PopAdLdVar
  loc_B3ADFB: FLdPr var_88
  loc_B3ADFE: LateIdCallSt
  loc_B3AE06: LitVarI4
  loc_B3AE0E: PopAdLdVar
  loc_B3AE0F: LitVarI4
  loc_B3AE17: PopAdLdVar
  loc_B3AE18: LitVarStr var_D8, "Importe"
  loc_B3AE1D: PopAdLdVar
  loc_B3AE1E: FLdPr var_88
  loc_B3AE21: LateIdCallSt
  loc_B3AE29: LitVarI4
  loc_B3AE31: PopAdLdVar
  loc_B3AE32: LitVarI4
  loc_B3AE3A: PopAdLdVar
  loc_B3AE3B: LitVarStr var_D8, "Total"
  loc_B3AE40: PopAdLdVar
  loc_B3AE41: FLdPr var_88
  loc_B3AE44: LateIdCallSt
  loc_B3AE4C: LitVarI4
  loc_B3AE54: PopAdLdVar
  loc_B3AE55: LitVarI4
  loc_B3AE5D: PopAdLdVar
  loc_B3AE5E: LitVarStr var_D8, "Periodo"
  loc_B3AE63: PopAdLdVar
  loc_B3AE64: FLdPr var_88
  loc_B3AE67: LateIdCallSt
  loc_B3AE6F: LitVarI4
  loc_B3AE77: PopAdLdVar
  loc_B3AE78: LitVarI4
  loc_B3AE80: PopAdLdVar
  loc_B3AE81: LitVarStr var_D8, "Concepto"
  loc_B3AE86: PopAdLdVar
  loc_B3AE87: FLdPr var_88
  loc_B3AE8A: LateIdCallSt
  loc_B3AE92: LitVarI4
  loc_B3AE9A: PopAdLdVar
  loc_B3AE9B: LitVarI4
  loc_B3AEA3: PopAdLdVar
  loc_B3AEA4: LitVarStr var_D8, "Fijo"
  loc_B3AEA9: PopAdLdVar
  loc_B3AEAA: FLdPr var_88
  loc_B3AEAD: LateIdCallSt
  loc_B3AEB5: LitVarI4
  loc_B3AEBD: PopAdLdVar
  loc_B3AEBE: LitVarI4
  loc_B3AEC6: PopAdLdVar
  loc_B3AEC7: LitVarStr var_D8, "TiafConc"
  loc_B3AECC: PopAdLdVar
  loc_B3AECD: FLdPr var_88
  loc_B3AED0: LateIdCallSt
  loc_B3AED8: FLdPr var_88
  loc_B3AEDB: LateIdCall
  loc_B3AEE3: LitNothing
  loc_B3AEE5: FStAd var_88 
  loc_B3AEE9: LitVarStr var_98, vbNullString
  loc_B3AEEE: LitI4 9
  loc_B3AEF3: FLdRfVar var_F8
  loc_B3AEF6: ImpAdCallFPR4  = Chr()
  loc_B3AEFB: FLdRfVar var_F8
  loc_B3AEFE: ConcatVar var_108
  loc_B3AF02: LitVarStr var_A8, vbNullString
  loc_B3AF07: ConcatVar var_118
  loc_B3AF0B: LitI4 9
  loc_B3AF10: FLdRfVar var_128
  loc_B3AF13: ImpAdCallFPR4  = Chr()
  loc_B3AF18: FLdRfVar var_128
  loc_B3AF1B: ConcatVar var_138
  loc_B3AF1F: LitVarStr var_B8, vbNullString
  loc_B3AF24: ConcatVar var_148
  loc_B3AF28: LitI4 9
  loc_B3AF2D: FLdRfVar var_158
  loc_B3AF30: ImpAdCallFPR4  = Chr()
  loc_B3AF35: FLdRfVar var_158
  loc_B3AF38: ConcatVar var_168
  loc_B3AF3C: LitVarStr var_C8, vbNullString
  loc_B3AF41: ConcatVar var_178
  loc_B3AF45: LitI4 9
  loc_B3AF4A: FLdRfVar var_188
  loc_B3AF4D: ImpAdCallFPR4  = Chr()
  loc_B3AF52: FLdRfVar var_188
  loc_B3AF55: ConcatVar var_198
  loc_B3AF59: LitVarStr var_D8, vbNullString
  loc_B3AF5E: ConcatVar var_1A8
  loc_B3AF62: LitI4 9
  loc_B3AF67: FLdRfVar var_1B8
  loc_B3AF6A: ImpAdCallFPR4  = Chr()
  loc_B3AF6F: FLdRfVar var_1B8
  loc_B3AF72: ConcatVar var_1C8
  loc_B3AF76: LitVarStr var_E8, vbNullString
  loc_B3AF7B: ConcatVar var_1D8
  loc_B3AF7F: LitI4 9
  loc_B3AF84: FLdRfVar var_1E8
  loc_B3AF87: ImpAdCallFPR4  = Chr()
  loc_B3AF8C: FLdRfVar var_1E8
  loc_B3AF8F: ConcatVar var_1F8
  loc_B3AF93: LitVarStr var_208, vbNullString
  loc_B3AF98: ConcatVar var_218
  loc_B3AF9C: LitI4 9
  loc_B3AFA1: FLdRfVar var_228
  loc_B3AFA4: ImpAdCallFPR4  = Chr()
  loc_B3AFA9: FLdRfVar var_228
  loc_B3AFAC: ConcatVar var_238
  loc_B3AFB0: LitVarStr var_248, "0"
  loc_B3AFB5: ConcatVar var_258
  loc_B3AFB9: LitI4 9
  loc_B3AFBE: FLdRfVar var_268
  loc_B3AFC1: ImpAdCallFPR4  = Chr()
  loc_B3AFC6: FLdRfVar var_268
  loc_B3AFC9: ConcatVar var_278
  loc_B3AFCD: LitVarStr var_288, "0"
  loc_B3AFD2: ConcatVar var_298
  loc_B3AFD6: CStrVarTmp
  loc_B3AFD7: FStStrNoPop var_29C
  loc_B3AFDA: FLdPr Me
  loc_B3AFDD: MemStStrCopy
  loc_B3AFE1: FFree1Str var_29C
  loc_B3AFE4: FFreeVar var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = ""
  loc_B3B017: FLdPr Me
  loc_B3B01A: MemLdRfVar from_stack_1.global_72
  loc_B3B01D: CDargRef
  loc_B3B021: FLdPr Me
  loc_B3B024: VCallAd Control_ID_ServDevaFlex
  loc_B3B027: FStAdFunc var_2A0
  loc_B3B02A: FLdPr var_2A0
  loc_B3B02D: LateIdCall
  loc_B3B035: FFree1Ad var_2A0
  loc_B3B038: ExitProcHresult
End Function

Private Function Proc_275_40_B2C9E8() 'B2C9E8
  'Data Table: 51A85C
  loc_B2C714: LitI2_Byte 0
  loc_B2C716: CR8I2
  loc_B2C717: FStFPR8 var_8C
  loc_B2C71A: LitI2_Byte 1
  loc_B2C71C: FLdPr Me
  loc_B2C71F: MemLdRfVar from_stack_1.global_68
  loc_B2C722: FLdPr Me
  loc_B2C725: VCallAd Control_ID_ServDevaFlex
  loc_B2C728: FStAdFunc var_90
  loc_B2C72B: FLdPr var_90
  loc_B2C72E: LateIdLdVar var_A0 DispID_4 0
  loc_B2C735: CI4Var
  loc_B2C737: LitI4 1
  loc_B2C73C: SubI4
  loc_B2C73D: CI2I4
  loc_B2C73E: FFree1Ad var_90
  loc_B2C741: FFree1Var var_A0 = ""
  loc_B2C744: ForI2 var_A4
  loc_B2C74A: FLdPr Me
  loc_B2C74D: MemLdI2 global_68
  loc_B2C750: CI4UI1
  loc_B2C751: CVarI4
  loc_B2C755: PopAdLdVar
  loc_B2C756: LitVarI4
  loc_B2C75E: PopAdLdVar
  loc_B2C75F: FLdPr Me
  loc_B2C762: VCallAd Control_ID_ServDevaFlex
  loc_B2C765: FStAdFunc var_90
  loc_B2C768: FLdPr var_90
  loc_B2C76B: LateIdCallLdVar
  loc_B2C775: CStrVarTmp
  loc_B2C776: CVarStr var_F4
  loc_B2C779: ImpAdCallI2 IsNumeric()
  loc_B2C77E: FFree1Ad var_90
  loc_B2C781: FFreeVar var_A0 = ""
  loc_B2C788: BranchF loc_B2C7D1
  loc_B2C78B: FLdPr Me
  loc_B2C78E: MemLdI2 global_68
  loc_B2C791: CI4UI1
  loc_B2C792: CVarI4
  loc_B2C796: PopAdLdVar
  loc_B2C797: LitVarI4
  loc_B2C79F: PopAdLdVar
  loc_B2C7A0: FLdPr Me
  loc_B2C7A3: VCallAd Control_ID_ServDevaFlex
  loc_B2C7A6: FStAdFunc var_90
  loc_B2C7A9: FLdPr var_90
  loc_B2C7AC: LateIdCallLdVar
  loc_B2C7B6: PopAd
  loc_B2C7B8: FLdFPR8 var_8C
  loc_B2C7BB: FLdRfVar var_A0
  loc_B2C7BE: CStrVarTmp
  loc_B2C7BF: FStStrNoPop var_F8
  loc_B2C7C2: CR8Str
  loc_B2C7C4: AddR8
  loc_B2C7C5: FStFPR8 var_8C
  loc_B2C7C8: FFree1Str var_F8
  loc_B2C7CB: FFree1Ad var_90
  loc_B2C7CE: FFree1Var var_A0 = ""
  loc_B2C7D1: FLdPr Me
  loc_B2C7D4: MemLdRfVar from_stack_1.global_68
  loc_B2C7D7: NextI2 var_A4, loc_B2C74A
  loc_B2C7DC: LitI4 1
  loc_B2C7E1: LitI4 1
  loc_B2C7E6: LitVarStr var_C4, "0.00"
  loc_B2C7EB: FStVarCopyObj var_A0
  loc_B2C7EE: FLdRfVar var_A0
  loc_B2C7F1: FLdRfVar var_8C
  loc_B2C7F4: CVarRef
  loc_B2C7F9: FLdRfVar var_F4
  loc_B2C7FC: ImpAdCallFPR4  = Format(, )
  loc_B2C801: FLdRfVar var_F4
  loc_B2C804: CStrVarVal var_F8
  loc_B2C808: FLdPr Me
  loc_B2C80B: VCallAd Control_ID_TotaBoleTxt
  loc_B2C80E: FStAdFunc var_90
  loc_B2C811: FLdPr var_90
  loc_B2C814: Me.Text = from_stack_1
  loc_B2C819: FFree1Str var_F8
  loc_B2C81C: FFree1Ad var_90
  loc_B2C81F: FFreeVar var_A0 = ""
  loc_B2C826: LitStr "Municipalidad de Guaymallén"
  loc_B2C829: LitStr "Municipalidad de Rivadavia"
  loc_B2C82C: EqStr
  loc_B2C82E: FLdRfVar var_FA
  loc_B2C831: FLdPr Me
  loc_B2C834: VCallAd Control_ID_RedondeoChk
  loc_B2C837: FStAdFunc var_90
  loc_B2C83A: FLdPr var_90
  loc_B2C83D:  = Me.Value
  loc_B2C842: FLdI2 var_FA
  loc_B2C845: LitI2_Byte 1
  loc_B2C847: EqI2
  loc_B2C848: AndI4
  loc_B2C849: FFree1Ad var_90
  loc_B2C84C: BranchF loc_B2C907
  loc_B2C84F: LitI2_Byte 0
  loc_B2C851: CR8I2
  loc_B2C852: FLdPr Me
  loc_B2C855: MemStFPR8 global_80
  loc_B2C858: FLdFPR8 var_8C
  loc_B2C85B: CI4R8
  loc_B2C85C: CVarI4
  loc_B2C860: HardType
  loc_B2C861: LitI4 2
  loc_B2C866: FLdRfVar var_8C
  loc_B2C869: CVarRef
  loc_B2C86E: FLdRfVar var_A0
  loc_B2C871: ImpAdCallFPR4  = Round(, )
  loc_B2C876: FLdRfVar var_A0
  loc_B2C879: NeVarBool
  loc_B2C87B: FFree1Var var_A0 = ""
  loc_B2C87E: BranchF loc_B2C907
  loc_B2C881: LitI4 2
  loc_B2C886: FLdFPR8 var_8C
  loc_B2C889: FnFixR8
  loc_B2C88B: LitI2_Byte 1
  loc_B2C88D: CR8I2
  loc_B2C88E: AddR8
  loc_B2C88F: FLdFPR8 var_8C
  loc_B2C892: SubR4
  loc_B2C893: CVarR8
  loc_B2C897: FLdRfVar var_F4
  loc_B2C89A: ImpAdCallFPR4  = Round(, )
  loc_B2C89F: FLdRfVar var_F4
  loc_B2C8A2: CR4Var
  loc_B2C8A3: FLdPr Me
  loc_B2C8A6: MemStFPR8 global_80
  loc_B2C8A9: FFreeVar var_A0 = ""
  loc_B2C8B0: FLdFPR8 var_8C
  loc_B2C8B3: FLdPr Me
  loc_B2C8B6: MemLdFPR8 global_80
  loc_B2C8B9: AddR8
  loc_B2C8BA: FStFPR8 var_8C
  loc_B2C8BD: LitI4 1
  loc_B2C8C2: LitI4 1
  loc_B2C8C7: LitVarStr var_C4, "0.00"
  loc_B2C8CC: FStVarCopyObj var_A0
  loc_B2C8CF: FLdRfVar var_A0
  loc_B2C8D2: FLdRfVar var_8C
  loc_B2C8D5: CVarRef
  loc_B2C8DA: FLdRfVar var_F4
  loc_B2C8DD: ImpAdCallFPR4  = Format(, )
  loc_B2C8E2: FLdRfVar var_F4
  loc_B2C8E5: CStrVarVal var_F8
  loc_B2C8E9: FLdPr Me
  loc_B2C8EC: VCallAd Control_ID_TotaBoleTxt
  loc_B2C8EF: FStAdFunc var_90
  loc_B2C8F2: FLdPr var_90
  loc_B2C8F5: Me.Text = from_stack_1
  loc_B2C8FA: FFree1Str var_F8
  loc_B2C8FD: FFree1Ad var_90
  loc_B2C900: FFreeVar var_A0 = ""
  loc_B2C907: FLdRfVar var_F8
  loc_B2C90A: FLdPr Me
  loc_B2C90D: VCallAd Control_ID_PorcDescTxt
  loc_B2C910: FStAdFunc var_90
  loc_B2C913: FLdPr var_90
  loc_B2C916:  = Me.Text
  loc_B2C91B: LitI4 1
  loc_B2C920: LitI4 1
  loc_B2C925: LitVarStr var_C4, "0.00"
  loc_B2C92A: FStVarCopyObj var_F4
  loc_B2C92D: FLdRfVar var_F4
  loc_B2C930: FLdFPR8 var_8C
  loc_B2C933: ILdRf var_F8
  loc_B2C936: CR8Str
  loc_B2C938: MulR8
  loc_B2C939: LitI2_Byte &H64
  loc_B2C93B: CR8I2
  loc_B2C93C: DivR8
  loc_B2C93D: CVarR8
  loc_B2C941: FLdRfVar var_10C
  loc_B2C944: ImpAdCallFPR4  = Format(, )
  loc_B2C949: FLdRfVar var_10C
  loc_B2C94C: CStrVarVal var_110
  loc_B2C950: FLdPr Me
  loc_B2C953: VCallAd Control_ID_DescBoleTxt
  loc_B2C956: FStAdFunc var_114
  loc_B2C959: FLdPr var_114
  loc_B2C95C: Me.Text = from_stack_1
  loc_B2C961: FFreeStr var_F8 = ""
  loc_B2C968: FFreeAd var_90 = ""
  loc_B2C96F: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2C978: FLdRfVar var_F8
  loc_B2C97B: FLdPr Me
  loc_B2C97E: VCallAd Control_ID_DescBoleTxt
  loc_B2C981: FStAdFunc var_90
  loc_B2C984: FLdPr var_90
  loc_B2C987:  = Me.Text
  loc_B2C98C: LitI4 1
  loc_B2C991: LitI4 1
  loc_B2C996: LitVarStr var_C4, "0.00"
  loc_B2C99B: FStVarCopyObj var_F4
  loc_B2C99E: FLdRfVar var_F4
  loc_B2C9A1: FLdFPR8 var_8C
  loc_B2C9A4: ILdRf var_F8
  loc_B2C9A7: CR8Str
  loc_B2C9A9: SubR4
  loc_B2C9AA: CVarR8
  loc_B2C9AE: FLdRfVar var_10C
  loc_B2C9B1: ImpAdCallFPR4  = Format(, )
  loc_B2C9B6: FLdRfVar var_10C
  loc_B2C9B9: CStrVarVal var_110
  loc_B2C9BD: FLdPr Me
  loc_B2C9C0: VCallAd Control_ID_TotalTxt
  loc_B2C9C3: FStAdFunc var_114
  loc_B2C9C6: FLdPr var_114
  loc_B2C9C9: Me.Text = from_stack_1
  loc_B2C9CE: FFreeStr var_F8 = ""
  loc_B2C9D5: FFreeAd var_90 = ""
  loc_B2C9DC: FFreeVar var_A0 = "": var_F4 = ""
  loc_B2C9E5: ExitProcHresult
End Function
