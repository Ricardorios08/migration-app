VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmCreditoManualModificacion
  Caption = "Modificacion de Creditos Manuales"
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
  Begin VB.TextBox txtDereSele
    Left = 5640
    Top = 5640
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
  Begin VB.TextBox txtRecaSele
    Left = 9480
    Top = 5640
    Width = 1815
    Height = 360
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
  Begin VB.TextBox txtTotaDere
    Left = 5640
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 20
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
    Left = 9480
    Top = 5160
    Width = 1815
    Height = 345
    TabIndex = 19
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
    Width = 1695
    Height = 360
    TabIndex = 18
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
    TabIndex = 17
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
    Top = 5640
    Width = 1815
    Height = 360
    TabIndex = 16
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
    Top = 6120
    Width = 15015
    Height = 2415
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox DetaCtctTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1200
      Width = 10095
      Height = 345
      TabIndex = 33
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
    Begin VB.CommandButton ConfirmarCmd
      Left = 4680
      Top = 1800
      Width = 1335
      Height = 525
      TabIndex = 9
      Picture = "frmCreditoManualModificacion.frx":0000
      Style = 1
    End
    Begin VB.TextBox ExpeCtctTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 720
      Width = 1695
      Height = 345
      TabIndex = 8
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
    Begin VB.Label Label9
      Caption = "Detalle:"
      Left = 1200
      Top = 1200
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
    Begin VB.Label Label10
      Caption = "Expediente:"
      Left = 780
      Top = 720
      Width = 1260
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
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5040
    Top = 720
    Width = 2175
    Height = 255
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
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1680
    Top = 120
    Width = 2055
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
    Left = 4440
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 6
    Picture = "frmCreditoManualModificacion.frx":032E
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6840
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 2
    Picture = "frmCreditoManualModificacion.frx":0410
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4800
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
    TabIndex = 10
    Picture = "frmCreditoManualModificacion.frx":050A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3840
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 5
    Picture = "frmCreditoManualModificacion.frx":075C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 3
    OleObjectBlob = "frmCreditoManualModificacion.frx":0C9E
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 3855
    TabIndex = 7
    OleObjectBlob = "frmCreditoManualModificacion.frx":0D4E
    Appearance = 0 'Flat
  End
  Begin VB.Label Label14
    Caption = "Seleccionado:"
    Left = 11400
    Top = 5640
    Width = 1710
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
  Begin VB.Label Label13
    Caption = "Seleccionado:"
    Left = 7680
    Top = 5640
    Width = 1710
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
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9360
    Top = 120
    Width = 5175
    Height = 315
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
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7440
    Top = 120
    Width = 1695
    Height = 315
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
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 6975
    Height = 315
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
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 3765
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 25
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
    Left = 7605
    Top = 5160
    Width = 1785
    Height = 300
    TabIndex = 24
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
    TabIndex = 23
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
    Left = 12420
    Top = 5160
    Width = 690
    Height = 300
    TabIndex = 22
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
    Caption = "Seleccionado:"
    Left = 3840
    Top = 5640
    Width = 1710
    Height = 300
    TabIndex = 21
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
    Left = 795
    Top = 120
    Width = 795
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
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3960
    Top = 120
    Width = 840
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

Attribute VB_Name = "frmCreditoManualModificacion"


Private Sub FechVencMsk_UnknownEvent_0 '9BDB30
  'Data Table: 4EBEA8
  loc_9BDB1C: FLdPr Me
  loc_9BDB1F: VCallAd Control_ID_FechVencMsk
  loc_9BDB22: CVarAd
  loc_9BDB26: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BDB2B: FFree1Var var_94 = ""
  loc_9BDB2E: ExitProcHresult
End Sub

Private Function FechVencMsk_UnknownEvent_8(arg_C) 'ABE9AC
  'Data Table: 4EBEA8
  loc_ABE8B4: FLdPr Me
  loc_ABE8B7: VCallAd Control_ID_FechVencMsk
  loc_ABE8BA: FStAdFunc var_88
  loc_ABE8BD: FLdPr var_88
  loc_ABE8C0: LateIdLdVar var_98 DispID_13 -32767
  loc_ABE8C7: CBoolVar
  loc_ABE8C9: LitI2_Byte &HFF
  loc_ABE8CB: EqI2
  loc_ABE8CC: FFree1Ad var_88
  loc_ABE8CF: FFree1Var var_98 = ""
  loc_ABE8D2: BranchF loc_ABE9AA
  loc_ABE8D5: LitVarStr var_A8, vbNullString
  loc_ABE8DA: PopAdLdVar
  loc_ABE8DB: FLdPr Me
  loc_ABE8DE: VCallAd Control_ID_FechVencMsk
  loc_ABE8E1: FStAdFunc var_88
  loc_ABE8E4: FLdPr var_88
  loc_ABE8E7: LateIdSt
  loc_ABE8EC: FFree1Ad var_88
  loc_ABE8EF: FLdPr Me
  loc_ABE8F2: VCallAd Control_ID_FechVencMsk
  loc_ABE8F5: FStAdFunc var_88
  loc_ABE8F8: FLdPr var_88
  loc_ABE8FB: LateIdLdVar var_98 DispID_22 0
  loc_ABE902: CStrVarTmp
  loc_ABE903: FStStrNoPop var_BC
  loc_ABE906: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABE90B: FStStrNoPop var_C0
  loc_ABE90E: FLdPr Me
  loc_ABE911: MemStStrCopy
  loc_ABE915: FFreeStr var_BC = ""
  loc_ABE91C: FFree1Ad var_88
  loc_ABE91F: FFree1Var var_98 = ""
  loc_ABE922: LitVarStr var_A8, "##/##/####"
  loc_ABE927: PopAdLdVar
  loc_ABE928: FLdPr Me
  loc_ABE92B: VCallAd Control_ID_FechVencMsk
  loc_ABE92E: FStAdFunc var_88
  loc_ABE931: FLdPr var_88
  loc_ABE934: LateIdSt
  loc_ABE939: FFree1Ad var_88
  loc_ABE93C: LitVarI2 var_A8, 10
  loc_ABE941: PopAdLdVar
  loc_ABE942: FLdPr Me
  loc_ABE945: VCallAd Control_ID_FechVencMsk
  loc_ABE948: FStAdFunc var_88
  loc_ABE94B: FLdPr var_88
  loc_ABE94E: LateIdSt
  loc_ABE953: FFree1Ad var_88
  loc_ABE956: FLdPr Me
  loc_ABE959: MemLdStr global_88
  loc_ABE95C: LitStr vbNullString
  loc_ABE95F: NeStr
  loc_ABE961: BranchF loc_ABE9AA
  loc_ABE964: FLdPr Me
  loc_ABE967: MemLdStr global_88
  loc_ABE96A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABE96F: LitI2_Byte 0
  loc_ABE971: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABE976: CStrDate
  loc_ABE978: CVarStr var_98
  loc_ABE97B: PopAdLdVar
  loc_ABE97C: FLdPr Me
  loc_ABE97F: VCallAd Control_ID_FechVencMsk
  loc_ABE982: FStAdFunc var_88
  loc_ABE985: FLdPr var_88
  loc_ABE988: LateIdSt
  loc_ABE98D: FFree1Ad var_88
  loc_ABE990: FFree1Var var_98 = ""
  loc_ABE993: FLdPr Me
  loc_ABE996: VCallAd Control_ID_FechVencMsk
  loc_ABE999: CVarAd
  loc_ABE99D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABE9A2: FFree1Var var_98 = ""
  loc_ABE9A5: LitI2_Byte &HFF
  loc_ABE9A7: IStI2 arg_C
  loc_ABE9AA: ExitProcHresult
End Function

Private Sub SeleTodoChk_Click() 'B7C258
  'Data Table: 4EBEA8
  loc_B7BD64: LitI2_Byte 0
  loc_B7BD66: CR8I2
  loc_B7BD67: FLdPr Me
  loc_B7BD6A: MemStFPR8 global_64
  loc_B7BD6D: LitI2_Byte 0
  loc_B7BD6F: CR8I2
  loc_B7BD70: FLdPr Me
  loc_B7BD73: MemStFPR8 global_72
  loc_B7BD76: LitI2_Byte 0
  loc_B7BD78: CR8I2
  loc_B7BD79: FLdPr Me
  loc_B7BD7C: MemStFPR8 global_80
  loc_B7BD7F: FLdPr Me
  loc_B7BD82: VCallAd Control_ID_ctacteFlex
  loc_B7BD85: FStAdFunc var_88
  loc_B7BD88: FLdPr var_88
  loc_B7BD8B: LateIdLdVar var_98 DispID_4 0
  loc_B7BD92: CI4Var
  loc_B7BD94: LitI4 1
  loc_B7BD99: GtI4
  loc_B7BD9A: FFree1Ad var_88
  loc_B7BD9D: FFree1Var var_98 = ""
  loc_B7BDA0: BranchF loc_B7C16E
  loc_B7BDA3: LitI2_Byte 1
  loc_B7BDA5: FLdPr Me
  loc_B7BDA8: MemLdRfVar from_stack_1.global_60
  loc_B7BDAB: FLdPr Me
  loc_B7BDAE: VCallAd Control_ID_ctacteFlex
  loc_B7BDB1: FStAdFunc var_88
  loc_B7BDB4: FLdPr var_88
  loc_B7BDB7: LateIdLdVar var_98 DispID_4 0
  loc_B7BDBE: CI4Var
  loc_B7BDC0: LitI4 1
  loc_B7BDC5: SubI4
  loc_B7BDC6: CI2I4
  loc_B7BDC7: FFree1Ad var_88
  loc_B7BDCA: FFree1Var var_98 = ""
  loc_B7BDCD: ForI2 var_9C
  loc_B7BDD3: FLdPr Me
  loc_B7BDD6: MemLdI2 global_60
  loc_B7BDD9: CI4UI1
  loc_B7BDDA: CVarI4
  loc_B7BDDE: PopAdLdVar
  loc_B7BDDF: LitVarI4
  loc_B7BDE7: PopAdLdVar
  loc_B7BDE8: FLdPr Me
  loc_B7BDEB: VCallAd Control_ID_ctacteFlex
  loc_B7BDEE: FStAdFunc var_88
  loc_B7BDF1: FLdPr var_88
  loc_B7BDF4: LateIdCallLdVar
  loc_B7BDFE: CStrVarTmp
  loc_B7BDFF: FStStrNoPop var_E0
  loc_B7BE02: CI2Str
  loc_B7BE04: LitI2_Byte 0
  loc_B7BE06: EqI2
  loc_B7BE07: FFree1Str var_E0
  loc_B7BE0A: FFree1Ad var_88
  loc_B7BE0D: FFree1Var var_98 = ""
  loc_B7BE10: BranchF loc_B7C163
  loc_B7BE13: FLdPr Me
  loc_B7BE16: MemLdI2 global_60
  loc_B7BE19: CI4UI1
  loc_B7BE1A: CVarI4
  loc_B7BE1E: PopAdLdVar
  loc_B7BE1F: FLdPr Me
  loc_B7BE22: VCallAd Control_ID_ctacteFlex
  loc_B7BE25: FStAdFunc var_88
  loc_B7BE28: FLdPr var_88
  loc_B7BE2B: LateIdSt
  loc_B7BE30: FFree1Ad var_88
  loc_B7BE33: LitI2_Byte 0
  loc_B7BE35: FLdPr Me
  loc_B7BE38: MemLdRfVar from_stack_1.global_62
  loc_B7BE3B: FLdPr Me
  loc_B7BE3E: VCallAd Control_ID_ctacteFlex
  loc_B7BE41: FStAdFunc var_88
  loc_B7BE44: FLdPr var_88
  loc_B7BE47: LateIdLdVar var_98 DispID_5 0
  loc_B7BE4E: CI4Var
  loc_B7BE50: LitI4 1
  loc_B7BE55: SubI4
  loc_B7BE56: CI2I4
  loc_B7BE57: FFree1Ad var_88
  loc_B7BE5A: FFree1Var var_98 = ""
  loc_B7BE5D: ForI2 var_E4
  loc_B7BE63: FLdPr Me
  loc_B7BE66: MemLdI2 global_62
  loc_B7BE69: CI4UI1
  loc_B7BE6A: CVarI4
  loc_B7BE6E: PopAdLdVar
  loc_B7BE6F: FLdPr Me
  loc_B7BE72: VCallAd Control_ID_ctacteFlex
  loc_B7BE75: FStAdFunc var_88
  loc_B7BE78: FLdPr var_88
  loc_B7BE7B: LateIdSt
  loc_B7BE80: FFree1Ad var_88
  loc_B7BE83: FLdRfVar var_E6
  loc_B7BE86: FLdPr Me
  loc_B7BE89: VCallAd Control_ID_SeleTodoChk
  loc_B7BE8C: FStAdFunc var_88
  loc_B7BE8F: FLdPr var_88
  loc_B7BE92:  = Me.Value
  loc_B7BE97: FLdI2 var_E6
  loc_B7BE9A: LitI2_Byte 0
  loc_B7BE9C: EqI2
  loc_B7BE9D: FFree1Ad var_88
  loc_B7BEA0: BranchF loc_B7BF3D
  loc_B7BEA3: LitVarI4
  loc_B7BEAB: PopAdLdVar
  loc_B7BEAC: FLdPr Me
  loc_B7BEAF: VCallAd Control_ID_ctacteFlex
  loc_B7BEB2: FStAdFunc var_88
  loc_B7BEB5: FLdPr var_88
  loc_B7BEB8: LateIdSt
  loc_B7BEBD: FFree1Ad var_88
  loc_B7BEC0: FLdPr Me
  loc_B7BEC3: MemLdI2 global_62
  loc_B7BEC6: LitI2_Byte 0
  loc_B7BEC8: EqI2
  loc_B7BEC9: BranchF loc_B7BF13
  loc_B7BECC: FLdPr Me
  loc_B7BECF: VCallAd Control_ID_ctacteFlex
  loc_B7BED2: FStAdFunc var_88
  loc_B7BED5: FLdPr var_88
  loc_B7BED8: LateIdLdVar var_98 DispID_10 0
  loc_B7BEDF: CI4Var
  loc_B7BEE1: CVarI4
  loc_B7BEE5: PopAdLdVar
  loc_B7BEE6: LitVarI4
  loc_B7BEEE: PopAdLdVar
  loc_B7BEEF: LitVarStr var_F8, "No"
  loc_B7BEF4: PopAdLdVar
  loc_B7BEF5: FLdPr Me
  loc_B7BEF8: VCallAd Control_ID_ctacteFlex
  loc_B7BEFB: FStAdFunc var_10C
  loc_B7BEFE: FLdPr var_10C
  loc_B7BF01: LateIdCallSt
  loc_B7BF09: FFreeAd var_88 = ""
  loc_B7BF10: FFree1Var var_98 = ""
  loc_B7BF13: FLdPr Me
  loc_B7BF16: MemLdI2 global_62
  loc_B7BF19: LitI2_Byte &HD
  loc_B7BF1B: EqI2
  loc_B7BF1C: BranchF loc_B7BF3A
  loc_B7BF1F: LitI2_Byte 0
  loc_B7BF21: CR8I2
  loc_B7BF22: FLdPr Me
  loc_B7BF25: MemStFPR8 global_64
  loc_B7BF28: LitI2_Byte 0
  loc_B7BF2A: CR8I2
  loc_B7BF2B: FLdPr Me
  loc_B7BF2E: MemStFPR8 global_72
  loc_B7BF31: LitI2_Byte 0
  loc_B7BF33: CR8I2
  loc_B7BF34: FLdPr Me
  loc_B7BF37: MemStFPR8 global_80
  loc_B7BF3A: Branch loc_B7C158
  loc_B7BF3D: LitVarI4
  loc_B7BF45: PopAdLdVar
  loc_B7BF46: FLdPr Me
  loc_B7BF49: VCallAd Control_ID_ctacteFlex
  loc_B7BF4C: FStAdFunc var_88
  loc_B7BF4F: FLdPr var_88
  loc_B7BF52: LateIdSt
  loc_B7BF57: FFree1Ad var_88
  loc_B7BF5A: FLdPr Me
  loc_B7BF5D: MemLdI2 global_62
  loc_B7BF60: LitI2_Byte 0
  loc_B7BF62: EqI2
  loc_B7BF63: BranchF loc_B7BFAD
  loc_B7BF66: FLdPr Me
  loc_B7BF69: VCallAd Control_ID_ctacteFlex
  loc_B7BF6C: FStAdFunc var_88
  loc_B7BF6F: FLdPr var_88
  loc_B7BF72: LateIdLdVar var_98 DispID_10 0
  loc_B7BF79: CI4Var
  loc_B7BF7B: CVarI4
  loc_B7BF7F: PopAdLdVar
  loc_B7BF80: LitVarI4
  loc_B7BF88: PopAdLdVar
  loc_B7BF89: LitVarStr var_F8, "Si"
  loc_B7BF8E: PopAdLdVar
  loc_B7BF8F: FLdPr Me
  loc_B7BF92: VCallAd Control_ID_ctacteFlex
  loc_B7BF95: FStAdFunc var_10C
  loc_B7BF98: FLdPr var_10C
  loc_B7BF9B: LateIdCallSt
  loc_B7BFA3: FFreeAd var_88 = ""
  loc_B7BFAA: FFree1Var var_98 = ""
  loc_B7BFAD: FLdPr Me
  loc_B7BFB0: MemLdI2 global_62
  loc_B7BFB3: LitI2_Byte &HB
  loc_B7BFB5: EqI2
  loc_B7BFB6: BranchF loc_B7C01E
  loc_B7BFB9: FLdPr Me
  loc_B7BFBC: VCallAd Control_ID_ctacteFlex
  loc_B7BFBF: FStAdFunc var_88
  loc_B7BFC2: FLdPr var_88
  loc_B7BFC5: LateIdLdVar var_98 DispID_10 0
  loc_B7BFCC: CI4Var
  loc_B7BFCE: CVarI4
  loc_B7BFD2: PopAdLdVar
  loc_B7BFD3: FLdPr Me
  loc_B7BFD6: MemLdI2 global_62
  loc_B7BFD9: CI4UI1
  loc_B7BFDA: CVarI4
  loc_B7BFDE: PopAdLdVar
  loc_B7BFDF: FLdPr Me
  loc_B7BFE2: VCallAd Control_ID_ctacteFlex
  loc_B7BFE5: FStAdFunc var_10C
  loc_B7BFE8: FLdPr var_10C
  loc_B7BFEB: LateIdCallLdVar
  loc_B7BFF5: PopAd
  loc_B7BFF7: FLdPr Me
  loc_B7BFFA: MemLdFPR8 global_64
  loc_B7BFFD: FLdRfVar var_11C
  loc_B7C000: CStrVarTmp
  loc_B7C001: FStStrNoPop var_E0
  loc_B7C004: CR8Str
  loc_B7C006: AddR8
  loc_B7C007: FLdPr Me
  loc_B7C00A: MemStFPR8 global_64
  loc_B7C00D: FFree1Str var_E0
  loc_B7C010: FFreeAd var_88 = ""
  loc_B7C017: FFreeVar var_98 = ""
  loc_B7C01E: FLdPr Me
  loc_B7C021: MemLdI2 global_62
  loc_B7C024: LitI2_Byte &HC
  loc_B7C026: EqI2
  loc_B7C027: BranchF loc_B7C0E7
  loc_B7C02A: FLdPr Me
  loc_B7C02D: VCallAd Control_ID_ctacteFlex
  loc_B7C030: FStAdFunc var_88
  loc_B7C033: FLdPr var_88
  loc_B7C036: LateIdLdVar var_98 DispID_10 0
  loc_B7C03D: CI4Var
  loc_B7C03F: CVarI4
  loc_B7C043: PopAdLdVar
  loc_B7C044: FLdPr Me
  loc_B7C047: MemLdI2 global_62
  loc_B7C04A: CI4UI1
  loc_B7C04B: CVarI4
  loc_B7C04F: PopAdLdVar
  loc_B7C050: FLdPr Me
  loc_B7C053: VCallAd Control_ID_ctacteFlex
  loc_B7C056: FStAdFunc var_10C
  loc_B7C059: FLdPr var_10C
  loc_B7C05C: LateIdCallLdVar
  loc_B7C066: CStrVarTmp
  loc_B7C067: CVarStr var_12C
  loc_B7C06A: ImpAdCallI2 IsNumeric()
  loc_B7C06F: FFreeAd var_88 = ""
  loc_B7C076: FFreeVar var_98 = "": var_11C = ""
  loc_B7C07F: BranchF loc_B7C0E7
  loc_B7C082: FLdPr Me
  loc_B7C085: VCallAd Control_ID_ctacteFlex
  loc_B7C088: FStAdFunc var_88
  loc_B7C08B: FLdPr var_88
  loc_B7C08E: LateIdLdVar var_98 DispID_10 0
  loc_B7C095: CI4Var
  loc_B7C097: CVarI4
  loc_B7C09B: PopAdLdVar
  loc_B7C09C: FLdPr Me
  loc_B7C09F: MemLdI2 global_62
  loc_B7C0A2: CI4UI1
  loc_B7C0A3: CVarI4
  loc_B7C0A7: PopAdLdVar
  loc_B7C0A8: FLdPr Me
  loc_B7C0AB: VCallAd Control_ID_ctacteFlex
  loc_B7C0AE: FStAdFunc var_10C
  loc_B7C0B1: FLdPr var_10C
  loc_B7C0B4: LateIdCallLdVar
  loc_B7C0BE: PopAd
  loc_B7C0C0: FLdPr Me
  loc_B7C0C3: MemLdFPR8 global_72
  loc_B7C0C6: FLdRfVar var_11C
  loc_B7C0C9: CStrVarTmp
  loc_B7C0CA: FStStrNoPop var_E0
  loc_B7C0CD: CR8Str
  loc_B7C0CF: AddR8
  loc_B7C0D0: FLdPr Me
  loc_B7C0D3: MemStFPR8 global_72
  loc_B7C0D6: FFree1Str var_E0
  loc_B7C0D9: FFreeAd var_88 = ""
  loc_B7C0E0: FFreeVar var_98 = ""
  loc_B7C0E7: FLdPr Me
  loc_B7C0EA: MemLdI2 global_62
  loc_B7C0ED: LitI2_Byte &HD
  loc_B7C0EF: EqI2
  loc_B7C0F0: BranchF loc_B7C158
  loc_B7C0F3: FLdPr Me
  loc_B7C0F6: VCallAd Control_ID_ctacteFlex
  loc_B7C0F9: FStAdFunc var_88
  loc_B7C0FC: FLdPr var_88
  loc_B7C0FF: LateIdLdVar var_98 DispID_10 0
  loc_B7C106: CI4Var
  loc_B7C108: CVarI4
  loc_B7C10C: PopAdLdVar
  loc_B7C10D: FLdPr Me
  loc_B7C110: MemLdI2 global_62
  loc_B7C113: CI4UI1
  loc_B7C114: CVarI4
  loc_B7C118: PopAdLdVar
  loc_B7C119: FLdPr Me
  loc_B7C11C: VCallAd Control_ID_ctacteFlex
  loc_B7C11F: FStAdFunc var_10C
  loc_B7C122: FLdPr var_10C
  loc_B7C125: LateIdCallLdVar
  loc_B7C12F: PopAd
  loc_B7C131: FLdPr Me
  loc_B7C134: MemLdFPR8 global_80
  loc_B7C137: FLdRfVar var_11C
  loc_B7C13A: CStrVarTmp
  loc_B7C13B: FStStrNoPop var_E0
  loc_B7C13E: CR8Str
  loc_B7C140: AddR8
  loc_B7C141: FLdPr Me
  loc_B7C144: MemStFPR8 global_80
  loc_B7C147: FFree1Str var_E0
  loc_B7C14A: FFreeAd var_88 = ""
  loc_B7C151: FFreeVar var_98 = ""
  loc_B7C158: FLdPr Me
  loc_B7C15B: MemLdRfVar from_stack_1.global_62
  loc_B7C15E: NextI2 var_E4, loc_B7BE63
  loc_B7C163: FLdPr Me
  loc_B7C166: MemLdRfVar from_stack_1.global_60
  loc_B7C169: NextI2 var_9C, loc_B7BDD3
  loc_B7C16E: LitI4 1
  loc_B7C173: LitI4 1
  loc_B7C178: LitVarStr var_BC, "0.00"
  loc_B7C17D: FStVarCopyObj var_98
  loc_B7C180: FLdRfVar var_98
  loc_B7C183: FLdPr Me
  loc_B7C186: MemLdRfVar from_stack_1.global_64
  loc_B7C189: CVarRef
  loc_B7C18E: FLdRfVar var_11C
  loc_B7C191: ImpAdCallFPR4  = Format(, )
  loc_B7C196: FLdRfVar var_11C
  loc_B7C199: CStrVarVal var_E0
  loc_B7C19D: FLdPr Me
  loc_B7C1A0: VCallAd Control_ID_txtDereSele
  loc_B7C1A3: FStAdFunc var_88
  loc_B7C1A6: FLdPr var_88
  loc_B7C1A9: Me.Text = from_stack_1
  loc_B7C1AE: FFree1Str var_E0
  loc_B7C1B1: FFree1Ad var_88
  loc_B7C1B4: FFreeVar var_98 = ""
  loc_B7C1BB: LitI4 1
  loc_B7C1C0: LitI4 1
  loc_B7C1C5: LitVarStr var_BC, "0.00"
  loc_B7C1CA: FStVarCopyObj var_98
  loc_B7C1CD: FLdRfVar var_98
  loc_B7C1D0: FLdPr Me
  loc_B7C1D3: MemLdRfVar from_stack_1.global_72
  loc_B7C1D6: CVarRef
  loc_B7C1DB: FLdRfVar var_11C
  loc_B7C1DE: ImpAdCallFPR4  = Format(, )
  loc_B7C1E3: FLdRfVar var_11C
  loc_B7C1E6: CStrVarVal var_E0
  loc_B7C1EA: FLdPr Me
  loc_B7C1ED: VCallAd Control_ID_txtRecaSele
  loc_B7C1F0: FStAdFunc var_88
  loc_B7C1F3: FLdPr var_88
  loc_B7C1F6: Me.Text = from_stack_1
  loc_B7C1FB: FFree1Str var_E0
  loc_B7C1FE: FFree1Ad var_88
  loc_B7C201: FFreeVar var_98 = ""
  loc_B7C208: LitI4 1
  loc_B7C20D: LitI4 1
  loc_B7C212: LitVarStr var_BC, "0.00"
  loc_B7C217: FStVarCopyObj var_98
  loc_B7C21A: FLdRfVar var_98
  loc_B7C21D: FLdPr Me
  loc_B7C220: MemLdRfVar from_stack_1.global_80
  loc_B7C223: CVarRef
  loc_B7C228: FLdRfVar var_11C
  loc_B7C22B: ImpAdCallFPR4  = Format(, )
  loc_B7C230: FLdRfVar var_11C
  loc_B7C233: CStrVarVal var_E0
  loc_B7C237: FLdPr Me
  loc_B7C23A: VCallAd Control_ID_txtTotaSele
  loc_B7C23D: FStAdFunc var_88
  loc_B7C240: FLdPr var_88
  loc_B7C243: Me.Text = from_stack_1
  loc_B7C248: FFree1Str var_E0
  loc_B7C24B: FFree1Ad var_88
  loc_B7C24E: FFreeVar var_98 = ""
  loc_B7C255: ExitProcHresult
  loc_B7C256: GtR4
End Sub

Private Sub OficinaCbo_Click() 'B26D3C
  'Data Table: 4EBEA8
  loc_B26A9C: FLdRfVar var_8A
  loc_B26A9F: FLdPr Me
  loc_B26AA2: VCallAd Control_ID_OficinaCbo
  loc_B26AA5: FStAdFunc var_88
  loc_B26AA8: FLdPr var_88
  loc_B26AAB:  = Me.ListIndex
  loc_B26AB0: FLdI2 var_8A
  loc_B26AB3: FStI2 var_8C
  loc_B26AB6: FFree1Ad var_88
  loc_B26AB9: FLdI2 var_8C
  loc_B26ABC: LitI2_Byte 0
  loc_B26ABE: EqI2
  loc_B26ABF: BranchF loc_B26ACD
  loc_B26AC2: LitI2_Byte 1
  loc_B26AC4: CUI1I2
  loc_B26AC6: ImpAdStUI1 MemVar_D93038
  loc_B26ACA: Branch loc_B26B06
  loc_B26ACD: FLdI2 var_8C
  loc_B26AD0: LitI2_Byte 1
  loc_B26AD2: EqI2
  loc_B26AD3: BranchF loc_B26AE1
  loc_B26AD6: LitI2_Byte 2
  loc_B26AD8: CUI1I2
  loc_B26ADA: ImpAdStUI1 MemVar_D93038
  loc_B26ADE: Branch loc_B26B06
  loc_B26AE1: FLdI2 var_8C
  loc_B26AE4: LitI2_Byte 2
  loc_B26AE6: EqI2
  loc_B26AE7: BranchF loc_B26AF5
  loc_B26AEA: LitI2_Byte 3
  loc_B26AEC: CUI1I2
  loc_B26AEE: ImpAdStUI1 MemVar_D93038
  loc_B26AF2: Branch loc_B26B06
  loc_B26AF5: FLdI2 var_8C
  loc_B26AF8: LitI2_Byte 3
  loc_B26AFA: EqI2
  loc_B26AFB: BranchF loc_B26B06
  loc_B26AFE: LitI2_Byte 4
  loc_B26B00: CUI1I2
  loc_B26B02: ImpAdStUI1 MemVar_D93038
  loc_B26B06: ImpAdLdUI1
  loc_B26B0A: CI2UI1
  loc_B26B0C: LitI2_Byte 0
  loc_B26B0E: NeI2
  loc_B26B0F: FLdRfVar var_90
  loc_B26B12: FLdPr Me
  loc_B26B15: VCallAd Control_ID_NumeCtaTxt
  loc_B26B18: FStAdFunc var_88
  loc_B26B1B: FLdPr var_88
  loc_B26B1E:  = Me.Text
  loc_B26B23: ILdRf var_90
  loc_B26B26: LitStr vbNullString
  loc_B26B29: NeStr
  loc_B26B2B: AndI4
  loc_B26B2C: FLdRfVar var_98
  loc_B26B2F: FLdPr Me
  loc_B26B32: VCallAd Control_ID_NumeCtaTxt
  loc_B26B35: FStAdFunc var_94
  loc_B26B38: FLdPr var_94
  loc_B26B3B:  = Me.Text
  loc_B26B40: ILdRf var_98
  loc_B26B43: LitStr "0"
  loc_B26B46: NeStr
  loc_B26B48: AndI4
  loc_B26B49: FFreeStr var_90 = ""
  loc_B26B50: FFreeAd var_88 = ""
  loc_B26B57: BranchF loc_B26D3B
  loc_B26B5A: FLdRfVar var_90
  loc_B26B5D: FLdPr Me
  loc_B26B60: VCallAd Control_ID_NumeCtaTxt
  loc_B26B63: FStAdFunc var_88
  loc_B26B66: FLdPr var_88
  loc_B26B69:  = Me.Text
  loc_B26B6E: FLdPr Me
  loc_B26B71: MemLdRfVar from_stack_1.global_56
  loc_B26B74: NewIfNullRf
  loc_B26B78: LitStr "Titular"
  loc_B26B7B: ILdRf var_90
  loc_B26B7E: ImpAdLdUI1
  loc_B26B82: CStrI2
  loc_B26B84: FStStrNoPop var_98
  loc_B26B87: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B26B8C: FFreeStr var_98 = ""
  loc_B26B93: FFree1Ad var_88
  loc_B26B96: BranchF loc_B26CBB
  loc_B26B99: FLdRfVar var_90
  loc_B26B9C: FLdPr Me
  loc_B26B9F: MemLdRfVar from_stack_1.global_56
  loc_B26BA2: NewIfNullPr tblPersona
  loc_B26BA5: from_stack_1v = tblPersona.CucuPersGet()
  loc_B26BAA: ILdRf var_90
  loc_B26BAD: FLdPr Me
  loc_B26BB0: VCallAd Control_ID_CucuPersLbl
  loc_B26BB3: FStAdFunc var_88
  loc_B26BB6: FLdPr var_88
  loc_B26BB9: Me.Caption = from_stack_1
  loc_B26BBE: FFree1Str var_90
  loc_B26BC1: FFree1Ad var_88
  loc_B26BC4: FLdRfVar var_90
  loc_B26BC7: FLdPr Me
  loc_B26BCA: MemLdRfVar from_stack_1.global_56
  loc_B26BCD: NewIfNullPr tblPersona
  loc_B26BD0: from_stack_1v = tblPersona.DetaPersGet()
  loc_B26BD5: ILdRf var_90
  loc_B26BD8: FLdPr Me
  loc_B26BDB: VCallAd Control_ID_DetaPersLbl
  loc_B26BDE: FStAdFunc var_88
  loc_B26BE1: FLdPr var_88
  loc_B26BE4: Me.Caption = from_stack_1
  loc_B26BE9: FFree1Str var_90
  loc_B26BEC: FFree1Ad var_88
  loc_B26BEF: FLdRfVar var_98
  loc_B26BF2: FLdPr Me
  loc_B26BF5: MemLdRfVar from_stack_1.global_56
  loc_B26BF8: NewIfNullPr tblPersona
  loc_B26BFB: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B26C00: FLdRfVar var_9C
  loc_B26C03: FLdPr Me
  loc_B26C06: MemLdRfVar from_stack_1.global_56
  loc_B26C09: NewIfNullPr tblPersona
  loc_B26C0C: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B26C11: FLdRfVar var_90
  loc_B26C14: FLdPr Me
  loc_B26C17: MemLdRfVar from_stack_1.global_56
  loc_B26C1A: NewIfNullPr tblPersona
  loc_B26C1D: from_stack_1v = tblPersona.DetaCallGet()
  loc_B26C22: ILdRf var_90
  loc_B26C25: LitStr " "
  loc_B26C28: ConcatStr
  loc_B26C29: CVarStr var_FC
  loc_B26C2C: LitVarStr var_CC, vbNullString
  loc_B26C31: FStVarCopyObj var_DC
  loc_B26C34: FLdRfVar var_DC
  loc_B26C37: LitStr "Nro: "
  loc_B26C3A: ILdRf var_9C
  loc_B26C3D: ConcatStr
  loc_B26C3E: CVarStr var_BC
  loc_B26C41: ILdRf var_98
  loc_B26C44: LitStr "0"
  loc_B26C47: NeStr
  loc_B26C49: CVarBoolI2 var_AC
  loc_B26C4D: FLdRfVar var_EC
  loc_B26C50: ImpAdCallFPR4  = IIf(, , )
  loc_B26C55: FLdRfVar var_EC
  loc_B26C58: ConcatVar var_10C
  loc_B26C5C: LitVarStr var_11C, " "
  loc_B26C61: ConcatVar var_12C
  loc_B26C65: FLdRfVar var_130
  loc_B26C68: FLdPr Me
  loc_B26C6B: MemLdRfVar from_stack_1.global_56
  loc_B26C6E: NewIfNullPr tblPersona
  loc_B26C71: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B26C76: FLdZeroAd var_130
  loc_B26C79: CVarStr var_140
  loc_B26C7C: ConcatVar var_150
  loc_B26C80: CStrVarVal var_154
  loc_B26C84: FLdPr Me
  loc_B26C87: VCallAd Control_ID_DomiPersLbl
  loc_B26C8A: FStAdFunc var_88
  loc_B26C8D: FLdPr var_88
  loc_B26C90: Me.Caption = from_stack_1
  loc_B26C95: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B26CA0: FFree1Ad var_88
  loc_B26CA3: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B26CB8: Branch loc_B26D3B
  loc_B26CBB: FLdRfVar var_90
  loc_B26CBE: FLdPr Me
  loc_B26CC1: MemLdRfVar from_stack_1.global_56
  loc_B26CC4: NewIfNullPr tblPersona
  loc_B26CC7: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B26CCC: ILdRf var_90
  loc_B26CCF: FLdPr Me
  loc_B26CD2: MemStStrCopy
  loc_B26CD6: FFree1Str var_90
  loc_B26CD9: FLdPr Me
  loc_B26CDC: MemLdStr global_88
  loc_B26CDF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B26CE4: LitStr vbNullString
  loc_B26CE7: FLdPr Me
  loc_B26CEA: VCallAd Control_ID_CucuPersLbl
  loc_B26CED: FStAdFunc var_88
  loc_B26CF0: FLdPr var_88
  loc_B26CF3: Me.Caption = from_stack_1
  loc_B26CF8: FFree1Ad var_88
  loc_B26CFB: LitStr vbNullString
  loc_B26CFE: FLdPr Me
  loc_B26D01: VCallAd Control_ID_DetaPersLbl
  loc_B26D04: FStAdFunc var_88
  loc_B26D07: FLdPr var_88
  loc_B26D0A: Me.Caption = from_stack_1
  loc_B26D0F: FFree1Ad var_88
  loc_B26D12: LitStr vbNullString
  loc_B26D15: FLdPr Me
  loc_B26D18: VCallAd Control_ID_DomiPersLbl
  loc_B26D1B: FStAdFunc var_88
  loc_B26D1E: FLdPr var_88
  loc_B26D21: Me.Caption = from_stack_1
  loc_B26D26: FFree1Ad var_88
  loc_B26D29: FLdPr Me
  loc_B26D2C: VCallAd Control_ID_NumeCtaTxt
  loc_B26D2F: CVarAd
  loc_B26D33: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B26D38: FFree1Var var_BC = ""
  loc_B26D3B: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'B360B4
  'Data Table: 4EBEA8
  loc_B35DC4: LitI4 0
  loc_B35DC9: LitI4 0
  loc_B35DCE: FLdRfVar var_88
  loc_B35DD1: Redim
  loc_B35DDB: FLdPr Me
  loc_B35DDE: VCallAd Control_ID_ConfirmarCmd
  loc_B35DE1: CVarAd
  loc_B35DE5: ParmAry1St
  loc_B35DEB: FLdRfVar var_88
  loc_B35DEE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B35DF3: FLdRfVar var_88
  loc_B35DF6: Erase
  loc_B35DF7: Call Proc_127_17_B18368()
  loc_B35DFC: LitI2_Byte 0
  loc_B35DFE: CR8I2
  loc_B35DFF: FLdPr Me
  loc_B35E02: MemStFPR8 global_92
  loc_B35E05: LitI2_Byte 0
  loc_B35E07: CR8I2
  loc_B35E08: FLdPr Me
  loc_B35E0B: MemStFPR8 global_100
  loc_B35E0E: LitI2_Byte 0
  loc_B35E10: CR8I2
  loc_B35E11: FLdPr Me
  loc_B35E14: MemStFPR8 global_108
  loc_B35E17: LitI2_Byte 0
  loc_B35E19: CR8I2
  loc_B35E1A: FLdPr Me
  loc_B35E1D: MemStFPR8 global_116
  loc_B35E20: LitI2_Byte 0
  loc_B35E22: CR8I2
  loc_B35E23: FLdPr Me
  loc_B35E26: MemStFPR8 global_124
  loc_B35E29: LitI4 1
  loc_B35E2E: LitI4 1
  loc_B35E33: LitVarStr var_B8, "0.00"
  loc_B35E38: FStVarCopyObj var_98
  loc_B35E3B: FLdRfVar var_98
  loc_B35E3E: FLdPr Me
  loc_B35E41: MemLdRfVar from_stack_1.global_92
  loc_B35E44: CVarRef
  loc_B35E49: FLdRfVar var_C8
  loc_B35E4C: ImpAdCallFPR4  = Format(, )
  loc_B35E51: FLdRfVar var_C8
  loc_B35E54: CStrVarVal var_CC
  loc_B35E58: FLdPr Me
  loc_B35E5B: VCallAd Control_ID_txtTotaDere
  loc_B35E5E: FStAdFunc var_D0
  loc_B35E61: FLdPr var_D0
  loc_B35E64: Me.Text = from_stack_1
  loc_B35E69: FFree1Str var_CC
  loc_B35E6C: FFree1Ad var_D0
  loc_B35E6F: FFreeVar var_98 = ""
  loc_B35E76: LitI4 1
  loc_B35E7B: LitI4 1
  loc_B35E80: LitVarStr var_B8, "0.00"
  loc_B35E85: FStVarCopyObj var_98
  loc_B35E88: FLdRfVar var_98
  loc_B35E8B: FLdPr Me
  loc_B35E8E: MemLdRfVar from_stack_1.global_100
  loc_B35E91: CVarRef
  loc_B35E96: FLdRfVar var_C8
  loc_B35E99: ImpAdCallFPR4  = Format(, )
  loc_B35E9E: FLdRfVar var_C8
  loc_B35EA1: CStrVarVal var_CC
  loc_B35EA5: FLdPr Me
  loc_B35EA8: VCallAd Control_ID_txtTotaReca
  loc_B35EAB: FStAdFunc var_D0
  loc_B35EAE: FLdPr var_D0
  loc_B35EB1: Me.Text = from_stack_1
  loc_B35EB6: FFree1Str var_CC
  loc_B35EB9: FFree1Ad var_D0
  loc_B35EBC: FFreeVar var_98 = ""
  loc_B35EC3: LitI4 1
  loc_B35EC8: LitI4 1
  loc_B35ECD: LitVarStr var_B8, "0.00"
  loc_B35ED2: FStVarCopyObj var_98
  loc_B35ED5: FLdRfVar var_98
  loc_B35ED8: FLdPr Me
  loc_B35EDB: MemLdRfVar from_stack_1.global_108
  loc_B35EDE: CVarRef
  loc_B35EE3: FLdRfVar var_C8
  loc_B35EE6: ImpAdCallFPR4  = Format(, )
  loc_B35EEB: FLdRfVar var_C8
  loc_B35EEE: CStrVarVal var_CC
  loc_B35EF2: FLdPr Me
  loc_B35EF5: VCallAd Control_ID_txtTotaApre
  loc_B35EF8: FStAdFunc var_D0
  loc_B35EFB: FLdPr var_D0
  loc_B35EFE: Me.Text = from_stack_1
  loc_B35F03: FFree1Str var_CC
  loc_B35F06: FFree1Ad var_D0
  loc_B35F09: FFreeVar var_98 = ""
  loc_B35F10: LitI4 2
  loc_B35F15: FLdPr Me
  loc_B35F18: MemLdRfVar from_stack_1.global_92
  loc_B35F1B: CVarRef
  loc_B35F20: FLdRfVar var_98
  loc_B35F23: ImpAdCallFPR4  = Round(, )
  loc_B35F28: FLdRfVar var_98
  loc_B35F2B: LitI4 2
  loc_B35F30: FLdPr Me
  loc_B35F33: MemLdRfVar from_stack_1.global_100
  loc_B35F36: CVarRef
  loc_B35F3B: FLdRfVar var_C8
  loc_B35F3E: ImpAdCallFPR4  = Round(, )
  loc_B35F43: FLdRfVar var_C8
  loc_B35F46: AddVar var_E0
  loc_B35F4A: LitI4 2
  loc_B35F4F: FLdPr Me
  loc_B35F52: MemLdRfVar from_stack_1.global_108
  loc_B35F55: CVarRef
  loc_B35F5A: FLdRfVar var_100
  loc_B35F5D: ImpAdCallFPR4  = Round(, )
  loc_B35F62: FLdRfVar var_100
  loc_B35F65: AddVar var_110
  loc_B35F69: CR4Var
  loc_B35F6A: FLdPr Me
  loc_B35F6D: MemStFPR8 global_116
  loc_B35F70: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B35F7D: LitI4 1
  loc_B35F82: LitI4 1
  loc_B35F87: LitVarStr var_B8, "0.00"
  loc_B35F8C: FStVarCopyObj var_98
  loc_B35F8F: FLdRfVar var_98
  loc_B35F92: FLdPr Me
  loc_B35F95: MemLdRfVar from_stack_1.global_116
  loc_B35F98: CVarRef
  loc_B35F9D: FLdRfVar var_C8
  loc_B35FA0: ImpAdCallFPR4  = Format(, )
  loc_B35FA5: FLdRfVar var_C8
  loc_B35FA8: CStrVarVal var_CC
  loc_B35FAC: FLdPr Me
  loc_B35FAF: VCallAd Control_ID_txtTotal
  loc_B35FB2: FStAdFunc var_D0
  loc_B35FB5: FLdPr var_D0
  loc_B35FB8: Me.Text = from_stack_1
  loc_B35FBD: FFree1Str var_CC
  loc_B35FC0: FFree1Ad var_D0
  loc_B35FC3: FFreeVar var_98 = ""
  loc_B35FCA: LitI4 1
  loc_B35FCF: LitI4 1
  loc_B35FD4: LitVarStr var_B8, "0.00"
  loc_B35FD9: FStVarCopyObj var_98
  loc_B35FDC: FLdRfVar var_98
  loc_B35FDF: FLdPr Me
  loc_B35FE2: MemLdRfVar from_stack_1.global_92
  loc_B35FE5: CVarRef
  loc_B35FEA: FLdRfVar var_C8
  loc_B35FED: ImpAdCallFPR4  = Format(, )
  loc_B35FF2: FLdRfVar var_C8
  loc_B35FF5: CStrVarVal var_CC
  loc_B35FF9: FLdPr Me
  loc_B35FFC: VCallAd Control_ID_txtDereSele
  loc_B35FFF: FStAdFunc var_D0
  loc_B36002: FLdPr var_D0
  loc_B36005: Me.Text = from_stack_1
  loc_B3600A: FFree1Str var_CC
  loc_B3600D: FFree1Ad var_D0
  loc_B36010: FFreeVar var_98 = ""
  loc_B36017: LitI4 1
  loc_B3601C: LitI4 1
  loc_B36021: LitVarStr var_B8, "0.00"
  loc_B36026: FStVarCopyObj var_98
  loc_B36029: FLdRfVar var_98
  loc_B3602C: FLdPr Me
  loc_B3602F: MemLdRfVar from_stack_1.global_100
  loc_B36032: CVarRef
  loc_B36037: FLdRfVar var_C8
  loc_B3603A: ImpAdCallFPR4  = Format(, )
  loc_B3603F: FLdRfVar var_C8
  loc_B36042: CStrVarVal var_CC
  loc_B36046: FLdPr Me
  loc_B36049: VCallAd Control_ID_txtRecaSele
  loc_B3604C: FStAdFunc var_D0
  loc_B3604F: FLdPr var_D0
  loc_B36052: Me.Text = from_stack_1
  loc_B36057: FFree1Str var_CC
  loc_B3605A: FFree1Ad var_D0
  loc_B3605D: FFreeVar var_98 = ""
  loc_B36064: LitI4 1
  loc_B36069: LitI4 1
  loc_B3606E: LitVarStr var_B8, "0.00"
  loc_B36073: FStVarCopyObj var_98
  loc_B36076: FLdRfVar var_98
  loc_B36079: FLdPr Me
  loc_B3607C: MemLdRfVar from_stack_1.global_124
  loc_B3607F: CVarRef
  loc_B36084: FLdRfVar var_C8
  loc_B36087: ImpAdCallFPR4  = Format(, )
  loc_B3608C: FLdRfVar var_C8
  loc_B3608F: CStrVarVal var_CC
  loc_B36093: FLdPr Me
  loc_B36096: VCallAd Control_ID_txtTotaSele
  loc_B36099: FStAdFunc var_D0
  loc_B3609C: FLdPr var_D0
  loc_B3609F: Me.Text = from_stack_1
  loc_B360A4: FFree1Str var_CC
  loc_B360A7: FFree1Ad var_D0
  loc_B360AA: FFreeVar var_98 = ""
  loc_B360B1: ExitProcHresult
  loc_B360B2: GtCy
End Sub

Private Sub ConfirmarCmd_Click() 'BD9890
  'Data Table: 4EBEA8
  loc_BD91C4: FLdPr Me
  loc_BD91C7: VCallAd Control_ID_ctacteFlex
  loc_BD91CA: FStAdFunc var_8C
  loc_BD91CD: FLdPr var_8C
  loc_BD91D0: LateIdLdVar var_9C DispID_4 0
  loc_BD91D7: CI4Var
  loc_BD91D9: LitI4 1
  loc_BD91DE: LeI4
  loc_BD91DF: FFree1Ad var_8C
  loc_BD91E2: FFree1Var var_9C = ""
  loc_BD91E5: BranchF loc_BD921A
  loc_BD91E8: LitVar_Missing var_10C
  loc_BD91EB: LitVar_Missing var_EC
  loc_BD91EE: LitVarStr var_BC, "InfoGov"
  loc_BD91F3: FStVarCopyObj var_CC
  loc_BD91F6: FLdRfVar var_CC
  loc_BD91F9: LitI4 &H30
  loc_BD91FE: LitVarStr var_AC, "No existe deuda seleccionada para realizar el credito. Reintente..."
  loc_BD9203: FStVarCopyObj var_9C
  loc_BD9206: FLdRfVar var_9C
  loc_BD9209: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BD920E: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_BD9219: ExitProcHresult
  loc_BD921A: LitI2_Byte 0
  loc_BD921C: FStI2 var_86
  loc_BD921F: LitI2_Byte 1
  loc_BD9221: FLdPr Me
  loc_BD9224: MemLdRfVar from_stack_1.global_60
  loc_BD9227: FLdPr Me
  loc_BD922A: VCallAd Control_ID_ctacteFlex
  loc_BD922D: FStAdFunc var_8C
  loc_BD9230: FLdPr var_8C
  loc_BD9233: LateIdLdVar var_9C DispID_4 0
  loc_BD923A: CI4Var
  loc_BD923C: LitI4 1
  loc_BD9241: SubI4
  loc_BD9242: CI2I4
  loc_BD9243: FFree1Ad var_8C
  loc_BD9246: FFree1Var var_9C = ""
  loc_BD9249: ForI2 var_110
  loc_BD924F: FLdPr Me
  loc_BD9252: MemLdI2 global_60
  loc_BD9255: CI4UI1
  loc_BD9256: CVarI4
  loc_BD925A: PopAdLdVar
  loc_BD925B: LitVarI4
  loc_BD9263: PopAdLdVar
  loc_BD9264: FLdPr Me
  loc_BD9267: VCallAd Control_ID_ctacteFlex
  loc_BD926A: FStAdFunc var_8C
  loc_BD926D: FLdPr var_8C
  loc_BD9270: LateIdCallLdVar
  loc_BD927A: CStrVarTmp
  loc_BD927B: FStStrNoPop var_114
  loc_BD927E: LitStr "Si"
  loc_BD9281: EqStr
  loc_BD9283: FLdPr Me
  loc_BD9286: MemLdI2 global_60
  loc_BD9289: CI4UI1
  loc_BD928A: CVarI4
  loc_BD928E: PopAdLdVar
  loc_BD928F: LitVarI4
  loc_BD9297: PopAdLdVar
  loc_BD9298: FLdPr Me
  loc_BD929B: VCallAd Control_ID_ctacteFlex
  loc_BD929E: FStAdFunc var_158
  loc_BD92A1: FLdPr var_158
  loc_BD92A4: LateIdCallLdVar
  loc_BD92AE: CStrVarTmp
  loc_BD92AF: FStStrNoPop var_15C
  loc_BD92B2: LitStr "SS"
  loc_BD92B5: EqStr
  loc_BD92B7: OrI4
  loc_BD92B8: FFreeStr var_114 = ""
  loc_BD92BF: FFreeAd var_8C = ""
  loc_BD92C6: FFreeVar var_9C = ""
  loc_BD92CD: BranchF loc_BD92D5
  loc_BD92D0: LitI2_Byte &HFF
  loc_BD92D2: FStI2 var_86
  loc_BD92D5: FLdPr Me
  loc_BD92D8: MemLdRfVar from_stack_1.global_60
  loc_BD92DB: NextI2 var_110, loc_BD924F
  loc_BD92E0: FLdI2 var_86
  loc_BD92E3: LitI2_Byte 0
  loc_BD92E5: EqI2
  loc_BD92E6: BranchF loc_BD931B
  loc_BD92E9: LitVar_Missing var_10C
  loc_BD92EC: LitVar_Missing var_EC
  loc_BD92EF: LitVarStr var_BC, "InfoGov"
  loc_BD92F4: FStVarCopyObj var_CC
  loc_BD92F7: FLdRfVar var_CC
  loc_BD92FA: LitI4 &H30
  loc_BD92FF: LitVarStr var_AC, "Debe Seleccionar por lo menos un item. Reintente..."
  loc_BD9304: FStVarCopyObj var_9C
  loc_BD9307: FLdRfVar var_9C
  loc_BD930A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BD930F: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_BD931A: ExitProcHresult
  loc_BD931B: LitI2_Byte 1
  loc_BD931D: FLdPr Me
  loc_BD9320: MemLdRfVar from_stack_1.global_60
  loc_BD9323: FLdPr Me
  loc_BD9326: VCallAd Control_ID_ctacteFlex
  loc_BD9329: FStAdFunc var_8C
  loc_BD932C: FLdPr var_8C
  loc_BD932F: LateIdLdVar var_9C DispID_4 0
  loc_BD9336: CI4Var
  loc_BD9338: LitI4 1
  loc_BD933D: SubI4
  loc_BD933E: CI2I4
  loc_BD933F: FFree1Ad var_8C
  loc_BD9342: FFree1Var var_9C = ""
  loc_BD9345: ForI2 var_160
  loc_BD934B: FLdPr Me
  loc_BD934E: MemLdI2 global_60
  loc_BD9351: CI4UI1
  loc_BD9352: CVarI4
  loc_BD9356: PopAdLdVar
  loc_BD9357: LitVarI4
  loc_BD935F: PopAdLdVar
  loc_BD9360: FLdPr Me
  loc_BD9363: VCallAd Control_ID_ctacteFlex
  loc_BD9366: FStAdFunc var_8C
  loc_BD9369: FLdPr var_8C
  loc_BD936C: LateIdCallLdVar
  loc_BD9376: CStrVarTmp
  loc_BD9377: FStStrNoPop var_114
  loc_BD937A: LitStr "Si"
  loc_BD937D: EqStr
  loc_BD937F: FFree1Str var_114
  loc_BD9382: FFree1Ad var_8C
  loc_BD9385: FFree1Var var_9C = ""
  loc_BD9388: BranchF loc_BD95EB
  loc_BD938B: FLdPr Me
  loc_BD938E: MemLdI2 global_60
  loc_BD9391: CI4UI1
  loc_BD9392: CVarI4
  loc_BD9396: PopAdLdVar
  loc_BD9397: LitVarI4
  loc_BD939F: PopAdLdVar
  loc_BD93A0: FLdPr Me
  loc_BD93A3: VCallAd Control_ID_ctacteFlex
  loc_BD93A6: FStAdFunc var_1DC
  loc_BD93A9: FLdPr var_1DC
  loc_BD93AC: LateIdCallLdVar
  loc_BD93B6: PopAd
  loc_BD93B8: FLdPr Me
  loc_BD93BB: MemLdI2 global_60
  loc_BD93BE: CI4UI1
  loc_BD93BF: CVarI4
  loc_BD93C3: PopAdLdVar
  loc_BD93C4: LitVarI4
  loc_BD93CC: PopAdLdVar
  loc_BD93CD: FLdPr Me
  loc_BD93D0: VCallAd Control_ID_ctacteFlex
  loc_BD93D3: FStAdFunc var_290
  loc_BD93D6: FLdPr var_290
  loc_BD93D9: LateIdCallLdVar
  loc_BD93E3: PopAd
  loc_BD93E5: LitStr "UPDATE ctacte SET ExpeCtct = '"
  loc_BD93E8: FLdRfVar var_114
  loc_BD93EB: FLdPr Me
  loc_BD93EE: VCallAd Control_ID_ExpeCtctTxt
  loc_BD93F1: FStAdFunc var_8C
  loc_BD93F4: FLdPr var_8C
  loc_BD93F7:  = Me.Text
  loc_BD93FC: ILdRf var_114
  loc_BD93FF: ConcatStr
  loc_BD9400: FStStrNoPop var_15C
  loc_BD9403: LitStr "'"
  loc_BD9406: ConcatStr
  loc_BD9407: FStStrNoPop var_164
  loc_BD940A: LitStr " , DetaCtct = '"
  loc_BD940D: ConcatStr
  loc_BD940E: FStStrNoPop var_16C
  loc_BD9411: FLdRfVar var_168
  loc_BD9414: FLdPr Me
  loc_BD9417: VCallAd Control_ID_DetaCtctTxt
  loc_BD941A: FStAdFunc var_158
  loc_BD941D: FLdPr var_158
  loc_BD9420:  = Me.Text
  loc_BD9425: ILdRf var_168
  loc_BD9428: ConcatStr
  loc_BD9429: FStStrNoPop var_170
  loc_BD942C: LitStr "'"
  loc_BD942F: ConcatStr
  loc_BD9430: FStStrNoPop var_174
  loc_BD9433: LitStr " WHERE ctacte.CodiOfic = "
  loc_BD9436: ConcatStr
  loc_BD9437: FStStrNoPop var_17C
  loc_BD943A: FLdPr Me
  loc_BD943D: MemLdI2 global_60
  loc_BD9440: CI4UI1
  loc_BD9441: CVarI4
  loc_BD9445: PopAdLdVar
  loc_BD9446: LitVarI4
  loc_BD944E: PopAdLdVar
  loc_BD944F: FLdPr Me
  loc_BD9452: VCallAd Control_ID_ctacteFlex
  loc_BD9455: FStAdFunc var_178
  loc_BD9458: FLdPr var_178
  loc_BD945B: LateIdCallLdVar
  loc_BD9465: CStrVarTmp
  loc_BD9466: FStStrNoPop var_180
  loc_BD9469: ConcatStr
  loc_BD946A: FStStrNoPop var_184
  loc_BD946D: LitStr " AND ctacte.CuenCtct = '"
  loc_BD9470: ConcatStr
  loc_BD9471: FStStrNoPop var_18C
  loc_BD9474: FLdPr Me
  loc_BD9477: MemLdI2 global_60
  loc_BD947A: CI4UI1
  loc_BD947B: CVarI4
  loc_BD947F: PopAdLdVar
  loc_BD9480: LitVarI4
  loc_BD9488: PopAdLdVar
  loc_BD9489: FLdPr Me
  loc_BD948C: VCallAd Control_ID_ctacteFlex
  loc_BD948F: FStAdFunc var_188
  loc_BD9492: FLdPr var_188
  loc_BD9495: LateIdCallLdVar
  loc_BD949F: CStrVarTmp
  loc_BD94A0: FStStrNoPop var_190
  loc_BD94A3: ConcatStr
  loc_BD94A4: FStStrNoPop var_194
  loc_BD94A7: LitStr "'"
  loc_BD94AA: ConcatStr
  loc_BD94AB: FStStrNoPop var_198
  loc_BD94AE: LitStr " AND ctacte.PeriCtct = "
  loc_BD94B1: ConcatStr
  loc_BD94B2: CVarStr var_21C
  loc_BD94B5: LitVarI2 var_1FC, 4
  loc_BD94BA: LitI4 4
  loc_BD94BF: FLdRfVar var_EC
  loc_BD94C2: CStrVarTmp
  loc_BD94C3: CVarStr var_10C
  loc_BD94C6: FLdRfVar var_20C
  loc_BD94C9: ImpAdCallFPR4  = Mid(, , )
  loc_BD94CE: FLdRfVar var_20C
  loc_BD94D1: ConcatVar var_22C
  loc_BD94D5: LitVarStr var_23C, " AND ctacte.BimeCtct = "
  loc_BD94DA: ConcatVar var_24C
  loc_BD94DE: LitVarI2 var_2D0, 2
  loc_BD94E3: LitI4 1
  loc_BD94E8: FLdRfVar var_2A0
  loc_BD94EB: CStrVarTmp
  loc_BD94EC: CVarStr var_2B0
  loc_BD94EF: FLdRfVar var_2E0
  loc_BD94F2: ImpAdCallFPR4  = Mid(, , )
  loc_BD94F7: FLdRfVar var_2E0
  loc_BD94FA: ConcatVar var_2F0
  loc_BD94FE: LitVarStr var_300, " AND ctacte.NumeCtct = "
  loc_BD9503: ConcatVar var_310
  loc_BD9507: FLdPr Me
  loc_BD950A: MemLdI2 global_60
  loc_BD950D: CI4UI1
  loc_BD950E: CVarI4
  loc_BD9512: PopAdLdVar
  loc_BD9513: LitVarI4
  loc_BD951B: PopAdLdVar
  loc_BD951C: FLdPr Me
  loc_BD951F: VCallAd Control_ID_ctacteFlex
  loc_BD9522: FStAdFunc var_354
  loc_BD9525: FLdPr var_354
  loc_BD9528: LateIdCallLdVar
  loc_BD9532: CStrVarTmp
  loc_BD9533: CVarStr var_374
  loc_BD9536: ConcatVar var_384
  loc_BD953A: LitVarStr var_394, " AND ctacte.MoviCtct = "
  loc_BD953F: ConcatVar var_3A4
  loc_BD9543: FLdPr Me
  loc_BD9546: MemLdI2 global_60
  loc_BD9549: CI4UI1
  loc_BD954A: CVarI4
  loc_BD954E: PopAdLdVar
  loc_BD954F: LitVarI4
  loc_BD9557: PopAdLdVar
  loc_BD9558: FLdPr Me
  loc_BD955B: VCallAd Control_ID_ctacteFlex
  loc_BD955E: FStAdFunc var_3E8
  loc_BD9561: FLdPr var_3E8
  loc_BD9564: LateIdCallLdVar
  loc_BD956E: CStrVarTmp
  loc_BD956F: CVarStr var_408
  loc_BD9572: ConcatVar var_418
  loc_BD9576: CStrVarVal var_41C
  loc_BD957A: FLdPr Me
  loc_BD957D: MemLdRfVar from_stack_1.global_52
  loc_BD9580: NewIfNullPr clsctacte
  loc_BD9583: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_BD9588: FFreeStr var_114 = "": var_15C = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_17C = "": var_180 = "": var_184 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_BD95A9: FFreeAd var_8C = "": var_158 = "": var_178 = "": var_188 = "": var_1DC = "": var_290 = "": var_354 = ""
  loc_BD95BC: FFreeVar var_9C = "": var_CC = "": var_EC = "": var_10C = "": var_1FC = "": var_21C = "": var_20C = "": var_22C = "": var_2A0 = "": var_2B0 = "": var_2D0 = "": var_24C = "": var_2E0 = "": var_2F0 = "": var_364 = "": var_310 = "": var_374 = "": var_384 = "": var_3F8 = "": var_3A4 = "": var_408 = ""
  loc_BD95EB: FLdPr Me
  loc_BD95EE: MemLdRfVar from_stack_1.global_60
  loc_BD95F1: NextI2 var_160, loc_BD934B
  loc_BD95F6: LitStr "La MODIFICACIÓN DEL CREDITO MANUAL se realizo con exito. Verifique en la cuenta corriente..."
  loc_BD95F9: FLdPr Me
  loc_BD95FC: MemStStrCopy
  loc_BD9600: FLdPr Me
  loc_BD9603: MemLdStr global_88
  loc_BD9606: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD960B: Call Proc_127_17_B18368()
  loc_BD9610: ILdRf Me
  loc_BD9613: CastAd
  loc_BD9616: FStAdFunc var_8C
  loc_BD9619: FLdRfVar var_8C
  loc_BD961C: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BD9621: FFree1Ad var_8C
  loc_BD9624: LitI4 1
  loc_BD9629: LitI4 1
  loc_BD962E: LitVarStr var_BC, "0.00"
  loc_BD9633: FStVarCopyObj var_CC
  loc_BD9636: FLdRfVar var_CC
  loc_BD9639: LitVarI2 var_9C, 0
  loc_BD963E: FLdRfVar var_EC
  loc_BD9641: ImpAdCallFPR4  = Format(, )
  loc_BD9646: FLdRfVar var_EC
  loc_BD9649: CStrVarVal var_114
  loc_BD964D: FLdPr Me
  loc_BD9650: VCallAd Control_ID_txtTotaApre
  loc_BD9653: FStAdFunc var_8C
  loc_BD9656: FLdPr var_8C
  loc_BD9659: Me.Text = from_stack_1
  loc_BD965E: FFree1Str var_114
  loc_BD9661: FFree1Ad var_8C
  loc_BD9664: FFreeVar var_9C = "": var_CC = ""
  loc_BD966D: LitI4 1
  loc_BD9672: LitI4 1
  loc_BD9677: LitVarStr var_BC, "0.00"
  loc_BD967C: FStVarCopyObj var_CC
  loc_BD967F: FLdRfVar var_CC
  loc_BD9682: LitVarI2 var_9C, 0
  loc_BD9687: FLdRfVar var_EC
  loc_BD968A: ImpAdCallFPR4  = Format(, )
  loc_BD968F: FLdRfVar var_EC
  loc_BD9692: CStrVarVal var_114
  loc_BD9696: FLdPr Me
  loc_BD9699: VCallAd Control_ID_txtTotaDere
  loc_BD969C: FStAdFunc var_8C
  loc_BD969F: FLdPr var_8C
  loc_BD96A2: Me.Text = from_stack_1
  loc_BD96A7: FFree1Str var_114
  loc_BD96AA: FFree1Ad var_8C
  loc_BD96AD: FFreeVar var_9C = "": var_CC = ""
  loc_BD96B6: LitI4 1
  loc_BD96BB: LitI4 1
  loc_BD96C0: LitVarStr var_BC, "0.00"
  loc_BD96C5: FStVarCopyObj var_CC
  loc_BD96C8: FLdRfVar var_CC
  loc_BD96CB: LitVarI2 var_9C, 0
  loc_BD96D0: FLdRfVar var_EC
  loc_BD96D3: ImpAdCallFPR4  = Format(, )
  loc_BD96D8: FLdRfVar var_EC
  loc_BD96DB: CStrVarVal var_114
  loc_BD96DF: FLdPr Me
  loc_BD96E2: VCallAd Control_ID_txtTotaReca
  loc_BD96E5: FStAdFunc var_8C
  loc_BD96E8: FLdPr var_8C
  loc_BD96EB: Me.Text = from_stack_1
  loc_BD96F0: FFree1Str var_114
  loc_BD96F3: FFree1Ad var_8C
  loc_BD96F6: FFreeVar var_9C = "": var_CC = ""
  loc_BD96FF: LitI4 1
  loc_BD9704: LitI4 1
  loc_BD9709: LitVarStr var_BC, "0.00"
  loc_BD970E: FStVarCopyObj var_CC
  loc_BD9711: FLdRfVar var_CC
  loc_BD9714: LitVarI2 var_9C, 0
  loc_BD9719: FLdRfVar var_EC
  loc_BD971C: ImpAdCallFPR4  = Format(, )
  loc_BD9721: FLdRfVar var_EC
  loc_BD9724: CStrVarVal var_114
  loc_BD9728: FLdPr Me
  loc_BD972B: VCallAd Control_ID_txtTotal
  loc_BD972E: FStAdFunc var_8C
  loc_BD9731: FLdPr var_8C
  loc_BD9734: Me.Text = from_stack_1
  loc_BD9739: FFree1Str var_114
  loc_BD973C: FFree1Ad var_8C
  loc_BD973F: FFreeVar var_9C = "": var_CC = ""
  loc_BD9748: LitI4 1
  loc_BD974D: LitI4 1
  loc_BD9752: LitVarStr var_BC, "0.00"
  loc_BD9757: FStVarCopyObj var_CC
  loc_BD975A: FLdRfVar var_CC
  loc_BD975D: LitVarI2 var_9C, 0
  loc_BD9762: FLdRfVar var_EC
  loc_BD9765: ImpAdCallFPR4  = Format(, )
  loc_BD976A: FLdRfVar var_EC
  loc_BD976D: CStrVarVal var_114
  loc_BD9771: FLdPr Me
  loc_BD9774: VCallAd Control_ID_txtDereSele
  loc_BD9777: FStAdFunc var_8C
  loc_BD977A: FLdPr var_8C
  loc_BD977D: Me.Text = from_stack_1
  loc_BD9782: FFree1Str var_114
  loc_BD9785: FFree1Ad var_8C
  loc_BD9788: FFreeVar var_9C = "": var_CC = ""
  loc_BD9791: LitI4 1
  loc_BD9796: LitI4 1
  loc_BD979B: LitVarStr var_BC, "0.00"
  loc_BD97A0: FStVarCopyObj var_CC
  loc_BD97A3: FLdRfVar var_CC
  loc_BD97A6: LitVarI2 var_9C, 0
  loc_BD97AB: FLdRfVar var_EC
  loc_BD97AE: ImpAdCallFPR4  = Format(, )
  loc_BD97B3: FLdRfVar var_EC
  loc_BD97B6: CStrVarVal var_114
  loc_BD97BA: FLdPr Me
  loc_BD97BD: VCallAd Control_ID_txtRecaSele
  loc_BD97C0: FStAdFunc var_8C
  loc_BD97C3: FLdPr var_8C
  loc_BD97C6: Me.Text = from_stack_1
  loc_BD97CB: FFree1Str var_114
  loc_BD97CE: FFree1Ad var_8C
  loc_BD97D1: FFreeVar var_9C = "": var_CC = ""
  loc_BD97DA: LitI4 1
  loc_BD97DF: LitI4 1
  loc_BD97E4: LitVarStr var_BC, "0.00"
  loc_BD97E9: FStVarCopyObj var_CC
  loc_BD97EC: FLdRfVar var_CC
  loc_BD97EF: LitVarI2 var_9C, 0
  loc_BD97F4: FLdRfVar var_EC
  loc_BD97F7: ImpAdCallFPR4  = Format(, )
  loc_BD97FC: FLdRfVar var_EC
  loc_BD97FF: CStrVarVal var_114
  loc_BD9803: FLdPr Me
  loc_BD9806: VCallAd Control_ID_txtTotaSele
  loc_BD9809: FStAdFunc var_8C
  loc_BD980C: FLdPr var_8C
  loc_BD980F: Me.Text = from_stack_1
  loc_BD9814: FFree1Str var_114
  loc_BD9817: FFree1Ad var_8C
  loc_BD981A: FFreeVar var_9C = "": var_CC = ""
  loc_BD9823: LitI2_Byte 0
  loc_BD9825: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BD982A: CStrDate
  loc_BD982C: CVarStr var_9C
  loc_BD982F: PopAdLdVar
  loc_BD9830: FLdPr Me
  loc_BD9833: VCallAd Control_ID_FechVencMsk
  loc_BD9836: FStAdFunc var_8C
  loc_BD9839: FLdPr var_8C
  loc_BD983C: LateIdSt
  loc_BD9841: FFree1Ad var_8C
  loc_BD9844: FFree1Var var_9C = ""
  loc_BD9847: LitI4 0
  loc_BD984C: LitI4 0
  loc_BD9851: FLdRfVar var_420
  loc_BD9854: Redim
  loc_BD985E: FLdPr Me
  loc_BD9861: VCallAd Control_ID_ConfirmarCmd
  loc_BD9864: CVarAd
  loc_BD9868: ParmAry1St
  loc_BD986E: FLdRfVar var_420
  loc_BD9871: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BD9876: FLdRfVar var_420
  loc_BD9879: Erase
  loc_BD987A: FLdPr Me
  loc_BD987D: VCallAd Control_ID_OficinaCbo
  loc_BD9880: FStAdFunc var_8C
  loc_BD9883: FLdPr var_8C
  loc_BD9886: Me.SetFocus
  loc_BD988B: FFree1Ad var_8C
  loc_BD988E: ExitProcHresult
End Sub

Private Sub Form_Load() 'B7EC70
  'Data Table: 4EBEA8
  loc_B7E760: LitVar_Missing var_94
  loc_B7E763: PopAdLdVar
  loc_B7E764: LitStr "Inmueble"
  loc_B7E767: FLdPr Me
  loc_B7E76A: VCallAd Control_ID_OficinaCbo
  loc_B7E76D: FStAdFunc var_98
  loc_B7E770: FLdPr var_98
  loc_B7E773: Me.AddItem from_stack_1, from_stack_2
  loc_B7E778: FFree1Ad var_98
  loc_B7E77B: LitVar_Missing var_94
  loc_B7E77E: PopAdLdVar
  loc_B7E77F: LitStr "Comercio"
  loc_B7E782: FLdPr Me
  loc_B7E785: VCallAd Control_ID_OficinaCbo
  loc_B7E788: FStAdFunc var_98
  loc_B7E78B: FLdPr var_98
  loc_B7E78E: Me.AddItem from_stack_1, from_stack_2
  loc_B7E793: FFree1Ad var_98
  loc_B7E796: LitVar_Missing var_94
  loc_B7E799: PopAdLdVar
  loc_B7E79A: LitStr "Deudores Varios"
  loc_B7E79D: FLdPr Me
  loc_B7E7A0: VCallAd Control_ID_OficinaCbo
  loc_B7E7A3: FStAdFunc var_98
  loc_B7E7A6: FLdPr var_98
  loc_B7E7A9: Me.AddItem from_stack_1, from_stack_2
  loc_B7E7AE: FFree1Ad var_98
  loc_B7E7B1: LitVar_Missing var_94
  loc_B7E7B4: PopAdLdVar
  loc_B7E7B5: LitStr "Cementerio"
  loc_B7E7B8: FLdPr Me
  loc_B7E7BB: VCallAd Control_ID_OficinaCbo
  loc_B7E7BE: FStAdFunc var_98
  loc_B7E7C1: FLdPr var_98
  loc_B7E7C4: Me.AddItem from_stack_1, from_stack_2
  loc_B7E7C9: FFree1Ad var_98
  loc_B7E7CC: LitI2_Byte 0
  loc_B7E7CE: FLdPr Me
  loc_B7E7D1: VCallAd Control_ID_OficinaCbo
  loc_B7E7D4: FStAdFunc var_98
  loc_B7E7D7: FLdPr var_98
  loc_B7E7DA: Me.ListIndex = from_stack_1
  loc_B7E7DF: FFree1Ad var_98
  loc_B7E7E2: LitStr "0"
  loc_B7E7E5: FLdPr Me
  loc_B7E7E8: VCallAd Control_ID_NumeCtaTxt
  loc_B7E7EB: FStAdFunc var_98
  loc_B7E7EE: FLdPr var_98
  loc_B7E7F1: Me.Text = from_stack_1
  loc_B7E7F6: FFree1Ad var_98
  loc_B7E7F9: LitI2_Byte 0
  loc_B7E7FB: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7E800: CStrDate
  loc_B7E802: CVarStr var_A8
  loc_B7E805: PopAdLdVar
  loc_B7E806: FLdPr Me
  loc_B7E809: VCallAd Control_ID_FechVencMsk
  loc_B7E80C: FStAdFunc var_98
  loc_B7E80F: FLdPr var_98
  loc_B7E812: LateIdSt
  loc_B7E817: FFree1Ad var_98
  loc_B7E81A: FFree1Var var_A8 = ""
  loc_B7E81D: FLdPr Me
  loc_B7E820: VCallAd Control_ID_ctacteFlex
  loc_B7E823: FStAdFunc var_AC
  loc_B7E826: LitVarI4
  loc_B7E82E: PopAdLdVar
  loc_B7E82F: LitVarI4
  loc_B7E837: PopAdLdVar
  loc_B7E838: FLdPr var_AC
  loc_B7E83B: LateIdCallSt
  loc_B7E843: LitVarI4
  loc_B7E84B: PopAdLdVar
  loc_B7E84C: LitVarI4
  loc_B7E854: PopAdLdVar
  loc_B7E855: FLdPr var_AC
  loc_B7E858: LateIdCallSt
  loc_B7E860: LitVarI4
  loc_B7E868: PopAdLdVar
  loc_B7E869: LitVarI4
  loc_B7E871: PopAdLdVar
  loc_B7E872: FLdPr var_AC
  loc_B7E875: LateIdCallSt
  loc_B7E87D: LitVarI4
  loc_B7E885: PopAdLdVar
  loc_B7E886: LitVarI4
  loc_B7E88E: PopAdLdVar
  loc_B7E88F: FLdPr var_AC
  loc_B7E892: LateIdCallSt
  loc_B7E89A: LitVarI4
  loc_B7E8A2: PopAdLdVar
  loc_B7E8A3: LitVarI4
  loc_B7E8AB: PopAdLdVar
  loc_B7E8AC: FLdPr var_AC
  loc_B7E8AF: LateIdCallSt
  loc_B7E8B7: LitVarI4
  loc_B7E8BF: PopAdLdVar
  loc_B7E8C0: LitVarI4
  loc_B7E8C8: PopAdLdVar
  loc_B7E8C9: FLdPr var_AC
  loc_B7E8CC: LateIdCallSt
  loc_B7E8D4: LitVarI4
  loc_B7E8DC: PopAdLdVar
  loc_B7E8DD: LitVarI4
  loc_B7E8E5: PopAdLdVar
  loc_B7E8E6: FLdPr var_AC
  loc_B7E8E9: LateIdCallSt
  loc_B7E8F1: LitVarI4
  loc_B7E8F9: PopAdLdVar
  loc_B7E8FA: LitVarI4
  loc_B7E902: PopAdLdVar
  loc_B7E903: FLdPr var_AC
  loc_B7E906: LateIdCallSt
  loc_B7E90E: LitVarI4
  loc_B7E916: PopAdLdVar
  loc_B7E917: LitVarI4
  loc_B7E91F: PopAdLdVar
  loc_B7E920: FLdPr var_AC
  loc_B7E923: LateIdCallSt
  loc_B7E92B: LitVarI4
  loc_B7E933: PopAdLdVar
  loc_B7E934: LitVarI4
  loc_B7E93C: PopAdLdVar
  loc_B7E93D: FLdPr var_AC
  loc_B7E940: LateIdCallSt
  loc_B7E948: LitVarI4
  loc_B7E950: PopAdLdVar
  loc_B7E951: LitVarI4
  loc_B7E959: PopAdLdVar
  loc_B7E95A: FLdPr var_AC
  loc_B7E95D: LateIdCallSt
  loc_B7E965: LitVarI4
  loc_B7E96D: PopAdLdVar
  loc_B7E96E: LitVarI4
  loc_B7E976: PopAdLdVar
  loc_B7E977: FLdPr var_AC
  loc_B7E97A: LateIdCallSt
  loc_B7E982: LitVarI4
  loc_B7E98A: PopAdLdVar
  loc_B7E98B: LitVarI4
  loc_B7E993: PopAdLdVar
  loc_B7E994: FLdPr var_AC
  loc_B7E997: LateIdCallSt
  loc_B7E99F: LitVarI4
  loc_B7E9A7: PopAdLdVar
  loc_B7E9A8: LitVarI4
  loc_B7E9B0: PopAdLdVar
  loc_B7E9B1: FLdPr var_AC
  loc_B7E9B4: LateIdCallSt
  loc_B7E9BC: LitVarI4
  loc_B7E9C4: PopAdLdVar
  loc_B7E9C5: LitVarI4
  loc_B7E9CD: PopAdLdVar
  loc_B7E9CE: FLdPr var_AC
  loc_B7E9D1: LateIdCallSt
  loc_B7E9D9: LitVarI4
  loc_B7E9E1: PopAdLdVar
  loc_B7E9E2: LitVarI4
  loc_B7E9EA: PopAdLdVar
  loc_B7E9EB: FLdPr var_AC
  loc_B7E9EE: LateIdCallSt
  loc_B7E9F6: LitVarI4
  loc_B7E9FE: PopAdLdVar
  loc_B7E9FF: LitVarI4
  loc_B7EA07: PopAdLdVar
  loc_B7EA08: FLdPr var_AC
  loc_B7EA0B: LateIdCallSt
  loc_B7EA13: LitVarI4
  loc_B7EA1B: PopAdLdVar
  loc_B7EA1C: LitVarI4
  loc_B7EA24: PopAdLdVar
  loc_B7EA25: LitVarStr var_EC, "Of"
  loc_B7EA2A: PopAdLdVar
  loc_B7EA2B: FLdPr var_AC
  loc_B7EA2E: LateIdCallSt
  loc_B7EA36: LitVarI4
  loc_B7EA3E: PopAdLdVar
  loc_B7EA3F: LitVarI4
  loc_B7EA47: PopAdLdVar
  loc_B7EA48: LitVarStr var_EC, "Cuenta"
  loc_B7EA4D: PopAdLdVar
  loc_B7EA4E: FLdPr var_AC
  loc_B7EA51: LateIdCallSt
  loc_B7EA59: LitVarI4
  loc_B7EA61: PopAdLdVar
  loc_B7EA62: LitVarI4
  loc_B7EA6A: PopAdLdVar
  loc_B7EA6B: LitVarStr var_EC, "Periodo"
  loc_B7EA70: PopAdLdVar
  loc_B7EA71: FLdPr var_AC
  loc_B7EA74: LateIdCallSt
  loc_B7EA7C: LitVarI4
  loc_B7EA84: PopAdLdVar
  loc_B7EA85: LitVarI4
  loc_B7EA8D: PopAdLdVar
  loc_B7EA8E: LitVarStr var_EC, "Boleto"
  loc_B7EA93: PopAdLdVar
  loc_B7EA94: FLdPr var_AC
  loc_B7EA97: LateIdCallSt
  loc_B7EA9F: LitVarI4
  loc_B7EAA7: PopAdLdVar
  loc_B7EAA8: LitVarI4
  loc_B7EAB0: PopAdLdVar
  loc_B7EAB1: LitVarStr var_EC, "Emision"
  loc_B7EAB6: PopAdLdVar
  loc_B7EAB7: FLdPr var_AC
  loc_B7EABA: LateIdCallSt
  loc_B7EAC2: LitVarI4
  loc_B7EACA: PopAdLdVar
  loc_B7EACB: LitVarI4
  loc_B7EAD3: PopAdLdVar
  loc_B7EAD4: LitVarStr var_EC, "Vencimiento"
  loc_B7EAD9: PopAdLdVar
  loc_B7EADA: FLdPr var_AC
  loc_B7EADD: LateIdCallSt
  loc_B7EAE5: LitVarI4
  loc_B7EAED: PopAdLdVar
  loc_B7EAEE: LitVarI4
  loc_B7EAF6: PopAdLdVar
  loc_B7EAF7: LitVarStr var_EC, "Concepto"
  loc_B7EAFC: PopAdLdVar
  loc_B7EAFD: FLdPr var_AC
  loc_B7EB00: LateIdCallSt
  loc_B7EB08: LitVarI4
  loc_B7EB10: PopAdLdVar
  loc_B7EB11: LitVarI4
  loc_B7EB19: PopAdLdVar
  loc_B7EB1A: LitVarStr var_EC, "Facilidad"
  loc_B7EB1F: PopAdLdVar
  loc_B7EB20: FLdPr var_AC
  loc_B7EB23: LateIdCallSt
  loc_B7EB2B: LitVarI4
  loc_B7EB33: PopAdLdVar
  loc_B7EB34: LitVarI4
  loc_B7EB3C: PopAdLdVar
  loc_B7EB3D: LitVarStr var_EC, "Apremio"
  loc_B7EB42: PopAdLdVar
  loc_B7EB43: FLdPr var_AC
  loc_B7EB46: LateIdCallSt
  loc_B7EB4E: LitVarI4
  loc_B7EB56: PopAdLdVar
  loc_B7EB57: LitVarI4
  loc_B7EB5F: PopAdLdVar
  loc_B7EB60: LitVarStr var_EC, "Exp/Comp"
  loc_B7EB65: PopAdLdVar
  loc_B7EB66: FLdPr var_AC
  loc_B7EB69: LateIdCallSt
  loc_B7EB71: LitVarI4
  loc_B7EB79: PopAdLdVar
  loc_B7EB7A: LitVarI4
  loc_B7EB82: PopAdLdVar
  loc_B7EB83: LitVarStr var_EC, "Tipo Movi."
  loc_B7EB88: PopAdLdVar
  loc_B7EB89: FLdPr var_AC
  loc_B7EB8C: LateIdCallSt
  loc_B7EB94: LitVarI4
  loc_B7EB9C: PopAdLdVar
  loc_B7EB9D: LitVarI4
  loc_B7EBA5: PopAdLdVar
  loc_B7EBA6: LitVarStr var_EC, "Crédito"
  loc_B7EBAB: PopAdLdVar
  loc_B7EBAC: FLdPr var_AC
  loc_B7EBAF: LateIdCallSt
  loc_B7EBB7: LitVarI4
  loc_B7EBBF: PopAdLdVar
  loc_B7EBC0: LitVarI4
  loc_B7EBC8: PopAdLdVar
  loc_B7EBC9: LitVarStr var_EC, "Recargo"
  loc_B7EBCE: PopAdLdVar
  loc_B7EBCF: FLdPr var_AC
  loc_B7EBD2: LateIdCallSt
  loc_B7EBDA: LitVarI4
  loc_B7EBE2: PopAdLdVar
  loc_B7EBE3: LitVarI4
  loc_B7EBEB: PopAdLdVar
  loc_B7EBEC: LitVarStr var_EC, "Saldo"
  loc_B7EBF1: PopAdLdVar
  loc_B7EBF2: FLdPr var_AC
  loc_B7EBF5: LateIdCallSt
  loc_B7EBFD: LitVarI4
  loc_B7EC05: PopAdLdVar
  loc_B7EC06: LitVarI4
  loc_B7EC0E: PopAdLdVar
  loc_B7EC0F: LitVarStr var_EC, "Sel"
  loc_B7EC14: PopAdLdVar
  loc_B7EC15: FLdPr var_AC
  loc_B7EC18: LateIdCallSt
  loc_B7EC20: LitVarI4
  loc_B7EC28: PopAdLdVar
  loc_B7EC29: LitVarI4
  loc_B7EC31: PopAdLdVar
  loc_B7EC32: LitVarStr var_EC, "Numero"
  loc_B7EC37: PopAdLdVar
  loc_B7EC38: FLdPr var_AC
  loc_B7EC3B: LateIdCallSt
  loc_B7EC43: LitVarI4
  loc_B7EC4B: PopAdLdVar
  loc_B7EC4C: LitVarI4
  loc_B7EC54: PopAdLdVar
  loc_B7EC55: LitVarStr var_EC, "Mov"
  loc_B7EC5A: PopAdLdVar
  loc_B7EC5B: FLdPr var_AC
  loc_B7EC5E: LateIdCallSt
  loc_B7EC66: LitNothing
  loc_B7EC68: FStAd var_AC 
  loc_B7EC6C: ExitProcHresult
  loc_B7EC6D: FLdPr Me
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BAA14
  'Data Table: 4EBEA8
  loc_9BAA00: ILdI2 KeyCode
  loc_9BAA03: CI4UI1
  loc_9BAA04: LitI4 &H78
  loc_9BAA09: EqI4
  loc_9BAA0A: BranchF loc_9BAA12
  loc_9BAA0D: Call SalirCmd_Click()
  loc_9BAA12: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'B39594
  'Data Table: 4EBEA8
  loc_B39294: LitI4 0
  loc_B39299: LitI4 0
  loc_B3929E: FLdRfVar var_88
  loc_B392A1: Redim
  loc_B392AB: FLdPr Me
  loc_B392AE: VCallAd Control_ID_ConfirmarCmd
  loc_B392B1: CVarAd
  loc_B392B5: ParmAry1St
  loc_B392BB: FLdRfVar var_88
  loc_B392BE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B392C3: FLdRfVar var_88
  loc_B392C6: Erase
  loc_B392C7: Call Proc_127_17_B18368()
  loc_B392CC: FLdPrThis
  loc_B392CD: VCallAd Control_ID_NumeCtaTxt
  loc_B392D0: CVarAd
  loc_B392D4: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_B392D9: FFree1Var var_98 = ""
  loc_B392DC: LitI2_Byte 0
  loc_B392DE: CR8I2
  loc_B392DF: FLdPr Me
  loc_B392E2: MemStFPR8 global_92
  loc_B392E5: LitI2_Byte 0
  loc_B392E7: CR8I2
  loc_B392E8: FLdPr Me
  loc_B392EB: MemStFPR8 global_100
  loc_B392EE: LitI2_Byte 0
  loc_B392F0: CR8I2
  loc_B392F1: FLdPr Me
  loc_B392F4: MemStFPR8 global_108
  loc_B392F7: LitI2_Byte 0
  loc_B392F9: CR8I2
  loc_B392FA: FLdPr Me
  loc_B392FD: MemStFPR8 global_116
  loc_B39300: LitI2_Byte 0
  loc_B39302: CR8I2
  loc_B39303: FLdPr Me
  loc_B39306: MemStFPR8 global_124
  loc_B39309: LitI4 1
  loc_B3930E: LitI4 1
  loc_B39313: LitVarStr var_B8, "0.00"
  loc_B39318: FStVarCopyObj var_98
  loc_B3931B: FLdRfVar var_98
  loc_B3931E: FLdPr Me
  loc_B39321: MemLdRfVar from_stack_1.global_92
  loc_B39324: CVarRef
  loc_B39329: FLdRfVar var_C8
  loc_B3932C: ImpAdCallFPR4  = Format(, )
  loc_B39331: FLdRfVar var_C8
  loc_B39334: CStrVarVal var_CC
  loc_B39338: FLdPr Me
  loc_B3933B: VCallAd Control_ID_txtTotaDere
  loc_B3933E: FStAdFunc var_D0
  loc_B39341: FLdPr var_D0
  loc_B39344: Me.Text = from_stack_1
  loc_B39349: FFree1Str var_CC
  loc_B3934C: FFree1Ad var_D0
  loc_B3934F: FFreeVar var_98 = ""
  loc_B39356: LitI4 1
  loc_B3935B: LitI4 1
  loc_B39360: LitVarStr var_B8, "0.00"
  loc_B39365: FStVarCopyObj var_98
  loc_B39368: FLdRfVar var_98
  loc_B3936B: FLdPr Me
  loc_B3936E: MemLdRfVar from_stack_1.global_100
  loc_B39371: CVarRef
  loc_B39376: FLdRfVar var_C8
  loc_B39379: ImpAdCallFPR4  = Format(, )
  loc_B3937E: FLdRfVar var_C8
  loc_B39381: CStrVarVal var_CC
  loc_B39385: FLdPr Me
  loc_B39388: VCallAd Control_ID_txtTotaReca
  loc_B3938B: FStAdFunc var_D0
  loc_B3938E: FLdPr var_D0
  loc_B39391: Me.Text = from_stack_1
  loc_B39396: FFree1Str var_CC
  loc_B39399: FFree1Ad var_D0
  loc_B3939C: FFreeVar var_98 = ""
  loc_B393A3: LitI4 1
  loc_B393A8: LitI4 1
  loc_B393AD: LitVarStr var_B8, "0.00"
  loc_B393B2: FStVarCopyObj var_98
  loc_B393B5: FLdRfVar var_98
  loc_B393B8: FLdPr Me
  loc_B393BB: MemLdRfVar from_stack_1.global_108
  loc_B393BE: CVarRef
  loc_B393C3: FLdRfVar var_C8
  loc_B393C6: ImpAdCallFPR4  = Format(, )
  loc_B393CB: FLdRfVar var_C8
  loc_B393CE: CStrVarVal var_CC
  loc_B393D2: FLdPr Me
  loc_B393D5: VCallAd Control_ID_txtTotaApre
  loc_B393D8: FStAdFunc var_D0
  loc_B393DB: FLdPr var_D0
  loc_B393DE: Me.Text = from_stack_1
  loc_B393E3: FFree1Str var_CC
  loc_B393E6: FFree1Ad var_D0
  loc_B393E9: FFreeVar var_98 = ""
  loc_B393F0: LitI4 2
  loc_B393F5: FLdPr Me
  loc_B393F8: MemLdRfVar from_stack_1.global_92
  loc_B393FB: CVarRef
  loc_B39400: FLdRfVar var_98
  loc_B39403: ImpAdCallFPR4  = Round(, )
  loc_B39408: FLdRfVar var_98
  loc_B3940B: LitI4 2
  loc_B39410: FLdPr Me
  loc_B39413: MemLdRfVar from_stack_1.global_100
  loc_B39416: CVarRef
  loc_B3941B: FLdRfVar var_C8
  loc_B3941E: ImpAdCallFPR4  = Round(, )
  loc_B39423: FLdRfVar var_C8
  loc_B39426: AddVar var_E0
  loc_B3942A: LitI4 2
  loc_B3942F: FLdPr Me
  loc_B39432: MemLdRfVar from_stack_1.global_108
  loc_B39435: CVarRef
  loc_B3943A: FLdRfVar var_100
  loc_B3943D: ImpAdCallFPR4  = Round(, )
  loc_B39442: FLdRfVar var_100
  loc_B39445: AddVar var_110
  loc_B39449: CR4Var
  loc_B3944A: FLdPr Me
  loc_B3944D: MemStFPR8 global_116
  loc_B39450: FFreeVar var_98 = "": var_C8 = "": var_E0 = "": var_100 = ""
  loc_B3945D: LitI4 1
  loc_B39462: LitI4 1
  loc_B39467: LitVarStr var_B8, "0.00"
  loc_B3946C: FStVarCopyObj var_98
  loc_B3946F: FLdRfVar var_98
  loc_B39472: FLdPr Me
  loc_B39475: MemLdRfVar from_stack_1.global_116
  loc_B39478: CVarRef
  loc_B3947D: FLdRfVar var_C8
  loc_B39480: ImpAdCallFPR4  = Format(, )
  loc_B39485: FLdRfVar var_C8
  loc_B39488: CStrVarVal var_CC
  loc_B3948C: FLdPr Me
  loc_B3948F: VCallAd Control_ID_txtTotal
  loc_B39492: FStAdFunc var_D0
  loc_B39495: FLdPr var_D0
  loc_B39498: Me.Text = from_stack_1
  loc_B3949D: FFree1Str var_CC
  loc_B394A0: FFree1Ad var_D0
  loc_B394A3: FFreeVar var_98 = ""
  loc_B394AA: LitI4 1
  loc_B394AF: LitI4 1
  loc_B394B4: LitVarStr var_B8, "0.00"
  loc_B394B9: FStVarCopyObj var_98
  loc_B394BC: FLdRfVar var_98
  loc_B394BF: FLdPr Me
  loc_B394C2: MemLdRfVar from_stack_1.global_92
  loc_B394C5: CVarRef
  loc_B394CA: FLdRfVar var_C8
  loc_B394CD: ImpAdCallFPR4  = Format(, )
  loc_B394D2: FLdRfVar var_C8
  loc_B394D5: CStrVarVal var_CC
  loc_B394D9: FLdPr Me
  loc_B394DC: VCallAd Control_ID_txtDereSele
  loc_B394DF: FStAdFunc var_D0
  loc_B394E2: FLdPr var_D0
  loc_B394E5: Me.Text = from_stack_1
  loc_B394EA: FFree1Str var_CC
  loc_B394ED: FFree1Ad var_D0
  loc_B394F0: FFreeVar var_98 = ""
  loc_B394F7: LitI4 1
  loc_B394FC: LitI4 1
  loc_B39501: LitVarStr var_B8, "0.00"
  loc_B39506: FStVarCopyObj var_98
  loc_B39509: FLdRfVar var_98
  loc_B3950C: FLdPr Me
  loc_B3950F: MemLdRfVar from_stack_1.global_100
  loc_B39512: CVarRef
  loc_B39517: FLdRfVar var_C8
  loc_B3951A: ImpAdCallFPR4  = Format(, )
  loc_B3951F: FLdRfVar var_C8
  loc_B39522: CStrVarVal var_CC
  loc_B39526: FLdPr Me
  loc_B39529: VCallAd Control_ID_txtRecaSele
  loc_B3952C: FStAdFunc var_D0
  loc_B3952F: FLdPr var_D0
  loc_B39532: Me.Text = from_stack_1
  loc_B39537: FFree1Str var_CC
  loc_B3953A: FFree1Ad var_D0
  loc_B3953D: FFreeVar var_98 = ""
  loc_B39544: LitI4 1
  loc_B39549: LitI4 1
  loc_B3954E: LitVarStr var_B8, "0.00"
  loc_B39553: FStVarCopyObj var_98
  loc_B39556: FLdRfVar var_98
  loc_B39559: FLdPr Me
  loc_B3955C: MemLdRfVar from_stack_1.global_124
  loc_B3955F: CVarRef
  loc_B39564: FLdRfVar var_C8
  loc_B39567: ImpAdCallFPR4  = Format(, )
  loc_B3956C: FLdRfVar var_C8
  loc_B3956F: CStrVarVal var_CC
  loc_B39573: FLdPr Me
  loc_B39576: VCallAd Control_ID_txtTotaSele
  loc_B39579: FStAdFunc var_D0
  loc_B3957C: FLdPr var_D0
  loc_B3957F: Me.Text = from_stack_1
  loc_B39584: FFree1Str var_CC
  loc_B39587: FFree1Ad var_D0
  loc_B3958A: FFreeVar var_98 = ""
  loc_B39591: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) '9CCB5C
  'Data Table: 4EBEA8
  loc_9CCB44: LitStr "1234567890"
  loc_9CCB47: FStStrCopy var_88
  loc_9CCB4A: FLdRfVar var_88
  loc_9CCB4D: ILdRf KeyAscii
  loc_9CCB50: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CCB55: IStI2 KeyAscii
  loc_9CCB58: FFree1Str var_88
  loc_9CCB5B: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_LostFocus(arg_30) 'A5D41C
  'Data Table: 4EBEA8
  loc_A5D3BC: FLdRfVar var_8A
  loc_A5D3BF: FLdPr Me
  loc_A5D3C2: VCallAd Control_ID_NumeCtaTxt
  loc_A5D3C5: FStAdFunc var_88
  loc_A5D3C8: FLdPr var_88
  loc_A5D3CB:  = Me.Enabled
  loc_A5D3D0: FLdI2 var_8A
  loc_A5D3D3: FFree1Ad var_88
  loc_A5D3D6: BranchF loc_A5D419
  loc_A5D3D9: FLdRfVar var_90
  loc_A5D3DC: FLdPr Me
  loc_A5D3DF: VCallAd Control_ID_NumeCtaTxt
  loc_A5D3E2: FStAdFunc var_88
  loc_A5D3E5: FLdPr var_88
  loc_A5D3E8:  = Me.Text
  loc_A5D3ED: FLdZeroAd var_90
  loc_A5D3F0: CVarStr var_A0
  loc_A5D3F3: ImpAdCallI2 IsNumeric()
  loc_A5D3F8: NotI4
  loc_A5D3F9: FFree1Ad var_88
  loc_A5D3FC: FFree1Var var_A0 = ""
  loc_A5D3FF: BranchF loc_A5D419
  loc_A5D402: LitStr "0"
  loc_A5D405: FLdPr Me
  loc_A5D408: VCallAd Control_ID_NumeCtaTxt
  loc_A5D40B: FStAdFunc var_88
  loc_A5D40E: FLdPr var_88
  loc_A5D411: Me.Text = from_stack_1
  loc_A5D416: FFree1Ad var_88
  loc_A5D419: ExitProcHresult
  loc_A5D41A: CRec2Uni arg_3000
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B1C5F8
  'Data Table: 4EBEA8
  loc_B1C388: FLdRfVar var_8A
  loc_B1C38B: FLdPr Me
  loc_B1C38E: VCallAd Control_ID_NumeCtaTxt
  loc_B1C391: FStAdFunc var_88
  loc_B1C394: FLdPr var_88
  loc_B1C397:  = Me.Enabled
  loc_B1C39C: FLdI2 var_8A
  loc_B1C39F: FFree1Ad var_88
  loc_B1C3A2: BranchF loc_B1C5F6
  loc_B1C3A5: FLdRfVar var_8A
  loc_B1C3A8: FLdPr Me
  loc_B1C3AB: VCallAd Control_ID_OficinaCbo
  loc_B1C3AE: FStAdFunc var_88
  loc_B1C3B1: FLdPr var_88
  loc_B1C3B4:  = Me.ListIndex
  loc_B1C3B9: FLdI2 var_8A
  loc_B1C3BC: FStI2 var_8C
  loc_B1C3BF: FFree1Ad var_88
  loc_B1C3C2: FLdI2 var_8C
  loc_B1C3C5: LitI2_Byte 0
  loc_B1C3C7: EqI2
  loc_B1C3C8: BranchF loc_B1C3D6
  loc_B1C3CB: LitI2_Byte 1
  loc_B1C3CD: CUI1I2
  loc_B1C3CF: ImpAdStUI1 MemVar_D93038
  loc_B1C3D3: Branch loc_B1C40F
  loc_B1C3D6: FLdI2 var_8C
  loc_B1C3D9: LitI2_Byte 1
  loc_B1C3DB: EqI2
  loc_B1C3DC: BranchF loc_B1C3EA
  loc_B1C3DF: LitI2_Byte 2
  loc_B1C3E1: CUI1I2
  loc_B1C3E3: ImpAdStUI1 MemVar_D93038
  loc_B1C3E7: Branch loc_B1C40F
  loc_B1C3EA: FLdI2 var_8C
  loc_B1C3ED: LitI2_Byte 2
  loc_B1C3EF: EqI2
  loc_B1C3F0: BranchF loc_B1C3FE
  loc_B1C3F3: LitI2_Byte 3
  loc_B1C3F5: CUI1I2
  loc_B1C3F7: ImpAdStUI1 MemVar_D93038
  loc_B1C3FB: Branch loc_B1C40F
  loc_B1C3FE: FLdI2 var_8C
  loc_B1C401: LitI2_Byte 3
  loc_B1C403: EqI2
  loc_B1C404: BranchF loc_B1C40F
  loc_B1C407: LitI2_Byte 4
  loc_B1C409: CUI1I2
  loc_B1C40B: ImpAdStUI1 MemVar_D93038
  loc_B1C40F: FLdRfVar var_90
  loc_B1C412: FLdPr Me
  loc_B1C415: VCallAd Control_ID_NumeCtaTxt
  loc_B1C418: FStAdFunc var_88
  loc_B1C41B: FLdPr var_88
  loc_B1C41E:  = Me.Text
  loc_B1C423: FLdPr Me
  loc_B1C426: MemLdRfVar from_stack_1.global_56
  loc_B1C429: NewIfNullRf
  loc_B1C42D: LitStr "Titular"
  loc_B1C430: ILdRf var_90
  loc_B1C433: ImpAdLdUI1
  loc_B1C437: CStrI2
  loc_B1C439: FStStrNoPop var_94
  loc_B1C43C: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B1C441: FFreeStr var_94 = ""
  loc_B1C448: FFree1Ad var_88
  loc_B1C44B: BranchF loc_B1C570
  loc_B1C44E: FLdRfVar var_90
  loc_B1C451: FLdPr Me
  loc_B1C454: MemLdRfVar from_stack_1.global_56
  loc_B1C457: NewIfNullPr tblPersona
  loc_B1C45A: from_stack_1v = tblPersona.CucuPersGet()
  loc_B1C45F: ILdRf var_90
  loc_B1C462: FLdPr Me
  loc_B1C465: VCallAd Control_ID_CucuPersLbl
  loc_B1C468: FStAdFunc var_88
  loc_B1C46B: FLdPr var_88
  loc_B1C46E: Me.Caption = from_stack_1
  loc_B1C473: FFree1Str var_90
  loc_B1C476: FFree1Ad var_88
  loc_B1C479: FLdRfVar var_90
  loc_B1C47C: FLdPr Me
  loc_B1C47F: MemLdRfVar from_stack_1.global_56
  loc_B1C482: NewIfNullPr tblPersona
  loc_B1C485: from_stack_1v = tblPersona.DetaPersGet()
  loc_B1C48A: ILdRf var_90
  loc_B1C48D: FLdPr Me
  loc_B1C490: VCallAd Control_ID_DetaPersLbl
  loc_B1C493: FStAdFunc var_88
  loc_B1C496: FLdPr var_88
  loc_B1C499: Me.Caption = from_stack_1
  loc_B1C49E: FFree1Str var_90
  loc_B1C4A1: FFree1Ad var_88
  loc_B1C4A4: FLdRfVar var_94
  loc_B1C4A7: FLdPr Me
  loc_B1C4AA: MemLdRfVar from_stack_1.global_56
  loc_B1C4AD: NewIfNullPr tblPersona
  loc_B1C4B0: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1C4B5: FLdRfVar var_98
  loc_B1C4B8: FLdPr Me
  loc_B1C4BB: MemLdRfVar from_stack_1.global_56
  loc_B1C4BE: NewIfNullPr tblPersona
  loc_B1C4C1: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B1C4C6: FLdRfVar var_90
  loc_B1C4C9: FLdPr Me
  loc_B1C4CC: MemLdRfVar from_stack_1.global_56
  loc_B1C4CF: NewIfNullPr tblPersona
  loc_B1C4D2: from_stack_1v = tblPersona.DetaCallGet()
  loc_B1C4D7: ILdRf var_90
  loc_B1C4DA: LitStr " "
  loc_B1C4DD: ConcatStr
  loc_B1C4DE: CVarStr var_F8
  loc_B1C4E1: LitVarStr var_C8, vbNullString
  loc_B1C4E6: FStVarCopyObj var_D8
  loc_B1C4E9: FLdRfVar var_D8
  loc_B1C4EC: LitStr "Nro: "
  loc_B1C4EF: ILdRf var_98
  loc_B1C4F2: ConcatStr
  loc_B1C4F3: CVarStr var_B8
  loc_B1C4F6: ILdRf var_94
  loc_B1C4F9: LitStr "0"
  loc_B1C4FC: NeStr
  loc_B1C4FE: CVarBoolI2 var_A8
  loc_B1C502: FLdRfVar var_E8
  loc_B1C505: ImpAdCallFPR4  = IIf(, , )
  loc_B1C50A: FLdRfVar var_E8
  loc_B1C50D: ConcatVar var_108
  loc_B1C511: LitVarStr var_118, " "
  loc_B1C516: ConcatVar var_128
  loc_B1C51A: FLdRfVar var_12C
  loc_B1C51D: FLdPr Me
  loc_B1C520: MemLdRfVar from_stack_1.global_56
  loc_B1C523: NewIfNullPr tblPersona
  loc_B1C526: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B1C52B: FLdZeroAd var_12C
  loc_B1C52E: CVarStr var_13C
  loc_B1C531: ConcatVar var_14C
  loc_B1C535: CStrVarVal var_150
  loc_B1C539: FLdPr Me
  loc_B1C53C: VCallAd Control_ID_DomiPersLbl
  loc_B1C53F: FStAdFunc var_88
  loc_B1C542: FLdPr var_88
  loc_B1C545: Me.Caption = from_stack_1
  loc_B1C54A: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B1C555: FFree1Ad var_88
  loc_B1C558: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B1C56D: Branch loc_B1C5F6
  loc_B1C570: FLdRfVar var_90
  loc_B1C573: FLdPr Me
  loc_B1C576: MemLdRfVar from_stack_1.global_56
  loc_B1C579: NewIfNullPr tblPersona
  loc_B1C57C: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B1C581: ILdRf var_90
  loc_B1C584: FLdPr Me
  loc_B1C587: MemStStrCopy
  loc_B1C58B: FFree1Str var_90
  loc_B1C58E: FLdPr Me
  loc_B1C591: MemLdStr global_88
  loc_B1C594: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1C599: LitStr vbNullString
  loc_B1C59C: FLdPr Me
  loc_B1C59F: VCallAd Control_ID_CucuPersLbl
  loc_B1C5A2: FStAdFunc var_88
  loc_B1C5A5: FLdPr var_88
  loc_B1C5A8: Me.Caption = from_stack_1
  loc_B1C5AD: FFree1Ad var_88
  loc_B1C5B0: LitStr vbNullString
  loc_B1C5B3: FLdPr Me
  loc_B1C5B6: VCallAd Control_ID_DetaPersLbl
  loc_B1C5B9: FStAdFunc var_88
  loc_B1C5BC: FLdPr var_88
  loc_B1C5BF: Me.Caption = from_stack_1
  loc_B1C5C4: FFree1Ad var_88
  loc_B1C5C7: LitStr vbNullString
  loc_B1C5CA: FLdPr Me
  loc_B1C5CD: VCallAd Control_ID_DomiPersLbl
  loc_B1C5D0: FStAdFunc var_88
  loc_B1C5D3: FLdPr var_88
  loc_B1C5D6: Me.Caption = from_stack_1
  loc_B1C5DB: FFree1Ad var_88
  loc_B1C5DE: FLdPr Me
  loc_B1C5E1: VCallAd Control_ID_NumeCtaTxt
  loc_B1C5E4: CVarAd
  loc_B1C5E8: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1C5ED: FFree1Var var_B8 = ""
  loc_B1C5F0: LitI2_Byte &HFF
  loc_B1C5F2: IStI2 Cancel
  loc_B1C5F5: ExitProcHresult
  loc_B1C5F6: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'B998E4
  'Data Table: 4EBEA8
  loc_B99338: FLdPr Me
  loc_B9933B: VCallAd Control_ID_ctacteFlex
  loc_B9933E: FStAdFunc var_88
  loc_B99341: FLdPr var_88
  loc_B99344: LateIdLdVar var_98 DispID_4 0
  loc_B9934B: CI4Var
  loc_B9934D: LitI4 1
  loc_B99352: GtI4
  loc_B99353: FFree1Ad var_88
  loc_B99356: FFree1Var var_98 = ""
  loc_B99359: BranchF loc_B998E3
  loc_B9935C: LitI2_Byte 0
  loc_B9935E: FLdPr Me
  loc_B99361: MemLdRfVar from_stack_1.global_60
  loc_B99364: FLdPr Me
  loc_B99367: VCallAd Control_ID_ctacteFlex
  loc_B9936A: FStAdFunc var_88
  loc_B9936D: FLdPr var_88
  loc_B99370: LateIdLdVar var_98 DispID_5 0
  loc_B99377: CI4Var
  loc_B99379: LitI4 1
  loc_B9937E: SubI4
  loc_B9937F: CI2I4
  loc_B99380: FFree1Ad var_88
  loc_B99383: FFree1Var var_98 = ""
  loc_B99386: ForI2 var_9C
  loc_B9938C: FLdPr Me
  loc_B9938F: MemLdI2 global_60
  loc_B99392: CI4UI1
  loc_B99393: CVarI4
  loc_B99397: PopAdLdVar
  loc_B99398: FLdPr Me
  loc_B9939B: VCallAd Control_ID_ctacteFlex
  loc_B9939E: FStAdFunc var_88
  loc_B993A1: FLdPr var_88
  loc_B993A4: LateIdSt
  loc_B993A9: FFree1Ad var_88
  loc_B993AC: FLdPr Me
  loc_B993AF: VCallAd Control_ID_ctacteFlex
  loc_B993B2: FStAdFunc var_88
  loc_B993B5: FLdPr var_88
  loc_B993B8: LateIdLdVar var_98 DispID_38 0
  loc_B993BF: CI4Var
  loc_B993C1: LitI4 &HFFFF80
  loc_B993C6: EqI4
  loc_B993C7: FFree1Ad var_88
  loc_B993CA: FFree1Var var_98 = ""
  loc_B993CD: BranchF loc_B995E2
  loc_B993D0: LitVarI4
  loc_B993D8: PopAdLdVar
  loc_B993D9: FLdPr Me
  loc_B993DC: VCallAd Control_ID_ctacteFlex
  loc_B993DF: FStAdFunc var_88
  loc_B993E2: FLdPr var_88
  loc_B993E5: LateIdSt
  loc_B993EA: FFree1Ad var_88
  loc_B993ED: FLdPr Me
  loc_B993F0: VCallAd Control_ID_ctacteFlex
  loc_B993F3: FStAdFunc var_88
  loc_B993F6: FLdPr var_88
  loc_B993F9: LateIdLdVar var_98 DispID_10 0
  loc_B99400: CI4Var
  loc_B99402: CVarI4
  loc_B99406: PopAdLdVar
  loc_B99407: LitVarI4
  loc_B9940F: PopAdLdVar
  loc_B99410: LitVarStr var_EC, "No"
  loc_B99415: PopAdLdVar
  loc_B99416: FLdPr Me
  loc_B99419: VCallAd Control_ID_ctacteFlex
  loc_B9941C: FStAdFunc var_100
  loc_B9941F: FLdPr var_100
  loc_B99422: LateIdCallSt
  loc_B9942A: FFreeAd var_88 = ""
  loc_B99431: FFree1Var var_98 = ""
  loc_B99434: FLdPr Me
  loc_B99437: MemLdI2 global_60
  loc_B9943A: LitI2_Byte &HB
  loc_B9943C: EqI2
  loc_B9943D: BranchF loc_B994A5
  loc_B99440: FLdPr Me
  loc_B99443: VCallAd Control_ID_ctacteFlex
  loc_B99446: FStAdFunc var_88
  loc_B99449: FLdPr var_88
  loc_B9944C: LateIdLdVar var_98 DispID_10 0
  loc_B99453: CI4Var
  loc_B99455: CVarI4
  loc_B99459: PopAdLdVar
  loc_B9945A: FLdPr Me
  loc_B9945D: MemLdI2 global_60
  loc_B99460: CI4UI1
  loc_B99461: CVarI4
  loc_B99465: PopAdLdVar
  loc_B99466: FLdPr Me
  loc_B99469: VCallAd Control_ID_ctacteFlex
  loc_B9946C: FStAdFunc var_100
  loc_B9946F: FLdPr var_100
  loc_B99472: LateIdCallLdVar
  loc_B9947C: PopAd
  loc_B9947E: FLdPr Me
  loc_B99481: MemLdFPR8 global_64
  loc_B99484: FLdRfVar var_110
  loc_B99487: CStrVarTmp
  loc_B99488: FStStrNoPop var_114
  loc_B9948B: CR8Str
  loc_B9948D: SubR4
  loc_B9948E: FLdPr Me
  loc_B99491: MemStFPR8 global_64
  loc_B99494: FFree1Str var_114
  loc_B99497: FFreeAd var_88 = ""
  loc_B9949E: FFreeVar var_98 = ""
  loc_B994A5: FLdPr Me
  loc_B994A8: MemLdI2 global_60
  loc_B994AB: LitI2_Byte &HC
  loc_B994AD: EqI2
  loc_B994AE: BranchF loc_B9956E
  loc_B994B1: FLdPr Me
  loc_B994B4: VCallAd Control_ID_ctacteFlex
  loc_B994B7: FStAdFunc var_88
  loc_B994BA: FLdPr var_88
  loc_B994BD: LateIdLdVar var_98 DispID_10 0
  loc_B994C4: CI4Var
  loc_B994C6: CVarI4
  loc_B994CA: PopAdLdVar
  loc_B994CB: FLdPr Me
  loc_B994CE: MemLdI2 global_60
  loc_B994D1: CI4UI1
  loc_B994D2: CVarI4
  loc_B994D6: PopAdLdVar
  loc_B994D7: FLdPr Me
  loc_B994DA: VCallAd Control_ID_ctacteFlex
  loc_B994DD: FStAdFunc var_100
  loc_B994E0: FLdPr var_100
  loc_B994E3: LateIdCallLdVar
  loc_B994ED: CStrVarTmp
  loc_B994EE: CVarStr var_124
  loc_B994F1: ImpAdCallI2 IsNumeric()
  loc_B994F6: FFreeAd var_88 = ""
  loc_B994FD: FFreeVar var_98 = "": var_110 = ""
  loc_B99506: BranchF loc_B9956E
  loc_B99509: FLdPr Me
  loc_B9950C: VCallAd Control_ID_ctacteFlex
  loc_B9950F: FStAdFunc var_88
  loc_B99512: FLdPr var_88
  loc_B99515: LateIdLdVar var_98 DispID_10 0
  loc_B9951C: CI4Var
  loc_B9951E: CVarI4
  loc_B99522: PopAdLdVar
  loc_B99523: FLdPr Me
  loc_B99526: MemLdI2 global_60
  loc_B99529: CI4UI1
  loc_B9952A: CVarI4
  loc_B9952E: PopAdLdVar
  loc_B9952F: FLdPr Me
  loc_B99532: VCallAd Control_ID_ctacteFlex
  loc_B99535: FStAdFunc var_100
  loc_B99538: FLdPr var_100
  loc_B9953B: LateIdCallLdVar
  loc_B99545: PopAd
  loc_B99547: FLdPr Me
  loc_B9954A: MemLdFPR8 global_72
  loc_B9954D: FLdRfVar var_110
  loc_B99550: CStrVarTmp
  loc_B99551: FStStrNoPop var_114
  loc_B99554: CR8Str
  loc_B99556: SubR4
  loc_B99557: FLdPr Me
  loc_B9955A: MemStFPR8 global_72
  loc_B9955D: FFree1Str var_114
  loc_B99560: FFreeAd var_88 = ""
  loc_B99567: FFreeVar var_98 = ""
  loc_B9956E: FLdPr Me
  loc_B99571: MemLdI2 global_60
  loc_B99574: LitI2_Byte &HD
  loc_B99576: EqI2
  loc_B99577: BranchF loc_B995DF
  loc_B9957A: FLdPr Me
  loc_B9957D: VCallAd Control_ID_ctacteFlex
  loc_B99580: FStAdFunc var_88
  loc_B99583: FLdPr var_88
  loc_B99586: LateIdLdVar var_98 DispID_10 0
  loc_B9958D: CI4Var
  loc_B9958F: CVarI4
  loc_B99593: PopAdLdVar
  loc_B99594: FLdPr Me
  loc_B99597: MemLdI2 global_60
  loc_B9959A: CI4UI1
  loc_B9959B: CVarI4
  loc_B9959F: PopAdLdVar
  loc_B995A0: FLdPr Me
  loc_B995A3: VCallAd Control_ID_ctacteFlex
  loc_B995A6: FStAdFunc var_100
  loc_B995A9: FLdPr var_100
  loc_B995AC: LateIdCallLdVar
  loc_B995B6: PopAd
  loc_B995B8: FLdPr Me
  loc_B995BB: MemLdFPR8 global_80
  loc_B995BE: FLdRfVar var_110
  loc_B995C1: CStrVarTmp
  loc_B995C2: FStStrNoPop var_114
  loc_B995C5: CR8Str
  loc_B995C7: SubR4
  loc_B995C8: FLdPr Me
  loc_B995CB: MemStFPR8 global_80
  loc_B995CE: FFree1Str var_114
  loc_B995D1: FFreeAd var_88 = ""
  loc_B995D8: FFreeVar var_98 = ""
  loc_B995DF: Branch loc_B997F1
  loc_B995E2: LitVarI4
  loc_B995EA: PopAdLdVar
  loc_B995EB: FLdPr Me
  loc_B995EE: VCallAd Control_ID_ctacteFlex
  loc_B995F1: FStAdFunc var_88
  loc_B995F4: FLdPr var_88
  loc_B995F7: LateIdSt
  loc_B995FC: FFree1Ad var_88
  loc_B995FF: FLdPr Me
  loc_B99602: VCallAd Control_ID_ctacteFlex
  loc_B99605: FStAdFunc var_88
  loc_B99608: FLdPr var_88
  loc_B9960B: LateIdLdVar var_98 DispID_10 0
  loc_B99612: CI4Var
  loc_B99614: CVarI4
  loc_B99618: PopAdLdVar
  loc_B99619: LitVarI4
  loc_B99621: PopAdLdVar
  loc_B99622: LitVarStr var_EC, "Si"
  loc_B99627: PopAdLdVar
  loc_B99628: FLdPr Me
  loc_B9962B: VCallAd Control_ID_ctacteFlex
  loc_B9962E: FStAdFunc var_100
  loc_B99631: FLdPr var_100
  loc_B99634: LateIdCallSt
  loc_B9963C: FFreeAd var_88 = ""
  loc_B99643: FFree1Var var_98 = ""
  loc_B99646: FLdPr Me
  loc_B99649: MemLdI2 global_60
  loc_B9964C: LitI2_Byte &HB
  loc_B9964E: EqI2
  loc_B9964F: BranchF loc_B996B7
  loc_B99652: FLdPr Me
  loc_B99655: VCallAd Control_ID_ctacteFlex
  loc_B99658: FStAdFunc var_88
  loc_B9965B: FLdPr var_88
  loc_B9965E: LateIdLdVar var_98 DispID_10 0
  loc_B99665: CI4Var
  loc_B99667: CVarI4
  loc_B9966B: PopAdLdVar
  loc_B9966C: FLdPr Me
  loc_B9966F: MemLdI2 global_60
  loc_B99672: CI4UI1
  loc_B99673: CVarI4
  loc_B99677: PopAdLdVar
  loc_B99678: FLdPr Me
  loc_B9967B: VCallAd Control_ID_ctacteFlex
  loc_B9967E: FStAdFunc var_100
  loc_B99681: FLdPr var_100
  loc_B99684: LateIdCallLdVar
  loc_B9968E: PopAd
  loc_B99690: FLdPr Me
  loc_B99693: MemLdFPR8 global_64
  loc_B99696: FLdRfVar var_110
  loc_B99699: CStrVarTmp
  loc_B9969A: FStStrNoPop var_114
  loc_B9969D: CR8Str
  loc_B9969F: AddR8
  loc_B996A0: FLdPr Me
  loc_B996A3: MemStFPR8 global_64
  loc_B996A6: FFree1Str var_114
  loc_B996A9: FFreeAd var_88 = ""
  loc_B996B0: FFreeVar var_98 = ""
  loc_B996B7: FLdPr Me
  loc_B996BA: MemLdI2 global_60
  loc_B996BD: LitI2_Byte &HC
  loc_B996BF: EqI2
  loc_B996C0: BranchF loc_B99780
  loc_B996C3: FLdPr Me
  loc_B996C6: VCallAd Control_ID_ctacteFlex
  loc_B996C9: FStAdFunc var_88
  loc_B996CC: FLdPr var_88
  loc_B996CF: LateIdLdVar var_98 DispID_10 0
  loc_B996D6: CI4Var
  loc_B996D8: CVarI4
  loc_B996DC: PopAdLdVar
  loc_B996DD: FLdPr Me
  loc_B996E0: MemLdI2 global_60
  loc_B996E3: CI4UI1
  loc_B996E4: CVarI4
  loc_B996E8: PopAdLdVar
  loc_B996E9: FLdPr Me
  loc_B996EC: VCallAd Control_ID_ctacteFlex
  loc_B996EF: FStAdFunc var_100
  loc_B996F2: FLdPr var_100
  loc_B996F5: LateIdCallLdVar
  loc_B996FF: CStrVarTmp
  loc_B99700: CVarStr var_124
  loc_B99703: ImpAdCallI2 IsNumeric()
  loc_B99708: FFreeAd var_88 = ""
  loc_B9970F: FFreeVar var_98 = "": var_110 = ""
  loc_B99718: BranchF loc_B99780
  loc_B9971B: FLdPr Me
  loc_B9971E: VCallAd Control_ID_ctacteFlex
  loc_B99721: FStAdFunc var_88
  loc_B99724: FLdPr var_88
  loc_B99727: LateIdLdVar var_98 DispID_10 0
  loc_B9972E: CI4Var
  loc_B99730: CVarI4
  loc_B99734: PopAdLdVar
  loc_B99735: FLdPr Me
  loc_B99738: MemLdI2 global_60
  loc_B9973B: CI4UI1
  loc_B9973C: CVarI4
  loc_B99740: PopAdLdVar
  loc_B99741: FLdPr Me
  loc_B99744: VCallAd Control_ID_ctacteFlex
  loc_B99747: FStAdFunc var_100
  loc_B9974A: FLdPr var_100
  loc_B9974D: LateIdCallLdVar
  loc_B99757: PopAd
  loc_B99759: FLdPr Me
  loc_B9975C: MemLdFPR8 global_72
  loc_B9975F: FLdRfVar var_110
  loc_B99762: CStrVarTmp
  loc_B99763: FStStrNoPop var_114
  loc_B99766: CR8Str
  loc_B99768: AddR8
  loc_B99769: FLdPr Me
  loc_B9976C: MemStFPR8 global_72
  loc_B9976F: FFree1Str var_114
  loc_B99772: FFreeAd var_88 = ""
  loc_B99779: FFreeVar var_98 = ""
  loc_B99780: FLdPr Me
  loc_B99783: MemLdI2 global_60
  loc_B99786: LitI2_Byte &HD
  loc_B99788: EqI2
  loc_B99789: BranchF loc_B997F1
  loc_B9978C: FLdPr Me
  loc_B9978F: VCallAd Control_ID_ctacteFlex
  loc_B99792: FStAdFunc var_88
  loc_B99795: FLdPr var_88
  loc_B99798: LateIdLdVar var_98 DispID_10 0
  loc_B9979F: CI4Var
  loc_B997A1: CVarI4
  loc_B997A5: PopAdLdVar
  loc_B997A6: FLdPr Me
  loc_B997A9: MemLdI2 global_60
  loc_B997AC: CI4UI1
  loc_B997AD: CVarI4
  loc_B997B1: PopAdLdVar
  loc_B997B2: FLdPr Me
  loc_B997B5: VCallAd Control_ID_ctacteFlex
  loc_B997B8: FStAdFunc var_100
  loc_B997BB: FLdPr var_100
  loc_B997BE: LateIdCallLdVar
  loc_B997C8: PopAd
  loc_B997CA: FLdPr Me
  loc_B997CD: MemLdFPR8 global_80
  loc_B997D0: FLdRfVar var_110
  loc_B997D3: CStrVarTmp
  loc_B997D4: FStStrNoPop var_114
  loc_B997D7: CR8Str
  loc_B997D9: AddR8
  loc_B997DA: FLdPr Me
  loc_B997DD: MemStFPR8 global_80
  loc_B997E0: FFree1Str var_114
  loc_B997E3: FFreeAd var_88 = ""
  loc_B997EA: FFreeVar var_98 = ""
  loc_B997F1: FLdPr Me
  loc_B997F4: MemLdRfVar from_stack_1.global_60
  loc_B997F7: NextI2 var_9C, loc_B9938C
  loc_B997FC: LitI4 1
  loc_B99801: LitI4 1
  loc_B99806: LitVarStr var_BC, "0.00"
  loc_B9980B: FStVarCopyObj var_98
  loc_B9980E: FLdRfVar var_98
  loc_B99811: FLdPr Me
  loc_B99814: MemLdRfVar from_stack_1.global_64
  loc_B99817: CVarRef
  loc_B9981C: FLdRfVar var_110
  loc_B9981F: ImpAdCallFPR4  = Format(, )
  loc_B99824: FLdRfVar var_110
  loc_B99827: CStrVarVal var_114
  loc_B9982B: FLdPr Me
  loc_B9982E: VCallAd Control_ID_txtDereSele
  loc_B99831: FStAdFunc var_88
  loc_B99834: FLdPr var_88
  loc_B99837: Me.Text = from_stack_1
  loc_B9983C: FFree1Str var_114
  loc_B9983F: FFree1Ad var_88
  loc_B99842: FFreeVar var_98 = ""
  loc_B99849: LitI4 1
  loc_B9984E: LitI4 1
  loc_B99853: LitVarStr var_BC, "0.00"
  loc_B99858: FStVarCopyObj var_98
  loc_B9985B: FLdRfVar var_98
  loc_B9985E: FLdPr Me
  loc_B99861: MemLdRfVar from_stack_1.global_72
  loc_B99864: CVarRef
  loc_B99869: FLdRfVar var_110
  loc_B9986C: ImpAdCallFPR4  = Format(, )
  loc_B99871: FLdRfVar var_110
  loc_B99874: CStrVarVal var_114
  loc_B99878: FLdPr Me
  loc_B9987B: VCallAd Control_ID_txtRecaSele
  loc_B9987E: FStAdFunc var_88
  loc_B99881: FLdPr var_88
  loc_B99884: Me.Text = from_stack_1
  loc_B99889: FFree1Str var_114
  loc_B9988C: FFree1Ad var_88
  loc_B9988F: FFreeVar var_98 = ""
  loc_B99896: LitI4 1
  loc_B9989B: LitI4 1
  loc_B998A0: LitVarStr var_BC, "0.00"
  loc_B998A5: FStVarCopyObj var_98
  loc_B998A8: FLdRfVar var_98
  loc_B998AB: FLdPr Me
  loc_B998AE: MemLdRfVar from_stack_1.global_80
  loc_B998B1: CVarRef
  loc_B998B6: FLdRfVar var_110
  loc_B998B9: ImpAdCallFPR4  = Format(, )
  loc_B998BE: FLdRfVar var_110
  loc_B998C1: CStrVarVal var_114
  loc_B998C5: FLdPr Me
  loc_B998C8: VCallAd Control_ID_txtTotaSele
  loc_B998CB: FStAdFunc var_88
  loc_B998CE: FLdPr var_88
  loc_B998D1: Me.Text = from_stack_1
  loc_B998D6: FFree1Str var_114
  loc_B998D9: FFree1Ad var_88
  loc_B998DC: FFreeVar var_98 = ""
  loc_B998E3: ExitProcHresult
End Sub

Private Sub SalirCmd_Click(arg_30) '9CCD70
  'Data Table: 4EBEA8
  loc_9CCD58: ILdRf Me
  loc_9CCD5B: FStAdNoPop
  loc_9CCD5F: ImpAdLdRf MemVar_D9C5D8
  loc_9CCD62: NewIfNullPr Global
  loc_9CCD65: Global.Unload from_stack_1
  loc_9CCD6A: FFree1Ad var_88
  loc_9CCD6D: ExitProcHresult
  loc_9CCD6E: FLdPr arg_3058
End Sub

Private Sub BuscarCmd_Click() 'C39648
  'Data Table: 4EBEA8
  loc_C38B84: LitStr "Municipalidad de Guaymallén"
  loc_C38B87: LitStr "Municipalidad de San Carlos"
  loc_C38B8A: EqStr
  loc_C38B8C: LitStr "Municipalidad de Guaymallén"
  loc_C38B8F: LitStr "Municipalidad de Rivadavia"
  loc_C38B92: EqStr
  loc_C38B94: OrI4
  loc_C38B95: BranchF loc_C38BE6
  loc_C38B98: FLdPr Me
  loc_C38B9B: VCallAd Control_ID_FechVencMsk
  loc_C38B9E: FStAdFunc var_C0
  loc_C38BA1: FLdPr var_C0
  loc_C38BA4: LateIdLdVar var_D0 DispID_15 0
  loc_C38BAB: CStrVarTmp
  loc_C38BAC: PopTmpLdAdStr
  loc_C38BB0: ImpAdCallI2 Proc_18_100_A771AC()
  loc_C38BB5: FStStrNoPop var_D8
  loc_C38BB8: FLdPr Me
  loc_C38BBB: MemStStrCopy
  loc_C38BBF: FFreeStr var_D4 = ""
  loc_C38BC6: FFree1Ad var_C0
  loc_C38BC9: FFree1Var var_D0 = ""
  loc_C38BCC: FLdPr Me
  loc_C38BCF: MemLdStr global_88
  loc_C38BD2: LitStr vbNullString
  loc_C38BD5: NeStr
  loc_C38BD7: BranchF loc_C38BE6
  loc_C38BDA: FLdPr Me
  loc_C38BDD: MemLdStr global_88
  loc_C38BE0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C38BE5: ExitProcHresult
  loc_C38BE6: Call Proc_127_17_B18368()
  loc_C38BEB: LitI2_Byte 0
  loc_C38BED: FLdPr Me
  loc_C38BF0: VCallAd Control_ID_SeleTodoChk
  loc_C38BF3: FStAdFunc var_C0
  loc_C38BF6: FLdPr var_C0
  loc_C38BF9: Me.Value = from_stack_1
  loc_C38BFE: FFree1Ad var_C0
  loc_C38C01: LitI2_Byte 0
  loc_C38C03: CR8I2
  loc_C38C04: FLdPr Me
  loc_C38C07: MemStFPR8 global_64
  loc_C38C0A: LitI2_Byte 0
  loc_C38C0C: CR8I2
  loc_C38C0D: FLdPr Me
  loc_C38C10: MemStFPR8 global_72
  loc_C38C13: LitI2_Byte 0
  loc_C38C15: CR8I2
  loc_C38C16: FLdPr Me
  loc_C38C19: MemStFPR8 global_80
  loc_C38C1C: LitVarStr var_E8, vbNullString
  loc_C38C21: PopAdLdVar
  loc_C38C22: FLdPr Me
  loc_C38C25: VCallAd Control_ID_FechVencMsk
  loc_C38C28: FStAdFunc var_C0
  loc_C38C2B: FLdPr var_C0
  loc_C38C2E: LateIdSt
  loc_C38C33: FFree1Ad var_C0
  loc_C38C36: FLdRfVar var_FA
  loc_C38C39: FLdPr Me
  loc_C38C3C: VCallAd Control_ID_OficinaCbo
  loc_C38C3F: FStAdFunc var_C0
  loc_C38C42: FLdPr var_C0
  loc_C38C45:  = Me.ListIndex
  loc_C38C4A: FLdI2 var_FA
  loc_C38C4D: FStI2 var_FC
  loc_C38C50: FFree1Ad var_C0
  loc_C38C53: FLdI2 var_FC
  loc_C38C56: LitI2_Byte 0
  loc_C38C58: EqI2
  loc_C38C59: BranchF loc_C38C67
  loc_C38C5C: LitI2_Byte 1
  loc_C38C5E: CUI1I2
  loc_C38C60: ImpAdStUI1 MemVar_D93038
  loc_C38C64: Branch loc_C38CA0
  loc_C38C67: FLdI2 var_FC
  loc_C38C6A: LitI2_Byte 1
  loc_C38C6C: EqI2
  loc_C38C6D: BranchF loc_C38C7B
  loc_C38C70: LitI2_Byte 2
  loc_C38C72: CUI1I2
  loc_C38C74: ImpAdStUI1 MemVar_D93038
  loc_C38C78: Branch loc_C38CA0
  loc_C38C7B: FLdI2 var_FC
  loc_C38C7E: LitI2_Byte 2
  loc_C38C80: EqI2
  loc_C38C81: BranchF loc_C38C8F
  loc_C38C84: LitI2_Byte 3
  loc_C38C86: CUI1I2
  loc_C38C88: ImpAdStUI1 MemVar_D93038
  loc_C38C8C: Branch loc_C38CA0
  loc_C38C8F: FLdI2 var_FC
  loc_C38C92: LitI2_Byte 3
  loc_C38C94: EqI2
  loc_C38C95: BranchF loc_C38CA0
  loc_C38C98: LitI2_Byte 4
  loc_C38C9A: CUI1I2
  loc_C38C9C: ImpAdStUI1 MemVar_D93038
  loc_C38CA0: LitI2_Byte 0
  loc_C38CA2: CR8I2
  loc_C38CA3: FLdPr Me
  loc_C38CA6: MemStFPR8 global_92
  loc_C38CA9: LitI2_Byte 0
  loc_C38CAB: CR8I2
  loc_C38CAC: FLdPr Me
  loc_C38CAF: MemStFPR8 global_100
  loc_C38CB2: LitI2_Byte 0
  loc_C38CB4: CR8I2
  loc_C38CB5: FLdPr Me
  loc_C38CB8: MemStFPR8 global_108
  loc_C38CBB: LitI2_Byte 0
  loc_C38CBD: CR8I2
  loc_C38CBE: FLdPr Me
  loc_C38CC1: MemStFPR8 global_116
  loc_C38CC4: LitI2_Byte 0
  loc_C38CC6: CR8I2
  loc_C38CC7: FLdPr Me
  loc_C38CCA: MemStFPR8 global_124
  loc_C38CCD: LitI4 1
  loc_C38CD2: LitI4 1
  loc_C38CD7: LitVarStr var_F8, "0.00"
  loc_C38CDC: FStVarCopyObj var_D0
  loc_C38CDF: FLdRfVar var_D0
  loc_C38CE2: FLdPr Me
  loc_C38CE5: MemLdRfVar from_stack_1.global_92
  loc_C38CE8: CVarRef
  loc_C38CED: FLdRfVar var_10C
  loc_C38CF0: ImpAdCallFPR4  = Format(, )
  loc_C38CF5: FLdRfVar var_10C
  loc_C38CF8: CStrVarVal var_D4
  loc_C38CFC: FLdPr Me
  loc_C38CFF: VCallAd Control_ID_txtTotaDere
  loc_C38D02: FStAdFunc var_C0
  loc_C38D05: FLdPr var_C0
  loc_C38D08: Me.Text = from_stack_1
  loc_C38D0D: FFree1Str var_D4
  loc_C38D10: FFree1Ad var_C0
  loc_C38D13: FFreeVar var_D0 = ""
  loc_C38D1A: LitI4 1
  loc_C38D1F: LitI4 1
  loc_C38D24: LitVarStr var_F8, "0.00"
  loc_C38D29: FStVarCopyObj var_D0
  loc_C38D2C: FLdRfVar var_D0
  loc_C38D2F: FLdPr Me
  loc_C38D32: MemLdRfVar from_stack_1.global_100
  loc_C38D35: CVarRef
  loc_C38D3A: FLdRfVar var_10C
  loc_C38D3D: ImpAdCallFPR4  = Format(, )
  loc_C38D42: FLdRfVar var_10C
  loc_C38D45: CStrVarVal var_D4
  loc_C38D49: FLdPr Me
  loc_C38D4C: VCallAd Control_ID_txtTotaReca
  loc_C38D4F: FStAdFunc var_C0
  loc_C38D52: FLdPr var_C0
  loc_C38D55: Me.Text = from_stack_1
  loc_C38D5A: FFree1Str var_D4
  loc_C38D5D: FFree1Ad var_C0
  loc_C38D60: FFreeVar var_D0 = ""
  loc_C38D67: LitI4 1
  loc_C38D6C: LitI4 1
  loc_C38D71: LitVarStr var_F8, "0.00"
  loc_C38D76: FStVarCopyObj var_D0
  loc_C38D79: FLdRfVar var_D0
  loc_C38D7C: FLdPr Me
  loc_C38D7F: MemLdRfVar from_stack_1.global_108
  loc_C38D82: CVarRef
  loc_C38D87: FLdRfVar var_10C
  loc_C38D8A: ImpAdCallFPR4  = Format(, )
  loc_C38D8F: FLdRfVar var_10C
  loc_C38D92: CStrVarVal var_D4
  loc_C38D96: FLdPr Me
  loc_C38D99: VCallAd Control_ID_txtTotaApre
  loc_C38D9C: FStAdFunc var_C0
  loc_C38D9F: FLdPr var_C0
  loc_C38DA2: Me.Text = from_stack_1
  loc_C38DA7: FFree1Str var_D4
  loc_C38DAA: FFree1Ad var_C0
  loc_C38DAD: FFreeVar var_D0 = ""
  loc_C38DB4: LitI4 2
  loc_C38DB9: FLdPr Me
  loc_C38DBC: MemLdRfVar from_stack_1.global_92
  loc_C38DBF: CVarRef
  loc_C38DC4: FLdRfVar var_D0
  loc_C38DC7: ImpAdCallFPR4  = Round(, )
  loc_C38DCC: FLdRfVar var_D0
  loc_C38DCF: LitI4 2
  loc_C38DD4: FLdPr Me
  loc_C38DD7: MemLdRfVar from_stack_1.global_100
  loc_C38DDA: CVarRef
  loc_C38DDF: FLdRfVar var_10C
  loc_C38DE2: ImpAdCallFPR4  = Round(, )
  loc_C38DE7: FLdRfVar var_10C
  loc_C38DEA: AddVar var_11C
  loc_C38DEE: LitI4 2
  loc_C38DF3: FLdPr Me
  loc_C38DF6: MemLdRfVar from_stack_1.global_108
  loc_C38DF9: CVarRef
  loc_C38DFE: FLdRfVar var_13C
  loc_C38E01: ImpAdCallFPR4  = Round(, )
  loc_C38E06: FLdRfVar var_13C
  loc_C38E09: AddVar var_14C
  loc_C38E0D: CR4Var
  loc_C38E0E: FLdPr Me
  loc_C38E11: MemStFPR8 global_116
  loc_C38E14: FFreeVar var_D0 = "": var_10C = "": var_11C = "": var_13C = ""
  loc_C38E21: LitI4 1
  loc_C38E26: LitI4 1
  loc_C38E2B: LitVarStr var_F8, "0.00"
  loc_C38E30: FStVarCopyObj var_D0
  loc_C38E33: FLdRfVar var_D0
  loc_C38E36: FLdPr Me
  loc_C38E39: MemLdRfVar from_stack_1.global_116
  loc_C38E3C: CVarRef
  loc_C38E41: FLdRfVar var_10C
  loc_C38E44: ImpAdCallFPR4  = Format(, )
  loc_C38E49: FLdRfVar var_10C
  loc_C38E4C: CStrVarVal var_D4
  loc_C38E50: FLdPr Me
  loc_C38E53: VCallAd Control_ID_txtTotal
  loc_C38E56: FStAdFunc var_C0
  loc_C38E59: FLdPr var_C0
  loc_C38E5C: Me.Text = from_stack_1
  loc_C38E61: FFree1Str var_D4
  loc_C38E64: FFree1Ad var_C0
  loc_C38E67: FFreeVar var_D0 = ""
  loc_C38E6E: LitI4 1
  loc_C38E73: LitI4 1
  loc_C38E78: LitVarStr var_F8, "0.00"
  loc_C38E7D: FStVarCopyObj var_D0
  loc_C38E80: FLdRfVar var_D0
  loc_C38E83: FLdPr Me
  loc_C38E86: MemLdRfVar from_stack_1.global_124
  loc_C38E89: CVarRef
  loc_C38E8E: FLdRfVar var_10C
  loc_C38E91: ImpAdCallFPR4  = Format(, )
  loc_C38E96: FLdRfVar var_10C
  loc_C38E99: CStrVarVal var_D4
  loc_C38E9D: FLdPr Me
  loc_C38EA0: VCallAd Control_ID_txtTotaSele
  loc_C38EA3: FStAdFunc var_C0
  loc_C38EA6: FLdPr var_C0
  loc_C38EA9: Me.Text = from_stack_1
  loc_C38EAE: FFree1Str var_D4
  loc_C38EB1: FFree1Ad var_C0
  loc_C38EB4: FFreeVar var_D0 = ""
  loc_C38EBB: LitStr "SELECT * FROM ctacte "
  loc_C38EBE: LitStr " LEFT JOIN tipomovi ON tipomovi.CodiTimo = ctacte.CodiTimo"
  loc_C38EC1: ConcatStr
  loc_C38EC2: FStStrNoPop var_D4
  loc_C38EC5: LitStr " WHERE CodiOfic = "
  loc_C38EC8: ConcatStr
  loc_C38EC9: FStStrNoPop var_D8
  loc_C38ECC: ImpAdLdUI1
  loc_C38ED0: CStrI2
  loc_C38ED2: FStStrNoPop var_150
  loc_C38ED5: ConcatStr
  loc_C38ED6: FStStrNoPop var_154
  loc_C38ED9: LitStr " AND CuenCtct = '"
  loc_C38EDC: ConcatStr
  loc_C38EDD: FStStrNoPop var_15C
  loc_C38EE0: FLdRfVar var_158
  loc_C38EE3: FLdPr Me
  loc_C38EE6: VCallAd Control_ID_NumeCtaTxt
  loc_C38EE9: FStAdFunc var_C0
  loc_C38EEC: FLdPr var_C0
  loc_C38EEF:  = Me.Text
  loc_C38EF4: ILdRf var_158
  loc_C38EF7: ConcatStr
  loc_C38EF8: FStStrNoPop var_160
  loc_C38EFB: LitStr "'"
  loc_C38EFE: ConcatStr
  loc_C38EFF: FStStrNoPop var_164
  loc_C38F02: LitStr " AND ctacte.CodiTimo = 11 "
  loc_C38F05: ConcatStr
  loc_C38F06: FStStrNoPop var_168
  loc_C38F09: LitStr " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct , ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C38F0C: ConcatStr
  loc_C38F0D: FStStrNoPop var_16C
  loc_C38F10: FLdPr Me
  loc_C38F13: MemLdRfVar from_stack_1.global_52
  loc_C38F16: NewIfNullPr clsctacte
  loc_C38F19: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C38F1E: FFreeStr var_D4 = "": var_D8 = "": var_150 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_164 = "": var_168 = ""
  loc_C38F35: FFree1Ad var_C0
  loc_C38F38: FLdRfVar var_170
  loc_C38F3B: FLdPr Me
  loc_C38F3E: MemLdRfVar from_stack_1.global_52
  loc_C38F41: NewIfNullPr clsctacte
  loc_C38F44: from_stack_1 = clsctacte.RecordCount
  loc_C38F49: ILdRf var_170
  loc_C38F4C: LitI4 0
  loc_C38F51: GtI4
  loc_C38F52: BranchF loc_C3962E
  loc_C38F55: FLdPr Me
  loc_C38F58: MemLdRfVar from_stack_1.global_52
  loc_C38F5B: NewIfNullPr clsctacte
  loc_C38F5E: Call clsctacte.MoveFirst()
  loc_C38F63: FLdRfVar var_FA
  loc_C38F66: FLdPr Me
  loc_C38F69: MemLdRfVar from_stack_1.global_52
  loc_C38F6C: NewIfNullPr clsctacte
  loc_C38F6F: from_stack_1 = clsctacte.EOF
  loc_C38F74: FLdI2 var_FA
  loc_C38F77: NotI4
  loc_C38F78: BranchF loc_C3948D
  loc_C38F7B: LitI2_Byte 0
  loc_C38F7D: CR8I2
  loc_C38F7E: FLdPr Me
  loc_C38F81: MemStFPR8 global_108
  loc_C38F84: FLdRfVar var_178
  loc_C38F87: FLdPr Me
  loc_C38F8A: MemLdRfVar from_stack_1.global_52
  loc_C38F8D: NewIfNullPr clsctacte
  loc_C38F90: from_stack_1 = clsctacte.CredCtct
  loc_C38F95: LitI4 2
  loc_C38F9A: FLdPr Me
  loc_C38F9D: MemLdFPR8 global_92
  loc_C38FA0: FnCDblR8
  loc_C38FA2: FLdFPR8 var_178
  loc_C38FA5: FnCDblR8
  loc_C38FA7: AddR8
  loc_C38FA8: CVarR8
  loc_C38FAC: FLdRfVar var_10C
  loc_C38FAF: ImpAdCallFPR4  = Round(, )
  loc_C38FB4: FLdRfVar var_10C
  loc_C38FB7: CR4Var
  loc_C38FB8: FLdPr Me
  loc_C38FBB: MemStFPR8 global_92
  loc_C38FBE: FFreeVar var_D0 = ""
  loc_C38FC5: LitI2_Byte 0
  loc_C38FC7: CR8I2
  loc_C38FC8: FLdPr Me
  loc_C38FCB: MemStFPR8 global_100
  loc_C38FCE: FLdRfVar var_FA
  loc_C38FD1: FLdPr Me
  loc_C38FD4: MemLdRfVar from_stack_1.global_52
  loc_C38FD7: NewIfNullPr clsctacte
  loc_C38FDA: from_stack_1 = clsctacte.BimeCtct
  loc_C38FDF: LitI4 1
  loc_C38FE4: LitI4 1
  loc_C38FE9: LitVarStr var_F8, "00"
  loc_C38FEE: FStVarCopyObj var_10C
  loc_C38FF1: FLdRfVar var_10C
  loc_C38FF4: FLdI2 var_FA
  loc_C38FF7: CVarI2 var_D0
  loc_C38FFA: FLdRfVar var_11C
  loc_C38FFD: ImpAdCallFPR4  = Format(, )
  loc_C39002: FLdRfVar var_11C
  loc_C39005: LitVarStr var_12C, "/"
  loc_C3900A: ConcatVar var_13C
  loc_C3900E: FLdRfVar var_17A
  loc_C39011: FLdPr Me
  loc_C39014: MemLdRfVar from_stack_1.global_52
  loc_C39017: NewIfNullPr clsctacte
  loc_C3901A: from_stack_1 = clsctacte.PeriCtct
  loc_C3901F: FLdI2 var_17A
  loc_C39022: CVarI2 var_18C
  loc_C39025: ConcatVar var_14C
  loc_C39029: CStrVarTmp
  loc_C3902A: FLdRfVar var_92
  loc_C3902D: StFixedStrFree
  loc_C39031: FFreeVar var_D0 = "": var_10C = "": var_11C = "": var_13C = ""
  loc_C3903E: FLdRfVar var_170
  loc_C39041: FLdPr Me
  loc_C39044: MemLdRfVar from_stack_1.global_52
  loc_C39047: NewIfNullPr clsctacte
  loc_C3904A: from_stack_1 = clsctacte.NumeBole
  loc_C3904F: LitI4 1
  loc_C39054: LitI4 1
  loc_C39059: LitVarStr var_F8, "#######0"
  loc_C3905E: FStVarCopyObj var_10C
  loc_C39061: FLdRfVar var_10C
  loc_C39064: ILdRf var_170
  loc_C39067: CVarI4
  loc_C3906B: FLdRfVar var_11C
  loc_C3906E: ImpAdCallFPR4  = Format(, )
  loc_C39073: FLdRfVar var_11C
  loc_C39076: LitVarStr var_12C, "-"
  loc_C3907B: ConcatVar var_13C
  loc_C3907F: FLdRfVar var_FA
  loc_C39082: FLdPr Me
  loc_C39085: MemLdRfVar from_stack_1.global_52
  loc_C39088: NewIfNullPr clsctacte
  loc_C3908B: from_stack_1 = clsctacte.PeriBole
  loc_C39090: FLdI2 var_FA
  loc_C39093: CVarI2 var_18C
  loc_C39096: ConcatVar var_14C
  loc_C3909A: CStrVarTmp
  loc_C3909B: FLdRfVar var_AC
  loc_C3909E: StFixedStrFree
  loc_C390A2: FFreeVar var_D0 = "": var_10C = "": var_11C = "": var_13C = ""
  loc_C390AF: FLdRfVar var_178
  loc_C390B2: FLdPr Me
  loc_C390B5: MemLdRfVar from_stack_1.global_52
  loc_C390B8: NewIfNullPr clsctacte
  loc_C390BB: from_stack_1 = clsctacte.CredCtct
  loc_C390C0: LitI4 1
  loc_C390C5: LitI4 1
  loc_C390CA: LitVarStr var_F8, "0.00"
  loc_C390CF: FStVarCopyObj var_10C
  loc_C390D2: FLdRfVar var_10C
  loc_C390D5: FLdFPR8 var_178
  loc_C390D8: CVarR8
  loc_C390DC: FLdRfVar var_11C
  loc_C390DF: ImpAdCallFPR4  = Format(, )
  loc_C390E4: FLdRfVar var_11C
  loc_C390E7: CStrVarTmp
  loc_C390E8: FStStr var_B4
  loc_C390EB: FFreeVar var_D0 = "": var_10C = ""
  loc_C390F4: LitStr vbNullString
  loc_C390F7: FStStrCopy var_B8
  loc_C390FA: FLdRfVar var_178
  loc_C390FD: FLdPr Me
  loc_C39100: MemLdRfVar from_stack_1.global_52
  loc_C39103: NewIfNullPr clsctacte
  loc_C39106: from_stack_1 = clsctacte.CredCtct
  loc_C3910B: LitI4 1
  loc_C39110: LitI4 1
  loc_C39115: LitVarStr var_F8, "0.00"
  loc_C3911A: FStVarCopyObj var_10C
  loc_C3911D: FLdRfVar var_10C
  loc_C39120: FLdFPR8 var_178
  loc_C39123: FnCDblR8
  loc_C39125: CVarR8
  loc_C39129: FLdRfVar var_11C
  loc_C3912C: ImpAdCallFPR4  = Format(, )
  loc_C39131: FLdRfVar var_11C
  loc_C39134: CStrVarTmp
  loc_C39135: FStStr var_BC
  loc_C39138: FFreeVar var_D0 = "": var_10C = ""
  loc_C39141: FLdRfVar var_FA
  loc_C39144: FLdPr Me
  loc_C39147: MemLdRfVar from_stack_1.global_52
  loc_C3914A: NewIfNullPr clsctacte
  loc_C3914D: from_stack_1 = clsctacte.CodiOfic
  loc_C39152: FLdI2 var_FA
  loc_C39155: CVarI2 var_E8
  loc_C39158: LitI4 9
  loc_C3915D: FLdRfVar var_D0
  loc_C39160: ImpAdCallFPR4  = Chr()
  loc_C39165: FLdRfVar var_D0
  loc_C39168: ConcatVar var_10C
  loc_C3916C: FLdRfVar var_D4
  loc_C3916F: FLdPr Me
  loc_C39172: MemLdRfVar from_stack_1.global_52
  loc_C39175: NewIfNullPr clsctacte
  loc_C39178: from_stack_1 = clsctacte.CuenCtct
  loc_C3917D: FLdZeroAd var_D4
  loc_C39180: CVarStr var_11C
  loc_C39183: ConcatVar var_13C
  loc_C39187: LitI4 9
  loc_C3918C: FLdRfVar var_14C
  loc_C3918F: ImpAdCallFPR4  = Chr()
  loc_C39194: FLdRfVar var_14C
  loc_C39197: ConcatVar var_19C
  loc_C3919B: FLdRfVar var_92
  loc_C3919E: LdFixedStr
  loc_C391A1: CVarStr var_1AC
  loc_C391A4: ConcatVar var_1BC
  loc_C391A8: LitI4 9
  loc_C391AD: FLdRfVar var_1CC
  loc_C391B0: ImpAdCallFPR4  = Chr()
  loc_C391B5: FLdRfVar var_1CC
  loc_C391B8: ConcatVar var_1DC
  loc_C391BC: FLdRfVar var_AC
  loc_C391BF: LdFixedStr
  loc_C391C2: CVarStr var_1EC
  loc_C391C5: ConcatVar var_1FC
  loc_C391C9: LitI4 9
  loc_C391CE: FLdRfVar var_20C
  loc_C391D1: ImpAdCallFPR4  = Chr()
  loc_C391D6: FLdRfVar var_20C
  loc_C391D9: ConcatVar var_21C
  loc_C391DD: FLdRfVar var_D8
  loc_C391E0: FLdPr Me
  loc_C391E3: MemLdRfVar from_stack_1.global_52
  loc_C391E6: NewIfNullPr clsctacte
  loc_C391E9: from_stack_1 = clsctacte.FealCtct
  loc_C391EE: FLdZeroAd var_D8
  loc_C391F1: CVarStr var_22C
  loc_C391F4: ConcatVar var_23C
  loc_C391F8: LitI4 9
  loc_C391FD: FLdRfVar var_24C
  loc_C39200: ImpAdCallFPR4  = Chr()
  loc_C39205: FLdRfVar var_24C
  loc_C39208: ConcatVar var_25C
  loc_C3920C: FLdRfVar var_26C
  loc_C3920F: FLdPr Me
  loc_C39212: MemLdRfVar from_stack_1.global_52
  loc_C39215: NewIfNullPr clsctacte
  loc_C39218: from_stack_1 = clsctacte.FeveCtct
  loc_C3921D: FLdRfVar var_26C
  loc_C39220: ConcatVar var_27C
  loc_C39224: LitI4 9
  loc_C39229: FLdRfVar var_28C
  loc_C3922C: ImpAdCallFPR4  = Chr()
  loc_C39231: FLdRfVar var_28C
  loc_C39234: ConcatVar var_29C
  loc_C39238: FLdRfVar var_150
  loc_C3923B: FLdPr Me
  loc_C3923E: MemLdRfVar from_stack_1.global_52
  loc_C39241: NewIfNullPr clsctacte
  loc_C39244: from_stack_1 = clsctacte.CodiConc
  loc_C39249: FLdZeroAd var_150
  loc_C3924C: CVarStr var_2AC
  loc_C3924F: ConcatVar var_2BC
  loc_C39253: LitI4 9
  loc_C39258: FLdRfVar var_2CC
  loc_C3925B: ImpAdCallFPR4  = Chr()
  loc_C39260: FLdRfVar var_2CC
  loc_C39263: ConcatVar var_2DC
  loc_C39267: FLdRfVar var_170
  loc_C3926A: FLdPr Me
  loc_C3926D: MemLdRfVar from_stack_1.global_52
  loc_C39270: NewIfNullPr clsctacte
  loc_C39273: from_stack_1 = clsctacte.CodiFapa
  loc_C39278: ILdRf var_170
  loc_C3927B: CVarI4
  loc_C3927F: ConcatVar var_2EC
  loc_C39283: LitI4 9
  loc_C39288: FLdRfVar var_2FC
  loc_C3928B: ImpAdCallFPR4  = Chr()
  loc_C39290: FLdRfVar var_2FC
  loc_C39293: ConcatVar var_30C
  loc_C39297: FLdRfVar var_310
  loc_C3929A: FLdPr Me
  loc_C3929D: MemLdRfVar from_stack_1.global_52
  loc_C392A0: NewIfNullPr clsctacte
  loc_C392A3: from_stack_1 = clsctacte.NumeApre
  loc_C392A8: ILdRf var_310
  loc_C392AB: CVarI4
  loc_C392AF: ConcatVar var_320
  loc_C392B3: LitI4 9
  loc_C392B8: FLdRfVar var_330
  loc_C392BB: ImpAdCallFPR4  = Chr()
  loc_C392C0: FLdRfVar var_330
  loc_C392C3: ConcatVar var_340
  loc_C392C7: FLdRfVar var_154
  loc_C392CA: FLdPr Me
  loc_C392CD: MemLdRfVar from_stack_1.global_52
  loc_C392D0: NewIfNullPr clsctacte
  loc_C392D3: from_stack_1 = clsctacte.ExpeCtct
  loc_C392D8: FLdZeroAd var_154
  loc_C392DB: CVarStr var_350
  loc_C392DE: ConcatVar var_360
  loc_C392E2: LitI4 9
  loc_C392E7: FLdRfVar var_370
  loc_C392EA: ImpAdCallFPR4  = Chr()
  loc_C392EF: FLdRfVar var_370
  loc_C392F2: ConcatVar var_380
  loc_C392F6: FLdRfVar var_158
  loc_C392F9: FLdPr Me
  loc_C392FC: MemLdRfVar from_stack_1.global_52
  loc_C392FF: NewIfNullPr clsctacte
  loc_C39302: from_stack_1 = clsctacte.AbreTimo
  loc_C39307: FLdZeroAd var_158
  loc_C3930A: CVarStr var_390
  loc_C3930D: ConcatVar var_3A0
  loc_C39311: LitI4 9
  loc_C39316: FLdRfVar var_3B0
  loc_C39319: ImpAdCallFPR4  = Chr()
  loc_C3931E: FLdRfVar var_3B0
  loc_C39321: ConcatVar var_3C0
  loc_C39325: ILdRf var_B4
  loc_C39328: CVarStr var_18C
  loc_C3932B: ConcatVar var_3D0
  loc_C3932F: LitI4 9
  loc_C39334: FLdRfVar var_3E0
  loc_C39337: ImpAdCallFPR4  = Chr()
  loc_C3933C: FLdRfVar var_3E0
  loc_C3933F: ConcatVar var_3F0
  loc_C39343: ILdRf var_B8
  loc_C39346: CVarStr var_400
  loc_C39349: ConcatVar var_410
  loc_C3934D: LitI4 9
  loc_C39352: FLdRfVar var_420
  loc_C39355: ImpAdCallFPR4  = Chr()
  loc_C3935A: FLdRfVar var_420
  loc_C3935D: ConcatVar var_430
  loc_C39361: ILdRf var_BC
  loc_C39364: CVarStr var_440
  loc_C39367: ConcatVar var_450
  loc_C3936B: LitI4 9
  loc_C39370: FLdRfVar var_460
  loc_C39373: ImpAdCallFPR4  = Chr()
  loc_C39378: FLdRfVar var_460
  loc_C3937B: ConcatVar var_470
  loc_C3937F: LitVarStr var_480, "No"
  loc_C39384: ConcatVar var_490
  loc_C39388: LitI4 9
  loc_C3938D: FLdRfVar var_4A0
  loc_C39390: ImpAdCallFPR4  = Chr()
  loc_C39395: FLdRfVar var_4A0
  loc_C39398: ConcatVar var_4B0
  loc_C3939C: FLdRfVar var_4B4
  loc_C3939F: FLdPr Me
  loc_C393A2: MemLdRfVar from_stack_1.global_52
  loc_C393A5: NewIfNullPr clsctacte
  loc_C393A8: from_stack_1 = clsctacte.NumeCtct
  loc_C393AD: ILdRf var_4B4
  loc_C393B0: CVarI4
  loc_C393B4: ConcatVar var_4D4
  loc_C393B8: LitI4 9
  loc_C393BD: FLdRfVar var_4E4
  loc_C393C0: ImpAdCallFPR4  = Chr()
  loc_C393C5: FLdRfVar var_4E4
  loc_C393C8: ConcatVar var_4F4
  loc_C393CC: FLdRfVar var_17A
  loc_C393CF: FLdPr Me
  loc_C393D2: MemLdRfVar from_stack_1.global_52
  loc_C393D5: NewIfNullPr clsctacte
  loc_C393D8: from_stack_1 = clsctacte.MoviCtct
  loc_C393DD: FLdI2 var_17A
  loc_C393E0: CVarI2 var_504
  loc_C393E3: ConcatVar var_514
  loc_C393E7: CStrVarTmp
  loc_C393E8: FStStr var_B0
  loc_C393EB: FFreeVar var_330 = "": var_340 = "": var_350 = "": var_360 = "": var_370 = "": var_380 = "": var_390 = "": var_3A0 = "": var_3B0 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_420 = "": var_430 = "": var_450 = "": var_460 = "": var_470 = "": var_490 = "": var_4A0 = "": var_4B0 = "": var_4D4 = "": var_4E4 = "": var_4F4 = "": var_514 = "": var_D0 = "": var_10C = "": var_11C = "": var_13C = "": var_14C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_27C = "": var_28C = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = ""
  loc_C3945E: FLdRfVar var_B0
  loc_C39461: CDargRef
  loc_C39465: FLdPr Me
  loc_C39468: VCallAd Control_ID_ctacteFlex
  loc_C3946B: FStAdFunc var_C0
  loc_C3946E: FLdPr var_C0
  loc_C39471: LateIdCall
  loc_C39479: FFree1Ad var_C0
  loc_C3947C: FLdPr Me
  loc_C3947F: MemLdRfVar from_stack_1.global_52
  loc_C39482: NewIfNullPr clsctacte
  loc_C39485: Call clsctacte.MoveSiguiente()
  loc_C3948A: Branch loc_C38F63
  loc_C3948D: LitI4 1
  loc_C39492: LitI4 1
  loc_C39497: LitVarStr var_F8, "###,###,##0.00"
  loc_C3949C: FStVarCopyObj var_D0
  loc_C3949F: FLdRfVar var_D0
  loc_C394A2: FLdPr Me
  loc_C394A5: MemLdRfVar from_stack_1.global_92
  loc_C394A8: CVarRef
  loc_C394AD: FLdRfVar var_10C
  loc_C394B0: ImpAdCallFPR4  = Format(, )
  loc_C394B5: FLdRfVar var_10C
  loc_C394B8: CStrVarVal var_D4
  loc_C394BC: FLdPr Me
  loc_C394BF: VCallAd Control_ID_txtTotaDere
  loc_C394C2: FStAdFunc var_C0
  loc_C394C5: FLdPr var_C0
  loc_C394C8: Me.Text = from_stack_1
  loc_C394CD: FFree1Str var_D4
  loc_C394D0: FFree1Ad var_C0
  loc_C394D3: FFreeVar var_D0 = ""
  loc_C394DA: LitI4 1
  loc_C394DF: LitI4 1
  loc_C394E4: LitVarStr var_F8, "###,###,##0.00"
  loc_C394E9: FStVarCopyObj var_D0
  loc_C394EC: FLdRfVar var_D0
  loc_C394EF: FLdPr Me
  loc_C394F2: MemLdRfVar from_stack_1.global_100
  loc_C394F5: CVarRef
  loc_C394FA: FLdRfVar var_10C
  loc_C394FD: ImpAdCallFPR4  = Format(, )
  loc_C39502: FLdRfVar var_10C
  loc_C39505: CStrVarVal var_D4
  loc_C39509: FLdPr Me
  loc_C3950C: VCallAd Control_ID_txtTotaReca
  loc_C3950F: FStAdFunc var_C0
  loc_C39512: FLdPr var_C0
  loc_C39515: Me.Text = from_stack_1
  loc_C3951A: FFree1Str var_D4
  loc_C3951D: FFree1Ad var_C0
  loc_C39520: FFreeVar var_D0 = ""
  loc_C39527: LitI4 1
  loc_C3952C: LitI4 1
  loc_C39531: LitVarStr var_F8, "###,###,##0.00"
  loc_C39536: FStVarCopyObj var_D0
  loc_C39539: FLdRfVar var_D0
  loc_C3953C: FLdPr Me
  loc_C3953F: MemLdRfVar from_stack_1.global_108
  loc_C39542: CVarRef
  loc_C39547: FLdRfVar var_10C
  loc_C3954A: ImpAdCallFPR4  = Format(, )
  loc_C3954F: FLdRfVar var_10C
  loc_C39552: CStrVarVal var_D4
  loc_C39556: FLdPr Me
  loc_C39559: VCallAd Control_ID_txtTotaApre
  loc_C3955C: FStAdFunc var_C0
  loc_C3955F: FLdPr var_C0
  loc_C39562: Me.Text = from_stack_1
  loc_C39567: FFree1Str var_D4
  loc_C3956A: FFree1Ad var_C0
  loc_C3956D: FFreeVar var_D0 = ""
  loc_C39574: LitI4 2
  loc_C39579: FLdPr Me
  loc_C3957C: MemLdRfVar from_stack_1.global_92
  loc_C3957F: CVarRef
  loc_C39584: FLdRfVar var_D0
  loc_C39587: ImpAdCallFPR4  = Round(, )
  loc_C3958C: FLdRfVar var_D0
  loc_C3958F: LitI4 2
  loc_C39594: FLdPr Me
  loc_C39597: MemLdRfVar from_stack_1.global_100
  loc_C3959A: CVarRef
  loc_C3959F: FLdRfVar var_10C
  loc_C395A2: ImpAdCallFPR4  = Round(, )
  loc_C395A7: FLdRfVar var_10C
  loc_C395AA: AddVar var_11C
  loc_C395AE: LitI4 2
  loc_C395B3: FLdPr Me
  loc_C395B6: MemLdRfVar from_stack_1.global_108
  loc_C395B9: CVarRef
  loc_C395BE: FLdRfVar var_13C
  loc_C395C1: ImpAdCallFPR4  = Round(, )
  loc_C395C6: FLdRfVar var_13C
  loc_C395C9: AddVar var_14C
  loc_C395CD: CR4Var
  loc_C395CE: FLdPr Me
  loc_C395D1: MemStFPR8 global_116
  loc_C395D4: FFreeVar var_D0 = "": var_10C = "": var_11C = "": var_13C = ""
  loc_C395E1: LitI4 1
  loc_C395E6: LitI4 1
  loc_C395EB: LitVarStr var_F8, "###,###,##0.00"
  loc_C395F0: FStVarCopyObj var_D0
  loc_C395F3: FLdRfVar var_D0
  loc_C395F6: FLdPr Me
  loc_C395F9: MemLdRfVar from_stack_1.global_116
  loc_C395FC: CVarRef
  loc_C39601: FLdRfVar var_10C
  loc_C39604: ImpAdCallFPR4  = Format(, )
  loc_C39609: FLdRfVar var_10C
  loc_C3960C: CStrVarVal var_D4
  loc_C39610: FLdPr Me
  loc_C39613: VCallAd Control_ID_txtTotal
  loc_C39616: FStAdFunc var_C0
  loc_C39619: FLdPr var_C0
  loc_C3961C: Me.Text = from_stack_1
  loc_C39621: FFree1Str var_D4
  loc_C39624: FFree1Ad var_C0
  loc_C39627: FFreeVar var_D0 = ""
  loc_C3962E: LitI2_Byte &HFF
  loc_C39630: FLdPr Me
  loc_C39633: VCallAd Control_ID_ConfirmarCmd
  loc_C39636: FStAdFunc var_C0
  loc_C39639: FLdPr var_C0
  loc_C3963C: Me.Enabled = from_stack_1b
  loc_C39641: FFree1Ad var_C0
  loc_C39644: ExitProcHresult
  loc_C39645: GeI2
  loc_C39646: VCallAd Control_ID_
End Sub

Private Sub NumeCtaCmd_Click() 'B1E83C
  'Data Table: 4EBEA8
  loc_B1E5B0: FLdRfVar var_8A
  loc_B1E5B3: FLdPr Me
  loc_B1E5B6: VCallAd Control_ID_OficinaCbo
  loc_B1E5B9: FStAdFunc var_88
  loc_B1E5BC: FLdPr var_88
  loc_B1E5BF:  = Me.ListIndex
  loc_B1E5C4: FLdI2 var_8A
  loc_B1E5C7: FStI2 var_8C
  loc_B1E5CA: FFree1Ad var_88
  loc_B1E5CD: FLdI2 var_8C
  loc_B1E5D0: LitI2_Byte 0
  loc_B1E5D2: EqI2
  loc_B1E5D3: BranchF loc_B1E5E1
  loc_B1E5D6: LitI2_Byte 1
  loc_B1E5D8: CUI1I2
  loc_B1E5DA: ImpAdStUI1 MemVar_D93038
  loc_B1E5DE: Branch loc_B1E61A
  loc_B1E5E1: FLdI2 var_8C
  loc_B1E5E4: LitI2_Byte 1
  loc_B1E5E6: EqI2
  loc_B1E5E7: BranchF loc_B1E5F5
  loc_B1E5EA: LitI2_Byte 2
  loc_B1E5EC: CUI1I2
  loc_B1E5EE: ImpAdStUI1 MemVar_D93038
  loc_B1E5F2: Branch loc_B1E61A
  loc_B1E5F5: FLdI2 var_8C
  loc_B1E5F8: LitI2_Byte 2
  loc_B1E5FA: EqI2
  loc_B1E5FB: BranchF loc_B1E609
  loc_B1E5FE: LitI2_Byte 3
  loc_B1E600: CUI1I2
  loc_B1E602: ImpAdStUI1 MemVar_D93038
  loc_B1E606: Branch loc_B1E61A
  loc_B1E609: FLdI2 var_8C
  loc_B1E60C: LitI2_Byte 3
  loc_B1E60E: EqI2
  loc_B1E60F: BranchF loc_B1E61A
  loc_B1E612: LitI2_Byte 4
  loc_B1E614: CUI1I2
  loc_B1E616: ImpAdStUI1 MemVar_D93038
  loc_B1E61A: LitVar_Missing var_AC
  loc_B1E61D: PopAdLdVar
  loc_B1E61E: LitVarI4
  loc_B1E626: PopAdLdVar
  loc_B1E627: ImpAdLdRf MemVar_D94034
  loc_B1E62A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E62D: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B1E632: FLdRfVar var_B0
  loc_B1E635: FLdRfVar var_88
  loc_B1E638: ImpAdLdRf MemVar_D94034
  loc_B1E63B: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E63E: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E643: FLdPr var_88
  loc_B1E646: from_stack_1 = clsbase.RecordCount
  loc_B1E64B: ILdRf var_B0
  loc_B1E64E: LitI4 0
  loc_B1E653: GtI4
  loc_B1E654: FFree1Ad var_88
  loc_B1E657: BranchF loc_B1E828
  loc_B1E65A: FLdRfVar var_CC
  loc_B1E65D: FLdRfVar var_BC
  loc_B1E660: LitVarStr var_9C, "CodiOfic"
  loc_B1E665: PopAdLdVar
  loc_B1E666: FLdRfVar var_B8
  loc_B1E669: FLdRfVar var_B4
  loc_B1E66C: FLdRfVar var_88
  loc_B1E66F: ImpAdLdRf MemVar_D94034
  loc_B1E672: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E675: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E67A: FLdPr var_88
  loc_B1E67D: from_stack_1v = clsbase.RsFrmGet()
  loc_B1E682: FLdPr var_B4
  loc_B1E685:  = Me.Fields
  loc_B1E68A: FLdPr var_B8
  loc_B1E68D: from_stack_2 = Me.Item(from_stack_1)
  loc_B1E692: FLdPr var_BC
  loc_B1E695:  = Me.Value
  loc_B1E69A: FLdRfVar var_CC
  loc_B1E69D: FStVar var_DC
  loc_B1E6A1: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B1E6AC: FLdRfVar var_DC
  loc_B1E6AF: LitVarI2 var_9C, 1
  loc_B1E6B4: HardType
  loc_B1E6B5: EqVarBool
  loc_B1E6B7: BranchF loc_B1E6F1
  loc_B1E6BA: FLdRfVar var_E0
  loc_B1E6BD: LitI2_Byte 0
  loc_B1E6BF: FLdPr Me
  loc_B1E6C2: VCallAd Control_ID_OficinaCbo
  loc_B1E6C5: FStAdFunc var_88
  loc_B1E6C8: FLdPr var_88
  loc_B1E6CB: from_stack_2 = Me.List(from_stack_1)
  loc_B1E6D0: ILdRf var_E0
  loc_B1E6D3: FLdPr Me
  loc_B1E6D6: VCallAd Control_ID_OficinaCbo
  loc_B1E6D9: FStAdFunc var_B4
  loc_B1E6DC: FLdPr var_B4
  loc_B1E6DF: Me.Text = from_stack_1
  loc_B1E6E4: FFree1Str var_E0
  loc_B1E6E7: FFreeAd var_88 = ""
  loc_B1E6EE: Branch loc_B1E7BD
  loc_B1E6F1: FLdRfVar var_DC
  loc_B1E6F4: LitVarI2 var_9C, 2
  loc_B1E6F9: HardType
  loc_B1E6FA: EqVarBool
  loc_B1E6FC: BranchF loc_B1E736
  loc_B1E6FF: FLdRfVar var_E0
  loc_B1E702: LitI2_Byte 1
  loc_B1E704: FLdPr Me
  loc_B1E707: VCallAd Control_ID_OficinaCbo
  loc_B1E70A: FStAdFunc var_88
  loc_B1E70D: FLdPr var_88
  loc_B1E710: from_stack_2 = Me.List(from_stack_1)
  loc_B1E715: ILdRf var_E0
  loc_B1E718: FLdPr Me
  loc_B1E71B: VCallAd Control_ID_OficinaCbo
  loc_B1E71E: FStAdFunc var_B4
  loc_B1E721: FLdPr var_B4
  loc_B1E724: Me.Text = from_stack_1
  loc_B1E729: FFree1Str var_E0
  loc_B1E72C: FFreeAd var_88 = ""
  loc_B1E733: Branch loc_B1E7BD
  loc_B1E736: FLdRfVar var_DC
  loc_B1E739: LitVarI2 var_9C, 3
  loc_B1E73E: HardType
  loc_B1E73F: EqVarBool
  loc_B1E741: BranchF loc_B1E77B
  loc_B1E744: FLdRfVar var_E0
  loc_B1E747: LitI2_Byte 2
  loc_B1E749: FLdPr Me
  loc_B1E74C: VCallAd Control_ID_OficinaCbo
  loc_B1E74F: FStAdFunc var_88
  loc_B1E752: FLdPr var_88
  loc_B1E755: from_stack_2 = Me.List(from_stack_1)
  loc_B1E75A: ILdRf var_E0
  loc_B1E75D: FLdPr Me
  loc_B1E760: VCallAd Control_ID_OficinaCbo
  loc_B1E763: FStAdFunc var_B4
  loc_B1E766: FLdPr var_B4
  loc_B1E769: Me.Text = from_stack_1
  loc_B1E76E: FFree1Str var_E0
  loc_B1E771: FFreeAd var_88 = ""
  loc_B1E778: Branch loc_B1E7BD
  loc_B1E77B: FLdRfVar var_DC
  loc_B1E77E: LitVarI2 var_9C, 4
  loc_B1E783: HardType
  loc_B1E784: EqVarBool
  loc_B1E786: BranchF loc_B1E7BD
  loc_B1E789: FLdRfVar var_E0
  loc_B1E78C: LitI2_Byte 3
  loc_B1E78E: FLdPr Me
  loc_B1E791: VCallAd Control_ID_OficinaCbo
  loc_B1E794: FStAdFunc var_88
  loc_B1E797: FLdPr var_88
  loc_B1E79A: from_stack_2 = Me.List(from_stack_1)
  loc_B1E79F: ILdRf var_E0
  loc_B1E7A2: FLdPr Me
  loc_B1E7A5: VCallAd Control_ID_OficinaCbo
  loc_B1E7A8: FStAdFunc var_B4
  loc_B1E7AB: FLdPr var_B4
  loc_B1E7AE: Me.Text = from_stack_1
  loc_B1E7B3: FFree1Str var_E0
  loc_B1E7B6: FFreeAd var_88 = ""
  loc_B1E7BD: FLdRfVar var_CC
  loc_B1E7C0: FLdRfVar var_BC
  loc_B1E7C3: LitVarStr var_9C, "CuenCtct"
  loc_B1E7C8: PopAdLdVar
  loc_B1E7C9: FLdRfVar var_B8
  loc_B1E7CC: FLdRfVar var_B4
  loc_B1E7CF: FLdRfVar var_88
  loc_B1E7D2: ImpAdLdRf MemVar_D94034
  loc_B1E7D5: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1E7D8: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1E7DD: FLdPr var_88
  loc_B1E7E0: from_stack_1v = clsbase.RsFrmGet()
  loc_B1E7E5: FLdPr var_B4
  loc_B1E7E8:  = Me.Fields
  loc_B1E7ED: FLdPr var_B8
  loc_B1E7F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B1E7F5: FLdPr var_BC
  loc_B1E7F8:  = Me.Value
  loc_B1E7FD: FLdRfVar var_CC
  loc_B1E800: CStrVarTmp
  loc_B1E801: FStStrNoPop var_E0
  loc_B1E804: FLdPr Me
  loc_B1E807: VCallAd Control_ID_NumeCtaTxt
  loc_B1E80A: FStAdFunc var_E4
  loc_B1E80D: FLdPr var_E4
  loc_B1E810: Me.Text = from_stack_1
  loc_B1E815: FFree1Str var_E0
  loc_B1E818: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1E825: FFree1Var var_CC = ""
  loc_B1E828: FLdPr Me
  loc_B1E82B: VCallAd Control_ID_NumeCtaTxt
  loc_B1E82E: CVarAd
  loc_B1E832: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1E837: FFree1Var var_CC = ""
  loc_B1E83A: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A48C08
  'Data Table: 4EBEA8
  loc_A48BB4: LitVar_Missing var_A4
  loc_A48BB7: PopAdLdVar
  loc_A48BB8: LitVarI4
  loc_A48BC0: PopAdLdVar
  loc_A48BC1: ImpAdLdRf MemVar_D930A4
  loc_A48BC4: NewIfNullPr frmCalendario
  loc_A48BC7: frmCalendario.Show from_stack_1, from_stack_2
  loc_A48BCC: ImpAdLdI4 MemVar_D93028
  loc_A48BCF: LitStr vbNullString
  loc_A48BD2: NeStr
  loc_A48BD4: BranchF loc_A48BF2
  loc_A48BD7: ImpAdLdRf MemVar_D93028
  loc_A48BDA: CDargRef
  loc_A48BDE: FLdPr Me
  loc_A48BE1: VCallAd Control_ID_FechVencMsk
  loc_A48BE4: FStAdFunc var_A8
  loc_A48BE7: FLdPr var_A8
  loc_A48BEA: LateIdSt
  loc_A48BEF: FFree1Ad var_A8
  loc_A48BF2: FLdPr Me
  loc_A48BF5: VCallAd Control_ID_FechVencMsk
  loc_A48BF8: CVarAd
  loc_A48BFC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A48C01: FFree1Var var_B8 = ""
  loc_A48C04: ExitProcHresult
  loc_A48C05: ILdRf arg_DFF
End Sub

Private Function Proc_127_17_B18368() 'B18368
  'Data Table: 4EBEA8
  loc_B180DC: FLdPr Me
  loc_B180DF: VCallAd Control_ID_ctacteFlex
  loc_B180E2: FStAdFunc var_88
  loc_B180E5: FLdPr var_88
  loc_B180E8: LateIdCall
  loc_B180F0: LitVarI4
  loc_B180F8: PopAdLdVar
  loc_B180F9: FLdPr var_88
  loc_B180FC: LateIdSt
  loc_B18101: LitVarI4
  loc_B18109: PopAdLdVar
  loc_B1810A: LitVarI4
  loc_B18112: PopAdLdVar
  loc_B18113: LitVarStr var_D8, "Of"
  loc_B18118: PopAdLdVar
  loc_B18119: FLdPr var_88
  loc_B1811C: LateIdCallSt
  loc_B18124: LitVarI4
  loc_B1812C: PopAdLdVar
  loc_B1812D: LitVarI4
  loc_B18135: PopAdLdVar
  loc_B18136: LitVarStr var_D8, "Cuenta"
  loc_B1813B: PopAdLdVar
  loc_B1813C: FLdPr var_88
  loc_B1813F: LateIdCallSt
  loc_B18147: LitVarI4
  loc_B1814F: PopAdLdVar
  loc_B18150: LitVarI4
  loc_B18158: PopAdLdVar
  loc_B18159: LitVarStr var_D8, "Periodo"
  loc_B1815E: PopAdLdVar
  loc_B1815F: FLdPr var_88
  loc_B18162: LateIdCallSt
  loc_B1816A: LitVarI4
  loc_B18172: PopAdLdVar
  loc_B18173: LitVarI4
  loc_B1817B: PopAdLdVar
  loc_B1817C: LitVarStr var_D8, "Boleto"
  loc_B18181: PopAdLdVar
  loc_B18182: FLdPr var_88
  loc_B18185: LateIdCallSt
  loc_B1818D: LitVarI4
  loc_B18195: PopAdLdVar
  loc_B18196: LitVarI4
  loc_B1819E: PopAdLdVar
  loc_B1819F: LitVarStr var_D8, "Emision"
  loc_B181A4: PopAdLdVar
  loc_B181A5: FLdPr var_88
  loc_B181A8: LateIdCallSt
  loc_B181B0: LitVarI4
  loc_B181B8: PopAdLdVar
  loc_B181B9: LitVarI4
  loc_B181C1: PopAdLdVar
  loc_B181C2: LitVarStr var_D8, "Vencimiento"
  loc_B181C7: PopAdLdVar
  loc_B181C8: FLdPr var_88
  loc_B181CB: LateIdCallSt
  loc_B181D3: LitVarI4
  loc_B181DB: PopAdLdVar
  loc_B181DC: LitVarI4
  loc_B181E4: PopAdLdVar
  loc_B181E5: LitVarStr var_D8, "Concepto"
  loc_B181EA: PopAdLdVar
  loc_B181EB: FLdPr var_88
  loc_B181EE: LateIdCallSt
  loc_B181F6: LitVarI4
  loc_B181FE: PopAdLdVar
  loc_B181FF: LitVarI4
  loc_B18207: PopAdLdVar
  loc_B18208: LitVarStr var_D8, "Facilidad"
  loc_B1820D: PopAdLdVar
  loc_B1820E: FLdPr var_88
  loc_B18211: LateIdCallSt
  loc_B18219: LitVarI4
  loc_B18221: PopAdLdVar
  loc_B18222: LitVarI4
  loc_B1822A: PopAdLdVar
  loc_B1822B: LitVarStr var_D8, "Apremio"
  loc_B18230: PopAdLdVar
  loc_B18231: FLdPr var_88
  loc_B18234: LateIdCallSt
  loc_B1823C: LitVarI4
  loc_B18244: PopAdLdVar
  loc_B18245: LitVarI4
  loc_B1824D: PopAdLdVar
  loc_B1824E: LitVarStr var_D8, "Exp/Comp"
  loc_B18253: PopAdLdVar
  loc_B18254: FLdPr var_88
  loc_B18257: LateIdCallSt
  loc_B1825F: LitVarI4
  loc_B18267: PopAdLdVar
  loc_B18268: LitVarI4
  loc_B18270: PopAdLdVar
  loc_B18271: LitVarStr var_D8, "Tipo Movi."
  loc_B18276: PopAdLdVar
  loc_B18277: FLdPr var_88
  loc_B1827A: LateIdCallSt
  loc_B18282: LitVarI4
  loc_B1828A: PopAdLdVar
  loc_B1828B: LitVarI4
  loc_B18293: PopAdLdVar
  loc_B18294: LitVarStr var_D8, "Crédito"
  loc_B18299: PopAdLdVar
  loc_B1829A: FLdPr var_88
  loc_B1829D: LateIdCallSt
  loc_B182A5: LitVarI4
  loc_B182AD: PopAdLdVar
  loc_B182AE: LitVarI4
  loc_B182B6: PopAdLdVar
  loc_B182B7: LitVarStr var_D8, "Recargo"
  loc_B182BC: PopAdLdVar
  loc_B182BD: FLdPr var_88
  loc_B182C0: LateIdCallSt
  loc_B182C8: LitVarI4
  loc_B182D0: PopAdLdVar
  loc_B182D1: LitVarI4
  loc_B182D9: PopAdLdVar
  loc_B182DA: LitVarStr var_D8, "Saldo"
  loc_B182DF: PopAdLdVar
  loc_B182E0: FLdPr var_88
  loc_B182E3: LateIdCallSt
  loc_B182EB: LitVarI4
  loc_B182F3: PopAdLdVar
  loc_B182F4: LitVarI4
  loc_B182FC: PopAdLdVar
  loc_B182FD: LitVarStr var_D8, "Sel"
  loc_B18302: PopAdLdVar
  loc_B18303: FLdPr var_88
  loc_B18306: LateIdCallSt
  loc_B1830E: LitVarI4
  loc_B18316: PopAdLdVar
  loc_B18317: LitVarI4
  loc_B1831F: PopAdLdVar
  loc_B18320: LitVarStr var_D8, "Numero"
  loc_B18325: PopAdLdVar
  loc_B18326: FLdPr var_88
  loc_B18329: LateIdCallSt
  loc_B18331: LitVarI4
  loc_B18339: PopAdLdVar
  loc_B1833A: LitVarI4
  loc_B18342: PopAdLdVar
  loc_B18343: LitVarStr var_D8, "Mov"
  loc_B18348: PopAdLdVar
  loc_B18349: FLdPr var_88
  loc_B1834C: LateIdCallSt
  loc_B18354: FLdPr var_88
  loc_B18357: LateIdCall
  loc_B1835F: LitNothing
  loc_B18361: FStAd var_88 
  loc_B18365: ExitProcHresult
End Function
